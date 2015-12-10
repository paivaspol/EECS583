; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._ETree = type { i32, i32, %struct._Tree*, %struct._IV*, %struct._IV*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._IV = type { i32, i32, i32, i32* }
%struct._DV = type { i32, i32, i32, double* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [46 x i8] c"\0A fatal error in ETree_sizeOf(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"\0A fatal error in ETree_nFactorIndices(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [57 x i8] c"\0A fatal error in ETree_nFactorEntries(%p,%d)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [56 x i8] c"\0A fatal error in ETree_nFactorOps(%p,%d,%d)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [67 x i8] c"\0A fatal error in ETree_nFactorEntriesInFront(%p,%d,%d)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [69 x i8] c"\0A fatal error in ETree_nFactorEntriesInFront(%p,%d,%d)\0A bad symflag\0A\00", align 1
@.str6 = private unnamed_addr constant [68 x i8] c"\0A fatal error in ETree_nInternalOpsInFront(%p,%d,%d,%d)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [70 x i8] c"\0A fatal error in ETree_nInternalOpsInFront(%p,%d,%d,%d)\0A bad symflag\0A\00", align 1
@.str8 = private unnamed_addr constant [67 x i8] c"\0A fatal error in ETree_nInternalOpsInFront(%p,%d,%d,%d)\0A bad type\0A\00", align 1
@.str9 = private unnamed_addr constant [68 x i8] c"\0A fatal error in ETree_nExternalOpsInFront(%p,%d,%d,%d)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [57 x i8] c"\0A fatal error in ETree_backwardOps(%p,%p,%p)\0A bad input\0A\00", align 1
@.str11 = private unnamed_addr constant [58 x i8] c"\0A fatal error in ETree_factorEntriesIV(%p,%d)\0A bad input\0A\00", align 1
@.str12 = private unnamed_addr constant [50 x i8] c"\0A fatal error in ETree_forwardOps(%p)\0A bad input\0A\00", align 1
@.str13 = private unnamed_addr constant [49 x i8] c"\0A fatal error in ETree_expand(%p,%p)\0A bad input\0A\00", align 1
@.str14 = private unnamed_addr constant [64 x i8] c"\0A fatal error in ETree_spliceTwoETrees(%p,%p,%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_sizeOf(%struct._ETree* %etree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !41), !dbg !253
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !254
  br i1 %cmp, label %if.then, label %if.end, !dbg !254

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !255, !tbaa !257
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str, i64 0, i64 0), %struct._ETree* null) #5, !dbg !255
  tail call void @exit(i32 -1) #6, !dbg !260
  unreachable, !dbg !260

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !261, i64 0, metadata !42), !dbg !262
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !263
  %1 = load %struct._Tree** %tree, align 8, !dbg !263, !tbaa !257
  %cmp1 = icmp eq %struct._Tree* %1, null, !dbg !263
  br i1 %cmp1, label %if.end5, label %if.then2, !dbg !263

if.then2:                                         ; preds = %if.end
  %call4 = tail call i32 @Tree_sizeOf(%struct._Tree* %1) #5, !dbg !264
  %add = add nsw i32 %call4, 40, !dbg !264
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !42), !dbg !264
  br label %if.end5, !dbg !266

if.end5:                                          ; preds = %if.end, %if.then2
  %nbytes.0 = phi i32 [ %add, %if.then2 ], [ 40, %if.end ]
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3, !dbg !267
  %2 = load %struct._IV** %nodwghtsIV, align 8, !dbg !267, !tbaa !257
  %cmp6 = icmp eq %struct._IV* %2, null, !dbg !267
  br i1 %cmp6, label %if.end17, label %if.end11, !dbg !267

if.end11:                                         ; preds = %if.end5
  %call9 = tail call i32 @IV_sizeOf(%struct._IV* %2) #5, !dbg !268
  %add10 = add nsw i32 %call9, %nbytes.0, !dbg !268
  tail call void @llvm.dbg.value(metadata !{i32 %add10}, i64 0, metadata !42), !dbg !268
  %.pr = load %struct._IV** %nodwghtsIV, align 8, !dbg !270, !tbaa !257
  %cmp13 = icmp eq %struct._IV* %.pr, null, !dbg !270
  br i1 %cmp13, label %if.end17, label %if.then14, !dbg !270

if.then14:                                        ; preds = %if.end11
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4, !dbg !271
  %3 = load %struct._IV** %bndwghtsIV, align 8, !dbg !271, !tbaa !257
  %call15 = tail call i32 @IV_sizeOf(%struct._IV* %3) #5, !dbg !271
  %add16 = add nsw i32 %call15, %add10, !dbg !271
  tail call void @llvm.dbg.value(metadata !{i32 %add16}, i64 0, metadata !42), !dbg !271
  br label %if.end17, !dbg !273

if.end17:                                         ; preds = %if.end5, %if.end11, %if.then14
  %nbytes.2 = phi i32 [ %add16, %if.then14 ], [ %add10, %if.end11 ], [ %nbytes.0, %if.end5 ]
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5, !dbg !274
  %4 = load %struct._IV** %vtxToFrontIV, align 8, !dbg !274, !tbaa !257
  %cmp18 = icmp eq %struct._IV* %4, null, !dbg !274
  br i1 %cmp18, label %if.end23, label %if.then19, !dbg !274

if.then19:                                        ; preds = %if.end17
  %call21 = tail call i32 @IV_sizeOf(%struct._IV* %4) #5, !dbg !275
  %add22 = add nsw i32 %call21, %nbytes.2, !dbg !275
  tail call void @llvm.dbg.value(metadata !{i32 %add22}, i64 0, metadata !42), !dbg !275
  br label %if.end23, !dbg !277

if.end23:                                         ; preds = %if.end17, %if.then19
  %nbytes.3 = phi i32 [ %add22, %if.then19 ], [ %nbytes.2, %if.end17 ]
  ret i32 %nbytes.3, !dbg !278
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare i32 @Tree_sizeOf(%struct._Tree*) #4

; Function Attrs: optsize
declare i32 @IV_sizeOf(%struct._IV*) #4

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_nFactorIndices(%struct._ETree* %etree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !45), !dbg !279
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !280
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !280

lor.lhs.false:                                    ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !280
  %0 = load i32* %nfront1, align 4, !dbg !280, !tbaa !281
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !47), !dbg !280
  %cmp2 = icmp slt i32 %0, 1, !dbg !280
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !280

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %nvtx4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !280
  %1 = load i32* %nvtx4, align 4, !dbg !280, !tbaa !281
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !50), !dbg !280
  %cmp5 = icmp slt i32 %1, 1, !dbg !280
  br i1 %cmp5, label %if.then, label %for.body.lr.ph, !dbg !280

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !282, !tbaa !257
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), %struct._ETree* %etree) #5, !dbg !282
  tail call void @exit(i32 -1) #6, !dbg !284
  unreachable, !dbg !284

for.body.lr.ph:                                   ; preds = %lor.lhs.false3
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3, !dbg !285
  %3 = load %struct._IV** %nodwghtsIV, align 8, !dbg !285, !tbaa !257
  %call6 = tail call i32* @IV_entries(%struct._IV* %3) #5, !dbg !285
  tail call void @llvm.dbg.value(metadata !{i32* %call6}, i64 0, metadata !53), !dbg !285
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4, !dbg !286
  %4 = load %struct._IV** %bndwghtsIV, align 8, !dbg !286, !tbaa !257
  %call7 = tail call i32* @IV_entries(%struct._IV* %4) #5, !dbg !286
  tail call void @llvm.dbg.value(metadata !{i32* %call7}, i64 0, metadata !52), !dbg !286
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !49), !dbg !287
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !51), !dbg !288
  br label %for.body, !dbg !288

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %nind.023 = phi i32 [ 0, %for.body.lr.ph ], [ %add11, %for.body ]
  %arrayidx = getelementptr inbounds i32* %call6, i64 %indvars.iv, !dbg !290
  %5 = load i32* %arrayidx, align 4, !dbg !290, !tbaa !281
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !48), !dbg !290
  %arrayidx10 = getelementptr inbounds i32* %call7, i64 %indvars.iv, !dbg !292
  %6 = load i32* %arrayidx10, align 4, !dbg !292, !tbaa !281
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !46), !dbg !292
  %add = add i32 %5, %nind.023, !dbg !293
  %add11 = add i32 %add, %6, !dbg !293
  tail call void @llvm.dbg.value(metadata !{i32 %add11}, i64 0, metadata !49), !dbg !293
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !288
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !288
  %exitcond = icmp eq i32 %lftr.wideiv, %0, !dbg !288
  br i1 %exitcond, label %for.end, label %for.body, !dbg !288

for.end:                                          ; preds = %for.body
  ret i32 %add11, !dbg !294
}

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #4

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_nFactorEntries(%struct._ETree* %etree, i32 %symflag) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !58), !dbg !295
  tail call void @llvm.dbg.value(metadata !{i32 %symflag}, i64 0, metadata !59), !dbg !296
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !297
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !297

lor.lhs.false:                                    ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !297
  %0 = load i32* %nfront1, align 4, !dbg !297, !tbaa !281
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !61), !dbg !297
  %cmp2 = icmp slt i32 %0, 1, !dbg !297
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !297

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %nvtx4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !297
  %1 = load i32* %nvtx4, align 4, !dbg !297, !tbaa !281
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !62), !dbg !297
  %cmp5 = icmp slt i32 %1, 1, !dbg !297
  br i1 %cmp5, label %if.then, label %for.body, !dbg !297

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !298, !tbaa !257
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([57 x i8]* @.str2, i64 0, i64 0), %struct._ETree* %etree, i32 %symflag) #5, !dbg !298
  tail call void @exit(i32 -1) #6, !dbg !300
  unreachable, !dbg !300

for.body:                                         ; preds = %lor.lhs.false3, %for.body
  %nzf.019 = phi i32 [ %conv8, %for.body ], [ 0, %lor.lhs.false3 ]
  %J.018 = phi i32 [ %inc, %for.body ], [ 0, %lor.lhs.false3 ]
  %call7 = tail call double @ETree_nFactorEntriesInFront(%struct._ETree* %etree, i32 %symflag, i32 %J.018) #7, !dbg !301
  %conv = sitofp i32 %nzf.019 to double, !dbg !301
  %add = fadd double %conv, %call7, !dbg !301
  %conv8 = fptosi double %add to i32, !dbg !301
  tail call void @llvm.dbg.value(metadata !{i32 %conv8}, i64 0, metadata !63), !dbg !301
  %inc = add nsw i32 %J.018, 1, !dbg !304
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !60), !dbg !304
  %exitcond = icmp eq i32 %inc, %0, !dbg !304
  br i1 %exitcond, label %for.end, label %for.body, !dbg !304

for.end:                                          ; preds = %for.body
  ret i32 %conv8, !dbg !305
}

; Function Attrs: nounwind optsize uwtable
define double @ETree_nFactorEntriesInFront(%struct._ETree* %etree, i32 %symflag, i32 %J) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !78), !dbg !306
  tail call void @llvm.dbg.value(metadata !{i32 %symflag}, i64 0, metadata !79), !dbg !307
  tail call void @llvm.dbg.value(metadata !{i32 %J}, i64 0, metadata !80), !dbg !308
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !309
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !309

lor.lhs.false:                                    ; preds = %entry
  %nfront = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !309
  %0 = load i32* %nfront, align 4, !dbg !309, !tbaa !281
  %notlhs = icmp sgt i32 %0, 0, !dbg !309
  %notrhs = icmp sgt i32 %J, -1, !dbg !309
  %or.cond.not = and i1 %notrhs, %notlhs, !dbg !309
  %cmp6 = icmp sgt i32 %0, %J, !dbg !309
  %or.cond36 = and i1 %or.cond.not, %cmp6, !dbg !309
  br i1 %or.cond36, label %if.end, label %if.then, !dbg !309

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !310, !tbaa !257
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([67 x i8]* @.str4, i64 0, i64 0), %struct._ETree* %etree, i32 %symflag, i32 %J) #5, !dbg !310
  tail call void @exit(i32 -1) #6, !dbg !312
  unreachable, !dbg !312

if.end:                                           ; preds = %lor.lhs.false
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3, !dbg !313
  %2 = load %struct._IV** %nodwghtsIV, align 8, !dbg !313, !tbaa !257
  %call7 = tail call i32 @IV_entry(%struct._IV* %2, i32 %J) #5, !dbg !313
  tail call void @llvm.dbg.value(metadata !{i32 %call7}, i64 0, metadata !81), !dbg !313
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4, !dbg !314
  %3 = load %struct._IV** %bndwghtsIV, align 8, !dbg !314, !tbaa !257
  %call8 = tail call i32 @IV_entry(%struct._IV* %3, i32 %J) #5, !dbg !314
  tail call void @llvm.dbg.value(metadata !{i32 %call8}, i64 0, metadata !82), !dbg !314
  switch i32 %symflag, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
  ], !dbg !315

sw.bb:                                            ; preds = %if.end, %if.end
  %add = add nsw i32 %call7, 1, !dbg !316
  %mul = mul nsw i32 %add, %call7, !dbg !316
  %div = sdiv i32 %mul, 2, !dbg !316
  %mul9 = mul nsw i32 %call8, %call7, !dbg !316
  %add10 = add nsw i32 %div, %mul9, !dbg !316
  tail call void @llvm.dbg.value(metadata !{i32 %add10}, i64 0, metadata !83), !dbg !316
  br label %sw.epilog, !dbg !318

sw.bb11:                                          ; preds = %if.end
  %mul14 = shl i32 %call8, 1, !dbg !319
  %tmp = add i32 %mul14, %call7
  %tmp37 = mul i32 %tmp, %call7, !dbg !319
  tail call void @llvm.dbg.value(metadata !{i32 %tmp37}, i64 0, metadata !83), !dbg !319
  br label %sw.epilog, !dbg !320

sw.default:                                       ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !321, !tbaa !257
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([69 x i8]* @.str5, i64 0, i64 0), %struct._ETree* %etree, i32 %symflag, i32 %J) #5, !dbg !321
  br label %sw.epilog, !dbg !322

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb
  %nent.0 = phi i32 [ undef, %sw.default ], [ %tmp37, %sw.bb11 ], [ %add10, %sw.bb ]
  %conv = sitofp i32 %nent.0 to double, !dbg !323
  ret double %conv, !dbg !323
}

; Function Attrs: nounwind optsize uwtable
define double @ETree_nFactorOps(%struct._ETree* %etree, i32 %type, i32 %symflag) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !69), !dbg !324
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !70), !dbg !325
  tail call void @llvm.dbg.value(metadata !{i32 %symflag}, i64 0, metadata !71), !dbg !326
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !327
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !327

lor.lhs.false:                                    ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !327
  %0 = load i32* %nfront1, align 4, !dbg !327, !tbaa !281
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !74), !dbg !327
  %cmp2 = icmp slt i32 %0, 1, !dbg !327
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !327

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %nvtx4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !327
  %1 = load i32* %nvtx4, align 4, !dbg !327, !tbaa !281
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !75), !dbg !327
  %cmp5 = icmp slt i32 %1, 1, !dbg !327
  br i1 %cmp5, label %if.then, label %for.body, !dbg !327

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !328, !tbaa !257
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), %struct._ETree* %etree, i32 %type, i32 %symflag) #5, !dbg !328
  tail call void @exit(i32 -1) #6, !dbg !330
  unreachable, !dbg !330

for.body:                                         ; preds = %lor.lhs.false3, %for.body
  %ops.025 = phi double [ %add9, %for.body ], [ 0.000000e+00, %lor.lhs.false3 ]
  %J.024 = phi i32 [ %inc, %for.body ], [ 0, %lor.lhs.false3 ]
  %call7 = tail call double @ETree_nInternalOpsInFront(%struct._ETree* %etree, i32 %type, i32 %symflag, i32 %J.024) #7, !dbg !331
  %call8 = tail call double @ETree_nExternalOpsInFront(%struct._ETree* %etree, i32 %type, i32 %symflag, i32 %J.024) #7, !dbg !334
  %add = fadd double %call7, %call8, !dbg !334
  %add9 = fadd double %ops.025, %add, !dbg !334
  tail call void @llvm.dbg.value(metadata !{double %add9}, i64 0, metadata !72), !dbg !334
  %inc = add nsw i32 %J.024, 1, !dbg !335
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !73), !dbg !335
  %exitcond = icmp eq i32 %inc, %0, !dbg !335
  br i1 %exitcond, label %for.end, label %for.body, !dbg !335

for.end:                                          ; preds = %for.body
  ret double %add9, !dbg !336
}

; Function Attrs: nounwind optsize uwtable
define double @ETree_nInternalOpsInFront(%struct._ETree* %etree, i32 %type, i32 %symflag, i32 %J) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !88), !dbg !337
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !89), !dbg !338
  tail call void @llvm.dbg.value(metadata !{i32 %symflag}, i64 0, metadata !90), !dbg !339
  tail call void @llvm.dbg.value(metadata !{i32 %J}, i64 0, metadata !91), !dbg !340
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !341
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !341

lor.lhs.false:                                    ; preds = %entry
  %nfront = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !341
  %0 = load i32* %nfront, align 4, !dbg !341, !tbaa !281
  %notlhs = icmp sgt i32 %0, 0, !dbg !341
  %notrhs = icmp sgt i32 %J, -1, !dbg !341
  %or.cond.not = and i1 %notrhs, %notlhs, !dbg !341
  %cmp6 = icmp sgt i32 %0, %J, !dbg !341
  %or.cond62 = and i1 %or.cond.not, %cmp6, !dbg !341
  br i1 %or.cond62, label %if.end, label %if.then, !dbg !341

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !342, !tbaa !257
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([68 x i8]* @.str6, i64 0, i64 0), %struct._ETree* %etree, i32 %type, i32 %symflag, i32 %J) #5, !dbg !342
  tail call void @exit(i32 -1) #6, !dbg !344
  unreachable, !dbg !344

if.end:                                           ; preds = %lor.lhs.false
  %call7 = tail call i32 @ETree_frontSize(%struct._ETree* %etree, i32 %J) #5, !dbg !345
  %conv = sitofp i32 %call7 to double, !dbg !345
  tail call void @llvm.dbg.value(metadata !{double %conv}, i64 0, metadata !92), !dbg !345
  %call8 = tail call i32 @ETree_frontBoundarySize(%struct._ETree* %etree, i32 %J) #5, !dbg !346
  %conv9 = sitofp i32 %call8 to double, !dbg !346
  tail call void @llvm.dbg.value(metadata !{double %conv9}, i64 0, metadata !93), !dbg !346
  switch i32 %symflag, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb16
  ], !dbg !347

sw.bb:                                            ; preds = %if.end, %if.end
  %add = fadd double %conv, 1.000000e+00, !dbg !348
  %mul = fmul double %conv, %add, !dbg !348
  %mul10 = fmul double %conv, 2.000000e+00, !dbg !348
  %add11 = fadd double %mul10, 1.000000e+00, !dbg !348
  %mul12 = fmul double %mul, %add11, !dbg !348
  %div = fdiv double %mul12, 6.000000e+00, !dbg !348
  %mul13 = fmul double %conv, %conv9, !dbg !348
  %mul14 = fmul double %conv, %mul13, !dbg !348
  %add15 = fadd double %mul14, %div, !dbg !348
  tail call void @llvm.dbg.value(metadata !{double %add15}, i64 0, metadata !94), !dbg !348
  br label %sw.epilog, !dbg !350

sw.bb16:                                          ; preds = %if.end
  %mul17 = fmul double %conv, 2.000000e+00, !dbg !351
  %mul18 = fmul double %conv, %mul17, !dbg !351
  %add19 = fadd double %mul18, 1.000000e+00, !dbg !351
  %mul20 = fmul double %conv, %add19, !dbg !351
  %div21 = fdiv double %mul20, 3.000000e+00, !dbg !351
  %mul22 = fmul double %conv9, 2.000000e+00, !dbg !351
  %mul23 = fmul double %conv, %mul22, !dbg !351
  %mul24 = fmul double %conv, %mul23, !dbg !351
  %add25 = fadd double %mul24, %div21, !dbg !351
  tail call void @llvm.dbg.value(metadata !{double %add25}, i64 0, metadata !94), !dbg !351
  br label %sw.epilog, !dbg !352

sw.default:                                       ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !353, !tbaa !257
  %call26 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([70 x i8]* @.str7, i64 0, i64 0), %struct._ETree* %etree, i32 %type, i32 %symflag, i32 %J) #5, !dbg !353
  br label %sw.epilog, !dbg !354

sw.epilog:                                        ; preds = %sw.default, %sw.bb16, %sw.bb
  %ops.0 = phi double [ undef, %sw.default ], [ %add25, %sw.bb16 ], [ %add15, %sw.bb ]
  switch i32 %type, label %sw.default29 [
    i32 1, label %sw.epilog31
    i32 2, label %sw.bb27
  ], !dbg !355

sw.bb27:                                          ; preds = %sw.epilog
  %mul28 = fmul double %ops.0, 4.000000e+00, !dbg !356
  tail call void @llvm.dbg.value(metadata !{double %mul28}, i64 0, metadata !94), !dbg !356
  br label %sw.epilog31, !dbg !358

sw.default29:                                     ; preds = %sw.epilog
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !359, !tbaa !257
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([67 x i8]* @.str8, i64 0, i64 0), %struct._ETree* %etree, i32 %type, i32 %symflag, i32 %J) #5, !dbg !359
  br label %sw.epilog31, !dbg !360

sw.epilog31:                                      ; preds = %sw.default29, %sw.bb27, %sw.epilog
  %ops.1 = phi double [ %ops.0, %sw.default29 ], [ %mul28, %sw.bb27 ], [ %ops.0, %sw.epilog ]
  ret double %ops.1, !dbg !361
}

; Function Attrs: nounwind optsize uwtable
define double @ETree_nExternalOpsInFront(%struct._ETree* %etree, i32 %type, i32 %symflag, i32 %J) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !97), !dbg !362
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !98), !dbg !363
  tail call void @llvm.dbg.value(metadata !{i32 %symflag}, i64 0, metadata !99), !dbg !364
  tail call void @llvm.dbg.value(metadata !{i32 %J}, i64 0, metadata !100), !dbg !365
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !366
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !366

lor.lhs.false:                                    ; preds = %entry
  %nfront = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !366
  %0 = load i32* %nfront, align 4, !dbg !366, !tbaa !281
  %notlhs = icmp sgt i32 %0, 0, !dbg !366
  %notrhs = icmp sgt i32 %J, -1, !dbg !366
  %or.cond.not = and i1 %notrhs, %notlhs, !dbg !366
  %cmp6 = icmp sgt i32 %0, %J, !dbg !366
  %or.cond40 = and i1 %or.cond.not, %cmp6, !dbg !366
  br i1 %or.cond40, label %if.end, label %if.then, !dbg !366

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !367, !tbaa !257
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), %struct._ETree* %etree, i32 %J, i32 %type, i32 %symflag) #5, !dbg !367
  tail call void @exit(i32 -1) #6, !dbg !369
  unreachable, !dbg !369

if.end:                                           ; preds = %lor.lhs.false
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3, !dbg !370
  %2 = load %struct._IV** %nodwghtsIV, align 8, !dbg !370, !tbaa !257
  %call7 = tail call i32 @IV_entry(%struct._IV* %2, i32 %J) #5, !dbg !370
  %conv = sitofp i32 %call7 to double, !dbg !370
  tail call void @llvm.dbg.value(metadata !{double %conv}, i64 0, metadata !101), !dbg !370
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4, !dbg !371
  %3 = load %struct._IV** %bndwghtsIV, align 8, !dbg !371, !tbaa !257
  %call8 = tail call i32 @IV_entry(%struct._IV* %3, i32 %J) #5, !dbg !371
  %conv9 = sitofp i32 %call8 to double, !dbg !371
  tail call void @llvm.dbg.value(metadata !{double %conv9}, i64 0, metadata !102), !dbg !371
  switch i32 %symflag, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
  ], !dbg !372

sw.bb:                                            ; preds = %if.end, %if.end
  %add = fadd double %conv9, 1.000000e+00, !dbg !373
  %mul = fmul double %conv9, %add, !dbg !373
  %mul10 = fmul double %conv, %mul, !dbg !373
  tail call void @llvm.dbg.value(metadata !{double %mul10}, i64 0, metadata !103), !dbg !373
  br label %sw.epilog, !dbg !375

sw.bb11:                                          ; preds = %if.end
  %mul12 = fmul double %conv, 2.000000e+00, !dbg !376
  %mul13 = fmul double %mul12, %conv9, !dbg !376
  %mul14 = fmul double %conv9, %mul13, !dbg !376
  tail call void @llvm.dbg.value(metadata !{double %mul14}, i64 0, metadata !103), !dbg !376
  br label %sw.epilog, !dbg !377

sw.epilog:                                        ; preds = %if.end, %sw.bb11, %sw.bb
  %ops.0 = phi double [ undef, %if.end ], [ %mul14, %sw.bb11 ], [ %mul10, %sw.bb ]
  switch i32 %type, label %sw.default17 [
    i32 1, label %sw.epilog19
    i32 2, label %sw.bb15
  ], !dbg !378

sw.bb15:                                          ; preds = %sw.epilog
  %mul16 = fmul double %ops.0, 4.000000e+00, !dbg !379
  tail call void @llvm.dbg.value(metadata !{double %mul16}, i64 0, metadata !103), !dbg !379
  br label %sw.epilog19, !dbg !381

sw.default17:                                     ; preds = %sw.epilog
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !382, !tbaa !257
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), %struct._ETree* %etree, i32 %J, i32 %type, i32 %symflag) #5, !dbg !382
  br label %sw.epilog19, !dbg !383

sw.epilog19:                                      ; preds = %sw.default17, %sw.bb15, %sw.epilog
  %ops.1 = phi double [ %ops.0, %sw.default17 ], [ %mul16, %sw.bb15 ], [ %ops.0, %sw.epilog ]
  ret double %ops.1, !dbg !384
}

; Function Attrs: optsize
declare i32 @IV_entry(%struct._IV*, i32) #4

; Function Attrs: optsize
declare i32 @ETree_frontSize(%struct._ETree*, i32) #4

; Function Attrs: optsize
declare i32 @ETree_frontBoundarySize(%struct._ETree*, i32) #4

; Function Attrs: nounwind optsize uwtable
define %struct._DV* @ETree_backwardOps(%struct._ETree* %etree, i32 %type, i32 %symflag, i32* %vwghts, %struct._IVL* %symbfacIVL) #0 {
entry:
  %size = alloca i32, align 4
  %indices = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !140), !dbg !385
  call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !141), !dbg !386
  call void @llvm.dbg.value(metadata !{i32 %symflag}, i64 0, metadata !142), !dbg !387
  call void @llvm.dbg.value(metadata !{i32* %vwghts}, i64 0, metadata !143), !dbg !388
  call void @llvm.dbg.value(metadata !{%struct._IVL* %symbfacIVL}, i64 0, metadata !144), !dbg !389
  call void @llvm.dbg.declare(metadata !{i32* %size}, metadata !158), !dbg !390
  call void @llvm.dbg.declare(metadata !{i32** %indices}, metadata !162), !dbg !391
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !392
  %cmp1 = icmp eq %struct._IVL* %symbfacIVL, null, !dbg !392
  %or.cond = or i1 %cmp, %cmp1, !dbg !392
  br i1 %or.cond, label %if.then, label %if.end, !dbg !392

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !393, !tbaa !257
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str10, i64 0, i64 0), %struct._ETree* %etree, i32* %vwghts, %struct._IVL* %symbfacIVL) #5, !dbg !393
  call void @exit(i32 -1) #6, !dbg !395
  unreachable, !dbg !395

if.end:                                           ; preds = %entry
  %nfront2 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !396
  %1 = load i32* %nfront2, align 4, !dbg !396, !tbaa !281
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !157), !dbg !396
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5, !dbg !397
  %2 = load %struct._IV** %vtxToFrontIV, align 8, !dbg !397, !tbaa !257
  %call3 = call i32* @IV_entries(%struct._IV* %2) #5, !dbg !397
  call void @llvm.dbg.value(metadata !{i32* %call3}, i64 0, metadata !165), !dbg !397
  %call4 = call i32* @IVinit(i32 %1, i32 -1) #5, !dbg !398
  call void @llvm.dbg.value(metadata !{i32* %call4}, i64 0, metadata !163), !dbg !398
  %call5 = call i32* @IVinit(i32 %1, i32 -1) #5, !dbg !399
  call void @llvm.dbg.value(metadata !{i32* %call5}, i64 0, metadata !164), !dbg !399
  %call6 = call i32* @IVinit(i32 %1, i32 0) #5, !dbg !400
  call void @llvm.dbg.value(metadata !{i32* %call6}, i64 0, metadata !161), !dbg !400
  %call7 = call %struct._DV* @DV_new() #5, !dbg !401
  call void @llvm.dbg.value(metadata !{%struct._DV* %call7}, i64 0, metadata !149), !dbg !401
  call void @DV_init(%struct._DV* %call7, i32 %1, double* null) #5, !dbg !402
  %call8 = call double* @DV_entries(%struct._DV* %call7) #5, !dbg !403
  call void @llvm.dbg.value(metadata !{double* %call8}, i64 0, metadata !148), !dbg !403
  call void @DV_fill(%struct._DV* %call7, double 0.000000e+00) #5, !dbg !404
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !152), !dbg !405
  %cmp9233 = icmp sgt i32 %1, 0, !dbg !405
  br i1 %cmp9233, label %for.body.lr.ph, label %for.end118, !dbg !405

for.body.lr.ph:                                   ; preds = %if.end
  %cmp105 = icmp eq i32 %symflag, 2, !dbg !407
  %3 = icmp ult i32 %symflag, 2, !dbg !411
  %cmp22 = icmp eq i32* %vwghts, null, !dbg !413
  br label %for.body, !dbg !405

for.body:                                         ; preds = %for.inc116, %for.body.lr.ph
  %indvars.iv239 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next240, %for.inc116 ]
  %opsKbndK.0236 = phi double [ undef, %for.body.lr.ph ], [ %opsKbndK.1.lcssa, %for.inc116 ]
  %opsKK.0235 = phi double [ undef, %for.body.lr.ph ], [ %opsKK.1.lcssa, %for.inc116 ]
  %4 = trunc i64 %indvars.iv239 to i32, !dbg !417
  %call10 = call double @ETree_nInternalOpsInFront(%struct._ETree* %etree, i32 %type, i32 %symflag, i32 %4) #7, !dbg !417
  %arrayidx = getelementptr inbounds double* %call8, i64 %indvars.iv239, !dbg !417
  %5 = load double* %arrayidx, align 8, !dbg !417, !tbaa !418
  %add = fadd double %call10, %5, !dbg !417
  store double %add, double* %arrayidx, align 8, !dbg !417, !tbaa !418
  %call11 = call i32 @ETree_frontSize(%struct._ETree* %etree, i32 %4) #5, !dbg !419
  call void @llvm.dbg.value(metadata !{i32 %call11}, i64 0, metadata !159), !dbg !419
  %call12 = call i32 @ETree_frontBoundarySize(%struct._ETree* %etree, i32 %4) #5, !dbg !420
  call void @llvm.dbg.value(metadata !{i32 %call12}, i64 0, metadata !150), !dbg !420
  call void @IVL_listAndSize(%struct._IVL* %symbfacIVL, i32 %4, i32* %size, i32** %indices) #5, !dbg !421
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !156), !dbg !422
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !151), !dbg !422
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !158), !dbg !422
  %6 = load i32* %size, align 4, !dbg !422, !tbaa !281
  %cmp14222 = icmp sgt i32 %6, 0, !dbg !422
  br i1 %cmp14222, label %for.body15.lr.ph, label %for.end.thread, !dbg !422

for.end.thread:                                   ; preds = %for.body
  call void @IVqsortUp(i32 0, i32* %call4) #5, !dbg !423
  call void @llvm.dbg.value(metadata !424, i64 0, metadata !145), !dbg !425
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !151), !dbg !426
  br label %for.inc116, !dbg !426

for.body15.lr.ph:                                 ; preds = %for.body
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !162), !dbg !427
  %7 = load i32** %indices, align 8, !dbg !427, !tbaa !257
  br label %for.body15, !dbg !422

for.body15:                                       ; preds = %for.body15.lr.ph, %for.inc
  %8 = phi i32 [ %6, %for.body15.lr.ph ], [ %14, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body15.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %nadj.0223 = phi i32 [ 0, %for.body15.lr.ph ], [ %nadj.2, %for.inc ]
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !162), !dbg !427
  %arrayidx17 = getelementptr inbounds i32* %7, i64 %indvars.iv, !dbg !427
  %9 = load i32* %arrayidx17, align 4, !dbg !427, !tbaa !281
  call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !153), !dbg !427
  %idxprom18 = sext i32 %9 to i64, !dbg !428
  %arrayidx19 = getelementptr inbounds i32* %call3, i64 %idxprom18, !dbg !428
  %10 = load i32* %arrayidx19, align 4, !dbg !428, !tbaa !281
  call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !154), !dbg !428
  %cmp20 = icmp eq i32 %10, %4, !dbg !428
  br i1 %cmp20, label %for.inc, label %if.then21, !dbg !428

if.then21:                                        ; preds = %for.body15
  br i1 %cmp22, label %cond.end, label %cond.false, !dbg !413

cond.false:                                       ; preds = %if.then21
  %arrayidx24 = getelementptr inbounds i32* %vwghts, i64 %idxprom18, !dbg !413
  %11 = load i32* %arrayidx24, align 4, !dbg !413, !tbaa !281
  br label %cond.end, !dbg !413

cond.end:                                         ; preds = %if.then21, %cond.false
  %cond = phi i32 [ %11, %cond.false ], [ 1, %if.then21 ], !dbg !413
  call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !155), !dbg !413
  %idxprom25 = sext i32 %10 to i64, !dbg !429
  %arrayidx26 = getelementptr inbounds i32* %call5, i64 %idxprom25, !dbg !429
  %12 = load i32* %arrayidx26, align 4, !dbg !429, !tbaa !281
  %cmp27 = icmp eq i32 %12, %4, !dbg !429
  %arrayidx37.pre = getelementptr inbounds i32* %call6, i64 %idxprom25, !dbg !430
  br i1 %cmp27, label %if.end35, label %if.then28, !dbg !429

if.then28:                                        ; preds = %cond.end
  store i32 0, i32* %arrayidx37.pre, align 4, !dbg !431, !tbaa !281
  store i32 %4, i32* %arrayidx26, align 4, !dbg !433, !tbaa !281
  %inc = add nsw i32 %nadj.0223, 1, !dbg !434
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !156), !dbg !434
  %idxprom33 = sext i32 %nadj.0223 to i64, !dbg !434
  %arrayidx34 = getelementptr inbounds i32* %call4, i64 %idxprom33, !dbg !434
  store i32 %10, i32* %arrayidx34, align 4, !dbg !434, !tbaa !281
  br label %if.end35, !dbg !435

if.end35:                                         ; preds = %cond.end, %if.then28
  %nadj.1 = phi i32 [ %inc, %if.then28 ], [ %nadj.0223, %cond.end ]
  %13 = load i32* %arrayidx37.pre, align 4, !dbg !430, !tbaa !281
  %add38 = add nsw i32 %13, %cond, !dbg !430
  store i32 %add38, i32* %arrayidx37.pre, align 4, !dbg !430, !tbaa !281
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !158), !dbg !422
  %.pre = load i32* %size, align 4, !dbg !422, !tbaa !281
  br label %for.inc, !dbg !436

for.inc:                                          ; preds = %for.body15, %if.end35
  %14 = phi i32 [ %.pre, %if.end35 ], [ %8, %for.body15 ], !dbg !422
  %nadj.2 = phi i32 [ %nadj.1, %if.end35 ], [ %nadj.0223, %for.body15 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !422
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !158), !dbg !422
  %15 = trunc i64 %indvars.iv.next to i32, !dbg !422
  %cmp14 = icmp slt i32 %15, %14, !dbg !422
  br i1 %cmp14, label %for.body15, label %for.end, !dbg !422

for.end:                                          ; preds = %for.inc
  call void @IVqsortUp(i32 %nadj.2, i32* %call4) #5, !dbg !423
  call void @llvm.dbg.value(metadata !424, i64 0, metadata !145), !dbg !425
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !151), !dbg !426
  %cmp42225 = icmp sgt i32 %nadj.2, 0, !dbg !426
  br i1 %cmp42225, label %for.body43.lr.ph, label %for.inc116, !dbg !426

for.body43.lr.ph:                                 ; preds = %for.end
  %mul = shl nsw i32 %call11, 1, !dbg !437
  %mul72 = shl nsw i32 %call11, 3, !dbg !439
  %mul82 = shl i32 %call11, 2, !dbg !440
  br label %for.body43, !dbg !426

for.body43:                                       ; preds = %for.inc113, %for.body43.lr.ph
  %indvars.iv237 = phi i64 [ 0, %for.body43.lr.ph ], [ %indvars.iv.next238, %for.inc113 ]
  %opsKbndK.1229 = phi double [ %opsKbndK.0236, %for.body43.lr.ph ], [ %opsKbndK.2206, %for.inc113 ]
  %opsKK.1228 = phi double [ %opsKK.0235, %for.body43.lr.ph ], [ %opsKK.2205, %for.inc113 ]
  %bndwghtJ.0227 = phi i32 [ %call12, %for.body43.lr.ph ], [ %sub, %for.inc113 ]
  %arrayidx45 = getelementptr inbounds i32* %call4, i64 %indvars.iv237, !dbg !442
  %16 = load i32* %arrayidx45, align 4, !dbg !442, !tbaa !281
  call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !154), !dbg !442
  %idxprom46 = sext i32 %16 to i64, !dbg !443
  %arrayidx47 = getelementptr inbounds i32* %call6, i64 %idxprom46, !dbg !443
  %17 = load i32* %arrayidx47, align 4, !dbg !443, !tbaa !281
  call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !160), !dbg !443
  %sub = sub nsw i32 %bndwghtJ.0227, %17, !dbg !444
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !150), !dbg !444
  switch i32 %type, label %if.end98 [
    i32 1, label %if.then49
    i32 2, label %if.then71
  ], !dbg !445

if.then49:                                        ; preds = %for.body43
  %mul50 = mul nsw i32 %17, %mul, !dbg !437
  %mul51 = mul nsw i32 %mul50, %sub, !dbg !437
  %conv = sitofp i32 %mul51 to double, !dbg !437
  call void @llvm.dbg.value(metadata !{double %conv}, i64 0, metadata !146), !dbg !437
  switch i32 %symflag, label %if.end98.thread [
    i32 0, label %if.then54
    i32 2, label %if.end98.thread211
  ], !dbg !446

if.then54:                                        ; preds = %if.then49
  %mul55 = mul nsw i32 %17, %call11, !dbg !447
  %add56 = add nsw i32 %17, 1, !dbg !447
  %mul57 = mul nsw i32 %mul55, %add56, !dbg !447
  %conv58 = sitofp i32 %mul57 to double, !dbg !447
  call void @llvm.dbg.value(metadata !{double %conv58}, i64 0, metadata !147), !dbg !447
  br label %if.end98.thread, !dbg !449

if.then71:                                        ; preds = %for.body43
  %mul73 = mul nsw i32 %17, %mul72, !dbg !439
  %mul74 = mul nsw i32 %mul73, %sub, !dbg !439
  %conv75 = sitofp i32 %mul74 to double, !dbg !439
  call void @llvm.dbg.value(metadata !{double %conv75}, i64 0, metadata !146), !dbg !439
  br i1 %3, label %if.then81, label %if.else87, !dbg !411

if.then81:                                        ; preds = %if.then71
  %mul83 = mul nsw i32 %mul82, %17, !dbg !440
  %add84 = add nsw i32 %17, 1, !dbg !440
  %mul85 = mul nsw i32 %mul83, %add84, !dbg !440
  %conv86 = sitofp i32 %mul85 to double, !dbg !440
  call void @llvm.dbg.value(metadata !{double %conv86}, i64 0, metadata !147), !dbg !440
  br label %if.end98.thread, !dbg !450

if.else87:                                        ; preds = %if.then71
  br i1 %cmp105, label %if.end98.thread211, label %if.end98.thread, !dbg !451

if.end98.thread:                                  ; preds = %if.then49, %if.else87, %if.then81, %if.then54
  %opsKK.2.ph = phi double [ %opsKK.1228, %if.then49 ], [ %opsKK.1228, %if.else87 ], [ %conv86, %if.then81 ], [ %conv58, %if.then54 ]
  %opsKbndK.2.ph = phi double [ %conv, %if.then49 ], [ %conv75, %if.else87 ], [ %conv75, %if.then81 ], [ %conv, %if.then54 ]
  %add99200 = fadd double %opsKK.2.ph, %opsKbndK.2.ph, !dbg !452
  %arrayidx103202 = getelementptr inbounds double* %call8, i64 %idxprom46, !dbg !453
  %18 = load double* %arrayidx103202, align 8, !dbg !453, !tbaa !418
  %add104203 = fadd double %18, %add99200, !dbg !453
  br label %for.inc113, !dbg !407

if.end98.thread211:                               ; preds = %if.then49, %if.else87
  %mul50.sink = phi i32 [ %mul73, %if.else87 ], [ %mul50, %if.then49 ]
  %opsKbndK.2.ph210 = phi double [ %conv75, %if.else87 ], [ %conv, %if.then49 ]
  %mul64 = mul nsw i32 %mul50.sink, %17, !dbg !454
  %conv65 = sitofp i32 %mul64 to double, !dbg !454
  %add99212 = fadd double %opsKbndK.2.ph210, %conv65, !dbg !452
  %arrayidx103214 = getelementptr inbounds double* %call8, i64 %idxprom46, !dbg !453
  %19 = load double* %arrayidx103214, align 8, !dbg !453, !tbaa !418
  %add104215 = fadd double %19, %add99212, !dbg !453
  br label %if.then107, !dbg !407

if.end98:                                         ; preds = %for.body43
  %add99 = fadd double %opsKK.1228, %opsKbndK.1229, !dbg !452
  %arrayidx103 = getelementptr inbounds double* %call8, i64 %idxprom46, !dbg !453
  %20 = load double* %arrayidx103, align 8, !dbg !453, !tbaa !418
  %add104 = fadd double %add99, %20, !dbg !453
  br i1 %cmp105, label %if.then107, label %for.inc113, !dbg !407

if.then107:                                       ; preds = %if.end98.thread211, %if.end98
  %add104221 = phi double [ %add104215, %if.end98.thread211 ], [ %add104, %if.end98 ]
  %arrayidx103220 = phi double* [ %arrayidx103214, %if.end98.thread211 ], [ %arrayidx103, %if.end98 ]
  %opsKbndK.2218 = phi double [ %opsKbndK.2.ph210, %if.end98.thread211 ], [ %opsKbndK.1229, %if.end98 ]
  %opsKK.2217 = phi double [ %conv65, %if.end98.thread211 ], [ %opsKK.1228, %if.end98 ]
  %add111 = fadd double %add104221, %opsKbndK.2218, !dbg !456
  br label %for.inc113, !dbg !458

for.inc113:                                       ; preds = %if.end98.thread, %if.end98, %if.then107
  %arrayidx103207 = phi double* [ %arrayidx103220, %if.then107 ], [ %arrayidx103, %if.end98 ], [ %arrayidx103202, %if.end98.thread ]
  %opsKbndK.2206 = phi double [ %opsKbndK.2218, %if.then107 ], [ %opsKbndK.1229, %if.end98 ], [ %opsKbndK.2.ph, %if.end98.thread ]
  %opsKK.2205 = phi double [ %opsKK.2217, %if.then107 ], [ %opsKK.1228, %if.end98 ], [ %opsKK.2.ph, %if.end98.thread ]
  %storemerge = phi double [ %add111, %if.then107 ], [ %add104, %if.end98 ], [ %add104203, %if.end98.thread ]
  store double %storemerge, double* %arrayidx103207, align 8, !dbg !453, !tbaa !418
  %indvars.iv.next238 = add i64 %indvars.iv237, 1, !dbg !426
  %lftr.wideiv = trunc i64 %indvars.iv.next238 to i32, !dbg !426
  %exitcond = icmp eq i32 %lftr.wideiv, %nadj.2, !dbg !426
  br i1 %exitcond, label %for.inc116, label %for.body43, !dbg !426

for.inc116:                                       ; preds = %for.inc113, %for.end.thread, %for.end
  %opsKbndK.1.lcssa = phi double [ %opsKbndK.0236, %for.end ], [ %opsKbndK.0236, %for.end.thread ], [ %opsKbndK.2206, %for.inc113 ]
  %opsKK.1.lcssa = phi double [ %opsKK.0235, %for.end ], [ %opsKK.0235, %for.end.thread ], [ %opsKK.2205, %for.inc113 ]
  %indvars.iv.next240 = add i64 %indvars.iv239, 1, !dbg !405
  %lftr.wideiv241 = trunc i64 %indvars.iv.next240 to i32, !dbg !405
  %exitcond242 = icmp eq i32 %lftr.wideiv241, %1, !dbg !405
  br i1 %exitcond242, label %for.end118, label %for.body, !dbg !405

for.end118:                                       ; preds = %for.inc116, %if.end
  call void @IVfree(i32* %call4) #5, !dbg !459
  call void @IVfree(i32* %call5) #5, !dbg !460
  call void @IVfree(i32* %call6) #5, !dbg !461
  ret %struct._DV* %call7, !dbg !462
}

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #4

; Function Attrs: optsize
declare %struct._DV* @DV_new() #4

; Function Attrs: optsize
declare void @DV_init(%struct._DV*, i32, double*) #4

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #4

; Function Attrs: optsize
declare void @DV_fill(%struct._DV*, double) #4

; Function Attrs: optsize
declare void @IVL_listAndSize(%struct._IVL*, i32, i32*, i32**) #4

; Function Attrs: optsize
declare void @IVqsortUp(i32, i32*) #4

; Function Attrs: optsize
declare void @IVfree(i32*) #4

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @ETree_factorEntriesIV(%struct._ETree* %etree, i32 %symflag) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !170), !dbg !463
  tail call void @llvm.dbg.value(metadata !{i32 %symflag}, i64 0, metadata !171), !dbg !464
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !465
  br i1 %cmp, label %if.then, label %if.end, !dbg !465

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !466, !tbaa !257
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str11, i64 0, i64 0), %struct._ETree* null, i32 %symflag) #5, !dbg !466
  tail call void @exit(i32 -1) #6, !dbg !468
  unreachable, !dbg !468

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ETree_nfront(%struct._ETree* %etree) #5, !dbg !469
  tail call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !173), !dbg !469
  %call2 = tail call %struct._IV* @IV_new() #5, !dbg !470
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %call2}, i64 0, metadata !175), !dbg !470
  tail call void @IV_init(%struct._IV* %call2, i32 %call1, i32* null) #5, !dbg !471
  %call3 = tail call i32* @IV_entries(%struct._IV* %call2) #5, !dbg !472
  tail call void @llvm.dbg.value(metadata !{i32* %call3}, i64 0, metadata !174), !dbg !472
  tail call void @IV_fill(%struct._IV* %call2, i32 0) #5, !dbg !473
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !172), !dbg !474
  %cmp417 = icmp sgt i32 %call1, 0, !dbg !474
  br i1 %cmp417, label %for.body, label %for.end, !dbg !474

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ]
  %1 = trunc i64 %indvars.iv to i32, !dbg !476
  %call5 = tail call double @ETree_nFactorEntriesInFront(%struct._ETree* %etree, i32 %symflag, i32 %1) #7, !dbg !476
  %conv = fptosi double %call5 to i32, !dbg !476
  %arrayidx = getelementptr inbounds i32* %call3, i64 %indvars.iv, !dbg !476
  store i32 %conv, i32* %arrayidx, align 4, !dbg !476, !tbaa !281
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !474
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !474
  %exitcond = icmp eq i32 %lftr.wideiv, %call1, !dbg !474
  br i1 %exitcond, label %for.end, label %for.body, !dbg !474

for.end:                                          ; preds = %for.body, %if.end
  ret %struct._IV* %call2, !dbg !478
}

; Function Attrs: optsize
declare i32 @ETree_nfront(%struct._ETree*) #4

; Function Attrs: optsize
declare %struct._IV* @IV_new() #4

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #4

; Function Attrs: optsize
declare void @IV_fill(%struct._IV*, i32) #4

; Function Attrs: nounwind optsize uwtable
define %struct._DV* @ETree_forwardOps(%struct._ETree* %etree, i32 %type, i32 %symflag) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !180), !dbg !479
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !181), !dbg !480
  tail call void @llvm.dbg.value(metadata !{i32 %symflag}, i64 0, metadata !182), !dbg !481
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !482
  br i1 %cmp, label %if.then, label %if.end, !dbg !482

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !483, !tbaa !257
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str12, i64 0, i64 0), %struct._ETree* null) #5, !dbg !483
  tail call void @exit(i32 -1) #6, !dbg !485
  unreachable, !dbg !485

if.end:                                           ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !486
  %1 = load i32* %nfront1, align 4, !dbg !486, !tbaa !281
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !186), !dbg !486
  %call2 = tail call %struct._DV* @DV_new() #5, !dbg !487
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %call2}, i64 0, metadata !184), !dbg !487
  tail call void @DV_init(%struct._DV* %call2, i32 %1, double* null) #5, !dbg !488
  %call3 = tail call double* @DV_entries(%struct._DV* %call2) #5, !dbg !489
  tail call void @llvm.dbg.value(metadata !{double* %call3}, i64 0, metadata !183), !dbg !489
  tail call void @DV_fill(%struct._DV* %call2, double 0.000000e+00) #5, !dbg !490
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !185), !dbg !491
  %cmp422 = icmp sgt i32 %1, 0, !dbg !491
  br i1 %cmp422, label %for.body, label %for.end, !dbg !491

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ]
  %2 = trunc i64 %indvars.iv to i32, !dbg !493
  %call5 = tail call double @ETree_nInternalOpsInFront(%struct._ETree* %etree, i32 %type, i32 %symflag, i32 %2) #7, !dbg !493
  %call6 = tail call double @ETree_nExternalOpsInFront(%struct._ETree* %etree, i32 %type, i32 %symflag, i32 %2) #7, !dbg !495
  %add = fadd double %call5, %call6, !dbg !495
  %arrayidx = getelementptr inbounds double* %call3, i64 %indvars.iv, !dbg !495
  %3 = load double* %arrayidx, align 8, !dbg !495, !tbaa !418
  %add7 = fadd double %3, %add, !dbg !495
  store double %add7, double* %arrayidx, align 8, !dbg !495, !tbaa !418
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !491
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !491
  %exitcond = icmp eq i32 %lftr.wideiv, %1, !dbg !491
  br i1 %exitcond, label %for.end, label %for.body, !dbg !491

for.end:                                          ; preds = %for.body, %if.end
  ret %struct._DV* %call2, !dbg !496
}

; Function Attrs: nounwind optsize uwtable
define %struct._ETree* @ETree_expand(%struct._ETree* %etree, %struct._IV* %eqmapIV) #0 {
entry:
  %ndof = alloca i32, align 4
  %map = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !191), !dbg !497
  call void @llvm.dbg.value(metadata !{%struct._IV* %eqmapIV}, i64 0, metadata !192), !dbg !498
  call void @llvm.dbg.declare(metadata !{i32* %ndof}, metadata !195), !dbg !499
  call void @llvm.dbg.declare(metadata !{i32** %map}, metadata !197), !dbg !500
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !501
  %cmp1 = icmp eq %struct._IV* %eqmapIV, null, !dbg !501
  %or.cond = or i1 %cmp, %cmp1, !dbg !501
  br i1 %or.cond, label %if.then, label %if.end, !dbg !501

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !502, !tbaa !257
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), %struct._ETree* %etree, %struct._IV* %eqmapIV) #5, !dbg !502
  call void @exit(i32 -1) #6, !dbg !504
  unreachable, !dbg !504

if.end:                                           ; preds = %entry
  %nfront2 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !505
  %1 = load i32* %nfront2, align 4, !dbg !505, !tbaa !281
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !196), !dbg !505
  call void @IV_sizeAndEntries(%struct._IV* %eqmapIV, i32* %ndof, i32** %map) #5, !dbg !506
  %call3 = call %struct._ETree* @ETree_new() #5, !dbg !507
  call void @llvm.dbg.value(metadata !{%struct._ETree* %call3}, i64 0, metadata !193), !dbg !507
  call void @llvm.dbg.value(metadata !{i32* %ndof}, i64 0, metadata !195), !dbg !508
  %2 = load i32* %ndof, align 4, !dbg !508, !tbaa !281
  call void @ETree_init1(%struct._ETree* %call3, i32 %1, i32 %2) #5, !dbg !508
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %call3, i64 0, i32 3, !dbg !509
  %3 = load %struct._IV** %nodwghtsIV, align 8, !dbg !509, !tbaa !257
  %nodwghtsIV4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3, !dbg !509
  %4 = load %struct._IV** %nodwghtsIV4, align 8, !dbg !509, !tbaa !257
  call void @IV_copy(%struct._IV* %3, %struct._IV* %4) #5, !dbg !509
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %call3, i64 0, i32 4, !dbg !510
  %5 = load %struct._IV** %bndwghtsIV, align 8, !dbg !510, !tbaa !257
  %bndwghtsIV5 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4, !dbg !510
  %6 = load %struct._IV** %bndwghtsIV5, align 8, !dbg !510, !tbaa !257
  call void @IV_copy(%struct._IV* %5, %struct._IV* %6) #5, !dbg !510
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !511
  %7 = load %struct._Tree** %tree, align 8, !dbg !511, !tbaa !257
  %root = getelementptr inbounds %struct._Tree* %7, i64 0, i32 1, !dbg !511
  %8 = load i32* %root, align 4, !dbg !511, !tbaa !281
  %tree6 = getelementptr inbounds %struct._ETree* %call3, i64 0, i32 2, !dbg !511
  %9 = load %struct._Tree** %tree6, align 8, !dbg !511, !tbaa !257
  %root7 = getelementptr inbounds %struct._Tree* %9, i64 0, i32 1, !dbg !511
  store i32 %8, i32* %root7, align 4, !dbg !511, !tbaa !281
  %par = getelementptr inbounds %struct._Tree* %9, i64 0, i32 2, !dbg !512
  %10 = load i32** %par, align 8, !dbg !512, !tbaa !257
  %par10 = getelementptr inbounds %struct._Tree* %7, i64 0, i32 2, !dbg !512
  %11 = load i32** %par10, align 8, !dbg !512, !tbaa !257
  call void @IVcopy(i32 %1, i32* %10, i32* %11) #5, !dbg !512
  %12 = load %struct._Tree** %tree6, align 8, !dbg !513, !tbaa !257
  %fch = getelementptr inbounds %struct._Tree* %12, i64 0, i32 3, !dbg !513
  %13 = load i32** %fch, align 8, !dbg !513, !tbaa !257
  %14 = load %struct._Tree** %tree, align 8, !dbg !513, !tbaa !257
  %fch13 = getelementptr inbounds %struct._Tree* %14, i64 0, i32 3, !dbg !513
  %15 = load i32** %fch13, align 8, !dbg !513, !tbaa !257
  call void @IVcopy(i32 %1, i32* %13, i32* %15) #5, !dbg !513
  %16 = load %struct._Tree** %tree6, align 8, !dbg !514, !tbaa !257
  %sib = getelementptr inbounds %struct._Tree* %16, i64 0, i32 4, !dbg !514
  %17 = load i32** %sib, align 8, !dbg !514, !tbaa !257
  %18 = load %struct._Tree** %tree, align 8, !dbg !514, !tbaa !257
  %sib16 = getelementptr inbounds %struct._Tree* %18, i64 0, i32 4, !dbg !514
  %19 = load i32** %sib16, align 8, !dbg !514, !tbaa !257
  call void @IVcopy(i32 %1, i32* %17, i32* %19) #5, !dbg !514
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5, !dbg !515
  %20 = load %struct._IV** %vtxToFrontIV, align 8, !dbg !515, !tbaa !257
  %call17 = call i32* @IV_entries(%struct._IV* %20) #5, !dbg !515
  call void @llvm.dbg.value(metadata !{i32* %call17}, i64 0, metadata !198), !dbg !515
  %vtxToFrontIV18 = getelementptr inbounds %struct._ETree* %call3, i64 0, i32 5, !dbg !516
  %21 = load %struct._IV** %vtxToFrontIV18, align 8, !dbg !516, !tbaa !257
  %call19 = call i32* @IV_entries(%struct._IV* %21) #5, !dbg !516
  call void @llvm.dbg.value(metadata !{i32* %call19}, i64 0, metadata !199), !dbg !516
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !194), !dbg !517
  call void @llvm.dbg.value(metadata !{i32* %ndof}, i64 0, metadata !195), !dbg !517
  %22 = load i32* %ndof, align 4, !dbg !517, !tbaa !281
  %cmp2050 = icmp sgt i32 %22, 0, !dbg !517
  br i1 %cmp2050, label %for.body.lr.ph, label %for.end, !dbg !517

for.body.lr.ph:                                   ; preds = %if.end
  call void @llvm.dbg.value(metadata !{i32** %map}, i64 0, metadata !197), !dbg !519
  %23 = load i32** %map, align 8, !dbg !519, !tbaa !257
  br label %for.body, !dbg !517

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata !{i32** %map}, i64 0, metadata !197), !dbg !519
  %arrayidx = getelementptr inbounds i32* %23, i64 %indvars.iv, !dbg !519
  %24 = load i32* %arrayidx, align 4, !dbg !519, !tbaa !281
  %idxprom21 = sext i32 %24 to i64, !dbg !519
  %arrayidx22 = getelementptr inbounds i32* %call17, i64 %idxprom21, !dbg !519
  %25 = load i32* %arrayidx22, align 4, !dbg !519, !tbaa !281
  %arrayidx24 = getelementptr inbounds i32* %call19, i64 %indvars.iv, !dbg !519
  store i32 %25, i32* %arrayidx24, align 4, !dbg !519, !tbaa !281
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !517
  call void @llvm.dbg.value(metadata !{i32* %ndof}, i64 0, metadata !195), !dbg !517
  %26 = load i32* %ndof, align 4, !dbg !517, !tbaa !281
  %27 = trunc i64 %indvars.iv.next to i32, !dbg !517
  %cmp20 = icmp slt i32 %27, %26, !dbg !517
  br i1 %cmp20, label %for.body, label %for.end, !dbg !517

for.end:                                          ; preds = %for.body, %if.end
  ret %struct._ETree* %call3, !dbg !521
}

; Function Attrs: optsize
declare void @IV_sizeAndEntries(%struct._IV*, i32*, i32**) #4

; Function Attrs: optsize
declare %struct._ETree* @ETree_new() #4

; Function Attrs: optsize
declare void @ETree_init1(%struct._ETree*, i32, i32) #4

; Function Attrs: optsize
declare void @IV_copy(%struct._IV*, %struct._IV*) #4

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #4

; Function Attrs: nounwind optsize uwtable
define %struct._ETree* @ETree_spliceTwoETrees(%struct._ETree* %etree0, %struct._Graph* %graph0, %struct._IV* %mapIV, %struct._ETree* %etree1) #0 {
entry:
  %vadj = alloca i32*, align 8
  %vsize = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._ETree* %etree0}, i64 0, metadata !218), !dbg !522
  call void @llvm.dbg.value(metadata !{%struct._Graph* %graph0}, i64 0, metadata !219), !dbg !523
  call void @llvm.dbg.value(metadata !{%struct._IV* %mapIV}, i64 0, metadata !220), !dbg !524
  call void @llvm.dbg.value(metadata !{%struct._ETree* %etree1}, i64 0, metadata !221), !dbg !525
  call void @llvm.dbg.declare(metadata !{i32** %vadj}, metadata !238), !dbg !526
  call void @llvm.dbg.declare(metadata !{i32* %vsize}, metadata !251), !dbg !527
  %cmp = icmp eq %struct._ETree* %etree0, null, !dbg !528
  %cmp1 = icmp eq %struct._Graph* %graph0, null, !dbg !528
  %or.cond = or i1 %cmp, %cmp1, !dbg !528
  %cmp3 = icmp eq %struct._IV* %mapIV, null, !dbg !528
  %or.cond261 = or i1 %or.cond, %cmp3, !dbg !528
  %cmp5 = icmp eq %struct._ETree* %etree1, null, !dbg !528
  %or.cond262 = or i1 %or.cond261, %cmp5, !dbg !528
  br i1 %or.cond262, label %if.then, label %if.end, !dbg !528

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !529, !tbaa !257
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([64 x i8]* @.str14, i64 0, i64 0), %struct._ETree* %etree0, %struct._Graph* %graph0, %struct._IV* %mapIV, %struct._ETree* %etree1) #5, !dbg !529
  call void @exit(i32 -1) #6, !dbg !531
  unreachable, !dbg !531

if.end:                                           ; preds = %entry
  %nfront = getelementptr inbounds %struct._ETree* %etree0, i64 0, i32 0, !dbg !532
  %1 = load i32* %nfront, align 4, !dbg !532, !tbaa !281
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !245), !dbg !532
  %nvtx6 = getelementptr inbounds %struct._ETree* %etree0, i64 0, i32 1, !dbg !533
  %2 = load i32* %nvtx6, align 4, !dbg !533, !tbaa !281
  call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !248), !dbg !533
  %tree = getelementptr inbounds %struct._ETree* %etree0, i64 0, i32 2, !dbg !534
  %3 = load %struct._Tree** %tree, align 8, !dbg !534, !tbaa !257
  %par = getelementptr inbounds %struct._Tree* %3, i64 0, i32 2, !dbg !534
  %4 = load i32** %par, align 8, !dbg !534, !tbaa !257
  call void @llvm.dbg.value(metadata !{i32* %4}, i64 0, metadata !234), !dbg !534
  %sib = getelementptr inbounds %struct._Tree* %3, i64 0, i32 4, !dbg !535
  %5 = load i32** %sib, align 8, !dbg !535, !tbaa !257
  call void @llvm.dbg.value(metadata !{i32* %5}, i64 0, metadata !237), !dbg !535
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree0, i64 0, i32 3, !dbg !536
  %6 = load %struct._IV** %nodwghtsIV, align 8, !dbg !536, !tbaa !257
  %call9 = call i32* @IV_entries(%struct._IV* %6) #5, !dbg !536
  call void @llvm.dbg.value(metadata !{i32* %call9}, i64 0, metadata !231), !dbg !536
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree0, i64 0, i32 4, !dbg !537
  %7 = load %struct._IV** %bndwghtsIV, align 8, !dbg !537, !tbaa !257
  %call10 = call i32* @IV_entries(%struct._IV* %7) #5, !dbg !537
  call void @llvm.dbg.value(metadata !{i32* %call10}, i64 0, metadata !223), !dbg !537
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree0, i64 0, i32 5, !dbg !538
  %8 = load %struct._IV** %vtxToFrontIV, align 8, !dbg !538, !tbaa !257
  %call11 = call i32* @IV_entries(%struct._IV* %8) #5, !dbg !538
  call void @llvm.dbg.value(metadata !{i32* %call11}, i64 0, metadata !239), !dbg !538
  %nfront12 = getelementptr inbounds %struct._ETree* %etree1, i64 0, i32 0, !dbg !539
  %9 = load i32* %nfront12, align 4, !dbg !539, !tbaa !281
  call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !246), !dbg !539
  %tree13 = getelementptr inbounds %struct._ETree* %etree1, i64 0, i32 2, !dbg !540
  %10 = load %struct._Tree** %tree13, align 8, !dbg !540, !tbaa !257
  %par14 = getelementptr inbounds %struct._Tree* %10, i64 0, i32 2, !dbg !540
  %11 = load i32** %par14, align 8, !dbg !540, !tbaa !257
  call void @llvm.dbg.value(metadata !{i32* %11}, i64 0, metadata !235), !dbg !540
  %bndwghtsIV15 = getelementptr inbounds %struct._ETree* %etree1, i64 0, i32 4, !dbg !541
  %12 = load %struct._IV** %bndwghtsIV15, align 8, !dbg !541, !tbaa !257
  %call16 = call i32* @IV_entries(%struct._IV* %12) #5, !dbg !541
  call void @llvm.dbg.value(metadata !{i32* %call16}, i64 0, metadata !224), !dbg !541
  %nodwghtsIV17 = getelementptr inbounds %struct._ETree* %etree1, i64 0, i32 3, !dbg !542
  %13 = load %struct._IV** %nodwghtsIV17, align 8, !dbg !542, !tbaa !257
  %call18 = call i32* @IV_entries(%struct._IV* %13) #5, !dbg !542
  call void @llvm.dbg.value(metadata !{i32* %call18}, i64 0, metadata !232), !dbg !542
  %vtxToFrontIV19 = getelementptr inbounds %struct._ETree* %etree1, i64 0, i32 5, !dbg !543
  %14 = load %struct._IV** %vtxToFrontIV19, align 8, !dbg !543, !tbaa !257
  %call20 = call i32* @IV_entries(%struct._IV* %14) #5, !dbg !543
  call void @llvm.dbg.value(metadata !{i32* %call20}, i64 0, metadata !240), !dbg !543
  %call21 = call i32* @IV_entries(%struct._IV* %mapIV) #5, !dbg !544
  call void @llvm.dbg.value(metadata !{i32* %call21}, i64 0, metadata !229), !dbg !544
  %add = add nsw i32 %9, %1, !dbg !545
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !247), !dbg !545
  %call22 = call %struct._ETree* @ETree_new() #5, !dbg !546
  call void @llvm.dbg.value(metadata !{%struct._ETree* %call22}, i64 0, metadata !222), !dbg !546
  %15 = load i32* %nvtx6, align 4, !dbg !547, !tbaa !281
  call void @ETree_init1(%struct._ETree* %call22, i32 %add, i32 %15) #5, !dbg !547
  %tree24 = getelementptr inbounds %struct._ETree* %call22, i64 0, i32 2, !dbg !548
  %16 = load %struct._Tree** %tree24, align 8, !dbg !548, !tbaa !257
  %par25 = getelementptr inbounds %struct._Tree* %16, i64 0, i32 2, !dbg !548
  %17 = load i32** %par25, align 8, !dbg !548, !tbaa !257
  call void @llvm.dbg.value(metadata !{i32* %17}, i64 0, metadata !236), !dbg !548
  %nodwghtsIV26 = getelementptr inbounds %struct._ETree* %call22, i64 0, i32 3, !dbg !549
  %18 = load %struct._IV** %nodwghtsIV26, align 8, !dbg !549, !tbaa !257
  %call27 = call i32* @IV_entries(%struct._IV* %18) #5, !dbg !549
  call void @llvm.dbg.value(metadata !{i32* %call27}, i64 0, metadata !233), !dbg !549
  %bndwghtsIV28 = getelementptr inbounds %struct._ETree* %call22, i64 0, i32 4, !dbg !550
  %19 = load %struct._IV** %bndwghtsIV28, align 8, !dbg !550, !tbaa !257
  %call29 = call i32* @IV_entries(%struct._IV* %19) #5, !dbg !550
  call void @llvm.dbg.value(metadata !{i32* %call29}, i64 0, metadata !225), !dbg !550
  %vtxToFrontIV30 = getelementptr inbounds %struct._ETree* %call22, i64 0, i32 5, !dbg !551
  %20 = load %struct._IV** %vtxToFrontIV30, align 8, !dbg !551, !tbaa !257
  %call31 = call i32* @IV_entries(%struct._IV* %20) #5, !dbg !551
  call void @llvm.dbg.value(metadata !{i32* %call31}, i64 0, metadata !241), !dbg !551
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !243), !dbg !552
  %cmp32280 = icmp sgt i32 %1, 0, !dbg !552
  br i1 %cmp32280, label %for.body, label %for.cond43.preheader, !dbg !552

for.cond43.preheader:                             ; preds = %for.body, %if.end
  %cmp44278 = icmp sgt i32 %9, 0, !dbg !554
  br i1 %cmp44278, label %for.body45.lr.ph, label %for.cond65.preheader, !dbg !554

for.body45.lr.ph:                                 ; preds = %for.cond43.preheader
  %21 = sext i32 %1 to i64, !dbg !554
  br label %for.body45, !dbg !554

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv295 = phi i64 [ %indvars.iv.next296, %for.body ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds i32* %4, i64 %indvars.iv295, !dbg !556
  %22 = load i32* %arrayidx, align 4, !dbg !556, !tbaa !281
  %arrayidx34 = getelementptr inbounds i32* %17, i64 %indvars.iv295, !dbg !556
  store i32 %22, i32* %arrayidx34, align 4, !dbg !556, !tbaa !281
  %arrayidx36 = getelementptr inbounds i32* %call9, i64 %indvars.iv295, !dbg !558
  %23 = load i32* %arrayidx36, align 4, !dbg !558, !tbaa !281
  %arrayidx38 = getelementptr inbounds i32* %call27, i64 %indvars.iv295, !dbg !558
  store i32 %23, i32* %arrayidx38, align 4, !dbg !558, !tbaa !281
  %arrayidx40 = getelementptr inbounds i32* %call10, i64 %indvars.iv295, !dbg !559
  %24 = load i32* %arrayidx40, align 4, !dbg !559, !tbaa !281
  %arrayidx42 = getelementptr inbounds i32* %call29, i64 %indvars.iv295, !dbg !559
  store i32 %24, i32* %arrayidx42, align 4, !dbg !559, !tbaa !281
  %indvars.iv.next296 = add i64 %indvars.iv295, 1, !dbg !552
  %lftr.wideiv297 = trunc i64 %indvars.iv.next296 to i32, !dbg !552
  %exitcond298 = icmp eq i32 %lftr.wideiv297, %1, !dbg !552
  br i1 %exitcond298, label %for.cond43.preheader, label %for.body, !dbg !552

for.cond65.preheader:                             ; preds = %for.body45, %for.cond43.preheader
  %cmp66276 = icmp sgt i32 %2, 0, !dbg !560
  br i1 %cmp66276, label %for.body67, label %for.end84, !dbg !560

for.body45:                                       ; preds = %for.body45, %for.body45.lr.ph
  %indvars.iv288 = phi i64 [ 0, %for.body45.lr.ph ], [ %indvars.iv.next289, %for.body45 ]
  %arrayidx47 = getelementptr inbounds i32* %11, i64 %indvars.iv288, !dbg !562
  %25 = load i32* %arrayidx47, align 4, !dbg !562, !tbaa !281
  %add48 = add nsw i32 %25, %1, !dbg !562
  %26 = add nsw i64 %indvars.iv288, %21, !dbg !562
  %arrayidx51 = getelementptr inbounds i32* %17, i64 %26, !dbg !562
  store i32 %add48, i32* %arrayidx51, align 4, !dbg !562, !tbaa !281
  %arrayidx53 = getelementptr inbounds i32* %call18, i64 %indvars.iv288, !dbg !564
  %27 = load i32* %arrayidx53, align 4, !dbg !564, !tbaa !281
  %arrayidx56 = getelementptr inbounds i32* %call27, i64 %26, !dbg !564
  store i32 %27, i32* %arrayidx56, align 4, !dbg !564, !tbaa !281
  %arrayidx58 = getelementptr inbounds i32* %call16, i64 %indvars.iv288, !dbg !565
  %28 = load i32* %arrayidx58, align 4, !dbg !565, !tbaa !281
  %arrayidx61 = getelementptr inbounds i32* %call29, i64 %26, !dbg !565
  store i32 %28, i32* %arrayidx61, align 4, !dbg !565, !tbaa !281
  %indvars.iv.next289 = add i64 %indvars.iv288, 1, !dbg !554
  %lftr.wideiv291 = trunc i64 %indvars.iv.next289 to i32, !dbg !554
  %exitcond292 = icmp eq i32 %lftr.wideiv291, %9, !dbg !554
  br i1 %exitcond292, label %for.cond65.preheader, label %for.body45, !dbg !554

for.body67:                                       ; preds = %for.cond65.preheader, %for.inc82
  %indvars.iv284 = phi i64 [ %indvars.iv.next285, %for.inc82 ], [ 0, %for.cond65.preheader ]
  %arrayidx69 = getelementptr inbounds i32* %call11, i64 %indvars.iv284, !dbg !566
  %29 = load i32* %arrayidx69, align 4, !dbg !566, !tbaa !281
  call void @llvm.dbg.value(metadata !{i32 %29}, i64 0, metadata !243), !dbg !566
  %cmp70 = icmp sgt i32 %29, -1, !dbg !566
  br i1 %cmp70, label %if.then71, label %if.else, !dbg !566

if.then71:                                        ; preds = %for.body67
  %arrayidx73 = getelementptr inbounds i32* %call31, i64 %indvars.iv284, !dbg !568
  store i32 %29, i32* %arrayidx73, align 4, !dbg !568, !tbaa !281
  br label %for.inc82, !dbg !570

if.else:                                          ; preds = %for.body67
  %arrayidx75 = getelementptr inbounds i32* %call21, i64 %indvars.iv284, !dbg !571
  %30 = load i32* %arrayidx75, align 4, !dbg !571, !tbaa !281
  %idxprom76 = sext i32 %30 to i64, !dbg !571
  %arrayidx77 = getelementptr inbounds i32* %call20, i64 %idxprom76, !dbg !571
  %31 = load i32* %arrayidx77, align 4, !dbg !571, !tbaa !281
  %add78 = add nsw i32 %31, %1, !dbg !571
  %arrayidx80 = getelementptr inbounds i32* %call31, i64 %indvars.iv284, !dbg !571
  store i32 %add78, i32* %arrayidx80, align 4, !dbg !571, !tbaa !281
  br label %for.inc82

for.inc82:                                        ; preds = %if.then71, %if.else
  %indvars.iv.next285 = add i64 %indvars.iv284, 1, !dbg !560
  %lftr.wideiv286 = trunc i64 %indvars.iv.next285 to i32, !dbg !560
  %exitcond287 = icmp eq i32 %lftr.wideiv286, %2, !dbg !560
  br i1 %exitcond287, label %for.end84, label %for.body67, !dbg !560

for.end84:                                        ; preds = %for.inc82, %for.cond65.preheader
  %call85 = call i32* @IVinit(i32 %1, i32 -1) #5, !dbg !573
  call void @llvm.dbg.value(metadata !{i32* %call85}, i64 0, metadata !227), !dbg !573
  %call86 = call i32* @IVinit(i32 %2, i32 -1) #5, !dbg !574
  call void @llvm.dbg.value(metadata !{i32* %call86}, i64 0, metadata !228), !dbg !574
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !250), !dbg !575
  br i1 %cmp66276, label %for.body89, label %for.end103, !dbg !575

for.body89:                                       ; preds = %for.end84, %for.inc101
  %indvars.iv282 = phi i64 [ %indvars.iv.next283, %for.inc101 ], [ 0, %for.end84 ]
  %arrayidx91 = getelementptr inbounds i32* %call11, i64 %indvars.iv282, !dbg !577
  %32 = load i32* %arrayidx91, align 4, !dbg !577, !tbaa !281
  call void @llvm.dbg.value(metadata !{i32 %32}, i64 0, metadata !243), !dbg !577
  %cmp92 = icmp sgt i32 %32, -1, !dbg !577
  br i1 %cmp92, label %if.then93, label %for.inc101, !dbg !577

if.then93:                                        ; preds = %for.body89
  %idxprom94 = sext i32 %32 to i64, !dbg !579
  %arrayidx95 = getelementptr inbounds i32* %call85, i64 %idxprom94, !dbg !579
  %33 = load i32* %arrayidx95, align 4, !dbg !579, !tbaa !281
  %arrayidx97 = getelementptr inbounds i32* %call86, i64 %indvars.iv282, !dbg !579
  store i32 %33, i32* %arrayidx97, align 4, !dbg !579, !tbaa !281
  %34 = trunc i64 %indvars.iv282 to i32, !dbg !581
  store i32 %34, i32* %arrayidx95, align 4, !dbg !581, !tbaa !281
  br label %for.inc101, !dbg !582

for.inc101:                                       ; preds = %for.body89, %if.then93
  %indvars.iv.next283 = add i64 %indvars.iv282, 1, !dbg !575
  %lftr.wideiv = trunc i64 %indvars.iv.next283 to i32, !dbg !575
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !575
  br i1 %exitcond, label %for.end103, label %for.body89, !dbg !575

for.end103:                                       ; preds = %for.inc101, %for.end84
  %call104 = call i32* @IVinit(i32 %2, i32 -1) #5, !dbg !583
  call void @llvm.dbg.value(metadata !{i32* %call104}, i64 0, metadata !230), !dbg !583
  %35 = load %struct._Tree** %tree, align 8, !dbg !584, !tbaa !257
  %root = getelementptr inbounds %struct._Tree* %35, i64 0, i32 1, !dbg !584
  %J.2271 = load i32* %root, align 4, !dbg !584
  %cmp107272 = icmp eq i32 %J.2271, -1, !dbg !584
  br i1 %cmp107272, label %for.end156, label %for.body108, !dbg !584

for.body108:                                      ; preds = %for.end103, %for.inc153
  %J.2273 = phi i32 [ %J.2, %for.inc153 ], [ %J.2271, %for.end103 ]
  call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !244), !dbg !586
  %idxprom109 = sext i32 %J.2273 to i64, !dbg !588
  %arrayidx110 = getelementptr inbounds i32* %call85, i64 %idxprom109, !dbg !588
  %v.2266 = load i32* %arrayidx110, align 4, !dbg !588
  %cmp112267 = icmp eq i32 %v.2266, -1, !dbg !588
  br i1 %cmp112267, label %for.inc153, label %for.body113, !dbg !588

for.body113:                                      ; preds = %for.body108, %for.inc143
  %v.2269 = phi i32 [ %v.2, %for.inc143 ], [ %v.2266, %for.body108 ]
  %K.0268 = phi i32 [ %K.1.lcssa, %for.inc143 ], [ %9, %for.body108 ]
  call void @Graph_adjAndSize(%struct._Graph* %graph0, i32 %v.2269, i32* %vsize, i32** %vadj) #5, !dbg !590
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !242), !dbg !592
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !251), !dbg !592
  %36 = load i32* %vsize, align 4, !dbg !592, !tbaa !281
  %cmp115263 = icmp sgt i32 %36, 0, !dbg !592
  br i1 %cmp115263, label %for.body116.lr.ph, label %for.inc143, !dbg !592

for.body116.lr.ph:                                ; preds = %for.body113
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !238), !dbg !594
  %37 = load i32** %vadj, align 8, !dbg !594, !tbaa !257
  br label %for.body116, !dbg !592

for.body116:                                      ; preds = %for.body116.lr.ph, %for.inc140
  %38 = phi i32 [ %36, %for.body116.lr.ph ], [ %44, %for.inc140 ]
  %indvars.iv = phi i64 [ 0, %for.body116.lr.ph ], [ %indvars.iv.next, %for.inc140 ]
  %K.1264 = phi i32 [ %K.0268, %for.body116.lr.ph ], [ %K.2, %for.inc140 ]
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !238), !dbg !594
  %arrayidx118 = getelementptr inbounds i32* %37, i64 %indvars.iv, !dbg !594
  %39 = load i32* %arrayidx118, align 4, !dbg !594, !tbaa !281
  call void @llvm.dbg.value(metadata !{i32 %39}, i64 0, metadata !252), !dbg !594
  %idxprom119 = sext i32 %39 to i64, !dbg !596
  %arrayidx120 = getelementptr inbounds i32* %call11, i64 %idxprom119, !dbg !596
  %40 = load i32* %arrayidx120, align 4, !dbg !596, !tbaa !281
  %cmp121 = icmp slt i32 %40, 0, !dbg !596
  br i1 %cmp121, label %if.then122, label %for.inc140, !dbg !596

if.then122:                                       ; preds = %for.body116
  %arrayidx124 = getelementptr inbounds i32* %call21, i64 %idxprom119, !dbg !597
  %41 = load i32* %arrayidx124, align 4, !dbg !597, !tbaa !281
  call void @llvm.dbg.value(metadata !{i32 %41}, i64 0, metadata !249), !dbg !597
  %idxprom125 = sext i32 %41 to i64, !dbg !599
  %arrayidx126 = getelementptr inbounds i32* %call104, i64 %idxprom125, !dbg !599
  %42 = load i32* %arrayidx126, align 4, !dbg !599, !tbaa !281
  %cmp127 = icmp eq i32 %42, %J.2273, !dbg !599
  br i1 %cmp127, label %for.inc140, label %if.then128, !dbg !599

if.then128:                                       ; preds = %if.then122
  store i32 %J.2273, i32* %arrayidx126, align 4, !dbg !600, !tbaa !281
  %arrayidx132 = getelementptr inbounds i32* %call20, i64 %idxprom125, !dbg !602
  %43 = load i32* %arrayidx132, align 4, !dbg !602, !tbaa !281
  %cmp133 = icmp sgt i32 %K.1264, %43, !dbg !602
  call void @llvm.dbg.value(metadata !{i32 %43}, i64 0, metadata !244), !dbg !603
  %.K.1 = select i1 %cmp133, i32 %43, i32 %K.1264, !dbg !602
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !251), !dbg !592
  %.pre = load i32* %vsize, align 4, !dbg !592, !tbaa !281
  br label %for.inc140, !dbg !602

for.inc140:                                       ; preds = %if.then128, %if.then122, %for.body116
  %44 = phi i32 [ %38, %if.then122 ], [ %38, %for.body116 ], [ %.pre, %if.then128 ], !dbg !592
  %K.2 = phi i32 [ %K.1264, %if.then122 ], [ %K.1264, %for.body116 ], [ %.K.1, %if.then128 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !592
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !251), !dbg !592
  %45 = trunc i64 %indvars.iv.next to i32, !dbg !592
  %cmp115 = icmp slt i32 %45, %44, !dbg !592
  br i1 %cmp115, label %for.body116, label %for.inc143, !dbg !592

for.inc143:                                       ; preds = %for.inc140, %for.body113
  %K.1.lcssa = phi i32 [ %K.0268, %for.body113 ], [ %K.2, %for.inc140 ]
  %idxprom144 = sext i32 %v.2269 to i64, !dbg !588
  %arrayidx145 = getelementptr inbounds i32* %call86, i64 %idxprom144, !dbg !588
  %v.2 = load i32* %arrayidx145, align 4, !dbg !588
  %cmp112 = icmp eq i32 %v.2, -1, !dbg !588
  br i1 %cmp112, label %for.end146, label %for.body113, !dbg !588

for.end146:                                       ; preds = %for.inc143
  %cmp147 = icmp slt i32 %K.1.lcssa, %9, !dbg !605
  br i1 %cmp147, label %if.then148, label %for.inc153, !dbg !605

if.then148:                                       ; preds = %for.end146
  %add149 = add nsw i32 %K.1.lcssa, %1, !dbg !606
  %arrayidx151 = getelementptr inbounds i32* %17, i64 %idxprom109, !dbg !606
  store i32 %add149, i32* %arrayidx151, align 4, !dbg !606, !tbaa !281
  br label %for.inc153, !dbg !608

for.inc153:                                       ; preds = %for.body108, %for.end146, %if.then148
  %arrayidx155 = getelementptr inbounds i32* %5, i64 %idxprom109, !dbg !584
  %J.2 = load i32* %arrayidx155, align 4, !dbg !584
  %cmp107 = icmp eq i32 %J.2, -1, !dbg !584
  br i1 %cmp107, label %for.end156, label %for.body108, !dbg !584

for.end156:                                       ; preds = %for.inc153, %for.end103
  %46 = load %struct._Tree** %tree24, align 8, !dbg !609, !tbaa !257
  call void @Tree_setFchSibRoot(%struct._Tree* %46) #5, !dbg !609
  call void @IVfree(i32* %call85) #5, !dbg !610
  call void @IVfree(i32* %call86) #5, !dbg !611
  call void @IVfree(i32* %call104) #5, !dbg !612
  ret %struct._ETree* %call22, !dbg !613
}

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #4

; Function Attrs: optsize
declare void @Tree_setFchSibRoot(%struct._Tree*) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !43, metadata !54, metadata !64, metadata !76, metadata !84, metadata !95, metadata !104, metadata !166, metadata !176, metadata !187, metadata !200}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_sizeOf", metadata !"ETree_sizeOf", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._ETree*)* @ETree_sizeOf, null, null, metadata !40, i32 18} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 18] [ETree_sizeOf]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ETree]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"ETree", i32 31, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [ETree] [line 31, size 0, align 0, offset 0] [from _ETree]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_ETree", i32 32, i64 320, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_ETree] [line 32, size 320, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../ETree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !28, metadata !38, metadata !39}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nfront", i32 33, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [nfront] [line 33, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nvtx", i32 34, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [nvtx] [line 34, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"tree", i32 35, i64 64, i64 64, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [tree] [line 35, size 64, align 64, offset 64] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Tree]
!18 = metadata !{i32 786454, metadata !12, null, metadata !"Tree", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [Tree] [line 15, size 0, align 0, offset 0] [from _Tree]
!19 = metadata !{i32 786451, metadata !20, null, metadata !"_Tree", i32 16, i64 256, i64 64, i32 0, i32 0, null, metadata !21, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Tree] [line 16, size 256, align 64, offset 0] [from ]
!20 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../../Tree/Tree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!21 = metadata !{metadata !22, metadata !23, metadata !24, metadata !26, metadata !27}
!22 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"n", i32 17, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [n] [line 17, size 32, align 32, offset 0] [from int]
!23 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"root", i32 18, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [root] [line 18, size 32, align 32, offset 32] [from int]
!24 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"par", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !25} ; [ DW_TAG_member ] [par] [line 19, size 64, align 64, offset 64] [from ]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!26 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"fch", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [fch] [line 20, size 64, align 64, offset 128] [from ]
!27 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"sib", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !25} ; [ DW_TAG_member ] [sib] [line 21, size 64, align 64, offset 192] [from ]
!28 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nodwghtsIV", i32 36, i64 64, i64 64, i64 128, i32 0, metadata !29} ; [ DW_TAG_member ] [nodwghtsIV] [line 36, size 64, align 64, offset 128] [from ]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IV]
!30 = metadata !{i32 786454, metadata !12, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!31 = metadata !{i32 786451, metadata !32, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !33, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!32 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!33 = metadata !{metadata !34, metadata !35, metadata !36, metadata !37}
!34 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!35 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!36 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!37 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!38 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"bndwghtsIV", i32 37, i64 64, i64 64, i64 192, i32 0, metadata !29} ; [ DW_TAG_member ] [bndwghtsIV] [line 37, size 64, align 64, offset 192] [from ]
!39 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"vtxToFrontIV", i32 38, i64 64, i64 64, i64 256, i32 0, metadata !29} ; [ DW_TAG_member ] [vtxToFrontIV] [line 38, size 64, align 64, offset 256] [from ]
!40 = metadata !{metadata !41, metadata !42}
!41 = metadata !{i32 786689, metadata !4, metadata !"etree", metadata !5, i32 16777233, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 17]
!42 = metadata !{i32 786688, metadata !4, metadata !"nbytes", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes] [line 19]
!43 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_nFactorIndices", metadata !"ETree_nFactorIndices", metadata !"", i32 55, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._ETree*)* @ETree_nFactorIndices, null, null, metadata !44, i32 57} ; [ DW_TAG_subprogram ] [line 55] [def] [scope 57] [ETree_nFactorIndices]
!44 = metadata !{metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53}
!45 = metadata !{i32 786689, metadata !43, metadata !"etree", metadata !5, i32 16777272, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 56]
!46 = metadata !{i32 786688, metadata !43, metadata !"nb", metadata !5, i32 58, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nb] [line 58]
!47 = metadata !{i32 786688, metadata !43, metadata !"nfront", metadata !5, i32 58, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 58]
!48 = metadata !{i32 786688, metadata !43, metadata !"nv", metadata !5, i32 58, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nv] [line 58]
!49 = metadata !{i32 786688, metadata !43, metadata !"nind", metadata !5, i32 58, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nind] [line 58]
!50 = metadata !{i32 786688, metadata !43, metadata !"nvtx", metadata !5, i32 58, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 58]
!51 = metadata !{i32 786688, metadata !43, metadata !"v", metadata !5, i32 58, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 58]
!52 = metadata !{i32 786688, metadata !43, metadata !"bndwghts", metadata !5, i32 59, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bndwghts] [line 59]
!53 = metadata !{i32 786688, metadata !43, metadata !"nodwghts", metadata !5, i32 59, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nodwghts] [line 59]
!54 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_nFactorEntries", metadata !"ETree_nFactorEntries", metadata !"", i32 96, metadata !55, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._ETree*, i32)* @ETree_nFactorEntries, null, null, metadata !57, i32 99} ; [ DW_TAG_subprogram ] [line 96] [def] [scope 99] [ETree_nFactorEntries]
!55 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!56 = metadata !{metadata !8, metadata !9, metadata !8}
!57 = metadata !{metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63}
!58 = metadata !{i32 786689, metadata !54, metadata !"etree", metadata !5, i32 16777313, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 97]
!59 = metadata !{i32 786689, metadata !54, metadata !"symflag", metadata !5, i32 33554530, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symflag] [line 98]
!60 = metadata !{i32 786688, metadata !54, metadata !"J", metadata !5, i32 100, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 100]
!61 = metadata !{i32 786688, metadata !54, metadata !"nfront", metadata !5, i32 100, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 100]
!62 = metadata !{i32 786688, metadata !54, metadata !"nvtx", metadata !5, i32 100, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 100]
!63 = metadata !{i32 786688, metadata !54, metadata !"nzf", metadata !5, i32 100, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nzf] [line 100]
!64 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_nFactorOps", metadata !"ETree_nFactorOps", metadata !"", i32 136, metadata !65, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct._ETree*, i32, i32)* @ETree_nFactorOps, null, null, metadata !68, i32 140} ; [ DW_TAG_subprogram ] [line 136] [def] [scope 140] [ETree_nFactorOps]
!65 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!66 = metadata !{metadata !67, metadata !9, metadata !8, metadata !8}
!67 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!68 = metadata !{metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75}
!69 = metadata !{i32 786689, metadata !64, metadata !"etree", metadata !5, i32 16777353, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 137]
!70 = metadata !{i32 786689, metadata !64, metadata !"type", metadata !5, i32 33554570, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 138]
!71 = metadata !{i32 786689, metadata !64, metadata !"symflag", metadata !5, i32 50331787, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symflag] [line 139]
!72 = metadata !{i32 786688, metadata !64, metadata !"ops", metadata !5, i32 141, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ops] [line 141]
!73 = metadata !{i32 786688, metadata !64, metadata !"J", metadata !5, i32 142, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 142]
!74 = metadata !{i32 786688, metadata !64, metadata !"nfront", metadata !5, i32 142, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 142]
!75 = metadata !{i32 786688, metadata !64, metadata !"nvtx", metadata !5, i32 142, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 142]
!76 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_nFactorEntriesInFront", metadata !"ETree_nFactorEntriesInFront", metadata !"", i32 171, metadata !65, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct._ETree*, i32, i32)* @ETree_nFactorEntriesInFront, null, null, metadata !77, i32 175} ; [ DW_TAG_subprogram ] [line 171] [def] [scope 175] [ETree_nFactorEntriesInFront]
!77 = metadata !{metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83}
!78 = metadata !{i32 786689, metadata !76, metadata !"etree", metadata !5, i32 16777388, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 172]
!79 = metadata !{i32 786689, metadata !76, metadata !"symflag", metadata !5, i32 33554605, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symflag] [line 173]
!80 = metadata !{i32 786689, metadata !76, metadata !"J", metadata !5, i32 50331822, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [J] [line 174]
!81 = metadata !{i32 786688, metadata !76, metadata !"b", metadata !5, i32 176, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 176]
!82 = metadata !{i32 786688, metadata !76, metadata !"m", metadata !5, i32 176, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 176]
!83 = metadata !{i32 786688, metadata !76, metadata !"nent", metadata !5, i32 176, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 176]
!84 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_nInternalOpsInFront", metadata !"ETree_nInternalOpsInFront", metadata !"", i32 218, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct._ETree*, i32, i32, i32)* @ETree_nInternalOpsInFront, null, null, metadata !87, i32 223} ; [ DW_TAG_subprogram ] [line 218] [def] [scope 223] [ETree_nInternalOpsInFront]
!85 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!86 = metadata !{metadata !67, metadata !9, metadata !8, metadata !8, metadata !8}
!87 = metadata !{metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94}
!88 = metadata !{i32 786689, metadata !84, metadata !"etree", metadata !5, i32 16777435, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 219]
!89 = metadata !{i32 786689, metadata !84, metadata !"type", metadata !5, i32 33554652, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 220]
!90 = metadata !{i32 786689, metadata !84, metadata !"symflag", metadata !5, i32 50331869, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symflag] [line 221]
!91 = metadata !{i32 786689, metadata !84, metadata !"J", metadata !5, i32 67109086, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [J] [line 222]
!92 = metadata !{i32 786688, metadata !84, metadata !"b", metadata !5, i32 224, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 224]
!93 = metadata !{i32 786688, metadata !84, metadata !"m", metadata !5, i32 224, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 224]
!94 = metadata !{i32 786688, metadata !84, metadata !"ops", metadata !5, i32 224, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ops] [line 224]
!95 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_nExternalOpsInFront", metadata !"ETree_nExternalOpsInFront", metadata !"", i32 277, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct._ETree*, i32, i32, i32)* @ETree_nExternalOpsInFront, null, null, metadata !96, i32 282} ; [ DW_TAG_subprogram ] [line 277] [def] [scope 282] [ETree_nExternalOpsInFront]
!96 = metadata !{metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103}
!97 = metadata !{i32 786689, metadata !95, metadata !"etree", metadata !5, i32 16777494, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 278]
!98 = metadata !{i32 786689, metadata !95, metadata !"type", metadata !5, i32 33554711, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 279]
!99 = metadata !{i32 786689, metadata !95, metadata !"symflag", metadata !5, i32 50331928, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symflag] [line 280]
!100 = metadata !{i32 786689, metadata !95, metadata !"J", metadata !5, i32 67109145, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [J] [line 281]
!101 = metadata !{i32 786688, metadata !95, metadata !"b", metadata !5, i32 283, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 283]
!102 = metadata !{i32 786688, metadata !95, metadata !"m", metadata !5, i32 283, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 283]
!103 = metadata !{i32 786688, metadata !95, metadata !"ops", metadata !5, i32 283, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ops] [line 283]
!104 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_backwardOps", metadata !"ETree_backwardOps", metadata !"", i32 334, metadata !105, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._DV* (%struct._ETree*, i32, i32, i32*, %struct._IVL*)* @ETree_backwardOps, null, null, metadata !139, i32 340} ; [ DW_TAG_subprogram ] [line 334] [def] [scope 340] [ETree_backwardOps]
!105 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!106 = metadata !{metadata !107, metadata !9, metadata !8, metadata !8, metadata !25, metadata !117}
!107 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DV]
!108 = metadata !{i32 786454, metadata !1, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !109} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!109 = metadata !{i32 786451, metadata !110, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !111, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!110 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!111 = metadata !{metadata !112, metadata !113, metadata !114, metadata !115}
!112 = metadata !{i32 786445, metadata !110, metadata !109, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!113 = metadata !{i32 786445, metadata !110, metadata !109, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!114 = metadata !{i32 786445, metadata !110, metadata !109, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!115 = metadata !{i32 786445, metadata !110, metadata !109, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !116} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!116 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !67} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!117 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !118} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IVL]
!118 = metadata !{i32 786454, metadata !1, null, metadata !"IVL", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !119} ; [ DW_TAG_typedef ] [IVL] [line 55, size 0, align 0, offset 0] [from _IVL]
!119 = metadata !{i32 786451, metadata !120, null, metadata !"_IVL", i32 79, i64 384, i64 64, i32 0, i32 0, null, metadata !121, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IVL] [line 79, size 384, align 64, offset 0] [from ]
!120 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../../IVL/IVL.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!121 = metadata !{metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !129, metadata !130}
!122 = metadata !{i32 786445, metadata !120, metadata !119, metadata !"type", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 0] [from int]
!123 = metadata !{i32 786445, metadata !120, metadata !119, metadata !"maxnlist", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxnlist] [line 81, size 32, align 32, offset 32] [from int]
!124 = metadata !{i32 786445, metadata !120, metadata !119, metadata !"nlist", i32 82, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [nlist] [line 82, size 32, align 32, offset 64] [from int]
!125 = metadata !{i32 786445, metadata !120, metadata !119, metadata !"tsize", i32 83, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [tsize] [line 83, size 32, align 32, offset 96] [from int]
!126 = metadata !{i32 786445, metadata !120, metadata !119, metadata !"sizes", i32 84, i64 64, i64 64, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [sizes] [line 84, size 64, align 64, offset 128] [from ]
!127 = metadata !{i32 786445, metadata !120, metadata !119, metadata !"p_vec", i32 85, i64 64, i64 64, i64 192, i32 0, metadata !128} ; [ DW_TAG_member ] [p_vec] [line 85, size 64, align 64, offset 192] [from ]
!128 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!129 = metadata !{i32 786445, metadata !120, metadata !119, metadata !"incr", i32 86, i64 32, i64 32, i64 256, i32 0, metadata !8} ; [ DW_TAG_member ] [incr] [line 86, size 32, align 32, offset 256] [from int]
!130 = metadata !{i32 786445, metadata !120, metadata !119, metadata !"chunk", i32 87, i64 64, i64 64, i64 320, i32 0, metadata !131} ; [ DW_TAG_member ] [chunk] [line 87, size 64, align 64, offset 320] [from ]
!131 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !132} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Ichunk]
!132 = metadata !{i32 786454, metadata !120, null, metadata !"Ichunk", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !133} ; [ DW_TAG_typedef ] [Ichunk] [line 56, size 0, align 0, offset 0] [from _Ichunk]
!133 = metadata !{i32 786451, metadata !120, null, metadata !"_Ichunk", i32 102, i64 192, i64 64, i32 0, i32 0, null, metadata !134, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Ichunk] [line 102, size 192, align 64, offset 0] [from ]
!134 = metadata !{metadata !135, metadata !136, metadata !137, metadata !138}
!135 = metadata !{i32 786445, metadata !120, metadata !133, metadata !"size", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 103, size 32, align 32, offset 0] [from int]
!136 = metadata !{i32 786445, metadata !120, metadata !133, metadata !"inuse", i32 104, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [inuse] [line 104, size 32, align 32, offset 32] [from int]
!137 = metadata !{i32 786445, metadata !120, metadata !133, metadata !"base", i32 105, i64 64, i64 64, i64 64, i32 0, metadata !25} ; [ DW_TAG_member ] [base] [line 105, size 64, align 64, offset 64] [from ]
!138 = metadata !{i32 786445, metadata !120, metadata !133, metadata !"next", i32 106, i64 64, i64 64, i64 128, i32 0, metadata !131} ; [ DW_TAG_member ] [next] [line 106, size 64, align 64, offset 128] [from ]
!139 = metadata !{metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165}
!140 = metadata !{i32 786689, metadata !104, metadata !"etree", metadata !5, i32 16777551, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 335]
!141 = metadata !{i32 786689, metadata !104, metadata !"type", metadata !5, i32 33554768, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 336]
!142 = metadata !{i32 786689, metadata !104, metadata !"symflag", metadata !5, i32 50331985, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symflag] [line 337]
!143 = metadata !{i32 786689, metadata !104, metadata !"vwghts", metadata !5, i32 67109202, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vwghts] [line 338]
!144 = metadata !{i32 786689, metadata !104, metadata !"symbfacIVL", metadata !5, i32 83886419, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symbfacIVL] [line 339]
!145 = metadata !{i32 786688, metadata !104, metadata !"extops", metadata !5, i32 341, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [extops] [line 341]
!146 = metadata !{i32 786688, metadata !104, metadata !"opsKbndK", metadata !5, i32 341, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [opsKbndK] [line 341]
!147 = metadata !{i32 786688, metadata !104, metadata !"opsKK", metadata !5, i32 341, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [opsKK] [line 341]
!148 = metadata !{i32 786688, metadata !104, metadata !"ops", metadata !5, i32 342, metadata !116, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ops] [line 342]
!149 = metadata !{i32 786688, metadata !104, metadata !"opsDV", metadata !5, i32 343, metadata !107, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [opsDV] [line 343]
!150 = metadata !{i32 786688, metadata !104, metadata !"bndwghtJ", metadata !5, i32 344, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bndwghtJ] [line 344]
!151 = metadata !{i32 786688, metadata !104, metadata !"ii", metadata !5, i32 344, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 344]
!152 = metadata !{i32 786688, metadata !104, metadata !"J", metadata !5, i32 344, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 344]
!153 = metadata !{i32 786688, metadata !104, metadata !"k", metadata !5, i32 344, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 344]
!154 = metadata !{i32 786688, metadata !104, metadata !"K", metadata !5, i32 344, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [K] [line 344]
!155 = metadata !{i32 786688, metadata !104, metadata !"kwght", metadata !5, i32 344, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kwght] [line 344]
!156 = metadata !{i32 786688, metadata !104, metadata !"nadj", metadata !5, i32 345, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nadj] [line 345]
!157 = metadata !{i32 786688, metadata !104, metadata !"nfront", metadata !5, i32 345, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 345]
!158 = metadata !{i32 786688, metadata !104, metadata !"size", metadata !5, i32 345, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 345]
!159 = metadata !{i32 786688, metadata !104, metadata !"wghtJ", metadata !5, i32 345, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wghtJ] [line 345]
!160 = metadata !{i32 786688, metadata !104, metadata !"wghtK", metadata !5, i32 345, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wghtK] [line 345]
!161 = metadata !{i32 786688, metadata !104, metadata !"counts", metadata !5, i32 346, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [counts] [line 346]
!162 = metadata !{i32 786688, metadata !104, metadata !"indices", metadata !5, i32 346, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 346]
!163 = metadata !{i32 786688, metadata !104, metadata !"list", metadata !5, i32 346, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [list] [line 346]
!164 = metadata !{i32 786688, metadata !104, metadata !"mark", metadata !5, i32 346, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mark] [line 346]
!165 = metadata !{i32 786688, metadata !104, metadata !"vtxToFront", metadata !5, i32 346, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vtxToFront] [line 346]
!166 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_factorEntriesIV", metadata !"ETree_factorEntriesIV", metadata !"", i32 445, metadata !167, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IV* (%struct._ETree*, i32)* @ETree_factorEntriesIV, null, null, metadata !169, i32 448} ; [ DW_TAG_subprogram ] [line 445] [def] [scope 448] [ETree_factorEntriesIV]
!167 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !168, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!168 = metadata !{metadata !29, metadata !9, metadata !8}
!169 = metadata !{metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175}
!170 = metadata !{i32 786689, metadata !166, metadata !"etree", metadata !5, i32 16777662, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 446]
!171 = metadata !{i32 786689, metadata !166, metadata !"symflag", metadata !5, i32 33554879, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symflag] [line 447]
!172 = metadata !{i32 786688, metadata !166, metadata !"J", metadata !5, i32 449, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 449]
!173 = metadata !{i32 786688, metadata !166, metadata !"nfront", metadata !5, i32 449, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 449]
!174 = metadata !{i32 786688, metadata !166, metadata !"nzf", metadata !5, i32 450, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nzf] [line 450]
!175 = metadata !{i32 786688, metadata !166, metadata !"nzfIV", metadata !5, i32 451, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nzfIV] [line 451]
!176 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_forwardOps", metadata !"ETree_forwardOps", metadata !"", i32 492, metadata !177, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._DV* (%struct._ETree*, i32, i32)* @ETree_forwardOps, null, null, metadata !179, i32 496} ; [ DW_TAG_subprogram ] [line 492] [def] [scope 496] [ETree_forwardOps]
!177 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !178, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!178 = metadata !{metadata !107, metadata !9, metadata !8, metadata !8}
!179 = metadata !{metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186}
!180 = metadata !{i32 786689, metadata !176, metadata !"etree", metadata !5, i32 16777709, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 493]
!181 = metadata !{i32 786689, metadata !176, metadata !"type", metadata !5, i32 33554926, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 494]
!182 = metadata !{i32 786689, metadata !176, metadata !"symflag", metadata !5, i32 50332143, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symflag] [line 495]
!183 = metadata !{i32 786688, metadata !176, metadata !"ops", metadata !5, i32 497, metadata !116, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ops] [line 497]
!184 = metadata !{i32 786688, metadata !176, metadata !"opsDV", metadata !5, i32 498, metadata !107, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [opsDV] [line 498]
!185 = metadata !{i32 786688, metadata !176, metadata !"J", metadata !5, i32 499, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 499]
!186 = metadata !{i32 786688, metadata !176, metadata !"nfront", metadata !5, i32 499, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 499]
!187 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_expand", metadata !"ETree_expand", metadata !"", i32 532, metadata !188, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._ETree* (%struct._ETree*, %struct._IV*)* @ETree_expand, null, null, metadata !190, i32 535} ; [ DW_TAG_subprogram ] [line 532] [def] [scope 535] [ETree_expand]
!188 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !189, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!189 = metadata !{metadata !9, metadata !9, metadata !29}
!190 = metadata !{metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199}
!191 = metadata !{i32 786689, metadata !187, metadata !"etree", metadata !5, i32 16777749, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 533]
!192 = metadata !{i32 786689, metadata !187, metadata !"eqmapIV", metadata !5, i32 33554966, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eqmapIV] [line 534]
!193 = metadata !{i32 786688, metadata !187, metadata !"etree2", metadata !5, i32 536, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [etree2] [line 536]
!194 = metadata !{i32 786688, metadata !187, metadata !"ii", metadata !5, i32 537, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 537]
!195 = metadata !{i32 786688, metadata !187, metadata !"ndof", metadata !5, i32 537, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndof] [line 537]
!196 = metadata !{i32 786688, metadata !187, metadata !"nfront", metadata !5, i32 537, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 537]
!197 = metadata !{i32 786688, metadata !187, metadata !"map", metadata !5, i32 538, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [map] [line 538]
!198 = metadata !{i32 786688, metadata !187, metadata !"vtxToFront", metadata !5, i32 538, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vtxToFront] [line 538]
!199 = metadata !{i32 786688, metadata !187, metadata !"vtxToFront2", metadata !5, i32 538, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vtxToFront2] [line 538]
!200 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_spliceTwoETrees", metadata !"ETree_spliceTwoETrees", metadata !"", i32 591, metadata !201, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._ETree* (%struct._ETree*, %struct._Graph*, %struct._IV*, %struct._ETree*)* @ETree_spliceTwoETrees, null, null, metadata !217, i32 596} ; [ DW_TAG_subprogram ] [line 591] [def] [scope 596] [ETree_spliceTwoETrees]
!201 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !202, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!202 = metadata !{metadata !9, metadata !9, metadata !203, metadata !29, metadata !9}
!203 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !204} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Graph]
!204 = metadata !{i32 786454, metadata !1, null, metadata !"Graph", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !205} ; [ DW_TAG_typedef ] [Graph] [line 49, size 0, align 0, offset 0] [from _Graph]
!205 = metadata !{i32 786451, metadata !206, null, metadata !"_Graph", i32 50, i64 384, i64 64, i32 0, i32 0, null, metadata !207, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Graph] [line 50, size 384, align 64, offset 0] [from ]
!206 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../../Graph/Graph.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!207 = metadata !{metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216}
!208 = metadata !{i32 786445, metadata !206, metadata !205, metadata !"type", i32 51, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 51, size 32, align 32, offset 0] [from int]
!209 = metadata !{i32 786445, metadata !206, metadata !205, metadata !"nvtx", i32 52, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [nvtx] [line 52, size 32, align 32, offset 32] [from int]
!210 = metadata !{i32 786445, metadata !206, metadata !205, metadata !"nvbnd", i32 53, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [nvbnd] [line 53, size 32, align 32, offset 64] [from int]
!211 = metadata !{i32 786445, metadata !206, metadata !205, metadata !"nedges", i32 54, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [nedges] [line 54, size 32, align 32, offset 96] [from int]
!212 = metadata !{i32 786445, metadata !206, metadata !205, metadata !"totvwght", i32 55, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [totvwght] [line 55, size 32, align 32, offset 128] [from int]
!213 = metadata !{i32 786445, metadata !206, metadata !205, metadata !"totewght", i32 56, i64 32, i64 32, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ] [totewght] [line 56, size 32, align 32, offset 160] [from int]
!214 = metadata !{i32 786445, metadata !206, metadata !205, metadata !"adjIVL", i32 57, i64 64, i64 64, i64 192, i32 0, metadata !117} ; [ DW_TAG_member ] [adjIVL] [line 57, size 64, align 64, offset 192] [from ]
!215 = metadata !{i32 786445, metadata !206, metadata !205, metadata !"vwghts", i32 58, i64 64, i64 64, i64 256, i32 0, metadata !25} ; [ DW_TAG_member ] [vwghts] [line 58, size 64, align 64, offset 256] [from ]
!216 = metadata !{i32 786445, metadata !206, metadata !205, metadata !"ewghtIVL", i32 59, i64 64, i64 64, i64 320, i32 0, metadata !117} ; [ DW_TAG_member ] [ewghtIVL] [line 59, size 64, align 64, offset 320] [from ]
!217 = metadata !{metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252}
!218 = metadata !{i32 786689, metadata !200, metadata !"etree0", metadata !5, i32 16777808, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree0] [line 592]
!219 = metadata !{i32 786689, metadata !200, metadata !"graph0", metadata !5, i32 33555025, metadata !203, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [graph0] [line 593]
!220 = metadata !{i32 786689, metadata !200, metadata !"mapIV", metadata !5, i32 50332242, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mapIV] [line 594]
!221 = metadata !{i32 786689, metadata !200, metadata !"etree1", metadata !5, i32 67109459, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree1] [line 595]
!222 = metadata !{i32 786688, metadata !200, metadata !"etree2", metadata !5, i32 597, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [etree2] [line 597]
!223 = metadata !{i32 786688, metadata !200, metadata !"bndwghts0", metadata !5, i32 598, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bndwghts0] [line 598]
!224 = metadata !{i32 786688, metadata !200, metadata !"bndwghts1", metadata !5, i32 598, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bndwghts1] [line 598]
!225 = metadata !{i32 786688, metadata !200, metadata !"bndwghts2", metadata !5, i32 598, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bndwghts2] [line 598]
!226 = metadata !{i32 786688, metadata !200, metadata !"fch0", metadata !5, i32 598, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fch0] [line 598]
!227 = metadata !{i32 786688, metadata !200, metadata !"head0", metadata !5, i32 598, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [head0] [line 598]
!228 = metadata !{i32 786688, metadata !200, metadata !"link0", metadata !5, i32 598, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [link0] [line 598]
!229 = metadata !{i32 786688, metadata !200, metadata !"map", metadata !5, i32 599, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [map] [line 599]
!230 = metadata !{i32 786688, metadata !200, metadata !"mark", metadata !5, i32 599, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mark] [line 599]
!231 = metadata !{i32 786688, metadata !200, metadata !"nodwghts0", metadata !5, i32 599, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nodwghts0] [line 599]
!232 = metadata !{i32 786688, metadata !200, metadata !"nodwghts1", metadata !5, i32 599, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nodwghts1] [line 599]
!233 = metadata !{i32 786688, metadata !200, metadata !"nodwghts2", metadata !5, i32 599, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nodwghts2] [line 599]
!234 = metadata !{i32 786688, metadata !200, metadata !"par0", metadata !5, i32 599, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [par0] [line 599]
!235 = metadata !{i32 786688, metadata !200, metadata !"par1", metadata !5, i32 600, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [par1] [line 600]
!236 = metadata !{i32 786688, metadata !200, metadata !"par2", metadata !5, i32 600, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [par2] [line 600]
!237 = metadata !{i32 786688, metadata !200, metadata !"sib0", metadata !5, i32 600, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sib0] [line 600]
!238 = metadata !{i32 786688, metadata !200, metadata !"vadj", metadata !5, i32 600, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vadj] [line 600]
!239 = metadata !{i32 786688, metadata !200, metadata !"vtxToFront0", metadata !5, i32 600, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vtxToFront0] [line 600]
!240 = metadata !{i32 786688, metadata !200, metadata !"vtxToFront1", metadata !5, i32 600, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vtxToFront1] [line 600]
!241 = metadata !{i32 786688, metadata !200, metadata !"vtxToFront2", metadata !5, i32 601, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vtxToFront2] [line 601]
!242 = metadata !{i32 786688, metadata !200, metadata !"ii", metadata !5, i32 602, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 602]
!243 = metadata !{i32 786688, metadata !200, metadata !"J", metadata !5, i32 602, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 602]
!244 = metadata !{i32 786688, metadata !200, metadata !"K", metadata !5, i32 602, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [K] [line 602]
!245 = metadata !{i32 786688, metadata !200, metadata !"nfront0", metadata !5, i32 602, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront0] [line 602]
!246 = metadata !{i32 786688, metadata !200, metadata !"nfront1", metadata !5, i32 602, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront1] [line 602]
!247 = metadata !{i32 786688, metadata !200, metadata !"nfront2", metadata !5, i32 602, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront2] [line 602]
!248 = metadata !{i32 786688, metadata !200, metadata !"nvtx", metadata !5, i32 602, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 602]
!249 = metadata !{i32 786688, metadata !200, metadata !"phi", metadata !5, i32 602, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [phi] [line 602]
!250 = metadata !{i32 786688, metadata !200, metadata !"v", metadata !5, i32 602, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 602]
!251 = metadata !{i32 786688, metadata !200, metadata !"vsize", metadata !5, i32 602, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vsize] [line 602]
!252 = metadata !{i32 786688, metadata !200, metadata !"w", metadata !5, i32 602, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 602]
!253 = metadata !{i32 17, i32 0, metadata !4, null}
!254 = metadata !{i32 25, i32 0, metadata !4, null}
!255 = metadata !{i32 26, i32 0, metadata !256, null}
!256 = metadata !{i32 786443, metadata !1, metadata !4, i32 25, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!257 = metadata !{metadata !"any pointer", metadata !258}
!258 = metadata !{metadata !"omnipotent char", metadata !259}
!259 = metadata !{metadata !"Simple C/C++ TBAA"}
!260 = metadata !{i32 28, i32 0, metadata !256, null}
!261 = metadata !{i32 40}
!262 = metadata !{i32 30, i32 0, metadata !4, null}
!263 = metadata !{i32 31, i32 0, metadata !4, null}
!264 = metadata !{i32 32, i32 0, metadata !265, null}
!265 = metadata !{i32 786443, metadata !1, metadata !4, i32 31, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!266 = metadata !{i32 33, i32 0, metadata !265, null}
!267 = metadata !{i32 34, i32 0, metadata !4, null}
!268 = metadata !{i32 35, i32 0, metadata !269, null}
!269 = metadata !{i32 786443, metadata !1, metadata !4, i32 34, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!270 = metadata !{i32 37, i32 0, metadata !4, null}
!271 = metadata !{i32 38, i32 0, metadata !272, null}
!272 = metadata !{i32 786443, metadata !1, metadata !4, i32 37, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!273 = metadata !{i32 39, i32 0, metadata !272, null}
!274 = metadata !{i32 40, i32 0, metadata !4, null}
!275 = metadata !{i32 41, i32 0, metadata !276, null}
!276 = metadata !{i32 786443, metadata !1, metadata !4, i32 40, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!277 = metadata !{i32 42, i32 0, metadata !276, null}
!278 = metadata !{i32 43, i32 0, metadata !4, null}
!279 = metadata !{i32 56, i32 0, metadata !43, null}
!280 = metadata !{i32 65, i32 0, metadata !43, null}
!281 = metadata !{metadata !"int", metadata !258}
!282 = metadata !{i32 68, i32 0, metadata !283, null}
!283 = metadata !{i32 786443, metadata !1, metadata !43, i32 67, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!284 = metadata !{i32 70, i32 0, metadata !283, null}
!285 = metadata !{i32 72, i32 0, metadata !43, null}
!286 = metadata !{i32 73, i32 0, metadata !43, null}
!287 = metadata !{i32 74, i32 0, metadata !43, null}
!288 = metadata !{i32 75, i32 0, metadata !289, null}
!289 = metadata !{i32 786443, metadata !1, metadata !43, i32 75, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!290 = metadata !{i32 76, i32 0, metadata !291, null}
!291 = metadata !{i32 786443, metadata !1, metadata !289, i32 75, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!292 = metadata !{i32 77, i32 0, metadata !291, null}
!293 = metadata !{i32 78, i32 0, metadata !291, null}
!294 = metadata !{i32 80, i32 0, metadata !43, null}
!295 = metadata !{i32 97, i32 0, metadata !54, null}
!296 = metadata !{i32 98, i32 0, metadata !54, null}
!297 = metadata !{i32 106, i32 0, metadata !54, null}
!298 = metadata !{i32 109, i32 0, metadata !299, null}
!299 = metadata !{i32 786443, metadata !1, metadata !54, i32 108, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!300 = metadata !{i32 111, i32 0, metadata !299, null}
!301 = metadata !{i32 115, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !1, metadata !303, i32 114, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!303 = metadata !{i32 786443, metadata !1, metadata !54, i32 114, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!304 = metadata !{i32 114, i32 0, metadata !303, null}
!305 = metadata !{i32 117, i32 0, metadata !54, null}
!306 = metadata !{i32 172, i32 0, metadata !76, null}
!307 = metadata !{i32 173, i32 0, metadata !76, null}
!308 = metadata !{i32 174, i32 0, metadata !76, null}
!309 = metadata !{i32 182, i32 0, metadata !76, null}
!310 = metadata !{i32 185, i32 0, metadata !311, null}
!311 = metadata !{i32 786443, metadata !1, metadata !76, i32 184, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!312 = metadata !{i32 188, i32 0, metadata !311, null}
!313 = metadata !{i32 190, i32 0, metadata !76, null}
!314 = metadata !{i32 191, i32 0, metadata !76, null}
!315 = metadata !{i32 192, i32 0, metadata !76, null}
!316 = metadata !{i32 195, i32 0, metadata !317, null}
!317 = metadata !{i32 786443, metadata !1, metadata !76, i32 192, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!318 = metadata !{i32 196, i32 0, metadata !317, null}
!319 = metadata !{i32 198, i32 0, metadata !317, null}
!320 = metadata !{i32 199, i32 0, metadata !317, null}
!321 = metadata !{i32 201, i32 0, metadata !317, null}
!322 = metadata !{i32 204, i32 0, metadata !317, null}
!323 = metadata !{i32 207, i32 0, metadata !76, null}
!324 = metadata !{i32 137, i32 0, metadata !64, null}
!325 = metadata !{i32 138, i32 0, metadata !64, null}
!326 = metadata !{i32 139, i32 0, metadata !64, null}
!327 = metadata !{i32 148, i32 0, metadata !64, null}
!328 = metadata !{i32 151, i32 0, metadata !329, null}
!329 = metadata !{i32 786443, metadata !1, metadata !64, i32 150, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!330 = metadata !{i32 153, i32 0, metadata !329, null}
!331 = metadata !{i32 157, i32 0, metadata !332, null}
!332 = metadata !{i32 786443, metadata !1, metadata !333, i32 156, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!333 = metadata !{i32 786443, metadata !1, metadata !64, i32 156, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!334 = metadata !{i32 158, i32 0, metadata !332, null}
!335 = metadata !{i32 156, i32 0, metadata !333, null}
!336 = metadata !{i32 160, i32 0, metadata !64, null}
!337 = metadata !{i32 219, i32 0, metadata !84, null}
!338 = metadata !{i32 220, i32 0, metadata !84, null}
!339 = metadata !{i32 221, i32 0, metadata !84, null}
!340 = metadata !{i32 222, i32 0, metadata !84, null}
!341 = metadata !{i32 230, i32 0, metadata !84, null}
!342 = metadata !{i32 233, i32 0, metadata !343, null}
!343 = metadata !{i32 786443, metadata !1, metadata !84, i32 232, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!344 = metadata !{i32 236, i32 0, metadata !343, null}
!345 = metadata !{i32 238, i32 0, metadata !84, null}
!346 = metadata !{i32 239, i32 0, metadata !84, null}
!347 = metadata !{i32 240, i32 0, metadata !84, null}
!348 = metadata !{i32 243, i32 0, metadata !349, null}
!349 = metadata !{i32 786443, metadata !1, metadata !84, i32 240, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!350 = metadata !{i32 244, i32 0, metadata !349, null}
!351 = metadata !{i32 246, i32 0, metadata !349, null}
!352 = metadata !{i32 247, i32 0, metadata !349, null}
!353 = metadata !{i32 249, i32 0, metadata !349, null}
!354 = metadata !{i32 252, i32 0, metadata !349, null}
!355 = metadata !{i32 254, i32 0, metadata !84, null}
!356 = metadata !{i32 258, i32 0, metadata !357, null}
!357 = metadata !{i32 786443, metadata !1, metadata !84, i32 254, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!358 = metadata !{i32 259, i32 0, metadata !357, null}
!359 = metadata !{i32 261, i32 0, metadata !357, null}
!360 = metadata !{i32 264, i32 0, metadata !357, null}
!361 = metadata !{i32 266, i32 0, metadata !84, null}
!362 = metadata !{i32 278, i32 0, metadata !95, null}
!363 = metadata !{i32 279, i32 0, metadata !95, null}
!364 = metadata !{i32 280, i32 0, metadata !95, null}
!365 = metadata !{i32 281, i32 0, metadata !95, null}
!366 = metadata !{i32 289, i32 0, metadata !95, null}
!367 = metadata !{i32 292, i32 0, metadata !368, null}
!368 = metadata !{i32 786443, metadata !1, metadata !95, i32 291, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!369 = metadata !{i32 295, i32 0, metadata !368, null}
!370 = metadata !{i32 297, i32 0, metadata !95, null}
!371 = metadata !{i32 298, i32 0, metadata !95, null}
!372 = metadata !{i32 299, i32 0, metadata !95, null}
!373 = metadata !{i32 302, i32 0, metadata !374, null}
!374 = metadata !{i32 786443, metadata !1, metadata !95, i32 299, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!375 = metadata !{i32 303, i32 0, metadata !374, null}
!376 = metadata !{i32 305, i32 0, metadata !374, null}
!377 = metadata !{i32 306, i32 0, metadata !374, null}
!378 = metadata !{i32 310, i32 0, metadata !95, null}
!379 = metadata !{i32 314, i32 0, metadata !380, null}
!380 = metadata !{i32 786443, metadata !1, metadata !95, i32 310, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!381 = metadata !{i32 315, i32 0, metadata !380, null}
!382 = metadata !{i32 317, i32 0, metadata !380, null}
!383 = metadata !{i32 320, i32 0, metadata !380, null}
!384 = metadata !{i32 322, i32 0, metadata !95, null}
!385 = metadata !{i32 335, i32 0, metadata !104, null}
!386 = metadata !{i32 336, i32 0, metadata !104, null}
!387 = metadata !{i32 337, i32 0, metadata !104, null}
!388 = metadata !{i32 338, i32 0, metadata !104, null}
!389 = metadata !{i32 339, i32 0, metadata !104, null}
!390 = metadata !{i32 345, i32 0, metadata !104, null}
!391 = metadata !{i32 346, i32 0, metadata !104, null}
!392 = metadata !{i32 352, i32 0, metadata !104, null}
!393 = metadata !{i32 353, i32 0, metadata !394, null}
!394 = metadata !{i32 786443, metadata !1, metadata !104, i32 352, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!395 = metadata !{i32 355, i32 0, metadata !394, null}
!396 = metadata !{i32 357, i32 0, metadata !104, null}
!397 = metadata !{i32 358, i32 0, metadata !104, null}
!398 = metadata !{i32 359, i32 0, metadata !104, null}
!399 = metadata !{i32 360, i32 0, metadata !104, null}
!400 = metadata !{i32 361, i32 0, metadata !104, null}
!401 = metadata !{i32 367, i32 0, metadata !104, null}
!402 = metadata !{i32 368, i32 0, metadata !104, null}
!403 = metadata !{i32 369, i32 0, metadata !104, null}
!404 = metadata !{i32 370, i32 0, metadata !104, null}
!405 = metadata !{i32 376, i32 0, metadata !406, null}
!406 = metadata !{i32 786443, metadata !1, metadata !104, i32 376, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!407 = metadata !{i32 417, i32 0, metadata !408, null}
!408 = metadata !{i32 786443, metadata !1, metadata !409, i32 395, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!409 = metadata !{i32 786443, metadata !1, metadata !410, i32 395, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!410 = metadata !{i32 786443, metadata !1, metadata !406, i32 376, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!411 = metadata !{i32 408, i32 0, metadata !412, null}
!412 = metadata !{i32 786443, metadata !1, metadata !408, i32 406, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!413 = metadata !{i32 384, i32 0, metadata !414, null}
!414 = metadata !{i32 786443, metadata !1, metadata !415, i32 383, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!415 = metadata !{i32 786443, metadata !1, metadata !416, i32 381, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!416 = metadata !{i32 786443, metadata !1, metadata !410, i32 381, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!417 = metadata !{i32 377, i32 0, metadata !410, null}
!418 = metadata !{metadata !"double", metadata !258}
!419 = metadata !{i32 378, i32 0, metadata !410, null}
!420 = metadata !{i32 379, i32 0, metadata !410, null}
!421 = metadata !{i32 380, i32 0, metadata !410, null}
!422 = metadata !{i32 381, i32 0, metadata !416, null}
!423 = metadata !{i32 393, i32 0, metadata !410, null}
!424 = metadata !{double 0.000000e+00}
!425 = metadata !{i32 394, i32 0, metadata !410, null}
!426 = metadata !{i32 395, i32 0, metadata !409, null}
!427 = metadata !{i32 382, i32 0, metadata !415, null}
!428 = metadata !{i32 383, i32 0, metadata !415, null}
!429 = metadata !{i32 385, i32 0, metadata !414, null}
!430 = metadata !{i32 390, i32 0, metadata !414, null}
!431 = metadata !{i32 386, i32 0, metadata !432, null}
!432 = metadata !{i32 786443, metadata !1, metadata !414, i32 385, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!433 = metadata !{i32 387, i32 0, metadata !432, null}
!434 = metadata !{i32 388, i32 0, metadata !432, null}
!435 = metadata !{i32 389, i32 0, metadata !432, null}
!436 = metadata !{i32 391, i32 0, metadata !414, null}
!437 = metadata !{i32 400, i32 0, metadata !438, null}
!438 = metadata !{i32 786443, metadata !1, metadata !408, i32 399, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!439 = metadata !{i32 407, i32 0, metadata !412, null}
!440 = metadata !{i32 410, i32 0, metadata !441, null}
!441 = metadata !{i32 786443, metadata !1, metadata !412, i32 409, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!442 = metadata !{i32 396, i32 0, metadata !408, null}
!443 = metadata !{i32 397, i32 0, metadata !408, null}
!444 = metadata !{i32 398, i32 0, metadata !408, null}
!445 = metadata !{i32 399, i32 0, metadata !408, null}
!446 = metadata !{i32 401, i32 0, metadata !438, null}
!447 = metadata !{i32 402, i32 0, metadata !448, null}
!448 = metadata !{i32 786443, metadata !1, metadata !438, i32 401, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!449 = metadata !{i32 403, i32 0, metadata !448, null}
!450 = metadata !{i32 411, i32 0, metadata !441, null}
!451 = metadata !{i32 411, i32 0, metadata !412, null}
!452 = metadata !{i32 415, i32 0, metadata !408, null}
!453 = metadata !{i32 416, i32 0, metadata !408, null}
!454 = metadata !{i32 404, i32 0, metadata !455, null}
!455 = metadata !{i32 786443, metadata !1, metadata !438, i32 403, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!456 = metadata !{i32 419, i32 0, metadata !457, null}
!457 = metadata !{i32 786443, metadata !1, metadata !408, i32 417, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!458 = metadata !{i32 420, i32 0, metadata !457, null}
!459 = metadata !{i32 429, i32 0, metadata !104, null}
!460 = metadata !{i32 430, i32 0, metadata !104, null}
!461 = metadata !{i32 431, i32 0, metadata !104, null}
!462 = metadata !{i32 433, i32 0, metadata !104, null}
!463 = metadata !{i32 446, i32 0, metadata !166, null}
!464 = metadata !{i32 447, i32 0, metadata !166, null}
!465 = metadata !{i32 457, i32 0, metadata !166, null}
!466 = metadata !{i32 458, i32 0, metadata !467, null}
!467 = metadata !{i32 786443, metadata !1, metadata !166, i32 457, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!468 = metadata !{i32 460, i32 0, metadata !467, null}
!469 = metadata !{i32 462, i32 0, metadata !166, null}
!470 = metadata !{i32 468, i32 0, metadata !166, null}
!471 = metadata !{i32 469, i32 0, metadata !166, null}
!472 = metadata !{i32 470, i32 0, metadata !166, null}
!473 = metadata !{i32 471, i32 0, metadata !166, null}
!474 = metadata !{i32 477, i32 0, metadata !475, null}
!475 = metadata !{i32 786443, metadata !1, metadata !166, i32 477, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!476 = metadata !{i32 478, i32 0, metadata !477, null}
!477 = metadata !{i32 786443, metadata !1, metadata !475, i32 477, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!478 = metadata !{i32 480, i32 0, metadata !166, null}
!479 = metadata !{i32 493, i32 0, metadata !176, null}
!480 = metadata !{i32 494, i32 0, metadata !176, null}
!481 = metadata !{i32 495, i32 0, metadata !176, null}
!482 = metadata !{i32 505, i32 0, metadata !176, null}
!483 = metadata !{i32 506, i32 0, metadata !484, null}
!484 = metadata !{i32 786443, metadata !1, metadata !176, i32 505, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!485 = metadata !{i32 508, i32 0, metadata !484, null}
!486 = metadata !{i32 510, i32 0, metadata !176, null}
!487 = metadata !{i32 511, i32 0, metadata !176, null}
!488 = metadata !{i32 512, i32 0, metadata !176, null}
!489 = metadata !{i32 513, i32 0, metadata !176, null}
!490 = metadata !{i32 514, i32 0, metadata !176, null}
!491 = metadata !{i32 515, i32 0, metadata !492, null}
!492 = metadata !{i32 786443, metadata !1, metadata !176, i32 515, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!493 = metadata !{i32 516, i32 0, metadata !494, null}
!494 = metadata !{i32 786443, metadata !1, metadata !492, i32 515, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!495 = metadata !{i32 517, i32 0, metadata !494, null}
!496 = metadata !{i32 519, i32 0, metadata !176, null}
!497 = metadata !{i32 533, i32 0, metadata !187, null}
!498 = metadata !{i32 534, i32 0, metadata !187, null}
!499 = metadata !{i32 537, i32 0, metadata !187, null}
!500 = metadata !{i32 538, i32 0, metadata !187, null}
!501 = metadata !{i32 544, i32 0, metadata !187, null}
!502 = metadata !{i32 545, i32 0, metadata !503, null}
!503 = metadata !{i32 786443, metadata !1, metadata !187, i32 544, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!504 = metadata !{i32 547, i32 0, metadata !503, null}
!505 = metadata !{i32 549, i32 0, metadata !187, null}
!506 = metadata !{i32 550, i32 0, metadata !187, null}
!507 = metadata !{i32 556, i32 0, metadata !187, null}
!508 = metadata !{i32 557, i32 0, metadata !187, null}
!509 = metadata !{i32 558, i32 0, metadata !187, null}
!510 = metadata !{i32 559, i32 0, metadata !187, null}
!511 = metadata !{i32 560, i32 0, metadata !187, null}
!512 = metadata !{i32 561, i32 0, metadata !187, null}
!513 = metadata !{i32 562, i32 0, metadata !187, null}
!514 = metadata !{i32 563, i32 0, metadata !187, null}
!515 = metadata !{i32 564, i32 0, metadata !187, null}
!516 = metadata !{i32 565, i32 0, metadata !187, null}
!517 = metadata !{i32 566, i32 0, metadata !518, null}
!518 = metadata !{i32 786443, metadata !1, metadata !187, i32 566, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!519 = metadata !{i32 567, i32 0, metadata !520, null}
!520 = metadata !{i32 786443, metadata !1, metadata !518, i32 566, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!521 = metadata !{i32 570, i32 0, metadata !187, null}
!522 = metadata !{i32 592, i32 0, metadata !200, null}
!523 = metadata !{i32 593, i32 0, metadata !200, null}
!524 = metadata !{i32 594, i32 0, metadata !200, null}
!525 = metadata !{i32 595, i32 0, metadata !200, null}
!526 = metadata !{i32 600, i32 0, metadata !200, null}
!527 = metadata !{i32 602, i32 0, metadata !200, null}
!528 = metadata !{i32 608, i32 0, metadata !200, null}
!529 = metadata !{i32 610, i32 0, metadata !530, null}
!530 = metadata !{i32 786443, metadata !1, metadata !200, i32 609, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!531 = metadata !{i32 614, i32 0, metadata !530, null}
!532 = metadata !{i32 616, i32 0, metadata !200, null}
!533 = metadata !{i32 617, i32 0, metadata !200, null}
!534 = metadata !{i32 618, i32 0, metadata !200, null}
!535 = metadata !{i32 620, i32 0, metadata !200, null}
!536 = metadata !{i32 621, i32 0, metadata !200, null}
!537 = metadata !{i32 622, i32 0, metadata !200, null}
!538 = metadata !{i32 623, i32 0, metadata !200, null}
!539 = metadata !{i32 624, i32 0, metadata !200, null}
!540 = metadata !{i32 625, i32 0, metadata !200, null}
!541 = metadata !{i32 626, i32 0, metadata !200, null}
!542 = metadata !{i32 627, i32 0, metadata !200, null}
!543 = metadata !{i32 628, i32 0, metadata !200, null}
!544 = metadata !{i32 629, i32 0, metadata !200, null}
!545 = metadata !{i32 635, i32 0, metadata !200, null}
!546 = metadata !{i32 636, i32 0, metadata !200, null}
!547 = metadata !{i32 637, i32 0, metadata !200, null}
!548 = metadata !{i32 638, i32 0, metadata !200, null}
!549 = metadata !{i32 639, i32 0, metadata !200, null}
!550 = metadata !{i32 640, i32 0, metadata !200, null}
!551 = metadata !{i32 641, i32 0, metadata !200, null}
!552 = metadata !{i32 647, i32 0, metadata !553, null}
!553 = metadata !{i32 786443, metadata !1, metadata !200, i32 647, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!554 = metadata !{i32 652, i32 0, metadata !555, null}
!555 = metadata !{i32 786443, metadata !1, metadata !200, i32 652, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!556 = metadata !{i32 648, i32 0, metadata !557, null}
!557 = metadata !{i32 786443, metadata !1, metadata !553, i32 647, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!558 = metadata !{i32 649, i32 0, metadata !557, null}
!559 = metadata !{i32 650, i32 0, metadata !557, null}
!560 = metadata !{i32 662, i32 0, metadata !561, null}
!561 = metadata !{i32 786443, metadata !1, metadata !200, i32 662, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!562 = metadata !{i32 653, i32 0, metadata !563, null}
!563 = metadata !{i32 786443, metadata !1, metadata !555, i32 652, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!564 = metadata !{i32 654, i32 0, metadata !563, null}
!565 = metadata !{i32 655, i32 0, metadata !563, null}
!566 = metadata !{i32 663, i32 0, metadata !567, null}
!567 = metadata !{i32 786443, metadata !1, metadata !561, i32 662, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!568 = metadata !{i32 664, i32 0, metadata !569, null}
!569 = metadata !{i32 786443, metadata !1, metadata !567, i32 663, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!570 = metadata !{i32 665, i32 0, metadata !569, null}
!571 = metadata !{i32 666, i32 0, metadata !572, null}
!572 = metadata !{i32 786443, metadata !1, metadata !567, i32 665, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!573 = metadata !{i32 674, i32 0, metadata !200, null}
!574 = metadata !{i32 675, i32 0, metadata !200, null}
!575 = metadata !{i32 676, i32 0, metadata !576, null}
!576 = metadata !{i32 786443, metadata !1, metadata !200, i32 676, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!577 = metadata !{i32 677, i32 0, metadata !578, null}
!578 = metadata !{i32 786443, metadata !1, metadata !576, i32 676, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!579 = metadata !{i32 678, i32 0, metadata !580, null}
!580 = metadata !{i32 786443, metadata !1, metadata !578, i32 677, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!581 = metadata !{i32 679, i32 0, metadata !580, null}
!582 = metadata !{i32 680, i32 0, metadata !580, null}
!583 = metadata !{i32 687, i32 0, metadata !200, null}
!584 = metadata !{i32 688, i32 0, metadata !585, null}
!585 = metadata !{i32 786443, metadata !1, metadata !200, i32 688, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!586 = metadata !{i32 694, i32 0, metadata !587, null}
!587 = metadata !{i32 786443, metadata !1, metadata !585, i32 688, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!588 = metadata !{i32 700, i32 0, metadata !589, null}
!589 = metadata !{i32 786443, metadata !1, metadata !587, i32 700, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!590 = metadata !{i32 701, i32 0, metadata !591, null}
!591 = metadata !{i32 786443, metadata !1, metadata !589, i32 700, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!592 = metadata !{i32 702, i32 0, metadata !593, null}
!593 = metadata !{i32 786443, metadata !1, metadata !591, i32 702, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!594 = metadata !{i32 703, i32 0, metadata !595, null}
!595 = metadata !{i32 786443, metadata !1, metadata !593, i32 702, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!596 = metadata !{i32 704, i32 0, metadata !595, null}
!597 = metadata !{i32 705, i32 0, metadata !598, null}
!598 = metadata !{i32 786443, metadata !1, metadata !595, i32 704, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!599 = metadata !{i32 711, i32 0, metadata !598, null}
!600 = metadata !{i32 712, i32 0, metadata !601, null}
!601 = metadata !{i32 786443, metadata !1, metadata !598, i32 711, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!602 = metadata !{i32 713, i32 0, metadata !601, null}
!603 = metadata !{i32 719, i32 0, metadata !604, null}
!604 = metadata !{i32 786443, metadata !1, metadata !601, i32 713, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!605 = metadata !{i32 725, i32 0, metadata !587, null}
!606 = metadata !{i32 731, i32 0, metadata !607, null}
!607 = metadata !{i32 786443, metadata !1, metadata !587, i32 725, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c]
!608 = metadata !{i32 732, i32 0, metadata !607, null}
!609 = metadata !{i32 739, i32 0, metadata !200, null}
!610 = metadata !{i32 745, i32 0, metadata !200, null}
!611 = metadata !{i32 746, i32 0, metadata !200, null}
!612 = metadata !{i32 747, i32 0, metadata !200, null}
!613 = metadata !{i32 749, i32 0, metadata !200, null}

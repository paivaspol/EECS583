; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aliinfo_s = type { i32, i32, i32, float*, i8*, i8*, %struct.seqinfo_s*, i8*, i8*, i8*, i8*, float, float, float, float, float, float }
%struct.seqinfo_s = type { i32, [64 x i8], [64 x i8], [64 x i8], [128 x i8], i32, i32, i32, i32, i32, i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c\00", align 1
@squid_errno = external global i32
@.str1 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str2 = private unnamed_addr constant [24 x i8] c"%*s%-10.10s %5d %s %5d\0A\00", align 1
@.str3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str4 = private unnamed_addr constant [24 x i8] c"%*s                 %s\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @AllocAlignment(i32 %nseq, i32 %alen, i8*** nocapture %ret_aseq, %struct.aliinfo_s* nocapture %ainfo) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %nseq}, i64 0, metadata !76), !dbg !289
  tail call void @llvm.dbg.value(metadata !{i32 %alen}, i64 0, metadata !77), !dbg !289
  tail call void @llvm.dbg.value(metadata !{i8*** %ret_aseq}, i64 0, metadata !78), !dbg !289
  tail call void @llvm.dbg.value(metadata !{%struct.aliinfo_s* %ainfo}, i64 0, metadata !79), !dbg !289
  tail call void @llvm.dbg.value(metadata !{%struct.aliinfo_s* %ainfo}, i64 0, metadata !290) #7, !dbg !292
  %name.i = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 7, !dbg !293
  %cs.i = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 4, !dbg !294
  %flags.i = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 0, !dbg !295
  store i32 0, i32* %flags.i, align 4, !dbg !295, !tbaa !296
  %0 = bitcast i8** %cs.i to i8*, !dbg !299
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 8, i1 false) #7, !dbg !294
  %1 = bitcast i8** %name.i to i8*, !dbg !299
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 56, i32 8, i1 false) #7, !dbg !300
  %conv = sext i32 %nseq to i64, !dbg !301
  %mul = shl nsw i64 %conv, 3, !dbg !301
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 50, i64 %mul) #8, !dbg !301
  %2 = bitcast i8* %call to i8**, !dbg !301
  tail call void @llvm.dbg.value(metadata !{i8** %2}, i64 0, metadata !80), !dbg !301
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !81), !dbg !302
  %cmp44 = icmp sgt i32 %nseq, 0, !dbg !302
  br i1 %cmp44, label %for.body.lr.ph, label %for.end, !dbg !302

for.body.lr.ph:                                   ; preds = %entry
  %add = add nsw i32 %alen, 1, !dbg !304
  %conv2 = sext i32 %add to i64, !dbg !304
  br label %for.body, !dbg !302

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv46 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next47, %for.body ]
  %call4 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 52, i64 %conv2) #8, !dbg !304
  %arrayidx = getelementptr inbounds i8** %2, i64 %indvars.iv46, !dbg !304
  store i8* %call4, i8** %arrayidx, align 8, !dbg !304, !tbaa !305
  %indvars.iv.next47 = add i64 %indvars.iv46, 1, !dbg !302
  %lftr.wideiv48 = trunc i64 %indvars.iv.next47 to i32, !dbg !302
  %exitcond49 = icmp eq i32 %lftr.wideiv48, %nseq, !dbg !302
  br i1 %exitcond49, label %for.end, label %for.body, !dbg !302

for.end:                                          ; preds = %for.body, %entry
  %alen5 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 1, !dbg !306
  store i32 %alen, i32* %alen5, align 4, !dbg !306, !tbaa !296
  %nseq6 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 2, !dbg !307
  store i32 %nseq, i32* %nseq6, align 4, !dbg !307, !tbaa !296
  %mul8 = shl nsw i64 %conv, 2, !dbg !308
  %call9 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 57, i64 %mul8) #8, !dbg !308
  %3 = bitcast i8* %call9 to float*, !dbg !308
  %wgt = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 3, !dbg !308
  store float* %3, float** %wgt, align 8, !dbg !308, !tbaa !305
  tail call void @FSet(float* %3, i32 %nseq, float 1.000000e+00) #8, !dbg !309
  %mul12 = mul i64 %conv, 360, !dbg !310
  %call13 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 60, i64 %mul12) #8, !dbg !310
  %4 = bitcast i8* %call13 to %struct.seqinfo_s*, !dbg !310
  %sqinfo = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 6, !dbg !310
  store %struct.seqinfo_s* %4, %struct.seqinfo_s** %sqinfo, align 8, !dbg !310, !tbaa !305
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !81), !dbg !311
  br i1 %cmp44, label %for.body17, label %for.end23, !dbg !311

for.body17:                                       ; preds = %for.end, %for.body17
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body17 ], [ 0, %for.end ]
  %flags = getelementptr inbounds %struct.seqinfo_s* %4, i64 %indvars.iv, i32 0, !dbg !313
  store i32 0, i32* %flags, align 4, !dbg !313, !tbaa !296
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !311
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !311
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq, !dbg !311
  br i1 %exitcond, label %for.end23, label %for.body17, !dbg !311

for.end23:                                        ; preds = %for.body17, %for.end
  store i8** %2, i8*** %ret_aseq, align 8, !dbg !314, !tbaa !305
  ret void, !dbg !315
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize uwtable
define void @InitAinfo(%struct.aliinfo_s* nocapture %ainfo) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.aliinfo_s* %ainfo}, i64 0, metadata !86), !dbg !316
  %name = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 7, !dbg !317
  %cs = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 4, !dbg !318
  %flags = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 0, !dbg !319
  store i32 0, i32* %flags, align 4, !dbg !319, !tbaa !296
  %0 = bitcast i8** %cs to i8*, !dbg !320
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 8, i1 false), !dbg !318
  %1 = bitcast i8** %name to i8*, !dbg !320
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 56, i32 8, i1 false), !dbg !321
  ret void, !dbg !320
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: optsize
declare void @FSet(float*, i32, float) #2

; Function Attrs: nounwind optsize uwtable
define void @FreeAlignment(i8** %aseqs, %struct.aliinfo_s* nocapture %ainfo) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %aseqs}, i64 0, metadata !91), !dbg !322
  tail call void @llvm.dbg.value(metadata !{%struct.aliinfo_s* %ainfo}, i64 0, metadata !92), !dbg !322
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !93), !dbg !323
  %nseq = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 2, !dbg !323
  %0 = load i32* %nseq, align 4, !dbg !323, !tbaa !296
  %cmp65 = icmp sgt i32 %0, 0, !dbg !323
  br i1 %cmp65, label %for.body.lr.ph, label %for.end, !dbg !323

for.body.lr.ph:                                   ; preds = %entry
  %sqinfo = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 6, !dbg !325
  br label %for.body, !dbg !323

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %1 = load %struct.seqinfo_s** %sqinfo, align 8, !dbg !325, !tbaa !305
  %flags = getelementptr inbounds %struct.seqinfo_s* %1, i64 %indvars.iv, i32 0, !dbg !325
  %2 = load i32* %flags, align 4, !dbg !325, !tbaa !296
  %and = and i32 %2, 512, !dbg !325
  %tobool = icmp eq i32 %and, 0, !dbg !325
  br i1 %tobool, label %if.end, label %if.then, !dbg !325

if.then:                                          ; preds = %for.body
  %ss = getelementptr inbounds %struct.seqinfo_s* %1, i64 %indvars.iv, i32 10, !dbg !325
  %3 = load i8** %ss, align 8, !dbg !325, !tbaa !305
  tail call void @free(i8* %3) #8, !dbg !325
  %.pre = load %struct.seqinfo_s** %sqinfo, align 8, !dbg !327, !tbaa !305
  %flags7.phi.trans.insert = getelementptr inbounds %struct.seqinfo_s* %.pre, i64 %indvars.iv, i32 0
  %.pre67 = load i32* %flags7.phi.trans.insert, align 4, !dbg !327, !tbaa !296
  br label %if.end, !dbg !325

if.end:                                           ; preds = %for.body, %if.then
  %4 = phi i32 [ %2, %for.body ], [ %.pre67, %if.then ]
  %5 = phi %struct.seqinfo_s* [ %1, %for.body ], [ %.pre, %if.then ]
  %and8 = and i32 %4, 1024, !dbg !327
  %tobool9 = icmp eq i32 %and8, 0, !dbg !327
  br i1 %tobool9, label %for.inc, label %if.then10, !dbg !327

if.then10:                                        ; preds = %if.end
  %sa = getelementptr inbounds %struct.seqinfo_s* %5, i64 %indvars.iv, i32 11, !dbg !327
  %6 = load i8** %sa, align 8, !dbg !327, !tbaa !305
  tail call void @free(i8* %6) #8, !dbg !327
  br label %for.inc, !dbg !327

for.inc:                                          ; preds = %if.end, %if.then10
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !323
  %7 = load i32* %nseq, align 4, !dbg !323, !tbaa !296
  %8 = trunc i64 %indvars.iv.next to i32, !dbg !323
  %cmp = icmp slt i32 %8, %7, !dbg !323
  br i1 %cmp, label %for.body, label %for.end, !dbg !323

for.end:                                          ; preds = %for.inc, %entry
  %cs = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 4, !dbg !328
  %9 = load i8** %cs, align 8, !dbg !328, !tbaa !305
  %cmp15 = icmp eq i8* %9, null, !dbg !328
  br i1 %cmp15, label %if.end18, label %if.then16, !dbg !328

if.then16:                                        ; preds = %for.end
  tail call void @free(i8* %9) #8, !dbg !328
  br label %if.end18, !dbg !328

if.end18:                                         ; preds = %for.end, %if.then16
  %rf = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 5, !dbg !329
  %10 = load i8** %rf, align 8, !dbg !329, !tbaa !305
  %cmp19 = icmp eq i8* %10, null, !dbg !329
  br i1 %cmp19, label %if.end22, label %if.then20, !dbg !329

if.then20:                                        ; preds = %if.end18
  tail call void @free(i8* %10) #8, !dbg !329
  br label %if.end22, !dbg !329

if.end22:                                         ; preds = %if.end18, %if.then20
  %name = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 7, !dbg !330
  %11 = load i8** %name, align 8, !dbg !330, !tbaa !305
  %cmp23 = icmp eq i8* %11, null, !dbg !330
  br i1 %cmp23, label %if.end26, label %if.then24, !dbg !330

if.then24:                                        ; preds = %if.end22
  tail call void @free(i8* %11) #8, !dbg !330
  br label %if.end26, !dbg !330

if.end26:                                         ; preds = %if.end22, %if.then24
  %desc = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 8, !dbg !331
  %12 = load i8** %desc, align 8, !dbg !331, !tbaa !305
  %cmp27 = icmp eq i8* %12, null, !dbg !331
  br i1 %cmp27, label %if.end30, label %if.then28, !dbg !331

if.then28:                                        ; preds = %if.end26
  tail call void @free(i8* %12) #8, !dbg !331
  br label %if.end30, !dbg !331

if.end30:                                         ; preds = %if.end26, %if.then28
  %acc = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 9, !dbg !332
  %13 = load i8** %acc, align 8, !dbg !332, !tbaa !305
  %cmp31 = icmp eq i8* %13, null, !dbg !332
  br i1 %cmp31, label %if.end34, label %if.then32, !dbg !332

if.then32:                                        ; preds = %if.end30
  tail call void @free(i8* %13) #8, !dbg !332
  br label %if.end34, !dbg !332

if.end34:                                         ; preds = %if.end30, %if.then32
  %au = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 10, !dbg !333
  %14 = load i8** %au, align 8, !dbg !333, !tbaa !305
  %cmp35 = icmp eq i8* %14, null, !dbg !333
  br i1 %cmp35, label %if.end38, label %if.then36, !dbg !333

if.then36:                                        ; preds = %if.end34
  tail call void @free(i8* %14) #8, !dbg !333
  br label %if.end38, !dbg !333

if.end38:                                         ; preds = %if.end34, %if.then36
  %sqinfo39 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 6, !dbg !334
  %15 = load %struct.seqinfo_s** %sqinfo39, align 8, !dbg !334, !tbaa !305
  %16 = bitcast %struct.seqinfo_s* %15 to i8*, !dbg !334
  tail call void @free(i8* %16) #8, !dbg !334
  %wgt = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 3, !dbg !335
  %17 = load float** %wgt, align 8, !dbg !335, !tbaa !305
  %18 = bitcast float* %17 to i8*, !dbg !335
  tail call void @free(i8* %18) #8, !dbg !335
  %19 = load i32* %nseq, align 4, !dbg !336, !tbaa !296
  tail call void @Free2DArray(i8** %aseqs, i32 %19) #8, !dbg !336
  ret void, !dbg !337
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: optsize
declare void @Free2DArray(i8**, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @SAMizeAlignment(i8** nocapture %aseq, i32 %nseq, i32 %alen) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %aseq}, i64 0, metadata !98), !dbg !338
  tail call void @llvm.dbg.value(metadata !{i32 %nseq}, i64 0, metadata !99), !dbg !338
  tail call void @llvm.dbg.value(metadata !{i32 %alen}, i64 0, metadata !100), !dbg !338
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !101), !dbg !339
  %cmp170 = icmp sgt i32 %alen, 0, !dbg !339
  br i1 %cmp170, label %for.cond1.preheader.lr.ph, label %for.end120, !dbg !339

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp2163 = icmp sgt i32 %nseq, 0, !dbg !341
  br label %for.cond1.preheader, !dbg !339

for.cond1.preheader:                              ; preds = %for.inc118, %for.cond1.preheader.lr.ph
  %indvars.iv176 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next177, %for.inc118 ]
  br i1 %cmp2163, label %for.body3, label %for.inc118, !dbg !341

for.body3:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1.preheader ]
  %sawupper.0166 = phi i32 [ %sawupper.1, %for.inc ], [ 0, %for.cond1.preheader ]
  %sawlower.0165 = phi i32 [ %sawlower.1, %for.inc ], [ 0, %for.cond1.preheader ]
  %arrayidx = getelementptr inbounds i8** %aseq, i64 %indvars.iv, !dbg !344
  %0 = load i8** %arrayidx, align 8, !dbg !344, !tbaa !305
  %arrayidx5 = getelementptr inbounds i8* %0, i64 %indvars.iv176, !dbg !344
  %1 = load i8* %arrayidx5, align 1, !dbg !344, !tbaa !297
  switch i8 %1, label %if.end [
    i8 32, label %for.inc
    i8 46, label %for.inc
    i8 95, label %for.inc
    i8 45, label %for.inc
    i8 126, label %for.inc
  ], !dbg !344

if.end:                                           ; preds = %for.body3
  %idxprom44 = sext i8 %1 to i64, !dbg !346
  %call = tail call i16** @__ctype_b_loc() #9, !dbg !346
  %2 = load i16** %call, align 8, !dbg !346, !tbaa !305
  %arrayidx45 = getelementptr inbounds i16* %2, i64 %idxprom44, !dbg !346
  %3 = load i16* %arrayidx45, align 2, !dbg !346, !tbaa !347
  %conv46 = zext i16 %3 to i32, !dbg !346
  %and = and i32 %conv46, 256, !dbg !346
  %tobool = icmp eq i32 %and, 0, !dbg !346
  br i1 %tobool, label %if.end48, label %for.inc, !dbg !346

if.end48:                                         ; preds = %if.end
  %and58 = and i32 %conv46, 512, !dbg !348
  %tobool59 = icmp eq i32 %and58, 0, !dbg !348
  tail call void @llvm.dbg.value(metadata !349, i64 0, metadata !103), !dbg !348
  %sawlower.0. = select i1 %tobool59, i32 %sawlower.0165, i32 1, !dbg !348
  br label %for.inc, !dbg !348

for.inc:                                          ; preds = %if.end48, %if.end, %for.body3, %for.body3, %for.body3, %for.body3, %for.body3
  %sawlower.1 = phi i32 [ %sawlower.0165, %for.body3 ], [ %sawlower.0165, %for.body3 ], [ %sawlower.0165, %for.body3 ], [ %sawlower.0165, %for.body3 ], [ %sawlower.0165, %for.body3 ], [ %sawlower.0165, %if.end ], [ %sawlower.0., %if.end48 ]
  %sawupper.1 = phi i32 [ %sawupper.0166, %for.body3 ], [ %sawupper.0166, %for.body3 ], [ %sawupper.0166, %for.body3 ], [ %sawupper.0166, %for.body3 ], [ %sawupper.0166, %for.body3 ], [ 1, %if.end ], [ %sawupper.0166, %if.end48 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !341
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !341
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq, !dbg !341
  br i1 %exitcond, label %for.end, label %for.body3, !dbg !341

for.end:                                          ; preds = %for.inc
  tail call void @llvm.dbg.value(metadata !350, i64 0, metadata !106), !dbg !351
  %tobool62 = icmp ne i32 %sawlower.1, 0, !dbg !352
  %tobool63 = icmp eq i32 %sawupper.1, 0, !dbg !352
  %or.cond = and i1 %tobool62, %tobool63, !dbg !352
  tail call void @llvm.dbg.value(metadata !353, i64 0, metadata !106), !dbg !352
  %gapchar.0 = select i1 %or.cond, i8 46, i8 45, !dbg !352
  br i1 %cmp2163, label %for.body69, label %for.inc118, !dbg !354

for.body69:                                       ; preds = %for.end, %for.inc115
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %for.inc115 ], [ 0, %for.end ]
  %arrayidx72 = getelementptr inbounds i8** %aseq, i64 %indvars.iv172, !dbg !356
  %4 = load i8** %arrayidx72, align 8, !dbg !356, !tbaa !305
  %arrayidx73 = getelementptr inbounds i8* %4, i64 %indvars.iv176, !dbg !356
  %5 = load i8* %arrayidx73, align 1, !dbg !356, !tbaa !297
  switch i8 %5, label %for.inc115 [
    i8 32, label %if.then109
    i8 46, label %if.then109
    i8 95, label %if.then109
    i8 45, label %if.then109
    i8 126, label %if.then109
  ], !dbg !356

if.then109:                                       ; preds = %for.body69, %for.body69, %for.body69, %for.body69, %for.body69
  store i8 %gapchar.0, i8* %arrayidx73, align 1, !dbg !356, !tbaa !297
  br label %for.inc115, !dbg !356

for.inc115:                                       ; preds = %for.body69, %if.then109
  %indvars.iv.next173 = add i64 %indvars.iv172, 1, !dbg !354
  %lftr.wideiv174 = trunc i64 %indvars.iv.next173 to i32, !dbg !354
  %exitcond175 = icmp eq i32 %lftr.wideiv174, %nseq, !dbg !354
  br i1 %exitcond175, label %for.inc118, label %for.body69, !dbg !354

for.inc118:                                       ; preds = %for.cond1.preheader, %for.inc115, %for.end
  %indvars.iv.next177 = add i64 %indvars.iv176, 1, !dbg !339
  %lftr.wideiv178 = trunc i64 %indvars.iv.next177 to i32, !dbg !339
  %exitcond179 = icmp eq i32 %lftr.wideiv178, %alen, !dbg !339
  br i1 %exitcond179, label %for.end120, label %for.cond1.preheader, !dbg !339

for.end120:                                       ; preds = %for.inc118, %entry
  ret void, !dbg !357
}

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind optsize uwtable
define void @SAMizeAlignmentByGapFrac(i8** nocapture %aseq, i32 %nseq, i32 %alen, float %maxgap) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %aseq}, i64 0, metadata !111), !dbg !358
  tail call void @llvm.dbg.value(metadata !{i32 %nseq}, i64 0, metadata !112), !dbg !358
  tail call void @llvm.dbg.value(metadata !{i32 %alen}, i64 0, metadata !113), !dbg !358
  tail call void @llvm.dbg.value(metadata !{float %maxgap}, i64 0, metadata !114), !dbg !358
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !115), !dbg !359
  %cmp257 = icmp sgt i32 %alen, 0, !dbg !359
  br i1 %cmp257, label %for.cond1.preheader.lr.ph, label %for.end176, !dbg !359

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp2249 = icmp sgt i32 %nseq, 0, !dbg !360
  %conv41 = sitofp i32 %nseq to float, !dbg !362
  br label %for.cond1.preheader, !dbg !359

for.cond1.preheader:                              ; preds = %for.inc174, %for.cond1.preheader.lr.ph
  %indvars.iv267 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next268, %for.inc174 ]
  br i1 %cmp2249, label %for.body3, label %for.end, !dbg !360

for.body3:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1.preheader ]
  %ngap.0250 = phi i32 [ %ngap.1, %for.inc ], [ 0, %for.cond1.preheader ]
  %arrayidx = getelementptr inbounds i8** %aseq, i64 %indvars.iv, !dbg !363
  %0 = load i8** %arrayidx, align 8, !dbg !363, !tbaa !305
  %arrayidx5 = getelementptr inbounds i8* %0, i64 %indvars.iv267, !dbg !363
  %1 = load i8* %arrayidx5, align 1, !dbg !363, !tbaa !297
  switch i8 %1, label %for.inc [
    i8 32, label %if.then
    i8 46, label %if.then
    i8 95, label %if.then
    i8 45, label %if.then
    i8 126, label %if.then
  ], !dbg !363

if.then:                                          ; preds = %for.body3, %for.body3, %for.body3, %for.body3, %for.body3
  %inc = add nsw i32 %ngap.0250, 1, !dbg !363
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !117), !dbg !363
  br label %for.inc, !dbg !363

for.inc:                                          ; preds = %for.body3, %if.then
  %ngap.1 = phi i32 [ %inc, %if.then ], [ %ngap.0250, %for.body3 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !360
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !360
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq, !dbg !360
  br i1 %exitcond, label %for.end, label %for.body3, !dbg !360

for.end:                                          ; preds = %for.inc, %for.cond1.preheader
  %ngap.0.lcssa = phi i32 [ 0, %for.cond1.preheader ], [ %ngap.1, %for.inc ]
  %conv40 = sitofp i32 %ngap.0.lcssa to float, !dbg !362
  %div = fdiv float %conv40, %conv41, !dbg !362
  %cmp42 = fcmp ogt float %div, %maxgap, !dbg !362
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !116), !dbg !364
  br i1 %cmp42, label %for.cond45.preheader, label %for.cond108.preheader, !dbg !362

for.cond45.preheader:                             ; preds = %for.end
  br i1 %cmp2249, label %for.body48, label %for.inc174, !dbg !364

for.cond108.preheader:                            ; preds = %for.end
  br i1 %cmp2249, label %for.body111, label %for.inc174, !dbg !365

for.body48:                                       ; preds = %for.cond45.preheader, %for.inc104
  %indvars.iv263 = phi i64 [ %indvars.iv.next264, %for.inc104 ], [ 0, %for.cond45.preheader ]
  %arrayidx51 = getelementptr inbounds i8** %aseq, i64 %indvars.iv263, !dbg !366
  %2 = load i8** %arrayidx51, align 8, !dbg !366, !tbaa !305
  %arrayidx52 = getelementptr inbounds i8* %2, i64 %indvars.iv267, !dbg !366
  %3 = load i8* %arrayidx52, align 1, !dbg !366, !tbaa !297
  switch i8 %3, label %if.else [
    i8 32, label %if.then88
    i8 46, label %if.then88
    i8 95, label %if.then88
    i8 45, label %if.then88
    i8 126, label %if.then88
  ], !dbg !366

if.then88:                                        ; preds = %for.body48, %for.body48, %for.body48, %for.body48, %for.body48
  store i8 46, i8* %arrayidx52, align 1, !dbg !366, !tbaa !297
  br label %for.inc104, !dbg !366

if.else:                                          ; preds = %for.body48
  %conv53 = sext i8 %3 to i32, !dbg !366
  %call = tail call i32 @tolower(i32 %conv53) #8, !dbg !367
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !118), !dbg !367
  %conv98 = trunc i32 %call to i8, !dbg !369
  %4 = load i8** %arrayidx51, align 8, !dbg !369, !tbaa !305
  %arrayidx102 = getelementptr inbounds i8* %4, i64 %indvars.iv267, !dbg !369
  store i8 %conv98, i8* %arrayidx102, align 1, !dbg !369, !tbaa !297
  br label %for.inc104

for.inc104:                                       ; preds = %if.then88, %if.else
  %indvars.iv.next264 = add i64 %indvars.iv263, 1, !dbg !364
  %lftr.wideiv265 = trunc i64 %indvars.iv.next264 to i32, !dbg !364
  %exitcond266 = icmp eq i32 %lftr.wideiv265, %nseq, !dbg !364
  br i1 %exitcond266, label %for.inc174, label %for.body48, !dbg !364

for.body111:                                      ; preds = %for.cond108.preheader, %for.inc170
  %indvars.iv259 = phi i64 [ %indvars.iv.next260, %for.inc170 ], [ 0, %for.cond108.preheader ]
  %arrayidx114 = getelementptr inbounds i8** %aseq, i64 %indvars.iv259, !dbg !370
  %5 = load i8** %arrayidx114, align 8, !dbg !370, !tbaa !305
  %arrayidx115 = getelementptr inbounds i8* %5, i64 %indvars.iv267, !dbg !370
  %6 = load i8* %arrayidx115, align 1, !dbg !370, !tbaa !297
  switch i8 %6, label %if.else156 [
    i8 32, label %if.then151
    i8 46, label %if.then151
    i8 95, label %if.then151
    i8 45, label %if.then151
    i8 126, label %if.then151
  ], !dbg !370

if.then151:                                       ; preds = %for.body111, %for.body111, %for.body111, %for.body111, %for.body111
  store i8 45, i8* %arrayidx115, align 1, !dbg !370, !tbaa !297
  br label %for.inc170, !dbg !370

if.else156:                                       ; preds = %for.body111
  %conv116 = sext i8 %6 to i32, !dbg !370
  %call163 = tail call i32 @toupper(i32 %conv116) #8, !dbg !371
  tail call void @llvm.dbg.value(metadata !{i32 %call163}, i64 0, metadata !124), !dbg !371
  %conv164 = trunc i32 %call163 to i8, !dbg !373
  %7 = load i8** %arrayidx114, align 8, !dbg !373, !tbaa !305
  %arrayidx168 = getelementptr inbounds i8* %7, i64 %indvars.iv267, !dbg !373
  store i8 %conv164, i8* %arrayidx168, align 1, !dbg !373, !tbaa !297
  br label %for.inc170

for.inc170:                                       ; preds = %if.then151, %if.else156
  %indvars.iv.next260 = add i64 %indvars.iv259, 1, !dbg !365
  %lftr.wideiv261 = trunc i64 %indvars.iv.next260 to i32, !dbg !365
  %exitcond262 = icmp eq i32 %lftr.wideiv261, %nseq, !dbg !365
  br i1 %exitcond262, label %for.inc174, label %for.body111, !dbg !365

for.inc174:                                       ; preds = %for.cond45.preheader, %for.inc104, %for.cond108.preheader, %for.inc170
  %indvars.iv.next268 = add i64 %indvars.iv267, 1, !dbg !359
  %lftr.wideiv269 = trunc i64 %indvars.iv.next268 to i32, !dbg !359
  %exitcond270 = icmp eq i32 %lftr.wideiv269, %alen, !dbg !359
  br i1 %exitcond270, label %for.end176, label %for.cond1.preheader, !dbg !359

for.end176:                                       ; preds = %for.inc174, %entry
  ret void, !dbg !374
}

; Function Attrs: nounwind optsize
declare i32 @tolower(i32) #3

; Function Attrs: nounwind optsize
declare i32 @toupper(i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @MakeAlignedString(i8* nocapture %aseq, i32 %alen, i8* nocapture %ss, i8** nocapture %ret_s) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %aseq}, i64 0, metadata !132), !dbg !375
  tail call void @llvm.dbg.value(metadata !{i32 %alen}, i64 0, metadata !133), !dbg !375
  tail call void @llvm.dbg.value(metadata !{i8* %ss}, i64 0, metadata !134), !dbg !375
  tail call void @llvm.dbg.value(metadata !{i8** %ret_s}, i64 0, metadata !135), !dbg !375
  %add = add nsw i32 %alen, 1, !dbg !376
  %conv = sext i32 %add to i64, !dbg !376
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 242, i64 %conv) #8, !dbg !376
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !136), !dbg !376
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !138), !dbg !377
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !137), !dbg !377
  %cmp63 = icmp sgt i32 %alen, 0, !dbg !377
  br i1 %cmp63, label %for.body.lr.ph, label %for.end, !dbg !377

for.body.lr.ph:                                   ; preds = %entry
  %0 = add i32 %alen, -1, !dbg !377
  %1 = zext i32 %0 to i64, !dbg !377
  br label %for.body, !dbg !377

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %rpos.065 = phi i32 [ 0, %for.body.lr.ph ], [ %rpos.1, %for.inc ]
  %arrayidx = getelementptr inbounds i8* %aseq, i64 %indvars.iv, !dbg !379
  %2 = load i8* %arrayidx, align 1, !dbg !379, !tbaa !297
  switch i8 %2, label %if.then [
    i8 32, label %if.else
    i8 46, label %if.else
    i8 95, label %if.else
    i8 45, label %if.else
    i8 126, label %if.else
  ], !dbg !379

if.then:                                          ; preds = %for.body
  %idxprom28 = sext i32 %rpos.065 to i64, !dbg !380
  %arrayidx29 = getelementptr inbounds i8* %ss, i64 %idxprom28, !dbg !380
  %3 = load i8* %arrayidx29, align 1, !dbg !380, !tbaa !297
  %arrayidx31 = getelementptr inbounds i8* %call, i64 %indvars.iv, !dbg !380
  store i8 %3, i8* %arrayidx31, align 1, !dbg !380, !tbaa !297
  %inc = add nsw i32 %rpos.065, 1, !dbg !382
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !138), !dbg !382
  br label %for.inc, !dbg !383

if.else:                                          ; preds = %for.body, %for.body, %for.body, %for.body, %for.body
  %arrayidx33 = getelementptr inbounds i8* %call, i64 %indvars.iv, !dbg !384
  store i8 46, i8* %arrayidx33, align 1, !dbg !384, !tbaa !297
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %rpos.1 = phi i32 [ %rpos.065, %if.else ], [ %inc, %if.then ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !377
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !377
  %exitcond = icmp eq i32 %lftr.wideiv, %alen, !dbg !377
  br i1 %exitcond, label %for.cond.for.end_crit_edge, label %for.body, !dbg !377

for.cond.for.end_crit_edge:                       ; preds = %for.inc
  %4 = add i64 %1, 1, !dbg !377
  br label %for.end, !dbg !377

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %idxprom.lcssa = phi i64 [ %4, %for.cond.for.end_crit_edge ], [ 0, %entry ]
  %rpos.0.lcssa = phi i32 [ %rpos.1, %for.cond.for.end_crit_edge ], [ 0, %entry ]
  %arrayidx36 = getelementptr inbounds i8* %call, i64 %idxprom.lcssa, !dbg !385
  store i8 0, i8* %arrayidx36, align 1, !dbg !385, !tbaa !297
  %conv37 = sext i32 %rpos.0.lcssa to i64, !dbg !386
  %call38 = tail call i64 @strlen(i8* %ss) #10, !dbg !386
  %cmp39 = icmp eq i64 %conv37, %call38, !dbg !386
  br i1 %cmp39, label %if.end42, label %if.then41, !dbg !386

if.then41:                                        ; preds = %for.end
  store i32 6, i32* @squid_errno, align 4, !dbg !387, !tbaa !296
  tail call void @free(i8* %call) #8, !dbg !387
  br label %return, !dbg !387

if.end42:                                         ; preds = %for.end
  store i8* %call, i8** %ret_s, align 8, !dbg !389, !tbaa !305
  br label %return, !dbg !390

return:                                           ; preds = %if.end42, %if.then41
  %retval.0 = phi i32 [ 0, %if.then41 ], [ 1, %if.end42 ]
  ret i32 %retval.0, !dbg !390
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define i32 @MakeDealignedString(i8* nocapture %aseq, i32 %alen, i8* nocapture %ss, i8** nocapture %ret_s) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %aseq}, i64 0, metadata !141), !dbg !391
  tail call void @llvm.dbg.value(metadata !{i32 %alen}, i64 0, metadata !142), !dbg !391
  tail call void @llvm.dbg.value(metadata !{i8* %ss}, i64 0, metadata !143), !dbg !391
  tail call void @llvm.dbg.value(metadata !{i8** %ret_s}, i64 0, metadata !144), !dbg !391
  %add = add nsw i32 %alen, 1, !dbg !392
  %conv = sext i32 %add to i64, !dbg !392
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 280, i64 %conv) #8, !dbg !392
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !145), !dbg !392
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !147), !dbg !393
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !146), !dbg !393
  %cmp60 = icmp sgt i32 %alen, 0, !dbg !393
  br i1 %cmp60, label %for.body, label %for.end, !dbg !393

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %rpos.062 = phi i32 [ %rpos.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8* %aseq, i64 %indvars.iv, !dbg !395
  %0 = load i8* %arrayidx, align 1, !dbg !395, !tbaa !297
  switch i8 %0, label %if.then [
    i8 32, label %for.inc
    i8 46, label %for.inc
    i8 95, label %for.inc
    i8 45, label %for.inc
    i8 126, label %for.inc
  ], !dbg !395

if.then:                                          ; preds = %for.body
  %arrayidx29 = getelementptr inbounds i8* %ss, i64 %indvars.iv, !dbg !396
  %1 = load i8* %arrayidx29, align 1, !dbg !396, !tbaa !297
  %idxprom30 = sext i32 %rpos.062 to i64, !dbg !396
  %arrayidx31 = getelementptr inbounds i8* %call, i64 %idxprom30, !dbg !396
  store i8 %1, i8* %arrayidx31, align 1, !dbg !396, !tbaa !297
  %inc = add nsw i32 %rpos.062, 1, !dbg !398
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !147), !dbg !398
  br label %for.inc, !dbg !399

for.inc:                                          ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %if.then
  %rpos.1 = phi i32 [ %rpos.062, %for.body ], [ %inc, %if.then ], [ %rpos.062, %for.body ], [ %rpos.062, %for.body ], [ %rpos.062, %for.body ], [ %rpos.062, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !393
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !393
  %exitcond = icmp eq i32 %lftr.wideiv, %alen, !dbg !393
  br i1 %exitcond, label %for.end, label %for.body, !dbg !393

for.end:                                          ; preds = %for.inc, %entry
  %rpos.0.lcssa = phi i32 [ 0, %entry ], [ %rpos.1, %for.inc ]
  %idxprom33 = sext i32 %rpos.0.lcssa to i64, !dbg !400
  %arrayidx34 = getelementptr inbounds i8* %call, i64 %idxprom33, !dbg !400
  store i8 0, i8* %arrayidx34, align 1, !dbg !400, !tbaa !297
  %conv35 = sext i32 %alen to i64, !dbg !401
  %call36 = tail call i64 @strlen(i8* %ss) #10, !dbg !401
  %cmp37 = icmp eq i64 %conv35, %call36, !dbg !401
  br i1 %cmp37, label %if.end40, label %if.then39, !dbg !401

if.then39:                                        ; preds = %for.end
  store i32 6, i32* @squid_errno, align 4, !dbg !402, !tbaa !296
  tail call void @free(i8* %call) #8, !dbg !402
  br label %return, !dbg !402

if.end40:                                         ; preds = %for.end
  store i8* %call, i8** %ret_s, align 8, !dbg !404, !tbaa !305
  br label %return, !dbg !405

return:                                           ; preds = %if.end40, %if.then39
  %retval.0 = phi i32 [ 0, %if.then39 ], [ 1, %if.end40 ]
  ret i32 %retval.0, !dbg !405
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @DealignedLength(i8* nocapture %aseq) #6 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %aseq}, i64 0, metadata !152), !dbg !406
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !153), !dbg !407
  br label %for.cond, !dbg !407

for.cond:                                         ; preds = %for.inc, %entry
  %aseq.addr.0 = phi i8* [ %aseq, %entry ], [ %incdec.ptr, %for.inc ]
  %rlen.0 = phi i32 [ 0, %entry ], [ %rlen.1, %for.inc ]
  %0 = load i8* %aseq.addr.0, align 1, !dbg !407, !tbaa !297
  switch i8 %0, label %if.then [
    i8 0, label %for.end
    i8 32, label %for.inc
    i8 46, label %for.inc
    i8 95, label %for.inc
    i8 45, label %for.inc
    i8 126, label %for.inc
  ], !dbg !407

if.then:                                          ; preds = %for.cond
  %inc = add nsw i32 %rlen.0, 1, !dbg !409
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !153), !dbg !409
  br label %for.inc, !dbg !409

for.inc:                                          ; preds = %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %if.then
  %rlen.1 = phi i32 [ %inc, %if.then ], [ %rlen.0, %for.cond ], [ %rlen.0, %for.cond ], [ %rlen.0, %for.cond ], [ %rlen.0, %for.cond ], [ %rlen.0, %for.cond ]
  %incdec.ptr = getelementptr inbounds i8* %aseq.addr.0, i64 1, !dbg !407
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !152), !dbg !407
  br label %for.cond, !dbg !407

for.end:                                          ; preds = %for.cond
  ret i32 %rlen.0, !dbg !410
}

; Function Attrs: nounwind optsize uwtable
define i32 @WritePairwiseAlignment(%struct._IO_FILE* nocapture %ofp, i8* nocapture %aseq1, i8* nocapture %name1, i32 %spos1, i8* nocapture %aseq2, i8* nocapture %name2, i32 %spos2, i32** nocapture %pam, i32 %indent) #0 {
entry:
  %sname1 = alloca [11 x i8], align 1
  %sname2 = alloca [11 x i8], align 1
  %buf1 = alloca [61 x i8], align 16
  %bufmid = alloca [61 x i8], align 16
  %buf2 = alloca [61 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ofp}, i64 0, metadata !215), !dbg !411
  call void @llvm.dbg.value(metadata !{i8* %aseq1}, i64 0, metadata !216), !dbg !412
  call void @llvm.dbg.value(metadata !{i8* %name1}, i64 0, metadata !217), !dbg !412
  call void @llvm.dbg.value(metadata !{i32 %spos1}, i64 0, metadata !218), !dbg !412
  call void @llvm.dbg.value(metadata !{i8* %aseq2}, i64 0, metadata !219), !dbg !413
  call void @llvm.dbg.value(metadata !{i8* %name2}, i64 0, metadata !220), !dbg !413
  call void @llvm.dbg.value(metadata !{i32 %spos2}, i64 0, metadata !221), !dbg !413
  call void @llvm.dbg.value(metadata !{i32** %pam}, i64 0, metadata !222), !dbg !414
  call void @llvm.dbg.value(metadata !{i32 %indent}, i64 0, metadata !223), !dbg !414
  call void @llvm.dbg.declare(metadata !{[11 x i8]* %sname1}, metadata !224), !dbg !415
  call void @llvm.dbg.declare(metadata !{[11 x i8]* %sname2}, metadata !228), !dbg !416
  %0 = getelementptr inbounds [61 x i8]* %buf1, i64 0, i64 0, !dbg !417
  call void @llvm.lifetime.start(i64 61, i8* %0) #7, !dbg !417
  call void @llvm.dbg.declare(metadata !{[61 x i8]* %buf1}, metadata !230), !dbg !417
  %1 = getelementptr inbounds [61 x i8]* %bufmid, i64 0, i64 0, !dbg !418
  call void @llvm.lifetime.start(i64 61, i8* %1) #7, !dbg !418
  call void @llvm.dbg.declare(metadata !{[61 x i8]* %bufmid}, metadata !234), !dbg !418
  %2 = getelementptr inbounds [61 x i8]* %buf2, i64 0, i64 0, !dbg !419
  call void @llvm.lifetime.start(i64 61, i8* %2) #7, !dbg !419
  call void @llvm.dbg.declare(metadata !{[61 x i8]* %buf2}, metadata !235), !dbg !419
  %arraydecay = getelementptr inbounds [11 x i8]* %sname1, i64 0, i64 0, !dbg !420
  %call = call i8* @strncpy(i8* %arraydecay, i8* %name1, i64 10) #8, !dbg !420
  %arrayidx = getelementptr inbounds [11 x i8]* %sname1, i64 0, i64 10, !dbg !421
  store i8 0, i8* %arrayidx, align 1, !dbg !421, !tbaa !297
  %call2 = call i8* @strtok(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0)) #8, !dbg !422
  %arraydecay3 = getelementptr inbounds [11 x i8]* %sname2, i64 0, i64 0, !dbg !423
  %call4 = call i8* @strncpy(i8* %arraydecay3, i8* %name2, i64 10) #8, !dbg !423
  %arrayidx5 = getelementptr inbounds [11 x i8]* %sname2, i64 0, i64 10, !dbg !424
  store i8 0, i8* %arrayidx5, align 1, !dbg !424, !tbaa !297
  %call7 = call i8* @strtok(i8* %arraydecay3, i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0)) #8, !dbg !425
  call void @llvm.dbg.value(metadata !{i8* %aseq1}, i64 0, metadata !236), !dbg !426
  call void @llvm.dbg.value(metadata !{i8* %aseq2}, i64 0, metadata !237), !dbg !427
  call void @llvm.dbg.value(metadata !{i32 %spos1}, i64 0, metadata !240), !dbg !428
  call void @llvm.dbg.value(metadata !{i32 %spos2}, i64 0, metadata !241), !dbg !429
  call void @llvm.dbg.value(metadata !349, i64 0, metadata !229), !dbg !430
  %arrayidx10 = getelementptr inbounds [61 x i8]* %buf1, i64 0, i64 60, !dbg !431
  %arrayidx13 = getelementptr inbounds [61 x i8]* %buf2, i64 0, i64 60, !dbg !433
  br label %while.body, !dbg !434

while.body:                                       ; preds = %entry, %for.end213
  %rpos2.0303 = phi i32 [ %spos2, %entry ], [ %add222, %for.end213 ]
  %rpos1.0302 = phi i32 [ %spos1, %entry ], [ %add, %for.end213 ]
  %s1.0301 = phi i8* [ %aseq1, %entry ], [ %add.ptr, %for.end213 ]
  %s2.0298 = phi i8* [ %aseq2, %entry ], [ %add.ptr32, %for.end213 ]
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !229), !dbg !435
  %call9 = call i8* @strncpy(i8* %0, i8* %s1.0301, i64 60) #8, !dbg !431
  store i8 0, i8* %arrayidx10, align 4, !dbg !431, !tbaa !297
  %call12 = call i8* @strncpy(i8* %2, i8* %s2.0298, i64 60) #8, !dbg !433
  store i8 0, i8* %arrayidx13, align 4, !dbg !433, !tbaa !297
  %call15 = call i64 @strlen(i8* %0) #10, !dbg !436
  %conv = trunc i64 %call15 to i32, !dbg !436
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !238), !dbg !436
  %call17 = call i64 @strlen(i8* %2) #10, !dbg !437
  %conv18 = trunc i64 %call17 to i32, !dbg !437
  call void @llvm.dbg.value(metadata !{i32 %conv18}, i64 0, metadata !239), !dbg !437
  %cmp = icmp eq i32 %conv, 60, !dbg !438
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !438

land.lhs.true:                                    ; preds = %while.body
  %arrayidx20 = getelementptr inbounds i8* %s1.0301, i64 60, !dbg !438
  %3 = load i8* %arrayidx20, align 1, !dbg !438, !tbaa !297
  %cmp22 = icmp eq i8 %3, 0, !dbg !438
  br i1 %cmp22, label %lor.lhs.false, label %if.then, !dbg !438

lor.lhs.false:                                    ; preds = %land.lhs.true, %while.body
  %cmp24 = icmp eq i32 %conv18, 60, !dbg !438
  br i1 %cmp24, label %land.lhs.true26, label %if.end, !dbg !438

land.lhs.true26:                                  ; preds = %lor.lhs.false
  %arrayidx27 = getelementptr inbounds i8* %s2.0298, i64 60, !dbg !438
  %4 = load i8* %arrayidx27, align 1, !dbg !438, !tbaa !297
  %cmp29 = icmp eq i8 %4, 0, !dbg !438
  br i1 %cmp29, label %if.end, label %if.then, !dbg !438

if.then:                                          ; preds = %land.lhs.true, %land.lhs.true26
  call void @llvm.dbg.value(metadata !349, i64 0, metadata !229), !dbg !439
  br label %if.end, !dbg !439

if.end:                                           ; preds = %land.lhs.true26, %if.then, %lor.lhs.false
  %still_going.1 = phi i32 [ 1, %if.then ], [ 0, %land.lhs.true26 ], [ 0, %lor.lhs.false ]
  %sext = shl i64 %call15, 32, !dbg !440
  %idx.ext = ashr exact i64 %sext, 32, !dbg !440
  %add.ptr = getelementptr inbounds i8* %s1.0301, i64 %idx.ext, !dbg !440
  call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !236), !dbg !440
  %sext284 = shl i64 %call17, 32, !dbg !441
  %idx.ext31 = ashr exact i64 %sext284, 32, !dbg !441
  %add.ptr32 = getelementptr inbounds i8* %s2.0298, i64 %idx.ext31, !dbg !441
  call void @llvm.dbg.value(metadata !{i8* %add.ptr32}, i64 0, metadata !237), !dbg !441
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !244), !dbg !442
  %cmp33285 = icmp sgt i32 %conv, 0, !dbg !442
  %cmp35286 = icmp sgt i32 %conv18, 0, !dbg !442
  %cmp35.287 = and i1 %cmp33285, %cmp35286, !dbg !442
  br i1 %cmp35.287, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %5 = sub i32 0, %conv18
  %6 = sub i32 0, %conv
  %7 = icmp ugt i32 %5, %6
  %umax = select i1 %7, i32 %5, i32 %6
  %8 = xor i32 %umax, -1
  %9 = zext i32 %8 to i64
  %10 = sub i32 0, %umax
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx37 = getelementptr inbounds [61 x i8]* %buf1, i64 0, i64 %indvars.iv, !dbg !444
  %11 = load i8* %arrayidx37, align 1, !dbg !444, !tbaa !297
  %conv38 = sext i8 %11 to i64, !dbg !444
  switch i8 %11, label %land.lhs.true65 [
    i8 32, label %if.else130
    i8 46, label %if.else130
    i8 95, label %if.else130
    i8 45, label %if.else130
    i8 126, label %if.else130
  ], !dbg !444

land.lhs.true65:                                  ; preds = %for.body
  %arrayidx67 = getelementptr inbounds [61 x i8]* %buf2, i64 0, i64 %indvars.iv, !dbg !444
  %12 = load i8* %arrayidx67, align 1, !dbg !444, !tbaa !297
  %conv68 = sext i8 %12 to i64, !dbg !444
  switch i8 %12, label %if.then95 [
    i8 32, label %if.else130
    i8 46, label %if.else130
    i8 95, label %if.else130
    i8 45, label %if.else130
    i8 126, label %if.else130
  ], !dbg !444

if.then95:                                        ; preds = %land.lhs.true65
  %cmp102 = icmp eq i8 %11, %12, !dbg !446
  br i1 %cmp102, label %if.then104, label %if.else, !dbg !446

if.then104:                                       ; preds = %if.then95
  %arrayidx108 = getelementptr inbounds [61 x i8]* %bufmid, i64 0, i64 %indvars.iv, !dbg !448
  store i8 %11, i8* %arrayidx108, align 1, !dbg !448, !tbaa !297
  br label %for.inc, !dbg !448

if.else:                                          ; preds = %if.then95
  %sub = add i64 %conv68, -65, !dbg !449
  %sub116 = add i64 %conv38, -65, !dbg !449
  %arrayidx118 = getelementptr inbounds i32** %pam, i64 %sub116, !dbg !449
  %13 = load i32** %arrayidx118, align 8, !dbg !449, !tbaa !305
  %arrayidx119 = getelementptr inbounds i32* %13, i64 %sub, !dbg !449
  %14 = load i32* %arrayidx119, align 4, !dbg !449, !tbaa !296
  %cmp120 = icmp sgt i32 %14, 0, !dbg !449
  %arrayidx124 = getelementptr inbounds [61 x i8]* %bufmid, i64 0, i64 %indvars.iv, !dbg !450
  br i1 %cmp120, label %if.then122, label %if.else125, !dbg !449

if.then122:                                       ; preds = %if.else
  store i8 43, i8* %arrayidx124, align 1, !dbg !450, !tbaa !297
  br label %for.inc, !dbg !450

if.else125:                                       ; preds = %if.else
  store i8 32, i8* %arrayidx124, align 1, !dbg !451, !tbaa !297
  br label %for.inc

if.else130:                                       ; preds = %land.lhs.true65, %land.lhs.true65, %land.lhs.true65, %land.lhs.true65, %land.lhs.true65, %for.body, %for.body, %for.body, %for.body, %for.body
  %arrayidx132 = getelementptr inbounds [61 x i8]* %bufmid, i64 0, i64 %indvars.iv, !dbg !452
  store i8 32, i8* %arrayidx132, align 1, !dbg !452, !tbaa !297
  br label %for.inc

for.inc:                                          ; preds = %if.else130, %if.then122, %if.else125, %if.then104
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %10
  br i1 %exitcond, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.inc
  %15 = add i64 %9, 1
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end
  %idxprom.lcssa = phi i64 [ %15, %for.cond.for.end_crit_edge ], [ 0, %if.end ]
  %arrayidx135 = getelementptr inbounds [61 x i8]* %bufmid, i64 0, i64 %idxprom.lcssa, !dbg !453
  store i8 0, i8* %arrayidx135, align 1, !dbg !453, !tbaa !297
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !242), !dbg !454
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !244), !dbg !455
  br i1 %cmp33285, label %for.body139, label %for.cond175.loopexit, !dbg !455

for.body139:                                      ; preds = %for.end, %for.inc172
  %indvars.iv305 = phi i64 [ %indvars.iv.next306, %for.inc172 ], [ 0, %for.end ]
  %rawcount1.0291 = phi i32 [ %rawcount1.1, %for.inc172 ], [ 0, %for.end ]
  %arrayidx141 = getelementptr inbounds [61 x i8]* %buf1, i64 0, i64 %indvars.iv305, !dbg !457
  %16 = load i8* %arrayidx141, align 1, !dbg !457, !tbaa !297
  switch i8 %16, label %if.then169 [
    i8 32, label %for.inc172
    i8 46, label %for.inc172
    i8 95, label %for.inc172
    i8 45, label %for.inc172
    i8 126, label %for.inc172
  ], !dbg !457

if.then169:                                       ; preds = %for.body139
  %inc170 = add nsw i32 %rawcount1.0291, 1, !dbg !457
  call void @llvm.dbg.value(metadata !{i32 %inc170}, i64 0, metadata !242), !dbg !457
  br label %for.inc172, !dbg !457

for.inc172:                                       ; preds = %for.body139, %for.body139, %for.body139, %for.body139, %for.body139, %if.then169
  %rawcount1.1 = phi i32 [ %rawcount1.0291, %for.body139 ], [ %inc170, %if.then169 ], [ %rawcount1.0291, %for.body139 ], [ %rawcount1.0291, %for.body139 ], [ %rawcount1.0291, %for.body139 ], [ %rawcount1.0291, %for.body139 ]
  %indvars.iv.next306 = add i64 %indvars.iv305, 1, !dbg !455
  %lftr.wideiv307 = trunc i64 %indvars.iv.next306 to i32, !dbg !455
  %exitcond308 = icmp eq i32 %lftr.wideiv307, %conv, !dbg !455
  br i1 %exitcond308, label %for.cond175.loopexit, label %for.body139, !dbg !455

for.cond175.loopexit:                             ; preds = %for.inc172, %for.end
  %rawcount1.0.lcssa = phi i32 [ 0, %for.end ], [ %rawcount1.1, %for.inc172 ]
  br i1 %cmp35286, label %for.body178, label %for.end213, !dbg !458

for.body178:                                      ; preds = %for.cond175.loopexit, %for.inc211
  %indvars.iv309 = phi i64 [ %indvars.iv.next310, %for.inc211 ], [ 0, %for.cond175.loopexit ]
  %rawcount2.0295 = phi i32 [ %rawcount2.1, %for.inc211 ], [ 0, %for.cond175.loopexit ]
  %arrayidx180 = getelementptr inbounds [61 x i8]* %buf2, i64 0, i64 %indvars.iv309, !dbg !460
  %17 = load i8* %arrayidx180, align 1, !dbg !460, !tbaa !297
  switch i8 %17, label %if.then208 [
    i8 32, label %for.inc211
    i8 46, label %for.inc211
    i8 95, label %for.inc211
    i8 45, label %for.inc211
    i8 126, label %for.inc211
  ], !dbg !460

if.then208:                                       ; preds = %for.body178
  %inc209 = add nsw i32 %rawcount2.0295, 1, !dbg !460
  call void @llvm.dbg.value(metadata !{i32 %inc209}, i64 0, metadata !243), !dbg !460
  br label %for.inc211, !dbg !460

for.inc211:                                       ; preds = %for.body178, %for.body178, %for.body178, %for.body178, %for.body178, %if.then208
  %rawcount2.1 = phi i32 [ %rawcount2.0295, %for.body178 ], [ %inc209, %if.then208 ], [ %rawcount2.0295, %for.body178 ], [ %rawcount2.0295, %for.body178 ], [ %rawcount2.0295, %for.body178 ], [ %rawcount2.0295, %for.body178 ]
  %indvars.iv.next310 = add i64 %indvars.iv309, 1, !dbg !458
  %lftr.wideiv311 = trunc i64 %indvars.iv.next310 to i32, !dbg !458
  %exitcond312 = icmp eq i32 %lftr.wideiv311, %conv18, !dbg !458
  br i1 %exitcond312, label %for.end213, label %for.body178, !dbg !458

for.end213:                                       ; preds = %for.inc211, %for.cond175.loopexit
  %rawcount2.0.lcssa = phi i32 [ 0, %for.cond175.loopexit ], [ %rawcount2.1, %for.inc211 ]
  %add = add nsw i32 %rawcount1.0.lcssa, %rpos1.0302, !dbg !461
  %sub216 = add nsw i32 %add, -1, !dbg !461
  %call217 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ofp, i8* getelementptr inbounds ([24 x i8]* @.str2, i64 0, i64 0), i32 %indent, i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), i8* %arraydecay, i32 %rpos1.0302, i8* %0, i32 %sub216) #8, !dbg !461
  %call219 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ofp, i8* getelementptr inbounds ([24 x i8]* @.str4, i64 0, i64 0), i32 %indent, i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), i8* %1) #8, !dbg !462
  %add222 = add nsw i32 %rawcount2.0.lcssa, %rpos2.0303, !dbg !463
  %sub223 = add nsw i32 %add222, -1, !dbg !463
  %call224 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ofp, i8* getelementptr inbounds ([24 x i8]* @.str2, i64 0, i64 0), i32 %indent, i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), i8* %arraydecay3, i32 %rpos2.0303, i8* %2, i32 %sub223) #8, !dbg !463
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %ofp), !dbg !464
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !240), !dbg !465
  call void @llvm.dbg.value(metadata !{i32 %add222}, i64 0, metadata !241), !dbg !466
  %tobool = icmp eq i32 %still_going.1, 0, !dbg !434
  br i1 %tobool, label %while.end, label %while.body, !dbg !434

while.end:                                        ; preds = %for.end213
  call void @llvm.lifetime.end(i64 61, i8* %2) #7, !dbg !467
  call void @llvm.lifetime.end(i64 61, i8* %1) #7, !dbg !467
  call void @llvm.lifetime.end(i64 61, i8* %0) #7, !dbg !467
  ret i32 1, !dbg !468
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #3

; Function Attrs: nounwind optsize
declare i8* @strtok(i8*, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind optsize uwtable
define i32 @MingapAlignment(i8** nocapture %aseqs, %struct.aliinfo_s* nocapture %ainfo) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %aseqs}, i64 0, metadata !249), !dbg !469
  tail call void @llvm.dbg.value(metadata !{%struct.aliinfo_s* %ainfo}, i64 0, metadata !250), !dbg !469
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !251), !dbg !470
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !252), !dbg !470
  %0 = load i8** %aseqs, align 8, !dbg !470, !tbaa !305
  %1 = load i8* %0, align 1, !dbg !470, !tbaa !297
  %cmp182 = icmp eq i8 %1, 0, !dbg !470
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !253), !dbg !472
  %nseq95.pre = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 2, !dbg !475
  br i1 %cmp182, label %for.cond94.preheader, label %for.cond3.preheader.lr.ph, !dbg !470

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %cs = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 4, !dbg !477
  %rf = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 5, !dbg !479
  br label %for.cond3.preheader, !dbg !470

for.cond3.preheader:                              ; preds = %for.inc91, %for.cond3.preheader.lr.ph
  %2 = phi i8* [ %0, %for.cond3.preheader.lr.ph ], [ %17, %for.inc91 ]
  %indvars.iv192 = phi i64 [ 0, %for.cond3.preheader.lr.ph ], [ %indvars.iv.next193, %for.inc91 ]
  %mpos.0184 = phi i32 [ 0, %for.cond3.preheader.lr.ph ], [ %mpos.1, %for.inc91 ]
  %3 = load i32* %nseq95.pre, align 4, !dbg !472, !tbaa !296
  %cmp4177 = icmp sgt i32 %3, 0, !dbg !472
  br i1 %cmp4177, label %for.body6, label %for.end, !dbg !472

for.cond94.preheader:                             ; preds = %entry, %for.inc91
  %mpos.0.lcssa = phi i32 [ %mpos.1, %for.inc91 ], [ 0, %entry ]
  %4 = load i32* %nseq95.pre, align 4, !dbg !475, !tbaa !296
  %cmp96175 = icmp sgt i32 %4, 0, !dbg !475
  br i1 %cmp96175, label %for.body98.lr.ph, label %for.end105, !dbg !475

for.body98.lr.ph:                                 ; preds = %for.cond94.preheader
  %idxprom99 = sext i32 %mpos.0.lcssa to i64, !dbg !480
  br label %for.body98, !dbg !475

for.body6:                                        ; preds = %for.inc, %for.cond3.preheader
  %indvars.iv188 = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next189, %for.inc ]
  %idx.0178 = phi i32 [ 0, %for.cond3.preheader ], [ %inc, %for.inc ]
  %arrayidx9 = getelementptr inbounds i8** %aseqs, i64 %indvars.iv188, !dbg !481
  %5 = load i8** %arrayidx9, align 8, !dbg !481, !tbaa !305
  %arrayidx10 = getelementptr inbounds i8* %5, i64 %indvars.iv192, !dbg !481
  %6 = load i8* %arrayidx10, align 1, !dbg !481, !tbaa !297
  switch i8 %6, label %for.end [
    i8 32, label %for.inc
    i8 46, label %for.inc
    i8 95, label %for.inc
    i8 45, label %for.inc
    i8 126, label %for.inc
  ], !dbg !481

for.inc:                                          ; preds = %for.body6, %for.body6, %for.body6, %for.body6, %for.body6
  %indvars.iv.next189 = add i64 %indvars.iv188, 1, !dbg !472
  %inc = add nsw i32 %idx.0178, 1, !dbg !472
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !253), !dbg !472
  %7 = trunc i64 %indvars.iv.next189 to i32, !dbg !472
  %cmp4 = icmp slt i32 %7, %3, !dbg !472
  br i1 %cmp4, label %for.body6, label %for.end, !dbg !472

for.end:                                          ; preds = %for.inc, %for.body6, %for.cond3.preheader
  %idx.0.lcssa = phi i32 [ 0, %for.cond3.preheader ], [ %idx.0178, %for.body6 ], [ %inc, %for.inc ]
  %cmp46 = icmp eq i32 %idx.0.lcssa, %3, !dbg !482
  br i1 %cmp46, label %for.inc91, label %if.end49, !dbg !482

if.end49:                                         ; preds = %for.end
  %8 = trunc i64 %indvars.iv192 to i32, !dbg !483
  %cmp50 = icmp eq i32 %mpos.0184, %8, !dbg !483
  br i1 %cmp50, label %if.end89, label %for.cond53.preheader, !dbg !483

for.cond53.preheader:                             ; preds = %if.end49
  br i1 %cmp4177, label %for.body57.lr.ph, label %for.end68, !dbg !484

for.body57.lr.ph:                                 ; preds = %for.cond53.preheader
  %idxprom62 = sext i32 %mpos.0184 to i64, !dbg !486
  br label %for.body57, !dbg !484

for.body57:                                       ; preds = %for.body57, %for.body57.lr.ph
  %indvars.iv190 = phi i64 [ 0, %for.body57.lr.ph ], [ %indvars.iv.next191, %for.body57 ]
  %arrayidx60 = getelementptr inbounds i8** %aseqs, i64 %indvars.iv190, !dbg !486
  %9 = load i8** %arrayidx60, align 8, !dbg !486, !tbaa !305
  %arrayidx61 = getelementptr inbounds i8* %9, i64 %indvars.iv192, !dbg !486
  %10 = load i8* %arrayidx61, align 1, !dbg !486, !tbaa !297
  %arrayidx65 = getelementptr inbounds i8* %9, i64 %idxprom62, !dbg !486
  store i8 %10, i8* %arrayidx65, align 1, !dbg !486, !tbaa !297
  %indvars.iv.next191 = add i64 %indvars.iv190, 1, !dbg !484
  %11 = load i32* %nseq95.pre, align 4, !dbg !484, !tbaa !296
  %12 = trunc i64 %indvars.iv.next191 to i32, !dbg !484
  %cmp55 = icmp slt i32 %12, %11, !dbg !484
  br i1 %cmp55, label %for.body57, label %for.end68, !dbg !484

for.end68:                                        ; preds = %for.body57, %for.cond53.preheader
  %13 = load i8** %cs, align 8, !dbg !477, !tbaa !305
  %cmp69 = icmp eq i8* %13, null, !dbg !477
  br i1 %cmp69, label %if.end78, label %if.then71, !dbg !477

if.then71:                                        ; preds = %for.end68
  %arrayidx74 = getelementptr inbounds i8* %13, i64 %indvars.iv192, !dbg !477
  %14 = load i8* %arrayidx74, align 1, !dbg !477, !tbaa !297
  %idxprom75 = sext i32 %mpos.0184 to i64, !dbg !477
  %arrayidx77 = getelementptr inbounds i8* %13, i64 %idxprom75, !dbg !477
  store i8 %14, i8* %arrayidx77, align 1, !dbg !477, !tbaa !297
  br label %if.end78, !dbg !477

if.end78:                                         ; preds = %for.end68, %if.then71
  %15 = load i8** %rf, align 8, !dbg !479, !tbaa !305
  %cmp79 = icmp eq i8* %15, null, !dbg !479
  br i1 %cmp79, label %if.end89, label %if.then81, !dbg !479

if.then81:                                        ; preds = %if.end78
  %arrayidx84 = getelementptr inbounds i8* %15, i64 %indvars.iv192, !dbg !479
  %16 = load i8* %arrayidx84, align 1, !dbg !479, !tbaa !297
  %idxprom85 = sext i32 %mpos.0184 to i64, !dbg !479
  %arrayidx87 = getelementptr inbounds i8* %15, i64 %idxprom85, !dbg !479
  store i8 %16, i8* %arrayidx87, align 1, !dbg !479, !tbaa !297
  br label %if.end89, !dbg !479

if.end89:                                         ; preds = %if.end78, %if.end49, %if.then81
  %inc90 = add nsw i32 %mpos.0184, 1, !dbg !487
  tail call void @llvm.dbg.value(metadata !{i32 %inc90}, i64 0, metadata !252), !dbg !487
  %.pre = load i8** %aseqs, align 8, !dbg !470, !tbaa !305
  br label %for.inc91, !dbg !488

for.inc91:                                        ; preds = %for.end, %if.end89
  %17 = phi i8* [ %2, %for.end ], [ %.pre, %if.end89 ], !dbg !470
  %mpos.1 = phi i32 [ %mpos.0184, %for.end ], [ %inc90, %if.end89 ]
  %indvars.iv.next193 = add i64 %indvars.iv192, 1, !dbg !470
  %arrayidx1 = getelementptr inbounds i8* %17, i64 %indvars.iv.next193, !dbg !470
  %18 = load i8* %arrayidx1, align 1, !dbg !470, !tbaa !297
  %cmp = icmp eq i8 %18, 0, !dbg !470
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !253), !dbg !472
  br i1 %cmp, label %for.cond94.preheader, label %for.cond3.preheader, !dbg !470

for.body98:                                       ; preds = %for.body98, %for.body98.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body98.lr.ph ], [ %indvars.iv.next, %for.body98 ]
  %arrayidx101 = getelementptr inbounds i8** %aseqs, i64 %indvars.iv, !dbg !480
  %19 = load i8** %arrayidx101, align 8, !dbg !480, !tbaa !305
  %arrayidx102 = getelementptr inbounds i8* %19, i64 %idxprom99, !dbg !480
  store i8 0, i8* %arrayidx102, align 1, !dbg !480, !tbaa !297
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !475
  %20 = load i32* %nseq95.pre, align 4, !dbg !475, !tbaa !296
  %21 = trunc i64 %indvars.iv.next to i32, !dbg !475
  %cmp96 = icmp slt i32 %21, %20, !dbg !475
  br i1 %cmp96, label %for.body98, label %for.end105, !dbg !475

for.end105:                                       ; preds = %for.body98, %for.cond94.preheader
  %alen = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 1, !dbg !489
  store i32 %mpos.0.lcssa, i32* %alen, align 4, !dbg !489, !tbaa !296
  %cs106 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 4, !dbg !490
  %22 = load i8** %cs106, align 8, !dbg !490, !tbaa !305
  %cmp107 = icmp eq i8* %22, null, !dbg !490
  br i1 %cmp107, label %if.end113, label %if.then109, !dbg !490

if.then109:                                       ; preds = %for.end105
  %idxprom110 = sext i32 %mpos.0.lcssa to i64, !dbg !490
  %arrayidx112 = getelementptr inbounds i8* %22, i64 %idxprom110, !dbg !490
  store i8 0, i8* %arrayidx112, align 1, !dbg !490, !tbaa !297
  br label %if.end113, !dbg !490

if.end113:                                        ; preds = %for.end105, %if.then109
  %rf114 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 5, !dbg !491
  %23 = load i8** %rf114, align 8, !dbg !491, !tbaa !305
  %cmp115 = icmp eq i8* %23, null, !dbg !491
  br i1 %cmp115, label %if.end121, label %if.then117, !dbg !491

if.then117:                                       ; preds = %if.end113
  %idxprom118 = sext i32 %mpos.0.lcssa to i64, !dbg !491
  %arrayidx120 = getelementptr inbounds i8* %23, i64 %idxprom118, !dbg !491
  store i8 0, i8* %arrayidx120, align 1, !dbg !491, !tbaa !297
  br label %if.end121, !dbg !491

if.end121:                                        ; preds = %if.end113, %if.then117
  ret i32 1, !dbg !492
}

; Function Attrs: nounwind optsize uwtable
define i32 @RandomAlignment(i8** nocapture %rseqs, %struct.seqinfo_s* %sqinfo, i32 %nseq, float %pop, float %pex, i8*** nocapture %ret_aseqs, %struct.aliinfo_s* nocapture %ainfo) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %rseqs}, i64 0, metadata !260), !dbg !493
  tail call void @llvm.dbg.value(metadata !{%struct.seqinfo_s* %sqinfo}, i64 0, metadata !261), !dbg !493
  tail call void @llvm.dbg.value(metadata !{i32 %nseq}, i64 0, metadata !262), !dbg !493
  tail call void @llvm.dbg.value(metadata !{float %pop}, i64 0, metadata !263), !dbg !493
  tail call void @llvm.dbg.value(metadata !{float %pex}, i64 0, metadata !264), !dbg !493
  tail call void @llvm.dbg.value(metadata !{i8*** %ret_aseqs}, i64 0, metadata !265), !dbg !494
  tail call void @llvm.dbg.value(metadata !{%struct.aliinfo_s* %ainfo}, i64 0, metadata !266), !dbg !494
  %conv = sext i32 %nseq to i64, !dbg !495
  %mul = shl nsw i64 %conv, 2, !dbg !495
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 530, i64 %mul) #8, !dbg !495
  %0 = bitcast i8* %call to i32*, !dbg !495
  tail call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !269), !dbg !495
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !270), !dbg !496
  tail call void @llvm.dbg.value(metadata !497, i64 0, metadata !278), !dbg !498
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !275), !dbg !499
  %cmp393 = icmp sgt i32 %nseq, 0, !dbg !499
  br i1 %cmp393, label %for.body, label %for.end, !dbg !499

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv441 = phi i64 [ %indvars.iv.next442, %for.body ], [ 0, %entry ]
  %minlen.0396 = phi i32 [ %conv3.minlen.0, %for.body ], [ 9999999, %entry ]
  %M.0394 = phi i32 [ %add, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8** %rseqs, i64 %indvars.iv441, !dbg !501
  %1 = load i8** %arrayidx, align 8, !dbg !501, !tbaa !305
  %call2 = tail call i64 @strlen(i8* %1) #10, !dbg !501
  %conv3 = trunc i64 %call2 to i32, !dbg !501
  %arrayidx5 = getelementptr inbounds i32* %0, i64 %indvars.iv441, !dbg !501
  store i32 %conv3, i32* %arrayidx5, align 4, !dbg !501, !tbaa !296
  %add = add nsw i32 %conv3, %M.0394, !dbg !503
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !270), !dbg !503
  %cmp10 = icmp slt i32 %conv3, %minlen.0396, !dbg !504
  %conv3.minlen.0 = select i1 %cmp10, i32 %conv3, i32 %minlen.0396, !dbg !504
  tail call void @llvm.dbg.value(metadata !{i32 %conv3.minlen.0}, i64 0, metadata !278), !dbg !504
  %indvars.iv.next442 = add i64 %indvars.iv441, 1, !dbg !499
  %lftr.wideiv443 = trunc i64 %indvars.iv.next442 to i32, !dbg !499
  %exitcond444 = icmp eq i32 %lftr.wideiv443, %nseq, !dbg !499
  br i1 %exitcond444, label %for.cond.for.end_crit_edge, label %for.body, !dbg !499

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %phitmp = sitofp i32 %add to float, !dbg !499
  %phitmp399 = fpext float %phitmp to double, !dbg !499
  br label %for.end, !dbg !499

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %minlen.0.lcssa = phi i32 [ %conv3.minlen.0, %for.cond.for.end_crit_edge ], [ 9999999, %entry ]
  %M.0.lcssa = phi double [ %phitmp399, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  %conv16 = fpext float %pop to double, !dbg !505
  %conv17 = fpext float %pex to double, !dbg !505
  %sub = fsub double 1.000000e+00, %conv17, !dbg !505
  %div = fdiv double 1.000000e+00, %sub, !dbg !505
  %add18 = fadd double %div, 1.000000e+00, !dbg !505
  %mul19 = fmul double %conv16, %add18, !dbg !505
  %add20 = fadd double %mul19, 1.000000e+00, !dbg !505
  %div21 = fdiv double %M.0.lcssa, %add20, !dbg !505
  %conv22 = fptosi double %div21 to i32, !dbg !505
  tail call void @llvm.dbg.value(metadata !{i32 %conv22}, i64 0, metadata !270), !dbg !505
  %div23 = sdiv i32 %conv22, %nseq, !dbg !506
  tail call void @llvm.dbg.value(metadata !{i32 %div23}, i64 0, metadata !270), !dbg !506
  %cmp24 = icmp sgt i32 %div23, %minlen.0.lcssa, !dbg !507
  tail call void @llvm.dbg.value(metadata !{i32 %minlen.0.lcssa}, i64 0, metadata !270), !dbg !507
  %minlen.0.div23 = select i1 %cmp24, i32 %minlen.0.lcssa, i32 %div23, !dbg !507
  %mul27 = shl nsw i64 %conv, 3, !dbg !508
  %call28 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 545, i64 %mul27) #8, !dbg !508
  %2 = bitcast i8* %call28 to i32**, !dbg !508
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !271), !dbg !508
  %add29 = add nsw i32 %minlen.0.div23, 1, !dbg !509
  %conv30 = sext i32 %add29 to i64, !dbg !509
  %mul31 = shl nsw i64 %conv30, 2, !dbg !509
  %call32 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 546, i64 %mul31) #8, !dbg !509
  %3 = bitcast i8* %call32 to i32*, !dbg !509
  tail call void @llvm.dbg.value(metadata !{i32* %3}, i64 0, metadata !272), !dbg !509
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !275), !dbg !510
  br i1 %cmp393, label %for.body36.lr.ph, label %for.cond97.preheader, !dbg !510

for.body36.lr.ph:                                 ; preds = %for.end
  %cmp44389 = icmp slt i32 %minlen.0.div23, 0, !dbg !512
  %4 = xor i32 %minlen.0.lcssa, -1, !dbg !510
  %5 = xor i32 %div23, -1, !dbg !510
  %6 = icmp sgt i32 %4, %5, !dbg !512
  %smax433 = select i1 %6, i32 %4, i32 %5, !dbg !512
  %7 = xor i32 %smax433, -1, !dbg !510
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 2, !dbg !510
  %10 = add i64 %9, 4, !dbg !510
  br label %for.body36, !dbg !510

for.body36:                                       ; preds = %for.inc54, %for.body36.lr.ph
  %indvars.iv437 = phi i64 [ 0, %for.body36.lr.ph ], [ %indvars.iv.next438, %for.inc54 ]
  %call40 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 549, i64 %mul31) #8, !dbg !515
  %11 = bitcast i8* %call40 to i32*, !dbg !515
  %arrayidx42 = getelementptr inbounds i32** %2, i64 %indvars.iv437, !dbg !515
  store i32* %11, i32** %arrayidx42, align 8, !dbg !515, !tbaa !305
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !274), !dbg !512
  br i1 %cmp44389, label %for.inc54, label %for.body46.lr.ph, !dbg !512

for.body46.lr.ph:                                 ; preds = %for.body36
  call void @llvm.memset.p0i8.i64(i8* %call40, i8 0, i64 %10, i32 4, i1 false), !dbg !516
  br label %for.inc54, !dbg !512

for.inc54:                                        ; preds = %for.body46.lr.ph, %for.body36
  %indvars.iv.next438 = add i64 %indvars.iv437, 1, !dbg !510
  %lftr.wideiv439 = trunc i64 %indvars.iv.next438 to i32, !dbg !510
  %exitcond440 = icmp eq i32 %lftr.wideiv439, %nseq, !dbg !510
  br i1 %exitcond440, label %for.end56, label %for.body36, !dbg !510

for.end56:                                        ; preds = %for.inc54
  %add57 = fadd float %pop, %pex, !dbg !517
  %div58 = fdiv float %pop, %add57, !dbg !517
  tail call void @llvm.dbg.value(metadata !{float %div58}, i64 0, metadata !263), !dbg !517
  %conv59 = fpext float %div58 to double, !dbg !518
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !275), !dbg !519
  br i1 %cmp393, label %for.cond66.preheader.lr.ph, label %for.cond97.preheader, !dbg !519

for.cond66.preheader.lr.ph:                       ; preds = %for.end56
  %conv82 = sitofp i32 %add29 to double, !dbg !521
  br label %for.cond66.preheader, !dbg !519

for.cond66.preheader:                             ; preds = %for.inc94, %for.cond66.preheader.lr.ph
  %indvars.iv427 = phi i64 [ 0, %for.cond66.preheader.lr.ph ], [ %indvars.iv.next428, %for.inc94 ]
  %arrayidx68 = getelementptr inbounds i32* %0, i64 %indvars.iv427, !dbg !525
  %12 = load i32* %arrayidx68, align 4, !dbg !525, !tbaa !296
  %sub69383 = sub nsw i32 %12, %minlen.0.div23, !dbg !525
  %cmp70384 = icmp sgt i32 %sub69383, 0, !dbg !525
  br i1 %cmp70384, label %for.body72.lr.ph, label %for.inc94, !dbg !525

for.body72.lr.ph:                                 ; preds = %for.cond66.preheader
  %arrayidx88 = getelementptr inbounds i32** %2, i64 %indvars.iv427, !dbg !526
  br label %for.body72, !dbg !525

for.cond97.preheader:                             ; preds = %for.end, %for.inc94, %for.end56
  %cmp98379 = icmp slt i32 %minlen.0.div23, 0, !dbg !527
  br i1 %cmp98379, label %for.end131, label %for.body100.lr.ph, !dbg !527

for.body100.lr.ph:                                ; preds = %for.cond97.preheader
  %13 = xor i32 %minlen.0.lcssa, -1, !dbg !527
  %14 = xor i32 %div23, -1, !dbg !527
  %15 = icmp sgt i32 %13, %14, !dbg !527
  %smax424 = select i1 %15, i32 %13, i32 %14, !dbg !527
  %16 = sub i32 0, %smax424, !dbg !527
  br label %for.body100, !dbg !527

for.body72:                                       ; preds = %for.body72.lr.ph, %if.end85
  %rpos.1386 = phi i32 [ 0, %for.body72.lr.ph ], [ %inc92, %if.end85 ]
  %apos.0385 = phi i32 [ -1, %for.body72.lr.ph ], [ %apos.1, %if.end85 ]
  %call73 = tail call double @sre_random() #8, !dbg !529
  %cmp75 = fcmp olt double %call73, %conv59, !dbg !529
  %cmp77 = icmp eq i32 %apos.0385, -1, !dbg !529
  %or.cond = or i1 %cmp75, %cmp77, !dbg !529
  br i1 %or.cond, label %if.then79, label %if.end85, !dbg !529

if.then79:                                        ; preds = %for.body72
  %call80 = tail call double @sre_random() #8, !dbg !521
  %mul83 = fmul double %conv82, %call80, !dbg !521
  %conv84 = fptosi double %mul83 to i32, !dbg !521
  tail call void @llvm.dbg.value(metadata !{i32 %conv84}, i64 0, metadata !273), !dbg !521
  br label %if.end85, !dbg !521

if.end85:                                         ; preds = %for.body72, %if.then79
  %apos.1 = phi i32 [ %conv84, %if.then79 ], [ %apos.0385, %for.body72 ]
  %idxprom86 = sext i32 %apos.1 to i64, !dbg !526
  %17 = load i32** %arrayidx88, align 8, !dbg !526, !tbaa !305
  %arrayidx89 = getelementptr inbounds i32* %17, i64 %idxprom86, !dbg !526
  %18 = load i32* %arrayidx89, align 4, !dbg !526, !tbaa !296
  %inc90 = add nsw i32 %18, 1, !dbg !526
  store i32 %inc90, i32* %arrayidx89, align 4, !dbg !526, !tbaa !296
  %inc92 = add nsw i32 %rpos.1386, 1, !dbg !525
  tail call void @llvm.dbg.value(metadata !{i32 %inc92}, i64 0, metadata !274), !dbg !525
  %19 = load i32* %arrayidx68, align 4, !dbg !525, !tbaa !296
  %sub69 = sub nsw i32 %19, %minlen.0.div23, !dbg !525
  %cmp70 = icmp slt i32 %inc92, %sub69, !dbg !525
  br i1 %cmp70, label %for.body72, label %for.inc94, !dbg !525

for.inc94:                                        ; preds = %if.end85, %for.cond66.preheader
  %indvars.iv.next428 = add i64 %indvars.iv427, 1, !dbg !519
  %lftr.wideiv429 = trunc i64 %indvars.iv.next428 to i32, !dbg !519
  %exitcond430 = icmp eq i32 %lftr.wideiv429, %nseq, !dbg !519
  br i1 %exitcond430, label %for.cond97.preheader, label %for.cond66.preheader, !dbg !519

for.body100:                                      ; preds = %for.end125, %for.body100.lr.ph
  %indvars.iv422 = phi i64 [ %indvars.iv.next423, %for.end125 ], [ 0, %for.body100.lr.ph ]
  %alen.0380 = phi i32 [ %add128, %for.end125 ], [ %minlen.0.div23, %for.body100.lr.ph ]
  %arrayidx102 = getelementptr inbounds i32* %3, i64 %indvars.iv422, !dbg !530
  store i32 0, i32* %arrayidx102, align 4, !dbg !530, !tbaa !296
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !275), !dbg !532
  br i1 %cmp393, label %for.body106, label %for.end125, !dbg !532

for.body106:                                      ; preds = %for.body100, %for.inc123
  %20 = phi i32 [ %23, %for.inc123 ], [ 0, %for.body100 ], !dbg !534
  %indvars.iv418 = phi i64 [ %indvars.iv.next419, %for.inc123 ], [ 0, %for.body100 ]
  %arrayidx109 = getelementptr inbounds i32** %2, i64 %indvars.iv418, !dbg !534
  %21 = load i32** %arrayidx109, align 8, !dbg !534, !tbaa !305
  %arrayidx110 = getelementptr inbounds i32* %21, i64 %indvars.iv422, !dbg !534
  %22 = load i32* %arrayidx110, align 4, !dbg !534, !tbaa !296
  %cmp113 = icmp sgt i32 %22, %20, !dbg !534
  br i1 %cmp113, label %if.then115, label %for.inc123, !dbg !534

if.then115:                                       ; preds = %for.body106
  store i32 %22, i32* %arrayidx102, align 4, !dbg !535, !tbaa !296
  br label %for.inc123, !dbg !535

for.inc123:                                       ; preds = %for.body106, %if.then115
  %23 = phi i32 [ %20, %for.body106 ], [ %22, %if.then115 ]
  %indvars.iv.next419 = add i64 %indvars.iv418, 1, !dbg !532
  %lftr.wideiv420 = trunc i64 %indvars.iv.next419 to i32, !dbg !532
  %exitcond421 = icmp eq i32 %lftr.wideiv420, %nseq, !dbg !532
  br i1 %exitcond421, label %for.end125, label %for.body106, !dbg !532

for.end125:                                       ; preds = %for.inc123, %for.body100
  %24 = phi i32 [ 0, %for.body100 ], [ %23, %for.inc123 ]
  %add128 = add nsw i32 %24, %alen.0380, !dbg !536
  tail call void @llvm.dbg.value(metadata !{i32 %add128}, i64 0, metadata !268), !dbg !536
  %indvars.iv.next423 = add i64 %indvars.iv422, 1, !dbg !527
  %lftr.wideiv425 = trunc i64 %indvars.iv.next423 to i32, !dbg !527
  %exitcond426 = icmp eq i32 %lftr.wideiv425, %16, !dbg !527
  br i1 %exitcond426, label %for.end131, label %for.body100, !dbg !527

for.end131:                                       ; preds = %for.end125, %for.cond97.preheader
  %alen.0.lcssa = phi i32 [ %minlen.0.div23, %for.cond97.preheader ], [ %add128, %for.end125 ]
  %call134 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 581, i64 %mul27) #8, !dbg !537
  %25 = bitcast i8* %call134 to i8**, !dbg !537
  tail call void @llvm.dbg.value(metadata !{i8** %25}, i64 0, metadata !267), !dbg !537
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !275), !dbg !538
  br i1 %cmp393, label %for.body138.lr.ph, label %for.end214, !dbg !538

for.body138.lr.ph:                                ; preds = %for.end131
  %add139 = add nsw i32 %alen.0.lcssa, 1, !dbg !540
  %conv140 = sext i32 %add139 to i64, !dbg !540
  br label %for.body138, !dbg !538

for.cond148.preheader:                            ; preds = %for.body138
  br i1 %cmp393, label %for.cond152.preheader.lr.ph, label %for.end214, !dbg !541

for.cond152.preheader.lr.ph:                      ; preds = %for.cond148.preheader
  %idxprom208 = sext i32 %alen.0.lcssa to i64, !dbg !543
  %26 = xor i32 %minlen.0.lcssa, -1, !dbg !541
  %27 = xor i32 %div23, -1, !dbg !541
  %28 = icmp sgt i32 %26, %27, !dbg !545
  %smax = select i1 %28, i32 %26, i32 %27, !dbg !545
  %29 = sub i32 0, %smax, !dbg !541
  br label %for.cond152.preheader, !dbg !541

for.body138:                                      ; preds = %for.body138, %for.body138.lr.ph
  %indvars.iv414 = phi i64 [ 0, %for.body138.lr.ph ], [ %indvars.iv.next415, %for.body138 ]
  %call142 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 583, i64 %conv140) #8, !dbg !540
  %arrayidx144 = getelementptr inbounds i8** %25, i64 %indvars.iv414, !dbg !540
  store i8* %call142, i8** %arrayidx144, align 8, !dbg !540, !tbaa !305
  %indvars.iv.next415 = add i64 %indvars.iv414, 1, !dbg !538
  %lftr.wideiv416 = trunc i64 %indvars.iv.next415 to i32, !dbg !538
  %exitcond417 = icmp eq i32 %lftr.wideiv416, %nseq, !dbg !538
  br i1 %exitcond417, label %for.cond148.preheader, label %for.body138, !dbg !538

for.cond152.preheader:                            ; preds = %for.end207, %for.cond152.preheader.lr.ph
  %indvars.iv410 = phi i64 [ 0, %for.cond152.preheader.lr.ph ], [ %indvars.iv.next411, %for.end207 ]
  br i1 %cmp98379, label %for.cond152.preheader.for.end207_crit_edge, label %for.cond156.preheader.lr.ph, !dbg !545

for.cond152.preheader.for.end207_crit_edge:       ; preds = %for.cond152.preheader
  %arrayidx210.pre = getelementptr inbounds i8** %25, i64 %indvars.iv410, !dbg !543
  br label %for.end207, !dbg !545

for.cond156.preheader.lr.ph:                      ; preds = %for.cond152.preheader
  %arrayidx159 = getelementptr inbounds i32** %2, i64 %indvars.iv410, !dbg !547
  %arrayidx167 = getelementptr inbounds i8** %rseqs, i64 %indvars.iv410, !dbg !550
  %arrayidx172 = getelementptr inbounds i8** %25, i64 %indvars.iv410, !dbg !550
  br label %for.cond156.preheader, !dbg !545

for.cond156.preheader:                            ; preds = %for.inc205, %for.cond156.preheader.lr.ph
  %indvars.iv406 = phi i64 [ 0, %for.cond156.preheader.lr.ph ], [ %indvars.iv.next407, %for.inc205 ]
  %rpos.2371 = phi i32 [ 0, %for.cond156.preheader.lr.ph ], [ %rpos.4, %for.inc205 ]
  %apos.3370 = phi i32 [ 0, %for.cond156.preheader.lr.ph ], [ %apos.6, %for.inc205 ]
  %30 = load i32** %arrayidx159, align 8, !dbg !547, !tbaa !305
  %arrayidx160356 = getelementptr inbounds i32* %30, i64 %indvars.iv406, !dbg !547
  %31 = load i32* %arrayidx160356, align 4, !dbg !547, !tbaa !296
  %cmp161357 = icmp sgt i32 %31, 0, !dbg !547
  br i1 %cmp161357, label %for.body163.lr.ph, label %for.cond177.loopexit, !dbg !547

for.body163.lr.ph:                                ; preds = %for.cond156.preheader
  %32 = sext i32 %rpos.2371 to i64
  %33 = sext i32 %apos.3370 to i64, !dbg !547
  br label %for.body163, !dbg !547

for.body163:                                      ; preds = %for.body163.lr.ph, %for.body163
  %indvars.iv402 = phi i64 [ %33, %for.body163.lr.ph ], [ %indvars.iv.next403, %for.body163 ], !dbg !547
  %indvars.iv400 = phi i64 [ %32, %for.body163.lr.ph ], [ %indvars.iv.next401, %for.body163 ]
  %count.0360 = phi i32 [ 0, %for.body163.lr.ph ], [ %inc175, %for.body163 ]
  %rpos.3359 = phi i32 [ %rpos.2371, %for.body163.lr.ph ], [ %inc164, %for.body163 ]
  %apos.4358 = phi i32 [ %apos.3370, %for.body163.lr.ph ], [ %inc169, %for.body163 ]
  %indvars.iv.next401 = add i64 %indvars.iv400, 1, !dbg !547
  %inc164 = add nsw i32 %rpos.3359, 1, !dbg !550
  tail call void @llvm.dbg.value(metadata !{i32 %inc164}, i64 0, metadata !274), !dbg !550
  %34 = load i8** %arrayidx167, align 8, !dbg !550, !tbaa !305
  %arrayidx168 = getelementptr inbounds i8* %34, i64 %indvars.iv400, !dbg !550
  %35 = load i8* %arrayidx168, align 1, !dbg !550, !tbaa !297
  %indvars.iv.next403 = add i64 %indvars.iv402, 1, !dbg !547
  %inc169 = add nsw i32 %apos.4358, 1, !dbg !550
  tail call void @llvm.dbg.value(metadata !{i32 %inc169}, i64 0, metadata !273), !dbg !550
  %36 = load i8** %arrayidx172, align 8, !dbg !550, !tbaa !305
  %arrayidx173 = getelementptr inbounds i8* %36, i64 %indvars.iv402, !dbg !550
  store i8 %35, i8* %arrayidx173, align 1, !dbg !550, !tbaa !297
  %inc175 = add nsw i32 %count.0360, 1, !dbg !547
  tail call void @llvm.dbg.value(metadata !{i32 %inc175}, i64 0, metadata !277), !dbg !547
  %37 = load i32** %arrayidx159, align 8, !dbg !547, !tbaa !305
  %arrayidx160 = getelementptr inbounds i32* %37, i64 %indvars.iv406, !dbg !547
  %38 = load i32* %arrayidx160, align 4, !dbg !547, !tbaa !296
  %cmp161 = icmp slt i32 %inc175, %38, !dbg !547
  br i1 %cmp161, label %for.body163, label %for.cond177.loopexit, !dbg !547

for.cond177.loopexit:                             ; preds = %for.body163, %for.cond156.preheader
  %count.0.lcssa = phi i32 [ 0, %for.cond156.preheader ], [ %inc175, %for.body163 ]
  %rpos.3.lcssa = phi i32 [ %rpos.2371, %for.cond156.preheader ], [ %inc164, %for.body163 ]
  %apos.4.lcssa = phi i32 [ %apos.3370, %for.cond156.preheader ], [ %inc169, %for.body163 ]
  %arrayidx179 = getelementptr inbounds i32* %3, i64 %indvars.iv406, !dbg !551
  %39 = load i32* %arrayidx179, align 4, !dbg !551, !tbaa !296
  %cmp180365 = icmp slt i32 %count.0.lcssa, %39, !dbg !551
  br i1 %cmp180365, label %for.body182.lr.ph, label %for.end190, !dbg !551

for.body182.lr.ph:                                ; preds = %for.cond177.loopexit
  %40 = sext i32 %apos.4.lcssa to i64
  br label %for.body182, !dbg !551

for.body182:                                      ; preds = %for.body182.lr.ph, %for.body182
  %indvars.iv404 = phi i64 [ %40, %for.body182.lr.ph ], [ %indvars.iv.next405, %for.body182 ]
  %count.1367 = phi i32 [ %count.0.lcssa, %for.body182.lr.ph ], [ %inc189, %for.body182 ]
  %apos.5366 = phi i32 [ %apos.4.lcssa, %for.body182.lr.ph ], [ %inc183, %for.body182 ]
  %indvars.iv.next405 = add i64 %indvars.iv404, 1, !dbg !551
  %inc183 = add nsw i32 %apos.5366, 1, !dbg !553
  tail call void @llvm.dbg.value(metadata !{i32 %inc183}, i64 0, metadata !273), !dbg !553
  %41 = load i8** %arrayidx172, align 8, !dbg !553, !tbaa !305
  %arrayidx187 = getelementptr inbounds i8* %41, i64 %indvars.iv404, !dbg !553
  store i8 32, i8* %arrayidx187, align 1, !dbg !553, !tbaa !297
  %inc189 = add nsw i32 %count.1367, 1, !dbg !551
  tail call void @llvm.dbg.value(metadata !{i32 %inc189}, i64 0, metadata !277), !dbg !551
  %42 = load i32* %arrayidx179, align 4, !dbg !551, !tbaa !296
  %cmp180 = icmp slt i32 %inc189, %42, !dbg !551
  br i1 %cmp180, label %for.body182, label %for.end190, !dbg !551

for.end190:                                       ; preds = %for.body182, %for.cond177.loopexit
  %apos.5.lcssa = phi i32 [ %apos.4.lcssa, %for.cond177.loopexit ], [ %inc183, %for.body182 ]
  %43 = trunc i64 %indvars.iv406 to i32, !dbg !554
  %cmp191 = icmp eq i32 %43, %minlen.0.div23, !dbg !554
  br i1 %cmp191, label %for.inc205, label %if.then193, !dbg !554

if.then193:                                       ; preds = %for.end190
  %inc194 = add nsw i32 %rpos.3.lcssa, 1, !dbg !555
  tail call void @llvm.dbg.value(metadata !{i32 %inc194}, i64 0, metadata !274), !dbg !555
  %idxprom195 = sext i32 %rpos.3.lcssa to i64, !dbg !555
  %44 = load i8** %arrayidx167, align 8, !dbg !555, !tbaa !305
  %arrayidx198 = getelementptr inbounds i8* %44, i64 %idxprom195, !dbg !555
  %45 = load i8* %arrayidx198, align 1, !dbg !555, !tbaa !297
  %inc199 = add nsw i32 %apos.5.lcssa, 1, !dbg !555
  tail call void @llvm.dbg.value(metadata !{i32 %inc199}, i64 0, metadata !273), !dbg !555
  %idxprom200 = sext i32 %apos.5.lcssa to i64, !dbg !555
  %46 = load i8** %arrayidx172, align 8, !dbg !555, !tbaa !305
  %arrayidx203 = getelementptr inbounds i8* %46, i64 %idxprom200, !dbg !555
  store i8 %45, i8* %arrayidx203, align 1, !dbg !555, !tbaa !297
  br label %for.inc205, !dbg !555

for.inc205:                                       ; preds = %for.end190, %if.then193
  %apos.6 = phi i32 [ %inc199, %if.then193 ], [ %apos.5.lcssa, %for.end190 ]
  %rpos.4 = phi i32 [ %inc194, %if.then193 ], [ %rpos.3.lcssa, %for.end190 ]
  %indvars.iv.next407 = add i64 %indvars.iv406, 1, !dbg !545
  %lftr.wideiv408 = trunc i64 %indvars.iv.next407 to i32, !dbg !545
  %exitcond409 = icmp eq i32 %lftr.wideiv408, %29, !dbg !545
  br i1 %exitcond409, label %for.end207, label %for.cond156.preheader, !dbg !545

for.end207:                                       ; preds = %for.inc205, %for.cond152.preheader.for.end207_crit_edge
  %arrayidx210.pre-phi = phi i8** [ %arrayidx210.pre, %for.cond152.preheader.for.end207_crit_edge ], [ %arrayidx172, %for.inc205 ], !dbg !543
  %47 = load i8** %arrayidx210.pre-phi, align 8, !dbg !543, !tbaa !305
  %arrayidx211 = getelementptr inbounds i8* %47, i64 %idxprom208, !dbg !543
  store i8 0, i8* %arrayidx211, align 1, !dbg !543, !tbaa !297
  %indvars.iv.next411 = add i64 %indvars.iv410, 1, !dbg !541
  %lftr.wideiv412 = trunc i64 %indvars.iv.next411 to i32, !dbg !541
  %exitcond413 = icmp eq i32 %lftr.wideiv412, %nseq, !dbg !541
  br i1 %exitcond413, label %for.end214, label %for.cond152.preheader, !dbg !541

for.end214:                                       ; preds = %for.end131, %for.end207, %for.cond148.preheader
  %flags = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 0, !dbg !556
  store i32 0, i32* %flags, align 4, !dbg !556, !tbaa !296
  %alen215 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 1, !dbg !557
  store i32 %alen.0.lcssa, i32* %alen215, align 4, !dbg !557, !tbaa !296
  %nseq216 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 2, !dbg !558
  store i32 %nseq, i32* %nseq216, align 4, !dbg !558, !tbaa !296
  %mul218 = mul i64 %conv, 360, !dbg !559
  %call219 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 603, i64 %mul218) #8, !dbg !559
  %48 = bitcast i8* %call219 to %struct.seqinfo_s*, !dbg !559
  %sqinfo220 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 6, !dbg !559
  store %struct.seqinfo_s* %48, %struct.seqinfo_s** %sqinfo220, align 8, !dbg !559, !tbaa !305
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !275), !dbg !560
  br i1 %cmp393, label %for.body224, label %for.end232, !dbg !560

for.body224:                                      ; preds = %for.end214, %for.body224.for.body224_crit_edge
  %49 = phi %struct.seqinfo_s* [ %.pre, %for.body224.for.body224_crit_edge ], [ %48, %for.end214 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body224.for.body224_crit_edge ], [ 0, %for.end214 ]
  %arrayidx227 = getelementptr inbounds %struct.seqinfo_s* %49, i64 %indvars.iv, !dbg !562
  %arrayidx229 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 %indvars.iv, !dbg !562
  tail call void @SeqinfoCopy(%struct.seqinfo_s* %arrayidx227, %struct.seqinfo_s* %arrayidx229) #8, !dbg !562
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !560
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !560
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq, !dbg !560
  br i1 %exitcond, label %for.end232, label %for.body224.for.body224_crit_edge, !dbg !560

for.body224.for.body224_crit_edge:                ; preds = %for.body224
  %.pre = load %struct.seqinfo_s** %sqinfo220, align 8, !dbg !562, !tbaa !305
  br label %for.body224, !dbg !560

for.end232:                                       ; preds = %for.body224, %for.end214
  tail call void @free(i8* %call) #8, !dbg !563
  tail call void @free(i8* %call32) #8, !dbg !564
  %50 = bitcast i8* %call28 to i8**, !dbg !565
  tail call void @Free2DArray(i8** %50, i32 %nseq) #8, !dbg !565
  store i8** %25, i8*** %ret_aseqs, align 8, !dbg !566, !tbaa !305
  ret i32 1, !dbg !567
}

; Function Attrs: optsize
declare double @sre_random() #2

; Function Attrs: optsize
declare void @SeqinfoCopy(%struct.seqinfo_s*, %struct.seqinfo_s*) #2

; Function Attrs: nounwind optsize uwtable
define void @AlignmentHomogenousGapsym(i8** nocapture %aseq, i32 %nseq, i32 %alen, i8 signext %gapsym) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %aseq}, i64 0, metadata !283), !dbg !568
  tail call void @llvm.dbg.value(metadata !{i32 %nseq}, i64 0, metadata !284), !dbg !568
  tail call void @llvm.dbg.value(metadata !{i32 %alen}, i64 0, metadata !285), !dbg !568
  tail call void @llvm.dbg.value(metadata !{i8 %gapsym}, i64 0, metadata !286), !dbg !568
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !287), !dbg !569
  %cmp67 = icmp sgt i32 %nseq, 0, !dbg !569
  br i1 %cmp67, label %for.cond1.preheader.lr.ph, label %for.end45, !dbg !569

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp265 = icmp sgt i32 %alen, 0, !dbg !571
  br label %for.cond1.preheader, !dbg !569

for.cond1.preheader:                              ; preds = %for.inc43, %for.cond1.preheader.lr.ph
  %indvars.iv69 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next70, %for.inc43 ]
  br i1 %cmp265, label %for.body3.lr.ph, label %for.inc43, !dbg !571

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %arrayidx = getelementptr inbounds i8** %aseq, i64 %indvars.iv69, !dbg !573
  br label %for.body3, !dbg !571

for.body3:                                        ; preds = %for.inc, %for.body3.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body3.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %0 = load i8** %arrayidx, align 8, !dbg !573, !tbaa !305
  %arrayidx5 = getelementptr inbounds i8* %0, i64 %indvars.iv, !dbg !573
  %1 = load i8* %arrayidx5, align 1, !dbg !573, !tbaa !297
  switch i8 %1, label %for.inc [
    i8 32, label %if.then
    i8 46, label %if.then
    i8 95, label %if.then
    i8 45, label %if.then
    i8 126, label %if.then
  ], !dbg !573

if.then:                                          ; preds = %for.body3, %for.body3, %for.body3, %for.body3, %for.body3
  store i8 %gapsym, i8* %arrayidx5, align 1, !dbg !573, !tbaa !297
  br label %for.inc, !dbg !573

for.inc:                                          ; preds = %for.body3, %if.then
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !571
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !571
  %exitcond = icmp eq i32 %lftr.wideiv, %alen, !dbg !571
  br i1 %exitcond, label %for.inc43, label %for.body3, !dbg !571

for.inc43:                                        ; preds = %for.inc, %for.cond1.preheader
  %indvars.iv.next70 = add i64 %indvars.iv69, 1, !dbg !569
  %lftr.wideiv71 = trunc i64 %indvars.iv.next70 to i32, !dbg !569
  %exitcond72 = icmp eq i32 %lftr.wideiv71, %nseq, !dbg !569
  br i1 %exitcond72, label %for.end45, label %for.cond1.preheader, !dbg !569

for.end45:                                        ; preds = %for.inc43, %entry
  ret void, !dbg !574
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #7

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readnone }
attributes #10 = { nounwind optsize readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !18, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17}
!6 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!7 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!8 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!9 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!10 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!11 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!12 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!13 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!14 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!15 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!16 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!17 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!18 = metadata !{i32 0}
!19 = metadata !{metadata !20, metadata !82, metadata !87, metadata !94, metadata !107, metadata !128, metadata !139, metadata !148, metadata !154, metadata !245, metadata !254, metadata !279}
!20 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"AllocAlignment", metadata !"AllocAlignment", metadata !"", i32 43, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i8***, %struct.aliinfo_s*)* @AllocAlignment, null, null, metadata !75, i32 44} ; [ DW_TAG_subprogram ] [line 43] [def] [scope 44] [AllocAlignment]
!21 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{null, metadata !24, metadata !24, metadata !25, metadata !29}
!24 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!28 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from AINFO]
!30 = metadata !{i32 786454, metadata !1, null, metadata !"AINFO", i32 83, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [AINFO] [line 83, size 0, align 0, offset 0] [from aliinfo_s]
!31 = metadata !{i32 786451, metadata !32, null, metadata !"aliinfo_s", i32 65, i64 832, i64 64, i32 0, i32 0, null, metadata !33, i32 0, null, null} ; [ DW_TAG_structure_type ] [aliinfo_s] [line 65, size 832, align 64, offset 0] [from ]
!32 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!33 = metadata !{metadata !34, metadata !35, metadata !36, metadata !37, metadata !40, metadata !41, metadata !42, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74}
!34 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"flags", i32 66, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [flags] [line 66, size 32, align 32, offset 0] [from int]
!35 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"alen", i32 67, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [alen] [line 67, size 32, align 32, offset 32] [from int]
!36 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"nseq", i32 68, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [nseq] [line 68, size 32, align 32, offset 64] [from int]
!37 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"wgt", i32 69, i64 64, i64 64, i64 128, i32 0, metadata !38} ; [ DW_TAG_member ] [wgt] [line 69, size 64, align 64, offset 128] [from ]
!38 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!39 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!40 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"cs", i32 70, i64 64, i64 64, i64 192, i32 0, metadata !27} ; [ DW_TAG_member ] [cs] [line 70, size 64, align 64, offset 192] [from ]
!41 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"rf", i32 71, i64 64, i64 64, i64 256, i32 0, metadata !27} ; [ DW_TAG_member ] [rf] [line 71, size 64, align 64, offset 256] [from ]
!42 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"sqinfo", i32 72, i64 64, i64 64, i64 320, i32 0, metadata !43} ; [ DW_TAG_member ] [sqinfo] [line 72, size 64, align 64, offset 320] [from ]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seqinfo_s]
!44 = metadata !{i32 786451, metadata !45, null, metadata !"seqinfo_s", i32 84, i64 2880, i64 64, i32 0, i32 0, null, metadata !46, i32 0, null, null} ; [ DW_TAG_structure_type ] [seqinfo_s] [line 84, size 2880, align 64, offset 0] [from ]
!45 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/squid.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!46 = metadata !{metadata !47, metadata !48, metadata !52, metadata !53, metadata !54, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64}
!47 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"flags", i32 85, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [flags] [line 85, size 32, align 32, offset 0] [from int]
!48 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"name", i32 86, i64 512, i64 8, i64 32, i32 0, metadata !49} ; [ DW_TAG_member ] [name] [line 86, size 512, align 8, offset 32] [from ]
!49 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 8, i32 0, i32 0, metadata !28, metadata !50, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 8, offset 0] [from char]
!50 = metadata !{metadata !51}
!51 = metadata !{i32 786465, i64 0, i64 64}       ; [ DW_TAG_subrange_type ] [0, 63]
!52 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"id", i32 87, i64 512, i64 8, i64 544, i32 0, metadata !49} ; [ DW_TAG_member ] [id] [line 87, size 512, align 8, offset 544] [from ]
!53 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"acc", i32 88, i64 512, i64 8, i64 1056, i32 0, metadata !49} ; [ DW_TAG_member ] [acc] [line 88, size 512, align 8, offset 1056] [from ]
!54 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"desc", i32 89, i64 1024, i64 8, i64 1568, i32 0, metadata !55} ; [ DW_TAG_member ] [desc] [line 89, size 1024, align 8, offset 1568] [from ]
!55 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !28, metadata !56, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 8, offset 0] [from char]
!56 = metadata !{metadata !57}
!57 = metadata !{i32 786465, i64 0, i64 128}      ; [ DW_TAG_subrange_type ] [0, 127]
!58 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"len", i32 90, i64 32, i64 32, i64 2592, i32 0, metadata !24} ; [ DW_TAG_member ] [len] [line 90, size 32, align 32, offset 2592] [from int]
!59 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"start", i32 91, i64 32, i64 32, i64 2624, i32 0, metadata !24} ; [ DW_TAG_member ] [start] [line 91, size 32, align 32, offset 2624] [from int]
!60 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"stop", i32 92, i64 32, i64 32, i64 2656, i32 0, metadata !24} ; [ DW_TAG_member ] [stop] [line 92, size 32, align 32, offset 2656] [from int]
!61 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"olen", i32 93, i64 32, i64 32, i64 2688, i32 0, metadata !24} ; [ DW_TAG_member ] [olen] [line 93, size 32, align 32, offset 2688] [from int]
!62 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"type", i32 94, i64 32, i64 32, i64 2720, i32 0, metadata !24} ; [ DW_TAG_member ] [type] [line 94, size 32, align 32, offset 2720] [from int]
!63 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"ss", i32 95, i64 64, i64 64, i64 2752, i32 0, metadata !27} ; [ DW_TAG_member ] [ss] [line 95, size 64, align 64, offset 2752] [from ]
!64 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"sa", i32 96, i64 64, i64 64, i64 2816, i32 0, metadata !27} ; [ DW_TAG_member ] [sa] [line 96, size 64, align 64, offset 2816] [from ]
!65 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"name", i32 75, i64 64, i64 64, i64 384, i32 0, metadata !27} ; [ DW_TAG_member ] [name] [line 75, size 64, align 64, offset 384] [from ]
!66 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"desc", i32 76, i64 64, i64 64, i64 448, i32 0, metadata !27} ; [ DW_TAG_member ] [desc] [line 76, size 64, align 64, offset 448] [from ]
!67 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"acc", i32 77, i64 64, i64 64, i64 512, i32 0, metadata !27} ; [ DW_TAG_member ] [acc] [line 77, size 64, align 64, offset 512] [from ]
!68 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"au", i32 78, i64 64, i64 64, i64 576, i32 0, metadata !27} ; [ DW_TAG_member ] [au] [line 78, size 64, align 64, offset 576] [from ]
!69 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"tc1", i32 79, i64 32, i64 32, i64 640, i32 0, metadata !39} ; [ DW_TAG_member ] [tc1] [line 79, size 32, align 32, offset 640] [from float]
!70 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"tc2", i32 79, i64 32, i64 32, i64 672, i32 0, metadata !39} ; [ DW_TAG_member ] [tc2] [line 79, size 32, align 32, offset 672] [from float]
!71 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"nc1", i32 80, i64 32, i64 32, i64 704, i32 0, metadata !39} ; [ DW_TAG_member ] [nc1] [line 80, size 32, align 32, offset 704] [from float]
!72 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"nc2", i32 80, i64 32, i64 32, i64 736, i32 0, metadata !39} ; [ DW_TAG_member ] [nc2] [line 80, size 32, align 32, offset 736] [from float]
!73 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"ga1", i32 81, i64 32, i64 32, i64 768, i32 0, metadata !39} ; [ DW_TAG_member ] [ga1] [line 81, size 32, align 32, offset 768] [from float]
!74 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"ga2", i32 81, i64 32, i64 32, i64 800, i32 0, metadata !39} ; [ DW_TAG_member ] [ga2] [line 81, size 32, align 32, offset 800] [from float]
!75 = metadata !{metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81}
!76 = metadata !{i32 786689, metadata !20, metadata !"nseq", metadata !21, i32 16777259, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nseq] [line 43]
!77 = metadata !{i32 786689, metadata !20, metadata !"alen", metadata !21, i32 33554475, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alen] [line 43]
!78 = metadata !{i32 786689, metadata !20, metadata !"ret_aseq", metadata !21, i32 50331691, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_aseq] [line 43]
!79 = metadata !{i32 786689, metadata !20, metadata !"ainfo", metadata !21, i32 67108907, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ainfo] [line 43]
!80 = metadata !{i32 786688, metadata !20, metadata !"aseq", metadata !21, i32 45, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aseq] [line 45]
!81 = metadata !{i32 786688, metadata !20, metadata !"idx", metadata !21, i32 46, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 46]
!82 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"InitAinfo", metadata !"InitAinfo", metadata !"", i32 80, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.aliinfo_s*)* @InitAinfo, null, null, metadata !85, i32 81} ; [ DW_TAG_subprogram ] [line 80] [def] [scope 81] [InitAinfo]
!83 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!84 = metadata !{null, metadata !29}
!85 = metadata !{metadata !86}
!86 = metadata !{i32 786689, metadata !82, metadata !"ainfo", metadata !21, i32 16777296, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ainfo] [line 80]
!87 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"FreeAlignment", metadata !"FreeAlignment", metadata !"", i32 105, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8**, %struct.aliinfo_s*)* @FreeAlignment, null, null, metadata !90, i32 106} ; [ DW_TAG_subprogram ] [line 105] [def] [scope 106] [FreeAlignment]
!88 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!89 = metadata !{null, metadata !26, metadata !29}
!90 = metadata !{metadata !91, metadata !92, metadata !93}
!91 = metadata !{i32 786689, metadata !87, metadata !"aseqs", metadata !21, i32 16777321, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aseqs] [line 105]
!92 = metadata !{i32 786689, metadata !87, metadata !"ainfo", metadata !21, i32 33554537, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ainfo] [line 105]
!93 = metadata !{i32 786688, metadata !87, metadata !"i", metadata !21, i32 107, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 107]
!94 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"SAMizeAlignment", metadata !"SAMizeAlignment", metadata !"", i32 144, metadata !95, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8**, i32, i32)* @SAMizeAlignment, null, null, metadata !97, i32 145} ; [ DW_TAG_subprogram ] [line 144] [def] [scope 145] [SAMizeAlignment]
!95 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!96 = metadata !{null, metadata !26, metadata !24, metadata !24}
!97 = metadata !{metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106}
!98 = metadata !{i32 786689, metadata !94, metadata !"aseq", metadata !21, i32 16777360, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aseq] [line 144]
!99 = metadata !{i32 786689, metadata !94, metadata !"nseq", metadata !21, i32 33554576, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nseq] [line 144]
!100 = metadata !{i32 786689, metadata !94, metadata !"alen", metadata !21, i32 50331792, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alen] [line 144]
!101 = metadata !{i32 786688, metadata !94, metadata !"col", metadata !21, i32 146, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 146]
!102 = metadata !{i32 786688, metadata !94, metadata !"i", metadata !21, i32 147, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 147]
!103 = metadata !{i32 786688, metadata !94, metadata !"sawlower", metadata !21, i32 148, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sawlower] [line 148]
!104 = metadata !{i32 786688, metadata !94, metadata !"sawupper", metadata !21, i32 148, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sawupper] [line 148]
!105 = metadata !{i32 786688, metadata !94, metadata !"sawgap", metadata !21, i32 148, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sawgap] [line 148]
!106 = metadata !{i32 786688, metadata !94, metadata !"gapchar", metadata !21, i32 149, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gapchar] [line 149]
!107 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"SAMizeAlignmentByGapFrac", metadata !"SAMizeAlignmentByGapFrac", metadata !"", i32 190, metadata !108, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8**, i32, i32, float)* @SAMizeAlignmentByGapFrac, null, null, metadata !110, i32 191} ; [ DW_TAG_subprogram ] [line 190] [def] [scope 191] [SAMizeAlignmentByGapFrac]
!108 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!109 = metadata !{null, metadata !26, metadata !24, metadata !24, metadata !39}
!110 = metadata !{metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !124}
!111 = metadata !{i32 786689, metadata !107, metadata !"aseq", metadata !21, i32 16777406, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aseq] [line 190]
!112 = metadata !{i32 786689, metadata !107, metadata !"nseq", metadata !21, i32 33554622, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nseq] [line 190]
!113 = metadata !{i32 786689, metadata !107, metadata !"alen", metadata !21, i32 50331838, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alen] [line 190]
!114 = metadata !{i32 786689, metadata !107, metadata !"maxgap", metadata !21, i32 67109054, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxgap] [line 190]
!115 = metadata !{i32 786688, metadata !107, metadata !"apos", metadata !21, i32 192, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [apos] [line 192]
!116 = metadata !{i32 786688, metadata !107, metadata !"idx", metadata !21, i32 193, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 193]
!117 = metadata !{i32 786688, metadata !107, metadata !"ngap", metadata !21, i32 194, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ngap] [line 194]
!118 = metadata !{i32 786688, metadata !119, metadata !"__res", metadata !21, i32 208, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 208]
!119 = metadata !{i32 786443, metadata !1, metadata !120, i32 208, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!120 = metadata !{i32 786443, metadata !1, metadata !121, i32 206, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!121 = metadata !{i32 786443, metadata !1, metadata !122, i32 205, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!122 = metadata !{i32 786443, metadata !1, metadata !123, i32 197, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!123 = metadata !{i32 786443, metadata !1, metadata !107, i32 196, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!124 = metadata !{i32 786688, metadata !125, metadata !"__res", metadata !21, i32 214, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 214]
!125 = metadata !{i32 786443, metadata !1, metadata !126, i32 214, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!126 = metadata !{i32 786443, metadata !1, metadata !127, i32 212, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!127 = metadata !{i32 786443, metadata !1, metadata !122, i32 211, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!128 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"MakeAlignedString", metadata !"MakeAlignedString", metadata !"", i32 237, metadata !129, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i8*, i8**)* @MakeAlignedString, null, null, metadata !131, i32 238} ; [ DW_TAG_subprogram ] [line 237] [def] [scope 238] [MakeAlignedString]
!129 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !130, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!130 = metadata !{metadata !24, metadata !27, metadata !24, metadata !27, metadata !26}
!131 = metadata !{metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138}
!132 = metadata !{i32 786689, metadata !128, metadata !"aseq", metadata !21, i32 16777453, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aseq] [line 237]
!133 = metadata !{i32 786689, metadata !128, metadata !"alen", metadata !21, i32 33554669, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alen] [line 237]
!134 = metadata !{i32 786689, metadata !128, metadata !"ss", metadata !21, i32 50331885, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ss] [line 237]
!135 = metadata !{i32 786689, metadata !128, metadata !"ret_s", metadata !21, i32 67109101, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_s] [line 237]
!136 = metadata !{i32 786688, metadata !128, metadata !"new", metadata !21, i32 239, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new] [line 239]
!137 = metadata !{i32 786688, metadata !128, metadata !"apos", metadata !21, i32 240, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [apos] [line 240]
!138 = metadata !{i32 786688, metadata !128, metadata !"rpos", metadata !21, i32 240, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rpos] [line 240]
!139 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"MakeDealignedString", metadata !"MakeDealignedString", metadata !"", i32 275, metadata !129, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i8*, i8**)* @MakeDealignedString, null, null, metadata !140, i32 276} ; [ DW_TAG_subprogram ] [line 275] [def] [scope 276] [MakeDealignedString]
!140 = metadata !{metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147}
!141 = metadata !{i32 786689, metadata !139, metadata !"aseq", metadata !21, i32 16777491, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aseq] [line 275]
!142 = metadata !{i32 786689, metadata !139, metadata !"alen", metadata !21, i32 33554707, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alen] [line 275]
!143 = metadata !{i32 786689, metadata !139, metadata !"ss", metadata !21, i32 50331923, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ss] [line 275]
!144 = metadata !{i32 786689, metadata !139, metadata !"ret_s", metadata !21, i32 67109139, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_s] [line 275]
!145 = metadata !{i32 786688, metadata !139, metadata !"new", metadata !21, i32 277, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new] [line 277]
!146 = metadata !{i32 786688, metadata !139, metadata !"apos", metadata !21, i32 278, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [apos] [line 278]
!147 = metadata !{i32 786688, metadata !139, metadata !"rpos", metadata !21, i32 278, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rpos] [line 278]
!148 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"DealignedLength", metadata !"DealignedLength", metadata !"", i32 305, metadata !149, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @DealignedLength, null, null, metadata !151, i32 306} ; [ DW_TAG_subprogram ] [line 305] [def] [scope 306] [DealignedLength]
!149 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !150, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!150 = metadata !{metadata !24, metadata !27}
!151 = metadata !{metadata !152, metadata !153}
!152 = metadata !{i32 786689, metadata !148, metadata !"aseq", metadata !21, i32 16777521, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aseq] [line 305]
!153 = metadata !{i32 786688, metadata !148, metadata !"rlen", metadata !21, i32 307, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rlen] [line 307]
!154 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"WritePairwiseAlignment", metadata !"WritePairwiseAlignment", metadata !"", i32 333, metadata !155, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, i8*, i8*, i32, i8*, i8*, i32, i32**, i32)* @WritePairwiseAlignment, null, null, metadata !214, i32 337} ; [ DW_TAG_subprogram ] [line 333] [def] [scope 337] [WritePairwiseAlignment]
!155 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !156, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!156 = metadata !{metadata !24, metadata !157, metadata !27, metadata !27, metadata !24, metadata !27, metadata !27, metadata !24, metadata !212, metadata !24}
!157 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !158} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!158 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !159} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!159 = metadata !{i32 786451, metadata !160, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !161, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!160 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!161 = metadata !{metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !182, metadata !183, metadata !184, metadata !185, metadata !188, metadata !190, metadata !192, metadata !196, metadata !198, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !207, metadata !208}
!162 = metadata !{i32 786445, metadata !160, metadata !159, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!163 = metadata !{i32 786445, metadata !160, metadata !159, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!164 = metadata !{i32 786445, metadata !160, metadata !159, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!165 = metadata !{i32 786445, metadata !160, metadata !159, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !27} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!166 = metadata !{i32 786445, metadata !160, metadata !159, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !27} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!167 = metadata !{i32 786445, metadata !160, metadata !159, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !27} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!168 = metadata !{i32 786445, metadata !160, metadata !159, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !27} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!169 = metadata !{i32 786445, metadata !160, metadata !159, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !27} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!170 = metadata !{i32 786445, metadata !160, metadata !159, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !27} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!171 = metadata !{i32 786445, metadata !160, metadata !159, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !27} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!172 = metadata !{i32 786445, metadata !160, metadata !159, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !27} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!173 = metadata !{i32 786445, metadata !160, metadata !159, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !27} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!174 = metadata !{i32 786445, metadata !160, metadata !159, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !175} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!175 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !176} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!176 = metadata !{i32 786451, metadata !160, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !177, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!177 = metadata !{metadata !178, metadata !179, metadata !181}
!178 = metadata !{i32 786445, metadata !160, metadata !176, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !175} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!179 = metadata !{i32 786445, metadata !160, metadata !176, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !180} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!180 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !159} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!181 = metadata !{i32 786445, metadata !160, metadata !176, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!182 = metadata !{i32 786445, metadata !160, metadata !159, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !180} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!183 = metadata !{i32 786445, metadata !160, metadata !159, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !24} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!184 = metadata !{i32 786445, metadata !160, metadata !159, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !24} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!185 = metadata !{i32 786445, metadata !160, metadata !159, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !186} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!186 = metadata !{i32 786454, metadata !160, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !187} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!187 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!188 = metadata !{i32 786445, metadata !160, metadata !159, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !189} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!189 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!190 = metadata !{i32 786445, metadata !160, metadata !159, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !191} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!191 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!192 = metadata !{i32 786445, metadata !160, metadata !159, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !193} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!193 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !28, metadata !194, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!194 = metadata !{metadata !195}
!195 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!196 = metadata !{i32 786445, metadata !160, metadata !159, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !197} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!197 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!198 = metadata !{i32 786445, metadata !160, metadata !159, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !199} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!199 = metadata !{i32 786454, metadata !160, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !187} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!200 = metadata !{i32 786445, metadata !160, metadata !159, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !197} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!201 = metadata !{i32 786445, metadata !160, metadata !159, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !197} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!202 = metadata !{i32 786445, metadata !160, metadata !159, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !197} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!203 = metadata !{i32 786445, metadata !160, metadata !159, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !197} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!204 = metadata !{i32 786445, metadata !160, metadata !159, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !205} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!205 = metadata !{i32 786454, metadata !160, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !206} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!206 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!207 = metadata !{i32 786445, metadata !160, metadata !159, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !24} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!208 = metadata !{i32 786445, metadata !160, metadata !159, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !209} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!209 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !28, metadata !210, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!210 = metadata !{metadata !211}
!211 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!212 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !213} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!213 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!214 = metadata !{metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !228, metadata !229, metadata !230, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244}
!215 = metadata !{i32 786689, metadata !154, metadata !"ofp", metadata !21, i32 16777549, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ofp] [line 333]
!216 = metadata !{i32 786689, metadata !154, metadata !"aseq1", metadata !21, i32 33554766, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aseq1] [line 334]
!217 = metadata !{i32 786689, metadata !154, metadata !"name1", metadata !21, i32 50331982, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name1] [line 334]
!218 = metadata !{i32 786689, metadata !154, metadata !"spos1", metadata !21, i32 67109198, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [spos1] [line 334]
!219 = metadata !{i32 786689, metadata !154, metadata !"aseq2", metadata !21, i32 83886415, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aseq2] [line 335]
!220 = metadata !{i32 786689, metadata !154, metadata !"name2", metadata !21, i32 100663631, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name2] [line 335]
!221 = metadata !{i32 786689, metadata !154, metadata !"spos2", metadata !21, i32 117440847, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [spos2] [line 335]
!222 = metadata !{i32 786689, metadata !154, metadata !"pam", metadata !21, i32 134218064, metadata !212, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pam] [line 336]
!223 = metadata !{i32 786689, metadata !154, metadata !"indent", metadata !21, i32 150995280, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [indent] [line 336]
!224 = metadata !{i32 786688, metadata !154, metadata !"sname1", metadata !21, i32 338, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sname1] [line 338]
!225 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 88, i64 8, i32 0, i32 0, metadata !28, metadata !226, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 88, align 8, offset 0] [from char]
!226 = metadata !{metadata !227}
!227 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!228 = metadata !{i32 786688, metadata !154, metadata !"sname2", metadata !21, i32 339, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sname2] [line 339]
!229 = metadata !{i32 786688, metadata !154, metadata !"still_going", metadata !21, i32 340, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [still_going] [line 340]
!230 = metadata !{i32 786688, metadata !154, metadata !"buf1", metadata !21, i32 341, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf1] [line 341]
!231 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 488, i64 8, i32 0, i32 0, metadata !28, metadata !232, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 488, align 8, offset 0] [from char]
!232 = metadata !{metadata !233}
!233 = metadata !{i32 786465, i64 0, i64 61}      ; [ DW_TAG_subrange_type ] [0, 60]
!234 = metadata !{i32 786688, metadata !154, metadata !"bufmid", metadata !21, i32 342, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bufmid] [line 342]
!235 = metadata !{i32 786688, metadata !154, metadata !"buf2", metadata !21, i32 343, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf2] [line 343]
!236 = metadata !{i32 786688, metadata !154, metadata !"s1", metadata !21, i32 344, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s1] [line 344]
!237 = metadata !{i32 786688, metadata !154, metadata !"s2", metadata !21, i32 344, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s2] [line 344]
!238 = metadata !{i32 786688, metadata !154, metadata !"count1", metadata !21, i32 345, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count1] [line 345]
!239 = metadata !{i32 786688, metadata !154, metadata !"count2", metadata !21, i32 345, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count2] [line 345]
!240 = metadata !{i32 786688, metadata !154, metadata !"rpos1", metadata !21, i32 346, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rpos1] [line 346]
!241 = metadata !{i32 786688, metadata !154, metadata !"rpos2", metadata !21, i32 346, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rpos2] [line 346]
!242 = metadata !{i32 786688, metadata !154, metadata !"rawcount1", metadata !21, i32 347, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rawcount1] [line 347]
!243 = metadata !{i32 786688, metadata !154, metadata !"rawcount2", metadata !21, i32 347, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rawcount2] [line 347]
!244 = metadata !{i32 786688, metadata !154, metadata !"apos", metadata !21, i32 348, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [apos] [line 348]
!245 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"MingapAlignment", metadata !"MingapAlignment", metadata !"", i32 431, metadata !246, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8**, %struct.aliinfo_s*)* @MingapAlignment, null, null, metadata !248, i32 432} ; [ DW_TAG_subprogram ] [line 431] [def] [scope 432] [MingapAlignment]
!246 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !247, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!247 = metadata !{metadata !24, metadata !26, metadata !29}
!248 = metadata !{metadata !249, metadata !250, metadata !251, metadata !252, metadata !253}
!249 = metadata !{i32 786689, metadata !245, metadata !"aseqs", metadata !21, i32 16777647, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aseqs] [line 431]
!250 = metadata !{i32 786689, metadata !245, metadata !"ainfo", metadata !21, i32 33554863, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ainfo] [line 431]
!251 = metadata !{i32 786688, metadata !245, metadata !"apos", metadata !21, i32 433, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [apos] [line 433]
!252 = metadata !{i32 786688, metadata !245, metadata !"mpos", metadata !21, i32 434, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mpos] [line 434]
!253 = metadata !{i32 786688, metadata !245, metadata !"idx", metadata !21, i32 435, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 435]
!254 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"RandomAlignment", metadata !"RandomAlignment", metadata !"", i32 514, metadata !255, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8**, %struct.seqinfo_s*, i32, float, float, i8***, %struct.aliinfo_s*)* @RandomAlignment, null, null, metadata !259, i32 516} ; [ DW_TAG_subprogram ] [line 514] [def] [scope 516] [RandomAlignment]
!255 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !256, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!256 = metadata !{metadata !24, metadata !26, metadata !257, metadata !24, metadata !39, metadata !39, metadata !25, metadata !29}
!257 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !258} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SQINFO]
!258 = metadata !{i32 786454, metadata !1, null, metadata !"SQINFO", i32 98, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ] [SQINFO] [line 98, size 0, align 0, offset 0] [from seqinfo_s]
!259 = metadata !{metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278}
!260 = metadata !{i32 786689, metadata !254, metadata !"rseqs", metadata !21, i32 16777730, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rseqs] [line 514]
!261 = metadata !{i32 786689, metadata !254, metadata !"sqinfo", metadata !21, i32 33554946, metadata !257, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sqinfo] [line 514]
!262 = metadata !{i32 786689, metadata !254, metadata !"nseq", metadata !21, i32 50332162, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nseq] [line 514]
!263 = metadata !{i32 786689, metadata !254, metadata !"pop", metadata !21, i32 67109378, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pop] [line 514]
!264 = metadata !{i32 786689, metadata !254, metadata !"pex", metadata !21, i32 83886594, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pex] [line 514]
!265 = metadata !{i32 786689, metadata !254, metadata !"ret_aseqs", metadata !21, i32 100663811, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_aseqs] [line 515]
!266 = metadata !{i32 786689, metadata !254, metadata !"ainfo", metadata !21, i32 117441027, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ainfo] [line 515]
!267 = metadata !{i32 786688, metadata !254, metadata !"aseqs", metadata !21, i32 517, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aseqs] [line 517]
!268 = metadata !{i32 786688, metadata !254, metadata !"alen", metadata !21, i32 518, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alen] [line 518]
!269 = metadata !{i32 786688, metadata !254, metadata !"rlen", metadata !21, i32 519, metadata !213, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rlen] [line 519]
!270 = metadata !{i32 786688, metadata !254, metadata !"M", metadata !21, i32 520, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [M] [line 520]
!271 = metadata !{i32 786688, metadata !254, metadata !"ins", metadata !21, i32 521, metadata !212, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ins] [line 521]
!272 = metadata !{i32 786688, metadata !254, metadata !"master_ins", metadata !21, i32 522, metadata !213, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [master_ins] [line 522]
!273 = metadata !{i32 786688, metadata !254, metadata !"apos", metadata !21, i32 523, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [apos] [line 523]
!274 = metadata !{i32 786688, metadata !254, metadata !"rpos", metadata !21, i32 523, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rpos] [line 523]
!275 = metadata !{i32 786688, metadata !254, metadata !"idx", metadata !21, i32 523, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 523]
!276 = metadata !{i32 786688, metadata !254, metadata !"statepos", metadata !21, i32 524, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [statepos] [line 524]
!277 = metadata !{i32 786688, metadata !254, metadata !"count", metadata !21, i32 525, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 525]
!278 = metadata !{i32 786688, metadata !254, metadata !"minlen", metadata !21, i32 526, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [minlen] [line 526]
!279 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"AlignmentHomogenousGapsym", metadata !"AlignmentHomogenousGapsym", metadata !"", i32 635, metadata !280, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8**, i32, i32, i8)* @AlignmentHomogenousGapsym, null, null, metadata !282, i32 636} ; [ DW_TAG_subprogram ] [line 635] [def] [scope 636] [AlignmentHomogenousGapsym]
!280 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !281, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!281 = metadata !{null, metadata !26, metadata !24, metadata !24, metadata !28}
!282 = metadata !{metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288}
!283 = metadata !{i32 786689, metadata !279, metadata !"aseq", metadata !21, i32 16777851, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aseq] [line 635]
!284 = metadata !{i32 786689, metadata !279, metadata !"nseq", metadata !21, i32 33555067, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nseq] [line 635]
!285 = metadata !{i32 786689, metadata !279, metadata !"alen", metadata !21, i32 50332283, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alen] [line 635]
!286 = metadata !{i32 786689, metadata !279, metadata !"gapsym", metadata !21, i32 67109499, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gapsym] [line 635]
!287 = metadata !{i32 786688, metadata !279, metadata !"i", metadata !21, i32 637, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 637]
!288 = metadata !{i32 786688, metadata !279, metadata !"apos", metadata !21, i32 637, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [apos] [line 637]
!289 = metadata !{i32 43, i32 0, metadata !20, null}
!290 = metadata !{i32 786689, metadata !82, metadata !"ainfo", metadata !21, i32 16777296, metadata !29, i32 0, metadata !291} ; [ DW_TAG_arg_variable ] [ainfo] [line 80]
!291 = metadata !{i32 48, i32 0, metadata !20, null}
!292 = metadata !{i32 80, i32 0, metadata !82, metadata !291}
!293 = metadata !{i32 82, i32 0, metadata !82, metadata !291}
!294 = metadata !{i32 84, i32 0, metadata !82, metadata !291}
!295 = metadata !{i32 88, i32 0, metadata !82, metadata !291}
!296 = metadata !{metadata !"int", metadata !297}
!297 = metadata !{metadata !"omnipotent char", metadata !298}
!298 = metadata !{metadata !"Simple C/C++ TBAA"}
!299 = metadata !{i32 93, i32 0, metadata !82, metadata !291}
!300 = metadata !{i32 83, i32 0, metadata !82, metadata !291}
!301 = metadata !{i32 50, i32 0, metadata !20, null}
!302 = metadata !{i32 51, i32 0, metadata !303, null}
!303 = metadata !{i32 786443, metadata !1, metadata !20, i32 51, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!304 = metadata !{i32 52, i32 0, metadata !303, null}
!305 = metadata !{metadata !"any pointer", metadata !297}
!306 = metadata !{i32 54, i32 0, metadata !20, null}
!307 = metadata !{i32 55, i32 0, metadata !20, null}
!308 = metadata !{i32 57, i32 0, metadata !20, null}
!309 = metadata !{i32 58, i32 0, metadata !20, null} ; [ DW_TAG_imported_module ]
!310 = metadata !{i32 60, i32 0, metadata !20, null}
!311 = metadata !{i32 61, i32 0, metadata !312, null}
!312 = metadata !{i32 786443, metadata !1, metadata !20, i32 61, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!313 = metadata !{i32 62, i32 0, metadata !312, null}
!314 = metadata !{i32 64, i32 0, metadata !20, null}
!315 = metadata !{i32 65, i32 0, metadata !20, null}
!316 = metadata !{i32 80, i32 0, metadata !82, null}
!317 = metadata !{i32 82, i32 0, metadata !82, null}
!318 = metadata !{i32 84, i32 0, metadata !82, null}
!319 = metadata !{i32 88, i32 0, metadata !82, null}
!320 = metadata !{i32 93, i32 0, metadata !82, null}
!321 = metadata !{i32 83, i32 0, metadata !82, null}
!322 = metadata !{i32 105, i32 0, metadata !87, null}
!323 = metadata !{i32 109, i32 0, metadata !324, null}
!324 = metadata !{i32 786443, metadata !1, metadata !87, i32 109, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!325 = metadata !{i32 111, i32 0, metadata !326, null}
!326 = metadata !{i32 786443, metadata !1, metadata !324, i32 110, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!327 = metadata !{i32 112, i32 0, metadata !326, null}
!328 = metadata !{i32 114, i32 0, metadata !87, null}
!329 = metadata !{i32 115, i32 0, metadata !87, null}
!330 = metadata !{i32 116, i32 0, metadata !87, null}
!331 = metadata !{i32 117, i32 0, metadata !87, null}
!332 = metadata !{i32 118, i32 0, metadata !87, null}
!333 = metadata !{i32 119, i32 0, metadata !87, null}
!334 = metadata !{i32 121, i32 0, metadata !87, null}
!335 = metadata !{i32 122, i32 0, metadata !87, null}
!336 = metadata !{i32 123, i32 0, metadata !87, null}
!337 = metadata !{i32 124, i32 0, metadata !87, null}
!338 = metadata !{i32 144, i32 0, metadata !94, null}
!339 = metadata !{i32 151, i32 0, metadata !340, null}
!340 = metadata !{i32 786443, metadata !1, metadata !94, i32 151, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!341 = metadata !{i32 155, i32 0, metadata !342, null}
!342 = metadata !{i32 786443, metadata !1, metadata !343, i32 155, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!343 = metadata !{i32 786443, metadata !1, metadata !340, i32 152, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!344 = metadata !{i32 157, i32 0, metadata !345, null}
!345 = metadata !{i32 786443, metadata !1, metadata !342, i32 156, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!346 = metadata !{i32 158, i32 0, metadata !345, null}
!347 = metadata !{metadata !"short", metadata !297}
!348 = metadata !{i32 159, i32 0, metadata !345, null}
!349 = metadata !{i32 1}
!350 = metadata !{i8 45}
!351 = metadata !{i32 162, i32 0, metadata !343, null}
!352 = metadata !{i32 163, i32 0, metadata !343, null}
!353 = metadata !{i8 46}
!354 = metadata !{i32 166, i32 0, metadata !355, null}
!355 = metadata !{i32 786443, metadata !1, metadata !343, i32 166, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!356 = metadata !{i32 167, i32 0, metadata !355, null}
!357 = metadata !{i32 169, i32 0, metadata !94, null}
!358 = metadata !{i32 190, i32 0, metadata !107, null}
!359 = metadata !{i32 196, i32 0, metadata !123, null}
!360 = metadata !{i32 200, i32 0, metadata !361, null}
!361 = metadata !{i32 786443, metadata !1, metadata !122, i32 200, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!362 = metadata !{i32 204, i32 0, metadata !122, null}
!363 = metadata !{i32 201, i32 0, metadata !361, null}
!364 = metadata !{i32 206, i32 0, metadata !120, null}
!365 = metadata !{i32 212, i32 0, metadata !126, null}
!366 = metadata !{i32 207, i32 0, metadata !120, null}
!367 = metadata !{i32 208, i32 0, metadata !368, null}
!368 = metadata !{i32 786443, metadata !1, metadata !119, i32 208, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!369 = metadata !{i32 208, i32 0, metadata !119, null}
!370 = metadata !{i32 213, i32 0, metadata !126, null}
!371 = metadata !{i32 214, i32 0, metadata !372, null}
!372 = metadata !{i32 786443, metadata !1, metadata !125, i32 214, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!373 = metadata !{i32 214, i32 0, metadata !125, null}
!374 = metadata !{i32 217, i32 0, metadata !107, null}
!375 = metadata !{i32 237, i32 0, metadata !128, null}
!376 = metadata !{i32 242, i32 0, metadata !128, null}
!377 = metadata !{i32 243, i32 0, metadata !378, null}
!378 = metadata !{i32 786443, metadata !1, metadata !128, i32 243, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!379 = metadata !{i32 244, i32 0, metadata !378, null}
!380 = metadata !{i32 246, i32 0, metadata !381, null}
!381 = metadata !{i32 786443, metadata !1, metadata !378, i32 245, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!382 = metadata !{i32 247, i32 0, metadata !381, null}
!383 = metadata !{i32 248, i32 0, metadata !381, null}
!384 = metadata !{i32 250, i32 0, metadata !378, null}
!385 = metadata !{i32 251, i32 0, metadata !128, null}
!386 = metadata !{i32 253, i32 0, metadata !128, null}
!387 = metadata !{i32 254, i32 0, metadata !388, null}
!388 = metadata !{i32 786443, metadata !1, metadata !128, i32 254, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!389 = metadata !{i32 255, i32 0, metadata !128, null}
!390 = metadata !{i32 256, i32 0, metadata !128, null}
!391 = metadata !{i32 275, i32 0, metadata !139, null}
!392 = metadata !{i32 280, i32 0, metadata !139, null}
!393 = metadata !{i32 281, i32 0, metadata !394, null}
!394 = metadata !{i32 786443, metadata !1, metadata !139, i32 281, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!395 = metadata !{i32 282, i32 0, metadata !394, null}
!396 = metadata !{i32 284, i32 0, metadata !397, null}
!397 = metadata !{i32 786443, metadata !1, metadata !394, i32 283, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!398 = metadata !{i32 285, i32 0, metadata !397, null}
!399 = metadata !{i32 286, i32 0, metadata !397, null}
!400 = metadata !{i32 287, i32 0, metadata !139, null}
!401 = metadata !{i32 288, i32 0, metadata !139, null}
!402 = metadata !{i32 289, i32 0, metadata !403, null}
!403 = metadata !{i32 786443, metadata !1, metadata !139, i32 289, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!404 = metadata !{i32 290, i32 0, metadata !139, null}
!405 = metadata !{i32 291, i32 0, metadata !139, null}
!406 = metadata !{i32 305, i32 0, metadata !148, null}
!407 = metadata !{i32 308, i32 0, metadata !408, null}
!408 = metadata !{i32 786443, metadata !1, metadata !148, i32 308, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!409 = metadata !{i32 309, i32 0, metadata !408, null}
!410 = metadata !{i32 310, i32 0, metadata !148, null}
!411 = metadata !{i32 333, i32 0, metadata !154, null}
!412 = metadata !{i32 334, i32 0, metadata !154, null}
!413 = metadata !{i32 335, i32 0, metadata !154, null}
!414 = metadata !{i32 336, i32 0, metadata !154, null}
!415 = metadata !{i32 338, i32 0, metadata !154, null}
!416 = metadata !{i32 339, i32 0, metadata !154, null}
!417 = metadata !{i32 341, i32 0, metadata !154, null}
!418 = metadata !{i32 342, i32 0, metadata !154, null}
!419 = metadata !{i32 343, i32 0, metadata !154, null}
!420 = metadata !{i32 350, i32 0, metadata !154, null}
!421 = metadata !{i32 351, i32 0, metadata !154, null}
!422 = metadata !{i32 352, i32 0, metadata !154, null}
!423 = metadata !{i32 354, i32 0, metadata !154, null}
!424 = metadata !{i32 355, i32 0, metadata !154, null}
!425 = metadata !{i32 356, i32 0, metadata !154, null}
!426 = metadata !{i32 358, i32 0, metadata !154, null}
!427 = metadata !{i32 359, i32 0, metadata !154, null}
!428 = metadata !{i32 360, i32 0, metadata !154, null}
!429 = metadata !{i32 361, i32 0, metadata !154, null}
!430 = metadata !{i32 363, i32 0, metadata !154, null}
!431 = metadata !{i32 369, i32 0, metadata !432, null}
!432 = metadata !{i32 786443, metadata !1, metadata !154, i32 365, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!433 = metadata !{i32 370, i32 0, metadata !432, null}
!434 = metadata !{i32 364, i32 0, metadata !154, null}
!435 = metadata !{i32 366, i32 0, metadata !432, null}
!436 = metadata !{i32 371, i32 0, metadata !432, null}
!437 = metadata !{i32 372, i32 0, metadata !432, null}
!438 = metadata !{i32 375, i32 0, metadata !432, null}
!439 = metadata !{i32 377, i32 0, metadata !432, null}
!440 = metadata !{i32 380, i32 0, metadata !432, null}
!441 = metadata !{i32 381, i32 0, metadata !432, null}
!442 = metadata !{i32 384, i32 0, metadata !443, null}
!443 = metadata !{i32 786443, metadata !1, metadata !432, i32 384, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!444 = metadata !{i32 386, i32 0, metadata !445, null}
!445 = metadata !{i32 786443, metadata !1, metadata !443, i32 385, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!446 = metadata !{i32 388, i32 0, metadata !447, null}
!447 = metadata !{i32 786443, metadata !1, metadata !445, i32 387, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!448 = metadata !{i32 389, i32 0, metadata !447, null}
!449 = metadata !{i32 390, i32 0, metadata !447, null}
!450 = metadata !{i32 391, i32 0, metadata !447, null}
!451 = metadata !{i32 393, i32 0, metadata !447, null}
!452 = metadata !{i32 396, i32 0, metadata !445, null}
!453 = metadata !{i32 398, i32 0, metadata !432, null}
!454 = metadata !{i32 400, i32 0, metadata !432, null}
!455 = metadata !{i32 401, i32 0, metadata !456, null}
!456 = metadata !{i32 786443, metadata !1, metadata !432, i32 401, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!457 = metadata !{i32 402, i32 0, metadata !456, null}
!458 = metadata !{i32 405, i32 0, metadata !459, null}
!459 = metadata !{i32 786443, metadata !1, metadata !432, i32 405, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!460 = metadata !{i32 406, i32 0, metadata !459, null}
!461 = metadata !{i32 408, i32 0, metadata !432, null}
!462 = metadata !{i32 410, i32 0, metadata !432, null}
!463 = metadata !{i32 412, i32 0, metadata !432, null}
!464 = metadata !{i32 414, i32 0, metadata !432, null}
!465 = metadata !{i32 416, i32 0, metadata !432, null}
!466 = metadata !{i32 417, i32 0, metadata !432, null}
!467 = metadata !{i32 420, i32 0, metadata !154, null}
!468 = metadata !{i32 421, i32 0, metadata !154, null}
!469 = metadata !{i32 431, i32 0, metadata !245, null}
!470 = metadata !{i32 439, i32 0, metadata !471, null}
!471 = metadata !{i32 786443, metadata !1, metadata !245, i32 439, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!472 = metadata !{i32 442, i32 0, metadata !473, null}
!473 = metadata !{i32 786443, metadata !1, metadata !474, i32 442, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!474 = metadata !{i32 786443, metadata !1, metadata !471, i32 440, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!475 = metadata !{i32 459, i32 0, metadata !476, null}
!476 = metadata !{i32 786443, metadata !1, metadata !245, i32 459, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!477 = metadata !{i32 453, i32 0, metadata !478, null}
!478 = metadata !{i32 786443, metadata !1, metadata !474, i32 449, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!479 = metadata !{i32 454, i32 0, metadata !478, null}
!480 = metadata !{i32 460, i32 0, metadata !476, null}
!481 = metadata !{i32 443, i32 0, metadata !473, null}
!482 = metadata !{i32 445, i32 0, metadata !474, null}
!483 = metadata !{i32 448, i32 0, metadata !474, null}
!484 = metadata !{i32 450, i32 0, metadata !485, null}
!485 = metadata !{i32 786443, metadata !1, metadata !478, i32 450, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!486 = metadata !{i32 451, i32 0, metadata !485, null}
!487 = metadata !{i32 456, i32 0, metadata !474, null}
!488 = metadata !{i32 457, i32 0, metadata !474, null}
!489 = metadata !{i32 461, i32 0, metadata !245, null}
!490 = metadata !{i32 462, i32 0, metadata !245, null}
!491 = metadata !{i32 463, i32 0, metadata !245, null}
!492 = metadata !{i32 464, i32 0, metadata !245, null}
!493 = metadata !{i32 514, i32 0, metadata !254, null}
!494 = metadata !{i32 515, i32 0, metadata !254, null}
!495 = metadata !{i32 530, i32 0, metadata !254, null}
!496 = metadata !{i32 531, i32 0, metadata !254, null}
!497 = metadata !{i32 9999999}
!498 = metadata !{i32 532, i32 0, metadata !254, null}
!499 = metadata !{i32 533, i32 0, metadata !500, null}
!500 = metadata !{i32 786443, metadata !1, metadata !254, i32 533, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!501 = metadata !{i32 535, i32 0, metadata !502, null}
!502 = metadata !{i32 786443, metadata !1, metadata !500, i32 534, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!503 = metadata !{i32 536, i32 0, metadata !502, null}
!504 = metadata !{i32 537, i32 0, metadata !502, null}
!505 = metadata !{i32 539, i32 0, metadata !254, null}
!506 = metadata !{i32 540, i32 0, metadata !254, null}
!507 = metadata !{i32 541, i32 0, metadata !254, null}
!508 = metadata !{i32 545, i32 0, metadata !254, null}
!509 = metadata !{i32 546, i32 0, metadata !254, null}
!510 = metadata !{i32 547, i32 0, metadata !511, null}
!511 = metadata !{i32 786443, metadata !1, metadata !254, i32 547, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!512 = metadata !{i32 550, i32 0, metadata !513, null}
!513 = metadata !{i32 786443, metadata !1, metadata !514, i32 550, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!514 = metadata !{i32 786443, metadata !1, metadata !511, i32 548, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!515 = metadata !{i32 549, i32 0, metadata !514, null}
!516 = metadata !{i32 551, i32 0, metadata !513, null}
!517 = metadata !{i32 554, i32 0, metadata !254, null}
!518 = metadata !{i32 555, i32 0, metadata !254, null}
!519 = metadata !{i32 557, i32 0, metadata !520, null}
!520 = metadata !{i32 786443, metadata !1, metadata !254, i32 557, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!521 = metadata !{i32 563, i32 0, metadata !522, null}
!522 = metadata !{i32 786443, metadata !1, metadata !523, i32 561, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!523 = metadata !{i32 786443, metadata !1, metadata !524, i32 560, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!524 = metadata !{i32 786443, metadata !1, metadata !520, i32 558, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!525 = metadata !{i32 560, i32 0, metadata !523, null}
!526 = metadata !{i32 564, i32 0, metadata !522, null}
!527 = metadata !{i32 569, i32 0, metadata !528, null}
!528 = metadata !{i32 786443, metadata !1, metadata !254, i32 569, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!529 = metadata !{i32 562, i32 0, metadata !522, null}
!530 = metadata !{i32 571, i32 0, metadata !531, null}
!531 = metadata !{i32 786443, metadata !1, metadata !528, i32 570, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!532 = metadata !{i32 572, i32 0, metadata !533, null}
!533 = metadata !{i32 786443, metadata !1, metadata !531, i32 572, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!534 = metadata !{i32 573, i32 0, metadata !533, null}
!535 = metadata !{i32 574, i32 0, metadata !533, null}
!536 = metadata !{i32 575, i32 0, metadata !531, null}
!537 = metadata !{i32 581, i32 0, metadata !254, null}
!538 = metadata !{i32 582, i32 0, metadata !539, null}
!539 = metadata !{i32 786443, metadata !1, metadata !254, i32 582, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!540 = metadata !{i32 583, i32 0, metadata !539, null}
!541 = metadata !{i32 584, i32 0, metadata !542, null}
!542 = metadata !{i32 786443, metadata !1, metadata !254, i32 584, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!543 = metadata !{i32 598, i32 0, metadata !544, null}
!544 = metadata !{i32 786443, metadata !1, metadata !542, i32 585, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!545 = metadata !{i32 588, i32 0, metadata !546, null}
!546 = metadata !{i32 786443, metadata !1, metadata !544, i32 588, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!547 = metadata !{i32 590, i32 0, metadata !548, null}
!548 = metadata !{i32 786443, metadata !1, metadata !549, i32 590, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!549 = metadata !{i32 786443, metadata !1, metadata !546, i32 589, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!550 = metadata !{i32 591, i32 0, metadata !548, null}
!551 = metadata !{i32 592, i32 0, metadata !552, null}
!552 = metadata !{i32 786443, metadata !1, metadata !549, i32 592, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!553 = metadata !{i32 593, i32 0, metadata !552, null}
!554 = metadata !{i32 595, i32 0, metadata !549, null}
!555 = metadata !{i32 596, i32 0, metadata !549, null}
!556 = metadata !{i32 600, i32 0, metadata !254, null}
!557 = metadata !{i32 601, i32 0, metadata !254, null}
!558 = metadata !{i32 602, i32 0, metadata !254, null}
!559 = metadata !{i32 603, i32 0, metadata !254, null}
!560 = metadata !{i32 604, i32 0, metadata !561, null}
!561 = metadata !{i32 786443, metadata !1, metadata !254, i32 604, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!562 = metadata !{i32 605, i32 0, metadata !561, null}
!563 = metadata !{i32 607, i32 0, metadata !254, null}
!564 = metadata !{i32 608, i32 0, metadata !254, null}
!565 = metadata !{i32 609, i32 0, metadata !254, null}
!566 = metadata !{i32 610, i32 0, metadata !254, null}
!567 = metadata !{i32 611, i32 0, metadata !254, null}
!568 = metadata !{i32 635, i32 0, metadata !279, null}
!569 = metadata !{i32 639, i32 0, metadata !570, null}
!570 = metadata !{i32 786443, metadata !1, metadata !279, i32 639, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!571 = metadata !{i32 640, i32 0, metadata !572, null}
!572 = metadata !{i32 786443, metadata !1, metadata !570, i32 640, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alignio.c]
!573 = metadata !{i32 641, i32 0, metadata !572, null}
!574 = metadata !{i32 642, i32 0, metadata !279, null}

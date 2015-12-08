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
  %name.i = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 7
  %cs.i = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 4
  %flags.i = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 0
  store i32 0, i32* %flags.i, align 4, !tbaa !0
  %0 = bitcast i8** %cs.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 8, i1 false) #6
  %1 = bitcast i8** %name.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 56, i32 8, i1 false) #6
  %conv = sext i32 %nseq to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 50, i64 %mul) #7
  %2 = bitcast i8* %call to i8**
  %cmp44 = icmp sgt i32 %nseq, 0
  br i1 %cmp44, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add = add nsw i32 %alen, 1
  %conv2 = sext i32 %add to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv46 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next47, %for.body ]
  %call4 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 52, i64 %conv2) #7
  %arrayidx = getelementptr inbounds i8** %2, i64 %indvars.iv46
  store i8* %call4, i8** %arrayidx, align 8, !tbaa !3
  %indvars.iv.next47 = add i64 %indvars.iv46, 1
  %lftr.wideiv48 = trunc i64 %indvars.iv.next47 to i32
  %exitcond49 = icmp eq i32 %lftr.wideiv48, %nseq
  br i1 %exitcond49, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %alen5 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 1
  store i32 %alen, i32* %alen5, align 4, !tbaa !0
  %nseq6 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 2
  store i32 %nseq, i32* %nseq6, align 4, !tbaa !0
  %mul8 = shl nsw i64 %conv, 2
  %call9 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 57, i64 %mul8) #7
  %3 = bitcast i8* %call9 to float*
  %wgt = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 3
  store float* %3, float** %wgt, align 8, !tbaa !3
  tail call void @FSet(float* %3, i32 %nseq, float 1.000000e+00) #7
  %mul12 = mul i64 %conv, 360
  %call13 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 60, i64 %mul12) #7
  %4 = bitcast i8* %call13 to %struct.seqinfo_s*
  %sqinfo = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 6
  store %struct.seqinfo_s* %4, %struct.seqinfo_s** %sqinfo, align 8, !tbaa !3
  br i1 %cmp44, label %for.body17, label %for.end23

for.body17:                                       ; preds = %for.end, %for.body17
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body17 ], [ 0, %for.end ]
  %flags = getelementptr inbounds %struct.seqinfo_s* %4, i64 %indvars.iv, i32 0
  store i32 0, i32* %flags, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq
  br i1 %exitcond, label %for.end23, label %for.body17

for.end23:                                        ; preds = %for.body17, %for.end
  store i8** %2, i8*** %ret_aseq, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InitAinfo(%struct.aliinfo_s* nocapture %ainfo) #0 {
entry:
  %name = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 7
  %cs = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 4
  %flags = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 0
  store i32 0, i32* %flags, align 4, !tbaa !0
  %0 = bitcast i8** %cs to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 8, i1 false)
  %1 = bitcast i8** %name to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 56, i32 8, i1 false)
  ret void
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: optsize
declare void @FSet(float*, i32, float) #1

; Function Attrs: nounwind optsize uwtable
define void @FreeAlignment(i8** %aseqs, %struct.aliinfo_s* nocapture %ainfo) #0 {
entry:
  %nseq = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 2
  %0 = load i32* %nseq, align 4, !tbaa !0
  %cmp65 = icmp sgt i32 %0, 0
  br i1 %cmp65, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sqinfo = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %1 = load %struct.seqinfo_s** %sqinfo, align 8, !tbaa !3
  %flags = getelementptr inbounds %struct.seqinfo_s* %1, i64 %indvars.iv, i32 0
  %2 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %2, 512
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %ss = getelementptr inbounds %struct.seqinfo_s* %1, i64 %indvars.iv, i32 10
  %3 = load i8** %ss, align 8, !tbaa !3
  tail call void @free(i8* %3) #7
  %.pre = load %struct.seqinfo_s** %sqinfo, align 8, !tbaa !3
  %flags7.phi.trans.insert = getelementptr inbounds %struct.seqinfo_s* %.pre, i64 %indvars.iv, i32 0
  %.pre67 = load i32* %flags7.phi.trans.insert, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %for.body, %if.then
  %4 = phi i32 [ %2, %for.body ], [ %.pre67, %if.then ]
  %5 = phi %struct.seqinfo_s* [ %1, %for.body ], [ %.pre, %if.then ]
  %and8 = and i32 %4, 1024
  %tobool9 = icmp eq i32 %and8, 0
  br i1 %tobool9, label %for.inc, label %if.then10

if.then10:                                        ; preds = %if.end
  %sa = getelementptr inbounds %struct.seqinfo_s* %5, i64 %indvars.iv, i32 11
  %6 = load i8** %sa, align 8, !tbaa !3
  tail call void @free(i8* %6) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then10
  %indvars.iv.next = add i64 %indvars.iv, 1
  %7 = load i32* %nseq, align 4, !tbaa !0
  %8 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %8, %7
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  %cs = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 4
  %9 = load i8** %cs, align 8, !tbaa !3
  %cmp15 = icmp eq i8* %9, null
  br i1 %cmp15, label %if.end18, label %if.then16

if.then16:                                        ; preds = %for.end
  tail call void @free(i8* %9) #7
  br label %if.end18

if.end18:                                         ; preds = %for.end, %if.then16
  %rf = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 5
  %10 = load i8** %rf, align 8, !tbaa !3
  %cmp19 = icmp eq i8* %10, null
  br i1 %cmp19, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end18
  tail call void @free(i8* %10) #7
  br label %if.end22

if.end22:                                         ; preds = %if.end18, %if.then20
  %name = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 7
  %11 = load i8** %name, align 8, !tbaa !3
  %cmp23 = icmp eq i8* %11, null
  br i1 %cmp23, label %if.end26, label %if.then24

if.then24:                                        ; preds = %if.end22
  tail call void @free(i8* %11) #7
  br label %if.end26

if.end26:                                         ; preds = %if.end22, %if.then24
  %desc = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 8
  %12 = load i8** %desc, align 8, !tbaa !3
  %cmp27 = icmp eq i8* %12, null
  br i1 %cmp27, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end26
  tail call void @free(i8* %12) #7
  br label %if.end30

if.end30:                                         ; preds = %if.end26, %if.then28
  %acc = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 9
  %13 = load i8** %acc, align 8, !tbaa !3
  %cmp31 = icmp eq i8* %13, null
  br i1 %cmp31, label %if.end34, label %if.then32

if.then32:                                        ; preds = %if.end30
  tail call void @free(i8* %13) #7
  br label %if.end34

if.end34:                                         ; preds = %if.end30, %if.then32
  %au = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 10
  %14 = load i8** %au, align 8, !tbaa !3
  %cmp35 = icmp eq i8* %14, null
  br i1 %cmp35, label %if.end38, label %if.then36

if.then36:                                        ; preds = %if.end34
  tail call void @free(i8* %14) #7
  br label %if.end38

if.end38:                                         ; preds = %if.end34, %if.then36
  %sqinfo39 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 6
  %15 = load %struct.seqinfo_s** %sqinfo39, align 8, !tbaa !3
  %16 = bitcast %struct.seqinfo_s* %15 to i8*
  tail call void @free(i8* %16) #7
  %wgt = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 3
  %17 = load float** %wgt, align 8, !tbaa !3
  %18 = bitcast float* %17 to i8*
  tail call void @free(i8* %18) #7
  %19 = load i32* %nseq, align 4, !tbaa !0
  tail call void @Free2DArray(i8** %aseqs, i32 %19) #7
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: optsize
declare void @Free2DArray(i8**, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @SAMizeAlignment(i8** nocapture %aseq, i32 %nseq, i32 %alen) #0 {
entry:
  %cmp170 = icmp sgt i32 %alen, 0
  br i1 %cmp170, label %for.cond1.preheader.lr.ph, label %for.end120

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp2163 = icmp sgt i32 %nseq, 0
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc118, %for.cond1.preheader.lr.ph
  %indvars.iv176 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next177, %for.inc118 ]
  br i1 %cmp2163, label %for.body3, label %for.inc118

for.body3:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1.preheader ]
  %sawupper.0166 = phi i32 [ %sawupper.1, %for.inc ], [ 0, %for.cond1.preheader ]
  %sawlower.0165 = phi i32 [ %sawlower.1, %for.inc ], [ 0, %for.cond1.preheader ]
  %arrayidx = getelementptr inbounds i8** %aseq, i64 %indvars.iv
  %0 = load i8** %arrayidx, align 8, !tbaa !3
  %arrayidx5 = getelementptr inbounds i8* %0, i64 %indvars.iv176
  %1 = load i8* %arrayidx5, align 1, !tbaa !1
  switch i8 %1, label %if.end [
    i8 32, label %for.inc
    i8 46, label %for.inc
    i8 95, label %for.inc
    i8 45, label %for.inc
    i8 126, label %for.inc
  ]

if.end:                                           ; preds = %for.body3
  %idxprom44 = sext i8 %1 to i64
  %call = tail call i16** @__ctype_b_loc() #8
  %2 = load i16** %call, align 8, !tbaa !3
  %arrayidx45 = getelementptr inbounds i16* %2, i64 %idxprom44
  %3 = load i16* %arrayidx45, align 2, !tbaa !4
  %conv46 = zext i16 %3 to i32
  %and = and i32 %conv46, 256
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end48, label %for.inc

if.end48:                                         ; preds = %if.end
  %and58 = and i32 %conv46, 512
  %tobool59 = icmp eq i32 %and58, 0
  %sawlower.0. = select i1 %tobool59, i32 %sawlower.0165, i32 1
  br label %for.inc

for.inc:                                          ; preds = %if.end48, %if.end, %for.body3, %for.body3, %for.body3, %for.body3, %for.body3
  %sawlower.1 = phi i32 [ %sawlower.0165, %for.body3 ], [ %sawlower.0165, %for.body3 ], [ %sawlower.0165, %for.body3 ], [ %sawlower.0165, %for.body3 ], [ %sawlower.0165, %for.body3 ], [ %sawlower.0165, %if.end ], [ %sawlower.0., %if.end48 ]
  %sawupper.1 = phi i32 [ %sawupper.0166, %for.body3 ], [ %sawupper.0166, %for.body3 ], [ %sawupper.0166, %for.body3 ], [ %sawupper.0166, %for.body3 ], [ %sawupper.0166, %for.body3 ], [ 1, %if.end ], [ %sawupper.0166, %if.end48 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq
  br i1 %exitcond, label %for.end, label %for.body3

for.end:                                          ; preds = %for.inc
  %tobool62 = icmp ne i32 %sawlower.1, 0
  %tobool63 = icmp eq i32 %sawupper.1, 0
  %or.cond = and i1 %tobool62, %tobool63
  %gapchar.0 = select i1 %or.cond, i8 46, i8 45
  br i1 %cmp2163, label %for.body69, label %for.inc118

for.body69:                                       ; preds = %for.end, %for.inc115
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %for.inc115 ], [ 0, %for.end ]
  %arrayidx72 = getelementptr inbounds i8** %aseq, i64 %indvars.iv172
  %4 = load i8** %arrayidx72, align 8, !tbaa !3
  %arrayidx73 = getelementptr inbounds i8* %4, i64 %indvars.iv176
  %5 = load i8* %arrayidx73, align 1, !tbaa !1
  switch i8 %5, label %for.inc115 [
    i8 32, label %if.then109
    i8 46, label %if.then109
    i8 95, label %if.then109
    i8 45, label %if.then109
    i8 126, label %if.then109
  ]

if.then109:                                       ; preds = %for.body69, %for.body69, %for.body69, %for.body69, %for.body69
  store i8 %gapchar.0, i8* %arrayidx73, align 1, !tbaa !1
  br label %for.inc115

for.inc115:                                       ; preds = %for.body69, %if.then109
  %indvars.iv.next173 = add i64 %indvars.iv172, 1
  %lftr.wideiv174 = trunc i64 %indvars.iv.next173 to i32
  %exitcond175 = icmp eq i32 %lftr.wideiv174, %nseq
  br i1 %exitcond175, label %for.inc118, label %for.body69

for.inc118:                                       ; preds = %for.cond1.preheader, %for.inc115, %for.end
  %indvars.iv.next177 = add i64 %indvars.iv176, 1
  %lftr.wideiv178 = trunc i64 %indvars.iv.next177 to i32
  %exitcond179 = icmp eq i32 %lftr.wideiv178, %alen
  br i1 %exitcond179, label %for.end120, label %for.cond1.preheader

for.end120:                                       ; preds = %for.inc118, %entry
  ret void
}

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind optsize uwtable
define void @SAMizeAlignmentByGapFrac(i8** nocapture %aseq, i32 %nseq, i32 %alen, float %maxgap) #0 {
entry:
  %cmp257 = icmp sgt i32 %alen, 0
  br i1 %cmp257, label %for.cond1.preheader.lr.ph, label %for.end176

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp2249 = icmp sgt i32 %nseq, 0
  %conv41 = sitofp i32 %nseq to float
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc174, %for.cond1.preheader.lr.ph
  %indvars.iv267 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next268, %for.inc174 ]
  br i1 %cmp2249, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1.preheader ]
  %ngap.0250 = phi i32 [ %ngap.1, %for.inc ], [ 0, %for.cond1.preheader ]
  %arrayidx = getelementptr inbounds i8** %aseq, i64 %indvars.iv
  %0 = load i8** %arrayidx, align 8, !tbaa !3
  %arrayidx5 = getelementptr inbounds i8* %0, i64 %indvars.iv267
  %1 = load i8* %arrayidx5, align 1, !tbaa !1
  switch i8 %1, label %for.inc [
    i8 32, label %if.then
    i8 46, label %if.then
    i8 95, label %if.then
    i8 45, label %if.then
    i8 126, label %if.then
  ]

if.then:                                          ; preds = %for.body3, %for.body3, %for.body3, %for.body3, %for.body3
  %inc = add nsw i32 %ngap.0250, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body3, %if.then
  %ngap.1 = phi i32 [ %inc, %if.then ], [ %ngap.0250, %for.body3 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq
  br i1 %exitcond, label %for.end, label %for.body3

for.end:                                          ; preds = %for.inc, %for.cond1.preheader
  %ngap.0.lcssa = phi i32 [ 0, %for.cond1.preheader ], [ %ngap.1, %for.inc ]
  %conv40 = sitofp i32 %ngap.0.lcssa to float
  %div = fdiv float %conv40, %conv41
  %cmp42 = fcmp ogt float %div, %maxgap
  br i1 %cmp42, label %for.cond45.preheader, label %for.cond108.preheader

for.cond45.preheader:                             ; preds = %for.end
  br i1 %cmp2249, label %for.body48, label %for.inc174

for.cond108.preheader:                            ; preds = %for.end
  br i1 %cmp2249, label %for.body111, label %for.inc174

for.body48:                                       ; preds = %for.cond45.preheader, %for.inc104
  %indvars.iv263 = phi i64 [ %indvars.iv.next264, %for.inc104 ], [ 0, %for.cond45.preheader ]
  %arrayidx51 = getelementptr inbounds i8** %aseq, i64 %indvars.iv263
  %2 = load i8** %arrayidx51, align 8, !tbaa !3
  %arrayidx52 = getelementptr inbounds i8* %2, i64 %indvars.iv267
  %3 = load i8* %arrayidx52, align 1, !tbaa !1
  switch i8 %3, label %if.else [
    i8 32, label %if.then88
    i8 46, label %if.then88
    i8 95, label %if.then88
    i8 45, label %if.then88
    i8 126, label %if.then88
  ]

if.then88:                                        ; preds = %for.body48, %for.body48, %for.body48, %for.body48, %for.body48
  store i8 46, i8* %arrayidx52, align 1, !tbaa !1
  br label %for.inc104

if.else:                                          ; preds = %for.body48
  %conv53 = sext i8 %3 to i32
  %call = tail call i32 @tolower(i32 %conv53) #7
  %conv98 = trunc i32 %call to i8
  %4 = load i8** %arrayidx51, align 8, !tbaa !3
  %arrayidx102 = getelementptr inbounds i8* %4, i64 %indvars.iv267
  store i8 %conv98, i8* %arrayidx102, align 1, !tbaa !1
  br label %for.inc104

for.inc104:                                       ; preds = %if.then88, %if.else
  %indvars.iv.next264 = add i64 %indvars.iv263, 1
  %lftr.wideiv265 = trunc i64 %indvars.iv.next264 to i32
  %exitcond266 = icmp eq i32 %lftr.wideiv265, %nseq
  br i1 %exitcond266, label %for.inc174, label %for.body48

for.body111:                                      ; preds = %for.cond108.preheader, %for.inc170
  %indvars.iv259 = phi i64 [ %indvars.iv.next260, %for.inc170 ], [ 0, %for.cond108.preheader ]
  %arrayidx114 = getelementptr inbounds i8** %aseq, i64 %indvars.iv259
  %5 = load i8** %arrayidx114, align 8, !tbaa !3
  %arrayidx115 = getelementptr inbounds i8* %5, i64 %indvars.iv267
  %6 = load i8* %arrayidx115, align 1, !tbaa !1
  switch i8 %6, label %if.else156 [
    i8 32, label %if.then151
    i8 46, label %if.then151
    i8 95, label %if.then151
    i8 45, label %if.then151
    i8 126, label %if.then151
  ]

if.then151:                                       ; preds = %for.body111, %for.body111, %for.body111, %for.body111, %for.body111
  store i8 45, i8* %arrayidx115, align 1, !tbaa !1
  br label %for.inc170

if.else156:                                       ; preds = %for.body111
  %conv116 = sext i8 %6 to i32
  %call163 = tail call i32 @toupper(i32 %conv116) #7
  %conv164 = trunc i32 %call163 to i8
  %7 = load i8** %arrayidx114, align 8, !tbaa !3
  %arrayidx168 = getelementptr inbounds i8* %7, i64 %indvars.iv267
  store i8 %conv164, i8* %arrayidx168, align 1, !tbaa !1
  br label %for.inc170

for.inc170:                                       ; preds = %if.then151, %if.else156
  %indvars.iv.next260 = add i64 %indvars.iv259, 1
  %lftr.wideiv261 = trunc i64 %indvars.iv.next260 to i32
  %exitcond262 = icmp eq i32 %lftr.wideiv261, %nseq
  br i1 %exitcond262, label %for.inc174, label %for.body111

for.inc174:                                       ; preds = %for.cond45.preheader, %for.inc104, %for.cond108.preheader, %for.inc170
  %indvars.iv.next268 = add i64 %indvars.iv267, 1
  %lftr.wideiv269 = trunc i64 %indvars.iv.next268 to i32
  %exitcond270 = icmp eq i32 %lftr.wideiv269, %alen
  br i1 %exitcond270, label %for.end176, label %for.cond1.preheader

for.end176:                                       ; preds = %for.inc174, %entry
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @tolower(i32) #2

; Function Attrs: nounwind optsize
declare i32 @toupper(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @MakeAlignedString(i8* nocapture %aseq, i32 %alen, i8* nocapture %ss, i8** nocapture %ret_s) #0 {
entry:
  %add = add nsw i32 %alen, 1
  %conv = sext i32 %add to i64
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 242, i64 %conv) #7
  %cmp63 = icmp sgt i32 %alen, 0
  br i1 %cmp63, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %0 = add i32 %alen, -1
  %1 = zext i32 %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %rpos.065 = phi i32 [ 0, %for.body.lr.ph ], [ %rpos.1, %for.inc ]
  %arrayidx = getelementptr inbounds i8* %aseq, i64 %indvars.iv
  %2 = load i8* %arrayidx, align 1, !tbaa !1
  switch i8 %2, label %if.then [
    i8 32, label %if.else
    i8 46, label %if.else
    i8 95, label %if.else
    i8 45, label %if.else
    i8 126, label %if.else
  ]

if.then:                                          ; preds = %for.body
  %idxprom28 = sext i32 %rpos.065 to i64
  %arrayidx29 = getelementptr inbounds i8* %ss, i64 %idxprom28
  %3 = load i8* %arrayidx29, align 1, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8* %call, i64 %indvars.iv
  store i8 %3, i8* %arrayidx31, align 1, !tbaa !1
  %inc = add nsw i32 %rpos.065, 1
  br label %for.inc

if.else:                                          ; preds = %for.body, %for.body, %for.body, %for.body, %for.body
  %arrayidx33 = getelementptr inbounds i8* %call, i64 %indvars.iv
  store i8 46, i8* %arrayidx33, align 1, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %rpos.1 = phi i32 [ %rpos.065, %if.else ], [ %inc, %if.then ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %alen
  br i1 %exitcond, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.inc
  %4 = add i64 %1, 1
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %idxprom.lcssa = phi i64 [ %4, %for.cond.for.end_crit_edge ], [ 0, %entry ]
  %rpos.0.lcssa = phi i32 [ %rpos.1, %for.cond.for.end_crit_edge ], [ 0, %entry ]
  %arrayidx36 = getelementptr inbounds i8* %call, i64 %idxprom.lcssa
  store i8 0, i8* %arrayidx36, align 1, !tbaa !1
  %conv37 = sext i32 %rpos.0.lcssa to i64
  %call38 = tail call i64 @strlen(i8* %ss) #9
  %cmp39 = icmp eq i64 %conv37, %call38
  br i1 %cmp39, label %if.end42, label %if.then41

if.then41:                                        ; preds = %for.end
  store i32 6, i32* @squid_errno, align 4, !tbaa !0
  tail call void @free(i8* %call) #7
  br label %return

if.end42:                                         ; preds = %for.end
  store i8* %call, i8** %ret_s, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %if.end42, %if.then41
  %retval.0 = phi i32 [ 0, %if.then41 ], [ 1, %if.end42 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @MakeDealignedString(i8* nocapture %aseq, i32 %alen, i8* nocapture %ss, i8** nocapture %ret_s) #0 {
entry:
  %add = add nsw i32 %alen, 1
  %conv = sext i32 %add to i64
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 280, i64 %conv) #7
  %cmp60 = icmp sgt i32 %alen, 0
  br i1 %cmp60, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %rpos.062 = phi i32 [ %rpos.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8* %aseq, i64 %indvars.iv
  %0 = load i8* %arrayidx, align 1, !tbaa !1
  switch i8 %0, label %if.then [
    i8 32, label %for.inc
    i8 46, label %for.inc
    i8 95, label %for.inc
    i8 45, label %for.inc
    i8 126, label %for.inc
  ]

if.then:                                          ; preds = %for.body
  %arrayidx29 = getelementptr inbounds i8* %ss, i64 %indvars.iv
  %1 = load i8* %arrayidx29, align 1, !tbaa !1
  %idxprom30 = sext i32 %rpos.062 to i64
  %arrayidx31 = getelementptr inbounds i8* %call, i64 %idxprom30
  store i8 %1, i8* %arrayidx31, align 1, !tbaa !1
  %inc = add nsw i32 %rpos.062, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %if.then
  %rpos.1 = phi i32 [ %rpos.062, %for.body ], [ %inc, %if.then ], [ %rpos.062, %for.body ], [ %rpos.062, %for.body ], [ %rpos.062, %for.body ], [ %rpos.062, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %alen
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %rpos.0.lcssa = phi i32 [ 0, %entry ], [ %rpos.1, %for.inc ]
  %idxprom33 = sext i32 %rpos.0.lcssa to i64
  %arrayidx34 = getelementptr inbounds i8* %call, i64 %idxprom33
  store i8 0, i8* %arrayidx34, align 1, !tbaa !1
  %conv35 = sext i32 %alen to i64
  %call36 = tail call i64 @strlen(i8* %ss) #9
  %cmp37 = icmp eq i64 %conv35, %call36
  br i1 %cmp37, label %if.end40, label %if.then39

if.then39:                                        ; preds = %for.end
  store i32 6, i32* @squid_errno, align 4, !tbaa !0
  tail call void @free(i8* %call) #7
  br label %return

if.end40:                                         ; preds = %for.end
  store i8* %call, i8** %ret_s, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %if.end40, %if.then39
  %retval.0 = phi i32 [ 0, %if.then39 ], [ 1, %if.end40 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @DealignedLength(i8* nocapture %aseq) #5 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %aseq.addr.0 = phi i8* [ %aseq, %entry ], [ %incdec.ptr, %for.inc ]
  %rlen.0 = phi i32 [ 0, %entry ], [ %rlen.1, %for.inc ]
  %0 = load i8* %aseq.addr.0, align 1, !tbaa !1
  switch i8 %0, label %if.then [
    i8 0, label %for.end
    i8 32, label %for.inc
    i8 46, label %for.inc
    i8 95, label %for.inc
    i8 45, label %for.inc
    i8 126, label %for.inc
  ]

if.then:                                          ; preds = %for.cond
  %inc = add nsw i32 %rlen.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %if.then
  %rlen.1 = phi i32 [ %inc, %if.then ], [ %rlen.0, %for.cond ], [ %rlen.0, %for.cond ], [ %rlen.0, %for.cond ], [ %rlen.0, %for.cond ], [ %rlen.0, %for.cond ]
  %incdec.ptr = getelementptr inbounds i8* %aseq.addr.0, i64 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 %rlen.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @WritePairwiseAlignment(%struct._IO_FILE* nocapture %ofp, i8* nocapture %aseq1, i8* nocapture %name1, i32 %spos1, i8* nocapture %aseq2, i8* nocapture %name2, i32 %spos2, i32** nocapture %pam, i32 %indent) #0 {
entry:
  %sname1 = alloca [11 x i8], align 1
  %sname2 = alloca [11 x i8], align 1
  %buf1 = alloca [61 x i8], align 16
  %bufmid = alloca [61 x i8], align 16
  %buf2 = alloca [61 x i8], align 16
  %0 = getelementptr inbounds [61 x i8]* %buf1, i64 0, i64 0
  call void @llvm.lifetime.start(i64 61, i8* %0) #6
  %1 = getelementptr inbounds [61 x i8]* %bufmid, i64 0, i64 0
  call void @llvm.lifetime.start(i64 61, i8* %1) #6
  %2 = getelementptr inbounds [61 x i8]* %buf2, i64 0, i64 0
  call void @llvm.lifetime.start(i64 61, i8* %2) #6
  %arraydecay = getelementptr inbounds [11 x i8]* %sname1, i64 0, i64 0
  %call = call i8* @strncpy(i8* %arraydecay, i8* %name1, i64 10) #7
  %arrayidx = getelementptr inbounds [11 x i8]* %sname1, i64 0, i64 10
  store i8 0, i8* %arrayidx, align 1, !tbaa !1
  %call2 = call i8* @strtok(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0)) #7
  %arraydecay3 = getelementptr inbounds [11 x i8]* %sname2, i64 0, i64 0
  %call4 = call i8* @strncpy(i8* %arraydecay3, i8* %name2, i64 10) #7
  %arrayidx5 = getelementptr inbounds [11 x i8]* %sname2, i64 0, i64 10
  store i8 0, i8* %arrayidx5, align 1, !tbaa !1
  %call7 = call i8* @strtok(i8* %arraydecay3, i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0)) #7
  %arrayidx10 = getelementptr inbounds [61 x i8]* %buf1, i64 0, i64 60
  %arrayidx13 = getelementptr inbounds [61 x i8]* %buf2, i64 0, i64 60
  br label %while.body

while.body:                                       ; preds = %entry, %for.end213
  %rpos2.0303 = phi i32 [ %spos2, %entry ], [ %add222, %for.end213 ]
  %rpos1.0302 = phi i32 [ %spos1, %entry ], [ %add, %for.end213 ]
  %s1.0301 = phi i8* [ %aseq1, %entry ], [ %add.ptr, %for.end213 ]
  %s2.0298 = phi i8* [ %aseq2, %entry ], [ %add.ptr32, %for.end213 ]
  %call9 = call i8* @strncpy(i8* %0, i8* %s1.0301, i64 60) #7
  store i8 0, i8* %arrayidx10, align 4, !tbaa !1
  %call12 = call i8* @strncpy(i8* %2, i8* %s2.0298, i64 60) #7
  store i8 0, i8* %arrayidx13, align 4, !tbaa !1
  %call15 = call i64 @strlen(i8* %0) #9
  %conv = trunc i64 %call15 to i32
  %call17 = call i64 @strlen(i8* %2) #9
  %conv18 = trunc i64 %call17 to i32
  %cmp = icmp eq i32 %conv, 60
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %while.body
  %arrayidx20 = getelementptr inbounds i8* %s1.0301, i64 60
  %3 = load i8* %arrayidx20, align 1, !tbaa !1
  %cmp22 = icmp eq i8 %3, 0
  br i1 %cmp22, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true, %while.body
  %cmp24 = icmp eq i32 %conv18, 60
  br i1 %cmp24, label %land.lhs.true26, label %if.end

land.lhs.true26:                                  ; preds = %lor.lhs.false
  %arrayidx27 = getelementptr inbounds i8* %s2.0298, i64 60
  %4 = load i8* %arrayidx27, align 1, !tbaa !1
  %cmp29 = icmp eq i8 %4, 0
  br i1 %cmp29, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %land.lhs.true26
  br label %if.end

if.end:                                           ; preds = %land.lhs.true26, %if.then, %lor.lhs.false
  %still_going.1 = phi i32 [ 1, %if.then ], [ 0, %land.lhs.true26 ], [ 0, %lor.lhs.false ]
  %sext = shl i64 %call15, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr inbounds i8* %s1.0301, i64 %idx.ext
  %sext284 = shl i64 %call17, 32
  %idx.ext31 = ashr exact i64 %sext284, 32
  %add.ptr32 = getelementptr inbounds i8* %s2.0298, i64 %idx.ext31
  %cmp33285 = icmp sgt i32 %conv, 0
  %cmp35286 = icmp sgt i32 %conv18, 0
  %cmp35.287 = and i1 %cmp33285, %cmp35286
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
  %arrayidx37 = getelementptr inbounds [61 x i8]* %buf1, i64 0, i64 %indvars.iv
  %11 = load i8* %arrayidx37, align 1, !tbaa !1
  %conv38 = sext i8 %11 to i64
  switch i8 %11, label %land.lhs.true65 [
    i8 32, label %if.else130
    i8 46, label %if.else130
    i8 95, label %if.else130
    i8 45, label %if.else130
    i8 126, label %if.else130
  ]

land.lhs.true65:                                  ; preds = %for.body
  %arrayidx67 = getelementptr inbounds [61 x i8]* %buf2, i64 0, i64 %indvars.iv
  %12 = load i8* %arrayidx67, align 1, !tbaa !1
  %conv68 = sext i8 %12 to i64
  switch i8 %12, label %if.then95 [
    i8 32, label %if.else130
    i8 46, label %if.else130
    i8 95, label %if.else130
    i8 45, label %if.else130
    i8 126, label %if.else130
  ]

if.then95:                                        ; preds = %land.lhs.true65
  %cmp102 = icmp eq i8 %11, %12
  br i1 %cmp102, label %if.then104, label %if.else

if.then104:                                       ; preds = %if.then95
  %arrayidx108 = getelementptr inbounds [61 x i8]* %bufmid, i64 0, i64 %indvars.iv
  store i8 %11, i8* %arrayidx108, align 1, !tbaa !1
  br label %for.inc

if.else:                                          ; preds = %if.then95
  %sub = add i64 %conv68, -65
  %sub116 = add i64 %conv38, -65
  %arrayidx118 = getelementptr inbounds i32** %pam, i64 %sub116
  %13 = load i32** %arrayidx118, align 8, !tbaa !3
  %arrayidx119 = getelementptr inbounds i32* %13, i64 %sub
  %14 = load i32* %arrayidx119, align 4, !tbaa !0
  %cmp120 = icmp sgt i32 %14, 0
  %arrayidx124 = getelementptr inbounds [61 x i8]* %bufmid, i64 0, i64 %indvars.iv
  br i1 %cmp120, label %if.then122, label %if.else125

if.then122:                                       ; preds = %if.else
  store i8 43, i8* %arrayidx124, align 1, !tbaa !1
  br label %for.inc

if.else125:                                       ; preds = %if.else
  store i8 32, i8* %arrayidx124, align 1, !tbaa !1
  br label %for.inc

if.else130:                                       ; preds = %land.lhs.true65, %land.lhs.true65, %land.lhs.true65, %land.lhs.true65, %land.lhs.true65, %for.body, %for.body, %for.body, %for.body, %for.body
  %arrayidx132 = getelementptr inbounds [61 x i8]* %bufmid, i64 0, i64 %indvars.iv
  store i8 32, i8* %arrayidx132, align 1, !tbaa !1
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
  %arrayidx135 = getelementptr inbounds [61 x i8]* %bufmid, i64 0, i64 %idxprom.lcssa
  store i8 0, i8* %arrayidx135, align 1, !tbaa !1
  br i1 %cmp33285, label %for.body139, label %for.cond175.loopexit

for.body139:                                      ; preds = %for.end, %for.inc172
  %indvars.iv305 = phi i64 [ %indvars.iv.next306, %for.inc172 ], [ 0, %for.end ]
  %rawcount1.0291 = phi i32 [ %rawcount1.1, %for.inc172 ], [ 0, %for.end ]
  %arrayidx141 = getelementptr inbounds [61 x i8]* %buf1, i64 0, i64 %indvars.iv305
  %16 = load i8* %arrayidx141, align 1, !tbaa !1
  switch i8 %16, label %if.then169 [
    i8 32, label %for.inc172
    i8 46, label %for.inc172
    i8 95, label %for.inc172
    i8 45, label %for.inc172
    i8 126, label %for.inc172
  ]

if.then169:                                       ; preds = %for.body139
  %inc170 = add nsw i32 %rawcount1.0291, 1
  br label %for.inc172

for.inc172:                                       ; preds = %for.body139, %for.body139, %for.body139, %for.body139, %for.body139, %if.then169
  %rawcount1.1 = phi i32 [ %rawcount1.0291, %for.body139 ], [ %inc170, %if.then169 ], [ %rawcount1.0291, %for.body139 ], [ %rawcount1.0291, %for.body139 ], [ %rawcount1.0291, %for.body139 ], [ %rawcount1.0291, %for.body139 ]
  %indvars.iv.next306 = add i64 %indvars.iv305, 1
  %lftr.wideiv307 = trunc i64 %indvars.iv.next306 to i32
  %exitcond308 = icmp eq i32 %lftr.wideiv307, %conv
  br i1 %exitcond308, label %for.cond175.loopexit, label %for.body139

for.cond175.loopexit:                             ; preds = %for.inc172, %for.end
  %rawcount1.0.lcssa = phi i32 [ 0, %for.end ], [ %rawcount1.1, %for.inc172 ]
  br i1 %cmp35286, label %for.body178, label %for.end213

for.body178:                                      ; preds = %for.cond175.loopexit, %for.inc211
  %indvars.iv309 = phi i64 [ %indvars.iv.next310, %for.inc211 ], [ 0, %for.cond175.loopexit ]
  %rawcount2.0295 = phi i32 [ %rawcount2.1, %for.inc211 ], [ 0, %for.cond175.loopexit ]
  %arrayidx180 = getelementptr inbounds [61 x i8]* %buf2, i64 0, i64 %indvars.iv309
  %17 = load i8* %arrayidx180, align 1, !tbaa !1
  switch i8 %17, label %if.then208 [
    i8 32, label %for.inc211
    i8 46, label %for.inc211
    i8 95, label %for.inc211
    i8 45, label %for.inc211
    i8 126, label %for.inc211
  ]

if.then208:                                       ; preds = %for.body178
  %inc209 = add nsw i32 %rawcount2.0295, 1
  br label %for.inc211

for.inc211:                                       ; preds = %for.body178, %for.body178, %for.body178, %for.body178, %for.body178, %if.then208
  %rawcount2.1 = phi i32 [ %rawcount2.0295, %for.body178 ], [ %inc209, %if.then208 ], [ %rawcount2.0295, %for.body178 ], [ %rawcount2.0295, %for.body178 ], [ %rawcount2.0295, %for.body178 ], [ %rawcount2.0295, %for.body178 ]
  %indvars.iv.next310 = add i64 %indvars.iv309, 1
  %lftr.wideiv311 = trunc i64 %indvars.iv.next310 to i32
  %exitcond312 = icmp eq i32 %lftr.wideiv311, %conv18
  br i1 %exitcond312, label %for.end213, label %for.body178

for.end213:                                       ; preds = %for.inc211, %for.cond175.loopexit
  %rawcount2.0.lcssa = phi i32 [ 0, %for.cond175.loopexit ], [ %rawcount2.1, %for.inc211 ]
  %add = add nsw i32 %rawcount1.0.lcssa, %rpos1.0302
  %sub216 = add nsw i32 %add, -1
  %call217 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ofp, i8* getelementptr inbounds ([24 x i8]* @.str2, i64 0, i64 0), i32 %indent, i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), i8* %arraydecay, i32 %rpos1.0302, i8* %0, i32 %sub216) #7
  %call219 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ofp, i8* getelementptr inbounds ([24 x i8]* @.str4, i64 0, i64 0), i32 %indent, i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), i8* %1) #7
  %add222 = add nsw i32 %rawcount2.0.lcssa, %rpos2.0303
  %sub223 = add nsw i32 %add222, -1
  %call224 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ofp, i8* getelementptr inbounds ([24 x i8]* @.str2, i64 0, i64 0), i32 %indent, i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), i8* %arraydecay3, i32 %rpos2.0303, i8* %2, i32 %sub223) #7
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %ofp)
  %tobool = icmp eq i32 %still_going.1, 0
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        ; preds = %for.end213
  call void @llvm.lifetime.end(i64 61, i8* %2) #6
  call void @llvm.lifetime.end(i64 61, i8* %1) #6
  call void @llvm.lifetime.end(i64 61, i8* %0) #6
  ret i32 1
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #2

; Function Attrs: nounwind optsize
declare i8* @strtok(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize uwtable
define i32 @MingapAlignment(i8** nocapture %aseqs, %struct.aliinfo_s* nocapture %ainfo) #0 {
entry:
  %0 = load i8** %aseqs, align 8, !tbaa !3
  %1 = load i8* %0, align 1, !tbaa !1
  %cmp182 = icmp eq i8 %1, 0
  %nseq95.pre = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 2
  br i1 %cmp182, label %for.cond94.preheader, label %for.cond3.preheader.lr.ph

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %cs = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 4
  %rf = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 5
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc91, %for.cond3.preheader.lr.ph
  %2 = phi i8* [ %0, %for.cond3.preheader.lr.ph ], [ %17, %for.inc91 ]
  %indvars.iv192 = phi i64 [ 0, %for.cond3.preheader.lr.ph ], [ %indvars.iv.next193, %for.inc91 ]
  %mpos.0184 = phi i32 [ 0, %for.cond3.preheader.lr.ph ], [ %mpos.1, %for.inc91 ]
  %3 = load i32* %nseq95.pre, align 4, !tbaa !0
  %cmp4177 = icmp sgt i32 %3, 0
  br i1 %cmp4177, label %for.body6, label %for.end

for.cond94.preheader:                             ; preds = %entry, %for.inc91
  %mpos.0.lcssa = phi i32 [ %mpos.1, %for.inc91 ], [ 0, %entry ]
  %4 = load i32* %nseq95.pre, align 4, !tbaa !0
  %cmp96175 = icmp sgt i32 %4, 0
  br i1 %cmp96175, label %for.body98.lr.ph, label %for.end105

for.body98.lr.ph:                                 ; preds = %for.cond94.preheader
  %idxprom99 = sext i32 %mpos.0.lcssa to i64
  br label %for.body98

for.body6:                                        ; preds = %for.inc, %for.cond3.preheader
  %indvars.iv188 = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next189, %for.inc ]
  %idx.0178 = phi i32 [ 0, %for.cond3.preheader ], [ %inc, %for.inc ]
  %arrayidx9 = getelementptr inbounds i8** %aseqs, i64 %indvars.iv188
  %5 = load i8** %arrayidx9, align 8, !tbaa !3
  %arrayidx10 = getelementptr inbounds i8* %5, i64 %indvars.iv192
  %6 = load i8* %arrayidx10, align 1, !tbaa !1
  switch i8 %6, label %for.end [
    i8 32, label %for.inc
    i8 46, label %for.inc
    i8 95, label %for.inc
    i8 45, label %for.inc
    i8 126, label %for.inc
  ]

for.inc:                                          ; preds = %for.body6, %for.body6, %for.body6, %for.body6, %for.body6
  %indvars.iv.next189 = add i64 %indvars.iv188, 1
  %inc = add nsw i32 %idx.0178, 1
  %7 = trunc i64 %indvars.iv.next189 to i32
  %cmp4 = icmp slt i32 %7, %3
  br i1 %cmp4, label %for.body6, label %for.end

for.end:                                          ; preds = %for.inc, %for.body6, %for.cond3.preheader
  %idx.0.lcssa = phi i32 [ 0, %for.cond3.preheader ], [ %idx.0178, %for.body6 ], [ %inc, %for.inc ]
  %cmp46 = icmp eq i32 %idx.0.lcssa, %3
  br i1 %cmp46, label %for.inc91, label %if.end49

if.end49:                                         ; preds = %for.end
  %8 = trunc i64 %indvars.iv192 to i32
  %cmp50 = icmp eq i32 %mpos.0184, %8
  br i1 %cmp50, label %if.end89, label %for.cond53.preheader

for.cond53.preheader:                             ; preds = %if.end49
  br i1 %cmp4177, label %for.body57.lr.ph, label %for.end68

for.body57.lr.ph:                                 ; preds = %for.cond53.preheader
  %idxprom62 = sext i32 %mpos.0184 to i64
  br label %for.body57

for.body57:                                       ; preds = %for.body57, %for.body57.lr.ph
  %indvars.iv190 = phi i64 [ 0, %for.body57.lr.ph ], [ %indvars.iv.next191, %for.body57 ]
  %arrayidx60 = getelementptr inbounds i8** %aseqs, i64 %indvars.iv190
  %9 = load i8** %arrayidx60, align 8, !tbaa !3
  %arrayidx61 = getelementptr inbounds i8* %9, i64 %indvars.iv192
  %10 = load i8* %arrayidx61, align 1, !tbaa !1
  %arrayidx65 = getelementptr inbounds i8* %9, i64 %idxprom62
  store i8 %10, i8* %arrayidx65, align 1, !tbaa !1
  %indvars.iv.next191 = add i64 %indvars.iv190, 1
  %11 = load i32* %nseq95.pre, align 4, !tbaa !0
  %12 = trunc i64 %indvars.iv.next191 to i32
  %cmp55 = icmp slt i32 %12, %11
  br i1 %cmp55, label %for.body57, label %for.end68

for.end68:                                        ; preds = %for.body57, %for.cond53.preheader
  %13 = load i8** %cs, align 8, !tbaa !3
  %cmp69 = icmp eq i8* %13, null
  br i1 %cmp69, label %if.end78, label %if.then71

if.then71:                                        ; preds = %for.end68
  %arrayidx74 = getelementptr inbounds i8* %13, i64 %indvars.iv192
  %14 = load i8* %arrayidx74, align 1, !tbaa !1
  %idxprom75 = sext i32 %mpos.0184 to i64
  %arrayidx77 = getelementptr inbounds i8* %13, i64 %idxprom75
  store i8 %14, i8* %arrayidx77, align 1, !tbaa !1
  br label %if.end78

if.end78:                                         ; preds = %for.end68, %if.then71
  %15 = load i8** %rf, align 8, !tbaa !3
  %cmp79 = icmp eq i8* %15, null
  br i1 %cmp79, label %if.end89, label %if.then81

if.then81:                                        ; preds = %if.end78
  %arrayidx84 = getelementptr inbounds i8* %15, i64 %indvars.iv192
  %16 = load i8* %arrayidx84, align 1, !tbaa !1
  %idxprom85 = sext i32 %mpos.0184 to i64
  %arrayidx87 = getelementptr inbounds i8* %15, i64 %idxprom85
  store i8 %16, i8* %arrayidx87, align 1, !tbaa !1
  br label %if.end89

if.end89:                                         ; preds = %if.end78, %if.end49, %if.then81
  %inc90 = add nsw i32 %mpos.0184, 1
  %.pre = load i8** %aseqs, align 8, !tbaa !3
  br label %for.inc91

for.inc91:                                        ; preds = %for.end, %if.end89
  %17 = phi i8* [ %2, %for.end ], [ %.pre, %if.end89 ]
  %mpos.1 = phi i32 [ %mpos.0184, %for.end ], [ %inc90, %if.end89 ]
  %indvars.iv.next193 = add i64 %indvars.iv192, 1
  %arrayidx1 = getelementptr inbounds i8* %17, i64 %indvars.iv.next193
  %18 = load i8* %arrayidx1, align 1, !tbaa !1
  %cmp = icmp eq i8 %18, 0
  br i1 %cmp, label %for.cond94.preheader, label %for.cond3.preheader

for.body98:                                       ; preds = %for.body98, %for.body98.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body98.lr.ph ], [ %indvars.iv.next, %for.body98 ]
  %arrayidx101 = getelementptr inbounds i8** %aseqs, i64 %indvars.iv
  %19 = load i8** %arrayidx101, align 8, !tbaa !3
  %arrayidx102 = getelementptr inbounds i8* %19, i64 %idxprom99
  store i8 0, i8* %arrayidx102, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %20 = load i32* %nseq95.pre, align 4, !tbaa !0
  %21 = trunc i64 %indvars.iv.next to i32
  %cmp96 = icmp slt i32 %21, %20
  br i1 %cmp96, label %for.body98, label %for.end105

for.end105:                                       ; preds = %for.body98, %for.cond94.preheader
  %alen = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 1
  store i32 %mpos.0.lcssa, i32* %alen, align 4, !tbaa !0
  %cs106 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 4
  %22 = load i8** %cs106, align 8, !tbaa !3
  %cmp107 = icmp eq i8* %22, null
  br i1 %cmp107, label %if.end113, label %if.then109

if.then109:                                       ; preds = %for.end105
  %idxprom110 = sext i32 %mpos.0.lcssa to i64
  %arrayidx112 = getelementptr inbounds i8* %22, i64 %idxprom110
  store i8 0, i8* %arrayidx112, align 1, !tbaa !1
  br label %if.end113

if.end113:                                        ; preds = %for.end105, %if.then109
  %rf114 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 5
  %23 = load i8** %rf114, align 8, !tbaa !3
  %cmp115 = icmp eq i8* %23, null
  br i1 %cmp115, label %if.end121, label %if.then117

if.then117:                                       ; preds = %if.end113
  %idxprom118 = sext i32 %mpos.0.lcssa to i64
  %arrayidx120 = getelementptr inbounds i8* %23, i64 %idxprom118
  store i8 0, i8* %arrayidx120, align 1, !tbaa !1
  br label %if.end121

if.end121:                                        ; preds = %if.end113, %if.then117
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define i32 @RandomAlignment(i8** nocapture %rseqs, %struct.seqinfo_s* %sqinfo, i32 %nseq, float %pop, float %pex, i8*** nocapture %ret_aseqs, %struct.aliinfo_s* nocapture %ainfo) #0 {
entry:
  %conv = sext i32 %nseq to i64
  %mul = shl nsw i64 %conv, 2
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 530, i64 %mul) #7
  %0 = bitcast i8* %call to i32*
  %cmp393 = icmp sgt i32 %nseq, 0
  br i1 %cmp393, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv441 = phi i64 [ %indvars.iv.next442, %for.body ], [ 0, %entry ]
  %minlen.0396 = phi i32 [ %conv3.minlen.0, %for.body ], [ 9999999, %entry ]
  %M.0394 = phi i32 [ %add, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8** %rseqs, i64 %indvars.iv441
  %1 = load i8** %arrayidx, align 8, !tbaa !3
  %call2 = tail call i64 @strlen(i8* %1) #9
  %conv3 = trunc i64 %call2 to i32
  %arrayidx5 = getelementptr inbounds i32* %0, i64 %indvars.iv441
  store i32 %conv3, i32* %arrayidx5, align 4, !tbaa !0
  %add = add nsw i32 %conv3, %M.0394
  %cmp10 = icmp slt i32 %conv3, %minlen.0396
  %conv3.minlen.0 = select i1 %cmp10, i32 %conv3, i32 %minlen.0396
  %indvars.iv.next442 = add i64 %indvars.iv441, 1
  %lftr.wideiv443 = trunc i64 %indvars.iv.next442 to i32
  %exitcond444 = icmp eq i32 %lftr.wideiv443, %nseq
  br i1 %exitcond444, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %phitmp = sitofp i32 %add to float
  %phitmp399 = fpext float %phitmp to double
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %minlen.0.lcssa = phi i32 [ %conv3.minlen.0, %for.cond.for.end_crit_edge ], [ 9999999, %entry ]
  %M.0.lcssa = phi double [ %phitmp399, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  %conv16 = fpext float %pop to double
  %conv17 = fpext float %pex to double
  %sub = fsub double 1.000000e+00, %conv17
  %div = fdiv double 1.000000e+00, %sub
  %add18 = fadd double %div, 1.000000e+00
  %mul19 = fmul double %conv16, %add18
  %add20 = fadd double %mul19, 1.000000e+00
  %div21 = fdiv double %M.0.lcssa, %add20
  %conv22 = fptosi double %div21 to i32
  %div23 = sdiv i32 %conv22, %nseq
  %cmp24 = icmp sgt i32 %div23, %minlen.0.lcssa
  %minlen.0.div23 = select i1 %cmp24, i32 %minlen.0.lcssa, i32 %div23
  %mul27 = shl nsw i64 %conv, 3
  %call28 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 545, i64 %mul27) #7
  %2 = bitcast i8* %call28 to i32**
  %add29 = add nsw i32 %minlen.0.div23, 1
  %conv30 = sext i32 %add29 to i64
  %mul31 = shl nsw i64 %conv30, 2
  %call32 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 546, i64 %mul31) #7
  %3 = bitcast i8* %call32 to i32*
  br i1 %cmp393, label %for.body36.lr.ph, label %for.cond97.preheader

for.body36.lr.ph:                                 ; preds = %for.end
  %cmp44389 = icmp slt i32 %minlen.0.div23, 0
  %4 = xor i32 %minlen.0.lcssa, -1
  %5 = xor i32 %div23, -1
  %6 = icmp sgt i32 %4, %5
  %smax433 = select i1 %6, i32 %4, i32 %5
  %7 = xor i32 %smax433, -1
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 2
  %10 = add i64 %9, 4
  br label %for.body36

for.body36:                                       ; preds = %for.inc54, %for.body36.lr.ph
  %indvars.iv437 = phi i64 [ 0, %for.body36.lr.ph ], [ %indvars.iv.next438, %for.inc54 ]
  %call40 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 549, i64 %mul31) #7
  %11 = bitcast i8* %call40 to i32*
  %arrayidx42 = getelementptr inbounds i32** %2, i64 %indvars.iv437
  store i32* %11, i32** %arrayidx42, align 8, !tbaa !3
  br i1 %cmp44389, label %for.inc54, label %for.body46.lr.ph

for.body46.lr.ph:                                 ; preds = %for.body36
  call void @llvm.memset.p0i8.i64(i8* %call40, i8 0, i64 %10, i32 4, i1 false)
  br label %for.inc54

for.inc54:                                        ; preds = %for.body46.lr.ph, %for.body36
  %indvars.iv.next438 = add i64 %indvars.iv437, 1
  %lftr.wideiv439 = trunc i64 %indvars.iv.next438 to i32
  %exitcond440 = icmp eq i32 %lftr.wideiv439, %nseq
  br i1 %exitcond440, label %for.end56, label %for.body36

for.end56:                                        ; preds = %for.inc54
  %add57 = fadd float %pop, %pex
  %div58 = fdiv float %pop, %add57
  %conv59 = fpext float %div58 to double
  br i1 %cmp393, label %for.cond66.preheader.lr.ph, label %for.cond97.preheader

for.cond66.preheader.lr.ph:                       ; preds = %for.end56
  %conv82 = sitofp i32 %add29 to double
  br label %for.cond66.preheader

for.cond66.preheader:                             ; preds = %for.inc94, %for.cond66.preheader.lr.ph
  %indvars.iv427 = phi i64 [ 0, %for.cond66.preheader.lr.ph ], [ %indvars.iv.next428, %for.inc94 ]
  %arrayidx68 = getelementptr inbounds i32* %0, i64 %indvars.iv427
  %12 = load i32* %arrayidx68, align 4, !tbaa !0
  %sub69383 = sub nsw i32 %12, %minlen.0.div23
  %cmp70384 = icmp sgt i32 %sub69383, 0
  br i1 %cmp70384, label %for.body72.lr.ph, label %for.inc94

for.body72.lr.ph:                                 ; preds = %for.cond66.preheader
  %arrayidx88 = getelementptr inbounds i32** %2, i64 %indvars.iv427
  br label %for.body72

for.cond97.preheader:                             ; preds = %for.end, %for.inc94, %for.end56
  %cmp98379 = icmp slt i32 %minlen.0.div23, 0
  br i1 %cmp98379, label %for.end131, label %for.body100.lr.ph

for.body100.lr.ph:                                ; preds = %for.cond97.preheader
  %13 = xor i32 %minlen.0.lcssa, -1
  %14 = xor i32 %div23, -1
  %15 = icmp sgt i32 %13, %14
  %smax424 = select i1 %15, i32 %13, i32 %14
  %16 = sub i32 0, %smax424
  br label %for.body100

for.body72:                                       ; preds = %for.body72.lr.ph, %if.end85
  %rpos.1386 = phi i32 [ 0, %for.body72.lr.ph ], [ %inc92, %if.end85 ]
  %apos.0385 = phi i32 [ -1, %for.body72.lr.ph ], [ %apos.1, %if.end85 ]
  %call73 = tail call double @sre_random() #7
  %cmp75 = fcmp olt double %call73, %conv59
  %cmp77 = icmp eq i32 %apos.0385, -1
  %or.cond = or i1 %cmp75, %cmp77
  br i1 %or.cond, label %if.then79, label %if.end85

if.then79:                                        ; preds = %for.body72
  %call80 = tail call double @sre_random() #7
  %mul83 = fmul double %conv82, %call80
  %conv84 = fptosi double %mul83 to i32
  br label %if.end85

if.end85:                                         ; preds = %for.body72, %if.then79
  %apos.1 = phi i32 [ %conv84, %if.then79 ], [ %apos.0385, %for.body72 ]
  %idxprom86 = sext i32 %apos.1 to i64
  %17 = load i32** %arrayidx88, align 8, !tbaa !3
  %arrayidx89 = getelementptr inbounds i32* %17, i64 %idxprom86
  %18 = load i32* %arrayidx89, align 4, !tbaa !0
  %inc90 = add nsw i32 %18, 1
  store i32 %inc90, i32* %arrayidx89, align 4, !tbaa !0
  %inc92 = add nsw i32 %rpos.1386, 1
  %19 = load i32* %arrayidx68, align 4, !tbaa !0
  %sub69 = sub nsw i32 %19, %minlen.0.div23
  %cmp70 = icmp slt i32 %inc92, %sub69
  br i1 %cmp70, label %for.body72, label %for.inc94

for.inc94:                                        ; preds = %if.end85, %for.cond66.preheader
  %indvars.iv.next428 = add i64 %indvars.iv427, 1
  %lftr.wideiv429 = trunc i64 %indvars.iv.next428 to i32
  %exitcond430 = icmp eq i32 %lftr.wideiv429, %nseq
  br i1 %exitcond430, label %for.cond97.preheader, label %for.cond66.preheader

for.body100:                                      ; preds = %for.end125, %for.body100.lr.ph
  %indvars.iv422 = phi i64 [ %indvars.iv.next423, %for.end125 ], [ 0, %for.body100.lr.ph ]
  %alen.0380 = phi i32 [ %add128, %for.end125 ], [ %minlen.0.div23, %for.body100.lr.ph ]
  %arrayidx102 = getelementptr inbounds i32* %3, i64 %indvars.iv422
  store i32 0, i32* %arrayidx102, align 4, !tbaa !0
  br i1 %cmp393, label %for.body106, label %for.end125

for.body106:                                      ; preds = %for.body100, %for.inc123
  %20 = phi i32 [ %23, %for.inc123 ], [ 0, %for.body100 ]
  %indvars.iv418 = phi i64 [ %indvars.iv.next419, %for.inc123 ], [ 0, %for.body100 ]
  %arrayidx109 = getelementptr inbounds i32** %2, i64 %indvars.iv418
  %21 = load i32** %arrayidx109, align 8, !tbaa !3
  %arrayidx110 = getelementptr inbounds i32* %21, i64 %indvars.iv422
  %22 = load i32* %arrayidx110, align 4, !tbaa !0
  %cmp113 = icmp sgt i32 %22, %20
  br i1 %cmp113, label %if.then115, label %for.inc123

if.then115:                                       ; preds = %for.body106
  store i32 %22, i32* %arrayidx102, align 4, !tbaa !0
  br label %for.inc123

for.inc123:                                       ; preds = %for.body106, %if.then115
  %23 = phi i32 [ %20, %for.body106 ], [ %22, %if.then115 ]
  %indvars.iv.next419 = add i64 %indvars.iv418, 1
  %lftr.wideiv420 = trunc i64 %indvars.iv.next419 to i32
  %exitcond421 = icmp eq i32 %lftr.wideiv420, %nseq
  br i1 %exitcond421, label %for.end125, label %for.body106

for.end125:                                       ; preds = %for.inc123, %for.body100
  %24 = phi i32 [ 0, %for.body100 ], [ %23, %for.inc123 ]
  %add128 = add nsw i32 %24, %alen.0380
  %indvars.iv.next423 = add i64 %indvars.iv422, 1
  %lftr.wideiv425 = trunc i64 %indvars.iv.next423 to i32
  %exitcond426 = icmp eq i32 %lftr.wideiv425, %16
  br i1 %exitcond426, label %for.end131, label %for.body100

for.end131:                                       ; preds = %for.end125, %for.cond97.preheader
  %alen.0.lcssa = phi i32 [ %minlen.0.div23, %for.cond97.preheader ], [ %add128, %for.end125 ]
  %call134 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 581, i64 %mul27) #7
  %25 = bitcast i8* %call134 to i8**
  br i1 %cmp393, label %for.body138.lr.ph, label %for.end214

for.body138.lr.ph:                                ; preds = %for.end131
  %add139 = add nsw i32 %alen.0.lcssa, 1
  %conv140 = sext i32 %add139 to i64
  br label %for.body138

for.cond148.preheader:                            ; preds = %for.body138
  br i1 %cmp393, label %for.cond152.preheader.lr.ph, label %for.end214

for.cond152.preheader.lr.ph:                      ; preds = %for.cond148.preheader
  %idxprom208 = sext i32 %alen.0.lcssa to i64
  %26 = xor i32 %minlen.0.lcssa, -1
  %27 = xor i32 %div23, -1
  %28 = icmp sgt i32 %26, %27
  %smax = select i1 %28, i32 %26, i32 %27
  %29 = sub i32 0, %smax
  br label %for.cond152.preheader

for.body138:                                      ; preds = %for.body138, %for.body138.lr.ph
  %indvars.iv414 = phi i64 [ 0, %for.body138.lr.ph ], [ %indvars.iv.next415, %for.body138 ]
  %call142 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 583, i64 %conv140) #7
  %arrayidx144 = getelementptr inbounds i8** %25, i64 %indvars.iv414
  store i8* %call142, i8** %arrayidx144, align 8, !tbaa !3
  %indvars.iv.next415 = add i64 %indvars.iv414, 1
  %lftr.wideiv416 = trunc i64 %indvars.iv.next415 to i32
  %exitcond417 = icmp eq i32 %lftr.wideiv416, %nseq
  br i1 %exitcond417, label %for.cond148.preheader, label %for.body138

for.cond152.preheader:                            ; preds = %for.end207, %for.cond152.preheader.lr.ph
  %indvars.iv410 = phi i64 [ 0, %for.cond152.preheader.lr.ph ], [ %indvars.iv.next411, %for.end207 ]
  br i1 %cmp98379, label %for.cond152.preheader.for.end207_crit_edge, label %for.cond156.preheader.lr.ph

for.cond152.preheader.for.end207_crit_edge:       ; preds = %for.cond152.preheader
  %arrayidx210.pre = getelementptr inbounds i8** %25, i64 %indvars.iv410
  br label %for.end207

for.cond156.preheader.lr.ph:                      ; preds = %for.cond152.preheader
  %arrayidx159 = getelementptr inbounds i32** %2, i64 %indvars.iv410
  %arrayidx167 = getelementptr inbounds i8** %rseqs, i64 %indvars.iv410
  %arrayidx172 = getelementptr inbounds i8** %25, i64 %indvars.iv410
  br label %for.cond156.preheader

for.cond156.preheader:                            ; preds = %for.inc205, %for.cond156.preheader.lr.ph
  %indvars.iv406 = phi i64 [ 0, %for.cond156.preheader.lr.ph ], [ %indvars.iv.next407, %for.inc205 ]
  %rpos.2371 = phi i32 [ 0, %for.cond156.preheader.lr.ph ], [ %rpos.4, %for.inc205 ]
  %apos.3370 = phi i32 [ 0, %for.cond156.preheader.lr.ph ], [ %apos.6, %for.inc205 ]
  %30 = load i32** %arrayidx159, align 8, !tbaa !3
  %arrayidx160356 = getelementptr inbounds i32* %30, i64 %indvars.iv406
  %31 = load i32* %arrayidx160356, align 4, !tbaa !0
  %cmp161357 = icmp sgt i32 %31, 0
  br i1 %cmp161357, label %for.body163.lr.ph, label %for.cond177.loopexit

for.body163.lr.ph:                                ; preds = %for.cond156.preheader
  %32 = sext i32 %rpos.2371 to i64
  %33 = sext i32 %apos.3370 to i64
  br label %for.body163

for.body163:                                      ; preds = %for.body163.lr.ph, %for.body163
  %indvars.iv402 = phi i64 [ %33, %for.body163.lr.ph ], [ %indvars.iv.next403, %for.body163 ]
  %indvars.iv400 = phi i64 [ %32, %for.body163.lr.ph ], [ %indvars.iv.next401, %for.body163 ]
  %count.0360 = phi i32 [ 0, %for.body163.lr.ph ], [ %inc175, %for.body163 ]
  %rpos.3359 = phi i32 [ %rpos.2371, %for.body163.lr.ph ], [ %inc164, %for.body163 ]
  %apos.4358 = phi i32 [ %apos.3370, %for.body163.lr.ph ], [ %inc169, %for.body163 ]
  %indvars.iv.next401 = add i64 %indvars.iv400, 1
  %inc164 = add nsw i32 %rpos.3359, 1
  %34 = load i8** %arrayidx167, align 8, !tbaa !3
  %arrayidx168 = getelementptr inbounds i8* %34, i64 %indvars.iv400
  %35 = load i8* %arrayidx168, align 1, !tbaa !1
  %indvars.iv.next403 = add i64 %indvars.iv402, 1
  %inc169 = add nsw i32 %apos.4358, 1
  %36 = load i8** %arrayidx172, align 8, !tbaa !3
  %arrayidx173 = getelementptr inbounds i8* %36, i64 %indvars.iv402
  store i8 %35, i8* %arrayidx173, align 1, !tbaa !1
  %inc175 = add nsw i32 %count.0360, 1
  %37 = load i32** %arrayidx159, align 8, !tbaa !3
  %arrayidx160 = getelementptr inbounds i32* %37, i64 %indvars.iv406
  %38 = load i32* %arrayidx160, align 4, !tbaa !0
  %cmp161 = icmp slt i32 %inc175, %38
  br i1 %cmp161, label %for.body163, label %for.cond177.loopexit

for.cond177.loopexit:                             ; preds = %for.body163, %for.cond156.preheader
  %count.0.lcssa = phi i32 [ 0, %for.cond156.preheader ], [ %inc175, %for.body163 ]
  %rpos.3.lcssa = phi i32 [ %rpos.2371, %for.cond156.preheader ], [ %inc164, %for.body163 ]
  %apos.4.lcssa = phi i32 [ %apos.3370, %for.cond156.preheader ], [ %inc169, %for.body163 ]
  %arrayidx179 = getelementptr inbounds i32* %3, i64 %indvars.iv406
  %39 = load i32* %arrayidx179, align 4, !tbaa !0
  %cmp180365 = icmp slt i32 %count.0.lcssa, %39
  br i1 %cmp180365, label %for.body182.lr.ph, label %for.end190

for.body182.lr.ph:                                ; preds = %for.cond177.loopexit
  %40 = sext i32 %apos.4.lcssa to i64
  br label %for.body182

for.body182:                                      ; preds = %for.body182.lr.ph, %for.body182
  %indvars.iv404 = phi i64 [ %40, %for.body182.lr.ph ], [ %indvars.iv.next405, %for.body182 ]
  %count.1367 = phi i32 [ %count.0.lcssa, %for.body182.lr.ph ], [ %inc189, %for.body182 ]
  %apos.5366 = phi i32 [ %apos.4.lcssa, %for.body182.lr.ph ], [ %inc183, %for.body182 ]
  %indvars.iv.next405 = add i64 %indvars.iv404, 1
  %inc183 = add nsw i32 %apos.5366, 1
  %41 = load i8** %arrayidx172, align 8, !tbaa !3
  %arrayidx187 = getelementptr inbounds i8* %41, i64 %indvars.iv404
  store i8 32, i8* %arrayidx187, align 1, !tbaa !1
  %inc189 = add nsw i32 %count.1367, 1
  %42 = load i32* %arrayidx179, align 4, !tbaa !0
  %cmp180 = icmp slt i32 %inc189, %42
  br i1 %cmp180, label %for.body182, label %for.end190

for.end190:                                       ; preds = %for.body182, %for.cond177.loopexit
  %apos.5.lcssa = phi i32 [ %apos.4.lcssa, %for.cond177.loopexit ], [ %inc183, %for.body182 ]
  %43 = trunc i64 %indvars.iv406 to i32
  %cmp191 = icmp eq i32 %43, %minlen.0.div23
  br i1 %cmp191, label %for.inc205, label %if.then193

if.then193:                                       ; preds = %for.end190
  %inc194 = add nsw i32 %rpos.3.lcssa, 1
  %idxprom195 = sext i32 %rpos.3.lcssa to i64
  %44 = load i8** %arrayidx167, align 8, !tbaa !3
  %arrayidx198 = getelementptr inbounds i8* %44, i64 %idxprom195
  %45 = load i8* %arrayidx198, align 1, !tbaa !1
  %inc199 = add nsw i32 %apos.5.lcssa, 1
  %idxprom200 = sext i32 %apos.5.lcssa to i64
  %46 = load i8** %arrayidx172, align 8, !tbaa !3
  %arrayidx203 = getelementptr inbounds i8* %46, i64 %idxprom200
  store i8 %45, i8* %arrayidx203, align 1, !tbaa !1
  br label %for.inc205

for.inc205:                                       ; preds = %for.end190, %if.then193
  %apos.6 = phi i32 [ %inc199, %if.then193 ], [ %apos.5.lcssa, %for.end190 ]
  %rpos.4 = phi i32 [ %inc194, %if.then193 ], [ %rpos.3.lcssa, %for.end190 ]
  %indvars.iv.next407 = add i64 %indvars.iv406, 1
  %lftr.wideiv408 = trunc i64 %indvars.iv.next407 to i32
  %exitcond409 = icmp eq i32 %lftr.wideiv408, %29
  br i1 %exitcond409, label %for.end207, label %for.cond156.preheader

for.end207:                                       ; preds = %for.inc205, %for.cond152.preheader.for.end207_crit_edge
  %arrayidx210.pre-phi = phi i8** [ %arrayidx210.pre, %for.cond152.preheader.for.end207_crit_edge ], [ %arrayidx172, %for.inc205 ]
  %47 = load i8** %arrayidx210.pre-phi, align 8, !tbaa !3
  %arrayidx211 = getelementptr inbounds i8* %47, i64 %idxprom208
  store i8 0, i8* %arrayidx211, align 1, !tbaa !1
  %indvars.iv.next411 = add i64 %indvars.iv410, 1
  %lftr.wideiv412 = trunc i64 %indvars.iv.next411 to i32
  %exitcond413 = icmp eq i32 %lftr.wideiv412, %nseq
  br i1 %exitcond413, label %for.end214, label %for.cond152.preheader

for.end214:                                       ; preds = %for.end131, %for.end207, %for.cond148.preheader
  %flags = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 0
  store i32 0, i32* %flags, align 4, !tbaa !0
  %alen215 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 1
  store i32 %alen.0.lcssa, i32* %alen215, align 4, !tbaa !0
  %nseq216 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 2
  store i32 %nseq, i32* %nseq216, align 4, !tbaa !0
  %mul218 = mul i64 %conv, 360
  %call219 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 603, i64 %mul218) #7
  %48 = bitcast i8* %call219 to %struct.seqinfo_s*
  %sqinfo220 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 6
  store %struct.seqinfo_s* %48, %struct.seqinfo_s** %sqinfo220, align 8, !tbaa !3
  br i1 %cmp393, label %for.body224, label %for.end232

for.body224:                                      ; preds = %for.end214, %for.body224.for.body224_crit_edge
  %49 = phi %struct.seqinfo_s* [ %.pre, %for.body224.for.body224_crit_edge ], [ %48, %for.end214 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body224.for.body224_crit_edge ], [ 0, %for.end214 ]
  %arrayidx227 = getelementptr inbounds %struct.seqinfo_s* %49, i64 %indvars.iv
  %arrayidx229 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 %indvars.iv
  tail call void @SeqinfoCopy(%struct.seqinfo_s* %arrayidx227, %struct.seqinfo_s* %arrayidx229) #7
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq
  br i1 %exitcond, label %for.end232, label %for.body224.for.body224_crit_edge

for.body224.for.body224_crit_edge:                ; preds = %for.body224
  %.pre = load %struct.seqinfo_s** %sqinfo220, align 8, !tbaa !3
  br label %for.body224

for.end232:                                       ; preds = %for.body224, %for.end214
  tail call void @free(i8* %call) #7
  tail call void @free(i8* %call32) #7
  %50 = bitcast i8* %call28 to i8**
  tail call void @Free2DArray(i8** %50, i32 %nseq) #7
  store i8** %25, i8*** %ret_aseqs, align 8, !tbaa !3
  ret i32 1
}

; Function Attrs: optsize
declare double @sre_random() #1

; Function Attrs: optsize
declare void @SeqinfoCopy(%struct.seqinfo_s*, %struct.seqinfo_s*) #1

; Function Attrs: nounwind optsize uwtable
define void @AlignmentHomogenousGapsym(i8** nocapture %aseq, i32 %nseq, i32 %alen, i8 signext %gapsym) #0 {
entry:
  %cmp67 = icmp sgt i32 %nseq, 0
  br i1 %cmp67, label %for.cond1.preheader.lr.ph, label %for.end45

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp265 = icmp sgt i32 %alen, 0
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc43, %for.cond1.preheader.lr.ph
  %indvars.iv69 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next70, %for.inc43 ]
  br i1 %cmp265, label %for.body3.lr.ph, label %for.inc43

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %arrayidx = getelementptr inbounds i8** %aseq, i64 %indvars.iv69
  br label %for.body3

for.body3:                                        ; preds = %for.inc, %for.body3.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body3.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %0 = load i8** %arrayidx, align 8, !tbaa !3
  %arrayidx5 = getelementptr inbounds i8* %0, i64 %indvars.iv
  %1 = load i8* %arrayidx5, align 1, !tbaa !1
  switch i8 %1, label %for.inc [
    i8 32, label %if.then
    i8 46, label %if.then
    i8 95, label %if.then
    i8 45, label %if.then
    i8 126, label %if.then
  ]

if.then:                                          ; preds = %for.body3, %for.body3, %for.body3, %for.body3, %for.body3
  store i8 %gapsym, i8* %arrayidx5, align 1, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body3, %if.then
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %alen
  br i1 %exitcond, label %for.inc43, label %for.body3

for.inc43:                                        ; preds = %for.inc, %for.cond1.preheader
  %indvars.iv.next70 = add i64 %indvars.iv69, 1
  %lftr.wideiv71 = trunc i64 %indvars.iv.next70 to i32
  %exitcond72 = icmp eq i32 %lftr.wideiv71, %nseq
  br i1 %exitcond72, label %for.end45, label %for.cond1.preheader

for.end45:                                        ; preds = %for.inc43, %entry
  ret void
}

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readnone }
attributes #9 = { nounwind optsize readonly }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}

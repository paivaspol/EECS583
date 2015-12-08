; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/clustal.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }
%struct.msafile_struct = type { %struct._IO_FILE*, i8*, i32, i8*, i32, %struct.ssifile_s*, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ssifile_s = type { %struct._IO_FILE*, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i8, i8, i8**, i32*, i32*, i32*, i32* }
%struct.ssioffset_s = type { i8, %union.anon }
%union.anon = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"CLUSTAL\00", align 1
@.str1 = private unnamed_addr constant [28 x i8] c"multiple sequence alignment\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str4 = private unnamed_addr constant [4 x i8] c".*:\00", align 1
@.str5 = private unnamed_addr constant [64 x i8] c"Parse failed at line %d, file %s: possibly using spaces as gaps\00", align 1
@.str6 = private unnamed_addr constant [44 x i8] c"CLUSTAL W(1.5) multiple sequence alignment\0A\00", align 1
@.str7 = private unnamed_addr constant [8 x i8] c"%*s %s\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.msa_struct* @ReadClustal(%struct.msafile_struct* %afp) #0 {
entry:
  %s = alloca i8*, align 8
  %slen = alloca i32, align 4
  %f = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0
  %0 = load %struct._IO_FILE** %f, align 8, !tbaa !0
  %call = call i32 @feof(%struct._IO_FILE* %0) #5
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %while.cond.preheader, label %return

while.cond.preheader:                             ; preds = %entry
  %call163 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #5
  store i8* %call163, i8** %s, align 8, !tbaa !0
  %cmp64 = icmp eq i8* %call163, null
  br i1 %cmp64, label %return, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.cond.backedge
  %.pr = phi i8* [ %call1, %while.cond.backedge ], [ %call163, %while.cond.preheader ]
  %call2 = call i32 @strncmp(i8* %.pr, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i64 7) #6
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %land.lhs.true, label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.body, %land.lhs.true
  %call1 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #5
  store i8* %call1, i8** %s, align 8, !tbaa !0
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %return, label %while.body

land.lhs.true:                                    ; preds = %while.body
  %call4 = call i8* @strstr(i8* %.pr, i8* getelementptr inbounds ([28 x i8]* @.str1, i64 0, i64 0)) #6
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %while.cond.backedge, label %while.end

while.end:                                        ; preds = %land.lhs.true
  %cmp8 = icmp eq i8* %.pr, null
  br i1 %cmp8, label %return, label %if.end10

if.end10:                                         ; preds = %while.end
  %call11 = call %struct.msa_struct* @MSAAlloc(i32 10, i32 0) #5
  %call1361 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #5
  store i8* %call1361, i8** %s, align 8, !tbaa !0
  %cmp1462 = icmp eq i8* %call1361, null
  br i1 %cmp1462, label %while.end43, label %while.body15.lr.ph

while.body15.lr.ph:                               ; preds = %if.end10
  %lastidx = getelementptr inbounds %struct.msa_struct* %call11, i64 0, i32 45
  %aseq = getelementptr inbounds %struct.msa_struct* %call11, i64 0, i32 0
  %sqlen = getelementptr inbounds %struct.msa_struct* %call11, i64 0, i32 42
  %linenumber = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 2
  %fname = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1
  br label %while.body15

while.body15:                                     ; preds = %while.body15.lr.ph, %while.cond12.backedge
  %call16 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i32* null) #5
  %cmp17 = icmp eq i8* %call16, null
  br i1 %cmp17, label %while.cond12.backedge, label %if.end19

if.end19:                                         ; preds = %while.body15
  %call20 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i32* %slen) #5
  %cmp21 = icmp eq i8* %call20, null
  br i1 %cmp21, label %while.cond12.backedge, label %if.end23

if.end23:                                         ; preds = %if.end19
  %call24 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0), i32* null) #5
  %call25 = call i8* @strpbrk(i8* %call16, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0)) #6
  %cmp26 = icmp eq i8* %call25, null
  br i1 %cmp26, label %if.end31, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %if.end23
  %call28 = call i8* @strpbrk(i8* %call20, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0)) #6
  %cmp29 = icmp eq i8* %call28, null
  br i1 %cmp29, label %if.end31, label %while.cond12.backedge

if.end31:                                         ; preds = %land.lhs.true27, %if.end23
  %cmp32 = icmp eq i8* %call24, null
  br i1 %cmp32, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end31
  %1 = load i32* %linenumber, align 4, !tbaa !3
  %2 = load i8** %fname, align 8, !tbaa !0
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([64 x i8]* @.str5, i64 0, i64 0), i32 %1, i8* %2) #5
  br label %if.end34

if.end34:                                         ; preds = %if.end31, %if.then33
  %3 = load i32* %lastidx, align 4, !tbaa !3
  %add = add nsw i32 %3, 1
  %call35 = call i32 @MSAGetSeqidx(%struct.msa_struct* %call11, i8* %call16, i32 %add) #5
  store i32 %call35, i32* %lastidx, align 4, !tbaa !3
  %idxprom = sext i32 %call35 to i64
  %4 = load i8*** %aseq, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %4, i64 %idxprom
  %5 = load i32** %sqlen, align 8, !tbaa !0
  %arrayidx38 = getelementptr inbounds i32* %5, i64 %idxprom
  %6 = load i32* %arrayidx38, align 4, !tbaa !3
  %7 = load i32* %slen, align 4, !tbaa !3
  %call39 = call i32 @sre_strcat(i8** %arrayidx, i32 %6, i8* %call20, i32 %7) #5
  %8 = load i32** %sqlen, align 8, !tbaa !0
  %arrayidx42 = getelementptr inbounds i32* %8, i64 %idxprom
  store i32 %call39, i32* %arrayidx42, align 4, !tbaa !3
  br label %while.cond12.backedge

while.cond12.backedge:                            ; preds = %if.end34, %while.body15, %if.end19, %land.lhs.true27
  %call13 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #5
  store i8* %call13, i8** %s, align 8, !tbaa !0
  %cmp14 = icmp eq i8* %call13, null
  br i1 %cmp14, label %while.end43, label %while.body15

while.end43:                                      ; preds = %while.cond12.backedge, %if.end10
  call void @MSAVerifyParse(%struct.msa_struct* %call11) #5
  br label %return

return:                                           ; preds = %while.cond.preheader, %while.cond.backedge, %while.end, %entry, %while.end43
  %retval.0 = phi %struct.msa_struct* [ %call11, %while.end43 ], [ null, %entry ], [ null, %while.end ], [ null, %while.cond.backedge ], [ null, %while.cond.preheader ]
  ret %struct.msa_struct* %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @feof(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare i8* @MSAFileGetLine(%struct.msafile_struct*) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #3

; Function Attrs: optsize
declare %struct.msa_struct* @MSAAlloc(i32, i32) #2

; Function Attrs: optsize
declare i8* @sre_strtok(i8**, i8*, i32*) #2

; Function Attrs: nounwind optsize readonly
declare i8* @strpbrk(i8*, i8* nocapture) #3

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: optsize
declare i32 @MSAGetSeqidx(%struct.msa_struct*, i8*, i32) #2

; Function Attrs: optsize
declare i32 @sre_strcat(i8**, i32, i8*, i32) #2

; Function Attrs: optsize
declare void @MSAVerifyParse(%struct.msa_struct*) #2

; Function Attrs: nounwind optsize uwtable
define void @WriteClustal(%struct._IO_FILE* nocapture %fp, %struct.msa_struct* nocapture %msa) #0 {
entry:
  %buf = alloca [64 x i8], align 16
  %0 = getelementptr inbounds [64 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 64, i8* %0) #4
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4
  %1 = load i32* %nseq, align 4, !tbaa !3
  %cmp52 = icmp sgt i32 %1, 0
  br i1 %cmp52, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sqname = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1
  %2 = load i8*** %sqname, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv58 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next59, %for.body ]
  %namelen.053 = phi i32 [ 0, %for.body.lr.ph ], [ %conv.namelen.0, %for.body ]
  %arrayidx = getelementptr inbounds i8** %2, i64 %indvars.iv58
  %3 = load i8** %arrayidx, align 8, !tbaa !0
  %call = call i64 @strlen(i8* %3) #6
  %conv = trunc i64 %call to i32
  %cmp1 = icmp sgt i32 %conv, %namelen.053
  %conv.namelen.0 = select i1 %cmp1, i32 %conv, i32 %namelen.053
  %indvars.iv.next59 = add i64 %indvars.iv58, 1
  %4 = trunc i64 %indvars.iv.next59 to i32
  %cmp = icmp slt i32 %4, %1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %namelen.0.lcssa = phi i32 [ 0, %entry ], [ %conv.namelen.0, %for.body ]
  %5 = call i64 @fwrite(i8* getelementptr inbounds ([44 x i8]* @.str6, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %fp)
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3
  %6 = load i32* %alen, align 4, !tbaa !3
  %cmp550 = icmp sgt i32 %6, 0
  br i1 %cmp550, label %for.body7.lr.ph, label %for.end29

for.body7.lr.ph:                                  ; preds = %for.end
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0
  %arrayidx19 = getelementptr inbounds [64 x i8]* %buf, i64 0, i64 50
  %sqname21 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1
  br label %for.body7

for.body7:                                        ; preds = %for.body7.lr.ph, %for.inc28
  %indvars.iv56 = phi i64 [ 0, %for.body7.lr.ph ], [ %indvars.iv.next57, %for.inc28 ]
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  %7 = load i32* %nseq, align 4, !tbaa !3
  %cmp1148 = icmp sgt i32 %7, 0
  br i1 %cmp1148, label %for.body13, label %for.inc28

for.body13:                                       ; preds = %for.body7, %for.body13
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body13 ], [ 0, %for.body7 ]
  %8 = load i8*** %aseq, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds i8** %8, i64 %indvars.iv
  %9 = load i8** %arrayidx15, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %9, i64 %indvars.iv56
  %call17 = call i8* @strncpy(i8* %0, i8* %add.ptr, i64 50) #5
  store i8 0, i8* %arrayidx19, align 2, !tbaa !1
  %10 = load i8*** %sqname21, align 8, !tbaa !0
  %arrayidx22 = getelementptr inbounds i8** %10, i64 %indvars.iv
  %11 = load i8** %arrayidx22, align 8, !tbaa !0
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str7, i64 0, i64 0), i32 %namelen.0.lcssa, i8* %11, i8* %0) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %12 = load i32* %nseq, align 4, !tbaa !3
  %13 = trunc i64 %indvars.iv.next to i32
  %cmp11 = icmp slt i32 %13, %12
  br i1 %cmp11, label %for.body13, label %for.inc28

for.inc28:                                        ; preds = %for.body13, %for.body7
  %indvars.iv.next57 = add i64 %indvars.iv56, 50
  %14 = load i32* %alen, align 4, !tbaa !3
  %15 = trunc i64 %indvars.iv.next57 to i32
  %cmp5 = icmp slt i32 %15, %14
  br i1 %cmp5, label %for.body7, label %for.end29

for.end29:                                        ; preds = %for.inc28, %for.end
  call void @llvm.lifetime.end(i64 64, i8* %0) #4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readonly }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}

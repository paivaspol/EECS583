; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/a2m.c'
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

@.str = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str1 = private unnamed_addr constant [37 x i8] c"Blank name in A2M file %s (line %d)\0A\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c">%s %s\0A\00", align 1
@.str4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.msa_struct* @ReadA2M(%struct.msafile_struct* %afp) #0 {
entry:
  %buf = alloca i8*, align 8
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %f = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0
  %0 = load %struct._IO_FILE** %f, align 8, !tbaa !0
  %call = call i32 @feof(%struct._IO_FILE* %0) #4
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct.msa_struct* @MSAAlloc(i32 10, i32 0) #4
  %call2687480 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #4
  store i8* %call2687480, i8** %buf, align 8, !tbaa !0
  %cmp697581 = icmp eq i8* %call2687480, null
  br i1 %cmp697581, label %if.then42, label %while.body.lr.ph.lr.ph.lr.ph

while.body.lr.ph.lr.ph.lr.ph:                     ; preds = %if.end
  %aseq = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 0
  %sqlen = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 42
  %fname = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1
  %linenumber = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 2
  %index = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 39
  %nseqalloc = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 40
  %sqname = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 1
  %nseq = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 4
  br label %while.body.lr.ph.lr.ph

while.body.lr.ph.lr.ph:                           ; preds = %while.body.lr.ph.lr.ph.lr.ph, %if.end21
  %call2687484 = phi i8* [ %call2687480, %while.body.lr.ph.lr.ph.lr.ph ], [ %call26874, %if.end21 ]
  %idx.0.ph.ph83 = phi i32 [ 0, %while.body.lr.ph.lr.ph.lr.ph ], [ %call12, %if.end21 ]
  %name.0.ph.ph82 = phi i8* [ null, %while.body.lr.ph.lr.ph.lr.ph ], [ %call6, %if.end21 ]
  %idxprom30 = sext i32 %idx.0.ph.ph83 to i64
  br label %while.body.lr.ph

while.cond.outer.loopexit:                        ; preds = %if.else
  %call268 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #4
  store i8* %call268, i8** %buf, align 8, !tbaa !0
  %cmp69 = icmp eq i8* %call268, null
  br i1 %cmp69, label %if.then42, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.body.lr.ph.lr.ph, %while.cond.outer.loopexit
  %call26877 = phi i8* [ %call2687484, %while.body.lr.ph.lr.ph ], [ %call268, %while.cond.outer.loopexit ]
  %name.0.ph76 = phi i8* [ %name.0.ph.ph82, %while.body.lr.ph.lr.ph ], [ null, %while.cond.outer.loopexit ]
  %cmp22 = icmp eq i8* %name.0.ph76, null
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %call270 = phi i8* [ %call26877, %while.body.lr.ph ], [ %call2, %while.cond.backedge ]
  %1 = load i8* %call270, align 1, !tbaa !1
  %cmp3 = icmp eq i8 %1, 62
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %while.body
  %incdec.ptr = getelementptr inbounds i8* %call270, i64 1
  store i8* %incdec.ptr, i8** %buf, align 8, !tbaa !0
  %call6 = call i8* @sre_strtok(i8** %buf, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i32* %len1) #4
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then5
  %2 = load i8** %fname, align 8, !tbaa !0
  %3 = load i32* %linenumber, align 4, !tbaa !3
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([37 x i8]* @.str1, i64 0, i64 0), i8* %2, i32 %3) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then5
  %call11 = call i8* @sre_strtok(i8** %buf, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0), i32* %len2) #4
  %4 = load %struct.GKI** %index, align 8, !tbaa !0
  %call12 = call i32 @GKIStoreKey(%struct.GKI* %4, i8* %call6) #4
  %5 = load i32* %nseqalloc, align 4, !tbaa !3
  %cmp13 = icmp slt i32 %call12, %5
  br i1 %cmp13, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end10
  call void @MSAExpand(%struct.msa_struct* %call1) #4
  br label %if.end16

if.end16:                                         ; preds = %if.end10, %if.then15
  %6 = load i32* %len1, align 4, !tbaa !3
  %call17 = call i8* @sre_strdup(i8* %call6, i32 %6) #4
  %idxprom = sext i32 %call12 to i64
  %7 = load i8*** %sqname, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %7, i64 %idxprom
  store i8* %call17, i8** %arrayidx, align 8, !tbaa !0
  %cmp18 = icmp eq i8* %call11, null
  br i1 %cmp18, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end16
  call void @MSASetSeqDescription(%struct.msa_struct* %call1, i32 %call12, i8* %call11) #4
  br label %if.end21

if.end21:                                         ; preds = %if.end16, %if.then20
  %8 = load i32* %nseq, align 4, !tbaa !3
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %nseq, align 4, !tbaa !3
  %call26874 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #4
  store i8* %call26874, i8** %buf, align 8, !tbaa !0
  %cmp6975 = icmp eq i8* %call26874, null
  br i1 %cmp6975, label %while.end, label %while.body.lr.ph.lr.ph

if.else:                                          ; preds = %while.body
  br i1 %cmp22, label %while.cond.outer.loopexit, label %if.then24

if.then24:                                        ; preds = %if.else
  %call25 = call i8* @sre_strtok(i8** %buf, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i32* %len1) #4
  %cmp26 = icmp eq i8* %call25, null
  br i1 %cmp26, label %while.cond.backedge, label %if.end29

while.cond.backedge:                              ; preds = %if.then24, %if.end29
  %call2 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #4
  store i8* %call2, i8** %buf, align 8, !tbaa !0
  %cmp = icmp eq i8* %call2, null
  br i1 %cmp, label %while.end, label %while.body

if.end29:                                         ; preds = %if.then24
  %9 = load i8*** %aseq, align 8, !tbaa !0
  %arrayidx31 = getelementptr inbounds i8** %9, i64 %idxprom30
  %10 = load i32** %sqlen, align 8, !tbaa !0
  %arrayidx33 = getelementptr inbounds i32* %10, i64 %idxprom30
  %11 = load i32* %arrayidx33, align 4, !tbaa !3
  %12 = load i32* %len1, align 4, !tbaa !3
  %call34 = call i32 @sre_strcat(i8** %arrayidx31, i32 %11, i8* %call25, i32 %12) #4
  %13 = load i32** %sqlen, align 8, !tbaa !0
  %arrayidx37 = getelementptr inbounds i32* %13, i64 %idxprom30
  store i32 %call34, i32* %arrayidx37, align 4, !tbaa !3
  br label %while.cond.backedge

while.end:                                        ; preds = %if.end21, %while.cond.backedge
  %name.0.ph73 = phi i8* [ %name.0.ph76, %while.cond.backedge ], [ %call6, %if.end21 ]
  %cmp40 = icmp eq i8* %name.0.ph73, null
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end, %while.cond.outer.loopexit, %while.end
  call void @MSAFree(%struct.msa_struct* %call1) #4
  br label %return

if.end43:                                         ; preds = %while.end
  call void @MSAVerifyParse(%struct.msa_struct* %call1) #4
  br label %return

return:                                           ; preds = %entry, %if.end43, %if.then42
  %retval.0 = phi %struct.msa_struct* [ null, %if.then42 ], [ %call1, %if.end43 ], [ null, %entry ]
  ret %struct.msa_struct* %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @feof(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare %struct.msa_struct* @MSAAlloc(i32, i32) #2

; Function Attrs: optsize
declare i8* @MSAFileGetLine(%struct.msafile_struct*) #2

; Function Attrs: optsize
declare i8* @sre_strtok(i8**, i8*, i32*) #2

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: optsize
declare i32 @GKIStoreKey(%struct.GKI*, i8*) #2

; Function Attrs: optsize
declare void @MSAExpand(%struct.msa_struct*) #2

; Function Attrs: optsize
declare i8* @sre_strdup(i8*, i32) #2

; Function Attrs: optsize
declare void @MSASetSeqDescription(%struct.msa_struct*, i32, i8*) #2

; Function Attrs: optsize
declare i32 @sre_strcat(i8**, i32, i8*, i32) #2

; Function Attrs: optsize
declare void @MSAFree(%struct.msa_struct*) #2

; Function Attrs: optsize
declare void @MSAVerifyParse(%struct.msa_struct*) #2

; Function Attrs: nounwind optsize uwtable
define void @WriteA2M(%struct._IO_FILE* nocapture %fp, %struct.msa_struct* nocapture %msa) #0 {
entry:
  %buf = alloca [64 x i8], align 16
  %0 = getelementptr inbounds [64 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 64, i8* %0) #3
  %arrayidx = getelementptr inbounds [64 x i8]* %buf, i64 0, i64 60
  store i8 0, i8* %arrayidx, align 4, !tbaa !1
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4
  %1 = load i32* %nseq, align 4, !tbaa !3
  %cmp41 = icmp sgt i32 %1, 0
  br i1 %cmp41, label %for.body.lr.ph, label %for.end22

for.body.lr.ph:                                   ; preds = %entry
  %sqname = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1
  %sqdesc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 15
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc21
  %indvars.iv43 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next44, %for.inc21 ]
  %2 = load i8*** %sqname, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds i8** %2, i64 %indvars.iv43
  %3 = load i8** %arrayidx2, align 8, !tbaa !0
  %4 = load i8*** %sqdesc, align 8, !tbaa !0
  %cmp3 = icmp eq i8** %4, null
  br i1 %cmp3, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %arrayidx6 = getelementptr inbounds i8** %4, i64 %indvars.iv43
  %5 = load i8** %arrayidx6, align 8, !tbaa !0
  %cmp7 = icmp eq i8* %5, null
  %. = select i1 %cmp7, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), i8* %5
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %for.body
  %cond = phi i8* [ getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), %for.body ], [ %., %land.lhs.true ]
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i8* %3, i8* %cond) #4
  %6 = load i32* %alen, align 4, !tbaa !3
  %cmp1239 = icmp sgt i32 %6, 0
  br i1 %cmp1239, label %for.body13, label %for.inc21

for.body13:                                       ; preds = %cond.end, %for.body13
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body13 ], [ 0, %cond.end ]
  %7 = load i8*** %aseq, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds i8** %7, i64 %indvars.iv43
  %8 = load i8** %arrayidx16, align 8, !tbaa !0
  %arrayidx17 = getelementptr inbounds i8* %8, i64 %indvars.iv
  %call18 = call i8* @strncpy(i8* %0, i8* %arrayidx17, i64 60) #4
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0), i8* %0) #4
  %indvars.iv.next = add i64 %indvars.iv, 60
  %9 = load i32* %alen, align 4, !tbaa !3
  %10 = trunc i64 %indvars.iv.next to i32
  %cmp12 = icmp slt i32 %10, %9
  br i1 %cmp12, label %for.body13, label %for.inc21

for.inc21:                                        ; preds = %for.body13, %cond.end
  %indvars.iv.next44 = add i64 %indvars.iv43, 1
  %11 = load i32* %nseq, align 4, !tbaa !3
  %12 = trunc i64 %indvars.iv.next44 to i32
  %cmp = icmp slt i32 %12, %11
  br i1 %cmp, label %for.body, label %for.end22

for.end22:                                        ; preds = %for.inc21, %entry
  call void @llvm.lifetime.end(i64 64, i8* %0) #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
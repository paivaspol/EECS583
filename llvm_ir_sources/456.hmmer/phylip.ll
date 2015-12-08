; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/phylip.c'
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
@.str1 = private unnamed_addr constant [61 x i8] c"Failed to parse nseq/alen from first line of PHYLIP file %s\0A\00", align 1
@.str2 = private unnamed_addr constant [65 x i8] c"nseq and/or alen not an integer in first line of PHYLIP file %s\0A\00", align 1
@.str3 = private unnamed_addr constant [55 x i8] c"Failed to parse sequence at line %d of PHYLIP file %s\0A\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c" %d  %d\0A\00", align 1
@.str6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str7 = private unnamed_addr constant [12 x i8] c"%-10.10s%s\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.msa_struct* @ReadPhylip(%struct.msafile_struct* %afp) #0 {
entry:
  %s = alloca i8*, align 8
  %name = alloca [11 x i8], align 1
  %slen = alloca i32, align 4
  %f = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0
  %0 = load %struct._IO_FILE** %f, align 8, !tbaa !0
  %call = call i32 @feof(%struct._IO_FILE* %0) #6
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %while.cond, label %return

while.cond:                                       ; preds = %entry, %while.body
  %call1 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6
  store i8* %call1, i8** %s, align 8, !tbaa !0
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call2 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i32* null) #6
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %while.cond, label %if.end5

if.end5:                                          ; preds = %while.body
  %call6 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i32* null) #6
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  %fname = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1
  %1 = load i8** %fname, align 8, !tbaa !0
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([61 x i8]* @.str1, i64 0, i64 0), i8* %1) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5
  %call10 = call i32 @IsInt(i8* %call2) #6
  %tobool11 = icmp eq i32 %call10, 0
  br i1 %tobool11, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %call12 = call i32 @IsInt(i8* %call6) #6
  %tobool13 = icmp eq i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %lor.lhs.false, %if.end9
  %fname15 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1
  %2 = load i8** %fname15, align 8, !tbaa !0
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([65 x i8]* @.str2, i64 0, i64 0), i8* %2) #6
  br label %if.end16

if.end16:                                         ; preds = %lor.lhs.false, %if.then14
  %call17 = call i32 @atoi(i8* %call2) #7
  br label %while.end

while.end:                                        ; preds = %while.cond, %if.end16
  %nseq.0 = phi i32 [ %call17, %if.end16 ], [ 0, %while.cond ]
  %call19 = call %struct.msa_struct* @MSAAlloc(i32 %nseq.0, i32 0) #6
  %arraydecay = getelementptr inbounds [11 x i8]* %name, i64 0, i64 0
  %arrayidx33 = getelementptr inbounds [11 x i8]* %name, i64 0, i64 10
  %index = getelementptr inbounds %struct.msa_struct* %call19, i64 0, i32 39
  %sqname = getelementptr inbounds %struct.msa_struct* %call19, i64 0, i32 1
  %linenumber = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 2
  %fname45 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1
  %aseq = getelementptr inbounds %struct.msa_struct* %call19, i64 0, i32 0
  %sqlen = getelementptr inbounds %struct.msa_struct* %call19, i64 0, i32 42
  br label %while.cond20.outer

while.cond20.outer:                               ; preds = %if.end46, %while.end
  %idx.0.ph = phi i32 [ 0, %while.end ], [ %.inc, %if.end46 ]
  %nblock.0.ph = phi i32 [ 0, %while.end ], [ %inc58.nblock.0, %if.end46 ]
  br label %while.cond20

while.cond20:                                     ; preds = %while.cond20.outer, %while.body23
  %call21 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6
  store i8* %call21, i8** %s, align 8, !tbaa !0
  %cmp22 = icmp eq i8* %call21, null
  br i1 %cmp22, label %while.end60, label %while.body23

while.body23:                                     ; preds = %while.cond20
  %3 = load i8* %call21, align 1, !tbaa !1
  %idxprom = sext i8 %3 to i64
  %call24 = call i16** @__ctype_b_loc() #8
  %4 = load i16** %call24, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i16* %4, i64 %idxprom
  %5 = load i16* %arrayidx, align 2, !tbaa !3
  %and = and i16 %5, 8192
  %tobool26 = icmp eq i16 %and, 0
  br i1 %tobool26, label %if.end28, label %while.cond20

if.end28:                                         ; preds = %while.body23
  %cmp29 = icmp eq i32 %nblock.0.ph, 0
  br i1 %cmp29, label %if.then31, label %if.end40

if.then31:                                        ; preds = %if.end28
  %call32 = call i8* @strncpy(i8* %arraydecay, i8* %call21, i64 10) #6
  store i8 0, i8* %arrayidx33, align 1, !tbaa !1
  %6 = load %struct.GKI** %index, align 8, !tbaa !0
  %call35 = call i32 @GKIStoreKey(%struct.GKI* %6, i8* %arraydecay) #6
  %call37 = call i8* @sre_strdup(i8* %arraydecay, i32 -1) #6
  %idxprom38 = sext i32 %idx.0.ph to i64
  %7 = load i8*** %sqname, align 8, !tbaa !0
  %arrayidx39 = getelementptr inbounds i8** %7, i64 %idxprom38
  store i8* %call37, i8** %arrayidx39, align 8, !tbaa !0
  %8 = load i8** %s, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %8, i64 10
  store i8* %add.ptr, i8** %s, align 8, !tbaa !0
  br label %if.end40

if.end40:                                         ; preds = %if.then31, %if.end28
  %call41 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i32* %slen) #6
  %cmp42 = icmp eq i8* %call41, null
  br i1 %cmp42, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.end40
  %9 = load i32* %linenumber, align 4, !tbaa !4
  %10 = load i8** %fname45, align 8, !tbaa !0
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), i32 %9, i8* %10) #6
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end40
  %idxprom47 = sext i32 %idx.0.ph to i64
  %11 = load i8*** %aseq, align 8, !tbaa !0
  %arrayidx48 = getelementptr inbounds i8** %11, i64 %idxprom47
  %12 = load i32** %sqlen, align 8, !tbaa !0
  %arrayidx50 = getelementptr inbounds i32* %12, i64 %idxprom47
  %13 = load i32* %arrayidx50, align 4, !tbaa !4
  %14 = load i32* %slen, align 4, !tbaa !4
  %call51 = call i32 @sre_strcat(i8** %arrayidx48, i32 %13, i8* %call41, i32 %14) #6
  %15 = load i32** %sqlen, align 8, !tbaa !0
  %arrayidx54 = getelementptr inbounds i32* %15, i64 %idxprom47
  store i32 %call51, i32* %arrayidx54, align 4, !tbaa !4
  %inc = add nsw i32 %idx.0.ph, 1
  %cmp55 = icmp eq i32 %inc, %nseq.0
  %.inc = select i1 %cmp55, i32 0, i32 %inc
  %inc58 = zext i1 %cmp55 to i32
  %inc58.nblock.0 = add nsw i32 %inc58, %nblock.0.ph
  br label %while.cond20.outer

while.end60:                                      ; preds = %while.cond20
  %nseq61 = getelementptr inbounds %struct.msa_struct* %call19, i64 0, i32 4
  store i32 %nseq.0, i32* %nseq61, align 4, !tbaa !4
  call void @MSAVerifyParse(%struct.msa_struct* %call19) #6
  br label %return

return:                                           ; preds = %entry, %while.end60
  %retval.0 = phi %struct.msa_struct* [ %call19, %while.end60 ], [ null, %entry ]
  ret %struct.msa_struct* %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @feof(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare i8* @MSAFileGetLine(%struct.msafile_struct*) #2

; Function Attrs: optsize
declare i8* @sre_strtok(i8**, i8*, i32*) #2

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: optsize
declare i32 @IsInt(i8*) #2

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #3

; Function Attrs: optsize
declare %struct.msa_struct* @MSAAlloc(i32, i32) #2

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #1

; Function Attrs: optsize
declare i32 @GKIStoreKey(%struct.GKI*, i8*) #2

; Function Attrs: optsize
declare i8* @sre_strdup(i8*, i32) #2

; Function Attrs: optsize
declare i32 @sre_strcat(i8**, i32, i8*, i32) #2

; Function Attrs: optsize
declare void @MSAVerifyParse(%struct.msa_struct*) #2

; Function Attrs: nounwind optsize uwtable
define void @WritePhylip(%struct._IO_FILE* nocapture %fp, %struct.msa_struct* nocapture %msa) #0 {
entry:
  %buf = alloca [51 x i8], align 16
  %0 = getelementptr inbounds [51 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 51, i8* %0) #5
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4
  %1 = load i32* %nseq, align 4, !tbaa !4
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3
  %2 = load i32* %alen, align 4, !tbaa !4
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0), i32 %1, i32 %2) #6
  %3 = load i32* %alen, align 4, !tbaa !4
  %cmp41 = icmp sgt i32 %3, 0
  br i1 %cmp41, label %for.body.lr.ph, label %for.end22

for.body.lr.ph:                                   ; preds = %entry
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0
  %arrayidx10 = getelementptr inbounds [51 x i8]* %buf, i64 0, i64 50
  %sqname = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc21
  %indvars.iv43 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next44, %for.inc21 ]
  %4 = trunc i64 %indvars.iv43 to i32
  %cmp2 = icmp sgt i32 %4, 0
  br i1 %cmp2, label %if.then, label %for.cond4.preheader

if.then:                                          ; preds = %for.body
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.body, %if.then
  %5 = load i32* %nseq, align 4, !tbaa !4
  %cmp639 = icmp sgt i32 %5, 0
  br i1 %cmp639, label %for.body7, label %for.inc21

for.body7:                                        ; preds = %for.cond4.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond4.preheader ]
  %6 = load i8*** %aseq, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %6, i64 %indvars.iv
  %7 = load i8** %arrayidx, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %7, i64 %indvars.iv43
  %call8 = call i8* @strncpy(i8* %0, i8* %add.ptr, i64 50) #6
  store i8 0, i8* %arrayidx10, align 2, !tbaa !1
  br i1 %cmp2, label %if.then13, label %if.else

if.then13:                                        ; preds = %for.body7
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str6, i64 0, i64 0), i8* %0) #6
  br label %for.inc

if.else:                                          ; preds = %for.body7
  %8 = load i8*** %sqname, align 8, !tbaa !0
  %arrayidx17 = getelementptr inbounds i8** %8, i64 %indvars.iv
  %9 = load i8** %arrayidx17, align 8, !tbaa !0
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0), i8* %9, i8* %0) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %if.else
  %indvars.iv.next = add i64 %indvars.iv, 1
  %10 = load i32* %nseq, align 4, !tbaa !4
  %11 = trunc i64 %indvars.iv.next to i32
  %cmp6 = icmp slt i32 %11, %10
  br i1 %cmp6, label %for.body7, label %for.inc21

for.inc21:                                        ; preds = %for.inc, %for.cond4.preheader
  %indvars.iv.next44 = add i64 %indvars.iv43, 50
  %12 = load i32* %alen, align 4, !tbaa !4
  %13 = trunc i64 %indvars.iv.next44 to i32
  %cmp = icmp slt i32 %13, %12
  br i1 %cmp, label %for.body, label %for.end22

for.end22:                                        ; preds = %for.inc21, %entry
  call void @llvm.lifetime.end(i64 51, i8* %0) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { nounwind optsize readnone }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"short", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}

; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/eps.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }

@.str = private unnamed_addr constant [8 x i8] c"Courier\00", align 1
@.str1 = private unnamed_addr constant [39 x i8] c"No EPS fmt if alignment is >50 columns\00", align 1
@.str2 = private unnamed_addr constant [35 x i8] c"Alignment too wide to write in EPS\00", align 1
@.str3 = private unnamed_addr constant [30 x i8] c"Too many seqs to write in EPS\00", align 1
@.str4 = private unnamed_addr constant [26 x i8] c"%%!PS-Adobe-3.0 EPSF-3.0\0A\00", align 1
@.str5 = private unnamed_addr constant [30 x i8] c"%%%%BoundingBox: %d %d %d %d\0A\00", align 1
@.str6 = private unnamed_addr constant [14 x i8] c"%%%%Pages: 1\0A\00", align 1
@.str7 = private unnamed_addr constant [17 x i8] c"%%%%EndComments\0A\00", align 1
@.str8 = private unnamed_addr constant [14 x i8] c"/%s findfont\0A\00", align 1
@.str9 = private unnamed_addr constant [14 x i8] c"%d scalefont\0A\00", align 1
@.str10 = private unnamed_addr constant [9 x i8] c"setfont\0A\00", align 1
@.str11 = private unnamed_addr constant [9 x i8] c"newpath\0A\00", align 1
@.str12 = private unnamed_addr constant [14 x i8] c"%d %d moveto\0A\00", align 1
@.str13 = private unnamed_addr constant [11 x i8] c"(%s) show\0A\00", align 1
@.str14 = private unnamed_addr constant [11 x i8] c"(%c) show\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @EPSWriteSmallMSA(%struct._IO_FILE* nocapture %fp, %struct.msa_struct* nocapture %msa) #0 {
entry:
  %call = tail call i8* @sre_strdup(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 -1) #5
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4
  %0 = load i32* %nseq, align 4, !tbaa !0
  %cmp106 = icmp sgt i32 %0, 0
  br i1 %cmp106, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sqname = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1
  %1 = load i8*** %sqname, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv113 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next114, %for.body ]
  %namewidth.0108 = phi i32 [ 0, %for.body.lr.ph ], [ %conv.namewidth.0, %for.body ]
  %arrayidx = getelementptr inbounds i8** %1, i64 %indvars.iv113
  %2 = load i8** %arrayidx, align 8, !tbaa !3
  %call1 = tail call i64 @strlen(i8* %2) #6
  %conv = trunc i64 %call1 to i32
  %cmp2 = icmp sgt i32 %conv, %namewidth.0108
  %conv.namewidth.0 = select i1 %cmp2, i32 %conv, i32 %namewidth.0108
  %indvars.iv.next114 = add i64 %indvars.iv113, 1
  %3 = trunc i64 %indvars.iv.next114 to i32
  %cmp = icmp slt i32 %3, %0
  br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %phitmp = shl i32 %conv.namewidth.0, 3
  %phitmp110 = add i32 %phitmp, 8
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %namewidth.0.lcssa = phi i32 [ %phitmp110, %for.cond.for.end_crit_edge ], [ 8, %entry ]
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3
  %4 = load i32* %alen, align 4, !tbaa !0
  %cmp4 = icmp sgt i32 %4, 50
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.end
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([39 x i8]* @.str1, i64 0, i64 0)) #5
  %.pre = load i32* %alen, align 4, !tbaa !0
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %for.end
  %5 = phi i32 [ %.pre, %if.then6 ], [ %4, %for.end ]
  %mul9 = mul nsw i32 %5, 9
  %add10 = add nsw i32 %mul9, %namewidth.0.lcssa
  %cmp11 = icmp sgt i32 %add10, 612
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end7
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([35 x i8]* @.str2, i64 0, i64 0)) #5
  br label %if.end14

if.end14:                                         ; preds = %if.end7, %if.then13
  %6 = load i32* %nseq, align 4, !tbaa !0
  %mul16 = mul nsw i32 %6, 15
  %cmp17 = icmp sgt i32 %mul16, 792
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end14
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([30 x i8]* @.str3, i64 0, i64 0)) #5
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end14
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([26 x i8]* @.str4, i64 0, i64 0)) #5
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([30 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 %add10, i32 %mul16) #5
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0)) #5
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str7, i64 0, i64 0)) #5
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0), i8* %call) #5
  %call26 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i32 12) #5
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str10, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %fp)
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str11, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %fp)
  %9 = load i32* %nseq, align 4, !tbaa !0
  %cmp31104 = icmp sgt i32 %9, 0
  br i1 %cmp31104, label %for.body33.lr.ph, label %for.end60

for.body33.lr.ph:                                 ; preds = %if.end20
  %sqname39 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0
  br label %for.body33

for.body33:                                       ; preds = %for.body33.lr.ph, %for.inc58
  %indvars.iv111 = phi i64 [ 0, %for.body33.lr.ph ], [ %indvars.iv.next112, %for.inc58 ]
  %10 = phi i32 [ %9, %for.body33.lr.ph ], [ %21, %for.inc58 ]
  %11 = trunc i64 %indvars.iv111 to i32
  %sub = sub nsw i32 %10, %11
  %12 = mul i32 %sub, 15
  %mul36 = add i32 %12, -15
  %call37 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), i32 0, i32 %mul36) #5
  %13 = load i8*** %sqname39, align 8, !tbaa !3
  %arrayidx40 = getelementptr inbounds i8** %13, i64 %indvars.iv111
  %14 = load i8** %arrayidx40, align 8, !tbaa !3
  %call41 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str13, i64 0, i64 0), i8* %14) #5
  %15 = load i32* %alen, align 4, !tbaa !0
  %cmp44101 = icmp sgt i32 %15, 0
  br i1 %cmp44101, label %for.body46, label %for.inc58

for.body46:                                       ; preds = %for.body33, %for.body46
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body46 ], [ 0, %for.body33 ]
  %xpos.0103 = phi i32 [ %add54, %for.body46 ], [ %namewidth.0.lcssa, %for.body33 ]
  %call47 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), i32 %xpos.0103, i32 %mul36) #5
  %16 = load i8*** %aseq, align 8, !tbaa !3
  %arrayidx50 = getelementptr inbounds i8** %16, i64 %indvars.iv111
  %17 = load i8** %arrayidx50, align 8, !tbaa !3
  %arrayidx51 = getelementptr inbounds i8* %17, i64 %indvars.iv
  %18 = load i8* %arrayidx51, align 1, !tbaa !1
  %conv52 = sext i8 %18 to i32
  %call53 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str14, i64 0, i64 0), i32 %conv52) #5
  %add54 = add nsw i32 %xpos.0103, 9
  %indvars.iv.next = add i64 %indvars.iv, 1
  %19 = load i32* %alen, align 4, !tbaa !0
  %20 = trunc i64 %indvars.iv.next to i32
  %cmp44 = icmp slt i32 %20, %19
  br i1 %cmp44, label %for.body46, label %for.inc58

for.inc58:                                        ; preds = %for.body46, %for.body33
  %indvars.iv.next112 = add i64 %indvars.iv111, 1
  %21 = load i32* %nseq, align 4, !tbaa !0
  %22 = trunc i64 %indvars.iv.next112 to i32
  %cmp31 = icmp slt i32 %22, %21
  br i1 %cmp31, label %for.body33, label %for.end60

for.end60:                                        ; preds = %for.inc58, %if.end20
  tail call void @free(i8* %call) #5
  ret void
}

; Function Attrs: optsize
declare i8* @sre_strdup(i8*, i32) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: optsize
declare void @Die(i8*, ...) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readonly }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}

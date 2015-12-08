; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/misc.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.threshold_s = type { float, double, float, double, i32, i32 }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str1 = private unnamed_addr constant [12 x i8] c"%s %s (%s)\0A\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"HMMER\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"2.3\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"May 2003\00", align 1
@.str5 = private unnamed_addr constant [70 x i8] c"Copyright (C) 1992-2003 HHMI/Washington University School of Medicine\00", align 1
@.str6 = private unnamed_addr constant [62 x i8] c"Freely distributed under the GNU General Public License (GPL)\00", align 1
@.str7 = private unnamed_addr constant [73 x i8] c"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -\0A\00", align 1
@Getword.buffer = internal global [512 x i8] zeroinitializer, align 16
@Getword.sptr = internal unnamed_addr global i8* null, align 8
@.str8 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str9 = private unnamed_addr constant [43 x i8] c"Parse failed: expected string, got nothing\00", align 1
@.str10 = private unnamed_addr constant [39 x i8] c"Parse failed: expected integer, got %s\00", align 1
@.str11 = private unnamed_addr constant [42 x i8] c"Parse failed: expected real value, got %s\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @HMMERBanner(%struct._IO_FILE* nocapture %fp, i8* %banner) #0 {
entry:
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* %banner) #6
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #6
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8]* @.str5, i64 0, i64 0)) #6
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str6, i64 0, i64 0)) #6
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([73 x i8]* @.str7, i64 0, i64 0), i64 72, i64 1, %struct._IO_FILE* %fp)
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize uwtable
define i8* @Getword(%struct._IO_FILE* nocapture %fp, i32 %type) #0 {
entry:
  %0 = load i8** @Getword.sptr, align 8, !tbaa !0
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %while.body, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %call = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0)) #6
  store i8* %call, i8** @Getword.sptr, align 8, !tbaa !0
  %cmp125 = icmp eq i8* %call, null
  br i1 %cmp125, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.cond.preheader, %if.end9
  %call2 = tail call i8* @fgets(i8* getelementptr inbounds ([512 x i8]* @Getword.buffer, i64 0, i64 0), i32 512, %struct._IO_FILE* %fp) #6
  store i8* %call2, i8** @Getword.sptr, align 8, !tbaa !0
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %return, label %if.end5

if.end5:                                          ; preds = %while.body
  %call6 = tail call i8* @strchr(i8* getelementptr inbounds ([512 x i8]* @Getword.buffer, i64 0, i64 0), i32 35) #7
  store i8* %call6, i8** @Getword.sptr, align 8, !tbaa !0
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end5
  store i8 0, i8* %call6, align 1, !tbaa !1
  br label %if.end9

if.end9:                                          ; preds = %if.end5, %if.then8
  %call10 = tail call i8* @strtok(i8* getelementptr inbounds ([512 x i8]* @Getword.buffer, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0)) #6
  store i8* %call10, i8** @Getword.sptr, align 8, !tbaa !0
  %cmp1 = icmp eq i8* %call10, null
  br i1 %cmp1, label %while.body, label %while.end

while.end:                                        ; preds = %if.end9, %while.cond.preheader
  %.lcssa = phi i8* [ %call, %while.cond.preheader ], [ %call10, %if.end9 ]
  switch i32 %type, label %sw.epilog [
    i32 4, label %sw.bb
    i32 1, label %sw.bb15
    i32 2, label %sw.bb19
  ]

sw.bb:                                            ; preds = %while.end
  %strlenfirst = load i8* %.lcssa, align 1
  %cmp12 = icmp eq i8 %strlenfirst, 0
  br i1 %cmp12, label %if.then13, label %sw.epilog

if.then13:                                        ; preds = %sw.bb
  tail call void (i8*, ...)* @Warn(i8* getelementptr inbounds ([43 x i8]* @.str9, i64 0, i64 0)) #6
  store i8* null, i8** @Getword.sptr, align 8, !tbaa !0
  br label %sw.epilog

sw.bb15:                                          ; preds = %while.end
  %call16 = tail call i32 @IsInt(i8* %.lcssa) #6
  %tobool = icmp eq i32 %call16, 0
  br i1 %tobool, label %if.then17, label %sw.epilog

if.then17:                                        ; preds = %sw.bb15
  %1 = load i8** @Getword.sptr, align 8, !tbaa !0
  tail call void (i8*, ...)* @Warn(i8* getelementptr inbounds ([39 x i8]* @.str10, i64 0, i64 0), i8* %1) #6
  store i8* null, i8** @Getword.sptr, align 8, !tbaa !0
  br label %sw.epilog

sw.bb19:                                          ; preds = %while.end
  %call20 = tail call i32 @IsReal(i8* %.lcssa) #6
  %tobool21 = icmp eq i32 %call20, 0
  br i1 %tobool21, label %if.then22, label %sw.epilog

if.then22:                                        ; preds = %sw.bb19
  %2 = load i8** @Getword.sptr, align 8, !tbaa !0
  tail call void (i8*, ...)* @Warn(i8* getelementptr inbounds ([42 x i8]* @.str11, i64 0, i64 0), i8* %2) #6
  store i8* null, i8** @Getword.sptr, align 8, !tbaa !0
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb15, %if.then22, %if.then17, %sw.bb, %if.then13, %while.end
  %3 = load i8** @Getword.sptr, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %while.body, %sw.epilog
  %retval.0 = phi i8* [ %3, %sw.epilog ], [ null, %while.body ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize
declare i8* @strtok(i8*, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: optsize
declare void @Warn(i8*, ...) #3

; Function Attrs: optsize
declare i32 @IsInt(i8*) #3

; Function Attrs: optsize
declare i32 @IsReal(i8*) #3

; Function Attrs: nounwind optsize uwtable
define i8* @Getline(i8* %s, i32 %n, %struct._IO_FILE* nocapture %fp) #0 {
entry:
  %call13 = tail call i8* @fgets(i8* %s, i32 %n, %struct._IO_FILE* %fp) #6
  %cmp14 = icmp eq i8* %call13, null
  br i1 %cmp14, label %return, label %while.cond.preheader.lr.ph

while.cond.preheader.lr.ph:                       ; preds = %entry
  %call1 = tail call i16** @__ctype_b_loc() #8
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %while.cond.preheader.lr.ph, %do.body.backedge
  %0 = load i16** %call1, align 8, !tbaa !0
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %while.cond.preheader
  %first.0 = phi i8* [ %incdec.ptr, %while.cond ], [ %s, %while.cond.preheader ]
  %1 = load i8* %first.0, align 1, !tbaa !1
  %idxprom = sext i8 %1 to i64
  %arrayidx = getelementptr inbounds i16* %0, i64 %idxprom
  %2 = load i16* %arrayidx, align 2, !tbaa !3
  %and = and i16 %2, 8192
  %tobool = icmp eq i16 %and, 0
  %incdec.ptr = getelementptr inbounds i8* %first.0, i64 1
  br i1 %tobool, label %do.cond, label %while.cond

do.cond:                                          ; preds = %while.cond
  switch i8 %1, label %return [
    i8 35, label %do.body.backedge
    i8 0, label %do.body.backedge
  ]

do.body.backedge:                                 ; preds = %do.cond, %do.cond
  %call = tail call i8* @fgets(i8* %s, i32 %n, %struct._IO_FILE* %fp) #6
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %return, label %while.cond.preheader

return:                                           ; preds = %do.body.backedge, %do.cond, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %s, %do.cond ], [ null, %do.body.backedge ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind optsize uwtable
define i32 @SetAutocuts(%struct.threshold_s* nocapture %thresh, %struct.plan7_s* nocapture %hmm) #0 {
entry:
  %autocut = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 4
  %0 = load i32* %autocut, align 4, !tbaa !4
  switch i32 %0, label %return [
    i32 1, label %if.then
    i32 2, label %if.then4
    i32 3, label %if.then17
  ]

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47
  %1 = load i32* %flags, align 4, !tbaa !5
  %and = and i32 %1, 1024
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %ga1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 14
  %2 = load float* %ga1, align 4, !tbaa !6
  %globT = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 0
  store float %2, float* %globT, align 4, !tbaa !6
  %ga2 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 15
  %3 = load float* %ga2, align 4, !tbaa !6
  %domT = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 2
  store float %3, float* %domT, align 4, !tbaa !6
  %domE = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 3
  store double 0x47EFFFFFE0000000, double* %domE, align 8, !tbaa !7
  %globE = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 1
  store double 0x47EFFFFFE0000000, double* %globE, align 8, !tbaa !7
  br label %return

if.then4:                                         ; preds = %entry
  %flags5 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47
  %4 = load i32* %flags5, align 4, !tbaa !5
  %and6 = and i32 %4, 4096
  %tobool7 = icmp eq i32 %and6, 0
  br i1 %tobool7, label %return, label %if.end9

if.end9:                                          ; preds = %if.then4
  %nc1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 18
  %5 = load float* %nc1, align 4, !tbaa !6
  %globT10 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 0
  store float %5, float* %globT10, align 4, !tbaa !6
  %nc2 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 19
  %6 = load float* %nc2, align 4, !tbaa !6
  %domT11 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 2
  store float %6, float* %domT11, align 4, !tbaa !6
  %domE12 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 3
  store double 0x47EFFFFFE0000000, double* %domE12, align 8, !tbaa !7
  %globE13 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 1
  store double 0x47EFFFFFE0000000, double* %globE13, align 8, !tbaa !7
  br label %return

if.then17:                                        ; preds = %entry
  %flags18 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47
  %7 = load i32* %flags18, align 4, !tbaa !5
  %and19 = and i32 %7, 2048
  %tobool20 = icmp eq i32 %and19, 0
  br i1 %tobool20, label %return, label %if.end22

if.end22:                                         ; preds = %if.then17
  %tc1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 16
  %8 = load float* %tc1, align 4, !tbaa !6
  %globT23 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 0
  store float %8, float* %globT23, align 4, !tbaa !6
  %tc2 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 17
  %9 = load float* %tc2, align 4, !tbaa !6
  %domT24 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 2
  store float %9, float* %domT24, align 4, !tbaa !6
  %domE25 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 3
  store double 0x47EFFFFFE0000000, double* %domE25, align 8, !tbaa !7
  %globE26 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 1
  store double 0x47EFFFFFE0000000, double* %globE26, align 8, !tbaa !7
  br label %return

return:                                           ; preds = %if.end, %if.end22, %if.end9, %entry, %if.then17, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then17 ], [ 1, %entry ], [ 1, %if.end9 ], [ 1, %if.end22 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { nounwind optsize readnone }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"short", metadata !1}
!4 = metadata !{metadata !"_ZTSN11threshold_s3$_0E", metadata !1}
!5 = metadata !{metadata !"int", metadata !1}
!6 = metadata !{metadata !"float", metadata !1}
!7 = metadata !{metadata !"double", metadata !1}

; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_inpfile = type { i32, i32, i8*, i8* }

@debug = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [21 x i8] c"Reading MDP file %s\0A\00", align 1
@inp_count = internal unnamed_addr global i32 1, align 4
@.str1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str2 = private unnamed_addr constant [37 x i8] c"No = on line %d in file %s, ignored\0A\00", align 1
@.str3 = private unnamed_addr constant [53 x i8] c"Empty left hand side on line %d in file %s, ignored\0A\00", align 1
@.str4 = private unnamed_addr constant [54 x i8] c"Empty right hand side on line %d in file %s, ignored\0A\00", align 1
@.str5 = private unnamed_addr constant [4 x i8] c"inp\00", align 1
@.str6 = private unnamed_addr constant [55 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c\00", align 1
@.str7 = private unnamed_addr constant [55 x i8] c"Done reading MDP file, there were %d entries in there\0A\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str9 = private unnamed_addr constant [12 x i8] c"%-24s = %s\0A\00", align 1
@.str10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@warn_buf = external global [1024 x i8]
@.str11 = private unnamed_addr constant [40 x i8] c"Unknown left-hand %s in parameter file\0A\00", align 1
@.str12 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str13 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@stderr = external global %struct._IO_FILE*
@.str15 = private unnamed_addr constant [48 x i8] c"%snvalid enum '%s' for variable %s, using '%s'\0A\00", align 1
@.str16 = private unnamed_addr constant [9 x i8] c"ERROR: i\00", align 1
@.str17 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str18 = private unnamed_addr constant [22 x i8] c"Next time use one of:\00", align 1
@.str19 = private unnamed_addr constant [6 x i8] c" '%s'\00", align 1
@.str21 = private unnamed_addr constant [5 x i8] c"*inp\00", align 1
@.str22 = private unnamed_addr constant [13 x i8] c"Inp %d = %s\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.t_inpfile* @read_inpfile(i8* %fn, i32* nocapture %ninp) #0 {
entry:
  %buf = alloca [4096 x i8], align 16
  %buf167 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0
  %lbuf = alloca [4096 x i8], align 16
  %lbuf166 = getelementptr inbounds [4096 x i8]* %lbuf, i64 0, i64 0
  %rbuf = alloca [4096 x i8], align 16
  %0 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %0) #1
  %1 = getelementptr inbounds [4096 x i8]* %lbuf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #1
  %2 = getelementptr inbounds [4096 x i8]* %rbuf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %2) #1
  %3 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %tobool = icmp eq %struct._IO_FILE* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([21 x i8]* @.str, i64 0, i64 0), i8* %fn) #7
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  store i32 1, i32* @inp_count, align 4, !tbaa !3
  %call1 = call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #7
  br label %do.body

do.body:                                          ; preds = %if.then28, %if.then23, %if.else83, %if.then80, %if.then52, %if.then78, %if.then50, %if.end
  %nin.0 = phi i32 [ 0, %if.end ], [ %nin.0, %if.then28 ], [ %nin.0, %if.then23 ], [ %nin.0, %if.then52 ], [ %nin.0, %if.then50 ], [ %nin.0, %if.then80 ], [ %nin.0, %if.then78 ], [ %inc84, %if.else83 ]
  %lc.0 = phi i32 [ 0, %if.end ], [ %inc, %if.then28 ], [ %inc, %if.then23 ], [ %inc, %if.then52 ], [ %inc, %if.then50 ], [ %inc, %if.then80 ], [ %inc, %if.then78 ], [ %inc, %if.else83 ]
  %inp.0 = phi %struct.t_inpfile* [ null, %if.end ], [ %inp.0, %if.then28 ], [ %inp.0, %if.then23 ], [ %inp.0, %if.then52 ], [ %inp.0, %if.then50 ], [ %inp.0, %if.then80 ], [ %inp.0, %if.then78 ], [ %17, %if.else83 ]
  %call2 = call i8* @fgets2(i8* %0, i32 4095, %struct._IO_FILE* %call1) #7
  %inc = add nsw i32 %lc.0, 1
  %tobool3 = icmp eq i8* %call2, null
  br i1 %tobool3, label %do.end, label %if.then4

if.then4:                                         ; preds = %do.body
  %call6 = call i8* @strchr(i8* %0, i32 59) #8
  %cmp = icmp eq i8* %call6, null
  br i1 %cmp, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.then4
  store i8 0, i8* %call6, align 1, !tbaa !1
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.then7
  call void @trim(i8* %0) #7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end8 ]
  %j.0 = phi i32 [ %inc17, %for.inc ], [ 0, %if.end8 ]
  %arrayidx = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 %indvars.iv
  %4 = load i8* %arrayidx, align 1, !tbaa !1
  switch i8 %4, label %for.inc [
    i8 0, label %if.then23
    i8 61, label %for.cond32.loopexit
  ]

for.inc:                                          ; preds = %for.cond
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc17 = add nsw i32 %j.0, 1
  br label %for.cond

if.then23:                                        ; preds = %for.cond
  %cmp24 = icmp sgt i32 %j.0, 0
  %5 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %tobool27 = icmp ne %struct._IO_FILE* %5, null
  %or.cond = and i1 %cmp24, %tobool27
  br i1 %or.cond, label %if.then28, label %do.body

if.then28:                                        ; preds = %if.then23
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([37 x i8]* @.str2, i64 0, i64 0), i32 %inc, i8* %fn) #7
  br label %do.body

for.cond32.loopexit:                              ; preds = %for.cond
  %cmp33149 = icmp sgt i32 %j.0, 0
  br i1 %cmp33149, label %for.body35.lr.ph, label %for.end42

for.body35.lr.ph:                                 ; preds = %for.cond32.loopexit
  %6 = add i32 %j.0, -1
  %7 = zext i32 %6 to i64
  %8 = add i64 %7, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %lbuf166, i8* %buf167, i64 %8, i32 16, i1 false)
  br label %for.end42

for.end42:                                        ; preds = %for.body35.lr.ph, %for.cond32.loopexit
  %idxprom36.lcssa = phi i64 [ %8, %for.body35.lr.ph ], [ 0, %for.cond32.loopexit ]
  %arrayidx44 = getelementptr inbounds [4096 x i8]* %lbuf, i64 0, i64 %idxprom36.lcssa
  store i8 0, i8* %arrayidx44, align 1, !tbaa !1
  call void @trim(i8* %1) #7
  %9 = load i8* %1, align 16, !tbaa !1
  %cmp48 = icmp eq i8 %9, 0
  br i1 %cmp48, label %if.then50, label %for.cond56.preheader

for.cond56.preheader:                             ; preds = %for.end42
  %i.1152 = add nsw i32 %j.0, 1
  %idxprom57153 = sext i32 %i.1152 to i64
  %arrayidx58154 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 %idxprom57153
  %10 = load i8* %arrayidx58154, align 1, !tbaa !1
  %cmp60155 = icmp eq i8 %10, 0
  br i1 %cmp60155, label %for.end70, label %for.body62

if.then50:                                        ; preds = %for.end42
  %11 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %tobool51 = icmp eq %struct._IO_FILE* %11, null
  br i1 %tobool51, label %do.body, label %if.then52

if.then52:                                        ; preds = %if.then50
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 %inc, i8* %fn) #7
  br label %do.body

for.body62:                                       ; preds = %for.cond56.preheader, %for.body62
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %for.body62 ], [ 0, %for.cond56.preheader ]
  %arrayidx72159 = phi i8* [ %arrayidx72, %for.body62 ], [ %2, %for.cond56.preheader ]
  %12 = phi i8 [ %13, %for.body62 ], [ %10, %for.cond56.preheader ]
  %i.1158 = phi i32 [ %i.1, %for.body62 ], [ %i.1152, %for.cond56.preheader ]
  store i8 %12, i8* %arrayidx72159, align 1, !tbaa !1
  %indvars.iv.next173 = add i64 %indvars.iv172, 1
  %i.1 = add nsw i32 %i.1158, 1
  %idxprom57 = sext i32 %i.1 to i64
  %arrayidx58 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 %idxprom57
  %13 = load i8* %arrayidx58, align 1, !tbaa !1
  %cmp60 = icmp eq i8 %13, 0
  %arrayidx72 = getelementptr inbounds [4096 x i8]* %rbuf, i64 0, i64 %indvars.iv.next173
  br i1 %cmp60, label %for.end70, label %for.body62

for.end70:                                        ; preds = %for.body62, %for.cond56.preheader
  %arrayidx72.lcssa = phi i8* [ %2, %for.cond56.preheader ], [ %arrayidx72, %for.body62 ]
  store i8 0, i8* %arrayidx72.lcssa, align 1, !tbaa !1
  call void @trim(i8* %2) #7
  %14 = load i8* %2, align 16, !tbaa !1
  %cmp76 = icmp eq i8 %14, 0
  br i1 %cmp76, label %if.then78, label %if.else83

if.then78:                                        ; preds = %for.end70
  %15 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %tobool79 = icmp eq %struct._IO_FILE* %15, null
  br i1 %tobool79, label %do.body, label %if.then80

if.then80:                                        ; preds = %if.then78
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 %inc, i8* %fn) #7
  br label %do.body

if.else83:                                        ; preds = %for.end70
  %16 = bitcast %struct.t_inpfile* %inp.0 to i8*
  %inc84 = add nsw i32 %nin.0, 1
  %mul = mul i32 %inc84, 24
  %call87 = call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str6, i64 0, i64 0), i32 96, i8* %16, i32 %mul) #7
  %17 = bitcast i8* %call87 to %struct.t_inpfile*
  %idxprom88 = sext i32 %nin.0 to i64
  %count = getelementptr inbounds %struct.t_inpfile* %17, i64 %idxprom88, i32 0
  store i32 0, i32* %count, align 4, !tbaa !3
  %bSet = getelementptr inbounds %struct.t_inpfile* %17, i64 %idxprom88, i32 1
  store i32 0, i32* %bSet, align 4, !tbaa !3
  %call94 = call i8* @gmx_strdup(i8* %1) #7
  %name = getelementptr inbounds %struct.t_inpfile* %17, i64 %idxprom88, i32 2
  store i8* %call94, i8** %name, align 8, !tbaa !0
  %call99 = call i8* @gmx_strdup(i8* %2) #7
  %value = getelementptr inbounds %struct.t_inpfile* %17, i64 %idxprom88, i32 3
  store i8* %call99, i8** %value, align 8, !tbaa !0
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @ffclose(%struct._IO_FILE* %call1) #7
  %18 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %tobool108 = icmp eq %struct._IO_FILE* %18, null
  br i1 %tobool108, label %if.end111, label %if.then109

if.then109:                                       ; preds = %do.end
  %call110 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([55 x i8]* @.str7, i64 0, i64 0), i32 %nin.0) #7
  br label %if.end111

if.end111:                                        ; preds = %do.end, %if.then109
  store i32 %nin.0, i32* %ninp, align 4, !tbaa !3
  call void @llvm.lifetime.end(i64 4096, i8* %2) #1
  call void @llvm.lifetime.end(i64 4096, i8* %1) #1
  call void @llvm.lifetime.end(i64 4096, i8* %0) #1
  ret %struct.t_inpfile* %inp.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #3

; Function Attrs: optsize
declare i8* @fgets2(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: optsize
declare void @trim(i8*) #3

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #3

; Function Attrs: optsize
declare i8* @gmx_strdup(i8*) #3

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @write_inpfile(i8* %fn, i32 %ninp, %struct.t_inpfile* %inp) #0 {
entry:
  %cmp37.i = icmp sgt i32 %ninp, 0
  br i1 %cmp37.i, label %for.body.i, label %sort_inp.exit

for.body.i:                                       ; preds = %entry, %for.body.i
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %for.body.i ], [ 0, %entry ]
  %mm.039.i = phi i32 [ %mm.0..i, %for.body.i ], [ -1, %entry ]
  %count.i = getelementptr inbounds %struct.t_inpfile* %inp, i64 %indvars.iv40.i, i32 0
  %0 = load i32* %count.i, align 4, !tbaa !3
  %cmp1.i = icmp sgt i32 %mm.039.i, %0
  %mm.0..i = select i1 %cmp1.i, i32 %mm.039.i, i32 %0
  %indvars.iv.next41.i = add i64 %indvars.iv40.i, 1
  %lftr.wideiv33 = trunc i64 %indvars.iv.next41.i to i32
  %exitcond34 = icmp eq i32 %lftr.wideiv33, %ninp
  br i1 %exitcond34, label %for.body7.i, label %for.body.i

for.body7.i:                                      ; preds = %for.body.i, %for.inc16.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc16.i ], [ 0, %for.body.i ]
  %mm.136.i = phi i32 [ %mm.2.i, %for.inc16.i ], [ %mm.0..i, %for.body.i ]
  %count10.i = getelementptr inbounds %struct.t_inpfile* %inp, i64 %indvars.iv.i, i32 0
  %1 = load i32* %count10.i, align 4, !tbaa !3
  %cmp11.i = icmp eq i32 %1, 0
  br i1 %cmp11.i, label %if.then.i, label %for.inc16.i

if.then.i:                                        ; preds = %for.body7.i
  %inc12.i = add nsw i32 %mm.136.i, 1
  store i32 %mm.136.i, i32* %count10.i, align 4, !tbaa !3
  br label %for.inc16.i

for.inc16.i:                                      ; preds = %if.then.i, %for.body7.i
  %mm.2.i = phi i32 [ %inc12.i, %if.then.i ], [ %mm.136.i, %for.body7.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv31 = trunc i64 %indvars.iv.next.i to i32
  %exitcond32 = icmp eq i32 %lftr.wideiv31, %ninp
  br i1 %exitcond32, label %sort_inp.exit, label %for.body7.i

sort_inp.exit:                                    ; preds = %for.inc16.i, %entry
  %2 = bitcast %struct.t_inpfile* %inp to i8*
  %conv.i = sext i32 %ninp to i64
  tail call void @qsort(i8* %2, i64 %conv.i, i64 24, i32 (i8*, i8*)* @inp_comp) #7
  %call = tail call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0)) #7
  tail call void @nice_header(%struct._IO_FILE* %call, i8* %fn) #7
  br i1 %cmp37.i, label %for.body, label %for.end

for.body:                                         ; preds = %sort_inp.exit, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %sort_inp.exit ]
  %bSet = getelementptr inbounds %struct.t_inpfile* %inp, i64 %indvars.iv, i32 1
  %3 = load i32* %bSet, align 4, !tbaa !3
  %tobool = icmp eq i32 %3, 0
  %name12 = getelementptr inbounds %struct.t_inpfile* %inp, i64 %indvars.iv, i32 2
  %4 = load i8** %name12, align 8, !tbaa !0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %value = getelementptr inbounds %struct.t_inpfile* %inp, i64 %indvars.iv, i32 3
  %5 = load i8** %value, align 8, !tbaa !0
  %tobool5 = icmp eq i8* %5, null
  %. = select i1 %tobool5, i8* getelementptr inbounds ([1 x i8]* @.str10, i64 0, i64 0), i8* %5
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([12 x i8]* @.str9, i64 0, i64 0), i8* %4, i8* %.) #7
  br label %for.inc

if.else:                                          ; preds = %for.body
  %call13 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([1024 x i8]* @warn_buf, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str11, i64 0, i64 0), i8* %4) #7
  tail call void @warning(i8* null) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %ninp
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %sort_inp.exit
  tail call void @ffclose(%struct._IO_FILE* %call) #7
  ret void
}

; Function Attrs: optsize
declare void @nice_header(%struct._IO_FILE*, i8*) #3

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @warning(i8*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @get_eint(i32* nocapture %ninp, %struct.t_inpfile** %inp, i8* %name, i32 %def) #0 {
entry:
  %buf = alloca [32 x i8], align 16
  %call = call fastcc i32 @get_einp(i32* %ninp, %struct.t_inpfile** %inp, i8* %name) #9
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [32 x i8]* %buf, i64 0, i64 0
  %call1 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8]* @.str12, i64 0, i64 0), i32 %def) #7
  %call3 = call i8* @gmx_strdup(i8* %arraydecay) #7
  %0 = load i32* %ninp, align 4, !tbaa !3
  %sub = add nsw i32 %0, -1
  %idxprom = sext i32 %sub to i64
  %1 = load %struct.t_inpfile** %inp, align 8, !tbaa !0
  %value = getelementptr inbounds %struct.t_inpfile* %1, i64 %idxprom, i32 3
  store i8* %call3, i8** %value, align 8, !tbaa !0
  br label %return

if.else:                                          ; preds = %entry
  %idxprom4 = sext i32 %call to i64
  %2 = load %struct.t_inpfile** %inp, align 8, !tbaa !0
  %value6 = getelementptr inbounds %struct.t_inpfile* %2, i64 %idxprom4, i32 3
  %3 = load i8** %value6, align 8, !tbaa !0
  %call7 = call i32 @atoi(i8* %3) #8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %def, %if.then ], [ %call7, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @get_einp(i32* nocapture %ninp, %struct.t_inpfile** %inp, i8* %name) #0 {
entry:
  %cmp = icmp eq %struct.t_inpfile** %inp, null
  br i1 %cmp, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %0 = load i32* %ninp, align 4, !tbaa !3
  %cmp161 = icmp sgt i32 %0, 0
  br i1 %cmp161, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %1 = trunc i64 %indvars.iv.next to i32
  %cmp1 = icmp slt i32 %1, %.pre
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %for.cond.preheader ]
  %i.062 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %2 = load %struct.t_inpfile** %inp, align 8, !tbaa !0
  %name2 = getelementptr inbounds %struct.t_inpfile* %2, i64 %indvars.iv, i32 2
  %3 = load i8** %name2, align 8, !tbaa !0
  %call = tail call i32 @strcasecmp_min(i8* %name, i8* %3) #7
  %cmp3 = icmp eq i32 %call, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %i.062, 1
  %.pre = load i32* %ninp, align 4, !tbaa !3
  br i1 %cmp3, label %for.end, label %for.cond

for.end:                                          ; preds = %for.body, %for.cond, %for.cond.preheader
  %4 = phi i32 [ %0, %for.cond.preheader ], [ %.pre, %for.cond ], [ %.pre, %for.body ]
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.cond ], [ %i.062, %for.body ]
  %cmp6 = icmp eq i32 %i.0.lcssa, %4
  br i1 %cmp6, label %if.then7, label %for.end.if.end17_crit_edge

for.end.if.end17_crit_edge:                       ; preds = %for.end
  %.pre65 = load %struct.t_inpfile** %inp, align 8, !tbaa !0
  br label %if.end17

if.then7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %4, 1
  store i32 %inc8, i32* %ninp, align 4, !tbaa !3
  %5 = load %struct.t_inpfile** %inp, align 8, !tbaa !0
  %6 = bitcast %struct.t_inpfile* %5 to i8*
  %mul = mul i32 %inc8, 24
  %call10 = tail call i8* @save_realloc(i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str6, i64 0, i64 0), i32 165, i8* %6, i32 %mul) #7
  %7 = bitcast i8* %call10 to %struct.t_inpfile*
  store %struct.t_inpfile* %7, %struct.t_inpfile** %inp, align 8, !tbaa !0
  %call11 = tail call i8* @gmx_strdup(i8* %name) #7
  %idxprom12 = sext i32 %4 to i64
  %8 = load %struct.t_inpfile** %inp, align 8, !tbaa !0
  %name14 = getelementptr inbounds %struct.t_inpfile* %8, i64 %idxprom12, i32 2
  store i8* %call11, i8** %name14, align 8, !tbaa !0
  %9 = load %struct.t_inpfile** %inp, align 8, !tbaa !0
  %bSet = getelementptr inbounds %struct.t_inpfile* %9, i64 %idxprom12, i32 1
  store i32 1, i32* %bSet, align 4, !tbaa !3
  br label %if.end17

if.end17:                                         ; preds = %for.end.if.end17_crit_edge, %if.then7
  %10 = phi %struct.t_inpfile* [ %.pre65, %for.end.if.end17_crit_edge ], [ %9, %if.then7 ]
  %11 = load i32* @inp_count, align 4, !tbaa !3
  %inc18 = add nsw i32 %11, 1
  store i32 %inc18, i32* @inp_count, align 4, !tbaa !3
  %idxprom19 = sext i32 %i.0.lcssa to i64
  %count = getelementptr inbounds %struct.t_inpfile* %10, i64 %idxprom19, i32 0
  store i32 %11, i32* %count, align 4, !tbaa !3
  %bSet23 = getelementptr inbounds %struct.t_inpfile* %10, i64 %idxprom19, i32 1
  store i32 1, i32* %bSet23, align 4, !tbaa !3
  %12 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %tobool = icmp eq %struct._IO_FILE* %12, null
  br i1 %tobool, label %if.end32, label %if.then24

if.then24:                                        ; preds = %if.end17
  %name30 = getelementptr inbounds %struct.t_inpfile* %10, i64 %idxprom19, i32 2
  %13 = load i8** %name30, align 8, !tbaa !0
  %call31 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([13 x i8]* @.str22, i64 0, i64 0), i32 %11, i8* %13) #7
  br label %if.end32

if.end32:                                         ; preds = %if.end17, %if.then24
  %14 = load i32* %ninp, align 4, !tbaa !3
  %sub = add nsw i32 %14, -1
  %cmp33 = icmp eq i32 %i.0.lcssa, %sub
  %.i.0 = select i1 %cmp33, i32 -1, i32 %i.0.lcssa
  br label %return

return:                                           ; preds = %if.end32, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %.i.0, %if.end32 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define float @get_ereal(i32* nocapture %ninp, %struct.t_inpfile** %inp, i8* %name, float %def) #0 {
entry:
  %buf = alloca [32 x i8], align 16
  %call = call fastcc i32 @get_einp(i32* %ninp, %struct.t_inpfile** %inp, i8* %name) #9
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [32 x i8]* %buf, i64 0, i64 0
  %conv = fpext float %def to double
  %call1 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), double %conv) #7
  %call3 = call i8* @gmx_strdup(i8* %arraydecay) #7
  %0 = load i32* %ninp, align 4, !tbaa !3
  %sub = add nsw i32 %0, -1
  %idxprom = sext i32 %sub to i64
  %1 = load %struct.t_inpfile** %inp, align 8, !tbaa !0
  %value = getelementptr inbounds %struct.t_inpfile* %1, i64 %idxprom, i32 3
  store i8* %call3, i8** %value, align 8, !tbaa !0
  br label %return

if.else:                                          ; preds = %entry
  %idxprom4 = sext i32 %call to i64
  %2 = load %struct.t_inpfile** %inp, align 8, !tbaa !0
  %value6 = getelementptr inbounds %struct.t_inpfile* %2, i64 %idxprom4, i32 3
  %3 = load i8** %value6, align 8, !tbaa !0
  %call7 = call double @atof(i8* %3) #8
  %conv8 = fptrunc double %call7 to float
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi float [ %def, %if.then ], [ %conv8, %if.else ]
  ret float %retval.0
}

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i8* @get_estr(i32* nocapture %ninp, %struct.t_inpfile** %inp, i8* %name, i8* %def) #0 {
entry:
  %buf = alloca [32 x i8], align 16
  %call = call fastcc i32 @get_einp(i32* %ninp, %struct.t_inpfile** %inp, i8* %name) #9
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.else9

if.then:                                          ; preds = %entry
  %tobool = icmp eq i8* %def, null
  br i1 %tobool, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.then
  %arraydecay = getelementptr inbounds [32 x i8]* %buf, i64 0, i64 0
  %strlen = call i64 @strlen(i8* %def)
  %leninc = add i64 %strlen, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arraydecay, i8* %def, i64 %leninc, i32 1, i1 false)
  %call4 = call i8* @gmx_strdup(i8* %arraydecay) #7
  %0 = load i32* %ninp, align 4, !tbaa !3
  %sub = add nsw i32 %0, -1
  %idxprom = sext i32 %sub to i64
  %1 = load %struct.t_inpfile** %inp, align 8, !tbaa !0
  %value = getelementptr inbounds %struct.t_inpfile* %1, i64 %idxprom, i32 3
  store i8* %call4, i8** %value, align 8, !tbaa !0
  br label %return

if.else:                                          ; preds = %if.then
  %2 = load i32* %ninp, align 4, !tbaa !3
  %sub5 = add nsw i32 %2, -1
  %idxprom6 = sext i32 %sub5 to i64
  %3 = load %struct.t_inpfile** %inp, align 8, !tbaa !0
  %value8 = getelementptr inbounds %struct.t_inpfile* %3, i64 %idxprom6, i32 3
  store i8* null, i8** %value8, align 8, !tbaa !0
  br label %return

if.else9:                                         ; preds = %entry
  %idxprom10 = sext i32 %call to i64
  %4 = load %struct.t_inpfile** %inp, align 8, !tbaa !0
  %value12 = getelementptr inbounds %struct.t_inpfile* %4, i64 %idxprom10, i32 3
  %5 = load i8** %value12, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.then1, %if.else, %if.else9
  %retval.0 = phi i8* [ %5, %if.else9 ], [ null, %if.else ], [ %def, %if.then1 ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_eeenum(i32* nocapture %ninp, %struct.t_inpfile** %inp, i8* %name, i8** nocapture %defs, i32* nocapture %nerror, i32 %bPrintError) #0 {
entry:
  %call = tail call fastcc i32 @get_einp(i32* %ninp, %struct.t_inpfile** %inp, i8* %name) #9
  %cmp = icmp eq i32 %call, -1
  %0 = load i8** %defs, align 8, !tbaa !0
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp567 = icmp eq i8* %0, null
  %idxprom19.pre.pre = sext i32 %call to i64
  br i1 %cmp567, label %if.then18, label %for.body

if.then:                                          ; preds = %entry
  %call1 = tail call i8* @gmx_strdup(i8* %0) #7
  %1 = load i32* %ninp, align 4, !tbaa !3
  %sub = add nsw i32 %1, -1
  %idxprom = sext i32 %sub to i64
  %2 = load %struct.t_inpfile** %inp, align 8, !tbaa !0
  %value = getelementptr inbounds %struct.t_inpfile* %2, i64 %idxprom, i32 3
  store i8* %call1, i8** %value, align 8, !tbaa !0
  br label %return

for.cond:                                         ; preds = %for.body
  %inc = add nsw i32 %i.068, 1
  %arrayidx4 = getelementptr inbounds i8** %defs, i64 %indvars.iv.next74
  %3 = load i8** %arrayidx4, align 8, !tbaa !0
  %cmp5 = icmp eq i8* %3, null
  br i1 %cmp5, label %if.then18, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %for.cond ], [ 0, %for.cond.preheader ]
  %4 = phi i8* [ %3, %for.cond ], [ %0, %for.cond.preheader ]
  %arrayidx469 = phi i8** [ %arrayidx4, %for.cond ], [ %defs, %for.cond.preheader ]
  %i.068 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %5 = load %struct.t_inpfile** %inp, align 8, !tbaa !0
  %value10 = getelementptr inbounds %struct.t_inpfile* %5, i64 %idxprom19.pre.pre, i32 3
  %6 = load i8** %value10, align 8, !tbaa !0
  %call11 = tail call i32 @strcasecmp_min(i8* %4, i8* %6) #7
  %cmp12 = icmp eq i32 %call11, 0
  %indvars.iv.next74 = add i64 %indvars.iv73, 1
  br i1 %cmp12, label %for.end, label %for.cond

for.end:                                          ; preds = %for.body
  %.pr = load i8** %arrayidx469, align 8, !tbaa !0
  %cmp17 = icmp eq i8* %.pr, null
  br i1 %cmp17, label %if.then18, label %return

if.then18:                                        ; preds = %for.cond.preheader, %for.cond, %for.end
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %tobool = icmp ne i32 %bPrintError, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([9 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str17, i64 0, i64 0)
  %8 = load %struct.t_inpfile** %inp, align 8, !tbaa !0
  %value21 = getelementptr inbounds %struct.t_inpfile* %8, i64 %idxprom19.pre.pre, i32 3
  %9 = load i8** %value21, align 8, !tbaa !0
  %10 = load i8** %defs, align 8, !tbaa !0
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([48 x i8]* @.str15, i64 0, i64 0), i8* %cond, i8* %9, i8* %name, i8* %10) #7
  %11 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str18, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %11)
  %13 = load i32* %nerror, align 4, !tbaa !3
  %inc25 = add nsw i32 %13, 1
  store i32 %inc25, i32* %nerror, align 4, !tbaa !3
  %14 = load i8** %defs, align 8, !tbaa !0
  %tobool2863 = icmp eq i8* %14, null
  %15 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  br i1 %tobool2863, label %while.end, label %while.body

while.body:                                       ; preds = %if.then18, %while.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ 0, %if.then18 ]
  %16 = phi %struct._IO_FILE* [ %19, %while.body ], [ %15, %if.then18 ]
  %17 = phi i8* [ %18, %while.body ], [ %14, %if.then18 ]
  %call31 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([6 x i8]* @.str19, i64 0, i64 0), i8* %17) #7
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx27 = getelementptr inbounds i8** %defs, i64 %indvars.iv.next
  %18 = load i8** %arrayidx27, align 8, !tbaa !0
  %tobool28 = icmp eq i8* %18, null
  %19 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  br i1 %tobool28, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.then18
  %.lcssa = phi %struct._IO_FILE* [ %15, %if.then18 ], [ %19, %while.body ]
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %.lcssa)
  %20 = load i8** %defs, align 8, !tbaa !0
  %call35 = tail call i8* @gmx_strdup(i8* %20) #7
  %21 = load %struct.t_inpfile** %inp, align 8, !tbaa !0
  %value38 = getelementptr inbounds %struct.t_inpfile* %21, i64 %idxprom19.pre.pre, i32 3
  store i8* %call35, i8** %value38, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %for.end, %while.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %while.end ], [ %i.068, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @strcasecmp_min(i8*, i8*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @get_eenum(i32* nocapture %ninp, %struct.t_inpfile** %inp, i8* %name, i8** nocapture %defs) #0 {
entry:
  %dum = alloca i32, align 4
  store i32 0, i32* %dum, align 4, !tbaa !3
  %call = call i32 @get_eeenum(i32* %ninp, %struct.t_inpfile** %inp, i8* %name, i8** %defs, i32* %dum, i32 0) #9
  ret i32 %call
}

; Function Attrs: optsize
declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) #3

; Function Attrs: nounwind optsize readonly uwtable
define internal i32 @inp_comp(i8* nocapture %a, i8* nocapture %b) #5 {
entry:
  %count = bitcast i8* %a to i32*
  %0 = load i32* %count, align 4, !tbaa !3
  %count1 = bitcast i8* %b to i32*
  %1 = load i32* %count1, align 4, !tbaa !3
  %sub = sub nsw i32 %0, %1
  ret i32 %sub
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}

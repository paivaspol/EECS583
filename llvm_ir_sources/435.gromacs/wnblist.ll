; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/wnblist.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }

@.str = private unnamed_addr constant [37 x i8] c"EOF when looking for '%s' in logfile\00", align 1
@.str1 = private unnamed_addr constant [14 x i8] c"Neighborlist:\00", align 1
@.str2 = private unnamed_addr constant [11 x i8] c"%*s%d%*s%d\00", align 1
@.str3 = private unnamed_addr constant [34 x i8] c"Not enough arguments read line %d\00", align 1
@.str4 = private unnamed_addr constant [21 x i8] c"%*s%d%*s%d%*s%d%*s%d\00", align 1
@.str5 = private unnamed_addr constant [21 x i8] c"iatom = %d (max %d)\0A\00", align 1
@.str6 = private unnamed_addr constant [6 x i8] c"%*s%d\00", align 1
@.str7 = private unnamed_addr constant [36 x i8] c"mat[%d][%d] changing from %d to %d\0A\00", align 1
@.str8 = private unnamed_addr constant [20 x i8] c"nri = %d  nrj = %d\0A\00", align 1
@.str9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str10 = private unnamed_addr constant [25 x i8] c"il_code: %d solvent: %d\0A\00", align 1
@.str11 = private unnamed_addr constant [18 x i8] c"nri: %d  nrj: %d\0A\00", align 1
@.str12 = private unnamed_addr constant [32 x i8] c"i: %d shift: %d gid: %d nj: %d\0A\00", align 1
@.str13 = private unnamed_addr constant [9 x i8] c"  j: %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @read_nblist(%struct._IO_FILE* %in, %struct._IO_FILE* nocapture %log, i32** nocapture %mat, i32 %natoms) #0 {
entry:
  %buf = alloca [256 x i8], align 16
  %j = alloca i32, align 4
  %nri = alloca i32, align 4
  %il_code = alloca i32, align 4
  %solv = alloca i32, align 4
  %iatom = alloca i32, align 4
  %nrj = alloca i32, align 4
  %nj = alloca i32, align 4
  %shift = alloca i32, align 4
  %gid = alloca i32, align 4
  %0 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #1
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %call = call i8* @fgets2(i8* %0, i32 255, %struct._IO_FILE* %in) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %do.cond

if.then:                                          ; preds = %do.body
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([37 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #5
  br label %do.cond

do.cond:                                          ; preds = %do.body, %if.then
  %call2 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #6
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %do.body, label %do.body4.preheader

do.body4.preheader:                               ; preds = %do.cond
  %call573 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %in, i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i32* %il_code, i32* %solv) #5
  %cmp674 = icmp eq i32 %call573, 2
  br i1 %cmp674, label %if.end8, label %do.end54

if.end8:                                          ; preds = %do.body4.preheader, %for.end51
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %in, i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i32* %nri, i32* %nrj) #5
  %cmp10 = icmp eq i32 %call9, 2
  br i1 %cmp10, label %for.cond.preheader, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0), i32 77) #5
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end8, %if.then11
  %1 = load i32* %nri, align 4, !tbaa !0
  %cmp1371 = icmp sgt i32 %1, 0
  br i1 %cmp1371, label %for.body, label %for.end51

for.body:                                         ; preds = %for.cond.preheader, %for.inc49
  %ii.072 = phi i32 [ %inc50, %for.inc49 ], [ 0, %for.cond.preheader ]
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %in, i8* getelementptr inbounds ([21 x i8]* @.str4, i64 0, i64 0), i32* %iatom, i32* %gid, i32* %shift, i32* %nj) #5
  %cmp15 = icmp eq i32 %call14, 4
  br i1 %cmp15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %for.body
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0), i32 80) #5
  br label %if.end17

if.end17:                                         ; preds = %for.body, %if.then16
  %2 = load i32* %shift, align 4, !tbaa !0
  %add = add nsw i32 %2, 1
  store i32 %add, i32* %shift, align 4, !tbaa !0
  %3 = load i32* %iatom, align 4, !tbaa !0
  %cmp18 = icmp sgt i32 %3, -1
  %cmp19 = icmp slt i32 %3, %natoms
  %or.cond = and i1 %cmp18, %cmp19
  br i1 %or.cond, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([21 x i8]* @.str5, i64 0, i64 0), i32 %3, i32 %natoms) #5
  br label %if.end21

if.end21:                                         ; preds = %if.end17, %if.then20
  %4 = load i32* %nj, align 4, !tbaa !0
  %5 = load i32* %nrj, align 4, !tbaa !0
  %add22 = add nsw i32 %5, %4
  store i32 %add22, i32* %nrj, align 4, !tbaa !0
  %cmp2469 = icmp sgt i32 %4, 0
  br i1 %cmp2469, label %for.body25, label %for.inc49

for.body25:                                       ; preds = %if.end21, %if.end44
  %i.070 = phi i32 [ %inc, %if.end44 ], [ 0, %if.end21 ]
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %in, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0), i32* %j) #5
  %cmp27 = icmp eq i32 %call26, 1
  br i1 %cmp27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %for.body25
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0), i32 90) #5
  br label %if.end29

if.end29:                                         ; preds = %for.body25, %if.then28
  %6 = load i32* %j, align 4, !tbaa !0
  %cmp30 = icmp sgt i32 %6, -1
  %cmp32 = icmp slt i32 %6, %natoms
  %or.cond68 = and i1 %cmp30, %cmp32
  br i1 %or.cond68, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end29
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([21 x i8]* @.str5, i64 0, i64 0), i32 %6, i32 %natoms) #5
  %.pre = load i32* %j, align 4, !tbaa !0
  br label %if.end34

if.end34:                                         ; preds = %if.end29, %if.then33
  %7 = phi i32 [ %6, %if.end29 ], [ %.pre, %if.then33 ]
  %idxprom = sext i32 %7 to i64
  %8 = load i32* %iatom, align 4, !tbaa !0
  %idxprom35 = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32** %mat, i64 %idxprom35
  %9 = load i32** %arrayidx, align 8, !tbaa !3
  %arrayidx36 = getelementptr inbounds i32* %9, i64 %idxprom
  %10 = load i32* %arrayidx36, align 4, !tbaa !0
  %cmp37 = icmp eq i32 %10, 0
  br i1 %cmp37, label %if.end44, label %if.then38

if.then38:                                        ; preds = %if.end34
  %11 = load i32* %shift, align 4, !tbaa !0
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([36 x i8]* @.str7, i64 0, i64 0), i32 %i.070, i32 %7, i32 %10, i32 %11) #5
  %.pre76 = load i32* %j, align 4, !tbaa !0
  %.pre77 = load i32* %iatom, align 4, !tbaa !0
  %idxprom46.phi.trans.insert = sext i32 %.pre77 to i64
  %arrayidx47.phi.trans.insert = getelementptr inbounds i32** %mat, i64 %idxprom46.phi.trans.insert
  %.pre78 = load i32** %arrayidx47.phi.trans.insert, align 8, !tbaa !3
  br label %if.end44

if.end44:                                         ; preds = %if.end34, %if.then38
  %12 = phi i32* [ %9, %if.end34 ], [ %.pre78, %if.then38 ]
  %13 = phi i32 [ %7, %if.end34 ], [ %.pre76, %if.then38 ]
  %14 = load i32* %shift, align 4, !tbaa !0
  %idxprom45 = sext i32 %13 to i64
  %arrayidx48 = getelementptr inbounds i32* %12, i64 %idxprom45
  store i32 %14, i32* %arrayidx48, align 4, !tbaa !0
  %inc = add nsw i32 %i.070, 1
  %15 = load i32* %nj, align 4, !tbaa !0
  %cmp24 = icmp slt i32 %inc, %15
  br i1 %cmp24, label %for.body25, label %for.inc49

for.inc49:                                        ; preds = %if.end44, %if.end21
  %inc50 = add nsw i32 %ii.072, 1
  %16 = load i32* %nri, align 4, !tbaa !0
  %cmp13 = icmp slt i32 %inc50, %16
  br i1 %cmp13, label %for.body, label %for.end51

for.end51:                                        ; preds = %for.inc49, %for.cond.preheader
  %.lcssa = phi i32 [ %1, %for.cond.preheader ], [ %16, %for.inc49 ]
  %17 = load i32* %nrj, align 4, !tbaa !0
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([20 x i8]* @.str8, i64 0, i64 0), i32 %.lcssa, i32 %17) #5
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %in, i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i32* %il_code, i32* %solv) #5
  %cmp6 = icmp eq i32 %call5, 2
  br i1 %cmp6, label %if.end8, label %do.end54

do.end54:                                         ; preds = %for.end51, %do.body4.preheader
  call void @llvm.lifetime.end(i64 256, i8* %0) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: optsize
declare i8* @fgets2(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #3

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @dump_nblist(%struct._IO_FILE* nocapture %out, %struct.t_forcerec* nocapture %fr, i32 %nDNL) #0 {
entry:
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #5
  br label %for.body

for.body:                                         ; preds = %write_nblist.exit, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %write_nblist.exit ]
  %il_code.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 0
  %0 = load i32* %il_code.i, align 4, !tbaa !0
  %solvent.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 6
  %1 = load i32* %solvent.i, align 4, !tbaa !0
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([25 x i8]* @.str10, i64 0, i64 0), i32 %0, i32 %1) #5
  %nri.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 1
  %2 = load i32* %nri.i, align 4, !tbaa !0
  %nrj.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 3
  %3 = load i32* %nrj.i, align 4, !tbaa !0
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([18 x i8]* @.str11, i64 0, i64 0), i32 %2, i32 %3) #5
  %4 = load i32* %nri.i, align 4, !tbaa !0
  %cmp59.i = icmp sgt i32 %4, 0
  br i1 %cmp59.i, label %for.body.lr.ph.i, label %write_nblist.exit

for.body.lr.ph.i:                                 ; preds = %for.body
  %jindex.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 10
  %iinr.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 7
  %shift.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 9
  %gid.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 8
  %jjnr.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 11
  %.pre.i = load i32** %jindex.i, align 8, !tbaa !3
  br label %for.body.i

for.cond.loopexit.i:                              ; preds = %for.body22.i, %for.body.i
  %5 = phi i32* [ %17, %for.body.i ], [ %23, %for.body22.i ]
  %6 = load i32* %nri.i, align 4, !tbaa !0
  %7 = trunc i64 %indvars.iv.next62.i to i32
  %cmp.i = icmp slt i32 %7, %6
  br i1 %cmp.i, label %for.body.i, label %write_nblist.exit

for.body.i:                                       ; preds = %for.cond.loopexit.i, %for.body.lr.ph.i
  %8 = phi i32* [ %.pre.i, %for.body.lr.ph.i ], [ %5, %for.cond.loopexit.i ]
  %indvars.iv61.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next62.i, %for.cond.loopexit.i ]
  %indvars.iv.next62.i = add i64 %indvars.iv61.i, 1
  %arrayidx.i = getelementptr inbounds i32* %8, i64 %indvars.iv.next62.i
  %9 = load i32* %arrayidx.i, align 4, !tbaa !0
  %arrayidx5.i = getelementptr inbounds i32* %8, i64 %indvars.iv61.i
  %10 = load i32* %arrayidx5.i, align 4, !tbaa !0
  %sub.i = sub nsw i32 %9, %10
  %11 = load i32** %iinr.i, align 8, !tbaa !3
  %arrayidx7.i = getelementptr inbounds i32* %11, i64 %indvars.iv61.i
  %12 = load i32* %arrayidx7.i, align 4, !tbaa !0
  %13 = load i32** %shift.i, align 8, !tbaa !3
  %arrayidx9.i = getelementptr inbounds i32* %13, i64 %indvars.iv61.i
  %14 = load i32* %arrayidx9.i, align 4, !tbaa !0
  %15 = load i32** %gid.i, align 8, !tbaa !3
  %arrayidx11.i = getelementptr inbounds i32* %15, i64 %indvars.iv61.i
  %16 = load i32* %arrayidx11.i, align 4, !tbaa !0
  %call12.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([32 x i8]* @.str12, i64 0, i64 0), i32 %12, i32 %14, i32 %16, i32 %sub.i) #5
  %17 = load i32** %jindex.i, align 8, !tbaa !3
  %arrayidx15.i = getelementptr inbounds i32* %17, i64 %indvars.iv61.i
  %18 = load i32* %arrayidx15.i, align 4, !tbaa !0
  %arrayidx2056.i = getelementptr inbounds i32* %17, i64 %indvars.iv.next62.i
  %19 = load i32* %arrayidx2056.i, align 4, !tbaa !0
  %cmp2157.i = icmp slt i32 %18, %19
  br i1 %cmp2157.i, label %for.body22.lr.ph.i, label %for.cond.loopexit.i

for.body22.lr.ph.i:                               ; preds = %for.body.i
  %20 = sext i32 %18 to i64
  br label %for.body22.i

for.body22.i:                                     ; preds = %for.body22.i, %for.body22.lr.ph.i
  %indvars.iv.i = phi i64 [ %20, %for.body22.lr.ph.i ], [ %indvars.iv.next.i, %for.body22.i ]
  %21 = load i32** %jjnr.i, align 8, !tbaa !3
  %arrayidx24.i = getelementptr inbounds i32* %21, i64 %indvars.iv.i
  %22 = load i32* %arrayidx24.i, align 4, !tbaa !0
  %call25.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i32 %22) #5
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %23 = load i32** %jindex.i, align 8, !tbaa !3
  %arrayidx20.i = getelementptr inbounds i32* %23, i64 %indvars.iv.next62.i
  %24 = load i32* %arrayidx20.i, align 4, !tbaa !0
  %25 = trunc i64 %indvars.iv.next.i to i32
  %cmp21.i = icmp slt i32 %25, %24
  br i1 %cmp21.i, label %for.body22.i, label %for.cond.loopexit.i

write_nblist.exit:                                ; preds = %for.cond.loopexit.i, %for.body
  %call29.i = tail call i32 @fflush(%struct._IO_FILE* %out) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 13
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %write_nblist.exit
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readonly }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}

; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/pullinit.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_filenm = type { i32, i8*, i8*, i64 }
%struct.t_pull = type { %struct.t_pullgrps, %struct.t_pullgrps, %struct.t_pullgrps, i32, i32, [3 x float], [3 x float], float, float, [3 x i32], float, float, i32, float, float, float, i32, i32, i32, %struct._IO_FILE*, float, float, float, i32, i32, i32 }
%struct.t_pullgrps = type { i32, i32**, float**, i32*, i8**, float*, [3 x float]**, [3 x float]**, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, float*, [3 x float]*, [3 x float]** }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }

@.str = private unnamed_addr constant [4 x i8] c"-pi\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c"-pd\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"-po\00", align 1
@.str4 = private unnamed_addr constant [30 x i8] c"rc or r is too small or zero.\00", align 1
@.str5 = private unnamed_addr constant [4 x i8] c"-pn\00", align 1
@stderr = external global %struct._IO_FILE*
@.str6 = private unnamed_addr constant [35 x i8] c"read_whole_index: %d groups total\0A\00", align 1
@.str7 = private unnamed_addr constant [27 x i8] c"group %i (%s) %d elements\0A\00", align 1
@.str8 = private unnamed_addr constant [16 x i8] c"pull->ref.x0[0]\00", align 1
@.str9 = private unnamed_addr constant [56 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/pullinit.c\00", align 1
@.str10 = private unnamed_addr constant [16 x i8] c"pull->ref.xp[0]\00", align 1
@.str11 = private unnamed_addr constant [21 x i8] c"pull->ref.comhist[0]\00", align 1
@.str12 = private unnamed_addr constant [22 x i8] c"pull->dyna.comhist[i]\00", align 1
@.str13 = private unnamed_addr constant [105 x i8] c"Initializing pull groups. Mass of group %d: %8.3f\0AInitial coordinates center of mass: %8.3f %8.3f %8.3f\0A\00", align 1
@.str14 = private unnamed_addr constant [97 x i8] c"Initializing reference group. Mass: %8.3f\0AInitial coordinates center of mass: %8.3f %8.3f %8.3f\0A\00", align 1
@.str15 = private unnamed_addr constant [120 x i8] c"Initializing dynamic groups. %d atoms. Weighted massfor %d:%8.3f\0AInitial coordinates center of mass: %8.3f %8.3f %8.3f\0A\00", align 1
@.str16 = private unnamed_addr constant [55 x i8] c"\0APull rate: %e nm/step. Force constant: %e kJ/(mol nm)\00", align 1
@.str17 = private unnamed_addr constant [50 x i8] c"\0APull direction: %8.3f %8.3f %8.3f bReverse = %d\0A\00", align 1
@.str18 = private unnamed_addr constant [162 x i8] c"**************************************************\0A                      END   PULL INFO                    \0A**************************************************\0A\0A\00", align 1
@.str19 = private unnamed_addr constant [23 x i8] c"Looking for group %s: \00", align 1
@.str20 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@.str21 = private unnamed_addr constant [40 x i8] c"found group %s: %d elements. First: %d\0A\00", align 1
@.str22 = private unnamed_addr constant [38 x i8] c"Can't find group %s in the index file\00", align 1
@.str23 = private unnamed_addr constant [24 x i8] c"No index file specified\00", align 1
@.str24 = private unnamed_addr constant [24 x i8] c"No groups in indexfile\0A\00", align 1
@.str25 = private unnamed_addr constant [7 x i8] c"*index\00", align 1
@.str26 = private unnamed_addr constant [10 x i8] c"*grpnames\00", align 1
@.str27 = private unnamed_addr constant [7 x i8] c"(*ngx)\00", align 1
@.str28 = private unnamed_addr constant [12 x i8] c"(*index)[i]\00", align 1
@.str29 = private unnamed_addr constant [10 x i8] c"gnames[i]\00", align 1
@.str30 = private unnamed_addr constant [7 x i8] c"gnames\00", align 1
@.str31 = private unnamed_addr constant [5 x i8] c"grps\00", align 1
@.str32 = private unnamed_addr constant [10 x i8] c"pull->ngx\00", align 1
@.str33 = private unnamed_addr constant [12 x i8] c"pull->x_con\00", align 1
@.str34 = private unnamed_addr constant [12 x i8] c"pull->xprev\00", align 1
@.str35 = private unnamed_addr constant [12 x i8] c"pull->tmass\00", align 1
@.str36 = private unnamed_addr constant [10 x i8] c"pull->idx\00", align 1
@.str37 = private unnamed_addr constant [8 x i8] c"pull->f\00", align 1
@.str38 = private unnamed_addr constant [13 x i8] c"pull->spring\00", align 1
@.str39 = private unnamed_addr constant [10 x i8] c"pull->dir\00", align 1
@.str40 = private unnamed_addr constant [12 x i8] c"pull->x_unc\00", align 1
@.str41 = private unnamed_addr constant [12 x i8] c"pull->x_ref\00", align 1
@.str42 = private unnamed_addr constant [12 x i8] c"pull->d_ref\00", align 1
@.str43 = private unnamed_addr constant [9 x i8] c"pull->x0\00", align 1
@.str44 = private unnamed_addr constant [9 x i8] c"pull->xp\00", align 1
@.str45 = private unnamed_addr constant [14 x i8] c"pull->comhist\00", align 1
@.str46 = private unnamed_addr constant [161 x i8] c"\0A**************************************************\0A                         PULL INFO                      \0A**************************************************\0A\00", align 1
@.str47 = private unnamed_addr constant [42 x i8] c"RUN TYPE: Generating Starting structures\0A\00", align 1
@.str48 = private unnamed_addr constant [15 x i8] c"RUN TYPE: Afm\0A\00", align 1
@.str49 = private unnamed_addr constant [22 x i8] c"RUN TYPE: Constraint\0A\00", align 1
@.str50 = private unnamed_addr constant [29 x i8] c"RUN TYPE: Umbrella sampling\0A\00", align 1
@.str51 = private unnamed_addr constant [20 x i8] c"RUN TYPE: Test run\0A\00", align 1
@.str52 = private unnamed_addr constant [56 x i8] c"RUN TYPE: WARNING! pullinit does not know this runtype\0A\00", align 1
@.str53 = private unnamed_addr constant [51 x i8] c"REFERENCE TYPE: center of mass of reference group\0A\00", align 1
@.str54 = private unnamed_addr constant [58 x i8] c"REFERENCE TYPE: center of mass of reference group at t=0\0A\00", align 1
@.str55 = private unnamed_addr constant [59 x i8] c"REFERENCE TYPE: center of mass of dynamically made groups\0A\00", align 1
@.str56 = private unnamed_addr constant [51 x i8] c"Using dynamic reference groups: r=%8.3f, rc=%8.3f\0A\00", align 1
@.str57 = private unnamed_addr constant [103 x i8] c"REFERENCE TYPE: center of mass of dynamically made groups,\0Abased on the positions of its atoms at t=0\0A\00", align 1
@.str58 = private unnamed_addr constant [49 x i8] c"REFERENCE TYPE: no clue! What did you do wrong?\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @init_pull(%struct._IO_FILE* %log, i32 %nfile, %struct.t_filenm* %fnm, %struct.t_pull* %pull, [3 x float]* %x, %struct.t_mdatoms* %md, [3 x float]* %box) #0 {
entry:
  %gnames.i = alloca i8**, align 8
  %tmp = alloca [3 x float], align 4
  %call = call i32 @opt2bSet(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #5
  %bPull = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 16
  store i32 %call, i32* %bPull, align 4, !tbaa !0
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call6 = call i8* @opt2fn(i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #5
  %call7 = call %struct._IO_FILE* @ffopen(i8* %call6, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0)) #5
  %out = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 19
  store %struct._IO_FILE* %call7, %struct._IO_FILE** %out, align 8, !tbaa !3
  %call8 = call i8* @opt2fn(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #5
  %call9 = call i8* @opt2fn(i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #5
  call void @read_pullparams(%struct.t_pull* %pull, i8* %call8, i8* %call9) #5
  %pull10 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1
  %n = getelementptr inbounds %struct.t_pullgrps* %pull10, i64 0, i32 0
  %0 = load i32* %n, align 4, !tbaa !0
  %reftype = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 4
  %1 = load i32* %reftype, align 4, !tbaa !1
  %.off = add i32 %1, -2
  %switch = icmp ult i32 %.off, 2
  %bCyl = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 17
  br i1 %switch, label %land.lhs.true, label %if.end15.thread

if.end15.thread:                                  ; preds = %if.end
  store i32 0, i32* %bCyl, align 4, !tbaa !0
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end
  store i32 1, i32* %bCyl, align 4, !tbaa !0
  %rc = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 8
  %2 = load float* %rc, align 4, !tbaa !4
  %conv = fpext float %2 to double
  %cmp18 = fcmp olt double %conv, 1.000000e-02
  br i1 %cmp18, label %if.then24, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true
  %r = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 7
  %3 = load float* %r, align 4, !tbaa !4
  %conv21 = fpext float %3 to double
  %cmp22 = fcmp olt double %conv21, 1.000000e-02
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %lor.lhs.false20, %land.lhs.true
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([30 x i8]* @.str4, i64 0, i64 0)) #5
  br label %if.end25

if.end25:                                         ; preds = %if.end15.thread, %if.then24, %lor.lhs.false20
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([161 x i8]* @.str46, i64 0, i64 0), i64 160, i64 1, %struct._IO_FILE* %log) #4
  %runtype.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 3
  %5 = load i32* %runtype.i, align 4, !tbaa !1
  switch i32 %5, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb4.i
    i32 3, label %sw.bb6.i
    i32 4, label %sw.bb8.i
  ]

sw.bb.i:                                          ; preds = %if.end25
  %6 = call i64 @fwrite(i8* getelementptr inbounds ([42 x i8]* @.str47, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %log) #4
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end25
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str48, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %log) #4
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end25
  %8 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str49, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %log) #4
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.end25
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str50, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %log) #4
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.end25
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str51, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %log) #4
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end25
  %11 = call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str52, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %log) #4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb8.i, %sw.bb6.i, %sw.bb4.i, %sw.bb2.i, %sw.bb.i
  %12 = load i32* %runtype.i, align 4, !tbaa !1
  switch i32 %12, label %print_info.exit [
    i32 2, label %if.then.i
    i32 0, label %if.then.i
  ]

if.then.i:                                        ; preds = %sw.epilog.i, %sw.epilog.i
  %13 = load i32* %reftype, align 4, !tbaa !1
  switch i32 %13, label %sw.default29.i [
    i32 0, label %sw.bb14.i
    i32 1, label %sw.bb16.i
    i32 2, label %sw.bb18.i
    i32 3, label %sw.bb22.i
  ]

sw.bb14.i:                                        ; preds = %if.then.i
  %14 = call i64 @fwrite(i8* getelementptr inbounds ([51 x i8]* @.str53, i64 0, i64 0), i64 50, i64 1, %struct._IO_FILE* %log) #4
  br label %print_info.exit

sw.bb16.i:                                        ; preds = %if.then.i
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([58 x i8]* @.str54, i64 0, i64 0), i64 57, i64 1, %struct._IO_FILE* %log) #4
  br label %print_info.exit

sw.bb18.i:                                        ; preds = %if.then.i
  %16 = call i64 @fwrite(i8* getelementptr inbounds ([59 x i8]* @.str55, i64 0, i64 0), i64 58, i64 1, %struct._IO_FILE* %log) #4
  %r.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 7
  %17 = load float* %r.i, align 4, !tbaa !4
  %conv.i = fpext float %17 to double
  %rc.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 8
  %18 = load float* %rc.i, align 4, !tbaa !4
  %conv20.i = fpext float %18 to double
  %call21.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([51 x i8]* @.str56, i64 0, i64 0), double %conv.i, double %conv20.i) #5
  br label %print_info.exit

sw.bb22.i:                                        ; preds = %if.then.i
  %19 = call i64 @fwrite(i8* getelementptr inbounds ([103 x i8]* @.str57, i64 0, i64 0), i64 102, i64 1, %struct._IO_FILE* %log) #4
  %r24.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 7
  %20 = load float* %r24.i, align 4, !tbaa !4
  %conv25.i = fpext float %20 to double
  %rc26.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 8
  %21 = load float* %rc26.i, align 4, !tbaa !4
  %conv27.i = fpext float %21 to double
  %call28.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([51 x i8]* @.str56, i64 0, i64 0), double %conv25.i, double %conv27.i) #5
  br label %print_info.exit

sw.default29.i:                                   ; preds = %if.then.i
  %22 = call i64 @fwrite(i8* getelementptr inbounds ([49 x i8]* @.str58, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %log) #4
  br label %print_info.exit

print_info.exit:                                  ; preds = %sw.epilog.i, %sw.bb14.i, %sw.bb16.i, %sw.bb18.i, %sw.bb22.i, %sw.default29.i
  call fastcc void @get_pullmemory(%struct.t_pullgrps* %pull10, i32 %0) #6
  %dyna = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0
  call fastcc void @get_pullmemory(%struct.t_pullgrps* %dyna, i32 %0) #6
  %ref = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2
  call fastcc void @get_pullmemory(%struct.t_pullgrps* %ref, i32 1) #6
  %call27 = call i8* @opt2fn(i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #5
  %23 = bitcast i8*** %gnames.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #4
  %tobool.i = icmp eq i8* %call27, null
  br i1 %tobool.i, label %if.then.i650, label %if.end.i

if.then.i650:                                     ; preds = %print_info.exit
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([24 x i8]* @.str23, i64 0, i64 0)) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i650, %print_info.exit
  %call.i = call %struct.t_block* @init_index(i8* %call27, i8*** %gnames.i) #5
  %nr.i = getelementptr inbounds %struct.t_block* %call.i, i64 0, i32 1
  %24 = load i32* %nr.i, align 4, !tbaa !0
  %cmp.i = icmp eq i32 %24, 0
  br i1 %cmp.i, label %if.then1.i, label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([24 x i8]* @.str24, i64 0, i64 0)) #5
  %.pre.i = load i32* %nr.i, align 4, !tbaa !0
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then1.i, %if.end.i
  %25 = phi i32 [ %.pre.i, %if.then1.i ], [ %24, %if.end.i ]
  %call5.i = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str9, i64 0, i64 0), i32 168, i32 %25, i32 8) #5
  %26 = bitcast i8* %call5.i to i32**
  %27 = load i32* %nr.i, align 4, !tbaa !0
  %call7.i = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str9, i64 0, i64 0), i32 169, i32 %27, i32 8) #5
  %28 = bitcast i8* %call7.i to i8**
  %29 = load i32* %nr.i, align 4, !tbaa !0
  %call9.i = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str9, i64 0, i64 0), i32 170, i32 %29, i32 4) #5
  %30 = bitcast i8* %call9.i to i32*
  %cmp1094.i = icmp sgt i32 %25, 0
  br i1 %cmp1094.i, label %for.body.lr.ph.i, label %for.cond45.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.end2.i
  %index15.i = getelementptr inbounds %struct.t_block* %call.i, i64 0, i32 2
  %a.i = getelementptr inbounds %struct.t_block* %call.i, i64 0, i32 4
  br label %for.body.i

for.cond.loopexit.i:                              ; preds = %for.body31.i, %for.body.i
  %lftr.wideiv815 = trunc i64 %indvars.iv.next99.i to i32
  %exitcond816 = icmp eq i32 %lftr.wideiv815, %25
  br i1 %exitcond816, label %for.cond45.preheader.i, label %for.body.i

for.cond45.preheader.i:                           ; preds = %for.cond.loopexit.i, %if.end2.i
  %31 = load i32* %nr.i, align 4, !tbaa !0
  %cmp4789.i = icmp sgt i32 %31, 0
  br i1 %cmp4789.i, label %for.body48.i, label %read_whole_index.exit

for.body.i:                                       ; preds = %for.cond.loopexit.i, %for.body.lr.ph.i
  %indvars.iv98.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next99.i, %for.cond.loopexit.i ]
  %32 = load i8*** %gnames.i, align 8, !tbaa !3
  %arrayidx.i = getelementptr inbounds i8** %32, i64 %indvars.iv98.i
  %33 = load i8** %arrayidx.i, align 8, !tbaa !3
  %call11.i = call noalias i8* @strdup(i8* %33) #5
  %arrayidx13.i = getelementptr inbounds i8** %28, i64 %indvars.iv98.i
  store i8* %call11.i, i8** %arrayidx13.i, align 8, !tbaa !3
  %indvars.iv.next99.i = add i64 %indvars.iv98.i, 1
  %34 = load i32** %index15.i, align 8, !tbaa !3
  %arrayidx16.i = getelementptr inbounds i32* %34, i64 %indvars.iv.next99.i
  %35 = load i32* %arrayidx16.i, align 4, !tbaa !0
  %arrayidx19.i = getelementptr inbounds i32* %34, i64 %indvars.iv98.i
  %36 = load i32* %arrayidx19.i, align 4, !tbaa !0
  %sub.i = sub nsw i32 %35, %36
  %arrayidx21.i = getelementptr inbounds i32* %30, i64 %indvars.iv98.i
  store i32 %sub.i, i32* %arrayidx21.i, align 4, !tbaa !0
  %call24.i = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str9, i64 0, i64 0), i32 176, i32 %sub.i, i32 4) #5
  %37 = bitcast i8* %call24.i to i32*
  %arrayidx26.i = getelementptr inbounds i32** %26, i64 %indvars.iv98.i
  store i32* %37, i32** %arrayidx26.i, align 8, !tbaa !3
  %38 = load i32* %arrayidx21.i, align 4, !tbaa !0
  %cmp3092.i = icmp sgt i32 %38, 0
  br i1 %cmp3092.i, label %for.body31.lr.ph.i, label %for.cond.loopexit.i

for.body31.lr.ph.i:                               ; preds = %for.body.i
  %39 = load i32** %index15.i, align 8, !tbaa !3
  %arrayidx34.i = getelementptr inbounds i32* %39, i64 %indvars.iv98.i
  %40 = load i32** %a.i, align 8, !tbaa !3
  br label %for.body31.i

for.body31.i:                                     ; preds = %for.body31.i, %for.body31.lr.ph.i
  %indvars.iv96.i = phi i64 [ 0, %for.body31.lr.ph.i ], [ %indvars.iv.next97.i, %for.body31.i ]
  %41 = load i32* %arrayidx34.i, align 4, !tbaa !0
  %42 = trunc i64 %indvars.iv96.i to i32
  %add35.i = add nsw i32 %41, %42
  %idxprom36.i = sext i32 %add35.i to i64
  %arrayidx37.i = getelementptr inbounds i32* %40, i64 %idxprom36.i
  %43 = load i32* %arrayidx37.i, align 4, !tbaa !0
  %arrayidx41.i = getelementptr inbounds i32* %37, i64 %indvars.iv96.i
  store i32 %43, i32* %arrayidx41.i, align 4, !tbaa !0
  %indvars.iv.next97.i = add i64 %indvars.iv96.i, 1
  %44 = load i32* %arrayidx21.i, align 4, !tbaa !0
  %45 = trunc i64 %indvars.iv.next97.i to i32
  %cmp30.i = icmp slt i32 %45, %44
  br i1 %cmp30.i, label %for.body31.i, label %for.cond.loopexit.i

for.body48.i:                                     ; preds = %for.cond45.preheader.i, %for.body48.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body48.i ], [ 0, %for.cond45.preheader.i ]
  %46 = load i8*** %gnames.i, align 8, !tbaa !3
  %arrayidx50.i = getelementptr inbounds i8** %46, i64 %indvars.iv.i
  %47 = load i8** %arrayidx50.i, align 8, !tbaa !3
  call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str9, i64 0, i64 0), i32 182, i8* %47) #5
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %48 = load i32* %nr.i, align 4, !tbaa !0
  %49 = trunc i64 %indvars.iv.next.i to i32
  %cmp47.i = icmp slt i32 %49, %48
  br i1 %cmp47.i, label %for.body48.i, label %read_whole_index.exit

read_whole_index.exit:                            ; preds = %for.body48.i, %for.cond45.preheader.i
  %50 = load i8*** %gnames.i, align 8, !tbaa !3
  %51 = bitcast i8** %50 to i8*
  call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str9, i64 0, i64 0), i32 183, i8* %51) #5
  call void @done_block(%struct.t_block* %call.i) #5
  %52 = bitcast %struct.t_block* %call.i to i8*
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str9, i64 0, i64 0), i32 185, i8* %52) #5
  call void @llvm.lifetime.end(i64 8, i8* %23) #4
  %bVerbose = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 25
  %53 = load i32* %bVerbose, align 4, !tbaa !0
  %tobool28 = icmp eq i32 %53, 0
  br i1 %tobool28, label %for.cond37.preheader, label %if.then29

if.then29:                                        ; preds = %read_whole_index.exit
  %54 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([35 x i8]* @.str6, i64 0, i64 0), i32 %25) #5
  br i1 %cmp1094.i, label %for.body, label %for.cond37.preheader

for.cond37.preheader:                             ; preds = %if.then29, %for.body, %read_whole_index.exit
  %55 = load i32* %n, align 4, !tbaa !0
  %cmp40781 = icmp sgt i32 %55, 0
  br i1 %cmp40781, label %for.body42.lr.ph, label %for.end55

for.body42.lr.ph:                                 ; preds = %for.cond37.preheader
  %idx = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 1
  %ngx48 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 3
  %grps = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 4
  br label %for.body42

for.body:                                         ; preds = %if.then29, %for.body
  %indvars.iv811 = phi i64 [ %indvars.iv.next812, %for.body ], [ 0, %if.then29 ]
  %56 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8** %28, i64 %indvars.iv811
  %57 = load i8** %arrayidx, align 8, !tbaa !3
  %arrayidx34 = getelementptr inbounds i32* %30, i64 %indvars.iv811
  %58 = load i32* %arrayidx34, align 4, !tbaa !0
  %59 = trunc i64 %indvars.iv811 to i32
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([27 x i8]* @.str7, i64 0, i64 0), i32 %59, i8* %57, i32 %58) #5
  %indvars.iv.next812 = add i64 %indvars.iv811, 1
  %lftr.wideiv813 = trunc i64 %indvars.iv.next812 to i32
  %exitcond814 = icmp eq i32 %lftr.wideiv813, %25
  br i1 %exitcond814, label %for.cond37.preheader, label %for.body

for.body42:                                       ; preds = %for.body42.lr.ph, %for.body42
  %indvars.iv809 = phi i64 [ 0, %for.body42.lr.ph ], [ %indvars.iv.next810, %for.body42 ]
  %60 = load i32*** %idx, align 8, !tbaa !3
  %arrayidx45 = getelementptr inbounds i32** %60, i64 %indvars.iv809
  %61 = load i32** %ngx48, align 8, !tbaa !3
  %arrayidx49 = getelementptr inbounds i32* %61, i64 %indvars.iv809
  %62 = load i8*** %grps, align 8, !tbaa !3
  %arrayidx52 = getelementptr inbounds i8** %62, i64 %indvars.iv809
  %63 = load i8** %arrayidx52, align 8, !tbaa !3
  call fastcc void @get_named_indexgroup(%struct._IO_FILE* %log, i32** %arrayidx45, i32* %arrayidx49, i8* %63, i32** %26, i32* %30, i8** %28, i32 %25) #6
  %indvars.iv.next810 = add i64 %indvars.iv809, 1
  %64 = load i32* %n, align 4, !tbaa !0
  %65 = trunc i64 %indvars.iv.next810 to i32
  %cmp40 = icmp slt i32 %65, %64
  br i1 %cmp40, label %for.body42, label %for.end55

for.end55:                                        ; preds = %for.body42, %for.cond37.preheader
  %idx57 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 1
  %66 = load i32*** %idx57, align 8, !tbaa !3
  %ngx60 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 3
  %67 = load i32** %ngx60, align 8, !tbaa !3
  %grps63 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 4
  %68 = load i8*** %grps63, align 8, !tbaa !3
  %69 = load i8** %68, align 8, !tbaa !3
  call fastcc void @get_named_indexgroup(%struct._IO_FILE* %log, i32** %66, i32* %67, i8* %69, i32** %26, i32* %30, i8** %28, i32 %25) #6
  %70 = load i32** %ngx60, align 8, !tbaa !3
  %71 = load i32* %70, align 4, !tbaa !0
  %call68 = call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str9, i64 0, i64 0), i32 256, i32 %71, i32 12) #5
  %72 = bitcast i8* %call68 to [3 x float]*
  %x0 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 6
  %73 = load [3 x float]*** %x0, align 8, !tbaa !3
  store [3 x float]* %72, [3 x float]** %73, align 8, !tbaa !3
  %74 = load i32** %ngx60, align 8, !tbaa !3
  %75 = load i32* %74, align 4, !tbaa !0
  %call74 = call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str9, i64 0, i64 0), i32 257, i32 %75, i32 12) #5
  %76 = bitcast i8* %call74 to [3 x float]*
  %xp = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 7
  %77 = load [3 x float]*** %xp, align 8, !tbaa !3
  store [3 x float]* %76, [3 x float]** %77, align 8, !tbaa !3
  %reflag = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 24
  %78 = load i32* %reflag, align 4, !tbaa !0
  %call77 = call i8* @save_calloc(i8* getelementptr inbounds ([21 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str9, i64 0, i64 0), i32 258, i32 %78, i32 12) #5
  %79 = bitcast i8* %call77 to [3 x float]*
  %comhist = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 17
  %80 = load [3 x float]*** %comhist, align 8, !tbaa !3
  store [3 x float]* %79, [3 x float]** %80, align 8, !tbaa !3
  %81 = load i32* %n, align 4, !tbaa !0
  %cmp83779 = icmp sgt i32 %81, 0
  br i1 %cmp83779, label %for.body85.lr.ph, label %for.cond95.preheader

for.body85.lr.ph:                                 ; preds = %for.end55
  %comhist90 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 17
  br label %for.body85

for.cond95.preheader:                             ; preds = %for.body85, %for.end55
  %cmp96777 = icmp sgt i32 %0, 0
  br i1 %cmp96777, label %for.body98.lr.ph, label %for.cond95.preheader.for.end141_crit_edge

for.cond95.preheader.for.end141_crit_edge:        ; preds = %for.cond95.preheader
  %arraydecay148.pre = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 0
  %arrayidx2.i663.pre = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 1
  %arrayidx4.i665.pre = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 2
  br label %for.end141

for.body98.lr.ph:                                 ; preds = %for.cond95.preheader
  %ngx101 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 3
  %idx105 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 1
  %arraydecay = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 0
  %x_con = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 10
  %arrayidx2.i = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 1
  %arrayidx4.i = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 2
  %x_unc = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  %x_ref = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 8
  %spring = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 13
  %tmass = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 5
  br label %for.body98

for.body85:                                       ; preds = %for.body85.lr.ph, %for.body85
  %indvars.iv807 = phi i64 [ 0, %for.body85.lr.ph ], [ %indvars.iv.next808, %for.body85 ]
  %82 = load i32* %reflag, align 4, !tbaa !0
  %call87 = call i8* @save_calloc(i8* getelementptr inbounds ([22 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str9, i64 0, i64 0), i32 260, i32 %82, i32 12) #5
  %83 = bitcast i8* %call87 to [3 x float]*
  %84 = load [3 x float]*** %comhist90, align 8, !tbaa !3
  %arrayidx91 = getelementptr inbounds [3 x float]** %84, i64 %indvars.iv807
  store [3 x float]* %83, [3 x float]** %arrayidx91, align 8, !tbaa !3
  %indvars.iv.next808 = add i64 %indvars.iv807, 1
  %85 = load i32* %n, align 4, !tbaa !0
  %86 = trunc i64 %indvars.iv.next808 to i32
  %cmp83 = icmp slt i32 %86, %85
  br i1 %cmp83, label %for.body85, label %for.cond95.preheader

for.body98:                                       ; preds = %for.body98, %for.body98.lr.ph
  %indvars.iv803 = phi i64 [ 0, %for.body98.lr.ph ], [ %indvars.iv.next804, %for.body98 ]
  %87 = load i32** %ngx101, align 8, !tbaa !3
  %arrayidx102 = getelementptr inbounds i32* %87, i64 %indvars.iv803
  %88 = load i32* %arrayidx102, align 4, !tbaa !0
  %89 = load i32*** %idx105, align 8, !tbaa !3
  %arrayidx106 = getelementptr inbounds i32** %89, i64 %indvars.iv803
  %90 = load i32** %arrayidx106, align 8, !tbaa !3
  %call107 = call float @calc_com([3 x float]* %x, i32 %88, i32* %90, %struct.t_mdatoms* %md, float* %arraydecay, [3 x float]* %box) #5
  %91 = load [3 x float]** %x_con, align 8, !tbaa !3
  %arraydecay112 = getelementptr inbounds [3 x float]* %91, i64 %indvars.iv803, i64 0
  %92 = load float* %arraydecay, align 4, !tbaa !4
  store float %92, float* %arraydecay112, align 4, !tbaa !4
  %93 = load float* %arrayidx2.i, align 4, !tbaa !4
  %arrayidx3.i = getelementptr inbounds [3 x float]* %91, i64 %indvars.iv803, i64 1
  store float %93, float* %arrayidx3.i, align 4, !tbaa !4
  %94 = load float* %arrayidx4.i, align 4, !tbaa !4
  %arrayidx5.i = getelementptr inbounds [3 x float]* %91, i64 %indvars.iv803, i64 2
  store float %94, float* %arrayidx5.i, align 4, !tbaa !4
  %95 = load [3 x float]** %x_unc, align 8, !tbaa !3
  %arraydecay117 = getelementptr inbounds [3 x float]* %95, i64 %indvars.iv803, i64 0
  %96 = load float* %arraydecay, align 4, !tbaa !4
  store float %96, float* %arraydecay117, align 4, !tbaa !4
  %97 = load float* %arrayidx2.i, align 4, !tbaa !4
  %arrayidx3.i652 = getelementptr inbounds [3 x float]* %95, i64 %indvars.iv803, i64 1
  store float %97, float* %arrayidx3.i652, align 4, !tbaa !4
  %98 = load float* %arrayidx4.i, align 4, !tbaa !4
  %arrayidx5.i654 = getelementptr inbounds [3 x float]* %95, i64 %indvars.iv803, i64 2
  store float %98, float* %arrayidx5.i654, align 4, !tbaa !4
  %99 = load [3 x float]** %x_ref, align 8, !tbaa !3
  %arraydecay122 = getelementptr inbounds [3 x float]* %99, i64 %indvars.iv803, i64 0
  %100 = load float* %arraydecay, align 4, !tbaa !4
  store float %100, float* %arraydecay122, align 4, !tbaa !4
  %101 = load float* %arrayidx2.i, align 4, !tbaa !4
  %arrayidx3.i656 = getelementptr inbounds [3 x float]* %99, i64 %indvars.iv803, i64 1
  store float %101, float* %arrayidx3.i656, align 4, !tbaa !4
  %102 = load float* %arrayidx4.i, align 4, !tbaa !4
  %arrayidx5.i658 = getelementptr inbounds [3 x float]* %99, i64 %indvars.iv803, i64 2
  store float %102, float* %arrayidx5.i658, align 4, !tbaa !4
  %103 = load [3 x float]** %spring, align 8, !tbaa !3
  %arraydecay127 = getelementptr inbounds [3 x float]* %103, i64 %indvars.iv803, i64 0
  %104 = load float* %arraydecay, align 4, !tbaa !4
  store float %104, float* %arraydecay127, align 4, !tbaa !4
  %105 = load float* %arrayidx2.i, align 4, !tbaa !4
  %arrayidx3.i660 = getelementptr inbounds [3 x float]* %103, i64 %indvars.iv803, i64 1
  store float %105, float* %arrayidx3.i660, align 4, !tbaa !4
  %106 = load float* %arrayidx4.i, align 4, !tbaa !4
  %arrayidx5.i662 = getelementptr inbounds [3 x float]* %103, i64 %indvars.iv803, i64 2
  store float %106, float* %arrayidx5.i662, align 4, !tbaa !4
  %conv128 = fpext float %call107 to double
  %107 = load float* %arraydecay, align 4, !tbaa !4
  %conv130 = fpext float %107 to double
  %108 = load float* %arrayidx2.i, align 4, !tbaa !4
  %conv132 = fpext float %108 to double
  %109 = load float* %arrayidx4.i, align 4, !tbaa !4
  %conv134 = fpext float %109 to double
  %110 = trunc i64 %indvars.iv803 to i32
  %call135 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([105 x i8]* @.str13, i64 0, i64 0), i32 %110, double %conv128, double %conv130, double %conv132, double %conv134) #5
  %111 = load float** %tmass, align 8, !tbaa !3
  %arrayidx138 = getelementptr inbounds float* %111, i64 %indvars.iv803
  store float %call107, float* %arrayidx138, align 4, !tbaa !4
  %indvars.iv.next804 = add i64 %indvars.iv803, 1
  %lftr.wideiv805 = trunc i64 %indvars.iv.next804 to i32
  %exitcond806 = icmp eq i32 %lftr.wideiv805, %0
  br i1 %exitcond806, label %for.end141, label %for.body98

for.end141:                                       ; preds = %for.body98, %for.cond95.preheader.for.end141_crit_edge
  %arrayidx4.i665.pre-phi = phi float* [ %arrayidx4.i665.pre, %for.cond95.preheader.for.end141_crit_edge ], [ %arrayidx4.i, %for.body98 ]
  %arrayidx2.i663.pre-phi = phi float* [ %arrayidx2.i663.pre, %for.cond95.preheader.for.end141_crit_edge ], [ %arrayidx2.i, %for.body98 ]
  %arraydecay148.pre-phi = phi float* [ %arraydecay148.pre, %for.cond95.preheader.for.end141_crit_edge ], [ %arraydecay, %for.body98 ]
  %112 = load i32** %ngx60, align 8, !tbaa !3
  %113 = load i32* %112, align 4, !tbaa !0
  %114 = load i32*** %idx57, align 8, !tbaa !3
  %115 = load i32** %114, align 8, !tbaa !3
  %call149 = call float @calc_com([3 x float]* %x, i32 %113, i32* %115, %struct.t_mdatoms* %md, float* %arraydecay148.pre-phi, [3 x float]* %box) #5
  %x_unc152 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 9
  %116 = load [3 x float]** %x_unc152, align 8, !tbaa !3
  %arraydecay154 = getelementptr inbounds [3 x float]* %116, i64 0, i64 0
  %117 = load float* %arraydecay148.pre-phi, align 4, !tbaa !4
  store float %117, float* %arraydecay154, align 4, !tbaa !4
  %118 = load float* %arrayidx2.i663.pre-phi, align 4, !tbaa !4
  %arrayidx3.i664 = getelementptr inbounds [3 x float]* %116, i64 0, i64 1
  store float %118, float* %arrayidx3.i664, align 4, !tbaa !4
  %119 = load float* %arrayidx4.i665.pre-phi, align 4, !tbaa !4
  %arrayidx5.i666 = getelementptr inbounds [3 x float]* %116, i64 0, i64 2
  store float %119, float* %arrayidx5.i666, align 4, !tbaa !4
  %x_con157 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 10
  %120 = load [3 x float]** %x_con157, align 8, !tbaa !3
  %arraydecay159 = getelementptr inbounds [3 x float]* %120, i64 0, i64 0
  %121 = load float* %arraydecay148.pre-phi, align 4, !tbaa !4
  store float %121, float* %arraydecay159, align 4, !tbaa !4
  %122 = load float* %arrayidx2.i663.pre-phi, align 4, !tbaa !4
  %arrayidx3.i668 = getelementptr inbounds [3 x float]* %120, i64 0, i64 1
  store float %122, float* %arrayidx3.i668, align 4, !tbaa !4
  %123 = load float* %arrayidx4.i665.pre-phi, align 4, !tbaa !4
  %arrayidx5.i670 = getelementptr inbounds [3 x float]* %120, i64 0, i64 2
  store float %123, float* %arrayidx5.i670, align 4, !tbaa !4
  %x_ref162 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 8
  %124 = load [3 x float]** %x_ref162, align 8, !tbaa !3
  %arraydecay164 = getelementptr inbounds [3 x float]* %124, i64 0, i64 0
  %125 = load float* %arraydecay148.pre-phi, align 4, !tbaa !4
  store float %125, float* %arraydecay164, align 4, !tbaa !4
  %126 = load float* %arrayidx2.i663.pre-phi, align 4, !tbaa !4
  %arrayidx3.i672 = getelementptr inbounds [3 x float]* %124, i64 0, i64 1
  store float %126, float* %arrayidx3.i672, align 4, !tbaa !4
  %127 = load float* %arrayidx4.i665.pre-phi, align 4, !tbaa !4
  %arrayidx5.i674 = getelementptr inbounds [3 x float]* %124, i64 0, i64 2
  store float %127, float* %arrayidx5.i674, align 4, !tbaa !4
  %128 = load i32* %reflag, align 4, !tbaa !0
  %cmp167775 = icmp sgt i32 %128, 0
  br i1 %cmp167775, label %for.body169.lr.ph, label %for.end182

for.body169.lr.ph:                                ; preds = %for.end141
  %129 = load [3 x float]*** %comhist, align 8, !tbaa !3
  %130 = load [3 x float]** %129, align 8, !tbaa !3
  br label %for.body169

for.body169:                                      ; preds = %for.body169.lr.ph, %for.body169
  %indvars.iv801 = phi i64 [ 0, %for.body169.lr.ph ], [ %indvars.iv.next802, %for.body169 ]
  %arraydecay179 = getelementptr inbounds [3 x float]* %130, i64 %indvars.iv801, i64 0
  %131 = load float* %arraydecay154, align 4, !tbaa !4
  store float %131, float* %arraydecay179, align 4, !tbaa !4
  %132 = load float* %arrayidx3.i664, align 4, !tbaa !4
  %arrayidx3.i676 = getelementptr inbounds [3 x float]* %130, i64 %indvars.iv801, i64 1
  store float %132, float* %arrayidx3.i676, align 4, !tbaa !4
  %133 = load float* %arrayidx5.i666, align 4, !tbaa !4
  %arrayidx5.i678 = getelementptr inbounds [3 x float]* %130, i64 %indvars.iv801, i64 2
  store float %133, float* %arrayidx5.i678, align 4, !tbaa !4
  %indvars.iv.next802 = add i64 %indvars.iv801, 1
  %134 = trunc i64 %indvars.iv.next802 to i32
  %cmp167 = icmp slt i32 %134, %128
  br i1 %cmp167, label %for.body169, label %for.end182

for.end182:                                       ; preds = %for.body169, %for.end141
  %conv183 = fpext float %call149 to double
  %135 = load float* %arraydecay148.pre-phi, align 4, !tbaa !4
  %conv185 = fpext float %135 to double
  %136 = load float* %arrayidx2.i663.pre-phi, align 4, !tbaa !4
  %conv187 = fpext float %136 to double
  %137 = load float* %arrayidx4.i665.pre-phi, align 4, !tbaa !4
  %conv189 = fpext float %137 to double
  %call190 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([97 x i8]* @.str14, i64 0, i64 0), double %conv183, double %conv185, double %conv187, double %conv189) #5
  %138 = load i32** %ngx60, align 8, !tbaa !3
  %139 = load i32* %138, align 4, !tbaa !0
  %cmp195773 = icmp sgt i32 %139, 0
  br i1 %cmp195773, label %for.body197.lr.ph, label %for.end228

for.body197.lr.ph:                                ; preds = %for.end182
  %140 = load i32*** %idx57, align 8, !tbaa !3
  %141 = load i32** %140, align 8, !tbaa !3
  %142 = load [3 x float]*** %x0, align 8, !tbaa !3
  %143 = load [3 x float]** %142, align 8, !tbaa !3
  %144 = load [3 x float]*** %xp, align 8, !tbaa !3
  %145 = load [3 x float]** %144, align 8, !tbaa !3
  br label %for.body197

for.body197:                                      ; preds = %for.body197.lr.ph, %for.body197
  %indvars.iv799 = phi i64 [ 0, %for.body197.lr.ph ], [ %indvars.iv.next800, %for.body197 ]
  %arrayidx202 = getelementptr inbounds i32* %141, i64 %indvars.iv799
  %146 = load i32* %arrayidx202, align 4, !tbaa !0
  %idxprom203 = sext i32 %146 to i64
  %arraydecay205 = getelementptr inbounds [3 x float]* %x, i64 %idxprom203, i64 0
  %arraydecay211 = getelementptr inbounds [3 x float]* %143, i64 %indvars.iv799, i64 0
  %147 = load float* %arraydecay205, align 4, !tbaa !4
  store float %147, float* %arraydecay211, align 4, !tbaa !4
  %arrayidx2.i679 = getelementptr inbounds [3 x float]* %x, i64 %idxprom203, i64 1
  %148 = load float* %arrayidx2.i679, align 4, !tbaa !4
  %arrayidx3.i680 = getelementptr inbounds [3 x float]* %143, i64 %indvars.iv799, i64 1
  store float %148, float* %arrayidx3.i680, align 4, !tbaa !4
  %arrayidx4.i681 = getelementptr inbounds [3 x float]* %x, i64 %idxprom203, i64 2
  %149 = load float* %arrayidx4.i681, align 4, !tbaa !4
  %arrayidx5.i682 = getelementptr inbounds [3 x float]* %143, i64 %indvars.iv799, i64 2
  store float %149, float* %arrayidx5.i682, align 4, !tbaa !4
  %arraydecay225 = getelementptr inbounds [3 x float]* %145, i64 %indvars.iv799, i64 0
  %150 = load float* %arraydecay205, align 4, !tbaa !4
  store float %150, float* %arraydecay225, align 4, !tbaa !4
  %151 = load float* %arrayidx2.i679, align 4, !tbaa !4
  %arrayidx3.i684 = getelementptr inbounds [3 x float]* %145, i64 %indvars.iv799, i64 1
  store float %151, float* %arrayidx3.i684, align 4, !tbaa !4
  %152 = load float* %arrayidx4.i681, align 4, !tbaa !4
  %arrayidx5.i686 = getelementptr inbounds [3 x float]* %145, i64 %indvars.iv799, i64 2
  store float %152, float* %arrayidx5.i686, align 4, !tbaa !4
  %indvars.iv.next800 = add i64 %indvars.iv799, 1
  %153 = trunc i64 %indvars.iv.next800 to i32
  %cmp195 = icmp slt i32 %153, %139
  br i1 %cmp195, label %for.body197, label %for.end228

for.end228:                                       ; preds = %for.body197, %for.end182
  %tmass230 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 5
  %154 = load float** %tmass230, align 8, !tbaa !3
  store float %call149, float* %154, align 4, !tbaa !4
  %155 = load i32* %bCyl, align 4, !tbaa !0
  %tobool233 = icmp eq i32 %155, 0
  br i1 %tobool233, label %for.cond311.preheader, label %if.then234

if.then234:                                       ; preds = %for.end228
  call void @make_refgrps(%struct.t_pull* %pull, [3 x float]* %x, %struct.t_mdatoms* %md) #5
  br i1 %cmp96777, label %for.body238.lr.ph, label %for.end457

for.body238.lr.ph:                                ; preds = %if.then234
  %x_unc241 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 9
  %x_con246 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 10
  %x_ref256 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 8
  %ngx281 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 3
  %tmass285 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 5
  %comhist272 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 17
  br label %for.body238

for.cond311.preheader:                            ; preds = %for.end278, %for.end228
  br i1 %cmp96777, label %for.body314.lr.ph, label %for.end457

for.body314.lr.ph:                                ; preds = %for.cond311.preheader
  %x_ref320 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 8
  %x_ref325 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 8
  %d_ref = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 15
  %dir = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 14
  %bReverse = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 18
  %rate = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 21
  %k = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 20
  br label %for.body314

for.body238:                                      ; preds = %for.end278, %for.body238.lr.ph
  %indvars.iv795 = phi i64 [ 0, %for.body238.lr.ph ], [ %indvars.iv.next796, %for.end278 ]
  %156 = load [3 x float]** %x_unc241, align 8, !tbaa !3
  %arraydecay243 = getelementptr inbounds [3 x float]* %156, i64 %indvars.iv795, i64 0
  %157 = load [3 x float]** %x_con246, align 8, !tbaa !3
  %arraydecay248 = getelementptr inbounds [3 x float]* %157, i64 %indvars.iv795, i64 0
  %158 = load float* %arraydecay243, align 4, !tbaa !4
  store float %158, float* %arraydecay248, align 4, !tbaa !4
  %arrayidx2.i687 = getelementptr inbounds [3 x float]* %156, i64 %indvars.iv795, i64 1
  %159 = load float* %arrayidx2.i687, align 4, !tbaa !4
  %arrayidx3.i688 = getelementptr inbounds [3 x float]* %157, i64 %indvars.iv795, i64 1
  store float %159, float* %arrayidx3.i688, align 4, !tbaa !4
  %arrayidx4.i689 = getelementptr inbounds [3 x float]* %156, i64 %indvars.iv795, i64 2
  %160 = load float* %arrayidx4.i689, align 4, !tbaa !4
  %arrayidx5.i690 = getelementptr inbounds [3 x float]* %157, i64 %indvars.iv795, i64 2
  store float %160, float* %arrayidx5.i690, align 4, !tbaa !4
  %161 = load [3 x float]** %x_ref256, align 8, !tbaa !3
  %arraydecay258 = getelementptr inbounds [3 x float]* %161, i64 %indvars.iv795, i64 0
  %162 = load float* %arraydecay243, align 4, !tbaa !4
  store float %162, float* %arraydecay258, align 4, !tbaa !4
  %163 = load float* %arrayidx2.i687, align 4, !tbaa !4
  %arrayidx3.i692 = getelementptr inbounds [3 x float]* %161, i64 %indvars.iv795, i64 1
  store float %163, float* %arrayidx3.i692, align 4, !tbaa !4
  %164 = load float* %arrayidx4.i689, align 4, !tbaa !4
  %arrayidx5.i694 = getelementptr inbounds [3 x float]* %161, i64 %indvars.iv795, i64 2
  store float %164, float* %arrayidx5.i694, align 4, !tbaa !4
  %165 = load i32* %reflag, align 4, !tbaa !0
  %cmp261769 = icmp sgt i32 %165, 0
  br i1 %cmp261769, label %for.body263.lr.ph, label %for.end278

for.body263.lr.ph:                                ; preds = %for.body238
  %166 = load [3 x float]*** %comhist272, align 8, !tbaa !3
  %arrayidx273 = getelementptr inbounds [3 x float]** %166, i64 %indvars.iv795
  %167 = load [3 x float]** %arrayidx273, align 8, !tbaa !3
  br label %for.body263

for.body263:                                      ; preds = %for.body263.lr.ph, %for.body263
  %indvars.iv793 = phi i64 [ 0, %for.body263.lr.ph ], [ %indvars.iv.next794, %for.body263 ]
  %arraydecay275 = getelementptr inbounds [3 x float]* %167, i64 %indvars.iv793, i64 0
  %168 = load float* %arraydecay243, align 4, !tbaa !4
  store float %168, float* %arraydecay275, align 4, !tbaa !4
  %169 = load float* %arrayidx2.i687, align 4, !tbaa !4
  %arrayidx3.i696 = getelementptr inbounds [3 x float]* %167, i64 %indvars.iv793, i64 1
  store float %169, float* %arrayidx3.i696, align 4, !tbaa !4
  %170 = load float* %arrayidx4.i689, align 4, !tbaa !4
  %arrayidx5.i698 = getelementptr inbounds [3 x float]* %167, i64 %indvars.iv793, i64 2
  store float %170, float* %arrayidx5.i698, align 4, !tbaa !4
  %indvars.iv.next794 = add i64 %indvars.iv793, 1
  %171 = trunc i64 %indvars.iv.next794 to i32
  %cmp261 = icmp slt i32 %171, %165
  br i1 %cmp261, label %for.body263, label %for.cond259.for.end278_crit_edge

for.cond259.for.end278_crit_edge:                 ; preds = %for.body263
  %.pre = load float* %arraydecay258, align 4, !tbaa !4
  %.pre817 = load float* %arrayidx3.i692, align 4, !tbaa !4
  %.pre818 = load float* %arrayidx5.i694, align 4, !tbaa !4
  br label %for.end278

for.end278:                                       ; preds = %for.cond259.for.end278_crit_edge, %for.body238
  %172 = phi float [ %.pre818, %for.cond259.for.end278_crit_edge ], [ %164, %for.body238 ]
  %173 = phi float [ %.pre817, %for.cond259.for.end278_crit_edge ], [ %163, %for.body238 ]
  %174 = phi float [ %.pre, %for.cond259.for.end278_crit_edge ], [ %162, %for.body238 ]
  %175 = load i32** %ngx281, align 8, !tbaa !3
  %arrayidx282 = getelementptr inbounds i32* %175, i64 %indvars.iv795
  %176 = load i32* %arrayidx282, align 4, !tbaa !0
  %177 = load float** %tmass285, align 8, !tbaa !3
  %arrayidx286 = getelementptr inbounds float* %177, i64 %indvars.iv795
  %178 = load float* %arrayidx286, align 4, !tbaa !4
  %conv287 = fpext float %178 to double
  %conv293 = fpext float %174 to double
  %conv299 = fpext float %173 to double
  %conv305 = fpext float %172 to double
  %179 = trunc i64 %indvars.iv795 to i32
  %call306 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([120 x i8]* @.str15, i64 0, i64 0), i32 %176, i32 %179, double %conv287, double %conv293, double %conv299, double %conv305) #5
  %indvars.iv.next796 = add i64 %indvars.iv795, 1
  %lftr.wideiv797 = trunc i64 %indvars.iv.next796 to i32
  %exitcond798 = icmp eq i32 %lftr.wideiv797, %0
  br i1 %exitcond798, label %for.cond311.preheader, label %for.body238

for.body314:                                      ; preds = %for.inc455, %for.body314.lr.ph
  %indvars.iv789 = phi i64 [ 0, %for.body314.lr.ph ], [ %indvars.iv.next790, %for.inc455 ]
  %180 = load i32* %bCyl, align 4, !tbaa !0
  %tobool316 = icmp eq i32 %180, 0
  %181 = load [3 x float]** %x_ref320, align 8, !tbaa !3
  %arraydecay322 = getelementptr inbounds [3 x float]* %181, i64 %indvars.iv789, i64 0
  br i1 %tobool316, label %if.else329, label %if.then317

if.then317:                                       ; preds = %for.body314
  %182 = load [3 x float]** %x_ref325, align 8, !tbaa !3
  %arraydecay327 = getelementptr inbounds [3 x float]* %182, i64 %indvars.iv789, i64 0
  %183 = load float* %arraydecay322, align 4, !tbaa !4
  %184 = load float* %arraydecay327, align 4, !tbaa !4
  %sub.i699 = fsub float %183, %184
  %arrayidx2.i700 = getelementptr inbounds [3 x float]* %181, i64 %indvars.iv789, i64 1
  %185 = load float* %arrayidx2.i700, align 4, !tbaa !4
  %arrayidx3.i701 = getelementptr inbounds [3 x float]* %182, i64 %indvars.iv789, i64 1
  %186 = load float* %arrayidx3.i701, align 4, !tbaa !4
  %sub4.i = fsub float %185, %186
  %arrayidx5.i702 = getelementptr inbounds [3 x float]* %181, i64 %indvars.iv789, i64 2
  %187 = load float* %arrayidx5.i702, align 4, !tbaa !4
  %arrayidx6.i = getelementptr inbounds [3 x float]* %182, i64 %indvars.iv789, i64 2
  %188 = load float* %arrayidx6.i, align 4, !tbaa !4
  %sub7.i = fsub float %187, %188
  br label %for.cond341.preheader

if.else329:                                       ; preds = %for.body314
  %189 = load [3 x float]** %x_ref162, align 8, !tbaa !3
  %arraydecay338 = getelementptr inbounds [3 x float]* %189, i64 0, i64 0
  %190 = load float* %arraydecay322, align 4, !tbaa !4
  %191 = load float* %arraydecay338, align 4, !tbaa !4
  %sub.i703 = fsub float %190, %191
  %arrayidx2.i704 = getelementptr inbounds [3 x float]* %181, i64 %indvars.iv789, i64 1
  %192 = load float* %arrayidx2.i704, align 4, !tbaa !4
  %arrayidx3.i705 = getelementptr inbounds [3 x float]* %189, i64 0, i64 1
  %193 = load float* %arrayidx3.i705, align 4, !tbaa !4
  %sub4.i706 = fsub float %192, %193
  %arrayidx5.i707 = getelementptr inbounds [3 x float]* %181, i64 %indvars.iv789, i64 2
  %194 = load float* %arrayidx5.i707, align 4, !tbaa !4
  %arrayidx6.i708 = getelementptr inbounds [3 x float]* %189, i64 0, i64 2
  %195 = load float* %arrayidx6.i708, align 4, !tbaa !4
  %sub7.i709 = fsub float %194, %195
  br label %for.cond341.preheader

for.cond341.preheader:                            ; preds = %if.else329, %if.then317
  %storemerge786 = phi float [ %sub.i699, %if.then317 ], [ %sub.i703, %if.else329 ]
  %storemerge785 = phi float [ %sub4.i, %if.then317 ], [ %sub4.i706, %if.else329 ]
  %storemerge = phi float [ %sub7.i, %if.then317 ], [ %sub7.i709, %if.else329 ]
  store float %storemerge786, float* %arraydecay148.pre-phi, align 4, !tbaa !4
  store float %storemerge785, float* %arrayidx2.i663.pre-phi, align 4, !tbaa !4
  store float %storemerge, float* %arrayidx4.i665.pre-phi, align 4, !tbaa !4
  br label %for.body344

for.body344:                                      ; preds = %for.inc378.for.body344_crit_edge, %for.cond341.preheader
  %196 = phi float [ %storemerge, %for.cond341.preheader ], [ %.pre820, %for.inc378.for.body344_crit_edge ]
  %197 = phi float [ %storemerge, %for.cond341.preheader ], [ %211, %for.inc378.for.body344_crit_edge ]
  %198 = phi float [ %storemerge785, %for.cond341.preheader ], [ %212, %for.inc378.for.body344_crit_edge ]
  %199 = phi float [ %storemerge786, %for.cond341.preheader ], [ %213, %for.inc378.for.body344_crit_edge ]
  %indvars.iv = phi i64 [ 2, %for.cond341.preheader ], [ %indvars.iv.next, %for.inc378.for.body344_crit_edge ]
  %conv347 = fpext float %196 to double
  %arrayidx350 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv
  %arrayidx351 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv
  %200 = load float* %arrayidx351, align 4, !tbaa !4
  %conv352 = fpext float %200 to double
  %mul = fmul double %conv352, -5.000000e-01
  %cmp353 = fcmp olt double %conv347, %mul
  br i1 %cmp353, label %if.then355, label %if.end360

if.then355:                                       ; preds = %for.body344
  %arrayidx346 = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 %indvars.iv
  %arraydecay359 = getelementptr inbounds [3 x float]* %arrayidx350, i64 0, i64 0
  %201 = load float* %arraydecay359, align 4, !tbaa !4
  %add.i = fadd float %199, %201
  %arrayidx3.i713 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 1
  %202 = load float* %arrayidx3.i713, align 4, !tbaa !4
  %add4.i = fadd float %198, %202
  %arrayidx6.i715 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 2
  %203 = load float* %arrayidx6.i715, align 4, !tbaa !4
  %add7.i = fadd float %197, %203
  store float %add.i, float* %arraydecay148.pre-phi, align 4, !tbaa !4
  store float %add4.i, float* %arrayidx2.i663.pre-phi, align 4, !tbaa !4
  store float %add7.i, float* %arrayidx4.i665.pre-phi, align 4, !tbaa !4
  %.pre819 = load float* %arrayidx346, align 4, !tbaa !4
  br label %if.end360

if.end360:                                        ; preds = %if.then355, %for.body344
  %204 = phi float [ %.pre819, %if.then355 ], [ %196, %for.body344 ]
  %205 = phi float [ %add7.i, %if.then355 ], [ %197, %for.body344 ]
  %206 = phi float [ %add4.i, %if.then355 ], [ %198, %for.body344 ]
  %207 = phi float [ %add.i, %if.then355 ], [ %199, %for.body344 ]
  %conv363 = fpext float %204 to double
  %mul369 = fmul double %conv352, 5.000000e-01
  %cmp370 = fcmp ogt double %conv363, %mul369
  br i1 %cmp370, label %if.then372, label %for.inc378

if.then372:                                       ; preds = %if.end360
  %arraydecay376 = getelementptr inbounds [3 x float]* %arrayidx350, i64 0, i64 0
  %208 = load float* %arraydecay376, align 4, !tbaa !4
  %sub.i716 = fsub float %207, %208
  %arrayidx3.i718 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 1
  %209 = load float* %arrayidx3.i718, align 4, !tbaa !4
  %sub4.i719 = fsub float %206, %209
  %arrayidx6.i721 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 2
  %210 = load float* %arrayidx6.i721, align 4, !tbaa !4
  %sub7.i722 = fsub float %205, %210
  store float %sub.i716, float* %arraydecay148.pre-phi, align 4, !tbaa !4
  store float %sub4.i719, float* %arrayidx2.i663.pre-phi, align 4, !tbaa !4
  store float %sub7.i722, float* %arrayidx4.i665.pre-phi, align 4, !tbaa !4
  br label %for.inc378

for.inc378:                                       ; preds = %if.end360, %if.then372
  %211 = phi float [ %205, %if.end360 ], [ %sub7.i722, %if.then372 ]
  %212 = phi float [ %206, %if.end360 ], [ %sub4.i719, %if.then372 ]
  %213 = phi float [ %207, %if.end360 ], [ %sub.i716, %if.then372 ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %214 = trunc i64 %indvars.iv to i32
  %cmp342 = icmp sgt i32 %214, 0
  br i1 %cmp342, label %for.inc378.for.body344_crit_edge, label %for.end379

for.inc378.for.body344_crit_edge:                 ; preds = %for.inc378
  %arrayidx346.phi.trans.insert = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 %indvars.iv.next
  %.pre820 = load float* %arrayidx346.phi.trans.insert, align 4, !tbaa !4
  br label %for.body344

for.end379:                                       ; preds = %for.inc378
  %mul.i = fmul float %213, %213
  %mul4.i = fmul float %212, %212
  %add.i724 = fadd float %mul.i, %mul4.i
  %mul7.i = fmul float %211, %211
  %add8.i = fadd float %add.i724, %mul7.i
  %conv9.i = call float @sqrtf(float %add8.i) #2
  %215 = load float** %d_ref, align 8, !tbaa !3
  %arrayidx384 = getelementptr inbounds float* %215, i64 %indvars.iv789
  store float %conv9.i, float* %arrayidx384, align 4, !tbaa !4
  br label %for.body388

for.body388:                                      ; preds = %for.body388, %for.end379
  %indvars.iv787 = phi i64 [ 0, %for.end379 ], [ %indvars.iv.next788, %for.body388 ]
  %arrayidx390 = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 %indvars.iv787
  %216 = load float* %arrayidx390, align 4, !tbaa !4
  %arrayidx392 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv787
  %217 = load float* %arrayidx392, align 4, !tbaa !4
  %mul393 = fmul float %216, %217
  store float %mul393, float* %arrayidx390, align 4, !tbaa !4
  %indvars.iv.next788 = add i64 %indvars.iv787, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next788 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end398, label %for.body388

for.end398:                                       ; preds = %for.body388
  %218 = load float* %arraydecay148.pre-phi, align 4, !tbaa !4
  %mul.i726 = fmul float %218, %218
  %219 = load float* %arrayidx2.i663.pre-phi, align 4, !tbaa !4
  %mul4.i728 = fmul float %219, %219
  %add.i729 = fadd float %mul.i726, %mul4.i728
  %220 = load float* %arrayidx4.i665.pre-phi, align 4, !tbaa !4
  %mul7.i731 = fmul float %220, %220
  %add8.i732 = fadd float %add.i729, %mul7.i731
  %conv9.i733 = call float @sqrtf(float %add8.i732) #2
  %div = fdiv float 1.000000e+00, %conv9.i733
  %221 = load [3 x float]** %dir, align 8, !tbaa !3
  %arraydecay405 = getelementptr inbounds [3 x float]* %221, i64 %indvars.iv789, i64 0
  %222 = load float* %arraydecay148.pre-phi, align 4, !tbaa !4
  %mul.i734 = fmul float %div, %222
  store float %mul.i734, float* %arraydecay405, align 4, !tbaa !4
  %223 = load float* %arrayidx2.i663.pre-phi, align 4, !tbaa !4
  %mul3.i = fmul float %div, %223
  %arrayidx4.i736 = getelementptr inbounds [3 x float]* %221, i64 %indvars.iv789, i64 1
  store float %mul3.i, float* %arrayidx4.i736, align 4, !tbaa !4
  %224 = load float* %arrayidx4.i665.pre-phi, align 4, !tbaa !4
  %mul6.i = fmul float %div, %224
  %arrayidx7.i = getelementptr inbounds [3 x float]* %221, i64 %indvars.iv789, i64 2
  store float %mul6.i, float* %arrayidx7.i, align 4, !tbaa !4
  %225 = load i32* %bReverse, align 4, !tbaa !0
  %tobool406 = icmp eq i32 %225, 0
  br i1 %tobool406, label %if.end418, label %if.then407

if.then407:                                       ; preds = %for.end398
  %mul.i738 = fmul float %mul.i734, -1.000000e+00
  store float %mul.i738, float* %arraydecay405, align 4, !tbaa !4
  %mul3.i740 = fmul float %mul3.i, -1.000000e+00
  store float %mul3.i740, float* %arrayidx4.i736, align 4, !tbaa !4
  %mul6.i743 = fmul float %mul6.i, -1.000000e+00
  store float %mul6.i743, float* %arrayidx7.i, align 4, !tbaa !4
  br label %if.end418

if.end418:                                        ; preds = %for.end398, %if.then407
  %226 = load i32* %runtype.i, align 4, !tbaa !1
  %cmp419 = icmp eq i32 %226, 1
  br i1 %cmp419, label %if.then421, label %if.end425

if.then421:                                       ; preds = %if.end418
  %227 = load float* %rate, align 4, !tbaa !4
  %conv422 = fpext float %227 to double
  %228 = load float* %k, align 4, !tbaa !4
  %conv423 = fpext float %228 to double
  %call424 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([55 x i8]* @.str16, i64 0, i64 0), double %conv422, double %conv423) #5
  %.pr = load i32* %runtype.i, align 4, !tbaa !1
  br label %if.end425

if.end425:                                        ; preds = %if.then421, %if.end418
  %229 = phi i32 [ %.pr, %if.then421 ], [ %226, %if.end418 ]
  %switch649 = icmp ult i32 %229, 2
  br i1 %switch649, label %if.then433, label %for.inc455

if.then433:                                       ; preds = %if.end425
  %230 = load [3 x float]** %dir, align 8, !tbaa !3
  %arrayidx438 = getelementptr inbounds [3 x float]* %230, i64 %indvars.iv789, i64 0
  %231 = load float* %arrayidx438, align 4, !tbaa !4
  %conv439 = fpext float %231 to double
  %arrayidx444 = getelementptr inbounds [3 x float]* %230, i64 %indvars.iv789, i64 1
  %232 = load float* %arrayidx444, align 4, !tbaa !4
  %conv445 = fpext float %232 to double
  %arrayidx450 = getelementptr inbounds [3 x float]* %230, i64 %indvars.iv789, i64 2
  %233 = load float* %arrayidx450, align 4, !tbaa !4
  %conv451 = fpext float %233 to double
  %234 = load i32* %bReverse, align 4, !tbaa !0
  %call453 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([50 x i8]* @.str17, i64 0, i64 0), double %conv439, double %conv445, double %conv451, i32 %234) #5
  br label %for.inc455

for.inc455:                                       ; preds = %if.end425, %if.then433
  %indvars.iv.next790 = add i64 %indvars.iv789, 1
  %lftr.wideiv791 = trunc i64 %indvars.iv.next790 to i32
  %exitcond792 = icmp eq i32 %lftr.wideiv791, %0
  br i1 %exitcond792, label %for.end457, label %for.body314

for.end457:                                       ; preds = %if.then234, %for.inc455, %for.cond311.preheader
  %235 = call i64 @fwrite(i8* getelementptr inbounds ([162 x i8]* @.str18, i64 0, i64 0), i64 161, i64 1, %struct._IO_FILE* %log)
  br label %return

return:                                           ; preds = %entry, %for.end457
  ret void
}

; Function Attrs: optsize
declare i32 @opt2bSet(i8*, i32, %struct.t_filenm*) #1

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #1

; Function Attrs: optsize
declare i8* @opt2fn(i8*, i32, %struct.t_filenm*) #1

; Function Attrs: optsize
declare void @read_pullparams(%struct.t_pull*, i8*, i8*) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @get_pullmemory(%struct.t_pullgrps* nocapture %pull, i32 %ngrps) #0 {
entry:
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str9, i64 0, i64 0), i32 56, i32 %ngrps, i32 4) #5
  %0 = bitcast i8* %call to i32*
  %ngx = getelementptr inbounds %struct.t_pullgrps* %pull, i64 0, i32 3
  store i32* %0, i32** %ngx, align 8, !tbaa !3
  %call1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str9, i64 0, i64 0), i32 57, i32 %ngrps, i32 12) #5
  %1 = bitcast i8* %call1 to [3 x float]*
  %x_con = getelementptr inbounds %struct.t_pullgrps* %pull, i64 0, i32 10
  store [3 x float]* %1, [3 x float]** %x_con, align 8, !tbaa !3
  %call2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str9, i64 0, i64 0), i32 58, i32 %ngrps, i32 12) #5
  %2 = bitcast i8* %call2 to [3 x float]*
  %xprev = getelementptr inbounds %struct.t_pullgrps* %pull, i64 0, i32 11
  store [3 x float]* %2, [3 x float]** %xprev, align 8, !tbaa !3
  %call3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str9, i64 0, i64 0), i32 59, i32 %ngrps, i32 4) #5
  %3 = bitcast i8* %call3 to float*
  %tmass = getelementptr inbounds %struct.t_pullgrps* %pull, i64 0, i32 5
  store float* %3, float** %tmass, align 8, !tbaa !3
  %call4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str9, i64 0, i64 0), i32 60, i32 %ngrps, i32 8) #5
  %4 = bitcast i8* %call4 to i32**
  %idx = getelementptr inbounds %struct.t_pullgrps* %pull, i64 0, i32 1
  store i32** %4, i32*** %idx, align 8, !tbaa !3
  %call5 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str9, i64 0, i64 0), i32 61, i32 %ngrps, i32 12) #5
  %5 = bitcast i8* %call5 to [3 x float]*
  %f = getelementptr inbounds %struct.t_pullgrps* %pull, i64 0, i32 12
  store [3 x float]* %5, [3 x float]** %f, align 8, !tbaa !3
  %call6 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str9, i64 0, i64 0), i32 62, i32 %ngrps, i32 12) #5
  %6 = bitcast i8* %call6 to [3 x float]*
  %spring = getelementptr inbounds %struct.t_pullgrps* %pull, i64 0, i32 13
  store [3 x float]* %6, [3 x float]** %spring, align 8, !tbaa !3
  %call7 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str9, i64 0, i64 0), i32 63, i32 %ngrps, i32 12) #5
  %7 = bitcast i8* %call7 to [3 x float]*
  %dir = getelementptr inbounds %struct.t_pullgrps* %pull, i64 0, i32 14
  store [3 x float]* %7, [3 x float]** %dir, align 8, !tbaa !3
  %call8 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str9, i64 0, i64 0), i32 64, i32 %ngrps, i32 12) #5
  %8 = bitcast i8* %call8 to [3 x float]*
  %x_unc = getelementptr inbounds %struct.t_pullgrps* %pull, i64 0, i32 9
  store [3 x float]* %8, [3 x float]** %x_unc, align 8, !tbaa !3
  %call9 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str9, i64 0, i64 0), i32 65, i32 %ngrps, i32 12) #5
  %9 = bitcast i8* %call9 to [3 x float]*
  %x_ref = getelementptr inbounds %struct.t_pullgrps* %pull, i64 0, i32 8
  store [3 x float]* %9, [3 x float]** %x_ref, align 8, !tbaa !3
  %call10 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str9, i64 0, i64 0), i32 66, i32 %ngrps, i32 4) #5
  %10 = bitcast i8* %call10 to float*
  %d_ref = getelementptr inbounds %struct.t_pullgrps* %pull, i64 0, i32 15
  store float* %10, float** %d_ref, align 8, !tbaa !3
  %call11 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str9, i64 0, i64 0), i32 67, i32 %ngrps, i32 8) #5
  %11 = bitcast i8* %call11 to [3 x float]**
  %x0 = getelementptr inbounds %struct.t_pullgrps* %pull, i64 0, i32 6
  store [3 x float]** %11, [3 x float]*** %x0, align 8, !tbaa !3
  %call12 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str9, i64 0, i64 0), i32 68, i32 %ngrps, i32 8) #5
  %12 = bitcast i8* %call12 to [3 x float]**
  %xp = getelementptr inbounds %struct.t_pullgrps* %pull, i64 0, i32 7
  store [3 x float]** %12, [3 x float]*** %xp, align 8, !tbaa !3
  %call13 = tail call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str9, i64 0, i64 0), i32 69, i32 %ngrps, i32 8) #5
  %13 = bitcast i8* %call13 to [3 x float]**
  %comhist = getelementptr inbounds %struct.t_pullgrps* %pull, i64 0, i32 17
  store [3 x float]** %13, [3 x float]*** %comhist, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @get_named_indexgroup(%struct._IO_FILE* nocapture %log, i32** nocapture %target, i32* nocapture %isize, i8* %name, i32** nocapture %index, i32* nocapture %ngx, i8** nocapture %grpnames, i32 %ngrps) #0 {
entry:
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str19, i64 0, i64 0), i8* %name) #5
  %cmp49 = icmp sgt i32 %ngrps, 0
  br i1 %cmp49, label %for.body, label %for.end24.thread

for.end24.thread:                                 ; preds = %entry
  store i32* null, i32** %target, align 8, !tbaa !3
  br label %if.then26

for.body:                                         ; preds = %entry, %for.inc22
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.inc22 ], [ 0, %entry ]
  %tmp.052 = phi i32* [ %tmp.1, %for.inc22 ], [ null, %entry ]
  %bFound.051 = phi i32 [ %bFound.1, %for.inc22 ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8** %grpnames, i64 %indvars.iv56
  %0 = load i8** %arrayidx, align 8, !tbaa !3
  %call1 = tail call i32 @strcmp(i8* %name, i8* %0) #7
  %tobool = icmp eq i32 %call1, 0
  br i1 %tobool, label %if.then, label %for.inc22

if.then:                                          ; preds = %for.body
  %arrayidx3 = getelementptr inbounds i32* %ngx, i64 %indvars.iv56
  %1 = load i32* %arrayidx3, align 4, !tbaa !0
  %call4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str9, i64 0, i64 0), i32 138, i32 %1, i32 4) #5
  %2 = bitcast i8* %call4 to i32*
  %3 = load i32* %arrayidx3, align 4, !tbaa !0
  %cmp847 = icmp sgt i32 %3, 0
  br i1 %cmp847, label %for.body9.lr.ph, label %for.end

for.body9.lr.ph:                                  ; preds = %if.then
  %arrayidx12 = getelementptr inbounds i32** %index, i64 %indvars.iv56
  %4 = load i32** %arrayidx12, align 8, !tbaa !3
  br label %for.body9

for.body9:                                        ; preds = %for.body9.lr.ph, %for.body9
  %indvars.iv = phi i64 [ 0, %for.body9.lr.ph ], [ %indvars.iv.next, %for.body9 ]
  %arrayidx13 = getelementptr inbounds i32* %4, i64 %indvars.iv
  %5 = load i32* %arrayidx13, align 4, !tbaa !0
  %arrayidx15 = getelementptr inbounds i32* %2, i64 %indvars.iv
  store i32 %5, i32* %arrayidx15, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %6 = load i32* %arrayidx3, align 4, !tbaa !0
  %7 = trunc i64 %indvars.iv.next to i32
  %cmp8 = icmp slt i32 %7, %6
  br i1 %cmp8, label %for.body9, label %for.end

for.end:                                          ; preds = %for.body9, %if.then
  %.lcssa = phi i32 [ %3, %if.then ], [ %6, %for.body9 ]
  store i32 %.lcssa, i32* %isize, align 4, !tbaa !0
  %8 = load i32* %arrayidx3, align 4, !tbaa !0
  %9 = load i32* %2, align 4, !tbaa !0
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([40 x i8]* @.str21, i64 0, i64 0), i8* %name, i32 %8, i32 %9) #5
  br label %for.inc22

for.inc22:                                        ; preds = %for.body, %for.end
  %bFound.1 = phi i32 [ %bFound.051, %for.body ], [ 1, %for.end ]
  %tmp.1 = phi i32* [ %tmp.052, %for.body ], [ %2, %for.end ]
  %indvars.iv.next57 = add i64 %indvars.iv56, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next57 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %ngrps
  br i1 %exitcond, label %for.end24, label %for.body

for.end24:                                        ; preds = %for.inc22
  store i32* %tmp.1, i32** %target, align 8, !tbaa !3
  %tobool25 = icmp eq i32 %bFound.1, 0
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %for.end24.thread, %for.end24
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str22, i64 0, i64 0), i8* %name) #5
  br label %if.end27

if.end27:                                         ; preds = %for.end24, %if.then26
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare float @calc_com([3 x float]*, i32, i32*, %struct.t_mdatoms*, float*, [3 x float]*) #1

; Function Attrs: optsize
declare void @make_refgrps(%struct.t_pull*, [3 x float]*, %struct.t_mdatoms*) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: optsize
declare %struct.t_block* @init_index(i8*, i8***) #1

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture) #2

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: optsize
declare void @done_block(%struct.t_block*) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize readonly }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
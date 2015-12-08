; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/tables.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_tabledata = type { i32, i32, float, float*, float*, float* }

@bCoulomb = global [13 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0], align 16
@make_tables.fns = internal unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"ctab.xvg\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"dtab.xvg\00", align 1
@.str2 = private unnamed_addr constant [9 x i8] c"rtab.xvg\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"td\00", align 1
@.str4 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/tables.c\00", align 1
@.str5 = private unnamed_addr constant [74 x i8] c"Tables in file %s not long enough for cut-off:\0A\09should be at least %f nm\0A\00", align 1
@.str6 = private unnamed_addr constant [15 x i8] c"fr->coulvdwtab\00", align 1
@.str7 = private unnamed_addr constant [69 x i8] c"Generated table with %d data points for %s.\0ATabscale = %g points/nm\0A\00", align 1
@tabnm = internal unnamed_addr constant [13 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str19, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str23, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str27, i32 0, i32 0)], align 16
@.str8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str9 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str10 = private unnamed_addr constant [27 x i8] c"%15.10e  %15.10e  %15.10e\0A\00", align 1
@.str11 = private unnamed_addr constant [6 x i8] c"td->x\00", align 1
@.str12 = private unnamed_addr constant [6 x i8] c"td->v\00", align 1
@.str13 = private unnamed_addr constant [7 x i8] c"td->v2\00", align 1
@.str14 = private unnamed_addr constant [32 x i8] c"Bad XA input to function splint\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"LJ6\00", align 1
@.str16 = private unnamed_addr constant [5 x i8] c"LJ12\00", align 1
@.str17 = private unnamed_addr constant [9 x i8] c"LJ6Shift\00", align 1
@.str18 = private unnamed_addr constant [10 x i8] c"LJ12Shift\00", align 1
@.str19 = private unnamed_addr constant [6 x i8] c"Shift\00", align 1
@.str20 = private unnamed_addr constant [3 x i8] c"RF\00", align 1
@.str21 = private unnamed_addr constant [5 x i8] c"COUL\00", align 1
@.str22 = private unnamed_addr constant [6 x i8] c"Ewald\00", align 1
@.str23 = private unnamed_addr constant [10 x i8] c"LJ6Switch\00", align 1
@.str24 = private unnamed_addr constant [11 x i8] c"LJ12Switch\00", align 1
@.str25 = private unnamed_addr constant [11 x i8] c"COULSwitch\00", align 1
@.str26 = private unnamed_addr constant [7 x i8] c"EXPMIN\00", align 1
@.str27 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@debug = external global %struct._IO_FILE*
@.str28 = private unnamed_addr constant [9 x i8] c"Further\0A\00", align 1
@.str29 = private unnamed_addr constant [43 x i8] c"Table type %d not implemented yet. (%s,%d)\00", align 1
@.str30 = private unnamed_addr constant [58 x i8] c"Trying to read file %s, but nr columns = %d, should be %d\00", align 1
@.str31 = private unnamed_addr constant [36 x i8] c"All elements in table %s are zero!\0A\00", align 1
@.str32 = private unnamed_addr constant [6 x i8] c"yy[i]\00", align 1
@.str33 = private unnamed_addr constant [3 x i8] c"yy\00", align 1
@.str34 = private unnamed_addr constant [71 x i8] c"Read user tables from %s with %d data points.\0ATabscale = %g points/nm\0A\00", align 1
@.str35 = private unnamed_addr constant [33 x i8] c"Invalid eeltype %d in %s line %d\00", align 1
@.str36 = private unnamed_addr constant [33 x i8] c"Invalid vdwtype %d in %s line %d\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @make_tables(%struct._IO_FILE* %out, %struct.t_forcerec* %fr, i32 %bVerbose, i8* %fn) #0 {
entry:
  %yy.i = alloca float**, align 8
  %ny.i = alloca i32, align 4
  %tabsel = alloca [3 x i32], align 4
  %arraydecay = getelementptr inbounds [3 x i32]* %tabsel, i64 0, i64 0
  %eeltype.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 33
  %0 = load i32* %eeltype.i, align 4, !tbaa !0
  switch i32 %0, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 5, label %sw.bb1.i
    i32 6, label %sw.bb1.i
    i32 8, label %sw.bb4.i
    i32 4, label %sw.bb13.i
    i32 3, label %sw.bb13.i
    i32 1, label %sw.bb21.i
    i32 2, label %sw.bb21.i
    i32 7, label %sw.bb23.i
    i32 9, label %sw.bb25.i
  ]

sw.bb.i:                                          ; preds = %entry
  store i32 6, i32* %arraydecay, align 4, !tbaa !0
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %entry, %entry
  %rcoulomb.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 23
  %1 = load float* %rcoulomb.i, align 4, !tbaa !3
  %rcoulomb_switch.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 22
  %2 = load float* %rcoulomb_switch.i, align 4, !tbaa !3
  %cmp.i = fcmp ogt float %1, %2
  br i1 %cmp.i, label %land.lhs.true.i, label %if.else.i

land.lhs.true.i:                                  ; preds = %sw.bb1.i
  %bcoultab.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 13
  %3 = load i32* %bcoultab.i, align 4, !tbaa !0
  %tobool.i = icmp eq i32 %3, 0
  br i1 %tobool.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.i
  store i32 4, i32* %arraydecay, align 4, !tbaa !0
  br label %sw.epilog.i

if.else.i:                                        ; preds = %land.lhs.true.i, %sw.bb1.i
  store i32 6, i32* %arraydecay, align 4, !tbaa !0
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %entry
  %rcoulomb5.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 23
  %4 = load float* %rcoulomb5.i, align 4, !tbaa !3
  %rcoulomb_switch6.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 22
  %5 = load float* %rcoulomb_switch6.i, align 4, !tbaa !3
  %cmp7.i = fcmp ogt float %4, %5
  br i1 %cmp7.i, label %if.then8.i, label %if.else10.i

if.then8.i:                                       ; preds = %sw.bb4.i
  store i32 4, i32* %arraydecay, align 4, !tbaa !0
  br label %sw.epilog.i

if.else10.i:                                      ; preds = %sw.bb4.i
  store i32 6, i32* %arraydecay, align 4, !tbaa !0
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %entry, %entry
  %bcoultab14.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 13
  %6 = load i32* %bcoultab14.i, align 4, !tbaa !0
  %tobool15.i = icmp eq i32 %6, 0
  br i1 %tobool15.i, label %if.else18.i, label %if.then16.i

if.then16.i:                                      ; preds = %sw.bb13.i
  store i32 7, i32* %arraydecay, align 4, !tbaa !0
  br label %sw.epilog.i

if.else18.i:                                      ; preds = %sw.bb13.i
  store i32 6, i32* %arraydecay, align 4, !tbaa !0
  br label %sw.epilog.i

sw.bb21.i:                                        ; preds = %entry, %entry
  store i32 5, i32* %arraydecay, align 4, !tbaa !0
  br label %sw.epilog.i

sw.bb23.i:                                        ; preds = %entry
  store i32 10, i32* %arraydecay, align 4, !tbaa !0
  br label %sw.epilog.i

sw.bb25.i:                                        ; preds = %entry
  store i32 12, i32* %arraydecay, align 4, !tbaa !0
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([33 x i8]* @.str35, i64 0, i64 0), i32 %0, i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 442) #4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb25.i, %sw.bb23.i, %sw.bb21.i, %if.else18.i, %if.then16.i, %if.else10.i, %if.then8.i, %if.else.i, %if.then.i, %sw.bb.i
  %7 = phi i32 [ undef, %sw.default.i ], [ 12, %sw.bb25.i ], [ 10, %sw.bb23.i ], [ 5, %sw.bb21.i ], [ 6, %if.else18.i ], [ 7, %if.then16.i ], [ 6, %if.else10.i ], [ 4, %if.then8.i ], [ 6, %if.else.i ], [ 4, %if.then.i ], [ 6, %sw.bb.i ]
  %bBHAM.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 64
  %8 = load i32* %bBHAM.i, align 4, !tbaa !0
  %tobool28.i = icmp eq i32 %8, 0
  br i1 %tobool28.i, label %if.else32.i, label %if.then29.i

if.then29.i:                                      ; preds = %sw.epilog.i
  %arrayidx30.i = getelementptr inbounds [3 x i32]* %tabsel, i64 0, i64 1
  store i32 0, i32* %arrayidx30.i, align 4, !tbaa !0
  %arrayidx31.i = getelementptr inbounds [3 x i32]* %tabsel, i64 0, i64 2
  store i32 11, i32* %arrayidx31.i, align 4, !tbaa !0
  br label %set_table_type.exit

if.else32.i:                                      ; preds = %sw.epilog.i
  %vdwtype.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 34
  %9 = load i32* %vdwtype.i, align 4, !tbaa !0
  switch i32 %9, label %sw.default45.i [
    i32 1, label %sw.bb33.i
    i32 2, label %sw.bb36.i
    i32 3, label %sw.bb39.i
    i32 0, label %sw.bb42.i
  ]

sw.bb33.i:                                        ; preds = %if.else32.i
  %arrayidx34.i = getelementptr inbounds [3 x i32]* %tabsel, i64 0, i64 1
  store i32 8, i32* %arrayidx34.i, align 4, !tbaa !0
  %arrayidx35.i = getelementptr inbounds [3 x i32]* %tabsel, i64 0, i64 2
  store i32 9, i32* %arrayidx35.i, align 4, !tbaa !0
  br label %set_table_type.exit

sw.bb36.i:                                        ; preds = %if.else32.i
  %arrayidx37.i = getelementptr inbounds [3 x i32]* %tabsel, i64 0, i64 1
  store i32 2, i32* %arrayidx37.i, align 4, !tbaa !0
  %arrayidx38.i = getelementptr inbounds [3 x i32]* %tabsel, i64 0, i64 2
  store i32 3, i32* %arrayidx38.i, align 4, !tbaa !0
  br label %set_table_type.exit

sw.bb39.i:                                        ; preds = %if.else32.i
  %arrayidx40.i = getelementptr inbounds [3 x i32]* %tabsel, i64 0, i64 1
  store i32 12, i32* %arrayidx40.i, align 4, !tbaa !0
  %arrayidx41.i = getelementptr inbounds [3 x i32]* %tabsel, i64 0, i64 2
  store i32 12, i32* %arrayidx41.i, align 4, !tbaa !0
  br label %set_table_type.exit

sw.bb42.i:                                        ; preds = %if.else32.i
  %arrayidx43.i = getelementptr inbounds [3 x i32]* %tabsel, i64 0, i64 1
  store i32 0, i32* %arrayidx43.i, align 4, !tbaa !0
  %arrayidx44.i = getelementptr inbounds [3 x i32]* %tabsel, i64 0, i64 2
  store i32 1, i32* %arrayidx44.i, align 4, !tbaa !0
  br label %set_table_type.exit

sw.default45.i:                                   ; preds = %if.else32.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([33 x i8]* @.str36, i64 0, i64 0), i32 %9, i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 470) #4
  br label %set_table_type.exit

set_table_type.exit:                              ; preds = %if.then29.i, %sw.bb33.i, %sw.bb36.i, %sw.bb39.i, %sw.bb42.i, %sw.default45.i
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 485, i32 3, i32 40) #4
  %tabscale = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 17
  store float 0.000000e+00, float* %tabscale, align 4, !tbaa !3
  %rtab1 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 15
  %10 = load float* %rtab1, align 4, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %set_table_type.exit
  %11 = phi i32 [ %7, %set_table_type.exit ], [ %.pre, %for.body.for.body_crit_edge ]
  %indvars.iv343 = phi i64 [ 1, %set_table_type.exit ], [ %phitmp, %for.body.for.body_crit_edge ]
  %bReadTab.0328 = phi i32 [ 0, %set_table_type.exit ], [ %.bReadTab.0, %for.body.for.body_crit_edge ]
  %bGenTab.0327 = phi i32 [ 0, %set_table_type.exit ], [ %bGenTab.0., %for.body.for.body_crit_edge ]
  %cmp2 = icmp eq i32 %11, 12
  %bGenTab.0. = select i1 %cmp2, i32 %bGenTab.0327, i32 1
  %.bReadTab.0 = select i1 %cmp2, i32 1, i32 %bReadTab.0328
  %lftr.wideiv345 = trunc i64 %indvars.iv343 to i32
  %exitcond346 = icmp eq i32 %lftr.wideiv345, 3
  br i1 %exitcond346, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  %arrayidx.phi.trans.insert = getelementptr inbounds [3 x i32]* %tabsel, i64 0, i64 %indvars.iv343
  %.pre = load i32* %arrayidx.phi.trans.insert, align 4, !tbaa !0
  %phitmp = add i64 %indvars.iv343, 1
  br label %for.body

for.end:                                          ; preds = %for.body
  %12 = bitcast i8* %call to %struct.t_tabledata*
  %tobool = icmp ne i32 %.bReadTab.0, 0
  br i1 %tobool, label %if.then3, label %if.end23

if.then3:                                         ; preds = %for.end
  %13 = bitcast float*** %yy.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #3
  %14 = bitcast i32* %ny.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #3
  store float** null, float*** %yy.i, align 8, !tbaa !4
  %call.i = call i8* @low_libfn(i8* %fn, i32 1) #4
  %call1.i = call i32 @read_xvg(i8* %call.i, float*** %yy.i, i32* %ny.i) #4
  %15 = load i32* %ny.i, align 4, !tbaa !0
  %cmp.i252 = icmp eq i32 %15, 7
  br i1 %cmp.i252, label %for.cond.preheader.i, label %if.then.i253

if.then.i253:                                     ; preds = %if.then3
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([58 x i8]* @.str30, i64 0, i64 0), i8* %call.i, i32 %15, i32 7) #4
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then.i253, %if.then3
  %cmp2131.i = icmp sgt i32 %call1.i, 0
  br i1 %cmp2131.i, label %for.cond3.preheader.lr.ph.i, label %for.end15.i

for.cond3.preheader.lr.ph.i:                      ; preds = %for.cond.preheader.i
  %16 = load i32* %ny.i, align 4, !tbaa !0
  %cmp4128.i = icmp sgt i32 %16, 1
  %17 = load float*** %yy.i, align 8, !tbaa !4
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %for.inc13.i, %for.cond3.preheader.lr.ph.i
  %indvars.iv148.i = phi i64 [ 0, %for.cond3.preheader.lr.ph.i ], [ %indvars.iv.next149.i, %for.inc13.i ]
  %bCont.0133.i = phi i32 [ 1, %for.cond3.preheader.lr.ph.i ], [ %bCont.1.lcssa.i, %for.inc13.i ]
  %nx0.0132.i = phi i32 [ 0, %for.cond3.preheader.lr.ph.i ], [ %inc14.i, %for.inc13.i ]
  br i1 %cmp4128.i, label %for.body5.i, label %for.inc13.i

for.body5.i:                                      ; preds = %for.cond3.preheader.i, %for.body5.i
  %indvars.iv144.i = phi i64 [ %indvars.iv.next145.i, %for.body5.i ], [ 1, %for.cond3.preheader.i ]
  %bCont.1129.i = phi i32 [ %bCont.2.i, %for.body5.i ], [ %bCont.0133.i, %for.cond3.preheader.i ]
  %arrayidx.i = getelementptr inbounds float** %17, i64 %indvars.iv144.i
  %18 = load float** %arrayidx.i, align 8, !tbaa !4
  %arrayidx7.i = getelementptr inbounds float* %18, i64 %indvars.iv148.i
  %19 = load float* %arrayidx7.i, align 4, !tbaa !3
  %fabsf.i = call float @fabsf(float %19) #5
  %20 = fpext float %fabsf.i to double
  %cmp9.i = fcmp ogt double %20, 1.200000e-38
  %bCont.2.i = select i1 %cmp9.i, i32 0, i32 %bCont.1129.i
  %indvars.iv.next145.i = add i64 %indvars.iv144.i, 1
  %lftr.wideiv341 = trunc i64 %indvars.iv.next145.i to i32
  %exitcond342 = icmp eq i32 %lftr.wideiv341, %16
  br i1 %exitcond342, label %for.inc13.i, label %for.body5.i

for.inc13.i:                                      ; preds = %for.body5.i, %for.cond3.preheader.i
  %bCont.1.lcssa.i = phi i32 [ %bCont.0133.i, %for.cond3.preheader.i ], [ %bCont.2.i, %for.body5.i ]
  %indvars.iv.next149.i = add i64 %indvars.iv148.i, 1
  %inc14.i = add nsw i32 %nx0.0132.i, 1
  %tobool.i254 = icmp ne i32 %bCont.1.lcssa.i, 0
  %21 = trunc i64 %indvars.iv.next149.i to i32
  %cmp2.i = icmp slt i32 %21, %call1.i
  %or.cond.i = and i1 %tobool.i254, %cmp2.i
  br i1 %or.cond.i, label %for.cond3.preheader.i, label %for.end15.i

for.end15.i:                                      ; preds = %for.inc13.i, %for.cond.preheader.i
  %nx0.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc14.i, %for.inc13.i ]
  %cmp16.i = icmp eq i32 %nx0.0.lcssa.i, %call1.i
  br i1 %cmp16.i, label %if.then18.i, label %if.end19.i

if.then18.i:                                      ; preds = %for.end15.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([36 x i8]* @.str31, i64 0, i64 0), i8* %call.i) #4
  br label %if.end19.i

if.end19.i:                                       ; preds = %for.end15.i, %if.then18.i
  %sub.i = add nsw i32 %call1.i, -1
  %conv20.i = sitofp i32 %sub.i to float
  %idxprom22.i = sext i32 %sub.i to i64
  %22 = load float*** %yy.i, align 8, !tbaa !4
  %23 = load float** %22, align 8, !tbaa !4
  %arrayidx24.i = getelementptr inbounds float* %23, i64 %idxprom22.i
  %24 = load float* %arrayidx24.i, align 4, !tbaa !3
  %25 = load float* %23, align 4, !tbaa !3
  %sub27.i = fsub float %24, %25
  %div.i = fdiv float %conv20.i, %sub27.i
  br label %for.body31.i

for.cond69.preheader.i:                           ; preds = %for.inc66.i
  %26 = load i32* %ny.i, align 4, !tbaa !0
  %cmp70123.i = icmp sgt i32 %26, 0
  br i1 %cmp70123.i, label %for.body72.i, label %for.end77.i

for.body31.i:                                     ; preds = %for.inc66.i, %if.end19.i
  %indvars.iv137.i = phi i64 [ 0, %if.end19.i ], [ %indvars.iv.next138.i, %for.inc66.i ]
  %arrayidx33.i = getelementptr inbounds %struct.t_tabledata* %12, i64 %indvars.iv137.i
  call fastcc void @init_table(i32 %call1.i, i32 %nx0.0.lcssa.i, float %div.i, %struct.t_tabledata* %arrayidx33.i, i32 1) #4
  br i1 %cmp2131.i, label %for.body37.lr.ph.i, label %for.inc66.i

for.body37.lr.ph.i:                               ; preds = %for.body31.i
  %27 = load float*** %yy.i, align 8, !tbaa !4
  %28 = load float** %27, align 8, !tbaa !4
  %x.i = getelementptr inbounds %struct.t_tabledata* %12, i64 %indvars.iv137.i, i32 3
  %29 = load float** %x.i, align 8, !tbaa !4
  %30 = shl nsw i64 %indvars.iv137.i, 1
  %31 = or i64 %30, 1
  %arrayidx47.i = getelementptr inbounds float** %27, i64 %31
  %32 = load float** %arrayidx47.i, align 8, !tbaa !4
  %v.i = getelementptr inbounds %struct.t_tabledata* %12, i64 %indvars.iv137.i, i32 4
  %33 = load float** %v.i, align 8, !tbaa !4
  %34 = add nsw i64 %30, 2
  %arrayidx57.i = getelementptr inbounds float** %27, i64 %34
  %35 = load float** %arrayidx57.i, align 8, !tbaa !4
  %v2.i = getelementptr inbounds %struct.t_tabledata* %12, i64 %indvars.iv137.i, i32 5
  %36 = load float** %v2.i, align 8, !tbaa !4
  br label %for.body37.i

for.body37.i:                                     ; preds = %for.body37.i, %for.body37.lr.ph.i
  %indvars.iv135.i = phi i64 [ 0, %for.body37.lr.ph.i ], [ %indvars.iv.next136.i, %for.body37.i ]
  %arrayidx40.i255 = getelementptr inbounds float* %28, i64 %indvars.iv135.i
  %37 = load float* %arrayidx40.i255, align 4, !tbaa !3
  %arrayidx44.i256 = getelementptr inbounds float* %29, i64 %indvars.iv135.i
  store float %37, float* %arrayidx44.i256, align 4, !tbaa !3
  %arrayidx48.i = getelementptr inbounds float* %32, i64 %indvars.iv135.i
  %38 = load float* %arrayidx48.i, align 4, !tbaa !3
  %arrayidx52.i = getelementptr inbounds float* %33, i64 %indvars.iv135.i
  store float %38, float* %arrayidx52.i, align 4, !tbaa !3
  %arrayidx58.i = getelementptr inbounds float* %35, i64 %indvars.iv135.i
  %39 = load float* %arrayidx58.i, align 4, !tbaa !3
  %arrayidx62.i = getelementptr inbounds float* %36, i64 %indvars.iv135.i
  store float %39, float* %arrayidx62.i, align 4, !tbaa !3
  %indvars.iv.next136.i = add i64 %indvars.iv135.i, 1
  %lftr.wideiv337 = trunc i64 %indvars.iv.next136.i to i32
  %exitcond338 = icmp eq i32 %lftr.wideiv337, %call1.i
  br i1 %exitcond338, label %for.inc66.i, label %for.body37.i

for.inc66.i:                                      ; preds = %for.body37.i, %for.body31.i
  %indvars.iv.next138.i = add i64 %indvars.iv137.i, 1
  %lftr.wideiv339 = trunc i64 %indvars.iv.next138.i to i32
  %exitcond340 = icmp eq i32 %lftr.wideiv339, 3
  br i1 %exitcond340, label %for.cond69.preheader.i, label %for.body31.i

for.body72.i:                                     ; preds = %for.body72.i, %for.cond69.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond69.preheader.i ], [ %indvars.iv.next.i, %for.body72.i ]
  %40 = load float*** %yy.i, align 8, !tbaa !4
  %arrayidx74.i = getelementptr inbounds float** %40, i64 %indvars.iv.i
  %41 = load float** %arrayidx74.i, align 8, !tbaa !4
  %42 = bitcast float* %41 to i8*
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 185, i8* %42) #4
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %43 = load i32* %ny.i, align 4, !tbaa !0
  %44 = trunc i64 %indvars.iv.next.i to i32
  %cmp70.i = icmp slt i32 %44, %43
  br i1 %cmp70.i, label %for.body72.i, label %for.end77.i

for.end77.i:                                      ; preds = %for.body72.i, %for.cond69.preheader.i
  %45 = load float*** %yy.i, align 8, !tbaa !4
  %46 = bitcast float** %45 to i8*
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 186, i8* %46) #4
  %tobool78.i = icmp eq %struct._IO_FILE* %out, null
  br i1 %tobool78.i, label %read_tables.exit, label %if.then79.i

if.then79.i:                                      ; preds = %for.end77.i
  %conv80.i = fpext float %div.i to double
  %call81.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([71 x i8]* @.str34, i64 0, i64 0), i8* %call.i, i32 %call1.i, double %conv80.i) #4
  br label %read_tables.exit

read_tables.exit:                                 ; preds = %for.end77.i, %if.then79.i
  call void @llvm.lifetime.end(i64 8, i8* %13) #3
  call void @llvm.lifetime.end(i64 4, i8* %14) #3
  %tabscale5 = getelementptr inbounds i8* %call, i64 8
  %47 = bitcast i8* %tabscale5 to float*
  %48 = load float* %47, align 4, !tbaa !3
  store float %48, float* %tabscale, align 4, !tbaa !3
  %nx8 = bitcast i8* %call to i32*
  %49 = load i32* %nx8, align 4, !tbaa !0
  %sub = add nsw i32 %49, -1
  %idxprom9 = sext i32 %sub to i64
  %x = getelementptr inbounds i8* %call, i64 16
  %50 = bitcast i8* %x to float**
  %51 = load float** %50, align 8, !tbaa !4
  %arrayidx11 = getelementptr inbounds float* %51, i64 %idxprom9
  %52 = load float* %arrayidx11, align 4, !tbaa !3
  store float %52, float* %rtab1, align 4, !tbaa !3
  %nx014 = getelementptr inbounds i8* %call, i64 4
  %53 = bitcast i8* %nx014 to i32*
  %54 = load i32* %53, align 4, !tbaa !0
  %mul = fmul float %52, %48
  %conv = fptosi float %mul to i32
  %ntab = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 16
  store i32 %conv, i32* %ntab, align 4, !tbaa !0
  %cmp18 = fcmp olt float %52, %10
  br i1 %cmp18, label %if.then20, label %if.end23

if.then20:                                        ; preds = %read_tables.exit
  %conv21 = fpext float %10 to double
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([74 x i8]* @.str5, i64 0, i64 0), i8* %fn, double %conv21) #4
  br label %if.end23

if.end23:                                         ; preds = %read_tables.exit, %if.then20, %for.end
  %nx.0 = phi i32 [ %conv, %if.then20 ], [ %conv, %read_tables.exit ], [ 0, %for.end ]
  %nx0.0 = phi i32 [ %54, %if.then20 ], [ %54, %read_tables.exit ], [ 10, %for.end ]
  %tobool24 = icmp eq i32 %bGenTab.0., 0
  %brmerge = or i1 %tobool24, %tobool
  br i1 %brmerge, label %if.end35, label %if.then27

if.then27:                                        ; preds = %if.end23
  store float 5.000000e+02, float* %tabscale, align 4, !tbaa !3
  %55 = load float* %rtab1, align 4, !tbaa !3
  %mul31 = fmul float %55, 5.000000e+02
  %conv32 = fptosi float %mul31 to i32
  %ntab33 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 16
  store i32 %conv32, i32* %ntab33, align 4, !tbaa !0
  br label %if.end35

if.end35:                                         ; preds = %if.end23, %if.then27
  %nx.1 = phi i32 [ %conv32, %if.then27 ], [ %nx.0, %if.end23 ]
  %56 = mul i32 %nx.1, 12
  %add37 = add i32 %56, 13
  %call38 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 520, i32 %add37, i32 4) #4
  %57 = bitcast i8* %call38 to float*
  %coulvdwtab = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 20
  store float* %57, float** %coulvdwtab, align 8, !tbaa !4
  %58 = zext i1 %tobool to i32
  %lnot.ext = xor i32 %58, 1
  %ewaldcoeff.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 57
  %rvdw_switch.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 25
  %rvdw.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 26
  %k_rf.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 9
  %c_rf.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 10
  %tobool62 = icmp eq %struct._IO_FILE* %out, null
  %rcoulomb_switch.i261 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 22
  %rcoulomb.i262 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 23
  %tobool92 = icmp eq i32 %bVerbose, 0
  %sub148 = add nsw i32 %nx.1, -3
  %sub207.i = add nsw i32 %nx.1, -4
  %cmp208.i = icmp sgt i32 %sub207.i, 1
  %tabscale_exp = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 28
  br label %for.body42

for.body42:                                       ; preds = %done_tabledata.exit.for.body42_crit_edge, %if.end35
  %59 = phi i32 [ %7, %if.end35 ], [ %.pre347, %done_tabledata.exit.for.body42_crit_edge ]
  %indvars.iv332 = phi i64 [ 0, %if.end35 ], [ %indvars.iv.next333, %done_tabledata.exit.for.body42_crit_edge ]
  switch i32 %59, label %cond.end [
    i32 12, label %for.body42.if.end77_crit_edge
    i32 11, label %cond.true
  ]

for.body42.if.end77_crit_edge:                    ; preds = %for.body42
  %arrayidx79.pre = getelementptr inbounds %struct.t_tabledata* %12, i64 %indvars.iv332
  %nx80.pre = getelementptr inbounds %struct.t_tabledata* %arrayidx79.pre, i64 0, i32 0
  br label %if.end77

cond.true:                                        ; preds = %for.body42
  br label %cond.end

cond.end:                                         ; preds = %for.body42, %cond.true
  %cond.in = phi float* [ %tabscale_exp, %cond.true ], [ %tabscale, %for.body42 ]
  %cond = load float* %cond.in, align 4
  %arrayidx56 = getelementptr inbounds %struct.t_tabledata* %12, i64 %indvars.iv332
  call fastcc void @init_table(i32 %nx.1, i32 %nx0.0, float %cond, %struct.t_tabledata* %arrayidx56, i32 %lnot.ext) #6
  %60 = load float* %ewaldcoeff.i, align 4, !tbaa !3
  %61 = and i32 %59, -2
  %62 = icmp eq i32 %61, 8
  %cmp2.i257 = icmp eq i32 %59, 10
  %.cmp2.i = or i1 %62, %cmp2.i257
  %cmp3.i = icmp eq i32 %59, 2
  %63 = icmp eq i32 %61, 2
  %cmp7.i258 = icmp eq i32 %59, 4
  %64 = or i1 %63, %cmp7.i258
  %idxprom.i = sext i32 %59 to i64
  %arrayidx.i259 = getelementptr inbounds [13 x i32]* @bCoulomb, i64 0, i64 %idxprom.i
  %65 = load i32* %arrayidx.i259, align 4, !tbaa !0
  %tobool.i260 = icmp eq i32 %65, 0
  %rvdw.i.rcoulomb.i262 = select i1 %tobool.i260, float* %rvdw.i, float* %rcoulomb.i262
  %rvdw_switch.i.rcoulomb_switch.i261 = select i1 %tobool.i260, float* %rvdw_switch.i, float* %rcoulomb_switch.i261
  %r1.0.i = load float* %rvdw_switch.i.rcoulomb_switch.i261, align 4
  %rc.0.i = load float* %rvdw.i.rcoulomb.i262, align 4
  br i1 %.cmp2.i, label %if.then11.i, label %if.end17.i

if.then11.i:                                      ; preds = %cond.end
  %sub.i265 = fsub float %rc.0.i, %r1.0.i
  %mul.i = fmul float %sub.i265, %sub.i265
  %mul14.i = fmul float %sub.i265, %mul.i
  %conv15.i = fdiv float 1.000000e+00, %mul14.i
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then11.i, %cond.end
  %ksw.0.i = phi float [ %conv15.i, %if.then11.i ], [ 0.000000e+00, %cond.end ]
  br i1 %64, label %if.then19.i, label %if.end110.i

if.then19.i:                                      ; preds = %if.end17.i
  br i1 %cmp7.i258, label %if.end29.i, label %if.else23.i

if.else23.i:                                      ; preds = %if.then19.i
  %..i = select i1 %cmp3.i, i32 6, i32 12
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else23.i, %if.then19.i
  %p.0.i = phi i32 [ 1, %if.then19.i ], [ %..i, %if.else23.i ]
  %conv30.i = sitofp i32 %p.0.i to float
  %add.i = add nsw i32 %p.0.i, 1
  %conv31.i = sitofp i32 %add.i to float
  %mul32.i = fmul float %r1.0.i, %conv31.i
  %add33.i = add nsw i32 %p.0.i, 4
  %conv34.i = sitofp i32 %add33.i to float
  %mul35.i = fmul float %rc.0.i, %conv34.i
  %sub36.i = fsub float %mul32.i, %mul35.i
  %mul37.i = fmul float %conv30.i, %sub36.i
  %conv38.i = fpext float %mul37.i to double
  %conv39.i = fpext float %rc.0.i to double
  %add40.i = add nsw i32 %p.0.i, 2
  %conv41.i = sitofp i32 %add40.i to double
  %call.i266 = call double @pow(double %conv39.i, double %conv41.i) #4
  %sub42.i = fsub float %rc.0.i, %r1.0.i
  %mul44.i = fmul float %sub42.i, %sub42.i
  %conv45.i = fpext float %mul44.i to double
  %mul46.i = fmul double %conv45.i, %call.i266
  %div47.i = fdiv double %conv38.i, %mul46.i
  %conv48.i = fptrunc double %div47.i to float
  %sub49.i = sub nsw i32 0, %p.0.i
  %conv50.i = sitofp i32 %sub49.i to float
  %add54.i = add nsw i32 %p.0.i, 3
  %conv55.i = sitofp i32 %add54.i to float
  %mul56.i = fmul float %rc.0.i, %conv55.i
  %sub57.i = fsub float %mul32.i, %mul56.i
  %mul58.i = fmul float %conv50.i, %sub57.i
  %conv59.i = fpext float %mul58.i to double
  %call63.i = call double @pow(double %conv39.i, double %conv41.i) #4
  %mul68.i = fmul float %sub42.i, %mul44.i
  %conv69.i = fpext float %mul68.i to double
  %mul70.i = fmul double %conv69.i, %call63.i
  %div71.i = fdiv double %conv59.i, %mul70.i
  %conv72.i = fptrunc double %div71.i to float
  %conv74.i = sitofp i32 %p.0.i to double
  %call75.i = call double @pow(double %conv39.i, double %conv74.i) #4
  %div76.i = fdiv double 1.000000e+00, %call75.i
  %conv77.i = fpext float %conv48.i to double
  %div78.i = fdiv double %conv77.i, 3.000000e+00
  %conv80.i267 = fpext float %sub42.i to double
  %call81.i268 = call double @pow(double %conv80.i267, double 3.000000e+00) #4
  %mul82.i = fmul double %div78.i, %call81.i268
  %sub83.i = fsub double %div76.i, %mul82.i
  %conv84.i = fpext float %conv72.i to double
  %div85.i = fmul double %conv84.i, 2.500000e-01
  %mul92.i = fmul float %sub42.i, %mul68.i
  %conv93.i = fpext float %mul92.i to double
  %mul94.i = fmul double %conv93.i, %div85.i
  %sub95.i = fsub double %sub83.i, %mul94.i
  %conv96.i = fptrunc double %sub95.i to float
  br i1 %cmp3.i, label %if.then99.i, label %if.end103.i

if.then99.i:                                      ; preds = %if.end29.i
  %sub100.i = fsub float -0.000000e+00, %conv48.i
  %sub101.i = fsub float -0.000000e+00, %conv72.i
  %sub102.i = fsub float -0.000000e+00, %conv96.i
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.then99.i, %if.end29.i
  %A.0.i = phi float [ %sub100.i, %if.then99.i ], [ %conv48.i, %if.end29.i ]
  %B.0.i = phi float [ %sub101.i, %if.then99.i ], [ %conv72.i, %if.end29.i ]
  %C.0.i = phi float [ %sub102.i, %if.then99.i ], [ %conv96.i, %if.end29.i ]
  %conv106.i = fdiv float %A.0.i, 3.000000e+00
  %conv109.i = fmul float %B.0.i, 2.500000e-01
  br label %if.end110.i

if.end110.i:                                      ; preds = %if.end103.i, %if.end17.i
  %A.1.i = phi float [ %A.0.i, %if.end103.i ], [ 0.000000e+00, %if.end17.i ]
  %B.1.i = phi float [ %B.0.i, %if.end103.i ], [ 0.000000e+00, %if.end17.i ]
  %C.1.i = phi float [ %C.0.i, %if.end103.i ], [ 0.000000e+00, %if.end17.i ]
  %A_3.0.i = phi float [ %conv106.i, %if.end103.i ], [ 0.000000e+00, %if.end17.i ]
  %B_4.0.i = phi float [ %conv109.i, %if.end103.i ], [ 0.000000e+00, %if.end17.i ]
  %66 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %tobool111.i = icmp eq %struct._IO_FILE* %66, null
  br i1 %tobool111.i, label %if.end115.i, label %if.then112.i

if.then112.i:                                     ; preds = %if.end110.i
  %67 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str28, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %66) #3
  %68 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %call114.i = call i32 @fflush(%struct._IO_FILE* %68) #4
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.then112.i, %if.end110.i
  %nx0.i = getelementptr inbounds %struct.t_tabledata* %12, i64 %indvars.iv332, i32 1
  %69 = load i32* %nx0.i, align 4, !tbaa !0
  %nx.i = getelementptr inbounds %struct.t_tabledata* %arrayidx56, i64 0, i32 0
  %70 = load i32* %nx.i, align 4, !tbaa !0
  %cmp116718.i = icmp slt i32 %69, %70
  br i1 %cmp116718.i, label %for.body.lr.ph.i, label %fill_table.exit

for.body.lr.ph.i:                                 ; preds = %if.end115.i
  %x.i269 = getelementptr inbounds %struct.t_tabledata* %12, i64 %indvars.iv332, i32 3
  %mul134.i = fmul float %r1.0.i, 3.000000e+00
  %add143.i = fadd float %r1.0.i, %rc.0.i
  %conv428.i = fpext float %A.1.i to double
  %mul429.i = fmul double %conv428.i, -2.000000e+00
  %conv433.i = fpext float %B.1.i to double
  %mul434.i = fmul double %conv433.i, 3.000000e+00
  %.cmp2.not.i.demorgan = or i1 %62, %cmp2.i257
  %.cmp2.not.i = xor i1 %.cmp2.not.i.demorgan, true
  %v.i270 = getelementptr inbounds %struct.t_tabledata* %12, i64 %indvars.iv332, i32 4
  %v2.i271 = getelementptr inbounds %struct.t_tabledata* %12, i64 %indvars.iv332, i32 5
  %mul269.i = fmul float %60, %60
  %conv275.i = fpext float %60 to double
  %mul303.i = fmul float %60, 4.000000e+00
  %mul304.i = fmul float %60, %mul303.i
  %mul305.i = fmul float %60, %mul304.i
  %conv306.i = fpext float %mul305.i to double
  %71 = sext i32 %69 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %if.end468.i, %for.body.lr.ph.i
  %indvars.iv.i272 = phi i64 [ %71, %for.body.lr.ph.i ], [ %indvars.iv.next.i277, %if.end468.i ]
  %72 = load float** %x.i269, align 8, !tbaa !4
  %arrayidx119.i = getelementptr inbounds float* %72, i64 %indvars.iv.i272
  %73 = load float* %arrayidx119.i, align 4, !tbaa !3
  %mul120.i = fmul float %73, %73
  %mul121.i = fmul float %mul120.i, %mul120.i
  %mul122.i = fmul float %mul120.i, %mul121.i
  %conv125.i = fdiv float 1.000000e+00, %mul122.i
  %mul126.i = fmul float %conv125.i, %conv125.i
  br i1 %.cmp2.i, label %if.then128.i, label %if.end149.i

if.then128.i:                                     ; preds = %for.body.i
  %sub129.i = fsub float %rc.0.i, %73
  %mul131.i = fmul float %sub129.i, %sub129.i
  %mul132.i = fmul float %73, 2.000000e+00
  %add133.i = fadd float %rc.0.i, %mul132.i
  %sub135.i = fsub float %add133.i, %mul134.i
  %mul136.i = fmul float %mul131.i, %sub135.i
  %mul137.i = fmul float %ksw.0.i, %mul136.i
  %mul139.i = fmul float %sub129.i, 6.000000e+00
  %sub140.i = fsub float %r1.0.i, %73
  %mul141.i = fmul float %sub140.i, %mul139.i
  %mul142.i = fmul float %ksw.0.i, %mul141.i
  %sub145.i = fsub float %add143.i, %mul132.i
  %mul146.i = fmul float %sub145.i, -6.000000e+00
  %mul147.i = fmul float %ksw.0.i, %mul146.i
  br label %if.end149.i

if.end149.i:                                      ; preds = %if.then128.i, %for.body.i
  %swi.0.i = phi float [ %mul137.i, %if.then128.i ], [ 1.000000e+00, %for.body.i ]
  %swi1.0.i = phi float [ %mul142.i, %if.then128.i ], [ 1.000000e+00, %for.body.i ]
  %swi2.0.i = phi float [ %mul147.i, %if.then128.i ], [ 1.000000e+00, %for.body.i ]
  switch i32 %59, label %sw.default.i274 [
    i32 0, label %sw.bb.i273
    i32 8, label %sw.bb166.i
    i32 2, label %sw.bb166.i
    i32 1, label %sw.bb187.i
    i32 9, label %sw.bb203.i
    i32 3, label %sw.bb203.i
    i32 6, label %sw.bb223.i
    i32 10, label %sw.bb238.i
    i32 4, label %sw.bb238.i
    i32 7, label %sw.bb257.i
    i32 5, label %sw.bb370.i
    i32 11, label %sw.bb399.i
  ]

sw.bb.i273:                                       ; preds = %if.end149.i
  %sub150.i = fsub float -0.000000e+00, %conv125.i
  %conv151.i = fpext float %sub150.i to double
  %mul152.i = fmul double %conv151.i, 6.000000e+00
  %conv153.i = fpext float %73 to double
  %div154.i = fdiv double %mul152.i, %conv153.i
  %conv155.i = fptrunc double %div154.i to float
  %conv156.i = fpext float %conv155.i to double
  %mul157.i = fmul double %conv156.i, 7.000000e+00
  %div159.i = fdiv double %mul157.i, %conv153.i
  %conv160.i = fptrunc double %div159.i to float
  br label %sw.epilog.i276

sw.bb166.i:                                       ; preds = %if.end149.i, %if.end149.i
  %cmp167.i = fcmp olt float %73, %rc.0.i
  br i1 %cmp167.i, label %if.then169.i, label %sw.epilog.i276

if.then169.i:                                     ; preds = %sw.bb166.i
  %sub170.i = fsub float -0.000000e+00, %conv125.i
  %conv171.i = fpext float %sub170.i to double
  %mul172.i = fmul double %conv171.i, 6.000000e+00
  %conv173.i = fpext float %73 to double
  %div174.i = fdiv double %mul172.i, %conv173.i
  %conv175.i = fptrunc double %div174.i to float
  %conv176.i = fpext float %conv175.i to double
  %mul177.i = fmul double %conv176.i, 7.000000e+00
  %div179.i = fdiv double %mul177.i, %conv173.i
  %conv180.i = fptrunc double %div179.i to float
  br label %sw.epilog.i276

sw.bb187.i:                                       ; preds = %if.end149.i
  %conv188.i = fpext float %mul126.i to double
  %mul189.i = fmul double %conv188.i, 1.200000e+01
  %conv190.i = fpext float %73 to double
  %div191.i = fdiv double %mul189.i, %conv190.i
  %conv192.i = fptrunc double %div191.i to float
  %conv193.i = fpext float %conv192.i to double
  %mul194.i = fmul double %conv193.i, 1.300000e+01
  %div196.i = fdiv double %mul194.i, %conv190.i
  %conv197.i = fptrunc double %div196.i to float
  br label %sw.epilog.i276

sw.bb203.i:                                       ; preds = %if.end149.i, %if.end149.i
  %cmp204.i = fcmp olt float %73, %rc.0.i
  br i1 %cmp204.i, label %if.then206.i, label %sw.epilog.i276

if.then206.i:                                     ; preds = %sw.bb203.i
  %conv207.i = fpext float %mul126.i to double
  %mul208.i = fmul double %conv207.i, 1.200000e+01
  %conv209.i = fpext float %73 to double
  %div210.i = fdiv double %mul208.i, %conv209.i
  %conv211.i = fptrunc double %div210.i to float
  %conv212.i = fpext float %conv211.i to double
  %mul213.i = fmul double %conv212.i, 1.300000e+01
  %div215.i = fdiv double %mul213.i, %conv209.i
  %conv216.i = fptrunc double %div215.i to float
  br label %sw.epilog.i276

sw.bb223.i:                                       ; preds = %if.end149.i
  %conv226.i = fdiv float 1.000000e+00, %73
  %conv229.i = fdiv float 1.000000e+00, %mul120.i
  %mul230.i = fmul float %73, %mul120.i
  %conv233.i = fdiv float 2.000000e+00, %mul230.i
  br label %sw.epilog.i276

sw.bb238.i:                                       ; preds = %if.end149.i, %if.end149.i
  %cmp239.i = fcmp olt float %73, %rc.0.i
  br i1 %cmp239.i, label %if.then241.i, label %sw.epilog.i276

if.then241.i:                                     ; preds = %sw.bb238.i
  %conv244.i = fdiv float 1.000000e+00, %73
  %conv247.i = fdiv float 1.000000e+00, %mul120.i
  %mul248.i = fmul float %73, %mul120.i
  %conv251.i = fdiv float 2.000000e+00, %mul248.i
  br label %sw.epilog.i276

sw.bb257.i:                                       ; preds = %if.end149.i
  %mul258.i = fmul float %60, %73
  %conv259.i = fpext float %mul258.i to double
  %call260.i = call double @erfc(double %conv259.i) #4
  %conv261.i = fpext float %73 to double
  %div262.i = fdiv double %call260.i, %conv261.i
  %conv263.i = fptrunc double %div262.i to float
  %call266.i = call double @erfc(double %conv259.i) #4
  %conv267.i = fpext float %mul120.i to double
  %div268.i = fdiv double %call266.i, %conv267.i
  %mul270.i = fmul float %mul269.i, %mul120.i
  %sub271.i = fsub float -0.000000e+00, %mul270.i
  %conv272.i = fpext float %sub271.i to double
  %call273.i = call double @exp(double %conv272.i) #4
  %mul274.i = fmul double %call273.i, 2.000000e+00
  %mul276.i = fmul double %conv275.i, %mul274.i
  %mul278.i = fmul double %mul276.i, 0x3FE20DD760000000
  %div280.i = fdiv double %mul278.i, %conv261.i
  %add281.i = fadd double %div268.i, %div280.i
  %conv282.i = fptrunc double %add281.i to float
  %call285.i = call double @erfc(double %conv259.i) #4
  %mul286.i = fmul double %call285.i, 2.000000e+00
  %mul287.i = fmul float %73, %mul120.i
  %conv288.i = fpext float %mul287.i to double
  %div289.i = fdiv double %mul286.i, %conv288.i
  %call294.i = call double @exp(double %conv272.i) #4
  %mul295.i = fmul double %call294.i, 4.000000e+00
  %mul297.i = fmul double %conv275.i, %mul295.i
  %mul299.i = fmul double %mul297.i, 0x3FE20DD760000000
  %div301.i = fdiv double %mul299.i, %conv267.i
  %add302.i = fadd double %div289.i, %div301.i
  %call311.i = call double @exp(double %conv272.i) #4
  %mul312.i = fmul double %conv306.i, %call311.i
  %mul314.i = fmul double %mul312.i, 0x3FE20DD760000000
  %add315.i = fadd double %add302.i, %mul314.i
  %conv316.i = fptrunc double %add315.i to float
  %call319.i = call double @erfc(double %conv259.i) #4
  %call328.i = call double @exp(double %conv272.i) #4
  %call346.i = call double @exp(double %conv272.i) #4
  %call364.i = call double @exp(double %conv272.i) #4
  br label %sw.epilog.i276

sw.bb370.i:                                       ; preds = %if.end149.i
  %conv371.i = fpext float %73 to double
  %div372.i = fdiv double 1.000000e+00, %conv371.i
  %74 = load float* %k_rf.i, align 4, !tbaa !3
  %mul373.i = fmul float %mul120.i, %74
  %conv374.i = fpext float %mul373.i to double
  %add375.i = fadd double %div372.i, %conv374.i
  %75 = load float* %c_rf.i, align 4, !tbaa !3
  %conv376.i = fpext float %75 to double
  %sub377.i = fsub double %add375.i, %conv376.i
  %conv378.i = fptrunc double %sub377.i to float
  %conv379.i = fpext float %mul120.i to double
  %div380.i = fdiv double 1.000000e+00, %conv379.i
  %mul382.i = fmul float %74, 2.000000e+00
  %mul383.i = fmul float %73, %mul382.i
  %conv384.i = fpext float %mul383.i to double
  %sub385.i = fsub double %div380.i, %conv384.i
  %conv386.i = fptrunc double %sub385.i to float
  %mul387.i = fmul float %73, %mul120.i
  %conv388.i = fpext float %mul387.i to double
  %div389.i = fdiv double 2.000000e+00, %conv388.i
  %conv392.i = fpext float %mul382.i to double
  %add393.i = fadd double %conv392.i, %div389.i
  %conv394.i = fptrunc double %add393.i to float
  br label %sw.epilog.i276

sw.bb399.i:                                       ; preds = %if.end149.i
  %sub400.i = fsub float -0.000000e+00, %73
  %conv401.i = fpext float %sub400.i to double
  %call402.i = call double @exp(double %conv401.i) #4
  %conv403.i = fptrunc double %call402.i to float
  br label %sw.epilog.i276

sw.default.i274:                                  ; preds = %if.end149.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([43 x i8]* @.str29, i64 0, i64 0), i32 %59, i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 365) #4
  br label %sw.epilog.i276

sw.epilog.i276:                                   ; preds = %sw.default.i274, %sw.bb399.i, %sw.bb370.i, %sw.bb257.i, %if.then241.i, %sw.bb238.i, %sw.bb223.i, %if.then206.i, %sw.bb203.i, %sw.bb187.i, %if.then169.i, %sw.bb166.i, %sw.bb.i273
  %Vtab2.0.i = phi float [ 0.000000e+00, %sw.default.i274 ], [ %conv403.i, %sw.bb399.i ], [ %conv394.i, %sw.bb370.i ], [ %conv316.i, %sw.bb257.i ], [ %conv251.i, %if.then241.i ], [ 0.000000e+00, %sw.bb238.i ], [ %conv233.i, %sw.bb223.i ], [ %conv216.i, %if.then206.i ], [ 0.000000e+00, %sw.bb203.i ], [ %conv197.i, %sw.bb187.i ], [ %conv180.i, %if.then169.i ], [ 0.000000e+00, %sw.bb166.i ], [ %conv160.i, %sw.bb.i273 ]
  %Ftab.0.i = phi float [ 0.000000e+00, %sw.default.i274 ], [ %conv403.i, %sw.bb399.i ], [ %conv386.i, %sw.bb370.i ], [ %conv282.i, %sw.bb257.i ], [ %conv247.i, %if.then241.i ], [ 0.000000e+00, %sw.bb238.i ], [ %conv229.i, %sw.bb223.i ], [ %conv211.i, %if.then206.i ], [ 0.000000e+00, %sw.bb203.i ], [ %conv192.i, %sw.bb187.i ], [ %conv175.i, %if.then169.i ], [ 0.000000e+00, %sw.bb166.i ], [ %conv155.i, %sw.bb.i273 ]
  %Vtab.0.i = phi float [ 0.000000e+00, %sw.default.i274 ], [ %conv403.i, %sw.bb399.i ], [ %conv378.i, %sw.bb370.i ], [ %conv263.i, %sw.bb257.i ], [ %conv244.i, %if.then241.i ], [ 0.000000e+00, %sw.bb238.i ], [ %conv226.i, %sw.bb223.i ], [ %mul126.i, %if.then206.i ], [ 0.000000e+00, %sw.bb203.i ], [ %mul126.i, %sw.bb187.i ], [ %sub170.i, %if.then169.i ], [ 0.000000e+00, %sw.bb166.i ], [ %sub150.i, %sw.bb.i273 ]
  %cmp406.i = fcmp olt float %73, %rc.0.i
  %or.cond.i275 = and i1 %64, %cmp406.i
  br i1 %or.cond.i275, label %if.then408.i, label %if.end454.i

if.then408.i:                                     ; preds = %sw.epilog.i276
  %sub409.i = fsub float %Vtab.0.i, %C.1.i
  %cmp410.i = fcmp ogt float %73, %r1.0.i
  br i1 %cmp410.i, label %if.then412.i, label %if.end454.i

if.then412.i:                                     ; preds = %if.then408.i
  %sub413.i = fsub float %73, %r1.0.i
  %mul415.i = fmul float %sub413.i, %sub413.i
  %mul417.i = fmul float %sub413.i, %mul415.i
  %76 = fmul float %A_3.0.i, %mul417.i
  %mul419.i = fsub float -0.000000e+00, %76
  %mul420.i = fmul float %B_4.0.i, %mul415.i
  %mul421.i = fmul float %mul415.i, %mul420.i
  %sub422.i = fsub float %mul419.i, %mul421.i
  %add423.i = fadd float %sub422.i, %sub409.i
  %mul424.i = fmul float %A.1.i, %mul415.i
  %mul425.i = fmul float %B.1.i, %mul417.i
  %add426.i = fadd float %mul424.i, %mul425.i
  %add427.i = fadd float %add426.i, %Ftab.0.i
  %conv431.i = fpext float %sub413.i to double
  %mul432.i = fmul double %mul429.i, %conv431.i
  %conv435.i = fpext float %mul415.i to double
  %mul436.i = fmul double %mul434.i, %conv435.i
  %sub437.i = fsub double %mul432.i, %mul436.i
  %conv438.i = fpext float %Vtab2.0.i to double
  %add439.i = fadd double %sub437.i, %conv438.i
  %conv440.i = fptrunc double %add439.i to float
  br label %if.end454.i

if.end454.i:                                      ; preds = %if.then412.i, %if.then408.i, %sw.epilog.i276
  %Vtab2.1.i = phi float [ %conv440.i, %if.then412.i ], [ %Vtab2.0.i, %if.then408.i ], [ %Vtab2.0.i, %sw.epilog.i276 ]
  %Ftab.1.i = phi float [ %add427.i, %if.then412.i ], [ %Ftab.0.i, %if.then408.i ], [ %Ftab.0.i, %sw.epilog.i276 ]
  %Vtab.1.i = phi float [ %add423.i, %if.then412.i ], [ %sub409.i, %if.then408.i ], [ %Vtab.0.i, %sw.epilog.i276 ]
  %cmp455.not.i = fcmp ule float %73, %r1.0.i
  %brmerge.i = or i1 %cmp455.not.i, %.cmp2.not.i
  br i1 %brmerge.i, label %if.end468.i, label %if.then458.i

if.then458.i:                                     ; preds = %if.end454.i
  %mul460.i = fmul float %swi.0.i, %Vtab.1.i
  %mul461.i = fmul float %swi.0.i, %Vtab2.1.i
  %77 = fmul float %swi1.0.i, %Ftab.1.i
  %add463.i = fsub float %mul461.i, %77
  %add465.i = fsub float %add463.i, %77
  %mul466.i = fmul float %swi2.0.i, %Vtab.1.i
  %add467.i = fadd float %mul466.i, %add465.i
  br label %if.end468.i

if.end468.i:                                      ; preds = %if.end454.i, %if.then458.i
  %Vtab2.2.i = phi float [ %add467.i, %if.then458.i ], [ %Vtab2.1.i, %if.end454.i ]
  %Vtab.2.i = phi float [ %mul460.i, %if.then458.i ], [ %Vtab.1.i, %if.end454.i ]
  %78 = load float** %v.i270, align 8, !tbaa !4
  %arrayidx470.i = getelementptr inbounds float* %78, i64 %indvars.iv.i272
  store float %Vtab.2.i, float* %arrayidx470.i, align 4, !tbaa !3
  %79 = load float** %v2.i271, align 8, !tbaa !4
  %arrayidx472.i = getelementptr inbounds float* %79, i64 %indvars.iv.i272
  store float %Vtab2.2.i, float* %arrayidx472.i, align 4, !tbaa !3
  %indvars.iv.next.i277 = add i64 %indvars.iv.i272, 1
  %80 = load i32* %nx.i, align 4, !tbaa !0
  %81 = trunc i64 %indvars.iv.next.i277 to i32
  %cmp116.i = icmp slt i32 %81, %80
  br i1 %cmp116.i, label %for.body.i, label %fill_table.exit

fill_table.exit:                                  ; preds = %if.end468.i, %if.end115.i
  %82 = phi i32 [ %70, %if.end115.i ], [ %80, %if.end468.i ]
  br i1 %tobool62, label %if.end77, label %if.then63

if.then63:                                        ; preds = %fill_table.exit
  %arrayidx70 = getelementptr inbounds [13 x i8*]* @tabnm, i64 0, i64 %idxprom.i
  %83 = load i8** %arrayidx70, align 8, !tbaa !4
  %tabscale73 = getelementptr inbounds %struct.t_tabledata* %12, i64 %indvars.iv332, i32 2
  %84 = load float* %tabscale73, align 4, !tbaa !3
  %conv74 = fpext float %84 to double
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([69 x i8]* @.str7, i64 0, i64 0), i32 %82, i8* %83, double %conv74) #4
  br label %if.end77

if.end77:                                         ; preds = %fill_table.exit, %for.body42.if.end77_crit_edge, %if.then63
  %nx80.pre-phi = phi i32* [ %nx80.pre, %for.body42.if.end77_crit_edge ], [ %nx.i, %if.then63 ], [ %nx.i, %fill_table.exit ]
  %arrayidx79.pre-phi = phi %struct.t_tabledata* [ %arrayidx79.pre, %for.body42.if.end77_crit_edge ], [ %arrayidx56, %if.then63 ], [ %arrayidx56, %fill_table.exit ]
  %85 = load i32* %nx80.pre-phi, align 4, !tbaa !0
  %86 = shl nsw i64 %indvars.iv332, 2
  %x84 = getelementptr inbounds %struct.t_tabledata* %12, i64 %indvars.iv332, i32 3
  %87 = load float** %x84, align 8, !tbaa !4
  %v = getelementptr inbounds %struct.t_tabledata* %12, i64 %indvars.iv332, i32 4
  %88 = load float** %v, align 8, !tbaa !4
  %v2 = getelementptr inbounds %struct.t_tabledata* %12, i64 %indvars.iv332, i32 5
  %89 = load float** %v2, align 8, !tbaa !4
  %90 = load float** %coulvdwtab, align 8, !tbaa !4
  %sub.i278 = add i32 %85, -1
  %cmp1.i = icmp sgt i32 %sub.i278, 1
  br i1 %cmp1.i, label %for.body.i290, label %copy2table.exit

for.body.i290:                                    ; preds = %if.end77, %for.body.i290
  %indvars.iv.i279 = phi i64 [ %indvars.iv.next.i280, %for.body.i290 ], [ 1, %if.end77 ]
  %indvars.iv.next.i280 = add i64 %indvars.iv.i279, 1
  %arrayidx.i281 = getelementptr inbounds float* %87, i64 %indvars.iv.next.i280
  %91 = load float* %arrayidx.i281, align 4, !tbaa !3
  %arrayidx2.i = getelementptr inbounds float* %87, i64 %indvars.iv.i279
  %92 = load float* %arrayidx2.i, align 4, !tbaa !3
  %sub3.i = fsub float %91, %92
  %arrayidx6.i = getelementptr inbounds float* %88, i64 %indvars.iv.next.i280
  %93 = load float* %arrayidx6.i, align 4, !tbaa !3
  %arrayidx8.i = getelementptr inbounds float* %88, i64 %indvars.iv.i279
  %94 = load float* %arrayidx8.i, align 4, !tbaa !3
  %sub9.i = fsub float %93, %94
  %conv.i = fpext float %sub9.i to double
  %mul.i282 = fmul float %sub3.i, %sub3.i
  %conv10.i = fpext float %mul.i282 to double
  %div.i283 = fdiv double %conv10.i, 6.000000e+00
  %arrayidx12.i = getelementptr inbounds float* %89, i64 %indvars.iv.i279
  %95 = load float* %arrayidx12.i, align 4, !tbaa !3
  %mul13.i = fmul float %95, 2.000000e+00
  %arrayidx16.i = getelementptr inbounds float* %89, i64 %indvars.iv.next.i280
  %96 = load float* %arrayidx16.i, align 4, !tbaa !3
  %add17.i = fadd float %mul13.i, %96
  %conv18.i = fpext float %add17.i to double
  %mul19.i = fmul double %div.i283, %conv18.i
  %sub20.i = fsub double %conv.i, %mul19.i
  %conv21.i = fptrunc double %sub20.i to float
  %div24.i = fmul double %conv10.i, 5.000000e-01
  %conv27.i = fpext float %95 to double
  %mul28.i = fmul double %div24.i, %conv27.i
  %conv29.i = fptrunc double %mul28.i to float
  %sub38.i = fsub float %96, %95
  %conv39.i284 = fpext float %sub38.i to double
  %mul40.i = fmul double %div.i283, %conv39.i284
  %conv41.i285 = fptrunc double %mul40.i to float
  %97 = trunc i64 %indvars.iv.i279 to i32
  %mul42.i = mul nsw i32 %97, 12
  %98 = trunc i64 %86 to i32
  %add43.i = add nsw i32 %mul42.i, %98
  %idxprom46.i = sext i32 %add43.i to i64
  %arrayidx47.i286 = getelementptr inbounds float* %90, i64 %idxprom46.i
  store float %94, float* %arrayidx47.i286, align 4, !tbaa !3
  %add48.i317 = or i32 %add43.i, 1
  %idxprom49.i = sext i32 %add48.i317 to i64
  %arrayidx50.i = getelementptr inbounds float* %90, i64 %idxprom49.i
  store float %conv21.i, float* %arrayidx50.i, align 4, !tbaa !3
  %add51.i318 = or i32 %add43.i, 2
  %idxprom52.i = sext i32 %add51.i318 to i64
  %arrayidx53.i = getelementptr inbounds float* %90, i64 %idxprom52.i
  store float %conv29.i, float* %arrayidx53.i, align 4, !tbaa !3
  %add54.i287319 = or i32 %add43.i, 3
  %idxprom55.i = sext i32 %add54.i287319 to i64
  %arrayidx56.i = getelementptr inbounds float* %90, i64 %idxprom55.i
  store float %conv41.i285, float* %arrayidx56.i, align 4, !tbaa !3
  %lftr.wideiv = trunc i64 %indvars.iv.next.i280 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %sub.i278
  br i1 %exitcond, label %copy2table.exit, label %for.body.i290

copy2table.exit:                                  ; preds = %for.body.i290, %if.end77
  %call90 = call i32 @bDebugMode() #4
  %tobool91 = icmp eq i32 %call90, 0
  %or.cond = or i1 %tobool91, %tobool92
  br i1 %or.cond, label %if.end162, label %if.then93

if.then93:                                        ; preds = %copy2table.exit
  %arrayidx95 = getelementptr inbounds [3 x i8*]* @make_tables.fns, i64 0, i64 %indvars.iv332
  %99 = load i8** %arrayidx95, align 8, !tbaa !4
  %call98 = call %struct._IO_FILE* @xvgropen(i8* %99, i8* %99, i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0)) #4
  %nx0101 = getelementptr inbounds %struct.t_tabledata* %12, i64 %indvars.iv332, i32 1
  %100 = load i32* %nx0101, align 4, !tbaa !0
  %i.1321 = add i32 %100, 1
  %101 = load i32* %nx80.pre-phi, align 4, !tbaa !0
  %sub107322 = add nsw i32 %101, -1
  %cmp108323 = icmp slt i32 %i.1321, %sub107322
  br i1 %cmp108323, label %for.cond111.preheader.lr.ph, label %for.end161

for.cond111.preheader.lr.ph:                      ; preds = %if.then93
  %tobool149 = icmp eq %struct._IO_FILE* %call98, null
  %102 = sext i32 %i.1321 to i64
  br label %for.cond111.preheader

for.cond103.loopexit:                             ; preds = %for.inc156
  %i.1 = add nsw i32 %i.1325, 1
  %103 = load i32* %nx80.pre-phi, align 4, !tbaa !0
  %sub107 = add nsw i32 %103, -1
  %cmp108 = icmp slt i32 %i.1, %sub107
  %indvars.iv.next = add i64 %indvars.iv, 1
  %104 = trunc i64 %indvars.iv to i32
  br i1 %cmp108, label %for.cond111.preheader, label %for.end161

for.cond111.preheader:                            ; preds = %for.cond111.preheader.lr.ph, %for.cond103.loopexit
  %indvars.iv = phi i64 [ %102, %for.cond111.preheader.lr.ph ], [ %indvars.iv.next, %for.cond103.loopexit ]
  %i.1325 = phi i32 [ %i.1321, %for.cond111.preheader.lr.ph ], [ %i.1, %for.cond103.loopexit ]
  %i.1.in324 = phi i32 [ %100, %for.cond111.preheader.lr.ph ], [ %104, %for.cond103.loopexit ]
  %add123 = add nsw i32 %i.1.in324, 2
  %idxprom124 = sext i32 %add123 to i64
  br label %for.body114

for.body114:                                      ; preds = %for.inc156, %for.cond111.preheader
  %j.0320 = phi i32 [ 0, %for.cond111.preheader ], [ %inc157, %for.inc156 ]
  %105 = load float** %x84, align 8, !tbaa !4
  %arrayidx119 = getelementptr inbounds float* %105, i64 %indvars.iv
  %106 = load float* %arrayidx119, align 4, !tbaa !3
  %conv120 = fpext float %106 to double
  %conv121 = sitofp i32 %j.0320 to double
  %mul122 = fmul double %conv121, 2.500000e-01
  %arrayidx128 = getelementptr inbounds float* %105, i64 %idxprom124
  %107 = load float* %arrayidx128, align 4, !tbaa !3
  %sub134 = fsub float %107, %106
  %conv135 = fpext float %sub134 to double
  %mul136 = fmul double %mul122, %conv135
  %add137 = fadd double %conv120, %mul136
  %conv138 = fptrunc double %add137 to float
  %108 = load float** %v, align 8, !tbaa !4
  %109 = load float** %v2, align 8, !tbaa !4
  br i1 %cmp208.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %for.body114, %while.body.i
  %klo.0210.i = phi i32 [ %klo.0.shr.i, %while.body.i ], [ 1, %for.body114 ]
  %khi.0209.i = phi i32 [ %shr.khi.0.i, %while.body.i ], [ %sub148, %for.body114 ]
  %add.i291 = add nsw i32 %khi.0209.i, %klo.0210.i
  %shr.i = ashr i32 %add.i291, 1
  %idxprom.i292 = sext i32 %shr.i to i64
  %arrayidx.i293 = getelementptr inbounds float* %105, i64 %idxprom.i292
  %110 = load float* %arrayidx.i293, align 4, !tbaa !3
  %cmp1.i294 = fcmp ogt float %110, %conv138
  %shr.khi.0.i = select i1 %cmp1.i294, i32 %shr.i, i32 %khi.0209.i
  %klo.0.shr.i = select i1 %cmp1.i294, i32 %klo.0210.i, i32 %shr.i
  %sub.i295 = sub nsw i32 %shr.khi.0.i, %klo.0.shr.i
  %cmp.i296 = icmp sgt i32 %sub.i295, 1
  br i1 %cmp.i296, label %while.body.i, label %while.cond.while.end_crit_edge.i

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  %phitmp.i = sext i32 %klo.0.shr.i to i64
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %for.body114
  %klo.0.lcssa.i = phi i64 [ %phitmp.i, %while.cond.while.end_crit_edge.i ], [ 1, %for.body114 ]
  %khi.0.lcssa.i = phi i32 [ %shr.khi.0.i, %while.cond.while.end_crit_edge.i ], [ %sub148, %for.body114 ]
  %idxprom2.i = sext i32 %khi.0.lcssa.i to i64
  %arrayidx3.i = getelementptr inbounds float* %105, i64 %idxprom2.i
  %111 = load float* %arrayidx3.i, align 4, !tbaa !3
  %arrayidx5.i = getelementptr inbounds float* %105, i64 %klo.0.lcssa.i
  %112 = load float* %arrayidx5.i, align 4, !tbaa !3
  %sub6.i = fsub float %111, %112
  %fabsf.i297 = call float @fabsf(float %sub6.i) #5
  %113 = fpext float %fabsf.i297 to double
  %cmp7.i298 = fcmp olt double %113, 1.200000e-38
  br i1 %cmp7.i298, label %if.then9.i, label %splint.exit

if.then9.i:                                       ; preds = %while.end.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([32 x i8]* @.str14, i64 0, i64 0)) #4
  %.pre212.i = load float* %arrayidx5.i, align 4, !tbaa !3
  br label %splint.exit

splint.exit:                                      ; preds = %while.end.i, %if.then9.i
  %114 = phi float [ %.pre212.i, %if.then9.i ], [ %112, %while.end.i ]
  %sub16.i = fsub float %conv138, %114
  %div17.i = fdiv float %sub16.i, %sub6.i
  %arrayidx19.i = getelementptr inbounds float* %108, i64 %klo.0.lcssa.i
  %115 = load float* %arrayidx19.i, align 4, !tbaa !3
  %arrayidx21.i = getelementptr inbounds float* %108, i64 %idxprom2.i
  %116 = load float* %arrayidx21.i, align 4, !tbaa !3
  %arrayidx29.i = getelementptr inbounds float* %109, i64 %klo.0.lcssa.i
  %117 = load float* %arrayidx29.i, align 4, !tbaa !3
  %mul31.i = fmul float %div17.i, %div17.i
  %arrayidx35.i303 = getelementptr inbounds float* %109, i64 %idxprom2.i
  %118 = load float* %arrayidx35.i303, align 4, !tbaa !3
  %mul38.i = fmul float %sub6.i, %sub6.i
  %sub48.i = fsub float %116, %115
  %conv74.i307 = fpext float %sub48.i to double
  %conv76.i = fpext float %mul38.i to double
  %div77.i = fdiv double %conv76.i, 6.000000e+00
  %mul80.i = fmul float %117, 2.000000e+00
  %add83.i = fadd float %mul80.i, %118
  %conv84.i308 = fpext float %add83.i to double
  %mul85.i = fmul double %div77.i, %conv84.i308
  %sub86.i = fsub double %conv74.i307, %mul85.i
  %conv87.i = fptrunc double %sub86.i to float
  %div90.i = fmul double %conv76.i, 5.000000e-01
  %conv93.i309 = fpext float %117 to double
  %mul94.i310 = fmul double %div90.i, %conv93.i309
  %conv95.i = fptrunc double %mul94.i310 to float
  %sub103.i = fsub float %118, %117
  %conv104.i = fpext float %sub103.i to double
  %mul105.i = fmul double %div77.i, %conv104.i
  %conv106.i311 = fptrunc double %mul105.i to float
  br i1 %tobool149, label %for.inc156, label %if.then150

if.then150:                                       ; preds = %splint.exit
  %mul118.i = fmul float %div17.i, 2.000000e+00
  %mul57.i = fmul float %div17.i, 3.000000e+00
  %mul119.i = fmul float %mul118.i, %conv95.i
  %mul109.i = fmul float %div17.i, %conv87.i
  %mul58.i306 = fmul float %div17.i, %mul57.i
  %mul123.i = fmul float %mul58.i306, %conv106.i311
  %add120.i = fadd float %mul119.i, %conv87.i
  %mul112.i = fmul float %mul31.i, %conv95.i
  %add110.i = fadd float %115, %mul109.i
  %mul32.i302 = fmul float %div17.i, %mul31.i
  %add124.i = fadd float %mul123.i, %add120.i
  %mul116.i = fmul float %mul32.i302, %conv106.i311
  %add113.i = fadd float %mul112.i, %add110.i
  %div125.i = fdiv float %add124.i, %sub6.i
  %add117.i = fadd float %mul116.i, %add113.i
  %conv151 = fpext float %conv138 to double
  %conv152 = fpext float %add117.i to double
  %conv153 = fpext float %div125.i to double
  %call154 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call98, i8* getelementptr inbounds ([27 x i8]* @.str10, i64 0, i64 0), double %conv151, double %conv152, double %conv153) #4
  br label %for.inc156

for.inc156:                                       ; preds = %splint.exit, %if.then150
  %inc157 = add nsw i32 %j.0320, 1
  %exitcond330 = icmp eq i32 %inc157, 4
  br i1 %exitcond330, label %for.cond103.loopexit, label %for.body114

for.end161:                                       ; preds = %for.cond103.loopexit, %if.then93
  call void @ffclose(%struct._IO_FILE* %call98) #4
  br label %if.end162

if.end162:                                        ; preds = %copy2table.exit, %for.end161
  %tobool.i312 = icmp eq %struct.t_tabledata* %arrayidx79.pre-phi, null
  br i1 %tobool.i312, label %done_tabledata.exit, label %if.end.i316

if.end.i316:                                      ; preds = %if.end162
  %119 = load float** %x84, align 8, !tbaa !4
  %120 = bitcast float* %119 to i8*
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 200, i8* %120) #4
  %121 = load float** %v, align 8, !tbaa !4
  %122 = bitcast float* %121 to i8*
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 201, i8* %122) #4
  %123 = load float** %v2, align 8, !tbaa !4
  %124 = bitcast float* %123 to i8*
  call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 202, i8* %124) #4
  br label %done_tabledata.exit

done_tabledata.exit:                              ; preds = %if.end162, %if.end.i316
  %indvars.iv.next333 = add i64 %indvars.iv332, 1
  %lftr.wideiv335 = trunc i64 %indvars.iv.next333 to i32
  %exitcond336 = icmp eq i32 %lftr.wideiv335, 3
  br i1 %exitcond336, label %for.end167, label %done_tabledata.exit.for.body42_crit_edge

done_tabledata.exit.for.body42_crit_edge:         ; preds = %done_tabledata.exit
  %arrayidx44.phi.trans.insert = getelementptr inbounds [3 x i32]* %tabsel, i64 0, i64 %indvars.iv.next333
  %.pre347 = load i32* %arrayidx44.phi.trans.insert, align 4, !tbaa !0
  br label %for.body42

for.end167:                                       ; preds = %done_tabledata.exit
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 549, i8* %call) #4
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @init_table(i32 %n, i32 %nx0, float %tabscale, %struct.t_tabledata* nocapture %td, i32 %bAlloc) #0 {
entry:
  %nx = getelementptr inbounds %struct.t_tabledata* %td, i64 0, i32 0
  store i32 %n, i32* %nx, align 4, !tbaa !0
  %nx01 = getelementptr inbounds %struct.t_tabledata* %td, i64 0, i32 1
  store i32 %nx0, i32* %nx01, align 4, !tbaa !0
  %tabscale2 = getelementptr inbounds %struct.t_tabledata* %td, i64 0, i32 2
  store float %tabscale, float* %tabscale2, align 4, !tbaa !3
  %tobool = icmp eq i32 %bAlloc, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 145, i32 %n, i32 4) #4
  %0 = bitcast i8* %call to float*
  %x = getelementptr inbounds %struct.t_tabledata* %td, i64 0, i32 3
  store float* %0, float** %x, align 8, !tbaa !4
  %1 = load i32* %nx, align 4, !tbaa !0
  %call5 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 146, i32 %1, i32 4) #4
  %2 = bitcast i8* %call5 to float*
  %v = getelementptr inbounds %struct.t_tabledata* %td, i64 0, i32 4
  store float* %2, float** %v, align 8, !tbaa !4
  %3 = load i32* %nx, align 4, !tbaa !0
  %call7 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 147, i32 %3, i32 4) #4
  %4 = bitcast i8* %call7 to float*
  %v2 = getelementptr inbounds %struct.t_tabledata* %td, i64 0, i32 5
  store float* %4, float** %v2, align 8, !tbaa !4
  %.pre = load i32* %nx01, align 4, !tbaa !0
  %.pre3 = load i32* %nx, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi i32 [ %n, %entry ], [ %.pre3, %if.then ]
  %6 = phi i32 [ %nx0, %entry ], [ %.pre, %if.then ]
  %cmp1 = icmp slt i32 %6, %5
  br i1 %cmp1, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %x10 = getelementptr inbounds %struct.t_tabledata* %td, i64 0, i32 3
  %7 = load float** %x10, align 8, !tbaa !4
  %8 = sext i32 %6 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ %8, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %9 = trunc i64 %indvars.iv to i32
  %conv = sitofp i32 %9 to float
  %div = fdiv float %conv, %tabscale
  %arrayidx = getelementptr inbounds float* %7, i64 %indvars.iv
  store float %div, float* %arrayidx, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %10 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %10, %5
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare i32 @bDebugMode() #1

; Function Attrs: optsize
declare %struct._IO_FILE* @xvgropen(i8*, i8*, i8*, i8*) #1

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #1

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize
declare double @pow(double, double) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize
declare double @erfc(double) #2

; Function Attrs: nounwind optsize
declare double @exp(double) #2

; Function Attrs: optsize
declare i8* @low_libfn(i8*, i32) #1

; Function Attrs: optsize
declare i32 @read_xvg(i8*, float***, i32*) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}

; ModuleID = '../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gg_option = type { i8*, i32, i32*, i32 }

@gg_optind = global i32 1, align 4
@gg_opterr = global i32 1, align 4
@gg_optopt = global i32 63, align 4
@gg_optarg = common global i8* null, align 8
@__getopt_initialized = common global i32 0, align 4
@nextchar = internal unnamed_addr global i8* null, align 8
@last_nonopt = internal unnamed_addr global i32 0, align 4
@first_nonopt = internal unnamed_addr global i32 0, align 4
@ordering = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@stderr = external global %struct._IO_FILE*
@.str1 = private unnamed_addr constant [30 x i8] c"%s: option `%s' is ambiguous\0A\00", align 1
@.str2 = private unnamed_addr constant [45 x i8] c"%s: option `--%s' doesn't allow an argument\0A\00", align 1
@.str3 = private unnamed_addr constant [45 x i8] c"%s: option `%c%s' doesn't allow an argument\0A\00", align 1
@.str4 = private unnamed_addr constant [38 x i8] c"%s: option `%s' requires an argument\0A\00", align 1
@.str5 = private unnamed_addr constant [32 x i8] c"%s: unrecognized option `--%s'\0A\00", align 1
@.str6 = private unnamed_addr constant [32 x i8] c"%s: unrecognized option `%c%s'\0A\00", align 1
@.str7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@posixly_correct = internal unnamed_addr global i8* null, align 8
@.str8 = private unnamed_addr constant [26 x i8] c"%s: illegal option -- %c\0A\00", align 1
@.str9 = private unnamed_addr constant [26 x i8] c"%s: invalid option -- %c\0A\00", align 1
@.str10 = private unnamed_addr constant [39 x i8] c"%s: option requires an argument -- %c\0A\00", align 1
@.str11 = private unnamed_addr constant [33 x i8] c"%s: option `-W %s' is ambiguous\0A\00", align 1
@.str12 = private unnamed_addr constant [46 x i8] c"%s: option `-W %s' doesn't allow an argument\0A\00", align 1
@.str13 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @getopt_internal(i32 %argc, i8** %argv, i8* %optstring, %struct.gg_option* %longopts, i32* %longind, i32 %long_only) #0 {
entry:
  store i8* null, i8** @gg_optarg, align 8, !tbaa !0
  %0 = load i32* @gg_optind, align 4, !tbaa !3
  %cmp = icmp ne i32 %0, 0
  %1 = load i32* @__getopt_initialized, align 4, !tbaa !3
  %tobool = icmp ne i32 %1, 0
  %or.cond = and i1 %cmp, %tobool
  br i1 %or.cond, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %0, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 1, i32* @gg_optind, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %2 = phi i32 [ 1, %if.then2 ], [ %0, %if.then ]
  store i32 %2, i32* @last_nonopt, align 4, !tbaa !3
  store i32 %2, i32* @first_nonopt, align 4, !tbaa !3
  store i8* null, i8** @nextchar, align 8, !tbaa !0
  %call.i = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8]* @.str13, i64 0, i64 0)) #3
  store i8* %call.i, i8** @posixly_correct, align 8, !tbaa !0
  %3 = load i8* %optstring, align 1, !tbaa !1
  switch i8 %3, label %if.else8.i [
    i8 45, label %if.then.i
    i8 43, label %if.then6.i
  ]

if.then.i:                                        ; preds = %if.end
  store i32 2, i32* @ordering, align 4, !tbaa !4
  %incdec.ptr.i = getelementptr inbounds i8* %optstring, i64 1
  br label %if.end3.thread

if.then6.i:                                       ; preds = %if.end
  store i32 0, i32* @ordering, align 4, !tbaa !4
  %incdec.ptr7.i = getelementptr inbounds i8* %optstring, i64 1
  br label %if.end3.thread

if.else8.i:                                       ; preds = %if.end
  %cmp9.i = icmp eq i8* %call.i, null
  br i1 %cmp9.i, label %if.else12.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.else8.i
  store i32 0, i32* @ordering, align 4, !tbaa !4
  br label %if.end3.thread

if.else12.i:                                      ; preds = %if.else8.i
  store i32 1, i32* @ordering, align 4, !tbaa !4
  br label %if.end3.thread

if.end3.thread:                                   ; preds = %if.else12.i, %if.then11.i, %if.then6.i, %if.then.i
  %optstring.addr.0.i = phi i8* [ %incdec.ptr.i, %if.then.i ], [ %incdec.ptr7.i, %if.then6.i ], [ %optstring, %if.then11.i ], [ %optstring, %if.else12.i ]
  store i32 1, i32* @__getopt_initialized, align 4, !tbaa !3
  br label %if.then8

if.end3:                                          ; preds = %entry
  %.pre728 = load i8** @nextchar, align 8, !tbaa !0
  %cmp4 = icmp eq i8* %.pre728, null
  br i1 %cmp4, label %if.then8, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.end3
  %4 = load i8* %.pre728, align 1, !tbaa !1
  %cmp6 = icmp eq i8 %4, 0
  br i1 %cmp6, label %if.then8, label %if.end108

if.then8:                                         ; preds = %lor.lhs.false5, %if.end3, %if.end3.thread
  %optstring.addr.0732 = phi i8* [ %optstring.addr.0.i, %if.end3.thread ], [ %optstring, %if.end3 ], [ %optstring, %lor.lhs.false5 ]
  %5 = phi i32 [ %2, %if.end3.thread ], [ %0, %if.end3 ], [ %0, %lor.lhs.false5 ]
  %6 = load i32* @last_nonopt, align 4, !tbaa !3
  %cmp9 = icmp sgt i32 %6, %5
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then8
  store i32 %5, i32* @last_nonopt, align 4, !tbaa !3
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.then11
  %7 = phi i32 [ %5, %if.then11 ], [ %6, %if.then8 ]
  %8 = load i32* @first_nonopt, align 4, !tbaa !3
  %cmp13 = icmp sgt i32 %8, %5
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  store i32 %5, i32* @first_nonopt, align 4, !tbaa !3
  br label %if.end16

if.end16:                                         ; preds = %if.end12, %if.then15
  %9 = phi i32 [ %5, %if.then15 ], [ %8, %if.end12 ]
  %10 = load i32* @ordering, align 4, !tbaa !4
  %cmp17 = icmp eq i32 %10, 1
  br i1 %cmp17, label %if.then19, label %if.end42

if.then19:                                        ; preds = %if.end16
  %cmp20 = icmp eq i32 %9, %7
  %cmp22 = icmp eq i32 %7, %5
  %or.cond670 = or i1 %cmp20, %cmp22
  br i1 %or.cond670, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.then19
  tail call fastcc void @exchange(i8** %argv) #4
  %.pre = load i32* @gg_optind, align 4, !tbaa !3
  br label %while.cond.preheader

if.else:                                          ; preds = %if.then19
  br i1 %cmp22, label %while.cond.preheader, label %if.then27

if.then27:                                        ; preds = %if.else
  store i32 %5, i32* @first_nonopt, align 4, !tbaa !3
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then27, %if.then24, %if.else
  %11 = phi i32 [ %5, %if.then27 ], [ %.pre, %if.then24 ], [ %5, %if.else ]
  %cmp30716 = icmp slt i32 %11, %argc
  br i1 %cmp30716, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond.preheader, %while.body
  %12 = phi i32 [ %inc, %while.body ], [ %11, %while.cond.preheader ]
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i8** %argv, i64 %idxprom
  %13 = load i8** %arrayidx, align 8, !tbaa !0
  %14 = load i8* %13, align 1, !tbaa !1
  %cmp34 = icmp eq i8 %14, 45
  br i1 %cmp34, label %land.end, label %while.body

land.end:                                         ; preds = %land.rhs
  %arrayidx38 = getelementptr inbounds i8* %13, i64 1
  %15 = load i8* %arrayidx38, align 1, !tbaa !1
  %cmp40 = icmp eq i8 %15, 0
  br i1 %cmp40, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs, %land.end
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* @gg_optind, align 4, !tbaa !3
  %cmp30 = icmp slt i32 %inc, %argc
  br i1 %cmp30, label %land.rhs, label %while.end

while.end:                                        ; preds = %land.end, %while.cond.preheader, %while.body
  %16 = phi i32 [ %11, %while.cond.preheader ], [ %inc, %while.body ], [ %12, %land.end ]
  store i32 %16, i32* @last_nonopt, align 4, !tbaa !3
  br label %if.end42

if.end42:                                         ; preds = %while.end, %if.end16
  %17 = phi i32 [ %16, %while.end ], [ %7, %if.end16 ]
  %18 = phi i32 [ %16, %while.end ], [ %5, %if.end16 ]
  %cmp43 = icmp eq i32 %18, %argc
  br i1 %cmp43, label %if.then67, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %if.end42
  %idxprom46 = sext i32 %18 to i64
  %arrayidx47 = getelementptr inbounds i8** %argv, i64 %idxprom46
  %19 = load i8** %arrayidx47, align 8, !tbaa !0
  %call48 = tail call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0)) #5
  %tobool49 = icmp eq i32 %call48, 0
  br i1 %tobool49, label %if.then50, label %if.end64

if.then50:                                        ; preds = %land.lhs.true45
  %inc51 = add nsw i32 %18, 1
  store i32 %inc51, i32* @gg_optind, align 4, !tbaa !3
  %20 = load i32* @first_nonopt, align 4, !tbaa !3
  %cmp52 = icmp eq i32 %20, %17
  %cmp55 = icmp eq i32 %17, %inc51
  %or.cond671 = or i1 %cmp52, %cmp55
  br i1 %or.cond671, label %if.else58, label %if.then57

if.then57:                                        ; preds = %if.then50
  tail call fastcc void @exchange(i8** %argv) #4
  br label %if.end63

if.else58:                                        ; preds = %if.then50
  br i1 %cmp52, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.else58
  store i32 %inc51, i32* @first_nonopt, align 4, !tbaa !3
  br label %if.end63

if.end63:                                         ; preds = %if.else58, %if.then61, %if.then57
  store i32 %argc, i32* @last_nonopt, align 4, !tbaa !3
  store i32 %argc, i32* @gg_optind, align 4, !tbaa !3
  br label %if.then67

if.end64:                                         ; preds = %land.lhs.true45
  %cmp65 = icmp eq i32 %18, %argc
  br i1 %cmp65, label %if.then67, label %if.end72

if.then67:                                        ; preds = %if.end63, %if.end42, %if.end64
  %21 = phi i32 [ %17, %if.end64 ], [ %17, %if.end42 ], [ %argc, %if.end63 ]
  %22 = load i32* @first_nonopt, align 4, !tbaa !3
  %cmp68 = icmp eq i32 %22, %21
  br i1 %cmp68, label %return, label %if.then70

if.then70:                                        ; preds = %if.then67
  store i32 %22, i32* @gg_optind, align 4, !tbaa !3
  br label %return

if.end72:                                         ; preds = %if.end64
  %idxprom73 = sext i32 %18 to i64
  %arrayidx74 = getelementptr inbounds i8** %argv, i64 %idxprom73
  %23 = load i8** %arrayidx74, align 8, !tbaa !0
  %24 = load i8* %23, align 1, !tbaa !1
  %cmp77 = icmp eq i8 %24, 45
  br i1 %cmp77, label %lor.lhs.false79, label %if.then86

lor.lhs.false79:                                  ; preds = %if.end72
  %arrayidx82 = getelementptr inbounds i8* %23, i64 1
  %25 = load i8* %arrayidx82, align 1, !tbaa !1
  %cmp84 = icmp eq i8 %25, 0
  br i1 %cmp84, label %if.then86, label %if.end94

if.then86:                                        ; preds = %lor.lhs.false79, %if.end72
  %26 = load i32* @ordering, align 4, !tbaa !4
  %cmp87 = icmp eq i32 %26, 0
  br i1 %cmp87, label %return, label %if.end90

if.end90:                                         ; preds = %if.then86
  %inc91 = add nsw i32 %18, 1
  store i32 %inc91, i32* @gg_optind, align 4, !tbaa !3
  store i8* %23, i8** @gg_optarg, align 8, !tbaa !0
  br label %return

if.end94:                                         ; preds = %lor.lhs.false79
  %cmp97 = icmp eq %struct.gg_option* %longopts, null
  br i1 %cmp97, label %land.end106, label %land.rhs99

land.rhs99:                                       ; preds = %if.end94
  %cmp104 = icmp eq i8 %25, 45
  %phitmp = select i1 %cmp104, i64 2, i64 1
  br label %land.end106

land.end106:                                      ; preds = %if.end94, %land.rhs99
  %27 = phi i64 [ 1, %if.end94 ], [ %phitmp, %land.rhs99 ]
  %add.ptr107 = getelementptr inbounds i8* %23, i64 %27
  store i8* %add.ptr107, i8** @nextchar, align 8, !tbaa !0
  br label %if.end108

if.end108:                                        ; preds = %land.end106, %lor.lhs.false5
  %optstring.addr.0731 = phi i8* [ %optstring.addr.0732, %land.end106 ], [ %optstring, %lor.lhs.false5 ]
  %28 = phi i32 [ %18, %land.end106 ], [ %0, %lor.lhs.false5 ]
  %29 = phi i8* [ %add.ptr107, %land.end106 ], [ %.pre728, %lor.lhs.false5 ]
  %cmp109 = icmp eq %struct.gg_option* %longopts, null
  br i1 %cmp109, label %if.end301, label %land.lhs.true111

land.lhs.true111:                                 ; preds = %if.end108
  %idxprom112 = sext i32 %28 to i64
  %arrayidx113 = getelementptr inbounds i8** %argv, i64 %idxprom112
  %30 = load i8** %arrayidx113, align 8, !tbaa !0
  %arrayidx114 = getelementptr inbounds i8* %30, i64 1
  %31 = load i8* %arrayidx114, align 1, !tbaa !1
  %conv115 = sext i8 %31 to i32
  %cmp116 = icmp eq i8 %31, 45
  br i1 %cmp116, label %for.cond, label %lor.lhs.false118

lor.lhs.false118:                                 ; preds = %land.lhs.true111
  %tobool119 = icmp eq i32 %long_only, 0
  br i1 %tobool119, label %if.end301, label %land.lhs.true120

land.lhs.true120:                                 ; preds = %lor.lhs.false118
  %arrayidx123 = getelementptr inbounds i8* %30, i64 2
  %32 = load i8* %arrayidx123, align 1, !tbaa !1
  %tobool125 = icmp eq i8 %32, 0
  br i1 %tobool125, label %lor.lhs.false126, label %for.cond

lor.lhs.false126:                                 ; preds = %land.lhs.true120
  %call131 = tail call i8* @strchr(i8* %optstring.addr.0731, i32 %conv115) #5
  %tobool132 = icmp eq i8* %call131, null
  br i1 %tobool132, label %for.cond, label %if.end301

for.cond:                                         ; preds = %land.lhs.true111, %land.lhs.true120, %lor.lhs.false126, %for.inc
  %nameend.0 = phi i8* [ %incdec.ptr, %for.inc ], [ %29, %lor.lhs.false126 ], [ %29, %land.lhs.true120 ], [ %29, %land.lhs.true111 ]
  %33 = load i8* %nameend.0, align 1, !tbaa !1
  switch i8 %33, label %for.inc [
    i8 0, label %for.cond142.preheader
    i8 61, label %for.cond142.preheader
  ]

for.cond142.preheader:                            ; preds = %for.cond, %for.cond
  %name706 = getelementptr inbounds %struct.gg_option* %longopts, i64 0, i32 0
  %34 = load i8** %name706, align 8, !tbaa !0
  %tobool143707 = icmp eq i8* %34, null
  br i1 %tobool143707, label %if.end264, label %for.body144.lr.ph

for.body144.lr.ph:                                ; preds = %for.cond142.preheader
  %sub.ptr.lhs.cast = ptrtoint i8* %nameend.0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv152 = trunc i64 %sub.ptr.sub to i32
  br label %for.body144

for.inc:                                          ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i8* %nameend.0, i64 1
  br label %for.cond

for.body144:                                      ; preds = %for.body144.lr.ph, %for.inc167
  %35 = phi i8* [ %34, %for.body144.lr.ph ], [ %36, %for.inc167 ]
  %option_index.0712 = phi i32 [ 0, %for.body144.lr.ph ], [ %inc169, %for.inc167 ]
  %indfound.0711 = phi i32 [ -1, %for.body144.lr.ph ], [ %indfound.1, %for.inc167 ]
  %ambig.0710 = phi i32 [ 0, %for.body144.lr.ph ], [ %ambig.1, %for.inc167 ]
  %pfound.0709 = phi %struct.gg_option* [ null, %for.body144.lr.ph ], [ %pfound.1, %for.inc167 ]
  %p.0708 = phi %struct.gg_option* [ %longopts, %for.body144.lr.ph ], [ %incdec.ptr168, %for.inc167 ]
  %call146 = tail call i32 @strncmp(i8* %35, i8* %29, i64 %sub.ptr.sub) #5
  %tobool147 = icmp eq i32 %call146, 0
  br i1 %tobool147, label %if.then148, label %for.inc167

if.then148:                                       ; preds = %for.body144
  %call154 = tail call i64 @strlen(i8* %35) #5
  %conv155 = trunc i64 %call154 to i32
  %cmp156 = icmp eq i32 %conv152, %conv155
  br i1 %cmp156, label %if.end185, label %if.else159

if.else159:                                       ; preds = %if.then148
  %cmp160 = icmp eq %struct.gg_option* %pfound.0709, null
  %p.0.pfound.0 = select i1 %cmp160, %struct.gg_option* %p.0708, %struct.gg_option* %pfound.0709
  %ambig.0. = select i1 %cmp160, i32 %ambig.0710, i32 1
  %option_index.0.indfound.0 = select i1 %cmp160, i32 %option_index.0712, i32 %indfound.0711
  br label %for.inc167

for.inc167:                                       ; preds = %if.else159, %for.body144
  %pfound.1 = phi %struct.gg_option* [ %pfound.0709, %for.body144 ], [ %p.0.pfound.0, %if.else159 ]
  %ambig.1 = phi i32 [ %ambig.0710, %for.body144 ], [ %ambig.0., %if.else159 ]
  %indfound.1 = phi i32 [ %indfound.0711, %for.body144 ], [ %option_index.0.indfound.0, %if.else159 ]
  %incdec.ptr168 = getelementptr inbounds %struct.gg_option* %p.0708, i64 1
  %inc169 = add nsw i32 %option_index.0712, 1
  %name = getelementptr inbounds %struct.gg_option* %incdec.ptr168, i64 0, i32 0
  %36 = load i8** %name, align 8, !tbaa !0
  %tobool143 = icmp eq i8* %36, null
  br i1 %tobool143, label %for.end170, label %for.body144

for.end170:                                       ; preds = %for.inc167
  %tobool171 = icmp eq i32 %ambig.1, 0
  br i1 %tobool171, label %if.end185, label %if.then174

if.then174:                                       ; preds = %for.end170
  %37 = load i32* @gg_opterr, align 4, !tbaa !3
  %tobool175 = icmp eq i32 %37, 0
  br i1 %tobool175, label %if.end181, label %if.then176

if.then176:                                       ; preds = %if.then174
  %38 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %39 = load i8** %argv, align 8, !tbaa !0
  %call180 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([30 x i8]* @.str1, i64 0, i64 0), i8* %39, i8* %30) #3
  %.pre725 = load i8** @nextchar, align 8, !tbaa !0
  %.pre726 = load i32* @gg_optind, align 4, !tbaa !3
  br label %if.end181

if.end181:                                        ; preds = %if.then174, %if.then176
  %40 = phi i32 [ %28, %if.then174 ], [ %.pre726, %if.then176 ]
  %41 = phi i8* [ %29, %if.then174 ], [ %.pre725, %if.then176 ]
  %call182 = tail call i64 @strlen(i8* %41) #5
  %add.ptr183 = getelementptr inbounds i8* %41, i64 %call182
  store i8* %add.ptr183, i8** @nextchar, align 8, !tbaa !0
  %inc184 = add nsw i32 %40, 1
  store i32 %inc184, i32* @gg_optind, align 4, !tbaa !3
  store i32 0, i32* @gg_optopt, align 4, !tbaa !3
  br label %return

if.end185:                                        ; preds = %if.then148, %for.end170
  %indfound.2681 = phi i32 [ %indfound.1, %for.end170 ], [ %option_index.0712, %if.then148 ]
  %pfound.2680 = phi %struct.gg_option* [ %pfound.1, %for.end170 ], [ %p.0708, %if.then148 ]
  %cmp186 = icmp eq %struct.gg_option* %pfound.2680, null
  br i1 %cmp186, label %if.end264, label %if.then188

if.then188:                                       ; preds = %if.end185
  %inc189 = add nsw i32 %28, 1
  store i32 %inc189, i32* @gg_optind, align 4, !tbaa !3
  %42 = load i8* %nameend.0, align 1, !tbaa !1
  %tobool190 = icmp eq i8 %42, 0
  %has_arg = getelementptr inbounds %struct.gg_option* %pfound.2680, i64 0, i32 1
  %43 = load i32* %has_arg, align 4, !tbaa !3
  br i1 %tobool190, label %if.else222, label %if.then191

if.then191:                                       ; preds = %if.then188
  %tobool192 = icmp eq i32 %43, 0
  br i1 %tobool192, label %if.else195, label %if.then193

if.then193:                                       ; preds = %if.then191
  %add.ptr194 = getelementptr inbounds i8* %nameend.0, i64 1
  store i8* %add.ptr194, i8** @gg_optarg, align 8, !tbaa !0
  br label %if.end251

if.else195:                                       ; preds = %if.then191
  %44 = load i32* @gg_opterr, align 4, !tbaa !3
  %tobool196 = icmp eq i32 %44, 0
  br i1 %tobool196, label %if.end218, label %if.then197

if.then197:                                       ; preds = %if.else195
  %45 = load i8* %arrayidx114, align 1, !tbaa !1
  %cmp202 = icmp eq i8 %45, 45
  %46 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %47 = load i8** %argv, align 8, !tbaa !0
  br i1 %cmp202, label %if.then204, label %if.else208

if.then204:                                       ; preds = %if.then197
  %name206 = getelementptr inbounds %struct.gg_option* %pfound.2680, i64 0, i32 0
  %48 = load i8** %name206, align 8, !tbaa !0
  %call207 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([45 x i8]* @.str2, i64 0, i64 0), i8* %47, i8* %48) #3
  br label %if.end218

if.else208:                                       ; preds = %if.then197
  %49 = load i8* %30, align 1, !tbaa !1
  %conv214 = sext i8 %49 to i32
  %name215 = getelementptr inbounds %struct.gg_option* %pfound.2680, i64 0, i32 0
  %50 = load i8** %name215, align 8, !tbaa !0
  %call216 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([45 x i8]* @.str3, i64 0, i64 0), i8* %47, i32 %conv214, i8* %50) #3
  br label %if.end218

if.end218:                                        ; preds = %if.else195, %if.then204, %if.else208
  %51 = load i8** @nextchar, align 8, !tbaa !0
  %call219 = tail call i64 @strlen(i8* %51) #5
  %add.ptr220 = getelementptr inbounds i8* %51, i64 %call219
  store i8* %add.ptr220, i8** @nextchar, align 8, !tbaa !0
  %val = getelementptr inbounds %struct.gg_option* %pfound.2680, i64 0, i32 3
  %52 = load i32* %val, align 4, !tbaa !3
  store i32 %52, i32* @gg_optopt, align 4, !tbaa !3
  br label %return

if.else222:                                       ; preds = %if.then188
  %cmp224 = icmp eq i32 %43, 1
  br i1 %cmp224, label %if.then226, label %if.end251

if.then226:                                       ; preds = %if.else222
  %cmp227 = icmp slt i32 %inc189, %argc
  br i1 %cmp227, label %if.then229, label %if.else233

if.then229:                                       ; preds = %if.then226
  %inc230 = add nsw i32 %28, 2
  store i32 %inc230, i32* @gg_optind, align 4, !tbaa !3
  %idxprom231 = sext i32 %inc189 to i64
  %arrayidx232 = getelementptr inbounds i8** %argv, i64 %idxprom231
  %53 = load i8** %arrayidx232, align 8, !tbaa !0
  store i8* %53, i8** @gg_optarg, align 8, !tbaa !0
  br label %if.end251

if.else233:                                       ; preds = %if.then226
  %54 = load i32* @gg_opterr, align 4, !tbaa !3
  %tobool234 = icmp eq i32 %54, 0
  br i1 %tobool234, label %if.end241, label %if.then235

if.then235:                                       ; preds = %if.else233
  %55 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %56 = load i8** %argv, align 8, !tbaa !0
  %call240 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([38 x i8]* @.str4, i64 0, i64 0), i8* %56, i8* %30) #3
  %.pre727 = load i8** @nextchar, align 8, !tbaa !0
  br label %if.end241

if.end241:                                        ; preds = %if.else233, %if.then235
  %57 = phi i8* [ %29, %if.else233 ], [ %.pre727, %if.then235 ]
  %call242 = tail call i64 @strlen(i8* %57) #5
  %add.ptr243 = getelementptr inbounds i8* %57, i64 %call242
  store i8* %add.ptr243, i8** @nextchar, align 8, !tbaa !0
  %val244 = getelementptr inbounds %struct.gg_option* %pfound.2680, i64 0, i32 3
  %58 = load i32* %val244, align 4, !tbaa !3
  store i32 %58, i32* @gg_optopt, align 4, !tbaa !3
  %59 = load i8* %optstring.addr.0731, align 1, !tbaa !1
  %cmp247 = icmp eq i8 %59, 58
  %cond = select i1 %cmp247, i32 58, i32 63
  br label %return

if.end251:                                        ; preds = %if.else222, %if.then229, %if.then193
  %call252 = tail call i64 @strlen(i8* %29) #5
  %add.ptr253 = getelementptr inbounds i8* %29, i64 %call252
  store i8* %add.ptr253, i8** @nextchar, align 8, !tbaa !0
  %cmp254 = icmp eq i32* %longind, null
  br i1 %cmp254, label %if.end257, label %if.then256

if.then256:                                       ; preds = %if.end251
  store i32 %indfound.2681, i32* %longind, align 4, !tbaa !3
  br label %if.end257

if.end257:                                        ; preds = %if.end251, %if.then256
  %flag = getelementptr inbounds %struct.gg_option* %pfound.2680, i64 0, i32 2
  %60 = load i32** %flag, align 8, !tbaa !0
  %tobool258 = icmp eq i32* %60, null
  %val260 = getelementptr inbounds %struct.gg_option* %pfound.2680, i64 0, i32 3
  %61 = load i32* %val260, align 4, !tbaa !3
  br i1 %tobool258, label %return, label %if.then259

if.then259:                                       ; preds = %if.end257
  store i32 %61, i32* %60, align 4, !tbaa !3
  br label %return

if.end264:                                        ; preds = %for.cond142.preheader, %if.end185
  %tobool265 = icmp eq i32 %long_only, 0
  %brmerge = or i1 %tobool265, %cmp116
  %.mux = select i1 %tobool265, i8 %31, i8 45
  br i1 %brmerge, label %if.then278, label %lor.lhs.false273

lor.lhs.false273:                                 ; preds = %if.end264
  %62 = load i8* %29, align 1, !tbaa !1
  %conv274 = sext i8 %62 to i32
  %call275 = tail call i8* @strchr(i8* %optstring.addr.0731, i32 %conv274) #5
  %cmp276 = icmp eq i8* %call275, null
  br i1 %cmp276, label %if.then278, label %if.end301

if.then278:                                       ; preds = %if.end264, %lor.lhs.false273
  %63 = phi i8 [ %.mux, %if.end264 ], [ %31, %lor.lhs.false273 ]
  %64 = load i32* @gg_opterr, align 4, !tbaa !3
  %tobool279 = icmp eq i32 %64, 0
  br i1 %tobool279, label %if.end298, label %if.then280

if.then280:                                       ; preds = %if.then278
  %cmp285 = icmp eq i8 %63, 45
  %65 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %66 = load i8** %argv, align 8, !tbaa !0
  br i1 %cmp285, label %if.then287, label %if.else290

if.then287:                                       ; preds = %if.then280
  %call289 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([32 x i8]* @.str5, i64 0, i64 0), i8* %66, i8* %29) #3
  br label %if.end298

if.else290:                                       ; preds = %if.then280
  %67 = load i8* %30, align 1, !tbaa !1
  %conv295 = sext i8 %67 to i32
  %call296 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([32 x i8]* @.str6, i64 0, i64 0), i8* %66, i32 %conv295, i8* %29) #3
  br label %if.end298

if.end298:                                        ; preds = %if.then278, %if.then287, %if.else290
  store i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8** @nextchar, align 8, !tbaa !0
  %68 = load i32* @gg_optind, align 4, !tbaa !3
  %inc299 = add nsw i32 %68, 1
  store i32 %inc299, i32* @gg_optind, align 4, !tbaa !3
  store i32 0, i32* @gg_optopt, align 4, !tbaa !3
  br label %return

if.end301:                                        ; preds = %lor.lhs.false126, %lor.lhs.false118, %if.end108, %lor.lhs.false273
  %incdec.ptr302 = getelementptr inbounds i8* %29, i64 1
  store i8* %incdec.ptr302, i8** @nextchar, align 8, !tbaa !0
  %69 = load i8* %29, align 1, !tbaa !1
  %conv303 = sext i8 %69 to i32
  %call304 = tail call i8* @strchr(i8* %optstring.addr.0731, i32 %conv303) #5
  %70 = load i8* %incdec.ptr302, align 1, !tbaa !1
  %cmp306 = icmp eq i8 %70, 0
  br i1 %cmp306, label %if.then308, label %if.end310

if.then308:                                       ; preds = %if.end301
  %inc309 = add nsw i32 %28, 1
  store i32 %inc309, i32* @gg_optind, align 4, !tbaa !3
  br label %if.end310

if.end310:                                        ; preds = %if.then308, %if.end301
  %71 = phi i32 [ %inc309, %if.then308 ], [ %28, %if.end301 ]
  %cmp311 = icmp eq i8* %call304, null
  %cmp315 = icmp eq i8 %69, 58
  %or.cond673 = or i1 %cmp311, %cmp315
  br i1 %or.cond673, label %if.then317, label %if.end332

if.then317:                                       ; preds = %if.end310
  %72 = load i32* @gg_opterr, align 4, !tbaa !3
  %tobool318 = icmp eq i32 %72, 0
  br i1 %tobool318, label %if.end330, label %if.then319

if.then319:                                       ; preds = %if.then317
  %73 = load i8** @posixly_correct, align 8, !tbaa !0
  %tobool320 = icmp eq i8* %73, null
  %74 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %75 = load i8** %argv, align 8, !tbaa !0
  br i1 %tobool320, label %if.else325, label %if.then321

if.then321:                                       ; preds = %if.then319
  %call324 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([26 x i8]* @.str8, i64 0, i64 0), i8* %75, i32 %conv303) #3
  br label %if.end330

if.else325:                                       ; preds = %if.then319
  %call328 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([26 x i8]* @.str9, i64 0, i64 0), i8* %75, i32 %conv303) #3
  br label %if.end330

if.end330:                                        ; preds = %if.then317, %if.then321, %if.else325
  store i32 %conv303, i32* @gg_optopt, align 4, !tbaa !3
  br label %return

if.end332:                                        ; preds = %if.end310
  %76 = load i8* %call304, align 1, !tbaa !1
  %cmp335 = icmp eq i8 %76, 87
  %arrayidx338 = getelementptr inbounds i8* %call304, i64 1
  %77 = load i8* %arrayidx338, align 1, !tbaa !1
  %cmp340 = icmp eq i8 %77, 59
  %or.cond740 = and i1 %cmp335, %cmp340
  br i1 %or.cond740, label %if.then342, label %if.end504

if.then342:                                       ; preds = %if.end332
  %78 = load i8* %incdec.ptr302, align 1, !tbaa !1
  %cmp351 = icmp eq i8 %78, 0
  br i1 %cmp351, label %if.else355, label %if.then353

if.then353:                                       ; preds = %if.then342
  store i8* %incdec.ptr302, i8** @gg_optarg, align 8, !tbaa !0
  %inc354 = add nsw i32 %71, 1
  store i32 %inc354, i32* @gg_optind, align 4, !tbaa !3
  br label %if.end379

if.else355:                                       ; preds = %if.then342
  %cmp356 = icmp eq i32 %71, %argc
  br i1 %cmp356, label %if.then358, label %if.else374

if.then358:                                       ; preds = %if.else355
  %79 = load i32* @gg_opterr, align 4, !tbaa !3
  %tobool359 = icmp eq i32 %79, 0
  br i1 %tobool359, label %if.end364, label %if.then360

if.then360:                                       ; preds = %if.then358
  %80 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %81 = load i8** %argv, align 8, !tbaa !0
  %call363 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([39 x i8]* @.str10, i64 0, i64 0), i8* %81, i32 %conv303) #3
  br label %if.end364

if.end364:                                        ; preds = %if.then358, %if.then360
  store i32 %conv303, i32* @gg_optopt, align 4, !tbaa !3
  %82 = load i8* %optstring.addr.0731, align 1, !tbaa !1
  %cmp368 = icmp eq i8 %82, 58
  %. = select i1 %cmp368, i32 58, i32 63
  br label %return

if.else374:                                       ; preds = %if.else355
  %inc375 = add nsw i32 %71, 1
  store i32 %inc375, i32* @gg_optind, align 4, !tbaa !3
  %idxprom376 = sext i32 %71 to i64
  %arrayidx377 = getelementptr inbounds i8** %argv, i64 %idxprom376
  %83 = load i8** %arrayidx377, align 8, !tbaa !0
  store i8* %83, i8** @gg_optarg, align 8, !tbaa !0
  br label %if.end379

if.end379:                                        ; preds = %if.else374, %if.then353
  %84 = phi i32 [ %inc375, %if.else374 ], [ %inc354, %if.then353 ]
  %85 = phi i8* [ %83, %if.else374 ], [ %incdec.ptr302, %if.then353 ]
  store i8* %85, i8** @nextchar, align 8, !tbaa !0
  br label %for.cond380

for.cond380:                                      ; preds = %for.inc390, %if.end379
  %nameend343.0 = phi i8* [ %85, %if.end379 ], [ %incdec.ptr391, %for.inc390 ]
  %86 = load i8* %nameend343.0, align 1, !tbaa !1
  switch i8 %86, label %for.inc390 [
    i8 0, label %for.cond393.preheader
    i8 61, label %for.cond393.preheader
  ]

for.cond393.preheader:                            ; preds = %for.cond380, %for.cond380
  %name394692 = getelementptr inbounds %struct.gg_option* %longopts, i64 0, i32 0
  %87 = load i8** %name394692, align 8, !tbaa !0
  %tobool395693 = icmp eq i8* %87, null
  br i1 %tobool395693, label %if.end503, label %for.body396.lr.ph

for.body396.lr.ph:                                ; preds = %for.cond393.preheader
  %sub.ptr.lhs.cast398 = ptrtoint i8* %nameend343.0 to i64
  %sub.ptr.rhs.cast399 = ptrtoint i8* %85 to i64
  %sub.ptr.sub400 = sub i64 %sub.ptr.lhs.cast398, %sub.ptr.rhs.cast399
  %conv408 = and i64 %sub.ptr.sub400, 4294967295
  br label %for.body396

for.inc390:                                       ; preds = %for.cond380
  %incdec.ptr391 = getelementptr inbounds i8* %nameend343.0, i64 1
  br label %for.cond380

for.body396:                                      ; preds = %for.body396.lr.ph, %for.inc422
  %88 = phi i8* [ %87, %for.body396.lr.ph ], [ %89, %for.inc422 ]
  %option_index349.0698 = phi i32 [ 0, %for.body396.lr.ph ], [ %inc424, %for.inc422 ]
  %indfound348.0697 = phi i32 [ 0, %for.body396.lr.ph ], [ %indfound348.1, %for.inc422 ]
  %ambig347.0696 = phi i32 [ 0, %for.body396.lr.ph ], [ %ambig347.1, %for.inc422 ]
  %pfound345.0695 = phi %struct.gg_option* [ null, %for.body396.lr.ph ], [ %pfound345.1, %for.inc422 ]
  %p344.0694 = phi %struct.gg_option* [ %longopts, %for.body396.lr.ph ], [ %incdec.ptr423, %for.inc422 ]
  %call401 = tail call i32 @strncmp(i8* %88, i8* %85, i64 %sub.ptr.sub400) #5
  %tobool402 = icmp eq i32 %call401, 0
  br i1 %tobool402, label %if.then403, label %for.inc422

if.then403:                                       ; preds = %for.body396
  %call410 = tail call i64 @strlen(i8* %88) #5
  %cmp411 = icmp eq i64 %conv408, %call410
  br i1 %cmp411, label %if.end440, label %if.else414

if.else414:                                       ; preds = %if.then403
  %cmp415 = icmp eq %struct.gg_option* %pfound345.0695, null
  %p344.0.pfound345.0 = select i1 %cmp415, %struct.gg_option* %p344.0694, %struct.gg_option* %pfound345.0695
  %ambig347.0. = select i1 %cmp415, i32 %ambig347.0696, i32 1
  %option_index349.0.indfound348.0 = select i1 %cmp415, i32 %option_index349.0698, i32 %indfound348.0697
  br label %for.inc422

for.inc422:                                       ; preds = %if.else414, %for.body396
  %pfound345.1 = phi %struct.gg_option* [ %pfound345.0695, %for.body396 ], [ %p344.0.pfound345.0, %if.else414 ]
  %ambig347.1 = phi i32 [ %ambig347.0696, %for.body396 ], [ %ambig347.0., %if.else414 ]
  %indfound348.1 = phi i32 [ %indfound348.0697, %for.body396 ], [ %option_index349.0.indfound348.0, %if.else414 ]
  %incdec.ptr423 = getelementptr inbounds %struct.gg_option* %p344.0694, i64 1
  %inc424 = add nsw i32 %option_index349.0698, 1
  %name394 = getelementptr inbounds %struct.gg_option* %incdec.ptr423, i64 0, i32 0
  %89 = load i8** %name394, align 8, !tbaa !0
  %tobool395 = icmp eq i8* %89, null
  br i1 %tobool395, label %for.end425, label %for.body396

for.end425:                                       ; preds = %for.inc422
  %tobool426 = icmp eq i32 %ambig347.1, 0
  br i1 %tobool426, label %if.end440, label %if.then429

if.then429:                                       ; preds = %for.end425
  %90 = load i32* @gg_opterr, align 4, !tbaa !3
  %tobool430 = icmp eq i32 %90, 0
  br i1 %tobool430, label %if.end436, label %if.then431

if.then431:                                       ; preds = %if.then429
  %91 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %92 = load i8** %argv, align 8, !tbaa !0
  %idxprom433 = sext i32 %84 to i64
  %arrayidx434 = getelementptr inbounds i8** %argv, i64 %idxprom433
  %93 = load i8** %arrayidx434, align 8, !tbaa !0
  %call435 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([33 x i8]* @.str11, i64 0, i64 0), i8* %92, i8* %93) #3
  %.pre721 = load i8** @nextchar, align 8, !tbaa !0
  %.pre722 = load i32* @gg_optind, align 4, !tbaa !3
  br label %if.end436

if.end436:                                        ; preds = %if.then429, %if.then431
  %94 = phi i32 [ %84, %if.then429 ], [ %.pre722, %if.then431 ]
  %95 = phi i8* [ %85, %if.then429 ], [ %.pre721, %if.then431 ]
  %call437 = tail call i64 @strlen(i8* %95) #5
  %add.ptr438 = getelementptr inbounds i8* %95, i64 %call437
  store i8* %add.ptr438, i8** @nextchar, align 8, !tbaa !0
  %inc439 = add nsw i32 %94, 1
  store i32 %inc439, i32* @gg_optind, align 4, !tbaa !3
  br label %return

if.end440:                                        ; preds = %if.then403, %for.end425
  %indfound348.2686 = phi i32 [ %indfound348.1, %for.end425 ], [ %option_index349.0698, %if.then403 ]
  %pfound345.2685 = phi %struct.gg_option* [ %pfound345.1, %for.end425 ], [ %p344.0694, %if.then403 ]
  %cmp441 = icmp eq %struct.gg_option* %pfound345.2685, null
  br i1 %cmp441, label %if.end503, label %if.then443

if.then443:                                       ; preds = %if.end440
  %tobool444 = icmp eq i8 %86, 0
  %has_arg446 = getelementptr inbounds %struct.gg_option* %pfound345.2685, i64 0, i32 1
  %96 = load i32* %has_arg446, align 4, !tbaa !3
  br i1 %tobool444, label %if.else460, label %if.then445

if.then445:                                       ; preds = %if.then443
  %tobool447 = icmp eq i32 %96, 0
  br i1 %tobool447, label %if.else450, label %if.then448

if.then448:                                       ; preds = %if.then445
  %add.ptr449 = getelementptr inbounds i8* %nameend343.0, i64 1
  store i8* %add.ptr449, i8** @gg_optarg, align 8, !tbaa !0
  br label %if.end489

if.else450:                                       ; preds = %if.then445
  %97 = load i32* @gg_opterr, align 4, !tbaa !3
  %tobool451 = icmp eq i32 %97, 0
  br i1 %tobool451, label %if.end456, label %if.then452

if.then452:                                       ; preds = %if.else450
  %98 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %99 = load i8** %argv, align 8, !tbaa !0
  %name454 = getelementptr inbounds %struct.gg_option* %pfound345.2685, i64 0, i32 0
  %100 = load i8** %name454, align 8, !tbaa !0
  %call455 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([46 x i8]* @.str12, i64 0, i64 0), i8* %99, i8* %100) #3
  %.pre724 = load i8** @nextchar, align 8, !tbaa !0
  br label %if.end456

if.end456:                                        ; preds = %if.else450, %if.then452
  %101 = phi i8* [ %85, %if.else450 ], [ %.pre724, %if.then452 ]
  %call457 = tail call i64 @strlen(i8* %101) #5
  %add.ptr458 = getelementptr inbounds i8* %101, i64 %call457
  store i8* %add.ptr458, i8** @nextchar, align 8, !tbaa !0
  br label %return

if.else460:                                       ; preds = %if.then443
  %cmp462 = icmp eq i32 %96, 1
  br i1 %cmp462, label %if.then464, label %if.end489

if.then464:                                       ; preds = %if.else460
  %cmp465 = icmp slt i32 %84, %argc
  br i1 %cmp465, label %if.then467, label %if.else471

if.then467:                                       ; preds = %if.then464
  %inc468 = add nsw i32 %84, 1
  store i32 %inc468, i32* @gg_optind, align 4, !tbaa !3
  %idxprom469 = sext i32 %84 to i64
  %arrayidx470 = getelementptr inbounds i8** %argv, i64 %idxprom469
  %102 = load i8** %arrayidx470, align 8, !tbaa !0
  store i8* %102, i8** @gg_optarg, align 8, !tbaa !0
  br label %if.end489

if.else471:                                       ; preds = %if.then464
  %103 = load i32* @gg_opterr, align 4, !tbaa !3
  %tobool472 = icmp eq i32 %103, 0
  br i1 %tobool472, label %if.end479, label %if.then473

if.then473:                                       ; preds = %if.else471
  %104 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %105 = load i8** %argv, align 8, !tbaa !0
  %sub475 = add nsw i32 %84, -1
  %idxprom476 = sext i32 %sub475 to i64
  %arrayidx477 = getelementptr inbounds i8** %argv, i64 %idxprom476
  %106 = load i8** %arrayidx477, align 8, !tbaa !0
  %call478 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([38 x i8]* @.str4, i64 0, i64 0), i8* %105, i8* %106) #3
  %.pre723 = load i8** @nextchar, align 8, !tbaa !0
  br label %if.end479

if.end479:                                        ; preds = %if.else471, %if.then473
  %107 = phi i8* [ %85, %if.else471 ], [ %.pre723, %if.then473 ]
  %call480 = tail call i64 @strlen(i8* %107) #5
  %add.ptr481 = getelementptr inbounds i8* %107, i64 %call480
  store i8* %add.ptr481, i8** @nextchar, align 8, !tbaa !0
  %108 = load i8* %optstring.addr.0731, align 1, !tbaa !1
  %cmp484 = icmp eq i8 %108, 58
  %cond486 = select i1 %cmp484, i32 58, i32 63
  br label %return

if.end489:                                        ; preds = %if.else460, %if.then467, %if.then448
  %call490 = tail call i64 @strlen(i8* %85) #5
  %add.ptr491 = getelementptr inbounds i8* %85, i64 %call490
  store i8* %add.ptr491, i8** @nextchar, align 8, !tbaa !0
  %cmp492 = icmp eq i32* %longind, null
  br i1 %cmp492, label %if.end495, label %if.then494

if.then494:                                       ; preds = %if.end489
  store i32 %indfound348.2686, i32* %longind, align 4, !tbaa !3
  br label %if.end495

if.end495:                                        ; preds = %if.end489, %if.then494
  %flag496 = getelementptr inbounds %struct.gg_option* %pfound345.2685, i64 0, i32 2
  %109 = load i32** %flag496, align 8, !tbaa !0
  %tobool497 = icmp eq i32* %109, null
  %val499 = getelementptr inbounds %struct.gg_option* %pfound345.2685, i64 0, i32 3
  %110 = load i32* %val499, align 4, !tbaa !3
  br i1 %tobool497, label %return, label %if.then498

if.then498:                                       ; preds = %if.end495
  store i32 %110, i32* %109, align 4, !tbaa !3
  br label %return

if.end503:                                        ; preds = %for.cond393.preheader, %if.end440
  store i8* null, i8** @nextchar, align 8, !tbaa !0
  br label %return

if.end504:                                        ; preds = %if.end332
  %cmp507 = icmp eq i8 %77, 58
  br i1 %cmp507, label %if.then509, label %if.end553

if.then509:                                       ; preds = %if.end504
  %arrayidx510 = getelementptr inbounds i8* %call304, i64 2
  %111 = load i8* %arrayidx510, align 1, !tbaa !1
  %cmp512 = icmp eq i8 %111, 58
  %112 = load i8* %incdec.ptr302, align 1, !tbaa !1
  %cmp516 = icmp ne i8 %112, 0
  br i1 %cmp512, label %if.then514, label %if.else522

if.then514:                                       ; preds = %if.then509
  br i1 %cmp516, label %if.then518, label %if.else520

if.then518:                                       ; preds = %if.then514
  store i8* %incdec.ptr302, i8** @gg_optarg, align 8, !tbaa !0
  %inc519 = add nsw i32 %71, 1
  store i32 %inc519, i32* @gg_optind, align 4, !tbaa !3
  br label %if.end521

if.else520:                                       ; preds = %if.then514
  store i8* null, i8** @gg_optarg, align 8, !tbaa !0
  br label %if.end521

if.end521:                                        ; preds = %if.else520, %if.then518
  store i8* null, i8** @nextchar, align 8, !tbaa !0
  br label %if.end553

if.else522:                                       ; preds = %if.then509
  br i1 %cmp516, label %if.then526, label %if.else528

if.then526:                                       ; preds = %if.else522
  store i8* %incdec.ptr302, i8** @gg_optarg, align 8, !tbaa !0
  %inc527 = add nsw i32 %71, 1
  store i32 %inc527, i32* @gg_optind, align 4, !tbaa !3
  br label %if.end551

if.else528:                                       ; preds = %if.else522
  %cmp529 = icmp eq i32 %71, %argc
  br i1 %cmp529, label %if.then531, label %if.else546

if.then531:                                       ; preds = %if.else528
  %113 = load i32* @gg_opterr, align 4, !tbaa !3
  %tobool532 = icmp eq i32 %113, 0
  br i1 %tobool532, label %if.end537, label %if.then533

if.then533:                                       ; preds = %if.then531
  %114 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %115 = load i8** %argv, align 8, !tbaa !0
  %call536 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %114, i8* getelementptr inbounds ([39 x i8]* @.str10, i64 0, i64 0), i8* %115, i32 %conv303) #3
  br label %if.end537

if.end537:                                        ; preds = %if.then531, %if.then533
  store i32 %conv303, i32* @gg_optopt, align 4, !tbaa !3
  %116 = load i8* %optstring.addr.0731, align 1, !tbaa !1
  %cmp541 = icmp eq i8 %116, 58
  %.675 = select i1 %cmp541, i8 58, i8 63
  br label %if.end551

if.else546:                                       ; preds = %if.else528
  %inc547 = add nsw i32 %71, 1
  store i32 %inc547, i32* @gg_optind, align 4, !tbaa !3
  %idxprom548 = sext i32 %71 to i64
  %arrayidx549 = getelementptr inbounds i8** %argv, i64 %idxprom548
  %117 = load i8** %arrayidx549, align 8, !tbaa !0
  store i8* %117, i8** @gg_optarg, align 8, !tbaa !0
  br label %if.end551

if.end551:                                        ; preds = %if.end537, %if.else546, %if.then526
  %c.1 = phi i8 [ %69, %if.then526 ], [ %69, %if.else546 ], [ %.675, %if.end537 ]
  store i8* null, i8** @nextchar, align 8, !tbaa !0
  br label %if.end553

if.end553:                                        ; preds = %if.end521, %if.end551, %if.end504
  %c.2 = phi i8 [ %69, %if.end521 ], [ %c.1, %if.end551 ], [ %69, %if.end504 ]
  %conv554 = sext i8 %c.2 to i32
  br label %return

return:                                           ; preds = %if.end495, %if.end257, %if.then86, %if.then70, %if.then67, %if.end553, %if.end503, %if.then498, %if.end479, %if.end456, %if.end436, %if.end364, %if.end330, %if.end298, %if.then259, %if.end241, %if.end218, %if.end181, %if.end90
  %retval.0 = phi i32 [ 1, %if.end90 ], [ 0, %if.then259 ], [ 63, %if.end218 ], [ %cond, %if.end241 ], [ 63, %if.end298 ], [ 63, %if.end330 ], [ 0, %if.then498 ], [ 63, %if.end456 ], [ %cond486, %if.end479 ], [ 87, %if.end503 ], [ 63, %if.end436 ], [ %., %if.end364 ], [ %conv554, %if.end553 ], [ 63, %if.end181 ], [ -1, %if.then67 ], [ -1, %if.then70 ], [ -1, %if.then86 ], [ %61, %if.end257 ], [ %110, %if.end495 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @exchange(i8** nocapture %argv) #0 {
entry:
  %0 = load i32* @first_nonopt, align 4, !tbaa !3
  %1 = load i32* @last_nonopt, align 4, !tbaa !3
  %2 = load i32* @gg_optind, align 4, !tbaa !3
  %cmp96 = icmp sgt i32 %2, %1
  %cmp19297 = icmp sgt i32 %1, %0
  %or.cond9398 = and i1 %cmp96, %cmp19297
  br i1 %or.cond9398, label %while.body.lr.ph.lr.ph, label %while.end

while.body.lr.ph.lr.ph:                           ; preds = %entry
  %3 = sext i32 %1 to i64
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.body.lr.ph.lr.ph, %for.end
  %bottom.0.ph100 = phi i32 [ %0, %while.body.lr.ph.lr.ph ], [ %bottom.094, %for.end ]
  %top.0.ph99 = phi i32 [ %2, %while.body.lr.ph.lr.ph ], [ %sub7, %for.end ]
  %sub = sub nsw i32 %top.0.ph99, %1
  %cmp2487 = icmp sgt i32 %sub, 0
  %4 = sub i32 %top.0.ph99, %1
  %5 = sext i32 %bottom.0.ph100 to i64
  %6 = sext i32 %4 to i64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %for.end40
  %indvars.iv109 = phi i64 [ %5, %while.body.lr.ph ], [ %indvars.iv.next110, %for.end40 ]
  %bottom.094 = phi i32 [ %bottom.0.ph100, %while.body.lr.ph ], [ %add41, %for.end40 ]
  %7 = trunc i64 %indvars.iv109 to i32
  %sub2 = sub nsw i32 %1, %7
  %cmp3 = icmp sgt i32 %sub, %sub2
  br i1 %cmp3, label %for.cond.preheader, label %for.cond23.preheader

for.cond.preheader:                               ; preds = %while.body
  %cmp589 = icmp sgt i32 %sub2, 0
  %sub7 = sub i32 %top.0.ph99, %sub2
  br i1 %cmp589, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %8 = sext i32 %bottom.094 to i64
  %9 = sext i32 %sub7 to i64
  br label %for.body

for.cond23.preheader:                             ; preds = %while.body
  br i1 %cmp2487, label %for.body25, label %for.end40

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv111 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next112, %for.body ]
  %10 = add nsw i64 %indvars.iv111, %8
  %arrayidx = getelementptr inbounds i8** %argv, i64 %10
  %11 = load i8** %arrayidx, align 8, !tbaa !0
  %12 = add nsw i64 %9, %indvars.iv111
  %arrayidx10 = getelementptr inbounds i8** %argv, i64 %12
  %13 = load i8** %arrayidx10, align 8, !tbaa !0
  store i8* %13, i8** %arrayidx, align 8, !tbaa !0
  store i8* %11, i8** %arrayidx10, align 8, !tbaa !0
  %indvars.iv.next112 = add i64 %indvars.iv111, 1
  %lftr.wideiv115 = trunc i64 %indvars.iv.next112 to i32
  %exitcond116 = icmp eq i32 %lftr.wideiv115, %sub2
  br i1 %exitcond116, label %for.end, label %for.body

for.end:                                          ; preds = %for.cond.preheader, %for.body
  %cmp = icmp sgt i32 %sub7, %1
  %cmp192 = icmp sgt i32 %1, %bottom.094
  %or.cond93 = and i1 %cmp, %cmp192
  br i1 %or.cond93, label %while.body.lr.ph, label %while.end

for.body25:                                       ; preds = %for.cond23.preheader, %for.body25
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body25 ], [ 0, %for.cond23.preheader ]
  %14 = add nsw i64 %indvars.iv, %indvars.iv109
  %arrayidx28 = getelementptr inbounds i8** %argv, i64 %14
  %15 = load i8** %arrayidx28, align 8, !tbaa !0
  %16 = add nsw i64 %indvars.iv, %3
  %arrayidx31 = getelementptr inbounds i8** %argv, i64 %16
  %17 = load i8** %arrayidx31, align 8, !tbaa !0
  store i8* %17, i8** %arrayidx28, align 8, !tbaa !0
  store i8* %15, i8** %arrayidx31, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %4
  br i1 %exitcond, label %for.end40, label %for.body25

for.end40:                                        ; preds = %for.body25, %for.cond23.preheader
  %indvars.iv.next110 = add i64 %indvars.iv109, %6
  %add41 = add nsw i32 %bottom.094, %sub
  %18 = trunc i64 %indvars.iv.next110 to i32
  %cmp1 = icmp sgt i32 %1, %18
  br i1 %cmp1, label %while.body, label %while.end

while.end:                                        ; preds = %entry, %for.end, %for.end40
  %sub42 = sub i32 %2, %1
  %add43 = add nsw i32 %sub42, %0
  store i32 %add43, i32* @first_nonopt, align 4, !tbaa !3
  store i32 %2, i32* @last_nonopt, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #1

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define i32 @gg_getopt(i32 %argc, i8** %argv, i8* %optstring) #0 {
entry:
  %call = tail call i32 @getopt_internal(i32 %argc, i8** %argv, i8* %optstring, %struct.gg_option* null, i32* null, i32 0) #4
  ret i32 %call
}

; Function Attrs: nounwind optsize readonly
declare i8* @getenv(i8* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }
attributes #5 = { nounwind optsize readonly }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"_ZTS3$_0", metadata !1}

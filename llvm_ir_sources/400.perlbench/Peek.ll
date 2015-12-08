; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/Peek.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.xpv = type { i8*, i64, i64 }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.interpreter = type { i8 }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.he = type { %struct.he*, %struct.hek*, %struct.sv* }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.pmop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op*, %struct.op*, %struct.op*, %struct.pmop*, %struct.regexp*, i32, i32, i8, %struct.hv* }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type opaque
%struct.reg_data = type opaque
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, void (%struct.cv*)*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%union.any = type { i8* }
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%struct._PerlIO = type opaque
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque

@PL_runops = external global i32 ()*
@PL_sv_arenaroot = external global %struct.sv*
@.str = private unnamed_addr constant [9 x i8] c"GVGV::GV\00", align 1
@.str1 = private unnamed_addr constant [8 x i8] c"  busy\0A\00", align 1
@PL_sv_undef = external global %struct.sv
@.str2 = private unnamed_addr constant [22 x i8] c"    closure-template\0A\00", align 1
@.str3 = private unnamed_addr constant [19 x i8] c"     ref in args!\0A\00", align 1
@.str4 = private unnamed_addr constant [75 x i8] c"    level %i: refs: %i, strings: %i in %i,\09argsarray: %i, argsstrings: %i\0A\00", align 1
@.str5 = private unnamed_addr constant [71 x i8] c"  total: refs: %i, strings: %i in %i,\09argsarrays: %i, argsstrings: %i\0A\00", align 1
@.str6 = private unnamed_addr constant [67 x i8] c"total: refs: %i, strings: %i in %i\09argsarray: %i, argsstrings: %i\0A\00", align 1
@.str7 = private unnamed_addr constant [41 x i8] c"Cannot report mstats without Perl malloc\00", align 1
@PL_stack_sp = external global %struct.sv**
@PL_stack_base = external global %struct.sv**
@PL_markstack_ptr = external global i32*
@.str8 = private unnamed_addr constant [54 x i8] c"Usage: Devel::Peek::mstat(str=\22Devel::Peek::mstat: \22)\00", align 1
@.str9 = private unnamed_addr constant [21 x i8] c"Devel::Peek::mstat: \00", align 1
@.str10 = private unnamed_addr constant [45 x i8] c"%s: perl not compiled with DEBUGGING_MSTATS\0A\00", align 1
@.str11 = private unnamed_addr constant [46 x i8] c"Usage: Devel::Peek::fill_mstats(sv, level= 0)\00", align 1
@.str12 = private unnamed_addr constant [50 x i8] c"Usage: Devel::Peek::mstats_fillhash(sv, level= 0)\00", align 1
@.str13 = private unnamed_addr constant [50 x i8] c"Usage: Devel::Peek::mstats2hash(sv, rv, level= 0)\00", align 1
@.str14 = private unnamed_addr constant [36 x i8] c"Usage: Devel::Peek::Dump(sv, lim=4)\00", align 1
@.str15 = private unnamed_addr constant [22 x i8] c"Devel::Peek::pv_limit\00", align 1
@.str16 = private unnamed_addr constant [22 x i8] c"Devel::Peek::dump_ops\00", align 1
@PL_dumpindent = external global i32
@PL_Xpv = external global %struct.xpv*
@.str17 = private unnamed_addr constant [40 x i8] c"Usage: Devel::Peek::DumpArray(lim, ...)\00", align 1
@.str18 = private unnamed_addr constant [20 x i8] c"Elt No. %ld  0x%lx\0A\00", align 1
@.str19 = private unnamed_addr constant [31 x i8] c"Usage: Devel::Peek::DumpProg()\00", align 1
@.str20 = private unnamed_addr constant [17 x i8] c"dumpindent is %d\00", align 1
@PL_main_root = external global %struct.op*
@.str21 = private unnamed_addr constant [33 x i8] c"Usage: Devel::Peek::SvREFCNT(sv)\00", align 1
@PL_op = external global %struct.op*
@PL_curpad = external global %struct.sv**
@.str22 = private unnamed_addr constant [37 x i8] c"Usage: Devel::Peek::SvREFCNT_inc(sv)\00", align 1
@PL_Sv = external global %struct.sv*
@.str23 = private unnamed_addr constant [37 x i8] c"Usage: Devel::Peek::SvREFCNT_dec(sv)\00", align 1
@.str24 = private unnamed_addr constant [31 x i8] c"Usage: Devel::Peek::DeadCode()\00", align 1
@.str25 = private unnamed_addr constant [29 x i8] c"Usage: Devel::Peek::CvGV(cv)\00", align 1
@.str26 = private unnamed_addr constant [43 x i8] c"Usage: Devel::Peek::runops_debug(flag= -1)\00", align 1
@PL_sv_yes = external global %struct.sv
@PL_sv_no = external global %struct.sv
@.str27 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/400.perlbench/src/Peek.c\00", align 1
@.str28 = private unnamed_addr constant [19 x i8] c"Devel::Peek::mstat\00", align 1
@.str29 = private unnamed_addr constant [25 x i8] c"Devel::Peek::fill_mstats\00", align 1
@.str30 = private unnamed_addr constant [29 x i8] c"Devel::Peek::mstats_fillhash\00", align 1
@.str31 = private unnamed_addr constant [5 x i8] c"\5C%;$\00", align 1
@.str32 = private unnamed_addr constant [25 x i8] c"Devel::Peek::mstats2hash\00", align 1
@.str33 = private unnamed_addr constant [6 x i8] c"$\5C%;$\00", align 1
@.str34 = private unnamed_addr constant [18 x i8] c"Devel::Peek::Dump\00", align 1
@.str35 = private unnamed_addr constant [23 x i8] c"Devel::Peek::DumpArray\00", align 1
@.str36 = private unnamed_addr constant [22 x i8] c"Devel::Peek::DumpProg\00", align 1
@.str37 = private unnamed_addr constant [22 x i8] c"Devel::Peek::SvREFCNT\00", align 1
@.str38 = private unnamed_addr constant [26 x i8] c"Devel::Peek::SvREFCNT_inc\00", align 1
@.str39 = private unnamed_addr constant [26 x i8] c"Devel::Peek::SvREFCNT_dec\00", align 1
@.str40 = private unnamed_addr constant [22 x i8] c"Devel::Peek::DeadCode\00", align 1
@.str41 = private unnamed_addr constant [18 x i8] c"Devel::Peek::CvGV\00", align 1
@.str42 = private unnamed_addr constant [26 x i8] c"Devel::Peek::runops_debug\00", align 1

; Function Attrs: nounwind optsize uwtable
define signext i8 @_runops_debug(i32 %flag) #0 {
entry:
  %0 = load i32 ()** @PL_runops, align 8, !tbaa !0
  %cmp = icmp eq i32 ()* %0, @Perl_runops_debug
  %conv1 = zext i1 %cmp to i8
  %cmp2 = icmp sgt i32 %flag, -1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tobool = icmp ne i32 %flag, 0
  %cond = select i1 %tobool, i32 ()* @Perl_runops_debug, i32 ()* @Perl_runops_standard
  store i32 ()* %cond, i32 ()** @PL_runops, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i8 %conv1
}

; Function Attrs: optsize
declare i32 @Perl_runops_debug() #1

; Function Attrs: optsize
declare i32 @Perl_runops_standard() #1

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @DeadCode() #0 {
entry:
  %call = tail call %struct.av* @Perl_newAV() #2
  %0 = bitcast %struct.av* %call to %struct.sv*
  %call1 = tail call %struct.sv* @Perl_newRV_noinc(%struct.sv* %0) #2
  %1 = load %struct.sv** @PL_sv_arenaroot, align 8, !tbaa !0
  %tobool346 = icmp eq %struct.sv* %1, null
  br i1 %tobool346, label %for.end225, label %for.body

for.body:                                         ; preds = %entry, %for.inc223
  %sva.0352 = phi %struct.sv* [ %59, %for.inc223 ], [ %1, %entry ]
  %tm.0351 = phi i32 [ %tm.1.ph332, %for.inc223 ], [ 0, %entry ]
  %tref.0350 = phi i32 [ %tref.1.ph330, %for.inc223 ], [ 0, %entry ]
  %ts.0349 = phi i32 [ %ts.1.ph328, %for.inc223 ], [ 0, %entry ]
  %ta.0348 = phi i32 [ %ta.1.ph326, %for.inc223 ], [ 0, %entry ]
  %tas.0347 = phi i32 [ %tas.1.ph324, %for.inc223 ], [ 0, %entry ]
  %sv_refcnt = getelementptr inbounds %struct.sv* %sva.0352, i64 0, i32 1
  %2 = load i32* %sv_refcnt, align 4, !tbaa !3
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.sv* %sva.0352, i64 %idxprom
  %cmp320334 = icmp ugt i32 %2, 1
  br i1 %cmp320334, label %for.body3.lr.ph.lr.ph, label %for.inc223

for.body3.lr.ph.lr.ph:                            ; preds = %for.body
  %sv.0319333 = getelementptr inbounds %struct.sv* %sva.0352, i64 1
  br label %for.body3.lr.ph

for.body3.lr.ph:                                  ; preds = %for.body3.lr.ph.lr.ph, %if.end214
  %sv.0319341 = phi %struct.sv* [ %sv.0319333, %for.body3.lr.ph.lr.ph ], [ %sv.0319, %if.end214 ]
  %sva.0.pn.ph340 = phi %struct.sv* [ %sva.0352, %for.body3.lr.ph.lr.ph ], [ %sv.0322, %if.end214 ]
  %tm.1.ph339 = phi i32 [ %tm.0351, %for.body3.lr.ph.lr.ph ], [ %add216, %if.end214 ]
  %tref.1.ph338 = phi i32 [ %tref.0350, %for.body3.lr.ph.lr.ph ], [ %add215, %if.end214 ]
  %ts.1.ph337 = phi i32 [ %ts.0349, %for.body3.lr.ph.lr.ph ], [ %add217, %if.end214 ]
  %ta.1.ph336 = phi i32 [ %ta.0348, %for.body3.lr.ph.lr.ph ], [ %add218, %if.end214 ]
  %tas.1.ph335 = phi i32 [ %tas.0347, %for.body3.lr.ph.lr.ph ], [ %add219, %if.end214 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body3.lr.ph, %for.cond2.backedge
  %sv.0322 = phi %struct.sv* [ %sv.0319341, %for.body3.lr.ph ], [ %sv.0, %for.cond2.backedge ]
  %sva.0.pn321 = phi %struct.sv* [ %sva.0.pn.ph340, %for.body3.lr.ph ], [ %sv.0322, %for.cond2.backedge ]
  %sv_flags = getelementptr inbounds %struct.sv* %sva.0.pn321, i64 1, i32 2
  %3 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %3, 255
  %cmp4 = icmp eq i32 %and, 12
  br i1 %cmp4, label %if.then, label %for.cond2.backedge

if.then:                                          ; preds = %for.body3
  %sv_any = bitcast %struct.sv* %sv.0322 to %struct.xpvcv**
  %4 = load %struct.xpvcv** %sv_any, align 8, !tbaa !0
  %xcv_padlist = getelementptr inbounds %struct.xpvcv* %4, i64 0, i32 15
  %5 = load %struct.av** %xcv_padlist, align 8, !tbaa !0
  %sv_any5 = getelementptr inbounds %struct.sv* %sv.0322, i64 0, i32 0
  %xcv_xsub = getelementptr inbounds %struct.xpvcv* %4, i64 0, i32 10
  %6 = load void (%struct.cv*)** %xcv_xsub, align 8, !tbaa !0
  %tobool6 = icmp eq void (%struct.cv*)* %6, null
  br i1 %tobool6, label %if.end, label %for.cond2.backedge

if.end:                                           ; preds = %if.then
  %xcv_gv = getelementptr inbounds %struct.xpvcv* %4, i64 0, i32 12
  %7 = load %struct.gv** %xcv_gv, align 8, !tbaa !0
  %tobool9 = icmp eq %struct.gv* %7, null
  br i1 %tobool9, label %for.cond2.backedge, label %if.end11

if.end11:                                         ; preds = %if.end
  %xcv_root = getelementptr inbounds %struct.xpvcv* %4, i64 0, i32 9
  %8 = load %struct.op** %xcv_root, align 8, !tbaa !0
  %tobool13 = icmp eq %struct.op* %8, null
  br i1 %tobool13, label %for.cond2.backedge, label %if.end15

for.cond2.backedge:                               ; preds = %if.end11, %if.end, %if.then, %for.body3, %if.then21
  %sv.0 = getelementptr inbounds %struct.sv* %sv.0322, i64 1
  %cmp = icmp ult %struct.sv* %sv.0, %arrayidx
  br i1 %cmp, label %for.body3, label %for.inc223

if.end15:                                         ; preds = %if.end11
  %call16 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #2
  %9 = load i8** %sv_any5, align 8, !tbaa !0
  %xcv_gv18 = getelementptr inbounds i8* %9, i64 96
  %10 = bitcast i8* %xcv_gv18 to %struct.gv**
  %11 = load %struct.gv** %10, align 8, !tbaa !0
  tail call void @Perl_do_gvgv_dump(i32 0, %struct._PerlIO** %call16, i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), %struct.gv* %11) #2
  %12 = load %struct.xpvcv** %sv_any, align 8, !tbaa !0
  %xcv_depth = getelementptr inbounds %struct.xpvcv* %12, i64 0, i32 14
  %13 = load i64* %xcv_depth, align 8, !tbaa !4
  %tobool20 = icmp eq i64 %13, 0
  br i1 %tobool20, label %if.end24, label %if.then21

if.then21:                                        ; preds = %if.end15
  %call22 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #2
  %call23 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call22, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #2
  br label %for.cond2.backedge

if.end24:                                         ; preds = %if.end15
  %sv_any25 = getelementptr inbounds %struct.av* %5, i64 0, i32 0
  %14 = load %struct.xpvav** %sv_any25, align 8, !tbaa !0
  %xav_array = getelementptr inbounds %struct.xpvav* %14, i64 0, i32 0
  %15 = load i8** %xav_array, align 8, !tbaa !0
  %16 = bitcast i8* %15 to %struct.sv**
  %17 = bitcast %struct.av* %5 to %struct.sv*
  %18 = getelementptr inbounds %struct.av* %5, i64 0, i32 2
  %arrayidx108 = getelementptr inbounds i8* %15, i64 8
  %19 = bitcast i8* %arrayidx108 to %struct.sv**
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %for.end186, %if.then195, %if.end24
  %i.0.ph = phi i32 [ 0, %if.end24 ], [ %inc, %if.then195 ], [ %inc, %for.end186 ]
  %totm.0.ph = phi i32 [ 0, %if.end24 ], [ %add189, %if.then195 ], [ %add189, %for.end186 ]
  %totref.0.ph = phi i32 [ 0, %if.end24 ], [ %add193, %if.then195 ], [ %add193, %for.end186 ]
  %tots.0.ph = phi i32 [ 0, %if.end24 ], [ %add192, %if.then195 ], [ %add192, %for.end186 ]
  %tota.0.ph = phi i32 [ 0, %if.end24 ], [ %add190, %if.then195 ], [ %add190, %for.end186 ]
  %totas.0.ph = phi i32 [ 0, %if.end24 ], [ %add191, %if.then195 ], [ %add191, %for.end186 ]
  %dumpit.0.ph = phi i32 [ 0, %if.end24 ], [ %dumpit.1, %if.then195 ], [ 0, %for.end186 ]
  %20 = sext i32 %i.0.ph to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.then42
  %indvars.iv = phi i64 [ %20, %while.cond.outer ], [ %indvars.iv.next, %if.then42 ]
  %i.0 = phi i32 [ %i.0.ph, %while.cond.outer ], [ %inc, %if.then42 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %i.0, 1
  %21 = load i32* %18, align 4, !tbaa !3
  %and27 = and i32 %21, 32768
  %tobool28 = icmp eq i32 %and27, 0
  br i1 %tobool28, label %cond.false, label %cond.true

cond.true:                                        ; preds = %while.cond
  %call29 = tail call i32 @Perl_mg_size(%struct.sv* %17) #2
  %conv30 = sext i32 %call29 to i64
  br label %cond.end

cond.false:                                       ; preds = %while.cond
  %22 = load %struct.xpvav** %sv_any25, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %22, i64 0, i32 1
  %23 = load i64* %xav_fill, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv30, %cond.true ], [ %23, %cond.false ]
  %cmp32 = icmp sgt i64 %indvars.iv.next, %cond
  br i1 %cmp32, label %while.end, label %while.body

while.body:                                       ; preds = %cond.end
  %arrayidx35 = getelementptr inbounds %struct.sv** %16, i64 %indvars.iv.next
  %24 = load %struct.sv** %arrayidx35, align 8, !tbaa !0
  %sv_any36 = bitcast %struct.sv* %24 to %struct.xpvav**
  %25 = load %struct.xpvav** %sv_any36, align 8, !tbaa !0
  %xav_array37 = getelementptr inbounds %struct.xpvav* %25, i64 0, i32 0
  %26 = load i8** %xav_array37, align 8, !tbaa !0
  %27 = bitcast i8* %26 to %struct.sv**
  %28 = load %struct.sv** %27, align 8, !tbaa !0
  %tobool39 = icmp eq %struct.sv* %28, null
  %cmp40 = icmp eq %struct.sv* %28, @PL_sv_undef
  %or.cond = or i1 %tobool39, %cmp40
  br i1 %or.cond, label %if.then42, label %if.end45

if.then42:                                        ; preds = %while.body
  %call43 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #2
  %call44 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call43, i8* getelementptr inbounds ([22 x i8]* @.str2, i64 0, i64 0)) #2
  br label %while.cond

if.end45:                                         ; preds = %while.body
  %sv_any46 = bitcast %struct.sv* %28 to %struct.xpvav**
  %29 = load %struct.xpvav** %sv_any46, align 8, !tbaa !0
  %xav_array47 = getelementptr inbounds %struct.xpvav* %29, i64 0, i32 0
  %30 = load i8** %xav_array47, align 8, !tbaa !0
  %31 = bitcast i8* %30 to %struct.sv**
  %xav_max = getelementptr inbounds %struct.xpvav* %29, i64 0, i32 2
  %32 = load i64* %xav_max, align 8, !tbaa !4
  %add = shl i64 %32, 3
  %mul = add i64 %add, 8
  %conv49 = trunc i64 %mul to i32
  %xav_flags = getelementptr inbounds %struct.xpvav* %29, i64 0, i32 9
  %33 = load i8* %xav_flags, align 1, !tbaa !1
  %and52 = and i8 %33, 1
  %tobool53 = icmp eq i8 %and52, 0
  br i1 %tobool53, label %if.end105, label %for.cond55.preheader

for.cond55.preheader:                             ; preds = %if.end45
  %sv_flags57 = getelementptr inbounds %struct.sv* %28, i64 0, i32 2
  br label %for.cond55

for.cond55:                                       ; preds = %for.cond55.preheader, %for.inc
  %indvars.iv362 = phi i64 [ 0, %for.cond55.preheader ], [ %indvars.iv.next363, %for.inc ]
  %levelref.0 = phi i32 [ 0, %for.cond55.preheader ], [ %levelref.1, %for.inc ]
  %levelas.0 = phi i32 [ 0, %for.cond55.preheader ], [ %levelas.1, %for.inc ]
  %34 = load i32* %sv_flags57, align 4, !tbaa !3
  %and58 = and i32 %34, 32768
  %tobool59 = icmp eq i32 %and58, 0
  br i1 %tobool59, label %cond.false63, label %cond.true60

cond.true60:                                      ; preds = %for.cond55
  %call61 = tail call i32 @Perl_mg_size(%struct.sv* %28) #2
  %conv62 = sext i32 %call61 to i64
  br label %cond.end66

cond.false63:                                     ; preds = %for.cond55
  %35 = load %struct.xpvav** %sv_any46, align 8, !tbaa !0
  %xav_fill65 = getelementptr inbounds %struct.xpvav* %35, i64 0, i32 1
  %36 = load i64* %xav_fill65, align 8, !tbaa !4
  br label %cond.end66

cond.end66:                                       ; preds = %cond.false63, %cond.true60
  %cond67 = phi i64 [ %conv62, %cond.true60 ], [ %36, %cond.false63 ]
  %cmp68 = icmp slt i64 %indvars.iv362, %cond67
  br i1 %cmp68, label %for.body70, label %if.end105

for.body70:                                       ; preds = %cond.end66
  %arrayidx72 = getelementptr inbounds %struct.sv** %31, i64 %indvars.iv362
  %37 = load %struct.sv** %arrayidx72, align 8, !tbaa !0
  %sv_flags73 = getelementptr inbounds %struct.sv* %37, i64 0, i32 2
  %38 = load i32* %sv_flags73, align 4, !tbaa !3
  %and74 = and i32 %38, 524288
  %tobool75 = icmp eq i32 %and74, 0
  br i1 %tobool75, label %if.else, label %if.then76

if.then76:                                        ; preds = %for.body70
  %call77 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #2
  %call78 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call77, i8* getelementptr inbounds ([19 x i8]* @.str3, i64 0, i64 0)) #2
  %inc79 = add nsw i32 %levelref.0, 1
  br label %for.inc

if.else:                                          ; preds = %for.body70
  %and83 = and i32 %38, 252
  %cmp84 = icmp ugt i32 %and83, 3
  br i1 %cmp84, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %if.else
  %sv_any88 = getelementptr inbounds %struct.sv* %37, i64 0, i32 0
  %39 = load i8** %sv_any88, align 8, !tbaa !0
  %xpv_len = getelementptr inbounds i8* %39, i64 16
  %40 = bitcast i8* %xpv_len to i64*
  %41 = load i64* %40, align 8, !tbaa !4
  %tobool89 = icmp eq i64 %41, 0
  br i1 %tobool89, label %for.inc, label %if.then90

if.then90:                                        ; preds = %land.lhs.true
  %sv_refcnt97 = getelementptr inbounds %struct.sv* %37, i64 0, i32 1
  %42 = load i32* %sv_refcnt97, align 4, !tbaa !3
  %conv98 = zext i32 %42 to i64
  %div = udiv i64 %41, %conv98
  %conv99310 = zext i32 %levelas.0 to i64
  %add100 = add i64 %div, %conv99310
  %conv101 = trunc i64 %add100 to i32
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %if.then76, %if.then90, %if.else
  %levelref.1 = phi i32 [ %inc79, %if.then76 ], [ %levelref.0, %if.then90 ], [ %levelref.0, %land.lhs.true ], [ %levelref.0, %if.else ]
  %levelas.1 = phi i32 [ %levelas.0, %if.then76 ], [ %conv101, %if.then90 ], [ %levelas.0, %land.lhs.true ], [ %levelas.0, %if.else ]
  %indvars.iv.next363 = add i64 %indvars.iv362, 1
  br label %for.cond55

if.end105:                                        ; preds = %cond.end66, %if.end45
  %levelref.2 = phi i32 [ 0, %if.end45 ], [ %levelref.0, %cond.end66 ]
  %levelas.2 = phi i32 [ 0, %if.end45 ], [ %levelas.0, %cond.end66 ]
  br label %for.cond106

for.cond106:                                      ; preds = %for.inc184, %if.end105
  %indvars.iv364 = phi i64 [ %indvars.iv.next365, %for.inc184 ], [ 1, %if.end105 ]
  %levelm.0 = phi i32 [ %levelm.1, %for.inc184 ], [ 0, %if.end105 ]
  %levelref.3 = phi i32 [ %levelref.4, %for.inc184 ], [ %levelref.2, %if.end105 ]
  %levels.0 = phi i32 [ %levels.1, %for.inc184 ], [ 0, %if.end105 ]
  %dumpit.1 = phi i32 [ %dumpit.2, %for.inc184 ], [ %dumpit.0.ph, %if.end105 ]
  %43 = load %struct.sv** %19, align 8, !tbaa !0
  %sv_flags109 = getelementptr inbounds %struct.sv* %43, i64 0, i32 2
  %44 = load i32* %sv_flags109, align 4, !tbaa !3
  %and110 = and i32 %44, 32768
  %tobool111 = icmp eq i32 %and110, 0
  br i1 %tobool111, label %cond.false116, label %cond.true112

cond.true112:                                     ; preds = %for.cond106
  %call114 = tail call i32 @Perl_mg_size(%struct.sv* %43) #2
  %conv115 = sext i32 %call114 to i64
  br label %cond.end120

cond.false116:                                    ; preds = %for.cond106
  %sv_any118 = bitcast %struct.sv* %43 to %struct.xpvav**
  %45 = load %struct.xpvav** %sv_any118, align 8, !tbaa !0
  %xav_fill119 = getelementptr inbounds %struct.xpvav* %45, i64 0, i32 1
  %46 = load i64* %xav_fill119, align 8, !tbaa !4
  br label %cond.end120

cond.end120:                                      ; preds = %cond.false116, %cond.true112
  %cond121 = phi i64 [ %conv115, %cond.true112 ], [ %46, %cond.false116 ]
  %cmp122 = icmp slt i64 %indvars.iv364, %cond121
  br i1 %cmp122, label %for.body124, label %for.end186

for.body124:                                      ; preds = %cond.end120
  %arrayidx126 = getelementptr inbounds %struct.sv** %27, i64 %indvars.iv364
  %47 = load %struct.sv** %arrayidx126, align 8, !tbaa !0
  %sv_flags127 = getelementptr inbounds %struct.sv* %47, i64 0, i32 2
  %48 = load i32* %sv_flags127, align 4, !tbaa !3
  %and128 = and i32 %48, 524288
  %tobool129 = icmp eq i32 %and128, 0
  br i1 %tobool129, label %if.else135, label %if.then130

if.then130:                                       ; preds = %for.body124
  %inc131 = add nsw i32 %levelref.3, 1
  %call132 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #2
  %49 = load %struct.sv** %arrayidx126, align 8, !tbaa !0
  tail call void @Perl_do_sv_dump(i32 0, %struct._PerlIO** %call132, %struct.sv* %49, i32 0, i32 4, i8 signext 0, i64 0) #2
  br label %for.inc184

if.else135:                                       ; preds = %for.body124
  %and139 = and i32 %48, 255
  %cmp140 = icmp ugt i32 %and139, 9
  br i1 %cmp140, label %if.then142, label %if.else154

if.then142:                                       ; preds = %if.else135
  %and146 = and i32 %48, 1024
  %tobool147 = icmp eq i32 %and146, 0
  br i1 %tobool147, label %if.then148, label %for.inc184

if.then148:                                       ; preds = %if.then142
  %inc149 = add nsw i32 %levelref.3, 1
  %call150 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #2
  %50 = load %struct.sv** %arrayidx126, align 8, !tbaa !0
  tail call void @Perl_do_sv_dump(i32 0, %struct._PerlIO** %call150, %struct.sv* %50, i32 0, i32 4, i8 signext 0, i64 0) #2
  br label %for.inc184

if.else154:                                       ; preds = %if.else135
  %cmp159 = icmp ugt i32 %and139, 3
  br i1 %cmp159, label %land.lhs.true161, label %for.inc184

land.lhs.true161:                                 ; preds = %if.else154
  %sv_any164 = getelementptr inbounds %struct.sv* %47, i64 0, i32 0
  %51 = load i8** %sv_any164, align 8, !tbaa !0
  %xpv_len165 = getelementptr inbounds i8* %51, i64 16
  %52 = bitcast i8* %xpv_len165 to i64*
  %53 = load i64* %52, align 8, !tbaa !4
  %tobool166 = icmp eq i64 %53, 0
  br i1 %tobool166, label %for.inc184, label %if.then167

if.then167:                                       ; preds = %land.lhs.true161
  %inc168 = add nsw i32 %levels.0, 1
  %sv_refcnt175 = getelementptr inbounds %struct.sv* %47, i64 0, i32 1
  %54 = load i32* %sv_refcnt175, align 4, !tbaa !3
  %conv176 = zext i32 %54 to i64
  %div177 = udiv i64 %53, %conv176
  %conv178309 = zext i32 %levelm.0 to i64
  %add179 = add i64 %div177, %conv178309
  %conv180 = trunc i64 %add179 to i32
  br label %for.inc184

for.inc184:                                       ; preds = %if.then142, %land.lhs.true161, %if.then130, %if.else154, %if.then167, %if.then148
  %levelm.1 = phi i32 [ %levelm.0, %if.then130 ], [ %levelm.0, %if.then142 ], [ %levelm.0, %if.then148 ], [ %conv180, %if.then167 ], [ %levelm.0, %land.lhs.true161 ], [ %levelm.0, %if.else154 ]
  %levelref.4 = phi i32 [ %inc131, %if.then130 ], [ %levelref.3, %if.then142 ], [ %inc149, %if.then148 ], [ %levelref.3, %if.then167 ], [ %levelref.3, %land.lhs.true161 ], [ %levelref.3, %if.else154 ]
  %levels.1 = phi i32 [ %levels.0, %if.then130 ], [ %levels.0, %if.then142 ], [ %levels.0, %if.then148 ], [ %inc168, %if.then167 ], [ %levels.0, %land.lhs.true161 ], [ %levels.0, %if.else154 ]
  %dumpit.2 = phi i32 [ 1, %if.then130 ], [ %dumpit.1, %if.then142 ], [ 1, %if.then148 ], [ %dumpit.1, %if.then167 ], [ %dumpit.1, %land.lhs.true161 ], [ %dumpit.1, %if.else154 ]
  %indvars.iv.next365 = add i64 %indvars.iv364, 1
  br label %for.cond106

for.end186:                                       ; preds = %cond.end120
  %call187 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #2
  %call188 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call187, i8* getelementptr inbounds ([75 x i8]* @.str4, i64 0, i64 0), i32 %inc, i32 %levelref.3, i32 %levelm.0, i32 %levels.0, i32 %conv49, i32 %levelas.2) #2
  %add189 = add nsw i32 %levelm.0, %totm.0.ph
  %add190 = add nsw i32 %conv49, %tota.0.ph
  %add191 = add nsw i32 %levelas.2, %totas.0.ph
  %add192 = add nsw i32 %levels.0, %tots.0.ph
  %add193 = add nsw i32 %levelref.3, %totref.0.ph
  %tobool194 = icmp eq i32 %dumpit.1, 0
  br i1 %tobool194, label %while.cond.outer, label %if.then195

if.then195:                                       ; preds = %for.end186
  %call196 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #2
  tail call void @Perl_do_sv_dump(i32 0, %struct._PerlIO** %call196, %struct.sv* %sv.0322, i32 0, i32 2, i8 signext 0, i64 0) #2
  br label %while.cond.outer

while.end:                                        ; preds = %cond.end
  %55 = load i32* %18, align 4, !tbaa !3
  %and199 = and i32 %55, 32768
  %tobool200 = icmp eq i32 %and199, 0
  br i1 %tobool200, label %cond.false204, label %cond.true201

cond.true201:                                     ; preds = %while.end
  %call202 = tail call i32 @Perl_mg_size(%struct.sv* %17) #2
  %conv203 = sext i32 %call202 to i64
  br label %cond.end207

cond.false204:                                    ; preds = %while.end
  %56 = load %struct.xpvav** %sv_any25, align 8, !tbaa !0
  %xav_fill206 = getelementptr inbounds %struct.xpvav* %56, i64 0, i32 1
  %57 = load i64* %xav_fill206, align 8, !tbaa !4
  br label %cond.end207

cond.end207:                                      ; preds = %cond.false204, %cond.true201
  %cond208 = phi i64 [ %conv203, %cond.true201 ], [ %57, %cond.false204 ]
  %cmp209 = icmp sgt i64 %cond208, 1
  br i1 %cmp209, label %if.then211, label %if.end214

if.then211:                                       ; preds = %cond.end207
  %call212 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #2
  %call213 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call212, i8* getelementptr inbounds ([71 x i8]* @.str5, i64 0, i64 0), i32 %totref.0.ph, i32 %totm.0.ph, i32 %tots.0.ph, i32 %tota.0.ph, i32 %totas.0.ph) #2
  br label %if.end214

if.end214:                                        ; preds = %if.then211, %cond.end207
  %add215 = add nsw i32 %totref.0.ph, %tref.1.ph338
  %add216 = add nsw i32 %totm.0.ph, %tm.1.ph339
  %add217 = add nsw i32 %tots.0.ph, %ts.1.ph337
  %add218 = add nsw i32 %tota.0.ph, %ta.1.ph336
  %add219 = add nsw i32 %totas.0.ph, %tas.1.ph335
  %sv.0319 = getelementptr inbounds %struct.sv* %sv.0322, i64 1
  %cmp320 = icmp ult %struct.sv* %sv.0319, %arrayidx
  br i1 %cmp320, label %for.body3.lr.ph, label %for.inc223

for.inc223:                                       ; preds = %for.body, %if.end214, %for.cond2.backedge
  %tm.1.ph332 = phi i32 [ %tm.1.ph339, %for.cond2.backedge ], [ %tm.0351, %for.body ], [ %add216, %if.end214 ]
  %tref.1.ph330 = phi i32 [ %tref.1.ph338, %for.cond2.backedge ], [ %tref.0350, %for.body ], [ %add215, %if.end214 ]
  %ts.1.ph328 = phi i32 [ %ts.1.ph337, %for.cond2.backedge ], [ %ts.0349, %for.body ], [ %add217, %if.end214 ]
  %ta.1.ph326 = phi i32 [ %ta.1.ph336, %for.cond2.backedge ], [ %ta.0348, %for.body ], [ %add218, %if.end214 ]
  %tas.1.ph324 = phi i32 [ %tas.1.ph335, %for.cond2.backedge ], [ %tas.0347, %for.body ], [ %add219, %if.end214 ]
  %sv_any224 = getelementptr inbounds %struct.sv* %sva.0352, i64 0, i32 0
  %58 = load i8** %sv_any224, align 8, !tbaa !0
  %59 = bitcast i8* %58 to %struct.sv*
  %tobool = icmp eq i8* %58, null
  br i1 %tobool, label %for.end225, label %for.body

for.end225:                                       ; preds = %for.inc223, %entry
  %tm.0.lcssa = phi i32 [ 0, %entry ], [ %tm.1.ph332, %for.inc223 ]
  %tref.0.lcssa = phi i32 [ 0, %entry ], [ %tref.1.ph330, %for.inc223 ]
  %ts.0.lcssa = phi i32 [ 0, %entry ], [ %ts.1.ph328, %for.inc223 ]
  %ta.0.lcssa = phi i32 [ 0, %entry ], [ %ta.1.ph326, %for.inc223 ]
  %tas.0.lcssa = phi i32 [ 0, %entry ], [ %tas.1.ph324, %for.inc223 ]
  %call226 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #2
  %call227 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call226, i8* getelementptr inbounds ([67 x i8]* @.str6, i64 0, i64 0), i32 %tref.0.lcssa, i32 %tm.0.lcssa, i32 %ts.0.lcssa, i32 %ta.0.lcssa, i32 %tas.0.lcssa) #2
  ret %struct.sv* %call1
}

; Function Attrs: optsize
declare %struct.sv* @Perl_newRV_noinc(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.av* @Perl_newAV() #1

; Function Attrs: optsize
declare void @Perl_do_gvgv_dump(i32, %struct._PerlIO**, i8*, %struct.gv*) #1

; Function Attrs: optsize
declare %struct._PerlIO** @Perl_PerlIO_stderr() #1

; Function Attrs: optsize
declare i32 @PerlIO_printf(%struct._PerlIO**, i8*, ...) #1

; Function Attrs: optsize
declare i32 @Perl_mg_size(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_do_sv_dump(i32, %struct._PerlIO**, %struct.sv*, i32, i32, i8 signext, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @fill_mstats(%struct.sv* nocapture %sv, i32 %level) #0 {
entry:
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([41 x i8]* @.str7, i64 0, i64 0)) #2
  ret void
}

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @mstats_fillhash(%struct.sv* nocapture %sv, i32 %level) #0 {
entry:
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([41 x i8]* @.str7, i64 0, i64 0)) #2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @mstats2hash(%struct.sv* nocapture %sv, %struct.sv* nocapture %rv, i32 %level) #0 {
entry:
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([41 x i8]* @.str7, i64 0, i64 0)) #2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_Devel__Peek_mstat(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sub.ptr.div433 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div433 to i32
  %4 = icmp ugt i32 %conv5, 1
  br i1 %4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([54 x i8]* @.str8, i64 0, i64 0)) #2
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %cmp9 = icmp slt i32 %conv5, 1
  %add = shl nsw i64 %idx.ext, 32
  %sext34.pre = add i64 %add, 4294967296
  %idx.ext24.pre = ashr exact i64 %sext34.pre, 32
  br i1 %cmp9, label %if.end21, label %if.else

if.else:                                          ; preds = %if.end
  %5 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idx.ext24.pre
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %7, 262144
  %cmp13 = icmp eq i32 %and, 0
  br i1 %cmp13, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.else
  %sv_any = getelementptr inbounds %struct.sv* %6, i64 0, i32 0
  %8 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %8 to i8**
  %9 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %if.end21

cond.false:                                       ; preds = %if.else
  %call = tail call i8* @Perl_sv_2pv_nolen(%struct.sv* %6) #2
  br label %if.end21

if.end21:                                         ; preds = %if.end, %cond.true, %cond.false
  %str.0 = phi i8* [ %9, %cond.true ], [ %call, %cond.false ], [ getelementptr inbounds ([21 x i8]* @.str9, i64 0, i64 0), %if.end ]
  %call22 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #2
  %call23 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call22, i8* getelementptr inbounds ([45 x i8]* @.str10, i64 0, i64 0), i8* %str.0) #2
  %10 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr25.sum = add i64 %idx.ext24.pre, -1
  %add.ptr26 = getelementptr inbounds %struct.sv** %10, i64 %add.ptr25.sum
  store %struct.sv** %add.ptr26, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_nolen(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_Devel__Peek_fill_mstats(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sub.ptr.div434 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div434 to i32
  %conv5.off = add i32 %conv5, -1
  %4 = icmp ugt i32 %conv5.off, 1
  br i1 %4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([46 x i8]* @.str11, i64 0, i64 0)) #2
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %cmp10 = icmp slt i32 %conv5, 2
  br i1 %cmp10, label %if.end23, label %if.else

if.else:                                          ; preds = %if.end
  %5 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sext35 = add i64 %add.ptr.idx, 8589934592
  %idxprom14 = ashr exact i64 %sext35, 32
  %arrayidx15 = getelementptr inbounds %struct.sv** %5, i64 %idxprom14
  %6 = load %struct.sv** %arrayidx15, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %7, 65536
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %if.end23

cond.false:                                       ; preds = %if.else
  %call = tail call i64 @Perl_sv_2iv(%struct.sv* %6) #2
  br label %if.end23

if.end23:                                         ; preds = %cond.false, %if.else, %if.end
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([41 x i8]* @.str7, i64 0, i64 0)) #2
  %8 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr25.sum = add i64 %idxprom, -1
  %add.ptr26 = getelementptr inbounds %struct.sv** %8, i64 %add.ptr25.sum
  store %struct.sv** %add.ptr26, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i64 @Perl_sv_2iv(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_Devel__Peek_mstats_fillhash(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sub.ptr.div434 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div434 to i32
  %conv5.off = add i32 %conv5, -1
  %4 = icmp ugt i32 %conv5.off, 1
  br i1 %4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([50 x i8]* @.str12, i64 0, i64 0)) #2
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %cmp10 = icmp slt i32 %conv5, 2
  br i1 %cmp10, label %if.end23, label %if.else

if.else:                                          ; preds = %if.end
  %5 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sext35 = add i64 %add.ptr.idx, 8589934592
  %idxprom14 = ashr exact i64 %sext35, 32
  %arrayidx15 = getelementptr inbounds %struct.sv** %5, i64 %idxprom14
  %6 = load %struct.sv** %arrayidx15, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %7, 65536
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %if.end23

cond.false:                                       ; preds = %if.else
  %call = tail call i64 @Perl_sv_2iv(%struct.sv* %6) #2
  br label %if.end23

if.end23:                                         ; preds = %cond.false, %if.else, %if.end
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([41 x i8]* @.str7, i64 0, i64 0)) #2
  %8 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr25.sum = add i64 %idxprom, -1
  %add.ptr26 = getelementptr inbounds %struct.sv** %8, i64 %add.ptr25.sum
  store %struct.sv** %add.ptr26, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_Devel__Peek_mstats2hash(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sub.ptr.div438 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div438 to i32
  %conv5.off = add i32 %conv5, -2
  %4 = icmp ugt i32 %conv5.off, 1
  br i1 %4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([50 x i8]* @.str13, i64 0, i64 0)) #2
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %cmp13 = icmp slt i32 %conv5, 3
  br i1 %cmp13, label %if.end26, label %if.else

if.else:                                          ; preds = %if.end
  %5 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sext40 = add i64 %add.ptr.idx, 12884901888
  %idxprom17 = ashr exact i64 %sext40, 32
  %arrayidx18 = getelementptr inbounds %struct.sv** %5, i64 %idxprom17
  %6 = load %struct.sv** %arrayidx18, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %7, 65536
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %if.end26

cond.false:                                       ; preds = %if.else
  %call = tail call i64 @Perl_sv_2iv(%struct.sv* %6) #2
  br label %if.end26

if.end26:                                         ; preds = %cond.false, %if.else, %if.end
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([41 x i8]* @.str7, i64 0, i64 0)) #2
  %8 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr28.sum = add i64 %idxprom, -1
  %add.ptr29 = getelementptr inbounds %struct.sv** %8, i64 %add.ptr28.sum
  store %struct.sv** %add.ptr29, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_Devel__Peek_Dump(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sub.ptr.div4112 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div4112 to i32
  %conv5.off = add i32 %conv5, -1
  %4 = icmp ugt i32 %conv5.off, 1
  br i1 %4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str14, i64 0, i64 0)) #2
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = shl i64 %sub.ptr.sub3, 29
  %idx.ext9 = ashr exact i64 %sext, 32
  %idx.neg = sub i64 0, %idx.ext9
  %add.ptr10 = getelementptr inbounds %struct.sv** %0, i64 %idx.neg
  %sext113 = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext113, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %cmp12 = icmp slt i32 %conv5, 2
  br i1 %cmp12, label %if.end25, label %if.else

if.else:                                          ; preds = %if.end
  %sext114 = add i64 %add.ptr.idx, 8589934592
  %idxprom16 = ashr exact i64 %sext114, 32
  %arrayidx17 = getelementptr inbounds %struct.sv** %5, i64 %idxprom16
  %7 = load %struct.sv** %arrayidx17, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %8 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %8, 65536
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.else
  %sv_any = getelementptr inbounds %struct.sv* %7, i64 0, i32 0
  %9 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %9, i64 24
  %10 = bitcast i8* %xiv_iv to i64*
  %11 = load i64* %10, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call = tail call i64 @Perl_sv_2iv(%struct.sv* %7) #2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %11, %cond.true ], [ %call, %cond.false ]
  %conv24 = trunc i64 %cond to i32
  br label %if.end25

if.end25:                                         ; preds = %if.end, %cond.end
  %lim.0 = phi i32 [ %conv24, %cond.end ], [ 4, %if.end ]
  %call26 = tail call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([22 x i8]* @.str15, i64 0, i64 0), i32 0) #2
  %tobool27 = icmp eq %struct.sv* %call26, null
  br i1 %tobool27, label %cond.end40, label %cond.true28

cond.true28:                                      ; preds = %if.end25
  %sv_flags29 = getelementptr inbounds %struct.sv* %call26, i64 0, i32 2
  %12 = load i32* %sv_flags29, align 4, !tbaa !3
  %and30 = and i32 %12, 65536
  %tobool31 = icmp eq i32 %and30, 0
  br i1 %tobool31, label %cond.false35, label %cond.true32

cond.true32:                                      ; preds = %cond.true28
  %sv_any33 = getelementptr inbounds %struct.sv* %call26, i64 0, i32 0
  %13 = load i8** %sv_any33, align 8, !tbaa !0
  %xiv_iv34 = getelementptr inbounds i8* %13, i64 24
  %14 = bitcast i8* %xiv_iv34 to i64*
  %15 = load i64* %14, align 8, !tbaa !4
  br label %cond.end40

cond.false35:                                     ; preds = %cond.true28
  %call36 = tail call i64 @Perl_sv_2iv(%struct.sv* %call26) #2
  br label %cond.end40

cond.end40:                                       ; preds = %if.end25, %cond.true32, %cond.false35
  %cond41 = phi i64 [ %15, %cond.true32 ], [ %call36, %cond.false35 ], [ 0, %if.end25 ]
  %call42 = tail call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([22 x i8]* @.str16, i64 0, i64 0), i32 0) #2
  %16 = load i32* @PL_dumpindent, align 4, !tbaa !3
  store i32 2, i32* @PL_dumpindent, align 4, !tbaa !3
  %call43 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #2
  %tobool44 = icmp eq %struct.sv* %call42, null
  br i1 %tobool44, label %land.end94, label %cond.false47

cond.false47:                                     ; preds = %cond.end40
  %sv_flags48 = getelementptr inbounds %struct.sv* %call42, i64 0, i32 2
  %17 = load i32* %sv_flags48, align 4, !tbaa !3
  %and49 = and i32 %17, 262144
  %tobool50 = icmp eq i32 %and49, 0
  br i1 %tobool50, label %cond.false65, label %cond.true51

cond.true51:                                      ; preds = %cond.false47
  %sv_any52 = getelementptr inbounds %struct.sv* %call42, i64 0, i32 0
  %18 = load i8** %sv_any52, align 8, !tbaa !0
  %19 = bitcast i8* %18 to %struct.xpv*
  store %struct.xpv* %19, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool53 = icmp eq i8* %18, null
  br i1 %tobool53, label %land.end63, label %land.rhs54

land.rhs54:                                       ; preds = %cond.true51
  %xpv_cur = getelementptr inbounds i8* %18, i64 8
  %20 = bitcast i8* %xpv_cur to i64*
  %21 = load i64* %20, align 8, !tbaa !4
  %cmp55 = icmp ugt i64 %21, 1
  br i1 %cmp55, label %land.end63, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs54
  %tobool58 = icmp eq i64 %21, 0
  br i1 %tobool58, label %land.end63, label %land.rhs59

land.rhs59:                                       ; preds = %lor.rhs
  %xpv_pv = bitcast i8* %18 to i8**
  %22 = load i8** %xpv_pv, align 8, !tbaa !0
  %23 = load i8* %22, align 1, !tbaa !1
  %cmp61 = icmp ne i8 %23, 48
  br label %land.end63

land.end63:                                       ; preds = %lor.rhs, %cond.true51, %land.rhs54, %land.rhs59
  %24 = phi i1 [ false, %cond.true51 ], [ true, %land.rhs54 ], [ false, %lor.rhs ], [ %cmp61, %land.rhs59 ]
  %cond64 = zext i1 %24 to i32
  br label %cond.end91

cond.false65:                                     ; preds = %cond.false47
  %and67 = and i32 %17, 65536
  %tobool68 = icmp eq i32 %and67, 0
  br i1 %tobool68, label %cond.false74, label %cond.true69

cond.true69:                                      ; preds = %cond.false65
  %sv_any70 = getelementptr inbounds %struct.sv* %call42, i64 0, i32 0
  %25 = load i8** %sv_any70, align 8, !tbaa !0
  %xiv_iv71 = getelementptr inbounds i8* %25, i64 24
  %26 = bitcast i8* %xiv_iv71 to i64*
  %27 = load i64* %26, align 8, !tbaa !4
  %cmp72 = icmp ne i64 %27, 0
  %conv73 = zext i1 %cmp72 to i32
  br label %cond.end91

cond.false74:                                     ; preds = %cond.false65
  %and76 = and i32 %17, 131072
  %tobool77 = icmp eq i32 %and76, 0
  br i1 %tobool77, label %cond.false82, label %cond.true78

cond.true78:                                      ; preds = %cond.false74
  %sv_any79 = getelementptr inbounds %struct.sv* %call42, i64 0, i32 0
  %28 = load i8** %sv_any79, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %28, i64 32
  %29 = bitcast i8* %xnv_nv to double*
  %30 = load double* %29, align 8, !tbaa !5
  %cmp80 = fcmp une double %30, 0.000000e+00
  %conv81 = zext i1 %cmp80 to i32
  br label %cond.end91

cond.false82:                                     ; preds = %cond.false74
  %call83 = tail call signext i8 @Perl_sv_2bool(%struct.sv* %call42) #2
  %conv84 = sext i8 %call83 to i32
  br label %cond.end91

cond.end91:                                       ; preds = %land.end63, %cond.true78, %cond.false82, %cond.true69
  %cond92 = phi i32 [ %cond64, %land.end63 ], [ %conv73, %cond.true69 ], [ %conv81, %cond.true78 ], [ %conv84, %cond.false82 ]
  %tobool93 = icmp ne i32 %cond92, 0
  br label %land.end94

land.end94:                                       ; preds = %cond.end40, %cond.end91
  %31 = phi i1 [ false, %cond.end40 ], [ %tobool93, %cond.end91 ]
  %conv95 = zext i1 %31 to i8
  tail call void @Perl_do_sv_dump(i32 0, %struct._PerlIO** %call43, %struct.sv* %6, i32 0, i32 %lim.0, i8 signext %conv95, i64 %cond41) #2
  store i32 %16, i32* @PL_dumpindent, align 4, !tbaa !3
  store %struct.sv** %add.ptr10, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare %struct.sv* @Perl_get_sv(i8*, i32) #1

; Function Attrs: optsize
declare signext i8 @Perl_sv_2bool(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_Devel__Peek_DumpArray(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sub.ptr.div4118 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div4118 to i32
  %cmp = icmp slt i32 %conv5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([40 x i8]* @.str17, i64 0, i64 0)) #2
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = phi %struct.sv** [ %.pre, %if.then ], [ %1, %entry ]
  %sext = shl i64 %sub.ptr.sub3, 29
  %idx.ext7 = ashr exact i64 %sext, 32
  %idx.neg = sub i64 0, %idx.ext7
  %add.ptr8 = getelementptr inbounds %struct.sv** %0, i64 %idx.neg
  %sext119 = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext119, 32
  %arrayidx = getelementptr inbounds %struct.sv** %4, i64 %idxprom
  %5 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %6 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %6, 65536
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %sv_any = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %7 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %7, i64 24
  %8 = bitcast i8* %xiv_iv to i64*
  %9 = load i64* %8, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = tail call i64 @Perl_sv_2iv(%struct.sv* %5) #2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %9, %cond.true ], [ %call, %cond.false ]
  %conv16 = trunc i64 %cond to i32
  %call17 = tail call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([22 x i8]* @.str15, i64 0, i64 0), i32 0) #2
  %tobool18 = icmp eq %struct.sv* %call17, null
  br i1 %tobool18, label %cond.end31, label %cond.true19

cond.true19:                                      ; preds = %cond.end
  %sv_flags20 = getelementptr inbounds %struct.sv* %call17, i64 0, i32 2
  %10 = load i32* %sv_flags20, align 4, !tbaa !3
  %and21 = and i32 %10, 65536
  %tobool22 = icmp eq i32 %and21, 0
  br i1 %tobool22, label %cond.false26, label %cond.true23

cond.true23:                                      ; preds = %cond.true19
  %sv_any24 = getelementptr inbounds %struct.sv* %call17, i64 0, i32 0
  %11 = load i8** %sv_any24, align 8, !tbaa !0
  %xiv_iv25 = getelementptr inbounds i8* %11, i64 24
  %12 = bitcast i8* %xiv_iv25 to i64*
  %13 = load i64* %12, align 8, !tbaa !4
  br label %cond.end31

cond.false26:                                     ; preds = %cond.true19
  %call27 = tail call i64 @Perl_sv_2iv(%struct.sv* %call17) #2
  br label %cond.end31

cond.end31:                                       ; preds = %cond.end, %cond.true23, %cond.false26
  %cond32 = phi i64 [ %13, %cond.true23 ], [ %call27, %cond.false26 ], [ 0, %cond.end ]
  %call33 = tail call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([22 x i8]* @.str16, i64 0, i64 0), i32 0) #2
  %14 = load i32* @PL_dumpindent, align 4, !tbaa !3
  store i32 2, i32* @PL_dumpindent, align 4, !tbaa !3
  %cmp35120 = icmp sgt i64 %sext, 4294967296
  br i1 %cmp35120, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %cond.end31
  %tobool46 = icmp eq %struct.sv* %call33, null
  %sv_flags50 = getelementptr inbounds %struct.sv* %call33, i64 0, i32 2
  %sv_any81 = getelementptr inbounds %struct.sv* %call33, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %land.end96
  %i.0121 = phi i64 [ 1, %for.body.lr.ph ], [ %inc, %land.end96 ]
  %call37 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #2
  %sub = add nsw i64 %i.0121, -1
  %add39 = add nsw i64 %i.0121, %idxprom
  %15 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx40 = getelementptr inbounds %struct.sv** %15, i64 %add39
  %16 = load %struct.sv** %arrayidx40, align 8, !tbaa !0
  %17 = ptrtoint %struct.sv* %16 to i64
  %call41 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call37, i8* getelementptr inbounds ([20 x i8]* @.str18, i64 0, i64 0), i64 %sub, i64 %17) #2
  %call42 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #2
  %18 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx45 = getelementptr inbounds %struct.sv** %18, i64 %add39
  %19 = load %struct.sv** %arrayidx45, align 8, !tbaa !0
  br i1 %tobool46, label %land.end96, label %cond.false49

cond.false49:                                     ; preds = %for.body
  %20 = load i32* %sv_flags50, align 4, !tbaa !3
  %and51 = and i32 %20, 262144
  %tobool52 = icmp eq i32 %and51, 0
  br i1 %tobool52, label %cond.false67, label %cond.true53

cond.true53:                                      ; preds = %cond.false49
  %21 = load i8** %sv_any81, align 8, !tbaa !0
  %22 = bitcast i8* %21 to %struct.xpv*
  store %struct.xpv* %22, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool55 = icmp eq i8* %21, null
  br i1 %tobool55, label %land.end65, label %land.rhs56

land.rhs56:                                       ; preds = %cond.true53
  %xpv_cur = getelementptr inbounds i8* %21, i64 8
  %23 = bitcast i8* %xpv_cur to i64*
  %24 = load i64* %23, align 8, !tbaa !4
  %cmp57 = icmp ugt i64 %24, 1
  br i1 %cmp57, label %land.end65, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs56
  %tobool60 = icmp eq i64 %24, 0
  br i1 %tobool60, label %land.end65, label %land.rhs61

land.rhs61:                                       ; preds = %lor.rhs
  %xpv_pv = bitcast i8* %21 to i8**
  %25 = load i8** %xpv_pv, align 8, !tbaa !0
  %26 = load i8* %25, align 1, !tbaa !1
  %cmp63 = icmp ne i8 %26, 48
  br label %land.end65

land.end65:                                       ; preds = %lor.rhs, %cond.true53, %land.rhs56, %land.rhs61
  %27 = phi i1 [ false, %cond.true53 ], [ true, %land.rhs56 ], [ false, %lor.rhs ], [ %cmp63, %land.rhs61 ]
  %cond66 = zext i1 %27 to i32
  br label %cond.end93

cond.false67:                                     ; preds = %cond.false49
  %and69 = and i32 %20, 65536
  %tobool70 = icmp eq i32 %and69, 0
  br i1 %tobool70, label %cond.false76, label %cond.true71

cond.true71:                                      ; preds = %cond.false67
  %28 = load i8** %sv_any81, align 8, !tbaa !0
  %xiv_iv73 = getelementptr inbounds i8* %28, i64 24
  %29 = bitcast i8* %xiv_iv73 to i64*
  %30 = load i64* %29, align 8, !tbaa !4
  %cmp74 = icmp ne i64 %30, 0
  %conv75 = zext i1 %cmp74 to i32
  br label %cond.end93

cond.false76:                                     ; preds = %cond.false67
  %and78 = and i32 %20, 131072
  %tobool79 = icmp eq i32 %and78, 0
  br i1 %tobool79, label %cond.false84, label %cond.true80

cond.true80:                                      ; preds = %cond.false76
  %31 = load i8** %sv_any81, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %31, i64 32
  %32 = bitcast i8* %xnv_nv to double*
  %33 = load double* %32, align 8, !tbaa !5
  %cmp82 = fcmp une double %33, 0.000000e+00
  %conv83 = zext i1 %cmp82 to i32
  br label %cond.end93

cond.false84:                                     ; preds = %cond.false76
  %call85 = tail call signext i8 @Perl_sv_2bool(%struct.sv* %call33) #2
  %conv86 = sext i8 %call85 to i32
  br label %cond.end93

cond.end93:                                       ; preds = %land.end65, %cond.true80, %cond.false84, %cond.true71
  %cond94 = phi i32 [ %cond66, %land.end65 ], [ %conv75, %cond.true71 ], [ %conv83, %cond.true80 ], [ %conv86, %cond.false84 ]
  %tobool95 = icmp ne i32 %cond94, 0
  br label %land.end96

land.end96:                                       ; preds = %for.body, %cond.end93
  %34 = phi i1 [ false, %for.body ], [ %tobool95, %cond.end93 ]
  %conv97 = zext i1 %34 to i8
  tail call void @Perl_do_sv_dump(i32 0, %struct._PerlIO** %call42, %struct.sv* %19, i32 0, i32 %conv16, i8 signext %conv97, i64 %cond32) #2
  %inc = add nsw i64 %i.0121, 1
  %cmp35 = icmp slt i64 %inc, %idx.ext7
  br i1 %cmp35, label %for.body, label %for.end

for.end:                                          ; preds = %land.end96, %cond.end31
  store i32 %14, i32* @PL_dumpindent, align 4, !tbaa !3
  store %struct.sv** %add.ptr8, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_Devel__Peek_DumpProg(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([31 x i8]* @.str19, i64 0, i64 0)) #2
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %sext = shl i64 %sub.ptr.sub3, 29
  %idx.ext7 = ashr exact i64 %sext, 32
  %idx.neg = sub i64 0, %idx.ext7
  %add.ptr8 = getelementptr inbounds %struct.sv** %0, i64 %idx.neg
  %5 = load i32* @PL_dumpindent, align 4, !tbaa !3
  tail call void (i8*, ...)* @Perl_warn(i8* getelementptr inbounds ([17 x i8]* @.str20, i64 0, i64 0), i32 %5) #2
  %6 = load %struct.op** @PL_main_root, align 8, !tbaa !0
  %tobool = icmp eq %struct.op* %6, null
  br i1 %tobool, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end
  tail call void @Perl_op_dump(%struct.op* %6) #2
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then9
  store %struct.sv** %add.ptr8, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @Perl_warn(i8*, ...) #1

; Function Attrs: optsize
declare void @Perl_op_dump(%struct.op*) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_Devel__Peek_SvREFCNT(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([33 x i8]* @.str21, i64 0, i64 0)) #2
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %7 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %7, i64 0, i32 7
  %8 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %8, 32
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %op_targ = getelementptr inbounds %struct.op* %7, i64 0, i32 3
  %9 = load i64* %op_targ, align 8, !tbaa !4
  %10 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds %struct.sv** %10, i64 %9
  %11 = load %struct.sv** %arrayidx9, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = tail call %struct.sv* @Perl_sv_newmortal() #2
  %.pre32 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %12 = phi %struct.sv** [ %5, %cond.true ], [ %.pre32, %cond.false ]
  %cond = phi %struct.sv* [ %11, %cond.true ], [ %call, %cond.false ]
  %sv_refcnt = getelementptr inbounds %struct.sv* %6, i64 0, i32 1
  %13 = load i32* %sv_refcnt, align 4, !tbaa !3
  %conv13 = sext i32 %13 to i64
  tail call void @Perl_sv_setiv(%struct.sv* %cond, i64 %conv13) #2
  %sv_flags = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %14 = load i32* %sv_flags, align 4, !tbaa !3
  %and14 = and i32 %14, 16384
  %tobool15 = icmp eq i32 %and14, 0
  br i1 %tobool15, label %if.end18, label %if.then16

if.then16:                                        ; preds = %cond.end
  %call17 = tail call i32 @Perl_mg_set(%struct.sv* %cond) #2
  br label %if.end18

if.end18:                                         ; preds = %cond.end, %if.then16
  %incdec.ptr19 = getelementptr inbounds %struct.sv** %12, i64 %idxprom
  store %struct.sv* %cond, %struct.sv** %incdec.ptr19, align 8, !tbaa !0
  %15 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr21 = getelementptr inbounds %struct.sv** %15, i64 %idxprom
  store %struct.sv** %add.ptr21, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_newmortal() #1

; Function Attrs: optsize
declare void @Perl_sv_setiv(%struct.sv*, i64) #1

; Function Attrs: optsize
declare i32 @Perl_mg_set(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_Devel__Peek_SvREFCNT_inc(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([37 x i8]* @.str22, i64 0, i64 0)) #2
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = shl i64 %sub.ptr.sub3, 29
  %idx.ext7 = ashr exact i64 %sext, 32
  %sext19 = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext19, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  store %struct.sv* %6, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %6, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %sv_refcnt = getelementptr inbounds %struct.sv* %6, i64 0, i32 1
  %7 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc = add i32 %7, 1
  store i32 %inc, i32* %sv_refcnt, align 4, !tbaa !3
  br label %land.end

land.end:                                         ; preds = %if.end, %land.rhs
  %add.ptr8.sum = sub i64 1, %idx.ext7
  %incdec.ptr11 = getelementptr inbounds %struct.sv** %0, i64 %add.ptr8.sum
  store %struct.sv* %6, %struct.sv** %incdec.ptr11, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr11, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_Devel__Peek_SvREFCNT_dec(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([37 x i8]* @.str23, i64 0, i64 0)) #2
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = shl i64 %sub.ptr.sub3, 29
  %idx.ext7 = ashr exact i64 %sext, 32
  %sext19 = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext19, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %6) #2
  %add.ptr8.sum = sub i64 1, %idx.ext7
  %incdec.ptr10 = getelementptr inbounds %struct.sv** %0, i64 %add.ptr8.sum
  store %struct.sv* %6, %struct.sv** %incdec.ptr10, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr10, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_free(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_Devel__Peek_DeadCode(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([31 x i8]* @.str24, i64 0, i64 0)) #2
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call = tail call %struct.sv* @DeadCode() #3
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %5 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  store %struct.sv* %call, %struct.sv** %arrayidx, align 8, !tbaa !0
  %6 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds %struct.sv** %6, i64 %idxprom
  %7 = load %struct.sv** %arrayidx10, align 8, !tbaa !0
  %call11 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %7) #2
  %8 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr13 = getelementptr inbounds %struct.sv** %8, i64 %idxprom
  store %struct.sv** %add.ptr13, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_Devel__Peek_CvGV(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([29 x i8]* @.str25, i64 0, i64 0)) #2
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %7, 524288
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %sv_any = getelementptr inbounds %struct.sv* %6, i64 0, i32 0
  %8 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %8 to %struct.sv**
  %9 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_flags9 = getelementptr inbounds %struct.sv* %9, i64 0, i32 2
  %10 = load i32* %sv_flags9, align 4, !tbaa !3
  %and10 = and i32 %10, 255
  %cmp11 = icmp eq i32 %and10, 12
  br i1 %cmp11, label %cond.true, label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  %sv_any15 = bitcast %struct.sv* %9 to %struct.xpvcv**
  %11 = load %struct.xpvcv** %sv_any15, align 8, !tbaa !0
  %xcv_gv = getelementptr inbounds %struct.xpvcv* %11, i64 0, i32 12
  %12 = load %struct.gv** %xcv_gv, align 8, !tbaa !0
  %13 = bitcast %struct.gv* %12 to %struct.sv*
  store %struct.sv* %13, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool16 = icmp eq %struct.gv* %12, null
  br i1 %tobool16, label %cond.end, label %land.rhs

land.rhs:                                         ; preds = %cond.true
  %14 = getelementptr inbounds %struct.gv* %12, i64 0, i32 1
  %15 = load i32* %14, align 4, !tbaa !3
  %inc = add i32 %15, 1
  store i32 %inc, i32* %14, align 4, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %land.rhs, %cond.true, %if.end, %land.lhs.true
  %cond = phi %struct.sv* [ @PL_sv_undef, %land.lhs.true ], [ @PL_sv_undef, %if.end ], [ %13, %cond.true ], [ %13, %land.rhs ]
  store %struct.sv* %cond, %struct.sv** %arrayidx, align 8, !tbaa !0
  %16 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx23 = getelementptr inbounds %struct.sv** %16, i64 %idxprom
  %17 = load %struct.sv** %arrayidx23, align 8, !tbaa !0
  %call = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %17) #2
  %18 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr25 = getelementptr inbounds %struct.sv** %18, i64 %idxprom
  store %struct.sv** %add.ptr25, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_Devel__Peek_runops_debug(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add = add nsw i64 %idx.ext, 1
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sub.ptr.div443 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div443 to i32
  %4 = icmp ugt i32 %conv5, 1
  br i1 %4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([43 x i8]* @.str26, i64 0, i64 0)) #2
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %cmp9 = icmp slt i32 %conv5, 1
  br i1 %cmp9, label %if.end20.thread, label %if.else

if.end20.thread:                                  ; preds = %if.end
  %5 = load i32 ()** @PL_runops, align 8, !tbaa !0
  %cmp.i45 = icmp eq i32 ()* %5, @Perl_runops_debug
  %sext44.pre = shl i64 %add, 32
  %idxprom26.pre = ashr exact i64 %sext44.pre, 32
  br label %_runops_debug.exit

if.else:                                          ; preds = %if.end
  %sext = shl i64 %add, 32
  %idxprom = ashr exact i64 %sext, 32
  %6 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %6, i64 %idxprom
  %7 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %8 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %8, 65536
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.else
  %sv_any = getelementptr inbounds %struct.sv* %7, i64 0, i32 0
  %9 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %9, i64 24
  %10 = bitcast i8* %xiv_iv to i64*
  %11 = load i64* %10, align 8, !tbaa !4
  br label %if.end20

cond.false:                                       ; preds = %if.else
  %call = tail call i64 @Perl_sv_2iv(%struct.sv* %7) #2
  br label %if.end20

if.end20:                                         ; preds = %cond.true, %cond.false
  %cond = phi i64 [ %11, %cond.true ], [ %call, %cond.false ]
  %conv19 = trunc i64 %cond to i32
  %12 = load i32 ()** @PL_runops, align 8, !tbaa !0
  %cmp.i = icmp eq i32 ()* %12, @Perl_runops_debug
  %cmp2.i = icmp sgt i32 %conv19, -1
  br i1 %cmp2.i, label %if.then.i, label %_runops_debug.exit

if.then.i:                                        ; preds = %if.end20
  %tobool.i = icmp ne i32 %conv19, 0
  %cond.i = select i1 %tobool.i, i32 ()* @Perl_runops_debug, i32 ()* @Perl_runops_standard
  store i32 ()* %cond.i, i32 ()** @PL_runops, align 8, !tbaa !0
  br label %_runops_debug.exit

_runops_debug.exit:                               ; preds = %if.end20, %if.end20.thread, %if.then.i
  %idxprom26.pre-phi = phi i64 [ %idxprom26.pre, %if.end20.thread ], [ %idxprom, %if.then.i ], [ %idxprom, %if.end20 ]
  %cmp.i48 = phi i1 [ %cmp.i45, %if.end20.thread ], [ %cmp.i, %if.then.i ], [ %cmp.i, %if.end20 ]
  %cond24 = select i1 %cmp.i48, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  %13 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx27 = getelementptr inbounds %struct.sv** %13, i64 %idxprom26.pre-phi
  store %struct.sv* %cond24, %struct.sv** %arrayidx27, align 8, !tbaa !0
  %14 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx30 = getelementptr inbounds %struct.sv** %14, i64 %idxprom26.pre-phi
  %15 = load %struct.sv** %arrayidx30, align 8, !tbaa !0
  %call31 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %15) #2
  %16 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr33 = getelementptr inbounds %struct.sv** %16, i64 %idxprom26.pre-phi
  store %struct.sv** %add.ptr33, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @boot_Devel__Peek(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %0, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %1 = load i32* %0, align 4, !tbaa !3
  %idx.ext37 = zext i32 %1 to i64
  %add.ptr.idx = shl nuw i64 %idx.ext37, 32
  %call = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([19 x i8]* @.str28, i64 0, i64 0), void (%struct.cv*)* @XS_Devel__Peek_mstat, i8* getelementptr inbounds ([54 x i8]* @.str27, i64 0, i64 0)) #2
  %call6 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([25 x i8]* @.str29, i64 0, i64 0), void (%struct.cv*)* @XS_Devel__Peek_fill_mstats, i8* getelementptr inbounds ([54 x i8]* @.str27, i64 0, i64 0)) #2
  %call7 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([29 x i8]* @.str30, i64 0, i64 0), void (%struct.cv*)* @XS_Devel__Peek_mstats_fillhash, i8* getelementptr inbounds ([54 x i8]* @.str27, i64 0, i64 0)) #2
  %2 = bitcast %struct.cv* %call7 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %2, i8* getelementptr inbounds ([5 x i8]* @.str31, i64 0, i64 0)) #2
  %call8 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([25 x i8]* @.str32, i64 0, i64 0), void (%struct.cv*)* @XS_Devel__Peek_mstats2hash, i8* getelementptr inbounds ([54 x i8]* @.str27, i64 0, i64 0)) #2
  %3 = bitcast %struct.cv* %call8 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %3, i8* getelementptr inbounds ([6 x i8]* @.str33, i64 0, i64 0)) #2
  %call9 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([18 x i8]* @.str34, i64 0, i64 0), void (%struct.cv*)* @XS_Devel__Peek_Dump, i8* getelementptr inbounds ([54 x i8]* @.str27, i64 0, i64 0)) #2
  %call10 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([23 x i8]* @.str35, i64 0, i64 0), void (%struct.cv*)* @XS_Devel__Peek_DumpArray, i8* getelementptr inbounds ([54 x i8]* @.str27, i64 0, i64 0)) #2
  %call11 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([22 x i8]* @.str36, i64 0, i64 0), void (%struct.cv*)* @XS_Devel__Peek_DumpProg, i8* getelementptr inbounds ([54 x i8]* @.str27, i64 0, i64 0)) #2
  %call12 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([22 x i8]* @.str37, i64 0, i64 0), void (%struct.cv*)* @XS_Devel__Peek_SvREFCNT, i8* getelementptr inbounds ([54 x i8]* @.str27, i64 0, i64 0)) #2
  %call13 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([26 x i8]* @.str38, i64 0, i64 0), void (%struct.cv*)* @XS_Devel__Peek_SvREFCNT_inc, i8* getelementptr inbounds ([54 x i8]* @.str27, i64 0, i64 0)) #2
  %call14 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([26 x i8]* @.str39, i64 0, i64 0), void (%struct.cv*)* @XS_Devel__Peek_SvREFCNT_dec, i8* getelementptr inbounds ([54 x i8]* @.str27, i64 0, i64 0)) #2
  %call15 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([22 x i8]* @.str40, i64 0, i64 0), void (%struct.cv*)* @XS_Devel__Peek_DeadCode, i8* getelementptr inbounds ([54 x i8]* @.str27, i64 0, i64 0)) #2
  %call16 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([18 x i8]* @.str41, i64 0, i64 0), void (%struct.cv*)* @XS_Devel__Peek_CvGV, i8* getelementptr inbounds ([54 x i8]* @.str27, i64 0, i64 0)) #2
  %call17 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([26 x i8]* @.str42, i64 0, i64 0), void (%struct.cv*)* @XS_Devel__Peek_runops_debug, i8* getelementptr inbounds ([54 x i8]* @.str27, i64 0, i64 0)) #2
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %4 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %4, i64 %idxprom
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx, align 8, !tbaa !0
  %5 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr20 = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  store %struct.sv** %add.ptr20, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #1

; Function Attrs: optsize
declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }
attributes #3 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}

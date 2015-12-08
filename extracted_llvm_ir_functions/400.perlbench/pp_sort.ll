; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/pp_sort.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
%struct.interpreter = type { i8 }
%struct.he = type { %struct.he*, %struct.hek*, %struct.sv* }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.pmop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op*, %struct.op*, %struct.op*, %struct.pmop*, %struct.regexp*, i32, i32, i8, %struct.hv* }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type opaque
%struct.reg_data = type opaque
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%struct._PerlIO = type opaque
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, void (%struct.cv*)*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%union.any = type { i8* }
%struct.jmpenv = type { [1 x %struct.__jmp_buf_tag], %struct.jmpenv*, i32, i8 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.stackinfo = type { %struct.av*, %struct.context*, i32, i32, i32, %struct.stackinfo*, %struct.stackinfo*, i32 }
%struct.context = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.block }
%struct.block = type { i32, %struct.cop*, i32, i32, i32, %struct.pmop*, i8, %union.anon.1 }
%union.anon.1 = type { %struct.block_loop }
%struct.block_loop = type { i8*, i32, %struct.op*, %struct.op*, %struct.op*, %struct.sv**, %struct.sv*, %struct.sv*, %struct.av*, i64, i64 }
%struct.off_runs = type { i64, i64 }
%struct.block_sub = type { %struct.cv*, %struct.gv*, %struct.gv*, %struct.av*, %struct.av*, i64, i8, i8, %struct.av* }
%struct.partition_stack_entry = type { i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"sort::hints\00", align 1
@PL_stack_sp = external global %struct.sv**
@PL_stack_base = external global %struct.sv**
@PL_markstack_ptr = external global i32*
@PL_op = external global %struct.op*
@PL_sv_undef = external global %struct.sv
@PL_sortcop = external global %struct.op*
@PL_curcop = external global %struct.cop*
@.str1 = private unnamed_addr constant [3 x i8] c"$$\00", align 1
@.str2 = private unnamed_addr constant [38 x i8] c"Undefined sort subroutine \22%_\22 called\00", align 1
@.str3 = private unnamed_addr constant [29 x i8] c"Undefined subroutine in sort\00", align 1
@PL_ppaddr = external global [0 x %struct.op* ()*]
@PL_savestack_ix = external global i32
@PL_savestack_max = external global i32
@PL_comppad = external global %struct.av*
@PL_savestack = external global %union.any*
@PL_curpad = external global %struct.sv**
@PL_stack_max = external global %struct.sv**
@PL_top_env = external global %struct.jmpenv*
@PL_tmps_floor = external global i32
@PL_tmps_ix = external global i32
@PL_curstackinfo = external global %struct.stackinfo*
@PL_curstack = external global %struct.av*
@PL_sortstash = external global %struct.hv*
@PL_firstgv = external global %struct.gv*
@PL_secondgv = external global %struct.gv*
@.str4 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@PL_markstack = external global i32*
@PL_scopestack_ix = external global i32
@PL_retstack_ix = external global i32
@PL_curpm = external global %struct.pmop*
@PL_Sv = external global %struct.sv*
@PL_sortcxix = external global i32
@PL_defgv = external global %struct.gv*
@PL_stderrgv = external global %struct.gv*
@.str6 = private unnamed_addr constant [17 x i8] c"panic: POPSTACK\0A\00", align 1
@PL_amagic_generation = external global i64
@PL_markstack_max = external global i32*
@.str7 = private unnamed_addr constant [43 x i8] c"Sort subroutine didn't return single value\00", align 1
@.str8 = private unnamed_addr constant [46 x i8] c"Sort subroutine didn't return a numeric value\00", align 1
@PL_runops = external global i32 ()*
@PL_sort_RealCmp = external global i32 (%struct.sv*, %struct.sv*)*

; Function Attrs: nounwind optsize uwtable
define void @Perl_sortsv(%struct.sv** %array, i64 %nmemb, i32 (%struct.sv*, %struct.sv*)* %cmp) #0 {
entry:
  %call = tail call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0), i32 2, i32 1) #4
  %sv_any = getelementptr inbounds %struct.gv* %call, i64 0, i32 0
  %0 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %0, i64 0, i32 7
  %1 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %1, i64 0, i32 0
  %2 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %2, i64 0, i32 2
  %3 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %3, 65536
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.end8, label %cond.true4

cond.true4:                                       ; preds = %entry
  %sv_any5 = getelementptr inbounds %struct.sv* %2, i64 0, i32 0
  %4 = load i8** %sv_any5, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %4, i64 24
  %5 = bitcast i8* %xiv_iv to i64*
  %6 = load i64* %5, align 8, !tbaa !4
  %phitmp = and i64 %6, 1
  %phitmp14 = icmp ne i64 %phitmp, 0
  %phitmp15 = select i1 %phitmp14, void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*, i32)* @S_qsortsv, void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*, i32)* @S_mergesortsv
  br label %cond.end8

cond.end8:                                        ; preds = %entry, %cond.true4
  %cond9 = phi void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*, i32)* [ %phitmp15, %cond.true4 ], [ @S_mergesortsv, %entry ]
  tail call void %cond9(%struct.sv** %array, i64 %nmemb, i32 (%struct.sv*, %struct.sv*)* %cmp, i32 0) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @S_mergesortsv(%struct.sv** %base, i64 %nmemb, i32 (%struct.sv*, %struct.sv*)* %cmp, i32 %flags) #0 {
entry:
  %small = alloca [200 x %struct.sv*], align 16
  %which = alloca [3 x %struct.sv**], align 16
  %stack = alloca [60 x %struct.off_runs], align 16
  %0 = bitcast [200 x %struct.sv*]* %small to i8*
  call void @llvm.lifetime.start(i64 1600, i8* %0) #3
  %1 = bitcast [60 x %struct.off_runs]* %stack to i8*
  call void @llvm.lifetime.start(i64 960, i8* %1) #3
  %cmp1 = icmp ult i64 %nmemb, 2
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool = icmp ne i32 %flags, 0
  br i1 %tobool, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = load i32 (%struct.sv*, %struct.sv*)** @PL_sort_RealCmp, align 8, !tbaa !0
  store i32 (%struct.sv*, %struct.sv*)* %cmp, i32 (%struct.sv*, %struct.sv*)** @PL_sort_RealCmp, align 8, !tbaa !0
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %cmp.addr.0 = phi i32 (%struct.sv*, %struct.sv*)* [ @cmp_desc, %if.then2 ], [ %cmp, %if.end ]
  %savecmp.0 = phi i32 (%struct.sv*, %struct.sv*)* [ %2, %if.then2 ], [ null, %if.end ]
  %cmp4 = icmp ult i64 %nmemb, 201
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  %arraydecay = getelementptr inbounds [200 x %struct.sv*]* %small, i64 0, i64 0
  br label %if.end6

if.else:                                          ; preds = %if.end3
  %mul = shl i64 %nmemb, 3
  %call = call i8* @Perl_safesysmalloc(i64 %mul) #4
  %3 = bitcast i8* %call to %struct.sv**
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  %aux.0 = phi %struct.sv** [ %arraydecay, %if.then5 ], [ %3, %if.else ]
  %arraydecay7 = getelementptr inbounds [60 x %struct.off_runs]* %stack, i64 0, i64 0
  %add.ptr.i = getelementptr inbounds %struct.sv** %base, i64 %nmemb
  %4 = load %struct.sv** %base, align 8, !tbaa !0
  %add.ptr1.i = getelementptr inbounds %struct.sv** %base, i64 1
  %5 = load %struct.sv** %add.ptr1.i, align 8, !tbaa !0
  %call.i = call i32 %cmp.addr.0(%struct.sv* %4, %struct.sv* %5) #4
  %cmp3195.i = icmp sgt i64 %nmemb, 0
  br i1 %cmp3195.i, label %for.cond6.preheader.lr.ph.i, label %dynprep.exit

for.cond6.preheader.lr.ph.i:                      ; preds = %if.end6
  %cmp2.i = icmp sgt i32 %call.i, 0
  %conv.i = zext i1 %cmp2.i to i32
  br label %for.cond6.preheader.i

for.cond6.preheader.i:                            ; preds = %do.end.i, %for.cond6.preheader.lr.ph.i
  %runs.0199.i = phi i64 [ 0, %for.cond6.preheader.lr.ph.i ], [ %runs.2.lcssa.i, %do.end.i ]
  %sense.0198.i = phi i32 [ %conv.i, %for.cond6.preheader.lr.ph.i ], [ %18, %do.end.i ]
  %p2.0197.i = phi %struct.sv** [ %aux.0, %for.cond6.preheader.lr.ph.i ], [ %p2.2.lcssa.i, %do.end.i ]
  %b.0196.i = phi %struct.sv** [ %base, %for.cond6.preheader.lr.ph.i ], [ %p.7.ph.i, %do.end.i ]
  br label %for.cond6.i

for.cond6.i:                                      ; preds = %for.body9.i, %for.cond6.preheader.i
  %p.0.sink.i = phi %struct.sv** [ %incdec.ptr15.i, %for.body9.i ], [ %b.0196.i, %for.cond6.preheader.i ]
  %incdec.ptr15.i = getelementptr inbounds %struct.sv** %p.0.sink.i, i64 2
  %incdec.ptr.i = getelementptr inbounds %struct.sv** %p.0.sink.i, i64 3
  %cmp7.i = icmp ult %struct.sv** %incdec.ptr.i, %add.ptr.i
  br i1 %cmp7.i, label %for.body9.i, label %do.body.loopexit.i

for.body9.i:                                      ; preds = %for.cond6.i
  %6 = load %struct.sv** %incdec.ptr15.i, align 8, !tbaa !0
  %7 = load %struct.sv** %incdec.ptr.i, align 8, !tbaa !0
  %call10.i = call i32 %cmp.addr.0(%struct.sv* %6, %struct.sv* %7) #4
  %cmp11.i = icmp sgt i32 %call10.i, 0
  %conv12.i = zext i1 %cmp11.i to i32
  %cmp13.i = icmp eq i32 %conv12.i, %sense.0198.i
  br i1 %cmp13.i, label %for.cond6.i, label %do.body.loopexit.i

do.body.loopexit.i:                               ; preds = %for.body9.i, %for.cond6.i
  %cmp56.i = icmp eq %struct.sv** %incdec.ptr.i, %add.ptr.i
  %tobool.i = icmp eq i32 %sense.0198.i, 0
  %add.ptr59.i = getelementptr inbounds %struct.sv** %p.0.sink.i, i64 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end103.i, %do.body.loopexit.i
  %b.1.i = phi %struct.sv** [ %p.7.ph.i, %if.end103.i ], [ %b.0196.i, %do.body.loopexit.i ]
  %q.0.i = phi %struct.sv** [ %r.2.ph.i, %if.end103.i ], [ %b.0196.i, %do.body.loopexit.i ]
  %p2.1.i = phi %struct.sv** [ %p2.2.lcssa.i, %if.end103.i ], [ %p2.0197.i, %do.body.loopexit.i ]
  %runs.1.i = phi i64 [ %runs.2.lcssa.i, %if.end103.i ], [ %runs.0199.i, %do.body.loopexit.i ]
  %add.ptr16.i = getelementptr inbounds %struct.sv** %b.1.i, i64 16
  %cmp17.i = icmp ult %struct.sv** %add.ptr16.i, %incdec.ptr15.i
  br i1 %cmp17.i, label %while.cond.i, label %if.end48.i

while.cond.i:                                     ; preds = %do.body.i, %land.rhs.i
  %p.1.i = phi %struct.sv** [ %add.ptr26.i, %land.rhs.i ], [ %add.ptr16.i, %do.body.i ]
  %add.ptr20.i = getelementptr inbounds %struct.sv** %p.1.i, i64 -1
  %8 = load %struct.sv** %add.ptr20.i, align 8, !tbaa !0
  %9 = load %struct.sv** %p.1.i, align 8, !tbaa !0
  %call21.i = call i32 %cmp.addr.0(%struct.sv* %8, %struct.sv* %9) #4
  %cmp22.i = icmp sgt i32 %call21.i, 0
  %conv23.i = zext i1 %cmp22.i to i32
  %cmp24.i = icmp eq i32 %conv23.i, %sense.0198.i
  br i1 %cmp24.i, label %land.rhs.i, label %while.end.i

land.rhs.i:                                       ; preds = %while.cond.i
  %add.ptr26.i = getelementptr inbounds %struct.sv** %p.1.i, i64 -2
  %cmp27.i = icmp ugt %struct.sv** %add.ptr26.i, %q.0.i
  br i1 %cmp27.i, label %while.cond.i, label %while.end.i

while.end.i:                                      ; preds = %land.rhs.i, %while.cond.i
  %p.2.i = phi %struct.sv** [ %add.ptr26.i, %land.rhs.i ], [ %p.1.i, %while.cond.i ]
  %cmp29.i = icmp ugt %struct.sv** %p.2.i, %q.0.i
  br i1 %cmp29.i, label %if.end48.i, label %while.cond32.i

while.cond32.i:                                   ; preds = %while.end.i, %land.rhs36.i
  %p.3.i = phi %struct.sv** [ %add.ptr33.i, %land.rhs36.i ], [ %add.ptr16.i, %while.end.i ]
  %add.ptr33.i = getelementptr inbounds %struct.sv** %p.3.i, i64 2
  %cmp34.i = icmp slt %struct.sv** %p.3.i, %p.0.sink.i
  br i1 %cmp34.i, label %land.rhs36.i, label %if.end48.i

land.rhs36.i:                                     ; preds = %while.cond32.i
  %add.ptr37.i = getelementptr inbounds %struct.sv** %p.3.i, i64 1
  %10 = load %struct.sv** %add.ptr37.i, align 8, !tbaa !0
  %11 = load %struct.sv** %add.ptr33.i, align 8, !tbaa !0
  %call38.i = call i32 %cmp.addr.0(%struct.sv* %10, %struct.sv* %11) #4
  %cmp39.i = icmp sgt i32 %call38.i, 0
  %conv40.i = zext i1 %cmp39.i to i32
  %cmp41.i = icmp eq i32 %conv40.i, %sense.0198.i
  br i1 %cmp41.i, label %while.cond32.i, label %if.end48.i

if.end48.i:                                       ; preds = %land.rhs36.i, %while.cond32.i, %while.end.i, %do.body.i
  %p.4.i = phi %struct.sv** [ %p.2.i, %while.end.i ], [ %incdec.ptr15.i, %do.body.i ], [ %add.ptr33.i, %while.cond32.i ], [ %add.ptr33.i, %land.rhs36.i ]
  %q.2.i = phi %struct.sv** [ %q.0.i, %while.end.i ], [ %q.0.i, %do.body.i ], [ %p.3.i, %while.cond32.i ], [ %p.3.i, %land.rhs36.i ]
  %r.0.i = phi %struct.sv** [ %add.ptr16.i, %while.end.i ], [ %incdec.ptr15.i, %do.body.i ], [ %add.ptr33.i, %while.cond32.i ], [ %add.ptr33.i, %land.rhs36.i ]
  %cmp49.i = icmp ugt %struct.sv** %q.2.i, %b.1.i
  br i1 %cmp49.i, label %if.then51.i, label %while.cond78.preheader.i

if.then51.i:                                      ; preds = %if.end48.i
  %add.ptr52.i = getelementptr inbounds %struct.sv** %q.2.i, i64 2
  %cmp53.i = icmp eq %struct.sv** %q.2.i, %p.0.sink.i
  %or.cond.i = and i1 %cmp53.i, %cmp56.i
  br i1 %or.cond.i, label %land.lhs.true58.i, label %if.end66.i

land.lhs.true58.i:                                ; preds = %if.then51.i
  %12 = load %struct.sv** %add.ptr59.i, align 8, !tbaa !0
  %13 = load %struct.sv** %add.ptr52.i, align 8, !tbaa !0
  %call60.i = call i32 %cmp.addr.0(%struct.sv* %12, %struct.sv* %13) #4
  %cmp61.i = icmp sgt i32 %call60.i, 0
  %conv62.i = zext i1 %cmp61.i to i32
  %cmp63.i = icmp eq i32 %conv62.i, %sense.0198.i
  %add.ptr.add.ptr52.i = select i1 %cmp63.i, %struct.sv** %add.ptr.i, %struct.sv** %add.ptr52.i
  %add.ptr.r.0.i = select i1 %cmp63.i, %struct.sv** %add.ptr.i, %struct.sv** %r.0.i
  %add.ptr.p.4.i = select i1 %cmp63.i, %struct.sv** %add.ptr.i, %struct.sv** %p.4.i
  br label %if.end66.i

if.end66.i:                                       ; preds = %land.lhs.true58.i, %if.then51.i
  %p.5.i = phi %struct.sv** [ %add.ptr52.i, %if.then51.i ], [ %add.ptr.add.ptr52.i, %land.lhs.true58.i ]
  %r.1.i = phi %struct.sv** [ %r.0.i, %if.then51.i ], [ %add.ptr.r.0.i, %land.lhs.true58.i ]
  %savep.0.i = phi %struct.sv** [ %p.4.i, %if.then51.i ], [ %add.ptr.p.4.i, %land.lhs.true58.i ]
  %sub.ptr.lhs.cast.i = ptrtoint %struct.sv** %p.5.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint %struct.sv** %b.1.i to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 3
  %add.ptr67.i = getelementptr inbounds %struct.sv** %p2.1.i, i64 %sub.ptr.div.i
  %add.ptr67.c.i = bitcast %struct.sv** %add.ptr67.i to %struct.sv*
  store %struct.sv* %add.ptr67.c.i, %struct.sv** %p2.1.i, align 8, !tbaa !0
  %inc.i = add nsw i64 %runs.1.i, 1
  br i1 %tobool.i, label %while.cond78.preheader.i, label %while.cond69.preheader.i

while.cond69.preheader.i:                         ; preds = %if.end66.i
  %incdec.ptr70186.i = getelementptr inbounds %struct.sv** %p.5.i, i64 -1
  %cmp71187.i = icmp ult %struct.sv** %b.1.i, %incdec.ptr70186.i
  br i1 %cmp71187.i, label %while.body73.i, label %while.cond78.preheader.i

while.body73.i:                                   ; preds = %while.cond69.preheader.i, %while.body73.i
  %incdec.ptr70189.i = phi %struct.sv** [ %incdec.ptr70.i, %while.body73.i ], [ %incdec.ptr70186.i, %while.cond69.preheader.i ]
  %b.2188.i = phi %struct.sv** [ %incdec.ptr74.i, %while.body73.i ], [ %b.1.i, %while.cond69.preheader.i ]
  %14 = load %struct.sv** %b.2188.i, align 8, !tbaa !0
  %15 = load %struct.sv** %incdec.ptr70189.i, align 8, !tbaa !0
  %incdec.ptr74.i = getelementptr inbounds %struct.sv** %b.2188.i, i64 1
  store %struct.sv* %15, %struct.sv** %b.2188.i, align 8, !tbaa !0
  store %struct.sv* %14, %struct.sv** %incdec.ptr70189.i, align 8, !tbaa !0
  %incdec.ptr70.i = getelementptr inbounds %struct.sv** %incdec.ptr70189.i, i64 -1
  %cmp71.i = icmp ult %struct.sv** %incdec.ptr74.i, %incdec.ptr70.i
  br i1 %cmp71.i, label %while.body73.i, label %while.cond78.preheader.i

while.cond78.preheader.i:                         ; preds = %while.body73.i, %while.cond69.preheader.i, %if.end66.i, %if.end48.i
  %p.7.ph.i = phi %struct.sv** [ %savep.0.i, %if.end66.i ], [ %p.4.i, %if.end48.i ], [ %savep.0.i, %while.cond69.preheader.i ], [ %savep.0.i, %while.body73.i ]
  %q.4.ph.i = phi %struct.sv** [ %p.5.i, %if.end66.i ], [ %q.2.i, %if.end48.i ], [ %p.5.i, %while.cond69.preheader.i ], [ %p.5.i, %while.body73.i ]
  %p2.2.ph.i = phi %struct.sv** [ %add.ptr67.i, %if.end66.i ], [ %p2.1.i, %if.end48.i ], [ %add.ptr67.i, %while.cond69.preheader.i ], [ %add.ptr67.i, %while.body73.i ]
  %r.2.ph.i = phi %struct.sv** [ %r.1.i, %if.end66.i ], [ %r.0.i, %if.end48.i ], [ %r.1.i, %while.cond69.preheader.i ], [ %r.1.i, %while.body73.i ]
  %runs.2.ph.i = phi i64 [ %inc.i, %if.end66.i ], [ %runs.1.i, %if.end48.i ], [ %inc.i, %while.cond69.preheader.i ], [ %inc.i, %while.body73.i ]
  %cmp79190.i = icmp ult %struct.sv** %q.4.ph.i, %p.7.ph.i
  br i1 %cmp79190.i, label %while.body81.i, label %while.end92.i

while.body81.i:                                   ; preds = %while.cond78.preheader.i, %while.cond78.backedge.i
  %runs.2193.i = phi i64 [ %inc83.i, %while.cond78.backedge.i ], [ %runs.2.ph.i, %while.cond78.preheader.i ]
  %p2.2192.i = phi %struct.sv** [ %add.ptr82.i, %while.cond78.backedge.i ], [ %p2.2.ph.i, %while.cond78.preheader.i ]
  %q.4191.i = phi %struct.sv** [ %q.4.be.i, %while.cond78.backedge.i ], [ %q.4.ph.i, %while.cond78.preheader.i ]
  %add.ptr82.i = getelementptr inbounds %struct.sv** %p2.2192.i, i64 2
  %add.ptr82.c.i = bitcast %struct.sv** %add.ptr82.i to %struct.sv*
  store %struct.sv* %add.ptr82.c.i, %struct.sv** %p2.2192.i, align 8, !tbaa !0
  %inc83.i = add nsw i64 %runs.2193.i, 1
  br i1 %tobool.i, label %while.cond78.backedge.i, label %if.then85.i

if.then85.i:                                      ; preds = %while.body81.i
  %incdec.ptr86.i = getelementptr inbounds %struct.sv** %q.4191.i, i64 1
  %16 = load %struct.sv** %q.4191.i, align 8, !tbaa !0
  %17 = load %struct.sv** %incdec.ptr86.i, align 8, !tbaa !0
  store %struct.sv* %17, %struct.sv** %q.4191.i, align 8, !tbaa !0
  store %struct.sv* %16, %struct.sv** %incdec.ptr86.i, align 8, !tbaa !0
  br label %while.cond78.backedge.i

while.cond78.backedge.i:                          ; preds = %if.then85.i, %while.body81.i
  %q.4.be.i = getelementptr inbounds %struct.sv** %q.4191.i, i64 2
  %cmp79.i = icmp ult %struct.sv** %q.4.be.i, %p.7.ph.i
  br i1 %cmp79.i, label %while.body81.i, label %while.end92.i

while.end92.i:                                    ; preds = %while.cond78.backedge.i, %while.cond78.preheader.i
  %runs.2.lcssa.i = phi i64 [ %runs.2.ph.i, %while.cond78.preheader.i ], [ %inc83.i, %while.cond78.backedge.i ]
  %p2.2.lcssa.i = phi %struct.sv** [ %p2.2.ph.i, %while.cond78.preheader.i ], [ %add.ptr82.i, %while.cond78.backedge.i ]
  %cmp93.i = icmp eq %struct.sv** %p.7.ph.i, %incdec.ptr15.i
  %or.cond185.i = and i1 %cmp93.i, %cmp56.i
  br i1 %or.cond185.i, label %do.end.i.thread, label %if.end103.i

do.end.i.thread:                                  ; preds = %while.end92.i
  %add.ptr100.i = getelementptr inbounds %struct.sv** %p2.2.lcssa.i, i64 1
  %add.ptr100.c.i = bitcast %struct.sv** %add.ptr100.i to %struct.sv*
  store %struct.sv* %add.ptr100.c.i, %struct.sv** %p2.2.lcssa.i, align 8, !tbaa !0
  %inc101.i = add nsw i64 %runs.2.lcssa.i, 1
  br label %dynprep.exit

if.end103.i:                                      ; preds = %while.end92.i
  %cmp104.i = icmp ult %struct.sv** %p.7.ph.i, %incdec.ptr15.i
  br i1 %cmp104.i, label %do.body.i, label %do.end.i

do.end.i:                                         ; preds = %if.end103.i
  %18 = xor i32 %sense.0198.i, 1
  %cmp3.i = icmp ult %struct.sv** %p.7.ph.i, %add.ptr.i
  br i1 %cmp3.i, label %for.cond6.preheader.i, label %dynprep.exit

dynprep.exit:                                     ; preds = %do.end.i, %do.end.i.thread, %if.end6
  %runs.0.lcssa.i = phi i64 [ 0, %if.end6 ], [ %inc101.i, %do.end.i.thread ], [ %runs.2.lcssa.i, %do.end.i ]
  %runs9 = getelementptr inbounds [60 x %struct.off_runs]* %stack, i64 0, i64 0, i32 1
  store i64 %runs.0.lcssa.i, i64* %runs9, align 8, !tbaa !4
  %offset10 = getelementptr inbounds [60 x %struct.off_runs]* %stack, i64 0, i64 0, i32 0
  store i64 0, i64* %offset10, align 16, !tbaa !4
  %arrayidx = getelementptr inbounds [3 x %struct.sv**]* %which, i64 0, i64 2
  store %struct.sv** %base, %struct.sv*** %arrayidx, align 16, !tbaa !0
  %arrayidx11 = getelementptr inbounds [3 x %struct.sv**]* %which, i64 0, i64 0
  store %struct.sv** %base, %struct.sv*** %arrayidx11, align 16, !tbaa !0
  %arrayidx12 = getelementptr inbounds [3 x %struct.sv**]* %which, i64 0, i64 1
  store %struct.sv** %aux.0, %struct.sv*** %arrayidx12, align 8, !tbaa !0
  %sub.ptr.rhs.cast142 = ptrtoint %struct.sv** %aux.0 to i64
  br label %for.cond

for.cond:                                         ; preds = %if.else157, %if.else152, %do.end151, %do.end181, %dynprep.exit
  %offset.0 = phi i64 [ 0, %dynprep.exit ], [ %sub.ptr.div144, %do.end151 ], [ %offset.1, %if.else152 ], [ %offset.1, %if.else157 ], [ %sub.ptr.div169, %do.end181 ]
  %level.0 = phi i32 [ 0, %dynprep.exit ], [ %level.3.lcssa, %do.end151 ], [ %level.3.lcssa, %if.else152 ], [ %inc158, %if.else157 ], [ %inc158, %do.end181 ]
  %stackp.0 = phi %struct.off_runs* [ %arraydecay7, %dynprep.exit ], [ %stackp.3.lcssa, %do.end151 ], [ %stackp.3.lcssa, %if.else152 ], [ %incdec.ptr159, %if.else157 ], [ %incdec.ptr159, %do.end181 ]
  %runs13 = getelementptr inbounds %struct.off_runs* %stackp.0, i64 0, i32 1
  %19 = load i64* %runs13, align 8, !tbaa !4
  %cmp14 = icmp eq i64 %19, 0
  br i1 %cmp14, label %if.then15, label %if.end122

if.then15:                                        ; preds = %for.cond
  %and = and i32 %level.0, 1
  %idxprom335 = zext i32 %and to i64
  %arrayidx16 = getelementptr inbounds [3 x %struct.sv**]* %which, i64 0, i64 %idxprom335
  %20 = load %struct.sv*** %arrayidx16, align 8, !tbaa !0
  %inc = add nsw i32 %and, 1
  %idxprom17336 = zext i32 %inc to i64
  %arrayidx18 = getelementptr inbounds [3 x %struct.sv**]* %which, i64 0, i64 %idxprom17336
  %21 = load %struct.sv*** %arrayidx18, align 8, !tbaa !0
  br label %do.body

do.body:                                          ; preds = %if.end116, %if.then15
  %level.1 = phi i32 [ %level.0, %if.then15 ], [ %dec, %if.end116 ]
  %list1.0 = phi %struct.sv** [ %20, %if.then15 ], [ %list2.0, %if.end116 ]
  %list2.0 = phi %struct.sv** [ %21, %if.then15 ], [ %list1.0, %if.end116 ]
  %stackp.1 = phi %struct.off_runs* [ %stackp.0, %if.then15 ], [ %incdec.ptr117, %if.end116 ]
  %offset19 = getelementptr inbounds %struct.off_runs* %stackp.1, i64 0, i32 0
  %22 = load i64* %offset19, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds %struct.sv** %list1.0, i64 %22
  %add.ptr20 = getelementptr inbounds %struct.sv** %list2.0, i64 %22
  %23 = load %struct.sv** %add.ptr20, align 8
  %24 = bitcast %struct.sv** %list1.0 to i8*
  %sub.ptr.lhs.cast = ptrtoint %struct.sv* %23 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %list2.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr21 = getelementptr inbounds i8* %24, i64 %sub.ptr.sub
  %25 = bitcast i8* %add.ptr21 to %struct.sv**
  %26 = bitcast %struct.sv* %23 to %struct.sv***
  %27 = load %struct.sv*** %26, align 8, !tbaa !0
  %sub.ptr.lhs.cast22 = ptrtoint %struct.sv** %27 to i64
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast
  %add.ptr25 = getelementptr inbounds i8* %24, i64 %sub.ptr.sub24
  %28 = bitcast i8* %add.ptr25 to %struct.sv**
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub24, 3
  %cmp29355 = icmp ult %struct.sv** %add.ptr, %25
  %cmp30356 = icmp slt i64 %sub.ptr.sub, %sub.ptr.sub24
  %or.cond357 = and i1 %cmp29355, %cmp30356
  br i1 %or.cond357, label %while.body, label %while.end90

while.body:                                       ; preds = %do.body, %while.cond.backedge
  %tp2.0360 = phi %struct.sv** [ %tp2.0.be, %while.cond.backedge ], [ %add.ptr20, %do.body ]
  %f2.0359 = phi %struct.sv** [ %f2.0.be, %while.cond.backedge ], [ %25, %do.body ]
  %f1.0358 = phi %struct.sv** [ %f1.0.be, %while.cond.backedge ], [ %add.ptr, %do.body ]
  %29 = load %struct.sv** %f1.0358, align 8, !tbaa !0
  %30 = load %struct.sv** %f2.0359, align 8, !tbaa !0
  %call31 = call i32 %cmp.addr.0(%struct.sv* %29, %struct.sv* %30) #4
  %cmp32 = icmp slt i32 %call31, 1
  %. = sext i1 %cmp32 to i32
  %.337 = select i1 %cmp32, %struct.sv** %25, %struct.sv** %28
  %f1.0.f2.0 = select i1 %cmp32, %struct.sv** %f1.0358, %struct.sv** %f2.0359
  %f2.0.f1.0 = select i1 %cmp32, %struct.sv** %f2.0359, %struct.sv** %f1.0358
  %add.ptr37340 = getelementptr inbounds %struct.sv** %f1.0.f2.0, i64 1
  %cmp38341 = icmp ult %struct.sv** %add.ptr37340, %.337
  br i1 %cmp38341, label %if.else47, label %if.then39

if.then39:                                        ; preds = %if.else51, %while.body
  %b.1.lcssa = phi %struct.sv** [ %f1.0.f2.0, %while.body ], [ %add.ptr37345, %if.else51 ]
  %add.ptr40 = getelementptr inbounds %struct.sv** %.337, i64 -1
  %cmp41 = icmp ugt %struct.sv** %add.ptr40, %b.1.lcssa
  br i1 %cmp41, label %land.lhs.true, label %if.else45

land.lhs.true:                                    ; preds = %if.then39
  %31 = load %struct.sv** %f2.0.f1.0, align 8, !tbaa !0
  %32 = load %struct.sv** %add.ptr40, align 8, !tbaa !0
  %call42 = call i32 %cmp.addr.0(%struct.sv* %31, %struct.sv* %32) #4
  %cmp43 = icmp sgt i32 %call42, %.
  br i1 %cmp43, label %if.else45, label %for.end

if.else45:                                        ; preds = %land.lhs.true, %if.then39
  br label %for.end

if.else47:                                        ; preds = %while.body, %if.else51
  %add.ptr37345 = phi %struct.sv** [ %add.ptr37, %if.else51 ], [ %add.ptr37340, %while.body ]
  %i.0344 = phi i64 [ %add.i.0, %if.else51 ], [ 1, %while.body ]
  %b.1343 = phi %struct.sv** [ %add.ptr37345, %if.else51 ], [ %f1.0.f2.0, %while.body ]
  %run.0342 = phi i64 [ %inc54, %if.else51 ], [ 0, %while.body ]
  %33 = load %struct.sv** %f2.0.f1.0, align 8, !tbaa !0
  %34 = load %struct.sv** %add.ptr37345, align 8, !tbaa !0
  %call48 = call i32 %cmp.addr.0(%struct.sv* %33, %struct.sv* %34) #4
  %cmp49 = icmp sgt i32 %call48, %.
  br i1 %cmp49, label %if.else51, label %for.end

if.else51:                                        ; preds = %if.else47
  %inc54 = add nsw i64 %run.0342, 1
  %cmp55 = icmp sgt i64 %run.0342, 4
  %add = zext i1 %cmp55 to i64
  %add.i.0 = shl nsw i64 %i.0344, %add
  %add.ptr37 = getelementptr inbounds %struct.sv** %add.ptr37345, i64 %add.i.0
  %cmp38 = icmp ult %struct.sv** %add.ptr37, %.337
  br i1 %cmp38, label %if.else47, label %if.then39

for.end:                                          ; preds = %if.else47, %land.lhs.true, %if.else45
  %t.1 = phi %struct.sv** [ %.337, %if.else45 ], [ %add.ptr40, %land.lhs.true ], [ %add.ptr37345, %if.else47 ]
  %b.2 = phi %struct.sv** [ %add.ptr40, %if.else45 ], [ %b.1.lcssa, %land.lhs.true ], [ %b.1343, %if.else47 ]
  %incdec.ptr = getelementptr inbounds %struct.sv** %b.2, i64 1
  %cmp59347351 = icmp ult %struct.sv** %incdec.ptr, %t.1
  br i1 %cmp59347351, label %while.body60.lr.ph, label %while.end

while.cond58.outer.loopexit:                      ; preds = %while.body60
  %cmp59347 = icmp sgt i64 %sub, 1
  br i1 %cmp59347, label %while.body60.lr.ph, label %while.end

while.body60.lr.ph:                               ; preds = %for.end, %while.cond58.outer.loopexit
  %b.3.ph353 = phi %struct.sv** [ %b.3348, %while.cond58.outer.loopexit ], [ %incdec.ptr, %for.end ]
  %t.2.ph352 = phi %struct.sv** [ %add.ptr65, %while.cond58.outer.loopexit ], [ %t.1, %for.end ]
  %sub.ptr.lhs.cast61 = ptrtoint %struct.sv** %t.2.ph352 to i64
  br label %while.body60

while.body60:                                     ; preds = %while.body60.lr.ph, %if.else69
  %b.3348 = phi %struct.sv** [ %b.3.ph353, %while.body60.lr.ph ], [ %add.ptr70, %if.else69 ]
  %sub.ptr.rhs.cast62 = ptrtoint %struct.sv** %b.3348 to i64
  %sub.ptr.sub63 = sub i64 %sub.ptr.lhs.cast61, %sub.ptr.rhs.cast62
  %sub.ptr.div64 = ashr exact i64 %sub.ptr.sub63, 3
  %sub = add nsw i64 %sub.ptr.div64, -1
  %div = sdiv i64 %sub, 2
  %add.ptr65 = getelementptr inbounds %struct.sv** %b.3348, i64 %div
  %35 = load %struct.sv** %f2.0.f1.0, align 8, !tbaa !0
  %36 = load %struct.sv** %add.ptr65, align 8, !tbaa !0
  %call66 = call i32 %cmp.addr.0(%struct.sv* %35, %struct.sv* %36) #4
  %cmp67 = icmp sgt i32 %call66, %.
  br i1 %cmp67, label %if.else69, label %while.cond58.outer.loopexit

if.else69:                                        ; preds = %while.body60
  %add.ptr65.sum = add i64 %div, 1
  %add.ptr70 = getelementptr inbounds %struct.sv** %b.3348, i64 %add.ptr65.sum
  %cmp59 = icmp ult %struct.sv** %add.ptr70, %t.2.ph352
  br i1 %cmp59, label %while.body60, label %while.end

while.end:                                        ; preds = %for.end, %while.cond58.outer.loopexit, %if.else69
  %t.2.ph350 = phi %struct.sv** [ %t.2.ph352, %if.else69 ], [ %t.1, %for.end ], [ %add.ptr65, %while.cond58.outer.loopexit ]
  %cmp72 = icmp eq %struct.sv** %f2.0.f1.0, %f1.0358
  br i1 %cmp72, label %do.body74, label %do.body81

do.body74:                                        ; preds = %while.end, %do.body74
  %f2.1 = phi %struct.sv** [ %incdec.ptr75, %do.body74 ], [ %f2.0359, %while.end ]
  %tp2.1 = phi %struct.sv** [ %incdec.ptr76, %do.body74 ], [ %tp2.0360, %while.end ]
  %incdec.ptr75 = getelementptr inbounds %struct.sv** %f2.1, i64 1
  %37 = load %struct.sv** %f2.1, align 8, !tbaa !0
  %incdec.ptr76 = getelementptr inbounds %struct.sv** %tp2.1, i64 1
  store %struct.sv* %37, %struct.sv** %tp2.1, align 8, !tbaa !0
  %cmp77 = icmp ult %struct.sv** %incdec.ptr75, %t.2.ph350
  br i1 %cmp77, label %do.body74, label %do.end

do.end:                                           ; preds = %do.body74
  %incdec.ptr78 = getelementptr inbounds %struct.sv** %f1.0358, i64 1
  %38 = load %struct.sv** %f1.0358, align 8, !tbaa !0
  store %struct.sv* %38, %struct.sv** %incdec.ptr76, align 8, !tbaa !0
  br label %while.cond.backedge

do.body81:                                        ; preds = %while.end, %do.body81
  %f1.1 = phi %struct.sv** [ %incdec.ptr82, %do.body81 ], [ %f1.0358, %while.end ]
  %tp2.2 = phi %struct.sv** [ %incdec.ptr83, %do.body81 ], [ %tp2.0360, %while.end ]
  %incdec.ptr82 = getelementptr inbounds %struct.sv** %f1.1, i64 1
  %39 = load %struct.sv** %f1.1, align 8, !tbaa !0
  %incdec.ptr83 = getelementptr inbounds %struct.sv** %tp2.2, i64 1
  store %struct.sv* %39, %struct.sv** %tp2.2, align 8, !tbaa !0
  %cmp85 = icmp ult %struct.sv** %incdec.ptr82, %t.2.ph350
  br i1 %cmp85, label %do.body81, label %do.end86

do.end86:                                         ; preds = %do.body81
  %incdec.ptr87 = getelementptr inbounds %struct.sv** %f2.0359, i64 1
  %40 = load %struct.sv** %f2.0359, align 8, !tbaa !0
  store %struct.sv* %40, %struct.sv** %incdec.ptr83, align 8, !tbaa !0
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.end86, %do.end
  %f1.0.be = phi %struct.sv** [ %incdec.ptr78, %do.end ], [ %incdec.ptr82, %do.end86 ]
  %f2.0.be = phi %struct.sv** [ %incdec.ptr75, %do.end ], [ %incdec.ptr87, %do.end86 ]
  %tp2.1.lcssa.pn = phi %struct.sv** [ %tp2.1, %do.end ], [ %tp2.2, %do.end86 ]
  %tp2.0.be = getelementptr inbounds %struct.sv** %tp2.1.lcssa.pn, i64 2
  %cmp29 = icmp ult %struct.sv** %f1.0.be, %25
  %cmp30 = icmp ult %struct.sv** %f2.0.be, %28
  %or.cond = and i1 %cmp29, %cmp30
  br i1 %or.cond, label %while.body, label %while.end90

while.end90:                                      ; preds = %while.cond.backedge, %do.body
  %cmp30.lcssa = phi i1 [ %cmp30356, %do.body ], [ %cmp30, %while.cond.backedge ]
  %tp2.0.lcssa = phi %struct.sv** [ %add.ptr20, %do.body ], [ %tp2.0.be, %while.cond.backedge ]
  %f2.0.lcssa = phi %struct.sv** [ %25, %do.body ], [ %f2.0.be, %while.cond.backedge ]
  %f1.0.lcssa = phi %struct.sv** [ %add.ptr, %do.body ], [ %f1.0.be, %while.cond.backedge ]
  %cmp91 = icmp eq %struct.sv** %f1.0.lcssa, %25
  br i1 %cmp91, label %if.then92, label %do.body103

if.then92:                                        ; preds = %while.end90
  br i1 %cmp30.lcssa, label %do.body95, label %if.end109

do.body95:                                        ; preds = %if.then92, %do.body95
  %f2.2 = phi %struct.sv** [ %incdec.ptr96, %do.body95 ], [ %f2.0.lcssa, %if.then92 ]
  %tp2.3 = phi %struct.sv** [ %incdec.ptr97, %do.body95 ], [ %tp2.0.lcssa, %if.then92 ]
  %incdec.ptr96 = getelementptr inbounds %struct.sv** %f2.2, i64 1
  %41 = load %struct.sv** %f2.2, align 8, !tbaa !0
  %incdec.ptr97 = getelementptr inbounds %struct.sv** %tp2.3, i64 1
  store %struct.sv* %41, %struct.sv** %tp2.3, align 8, !tbaa !0
  %cmp99 = icmp ult %struct.sv** %incdec.ptr96, %28
  br i1 %cmp99, label %do.body95, label %if.end109

do.body103:                                       ; preds = %while.end90, %do.body103
  %f1.2 = phi %struct.sv** [ %incdec.ptr104, %do.body103 ], [ %f1.0.lcssa, %while.end90 ]
  %tp2.4 = phi %struct.sv** [ %incdec.ptr105, %do.body103 ], [ %tp2.0.lcssa, %while.end90 ]
  %incdec.ptr104 = getelementptr inbounds %struct.sv** %f1.2, i64 1
  %42 = load %struct.sv** %f1.2, align 8, !tbaa !0
  %incdec.ptr105 = getelementptr inbounds %struct.sv** %tp2.4, i64 1
  store %struct.sv* %42, %struct.sv** %tp2.4, align 8, !tbaa !0
  %cmp107 = icmp ult %struct.sv** %incdec.ptr104, %25
  br i1 %cmp107, label %do.body103, label %if.end109

if.end109:                                        ; preds = %do.body95, %do.body103, %if.then92
  %tp2.5 = phi %struct.sv** [ %tp2.0.lcssa, %if.then92 ], [ %incdec.ptr105, %do.body103 ], [ %incdec.ptr97, %do.body95 ]
  %sub.ptr.lhs.cast110 = ptrtoint %struct.sv** %tp2.5 to i64
  %sub.ptr.sub112 = sub i64 %sub.ptr.lhs.cast110, %sub.ptr.rhs.cast
  %add.ptr113 = getelementptr inbounds i8* %24, i64 %sub.ptr.sub112
  %.c = bitcast i8* %add.ptr113 to %struct.sv*
  store %struct.sv* %.c, %struct.sv** %add.ptr, align 8, !tbaa !0
  %dec = add nsw i32 %level.1, -1
  %cmp114 = icmp eq i32 %dec, 0
  br i1 %cmp114, label %done, label %if.end116

if.end116:                                        ; preds = %if.end109
  %incdec.ptr117 = getelementptr inbounds %struct.off_runs* %stackp.1, i64 -1
  %runs119 = getelementptr inbounds %struct.off_runs* %stackp.1, i64 -1, i32 1
  %43 = load i64* %runs119, align 8, !tbaa !4
  %cmp120 = icmp eq i64 %43, 0
  br i1 %cmp120, label %do.body, label %if.end122

if.end122:                                        ; preds = %if.end116, %for.cond
  %runs.0 = phi i64 [ %19, %for.cond ], [ %43, %if.end116 ]
  %offset.1 = phi i64 [ %offset.0, %for.cond ], [ %sub.ptr.div, %if.end116 ]
  %level.2 = phi i32 [ %level.0, %for.cond ], [ %dec, %if.end116 ]
  %stackp.2 = phi %struct.off_runs* [ %stackp.0, %for.cond ], [ %incdec.ptr117, %if.end116 ]
  %runs123 = getelementptr inbounds %struct.off_runs* %stackp.2, i64 0, i32 1
  store i64 0, i64* %runs123, align 8, !tbaa !4
  %cmp125368 = icmp sgt i64 %runs.0, 2
  br i1 %cmp125368, label %while.body126, label %while.end133

while.body126:                                    ; preds = %if.end122, %while.body126
  %stackp.3371 = phi %struct.off_runs* [ %incdec.ptr128, %while.body126 ], [ %stackp.2, %if.end122 ]
  %level.3370 = phi i32 [ %inc127, %while.body126 ], [ %level.2, %if.end122 ]
  %runs.1369 = phi i64 [ %sub132, %while.body126 ], [ %runs.0, %if.end122 ]
  %inc127 = add nsw i32 %level.3370, 1
  %incdec.ptr128 = getelementptr inbounds %struct.off_runs* %stackp.3371, i64 1
  %offset129 = getelementptr inbounds %struct.off_runs* %incdec.ptr128, i64 0, i32 0
  store i64 %offset.1, i64* %offset129, align 8, !tbaa !4
  %div130 = sdiv i64 %runs.1369, 2
  %runs131 = getelementptr inbounds %struct.off_runs* %stackp.3371, i64 1, i32 1
  store i64 %div130, i64* %runs131, align 8, !tbaa !4
  %sub132 = sub nsw i64 %runs.1369, %div130
  %cmp125 = icmp sgt i64 %sub132, 2
  br i1 %cmp125, label %while.body126, label %while.end133

while.end133:                                     ; preds = %while.body126, %if.end122
  %stackp.3.lcssa = phi %struct.off_runs* [ %stackp.2, %if.end122 ], [ %incdec.ptr128, %while.body126 ]
  %level.3.lcssa = phi i32 [ %level.2, %if.end122 ], [ %inc127, %while.body126 ]
  %runs.1.lcssa = phi i64 [ %runs.0, %if.end122 ], [ %sub132, %while.body126 ]
  %and134 = and i32 %level.3.lcssa, 1
  %cmp135 = icmp eq i64 %runs.1.lcssa, 1
  br i1 %cmp135, label %if.then136, label %if.else157

if.then136:                                       ; preds = %while.end133
  %tobool137 = icmp eq i32 %and134, 0
  br i1 %tobool137, label %if.else152, label %if.then138

if.then138:                                       ; preds = %if.then136
  %add.ptr139 = getelementptr inbounds %struct.sv** %base, i64 %offset.1
  %add.ptr140 = getelementptr inbounds %struct.sv** %aux.0, i64 %offset.1
  %44 = load %struct.sv** %add.ptr140, align 8
  %sub.ptr.lhs.cast141 = ptrtoint %struct.sv* %44 to i64
  %sub.ptr.sub143 = sub i64 %sub.ptr.lhs.cast141, %sub.ptr.rhs.cast142
  %sub.ptr.div144 = ashr exact i64 %sub.ptr.sub143, 3
  %add.ptr145 = getelementptr inbounds %struct.sv** %base, i64 %sub.ptr.div144
  br label %do.body146

do.body146:                                       ; preds = %do.body146, %if.then138
  %f1.3 = phi %struct.sv** [ %add.ptr139, %if.then138 ], [ %incdec.ptr147, %do.body146 ]
  %f2.3 = phi %struct.sv** [ %add.ptr140, %if.then138 ], [ %incdec.ptr148, %do.body146 ]
  %incdec.ptr147 = getelementptr inbounds %struct.sv** %f1.3, i64 1
  %45 = load %struct.sv** %f1.3, align 8, !tbaa !0
  %incdec.ptr148 = getelementptr inbounds %struct.sv** %f2.3, i64 1
  store %struct.sv* %45, %struct.sv** %f2.3, align 8, !tbaa !0
  %cmp150 = icmp ult %struct.sv** %incdec.ptr147, %add.ptr145
  br i1 %cmp150, label %do.body146, label %do.end151

do.end151:                                        ; preds = %do.body146
  %add.ptr145.c = bitcast %struct.sv** %add.ptr145 to %struct.sv*
  store %struct.sv* %add.ptr145.c, %struct.sv** %add.ptr139, align 8, !tbaa !0
  br label %for.cond

if.else152:                                       ; preds = %if.then136
  %cmp153 = icmp eq i32 %level.3.lcssa, 0
  br i1 %cmp153, label %done, label %for.cond

if.else157:                                       ; preds = %while.end133
  %inc158 = add nsw i32 %level.3.lcssa, 1
  %incdec.ptr159 = getelementptr inbounds %struct.off_runs* %stackp.3.lcssa, i64 1
  %offset160 = getelementptr inbounds %struct.off_runs* %incdec.ptr159, i64 0, i32 0
  store i64 %offset.1, i64* %offset160, align 8, !tbaa !4
  %runs161 = getelementptr inbounds %struct.off_runs* %stackp.3.lcssa, i64 1, i32 1
  store i64 0, i64* %runs161, align 8, !tbaa !4
  %tobool162 = icmp eq i32 %and134, 0
  br i1 %tobool162, label %if.then163, label %for.cond

if.then163:                                       ; preds = %if.else157
  %add.ptr164 = getelementptr inbounds %struct.sv** %base, i64 %offset.1
  %add.ptr165 = getelementptr inbounds %struct.sv** %aux.0, i64 %offset.1
  %46 = load %struct.sv** %add.ptr165, align 8
  %sub.ptr.lhs.cast166 = ptrtoint %struct.sv* %46 to i64
  %sub.ptr.sub168 = sub i64 %sub.ptr.lhs.cast166, %sub.ptr.rhs.cast142
  %sub.ptr.div169 = ashr exact i64 %sub.ptr.sub168, 3
  %47 = bitcast %struct.sv* %46 to %struct.sv***
  %48 = load %struct.sv*** %47, align 8, !tbaa !0
  %sub.ptr.lhs.cast171 = ptrtoint %struct.sv** %48 to i64
  %sub.ptr.sub173 = sub i64 %sub.ptr.lhs.cast171, %sub.ptr.rhs.cast142
  %sub.ptr.div174 = ashr exact i64 %sub.ptr.sub173, 3
  %add.ptr175 = getelementptr inbounds %struct.sv** %base, i64 %sub.ptr.div174
  br label %do.body176

do.body176:                                       ; preds = %do.body176, %if.then163
  %f1.4 = phi %struct.sv** [ %add.ptr164, %if.then163 ], [ %incdec.ptr177, %do.body176 ]
  %f2.4 = phi %struct.sv** [ %add.ptr165, %if.then163 ], [ %incdec.ptr178, %do.body176 ]
  %incdec.ptr177 = getelementptr inbounds %struct.sv** %f1.4, i64 1
  %49 = load %struct.sv** %f1.4, align 8, !tbaa !0
  %incdec.ptr178 = getelementptr inbounds %struct.sv** %f2.4, i64 1
  store %struct.sv* %49, %struct.sv** %f2.4, align 8, !tbaa !0
  %cmp180 = icmp ult %struct.sv** %incdec.ptr177, %add.ptr175
  br i1 %cmp180, label %do.body176, label %do.end181

do.end181:                                        ; preds = %do.body176
  %add.ptr170 = getelementptr inbounds %struct.sv** %base, i64 %sub.ptr.div169
  %add.ptr170.c = bitcast %struct.sv** %add.ptr170 to %struct.sv*
  store %struct.sv* %add.ptr170.c, %struct.sv** %add.ptr164, align 8, !tbaa !0
  %add.ptr175.c = bitcast %struct.sv** %add.ptr175 to %struct.sv*
  store %struct.sv* %add.ptr175.c, %struct.sv** %add.ptr170, align 8, !tbaa !0
  br label %for.cond

done:                                             ; preds = %if.else152, %if.end109
  %arraydecay184 = getelementptr inbounds [200 x %struct.sv*]* %small, i64 0, i64 0
  %cmp185 = icmp eq %struct.sv** %aux.0, %arraydecay184
  br i1 %cmp185, label %if.end187, label %if.then186

if.then186:                                       ; preds = %done
  %50 = bitcast %struct.sv** %aux.0 to i8*
  call void @Perl_safesysfree(i8* %50) #4
  br label %if.end187

if.end187:                                        ; preds = %done, %if.then186
  br i1 %tobool, label %if.then189, label %cleanup

if.then189:                                       ; preds = %if.end187
  store i32 (%struct.sv*, %struct.sv*)* %savecmp.0, i32 (%struct.sv*, %struct.sv*)** @PL_sort_RealCmp, align 8, !tbaa !0
  br label %cleanup

cleanup:                                          ; preds = %if.end187, %if.then189, %entry
  call void @llvm.lifetime.end(i64 960, i8* %1) #3
  call void @llvm.lifetime.end(i64 1600, i8* %0) #3
  ret void
}

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_fetchpv(i8*, i32, i32) #1

; Function Attrs: optsize
declare i64 @Perl_sv_2iv(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define internal void @S_qsortsv(%struct.sv** %list1, i64 %nmemb, i32 (%struct.sv*, %struct.sv*)* %cmp, i32 %flags) #0 {
entry:
  %small = alloca [200 x %struct.sv**], align 16
  %call = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0), i32 2, i32 1) #4
  %sv_any = getelementptr inbounds %struct.gv* %call, i64 0, i32 0
  %0 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %0, i64 0, i32 7
  %1 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %1, i64 0, i32 0
  %2 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %2, i64 0, i32 2
  %3 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %3, 65536
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.else51, label %cond.true4

cond.true4:                                       ; preds = %entry
  %sv_any5 = getelementptr inbounds %struct.sv* %2, i64 0, i32 0
  %4 = load i8** %sv_any5, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %4, i64 24
  %5 = bitcast i8* %xiv_iv to i64*
  %6 = load i64* %5, align 8, !tbaa !4
  %phitmp = and i64 %6, 256
  %phitmp100 = icmp eq i64 %phitmp, 0
  br i1 %phitmp100, label %if.else51, label %if.then

if.then:                                          ; preds = %cond.true4
  %7 = bitcast [200 x %struct.sv**]* %small to i8*
  call void @llvm.lifetime.start(i64 1600, i8* %7) #3
  %cmp13 = icmp ult i64 %nmemb, 2
  br i1 %cmp13, label %if.end58, label %if.end

if.end:                                           ; preds = %if.then
  %cmp16 = icmp ult i64 %nmemb, 201
  br i1 %cmp16, label %if.end20.thread, label %if.end20

if.end20.thread:                                  ; preds = %if.end
  %arraydecay = getelementptr inbounds [200 x %struct.sv**]* %small, i64 0, i64 0
  br label %for.body.lr.ph

if.end20:                                         ; preds = %if.end
  %mul = shl i64 %nmemb, 3
  %call19 = call i8* @Perl_safesysmalloc(i64 %mul) #4
  %8 = bitcast i8* %call19 to %struct.sv***
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end20, %if.end20.thread
  %indir.0109 = phi %struct.sv*** [ %arraydecay, %if.end20.thread ], [ %8, %if.end20 ]
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %pp.0107 = phi %struct.sv*** [ %indir.0109, %for.body.lr.ph ], [ %incdec.ptr22, %for.body ]
  %q.0106 = phi %struct.sv** [ %list1, %for.body.lr.ph ], [ %incdec.ptr, %for.body ]
  %n.0105 = phi i64 [ %nmemb, %for.body.lr.ph ], [ %dec, %for.body ]
  %dec = add i64 %n.0105, -1
  %incdec.ptr = getelementptr inbounds %struct.sv** %q.0106, i64 1
  %incdec.ptr22 = getelementptr inbounds %struct.sv*** %pp.0107, i64 1
  store %struct.sv** %q.0106, %struct.sv*** %pp.0107, align 8, !tbaa !0
  %tobool21 = icmp eq i64 %dec, 0
  br i1 %tobool21, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %9 = load i32 (%struct.sv*, %struct.sv*)** @PL_sort_RealCmp, align 8, !tbaa !0
  store i32 (%struct.sv*, %struct.sv*)* %cmp, i32 (%struct.sv*, %struct.sv*)** @PL_sort_RealCmp, align 8, !tbaa !0
  %10 = bitcast %struct.sv*** %indir.0109 to %struct.sv**
  %tobool23 = icmp ne i32 %flags, 0
  %cond24 = select i1 %tobool23, i32 (%struct.sv*, %struct.sv*)* @cmpindir_desc, i32 (%struct.sv*, %struct.sv*)* @cmpindir
  call fastcc void @S_qsortsvu(%struct.sv** %10, i64 %nmemb, i32 (%struct.sv*, %struct.sv*)* %cond24) #5
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %list1 to i64
  br label %for.body28

for.body28:                                       ; preds = %for.end, %for.cond25.backedge
  %dec26103.in = phi i64 [ %nmemb, %for.end ], [ %dec26103, %for.cond25.backedge ]
  %dec26103 = add i64 %dec26103.in, -1
  %arrayidx = getelementptr inbounds %struct.sv*** %indir.0109, i64 %dec26103
  %11 = load %struct.sv*** %arrayidx, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %cmp29 = icmp eq i64 %dec26103, %sub.ptr.div
  br i1 %cmp29, label %for.cond25.backedge, label %if.then31

if.then31:                                        ; preds = %for.body28
  %arrayidx32 = getelementptr inbounds %struct.sv** %list1, i64 %sub.ptr.div
  %12 = load %struct.sv** %arrayidx32, align 8, !tbaa !0
  br label %do.body

do.body:                                          ; preds = %do.body, %if.then31
  %j.0 = phi i64 [ %sub.ptr.div, %if.then31 ], [ %sub.ptr.div39, %do.body ]
  %arrayidx33 = getelementptr inbounds %struct.sv*** %indir.0109, i64 %j.0
  %13 = load %struct.sv*** %arrayidx33, align 8, !tbaa !0
  %14 = load %struct.sv** %13, align 8, !tbaa !0
  %arrayidx34 = getelementptr inbounds %struct.sv** %list1, i64 %j.0
  store %struct.sv* %14, %struct.sv** %arrayidx34, align 8, !tbaa !0
  %15 = load %struct.sv*** %arrayidx33, align 8, !tbaa !0
  %sub.ptr.lhs.cast36 = ptrtoint %struct.sv** %15 to i64
  %sub.ptr.sub38 = sub i64 %sub.ptr.lhs.cast36, %sub.ptr.rhs.cast
  %sub.ptr.div39 = ashr exact i64 %sub.ptr.sub38, 3
  store %struct.sv** %arrayidx34, %struct.sv*** %arrayidx33, align 8, !tbaa !0
  %cmp41 = icmp eq i64 %sub.ptr.div39, %dec26103
  br i1 %cmp41, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  %arrayidx43 = getelementptr inbounds %struct.sv** %list1, i64 %dec26103
  store %struct.sv* %12, %struct.sv** %arrayidx43, align 8, !tbaa !0
  br label %for.cond25.backedge

for.cond25.backedge:                              ; preds = %do.end, %for.body28
  %tobool27 = icmp eq i64 %dec26103, 0
  br i1 %tobool27, label %for.end45, label %for.body28

for.end45:                                        ; preds = %for.cond25.backedge
  %arraydecay46 = getelementptr inbounds [200 x %struct.sv**]* %small, i64 0, i64 0
  %cmp47 = icmp eq %struct.sv*** %indir.0109, %arraydecay46
  br i1 %cmp47, label %if.end50, label %if.then49

if.then49:                                        ; preds = %for.end45
  %16 = bitcast %struct.sv*** %indir.0109 to i8*
  call void @Perl_safesysfree(i8* %16) #4
  br label %if.end50

if.end50:                                         ; preds = %for.end45, %if.then49
  store i32 (%struct.sv*, %struct.sv*)* %9, i32 (%struct.sv*, %struct.sv*)** @PL_sort_RealCmp, align 8, !tbaa !0
  br label %if.end58

if.else51:                                        ; preds = %cond.true4, %entry
  %tobool52 = icmp eq i32 %flags, 0
  br i1 %tobool52, label %if.else56, label %if.then53

if.then53:                                        ; preds = %if.else51
  %17 = load i32 (%struct.sv*, %struct.sv*)** @PL_sort_RealCmp, align 8, !tbaa !0
  store i32 (%struct.sv*, %struct.sv*)* %cmp, i32 (%struct.sv*, %struct.sv*)** @PL_sort_RealCmp, align 8, !tbaa !0
  call fastcc void @S_qsortsvu(%struct.sv** %list1, i64 %nmemb, i32 (%struct.sv*, %struct.sv*)* @cmp_desc) #5
  store i32 (%struct.sv*, %struct.sv*)* %17, i32 (%struct.sv*, %struct.sv*)** @PL_sort_RealCmp, align 8, !tbaa !0
  br label %if.end58

if.else56:                                        ; preds = %if.else51
  call fastcc void @S_qsortsvu(%struct.sv** %list1, i64 %nmemb, i32 (%struct.sv*, %struct.sv*)* %cmp) #5
  br label %if.end58

if.end58:                                         ; preds = %if.end50, %if.then, %if.then53, %if.else56
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @S_sortsv_desc(%struct.sv** %array, i64 %nmemb, i32 (%struct.sv*, %struct.sv*)* %cmp) #0 {
entry:
  %call = tail call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0), i32 2, i32 1) #4
  %sv_any = getelementptr inbounds %struct.gv* %call, i64 0, i32 0
  %0 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %0, i64 0, i32 7
  %1 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %1, i64 0, i32 0
  %2 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %2, i64 0, i32 2
  %3 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %3, 65536
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.end8, label %cond.true4

cond.true4:                                       ; preds = %entry
  %sv_any5 = getelementptr inbounds %struct.sv* %2, i64 0, i32 0
  %4 = load i8** %sv_any5, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %4, i64 24
  %5 = bitcast i8* %xiv_iv to i64*
  %6 = load i64* %5, align 8, !tbaa !4
  %phitmp = and i64 %6, 1
  %phitmp14 = icmp ne i64 %phitmp, 0
  %phitmp15 = select i1 %phitmp14, void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*, i32)* @S_qsortsv, void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*, i32)* @S_mergesortsv
  br label %cond.end8

cond.end8:                                        ; preds = %entry, %cond.true4
  %cond9 = phi void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*, i32)* [ %phitmp15, %cond.true4 ], [ @S_mergesortsv, %entry ]
  tail call void %cond9(%struct.sv** %array, i64 %nmemb, i32 (%struct.sv*, %struct.sv*)* %cmp, i32 1) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_sort() #0 {
entry:
  %stash = alloca %struct.hv*, align 8
  %gv = alloca %struct.gv*, align 8
  %n_a174 = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %add.ptr2.sum = add i64 %idx.ext, 1
  %add.ptr3 = getelementptr inbounds %struct.sv** %1, i64 %add.ptr2.sum
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %4, i64 0, i32 6
  %5 = load i8* %op_flags, align 1, !tbaa !1
  %conv4 = zext i8 %5 to i32
  %and = and i32 %conv4, 3
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %cmp = icmp eq i32 %and, 3
  %cond = zext i1 %cmp to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i32 @Perl_dowantarray() #4
  %.pre = load %struct.op** @PL_op, align 8, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %6 = phi %struct.op* [ %4, %cond.true ], [ %.pre, %cond.false ]
  %cond9 = phi i32 [ %cond, %cond.true ], [ %call, %cond.false ]
  %op_next = getelementptr inbounds %struct.op* %6, i64 0, i32 0
  %7 = load %struct.op** %op_next, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %6, i64 0, i32 7
  %8 = load i8* %op_private, align 1, !tbaa !1
  %cmp11 = icmp eq i32 %cond9, 1
  br i1 %cmp11, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %add.ptr.sum732 = add i64 %idx.ext, 1
  %incdec.ptr13 = getelementptr inbounds %struct.sv** %1, i64 %add.ptr.sum732
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr13, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr13, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %9 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next14 = getelementptr inbounds %struct.op* %9, i64 0, i32 0
  %10 = load %struct.op** %op_next14, align 8, !tbaa !0
  br label %return

if.end:                                           ; preds = %cond.end
  %op_flags10 = getelementptr inbounds %struct.op* %6, i64 0, i32 6
  %11 = load i8* %op_flags10, align 1, !tbaa !1
  call void @Perl_push_scope() #4
  call void @Perl_save_vptr(i8* bitcast (%struct.op** @PL_sortcop to i8*)) #4
  %conv15 = zext i8 %11 to i32
  %and16 = and i32 %conv15, 64
  %tobool17 = icmp eq i32 %and16, 0
  br i1 %tobool17, label %if.else91, label %if.then18

if.then18:                                        ; preds = %if.end
  %and20 = and i32 %conv15, 128
  %tobool21 = icmp eq i32 %and20, 0
  br i1 %tobool21, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.then18
  %12 = load %struct.op** @PL_op, align 8, !tbaa !0
  %13 = getelementptr inbounds %struct.op* %12, i64 1, i32 0
  %14 = load %struct.op** %13, align 8, !tbaa !0
  %op_sibling = getelementptr inbounds %struct.op* %14, i64 0, i32 1
  %15 = load %struct.op** %op_sibling, align 8, !tbaa !0
  %16 = getelementptr inbounds %struct.op* %15, i64 1, i32 0
  %17 = load %struct.op** %16, align 8, !tbaa !0
  %18 = getelementptr inbounds %struct.op* %17, i64 1, i32 0
  %19 = load %struct.op** %18, align 8, !tbaa !0
  %op_next25 = getelementptr inbounds %struct.op* %19, i64 0, i32 0
  %20 = load %struct.op** %op_next25, align 8, !tbaa !0
  store %struct.op* %20, %struct.op** @PL_sortcop, align 8, !tbaa !0
  %21 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_stash = getelementptr inbounds %struct.cop* %21, i64 0, i32 9
  %22 = load %struct.hv** %cop_stash, align 8, !tbaa !0
  store %struct.hv* %22, %struct.hv** %stash, align 8, !tbaa !0
  br label %if.end93

if.else:                                          ; preds = %if.then18
  %add.ptr.sum = add i64 %idx.ext, 1
  %incdec.ptr26 = getelementptr inbounds %struct.sv** %1, i64 %add.ptr.sum
  %23 = load %struct.sv** %incdec.ptr26, align 8, !tbaa !0
  %call27 = call %struct.cv* @Perl_sv_2cv(%struct.sv* %23, %struct.hv** %stash, %struct.gv** %gv, i32 0) #4
  %tobool28 = icmp eq %struct.cv* %call27, null
  br i1 %tobool28, label %if.else59, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %sv_flags = getelementptr inbounds %struct.cv* %call27, i64 0, i32 2
  %24 = load i32* %sv_flags, align 4, !tbaa !3
  %and29 = and i32 %24, 262144
  %tobool30 = icmp eq i32 %and29, 0
  br i1 %tobool30, label %land.lhs.true.land.lhs.true50_crit_edge, label %cond.end40

land.lhs.true.land.lhs.true50_crit_edge:          ; preds = %land.lhs.true
  %sv_any51.phi.trans.insert = getelementptr inbounds %struct.cv* %call27, i64 0, i32 0
  %.pre772 = load %struct.xpvcv** %sv_any51.phi.trans.insert, align 8, !tbaa !0
  br label %land.lhs.true50

cond.end40:                                       ; preds = %land.lhs.true
  %sv_any = bitcast %struct.cv* %call27 to i8**
  %25 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %25 to i8**
  %26 = load i8** %xpv_pv, align 8, !tbaa !0
  %tobool42 = icmp eq i8* %26, null
  %27 = bitcast i8* %25 to %struct.xpvcv*
  br i1 %tobool42, label %if.end48.land.lhs.true50_crit_edge, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %cond.end40
  %call44 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #4
  %tobool45 = icmp eq i32 %call44, 0
  %. = zext i1 %tobool45 to i8
  br label %if.end48.land.lhs.true50_crit_edge

if.end48.land.lhs.true50_crit_edge:               ; preds = %cond.end40, %land.lhs.true43
  %hasargs.0 = phi i8 [ 0, %cond.end40 ], [ %., %land.lhs.true43 ]
  %sv_any51.pre = getelementptr inbounds %struct.cv* %call27, i64 0, i32 0
  br label %land.lhs.true50

land.lhs.true50:                                  ; preds = %if.end48.land.lhs.true50_crit_edge, %land.lhs.true.land.lhs.true50_crit_edge
  %sv_any51.pre-phi = phi %struct.xpvcv** [ %sv_any51.pre, %if.end48.land.lhs.true50_crit_edge ], [ %sv_any51.phi.trans.insert, %land.lhs.true.land.lhs.true50_crit_edge ]
  %28 = phi %struct.xpvcv* [ %27, %if.end48.land.lhs.true50_crit_edge ], [ %.pre772, %land.lhs.true.land.lhs.true50_crit_edge ]
  %hasargs.0735 = phi i8 [ %hasargs.0, %if.end48.land.lhs.true50_crit_edge ], [ 0, %land.lhs.true.land.lhs.true50_crit_edge ]
  %xcv_root = getelementptr inbounds %struct.xpvcv* %28, i64 0, i32 9
  %29 = load %struct.op** %xcv_root, align 8, !tbaa !0
  %tobool52 = icmp eq %struct.op* %29, null
  br i1 %tobool52, label %land.lhs.true55, label %if.else70

land.lhs.true55:                                  ; preds = %land.lhs.true50
  %xcv_xsub = getelementptr inbounds %struct.xpvcv* %28, i64 0, i32 10
  %30 = load void (%struct.cv*)** %xcv_xsub, align 8, !tbaa !0
  %tobool57 = icmp eq void (%struct.cv*)* %30, null
  br i1 %tobool57, label %if.else59, label %if.then69

if.else59:                                        ; preds = %if.else, %land.lhs.true55
  %31 = load %struct.gv** %gv, align 8, !tbaa !0
  %tobool60 = icmp eq %struct.gv* %31, null
  br i1 %tobool60, label %if.else64, label %if.then61

if.then61:                                        ; preds = %if.else59
  %call62 = call %struct.sv* @Perl_sv_newmortal() #4
  %32 = load %struct.gv** %gv, align 8, !tbaa !0
  call void @Perl_gv_efullname4(%struct.sv* %call62, %struct.gv* %32, i8* null, i8 signext 1) #4
  %call63 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([38 x i8]* @.str2, i64 0, i64 0), %struct.sv* %call62) #4
  br label %return

if.else64:                                        ; preds = %if.else59
  %call65 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([29 x i8]* @.str3, i64 0, i64 0)) #4
  br label %return

if.then69:                                        ; preds = %land.lhs.true55
  %33 = bitcast %struct.cv* %call27 to %struct.op*
  store %struct.op* %33, %struct.op** @PL_sortcop, align 8, !tbaa !0
  br label %if.end93

if.else70:                                        ; preds = %land.lhs.true50
  %xcv_start = getelementptr inbounds %struct.xpvcv* %28, i64 0, i32 8
  %34 = load %struct.op** %xcv_start, align 8, !tbaa !0
  store %struct.op* %34, %struct.op** @PL_sortcop, align 8, !tbaa !0
  %35 = load %struct.xpvcv** %sv_any51.pre-phi, align 8, !tbaa !0
  %xcv_root73 = getelementptr inbounds %struct.xpvcv* %35, i64 0, i32 9
  %36 = load %struct.op** %xcv_root73, align 8, !tbaa !0
  %op_ppaddr = getelementptr inbounds %struct.op* %36, i64 0, i32 2
  %37 = bitcast %struct.op* ()** %op_ppaddr to i8*
  call void @Perl_save_vptr(i8* %37) #4
  %38 = load %struct.op* ()** getelementptr inbounds ([0 x %struct.op* ()*]* @PL_ppaddr, i64 0, i64 0), align 8, !tbaa !0
  %39 = load %struct.xpvcv** %sv_any51.pre-phi, align 8, !tbaa !0
  %xcv_root75 = getelementptr inbounds %struct.xpvcv* %39, i64 0, i32 9
  %40 = load %struct.op** %xcv_root75, align 8, !tbaa !0
  %op_ppaddr76 = getelementptr inbounds %struct.op* %40, i64 0, i32 2
  store %struct.op* ()* %38, %struct.op* ()** %op_ppaddr76, align 8, !tbaa !0
  %41 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %add = add nsw i32 %41, 2
  %42 = load i32* @PL_savestack_max, align 4, !tbaa !3
  %cmp77 = icmp sgt i32 %add, %42
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.else70
  call void @Perl_savestack_grow() #4
  %.pre771 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.else70
  %43 = phi i32 [ %.pre771, %if.then79 ], [ %41, %if.else70 ]
  %44 = load %struct.av** @PL_comppad, align 8, !tbaa !0
  %45 = bitcast %struct.av* %44 to i8*
  %inc = add nsw i32 %43, 1
  %idxprom = sext i32 %43 to i64
  %46 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr = getelementptr inbounds %union.any* %46, i64 %idxprom, i32 0
  store i8* %45, i8** %any_ptr, align 8, !tbaa !0
  %inc81 = add nsw i32 %43, 2
  store i32 %inc81, i32* @PL_savestack_ix, align 4, !tbaa !3
  %idxprom82 = sext i32 %inc to i64
  %47 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx83 = getelementptr inbounds %union.any* %47, i64 %idxprom82
  %any_i32 = bitcast %union.any* %arrayidx83 to i32*
  store i32 33, i32* %any_i32, align 4, !tbaa !3
  %48 = load %struct.xpvcv** %sv_any51.pre-phi, align 8, !tbaa !0
  %xcv_padlist = getelementptr inbounds %struct.xpvcv* %48, i64 0, i32 15
  %49 = load %struct.av** %xcv_padlist, align 8, !tbaa !0
  %sv_any85 = getelementptr inbounds %struct.av* %49, i64 0, i32 0
  %50 = load %struct.xpvav** %sv_any85, align 8, !tbaa !0
  %xav_array = getelementptr inbounds %struct.xpvav* %50, i64 0, i32 0
  %51 = load i8** %xav_array, align 8, !tbaa !0
  %arrayidx86 = getelementptr inbounds i8* %51, i64 8
  %52 = bitcast i8* %arrayidx86 to %struct.sv**
  %53 = load %struct.sv** %52, align 8, !tbaa !0
  %54 = bitcast %struct.sv* %53 to %struct.av*
  store %struct.av* %54, %struct.av** @PL_comppad, align 8, !tbaa !0
  %sv_any87 = bitcast %struct.sv* %53 to %struct.xpvav**
  %55 = load %struct.xpvav** %sv_any87, align 8, !tbaa !0
  %xav_array88 = getelementptr inbounds %struct.xpvav* %55, i64 0, i32 0
  %56 = load i8** %xav_array88, align 8, !tbaa !0
  %57 = bitcast i8* %56 to %struct.sv**
  store %struct.sv** %57, %struct.sv*** @PL_curpad, align 8, !tbaa !0
  br label %if.end93

if.else91:                                        ; preds = %if.end
  store %struct.op* null, %struct.op** @PL_sortcop, align 8, !tbaa !0
  %58 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_stash92 = getelementptr inbounds %struct.cop* %58, i64 0, i32 9
  %59 = load %struct.hv** %cop_stash92, align 8, !tbaa !0
  store %struct.hv* %59, %struct.hv** %stash, align 8, !tbaa !0
  br label %if.end93

if.end93:                                         ; preds = %if.then22, %if.end80, %if.then69, %if.else91
  %is_xsub.1 = phi i32 [ 0, %if.then22 ], [ 1, %if.then69 ], [ 0, %if.end80 ], [ 0, %if.else91 ]
  %hasargs.1 = phi i8 [ 0, %if.then22 ], [ %hasargs.0735, %if.then69 ], [ %hasargs.0735, %if.end80 ], [ 0, %if.else91 ]
  %cv.0 = phi %struct.cv* [ null, %if.then22 ], [ %call27, %if.then69 ], [ %call27, %if.end80 ], [ null, %if.else91 ]
  %mark.0 = phi %struct.sv** [ %add.ptr, %if.then22 ], [ %incdec.ptr26, %if.then69 ], [ %incdec.ptr26, %if.end80 ], [ %add.ptr, %if.else91 ]
  %conv94 = zext i8 %8 to i32
  %and95 = and i32 %conv94, 8
  %tobool96 = icmp eq i32 %and95, 0
  br i1 %tobool96, label %if.else146, label %if.then97

if.then97:                                        ; preds = %if.end93
  %60 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr98 = getelementptr inbounds i32* %60, i64 -1
  store i32* %incdec.ptr98, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %61 = load %struct.sv** %0, align 8, !tbaa !0
  %62 = bitcast %struct.sv* %61 to %struct.av*
  %sv_flags99 = getelementptr inbounds %struct.sv* %61, i64 0, i32 2
  %63 = load i32* %sv_flags99, align 4, !tbaa !3
  %and100 = and i32 %63, 32768
  %tobool101 = icmp eq i32 %and100, 0
  br i1 %tobool101, label %cond.false105, label %cond.true102

cond.true102:                                     ; preds = %if.then97
  %call103 = call i32 @Perl_mg_size(%struct.sv* %61) #4
  %conv104 = sext i32 %call103 to i64
  %.pre770 = load i32* %sv_flags99, align 4, !tbaa !3
  br label %cond.end107

cond.false105:                                    ; preds = %if.then97
  %sv_any106 = bitcast %struct.sv* %61 to %struct.xpvav**
  %64 = load %struct.xpvav** %sv_any106, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %64, i64 0, i32 1
  %65 = load i64* %xav_fill, align 8, !tbaa !4
  br label %cond.end107

cond.end107:                                      ; preds = %cond.false105, %cond.true102
  %66 = phi i32 [ %.pre770, %cond.true102 ], [ %63, %cond.false105 ]
  %cond108 = phi i64 [ %conv104, %cond.true102 ], [ %65, %cond.false105 ]
  %add109 = add nsw i64 %cond108, 1
  %conv110 = trunc i64 %add109 to i32
  %and112 = and i32 %66, 57344
  %tobool113 = icmp eq i32 %and112, 0
  br i1 %tobool113, label %if.else142, label %if.then114

if.then114:                                       ; preds = %cond.end107
  %67 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast115 = ptrtoint %struct.sv** %67 to i64
  %sub.ptr.rhs.cast116 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub117 = sub i64 %sub.ptr.lhs.cast115, %sub.ptr.rhs.cast116
  %sub.ptr.div118 = ashr exact i64 %sub.ptr.sub117, 3
  %sext = shl i64 %add109, 32
  %conv119 = ashr exact i64 %sext, 32
  %cmp120 = icmp slt i64 %sub.ptr.div118, %conv119
  br i1 %cmp120, label %if.then122, label %if.end131

if.then122:                                       ; preds = %if.then114
  %call128 = call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %0, i32 %conv110) #4
  br label %if.end131

if.end131:                                        ; preds = %if.then122, %if.then114
  %sp.0 = phi %struct.sv** [ %call128, %if.then122 ], [ %0, %if.then114 ]
  %cmp132758 = icmp sgt i32 %conv110, 0
  br i1 %cmp132758, label %for.body.lr.ph, label %for.end188.thread

for.end188.thread:                                ; preds = %if.end131
  %and155773 = and i32 %conv94, 16
  %tobool156774 = icmp eq i32 %and155773, 0
  %Perl_sortsv.S_sortsv_desc775 = select i1 %tobool156774, void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*)* @Perl_sortsv, void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*)* @S_sortsv_desc
  br label %if.end194

for.body.lr.ph:                                   ; preds = %if.end131
  %68 = trunc i64 %cond108 to i32
  %69 = and i64 %cond108, 4294967295
  %70 = add i64 %69, 1
  br label %for.body

for.body:                                         ; preds = %cond.end138, %for.body.lr.ph
  %sp.1760 = phi %struct.sv** [ %sp.0, %for.body.lr.ph ], [ %incdec.ptr140, %cond.end138 ]
  %i.0759 = phi i32 [ 0, %for.body.lr.ph ], [ %inc141, %cond.end138 ]
  %call134 = call %struct.sv** @Perl_av_fetch(%struct.av* %62, i32 %i.0759, i32 0) #4
  %tobool135 = icmp eq %struct.sv** %call134, null
  br i1 %tobool135, label %cond.end138, label %cond.true136

cond.true136:                                     ; preds = %for.body
  %71 = load %struct.sv** %call134, align 8, !tbaa !0
  br label %cond.end138

cond.end138:                                      ; preds = %for.body, %cond.true136
  %cond139 = phi %struct.sv* [ %71, %cond.true136 ], [ null, %for.body ]
  %incdec.ptr140 = getelementptr inbounds %struct.sv** %sp.1760, i64 1
  store %struct.sv* %cond139, %struct.sv** %sp.1760, align 8, !tbaa !0
  %inc141 = add nsw i32 %i.0759, 1
  %exitcond766 = icmp eq i32 %i.0759, %68
  br i1 %exitcond766, label %for.cond.if.end153.loopexit_crit_edge, label %for.body

if.else142:                                       ; preds = %cond.end107
  %sv_any143 = bitcast %struct.sv* %61 to %struct.xpvav**
  %72 = load %struct.xpvav** %sv_any143, align 8, !tbaa !0
  %xav_array144 = getelementptr inbounds %struct.xpvav* %72, i64 0, i32 0
  %73 = load i8** %xav_array144, align 8, !tbaa !0
  %74 = bitcast i8* %73 to %struct.sv**
  br label %if.end153

if.else146:                                       ; preds = %if.end93
  %add.ptr147 = getelementptr inbounds %struct.sv** %mark.0, i64 1
  %sub.ptr.lhs.cast148 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast149 = ptrtoint %struct.sv** %mark.0 to i64
  %sub.ptr.sub150 = sub i64 %sub.ptr.lhs.cast148, %sub.ptr.rhs.cast149
  %sub.ptr.div151724 = lshr exact i64 %sub.ptr.sub150, 3
  %conv152 = trunc i64 %sub.ptr.div151724 to i32
  br label %if.end153

for.cond.if.end153.loopexit_crit_edge:            ; preds = %cond.end138
  %scevgep = getelementptr %struct.sv** %sp.0, i64 %70
  br label %if.end153

if.end153:                                        ; preds = %for.cond.if.end153.loopexit_crit_edge, %if.else142, %if.else146
  %sorting_av.0 = phi i32 [ 1, %if.else142 ], [ 0, %if.else146 ], [ 0, %for.cond.if.end153.loopexit_crit_edge ]
  %av.0 = phi %struct.av* [ %62, %if.else142 ], [ null, %if.else146 ], [ %62, %for.cond.if.end153.loopexit_crit_edge ]
  %max.0 = phi i32 [ %conv110, %if.else142 ], [ %conv152, %if.else146 ], [ %conv110, %for.cond.if.end153.loopexit_crit_edge ]
  %p2.0 = phi %struct.sv** [ %74, %if.else142 ], [ %add.ptr147, %if.else146 ], [ %sp.0, %for.cond.if.end153.loopexit_crit_edge ]
  %p1.0 = phi %struct.sv** [ %74, %if.else142 ], [ %add.ptr3, %if.else146 ], [ %add.ptr3, %for.cond.if.end153.loopexit_crit_edge ]
  %sp.2 = phi %struct.sv** [ %0, %if.else142 ], [ %0, %if.else146 ], [ %scevgep, %for.cond.if.end153.loopexit_crit_edge ]
  %and155 = and i32 %conv94, 16
  %tobool156 = icmp eq i32 %and155, 0
  %Perl_sortsv.S_sortsv_desc = select i1 %tobool156, void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*)* @Perl_sortsv, void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*)* @S_sortsv_desc
  %cmp160750 = icmp sgt i32 %max.0, 0
  br i1 %cmp160750, label %for.body162, label %for.end188

for.body162:                                      ; preds = %for.inc186, %if.end153
  %p1.1755 = phi %struct.sv** [ %p1.0, %if.end153 ], [ %p1.2, %for.inc186 ]
  %p2.1754 = phi %struct.sv** [ %p2.0, %if.end153 ], [ %incdec.ptr163, %for.inc186 ]
  %max.1753 = phi i32 [ %max.0, %if.end153 ], [ %max.2, %for.inc186 ]
  %i.1752 = phi i32 [ %max.0, %if.end153 ], [ %dec187, %for.inc186 ]
  %overloading.0751 = phi i32 [ 0, %if.end153 ], [ %overloading.2, %for.inc186 ]
  %incdec.ptr163 = getelementptr inbounds %struct.sv** %p2.1754, i64 1
  %75 = load %struct.sv** %p2.1754, align 8, !tbaa !0
  store %struct.sv* %75, %struct.sv** %p1.1755, align 8, !tbaa !0
  %tobool164 = icmp eq %struct.sv* %75, null
  br i1 %tobool164, label %if.else184, label %if.then165

if.then165:                                       ; preds = %for.body162
  %sv_flags166 = getelementptr inbounds %struct.sv* %75, i64 0, i32 2
  %76 = load i32* %sv_flags166, align 4, !tbaa !3
  %and167 = and i32 %76, -2049
  store i32 %and167, i32* %sv_flags166, align 4, !tbaa !3
  %77 = load %struct.op** @PL_sortcop, align 8, !tbaa !0
  %tobool168 = icmp eq %struct.op* %77, null
  br i1 %tobool168, label %land.lhs.true169, label %if.end182

land.lhs.true169:                                 ; preds = %if.then165
  %and171 = and i32 %76, 262144
  %tobool172 = icmp eq i32 %and171, 0
  br i1 %tobool172, label %if.then173, label %if.end182

if.then173:                                       ; preds = %land.lhs.true169
  %and176 = and i32 %76, 268435456
  %tobool177 = icmp eq i32 %and176, 0
  br i1 %tobool177, label %if.else179, label %if.end182

if.else179:                                       ; preds = %if.then173
  %call180 = call i8* @Perl_sv_2pv_flags(%struct.sv* %75, i64* %n_a174, i32 2) #4
  br label %if.end182

if.end182:                                        ; preds = %if.then173, %land.lhs.true169, %if.then165, %if.else179
  %overloading.1 = phi i32 [ %overloading.0751, %if.then165 ], [ %overloading.0751, %land.lhs.true169 ], [ %overloading.0751, %if.else179 ], [ 1, %if.then173 ]
  %incdec.ptr183 = getelementptr inbounds %struct.sv** %p1.1755, i64 1
  br label %for.inc186

if.else184:                                       ; preds = %for.body162
  %dec = add nsw i32 %max.1753, -1
  br label %for.inc186

for.inc186:                                       ; preds = %if.end182, %if.else184
  %overloading.2 = phi i32 [ %overloading.1, %if.end182 ], [ %overloading.0751, %if.else184 ]
  %max.2 = phi i32 [ %max.1753, %if.end182 ], [ %dec, %if.else184 ]
  %p1.2 = phi %struct.sv** [ %incdec.ptr183, %if.end182 ], [ %p1.1755, %if.else184 ]
  %dec187 = add nsw i32 %i.1752, -1
  %cmp160 = icmp sgt i32 %dec187, 0
  br i1 %cmp160, label %for.body162, label %for.end188

for.end188:                                       ; preds = %for.inc186, %if.end153
  %p1.1.lcssa = phi %struct.sv** [ %p1.0, %if.end153 ], [ %p1.2, %for.inc186 ]
  %max.1.lcssa = phi i32 [ %max.0, %if.end153 ], [ %max.2, %for.inc186 ]
  %overloading.0.lcssa = phi i32 [ 0, %if.end153 ], [ %overloading.2, %for.inc186 ]
  %tobool189 = icmp eq i32 %sorting_av.0, 0
  br i1 %tobool189, label %if.end194, label %if.then190

if.then190:                                       ; preds = %for.end188
  %sub = add nsw i32 %max.1.lcssa, -1
  %conv191 = sext i32 %sub to i64
  %sv_any192 = getelementptr inbounds %struct.av* %av.0, i64 0, i32 0
  %78 = load %struct.xpvav** %sv_any192, align 8, !tbaa !0
  %xav_fill193 = getelementptr inbounds %struct.xpvav* %78, i64 0, i32 1
  store i64 %conv191, i64* %xav_fill193, align 8, !tbaa !4
  br label %if.end194

if.end194:                                        ; preds = %for.end188, %for.end188.thread, %if.then190
  %tobool189791 = phi i1 [ false, %for.end188.thread ], [ true, %if.then190 ], [ false, %for.end188 ]
  %overloading.0.lcssa790 = phi i32 [ 0, %for.end188.thread ], [ %overloading.0.lcssa, %if.then190 ], [ %overloading.0.lcssa, %for.end188 ]
  %max.1.lcssa786 = phi i32 [ %conv110, %for.end188.thread ], [ %max.1.lcssa, %if.then190 ], [ %max.1.lcssa, %for.end188 ]
  %p1.1.lcssa785 = phi %struct.sv** [ %add.ptr3, %for.end188.thread ], [ %p1.1.lcssa, %if.then190 ], [ %p1.1.lcssa, %for.end188 ]
  %av.0778784 = phi %struct.av* [ %62, %for.end188.thread ], [ %av.0, %if.then190 ], [ %av.0, %for.end188 ]
  %sp.2779783 = phi %struct.sv** [ %sp.0, %for.end188.thread ], [ %sp.2, %if.then190 ], [ %sp.2, %for.end188 ]
  %Perl_sortsv.S_sortsv_desc780782 = phi void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*)* [ %Perl_sortsv.S_sortsv_desc775, %for.end188.thread ], [ %Perl_sortsv.S_sortsv_desc, %if.then190 ], [ %Perl_sortsv.S_sortsv_desc, %for.end188 ]
  %cmp195 = icmp sgt i32 %max.1.lcssa786, 1
  br i1 %cmp195, label %if.then197, label %if.end513

if.then197:                                       ; preds = %if.end194
  %79 = load %struct.op** @PL_sortcop, align 8, !tbaa !0
  %tobool198 = icmp eq %struct.op* %79, null
  br i1 %tobool198, label %if.else451, label %if.then199

if.then199:                                       ; preds = %if.then197
  %80 = load %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  %je_mustcatch = getelementptr inbounds %struct.jmpenv* %80, i64 0, i32 3
  %81 = load i8* %je_mustcatch, align 1, !tbaa !1
  call void @Perl_save_int(i32* @PL_tmps_floor) #4
  %82 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %82, i32* @PL_tmps_floor, align 4, !tbaa !3
  call void @Perl_save_op() #4
  %83 = load %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  %je_mustcatch200 = getelementptr inbounds %struct.jmpenv* %83, i64 0, i32 3
  store i8 1, i8* %je_mustcatch200, align 1, !tbaa !1
  %84 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next = getelementptr inbounds %struct.stackinfo* %84, i64 0, i32 6
  %85 = load %struct.stackinfo** %si_next, align 8, !tbaa !0
  %tobool201 = icmp eq %struct.stackinfo* %85, null
  br i1 %tobool201, label %if.then202, label %if.end205

if.then202:                                       ; preds = %if.then199
  %call203 = call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13) #4
  %86 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev = getelementptr inbounds %struct.stackinfo* %call203, i64 0, i32 5
  store %struct.stackinfo* %86, %struct.stackinfo** %si_prev, align 8, !tbaa !0
  %87 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next204 = getelementptr inbounds %struct.stackinfo* %87, i64 0, i32 6
  store %struct.stackinfo* %call203, %struct.stackinfo** %si_next204, align 8, !tbaa !0
  br label %if.end205

if.end205:                                        ; preds = %if.then199, %if.then202
  %next.0 = phi %struct.stackinfo* [ %85, %if.then199 ], [ %call203, %if.then202 ]
  %si_type = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 4
  store i32 3, i32* %si_type, align 4, !tbaa !3
  %si_cxix = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 2
  store i32 -1, i32* %si_cxix, align 4, !tbaa !3
  %si_stack = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 0
  %88 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any206 = getelementptr inbounds %struct.av* %88, i64 0, i32 0
  %89 = load %struct.xpvav** %sv_any206, align 8, !tbaa !0
  %xav_fill207 = getelementptr inbounds %struct.xpvav* %89, i64 0, i32 1
  store i64 0, i64* %xav_fill207, align 8, !tbaa !4
  %90 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast208 = ptrtoint %struct.sv** %sp.2779783 to i64
  %sub.ptr.rhs.cast209 = ptrtoint %struct.sv** %90 to i64
  %sub.ptr.sub210 = sub i64 %sub.ptr.lhs.cast208, %sub.ptr.rhs.cast209
  %sub.ptr.div211 = ashr exact i64 %sub.ptr.sub210, 3
  %91 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any212 = getelementptr inbounds %struct.av* %91, i64 0, i32 0
  %92 = load %struct.xpvav** %sv_any212, align 8, !tbaa !0
  %xav_fill213 = getelementptr inbounds %struct.xpvav* %92, i64 0, i32 1
  store i64 %sub.ptr.div211, i64* %xav_fill213, align 8, !tbaa !4
  %xav_array216 = getelementptr inbounds %struct.xpvav* %89, i64 0, i32 0
  %93 = load i8** %xav_array216, align 8, !tbaa !0
  %94 = bitcast i8* %93 to %struct.sv**
  store %struct.sv** %94, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %95 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any218 = getelementptr inbounds %struct.av* %95, i64 0, i32 0
  %96 = load %struct.xpvav** %sv_any218, align 8, !tbaa !0
  %xav_max = getelementptr inbounds %struct.xpvav* %96, i64 0, i32 2
  %97 = load i64* %xav_max, align 8, !tbaa !4
  %add.ptr219 = getelementptr inbounds %struct.sv** %94, i64 %97
  store %struct.sv** %add.ptr219, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %98 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any221 = getelementptr inbounds %struct.av* %98, i64 0, i32 0
  %99 = load %struct.xpvav** %sv_any221, align 8, !tbaa !0
  %xav_fill222 = getelementptr inbounds %struct.xpvav* %99, i64 0, i32 1
  %100 = load i64* %xav_fill222, align 8, !tbaa !4
  %add.ptr223 = getelementptr inbounds %struct.sv** %94, i64 %100
  store %struct.sv** %add.ptr223, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %101 = load %struct.av** %si_stack, align 8, !tbaa !0
  store %struct.av* %101, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %next.0, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %tobool225 = icmp eq i8 %hasargs.1, 0
  %tobool227 = icmp eq i32 %is_xsub.1, 0
  %or.cond733 = and i1 %tobool225, %tobool227
  br i1 %or.cond733, label %if.then228, label %if.end242

if.then228:                                       ; preds = %if.end205
  %102 = load %struct.hv** @PL_sortstash, align 8, !tbaa !0
  %103 = load %struct.hv** %stash, align 8, !tbaa !0
  %cmp229 = icmp eq %struct.hv* %102, %103
  %104 = load %struct.gv** @PL_firstgv, align 8, !tbaa !0
  %tobool231 = icmp ne %struct.gv* %104, null
  %or.cond = and i1 %cmp229, %tobool231
  %105 = load %struct.gv** @PL_secondgv, align 8, !tbaa !0
  %tobool233 = icmp ne %struct.gv* %105, null
  %or.cond566 = and i1 %or.cond, %tobool233
  br i1 %or.cond566, label %if.end237, label %if.then234

if.then234:                                       ; preds = %if.then228
  call void @Perl_save_sptr(%struct.sv** bitcast (%struct.gv** @PL_firstgv to %struct.sv**)) #4
  call void @Perl_save_sptr(%struct.sv** bitcast (%struct.gv** @PL_secondgv to %struct.sv**)) #4
  %call235 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0), i32 1, i32 4) #4
  store %struct.gv* %call235, %struct.gv** @PL_firstgv, align 8, !tbaa !0
  %call236 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), i32 1, i32 4) #4
  store %struct.gv* %call236, %struct.gv** @PL_secondgv, align 8, !tbaa !0
  %106 = load %struct.hv** %stash, align 8, !tbaa !0
  store %struct.hv* %106, %struct.hv** @PL_sortstash, align 8, !tbaa !0
  %.pre767 = load %struct.gv** @PL_firstgv, align 8, !tbaa !0
  br label %if.end237

if.end237:                                        ; preds = %if.then228, %if.then234
  %107 = phi %struct.gv* [ %104, %if.then228 ], [ %.pre767, %if.then234 ]
  %sv_any238 = getelementptr inbounds %struct.gv* %107, i64 0, i32 0
  %108 = load %struct.xpvgv** %sv_any238, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %108, i64 0, i32 7
  %109 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %109, i64 0, i32 0
  call void @Perl_save_sptr(%struct.sv** %gp_sv) #4
  %110 = load %struct.gv** @PL_secondgv, align 8, !tbaa !0
  %sv_any239 = getelementptr inbounds %struct.gv* %110, i64 0, i32 0
  %111 = load %struct.xpvgv** %sv_any239, align 8, !tbaa !0
  %xgv_gp240 = getelementptr inbounds %struct.xpvgv* %111, i64 0, i32 7
  %112 = load %struct.gp** %xgv_gp240, align 8, !tbaa !0
  %gp_sv241 = getelementptr inbounds %struct.gp* %112, i64 0, i32 0
  call void @Perl_save_sptr(%struct.sv** %gp_sv241) #4
  %.pre768 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix243.phi.trans.insert = getelementptr inbounds %struct.stackinfo* %.pre768, i64 0, i32 2
  %.pre769 = load i32* %si_cxix243.phi.trans.insert, align 4, !tbaa !3
  br label %if.end242

if.end242:                                        ; preds = %if.end205, %if.end237
  %113 = phi i32 [ -1, %if.end205 ], [ %.pre769, %if.end237 ]
  %114 = phi %struct.stackinfo* [ %next.0, %if.end205 ], [ %.pre768, %if.end237 ]
  %si_cxmax = getelementptr inbounds %struct.stackinfo* %114, i64 0, i32 3
  %115 = load i32* %si_cxmax, align 4, !tbaa !3
  %cmp244 = icmp slt i32 %113, %115
  br i1 %cmp244, label %cond.true246, label %cond.false249

cond.true246:                                     ; preds = %if.end242
  %si_cxix243 = getelementptr inbounds %struct.stackinfo* %114, i64 0, i32 2
  %inc248 = add nsw i32 %113, 1
  store i32 %inc248, i32* %si_cxix243, align 4, !tbaa !3
  br label %cond.end252

cond.false249:                                    ; preds = %if.end242
  %call250 = call i32 @Perl_cxinc() #4
  %116 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix251 = getelementptr inbounds %struct.stackinfo* %116, i64 0, i32 2
  store i32 %call250, i32* %si_cxix251, align 4, !tbaa !3
  br label %cond.end252

cond.end252:                                      ; preds = %cond.false249, %cond.true246
  %117 = phi i32 [ %call250, %cond.false249 ], [ %inc248, %cond.true246 ]
  %118 = phi %struct.stackinfo* [ %116, %cond.false249 ], [ %114, %cond.true246 ]
  %idxprom255 = sext i32 %117 to i64
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %118, i64 0, i32 1
  %119 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %cx_type = getelementptr inbounds %struct.context* %119, i64 %idxprom255, i32 0
  store i32 0, i32* %cx_type, align 4, !tbaa !3
  %blku_oldsp = getelementptr inbounds %struct.context* %119, i64 %idxprom255, i32 1, i32 0, i32 0
  store i32 0, i32* %blku_oldsp, align 4, !tbaa !3
  %120 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %blku_oldcop = getelementptr inbounds %struct.context* %119, i64 %idxprom255, i32 1, i32 0, i32 1
  store %struct.cop* %120, %struct.cop** %blku_oldcop, align 8, !tbaa !0
  %121 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %122 = load i32** @PL_markstack, align 8, !tbaa !0
  %sub.ptr.lhs.cast264 = ptrtoint i32* %121 to i64
  %sub.ptr.rhs.cast265 = ptrtoint i32* %122 to i64
  %sub.ptr.sub266 = sub i64 %sub.ptr.lhs.cast264, %sub.ptr.rhs.cast265
  %sub.ptr.div267726 = lshr exact i64 %sub.ptr.sub266, 2
  %conv268 = trunc i64 %sub.ptr.div267726 to i32
  %blku_oldmarksp = getelementptr inbounds %struct.context* %119, i64 %idxprom255, i32 1, i32 0, i32 3
  store i32 %conv268, i32* %blku_oldmarksp, align 4, !tbaa !3
  %123 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %blku_oldscopesp = getelementptr inbounds %struct.context* %119, i64 %idxprom255, i32 1, i32 0, i32 4
  store i32 %123, i32* %blku_oldscopesp, align 4, !tbaa !3
  %124 = load i32* @PL_retstack_ix, align 4, !tbaa !3
  %blku_oldretsp = getelementptr inbounds %struct.context* %119, i64 %idxprom255, i32 1, i32 0, i32 2
  store i32 %124, i32* %blku_oldretsp, align 4, !tbaa !3
  %125 = load %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %blku_oldpm = getelementptr inbounds %struct.context* %119, i64 %idxprom255, i32 1, i32 0, i32 5
  store %struct.pmop* %125, %struct.pmop** %blku_oldpm, align 8, !tbaa !0
  %blku_gimme = getelementptr inbounds %struct.context* %119, i64 %idxprom255, i32 1, i32 0, i32 6
  store i8 1, i8* %blku_gimme, align 1, !tbaa !1
  %and281 = and i32 %conv15, 128
  %tobool282 = icmp eq i32 %and281, 0
  br i1 %tobool282, label %if.then283, label %if.end324

if.then283:                                       ; preds = %cond.end252
  store i32 1, i32* %cx_type, align 4, !tbaa !3
  store i8 0, i8* %blku_gimme, align 1, !tbaa !1
  %blk_u = getelementptr inbounds %struct.context* %119, i64 %idxprom255, i32 1, i32 0, i32 7
  %blku_sub = bitcast %union.anon.1* %blk_u to %struct.block_sub*
  %126 = getelementptr inbounds %union.anon.1* %blk_u, i64 0, i32 0, i32 0
  %cv.0.c = bitcast %struct.cv* %cv.0 to i8*
  store i8* %cv.0.c, i8** %126, align 8, !tbaa !0
  %sv_any291 = getelementptr inbounds %struct.cv* %cv.0, i64 0, i32 0
  %127 = load %struct.xpvcv** %sv_any291, align 8, !tbaa !0
  %xcv_depth = getelementptr inbounds %struct.xpvcv* %127, i64 0, i32 14
  %128 = load i64* %xcv_depth, align 8, !tbaa !4
  %olddepth = getelementptr inbounds %struct.context* %119, i64 %idxprom255, i32 1, i32 0, i32 7, i32 0, i32 5
  %.c = inttoptr i64 %128 to %struct.sv**
  store %struct.sv** %.c, %struct.sv*** %olddepth, align 8, !tbaa !4
  %hasargs300 = getelementptr inbounds %struct.context* %119, i64 %idxprom255, i32 1, i32 0, i32 7, i32 0, i32 6
  %129 = bitcast %struct.sv** %hasargs300 to i8*
  store i8 %hasargs.1, i8* %129, align 1, !tbaa !1
  %130 = load %struct.xpvcv** %sv_any291, align 8, !tbaa !0
  %xcv_depth302 = getelementptr inbounds %struct.xpvcv* %130, i64 0, i32 14
  %131 = load i64* %xcv_depth302, align 8, !tbaa !4
  %tobool303 = icmp eq i64 %131, 0
  br i1 %tobool303, label %if.then304, label %if.end315

if.then304:                                       ; preds = %if.then283
  %132 = bitcast %struct.cv* %cv.0 to %struct.sv*
  store %struct.sv* %132, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool305 = icmp eq %struct.cv* %cv.0, null
  br i1 %tobool305, label %land.end313.critedge, label %land.rhs

land.rhs:                                         ; preds = %if.then304
  %133 = getelementptr inbounds %struct.cv* %cv.0, i64 0, i32 1
  %134 = load i32* %133, align 4, !tbaa !3
  store %struct.sv* %132, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %inc311 = add i32 %134, 2
  store i32 %inc311, i32* %133, align 4, !tbaa !3
  br label %land.end313

land.end313.critedge:                             ; preds = %if.then304
  store %struct.sv* %132, %struct.sv** @PL_Sv, align 8, !tbaa !0
  br label %land.end313

land.end313:                                      ; preds = %land.end313.critedge, %land.rhs
  call void @Perl_save_freesv(%struct.sv* %132) #4
  br label %if.end315

if.end315:                                        ; preds = %if.then283, %land.end313
  %135 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private316 = getelementptr inbounds %struct.op* %135, i64 0, i32 7
  %136 = load i8* %op_private316, align 1, !tbaa !1
  %and318 = and i8 %136, -124
  %lval = getelementptr inbounds %struct.block_sub* %blku_sub, i64 0, i32 7
  store i8 %and318, i8* %lval, align 1, !tbaa !1
  br label %if.end324

if.end324:                                        ; preds = %cond.end252, %if.end315
  %137 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix325 = getelementptr inbounds %struct.stackinfo* %137, i64 0, i32 2
  %138 = load i32* %si_cxix325, align 4, !tbaa !3
  store i32 %138, i32* @PL_sortcxix, align 4, !tbaa !3
  %tobool327 = icmp ne i8 %hasargs.1, 0
  %or.cond734 = and i1 %tobool327, %tobool227
  br i1 %or.cond734, label %if.then330, label %if.end357

if.then330:                                       ; preds = %if.end324
  %139 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %140 = load %struct.sv** %139, align 8, !tbaa !0
  %141 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any333 = getelementptr inbounds %struct.gv* %141, i64 0, i32 0
  %142 = load %struct.xpvgv** %sv_any333, align 8, !tbaa !0
  %xgv_gp334 = getelementptr inbounds %struct.xpvgv* %142, i64 0, i32 7
  %143 = load %struct.gp** %xgv_gp334, align 8, !tbaa !0
  %gp_av = getelementptr inbounds %struct.gp* %143, i64 0, i32 4
  %144 = load %struct.av** %gp_av, align 8, !tbaa !0
  %savearray = getelementptr inbounds %struct.context* %119, i64 %idxprom255, i32 1, i32 0, i32 7, i32 0, i32 3
  %.c727 = bitcast %struct.av* %144 to %struct.op*
  store %struct.op* %.c727, %struct.op** %savearray, align 8, !tbaa !0
  store %struct.sv* %140, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool339 = icmp eq %struct.sv* %140, null
  br i1 %tobool339, label %land.end344, label %land.rhs340

land.rhs340:                                      ; preds = %if.then330
  %sv_refcnt341 = getelementptr inbounds %struct.sv* %140, i64 0, i32 1
  %145 = load i32* %sv_refcnt341, align 4, !tbaa !3
  %inc342 = add i32 %145, 1
  store i32 %inc342, i32* %sv_refcnt341, align 4, !tbaa !3
  br label %land.end344

land.end344:                                      ; preds = %if.then330, %land.rhs340
  %146 = bitcast %struct.sv* %140 to %struct.av*
  %147 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any346 = getelementptr inbounds %struct.gv* %147, i64 0, i32 0
  %148 = load %struct.xpvgv** %sv_any346, align 8, !tbaa !0
  %xgv_gp347 = getelementptr inbounds %struct.xpvgv* %148, i64 0, i32 7
  %149 = load %struct.gp** %xgv_gp347, align 8, !tbaa !0
  %gp_av348 = getelementptr inbounds %struct.gp* %149, i64 0, i32 4
  store %struct.av* %146, %struct.av** %gp_av348, align 8, !tbaa !0
  %150 = load %struct.av** @PL_comppad, align 8, !tbaa !0
  %oldcomppad = getelementptr inbounds %struct.context* %119, i64 %idxprom255, i32 1, i32 0, i32 7, i32 0, i32 7
  %.c728 = bitcast %struct.av* %150 to %struct.sv*
  store %struct.sv* %.c728, %struct.sv** %oldcomppad, align 8, !tbaa !0
  %argarray = getelementptr inbounds %struct.context* %119, i64 %idxprom255, i32 1, i32 0, i32 7, i32 0, i32 4
  %.c729 = bitcast %struct.sv* %140 to %struct.op*
  store %struct.op* %.c729, %struct.op** %argarray, align 8, !tbaa !0
  br label %if.end357

if.end357:                                        ; preds = %land.end344, %if.end324
  %idx.ext358 = sext i32 %max.1.lcssa786 to i64
  %idx.neg = sub i64 0, %idx.ext358
  %add.ptr359 = getelementptr inbounds %struct.sv** %p1.1.lcssa785, i64 %idx.neg
  br i1 %tobool227, label %cond.false363, label %cond.end367

cond.false363:                                    ; preds = %if.end357
  %cond366 = select i1 %tobool327, i32 (%struct.sv*, %struct.sv*)* @sortcv_stacked, i32 (%struct.sv*, %struct.sv*)* @sortcv
  br label %cond.end367

cond.end367:                                      ; preds = %if.end357, %cond.false363
  %cond368 = phi i32 (%struct.sv*, %struct.sv*)* [ %cond366, %cond.false363 ], [ @sortcv_xsub, %if.end357 ]
  call void %Perl_sortsv.S_sortsv_desc780782(%struct.sv** %add.ptr359, i64 %idx.ext358, i32 (%struct.sv*, %struct.sv*)* %cond368) #4
  %151 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix369 = getelementptr inbounds %struct.stackinfo* %151, i64 0, i32 2
  %152 = load i32* %si_cxix369, align 4, !tbaa !3
  %dec370 = add nsw i32 %152, -1
  store i32 %dec370, i32* %si_cxix369, align 4, !tbaa !3
  %idxprom371 = sext i32 %152 to i64
  %si_cxstack372 = getelementptr inbounds %struct.stackinfo* %151, i64 0, i32 1
  %153 = load %struct.context** %si_cxstack372, align 8, !tbaa !0
  %154 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %blku_oldsp376 = getelementptr inbounds %struct.context* %153, i64 %idxprom371, i32 1, i32 0, i32 0
  %155 = load i32* %blku_oldsp376, align 4, !tbaa !3
  %idx.ext377 = sext i32 %155 to i64
  %add.ptr378 = getelementptr inbounds %struct.sv** %154, i64 %idx.ext377
  %blku_oldcop381 = getelementptr inbounds %struct.context* %153, i64 %idxprom371, i32 1, i32 0, i32 1
  %156 = load %struct.cop** %blku_oldcop381, align 8, !tbaa !0
  store volatile %struct.cop* %156, %struct.cop** @PL_curcop, align 8, !tbaa !0
  %157 = load i32** @PL_markstack, align 8, !tbaa !0
  %blku_oldmarksp384 = getelementptr inbounds %struct.context* %153, i64 %idxprom371, i32 1, i32 0, i32 3
  %158 = load i32* %blku_oldmarksp384, align 4, !tbaa !3
  %idx.ext385 = sext i32 %158 to i64
  %add.ptr386 = getelementptr inbounds i32* %157, i64 %idx.ext385
  store i32* %add.ptr386, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %blku_oldscopesp389 = getelementptr inbounds %struct.context* %153, i64 %idxprom371, i32 1, i32 0, i32 4
  %159 = load i32* %blku_oldscopesp389, align 4, !tbaa !3
  store i32 %159, i32* @PL_scopestack_ix, align 4, !tbaa !3
  %blku_oldretsp392 = getelementptr inbounds %struct.context* %153, i64 %idxprom371, i32 1, i32 0, i32 2
  %160 = load i32* %blku_oldretsp392, align 4, !tbaa !3
  store i32 %160, i32* @PL_retstack_ix, align 4, !tbaa !3
  %blku_oldpm395 = getelementptr inbounds %struct.context* %153, i64 %idxprom371, i32 1, i32 0, i32 5
  %161 = load %struct.pmop** %blku_oldpm395, align 8, !tbaa !0
  store %struct.pmop* %161, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  store %struct.sv** %add.ptr378, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %162 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev401 = getelementptr inbounds %struct.stackinfo* %162, i64 0, i32 5
  %163 = load %struct.stackinfo** %si_prev401, align 8, !tbaa !0
  %tobool402 = icmp eq %struct.stackinfo* %163, null
  br i1 %tobool402, label %if.then403, label %if.end431

if.then403:                                       ; preds = %cond.end367
  %164 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %tobool404 = icmp eq %struct.gv* %164, null
  br i1 %tobool404, label %cond.false426, label %land.lhs.true405

land.lhs.true405:                                 ; preds = %if.then403
  %sv_flags406 = getelementptr inbounds %struct.gv* %164, i64 0, i32 2
  %165 = load i32* %sv_flags406, align 4, !tbaa !3
  %and407 = and i32 %165, 255
  %cmp408 = icmp eq i32 %and407, 13
  br i1 %cmp408, label %land.lhs.true410, label %cond.false426

land.lhs.true410:                                 ; preds = %land.lhs.true405
  %sv_any411 = getelementptr inbounds %struct.gv* %164, i64 0, i32 0
  %166 = load %struct.xpvgv** %sv_any411, align 8, !tbaa !0
  %xgv_gp412 = getelementptr inbounds %struct.xpvgv* %166, i64 0, i32 7
  %167 = load %struct.gp** %xgv_gp412, align 8, !tbaa !0
  %gp_io = getelementptr inbounds %struct.gp* %167, i64 0, i32 2
  %168 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool413 = icmp eq %struct.io* %168, null
  br i1 %tobool413, label %cond.false426, label %land.lhs.true414

land.lhs.true414:                                 ; preds = %land.lhs.true410
  %sv_any418 = getelementptr inbounds %struct.io* %168, i64 0, i32 0
  %169 = load %struct.xpvio** %sv_any418, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %169, i64 0, i32 8
  %170 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool419 = icmp eq %struct._PerlIO** %170, null
  br i1 %tobool419, label %cond.false426, label %cond.end428

cond.false426:                                    ; preds = %land.lhs.true414, %land.lhs.true410, %if.then403, %land.lhs.true405
  %call427 = call %struct._PerlIO** @Perl_PerlIO_stderr() #4
  br label %cond.end428

cond.end428:                                      ; preds = %land.lhs.true414, %cond.false426
  %cond429 = phi %struct._PerlIO** [ %call427, %cond.false426 ], [ %170, %land.lhs.true414 ]
  %call430 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond429, i8* getelementptr inbounds ([17 x i8]* @.str6, i64 0, i64 0)) #4
  call void @Perl_my_exit(i32 1) #4
  br label %if.end431

if.end431:                                        ; preds = %cond.end367, %cond.end428
  %171 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast432 = ptrtoint %struct.sv** %add.ptr378 to i64
  %sub.ptr.rhs.cast433 = ptrtoint %struct.sv** %171 to i64
  %sub.ptr.sub434 = sub i64 %sub.ptr.lhs.cast432, %sub.ptr.rhs.cast433
  %sub.ptr.div435 = ashr exact i64 %sub.ptr.sub434, 3
  %172 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any436 = getelementptr inbounds %struct.av* %172, i64 0, i32 0
  %173 = load %struct.xpvav** %sv_any436, align 8, !tbaa !0
  %xav_fill437 = getelementptr inbounds %struct.xpvav* %173, i64 0, i32 1
  store i64 %sub.ptr.div435, i64* %xav_fill437, align 8, !tbaa !4
  %si_stack438 = getelementptr inbounds %struct.stackinfo* %163, i64 0, i32 0
  %174 = load %struct.av** %si_stack438, align 8, !tbaa !0
  %sv_any439 = getelementptr inbounds %struct.av* %174, i64 0, i32 0
  %175 = load %struct.xpvav** %sv_any439, align 8, !tbaa !0
  %xav_array440 = getelementptr inbounds %struct.xpvav* %175, i64 0, i32 0
  %176 = load i8** %xav_array440, align 8, !tbaa !0
  %177 = bitcast i8* %176 to %struct.sv**
  store %struct.sv** %177, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %178 = load %struct.av** %si_stack438, align 8, !tbaa !0
  %sv_any442 = getelementptr inbounds %struct.av* %178, i64 0, i32 0
  %179 = load %struct.xpvav** %sv_any442, align 8, !tbaa !0
  %xav_max443 = getelementptr inbounds %struct.xpvav* %179, i64 0, i32 2
  %180 = load i64* %xav_max443, align 8, !tbaa !4
  %add.ptr444 = getelementptr inbounds %struct.sv** %177, i64 %180
  store %struct.sv** %add.ptr444, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %181 = load %struct.av** %si_stack438, align 8, !tbaa !0
  %sv_any446 = getelementptr inbounds %struct.av* %181, i64 0, i32 0
  %182 = load %struct.xpvav** %sv_any446, align 8, !tbaa !0
  %xav_fill447 = getelementptr inbounds %struct.xpvav* %182, i64 0, i32 1
  %183 = load i64* %xav_fill447, align 8, !tbaa !4
  %add.ptr448 = getelementptr inbounds %struct.sv** %177, i64 %183
  store %struct.sv** %add.ptr448, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %184 = load %struct.av** %si_stack438, align 8, !tbaa !0
  store %struct.av* %184, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %163, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %185 = load %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  %je_mustcatch450 = getelementptr inbounds %struct.jmpenv* %185, i64 0, i32 3
  store i8 %81, i8* %je_mustcatch450, align 1, !tbaa !1
  br label %if.end500

if.else451:                                       ; preds = %if.then197
  %186 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast452 = ptrtoint %struct.sv** %186 to i64
  %sub.ptr.rhs.cast453 = ptrtoint %struct.sv** %sp.2779783 to i64
  %sub.ptr.sub454 = sub i64 %sub.ptr.lhs.cast452, %sub.ptr.rhs.cast453
  %cmp456 = icmp slt i64 %sub.ptr.sub454, 160
  br i1 %cmp456, label %if.then458, label %if.end468

if.then458:                                       ; preds = %if.else451
  %call465 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.2779783, %struct.sv** %sp.2779783, i32 20) #4
  br label %if.end468

if.end468:                                        ; preds = %if.then458, %if.else451
  br i1 %tobool189791, label %cond.true470, label %cond.false473

cond.true470:                                     ; preds = %if.end468
  %sv_any471 = getelementptr inbounds %struct.av* %av.0778784, i64 0, i32 0
  %187 = load %struct.xpvav** %sv_any471, align 8, !tbaa !0
  %xav_array472 = getelementptr inbounds %struct.xpvav* %187, i64 0, i32 0
  %188 = load i8** %xav_array472, align 8, !tbaa !0
  %189 = bitcast i8* %188 to %struct.sv**
  br label %cond.end477

cond.false473:                                    ; preds = %if.end468
  %190 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr476 = getelementptr inbounds %struct.sv** %190, i64 %add.ptr2.sum
  br label %cond.end477

cond.end477:                                      ; preds = %cond.false473, %cond.true470
  %cond478 = phi %struct.sv** [ %189, %cond.true470 ], [ %add.ptr476, %cond.false473 ]
  %conv479 = sext i32 %max.1.lcssa786 to i64
  %and481 = and i32 %conv94, 1
  %tobool482 = icmp eq i32 %and481, 0
  br i1 %tobool482, label %cond.false495, label %cond.true483

cond.true483:                                     ; preds = %cond.end477
  %and485 = and i32 %conv94, 2
  %tobool486 = icmp eq i32 %and485, 0
  %tobool488 = icmp ne i32 %overloading.0.lcssa790, 0
  br i1 %tobool486, label %cond.false490, label %cond.true487

cond.true487:                                     ; preds = %cond.true483
  %cond489 = select i1 %tobool488, i32 (%struct.sv*, %struct.sv*)* @amagic_i_ncmp, i32 (%struct.sv*, %struct.sv*)* @sv_i_ncmp
  br label %cond.end498

cond.false490:                                    ; preds = %cond.true483
  %cond492 = select i1 %tobool488, i32 (%struct.sv*, %struct.sv*)* @amagic_ncmp, i32 (%struct.sv*, %struct.sv*)* @sv_ncmp
  br label %cond.end498

cond.false495:                                    ; preds = %cond.end477
  %tobool496 = icmp ne i32 %overloading.0.lcssa790, 0
  %cond497 = select i1 %tobool496, i32 (%struct.sv*, %struct.sv*)* @amagic_cmp, i32 (%struct.sv*, %struct.sv*)* @Perl_sv_cmp
  br label %cond.end498

cond.end498:                                      ; preds = %cond.true487, %cond.false490, %cond.false495
  %cond499 = phi i32 (%struct.sv*, %struct.sv*)* [ %cond497, %cond.false495 ], [ %cond489, %cond.true487 ], [ %cond492, %cond.false490 ]
  call void %Perl_sortsv.S_sortsv_desc780782(%struct.sv** %cond478, i64 %conv479, i32 (%struct.sv*, %struct.sv*)* %cond499) #4
  br label %if.end500

if.end500:                                        ; preds = %cond.end498, %if.end431
  %start.0 = phi %struct.sv** [ %add.ptr359, %if.end431 ], [ %cond478, %cond.end498 ]
  %and502 = and i32 %conv94, 4
  %tobool503 = icmp eq i32 %and502, 0
  br i1 %tobool503, label %if.end513, label %if.then504

if.then504:                                       ; preds = %if.end500
  %idx.ext505 = sext i32 %max.1.lcssa786 to i64
  %add.ptr506.sum = add i64 %idx.ext505, -1
  %cmp508746 = icmp sgt i64 %add.ptr506.sum, 0
  br i1 %cmp508746, label %while.body.lr.ph, label %if.end513

while.body.lr.ph:                                 ; preds = %if.then504
  %add.ptr507 = getelementptr inbounds %struct.sv** %start.0, i64 %add.ptr506.sum
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %q.0748 = phi %struct.sv** [ %add.ptr507, %while.body.lr.ph ], [ %incdec.ptr511, %while.body ]
  %start.1747 = phi %struct.sv** [ %start.0, %while.body.lr.ph ], [ %incdec.ptr510, %while.body ]
  %191 = load %struct.sv** %start.1747, align 8, !tbaa !0
  %192 = load %struct.sv** %q.0748, align 8, !tbaa !0
  %incdec.ptr510 = getelementptr inbounds %struct.sv** %start.1747, i64 1
  store %struct.sv* %192, %struct.sv** %start.1747, align 8, !tbaa !0
  %incdec.ptr511 = getelementptr inbounds %struct.sv** %q.0748, i64 -1
  store %struct.sv* %191, %struct.sv** %q.0748, align 8, !tbaa !0
  %cmp508 = icmp ult %struct.sv** %incdec.ptr510, %incdec.ptr511
  br i1 %cmp508, label %while.body, label %if.end513

if.end513:                                        ; preds = %if.then504, %while.body, %if.end500, %if.end194
  %tobool514 = icmp eq %struct.av* %av.0778784, null
  %brmerge = or i1 %tobool514, %tobool189791
  br i1 %brmerge, label %if.end556, label %if.then517

if.then517:                                       ; preds = %if.end513
  %193 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %cmp525744 = icmp sgt i32 %max.1.lcssa786, 0
  br i1 %cmp525744, label %for.body527, label %if.end556.critedge

for.body527:                                      ; preds = %if.then517, %for.body527
  %indvars.iv762 = phi i64 [ %indvars.iv.next763, %for.body527 ], [ 0, %if.then517 ]
  %add.ptr523.sum725 = add i64 %indvars.iv762, %add.ptr2.sum
  %arrayidx529 = getelementptr inbounds %struct.sv** %193, i64 %add.ptr523.sum725
  %194 = load %struct.sv** %arrayidx529, align 8, !tbaa !0
  %call530 = call %struct.sv* @Perl_newSVsv(%struct.sv* %194) #4
  store %struct.sv* %call530, %struct.sv** %arrayidx529, align 8, !tbaa !0
  %indvars.iv.next763 = add i64 %indvars.iv762, 1
  %lftr.wideiv764 = trunc i64 %indvars.iv.next763 to i32
  %exitcond765 = icmp eq i32 %lftr.wideiv764, %max.1.lcssa786
  br i1 %exitcond765, label %for.end535, label %for.body527

for.end535:                                       ; preds = %for.body527
  call void @Perl_av_clear(%struct.av* %av.0778784) #4
  call void @Perl_av_extend(%struct.av* %av.0778784, i32 %max.1.lcssa786) #4
  br i1 %cmp525744, label %for.body539, label %if.end556

for.body539:                                      ; preds = %for.end535, %for.inc553
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc553 ], [ 0, %for.end535 ]
  %add.ptr523.sum = add i64 %indvars.iv, %add.ptr2.sum
  %arrayidx541 = getelementptr inbounds %struct.sv** %193, i64 %add.ptr523.sum
  %195 = load %struct.sv** %arrayidx541, align 8, !tbaa !0
  %196 = trunc i64 %indvars.iv to i32
  %call542 = call %struct.sv** @Perl_av_store(%struct.av* %av.0778784, i32 %196, %struct.sv* %195) #4
  %sv_flags543 = getelementptr inbounds %struct.sv* %195, i64 0, i32 2
  %197 = load i32* %sv_flags543, align 4, !tbaa !3
  %and544 = and i32 %197, 16384
  %tobool545 = icmp eq i32 %and544, 0
  br i1 %tobool545, label %if.end548, label %if.then546

if.then546:                                       ; preds = %for.body539
  %call547 = call i32 @Perl_mg_set(%struct.sv* %195) #4
  br label %if.end548

if.end548:                                        ; preds = %for.body539, %if.then546
  %tobool549 = icmp eq %struct.sv** %call542, null
  br i1 %tobool549, label %if.then550, label %for.inc553

if.then550:                                       ; preds = %if.end548
  %call551 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %195) #4
  br label %for.inc553

for.inc553:                                       ; preds = %if.end548, %if.then550
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %max.1.lcssa786
  br i1 %exitcond, label %if.end556, label %for.body539

if.end556.critedge:                               ; preds = %if.then517
  call void @Perl_av_clear(%struct.av* %av.0778784) #4
  call void @Perl_av_extend(%struct.av* %av.0778784, i32 %max.1.lcssa786) #4
  br label %if.end556

if.end556:                                        ; preds = %if.end556.critedge, %for.end535, %for.inc553, %if.end513
  call void @Perl_pop_scope() #4
  %198 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %199 = sext i32 %max.1.lcssa786 to i64
  %idx.ext564 = select i1 %tobool189791, i64 0, i64 %199
  %add.ptr558.sum = add i64 %idx.ext564, %idx.ext
  %add.ptr565 = getelementptr inbounds %struct.sv** %198, i64 %add.ptr558.sum
  store %struct.sv** %add.ptr565, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end556, %if.else64, %if.then61, %if.then
  %retval.0 = phi %struct.op* [ %10, %if.then ], [ %7, %if.end556 ], [ %call63, %if.then61 ], [ %call65, %if.else64 ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare i32 @Perl_dowantarray() #1

; Function Attrs: optsize
declare void @Perl_push_scope() #1

; Function Attrs: optsize
declare void @Perl_save_vptr(i8*) #1

; Function Attrs: optsize
declare %struct.cv* @Perl_sv_2cv(%struct.sv*, %struct.hv**, %struct.gv**, i32) #1

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_newmortal() #1

; Function Attrs: optsize
declare void @Perl_gv_efullname4(%struct.sv*, %struct.gv*, i8*, i8 signext) #1

; Function Attrs: optsize
declare %struct.op* @Perl_die(i8*, ...) #1

; Function Attrs: optsize
declare void @Perl_savestack_grow() #1

; Function Attrs: optsize
declare i32 @Perl_mg_size(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_av_fetch(%struct.av*, i32, i32) #1

; Function Attrs: optsize
declare void @Perl_save_int(i32*) #1

; Function Attrs: optsize
declare void @Perl_save_op() #1

; Function Attrs: optsize
declare %struct.stackinfo* @Perl_new_stackinfo(i32, i32) #1

; Function Attrs: optsize
declare void @Perl_save_sptr(%struct.sv**) #1

; Function Attrs: optsize
declare i32 @Perl_cxinc() #1

; Function Attrs: optsize
declare void @Perl_save_freesv(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define internal i32 @sortcv_xsub(%struct.sv* %a, %struct.sv* %b) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %1 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %2 = load %struct.op** @PL_sortcop, align 8, !tbaa !0
  %3 = bitcast %struct.op* %2 to %struct.cv*
  %4 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %5 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %5, i64 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %6 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp = icmp eq i32* %incdec.ptr, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @Perl_markstack_grow() #4
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %.pre34 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = phi i32* [ %.pre34, %if.then ], [ %incdec.ptr, %entry ]
  %8 = phi %struct.sv** [ %.pre, %if.then ], [ %4, %entry ]
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div32 = lshr exact i64 %sub.ptr.sub, 3
  %conv = trunc i64 %sub.ptr.div32 to i32
  store i32 %conv, i32* %7, align 4, !tbaa !3
  %9 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %9 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %cmp5 = icmp slt i64 %sub.ptr.sub3, 16
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %call = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %4, %struct.sv** %4, i32 2) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %sp.0 = phi %struct.sv** [ %call, %if.then7 ], [ %4, %if.end ]
  %incdec.ptr9 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %a, %struct.sv** %incdec.ptr9, align 8, !tbaa !0
  %incdec.ptr10 = getelementptr inbounds %struct.sv** %sp.0, i64 2
  store %struct.sv* %b, %struct.sv** %incdec.ptr10, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr10, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %sv_any = bitcast %struct.op* %2 to %struct.xpvcv**
  %10 = load %struct.xpvcv** %sv_any, align 8, !tbaa !0
  %xcv_xsub = getelementptr inbounds %struct.xpvcv* %10, i64 0, i32 10
  %11 = load void (%struct.cv*)** %xcv_xsub, align 8, !tbaa !0
  tail call void %11(%struct.cv* %3) #4
  %12 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %13 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds %struct.sv** %13, i64 1
  %cmp11 = icmp eq %struct.sv** %12, %add.ptr
  br i1 %cmp11, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end8
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([43 x i8]* @.str7, i64 0, i64 0)) #4
  %.pre35 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  br label %if.end14

if.end14:                                         ; preds = %if.end8, %if.then13
  %14 = phi %struct.sv** [ %12, %if.end8 ], [ %.pre35, %if.then13 ]
  %15 = load %struct.sv** %14, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %15, i64 0, i32 2
  %16 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %16, 50331648
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end14
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([46 x i8]* @.str8, i64 0, i64 0)) #4
  %.pre36 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %.pre37 = load %struct.sv** %.pre36, align 8, !tbaa !0
  %sv_flags17.phi.trans.insert = getelementptr inbounds %struct.sv* %.pre37, i64 0, i32 2
  %.pre38 = load i32* %sv_flags17.phi.trans.insert, align 4, !tbaa !3
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %if.then15
  %17 = phi i32 [ %16, %if.end14 ], [ %.pre38, %if.then15 ]
  %18 = phi %struct.sv* [ %15, %if.end14 ], [ %.pre37, %if.then15 ]
  %and18 = and i32 %17, 65536
  %tobool19 = icmp eq i32 %and18, 0
  br i1 %tobool19, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end16
  %sv_any20 = getelementptr inbounds %struct.sv* %18, i64 0, i32 0
  %19 = load i8** %sv_any20, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %19, i64 24
  %20 = bitcast i8* %xiv_iv to i64*
  %21 = load i64* %20, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.end16
  %call21 = tail call i64 @Perl_sv_2iv(%struct.sv* %18) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %21, %cond.true ], [ %call21, %cond.false ]
  %conv22 = trunc i64 %cond to i32
  %22 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %cmp2333 = icmp sgt i32 %22, %1
  br i1 %cmp2333, label %while.body, label %while.end

while.body:                                       ; preds = %cond.end, %while.body
  tail call void @Perl_pop_scope() #4
  %23 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %cmp23 = icmp sgt i32 %23, %1
  br i1 %cmp23, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %cond.end
  tail call void @Perl_leave_scope(i32 %0) #4
  ret i32 %conv22
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @sortcv_stacked(%struct.sv* %a, %struct.sv* %b) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %1 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %2 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.gv* %2, i64 0, i32 0
  %3 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %3, i64 0, i32 7
  %4 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_av = getelementptr inbounds %struct.gp* %4, i64 0, i32 4
  %5 = load %struct.av** %gp_av, align 8, !tbaa !0
  %sv_any1 = getelementptr inbounds %struct.av* %5, i64 0, i32 0
  %6 = load %struct.xpvav** %sv_any1, align 8, !tbaa !0
  %xav_max = getelementptr inbounds %struct.xpvav* %6, i64 0, i32 2
  %7 = load i64* %xav_max, align 8, !tbaa !4
  %cmp = icmp slt i64 %7, 1
  br i1 %cmp, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  %xav_alloc = getelementptr inbounds %struct.xpvav* %6, i64 0, i32 7
  %8 = load %struct.sv*** %xav_alloc, align 8, !tbaa !0
  %xav_array = getelementptr inbounds %struct.xpvav* %6, i64 0, i32 0
  %9 = load i8** %xav_array, align 8, !tbaa !0
  %10 = bitcast i8* %9 to %struct.sv**
  %cmp4 = icmp eq %struct.sv** %10, %8
  br i1 %cmp4, label %if.then16, label %if.end

if.end:                                           ; preds = %if.then
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %add = add nsw i64 %sub.ptr.div, %7
  store i64 %add, i64* %xav_max, align 8, !tbaa !4
  %11 = bitcast %struct.sv** %8 to i8*
  store i8* %11, i8** %xav_array, align 8, !tbaa !0
  %.pre = load %struct.xpvav** %sv_any1, align 8, !tbaa !0
  %xav_max14.phi.trans.insert = getelementptr inbounds %struct.xpvav* %.pre, i64 0, i32 2
  %.pre58 = load i64* %xav_max14.phi.trans.insert, align 8, !tbaa !4
  %cmp15 = icmp slt i64 %.pre58, 1
  br i1 %cmp15, label %if.then16, label %if.end22

if.then16:                                        ; preds = %if.then, %if.end
  %12 = phi %struct.xpvav* [ %.pre, %if.end ], [ %6, %if.then ]
  %xav_max14 = getelementptr inbounds %struct.xpvav* %12, i64 0, i32 2
  store i64 1, i64* %xav_max14, align 8, !tbaa !4
  %13 = bitcast %struct.sv** %8 to i8*
  %call = tail call i8* @Perl_safesysrealloc(i8* %13, i64 16) #4
  %14 = load %struct.xpvav** %sv_any1, align 8, !tbaa !0
  %xpv_pv20 = getelementptr inbounds %struct.xpvav* %14, i64 0, i32 0
  store i8* %call, i8** %xpv_pv20, align 8, !tbaa !0
  %.pre59 = load %struct.xpvav** %sv_any1, align 8, !tbaa !0
  br label %if.end22

if.end22:                                         ; preds = %if.end, %if.then16, %entry
  %15 = phi %struct.xpvav* [ %.pre, %if.end ], [ %.pre59, %if.then16 ], [ %6, %entry ]
  %xav_fill = getelementptr inbounds %struct.xpvav* %15, i64 0, i32 1
  store i64 1, i64* %xav_fill, align 8, !tbaa !4
  %xav_array25 = getelementptr inbounds %struct.xpvav* %15, i64 0, i32 0
  %16 = load i8** %xav_array25, align 8, !tbaa !0
  %17 = bitcast i8* %16 to %struct.sv**
  store %struct.sv* %a, %struct.sv** %17, align 8, !tbaa !0
  %18 = load %struct.xpvav** %sv_any1, align 8, !tbaa !0
  %xav_array27 = getelementptr inbounds %struct.xpvav* %18, i64 0, i32 0
  %19 = load i8** %xav_array27, align 8, !tbaa !0
  %arrayidx28 = getelementptr inbounds i8* %19, i64 8
  %20 = bitcast i8* %arrayidx28 to %struct.sv**
  store %struct.sv* %b, %struct.sv** %20, align 8, !tbaa !0
  %21 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  store %struct.sv** %21, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %22 = load %struct.op** @PL_sortcop, align 8, !tbaa !0
  store %struct.op* %22, %struct.op** @PL_op, align 8, !tbaa !0
  %23 = load i32 ()** @PL_runops, align 8, !tbaa !0
  %call29 = tail call i32 %23() #4
  %24 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %25 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds %struct.sv** %25, i64 1
  %cmp30 = icmp eq %struct.sv** %24, %add.ptr
  br i1 %cmp30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end22
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([43 x i8]* @.str7, i64 0, i64 0)) #4
  %.pre60 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  br label %if.end32

if.end32:                                         ; preds = %if.end22, %if.then31
  %26 = phi %struct.sv** [ %24, %if.end22 ], [ %.pre60, %if.then31 ]
  %27 = load %struct.sv** %26, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %27, i64 0, i32 2
  %28 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %28, 50331648
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end32
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([46 x i8]* @.str8, i64 0, i64 0)) #4
  %.pre61 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %.pre62 = load %struct.sv** %.pre61, align 8, !tbaa !0
  %sv_flags35.phi.trans.insert = getelementptr inbounds %struct.sv* %.pre62, i64 0, i32 2
  %.pre63 = load i32* %sv_flags35.phi.trans.insert, align 4, !tbaa !3
  br label %if.end34

if.end34:                                         ; preds = %if.end32, %if.then33
  %29 = phi i32 [ %28, %if.end32 ], [ %.pre63, %if.then33 ]
  %30 = phi %struct.sv* [ %27, %if.end32 ], [ %.pre62, %if.then33 ]
  %and36 = and i32 %29, 65536
  %tobool37 = icmp eq i32 %and36, 0
  br i1 %tobool37, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end34
  %sv_any38 = getelementptr inbounds %struct.sv* %30, i64 0, i32 0
  %31 = load i8** %sv_any38, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %31, i64 24
  %32 = bitcast i8* %xiv_iv to i64*
  %33 = load i64* %32, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.end34
  %call39 = tail call i64 @Perl_sv_2iv(%struct.sv* %30) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %33, %cond.true ], [ %call39, %cond.false ]
  %conv = trunc i64 %cond to i32
  %34 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %cmp4057 = icmp sgt i32 %34, %1
  br i1 %cmp4057, label %while.body, label %while.end

while.body:                                       ; preds = %cond.end, %while.body
  tail call void @Perl_pop_scope() #4
  %35 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %cmp40 = icmp sgt i32 %35, %1
  br i1 %cmp40, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %cond.end
  tail call void @Perl_leave_scope(i32 %0) #4
  ret i32 %conv
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @sortcv(%struct.sv* %a, %struct.sv* %b) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %1 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %2 = load %struct.gv** @PL_firstgv, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.gv* %2, i64 0, i32 0
  %3 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %3, i64 0, i32 7
  %4 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %4, i64 0, i32 0
  store %struct.sv* %a, %struct.sv** %gp_sv, align 8, !tbaa !0
  %5 = load %struct.gv** @PL_secondgv, align 8, !tbaa !0
  %sv_any1 = getelementptr inbounds %struct.gv* %5, i64 0, i32 0
  %6 = load %struct.xpvgv** %sv_any1, align 8, !tbaa !0
  %xgv_gp2 = getelementptr inbounds %struct.xpvgv* %6, i64 0, i32 7
  %7 = load %struct.gp** %xgv_gp2, align 8, !tbaa !0
  %gp_sv3 = getelementptr inbounds %struct.gp* %7, i64 0, i32 0
  store %struct.sv* %b, %struct.sv** %gp_sv3, align 8, !tbaa !0
  %8 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  store %struct.sv** %8, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %9 = load %struct.op** @PL_sortcop, align 8, !tbaa !0
  store %struct.op* %9, %struct.op** @PL_op, align 8, !tbaa !0
  %10 = load i32 ()** @PL_runops, align 8, !tbaa !0
  %call = tail call i32 %10() #4
  %11 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %12 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds %struct.sv** %12, i64 1
  %cmp = icmp eq %struct.sv** %11, %add.ptr
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([43 x i8]* @.str7, i64 0, i64 0)) #4
  %.pre = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %13 = phi %struct.sv** [ %11, %entry ], [ %.pre, %if.then ]
  %14 = load %struct.sv** %13, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %14, i64 0, i32 2
  %15 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %15, 50331648
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([46 x i8]* @.str8, i64 0, i64 0)) #4
  %.pre14 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %.pre15 = load %struct.sv** %.pre14, align 8, !tbaa !0
  %sv_flags6.phi.trans.insert = getelementptr inbounds %struct.sv* %.pre15, i64 0, i32 2
  %.pre16 = load i32* %sv_flags6.phi.trans.insert, align 4, !tbaa !3
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then4
  %16 = phi i32 [ %15, %if.end ], [ %.pre16, %if.then4 ]
  %17 = phi %struct.sv* [ %14, %if.end ], [ %.pre15, %if.then4 ]
  %and7 = and i32 %16, 65536
  %tobool8 = icmp eq i32 %and7, 0
  br i1 %tobool8, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end5
  %sv_any9 = getelementptr inbounds %struct.sv* %17, i64 0, i32 0
  %18 = load i8** %sv_any9, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %18, i64 24
  %19 = bitcast i8* %xiv_iv to i64*
  %20 = load i64* %19, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.end5
  %call10 = tail call i64 @Perl_sv_2iv(%struct.sv* %17) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %20, %cond.true ], [ %call10, %cond.false ]
  %conv = trunc i64 %cond to i32
  %21 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %cmp1113 = icmp sgt i32 %21, %1
  br i1 %cmp1113, label %while.body, label %while.end

while.body:                                       ; preds = %cond.end, %while.body
  tail call void @Perl_pop_scope() #4
  %22 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %cmp11 = icmp sgt i32 %22, %1
  br i1 %cmp11, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %cond.end
  tail call void @Perl_leave_scope(i32 %0) #4
  ret i32 %conv
}

; Function Attrs: optsize
declare i32 @PerlIO_printf(%struct._PerlIO**, i8*, ...) #1

; Function Attrs: optsize
declare %struct._PerlIO** @Perl_PerlIO_stderr() #1

; Function Attrs: optsize
declare void @Perl_my_exit(i32) #1

; Function Attrs: nounwind optsize uwtable
define internal i32 @amagic_i_ncmp(%struct.sv* %a, %struct.sv* %b) #0 {
entry:
  %0 = load i64* @PL_amagic_generation, align 8, !tbaa !4
  %tobool = icmp eq i64 %0, 0
  br i1 %tobool, label %if.end30, label %if.then

if.then:                                          ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv* %a, i64 0, i32 2
  %1 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %1, 268435456
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %lor.lhs.false, label %if.end6

lor.lhs.false:                                    ; preds = %if.then
  %sv_flags2 = getelementptr inbounds %struct.sv* %b, i64 0, i32 2
  %2 = load i32* %sv_flags2, align 4, !tbaa !3
  %and3 = and i32 %2, 268435456
  %tobool4 = icmp eq i32 %and3, 0
  br i1 %tobool4, label %if.end30, label %if.end6

if.end6:                                          ; preds = %if.then, %lor.lhs.false
  %call = tail call %struct.sv* @Perl_amagic_call(%struct.sv* %a, %struct.sv* %b, i32 34, i32 0) #4
  %tobool7 = icmp eq %struct.sv* %call, null
  br i1 %tobool7, label %if.end30, label %if.then8

if.then8:                                         ; preds = %if.end6
  %sv_flags9 = getelementptr inbounds %struct.sv* %call, i64 0, i32 2
  %3 = load i32* %sv_flags9, align 4, !tbaa !3
  %and10 = and i32 %3, 65536
  %tobool11 = icmp eq i32 %and10, 0
  br i1 %tobool11, label %if.end17, label %if.then12

if.then12:                                        ; preds = %if.then8
  %sv_any = getelementptr inbounds %struct.sv* %call, i64 0, i32 0
  %4 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %4, i64 24
  %5 = bitcast i8* %xiv_iv to i64*
  %6 = load i64* %5, align 8, !tbaa !4
  %conv = trunc i64 %6 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %return, label %if.end15

if.end15:                                         ; preds = %if.then12
  %tobool16 = icmp ne i32 %conv, 0
  %cond = sext i1 %tobool16 to i32
  br label %return

if.end17:                                         ; preds = %if.then8
  %and19 = and i32 %3, 131072
  %tobool20 = icmp eq i32 %and19, 0
  br i1 %tobool20, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end17
  %sv_any21 = getelementptr inbounds %struct.sv* %call, i64 0, i32 0
  %7 = load i8** %sv_any21, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %7, i64 32
  %8 = bitcast i8* %xnv_nv to double*
  %9 = load double* %8, align 8, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end17
  %call22 = tail call double @Perl_sv_2nv(%struct.sv* %call) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond23 = phi double [ %9, %cond.true ], [ %call22, %cond.false ]
  %cmp24 = fcmp ogt double %cond23, 0.000000e+00
  br i1 %cmp24, label %return, label %if.end27

if.end27:                                         ; preds = %cond.end
  %tobool28 = fcmp une double %cond23, 0.000000e+00
  %cond29 = sext i1 %tobool28 to i32
  br label %return

if.end30:                                         ; preds = %entry, %lor.lhs.false, %if.end6
  %call31 = tail call i32 @sv_i_ncmp(%struct.sv* %a, %struct.sv* %b) #5
  br label %return

return:                                           ; preds = %cond.end, %if.then12, %if.end30, %if.end27, %if.end15
  %retval.0 = phi i32 [ %cond, %if.end15 ], [ %cond29, %if.end27 ], [ %call31, %if.end30 ], [ 1, %if.then12 ], [ 1, %cond.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @sv_i_ncmp(%struct.sv* %a, %struct.sv* %b) #0 {
entry:
  %sv_flags = getelementptr inbounds %struct.sv* %a, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 65536
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %a, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %1, i64 24
  %2 = bitcast i8* %xiv_iv to i64*
  %3 = load i64* %2, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = tail call i64 @Perl_sv_2iv(%struct.sv* %a) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %call, %cond.false ]
  %sv_flags1 = getelementptr inbounds %struct.sv* %b, i64 0, i32 2
  %4 = load i32* %sv_flags1, align 4, !tbaa !3
  %and2 = and i32 %4, 65536
  %tobool3 = icmp eq i32 %and2, 0
  br i1 %tobool3, label %cond.false7, label %cond.true4

cond.true4:                                       ; preds = %cond.end
  %sv_any5 = getelementptr inbounds %struct.sv* %b, i64 0, i32 0
  %5 = load i8** %sv_any5, align 8, !tbaa !0
  %xiv_iv6 = getelementptr inbounds i8* %5, i64 24
  %6 = bitcast i8* %xiv_iv6 to i64*
  %7 = load i64* %6, align 8, !tbaa !4
  br label %cond.end9

cond.false7:                                      ; preds = %cond.end
  %call8 = tail call i64 @Perl_sv_2iv(%struct.sv* %b) #4
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false7, %cond.true4
  %cond10 = phi i64 [ %7, %cond.true4 ], [ %call8, %cond.false7 ]
  %cmp = icmp slt i64 %cond, %cond10
  br i1 %cmp, label %cond.end15, label %cond.false12

cond.false12:                                     ; preds = %cond.end9
  %cmp13 = icmp sgt i64 %cond, %cond10
  %cond14 = zext i1 %cmp13 to i32
  br label %cond.end15

cond.end15:                                       ; preds = %cond.end9, %cond.false12
  %cond16 = phi i32 [ %cond14, %cond.false12 ], [ -1, %cond.end9 ]
  ret i32 %cond16
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @amagic_ncmp(%struct.sv* %a, %struct.sv* %b) #0 {
entry:
  %0 = load i64* @PL_amagic_generation, align 8, !tbaa !4
  %tobool = icmp eq i64 %0, 0
  br i1 %tobool, label %if.end30, label %if.then

if.then:                                          ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv* %a, i64 0, i32 2
  %1 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %1, 268435456
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %lor.lhs.false, label %if.end6

lor.lhs.false:                                    ; preds = %if.then
  %sv_flags2 = getelementptr inbounds %struct.sv* %b, i64 0, i32 2
  %2 = load i32* %sv_flags2, align 4, !tbaa !3
  %and3 = and i32 %2, 268435456
  %tobool4 = icmp eq i32 %and3, 0
  br i1 %tobool4, label %if.end30, label %if.end6

if.end6:                                          ; preds = %if.then, %lor.lhs.false
  %call = tail call %struct.sv* @Perl_amagic_call(%struct.sv* %a, %struct.sv* %b, i32 34, i32 0) #4
  %tobool7 = icmp eq %struct.sv* %call, null
  br i1 %tobool7, label %if.end30, label %if.then8

if.then8:                                         ; preds = %if.end6
  %sv_flags9 = getelementptr inbounds %struct.sv* %call, i64 0, i32 2
  %3 = load i32* %sv_flags9, align 4, !tbaa !3
  %and10 = and i32 %3, 65536
  %tobool11 = icmp eq i32 %and10, 0
  br i1 %tobool11, label %if.end17, label %if.then12

if.then12:                                        ; preds = %if.then8
  %sv_any = getelementptr inbounds %struct.sv* %call, i64 0, i32 0
  %4 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %4, i64 24
  %5 = bitcast i8* %xiv_iv to i64*
  %6 = load i64* %5, align 8, !tbaa !4
  %conv = trunc i64 %6 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %return, label %if.end15

if.end15:                                         ; preds = %if.then12
  %tobool16 = icmp ne i32 %conv, 0
  %cond = sext i1 %tobool16 to i32
  br label %return

if.end17:                                         ; preds = %if.then8
  %and19 = and i32 %3, 131072
  %tobool20 = icmp eq i32 %and19, 0
  br i1 %tobool20, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end17
  %sv_any21 = getelementptr inbounds %struct.sv* %call, i64 0, i32 0
  %7 = load i8** %sv_any21, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %7, i64 32
  %8 = bitcast i8* %xnv_nv to double*
  %9 = load double* %8, align 8, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end17
  %call22 = tail call double @Perl_sv_2nv(%struct.sv* %call) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond23 = phi double [ %9, %cond.true ], [ %call22, %cond.false ]
  %cmp24 = fcmp ogt double %cond23, 0.000000e+00
  br i1 %cmp24, label %return, label %if.end27

if.end27:                                         ; preds = %cond.end
  %tobool28 = fcmp une double %cond23, 0.000000e+00
  %cond29 = sext i1 %tobool28 to i32
  br label %return

if.end30:                                         ; preds = %entry, %lor.lhs.false, %if.end6
  %call31 = tail call i32 @sv_ncmp(%struct.sv* %a, %struct.sv* %b) #5
  br label %return

return:                                           ; preds = %cond.end, %if.then12, %if.end30, %if.end27, %if.end15
  %retval.0 = phi i32 [ %cond, %if.end15 ], [ %cond29, %if.end27 ], [ %call31, %if.end30 ], [ 1, %if.then12 ], [ 1, %cond.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @sv_ncmp(%struct.sv* %a, %struct.sv* %b) #0 {
entry:
  %sv_flags = getelementptr inbounds %struct.sv* %a, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 131072
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %a, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %1, i64 32
  %2 = bitcast i8* %xnv_nv to double*
  %3 = load double* %2, align 8, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = tail call double @Perl_sv_2nv(%struct.sv* %a) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %3, %cond.true ], [ %call, %cond.false ]
  %sv_flags1 = getelementptr inbounds %struct.sv* %b, i64 0, i32 2
  %4 = load i32* %sv_flags1, align 4, !tbaa !3
  %and2 = and i32 %4, 131072
  %tobool3 = icmp eq i32 %and2, 0
  br i1 %tobool3, label %cond.false7, label %cond.true4

cond.true4:                                       ; preds = %cond.end
  %sv_any5 = getelementptr inbounds %struct.sv* %b, i64 0, i32 0
  %5 = load i8** %sv_any5, align 8, !tbaa !0
  %xnv_nv6 = getelementptr inbounds i8* %5, i64 32
  %6 = bitcast i8* %xnv_nv6 to double*
  %7 = load double* %6, align 8, !tbaa !5
  br label %cond.end9

cond.false7:                                      ; preds = %cond.end
  %call8 = tail call double @Perl_sv_2nv(%struct.sv* %b) #4
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false7, %cond.true4
  %cond10 = phi double [ %7, %cond.true4 ], [ %call8, %cond.false7 ]
  %cmp = fcmp olt double %cond, %cond10
  br i1 %cmp, label %cond.end15, label %cond.false12

cond.false12:                                     ; preds = %cond.end9
  %cmp13 = fcmp ogt double %cond, %cond10
  %cond14 = zext i1 %cmp13 to i32
  br label %cond.end15

cond.end15:                                       ; preds = %cond.end9, %cond.false12
  %cond16 = phi i32 [ %cond14, %cond.false12 ], [ -1, %cond.end9 ]
  ret i32 %cond16
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @amagic_cmp(%struct.sv* %str1, %struct.sv* %str2) #0 {
entry:
  %0 = load i64* @PL_amagic_generation, align 8, !tbaa !4
  %tobool = icmp eq i64 %0, 0
  br i1 %tobool, label %if.end30, label %if.then

if.then:                                          ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv* %str1, i64 0, i32 2
  %1 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %1, 268435456
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %lor.lhs.false, label %if.end6

lor.lhs.false:                                    ; preds = %if.then
  %sv_flags2 = getelementptr inbounds %struct.sv* %str2, i64 0, i32 2
  %2 = load i32* %sv_flags2, align 4, !tbaa !3
  %and3 = and i32 %2, 268435456
  %tobool4 = icmp eq i32 %and3, 0
  br i1 %tobool4, label %if.end30, label %if.end6

if.end6:                                          ; preds = %if.then, %lor.lhs.false
  %call = tail call %struct.sv* @Perl_amagic_call(%struct.sv* %str1, %struct.sv* %str2, i32 35, i32 0) #4
  %tobool7 = icmp eq %struct.sv* %call, null
  br i1 %tobool7, label %if.end30, label %if.then8

if.then8:                                         ; preds = %if.end6
  %sv_flags9 = getelementptr inbounds %struct.sv* %call, i64 0, i32 2
  %3 = load i32* %sv_flags9, align 4, !tbaa !3
  %and10 = and i32 %3, 65536
  %tobool11 = icmp eq i32 %and10, 0
  br i1 %tobool11, label %if.end17, label %if.then12

if.then12:                                        ; preds = %if.then8
  %sv_any = getelementptr inbounds %struct.sv* %call, i64 0, i32 0
  %4 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %4, i64 24
  %5 = bitcast i8* %xiv_iv to i64*
  %6 = load i64* %5, align 8, !tbaa !4
  %conv = trunc i64 %6 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %return, label %if.end15

if.end15:                                         ; preds = %if.then12
  %tobool16 = icmp ne i32 %conv, 0
  %cond = sext i1 %tobool16 to i32
  br label %return

if.end17:                                         ; preds = %if.then8
  %and19 = and i32 %3, 131072
  %tobool20 = icmp eq i32 %and19, 0
  br i1 %tobool20, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end17
  %sv_any21 = getelementptr inbounds %struct.sv* %call, i64 0, i32 0
  %7 = load i8** %sv_any21, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %7, i64 32
  %8 = bitcast i8* %xnv_nv to double*
  %9 = load double* %8, align 8, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end17
  %call22 = tail call double @Perl_sv_2nv(%struct.sv* %call) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond23 = phi double [ %9, %cond.true ], [ %call22, %cond.false ]
  %cmp24 = fcmp ogt double %cond23, 0.000000e+00
  br i1 %cmp24, label %return, label %if.end27

if.end27:                                         ; preds = %cond.end
  %tobool28 = fcmp une double %cond23, 0.000000e+00
  %cond29 = sext i1 %tobool28 to i32
  br label %return

if.end30:                                         ; preds = %entry, %lor.lhs.false, %if.end6
  %call31 = tail call i32 @Perl_sv_cmp(%struct.sv* %str1, %struct.sv* %str2) #4
  br label %return

return:                                           ; preds = %cond.end, %if.then12, %if.end30, %if.end27, %if.end15
  %retval.0 = phi i32 [ %cond, %if.end15 ], [ %cond29, %if.end27 ], [ %call31, %if.end30 ], [ 1, %if.then12 ], [ 1, %cond.end ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @Perl_sv_cmp(%struct.sv*, %struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVsv(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_av_clear(%struct.av*) #1

; Function Attrs: optsize
declare void @Perl_av_extend(%struct.av*, i32) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_av_store(%struct.av*, i32, %struct.sv*) #1

; Function Attrs: optsize
declare i32 @Perl_mg_set(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_pop_scope() #1

; Function Attrs: optsize
declare %struct.sv* @Perl_amagic_call(%struct.sv*, %struct.sv*, i32, i32) #1

; Function Attrs: optsize
declare double @Perl_sv_2nv(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_markstack_grow() #1

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #1

; Function Attrs: optsize
declare void @Perl_leave_scope(i32) #1

; Function Attrs: optsize
declare i8* @Perl_safesysrealloc(i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: optsize
declare i8* @Perl_safesysmalloc(i64) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @S_qsortsvu(%struct.sv** %array, i64 %num_elts, i32 (%struct.sv*, %struct.sv*)* nocapture %compare) #0 {
entry:
  %partition_stack = alloca [32 x %struct.partition_stack_entry], align 16
  %0 = bitcast [32 x %struct.partition_stack_entry]* %partition_stack to i8*
  call void @llvm.lifetime.start(i64 384, i8* %0) #3
  %cmp = icmp ult i64 %num_elts, 2
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i64 %num_elts, 255
  br i1 %cmp1, label %for.body, label %if.end8

for.body:                                         ; preds = %if.end, %for.body
  %n.0862 = phi i64 [ %dec, %for.body ], [ %num_elts, %if.end ]
  %dec = add i64 %n.0862, -1
  %conv = uitofp i64 %n.0862 to double
  %call = call double @spec_rand() #4
  %mul = fmul double %conv, %call
  %conv4 = fptoui double %mul to i64
  %arrayidx = getelementptr inbounds %struct.sv** %array, i64 %conv4
  %1 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %arrayidx5 = getelementptr inbounds %struct.sv** %array, i64 %dec
  %2 = load %struct.sv** %arrayidx5, align 8, !tbaa !0
  store %struct.sv* %2, %struct.sv** %arrayidx, align 8, !tbaa !0
  store %struct.sv* %1, %struct.sv** %arrayidx5, align 8, !tbaa !0
  %cmp3 = icmp ugt i64 %dec, 1
  br i1 %cmp3, label %for.body, label %if.end8

if.end8:                                          ; preds = %for.body, %if.end
  %sub = add i64 %num_elts, 4294967295
  %conv9 = trunc i64 %sub to i32
  br label %for.cond10.outer.outer

for.cond10.outer.outer:                           ; preds = %if.end471, %if.end407, %if.end393, %if.end8
  %qsort_break_even.0.ph.ph = phi i32 [ 6, %if.end8 ], [ %qsort_break_even.1, %if.end393 ], [ %56, %if.end407 ], [ %67, %if.end471 ]
  %part_right.0.ph.ph = phi i32 [ %conv9, %if.end8 ], [ %part_right.1, %if.end393 ], [ %55, %if.end407 ], [ %66, %if.end471 ]
  %part_left.0.ph.ph = phi i32 [ 0, %if.end8 ], [ %part_left.1, %if.end393 ], [ %54, %if.end407 ], [ %65, %if.end471 ]
  %next_stack_entry.0.ph.ph = phi i32 [ 0, %if.end8 ], [ %inc394, %if.end393 ], [ %dec408, %if.end407 ], [ %dec472, %if.end471 ]
  %sub11856870 = sub nsw i32 %part_right.0.ph.ph, %part_left.0.ph.ph
  %cmp12857871 = icmp slt i32 %sub11856870, %qsort_break_even.0.ph.ph
  br i1 %cmp12857871, label %for.cond422.preheader, label %if.then14.lr.ph

for.cond10.outer:                                 ; preds = %if.then363
  %sub11856 = sub nsw i32 %sub396, %part_left.0859
  %cmp12857 = icmp slt i32 %sub11856, %qsort_break_even.1
  br i1 %cmp12857, label %for.cond422.preheader, label %if.then14.lr.ph

if.then14.lr.ph:                                  ; preds = %for.cond10.outer.outer, %for.cond10.outer
  %part_left.0.ph874 = phi i32 [ %part_left.0859, %for.cond10.outer ], [ %part_left.0.ph.ph, %for.cond10.outer.outer ]
  %part_right.0.ph873 = phi i32 [ %sub396, %for.cond10.outer ], [ %part_right.0.ph.ph, %for.cond10.outer.outer ]
  %qsort_break_even.0.ph872 = phi i32 [ %qsort_break_even.1, %for.cond10.outer ], [ %qsort_break_even.0.ph.ph, %for.cond10.outer.outer ]
  br label %if.then14

for.cond10:                                       ; preds = %if.else398
  %sub11 = sub nsw i32 %part_right.0.ph873, %add402
  %cmp12 = icmp slt i32 %sub11, %qsort_break_even.1
  br i1 %cmp12, label %for.cond422.preheader, label %if.then14

for.cond422.preheader:                            ; preds = %for.cond10.outer.outer, %for.cond10.outer, %for.cond10
  %part_right.0.ph866 = phi i32 [ %part_right.0.ph873, %for.cond10 ], [ %part_right.0.ph.ph, %for.cond10.outer.outer ], [ %sub396, %for.cond10.outer ]
  %part_left.0.lcssa = phi i32 [ %add402, %for.cond10 ], [ %part_left.0.ph.ph, %for.cond10.outer.outer ], [ %part_left.0859, %for.cond10.outer ]
  %cmp423836 = icmp slt i32 %part_left.0.lcssa, %part_right.0.ph866
  br i1 %cmp423836, label %for.cond428.preheader.lr.ph, label %for.end467

for.cond428.preheader.lr.ph:                      ; preds = %for.cond422.preheader
  %3 = sext i32 %part_left.0.lcssa to i64
  br label %for.cond428.preheader

if.then14:                                        ; preds = %if.then14.lr.ph, %for.cond10
  %part_left.0859 = phi i32 [ %part_left.0.ph874, %if.then14.lr.ph ], [ %add402, %for.cond10 ]
  %qsort_break_even.0858 = phi i32 [ %qsort_break_even.0.ph872, %if.then14.lr.ph ], [ %qsort_break_even.1, %for.cond10 ]
  %add = add nsw i32 %part_left.0859, %part_right.0.ph873
  %div = sdiv i32 %add, 2
  %sub15 = add nsw i32 %div, -1
  %add16 = add nsw i32 %div, 1
  %idxprom = sext i32 %sub15 to i64
  %arrayidx17 = getelementptr inbounds %struct.sv** %array, i64 %idxprom
  %4 = load %struct.sv** %arrayidx17, align 8, !tbaa !0
  %idxprom18 = sext i32 %div to i64
  %arrayidx19 = getelementptr inbounds %struct.sv** %array, i64 %idxprom18
  %5 = load %struct.sv** %arrayidx19, align 8, !tbaa !0
  %call20 = call i32 %compare(%struct.sv* %4, %struct.sv* %5) #4
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.else84

if.then23:                                        ; preds = %if.then14
  %6 = load %struct.sv** %arrayidx19, align 8, !tbaa !0
  %idxprom26 = sext i32 %add16 to i64
  %arrayidx27 = getelementptr inbounds %struct.sv** %array, i64 %idxprom26
  %7 = load %struct.sv** %arrayidx27, align 8, !tbaa !0
  %call28 = call i32 %compare(%struct.sv* %6, %struct.sv* %7) #4
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.end199, label %if.else

if.else:                                          ; preds = %if.then23
  %cmp32 = icmp sgt i32 %call28, 0
  br i1 %cmp32, label %if.then34, label %if.end199

if.then34:                                        ; preds = %if.else
  %8 = load %struct.sv** %arrayidx17, align 8, !tbaa !0
  %9 = load %struct.sv** %arrayidx27, align 8, !tbaa !0
  %call39 = call i32 %compare(%struct.sv* %8, %struct.sv* %9) #4
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then42, label %if.else52

if.then42:                                        ; preds = %if.then34
  %10 = load %struct.sv** %arrayidx19, align 8, !tbaa !0
  %11 = load %struct.sv** %arrayidx27, align 8, !tbaa !0
  store %struct.sv* %11, %struct.sv** %arrayidx19, align 8, !tbaa !0
  store %struct.sv* %10, %struct.sv** %arrayidx27, align 8, !tbaa !0
  br label %if.end199

if.else52:                                        ; preds = %if.then34
  %cmp53 = icmp eq i32 %call39, 0
  %12 = load %struct.sv** %arrayidx19, align 8, !tbaa !0
  br i1 %cmp53, label %if.then55, label %if.else66

if.then55:                                        ; preds = %if.else52
  %13 = load %struct.sv** %arrayidx27, align 8, !tbaa !0
  store %struct.sv* %13, %struct.sv** %arrayidx19, align 8, !tbaa !0
  store %struct.sv* %12, %struct.sv** %arrayidx27, align 8, !tbaa !0
  br label %if.end199

if.else66:                                        ; preds = %if.else52
  %14 = load %struct.sv** %arrayidx17, align 8, !tbaa !0
  store %struct.sv* %14, %struct.sv** %arrayidx19, align 8, !tbaa !0
  %15 = load %struct.sv** %arrayidx27, align 8, !tbaa !0
  store %struct.sv* %15, %struct.sv** %arrayidx17, align 8, !tbaa !0
  store %struct.sv* %12, %struct.sv** %arrayidx27, align 8, !tbaa !0
  br label %if.end199

if.else84:                                        ; preds = %if.then14
  %cmp85 = icmp eq i32 %call20, 0
  %16 = load %struct.sv** %arrayidx19, align 8, !tbaa !0
  %idxprom90 = sext i32 %add16 to i64
  %arrayidx91 = getelementptr inbounds %struct.sv** %array, i64 %idxprom90
  %17 = load %struct.sv** %arrayidx91, align 8, !tbaa !0
  %call92 = call i32 %compare(%struct.sv* %16, %struct.sv* %17) #4
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp85, label %if.then87, label %if.else116

if.then87:                                        ; preds = %if.else84
  br i1 %cmp93, label %if.end199, label %if.else97

if.else97:                                        ; preds = %if.then87
  %cmp98 = icmp eq i32 %call92, 0
  br i1 %cmp98, label %if.end199, label %if.else103

if.else103:                                       ; preds = %if.else97
  %18 = load %struct.sv** %arrayidx17, align 8, !tbaa !0
  %19 = load %struct.sv** %arrayidx91, align 8, !tbaa !0
  store %struct.sv* %19, %struct.sv** %arrayidx17, align 8, !tbaa !0
  store %struct.sv* %18, %struct.sv** %arrayidx91, align 8, !tbaa !0
  br label %if.end199

if.else116:                                       ; preds = %if.else84
  br i1 %cmp93, label %if.then124, label %if.else172

if.then124:                                       ; preds = %if.else116
  %20 = load %struct.sv** %arrayidx17, align 8, !tbaa !0
  %21 = load %struct.sv** %arrayidx91, align 8, !tbaa !0
  %call129 = call i32 %compare(%struct.sv* %20, %struct.sv* %21) #4
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %if.then132, label %if.else142

if.then132:                                       ; preds = %if.then124
  %22 = load %struct.sv** %arrayidx17, align 8, !tbaa !0
  %23 = load %struct.sv** %arrayidx19, align 8, !tbaa !0
  store %struct.sv* %23, %struct.sv** %arrayidx17, align 8, !tbaa !0
  store %struct.sv* %22, %struct.sv** %arrayidx19, align 8, !tbaa !0
  br label %if.end199

if.else142:                                       ; preds = %if.then124
  %cmp143 = icmp eq i32 %call129, 0
  %24 = load %struct.sv** %arrayidx17, align 8, !tbaa !0
  %25 = load %struct.sv** %arrayidx19, align 8, !tbaa !0
  store %struct.sv* %25, %struct.sv** %arrayidx17, align 8, !tbaa !0
  br i1 %cmp143, label %if.then145, label %if.else156

if.then145:                                       ; preds = %if.else142
  store %struct.sv* %24, %struct.sv** %arrayidx19, align 8, !tbaa !0
  br label %if.end199

if.else156:                                       ; preds = %if.else142
  %26 = load %struct.sv** %arrayidx91, align 8, !tbaa !0
  store %struct.sv* %26, %struct.sv** %arrayidx19, align 8, !tbaa !0
  store %struct.sv* %24, %struct.sv** %arrayidx91, align 8, !tbaa !0
  br label %if.end199

if.else172:                                       ; preds = %if.else116
  %cmp173 = icmp eq i32 %call92, 0
  %27 = load %struct.sv** %arrayidx17, align 8, !tbaa !0
  %28 = load %struct.sv** %arrayidx91, align 8, !tbaa !0
  store %struct.sv* %28, %struct.sv** %arrayidx17, align 8, !tbaa !0
  store %struct.sv* %27, %struct.sv** %arrayidx91, align 8, !tbaa !0
  %dec185.div = select i1 %cmp173, i32 %sub15, i32 %div
  br label %if.end199

if.end199:                                        ; preds = %if.else97, %if.then87, %if.else172, %if.then23, %if.else103, %if.then132, %if.else156, %if.then145, %if.then42, %if.else66, %if.then55, %if.else
  %swapped.0 = phi i32 [ 1, %if.then42 ], [ 1, %if.then55 ], [ 1, %if.else66 ], [ 0, %if.else ], [ 1, %if.else103 ], [ 1, %if.then132 ], [ 1, %if.then145 ], [ 1, %if.else156 ], [ 0, %if.then23 ], [ 1, %if.else172 ], [ 0, %if.then87 ], [ 0, %if.else97 ]
  %pc_left.0 = phi i32 [ %div, %if.then42 ], [ %sub15, %if.then55 ], [ %div, %if.else66 ], [ %div, %if.else ], [ %div, %if.else103 ], [ %div, %if.then132 ], [ %div, %if.then145 ], [ %div, %if.else156 ], [ %div, %if.then23 ], [ %dec185.div, %if.else172 ], [ %sub15, %if.then87 ], [ %sub15, %if.else97 ]
  %pc_right.0 = phi i32 [ %div, %if.then42 ], [ %div, %if.then55 ], [ %div, %if.else66 ], [ %div, %if.else ], [ %add16, %if.else103 ], [ %div, %if.then132 ], [ %add16, %if.then145 ], [ %div, %if.else156 ], [ %add16, %if.then23 ], [ %div, %if.else172 ], [ %div, %if.then87 ], [ %add16, %if.else97 ]
  %dec200 = add nsw i32 %div, -2
  %inc201 = add nsw i32 %div, 2
  br label %while.cond.outer.outer

while.cond.outer.outer:                           ; preds = %if.end348, %if.end314, %if.then217, %if.then221, %if.end199
  %swapped.1.ph.ph = phi i32 [ %swapped.0, %if.end199 ], [ %inc291, %if.end314 ], [ %inc325, %if.end348 ], [ %inc222, %if.then221 ], [ %swapped.1.ph, %if.then217 ]
  %pc_left.1.ph.ph = phi i32 [ %pc_left.0, %if.end199 ], [ %dec287, %if.end314 ], [ %inc349, %if.end348 ], [ %dec218, %if.then221 ], [ %dec218, %if.then217 ]
  %pc_right.1.ph.ph = phi i32 [ %pc_right.0, %if.end199 ], [ %dec315, %if.end314 ], [ %inc321, %if.end348 ], [ %pc_right.1.ph, %if.then221 ], [ %pc_right.1.ph, %if.then217 ]
  %u_right.0.ph.ph = phi i32 [ %dec200, %if.end199 ], [ %dec316, %if.end314 ], [ %u_right.0822, %if.end348 ], [ %dec213, %if.then221 ], [ %dec213, %if.then217 ]
  %u_left.0.ph.ph = phi i32 [ %inc201, %if.end199 ], [ %u_left.1792, %if.end314 ], [ %inc350, %if.end348 ], [ %u_left.0.ph, %if.then221 ], [ %u_left.0.ph, %if.then217 ]
  %idxprom207 = sext i32 %pc_left.1.ph.ph to i64
  %arrayidx208 = getelementptr inbounds %struct.sv** %array, i64 %idxprom207
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.outer, %if.then274
  %swapped.1.ph = phi i32 [ %inc275, %if.then274 ], [ %swapped.1.ph.ph, %while.cond.outer.outer ]
  %pc_right.1.ph = phi i32 [ %pc_right.2.ph806, %if.then274 ], [ %pc_right.1.ph.ph, %while.cond.outer.outer ]
  %u_right.0.ph = phi i32 [ %dec284, %if.then274 ], [ %u_right.0.ph.ph, %while.cond.outer.outer ]
  %u_left.0.ph = phi i32 [ %inc285, %if.then274 ], [ %u_left.0.ph.ph, %while.cond.outer.outer ]
  %cmp203825 = icmp slt i32 %u_right.0.ph, %part_left.0859
  br i1 %cmp203825, label %while.cond236.preheader, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.outer
  %29 = sext i32 %u_right.0.ph to i64
  br label %while.body

while.cond:                                       ; preds = %while.body
  %indvars.iv.next = add i64 %indvars.iv, -1
  %30 = trunc i64 %indvars.iv to i32
  %cmp203 = icmp sgt i32 %30, %part_left.0859
  br i1 %cmp203, label %while.body, label %while.cond236.preheader

while.cond236.preheader:                          ; preds = %while.cond.outer, %while.cond, %if.else214
  %cmp203824 = phi i1 [ true, %if.else214 ], [ false, %while.cond ], [ false, %while.cond.outer ]
  %u_right.0822 = phi i32 [ %u_right.0826, %if.else214 ], [ %dec213, %while.cond ], [ %u_right.0.ph, %while.cond.outer ]
  %cmp237795812 = icmp sgt i32 %u_left.0.ph, %part_right.0.ph873
  br i1 %cmp237795812, label %while.end271, label %while.body239.lr.ph.lr.ph

while.body239.lr.ph.lr.ph:                        ; preds = %while.cond236.preheader
  %31 = sext i32 %pc_right.1.ph to i64
  br label %while.body239.lr.ph

while.body:                                       ; preds = %while.body.lr.ph, %while.cond
  %indvars.iv = phi i64 [ %29, %while.body.lr.ph ], [ %indvars.iv.next, %while.cond ]
  %u_right.0826 = phi i32 [ %u_right.0.ph, %while.body.lr.ph ], [ %dec213, %while.cond ]
  %arrayidx206 = getelementptr inbounds %struct.sv** %array, i64 %indvars.iv
  %32 = load %struct.sv** %arrayidx206, align 8, !tbaa !0
  %33 = load %struct.sv** %arrayidx208, align 8, !tbaa !0
  %call209 = call i32 %compare(%struct.sv* %32, %struct.sv* %33) #4
  %cmp210 = icmp slt i32 %call209, 0
  %dec213 = add nsw i32 %u_right.0826, -1
  br i1 %cmp210, label %while.cond, label %if.else214

if.else214:                                       ; preds = %while.body
  %cmp215 = icmp eq i32 %call209, 0
  br i1 %cmp215, label %if.then217, label %while.cond236.preheader

if.then217:                                       ; preds = %if.else214
  %dec218 = add nsw i32 %pc_left.1.ph.ph, -1
  %cmp219 = icmp eq i32 %dec218, %u_right.0826
  br i1 %cmp219, label %while.cond.outer.outer, label %if.then221

if.then221:                                       ; preds = %if.then217
  %inc222 = add nsw i32 %swapped.1.ph, 1
  %34 = load %struct.sv** %arrayidx206, align 8, !tbaa !0
  %idxprom225 = sext i32 %dec218 to i64
  %arrayidx226 = getelementptr inbounds %struct.sv** %array, i64 %idxprom225
  %35 = load %struct.sv** %arrayidx226, align 8, !tbaa !0
  store %struct.sv* %35, %struct.sv** %arrayidx206, align 8, !tbaa !0
  store %struct.sv* %34, %struct.sv** %arrayidx226, align 8, !tbaa !0
  br label %while.cond.outer.outer

while.cond236:                                    ; preds = %while.body239
  %indvars.iv.next890 = add i64 %indvars.iv889, 1
  %36 = trunc i64 %indvars.iv889 to i32
  %cmp237 = icmp slt i32 %36, %part_right.0.ph873
  br i1 %cmp237, label %while.body239, label %while.end271

while.body239:                                    ; preds = %while.body239.lr.ph, %while.cond236
  %indvars.iv889 = phi i64 [ %42, %while.body239.lr.ph ], [ %indvars.iv.next890, %while.cond236 ]
  %u_left.1796 = phi i32 [ %u_left.1.ph815, %while.body239.lr.ph ], [ %inc248, %while.cond236 ]
  %37 = load %struct.sv** %arrayidx241, align 8, !tbaa !0
  %arrayidx243 = getelementptr inbounds %struct.sv** %array, i64 %indvars.iv889
  %38 = load %struct.sv** %arrayidx243, align 8, !tbaa !0
  %call244 = call i32 %compare(%struct.sv* %37, %struct.sv* %38) #4
  %cmp245 = icmp slt i32 %call244, 0
  %inc248 = add nsw i32 %u_left.1796, 1
  br i1 %cmp245, label %while.cond236, label %if.else249

if.else249:                                       ; preds = %while.body239
  %cmp250 = icmp eq i32 %call244, 0
  br i1 %cmp250, label %if.then252, label %while.end271

if.then252:                                       ; preds = %if.else249
  %indvars.iv.next899 = add i64 %indvars.iv898, 1
  %inc253 = add nsw i32 %pc_right.2.ph814, 1
  %39 = trunc i64 %indvars.iv.next899 to i32
  %cmp254 = icmp eq i32 %39, %u_left.1796
  br i1 %cmp254, label %if.end266, label %if.then256

if.then256:                                       ; preds = %if.then252
  %inc257 = add nsw i32 %swapped.3.ph813, 1
  %arrayidx259 = getelementptr inbounds %struct.sv** %array, i64 %indvars.iv.next899
  %40 = load %struct.sv** %arrayidx259, align 8, !tbaa !0
  %41 = load %struct.sv** %arrayidx243, align 8, !tbaa !0
  store %struct.sv* %41, %struct.sv** %arrayidx259, align 8, !tbaa !0
  store %struct.sv* %40, %struct.sv** %arrayidx243, align 8, !tbaa !0
  br label %if.end266

if.end266:                                        ; preds = %if.then252, %if.then256
  %swapped.4 = phi i32 [ %inc257, %if.then256 ], [ %swapped.3.ph813, %if.then252 ]
  %cmp237795 = icmp slt i32 %u_left.1796, %part_right.0.ph873
  br i1 %cmp237795, label %while.body239.lr.ph, label %while.end271

while.body239.lr.ph:                              ; preds = %while.body239.lr.ph.lr.ph, %if.end266
  %indvars.iv898 = phi i64 [ %31, %while.body239.lr.ph.lr.ph ], [ %indvars.iv.next899, %if.end266 ]
  %u_left.1.ph815 = phi i32 [ %u_left.0.ph, %while.body239.lr.ph.lr.ph ], [ %inc248, %if.end266 ]
  %pc_right.2.ph814 = phi i32 [ %pc_right.1.ph, %while.body239.lr.ph.lr.ph ], [ %inc253, %if.end266 ]
  %swapped.3.ph813 = phi i32 [ %swapped.1.ph, %while.body239.lr.ph.lr.ph ], [ %swapped.4, %if.end266 ]
  %arrayidx241 = getelementptr inbounds %struct.sv** %array, i64 %indvars.iv898
  %42 = sext i32 %u_left.1.ph815 to i64
  br label %while.body239

while.end271:                                     ; preds = %if.else249, %while.cond236, %if.end266, %while.cond236.preheader
  %pc_right.2.ph806 = phi i32 [ %pc_right.2.ph814, %while.cond236 ], [ %pc_right.1.ph, %while.cond236.preheader ], [ %inc253, %if.end266 ], [ %pc_right.2.ph814, %if.else249 ]
  %swapped.3.ph802 = phi i32 [ %swapped.3.ph813, %while.cond236 ], [ %swapped.1.ph, %while.cond236.preheader ], [ %swapped.4, %if.end266 ], [ %swapped.3.ph813, %if.else249 ]
  %cmp237794 = phi i1 [ false, %while.cond236 ], [ false, %while.cond236.preheader ], [ false, %if.end266 ], [ true, %if.else249 ]
  %u_left.1792 = phi i32 [ %inc248, %while.cond236 ], [ %u_left.0.ph, %while.cond236.preheader ], [ %inc248, %if.end266 ], [ %u_left.1796, %if.else249 ]
  br i1 %cmp203824, label %if.then272, label %if.else318

if.then272:                                       ; preds = %while.end271
  br i1 %cmp237794, label %if.then274, label %if.else286

if.then274:                                       ; preds = %if.then272
  %inc275 = add nsw i32 %swapped.3.ph802, 1
  %idxprom276 = sext i32 %u_right.0822 to i64
  %arrayidx277 = getelementptr inbounds %struct.sv** %array, i64 %idxprom276
  %43 = load %struct.sv** %arrayidx277, align 8, !tbaa !0
  %idxprom278 = sext i32 %u_left.1792 to i64
  %arrayidx279 = getelementptr inbounds %struct.sv** %array, i64 %idxprom278
  %44 = load %struct.sv** %arrayidx279, align 8, !tbaa !0
  store %struct.sv* %44, %struct.sv** %arrayidx277, align 8, !tbaa !0
  store %struct.sv* %43, %struct.sv** %arrayidx279, align 8, !tbaa !0
  %dec284 = add nsw i32 %u_right.0822, -1
  %inc285 = add nsw i32 %u_left.1792, 1
  br label %while.cond.outer

if.else286:                                       ; preds = %if.then272
  %dec287 = add nsw i32 %pc_left.1.ph.ph, -1
  %cmp288 = icmp eq i32 %dec287, %u_right.0822
  %inc291 = add nsw i32 %swapped.3.ph802, 1
  %idxprom292 = sext i32 %u_right.0822 to i64
  %arrayidx293 = getelementptr inbounds %struct.sv** %array, i64 %idxprom292
  %45 = load %struct.sv** %arrayidx293, align 8, !tbaa !0
  br i1 %cmp288, label %if.then290, label %if.else300

if.then290:                                       ; preds = %if.else286
  %idxprom294 = sext i32 %pc_right.2.ph806 to i64
  %arrayidx295 = getelementptr inbounds %struct.sv** %array, i64 %idxprom294
  %46 = load %struct.sv** %arrayidx295, align 8, !tbaa !0
  store %struct.sv* %46, %struct.sv** %arrayidx293, align 8, !tbaa !0
  store %struct.sv* %45, %struct.sv** %arrayidx295, align 8, !tbaa !0
  br label %if.end314

if.else300:                                       ; preds = %if.else286
  %idxprom304 = sext i32 %dec287 to i64
  %arrayidx305 = getelementptr inbounds %struct.sv** %array, i64 %idxprom304
  %47 = load %struct.sv** %arrayidx305, align 8, !tbaa !0
  store %struct.sv* %47, %struct.sv** %arrayidx293, align 8, !tbaa !0
  %idxprom308 = sext i32 %pc_right.2.ph806 to i64
  %arrayidx309 = getelementptr inbounds %struct.sv** %array, i64 %idxprom308
  %48 = load %struct.sv** %arrayidx309, align 8, !tbaa !0
  store %struct.sv* %48, %struct.sv** %arrayidx305, align 8, !tbaa !0
  store %struct.sv* %45, %struct.sv** %arrayidx309, align 8, !tbaa !0
  br label %if.end314

if.end314:                                        ; preds = %if.else300, %if.then290
  %dec315 = add nsw i32 %pc_right.2.ph806, -1
  %dec316 = add nsw i32 %u_right.0822, -1
  br label %while.cond.outer.outer

if.else318:                                       ; preds = %while.end271
  br i1 %cmp237794, label %if.then320, label %for.end354

if.then320:                                       ; preds = %if.else318
  %inc321 = add nsw i32 %pc_right.2.ph806, 1
  %cmp322 = icmp eq i32 %inc321, %u_left.1792
  %inc325 = add nsw i32 %swapped.3.ph802, 1
  br i1 %cmp322, label %if.then324, label %if.else334

if.then324:                                       ; preds = %if.then320
  %idxprom326 = sext i32 %u_left.1792 to i64
  %arrayidx327 = getelementptr inbounds %struct.sv** %array, i64 %idxprom326
  %49 = load %struct.sv** %arrayidx327, align 8, !tbaa !0
  %50 = load %struct.sv** %arrayidx208, align 8, !tbaa !0
  store %struct.sv* %50, %struct.sv** %arrayidx327, align 8, !tbaa !0
  store %struct.sv* %49, %struct.sv** %arrayidx208, align 8, !tbaa !0
  br label %if.end348

if.else334:                                       ; preds = %if.then320
  %idxprom336 = sext i32 %inc321 to i64
  %arrayidx337 = getelementptr inbounds %struct.sv** %array, i64 %idxprom336
  %51 = load %struct.sv** %arrayidx337, align 8, !tbaa !0
  %52 = load %struct.sv** %arrayidx208, align 8, !tbaa !0
  store %struct.sv* %52, %struct.sv** %arrayidx337, align 8, !tbaa !0
  %idxprom342 = sext i32 %u_left.1792 to i64
  %arrayidx343 = getelementptr inbounds %struct.sv** %array, i64 %idxprom342
  %53 = load %struct.sv** %arrayidx343, align 8, !tbaa !0
  store %struct.sv* %53, %struct.sv** %arrayidx208, align 8, !tbaa !0
  store %struct.sv* %51, %struct.sv** %arrayidx343, align 8, !tbaa !0
  br label %if.end348

if.end348:                                        ; preds = %if.else334, %if.then324
  %inc349 = add nsw i32 %pc_left.1.ph.ph, 1
  %inc350 = add nsw i32 %u_left.1792, 1
  br label %while.cond.outer.outer

for.end354:                                       ; preds = %if.else318
  %cmp355 = icmp slt i32 %swapped.3.ph802, 3
  %mul358 = shl nsw i32 %qsort_break_even.0858, 1
  %qsort_break_even.1 = select i1 %cmp355, i32 %mul358, i32 6
  %cmp361 = icmp slt i32 %part_left.0859, %pc_left.1.ph.ph
  %cmp364 = icmp slt i32 %pc_right.2.ph806, %part_right.0.ph873
  br i1 %cmp361, label %if.then363, label %if.else398

if.then363:                                       ; preds = %for.end354
  %sub396 = add nsw i32 %pc_left.1.ph.ph, -1
  br i1 %cmp364, label %if.then366, label %for.cond10.outer

if.then366:                                       ; preds = %if.then363
  %sub367 = sub nsw i32 %part_right.0.ph873, %pc_right.2.ph806
  %sub368 = sub nsw i32 %pc_left.1.ph.ph, %part_left.0859
  %cmp369 = icmp sgt i32 %sub367, %sub368
  br i1 %cmp369, label %if.then371, label %if.else381

if.then371:                                       ; preds = %if.then366
  %add372 = add nsw i32 %pc_right.2.ph806, 1
  %idxprom373 = sext i32 %next_stack_entry.0.ph.ph to i64
  %left = getelementptr inbounds [32 x %struct.partition_stack_entry]* %partition_stack, i64 0, i64 %idxprom373, i32 0
  store i32 %add372, i32* %left, align 4, !tbaa !3
  %right = getelementptr inbounds [32 x %struct.partition_stack_entry]* %partition_stack, i64 0, i64 %idxprom373, i32 1
  store i32 %part_right.0.ph873, i32* %right, align 4, !tbaa !3
  %qsort_break_even379 = getelementptr inbounds [32 x %struct.partition_stack_entry]* %partition_stack, i64 0, i64 %idxprom373, i32 2
  store i32 %qsort_break_even.1, i32* %qsort_break_even379, align 4, !tbaa !3
  br label %if.end393

if.else381:                                       ; preds = %if.then366
  %idxprom382 = sext i32 %next_stack_entry.0.ph.ph to i64
  %left384 = getelementptr inbounds [32 x %struct.partition_stack_entry]* %partition_stack, i64 0, i64 %idxprom382, i32 0
  store i32 %part_left.0859, i32* %left384, align 4, !tbaa !3
  %right388 = getelementptr inbounds [32 x %struct.partition_stack_entry]* %partition_stack, i64 0, i64 %idxprom382, i32 1
  store i32 %sub396, i32* %right388, align 4, !tbaa !3
  %qsort_break_even391 = getelementptr inbounds [32 x %struct.partition_stack_entry]* %partition_stack, i64 0, i64 %idxprom382, i32 2
  store i32 %qsort_break_even.1, i32* %qsort_break_even391, align 4, !tbaa !3
  %add392 = add nsw i32 %pc_right.2.ph806, 1
  br label %if.end393

if.end393:                                        ; preds = %if.else381, %if.then371
  %part_right.1 = phi i32 [ %sub396, %if.then371 ], [ %part_right.0.ph873, %if.else381 ]
  %part_left.1 = phi i32 [ %part_left.0859, %if.then371 ], [ %add392, %if.else381 ]
  %inc394 = add nsw i32 %next_stack_entry.0.ph.ph, 1
  br label %for.cond10.outer.outer

if.else398:                                       ; preds = %for.end354
  %add402 = add nsw i32 %pc_right.2.ph806, 1
  br i1 %cmp364, label %for.cond10, label %if.else403

if.else403:                                       ; preds = %if.else398
  %cmp404 = icmp eq i32 %next_stack_entry.0.ph.ph, 0
  br i1 %cmp404, label %cleanup, label %if.end407

if.end407:                                        ; preds = %if.else403
  %dec408 = add nsw i32 %next_stack_entry.0.ph.ph, -1
  %idxprom409 = sext i32 %dec408 to i64
  %left411 = getelementptr inbounds [32 x %struct.partition_stack_entry]* %partition_stack, i64 0, i64 %idxprom409, i32 0
  %54 = load i32* %left411, align 4, !tbaa !3
  %right414 = getelementptr inbounds [32 x %struct.partition_stack_entry]* %partition_stack, i64 0, i64 %idxprom409, i32 1
  %55 = load i32* %right414, align 4, !tbaa !3
  %qsort_break_even417 = getelementptr inbounds [32 x %struct.partition_stack_entry]* %partition_stack, i64 0, i64 %idxprom409, i32 2
  %56 = load i32* %qsort_break_even417, align 4, !tbaa !3
  br label %for.cond10.outer.outer

for.cond428.preheader:                            ; preds = %for.cond428.preheader.lr.ph, %for.cond422.backedge
  %indvars.iv943 = phi i64 [ %3, %for.cond428.preheader.lr.ph ], [ %indvars.iv.next944, %for.cond422.backedge ]
  %i.0838.in = phi i32 [ %part_left.0.lcssa, %for.cond428.preheader.lr.ph ], [ %i.0838, %for.cond422.backedge ]
  %indvars.iv.next944 = add i64 %indvars.iv943, 1
  %i.0838 = add nsw i32 %i.0838.in, 1
  %arrayidx433 = getelementptr inbounds %struct.sv** %array, i64 %indvars.iv.next944
  %cmp429830 = icmp slt i32 %i.0838.in, %part_left.0.lcssa
  br i1 %cmp429830, label %for.end442, label %for.body431

for.cond428:                                      ; preds = %for.body431
  %57 = trunc i64 %indvars.iv934 to i32
  %cmp429 = icmp sgt i32 %57, %part_left.0.lcssa
  %indvars.iv.next935 = add i64 %indvars.iv934, -1
  br i1 %cmp429, label %for.body431, label %for.end442

for.body431:                                      ; preds = %for.cond428.preheader, %for.cond428
  %indvars.iv934 = phi i64 [ %indvars.iv.next935, %for.cond428 ], [ %indvars.iv943, %for.cond428.preheader ]
  %j426.0831 = phi i32 [ %dec441, %for.cond428 ], [ %i.0838.in, %for.cond428.preheader ]
  %58 = load %struct.sv** %arrayidx433, align 8, !tbaa !0
  %arrayidx435 = getelementptr inbounds %struct.sv** %array, i64 %indvars.iv934
  %59 = load %struct.sv** %arrayidx435, align 8, !tbaa !0
  %call436 = call i32 %compare(%struct.sv* %58, %struct.sv* %59) #4
  %cmp437 = icmp sgt i32 %call436, -1
  %dec441 = add nsw i32 %j426.0831, -1
  br i1 %cmp437, label %for.end442, label %for.cond428

for.end442:                                       ; preds = %for.cond428, %for.body431, %for.cond428.preheader
  %j426.0.lcssa = phi i32 [ %i.0838.in, %for.cond428.preheader ], [ %j426.0831, %for.body431 ], [ %dec441, %for.cond428 ]
  %inc443 = add nsw i32 %j426.0.lcssa, 1
  %60 = trunc i64 %indvars.iv.next944 to i32
  %cmp444 = icmp eq i32 %inc443, %60
  br i1 %cmp444, label %for.cond422.backedge, label %if.then446

for.cond422.backedge:                             ; preds = %for.end442, %for.end461
  %cmp423 = icmp slt i32 %60, %part_right.0.ph866
  br i1 %cmp423, label %for.cond428.preheader, label %for.end467

if.then446:                                       ; preds = %for.end442
  %61 = load %struct.sv** %arrayidx433, align 8, !tbaa !0
  %cmp451833 = icmp slt i32 %i.0838.in, %inc443
  br i1 %cmp451833, label %for.end461, label %for.body453

for.body453:                                      ; preds = %if.then446, %for.body453
  %indvars.iv939 = phi i64 [ %indvars.iv.next940, %for.body453 ], [ %indvars.iv943, %if.then446 ]
  %arrayidx455 = getelementptr inbounds %struct.sv** %array, i64 %indvars.iv939
  %62 = load %struct.sv** %arrayidx455, align 8, !tbaa !0
  %63 = add nsw i64 %indvars.iv939, 1
  %arrayidx458 = getelementptr inbounds %struct.sv** %array, i64 %63
  store %struct.sv* %62, %struct.sv** %arrayidx458, align 8, !tbaa !0
  %64 = trunc i64 %indvars.iv939 to i32
  %cmp451 = icmp sgt i32 %64, %inc443
  %indvars.iv.next940 = add i64 %indvars.iv939, -1
  br i1 %cmp451, label %for.body453, label %for.end461

for.end461:                                       ; preds = %for.body453, %if.then446
  %idxprom462 = sext i32 %inc443 to i64
  %arrayidx463 = getelementptr inbounds %struct.sv** %array, i64 %idxprom462
  store %struct.sv* %61, %struct.sv** %arrayidx463, align 8, !tbaa !0
  br label %for.cond422.backedge

for.end467:                                       ; preds = %for.cond422.backedge, %for.cond422.preheader
  %cmp468 = icmp eq i32 %next_stack_entry.0.ph.ph, 0
  br i1 %cmp468, label %cleanup, label %if.end471

if.end471:                                        ; preds = %for.end467
  %dec472 = add nsw i32 %next_stack_entry.0.ph.ph, -1
  %idxprom473 = sext i32 %dec472 to i64
  %left475 = getelementptr inbounds [32 x %struct.partition_stack_entry]* %partition_stack, i64 0, i64 %idxprom473, i32 0
  %65 = load i32* %left475, align 4, !tbaa !3
  %right478 = getelementptr inbounds [32 x %struct.partition_stack_entry]* %partition_stack, i64 0, i64 %idxprom473, i32 1
  %66 = load i32* %right478, align 4, !tbaa !3
  %qsort_break_even481 = getelementptr inbounds [32 x %struct.partition_stack_entry]* %partition_stack, i64 0, i64 %idxprom473, i32 2
  %67 = load i32* %qsort_break_even481, align 4, !tbaa !3
  br label %for.cond10.outer.outer

cleanup:                                          ; preds = %if.else403, %for.end467, %entry
  call void @llvm.lifetime.end(i64 384, i8* %0) #3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @cmpindir_desc(%struct.sv* %a, %struct.sv* %b) #0 {
entry:
  %0 = bitcast %struct.sv* %a to %struct.sv**
  %1 = bitcast %struct.sv* %b to %struct.sv**
  %2 = load i32 (%struct.sv*, %struct.sv*)** @PL_sort_RealCmp, align 8, !tbaa !0
  %3 = load %struct.sv** %0, align 8, !tbaa !0
  %4 = load %struct.sv** %1, align 8, !tbaa !0
  %call = tail call i32 %2(%struct.sv* %3, %struct.sv* %4) #4
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sub = sub nsw i32 0, %call
  br label %return

if.end:                                           ; preds = %entry
  %cmp = icmp ugt %struct.sv* %a, %b
  br i1 %cmp, label %return, label %cond.false

cond.false:                                       ; preds = %if.end
  %cmp1 = icmp ult %struct.sv* %a, %b
  %cond = sext i1 %cmp1 to i32
  br label %return

return:                                           ; preds = %cond.false, %if.end, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %cond, %cond.false ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @cmpindir(%struct.sv* %a, %struct.sv* %b) #0 {
entry:
  %0 = bitcast %struct.sv* %a to %struct.sv**
  %1 = bitcast %struct.sv* %b to %struct.sv**
  %2 = load i32 (%struct.sv*, %struct.sv*)** @PL_sort_RealCmp, align 8, !tbaa !0
  %3 = load %struct.sv** %0, align 8, !tbaa !0
  %4 = load %struct.sv** %1, align 8, !tbaa !0
  %call = tail call i32 %2(%struct.sv* %3, %struct.sv* %4) #4
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cmp1 = icmp ugt %struct.sv* %a, %b
  br i1 %cmp1, label %if.end, label %cond.false

cond.false:                                       ; preds = %if.then
  %cmp2 = icmp ult %struct.sv* %a, %b
  %cond = sext i1 %cmp2 to i32
  br label %if.end

if.end:                                           ; preds = %cond.false, %if.then, %entry
  %sense.0 = phi i32 [ %call, %entry ], [ %cond, %cond.false ], [ 1, %if.then ]
  ret i32 %sense.0
}

; Function Attrs: optsize
declare void @Perl_safesysfree(i8*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define internal i32 @cmp_desc(%struct.sv* %a, %struct.sv* %b) #0 {
entry:
  %0 = load i32 (%struct.sv*, %struct.sv*)** @PL_sort_RealCmp, align 8, !tbaa !0
  %call = tail call i32 %0(%struct.sv* %a, %struct.sv* %b) #4
  %sub = sub nsw i32 0, %call
  ret i32 %sub
}

; Function Attrs: optsize
declare double @spec_rand() #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}

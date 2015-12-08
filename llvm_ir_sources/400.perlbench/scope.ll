; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/scope.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
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
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type opaque
%struct.reg_data = type opaque
%struct.stackinfo = type { %struct.av*, %struct.context*, i32, i32, i32, %struct.stackinfo*, %struct.stackinfo*, i32 }
%struct.context = type { i32, %union.anon }
%union.anon = type { %struct.block }
%struct.block = type { i32, %struct.cop*, i32, i32, i32, %struct.pmop*, i8, %union.anon.1 }
%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon.0, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%struct._PerlIO = type opaque
%union.anon.0 = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, void (%struct.cv*)*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%union.any = type { i8* }
%union.anon.1 = type { %struct.block_loop }
%struct.block_loop = type { i8*, i32, %struct.op*, %struct.op*, %struct.op*, %struct.sv**, %struct.sv*, %struct.sv*, %struct.av*, i64, i64 }

@PL_stack_sp = external global %struct.sv**
@PL_curstack = external global %struct.av*
@PL_stack_base = external global %struct.sv**
@PL_sv_undef = external global %struct.sv
@PL_curstackinfo = external global %struct.stackinfo*
@PL_retstack_ix = external global i32
@PL_retstack_max = external global i32
@PL_retstack = external global %struct.op**
@PL_scopestack_ix = external global i32
@PL_scopestack_max = external global i32
@PL_scopestack = external global i32*
@PL_savestack_ix = external global i32
@PL_markstack_max = external global i32*
@PL_markstack = external global i32*
@PL_markstack_ptr = external global i32*
@PL_savestack_max = external global i32
@PL_savestack = external global %union.any*
@PL_tmps_max = external global i32
@PL_tmps_ix = external global i32
@PL_tmps_stack = external global %struct.sv**
@PL_tmps_floor = external global i32
@PL_Sv = external global %struct.sv*
@PL_sub_generation = external global i32
@PL_curcop = external global %struct.cop*
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_localizing = external global i32
@PL_curpad = external global %struct.sv**
@PL_comppad = external global %struct.av*
@.str1 = private unnamed_addr constant [49 x i8] c"panic: save_threadsv called in non-threaded perl\00", align 1
@PL_op = external global %struct.op*
@.str2 = private unnamed_addr constant [33 x i8] c"panic: corrupt saved stack index\00", align 1
@.str3 = private unnamed_addr constant [28 x i8] c"panic: leave_scope pad code\00", align 1
@PL_hints = external global i32
@PL_hintgv = external global %struct.gv*
@PL_stack_max = external global %struct.sv**
@.str4 = private unnamed_addr constant [33 x i8] c"panic: leave_scope inconsistency\00", align 1
@PL_tainted = external global i8
@PL_tainting = external global i8

; Function Attrs: nounwind optsize uwtable
define %struct.sv** @Perl_stack_grow(%struct.sv** %sp, %struct.sv** %p, i32 %n) #0 {
entry:
  store %struct.sv** %sp, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %0 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %p to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div3 = lshr exact i64 %sub.ptr.sub, 3
  %conv4 = zext i32 %n to i64
  %add = add i64 %conv4, 128
  %add1 = add i64 %add, %sub.ptr.div3
  %conv2 = trunc i64 %add1 to i32
  tail call void @Perl_av_extend(%struct.av* %0, i32 %conv2) #5
  %2 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret %struct.sv** %2
}

; Function Attrs: optsize
declare void @Perl_av_extend(%struct.av*, i32) #1

; Function Attrs: nounwind optsize uwtable
define %struct.stackinfo* @Perl_new_stackinfo(i32 %stitems, i32 %cxitems) #0 {
entry:
  %call = tail call i8* @Perl_safesysmalloc(i64 56) #5
  %0 = bitcast i8* %call to %struct.stackinfo*
  %call1 = tail call %struct.av* @Perl_newAV() #5
  %si_stack = bitcast i8* %call to %struct.av**
  store %struct.av* %call1, %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.av* %call1, i64 0, i32 0
  %1 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_flags = getelementptr inbounds %struct.xpvav* %1, i64 0, i32 9
  %2 = load i8* %xav_flags, align 1, !tbaa !1
  %and = and i8 %2, -2
  store i8 %and, i8* %xav_flags, align 1, !tbaa !1
  %3 = load %struct.av** %si_stack, align 8, !tbaa !0
  %cmp = icmp sgt i32 %stitems, 0
  %sub = add nsw i32 %stitems, -1
  %sub. = select i1 %cmp, i32 %sub, i32 0
  tail call void @Perl_av_extend(%struct.av* %3, i32 %sub.) #5
  %4 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any7 = getelementptr inbounds %struct.av* %4, i64 0, i32 0
  %5 = load %struct.xpvav** %sv_any7, align 8, !tbaa !0
  %xav_alloc = getelementptr inbounds %struct.xpvav* %5, i64 0, i32 7
  %6 = load %struct.sv*** %xav_alloc, align 8, !tbaa !0
  store %struct.sv* @PL_sv_undef, %struct.sv** %6, align 8, !tbaa !0
  %7 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any9 = getelementptr inbounds %struct.av* %7, i64 0, i32 0
  %8 = load %struct.xpvav** %sv_any9, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %8, i64 0, i32 1
  store i64 0, i64* %xav_fill, align 8, !tbaa !3
  %si_prev = getelementptr inbounds i8* %call, i64 32
  %sub10 = add nsw i32 %cxitems, -1
  %si_cxmax = getelementptr inbounds i8* %call, i64 20
  %9 = bitcast i8* %si_cxmax to i32*
  call void @llvm.memset.p0i8.i64(i8* %si_prev, i8 0, i64 16, i32 8, i1 false)
  store i32 %sub10, i32* %9, align 4, !tbaa !4
  %si_cxix = getelementptr inbounds i8* %call, i64 16
  %10 = bitcast i8* %si_cxix to i32*
  store i32 -1, i32* %10, align 4, !tbaa !4
  %si_type = getelementptr inbounds i8* %call, i64 24
  %11 = bitcast i8* %si_type to i32*
  store i32 0, i32* %11, align 4, !tbaa !4
  %conv11 = sext i32 %cxitems to i64
  %mul = mul i64 %conv11, 144
  %call12 = tail call i8* @Perl_safesysmalloc(i64 %mul) #5
  %12 = bitcast i8* %call12 to %struct.context*
  %si_cxstack = getelementptr inbounds i8* %call, i64 8
  %13 = bitcast i8* %si_cxstack to %struct.context**
  store %struct.context* %12, %struct.context** %13, align 8, !tbaa !0
  tail call void @llvm.memset.p0i8.i64(i8* %call12, i8 -85, i64 %mul, i32 1, i1 false)
  ret %struct.stackinfo* %0
}

; Function Attrs: optsize
declare i8* @Perl_safesysmalloc(i64) #1

; Function Attrs: optsize
declare %struct.av* @Perl_newAV() #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_cxinc() #0 {
entry:
  %0 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxmax = getelementptr inbounds %struct.stackinfo* %0, i64 0, i32 3
  %1 = load i32* %si_cxmax, align 4, !tbaa !4
  %conv = sext i32 %1 to i64
  %mul = mul nsw i32 %1, 3
  %div = sdiv i32 %mul, 2
  store i32 %div, i32* %si_cxmax, align 4, !tbaa !4
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %0, i64 0, i32 1
  %2 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %3 = bitcast %struct.context* %2 to i8*
  %add = add nsw i32 %div, 1
  %conv4 = sext i32 %add to i64
  %mul5 = mul i64 %conv4, 144
  %call = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul5) #5
  %4 = bitcast i8* %call to %struct.context*
  %5 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxstack6 = getelementptr inbounds %struct.stackinfo* %5, i64 0, i32 1
  store %struct.context* %4, %struct.context** %si_cxstack6, align 8, !tbaa !0
  %6 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxstack7 = getelementptr inbounds %struct.stackinfo* %6, i64 0, i32 1
  %7 = load %struct.context** %si_cxstack7, align 8, !tbaa !0
  %add.ptr.sum = add i64 %conv, 1
  %add.ptr8 = getelementptr inbounds %struct.context* %7, i64 %add.ptr.sum
  %8 = bitcast %struct.context* %add.ptr8 to i8*
  %si_cxmax9 = getelementptr inbounds %struct.stackinfo* %6, i64 0, i32 3
  %9 = load i32* %si_cxmax9, align 4, !tbaa !4
  %conv10 = sext i32 %9 to i64
  %sub = sub nsw i64 %conv10, %conv
  %mul11 = mul i64 %sub, 144
  tail call void @llvm.memset.p0i8.i64(i8* %8, i8 -85, i64 %mul11, i32 1, i1 false)
  %10 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %10, i64 0, i32 2
  %11 = load i32* %si_cxix, align 4, !tbaa !4
  %add12 = add nsw i32 %11, 1
  ret i32 %add12
}

; Function Attrs: optsize
declare i8* @Perl_safesysrealloc(i8*, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_push_return(%struct.op* %retop) #0 {
entry:
  %0 = load i32* @PL_retstack_ix, align 4, !tbaa !4
  %1 = load i32* @PL_retstack_max, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre2 = load %struct.op*** @PL_retstack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul = mul nsw i32 %0, 3
  %div = sdiv i32 %mul, 2
  store i32 %div, i32* @PL_retstack_max, align 4, !tbaa !4
  %2 = load %struct.op*** @PL_retstack, align 8, !tbaa !0
  %3 = bitcast %struct.op** %2 to i8*
  %conv = sext i32 %div to i64
  %mul1 = shl nsw i64 %conv, 3
  %call = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1) #5
  %4 = bitcast i8* %call to %struct.op**
  store %struct.op** %4, %struct.op*** @PL_retstack, align 8, !tbaa !0
  %.pre = load i32* @PL_retstack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %struct.op** [ %4, %if.then ], [ %.pre2, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @PL_retstack_ix, align 4, !tbaa !4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.op** %5, i64 %idxprom
  store %struct.op* %retop, %struct.op** %arrayidx, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pop_return() #0 {
entry:
  %0 = load i32* @PL_retstack_ix, align 4, !tbaa !4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @PL_retstack_ix, align 4, !tbaa !4
  %idxprom = sext i32 %dec to i64
  %1 = load %struct.op*** @PL_retstack, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.op** %1, i64 %idxprom
  %2 = load %struct.op** %arrayidx, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.op* [ %2, %if.then ], [ null, %entry ]
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_push_scope() #0 {
entry:
  %0 = load i32* @PL_scopestack_ix, align 4, !tbaa !4
  %1 = load i32* @PL_scopestack_max, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre2 = load i32** @PL_scopestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul = mul nsw i32 %0, 3
  %div = sdiv i32 %mul, 2
  store i32 %div, i32* @PL_scopestack_max, align 4, !tbaa !4
  %2 = load i32** @PL_scopestack, align 8, !tbaa !0
  %3 = bitcast i32* %2 to i8*
  %conv = sext i32 %div to i64
  %mul1 = shl nsw i64 %conv, 2
  %call = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1) #5
  %4 = bitcast i8* %call to i32*
  store i32* %4, i32** @PL_scopestack, align 8, !tbaa !0
  %.pre = load i32* @PL_scopestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi i32* [ %4, %if.then ], [ %.pre2, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %7 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @PL_scopestack_ix, align 4, !tbaa !4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32* %5, i64 %idxprom
  store i32 %7, i32* %arrayidx, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_pop_scope() #0 {
entry:
  %0 = load i32* @PL_scopestack_ix, align 4, !tbaa !4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @PL_scopestack_ix, align 4, !tbaa !4
  %idxprom = sext i32 %dec to i64
  %1 = load i32** @PL_scopestack, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %1, i64 %idxprom
  %2 = load i32* %arrayidx, align 4, !tbaa !4
  %3 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %cmp = icmp sgt i32 %3, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @Perl_leave_scope(i32 %2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_leave_scope(i32 %base) #0 {
entry:
  %cmp = icmp slt i32 %base, -1
  br i1 %cmp, label %if.then, label %while.cond.preheader

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([33 x i8]* @.str2, i64 0, i64 0)) #5
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then, %entry
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %cmp1830 = icmp sgt i32 %0, %base
  br i1 %cmp1830, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.backedge, %while.cond.preheader
  %1 = phi i32 [ %0, %while.cond.preheader ], [ %264, %while.cond.backedge ]
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom = sext i32 %dec to i64
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %union.any* %2, i64 %idxprom
  %any_i32 = bitcast %union.any* %arrayidx to i32*
  %3 = load i32* %any_i32, align 4, !tbaa !4
  switch i32 %3, label %sw.default660 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 34, label %sw.bb20
    i32 37, label %sw.bb32
    i32 29, label %sw.bb44
    i32 13, label %sw.bb53
    i32 2, label %sw.bb125
    i32 3, label %sw.bb168
    i32 4, label %sw.bb212
    i32 5, label %sw.bb221
    i32 38, label %sw.bb229
    i32 6, label %sw.bb237
    i32 23, label %sw.bb246
    i32 32, label %sw.bb256
    i32 7, label %sw.bb266
    i32 8, label %sw.bb274
    i32 31, label %sw.bb283
    i32 11, label %sw.bb283
    i32 10, label %sw.bb292
    i32 9, label %sw.bb301
    i32 12, label %sw.bb310
    i32 14, label %sw.bb315
    i32 15, label %sw.bb361
    i32 36, label %sw.bb366
    i32 16, label %sw.bb372
    i32 17, label %sw.bb377
    i32 18, label %sw.bb382
    i32 19, label %sw.bb444
    i32 20, label %sw.bb458
    i32 30, label %sw.bb466
    i32 21, label %sw.bb474
    i32 28, label %sw.bb474
    i32 22, label %sw.bb479
    i32 24, label %sw.bb484
    i32 25, label %sw.bb535
    i32 26, label %sw.bb575
    i32 27, label %sw.bb580
    i32 33, label %sw.bb614
    i32 35, label %sw.bb624
    i32 40, label %sw.bb643
  ]

sw.bb:                                            ; preds = %while.body
  %dec2 = add nsw i32 %1, -2
  %idxprom3 = sext i32 %dec2 to i64
  %any_ptr = getelementptr inbounds %union.any* %2, i64 %idxprom3, i32 0
  %4 = load i8** %any_ptr, align 8, !tbaa !0
  %5 = bitcast i8* %4 to %struct.sv*
  %dec5 = add nsw i32 %1, -3
  store i32 %dec5, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom6 = sext i32 %dec5 to i64
  %any_ptr8 = getelementptr inbounds %union.any* %2, i64 %idxprom6, i32 0
  %6 = load i8** %any_ptr8, align 8, !tbaa !0
  %7 = bitcast i8* %6 to %struct.sv*
  tail call void @Perl_sv_replace(%struct.sv* %7, %struct.sv* %5) #5
  store i32 2, i32* @PL_localizing, align 4, !tbaa !4
  %sv_flags = getelementptr inbounds i8* %6, i64 12
  %8 = bitcast i8* %sv_flags to i32*
  %9 = load i32* %8, align 4, !tbaa !4
  %and = and i32 %9, 16384
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end10, label %if.then9

if.then9:                                         ; preds = %sw.bb
  %call = tail call i32 @Perl_mg_set(%struct.sv* %7) #5
  br label %if.end10

if.end10:                                         ; preds = %sw.bb, %if.then9
  store i32 0, i32* @PL_localizing, align 4, !tbaa !4
  br label %while.cond.backedge

sw.bb11:                                          ; preds = %while.body
  %dec12 = add nsw i32 %1, -2
  %idxprom13 = sext i32 %dec12 to i64
  %any_ptr15 = getelementptr inbounds %union.any* %2, i64 %idxprom13, i32 0
  %10 = load i8** %any_ptr15, align 8, !tbaa !0
  %11 = bitcast i8* %10 to %struct.sv*
  %dec16 = add nsw i32 %1, -3
  store i32 %dec16, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom17 = sext i32 %dec16 to i64
  %any_ptr19 = getelementptr inbounds %union.any* %2, i64 %idxprom17, i32 0
  %12 = load i8** %any_ptr19, align 8, !tbaa !0
  %sv_any = bitcast i8* %12 to %struct.xpvgv**
  %13 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %13, i64 0, i32 7
  %14 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %15 = bitcast %struct.gp* %14 to i8*
  %16 = bitcast i8* %12 to %struct.av*
  br label %restore_sv

sw.bb20:                                          ; preds = %while.body
  %dec21 = add nsw i32 %1, -2
  %idxprom22 = sext i32 %dec21 to i64
  %any_ptr24 = getelementptr inbounds %union.any* %2, i64 %idxprom22, i32 0
  %17 = load i8** %any_ptr24, align 8, !tbaa !0
  %dec25 = add nsw i32 %1, -3
  store i32 %dec25, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom26 = sext i32 %dec25 to i64
  %any_ptr28 = getelementptr inbounds %union.any* %2, i64 %idxprom26, i32 0
  %18 = load i8** %any_ptr28, align 8, !tbaa !0
  %19 = bitcast i8* %18 to i8**
  %20 = load i8** %19, align 8, !tbaa !0
  %cmp29 = icmp eq i8* %20, %17
  br i1 %cmp29, label %while.cond.backedge, label %if.then30

if.then30:                                        ; preds = %sw.bb20
  tail call void @Perl_safesysfree(i8* %20) #5
  store i8* %17, i8** %19, align 8, !tbaa !0
  br label %while.cond.backedge

sw.bb32:                                          ; preds = %while.body
  %dec33 = add nsw i32 %1, -2
  %idxprom34 = sext i32 %dec33 to i64
  %any_ptr36 = getelementptr inbounds %union.any* %2, i64 %idxprom34, i32 0
  %21 = load i8** %any_ptr36, align 8, !tbaa !0
  %dec37 = add nsw i32 %1, -3
  store i32 %dec37, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom38 = sext i32 %dec37 to i64
  %any_ptr40 = getelementptr inbounds %union.any* %2, i64 %idxprom38, i32 0
  %22 = load i8** %any_ptr40, align 8, !tbaa !0
  %23 = bitcast i8* %22 to i8**
  %24 = load i8** %23, align 8, !tbaa !0
  %cmp41 = icmp eq i8* %24, %21
  br i1 %cmp41, label %while.cond.backedge, label %if.then42

if.then42:                                        ; preds = %sw.bb32
  tail call void @free(i8* %24) #6
  store i8* %21, i8** %23, align 8, !tbaa !0
  br label %while.cond.backedge

sw.bb44:                                          ; preds = %while.body
  %dec45 = add nsw i32 %1, -2
  %idxprom46 = sext i32 %dec45 to i64
  %any_ptr48 = getelementptr inbounds %union.any* %2, i64 %idxprom46, i32 0
  %25 = load i8** %any_ptr48, align 8, !tbaa !0
  %26 = bitcast i8* %25 to %struct.sv*
  %dec49 = add nsw i32 %1, -3
  store i32 %dec49, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom50 = sext i32 %dec49 to i64
  %any_ptr52 = getelementptr inbounds %union.any* %2, i64 %idxprom50, i32 0
  %27 = load i8** %any_ptr52, align 8, !tbaa !0
  %28 = bitcast i8* %27 to %struct.sv**
  %29 = load %struct.sv** %28, align 8, !tbaa !0
  store %struct.sv* %26, %struct.sv** %28, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %29) #5
  tail call void @Perl_sv_free(%struct.sv* %26) #5
  br label %while.cond.backedge

sw.bb53:                                          ; preds = %while.body
  %dec54 = add nsw i32 %1, -2
  %idxprom55 = sext i32 %dec54 to i64
  %any_ptr57 = getelementptr inbounds %union.any* %2, i64 %idxprom55, i32 0
  %30 = load i8** %any_ptr57, align 8, !tbaa !0
  %31 = bitcast i8* %30 to %struct.sv*
  %dec58 = add nsw i32 %1, -3
  store i32 %dec58, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom59 = sext i32 %dec58 to i64
  %any_ptr61 = getelementptr inbounds %union.any* %2, i64 %idxprom59, i32 0
  %32 = load i8** %any_ptr61, align 8, !tbaa !0
  br label %restore_sv

restore_sv:                                       ; preds = %land.rhs526, %cond.true520, %if.then516, %if.end572, %sw.bb53, %sw.bb11
  %ptr.0 = phi i8* [ %218, %if.end572 ], [ %204, %cond.true520 ], [ %204, %if.then516 ], [ %32, %sw.bb53 ], [ %15, %sw.bb11 ], [ %204, %land.rhs526 ]
  %av.0 = phi %struct.av* [ %224, %if.end572 ], [ %199, %cond.true520 ], [ %199, %if.then516 ], [ null, %sw.bb53 ], [ %16, %sw.bb11 ], [ %199, %land.rhs526 ]
  %value.0 = phi %struct.sv* [ %212, %if.end572 ], [ %196, %cond.true520 ], [ %196, %if.then516 ], [ %31, %sw.bb53 ], [ %11, %sw.bb11 ], [ %196, %land.rhs526 ]
  %33 = bitcast i8* %ptr.0 to %struct.sv**
  %34 = load %struct.sv** %33, align 8, !tbaa !0
  %sv_flags62 = getelementptr inbounds %struct.sv* %34, i64 0, i32 2
  %35 = load i32* %sv_flags62, align 4, !tbaa !4
  %and63 = and i32 %35, 255
  %cmp64 = icmp ugt i32 %and63, 6
  br i1 %cmp64, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %restore_sv
  %sv_any65 = getelementptr inbounds %struct.sv* %34, i64 0, i32 0
  %36 = load i8** %sv_any65, align 8, !tbaa !0
  %xmg_magic = getelementptr inbounds i8* %36, i64 40
  %37 = bitcast i8* %xmg_magic to %struct.magic**
  %38 = load %struct.magic** %37, align 8, !tbaa !0
  %tobool66 = icmp eq %struct.magic* %38, null
  %cmp70 = icmp eq i32 %and63, 13
  %or.cond826 = or i1 %tobool66, %cmp70
  br i1 %or.cond826, label %if.else, label %if.then71

if.then71:                                        ; preds = %land.lhs.true
  %sv_flags72 = getelementptr inbounds %struct.sv* %value.0, i64 0, i32 2
  %39 = load i32* %sv_flags72, align 4, !tbaa !4
  %and73 = and i32 %39, 255
  %cmp76 = icmp ult i32 %and73, %and63
  br i1 %cmp76, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.then71
  %call79 = tail call signext i8 @Perl_sv_upgrade(%struct.sv* %value.0, i32 %and63) #5
  %.pre = load i8** %sv_any65, align 8, !tbaa !0
  %xmg_magic82.phi.trans.insert = getelementptr inbounds i8* %.pre, i64 40
  %.phi.trans.insert = bitcast i8* %xmg_magic82.phi.trans.insert to %struct.magic**
  %.pre831 = load %struct.magic** %.phi.trans.insert, align 8, !tbaa !0
  %.pre832 = load i32* %sv_flags62, align 4, !tbaa !4
  %.pre833 = load i32* %sv_flags72, align 4, !tbaa !4
  br label %lor.end

lor.end:                                          ; preds = %if.then71, %lor.rhs
  %40 = phi i32 [ %39, %if.then71 ], [ %.pre833, %lor.rhs ]
  %41 = phi i32 [ %35, %if.then71 ], [ %.pre832, %lor.rhs ]
  %42 = phi %struct.magic* [ %38, %if.then71 ], [ %.pre831, %lor.rhs ]
  %sv_any83 = getelementptr inbounds %struct.sv* %value.0, i64 0, i32 0
  %43 = load i8** %sv_any83, align 8, !tbaa !0
  %xmg_magic84 = getelementptr inbounds i8* %43, i64 40
  %44 = bitcast i8* %xmg_magic84 to %struct.magic**
  store %struct.magic* %42, %struct.magic** %44, align 8, !tbaa !0
  %and86 = and i32 %41, 57344
  %or = or i32 %40, %and86
  store i32 %or, i32* %sv_flags72, align 4, !tbaa !4
  %45 = load i32* %sv_flags62, align 4, !tbaa !4
  %and89 = and i32 %45, -57345
  store i32 %and89, i32* %sv_flags62, align 4, !tbaa !4
  %46 = load i8** %sv_any65, align 8, !tbaa !0
  %xmg_magic91 = getelementptr inbounds i8* %46, i64 40
  %47 = bitcast i8* %xmg_magic91 to %struct.magic**
  store %struct.magic* null, %struct.magic** %47, align 8, !tbaa !0
  br label %if.end115

if.else:                                          ; preds = %land.lhs.true, %restore_sv
  %sv_flags92 = getelementptr inbounds %struct.sv* %value.0, i64 0, i32 2
  %48 = load i32* %sv_flags92, align 4, !tbaa !4
  %and93 = and i32 %48, 255
  %cmp94 = icmp ugt i32 %and93, 6
  br i1 %cmp94, label %land.lhs.true96, label %if.end115

land.lhs.true96:                                  ; preds = %if.else
  %sv_any97 = getelementptr inbounds %struct.sv* %value.0, i64 0, i32 0
  %49 = load i8** %sv_any97, align 8, !tbaa !0
  %xmg_magic98 = getelementptr inbounds i8* %49, i64 40
  %50 = bitcast i8* %xmg_magic98 to %struct.magic**
  %51 = load %struct.magic** %50, align 8, !tbaa !0
  %tobool99 = icmp eq %struct.magic* %51, null
  %cmp103 = icmp eq i32 %and93, 13
  %or.cond827 = or i1 %tobool99, %cmp103
  br i1 %or.cond827, label %if.end115, label %if.then105

if.then105:                                       ; preds = %land.lhs.true96
  %and107 = lshr i32 %48, 8
  %shr = and i32 %and107, 393216
  %.masked = and i32 %48, -57345
  %and111 = or i32 %shr, %.masked
  store i32 %and111, i32* %sv_flags92, align 4, !tbaa !4
  store %struct.magic* null, %struct.magic** %50, align 8, !tbaa !0
  br label %if.end115

if.end115:                                        ; preds = %land.lhs.true96, %if.else, %if.then105, %lor.end
  store %struct.sv* %value.0, %struct.sv** %33, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %34) #5
  store i32 2, i32* @PL_localizing, align 4, !tbaa !4
  %sv_flags116 = getelementptr inbounds %struct.sv* %value.0, i64 0, i32 2
  %52 = load i32* %sv_flags116, align 4, !tbaa !4
  %and117 = and i32 %52, 16384
  %tobool118 = icmp eq i32 %and117, 0
  br i1 %tobool118, label %if.end121, label %if.then119

if.then119:                                       ; preds = %if.end115
  %call120 = tail call i32 @Perl_mg_set(%struct.sv* %value.0) #5
  br label %if.end121

if.end121:                                        ; preds = %if.end115, %if.then119
  store i32 0, i32* @PL_localizing, align 4, !tbaa !4
  tail call void @Perl_sv_free(%struct.sv* %value.0) #5
  %tobool122 = icmp eq %struct.av* %av.0, null
  br i1 %tobool122, label %while.cond.backedge, label %if.then123

if.then123:                                       ; preds = %if.end121
  %53 = bitcast %struct.av* %av.0 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %53) #5
  br label %while.cond.backedge

sw.bb125:                                         ; preds = %while.body
  %dec126 = add nsw i32 %1, -2
  %idxprom127 = sext i32 %dec126 to i64
  %any_ptr129 = getelementptr inbounds %union.any* %2, i64 %idxprom127, i32 0
  %54 = load i8** %any_ptr129, align 8, !tbaa !0
  %55 = bitcast i8* %54 to %struct.av*
  %dec130 = add nsw i32 %1, -3
  store i32 %dec130, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom131 = sext i32 %dec130 to i64
  %any_ptr133 = getelementptr inbounds %union.any* %2, i64 %idxprom131, i32 0
  %56 = load i8** %any_ptr133, align 8, !tbaa !0
  %sv_any134 = bitcast i8* %56 to %struct.xpvgv**
  %57 = load %struct.xpvgv** %sv_any134, align 8, !tbaa !0
  %xgv_gp135 = getelementptr inbounds %struct.xpvgv* %57, i64 0, i32 7
  %58 = load %struct.gp** %xgv_gp135, align 8, !tbaa !0
  %gp_av = getelementptr inbounds %struct.gp* %58, i64 0, i32 4
  %59 = load %struct.av** %gp_av, align 8, !tbaa !0
  %tobool136 = icmp eq %struct.av* %59, null
  br i1 %tobool136, label %sw.bb125.if.end153_crit_edge, label %if.then137

sw.bb125.if.end153_crit_edge:                     ; preds = %sw.bb125
  %sv_flags157.pre = getelementptr inbounds i8* %54, i64 12
  %.pre847 = bitcast i8* %sv_flags157.pre to i32*
  br label %if.end153

if.then137:                                       ; preds = %sw.bb125
  %sv_any141 = getelementptr inbounds %struct.av* %59, i64 0, i32 0
  %60 = load %struct.xpvav** %sv_any141, align 8, !tbaa !0
  %61 = getelementptr inbounds %struct.xpvav* %60, i64 0, i32 5
  %62 = load %struct.magic** %61, align 8, !tbaa !0
  %sv_any143 = bitcast i8* %54 to %struct.xpvav**
  %63 = load %struct.xpvav** %sv_any143, align 8, !tbaa !0
  %64 = getelementptr inbounds %struct.xpvav* %63, i64 0, i32 5
  store %struct.magic* %62, %struct.magic** %64, align 8, !tbaa !0
  %sv_flags145 = getelementptr inbounds %struct.av* %59, i64 0, i32 2
  %65 = load i32* %sv_flags145, align 4, !tbaa !4
  %and146 = and i32 %65, 57344
  %sv_flags147 = getelementptr inbounds i8* %54, i64 12
  %66 = bitcast i8* %sv_flags147 to i32*
  %67 = load i32* %66, align 4, !tbaa !4
  %or148 = or i32 %67, %and146
  store i32 %or148, i32* %66, align 4, !tbaa !4
  %68 = load i32* %sv_flags145, align 4, !tbaa !4
  %and150 = and i32 %68, -57345
  store i32 %and150, i32* %sv_flags145, align 4, !tbaa !4
  %69 = load %struct.xpvav** %sv_any141, align 8, !tbaa !0
  %70 = getelementptr inbounds %struct.xpvav* %69, i64 0, i32 5
  store %struct.magic* null, %struct.magic** %70, align 8, !tbaa !0
  %71 = bitcast %struct.av* %59 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %71) #5
  %.pre834 = load %struct.xpvgv** %sv_any134, align 8, !tbaa !0
  %xgv_gp155.phi.trans.insert = getelementptr inbounds %struct.xpvgv* %.pre834, i64 0, i32 7
  %.pre835 = load %struct.gp** %xgv_gp155.phi.trans.insert, align 8, !tbaa !0
  br label %if.end153

if.end153:                                        ; preds = %sw.bb125.if.end153_crit_edge, %if.then137
  %.pre-phi = phi i32* [ %.pre847, %sw.bb125.if.end153_crit_edge ], [ %66, %if.then137 ]
  %72 = phi %struct.gp* [ %58, %sw.bb125.if.end153_crit_edge ], [ %.pre835, %if.then137 ]
  %gp_av156 = getelementptr inbounds %struct.gp* %72, i64 0, i32 4
  store %struct.av* %55, %struct.av** %gp_av156, align 8, !tbaa !0
  %73 = load i32* %.pre-phi, align 4, !tbaa !4
  %and158 = and i32 %73, 57344
  %tobool159 = icmp eq i32 %and158, 0
  br i1 %tobool159, label %while.cond.backedge, label %if.then160

if.then160:                                       ; preds = %if.end153
  store i32 2, i32* @PL_localizing, align 4, !tbaa !4
  %74 = load i32* %.pre-phi, align 4, !tbaa !4
  %and162 = and i32 %74, 16384
  %tobool163 = icmp eq i32 %and162, 0
  br i1 %tobool163, label %if.end166, label %if.then164

if.then164:                                       ; preds = %if.then160
  %75 = bitcast i8* %54 to %struct.sv*
  %call165 = tail call i32 @Perl_mg_set(%struct.sv* %75) #5
  br label %if.end166

if.end166:                                        ; preds = %if.then160, %if.then164
  store i32 0, i32* @PL_localizing, align 4, !tbaa !4
  br label %while.cond.backedge

sw.bb168:                                         ; preds = %while.body
  %dec169 = add nsw i32 %1, -2
  %idxprom170 = sext i32 %dec169 to i64
  %any_ptr172 = getelementptr inbounds %union.any* %2, i64 %idxprom170, i32 0
  %76 = load i8** %any_ptr172, align 8, !tbaa !0
  %77 = bitcast i8* %76 to %struct.hv*
  %dec173 = add nsw i32 %1, -3
  store i32 %dec173, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom174 = sext i32 %dec173 to i64
  %any_ptr176 = getelementptr inbounds %union.any* %2, i64 %idxprom174, i32 0
  %78 = load i8** %any_ptr176, align 8, !tbaa !0
  %sv_any177 = bitcast i8* %78 to %struct.xpvgv**
  %79 = load %struct.xpvgv** %sv_any177, align 8, !tbaa !0
  %xgv_gp178 = getelementptr inbounds %struct.xpvgv* %79, i64 0, i32 7
  %80 = load %struct.gp** %xgv_gp178, align 8, !tbaa !0
  %gp_hv = getelementptr inbounds %struct.gp* %80, i64 0, i32 5
  %81 = load %struct.hv** %gp_hv, align 8, !tbaa !0
  %tobool179 = icmp eq %struct.hv* %81, null
  br i1 %tobool179, label %sw.bb168.if.end197_crit_edge, label %if.then180

sw.bb168.if.end197_crit_edge:                     ; preds = %sw.bb168
  %sv_flags201.pre = getelementptr inbounds i8* %76, i64 12
  %.pre848 = bitcast i8* %sv_flags201.pre to i32*
  br label %if.end197

if.then180:                                       ; preds = %sw.bb168
  %sv_any185 = getelementptr inbounds %struct.hv* %81, i64 0, i32 0
  %82 = load %struct.xpvhv** %sv_any185, align 8, !tbaa !0
  %83 = getelementptr inbounds %struct.xpvhv* %82, i64 0, i32 5
  %84 = load %struct.magic** %83, align 8, !tbaa !0
  %sv_any187 = bitcast i8* %76 to %struct.xpvhv**
  %85 = load %struct.xpvhv** %sv_any187, align 8, !tbaa !0
  %86 = getelementptr inbounds %struct.xpvhv* %85, i64 0, i32 5
  store %struct.magic* %84, %struct.magic** %86, align 8, !tbaa !0
  %sv_flags189 = getelementptr inbounds %struct.hv* %81, i64 0, i32 2
  %87 = load i32* %sv_flags189, align 4, !tbaa !4
  %and190 = and i32 %87, 57344
  %sv_flags191 = getelementptr inbounds i8* %76, i64 12
  %88 = bitcast i8* %sv_flags191 to i32*
  %89 = load i32* %88, align 4, !tbaa !4
  %or192 = or i32 %89, %and190
  store i32 %or192, i32* %88, align 4, !tbaa !4
  %90 = load i32* %sv_flags189, align 4, !tbaa !4
  %and194 = and i32 %90, -57345
  store i32 %and194, i32* %sv_flags189, align 4, !tbaa !4
  %91 = load %struct.xpvhv** %sv_any185, align 8, !tbaa !0
  %92 = getelementptr inbounds %struct.xpvhv* %91, i64 0, i32 5
  store %struct.magic* null, %struct.magic** %92, align 8, !tbaa !0
  %93 = bitcast %struct.hv* %81 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %93) #5
  %.pre836 = load %struct.xpvgv** %sv_any177, align 8, !tbaa !0
  %xgv_gp199.phi.trans.insert = getelementptr inbounds %struct.xpvgv* %.pre836, i64 0, i32 7
  %.pre837 = load %struct.gp** %xgv_gp199.phi.trans.insert, align 8, !tbaa !0
  br label %if.end197

if.end197:                                        ; preds = %sw.bb168.if.end197_crit_edge, %if.then180
  %.pre-phi849 = phi i32* [ %.pre848, %sw.bb168.if.end197_crit_edge ], [ %88, %if.then180 ]
  %94 = phi %struct.gp* [ %80, %sw.bb168.if.end197_crit_edge ], [ %.pre837, %if.then180 ]
  %gp_hv200 = getelementptr inbounds %struct.gp* %94, i64 0, i32 5
  store %struct.hv* %77, %struct.hv** %gp_hv200, align 8, !tbaa !0
  %95 = load i32* %.pre-phi849, align 4, !tbaa !4
  %and202 = and i32 %95, 57344
  %tobool203 = icmp eq i32 %and202, 0
  br i1 %tobool203, label %while.cond.backedge, label %if.then204

if.then204:                                       ; preds = %if.end197
  store i32 2, i32* @PL_localizing, align 4, !tbaa !4
  %96 = load i32* %.pre-phi849, align 4, !tbaa !4
  %and206 = and i32 %96, 16384
  %tobool207 = icmp eq i32 %and206, 0
  br i1 %tobool207, label %if.end210, label %if.then208

if.then208:                                       ; preds = %if.then204
  %97 = bitcast i8* %76 to %struct.sv*
  %call209 = tail call i32 @Perl_mg_set(%struct.sv* %97) #5
  br label %if.end210

if.end210:                                        ; preds = %if.then204, %if.then208
  store i32 0, i32* @PL_localizing, align 4, !tbaa !4
  br label %while.cond.backedge

sw.bb212:                                         ; preds = %while.body
  %dec213 = add nsw i32 %1, -2
  %idxprom214 = sext i32 %dec213 to i64
  %any_ptr216 = getelementptr inbounds %union.any* %2, i64 %idxprom214, i32 0
  %98 = load i8** %any_ptr216, align 8, !tbaa !0
  %dec217 = add nsw i32 %1, -3
  store i32 %dec217, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom218 = sext i32 %dec217 to i64
  %arrayidx219 = getelementptr inbounds %union.any* %2, i64 %idxprom218
  %any_i32220 = bitcast %union.any* %arrayidx219 to i32*
  %99 = load i32* %any_i32220, align 4, !tbaa !4
  %100 = bitcast i8* %98 to i32*
  store i32 %99, i32* %100, align 4, !tbaa !4
  br label %while.cond.backedge

sw.bb221:                                         ; preds = %while.body
  %dec222 = add nsw i32 %1, -2
  %idxprom223 = sext i32 %dec222 to i64
  %any_ptr225 = getelementptr inbounds %union.any* %2, i64 %idxprom223, i32 0
  %101 = load i8** %any_ptr225, align 8, !tbaa !0
  %dec226 = add nsw i32 %1, -3
  store i32 %dec226, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom227 = sext i32 %dec226 to i64
  %arrayidx228 = getelementptr inbounds %union.any* %2, i64 %idxprom227
  %any_long = bitcast %union.any* %arrayidx228 to i64*
  %102 = load i64* %any_long, align 8, !tbaa !3
  %103 = bitcast i8* %101 to i64*
  store i64 %102, i64* %103, align 8, !tbaa !3
  br label %while.cond.backedge

sw.bb229:                                         ; preds = %while.body
  %dec230 = add nsw i32 %1, -2
  %idxprom231 = sext i32 %dec230 to i64
  %any_ptr233 = getelementptr inbounds %union.any* %2, i64 %idxprom231, i32 0
  %104 = load i8** %any_ptr233, align 8, !tbaa !0
  %dec234 = add nsw i32 %1, -3
  store i32 %dec234, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom235 = sext i32 %dec234 to i64
  %arrayidx236 = getelementptr inbounds %union.any* %2, i64 %idxprom235
  %any_bool = bitcast %union.any* %arrayidx236 to i8*
  %105 = load i8* %any_bool, align 1, !tbaa !1
  store i8 %105, i8* %104, align 1, !tbaa !1
  br label %while.cond.backedge

sw.bb237:                                         ; preds = %while.body
  %dec238 = add nsw i32 %1, -2
  %idxprom239 = sext i32 %dec238 to i64
  %any_ptr241 = getelementptr inbounds %union.any* %2, i64 %idxprom239, i32 0
  %106 = load i8** %any_ptr241, align 8, !tbaa !0
  %dec242 = add nsw i32 %1, -3
  store i32 %dec242, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom243 = sext i32 %dec242 to i64
  %arrayidx244 = getelementptr inbounds %union.any* %2, i64 %idxprom243
  %any_i32245 = bitcast %union.any* %arrayidx244 to i32*
  %107 = load i32* %any_i32245, align 4, !tbaa !4
  %108 = bitcast i8* %106 to i32*
  store i32 %107, i32* %108, align 4, !tbaa !4
  br label %while.cond.backedge

sw.bb246:                                         ; preds = %while.body
  %dec247 = add nsw i32 %1, -2
  %idxprom248 = sext i32 %dec247 to i64
  %any_ptr250 = getelementptr inbounds %union.any* %2, i64 %idxprom248, i32 0
  %109 = load i8** %any_ptr250, align 8, !tbaa !0
  %dec251 = add nsw i32 %1, -3
  store i32 %dec251, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom252 = sext i32 %dec251 to i64
  %arrayidx253 = getelementptr inbounds %union.any* %2, i64 %idxprom252
  %any_i32254 = bitcast %union.any* %arrayidx253 to i32*
  %110 = load i32* %any_i32254, align 4, !tbaa !4
  %conv255 = trunc i32 %110 to i16
  %111 = bitcast i8* %109 to i16*
  store i16 %conv255, i16* %111, align 2, !tbaa !5
  br label %while.cond.backedge

sw.bb256:                                         ; preds = %while.body
  %dec257 = add nsw i32 %1, -2
  %idxprom258 = sext i32 %dec257 to i64
  %any_ptr260 = getelementptr inbounds %union.any* %2, i64 %idxprom258, i32 0
  %112 = load i8** %any_ptr260, align 8, !tbaa !0
  %dec261 = add nsw i32 %1, -3
  store i32 %dec261, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom262 = sext i32 %dec261 to i64
  %arrayidx263 = getelementptr inbounds %union.any* %2, i64 %idxprom262
  %any_i32264 = bitcast %union.any* %arrayidx263 to i32*
  %113 = load i32* %any_i32264, align 4, !tbaa !4
  %conv265 = trunc i32 %113 to i8
  store i8 %conv265, i8* %112, align 1, !tbaa !1
  br label %while.cond.backedge

sw.bb266:                                         ; preds = %while.body
  %dec267 = add nsw i32 %1, -2
  %idxprom268 = sext i32 %dec267 to i64
  %any_ptr270 = getelementptr inbounds %union.any* %2, i64 %idxprom268, i32 0
  %114 = load i8** %any_ptr270, align 8, !tbaa !0
  %dec271 = add nsw i32 %1, -3
  store i32 %dec271, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom272 = sext i32 %dec271 to i64
  %arrayidx273 = getelementptr inbounds %union.any* %2, i64 %idxprom272
  %any_iv = bitcast %union.any* %arrayidx273 to i64*
  %115 = load i64* %any_iv, align 8, !tbaa !3
  %116 = bitcast i8* %114 to i64*
  store i64 %115, i64* %116, align 8, !tbaa !3
  br label %while.cond.backedge

sw.bb274:                                         ; preds = %while.body
  %dec275 = add nsw i32 %1, -2
  %idxprom276 = sext i32 %dec275 to i64
  %any_ptr278 = getelementptr inbounds %union.any* %2, i64 %idxprom276, i32 0
  %117 = load i8** %any_ptr278, align 8, !tbaa !0
  %dec279 = add nsw i32 %1, -3
  store i32 %dec279, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom280 = sext i32 %dec279 to i64
  %any_ptr282 = getelementptr inbounds %union.any* %2, i64 %idxprom280, i32 0
  %118 = load i8** %any_ptr282, align 8, !tbaa !0
  %119 = bitcast i8* %118 to %struct.sv*
  %120 = bitcast i8* %117 to %struct.sv**
  store %struct.sv* %119, %struct.sv** %120, align 8, !tbaa !0
  br label %while.cond.backedge

sw.bb283:                                         ; preds = %while.body, %while.body
  %dec284 = add nsw i32 %1, -2
  %idxprom285 = sext i32 %dec284 to i64
  %any_ptr287 = getelementptr inbounds %union.any* %2, i64 %idxprom285, i32 0
  %121 = load i8** %any_ptr287, align 8, !tbaa !0
  %dec288 = add nsw i32 %1, -3
  store i32 %dec288, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom289 = sext i32 %dec288 to i64
  %any_ptr291 = getelementptr inbounds %union.any* %2, i64 %idxprom289, i32 0
  %122 = load i8** %any_ptr291, align 8, !tbaa !0
  %123 = bitcast i8* %121 to i8**
  store i8* %122, i8** %123, align 8, !tbaa !0
  br label %while.cond.backedge

sw.bb292:                                         ; preds = %while.body
  %dec293 = add nsw i32 %1, -2
  %idxprom294 = sext i32 %dec293 to i64
  %any_ptr296 = getelementptr inbounds %union.any* %2, i64 %idxprom294, i32 0
  %124 = load i8** %any_ptr296, align 8, !tbaa !0
  %dec297 = add nsw i32 %1, -3
  store i32 %dec297, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom298 = sext i32 %dec297 to i64
  %any_ptr300 = getelementptr inbounds %union.any* %2, i64 %idxprom298, i32 0
  %125 = load i8** %any_ptr300, align 8, !tbaa !0
  %126 = bitcast i8* %125 to %struct.hv*
  %127 = bitcast i8* %124 to %struct.hv**
  store %struct.hv* %126, %struct.hv** %127, align 8, !tbaa !0
  br label %while.cond.backedge

sw.bb301:                                         ; preds = %while.body
  %dec302 = add nsw i32 %1, -2
  %idxprom303 = sext i32 %dec302 to i64
  %any_ptr305 = getelementptr inbounds %union.any* %2, i64 %idxprom303, i32 0
  %128 = load i8** %any_ptr305, align 8, !tbaa !0
  %dec306 = add nsw i32 %1, -3
  store i32 %dec306, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom307 = sext i32 %dec306 to i64
  %any_ptr309 = getelementptr inbounds %union.any* %2, i64 %idxprom307, i32 0
  %129 = load i8** %any_ptr309, align 8, !tbaa !0
  %130 = bitcast i8* %129 to %struct.av*
  %131 = bitcast i8* %128 to %struct.av**
  store %struct.av* %130, %struct.av** %131, align 8, !tbaa !0
  br label %while.cond.backedge

sw.bb310:                                         ; preds = %while.body
  %dec311 = add nsw i32 %1, -2
  store i32 %dec311, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom312 = sext i32 %dec311 to i64
  %any_ptr314 = getelementptr inbounds %union.any* %2, i64 %idxprom312, i32 0
  %132 = load i8** %any_ptr314, align 8, !tbaa !0
  %133 = bitcast i8* %132 to %struct.sv*
  tail call void @Perl_sv_clear(%struct.sv* %133) #5
  br label %while.cond.backedge

sw.bb315:                                         ; preds = %while.body
  %dec316 = add nsw i32 %1, -2
  %idxprom317 = sext i32 %dec316 to i64
  %any_ptr319 = getelementptr inbounds %union.any* %2, i64 %idxprom317, i32 0
  %134 = load i8** %any_ptr319, align 8, !tbaa !0
  %dec320 = add nsw i32 %1, -3
  store i32 %dec320, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom321 = sext i32 %dec320 to i64
  %any_ptr323 = getelementptr inbounds %union.any* %2, i64 %idxprom321, i32 0
  %135 = load i8** %any_ptr323, align 8, !tbaa !0
  %136 = bitcast i8* %135 to %struct.gv*
  %sv_any324 = bitcast i8* %135 to %struct.xpvgv**
  %137 = load %struct.xpvgv** %sv_any324, align 8, !tbaa !0
  %xpv_pv = getelementptr inbounds %struct.xpvgv* %137, i64 0, i32 0
  %138 = load i8** %xpv_pv, align 8, !tbaa !0
  %tobool325 = icmp eq i8* %138, null
  br i1 %tobool325, label %if.end333, label %land.lhs.true326

land.lhs.true326:                                 ; preds = %sw.bb315
  %139 = getelementptr inbounds %struct.xpvgv* %137, i64 0, i32 2
  %140 = load i64* %139, align 8, !tbaa !3
  %cmp328 = icmp eq i64 %140, 0
  br i1 %cmp328, label %if.end333, label %if.then330

if.then330:                                       ; preds = %land.lhs.true326
  tail call void @Perl_safesysfree(i8* %138) #5
  %.pre838 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %.pre839 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre840 = load %struct.xpvgv** %sv_any324, align 8, !tbaa !0
  br label %if.end333

if.end333:                                        ; preds = %land.lhs.true326, %sw.bb315, %if.then330
  %141 = phi %struct.xpvgv* [ %137, %land.lhs.true326 ], [ %137, %sw.bb315 ], [ %.pre840, %if.then330 ]
  %142 = phi %union.any* [ %2, %land.lhs.true326 ], [ %2, %sw.bb315 ], [ %.pre839, %if.then330 ]
  %143 = phi i32 [ %dec320, %land.lhs.true326 ], [ %dec320, %sw.bb315 ], [ %.pre838, %if.then330 ]
  %dec334 = add nsw i32 %143, -1
  %idxprom335 = sext i32 %dec334 to i64
  %any_ptr337 = getelementptr inbounds %union.any* %142, i64 %idxprom335, i32 0
  %144 = load i8** %any_ptr337, align 8, !tbaa !0
  %xpv_pv339 = getelementptr inbounds %struct.xpvgv* %141, i64 0, i32 0
  store i8* %144, i8** %xpv_pv339, align 8, !tbaa !0
  %dec340 = add nsw i32 %143, -2
  %idxprom341 = sext i32 %dec340 to i64
  %145 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx342 = getelementptr inbounds %union.any* %145, i64 %idxprom341
  %any_iv343 = bitcast %union.any* %arrayidx342 to i64*
  %146 = load i64* %any_iv343, align 8, !tbaa !3
  %147 = load %struct.xpvgv** %sv_any324, align 8, !tbaa !0
  %148 = getelementptr inbounds %struct.xpvgv* %147, i64 0, i32 1
  store i64 %146, i64* %148, align 8, !tbaa !3
  %dec345 = add nsw i32 %143, -3
  store i32 %dec345, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom346 = sext i32 %dec345 to i64
  %arrayidx347 = getelementptr inbounds %union.any* %145, i64 %idxprom346
  %any_iv348 = bitcast %union.any* %arrayidx347 to i64*
  %149 = load i64* %any_iv348, align 8, !tbaa !3
  %150 = getelementptr inbounds %struct.xpvgv* %147, i64 0, i32 2
  store i64 %149, i64* %150, align 8, !tbaa !3
  tail call void @Perl_gp_free(%struct.gv* %136) #5
  %151 = bitcast i8* %134 to %struct.gp*
  %152 = load %struct.xpvgv** %sv_any324, align 8, !tbaa !0
  %xgv_gp352 = getelementptr inbounds %struct.xpvgv* %152, i64 0, i32 7
  store %struct.gp* %151, %struct.gp** %xgv_gp352, align 8, !tbaa !0
  %153 = load %struct.xpvgv** %sv_any324, align 8, !tbaa !0
  %xgv_gp354 = getelementptr inbounds %struct.xpvgv* %153, i64 0, i32 7
  %154 = load %struct.gp** %xgv_gp354, align 8, !tbaa !0
  %gp_cvgen = getelementptr inbounds %struct.gp* %154, i64 0, i32 8
  %155 = load i32* %gp_cvgen, align 4, !tbaa !4
  %tobool355 = icmp eq i32 %155, 0
  br i1 %tobool355, label %cond.false, label %if.end360

cond.false:                                       ; preds = %if.end333
  %gp_cv = getelementptr inbounds %struct.gp* %154, i64 0, i32 7
  %156 = load %struct.cv** %gp_cv, align 8, !tbaa !0
  %tobool358 = icmp eq %struct.cv* %156, null
  br i1 %tobool358, label %if.end360, label %if.then359

if.then359:                                       ; preds = %cond.false
  %157 = load i32* @PL_sub_generation, align 4, !tbaa !4
  %inc = add i32 %157, 1
  store i32 %inc, i32* @PL_sub_generation, align 4, !tbaa !4
  br label %if.end360

if.end360:                                        ; preds = %cond.false, %if.end333, %if.then359
  %158 = bitcast i8* %135 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %158) #5
  br label %while.cond.backedge

sw.bb361:                                         ; preds = %while.body
  %dec362 = add nsw i32 %1, -2
  store i32 %dec362, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom363 = sext i32 %dec362 to i64
  %any_ptr365 = getelementptr inbounds %union.any* %2, i64 %idxprom363, i32 0
  %159 = load i8** %any_ptr365, align 8, !tbaa !0
  %160 = bitcast i8* %159 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %160) #5
  br label %while.cond.backedge

sw.bb366:                                         ; preds = %while.body
  %dec367 = add nsw i32 %1, -2
  store i32 %dec367, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom368 = sext i32 %dec367 to i64
  %any_ptr370 = getelementptr inbounds %union.any* %2, i64 %idxprom368, i32 0
  %161 = load i8** %any_ptr370, align 8, !tbaa !0
  %162 = bitcast i8* %161 to %struct.sv*
  %call371 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %162) #5
  br label %while.cond.backedge

sw.bb372:                                         ; preds = %while.body
  %dec373 = add nsw i32 %1, -2
  store i32 %dec373, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom374 = sext i32 %dec373 to i64
  %any_ptr376 = getelementptr inbounds %union.any* %2, i64 %idxprom374, i32 0
  %163 = load i8** %any_ptr376, align 8, !tbaa !0
  %164 = bitcast i8* %163 to %struct.op*
  tail call void @Perl_op_free(%struct.op* %164) #5
  br label %while.cond.backedge

sw.bb377:                                         ; preds = %while.body
  %dec378 = add nsw i32 %1, -2
  store i32 %dec378, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom379 = sext i32 %dec378 to i64
  %any_ptr381 = getelementptr inbounds %union.any* %2, i64 %idxprom379, i32 0
  %165 = load i8** %any_ptr381, align 8, !tbaa !0
  tail call void @Perl_safesysfree(i8* %165) #5
  br label %while.cond.backedge

sw.bb382:                                         ; preds = %while.body
  %dec383 = add nsw i32 %1, -2
  store i32 %dec383, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom384 = sext i32 %dec383 to i64
  %arrayidx385 = getelementptr inbounds %union.any* %2, i64 %idxprom384
  %any_long386 = bitcast %union.any* %arrayidx385 to i64*
  %166 = load i64* %any_long386, align 8, !tbaa !3
  %167 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx387 = getelementptr inbounds %struct.sv** %167, i64 %166
  %168 = load %struct.sv** %arrayidx387, align 8, !tbaa !0
  %sv_refcnt = getelementptr inbounds %struct.sv* %168, i64 0, i32 1
  %169 = load i32* %sv_refcnt, align 4, !tbaa !4
  %cmp388 = icmp ult i32 %169, 2
  %sv_flags391 = getelementptr inbounds %struct.sv* %168, i64 0, i32 2
  %170 = load i32* %sv_flags391, align 4, !tbaa !4
  br i1 %cmp388, label %land.lhs.true390, label %if.else429

land.lhs.true390:                                 ; preds = %sw.bb382
  %and392 = and i32 %170, 4096
  %tobool393 = icmp eq i32 %and392, 0
  br i1 %tobool393, label %if.then394, label %if.else429

if.then394:                                       ; preds = %land.lhs.true390
  %171 = and i32 %170, 1049600
  %172 = icmp eq i32 %171, 1024
  br i1 %172, label %if.then402, label %if.end405

if.then402:                                       ; preds = %if.then394
  %and404 = and i32 %170, -8388609
  store i32 %and404, i32* %sv_flags391, align 4, !tbaa !4
  br label %if.end405

if.end405:                                        ; preds = %if.then394, %if.then402
  %173 = phi i32 [ %170, %if.then394 ], [ %and404, %if.then402 ]
  %and407 = and i32 %173, 9961472
  %tobool408 = icmp eq i32 %and407, 0
  br i1 %tobool408, label %if.end410, label %if.then409

if.then409:                                       ; preds = %if.end405
  tail call void @Perl_sv_force_normal_flags(%struct.sv* %168, i32 1) #5
  %.pre841 = load i32* %sv_flags391, align 4, !tbaa !4
  br label %if.end410

if.end410:                                        ; preds = %if.end405, %if.then409
  %174 = phi i32 [ %173, %if.end405 ], [ %.pre841, %if.then409 ]
  %and412 = and i32 %174, 57344
  %tobool413 = icmp eq i32 %and412, 0
  br i1 %tobool413, label %if.end416, label %if.then414

if.then414:                                       ; preds = %if.end410
  %call415 = tail call i32 @Perl_mg_free(%struct.sv* %168) #5
  %.pre842 = load i32* %sv_flags391, align 4, !tbaa !4
  br label %if.end416

if.end416:                                        ; preds = %if.end410, %if.then414
  %175 = phi i32 [ %174, %if.end410 ], [ %.pre842, %if.then414 ]
  %and418 = and i32 %175, 255
  switch i32 %and418, label %sw.default [
    i32 0, label %while.cond.backedge
    i32 10, label %sw.bb419
    i32 11, label %sw.bb420
    i32 12, label %sw.bb421
  ]

sw.bb419:                                         ; preds = %if.end416
  %176 = bitcast %struct.sv* %168 to %struct.av*
  tail call void @Perl_av_clear(%struct.av* %176) #5
  br label %while.cond.backedge

sw.bb420:                                         ; preds = %if.end416
  %177 = bitcast %struct.sv* %168 to %struct.hv*
  tail call void @Perl_hv_clear(%struct.hv* %177) #5
  br label %while.cond.backedge

sw.bb421:                                         ; preds = %if.end416
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([28 x i8]* @.str3, i64 0, i64 0)) #5
  %.pre843 = load i32* %sv_flags391, align 4, !tbaa !4
  br label %sw.default

sw.default:                                       ; preds = %if.end416, %sw.bb421
  %178 = phi i32 [ %175, %if.end416 ], [ %.pre843, %sw.bb421 ]
  %and423 = and i32 %178, 1223753727
  store i32 %and423, i32* %sv_flags391, align 4, !tbaa !4
  %and425 = and i32 %178, 2097152
  %tobool426 = icmp eq i32 %and425, 0
  br i1 %tobool426, label %while.cond.backedge, label %land.rhs

land.rhs:                                         ; preds = %sw.default
  %call427 = tail call i32 @Perl_sv_backoff(%struct.sv* %168) #5
  br label %while.cond.backedge

if.else429:                                       ; preds = %sw.bb382, %land.lhs.true390
  %and431 = and i32 %170, 1792
  %and433 = and i32 %170, 255
  switch i32 %and433, label %sw.default438 [
    i32 10, label %sw.bb434
    i32 11, label %sw.bb436
  ]

sw.bb434:                                         ; preds = %if.else429
  %call435 = tail call %struct.av* @Perl_newAV() #5
  %179 = bitcast %struct.av* %call435 to %struct.sv*
  store %struct.sv* %179, %struct.sv** %arrayidx387, align 8, !tbaa !0
  br label %sw.epilog440

sw.bb436:                                         ; preds = %if.else429
  %call437 = tail call %struct.hv* @Perl_newHV() #5
  %180 = bitcast %struct.hv* %call437 to %struct.sv*
  store %struct.sv* %180, %struct.sv** %arrayidx387, align 8, !tbaa !0
  br label %sw.epilog440

sw.default438:                                    ; preds = %if.else429
  %call439 = tail call %struct.sv* @Perl_newSV(i64 0) #5
  store %struct.sv* %call439, %struct.sv** %arrayidx387, align 8, !tbaa !0
  br label %sw.epilog440

sw.epilog440:                                     ; preds = %sw.default438, %sw.bb436, %sw.bb434
  tail call void @Perl_sv_free(%struct.sv* %168) #5
  %181 = load %struct.sv** %arrayidx387, align 8, !tbaa !0
  %sv_flags441 = getelementptr inbounds %struct.sv* %181, i64 0, i32 2
  %182 = load i32* %sv_flags441, align 4, !tbaa !4
  %or442 = or i32 %182, %and431
  store i32 %or442, i32* %sv_flags441, align 4, !tbaa !4
  br label %while.cond.backedge

sw.bb444:                                         ; preds = %while.body
  %dec445 = add nsw i32 %1, -2
  %idxprom446 = sext i32 %dec445 to i64
  %any_ptr448 = getelementptr inbounds %union.any* %2, i64 %idxprom446, i32 0
  %183 = load i8** %any_ptr448, align 8, !tbaa !0
  %184 = bitcast i8* %183 to %struct.hv*
  %dec449 = add nsw i32 %1, -3
  %idxprom450 = sext i32 %dec449 to i64
  %any_ptr452 = getelementptr inbounds %union.any* %2, i64 %idxprom450, i32 0
  %185 = load i8** %any_ptr452, align 8, !tbaa !0
  %dec453 = add nsw i32 %1, -4
  store i32 %dec453, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom454 = sext i32 %dec453 to i64
  %arrayidx455 = getelementptr inbounds %union.any* %2, i64 %idxprom454
  %any_i32456 = bitcast %union.any* %arrayidx455 to i32*
  %186 = load i32* %any_i32456, align 4, !tbaa !4
  %call457 = tail call %struct.sv* @Perl_hv_delete(%struct.hv* %184, i8* %185, i32 %186, i32 2) #5
  %187 = bitcast i8* %183 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %187) #5
  tail call void @Perl_safesysfree(i8* %185) #5
  br label %while.cond.backedge

sw.bb458:                                         ; preds = %while.body
  %dec459 = add nsw i32 %1, -2
  %idxprom460 = sext i32 %dec459 to i64
  %any_ptr462 = getelementptr inbounds %union.any* %2, i64 %idxprom460, i32 0
  %188 = load i8** %any_ptr462, align 8, !tbaa !0
  %dec463 = add nsw i32 %1, -3
  store i32 %dec463, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom464 = sext i32 %dec463 to i64
  %arrayidx465 = getelementptr inbounds %union.any* %2, i64 %idxprom464
  %any_dptr = bitcast %union.any* %arrayidx465 to void (i8*)**
  %189 = load void (i8*)** %any_dptr, align 8, !tbaa !0
  tail call void %189(i8* %188) #5
  br label %while.cond.backedge

sw.bb466:                                         ; preds = %while.body
  %dec467 = add nsw i32 %1, -2
  %idxprom468 = sext i32 %dec467 to i64
  %any_ptr470 = getelementptr inbounds %union.any* %2, i64 %idxprom468, i32 0
  %190 = load i8** %any_ptr470, align 8, !tbaa !0
  %dec471 = add nsw i32 %1, -3
  store i32 %dec471, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom472 = sext i32 %dec471 to i64
  %arrayidx473 = getelementptr inbounds %union.any* %2, i64 %idxprom472
  %any_dxptr = bitcast %union.any* %arrayidx473 to void (i8*)**
  %191 = load void (i8*)** %any_dxptr, align 8, !tbaa !0
  tail call void %191(i8* %190) #5
  br label %while.cond.backedge

sw.bb474:                                         ; preds = %while.body, %while.body
  %dec475 = add nsw i32 %1, -2
  store i32 %dec475, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom476 = sext i32 %dec475 to i64
  %arrayidx477 = getelementptr inbounds %union.any* %2, i64 %idxprom476
  %any_i32478 = bitcast %union.any* %arrayidx477 to i32*
  %192 = load i32* %any_i32478, align 4, !tbaa !4
  %sub = sub nsw i32 %dec475, %192
  store i32 %sub, i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %while.cond.backedge

sw.bb479:                                         ; preds = %while.body
  %dec480 = add nsw i32 %1, -2
  store i32 %dec480, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom481 = sext i32 %dec480 to i64
  %arrayidx482 = getelementptr inbounds %union.any* %2, i64 %idxprom481
  %any_i32483 = bitcast %union.any* %arrayidx482 to i32*
  %193 = load i32* %any_i32483, align 4, !tbaa !4
  %194 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %idx.ext = sext i32 %193 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %194, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  br label %while.cond.backedge

sw.bb484:                                         ; preds = %while.body
  %dec485 = add nsw i32 %1, -2
  %idxprom486 = sext i32 %dec485 to i64
  %any_ptr488 = getelementptr inbounds %union.any* %2, i64 %idxprom486, i32 0
  %195 = load i8** %any_ptr488, align 8, !tbaa !0
  %196 = bitcast i8* %195 to %struct.sv*
  %dec489 = add nsw i32 %1, -3
  store i32 %dec489, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom490 = sext i32 %dec489 to i64
  %arrayidx491 = getelementptr inbounds %union.any* %2, i64 %idxprom490
  %any_i32492 = bitcast %union.any* %arrayidx491 to i32*
  %197 = load i32* %any_i32492, align 4, !tbaa !4
  %dec493 = add nsw i32 %1, -4
  store i32 %dec493, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom494 = sext i32 %dec493 to i64
  %any_ptr496 = getelementptr inbounds %union.any* %2, i64 %idxprom494, i32 0
  %198 = load i8** %any_ptr496, align 8, !tbaa !0
  %199 = bitcast i8* %198 to %struct.av*
  %sv_any497 = bitcast i8* %198 to %struct.xpvav**
  %200 = load %struct.xpvav** %sv_any497, align 8, !tbaa !0
  %xav_flags = getelementptr inbounds %struct.xpvav* %200, i64 0, i32 9
  %201 = load i8* %xav_flags, align 1, !tbaa !1
  %202 = and i8 %201, 3
  %203 = icmp eq i8 %202, 2
  br i1 %203, label %if.then507, label %if.end508

if.then507:                                       ; preds = %sw.bb484
  tail call void @Perl_sv_free(%struct.sv* %196) #5
  br label %if.end508

if.end508:                                        ; preds = %sw.bb484, %if.then507
  %call509 = tail call %struct.sv** @Perl_av_fetch(%struct.av* %199, i32 %197, i32 1) #5
  %204 = bitcast %struct.sv** %call509 to i8*
  %tobool510 = icmp eq %struct.sv** %call509, null
  br i1 %tobool510, label %if.end534, label %if.then511

if.then511:                                       ; preds = %if.end508
  %205 = load %struct.sv** %call509, align 8, !tbaa !0
  %tobool512 = icmp ne %struct.sv* %205, null
  %cmp514 = icmp ne %struct.sv* %205, @PL_sv_undef
  %or.cond = and i1 %tobool512, %cmp514
  br i1 %or.cond, label %if.then516, label %if.end534

if.then516:                                       ; preds = %if.then511
  %sv_flags517 = getelementptr inbounds i8* %198, i64 12
  %206 = bitcast i8* %sv_flags517 to i32*
  %207 = load i32* %206, align 4, !tbaa !4
  %and518 = and i32 %207, 32768
  %tobool519 = icmp eq i32 %and518, 0
  br i1 %tobool519, label %restore_sv, label %cond.true520

cond.true520:                                     ; preds = %if.then516
  %208 = bitcast i8* %198 to %struct.sv*
  %call521 = tail call %struct.magic* @Perl_mg_find(%struct.sv* %208, i32 80) #5
  %tobool522 = icmp eq %struct.magic* %call521, null
  br i1 %tobool522, label %restore_sv, label %land.rhs526

land.rhs526:                                      ; preds = %cond.true520
  store %struct.sv* %205, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_refcnt527 = getelementptr inbounds %struct.sv* %205, i64 0, i32 1
  %209 = load i32* %sv_refcnt527, align 4, !tbaa !4
  %inc528 = add i32 %209, 1
  store i32 %inc528, i32* %sv_refcnt527, align 4, !tbaa !4
  br label %restore_sv

if.end534:                                        ; preds = %if.end508, %if.then511
  %210 = bitcast i8* %198 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %210) #5
  tail call void @Perl_sv_free(%struct.sv* %196) #5
  br label %while.cond.backedge

sw.bb535:                                         ; preds = %while.body
  %dec536 = add nsw i32 %1, -2
  %idxprom537 = sext i32 %dec536 to i64
  %any_ptr539 = getelementptr inbounds %union.any* %2, i64 %idxprom537, i32 0
  %211 = load i8** %any_ptr539, align 8, !tbaa !0
  %212 = bitcast i8* %211 to %struct.sv*
  %dec540 = add nsw i32 %1, -3
  %idxprom541 = sext i32 %dec540 to i64
  %any_ptr543 = getelementptr inbounds %union.any* %2, i64 %idxprom541, i32 0
  %213 = load i8** %any_ptr543, align 8, !tbaa !0
  %214 = bitcast i8* %213 to %struct.sv*
  %dec544 = add nsw i32 %1, -4
  store i32 %dec544, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom545 = sext i32 %dec544 to i64
  %any_ptr547 = getelementptr inbounds %union.any* %2, i64 %idxprom545, i32 0
  %215 = load i8** %any_ptr547, align 8, !tbaa !0
  %216 = bitcast i8* %215 to %struct.hv*
  %call548 = tail call %struct.he* @Perl_hv_fetch_ent(%struct.hv* %216, %struct.sv* %214, i32 1, i32 0) #5
  %tobool549 = icmp eq %struct.he* %call548, null
  br i1 %tobool549, label %if.end574, label %if.then550

if.then550:                                       ; preds = %sw.bb535
  %hent_val = getelementptr inbounds %struct.he* %call548, i64 0, i32 2
  %217 = load %struct.sv** %hent_val, align 8, !tbaa !0
  %tobool551 = icmp ne %struct.sv* %217, null
  %cmp553 = icmp ne %struct.sv* %217, @PL_sv_undef
  %or.cond662 = and i1 %tobool551, %cmp553
  br i1 %or.cond662, label %if.then555, label %if.end574

if.then555:                                       ; preds = %if.then550
  %218 = bitcast %struct.sv** %hent_val to i8*
  %sv_flags557 = getelementptr inbounds i8* %215, i64 12
  %219 = bitcast i8* %sv_flags557 to i32*
  %220 = load i32* %219, align 4, !tbaa !4
  %and558 = and i32 %220, 32768
  %tobool559 = icmp eq i32 %and558, 0
  br i1 %tobool559, label %if.end572, label %cond.true560

cond.true560:                                     ; preds = %if.then555
  %221 = bitcast i8* %215 to %struct.sv*
  %call561 = tail call %struct.magic* @Perl_mg_find(%struct.sv* %221, i32 80) #5
  %tobool562 = icmp eq %struct.magic* %call561, null
  br i1 %tobool562, label %if.end572, label %if.then564

if.then564:                                       ; preds = %cond.true560
  %222 = load %struct.sv** %hent_val, align 8, !tbaa !0
  store %struct.sv* %222, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool565 = icmp eq %struct.sv* %222, null
  br i1 %tobool565, label %if.end572, label %land.rhs566

land.rhs566:                                      ; preds = %if.then564
  %sv_refcnt567 = getelementptr inbounds %struct.sv* %222, i64 0, i32 1
  %223 = load i32* %sv_refcnt567, align 4, !tbaa !4
  %inc568 = add i32 %223, 1
  store i32 %inc568, i32* %sv_refcnt567, align 4, !tbaa !4
  br label %if.end572

if.end572:                                        ; preds = %land.rhs566, %if.then564, %cond.true560, %if.then555
  tail call void @Perl_sv_free(%struct.sv* %214) #5
  %224 = bitcast i8* %215 to %struct.av*
  br label %restore_sv

if.end574:                                        ; preds = %sw.bb535, %if.then550
  %225 = bitcast i8* %215 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %225) #5
  tail call void @Perl_sv_free(%struct.sv* %214) #5
  tail call void @Perl_sv_free(%struct.sv* %212) #5
  br label %while.cond.backedge

sw.bb575:                                         ; preds = %while.body
  %dec576 = add nsw i32 %1, -2
  store i32 %dec576, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom577 = sext i32 %dec576 to i64
  %any_ptr579 = getelementptr inbounds %union.any* %2, i64 %idxprom577, i32 0
  %226 = load i8** %any_ptr579, align 8, !tbaa !0
  %227 = bitcast i8* %226 to %struct.op*
  store %struct.op* %227, %struct.op** @PL_op, align 8, !tbaa !0
  br label %while.cond.backedge

sw.bb580:                                         ; preds = %while.body
  %228 = load i32* @PL_hints, align 4, !tbaa !4
  %and581 = and i32 %228, 131072
  %tobool582 = icmp eq i32 %and581, 0
  br i1 %tobool582, label %if.end595, label %land.lhs.true583

land.lhs.true583:                                 ; preds = %sw.bb580
  %229 = load %struct.gv** @PL_hintgv, align 8, !tbaa !0
  %sv_any584 = getelementptr inbounds %struct.gv* %229, i64 0, i32 0
  %230 = load %struct.xpvgv** %sv_any584, align 8, !tbaa !0
  %xgv_gp585 = getelementptr inbounds %struct.xpvgv* %230, i64 0, i32 7
  %231 = load %struct.gp** %xgv_gp585, align 8, !tbaa !0
  %gp_hv586 = getelementptr inbounds %struct.gp* %231, i64 0, i32 5
  %232 = load %struct.hv** %gp_hv586, align 8, !tbaa !0
  %tobool587 = icmp eq %struct.hv* %232, null
  br i1 %tobool587, label %if.end595, label %if.then588

if.then588:                                       ; preds = %land.lhs.true583
  %233 = bitcast %struct.hv* %232 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %233) #5
  %234 = load %struct.gv** @PL_hintgv, align 8, !tbaa !0
  %sv_any592 = getelementptr inbounds %struct.gv* %234, i64 0, i32 0
  %235 = load %struct.xpvgv** %sv_any592, align 8, !tbaa !0
  %xgv_gp593 = getelementptr inbounds %struct.xpvgv* %235, i64 0, i32 7
  %236 = load %struct.gp** %xgv_gp593, align 8, !tbaa !0
  %gp_hv594 = getelementptr inbounds %struct.gp* %236, i64 0, i32 5
  store %struct.hv* null, %struct.hv** %gp_hv594, align 8, !tbaa !0
  %.pre844 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %.pre845 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end595

if.end595:                                        ; preds = %land.lhs.true583, %sw.bb580, %if.then588
  %237 = phi %union.any* [ %2, %land.lhs.true583 ], [ %2, %sw.bb580 ], [ %.pre845, %if.then588 ]
  %238 = phi i32 [ %dec, %land.lhs.true583 ], [ %dec, %sw.bb580 ], [ %.pre844, %if.then588 ]
  %dec596 = add nsw i32 %238, -1
  store i32 %dec596, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom597 = sext i32 %dec596 to i64
  %arrayidx598 = getelementptr inbounds %union.any* %237, i64 %idxprom597
  %any_i32599 = bitcast %union.any* %arrayidx598 to i32*
  %239 = load i32* %any_i32599, align 4, !tbaa !4
  store i32 %239, i32* @PL_hints, align 4, !tbaa !4
  %and600 = and i32 %239, 131072
  %tobool601 = icmp eq i32 %and600, 0
  br i1 %tobool601, label %while.cond.backedge, label %if.then602

if.then602:                                       ; preds = %if.end595
  %240 = load %struct.gv** @PL_hintgv, align 8, !tbaa !0
  %sv_any603 = getelementptr inbounds %struct.gv* %240, i64 0, i32 0
  %241 = load %struct.xpvgv** %sv_any603, align 8, !tbaa !0
  %xgv_gp604 = getelementptr inbounds %struct.xpvgv* %241, i64 0, i32 7
  %242 = load %struct.gp** %xgv_gp604, align 8, !tbaa !0
  %gp_hv605 = getelementptr inbounds %struct.gp* %242, i64 0, i32 5
  %243 = load %struct.hv** %gp_hv605, align 8, !tbaa !0
  %244 = bitcast %struct.hv* %243 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %244) #5
  %245 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %dec606 = add nsw i32 %245, -1
  store i32 %dec606, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom607 = sext i32 %dec606 to i64
  %246 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr609 = getelementptr inbounds %union.any* %246, i64 %idxprom607, i32 0
  %247 = load i8** %any_ptr609, align 8, !tbaa !0
  %248 = bitcast i8* %247 to %struct.hv*
  %249 = load %struct.gv** @PL_hintgv, align 8, !tbaa !0
  %sv_any610 = getelementptr inbounds %struct.gv* %249, i64 0, i32 0
  %250 = load %struct.xpvgv** %sv_any610, align 8, !tbaa !0
  %xgv_gp611 = getelementptr inbounds %struct.xpvgv* %250, i64 0, i32 7
  %251 = load %struct.gp** %xgv_gp611, align 8, !tbaa !0
  %gp_hv612 = getelementptr inbounds %struct.gp* %251, i64 0, i32 5
  store %struct.hv* %248, %struct.hv** %gp_hv612, align 8, !tbaa !0
  br label %while.cond.backedge

sw.bb614:                                         ; preds = %while.body
  %dec615 = add nsw i32 %1, -2
  store i32 %dec615, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom616 = sext i32 %dec615 to i64
  %any_ptr618 = getelementptr inbounds %union.any* %2, i64 %idxprom616, i32 0
  %252 = load i8** %any_ptr618, align 8, !tbaa !0
  %253 = bitcast i8* %252 to %struct.av*
  store %struct.av* %253, %struct.av** @PL_comppad, align 8, !tbaa !0
  %tobool619 = icmp eq i8* %252, null
  br i1 %tobool619, label %if.else622, label %if.then620

if.then620:                                       ; preds = %sw.bb614
  %sv_any621 = bitcast i8* %252 to %struct.xpvav**
  %254 = load %struct.xpvav** %sv_any621, align 8, !tbaa !0
  %xav_array = getelementptr inbounds %struct.xpvav* %254, i64 0, i32 0
  %255 = load i8** %xav_array, align 8, !tbaa !0
  %256 = bitcast i8* %255 to %struct.sv**
  store %struct.sv** %256, %struct.sv*** @PL_curpad, align 8, !tbaa !0
  br label %while.cond.backedge

if.else622:                                       ; preds = %sw.bb614
  store %struct.sv** null, %struct.sv*** @PL_curpad, align 8, !tbaa !0
  br label %while.cond.backedge

sw.bb624:                                         ; preds = %while.body
  %dec625 = add nsw i32 %1, -2
  %idxprom626 = sext i32 %dec625 to i64
  %arrayidx627 = getelementptr inbounds %union.any* %2, i64 %idxprom626
  %any_long628 = bitcast %union.any* %arrayidx627 to i64*
  %257 = load i64* %any_long628, align 8, !tbaa !3
  %dec629 = add nsw i32 %1, -3
  store i32 %dec629, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom630 = sext i32 %dec629 to i64
  %any_ptr632 = getelementptr inbounds %union.any* %2, i64 %idxprom630, i32 0
  %258 = load i8** %any_ptr632, align 8, !tbaa !0
  %tobool633 = icmp eq i8* %258, null
  br i1 %tobool633, label %while.cond.backedge, label %if.then634

if.then634:                                       ; preds = %sw.bb624
  %dec635 = add nsw i32 %1, -4
  store i32 %dec635, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom636 = sext i32 %dec635 to i64
  %any_ptr638 = getelementptr inbounds %union.any* %2, i64 %idxprom636, i32 0
  %259 = load i8** %any_ptr638, align 8, !tbaa !0
  %260 = bitcast i8* %259 to %struct.sv*
  %sv_any639 = bitcast i8* %258 to %struct.xpvav**
  %261 = load %struct.xpvav** %sv_any639, align 8, !tbaa !0
  %xav_array640 = getelementptr inbounds %struct.xpvav* %261, i64 0, i32 0
  %262 = load i8** %xav_array640, align 8, !tbaa !0
  %263 = bitcast i8* %262 to %struct.sv**
  %arrayidx641 = getelementptr inbounds %struct.sv** %263, i64 %257
  store %struct.sv* %260, %struct.sv** %arrayidx641, align 8, !tbaa !0
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %sw.default, %if.end416, %if.end197, %if.end153, %if.end121, %if.then634, %if.then620, %if.else622, %if.then602, %sw.epilog440, %sw.bb420, %sw.bb419, %if.end210, %if.end166, %if.then123, %if.then42, %if.then30, %sw.default660, %sw.bb643, %sw.bb575, %if.end574, %if.end534, %sw.bb479, %sw.bb474, %sw.bb466, %sw.bb458, %sw.bb444, %sw.bb377, %sw.bb372, %sw.bb366, %sw.bb361, %if.end360, %sw.bb310, %sw.bb301, %sw.bb292, %sw.bb283, %sw.bb274, %sw.bb266, %sw.bb256, %sw.bb246, %sw.bb237, %sw.bb229, %sw.bb221, %sw.bb212, %sw.bb44, %if.end10, %sw.bb624, %if.end595, %sw.bb32, %sw.bb20, %land.rhs
  %264 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %cmp1 = icmp sgt i32 %264, %base
  br i1 %cmp1, label %while.body, label %while.end

sw.bb643:                                         ; preds = %while.body
  %265 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %dec644 = add nsw i32 %1, -2
  %idxprom645 = sext i32 %dec644 to i64
  %any_ptr647 = getelementptr inbounds %union.any* %2, i64 %idxprom645, i32 0
  %266 = load i8** %any_ptr647, align 8, !tbaa !0
  %dec648 = add nsw i32 %1, -3
  store i32 %dec648, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom649 = sext i32 %dec648 to i64
  %any_ptr651 = getelementptr inbounds %union.any* %2, i64 %idxprom649, i32 0
  %267 = load i8** %any_ptr651, align 8, !tbaa !0
  %268 = bitcast i8* %267 to %struct.av*
  %269 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %265 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %269 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %sv_any652 = bitcast i8* %266 to %struct.xpvav**
  %270 = load %struct.xpvav** %sv_any652, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %270, i64 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill, align 8, !tbaa !3
  %sv_any653 = bitcast i8* %267 to %struct.xpvav**
  %271 = load %struct.xpvav** %sv_any653, align 8, !tbaa !0
  %xav_array654 = getelementptr inbounds %struct.xpvav* %271, i64 0, i32 0
  %272 = load i8** %xav_array654, align 8, !tbaa !0
  %273 = bitcast i8* %272 to %struct.sv**
  store %struct.sv** %273, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %274 = load %struct.xpvav** %sv_any653, align 8, !tbaa !0
  %xav_max = getelementptr inbounds %struct.xpvav* %274, i64 0, i32 2
  %275 = load i64* %xav_max, align 8, !tbaa !3
  %add.ptr656 = getelementptr inbounds %struct.sv** %273, i64 %275
  store %struct.sv** %add.ptr656, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %276 = load %struct.xpvav** %sv_any653, align 8, !tbaa !0
  %xav_fill658 = getelementptr inbounds %struct.xpvav* %276, i64 0, i32 1
  %277 = load i64* %xav_fill658, align 8, !tbaa !3
  %add.ptr659 = getelementptr inbounds %struct.sv** %273, i64 %277
  store %struct.sv** %add.ptr659, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  store %struct.av* %268, %struct.av** @PL_curstack, align 8, !tbaa !0
  %278 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_stack = getelementptr inbounds %struct.stackinfo* %278, i64 0, i32 0
  store %struct.av* %268, %struct.av** %si_stack, align 8, !tbaa !0
  br label %while.cond.backedge

sw.default660:                                    ; preds = %while.body
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([33 x i8]* @.str4, i64 0, i64 0)) #5
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge, %while.cond.preheader
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_markstack_grow() #0 {
entry:
  %0 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %1 = load i32** @PL_markstack, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint i32* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div7 = lshr exact i64 %sub.ptr.sub, 2
  %conv = trunc i64 %sub.ptr.div7 to i32
  %mul = mul nsw i32 %conv, 3
  %div = sdiv i32 %mul, 2
  %2 = bitcast i32* %1 to i8*
  %conv1 = sext i32 %div to i64
  %mul2 = shl nsw i64 %conv1, 2
  %call = tail call i8* @Perl_safesysrealloc(i8* %2, i64 %mul2) #5
  %3 = bitcast i8* %call to i32*
  store i32* %3, i32** @PL_markstack, align 8, !tbaa !0
  %sext = shl i64 %sub.ptr.sub, 30
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr inbounds i32* %3, i64 %idx.ext
  store i32* %add.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %add.ptr4 = getelementptr inbounds i32* %3, i64 %conv1
  store i32* %add.ptr4, i32** @PL_markstack_max, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_savestack_grow() #0 {
entry:
  %0 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %mul = mul nsw i32 %0, 3
  %div = sdiv i32 %mul, 2
  %add = add nsw i32 %div, 4
  store i32 %add, i32* @PL_savestack_max, align 4, !tbaa !4
  %1 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %2 = bitcast %union.any* %1 to i8*
  %conv = sext i32 %add to i64
  %mul1 = shl nsw i64 %conv, 3
  %call = tail call i8* @Perl_safesysrealloc(i8* %2, i64 %mul1) #5
  %3 = bitcast i8* %call to %union.any*
  store %union.any* %3, %union.any** @PL_savestack, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_savestack_grow_cnt(i32 %need) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, %need
  store i32 %add, i32* @PL_savestack_max, align 4, !tbaa !4
  %1 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %2 = bitcast %union.any* %1 to i8*
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call i8* @Perl_safesysrealloc(i8* %2, i64 %mul) #5
  %3 = bitcast i8* %call to %union.any*
  store %union.any* %3, %union.any** @PL_savestack, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_tmps_grow(i32 %n) #0 {
entry:
  %cmp = icmp slt i32 %n, 128
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32* @PL_tmps_max, align 4, !tbaa !4
  %cmp1 = icmp slt i32 %0, 512
  %cond = select i1 %cmp1, i32 128, i32 512
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %n.addr.0 = phi i32 [ %cond, %if.then ], [ %n, %entry ]
  %1 = load i32* @PL_tmps_ix, align 4, !tbaa !4
  %add = add i32 %n.addr.0, 1
  %add2 = add i32 %add, %1
  store i32 %add2, i32* @PL_tmps_max, align 4, !tbaa !4
  %2 = load %struct.sv*** @PL_tmps_stack, align 8, !tbaa !0
  %3 = bitcast %struct.sv** %2 to i8*
  %conv = sext i32 %add2 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul) #5
  %4 = bitcast i8* %call to %struct.sv**
  store %struct.sv** %4, %struct.sv*** @PL_tmps_stack, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_free_tmps() #0 {
entry:
  %0 = load i32* @PL_tmps_floor, align 4, !tbaa !4
  %1 = load i32* @PL_tmps_ix, align 4, !tbaa !4
  %cmp7 = icmp sgt i32 %1, %0
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.cond.backedge
  %2 = phi i32 [ %6, %while.cond.backedge ], [ %1, %entry ]
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.sv*** @PL_tmps_stack, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %3, i64 %idxprom
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* @PL_tmps_ix, align 4, !tbaa !4
  store %struct.sv* null, %struct.sv** %arrayidx, align 8, !tbaa !0
  %tobool = icmp ne %struct.sv* %4, null
  %cmp3 = icmp ne %struct.sv* %4, @PL_sv_undef
  %or.cond = and i1 %tobool, %cmp3
  br i1 %or.cond, label %if.then, label %while.cond.backedge

if.then:                                          ; preds = %while.body
  %sv_flags = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %5 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %5, -2049
  store i32 %and, i32* %sv_flags, align 4, !tbaa !4
  tail call void @Perl_sv_free(%struct.sv* %4) #5
  %.pre = load i32* @PL_tmps_ix, align 4, !tbaa !4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then, %while.body
  %6 = phi i32 [ %.pre, %if.then ], [ %dec, %while.body ]
  %cmp = icmp sgt i32 %6, %0
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.cond.backedge, %entry
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_free(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @Perl_save_scalar(%struct.gv* %gv) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.gv* %gv, i64 0, i32 0
  %0 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %0, i64 0, i32 7
  %1 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %1, i64 0, i32 0
  %2 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %2, 3
  %3 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %3
  br i1 %cmp, label %if.end, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  %.pre20 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %land.end

if.end:                                           ; preds = %entry
  %mul.i = mul nsw i32 %3, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %4 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %5 = bitcast %union.any* %4 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %5, i64 %mul1.i) #5
  %6 = bitcast i8* %call.i to %union.any*
  store %union.any* %6, %union.any** @PL_savestack, align 8, !tbaa !0
  br label %land.end

land.end:                                         ; preds = %entry.land.end_crit_edge, %if.end
  %7 = phi %union.any* [ %.pre20, %entry.land.end_crit_edge ], [ %6, %if.end ]
  %storemerge = bitcast %struct.gv* %gv to %struct.sv*
  store %struct.sv* %storemerge, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %8 = getelementptr inbounds %struct.gv* %gv, i64 0, i32 1
  %9 = load i32* %8, align 4, !tbaa !4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %8, align 4, !tbaa !4
  %10 = bitcast %struct.gv* %gv to i8*
  %11 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %inc2 = add nsw i32 %11, 1
  store i32 %inc2, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom = sext i32 %11 to i64
  %any_ptr = getelementptr inbounds %union.any* %7, i64 %idxprom, i32 0
  store i8* %10, i8** %any_ptr, align 8, !tbaa !0
  %12 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  store %struct.sv* %12, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool3 = icmp eq %struct.sv* %12, null
  br i1 %tobool3, label %land.end8, label %land.rhs4

land.rhs4:                                        ; preds = %land.end
  %sv_refcnt5 = getelementptr inbounds %struct.sv* %12, i64 0, i32 1
  %13 = load i32* %sv_refcnt5, align 4, !tbaa !4
  %inc6 = add i32 %13, 1
  store i32 %inc6, i32* %sv_refcnt5, align 4, !tbaa !4
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %land.end8

land.end8:                                        ; preds = %land.end, %land.rhs4
  %14 = phi i32 [ %inc2, %land.end ], [ %.pre, %land.rhs4 ]
  %15 = bitcast %struct.sv* %12 to i8*
  %inc10 = add nsw i32 %14, 1
  %idxprom11 = sext i32 %14 to i64
  %16 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr13 = getelementptr inbounds %union.any* %16, i64 %idxprom11, i32 0
  store i8* %15, i8** %any_ptr13, align 8, !tbaa !0
  %inc14 = add nsw i32 %14, 2
  store i32 %inc14, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom15 = sext i32 %inc10 to i64
  %17 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds %union.any* %17, i64 %idxprom15
  %any_i32 = bitcast %union.any* %arrayidx16 to i32*
  store i32 1, i32* %any_i32, align 4, !tbaa !4
  %call = tail call fastcc %struct.sv* @S_save_scalar_at(%struct.sv** %gp_sv) #6
  ret %struct.sv* %call
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.sv* @S_save_scalar_at(%struct.sv** nocapture %sptr) #0 {
entry:
  %0 = load %struct.sv** %sptr, align 8, !tbaa !0
  %call = tail call %struct.sv* @Perl_newSV(i64 0) #5
  store %struct.sv* %call, %struct.sv** %sptr, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %0, i64 0, i32 2
  %1 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %1, 255
  %cmp = icmp ugt i32 %and, 6
  br i1 %cmp, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %0, i64 0, i32 0
  %2 = load i8** %sv_any, align 8, !tbaa !0
  %xmg_magic = getelementptr inbounds i8* %2, i64 40
  %3 = bitcast i8* %xmg_magic to %struct.magic**
  %4 = load %struct.magic** %3, align 8, !tbaa !0
  %tobool = icmp eq %struct.magic* %4, null
  %cmp4 = icmp eq i32 %and, 13
  %or.cond = or i1 %tobool, %cmp4
  br i1 %or.cond, label %if.end40, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call7 = tail call signext i8 @Perl_sv_upgrade(%struct.sv* %call, i32 %and) #5
  %5 = load i32* %sv_flags, align 4, !tbaa !4
  %and9 = and i32 %5, 8192
  %tobool10 = icmp eq i32 %and9, 0
  br i1 %tobool10, label %if.end25, label %if.then11

if.then11:                                        ; preds = %if.then
  %6 = load i8* @PL_tainted, align 1, !tbaa !1
  %call12 = tail call i32 @Perl_mg_get(%struct.sv* %0) #5
  %7 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool13 = icmp eq i8 %7, 0
  %8 = load i8* @PL_tainted, align 1, !tbaa !1
  %tobool16 = icmp eq i8 %8, 0
  %or.cond59 = or i1 %tobool13, %tobool16
  br i1 %or.cond59, label %if.end, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %if.then11
  %call18 = tail call %struct.magic* @Perl_mg_find(%struct.sv* %0, i32 116) #5
  %tobool19 = icmp eq %struct.magic* %call18, null
  br i1 %tobool19, label %if.end, label %if.then20

if.then20:                                        ; preds = %land.lhs.true17
  %mg_obj = getelementptr inbounds %struct.magic* %call18, i64 0, i32 5
  tail call void @Perl_save_sptr(%struct.sv** %mg_obj) #6
  store %struct.sv* %0, %struct.sv** %mg_obj, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true17, %if.then11, %if.then20
  %9 = load i32* %sv_flags, align 4, !tbaa !4
  %and23 = lshr i32 %9, 8
  %shr = and i32 %and23, 393216
  %or = or i32 %shr, %9
  store i32 %or, i32* %sv_flags, align 4, !tbaa !4
  store i8 %6, i8* @PL_tainted, align 1, !tbaa !1
  %.pre = load i32* %sv_flags, align 4, !tbaa !4
  br label %if.end25

if.end25:                                         ; preds = %if.then, %if.end
  %10 = phi i32 [ %5, %if.then ], [ %.pre, %if.end ]
  %11 = load i8** %sv_any, align 8, !tbaa !0
  %xmg_magic27 = getelementptr inbounds i8* %11, i64 40
  %12 = bitcast i8* %xmg_magic27 to %struct.magic**
  %13 = load %struct.magic** %12, align 8, !tbaa !0
  %sv_any28 = getelementptr inbounds %struct.sv* %call, i64 0, i32 0
  %14 = load i8** %sv_any28, align 8, !tbaa !0
  %xmg_magic29 = getelementptr inbounds i8* %14, i64 40
  %15 = bitcast i8* %xmg_magic29 to %struct.magic**
  store %struct.magic* %13, %struct.magic** %15, align 8, !tbaa !0
  %and31 = and i32 %10, 57344
  %sv_flags32 = getelementptr inbounds %struct.sv* %call, i64 0, i32 2
  %16 = load i32* %sv_flags32, align 4, !tbaa !4
  %or33 = or i32 %16, %and31
  store i32 %or33, i32* %sv_flags32, align 4, !tbaa !4
  store i32 1, i32* @PL_localizing, align 4, !tbaa !4
  %17 = load i32* %sv_flags32, align 4, !tbaa !4
  %and35 = and i32 %17, 16384
  %tobool36 = icmp eq i32 %and35, 0
  br i1 %tobool36, label %if.end39, label %if.then37

if.then37:                                        ; preds = %if.end25
  %call38 = tail call i32 @Perl_mg_set(%struct.sv* %call) #5
  br label %if.end39

if.end39:                                         ; preds = %if.end25, %if.then37
  store i32 0, i32* @PL_localizing, align 4, !tbaa !4
  br label %if.end40

if.end40:                                         ; preds = %land.lhs.true, %if.end39, %entry
  ret %struct.sv* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @Perl_save_svref(%struct.sv** %sptr) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 3
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre13 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre13, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %7 = bitcast %struct.sv** %sptr to i8*
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom = sext i32 %6 to i64
  %any_ptr = getelementptr inbounds %union.any* %5, i64 %idxprom, i32 0
  store i8* %7, i8** %any_ptr, align 8, !tbaa !0
  %8 = load %struct.sv** %sptr, align 8, !tbaa !0
  store %struct.sv* %8, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %8, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %sv_refcnt = getelementptr inbounds %struct.sv* %8, i64 0, i32 1
  %9 = load i32* %sv_refcnt, align 4, !tbaa !4
  %inc1 = add i32 %9, 1
  store i32 %inc1, i32* %sv_refcnt, align 4, !tbaa !4
  %.pre12 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %land.end

land.end:                                         ; preds = %if.end, %land.rhs
  %10 = phi i32 [ %inc, %if.end ], [ %.pre12, %land.rhs ]
  %11 = bitcast %struct.sv* %8 to i8*
  %inc3 = add nsw i32 %10, 1
  %idxprom4 = sext i32 %10 to i64
  %12 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr6 = getelementptr inbounds %union.any* %12, i64 %idxprom4, i32 0
  store i8* %11, i8** %any_ptr6, align 8, !tbaa !0
  %inc7 = add nsw i32 %10, 2
  store i32 %inc7, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom8 = sext i32 %inc3 to i64
  %13 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds %union.any* %13, i64 %idxprom8
  %any_i32 = bitcast %union.any* %arrayidx9 to i32*
  store i32 13, i32* %any_i32, align 4, !tbaa !4
  %call = tail call fastcc %struct.sv* @S_save_scalar_at(%struct.sv** %sptr) #6
  ret %struct.sv* %call
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_generic_svref(%struct.sv** %sptr) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 3
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre12 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre12, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %7 = bitcast %struct.sv** %sptr to i8*
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom = sext i32 %6 to i64
  %any_ptr = getelementptr inbounds %union.any* %5, i64 %idxprom, i32 0
  store i8* %7, i8** %any_ptr, align 8, !tbaa !0
  %8 = load %struct.sv** %sptr, align 8, !tbaa !0
  store %struct.sv* %8, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %8, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %sv_refcnt = getelementptr inbounds %struct.sv* %8, i64 0, i32 1
  %9 = load i32* %sv_refcnt, align 4, !tbaa !4
  %inc1 = add i32 %9, 1
  store i32 %inc1, i32* %sv_refcnt, align 4, !tbaa !4
  %.pre11 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %land.end

land.end:                                         ; preds = %if.end, %land.rhs
  %10 = phi i32 [ %inc, %if.end ], [ %.pre11, %land.rhs ]
  %11 = bitcast %struct.sv* %8 to i8*
  %inc3 = add nsw i32 %10, 1
  %idxprom4 = sext i32 %10 to i64
  %12 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr6 = getelementptr inbounds %union.any* %12, i64 %idxprom4, i32 0
  store i8* %11, i8** %any_ptr6, align 8, !tbaa !0
  %inc7 = add nsw i32 %10, 2
  store i32 %inc7, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom8 = sext i32 %inc3 to i64
  %13 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds %union.any* %13, i64 %idxprom8
  %any_i32 = bitcast %union.any* %arrayidx9 to i32*
  store i32 29, i32* %any_i32, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_generic_pvref(i8** %str) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 3
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre9 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre9, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %7 = bitcast i8** %str to i8*
  %inc = add nsw i32 %6, 1
  %idxprom = sext i32 %6 to i64
  %any_ptr = getelementptr inbounds %union.any* %5, i64 %idxprom, i32 0
  store i8* %7, i8** %any_ptr, align 8, !tbaa !0
  %8 = load i8** %str, align 8, !tbaa !0
  %inc1 = add nsw i32 %6, 2
  %idxprom2 = sext i32 %inc to i64
  %9 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr4 = getelementptr inbounds %union.any* %9, i64 %idxprom2, i32 0
  store i8* %8, i8** %any_ptr4, align 8, !tbaa !0
  %inc5 = add nsw i32 %6, 3
  store i32 %inc5, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom6 = sext i32 %inc1 to i64
  %10 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx7 = getelementptr inbounds %union.any* %10, i64 %idxprom6
  %any_i32 = bitcast %union.any* %arrayidx7 to i32*
  store i32 34, i32* %any_i32, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_shared_pvref(i8** %str) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 3
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre9 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre9, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %7 = bitcast i8** %str to i8*
  %inc = add nsw i32 %6, 1
  %idxprom = sext i32 %6 to i64
  %any_ptr = getelementptr inbounds %union.any* %5, i64 %idxprom, i32 0
  store i8* %7, i8** %any_ptr, align 8, !tbaa !0
  %8 = load i8** %str, align 8, !tbaa !0
  %inc1 = add nsw i32 %6, 2
  %idxprom2 = sext i32 %inc to i64
  %9 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr4 = getelementptr inbounds %union.any* %9, i64 %idxprom2, i32 0
  store i8* %8, i8** %any_ptr4, align 8, !tbaa !0
  %inc5 = add nsw i32 %6, 3
  store i32 %inc5, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom6 = sext i32 %inc1 to i64
  %10 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx7 = getelementptr inbounds %union.any* %10, i64 %idxprom6
  %any_i32 = bitcast %union.any* %arrayidx7 to i32*
  store i32 37, i32* %any_i32, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_gp(%struct.gv* %gv, i32 %empty) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 6
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre149 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  store i32 %add, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add to i64
  %mul.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre149, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %sv_any = getelementptr inbounds %struct.gv* %gv, i64 0, i32 0
  %7 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %8 = getelementptr inbounds %struct.xpvgv* %7, i64 0, i32 2
  %9 = load i64* %8, align 8, !tbaa !3
  %inc = add nsw i32 %6, 1
  %idxprom = sext i32 %6 to i64
  %10 = getelementptr inbounds %union.any* %5, i64 %idxprom, i32 0
  %.c = inttoptr i64 %9 to i8*
  store i8* %.c, i8** %10, align 8, !tbaa !3
  store i64 0, i64* %8, align 8, !tbaa !3
  %11 = getelementptr inbounds %struct.xpvgv* %7, i64 0, i32 1
  %12 = load i64* %11, align 8, !tbaa !3
  %inc4 = add nsw i32 %6, 2
  %idxprom5 = sext i32 %inc to i64
  %13 = getelementptr inbounds %union.any* %5, i64 %idxprom5, i32 0
  %.c146 = inttoptr i64 %12 to i8*
  store i8* %.c146, i8** %13, align 8, !tbaa !3
  %xpv_pv = getelementptr inbounds %struct.xpvgv* %7, i64 0, i32 0
  %14 = load i8** %xpv_pv, align 8, !tbaa !0
  %inc9 = add nsw i32 %6, 3
  store i32 %inc9, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom10 = sext i32 %inc4 to i64
  %any_ptr = getelementptr inbounds %union.any* %5, i64 %idxprom10, i32 0
  store i8* %14, i8** %any_ptr, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.gv* %gv, i64 0, i32 2
  %15 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %15, -67371009
  store i32 %and, i32* %sv_flags, align 4, !tbaa !4
  %16 = bitcast %struct.gv* %gv to %struct.sv*
  store %struct.sv* %16, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool = icmp eq %struct.gv* %gv, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %17 = getelementptr inbounds %struct.gv* %gv, i64 0, i32 1
  %18 = load i32* %17, align 4, !tbaa !4
  %inc12 = add i32 %18, 1
  store i32 %inc12, i32* %17, align 4, !tbaa !4
  br label %land.end

land.end:                                         ; preds = %if.end, %land.rhs
  %19 = bitcast %struct.gv* %gv to i8*
  %20 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %inc14 = add nsw i32 %20, 1
  %idxprom15 = sext i32 %20 to i64
  %21 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr17 = getelementptr inbounds %union.any* %21, i64 %idxprom15, i32 0
  store i8* %19, i8** %any_ptr17, align 8, !tbaa !0
  %22 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %22, i64 0, i32 7
  %23 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %24 = bitcast %struct.gp* %23 to i8*
  %inc19 = add nsw i32 %20, 2
  %idxprom20 = sext i32 %inc14 to i64
  %25 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr22 = getelementptr inbounds %union.any* %25, i64 %idxprom20, i32 0
  store i8* %24, i8** %any_ptr22, align 8, !tbaa !0
  %inc23 = add nsw i32 %20, 3
  store i32 %inc23, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom24 = sext i32 %inc19 to i64
  %26 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx25 = getelementptr inbounds %union.any* %26, i64 %idxprom24
  %any_i32 = bitcast %union.any* %arrayidx25 to i32*
  store i32 14, i32* %any_i32, align 4, !tbaa !4
  %tobool26 = icmp eq i32 %empty, 0
  br i1 %tobool26, label %if.else, label %if.then27

if.then27:                                        ; preds = %land.end
  %call = tail call i8* @Perl_safesysmalloc(i64 88) #5
  %27 = bitcast i8* %call to %struct.gp*
  tail call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 88, i32 1, i1 false)
  %28 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp29 = getelementptr inbounds %struct.xpvgv* %28, i64 0, i32 7
  %29 = load %struct.gp** %xgv_gp29, align 8, !tbaa !0
  %gp_cvgen = getelementptr inbounds %struct.gp* %29, i64 0, i32 8
  %30 = load i32* %gp_cvgen, align 4, !tbaa !4
  %tobool30 = icmp eq i32 %30, 0
  br i1 %tobool30, label %cond.false, label %if.end36

cond.false:                                       ; preds = %if.then27
  %gp_cv = getelementptr inbounds %struct.gp* %29, i64 0, i32 7
  %31 = load %struct.cv** %gp_cv, align 8, !tbaa !0
  %tobool33 = icmp eq %struct.cv* %31, null
  br i1 %tobool33, label %if.end36, label %if.then34

if.then34:                                        ; preds = %cond.false
  %32 = load i32* @PL_sub_generation, align 4, !tbaa !4
  %inc35 = add i32 %32, 1
  store i32 %inc35, i32* @PL_sub_generation, align 4, !tbaa !4
  br label %if.end36

if.end36:                                         ; preds = %cond.false, %if.then27, %if.then34
  %gp_io = getelementptr inbounds %struct.gp* %29, i64 0, i32 2
  %33 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool39 = icmp eq %struct.io* %33, null
  br i1 %tobool39, label %if.end54, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end36
  %sv_any43 = getelementptr inbounds %struct.io* %33, i64 0, i32 0
  %34 = load %struct.xpvio** %sv_any43, align 8, !tbaa !0
  %xio_flags = getelementptr inbounds %struct.xpvio* %34, i64 0, i32 22
  %35 = load i8* %xio_flags, align 1, !tbaa !1
  %and44 = and i8 %35, 1
  %tobool45 = icmp eq i8 %and44, 0
  br i1 %tobool45, label %if.end54, label %if.then46

if.then46:                                        ; preds = %land.lhs.true
  %call47 = tail call %struct.io* @Perl_newIO() #5
  %gp_io48 = getelementptr inbounds i8* %call, i64 16
  %36 = bitcast i8* %gp_io48 to %struct.io**
  store %struct.io* %call47, %struct.io** %36, align 8, !tbaa !0
  %sv_any50 = getelementptr inbounds %struct.io* %call47, i64 0, i32 0
  %37 = load %struct.xpvio** %sv_any50, align 8, !tbaa !0
  %xio_flags51 = getelementptr inbounds %struct.xpvio* %37, i64 0, i32 22
  %38 = load i8* %xio_flags51, align 1, !tbaa !1
  %or = or i8 %38, 3
  store i8 %or, i8* %xio_flags51, align 1, !tbaa !1
  br label %if.end54

if.end54:                                         ; preds = %land.lhs.true, %if.end36, %if.then46
  %call55 = tail call %struct.gp* @Perl_gp_ref(%struct.gp* %27) #5
  %39 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp57 = getelementptr inbounds %struct.xpvgv* %39, i64 0, i32 7
  store %struct.gp* %call55, %struct.gp** %xgv_gp57, align 8, !tbaa !0
  %call58 = tail call %struct.sv* @Perl_newSV(i64 0) #5
  %40 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp60 = getelementptr inbounds %struct.xpvgv* %40, i64 0, i32 7
  %41 = load %struct.gp** %xgv_gp60, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %41, i64 0, i32 0
  store %struct.sv* %call58, %struct.sv** %gp_sv, align 8, !tbaa !0
  %42 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_line = getelementptr inbounds %struct.cop* %42, i64 0, i32 13
  %43 = load i32* %cop_line, align 4, !tbaa !4
  %44 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp62 = getelementptr inbounds %struct.xpvgv* %44, i64 0, i32 7
  %45 = load %struct.gp** %xgv_gp62, align 8, !tbaa !0
  %gp_line = getelementptr inbounds %struct.gp* %45, i64 0, i32 10
  store i32 %43, i32* %gp_line, align 4, !tbaa !4
  %46 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_filegv = getelementptr inbounds %struct.cop* %46, i64 0, i32 10
  %47 = load %struct.gv** %cop_filegv, align 8, !tbaa !0
  %tobool63 = icmp eq %struct.gv* %47, null
  br i1 %tobool63, label %cond.end111, label %cond.true64

cond.true64:                                      ; preds = %if.end54
  %48 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_filegv65 = getelementptr inbounds %struct.cop* %48, i64 0, i32 10
  %49 = load %struct.gv** %cop_filegv65, align 8, !tbaa !0
  %sv_any66 = getelementptr inbounds %struct.gv* %49, i64 0, i32 0
  %50 = load %struct.xpvgv** %sv_any66, align 8, !tbaa !0
  %xgv_gp67 = getelementptr inbounds %struct.xpvgv* %50, i64 0, i32 7
  %51 = load %struct.gp** %xgv_gp67, align 8, !tbaa !0
  %gp_sv68 = getelementptr inbounds %struct.gp* %51, i64 0, i32 0
  %52 = load %struct.sv** %gp_sv68, align 8, !tbaa !0
  %tobool69 = icmp eq %struct.sv* %52, null
  br i1 %tobool69, label %cond.end111, label %cond.true71

cond.true71:                                      ; preds = %cond.true64
  %53 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %54 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_filegv75 = getelementptr inbounds %struct.cop* %54, i64 0, i32 10
  %55 = load %struct.gv** %cop_filegv75, align 8, !tbaa !0
  %sv_any76 = getelementptr inbounds %struct.gv* %55, i64 0, i32 0
  %56 = load %struct.xpvgv** %sv_any76, align 8, !tbaa !0
  %xgv_gp77 = getelementptr inbounds %struct.xpvgv* %56, i64 0, i32 7
  %57 = load %struct.gp** %xgv_gp77, align 8, !tbaa !0
  %gp_sv78 = getelementptr inbounds %struct.gp* %57, i64 0, i32 0
  %58 = load %struct.sv** %gp_sv78, align 8, !tbaa !0
  %sv_any80 = getelementptr inbounds %struct.sv* %58, i64 0, i32 0
  %59 = load i8** %sv_any80, align 8, !tbaa !0
  %xpv_pv81 = bitcast i8* %59 to i8**
  %60 = load i8** %xpv_pv81, align 8, !tbaa !0
  %tobool82 = icmp eq i8* %60, null
  br i1 %tobool82, label %cond.end111, label %cond.true84

cond.true84:                                      ; preds = %cond.true71
  %61 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_filegv85 = getelementptr inbounds %struct.cop* %61, i64 0, i32 10
  %62 = load %struct.gv** %cop_filegv85, align 8, !tbaa !0
  %tobool86 = icmp eq %struct.gv* %62, null
  br i1 %tobool86, label %cond.end111, label %cond.true87

cond.true87:                                      ; preds = %cond.true84
  %63 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_filegv88 = getelementptr inbounds %struct.cop* %63, i64 0, i32 10
  %64 = load %struct.gv** %cop_filegv88, align 8, !tbaa !0
  %sv_any89 = getelementptr inbounds %struct.gv* %64, i64 0, i32 0
  %65 = load %struct.xpvgv** %sv_any89, align 8, !tbaa !0
  %xgv_gp90 = getelementptr inbounds %struct.xpvgv* %65, i64 0, i32 7
  %66 = load %struct.gp** %xgv_gp90, align 8, !tbaa !0
  %gp_sv91 = getelementptr inbounds %struct.gp* %66, i64 0, i32 0
  %67 = load %struct.sv** %gp_sv91, align 8, !tbaa !0
  %tobool92 = icmp eq %struct.sv* %67, null
  br i1 %tobool92, label %cond.end111, label %cond.true94

cond.true94:                                      ; preds = %cond.true87
  %68 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %69 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_filegv98 = getelementptr inbounds %struct.cop* %69, i64 0, i32 10
  %70 = load %struct.gv** %cop_filegv98, align 8, !tbaa !0
  %sv_any99 = getelementptr inbounds %struct.gv* %70, i64 0, i32 0
  %71 = load %struct.xpvgv** %sv_any99, align 8, !tbaa !0
  %xgv_gp100 = getelementptr inbounds %struct.xpvgv* %71, i64 0, i32 7
  %72 = load %struct.gp** %xgv_gp100, align 8, !tbaa !0
  %gp_sv101 = getelementptr inbounds %struct.gp* %72, i64 0, i32 0
  %73 = load %struct.sv** %gp_sv101, align 8, !tbaa !0
  %sv_any105 = getelementptr inbounds %struct.sv* %73, i64 0, i32 0
  %74 = load i8** %sv_any105, align 8, !tbaa !0
  %xpv_pv106 = bitcast i8* %74 to i8**
  %75 = load i8** %xpv_pv106, align 8, !tbaa !0
  br label %cond.end111

cond.end111:                                      ; preds = %cond.true87, %cond.true84, %cond.true71, %cond.true64, %if.end54, %cond.true94
  %cond112 = phi i8* [ %75, %cond.true94 ], [ null, %cond.true84 ], [ null, %cond.true87 ], [ getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), %cond.true64 ], [ getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), %if.end54 ], [ getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), %cond.true71 ]
  %76 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp114 = getelementptr inbounds %struct.xpvgv* %76, i64 0, i32 7
  %77 = load %struct.gp** %xgv_gp114, align 8, !tbaa !0
  %gp_file = getelementptr inbounds %struct.gp* %77, i64 0, i32 11
  store i8* %cond112, i8** %gp_file, align 8, !tbaa !0
  %78 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp116 = getelementptr inbounds %struct.xpvgv* %78, i64 0, i32 7
  %79 = load %struct.gp** %xgv_gp116, align 8, !tbaa !0
  %gp_egv = getelementptr inbounds %struct.gp* %79, i64 0, i32 6
  store %struct.gv* %gv, %struct.gv** %gp_egv, align 8, !tbaa !0
  br label %if.end124

if.else:                                          ; preds = %land.end
  %80 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp118 = getelementptr inbounds %struct.xpvgv* %80, i64 0, i32 7
  %81 = load %struct.gp** %xgv_gp118, align 8, !tbaa !0
  %call119 = tail call %struct.gp* @Perl_gp_ref(%struct.gp* %81) #5
  %82 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_flags = getelementptr inbounds %struct.xpvgv* %82, i64 0, i32 11
  %83 = load i8* %xgv_flags, align 1, !tbaa !1
  %or122 = or i8 %83, 1
  store i8 %or122, i8* %xgv_flags, align 1, !tbaa !1
  br label %if.end124

if.end124:                                        ; preds = %if.else, %cond.end111
  ret void
}

; Function Attrs: optsize
declare %struct.io* @Perl_newIO() #1

; Function Attrs: optsize
declare %struct.gp* @Perl_gp_ref(%struct.gp*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSV(i64) #1

; Function Attrs: nounwind optsize uwtable
define %struct.av* @Perl_save_ary(%struct.gv* %gv) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.gv* %gv, i64 0, i32 0
  %0 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %0, i64 0, i32 7
  %1 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_av = getelementptr inbounds %struct.gp* %1, i64 0, i32 4
  %2 = load %struct.av** %gp_av, align 8, !tbaa !0
  %tobool = icmp eq %struct.av* %2, null
  br i1 %tobool, label %cond.false, label %cond.end

cond.false:                                       ; preds = %entry
  %call = tail call %struct.gv* @Perl_gv_AVadd(%struct.gv* %gv) #5
  %sv_any4 = getelementptr inbounds %struct.gv* %call, i64 0, i32 0
  %3 = load %struct.xpvgv** %sv_any4, align 8, !tbaa !0
  %xgv_gp5 = getelementptr inbounds %struct.xpvgv* %3, i64 0, i32 7
  %4 = load %struct.gp** %xgv_gp5, align 8, !tbaa !0
  %gp_av6 = getelementptr inbounds %struct.gp* %4, i64 0, i32 4
  %5 = load %struct.av** %gp_av6, align 8, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi %struct.av* [ %5, %cond.false ], [ %2, %entry ]
  %sv_any7 = getelementptr inbounds %struct.av* %cond, i64 0, i32 0
  %6 = load %struct.xpvav** %sv_any7, align 8, !tbaa !0
  %xav_flags = getelementptr inbounds %struct.xpvav* %6, i64 0, i32 9
  %7 = load i8* %xav_flags, align 1, !tbaa !1
  %8 = and i8 %7, 3
  %9 = icmp eq i8 %8, 2
  br i1 %9, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  tail call void @Perl_av_reify(%struct.av* %cond) #5
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %10 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %10, 3
  %11 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %11
  br i1 %cmp, label %if.then15, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  %.pre79 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end16

if.then15:                                        ; preds = %if.end
  %mul.i = mul nsw i32 %11, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %12 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %13 = bitcast %union.any* %12 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %13, i64 %mul1.i) #5
  %14 = bitcast i8* %call.i to %union.any*
  store %union.any* %14, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end16

if.end16:                                         ; preds = %if.end.if.end16_crit_edge, %if.then15
  %15 = phi %union.any* [ %14, %if.then15 ], [ %.pre79, %if.end.if.end16_crit_edge ]
  %16 = phi i32 [ %.pre, %if.then15 ], [ %10, %if.end.if.end16_crit_edge ]
  %17 = bitcast %struct.gv* %gv to i8*
  %inc = add nsw i32 %16, 1
  %idxprom = sext i32 %16 to i64
  %any_ptr = getelementptr inbounds %union.any* %15, i64 %idxprom, i32 0
  store i8* %17, i8** %any_ptr, align 8, !tbaa !0
  %18 = bitcast %struct.av* %cond to i8*
  %inc17 = add nsw i32 %16, 2
  %idxprom18 = sext i32 %inc to i64
  %19 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr20 = getelementptr inbounds %union.any* %19, i64 %idxprom18, i32 0
  store i8* %18, i8** %any_ptr20, align 8, !tbaa !0
  %inc21 = add nsw i32 %16, 3
  store i32 %inc21, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom22 = sext i32 %inc17 to i64
  %20 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx23 = getelementptr inbounds %union.any* %20, i64 %idxprom22
  %any_i32 = bitcast %union.any* %arrayidx23 to i32*
  store i32 2, i32* %any_i32, align 4, !tbaa !4
  %21 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp25 = getelementptr inbounds %struct.xpvgv* %21, i64 0, i32 7
  %22 = load %struct.gp** %xgv_gp25, align 8, !tbaa !0
  %gp_av26 = getelementptr inbounds %struct.gp* %22, i64 0, i32 4
  store %struct.av* null, %struct.av** %gp_av26, align 8, !tbaa !0
  %23 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp28 = getelementptr inbounds %struct.xpvgv* %23, i64 0, i32 7
  %24 = load %struct.gp** %xgv_gp28, align 8, !tbaa !0
  %gp_av29 = getelementptr inbounds %struct.gp* %24, i64 0, i32 4
  %25 = load %struct.av** %gp_av29, align 8, !tbaa !0
  %tobool30 = icmp eq %struct.av* %25, null
  br i1 %tobool30, label %cond.false35, label %cond.end40

cond.false35:                                     ; preds = %if.end16
  %call36 = tail call %struct.gv* @Perl_gv_AVadd(%struct.gv* %gv) #5
  %sv_any37 = getelementptr inbounds %struct.gv* %call36, i64 0, i32 0
  %26 = load %struct.xpvgv** %sv_any37, align 8, !tbaa !0
  %xgv_gp38 = getelementptr inbounds %struct.xpvgv* %26, i64 0, i32 7
  %27 = load %struct.gp** %xgv_gp38, align 8, !tbaa !0
  %gp_av39 = getelementptr inbounds %struct.gp* %27, i64 0, i32 4
  %28 = load %struct.av** %gp_av39, align 8, !tbaa !0
  br label %cond.end40

cond.end40:                                       ; preds = %if.end16, %cond.false35
  %cond41 = phi %struct.av* [ %28, %cond.false35 ], [ %25, %if.end16 ]
  %29 = load %struct.xpvav** %sv_any7, align 8, !tbaa !0
  %30 = getelementptr inbounds %struct.xpvav* %29, i64 0, i32 5
  %31 = load %struct.magic** %30, align 8, !tbaa !0
  %tobool43 = icmp eq %struct.magic* %31, null
  br i1 %tobool43, label %if.end61, label %if.then44

if.then44:                                        ; preds = %cond.end40
  %sv_any47 = getelementptr inbounds %struct.av* %cond41, i64 0, i32 0
  %32 = load %struct.xpvav** %sv_any47, align 8, !tbaa !0
  %33 = getelementptr inbounds %struct.xpvav* %32, i64 0, i32 5
  store %struct.magic* %31, %struct.magic** %33, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.av* %cond, i64 0, i32 2
  %34 = load i32* %sv_flags, align 4, !tbaa !4
  %and49 = and i32 %34, 57344
  %35 = getelementptr inbounds %struct.av* %cond41, i64 0, i32 2
  %36 = load i32* %35, align 4, !tbaa !4
  %or = or i32 %36, %and49
  store i32 %or, i32* %35, align 4, !tbaa !4
  %37 = load i32* %sv_flags, align 4, !tbaa !4
  %and52 = and i32 %37, -57345
  store i32 %and52, i32* %sv_flags, align 4, !tbaa !4
  %38 = load %struct.xpvav** %sv_any7, align 8, !tbaa !0
  %39 = getelementptr inbounds %struct.xpvav* %38, i64 0, i32 5
  store %struct.magic* null, %struct.magic** %39, align 8, !tbaa !0
  store i32 1, i32* @PL_localizing, align 4, !tbaa !4
  %40 = load i32* %35, align 4, !tbaa !4
  %and56 = and i32 %40, 16384
  %tobool57 = icmp eq i32 %and56, 0
  br i1 %tobool57, label %if.end60, label %if.then58

if.then58:                                        ; preds = %if.then44
  %41 = bitcast %struct.av* %cond41 to %struct.sv*
  %call59 = tail call i32 @Perl_mg_set(%struct.sv* %41) #5
  br label %if.end60

if.end60:                                         ; preds = %if.then44, %if.then58
  store i32 0, i32* @PL_localizing, align 4, !tbaa !4
  br label %if.end61

if.end61:                                         ; preds = %cond.end40, %if.end60
  ret %struct.av* %cond41
}

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_AVadd(%struct.gv*) #1

; Function Attrs: optsize
declare void @Perl_av_reify(%struct.av*) #1

; Function Attrs: optsize
declare i32 @Perl_mg_set(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.hv* @Perl_save_hash(%struct.gv* %gv) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 3
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre65 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre65, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %7 = bitcast %struct.gv* %gv to i8*
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom = sext i32 %6 to i64
  %any_ptr = getelementptr inbounds %union.any* %5, i64 %idxprom, i32 0
  store i8* %7, i8** %any_ptr, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.gv* %gv, i64 0, i32 0
  %8 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %8, i64 0, i32 7
  %9 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_hv = getelementptr inbounds %struct.gp* %9, i64 0, i32 5
  %10 = load %struct.hv** %gp_hv, align 8, !tbaa !0
  %tobool = icmp eq %struct.hv* %10, null
  br i1 %tobool, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.end
  %call = tail call %struct.gv* @Perl_gv_HVadd(%struct.gv* %gv) #5
  %sv_any4 = getelementptr inbounds %struct.gv* %call, i64 0, i32 0
  %11 = load %struct.xpvgv** %sv_any4, align 8, !tbaa !0
  %xgv_gp5 = getelementptr inbounds %struct.xpvgv* %11, i64 0, i32 7
  %12 = load %struct.gp** %xgv_gp5, align 8, !tbaa !0
  %gp_hv6 = getelementptr inbounds %struct.gp* %12, i64 0, i32 5
  %13 = load %struct.hv** %gp_hv6, align 8, !tbaa !0
  %.pre64 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.false
  %14 = phi i32 [ %.pre64, %cond.false ], [ %inc, %if.end ]
  %cond = phi %struct.hv* [ %13, %cond.false ], [ %10, %if.end ]
  %15 = bitcast %struct.hv* %cond to i8*
  %inc7 = add nsw i32 %14, 1
  %idxprom8 = sext i32 %14 to i64
  %16 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr10 = getelementptr inbounds %union.any* %16, i64 %idxprom8, i32 0
  store i8* %15, i8** %any_ptr10, align 8, !tbaa !0
  %inc11 = add nsw i32 %14, 2
  store i32 %inc11, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom12 = sext i32 %inc7 to i64
  %17 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx13 = getelementptr inbounds %union.any* %17, i64 %idxprom12
  %any_i32 = bitcast %union.any* %arrayidx13 to i32*
  store i32 3, i32* %any_i32, align 4, !tbaa !4
  %18 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp15 = getelementptr inbounds %struct.xpvgv* %18, i64 0, i32 7
  %19 = load %struct.gp** %xgv_gp15, align 8, !tbaa !0
  %gp_hv16 = getelementptr inbounds %struct.gp* %19, i64 0, i32 5
  store %struct.hv* null, %struct.hv** %gp_hv16, align 8, !tbaa !0
  %20 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp18 = getelementptr inbounds %struct.xpvgv* %20, i64 0, i32 7
  %21 = load %struct.gp** %xgv_gp18, align 8, !tbaa !0
  %gp_hv19 = getelementptr inbounds %struct.gp* %21, i64 0, i32 5
  %22 = load %struct.hv** %gp_hv19, align 8, !tbaa !0
  %tobool20 = icmp eq %struct.hv* %22, null
  br i1 %tobool20, label %cond.false25, label %cond.end30

cond.false25:                                     ; preds = %cond.end
  %call26 = tail call %struct.gv* @Perl_gv_HVadd(%struct.gv* %gv) #5
  %sv_any27 = getelementptr inbounds %struct.gv* %call26, i64 0, i32 0
  %23 = load %struct.xpvgv** %sv_any27, align 8, !tbaa !0
  %xgv_gp28 = getelementptr inbounds %struct.xpvgv* %23, i64 0, i32 7
  %24 = load %struct.gp** %xgv_gp28, align 8, !tbaa !0
  %gp_hv29 = getelementptr inbounds %struct.gp* %24, i64 0, i32 5
  %25 = load %struct.hv** %gp_hv29, align 8, !tbaa !0
  br label %cond.end30

cond.end30:                                       ; preds = %cond.end, %cond.false25
  %cond31 = phi %struct.hv* [ %25, %cond.false25 ], [ %22, %cond.end ]
  %sv_any32 = getelementptr inbounds %struct.hv* %cond, i64 0, i32 0
  %26 = load %struct.xpvhv** %sv_any32, align 8, !tbaa !0
  %27 = getelementptr inbounds %struct.xpvhv* %26, i64 0, i32 5
  %28 = load %struct.magic** %27, align 8, !tbaa !0
  %tobool33 = icmp eq %struct.magic* %28, null
  br i1 %tobool33, label %if.end50, label %if.then34

if.then34:                                        ; preds = %cond.end30
  %sv_any37 = getelementptr inbounds %struct.hv* %cond31, i64 0, i32 0
  %29 = load %struct.xpvhv** %sv_any37, align 8, !tbaa !0
  %30 = getelementptr inbounds %struct.xpvhv* %29, i64 0, i32 5
  store %struct.magic* %28, %struct.magic** %30, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.hv* %cond, i64 0, i32 2
  %31 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %31, 57344
  %32 = getelementptr inbounds %struct.hv* %cond31, i64 0, i32 2
  %33 = load i32* %32, align 4, !tbaa !4
  %or = or i32 %33, %and
  store i32 %or, i32* %32, align 4, !tbaa !4
  %34 = load i32* %sv_flags, align 4, !tbaa !4
  %and41 = and i32 %34, -57345
  store i32 %and41, i32* %sv_flags, align 4, !tbaa !4
  %35 = load %struct.xpvhv** %sv_any32, align 8, !tbaa !0
  %36 = getelementptr inbounds %struct.xpvhv* %35, i64 0, i32 5
  store %struct.magic* null, %struct.magic** %36, align 8, !tbaa !0
  store i32 1, i32* @PL_localizing, align 4, !tbaa !4
  %37 = load i32* %32, align 4, !tbaa !4
  %and45 = and i32 %37, 16384
  %tobool46 = icmp eq i32 %and45, 0
  br i1 %tobool46, label %if.end49, label %if.then47

if.then47:                                        ; preds = %if.then34
  %38 = bitcast %struct.hv* %cond31 to %struct.sv*
  %call48 = tail call i32 @Perl_mg_set(%struct.sv* %38) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then34, %if.then47
  store i32 0, i32* @PL_localizing, align 4, !tbaa !4
  br label %if.end50

if.end50:                                         ; preds = %cond.end30, %if.end49
  ret %struct.hv* %cond31
}

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_HVadd(%struct.gv*) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_item(%struct.sv* %item) #0 {
entry:
  %call = tail call %struct.sv* @Perl_newSVsv(%struct.sv* %item) #5
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 3
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre9 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre9, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %7 = bitcast %struct.sv* %item to i8*
  %inc = add nsw i32 %6, 1
  %idxprom = sext i32 %6 to i64
  %any_ptr = getelementptr inbounds %union.any* %5, i64 %idxprom, i32 0
  store i8* %7, i8** %any_ptr, align 8, !tbaa !0
  %8 = bitcast %struct.sv* %call to i8*
  %inc1 = add nsw i32 %6, 2
  %idxprom2 = sext i32 %inc to i64
  %9 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr4 = getelementptr inbounds %union.any* %9, i64 %idxprom2, i32 0
  store i8* %8, i8** %any_ptr4, align 8, !tbaa !0
  %inc5 = add nsw i32 %6, 3
  store i32 %inc5, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom6 = sext i32 %inc1 to i64
  %10 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx7 = getelementptr inbounds %union.any* %10, i64 %idxprom6
  %any_i32 = bitcast %union.any* %arrayidx7 to i32*
  store i32 0, i32* %any_i32, align 4, !tbaa !4
  ret void
}

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVsv(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_int(i32* %intp) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 3
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre9 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre9, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %7 = load i32* %intp, align 4, !tbaa !4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %union.any* %5, i64 %idxprom
  %any_i32 = bitcast %union.any* %arrayidx to i32*
  store i32 %7, i32* %any_i32, align 4, !tbaa !4
  %8 = bitcast i32* %intp to i8*
  %9 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %inc1 = add nsw i32 %9, 1
  %idxprom2 = sext i32 %9 to i64
  %any_ptr = getelementptr inbounds %union.any* %5, i64 %idxprom2, i32 0
  store i8* %8, i8** %any_ptr, align 8, !tbaa !0
  %inc4 = add nsw i32 %9, 2
  store i32 %inc4, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom5 = sext i32 %inc1 to i64
  %10 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds %union.any* %10, i64 %idxprom5
  %any_i327 = bitcast %union.any* %arrayidx6 to i32*
  store i32 4, i32* %any_i327, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_long(i64* %longp) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 3
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre8 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre8, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %7 = load i64* %longp, align 8, !tbaa !3
  %inc = add nsw i32 %6, 1
  %idxprom = sext i32 %6 to i64
  %8 = getelementptr inbounds %union.any* %5, i64 %idxprom, i32 0
  %.c = inttoptr i64 %7 to i8*
  store i8* %.c, i8** %8, align 8, !tbaa !3
  %9 = bitcast i64* %longp to i8*
  %inc1 = add nsw i32 %6, 2
  %idxprom2 = sext i32 %inc to i64
  %any_ptr = getelementptr inbounds %union.any* %5, i64 %idxprom2, i32 0
  store i8* %9, i8** %any_ptr, align 8, !tbaa !0
  %inc4 = add nsw i32 %6, 3
  store i32 %inc4, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom5 = sext i32 %inc1 to i64
  %10 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds %union.any* %10, i64 %idxprom5
  %any_i32 = bitcast %union.any* %arrayidx6 to i32*
  store i32 5, i32* %any_i32, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_bool(i8* %boolp) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 3
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre8 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre8, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %7 = load i8* %boolp, align 1, !tbaa !1
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %union.any* %5, i64 %idxprom
  %any_bool = bitcast %union.any* %arrayidx to i8*
  store i8 %7, i8* %any_bool, align 1, !tbaa !1
  %8 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %inc1 = add nsw i32 %8, 1
  %idxprom2 = sext i32 %8 to i64
  %9 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr = getelementptr inbounds %union.any* %9, i64 %idxprom2, i32 0
  store i8* %boolp, i8** %any_ptr, align 8, !tbaa !0
  %inc4 = add nsw i32 %8, 2
  store i32 %inc4, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom5 = sext i32 %inc1 to i64
  %10 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds %union.any* %10, i64 %idxprom5
  %any_i32 = bitcast %union.any* %arrayidx6 to i32*
  store i32 38, i32* %any_i32, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_I32(i32* %intp) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 3
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre9 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre9, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %7 = load i32* %intp, align 4, !tbaa !4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %union.any* %5, i64 %idxprom
  %any_i32 = bitcast %union.any* %arrayidx to i32*
  store i32 %7, i32* %any_i32, align 4, !tbaa !4
  %8 = bitcast i32* %intp to i8*
  %9 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %inc1 = add nsw i32 %9, 1
  %idxprom2 = sext i32 %9 to i64
  %any_ptr = getelementptr inbounds %union.any* %5, i64 %idxprom2, i32 0
  store i8* %8, i8** %any_ptr, align 8, !tbaa !0
  %inc4 = add nsw i32 %9, 2
  store i32 %inc4, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom5 = sext i32 %inc1 to i64
  %10 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds %union.any* %10, i64 %idxprom5
  %any_i327 = bitcast %union.any* %arrayidx6 to i32*
  store i32 6, i32* %any_i327, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_I16(i16* %intp) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 3
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre9 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre9, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %7 = load i16* %intp, align 2, !tbaa !5
  %conv = sext i16 %7 to i32
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %union.any* %5, i64 %idxprom
  %any_i32 = bitcast %union.any* %arrayidx to i32*
  store i32 %conv, i32* %any_i32, align 4, !tbaa !4
  %8 = bitcast i16* %intp to i8*
  %9 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %inc1 = add nsw i32 %9, 1
  %idxprom2 = sext i32 %9 to i64
  %any_ptr = getelementptr inbounds %union.any* %5, i64 %idxprom2, i32 0
  store i8* %8, i8** %any_ptr, align 8, !tbaa !0
  %inc4 = add nsw i32 %9, 2
  store i32 %inc4, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom5 = sext i32 %inc1 to i64
  %10 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds %union.any* %10, i64 %idxprom5
  %any_i327 = bitcast %union.any* %arrayidx6 to i32*
  store i32 23, i32* %any_i327, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_I8(i8* %bytep) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 3
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre9 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre9, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %7 = load i8* %bytep, align 1, !tbaa !1
  %conv = sext i8 %7 to i32
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %union.any* %5, i64 %idxprom
  %any_i32 = bitcast %union.any* %arrayidx to i32*
  store i32 %conv, i32* %any_i32, align 4, !tbaa !4
  %8 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %inc1 = add nsw i32 %8, 1
  %idxprom2 = sext i32 %8 to i64
  %any_ptr = getelementptr inbounds %union.any* %5, i64 %idxprom2, i32 0
  store i8* %bytep, i8** %any_ptr, align 8, !tbaa !0
  %inc4 = add nsw i32 %8, 2
  store i32 %inc4, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom5 = sext i32 %inc1 to i64
  %9 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds %union.any* %9, i64 %idxprom5
  %any_i327 = bitcast %union.any* %arrayidx6 to i32*
  store i32 32, i32* %any_i327, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_iv(i64* %ivp) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 3
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre8 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre8, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %7 = load i64* %ivp, align 8, !tbaa !3
  %inc = add nsw i32 %6, 1
  %idxprom = sext i32 %6 to i64
  %8 = getelementptr inbounds %union.any* %5, i64 %idxprom, i32 0
  %.c = inttoptr i64 %7 to i8*
  store i8* %.c, i8** %8, align 8, !tbaa !3
  %9 = bitcast i64* %ivp to i8*
  %inc1 = add nsw i32 %6, 2
  %idxprom2 = sext i32 %inc to i64
  %any_ptr = getelementptr inbounds %union.any* %5, i64 %idxprom2, i32 0
  store i8* %9, i8** %any_ptr, align 8, !tbaa !0
  %inc4 = add nsw i32 %6, 3
  store i32 %inc4, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom5 = sext i32 %inc1 to i64
  %10 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds %union.any* %10, i64 %idxprom5
  %any_i32 = bitcast %union.any* %arrayidx6 to i32*
  store i32 7, i32* %any_i32, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_pptr(i8** %pptr) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 3
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre9 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre9, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %7 = load i8** %pptr, align 8, !tbaa !0
  %inc = add nsw i32 %6, 1
  %idxprom = sext i32 %6 to i64
  %any_ptr = getelementptr inbounds %union.any* %5, i64 %idxprom, i32 0
  store i8* %7, i8** %any_ptr, align 8, !tbaa !0
  %8 = bitcast i8** %pptr to i8*
  %inc1 = add nsw i32 %6, 2
  %idxprom2 = sext i32 %inc to i64
  %9 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr4 = getelementptr inbounds %union.any* %9, i64 %idxprom2, i32 0
  store i8* %8, i8** %any_ptr4, align 8, !tbaa !0
  %inc5 = add nsw i32 %6, 3
  store i32 %inc5, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom6 = sext i32 %inc1 to i64
  %10 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx7 = getelementptr inbounds %union.any* %10, i64 %idxprom6
  %any_i32 = bitcast %union.any* %arrayidx7 to i32*
  store i32 11, i32* %any_i32, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_vptr(i8* %ptr) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 3
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre9 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre9, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %7 = bitcast i8* %ptr to i8**
  %8 = load i8** %7, align 8, !tbaa !0
  %inc = add nsw i32 %6, 1
  %idxprom = sext i32 %6 to i64
  %any_ptr = getelementptr inbounds %union.any* %5, i64 %idxprom, i32 0
  store i8* %8, i8** %any_ptr, align 8, !tbaa !0
  %inc1 = add nsw i32 %6, 2
  %idxprom2 = sext i32 %inc to i64
  %9 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr4 = getelementptr inbounds %union.any* %9, i64 %idxprom2, i32 0
  store i8* %ptr, i8** %any_ptr4, align 8, !tbaa !0
  %inc5 = add nsw i32 %6, 3
  store i32 %inc5, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom6 = sext i32 %inc1 to i64
  %10 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx7 = getelementptr inbounds %union.any* %10, i64 %idxprom6
  %any_i32 = bitcast %union.any* %arrayidx7 to i32*
  store i32 31, i32* %any_i32, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_sptr(%struct.sv** %sptr) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 3
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre9 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre9, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %7 = load %struct.sv** %sptr, align 8, !tbaa !0
  %8 = bitcast %struct.sv* %7 to i8*
  %inc = add nsw i32 %6, 1
  %idxprom = sext i32 %6 to i64
  %any_ptr = getelementptr inbounds %union.any* %5, i64 %idxprom, i32 0
  store i8* %8, i8** %any_ptr, align 8, !tbaa !0
  %9 = bitcast %struct.sv** %sptr to i8*
  %inc1 = add nsw i32 %6, 2
  %idxprom2 = sext i32 %inc to i64
  %10 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr4 = getelementptr inbounds %union.any* %10, i64 %idxprom2, i32 0
  store i8* %9, i8** %any_ptr4, align 8, !tbaa !0
  %inc5 = add nsw i32 %6, 3
  store i32 %inc5, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom6 = sext i32 %inc1 to i64
  %11 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx7 = getelementptr inbounds %union.any* %11, i64 %idxprom6
  %any_i32 = bitcast %union.any* %arrayidx7 to i32*
  store i32 8, i32* %any_i32, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_padsv(i64 %off) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 4
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre13 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre13, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %7 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %7, i64 %off
  %8 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %9 = bitcast %struct.sv* %8 to i8*
  %inc = add nsw i32 %6, 1
  %idxprom = sext i32 %6 to i64
  %any_ptr = getelementptr inbounds %union.any* %5, i64 %idxprom, i32 0
  store i8* %9, i8** %any_ptr, align 8, !tbaa !0
  %10 = load %struct.av** @PL_comppad, align 8, !tbaa !0
  %11 = bitcast %struct.av* %10 to i8*
  %inc2 = add nsw i32 %6, 2
  %idxprom3 = sext i32 %inc to i64
  %12 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr5 = getelementptr inbounds %union.any* %12, i64 %idxprom3, i32 0
  store i8* %11, i8** %any_ptr5, align 8, !tbaa !0
  %inc6 = add nsw i32 %6, 3
  %idxprom7 = sext i32 %inc2 to i64
  %13 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %14 = getelementptr inbounds %union.any* %13, i64 %idxprom7, i32 0
  %off.c = inttoptr i64 %off to i8*
  store i8* %off.c, i8** %14, align 8, !tbaa !3
  %inc9 = add nsw i32 %6, 4
  store i32 %inc9, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom10 = sext i32 %inc6 to i64
  %arrayidx11 = getelementptr inbounds %union.any* %13, i64 %idxprom10
  %any_i32 = bitcast %union.any* %arrayidx11 to i32*
  store i32 35, i32* %any_i32, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define noalias %struct.sv** @Perl_save_threadsv(i64 %i) #0 {
entry:
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0)) #5
  ret %struct.sv** null
}

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_nogv(%struct.gv* %gv) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 2
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre4 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre4, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %7 = bitcast %struct.gv* %gv to i8*
  %inc = add nsw i32 %6, 1
  %idxprom = sext i32 %6 to i64
  %any_ptr = getelementptr inbounds %union.any* %5, i64 %idxprom, i32 0
  store i8* %7, i8** %any_ptr, align 8, !tbaa !0
  %inc1 = add nsw i32 %6, 2
  store i32 %inc1, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom2 = sext i32 %inc to i64
  %8 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx3 = getelementptr inbounds %union.any* %8, i64 %idxprom2
  %any_i32 = bitcast %union.any* %arrayidx3 to i32*
  store i32 12, i32* %any_i32, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_hptr(%struct.hv** %hptr) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 3
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre9 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre9, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %7 = load %struct.hv** %hptr, align 8, !tbaa !0
  %8 = bitcast %struct.hv* %7 to i8*
  %inc = add nsw i32 %6, 1
  %idxprom = sext i32 %6 to i64
  %any_ptr = getelementptr inbounds %union.any* %5, i64 %idxprom, i32 0
  store i8* %8, i8** %any_ptr, align 8, !tbaa !0
  %9 = bitcast %struct.hv** %hptr to i8*
  %inc1 = add nsw i32 %6, 2
  %idxprom2 = sext i32 %inc to i64
  %10 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr4 = getelementptr inbounds %union.any* %10, i64 %idxprom2, i32 0
  store i8* %9, i8** %any_ptr4, align 8, !tbaa !0
  %inc5 = add nsw i32 %6, 3
  store i32 %inc5, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom6 = sext i32 %inc1 to i64
  %11 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx7 = getelementptr inbounds %union.any* %11, i64 %idxprom6
  %any_i32 = bitcast %union.any* %arrayidx7 to i32*
  store i32 10, i32* %any_i32, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_aptr(%struct.av** %aptr) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 3
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre9 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre9, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %7 = load %struct.av** %aptr, align 8, !tbaa !0
  %8 = bitcast %struct.av* %7 to i8*
  %inc = add nsw i32 %6, 1
  %idxprom = sext i32 %6 to i64
  %any_ptr = getelementptr inbounds %union.any* %5, i64 %idxprom, i32 0
  store i8* %8, i8** %any_ptr, align 8, !tbaa !0
  %9 = bitcast %struct.av** %aptr to i8*
  %inc1 = add nsw i32 %6, 2
  %idxprom2 = sext i32 %inc to i64
  %10 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr4 = getelementptr inbounds %union.any* %10, i64 %idxprom2, i32 0
  store i8* %9, i8** %any_ptr4, align 8, !tbaa !0
  %inc5 = add nsw i32 %6, 3
  store i32 %inc5, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom6 = sext i32 %inc1 to i64
  %11 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx7 = getelementptr inbounds %union.any* %11, i64 %idxprom6
  %any_i32 = bitcast %union.any* %arrayidx7 to i32*
  store i32 9, i32* %any_i32, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_freesv(%struct.sv* %sv) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 2
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre4 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre4, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %7 = bitcast %struct.sv* %sv to i8*
  %inc = add nsw i32 %6, 1
  %idxprom = sext i32 %6 to i64
  %any_ptr = getelementptr inbounds %union.any* %5, i64 %idxprom, i32 0
  store i8* %7, i8** %any_ptr, align 8, !tbaa !0
  %inc1 = add nsw i32 %6, 2
  store i32 %inc1, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom2 = sext i32 %inc to i64
  %8 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx3 = getelementptr inbounds %union.any* %8, i64 %idxprom2
  %any_i32 = bitcast %union.any* %arrayidx3 to i32*
  store i32 15, i32* %any_i32, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_mortalizesv(%struct.sv* %sv) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 2
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre4 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre4, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %7 = bitcast %struct.sv* %sv to i8*
  %inc = add nsw i32 %6, 1
  %idxprom = sext i32 %6 to i64
  %any_ptr = getelementptr inbounds %union.any* %5, i64 %idxprom, i32 0
  store i8* %7, i8** %any_ptr, align 8, !tbaa !0
  %inc1 = add nsw i32 %6, 2
  store i32 %inc1, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom2 = sext i32 %inc to i64
  %8 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx3 = getelementptr inbounds %union.any* %8, i64 %idxprom2
  %any_i32 = bitcast %union.any* %arrayidx3 to i32*
  store i32 36, i32* %any_i32, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_freeop(%struct.op* %o) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 2
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre4 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre4, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %7 = bitcast %struct.op* %o to i8*
  %inc = add nsw i32 %6, 1
  %idxprom = sext i32 %6 to i64
  %any_ptr = getelementptr inbounds %union.any* %5, i64 %idxprom, i32 0
  store i8* %7, i8** %any_ptr, align 8, !tbaa !0
  %inc1 = add nsw i32 %6, 2
  store i32 %inc1, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom2 = sext i32 %inc to i64
  %8 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx3 = getelementptr inbounds %union.any* %8, i64 %idxprom2
  %any_i32 = bitcast %union.any* %arrayidx3 to i32*
  store i32 16, i32* %any_i32, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_freepv(i8* %pv) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 2
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre4 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre4, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %inc = add nsw i32 %6, 1
  %idxprom = sext i32 %6 to i64
  %any_ptr = getelementptr inbounds %union.any* %5, i64 %idxprom, i32 0
  store i8* %pv, i8** %any_ptr, align 8, !tbaa !0
  %inc1 = add nsw i32 %6, 2
  store i32 %inc1, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom2 = sext i32 %inc to i64
  %7 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx3 = getelementptr inbounds %union.any* %7, i64 %idxprom2
  %any_i32 = bitcast %union.any* %arrayidx3 to i32*
  store i32 17, i32* %any_i32, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_clearsv(%struct.sv** %svp) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 2
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre4 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre4, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %7 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %svp to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %inc = add nsw i32 %6, 1
  %idxprom = sext i32 %6 to i64
  %8 = getelementptr inbounds %union.any* %5, i64 %idxprom, i32 0
  %sub.ptr.div.c = inttoptr i64 %sub.ptr.div to i8*
  store i8* %sub.ptr.div.c, i8** %8, align 8, !tbaa !3
  %inc1 = add nsw i32 %6, 2
  store i32 %inc1, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom2 = sext i32 %inc to i64
  %arrayidx3 = getelementptr inbounds %union.any* %5, i64 %idxprom2
  %any_i32 = bitcast %union.any* %arrayidx3 to i32*
  store i32 18, i32* %any_i32, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_delete(%struct.hv* %hv, i8* %key, i32 %klen) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 4
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre15 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre15, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %union.any* %5, i64 %idxprom
  %any_i32 = bitcast %union.any* %arrayidx to i32*
  store i32 %klen, i32* %any_i32, align 4, !tbaa !4
  %7 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %inc1 = add nsw i32 %7, 1
  store i32 %inc1, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom2 = sext i32 %7 to i64
  %any_ptr = getelementptr inbounds %union.any* %5, i64 %idxprom2, i32 0
  store i8* %key, i8** %any_ptr, align 8, !tbaa !0
  %8 = bitcast %struct.hv* %hv to %struct.sv*
  store %struct.sv* %8, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool = icmp eq %struct.hv* %hv, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %9 = getelementptr inbounds %struct.hv* %hv, i64 0, i32 1
  %10 = load i32* %9, align 4, !tbaa !4
  %inc4 = add i32 %10, 1
  store i32 %inc4, i32* %9, align 4, !tbaa !4
  %.pre14 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %land.end

land.end:                                         ; preds = %if.end, %land.rhs
  %11 = phi i32 [ %inc1, %if.end ], [ %.pre14, %land.rhs ]
  %12 = bitcast %struct.hv* %hv to i8*
  %inc6 = add nsw i32 %11, 1
  %idxprom7 = sext i32 %11 to i64
  %13 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr9 = getelementptr inbounds %union.any* %13, i64 %idxprom7, i32 0
  store i8* %12, i8** %any_ptr9, align 8, !tbaa !0
  %inc10 = add nsw i32 %11, 2
  store i32 %inc10, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom11 = sext i32 %inc6 to i64
  %14 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds %union.any* %14, i64 %idxprom11
  %any_i3213 = bitcast %union.any* %arrayidx12 to i32*
  store i32 19, i32* %any_i3213, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_list(%struct.sv** nocapture %sarg, i32 %maxsarg) #0 {
entry:
  %cmp19 = icmp slt i32 %maxsarg, 1
  br i1 %cmp19, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %0 = add i32 %maxsarg, 1
  br label %for.body

for.body:                                         ; preds = %if.end, %for.body.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 1, %for.body.lr.ph ]
  %call = tail call %struct.sv* @Perl_newSV(i64 0) #5
  %arrayidx = getelementptr inbounds %struct.sv** %sarg, i64 %indvars.iv
  %1 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  tail call void @Perl_sv_setsv_flags(%struct.sv* %call, %struct.sv* %1, i32 2) #5
  %2 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %2, 3
  %3 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp1 = icmp sgt i32 %add, %3
  br i1 %cmp1, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  %.pre21 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %for.body
  %mul.i = mul nsw i32 %3, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %4 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %5 = bitcast %union.any* %4 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %5, i64 %mul1.i) #5
  %6 = bitcast i8* %call.i to %union.any*
  store %union.any* %6, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then
  %7 = phi %union.any* [ %6, %if.then ], [ %.pre21, %for.body.if.end_crit_edge ]
  %8 = phi i32 [ %.pre, %if.then ], [ %2, %for.body.if.end_crit_edge ]
  %9 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %10 = bitcast %struct.sv* %9 to i8*
  %inc = add nsw i32 %8, 1
  %idxprom4 = sext i32 %8 to i64
  %any_ptr = getelementptr inbounds %union.any* %7, i64 %idxprom4, i32 0
  store i8* %10, i8** %any_ptr, align 8, !tbaa !0
  %11 = bitcast %struct.sv* %call to i8*
  %inc6 = add nsw i32 %8, 2
  %idxprom7 = sext i32 %inc to i64
  %12 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr9 = getelementptr inbounds %union.any* %12, i64 %idxprom7, i32 0
  store i8* %11, i8** %any_ptr9, align 8, !tbaa !0
  %inc10 = add nsw i32 %8, 3
  store i32 %inc10, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom11 = sext i32 %inc6 to i64
  %13 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds %union.any* %13, i64 %idxprom11
  %any_i32 = bitcast %union.any* %arrayidx12 to i32*
  store i32 0, i32* %any_i32, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %0
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_destructor(void (i8*)* %f, i8* %p) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 3
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre7 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre7, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %inc = add nsw i32 %6, 1
  %idxprom = sext i32 %6 to i64
  %7 = getelementptr inbounds %union.any* %5, i64 %idxprom, i32 0
  %f.c = bitcast void (i8*)* %f to i8*
  store i8* %f.c, i8** %7, align 8, !tbaa !0
  %inc1 = add nsw i32 %6, 2
  %idxprom2 = sext i32 %inc to i64
  %8 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr = getelementptr inbounds %union.any* %8, i64 %idxprom2, i32 0
  store i8* %p, i8** %any_ptr, align 8, !tbaa !0
  %inc4 = add nsw i32 %6, 3
  store i32 %inc4, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom5 = sext i32 %inc1 to i64
  %9 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds %union.any* %9, i64 %idxprom5
  %any_i32 = bitcast %union.any* %arrayidx6 to i32*
  store i32 20, i32* %any_i32, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_destructor_x(void (i8*)* %f, i8* %p) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 3
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre7 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre7, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %inc = add nsw i32 %6, 1
  %idxprom = sext i32 %6 to i64
  %7 = getelementptr inbounds %union.any* %5, i64 %idxprom, i32 0
  %f.c = bitcast void (i8*)* %f to i8*
  store i8* %f.c, i8** %7, align 8, !tbaa !0
  %inc1 = add nsw i32 %6, 2
  %idxprom2 = sext i32 %inc to i64
  %8 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr = getelementptr inbounds %union.any* %8, i64 %idxprom2, i32 0
  store i8* %p, i8** %any_ptr, align 8, !tbaa !0
  %inc4 = add nsw i32 %6, 3
  store i32 %inc4, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom5 = sext i32 %inc1 to i64
  %9 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds %union.any* %9, i64 %idxprom5
  %any_i32 = bitcast %union.any* %arrayidx6 to i32*
  store i32 30, i32* %any_i32, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_aelem(%struct.av* %av, i32 %idx, %struct.sv** nocapture %sptr) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 4
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = bitcast %struct.av* %av to %struct.sv*
  store %struct.sv* %5, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool = icmp eq %struct.av* %av, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %6 = getelementptr inbounds %struct.av* %av, i64 0, i32 1
  %7 = load i32* %6, align 4, !tbaa !4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %6, align 4, !tbaa !4
  br label %land.end

land.end:                                         ; preds = %if.end, %land.rhs
  %8 = bitcast %struct.av* %av to i8*
  %9 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %inc2 = add nsw i32 %9, 1
  %idxprom = sext i32 %9 to i64
  %10 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr = getelementptr inbounds %union.any* %10, i64 %idxprom, i32 0
  store i8* %8, i8** %any_ptr, align 8, !tbaa !0
  %inc3 = add nsw i32 %9, 2
  store i32 %inc3, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom4 = sext i32 %inc2 to i64
  %11 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx5 = getelementptr inbounds %union.any* %11, i64 %idxprom4
  %any_i32 = bitcast %union.any* %arrayidx5 to i32*
  store i32 %idx, i32* %any_i32, align 4, !tbaa !4
  %12 = load %struct.sv** %sptr, align 8, !tbaa !0
  store %struct.sv* %12, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool6 = icmp eq %struct.sv* %12, null
  br i1 %tobool6, label %land.end11, label %land.rhs7

land.rhs7:                                        ; preds = %land.end
  %sv_refcnt8 = getelementptr inbounds %struct.sv* %12, i64 0, i32 1
  %13 = load i32* %sv_refcnt8, align 4, !tbaa !4
  %inc9 = add i32 %13, 1
  store i32 %inc9, i32* %sv_refcnt8, align 4, !tbaa !4
  br label %land.end11

land.end11:                                       ; preds = %land.end, %land.rhs7
  %14 = bitcast %struct.sv* %12 to i8*
  %15 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %inc13 = add nsw i32 %15, 1
  %idxprom14 = sext i32 %15 to i64
  %any_ptr16 = getelementptr inbounds %union.any* %11, i64 %idxprom14, i32 0
  store i8* %14, i8** %any_ptr16, align 8, !tbaa !0
  %inc17 = add nsw i32 %15, 2
  store i32 %inc17, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom18 = sext i32 %inc13 to i64
  %16 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx19 = getelementptr inbounds %union.any* %16, i64 %idxprom18
  %any_i3220 = bitcast %union.any* %arrayidx19 to i32*
  store i32 24, i32* %any_i3220, align 4, !tbaa !4
  %sv_any = getelementptr inbounds %struct.av* %av, i64 0, i32 0
  %17 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_flags = getelementptr inbounds %struct.xpvav* %17, i64 0, i32 9
  %18 = load i8* %xav_flags, align 1, !tbaa !1
  %19 = and i8 %18, 3
  %20 = icmp eq i8 %19, 2
  br i1 %20, label %if.then27, label %if.end35

if.then27:                                        ; preds = %land.end11
  %21 = load %struct.sv** %sptr, align 8, !tbaa !0
  store %struct.sv* %21, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool28 = icmp eq %struct.sv* %21, null
  br i1 %tobool28, label %if.end35, label %land.rhs29

land.rhs29:                                       ; preds = %if.then27
  %sv_refcnt30 = getelementptr inbounds %struct.sv* %21, i64 0, i32 1
  %22 = load i32* %sv_refcnt30, align 4, !tbaa !4
  %inc31 = add i32 %22, 1
  store i32 %inc31, i32* %sv_refcnt30, align 4, !tbaa !4
  br label %if.end35

if.end35:                                         ; preds = %land.end11, %land.rhs29, %if.then27
  %call = tail call fastcc %struct.sv* @S_save_scalar_at(%struct.sv** %sptr) #6
  %23 = load %struct.sv** %sptr, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %23, i64 0, i32 2
  %24 = load i32* %sv_flags, align 4, !tbaa !4
  %and36 = and i32 %24, 32768
  %tobool37 = icmp eq i32 %and36, 0
  br i1 %tobool37, label %if.end42, label %cond.true

cond.true:                                        ; preds = %if.end35
  %call38 = tail call %struct.magic* @Perl_mg_find(%struct.sv* %23, i32 112) #5
  %tobool39 = icmp eq %struct.magic* %call38, null
  br i1 %tobool39, label %if.end42, label %if.then40

if.then40:                                        ; preds = %cond.true
  %call41 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %23) #5
  br label %if.end42

if.end42:                                         ; preds = %cond.true, %if.end35, %if.then40
  ret void
}

; Function Attrs: optsize
declare %struct.magic* @Perl_mg_find(%struct.sv*, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_helem(%struct.hv* %hv, %struct.sv* %key, %struct.sv** nocapture %sptr) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 4
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = bitcast %struct.hv* %hv to %struct.sv*
  store %struct.sv* %5, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool = icmp eq %struct.hv* %hv, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %6 = getelementptr inbounds %struct.hv* %hv, i64 0, i32 1
  %7 = load i32* %6, align 4, !tbaa !4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %6, align 4, !tbaa !4
  br label %land.end

land.end:                                         ; preds = %if.end, %land.rhs
  %8 = bitcast %struct.hv* %hv to i8*
  %9 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %inc2 = add nsw i32 %9, 1
  store i32 %inc2, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom = sext i32 %9 to i64
  %10 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr = getelementptr inbounds %union.any* %10, i64 %idxprom, i32 0
  store i8* %8, i8** %any_ptr, align 8, !tbaa !0
  store %struct.sv* %key, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool3 = icmp eq %struct.sv* %key, null
  br i1 %tobool3, label %land.end8, label %land.rhs4

land.rhs4:                                        ; preds = %land.end
  %sv_refcnt5 = getelementptr inbounds %struct.sv* %key, i64 0, i32 1
  %11 = load i32* %sv_refcnt5, align 4, !tbaa !4
  %inc6 = add i32 %11, 1
  store i32 %inc6, i32* %sv_refcnt5, align 4, !tbaa !4
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %land.end8

land.end8:                                        ; preds = %land.end, %land.rhs4
  %12 = phi i32 [ %inc2, %land.end ], [ %.pre, %land.rhs4 ]
  %13 = bitcast %struct.sv* %key to i8*
  %inc10 = add nsw i32 %12, 1
  store i32 %inc10, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom11 = sext i32 %12 to i64
  %14 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr13 = getelementptr inbounds %union.any* %14, i64 %idxprom11, i32 0
  store i8* %13, i8** %any_ptr13, align 8, !tbaa !0
  %15 = load %struct.sv** %sptr, align 8, !tbaa !0
  store %struct.sv* %15, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool14 = icmp eq %struct.sv* %15, null
  br i1 %tobool14, label %land.end19, label %land.rhs15

land.rhs15:                                       ; preds = %land.end8
  %sv_refcnt16 = getelementptr inbounds %struct.sv* %15, i64 0, i32 1
  %16 = load i32* %sv_refcnt16, align 4, !tbaa !4
  %inc17 = add i32 %16, 1
  store i32 %inc17, i32* %sv_refcnt16, align 4, !tbaa !4
  %.pre38 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %land.end19

land.end19:                                       ; preds = %land.end8, %land.rhs15
  %17 = phi i32 [ %inc10, %land.end8 ], [ %.pre38, %land.rhs15 ]
  %18 = bitcast %struct.sv* %15 to i8*
  %inc21 = add nsw i32 %17, 1
  %idxprom22 = sext i32 %17 to i64
  %19 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr24 = getelementptr inbounds %union.any* %19, i64 %idxprom22, i32 0
  store i8* %18, i8** %any_ptr24, align 8, !tbaa !0
  %inc25 = add nsw i32 %17, 2
  store i32 %inc25, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom26 = sext i32 %inc21 to i64
  %20 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx27 = getelementptr inbounds %union.any* %20, i64 %idxprom26
  %any_i32 = bitcast %union.any* %arrayidx27 to i32*
  store i32 25, i32* %any_i32, align 4, !tbaa !4
  %call = tail call fastcc %struct.sv* @S_save_scalar_at(%struct.sv** %sptr) #6
  %21 = load %struct.sv** %sptr, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %21, i64 0, i32 2
  %22 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %22, 32768
  %tobool28 = icmp eq i32 %and, 0
  br i1 %tobool28, label %if.end33, label %cond.true

cond.true:                                        ; preds = %land.end19
  %call29 = tail call %struct.magic* @Perl_mg_find(%struct.sv* %21, i32 112) #5
  %tobool30 = icmp eq %struct.magic* %call29, null
  br i1 %tobool30, label %if.end33, label %if.then31

if.then31:                                        ; preds = %cond.true
  %call32 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %21) #5
  br label %if.end33

if.end33:                                         ; preds = %cond.true, %land.end19, %if.then31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_op() #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %0, 2
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre4 = load %union.any** @PL_savestack, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %1, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %2 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %3 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul1.i) #5
  %4 = bitcast i8* %call.i to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8, !tbaa !0
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %union.any* [ %4, %if.then ], [ %.pre4, %entry.if.end_crit_edge ]
  %6 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %7 = load %struct.op** @PL_op, align 8, !tbaa !0
  %8 = bitcast %struct.op* %7 to i8*
  %inc = add nsw i32 %6, 1
  %idxprom = sext i32 %6 to i64
  %any_ptr = getelementptr inbounds %union.any* %5, i64 %idxprom, i32 0
  store i8* %8, i8** %any_ptr, align 8, !tbaa !0
  %inc1 = add nsw i32 %6, 2
  store i32 %inc1, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom2 = sext i32 %inc to i64
  %9 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx3 = getelementptr inbounds %union.any* %9, i64 %idxprom2
  %any_i32 = bitcast %union.any* %arrayidx3 to i32*
  store i32 26, i32* %any_i32, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_save_alloc(i32 %size, i32 %pad) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %arrayidx.idx = shl i32 %0, 3
  %add = add i32 %arrayidx.idx, %pad
  %add2 = add i32 %size, -1
  %sub = add i32 %add2, %pad
  %conv3 = sext i32 %sub to i64
  %div = lshr i64 %conv3, 3
  %add4 = add i64 %div, 1
  %conv5 = trunc i64 %add4 to i32
  %add620 = add nsw i32 %0, %conv5
  %add721 = add nsw i32 %add620, 2
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp22 = icmp sgt i32 %add721, %1
  %.pre = load %union.any** @PL_savestack, align 8, !tbaa !0
  br i1 %cmp22, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %2 = phi %union.any* [ %5, %while.body ], [ %.pre, %entry ]
  %3 = phi i32 [ %7, %while.body ], [ %1, %entry ]
  %mul.i = mul nsw i32 %3, 3
  %div.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div.i, 4
  store i32 %add.i, i32* @PL_savestack_max, align 4, !tbaa !4
  %4 = bitcast %union.any* %2 to i8*
  %conv.i = sext i32 %add.i to i64
  %mul1.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @Perl_safesysrealloc(i8* %4, i64 %mul1.i) #5
  %5 = bitcast i8* %call.i to %union.any*
  store %union.any* %5, %union.any** @PL_savestack, align 8, !tbaa !0
  %6 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add6 = add nsw i32 %6, %conv5
  %add7 = add nsw i32 %add6, 2
  %7 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp = icmp sgt i32 %add7, %7
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %entry, %while.body
  %8 = phi %union.any* [ %5, %while.body ], [ %.pre, %entry ]
  %add6.lcssa = phi i32 [ %add6, %while.body ], [ %add620, %entry ]
  %inc = add nsw i32 %add6.lcssa, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom10 = sext i32 %add6.lcssa to i64
  %arrayidx11 = getelementptr inbounds %union.any* %8, i64 %idxprom10
  %any_i32 = bitcast %union.any* %arrayidx11 to i32*
  store i32 %conv5, i32* %any_i32, align 4, !tbaa !4
  %9 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %inc12 = add nsw i32 %9, 1
  store i32 %inc12, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom13 = sext i32 %9 to i64
  %arrayidx14 = getelementptr inbounds %union.any* %8, i64 %idxprom13
  %any_i3215 = bitcast %union.any* %arrayidx14 to i32*
  store i32 28, i32* %any_i3215, align 4, !tbaa !4
  ret i32 %add
}

; Function Attrs: optsize
declare void @Perl_sv_replace(%struct.sv*, %struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_safesysfree(i8*) #1

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: optsize
declare signext i8 @Perl_sv_upgrade(%struct.sv*, i32) #1

; Function Attrs: optsize
declare void @Perl_sv_clear(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_gp_free(%struct.gv*) #1

; Function Attrs: optsize
declare void @Perl_op_free(%struct.op*) #1

; Function Attrs: optsize
declare void @Perl_sv_force_normal_flags(%struct.sv*, i32) #1

; Function Attrs: optsize
declare i32 @Perl_mg_free(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_av_clear(%struct.av*) #1

; Function Attrs: optsize
declare void @Perl_hv_clear(%struct.hv*) #1

; Function Attrs: optsize
declare i32 @Perl_sv_backoff(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.hv* @Perl_newHV() #1

; Function Attrs: optsize
declare %struct.sv* @Perl_hv_delete(%struct.hv*, i8*, i32, i32) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_av_fetch(%struct.av*, i32, i32) #1

; Function Attrs: optsize
declare %struct.he* @Perl_hv_fetch_ent(%struct.hv*, %struct.sv*, i32, i32) #1

; Function Attrs: nounwind optsize readnone uwtable
define void @Perl_cx_dump(%struct.context* nocapture %cx) #4 {
entry:
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_mg_get(%struct.sv*) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"long", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}

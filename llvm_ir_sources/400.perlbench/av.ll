; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/av.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.stackinfo = type { %struct.av*, %struct.context*, i32, i32, i32, %struct.stackinfo*, %struct.stackinfo*, i32 }
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
%struct.xpv = type { i8*, i64, i64 }

@PL_sv_undef = external global %struct.sv
@PL_Sv = external global %struct.sv*
@PL_stack_sp = external global %struct.sv**
@PL_tmps_floor = external global i32
@PL_tmps_ix = external global i32
@PL_curstackinfo = external global %struct.stackinfo*
@PL_stack_base = external global %struct.sv**
@PL_curstack = external global %struct.av*
@PL_stack_max = external global %struct.sv**
@PL_markstack_ptr = external global i32*
@PL_markstack_max = external global i32*
@.str = private unnamed_addr constant [7 x i8] c"EXTEND\00", align 1
@PL_stderrgv = external global %struct.gv*
@.str1 = private unnamed_addr constant [17 x i8] c"panic: POPSTACK\0A\00", align 1
@PL_nice_chunk_size = external global i32
@PL_nice_chunk = external global i8*
@.str2 = private unnamed_addr constant [17 x i8] c"NEGATIVE_INDICES\00", align 1
@PL_Xpv = external global %struct.xpv*
@PL_no_modify = external constant [0 x i8]
@.str3 = private unnamed_addr constant [5 x i8] c"PUSH\00", align 1
@.str4 = private unnamed_addr constant [4 x i8] c"POP\00", align 1
@.str5 = private unnamed_addr constant [8 x i8] c"UNSHIFT\00", align 1
@.str6 = private unnamed_addr constant [6 x i8] c"SHIFT\00", align 1
@.str7 = private unnamed_addr constant [18 x i8] c"panic: null array\00", align 1
@.str8 = private unnamed_addr constant [10 x i8] c"STORESIZE\00", align 1
@PL_curcop = external global %struct.cop*
@PL_dowarn = external global i8
@.str9 = private unnamed_addr constant [11 x i8] c"pseudohash\00", align 1
@.str10 = private unnamed_addr constant [29 x i8] c"Pseudo-hashes are deprecated\00", align 1
@.str11 = private unnamed_addr constant [29 x i8] c"Can't coerce array into hash\00", align 1
@.str12 = private unnamed_addr constant [41 x i8] c"Bad index while coercing array into hash\00", align 1
@.str13 = private unnamed_addr constant [31 x i8] c"No such pseudo-hash field \22%s\22\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Perl_av_reify(%struct.av* nocapture %av) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.av* %av, i64 0, i32 0
  %0 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_flags = getelementptr inbounds %struct.xpvav* %0, i64 0, i32 9
  %1 = load i8* %xav_flags, align 1, !tbaa !1
  %and = and i8 %1, 1
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %if.end, label %return

if.end:                                           ; preds = %entry
  %xav_max = getelementptr inbounds %struct.xpvav* %0, i64 0, i32 2
  %2 = load i64* %xav_max, align 8, !tbaa !3
  %add = add nsw i64 %2, 1
  %conv2 = trunc i64 %add to i32
  %sext = shl i64 %add, 32
  %conv365 = ashr exact i64 %sext, 32
  %xav_fill66 = getelementptr inbounds %struct.xpvav* %0, i64 0, i32 1
  %3 = load i64* %xav_fill66, align 8, !tbaa !3
  %add567 = add nsw i64 %3, 1
  %cmp68 = icmp sgt i64 %conv365, %add567
  br i1 %cmp68, label %while.body, label %while.cond8.preheader

while.cond8.preheader:                            ; preds = %while.body, %if.end
  %4 = phi %struct.xpvav* [ %0, %if.end ], [ %9, %while.body ]
  %key.0.lcssa = phi i32 [ %conv2, %if.end ], [ %dec, %while.body ]
  %tobool963 = icmp eq i32 %key.0.lcssa, 0
  br i1 %tobool963, label %while.end22, label %while.body10.lr.ph

while.body10.lr.ph:                               ; preds = %while.cond8.preheader
  %5 = sext i32 %key.0.lcssa to i64
  br label %while.body10

while.body:                                       ; preds = %if.end, %while.body
  %6 = phi %struct.xpvav* [ %9, %while.body ], [ %0, %if.end ]
  %key.069 = phi i32 [ %dec, %while.body ], [ %conv2, %if.end ]
  %dec = add nsw i32 %key.069, -1
  %idxprom = sext i32 %dec to i64
  %xav_array = getelementptr inbounds %struct.xpvav* %6, i64 0, i32 0
  %7 = load i8** %xav_array, align 8, !tbaa !0
  %8 = bitcast i8* %7 to %struct.sv**
  %arrayidx = getelementptr inbounds %struct.sv** %8, i64 %idxprom
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx, align 8, !tbaa !0
  %9 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %9, i64 0, i32 1
  %10 = load i64* %xav_fill, align 8, !tbaa !3
  %add5 = add nsw i64 %10, 1
  %cmp = icmp sgt i64 %idxprom, %add5
  br i1 %cmp, label %while.body, label %while.cond8.preheader

while.body10:                                     ; preds = %while.cond8.backedge, %while.body10.lr.ph
  %11 = phi %struct.xpvav* [ %4, %while.body10.lr.ph ], [ %.pre, %while.cond8.backedge ]
  %indvars.iv70 = phi i64 [ %5, %while.body10.lr.ph ], [ %indvars.iv.next71, %while.cond8.backedge ]
  %indvars.iv.next71 = add i64 %indvars.iv70, -1
  %xav_array14 = getelementptr inbounds %struct.xpvav* %11, i64 0, i32 0
  %12 = load i8** %xav_array14, align 8, !tbaa !0
  %13 = bitcast i8* %12 to %struct.sv**
  %arrayidx15 = getelementptr inbounds %struct.sv** %13, i64 %indvars.iv.next71
  %14 = load %struct.sv** %arrayidx15, align 8, !tbaa !0
  %cmp16 = icmp eq %struct.sv* %14, @PL_sv_undef
  br i1 %cmp16, label %while.cond8.backedge, label %if.then18

while.cond8.backedge:                             ; preds = %while.body10, %if.then18, %land.rhs
  %15 = trunc i64 %indvars.iv.next71 to i32
  %tobool9 = icmp eq i32 %15, 0
  %.pre = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  br i1 %tobool9, label %while.end22, label %while.body10

if.then18:                                        ; preds = %while.body10
  store %struct.sv* %14, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool19 = icmp eq %struct.sv* %14, null
  br i1 %tobool19, label %while.cond8.backedge, label %land.rhs

land.rhs:                                         ; preds = %if.then18
  %sv_refcnt = getelementptr inbounds %struct.sv* %14, i64 0, i32 1
  %16 = load i32* %sv_refcnt, align 4, !tbaa !4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %sv_refcnt, align 4, !tbaa !4
  br label %while.cond8.backedge

while.end22:                                      ; preds = %while.cond8.backedge, %while.cond8.preheader
  %17 = phi %struct.xpvav* [ %4, %while.cond8.preheader ], [ %.pre, %while.cond8.backedge ]
  %xav_array24 = getelementptr inbounds %struct.xpvav* %17, i64 0, i32 0
  %18 = load i8** %xav_array24, align 8, !tbaa !0
  %xav_alloc = getelementptr inbounds %struct.xpvav* %17, i64 0, i32 7
  %19 = load %struct.sv*** %xav_alloc, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %20 = and i64 %sub.ptr.sub, 34359738360
  %tobool2861 = icmp eq i64 %20, 0
  br i1 %tobool2861, label %while.end35, label %while.body29.lr.ph

while.body29.lr.ph:                               ; preds = %while.end22
  %sext79 = shl i64 %sub.ptr.sub, 29
  %21 = ashr exact i64 %sext79, 32
  br label %while.body29

while.body29:                                     ; preds = %while.body29.while.body29_crit_edge, %while.body29.lr.ph
  %22 = phi %struct.sv** [ %19, %while.body29.lr.ph ], [ %.pre77, %while.body29.while.body29_crit_edge ]
  %indvars.iv = phi i64 [ %21, %while.body29.lr.ph ], [ %indvars.iv.next, %while.body29.while.body29_crit_edge ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %arrayidx34 = getelementptr inbounds %struct.sv** %22, i64 %indvars.iv.next
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx34, align 8, !tbaa !0
  %23 = trunc i64 %indvars.iv.next to i32
  %tobool28 = icmp eq i32 %23, 0
  %.pre75 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  br i1 %tobool28, label %while.end35, label %while.body29.while.body29_crit_edge

while.body29.while.body29_crit_edge:              ; preds = %while.body29
  %xav_alloc33.phi.trans.insert = getelementptr inbounds %struct.xpvav* %.pre75, i64 0, i32 7
  %.pre77 = load %struct.sv*** %xav_alloc33.phi.trans.insert, align 8, !tbaa !0
  br label %while.body29

while.end35:                                      ; preds = %while.body29, %while.end22
  %24 = phi %struct.xpvav* [ %17, %while.end22 ], [ %.pre75, %while.body29 ]
  %xav_flags37 = getelementptr inbounds %struct.xpvav* %24, i64 0, i32 9
  %25 = load i8* %xav_flags37, align 1, !tbaa !1
  %and39 = and i8 %25, -3
  store i8 %and39, i8* %xav_flags37, align 1, !tbaa !1
  %26 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_flags42 = getelementptr inbounds %struct.xpvav* %26, i64 0, i32 9
  %27 = load i8* %xav_flags42, align 1, !tbaa !1
  %or = or i8 %27, 1
  store i8 %or, i8* %xav_flags42, align 1, !tbaa !1
  br label %return

return:                                           ; preds = %entry, %while.end35
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_av_extend(%struct.av* %av, i32 %key) #0 {
entry:
  %0 = bitcast %struct.av* %av to %struct.sv*
  %1 = getelementptr inbounds %struct.av* %av, i64 0, i32 2
  %2 = load i32* %1, align 4, !tbaa !4
  %and = and i32 %2, 32768
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end98, label %cond.end

cond.end:                                         ; preds = %entry
  %call = tail call %struct.magic* @Perl_mg_find(%struct.sv* %0, i32 80) #3
  %tobool1 = icmp eq %struct.magic* %call, null
  br i1 %tobool1, label %if.end98, label %if.then

if.then:                                          ; preds = %cond.end
  %3 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  tail call void @Perl_push_scope() #3
  tail call void @Perl_save_int(i32* @PL_tmps_floor) #3
  %4 = load i32* @PL_tmps_ix, align 4, !tbaa !4
  store i32 %4, i32* @PL_tmps_floor, align 4, !tbaa !4
  %5 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next = getelementptr inbounds %struct.stackinfo* %5, i64 0, i32 6
  %6 = load %struct.stackinfo** %si_next, align 8, !tbaa !0
  %tobool2 = icmp eq %struct.stackinfo* %6, null
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %call4 = tail call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13) #3
  %7 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev = getelementptr inbounds %struct.stackinfo* %call4, i64 0, i32 5
  store %struct.stackinfo* %7, %struct.stackinfo** %si_prev, align 8, !tbaa !0
  %8 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next5 = getelementptr inbounds %struct.stackinfo* %8, i64 0, i32 6
  store %struct.stackinfo* %call4, %struct.stackinfo** %si_next5, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then3
  %next.0 = phi %struct.stackinfo* [ %6, %if.then ], [ %call4, %if.then3 ]
  %si_type = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 4
  store i32 2, i32* %si_type, align 4, !tbaa !4
  %si_cxix = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 2
  store i32 -1, i32* %si_cxix, align 4, !tbaa !4
  %si_stack = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 0
  %9 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.av* %9, i64 0, i32 0
  %10 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %10, i64 0, i32 1
  store i64 0, i64* %xav_fill, align 8, !tbaa !3
  %11 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %3 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %12 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any6 = getelementptr inbounds %struct.av* %12, i64 0, i32 0
  %13 = load %struct.xpvav** %sv_any6, align 8, !tbaa !0
  %xav_fill7 = getelementptr inbounds %struct.xpvav* %13, i64 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill7, align 8, !tbaa !3
  %xav_array = getelementptr inbounds %struct.xpvav* %10, i64 0, i32 0
  %14 = load i8** %xav_array, align 8, !tbaa !0
  %15 = bitcast i8* %14 to %struct.sv**
  store %struct.sv** %15, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %16 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any11 = getelementptr inbounds %struct.av* %16, i64 0, i32 0
  %17 = load %struct.xpvav** %sv_any11, align 8, !tbaa !0
  %xav_max = getelementptr inbounds %struct.xpvav* %17, i64 0, i32 2
  %18 = load i64* %xav_max, align 8, !tbaa !3
  %add.ptr = getelementptr inbounds %struct.sv** %15, i64 %18
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %19 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any13 = getelementptr inbounds %struct.av* %19, i64 0, i32 0
  %20 = load %struct.xpvav** %sv_any13, align 8, !tbaa !0
  %xav_fill14 = getelementptr inbounds %struct.xpvav* %20, i64 0, i32 1
  %21 = load i64* %xav_fill14, align 8, !tbaa !3
  %add.ptr15 = getelementptr inbounds %struct.sv** %15, i64 %21
  store %struct.sv** %add.ptr15, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %22 = load %struct.av** %si_stack, align 8, !tbaa !0
  store %struct.av* %22, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %next.0, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %23 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %23, i64 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %24 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp = icmp eq i32* %incdec.ptr, %24
  br i1 %cmp, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end
  tail call void @Perl_markstack_grow() #3
  %.pre393 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %.pre394 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %.pre395 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end
  %25 = phi %struct.sv** [ %.pre395, %if.then17 ], [ %add.ptr, %if.end ]
  %26 = phi i32* [ %.pre394, %if.then17 ], [ %incdec.ptr, %if.end ]
  %27 = phi %struct.sv** [ %.pre393, %if.then17 ], [ %15, %if.end ]
  %sub.ptr.lhs.cast19 = ptrtoint %struct.sv** %add.ptr15 to i64
  %sub.ptr.rhs.cast20 = ptrtoint %struct.sv** %27 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  %sub.ptr.div22382 = lshr exact i64 %sub.ptr.sub21, 3
  %conv = trunc i64 %sub.ptr.div22382 to i32
  store i32 %conv, i32* %26, align 4, !tbaa !4
  %sub.ptr.lhs.cast23 = ptrtoint %struct.sv** %25 to i64
  %sub.ptr.sub25 = sub i64 %sub.ptr.lhs.cast23, %sub.ptr.lhs.cast19
  %cmp27 = icmp slt i64 %sub.ptr.sub25, 16
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end18
  %call30 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %add.ptr15, %struct.sv** %add.ptr15, i32 2) #3
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end18
  %sp.0 = phi %struct.sv** [ %call30, %if.then29 ], [ %add.ptr15, %if.end18 ]
  %mg_obj = getelementptr inbounds %struct.magic* %call, i64 0, i32 5
  %28 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool32 = icmp eq %struct.sv* %28, null
  br i1 %tobool32, label %cond.false35, label %cond.end38

cond.false35:                                     ; preds = %if.end31
  %call36 = tail call %struct.sv* @Perl_newRV(%struct.sv* %0) #3
  %call37 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call36) #3
  br label %cond.end38

cond.end38:                                       ; preds = %if.end31, %cond.false35
  %cond39 = phi %struct.sv* [ %call37, %cond.false35 ], [ %28, %if.end31 ]
  %incdec.ptr40 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %cond39, %struct.sv** %incdec.ptr40, align 8, !tbaa !0
  %add = add nsw i32 %key, 1
  %conv41 = sext i32 %add to i64
  %call42 = tail call %struct.sv* @Perl_newSViv(i64 %conv41) #3
  %call43 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call42) #3
  %incdec.ptr44 = getelementptr inbounds %struct.sv** %sp.0, i64 2
  store %struct.sv* %call43, %struct.sv** %incdec.ptr44, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr44, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %call45 = tail call i32 @Perl_call_method(i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0), i32 2) #3
  %29 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %30 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev47 = getelementptr inbounds %struct.stackinfo* %30, i64 0, i32 5
  %31 = load %struct.stackinfo** %si_prev47, align 8, !tbaa !0
  %tobool48 = icmp eq %struct.stackinfo* %31, null
  br i1 %tobool48, label %if.then49, label %if.end75

if.then49:                                        ; preds = %cond.end38
  %32 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %tobool50 = icmp eq %struct.gv* %32, null
  br i1 %tobool50, label %cond.false70, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then49
  %sv_flags51 = getelementptr inbounds %struct.gv* %32, i64 0, i32 2
  %33 = load i32* %sv_flags51, align 4, !tbaa !4
  %and52 = and i32 %33, 255
  %cmp53 = icmp eq i32 %and52, 13
  br i1 %cmp53, label %land.lhs.true55, label %cond.false70

land.lhs.true55:                                  ; preds = %land.lhs.true
  %sv_any56 = getelementptr inbounds %struct.gv* %32, i64 0, i32 0
  %34 = load %struct.xpvgv** %sv_any56, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %34, i64 0, i32 7
  %35 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_io = getelementptr inbounds %struct.gp* %35, i64 0, i32 2
  %36 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool57 = icmp eq %struct.io* %36, null
  br i1 %tobool57, label %cond.false70, label %land.lhs.true58

land.lhs.true58:                                  ; preds = %land.lhs.true55
  %sv_any62 = getelementptr inbounds %struct.io* %36, i64 0, i32 0
  %37 = load %struct.xpvio** %sv_any62, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %37, i64 0, i32 8
  %38 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool63 = icmp eq %struct._PerlIO** %38, null
  br i1 %tobool63, label %cond.false70, label %cond.end72

cond.false70:                                     ; preds = %land.lhs.true58, %land.lhs.true55, %if.then49, %land.lhs.true
  %call71 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  br label %cond.end72

cond.end72:                                       ; preds = %land.lhs.true58, %cond.false70
  %cond73 = phi %struct._PerlIO** [ %call71, %cond.false70 ], [ %38, %land.lhs.true58 ]
  %call74 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond73, i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)) #3
  tail call void @Perl_my_exit(i32 1) #3
  br label %if.end75

if.end75:                                         ; preds = %cond.end38, %cond.end72
  %39 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast76 = ptrtoint %struct.sv** %29 to i64
  %sub.ptr.rhs.cast77 = ptrtoint %struct.sv** %39 to i64
  %sub.ptr.sub78 = sub i64 %sub.ptr.lhs.cast76, %sub.ptr.rhs.cast77
  %sub.ptr.div79 = ashr exact i64 %sub.ptr.sub78, 3
  %40 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any80 = getelementptr inbounds %struct.av* %40, i64 0, i32 0
  %41 = load %struct.xpvav** %sv_any80, align 8, !tbaa !0
  %xav_fill81 = getelementptr inbounds %struct.xpvav* %41, i64 0, i32 1
  store i64 %sub.ptr.div79, i64* %xav_fill81, align 8, !tbaa !3
  %si_stack82 = getelementptr inbounds %struct.stackinfo* %31, i64 0, i32 0
  %42 = load %struct.av** %si_stack82, align 8, !tbaa !0
  %sv_any83 = getelementptr inbounds %struct.av* %42, i64 0, i32 0
  %43 = load %struct.xpvav** %sv_any83, align 8, !tbaa !0
  %xav_array84 = getelementptr inbounds %struct.xpvav* %43, i64 0, i32 0
  %44 = load i8** %xav_array84, align 8, !tbaa !0
  %45 = bitcast i8* %44 to %struct.sv**
  store %struct.sv** %45, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %46 = load %struct.av** %si_stack82, align 8, !tbaa !0
  %sv_any86 = getelementptr inbounds %struct.av* %46, i64 0, i32 0
  %47 = load %struct.xpvav** %sv_any86, align 8, !tbaa !0
  %xav_max87 = getelementptr inbounds %struct.xpvav* %47, i64 0, i32 2
  %48 = load i64* %xav_max87, align 8, !tbaa !3
  %add.ptr88 = getelementptr inbounds %struct.sv** %45, i64 %48
  store %struct.sv** %add.ptr88, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %49 = load %struct.av** %si_stack82, align 8, !tbaa !0
  %sv_any90 = getelementptr inbounds %struct.av* %49, i64 0, i32 0
  %50 = load %struct.xpvav** %sv_any90, align 8, !tbaa !0
  %xav_fill91 = getelementptr inbounds %struct.xpvav* %50, i64 0, i32 1
  %51 = load i64* %xav_fill91, align 8, !tbaa !3
  %add.ptr92 = getelementptr inbounds %struct.sv** %45, i64 %51
  store %struct.sv** %add.ptr92, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %52 = load %struct.av** %si_stack82, align 8, !tbaa !0
  store %struct.av* %52, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %31, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %53 = load i32* @PL_tmps_ix, align 4, !tbaa !4
  %54 = load i32* @PL_tmps_floor, align 4, !tbaa !4
  %cmp94 = icmp sgt i32 %53, %54
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.end75
  tail call void @Perl_free_tmps() #3
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.end75
  tail call void @Perl_pop_scope() #3
  br label %if.end292

if.end98:                                         ; preds = %entry, %cond.end
  %conv99 = sext i32 %key to i64
  %sv_any100 = getelementptr inbounds %struct.av* %av, i64 0, i32 0
  %55 = load %struct.xpvav** %sv_any100, align 8, !tbaa !0
  %xav_max101 = getelementptr inbounds %struct.xpvav* %55, i64 0, i32 2
  %56 = load i64* %xav_max101, align 8, !tbaa !3
  %cmp102 = icmp sgt i64 %conv99, %56
  br i1 %cmp102, label %if.then104, label %if.end292

if.then104:                                       ; preds = %if.end98
  %xav_alloc = getelementptr inbounds %struct.xpvav* %55, i64 0, i32 7
  %57 = load %struct.sv*** %xav_alloc, align 8, !tbaa !0
  %xav_array108 = getelementptr inbounds %struct.xpvav* %55, i64 0, i32 0
  %58 = load i8** %xav_array108, align 8, !tbaa !0
  %59 = bitcast i8* %58 to %struct.sv**
  %cmp109 = icmp eq %struct.sv** %57, %59
  br i1 %cmp109, label %if.else, label %if.then111

if.then111:                                       ; preds = %if.then104
  %xav_fill115 = getelementptr inbounds %struct.xpvav* %55, i64 0, i32 1
  %60 = load i64* %xav_fill115, align 8, !tbaa !3
  %sub.ptr.lhs.cast122 = ptrtoint i8* %58 to i64
  %sub.ptr.rhs.cast123 = ptrtoint %struct.sv** %57 to i64
  %sub.ptr.sub124 = sub i64 %sub.ptr.lhs.cast122, %sub.ptr.rhs.cast123
  %61 = bitcast %struct.sv** %57 to i8*
  %add133 = shl i64 %60, 3
  %mul = add i64 %add133, 8
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %61, i8* %58, i64 %mul, i32 1, i1 false)
  %sext381 = shl i64 %sub.ptr.sub124, 29
  %conv134 = ashr exact i64 %sext381, 32
  %62 = load %struct.xpvav** %sv_any100, align 8, !tbaa !0
  %xav_max136 = getelementptr inbounds %struct.xpvav* %62, i64 0, i32 2
  %63 = load i64* %xav_max136, align 8, !tbaa !3
  %add137 = add nsw i64 %63, %conv134
  store i64 %add137, i64* %xav_max136, align 8, !tbaa !3
  %xav_alloc139 = getelementptr inbounds %struct.xpvav* %62, i64 0, i32 7
  %64 = load %struct.sv*** %xav_alloc139, align 8, !tbaa !0
  %65 = bitcast %struct.sv** %64 to i8*
  %xpv_pv = getelementptr inbounds %struct.xpvav* %62, i64 0, i32 0
  store i8* %65, i8** %xpv_pv, align 8, !tbaa !0
  %66 = load %struct.xpvav** %sv_any100, align 8, !tbaa !0
  %xav_flags = getelementptr inbounds %struct.xpvav* %66, i64 0, i32 9
  %67 = load i8* %xav_flags, align 1, !tbaa !1
  %and143 = and i8 %67, 1
  %tobool144 = icmp eq i8 %and143, 0
  br i1 %tobool144, label %if.end147, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then111
  %68 = and i64 %sub.ptr.sub124, 34359738360
  %tobool146386 = icmp eq i64 %68, 0
  br i1 %tobool146386, label %if.end147, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %sext396 = shl i64 %sub.ptr.sub124, 29
  %69 = ashr exact i64 %sext396, 32
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %indvars.iv388 = phi i64 [ %69, %while.body.lr.ph ], [ %indvars.iv.next389, %while.body ]
  %indvars.iv.next389 = add i64 %indvars.iv388, -1
  %add.ptr117.sum = add i64 %60, %indvars.iv388
  %arrayidx = getelementptr inbounds %struct.sv** %57, i64 %add.ptr117.sum
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx, align 8, !tbaa !0
  %70 = trunc i64 %indvars.iv.next389 to i32
  %tobool146 = icmp eq i32 %70, 0
  br i1 %tobool146, label %while.cond.if.end147.loopexit_crit_edge, label %while.body

while.cond.if.end147.loopexit_crit_edge:          ; preds = %while.body
  %.pre391.pre = load %struct.xpvav** %sv_any100, align 8, !tbaa !0
  br label %if.end147

if.end147:                                        ; preds = %while.cond.preheader, %while.cond.if.end147.loopexit_crit_edge, %if.then111
  %71 = phi %struct.xpvav* [ %66, %if.then111 ], [ %.pre391.pre, %while.cond.if.end147.loopexit_crit_edge ], [ %66, %while.cond.preheader ]
  %xav_max150 = getelementptr inbounds %struct.xpvav* %71, i64 0, i32 2
  %72 = load i64* %xav_max150, align 8, !tbaa !3
  %sub = add nsw i64 %72, -10
  %cmp151 = icmp sgt i64 %conv99, %sub
  br i1 %cmp151, label %resize, label %if.end292

if.else:                                          ; preds = %if.then104
  %tobool162 = icmp eq %struct.sv** %57, null
  br i1 %tobool162, label %if.else250, label %if.then163

if.then163:                                       ; preds = %if.else
  %div = sdiv i64 %56, 5
  br label %resize

resize:                                           ; preds = %if.end147, %if.then163
  %.pn = phi i64 [ %div, %if.then163 ], [ %72, %if.end147 ]
  %newmax.0.in = add nsw i64 %.pn, %conv99
  %add171 = shl i64 %newmax.0.in, 32
  %sext = add i64 %add171, 4294967296
  %mul173 = ashr exact i64 %sext, 29
  br label %while.cond174

while.cond174:                                    ; preds = %while.cond174, %resize
  %itmp.0 = phi i64 [ 16, %resize ], [ %add179, %while.cond174 ]
  %sub175 = add nsw i64 %itmp.0, -16
  %cmp176 = icmp ult i64 %sub175, %mul173
  %add179 = shl nsw i64 %itmp.0, 1
  br i1 %cmp176, label %while.cond174, label %while.end180

while.end180:                                     ; preds = %while.cond174
  %div182 = lshr i64 %sub175, 3
  %sub183 = add nsw i64 %div182, 4294967295
  %conv184 = trunc i64 %sub183 to i32
  %add185 = shl i64 %sub183, 32
  %sext378 = add i64 %add185, 4294967296
  %mul187 = ashr exact i64 %sext378, 29
  %call188 = tail call i8* @Perl_safesysmalloc(i64 %mul187) #3
  %73 = bitcast i8* %call188 to %struct.sv**
  %74 = load %struct.xpvav** %sv_any100, align 8, !tbaa !0
  %xav_alloc190 = getelementptr inbounds %struct.xpvav* %74, i64 0, i32 7
  %75 = load %struct.sv*** %xav_alloc190, align 8, !tbaa !0
  %76 = bitcast %struct.sv** %75 to i8*
  %xav_max192 = getelementptr inbounds %struct.xpvav* %74, i64 0, i32 2
  %77 = load i64* %xav_max192, align 8, !tbaa !3
  %add193 = shl i64 %77, 3
  %mul194 = add i64 %add193, 8
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call188, i8* %76, i64 %mul194, i32 1, i1 false)
  %78 = load %struct.xpvav** %sv_any100, align 8, !tbaa !0
  %xav_max196 = getelementptr inbounds %struct.xpvav* %78, i64 0, i32 2
  %79 = load i64* %xav_max196, align 8, !tbaa !3
  %cmp197 = icmp sgt i64 %79, 64
  %xav_alloc203 = getelementptr inbounds %struct.xpvav* %78, i64 0, i32 7
  %80 = load %struct.sv*** %xav_alloc203, align 8, !tbaa !0
  %81 = bitcast %struct.sv** %80 to i8*
  br i1 %cmp197, label %if.then199, label %if.else219

if.then199:                                       ; preds = %while.end180
  %add206 = shl i64 %79, 3
  %mul207 = add i64 %add206, 8
  %conv208 = trunc i64 %mul207 to i32
  %82 = load i32* @PL_nice_chunk_size, align 4, !tbaa !4
  %cmp209 = icmp ugt i32 %conv208, %82
  br i1 %cmp209, label %if.then211, label %if.else215

if.then211:                                       ; preds = %if.then199
  %83 = load i8** @PL_nice_chunk, align 8, !tbaa !0
  %tobool212 = icmp eq i8* %83, null
  br i1 %tobool212, label %if.end214, label %if.then213

if.then213:                                       ; preds = %if.then211
  tail call void @Perl_safesysfree(i8* %83) #3
  br label %if.end214

if.end214:                                        ; preds = %if.then211, %if.then213
  store i8* %81, i8** @PL_nice_chunk, align 8, !tbaa !0
  store i32 %conv208, i32* @PL_nice_chunk_size, align 4, !tbaa !4
  br label %if.end222

if.else215:                                       ; preds = %if.then199
  tail call void @Perl_safesysfree(i8* %81) #3
  br label %if.end222

if.else219:                                       ; preds = %while.end180
  tail call void @Perl_safesysfree(i8* %81) #3
  br label %if.end222

if.end222:                                        ; preds = %if.end214, %if.else215, %if.else219
  %84 = load %struct.xpvav** %sv_any100, align 8, !tbaa !0
  %xav_alloc224 = getelementptr inbounds %struct.xpvav* %84, i64 0, i32 7
  store %struct.sv** %73, %struct.sv*** %xav_alloc224, align 8, !tbaa !0
  %85 = load %struct.xpvav** %sv_any100, align 8, !tbaa !0
  %xav_alloc226 = getelementptr inbounds %struct.xpvav* %85, i64 0, i32 7
  %86 = load %struct.sv*** %xav_alloc226, align 8, !tbaa !0
  %xav_max228 = getelementptr inbounds %struct.xpvav* %85, i64 0, i32 2
  %87 = load i64* %xav_max228, align 8, !tbaa !3
  %add.ptr229.sum = add i64 %87, 1
  %add.ptr230 = getelementptr inbounds %struct.sv** %86, i64 %add.ptr229.sum
  %conv231 = ashr exact i64 %add185, 32
  %sub234 = sub nsw i64 %conv231, %87
  %conv235 = trunc i64 %sub234 to i32
  %88 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %cmp236 = icmp eq %struct.av* %88, %av
  br i1 %cmp236, label %if.then238, label %if.end269

if.then238:                                       ; preds = %if.end222
  %89 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %90 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast241 = ptrtoint %struct.sv** %89 to i64
  %sub.ptr.rhs.cast242 = ptrtoint %struct.sv** %90 to i64
  %sub.ptr.sub243 = sub i64 %sub.ptr.lhs.cast241, %sub.ptr.rhs.cast242
  %sub.ptr.div244 = ashr exact i64 %sub.ptr.sub243, 3
  %add.ptr245 = getelementptr inbounds %struct.sv** %86, i64 %sub.ptr.div244
  store %struct.sv** %add.ptr245, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %91 = load %struct.xpvav** %sv_any100, align 8, !tbaa !0
  %xav_alloc247 = getelementptr inbounds %struct.xpvav* %91, i64 0, i32 7
  %92 = load %struct.sv*** %xav_alloc247, align 8, !tbaa !0
  store %struct.sv** %92, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr248 = getelementptr inbounds %struct.sv** %92, i64 %conv231
  store %struct.sv** %add.ptr248, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  br label %if.end269

if.else250:                                       ; preds = %if.else
  %cmp251 = icmp slt i32 %key, 3
  %cond256 = select i1 %cmp251, i32 3, i32 %key
  %add257 = add nsw i32 %cond256, 1
  %conv258 = sext i32 %add257 to i64
  %mul259 = shl nsw i64 %conv258, 3
  %call260 = tail call i8* @Perl_safesysmalloc(i64 %mul259) #3
  %93 = bitcast i8* %call260 to %struct.sv**
  %94 = load %struct.xpvav** %sv_any100, align 8, !tbaa !0
  %xav_alloc262 = getelementptr inbounds %struct.xpvav* %94, i64 0, i32 7
  store %struct.sv** %93, %struct.sv*** %xav_alloc262, align 8, !tbaa !0
  %95 = load %struct.xpvav** %sv_any100, align 8, !tbaa !0
  %xav_alloc264 = getelementptr inbounds %struct.xpvav* %95, i64 0, i32 7
  %96 = load %struct.sv*** %xav_alloc264, align 8, !tbaa !0
  %add.ptr265 = getelementptr inbounds %struct.sv** %96, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %96, align 8, !tbaa !0
  br label %if.end269

if.end269:                                        ; preds = %if.end222, %if.then238, %if.else250
  %ary.0 = phi %struct.sv** [ %add.ptr230, %if.then238 ], [ %add.ptr230, %if.end222 ], [ %add.ptr265, %if.else250 ]
  %tmp.1 = phi i32 [ %conv235, %if.then238 ], [ %conv235, %if.end222 ], [ %cond256, %if.else250 ]
  %newmax.1 = phi i32 [ %conv184, %if.then238 ], [ %conv184, %if.end222 ], [ %cond256, %if.else250 ]
  %97 = load %struct.xpvav** %sv_any100, align 8, !tbaa !0
  %xav_flags271 = getelementptr inbounds %struct.xpvav* %97, i64 0, i32 9
  %98 = load i8* %xav_flags271, align 1, !tbaa !1
  %and273 = and i8 %98, 1
  %tobool274 = icmp eq i8 %and273, 0
  %tobool277384 = icmp eq i32 %tmp.1, 0
  %or.cond = or i1 %tobool274, %tobool277384
  br i1 %or.cond, label %if.end283, label %while.body278.lr.ph

while.body278.lr.ph:                              ; preds = %if.end269
  %99 = sext i32 %tmp.1 to i64
  br label %while.body278

while.body278:                                    ; preds = %while.body278.lr.ph, %while.body278
  %indvars.iv = phi i64 [ %99, %while.body278.lr.ph ], [ %indvars.iv.next, %while.body278 ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %arrayidx281 = getelementptr inbounds %struct.sv** %ary.0, i64 %indvars.iv.next
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx281, align 8, !tbaa !0
  %100 = trunc i64 %indvars.iv.next to i32
  %tobool277 = icmp eq i32 %100, 0
  br i1 %tobool277, label %while.cond276.if.end283.loopexit_crit_edge, label %while.body278

while.cond276.if.end283.loopexit_crit_edge:       ; preds = %while.body278
  %.pre.pre = load %struct.xpvav** %sv_any100, align 8, !tbaa !0
  br label %if.end283

if.end283:                                        ; preds = %while.cond276.if.end283.loopexit_crit_edge, %if.end269
  %101 = phi %struct.xpvav* [ %97, %if.end269 ], [ %.pre.pre, %while.cond276.if.end283.loopexit_crit_edge ]
  %xav_alloc285 = getelementptr inbounds %struct.xpvav* %101, i64 0, i32 7
  %102 = load %struct.sv*** %xav_alloc285, align 8, !tbaa !0
  %103 = bitcast %struct.sv** %102 to i8*
  %xpv_pv287 = getelementptr inbounds %struct.xpvav* %101, i64 0, i32 0
  store i8* %103, i8** %xpv_pv287, align 8, !tbaa !0
  %conv288 = sext i32 %newmax.1 to i64
  %104 = load %struct.xpvav** %sv_any100, align 8, !tbaa !0
  %xav_max290 = getelementptr inbounds %struct.xpvav* %104, i64 0, i32 2
  store i64 %conv288, i64* %xav_max290, align 8, !tbaa !3
  br label %if.end292

if.end292:                                        ; preds = %if.end283, %if.end147, %if.end97, %if.end98
  ret void
}

; Function Attrs: optsize
declare %struct.magic* @Perl_mg_find(%struct.sv*, i32) #1

; Function Attrs: optsize
declare void @Perl_push_scope() #1

; Function Attrs: optsize
declare void @Perl_save_int(i32*) #1

; Function Attrs: optsize
declare %struct.stackinfo* @Perl_new_stackinfo(i32, i32) #1

; Function Attrs: optsize
declare void @Perl_markstack_grow() #1

; Function Attrs: optsize
declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newRV(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSViv(i64) #1

; Function Attrs: optsize
declare i32 @Perl_call_method(i8*, i32) #1

; Function Attrs: optsize
declare i32 @PerlIO_printf(%struct._PerlIO**, i8*, ...) #1

; Function Attrs: optsize
declare %struct._PerlIO** @Perl_PerlIO_stderr() #1

; Function Attrs: optsize
declare void @Perl_my_exit(i32) #1

; Function Attrs: optsize
declare void @Perl_free_tmps() #1

; Function Attrs: optsize
declare void @Perl_pop_scope() #1

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: optsize
declare i8* @Perl_safesysmalloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: optsize
declare void @Perl_safesysfree(i8*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.sv** @Perl_av_fetch(%struct.av* %av, i32 %key, i32 %lval) #0 {
entry:
  %tobool = icmp eq %struct.av* %av, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.av* %av, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %0, 32768
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %if.end112, label %if.then2

if.then2:                                         ; preds = %if.end
  %1 = bitcast %struct.av* %av to %struct.sv*
  %call = tail call %struct.magic* @Perl_mg_find(%struct.sv* %1, i32 80) #3
  %tobool3 = icmp eq %struct.magic* %call, null
  br i1 %tobool3, label %lor.lhs.false, label %land.lhs.true.critedge

lor.lhs.false:                                    ; preds = %if.then2
  %call4 = tail call %struct.magic* @Perl_mg_find(%struct.sv* %1, i32 68) #3
  %tobool5 = icmp eq %struct.magic* %call4, null
  br i1 %tobool5, label %if.end112, label %if.end80

land.lhs.true.critedge:                           ; preds = %if.then2
  %cmp.old = icmp slt i32 %key, 0
  br i1 %cmp.old, label %if.then8, label %if.end103

if.then8:                                         ; preds = %land.lhs.true.critedge
  %mg_obj = getelementptr inbounds %struct.magic* %call, i64 0, i32 5
  %2 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool9 = icmp eq %struct.sv* %2, null
  br i1 %tobool9, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.then8
  %call11 = tail call %struct.sv* @Perl_newRV(%struct.sv* %1) #3
  %call12 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call11) #3
  br label %cond.end

cond.end:                                         ; preds = %if.then8, %cond.false
  %cond = phi %struct.sv* [ %call12, %cond.false ], [ %2, %if.then8 ]
  %sv_any = getelementptr inbounds %struct.sv* %cond, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %3 to %struct.sv**
  %4 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_any13 = getelementptr inbounds %struct.sv* %4, i64 0, i32 0
  %5 = load i8** %sv_any13, align 8, !tbaa !0
  %xmg_stash = getelementptr inbounds i8* %5, i64 48
  %6 = bitcast i8* %xmg_stash to %struct.hv**
  %7 = load %struct.hv** %6, align 8, !tbaa !0
  %call14 = tail call %struct.sv** @Perl_hv_fetch(%struct.hv* %7, i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0), i32 16, i32 0) #3
  %tobool15 = icmp eq %struct.sv** %call14, null
  br i1 %tobool15, label %if.end80, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %cond.end
  %8 = load %struct.sv** %call14, align 8, !tbaa !0
  %sv_any17 = getelementptr inbounds %struct.sv* %8, i64 0, i32 0
  %9 = load i8** %sv_any17, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds i8* %9, i64 56
  %10 = bitcast i8* %xgv_gp to %struct.gp**
  %11 = load %struct.gp** %10, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %11, i64 0, i32 0
  %12 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %tobool18 = icmp eq %struct.sv* %12, null
  br i1 %tobool18, label %if.end80, label %cond.false20

cond.false20:                                     ; preds = %land.lhs.true16
  %sv_flags24 = getelementptr inbounds %struct.sv* %12, i64 0, i32 2
  %13 = load i32* %sv_flags24, align 4, !tbaa !4
  %and25 = and i32 %13, 262144
  %tobool26 = icmp eq i32 %and25, 0
  br i1 %tobool26, label %cond.false43, label %cond.true27

cond.true27:                                      ; preds = %cond.false20
  %sv_any31 = getelementptr inbounds %struct.sv* %12, i64 0, i32 0
  %14 = load i8** %sv_any31, align 8, !tbaa !0
  %15 = bitcast i8* %14 to %struct.xpv*
  store %struct.xpv* %15, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool32 = icmp eq i8* %14, null
  br i1 %tobool32, label %if.end80, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %cond.true27
  %xpv_cur = getelementptr inbounds i8* %14, i64 8
  %16 = bitcast i8* %xpv_cur to i64*
  %17 = load i64* %16, align 8, !tbaa !3
  %cmp34 = icmp ugt i64 %17, 1
  br i1 %cmp34, label %if.end103, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %land.lhs.true33
  %tobool37 = icmp eq i64 %17, 0
  br i1 %tobool37, label %if.end80, label %land.lhs.true38

land.lhs.true38:                                  ; preds = %lor.lhs.false35
  %xpv_pv = bitcast i8* %14 to i8**
  %18 = load i8** %xpv_pv, align 8, !tbaa !0
  %19 = load i8* %18, align 1, !tbaa !1
  %cmp39 = icmp ne i8 %19, 48
  %cmp81 = icmp sgt i32 %key, -1
  %or.cond = or i1 %cmp39, %cmp81
  br i1 %or.cond, label %if.end103, label %if.then85

cond.false43:                                     ; preds = %cond.false20
  %and48 = and i32 %13, 65536
  %tobool49 = icmp eq i32 %and48, 0
  br i1 %tobool49, label %cond.false57, label %cond.true50

cond.true50:                                      ; preds = %cond.false43
  %sv_any54 = getelementptr inbounds %struct.sv* %12, i64 0, i32 0
  %20 = load i8** %sv_any54, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %20, i64 24
  %21 = bitcast i8* %xiv_iv to i64*
  %22 = load i64* %21, align 8, !tbaa !3
  %cmp55 = icmp ne i64 %22, 0
  %cmp81.old = icmp sgt i32 %key, -1
  %or.cond244 = or i1 %cmp55, %cmp81.old
  br i1 %or.cond244, label %if.end103, label %if.then85

cond.false57:                                     ; preds = %cond.false43
  %and62 = and i32 %13, 131072
  %tobool63 = icmp eq i32 %and62, 0
  br i1 %tobool63, label %cond.false71, label %cond.true64

cond.true64:                                      ; preds = %cond.false57
  %sv_any68 = getelementptr inbounds %struct.sv* %12, i64 0, i32 0
  %23 = load i8** %sv_any68, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %23, i64 32
  %24 = bitcast i8* %xnv_nv to double*
  %25 = load double* %24, align 8, !tbaa !5
  %cmp69 = fcmp une double %25, 0.000000e+00
  %cmp81.old.old.old = icmp sgt i32 %key, -1
  %or.cond246 = or i1 %cmp69, %cmp81.old.old.old
  br i1 %or.cond246, label %if.end103, label %if.then85

cond.false71:                                     ; preds = %cond.false57
  %call75 = tail call signext i8 @Perl_sv_2bool(%struct.sv* %12) #3
  %tobool77 = icmp ne i8 %call75, 0
  %cmp81.old.old = icmp sgt i32 %key, -1
  %or.cond245 = or i1 %tobool77, %cmp81.old.old
  br i1 %or.cond245, label %if.end103, label %if.then85

if.end80:                                         ; preds = %lor.lhs.false, %lor.lhs.false35, %cond.true27, %land.lhs.true16, %cond.end
  %cmp81.old.old.old.old = icmp sgt i32 %key, -1
  br i1 %cmp81.old.old.old.old, label %if.end103, label %if.then85

if.then85:                                        ; preds = %cond.true64, %cond.false71, %cond.true50, %land.lhs.true38, %if.end80
  %26 = load i32* %sv_flags, align 4, !tbaa !4
  %and87 = and i32 %26, 32768
  %tobool88 = icmp eq i32 %and87, 0
  br i1 %tobool88, label %cond.false92, label %cond.true89

cond.true89:                                      ; preds = %if.then85
  %call90 = tail call i32 @Perl_mg_size(%struct.sv* %1) #3
  %conv91 = sext i32 %call90 to i64
  br label %cond.end94

cond.false92:                                     ; preds = %if.then85
  %sv_any93 = getelementptr inbounds %struct.av* %av, i64 0, i32 0
  %27 = load %struct.xpvav** %sv_any93, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %27, i64 0, i32 1
  %28 = load i64* %xav_fill, align 8, !tbaa !3
  br label %cond.end94

cond.end94:                                       ; preds = %cond.false92, %cond.true89
  %cond95 = phi i64 [ %conv91, %cond.true89 ], [ %28, %cond.false92 ]
  %conv96237 = zext i32 %key to i64
  %add = add i64 %conv96237, 1
  %add97 = add i64 %add, %cond95
  %conv98 = trunc i64 %add97 to i32
  %cmp99 = icmp slt i32 %conv98, 0
  br i1 %cmp99, label %return, label %if.end103

if.end103:                                        ; preds = %cond.false71, %cond.true50, %land.lhs.true38, %cond.true64, %land.lhs.true33, %land.lhs.true.critedge, %if.end80, %cond.end94
  %key.addr.0 = phi i32 [ %conv98, %cond.end94 ], [ %key, %if.end80 ], [ %key, %land.lhs.true.critedge ], [ %key, %land.lhs.true38 ], [ %key, %cond.true50 ], [ %key, %cond.false71 ], [ %key, %land.lhs.true33 ], [ %key, %cond.true64 ]
  %call104 = tail call %struct.sv* @Perl_sv_newmortal() #3
  %call105 = tail call signext i8 @Perl_sv_upgrade(%struct.sv* %call104, i32 9) #3
  %call106 = tail call i32 @Perl_mg_copy(%struct.sv* %1, %struct.sv* %call104, i8* null, i32 %key.addr.0) #3
  %sv_any107 = getelementptr inbounds %struct.sv* %call104, i64 0, i32 0
  %29 = load i8** %sv_any107, align 8, !tbaa !0
  %30 = getelementptr inbounds i8* %29, i64 80
  store i8 116, i8* %30, align 1, !tbaa !1
  %31 = load i8** %sv_any107, align 8, !tbaa !0
  %xlv_targ = getelementptr inbounds i8* %31, i64 72
  %32 = bitcast i8* %xlv_targ to %struct.sv**
  store %struct.sv* %call104, %struct.sv** %32, align 8, !tbaa !0
  %33 = load i8** %sv_any107, align 8, !tbaa !0
  %xlv_targ110 = getelementptr inbounds i8* %33, i64 72
  %34 = bitcast i8* %xlv_targ110 to %struct.sv**
  br label %return

if.end112:                                        ; preds = %lor.lhs.false, %if.end
  %cmp113 = icmp slt i32 %key, 0
  br i1 %cmp113, label %if.then115, label %if.end135

if.then115:                                       ; preds = %if.end112
  %35 = load i32* %sv_flags, align 4, !tbaa !4
  %and117 = and i32 %35, 32768
  %tobool118 = icmp eq i32 %and117, 0
  br i1 %tobool118, label %cond.false122, label %cond.true119

cond.true119:                                     ; preds = %if.then115
  %36 = bitcast %struct.av* %av to %struct.sv*
  %call120 = tail call i32 @Perl_mg_size(%struct.sv* %36) #3
  %conv121 = sext i32 %call120 to i64
  br label %cond.end125

cond.false122:                                    ; preds = %if.then115
  %sv_any123 = getelementptr inbounds %struct.av* %av, i64 0, i32 0
  %37 = load %struct.xpvav** %sv_any123, align 8, !tbaa !0
  %xav_fill124 = getelementptr inbounds %struct.xpvav* %37, i64 0, i32 1
  %38 = load i64* %xav_fill124, align 8, !tbaa !3
  br label %cond.end125

cond.end125:                                      ; preds = %cond.false122, %cond.true119
  %cond126 = phi i64 [ %conv121, %cond.true119 ], [ %38, %cond.false122 ]
  %conv128236 = zext i32 %key to i64
  %add127 = add i64 %conv128236, 1
  %add129 = add i64 %add127, %cond126
  %conv130 = trunc i64 %add129 to i32
  %cmp131 = icmp slt i32 %conv130, 0
  br i1 %cmp131, label %return, label %if.end135

if.end135:                                        ; preds = %cond.end125, %if.end112
  %key.addr.1 = phi i32 [ %key, %if.end112 ], [ %conv130, %cond.end125 ]
  %conv136 = sext i32 %key.addr.1 to i64
  %sv_any137 = getelementptr inbounds %struct.av* %av, i64 0, i32 0
  %39 = load %struct.xpvav** %sv_any137, align 8, !tbaa !0
  %xav_fill138 = getelementptr inbounds %struct.xpvav* %39, i64 0, i32 1
  %40 = load i64* %xav_fill138, align 8, !tbaa !3
  %cmp139 = icmp sgt i64 %conv136, %40
  br i1 %cmp139, label %if.then141, label %if.end147

if.then141:                                       ; preds = %if.end135
  %tobool142 = icmp eq i32 %lval, 0
  br i1 %tobool142, label %return, label %if.end144

if.end144:                                        ; preds = %if.then141
  %call145 = tail call %struct.sv* @Perl_newSV(i64 0) #3
  %call146 = tail call %struct.sv** @Perl_av_store(%struct.av* %av, i32 %key.addr.1, %struct.sv* %call145) #4
  br label %return

if.end147:                                        ; preds = %if.end135
  %xav_array = getelementptr inbounds %struct.xpvav* %39, i64 0, i32 0
  %41 = load i8** %xav_array, align 8, !tbaa !0
  %42 = bitcast i8* %41 to %struct.sv**
  %arrayidx = getelementptr inbounds %struct.sv** %42, i64 %conv136
  %43 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %cmp149 = icmp eq %struct.sv* %43, @PL_sv_undef
  br i1 %cmp149, label %emptyness, label %if.else

emptyness:                                        ; preds = %if.end147, %if.then176
  %tobool152 = icmp eq i32 %lval, 0
  br i1 %tobool152, label %return, label %if.then153

if.then153:                                       ; preds = %emptyness
  %call154 = tail call %struct.sv* @Perl_newSV(i64 0) #3
  %call155 = tail call %struct.sv** @Perl_av_store(%struct.av* %av, i32 %key.addr.1, %struct.sv* %call154) #4
  br label %return

if.else:                                          ; preds = %if.end147
  %xav_flags = getelementptr inbounds %struct.xpvav* %39, i64 0, i32 9
  %44 = load i8* %xav_flags, align 1, !tbaa !1
  %and159 = and i8 %44, 2
  %tobool160 = icmp eq i8 %and159, 0
  br i1 %tobool160, label %return, label %land.lhs.true161

land.lhs.true161:                                 ; preds = %if.else
  %tobool166 = icmp eq %struct.sv* %43, null
  br i1 %tobool166, label %if.then176, label %lor.lhs.false167

lor.lhs.false167:                                 ; preds = %land.lhs.true161
  %sv_flags172 = getelementptr inbounds %struct.sv* %43, i64 0, i32 2
  %45 = load i32* %sv_flags172, align 4, !tbaa !4
  %and173 = and i32 %45, 255
  %cmp174 = icmp eq i32 %and173, 255
  br i1 %cmp174, label %if.then176, label %return

if.then176:                                       ; preds = %land.lhs.true161, %lor.lhs.false167
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx, align 8, !tbaa !0
  br label %emptyness

return:                                           ; preds = %lor.lhs.false167, %if.else, %emptyness, %if.then141, %cond.end125, %cond.end94, %entry, %if.then153, %if.end144, %if.end103
  %retval.0 = phi %struct.sv** [ %34, %if.end103 ], [ %call146, %if.end144 ], [ %call155, %if.then153 ], [ null, %entry ], [ null, %cond.end94 ], [ null, %cond.end125 ], [ null, %if.then141 ], [ null, %emptyness ], [ %arrayidx, %if.else ], [ %arrayidx, %lor.lhs.false167 ]
  ret %struct.sv** %retval.0
}

; Function Attrs: optsize
declare %struct.sv** @Perl_hv_fetch(%struct.hv*, i8*, i32, i32) #1

; Function Attrs: optsize
declare signext i8 @Perl_sv_2bool(%struct.sv*) #1

; Function Attrs: optsize
declare i32 @Perl_mg_size(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_newmortal() #1

; Function Attrs: optsize
declare signext i8 @Perl_sv_upgrade(%struct.sv*, i32) #1

; Function Attrs: optsize
declare i32 @Perl_mg_copy(%struct.sv*, %struct.sv*, i8*, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSV(i64) #1

; Function Attrs: nounwind optsize uwtable
define %struct.sv** @Perl_av_store(%struct.av* %av, i32 %key, %struct.sv* %val) #0 {
entry:
  %tobool = icmp eq %struct.av* %av, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %tobool1 = icmp eq %struct.sv* %val, null
  %PL_sv_undef.val = select i1 %tobool1, %struct.sv* @PL_sv_undef, %struct.sv* %val
  %sv_flags = getelementptr inbounds %struct.av* %av, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %0, 32768
  %tobool4 = icmp eq i32 %and, 0
  br i1 %tobool4, label %if.end105, label %if.then5

if.then5:                                         ; preds = %if.end
  %1 = bitcast %struct.av* %av to %struct.sv*
  %call = tail call %struct.magic* @Perl_mg_find(%struct.sv* %1, i32 80) #3
  %tobool6 = icmp eq %struct.magic* %call, null
  br i1 %tobool6, label %if.end105, label %if.then7

if.then7:                                         ; preds = %if.then5
  %cmp = icmp slt i32 %key, 0
  br i1 %cmp, label %if.then8, label %if.end98

if.then8:                                         ; preds = %if.then7
  %mg_obj = getelementptr inbounds %struct.magic* %call, i64 0, i32 5
  %2 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool9 = icmp eq %struct.sv* %2, null
  br i1 %tobool9, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.then8
  %call11 = tail call %struct.sv* @Perl_newRV(%struct.sv* %1) #3
  %call12 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call11) #3
  br label %cond.end

cond.end:                                         ; preds = %if.then8, %cond.false
  %cond = phi %struct.sv* [ %call12, %cond.false ], [ %2, %if.then8 ]
  %sv_any = getelementptr inbounds %struct.sv* %cond, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %3 to %struct.sv**
  %4 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_any13 = getelementptr inbounds %struct.sv* %4, i64 0, i32 0
  %5 = load i8** %sv_any13, align 8, !tbaa !0
  %xmg_stash = getelementptr inbounds i8* %5, i64 48
  %6 = bitcast i8* %xmg_stash to %struct.hv**
  %7 = load %struct.hv** %6, align 8, !tbaa !0
  %call14 = tail call %struct.sv** @Perl_hv_fetch(%struct.hv* %7, i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0), i32 16, i32 0) #3
  %tobool15 = icmp eq %struct.sv** %call14, null
  br i1 %tobool15, label %if.then79, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end
  %8 = load %struct.sv** %call14, align 8, !tbaa !0
  %sv_any16 = getelementptr inbounds %struct.sv* %8, i64 0, i32 0
  %9 = load i8** %sv_any16, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds i8* %9, i64 56
  %10 = bitcast i8* %xgv_gp to %struct.gp**
  %11 = load %struct.gp** %10, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %11, i64 0, i32 0
  %12 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %tobool17 = icmp eq %struct.sv* %12, null
  br i1 %tobool17, label %if.then79, label %cond.false19

cond.false19:                                     ; preds = %land.lhs.true
  %sv_flags23 = getelementptr inbounds %struct.sv* %12, i64 0, i32 2
  %13 = load i32* %sv_flags23, align 4, !tbaa !4
  %and24 = and i32 %13, 262144
  %tobool25 = icmp eq i32 %and24, 0
  br i1 %tobool25, label %cond.false41, label %cond.true26

cond.true26:                                      ; preds = %cond.false19
  %sv_any30 = getelementptr inbounds %struct.sv* %12, i64 0, i32 0
  %14 = load i8** %sv_any30, align 8, !tbaa !0
  %15 = bitcast i8* %14 to %struct.xpv*
  store %struct.xpv* %15, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool31 = icmp eq i8* %14, null
  br i1 %tobool31, label %if.then79, label %land.lhs.true32

land.lhs.true32:                                  ; preds = %cond.true26
  %xpv_cur = getelementptr inbounds i8* %14, i64 8
  %16 = bitcast i8* %xpv_cur to i64*
  %17 = load i64* %16, align 8, !tbaa !3
  %cmp33 = icmp ugt i64 %17, 1
  br i1 %cmp33, label %if.end98, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true32
  %tobool35 = icmp eq i64 %17, 0
  br i1 %tobool35, label %if.then79, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %lor.lhs.false
  %xpv_pv = bitcast i8* %14 to i8**
  %18 = load i8** %xpv_pv, align 8, !tbaa !0
  %19 = load i8* %18, align 1, !tbaa !1
  %cmp37 = icmp eq i8 %19, 48
  br i1 %cmp37, label %if.then79, label %if.end98

cond.false41:                                     ; preds = %cond.false19
  %and46 = and i32 %13, 65536
  %tobool47 = icmp eq i32 %and46, 0
  br i1 %tobool47, label %cond.false55, label %cond.true48

cond.true48:                                      ; preds = %cond.false41
  %sv_any52 = getelementptr inbounds %struct.sv* %12, i64 0, i32 0
  %20 = load i8** %sv_any52, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %20, i64 24
  %21 = bitcast i8* %xiv_iv to i64*
  %22 = load i64* %21, align 8, !tbaa !3
  %cmp53 = icmp eq i64 %22, 0
  br i1 %cmp53, label %if.then79, label %if.end98

cond.false55:                                     ; preds = %cond.false41
  %and60 = and i32 %13, 131072
  %tobool61 = icmp eq i32 %and60, 0
  br i1 %tobool61, label %cond.false69, label %cond.true62

cond.true62:                                      ; preds = %cond.false55
  %sv_any66 = getelementptr inbounds %struct.sv* %12, i64 0, i32 0
  %23 = load i8** %sv_any66, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %23, i64 32
  %24 = bitcast i8* %xnv_nv to double*
  %25 = load double* %24, align 8, !tbaa !5
  %cmp67 = fcmp une double %25, 0.000000e+00
  br i1 %cmp67, label %if.end98, label %if.then79

cond.false69:                                     ; preds = %cond.false55
  %call73 = tail call signext i8 @Perl_sv_2bool(%struct.sv* %12) #3
  %tobool75 = icmp eq i8 %call73, 0
  br i1 %tobool75, label %if.then79, label %if.end98

if.then79:                                        ; preds = %cond.true62, %cond.end, %land.lhs.true, %cond.false69, %cond.true48, %cond.true26, %lor.lhs.false, %land.lhs.true36
  %26 = load i32* %sv_flags, align 4, !tbaa !4
  %and81 = and i32 %26, 32768
  %tobool82 = icmp eq i32 %and81, 0
  br i1 %tobool82, label %cond.false86, label %cond.true83

cond.true83:                                      ; preds = %if.then79
  %call84 = tail call i32 @Perl_mg_size(%struct.sv* %1) #3
  %conv85 = sext i32 %call84 to i64
  br label %cond.end88

cond.false86:                                     ; preds = %if.then79
  %sv_any87 = getelementptr inbounds %struct.av* %av, i64 0, i32 0
  %27 = load %struct.xpvav** %sv_any87, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %27, i64 0, i32 1
  %28 = load i64* %xav_fill, align 8, !tbaa !3
  br label %cond.end88

cond.end88:                                       ; preds = %cond.false86, %cond.true83
  %cond89 = phi i64 [ %conv85, %cond.true83 ], [ %28, %cond.false86 ]
  %conv90304 = zext i32 %key to i64
  %add = add i64 %conv90304, 1
  %add91 = add i64 %add, %cond89
  %conv92 = trunc i64 %add91 to i32
  %cmp93 = icmp slt i32 %conv92, 0
  br i1 %cmp93, label %return, label %if.end98

if.end98:                                         ; preds = %cond.true62, %land.lhs.true32, %cond.false69, %cond.true48, %land.lhs.true36, %cond.end88, %if.then7
  %key.addr.0 = phi i32 [ %conv92, %cond.end88 ], [ %key, %if.then7 ], [ %key, %land.lhs.true36 ], [ %key, %cond.true48 ], [ %key, %cond.false69 ], [ %key, %land.lhs.true32 ], [ %key, %cond.true62 ]
  %cmp99 = icmp eq %struct.sv* %PL_sv_undef.val, @PL_sv_undef
  br i1 %cmp99, label %return, label %if.then101

if.then101:                                       ; preds = %if.end98
  %call102 = tail call i32 @Perl_mg_copy(%struct.sv* %1, %struct.sv* %PL_sv_undef.val, i8* null, i32 %key.addr.0) #3
  br label %return

if.end105:                                        ; preds = %if.then5, %if.end
  %cmp106 = icmp slt i32 %key, 0
  br i1 %cmp106, label %if.then108, label %if.end128

if.then108:                                       ; preds = %if.end105
  %29 = load i32* %sv_flags, align 4, !tbaa !4
  %and110 = and i32 %29, 32768
  %tobool111 = icmp eq i32 %and110, 0
  br i1 %tobool111, label %cond.false115, label %cond.true112

cond.true112:                                     ; preds = %if.then108
  %30 = bitcast %struct.av* %av to %struct.sv*
  %call113 = tail call i32 @Perl_mg_size(%struct.sv* %30) #3
  %conv114 = sext i32 %call113 to i64
  br label %cond.end118

cond.false115:                                    ; preds = %if.then108
  %sv_any116 = getelementptr inbounds %struct.av* %av, i64 0, i32 0
  %31 = load %struct.xpvav** %sv_any116, align 8, !tbaa !0
  %xav_fill117 = getelementptr inbounds %struct.xpvav* %31, i64 0, i32 1
  %32 = load i64* %xav_fill117, align 8, !tbaa !3
  br label %cond.end118

cond.end118:                                      ; preds = %cond.false115, %cond.true112
  %cond119 = phi i64 [ %conv114, %cond.true112 ], [ %32, %cond.false115 ]
  %conv121303 = zext i32 %key to i64
  %add120 = add i64 %conv121303, 1
  %add122 = add i64 %add120, %cond119
  %conv123 = trunc i64 %add122 to i32
  %cmp124 = icmp slt i32 %conv123, 0
  br i1 %cmp124, label %return, label %if.end128

if.end128:                                        ; preds = %cond.end118, %if.end105
  %key.addr.1 = phi i32 [ %key, %if.end105 ], [ %conv123, %cond.end118 ]
  %33 = load i32* %sv_flags, align 4, !tbaa !4
  %and130 = and i32 %33, 8388608
  %tobool131 = icmp eq i32 %and130, 0
  br i1 %tobool131, label %if.end148, label %land.lhs.true132

land.lhs.true132:                                 ; preds = %if.end128
  %conv133 = sext i32 %key.addr.1 to i64
  %and135 = and i32 %33, 32768
  %tobool136 = icmp eq i32 %and135, 0
  br i1 %tobool136, label %cond.false140, label %cond.true137

cond.true137:                                     ; preds = %land.lhs.true132
  %34 = bitcast %struct.av* %av to %struct.sv*
  %call138 = tail call i32 @Perl_mg_size(%struct.sv* %34) #3
  %conv139 = sext i32 %call138 to i64
  br label %cond.end143

cond.false140:                                    ; preds = %land.lhs.true132
  %sv_any141 = getelementptr inbounds %struct.av* %av, i64 0, i32 0
  %35 = load %struct.xpvav** %sv_any141, align 8, !tbaa !0
  %xav_fill142 = getelementptr inbounds %struct.xpvav* %35, i64 0, i32 1
  %36 = load i64* %xav_fill142, align 8, !tbaa !3
  br label %cond.end143

cond.end143:                                      ; preds = %cond.false140, %cond.true137
  %cond144 = phi i64 [ %conv139, %cond.true137 ], [ %36, %cond.false140 ]
  %cmp145 = icmp slt i64 %conv133, %cond144
  br i1 %cmp145, label %if.end148, label %if.then147

if.then147:                                       ; preds = %cond.end143
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([0 x i8]* @PL_no_modify, i64 0, i64 0)) #3
  br label %if.end148

if.end148:                                        ; preds = %cond.end143, %if.end128, %if.then147
  %sv_any149 = getelementptr inbounds %struct.av* %av, i64 0, i32 0
  %37 = load %struct.xpvav** %sv_any149, align 8, !tbaa !0
  %xav_flags = getelementptr inbounds %struct.xpvav* %37, i64 0, i32 9
  %38 = load i8* %xav_flags, align 1, !tbaa !1
  %39 = and i8 %38, 3
  %40 = icmp eq i8 %39, 2
  br i1 %40, label %if.then159, label %if.end160

if.then159:                                       ; preds = %if.end148
  tail call void @Perl_av_reify(%struct.av* %av) #4
  %.pre = load %struct.xpvav** %sv_any149, align 8, !tbaa !0
  br label %if.end160

if.end160:                                        ; preds = %if.end148, %if.then159
  %41 = phi %struct.xpvav* [ %37, %if.end148 ], [ %.pre, %if.then159 ]
  %conv161 = sext i32 %key.addr.1 to i64
  %xav_max = getelementptr inbounds %struct.xpvav* %41, i64 0, i32 2
  %42 = load i64* %xav_max, align 8, !tbaa !3
  %cmp163 = icmp sgt i64 %conv161, %42
  br i1 %cmp163, label %if.then165, label %if.end166

if.then165:                                       ; preds = %if.end160
  tail call void @Perl_av_extend(%struct.av* %av, i32 %key.addr.1) #4
  %.pre306 = load %struct.xpvav** %sv_any149, align 8, !tbaa !0
  br label %if.end166

if.end166:                                        ; preds = %if.then165, %if.end160
  %43 = phi %struct.xpvav* [ %.pre306, %if.then165 ], [ %41, %if.end160 ]
  %xav_array = getelementptr inbounds %struct.xpvav* %43, i64 0, i32 0
  %44 = load i8** %xav_array, align 8, !tbaa !0
  %45 = bitcast i8* %44 to %struct.sv**
  %xav_fill169 = getelementptr inbounds %struct.xpvav* %43, i64 0, i32 1
  %46 = load i64* %xav_fill169, align 8, !tbaa !3
  %cmp171 = icmp slt i64 %46, %conv161
  %xav_flags175 = getelementptr inbounds %struct.xpvav* %43, i64 0, i32 9
  %47 = load i8* %xav_flags175, align 1, !tbaa !1
  %and177 = and i8 %47, 1
  %tobool178 = icmp ne i8 %and177, 0
  br i1 %cmp171, label %if.then173, label %if.else

if.then173:                                       ; preds = %if.end166
  br i1 %tobool178, label %if.end195, label %if.then179

if.then179:                                       ; preds = %if.then173
  %48 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %cmp180 = icmp eq %struct.av* %48, %av
  br i1 %cmp180, label %land.lhs.true182, label %do.body

land.lhs.true182:                                 ; preds = %if.then179
  %49 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %50 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %49 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %50 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %cmp184 = icmp sgt i64 %conv161, %sub.ptr.div
  br i1 %cmp184, label %if.then186, label %do.body

if.then186:                                       ; preds = %land.lhs.true182
  %add.ptr = getelementptr inbounds %struct.sv** %50, i64 %conv161
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %.pre307.pre = load %struct.xpvav** %sv_any149, align 8, !tbaa !0
  %xav_fill189.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.xpvav* %.pre307.pre, i64 0, i32 1
  %.pre308.pre = load i64* %xav_fill189.phi.trans.insert.phi.trans.insert, align 8, !tbaa !3
  br label %do.body

do.body:                                          ; preds = %if.then179, %land.lhs.true182, %if.then186, %do.body
  %51 = phi i64 [ %54, %do.body ], [ %.pre308.pre, %if.then186 ], [ %46, %land.lhs.true182 ], [ %46, %if.then179 ]
  %52 = phi %struct.xpvav* [ %53, %do.body ], [ %.pre307.pre, %if.then186 ], [ %43, %land.lhs.true182 ], [ %43, %if.then179 ]
  %xav_fill189 = getelementptr inbounds %struct.xpvav* %52, i64 0, i32 1
  %inc = add nsw i64 %51, 1
  store i64 %inc, i64* %xav_fill189, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds %struct.sv** %45, i64 %inc
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx, align 8, !tbaa !0
  %53 = load %struct.xpvav** %sv_any149, align 8, !tbaa !0
  %xav_fill191 = getelementptr inbounds %struct.xpvav* %53, i64 0, i32 1
  %54 = load i64* %xav_fill191, align 8, !tbaa !3
  %cmp193 = icmp slt i64 %54, %conv161
  br i1 %cmp193, label %do.body, label %if.end195

if.end195:                                        ; preds = %do.body, %if.then173
  %55 = phi %struct.xpvav* [ %43, %if.then173 ], [ %53, %do.body ]
  %xav_fill198 = getelementptr inbounds %struct.xpvav* %55, i64 0, i32 1
  store i64 %conv161, i64* %xav_fill198, align 8, !tbaa !3
  br label %if.end207

if.else:                                          ; preds = %if.end166
  br i1 %tobool178, label %if.then204, label %if.end207

if.then204:                                       ; preds = %if.else
  %arrayidx205 = getelementptr inbounds %struct.sv** %45, i64 %conv161
  %56 = load %struct.sv** %arrayidx205, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %56) #3
  br label %if.end207

if.end207:                                        ; preds = %if.else, %if.then204, %if.end195
  %arrayidx209 = getelementptr inbounds %struct.sv** %45, i64 %conv161
  store %struct.sv* %PL_sv_undef.val, %struct.sv** %arrayidx209, align 8, !tbaa !0
  %57 = load i32* %sv_flags, align 4, !tbaa !4
  %and211 = and i32 %57, 16384
  %tobool212 = icmp eq i32 %and211, 0
  br i1 %tobool212, label %return, label %if.then213

if.then213:                                       ; preds = %if.end207
  %cmp214 = icmp eq %struct.sv* %PL_sv_undef.val, @PL_sv_undef
  br i1 %cmp214, label %if.then213.if.end235_crit_edge, label %if.then216

if.then213.if.end235_crit_edge:                   ; preds = %if.then213
  %.pre311 = bitcast %struct.av* %av to %struct.sv*
  br label %if.end235

if.then216:                                       ; preds = %if.then213
  %58 = load %struct.xpvav** %sv_any149, align 8, !tbaa !0
  %59 = getelementptr inbounds %struct.xpvav* %58, i64 0, i32 5
  %60 = load %struct.magic** %59, align 8, !tbaa !0
  %61 = bitcast %struct.av* %av to %struct.sv*
  %mg_type = getelementptr inbounds %struct.magic* %60, i64 0, i32 3
  %62 = load i8* %mg_type, align 1, !tbaa !1
  %conv218 = sext i8 %62 to i32
  %.off = add i8 %62, -65
  %63 = icmp ult i8 %.off, 26
  %add229 = add nsw i32 %conv218, 32
  %add229.conv218 = select i1 %63, i32 %add229, i32 %conv218
  tail call void @Perl_sv_magic(%struct.sv* %PL_sv_undef.val, %struct.sv* %61, i32 %add229.conv218, i8* null, i32 %key.addr.1) #3
  br label %if.end235

if.end235:                                        ; preds = %if.then213.if.end235_crit_edge, %if.then216
  %.pre-phi = phi %struct.sv* [ %.pre311, %if.then213.if.end235_crit_edge ], [ %61, %if.then216 ]
  %call236 = tail call i32 @Perl_mg_set(%struct.sv* %.pre-phi) #3
  br label %return

return:                                           ; preds = %if.end235, %if.end207, %cond.end118, %if.then101, %if.end98, %cond.end88, %entry
  %retval.0 = phi %struct.sv** [ null, %entry ], [ null, %cond.end88 ], [ null, %if.end98 ], [ null, %if.then101 ], [ null, %cond.end118 ], [ %arrayidx209, %if.end207 ], [ %arrayidx209, %if.end235 ]
  ret %struct.sv** %retval.0
}

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #1

; Function Attrs: optsize
declare void @Perl_sv_free(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_sv_magic(%struct.sv*, %struct.sv*, i32, i8*, i32) #1

; Function Attrs: optsize
declare i32 @Perl_mg_set(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.av* @Perl_newAV() #0 {
entry:
  %call = tail call %struct.sv* @Perl_newSV(i64 0) #3
  %0 = bitcast %struct.sv* %call to %struct.av*
  %call1 = tail call signext i8 @Perl_sv_upgrade(%struct.sv* %call, i32 10) #3
  %sv_any = bitcast %struct.sv* %call to %struct.xpvav**
  %1 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_flags = getelementptr inbounds %struct.xpvav* %1, i64 0, i32 9
  %2 = load i8* %xav_flags, align 1, !tbaa !1
  %or = or i8 %2, 1
  store i8 %or, i8* %xav_flags, align 1, !tbaa !1
  %3 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_alloc = getelementptr inbounds %struct.xpvav* %3, i64 0, i32 7
  store %struct.sv** null, %struct.sv*** %xav_alloc, align 8, !tbaa !0
  %4 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xpv_pv = getelementptr inbounds %struct.xpvav* %4, i64 0, i32 0
  store i8* null, i8** %xpv_pv, align 8, !tbaa !0
  %5 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %5, i64 0, i32 1
  %6 = bitcast i64* %xav_fill to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 -1, i64 16, i32 8, i1 false)
  ret %struct.av* %0
}

; Function Attrs: nounwind optsize uwtable
define %struct.av* @Perl_av_make(i32 %size, %struct.sv** nocapture %strp) #0 {
entry:
  %call = tail call %struct.sv* @Perl_newSV(i64 0) #3
  %0 = bitcast %struct.sv* %call to %struct.av*
  %call1 = tail call signext i8 @Perl_sv_upgrade(%struct.sv* %call, i32 10) #3
  %sv_any = bitcast %struct.sv* %call to %struct.xpvav**
  %1 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_flags = getelementptr inbounds %struct.xpvav* %1, i64 0, i32 9
  store i8 1, i8* %xav_flags, align 1, !tbaa !1
  %tobool = icmp eq i32 %size, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %size to i64
  %mul = shl nsw i64 %conv, 3
  %call2 = tail call i8* @Perl_safesysmalloc(i64 %mul) #3
  %2 = bitcast i8* %call2 to %struct.sv**
  %3 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_alloc = getelementptr inbounds %struct.xpvav* %3, i64 0, i32 7
  store %struct.sv** %2, %struct.sv*** %xav_alloc, align 8, !tbaa !0
  %4 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xpv_pv = getelementptr inbounds %struct.xpvav* %4, i64 0, i32 0
  store i8* %call2, i8** %xpv_pv, align 8, !tbaa !0
  %sub = add nsw i32 %size, -1
  %conv5 = sext i32 %sub to i64
  %5 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %5, i64 0, i32 1
  store i64 %conv5, i64* %xav_fill, align 8, !tbaa !3
  %xav_max = getelementptr inbounds %struct.xpvav* %5, i64 0, i32 2
  store i64 %conv5, i64* %xav_max, align 8, !tbaa !3
  %cmp31 = icmp sgt i32 %size, 0
  br i1 %cmp31, label %for.body, label %if.end

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %strp.addr.033 = phi %struct.sv** [ %incdec.ptr, %for.body ], [ %strp, %if.then ]
  %call11 = tail call %struct.sv* @Perl_newSV(i64 0) #3
  %arrayidx = getelementptr inbounds %struct.sv** %2, i64 %indvars.iv
  store %struct.sv* %call11, %struct.sv** %arrayidx, align 8, !tbaa !0
  %6 = load %struct.sv** %strp.addr.033, align 8, !tbaa !0
  tail call void @Perl_sv_setsv_flags(%struct.sv* %call11, %struct.sv* %6, i32 2) #3
  %incdec.ptr = getelementptr inbounds %struct.sv** %strp.addr.033, i64 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end, label %for.body

if.end:                                           ; preds = %if.then, %for.body, %entry
  ret %struct.av* %0
}

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #1

; Function Attrs: nounwind optsize uwtable
define %struct.av* @Perl_av_fake(i32 %size, %struct.sv** nocapture %strp) #0 {
entry:
  %call = tail call %struct.sv* @Perl_newSV(i64 0) #3
  %0 = bitcast %struct.sv* %call to %struct.av*
  %call1 = tail call signext i8 @Perl_sv_upgrade(%struct.sv* %call, i32 10) #3
  %add = add nsw i32 %size, 1
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 3
  %call2 = tail call i8* @Perl_safesysmalloc(i64 %mul) #3
  %1 = bitcast i8* %call2 to %struct.sv**
  %sv_any = bitcast %struct.sv* %call to %struct.xpvav**
  %2 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_alloc = getelementptr inbounds %struct.xpvav* %2, i64 0, i32 7
  store %struct.sv** %1, %struct.sv*** %xav_alloc, align 8, !tbaa !0
  %3 = bitcast %struct.sv** %strp to i8*
  %conv3 = sext i32 %size to i64
  %mul4 = shl nsw i64 %conv3, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call2, i8* %3, i64 %mul4, i32 1, i1 false)
  %4 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_flags = getelementptr inbounds %struct.xpvav* %4, i64 0, i32 9
  store i8 2, i8* %xav_flags, align 1, !tbaa !1
  %5 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xpv_pv = getelementptr inbounds %struct.xpvav* %5, i64 0, i32 0
  store i8* %call2, i8** %xpv_pv, align 8, !tbaa !0
  %sub = add nsw i32 %size, -1
  %conv7 = sext i32 %sub to i64
  %6 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %6, i64 0, i32 1
  store i64 %conv7, i64* %xav_fill, align 8, !tbaa !3
  %xav_max = getelementptr inbounds %struct.xpvav* %6, i64 0, i32 2
  store i64 %conv7, i64* %xav_max, align 8, !tbaa !3
  %tobool26 = icmp eq i32 %size, 0
  br i1 %tobool26, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %size.addr.028 = phi i32 [ %dec, %while.body ], [ %size, %entry ]
  %strp.addr.027 = phi %struct.sv** [ %incdec.ptr, %while.body ], [ %strp, %entry ]
  %dec = add nsw i32 %size.addr.028, -1
  %7 = load %struct.sv** %strp.addr.027, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %8 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %8, -2049
  store i32 %and, i32* %sv_flags, align 4, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.sv** %strp.addr.027, i64 1
  %tobool = icmp eq i32 %dec, 0
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret %struct.av* %0
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_av_clear(%struct.av* %av) #0 {
entry:
  %tobool = icmp eq %struct.av* %av, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.av* %av, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %0, 8388608
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([0 x i8]* @PL_no_modify, i64 0, i64 0)) #3
  %.pre = load i32* %sv_flags, align 4, !tbaa !4
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then2
  %1 = phi i32 [ %0, %if.end ], [ %.pre, %if.then2 ]
  %and5 = and i32 %1, 32768
  %tobool6 = icmp eq i32 %and5, 0
  br i1 %tobool6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end3
  %2 = bitcast %struct.av* %av to %struct.sv*
  %call = tail call i32 @Perl_mg_clear(%struct.sv* %2) #3
  br label %if.end8

if.end8:                                          ; preds = %if.end3, %if.then7
  %sv_any = getelementptr inbounds %struct.av* %av, i64 0, i32 0
  %3 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_max = getelementptr inbounds %struct.xpvav* %3, i64 0, i32 2
  %4 = load i64* %xav_max, align 8, !tbaa !3
  %cmp = icmp slt i64 %4, 0
  br i1 %cmp, label %return, label %if.end10

if.end10:                                         ; preds = %if.end8
  %xav_flags = getelementptr inbounds %struct.xpvav* %3, i64 0, i32 9
  %5 = load i8* %xav_flags, align 1, !tbaa !1
  %and12 = and i8 %5, 1
  %tobool13 = icmp eq i8 %and12, 0
  br i1 %tobool13, label %if.end21, label %if.then14

if.then14:                                        ; preds = %if.end10
  %xav_array = getelementptr inbounds %struct.xpvav* %3, i64 0, i32 0
  %6 = load i8** %xav_array, align 8, !tbaa !0
  %7 = bitcast i8* %6 to %struct.sv**
  %xav_fill = getelementptr inbounds %struct.xpvav* %3, i64 0, i32 1
  %8 = load i64* %xav_fill, align 8, !tbaa !3
  %add = add nsw i64 %8, 1
  %conv17 = trunc i64 %add to i32
  %tobool1856 = icmp eq i32 %conv17, 0
  br i1 %tobool1856, label %if.end21, label %while.body

while.body:                                       ; preds = %if.then14, %while.body
  %key.057 = phi i32 [ %dec, %while.body ], [ %conv17, %if.then14 ]
  %dec = add nsw i32 %key.057, -1
  %idxprom = sext i32 %dec to i64
  %arrayidx = getelementptr inbounds %struct.sv** %7, i64 %idxprom
  %9 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %9) #3
  %tobool18 = icmp eq i32 %dec, 0
  br i1 %tobool18, label %while.cond.if.end21.loopexit_crit_edge, label %while.body

while.cond.if.end21.loopexit_crit_edge:           ; preds = %while.body
  %.pre59.pre = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %while.cond.if.end21.loopexit_crit_edge, %if.end10
  %10 = phi %struct.xpvav* [ %3, %if.end10 ], [ %.pre59.pre, %while.cond.if.end21.loopexit_crit_edge ], [ %3, %if.then14 ]
  %xav_array23 = getelementptr inbounds %struct.xpvav* %10, i64 0, i32 0
  %11 = load i8** %xav_array23, align 8, !tbaa !0
  %xav_alloc = getelementptr inbounds %struct.xpvav* %10, i64 0, i32 7
  %12 = load %struct.sv*** %xav_alloc, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %13 = and i64 %sub.ptr.sub, 34359738360
  %tobool26 = icmp eq i64 %13, 0
  br i1 %tobool26, label %if.end35, label %if.then27

if.then27:                                        ; preds = %if.end21
  %sext = shl i64 %sub.ptr.sub, 29
  %conv28 = ashr exact i64 %sext, 32
  %xav_max30 = getelementptr inbounds %struct.xpvav* %10, i64 0, i32 2
  %14 = load i64* %xav_max30, align 8, !tbaa !3
  %add31 = add nsw i64 %14, %conv28
  store i64 %add31, i64* %xav_max30, align 8, !tbaa !3
  %15 = bitcast %struct.sv** %12 to i8*
  store i8* %15, i8** %xav_array23, align 8, !tbaa !0
  %.pre60 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  br label %if.end35

if.end35:                                         ; preds = %if.end21, %if.then27
  %16 = phi %struct.xpvav* [ %10, %if.end21 ], [ %.pre60, %if.then27 ]
  %xav_fill37 = getelementptr inbounds %struct.xpvav* %16, i64 0, i32 1
  store i64 -1, i64* %xav_fill37, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %entry, %if.end8, %if.end35
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_mg_clear(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_av_undef(%struct.av* %av) #0 {
entry:
  %tobool = icmp eq %struct.av* %av, null
  br i1 %tobool, label %if.end27, label %if.end

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.av* %av, i64 0, i32 2
  %1 = load i32* %0, align 4, !tbaa !4
  %and = and i32 %1, 32768
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %if.end4, label %cond.true

cond.true:                                        ; preds = %if.end
  %2 = bitcast %struct.av* %av to %struct.sv*
  %call = tail call %struct.magic* @Perl_mg_find(%struct.sv* %2, i32 80) #3
  %tobool2 = icmp eq %struct.magic* %call, null
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %cond.true
  tail call void @Perl_av_fill(%struct.av* %av, i32 -1) #4
  br label %if.end4

if.end4:                                          ; preds = %cond.true, %if.end, %if.then3
  %sv_any = getelementptr inbounds %struct.av* %av, i64 0, i32 0
  %3 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_flags = getelementptr inbounds %struct.xpvav* %3, i64 0, i32 9
  %4 = load i8* %xav_flags, align 1, !tbaa !1
  %and5 = and i8 %4, 1
  %tobool6 = icmp eq i8 %and5, 0
  br i1 %tobool6, label %if.end12, label %if.then7

if.then7:                                         ; preds = %if.end4
  %xav_fill = getelementptr inbounds %struct.xpvav* %3, i64 0, i32 1
  %5 = load i64* %xav_fill, align 8, !tbaa !3
  %add = add nsw i64 %5, 1
  %conv9 = trunc i64 %add to i32
  %tobool1043 = icmp eq i32 %conv9, 0
  br i1 %tobool1043, label %if.end12, label %while.body

while.body:                                       ; preds = %while.body, %if.then7
  %6 = phi %struct.xpvav* [ %3, %if.then7 ], [ %.pre.pre, %while.body ]
  %key.044 = phi i32 [ %conv9, %if.then7 ], [ %dec, %while.body ]
  %dec = add nsw i32 %key.044, -1
  %idxprom = sext i32 %dec to i64
  %xav_array = getelementptr inbounds %struct.xpvav* %6, i64 0, i32 0
  %7 = load i8** %xav_array, align 8, !tbaa !0
  %8 = bitcast i8* %7 to %struct.sv**
  %arrayidx = getelementptr inbounds %struct.sv** %8, i64 %idxprom
  %9 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %9) #3
  %tobool10 = icmp eq i32 %dec, 0
  %.pre.pre = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  br i1 %tobool10, label %if.end12, label %while.body

if.end12:                                         ; preds = %while.body, %if.then7, %if.end4
  %10 = phi %struct.xpvav* [ %3, %if.end4 ], [ %3, %if.then7 ], [ %.pre.pre, %while.body ]
  %xav_alloc = getelementptr inbounds %struct.xpvav* %10, i64 0, i32 7
  %11 = load %struct.sv*** %xav_alloc, align 8, !tbaa !0
  %12 = bitcast %struct.sv** %11 to i8*
  tail call void @Perl_safesysfree(i8* %12) #3
  %13 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_alloc15 = getelementptr inbounds %struct.xpvav* %13, i64 0, i32 7
  store %struct.sv** null, %struct.sv*** %xav_alloc15, align 8, !tbaa !0
  %14 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xpv_pv = getelementptr inbounds %struct.xpvav* %14, i64 0, i32 0
  store i8* null, i8** %xpv_pv, align 8, !tbaa !0
  %15 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_fill18 = getelementptr inbounds %struct.xpvav* %15, i64 0, i32 1
  %xav_arylen = getelementptr inbounds %struct.xpvav* %15, i64 0, i32 8
  %16 = bitcast i64* %xav_fill18 to i8*
  call void @llvm.memset.p0i8.i64(i8* %16, i8 -1, i64 16, i32 8, i1 false)
  %17 = load %struct.sv** %xav_arylen, align 8, !tbaa !0
  %tobool21 = icmp eq %struct.sv* %17, null
  br i1 %tobool21, label %if.end27, label %if.then22

if.then22:                                        ; preds = %if.end12
  tail call void @Perl_sv_free(%struct.sv* %17) #3
  %18 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_arylen26 = getelementptr inbounds %struct.xpvav* %18, i64 0, i32 8
  store %struct.sv* null, %struct.sv** %xav_arylen26, align 8, !tbaa !0
  br label %if.end27

if.end27:                                         ; preds = %if.end12, %entry, %if.then22
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_av_fill(%struct.av* %av, i32 %fill) #0 {
entry:
  %tobool = icmp eq %struct.av* %av, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([18 x i8]* @.str7, i64 0, i64 0)) #3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %cmp = icmp sgt i32 %fill, -1
  %.fill = select i1 %cmp, i32 %fill, i32 -1
  %0 = bitcast %struct.av* %av to %struct.sv*
  %1 = getelementptr inbounds %struct.av* %av, i64 0, i32 2
  %2 = load i32* %1, align 4, !tbaa !4
  %and = and i32 %2, 32768
  %tobool3 = icmp eq i32 %and, 0
  br i1 %tobool3, label %if.end104, label %cond.end

cond.end:                                         ; preds = %if.end
  %call = tail call %struct.magic* @Perl_mg_find(%struct.sv* %0, i32 80) #3
  %tobool4 = icmp eq %struct.magic* %call, null
  br i1 %tobool4, label %if.end104, label %if.then5

if.then5:                                         ; preds = %cond.end
  %3 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  tail call void @Perl_push_scope() #3
  tail call void @Perl_save_int(i32* @PL_tmps_floor) #3
  %4 = load i32* @PL_tmps_ix, align 4, !tbaa !4
  store i32 %4, i32* @PL_tmps_floor, align 4, !tbaa !4
  %5 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next = getelementptr inbounds %struct.stackinfo* %5, i64 0, i32 6
  %6 = load %struct.stackinfo** %si_next, align 8, !tbaa !0
  %tobool6 = icmp eq %struct.stackinfo* %6, null
  br i1 %tobool6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.then5
  %call8 = tail call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13) #3
  %7 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev = getelementptr inbounds %struct.stackinfo* %call8, i64 0, i32 5
  store %struct.stackinfo* %7, %struct.stackinfo** %si_prev, align 8, !tbaa !0
  %8 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next9 = getelementptr inbounds %struct.stackinfo* %8, i64 0, i32 6
  store %struct.stackinfo* %call8, %struct.stackinfo** %si_next9, align 8, !tbaa !0
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.then7
  %next.0 = phi %struct.stackinfo* [ %6, %if.then5 ], [ %call8, %if.then7 ]
  %si_type = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 4
  store i32 2, i32* %si_type, align 4, !tbaa !4
  %si_cxix = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 2
  store i32 -1, i32* %si_cxix, align 4, !tbaa !4
  %si_stack = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 0
  %9 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.av* %9, i64 0, i32 0
  %10 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %10, i64 0, i32 1
  store i64 0, i64* %xav_fill, align 8, !tbaa !3
  %11 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %3 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %12 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any11 = getelementptr inbounds %struct.av* %12, i64 0, i32 0
  %13 = load %struct.xpvav** %sv_any11, align 8, !tbaa !0
  %xav_fill12 = getelementptr inbounds %struct.xpvav* %13, i64 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill12, align 8, !tbaa !3
  %xav_array = getelementptr inbounds %struct.xpvav* %10, i64 0, i32 0
  %14 = load i8** %xav_array, align 8, !tbaa !0
  %15 = bitcast i8* %14 to %struct.sv**
  store %struct.sv** %15, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %16 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any16 = getelementptr inbounds %struct.av* %16, i64 0, i32 0
  %17 = load %struct.xpvav** %sv_any16, align 8, !tbaa !0
  %xav_max = getelementptr inbounds %struct.xpvav* %17, i64 0, i32 2
  %18 = load i64* %xav_max, align 8, !tbaa !3
  %add.ptr = getelementptr inbounds %struct.sv** %15, i64 %18
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %19 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any18 = getelementptr inbounds %struct.av* %19, i64 0, i32 0
  %20 = load %struct.xpvav** %sv_any18, align 8, !tbaa !0
  %xav_fill19 = getelementptr inbounds %struct.xpvav* %20, i64 0, i32 1
  %21 = load i64* %xav_fill19, align 8, !tbaa !3
  %add.ptr20 = getelementptr inbounds %struct.sv** %15, i64 %21
  store %struct.sv** %add.ptr20, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %22 = load %struct.av** %si_stack, align 8, !tbaa !0
  store %struct.av* %22, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %next.0, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %23 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %23, i64 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %24 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp22 = icmp eq i32* %incdec.ptr, %24
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end10
  tail call void @Perl_markstack_grow() #3
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %.pre199 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %.pre200 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end10
  %25 = phi %struct.sv** [ %.pre200, %if.then23 ], [ %add.ptr, %if.end10 ]
  %26 = phi i32* [ %.pre199, %if.then23 ], [ %incdec.ptr, %if.end10 ]
  %27 = phi %struct.sv** [ %.pre, %if.then23 ], [ %15, %if.end10 ]
  %sub.ptr.lhs.cast25 = ptrtoint %struct.sv** %add.ptr20 to i64
  %sub.ptr.rhs.cast26 = ptrtoint %struct.sv** %27 to i64
  %sub.ptr.sub27 = sub i64 %sub.ptr.lhs.cast25, %sub.ptr.rhs.cast26
  %sub.ptr.div28190 = lshr exact i64 %sub.ptr.sub27, 3
  %conv = trunc i64 %sub.ptr.div28190 to i32
  store i32 %conv, i32* %26, align 4, !tbaa !4
  %sub.ptr.lhs.cast29 = ptrtoint %struct.sv** %25 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.lhs.cast25
  %cmp33 = icmp slt i64 %sub.ptr.sub31, 16
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end24
  %call36 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %add.ptr20, %struct.sv** %add.ptr20, i32 2) #3
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end24
  %sp.0 = phi %struct.sv** [ %call36, %if.then35 ], [ %add.ptr20, %if.end24 ]
  %mg_obj = getelementptr inbounds %struct.magic* %call, i64 0, i32 5
  %28 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool38 = icmp eq %struct.sv* %28, null
  br i1 %tobool38, label %cond.false41, label %cond.end44

cond.false41:                                     ; preds = %if.end37
  %call42 = tail call %struct.sv* @Perl_newRV(%struct.sv* %0) #3
  %call43 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call42) #3
  br label %cond.end44

cond.end44:                                       ; preds = %if.end37, %cond.false41
  %cond45 = phi %struct.sv* [ %call43, %cond.false41 ], [ %28, %if.end37 ]
  %incdec.ptr46 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %cond45, %struct.sv** %incdec.ptr46, align 8, !tbaa !0
  %add = add nsw i32 %.fill, 1
  %conv47 = sext i32 %add to i64
  %call48 = tail call %struct.sv* @Perl_newSViv(i64 %conv47) #3
  %call49 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call48) #3
  %incdec.ptr50 = getelementptr inbounds %struct.sv** %sp.0, i64 2
  store %struct.sv* %call49, %struct.sv** %incdec.ptr50, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr50, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %call51 = tail call i32 @Perl_call_method(i8* getelementptr inbounds ([10 x i8]* @.str8, i64 0, i64 0), i32 2) #3
  %29 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %30 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev53 = getelementptr inbounds %struct.stackinfo* %30, i64 0, i32 5
  %31 = load %struct.stackinfo** %si_prev53, align 8, !tbaa !0
  %tobool54 = icmp eq %struct.stackinfo* %31, null
  br i1 %tobool54, label %if.then55, label %if.end81

if.then55:                                        ; preds = %cond.end44
  %32 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %tobool56 = icmp eq %struct.gv* %32, null
  br i1 %tobool56, label %cond.false76, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then55
  %sv_flags57 = getelementptr inbounds %struct.gv* %32, i64 0, i32 2
  %33 = load i32* %sv_flags57, align 4, !tbaa !4
  %and58 = and i32 %33, 255
  %cmp59 = icmp eq i32 %and58, 13
  br i1 %cmp59, label %land.lhs.true61, label %cond.false76

land.lhs.true61:                                  ; preds = %land.lhs.true
  %sv_any62 = getelementptr inbounds %struct.gv* %32, i64 0, i32 0
  %34 = load %struct.xpvgv** %sv_any62, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %34, i64 0, i32 7
  %35 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_io = getelementptr inbounds %struct.gp* %35, i64 0, i32 2
  %36 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool63 = icmp eq %struct.io* %36, null
  br i1 %tobool63, label %cond.false76, label %land.lhs.true64

land.lhs.true64:                                  ; preds = %land.lhs.true61
  %sv_any68 = getelementptr inbounds %struct.io* %36, i64 0, i32 0
  %37 = load %struct.xpvio** %sv_any68, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %37, i64 0, i32 8
  %38 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool69 = icmp eq %struct._PerlIO** %38, null
  br i1 %tobool69, label %cond.false76, label %cond.end78

cond.false76:                                     ; preds = %land.lhs.true64, %land.lhs.true61, %if.then55, %land.lhs.true
  %call77 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  br label %cond.end78

cond.end78:                                       ; preds = %land.lhs.true64, %cond.false76
  %cond79 = phi %struct._PerlIO** [ %call77, %cond.false76 ], [ %38, %land.lhs.true64 ]
  %call80 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond79, i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)) #3
  tail call void @Perl_my_exit(i32 1) #3
  br label %if.end81

if.end81:                                         ; preds = %cond.end44, %cond.end78
  %39 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast82 = ptrtoint %struct.sv** %29 to i64
  %sub.ptr.rhs.cast83 = ptrtoint %struct.sv** %39 to i64
  %sub.ptr.sub84 = sub i64 %sub.ptr.lhs.cast82, %sub.ptr.rhs.cast83
  %sub.ptr.div85 = ashr exact i64 %sub.ptr.sub84, 3
  %40 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any86 = getelementptr inbounds %struct.av* %40, i64 0, i32 0
  %41 = load %struct.xpvav** %sv_any86, align 8, !tbaa !0
  %xav_fill87 = getelementptr inbounds %struct.xpvav* %41, i64 0, i32 1
  store i64 %sub.ptr.div85, i64* %xav_fill87, align 8, !tbaa !3
  %si_stack88 = getelementptr inbounds %struct.stackinfo* %31, i64 0, i32 0
  %42 = load %struct.av** %si_stack88, align 8, !tbaa !0
  %sv_any89 = getelementptr inbounds %struct.av* %42, i64 0, i32 0
  %43 = load %struct.xpvav** %sv_any89, align 8, !tbaa !0
  %xav_array90 = getelementptr inbounds %struct.xpvav* %43, i64 0, i32 0
  %44 = load i8** %xav_array90, align 8, !tbaa !0
  %45 = bitcast i8* %44 to %struct.sv**
  store %struct.sv** %45, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %46 = load %struct.av** %si_stack88, align 8, !tbaa !0
  %sv_any92 = getelementptr inbounds %struct.av* %46, i64 0, i32 0
  %47 = load %struct.xpvav** %sv_any92, align 8, !tbaa !0
  %xav_max93 = getelementptr inbounds %struct.xpvav* %47, i64 0, i32 2
  %48 = load i64* %xav_max93, align 8, !tbaa !3
  %add.ptr94 = getelementptr inbounds %struct.sv** %45, i64 %48
  store %struct.sv** %add.ptr94, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %49 = load %struct.av** %si_stack88, align 8, !tbaa !0
  %sv_any96 = getelementptr inbounds %struct.av* %49, i64 0, i32 0
  %50 = load %struct.xpvav** %sv_any96, align 8, !tbaa !0
  %xav_fill97 = getelementptr inbounds %struct.xpvav* %50, i64 0, i32 1
  %51 = load i64* %xav_fill97, align 8, !tbaa !3
  %add.ptr98 = getelementptr inbounds %struct.sv** %45, i64 %51
  store %struct.sv** %add.ptr98, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %52 = load %struct.av** %si_stack88, align 8, !tbaa !0
  store %struct.av* %52, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %31, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %53 = load i32* @PL_tmps_ix, align 4, !tbaa !4
  %54 = load i32* @PL_tmps_floor, align 4, !tbaa !4
  %cmp100 = icmp sgt i32 %53, %54
  br i1 %cmp100, label %if.then102, label %if.end103

if.then102:                                       ; preds = %if.end81
  tail call void @Perl_free_tmps() #3
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %if.end81
  tail call void @Perl_pop_scope() #3
  br label %if.end144

if.end104:                                        ; preds = %if.end, %cond.end
  %conv105 = sext i32 %.fill to i64
  %sv_any106 = getelementptr inbounds %struct.av* %av, i64 0, i32 0
  %55 = load %struct.xpvav** %sv_any106, align 8, !tbaa !0
  %xav_max107 = getelementptr inbounds %struct.xpvav* %55, i64 0, i32 2
  %56 = load i64* %xav_max107, align 8, !tbaa !3
  %cmp108 = icmp sgt i64 %conv105, %56
  br i1 %cmp108, label %if.else142, label %if.then110

if.then110:                                       ; preds = %if.end104
  %xav_fill112 = getelementptr inbounds %struct.xpvav* %55, i64 0, i32 1
  %57 = load i64* %xav_fill112, align 8, !tbaa !3
  %conv113 = trunc i64 %57 to i32
  %xav_array115 = getelementptr inbounds %struct.xpvav* %55, i64 0, i32 0
  %58 = load i8** %xav_array115, align 8, !tbaa !0
  %59 = bitcast i8* %58 to %struct.sv**
  %xav_flags = getelementptr inbounds %struct.xpvav* %55, i64 0, i32 9
  %60 = load i8* %xav_flags, align 1, !tbaa !1
  %and118 = and i8 %60, 1
  %tobool119 = icmp eq i8 %and118, 0
  br i1 %tobool119, label %while.cond125.preheader, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then110
  %cmp121195 = icmp sgt i32 %conv113, %.fill
  br i1 %cmp121195, label %while.body.lr.ph, label %if.end132

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %sext = shl i64 %57, 32
  %61 = ashr exact i64 %sext, 32
  br label %while.body

while.cond125.preheader:                          ; preds = %if.then110
  %cmp126192 = icmp slt i32 %conv113, %.fill
  br i1 %cmp126192, label %while.body128.lr.ph, label %if.end132

while.body128.lr.ph:                              ; preds = %while.cond125.preheader
  %sext201 = shl i64 %57, 32
  %62 = ashr exact i64 %sext201, 32
  br label %while.body128

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %indvars.iv197 = phi i64 [ %61, %while.body.lr.ph ], [ %indvars.iv.next198, %while.body ]
  %arrayidx = getelementptr inbounds %struct.sv** %59, i64 %indvars.iv197
  %63 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %63) #3
  %indvars.iv.next198 = add i64 %indvars.iv197, -1
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx, align 8, !tbaa !0
  %64 = trunc i64 %indvars.iv.next198 to i32
  %cmp121 = icmp sgt i32 %64, %.fill
  br i1 %cmp121, label %while.body, label %if.end132

while.body128:                                    ; preds = %while.body128.lr.ph, %while.body128
  %indvars.iv = phi i64 [ %62, %while.body128.lr.ph ], [ %indvars.iv.next, %while.body128 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx130 = getelementptr inbounds %struct.sv** %59, i64 %indvars.iv.next
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx130, align 8, !tbaa !0
  %65 = trunc i64 %indvars.iv.next to i32
  %cmp126 = icmp slt i32 %65, %.fill
  br i1 %cmp126, label %while.body128, label %if.end132

if.end132:                                        ; preds = %while.cond.preheader, %while.body, %while.cond125.preheader, %while.body128
  %66 = load %struct.xpvav** %sv_any106, align 8, !tbaa !0
  %xav_fill135 = getelementptr inbounds %struct.xpvav* %66, i64 0, i32 1
  store i64 %conv105, i64* %xav_fill135, align 8, !tbaa !3
  %67 = load i32* %1, align 4, !tbaa !4
  %and137 = and i32 %67, 16384
  %tobool138 = icmp eq i32 %and137, 0
  br i1 %tobool138, label %if.end144, label %if.then139

if.then139:                                       ; preds = %if.end132
  %call140 = tail call i32 @Perl_mg_set(%struct.sv* %0) #3
  br label %if.end144

if.else142:                                       ; preds = %if.end104
  %call143 = tail call %struct.sv** @Perl_av_store(%struct.av* %av, i32 %.fill, %struct.sv* @PL_sv_undef) #4
  br label %if.end144

if.end144:                                        ; preds = %if.end132, %if.then139, %if.end103, %if.else142
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_av_push(%struct.av* %av, %struct.sv* %val) #0 {
entry:
  %tobool = icmp eq %struct.av* %av, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.av* %av, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %0, 8388608
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([0 x i8]* @PL_no_modify, i64 0, i64 0)) #3
  %.pre = load i32* %sv_flags, align 4, !tbaa !4
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then2
  %1 = phi i32 [ %0, %if.end ], [ %.pre, %if.then2 ]
  %2 = bitcast %struct.av* %av to %struct.sv*
  %and5 = and i32 %1, 32768
  %tobool6 = icmp eq i32 %and5, 0
  br i1 %tobool6, label %if.end99, label %cond.end

cond.end:                                         ; preds = %if.end3
  %call = tail call %struct.magic* @Perl_mg_find(%struct.sv* %2, i32 80) #3
  %tobool7 = icmp eq %struct.magic* %call, null
  br i1 %tobool7, label %if.end99, label %if.then8

if.then8:                                         ; preds = %cond.end
  %3 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %4 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next = getelementptr inbounds %struct.stackinfo* %4, i64 0, i32 6
  %5 = load %struct.stackinfo** %si_next, align 8, !tbaa !0
  %tobool9 = icmp eq %struct.stackinfo* %5, null
  br i1 %tobool9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.then8
  %call11 = tail call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13) #3
  %6 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev = getelementptr inbounds %struct.stackinfo* %call11, i64 0, i32 5
  store %struct.stackinfo* %6, %struct.stackinfo** %si_prev, align 8, !tbaa !0
  %7 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next12 = getelementptr inbounds %struct.stackinfo* %7, i64 0, i32 6
  store %struct.stackinfo* %call11, %struct.stackinfo** %si_next12, align 8, !tbaa !0
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.then10
  %next.0 = phi %struct.stackinfo* [ %5, %if.then8 ], [ %call11, %if.then10 ]
  %si_type = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 4
  store i32 2, i32* %si_type, align 4, !tbaa !4
  %si_cxix = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 2
  store i32 -1, i32* %si_cxix, align 4, !tbaa !4
  %si_stack = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 0
  %8 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.av* %8, i64 0, i32 0
  %9 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %9, i64 0, i32 1
  store i64 0, i64* %xav_fill, align 8, !tbaa !3
  %10 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %3 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %11 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any14 = getelementptr inbounds %struct.av* %11, i64 0, i32 0
  %12 = load %struct.xpvav** %sv_any14, align 8, !tbaa !0
  %xav_fill15 = getelementptr inbounds %struct.xpvav* %12, i64 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill15, align 8, !tbaa !3
  %xav_array = getelementptr inbounds %struct.xpvav* %9, i64 0, i32 0
  %13 = load i8** %xav_array, align 8, !tbaa !0
  %14 = bitcast i8* %13 to %struct.sv**
  store %struct.sv** %14, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %15 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any19 = getelementptr inbounds %struct.av* %15, i64 0, i32 0
  %16 = load %struct.xpvav** %sv_any19, align 8, !tbaa !0
  %xav_max = getelementptr inbounds %struct.xpvav* %16, i64 0, i32 2
  %17 = load i64* %xav_max, align 8, !tbaa !3
  %add.ptr = getelementptr inbounds %struct.sv** %14, i64 %17
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %18 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any21 = getelementptr inbounds %struct.av* %18, i64 0, i32 0
  %19 = load %struct.xpvav** %sv_any21, align 8, !tbaa !0
  %xav_fill22 = getelementptr inbounds %struct.xpvav* %19, i64 0, i32 1
  %20 = load i64* %xav_fill22, align 8, !tbaa !3
  %add.ptr23 = getelementptr inbounds %struct.sv** %14, i64 %20
  store %struct.sv** %add.ptr23, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %21 = load %struct.av** %si_stack, align 8, !tbaa !0
  store %struct.av* %21, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %next.0, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %22 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %22, i64 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %23 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp = icmp eq i32* %incdec.ptr, %23
  br i1 %cmp, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end13
  tail call void @Perl_markstack_grow() #3
  %.pre136 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %.pre137 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %.pre138 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end13
  %24 = phi %struct.sv** [ %.pre138, %if.then25 ], [ %add.ptr, %if.end13 ]
  %25 = phi i32* [ %.pre137, %if.then25 ], [ %incdec.ptr, %if.end13 ]
  %26 = phi %struct.sv** [ %.pre136, %if.then25 ], [ %14, %if.end13 ]
  %sub.ptr.lhs.cast27 = ptrtoint %struct.sv** %add.ptr23 to i64
  %sub.ptr.rhs.cast28 = ptrtoint %struct.sv** %26 to i64
  %sub.ptr.sub29 = sub i64 %sub.ptr.lhs.cast27, %sub.ptr.rhs.cast28
  %sub.ptr.div30134 = lshr exact i64 %sub.ptr.sub29, 3
  %conv = trunc i64 %sub.ptr.div30134 to i32
  store i32 %conv, i32* %25, align 4, !tbaa !4
  %sub.ptr.lhs.cast31 = ptrtoint %struct.sv** %24 to i64
  %sub.ptr.sub33 = sub i64 %sub.ptr.lhs.cast31, %sub.ptr.lhs.cast27
  %cmp35 = icmp slt i64 %sub.ptr.sub33, 16
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end26
  %call38 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %add.ptr23, %struct.sv** %add.ptr23, i32 2) #3
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end26
  %sp.0 = phi %struct.sv** [ %call38, %if.then37 ], [ %add.ptr23, %if.end26 ]
  %mg_obj = getelementptr inbounds %struct.magic* %call, i64 0, i32 5
  %27 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool40 = icmp eq %struct.sv* %27, null
  br i1 %tobool40, label %cond.false43, label %cond.end46

cond.false43:                                     ; preds = %if.end39
  %call44 = tail call %struct.sv* @Perl_newRV(%struct.sv* %2) #3
  %call45 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call44) #3
  br label %cond.end46

cond.end46:                                       ; preds = %if.end39, %cond.false43
  %cond47 = phi %struct.sv* [ %call45, %cond.false43 ], [ %27, %if.end39 ]
  %incdec.ptr48 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %cond47, %struct.sv** %incdec.ptr48, align 8, !tbaa !0
  %incdec.ptr49 = getelementptr inbounds %struct.sv** %sp.0, i64 2
  store %struct.sv* %val, %struct.sv** %incdec.ptr49, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr49, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  tail call void @Perl_push_scope() #3
  %call50 = tail call i32 @Perl_call_method(i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i32 2) #3
  tail call void @Perl_pop_scope() #3
  %28 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %29 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev52 = getelementptr inbounds %struct.stackinfo* %29, i64 0, i32 5
  %30 = load %struct.stackinfo** %si_prev52, align 8, !tbaa !0
  %tobool53 = icmp eq %struct.stackinfo* %30, null
  br i1 %tobool53, label %if.then54, label %if.end80

if.then54:                                        ; preds = %cond.end46
  %31 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %tobool55 = icmp eq %struct.gv* %31, null
  br i1 %tobool55, label %cond.false75, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then54
  %sv_flags56 = getelementptr inbounds %struct.gv* %31, i64 0, i32 2
  %32 = load i32* %sv_flags56, align 4, !tbaa !4
  %and57 = and i32 %32, 255
  %cmp58 = icmp eq i32 %and57, 13
  br i1 %cmp58, label %land.lhs.true60, label %cond.false75

land.lhs.true60:                                  ; preds = %land.lhs.true
  %sv_any61 = getelementptr inbounds %struct.gv* %31, i64 0, i32 0
  %33 = load %struct.xpvgv** %sv_any61, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %33, i64 0, i32 7
  %34 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_io = getelementptr inbounds %struct.gp* %34, i64 0, i32 2
  %35 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool62 = icmp eq %struct.io* %35, null
  br i1 %tobool62, label %cond.false75, label %land.lhs.true63

land.lhs.true63:                                  ; preds = %land.lhs.true60
  %sv_any67 = getelementptr inbounds %struct.io* %35, i64 0, i32 0
  %36 = load %struct.xpvio** %sv_any67, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %36, i64 0, i32 8
  %37 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool68 = icmp eq %struct._PerlIO** %37, null
  br i1 %tobool68, label %cond.false75, label %cond.end77

cond.false75:                                     ; preds = %land.lhs.true63, %land.lhs.true60, %if.then54, %land.lhs.true
  %call76 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  br label %cond.end77

cond.end77:                                       ; preds = %land.lhs.true63, %cond.false75
  %cond78 = phi %struct._PerlIO** [ %call76, %cond.false75 ], [ %37, %land.lhs.true63 ]
  %call79 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond78, i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)) #3
  tail call void @Perl_my_exit(i32 1) #3
  br label %if.end80

if.end80:                                         ; preds = %cond.end46, %cond.end77
  %38 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast81 = ptrtoint %struct.sv** %28 to i64
  %sub.ptr.rhs.cast82 = ptrtoint %struct.sv** %38 to i64
  %sub.ptr.sub83 = sub i64 %sub.ptr.lhs.cast81, %sub.ptr.rhs.cast82
  %sub.ptr.div84 = ashr exact i64 %sub.ptr.sub83, 3
  %39 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any85 = getelementptr inbounds %struct.av* %39, i64 0, i32 0
  %40 = load %struct.xpvav** %sv_any85, align 8, !tbaa !0
  %xav_fill86 = getelementptr inbounds %struct.xpvav* %40, i64 0, i32 1
  store i64 %sub.ptr.div84, i64* %xav_fill86, align 8, !tbaa !3
  %si_stack87 = getelementptr inbounds %struct.stackinfo* %30, i64 0, i32 0
  %41 = load %struct.av** %si_stack87, align 8, !tbaa !0
  %sv_any88 = getelementptr inbounds %struct.av* %41, i64 0, i32 0
  %42 = load %struct.xpvav** %sv_any88, align 8, !tbaa !0
  %xav_array89 = getelementptr inbounds %struct.xpvav* %42, i64 0, i32 0
  %43 = load i8** %xav_array89, align 8, !tbaa !0
  %44 = bitcast i8* %43 to %struct.sv**
  store %struct.sv** %44, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %45 = load %struct.av** %si_stack87, align 8, !tbaa !0
  %sv_any91 = getelementptr inbounds %struct.av* %45, i64 0, i32 0
  %46 = load %struct.xpvav** %sv_any91, align 8, !tbaa !0
  %xav_max92 = getelementptr inbounds %struct.xpvav* %46, i64 0, i32 2
  %47 = load i64* %xav_max92, align 8, !tbaa !3
  %add.ptr93 = getelementptr inbounds %struct.sv** %44, i64 %47
  store %struct.sv** %add.ptr93, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %48 = load %struct.av** %si_stack87, align 8, !tbaa !0
  %sv_any95 = getelementptr inbounds %struct.av* %48, i64 0, i32 0
  %49 = load %struct.xpvav** %sv_any95, align 8, !tbaa !0
  %xav_fill96 = getelementptr inbounds %struct.xpvav* %49, i64 0, i32 1
  %50 = load i64* %xav_fill96, align 8, !tbaa !3
  %add.ptr97 = getelementptr inbounds %struct.sv** %44, i64 %50
  store %struct.sv** %add.ptr97, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %51 = load %struct.av** %si_stack87, align 8, !tbaa !0
  store %struct.av* %51, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %30, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  br label %return

if.end99:                                         ; preds = %if.end3, %cond.end
  %sv_any100 = getelementptr inbounds %struct.av* %av, i64 0, i32 0
  %52 = load %struct.xpvav** %sv_any100, align 8, !tbaa !0
  %xav_fill101 = getelementptr inbounds %struct.xpvav* %52, i64 0, i32 1
  %53 = load i64* %xav_fill101, align 8, !tbaa !3
  %add = add nsw i64 %53, 1
  %conv102 = trunc i64 %add to i32
  %call103 = tail call %struct.sv** @Perl_av_store(%struct.av* %av, i32 %conv102, %struct.sv* %val) #4
  br label %return

return:                                           ; preds = %entry, %if.end99, %if.end80
  ret void
}

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @Perl_av_pop(%struct.av* %av) #0 {
entry:
  %tobool = icmp eq %struct.av* %av, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.av* %av, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %0, 8388608
  %tobool2 = icmp eq i32 %and, 0
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([0 x i8]* @PL_no_modify, i64 0, i64 0)) #3
  %.pre = load i32* %sv_flags, align 4, !tbaa !4
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then3
  %1 = phi i32 [ %0, %if.end ], [ %.pre, %if.then3 ]
  %2 = bitcast %struct.av* %av to %struct.sv*
  %and6 = and i32 %1, 32768
  %tobool7 = icmp eq i32 %and6, 0
  br i1 %tobool7, label %if.end104, label %cond.end

cond.end:                                         ; preds = %if.end4
  %call = tail call %struct.magic* @Perl_mg_find(%struct.sv* %2, i32 80) #3
  %tobool8 = icmp eq %struct.magic* %call, null
  br i1 %tobool8, label %cond.end.if.end104_crit_edge, label %if.then9

cond.end.if.end104_crit_edge:                     ; preds = %cond.end
  %.pre175 = load i32* %sv_flags, align 4, !tbaa !4
  br label %if.end104

if.then9:                                         ; preds = %cond.end
  %3 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %4 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next = getelementptr inbounds %struct.stackinfo* %4, i64 0, i32 6
  %5 = load %struct.stackinfo** %si_next, align 8, !tbaa !0
  %tobool10 = icmp eq %struct.stackinfo* %5, null
  br i1 %tobool10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.then9
  %call12 = tail call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13) #3
  %6 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev = getelementptr inbounds %struct.stackinfo* %call12, i64 0, i32 5
  store %struct.stackinfo* %6, %struct.stackinfo** %si_prev, align 8, !tbaa !0
  %7 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next13 = getelementptr inbounds %struct.stackinfo* %7, i64 0, i32 6
  store %struct.stackinfo* %call12, %struct.stackinfo** %si_next13, align 8, !tbaa !0
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.then11
  %next.0 = phi %struct.stackinfo* [ %5, %if.then9 ], [ %call12, %if.then11 ]
  %si_type = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 4
  store i32 2, i32* %si_type, align 4, !tbaa !4
  %si_cxix = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 2
  store i32 -1, i32* %si_cxix, align 4, !tbaa !4
  %si_stack = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 0
  %8 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.av* %8, i64 0, i32 0
  %9 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %9, i64 0, i32 1
  store i64 0, i64* %xav_fill, align 8, !tbaa !3
  %10 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %3 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %11 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any15 = getelementptr inbounds %struct.av* %11, i64 0, i32 0
  %12 = load %struct.xpvav** %sv_any15, align 8, !tbaa !0
  %xav_fill16 = getelementptr inbounds %struct.xpvav* %12, i64 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill16, align 8, !tbaa !3
  %xav_array = getelementptr inbounds %struct.xpvav* %9, i64 0, i32 0
  %13 = load i8** %xav_array, align 8, !tbaa !0
  %14 = bitcast i8* %13 to %struct.sv**
  store %struct.sv** %14, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %15 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any20 = getelementptr inbounds %struct.av* %15, i64 0, i32 0
  %16 = load %struct.xpvav** %sv_any20, align 8, !tbaa !0
  %xav_max = getelementptr inbounds %struct.xpvav* %16, i64 0, i32 2
  %17 = load i64* %xav_max, align 8, !tbaa !3
  %add.ptr = getelementptr inbounds %struct.sv** %14, i64 %17
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %18 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any22 = getelementptr inbounds %struct.av* %18, i64 0, i32 0
  %19 = load %struct.xpvav** %sv_any22, align 8, !tbaa !0
  %xav_fill23 = getelementptr inbounds %struct.xpvav* %19, i64 0, i32 1
  %20 = load i64* %xav_fill23, align 8, !tbaa !3
  %add.ptr24 = getelementptr inbounds %struct.sv** %14, i64 %20
  store %struct.sv** %add.ptr24, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %21 = load %struct.av** %si_stack, align 8, !tbaa !0
  store %struct.av* %21, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %next.0, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %22 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %22, i64 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %23 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp = icmp eq i32* %incdec.ptr, %23
  br i1 %cmp, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end14
  tail call void @Perl_markstack_grow() #3
  %.pre172 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %.pre173 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %.pre174 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end14
  %24 = phi %struct.sv** [ %.pre174, %if.then26 ], [ %add.ptr, %if.end14 ]
  %25 = phi i32* [ %.pre173, %if.then26 ], [ %incdec.ptr, %if.end14 ]
  %26 = phi %struct.sv** [ %.pre172, %if.then26 ], [ %14, %if.end14 ]
  %sub.ptr.lhs.cast28 = ptrtoint %struct.sv** %add.ptr24 to i64
  %sub.ptr.rhs.cast29 = ptrtoint %struct.sv** %26 to i64
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29
  %sub.ptr.div31170 = lshr exact i64 %sub.ptr.sub30, 3
  %conv = trunc i64 %sub.ptr.div31170 to i32
  store i32 %conv, i32* %25, align 4, !tbaa !4
  %sub.ptr.lhs.cast32 = ptrtoint %struct.sv** %24 to i64
  %sub.ptr.sub34 = sub i64 %sub.ptr.lhs.cast32, %sub.ptr.lhs.cast28
  %cmp36 = icmp slt i64 %sub.ptr.sub34, 8
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end27
  %call39 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %add.ptr24, %struct.sv** %add.ptr24, i32 1) #3
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end27
  %sp.0 = phi %struct.sv** [ %call39, %if.then38 ], [ %add.ptr24, %if.end27 ]
  %mg_obj = getelementptr inbounds %struct.magic* %call, i64 0, i32 5
  %27 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool41 = icmp eq %struct.sv* %27, null
  br i1 %tobool41, label %cond.false44, label %cond.end47

cond.false44:                                     ; preds = %if.end40
  %call45 = tail call %struct.sv* @Perl_newRV(%struct.sv* %2) #3
  %call46 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call45) #3
  br label %cond.end47

cond.end47:                                       ; preds = %if.end40, %cond.false44
  %cond48 = phi %struct.sv* [ %call46, %cond.false44 ], [ %27, %if.end40 ]
  %incdec.ptr49 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %cond48, %struct.sv** %incdec.ptr49, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr49, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  tail call void @Perl_push_scope() #3
  %call50 = tail call i32 @Perl_call_method(i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), i32 0) #3
  %tobool51 = icmp eq i32 %call50, 0
  br i1 %tobool51, label %if.end55, label %if.then52

if.then52:                                        ; preds = %cond.end47
  %28 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr53 = getelementptr inbounds %struct.sv** %28, i64 -1
  store %struct.sv** %incdec.ptr53, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %29 = load %struct.sv** %28, align 8, !tbaa !0
  %call54 = tail call %struct.sv* @Perl_newSVsv(%struct.sv* %29) #3
  br label %if.end55

if.end55:                                         ; preds = %cond.end47, %if.then52
  %retval1.0 = phi %struct.sv* [ %call54, %if.then52 ], [ @PL_sv_undef, %cond.end47 ]
  tail call void @Perl_pop_scope() #3
  %30 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %31 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev57 = getelementptr inbounds %struct.stackinfo* %31, i64 0, i32 5
  %32 = load %struct.stackinfo** %si_prev57, align 8, !tbaa !0
  %tobool58 = icmp eq %struct.stackinfo* %32, null
  br i1 %tobool58, label %if.then59, label %if.end85

if.then59:                                        ; preds = %if.end55
  %33 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %tobool60 = icmp eq %struct.gv* %33, null
  br i1 %tobool60, label %cond.false80, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then59
  %sv_flags61 = getelementptr inbounds %struct.gv* %33, i64 0, i32 2
  %34 = load i32* %sv_flags61, align 4, !tbaa !4
  %and62 = and i32 %34, 255
  %cmp63 = icmp eq i32 %and62, 13
  br i1 %cmp63, label %land.lhs.true65, label %cond.false80

land.lhs.true65:                                  ; preds = %land.lhs.true
  %sv_any66 = getelementptr inbounds %struct.gv* %33, i64 0, i32 0
  %35 = load %struct.xpvgv** %sv_any66, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %35, i64 0, i32 7
  %36 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_io = getelementptr inbounds %struct.gp* %36, i64 0, i32 2
  %37 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool67 = icmp eq %struct.io* %37, null
  br i1 %tobool67, label %cond.false80, label %land.lhs.true68

land.lhs.true68:                                  ; preds = %land.lhs.true65
  %sv_any72 = getelementptr inbounds %struct.io* %37, i64 0, i32 0
  %38 = load %struct.xpvio** %sv_any72, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %38, i64 0, i32 8
  %39 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool73 = icmp eq %struct._PerlIO** %39, null
  br i1 %tobool73, label %cond.false80, label %cond.end82

cond.false80:                                     ; preds = %land.lhs.true68, %land.lhs.true65, %if.then59, %land.lhs.true
  %call81 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  br label %cond.end82

cond.end82:                                       ; preds = %land.lhs.true68, %cond.false80
  %cond83 = phi %struct._PerlIO** [ %call81, %cond.false80 ], [ %39, %land.lhs.true68 ]
  %call84 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond83, i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)) #3
  tail call void @Perl_my_exit(i32 1) #3
  br label %if.end85

if.end85:                                         ; preds = %if.end55, %cond.end82
  %40 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast86 = ptrtoint %struct.sv** %30 to i64
  %sub.ptr.rhs.cast87 = ptrtoint %struct.sv** %40 to i64
  %sub.ptr.sub88 = sub i64 %sub.ptr.lhs.cast86, %sub.ptr.rhs.cast87
  %sub.ptr.div89 = ashr exact i64 %sub.ptr.sub88, 3
  %41 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any90 = getelementptr inbounds %struct.av* %41, i64 0, i32 0
  %42 = load %struct.xpvav** %sv_any90, align 8, !tbaa !0
  %xav_fill91 = getelementptr inbounds %struct.xpvav* %42, i64 0, i32 1
  store i64 %sub.ptr.div89, i64* %xav_fill91, align 8, !tbaa !3
  %si_stack92 = getelementptr inbounds %struct.stackinfo* %32, i64 0, i32 0
  %43 = load %struct.av** %si_stack92, align 8, !tbaa !0
  %sv_any93 = getelementptr inbounds %struct.av* %43, i64 0, i32 0
  %44 = load %struct.xpvav** %sv_any93, align 8, !tbaa !0
  %xav_array94 = getelementptr inbounds %struct.xpvav* %44, i64 0, i32 0
  %45 = load i8** %xav_array94, align 8, !tbaa !0
  %46 = bitcast i8* %45 to %struct.sv**
  store %struct.sv** %46, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %47 = load %struct.av** %si_stack92, align 8, !tbaa !0
  %sv_any96 = getelementptr inbounds %struct.av* %47, i64 0, i32 0
  %48 = load %struct.xpvav** %sv_any96, align 8, !tbaa !0
  %xav_max97 = getelementptr inbounds %struct.xpvav* %48, i64 0, i32 2
  %49 = load i64* %xav_max97, align 8, !tbaa !3
  %add.ptr98 = getelementptr inbounds %struct.sv** %46, i64 %49
  store %struct.sv** %add.ptr98, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %50 = load %struct.av** %si_stack92, align 8, !tbaa !0
  %sv_any100 = getelementptr inbounds %struct.av* %50, i64 0, i32 0
  %51 = load %struct.xpvav** %sv_any100, align 8, !tbaa !0
  %xav_fill101 = getelementptr inbounds %struct.xpvav* %51, i64 0, i32 1
  %52 = load i64* %xav_fill101, align 8, !tbaa !3
  %add.ptr102 = getelementptr inbounds %struct.sv** %46, i64 %52
  store %struct.sv** %add.ptr102, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %53 = load %struct.av** %si_stack92, align 8, !tbaa !0
  store %struct.av* %53, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %32, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  br label %return

if.end104:                                        ; preds = %cond.end.if.end104_crit_edge, %if.end4
  %54 = phi i32 [ %.pre175, %cond.end.if.end104_crit_edge ], [ %1, %if.end4 ]
  %and106 = and i32 %54, 32768
  %tobool107 = icmp eq i32 %and106, 0
  br i1 %tobool107, label %cond.false111, label %cond.true108

cond.true108:                                     ; preds = %if.end104
  %call109 = tail call i32 @Perl_mg_size(%struct.sv* %2) #3
  %conv110 = sext i32 %call109 to i64
  br label %cond.end114

cond.false111:                                    ; preds = %if.end104
  %sv_any112 = getelementptr inbounds %struct.av* %av, i64 0, i32 0
  %55 = load %struct.xpvav** %sv_any112, align 8, !tbaa !0
  %xav_fill113 = getelementptr inbounds %struct.xpvav* %55, i64 0, i32 1
  %56 = load i64* %xav_fill113, align 8, !tbaa !3
  br label %cond.end114

cond.end114:                                      ; preds = %cond.false111, %cond.true108
  %cond115 = phi i64 [ %conv110, %cond.true108 ], [ %56, %cond.false111 ]
  %cmp116 = icmp slt i64 %cond115, 0
  br i1 %cmp116, label %return, label %if.end119

if.end119:                                        ; preds = %cond.end114
  %sv_any120 = getelementptr inbounds %struct.av* %av, i64 0, i32 0
  %57 = load %struct.xpvav** %sv_any120, align 8, !tbaa !0
  %xav_fill121 = getelementptr inbounds %struct.xpvav* %57, i64 0, i32 1
  %58 = load i64* %xav_fill121, align 8, !tbaa !3
  %xav_array123 = getelementptr inbounds %struct.xpvav* %57, i64 0, i32 0
  %59 = load i8** %xav_array123, align 8, !tbaa !0
  %60 = bitcast i8* %59 to %struct.sv**
  %arrayidx = getelementptr inbounds %struct.sv** %60, i64 %58
  %61 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %dec = add nsw i64 %58, -1
  store i64 %dec, i64* %xav_fill121, align 8, !tbaa !3
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx, align 8, !tbaa !0
  %62 = load i32* %sv_flags, align 4, !tbaa !4
  %and130 = and i32 %62, 16384
  %tobool131 = icmp eq i32 %and130, 0
  br i1 %tobool131, label %return, label %if.then132

if.then132:                                       ; preds = %if.end119
  %call133 = tail call i32 @Perl_mg_set(%struct.sv* %2) #3
  br label %return

return:                                           ; preds = %if.then132, %if.end119, %cond.end114, %entry, %if.end85
  %retval.0 = phi %struct.sv* [ %retval1.0, %if.end85 ], [ @PL_sv_undef, %entry ], [ @PL_sv_undef, %cond.end114 ], [ %61, %if.end119 ], [ %61, %if.then132 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVsv(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_av_unshift(%struct.av* %av, i32 %num) #0 {
entry:
  %tobool = icmp eq %struct.av* %av, null
  br i1 %tobool, label %if.end186, label %if.end

if.end:                                           ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.av* %av, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %0, 8388608
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([0 x i8]* @PL_no_modify, i64 0, i64 0)) #3
  %.pre = load i32* %sv_flags, align 4, !tbaa !4
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then2
  %1 = phi i32 [ %0, %if.end ], [ %.pre, %if.then2 ]
  %2 = bitcast %struct.av* %av to %struct.sv*
  %and5 = and i32 %1, 32768
  %tobool6 = icmp eq i32 %and5, 0
  br i1 %tobool6, label %if.end103, label %cond.end

cond.end:                                         ; preds = %if.end3
  %call = tail call %struct.magic* @Perl_mg_find(%struct.sv* %2, i32 80) #3
  %tobool7 = icmp eq %struct.magic* %call, null
  br i1 %tobool7, label %if.end103, label %if.then8

if.then8:                                         ; preds = %cond.end
  %3 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %4 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next = getelementptr inbounds %struct.stackinfo* %4, i64 0, i32 6
  %5 = load %struct.stackinfo** %si_next, align 8, !tbaa !0
  %tobool9 = icmp eq %struct.stackinfo* %5, null
  br i1 %tobool9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.then8
  %call11 = tail call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13) #3
  %6 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev = getelementptr inbounds %struct.stackinfo* %call11, i64 0, i32 5
  store %struct.stackinfo* %6, %struct.stackinfo** %si_prev, align 8, !tbaa !0
  %7 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next12 = getelementptr inbounds %struct.stackinfo* %7, i64 0, i32 6
  store %struct.stackinfo* %call11, %struct.stackinfo** %si_next12, align 8, !tbaa !0
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.then10
  %next.0 = phi %struct.stackinfo* [ %5, %if.then8 ], [ %call11, %if.then10 ]
  %si_type = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 4
  store i32 2, i32* %si_type, align 4, !tbaa !4
  %si_cxix = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 2
  store i32 -1, i32* %si_cxix, align 4, !tbaa !4
  %si_stack = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 0
  %8 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.av* %8, i64 0, i32 0
  %9 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %9, i64 0, i32 1
  store i64 0, i64* %xav_fill, align 8, !tbaa !3
  %10 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %3 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %11 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any14 = getelementptr inbounds %struct.av* %11, i64 0, i32 0
  %12 = load %struct.xpvav** %sv_any14, align 8, !tbaa !0
  %xav_fill15 = getelementptr inbounds %struct.xpvav* %12, i64 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill15, align 8, !tbaa !3
  %xav_array = getelementptr inbounds %struct.xpvav* %9, i64 0, i32 0
  %13 = load i8** %xav_array, align 8, !tbaa !0
  %14 = bitcast i8* %13 to %struct.sv**
  store %struct.sv** %14, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %15 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any19 = getelementptr inbounds %struct.av* %15, i64 0, i32 0
  %16 = load %struct.xpvav** %sv_any19, align 8, !tbaa !0
  %xav_max = getelementptr inbounds %struct.xpvav* %16, i64 0, i32 2
  %17 = load i64* %xav_max, align 8, !tbaa !3
  %add.ptr = getelementptr inbounds %struct.sv** %14, i64 %17
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %18 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any21 = getelementptr inbounds %struct.av* %18, i64 0, i32 0
  %19 = load %struct.xpvav** %sv_any21, align 8, !tbaa !0
  %xav_fill22 = getelementptr inbounds %struct.xpvav* %19, i64 0, i32 1
  %20 = load i64* %xav_fill22, align 8, !tbaa !3
  %add.ptr23 = getelementptr inbounds %struct.sv** %14, i64 %20
  store %struct.sv** %add.ptr23, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %21 = load %struct.av** %si_stack, align 8, !tbaa !0
  store %struct.av* %21, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %next.0, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %22 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %22, i64 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %23 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp = icmp eq i32* %incdec.ptr, %23
  br i1 %cmp, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end13
  tail call void @Perl_markstack_grow() #3
  %.pre264 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %.pre265 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %.pre266 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end13
  %24 = phi %struct.sv** [ %.pre266, %if.then25 ], [ %add.ptr, %if.end13 ]
  %25 = phi i32* [ %.pre265, %if.then25 ], [ %incdec.ptr, %if.end13 ]
  %26 = phi %struct.sv** [ %.pre264, %if.then25 ], [ %14, %if.end13 ]
  %sub.ptr.lhs.cast27 = ptrtoint %struct.sv** %add.ptr23 to i64
  %sub.ptr.rhs.cast28 = ptrtoint %struct.sv** %26 to i64
  %sub.ptr.sub29 = sub i64 %sub.ptr.lhs.cast27, %sub.ptr.rhs.cast28
  %sub.ptr.div30258 = lshr exact i64 %sub.ptr.sub29, 3
  %conv = trunc i64 %sub.ptr.div30258 to i32
  store i32 %conv, i32* %25, align 4, !tbaa !4
  %sub.ptr.lhs.cast31 = ptrtoint %struct.sv** %24 to i64
  %sub.ptr.sub33 = sub i64 %sub.ptr.lhs.cast31, %sub.ptr.lhs.cast27
  %sub.ptr.div34 = ashr exact i64 %sub.ptr.sub33, 3
  %add = add nsw i32 %num, 1
  %conv35 = sext i32 %add to i64
  %cmp36 = icmp slt i64 %sub.ptr.div34, %conv35
  br i1 %cmp36, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end26
  %call40 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %add.ptr23, %struct.sv** %add.ptr23, i32 %add) #3
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end26
  %sp.0 = phi %struct.sv** [ %call40, %if.then38 ], [ %add.ptr23, %if.end26 ]
  %mg_obj = getelementptr inbounds %struct.magic* %call, i64 0, i32 5
  %27 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool42 = icmp eq %struct.sv* %27, null
  br i1 %tobool42, label %cond.false45, label %cond.end48

cond.false45:                                     ; preds = %if.end41
  %call46 = tail call %struct.sv* @Perl_newRV(%struct.sv* %2) #3
  %call47 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call46) #3
  br label %cond.end48

cond.end48:                                       ; preds = %if.end41, %cond.false45
  %cond49 = phi %struct.sv* [ %call47, %cond.false45 ], [ %27, %if.end41 ]
  %incdec.ptr50 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %cond49, %struct.sv** %incdec.ptr50, align 8, !tbaa !0
  %cmp51260 = icmp sgt i32 %num, 0
  br i1 %cmp51260, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %cond.end48
  %28 = add i32 %num, -1
  %29 = zext i32 %28 to i64
  %30 = add i64 %29, 2
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %num.addr.0262 = phi i32 [ %num, %while.body.lr.ph ], [ %dec, %while.body ]
  %sp.1261 = phi %struct.sv** [ %incdec.ptr50, %while.body.lr.ph ], [ %incdec.ptr53, %while.body ]
  %dec = add nsw i32 %num.addr.0262, -1
  %incdec.ptr53 = getelementptr inbounds %struct.sv** %sp.1261, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr53, align 8, !tbaa !0
  %cmp51 = icmp sgt i32 %dec, 0
  br i1 %cmp51, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.body
  %scevgep = getelementptr %struct.sv** %sp.0, i64 %30
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %cond.end48
  %sp.1.lcssa = phi %struct.sv** [ %scevgep, %while.cond.while.end_crit_edge ], [ %incdec.ptr50, %cond.end48 ]
  store %struct.sv** %sp.1.lcssa, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  tail call void @Perl_push_scope() #3
  %call54 = tail call i32 @Perl_call_method(i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i32 2) #3
  tail call void @Perl_pop_scope() #3
  %31 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %32 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev56 = getelementptr inbounds %struct.stackinfo* %32, i64 0, i32 5
  %33 = load %struct.stackinfo** %si_prev56, align 8, !tbaa !0
  %tobool57 = icmp eq %struct.stackinfo* %33, null
  br i1 %tobool57, label %if.then58, label %if.end84

if.then58:                                        ; preds = %while.end
  %34 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %tobool59 = icmp eq %struct.gv* %34, null
  br i1 %tobool59, label %cond.false79, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then58
  %sv_flags60 = getelementptr inbounds %struct.gv* %34, i64 0, i32 2
  %35 = load i32* %sv_flags60, align 4, !tbaa !4
  %and61 = and i32 %35, 255
  %cmp62 = icmp eq i32 %and61, 13
  br i1 %cmp62, label %land.lhs.true64, label %cond.false79

land.lhs.true64:                                  ; preds = %land.lhs.true
  %sv_any65 = getelementptr inbounds %struct.gv* %34, i64 0, i32 0
  %36 = load %struct.xpvgv** %sv_any65, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %36, i64 0, i32 7
  %37 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_io = getelementptr inbounds %struct.gp* %37, i64 0, i32 2
  %38 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool66 = icmp eq %struct.io* %38, null
  br i1 %tobool66, label %cond.false79, label %land.lhs.true67

land.lhs.true67:                                  ; preds = %land.lhs.true64
  %sv_any71 = getelementptr inbounds %struct.io* %38, i64 0, i32 0
  %39 = load %struct.xpvio** %sv_any71, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %39, i64 0, i32 8
  %40 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool72 = icmp eq %struct._PerlIO** %40, null
  br i1 %tobool72, label %cond.false79, label %cond.end81

cond.false79:                                     ; preds = %land.lhs.true67, %land.lhs.true64, %if.then58, %land.lhs.true
  %call80 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  br label %cond.end81

cond.end81:                                       ; preds = %land.lhs.true67, %cond.false79
  %cond82 = phi %struct._PerlIO** [ %call80, %cond.false79 ], [ %40, %land.lhs.true67 ]
  %call83 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond82, i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)) #3
  tail call void @Perl_my_exit(i32 1) #3
  br label %if.end84

if.end84:                                         ; preds = %while.end, %cond.end81
  %41 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast85 = ptrtoint %struct.sv** %31 to i64
  %sub.ptr.rhs.cast86 = ptrtoint %struct.sv** %41 to i64
  %sub.ptr.sub87 = sub i64 %sub.ptr.lhs.cast85, %sub.ptr.rhs.cast86
  %sub.ptr.div88 = ashr exact i64 %sub.ptr.sub87, 3
  %42 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any89 = getelementptr inbounds %struct.av* %42, i64 0, i32 0
  %43 = load %struct.xpvav** %sv_any89, align 8, !tbaa !0
  %xav_fill90 = getelementptr inbounds %struct.xpvav* %43, i64 0, i32 1
  store i64 %sub.ptr.div88, i64* %xav_fill90, align 8, !tbaa !3
  %si_stack91 = getelementptr inbounds %struct.stackinfo* %33, i64 0, i32 0
  %44 = load %struct.av** %si_stack91, align 8, !tbaa !0
  %sv_any92 = getelementptr inbounds %struct.av* %44, i64 0, i32 0
  %45 = load %struct.xpvav** %sv_any92, align 8, !tbaa !0
  %xav_array93 = getelementptr inbounds %struct.xpvav* %45, i64 0, i32 0
  %46 = load i8** %xav_array93, align 8, !tbaa !0
  %47 = bitcast i8* %46 to %struct.sv**
  store %struct.sv** %47, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %48 = load %struct.av** %si_stack91, align 8, !tbaa !0
  %sv_any95 = getelementptr inbounds %struct.av* %48, i64 0, i32 0
  %49 = load %struct.xpvav** %sv_any95, align 8, !tbaa !0
  %xav_max96 = getelementptr inbounds %struct.xpvav* %49, i64 0, i32 2
  %50 = load i64* %xav_max96, align 8, !tbaa !3
  %add.ptr97 = getelementptr inbounds %struct.sv** %47, i64 %50
  store %struct.sv** %add.ptr97, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %51 = load %struct.av** %si_stack91, align 8, !tbaa !0
  %sv_any99 = getelementptr inbounds %struct.av* %51, i64 0, i32 0
  %52 = load %struct.xpvav** %sv_any99, align 8, !tbaa !0
  %xav_fill100 = getelementptr inbounds %struct.xpvav* %52, i64 0, i32 1
  %53 = load i64* %xav_fill100, align 8, !tbaa !3
  %add.ptr101 = getelementptr inbounds %struct.sv** %47, i64 %53
  store %struct.sv** %add.ptr101, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %54 = load %struct.av** %si_stack91, align 8, !tbaa !0
  store %struct.av* %54, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %33, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  br label %if.end186

if.end103:                                        ; preds = %if.end3, %cond.end
  %cmp104 = icmp slt i32 %num, 1
  br i1 %cmp104, label %if.end186, label %if.end107

if.end107:                                        ; preds = %if.end103
  %sv_any108 = getelementptr inbounds %struct.av* %av, i64 0, i32 0
  %55 = load %struct.xpvav** %sv_any108, align 8, !tbaa !0
  %xav_flags = getelementptr inbounds %struct.xpvav* %55, i64 0, i32 9
  %56 = load i8* %xav_flags, align 1, !tbaa !1
  %57 = and i8 %56, 3
  %58 = icmp eq i8 %57, 2
  br i1 %58, label %if.then118, label %if.end119

if.then118:                                       ; preds = %if.end107
  tail call void @Perl_av_reify(%struct.av* %av) #4
  %.pre263 = load %struct.xpvav** %sv_any108, align 8, !tbaa !0
  br label %if.end119

if.end119:                                        ; preds = %if.end107, %if.then118
  %59 = phi %struct.xpvav* [ %55, %if.end107 ], [ %.pre263, %if.then118 ]
  %xav_array121 = getelementptr inbounds %struct.xpvav* %59, i64 0, i32 0
  %60 = load i8** %xav_array121, align 8, !tbaa !0
  %xav_alloc = getelementptr inbounds %struct.xpvav* %59, i64 0, i32 7
  %61 = load %struct.sv*** %xav_alloc, align 8, !tbaa !0
  %sub.ptr.lhs.cast123 = ptrtoint i8* %60 to i64
  %sub.ptr.rhs.cast124 = ptrtoint %struct.sv** %61 to i64
  %sub.ptr.sub125 = sub i64 %sub.ptr.lhs.cast123, %sub.ptr.rhs.cast124
  %sub.ptr.div126257 = lshr exact i64 %sub.ptr.sub125, 3
  %conv127 = trunc i64 %sub.ptr.div126257 to i32
  %tobool128 = icmp eq i32 %conv127, 0
  br i1 %tobool128, label %if.end146, label %if.then129

if.then129:                                       ; preds = %if.end119
  %cmp130 = icmp sgt i32 %conv127, %num
  %num.conv127 = select i1 %cmp130, i32 %num, i32 %conv127
  %sub = sub nsw i32 %num, %num.conv127
  %conv134 = sext i32 %num.conv127 to i64
  %xav_max136 = getelementptr inbounds %struct.xpvav* %59, i64 0, i32 2
  %62 = load i64* %xav_max136, align 8, !tbaa !3
  %add137 = add nsw i64 %62, %conv134
  store i64 %add137, i64* %xav_max136, align 8, !tbaa !3
  %xav_fill140 = getelementptr inbounds %struct.xpvav* %59, i64 0, i32 1
  %63 = load i64* %xav_fill140, align 8, !tbaa !3
  %add141 = add nsw i64 %63, %conv134
  store i64 %add141, i64* %xav_fill140, align 8, !tbaa !3
  %64 = bitcast i8* %60 to %struct.sv**
  %idx.neg = sub i64 0, %conv134
  %add.ptr144 = getelementptr inbounds %struct.sv** %64, i64 %idx.neg
  %65 = bitcast %struct.sv** %add.ptr144 to i8*
  store i8* %65, i8** %xav_array121, align 8, !tbaa !0
  br label %if.end146

if.end146:                                        ; preds = %if.end119, %if.then129
  %num.addr.1 = phi i32 [ %sub, %if.then129 ], [ %num, %if.end119 ]
  %tobool147 = icmp eq i32 %num.addr.1, 0
  br i1 %tobool147, label %if.end186, label %if.then148

if.then148:                                       ; preds = %if.end146
  %66 = load %struct.xpvav** %sv_any108, align 8, !tbaa !0
  %xav_fill150 = getelementptr inbounds %struct.xpvav* %66, i64 0, i32 1
  %67 = load i64* %xav_fill150, align 8, !tbaa !3
  %conv151 = trunc i64 %67 to i32
  %cmp152 = icmp sgt i32 %conv151, 0
  %cond157 = select i1 %cmp152, i32 %conv151, i32 0
  %add158 = add i32 %cond157, %num.addr.1
  %add159 = add nsw i32 %add158, %conv151
  tail call void @Perl_av_extend(%struct.av* %av, i32 %add159) #4
  %conv160 = sext i32 %add158 to i64
  %68 = load %struct.xpvav** %sv_any108, align 8, !tbaa !0
  %xav_fill162 = getelementptr inbounds %struct.xpvav* %68, i64 0, i32 1
  %69 = load i64* %xav_fill162, align 8, !tbaa !3
  %add163 = add nsw i64 %conv160, %69
  store i64 %add163, i64* %xav_fill162, align 8, !tbaa !3
  %xav_array165 = getelementptr inbounds %struct.xpvav* %68, i64 0, i32 0
  %70 = load i8** %xav_array165, align 8, !tbaa !0
  %71 = bitcast i8* %70 to %struct.sv**
  %add.ptr167 = getelementptr inbounds %struct.sv** %71, i64 %conv160
  %72 = bitcast %struct.sv** %add.ptr167 to i8*
  %add168 = shl i64 %67, 32
  %sext = add i64 %add168, 4294967296
  %mul = ashr exact i64 %sext, 29
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %72, i8* %70, i64 %mul, i32 1, i1 false)
  br label %do.body

do.body:                                          ; preds = %do.body, %if.then148
  %indvars.iv = phi i64 [ %indvars.iv.next, %do.body ], [ %conv160, %if.then148 ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %arrayidx = getelementptr inbounds %struct.sv** %71, i64 %indvars.iv.next
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx, align 8, !tbaa !0
  %73 = trunc i64 %indvars.iv.next to i32
  %tobool171 = icmp eq i32 %73, 0
  br i1 %tobool171, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  %conv172 = sext i32 %cond157 to i64
  %74 = load %struct.xpvav** %sv_any108, align 8, !tbaa !0
  %xav_max174 = getelementptr inbounds %struct.xpvav* %74, i64 0, i32 2
  %75 = load i64* %xav_max174, align 8, !tbaa !3
  %sub175 = sub nsw i64 %75, %conv172
  store i64 %sub175, i64* %xav_max174, align 8, !tbaa !3
  %xav_fill178 = getelementptr inbounds %struct.xpvav* %74, i64 0, i32 1
  %76 = load i64* %xav_fill178, align 8, !tbaa !3
  %sub179 = sub nsw i64 %76, %conv172
  store i64 %sub179, i64* %xav_fill178, align 8, !tbaa !3
  %xav_array181 = getelementptr inbounds %struct.xpvav* %74, i64 0, i32 0
  %77 = load i8** %xav_array181, align 8, !tbaa !0
  %78 = bitcast i8* %77 to %struct.sv**
  %add.ptr183 = getelementptr inbounds %struct.sv** %78, i64 %conv172
  %79 = bitcast %struct.sv** %add.ptr183 to i8*
  store i8* %79, i8** %xav_array181, align 8, !tbaa !0
  br label %if.end186

if.end186:                                        ; preds = %if.end146, %entry, %if.end103, %if.end84, %do.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @Perl_av_shift(%struct.av* %av) #0 {
entry:
  %tobool = icmp eq %struct.av* %av, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.av* %av, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %0, 8388608
  %tobool2 = icmp eq i32 %and, 0
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([0 x i8]* @PL_no_modify, i64 0, i64 0)) #3
  %.pre = load i32* %sv_flags, align 4, !tbaa !4
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then3
  %1 = phi i32 [ %0, %if.end ], [ %.pre, %if.then3 ]
  %2 = bitcast %struct.av* %av to %struct.sv*
  %and6 = and i32 %1, 32768
  %tobool7 = icmp eq i32 %and6, 0
  br i1 %tobool7, label %if.end104, label %cond.end

cond.end:                                         ; preds = %if.end4
  %call = tail call %struct.magic* @Perl_mg_find(%struct.sv* %2, i32 80) #3
  %tobool8 = icmp eq %struct.magic* %call, null
  br i1 %tobool8, label %cond.end.if.end104_crit_edge, label %if.then9

cond.end.if.end104_crit_edge:                     ; preds = %cond.end
  %.pre190 = load i32* %sv_flags, align 4, !tbaa !4
  br label %if.end104

if.then9:                                         ; preds = %cond.end
  %3 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %4 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next = getelementptr inbounds %struct.stackinfo* %4, i64 0, i32 6
  %5 = load %struct.stackinfo** %si_next, align 8, !tbaa !0
  %tobool10 = icmp eq %struct.stackinfo* %5, null
  br i1 %tobool10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.then9
  %call12 = tail call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13) #3
  %6 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev = getelementptr inbounds %struct.stackinfo* %call12, i64 0, i32 5
  store %struct.stackinfo* %6, %struct.stackinfo** %si_prev, align 8, !tbaa !0
  %7 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next13 = getelementptr inbounds %struct.stackinfo* %7, i64 0, i32 6
  store %struct.stackinfo* %call12, %struct.stackinfo** %si_next13, align 8, !tbaa !0
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.then11
  %next.0 = phi %struct.stackinfo* [ %5, %if.then9 ], [ %call12, %if.then11 ]
  %si_type = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 4
  store i32 2, i32* %si_type, align 4, !tbaa !4
  %si_cxix = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 2
  store i32 -1, i32* %si_cxix, align 4, !tbaa !4
  %si_stack = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 0
  %8 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.av* %8, i64 0, i32 0
  %9 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %9, i64 0, i32 1
  store i64 0, i64* %xav_fill, align 8, !tbaa !3
  %10 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %3 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %11 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any15 = getelementptr inbounds %struct.av* %11, i64 0, i32 0
  %12 = load %struct.xpvav** %sv_any15, align 8, !tbaa !0
  %xav_fill16 = getelementptr inbounds %struct.xpvav* %12, i64 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill16, align 8, !tbaa !3
  %xav_array = getelementptr inbounds %struct.xpvav* %9, i64 0, i32 0
  %13 = load i8** %xav_array, align 8, !tbaa !0
  %14 = bitcast i8* %13 to %struct.sv**
  store %struct.sv** %14, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %15 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any20 = getelementptr inbounds %struct.av* %15, i64 0, i32 0
  %16 = load %struct.xpvav** %sv_any20, align 8, !tbaa !0
  %xav_max = getelementptr inbounds %struct.xpvav* %16, i64 0, i32 2
  %17 = load i64* %xav_max, align 8, !tbaa !3
  %add.ptr = getelementptr inbounds %struct.sv** %14, i64 %17
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %18 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any22 = getelementptr inbounds %struct.av* %18, i64 0, i32 0
  %19 = load %struct.xpvav** %sv_any22, align 8, !tbaa !0
  %xav_fill23 = getelementptr inbounds %struct.xpvav* %19, i64 0, i32 1
  %20 = load i64* %xav_fill23, align 8, !tbaa !3
  %add.ptr24 = getelementptr inbounds %struct.sv** %14, i64 %20
  store %struct.sv** %add.ptr24, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %21 = load %struct.av** %si_stack, align 8, !tbaa !0
  store %struct.av* %21, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %next.0, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %22 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %22, i64 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %23 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp = icmp eq i32* %incdec.ptr, %23
  br i1 %cmp, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end14
  tail call void @Perl_markstack_grow() #3
  %.pre187 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %.pre188 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %.pre189 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end14
  %24 = phi %struct.sv** [ %.pre189, %if.then26 ], [ %add.ptr, %if.end14 ]
  %25 = phi i32* [ %.pre188, %if.then26 ], [ %incdec.ptr, %if.end14 ]
  %26 = phi %struct.sv** [ %.pre187, %if.then26 ], [ %14, %if.end14 ]
  %sub.ptr.lhs.cast28 = ptrtoint %struct.sv** %add.ptr24 to i64
  %sub.ptr.rhs.cast29 = ptrtoint %struct.sv** %26 to i64
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29
  %sub.ptr.div31183 = lshr exact i64 %sub.ptr.sub30, 3
  %conv = trunc i64 %sub.ptr.div31183 to i32
  store i32 %conv, i32* %25, align 4, !tbaa !4
  %sub.ptr.lhs.cast32 = ptrtoint %struct.sv** %24 to i64
  %sub.ptr.sub34 = sub i64 %sub.ptr.lhs.cast32, %sub.ptr.lhs.cast28
  %cmp36 = icmp slt i64 %sub.ptr.sub34, 8
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end27
  %call39 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %add.ptr24, %struct.sv** %add.ptr24, i32 1) #3
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end27
  %sp.0 = phi %struct.sv** [ %call39, %if.then38 ], [ %add.ptr24, %if.end27 ]
  %mg_obj = getelementptr inbounds %struct.magic* %call, i64 0, i32 5
  %27 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool41 = icmp eq %struct.sv* %27, null
  br i1 %tobool41, label %cond.false44, label %cond.end47

cond.false44:                                     ; preds = %if.end40
  %call45 = tail call %struct.sv* @Perl_newRV(%struct.sv* %2) #3
  %call46 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call45) #3
  br label %cond.end47

cond.end47:                                       ; preds = %if.end40, %cond.false44
  %cond48 = phi %struct.sv* [ %call46, %cond.false44 ], [ %27, %if.end40 ]
  %incdec.ptr49 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %cond48, %struct.sv** %incdec.ptr49, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr49, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  tail call void @Perl_push_scope() #3
  %call50 = tail call i32 @Perl_call_method(i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0), i32 0) #3
  %tobool51 = icmp eq i32 %call50, 0
  br i1 %tobool51, label %if.end55, label %if.then52

if.then52:                                        ; preds = %cond.end47
  %28 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr53 = getelementptr inbounds %struct.sv** %28, i64 -1
  store %struct.sv** %incdec.ptr53, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %29 = load %struct.sv** %28, align 8, !tbaa !0
  %call54 = tail call %struct.sv* @Perl_newSVsv(%struct.sv* %29) #3
  br label %if.end55

if.end55:                                         ; preds = %cond.end47, %if.then52
  %retval1.0 = phi %struct.sv* [ %call54, %if.then52 ], [ @PL_sv_undef, %cond.end47 ]
  tail call void @Perl_pop_scope() #3
  %30 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %31 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev57 = getelementptr inbounds %struct.stackinfo* %31, i64 0, i32 5
  %32 = load %struct.stackinfo** %si_prev57, align 8, !tbaa !0
  %tobool58 = icmp eq %struct.stackinfo* %32, null
  br i1 %tobool58, label %if.then59, label %if.end85

if.then59:                                        ; preds = %if.end55
  %33 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %tobool60 = icmp eq %struct.gv* %33, null
  br i1 %tobool60, label %cond.false80, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then59
  %sv_flags61 = getelementptr inbounds %struct.gv* %33, i64 0, i32 2
  %34 = load i32* %sv_flags61, align 4, !tbaa !4
  %and62 = and i32 %34, 255
  %cmp63 = icmp eq i32 %and62, 13
  br i1 %cmp63, label %land.lhs.true65, label %cond.false80

land.lhs.true65:                                  ; preds = %land.lhs.true
  %sv_any66 = getelementptr inbounds %struct.gv* %33, i64 0, i32 0
  %35 = load %struct.xpvgv** %sv_any66, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %35, i64 0, i32 7
  %36 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_io = getelementptr inbounds %struct.gp* %36, i64 0, i32 2
  %37 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool67 = icmp eq %struct.io* %37, null
  br i1 %tobool67, label %cond.false80, label %land.lhs.true68

land.lhs.true68:                                  ; preds = %land.lhs.true65
  %sv_any72 = getelementptr inbounds %struct.io* %37, i64 0, i32 0
  %38 = load %struct.xpvio** %sv_any72, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %38, i64 0, i32 8
  %39 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool73 = icmp eq %struct._PerlIO** %39, null
  br i1 %tobool73, label %cond.false80, label %cond.end82

cond.false80:                                     ; preds = %land.lhs.true68, %land.lhs.true65, %if.then59, %land.lhs.true
  %call81 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  br label %cond.end82

cond.end82:                                       ; preds = %land.lhs.true68, %cond.false80
  %cond83 = phi %struct._PerlIO** [ %call81, %cond.false80 ], [ %39, %land.lhs.true68 ]
  %call84 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond83, i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)) #3
  tail call void @Perl_my_exit(i32 1) #3
  br label %if.end85

if.end85:                                         ; preds = %if.end55, %cond.end82
  %40 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast86 = ptrtoint %struct.sv** %30 to i64
  %sub.ptr.rhs.cast87 = ptrtoint %struct.sv** %40 to i64
  %sub.ptr.sub88 = sub i64 %sub.ptr.lhs.cast86, %sub.ptr.rhs.cast87
  %sub.ptr.div89 = ashr exact i64 %sub.ptr.sub88, 3
  %41 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any90 = getelementptr inbounds %struct.av* %41, i64 0, i32 0
  %42 = load %struct.xpvav** %sv_any90, align 8, !tbaa !0
  %xav_fill91 = getelementptr inbounds %struct.xpvav* %42, i64 0, i32 1
  store i64 %sub.ptr.div89, i64* %xav_fill91, align 8, !tbaa !3
  %si_stack92 = getelementptr inbounds %struct.stackinfo* %32, i64 0, i32 0
  %43 = load %struct.av** %si_stack92, align 8, !tbaa !0
  %sv_any93 = getelementptr inbounds %struct.av* %43, i64 0, i32 0
  %44 = load %struct.xpvav** %sv_any93, align 8, !tbaa !0
  %xav_array94 = getelementptr inbounds %struct.xpvav* %44, i64 0, i32 0
  %45 = load i8** %xav_array94, align 8, !tbaa !0
  %46 = bitcast i8* %45 to %struct.sv**
  store %struct.sv** %46, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %47 = load %struct.av** %si_stack92, align 8, !tbaa !0
  %sv_any96 = getelementptr inbounds %struct.av* %47, i64 0, i32 0
  %48 = load %struct.xpvav** %sv_any96, align 8, !tbaa !0
  %xav_max97 = getelementptr inbounds %struct.xpvav* %48, i64 0, i32 2
  %49 = load i64* %xav_max97, align 8, !tbaa !3
  %add.ptr98 = getelementptr inbounds %struct.sv** %46, i64 %49
  store %struct.sv** %add.ptr98, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %50 = load %struct.av** %si_stack92, align 8, !tbaa !0
  %sv_any100 = getelementptr inbounds %struct.av* %50, i64 0, i32 0
  %51 = load %struct.xpvav** %sv_any100, align 8, !tbaa !0
  %xav_fill101 = getelementptr inbounds %struct.xpvav* %51, i64 0, i32 1
  %52 = load i64* %xav_fill101, align 8, !tbaa !3
  %add.ptr102 = getelementptr inbounds %struct.sv** %46, i64 %52
  store %struct.sv** %add.ptr102, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %53 = load %struct.av** %si_stack92, align 8, !tbaa !0
  store %struct.av* %53, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %32, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  br label %return

if.end104:                                        ; preds = %cond.end.if.end104_crit_edge, %if.end4
  %54 = phi i32 [ %.pre190, %cond.end.if.end104_crit_edge ], [ %1, %if.end4 ]
  %and106 = and i32 %54, 32768
  %tobool107 = icmp eq i32 %and106, 0
  br i1 %tobool107, label %cond.false111, label %cond.true108

cond.true108:                                     ; preds = %if.end104
  %call109 = tail call i32 @Perl_mg_size(%struct.sv* %2) #3
  %conv110 = sext i32 %call109 to i64
  br label %cond.end114

cond.false111:                                    ; preds = %if.end104
  %sv_any112 = getelementptr inbounds %struct.av* %av, i64 0, i32 0
  %55 = load %struct.xpvav** %sv_any112, align 8, !tbaa !0
  %xav_fill113 = getelementptr inbounds %struct.xpvav* %55, i64 0, i32 1
  %56 = load i64* %xav_fill113, align 8, !tbaa !3
  br label %cond.end114

cond.end114:                                      ; preds = %cond.false111, %cond.true108
  %cond115 = phi i64 [ %conv110, %cond.true108 ], [ %56, %cond.false111 ]
  %cmp116 = icmp slt i64 %cond115, 0
  br i1 %cmp116, label %return, label %if.end119

if.end119:                                        ; preds = %cond.end114
  %sv_any120 = getelementptr inbounds %struct.av* %av, i64 0, i32 0
  %57 = load %struct.xpvav** %sv_any120, align 8, !tbaa !0
  %xav_array121 = getelementptr inbounds %struct.xpvav* %57, i64 0, i32 0
  %58 = load i8** %xav_array121, align 8, !tbaa !0
  %59 = bitcast i8* %58 to %struct.sv**
  %60 = load %struct.sv** %59, align 8, !tbaa !0
  %xav_flags = getelementptr inbounds %struct.xpvav* %57, i64 0, i32 9
  %61 = load i8* %xav_flags, align 1, !tbaa !1
  %and124 = and i8 %61, 1
  %tobool125 = icmp eq i8 %and124, 0
  br i1 %tobool125, label %if.end129, label %if.then126

if.then126:                                       ; preds = %if.end119
  store %struct.sv* @PL_sv_undef, %struct.sv** %59, align 8, !tbaa !0
  %.pre185 = load %struct.xpvav** %sv_any120, align 8, !tbaa !0
  %xav_array131.phi.trans.insert = getelementptr inbounds %struct.xpvav* %.pre185, i64 0, i32 0
  %.pre186 = load i8** %xav_array131.phi.trans.insert, align 8, !tbaa !0
  br label %if.end129

if.end129:                                        ; preds = %if.end119, %if.then126
  %62 = phi i8* [ %.pre186, %if.then126 ], [ %58, %if.end119 ]
  %63 = phi %struct.xpvav* [ %.pre185, %if.then126 ], [ %57, %if.end119 ]
  %xav_array131 = getelementptr inbounds %struct.xpvav* %63, i64 0, i32 0
  %add.ptr132 = getelementptr inbounds i8* %62, i64 8
  store i8* %add.ptr132, i8** %xav_array131, align 8, !tbaa !0
  %64 = load %struct.xpvav** %sv_any120, align 8, !tbaa !0
  %xav_max135 = getelementptr inbounds %struct.xpvav* %64, i64 0, i32 2
  %65 = load i64* %xav_max135, align 8, !tbaa !3
  %dec = add nsw i64 %65, -1
  store i64 %dec, i64* %xav_max135, align 8, !tbaa !3
  %xav_fill137 = getelementptr inbounds %struct.xpvav* %64, i64 0, i32 1
  %66 = load i64* %xav_fill137, align 8, !tbaa !3
  %dec138 = add nsw i64 %66, -1
  store i64 %dec138, i64* %xav_fill137, align 8, !tbaa !3
  %67 = load i32* %sv_flags, align 4, !tbaa !4
  %and140 = and i32 %67, 16384
  %tobool141 = icmp eq i32 %and140, 0
  br i1 %tobool141, label %return, label %if.then142

if.then142:                                       ; preds = %if.end129
  %call143 = tail call i32 @Perl_mg_set(%struct.sv* %2) #3
  br label %return

return:                                           ; preds = %if.then142, %if.end129, %cond.end114, %entry, %if.end85
  %retval.0 = phi %struct.sv* [ %retval1.0, %if.end85 ], [ @PL_sv_undef, %entry ], [ @PL_sv_undef, %cond.end114 ], [ %60, %if.end129 ], [ %60, %if.then142 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_av_len(%struct.av* %av) #0 {
entry:
  %0 = getelementptr inbounds %struct.av* %av, i64 0, i32 2
  %1 = load i32* %0, align 4, !tbaa !4
  %and = and i32 %1, 32768
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %2 = bitcast %struct.av* %av to %struct.sv*
  %call = tail call i32 @Perl_mg_size(%struct.sv* %2) #3
  %conv = sext i32 %call to i64
  br label %cond.end

cond.false:                                       ; preds = %entry
  %sv_any = getelementptr inbounds %struct.av* %av, i64 0, i32 0
  %3 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %3, i64 0, i32 1
  %4 = load i64* %xav_fill, align 8, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %4, %cond.false ]
  %conv1 = trunc i64 %cond to i32
  ret i32 %conv1
}

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @Perl_av_delete(%struct.av* %av, i32 %key, i32 %flags) #0 {
entry:
  %tobool = icmp eq %struct.av* %av, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.av* %av, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %0, 8388608
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([0 x i8]* @PL_no_modify, i64 0, i64 0)) #3
  %.pre = load i32* %sv_flags, align 4, !tbaa !4
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then2
  %1 = phi i32 [ %0, %if.end ], [ %.pre, %if.then2 ]
  %and5 = and i32 %1, 32768
  %tobool6 = icmp eq i32 %and5, 0
  br i1 %tobool6, label %if.end118, label %if.then7

if.then7:                                         ; preds = %if.end3
  %2 = bitcast %struct.av* %av to %struct.sv*
  %call = tail call %struct.magic* @Perl_mg_find(%struct.sv* %2, i32 80) #3
  %tobool8 = icmp ne %struct.magic* %call, null
  br i1 %tobool8, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then7
  %call9 = tail call %struct.magic* @Perl_mg_find(%struct.sv* %2, i32 68) #3
  %tobool10 = icmp eq %struct.magic* %call9, null
  br i1 %tobool10, label %if.end118, label %if.then11

if.then11:                                        ; preds = %lor.lhs.false, %if.then7
  %cmp = icmp slt i32 %key, 0
  br i1 %cmp, label %if.then12, label %if.end106

if.then12:                                        ; preds = %if.then11
  br i1 %tobool8, label %if.then14, label %if.then87

if.then14:                                        ; preds = %if.then12
  %mg_obj = getelementptr inbounds %struct.magic* %call, i64 0, i32 5
  %3 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool15 = icmp eq %struct.sv* %3, null
  br i1 %tobool15, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.then14
  %call17 = tail call %struct.sv* @Perl_newRV(%struct.sv* %2) #3
  %call18 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call17) #3
  br label %cond.end

cond.end:                                         ; preds = %if.then14, %cond.false
  %cond = phi %struct.sv* [ %call18, %cond.false ], [ %3, %if.then14 ]
  %sv_any = getelementptr inbounds %struct.sv* %cond, i64 0, i32 0
  %4 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %4 to %struct.sv**
  %5 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_any19 = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %6 = load i8** %sv_any19, align 8, !tbaa !0
  %xmg_stash = getelementptr inbounds i8* %6, i64 48
  %7 = bitcast i8* %xmg_stash to %struct.hv**
  %8 = load %struct.hv** %7, align 8, !tbaa !0
  %call20 = tail call %struct.sv** @Perl_hv_fetch(%struct.hv* %8, i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0), i32 16, i32 0) #3
  %tobool21 = icmp eq %struct.sv** %call20, null
  br i1 %tobool21, label %if.then87, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end
  %9 = load %struct.sv** %call20, align 8, !tbaa !0
  %sv_any22 = getelementptr inbounds %struct.sv* %9, i64 0, i32 0
  %10 = load i8** %sv_any22, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds i8* %10, i64 56
  %11 = bitcast i8* %xgv_gp to %struct.gp**
  %12 = load %struct.gp** %11, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %12, i64 0, i32 0
  %13 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %tobool23 = icmp eq %struct.sv* %13, null
  br i1 %tobool23, label %if.then87, label %cond.false25

cond.false25:                                     ; preds = %land.lhs.true
  %sv_flags29 = getelementptr inbounds %struct.sv* %13, i64 0, i32 2
  %14 = load i32* %sv_flags29, align 4, !tbaa !4
  %and30 = and i32 %14, 262144
  %tobool31 = icmp eq i32 %and30, 0
  br i1 %tobool31, label %cond.false48, label %cond.true32

cond.true32:                                      ; preds = %cond.false25
  %sv_any36 = getelementptr inbounds %struct.sv* %13, i64 0, i32 0
  %15 = load i8** %sv_any36, align 8, !tbaa !0
  %16 = bitcast i8* %15 to %struct.xpv*
  store %struct.xpv* %16, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool37 = icmp eq i8* %15, null
  br i1 %tobool37, label %if.then87, label %land.lhs.true38

land.lhs.true38:                                  ; preds = %cond.true32
  %xpv_cur = getelementptr inbounds i8* %15, i64 8
  %17 = bitcast i8* %xpv_cur to i64*
  %18 = load i64* %17, align 8, !tbaa !3
  %cmp39 = icmp ugt i64 %18, 1
  br i1 %cmp39, label %if.end106, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %land.lhs.true38
  %tobool42 = icmp eq i64 %18, 0
  br i1 %tobool42, label %if.then87, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %lor.lhs.false40
  %xpv_pv = bitcast i8* %15 to i8**
  %19 = load i8** %xpv_pv, align 8, !tbaa !0
  %20 = load i8* %19, align 1, !tbaa !1
  %cmp44 = icmp eq i8 %20, 48
  br i1 %cmp44, label %if.then87, label %if.end106

cond.false48:                                     ; preds = %cond.false25
  %and53 = and i32 %14, 65536
  %tobool54 = icmp eq i32 %and53, 0
  br i1 %tobool54, label %cond.false62, label %cond.true55

cond.true55:                                      ; preds = %cond.false48
  %sv_any59 = getelementptr inbounds %struct.sv* %13, i64 0, i32 0
  %21 = load i8** %sv_any59, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %21, i64 24
  %22 = bitcast i8* %xiv_iv to i64*
  %23 = load i64* %22, align 8, !tbaa !3
  %cmp60 = icmp eq i64 %23, 0
  br i1 %cmp60, label %if.then87, label %if.end106

cond.false62:                                     ; preds = %cond.false48
  %and67 = and i32 %14, 131072
  %tobool68 = icmp eq i32 %and67, 0
  br i1 %tobool68, label %cond.false76, label %cond.true69

cond.true69:                                      ; preds = %cond.false62
  %sv_any73 = getelementptr inbounds %struct.sv* %13, i64 0, i32 0
  %24 = load i8** %sv_any73, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %24, i64 32
  %25 = bitcast i8* %xnv_nv to double*
  %26 = load double* %25, align 8, !tbaa !5
  %cmp74 = fcmp une double %26, 0.000000e+00
  br i1 %cmp74, label %if.end106, label %if.then87

cond.false76:                                     ; preds = %cond.false62
  %call80 = tail call signext i8 @Perl_sv_2bool(%struct.sv* %13) #3
  %tobool82 = icmp eq i8 %call80, 0
  br i1 %tobool82, label %if.then87, label %if.end106

if.then87:                                        ; preds = %if.then12, %cond.true69, %cond.end, %land.lhs.true, %cond.false76, %cond.true55, %cond.true32, %lor.lhs.false40, %land.lhs.true43
  %27 = load i32* %sv_flags, align 4, !tbaa !4
  %and89 = and i32 %27, 32768
  %tobool90 = icmp eq i32 %and89, 0
  br i1 %tobool90, label %cond.false94, label %cond.true91

cond.true91:                                      ; preds = %if.then87
  %call92 = tail call i32 @Perl_mg_size(%struct.sv* %2) #3
  %conv93 = sext i32 %call92 to i64
  br label %cond.end96

cond.false94:                                     ; preds = %if.then87
  %sv_any95 = getelementptr inbounds %struct.av* %av, i64 0, i32 0
  %28 = load %struct.xpvav** %sv_any95, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %28, i64 0, i32 1
  %29 = load i64* %xav_fill, align 8, !tbaa !3
  br label %cond.end96

cond.end96:                                       ; preds = %cond.false94, %cond.true91
  %cond97 = phi i64 [ %conv93, %cond.true91 ], [ %29, %cond.false94 ]
  %conv98258 = zext i32 %key to i64
  %add = add i64 %conv98258, 1
  %add99 = add i64 %add, %cond97
  %conv100 = trunc i64 %add99 to i32
  %cmp101 = icmp slt i32 %conv100, 0
  br i1 %cmp101, label %return, label %if.end106

if.end106:                                        ; preds = %cond.true69, %land.lhs.true38, %cond.false76, %cond.true55, %land.lhs.true43, %cond.end96, %if.then11
  %key.addr.0 = phi i32 [ %conv100, %cond.end96 ], [ %key, %if.then11 ], [ %key, %land.lhs.true43 ], [ %key, %cond.true55 ], [ %key, %cond.false76 ], [ %key, %land.lhs.true38 ], [ %key, %cond.true69 ]
  %call107 = tail call %struct.sv** @Perl_av_fetch(%struct.av* %av, i32 %key.addr.0, i32 1) #4
  %tobool108 = icmp eq %struct.sv** %call107, null
  br i1 %tobool108, label %if.end118, label %if.then109

if.then109:                                       ; preds = %if.end106
  %30 = load %struct.sv** %call107, align 8, !tbaa !0
  %call110 = tail call i32 @Perl_mg_clear(%struct.sv* %30) #3
  %call111 = tail call %struct.magic* @Perl_mg_find(%struct.sv* %30, i32 112) #3
  %tobool112 = icmp eq %struct.magic* %call111, null
  br i1 %tobool112, label %return, label %if.then113

if.then113:                                       ; preds = %if.then109
  %call114 = tail call i32 @Perl_sv_unmagic(%struct.sv* %30, i32 112) #3
  br label %return

if.end118:                                        ; preds = %if.end106, %lor.lhs.false, %if.end3
  %key.addr.1 = phi i32 [ %key.addr.0, %if.end106 ], [ %key, %lor.lhs.false ], [ %key, %if.end3 ]
  %cmp119 = icmp slt i32 %key.addr.1, 0
  br i1 %cmp119, label %if.then121, label %if.end141

if.then121:                                       ; preds = %if.end118
  %31 = load i32* %sv_flags, align 4, !tbaa !4
  %and123 = and i32 %31, 32768
  %tobool124 = icmp eq i32 %and123, 0
  br i1 %tobool124, label %cond.false128, label %cond.true125

cond.true125:                                     ; preds = %if.then121
  %32 = bitcast %struct.av* %av to %struct.sv*
  %call126 = tail call i32 @Perl_mg_size(%struct.sv* %32) #3
  %conv127 = sext i32 %call126 to i64
  br label %cond.end131

cond.false128:                                    ; preds = %if.then121
  %sv_any129 = getelementptr inbounds %struct.av* %av, i64 0, i32 0
  %33 = load %struct.xpvav** %sv_any129, align 8, !tbaa !0
  %xav_fill130 = getelementptr inbounds %struct.xpvav* %33, i64 0, i32 1
  %34 = load i64* %xav_fill130, align 8, !tbaa !3
  br label %cond.end131

cond.end131:                                      ; preds = %cond.false128, %cond.true125
  %cond132 = phi i64 [ %conv127, %cond.true125 ], [ %34, %cond.false128 ]
  %conv134257 = zext i32 %key.addr.1 to i64
  %add133 = add i64 %conv134257, 1
  %add135 = add i64 %add133, %cond132
  %conv136 = trunc i64 %add135 to i32
  %cmp137 = icmp slt i32 %conv136, 0
  br i1 %cmp137, label %return, label %if.end141

if.end141:                                        ; preds = %cond.end131, %if.end118
  %key.addr.2 = phi i32 [ %key.addr.1, %if.end118 ], [ %conv136, %cond.end131 ]
  %conv142 = sext i32 %key.addr.2 to i64
  %sv_any143 = getelementptr inbounds %struct.av* %av, i64 0, i32 0
  %35 = load %struct.xpvav** %sv_any143, align 8, !tbaa !0
  %xav_fill144 = getelementptr inbounds %struct.xpvav* %35, i64 0, i32 1
  %36 = load i64* %xav_fill144, align 8, !tbaa !3
  %cmp145 = icmp sgt i64 %conv142, %36
  br i1 %cmp145, label %return, label %if.else

if.else:                                          ; preds = %if.end141
  %xav_flags = getelementptr inbounds %struct.xpvav* %35, i64 0, i32 9
  %37 = load i8* %xav_flags, align 1, !tbaa !1
  %38 = and i8 %37, 3
  %39 = icmp eq i8 %38, 2
  br i1 %39, label %if.then158, label %if.end159

if.then158:                                       ; preds = %if.else
  tail call void @Perl_av_reify(%struct.av* %av) #4
  %.pre260 = load %struct.xpvav** %sv_any143, align 8, !tbaa !0
  %xav_fill163.phi.trans.insert = getelementptr inbounds %struct.xpvav* %.pre260, i64 0, i32 1
  %.pre261 = load i64* %xav_fill163.phi.trans.insert, align 8, !tbaa !3
  br label %if.end159

if.end159:                                        ; preds = %if.else, %if.then158
  %40 = phi i64 [ %36, %if.else ], [ %.pre261, %if.then158 ]
  %41 = phi %struct.xpvav* [ %35, %if.else ], [ %.pre260, %if.then158 ]
  %xav_array = getelementptr inbounds %struct.xpvav* %41, i64 0, i32 0
  %42 = load i8** %xav_array, align 8, !tbaa !0
  %43 = bitcast i8* %42 to %struct.sv**
  %arrayidx = getelementptr inbounds %struct.sv** %43, i64 %conv142
  %44 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %cmp164 = icmp eq i64 %conv142, %40
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx, align 8, !tbaa !0
  br i1 %cmp164, label %do.body.preheader, label %if.end187

do.body.preheader:                                ; preds = %if.end159
  %45 = load %struct.xpvav** %sv_any143, align 8, !tbaa !0
  %xav_fill172 = getelementptr inbounds %struct.xpvav* %45, i64 0, i32 1
  %xav_fill172.promoted = load i64* %xav_fill172, align 8, !tbaa !3
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %land.rhs
  %indvars.iv = phi i64 [ %conv142, %do.body.preheader ], [ %indvars.iv.next, %land.rhs ]
  %dec259 = phi i64 [ %xav_fill172.promoted, %do.body.preheader ], [ %dec, %land.rhs ]
  %dec = add nsw i64 %dec259, -1
  %indvars.iv.next = add i64 %indvars.iv, -1
  %46 = trunc i64 %indvars.iv to i32
  %cmp174 = icmp sgt i32 %46, 0
  br i1 %cmp174, label %land.rhs, label %if.end187.loopexit

land.rhs:                                         ; preds = %do.body
  %xav_array178 = getelementptr inbounds %struct.xpvav* %45, i64 0, i32 0
  %47 = load i8** %xav_array178, align 8, !tbaa !0
  %48 = bitcast i8* %47 to %struct.sv**
  %arrayidx179 = getelementptr inbounds %struct.sv** %48, i64 %indvars.iv.next
  %49 = load %struct.sv** %arrayidx179, align 8, !tbaa !0
  %cmp180 = icmp eq %struct.sv* %49, @PL_sv_undef
  br i1 %cmp180, label %do.body, label %if.end187.loopexit

if.end187.loopexit:                               ; preds = %land.rhs, %do.body
  store i64 %dec, i64* %xav_fill172, align 8, !tbaa !3
  br label %if.end187

if.end187:                                        ; preds = %if.end159, %if.end187.loopexit
  %50 = load i32* %sv_flags, align 4, !tbaa !4
  %and189 = and i32 %50, 16384
  %tobool190 = icmp eq i32 %and189, 0
  br i1 %tobool190, label %if.end194, label %if.then191

if.then191:                                       ; preds = %if.end187
  %51 = bitcast %struct.av* %av to %struct.sv*
  %call192 = tail call i32 @Perl_mg_set(%struct.sv* %51) #3
  br label %if.end194

if.end194:                                        ; preds = %if.end187, %if.then191
  %and195 = and i32 %flags, 2
  %tobool196 = icmp eq i32 %and195, 0
  br i1 %tobool196, label %if.else198, label %if.then197

if.then197:                                       ; preds = %if.end194
  tail call void @Perl_sv_free(%struct.sv* %44) #3
  br label %return

if.else198:                                       ; preds = %if.end194
  %52 = load %struct.xpvav** %sv_any143, align 8, !tbaa !0
  %xav_flags200 = getelementptr inbounds %struct.xpvav* %52, i64 0, i32 9
  %53 = load i8* %xav_flags200, align 1, !tbaa !1
  %and202 = and i8 %53, 1
  %tobool203 = icmp eq i8 %and202, 0
  br i1 %tobool203, label %return, label %if.then204

if.then204:                                       ; preds = %if.else198
  %call205 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %44) #3
  br label %return

return:                                           ; preds = %if.then197, %if.then204, %if.else198, %if.end141, %cond.end131, %if.then109, %cond.end96, %entry, %if.then113
  %retval.0 = phi %struct.sv* [ %30, %if.then113 ], [ null, %entry ], [ null, %cond.end96 ], [ null, %if.then109 ], [ null, %cond.end131 ], [ null, %if.end141 ], [ null, %if.then197 ], [ %call205, %if.then204 ], [ %44, %if.else198 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: optsize
declare i32 @Perl_sv_unmagic(%struct.sv*, i32) #1

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_av_exists(%struct.av* %av, i32 %key) #0 {
entry:
  %tobool = icmp eq %struct.av* %av, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.av* %av, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %0, 32768
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %if.end161, label %if.then2

if.then2:                                         ; preds = %if.end
  %1 = bitcast %struct.av* %av to %struct.sv*
  %call = tail call %struct.magic* @Perl_mg_find(%struct.sv* %1, i32 80) #3
  %tobool3 = icmp ne %struct.magic* %call, null
  br i1 %tobool3, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then2
  %call4 = tail call %struct.magic* @Perl_mg_find(%struct.sv* %1, i32 68) #3
  %tobool5 = icmp eq %struct.magic* %call4, null
  br i1 %tobool5, label %if.end161, label %if.then6

if.then6:                                         ; preds = %lor.lhs.false, %if.then2
  %call7 = tail call %struct.sv* @Perl_sv_newmortal() #3
  %cmp = icmp slt i32 %key, 0
  br i1 %cmp, label %if.then8, label %if.end102

if.then8:                                         ; preds = %if.then6
  br i1 %tobool3, label %if.then10, label %if.then83

if.then10:                                        ; preds = %if.then8
  %mg_obj = getelementptr inbounds %struct.magic* %call, i64 0, i32 5
  %2 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool11 = icmp eq %struct.sv* %2, null
  br i1 %tobool11, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.then10
  %call13 = tail call %struct.sv* @Perl_newRV(%struct.sv* %1) #3
  %call14 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call13) #3
  br label %cond.end

cond.end:                                         ; preds = %if.then10, %cond.false
  %cond = phi %struct.sv* [ %call14, %cond.false ], [ %2, %if.then10 ]
  %sv_any = getelementptr inbounds %struct.sv* %cond, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %3 to %struct.sv**
  %4 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_any15 = getelementptr inbounds %struct.sv* %4, i64 0, i32 0
  %5 = load i8** %sv_any15, align 8, !tbaa !0
  %xmg_stash = getelementptr inbounds i8* %5, i64 48
  %6 = bitcast i8* %xmg_stash to %struct.hv**
  %7 = load %struct.hv** %6, align 8, !tbaa !0
  %call16 = tail call %struct.sv** @Perl_hv_fetch(%struct.hv* %7, i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0), i32 16, i32 0) #3
  %tobool17 = icmp eq %struct.sv** %call16, null
  br i1 %tobool17, label %if.then83, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end
  %8 = load %struct.sv** %call16, align 8, !tbaa !0
  %sv_any18 = getelementptr inbounds %struct.sv* %8, i64 0, i32 0
  %9 = load i8** %sv_any18, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds i8* %9, i64 56
  %10 = bitcast i8* %xgv_gp to %struct.gp**
  %11 = load %struct.gp** %10, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %11, i64 0, i32 0
  %12 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %tobool19 = icmp eq %struct.sv* %12, null
  br i1 %tobool19, label %if.then83, label %cond.false21

cond.false21:                                     ; preds = %land.lhs.true
  %sv_flags25 = getelementptr inbounds %struct.sv* %12, i64 0, i32 2
  %13 = load i32* %sv_flags25, align 4, !tbaa !4
  %and26 = and i32 %13, 262144
  %tobool27 = icmp eq i32 %and26, 0
  br i1 %tobool27, label %cond.false44, label %cond.true28

cond.true28:                                      ; preds = %cond.false21
  %sv_any32 = getelementptr inbounds %struct.sv* %12, i64 0, i32 0
  %14 = load i8** %sv_any32, align 8, !tbaa !0
  %15 = bitcast i8* %14 to %struct.xpv*
  store %struct.xpv* %15, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool33 = icmp eq i8* %14, null
  br i1 %tobool33, label %if.then83, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %cond.true28
  %xpv_cur = getelementptr inbounds i8* %14, i64 8
  %16 = bitcast i8* %xpv_cur to i64*
  %17 = load i64* %16, align 8, !tbaa !3
  %cmp35 = icmp ugt i64 %17, 1
  br i1 %cmp35, label %if.end102, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %land.lhs.true34
  %tobool38 = icmp eq i64 %17, 0
  br i1 %tobool38, label %if.then83, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %lor.lhs.false36
  %xpv_pv = bitcast i8* %14 to i8**
  %18 = load i8** %xpv_pv, align 8, !tbaa !0
  %19 = load i8* %18, align 1, !tbaa !1
  %cmp40 = icmp eq i8 %19, 48
  br i1 %cmp40, label %if.then83, label %if.end102

cond.false44:                                     ; preds = %cond.false21
  %and49 = and i32 %13, 65536
  %tobool50 = icmp eq i32 %and49, 0
  br i1 %tobool50, label %cond.false58, label %cond.true51

cond.true51:                                      ; preds = %cond.false44
  %sv_any55 = getelementptr inbounds %struct.sv* %12, i64 0, i32 0
  %20 = load i8** %sv_any55, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %20, i64 24
  %21 = bitcast i8* %xiv_iv to i64*
  %22 = load i64* %21, align 8, !tbaa !3
  %cmp56 = icmp eq i64 %22, 0
  br i1 %cmp56, label %if.then83, label %if.end102

cond.false58:                                     ; preds = %cond.false44
  %and63 = and i32 %13, 131072
  %tobool64 = icmp eq i32 %and63, 0
  br i1 %tobool64, label %cond.false72, label %cond.true65

cond.true65:                                      ; preds = %cond.false58
  %sv_any69 = getelementptr inbounds %struct.sv* %12, i64 0, i32 0
  %23 = load i8** %sv_any69, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %23, i64 32
  %24 = bitcast i8* %xnv_nv to double*
  %25 = load double* %24, align 8, !tbaa !5
  %cmp70 = fcmp une double %25, 0.000000e+00
  br i1 %cmp70, label %if.end102, label %if.then83

cond.false72:                                     ; preds = %cond.false58
  %call76 = tail call signext i8 @Perl_sv_2bool(%struct.sv* %12) #3
  %tobool78 = icmp eq i8 %call76, 0
  br i1 %tobool78, label %if.then83, label %if.end102

if.then83:                                        ; preds = %if.then8, %cond.true65, %cond.end, %land.lhs.true, %cond.false72, %cond.true51, %cond.true28, %lor.lhs.false36, %land.lhs.true39
  %26 = load i32* %sv_flags, align 4, !tbaa !4
  %and85 = and i32 %26, 32768
  %tobool86 = icmp eq i32 %and85, 0
  br i1 %tobool86, label %cond.false90, label %cond.true87

cond.true87:                                      ; preds = %if.then83
  %call88 = tail call i32 @Perl_mg_size(%struct.sv* %1) #3
  %conv89 = sext i32 %call88 to i64
  br label %cond.end92

cond.false90:                                     ; preds = %if.then83
  %sv_any91 = getelementptr inbounds %struct.av* %av, i64 0, i32 0
  %27 = load %struct.xpvav** %sv_any91, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %27, i64 0, i32 1
  %28 = load i64* %xav_fill, align 8, !tbaa !3
  br label %cond.end92

cond.end92:                                       ; preds = %cond.false90, %cond.true87
  %cond93 = phi i64 [ %conv89, %cond.true87 ], [ %28, %cond.false90 ]
  %conv94239 = zext i32 %key to i64
  %add = add i64 %conv94239, 1
  %add95 = add i64 %add, %cond93
  %conv96 = trunc i64 %add95 to i32
  %cmp97 = icmp slt i32 %conv96, 0
  br i1 %cmp97, label %return, label %if.end102

if.end102:                                        ; preds = %cond.true65, %land.lhs.true34, %cond.false72, %cond.true51, %land.lhs.true39, %cond.end92, %if.then6
  %key.addr.0 = phi i32 [ %conv96, %cond.end92 ], [ %key, %if.then6 ], [ %key, %land.lhs.true39 ], [ %key, %cond.true51 ], [ %key, %cond.false72 ], [ %key, %land.lhs.true34 ], [ %key, %cond.true65 ]
  %call103 = tail call i32 @Perl_mg_copy(%struct.sv* %1, %struct.sv* %call7, i8* null, i32 %key.addr.0) #3
  %call104 = tail call %struct.magic* @Perl_mg_find(%struct.sv* %call7, i32 112) #3
  %tobool105 = icmp eq %struct.magic* %call104, null
  br i1 %tobool105, label %if.end161, label %if.then106

if.then106:                                       ; preds = %if.end102
  %call107 = tail call i32 @Perl_magic_existspack(%struct.sv* %call7, %struct.magic* %call104) #3
  %tobool108 = icmp eq %struct.sv* %call7, null
  br i1 %tobool108, label %return, label %cond.false110

cond.false110:                                    ; preds = %if.then106
  %sv_flags111 = getelementptr inbounds %struct.sv* %call7, i64 0, i32 2
  %29 = load i32* %sv_flags111, align 4, !tbaa !4
  %and112 = and i32 %29, 262144
  %tobool113 = icmp eq i32 %and112, 0
  br i1 %tobool113, label %cond.false129, label %cond.true114

cond.true114:                                     ; preds = %cond.false110
  %sv_any115 = getelementptr inbounds %struct.sv* %call7, i64 0, i32 0
  %30 = load i8** %sv_any115, align 8, !tbaa !0
  %31 = bitcast i8* %30 to %struct.xpv*
  store %struct.xpv* %31, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool116 = icmp eq i8* %30, null
  br i1 %tobool116, label %land.end127, label %land.rhs

land.rhs:                                         ; preds = %cond.true114
  %xpv_cur117 = getelementptr inbounds i8* %30, i64 8
  %32 = bitcast i8* %xpv_cur117 to i64*
  %33 = load i64* %32, align 8, !tbaa !3
  %cmp118 = icmp ugt i64 %33, 1
  br i1 %cmp118, label %land.end127, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %tobool121 = icmp eq i64 %33, 0
  br i1 %tobool121, label %land.end127, label %land.rhs122

land.rhs122:                                      ; preds = %lor.rhs
  %xpv_pv123 = bitcast i8* %30 to i8**
  %34 = load i8** %xpv_pv123, align 8, !tbaa !0
  %35 = load i8* %34, align 1, !tbaa !1
  %cmp125 = icmp ne i8 %35, 48
  br label %land.end127

land.end127:                                      ; preds = %lor.rhs, %cond.true114, %land.rhs, %land.rhs122
  %36 = phi i1 [ false, %cond.true114 ], [ true, %land.rhs ], [ false, %lor.rhs ], [ %cmp125, %land.rhs122 ]
  %cond128 = zext i1 %36 to i8
  br label %return

cond.false129:                                    ; preds = %cond.false110
  %and131 = and i32 %29, 65536
  %tobool132 = icmp eq i32 %and131, 0
  br i1 %tobool132, label %cond.false138, label %cond.true133

cond.true133:                                     ; preds = %cond.false129
  %sv_any134 = getelementptr inbounds %struct.sv* %call7, i64 0, i32 0
  %37 = load i8** %sv_any134, align 8, !tbaa !0
  %xiv_iv135 = getelementptr inbounds i8* %37, i64 24
  %38 = bitcast i8* %xiv_iv135 to i64*
  %39 = load i64* %38, align 8, !tbaa !3
  %cmp136 = icmp ne i64 %39, 0
  %conv137 = zext i1 %cmp136 to i8
  br label %return

cond.false138:                                    ; preds = %cond.false129
  %and140 = and i32 %29, 131072
  %tobool141 = icmp eq i32 %and140, 0
  br i1 %tobool141, label %cond.false147, label %cond.true142

cond.true142:                                     ; preds = %cond.false138
  %sv_any143 = getelementptr inbounds %struct.sv* %call7, i64 0, i32 0
  %40 = load i8** %sv_any143, align 8, !tbaa !0
  %xnv_nv144 = getelementptr inbounds i8* %40, i64 32
  %41 = bitcast i8* %xnv_nv144 to double*
  %42 = load double* %41, align 8, !tbaa !5
  %cmp145 = fcmp une double %42, 0.000000e+00
  %conv146 = zext i1 %cmp145 to i8
  br label %return

cond.false147:                                    ; preds = %cond.false138
  %call148 = tail call signext i8 @Perl_sv_2bool(%struct.sv* %call7) #3
  br label %return

if.end161:                                        ; preds = %if.end102, %lor.lhs.false, %if.end
  %key.addr.1 = phi i32 [ %key.addr.0, %if.end102 ], [ %key, %lor.lhs.false ], [ %key, %if.end ]
  %cmp162 = icmp slt i32 %key.addr.1, 0
  br i1 %cmp162, label %if.then164, label %if.end184

if.then164:                                       ; preds = %if.end161
  %43 = load i32* %sv_flags, align 4, !tbaa !4
  %and166 = and i32 %43, 32768
  %tobool167 = icmp eq i32 %and166, 0
  br i1 %tobool167, label %cond.false171, label %cond.true168

cond.true168:                                     ; preds = %if.then164
  %44 = bitcast %struct.av* %av to %struct.sv*
  %call169 = tail call i32 @Perl_mg_size(%struct.sv* %44) #3
  %conv170 = sext i32 %call169 to i64
  br label %cond.end174

cond.false171:                                    ; preds = %if.then164
  %sv_any172 = getelementptr inbounds %struct.av* %av, i64 0, i32 0
  %45 = load %struct.xpvav** %sv_any172, align 8, !tbaa !0
  %xav_fill173 = getelementptr inbounds %struct.xpvav* %45, i64 0, i32 1
  %46 = load i64* %xav_fill173, align 8, !tbaa !3
  br label %cond.end174

cond.end174:                                      ; preds = %cond.false171, %cond.true168
  %cond175 = phi i64 [ %conv170, %cond.true168 ], [ %46, %cond.false171 ]
  %conv177238 = zext i32 %key.addr.1 to i64
  %add176 = add i64 %conv177238, 1
  %add178 = add i64 %add176, %cond175
  %conv179 = trunc i64 %add178 to i32
  %cmp180 = icmp slt i32 %conv179, 0
  br i1 %cmp180, label %return, label %if.end184

if.end184:                                        ; preds = %cond.end174, %if.end161
  %key.addr.2 = phi i32 [ %key.addr.1, %if.end161 ], [ %conv179, %cond.end174 ]
  %conv185 = sext i32 %key.addr.2 to i64
  %sv_any186 = getelementptr inbounds %struct.av* %av, i64 0, i32 0
  %47 = load %struct.xpvav** %sv_any186, align 8, !tbaa !0
  %xav_fill187 = getelementptr inbounds %struct.xpvav* %47, i64 0, i32 1
  %48 = load i64* %xav_fill187, align 8, !tbaa !3
  %cmp188 = icmp sgt i64 %conv185, %48
  br i1 %cmp188, label %if.else, label %land.lhs.true190

land.lhs.true190:                                 ; preds = %if.end184
  %xav_array = getelementptr inbounds %struct.xpvav* %47, i64 0, i32 0
  %49 = load i8** %xav_array, align 8, !tbaa !0
  %50 = bitcast i8* %49 to %struct.sv**
  %arrayidx = getelementptr inbounds %struct.sv** %50, i64 %conv185
  %51 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %cmp192 = icmp eq %struct.sv* %51, @PL_sv_undef
  %tobool199 = icmp eq %struct.sv* %51, null
  %or.cond = or i1 %cmp192, %tobool199
  br i1 %or.cond, label %if.else, label %return

if.else:                                          ; preds = %land.lhs.true190, %if.end184
  br label %return

return:                                           ; preds = %land.lhs.true190, %cond.end174, %cond.true133, %cond.false147, %cond.true142, %land.end127, %if.then106, %cond.end92, %entry, %if.else
  %retval.0 = phi i8 [ 0, %if.else ], [ 0, %entry ], [ 0, %cond.end92 ], [ 0, %if.then106 ], [ %cond128, %land.end127 ], [ %conv137, %cond.true133 ], [ %conv146, %cond.true142 ], [ %call148, %cond.false147 ], [ 0, %cond.end174 ], [ 1, %land.lhs.true190 ]
  ret i8 %retval.0
}

; Function Attrs: optsize
declare i32 @Perl_magic_existspack(%struct.sv*, %struct.magic*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.hv* @Perl_avhv_keys(%struct.av* %av) #0 {
entry:
  %call = tail call %struct.sv** @Perl_av_fetch(%struct.av* %av, i32 0, i32 0) #4
  %tobool = icmp eq %struct.sv** %call, null
  br i1 %tobool, label %if.end37, label %if.then

if.then:                                          ; preds = %entry
  %0 = load %struct.sv** %call, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %0, i64 0, i32 2
  %1 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %1, 8192
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %call3 = tail call i32 @Perl_mg_get(%struct.sv* %0) #3
  %.pre = load i32* %sv_flags, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then2
  %2 = phi i32 [ %1, %if.then ], [ %.pre, %if.then2 ]
  %and5 = and i32 %2, 524288
  %tobool6 = icmp eq i32 %and5, 0
  br i1 %tobool6, label %if.end37, label %if.then7

if.then7:                                         ; preds = %if.end
  %3 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %3, i64 0, i32 14
  %4 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp = icmp eq %struct.sv* %4, null
  br i1 %cmp, label %lor.lhs.false16, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then7
  %5 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings8 = getelementptr inbounds %struct.cop* %5, i64 0, i32 14
  %6 = load %struct.sv** %cop_warnings8, align 8, !tbaa !0
  %cmp9 = icmp eq %struct.sv* %6, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp9, label %lor.lhs.false16, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true
  %7 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings11 = getelementptr inbounds %struct.cop* %7, i64 0, i32 14
  %8 = load %struct.sv** %cop_warnings11, align 8, !tbaa !0
  %cmp12 = icmp eq %struct.sv* %8, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp12, label %land.lhs.true24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true10
  %9 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings13 = getelementptr inbounds %struct.cop* %9, i64 0, i32 14
  %10 = load %struct.sv** %cop_warnings13, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.sv* %10, i64 0, i32 0
  %11 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %11 to i8**
  %12 = load i8** %xpv_pv, align 8, !tbaa !0
  %13 = load i8* %12, align 1, !tbaa !1
  %and14 = and i8 %13, 16
  %tobool15 = icmp eq i8 %and14, 0
  br i1 %tobool15, label %lor.lhs.false16, label %land.lhs.true24

lor.lhs.false16:                                  ; preds = %lor.lhs.false, %land.lhs.true, %if.then7
  %14 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings17 = getelementptr inbounds %struct.cop* %14, i64 0, i32 14
  %15 = load %struct.sv** %cop_warnings17, align 8, !tbaa !0
  %cmp18 = icmp eq %struct.sv* %15, null
  br i1 %cmp18, label %land.lhs.true20, label %if.end28

land.lhs.true20:                                  ; preds = %lor.lhs.false16
  %16 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and22 = and i8 %16, 1
  %tobool23 = icmp eq i8 %and22, 0
  br i1 %tobool23, label %if.end28, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %lor.lhs.false, %land.lhs.true20, %land.lhs.true10
  %call25 = tail call i32 @Perl_sv_isa(%struct.sv* %0, i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0)) #3
  %tobool26 = icmp eq i32 %call25, 0
  br i1 %tobool26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %land.lhs.true24
  tail call void (i32, i8*, ...)* @Perl_warner(i32 2, i8* getelementptr inbounds ([29 x i8]* @.str10, i64 0, i64 0)) #3
  br label %if.end28

if.end28:                                         ; preds = %land.lhs.true24, %land.lhs.true20, %if.then27, %lor.lhs.false16
  %sv_any29 = getelementptr inbounds %struct.sv* %0, i64 0, i32 0
  %17 = load i8** %sv_any29, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %17 to %struct.sv**
  %18 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_flags30 = getelementptr inbounds %struct.sv* %18, i64 0, i32 2
  %19 = load i32* %sv_flags30, align 4, !tbaa !4
  %and31 = and i32 %19, 255
  %cmp32 = icmp eq i32 %and31, 11
  br i1 %cmp32, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end28
  %20 = bitcast %struct.sv* %18 to %struct.hv*
  br label %return

if.end37:                                         ; preds = %if.end, %entry, %if.end28
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([29 x i8]* @.str11, i64 0, i64 0)) #3
  br label %return

return:                                           ; preds = %if.end37, %if.then34
  %retval.0 = phi %struct.hv* [ %20, %if.then34 ], [ null, %if.end37 ]
  ret %struct.hv* %retval.0
}

; Function Attrs: optsize
declare i32 @Perl_mg_get(%struct.sv*) #1

; Function Attrs: optsize
declare i32 @Perl_sv_isa(%struct.sv*, i8*) #1

; Function Attrs: optsize
declare void @Perl_warner(i32, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define %struct.sv** @Perl_avhv_store_ent(%struct.av* %av, %struct.sv* %keysv, %struct.sv* %val, i32 %hash) #0 {
entry:
  %call = tail call fastcc i32 @S_avhv_index(%struct.av* %av, %struct.sv* %keysv, i32 %hash) #4
  %call1 = tail call %struct.sv** @Perl_av_store(%struct.av* %av, i32 %call, %struct.sv* %val) #4
  ret %struct.sv** %call1
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @S_avhv_index(%struct.av* %av, %struct.sv* %keysv, i32 %hash) #0 {
entry:
  %n_a = alloca i64, align 8
  %call = call %struct.hv* @Perl_avhv_keys(%struct.av* %av) #4
  %call1 = call %struct.he* @Perl_hv_fetch_ent(%struct.hv* %call, %struct.sv* %keysv, i32 0, i32 %hash) #3
  %tobool = icmp eq %struct.he* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv* %keysv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %0, 262144
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %sv_any = getelementptr inbounds %struct.sv* %keysv, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %1, i64 8
  %2 = bitcast i8* %xpv_cur to i64*
  %3 = load i64* %2, align 8, !tbaa !3
  store i64 %3, i64* %n_a, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %1 to i8**
  %4 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call3 = call i8* @Perl_sv_2pv_flags(%struct.sv* %keysv, i64* %n_a, i32 2) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ %call3, %cond.false ]
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([31 x i8]* @.str13, i64 0, i64 0), i8* %cond) #3
  br label %if.end

if.end:                                           ; preds = %entry, %cond.end
  %hent_val = getelementptr inbounds %struct.he* %call1, i64 0, i32 2
  %5 = load %struct.sv** %hent_val, align 8, !tbaa !0
  %call4 = call fastcc i32 @S_avhv_index_sv(%struct.sv* %5) #4
  ret i32 %call4
}

; Function Attrs: nounwind optsize uwtable
define %struct.sv** @Perl_avhv_fetch_ent(%struct.av* %av, %struct.sv* %keysv, i32 %lval, i32 %hash) #0 {
entry:
  %call = tail call fastcc i32 @S_avhv_index(%struct.av* %av, %struct.sv* %keysv, i32 %hash) #4
  %call1 = tail call %struct.sv** @Perl_av_fetch(%struct.av* %av, i32 %call, i32 %lval) #4
  ret %struct.sv** %call1
}

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @Perl_avhv_delete_ent(%struct.av* %av, %struct.sv* %keysv, i32 %flags, i32 %hash) #0 {
entry:
  %call = tail call %struct.hv* @Perl_avhv_keys(%struct.av* %av) #4
  %call1 = tail call %struct.he* @Perl_hv_fetch_ent(%struct.hv* %call, %struct.sv* %keysv, i32 0, i32 %hash) #3
  %tobool = icmp eq %struct.he* %call1, null
  br i1 %tobool, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %hent_val = getelementptr inbounds %struct.he* %call1, i64 0, i32 2
  %0 = load %struct.sv** %hent_val, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %0, i64 0, i32 2
  %1 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %1, 118423552
  %tobool2 = icmp eq i32 %and, 0
  br i1 %tobool2, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call4 = tail call fastcc i32 @S_avhv_index_sv(%struct.sv* %0) #4
  %call5 = tail call %struct.sv* @Perl_av_delete(%struct.av* %av, i32 %call4, i32 %flags) #4
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi %struct.sv* [ %call5, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret %struct.sv* %retval.0
}

; Function Attrs: optsize
declare %struct.he* @Perl_hv_fetch_ent(%struct.hv*, %struct.sv*, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @S_avhv_index_sv(%struct.sv* %sv) #0 {
entry:
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %0, 65536
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %1, i64 24
  %2 = bitcast i8* %xiv_iv to i64*
  %3 = load i64* %2, align 8, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = tail call i64 @Perl_sv_2iv(%struct.sv* %sv) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %call, %cond.false ]
  %conv = trunc i64 %cond to i32
  %cmp = icmp slt i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([41 x i8]* @.str12, i64 0, i64 0)) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %conv
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_avhv_exists_ent(%struct.av* %av, %struct.sv* %keysv, i32 %hash) #0 {
entry:
  %call = tail call %struct.hv* @Perl_avhv_keys(%struct.av* %av) #4
  %call1 = tail call %struct.he* @Perl_hv_fetch_ent(%struct.hv* %call, %struct.sv* %keysv, i32 0, i32 %hash) #3
  %tobool = icmp eq %struct.he* %call1, null
  br i1 %tobool, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %hent_val = getelementptr inbounds %struct.he* %call1, i64 0, i32 2
  %0 = load %struct.sv** %hent_val, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %0, i64 0, i32 2
  %1 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %1, 118423552
  %tobool2 = icmp eq i32 %and, 0
  br i1 %tobool2, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call4 = tail call fastcc i32 @S_avhv_index_sv(%struct.sv* %0) #4
  %call5 = tail call signext i8 @Perl_av_exists(%struct.av* %av, i32 %call4) #4
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i8 [ %call5, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i8 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.he* @Perl_avhv_iternext(%struct.av* %av) #0 {
entry:
  %call = tail call %struct.hv* @Perl_avhv_keys(%struct.av* %av) #4
  %call1 = tail call %struct.he* @Perl_hv_iternext(%struct.hv* %call) #3
  ret %struct.he* %call1
}

; Function Attrs: optsize
declare %struct.he* @Perl_hv_iternext(%struct.hv*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @Perl_avhv_iterval(%struct.av* %av, %struct.he* %entry1) #0 {
entry:
  %call = tail call %struct.hv* @Perl_avhv_keys(%struct.av* %av) #4
  %call2 = tail call %struct.sv* @Perl_hv_iterval(%struct.hv* %call, %struct.he* %entry1) #3
  %call3 = tail call fastcc i32 @S_avhv_index_sv(%struct.sv* %call2) #4
  %call4 = tail call %struct.sv** @Perl_av_fetch(%struct.av* %av, i32 %call3, i32 1) #4
  %0 = load %struct.sv** %call4, align 8, !tbaa !0
  ret %struct.sv* %0
}

; Function Attrs: optsize
declare %struct.sv* @Perl_hv_iterval(%struct.hv*, %struct.he*) #1

; Function Attrs: optsize
declare i64 @Perl_sv_2iv(%struct.sv*) #1

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"long", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}

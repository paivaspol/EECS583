; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/Opcode.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
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
%struct.interpreter = type { i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%struct._PerlIO = type opaque
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, {}*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%union.any = type { i8* }

@PL_stack_sp = external global %struct.sv**
@PL_stack_base = external global %struct.sv**
@PL_markstack_ptr = external global i32*
@.str = private unnamed_addr constant [39 x i8] c"Usage: Opcode::_safe_pkg_prep(Package)\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@PL_defgv = external global %struct.gv*
@PL_Sv = external global %struct.sv*
@.str3 = private unnamed_addr constant [52 x i8] c"Usage: Opcode::_safe_call_sv(Package, mask, codesv)\00", align 1
@PL_endav = external global %struct.av*
@PL_defstash = external global %struct.hv*
@PL_curstash = external global %struct.hv*
@.str4 = private unnamed_addr constant [7 x i8] c"main::\00", align 1
@PL_incgv = external global %struct.gv*
@.str5 = private unnamed_addr constant [4 x i8] c"INC\00", align 1
@PL_markstack_max = external global i32*
@PL_op = external global %struct.op*
@.str6 = private unnamed_addr constant [46 x i8] c"Usage: Opcode::verify_opset(opset, fatal = 0)\00", align 1
@PL_curpad = external global %struct.sv**
@.str7 = private unnamed_addr constant [35 x i8] c"Usage: Opcode::invert_opset(opset)\00", align 1
@my_cxt.0 = internal unnamed_addr global %struct.hv* null
@my_cxt.1 = internal unnamed_addr global %struct.sv* null
@my_cxt.2 = internal unnamed_addr global i64 0
@PL_maxo = external global i32
@.str8 = private unnamed_addr constant [45 x i8] c"Usage: Opcode::opset_to_ops(opset, desc = 0)\00", align 1
@PL_stack_max = external global %struct.sv**
@.str9 = private unnamed_addr constant [8 x i8] c"(opset)\00", align 1
@.str10 = private unnamed_addr constant [21 x i8] c"Usage: %s(safe, ...)\00", align 1
@.str11 = private unnamed_addr constant [18 x i8] c"Not a Safe object\00", align 1
@.str12 = private unnamed_addr constant [5 x i8] c"Mask\00", align 1
@PL_sv_yes = external global %struct.sv
@.str13 = private unnamed_addr constant [35 x i8] c"panic: opcode %d (%s) out of range\00", align 1
@.str14 = private unnamed_addr constant [42 x i8] c"panic: invalid bitspec for \22%s\22 (type %u)\00", align 1
@.str15 = private unnamed_addr constant [43 x i8] c"Usage: Opcode::define_optag(optagsv, mask)\00", align 1
@.str16 = private unnamed_addr constant [29 x i8] c"Usage: Opcode::empty_opset()\00", align 1
@.str17 = private unnamed_addr constant [28 x i8] c"Usage: Opcode::full_opset()\00", align 1
@.str18 = private unnamed_addr constant [33 x i8] c"Usage: Opcode::opmask_add(opset)\00", align 1
@PL_op_mask = external global i8*
@.str19 = private unnamed_addr constant [25 x i8] c"Usage: Opcode::opcodes()\00", align 1
@.str20 = private unnamed_addr constant [44 x i8] c"opcodes in list context not yet implemented\00", align 1
@.str21 = private unnamed_addr constant [24 x i8] c"Usage: Opcode::opmask()\00", align 1
@.str22 = private unnamed_addr constant [56 x i8] c"../../SPEC/benchspec/CPU2006/400.perlbench/src/Opcode.c\00", align 1
@.str23 = private unnamed_addr constant [23 x i8] c"Opcode::_safe_pkg_prep\00", align 1
@.str24 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str25 = private unnamed_addr constant [22 x i8] c"Opcode::_safe_call_sv\00", align 1
@.str26 = private unnamed_addr constant [4 x i8] c"$$$\00", align 1
@.str27 = private unnamed_addr constant [21 x i8] c"Opcode::verify_opset\00", align 1
@.str28 = private unnamed_addr constant [4 x i8] c"$;$\00", align 1
@.str29 = private unnamed_addr constant [21 x i8] c"Opcode::invert_opset\00", align 1
@.str30 = private unnamed_addr constant [21 x i8] c"Opcode::opset_to_ops\00", align 1
@.str31 = private unnamed_addr constant [14 x i8] c"Opcode::opset\00", align 1
@.str32 = private unnamed_addr constant [3 x i8] c";@\00", align 1
@.str33 = private unnamed_addr constant [20 x i8] c"Opcode::permit_only\00", align 1
@.str34 = private unnamed_addr constant [4 x i8] c"$;@\00", align 1
@.str35 = private unnamed_addr constant [13 x i8] c"Opcode::deny\00", align 1
@.str36 = private unnamed_addr constant [18 x i8] c"Opcode::deny_only\00", align 1
@.str37 = private unnamed_addr constant [15 x i8] c"Opcode::permit\00", align 1
@.str38 = private unnamed_addr constant [15 x i8] c"Opcode::opdesc\00", align 1
@.str39 = private unnamed_addr constant [21 x i8] c"Opcode::define_optag\00", align 1
@.str40 = private unnamed_addr constant [3 x i8] c"$$\00", align 1
@.str41 = private unnamed_addr constant [20 x i8] c"Opcode::empty_opset\00", align 1
@.str42 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str43 = private unnamed_addr constant [19 x i8] c"Opcode::full_opset\00", align 1
@.str44 = private unnamed_addr constant [19 x i8] c"Opcode::opmask_add\00", align 1
@.str45 = private unnamed_addr constant [16 x i8] c"Opcode::opcodes\00", align 1
@.str46 = private unnamed_addr constant [15 x i8] c"Opcode::opmask\00", align 1
@.str48 = private unnamed_addr constant [6 x i8] c":none\00", align 1
@.str49 = private unnamed_addr constant [5 x i8] c":all\00", align 1
@.str50 = private unnamed_addr constant [38 x i8] c"Can't add to uninitialised PL_op_mask\00", align 1
@.str51 = private unnamed_addr constant [32 x i8] c"Opcode tag \22%s\22 already defined\00", align 1
@.str52 = private unnamed_addr constant [39 x i8] c"panic: opcode \22%s\22 value %d is invalid\00", align 1
@.str57 = private unnamed_addr constant [26 x i8] c"Unknown operator tag \22%s\22\00", align 1
@.str58 = private unnamed_addr constant [35 x i8] c"Can't negate operators here (\22%s\22)\00", align 1
@.str59 = private unnamed_addr constant [27 x i8] c"Unknown operator name \22%s\22\00", align 1
@.str60 = private unnamed_addr constant [29 x i8] c"Unknown operator prefix \22%s\22\00", align 1
@.str61 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str62 = private unnamed_addr constant [11 x i8] c"wrong type\00", align 1
@.str63 = private unnamed_addr constant [11 x i8] c"wrong size\00", align 1
@.str64 = private unnamed_addr constant [18 x i8] c"Invalid opset: %s\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @XS_Opcode__safe_pkg_prep(%struct.cv* nocapture %cv) #0 {
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
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([39 x i8]* @.str, i64 0, i64 0)) #4
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = shl i64 %sub.ptr.sub3, 29
  %idx.ext7 = ashr exact i64 %sext, 32
  %idx.neg = sub i64 0, %idx.ext7
  %add.ptr8 = getelementptr inbounds %struct.sv** %0, i64 %idx.neg
  %sext41 = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext41, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %7, 262144
  %cmp10 = icmp eq i32 %and, 0
  br i1 %cmp10, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %sv_any = getelementptr inbounds %struct.sv* %6, i64 0, i32 0
  %8 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %8 to i8**
  %9 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = tail call i8* @Perl_sv_2pv_nolen(%struct.sv* %6) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ %call, %cond.false ]
  tail call void @Perl_push_scope() #4
  %call18 = tail call %struct.hv* @Perl_gv_stashpv(i8* %cond, i32 4) #4
  %sv_any19 = getelementptr inbounds %struct.hv* %call18, i64 0, i32 0
  %10 = load %struct.xpvhv** %sv_any19, align 8, !tbaa !0
  %xhv_name = getelementptr inbounds %struct.xpvhv* %10, i64 0, i32 10
  %11 = load i8** %xhv_name, align 8, !tbaa !0
  %call20 = tail call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #4
  %tobool = icmp eq i32 %call20, 0
  br i1 %tobool, label %if.end30, label %if.then21

if.then21:                                        ; preds = %cond.end
  tail call void @Perl_safesysfree(i8* %11) #4
  %call24 = tail call i8* @Perl_savepv(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #4
  %12 = load %struct.xpvhv** %sv_any19, align 8, !tbaa !0
  %xhv_name26 = getelementptr inbounds %struct.xpvhv* %12, i64 0, i32 10
  store i8* %call24, i8** %xhv_name26, align 8, !tbaa !0
  %13 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %14 = bitcast %struct.gv* %13 to %struct.sv*
  %call27 = tail call %struct.sv** @Perl_hv_store(%struct.hv* %call18, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0), i32 1, %struct.sv* %14, i32 0) #4
  %15 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %16 = bitcast %struct.gv* %15 to %struct.sv*
  store %struct.sv* %16, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool28 = icmp eq %struct.gv* %15, null
  br i1 %tobool28, label %if.end30, label %land.rhs

land.rhs:                                         ; preds = %if.then21
  %17 = getelementptr inbounds %struct.gv* %15, i64 0, i32 1
  %18 = load i32* %17, align 4, !tbaa !3
  %inc = add i32 %18, 1
  store i32 %inc, i32* %17, align 4, !tbaa !3
  br label %if.end30

if.end30:                                         ; preds = %land.rhs, %if.then21, %cond.end
  tail call void @Perl_pop_scope() #4
  store %struct.sv** %add.ptr8, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #1

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_nolen(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_push_scope() #1

; Function Attrs: optsize
declare %struct.hv* @Perl_gv_stashpv(i8*, i32) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #2

; Function Attrs: optsize
declare void @Perl_safesysfree(i8*) #1

; Function Attrs: optsize
declare i8* @Perl_savepv(i8*) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_hv_store(%struct.hv*, i8*, i32, %struct.sv*, i32) #1

; Function Attrs: optsize
declare void @Perl_pop_scope() #1

; Function Attrs: nounwind optsize uwtable
define void @XS_Opcode__safe_call_sv(%struct.cv* nocapture %cv) #0 {
entry:
  %op_mask_buf = alloca [452 x i8], align 16
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
  %cmp = icmp eq i64 %4, 24
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0)) #4
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = shl i64 %sub.ptr.sub3, 29
  %idx.ext7 = ashr exact i64 %sext, 32
  %idx.neg = sub i64 0, %idx.ext7
  %add.ptr8 = getelementptr inbounds %struct.sv** %0, i64 %idx.neg
  %sext86 = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext86, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %7, 262144
  %cmp10 = icmp eq i32 %and, 0
  br i1 %cmp10, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %sv_any = getelementptr inbounds %struct.sv* %6, i64 0, i32 0
  %8 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %8 to i8**
  %9 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = call i8* @Perl_sv_2pv_nolen(%struct.sv* %6) #4
  %.pre90 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %10 = phi %struct.sv** [ %5, %cond.true ], [ %.pre90, %cond.false ]
  %cond = phi i8* [ %9, %cond.true ], [ %call, %cond.false ]
  %sext87 = add i64 %add.ptr.idx, 8589934592
  %idxprom19 = ashr exact i64 %sext87, 32
  %arrayidx20 = getelementptr inbounds %struct.sv** %10, i64 %idxprom19
  %11 = load %struct.sv** %arrayidx20, align 8, !tbaa !0
  %sext88 = add i64 %add.ptr.idx, 12884901888
  %idxprom22 = ashr exact i64 %sext88, 32
  %arrayidx23 = getelementptr inbounds %struct.sv** %10, i64 %idxprom22
  %12 = load %struct.sv** %arrayidx23, align 8, !tbaa !0
  %13 = getelementptr inbounds [452 x i8]* %op_mask_buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 452, i8* %13) #3
  call void @Perl_push_scope() #4
  %14 = load i8** @PL_op_mask, align 8, !tbaa !0
  call void @Perl_save_vptr(i8* bitcast (i8** @PL_op_mask to i8*)) #4
  store i8* %13, i8** @PL_op_mask, align 8, !tbaa !0
  %tobool.i = icmp eq i8* %14, null
  %15 = load i32* @PL_maxo, align 4, !tbaa !3
  %conv2.i = sext i32 %15 to i64
  br i1 %tobool.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %cond.end
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 %conv2.i, i32 1, i1 false) #3
  br label %opmask_addlocal.exit

if.else.i:                                        ; preds = %cond.end
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 %conv2.i, i32 16, i1 false) #3
  br label %opmask_addlocal.exit

opmask_addlocal.exit:                             ; preds = %if.then1.i, %if.else.i
  call fastcc void @opmask_add(%struct.sv* %11) #4
  call void @Perl_save_aptr(%struct.av** @PL_endav) #4
  %call24 = call %struct.av* @Perl_newAV() #4
  %16 = bitcast %struct.av* %call24 to %struct.sv*
  %call25 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %16) #4
  %17 = bitcast %struct.sv* %call25 to %struct.av*
  store %struct.av* %17, %struct.av** @PL_endav, align 8, !tbaa !0
  call void @Perl_save_hptr(%struct.hv** @PL_defstash) #4
  %call26 = call %struct.hv* @Perl_gv_stashpv(i8* %cond, i32 4) #4
  store %struct.hv* %call26, %struct.hv** @PL_defstash, align 8, !tbaa !0
  call void @Perl_save_hptr(%struct.hv** @PL_curstash) #4
  %18 = load %struct.hv** @PL_defstash, align 8, !tbaa !0
  store %struct.hv* %18, %struct.hv** @PL_curstash, align 8, !tbaa !0
  %call27 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32 4, i32 11) #4
  %sv_any28 = getelementptr inbounds %struct.gv* %call27, i64 0, i32 0
  %19 = load %struct.xpvgv** %sv_any28, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %19, i64 0, i32 7
  %20 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_hv = getelementptr inbounds %struct.gp* %20, i64 0, i32 5
  %21 = load %struct.hv** %gp_hv, align 8, !tbaa !0
  %22 = bitcast %struct.hv* %21 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %22) #4
  %23 = load %struct.hv** @PL_defstash, align 8, !tbaa !0
  %24 = bitcast %struct.hv* %23 to %struct.sv*
  store %struct.sv* %24, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool = icmp eq %struct.hv* %23, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %opmask_addlocal.exit
  %25 = getelementptr inbounds %struct.hv* %23, i64 0, i32 1
  %26 = load i32* %25, align 4, !tbaa !3
  %inc = add i32 %26, 1
  store i32 %inc, i32* %25, align 4, !tbaa !3
  br label %land.end

land.end:                                         ; preds = %opmask_addlocal.exit, %land.rhs
  %27 = load %struct.xpvgv** %sv_any28, align 8, !tbaa !0
  %xgv_gp31 = getelementptr inbounds %struct.xpvgv* %27, i64 0, i32 7
  %28 = load %struct.gp** %xgv_gp31, align 8, !tbaa !0
  %gp_hv32 = getelementptr inbounds %struct.gp* %28, i64 0, i32 5
  store %struct.hv* %23, %struct.hv** %gp_hv32, align 8, !tbaa !0
  %29 = load %struct.gv** @PL_incgv, align 8, !tbaa !0
  %call33 = call %struct.hv* @Perl_save_hash(%struct.gv* %29) #4
  %call34 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0), i32 1, i32 11) #4
  %call35 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %call34) #4
  %sv_any36 = getelementptr inbounds %struct.gv* %call35, i64 0, i32 0
  %30 = load %struct.xpvgv** %sv_any36, align 8, !tbaa !0
  %xgv_gp37 = getelementptr inbounds %struct.xpvgv* %30, i64 0, i32 7
  %31 = load %struct.gp** %xgv_gp37, align 8, !tbaa !0
  %gp_hv38 = getelementptr inbounds %struct.gp* %31, i64 0, i32 5
  %32 = load %struct.hv** %gp_hv38, align 8, !tbaa !0
  %33 = bitcast %struct.hv* %32 to %struct.sv*
  store %struct.sv* %33, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool39 = icmp eq %struct.hv* %32, null
  br i1 %tobool39, label %land.end44, label %land.rhs40

land.rhs40:                                       ; preds = %land.end
  %34 = getelementptr inbounds %struct.hv* %32, i64 0, i32 1
  %35 = load i32* %34, align 4, !tbaa !3
  %inc42 = add i32 %35, 1
  store i32 %inc42, i32* %34, align 4, !tbaa !3
  br label %land.end44

land.end44:                                       ; preds = %land.end, %land.rhs40
  %36 = load %struct.gv** @PL_incgv, align 8, !tbaa !0
  %sv_any46 = getelementptr inbounds %struct.gv* %36, i64 0, i32 0
  %37 = load %struct.xpvgv** %sv_any46, align 8, !tbaa !0
  %xgv_gp47 = getelementptr inbounds %struct.xpvgv* %37, i64 0, i32 7
  %38 = load %struct.gp** %xgv_gp47, align 8, !tbaa !0
  %gp_hv48 = getelementptr inbounds %struct.gp* %38, i64 0, i32 5
  store %struct.hv* %32, %struct.hv** %gp_hv48, align 8, !tbaa !0
  %39 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr49 = getelementptr inbounds i32* %39, i64 1
  store i32* %incdec.ptr49, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %40 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp50 = icmp eq i32* %incdec.ptr49, %40
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %land.end44
  call void @Perl_markstack_grow() #4
  %.pre91 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %land.end44
  %41 = phi i32* [ %.pre91, %if.then52 ], [ %incdec.ptr49, %land.end44 ]
  %42 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast54 = ptrtoint %struct.sv** %add.ptr8 to i64
  %sub.ptr.rhs.cast55 = ptrtoint %struct.sv** %42 to i64
  %sub.ptr.sub56 = sub i64 %sub.ptr.lhs.cast54, %sub.ptr.rhs.cast55
  %sub.ptr.div5789 = lshr exact i64 %sub.ptr.sub56, 3
  %conv58 = trunc i64 %sub.ptr.div5789 to i32
  store i32 %conv58, i32* %41, align 4, !tbaa !3
  %43 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %43, i64 0, i32 6
  %44 = load i8* %op_flags, align 1, !tbaa !1
  %conv59 = zext i8 %44 to i32
  %and60 = and i32 %conv59, 3
  %tobool61 = icmp eq i32 %and60, 0
  br i1 %tobool61, label %cond.false69, label %cond.true62

cond.true62:                                      ; preds = %if.end53
  %cmp66 = icmp eq i32 %and60, 3
  %cond68 = zext i1 %cmp66 to i32
  br label %cond.end71

cond.false69:                                     ; preds = %if.end53
  %call70 = call i32 @Perl_dowantarray() #4
  br label %cond.end71

cond.end71:                                       ; preds = %cond.false69, %cond.true62
  %cond72 = phi i32 [ %cond68, %cond.true62 ], [ %call70, %cond.false69 ]
  %or73 = or i32 %cond72, 20
  %call74 = call i32 @Perl_call_sv(%struct.sv* %12, i32 %or73) #4
  %45 = bitcast %struct.hv* %call33 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %45) #4
  %46 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  call void @Perl_pop_scope() #4
  store %struct.sv** %46, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  call void @llvm.lifetime.end(i64 452, i8* %13) #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: optsize
declare void @Perl_save_aptr(%struct.av**) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.av* @Perl_newAV() #1

; Function Attrs: optsize
declare void @Perl_save_hptr(%struct.hv**) #1

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_fetchpv(i8*, i32, i32) #1

; Function Attrs: optsize
declare void @Perl_sv_free(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.hv* @Perl_save_hash(%struct.gv*) #1

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_HVadd(%struct.gv*) #1

; Function Attrs: optsize
declare void @Perl_markstack_grow() #1

; Function Attrs: optsize
declare i32 @Perl_call_sv(%struct.sv*, i32) #1

; Function Attrs: optsize
declare i32 @Perl_dowantarray() #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @XS_Opcode_verify_opset(%struct.cv* nocapture %cv) #0 {
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
  %sub.ptr.div460 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div460 to i32
  %conv5.off = add i32 %conv5, -1
  %4 = icmp ugt i32 %conv5.off, 1
  br i1 %4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([46 x i8]* @.str6, i64 0, i64 0)) #4
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
  %arrayidx11 = getelementptr inbounds %struct.sv** %10, i64 %9
  %11 = load %struct.sv** %arrayidx11, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = tail call %struct.sv* @Perl_sv_newmortal() #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %11, %cond.true ], [ %call, %cond.false ]
  %cmp12 = icmp slt i32 %conv5, 2
  br i1 %cmp12, label %if.end32, label %if.else

if.else:                                          ; preds = %cond.end
  %sext61 = add i64 %add.ptr.idx, 8589934592
  %idxprom16 = ashr exact i64 %sext61, 32
  %12 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx17 = getelementptr inbounds %struct.sv** %12, i64 %idxprom16
  %13 = load %struct.sv** %arrayidx17, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %13, i64 0, i32 2
  %14 = load i32* %sv_flags, align 4, !tbaa !3
  %and18 = and i32 %14, 65536
  %tobool19 = icmp eq i32 %and18, 0
  br i1 %tobool19, label %cond.false24, label %cond.true20

cond.true20:                                      ; preds = %if.else
  %sv_any = getelementptr inbounds %struct.sv* %13, i64 0, i32 0
  %15 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %15, i64 24
  %16 = bitcast i8* %xiv_iv to i64*
  %17 = load i64* %16, align 8, !tbaa !4
  br label %cond.end29

cond.false24:                                     ; preds = %if.else
  %call28 = tail call i64 @Perl_sv_2iv(%struct.sv* %13) #4
  br label %cond.end29

cond.end29:                                       ; preds = %cond.false24, %cond.true20
  %cond30 = phi i64 [ %17, %cond.true20 ], [ %call28, %cond.false24 ]
  %conv31 = trunc i64 %cond30 to i32
  br label %if.end32

if.end32:                                         ; preds = %cond.end, %cond.end29
  %fatal.0 = phi i32 [ %conv31, %cond.end29 ], [ 0, %cond.end ]
  %call33 = tail call fastcc i32 @verify_opset(%struct.sv* %6, i32 %fatal.0) #5
  %18 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %conv37 = sext i32 %call33 to i64
  tail call void @Perl_sv_setiv(%struct.sv* %cond, i64 %conv37) #4
  %sv_flags38 = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %19 = load i32* %sv_flags38, align 4, !tbaa !3
  %and39 = and i32 %19, 16384
  %tobool40 = icmp eq i32 %and39, 0
  br i1 %tobool40, label %if.end43, label %if.then41

if.then41:                                        ; preds = %if.end32
  %call42 = tail call i32 @Perl_mg_set(%struct.sv* %cond) #4
  br label %if.end43

if.end43:                                         ; preds = %if.end32, %if.then41
  %incdec.ptr44 = getelementptr inbounds %struct.sv** %18, i64 %idxprom
  store %struct.sv* %cond, %struct.sv** %incdec.ptr44, align 8, !tbaa !0
  %20 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr46 = getelementptr inbounds %struct.sv** %20, i64 %idxprom
  store %struct.sv** %add.ptr46, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_newmortal() #1

; Function Attrs: optsize
declare i64 @Perl_sv_2iv(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @verify_opset(%struct.sv* nocapture %opset, i32 %fatal) #0 {
entry:
  %sv_flags = getelementptr inbounds %struct.sv* %opset, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 118423552
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end8, label %if.else

if.else:                                          ; preds = %entry
  %and2 = and i32 %0, 262144
  %tobool3 = icmp eq i32 %and2, 0
  br i1 %tobool3, label %if.end8, label %if.else5

if.else5:                                         ; preds = %if.else
  %sv_any = getelementptr inbounds %struct.sv* %opset, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %1, i64 8
  %2 = bitcast i8* %xpv_cur to i64*
  %3 = load i64* %2, align 8, !tbaa !4
  %4 = load i64* @my_cxt.2, align 8, !tbaa !4
  %cmp = icmp eq i64 %3, %4
  %. = select i1 %cmp, i8* null, i8* getelementptr inbounds ([11 x i8]* @.str63, i64 0, i64 0)
  br label %if.end8

if.end8:                                          ; preds = %if.else5, %if.else, %entry
  %err.0 = phi i8* [ getelementptr inbounds ([10 x i8]* @.str61, i64 0, i64 0), %entry ], [ getelementptr inbounds ([11 x i8]* @.str62, i64 0, i64 0), %if.else ], [ %., %if.else5 ]
  %tobool9 = icmp ne i8* %err.0, null
  %tobool9.not = xor i1 %tobool9, true
  %tobool10 = icmp eq i32 %fatal, 0
  %or.cond = or i1 %tobool10, %tobool9.not
  br i1 %or.cond, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([18 x i8]* @.str64, i64 0, i64 0), i8* %err.0) #4
  br label %if.end12

if.end12:                                         ; preds = %if.end8, %if.then11
  %5 = zext i1 %tobool9 to i32
  %lnot.ext = xor i32 %5, 1
  ret i32 %lnot.ext
}

; Function Attrs: optsize
declare void @Perl_sv_setiv(%struct.sv*, i64) #1

; Function Attrs: optsize
declare i32 @Perl_mg_set(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_Opcode_invert_opset(%struct.cv* nocapture %cv) #0 {
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
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([35 x i8]* @.str7, i64 0, i64 0)) #4
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %7 = load i64* @my_cxt.2, align 8, !tbaa !4
  %call = tail call fastcc %struct.sv* @new_opset(%struct.sv* %6) #5
  %call8 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call) #4
  %sv_any = getelementptr inbounds %struct.sv* %call8, i64 0, i32 0
  %8 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %8 to i8**
  %9 = load i8** %xpv_pv, align 8, !tbaa !0
  %cmp944 = icmp eq i64 %7, 0
  br i1 %cmp944, label %while.end, label %while.body

while.body:                                       ; preds = %if.end, %while.body
  %dec45.in = phi i64 [ %dec45, %while.body ], [ %7, %if.end ]
  %dec45 = add i64 %dec45.in, -1
  %arrayidx11 = getelementptr inbounds i8* %9, i64 %dec45
  %10 = load i8* %arrayidx11, align 1, !tbaa !1
  %neg = xor i8 %10, -1
  store i8 %neg, i8* %arrayidx11, align 1, !tbaa !1
  %cmp9 = icmp eq i64 %dec45, 0
  br i1 %cmp9, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.end
  %11 = load i32* @PL_maxo, align 4, !tbaa !3
  %and = and i32 %11, 7
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end22, label %if.then15

if.then15:                                        ; preds = %while.end
  %shl = shl i32 255, %and
  %neg17 = xor i32 %shl, 255
  %12 = load i64* @my_cxt.2, align 8, !tbaa !4
  %sub = add nsw i64 %12, -1
  %arrayidx18 = getelementptr inbounds i8* %9, i64 %sub
  %13 = load i8* %arrayidx18, align 1, !tbaa !1
  %conv1941 = zext i8 %13 to i32
  %and20 = and i32 %conv1941, %neg17
  %conv21 = trunc i32 %and20 to i8
  store i8 %conv21, i8* %arrayidx18, align 1, !tbaa !1
  br label %if.end22

if.end22:                                         ; preds = %while.end, %if.then15
  %14 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx25 = getelementptr inbounds %struct.sv** %14, i64 %idxprom
  store %struct.sv* %call8, %struct.sv** %arrayidx25, align 8, !tbaa !0
  %15 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr27 = getelementptr inbounds %struct.sv** %15, i64 %idxprom
  store %struct.sv** %add.ptr27, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.sv* @new_opset(%struct.sv* %old_opset) #0 {
entry:
  %tobool = icmp eq %struct.sv* %old_opset, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @verify_opset(%struct.sv* %old_opset, i32 1) #5
  %call1 = tail call %struct.sv* @Perl_newSVsv(%struct.sv* %old_opset) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %0 = load i64* @my_cxt.2, align 8, !tbaa !4
  %call2 = tail call %struct.sv* @Perl_newSV(i64 %0) #4
  %sv_any = getelementptr inbounds %struct.sv* %call2, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %1 to i8**
  %2 = load i8** %xpv_pv, align 8, !tbaa !0
  %3 = load i64* @my_cxt.2, align 8, !tbaa !4
  %add = add nsw i64 %3, 1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %add, i32 1, i1 false)
  %4 = load i64* @my_cxt.2, align 8, !tbaa !4
  %5 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %5, i64 8
  %6 = bitcast i8* %xpv_cur to i64*
  store i64 %4, i64* %6, align 8, !tbaa !4
  %sv_flags = getelementptr inbounds %struct.sv* %call2, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %7, 1223753727
  %or = or i32 %and, 67371008
  store i32 %or, i32* %sv_flags, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %opset.0 = phi %struct.sv* [ %call1, %if.then ], [ %call2, %if.else ]
  ret %struct.sv* %opset.0
}

; Function Attrs: nounwind optsize uwtable
define void @XS_Opcode_opset_to_ops(%struct.cv* nocapture %cv) #0 {
entry:
  %len = alloca i64, align 8
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
  %sub.ptr.div4102 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div4102 to i32
  %conv5.off = add i32 %conv5, -1
  %4 = icmp ugt i32 %conv5.off, 1
  br i1 %4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([45 x i8]* @.str8, i64 0, i64 0)) #4
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = shl i64 %sub.ptr.sub3, 29
  %idx.ext9 = ashr exact i64 %sext, 32
  %idx.neg = sub i64 0, %idx.ext9
  %add.ptr10 = getelementptr inbounds %struct.sv** %0, i64 %idx.neg
  %sext103 = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext103, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %cmp12 = icmp slt i32 %conv5, 2
  br i1 %cmp12, label %if.end25, label %if.else

if.else:                                          ; preds = %if.end
  %sext104 = add i64 %add.ptr.idx, 8589934592
  %idxprom16 = ashr exact i64 %sext104, 32
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
  %call = call i64 @Perl_sv_2iv(%struct.sv* %7) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %11, %cond.true ], [ %call, %cond.false ]
  %conv24 = trunc i64 %cond to i32
  br label %if.end25

if.end25:                                         ; preds = %if.end, %cond.end
  %desc.0 = phi i32 [ %conv24, %cond.end ], [ 0, %if.end ]
  %sv_flags26 = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %12 = load i32* %sv_flags26, align 4, !tbaa !3
  %and27 = and i32 %12, 262144
  %cmp28 = icmp eq i32 %and27, 0
  br i1 %cmp28, label %cond.false33, label %cond.true30

cond.true30:                                      ; preds = %if.end25
  %sv_any31 = getelementptr inbounds %struct.sv* %6, i64 0, i32 0
  %13 = load i8** %sv_any31, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %13, i64 8
  %14 = bitcast i8* %xpv_cur to i64*
  %15 = load i64* %14, align 8, !tbaa !4
  store i64 %15, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %13 to i8**
  %16 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end35

cond.false33:                                     ; preds = %if.end25
  %call34 = call i8* @Perl_sv_2pv_flags(%struct.sv* %6, i64* %len, i32 2) #4
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false33, %cond.true30
  %cond36 = phi i8* [ %16, %cond.true30 ], [ %call34, %cond.false33 ]
  %tobool37 = icmp eq i32 %desc.0, 0
  br i1 %tobool37, label %cond.false40, label %cond.true38

cond.true38:                                      ; preds = %cond.end35
  %call39 = call i8** @Perl_get_op_descs() #4
  br label %cond.end42

cond.false40:                                     ; preds = %cond.end35
  %call41 = call i8** @Perl_get_op_names() #4
  br label %cond.end42

cond.end42:                                       ; preds = %cond.false40, %cond.true38
  %cond43 = phi i8** [ %call39, %cond.true38 ], [ %call41, %cond.false40 ]
  %call44 = call fastcc i32 @verify_opset(%struct.sv* %6, i32 1) #5
  %17 = load i64* @my_cxt.2, align 8, !tbaa !4
  %cmp46111 = icmp sgt i64 %17, 0
  br i1 %cmp46111, label %for.body.lr.ph, label %for.end79

for.body.lr.ph:                                   ; preds = %cond.end42
  %.pre119 = load i32* @PL_maxo, align 4, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc77
  %18 = phi i64 [ %17, %for.body.lr.ph ], [ %27, %for.inc77 ]
  %19 = phi i32 [ %.pre119, %for.body.lr.ph ], [ %28, %for.inc77 ]
  %indvars.iv117 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next118, %for.inc77 ]
  %sp.0114 = phi %struct.sv** [ %add.ptr10, %for.body.lr.ph ], [ %sp.1.lcssa, %for.inc77 ]
  %myopcode.0112 = phi i32 [ 0, %for.body.lr.ph ], [ %myopcode.1.lcssa, %for.inc77 ]
  %cmp54105 = icmp slt i32 %myopcode.0112, %19
  br i1 %cmp54105, label %for.body56.lr.ph, label %for.inc77

for.body56.lr.ph:                                 ; preds = %for.body
  %arrayidx49 = getelementptr inbounds i8* %cond36, i64 %indvars.iv117
  %20 = load i8* %arrayidx49, align 1, !tbaa !1
  %conv50 = sext i8 %20 to i32
  %conv57 = and i32 %conv50, 65535
  %21 = sext i32 %myopcode.0112 to i64
  br label %for.body56

for.body56:                                       ; preds = %for.body56.lr.ph, %for.inc
  %22 = phi i32 [ %19, %for.body56.lr.ph ], [ %25, %for.inc ]
  %indvars.iv = phi i64 [ %21, %for.body56.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %sp.1109 = phi %struct.sv** [ %sp.0114, %for.body56.lr.ph ], [ %sp.3, %for.inc ]
  %myopcode.1108 = phi i32 [ %myopcode.0112, %for.body56.lr.ph ], [ %inc76, %for.inc ]
  %j.0107 = phi i32 [ 0, %for.body56.lr.ph ], [ %inc, %for.inc ]
  %shl = shl i32 1, %j.0107
  %and58 = and i32 %conv57, %shl
  %tobool59 = icmp eq i32 %and58, 0
  br i1 %tobool59, label %for.inc, label %if.then60

if.then60:                                        ; preds = %for.body56
  %23 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast61 = ptrtoint %struct.sv** %23 to i64
  %sub.ptr.rhs.cast62 = ptrtoint %struct.sv** %sp.1109 to i64
  %sub.ptr.sub63 = sub i64 %sub.ptr.lhs.cast61, %sub.ptr.rhs.cast62
  %cmp65 = icmp slt i64 %sub.ptr.sub63, 8
  br i1 %cmp65, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.then60
  %call68 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.1109, %struct.sv** %sp.1109, i32 1) #4
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.then60
  %sp.2 = phi %struct.sv** [ %call68, %if.then67 ], [ %sp.1109, %if.then60 ]
  %arrayidx71 = getelementptr inbounds i8** %cond43, i64 %indvars.iv
  %24 = load i8** %arrayidx71, align 8, !tbaa !0
  %call72 = call %struct.sv* @Perl_newSVpv(i8* %24, i64 0) #4
  %call73 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call72) #4
  %incdec.ptr74 = getelementptr inbounds %struct.sv** %sp.2, i64 1
  store %struct.sv* %call73, %struct.sv** %incdec.ptr74, align 8, !tbaa !0
  %.pre120 = load i32* @PL_maxo, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body56, %if.end69
  %25 = phi i32 [ %.pre120, %if.end69 ], [ %22, %for.body56 ]
  %sp.3 = phi %struct.sv** [ %incdec.ptr74, %if.end69 ], [ %sp.1109, %for.body56 ]
  %inc = add nsw i32 %j.0107, 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc76 = add nsw i32 %myopcode.1108, 1
  %cmp52 = icmp slt i32 %inc, 8
  %26 = trunc i64 %indvars.iv.next to i32
  %cmp54 = icmp slt i32 %26, %25
  %or.cond = and i1 %cmp52, %cmp54
  br i1 %or.cond, label %for.body56, label %for.cond51.for.inc77_crit_edge

for.cond51.for.inc77_crit_edge:                   ; preds = %for.inc
  %.pre121 = load i64* @my_cxt.2, align 8, !tbaa !4
  br label %for.inc77

for.inc77:                                        ; preds = %for.body, %for.cond51.for.inc77_crit_edge
  %27 = phi i64 [ %.pre121, %for.cond51.for.inc77_crit_edge ], [ %18, %for.body ]
  %28 = phi i32 [ %25, %for.cond51.for.inc77_crit_edge ], [ %19, %for.body ]
  %sp.1.lcssa = phi %struct.sv** [ %sp.3, %for.cond51.for.inc77_crit_edge ], [ %sp.0114, %for.body ]
  %myopcode.1.lcssa = phi i32 [ %inc76, %for.cond51.for.inc77_crit_edge ], [ %myopcode.0112, %for.body ]
  %indvars.iv.next118 = add i64 %indvars.iv117, 1
  %cmp46 = icmp slt i64 %indvars.iv.next118, %27
  br i1 %cmp46, label %for.body, label %for.end79

for.end79:                                        ; preds = %for.inc77, %cond.end42
  %sp.0.lcssa = phi %struct.sv** [ %add.ptr10, %cond.end42 ], [ %sp.1.lcssa, %for.inc77 ]
  store %struct.sv** %sp.0.lcssa, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: optsize
declare i8** @Perl_get_op_descs() #1

; Function Attrs: optsize
declare i8** @Perl_get_op_names() #1

; Function Attrs: optsize
declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpv(i8*, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_Opcode_opset(%struct.cv* nocapture %cv) #0 {
entry:
  %len = alloca i64, align 8
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
  %sub.ptr.div463 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div463 to i32
  %4 = load i64* @my_cxt.2, align 8, !tbaa !4
  %call2.i = call %struct.sv* @Perl_newSV(i64 %4) #4
  %sv_any.i = getelementptr inbounds %struct.sv* %call2.i, i64 0, i32 0
  %5 = load i8** %sv_any.i, align 8, !tbaa !0
  %xpv_pv.i = bitcast i8* %5 to i8**
  %6 = load i8** %xpv_pv.i, align 8, !tbaa !0
  %7 = load i64* @my_cxt.2, align 8, !tbaa !4
  %add.i = add nsw i64 %7, 1
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 %add.i, i32 1, i1 false) #3
  %8 = load i64* @my_cxt.2, align 8, !tbaa !4
  %9 = load i8** %sv_any.i, align 8, !tbaa !0
  %xpv_cur.i = getelementptr inbounds i8* %9, i64 8
  %10 = bitcast i8* %xpv_cur.i to i64*
  store i64 %8, i64* %10, align 8, !tbaa !4
  %sv_flags.i = getelementptr inbounds %struct.sv* %call2.i, i64 0, i32 2
  %11 = load i32* %sv_flags.i, align 4, !tbaa !3
  %and.i = and i32 %11, 1223753727
  %or.i = or i32 %and.i, 67371008
  store i32 %or.i, i32* %sv_flags.i, align 4, !tbaa !3
  %call6 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call2.i) #4
  %sv_any = getelementptr inbounds %struct.sv* %call6, i64 0, i32 0
  %12 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %12 to i8**
  %13 = load i8** %xpv_pv, align 8, !tbaa !0
  %cmp64 = icmp sgt i32 %conv5, 0
  br i1 %cmp64, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sext67 = shl i64 %add, 32
  %14 = ashr exact i64 %sext67, 32
  br label %for.body

for.body:                                         ; preds = %if.end37, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end37 ]
  %15 = add nsw i64 %indvars.iv, %14
  %16 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %16, i64 %15
  %17 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call9 = call fastcc i32 @verify_opset(%struct.sv* %17, i32 0) #5
  %tobool = icmp eq i32 %call9, 0
  %18 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds %struct.sv** %18, i64 %15
  %19 = load %struct.sv** %arrayidx15, align 8, !tbaa !0
  br i1 %tobool, label %if.else, label %if.end37

if.else:                                          ; preds = %for.body
  %sv_flags = getelementptr inbounds %struct.sv* %19, i64 0, i32 2
  %20 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %20, 262144
  %cmp16 = icmp eq i32 %and, 0
  br i1 %cmp16, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.else
  %sv_any21 = getelementptr inbounds %struct.sv* %19, i64 0, i32 0
  %21 = load i8** %sv_any21, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %21, i64 8
  %22 = bitcast i8* %xpv_cur to i64*
  %23 = load i64* %22, align 8, !tbaa !4
  store i64 %23, i64* %len, align 8, !tbaa !4
  %xpv_pv26 = bitcast i8* %21 to i8**
  %24 = load i8** %xpv_pv26, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call30 = call i8* @Perl_sv_2pv_flags(%struct.sv* %19, i64* %len, i32 2) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %24, %cond.true ], [ %call30, %cond.false ]
  %25 = load i8* %cond, align 1, !tbaa !1
  %cmp32 = icmp eq i8 %25, 33
  br i1 %cmp32, label %if.then34, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  %.pre = load i64* %len, align 8, !tbaa !4
  br label %if.end

if.then34:                                        ; preds = %cond.end
  %incdec.ptr35 = getelementptr inbounds i8* %cond, i64 1
  %26 = load i64* %len, align 8, !tbaa !4
  %dec = add i64 %26, -1
  store i64 %dec, i64* %len, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %cond.end.if.end_crit_edge, %if.then34
  %27 = phi i64 [ %dec, %if.then34 ], [ %.pre, %cond.end.if.end_crit_edge ]
  %on.0 = phi i32 [ 0, %if.then34 ], [ 1, %cond.end.if.end_crit_edge ]
  %opname.0 = phi i8* [ %incdec.ptr35, %if.then34 ], [ %cond, %cond.end.if.end_crit_edge ]
  %call36 = call fastcc %struct.sv* @get_op_bitspec(i8* %opname.0, i64 %27) #5
  br label %if.end37

if.end37:                                         ; preds = %for.body, %if.end
  %bitspec.0 = phi %struct.sv* [ %call36, %if.end ], [ %19, %for.body ]
  %on.1 = phi i32 [ %on.0, %if.end ], [ 1, %for.body ]
  %opname.1 = phi i8* [ %opname.0, %if.end ], [ getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0), %for.body ]
  call fastcc void @set_opset_bits(i8* %13, %struct.sv* %bitspec.0, i32 %on.1, i8* %opname.1) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %conv5
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %if.end37, %entry
  %sext = shl i64 %add, 32
  %idxprom40 = ashr exact i64 %sext, 32
  %28 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx41 = getelementptr inbounds %struct.sv** %28, i64 %idxprom40
  store %struct.sv* %call6, %struct.sv** %arrayidx41, align 8, !tbaa !0
  %29 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr43 = getelementptr inbounds %struct.sv** %29, i64 %idxprom40
  store %struct.sv** %add.ptr43, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.sv* @get_op_bitspec(i8* %opname, i64 %len) #0 {
entry:
  %tobool = icmp eq i64 %len, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* %opname) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %len.addr.0 = phi i64 [ %len, %entry ], [ %call, %if.then ]
  %0 = load %struct.hv** @my_cxt.0, align 8, !tbaa !0
  %conv = trunc i64 %len.addr.0 to i32
  %call1 = tail call %struct.sv** @Perl_hv_fetch(%struct.hv* %0, i8* %opname, i32 %conv, i32 0) #4
  %tobool2 = icmp eq %struct.sv** %call1, null
  br i1 %tobool2, label %if.end7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %1 = load %struct.sv** %call1, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %2, 118423552
  %tobool3 = icmp eq i32 %and, 0
  br i1 %tobool3, label %if.end7, label %return

if.end7:                                          ; preds = %if.end, %lor.lhs.false
  %3 = load i8* %opname, align 1, !tbaa !1
  %cmp = icmp eq i8 %3, 58
  br i1 %cmp, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([26 x i8]* @.str57, i64 0, i64 0), i8* %opname) #4
  %.pr = load i8* %opname, align 1, !tbaa !1
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7
  %4 = phi i8 [ %.pr, %if.then10 ], [ %3, %if.end7 ]
  %cmp13 = icmp eq i8 %4, 33
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([35 x i8]* @.str58, i64 0, i64 0), i8* %opname) #4
  %.pre = load i8* %opname, align 1, !tbaa !1
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end11
  %5 = phi i8 [ %.pre, %if.then15 ], [ %4, %if.end11 ]
  %.off = add i8 %5, -65
  %6 = icmp ult i8 %.off, 26
  %.off2 = add i8 %5, -97
  %7 = icmp ult i8 %.off2, 26
  %or.cond = or i1 %6, %7
  br i1 %or.cond, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end16
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([27 x i8]* @.str59, i64 0, i64 0), i8* %opname) #4
  br label %if.end32

if.end32:                                         ; preds = %if.end16, %if.then31
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([29 x i8]* @.str60, i64 0, i64 0), i8* %opname) #4
  %.pre4 = load %struct.sv** %call1, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end32, %lor.lhs.false
  %8 = phi %struct.sv* [ %.pre4, %if.end32 ], [ %1, %lor.lhs.false ]
  ret %struct.sv* %8
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @set_opset_bits(i8* nocapture %bitmap, %struct.sv* %bitspec, i32 %on, i8* %opname) #0 {
entry:
  %sv_flags = getelementptr inbounds %struct.sv* %bitspec, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 65536
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.else26, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %bitspec, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %1, i64 24
  %2 = bitcast i8* %xiv_iv to i64*
  %3 = load i64* %2, align 8, !tbaa !4
  %conv = trunc i64 %3 to i32
  %shr = ashr i32 %conv, 3
  %and4 = and i32 %conv, 7
  %4 = load i32* @PL_maxo, align 4, !tbaa !3
  %cmp = icmp sge i32 %conv, %4
  %cmp6 = icmp slt i32 %conv, 0
  %or.cond = or i1 %cmp, %cmp6
  br i1 %or.cond, label %if.then8, label %if.end14

if.then8:                                         ; preds = %cond.true
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([39 x i8]* @.str52, i64 0, i64 0), i8* %opname, i32 %conv) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %cond.true
  %tobool15 = icmp eq i32 %on, 0
  %shl = shl i32 1, %and4
  br i1 %tobool15, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end14
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds i8* %bitmap, i64 %idxprom
  %5 = load i8* %arrayidx, align 1, !tbaa !1
  %conv17111 = zext i8 %5 to i32
  %or = or i32 %conv17111, %shl
  %conv18 = trunc i32 %or to i8
  store i8 %conv18, i8* %arrayidx, align 1, !tbaa !1
  br label %if.end81

if.else:                                          ; preds = %if.end14
  %neg = xor i32 %shl, 255
  %idxprom20 = sext i32 %shr to i64
  %arrayidx21 = getelementptr inbounds i8* %bitmap, i64 %idxprom20
  %6 = load i8* %arrayidx21, align 1, !tbaa !1
  %conv22110 = zext i8 %6 to i32
  %and23 = and i32 %conv22110, %neg
  %conv24 = trunc i32 %and23 to i8
  store i8 %conv24, i8* %arrayidx21, align 1, !tbaa !1
  br label %if.end81

if.else26:                                        ; preds = %entry
  %and28 = and i32 %0, 262144
  %tobool29 = icmp eq i32 %and28, 0
  br i1 %tobool29, label %if.else77, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else26
  %sv_any30 = getelementptr inbounds %struct.sv* %bitspec, i64 0, i32 0
  %7 = load i8** %sv_any30, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %7, i64 8
  %8 = bitcast i8* %xpv_cur to i64*
  %9 = load i64* %8, align 8, !tbaa !4
  %10 = load i64* @my_cxt.2, align 8, !tbaa !4
  %cmp31 = icmp eq i64 %9, %10
  br i1 %cmp31, label %if.end51, label %if.else77

if.end51:                                         ; preds = %land.lhs.true
  %xpv_pv = bitcast i8* %7 to i8**
  %11 = load i8** %xpv_pv, align 8, !tbaa !0
  %tobool52 = icmp eq i32 %on, 0
  %dec64113 = add i64 %9, -1
  %cmp65114 = icmp eq i64 %9, 0
  br i1 %tobool52, label %while.cond63.preheader, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end51
  br i1 %cmp65114, label %if.end81, label %while.body

while.cond63.preheader:                           ; preds = %if.end51
  br i1 %cmp65114, label %if.end81, label %while.body67

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %.pr122 = phi i64 [ %dec, %while.body ], [ %dec64113, %while.cond.preheader ]
  %arrayidx56 = getelementptr inbounds i8* %11, i64 %.pr122
  %12 = load i8* %arrayidx56, align 1, !tbaa !1
  %arrayidx58 = getelementptr inbounds i8* %bitmap, i64 %.pr122
  %13 = load i8* %arrayidx58, align 1, !tbaa !1
  %or60109 = or i8 %13, %12
  store i8 %or60109, i8* %arrayidx58, align 1, !tbaa !1
  %dec = add i64 %.pr122, -1
  %cmp54 = icmp eq i64 %.pr122, 0
  br i1 %cmp54, label %if.end81, label %while.body

while.body67:                                     ; preds = %while.cond63.preheader, %while.body67
  %.pr112116 = phi i64 [ %dec64, %while.body67 ], [ %dec64113, %while.cond63.preheader ]
  %arrayidx68 = getelementptr inbounds i8* %11, i64 %.pr112116
  %14 = load i8* %arrayidx68, align 1, !tbaa !1
  %neg70 = xor i8 %14, -1
  %arrayidx71 = getelementptr inbounds i8* %bitmap, i64 %.pr112116
  %15 = load i8* %arrayidx71, align 1, !tbaa !1
  %and73 = and i8 %15, %neg70
  store i8 %and73, i8* %arrayidx71, align 1, !tbaa !1
  %dec64 = add i64 %.pr112116, -1
  %cmp65 = icmp eq i64 %.pr112116, 0
  br i1 %cmp65, label %if.end81, label %while.body67

if.else77:                                        ; preds = %if.else26, %land.lhs.true
  %and79 = and i32 %0, 255
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([42 x i8]* @.str14, i64 0, i64 0), i8* %opname, i32 %and79) #4
  br label %if.end81

if.end81:                                         ; preds = %while.cond.preheader, %while.body, %while.cond63.preheader, %while.body67, %if.else77, %if.then16, %if.else
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_Opcode_permit_only(%struct.cv* nocapture %cv) #0 {
entry:
  %len = alloca i64, align 8
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
  %sub.ptr.div4128 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div4128 to i32
  %sv_any = getelementptr inbounds %struct.cv* %cv, i64 0, i32 0
  %4 = load %struct.xpvcv** %sv_any, align 8, !tbaa !0
  %xcv_xsubany = getelementptr inbounds %struct.xpvcv* %4, i64 0, i32 11
  %any_i32 = bitcast %union.any* %xcv_xsubany to i32*
  %5 = load i32* %any_i32, align 4, !tbaa !3
  %cmp = icmp slt i32 %conv5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %xcv_gv = getelementptr inbounds %struct.xpvcv* %4, i64 0, i32 12
  %6 = load %struct.gv** %xcv_gv, align 8, !tbaa !0
  %sv_any8 = getelementptr inbounds %struct.gv* %6, i64 0, i32 0
  %7 = load %struct.xpvgv** %sv_any8, align 8, !tbaa !0
  %xgv_name = getelementptr inbounds %struct.xpvgv* %7, i64 0, i32 8
  %8 = load i8** %xgv_name, align 8, !tbaa !0
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([21 x i8]* @.str10, i64 0, i64 0), i8* %8) #4
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = phi %struct.sv** [ %.pre, %if.then ], [ %1, %entry ]
  %sext = shl i64 %add, 32
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %9, i64 %idxprom
  %10 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %10, i64 0, i32 2
  %11 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %11, 524288
  %tobool = icmp eq i32 %and, 0
  %sv_any23.phi.trans.insert.pre = getelementptr inbounds %struct.sv* %10, i64 0, i32 0
  br i1 %tobool, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %12 = load i8** %sv_any23.phi.trans.insert.pre, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %12 to %struct.sv**
  %13 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_flags11 = getelementptr inbounds %struct.sv* %13, i64 0, i32 2
  %14 = load i32* %sv_flags11, align 4, !tbaa !3
  %15 = and i32 %14, 4351
  %16 = icmp eq i32 %15, 4107
  br i1 %16, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end, %lor.lhs.false
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([18 x i8]* @.str11, i64 0, i64 0)) #4
  %.pre132 = load i8** %sv_any23.phi.trans.insert.pre, align 8, !tbaa !0
  %xrv_rv24.phi.trans.insert = bitcast i8* %.pre132 to %struct.sv**
  %.pre133 = load %struct.sv** %xrv_rv24.phi.trans.insert, align 8, !tbaa !0
  br label %if.end22

if.end22:                                         ; preds = %lor.lhs.false, %if.then21
  %17 = phi %struct.sv* [ %13, %lor.lhs.false ], [ %.pre133, %if.then21 ]
  %18 = bitcast %struct.sv* %17 to %struct.hv*
  %call = call %struct.sv** @Perl_hv_fetch(%struct.hv* %18, i8* getelementptr inbounds ([5 x i8]* @.str12, i64 0, i64 0), i32 4, i32 1) #4
  %19 = load %struct.sv** %call, align 8, !tbaa !0
  %20 = and i32 %5, -3
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end22
  %22 = icmp ult i32 %5, 2
  %23 = load %struct.sv** @my_cxt.1, align 8, !tbaa !0
  %cond = select i1 %22, %struct.sv* %23, %struct.sv* null
  %call36 = call fastcc %struct.sv* @new_opset(%struct.sv* %cond) #5
  %call37 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call36) #4
  call void @Perl_sv_setsv_flags(%struct.sv* %19, %struct.sv* %call37, i32 2) #4
  br label %if.end39

if.else:                                          ; preds = %if.end22
  %call38 = call fastcc i32 @verify_opset(%struct.sv* %19, i32 1) #5
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then30
  %sv_any40 = getelementptr inbounds %struct.sv* %19, i64 0, i32 0
  %24 = load i8** %sv_any40, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %24 to i8**
  %25 = load i8** %xpv_pv, align 8, !tbaa !0
  %cmp41129 = icmp sgt i32 %conv5, 1
  br i1 %cmp41129, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end39
  %26 = icmp ult i32 %5, 2
  %27 = zext i1 %26 to i32
  %cond47 = xor i32 %27, 1
  %sext135 = shl i64 %add, 32
  %28 = ashr exact i64 %sext135, 32
  br label %for.body

for.body:                                         ; preds = %if.end90, %for.body.lr.ph
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %if.end90 ]
  %29 = add nsw i64 %indvars.iv, %28
  %30 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx50 = getelementptr inbounds %struct.sv** %30, i64 %29
  %31 = load %struct.sv** %arrayidx50, align 8, !tbaa !0
  %call51 = call fastcc i32 @verify_opset(%struct.sv* %31, i32 0) #5
  %tobool52 = icmp eq i32 %call51, 0
  %32 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx60 = getelementptr inbounds %struct.sv** %32, i64 %29
  %33 = load %struct.sv** %arrayidx60, align 8, !tbaa !0
  br i1 %tobool52, label %if.else57, label %if.end90

if.else57:                                        ; preds = %for.body
  %sv_flags61 = getelementptr inbounds %struct.sv* %33, i64 0, i32 2
  %34 = load i32* %sv_flags61, align 4, !tbaa !3
  %and62 = and i32 %34, 262144
  %cmp63 = icmp eq i32 %and62, 0
  br i1 %cmp63, label %cond.false75, label %cond.true65

cond.true65:                                      ; preds = %if.else57
  %sv_any69 = getelementptr inbounds %struct.sv* %33, i64 0, i32 0
  %35 = load i8** %sv_any69, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %35, i64 8
  %36 = bitcast i8* %xpv_cur to i64*
  %37 = load i64* %36, align 8, !tbaa !4
  store i64 %37, i64* %len, align 8, !tbaa !4
  %xpv_pv74 = bitcast i8* %35 to i8**
  %38 = load i8** %xpv_pv74, align 8, !tbaa !0
  br label %cond.end80

cond.false75:                                     ; preds = %if.else57
  %call79 = call i8* @Perl_sv_2pv_flags(%struct.sv* %33, i64* %len, i32 2) #4
  br label %cond.end80

cond.end80:                                       ; preds = %cond.false75, %cond.true65
  %cond81 = phi i8* [ %38, %cond.true65 ], [ %call79, %cond.false75 ]
  %39 = load i8* %cond81, align 1, !tbaa !1
  %cmp83 = icmp eq i8 %39, 33
  br i1 %cmp83, label %if.then85, label %cond.end80.if.end88_crit_edge

cond.end80.if.end88_crit_edge:                    ; preds = %cond.end80
  %.pre134 = load i64* %len, align 8, !tbaa !4
  br label %if.end88

if.then85:                                        ; preds = %cond.end80
  %incdec.ptr87 = getelementptr inbounds i8* %cond81, i64 1
  %40 = load i64* %len, align 8, !tbaa !4
  %dec = add i64 %40, -1
  store i64 %dec, i64* %len, align 8, !tbaa !4
  br label %if.end88

if.end88:                                         ; preds = %cond.end80.if.end88_crit_edge, %if.then85
  %41 = phi i64 [ %dec, %if.then85 ], [ %.pre134, %cond.end80.if.end88_crit_edge ]
  %on.0 = phi i32 [ %27, %if.then85 ], [ %cond47, %cond.end80.if.end88_crit_edge ]
  %opname.0 = phi i8* [ %incdec.ptr87, %if.then85 ], [ %cond81, %cond.end80.if.end88_crit_edge ]
  %call89 = call fastcc %struct.sv* @get_op_bitspec(i8* %opname.0, i64 %41) #5
  br label %if.end90

if.end90:                                         ; preds = %for.body, %if.end88
  %bitspec.0 = phi %struct.sv* [ %call89, %if.end88 ], [ %33, %for.body ]
  %on.1 = phi i32 [ %on.0, %if.end88 ], [ %cond47, %for.body ]
  %opname.1 = phi i8* [ %opname.0, %if.end88 ], [ getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0), %for.body ]
  call fastcc void @set_opset_bits(i8* %25, %struct.sv* %bitspec.0, i32 %on.1, i8* %opname.1) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %conv5
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %if.end90, %if.end39
  %42 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx93 = getelementptr inbounds %struct.sv** %42, i64 %idxprom
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx93, align 8, !tbaa !0
  %43 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr95 = getelementptr inbounds %struct.sv** %43, i64 %idxprom
  store %struct.sv** %add.ptr95, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare %struct.sv** @Perl_hv_fetch(%struct.hv*, i8*, i32, i32) #1

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_Opcode_opdesc(%struct.cv* nocapture %cv) #0 {
entry:
  %len = alloca i64, align 8
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
  %sub.ptr.div4165 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div4165 to i32
  %sext = shl i64 %sub.ptr.sub3, 29
  %idx.ext6 = ashr exact i64 %sext, 32
  %idx.neg = sub i64 0, %idx.ext6
  %add.ptr7 = getelementptr inbounds %struct.sv** %0, i64 %idx.neg
  %call = call i8** @Perl_get_op_descs() #4
  %sext166 = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext166, 32
  %4 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %4, i64 %idxprom
  %5 = bitcast %struct.sv** %arrayidx to i8*
  %mul = ashr exact i64 %sext, 29
  %call10 = call %struct.sv* @Perl_newSVpvn(i8* %5, i64 %mul) #4
  %call11 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call10) #4
  %sv_any = getelementptr inbounds %struct.sv* %call11, i64 0, i32 0
  %6 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %6 to i8**
  %7 = load i8** %xpv_pv, align 8, !tbaa !0
  %8 = bitcast i8* %7 to %struct.sv**
  %cmp181 = icmp sgt i32 %conv5, 0
  br i1 %cmp181, label %for.body, label %for.end124

for.body:                                         ; preds = %entry, %for.inc122
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %for.inc122 ], [ 0, %entry ]
  %sp.0183 = phi %struct.sv** [ %sp.6, %for.inc122 ], [ %add.ptr7, %entry ]
  %arrayidx14 = getelementptr inbounds %struct.sv** %8, i64 %indvars.iv187
  %9 = load %struct.sv** %arrayidx14, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %9, i64 0, i32 2
  %10 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %10, 262144
  %cmp15 = icmp eq i32 %and, 0
  br i1 %cmp15, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.body
  %sv_any19 = getelementptr inbounds %struct.sv* %9, i64 0, i32 0
  %11 = load i8** %sv_any19, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %11, i64 8
  %12 = bitcast i8* %xpv_cur to i64*
  %13 = load i64* %12, align 8, !tbaa !4
  store i64 %13, i64* %len, align 8, !tbaa !4
  %xpv_pv23 = bitcast i8* %11 to i8**
  %14 = load i8** %xpv_pv23, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %call26 = call i8* @Perl_sv_2pv_flags(%struct.sv* %9, i64* %len, i32 2) #4
  %.pre = load i64* %len, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %15 = phi i64 [ %13, %cond.true ], [ %.pre, %cond.false ]
  %cond = phi i8* [ %14, %cond.true ], [ %call26, %cond.false ]
  %call27 = call fastcc %struct.sv* @get_op_bitspec(i8* %cond, i64 %15) #5
  %sv_flags28 = getelementptr inbounds %struct.sv* %call27, i64 0, i32 2
  %16 = load i32* %sv_flags28, align 4, !tbaa !3
  %and29 = and i32 %16, 65536
  %tobool = icmp eq i32 %and29, 0
  br i1 %tobool, label %if.else, label %cond.true33

cond.true33:                                      ; preds = %cond.end
  %sv_any34 = getelementptr inbounds %struct.sv* %call27, i64 0, i32 0
  %17 = load i8** %sv_any34, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %17, i64 24
  %18 = bitcast i8* %xiv_iv to i64*
  %19 = load i64* %18, align 8, !tbaa !4
  %conv39 = trunc i64 %19 to i32
  %cmp40 = icmp sgt i32 %conv39, -1
  %20 = load i32* @PL_maxo, align 4, !tbaa !3
  %cmp42 = icmp slt i32 %conv39, %20
  %or.cond = and i1 %cmp40, %cmp42
  br i1 %or.cond, label %if.end, label %if.then44

if.then44:                                        ; preds = %cond.true33
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([35 x i8]* @.str13, i64 0, i64 0), i32 %conv39, i8* %cond) #4
  br label %if.end

if.end:                                           ; preds = %cond.true33, %if.then44
  %21 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast45 = ptrtoint %struct.sv** %21 to i64
  %sub.ptr.rhs.cast46 = ptrtoint %struct.sv** %sp.0183 to i64
  %sub.ptr.sub47 = sub i64 %sub.ptr.lhs.cast45, %sub.ptr.rhs.cast46
  %cmp49 = icmp slt i64 %sub.ptr.sub47, 8
  br i1 %cmp49, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end
  %call52 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.0183, %struct.sv** %sp.0183, i32 1) #4
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end
  %sp.1 = phi %struct.sv** [ %call52, %if.then51 ], [ %sp.0183, %if.end ]
  %sext167 = shl i64 %19, 32
  %idxprom54 = ashr exact i64 %sext167, 32
  %arrayidx55 = getelementptr inbounds i8** %call, i64 %idxprom54
  %22 = load i8** %arrayidx55, align 8, !tbaa !0
  %call56 = call %struct.sv* @Perl_newSVpv(i8* %22, i64 0) #4
  %call57 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call56) #4
  %incdec.ptr58 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* %call57, %struct.sv** %incdec.ptr58, align 8, !tbaa !0
  br label %for.inc122

if.else:                                          ; preds = %cond.end
  %and60 = and i32 %16, 262144
  %tobool61 = icmp eq i32 %and60, 0
  br i1 %tobool61, label %if.else117, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %sv_any62 = getelementptr inbounds %struct.sv* %call27, i64 0, i32 0
  %23 = load i8** %sv_any62, align 8, !tbaa !0
  %xpv_cur63 = getelementptr inbounds i8* %23, i64 8
  %24 = bitcast i8* %xpv_cur63 to i64*
  %25 = load i64* %24, align 8, !tbaa !4
  %26 = load i64* @my_cxt.2, align 8, !tbaa !4
  %cmp64 = icmp eq i64 %25, %26
  br i1 %cmp64, label %cond.end78, label %if.else117

cond.end78:                                       ; preds = %land.lhs.true
  %xpv_pv75 = bitcast i8* %23 to i8**
  %27 = load i8** %xpv_pv75, align 8, !tbaa !0
  %cmp82175 = icmp sgt i64 %25, 0
  br i1 %cmp82175, label %for.body84.lr.ph, label %for.inc122

for.body84.lr.ph:                                 ; preds = %cond.end78
  %.pre189 = load i32* @PL_maxo, align 4, !tbaa !3
  br label %for.body84

for.body84:                                       ; preds = %for.body84.lr.ph, %for.inc114
  %28 = phi i64 [ %25, %for.body84.lr.ph ], [ %37, %for.inc114 ]
  %29 = phi i32 [ %.pre189, %for.body84.lr.ph ], [ %38, %for.inc114 ]
  %indvars.iv185 = phi i64 [ 0, %for.body84.lr.ph ], [ %indvars.iv.next186, %for.inc114 ]
  %sp.2178 = phi %struct.sv** [ %sp.0183, %for.body84.lr.ph ], [ %sp.3.lcssa, %for.inc114 ]
  %myopcode.0176 = phi i32 [ 0, %for.body84.lr.ph ], [ %myopcode.1.lcssa, %for.inc114 ]
  %cmp91169 = icmp slt i32 %myopcode.0176, %29
  br i1 %cmp91169, label %for.body93.lr.ph, label %for.inc114

for.body93.lr.ph:                                 ; preds = %for.body84
  %arrayidx86 = getelementptr inbounds i8* %27, i64 %indvars.iv185
  %30 = load i8* %arrayidx86, align 1, !tbaa !1
  %conv87 = sext i8 %30 to i32
  %conv94 = and i32 %conv87, 65535
  %31 = sext i32 %myopcode.0176 to i64
  br label %for.body93

for.body93:                                       ; preds = %for.body93.lr.ph, %for.inc
  %32 = phi i32 [ %29, %for.body93.lr.ph ], [ %35, %for.inc ]
  %indvars.iv = phi i64 [ %31, %for.body93.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %sp.3173 = phi %struct.sv** [ %sp.2178, %for.body93.lr.ph ], [ %sp.5, %for.inc ]
  %j.0172 = phi i32 [ 0, %for.body93.lr.ph ], [ %inc, %for.inc ]
  %myopcode.1171 = phi i32 [ %myopcode.0176, %for.body93.lr.ph ], [ %inc113, %for.inc ]
  %shl = shl i32 1, %j.0172
  %and95 = and i32 %conv94, %shl
  %tobool96 = icmp eq i32 %and95, 0
  br i1 %tobool96, label %for.inc, label %if.then97

if.then97:                                        ; preds = %for.body93
  %33 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast98 = ptrtoint %struct.sv** %33 to i64
  %sub.ptr.rhs.cast99 = ptrtoint %struct.sv** %sp.3173 to i64
  %sub.ptr.sub100 = sub i64 %sub.ptr.lhs.cast98, %sub.ptr.rhs.cast99
  %cmp102 = icmp slt i64 %sub.ptr.sub100, 8
  br i1 %cmp102, label %if.then104, label %if.end106

if.then104:                                       ; preds = %if.then97
  %call105 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.3173, %struct.sv** %sp.3173, i32 1) #4
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %if.then97
  %sp.4 = phi %struct.sv** [ %call105, %if.then104 ], [ %sp.3173, %if.then97 ]
  %arrayidx108 = getelementptr inbounds i8** %call, i64 %indvars.iv
  %34 = load i8** %arrayidx108, align 8, !tbaa !0
  %call109 = call %struct.sv* @Perl_newSVpv(i8* %34, i64 0) #4
  %call110 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call109) #4
  %incdec.ptr111 = getelementptr inbounds %struct.sv** %sp.4, i64 1
  store %struct.sv* %call110, %struct.sv** %incdec.ptr111, align 8, !tbaa !0
  %.pre190 = load i32* @PL_maxo, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body93, %if.end106
  %35 = phi i32 [ %.pre190, %if.end106 ], [ %32, %for.body93 ]
  %sp.5 = phi %struct.sv** [ %incdec.ptr111, %if.end106 ], [ %sp.3173, %for.body93 ]
  %inc = add nsw i32 %j.0172, 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc113 = add nsw i32 %myopcode.1171, 1
  %cmp89 = icmp slt i32 %inc, 8
  %36 = trunc i64 %indvars.iv.next to i32
  %cmp91 = icmp slt i32 %36, %35
  %or.cond168 = and i1 %cmp89, %cmp91
  br i1 %or.cond168, label %for.body93, label %for.cond88.for.inc114_crit_edge

for.cond88.for.inc114_crit_edge:                  ; preds = %for.inc
  %.pre191 = load i64* @my_cxt.2, align 8, !tbaa !4
  br label %for.inc114

for.inc114:                                       ; preds = %for.body84, %for.cond88.for.inc114_crit_edge
  %37 = phi i64 [ %.pre191, %for.cond88.for.inc114_crit_edge ], [ %28, %for.body84 ]
  %38 = phi i32 [ %35, %for.cond88.for.inc114_crit_edge ], [ %29, %for.body84 ]
  %sp.3.lcssa = phi %struct.sv** [ %sp.5, %for.cond88.for.inc114_crit_edge ], [ %sp.2178, %for.body84 ]
  %myopcode.1.lcssa = phi i32 [ %inc113, %for.cond88.for.inc114_crit_edge ], [ %myopcode.0176, %for.body84 ]
  %indvars.iv.next186 = add i64 %indvars.iv185, 1
  %cmp82 = icmp slt i64 %indvars.iv.next186, %37
  br i1 %cmp82, label %for.body84, label %for.inc122

if.else117:                                       ; preds = %if.else, %land.lhs.true
  %and119 = and i32 %16, 255
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([42 x i8]* @.str14, i64 0, i64 0), i8* %cond, i32 %and119) #4
  br label %for.inc122

for.inc122:                                       ; preds = %cond.end78, %for.inc114, %if.end53, %if.else117
  %sp.6 = phi %struct.sv** [ %incdec.ptr58, %if.end53 ], [ %sp.0183, %if.else117 ], [ %sp.0183, %cond.end78 ], [ %sp.3.lcssa, %for.inc114 ]
  %indvars.iv.next188 = add i64 %indvars.iv187, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next188 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %conv5
  br i1 %exitcond, label %for.end124, label %for.body

for.end124:                                       ; preds = %for.inc122, %entry
  %sp.0.lcssa = phi %struct.sv** [ %add.ptr7, %entry ], [ %sp.6, %for.inc122 ]
  store %struct.sv** %sp.0.lcssa, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_Opcode_define_optag(%struct.cv* nocapture %cv) #0 {
entry:
  %len = alloca i64, align 8
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
  %cmp = icmp eq i64 %4, 16
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([43 x i8]* @.str15, i64 0, i64 0)) #4
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %sext28 = add i64 %add.ptr.idx, 8589934592
  %idxprom9 = ashr exact i64 %sext28, 32
  %arrayidx10 = getelementptr inbounds %struct.sv** %5, i64 %idxprom9
  %7 = load %struct.sv** %arrayidx10, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %8 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %8, 262144
  %cmp11 = icmp eq i32 %and, 0
  br i1 %cmp11, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %sv_any = getelementptr inbounds %struct.sv* %6, i64 0, i32 0
  %9 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %9, i64 8
  %10 = bitcast i8* %xpv_cur to i64*
  %11 = load i64* %10, align 8, !tbaa !4
  store i64 %11, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %9 to i8**
  %12 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %6, i64* %len, i32 2) #4
  %.pre29 = load i64* %len, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %13 = phi i64 [ %11, %cond.true ], [ %.pre29, %cond.false ]
  %cond = phi i8* [ %12, %cond.true ], [ %call, %cond.false ]
  call fastcc void @put_op_bitspec(i8* %cond, i64 %13, %struct.sv* %7) #5
  %14 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds %struct.sv** %14, i64 %idxprom
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx16, align 8, !tbaa !0
  %15 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr18 = getelementptr inbounds %struct.sv** %15, i64 %idxprom
  store %struct.sv** %add.ptr18, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @put_op_bitspec(i8* %optag, i64 %len, %struct.sv* %mask) #0 {
entry:
  %call = tail call fastcc i32 @verify_opset(%struct.sv* %mask, i32 1) #5
  %tobool = icmp eq i64 %len, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i64 @strlen(i8* %optag) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %len.addr.0 = phi i64 [ %len, %entry ], [ %call1, %if.then ]
  %0 = load %struct.hv** @my_cxt.0, align 8, !tbaa !0
  %conv = trunc i64 %len.addr.0 to i32
  %call2 = tail call %struct.sv** @Perl_hv_fetch(%struct.hv* %0, i8* %optag, i32 %conv, i32 1) #4
  %1 = load %struct.sv** %call2, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %2, 118423552
  %tobool3 = icmp eq i32 %and, 0
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([32 x i8]* @.str51, i64 0, i64 0), i8* %optag) #4
  %.pre = load %struct.sv** %call2, align 8, !tbaa !0
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then4
  %3 = phi %struct.sv* [ %1, %if.end ], [ %.pre, %if.then4 ]
  tail call void @Perl_sv_setsv_flags(%struct.sv* %3, %struct.sv* %mask, i32 2) #4
  %4 = load %struct.sv** %call2, align 8, !tbaa !0
  %sv_flags6 = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %5 = load i32* %sv_flags6, align 4, !tbaa !3
  %or = or i32 %5, 8388608
  store i32 %or, i32* %sv_flags6, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_Opcode_empty_opset(%struct.cv* nocapture %cv) #0 {
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
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([29 x i8]* @.str16, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = load i64* @my_cxt.2, align 8, !tbaa !4
  %call2.i = tail call %struct.sv* @Perl_newSV(i64 %5) #4
  %sv_any.i = getelementptr inbounds %struct.sv* %call2.i, i64 0, i32 0
  %6 = load i8** %sv_any.i, align 8, !tbaa !0
  %xpv_pv.i = bitcast i8* %6 to i8**
  %7 = load i8** %xpv_pv.i, align 8, !tbaa !0
  %8 = load i64* @my_cxt.2, align 8, !tbaa !4
  %add.i = add nsw i64 %8, 1
  tail call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 %add.i, i32 1, i1 false) #3
  %9 = load i64* @my_cxt.2, align 8, !tbaa !4
  %10 = load i8** %sv_any.i, align 8, !tbaa !0
  %xpv_cur.i = getelementptr inbounds i8* %10, i64 8
  %11 = bitcast i8* %xpv_cur.i to i64*
  store i64 %9, i64* %11, align 8, !tbaa !4
  %sv_flags.i = getelementptr inbounds %struct.sv* %call2.i, i64 0, i32 2
  %12 = load i32* %sv_flags.i, align 4, !tbaa !3
  %and.i = and i32 %12, 1223753727
  %or.i = or i32 %and.i, 67371008
  store i32 %or.i, i32* %sv_flags.i, align 4, !tbaa !3
  %call7 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call2.i) #4
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %13 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %13, i64 %idxprom
  store %struct.sv* %call7, %struct.sv** %arrayidx, align 8, !tbaa !0
  %14 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr10 = getelementptr inbounds %struct.sv** %14, i64 %idxprom
  store %struct.sv** %add.ptr10, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_Opcode_full_opset(%struct.cv* nocapture %cv) #0 {
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
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([28 x i8]* @.str17, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = load %struct.sv** @my_cxt.1, align 8, !tbaa !0
  %call = tail call fastcc %struct.sv* @new_opset(%struct.sv* %5) #5
  %call7 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call) #4
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %6 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %6, i64 %idxprom
  store %struct.sv* %call7, %struct.sv** %arrayidx, align 8, !tbaa !0
  %7 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr10 = getelementptr inbounds %struct.sv** %7, i64 %idxprom
  store %struct.sv** %add.ptr10, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_Opcode_opmask_add(%struct.cv* nocapture %cv) #0 {
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
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([33 x i8]* @.str18, i64 0, i64 0)) #4
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %7 = load i8** @PL_op_mask, align 8, !tbaa !0
  %tobool = icmp eq i8* %7, null
  br i1 %tobool, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end
  %8 = load i32* @PL_maxo, align 4, !tbaa !3
  %conv9 = sext i32 %8 to i64
  %call = tail call i8* @Perl_safesysmalloc(i64 %conv9) #4
  store i8* %call, i8** @PL_op_mask, align 8, !tbaa !0
  %9 = load i32* @PL_maxo, align 4, !tbaa !3
  %conv10 = sext i32 %9 to i64
  tail call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 %conv10, i32 1, i1 false)
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then8
  tail call fastcc void @opmask_add(%struct.sv* %6) #5
  %10 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr14.sum = add i64 %idxprom, -1
  %add.ptr15 = getelementptr inbounds %struct.sv** %10, i64 %add.ptr14.sum
  store %struct.sv** %add.ptr15, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i8* @Perl_safesysmalloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @opmask_add(%struct.sv* %opset) #0 {
entry:
  %len = alloca i64, align 8
  %call = call fastcc i32 @verify_opset(%struct.sv* %opset, i32 1) #5
  %0 = load i8** @PL_op_mask, align 8, !tbaa !0
  %tobool = icmp eq i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([38 x i8]* @.str50, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %sv_flags = getelementptr inbounds %struct.sv* %opset, i64 0, i32 2
  %1 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %1, 262144
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %sv_any = getelementptr inbounds %struct.sv* %opset, i64 0, i32 0
  %2 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %2, i64 8
  %3 = bitcast i8* %xpv_cur to i64*
  %4 = load i64* %3, align 8, !tbaa !4
  store i64 %4, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %2 to i8**
  %5 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call2 = call i8* @Perl_sv_2pv_flags(%struct.sv* %opset, i64* %len, i32 2) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %5, %cond.true ], [ %call2, %cond.false ]
  %6 = load i64* @my_cxt.2, align 8, !tbaa !4
  %cmp339 = icmp sgt i64 %6, 0
  br i1 %cmp339, label %for.body, label %for.end23

for.body:                                         ; preds = %cond.end, %for.inc
  %7 = phi i64 [ %15, %for.inc ], [ %6, %cond.end ]
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.inc ], [ 0, %cond.end ]
  %myopcode.040 = phi i32 [ %myopcode.2, %for.inc ], [ 0, %cond.end ]
  %arrayidx = getelementptr inbounds i8* %cond, i64 %indvars.iv43
  %8 = load i8* %arrayidx, align 1, !tbaa !1
  %conv533 = zext i8 %8 to i32
  %tobool6 = icmp eq i8 %8, 0
  br i1 %tobool6, label %if.then7, label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.body
  %9 = load i32* @PL_maxo, align 4, !tbaa !3
  %cmp1235 = icmp slt i32 %myopcode.040, %9
  br i1 %cmp1235, label %for.body14.lr.ph, label %for.inc

for.body14.lr.ph:                                 ; preds = %for.cond9.preheader
  %10 = sext i32 %myopcode.040 to i64
  br label %for.body14

if.then7:                                         ; preds = %for.body
  %add = add nsw i32 %myopcode.040, 8
  br label %for.inc

for.body14:                                       ; preds = %for.body14, %for.body14.lr.ph
  %indvars.iv = phi i64 [ %10, %for.body14.lr.ph ], [ %indvars.iv.next, %for.body14 ]
  %myopcode.138 = phi i32 [ %myopcode.040, %for.body14.lr.ph ], [ %inc17, %for.body14 ]
  %j.037 = phi i32 [ 0, %for.body14.lr.ph ], [ %inc, %for.body14 ]
  %inc = add nsw i32 %j.037, 1
  %shl = shl i32 1, %j.037
  %and16 = and i32 %shl, %conv533
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc17 = add nsw i32 %myopcode.138, 1
  %11 = load i8** @PL_op_mask, align 8, !tbaa !0
  %arrayidx19 = getelementptr inbounds i8* %11, i64 %indvars.iv
  %12 = load i8* %arrayidx19, align 1, !tbaa !1
  %conv2034 = zext i8 %12 to i32
  %or = or i32 %conv2034, %and16
  %conv21 = trunc i32 %or to i8
  store i8 %conv21, i8* %arrayidx19, align 1, !tbaa !1
  %cmp10 = icmp slt i32 %inc, 8
  %13 = load i32* @PL_maxo, align 4, !tbaa !3
  %14 = trunc i64 %indvars.iv.next to i32
  %cmp12 = icmp slt i32 %14, %13
  %or.cond = and i1 %cmp10, %cmp12
  br i1 %or.cond, label %for.body14, label %for.cond9.for.inc.loopexit_crit_edge

for.cond9.for.inc.loopexit_crit_edge:             ; preds = %for.body14
  %.pre.pre = load i64* @my_cxt.2, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.cond9.preheader, %for.cond9.for.inc.loopexit_crit_edge, %if.then7
  %15 = phi i64 [ %7, %if.then7 ], [ %.pre.pre, %for.cond9.for.inc.loopexit_crit_edge ], [ %7, %for.cond9.preheader ]
  %myopcode.2 = phi i32 [ %add, %if.then7 ], [ %inc17, %for.cond9.for.inc.loopexit_crit_edge ], [ %myopcode.040, %for.cond9.preheader ]
  %indvars.iv.next44 = add i64 %indvars.iv43, 1
  %cmp3 = icmp slt i64 %indvars.iv.next44, %15
  br i1 %cmp3, label %for.body, label %for.end23

for.end23:                                        ; preds = %for.inc, %cond.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_Opcode_opcodes(%struct.cv* nocapture %cv) #0 {
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
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([25 x i8]* @.str19, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %sext = shl i64 %sub.ptr.sub3, 29
  %idx.ext7 = ashr exact i64 %sext, 32
  %idx.neg = sub i64 0, %idx.ext7
  %add.ptr8 = getelementptr inbounds %struct.sv** %0, i64 %idx.neg
  %5 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %5, i64 0, i32 6
  %6 = load i8* %op_flags, align 1, !tbaa !1
  %conv9 = zext i8 %6 to i32
  %and = and i32 %conv9, 3
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %cmp13 = icmp eq i32 %and, 3
  %cond = zext i1 %cmp13 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = tail call i32 @Perl_dowantarray() #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond15 = phi i32 [ %cond, %cond.true ], [ %call, %cond.false ]
  %cmp16 = icmp eq i32 %cond15, 1
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %cond.end
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([44 x i8]* @.str20, i64 0, i64 0)) #4
  br label %if.end32

if.else:                                          ; preds = %cond.end
  %7 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast19 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.rhs.cast20 = ptrtoint %struct.sv** %add.ptr8 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  %cmp23 = icmp slt i64 %sub.ptr.sub21, 8
  br i1 %cmp23, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.else
  %call26 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %add.ptr8, %struct.sv** %add.ptr8, i32 1) #4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.else
  %sp.0 = phi %struct.sv** [ %call26, %if.then25 ], [ %add.ptr8, %if.else ]
  %8 = load i32* @PL_maxo, align 4, !tbaa !3
  %conv28 = sext i32 %8 to i64
  %call29 = tail call %struct.sv* @Perl_newSViv(i64 %conv28) #4
  %call30 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call29) #4
  %incdec.ptr31 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %call30, %struct.sv** %incdec.ptr31, align 8, !tbaa !0
  br label %if.end32

if.end32:                                         ; preds = %if.end27, %if.then18
  %sp.1 = phi %struct.sv** [ %add.ptr8, %if.then18 ], [ %incdec.ptr31, %if.end27 ]
  store %struct.sv** %sp.1, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare %struct.sv* @Perl_newSViv(i64) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_Opcode_opmask(%struct.cv* nocapture %cv) #0 {
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
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([24 x i8]* @.str21, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = load i64* @my_cxt.2, align 8, !tbaa !4
  %call2.i = tail call %struct.sv* @Perl_newSV(i64 %5) #4
  %sv_any.i = getelementptr inbounds %struct.sv* %call2.i, i64 0, i32 0
  %6 = load i8** %sv_any.i, align 8, !tbaa !0
  %xpv_pv.i = bitcast i8* %6 to i8**
  %7 = load i8** %xpv_pv.i, align 8, !tbaa !0
  %8 = load i64* @my_cxt.2, align 8, !tbaa !4
  %add.i = add nsw i64 %8, 1
  tail call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 %add.i, i32 1, i1 false) #3
  %9 = load i64* @my_cxt.2, align 8, !tbaa !4
  %10 = load i8** %sv_any.i, align 8, !tbaa !0
  %xpv_cur.i = getelementptr inbounds i8* %10, i64 8
  %11 = bitcast i8* %xpv_cur.i to i64*
  store i64 %9, i64* %11, align 8, !tbaa !4
  %sv_flags.i = getelementptr inbounds %struct.sv* %call2.i, i64 0, i32 2
  %12 = load i32* %sv_flags.i, align 4, !tbaa !3
  %and.i = and i32 %12, 1223753727
  %or.i = or i32 %and.i, 67371008
  store i32 %or.i, i32* %sv_flags.i, align 4, !tbaa !3
  %call7 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call2.i) #4
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %13 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %13, i64 %idxprom
  store %struct.sv* %call7, %struct.sv** %arrayidx, align 8, !tbaa !0
  %14 = load i8** @PL_op_mask, align 8, !tbaa !0
  %tobool = icmp eq i8* %14, null
  br i1 %tobool, label %if.end24, label %if.then9

if.then9:                                         ; preds = %if.end
  %15 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds %struct.sv** %15, i64 %idxprom
  %16 = load %struct.sv** %arrayidx12, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.sv* %16, i64 0, i32 0
  %17 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %17 to i8**
  %18 = load i8** %xpv_pv, align 8, !tbaa !0
  %19 = load i32* @PL_maxo, align 4, !tbaa !3
  %cmp1338 = icmp sgt i32 %19, 0
  br i1 %cmp1338, label %for.body, label %if.end24

for.body:                                         ; preds = %if.then9, %for.inc.for.body_crit_edge
  %20 = phi i8* [ %.pre40, %for.inc.for.body_crit_edge ], [ %14, %if.then9 ]
  %21 = phi i32 [ %25, %for.inc.for.body_crit_edge ], [ %19, %if.then9 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 0, %if.then9 ]
  %arrayidx16 = getelementptr inbounds i8* %20, i64 %indvars.iv
  %22 = load i8* %arrayidx16, align 1, !tbaa !1
  %tobool17 = icmp eq i8 %22, 0
  br i1 %tobool17, label %for.inc, label %if.then18

if.then18:                                        ; preds = %for.body
  %23 = trunc i64 %indvars.iv to i32
  %and = and i32 %23, 7
  %shl = shl i32 1, %and
  %shr = ashr i32 %23, 3
  %idxprom19 = sext i32 %shr to i64
  %arrayidx20 = getelementptr inbounds i8* %18, i64 %idxprom19
  %24 = load i8* %arrayidx20, align 1, !tbaa !1
  %conv2137 = zext i8 %24 to i32
  %or = or i32 %conv2137, %shl
  %conv22 = trunc i32 %or to i8
  store i8 %conv22, i8* %arrayidx20, align 1, !tbaa !1
  %.pre = load i32* @PL_maxo, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then18
  %25 = phi i32 [ %21, %for.body ], [ %.pre, %if.then18 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %26 = trunc i64 %indvars.iv.next to i32
  %cmp13 = icmp slt i32 %26, %25
  br i1 %cmp13, label %for.inc.for.body_crit_edge, label %if.end24

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre40 = load i8** @PL_op_mask, align 8, !tbaa !0
  br label %for.body

if.end24:                                         ; preds = %if.then9, %for.inc, %if.end
  %27 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr26 = getelementptr inbounds %struct.sv** %27, i64 %idxprom
  store %struct.sv** %add.ptr26, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @boot_Opcode(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %0, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %1 = load i32* %0, align 4, !tbaa !3
  %call = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([23 x i8]* @.str23, i64 0, i64 0), void (%struct.cv*)* @XS_Opcode__safe_pkg_prep, i8* getelementptr inbounds ([56 x i8]* @.str22, i64 0, i64 0)) #4
  %2 = bitcast %struct.cv* %call to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %2, i8* getelementptr inbounds ([2 x i8]* @.str24, i64 0, i64 0)) #4
  %call7 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([22 x i8]* @.str25, i64 0, i64 0), void (%struct.cv*)* @XS_Opcode__safe_call_sv, i8* getelementptr inbounds ([56 x i8]* @.str22, i64 0, i64 0)) #4
  %3 = bitcast %struct.cv* %call7 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %3, i8* getelementptr inbounds ([4 x i8]* @.str26, i64 0, i64 0)) #4
  %call8 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8]* @.str27, i64 0, i64 0), void (%struct.cv*)* @XS_Opcode_verify_opset, i8* getelementptr inbounds ([56 x i8]* @.str22, i64 0, i64 0)) #4
  %4 = bitcast %struct.cv* %call8 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %4, i8* getelementptr inbounds ([4 x i8]* @.str28, i64 0, i64 0)) #4
  %call9 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8]* @.str29, i64 0, i64 0), void (%struct.cv*)* @XS_Opcode_invert_opset, i8* getelementptr inbounds ([56 x i8]* @.str22, i64 0, i64 0)) #4
  %5 = bitcast %struct.cv* %call9 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %5, i8* getelementptr inbounds ([2 x i8]* @.str24, i64 0, i64 0)) #4
  %call10 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8]* @.str30, i64 0, i64 0), void (%struct.cv*)* @XS_Opcode_opset_to_ops, i8* getelementptr inbounds ([56 x i8]* @.str22, i64 0, i64 0)) #4
  %6 = bitcast %struct.cv* %call10 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %6, i8* getelementptr inbounds ([4 x i8]* @.str28, i64 0, i64 0)) #4
  %call11 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([14 x i8]* @.str31, i64 0, i64 0), void (%struct.cv*)* @XS_Opcode_opset, i8* getelementptr inbounds ([56 x i8]* @.str22, i64 0, i64 0)) #4
  %7 = bitcast %struct.cv* %call11 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %7, i8* getelementptr inbounds ([3 x i8]* @.str32, i64 0, i64 0)) #4
  %call12 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([20 x i8]* @.str33, i64 0, i64 0), void (%struct.cv*)* @XS_Opcode_permit_only, i8* getelementptr inbounds ([56 x i8]* @.str22, i64 0, i64 0)) #4
  %sv_any = getelementptr inbounds %struct.cv* %call12, i64 0, i32 0
  %8 = load %struct.xpvcv** %sv_any, align 8, !tbaa !0
  %xcv_xsubany = getelementptr inbounds %struct.xpvcv* %8, i64 0, i32 11
  %any_i32 = bitcast %union.any* %xcv_xsubany to i32*
  store i32 0, i32* %any_i32, align 4, !tbaa !3
  %9 = bitcast %struct.cv* %call12 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %9, i8* getelementptr inbounds ([4 x i8]* @.str34, i64 0, i64 0)) #4
  %call13 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([13 x i8]* @.str35, i64 0, i64 0), void (%struct.cv*)* @XS_Opcode_permit_only, i8* getelementptr inbounds ([56 x i8]* @.str22, i64 0, i64 0)) #4
  %sv_any14 = getelementptr inbounds %struct.cv* %call13, i64 0, i32 0
  %10 = load %struct.xpvcv** %sv_any14, align 8, !tbaa !0
  %xcv_xsubany15 = getelementptr inbounds %struct.xpvcv* %10, i64 0, i32 11
  %any_i3216 = bitcast %union.any* %xcv_xsubany15 to i32*
  store i32 3, i32* %any_i3216, align 4, !tbaa !3
  %11 = bitcast %struct.cv* %call13 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %11, i8* getelementptr inbounds ([4 x i8]* @.str34, i64 0, i64 0)) #4
  %call17 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([18 x i8]* @.str36, i64 0, i64 0), void (%struct.cv*)* @XS_Opcode_permit_only, i8* getelementptr inbounds ([56 x i8]* @.str22, i64 0, i64 0)) #4
  %sv_any18 = getelementptr inbounds %struct.cv* %call17, i64 0, i32 0
  %12 = load %struct.xpvcv** %sv_any18, align 8, !tbaa !0
  %xcv_xsubany19 = getelementptr inbounds %struct.xpvcv* %12, i64 0, i32 11
  %any_i3220 = bitcast %union.any* %xcv_xsubany19 to i32*
  store i32 2, i32* %any_i3220, align 4, !tbaa !3
  %13 = bitcast %struct.cv* %call17 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %13, i8* getelementptr inbounds ([4 x i8]* @.str34, i64 0, i64 0)) #4
  %call21 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([15 x i8]* @.str37, i64 0, i64 0), void (%struct.cv*)* @XS_Opcode_permit_only, i8* getelementptr inbounds ([56 x i8]* @.str22, i64 0, i64 0)) #4
  %sv_any22 = getelementptr inbounds %struct.cv* %call21, i64 0, i32 0
  %14 = load %struct.xpvcv** %sv_any22, align 8, !tbaa !0
  %xcv_xsubany23 = getelementptr inbounds %struct.xpvcv* %14, i64 0, i32 11
  %any_i3224 = bitcast %union.any* %xcv_xsubany23 to i32*
  store i32 1, i32* %any_i3224, align 4, !tbaa !3
  %15 = bitcast %struct.cv* %call21 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %15, i8* getelementptr inbounds ([4 x i8]* @.str34, i64 0, i64 0)) #4
  %call25 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([15 x i8]* @.str38, i64 0, i64 0), void (%struct.cv*)* @XS_Opcode_opdesc, i8* getelementptr inbounds ([56 x i8]* @.str22, i64 0, i64 0)) #4
  %16 = bitcast %struct.cv* %call25 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %16, i8* getelementptr inbounds ([3 x i8]* @.str32, i64 0, i64 0)) #4
  %call26 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8]* @.str39, i64 0, i64 0), void (%struct.cv*)* @XS_Opcode_define_optag, i8* getelementptr inbounds ([56 x i8]* @.str22, i64 0, i64 0)) #4
  %17 = bitcast %struct.cv* %call26 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %17, i8* getelementptr inbounds ([3 x i8]* @.str40, i64 0, i64 0)) #4
  %call27 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([20 x i8]* @.str41, i64 0, i64 0), void (%struct.cv*)* @XS_Opcode_empty_opset, i8* getelementptr inbounds ([56 x i8]* @.str22, i64 0, i64 0)) #4
  %18 = bitcast %struct.cv* %call27 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %18, i8* getelementptr inbounds ([1 x i8]* @.str42, i64 0, i64 0)) #4
  %call28 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([19 x i8]* @.str43, i64 0, i64 0), void (%struct.cv*)* @XS_Opcode_full_opset, i8* getelementptr inbounds ([56 x i8]* @.str22, i64 0, i64 0)) #4
  %19 = bitcast %struct.cv* %call28 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %19, i8* getelementptr inbounds ([1 x i8]* @.str42, i64 0, i64 0)) #4
  %call29 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([19 x i8]* @.str44, i64 0, i64 0), void (%struct.cv*)* @XS_Opcode_opmask_add, i8* getelementptr inbounds ([56 x i8]* @.str22, i64 0, i64 0)) #4
  %20 = bitcast %struct.cv* %call29 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %20, i8* getelementptr inbounds ([2 x i8]* @.str24, i64 0, i64 0)) #4
  %call30 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([16 x i8]* @.str45, i64 0, i64 0), void (%struct.cv*)* @XS_Opcode_opcodes, i8* getelementptr inbounds ([56 x i8]* @.str22, i64 0, i64 0)) #4
  %21 = bitcast %struct.cv* %call30 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %21, i8* getelementptr inbounds ([1 x i8]* @.str42, i64 0, i64 0)) #4
  %call31 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([15 x i8]* @.str46, i64 0, i64 0), void (%struct.cv*)* @XS_Opcode_opmask, i8* getelementptr inbounds ([56 x i8]* @.str22, i64 0, i64 0)) #4
  %22 = bitcast %struct.cv* %call31 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %22, i8* getelementptr inbounds ([1 x i8]* @.str42, i64 0, i64 0)) #4
  %23 = load i32* @PL_maxo, align 4, !tbaa !3
  %add32 = add nsw i32 %23, 7
  %div = sdiv i32 %add32, 8
  %conv33 = sext i32 %div to i64
  store i64 %conv33, i64* @my_cxt.2, align 8, !tbaa !4
  %idx.ext65 = zext i32 %1 to i64
  %add.ptr.idx = shl nuw i64 %idx.ext65, 32
  %call.i = tail call %struct.hv* @Perl_newHV() #4
  store %struct.hv* %call.i, %struct.hv** @my_cxt.0, align 8, !tbaa !0
  %call1.i = tail call i8** @Perl_get_op_names() #4
  %24 = load i32* @PL_maxo, align 4, !tbaa !3
  %cmp50.i = icmp sgt i32 %24, 0
  br i1 %cmp50.i, label %for.body.i, label %cond.end.i

for.body.i:                                       ; preds = %entry, %for.body.i
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i, %for.body.i ], [ 0, %entry ]
  %call2.i = tail call %struct.sv* @Perl_newSViv(i64 %indvars.iv52.i) #4
  %sv_flags.i = getelementptr inbounds %struct.sv* %call2.i, i64 0, i32 2
  %25 = load i32* %sv_flags.i, align 4, !tbaa !3
  %or.i = or i32 %25, 8388608
  store i32 %or.i, i32* %sv_flags.i, align 4, !tbaa !3
  %26 = load %struct.hv** @my_cxt.0, align 8, !tbaa !0
  %arrayidx.i = getelementptr inbounds i8** %call1.i, i64 %indvars.iv52.i
  %27 = load i8** %arrayidx.i, align 8, !tbaa !0
  %call5.i = tail call i64 @strlen(i8* %27) #4
  %conv6.i = trunc i64 %call5.i to i32
  %call7.i = tail call %struct.sv** @Perl_hv_store(%struct.hv* %26, i8* %27, i32 %conv6.i, %struct.sv* %call2.i, i32 0) #4
  %indvars.iv.next53.i = add i64 %indvars.iv52.i, 1
  %28 = load i32* @PL_maxo, align 4, !tbaa !3
  %29 = trunc i64 %indvars.iv.next53.i to i32
  %cmp.i = icmp slt i32 %29, %28
  br i1 %cmp.i, label %for.body.i, label %cond.end.i

cond.end.i:                                       ; preds = %for.body.i, %entry
  %30 = load i64* @my_cxt.2, align 8, !tbaa !4
  %call2.i.i = tail call %struct.sv* @Perl_newSV(i64 %30) #4
  %sv_any.i.i = getelementptr inbounds %struct.sv* %call2.i.i, i64 0, i32 0
  %31 = load i8** %sv_any.i.i, align 8, !tbaa !0
  %xpv_pv.i.i = bitcast i8* %31 to i8**
  %32 = load i8** %xpv_pv.i.i, align 8, !tbaa !0
  %33 = load i64* @my_cxt.2, align 8, !tbaa !4
  %add.i.i = add nsw i64 %33, 1
  tail call void @llvm.memset.p0i8.i64(i8* %32, i8 0, i64 %add.i.i, i32 1, i1 false) #3
  %34 = load i64* @my_cxt.2, align 8, !tbaa !4
  %35 = load i8** %sv_any.i.i, align 8, !tbaa !0
  %xpv_cur.i.i = getelementptr inbounds i8* %35, i64 8
  %36 = bitcast i8* %xpv_cur.i.i to i64*
  store i64 %34, i64* %36, align 8, !tbaa !4
  %sv_flags.i.i = getelementptr inbounds %struct.sv* %call2.i.i, i64 0, i32 2
  %37 = load i32* %sv_flags.i.i, align 4, !tbaa !3
  %and.i.i = and i32 %37, 1223753727
  %or.i.i = or i32 %and.i.i, 67371008
  store i32 %or.i.i, i32* %sv_flags.i.i, align 4, !tbaa !3
  %call9.i = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call2.i.i) #4
  tail call fastcc void @put_op_bitspec(i8* getelementptr inbounds ([6 x i8]* @.str48, i64 0, i64 0), i64 0, %struct.sv* %call9.i) #4
  %38 = load i64* @my_cxt.2, align 8, !tbaa !4
  %call2.i39.i = tail call %struct.sv* @Perl_newSV(i64 %38) #4
  %sv_any.i40.i = getelementptr inbounds %struct.sv* %call2.i39.i, i64 0, i32 0
  %39 = load i8** %sv_any.i40.i, align 8, !tbaa !0
  %xpv_pv.i41.i = bitcast i8* %39 to i8**
  %40 = load i8** %xpv_pv.i41.i, align 8, !tbaa !0
  %41 = load i64* @my_cxt.2, align 8, !tbaa !4
  %add.i42.i = add nsw i64 %41, 1
  tail call void @llvm.memset.p0i8.i64(i8* %40, i8 0, i64 %add.i42.i, i32 1, i1 false) #3
  %42 = load i64* @my_cxt.2, align 8, !tbaa !4
  %43 = load i8** %sv_any.i40.i, align 8, !tbaa !0
  %xpv_cur.i43.i = getelementptr inbounds i8* %43, i64 8
  %44 = bitcast i8* %xpv_cur.i43.i to i64*
  store i64 %42, i64* %44, align 8, !tbaa !4
  %sv_flags.i44.i = getelementptr inbounds %struct.sv* %call2.i39.i, i64 0, i32 2
  %45 = load i32* %sv_flags.i44.i, align 4, !tbaa !3
  %and.i45.i = and i32 %45, 1223753727
  %or.i46.i = or i32 %and.i45.i, 67371008
  store i32 %or.i46.i, i32* %sv_flags.i44.i, align 4, !tbaa !3
  store %struct.sv* %call2.i39.i, %struct.sv** @my_cxt.1, align 8, !tbaa !0
  %46 = load i8** %sv_any.i40.i, align 8, !tbaa !0
  %xpv_cur.i = getelementptr inbounds i8* %46, i64 8
  %47 = bitcast i8* %xpv_cur.i to i64*
  %48 = load i64* %47, align 8, !tbaa !4
  %xpv_pv.i = bitcast i8* %46 to i8**
  %49 = load i8** %xpv_pv.i, align 8, !tbaa !0
  %phitmp54.i = add i64 %48, 4294967295
  %phitmp55.i = trunc i64 %phitmp54.i to i32
  %cmp1748.i = icmp sgt i32 %phitmp55.i, 0
  br i1 %cmp1748.i, label %while.body.lr.ph.i, label %while.end.i

while.body.lr.ph.i:                               ; preds = %cond.end.i
  %sext.i = shl i64 %phitmp54.i, 32
  %50 = ashr exact i64 %sext.i, 32
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.lr.ph.i
  %indvars.iv.i = phi i64 [ %50, %while.body.lr.ph.i ], [ %indvars.iv.next.i, %while.body.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1
  %arrayidx20.i = getelementptr inbounds i8* %49, i64 %indvars.iv.next.i
  store i8 -1, i8* %arrayidx20.i, align 1, !tbaa !1
  %51 = trunc i64 %indvars.iv.next.i to i32
  %cmp17.i = icmp sgt i32 %51, 0
  br i1 %cmp17.i, label %while.body.i, label %while.end.i

while.end.i:                                      ; preds = %while.body.i, %cond.end.i
  %52 = load i32* @PL_maxo, align 4, !tbaa !3
  %and21.i = and i32 %52, 7
  %tobool.i = icmp eq i32 %and21.i, 0
  br i1 %tobool.i, label %op_names_init.exit, label %cond.true22.i

cond.true22.i:                                    ; preds = %while.end.i
  %shl.i = shl i32 255, %and21.i
  %neg.i = xor i32 %shl.i, 255
  %phitmp.i = trunc i32 %neg.i to i8
  br label %op_names_init.exit

op_names_init.exit:                               ; preds = %while.end.i, %cond.true22.i
  %cond26.i = phi i8 [ %phitmp.i, %cond.true22.i ], [ -1, %while.end.i ]
  %sub28.i = add i64 %48, -1
  %arrayidx29.i = getelementptr inbounds i8* %49, i64 %sub28.i
  store i8 %cond26.i, i8* %arrayidx29.i, align 1, !tbaa !1
  %53 = load %struct.sv** @my_cxt.1, align 8, !tbaa !0
  tail call fastcc void @put_op_bitspec(i8* getelementptr inbounds ([5 x i8]* @.str49, i64 0, i64 0), i64 0, %struct.sv* %53) #4
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %54 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %54, i64 %idxprom
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx, align 8, !tbaa !0
  %55 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr37 = getelementptr inbounds %struct.sv** %55, i64 %idxprom
  store %struct.sv** %add.ptr37, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

; Function Attrs: optsize
declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #1

; Function Attrs: optsize
declare %struct.hv* @Perl_newHV() #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVsv(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSV(i64) #1

; Function Attrs: optsize
declare void @Perl_save_vptr(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

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

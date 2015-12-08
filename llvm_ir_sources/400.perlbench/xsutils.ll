; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/xsutils.c'
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

@.str = private unnamed_addr constant [57 x i8] c"../../SPEC/benchspec/CPU2006/400.perlbench/src/xsutils.c\00", align 1
@.str1 = private unnamed_addr constant [22 x i8] c"attributes::bootstrap\00", align 1
@PL_stack_sp = external global %struct.sv**
@PL_stack_base = external global %struct.sv**
@PL_markstack_ptr = external global i32*
@.str2 = private unnamed_addr constant [37 x i8] c"Usage: attributes::bootstrap $module\00", align 1
@.str3 = private unnamed_addr constant [27 x i8] c"attributes::_warn_reserved\00", align 1
@.str4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str5 = private unnamed_addr constant [26 x i8] c"attributes::_modify_attrs\00", align 1
@.str6 = private unnamed_addr constant [25 x i8] c"attributes::_guess_stash\00", align 1
@.str7 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str8 = private unnamed_addr constant [25 x i8] c"attributes::_fetch_attrs\00", align 1
@.str9 = private unnamed_addr constant [20 x i8] c"attributes::reftype\00", align 1
@.str10 = private unnamed_addr constant [57 x i8] c"Usage: attributes::_modify_attrs $reference, @attributes\00", align 1
@.str11 = private unnamed_addr constant [43 x i8] c"Usage: attributes::_fetch_attrs $reference\00", align 1
@PL_stack_max = external global %struct.sv**
@.str12 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str13 = private unnamed_addr constant [7 x i8] c"lvalue\00", align 1
@.str14 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str15 = private unnamed_addr constant [7 x i8] c"unique\00", align 1
@PL_op = external global %struct.op*
@PL_curpad = external global %struct.sv**
@.str16 = private unnamed_addr constant [43 x i8] c"Usage: attributes::_guess_stash $reference\00", align 1
@.str17 = private unnamed_addr constant [38 x i8] c"Usage: attributes::reftype $reference\00", align 1
@.str18 = private unnamed_addr constant [37 x i8] c"Usage: attributes::_warn_reserved ()\00", align 1
@PL_curcop = external global %struct.cop*
@PL_dowarn = external global i8
@PL_sv_yes = external global %struct.sv
@PL_sv_no = external global %struct.sv
@.str19 = private unnamed_addr constant [6 x i8] c"share\00", align 1
@.str20 = private unnamed_addr constant [31 x i8] c"A variable may not be unshared\00", align 1
@PL_sharehook = external global void (%struct.sv*)*
@.str21 = private unnamed_addr constant [6 x i8] c"uniqu\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Perl_boot_core_xsutils() #0 {
entry:
  %call = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([22 x i8]* @.str1, i64 0, i64 0), void (%struct.cv*)* @XS_attributes_bootstrap, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0)) #4
  ret void
}

; Function Attrs: optsize
declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_attributes_bootstrap(%struct.cv* nocapture %cv) #0 {
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
  %sub.ptr.div420 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div420 to i32
  %cmp = icmp sgt i32 %conv5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([37 x i8]* @.str2, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([27 x i8]* @.str3, i64 0, i64 0), void (%struct.cv*)* @XS_attributes__warn_reserved, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0)) #4
  %4 = bitcast %struct.cv* %call to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %4, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0)) #4
  %call7 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([26 x i8]* @.str5, i64 0, i64 0), void (%struct.cv*)* @XS_attributes__modify_attrs, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0)) #4
  %call8 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([25 x i8]* @.str6, i64 0, i64 0), void (%struct.cv*)* @XS_attributes__guess_stash, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0)) #4
  %5 = bitcast %struct.cv* %call8 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %5, i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0)) #4
  %call9 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([25 x i8]* @.str8, i64 0, i64 0), void (%struct.cv*)* @XS_attributes__fetch_attrs, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0)) #4
  %6 = bitcast %struct.cv* %call9 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %6, i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0)) #4
  %call10 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([20 x i8]* @.str9, i64 0, i64 0), void (%struct.cv*)* @XS_attributes_reftype, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0)) #4
  %7 = bitcast %struct.cv* %call10 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %7, i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0)) #4
  %8 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sext = add i64 %add.ptr.idx, 4294967296
  %idx.ext11 = ashr exact i64 %sext, 32
  %add.ptr12.sum = add i64 %idx.ext11, -1
  %add.ptr13 = getelementptr inbounds %struct.sv** %8, i64 %add.ptr12.sum
  store %struct.sv** %add.ptr13, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #1

; Function Attrs: optsize
declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_attributes__warn_reserved(%struct.cv* nocapture %cv) #0 {
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
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([37 x i8]* @.str18, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast7 = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub9 = sub i64 %sub.ptr.lhs.cast7, %sub.ptr.lhs.cast1
  %cmp11 = icmp slt i64 %sub.ptr.sub9, 8
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  %call = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %0, i32 1) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end
  %6 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %6, i64 0, i32 14
  %7 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp15 = icmp eq %struct.sv* %7, null
  br i1 %cmp15, label %lor.rhs, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end14
  %8 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings17 = getelementptr inbounds %struct.cop* %8, i64 0, i32 14
  %9 = load %struct.sv** %cop_warnings17, align 8, !tbaa !0
  %cmp18 = icmp eq %struct.sv* %9, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp18, label %lor.rhs, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %land.lhs.true
  %10 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings21 = getelementptr inbounds %struct.cop* %10, i64 0, i32 14
  %11 = load %struct.sv** %cop_warnings21, align 8, !tbaa !0
  %cmp22 = icmp eq %struct.sv* %11, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp22, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true20
  %12 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings24 = getelementptr inbounds %struct.cop* %12, i64 0, i32 14
  %13 = load %struct.sv** %cop_warnings24, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.sv* %13, i64 0, i32 0
  %14 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %14 to i8**
  %15 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %15, i64 9
  %16 = load i8* %arrayidx, align 1, !tbaa !1
  %and = and i8 %16, 4
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false, %land.lhs.true, %if.end14
  %17 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings26 = getelementptr inbounds %struct.cop* %17, i64 0, i32 14
  %18 = load %struct.sv** %cop_warnings26, align 8, !tbaa !0
  %cmp27 = icmp eq %struct.sv* %18, null
  br i1 %cmp27, label %land.rhs, label %lor.end

land.rhs:                                         ; preds = %lor.rhs
  %19 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and30 = and i8 %19, 1
  %tobool31 = icmp ne i8 %and30, 0
  %phitmp = select i1 %tobool31, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  br label %lor.end

lor.end:                                          ; preds = %lor.lhs.false, %lor.rhs, %land.rhs, %land.lhs.true20
  %20 = phi %struct.sv* [ @PL_sv_yes, %lor.lhs.false ], [ @PL_sv_yes, %land.lhs.true20 ], [ @PL_sv_no, %lor.rhs ], [ %phitmp, %land.rhs ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %21 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx33 = getelementptr inbounds %struct.sv** %21, i64 %idxprom
  store %struct.sv* %20, %struct.sv** %arrayidx33, align 8, !tbaa !0
  %22 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr35 = getelementptr inbounds %struct.sv** %22, i64 %idxprom
  store %struct.sv** %add.ptr35, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_attributes__modify_attrs(%struct.cv* nocapture %cv) #0 {
entry:
  %len.i = alloca i64, align 8
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
  %sub.ptr.div443 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div443 to i32
  %cmp = icmp slt i32 %conv5, 1
  br i1 %cmp, label %usage, label %if.end

usage:                                            ; preds = %if.end, %entry
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([57 x i8]* @.str10, i64 0, i64 0)) #4
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %usage, %entry
  %4 = phi %struct.sv** [ %.pre, %usage ], [ %1, %entry ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %4, i64 %idxprom
  %5 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %6 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %6, 118423552
  %tobool = icmp eq i32 %and, 0
  %and9 = and i32 %6, 524288
  %tobool10 = icmp eq i32 %and9, 0
  %or.cond = or i1 %tobool, %tobool10
  br i1 %or.cond, label %usage, label %if.end12

if.end12:                                         ; preds = %if.end
  %cmp13 = icmp sgt i32 %conv5, 1
  br i1 %cmp13, label %if.then15, label %if.end27

if.then15:                                        ; preds = %if.end12
  %sv_any = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %7 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %7 to %struct.sv**
  %8 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sub = add nsw i32 %conv5, -1
  %9 = bitcast i64* %len.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #3
  %tobool132.i = icmp eq i32 %sub, 0
  br i1 %tobool132.i, label %modify_SV_attributes.exit, label %land.rhs.lr.ph.i

land.rhs.lr.ph.i:                                 ; preds = %if.then15
  %sext44 = add i64 %add.ptr.idx, 8589934592
  %idxprom20 = ashr exact i64 %sext44, 32
  %arrayidx21 = getelementptr inbounds %struct.sv** %4, i64 %idxprom20
  %sv_flags8.i = getelementptr inbounds %struct.sv* %8, i64 0, i32 2
  %sv_any19.i = bitcast %struct.sv* %8 to %struct.xpvcv**
  %sv_any91.i = getelementptr inbounds %struct.sv* %8, i64 0, i32 0
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i, %land.rhs.lr.ph.i
  %nret.0136.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %nret.1.i, %for.inc.i ]
  %retlist.addr.0135.i = phi %struct.sv** [ %arrayidx, %land.rhs.lr.ph.i ], [ %retlist.addr.1.i, %for.inc.i ]
  %attrlist.addr.0134.i = phi %struct.sv** [ %arrayidx21, %land.rhs.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i ]
  %numattrs.addr.0133.i = phi i32 [ %sub, %land.rhs.lr.ph.i ], [ %dec105.i, %for.inc.i ]
  %incdec.ptr.i = getelementptr inbounds %struct.sv** %attrlist.addr.0134.i, i64 1
  %10 = load %struct.sv** %attrlist.addr.0134.i, align 8, !tbaa !0
  %tobool1.i = icmp eq %struct.sv* %10, null
  br i1 %tobool1.i, label %modify_SV_attributes.exit.loopexit, label %for.body.i

for.body.i:                                       ; preds = %land.rhs.i
  %sv_flags.i = getelementptr inbounds %struct.sv* %10, i64 0, i32 2
  %11 = load i32* %sv_flags.i, align 4, !tbaa !3
  %and.i = and i32 %11, 262144
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %for.body.i
  %sv_any.i = getelementptr inbounds %struct.sv* %10, i64 0, i32 0
  %12 = load i8** %sv_any.i, align 8, !tbaa !0
  %xpv_cur.i = getelementptr inbounds i8* %12, i64 8
  %13 = bitcast i8* %xpv_cur.i to i64*
  %14 = load i64* %13, align 8, !tbaa !4
  store i64 %14, i64* %len.i, align 8, !tbaa !4
  %xpv_pv.i = bitcast i8* %12 to i8**
  %15 = load i8** %xpv_pv.i, align 8, !tbaa !0
  br label %cond.end.i

cond.false.i:                                     ; preds = %for.body.i
  %call.i = call i8* @Perl_sv_2pv_flags(%struct.sv* %10, i64* %len.i, i32 2) #4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i8* [ %15, %cond.true.i ], [ %call.i, %cond.false.i ]
  %16 = load i8* %cond.i, align 1, !tbaa !1
  %cmp3.i = icmp eq i8 %16, 45
  br i1 %cmp3.i, label %if.then.i, label %cond.end.if.end_crit_edge.i

cond.end.if.end_crit_edge.i:                      ; preds = %cond.end.i
  %.pre.i = load i64* %len.i, align 8, !tbaa !4
  br label %if.end.i

if.then.i:                                        ; preds = %cond.end.i
  %incdec.ptr7.i = getelementptr inbounds i8* %cond.i, i64 1
  %17 = load i64* %len.i, align 8, !tbaa !4
  %dec.i = add i64 %17, -1
  store i64 %dec.i, i64* %len.i, align 8, !tbaa !4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %cond.end.if.end_crit_edge.i
  %18 = phi i64 [ %dec.i, %if.then.i ], [ %.pre.i, %cond.end.if.end_crit_edge.i ]
  %name.0.i = phi i8* [ %incdec.ptr7.i, %if.then.i ], [ %cond.i, %cond.end.if.end_crit_edge.i ]
  %19 = load i32* %sv_flags8.i, align 4, !tbaa !3
  %and9.i = and i32 %19, 255
  %cond106.i = icmp eq i32 %and9.i, 12
  %conv10.i = trunc i64 %18 to i32
  %cond108.i = icmp eq i32 %conv10.i, 6
  br i1 %cond106.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.end.i
  br i1 %cond108.i, label %sw.bb11.i, label %sw.epilog103.i

sw.bb11.i:                                        ; preds = %sw.bb.i
  %arrayidx.i = getelementptr inbounds i8* %name.0.i, i64 3
  %20 = load i8* %arrayidx.i, align 1, !tbaa !1
  %conv12.i = sext i8 %20 to i32
  switch i32 %conv12.i, label %sw.epilog103.i [
    i32 108, label %sw.bb13.i
    i32 107, label %sw.bb29.i
    i32 104, label %sw.bb48.i
  ]

sw.bb13.i:                                        ; preds = %sw.bb11.i
  %call14.i = call i32 @memcmp(i8* %name.0.i, i8* getelementptr inbounds ([7 x i8]* @.str13, i64 0, i64 0), i64 6) #4
  %tobool15.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.i, label %if.then16.i, label %sw.epilog103.i

if.then16.i:                                      ; preds = %sw.bb13.i
  %21 = load %struct.xpvcv** %sv_any19.i, align 8, !tbaa !0
  %xcv_flags.i = getelementptr inbounds %struct.xpvcv* %21, i64 0, i32 17
  %22 = load i16* %xcv_flags.i, align 2, !tbaa !5
  br i1 %cmp3.i, label %if.then18.i, label %if.else.i

if.then18.i:                                      ; preds = %if.then16.i
  %and21.i = and i16 %22, -257
  store i16 %and21.i, i16* %xcv_flags.i, align 2, !tbaa !5
  br label %for.inc.i

if.else.i:                                        ; preds = %if.then16.i
  %or.i = or i16 %22, 256
  store i16 %or.i, i16* %xcv_flags.i, align 2, !tbaa !5
  br label %for.inc.i

sw.bb29.i:                                        ; preds = %sw.bb11.i
  %call30.i = call i32 @memcmp(i8* %name.0.i, i8* getelementptr inbounds ([7 x i8]* @.str12, i64 0, i64 0), i64 6) #4
  %tobool31.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.i, label %if.then32.i, label %sw.epilog103.i

if.then32.i:                                      ; preds = %sw.bb29.i
  %23 = load %struct.xpvcv** %sv_any19.i, align 8, !tbaa !0
  %xcv_flags36.i = getelementptr inbounds %struct.xpvcv* %23, i64 0, i32 17
  %24 = load i16* %xcv_flags36.i, align 2, !tbaa !5
  br i1 %cmp3.i, label %if.then34.i, label %if.else40.i

if.then34.i:                                      ; preds = %if.then32.i
  %and38.i = and i16 %24, -129
  store i16 %and38.i, i16* %xcv_flags36.i, align 2, !tbaa !5
  br label %for.inc.i

if.else40.i:                                      ; preds = %if.then32.i
  %or44.i = or i16 %24, 128
  store i16 %or44.i, i16* %xcv_flags36.i, align 2, !tbaa !5
  br label %for.inc.i

sw.bb48.i:                                        ; preds = %sw.bb11.i
  %call49.i = call i32 @memcmp(i8* %name.0.i, i8* getelementptr inbounds ([7 x i8]* @.str14, i64 0, i64 0), i64 6) #4
  %tobool50.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.i, label %if.then51.i, label %sw.epilog103.i

if.then51.i:                                      ; preds = %sw.bb48.i
  %25 = load %struct.xpvcv** %sv_any19.i, align 8, !tbaa !0
  %xcv_flags55.i = getelementptr inbounds %struct.xpvcv* %25, i64 0, i32 17
  %26 = load i16* %xcv_flags55.i, align 2, !tbaa !5
  br i1 %cmp3.i, label %if.then53.i, label %if.else59.i

if.then53.i:                                      ; preds = %if.then51.i
  %and57.i = and i16 %26, -65
  store i16 %and57.i, i16* %xcv_flags55.i, align 2, !tbaa !5
  br label %for.inc.i

if.else59.i:                                      ; preds = %if.then51.i
  %or63.i = or i16 %26, 64
  store i16 %or63.i, i16* %xcv_flags55.i, align 2, !tbaa !5
  br label %for.inc.i

sw.default.i:                                     ; preds = %if.end.i
  br i1 %cond108.i, label %sw.bb69.i, label %sw.epilog103.i

sw.bb69.i:                                        ; preds = %sw.default.i
  %arrayidx70.i = getelementptr inbounds i8* %name.0.i, i64 5
  %27 = load i8* %arrayidx70.i, align 1, !tbaa !1
  %conv71.i = sext i8 %27 to i32
  switch i32 %conv71.i, label %sw.epilog103.i [
    i32 100, label %sw.bb72.i
    i32 101, label %sw.bb80.i
  ]

sw.bb72.i:                                        ; preds = %sw.bb69.i
  %call73.i = call i32 @memcmp(i8* %name.0.i, i8* getelementptr inbounds ([6 x i8]* @.str19, i64 0, i64 0), i64 5) #4
  %tobool74.i = icmp eq i32 %call73.i, 0
  br i1 %tobool74.i, label %if.then75.i, label %sw.epilog103.i

if.then75.i:                                      ; preds = %sw.bb72.i
  br i1 %cmp3.i, label %if.then77.i, label %if.end78.i

if.then77.i:                                      ; preds = %if.then75.i
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([31 x i8]* @.str20, i64 0, i64 0)) #4
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.then77.i, %if.then75.i
  %28 = load void (%struct.sv*)** @PL_sharehook, align 8, !tbaa !0
  call void %28(%struct.sv* %8) #4
  br label %for.inc.i

sw.bb80.i:                                        ; preds = %sw.bb69.i
  %call81.i = call i32 @memcmp(i8* %name.0.i, i8* getelementptr inbounds ([6 x i8]* @.str21, i64 0, i64 0), i64 5) #4
  %tobool82.i = icmp eq i32 %call81.i, 0
  br i1 %tobool82.i, label %if.then83.i, label %sw.epilog103.i

if.then83.i:                                      ; preds = %sw.bb80.i
  %cmp86.i = icmp eq i32 %and9.i, 13
  br i1 %cmp86.i, label %if.then88.i, label %for.inc.i

if.then88.i:                                      ; preds = %if.then83.i
  %29 = load i8** %sv_any91.i, align 8, !tbaa !0
  %xgv_gp.i = getelementptr inbounds i8* %29, i64 56
  %30 = bitcast i8* %xgv_gp.i to %struct.gp**
  %31 = load %struct.gp** %30, align 8, !tbaa !0
  %gp_flags.i = getelementptr inbounds %struct.gp* %31, i64 0, i32 9
  %32 = load i32* %gp_flags.i, align 4, !tbaa !3
  br i1 %cmp3.i, label %if.then90.i, label %if.else93.i

if.then90.i:                                      ; preds = %if.then88.i
  %and92.i = and i32 %32, -2
  store i32 %and92.i, i32* %gp_flags.i, align 4, !tbaa !3
  br label %for.inc.i

if.else93.i:                                      ; preds = %if.then88.i
  %or97.i = or i32 %32, 1
  store i32 %or97.i, i32* %gp_flags.i, align 4, !tbaa !3
  br label %for.inc.i

sw.epilog103.i:                                   ; preds = %sw.bb80.i, %sw.bb72.i, %sw.bb69.i, %sw.default.i, %sw.bb48.i, %sw.bb29.i, %sw.bb13.i, %sw.bb11.i, %sw.bb.i
  %incdec.ptr104.i = getelementptr inbounds %struct.sv** %retlist.addr.0135.i, i64 1
  store %struct.sv* %10, %struct.sv** %retlist.addr.0135.i, align 8, !tbaa !0
  %inc.i = add nsw i32 %nret.0136.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.epilog103.i, %if.else93.i, %if.then90.i, %if.then83.i, %if.end78.i, %if.else59.i, %if.then53.i, %if.else40.i, %if.then34.i, %if.else.i, %if.then18.i
  %retlist.addr.1.i = phi %struct.sv** [ %incdec.ptr104.i, %sw.epilog103.i ], [ %retlist.addr.0135.i, %if.then53.i ], [ %retlist.addr.0135.i, %if.else59.i ], [ %retlist.addr.0135.i, %if.then34.i ], [ %retlist.addr.0135.i, %if.else40.i ], [ %retlist.addr.0135.i, %if.then18.i ], [ %retlist.addr.0135.i, %if.else.i ], [ %retlist.addr.0135.i, %if.then90.i ], [ %retlist.addr.0135.i, %if.else93.i ], [ %retlist.addr.0135.i, %if.then83.i ], [ %retlist.addr.0135.i, %if.end78.i ]
  %nret.1.i = phi i32 [ %inc.i, %sw.epilog103.i ], [ %nret.0136.i, %if.then53.i ], [ %nret.0136.i, %if.else59.i ], [ %nret.0136.i, %if.then34.i ], [ %nret.0136.i, %if.else40.i ], [ %nret.0136.i, %if.then18.i ], [ %nret.0136.i, %if.else.i ], [ %nret.0136.i, %if.then90.i ], [ %nret.0136.i, %if.else93.i ], [ %nret.0136.i, %if.then83.i ], [ %nret.0136.i, %if.end78.i ]
  %dec105.i = add nsw i32 %numattrs.addr.0133.i, -1
  %tobool.i = icmp eq i32 %dec105.i, 0
  br i1 %tobool.i, label %modify_SV_attributes.exit.loopexit, label %land.rhs.i

modify_SV_attributes.exit.loopexit:               ; preds = %for.inc.i, %land.rhs.i
  %nret.0.lcssa.i.ph = phi i32 [ %nret.0136.i, %land.rhs.i ], [ %nret.1.i, %for.inc.i ]
  %.pre45 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %modify_SV_attributes.exit

modify_SV_attributes.exit:                        ; preds = %modify_SV_attributes.exit.loopexit, %if.then15
  %33 = phi %struct.sv** [ %4, %if.then15 ], [ %.pre45, %modify_SV_attributes.exit.loopexit ]
  %nret.0.lcssa.i = phi i32 [ 0, %if.then15 ], [ %nret.0.lcssa.i.ph, %modify_SV_attributes.exit.loopexit ]
  call void @llvm.lifetime.end(i64 8, i8* %9) #3
  %conv22 = sext i32 %nret.0.lcssa.i to i64
  %sub25 = add i64 %idxprom, -1
  %add.ptr24.sum = add i64 %sub25, %conv22
  %add.ptr26 = getelementptr inbounds %struct.sv** %33, i64 %add.ptr24.sum
  br label %return

if.end27:                                         ; preds = %if.end12
  %arrayidx.sum = add i64 %idxprom, -1
  %add.ptr32 = getelementptr inbounds %struct.sv** %4, i64 %arrayidx.sum
  br label %return

return:                                           ; preds = %if.end27, %modify_SV_attributes.exit
  %storemerge = phi %struct.sv** [ %add.ptr32, %if.end27 ], [ %add.ptr26, %modify_SV_attributes.exit ]
  store %struct.sv** %storemerge, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_attributes__guess_stash(%struct.cv* nocapture %cv) #0 {
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
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %4, i64 0, i32 7
  %5 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %5, 32
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %op_targ = getelementptr inbounds %struct.op* %4, i64 0, i32 3
  %6 = load i64* %op_targ, align 8, !tbaa !4
  %7 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %7, i64 %6
  %8 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = tail call %struct.sv* @Perl_sv_newmortal() #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %8, %cond.true ], [ %call, %cond.false ]
  %9 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %9, 8
  br i1 %cmp, label %if.end, label %usage

usage:                                            ; preds = %if.end, %cond.end
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([43 x i8]* @.str16, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %cond.end, %usage
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %10 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv** %arrayidx9, align 8, !tbaa !0
  store %struct.sv* %cond, %struct.sv** %arrayidx9, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %11, i64 0, i32 2
  %12 = load i32* %sv_flags, align 4, !tbaa !3
  %and13 = and i32 %12, 118423552
  %tobool14 = icmp eq i32 %and13, 0
  %and16 = and i32 %12, 524288
  %tobool17 = icmp eq i32 %and16, 0
  %or.cond = or i1 %tobool14, %tobool17
  br i1 %or.cond, label %usage, label %if.end19

if.end19:                                         ; preds = %if.end
  %sv_any = getelementptr inbounds %struct.sv* %11, i64 0, i32 0
  %13 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %13 to %struct.sv**
  %14 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_flags20 = getelementptr inbounds %struct.sv* %14, i64 0, i32 2
  %15 = load i32* %sv_flags20, align 4, !tbaa !3
  %and21 = and i32 %15, 4096
  %tobool22 = icmp eq i32 %and21, 0
  br i1 %tobool22, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end19
  %sv_any24 = getelementptr inbounds %struct.sv* %14, i64 0, i32 0
  %16 = load i8** %sv_any24, align 8, !tbaa !0
  %xmg_stash = getelementptr inbounds i8* %16, i64 48
  %17 = bitcast i8* %xmg_stash to %struct.hv**
  %18 = load %struct.hv** %17, align 8, !tbaa !0
  %sv_any25 = getelementptr inbounds %struct.hv* %18, i64 0, i32 0
  %19 = load %struct.xpvhv** %sv_any25, align 8, !tbaa !0
  %xhv_name = getelementptr inbounds %struct.xpvhv* %19, i64 0, i32 10
  %20 = load i8** %xhv_name, align 8, !tbaa !0
  tail call void @Perl_sv_setpv(%struct.sv* %cond, i8* %20) #4
  br label %if.end106

if.else:                                          ; preds = %if.end19
  %and27 = and i32 %15, 255
  switch i32 %and27, label %if.end106 [
    i32 12, label %sw.bb
    i32 7, label %sw.bb55
    i32 13, label %sw.bb69
  ]

sw.bb:                                            ; preds = %if.else
  %sv_any28 = getelementptr inbounds %struct.sv* %14, i64 0, i32 0
  %21 = load i8** %sv_any28, align 8, !tbaa !0
  %xcv_gv = getelementptr inbounds i8* %21, i64 96
  %22 = bitcast i8* %xcv_gv to %struct.gv**
  %23 = load %struct.gv** %22, align 8, !tbaa !0
  %tobool29 = icmp eq %struct.gv* %23, null
  br i1 %tobool29, label %sw.epilog, label %land.lhs.true30

land.lhs.true30:                                  ; preds = %sw.bb
  %sv_flags33 = getelementptr inbounds %struct.gv* %23, i64 0, i32 2
  %24 = load i32* %sv_flags33, align 4, !tbaa !3
  %and34 = and i32 %24, 255
  %cmp35 = icmp eq i32 %and34, 13
  br i1 %cmp35, label %land.lhs.true37, label %sw.epilog

land.lhs.true37:                                  ; preds = %land.lhs.true30
  %sv_any40 = getelementptr inbounds %struct.gv* %23, i64 0, i32 0
  %25 = load %struct.xpvgv** %sv_any40, align 8, !tbaa !0
  %xgv_stash = getelementptr inbounds %struct.xpvgv* %25, i64 0, i32 10
  %26 = load %struct.hv** %xgv_stash, align 8, !tbaa !0
  %tobool41 = icmp eq %struct.hv* %26, null
  br i1 %tobool41, label %sw.epilog, label %if.then102

sw.bb55:                                          ; preds = %if.else
  %27 = and i32 %15, 1081344
  %28 = icmp eq i32 %27, 1081344
  br i1 %28, label %cond.true63, label %if.end106

cond.true63:                                      ; preds = %sw.bb55
  %call64 = tail call %struct.magic* @Perl_mg_find(%struct.sv* %14, i32 42) #4
  %tobool65 = icmp eq %struct.magic* %call64, null
  br i1 %tobool65, label %if.end106, label %sw.bb69

sw.bb69:                                          ; preds = %cond.true63, %if.else
  %sv_any70 = getelementptr inbounds %struct.sv* %14, i64 0, i32 0
  %29 = load i8** %sv_any70, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds i8* %29, i64 56
  %30 = bitcast i8* %xgv_gp to %struct.gp**
  %31 = load %struct.gp** %30, align 8, !tbaa !0
  %tobool71 = icmp eq %struct.gp* %31, null
  br i1 %tobool71, label %if.end106, label %land.lhs.true72

land.lhs.true72:                                  ; preds = %sw.bb69
  %32 = bitcast %struct.sv* %14 to %struct.gv*
  %xgv_gp74 = getelementptr inbounds i8* %29, i64 56
  %33 = bitcast i8* %xgv_gp74 to %struct.gp**
  %34 = load %struct.gp** %33, align 8, !tbaa !0
  %gp_egv = getelementptr inbounds %struct.gp* %34, i64 0, i32 6
  %35 = load %struct.gv** %gp_egv, align 8, !tbaa !0
  %tobool75 = icmp eq %struct.gv* %35, null
  %.145 = select i1 %tobool75, %struct.gv* %32, %struct.gv* %35
  %sv_any83 = getelementptr inbounds %struct.gv* %.145, i64 0, i32 0
  %36 = load %struct.xpvgv** %sv_any83, align 8, !tbaa !0
  %xgv_stash84 = getelementptr inbounds %struct.xpvgv* %36, i64 0, i32 10
  %37 = load %struct.hv** %xgv_stash84, align 8, !tbaa !0
  %tobool85 = icmp eq %struct.hv* %37, null
  br i1 %tobool85, label %if.end106, label %if.then102

sw.epilog:                                        ; preds = %land.lhs.true30, %sw.bb, %land.lhs.true37
  %xcv_stash = getelementptr inbounds i8* %21, i64 56
  %38 = bitcast i8* %xcv_stash to %struct.hv**
  %39 = load %struct.hv** %38, align 8, !tbaa !0
  %tobool101 = icmp eq %struct.hv* %39, null
  br i1 %tobool101, label %if.end106, label %if.then102

if.then102:                                       ; preds = %land.lhs.true72, %land.lhs.true37, %sw.epilog
  %stash.0151 = phi %struct.hv* [ %39, %sw.epilog ], [ %26, %land.lhs.true37 ], [ %37, %land.lhs.true72 ]
  %sv_any103 = getelementptr inbounds %struct.hv* %stash.0151, i64 0, i32 0
  %40 = load %struct.xpvhv** %sv_any103, align 8, !tbaa !0
  %xhv_name104 = getelementptr inbounds %struct.xpvhv* %40, i64 0, i32 10
  %41 = load i8** %xhv_name104, align 8, !tbaa !0
  tail call void @Perl_sv_setpv(%struct.sv* %cond, i8* %41) #4
  br label %if.end106

if.end106:                                        ; preds = %sw.bb55, %cond.true63, %sw.bb69, %land.lhs.true72, %if.else, %sw.epilog, %if.then102, %if.then23
  %sv_flags107 = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %42 = load i32* %sv_flags107, align 4, !tbaa !3
  %and108 = and i32 %42, 16384
  %tobool109 = icmp eq i32 %and108, 0
  br i1 %tobool109, label %if.end112, label %if.then110

if.then110:                                       ; preds = %if.end106
  %call111 = tail call i32 @Perl_mg_set(%struct.sv* %cond) #4
  br label %if.end112

if.end112:                                        ; preds = %if.end106, %if.then110
  %43 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr114 = getelementptr inbounds %struct.sv** %43, i64 %idxprom
  store %struct.sv** %add.ptr114, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_attributes__fetch_attrs(%struct.cv* nocapture %cv) #0 {
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
  br i1 %cmp, label %if.end, label %usage

usage:                                            ; preds = %if.end, %entry
  %sp.0 = phi %struct.sv** [ %0, %entry ], [ %add.ptr9, %if.end ]
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([43 x i8]* @.str11, i64 0, i64 0)) #4
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %usage
  %5 = phi %struct.sv** [ %.pre, %usage ], [ %1, %entry ]
  %sp.1 = phi %struct.sv** [ %sp.0, %usage ], [ %0, %entry ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %sext151 = shl i64 %sub.ptr.sub3, 29
  %idx.ext8 = ashr exact i64 %sext151, 32
  %idx.neg = sub i64 0, %idx.ext8
  %add.ptr9 = getelementptr inbounds %struct.sv** %sp.1, i64 %idx.neg
  %sv_flags = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %7, 118423552
  %tobool = icmp eq i32 %and, 0
  %and11 = and i32 %7, 524288
  %tobool12 = icmp eq i32 %and11, 0
  %or.cond = or i1 %tobool, %tobool12
  br i1 %or.cond, label %usage, label %if.end14

if.end14:                                         ; preds = %if.end
  %sv_any = getelementptr inbounds %struct.sv* %6, i64 0, i32 0
  %8 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %8 to %struct.sv**
  %9 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_flags15 = getelementptr inbounds %struct.sv* %9, i64 0, i32 2
  %10 = load i32* %sv_flags15, align 4, !tbaa !3
  %and16 = and i32 %10, 255
  switch i32 %and16, label %sw.epilog [
    i32 12, label %sw.bb
    i32 13, label %sw.bb92
  ]

sw.bb:                                            ; preds = %if.end14
  %sv_any17 = bitcast %struct.sv* %9 to %struct.xpvcv**
  %11 = load %struct.xpvcv** %sv_any17, align 8, !tbaa !0
  %xcv_flags = getelementptr inbounds %struct.xpvcv* %11, i64 0, i32 17
  %12 = load i16* %xcv_flags, align 2, !tbaa !5
  %conv18 = zext i16 %12 to i32
  %and19 = and i32 %conv18, 128
  %tobool20 = icmp eq i32 %and19, 0
  br i1 %tobool20, label %if.end33, label %if.then21

if.then21:                                        ; preds = %sw.bb
  %13 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast22 = ptrtoint %struct.sv** %13 to i64
  %sub.ptr.rhs.cast23 = ptrtoint %struct.sv** %add.ptr9 to i64
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast23
  %cmp26 = icmp slt i64 %sub.ptr.sub24, 8
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then21
  %call = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %add.ptr9, %struct.sv** %add.ptr9, i32 1) #4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.then21
  %sp.2 = phi %struct.sv** [ %call, %if.then28 ], [ %add.ptr9, %if.then21 ]
  %call30 = tail call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([7 x i8]* @.str12, i64 0, i64 0), i64 6) #4
  %call31 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call30) #4
  %incdec.ptr32 = getelementptr inbounds %struct.sv** %sp.2, i64 1
  store %struct.sv* %call31, %struct.sv** %incdec.ptr32, align 8, !tbaa !0
  br label %if.end33

if.end33:                                         ; preds = %sw.bb, %if.end29
  %sp.3 = phi %struct.sv** [ %incdec.ptr32, %if.end29 ], [ %add.ptr9, %sw.bb ]
  %and35 = and i32 %conv18, 256
  %tobool36 = icmp eq i32 %and35, 0
  br i1 %tobool36, label %if.end50, label %if.then37

if.then37:                                        ; preds = %if.end33
  %14 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast38 = ptrtoint %struct.sv** %14 to i64
  %sub.ptr.rhs.cast39 = ptrtoint %struct.sv** %sp.3 to i64
  %sub.ptr.sub40 = sub i64 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39
  %cmp42 = icmp slt i64 %sub.ptr.sub40, 8
  br i1 %cmp42, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.then37
  %call45 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.3, %struct.sv** %sp.3, i32 1) #4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.then37
  %sp.4 = phi %struct.sv** [ %call45, %if.then44 ], [ %sp.3, %if.then37 ]
  %call47 = tail call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([7 x i8]* @.str13, i64 0, i64 0), i64 6) #4
  %call48 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call47) #4
  %incdec.ptr49 = getelementptr inbounds %struct.sv** %sp.4, i64 1
  store %struct.sv* %call48, %struct.sv** %incdec.ptr49, align 8, !tbaa !0
  br label %if.end50

if.end50:                                         ; preds = %if.end33, %if.end46
  %sp.5 = phi %struct.sv** [ %incdec.ptr49, %if.end46 ], [ %sp.3, %if.end33 ]
  %and52 = and i32 %conv18, 64
  %tobool53 = icmp eq i32 %and52, 0
  br i1 %tobool53, label %if.end67, label %if.then54

if.then54:                                        ; preds = %if.end50
  %15 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast55 = ptrtoint %struct.sv** %15 to i64
  %sub.ptr.rhs.cast56 = ptrtoint %struct.sv** %sp.5 to i64
  %sub.ptr.sub57 = sub i64 %sub.ptr.lhs.cast55, %sub.ptr.rhs.cast56
  %cmp59 = icmp slt i64 %sub.ptr.sub57, 8
  br i1 %cmp59, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.then54
  %call62 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.5, %struct.sv** %sp.5, i32 1) #4
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.then54
  %sp.6 = phi %struct.sv** [ %call62, %if.then61 ], [ %sp.5, %if.then54 ]
  %call64 = tail call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([7 x i8]* @.str14, i64 0, i64 0), i64 6) #4
  %call65 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call64) #4
  %incdec.ptr66 = getelementptr inbounds %struct.sv** %sp.6, i64 1
  store %struct.sv* %call65, %struct.sv** %incdec.ptr66, align 8, !tbaa !0
  br label %if.end67

if.end67:                                         ; preds = %if.end50, %if.end63
  %sp.7 = phi %struct.sv** [ %incdec.ptr66, %if.end63 ], [ %sp.5, %if.end50 ]
  %16 = load %struct.xpvcv** %sv_any17, align 8, !tbaa !0
  %xcv_gv = getelementptr inbounds %struct.xpvcv* %16, i64 0, i32 12
  %17 = load %struct.gv** %xcv_gv, align 8, !tbaa !0
  %sv_any69 = getelementptr inbounds %struct.gv* %17, i64 0, i32 0
  %18 = load %struct.xpvgv** %sv_any69, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %18, i64 0, i32 7
  %19 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %tobool70 = icmp eq %struct.gp* %19, null
  br i1 %tobool70, label %sw.epilog, label %land.lhs.true71

land.lhs.true71:                                  ; preds = %if.end67
  %gp_flags = getelementptr inbounds %struct.gp* %19, i64 0, i32 9
  %20 = load i32* %gp_flags, align 4, !tbaa !3
  %and76 = and i32 %20, 1
  %tobool77 = icmp eq i32 %and76, 0
  br i1 %tobool77, label %sw.epilog, label %if.then78

if.then78:                                        ; preds = %land.lhs.true71
  %21 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast79 = ptrtoint %struct.sv** %21 to i64
  %sub.ptr.rhs.cast80 = ptrtoint %struct.sv** %sp.7 to i64
  %sub.ptr.sub81 = sub i64 %sub.ptr.lhs.cast79, %sub.ptr.rhs.cast80
  %cmp83 = icmp slt i64 %sub.ptr.sub81, 8
  br i1 %cmp83, label %if.then85, label %if.end87

if.then85:                                        ; preds = %if.then78
  %call86 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.7, %struct.sv** %sp.7, i32 1) #4
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %if.then78
  %sp.8 = phi %struct.sv** [ %call86, %if.then85 ], [ %sp.7, %if.then78 ]
  %call88 = tail call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i64 6) #4
  %call89 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call88) #4
  %incdec.ptr90 = getelementptr inbounds %struct.sv** %sp.8, i64 1
  store %struct.sv* %call89, %struct.sv** %incdec.ptr90, align 8, !tbaa !0
  br label %sw.epilog

sw.bb92:                                          ; preds = %if.end14
  %sv_any93 = getelementptr inbounds %struct.sv* %9, i64 0, i32 0
  %22 = load i8** %sv_any93, align 8, !tbaa !0
  %xgv_gp94 = getelementptr inbounds i8* %22, i64 56
  %23 = bitcast i8* %xgv_gp94 to %struct.gp**
  %24 = load %struct.gp** %23, align 8, !tbaa !0
  %tobool95 = icmp eq %struct.gp* %24, null
  br i1 %tobool95, label %sw.epilog, label %land.lhs.true96

land.lhs.true96:                                  ; preds = %sw.bb92
  %gp_flags99 = getelementptr inbounds %struct.gp* %24, i64 0, i32 9
  %25 = load i32* %gp_flags99, align 4, !tbaa !3
  %and100 = and i32 %25, 1
  %tobool101 = icmp eq i32 %and100, 0
  br i1 %tobool101, label %sw.epilog, label %if.then102

if.then102:                                       ; preds = %land.lhs.true96
  %26 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast103 = ptrtoint %struct.sv** %26 to i64
  %sub.ptr.rhs.cast104 = ptrtoint %struct.sv** %add.ptr9 to i64
  %sub.ptr.sub105 = sub i64 %sub.ptr.lhs.cast103, %sub.ptr.rhs.cast104
  %cmp107 = icmp slt i64 %sub.ptr.sub105, 8
  br i1 %cmp107, label %if.then109, label %if.end111

if.then109:                                       ; preds = %if.then102
  %call110 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %add.ptr9, %struct.sv** %add.ptr9, i32 1) #4
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %if.then102
  %sp.9 = phi %struct.sv** [ %call110, %if.then109 ], [ %add.ptr9, %if.then102 ]
  %call112 = tail call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i64 6) #4
  %call113 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call112) #4
  %incdec.ptr114 = getelementptr inbounds %struct.sv** %sp.9, i64 1
  store %struct.sv* %call113, %struct.sv** %incdec.ptr114, align 8, !tbaa !0
  br label %sw.epilog

sw.epilog:                                        ; preds = %land.lhs.true71, %if.end67, %land.lhs.true96, %sw.bb92, %if.end14, %if.end111, %if.end87
  %sp.10 = phi %struct.sv** [ %add.ptr9, %if.end14 ], [ %incdec.ptr114, %if.end111 ], [ %add.ptr9, %land.lhs.true96 ], [ %add.ptr9, %sw.bb92 ], [ %incdec.ptr90, %if.end87 ], [ %sp.7, %land.lhs.true71 ], [ %sp.7, %if.end67 ]
  store %struct.sv** %sp.10, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_attributes_reftype(%struct.cv* nocapture %cv) #0 {
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
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %4, i64 0, i32 7
  %5 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %5, 32
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %op_targ = getelementptr inbounds %struct.op* %4, i64 0, i32 3
  %6 = load i64* %op_targ, align 8, !tbaa !4
  %7 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %7, i64 %6
  %8 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = tail call %struct.sv* @Perl_sv_newmortal() #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %8, %cond.true ], [ %call, %cond.false ]
  %9 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %9, 8
  br i1 %cmp, label %if.end, label %usage

usage:                                            ; preds = %if.end17, %cond.end
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([38 x i8]* @.str17, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %cond.end, %usage
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %10 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv** %arrayidx9, align 8, !tbaa !0
  store %struct.sv* %cond, %struct.sv** %arrayidx9, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %11, i64 0, i32 2
  %12 = load i32* %sv_flags, align 4, !tbaa !3
  %and13 = and i32 %12, 8192
  %tobool14 = icmp eq i32 %and13, 0
  br i1 %tobool14, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end
  %call16 = tail call i32 @Perl_mg_get(%struct.sv* %11) #4
  %.pre = load i32* %sv_flags, align 4, !tbaa !3
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then15
  %13 = phi i32 [ %12, %if.end ], [ %.pre, %if.then15 ]
  %and19 = and i32 %13, 118423552
  %tobool20 = icmp eq i32 %and19, 0
  %and22 = and i32 %13, 524288
  %tobool23 = icmp eq i32 %and22, 0
  %or.cond = or i1 %tobool20, %tobool23
  br i1 %or.cond, label %usage, label %if.end25

if.end25:                                         ; preds = %if.end17
  %sv_any = getelementptr inbounds %struct.sv* %11, i64 0, i32 0
  %14 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %14 to %struct.sv**
  %15 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %call26 = tail call i8* @Perl_sv_reftype(%struct.sv* %15, i32 0) #4
  tail call void @Perl_sv_setpv(%struct.sv* %cond, i8* %call26) #4
  %sv_flags27 = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %16 = load i32* %sv_flags27, align 4, !tbaa !3
  %and28 = and i32 %16, 16384
  %tobool29 = icmp eq i32 %and28, 0
  br i1 %tobool29, label %if.end32, label %if.then30

if.then30:                                        ; preds = %if.end25
  %call31 = tail call i32 @Perl_mg_set(%struct.sv* %cond) #4
  br label %if.end32

if.end32:                                         ; preds = %if.end25, %if.then30
  %17 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr34 = getelementptr inbounds %struct.sv** %17, i64 %idxprom
  store %struct.sv** %add.ptr34, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_newmortal() #1

; Function Attrs: optsize
declare %struct.magic* @Perl_mg_find(%struct.sv*, i32) #1

; Function Attrs: optsize
declare i32 @Perl_mg_set(%struct.sv*) #1

; Function Attrs: optsize
declare i32 @Perl_mg_get(%struct.sv*) #1

; Function Attrs: optsize
declare i8* @Perl_sv_reftype(%struct.sv*, i32) #1

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}

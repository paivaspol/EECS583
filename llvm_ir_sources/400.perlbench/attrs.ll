; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/attrs.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, {}*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
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
%union.any = type { i8* }
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%struct._PerlIO = type opaque
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }

@PL_stack_sp = external global %struct.sv**
@PL_stack_base = external global %struct.sv**
@PL_markstack_ptr = external global i32*
@.str = private unnamed_addr constant [22 x i8] c"Usage: %s(Class, ...)\00", align 1
@PL_compcv = external global %struct.cv*
@.str1 = private unnamed_addr constant [48 x i8] c"can't set attributes outside a subroutine scope\00", align 1
@PL_curcop = external global %struct.cop*
@PL_dowarn = external global i8
@.str2 = private unnamed_addr constant [61 x i8] c"pragma \22attrs\22 is deprecated, use \22sub NAME : ATTRS\22 instead\00", align 1
@.str3 = private unnamed_addr constant [26 x i8] c"invalid attribute name %s\00", align 1
@.str4 = private unnamed_addr constant [23 x i8] c"Usage: attrs::get(sub)\00", align 1
@.str5 = private unnamed_addr constant [37 x i8] c"invalid subroutine reference or name\00", align 1
@PL_stack_max = external global %struct.sv**
@.str6 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str7 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str8 = private unnamed_addr constant [55 x i8] c"../../SPEC/benchspec/CPU2006/400.perlbench/src/attrs.c\00", align 1
@.str9 = private unnamed_addr constant [16 x i8] c"attrs::unimport\00", align 1
@.str10 = private unnamed_addr constant [14 x i8] c"attrs::import\00", align 1
@.str11 = private unnamed_addr constant [11 x i8] c"attrs::get\00", align 1
@PL_sv_yes = external global %struct.sv

; Function Attrs: nounwind optsize uwtable
define void @XS_attrs_import(%struct.cv* nocapture %cv) #0 {
entry:
  %n_a = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add = add i32 %3, 1
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sub.ptr.div492 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div492 to i32
  %sv_any = getelementptr inbounds %struct.cv* %cv, i64 0, i32 0
  %4 = load %struct.xpvcv** %sv_any, align 8, !tbaa !0
  %xcv_xsubany = getelementptr inbounds %struct.xpvcv* %4, i64 0, i32 11
  %any_i32 = bitcast %union.any* %xcv_xsubany to i32*
  %5 = load i32* %any_i32, align 4, !tbaa !3
  %sext = shl i64 %sub.ptr.sub3, 29
  %idx.ext6 = ashr exact i64 %sext, 32
  %idx.neg = sub i64 0, %idx.ext6
  %add.ptr7 = getelementptr inbounds %struct.sv** %0, i64 %idx.neg
  %cmp = icmp slt i32 %conv5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %xcv_gv = getelementptr inbounds %struct.xpvcv* %4, i64 0, i32 12
  %6 = load %struct.gv** %xcv_gv, align 8, !tbaa !0
  %sv_any10 = getelementptr inbounds %struct.gv* %6, i64 0, i32 0
  %7 = load %struct.xpvgv** %sv_any10, align 8, !tbaa !0
  %xgv_name = getelementptr inbounds %struct.xpvgv* %7, i64 0, i32 8
  %8 = load i8** %xgv_name, align 8, !tbaa !0
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([22 x i8]* @.str, i64 0, i64 0), i8* %8) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.cv** @PL_compcv, align 8, !tbaa !0
  %tobool = icmp eq %struct.cv* %9, null
  br i1 %tobool, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %sv_any11 = getelementptr inbounds %struct.cv* %9, i64 0, i32 0
  %10 = load %struct.xpvcv** %sv_any11, align 8, !tbaa !0
  %xcv_outside = getelementptr inbounds %struct.xpvcv* %10, i64 0, i32 16
  %11 = load %struct.cv** %xcv_outside, align 8, !tbaa !0
  %tobool12 = icmp eq %struct.cv* %11, null
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false, %if.end
  %cv.addr.0 = phi %struct.cv* [ null, %lor.lhs.false ], [ %cv, %if.end ]
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([48 x i8]* @.str1, i64 0, i64 0)) #3
  br label %if.end14

if.end14:                                         ; preds = %lor.lhs.false, %if.then13
  %cv.addr.1 = phi %struct.cv* [ %11, %lor.lhs.false ], [ %cv.addr.0, %if.then13 ]
  %12 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %12, i64 0, i32 14
  %13 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp15 = icmp eq %struct.sv* %13, null
  br i1 %cmp15, label %lor.lhs.false29, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end14
  %14 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings17 = getelementptr inbounds %struct.cop* %14, i64 0, i32 14
  %15 = load %struct.sv** %cop_warnings17, align 8, !tbaa !0
  %cmp18 = icmp eq %struct.sv* %15, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp18, label %lor.lhs.false29, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %land.lhs.true
  %16 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings21 = getelementptr inbounds %struct.cop* %16, i64 0, i32 14
  %17 = load %struct.sv** %cop_warnings21, align 8, !tbaa !0
  %cmp22 = icmp eq %struct.sv* %17, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp22, label %if.then37, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %land.lhs.true20
  %18 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings25 = getelementptr inbounds %struct.cop* %18, i64 0, i32 14
  %19 = load %struct.sv** %cop_warnings25, align 8, !tbaa !0
  %sv_any26 = getelementptr inbounds %struct.sv* %19, i64 0, i32 0
  %20 = load i8** %sv_any26, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %20 to i8**
  %21 = load i8** %xpv_pv, align 8, !tbaa !0
  %22 = load i8* %21, align 1, !tbaa !1
  %and = and i8 %22, 16
  %tobool28 = icmp eq i8 %and, 0
  br i1 %tobool28, label %lor.lhs.false29, label %if.then37

lor.lhs.false29:                                  ; preds = %lor.lhs.false24, %land.lhs.true, %if.end14
  %23 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings30 = getelementptr inbounds %struct.cop* %23, i64 0, i32 14
  %24 = load %struct.sv** %cop_warnings30, align 8, !tbaa !0
  %cmp31 = icmp eq %struct.sv* %24, null
  br i1 %cmp31, label %land.lhs.true33, label %for.cond.preheader

land.lhs.true33:                                  ; preds = %lor.lhs.false29
  %25 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and35 = and i8 %25, 1
  %tobool36 = icmp eq i8 %and35, 0
  br i1 %tobool36, label %for.cond.preheader, label %if.then37

if.then37:                                        ; preds = %lor.lhs.false24, %land.lhs.true33, %land.lhs.true20
  call void (i32, i8*, ...)* @Perl_warner(i32 2, i8* getelementptr inbounds ([61 x i8]* @.str2, i64 0, i64 0)) #3
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %land.lhs.true33, %if.then37, %lor.lhs.false29
  %cmp3997 = icmp sgt i32 %conv5, 1
  br i1 %cmp3997, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool62 = icmp eq i32 %5, 0
  %sv_any70 = getelementptr inbounds %struct.cv* %cv.addr.1, i64 0, i32 0
  %26 = sext i32 %add to i64
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %27 = add nsw i64 %indvars.iv, %26
  %28 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx42 = getelementptr inbounds %struct.sv** %28, i64 %27
  %29 = load %struct.sv** %arrayidx42, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %29, i64 0, i32 2
  %30 = load i32* %sv_flags, align 4, !tbaa !3
  %and43 = and i32 %30, 262144
  %cmp44 = icmp eq i32 %and43, 0
  br i1 %cmp44, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.body
  %sv_any49 = getelementptr inbounds %struct.sv* %29, i64 0, i32 0
  %31 = load i8** %sv_any49, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %31, i64 8
  %32 = bitcast i8* %xpv_cur to i64*
  %33 = load i64* %32, align 8, !tbaa !4
  store i64 %33, i64* %n_a, align 8, !tbaa !4
  %xpv_pv54 = bitcast i8* %31 to i8**
  %34 = load i8** %xpv_pv54, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %29, i64* %n_a, i32 2) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %34, %cond.true ], [ %call, %cond.false ]
  %call.i = call i32 @strncmp(i8* %cond, i8* getelementptr inbounds ([7 x i8]* @.str6, i64 0, i64 0), i64 6) #3
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %if.end61, label %get_flag.exit

get_flag.exit:                                    ; preds = %cond.end
  %call1.i = call i32 @strncmp(i8* %cond, i8* getelementptr inbounds ([7 x i8]* @.str7, i64 0, i64 0), i64 6) #3
  %not.tobool2.i = icmp eq i32 %call1.i, 0
  br i1 %not.tobool2.i, label %if.end61, label %if.then60

if.then60:                                        ; preds = %get_flag.exit
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([26 x i8]* @.str3, i64 0, i64 0), i8* %cond) #3
  br label %if.end61

if.end61:                                         ; preds = %get_flag.exit, %cond.end, %if.then60
  %retval.0.i96 = phi i16 [ 128, %get_flag.exit ], [ 0, %if.then60 ], [ 64, %cond.end ]
  br i1 %tobool62, label %if.else, label %if.then63

if.then63:                                        ; preds = %if.end61
  %neg = xor i16 %retval.0.i96, -1
  %35 = load %struct.xpvcv** %sv_any70, align 8, !tbaa !0
  %xcv_flags = getelementptr inbounds %struct.xpvcv* %35, i64 0, i32 17
  %36 = load i16* %xcv_flags, align 2, !tbaa !5
  %and67 = and i16 %36, %neg
  store i16 %and67, i16* %xcv_flags, align 2, !tbaa !5
  br label %for.inc

if.else:                                          ; preds = %if.end61
  %37 = load %struct.xpvcv** %sv_any70, align 8, !tbaa !0
  %xcv_flags71 = getelementptr inbounds %struct.xpvcv* %37, i64 0, i32 17
  %38 = load i16* %xcv_flags71, align 2, !tbaa !5
  %or93 = or i16 %38, %retval.0.i96
  store i16 %or93, i16* %xcv_flags71, align 2, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.then63, %if.else
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %conv5
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  store %struct.sv** %add.ptr7, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #1

; Function Attrs: optsize
declare void @Perl_warner(i32, i8*, ...) #1

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_attrs_get(%struct.cv* nocapture %cv) #0 {
entry:
  %n_a = alloca i64, align 8
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
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([23 x i8]* @.str4, i64 0, i64 0)) #3
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
  %and = and i32 %7, 524288
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end
  %sv_any = getelementptr inbounds %struct.sv* %6, i64 0, i32 0
  %8 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %8 to %struct.sv**
  %9 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_flags11 = getelementptr inbounds %struct.sv* %9, i64 0, i32 2
  %10 = load i32* %sv_flags11, align 4, !tbaa !3
  %and12 = and i32 %10, 255
  %cmp13 = icmp ne i32 %and12, 12
  %. = select i1 %cmp13, %struct.sv* null, %struct.sv* %9
  br label %if.end24

if.else:                                          ; preds = %if.end
  %and18 = and i32 %7, 262144
  %cmp19 = icmp eq i32 %and18, 0
  br i1 %cmp19, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.else
  %sv_any21 = getelementptr inbounds %struct.sv* %6, i64 0, i32 0
  %11 = load i8** %sv_any21, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %11, i64 8
  %12 = bitcast i8* %xpv_cur to i64*
  %13 = load i64* %12, align 8, !tbaa !4
  store i64 %13, i64* %n_a, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %11 to i8**
  %14 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %6, i64* %n_a, i32 2) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %14, %cond.true ], [ %call, %cond.false ]
  %call23 = call %struct.cv* @Perl_get_cv(i8* %cond, i32 0) #3
  %15 = bitcast %struct.cv* %call23 to %struct.sv*
  br label %if.end24

if.end24:                                         ; preds = %cond.end, %if.then10
  %sub.0 = phi %struct.sv* [ %., %if.then10 ], [ %15, %cond.end ]
  %tobool25 = icmp eq %struct.sv* %sub.0, null
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end24
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([37 x i8]* @.str5, i64 0, i64 0)) #3
  br label %if.end27

if.end27:                                         ; preds = %if.end24, %if.then26
  %sv_any28 = getelementptr inbounds %struct.sv* %sub.0, i64 0, i32 0
  %16 = load i8** %sv_any28, align 8, !tbaa !0
  %xcv_flags = getelementptr inbounds i8* %16, i64 136
  %17 = bitcast i8* %xcv_flags to i16*
  %18 = load i16* %17, align 2, !tbaa !5
  %and30 = and i16 %18, 64
  %tobool31 = icmp eq i16 %and30, 0
  br i1 %tobool31, label %if.end45, label %if.then32

if.then32:                                        ; preds = %if.end27
  %19 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast33 = ptrtoint %struct.sv** %19 to i64
  %sub.ptr.rhs.cast34 = ptrtoint %struct.sv** %add.ptr8 to i64
  %sub.ptr.sub35 = sub i64 %sub.ptr.lhs.cast33, %sub.ptr.rhs.cast34
  %cmp37 = icmp slt i64 %sub.ptr.sub35, 8
  br i1 %cmp37, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.then32
  %call40 = call %struct.sv** @Perl_stack_grow(%struct.sv** %add.ptr8, %struct.sv** %add.ptr8, i32 1) #3
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.then32
  %sp.0 = phi %struct.sv** [ %call40, %if.then39 ], [ %add.ptr8, %if.then32 ]
  %call42 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([7 x i8]* @.str6, i64 0, i64 0), i64 6) #3
  %call43 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call42) #3
  %incdec.ptr44 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %call43, %struct.sv** %incdec.ptr44, align 8, !tbaa !0
  %.pre87 = load i8** %sv_any28, align 8, !tbaa !0
  %xcv_flags47.phi.trans.insert = getelementptr inbounds i8* %.pre87, i64 136
  %.phi.trans.insert = bitcast i8* %xcv_flags47.phi.trans.insert to i16*
  %.pre88 = load i16* %.phi.trans.insert, align 2, !tbaa !5
  br label %if.end45

if.end45:                                         ; preds = %if.end27, %if.end41
  %20 = phi i16 [ %.pre88, %if.end41 ], [ %18, %if.end27 ]
  %sp.1 = phi %struct.sv** [ %incdec.ptr44, %if.end41 ], [ %add.ptr8, %if.end27 ]
  %and49 = and i16 %20, 128
  %tobool50 = icmp eq i16 %and49, 0
  br i1 %tobool50, label %if.end64, label %if.then51

if.then51:                                        ; preds = %if.end45
  %21 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast52 = ptrtoint %struct.sv** %21 to i64
  %sub.ptr.rhs.cast53 = ptrtoint %struct.sv** %sp.1 to i64
  %sub.ptr.sub54 = sub i64 %sub.ptr.lhs.cast52, %sub.ptr.rhs.cast53
  %cmp56 = icmp slt i64 %sub.ptr.sub54, 8
  br i1 %cmp56, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.then51
  %call59 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.1, %struct.sv** %sp.1, i32 1) #3
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.then51
  %sp.2 = phi %struct.sv** [ %call59, %if.then58 ], [ %sp.1, %if.then51 ]
  %call61 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([7 x i8]* @.str7, i64 0, i64 0), i64 6) #3
  %call62 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call61) #3
  %incdec.ptr63 = getelementptr inbounds %struct.sv** %sp.2, i64 1
  store %struct.sv* %call62, %struct.sv** %incdec.ptr63, align 8, !tbaa !0
  br label %if.end64

if.end64:                                         ; preds = %if.end45, %if.end60
  %sp.3 = phi %struct.sv** [ %incdec.ptr63, %if.end60 ], [ %sp.1, %if.end45 ]
  store %struct.sv** %sp.3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare %struct.cv* @Perl_get_cv(i8*, i32) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @boot_attrs(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %0, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %1 = load i32* %0, align 4, !tbaa !3
  %idx.ext22 = zext i32 %1 to i64
  %add.ptr.idx = shl nuw i64 %idx.ext22, 32
  %call = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0), void (%struct.cv*)* @XS_attrs_import, i8* getelementptr inbounds ([55 x i8]* @.str8, i64 0, i64 0)) #3
  %sv_any = getelementptr inbounds %struct.cv* %call, i64 0, i32 0
  %2 = load %struct.xpvcv** %sv_any, align 8, !tbaa !0
  %xcv_xsubany = getelementptr inbounds %struct.xpvcv* %2, i64 0, i32 11
  %any_i32 = bitcast %union.any* %xcv_xsubany to i32*
  store i32 1, i32* %any_i32, align 4, !tbaa !3
  %call7 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0), void (%struct.cv*)* @XS_attrs_import, i8* getelementptr inbounds ([55 x i8]* @.str8, i64 0, i64 0)) #3
  %sv_any8 = getelementptr inbounds %struct.cv* %call7, i64 0, i32 0
  %3 = load %struct.xpvcv** %sv_any8, align 8, !tbaa !0
  %xcv_xsubany9 = getelementptr inbounds %struct.xpvcv* %3, i64 0, i32 11
  %any_i3210 = bitcast %union.any* %xcv_xsubany9 to i32*
  store i32 0, i32* %any_i3210, align 4, !tbaa !3
  %call11 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([11 x i8]* @.str11, i64 0, i64 0), void (%struct.cv*)* @XS_attrs_get, i8* getelementptr inbounds ([55 x i8]* @.str8, i64 0, i64 0)) #3
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %4 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %4, i64 %idxprom
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx, align 8, !tbaa !0
  %5 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr14 = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  store %struct.sv** %add.ptr14, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}

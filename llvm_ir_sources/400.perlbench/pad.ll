; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/pad.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.sv = type { i8*, i32, i32 }
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
%union.any = type { i8* }
%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%struct._PerlIO = type opaque
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, {}*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }

@PL_savestack_ix = external global i32
@PL_savestack_max = external global i32
@PL_comppad = external global %struct.av*
@PL_savestack = external global %union.any*
@PL_comppad_name = external global %struct.av*
@PL_padix = external global i32
@PL_comppad_name_fill = external global i32
@PL_min_intro_pending = external global i32
@PL_max_intro_pending = external global i32
@PL_pad_reset_pending = external global i32
@PL_curpad = external global %struct.sv**
@PL_dirty = external global i8
@PL_sv_undef = external global %struct.sv
@PL_Sv = external global %struct.sv*
@.str = private unnamed_addr constant [17 x i8] c"panic: pad_alloc\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@PL_curcop = external global %struct.cop*
@PL_dowarn = external global i8
@PL_comppad_name_floor = external global i32
@.str2 = private unnamed_addr constant [54 x i8] c"\22%s\22 variable %s masks earlier declaration in same %s\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"our\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"my\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"scope\00", align 1
@.str6 = private unnamed_addr constant [10 x i8] c"statement\00", align 1
@.str7 = private unnamed_addr constant [29 x i8] c"\22our\22 variable %s redeclared\00", align 1
@.str8 = private unnamed_addr constant [43 x i8] c"\09(Did you mean \22local\22 instead of \22our\22?)\0A\00", align 1
@PL_cop_seqmax = external global i32
@PL_compcv = external global %struct.cv*
@.str9 = private unnamed_addr constant [17 x i8] c"panic: pad_sv po\00", align 1
@PL_padix_floor = external global i32
@.str10 = private unnamed_addr constant [20 x i8] c"%_ never introduced\00", align 1
@.str11 = private unnamed_addr constant [24 x i8] c"panic: pad_swipe curpad\00", align 1
@.str12 = private unnamed_addr constant [20 x i8] c"panic: pad_swipe po\00", align 1
@PL_sv_yes = external global %struct.sv
@PL_sv_no = external global %struct.sv
@PL_sv_placeholder = external global %struct.sv
@.str13 = private unnamed_addr constant [23 x i8] c"panic: pad_free curpad\00", align 1
@.str14 = private unnamed_addr constant [19 x i8] c"panic: pad_free po\00", align 1
@.str15 = private unnamed_addr constant [43 x i8] c"PADNAME = 0x%lx(0x%lx) PAD = 0x%lx(0x%lx)\0A\00", align 1
@.str16 = private unnamed_addr constant [27 x i8] c"%2d. 0x%lx<%lu> FAKE \22%s\22\0A\00", align 1
@.str17 = private unnamed_addr constant [32 x i8] c"%2d. 0x%lx<%lu> (%lu,%lu) \22%s\22\0A\00", align 1
@.str18 = private unnamed_addr constant [17 x i8] c"%2d. 0x%lx<%lu>\0A\00", align 1
@.str19 = private unnamed_addr constant [20 x i8] c"panic: cv_clone: %s\00", align 1
@.str20 = private unnamed_addr constant [33 x i8] c"Variable \22%s\22 may be unavailable\00", align 1
@.str21 = private unnamed_addr constant [35 x i8] c"Variable \22%s\22 will not stay shared\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.av* @Perl_pad_new(i32 %flags) #0 {
entry:
  %and = and i32 %flags, 2
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  %and16.pre = and i32 %flags, 1
  br label %if.end13

if.then:                                          ; preds = %entry
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %add = add nsw i32 %0, 2
  %1 = load i32* @PL_savestack_max, align 4, !tbaa !0
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  tail call void @Perl_savestack_grow() #3
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %2 = phi i32 [ %.pre, %if.then1 ], [ %0, %if.then ]
  %3 = load %struct.av** @PL_comppad, align 8, !tbaa !3
  %4 = bitcast %struct.av* %3 to i8*
  %inc = add nsw i32 %2, 1
  %idxprom = sext i32 %2 to i64
  %5 = load %union.any** @PL_savestack, align 8, !tbaa !3
  %any_ptr = getelementptr inbounds %union.any* %5, i64 %idxprom, i32 0
  store i8* %4, i8** %any_ptr, align 8, !tbaa !3
  %inc2 = add nsw i32 %2, 2
  store i32 %inc2, i32* @PL_savestack_ix, align 4, !tbaa !0
  %idxprom3 = sext i32 %inc to i64
  %6 = load %union.any** @PL_savestack, align 8, !tbaa !3
  %arrayidx4 = getelementptr inbounds %union.any* %6, i64 %idxprom3
  %any_i32 = bitcast %union.any* %arrayidx4 to i32*
  store i32 33, i32* %any_i32, align 4, !tbaa !0
  tail call void @Perl_save_sptr(%struct.sv** bitcast (%struct.av** @PL_comppad_name to %struct.sv**)) #3
  %and5 = and i32 %flags, 1
  %tobool6 = icmp eq i32 %and5, 0
  br i1 %tobool6, label %if.then7, label %if.end13

if.then7:                                         ; preds = %if.end
  tail call void @Perl_save_I32(i32* @PL_padix) #3
  tail call void @Perl_save_I32(i32* @PL_comppad_name_fill) #3
  tail call void @Perl_save_I32(i32* @PL_min_intro_pending) #3
  tail call void @Perl_save_I32(i32* @PL_max_intro_pending) #3
  %and8 = and i32 %flags, 4
  %tobool9 = icmp eq i32 %and8, 0
  br i1 %tobool9, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.then7
  tail call void @Perl_save_I32(i32* @PL_pad_reset_pending) #3
  br label %if.end13

if.end13:                                         ; preds = %entry.if.end13_crit_edge, %if.then7, %if.end, %if.then10
  %and16.pre-phi = phi i32 [ %and16.pre, %entry.if.end13_crit_edge ], [ 0, %if.then7 ], [ %and5, %if.end ], [ 0, %if.then10 ]
  %call = tail call %struct.av* @Perl_newAV() #3
  %call14 = tail call %struct.av* @Perl_newAV() #3
  %call15 = tail call %struct.av* @Perl_newAV() #3
  %tobool17 = icmp ne i32 %and16.pre-phi, 0
  br i1 %tobool17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end13
  %call19 = tail call %struct.av* @Perl_newAV() #3
  tail call void @Perl_av_extend(%struct.av* %call19, i32 0) #3
  %7 = bitcast %struct.av* %call19 to %struct.sv*
  %call20 = tail call %struct.sv** @Perl_av_store(%struct.av* %call15, i32 0, %struct.sv* %7) #3
  %sv_any = getelementptr inbounds %struct.av* %call19, i64 0, i32 0
  %8 = load %struct.xpvav** %sv_any, align 8, !tbaa !3
  %xav_flags = getelementptr inbounds %struct.xpvav* %8, i64 0, i32 9
  store i8 2, i8* %xav_flags, align 1, !tbaa !1
  br label %if.end22

if.else:                                          ; preds = %if.end13
  %call21 = tail call %struct.sv** @Perl_av_store(%struct.av* %call15, i32 0, %struct.sv* null) #3
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then18
  %sv_any23 = getelementptr inbounds %struct.av* %call, i64 0, i32 0
  %9 = load %struct.xpvav** %sv_any23, align 8, !tbaa !3
  %xav_flags24 = getelementptr inbounds %struct.xpvav* %9, i64 0, i32 9
  %10 = load i8* %xav_flags24, align 1, !tbaa !1
  %and25 = and i8 %10, -2
  store i8 %and25, i8* %xav_flags24, align 1, !tbaa !1
  %11 = bitcast %struct.av* %call14 to %struct.sv*
  %call27 = tail call %struct.sv** @Perl_av_store(%struct.av* %call, i32 0, %struct.sv* %11) #3
  %12 = bitcast %struct.av* %call15 to %struct.sv*
  %call28 = tail call %struct.sv** @Perl_av_store(%struct.av* %call, i32 1, %struct.sv* %12) #3
  %call29 = tail call %struct.sv** @Perl_av_fetch(%struct.av* %call, i32 0, i32 0) #3
  %13 = load %struct.sv** %call29, align 8, !tbaa !3
  %14 = bitcast %struct.sv* %13 to %struct.av*
  store %struct.av* %14, %struct.av** @PL_comppad_name, align 8, !tbaa !3
  %call30 = tail call %struct.sv** @Perl_av_fetch(%struct.av* %call, i32 1, i32 0) #3
  %15 = load %struct.sv** %call30, align 8, !tbaa !3
  %16 = bitcast %struct.sv* %15 to %struct.av*
  store %struct.av* %16, %struct.av** @PL_comppad, align 8, !tbaa !3
  %sv_any31 = bitcast %struct.sv* %15 to %struct.xpvav**
  %17 = load %struct.xpvav** %sv_any31, align 8, !tbaa !3
  %xav_array = getelementptr inbounds %struct.xpvav* %17, i64 0, i32 0
  %18 = load i8** %xav_array, align 8, !tbaa !3
  %19 = bitcast i8* %18 to %struct.sv**
  store %struct.sv** %19, %struct.sv*** @PL_curpad, align 8, !tbaa !3
  br i1 %tobool17, label %if.end35, label %if.then34

if.then34:                                        ; preds = %if.end22
  store i32 0, i32* @PL_comppad_name_fill, align 4, !tbaa !0
  store i32 0, i32* @PL_min_intro_pending, align 4, !tbaa !0
  store i32 0, i32* @PL_padix, align 4, !tbaa !0
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end22
  ret %struct.av* %call
}

; Function Attrs: optsize
declare void @Perl_savestack_grow() #1

; Function Attrs: optsize
declare void @Perl_save_sptr(%struct.sv**) #1

; Function Attrs: optsize
declare void @Perl_save_I32(i32*) #1

; Function Attrs: optsize
declare %struct.av* @Perl_newAV() #1

; Function Attrs: optsize
declare void @Perl_av_extend(%struct.av*, i32) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_av_store(%struct.av*, i32, %struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_av_fetch(%struct.av*, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_pad_undef(%struct.cv* %cv) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.cv* %cv, i64 0, i32 0
  %0 = load %struct.xpvcv** %sv_any, align 8, !tbaa !3
  %xcv_padlist = getelementptr inbounds %struct.xpvcv* %0, i64 0, i32 15
  %1 = load %struct.av** %xcv_padlist, align 8, !tbaa !3
  %tobool = icmp eq %struct.av* %1, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sv_refcnt = getelementptr inbounds %struct.av* %1, i64 0, i32 1
  %2 = load i32* %sv_refcnt, align 4, !tbaa !0
  %tobool3 = icmp eq i32 %2, 0
  br i1 %tobool3, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  %3 = load i8* @PL_dirty, align 1, !tbaa !1
  %tobool6 = icmp eq i8 %3, 0
  br i1 %tobool6, label %if.then7, label %if.end5.if.end69_crit_edge

if.end5.if.end69_crit_edge:                       ; preds = %if.end5
  %sv_any70.pre = getelementptr inbounds %struct.av* %1, i64 0, i32 0
  br label %if.end69

if.then7:                                         ; preds = %if.end5
  %xcv_outside = getelementptr inbounds %struct.xpvcv* %0, i64 0, i32 16
  %4 = load %struct.cv** %xcv_outside, align 8, !tbaa !3
  %xcv_outside_seq = getelementptr inbounds %struct.xpvcv* %0, i64 0, i32 18
  %5 = load i32* %xcv_outside_seq, align 4, !tbaa !0
  %sv_any10 = getelementptr inbounds %struct.av* %1, i64 0, i32 0
  %6 = load %struct.xpvav** %sv_any10, align 8, !tbaa !3
  %xav_array = getelementptr inbounds %struct.xpvav* %6, i64 0, i32 0
  %7 = load i8** %xav_array, align 8, !tbaa !3
  %8 = bitcast i8* %7 to %struct.sv**
  %9 = load %struct.sv** %8, align 8, !tbaa !3
  %sv_any11 = bitcast %struct.sv* %9 to %struct.xpvav**
  %10 = load %struct.xpvav** %sv_any11, align 8, !tbaa !3
  %xav_array12 = getelementptr inbounds %struct.xpvav* %10, i64 0, i32 0
  %11 = load i8** %xav_array12, align 8, !tbaa !3
  %12 = bitcast i8* %11 to %struct.sv**
  %arrayidx15 = getelementptr inbounds i8* %7, i64 8
  %13 = bitcast i8* %arrayidx15 to %struct.sv**
  %14 = load %struct.sv** %13, align 8, !tbaa !3
  %sv_any16 = bitcast %struct.sv* %14 to %struct.xpvav**
  %15 = load %struct.xpvav** %sv_any16, align 8, !tbaa !3
  %xav_array17 = getelementptr inbounds %struct.xpvav* %15, i64 0, i32 0
  %16 = load i8** %xav_array17, align 8, !tbaa !3
  %17 = bitcast i8* %16 to %struct.sv**
  %xav_fill = getelementptr inbounds %struct.xpvav* %10, i64 0, i32 1
  %18 = load i64* %xav_fill, align 8, !tbaa !4
  %conv = trunc i64 %18 to i32
  %cmp134 = icmp sgt i32 %conv, 0
  br i1 %cmp134, label %for.body.lr.ph, label %if.end69

for.body.lr.ph:                                   ; preds = %if.then7
  %19 = getelementptr inbounds %struct.sv* %14, i64 0, i32 1
  %tobool49 = icmp eq %struct.cv* %4, null
  %sv_refcnt51 = getelementptr inbounds %struct.cv* %4, i64 0, i32 1
  %20 = bitcast %struct.cv* %4 to %struct.sv*
  %sext138 = shl i64 %18, 32
  %21 = ashr exact i64 %sext138, 32
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv136 = phi i64 [ %21, %for.body.lr.ph ], [ %indvars.iv.next137, %for.inc ]
  %arrayidx20 = getelementptr inbounds %struct.sv** %12, i64 %indvars.iv136
  %22 = load %struct.sv** %arrayidx20, align 8, !tbaa !3
  %tobool21 = icmp ne %struct.sv* %22, null
  %cmp22 = icmp ne %struct.sv* %22, @PL_sv_undef
  %or.cond = and i1 %tobool21, %cmp22
  br i1 %or.cond, label %land.lhs.true24, label %for.inc

land.lhs.true24:                                  ; preds = %for.body
  %sv_any25 = getelementptr inbounds %struct.sv* %22, i64 0, i32 0
  %23 = load i8** %sv_any25, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %23 to i8**
  %24 = load i8** %xpv_pv, align 8, !tbaa !3
  %25 = load i8* %24, align 1, !tbaa !1
  %cmp27 = icmp eq i8 %25, 38
  br i1 %cmp27, label %if.then29, label %for.inc

if.then29:                                        ; preds = %land.lhs.true24
  %arrayidx31 = getelementptr inbounds %struct.sv** %17, i64 %indvars.iv136
  %26 = load %struct.sv** %arrayidx31, align 8, !tbaa !3
  store %struct.sv* null, %struct.sv** %arrayidx20, align 8, !tbaa !3
  tail call void @Perl_sv_free(%struct.sv* %22) #3
  %27 = load i32* %19, align 4, !tbaa !0
  %cmp35 = icmp ult i32 %27, 2
  br i1 %cmp35, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.then29
  store %struct.sv* null, %struct.sv** %arrayidx31, align 8, !tbaa !3
  tail call void @Perl_sv_free(%struct.sv* %26) #3
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.then29
  %28 = getelementptr inbounds %struct.sv* %26, i64 0, i32 1
  %29 = load i32* %28, align 4, !tbaa !0
  %tobool42 = icmp eq i32 %29, 0
  br i1 %tobool42, label %for.inc, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %if.end40
  %sv_any44 = bitcast %struct.sv* %26 to %struct.xpvcv**
  %30 = load %struct.xpvcv** %sv_any44, align 8, !tbaa !3
  %xcv_outside45 = getelementptr inbounds %struct.xpvcv* %30, i64 0, i32 16
  %31 = load %struct.cv** %xcv_outside45, align 8, !tbaa !3
  %cmp46 = icmp eq %struct.cv* %31, %cv
  br i1 %cmp46, label %if.then48, label %for.inc

if.then48:                                        ; preds = %land.lhs.true43
  br i1 %tobool49, label %if.else, label %land.lhs.true50

land.lhs.true50:                                  ; preds = %if.then48
  %32 = load i32* %sv_refcnt51, align 4, !tbaa !0
  %tobool52 = icmp eq i32 %32, 0
  br i1 %tobool52, label %if.else, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true50
  %xcv_flags = getelementptr inbounds %struct.xpvcv* %30, i64 0, i32 17
  %33 = load i16* %xcv_flags, align 2, !tbaa !5
  %and = and i16 %33, -1025
  store i16 %and, i16* %xcv_flags, align 2, !tbaa !5
  store %struct.cv* %4, %struct.cv** %xcv_outside45, align 8, !tbaa !3
  %34 = load %struct.xpvcv** %sv_any44, align 8, !tbaa !3
  %xcv_outside_seq60 = getelementptr inbounds %struct.xpvcv* %34, i64 0, i32 18
  store i32 %5, i32* %xcv_outside_seq60, align 4, !tbaa !0
  store %struct.sv* %20, %struct.sv** @PL_Sv, align 8, !tbaa !3
  %35 = load i32* %sv_refcnt51, align 4, !tbaa !0
  %inc = add i32 %35, 1
  store i32 %inc, i32* %sv_refcnt51, align 4, !tbaa !0
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true50, %if.then48
  store %struct.cv* null, %struct.cv** %xcv_outside45, align 8, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %land.rhs, %if.end40, %for.body, %land.lhs.true24, %if.else, %land.lhs.true43
  %indvars.iv.next137 = add i64 %indvars.iv136, -1
  %36 = trunc i64 %indvars.iv.next137 to i32
  %cmp = icmp sgt i32 %36, 0
  br i1 %cmp, label %for.body, label %if.end69

if.end69:                                         ; preds = %if.then7, %for.inc, %if.end5.if.end69_crit_edge
  %sv_any70.pre-phi = phi %struct.xpvav** [ %sv_any70.pre, %if.end5.if.end69_crit_edge ], [ %sv_any10, %for.inc ], [ %sv_any10, %if.then7 ]
  %37 = load %struct.xpvav** %sv_any70.pre-phi, align 8, !tbaa !3
  %xav_fill71 = getelementptr inbounds %struct.xpvav* %37, i64 0, i32 1
  %38 = load i64* %xav_fill71, align 8, !tbaa !4
  %conv72 = trunc i64 %38 to i32
  %cmp73132 = icmp sgt i32 %conv72, -1
  br i1 %cmp73132, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end69
  %sext = shl i64 %38, 32
  %39 = ashr exact i64 %sext, 32
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %40 = phi %struct.xpvav* [ %37, %while.body.lr.ph ], [ %.pre, %while.cond.backedge.while.body_crit_edge ]
  %indvars.iv = phi i64 [ %39, %while.body.lr.ph ], [ %indvars.iv.next, %while.cond.backedge.while.body_crit_edge ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %xav_array78 = getelementptr inbounds %struct.xpvav* %40, i64 0, i32 0
  %41 = load i8** %xav_array78, align 8, !tbaa !3
  %42 = bitcast i8* %41 to %struct.sv**
  %arrayidx79 = getelementptr inbounds %struct.sv** %42, i64 %indvars.iv
  %43 = load %struct.sv** %arrayidx79, align 8, !tbaa !3
  %tobool80 = icmp eq %struct.sv* %43, null
  br i1 %tobool80, label %while.cond.backedge, label %if.end82

if.end82:                                         ; preds = %while.body
  %44 = load %struct.av** @PL_comppad_name, align 8, !tbaa !3
  %45 = bitcast %struct.av* %44 to %struct.sv*
  %cmp83 = icmp eq %struct.sv* %43, %45
  br i1 %cmp83, label %if.then85, label %if.else86

if.then85:                                        ; preds = %if.end82
  store %struct.av* null, %struct.av** @PL_comppad_name, align 8, !tbaa !3
  br label %if.end91

if.else86:                                        ; preds = %if.end82
  %46 = load %struct.av** @PL_comppad, align 8, !tbaa !3
  %47 = bitcast %struct.av* %46 to %struct.sv*
  %cmp87 = icmp eq %struct.sv* %43, %47
  br i1 %cmp87, label %if.then89, label %if.end91

if.then89:                                        ; preds = %if.else86
  store %struct.av* null, %struct.av** @PL_comppad, align 8, !tbaa !3
  store %struct.sv** null, %struct.sv*** @PL_curpad, align 8, !tbaa !3
  br label %if.end91

if.end91:                                         ; preds = %if.else86, %if.then89, %if.then85
  tail call void @Perl_sv_free(%struct.sv* %43) #3
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end91, %while.body
  %48 = trunc i64 %indvars.iv to i32
  %cmp73 = icmp sgt i32 %48, 0
  br i1 %cmp73, label %while.cond.backedge.while.body_crit_edge, label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  %.pre = load %struct.xpvav** %sv_any70.pre-phi, align 8, !tbaa !3
  br label %while.body

while.end:                                        ; preds = %while.cond.backedge, %if.end69
  %49 = load %struct.xpvcv** %sv_any, align 8, !tbaa !3
  %xcv_padlist93 = getelementptr inbounds %struct.xpvcv* %49, i64 0, i32 15
  %50 = load %struct.av** %xcv_padlist93, align 8, !tbaa !3
  %51 = bitcast %struct.av* %50 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %51) #3
  %52 = load %struct.xpvcv** %sv_any, align 8, !tbaa !3
  %xcv_padlist95 = getelementptr inbounds %struct.xpvcv* %52, i64 0, i32 15
  store %struct.av* null, %struct.av** %xcv_padlist95, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %if.end, %entry, %while.end
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_free(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_pad_add_name(i8* %name, %struct.hv* %typestash, %struct.hv* %ourstash, i8 signext %fake) #0 {
entry:
  %call = tail call i64 @Perl_pad_alloc(i32 undef, i32 1024) #4
  %call1 = tail call %struct.sv* @Perl_newSV(i64 0) #3
  %tobool = icmp ne %struct.hv* %ourstash, null
  br i1 %tobool, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %tobool2 = icmp ne %struct.hv* %typestash, null
  %cond = select i1 %tobool2, i32 7, i32 6
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond3 = phi i32 [ %cond, %cond.false ], [ 13, %entry ]
  %call4 = tail call signext i8 @Perl_sv_upgrade(%struct.sv* %call1, i32 %cond3) #3
  tail call void @Perl_sv_setpv(%struct.sv* %call1, i8* %name) #3
  %tobool5 = icmp eq %struct.hv* %typestash, null
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %sv_flags = getelementptr inbounds %struct.sv* %call1, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !0
  %or = or i32 %0, 1073741824
  store i32 %or, i32* %sv_flags, align 4, !tbaa !0
  %1 = bitcast %struct.hv* %typestash to %struct.sv*
  store %struct.sv* %1, %struct.sv** @PL_Sv, align 8, !tbaa !3
  %2 = getelementptr inbounds %struct.hv* %typestash, i64 0, i32 1
  %3 = load i32* %2, align 4, !tbaa !0
  %inc = add i32 %3, 1
  store i32 %inc, i32* %2, align 4, !tbaa !0
  %sv_any = getelementptr inbounds %struct.sv* %call1, i64 0, i32 0
  %4 = load i8** %sv_any, align 8, !tbaa !3
  %xmg_stash = getelementptr inbounds i8* %4, i64 48
  %5 = bitcast i8* %xmg_stash to %struct.hv**
  store %struct.hv* %typestash, %struct.hv** %5, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  br i1 %tobool, label %land.end17, label %if.end20

land.end17:                                       ; preds = %if.end
  %sv_flags10 = getelementptr inbounds %struct.sv* %call1, i64 0, i32 2
  %6 = load i32* %sv_flags10, align 4, !tbaa !0
  %or11 = or i32 %6, -2147483648
  store i32 %or11, i32* %sv_flags10, align 4, !tbaa !0
  %7 = bitcast %struct.hv* %ourstash to %struct.sv*
  store %struct.sv* %7, %struct.sv** @PL_Sv, align 8, !tbaa !3
  %8 = getelementptr inbounds %struct.hv* %ourstash, i64 0, i32 1
  %9 = load i32* %8, align 4, !tbaa !0
  %inc15 = add i32 %9, 1
  store i32 %inc15, i32* %8, align 4, !tbaa !0
  %sv_any19 = getelementptr inbounds %struct.sv* %call1, i64 0, i32 0
  %10 = load i8** %sv_any19, align 8, !tbaa !3
  %xgv_stash = getelementptr inbounds i8* %10, i64 80
  %11 = bitcast i8* %xgv_stash to %struct.hv**
  store %struct.hv* %ourstash, %struct.hv** %11, align 8, !tbaa !3
  br label %if.end20

if.end20:                                         ; preds = %land.end17, %if.end
  %12 = load %struct.av** @PL_comppad_name, align 8, !tbaa !3
  %conv = trunc i64 %call to i32
  %call21 = tail call %struct.sv** @Perl_av_store(%struct.av* %12, i32 %conv, %struct.sv* %call1) #3
  %tobool22 = icmp eq i8 %fake, 0
  br i1 %tobool22, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end20
  %sv_flags24 = getelementptr inbounds %struct.sv* %call1, i64 0, i32 2
  %13 = load i32* %sv_flags24, align 4, !tbaa !0
  %or25 = or i32 %13, 1048576
  store i32 %or25, i32* %sv_flags24, align 4, !tbaa !0
  br label %if.end51

if.else:                                          ; preds = %if.end20
  %sv_any26 = getelementptr inbounds %struct.sv* %call1, i64 0, i32 0
  %14 = load i8** %sv_any26, align 8, !tbaa !3
  %xnv_nv = getelementptr inbounds i8* %14, i64 32
  %15 = bitcast i8* %xnv_nv to double*
  store double 0x41CDCD64FF800000, double* %15, align 8, !tbaa !6
  %xiv_iv = getelementptr inbounds i8* %14, i64 24
  %16 = bitcast i8* %xiv_iv to i64*
  store i64 0, i64* %16, align 8, !tbaa !4
  %17 = load i32* @PL_min_intro_pending, align 4, !tbaa !0
  %tobool28 = icmp eq i32 %17, 0
  br i1 %tobool28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.else
  store i32 %conv, i32* @PL_min_intro_pending, align 4, !tbaa !0
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then29
  store i32 %conv, i32* @PL_max_intro_pending, align 4, !tbaa !0
  %18 = load i8* %name, align 1, !tbaa !1
  switch i8 %18, label %if.end48 [
    i8 64, label %if.then35
    i8 37, label %if.then43
  ]

if.then35:                                        ; preds = %if.end31
  %19 = load %struct.av** @PL_comppad, align 8, !tbaa !3
  %call37 = tail call %struct.av* @Perl_newAV() #3
  %20 = bitcast %struct.av* %call37 to %struct.sv*
  %call38 = tail call %struct.sv** @Perl_av_store(%struct.av* %19, i32 %conv, %struct.sv* %20) #3
  br label %if.end48

if.then43:                                        ; preds = %if.end31
  %21 = load %struct.av** @PL_comppad, align 8, !tbaa !3
  %call45 = tail call %struct.hv* @Perl_newHV() #3
  %22 = bitcast %struct.hv* %call45 to %struct.sv*
  %call46 = tail call %struct.sv** @Perl_av_store(%struct.av* %21, i32 %conv, %struct.sv* %22) #3
  br label %if.end48

if.end48:                                         ; preds = %if.end31, %if.then43, %if.then35
  %23 = load %struct.sv*** @PL_curpad, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds %struct.sv** %23, i64 %call
  %24 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %sv_flags49 = getelementptr inbounds %struct.sv* %24, i64 0, i32 2
  %25 = load i32* %sv_flags49, align 4, !tbaa !0
  %or50 = or i32 %25, 1280
  store i32 %or50, i32* %sv_flags49, align 4, !tbaa !0
  br label %if.end51

if.end51:                                         ; preds = %if.end48, %if.then23
  ret i64 %call
}

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_pad_alloc(i32 %optype, i32 %tmptype) #0 {
entry:
  %0 = load %struct.av** @PL_comppad, align 8, !tbaa !3
  %sv_any = getelementptr inbounds %struct.av* %0, i64 0, i32 0
  %1 = load %struct.xpvav** %sv_any, align 8, !tbaa !3
  %xav_array = getelementptr inbounds %struct.xpvav* %1, i64 0, i32 0
  %2 = load i8** %xav_array, align 8, !tbaa !3
  %3 = bitcast i8* %2 to %struct.sv**
  %4 = load %struct.sv*** @PL_curpad, align 8, !tbaa !3
  %cmp = icmp eq %struct.sv** %3, %4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = load i32* @PL_pad_reset_pending, align 4, !tbaa !0
  %tobool = icmp eq i32 %5, 0
  br i1 %tobool, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store i32 0, i32* @PL_pad_reset_pending, align 4, !tbaa !0
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then2
  %and = and i32 %tmptype, 1024
  %tobool4 = icmp eq i32 %and, 0
  br i1 %tobool4, label %if.else, label %do.body

do.body:                                          ; preds = %do.body, %if.end3
  %6 = load %struct.av** @PL_comppad, align 8, !tbaa !3
  %sv_any6 = getelementptr inbounds %struct.av* %6, i64 0, i32 0
  %7 = load %struct.xpvav** %sv_any6, align 8, !tbaa !3
  %xav_fill = getelementptr inbounds %struct.xpvav* %7, i64 0, i32 1
  %8 = load i64* %xav_fill, align 8, !tbaa !4
  %add = add nsw i64 %8, 1
  %conv = trunc i64 %add to i32
  %call = tail call %struct.sv** @Perl_av_fetch(%struct.av* %6, i32 %conv, i32 1) #3
  %9 = load %struct.sv** %call, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %9, i64 0, i32 2
  %10 = load i32* %sv_flags, align 4, !tbaa !0
  %and7 = and i32 %10, 256
  %tobool8 = icmp eq i32 %and7, 0
  br i1 %tobool8, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  %11 = load %struct.av** @PL_comppad, align 8, !tbaa !3
  %sv_any9 = getelementptr inbounds %struct.av* %11, i64 0, i32 0
  %12 = load %struct.xpvav** %sv_any9, align 8, !tbaa !3
  %xav_fill10 = getelementptr inbounds %struct.xpvav* %12, i64 0, i32 1
  %13 = load i64* %xav_fill10, align 8, !tbaa !4
  %conv11 = trunc i64 %13 to i32
  br label %if.end31

if.else:                                          ; preds = %if.end3
  %14 = load %struct.av** @PL_comppad_name, align 8, !tbaa !3
  %sv_any12 = getelementptr inbounds %struct.av* %14, i64 0, i32 0
  %15 = load %struct.xpvav** %sv_any12, align 8, !tbaa !3
  %xav_array13 = getelementptr inbounds %struct.xpvav* %15, i64 0, i32 0
  %16 = load i8** %xav_array13, align 8, !tbaa !3
  %17 = bitcast i8* %16 to %struct.sv**
  %xav_fill15 = getelementptr inbounds %struct.xpvav* %15, i64 0, i32 1
  %18 = load i64* %xav_fill15, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true, %if.end24, %if.else
  %19 = load i32* @PL_padix, align 4, !tbaa !0
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* @PL_padix, align 4, !tbaa !0
  %conv16 = sext i32 %inc to i64
  %cmp17 = icmp sgt i64 %conv16, %18
  br i1 %cmp17, label %if.end24, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.sv** %17, i64 %conv16
  %20 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %tobool19 = icmp eq %struct.sv* %20, null
  %cmp21 = icmp eq %struct.sv* %20, @PL_sv_undef
  %or.cond = or i1 %tobool19, %cmp21
  br i1 %or.cond, label %if.end24, label %for.cond

if.end24:                                         ; preds = %land.lhs.true, %for.cond
  %21 = load %struct.av** @PL_comppad, align 8, !tbaa !3
  %call25 = tail call %struct.sv** @Perl_av_fetch(%struct.av* %21, i32 %inc, i32 1) #3
  %22 = load %struct.sv** %call25, align 8, !tbaa !3
  %sv_flags26 = getelementptr inbounds %struct.sv* %22, i64 0, i32 2
  %23 = load i32* %sv_flags26, align 4, !tbaa !0
  %and27 = and i32 %23, 1536
  %tobool28 = icmp eq i32 %and27, 0
  br i1 %tobool28, label %for.end, label %for.cond

for.end:                                          ; preds = %if.end24
  %24 = load i32* @PL_padix, align 4, !tbaa !0
  %.pre42 = load %struct.av** @PL_comppad, align 8, !tbaa !3
  %sv_any33.phi.trans.insert = getelementptr inbounds %struct.av* %.pre42, i64 0, i32 0
  %.pre43 = load %struct.xpvav** %sv_any33.phi.trans.insert, align 8, !tbaa !3
  br label %if.end31

if.end31:                                         ; preds = %for.end, %do.end
  %25 = phi %struct.xpvav* [ %12, %do.end ], [ %.pre43, %for.end ]
  %26 = phi i32 [ %10, %do.end ], [ %23, %for.end ]
  %retval1.0 = phi i32 [ %conv11, %do.end ], [ %24, %for.end ]
  %sv.0 = phi %struct.sv* [ %9, %do.end ], [ %22, %for.end ]
  %sv_flags32 = getelementptr inbounds %struct.sv* %sv.0, i64 0, i32 2
  %or = or i32 %26, %tmptype
  store i32 %or, i32* %sv_flags32, align 4, !tbaa !0
  %xav_array34 = getelementptr inbounds %struct.xpvav* %25, i64 0, i32 0
  %27 = load i8** %xav_array34, align 8, !tbaa !3
  %28 = bitcast i8* %27 to %struct.sv**
  store %struct.sv** %28, %struct.sv*** @PL_curpad, align 8, !tbaa !3
  %conv35 = sext i32 %retval1.0 to i64
  ret i64 %conv35
}

; Function Attrs: optsize
declare %struct.sv* @Perl_newSV(i64) #1

; Function Attrs: optsize
declare signext i8 @Perl_sv_upgrade(%struct.sv*, i32) #1

; Function Attrs: optsize
declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

; Function Attrs: optsize
declare %struct.hv* @Perl_newHV() #1

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_pad_reset() #0 {
entry:
  store i32 0, i32* @PL_pad_reset_pending, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_pad_add_anon(%struct.sv* %sv, i16 zeroext %op_type) #0 {
entry:
  %call = tail call %struct.sv* @Perl_newSV(i64 0) #3
  %call1 = tail call signext i8 @Perl_sv_upgrade(%struct.sv* %call, i32 6) #3
  tail call void @Perl_sv_setpvn(%struct.sv* %call, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0), i64 1) #3
  %sv_any = getelementptr inbounds %struct.sv* %call, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !3
  %xiv_iv = getelementptr inbounds i8* %0, i64 24
  %1 = bitcast i8* %xiv_iv to i64*
  store i64 -1, i64* %1, align 8, !tbaa !4
  %xnv_nv = getelementptr inbounds i8* %0, i64 32
  %2 = bitcast i8* %xnv_nv to double*
  store double 1.000000e+00, double* %2, align 8, !tbaa !6
  %call3 = tail call i64 @Perl_pad_alloc(i32 undef, i32 1024) #4
  %3 = load %struct.av** @PL_comppad_name, align 8, !tbaa !3
  %conv4 = trunc i64 %call3 to i32
  %call5 = tail call %struct.sv** @Perl_av_store(%struct.av* %3, i32 %conv4, %struct.sv* %call) #3
  %4 = load %struct.av** @PL_comppad, align 8, !tbaa !3
  %call7 = tail call %struct.sv** @Perl_av_store(%struct.av* %4, i32 %conv4, %struct.sv* %sv) #3
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %5 = load i32* %sv_flags, align 4, !tbaa !0
  %or = or i32 %5, 1280
  store i32 %or, i32* %sv_flags, align 4, !tbaa !0
  %sv_any8 = bitcast %struct.sv* %sv to %struct.xpvcv**
  %6 = load %struct.xpvcv** %sv_any8, align 8, !tbaa !3
  %xcv_outside = getelementptr inbounds %struct.xpvcv* %6, i64 0, i32 16
  %7 = load %struct.cv** %xcv_outside, align 8, !tbaa !3
  %tobool = icmp eq %struct.cv* %7, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %xcv_flags = getelementptr inbounds %struct.xpvcv* %6, i64 0, i32 17
  %8 = load i16* %xcv_flags, align 2, !tbaa !5
  %or11 = or i16 %8, 1024
  store i16 %or11, i16* %xcv_flags, align 2, !tbaa !5
  %9 = bitcast %struct.cv* %7 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %9) #3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret i64 %call3
}

; Function Attrs: optsize
declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_pad_check_dup(i8* %name, i8 signext %is_our, %struct.hv* %ourstash) #0 {
entry:
  %0 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings = getelementptr inbounds %struct.cop* %0, i64 0, i32 14
  %1 = load %struct.sv** %cop_warnings, align 8, !tbaa !3
  %cmp = icmp eq %struct.sv* %1, null
  br i1 %cmp, label %lor.lhs.false7, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings1 = getelementptr inbounds %struct.cop* %2, i64 0, i32 14
  %3 = load %struct.sv** %cop_warnings1, align 8, !tbaa !3
  %cmp2 = icmp eq %struct.sv* %3, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp2, label %lor.lhs.false7, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings4 = getelementptr inbounds %struct.cop* %4, i64 0, i32 14
  %5 = load %struct.sv** %cop_warnings4, align 8, !tbaa !3
  %cmp5 = icmp eq %struct.sv* %5, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp5, label %lor.lhs.false15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true3
  %6 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings6 = getelementptr inbounds %struct.cop* %6, i64 0, i32 14
  %7 = load %struct.sv** %cop_warnings6, align 8, !tbaa !3
  %sv_any = getelementptr inbounds %struct.sv* %7, i64 0, i32 0
  %8 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %8 to i8**
  %9 = load i8** %xpv_pv, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %9, i64 3
  %10 = load i8* %arrayidx, align 1, !tbaa !1
  %and = and i8 %10, 1
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %lor.lhs.false7, label %lor.lhs.false15

lor.lhs.false7:                                   ; preds = %lor.lhs.false, %land.lhs.true, %entry
  %11 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings8 = getelementptr inbounds %struct.cop* %11, i64 0, i32 14
  %12 = load %struct.sv** %cop_warnings8, align 8, !tbaa !3
  %cmp9 = icmp eq %struct.sv* %12, null
  br i1 %cmp9, label %land.lhs.true11, label %if.end106

land.lhs.true11:                                  ; preds = %lor.lhs.false7
  %13 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and13 = and i8 %13, 1
  %tobool14 = icmp eq i8 %and13, 0
  br i1 %tobool14, label %if.end106, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false, %land.lhs.true11, %land.lhs.true3
  %14 = load %struct.av** @PL_comppad_name, align 8, !tbaa !3
  %sv_any16 = getelementptr inbounds %struct.av* %14, i64 0, i32 0
  %15 = load %struct.xpvav** %sv_any16, align 8, !tbaa !3
  %xav_fill = getelementptr inbounds %struct.xpvav* %15, i64 0, i32 1
  %16 = load i64* %xav_fill, align 8, !tbaa !4
  %cmp17 = icmp slt i64 %16, 0
  br i1 %cmp17, label %if.end106, label %if.end

if.end:                                           ; preds = %lor.lhs.false15
  %xav_array = getelementptr inbounds %struct.xpvav* %15, i64 0, i32 0
  %17 = load i8** %xav_array, align 8, !tbaa !3
  %18 = bitcast i8* %17 to %struct.sv**
  %conv22136 = trunc i64 %16 to i32
  %19 = load i32* @PL_comppad_name_floor, align 4, !tbaa !0
  %cmp23137 = icmp sgt i32 %conv22136, %19
  br i1 %cmp23137, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %tobool43 = icmp eq i8 %is_our, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %off.0138 = phi i64 [ %16, %for.body.lr.ph ], [ %dec65, %for.inc ]
  %arrayidx25 = getelementptr inbounds %struct.sv** %18, i64 %off.0138
  %20 = load %struct.sv** %arrayidx25, align 8, !tbaa !3
  %tobool26 = icmp eq %struct.sv* %20, null
  %cmp28 = icmp eq %struct.sv* %20, @PL_sv_undef
  %or.cond = or i1 %tobool26, %cmp28
  br i1 %or.cond, label %for.inc, label %land.lhs.true30

land.lhs.true30:                                  ; preds = %for.body
  %sv_flags = getelementptr inbounds %struct.sv* %20, i64 0, i32 2
  %21 = load i32* %sv_flags, align 4, !tbaa !0
  %and31 = and i32 %21, 1048576
  %tobool32 = icmp eq i32 %and31, 0
  br i1 %tobool32, label %land.lhs.true33, label %for.inc

land.lhs.true33:                                  ; preds = %land.lhs.true30
  %sv_any34 = getelementptr inbounds %struct.sv* %20, i64 0, i32 0
  %22 = load i8** %sv_any34, align 8, !tbaa !3
  %xiv_iv = getelementptr inbounds i8* %22, i64 24
  %23 = bitcast i8* %xiv_iv to i64*
  %24 = load i64* %23, align 8, !tbaa !4
  switch i64 %24, label %for.inc [
    i64 999999999, label %land.lhs.true42
    i64 0, label %land.lhs.true42
  ]

land.lhs.true42:                                  ; preds = %land.lhs.true33, %land.lhs.true33
  br i1 %tobool43, label %land.lhs.true52, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %land.lhs.true42
  %tobool47 = icmp slt i32 %21, 0
  br i1 %tobool47, label %land.lhs.true48, label %for.inc

land.lhs.true48:                                  ; preds = %lor.lhs.false44
  %xgv_stash = getelementptr inbounds i8* %22, i64 80
  %25 = bitcast i8* %xgv_stash to %struct.hv**
  %26 = load %struct.hv** %25, align 8, !tbaa !3
  %cmp50 = icmp eq %struct.hv* %26, %ourstash
  br i1 %cmp50, label %land.lhs.true52, label %for.inc

land.lhs.true52:                                  ; preds = %land.lhs.true42, %land.lhs.true48
  %xpv_pv54 = bitcast i8* %22 to i8**
  %27 = load i8** %xpv_pv54, align 8, !tbaa !3
  %call = tail call i32 @strcmp(i8* %name, i8* %27) #3
  %tobool55 = icmp eq i32 %call, 0
  br i1 %tobool55, label %if.then56, label %for.inc

if.then56:                                        ; preds = %land.lhs.true52
  %tobool58 = icmp ne i8 %is_our, 0
  %cond = select i1 %tobool58, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0)
  %cmp61 = icmp eq i64 %24, 999999999
  %cond63 = select i1 %cmp61, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str6, i64 0, i64 0)
  tail call void (i32, i8*, ...)* @Perl_warner(i32 12, i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i8* %cond, i8* %name, i8* %cond63) #3
  %dec = add i64 %off.0138, -1
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true33, %land.lhs.true52, %land.lhs.true30, %for.body, %lor.lhs.false44, %land.lhs.true48
  %dec65 = add i64 %off.0138, -1
  %conv22 = trunc i64 %dec65 to i32
  %cmp23 = icmp sgt i32 %conv22, %19
  br i1 %cmp23, label %for.body, label %for.end

for.end:                                          ; preds = %if.end, %for.inc, %if.then56
  %off.1 = phi i64 [ %dec, %if.then56 ], [ %16, %if.end ], [ %dec65, %for.inc ]
  %tobool66 = icmp eq i8 %is_our, 0
  br i1 %tobool66, label %if.end106, label %do.body

do.body:                                          ; preds = %for.end, %do.cond
  %off.2 = phi i64 [ %dec103, %do.cond ], [ %off.1, %for.end ]
  %arrayidx68 = getelementptr inbounds %struct.sv** %18, i64 %off.2
  %28 = load %struct.sv** %arrayidx68, align 8, !tbaa !3
  %tobool69 = icmp eq %struct.sv* %28, null
  %cmp71 = icmp eq %struct.sv* %28, @PL_sv_undef
  %or.cond134 = or i1 %tobool69, %cmp71
  br i1 %or.cond134, label %do.cond, label %land.lhs.true73

land.lhs.true73:                                  ; preds = %do.body
  %sv_flags74 = getelementptr inbounds %struct.sv* %28, i64 0, i32 2
  %29 = load i32* %sv_flags74, align 4, !tbaa !0
  %and75 = and i32 %29, 1048576
  %tobool76 = icmp eq i32 %and75, 0
  br i1 %tobool76, label %land.lhs.true77, label %do.cond

land.lhs.true77:                                  ; preds = %land.lhs.true73
  %sv_any78 = getelementptr inbounds %struct.sv* %28, i64 0, i32 0
  %30 = load i8** %sv_any78, align 8, !tbaa !3
  %xiv_iv79 = getelementptr inbounds i8* %30, i64 24
  %31 = bitcast i8* %xiv_iv79 to i64*
  %32 = load i64* %31, align 8, !tbaa !4
  switch i64 %32, label %do.cond [
    i64 999999999, label %land.lhs.true87
    i64 0, label %land.lhs.true87
  ]

land.lhs.true87:                                  ; preds = %land.lhs.true77, %land.lhs.true77
  %tobool90 = icmp slt i32 %29, 0
  br i1 %tobool90, label %land.lhs.true91, label %do.cond

land.lhs.true91:                                  ; preds = %land.lhs.true87
  %xgv_stash93 = getelementptr inbounds i8* %30, i64 80
  %33 = bitcast i8* %xgv_stash93 to %struct.hv**
  %34 = load %struct.hv** %33, align 8, !tbaa !3
  %cmp94 = icmp eq %struct.hv* %34, %ourstash
  br i1 %cmp94, label %land.lhs.true96, label %do.cond

land.lhs.true96:                                  ; preds = %land.lhs.true91
  %xpv_pv98 = bitcast i8* %30 to i8**
  %35 = load i8** %xpv_pv98, align 8, !tbaa !3
  %call99 = tail call i32 @strcmp(i8* %name, i8* %35) #3
  %tobool100 = icmp eq i32 %call99, 0
  br i1 %tobool100, label %if.then101, label %do.cond

if.then101:                                       ; preds = %land.lhs.true96
  tail call void (i32, i8*, ...)* @Perl_warner(i32 12, i8* getelementptr inbounds ([29 x i8]* @.str7, i64 0, i64 0), i8* %name) #3
  tail call void (i32, i8*, ...)* @Perl_warner(i32 12, i8* getelementptr inbounds ([43 x i8]* @.str8, i64 0, i64 0)) #3
  br label %if.end106

do.cond:                                          ; preds = %land.lhs.true77, %land.lhs.true96, %land.lhs.true73, %do.body, %land.lhs.true87, %land.lhs.true91
  %dec103 = add i64 %off.2, -1
  %cmp104 = icmp eq i64 %off.2, 0
  br i1 %cmp104, label %if.end106, label %do.body

if.end106:                                        ; preds = %do.cond, %for.end, %land.lhs.true11, %if.then101, %lor.lhs.false7, %lor.lhs.false15
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #2

; Function Attrs: optsize
declare void @Perl_warner(i32, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_pad_findmy(i8* %name) #0 {
entry:
  %0 = load %struct.av** @PL_comppad_name, align 8, !tbaa !3
  %sv_any = getelementptr inbounds %struct.av* %0, i64 0, i32 0
  %1 = load %struct.xpvav** %sv_any, align 8, !tbaa !3
  %xav_array = getelementptr inbounds %struct.xpvav* %1, i64 0, i32 0
  %2 = load i8** %xav_array, align 8, !tbaa !3
  %3 = bitcast i8* %2 to %struct.sv**
  %4 = load i32* @PL_cop_seqmax, align 4, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %1, i64 0, i32 1
  %5 = load i64* %xav_fill, align 8, !tbaa !4
  %conv = trunc i64 %5 to i32
  %cmp68 = icmp sgt i32 %conv, 0
  br i1 %cmp68, label %for.body.lr.ph, label %if.end37

for.body.lr.ph:                                   ; preds = %entry
  %sext75 = shl i64 %5, 32
  %6 = ashr exact i64 %sext75, 32
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ %6, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %fake_off.070 = phi i32 [ 0, %for.body.lr.ph ], [ %fake_off.1, %for.inc ]
  %our_off.069 = phi i32 [ 0, %for.body.lr.ph ], [ %our_off.1, %for.inc ]
  %arrayidx = getelementptr inbounds %struct.sv** %3, i64 %indvars.iv
  %7 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %tobool = icmp eq %struct.sv* %7, null
  %cmp3 = icmp eq %struct.sv* %7, @PL_sv_undef
  %or.cond = or i1 %tobool, %cmp3
  br i1 %or.cond, label %for.inc, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %for.body
  %sv_any6 = getelementptr inbounds %struct.sv* %7, i64 0, i32 0
  %8 = load i8** %sv_any6, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %8 to i8**
  %9 = load i8** %xpv_pv, align 8, !tbaa !3
  %call = tail call i32 @strcmp(i8* %9, i8* %name) #3
  %tobool7 = icmp eq i32 %call, 0
  br i1 %tobool7, label %if.end, label %for.inc

if.end:                                           ; preds = %lor.lhs.false5
  %sv_flags = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %10 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %10, 1048576
  %tobool8 = icmp eq i32 %and, 0
  %11 = trunc i64 %indvars.iv to i32
  br i1 %tobool8, label %if.else, label %for.inc

if.else:                                          ; preds = %if.end
  %xnv_nv = getelementptr inbounds i8* %8, i64 32
  %12 = bitcast i8* %xnv_nv to double*
  %13 = load double* %12, align 8, !tbaa !6
  %call11 = tail call i32 @Perl_cast_ulong(double %13) #3
  %cmp12 = icmp ugt i32 %4, %call11
  br i1 %cmp12, label %land.lhs.true, label %if.else20

land.lhs.true:                                    ; preds = %if.else
  %14 = load i8** %sv_any6, align 8, !tbaa !3
  %xiv_iv = getelementptr inbounds i8* %14, i64 24
  %15 = bitcast i8* %xiv_iv to i64*
  %16 = load i64* %15, align 8, !tbaa !4
  %conv15 = trunc i64 %16 to i32
  %cmp16 = icmp ugt i32 %4, %conv15
  br i1 %cmp16, label %if.else20, label %return

if.else20:                                        ; preds = %land.lhs.true, %if.else
  %17 = load i32* %sv_flags, align 4, !tbaa !0
  %tobool23 = icmp slt i32 %17, 0
  br i1 %tobool23, label %land.lhs.true24, label %for.inc

land.lhs.true24:                                  ; preds = %if.else20
  %18 = load i8** %sv_any6, align 8, !tbaa !3
  %xnv_nv26 = getelementptr inbounds i8* %18, i64 32
  %19 = bitcast i8* %xnv_nv26 to double*
  %20 = load double* %19, align 8, !tbaa !6
  %call27 = tail call i32 @Perl_cast_ulong(double %20) #3
  %cmp28 = icmp eq i32 %call27, 999999999
  %off.0.our_off.0 = select i1 %cmp28, i32 %11, i32 %our_off.069
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true24, %if.end, %lor.lhs.false5, %if.else20, %for.body
  %our_off.1 = phi i32 [ %our_off.069, %for.body ], [ %our_off.069, %lor.lhs.false5 ], [ %our_off.069, %if.else20 ], [ %our_off.069, %if.end ], [ %off.0.our_off.0, %land.lhs.true24 ]
  %fake_off.1 = phi i32 [ %fake_off.070, %for.body ], [ %fake_off.070, %lor.lhs.false5 ], [ %fake_off.070, %if.else20 ], [ %11, %if.end ], [ %fake_off.070, %land.lhs.true24 ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %21 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp sgt i32 %21, 0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc
  %tobool34 = icmp eq i32 %fake_off.1, 0
  br i1 %tobool34, label %if.end37, label %if.then35

if.then35:                                        ; preds = %for.end
  %conv36 = sext i32 %fake_off.1 to i64
  br label %return

if.end37:                                         ; preds = %entry, %for.end
  %our_off.0.lcssa77 = phi i32 [ %our_off.1, %for.end ], [ 0, %entry ]
  %22 = load %struct.cv** @PL_compcv, align 8, !tbaa !3
  %call38 = tail call fastcc i64 @S_pad_findlex(i8* %name, i64 0, %struct.cv* %22) #4
  %conv39 = trunc i64 %call38 to i32
  %tobool40 = icmp eq i32 %conv39, 0
  br i1 %tobool40, label %if.end43, label %if.then41

if.then41:                                        ; preds = %if.end37
  %sext = shl i64 %call38, 32
  %conv42 = ashr exact i64 %sext, 32
  br label %return

if.end43:                                         ; preds = %if.end37
  %tobool44 = icmp eq i32 %our_off.0.lcssa77, 0
  %conv46 = sext i32 %our_off.0.lcssa77 to i64
  %.conv46 = select i1 %tobool44, i64 -1, i64 %conv46
  ret i64 %.conv46

return:                                           ; preds = %land.lhs.true, %if.then41, %if.then35
  %retval.0 = phi i64 [ %conv36, %if.then35 ], [ %conv42, %if.then41 ], [ %indvars.iv, %land.lhs.true ]
  ret i64 %retval.0
}

; Function Attrs: optsize
declare i32 @Perl_cast_ulong(double) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc i64 @S_pad_findlex(i8* %name, i64 %newoff, %struct.cv* nocapture %innercv) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.cv* %innercv, i64 0, i32 0
  %0 = load %struct.xpvcv** %sv_any, align 8, !tbaa !3
  %xcv_outside = getelementptr inbounds %struct.xpvcv* %0, i64 0, i32 16
  %1 = load %struct.cv** %xcv_outside, align 8, !tbaa !3
  %tobool368 = icmp eq %struct.cv* %1, null
  br i1 %tobool368, label %return, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %tobool36 = icmp ne i64 %newoff, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc52
  %.pn = phi %struct.xpvcv* [ %0, %for.body.lr.ph ], [ %24, %for.inc52 ]
  %cv.0369 = phi %struct.cv* [ %1, %for.body.lr.ph ], [ %25, %for.inc52 ]
  %seq.0371.in = getelementptr inbounds %struct.xpvcv* %.pn, i64 0, i32 18
  %seq.0371 = load i32* %seq.0371.in, align 4
  %sv_any2 = getelementptr inbounds %struct.cv* %cv.0369, i64 0, i32 0
  %2 = load %struct.xpvcv** %sv_any2, align 8, !tbaa !3
  %xcv_padlist = getelementptr inbounds %struct.xpvcv* %2, i64 0, i32 15
  %3 = load %struct.av** %xcv_padlist, align 8, !tbaa !3
  %tobool3 = icmp eq %struct.av* %3, null
  br i1 %tobool3, label %for.inc52, label %if.end

if.end:                                           ; preds = %for.body
  %call = tail call %struct.sv** @Perl_av_fetch(%struct.av* %3, i32 0, i32 0) #3
  %tobool4 = icmp eq %struct.sv** %call, null
  br i1 %tobool4, label %for.inc52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.sv** %call, align 8, !tbaa !3
  %cmp = icmp eq %struct.sv* %4, @PL_sv_undef
  br i1 %cmp, label %for.inc52, label %if.end6

if.end6:                                          ; preds = %lor.lhs.false
  %sv_any7 = bitcast %struct.sv* %4 to %struct.xpvav**
  %5 = load %struct.xpvav** %sv_any7, align 8, !tbaa !3
  %xav_array = getelementptr inbounds %struct.xpvav* %5, i64 0, i32 0
  %6 = load i8** %xav_array, align 8, !tbaa !3
  %7 = bitcast i8* %6 to %struct.sv**
  %8 = load %struct.xpvcv** %sv_any2, align 8, !tbaa !3
  %xcv_depth = getelementptr inbounds %struct.xpvcv* %8, i64 0, i32 14
  %9 = load i64* %xcv_depth, align 8, !tbaa !4
  %conv = trunc i64 %9 to i32
  %xav_fill = getelementptr inbounds %struct.xpvav* %5, i64 0, i32 1
  %10 = load i64* %xav_fill, align 8, !tbaa !4
  %conv10 = trunc i64 %10 to i32
  %cmp12350 = icmp sgt i32 %conv10, 0
  br i1 %cmp12350, label %for.body14.lr.ph, label %for.inc52

for.body14.lr.ph:                                 ; preds = %if.end6
  %tobool38 = icmp eq i32 %conv, 0
  %or.cond338 = and i1 %tobool36, %tobool38
  %sext = shl i64 %10, 32
  %11 = ashr exact i64 %sext, 32
  br label %for.body14

for.body14:                                       ; preds = %for.body14.lr.ph, %for.inc
  %indvars.iv = phi i64 [ %11, %for.body14.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %fake_off.0352 = phi i32 [ 0, %for.body14.lr.ph ], [ %fake_off.1, %for.inc ]
  %off.0351 = phi i32 [ %conv10, %for.body14.lr.ph ], [ %dec, %for.inc ]
  %arrayidx = getelementptr inbounds %struct.sv** %7, i64 %indvars.iv
  %12 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %tobool15 = icmp eq %struct.sv* %12, null
  %cmp17 = icmp eq %struct.sv* %12, @PL_sv_undef
  %or.cond = or i1 %tobool15, %cmp17
  br i1 %or.cond, label %for.inc, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %for.body14
  %sv_any20 = getelementptr inbounds %struct.sv* %12, i64 0, i32 0
  %13 = load i8** %sv_any20, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %13 to i8**
  %14 = load i8** %xpv_pv, align 8, !tbaa !3
  %call21 = tail call i32 @strcmp(i8* %14, i8* %name) #3
  %tobool22 = icmp eq i32 %call21, 0
  br i1 %tobool22, label %if.end24, label %for.inc

if.end24:                                         ; preds = %lor.lhs.false19
  %sv_flags = getelementptr inbounds %struct.sv* %12, i64 0, i32 2
  %15 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %15, 1048576
  %tobool25 = icmp eq i32 %and, 0
  %16 = trunc i64 %indvars.iv to i32
  br i1 %tobool25, label %if.else, label %for.inc

if.else:                                          ; preds = %if.end24
  %xnv_nv = getelementptr inbounds i8* %13, i64 32
  %17 = bitcast i8* %xnv_nv to double*
  %18 = load double* %17, align 8, !tbaa !6
  %call28 = tail call i32 @Perl_cast_ulong(double %18) #3
  %cmp29 = icmp ugt i32 %seq.0371, %call28
  br i1 %cmp29, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %if.else
  %19 = load i8** %sv_any20, align 8, !tbaa !3
  %xiv_iv = getelementptr inbounds i8* %19, i64 24
  %20 = bitcast i8* %xiv_iv to i64*
  %21 = load i64* %20, align 8, !tbaa !4
  %conv32 = trunc i64 %21 to i32
  %cmp33 = icmp ugt i32 %seq.0371, %conv32
  %brmerge = or i1 %cmp33, %or.cond338
  br i1 %brmerge, label %for.inc, label %found

for.inc:                                          ; preds = %land.lhs.true, %if.end24, %lor.lhs.false19, %if.else, %for.body14
  %fake_off.1 = phi i32 [ %fake_off.0352, %for.body14 ], [ %fake_off.0352, %lor.lhs.false19 ], [ %fake_off.0352, %land.lhs.true ], [ %fake_off.0352, %if.else ], [ %16, %if.end24 ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %dec = add nsw i32 %off.0351, -1
  %22 = trunc i64 %indvars.iv.next to i32
  %cmp12 = icmp sgt i32 %22, 0
  br i1 %cmp12, label %for.body14, label %for.end

for.end:                                          ; preds = %for.inc
  %tobool42 = icmp eq i32 %fake_off.1, 0
  br i1 %tobool42, label %for.inc52, label %if.then43

if.then43:                                        ; preds = %for.end
  %tobool46 = icmp eq i32 %conv, 0
  %or.cond339 = and i1 %tobool36, %tobool46
  br i1 %or.cond339, label %return, label %if.end48

if.end48:                                         ; preds = %if.then43
  %idxprom49 = sext i32 %fake_off.1 to i64
  %arrayidx50 = getelementptr inbounds %struct.sv** %7, i64 %idxprom49
  %23 = load %struct.sv** %arrayidx50, align 8, !tbaa !3
  br label %found

for.inc52:                                        ; preds = %if.end6, %for.end, %lor.lhs.false, %if.end, %for.body
  %24 = load %struct.xpvcv** %sv_any2, align 8, !tbaa !3
  %xcv_outside56 = getelementptr inbounds %struct.xpvcv* %24, i64 0, i32 16
  %25 = load %struct.cv** %xcv_outside56, align 8, !tbaa !3
  %tobool = icmp eq %struct.cv* %25, null
  br i1 %tobool, label %return, label %for.body

found:                                            ; preds = %land.lhs.true, %if.end48
  %sv.0 = phi %struct.sv* [ %23, %if.end48 ], [ %12, %land.lhs.true ]
  %off.1 = phi i32 [ %fake_off.1, %if.end48 ], [ %off.0351, %land.lhs.true ]
  %tobool58 = icmp eq i32 %conv, 0
  %.op = shl i64 %9, 32
  %.op.op = ashr exact i64 %.op, 32
  %idxprom61 = select i1 %tobool58, i64 1, i64 %.op.op
  %sv_any62 = getelementptr inbounds %struct.av* %3, i64 0, i32 0
  %26 = load %struct.xpvav** %sv_any62, align 8, !tbaa !3
  %xav_array63 = getelementptr inbounds %struct.xpvav* %26, i64 0, i32 0
  %27 = load i8** %xav_array63, align 8, !tbaa !3
  %28 = bitcast i8* %27 to %struct.sv**
  %arrayidx64 = getelementptr inbounds %struct.sv** %28, i64 %idxprom61
  %29 = load %struct.sv** %arrayidx64, align 8, !tbaa !3
  %30 = bitcast %struct.sv* %29 to %struct.av*
  %call65 = tail call %struct.sv** @Perl_av_fetch(%struct.av* %30, i32 %off.1, i32 1) #3
  %31 = load %struct.sv** %call65, align 8, !tbaa !3
  %tobool66 = icmp eq i64 %newoff, 0
  br i1 %tobool66, label %if.then67, label %if.end267

if.then67:                                        ; preds = %found
  %sv_any68 = getelementptr inbounds %struct.sv* %sv.0, i64 0, i32 0
  %32 = load i8** %sv_any68, align 8, !tbaa !3
  %xpv_pv69 = bitcast i8* %32 to i8**
  %33 = load i8** %xpv_pv69, align 8, !tbaa !3
  %sv_flags70 = getelementptr inbounds %struct.sv* %sv.0, i64 0, i32 2
  %34 = load i32* %sv_flags70, align 4, !tbaa !0
  %and71 = and i32 %34, 1073741824
  %tobool72 = icmp eq i32 %and71, 0
  br i1 %tobool72, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then67
  %xmg_stash = getelementptr inbounds i8* %32, i64 48
  %35 = bitcast i8* %xmg_stash to %struct.hv**
  %36 = load %struct.hv** %35, align 8, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %if.then67, %cond.true
  %cond = phi %struct.hv* [ null, %if.then67 ], [ %36, %cond.true ]
  %tobool76 = icmp slt i32 %34, 0
  br i1 %tobool76, label %cond.true77, label %cond.end80

cond.true77:                                      ; preds = %cond.end
  %xgv_stash = getelementptr inbounds i8* %32, i64 80
  %37 = bitcast i8* %xgv_stash to %struct.hv**
  %38 = load %struct.hv** %37, align 8, !tbaa !3
  br label %cond.end80

cond.end80:                                       ; preds = %cond.end, %cond.true77
  %cond81 = phi %struct.hv* [ %38, %cond.true77 ], [ null, %cond.end ]
  %call82 = tail call i64 @Perl_pad_add_name(i8* %33, %struct.hv* %cond, %struct.hv* %cond81, i8 signext 1) #4
  %39 = load %struct.cv** @PL_compcv, align 8, !tbaa !3
  %sv_any83 = getelementptr inbounds %struct.cv* %39, i64 0, i32 0
  %40 = load %struct.xpvcv** %sv_any83, align 8, !tbaa !3
  %xcv_flags = getelementptr inbounds %struct.xpvcv* %40, i64 0, i32 17
  %41 = load i16* %xcv_flags, align 2, !tbaa !5
  %conv84 = zext i16 %41 to i32
  %and85 = and i32 %conv84, 4
  %tobool86 = icmp eq i32 %and85, 0
  br i1 %tobool86, label %lor.lhs.false87, label %if.then92

lor.lhs.false87:                                  ; preds = %cond.end80
  %sv_flags88 = getelementptr inbounds %struct.cv* %39, i64 0, i32 2
  %42 = load i32* %sv_flags88, align 4, !tbaa !0
  %and89 = and i32 %42, 255
  %cmp90 = icmp eq i32 %and89, 14
  br i1 %cmp90, label %if.then92, label %if.else215

if.then92:                                        ; preds = %cond.end80, %lor.lhs.false87
  %or = or i16 %41, 1
  store i16 %or, i16* %xcv_flags, align 2, !tbaa !5
  %cmp97 = icmp eq %struct.cv* %cv.0369, %1
  br i1 %cmp97, label %if.then99, label %land.rhs

if.then99:                                        ; preds = %if.then92
  %and103 = and i16 %41, 4
  %tobool104 = icmp eq i16 %and103, 0
  %.340 = select i1 %tobool104, %struct.sv* %31, %struct.sv* null
  br label %if.end267

land.rhs:                                         ; preds = %if.then92, %cond.end161
  %bcv.0347 = phi %struct.cv* [ %73, %cond.end161 ], [ %1, %if.then92 ]
  %sv_any113 = getelementptr inbounds %struct.cv* %bcv.0347, i64 0, i32 0
  %43 = load %struct.xpvcv** %sv_any113, align 8, !tbaa !3
  %xcv_flags114 = getelementptr inbounds %struct.xpvcv* %43, i64 0, i32 17
  %44 = load i16* %xcv_flags114, align 2, !tbaa !5
  %conv115 = zext i16 %44 to i32
  %and116 = and i32 %conv115, 1
  %lnot = icmp eq i32 %and116, 0
  br i1 %lnot, label %for.body118, label %if.end267

for.body118:                                      ; preds = %land.rhs
  %and122 = and i32 %conv115, 4
  %tobool123 = icmp eq i32 %and122, 0
  br i1 %tobool123, label %if.else168, label %if.then124

if.then124:                                       ; preds = %for.body118
  %45 = load %struct.av** @PL_comppad_name, align 8, !tbaa !3
  %46 = load %struct.av** @PL_comppad, align 8, !tbaa !3
  %xcv_padlist126 = getelementptr inbounds %struct.xpvcv* %43, i64 0, i32 15
  %47 = load %struct.av** %xcv_padlist126, align 8, !tbaa !3
  %sv_any127 = getelementptr inbounds %struct.av* %47, i64 0, i32 0
  %48 = load %struct.xpvav** %sv_any127, align 8, !tbaa !3
  %xav_array128 = getelementptr inbounds %struct.xpvav* %48, i64 0, i32 0
  %49 = load i8** %xav_array128, align 8, !tbaa !3
  %50 = bitcast i8* %49 to %struct.sv**
  %51 = load %struct.sv** %50, align 8, !tbaa !3
  %52 = bitcast %struct.sv* %51 to %struct.av*
  store %struct.av* %52, %struct.av** @PL_comppad_name, align 8, !tbaa !3
  %53 = load %struct.xpvav** %sv_any127, align 8, !tbaa !3
  %xav_array131 = getelementptr inbounds %struct.xpvav* %53, i64 0, i32 0
  %54 = load i8** %xav_array131, align 8, !tbaa !3
  %arrayidx132 = getelementptr inbounds i8* %54, i64 8
  %55 = bitcast i8* %arrayidx132 to %struct.sv**
  %56 = load %struct.sv** %55, align 8, !tbaa !3
  %57 = bitcast %struct.sv* %56 to %struct.av*
  store %struct.av* %57, %struct.av** @PL_comppad, align 8, !tbaa !3
  %sv_any133 = bitcast %struct.sv* %56 to %struct.xpvav**
  %58 = load %struct.xpvav** %sv_any133, align 8, !tbaa !3
  %xav_array134 = getelementptr inbounds %struct.xpvav* %58, i64 0, i32 0
  %59 = load i8** %xav_array134, align 8, !tbaa !3
  %60 = bitcast i8* %59 to %struct.sv**
  store %struct.sv** %60, %struct.sv*** @PL_curpad, align 8, !tbaa !3
  %61 = load i8** %sv_any68, align 8, !tbaa !3
  %xpv_pv136 = bitcast i8* %61 to i8**
  %62 = load i8** %xpv_pv136, align 8, !tbaa !3
  %63 = load i32* %sv_flags70, align 4, !tbaa !0
  %and138 = and i32 %63, 1073741824
  %tobool139 = icmp eq i32 %and138, 0
  br i1 %tobool139, label %cond.end144, label %cond.true140

cond.true140:                                     ; preds = %if.then124
  %xmg_stash142 = getelementptr inbounds i8* %61, i64 48
  %64 = bitcast i8* %xmg_stash142 to %struct.hv**
  %65 = load %struct.hv** %64, align 8, !tbaa !3
  br label %cond.end144

cond.end144:                                      ; preds = %if.then124, %cond.true140
  %cond145 = phi %struct.hv* [ null, %if.then124 ], [ %65, %cond.true140 ]
  %tobool148 = icmp slt i32 %63, 0
  br i1 %tobool148, label %cond.true149, label %cond.end153

cond.true149:                                     ; preds = %cond.end144
  %xgv_stash151 = getelementptr inbounds i8* %61, i64 80
  %66 = bitcast i8* %xgv_stash151 to %struct.hv**
  %67 = load %struct.hv** %66, align 8, !tbaa !3
  br label %cond.end153

cond.end153:                                      ; preds = %cond.end144, %cond.true149
  %cond154 = phi %struct.hv* [ %67, %cond.true149 ], [ null, %cond.end144 ]
  %call155 = tail call i64 @Perl_pad_add_name(i8* %62, %struct.hv* %cond145, %struct.hv* %cond154, i8 signext 1) #4
  store %struct.av* %45, %struct.av** @PL_comppad_name, align 8, !tbaa !3
  store %struct.av* %46, %struct.av** @PL_comppad, align 8, !tbaa !3
  %tobool156 = icmp eq %struct.av* %46, null
  br i1 %tobool156, label %cond.end161, label %cond.true157

cond.true157:                                     ; preds = %cond.end153
  %sv_any158 = getelementptr inbounds %struct.av* %46, i64 0, i32 0
  %68 = load %struct.xpvav** %sv_any158, align 8, !tbaa !3
  %xav_array159 = getelementptr inbounds %struct.xpvav* %68, i64 0, i32 0
  %69 = load i8** %xav_array159, align 8, !tbaa !3
  %70 = bitcast i8* %69 to %struct.sv**
  br label %cond.end161

cond.end161:                                      ; preds = %cond.end153, %cond.true157
  %cond162 = phi %struct.sv** [ %70, %cond.true157 ], [ null, %cond.end153 ]
  store %struct.sv** %cond162, %struct.sv*** @PL_curpad, align 8, !tbaa !3
  %71 = load %struct.xpvcv** %sv_any113, align 8, !tbaa !3
  %xcv_flags164 = getelementptr inbounds %struct.xpvcv* %71, i64 0, i32 17
  %72 = load i16* %xcv_flags164, align 2, !tbaa !5
  %or166 = or i16 %72, 1
  store i16 %or166, i16* %xcv_flags164, align 2, !tbaa !5
  %xcv_outside212 = getelementptr inbounds %struct.xpvcv* %71, i64 0, i32 16
  %73 = load %struct.cv** %xcv_outside212, align 8, !tbaa !3
  %tobool109 = icmp eq %struct.cv* %73, null
  %cmp111 = icmp eq %struct.cv* %73, %cv.0369
  %or.cond341 = or i1 %tobool109, %cmp111
  br i1 %or.cond341, label %if.end267, label %land.rhs

if.else168:                                       ; preds = %for.body118
  %74 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings = getelementptr inbounds %struct.cop* %74, i64 0, i32 14
  %75 = load %struct.sv** %cop_warnings, align 8, !tbaa !3
  %cmp169 = icmp eq %struct.sv* %75, null
  br i1 %cmp169, label %lor.lhs.false187, label %land.lhs.true171

land.lhs.true171:                                 ; preds = %if.else168
  %76 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings172 = getelementptr inbounds %struct.cop* %76, i64 0, i32 14
  %77 = load %struct.sv** %cop_warnings172, align 8, !tbaa !3
  %cmp173 = icmp eq %struct.sv* %77, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp173, label %lor.lhs.false187, label %land.lhs.true175

land.lhs.true175:                                 ; preds = %land.lhs.true171
  %78 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings176 = getelementptr inbounds %struct.cop* %78, i64 0, i32 14
  %79 = load %struct.sv** %cop_warnings176, align 8, !tbaa !3
  %cmp177 = icmp eq %struct.sv* %79, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp177, label %land.lhs.true195, label %lor.lhs.false179

lor.lhs.false179:                                 ; preds = %land.lhs.true175
  %80 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings180 = getelementptr inbounds %struct.cop* %80, i64 0, i32 14
  %81 = load %struct.sv** %cop_warnings180, align 8, !tbaa !3
  %sv_any181 = getelementptr inbounds %struct.sv* %81, i64 0, i32 0
  %82 = load i8** %sv_any181, align 8, !tbaa !3
  %xpv_pv182 = bitcast i8* %82 to i8**
  %83 = load i8** %xpv_pv182, align 8, !tbaa !3
  %84 = load i8* %83, align 1, !tbaa !1
  %and185 = and i8 %84, 4
  %tobool186 = icmp eq i8 %and185, 0
  br i1 %tobool186, label %lor.lhs.false187, label %land.lhs.true195

lor.lhs.false187:                                 ; preds = %lor.lhs.false179, %land.lhs.true171, %if.else168
  %85 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings188 = getelementptr inbounds %struct.cop* %85, i64 0, i32 14
  %86 = load %struct.sv** %cop_warnings188, align 8, !tbaa !3
  %cmp189 = icmp eq %struct.sv* %86, null
  br i1 %cmp189, label %land.lhs.true191, label %if.end267

land.lhs.true191:                                 ; preds = %lor.lhs.false187
  %87 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and193 = and i8 %87, 1
  %tobool194 = icmp eq i8 %and193, 0
  br i1 %tobool194, label %if.end267, label %land.lhs.true195

land.lhs.true195:                                 ; preds = %lor.lhs.false179, %land.lhs.true191, %land.lhs.true175
  %88 = load %struct.xpvcv** %sv_any113, align 8, !tbaa !3
  %xcv_flags197 = getelementptr inbounds %struct.xpvcv* %88, i64 0, i32 17
  %89 = load i16* %xcv_flags197, align 2, !tbaa !5
  %and199 = and i16 %89, 16
  %tobool200 = icmp eq i16 %and199, 0
  br i1 %tobool200, label %land.lhs.true201, label %if.end267

land.lhs.true201:                                 ; preds = %land.lhs.true195
  %90 = load %struct.xpvcv** %sv_any2, align 8, !tbaa !3
  %xcv_flags203 = getelementptr inbounds %struct.xpvcv* %90, i64 0, i32 17
  %91 = load i16* %xcv_flags203, align 2, !tbaa !5
  %and205 = and i16 %91, 16
  %tobool206 = icmp eq i16 %and205, 0
  br i1 %tobool206, label %if.then207, label %if.end267

if.then207:                                       ; preds = %land.lhs.true201
  tail call void (i32, i8*, ...)* @Perl_warner(i32 1, i8* getelementptr inbounds ([33 x i8]* @.str20, i64 0, i64 0), i8* %name) #3
  br label %if.end267

if.else215:                                       ; preds = %lor.lhs.false87
  %and219 = and i32 %conv84, 16
  %tobool220 = icmp eq i32 %and219, 0
  br i1 %tobool220, label %if.then221, label %if.end267

if.then221:                                       ; preds = %if.else215
  %92 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings222 = getelementptr inbounds %struct.cop* %92, i64 0, i32 14
  %93 = load %struct.sv** %cop_warnings222, align 8, !tbaa !3
  %cmp223 = icmp eq %struct.sv* %93, null
  br i1 %cmp223, label %lor.lhs.false241, label %land.lhs.true225

land.lhs.true225:                                 ; preds = %if.then221
  %94 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings226 = getelementptr inbounds %struct.cop* %94, i64 0, i32 14
  %95 = load %struct.sv** %cop_warnings226, align 8, !tbaa !3
  %cmp227 = icmp eq %struct.sv* %95, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp227, label %lor.lhs.false241, label %land.lhs.true229

land.lhs.true229:                                 ; preds = %land.lhs.true225
  %96 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings230 = getelementptr inbounds %struct.cop* %96, i64 0, i32 14
  %97 = load %struct.sv** %cop_warnings230, align 8, !tbaa !3
  %cmp231 = icmp eq %struct.sv* %97, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp231, label %land.lhs.true249, label %lor.lhs.false233

lor.lhs.false233:                                 ; preds = %land.lhs.true229
  %98 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings234 = getelementptr inbounds %struct.cop* %98, i64 0, i32 14
  %99 = load %struct.sv** %cop_warnings234, align 8, !tbaa !3
  %sv_any235 = getelementptr inbounds %struct.sv* %99, i64 0, i32 0
  %100 = load i8** %sv_any235, align 8, !tbaa !3
  %xpv_pv236 = bitcast i8* %100 to i8**
  %101 = load i8** %xpv_pv236, align 8, !tbaa !3
  %102 = load i8* %101, align 1, !tbaa !1
  %and239 = and i8 %102, 4
  %tobool240 = icmp eq i8 %and239, 0
  br i1 %tobool240, label %lor.lhs.false241, label %land.lhs.true249

lor.lhs.false241:                                 ; preds = %lor.lhs.false233, %land.lhs.true225, %if.then221
  %103 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings242 = getelementptr inbounds %struct.cop* %103, i64 0, i32 14
  %104 = load %struct.sv** %cop_warnings242, align 8, !tbaa !3
  %cmp243 = icmp eq %struct.sv* %104, null
  br i1 %cmp243, label %land.lhs.true245, label %if.end267

land.lhs.true245:                                 ; preds = %lor.lhs.false241
  %105 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and247 = and i8 %105, 1
  %tobool248 = icmp eq i8 %and247, 0
  br i1 %tobool248, label %if.end267, label %land.lhs.true249

land.lhs.true249:                                 ; preds = %lor.lhs.false233, %land.lhs.true245, %land.lhs.true229
  %106 = load i32* %sv_flags70, align 4, !tbaa !0
  %and251 = and i32 %106, 1048576
  %tobool252 = icmp eq i32 %and251, 0
  br i1 %tobool252, label %land.lhs.true253, label %if.end267

land.lhs.true253:                                 ; preds = %land.lhs.true249
  %107 = load %struct.xpvcv** %sv_any2, align 8, !tbaa !3
  %xcv_flags255 = getelementptr inbounds %struct.xpvcv* %107, i64 0, i32 17
  %108 = load i16* %xcv_flags255, align 2, !tbaa !5
  %and257 = and i16 %108, 16
  %tobool258 = icmp ne i16 %and257, 0
  %tobool262 = icmp slt i32 %106, 0
  %or.cond342 = or i1 %tobool258, %tobool262
  br i1 %or.cond342, label %if.end267, label %if.then263

if.then263:                                       ; preds = %land.lhs.true253
  tail call void (i32, i8*, ...)* @Perl_warner(i32 1, i8* getelementptr inbounds ([35 x i8]* @.str21, i64 0, i64 0), i8* %name) #3
  br label %if.end267

if.end267:                                        ; preds = %land.rhs, %cond.end161, %land.lhs.true253, %land.lhs.true249, %land.lhs.true245, %lor.lhs.false241, %if.else215, %land.lhs.true201, %land.lhs.true195, %land.lhs.true191, %lor.lhs.false187, %found, %if.then99, %if.then207, %if.then263
  %109 = phi %struct.sv* [ %31, %if.then207 ], [ %31, %if.then263 ], [ %.340, %if.then99 ], [ %31, %found ], [ %31, %lor.lhs.false187 ], [ %31, %land.lhs.true191 ], [ %31, %land.lhs.true195 ], [ %31, %land.lhs.true201 ], [ %31, %if.else215 ], [ %31, %lor.lhs.false241 ], [ %31, %land.lhs.true245 ], [ %31, %land.lhs.true249 ], [ %31, %land.lhs.true253 ], [ %31, %cond.end161 ], [ %31, %land.rhs ]
  %newoff.addr.0 = phi i64 [ %call82, %if.then207 ], [ %call82, %if.then263 ], [ %call82, %if.then99 ], [ %newoff, %found ], [ %call82, %lor.lhs.false187 ], [ %call82, %land.lhs.true191 ], [ %call82, %land.lhs.true195 ], [ %call82, %land.lhs.true201 ], [ %call82, %if.else215 ], [ %call82, %lor.lhs.false241 ], [ %call82, %land.lhs.true245 ], [ %call82, %land.lhs.true249 ], [ %call82, %land.lhs.true253 ], [ %call82, %cond.end161 ], [ %call82, %land.rhs ]
  %110 = load %struct.av** @PL_comppad, align 8, !tbaa !3
  %conv268 = trunc i64 %newoff.addr.0 to i32
  store %struct.sv* %109, %struct.sv** @PL_Sv, align 8, !tbaa !3
  %tobool269 = icmp eq %struct.sv* %109, null
  br i1 %tobool269, label %land.end272, label %land.rhs270

land.rhs270:                                      ; preds = %if.end267
  %sv_refcnt = getelementptr inbounds %struct.sv* %109, i64 0, i32 1
  %111 = load i32* %sv_refcnt, align 4, !tbaa !0
  %inc = add i32 %111, 1
  store i32 %inc, i32* %sv_refcnt, align 4, !tbaa !0
  br label %land.end272

land.end272:                                      ; preds = %if.end267, %land.rhs270
  %call273 = tail call %struct.sv** @Perl_av_store(%struct.av* %110, i32 %conv268, %struct.sv* %109) #3
  br label %return

return:                                           ; preds = %entry, %for.inc52, %if.then43, %land.end272
  %retval.0 = phi i64 [ %newoff.addr.0, %land.end272 ], [ 0, %if.then43 ], [ 0, %for.inc52 ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @Perl_pad_sv(i64 %po) #0 {
entry:
  %tobool = icmp eq i64 %po, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([17 x i8]* @.str9, i64 0, i64 0)) #3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %0 = load %struct.sv*** @PL_curpad, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds %struct.sv** %0, i64 %po
  %1 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  ret %struct.sv* %1
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_pad_block_start(i32 %full) #0 {
entry:
  tail call void @Perl_save_I32(i32* @PL_comppad_name_floor) #3
  %0 = load %struct.av** @PL_comppad_name, align 8, !tbaa !3
  %sv_any = getelementptr inbounds %struct.av* %0, i64 0, i32 0
  %1 = load %struct.xpvav** %sv_any, align 8, !tbaa !3
  %xav_fill = getelementptr inbounds %struct.xpvav* %1, i64 0, i32 1
  %2 = load i64* %xav_fill, align 8, !tbaa !4
  %conv = trunc i64 %2 to i32
  store i32 %conv, i32* @PL_comppad_name_floor, align 4, !tbaa !0
  %tobool = icmp eq i32 %full, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 %conv, i32* @PL_comppad_name_fill, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %cmp = icmp slt i32 %conv, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, i32* @PL_comppad_name_floor, align 4, !tbaa !0
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  tail call void @Perl_save_I32(i32* @PL_min_intro_pending) #3
  tail call void @Perl_save_I32(i32* @PL_max_intro_pending) #3
  store i32 0, i32* @PL_min_intro_pending, align 4, !tbaa !0
  tail call void @Perl_save_I32(i32* @PL_comppad_name_fill) #3
  tail call void @Perl_save_I32(i32* @PL_padix_floor) #3
  %3 = load i32* @PL_padix, align 4, !tbaa !0
  store i32 %3, i32* @PL_padix_floor, align 4, !tbaa !0
  store i32 0, i32* @PL_pad_reset_pending, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_intro_my() #0 {
entry:
  %0 = load i32* @PL_min_intro_pending, align 4, !tbaa !0
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32* @PL_cop_seqmax, align 4, !tbaa !0
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.av** @PL_comppad_name, align 8, !tbaa !3
  %sv_any = getelementptr inbounds %struct.av* %2, i64 0, i32 0
  %3 = load %struct.xpvav** %sv_any, align 8, !tbaa !3
  %xav_array = getelementptr inbounds %struct.xpvav* %3, i64 0, i32 0
  %4 = load i8** %xav_array, align 8, !tbaa !3
  %5 = bitcast i8* %4 to %struct.sv**
  %6 = load i32* @PL_max_intro_pending, align 4, !tbaa !0
  %cmp20 = icmp sgt i32 %0, %6
  %.pre = load i32* @PL_cop_seqmax, align 4, !tbaa !0
  br i1 %cmp20, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %conv = uitofp i32 %.pre to double
  %7 = sext i32 %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %7, %for.body.lr.ph ]
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %indvars.iv
  %8 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %tobool1 = icmp eq %struct.sv* %8, null
  %cmp2 = icmp eq %struct.sv* %8, @PL_sv_undef
  %or.cond = or i1 %tobool1, %cmp2
  br i1 %or.cond, label %for.inc, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %for.body
  %sv_flags = getelementptr inbounds %struct.sv* %8, i64 0, i32 2
  %9 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %9, 1048576
  %tobool4 = icmp eq i32 %and, 0
  br i1 %tobool4, label %land.lhs.true5, label %for.inc

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %sv_any6 = getelementptr inbounds %struct.sv* %8, i64 0, i32 0
  %10 = load i8** %sv_any6, align 8, !tbaa !3
  %xiv_iv = getelementptr inbounds i8* %10, i64 24
  %11 = bitcast i8* %xiv_iv to i64*
  %12 = load i64* %11, align 8, !tbaa !4
  %tobool7 = icmp eq i64 %12, 0
  br i1 %tobool7, label %if.then8, label %for.inc

if.then8:                                         ; preds = %land.lhs.true5
  store i64 999999999, i64* %11, align 8, !tbaa !4
  %xnv_nv = getelementptr inbounds i8* %10, i64 32
  %13 = bitcast i8* %xnv_nv to double*
  store double %conv, double* %13, align 8, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true5, %land.lhs.true3, %for.body, %if.then8
  %indvars.iv.next = add i64 %indvars.iv, 1
  %14 = trunc i64 %indvars.iv to i32
  %cmp = icmp slt i32 %14, %6
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end, %for.inc
  store i32 0, i32* @PL_min_intro_pending, align 4, !tbaa !0
  store i32 %6, i32* @PL_comppad_name_fill, align 4, !tbaa !0
  %inc13 = add i32 %.pre, 1
  store i32 %inc13, i32* @PL_cop_seqmax, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ %.pre, %for.end ], [ %1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_pad_leavemy() #0 {
entry:
  %0 = load %struct.av** @PL_comppad_name, align 8, !tbaa !3
  %sv_any = getelementptr inbounds %struct.av* %0, i64 0, i32 0
  %1 = load %struct.xpvav** %sv_any, align 8, !tbaa !3
  %xav_array = getelementptr inbounds %struct.xpvav* %1, i64 0, i32 0
  %2 = load i8** %xav_array, align 8, !tbaa !3
  %3 = bitcast i8* %2 to %struct.sv**
  store i32 0, i32* @PL_pad_reset_pending, align 4, !tbaa !0
  %4 = load i32* @PL_min_intro_pending, align 4, !tbaa !0
  %tobool = icmp ne i32 %4, 0
  %5 = load i32* @PL_comppad_name_fill, align 4, !tbaa !0
  %cmp = icmp slt i32 %5, %4
  %or.cond = and i1 %tobool, %cmp
  br i1 %or.cond, label %if.then, label %if.end21

if.then:                                          ; preds = %entry
  %6 = load i32* @PL_max_intro_pending, align 4, !tbaa !0
  %cmp167 = icmp slt i32 %6, %4
  br i1 %cmp167, label %if.end21, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then
  %7 = sext i32 %6 to i64
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.inc ], [ %7, %for.body.lr.ph ]
  %arrayidx = getelementptr inbounds %struct.sv** %3, i64 %indvars.iv69
  %8 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %tobool2 = icmp eq %struct.sv* %8, null
  %cmp4 = icmp eq %struct.sv* %8, @PL_sv_undef
  %or.cond63 = or i1 %tobool2, %cmp4
  br i1 %or.cond63, label %for.inc, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %for.body
  %sv_flags = getelementptr inbounds %struct.sv* %8, i64 0, i32 2
  %9 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %9, 1048576
  %tobool6 = icmp eq i32 %and, 0
  br i1 %tobool6, label %land.lhs.true7, label %for.inc

land.lhs.true7:                                   ; preds = %land.lhs.true5
  %10 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings = getelementptr inbounds %struct.cop* %10, i64 0, i32 14
  %11 = load %struct.sv** %cop_warnings, align 8, !tbaa !3
  %cmp8 = icmp eq %struct.sv* %11, null
  br i1 %cmp8, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true7
  %12 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings9 = getelementptr inbounds %struct.cop* %12, i64 0, i32 14
  %13 = load %struct.sv** %cop_warnings9, align 8, !tbaa !3
  %cmp10 = icmp eq %struct.sv* %13, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp10, label %if.then20, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %14 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings12 = getelementptr inbounds %struct.cop* %14, i64 0, i32 14
  %15 = load %struct.sv** %cop_warnings12, align 8, !tbaa !3
  %cmp13 = icmp eq %struct.sv* %15, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp13, label %for.inc, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %lor.lhs.false11
  %16 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings15 = getelementptr inbounds %struct.cop* %16, i64 0, i32 14
  %17 = load %struct.sv** %cop_warnings15, align 8, !tbaa !3
  %sv_any16 = getelementptr inbounds %struct.sv* %17, i64 0, i32 0
  %18 = load i8** %sv_any16, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %18 to i8**
  %19 = load i8** %xpv_pv, align 8, !tbaa !3
  %arrayidx17 = getelementptr inbounds i8* %19, i64 6
  %20 = load i8* %arrayidx17, align 1, !tbaa !1
  %and18 = and i8 %20, 1
  %tobool19 = icmp eq i8 %and18, 0
  br i1 %tobool19, label %for.inc, label %if.then20

if.then20:                                        ; preds = %land.lhs.true14, %lor.lhs.false, %land.lhs.true7
  tail call void (i32, i8*, ...)* @Perl_warner(i32 24, i8* getelementptr inbounds ([20 x i8]* @.str10, i64 0, i64 0), %struct.sv* %8) #3
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true14, %lor.lhs.false11, %land.lhs.true5, %for.body, %if.then20
  %indvars.iv.next70 = add i64 %indvars.iv69, -1
  %21 = load i32* @PL_min_intro_pending, align 4, !tbaa !0
  %22 = trunc i64 %indvars.iv69 to i32
  %cmp1 = icmp sgt i32 %22, %21
  br i1 %cmp1, label %for.body, label %for.cond.if.end21.loopexit_crit_edge

for.cond.if.end21.loopexit_crit_edge:             ; preds = %for.inc
  %.pre.pre = load %struct.av** @PL_comppad_name, align 8, !tbaa !3
  %sv_any22.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.av* %.pre.pre, i64 0, i32 0
  %.pre71.pre = load %struct.xpvav** %sv_any22.phi.trans.insert.phi.trans.insert, align 8, !tbaa !3
  %.pre72.pre = load i32* @PL_comppad_name_fill, align 4, !tbaa !0
  br label %if.end21

if.end21:                                         ; preds = %if.then, %for.cond.if.end21.loopexit_crit_edge, %entry
  %23 = phi i32 [ %5, %entry ], [ %.pre72.pre, %for.cond.if.end21.loopexit_crit_edge ], [ %5, %if.then ]
  %24 = phi %struct.xpvav* [ %1, %entry ], [ %.pre71.pre, %for.cond.if.end21.loopexit_crit_edge ], [ %1, %if.then ]
  %xav_fill = getelementptr inbounds %struct.xpvav* %24, i64 0, i32 1
  %25 = load i64* %xav_fill, align 8, !tbaa !4
  %conv23 = trunc i64 %25 to i32
  %cmp2565 = icmp sgt i32 %conv23, %23
  %26 = load i32* @PL_cop_seqmax, align 4, !tbaa !0
  br i1 %cmp2565, label %for.body27.lr.ph, label %for.end49

for.body27.lr.ph:                                 ; preds = %if.end21
  %conv43 = zext i32 %26 to i64
  %sext = shl i64 %25, 32
  %27 = ashr exact i64 %sext, 32
  br label %for.body27

for.body27:                                       ; preds = %for.body27.lr.ph, %for.inc47
  %indvars.iv = phi i64 [ %27, %for.body27.lr.ph ], [ %indvars.iv.next, %for.inc47 ]
  %arrayidx29 = getelementptr inbounds %struct.sv** %3, i64 %indvars.iv
  %28 = load %struct.sv** %arrayidx29, align 8, !tbaa !3
  %tobool30 = icmp eq %struct.sv* %28, null
  %cmp32 = icmp eq %struct.sv* %28, @PL_sv_undef
  %or.cond64 = or i1 %tobool30, %cmp32
  br i1 %or.cond64, label %for.inc47, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %for.body27
  %sv_flags35 = getelementptr inbounds %struct.sv* %28, i64 0, i32 2
  %29 = load i32* %sv_flags35, align 4, !tbaa !0
  %and36 = and i32 %29, 1048576
  %tobool37 = icmp eq i32 %and36, 0
  br i1 %tobool37, label %land.lhs.true38, label %for.inc47

land.lhs.true38:                                  ; preds = %land.lhs.true34
  %sv_any39 = getelementptr inbounds %struct.sv* %28, i64 0, i32 0
  %30 = load i8** %sv_any39, align 8, !tbaa !3
  %xiv_iv = getelementptr inbounds i8* %30, i64 24
  %31 = bitcast i8* %xiv_iv to i64*
  %32 = load i64* %31, align 8, !tbaa !4
  %cmp40 = icmp eq i64 %32, 999999999
  br i1 %cmp40, label %if.then42, label %for.inc47

if.then42:                                        ; preds = %land.lhs.true38
  store i64 %conv43, i64* %31, align 8, !tbaa !4
  br label %for.inc47

for.inc47:                                        ; preds = %land.lhs.true34, %for.body27, %land.lhs.true38, %if.then42
  %indvars.iv.next = add i64 %indvars.iv, -1
  %33 = trunc i64 %indvars.iv.next to i32
  %cmp25 = icmp sgt i32 %33, %23
  br i1 %cmp25, label %for.body27, label %for.end49

for.end49:                                        ; preds = %if.end21, %for.inc47
  %inc = add i32 %26, 1
  store i32 %inc, i32* @PL_cop_seqmax, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_pad_swipe(i64 %po, i8 signext %refadjust) #0 {
entry:
  %0 = load %struct.sv*** @PL_curpad, align 8, !tbaa !3
  %tobool = icmp eq %struct.sv** %0, null
  br i1 %tobool, label %if.end21, label %if.end

if.end:                                           ; preds = %entry
  %1 = load %struct.av** @PL_comppad, align 8, !tbaa !3
  %sv_any = getelementptr inbounds %struct.av* %1, i64 0, i32 0
  %2 = load %struct.xpvav** %sv_any, align 8, !tbaa !3
  %xav_array = getelementptr inbounds %struct.xpvav* %2, i64 0, i32 0
  %3 = load i8** %xav_array, align 8, !tbaa !3
  %4 = bitcast i8* %3 to %struct.sv**
  %cmp = icmp eq %struct.sv** %4, %0
  br i1 %cmp, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([24 x i8]* @.str11, i64 0, i64 0)) #3
  br label %if.end2

if.end2:                                          ; preds = %if.end, %if.then1
  %tobool3 = icmp eq i64 %po, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end2
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([20 x i8]* @.str12, i64 0, i64 0)) #3
  br label %if.end5

if.end5:                                          ; preds = %if.end2, %if.then4
  %5 = load %struct.sv*** @PL_curpad, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %po
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %tobool6 = icmp eq %struct.sv* %6, null
  br i1 %tobool6, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end5
  %sv_flags = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %7, -513
  store i32 %and, i32* %sv_flags, align 4, !tbaa !0
  br label %if.end9

if.end9:                                          ; preds = %if.end5, %if.then7
  %tobool10 = icmp eq i8 %refadjust, 0
  br i1 %tobool10, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end9
  tail call void @Perl_sv_free(%struct.sv* %6) #3
  br label %if.end13

if.end13:                                         ; preds = %if.end9, %if.then11
  %call = tail call %struct.sv* @Perl_newSV(i64 0) #3
  %8 = load %struct.sv*** @PL_curpad, align 8, !tbaa !3
  %arrayidx14 = getelementptr inbounds %struct.sv** %8, i64 %po
  store %struct.sv* %call, %struct.sv** %arrayidx14, align 8, !tbaa !3
  %9 = load %struct.sv*** @PL_curpad, align 8, !tbaa !3
  %arrayidx15 = getelementptr inbounds %struct.sv** %9, i64 %po
  %10 = load %struct.sv** %arrayidx15, align 8, !tbaa !3
  %sv_flags16 = getelementptr inbounds %struct.sv* %10, i64 0, i32 2
  %11 = load i32* %sv_flags16, align 4, !tbaa !0
  %or = or i32 %11, 768
  store i32 %or, i32* %sv_flags16, align 4, !tbaa !0
  %conv = trunc i64 %po to i32
  %12 = load i32* @PL_padix, align 4, !tbaa !0
  %cmp17 = icmp slt i32 %conv, %12
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end13
  %sub = add i64 %po, 4294967295
  %conv20 = trunc i64 %sub to i32
  store i32 %conv20, i32* @PL_padix, align 4, !tbaa !0
  br label %if.end21

if.end21:                                         ; preds = %entry, %if.then19, %if.end13
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_pad_tidy(i32 %type) #0 {
entry:
  %0 = load %struct.av** @PL_comppad_name, align 8, !tbaa !3
  %sv_any = getelementptr inbounds %struct.av* %0, i64 0, i32 0
  %1 = load %struct.xpvav** %sv_any, align 8, !tbaa !3
  %xav_fill = getelementptr inbounds %struct.xpvav* %1, i64 0, i32 1
  %2 = load i64* %xav_fill, align 8, !tbaa !4
  %3 = load %struct.av** @PL_comppad, align 8, !tbaa !3
  %sv_any1 = getelementptr inbounds %struct.av* %3, i64 0, i32 0
  %4 = load %struct.xpvav** %sv_any1, align 8, !tbaa !3
  %xav_fill2 = getelementptr inbounds %struct.xpvav* %4, i64 0, i32 1
  %5 = load i64* %xav_fill2, align 8, !tbaa !4
  %cmp = icmp slt i64 %2, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv = trunc i64 %5 to i32
  %call = tail call %struct.sv** @Perl_av_store(%struct.av* %0, i32 %conv, %struct.sv* null) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  switch i32 %type, label %if.end127 [
    i32 1, label %if.then7
    i32 0, label %if.then53
    i32 2, label %if.then91
  ]

if.then7:                                         ; preds = %if.end
  %6 = load %struct.av** @PL_comppad_name, align 8, !tbaa !3
  %sv_any8 = getelementptr inbounds %struct.av* %6, i64 0, i32 0
  %7 = load %struct.xpvav** %sv_any8, align 8, !tbaa !3
  %xav_array = getelementptr inbounds %struct.xpvav* %7, i64 0, i32 0
  %8 = load i8** %xav_array, align 8, !tbaa !3
  %9 = bitcast i8* %8 to %struct.sv**
  %10 = load %struct.av** @PL_comppad, align 8, !tbaa !3
  %sv_any9 = getelementptr inbounds %struct.av* %10, i64 0, i32 0
  %11 = load %struct.xpvav** %sv_any9, align 8, !tbaa !3
  %xav_fill10 = getelementptr inbounds %struct.xpvav* %11, i64 0, i32 1
  %12 = load i64* %xav_fill10, align 8, !tbaa !4
  %cmp11176 = icmp eq i64 %12, 0
  br i1 %cmp11176, label %if.end127, label %for.body

for.body:                                         ; preds = %for.inc, %if.then7
  %ix.0177 = phi i64 [ %12, %if.then7 ], [ %dec, %for.inc ]
  %13 = load %struct.sv*** @PL_curpad, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds %struct.sv** %13, i64 %ix.0177
  %14 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %cmp13 = icmp eq %struct.sv* %14, @PL_sv_undef
  %cmp16 = icmp eq %struct.sv* %14, @PL_sv_yes
  %or.cond = or i1 %cmp13, %cmp16
  %cmp20 = icmp eq %struct.sv* %14, @PL_sv_no
  %or.cond161 = or i1 %or.cond, %cmp20
  %cmp24 = icmp eq %struct.sv* %14, @PL_sv_placeholder
  %or.cond162 = or i1 %or.cond161, %cmp24
  br i1 %or.cond162, label %for.inc, label %if.end27

if.end27:                                         ; preds = %for.body
  %arrayidx28 = getelementptr inbounds %struct.sv** %9, i64 %ix.0177
  %15 = load %struct.sv** %arrayidx28, align 8, !tbaa !3
  %cmp29 = icmp eq %struct.sv* %15, null
  %cmp31 = icmp eq %struct.sv* %15, @PL_sv_undef
  %or.cond163 = or i1 %cmp29, %cmp31
  br i1 %or.cond163, label %if.then39, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %if.end27
  %sv_flags = getelementptr inbounds %struct.sv* %15, i64 0, i32 2
  %16 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %16, 1048576
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %lor.lhs.false34, label %for.inc

lor.lhs.false34:                                  ; preds = %land.lhs.true33
  %sv_any35 = getelementptr inbounds %struct.sv* %15, i64 0, i32 0
  %17 = load i8** %sv_any35, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %17 to i8**
  %18 = load i8** %xpv_pv, align 8, !tbaa !3
  %19 = load i8* %18, align 1, !tbaa !1
  %cmp37 = icmp eq i8 %19, 38
  br i1 %cmp37, label %for.inc, label %if.then39

if.then39:                                        ; preds = %if.end27, %lor.lhs.false34
  tail call void @Perl_sv_free(%struct.sv* %14) #3
  %20 = load %struct.sv*** @PL_curpad, align 8, !tbaa !3
  %arrayidx41 = getelementptr inbounds %struct.sv** %20, i64 %ix.0177
  store %struct.sv* null, %struct.sv** %arrayidx41, align 8, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true33, %lor.lhs.false34, %if.then39, %for.body
  %dec = add i64 %ix.0177, -1
  %cmp11 = icmp eq i64 %dec, 0
  br i1 %cmp11, label %if.end127, label %for.body

if.then53:                                        ; preds = %if.end
  %call46 = tail call %struct.av* @Perl_newAV() #3
  tail call void @Perl_av_extend(%struct.av* %call46, i32 0) #3
  %21 = load %struct.av** @PL_comppad, align 8, !tbaa !3
  %22 = bitcast %struct.av* %call46 to %struct.sv*
  %call47 = tail call %struct.sv** @Perl_av_store(%struct.av* %21, i32 0, %struct.sv* %22) #3
  %sv_any48 = getelementptr inbounds %struct.av* %call46, i64 0, i32 0
  %23 = load %struct.xpvav** %sv_any48, align 8, !tbaa !3
  %xav_flags = getelementptr inbounds %struct.xpvav* %23, i64 0, i32 9
  store i8 2, i8* %xav_flags, align 1, !tbaa !1
  %24 = load %struct.av** @PL_comppad, align 8, !tbaa !3
  %sv_any54 = getelementptr inbounds %struct.av* %24, i64 0, i32 0
  %25 = load %struct.xpvav** %sv_any54, align 8, !tbaa !3
  %xav_fill55 = getelementptr inbounds %struct.xpvav* %25, i64 0, i32 1
  %26 = load i64* %xav_fill55, align 8, !tbaa !4
  %cmp57171 = icmp eq i64 %26, 0
  br i1 %cmp57171, label %if.end127, label %for.body59.lr.ph

for.body59.lr.ph:                                 ; preds = %if.then53
  %27 = load %struct.sv*** @PL_curpad, align 8, !tbaa !3
  br label %for.body59

for.body59:                                       ; preds = %for.body59.lr.ph, %for.inc85
  %ix.1172 = phi i64 [ %26, %for.body59.lr.ph ], [ %dec86, %for.inc85 ]
  %arrayidx60 = getelementptr inbounds %struct.sv** %27, i64 %ix.1172
  %28 = load %struct.sv** %arrayidx60, align 8, !tbaa !3
  %cmp61 = icmp eq %struct.sv* %28, @PL_sv_undef
  %cmp65 = icmp eq %struct.sv* %28, @PL_sv_yes
  %or.cond164 = or i1 %cmp61, %cmp65
  %cmp69 = icmp eq %struct.sv* %28, @PL_sv_no
  %or.cond165 = or i1 %or.cond164, %cmp69
  %cmp73 = icmp eq %struct.sv* %28, @PL_sv_placeholder
  %or.cond166 = or i1 %or.cond165, %cmp73
  br i1 %or.cond166, label %for.inc85, label %if.end76

if.end76:                                         ; preds = %for.body59
  %sv_flags78 = getelementptr inbounds %struct.sv* %28, i64 0, i32 2
  %29 = load i32* %sv_flags78, align 4, !tbaa !0
  %and79 = and i32 %29, 1024
  %tobool80 = icmp eq i32 %and79, 0
  br i1 %tobool80, label %if.then81, label %for.inc85

if.then81:                                        ; preds = %if.end76
  %or = or i32 %29, 768
  store i32 %or, i32* %sv_flags78, align 4, !tbaa !0
  br label %for.inc85

for.inc85:                                        ; preds = %if.end76, %if.then81, %for.body59
  %dec86 = add i64 %ix.1172, -1
  %cmp57 = icmp eq i64 %dec86, 0
  br i1 %cmp57, label %if.end127, label %for.body59

if.then91:                                        ; preds = %if.end
  %30 = load %struct.av** @PL_comppad, align 8, !tbaa !3
  %sv_any92 = getelementptr inbounds %struct.av* %30, i64 0, i32 0
  %31 = load %struct.xpvav** %sv_any92, align 8, !tbaa !3
  %xav_fill93 = getelementptr inbounds %struct.xpvav* %31, i64 0, i32 1
  %32 = load i64* %xav_fill93, align 8, !tbaa !4
  %cmp95174 = icmp eq i64 %32, 0
  br i1 %cmp95174, label %if.end127, label %for.body97.lr.ph

for.body97.lr.ph:                                 ; preds = %if.then91
  %33 = load %struct.sv*** @PL_curpad, align 8, !tbaa !3
  br label %for.body97

for.body97:                                       ; preds = %for.body97.lr.ph, %for.inc123
  %ix.2175 = phi i64 [ %32, %for.body97.lr.ph ], [ %dec124, %for.inc123 ]
  %arrayidx98 = getelementptr inbounds %struct.sv** %33, i64 %ix.2175
  %34 = load %struct.sv** %arrayidx98, align 8, !tbaa !3
  %sv_flags99 = getelementptr inbounds %struct.sv* %34, i64 0, i32 2
  %35 = load i32* %sv_flags99, align 4, !tbaa !0
  %and100 = and i32 %35, 1024
  %tobool101 = icmp ne i32 %and100, 0
  %cmp104 = icmp eq %struct.sv* %34, @PL_sv_undef
  %or.cond167 = or i1 %tobool101, %cmp104
  %cmp108 = icmp eq %struct.sv* %34, @PL_sv_yes
  %or.cond168 = or i1 %or.cond167, %cmp108
  %cmp112 = icmp eq %struct.sv* %34, @PL_sv_no
  %or.cond169 = or i1 %or.cond168, %cmp112
  %cmp116 = icmp eq %struct.sv* %34, @PL_sv_placeholder
  %or.cond170 = or i1 %or.cond169, %cmp116
  br i1 %or.cond170, label %for.inc123, label %if.then118

if.then118:                                       ; preds = %for.body97
  %or121 = or i32 %35, 768
  store i32 %or121, i32* %sv_flags99, align 4, !tbaa !0
  br label %for.inc123

for.inc123:                                       ; preds = %for.body97, %if.then118
  %dec124 = add i64 %ix.2175, -1
  %cmp95 = icmp eq i64 %dec124, 0
  br i1 %cmp95, label %if.end127, label %for.body97

if.end127:                                        ; preds = %if.then91, %for.inc123, %if.then53, %for.inc85, %for.inc, %if.then7, %if.end
  %36 = load %struct.av** @PL_comppad, align 8, !tbaa !3
  %sv_any128 = getelementptr inbounds %struct.av* %36, i64 0, i32 0
  %37 = load %struct.xpvav** %sv_any128, align 8, !tbaa !3
  %xav_array129 = getelementptr inbounds %struct.xpvav* %37, i64 0, i32 0
  %38 = load i8** %xav_array129, align 8, !tbaa !3
  %39 = bitcast i8* %38 to %struct.sv**
  store %struct.sv** %39, %struct.sv*** @PL_curpad, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_pad_free(i64 %po) #0 {
entry:
  %0 = load %struct.sv*** @PL_curpad, align 8, !tbaa !3
  %tobool = icmp eq %struct.sv** %0, null
  br i1 %tobool, label %if.end16, label %if.end

if.end:                                           ; preds = %entry
  %1 = load %struct.av** @PL_comppad, align 8, !tbaa !3
  %sv_any = getelementptr inbounds %struct.av* %1, i64 0, i32 0
  %2 = load %struct.xpvav** %sv_any, align 8, !tbaa !3
  %xav_array = getelementptr inbounds %struct.xpvav* %2, i64 0, i32 0
  %3 = load i8** %xav_array, align 8, !tbaa !3
  %4 = bitcast i8* %3 to %struct.sv**
  %cmp = icmp eq %struct.sv** %4, %0
  br i1 %cmp, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([23 x i8]* @.str13, i64 0, i64 0)) #3
  br label %if.end2

if.end2:                                          ; preds = %if.end, %if.then1
  %tobool3 = icmp eq i64 %po, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end2
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([19 x i8]* @.str14, i64 0, i64 0)) #3
  br label %if.end5

if.end5:                                          ; preds = %if.end2, %if.then4
  %5 = load %struct.sv*** @PL_curpad, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %po
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %tobool6 = icmp eq %struct.sv* %6, null
  %cmp8 = icmp eq %struct.sv* %6, @PL_sv_undef
  %or.cond = or i1 %tobool6, %cmp8
  br i1 %or.cond, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end5
  %sv_flags = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %7, -513
  store i32 %and, i32* %sv_flags, align 4, !tbaa !0
  br label %if.end11

if.end11:                                         ; preds = %if.end5, %if.then9
  %conv = trunc i64 %po to i32
  %8 = load i32* @PL_padix, align 4, !tbaa !0
  %cmp12 = icmp slt i32 %conv, %8
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  %sub = add i64 %po, 4294967295
  %conv15 = trunc i64 %sub to i32
  store i32 %conv15, i32* @PL_padix, align 4, !tbaa !0
  br label %if.end16

if.end16:                                         ; preds = %entry, %if.then14, %if.end11
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_do_dump_pad(i32 %level, %struct._PerlIO** %file, %struct.av* %padlist, i32 %full) #0 {
entry:
  %tobool = icmp eq %struct.av* %padlist, null
  br i1 %tobool, label %for.end, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.sv** @Perl_av_fetch(%struct.av* %padlist, i32 0, i32 0) #3
  %0 = load %struct.sv** %call, align 8, !tbaa !3
  %call1 = tail call %struct.sv** @Perl_av_fetch(%struct.av* %padlist, i32 1, i32 0) #3
  %1 = load %struct.sv** %call1, align 8, !tbaa !3
  %sv_any = bitcast %struct.sv* %0 to %struct.xpvav**
  %2 = load %struct.xpvav** %sv_any, align 8, !tbaa !3
  %xav_array = getelementptr inbounds %struct.xpvav* %2, i64 0, i32 0
  %3 = load i8** %xav_array, align 8, !tbaa !3
  %4 = bitcast i8* %3 to %struct.sv**
  %sv_any2 = bitcast %struct.sv* %1 to %struct.xpvav**
  %5 = load %struct.xpvav** %sv_any2, align 8, !tbaa !3
  %xav_array3 = getelementptr inbounds %struct.xpvav* %5, i64 0, i32 0
  %6 = load i8** %xav_array3, align 8, !tbaa !3
  %7 = bitcast i8* %6 to %struct.sv**
  %8 = ptrtoint %struct.sv* %0 to i64
  %9 = ptrtoint i8* %3 to i64
  %10 = ptrtoint %struct.sv* %1 to i64
  %11 = ptrtoint i8* %6 to i64
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([43 x i8]* @.str15, i64 0, i64 0), i64 %8, i64 %9, i64 %10, i64 %11) #3
  %12 = load %struct.xpvav** %sv_any, align 8, !tbaa !3
  %xav_fill101 = getelementptr inbounds %struct.xpvav* %12, i64 0, i32 1
  %13 = load i64* %xav_fill101, align 8, !tbaa !4
  %cmp102 = icmp slt i64 %13, 1
  br i1 %cmp102, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %tobool46 = icmp eq i32 %full, 0
  %add48 = add nsw i32 %level, 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds %struct.sv** %4, i64 %indvars.iv
  %14 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %tobool6 = icmp ne %struct.sv* %14, null
  %cmp7 = icmp eq %struct.sv* %14, @PL_sv_undef
  %or.cond = and i1 %tobool6, %cmp7
  %. = select i1 %or.cond, %struct.sv* null, %struct.sv* %14
  %tobool11 = icmp eq %struct.sv* %., null
  br i1 %tobool11, label %if.else45, label %if.then12

if.then12:                                        ; preds = %for.body
  %sv_flags = getelementptr inbounds %struct.sv* %., i64 0, i32 2
  %15 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %15, 1048576
  %tobool13 = icmp eq i32 %and, 0
  %arrayidx16 = getelementptr inbounds %struct.sv** %7, i64 %indvars.iv
  %16 = load %struct.sv** %arrayidx16, align 8, !tbaa !3
  %17 = ptrtoint %struct.sv* %16 to i64
  %tobool19 = icmp ne %struct.sv* %16, null
  br i1 %tobool13, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then12
  br i1 %tobool19, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.then14
  %sv_refcnt = getelementptr inbounds %struct.sv* %16, i64 0, i32 1
  %18 = load i32* %sv_refcnt, align 4, !tbaa !0
  %phitmp100 = zext i32 %18 to i64
  br label %cond.end

cond.end:                                         ; preds = %if.then14, %cond.true
  %cond = phi i64 [ %phitmp100, %cond.true ], [ 0, %if.then14 ]
  %sv_any23 = getelementptr inbounds %struct.sv* %., i64 0, i32 0
  %19 = load i8** %sv_any23, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %19 to i8**
  %20 = load i8** %xpv_pv, align 8, !tbaa !3
  %21 = trunc i64 %indvars.iv to i32
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %add48, %struct._PerlIO** %file, i8* getelementptr inbounds ([27 x i8]* @.str16, i64 0, i64 0), i32 %21, i64 %17, i64 %cond, i8* %20) #3
  br label %for.inc

if.else:                                          ; preds = %if.then12
  br i1 %tobool19, label %cond.true30, label %cond.end35

cond.true30:                                      ; preds = %if.else
  %sv_refcnt33 = getelementptr inbounds %struct.sv* %16, i64 0, i32 1
  %22 = load i32* %sv_refcnt33, align 4, !tbaa !0
  %phitmp99 = zext i32 %22 to i64
  br label %cond.end35

cond.end35:                                       ; preds = %if.else, %cond.true30
  %cond36 = phi i64 [ %phitmp99, %cond.true30 ], [ 0, %if.else ]
  %sv_any38 = getelementptr inbounds %struct.sv* %., i64 0, i32 0
  %23 = load i8** %sv_any38, align 8, !tbaa !3
  %xnv_nv = getelementptr inbounds i8* %23, i64 32
  %24 = bitcast i8* %xnv_nv to double*
  %25 = load double* %24, align 8, !tbaa !6
  %call39 = tail call i32 @Perl_cast_ulong(double %25) #3
  %conv40 = zext i32 %call39 to i64
  %26 = load i8** %sv_any38, align 8, !tbaa !3
  %xiv_iv = getelementptr inbounds i8* %26, i64 24
  %27 = bitcast i8* %xiv_iv to i64*
  %28 = load i64* %27, align 8, !tbaa !4
  %xpv_pv43 = bitcast i8* %26 to i8**
  %29 = load i8** %xpv_pv43, align 8, !tbaa !3
  %30 = trunc i64 %indvars.iv to i32
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %add48, %struct._PerlIO** %file, i8* getelementptr inbounds ([32 x i8]* @.str17, i64 0, i64 0), i32 %30, i64 %17, i64 %cond36, i64 %conv40, i64 %28, i8* %29) #3
  br label %for.inc

if.else45:                                        ; preds = %for.body
  br i1 %tobool46, label %for.inc, label %if.then47

if.then47:                                        ; preds = %if.else45
  %arrayidx50 = getelementptr inbounds %struct.sv** %7, i64 %indvars.iv
  %31 = load %struct.sv** %arrayidx50, align 8, !tbaa !3
  %32 = ptrtoint %struct.sv* %31 to i64
  %tobool53 = icmp eq %struct.sv* %31, null
  br i1 %tobool53, label %cond.end59, label %cond.true54

cond.true54:                                      ; preds = %if.then47
  %sv_refcnt57 = getelementptr inbounds %struct.sv* %31, i64 0, i32 1
  %33 = load i32* %sv_refcnt57, align 4, !tbaa !0
  %phitmp = zext i32 %33 to i64
  br label %cond.end59

cond.end59:                                       ; preds = %if.then47, %cond.true54
  %cond60 = phi i64 [ %phitmp, %cond.true54 ], [ 0, %if.then47 ]
  %34 = trunc i64 %indvars.iv to i32
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %add48, %struct._PerlIO** %file, i8* getelementptr inbounds ([17 x i8]* @.str18, i64 0, i64 0), i32 %34, i64 %32, i64 %cond60) #3
  br label %for.inc

for.inc:                                          ; preds = %if.else45, %cond.end35, %cond.end, %cond.end59
  %indvars.iv.next = add i64 %indvars.iv, 1
  %35 = load %struct.xpvav** %sv_any, align 8, !tbaa !3
  %xav_fill = getelementptr inbounds %struct.xpvav* %35, i64 0, i32 1
  %36 = load i64* %xav_fill, align 8, !tbaa !4
  %cmp = icmp sgt i64 %indvars.iv.next, %36
  br i1 %cmp, label %for.end, label %for.body

for.end:                                          ; preds = %if.end, %for.inc, %entry
  ret void
}

; Function Attrs: optsize
declare void @Perl_dump_indent(i32, %struct._PerlIO**, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define %struct.cv* @Perl_cv_clone(%struct.cv* nocapture %proto) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.cv* %proto, i64 0, i32 0
  %0 = load %struct.xpvcv** %sv_any, align 8, !tbaa !3
  %xcv_outside = getelementptr inbounds %struct.xpvcv* %0, i64 0, i32 16
  %1 = load %struct.cv** %xcv_outside, align 8, !tbaa !3
  %call = tail call fastcc %struct.cv* @S_cv_clone2(%struct.cv* %proto, %struct.cv* %1) #4
  ret %struct.cv* %call
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.cv* @S_cv_clone2(%struct.cv* nocapture %proto, %struct.cv* %outside) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.cv* %proto, i64 0, i32 0
  %0 = load %struct.xpvcv** %sv_any, align 8, !tbaa !3
  %xcv_padlist = getelementptr inbounds %struct.xpvcv* %0, i64 0, i32 15
  %1 = load %struct.av** %xcv_padlist, align 8, !tbaa !3
  %call = tail call %struct.sv** @Perl_av_fetch(%struct.av* %1, i32 0, i32 0) #3
  %2 = load %struct.sv** %call, align 8, !tbaa !3
  %call1 = tail call %struct.sv** @Perl_av_fetch(%struct.av* %1, i32 1, i32 0) #3
  %3 = load %struct.sv** %call1, align 8, !tbaa !3
  %sv_any2 = bitcast %struct.sv* %2 to %struct.xpvav**
  %4 = load %struct.xpvav** %sv_any2, align 8, !tbaa !3
  %xav_array = getelementptr inbounds %struct.xpvav* %4, i64 0, i32 0
  %5 = load i8** %xav_array, align 8, !tbaa !3
  %6 = bitcast i8* %5 to %struct.sv**
  %sv_any3 = bitcast %struct.sv* %3 to %struct.xpvav**
  %7 = load %struct.xpvav** %sv_any3, align 8, !tbaa !3
  %xav_array4 = getelementptr inbounds %struct.xpvav* %7, i64 0, i32 0
  %8 = load i8** %xav_array4, align 8, !tbaa !3
  %9 = bitcast i8* %8 to %struct.sv**
  %xav_fill = getelementptr inbounds %struct.xpvav* %4, i64 0, i32 1
  %10 = load i64* %xav_fill, align 8, !tbaa !4
  %conv = trunc i64 %10 to i32
  %xav_fill7 = getelementptr inbounds %struct.xpvav* %7, i64 0, i32 1
  %11 = load i64* %xav_fill7, align 8, !tbaa !4
  %conv8 = trunc i64 %11 to i32
  tail call void @Perl_push_scope() #3
  tail call void @Perl_save_sptr(%struct.sv** bitcast (%struct.cv** @PL_compcv to %struct.sv**)) #3
  %call9 = tail call %struct.sv* @Perl_newSV(i64 0) #3
  %12 = bitcast %struct.sv* %call9 to %struct.cv*
  store %struct.cv* %12, %struct.cv** @PL_compcv, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.cv* %proto, i64 0, i32 2
  %13 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %13, 255
  %call10 = tail call signext i8 @Perl_sv_upgrade(%struct.sv* %call9, i32 %and) #3
  %14 = load %struct.xpvcv** %sv_any, align 8, !tbaa !3
  %xcv_flags = getelementptr inbounds %struct.xpvcv* %14, i64 0, i32 17
  %15 = load i16* %xcv_flags, align 2, !tbaa !5
  %and13 = and i16 %15, -1028
  %sv_any15 = bitcast %struct.sv* %call9 to %struct.xpvcv**
  %16 = load %struct.xpvcv** %sv_any15, align 8, !tbaa !3
  %xcv_flags16 = getelementptr inbounds %struct.xpvcv* %16, i64 0, i32 17
  %or = or i16 %and13, 2
  store i16 %or, i16* %xcv_flags16, align 2, !tbaa !5
  %xcv_file = getelementptr inbounds %struct.xpvcv* %14, i64 0, i32 13
  %17 = load i8** %xcv_file, align 8, !tbaa !3
  %xcv_file23 = getelementptr inbounds %struct.xpvcv* %16, i64 0, i32 13
  store i8* %17, i8** %xcv_file23, align 8, !tbaa !3
  %18 = load %struct.xpvcv** %sv_any, align 8, !tbaa !3
  %xcv_gv = getelementptr inbounds %struct.xpvcv* %18, i64 0, i32 12
  %19 = load %struct.gv** %xcv_gv, align 8, !tbaa !3
  %20 = load %struct.xpvcv** %sv_any15, align 8, !tbaa !3
  %xcv_gv26 = getelementptr inbounds %struct.xpvcv* %20, i64 0, i32 12
  store %struct.gv* %19, %struct.gv** %xcv_gv26, align 8, !tbaa !3
  %21 = load %struct.xpvcv** %sv_any, align 8, !tbaa !3
  %xcv_stash = getelementptr inbounds %struct.xpvcv* %21, i64 0, i32 7
  %22 = load %struct.hv** %xcv_stash, align 8, !tbaa !3
  %23 = load %struct.xpvcv** %sv_any15, align 8, !tbaa !3
  %xcv_stash29 = getelementptr inbounds %struct.xpvcv* %23, i64 0, i32 7
  store %struct.hv* %22, %struct.hv** %xcv_stash29, align 8, !tbaa !3
  %24 = load %struct.xpvcv** %sv_any, align 8, !tbaa !3
  %xcv_root = getelementptr inbounds %struct.xpvcv* %24, i64 0, i32 9
  %25 = load %struct.op** %xcv_root, align 8, !tbaa !3
  %tobool = icmp eq %struct.op* %25, null
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %op_targ = getelementptr inbounds %struct.op* %25, i64 0, i32 3
  %26 = load i64* %op_targ, align 8, !tbaa !4
  %inc = add i64 %26, 1
  store i64 %inc, i64* %op_targ, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.op* [ %25, %cond.true ], [ null, %entry ]
  %27 = load %struct.xpvcv** %sv_any15, align 8, !tbaa !3
  %xcv_root36 = getelementptr inbounds %struct.xpvcv* %27, i64 0, i32 9
  store %struct.op* %cond, %struct.op** %xcv_root36, align 8, !tbaa !3
  %28 = load %struct.xpvcv** %sv_any, align 8, !tbaa !3
  %xcv_start = getelementptr inbounds %struct.xpvcv* %28, i64 0, i32 8
  %29 = load %struct.op** %xcv_start, align 8, !tbaa !3
  %30 = load %struct.xpvcv** %sv_any15, align 8, !tbaa !3
  %xcv_start39 = getelementptr inbounds %struct.xpvcv* %30, i64 0, i32 8
  store %struct.op* %29, %struct.op** %xcv_start39, align 8, !tbaa !3
  %tobool40 = icmp eq %struct.cv* %outside, null
  br i1 %tobool40, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %31 = bitcast %struct.cv* %outside to %struct.sv*
  store %struct.sv* %31, %struct.sv** @PL_Sv, align 8, !tbaa !3
  %32 = getelementptr inbounds %struct.cv* %outside, i64 0, i32 1
  %33 = load i32* %32, align 4, !tbaa !0
  %inc42 = add i32 %33, 1
  store i32 %inc42, i32* %32, align 4, !tbaa !0
  %34 = load %struct.xpvcv** %sv_any15, align 8, !tbaa !3
  %xcv_outside = getelementptr inbounds %struct.xpvcv* %34, i64 0, i32 16
  store %struct.cv* %outside, %struct.cv** %xcv_outside, align 8, !tbaa !3
  %35 = load %struct.xpvcv** %sv_any, align 8, !tbaa !3
  %xcv_outside_seq = getelementptr inbounds %struct.xpvcv* %35, i64 0, i32 18
  %36 = load i32* %xcv_outside_seq, align 4, !tbaa !0
  %37 = load %struct.xpvcv** %sv_any15, align 8, !tbaa !3
  %xcv_outside_seq47 = getelementptr inbounds %struct.xpvcv* %37, i64 0, i32 18
  store i32 %36, i32* %xcv_outside_seq47, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %38 = load i32* %sv_flags, align 4, !tbaa !0
  %and49 = and i32 %38, 262144
  %tobool50 = icmp eq i32 %and49, 0
  br i1 %tobool50, label %if.end54, label %if.then51

if.then51:                                        ; preds = %if.end
  %39 = load %struct.xpvcv** %sv_any, align 8, !tbaa !3
  %xpv_pv = getelementptr inbounds %struct.xpvcv* %39, i64 0, i32 0
  %40 = load i8** %xpv_pv, align 8, !tbaa !3
  %41 = getelementptr inbounds %struct.xpvcv* %39, i64 0, i32 1
  %42 = load i64* %41, align 8, !tbaa !4
  tail call void @Perl_sv_setpvn(%struct.sv* %call9, i8* %40, i64 %42) #3
  br label %if.end54

if.end54:                                         ; preds = %if.end, %if.then51
  %call55 = tail call %struct.av* @Perl_pad_new(i32 3) #4
  %43 = load %struct.xpvcv** %sv_any15, align 8, !tbaa !3
  %xcv_padlist57 = getelementptr inbounds %struct.xpvcv* %43, i64 0, i32 15
  store %struct.av* %call55, %struct.av** %xcv_padlist57, align 8, !tbaa !3
  %cmp333 = icmp sgt i32 %conv, -1
  br i1 %cmp333, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end54
  %sext340 = shl i64 %10, 32
  %44 = ashr exact i64 %sext340, 32
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %land.end64
  %indvars.iv337 = phi i64 [ %44, %for.body.lr.ph ], [ %indvars.iv.next338, %land.end64 ]
  %45 = load %struct.av** @PL_comppad_name, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds %struct.sv** %6, i64 %indvars.iv337
  %46 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  store %struct.sv* %46, %struct.sv** @PL_Sv, align 8, !tbaa !3
  %tobool59 = icmp eq %struct.sv* %46, null
  br i1 %tobool59, label %land.end64, label %land.rhs60

land.rhs60:                                       ; preds = %for.body
  %sv_refcnt61 = getelementptr inbounds %struct.sv* %46, i64 0, i32 1
  %47 = load i32* %sv_refcnt61, align 4, !tbaa !0
  %inc62 = add i32 %47, 1
  store i32 %inc62, i32* %sv_refcnt61, align 4, !tbaa !0
  br label %land.end64

land.end64:                                       ; preds = %for.body, %land.rhs60
  %48 = trunc i64 %indvars.iv337 to i32
  %call66 = tail call %struct.sv** @Perl_av_store(%struct.av* %45, i32 %48, %struct.sv* %46) #3
  %indvars.iv.next338 = add i64 %indvars.iv337, -1
  %cmp = icmp sgt i32 %48, 0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %land.end64, %if.end54
  %49 = load %struct.av** @PL_comppad, align 8, !tbaa !3
  tail call void @Perl_av_fill(%struct.av* %49, i32 %conv8) #3
  %50 = load %struct.av** @PL_comppad, align 8, !tbaa !3
  %sv_any67 = getelementptr inbounds %struct.av* %50, i64 0, i32 0
  %51 = load %struct.xpvav** %sv_any67, align 8, !tbaa !3
  %xav_array68 = getelementptr inbounds %struct.xpvav* %51, i64 0, i32 0
  %52 = load i8** %xav_array68, align 8, !tbaa !3
  %53 = bitcast i8* %52 to %struct.sv**
  store %struct.sv** %53, %struct.sv*** @PL_curpad, align 8, !tbaa !3
  %cmp70330 = icmp sgt i32 %conv8, 0
  br i1 %cmp70330, label %for.body72.lr.ph, label %for.end222

for.body72.lr.ph:                                 ; preds = %for.end
  %sext339 = shl i64 %11, 32
  %54 = ashr exact i64 %sext339, 32
  br label %for.body72

for.cond164.preheader:                            ; preds = %for.inc161
  br i1 %cmp70330, label %for.body167.lr.ph, label %for.end222

for.body167.lr.ph:                                ; preds = %for.cond164.preheader
  %sext = shl i64 %11, 32
  %55 = ashr exact i64 %sext, 32
  br label %for.body167

for.body72:                                       ; preds = %for.body72.lr.ph, %for.inc161
  %indvars.iv335 = phi i64 [ %54, %for.body72.lr.ph ], [ %indvars.iv.next336, %for.inc161 ]
  %56 = trunc i64 %indvars.iv335 to i32
  %cmp73 = icmp sgt i32 %56, %conv
  br i1 %cmp73, label %if.else153, label %cond.end79

cond.end79:                                       ; preds = %for.body72
  %arrayidx77 = getelementptr inbounds %struct.sv** %6, i64 %indvars.iv335
  %57 = load %struct.sv** %arrayidx77, align 8, !tbaa !3
  %tobool81 = icmp ne %struct.sv* %57, null
  %cmp82 = icmp ne %struct.sv* %57, @PL_sv_undef
  %or.cond = and i1 %tobool81, %cmp82
  br i1 %or.cond, label %if.then84, label %if.else153

if.then84:                                        ; preds = %cond.end79
  %sv_any85 = getelementptr inbounds %struct.sv* %57, i64 0, i32 0
  %58 = load i8** %sv_any85, align 8, !tbaa !3
  %xpv_pv86 = bitcast i8* %58 to i8**
  %59 = load i8** %xpv_pv86, align 8, !tbaa !3
  %sv_flags87 = getelementptr inbounds %struct.sv* %57, i64 0, i32 2
  %60 = load i32* %sv_flags87, align 4, !tbaa !0
  %and88 = and i32 %60, 1048576
  %tobool89 = icmp eq i32 %and88, 0
  br i1 %tobool89, label %if.else112, label %if.then90

if.then90:                                        ; preds = %if.then84
  %call92 = tail call fastcc i64 @S_pad_findlex(i8* %59, i64 %indvars.iv335, %struct.cv* %12) #4
  %conv93 = trunc i64 %call92 to i32
  %tobool94 = icmp eq i32 %conv93, 0
  br i1 %tobool94, label %if.then95, label %if.else

if.then95:                                        ; preds = %if.then90
  %arrayidx97 = getelementptr inbounds %struct.sv** %9, i64 %indvars.iv335
  %61 = load %struct.sv** %arrayidx97, align 8, !tbaa !3
  store %struct.sv* %61, %struct.sv** @PL_Sv, align 8, !tbaa !3
  %tobool98 = icmp eq %struct.sv* %61, null
  br i1 %tobool98, label %land.end103, label %land.rhs99

land.rhs99:                                       ; preds = %if.then95
  %sv_refcnt100 = getelementptr inbounds %struct.sv* %61, i64 0, i32 1
  %62 = load i32* %sv_refcnt100, align 4, !tbaa !0
  %inc101 = add i32 %62, 1
  store i32 %inc101, i32* %sv_refcnt100, align 4, !tbaa !0
  br label %land.end103

land.end103:                                      ; preds = %if.then95, %land.rhs99
  %63 = load %struct.sv*** @PL_curpad, align 8, !tbaa !3
  %arrayidx106 = getelementptr inbounds %struct.sv** %63, i64 %indvars.iv335
  store %struct.sv* %61, %struct.sv** %arrayidx106, align 8, !tbaa !3
  br label %for.inc161

if.else:                                          ; preds = %if.then90
  %cmp107 = icmp eq i32 %conv93, %56
  br i1 %cmp107, label %for.inc161, label %if.then109

if.then109:                                       ; preds = %if.else
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* %59) #3
  br label %for.inc161

if.else112:                                       ; preds = %if.then84
  %64 = load i8* %59, align 1, !tbaa !1
  switch i8 %64, label %if.else138 [
    i8 38, label %if.then116
    i8 64, label %if.then130
    i8 37, label %if.then136
  ]

if.then116:                                       ; preds = %if.else112
  %arrayidx118 = getelementptr inbounds %struct.sv** %9, i64 %indvars.iv335
  %65 = load %struct.sv** %arrayidx118, align 8, !tbaa !3
  store %struct.sv* %65, %struct.sv** @PL_Sv, align 8, !tbaa !3
  %tobool119 = icmp eq %struct.sv* %65, null
  br i1 %tobool119, label %if.end142, label %land.rhs120

land.rhs120:                                      ; preds = %if.then116
  %sv_refcnt121 = getelementptr inbounds %struct.sv* %65, i64 0, i32 1
  %66 = load i32* %sv_refcnt121, align 4, !tbaa !0
  %inc122 = add i32 %66, 1
  store i32 %inc122, i32* %sv_refcnt121, align 4, !tbaa !0
  br label %if.end142

if.then130:                                       ; preds = %if.else112
  %call131 = tail call %struct.av* @Perl_newAV() #3
  %67 = bitcast %struct.av* %call131 to %struct.sv*
  br label %if.end142

if.then136:                                       ; preds = %if.else112
  %call137 = tail call %struct.hv* @Perl_newHV() #3
  %68 = bitcast %struct.hv* %call137 to %struct.sv*
  br label %if.end142

if.else138:                                       ; preds = %if.else112
  %call139 = tail call %struct.sv* @Perl_newSV(i64 0) #3
  br label %if.end142

if.end142:                                        ; preds = %land.rhs120, %if.then116, %if.then130, %if.else138, %if.then136
  %sv.0 = phi %struct.sv* [ %67, %if.then130 ], [ %68, %if.then136 ], [ %call139, %if.else138 ], [ null, %if.then116 ], [ %65, %land.rhs120 ]
  %sv_flags143 = getelementptr inbounds %struct.sv* %sv.0, i64 0, i32 2
  %69 = load i32* %sv_flags143, align 4, !tbaa !0
  %and144 = and i32 %69, 256
  %tobool145 = icmp eq i32 %and144, 0
  br i1 %tobool145, label %if.then146, label %if.end149

if.then146:                                       ; preds = %if.end142
  %or148 = or i32 %69, 1280
  store i32 %or148, i32* %sv_flags143, align 4, !tbaa !0
  br label %if.end149

if.end149:                                        ; preds = %if.end142, %if.then146
  %70 = load %struct.sv*** @PL_curpad, align 8, !tbaa !3
  %arrayidx151 = getelementptr inbounds %struct.sv** %70, i64 %indvars.iv335
  store %struct.sv* %sv.0, %struct.sv** %arrayidx151, align 8, !tbaa !3
  br label %for.inc161

if.else153:                                       ; preds = %for.body72, %cond.end79
  %call155 = tail call %struct.sv* @Perl_newSV(i64 0) #3
  %sv_flags156 = getelementptr inbounds %struct.sv* %call155, i64 0, i32 2
  %71 = load i32* %sv_flags156, align 4, !tbaa !0
  %or157 = or i32 %71, 768
  store i32 %or157, i32* %sv_flags156, align 4, !tbaa !0
  %72 = load %struct.sv*** @PL_curpad, align 8, !tbaa !3
  %arrayidx159 = getelementptr inbounds %struct.sv** %72, i64 %indvars.iv335
  store %struct.sv* %call155, %struct.sv** %arrayidx159, align 8, !tbaa !3
  br label %for.inc161

for.inc161:                                       ; preds = %if.else, %if.else153, %land.end103, %if.then109, %if.end149
  %indvars.iv.next336 = add i64 %indvars.iv335, -1
  %73 = trunc i64 %indvars.iv.next336 to i32
  %cmp70 = icmp sgt i32 %73, 0
  br i1 %cmp70, label %for.body72, label %for.cond164.preheader

for.body167:                                      ; preds = %for.body167.lr.ph, %for.inc220
  %indvars.iv = phi i64 [ %55, %for.body167.lr.ph ], [ %indvars.iv.next, %for.inc220 ]
  %74 = trunc i64 %indvars.iv to i32
  %cmp169 = icmp sgt i32 %74, %conv
  br i1 %cmp169, label %for.inc220, label %cond.end175

cond.end175:                                      ; preds = %for.body167
  %arrayidx173 = getelementptr inbounds %struct.sv** %6, i64 %indvars.iv
  %75 = load %struct.sv** %arrayidx173, align 8, !tbaa !3
  %tobool177 = icmp ne %struct.sv* %75, null
  %cmp179 = icmp ne %struct.sv* %75, @PL_sv_undef
  %or.cond236 = and i1 %tobool177, %cmp179
  br i1 %or.cond236, label %land.lhs.true181, label %for.inc220

land.lhs.true181:                                 ; preds = %cond.end175
  %sv_flags182 = getelementptr inbounds %struct.sv* %75, i64 0, i32 2
  %76 = load i32* %sv_flags182, align 4, !tbaa !0
  %and183 = and i32 %76, 1048576
  %tobool184 = icmp eq i32 %and183, 0
  br i1 %tobool184, label %land.lhs.true185, label %for.inc220

land.lhs.true185:                                 ; preds = %land.lhs.true181
  %sv_any186 = getelementptr inbounds %struct.sv* %75, i64 0, i32 0
  %77 = load i8** %sv_any186, align 8, !tbaa !3
  %xpv_pv187 = bitcast i8* %77 to i8**
  %78 = load i8** %xpv_pv187, align 8, !tbaa !3
  %79 = load i8* %78, align 1, !tbaa !1
  %cmp189 = icmp eq i8 %79, 38
  br i1 %cmp189, label %land.lhs.true191, label %for.inc220

land.lhs.true191:                                 ; preds = %land.lhs.true185
  %arrayidx193 = getelementptr inbounds %struct.sv** %9, i64 %indvars.iv
  %80 = load %struct.sv** %arrayidx193, align 8, !tbaa !3
  %sv_any194 = getelementptr inbounds %struct.sv* %80, i64 0, i32 0
  %81 = load i8** %sv_any194, align 8, !tbaa !3
  %xcv_flags195 = getelementptr inbounds i8* %81, i64 136
  %82 = bitcast i8* %xcv_flags195 to i16*
  %83 = load i16* %82, align 2, !tbaa !5
  %and197 = and i16 %83, 1
  %tobool198 = icmp eq i16 %and197, 0
  br i1 %tobool198, label %for.inc220, label %if.then199

if.then199:                                       ; preds = %land.lhs.true191
  %84 = bitcast %struct.sv* %80 to %struct.cv*
  %call202 = tail call fastcc %struct.cv* @S_cv_clone2(%struct.cv* %84, %struct.cv* %12) #4
  %85 = load %struct.sv** %arrayidx193, align 8, !tbaa !3
  tail call void @Perl_sv_free(%struct.sv* %85) #3
  %sv_any205 = getelementptr inbounds %struct.cv* %call202, i64 0, i32 0
  %86 = load %struct.xpvcv** %sv_any205, align 8, !tbaa !3
  %xcv_flags206 = getelementptr inbounds %struct.xpvcv* %86, i64 0, i32 17
  %87 = load i16* %xcv_flags206, align 2, !tbaa !5
  %or208 = or i16 %87, 1
  store i16 %or208, i16* %xcv_flags206, align 2, !tbaa !5
  %sv_flags210 = getelementptr inbounds %struct.cv* %call202, i64 0, i32 2
  %88 = load i32* %sv_flags210, align 4, !tbaa !0
  %or211 = or i32 %88, 1280
  store i32 %or211, i32* %sv_flags210, align 4, !tbaa !0
  %89 = bitcast %struct.cv* %call202 to %struct.sv*
  %90 = load %struct.sv*** @PL_curpad, align 8, !tbaa !3
  %arrayidx213 = getelementptr inbounds %struct.sv** %90, i64 %indvars.iv
  store %struct.sv* %89, %struct.sv** %arrayidx213, align 8, !tbaa !3
  %91 = load %struct.xpvcv** %sv_any205, align 8, !tbaa !3
  %xcv_flags215 = getelementptr inbounds %struct.xpvcv* %91, i64 0, i32 17
  %92 = load i16* %xcv_flags215, align 2, !tbaa !5
  %or217 = or i16 %92, 1024
  store i16 %or217, i16* %xcv_flags215, align 2, !tbaa !5
  tail call void @Perl_sv_free(%struct.sv* %call9) #3
  br label %for.inc220

for.inc220:                                       ; preds = %for.body167, %land.lhs.true191, %land.lhs.true181, %cond.end175, %land.lhs.true185, %if.then199
  %indvars.iv.next = add i64 %indvars.iv, -1
  %93 = trunc i64 %indvars.iv.next to i32
  %cmp165 = icmp sgt i32 %93, 0
  br i1 %cmp165, label %for.body167, label %for.end222

for.end222:                                       ; preds = %for.end, %for.inc220, %for.cond164.preheader
  tail call void @Perl_pop_scope() #3
  %94 = load %struct.xpvcv** %sv_any15, align 8, !tbaa !3
  %xcv_flags224 = getelementptr inbounds %struct.xpvcv* %94, i64 0, i32 17
  %95 = load i16* %xcv_flags224, align 2, !tbaa !5
  %and226 = and i16 %95, 512
  %tobool227 = icmp eq i16 %and226, 0
  br i1 %tobool227, label %if.end235, label %if.then228

if.then228:                                       ; preds = %for.end222
  %xcv_start230 = getelementptr inbounds %struct.xpvcv* %94, i64 0, i32 8
  %96 = load %struct.op** %xcv_start230, align 8, !tbaa !3
  %call231 = tail call %struct.sv* @Perl_op_const_sv(%struct.op* %96, %struct.cv* %12) #3
  tail call void @Perl_sv_free(%struct.sv* %call9) #3
  %97 = load %struct.xpvcv** %sv_any, align 8, !tbaa !3
  %xcv_stash233 = getelementptr inbounds %struct.xpvcv* %97, i64 0, i32 7
  %98 = load %struct.hv** %xcv_stash233, align 8, !tbaa !3
  %call234 = tail call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %98, i8* null, %struct.sv* %call231) #3
  br label %if.end235

if.end235:                                        ; preds = %for.end222, %if.then228
  %cv.0 = phi %struct.cv* [ %call234, %if.then228 ], [ %12, %for.end222 ]
  ret %struct.cv* %cv.0
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_pad_fixup_inner_anons(%struct.av* nocapture %padlist, %struct.cv* nocapture %old_cv, %struct.cv* %new_cv) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.av* %padlist, i64 0, i32 0
  %0 = load %struct.xpvav** %sv_any, align 8, !tbaa !3
  %xav_array = getelementptr inbounds %struct.xpvav* %0, i64 0, i32 0
  %1 = load i8** %xav_array, align 8, !tbaa !3
  %2 = bitcast i8* %1 to %struct.sv**
  %3 = load %struct.sv** %2, align 8, !tbaa !3
  %arrayidx3 = getelementptr inbounds i8* %1, i64 8
  %4 = bitcast i8* %arrayidx3 to %struct.sv**
  %5 = load %struct.sv** %4, align 8, !tbaa !3
  %sv_any4 = bitcast %struct.sv* %3 to %struct.xpvav**
  %6 = load %struct.xpvav** %sv_any4, align 8, !tbaa !3
  %xav_array5 = getelementptr inbounds %struct.xpvav* %6, i64 0, i32 0
  %7 = load i8** %xav_array5, align 8, !tbaa !3
  %8 = bitcast i8* %7 to %struct.sv**
  %sv_any6 = bitcast %struct.sv* %5 to %struct.xpvav**
  %9 = load %struct.xpvav** %sv_any6, align 8, !tbaa !3
  %xav_array7 = getelementptr inbounds %struct.xpvav* %9, i64 0, i32 0
  %10 = load i8** %xav_array7, align 8, !tbaa !3
  %11 = bitcast i8* %10 to %struct.sv**
  %xav_fill = getelementptr inbounds %struct.xpvav* %6, i64 0, i32 1
  %12 = load i64* %xav_fill, align 8, !tbaa !4
  %conv = trunc i64 %12 to i32
  %cmp28 = icmp sgt i32 %conv, 0
  br i1 %cmp28, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sext = shl i64 %12, 32
  %13 = ashr exact i64 %sext, 32
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ %13, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx10 = getelementptr inbounds %struct.sv** %8, i64 %indvars.iv
  %14 = load %struct.sv** %arrayidx10, align 8, !tbaa !3
  %tobool = icmp ne %struct.sv* %14, null
  %cmp11 = icmp ne %struct.sv* %14, @PL_sv_undef
  %or.cond = and i1 %tobool, %cmp11
  br i1 %or.cond, label %land.lhs.true13, label %for.inc

land.lhs.true13:                                  ; preds = %for.body
  %sv_any14 = getelementptr inbounds %struct.sv* %14, i64 0, i32 0
  %15 = load i8** %sv_any14, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %15 to i8**
  %16 = load i8** %xpv_pv, align 8, !tbaa !3
  %17 = load i8* %16, align 1, !tbaa !1
  %cmp16 = icmp eq i8 %17, 38
  br i1 %cmp16, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true13
  %arrayidx19 = getelementptr inbounds %struct.sv** %11, i64 %indvars.iv
  %18 = load %struct.sv** %arrayidx19, align 8, !tbaa !3
  %sv_any20 = bitcast %struct.sv* %18 to %struct.xpvcv**
  %19 = load %struct.xpvcv** %sv_any20, align 8, !tbaa !3
  %xcv_outside = getelementptr inbounds %struct.xpvcv* %19, i64 0, i32 16
  store %struct.cv* %new_cv, %struct.cv** %xcv_outside, align 8, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true13, %if.then
  %indvars.iv.next = add i64 %indvars.iv, -1
  %20 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp sgt i32 %20, 0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_pad_push(%struct.av* %padlist, i32 %depth, i32 %has_args) #0 {
entry:
  %conv = sext i32 %depth to i64
  %sv_any = getelementptr inbounds %struct.av* %padlist, i64 0, i32 0
  %0 = load %struct.xpvav** %sv_any, align 8, !tbaa !3
  %xav_fill = getelementptr inbounds %struct.xpvav* %0, i64 0, i32 1
  %1 = load i64* %xav_fill, align 8, !tbaa !4
  %cmp = icmp sgt i64 %conv, %1
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %xav_array = getelementptr inbounds %struct.xpvav* %0, i64 0, i32 0
  %2 = load i8** %xav_array, align 8, !tbaa !3
  %3 = bitcast i8* %2 to %struct.sv**
  %call = tail call %struct.av* @Perl_newAV() #3
  %sub = add nsw i32 %depth, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds %struct.sv** %3, i64 %idxprom
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %sv_any3 = getelementptr inbounds %struct.sv* %4, i64 0, i32 0
  %5 = load i8** %sv_any3, align 8, !tbaa !3
  %xav_array4 = bitcast i8* %5 to i8**
  %6 = load i8** %xav_array4, align 8, !tbaa !3
  %7 = bitcast i8* %6 to %struct.sv**
  %arrayidx5 = getelementptr inbounds i8* %2, i64 8
  %8 = bitcast i8* %arrayidx5 to %struct.sv**
  %9 = load %struct.sv** %8, align 8, !tbaa !3
  %sv_any6 = bitcast %struct.sv* %9 to %struct.xpvav**
  %10 = load %struct.xpvav** %sv_any6, align 8, !tbaa !3
  %xav_fill7 = getelementptr inbounds %struct.xpvav* %10, i64 0, i32 1
  %11 = load i64* %xav_fill7, align 8, !tbaa !4
  %conv8 = trunc i64 %11 to i32
  %12 = load %struct.sv** %3, align 8, !tbaa !3
  %sv_any10 = bitcast %struct.sv* %12 to %struct.xpvav**
  %13 = load %struct.xpvav** %sv_any10, align 8, !tbaa !3
  %xav_fill11 = getelementptr inbounds %struct.xpvav* %13, i64 0, i32 1
  %14 = load i64* %xav_fill11, align 8, !tbaa !4
  %conv12 = trunc i64 %14 to i32
  %xav_array15 = getelementptr inbounds %struct.xpvav* %13, i64 0, i32 0
  %15 = load i8** %xav_array15, align 8, !tbaa !3
  %16 = bitcast i8* %15 to %struct.sv**
  %cmp16106 = icmp sgt i32 %conv8, 0
  br i1 %cmp16106, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %sext = shl i64 %11, 32
  %17 = ashr exact i64 %sext, 32
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ %17, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %18 = trunc i64 %indvars.iv to i32
  %cmp18 = icmp slt i32 %conv12, %18
  br i1 %cmp18, label %if.else59, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %arrayidx21 = getelementptr inbounds %struct.sv** %16, i64 %indvars.iv
  %19 = load %struct.sv** %arrayidx21, align 8, !tbaa !3
  %cmp22 = icmp eq %struct.sv* %19, @PL_sv_undef
  br i1 %cmp22, label %if.else59, label %if.then24

if.then24:                                        ; preds = %land.lhs.true
  %sv_flags = getelementptr inbounds %struct.sv* %19, i64 0, i32 2
  %20 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %20, 1048576
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then33

lor.lhs.false:                                    ; preds = %if.then24
  %sv_any27 = getelementptr inbounds %struct.sv* %19, i64 0, i32 0
  %21 = load i8** %sv_any27, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %21 to i8**
  %22 = load i8** %xpv_pv, align 8, !tbaa !3
  %23 = load i8* %22, align 1, !tbaa !1
  switch i8 %23, label %if.else52 [
    i8 38, label %if.then33
    i8 64, label %if.then42
    i8 37, label %if.then49
  ]

if.then33:                                        ; preds = %lor.lhs.false, %if.then24
  %arrayidx35 = getelementptr inbounds %struct.sv** %7, i64 %indvars.iv
  %24 = load %struct.sv** %arrayidx35, align 8, !tbaa !3
  store %struct.sv* %24, %struct.sv** @PL_Sv, align 8, !tbaa !3
  %tobool36 = icmp eq %struct.sv* %24, null
  br i1 %tobool36, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.then33
  %sv_refcnt = getelementptr inbounds %struct.sv* %24, i64 0, i32 1
  %25 = load i32* %sv_refcnt, align 4, !tbaa !0
  %inc = add i32 %25, 1
  store i32 %inc, i32* %sv_refcnt, align 4, !tbaa !0
  br label %land.end

land.end:                                         ; preds = %if.then33, %land.rhs
  %call38 = tail call %struct.sv** @Perl_av_store(%struct.av* %call, i32 %18, %struct.sv* %24) #3
  br label %for.inc

if.then42:                                        ; preds = %lor.lhs.false
  %call43 = tail call %struct.av* @Perl_newAV() #3
  %26 = bitcast %struct.av* %call43 to %struct.sv*
  %call44 = tail call %struct.sv** @Perl_av_store(%struct.av* %call, i32 %18, %struct.sv* %26) #3
  br label %if.end56

if.then49:                                        ; preds = %lor.lhs.false
  %call50 = tail call %struct.hv* @Perl_newHV() #3
  %27 = bitcast %struct.hv* %call50 to %struct.sv*
  %call51 = tail call %struct.sv** @Perl_av_store(%struct.av* %call, i32 %18, %struct.sv* %27) #3
  br label %if.end56

if.else52:                                        ; preds = %lor.lhs.false
  %call53 = tail call %struct.sv* @Perl_newSV(i64 0) #3
  %call54 = tail call %struct.sv** @Perl_av_store(%struct.av* %call, i32 %18, %struct.sv* %call53) #3
  br label %if.end56

if.end56:                                         ; preds = %if.then49, %if.else52, %if.then42
  %sv.0 = phi %struct.sv* [ %26, %if.then42 ], [ %27, %if.then49 ], [ %call53, %if.else52 ]
  %sv_flags57 = getelementptr inbounds %struct.sv* %sv.0, i64 0, i32 2
  %28 = load i32* %sv_flags57, align 4, !tbaa !0
  %or = or i32 %28, 1280
  store i32 %or, i32* %sv_flags57, align 4, !tbaa !0
  br label %for.inc

if.else59:                                        ; preds = %land.lhs.true, %for.body
  %call60 = tail call %struct.sv* @Perl_newSV(i64 0) #3
  %call61 = tail call %struct.sv** @Perl_av_store(%struct.av* %call, i32 %18, %struct.sv* %call60) #3
  %sv_flags62 = getelementptr inbounds %struct.sv* %call60, i64 0, i32 2
  %29 = load i32* %sv_flags62, align 4, !tbaa !0
  %or63 = or i32 %29, 768
  store i32 %or63, i32* %sv_flags62, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %if.else59, %if.end56, %land.end
  %indvars.iv.next = add i64 %indvars.iv, -1
  %30 = trunc i64 %indvars.iv.next to i32
  %cmp16 = icmp sgt i32 %30, 0
  br i1 %cmp16, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end
  %tobool65 = icmp eq i32 %has_args, 0
  br i1 %tobool65, label %if.end70, label %if.then66

if.then66:                                        ; preds = %for.end
  %call67 = tail call %struct.av* @Perl_newAV() #3
  tail call void @Perl_av_extend(%struct.av* %call67, i32 0) #3
  %31 = bitcast %struct.av* %call67 to %struct.sv*
  %call68 = tail call %struct.sv** @Perl_av_store(%struct.av* %call, i32 0, %struct.sv* %31) #3
  %sv_any69 = getelementptr inbounds %struct.av* %call67, i64 0, i32 0
  %32 = load %struct.xpvav** %sv_any69, align 8, !tbaa !3
  %xav_flags = getelementptr inbounds %struct.xpvav* %32, i64 0, i32 9
  store i8 2, i8* %xav_flags, align 1, !tbaa !1
  br label %if.end70

if.end70:                                         ; preds = %for.end, %if.then66
  %33 = bitcast %struct.av* %call to %struct.sv*
  %call71 = tail call %struct.sv** @Perl_av_store(%struct.av* %padlist, i32 %depth, %struct.sv* %33) #3
  %34 = load %struct.xpvav** %sv_any, align 8, !tbaa !3
  %xav_fill74 = getelementptr inbounds %struct.xpvav* %34, i64 0, i32 1
  store i64 %conv, i64* %xav_fill74, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %entry, %if.end70
  ret void
}

; Function Attrs: optsize
declare void @Perl_push_scope() #1

; Function Attrs: optsize
declare void @Perl_av_fill(%struct.av*, i32) #1

; Function Attrs: optsize
declare void @Perl_pop_scope() #1

; Function Attrs: optsize
declare %struct.sv* @Perl_op_const_sv(%struct.op*, %struct.cv*) #1

; Function Attrs: optsize
declare %struct.cv* @Perl_newCONSTSUB(%struct.hv*, i8*, %struct.sv*) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
!6 = metadata !{metadata !"double", metadata !1}

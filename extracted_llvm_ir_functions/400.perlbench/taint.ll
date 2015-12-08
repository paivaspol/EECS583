; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/taint.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.sv = type { i8*, i32, i32 }
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

@PL_tainted = external global i8
@PL_no_security = external constant [0 x i8]
@PL_euid = external global i32
@PL_uid = external global i32
@.str = private unnamed_addr constant [22 x i8] c" while running setuid\00", align 1
@PL_egid = external global i32
@PL_gid = external global i32
@.str1 = private unnamed_addr constant [22 x i8] c" while running setgid\00", align 1
@PL_taint_warn = external global i8
@.str2 = private unnamed_addr constant [30 x i8] c" while running with -t switch\00", align 1
@.str3 = private unnamed_addr constant [30 x i8] c" while running with -T switch\00", align 1
@PL_unsafe = external global i8
@PL_curcop = external global %struct.cop*
@PL_dowarn = external global i8
@Perl_taint_env.misc_env = internal unnamed_addr constant [5 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str7, i32 0, i32 0), i8* null], align 16
@.str4 = private unnamed_addr constant [4 x i8] c"IFS\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"CDPATH\00", align 1
@.str6 = private unnamed_addr constant [4 x i8] c"ENV\00", align 1
@.str7 = private unnamed_addr constant [9 x i8] c"BASH_ENV\00", align 1
@PL_envgv = external global %struct.gv*
@.str8 = private unnamed_addr constant [25 x i8] c"%%ENV is aliased to %s%s\00", align 1
@.str9 = private unnamed_addr constant [17 x i8] c"another variable\00", align 1
@.str10 = private unnamed_addr constant [27 x i8] c"%%ENV is aliased to %%%s%s\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str12 = private unnamed_addr constant [14 x i8] c"Insecure %s%s\00", align 1
@.str13 = private unnamed_addr constant [11 x i8] c"$ENV{PATH}\00", align 1
@.str14 = private unnamed_addr constant [27 x i8] c"Insecure directory in %s%s\00", align 1
@.str15 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str16 = private unnamed_addr constant [5 x i8] c"-_.+\00", align 1
@.str17 = private unnamed_addr constant [20 x i8] c"Insecure $ENV{%s}%s\00", align 1
@PL_sv_undef = external global %struct.sv

; Function Attrs: nounwind optsize uwtable
define void @Perl_taint_proper(i8* %f, i8* %s) #0 {
entry:
  %0 = load i8* @PL_tainted, align 1, !tbaa !0
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %if.end42, label %if.then

if.then:                                          ; preds = %entry
  %tobool1 = icmp eq i8* %f, null
  %.f = select i1 %tobool1, i8* getelementptr inbounds ([0 x i8]* @PL_no_security, i64 0, i64 0), i8* %f
  %1 = load i32* @PL_euid, align 4, !tbaa !2
  %2 = load i32* @PL_uid, align 4, !tbaa !2
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.else, label %if.end12

if.else:                                          ; preds = %if.then
  %3 = load i32* @PL_egid, align 4, !tbaa !2
  %4 = load i32* @PL_gid, align 4, !tbaa !2
  %cmp4 = icmp eq i32 %3, %4
  br i1 %cmp4, label %if.else6, label %if.end12

if.else6:                                         ; preds = %if.else
  %5 = load i8* @PL_taint_warn, align 1, !tbaa !0
  %tobool7 = icmp eq i8 %5, 0
  %. = select i1 %tobool7, i8* getelementptr inbounds ([30 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @.str2, i64 0, i64 0)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then, %if.else6
  %ug.0 = phi i8* [ %., %if.else6 ], [ getelementptr inbounds ([22 x i8]* @.str, i64 0, i64 0), %if.then ], [ getelementptr inbounds ([22 x i8]* @.str1, i64 0, i64 0), %if.else ]
  %6 = load i8* @PL_unsafe, align 1, !tbaa !0
  %7 = load i8* @PL_taint_warn, align 1, !tbaa !0
  %8 = or i8 %7, %6
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %if.else40, label %if.then16

if.then16:                                        ; preds = %if.end12
  %10 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings = getelementptr inbounds %struct.cop* %10, i64 0, i32 14
  %11 = load %struct.sv** %cop_warnings, align 8, !tbaa !3
  %cmp17 = icmp eq %struct.sv* %11, null
  br i1 %cmp17, label %lor.lhs.false30, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then16
  %12 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings19 = getelementptr inbounds %struct.cop* %12, i64 0, i32 14
  %13 = load %struct.sv** %cop_warnings19, align 8, !tbaa !3
  %cmp20 = icmp eq %struct.sv* %13, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp20, label %lor.lhs.false30, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %land.lhs.true
  %14 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings23 = getelementptr inbounds %struct.cop* %14, i64 0, i32 14
  %15 = load %struct.sv** %cop_warnings23, align 8, !tbaa !3
  %cmp24 = icmp eq %struct.sv* %15, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp24, label %if.then38, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %land.lhs.true22
  %16 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings27 = getelementptr inbounds %struct.cop* %16, i64 0, i32 14
  %17 = load %struct.sv** %cop_warnings27, align 8, !tbaa !3
  %sv_any = getelementptr inbounds %struct.sv* %17, i64 0, i32 0
  %18 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %18 to i8**
  %19 = load i8** %xpv_pv, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %19, i64 9
  %20 = load i8* %arrayidx, align 1, !tbaa !0
  %and = and i8 %20, 64
  %tobool29 = icmp eq i8 %and, 0
  br i1 %tobool29, label %lor.lhs.false30, label %if.then38

lor.lhs.false30:                                  ; preds = %lor.lhs.false26, %land.lhs.true, %if.then16
  %21 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings31 = getelementptr inbounds %struct.cop* %21, i64 0, i32 14
  %22 = load %struct.sv** %cop_warnings31, align 8, !tbaa !3
  %cmp32 = icmp eq %struct.sv* %22, null
  br i1 %cmp32, label %land.lhs.true34, label %if.end42

land.lhs.true34:                                  ; preds = %lor.lhs.false30
  %23 = load i8* @PL_dowarn, align 1, !tbaa !0
  %and36 = and i8 %23, 1
  %tobool37 = icmp eq i8 %and36, 0
  br i1 %tobool37, label %if.end42, label %if.then38

if.then38:                                        ; preds = %lor.lhs.false26, %land.lhs.true34, %land.lhs.true22
  tail call void (i32, i8*, ...)* @Perl_warner(i32 39, i8* %.f, i8* %s, i8* %ug.0) #4
  br label %if.end42

if.else40:                                        ; preds = %if.end12
  tail call void (i8*, ...)* @Perl_croak(i8* %.f, i8* %s, i8* %ug.0) #4
  br label %if.end42

if.end42:                                         ; preds = %land.lhs.true34, %entry, %if.else40, %if.then38, %lor.lhs.false30
  ret void
}

; Function Attrs: optsize
declare void @Perl_warner(i32, i8*, ...) #1

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_taint_env() #0 {
entry:
  %n_a = alloca i64, align 8
  %0 = load %struct.gv** @PL_envgv, align 8, !tbaa !3
  %tobool = icmp eq %struct.gv* %0, null
  br i1 %tobool, label %for.end, label %if.end

if.end:                                           ; preds = %entry
  %sv_any = getelementptr inbounds %struct.gv* %0, i64 0, i32 0
  %1 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %1, i64 0, i32 7
  %2 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %gp_hv = getelementptr inbounds %struct.gp* %2, i64 0, i32 5
  %3 = load %struct.hv** %gp_hv, align 8, !tbaa !3
  %tobool1 = icmp eq %struct.hv* %3, null
  br i1 %tobool1, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %sv_flags = getelementptr inbounds %struct.hv* %3, i64 0, i32 2
  %4 = load i32* %sv_flags, align 4, !tbaa !2
  %and = and i32 %4, 32768
  %tobool5 = icmp eq i32 %and, 0
  br i1 %tobool5, label %if.then10, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = bitcast %struct.hv* %3 to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %5, i32 69) #4
  %tobool9 = icmp eq %struct.magic* %call, null
  br i1 %tobool9, label %land.lhs.true.if.then10_crit_edge, label %if.end22

land.lhs.true.if.then10_crit_edge:                ; preds = %land.lhs.true
  %.pre269 = load %struct.gv** @PL_envgv, align 8, !tbaa !3
  %sv_any11.phi.trans.insert = getelementptr inbounds %struct.gv* %.pre269, i64 0, i32 0
  %.pre270 = load %struct.xpvgv** %sv_any11.phi.trans.insert, align 8, !tbaa !3
  %xgv_gp12.phi.trans.insert = getelementptr inbounds %struct.xpvgv* %.pre270, i64 0, i32 7
  %.pre271 = load %struct.gp** %xgv_gp12.phi.trans.insert, align 8, !tbaa !3
  br label %if.then10

if.then10:                                        ; preds = %land.lhs.true.if.then10_crit_edge, %lor.lhs.false, %if.end
  %6 = phi %struct.gp* [ %.pre271, %land.lhs.true.if.then10_crit_edge ], [ %2, %lor.lhs.false ], [ %2, %if.end ]
  %7 = phi %struct.gv* [ %.pre269, %land.lhs.true.if.then10_crit_edge ], [ %0, %lor.lhs.false ], [ %0, %if.end ]
  %8 = load i8* @PL_tainted, align 1, !tbaa !0
  %gp_egv = getelementptr inbounds %struct.gp* %6, i64 0, i32 6
  %9 = load %struct.gv** %gp_egv, align 8, !tbaa !3
  %tobool13 = icmp eq %struct.gv* %9, null
  %. = select i1 %tobool13, %struct.gv* %7, %struct.gv* %9
  %sv_any17 = getelementptr inbounds %struct.gv* %., i64 0, i32 0
  %10 = load %struct.xpvgv** %sv_any17, align 8, !tbaa !3
  %xgv_name = getelementptr inbounds %struct.xpvgv* %10, i64 0, i32 8
  %11 = load i8** %xgv_name, align 8, !tbaa !3
  store i8 1, i8* @PL_tainted, align 1, !tbaa !0
  %call18 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([4 x i8]* @.str6, i64 0, i64 0)) #4
  %tobool19 = icmp eq i32 %call18, 0
  br i1 %tobool19, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then10
  call void @Perl_taint_proper(i8* getelementptr inbounds ([25 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str9, i64 0, i64 0)) #5
  br label %if.end21

if.else:                                          ; preds = %if.then10
  call void @Perl_taint_proper(i8* getelementptr inbounds ([27 x i8]* @.str10, i64 0, i64 0), i8* %11) #5
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then20
  store i8 %8, i8* @PL_tainted, align 1, !tbaa !0
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true, %if.end21
  %12 = load %struct.gv** @PL_envgv, align 8, !tbaa !3
  %sv_any23 = getelementptr inbounds %struct.gv* %12, i64 0, i32 0
  %13 = load %struct.xpvgv** %sv_any23, align 8, !tbaa !3
  %xgv_gp24 = getelementptr inbounds %struct.xpvgv* %13, i64 0, i32 7
  %14 = load %struct.gp** %xgv_gp24, align 8, !tbaa !3
  %gp_hv25 = getelementptr inbounds %struct.gp* %14, i64 0, i32 5
  %15 = load %struct.hv** %gp_hv25, align 8, !tbaa !3
  %tobool26 = icmp eq %struct.hv* %15, null
  br i1 %tobool26, label %cond.false31, label %cond.end36

cond.false31:                                     ; preds = %if.end22
  %call32 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %12) #4
  %sv_any33 = getelementptr inbounds %struct.gv* %call32, i64 0, i32 0
  %16 = load %struct.xpvgv** %sv_any33, align 8, !tbaa !3
  %xgv_gp34 = getelementptr inbounds %struct.xpvgv* %16, i64 0, i32 7
  %17 = load %struct.gp** %xgv_gp34, align 8, !tbaa !3
  %gp_hv35 = getelementptr inbounds %struct.gp* %17, i64 0, i32 5
  %18 = load %struct.hv** %gp_hv35, align 8, !tbaa !3
  br label %cond.end36

cond.end36:                                       ; preds = %if.end22, %cond.false31
  %cond37 = phi %struct.hv* [ %18, %cond.false31 ], [ %15, %if.end22 ]
  %call38 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %cond37, i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0), i32 4, i32 0) #4
  %tobool39 = icmp eq %struct.sv** %call38, null
  br i1 %tobool39, label %if.end59, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %cond.end36
  %19 = load %struct.sv** %call38, align 8, !tbaa !3
  %tobool41 = icmp eq %struct.sv* %19, null
  br i1 %tobool41, label %if.end59, label %if.then42

if.then42:                                        ; preds = %land.lhs.true40
  %sv_flags43 = getelementptr inbounds %struct.sv* %19, i64 0, i32 2
  %20 = load i32* %sv_flags43, align 4, !tbaa !2
  %and44 = and i32 %20, 57344
  %tobool45 = icmp eq i32 %and44, 0
  br i1 %tobool45, label %if.end50, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %if.then42
  %call47 = call signext i8 @Perl_sv_tainted(%struct.sv* %19) #4
  %tobool48 = icmp eq i8 %call47, 0
  br i1 %tobool48, label %if.end50, label %if.then49

if.then49:                                        ; preds = %land.lhs.true46
  store i8 1, i8* @PL_tainted, align 1, !tbaa !0
  call void @Perl_taint_proper(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str13, i64 0, i64 0)) #5
  br label %if.end50

if.end50:                                         ; preds = %land.lhs.true46, %if.then42, %if.then49
  %21 = load %struct.sv** %call38, align 8, !tbaa !3
  %call51 = call %struct.magic* @Perl_mg_find(%struct.sv* %21, i32 101) #4
  %tobool52 = icmp eq %struct.magic* %call51, null
  br i1 %tobool52, label %if.end59, label %land.lhs.true53

land.lhs.true53:                                  ; preds = %if.end50
  %mg_flags = getelementptr inbounds %struct.magic* %call51, i64 0, i32 4
  %22 = load i8* %mg_flags, align 1, !tbaa !0
  %and55 = and i8 %22, 1
  %tobool56 = icmp eq i8 %and55, 0
  br i1 %tobool56, label %if.end59, label %if.then57

if.then57:                                        ; preds = %land.lhs.true53
  store i8 1, i8* @PL_tainted, align 1, !tbaa !0
  call void @Perl_taint_proper(i8* getelementptr inbounds ([27 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str13, i64 0, i64 0)) #5
  br label %if.end59

if.end59:                                         ; preds = %land.lhs.true53, %if.end50, %land.lhs.true40, %cond.end36, %if.then57
  %23 = load %struct.gv** @PL_envgv, align 8, !tbaa !3
  %sv_any60 = getelementptr inbounds %struct.gv* %23, i64 0, i32 0
  %24 = load %struct.xpvgv** %sv_any60, align 8, !tbaa !3
  %xgv_gp61 = getelementptr inbounds %struct.xpvgv* %24, i64 0, i32 7
  %25 = load %struct.gp** %xgv_gp61, align 8, !tbaa !3
  %gp_hv62 = getelementptr inbounds %struct.gp* %25, i64 0, i32 5
  %26 = load %struct.hv** %gp_hv62, align 8, !tbaa !3
  %tobool63 = icmp eq %struct.hv* %26, null
  br i1 %tobool63, label %cond.false68, label %cond.end73

cond.false68:                                     ; preds = %if.end59
  %call69 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %23) #4
  %sv_any70 = getelementptr inbounds %struct.gv* %call69, i64 0, i32 0
  %27 = load %struct.xpvgv** %sv_any70, align 8, !tbaa !3
  %xgv_gp71 = getelementptr inbounds %struct.xpvgv* %27, i64 0, i32 7
  %28 = load %struct.gp** %xgv_gp71, align 8, !tbaa !3
  %gp_hv72 = getelementptr inbounds %struct.gp* %28, i64 0, i32 5
  %29 = load %struct.hv** %gp_hv72, align 8, !tbaa !3
  br label %cond.end73

cond.end73:                                       ; preds = %if.end59, %cond.false68
  %cond74 = phi %struct.hv* [ %29, %cond.false68 ], [ %26, %if.end59 ]
  %call75 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %cond74, i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0), i32 4, i32 0) #4
  %tobool76 = icmp eq %struct.sv** %call75, null
  br i1 %tobool76, label %for.body, label %land.lhs.true77

land.lhs.true77:                                  ; preds = %cond.end73
  %30 = load %struct.sv** %call75, align 8, !tbaa !3
  %tobool78 = icmp eq %struct.sv* %30, null
  br i1 %tobool78, label %for.body, label %land.lhs.true79

land.lhs.true79:                                  ; preds = %land.lhs.true77
  %sv_flags80 = getelementptr inbounds %struct.sv* %30, i64 0, i32 2
  %31 = load i32* %sv_flags80, align 4, !tbaa !2
  %and81 = and i32 %31, 57344
  %tobool82 = icmp eq i32 %and81, 0
  br i1 %tobool82, label %for.body, label %land.lhs.true83

land.lhs.true83:                                  ; preds = %land.lhs.true79
  %call84 = call signext i8 @Perl_sv_tainted(%struct.sv* %30) #4
  %tobool86 = icmp eq i8 %call84, 0
  br i1 %tobool86, label %for.body, label %if.then87

if.then87:                                        ; preds = %land.lhs.true83
  %32 = load i8* @PL_tainted, align 1, !tbaa !0
  %33 = load %struct.sv** %call75, align 8, !tbaa !3
  %sv_flags89 = getelementptr inbounds %struct.sv* %33, i64 0, i32 2
  %34 = load i32* %sv_flags89, align 4, !tbaa !2
  %and90 = and i32 %34, 262144
  %cmp = icmp eq i32 %and90, 0
  br i1 %cmp, label %cond.false95, label %cond.true92

cond.true92:                                      ; preds = %if.then87
  %sv_any93 = getelementptr inbounds %struct.sv* %33, i64 0, i32 0
  %35 = load i8** %sv_any93, align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %35, i64 8
  %36 = bitcast i8* %xpv_cur to i64*
  %37 = load i64* %36, align 8, !tbaa !4
  store i64 %37, i64* %n_a, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %35 to i8**
  %38 = load i8** %xpv_pv, align 8, !tbaa !3
  br label %cond.end97

cond.false95:                                     ; preds = %if.then87
  %call96 = call i8* @Perl_sv_2pv_flags(%struct.sv* %33, i64* %n_a, i32 2) #4
  %.pre = load i64* %n_a, align 8, !tbaa !4
  br label %cond.end97

cond.end97:                                       ; preds = %cond.false95, %cond.true92
  %39 = phi i64 [ %37, %cond.true92 ], [ %.pre, %cond.false95 ]
  %cond98 = phi i8* [ %38, %cond.true92 ], [ %call96, %cond.false95 ]
  %add.ptr = getelementptr inbounds i8* %cond98, i64 %39
  store i8 %32, i8* @PL_tainted, align 1, !tbaa !0
  %cmp100 = icmp sgt i64 %39, 0
  br i1 %cmp100, label %land.lhs.true102, label %while.cond.preheader

land.lhs.true102:                                 ; preds = %cond.end97
  %40 = load i8* %cond98, align 1, !tbaa !0
  %.off257 = add i8 %40, -65
  %41 = icmp ult i8 %.off257, 26
  %.off258 = add i8 %40, -97
  %42 = icmp ult i8 %.off258, 26
  %or.cond = or i1 %41, %42
  br i1 %or.cond, label %if.then130, label %lor.lhs.false118

lor.lhs.false118:                                 ; preds = %land.lhs.true102
  %.off259 = add i8 %40, -48
  %43 = icmp ult i8 %.off259, 10
  %cmp128 = icmp eq i8 %40, 95
  %or.cond253 = or i1 %43, %cmp128
  br i1 %or.cond253, label %if.then130, label %while.cond.preheader

if.then130:                                       ; preds = %lor.lhs.false118, %land.lhs.true102
  %incdec.ptr = getelementptr inbounds i8* %cond98, i64 1
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then130, %cond.end97, %lor.lhs.false118
  %t.0.ph = phi i8* [ %cond98, %lor.lhs.false118 ], [ %cond98, %cond.end97 ], [ %incdec.ptr, %if.then130 ]
  %cmp132265 = icmp ult i8* %t.0.ph, %add.ptr
  br i1 %cmp132265, label %land.rhs, label %for.body

land.rhs:                                         ; preds = %while.body, %while.cond.preheader
  %t.0266 = phi i8* [ %t.0.ph, %while.cond.preheader ], [ %incdec.ptr164, %while.body ]
  %44 = load i8* %t.0266, align 1, !tbaa !0
  %.off = add i8 %44, -65
  %45 = icmp ult i8 %.off, 26
  %.off255 = add i8 %44, -97
  %46 = icmp ult i8 %.off255, 26
  %or.cond262 = or i1 %45, %46
  br i1 %or.cond262, label %while.body, label %lor.lhs.false149

lor.lhs.false149:                                 ; preds = %land.rhs
  %.off256 = add i8 %44, -48
  %47 = icmp ult i8 %.off256, 10
  %cmp159 = icmp eq i8 %44, 95
  %or.cond254 = or i1 %47, %cmp159
  br i1 %or.cond254, label %while.body, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false149
  %conv158 = sext i8 %44 to i32
  %memchr = call i8* @memchr(i8* getelementptr inbounds ([5 x i8]* @.str16, i64 0, i64 0), i32 %conv158, i64 5)
  %tobool163 = icmp eq i8* %memchr, null
  br i1 %tobool163, label %if.then167, label %while.body

while.body:                                       ; preds = %lor.rhs, %lor.lhs.false149, %land.rhs
  %incdec.ptr164 = getelementptr inbounds i8* %t.0266, i64 1
  %cmp132 = icmp ult i8* %incdec.ptr164, %add.ptr
  br i1 %cmp132, label %land.rhs, label %for.body

if.then167:                                       ; preds = %lor.rhs
  store i8 1, i8* @PL_tainted, align 1, !tbaa !0
  call void @Perl_taint_proper(i8* getelementptr inbounds ([20 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0)) #5
  br label %for.body

for.body:                                         ; preds = %if.then167, %cond.end73, %land.lhs.true77, %land.lhs.true79, %land.lhs.true83, %while.body, %while.cond.preheader, %for.inc
  %e.0263 = phi i8** [ %incdec.ptr203, %for.inc ], [ getelementptr inbounds ([5 x i8*]* @Perl_taint_env.misc_env, i64 0, i64 0), %while.cond.preheader ], [ getelementptr inbounds ([5 x i8*]* @Perl_taint_env.misc_env, i64 0, i64 0), %while.body ], [ getelementptr inbounds ([5 x i8*]* @Perl_taint_env.misc_env, i64 0, i64 0), %land.lhs.true83 ], [ getelementptr inbounds ([5 x i8*]* @Perl_taint_env.misc_env, i64 0, i64 0), %land.lhs.true79 ], [ getelementptr inbounds ([5 x i8*]* @Perl_taint_env.misc_env, i64 0, i64 0), %land.lhs.true77 ], [ getelementptr inbounds ([5 x i8*]* @Perl_taint_env.misc_env, i64 0, i64 0), %cond.end73 ], [ getelementptr inbounds ([5 x i8*]* @Perl_taint_env.misc_env, i64 0, i64 0), %if.then167 ]
  %48 = load %struct.gv** @PL_envgv, align 8, !tbaa !3
  %sv_any171 = getelementptr inbounds %struct.gv* %48, i64 0, i32 0
  %49 = load %struct.xpvgv** %sv_any171, align 8, !tbaa !3
  %xgv_gp172 = getelementptr inbounds %struct.xpvgv* %49, i64 0, i32 7
  %50 = load %struct.gp** %xgv_gp172, align 8, !tbaa !3
  %gp_hv173 = getelementptr inbounds %struct.gp* %50, i64 0, i32 5
  %51 = load %struct.hv** %gp_hv173, align 8, !tbaa !3
  %tobool174 = icmp eq %struct.hv* %51, null
  br i1 %tobool174, label %cond.false179, label %cond.end184

cond.false179:                                    ; preds = %for.body
  %call180 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %48) #4
  %sv_any181 = getelementptr inbounds %struct.gv* %call180, i64 0, i32 0
  %52 = load %struct.xpvgv** %sv_any181, align 8, !tbaa !3
  %xgv_gp182 = getelementptr inbounds %struct.xpvgv* %52, i64 0, i32 7
  %53 = load %struct.gp** %xgv_gp182, align 8, !tbaa !3
  %gp_hv183 = getelementptr inbounds %struct.gp* %53, i64 0, i32 5
  %54 = load %struct.hv** %gp_hv183, align 8, !tbaa !3
  br label %cond.end184

cond.end184:                                      ; preds = %for.body, %cond.false179
  %cond185 = phi %struct.hv* [ %54, %cond.false179 ], [ %51, %for.body ]
  %55 = load i8** %e.0263, align 8, !tbaa !3
  %call186 = call i64 @strlen(i8* %55) #4
  %conv187 = trunc i64 %call186 to i32
  %call188 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %cond185, i8* %55, i32 %conv187, i32 0) #4
  %tobool189 = icmp eq %struct.sv** %call188, null
  br i1 %tobool189, label %for.inc, label %land.lhs.true190

land.lhs.true190:                                 ; preds = %cond.end184
  %56 = load %struct.sv** %call188, align 8, !tbaa !3
  %cmp191 = icmp eq %struct.sv* %56, @PL_sv_undef
  br i1 %cmp191, label %for.inc, label %land.lhs.true193

land.lhs.true193:                                 ; preds = %land.lhs.true190
  %sv_flags194 = getelementptr inbounds %struct.sv* %56, i64 0, i32 2
  %57 = load i32* %sv_flags194, align 4, !tbaa !2
  %and195 = and i32 %57, 57344
  %tobool196 = icmp eq i32 %and195, 0
  br i1 %tobool196, label %for.inc, label %land.lhs.true197

land.lhs.true197:                                 ; preds = %land.lhs.true193
  %call198 = call signext i8 @Perl_sv_tainted(%struct.sv* %56) #4
  %tobool200 = icmp eq i8 %call198, 0
  br i1 %tobool200, label %for.inc, label %if.then201

if.then201:                                       ; preds = %land.lhs.true197
  store i8 1, i8* @PL_tainted, align 1, !tbaa !0
  %58 = load i8** %e.0263, align 8, !tbaa !3
  call void @Perl_taint_proper(i8* getelementptr inbounds ([20 x i8]* @.str17, i64 0, i64 0), i8* %58) #5
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true197, %land.lhs.true193, %land.lhs.true190, %cond.end184, %if.then201
  %incdec.ptr203 = getelementptr inbounds i8** %e.0263, i64 1
  %59 = load i8** %incdec.ptr203, align 8, !tbaa !3
  %tobool170 = icmp eq i8* %59, null
  br i1 %tobool170, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: optsize
declare %struct.magic* @Perl_mg_find(%struct.sv*, i32) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #2

; Function Attrs: optsize
declare %struct.sv** @Perl_hv_fetch(%struct.hv*, i8*, i32, i32) #1

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_HVadd(%struct.gv*) #1

; Function Attrs: optsize
declare signext i8 @Perl_sv_tainted(%struct.sv*) #1

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
!2 = metadata !{metadata !"int", metadata !0}
!3 = metadata !{metadata !"any pointer", metadata !0}
!4 = metadata !{metadata !"long", metadata !0}

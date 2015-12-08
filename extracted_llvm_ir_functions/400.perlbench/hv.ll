; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/hv.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.he = type { %struct.he*, %struct.hek*, %struct.sv* }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.sv = type { i8*, i32, i32 }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
%struct.interpreter = type { i8 }
%struct.pmop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op*, %struct.op*, %struct.op*, %struct.pmop*, %struct.regexp*, i32, i32, i8, %struct.hv* }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type opaque
%struct.reg_data = type opaque
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
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, void (%struct.cv*)*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%union.any = type { i8* }
%struct.xpv = type { i8*, i64, i64 }

@PL_hv_fetch_ent_mh = external global %struct.he*
@.str = private unnamed_addr constant [8 x i8] c"%ld/%ld\00", align 1
@PL_nomemok = external global i8
@PL_nice_chunk_size = external global i32
@PL_nice_chunk = external global i8*
@PL_sub_generation = external global i32
@PL_sv_placeholder = external global %struct.sv
@.str1 = private unnamed_addr constant [59 x i8] c"Attempt to delete readonly key '%_' from a restricted hash\00", align 1
@PL_stashcache = external global %struct.hv*
@.str2 = private unnamed_addr constant [9 x i8] c"Bad hash\00", align 1
@PL_Sv = external global %struct.sv*
@PL_strtab = external global %struct.hv*
@PL_rehash_seed = external global i64
@PL_curcop = external global %struct.cop*
@.str3 = private unnamed_addr constant [50 x i8] c"Attempt to free non-existent shared string '%s'%s\00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c" (utf8)\00", align 1
@.str5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_he_root = external global %struct.he*
@PL_he_arenaroot = external global %struct.xpv*
@.str6 = private unnamed_addr constant [30 x i8] c"delete readonly key '%_' from\00", align 1
@.str7 = private unnamed_addr constant [32 x i8] c"delete disallowed key '%_' from\00", align 1
@.str8 = private unnamed_addr constant [32 x i8] c"Attempt to %s a restricted hash\00", align 1
@PL_Xpv = external global %struct.xpv*
@PL_tainted = external global i8
@PL_tainting = external global i8
@.str9 = private unnamed_addr constant [30 x i8] c"access disallowed key '%_' in\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Perl_free_tied_hv_pool() #0 {
entry:
  %0 = load %struct.he** @PL_hv_fetch_ent_mh, align 8, !tbaa !0
  %tobool4 = icmp eq %struct.he* %0, null
  br i1 %tobool4, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %he.05 = phi %struct.he* [ %3, %while.body ], [ %0, %entry ]
  %hent_hek = getelementptr inbounds %struct.he* %he.05, i64 0, i32 1
  %1 = load %struct.hek** %hent_hek, align 8, !tbaa !0
  %2 = bitcast %struct.hek* %1 to i8*
  tail call void @Perl_safesysfree(i8* %2) #4
  %hent_next = getelementptr inbounds %struct.he* %he.05, i64 0, i32 0
  %3 = load %struct.he** %hent_next, align 8, !tbaa !0
  %4 = load %struct.he** @PL_he_root, align 8, !tbaa !0
  store %struct.he* %4, %struct.he** %hent_next, align 8, !tbaa !0
  store %struct.he* %he.05, %struct.he** @PL_he_root, align 8, !tbaa !0
  %tobool = icmp eq %struct.he* %3, null
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  store %struct.he* null, %struct.he** @PL_hv_fetch_ent_mh, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @Perl_safesysfree(i8*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.sv** @Perl_hv_store(%struct.hv* %hv, i8* %key, i32 %klen_i32, %struct.sv* %val, i32 %hash) #0 {
entry:
  %cmp = icmp slt i32 %klen_i32, 0
  %sub = sub nsw i32 0, %klen_i32
  %klen.0.in = select i1 %cmp, i32 %sub, i32 %klen_i32
  %klen_i32.lobit = lshr i32 %klen_i32, 31
  %klen.0 = sext i32 %klen.0.in to i64
  %call = tail call fastcc %struct.he* @S_hv_fetch_common(%struct.hv* %hv, %struct.sv* null, i8* %key, i64 %klen.0, i32 %klen_i32.lobit, i32 9, %struct.sv* %val, i32 %hash) #5
  %tobool = icmp eq %struct.he* %call, null
  %hent_val = getelementptr inbounds %struct.he* %call, i64 0, i32 2
  %.hent_val = select i1 %tobool, %struct.sv** null, %struct.sv** %hent_val
  ret %struct.sv** %.hent_val
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.he* @S_hv_fetch_common(%struct.hv* %hv, %struct.sv* %keysv, i8* %key, i64 %klen, i32 %flags, i32 %action, %struct.sv* %val, i32 %hash) #0 {
entry:
  %klen.addr = alloca i64, align 8
  %is_utf8 = alloca i8, align 1
  %needs_copy = alloca i8, align 1
  %needs_store = alloca i8, align 1
  store i64 %klen, i64* %klen.addr, align 8, !tbaa !3
  %tobool = icmp eq %struct.hv* %hv, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %tobool2 = icmp ne %struct.sv* %keysv, null
  br i1 %tobool2, label %if.then3, label %if.end17

if.then3:                                         ; preds = %if.end
  %and = and i32 %flags, 256
  %tobool4 = icmp eq i32 %and, 0
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.then3
  call void @Perl_safesysfree(i8* %key) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.then5
  %sv_flags = getelementptr inbounds %struct.sv* %keysv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !4
  %and7 = and i32 %0, 262144
  %cmp = icmp eq i32 %and7, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end6
  %sv_any = getelementptr inbounds %struct.sv* %keysv, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %1, i64 8
  %2 = bitcast i8* %xpv_cur to i64*
  %3 = load i64* %2, align 8, !tbaa !3
  store i64 %3, i64* %klen.addr, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %1 to i8**
  %4 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end6
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %keysv, i64* %klen.addr, i32 2) #4
  %.pre = load i32* %sv_flags, align 4, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %5 = phi i32 [ %0, %cond.true ], [ %.pre, %cond.false ]
  %cond = phi i8* [ %4, %cond.true ], [ %call, %cond.false ]
  %and10 = lshr i32 %5, 29
  br label %if.end17

if.end17:                                         ; preds = %if.end, %cond.end
  %storemerge.in.in = phi i32 [ %and10, %cond.end ], [ %flags, %if.end ]
  %flags.addr.0 = phi i32 [ 0, %cond.end ], [ %flags, %if.end ]
  %key.addr.0 = phi i8* [ %cond, %cond.end ], [ %key, %if.end ]
  %storemerge.in = trunc i32 %storemerge.in.in to i8
  %storemerge = and i8 %storemerge.in, 1
  store i8 %storemerge, i8* %is_utf8, align 1, !tbaa !1
  %sv_any18 = getelementptr inbounds %struct.hv* %hv, i64 0, i32 0
  %6 = load %struct.xpvhv** %sv_any18, align 8, !tbaa !0
  %sv_flags19 = getelementptr inbounds %struct.hv* %hv, i64 0, i32 2
  %7 = load i32* %sv_flags19, align 4, !tbaa !4
  %and20 = and i32 %7, 57344
  %tobool21 = icmp eq i32 %and20, 0
  br i1 %tobool21, label %if.end204, label %if.then22

if.then22:                                        ; preds = %if.end17
  %and24 = and i32 %7, 32768
  %tobool25 = icmp eq i32 %and24, 0
  br i1 %tobool25, label %if.else154, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then22
  %and26 = and i32 %action, 3
  %tobool27 = icmp eq i32 %and26, 0
  br i1 %tobool27, label %if.then28, label %land.lhs.true68

if.then28:                                        ; preds = %land.lhs.true
  %8 = bitcast %struct.hv* %hv to %struct.sv*
  %call29 = call %struct.magic* @Perl_mg_find(%struct.sv* %8, i32 80) #4
  %tobool30 = icmp eq %struct.magic* %call29, null
  br i1 %tobool30, label %lor.lhs.false, label %if.then34

lor.lhs.false:                                    ; preds = %if.then28
  %9 = load i32* %sv_flags19, align 4, !tbaa !4
  %and32 = and i32 %9, 8192
  %tobool33 = icmp eq i32 %and32, 0
  br i1 %tobool33, label %if.end204, label %if.then34

if.then34:                                        ; preds = %lor.lhs.false, %if.then28
  %call35 = call %struct.sv* @Perl_sv_newmortal() #4
  br i1 %tobool2, label %if.else43, label %if.then37

if.then37:                                        ; preds = %if.then34
  %10 = load i64* %klen.addr, align 8, !tbaa !3
  %call38 = call %struct.sv* @Perl_newSVpvn(i8* %key.addr.0, i64 %10) #4
  %11 = load i8* %is_utf8, align 1, !tbaa !1
  %tobool39 = icmp eq i8 %11, 0
  br i1 %tobool39, label %if.end45, label %if.then40

if.then40:                                        ; preds = %if.then37
  %sv_flags41 = getelementptr inbounds %struct.sv* %call38, i64 0, i32 2
  %12 = load i32* %sv_flags41, align 4, !tbaa !4
  %or = or i32 %12, 536870912
  store i32 %or, i32* %sv_flags41, align 4, !tbaa !4
  br label %if.end45

if.else43:                                        ; preds = %if.then34
  %call44 = call %struct.sv* @Perl_newSVsv(%struct.sv* %keysv) #4
  br label %if.end45

if.end45:                                         ; preds = %if.then37, %if.then40, %if.else43
  %keysv.addr.0 = phi %struct.sv* [ %call44, %if.else43 ], [ %call38, %if.then40 ], [ %call38, %if.then37 ]
  %13 = bitcast %struct.sv* %keysv.addr.0 to i8*
  %call46 = call i32 @Perl_mg_copy(%struct.sv* %8, %struct.sv* %call35, i8* %13, i32 -2) #4
  %14 = load %struct.he** @PL_hv_fetch_ent_mh, align 8, !tbaa !0
  %tobool47 = icmp eq %struct.he* %14, null
  br i1 %tobool47, label %if.else49, label %if.then48

if.then48:                                        ; preds = %if.end45
  %hent_next = getelementptr inbounds %struct.he* %14, i64 0, i32 0
  %15 = load %struct.he** %hent_next, align 8, !tbaa !0
  store %struct.he* %15, %struct.he** @PL_hv_fetch_ent_mh, align 8, !tbaa !0
  %hent_hek54.phi.trans.insert = getelementptr inbounds %struct.he* %14, i64 0, i32 1
  %.pre802 = load %struct.hek** %hent_hek54.phi.trans.insert, align 8, !tbaa !0
  br label %if.end52

if.else49:                                        ; preds = %if.end45
  %call50 = call fastcc %struct.he* @S_new_he() #5
  %call51 = call i8* @Perl_safesysmalloc(i64 16) #4
  %16 = bitcast i8* %call51 to %struct.hek*
  %hent_hek = getelementptr inbounds %struct.he* %call50, i64 0, i32 1
  store %struct.hek* %16, %struct.hek** %hent_hek, align 8, !tbaa !0
  br label %if.end52

if.end52:                                         ; preds = %if.else49, %if.then48
  %17 = phi %struct.hek* [ %.pre802, %if.then48 ], [ %16, %if.else49 ]
  %entry1.0 = phi %struct.he* [ %14, %if.then48 ], [ %call50, %if.else49 ]
  %hent_next53 = getelementptr inbounds %struct.he* %entry1.0, i64 0, i32 0
  store %struct.he* null, %struct.he** %hent_next53, align 8, !tbaa !0
  %hek_len = getelementptr inbounds %struct.hek* %17, i64 0, i32 1
  store i32 -2, i32* %hek_len, align 4, !tbaa !4
  %arraydecay = getelementptr inbounds %struct.hek* %17, i64 0, i32 2, i64 0
  %18 = bitcast i8* %arraydecay to %struct.sv**
  store %struct.sv* %keysv.addr.0, %struct.sv** %18, align 8, !tbaa !0
  %hent_val = getelementptr inbounds %struct.he* %entry1.0, i64 0, i32 2
  store %struct.sv* %call35, %struct.sv** %hent_val, align 8, !tbaa !0
  %call56 = call signext i8 @Perl_sv_upgrade(%struct.sv* %call35, i32 9) #4
  %sv_any57 = getelementptr inbounds %struct.sv* %call35, i64 0, i32 0
  %19 = load i8** %sv_any57, align 8, !tbaa !0
  %20 = getelementptr inbounds i8* %19, i64 80
  store i8 84, i8* %20, align 1, !tbaa !1
  %21 = bitcast %struct.he* %entry1.0 to %struct.sv*
  %22 = load i8** %sv_any57, align 8, !tbaa !0
  %xlv_targ = getelementptr inbounds i8* %22, i64 72
  %23 = bitcast i8* %xlv_targ to %struct.sv**
  store %struct.sv* %21, %struct.sv** %23, align 8, !tbaa !0
  %and59 = and i32 %flags.addr.0, 256
  %tobool60 = icmp eq i32 %and59, 0
  br i1 %tobool60, label %return, label %if.then61

if.then61:                                        ; preds = %if.end52
  call void @Perl_safesysfree(i8* %key.addr.0) #4
  br label %return

land.lhs.true68:                                  ; preds = %land.lhs.true
  %and69 = and i32 %action, 2
  %tobool70 = icmp eq i32 %and69, 0
  br i1 %tobool70, label %if.else154, label %if.then71

if.then71:                                        ; preds = %land.lhs.true68
  %24 = bitcast %struct.hv* %hv to %struct.sv*
  %call72 = call %struct.magic* @Perl_mg_find(%struct.sv* %24, i32 80) #4
  %tobool73 = icmp eq %struct.magic* %call72, null
  br i1 %tobool73, label %lor.lhs.false74, label %if.then78

lor.lhs.false74:                                  ; preds = %if.then71
  %25 = load i32* %sv_flags19, align 4, !tbaa !4
  %and76 = and i32 %25, 8192
  %tobool77 = icmp eq i32 %and76, 0
  br i1 %tobool77, label %if.end204, label %if.then78

if.then78:                                        ; preds = %lor.lhs.false74, %if.then71
  %call79 = call %struct.sv* @Perl_sv_newmortal() #4
  %call80 = call %struct.sv* @Perl_sv_newmortal() #4
  br i1 %tobool2, label %if.else91, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %if.then78
  %26 = load i8* %is_utf8, align 1, !tbaa !1
  %tobool84 = icmp eq i8 %26, 0
  %27 = load i64* %klen.addr, align 8, !tbaa !3
  br i1 %tobool84, label %if.else96, label %if.then87

if.then87:                                        ; preds = %lor.lhs.false82
  %call88 = call %struct.sv* @Perl_newSVpvn(i8* %key.addr.0, i64 %27) #4
  %sv_flags89 = getelementptr inbounds %struct.sv* %call88, i64 0, i32 2
  %28 = load i32* %sv_flags89, align 4, !tbaa !4
  %or90 = or i32 %28, 536870912
  store i32 %or90, i32* %sv_flags89, align 4, !tbaa !4
  br label %if.end93

if.else91:                                        ; preds = %if.then78
  %call92 = call %struct.sv* @Perl_newSVsv(%struct.sv* %keysv) #4
  br label %if.end93

if.end93:                                         ; preds = %if.else91, %if.then87
  %keysv.addr.1 = phi %struct.sv* [ %call92, %if.else91 ], [ %call88, %if.then87 ]
  %call94 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %keysv.addr.1) #4
  %29 = bitcast %struct.sv* %call94 to i8*
  %call95 = call i32 @Perl_mg_copy(%struct.sv* %24, %struct.sv* %call80, i8* %29, i32 -2) #4
  br label %if.end99

if.else96:                                        ; preds = %lor.lhs.false82
  %conv97 = trunc i64 %27 to i32
  %call98 = call i32 @Perl_mg_copy(%struct.sv* %24, %struct.sv* %call80, i8* %key.addr.0, i32 %conv97) #4
  br label %if.end99

if.end99:                                         ; preds = %if.else96, %if.end93
  %and100 = and i32 %flags.addr.0, 256
  %tobool101 = icmp eq i32 %and100, 0
  br i1 %tobool101, label %if.end103, label %if.then102

if.then102:                                       ; preds = %if.end99
  call void @Perl_safesysfree(i8* %key.addr.0) #4
  br label %if.end103

if.end103:                                        ; preds = %if.end99, %if.then102
  %call104 = call %struct.magic* @Perl_mg_find(%struct.sv* %call80, i32 112) #4
  %call105 = call i32 @Perl_magic_existspack(%struct.sv* %call79, %struct.magic* %call104) #4
  %tobool106 = icmp eq %struct.sv* %call79, null
  br i1 %tobool106, label %return, label %cond.false108

cond.false108:                                    ; preds = %if.end103
  %sv_flags109 = getelementptr inbounds %struct.sv* %call79, i64 0, i32 2
  %30 = load i32* %sv_flags109, align 4, !tbaa !4
  %and110 = and i32 %30, 262144
  %tobool111 = icmp eq i32 %and110, 0
  br i1 %tobool111, label %cond.false129, label %cond.true112

cond.true112:                                     ; preds = %cond.false108
  %sv_any113 = getelementptr inbounds %struct.sv* %call79, i64 0, i32 0
  %31 = load i8** %sv_any113, align 8, !tbaa !0
  %32 = bitcast i8* %31 to %struct.xpv*
  store %struct.xpv* %32, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool114 = icmp eq i8* %31, null
  br i1 %tobool114, label %return, label %land.lhs.true115

land.lhs.true115:                                 ; preds = %cond.true112
  %xpv_cur116 = getelementptr inbounds i8* %31, i64 8
  %33 = bitcast i8* %xpv_cur116 to i64*
  %34 = load i64* %33, align 8, !tbaa !3
  %cmp117 = icmp ugt i64 %34, 1
  br i1 %cmp117, label %cond.true149, label %lor.lhs.false119

lor.lhs.false119:                                 ; preds = %land.lhs.true115
  %tobool121 = icmp eq i64 %34, 0
  br i1 %tobool121, label %return, label %land.lhs.true122

land.lhs.true122:                                 ; preds = %lor.lhs.false119
  %xpv_pv123 = bitcast i8* %31 to i8**
  %35 = load i8** %xpv_pv123, align 8, !tbaa !0
  %36 = load i8* %35, align 1, !tbaa !1
  %cmp125 = icmp eq i8 %36, 48
  br i1 %cmp125, label %return, label %cond.true149

cond.false129:                                    ; preds = %cond.false108
  %and131 = and i32 %30, 65536
  %tobool132 = icmp eq i32 %and131, 0
  br i1 %tobool132, label %cond.false137, label %cond.true133

cond.true133:                                     ; preds = %cond.false129
  %sv_any134 = getelementptr inbounds %struct.sv* %call79, i64 0, i32 0
  %37 = load i8** %sv_any134, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %37, i64 24
  %38 = bitcast i8* %xiv_iv to i64*
  %39 = load i64* %38, align 8, !tbaa !3
  %cmp135 = icmp eq i64 %39, 0
  br i1 %cmp135, label %return, label %cond.true149

cond.false137:                                    ; preds = %cond.false129
  %and139 = and i32 %30, 131072
  %tobool140 = icmp eq i32 %and139, 0
  br i1 %tobool140, label %cond.false145, label %cond.true141

cond.true141:                                     ; preds = %cond.false137
  %sv_any142 = getelementptr inbounds %struct.sv* %call79, i64 0, i32 0
  %40 = load i8** %sv_any142, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %40, i64 32
  %41 = bitcast i8* %xnv_nv to double*
  %42 = load double* %41, align 8, !tbaa !5
  %cmp143 = fcmp une double %42, 0.000000e+00
  br i1 %cmp143, label %cond.true149, label %return

cond.false145:                                    ; preds = %cond.false137
  %call146 = call signext i8 @Perl_sv_2bool(%struct.sv* %call79) #4
  %tobool148 = icmp eq i8 %call146, 0
  br i1 %tobool148, label %return, label %cond.true149

cond.true149:                                     ; preds = %land.lhs.true122, %cond.true133, %cond.false145, %land.lhs.true115, %cond.true141
  %43 = bitcast %struct.hv* %hv to %struct.he*
  br label %return

if.else154:                                       ; preds = %if.then22, %land.lhs.true68
  %and155 = and i32 %action, 1
  %tobool156 = icmp eq i32 %and155, 0
  br i1 %tobool156, label %if.end204, label %if.then157

if.then157:                                       ; preds = %if.else154
  call fastcc void @S_hv_magic_check(%struct.hv* %hv, i8* %needs_copy, i8* %needs_store) #5
  %44 = load i8* %needs_copy, align 1, !tbaa !1
  %tobool158 = icmp eq i8 %44, 0
  br i1 %tobool158, label %if.end204, label %if.then159

if.then159:                                       ; preds = %if.then157
  %45 = load i8* @PL_tainted, align 1, !tbaa !1
  br i1 %tobool2, label %if.end170, label %lor.lhs.false161

lor.lhs.false161:                                 ; preds = %if.then159
  %46 = load i8* %is_utf8, align 1, !tbaa !1
  %tobool163 = icmp eq i8 %46, 0
  br i1 %tobool163, label %if.else184, label %if.then166

if.then166:                                       ; preds = %lor.lhs.false161
  %47 = load i64* %klen.addr, align 8, !tbaa !3
  %call167 = call %struct.sv* @Perl_newSVpvn(i8* %key.addr.0, i64 %47) #4
  %sv_flags168 = getelementptr inbounds %struct.sv* %call167, i64 0, i32 2
  %48 = load i32* %sv_flags168, align 4, !tbaa !4
  %or169 = or i32 %48, 536870912
  store i32 %or169, i32* %sv_flags168, align 4, !tbaa !4
  br label %if.end170

if.end170:                                        ; preds = %if.then159, %if.then166
  %keysv.addr.2 = phi %struct.sv* [ %call167, %if.then166 ], [ %keysv, %if.then159 ]
  %49 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool171 = icmp eq i8 %49, 0
  br i1 %tobool171, label %if.end180, label %if.then172

if.then172:                                       ; preds = %if.end170
  %sv_flags173 = getelementptr inbounds %struct.sv* %keysv.addr.2, i64 0, i32 2
  %50 = load i32* %sv_flags173, align 4, !tbaa !4
  %and174 = and i32 %50, 57344
  %tobool175 = icmp eq i32 %and174, 0
  br i1 %tobool175, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.then172
  %call176 = call signext i8 @Perl_sv_tainted(%struct.sv* %keysv.addr.2) #4
  %tobool178 = icmp ne i8 %call176, 0
  br label %land.end

land.end:                                         ; preds = %if.then172, %land.rhs
  %51 = phi i1 [ false, %if.then172 ], [ %tobool178, %land.rhs ]
  %conv179 = zext i1 %51 to i8
  store i8 %conv179, i8* @PL_tainted, align 1, !tbaa !1
  br label %if.end180

if.end180:                                        ; preds = %if.end170, %land.end
  %call181 = call %struct.sv* @Perl_newSVsv(%struct.sv* %keysv.addr.2) #4
  %call182 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call181) #4
  %52 = bitcast %struct.hv* %hv to %struct.sv*
  %53 = bitcast %struct.sv* %call182 to i8*
  %call183 = call i32 @Perl_mg_copy(%struct.sv* %52, %struct.sv* %val, i8* %53, i32 -2) #4
  br label %if.end187

if.else184:                                       ; preds = %lor.lhs.false161
  %54 = bitcast %struct.hv* %hv to %struct.sv*
  %55 = load i64* %klen.addr, align 8, !tbaa !3
  %conv185 = trunc i64 %55 to i32
  %call186 = call i32 @Perl_mg_copy(%struct.sv* %54, %struct.sv* %val, i8* %key.addr.0, i32 %conv185) #4
  br label %if.end187

if.end187:                                        ; preds = %if.else184, %if.end180
  %keysv.addr.3 = phi %struct.sv* [ %call182, %if.end180 ], [ null, %if.else184 ]
  %tobool188 = icmp eq i8 %45, 0
  br i1 %tobool188, label %if.end190, label %if.then189

if.then189:                                       ; preds = %if.end187
  store i8 1, i8* @PL_tainted, align 1, !tbaa !1
  br label %if.end190

if.end190:                                        ; preds = %if.end187, %if.then189
  %xhv_array = getelementptr inbounds %struct.xpvhv* %6, i64 0, i32 0
  %56 = load i8** %xhv_array, align 8, !tbaa !0
  %tobool191 = icmp eq i8* %56, null
  br i1 %tobool191, label %land.lhs.true192, label %if.end204

land.lhs.true192:                                 ; preds = %if.end190
  %57 = load i8* %needs_store, align 1, !tbaa !1
  %tobool193 = icmp eq i8 %57, 0
  br i1 %tobool193, label %if.then194, label %if.end204

if.then194:                                       ; preds = %land.lhs.true192
  %and195 = and i32 %flags.addr.0, 256
  %tobool196 = icmp eq i32 %and195, 0
  br i1 %tobool196, label %return, label %if.then197

if.then197:                                       ; preds = %if.then194
  call void @Perl_safesysfree(i8* %key.addr.0) #4
  br label %return

if.end204:                                        ; preds = %if.then157, %if.else154, %lor.lhs.false74, %lor.lhs.false, %if.end17, %land.lhs.true192, %if.end190
  %keysv.addr.4 = phi %struct.sv* [ %keysv.addr.3, %if.end190 ], [ %keysv.addr.3, %land.lhs.true192 ], [ %keysv, %if.end17 ], [ %keysv, %lor.lhs.false ], [ %keysv, %lor.lhs.false74 ], [ %keysv, %if.else154 ], [ %keysv, %if.then157 ]
  %xhv_array205 = getelementptr inbounds %struct.xpvhv* %6, i64 0, i32 0
  %58 = load i8** %xhv_array205, align 8, !tbaa !0
  %tobool206 = icmp eq i8* %58, null
  br i1 %tobool206, label %if.then207, label %if.end250

if.then207:                                       ; preds = %if.end204
  %and208 = and i32 %action, 5
  %tobool209 = icmp eq i32 %and208, 0
  br i1 %tobool209, label %if.else244, label %if.then210

if.then210:                                       ; preds = %if.then207
  %xhv_max = getelementptr inbounds %struct.xpvhv* %6, i64 0, i32 2
  %59 = load i64* %xhv_max, align 8, !tbaa !3
  %add = add i64 %59, 1
  %cmp211 = icmp ult i64 %add, 64
  %mul = shl i64 %add, 3
  br i1 %cmp211, label %cond.end221, label %cond.false216

cond.false216:                                    ; preds = %if.then210
  %mul220 = shl i64 %add, 4
  %sub = add i64 %mul220, -16
  br label %cond.end221

cond.end221:                                      ; preds = %if.then210, %cond.false216
  %cond222 = phi i64 [ %sub, %cond.false216 ], [ %mul, %if.then210 ]
  %call224 = call i8* @Perl_safesysmalloc(i64 %cond222) #4
  store i8* %call224, i8** %xhv_array205, align 8, !tbaa !0
  %60 = load i64* %xhv_max, align 8, !tbaa !3
  %add228 = add i64 %60, 1
  %cmp229 = icmp ult i64 %add228, 64
  %mul234 = shl i64 %add228, 3
  br i1 %cmp229, label %cond.end241, label %cond.false235

cond.false235:                                    ; preds = %cond.end221
  %mul239 = shl i64 %add228, 4
  %sub240 = add i64 %mul239, -16
  br label %cond.end241

cond.end241:                                      ; preds = %cond.end221, %cond.false235
  %cond242 = phi i64 [ %sub240, %cond.false235 ], [ %mul234, %cond.end221 ]
  call void @llvm.memset.p0i8.i64(i8* %call224, i8 0, i64 %cond242, i32 1, i1 false)
  br label %if.end250

if.else244:                                       ; preds = %if.then207
  %and245 = and i32 %flags.addr.0, 256
  %tobool246 = icmp eq i32 %and245, 0
  br i1 %tobool246, label %return, label %if.then247

if.then247:                                       ; preds = %if.else244
  call void @Perl_safesysfree(i8* %key.addr.0) #4
  br label %return

if.end250:                                        ; preds = %if.end204, %cond.end241
  %61 = load i8* %is_utf8, align 1, !tbaa !1
  %tobool251 = icmp eq i8 %61, 0
  br i1 %tobool251, label %if.end269, label %if.then252

if.then252:                                       ; preds = %if.end250
  %call253 = call i8* @Perl_bytes_from_utf8(i8* %key.addr.0, i64* %klen.addr, i8* %is_utf8) #4
  %62 = load i8* %is_utf8, align 1, !tbaa !1
  %tobool254 = icmp eq i8 %62, 0
  %or256 = or i32 %flags.addr.0, 1
  %and258 = and i32 %flags.addr.0, -2
  %flags.addr.1 = select i1 %tobool254, i32 %and258, i32 %or256
  %cmp260 = icmp eq i8* %call253, %key.addr.0
  br i1 %cmp260, label %if.end269, label %if.then262

if.then262:                                       ; preds = %if.then252
  %and263 = and i32 %flags.addr.1, 256
  %tobool264 = icmp eq i32 %and263, 0
  br i1 %tobool264, label %if.end266, label %if.then265

if.then265:                                       ; preds = %if.then262
  call void @Perl_safesysfree(i8* %key.addr.0) #4
  br label %if.end266

if.end266:                                        ; preds = %if.then262, %if.then265
  %or267 = or i32 %flags.addr.1, 258
  br label %if.end269

if.end269:                                        ; preds = %if.then252, %if.end250, %if.end266
  %flags.addr.2 = phi i32 [ %or267, %if.end266 ], [ %flags.addr.0, %if.end250 ], [ %flags.addr.1, %if.then252 ]
  %key.addr.1 = phi i8* [ %call253, %if.end266 ], [ %key.addr.0, %if.end250 ], [ %key.addr.0, %if.then252 ]
  %63 = load i32* %sv_flags19, align 4, !tbaa !4
  %and271 = and i32 %63, 268435456
  %tobool272 = icmp eq i32 %and271, 0
  br i1 %tobool272, label %if.else287, label %if.then273

if.then273:                                       ; preds = %if.end269
  %64 = load i64* %klen.addr, align 8, !tbaa !3
  %conv274 = trunc i64 %64 to i32
  %65 = load i64* @PL_rehash_seed, align 8, !tbaa !3
  %conv275 = trunc i64 %65 to i32
  %tobool276792 = icmp eq i32 %conv274, 0
  br i1 %tobool276792, label %while.end, label %while.body

while.body:                                       ; preds = %if.then273, %while.body
  %hash_PeRlHaSh.0795 = phi i32 [ %xor, %while.body ], [ %conv275, %if.then273 ]
  %i_PeRlHaSh.0794 = phi i32 [ %dec, %while.body ], [ %conv274, %if.then273 ]
  %s_PeRlHaSh.0793 = phi i8* [ %incdec.ptr, %while.body ], [ %key.addr.1, %if.then273 ]
  %dec = add nsw i32 %i_PeRlHaSh.0794, -1
  %incdec.ptr = getelementptr inbounds i8* %s_PeRlHaSh.0793, i64 1
  %66 = load i8* %s_PeRlHaSh.0793, align 1, !tbaa !1
  %conv277 = zext i8 %66 to i32
  %add278 = add i32 %conv277, %hash_PeRlHaSh.0795
  %add279 = mul i32 %add278, 1025
  %shr = lshr i32 %add279, 6
  %xor = xor i32 %shr, %add279
  %tobool276 = icmp eq i32 %dec, 0
  br i1 %tobool276, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.then273
  %hash_PeRlHaSh.0.lcssa = phi i32 [ %conv275, %if.then273 ], [ %xor, %while.body ]
  %add281 = mul i32 %hash_PeRlHaSh.0.lcssa, 9
  %shr282 = lshr i32 %add281, 11
  %xor283 = xor i32 %shr282, %add281
  %add285 = mul i32 %xor283, 32769
  %or286 = or i32 %flags.addr.2, 4
  br label %if.end314

if.else287:                                       ; preds = %if.end269
  %tobool288 = icmp eq i32 %hash, 0
  br i1 %tobool288, label %if.then289, label %if.end314

if.then289:                                       ; preds = %if.else287
  %67 = load i64* %klen.addr, align 8, !tbaa !3
  %conv293 = trunc i64 %67 to i32
  %tobool297787 = icmp eq i32 %conv293, 0
  br i1 %tobool297787, label %while.end306, label %while.body298

while.body298:                                    ; preds = %if.then289, %while.body298
  %hash_PeRlHaSh294.0790 = phi i32 [ %xor305, %while.body298 ], [ 0, %if.then289 ]
  %i_PeRlHaSh292.0789 = phi i32 [ %dec296, %while.body298 ], [ %conv293, %if.then289 ]
  %s_PeRlHaSh291.0788 = phi i8* [ %incdec.ptr299, %while.body298 ], [ %key.addr.1, %if.then289 ]
  %dec296 = add nsw i32 %i_PeRlHaSh292.0789, -1
  %incdec.ptr299 = getelementptr inbounds i8* %s_PeRlHaSh291.0788, i64 1
  %68 = load i8* %s_PeRlHaSh291.0788, align 1, !tbaa !1
  %conv300 = zext i8 %68 to i32
  %add301 = add i32 %conv300, %hash_PeRlHaSh294.0790
  %add303 = mul i32 %add301, 1025
  %shr304 = lshr i32 %add303, 6
  %xor305 = xor i32 %shr304, %add303
  %tobool297 = icmp eq i32 %dec296, 0
  br i1 %tobool297, label %while.cond295.while.end306_crit_edge, label %while.body298

while.cond295.while.end306_crit_edge:             ; preds = %while.body298
  %phitmp = mul i32 %xor305, 9
  br label %while.end306

while.end306:                                     ; preds = %while.cond295.while.end306_crit_edge, %if.then289
  %hash_PeRlHaSh294.0.lcssa = phi i32 [ %phitmp, %while.cond295.while.end306_crit_edge ], [ 0, %if.then289 ]
  %shr309 = lshr i32 %hash_PeRlHaSh294.0.lcssa, 11
  %xor310 = xor i32 %shr309, %hash_PeRlHaSh294.0.lcssa
  %add312 = mul i32 %xor310, 32769
  br label %if.end314

if.end314:                                        ; preds = %if.else287, %while.end306, %while.end
  %hash.addr.0 = phi i32 [ %add285, %while.end ], [ %add312, %while.end306 ], [ %hash, %if.else287 ]
  %flags.addr.3 = phi i32 [ %or286, %while.end ], [ %flags.addr.2, %while.end306 ], [ %flags.addr.2, %if.else287 ]
  %and315 = and i32 %flags.addr.3, 255
  %xhv_max316 = getelementptr inbounds %struct.xpvhv* %6, i64 0, i32 2
  %69 = load i64* %xhv_max316, align 8, !tbaa !3
  %conv317 = trunc i64 %69 to i32
  %and318 = and i32 %conv317, %hash.addr.0
  %idxprom = zext i32 %and318 to i64
  %70 = load i8** %xhv_array205, align 8, !tbaa !0
  %71 = bitcast i8* %70 to %struct.he**
  %arrayidx = getelementptr inbounds %struct.he** %71, i64 %idxprom
  %entry1.1780 = load %struct.he** %arrayidx, align 8
  %tobool320781 = icmp eq %struct.he* %entry1.1780, null
  br i1 %tobool320781, label %land.lhs.true448, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end314
  %72 = load i64* %klen.addr, align 8, !tbaa !3
  %conv332 = trunc i64 %72 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %entry1.1784 = phi %struct.he* [ %entry1.1780, %for.body.lr.ph ], [ %entry1.1, %for.inc ]
  %n_links.0782 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %hent_hek321 = getelementptr inbounds %struct.he* %entry1.1784, i64 0, i32 1
  %73 = load %struct.hek** %hent_hek321, align 8, !tbaa !0
  %tobool322 = icmp eq %struct.hek* %73, null
  br i1 %tobool322, label %for.inc, label %if.end324

if.end324:                                        ; preds = %for.body
  %hek_hash = getelementptr inbounds %struct.hek* %73, i64 0, i32 0
  %74 = load i32* %hek_hash, align 4, !tbaa !4
  %cmp326 = icmp eq i32 %74, %hash.addr.0
  br i1 %cmp326, label %if.end329, label %for.inc

if.end329:                                        ; preds = %if.end324
  %hek_len331 = getelementptr inbounds %struct.hek* %73, i64 0, i32 1
  %75 = load i32* %hek_len331, align 4, !tbaa !4
  %cmp333 = icmp eq i32 %75, %conv332
  br i1 %cmp333, label %if.end336, label %for.inc

if.end336:                                        ; preds = %if.end329
  %arraydecay339 = getelementptr inbounds %struct.hek* %73, i64 0, i32 2, i64 0
  %cmp340 = icmp eq i8* %arraydecay339, %key.addr.1
  br i1 %cmp340, label %if.end349, label %land.lhs.true342

land.lhs.true342:                                 ; preds = %if.end336
  %call346 = call i32 @memcmp(i8* %arraydecay339, i8* %key.addr.1, i64 %72) #4
  %tobool347 = icmp eq i32 %call346, 0
  br i1 %tobool347, label %if.end349, label %for.inc

if.end349:                                        ; preds = %land.lhs.true342, %if.end336
  %sext = shl i64 %72, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr.sum = add i64 %idx.ext, 1
  %add.ptr355 = getelementptr inbounds %struct.hek* %73, i64 0, i32 2, i64 %add.ptr.sum
  %76 = load i8* %add.ptr355, align 1, !tbaa !1
  %conv356 = zext i8 %76 to i32
  %xor357 = xor i32 %conv356, %flags.addr.3
  %and358 = and i32 %xor357, 1
  %tobool359 = icmp eq i32 %and358, 0
  br i1 %tobool359, label %if.end361, label %for.inc

if.end361:                                        ; preds = %if.end349
  %and362 = and i32 %action, 5
  %tobool363 = icmp eq i32 %and362, 0
  br i1 %tobool363, label %if.else435, label %if.then364

if.then364:                                       ; preds = %if.end361
  %cmp374 = icmp eq i32 %conv356, %and315
  br i1 %cmp374, label %if.end402, label %if.then376

if.then376:                                       ; preds = %if.then364
  %and378 = and i32 %63, 536870912
  %tobool379 = icmp eq i32 %and378, 0
  br i1 %tobool379, label %if.else385, label %if.then380

if.then380:                                       ; preds = %if.then376
  %call382 = call fastcc %struct.hek* @S_share_hek_flags(i8* %key.addr.1, i32 %conv332, i32 %hash.addr.0, i32 %and315) #5
  %77 = load %struct.hek** %hent_hek321, align 8, !tbaa !0
  call fastcc void @S_unshare_hek_or_pvn(%struct.hek* %77, i8* null, i32 0, i32 0) #4
  store %struct.hek* %call382, %struct.hek** %hent_hek321, align 8, !tbaa !0
  br label %if.end395

if.else385:                                       ; preds = %if.then376
  %conv386 = trunc i32 %flags.addr.3 to i8
  store i8 %conv386, i8* %add.ptr355, align 1, !tbaa !1
  br label %if.end395

if.end395:                                        ; preds = %if.else385, %if.then380
  %and396 = and i32 %flags.addr.3, 251
  %tobool397 = icmp eq i32 %and396, 0
  br i1 %tobool397, label %if.end402, label %if.then398

if.then398:                                       ; preds = %if.end395
  %78 = load i32* %sv_flags19, align 4, !tbaa !4
  %or400 = or i32 %78, -2147483648
  store i32 %or400, i32* %sv_flags19, align 4, !tbaa !4
  br label %if.end402

if.end402:                                        ; preds = %if.end395, %if.then364, %if.then398
  %hent_val403 = getelementptr inbounds %struct.he* %entry1.1784, i64 0, i32 2
  %79 = load %struct.sv** %hent_val403, align 8, !tbaa !0
  %cmp404 = icmp eq %struct.sv* %79, @PL_sv_placeholder
  br i1 %cmp404, label %if.then406, label %if.else427

if.then406:                                       ; preds = %if.end402
  %and407 = and i32 %action, 4
  %tobool408 = icmp eq i32 %and407, 0
  br i1 %tobool408, label %if.else418, label %if.then409

if.then409:                                       ; preds = %if.then406
  %80 = load i32* %sv_flags19, align 4, !tbaa !4
  %and411 = and i32 %80, 57344
  %tobool412 = icmp eq i32 %and411, 0
  br i1 %tobool412, label %if.end414, label %if.end457

if.end414:                                        ; preds = %if.then409
  %call415 = call %struct.sv* @Perl_newSV(i64 0) #4
  %xnv_nv416 = getelementptr inbounds %struct.xpvhv* %6, i64 0, i32 4
  %81 = load double* %xnv_nv416, align 8, !tbaa !5
  %dec417 = fadd double %81, -1.000000e+00
  store double %dec417, double* %xnv_nv416, align 8, !tbaa !5
  br label %if.end425

if.else418:                                       ; preds = %if.then406
  %cmp419 = icmp eq %struct.sv* %val, @PL_sv_placeholder
  br i1 %cmp419, label %if.end425, label %if.then421

if.then421:                                       ; preds = %if.else418
  %xnv_nv422 = getelementptr inbounds %struct.xpvhv* %6, i64 0, i32 4
  %82 = load double* %xnv_nv422, align 8, !tbaa !5
  %dec423 = fadd double %82, -1.000000e+00
  store double %dec423, double* %xnv_nv422, align 8, !tbaa !5
  br label %if.end425

if.end425:                                        ; preds = %if.else418, %if.then421, %if.end414
  %val.addr.0 = phi %struct.sv* [ %call415, %if.end414 ], [ %val, %if.then421 ], [ @PL_sv_placeholder, %if.else418 ]
  store %struct.sv* %val.addr.0, %struct.sv** %hent_val403, align 8, !tbaa !0
  br label %if.end441

if.else427:                                       ; preds = %if.end402
  %and428 = and i32 %action, 1
  %tobool429 = icmp eq i32 %and428, 0
  br i1 %tobool429, label %if.end441, label %if.then430

if.then430:                                       ; preds = %if.else427
  call void @Perl_sv_free(%struct.sv* %79) #4
  store %struct.sv* %val, %struct.sv** %hent_val403, align 8, !tbaa !0
  br label %if.end441

if.else435:                                       ; preds = %if.end361
  %hent_val436 = getelementptr inbounds %struct.he* %entry1.1784, i64 0, i32 2
  %83 = load %struct.sv** %hent_val436, align 8, !tbaa !0
  %cmp437 = icmp eq %struct.sv* %83, @PL_sv_placeholder
  br i1 %cmp437, label %if.end457, label %if.end441

if.end441:                                        ; preds = %if.else427, %if.else435, %if.end425, %if.then430
  %and442 = and i32 %flags.addr.3, 256
  %tobool443 = icmp eq i32 %and442, 0
  br i1 %tobool443, label %return, label %if.then444

if.then444:                                       ; preds = %if.end441
  call void @Perl_safesysfree(i8* %key.addr.1) #4
  br label %return

for.inc:                                          ; preds = %land.lhs.true342, %if.end349, %if.end329, %if.end324, %for.body
  %inc = add i32 %n_links.0782, 1
  %hent_next446 = getelementptr inbounds %struct.he* %entry1.1784, i64 0, i32 0
  %entry1.1 = load %struct.he** %hent_next446, align 8
  %tobool320 = icmp eq %struct.he* %entry1.1, null
  br i1 %tobool320, label %land.lhs.true448, label %for.body

land.lhs.true448:                                 ; preds = %if.end314, %for.inc
  %n_links.0.lcssa = phi i32 [ 0, %if.end314 ], [ %inc, %for.inc ]
  %and450 = and i32 %63, 8388608
  %tobool451 = icmp eq i32 %and450, 0
  br i1 %tobool451, label %if.end457, label %land.lhs.true452

land.lhs.true452:                                 ; preds = %land.lhs.true448
  %and453 = and i32 %action, 2
  %tobool454 = icmp eq i32 %and453, 0
  br i1 %tobool454, label %if.then455, label %if.end457

if.then455:                                       ; preds = %land.lhs.true452
  %84 = load i64* %klen.addr, align 8, !tbaa !3
  %conv456 = trunc i64 %84 to i32
  call fastcc void @S_hv_notallowed(i32 %flags.addr.3, i8* %key.addr.1, i32 %conv456, i8* getelementptr inbounds ([30 x i8]* @.str9, i64 0, i64 0)) #5
  br label %if.end457

if.end457:                                        ; preds = %if.else435, %if.then409, %land.lhs.true452, %land.lhs.true448, %if.then455
  %n_links.0777 = phi i32 [ %n_links.0.lcssa, %land.lhs.true452 ], [ %n_links.0.lcssa, %land.lhs.true448 ], [ %n_links.0.lcssa, %if.then455 ], [ %n_links.0782, %if.then409 ], [ %n_links.0782, %if.else435 ]
  %and458 = and i32 %action, 5
  %tobool459 = icmp eq i32 %and458, 0
  br i1 %tobool459, label %if.then460, label %if.end465

if.then460:                                       ; preds = %if.end457
  %and461 = and i32 %flags.addr.3, 256
  %tobool462 = icmp eq i32 %and461, 0
  br i1 %tobool462, label %return, label %if.then463

if.then463:                                       ; preds = %if.then460
  call void @Perl_safesysfree(i8* %key.addr.1) #4
  br label %return

if.end465:                                        ; preds = %if.end457
  %and466 = and i32 %action, 4
  %tobool467 = icmp eq i32 %and466, 0
  br i1 %tobool467, label %if.end476, label %if.then468

if.then468:                                       ; preds = %if.end465
  %call469 = call %struct.sv* @Perl_newSV(i64 0) #4
  %85 = load i32* %sv_flags19, align 4, !tbaa !4
  %and471 = and i32 %85, 57344
  %tobool472 = icmp eq i32 %and471, 0
  br i1 %tobool472, label %if.end476, label %if.then473

if.then473:                                       ; preds = %if.then468
  %86 = load i64* %klen.addr, align 8, !tbaa !3
  %call474 = call fastcc %struct.he* @S_hv_fetch_common(%struct.hv* %hv, %struct.sv* %keysv.addr.4, i8* %key.addr.1, i64 %86, i32 %flags.addr.3, i32 1, %struct.sv* %call469, i32 %hash.addr.0) #5
  br label %return

if.end476:                                        ; preds = %if.then468, %if.end465
  %val.addr.1 = phi %struct.sv* [ %val, %if.end465 ], [ %call469, %if.then468 ]
  %87 = load i8** %xhv_array205, align 8, !tbaa !0
  %tobool478 = icmp eq i8* %87, null
  br i1 %tobool478, label %if.then479, label %if.end517

if.then479:                                       ; preds = %if.end476
  %88 = load i64* %xhv_max316, align 8, !tbaa !3
  %add481 = add i64 %88, 1
  %cmp482 = icmp ult i64 %add481, 64
  %mul487 = shl i64 %add481, 3
  br i1 %cmp482, label %cond.end494, label %cond.false488

cond.false488:                                    ; preds = %if.then479
  %mul492 = shl i64 %add481, 4
  %sub493 = add i64 %mul492, -16
  br label %cond.end494

cond.end494:                                      ; preds = %if.then479, %cond.false488
  %cond495 = phi i64 [ %sub493, %cond.false488 ], [ %mul487, %if.then479 ]
  %call497 = call i8* @Perl_safesysmalloc(i64 %cond495) #4
  store i8* %call497, i8** %xhv_array205, align 8, !tbaa !0
  %89 = load i64* %xhv_max316, align 8, !tbaa !3
  %add501 = add i64 %89, 1
  %cmp502 = icmp ult i64 %add501, 64
  %mul507 = shl i64 %add501, 3
  br i1 %cmp502, label %cond.end514, label %cond.false508

cond.false508:                                    ; preds = %cond.end494
  %mul512 = shl i64 %add501, 4
  %sub513 = add i64 %mul512, -16
  br label %cond.end514

cond.end514:                                      ; preds = %cond.end494, %cond.false508
  %cond515 = phi i64 [ %sub513, %cond.false508 ], [ %mul507, %cond.end494 ]
  call void @llvm.memset.p0i8.i64(i8* %call497, i8 0, i64 %cond515, i32 1, i1 false)
  %.pre801 = load i8** %xhv_array205, align 8, !tbaa !0
  br label %if.end517

if.end517:                                        ; preds = %if.end476, %cond.end514
  %90 = phi i8* [ %.pre801, %cond.end514 ], [ %87, %if.end476 ]
  %91 = load i64* %xhv_max316, align 8, !tbaa !3
  %conv519 = trunc i64 %91 to i32
  %and520 = and i32 %conv519, %hash.addr.0
  %idxprom521 = zext i32 %and520 to i64
  %92 = bitcast i8* %90 to %struct.he**
  %arrayidx523 = getelementptr inbounds %struct.he** %92, i64 %idxprom521
  %call524 = call fastcc %struct.he* @S_new_he() #5
  %93 = load i32* %sv_flags19, align 4, !tbaa !4
  %and526 = and i32 %93, 536870912
  %tobool527 = icmp eq i32 %and526, 0
  %94 = load i64* %klen.addr, align 8, !tbaa !3
  %conv529 = trunc i64 %94 to i32
  br i1 %tobool527, label %if.else532, label %if.then528

if.then528:                                       ; preds = %if.end517
  %call530 = call fastcc %struct.hek* @S_share_hek_flags(i8* %key.addr.1, i32 %conv529, i32 %hash.addr.0, i32 %flags.addr.3) #5
  %hent_hek531 = getelementptr inbounds %struct.he* %call524, i64 0, i32 1
  store %struct.hek* %call530, %struct.hek** %hent_hek531, align 8, !tbaa !0
  br label %if.end536

if.else532:                                       ; preds = %if.end517
  %call534 = call fastcc %struct.hek* @S_save_hek_flags(i8* %key.addr.1, i32 %conv529, i32 %hash.addr.0, i32 %flags.addr.3) #5
  %hent_hek535 = getelementptr inbounds %struct.he* %call524, i64 0, i32 1
  store %struct.hek* %call534, %struct.hek** %hent_hek535, align 8, !tbaa !0
  br label %if.end536

if.end536:                                        ; preds = %if.else532, %if.then528
  %hent_val537 = getelementptr inbounds %struct.he* %call524, i64 0, i32 2
  store %struct.sv* %val.addr.1, %struct.sv** %hent_val537, align 8, !tbaa !0
  %95 = load %struct.he** %arrayidx523, align 8, !tbaa !0
  %hent_next538 = getelementptr inbounds %struct.he* %call524, i64 0, i32 0
  store %struct.he* %95, %struct.he** %hent_next538, align 8, !tbaa !0
  store %struct.he* %call524, %struct.he** %arrayidx523, align 8, !tbaa !0
  %cmp539 = icmp eq %struct.sv* %val.addr.1, @PL_sv_placeholder
  br i1 %cmp539, label %if.then541, label %if.end544

if.then541:                                       ; preds = %if.end536
  %xnv_nv542 = getelementptr inbounds %struct.xpvhv* %6, i64 0, i32 4
  %96 = load double* %xnv_nv542, align 8, !tbaa !5
  %inc543 = fadd double %96, 1.000000e+00
  store double %inc543, double* %xnv_nv542, align 8, !tbaa !5
  br label %if.end544

if.end544:                                        ; preds = %if.then541, %if.end536
  %and545 = and i32 %flags.addr.3, 251
  %tobool546 = icmp eq i32 %and545, 0
  br i1 %tobool546, label %if.end550, label %if.then547

if.then547:                                       ; preds = %if.end544
  %97 = load i32* %sv_flags19, align 4, !tbaa !4
  %or549 = or i32 %97, -2147483648
  store i32 %or549, i32* %sv_flags19, align 4, !tbaa !4
  br label %if.end550

if.end550:                                        ; preds = %if.end544, %if.then547
  %xhv_keys = getelementptr inbounds %struct.xpvhv* %6, i64 0, i32 3
  %98 = load i64* %xhv_keys, align 8, !tbaa !3
  %inc551 = add nsw i64 %98, 1
  store i64 %inc551, i64* %xhv_keys, align 8, !tbaa !3
  %tobool552 = icmp eq i32 %n_links.0777, 0
  br i1 %tobool552, label %if.then553, label %if.else555

if.then553:                                       ; preds = %if.end550
  %xhv_fill = getelementptr inbounds %struct.xpvhv* %6, i64 0, i32 1
  %99 = load i64* %xhv_fill, align 8, !tbaa !3
  %inc554 = add i64 %99, 1
  store i64 %inc554, i64* %xhv_fill, align 8, !tbaa !3
  br label %return

if.else555:                                       ; preds = %if.end550
  %100 = load i64* %xhv_max316, align 8, !tbaa !3
  %cmp558 = icmp slt i64 %98, %100
  br i1 %cmp558, label %lor.lhs.false560, label %if.then567

lor.lhs.false560:                                 ; preds = %if.else555
  %cmp561 = icmp ugt i32 %n_links.0777, 14
  br i1 %cmp561, label %land.lhs.true563, label %return

land.lhs.true563:                                 ; preds = %lor.lhs.false560
  %101 = load i32* %sv_flags19, align 4, !tbaa !4
  %and565 = and i32 %101, 268435456
  %tobool566 = icmp eq i32 %and565, 0
  br i1 %tobool566, label %if.then567, label %return

if.then567:                                       ; preds = %land.lhs.true563, %if.else555
  call fastcc void @S_hsplit(%struct.hv* %hv) #5
  br label %return

return:                                           ; preds = %if.then553, %if.then567, %lor.lhs.false560, %land.lhs.true563, %if.then463, %if.then460, %if.then444, %if.end441, %if.then247, %if.else244, %if.then197, %if.then194, %cond.true149, %cond.true141, %if.end103, %cond.false145, %cond.true133, %cond.true112, %lor.lhs.false119, %land.lhs.true122, %if.then61, %if.end52, %entry, %if.then473
  %retval.0 = phi %struct.he* [ %call474, %if.then473 ], [ null, %entry ], [ %entry1.0, %if.end52 ], [ %entry1.0, %if.then61 ], [ %43, %cond.true149 ], [ null, %cond.true112 ], [ null, %lor.lhs.false119 ], [ null, %land.lhs.true122 ], [ null, %if.end103 ], [ null, %cond.false145 ], [ null, %cond.true141 ], [ null, %cond.true133 ], [ null, %if.then194 ], [ null, %if.then197 ], [ null, %if.else244 ], [ null, %if.then247 ], [ %entry1.1784, %if.end441 ], [ %entry1.1784, %if.then444 ], [ null, %if.then460 ], [ null, %if.then463 ], [ %call524, %land.lhs.true563 ], [ %call524, %lor.lhs.false560 ], [ %call524, %if.then567 ], [ %call524, %if.then553 ]
  ret %struct.he* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.sv** @Perl_hv_store_flags(%struct.hv* %hv, i8* %key, i32 %klen, %struct.sv* %val, i32 %hash, i32 %flags) #0 {
entry:
  %conv = sext i32 %klen to i64
  %call = tail call fastcc %struct.he* @S_hv_fetch_common(%struct.hv* %hv, %struct.sv* null, i8* %key, i64 %conv, i32 %flags, i32 9, %struct.sv* %val, i32 %hash) #5
  %tobool = icmp eq %struct.he* %call, null
  %hent_val = getelementptr inbounds %struct.he* %call, i64 0, i32 2
  %.hent_val = select i1 %tobool, %struct.sv** null, %struct.sv** %hent_val
  ret %struct.sv** %.hent_val
}

; Function Attrs: nounwind optsize uwtable
define %struct.he* @Perl_hv_store_ent(%struct.hv* %hv, %struct.sv* %keysv, %struct.sv* %val, i32 %hash) #0 {
entry:
  %call = tail call fastcc %struct.he* @S_hv_fetch_common(%struct.hv* %hv, %struct.sv* %keysv, i8* null, i64 0, i32 0, i32 1, %struct.sv* %val, i32 %hash) #5
  ret %struct.he* %call
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_hv_exists(%struct.hv* %hv, i8* %key, i32 %klen_i32) #0 {
entry:
  %cmp = icmp slt i32 %klen_i32, 0
  %sub = sub nsw i32 0, %klen_i32
  %klen.0.in = select i1 %cmp, i32 %sub, i32 %klen_i32
  %klen_i32.lobit = lshr i32 %klen_i32, 31
  %klen.0 = sext i32 %klen.0.in to i64
  %call = tail call fastcc %struct.he* @S_hv_fetch_common(%struct.hv* %hv, %struct.sv* null, i8* %key, i64 %klen.0, i32 %klen_i32.lobit, i32 2, %struct.sv* null, i32 0) #5
  %tobool = icmp ne %struct.he* %call, null
  %conv2 = zext i1 %tobool to i8
  ret i8 %conv2
}

; Function Attrs: nounwind optsize uwtable
define %struct.sv** @Perl_hv_fetch(%struct.hv* %hv, i8* %key, i32 %klen_i32, i32 %lval) #0 {
entry:
  %cmp = icmp slt i32 %klen_i32, 0
  %sub = sub nsw i32 0, %klen_i32
  %klen.0.in = select i1 %cmp, i32 %sub, i32 %klen_i32
  %klen_i32.lobit = lshr i32 %klen_i32, 31
  %klen.0 = sext i32 %klen.0.in to i64
  %tobool = icmp ne i32 %lval, 0
  %or = select i1 %tobool, i32 12, i32 8
  %call = tail call fastcc %struct.he* @S_hv_fetch_common(%struct.hv* %hv, %struct.sv* null, i8* %key, i64 %klen.0, i32 %klen_i32.lobit, i32 %or, %struct.sv* null, i32 0) #5
  %tobool2 = icmp eq %struct.he* %call, null
  %hent_val = getelementptr inbounds %struct.he* %call, i64 0, i32 2
  %.hent_val = select i1 %tobool2, %struct.sv** null, %struct.sv** %hent_val
  ret %struct.sv** %.hent_val
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_hv_exists_ent(%struct.hv* %hv, %struct.sv* %keysv, i32 %hash) #0 {
entry:
  %call = tail call fastcc %struct.he* @S_hv_fetch_common(%struct.hv* %hv, %struct.sv* %keysv, i8* null, i64 0, i32 0, i32 2, %struct.sv* null, i32 %hash) #5
  %tobool = icmp ne %struct.he* %call, null
  %conv = zext i1 %tobool to i8
  ret i8 %conv
}

; Function Attrs: nounwind optsize uwtable
define %struct.he* @Perl_hv_fetch_ent(%struct.hv* %hv, %struct.sv* %keysv, i32 %lval, i32 %hash) #0 {
entry:
  %tobool = icmp ne i32 %lval, 0
  %cond = select i1 %tobool, i32 4, i32 0
  %call = tail call fastcc %struct.he* @S_hv_fetch_common(%struct.hv* %hv, %struct.sv* %keysv, i8* null, i64 0, i32 0, i32 %cond, %struct.sv* null, i32 %hash) #5
  ret %struct.he* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @Perl_hv_scalar(%struct.hv* %hv) #0 {
entry:
  %sv_flags = getelementptr inbounds %struct.hv* %hv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %0, 32768
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = bitcast %struct.hv* %hv to %struct.sv*
  %call = tail call %struct.magic* @Perl_mg_find(%struct.sv* %1, i32 80) #4
  %tobool1 = icmp eq %struct.magic* %call, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call2 = tail call %struct.sv* @Perl_magic_scalarpack(%struct.hv* %hv, %struct.magic* %call) #4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call3 = tail call %struct.sv* @Perl_sv_newmortal() #4
  %sv_any = getelementptr inbounds %struct.hv* %hv, i64 0, i32 0
  %2 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %xhv_fill = getelementptr inbounds %struct.xpvhv* %2, i64 0, i32 1
  %3 = load i64* %xhv_fill, align 8, !tbaa !3
  %tobool4 = icmp eq i64 %3, 0
  br i1 %tobool4, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %xhv_max = getelementptr inbounds %struct.xpvhv* %2, i64 0, i32 2
  %4 = load i64* %xhv_max, align 8, !tbaa !3
  %add = add nsw i64 %4, 1
  tail call void (%struct.sv*, i8*, ...)* @Perl_sv_setpvf(%struct.sv* %call3, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i64 %3, i64 %add) #4
  br label %return

if.else:                                          ; preds = %if.end
  tail call void @Perl_sv_setiv(%struct.sv* %call3, i64 0) #4
  br label %return

return:                                           ; preds = %if.then5, %if.else, %if.then
  %retval.0 = phi %struct.sv* [ %call2, %if.then ], [ %call3, %if.else ], [ %call3, %if.then5 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: optsize
declare %struct.magic* @Perl_mg_find(%struct.sv*, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_magic_scalarpack(%struct.hv*, %struct.magic*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_newmortal() #1

; Function Attrs: optsize
declare void @Perl_sv_setpvf(%struct.sv*, i8*, ...) #1

; Function Attrs: optsize
declare void @Perl_sv_setiv(%struct.sv*, i64) #1

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @Perl_hv_delete(%struct.hv* %hv, i8* %key, i32 %klen_i32, i32 %flags) #0 {
entry:
  %cmp = icmp slt i32 %klen_i32, 0
  %sub = sub nsw i32 0, %klen_i32
  %klen.0.in = select i1 %cmp, i32 %sub, i32 %klen_i32
  %klen_i32.lobit = lshr i32 %klen_i32, 31
  %klen.0 = sext i32 %klen.0.in to i64
  %call = tail call fastcc %struct.sv* @S_hv_delete_common(%struct.hv* %hv, %struct.sv* null, i8* %key, i64 %klen.0, i32 %klen_i32.lobit, i32 %flags, i32 0) #5
  ret %struct.sv* %call
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.sv* @S_hv_delete_common(%struct.hv* %hv, %struct.sv* %keysv, i8* %key, i64 %klen, i32 %k_flags, i32 %d_flags, i32 %hash) #0 {
entry:
  %klen.addr = alloca i64, align 8
  %is_utf8 = alloca i8, align 1
  %needs_copy = alloca i8, align 1
  %needs_store = alloca i8, align 1
  store i64 %klen, i64* %klen.addr, align 8, !tbaa !3
  %tobool = icmp eq %struct.hv* %hv, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %tobool2 = icmp eq %struct.sv* %keysv, null
  br i1 %tobool2, label %if.end17, label %if.then3

if.then3:                                         ; preds = %if.end
  %and = and i32 %k_flags, 256
  %tobool4 = icmp eq i32 %and, 0
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.then3
  call void @Perl_safesysfree(i8* %key) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.then5
  %sv_flags = getelementptr inbounds %struct.sv* %keysv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !4
  %and7 = and i32 %0, 262144
  %cmp = icmp eq i32 %and7, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end6
  %sv_any = getelementptr inbounds %struct.sv* %keysv, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %1, i64 8
  %2 = bitcast i8* %xpv_cur to i64*
  %3 = load i64* %2, align 8, !tbaa !3
  store i64 %3, i64* %klen.addr, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %1 to i8**
  %4 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end6
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %keysv, i64* %klen.addr, i32 2) #4
  %.pre = load i32* %sv_flags, align 4, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %5 = phi i32 [ %0, %cond.true ], [ %.pre, %cond.false ]
  %cond = phi i8* [ %4, %cond.true ], [ %call, %cond.false ]
  %and10 = lshr i32 %5, 29
  br label %if.end17

if.end17:                                         ; preds = %if.end, %cond.end
  %storemerge.in.in = phi i32 [ %and10, %cond.end ], [ %k_flags, %if.end ]
  %k_flags.addr.0 = phi i32 [ 0, %cond.end ], [ %k_flags, %if.end ]
  %key.addr.0 = phi i8* [ %cond, %cond.end ], [ %key, %if.end ]
  %storemerge.in = trunc i32 %storemerge.in.in to i8
  %storemerge = and i8 %storemerge.in, 1
  store i8 %storemerge, i8* %is_utf8, align 1, !tbaa !1
  %sv_flags18 = getelementptr inbounds %struct.hv* %hv, i64 0, i32 2
  %6 = load i32* %sv_flags18, align 4, !tbaa !4
  %and19 = and i32 %6, 32768
  %tobool20 = icmp eq i32 %and19, 0
  br i1 %tobool20, label %if.end49, label %if.then21

if.then21:                                        ; preds = %if.end17
  call fastcc void @S_hv_magic_check(%struct.hv* %hv, i8* %needs_copy, i8* %needs_store) #5
  %7 = load i8* %needs_copy, align 1, !tbaa !1
  %tobool22 = icmp eq i8 %7, 0
  br i1 %tobool22, label %if.end49, label %if.then23

if.then23:                                        ; preds = %if.then21
  %8 = load i64* %klen.addr, align 8, !tbaa !3
  %and24 = and i32 %k_flags.addr.0, -257
  %call25 = call fastcc %struct.he* @S_hv_fetch_common(%struct.hv* %hv, %struct.sv* %keysv, i8* %key.addr.0, i64 %8, i32 %and24, i32 4, %struct.sv* null, i32 %hash) #5
  %tobool26 = icmp eq %struct.he* %call25, null
  br i1 %tobool26, label %if.end49, label %cond.end29

cond.end29:                                       ; preds = %if.then23
  %hent_val = getelementptr inbounds %struct.he* %call25, i64 0, i32 2
  %9 = load %struct.sv** %hent_val, align 8, !tbaa !0
  %tobool31 = icmp eq %struct.sv* %9, null
  br i1 %tobool31, label %if.end49, label %if.then32

if.then32:                                        ; preds = %cond.end29
  %sv_flags33 = getelementptr inbounds %struct.sv* %9, i64 0, i32 2
  %10 = load i32* %sv_flags33, align 4, !tbaa !4
  %and34 = and i32 %10, 57344
  %tobool35 = icmp eq i32 %and34, 0
  br i1 %tobool35, label %if.end38, label %if.then36

if.then36:                                        ; preds = %if.then32
  %call37 = call i32 @Perl_mg_clear(%struct.sv* %9) #4
  br label %if.end38

if.end38:                                         ; preds = %if.then32, %if.then36
  %11 = load i8* %needs_store, align 1, !tbaa !1
  %tobool39 = icmp eq i8 %11, 0
  br i1 %tobool39, label %if.then40, label %if.end49

if.then40:                                        ; preds = %if.end38
  %call41 = call %struct.magic* @Perl_mg_find(%struct.sv* %9, i32 112) #4
  %tobool42 = icmp eq %struct.magic* %call41, null
  br i1 %tobool42, label %return, label %if.then43

if.then43:                                        ; preds = %if.then40
  %call44 = call i32 @Perl_sv_unmagic(%struct.sv* %9, i32 112) #4
  br label %return

if.end49:                                         ; preds = %if.then23, %if.end38, %cond.end29, %if.then21, %if.end17
  %sv_any50 = getelementptr inbounds %struct.hv* %hv, i64 0, i32 0
  %12 = load %struct.xpvhv** %sv_any50, align 8, !tbaa !0
  %xhv_array = getelementptr inbounds %struct.xpvhv* %12, i64 0, i32 0
  %13 = load i8** %xhv_array, align 8, !tbaa !0
  %tobool51 = icmp eq i8* %13, null
  br i1 %tobool51, label %return, label %if.end53

if.end53:                                         ; preds = %if.end49
  %14 = load i8* %is_utf8, align 1, !tbaa !1
  %tobool54 = icmp eq i8 %14, 0
  br i1 %tobool54, label %if.end53.if.end73_crit_edge, label %if.then55

if.end53.if.end73_crit_edge:                      ; preds = %if.end53
  %.pre350 = load i32* %sv_flags18, align 4, !tbaa !4
  br label %if.end73

if.then55:                                        ; preds = %if.end53
  %call56 = call i8* @Perl_bytes_from_utf8(i8* %key.addr.0, i64* %klen.addr, i8* %is_utf8) #4
  %15 = load i8* %is_utf8, align 1, !tbaa !1
  %tobool57 = icmp eq i8 %15, 0
  %or = or i32 %k_flags.addr.0, 1
  %and60 = and i32 %k_flags.addr.0, -2
  %k_flags.addr.1 = select i1 %tobool57, i32 %and60, i32 %or
  %cmp62 = icmp eq i8* %call56, %key.addr.0
  br i1 %cmp62, label %if.end70, label %if.then64

if.then64:                                        ; preds = %if.then55
  %and65 = and i32 %k_flags.addr.1, 256
  %tobool66 = icmp eq i32 %and65, 0
  br i1 %tobool66, label %if.end68, label %if.then67

if.then67:                                        ; preds = %if.then64
  call void @Perl_safesysfree(i8* %key.addr.0) #4
  br label %if.end68

if.end68:                                         ; preds = %if.then64, %if.then67
  %or69 = or i32 %k_flags.addr.1, 258
  br label %if.end70

if.end70:                                         ; preds = %if.then55, %if.end68
  %k_flags.addr.2 = phi i32 [ %or69, %if.end68 ], [ %k_flags.addr.1, %if.then55 ]
  %16 = load i32* %sv_flags18, align 4, !tbaa !4
  %or72 = or i32 %16, -2147483648
  store i32 %or72, i32* %sv_flags18, align 4, !tbaa !4
  br label %if.end73

if.end73:                                         ; preds = %if.end53.if.end73_crit_edge, %if.end70
  %17 = phi i32 [ %or72, %if.end70 ], [ %.pre350, %if.end53.if.end73_crit_edge ]
  %k_flags.addr.3 = phi i32 [ %k_flags.addr.2, %if.end70 ], [ %k_flags.addr.0, %if.end53.if.end73_crit_edge ]
  %key.addr.1 = phi i8* [ %call56, %if.end70 ], [ %key.addr.0, %if.end53.if.end73_crit_edge ]
  %and75 = and i32 %17, 268435456
  %tobool76 = icmp eq i32 %and75, 0
  br i1 %tobool76, label %if.else89, label %if.then77

if.then77:                                        ; preds = %if.end73
  %18 = load i64* %klen.addr, align 8, !tbaa !3
  %conv78 = trunc i64 %18 to i32
  %19 = load i64* @PL_rehash_seed, align 8, !tbaa !3
  %conv79 = trunc i64 %19 to i32
  %tobool80342 = icmp eq i32 %conv78, 0
  br i1 %tobool80342, label %while.end, label %while.body

while.body:                                       ; preds = %if.then77, %while.body
  %hash_PeRlHaSh.0345 = phi i32 [ %xor, %while.body ], [ %conv79, %if.then77 ]
  %i_PeRlHaSh.0344 = phi i32 [ %dec, %while.body ], [ %conv78, %if.then77 ]
  %s_PeRlHaSh.0343 = phi i8* [ %incdec.ptr, %while.body ], [ %key.addr.1, %if.then77 ]
  %dec = add nsw i32 %i_PeRlHaSh.0344, -1
  %incdec.ptr = getelementptr inbounds i8* %s_PeRlHaSh.0343, i64 1
  %20 = load i8* %s_PeRlHaSh.0343, align 1, !tbaa !1
  %conv81 = zext i8 %20 to i32
  %add = add i32 %conv81, %hash_PeRlHaSh.0345
  %add82 = mul i32 %add, 1025
  %shr = lshr i32 %add82, 6
  %xor = xor i32 %shr, %add82
  %tobool80 = icmp eq i32 %dec, 0
  br i1 %tobool80, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.then77
  %hash_PeRlHaSh.0.lcssa = phi i32 [ %conv79, %if.then77 ], [ %xor, %while.body ]
  %add84 = mul i32 %hash_PeRlHaSh.0.lcssa, 9
  %shr85 = lshr i32 %add84, 11
  %xor86 = xor i32 %shr85, %add84
  %add88 = mul i32 %xor86, 32769
  br label %if.end116

if.else89:                                        ; preds = %if.end73
  %tobool90 = icmp eq i32 %hash, 0
  br i1 %tobool90, label %if.then91, label %if.end116

if.then91:                                        ; preds = %if.else89
  %21 = load i64* %klen.addr, align 8, !tbaa !3
  %conv95 = trunc i64 %21 to i32
  %tobool99338 = icmp eq i32 %conv95, 0
  br i1 %tobool99338, label %while.end108, label %while.body100

while.body100:                                    ; preds = %if.then91, %while.body100
  %hash_PeRlHaSh96.0341 = phi i32 [ %xor107, %while.body100 ], [ 0, %if.then91 ]
  %i_PeRlHaSh94.0340 = phi i32 [ %dec98, %while.body100 ], [ %conv95, %if.then91 ]
  %s_PeRlHaSh93.0339 = phi i8* [ %incdec.ptr101, %while.body100 ], [ %key.addr.1, %if.then91 ]
  %dec98 = add nsw i32 %i_PeRlHaSh94.0340, -1
  %incdec.ptr101 = getelementptr inbounds i8* %s_PeRlHaSh93.0339, i64 1
  %22 = load i8* %s_PeRlHaSh93.0339, align 1, !tbaa !1
  %conv102 = zext i8 %22 to i32
  %add103 = add i32 %conv102, %hash_PeRlHaSh96.0341
  %add105 = mul i32 %add103, 1025
  %shr106 = lshr i32 %add105, 6
  %xor107 = xor i32 %shr106, %add105
  %tobool99 = icmp eq i32 %dec98, 0
  br i1 %tobool99, label %while.cond97.while.end108_crit_edge, label %while.body100

while.cond97.while.end108_crit_edge:              ; preds = %while.body100
  %phitmp = mul i32 %xor107, 9
  br label %while.end108

while.end108:                                     ; preds = %while.cond97.while.end108_crit_edge, %if.then91
  %hash_PeRlHaSh96.0.lcssa = phi i32 [ %phitmp, %while.cond97.while.end108_crit_edge ], [ 0, %if.then91 ]
  %shr111 = lshr i32 %hash_PeRlHaSh96.0.lcssa, 11
  %xor112 = xor i32 %shr111, %hash_PeRlHaSh96.0.lcssa
  %add114 = mul i32 %xor112, 32769
  br label %if.end116

if.end116:                                        ; preds = %if.else89, %while.end108, %while.end
  %hash.addr.0 = phi i32 [ %add88, %while.end ], [ %add114, %while.end108 ], [ %hash, %if.else89 ]
  %xhv_max = getelementptr inbounds %struct.xpvhv* %12, i64 0, i32 2
  %23 = load i64* %xhv_max, align 8, !tbaa !3
  %conv118 = trunc i64 %23 to i32
  %and119 = and i32 %conv118, %hash.addr.0
  %idxprom = zext i32 %and119 to i64
  %24 = load i8** %xhv_array, align 8, !tbaa !0
  %25 = bitcast i8* %24 to %struct.he**
  %arrayidx = getelementptr inbounds %struct.he** %25, i64 %idxprom
  %entry1.0332 = load %struct.he** %arrayidx, align 8
  %tobool121333 = icmp eq %struct.he* %entry1.0332, null
  br i1 %tobool121333, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end116
  %26 = load i64* %klen.addr, align 8, !tbaa !3
  %conv127 = trunc i64 %26 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %entry1.0336 = phi %struct.he* [ %entry1.0332, %for.body.lr.ph ], [ %entry1.0, %for.inc ]
  %entry1.0.in335 = phi %struct.he** [ %arrayidx, %for.body.lr.ph ], [ %hent_next219, %for.inc ]
  %i.0334 = phi i32 [ 1, %for.body.lr.ph ], [ 0, %for.inc ]
  %hent_hek = getelementptr inbounds %struct.he* %entry1.0336, i64 0, i32 1
  %27 = load %struct.hek** %hent_hek, align 8, !tbaa !0
  %hek_hash = getelementptr inbounds %struct.hek* %27, i64 0, i32 0
  %28 = load i32* %hek_hash, align 4, !tbaa !4
  %cmp122 = icmp eq i32 %28, %hash.addr.0
  br i1 %cmp122, label %if.end125, label %for.inc

if.end125:                                        ; preds = %for.body
  %hek_len = getelementptr inbounds %struct.hek* %27, i64 0, i32 1
  %29 = load i32* %hek_len, align 4, !tbaa !4
  %cmp128 = icmp eq i32 %29, %conv127
  br i1 %cmp128, label %if.end131, label %for.inc

if.end131:                                        ; preds = %if.end125
  %arraydecay = getelementptr inbounds %struct.hek* %27, i64 0, i32 2, i64 0
  %cmp133 = icmp eq i8* %arraydecay, %key.addr.1
  br i1 %cmp133, label %if.end141, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end131
  %call138 = call i32 @memcmp(i8* %arraydecay, i8* %key.addr.1, i64 %26) #4
  %tobool139 = icmp eq i32 %call138, 0
  br i1 %tobool139, label %if.end141, label %for.inc

if.end141:                                        ; preds = %land.lhs.true, %if.end131
  %sext = shl i64 %26, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr.sum = add i64 %idx.ext, 1
  %add.ptr147 = getelementptr inbounds %struct.hek* %27, i64 0, i32 2, i64 %add.ptr.sum
  %30 = load i8* %add.ptr147, align 1, !tbaa !1
  %conv148 = zext i8 %30 to i32
  %xor149 = xor i32 %conv148, %k_flags.addr.3
  %and150 = and i32 %xor149, 1
  %tobool151 = icmp eq i32 %and150, 0
  br i1 %tobool151, label %if.end153, label %for.inc

if.end153:                                        ; preds = %if.end141
  %hent_val154 = getelementptr inbounds %struct.he* %entry1.0336, i64 0, i32 2
  %31 = load %struct.sv** %hent_val154, align 8, !tbaa !0
  %cmp155 = icmp eq %struct.sv* %31, @PL_sv_placeholder
  br i1 %cmp155, label %if.then157, label %if.else162

if.then157:                                       ; preds = %if.end153
  %and158 = and i32 %k_flags.addr.3, 256
  %tobool159 = icmp eq i32 %and158, 0
  br i1 %tobool159, label %return, label %if.then160

if.then160:                                       ; preds = %if.then157
  call void @Perl_safesysfree(i8* %key.addr.1) #4
  br label %return

if.else162:                                       ; preds = %if.end153
  %and164 = and i32 %17, 8388608
  %tobool165 = icmp eq i32 %and164, 0
  %tobool168 = icmp eq %struct.sv* %31, null
  %or.cond = or i1 %tobool165, %tobool168
  br i1 %or.cond, label %if.end177, label %land.lhs.true169

land.lhs.true169:                                 ; preds = %if.else162
  %sv_flags171 = getelementptr inbounds %struct.sv* %31, i64 0, i32 2
  %32 = load i32* %sv_flags171, align 4, !tbaa !4
  %and172 = and i32 %32, 8388608
  %tobool173 = icmp eq i32 %and172, 0
  br i1 %tobool173, label %if.end177, label %if.then174

if.then174:                                       ; preds = %land.lhs.true169
  call fastcc void @S_hv_notallowed(i32 %k_flags.addr.3, i8* %key.addr.1, i32 %conv127, i8* getelementptr inbounds ([30 x i8]* @.str6, i64 0, i64 0)) #5
  br label %if.end177

if.end177:                                        ; preds = %land.lhs.true169, %if.else162, %if.then174
  %and178 = and i32 %k_flags.addr.3, 256
  %tobool179 = icmp eq i32 %and178, 0
  br i1 %tobool179, label %if.end181, label %if.then180

if.then180:                                       ; preds = %if.end177
  call void @Perl_safesysfree(i8* %key.addr.1) #4
  br label %if.end181

if.end181:                                        ; preds = %if.end177, %if.then180
  %and182 = and i32 %d_flags, 2
  %tobool183 = icmp eq i32 %and182, 0
  br i1 %tobool183, label %if.else185, label %if.end189

if.else185:                                       ; preds = %if.end181
  %33 = load %struct.sv** %hent_val154, align 8, !tbaa !0
  %call187 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %33) #4
  store %struct.sv* @PL_sv_placeholder, %struct.sv** %hent_val154, align 8, !tbaa !0
  br label %if.end189

if.end189:                                        ; preds = %if.end181, %if.else185
  %sv.0 = phi %struct.sv* [ %call187, %if.else185 ], [ null, %if.end181 ]
  %34 = load i32* %sv_flags18, align 4, !tbaa !4
  %and191 = and i32 %34, 8388608
  %tobool192 = icmp eq i32 %and191, 0
  br i1 %tobool192, label %if.else196, label %if.then193

if.then193:                                       ; preds = %if.end189
  %35 = load %struct.sv** %hent_val154, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %35) #4
  store %struct.sv* @PL_sv_placeholder, %struct.sv** %hent_val154, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds %struct.xpvhv* %12, i64 0, i32 4
  %36 = load double* %xnv_nv, align 8, !tbaa !5
  %inc = fadd double %36, 1.000000e+00
  store double %inc, double* %xnv_nv, align 8, !tbaa !5
  br label %return

if.else196:                                       ; preds = %if.end189
  %hent_next = getelementptr inbounds %struct.he* %entry1.0336, i64 0, i32 0
  %37 = load %struct.he** %hent_next, align 8, !tbaa !0
  store %struct.he* %37, %struct.he** %entry1.0.in335, align 8, !tbaa !0
  %tobool197 = icmp ne i32 %i.0334, 0
  %tobool199 = icmp eq %struct.he* %37, null
  %or.cond327 = and i1 %tobool197, %tobool199
  br i1 %or.cond327, label %if.then200, label %if.end202

if.then200:                                       ; preds = %if.else196
  %xhv_fill = getelementptr inbounds %struct.xpvhv* %12, i64 0, i32 1
  %38 = load i64* %xhv_fill, align 8, !tbaa !3
  %dec201 = add i64 %38, -1
  store i64 %dec201, i64* %xhv_fill, align 8, !tbaa !3
  br label %if.end202

if.end202:                                        ; preds = %if.else196, %if.then200
  %xhv_eiter = getelementptr inbounds %struct.xpvhv* %12, i64 0, i32 8
  %39 = load %struct.he** %xhv_eiter, align 8, !tbaa !0
  %cmp203 = icmp eq %struct.he* %entry1.0336, %39
  br i1 %cmp203, label %if.then205, label %if.else208

if.then205:                                       ; preds = %if.end202
  %or207 = or i32 %34, 1073741824
  store i32 %or207, i32* %sv_flags18, align 4, !tbaa !4
  br label %if.end209

if.else208:                                       ; preds = %if.end202
  call void @Perl_hv_free_ent(%struct.hv* %hv, %struct.he* %entry1.0336) #5
  br label %if.end209

if.end209:                                        ; preds = %if.else208, %if.then205
  %xhv_keys = getelementptr inbounds %struct.xpvhv* %12, i64 0, i32 3
  %40 = load i64* %xhv_keys, align 8, !tbaa !3
  %dec210 = add nsw i64 %40, -1
  store i64 %dec210, i64* %xhv_keys, align 8, !tbaa !3
  %cmp212 = icmp eq i64 %dec210, 0
  br i1 %cmp212, label %if.then214, label %return

if.then214:                                       ; preds = %if.end209
  %41 = load i32* %sv_flags18, align 4, !tbaa !4
  %and216 = and i32 %41, 2147483647
  store i32 %and216, i32* %sv_flags18, align 4, !tbaa !4
  br label %return

for.inc:                                          ; preds = %land.lhs.true, %if.end141, %if.end125, %for.body
  %hent_next219 = getelementptr inbounds %struct.he* %entry1.0336, i64 0, i32 0
  %entry1.0 = load %struct.he** %hent_next219, align 8
  %tobool121 = icmp eq %struct.he* %entry1.0, null
  br i1 %tobool121, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end116
  %and221 = and i32 %17, 8388608
  %tobool222 = icmp eq i32 %and221, 0
  br i1 %tobool222, label %if.end225, label %if.then223

if.then223:                                       ; preds = %for.end
  %42 = load i64* %klen.addr, align 8, !tbaa !3
  %conv224 = trunc i64 %42 to i32
  call fastcc void @S_hv_notallowed(i32 %k_flags.addr.3, i8* %key.addr.1, i32 %conv224, i8* getelementptr inbounds ([32 x i8]* @.str7, i64 0, i64 0)) #5
  br label %if.end225

if.end225:                                        ; preds = %for.end, %if.then223
  %and226 = and i32 %k_flags.addr.3, 256
  %tobool227 = icmp eq i32 %and226, 0
  br i1 %tobool227, label %return, label %if.then228

if.then228:                                       ; preds = %if.end225
  call void @Perl_safesysfree(i8* %key.addr.1) #4
  br label %return

return:                                           ; preds = %if.then228, %if.end225, %if.then193, %if.then214, %if.end209, %if.then160, %if.then157, %if.end49, %if.then40, %entry, %if.then43
  %retval.0 = phi %struct.sv* [ %9, %if.then43 ], [ null, %entry ], [ null, %if.then40 ], [ null, %if.end49 ], [ null, %if.then157 ], [ null, %if.then160 ], [ %sv.0, %if.end209 ], [ %sv.0, %if.then214 ], [ %sv.0, %if.then193 ], [ null, %if.end225 ], [ null, %if.then228 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @Perl_hv_delete_ent(%struct.hv* %hv, %struct.sv* %keysv, i32 %flags, i32 %hash) #0 {
entry:
  %call = tail call fastcc %struct.sv* @S_hv_delete_common(%struct.hv* %hv, %struct.sv* %keysv, i8* null, i64 0, i32 0, i32 %flags, i32 %hash) #5
  ret %struct.sv* %call
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_hv_ksplit(%struct.hv* nocapture %hv, i64 %newmax) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.hv* %hv, i64 0, i32 0
  %0 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %xhv_max = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 2
  %1 = load i64* %xhv_max, align 8, !tbaa !3
  %conv = trunc i64 %1 to i32
  %add = add nsw i32 %conv, 1
  %sext = shl i64 %newmax, 32
  %conv3 = ashr exact i64 %sext, 32
  %cmp = icmp eq i64 %conv3, %newmax
  br i1 %cmp, label %lor.lhs.false, label %for.end142

lor.lhs.false:                                    ; preds = %entry
  %conv5 = sext i32 %add to i64
  %cmp6 = icmp slt i64 %conv5, %newmax
  br i1 %cmp6, label %while.cond.preheader, label %for.end142

while.cond.preheader:                             ; preds = %lor.lhs.false
  %conv2 = trunc i64 %newmax to i32
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %while.cond.preheader
  %newsize.0 = phi i32 [ %and15, %while.cond ], [ %conv2, %while.cond.preheader ]
  %add8 = sub i32 0, %newsize.0
  %and = and i32 %newsize.0, %add8
  %cmp9 = icmp eq i32 %and, %newsize.0
  %and15 = xor i32 %and, %newsize.0
  br i1 %cmp9, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  %conv16 = sext i32 %newsize.0 to i64
  %cmp17 = icmp slt i64 %conv16, %newmax
  %mul = zext i1 %cmp17 to i32
  %mul.newsize.0 = shl nsw i32 %newsize.0, %mul
  %conv21 = sext i32 %mul.newsize.0 to i64
  %cmp22 = icmp slt i64 %conv21, %newmax
  br i1 %cmp22, label %for.end142, label %if.end25

if.end25:                                         ; preds = %while.end
  %xhv_array = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 0
  %2 = load i8** %xhv_array, align 8, !tbaa !0
  %tobool = icmp eq i8* %2, null
  br i1 %tobool, label %if.else76, label %if.then26

if.then26:                                        ; preds = %if.end25
  store i8 1, i8* @PL_nomemok, align 1, !tbaa !1
  %cmp27 = icmp slt i32 %mul.newsize.0, 64
  %mul30 = shl nsw i64 %conv21, 3
  br i1 %cmp27, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.then26
  %mul33 = shl nsw i64 %conv21, 4
  %sub = add i64 %mul33, -16
  br label %cond.end

cond.end:                                         ; preds = %if.then26, %cond.false
  %cond = phi i64 [ %sub, %cond.false ], [ %mul30, %if.then26 ]
  %call = tail call i8* @Perl_safesysmalloc(i64 %cond) #4
  %tobool35 = icmp eq i8* %call, null
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %cond.end
  store i8 0, i8* @PL_nomemok, align 1, !tbaa !1
  br label %for.end142

if.end37:                                         ; preds = %cond.end
  %3 = load i8** %xhv_array, align 8, !tbaa !0
  %mul40 = shl nsw i64 %conv5, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call, i8* %3, i64 %mul40, i32 1, i1 false)
  %cmp42 = icmp sgt i32 %conv, 62
  %4 = load i8** %xhv_array, align 8, !tbaa !0
  br i1 %cmp42, label %if.then44, label %if.else67

if.then44:                                        ; preds = %if.end37
  %cmp46 = icmp slt i32 %add, 64
  br i1 %cmp46, label %cond.end56, label %cond.false51

cond.false51:                                     ; preds = %if.then44
  %mul54 = shl nsw i64 %conv5, 4
  %sub55 = add i64 %mul54, -16
  br label %cond.end56

cond.end56:                                       ; preds = %if.then44, %cond.false51
  %cond57 = phi i64 [ %sub55, %cond.false51 ], [ %mul40, %if.then44 ]
  %conv58 = trunc i64 %cond57 to i32
  %5 = load i32* @PL_nice_chunk_size, align 4, !tbaa !4
  %cmp59 = icmp ugt i32 %conv58, %5
  br i1 %cmp59, label %if.then61, label %if.else

if.then61:                                        ; preds = %cond.end56
  %6 = load i8** @PL_nice_chunk, align 8, !tbaa !0
  %tobool62 = icmp eq i8* %6, null
  br i1 %tobool62, label %if.end64, label %if.then63

if.then63:                                        ; preds = %if.then61
  tail call void @Perl_safesysfree(i8* %6) #4
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.then63
  store i8* %4, i8** @PL_nice_chunk, align 8, !tbaa !0
  store i32 %conv58, i32* @PL_nice_chunk_size, align 4, !tbaa !4
  br label %if.end69

if.else:                                          ; preds = %cond.end56
  tail call void @Perl_safesysfree(i8* %4) #4
  br label %if.end69

if.else67:                                        ; preds = %if.end37
  tail call void @Perl_safesysfree(i8* %4) #4
  br label %if.end69

if.end69:                                         ; preds = %if.end64, %if.else, %if.else67
  store i8 0, i8* @PL_nomemok, align 1, !tbaa !1
  %arrayidx = getelementptr inbounds i8* %call, i64 %mul40
  %sub72 = sub nsw i32 %mul.newsize.0, %add
  %conv73 = sext i32 %sub72 to i64
  %mul74 = shl nsw i64 %conv73, 3
  tail call void @llvm.memset.p0i8.i64(i8* %arrayidx, i8 0, i64 %mul74, i32 1, i1 false)
  br label %if.end104

if.else76:                                        ; preds = %if.end25
  %cmp77 = icmp slt i32 %mul.newsize.0, 64
  %mul81 = shl nsw i64 %conv21, 3
  br i1 %cmp77, label %cond.end87.thread, label %cond.false96

cond.end87.thread:                                ; preds = %if.else76
  %call90204 = tail call i8* @Perl_safesysmalloc(i64 %mul81) #4
  br label %cond.end101

cond.false96:                                     ; preds = %if.else76
  %mul85 = shl nsw i64 %conv21, 4
  %sub86 = add i64 %mul85, -16
  %call90 = tail call i8* @Perl_safesysmalloc(i64 %sub86) #4
  br label %cond.end101

cond.end101:                                      ; preds = %cond.end87.thread, %cond.false96
  %call90205 = phi i8* [ %call90, %cond.false96 ], [ %call90204, %cond.end87.thread ]
  %cond102 = phi i64 [ %sub86, %cond.false96 ], [ %mul81, %cond.end87.thread ]
  tail call void @llvm.memset.p0i8.i64(i8* %call90205, i8 0, i64 %cond102, i32 1, i1 false)
  br label %if.end104

if.end104:                                        ; preds = %cond.end101, %if.end69
  %a.0 = phi i8* [ %call, %if.end69 ], [ %call90205, %cond.end101 ]
  %dec = add nsw i32 %mul.newsize.0, -1
  %conv105 = sext i32 %dec to i64
  store i64 %conv105, i64* %xhv_max, align 8, !tbaa !3
  store i8* %a.0, i8** %xhv_array, align 8, !tbaa !0
  %xhv_fill = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 1
  %7 = load i64* %xhv_fill, align 8, !tbaa !3
  %tobool108 = icmp ne i64 %7, 0
  %cmp111209 = icmp sgt i32 %conv, -1
  %or.cond = and i1 %tobool108, %cmp111209
  br i1 %or.cond, label %for.body.lr.ph, label %for.end142

for.body.lr.ph:                                   ; preds = %if.end104
  %8 = bitcast i8* %a.0 to %struct.he**
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc140
  %9 = phi i64 [ %7, %for.body.lr.ph ], [ %19, %for.inc140 ]
  %i.0211 = phi i32 [ 0, %for.body.lr.ph ], [ %inc141, %for.inc140 ]
  %aep.0210 = phi %struct.he** [ %8, %for.body.lr.ph ], [ %incdec.ptr, %for.inc140 ]
  %10 = load %struct.he** %aep.0210, align 8, !tbaa !0
  %tobool113 = icmp eq %struct.he* %10, null
  br i1 %tobool113, label %for.inc140, label %for.body118

for.body118:                                      ; preds = %for.body, %for.inc
  %11 = phi i64 [ %17, %for.inc ], [ %9, %for.body ]
  %oentry.0208 = phi %struct.he** [ %oentry.1, %for.inc ], [ %aep.0210, %for.body ]
  %entry1.0207 = phi %struct.he* [ %18, %for.inc ], [ %10, %for.body ]
  %hent_hek = getelementptr inbounds %struct.he* %entry1.0207, i64 0, i32 1
  %12 = load %struct.hek** %hent_hek, align 8, !tbaa !0
  %hek_hash = getelementptr inbounds %struct.hek* %12, i64 0, i32 0
  %13 = load i32* %hek_hash, align 4, !tbaa !4
  %and119 = and i32 %13, %dec
  %cmp120 = icmp eq i32 %and119, %i.0211
  br i1 %cmp120, label %if.else132, label %if.then122

if.then122:                                       ; preds = %for.body118
  %sub123 = sub nsw i32 %and119, %i.0211
  %hent_next = getelementptr inbounds %struct.he* %entry1.0207, i64 0, i32 0
  %14 = load %struct.he** %hent_next, align 8, !tbaa !0
  store %struct.he* %14, %struct.he** %oentry.0208, align 8, !tbaa !0
  %idxprom = sext i32 %sub123 to i64
  %arrayidx124 = getelementptr inbounds %struct.he** %aep.0210, i64 %idxprom
  %15 = load %struct.he** %arrayidx124, align 8, !tbaa !0
  store %struct.he* %15, %struct.he** %hent_next, align 8, !tbaa !0
  %tobool126 = icmp eq %struct.he* %15, null
  br i1 %tobool126, label %if.then127, label %if.end129

if.then127:                                       ; preds = %if.then122
  %inc = add i64 %11, 1
  store i64 %inc, i64* %xhv_fill, align 8, !tbaa !3
  br label %if.end129

if.end129:                                        ; preds = %if.then122, %if.then127
  %16 = phi i64 [ %11, %if.then122 ], [ %inc, %if.then127 ]
  store %struct.he* %entry1.0207, %struct.he** %arrayidx124, align 8, !tbaa !0
  br label %for.inc

if.else132:                                       ; preds = %for.body118
  %hent_next133 = getelementptr inbounds %struct.he* %entry1.0207, i64 0, i32 0
  br label %for.inc

for.inc:                                          ; preds = %if.else132, %if.end129
  %17 = phi i64 [ %16, %if.end129 ], [ %11, %if.else132 ]
  %oentry.1 = phi %struct.he** [ %oentry.0208, %if.end129 ], [ %hent_next133, %if.else132 ]
  %18 = load %struct.he** %oentry.1, align 8, !tbaa !0
  %tobool117 = icmp eq %struct.he* %18, null
  br i1 %tobool117, label %for.end, label %for.body118

for.end:                                          ; preds = %for.inc
  %.pre = load %struct.he** %aep.0210, align 8, !tbaa !0
  %tobool135 = icmp eq %struct.he* %.pre, null
  br i1 %tobool135, label %if.then136, label %for.inc140

if.then136:                                       ; preds = %for.end
  %dec138 = add i64 %17, -1
  store i64 %dec138, i64* %xhv_fill, align 8, !tbaa !3
  br label %for.inc140

for.inc140:                                       ; preds = %for.end, %for.body, %if.then136
  %19 = phi i64 [ %17, %for.end ], [ %9, %for.body ], [ %dec138, %if.then136 ]
  %inc141 = add nsw i32 %i.0211, 1
  %incdec.ptr = getelementptr inbounds %struct.he** %aep.0210, i64 1
  %cmp111 = icmp slt i32 %inc141, %add
  br i1 %cmp111, label %for.body, label %for.end142

for.end142:                                       ; preds = %if.end104, %for.inc140, %lor.lhs.false, %entry, %while.end, %if.then36
  ret void
}

; Function Attrs: optsize
declare i8* @Perl_safesysmalloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind optsize uwtable
define %struct.hv* @Perl_newHV() #0 {
entry:
  %call = tail call %struct.sv* @Perl_newSV(i64 0) #4
  %0 = bitcast %struct.sv* %call to %struct.hv*
  %call1 = tail call signext i8 @Perl_sv_upgrade(%struct.sv* %call, i32 11) #4
  %sv_any = bitcast %struct.sv* %call to %struct.xpvhv**
  %1 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %2 = getelementptr inbounds %struct.sv* %call, i64 0, i32 2
  %3 = load i32* %2, align 4, !tbaa !4
  %and3 = and i32 %3, -637927425
  %or = or i32 %and3, 536870912
  store i32 %or, i32* %2, align 4, !tbaa !4
  %xhv_max = getelementptr inbounds %struct.xpvhv* %1, i64 0, i32 2
  store i64 7, i64* %xhv_max, align 8, !tbaa !3
  %xhv_fill = getelementptr inbounds %struct.xpvhv* %1, i64 0, i32 1
  store i64 0, i64* %xhv_fill, align 8, !tbaa !3
  %xhv_pmroot = getelementptr inbounds %struct.xpvhv* %1, i64 0, i32 9
  store %struct.pmop* null, %struct.pmop** %xhv_pmroot, align 8, !tbaa !0
  %call5 = tail call i32 @Perl_hv_iterinit(%struct.hv* %0) #5
  ret %struct.hv* %0
}

; Function Attrs: optsize
declare %struct.sv* @Perl_newSV(i64) #1

; Function Attrs: optsize
declare signext i8 @Perl_sv_upgrade(%struct.sv*, i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_hv_iterinit(%struct.hv* %hv) #0 {
entry:
  %tobool = icmp eq %struct.hv* %hv, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %sv_any = getelementptr inbounds %struct.hv* %hv, i64 0, i32 0
  %0 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %xhv_eiter = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 8
  %1 = load %struct.he** %xhv_eiter, align 8, !tbaa !0
  %tobool2 = icmp eq %struct.he* %1, null
  br i1 %tobool2, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %sv_flags = getelementptr inbounds %struct.hv* %hv, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %2, 1073741824
  %tobool3 = icmp eq i32 %and, 0
  br i1 %tobool3, label %if.end7, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  %and6 = and i32 %2, -1073741825
  store i32 %and6, i32* %sv_flags, align 4, !tbaa !4
  tail call void @Perl_hv_free_ent(%struct.hv* %hv, %struct.he* %1) #5
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true, %if.end, %if.then4
  %xhv_riter = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 7
  store i32 -1, i32* %xhv_riter, align 4, !tbaa !4
  store %struct.he* null, %struct.he** %xhv_eiter, align 8, !tbaa !0
  %xhv_keys = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 3
  %3 = load i64* %xhv_keys, align 8, !tbaa !3
  %conv = trunc i64 %3 to i32
  ret i32 %conv
}

; Function Attrs: nounwind optsize uwtable
define %struct.hv* @Perl_newHVhv(%struct.hv* %ohv) #0 {
entry:
  %call = tail call %struct.hv* @Perl_newHV() #5
  %tobool = icmp eq %struct.hv* %ohv, null
  br i1 %tobool, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %sv_any = getelementptr inbounds %struct.hv* %ohv, i64 0, i32 0
  %0 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %xhv_fill = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 1
  %1 = load i64* %xhv_fill, align 8, !tbaa !3
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %xhv_max = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 2
  %2 = load i64* %xhv_max, align 8, !tbaa !3
  %3 = getelementptr inbounds %struct.hv* %ohv, i64 0, i32 2
  %4 = load i32* %3, align 4, !tbaa !4
  %and = and i32 %4, 57344
  %tobool2 = icmp eq i32 %and, 0
  br i1 %tobool2, label %if.then3, label %if.else68

if.then3:                                         ; preds = %if.end
  %conv = and i32 %4, 536870912
  %5 = bitcast %struct.xpvhv* %0 to %struct.he***
  %6 = load %struct.he*** %5, align 8, !tbaa !0
  %add = add i64 %2, 1
  %cmp9 = icmp ult i64 %add, 64
  %mul = shl i64 %add, 3
  br i1 %cmp9, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.then3
  %mul14 = shl i64 %add, 4
  %sub = add i64 %mul14, -16
  br label %cond.end

cond.end:                                         ; preds = %if.then3, %cond.false
  %cond = phi i64 [ %sub, %cond.false ], [ %mul, %if.then3 ]
  %call16 = tail call i8* @Perl_safesysmalloc(i64 %cond) #4
  %7 = bitcast i8* %call16 to %struct.he**
  %tobool41 = icmp eq i32 %conv, 0
  br label %for.body

for.body:                                         ; preds = %cond.end, %for.inc57
  %i.0163 = phi i64 [ 0, %cond.end ], [ %inc, %for.inc57 ]
  %arrayidx = getelementptr inbounds %struct.he** %6, i64 %i.0163
  %8 = load %struct.he** %arrayidx, align 8, !tbaa !0
  %tobool19 = icmp eq %struct.he* %8, null
  %arrayidx21 = getelementptr inbounds %struct.he** %7, i64 %i.0163
  br i1 %tobool19, label %if.then20, label %for.body26

if.then20:                                        ; preds = %for.body
  store %struct.he* null, %struct.he** %arrayidx21, align 8, !tbaa !0
  br label %for.inc57

for.body26:                                       ; preds = %for.body, %if.end54
  %prev.0162 = phi %struct.he* [ %call37, %if.end54 ], [ null, %for.body ]
  %oent.0161 = phi %struct.he* [ %14, %if.end54 ], [ %8, %for.body ]
  %hent_hek = getelementptr inbounds %struct.he* %oent.0161, i64 0, i32 1
  %9 = load %struct.hek** %hent_hek, align 8, !tbaa !0
  %hek_hash = getelementptr inbounds %struct.hek* %9, i64 0, i32 0
  %10 = load i32* %hek_hash, align 4, !tbaa !4
  %arraydecay = getelementptr inbounds %struct.hek* %9, i64 0, i32 2, i64 0
  %hek_len = getelementptr inbounds %struct.hek* %9, i64 0, i32 1
  %11 = load i32* %hek_len, align 4, !tbaa !4
  %conv29 = sext i32 %11 to i64
  %add.ptr.sum = add i64 %conv29, 1
  %add.ptr35 = getelementptr inbounds %struct.hek* %9, i64 0, i32 2, i64 %add.ptr.sum
  %12 = load i8* %add.ptr35, align 1, !tbaa !1
  %conv36 = zext i8 %12 to i32
  %call37 = tail call fastcc %struct.he* @S_new_he() #5
  %hent_val = getelementptr inbounds %struct.he* %oent.0161, i64 0, i32 2
  %13 = load %struct.sv** %hent_val, align 8, !tbaa !0
  %call38 = tail call %struct.sv* @Perl_newSVsv(%struct.sv* %13) #4
  %hent_val39 = getelementptr inbounds %struct.he* %call37, i64 0, i32 2
  store %struct.sv* %call38, %struct.sv** %hent_val39, align 8, !tbaa !0
  br i1 %tobool41, label %cond.false45, label %cond.true42

cond.true42:                                      ; preds = %for.body26
  %call44 = tail call fastcc %struct.hek* @S_share_hek_flags(i8* %arraydecay, i32 %11, i32 %10, i32 %conv36) #5
  br label %cond.end48

cond.false45:                                     ; preds = %for.body26
  %call47 = tail call fastcc %struct.hek* @S_save_hek_flags(i8* %arraydecay, i32 %11, i32 %10, i32 %conv36) #5
  br label %cond.end48

cond.end48:                                       ; preds = %cond.false45, %cond.true42
  %cond49 = phi %struct.hek* [ %call44, %cond.true42 ], [ %call47, %cond.false45 ]
  %hent_hek50 = getelementptr inbounds %struct.he* %call37, i64 0, i32 1
  store %struct.hek* %cond49, %struct.hek** %hent_hek50, align 8, !tbaa !0
  %tobool51 = icmp eq %struct.he* %prev.0162, null
  br i1 %tobool51, label %if.else, label %if.then52

if.then52:                                        ; preds = %cond.end48
  %hent_next = getelementptr inbounds %struct.he* %prev.0162, i64 0, i32 0
  store %struct.he* %call37, %struct.he** %hent_next, align 8, !tbaa !0
  br label %if.end54

if.else:                                          ; preds = %cond.end48
  store %struct.he* %call37, %struct.he** %arrayidx21, align 8, !tbaa !0
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then52
  %hent_next55 = getelementptr inbounds %struct.he* %call37, i64 0, i32 0
  store %struct.he* null, %struct.he** %hent_next55, align 8, !tbaa !0
  %hent_next56 = getelementptr inbounds %struct.he* %oent.0161, i64 0, i32 0
  %14 = load %struct.he** %hent_next56, align 8, !tbaa !0
  %tobool25 = icmp eq %struct.he* %14, null
  br i1 %tobool25, label %for.inc57, label %for.body26

for.inc57:                                        ; preds = %if.end54, %if.then20
  %inc = add i64 %i.0163, 1
  %cmp17 = icmp ugt i64 %inc, %2
  br i1 %cmp17, label %for.end58, label %for.body

for.end58:                                        ; preds = %for.inc57
  %sv_any59 = getelementptr inbounds %struct.hv* %call, i64 0, i32 0
  %15 = load %struct.xpvhv** %sv_any59, align 8, !tbaa !0
  %xhv_max60 = getelementptr inbounds %struct.xpvhv* %15, i64 0, i32 2
  store i64 %2, i64* %xhv_max60, align 8, !tbaa !3
  %xhv_fill62 = getelementptr inbounds %struct.xpvhv* %15, i64 0, i32 1
  store i64 %1, i64* %xhv_fill62, align 8, !tbaa !3
  %16 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %xhv_keys = getelementptr inbounds %struct.xpvhv* %16, i64 0, i32 3
  %17 = load i64* %xhv_keys, align 8, !tbaa !3
  %xhv_keys65 = getelementptr inbounds %struct.xpvhv* %15, i64 0, i32 3
  store i64 %17, i64* %xhv_keys65, align 8, !tbaa !3
  %18 = getelementptr inbounds %struct.xpvhv* %15, i64 0, i32 0
  store i8* %call16, i8** %18, align 8, !tbaa !0
  br label %return

if.else68:                                        ; preds = %if.end
  %xhv_riter = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 7
  %19 = load i32* %xhv_riter, align 4, !tbaa !4
  %xhv_eiter = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 8
  %20 = load %struct.he** %xhv_eiter, align 8, !tbaa !0
  %tobool72167 = icmp eq i64 %2, 0
  br i1 %tobool72167, label %while.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %if.else68
  %mul74 = shl i64 %1, 1
  br label %land.rhs

while.cond:                                       ; preds = %land.rhs
  %tobool72 = icmp eq i64 %div, 0
  br i1 %tobool72, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.cond
  %hv_max.0168 = phi i64 [ %2, %land.rhs.lr.ph ], [ %div, %while.cond ]
  %add73 = add i64 %hv_max.0168, 1
  %cmp75 = icmp ult i64 %add73, %mul74
  %div = lshr i64 %hv_max.0168, 1
  br i1 %cmp75, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond, %land.rhs, %if.else68
  %hv_max.0.lcssa = phi i64 [ 0, %if.else68 ], [ %hv_max.0168, %land.rhs ], [ 0, %while.cond ]
  %sv_any77 = getelementptr inbounds %struct.hv* %call, i64 0, i32 0
  %21 = load %struct.xpvhv** %sv_any77, align 8, !tbaa !0
  %xhv_max78 = getelementptr inbounds %struct.xpvhv* %21, i64 0, i32 2
  store i64 %hv_max.0.lcssa, i64* %xhv_max78, align 8, !tbaa !3
  %call79 = tail call i32 @Perl_hv_iterinit(%struct.hv* %ohv) #5
  %call81164 = tail call %struct.he* @Perl_hv_iternext_flags(%struct.hv* %ohv, i32 0) #5
  %tobool82165 = icmp eq %struct.he* %call81164, null
  br i1 %tobool82165, label %while.end103, label %while.body83

while.body83:                                     ; preds = %while.end, %while.body83
  %call81166 = phi %struct.he* [ %call81, %while.body83 ], [ %call81164, %while.end ]
  %hent_hek84 = getelementptr inbounds %struct.he* %call81166, i64 0, i32 1
  %22 = load %struct.hek** %hent_hek84, align 8, !tbaa !0
  %arraydecay86 = getelementptr inbounds %struct.hek* %22, i64 0, i32 2, i64 0
  %hek_len88 = getelementptr inbounds %struct.hek* %22, i64 0, i32 1
  %23 = load i32* %hek_len88, align 4, !tbaa !4
  %hent_val89 = getelementptr inbounds %struct.he* %call81166, i64 0, i32 2
  %24 = load %struct.sv** %hent_val89, align 8, !tbaa !0
  %call90 = tail call %struct.sv* @Perl_newSVsv(%struct.sv* %24) #4
  %25 = load %struct.hek** %hent_hek84, align 8, !tbaa !0
  %hek_hash92 = getelementptr inbounds %struct.hek* %25, i64 0, i32 0
  %26 = load i32* %hek_hash92, align 4, !tbaa !4
  %hek_len97 = getelementptr inbounds %struct.hek* %25, i64 0, i32 1
  %27 = load i32* %hek_len97, align 4, !tbaa !4
  %idx.ext98 = sext i32 %27 to i64
  %add.ptr99.sum = add i64 %idx.ext98, 1
  %add.ptr100 = getelementptr inbounds %struct.hek* %25, i64 0, i32 2, i64 %add.ptr99.sum
  %28 = load i8* %add.ptr100, align 1, !tbaa !1
  %conv101 = zext i8 %28 to i32
  %conv.i = sext i32 %23 to i64
  %call.i = tail call fastcc %struct.he* @S_hv_fetch_common(%struct.hv* %call, %struct.sv* null, i8* %arraydecay86, i64 %conv.i, i32 %conv101, i32 9, %struct.sv* %call90, i32 %26) #4
  %call81 = tail call %struct.he* @Perl_hv_iternext_flags(%struct.hv* %ohv, i32 0) #5
  %tobool82 = icmp eq %struct.he* %call81, null
  br i1 %tobool82, label %while.end103, label %while.body83

while.end103:                                     ; preds = %while.body83, %while.end
  %29 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %xhv_riter105 = getelementptr inbounds %struct.xpvhv* %29, i64 0, i32 7
  store i32 %19, i32* %xhv_riter105, align 4, !tbaa !4
  %xhv_eiter107 = getelementptr inbounds %struct.xpvhv* %29, i64 0, i32 8
  store %struct.he* %20, %struct.he** %xhv_eiter107, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %for.end58, %while.end103, %lor.lhs.false, %entry
  ret %struct.hv* %call
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.he* @S_new_he() #0 {
entry:
  %0 = load %struct.he** @PL_he_root, align 8, !tbaa !0
  %tobool = icmp eq %struct.he* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i8* @Perl_safesysmalloc(i64 4080) #4
  %1 = bitcast i8* %call.i to %struct.xpv*
  %2 = load %struct.xpv** @PL_he_arenaroot, align 8, !tbaa !0
  %3 = bitcast %struct.xpv* %2 to i8*
  %xpv_pv.i = bitcast i8* %call.i to i8**
  store i8* %3, i8** %xpv_pv.i, align 8, !tbaa !0
  store %struct.xpv* %1, %struct.xpv** @PL_he_arenaroot, align 8, !tbaa !0
  %arrayidx.i = getelementptr inbounds i8* %call.i, i64 4056
  %4 = bitcast i8* %arrayidx.i to %struct.he*
  %incdec.ptr.i = getelementptr inbounds i8* %call.i, i64 24
  %5 = bitcast i8* %incdec.ptr.i to %struct.he*
  store %struct.he* %5, %struct.he** @PL_he_root, align 8, !tbaa !0
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %if.then
  %he.011.i = phi %struct.he* [ %5, %if.then ], [ %add.ptr.i, %while.body.i ]
  %add.ptr.i = getelementptr inbounds %struct.he* %he.011.i, i64 1
  %hent_next.i = getelementptr inbounds %struct.he* %he.011.i, i64 0, i32 0
  store %struct.he* %add.ptr.i, %struct.he** %hent_next.i, align 8, !tbaa !0
  %cmp.i = icmp ult %struct.he* %add.ptr.i, %4
  br i1 %cmp.i, label %while.body.i, label %S_more_he.exit

S_more_he.exit:                                   ; preds = %while.body.i
  %hent_next2.i = getelementptr inbounds %struct.he* %add.ptr.i, i64 0, i32 0
  store %struct.he* null, %struct.he** %hent_next2.i, align 8, !tbaa !0
  %.pre = load %struct.he** @PL_he_root, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %S_more_he.exit
  %6 = phi %struct.he* [ %0, %entry ], [ %.pre, %S_more_he.exit ]
  %hent_next = getelementptr inbounds %struct.he* %6, i64 0, i32 0
  %7 = load %struct.he** %hent_next, align 8, !tbaa !0
  store %struct.he* %7, %struct.he** @PL_he_root, align 8, !tbaa !0
  ret %struct.he* %6
}

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVsv(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.hek* @S_share_hek_flags(i8* %str, i32 %len, i32 %hash, i32 %flags) #0 {
entry:
  %and = and i32 %flags, 255
  %0 = load %struct.hv** @PL_strtab, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.hv* %0, i64 0, i32 0
  %1 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %xhv_max = getelementptr inbounds %struct.xpvhv* %1, i64 0, i32 2
  %2 = load i64* %xhv_max, align 8, !tbaa !3
  %conv = trunc i64 %2 to i32
  %and2 = and i32 %conv, %hash
  %idxprom = zext i32 %and2 to i64
  %xhv_array = getelementptr inbounds %struct.xpvhv* %1, i64 0, i32 0
  %3 = load i8** %xhv_array, align 8, !tbaa !0
  %4 = bitcast i8* %3 to %struct.he**
  %arrayidx = getelementptr inbounds %struct.he** %4, i64 %idxprom
  %entry1.083 = load %struct.he** %arrayidx, align 8
  %tobool84 = icmp eq %struct.he* %entry1.083, null
  br i1 %tobool84, label %if.then31.critedge, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %5 = trunc i32 %flags to i8
  %conv15 = sext i32 %len to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %entry1.085 = phi %struct.he* [ %entry1.083, %for.body.lr.ph ], [ %entry1.0, %for.inc ]
  %hent_hek = getelementptr inbounds %struct.he* %entry1.085, i64 0, i32 1
  %6 = load %struct.hek** %hent_hek, align 8, !tbaa !0
  %hek_hash = getelementptr inbounds %struct.hek* %6, i64 0, i32 0
  %7 = load i32* %hek_hash, align 4, !tbaa !4
  %cmp = icmp eq i32 %7, %hash
  br i1 %cmp, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %hek_len = getelementptr inbounds %struct.hek* %6, i64 0, i32 1
  %8 = load i32* %hek_len, align 4, !tbaa !4
  %cmp5 = icmp eq i32 %8, %len
  br i1 %cmp5, label %if.end8, label %for.inc

if.end8:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds %struct.hek* %6, i64 0, i32 2, i64 0
  %cmp10 = icmp eq i8* %arraydecay, %str
  br i1 %cmp10, label %if.end18, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end8
  %call = tail call i32 @memcmp(i8* %arraydecay, i8* %str, i64 %conv15) #4
  %tobool16 = icmp eq i32 %call, 0
  br i1 %tobool16, label %if.end18, label %for.inc

if.end18:                                         ; preds = %land.lhs.true, %if.end8
  %add.ptr.sum = add i64 %conv15, 1
  %add.ptr24 = getelementptr inbounds %struct.hek* %6, i64 0, i32 2, i64 %add.ptr.sum
  %9 = load i8* %add.ptr24, align 1, !tbaa !1
  %cmp26 = icmp eq i8 %9, %5
  br i1 %cmp26, label %if.end46, label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %if.end18, %if.end, %for.body
  %hent_next = getelementptr inbounds %struct.he* %entry1.085, i64 0, i32 0
  %entry1.0 = load %struct.he** %hent_next, align 8
  %tobool = icmp eq %struct.he* %entry1.0, null
  br i1 %tobool, label %if.then31.critedge, label %for.body

if.then31.critedge:                               ; preds = %for.inc, %entry
  %i.0.lcssa = phi i1 [ false, %entry ], [ true, %for.inc ]
  %call32 = tail call fastcc %struct.he* @S_new_he() #5
  %call33 = tail call fastcc %struct.hek* @S_save_hek_flags(i8* %str, i32 %len, i32 %hash, i32 %and) #5
  %hent_hek34 = getelementptr inbounds %struct.he* %call32, i64 0, i32 1
  store %struct.hek* %call33, %struct.hek** %hent_hek34, align 8, !tbaa !0
  %hent_val = getelementptr inbounds %struct.he* %call32, i64 0, i32 2
  store %struct.sv* null, %struct.sv** %hent_val, align 8, !tbaa !0
  %10 = load %struct.he** %arrayidx, align 8, !tbaa !0
  %hent_next35 = getelementptr inbounds %struct.he* %call32, i64 0, i32 0
  store %struct.he* %10, %struct.he** %hent_next35, align 8, !tbaa !0
  store %struct.he* %call32, %struct.he** %arrayidx, align 8, !tbaa !0
  %xhv_keys = getelementptr inbounds %struct.xpvhv* %1, i64 0, i32 3
  %11 = load i64* %xhv_keys, align 8, !tbaa !3
  %inc = add nsw i64 %11, 1
  store i64 %inc, i64* %xhv_keys, align 8, !tbaa !3
  br i1 %i.0.lcssa, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.then31.critedge
  %xhv_fill = getelementptr inbounds %struct.xpvhv* %1, i64 0, i32 1
  %12 = load i64* %xhv_fill, align 8, !tbaa !3
  %inc38 = add i64 %12, 1
  store i64 %inc38, i64* %xhv_fill, align 8, !tbaa !3
  br label %if.end46

if.else:                                          ; preds = %if.then31.critedge
  %13 = load i64* %xhv_max, align 8, !tbaa !3
  %cmp41 = icmp slt i64 %11, %13
  br i1 %cmp41, label %if.end46, label %if.then43

if.then43:                                        ; preds = %if.else
  %14 = load %struct.hv** @PL_strtab, align 8, !tbaa !0
  tail call fastcc void @S_hsplit(%struct.hv* %14) #5
  br label %if.end46

if.end46:                                         ; preds = %if.end18, %if.else, %if.then37, %if.then43
  %entry1.1 = phi %struct.he* [ %call32, %if.then37 ], [ %call32, %if.then43 ], [ %call32, %if.else ], [ %entry1.085, %if.end18 ]
  %hent_val47 = getelementptr inbounds %struct.he* %entry1.1, i64 0, i32 2
  %15 = load %struct.sv** %hent_val47, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.sv* %15, i64 1
  store %struct.sv* %incdec.ptr, %struct.sv** %hent_val47, align 8, !tbaa !0
  %and48 = and i32 %flags, 256
  %tobool49 = icmp eq i32 %and48, 0
  br i1 %tobool49, label %if.end51, label %if.then50

if.then50:                                        ; preds = %if.end46
  tail call void @Perl_safesysfree(i8* %str) #4
  br label %if.end51

if.end51:                                         ; preds = %if.end46, %if.then50
  %hent_hek52 = getelementptr inbounds %struct.he* %entry1.1, i64 0, i32 1
  %16 = load %struct.hek** %hent_hek52, align 8, !tbaa !0
  ret %struct.hek* %16
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.hek* @S_save_hek_flags(i8* %str, i32 %len, i32 %hash, i32 %flags) #0 {
entry:
  %conv = sext i32 %len to i64
  %add1 = add i64 %conv, 10
  %call = tail call i8* @Perl_safesysmalloc(i64 %add1) #4
  %0 = bitcast i8* %call to %struct.hek*
  %hek_key = getelementptr inbounds i8* %call, i64 8
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %hek_key, i8* %str, i64 %conv, i32 1, i1 false)
  %hek_key.sum = add i64 %conv, 8
  %arrayidx = getelementptr inbounds i8* %call, i64 %hek_key.sum
  store i8 0, i8* %arrayidx, align 1, !tbaa !1
  %hek_len = getelementptr inbounds i8* %call, i64 4
  %1 = bitcast i8* %hek_len to i32*
  store i32 %len, i32* %1, align 4, !tbaa !4
  %hek_hash = bitcast i8* %call to i32*
  store i32 %hash, i32* %hek_hash, align 4, !tbaa !4
  %conv5 = trunc i32 %flags to i8
  %add.ptr.sum = add i64 %conv, 9
  %add.ptr9 = getelementptr inbounds i8* %call, i64 %add.ptr.sum
  store i8 %conv5, i8* %add.ptr9, align 1, !tbaa !1
  %and10 = and i32 %flags, 256
  %tobool = icmp eq i32 %and10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @Perl_safesysfree(i8* %str) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret %struct.hek* %0
}

; Function Attrs: nounwind optsize uwtable
define %struct.he* @Perl_hv_iternext_flags(%struct.hv* %hv, i32 %flags) #0 {
entry:
  %tobool = icmp eq %struct.hv* %hv, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %sv_any = getelementptr inbounds %struct.hv* %hv, i64 0, i32 0
  %0 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %xhv_eiter = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 8
  %1 = load %struct.he** %xhv_eiter, align 8, !tbaa !0
  %2 = bitcast %struct.hv* %hv to %struct.sv*
  %3 = getelementptr inbounds %struct.hv* %hv, i64 0, i32 2
  %4 = load i32* %3, align 4, !tbaa !4
  %and = and i32 %4, 32768
  %tobool2 = icmp eq i32 %and, 0
  br i1 %tobool2, label %if.end69, label %cond.end

cond.end:                                         ; preds = %if.end
  %call = tail call %struct.magic* @Perl_mg_find(%struct.sv* %2, i32 80) #4
  %tobool3 = icmp eq %struct.magic* %call, null
  br i1 %tobool3, label %if.end69, label %if.then4

if.then4:                                         ; preds = %cond.end
  %call5 = tail call %struct.sv* @Perl_sv_newmortal() #4
  %tobool6 = icmp eq %struct.he* %1, null
  br i1 %tobool6, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then4
  %hent_hek = getelementptr inbounds %struct.he* %1, i64 0, i32 1
  %5 = load %struct.hek** %hent_hek, align 8, !tbaa !0
  %arraydecay = getelementptr inbounds %struct.hek* %5, i64 0, i32 2, i64 0
  %hek_len = getelementptr inbounds %struct.hek* %5, i64 0, i32 1
  %6 = load i32* %hek_len, align 4, !tbaa !4
  %cmp = icmp eq i32 %6, -2
  br i1 %cmp, label %cond.true11, label %cond.false15

cond.true11:                                      ; preds = %if.then7
  %7 = bitcast i8* %arraydecay to %struct.sv**
  %8 = load %struct.sv** %7, align 8, !tbaa !0
  br label %cond.end26

cond.false15:                                     ; preds = %if.then7
  %conv = sext i32 %6 to i64
  %call21 = tail call %struct.sv* @Perl_newSVpvn(i8* %arraydecay, i64 %conv) #4
  %call22 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call21) #4
  br label %cond.end26

cond.end26:                                       ; preds = %cond.true11, %cond.false15
  %cond27 = phi %struct.sv* [ %8, %cond.true11 ], [ %call22, %cond.false15 ]
  tail call void @Perl_sv_setsv_flags(%struct.sv* %call5, %struct.sv* %cond27, i32 2) #4
  %9 = load %struct.hek** %hent_hek, align 8, !tbaa !0
  %hek_len33 = getelementptr inbounds %struct.hek* %9, i64 0, i32 1
  %10 = load i32* %hek_len33, align 4, !tbaa !4
  %cmp34 = icmp eq i32 %10, -2
  br i1 %cmp34, label %cond.true36, label %cond.end41

cond.true36:                                      ; preds = %cond.end26
  %arraydecay30 = getelementptr inbounds %struct.hek* %9, i64 0, i32 2, i64 0
  %11 = bitcast i8* %arraydecay30 to %struct.sv**
  %12 = load %struct.sv** %11, align 8, !tbaa !0
  br label %cond.end41

cond.end41:                                       ; preds = %cond.end26, %cond.true36
  %cond42 = phi %struct.sv* [ %12, %cond.true36 ], [ null, %cond.end26 ]
  tail call void @Perl_sv_free(%struct.sv* %cond42) #4
  br label %if.end49

if.else:                                          ; preds = %if.then4
  %call43 = tail call fastcc %struct.he* @S_new_he() #5
  store %struct.he* %call43, %struct.he** %xhv_eiter, align 8, !tbaa !0
  %13 = bitcast %struct.he* %call43 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 24, i32 1, i1 false)
  %call45 = tail call i8* @Perl_safesysmalloc(i64 16) #4
  tail call void @llvm.memset.p0i8.i64(i8* %call45, i8 0, i64 16, i32 1, i1 false)
  %14 = bitcast i8* %call45 to %struct.hek*
  %hent_hek46 = getelementptr inbounds %struct.he* %call43, i64 0, i32 1
  store %struct.hek* %14, %struct.hek** %hent_hek46, align 8, !tbaa !0
  %hek_len48 = getelementptr inbounds i8* %call45, i64 4
  %15 = bitcast i8* %hek_len48 to i32*
  store i32 -2, i32* %15, align 4, !tbaa !4
  br label %if.end49

if.end49:                                         ; preds = %if.else, %cond.end41
  %entry1.0 = phi %struct.he* [ %1, %cond.end41 ], [ %call43, %if.else ]
  %call50 = tail call i32 @Perl_magic_nextpack(%struct.sv* %2, %struct.magic* %call, %struct.sv* %call5) #4
  %sv_flags51 = getelementptr inbounds %struct.sv* %call5, i64 0, i32 2
  %16 = load i32* %sv_flags51, align 4, !tbaa !4
  %and52 = and i32 %16, 118423552
  %tobool53 = icmp eq i32 %and52, 0
  br i1 %tobool53, label %if.end62, label %if.then54

if.then54:                                        ; preds = %if.end49
  %hent_hek55 = getelementptr inbounds %struct.he* %entry1.0, i64 0, i32 1
  %17 = load %struct.hek** %hent_hek55, align 8, !tbaa !0
  %hek_len56 = getelementptr inbounds %struct.hek* %17, i64 0, i32 1
  store i32 -2, i32* %hek_len56, align 4, !tbaa !4
  store %struct.sv* %call5, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool57 = icmp eq %struct.sv* %call5, null
  br i1 %tobool57, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.then54
  %sv_refcnt = getelementptr inbounds %struct.sv* %call5, i64 0, i32 1
  %18 = load i32* %sv_refcnt, align 4, !tbaa !4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %sv_refcnt, align 4, !tbaa !4
  br label %land.end

land.end:                                         ; preds = %if.then54, %land.rhs
  %19 = load %struct.hek** %hent_hek55, align 8, !tbaa !0
  %arraydecay61 = getelementptr inbounds %struct.hek* %19, i64 0, i32 2, i64 0
  %20 = bitcast i8* %arraydecay61 to %struct.sv**
  store %struct.sv* %call5, %struct.sv** %20, align 8, !tbaa !0
  br label %return

if.end62:                                         ; preds = %if.end49
  %hent_val = getelementptr inbounds %struct.he* %entry1.0, i64 0, i32 2
  %21 = load %struct.sv** %hent_val, align 8, !tbaa !0
  %tobool63 = icmp eq %struct.sv* %21, null
  br i1 %tobool63, label %if.end66, label %if.then64

if.then64:                                        ; preds = %if.end62
  tail call void @Perl_sv_free(%struct.sv* %21) #4
  br label %if.end66

if.end66:                                         ; preds = %if.end62, %if.then64
  %hent_hek67 = getelementptr inbounds %struct.he* %entry1.0, i64 0, i32 1
  %22 = load %struct.hek** %hent_hek67, align 8, !tbaa !0
  %23 = bitcast %struct.hek* %22 to i8*
  tail call void @Perl_safesysfree(i8* %23) #4
  %24 = load %struct.he** @PL_he_root, align 8, !tbaa !0
  %hent_next.i = getelementptr inbounds %struct.he* %entry1.0, i64 0, i32 0
  store %struct.he* %24, %struct.he** %hent_next.i, align 8, !tbaa !0
  store %struct.he* %entry1.0, %struct.he** @PL_he_root, align 8, !tbaa !0
  store %struct.he* null, %struct.he** %xhv_eiter, align 8, !tbaa !0
  br label %return

if.end69:                                         ; preds = %if.end, %cond.end
  %xhv_array = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 0
  %25 = load i8** %xhv_array, align 8, !tbaa !0
  %tobool70 = icmp eq i8* %25, null
  br i1 %tobool70, label %if.then71, label %if.end105

if.then71:                                        ; preds = %if.end69
  %xhv_max = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 2
  %26 = load i64* %xhv_max, align 8, !tbaa !3
  %add = add i64 %26, 1
  %cmp72 = icmp ult i64 %add, 64
  %mul = shl i64 %add, 3
  br i1 %cmp72, label %cond.end82, label %cond.false77

cond.false77:                                     ; preds = %if.then71
  %mul81 = shl i64 %add, 4
  %sub = add i64 %mul81, -16
  br label %cond.end82

cond.end82:                                       ; preds = %if.then71, %cond.false77
  %cond83 = phi i64 [ %sub, %cond.false77 ], [ %mul, %if.then71 ]
  %call85 = tail call i8* @Perl_safesysmalloc(i64 %cond83) #4
  store i8* %call85, i8** %xhv_array, align 8, !tbaa !0
  %27 = load i64* %xhv_max, align 8, !tbaa !3
  %add89 = add i64 %27, 1
  %cmp90 = icmp ult i64 %add89, 64
  %mul95 = shl i64 %add89, 3
  br i1 %cmp90, label %cond.end102, label %cond.false96

cond.false96:                                     ; preds = %cond.end82
  %mul100 = shl i64 %add89, 4
  %sub101 = add i64 %mul100, -16
  br label %cond.end102

cond.end102:                                      ; preds = %cond.end82, %cond.false96
  %cond103 = phi i64 [ %sub101, %cond.false96 ], [ %mul95, %cond.end82 ]
  tail call void @llvm.memset.p0i8.i64(i8* %call85, i8 0, i64 %cond103, i32 1, i1 false)
  br label %if.end105

if.end105:                                        ; preds = %if.end69, %cond.end102
  %tobool106 = icmp ne %struct.he* %1, null
  br i1 %tobool106, label %if.then107, label %while.body123.lr.ph

if.then107:                                       ; preds = %if.end105
  %hent_next = getelementptr inbounds %struct.he* %1, i64 0, i32 0
  %28 = load %struct.he** %hent_next, align 8, !tbaa !0
  %and108 = and i32 %flags, 1
  %tobool109 = icmp eq i32 %and108, 0
  %tobool111227 = icmp eq %struct.he* %28, null
  br i1 %tobool109, label %while.cond.preheader, label %while.cond121.preheader

while.cond.preheader:                             ; preds = %if.then107
  br i1 %tobool111227, label %while.body123.lr.ph, label %land.rhs112

while.cond121.preheader:                          ; preds = %if.then107
  br i1 %tobool111227, label %while.body123.lr.ph, label %while.end150

while.body123.lr.ph:                              ; preds = %while.body, %while.cond.preheader, %if.end105, %while.cond121.preheader
  %xhv_riter = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 7
  %xhv_max126 = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 2
  %29 = load i64* %xhv_max126, align 8, !tbaa !3
  %conv127 = trunc i64 %29 to i32
  %and135 = and i32 %flags, 1
  %tobool136 = icmp eq i32 %and135, 0
  %xhv_riter.promoted = load i32* %xhv_riter, align 4, !tbaa !4
  %30 = sext i32 %xhv_riter.promoted to i64
  br label %while.body123

land.rhs112:                                      ; preds = %while.cond.preheader, %while.body
  %entry1.1228 = phi %struct.he* [ %32, %while.body ], [ %28, %while.cond.preheader ]
  %hent_val113 = getelementptr inbounds %struct.he* %entry1.1228, i64 0, i32 2
  %31 = load %struct.sv** %hent_val113, align 8, !tbaa !0
  %cmp114 = icmp eq %struct.sv* %31, @PL_sv_placeholder
  br i1 %cmp114, label %while.body, label %while.end150

while.body:                                       ; preds = %land.rhs112
  %hent_next118 = getelementptr inbounds %struct.he* %entry1.1228, i64 0, i32 0
  %32 = load %struct.he** %hent_next118, align 8, !tbaa !0
  %tobool111 = icmp eq %struct.he* %32, null
  br i1 %tobool111, label %while.body123.lr.ph, label %land.rhs112

while.body123:                                    ; preds = %while.body146, %while.cond138.preheader, %while.body123.lr.ph, %while.cond121.backedge
  %indvars.iv = phi i64 [ %30, %while.body123.lr.ph ], [ %indvars.iv.next, %while.cond121.backedge ], [ %indvars.iv.next, %while.cond138.preheader ], [ %indvars.iv.next, %while.body146 ]
  %inc124225 = phi i32 [ %xhv_riter.promoted, %while.body123.lr.ph ], [ %inc124, %while.cond121.backedge ], [ %inc124, %while.cond138.preheader ], [ %inc124, %while.body146 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc124 = add nsw i32 %inc124225, 1
  %33 = trunc i64 %indvars.iv to i32
  %cmp128 = icmp slt i32 %33, %conv127
  br i1 %cmp128, label %if.end132, label %if.then130

if.then130:                                       ; preds = %while.body123
  store i32 -1, i32* %xhv_riter, align 4, !tbaa !4
  br label %while.end150

if.end132:                                        ; preds = %while.body123
  %34 = load i8** %xhv_array, align 8, !tbaa !0
  %35 = bitcast i8* %34 to %struct.he**
  %arrayidx = getelementptr inbounds %struct.he** %35, i64 %indvars.iv.next
  %36 = load %struct.he** %arrayidx, align 8, !tbaa !0
  br i1 %tobool136, label %while.cond138.preheader, label %while.cond121.backedge

while.cond121.backedge:                           ; preds = %land.rhs140, %if.end132
  %entry1.2.be = phi %struct.he* [ %36, %if.end132 ], [ %entry1.3218, %land.rhs140 ]
  %lnot = icmp eq %struct.he* %entry1.2.be, null
  br i1 %lnot, label %while.body123, label %while.cond121.while.end150.loopexit_crit_edge

while.cond138.preheader:                          ; preds = %if.end132
  %tobool139217 = icmp eq %struct.he* %36, null
  br i1 %tobool139217, label %while.body123, label %land.rhs140

land.rhs140:                                      ; preds = %while.cond138.preheader, %while.body146
  %entry1.3218 = phi %struct.he* [ %38, %while.body146 ], [ %36, %while.cond138.preheader ]
  %hent_val141 = getelementptr inbounds %struct.he* %entry1.3218, i64 0, i32 2
  %37 = load %struct.sv** %hent_val141, align 8, !tbaa !0
  %cmp142 = icmp eq %struct.sv* %37, @PL_sv_placeholder
  br i1 %cmp142, label %while.body146, label %while.cond121.backedge

while.body146:                                    ; preds = %land.rhs140
  %hent_next147 = getelementptr inbounds %struct.he* %entry1.3218, i64 0, i32 0
  %38 = load %struct.he** %hent_next147, align 8, !tbaa !0
  %tobool139 = icmp eq %struct.he* %38, null
  br i1 %tobool139, label %while.body123, label %land.rhs140

while.cond121.while.end150.loopexit_crit_edge:    ; preds = %while.cond121.backedge
  store i32 %inc124, i32* %xhv_riter, align 4, !tbaa !4
  br label %while.end150

while.end150:                                     ; preds = %while.cond121.preheader, %while.cond121.while.end150.loopexit_crit_edge, %land.rhs112, %if.then130
  %entry1.2221 = phi %struct.he* [ null, %if.then130 ], [ %entry1.2.be, %while.cond121.while.end150.loopexit_crit_edge ], [ %28, %while.cond121.preheader ], [ %entry1.1228, %land.rhs112 ]
  br i1 %tobool106, label %land.lhs.true152, label %if.end159

land.lhs.true152:                                 ; preds = %while.end150
  %39 = load i32* %3, align 4, !tbaa !4
  %and154 = and i32 %39, 1073741824
  %tobool155 = icmp eq i32 %and154, 0
  br i1 %tobool155, label %if.end159, label %if.then156

if.then156:                                       ; preds = %land.lhs.true152
  %and158 = and i32 %39, -1073741825
  store i32 %and158, i32* %3, align 4, !tbaa !4
  tail call void @Perl_hv_free_ent(%struct.hv* %hv, %struct.he* %1) #5
  br label %if.end159

if.end159:                                        ; preds = %land.lhs.true152, %if.then156, %while.end150
  store %struct.he* %entry1.2221, %struct.he** %xhv_eiter, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end159, %if.end66, %land.end
  %retval.0 = phi %struct.he* [ %entry1.0, %land.end ], [ null, %if.end66 ], [ %entry1.2221, %if.end159 ]
  ret %struct.he* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_hv_free_ent(%struct.hv* nocapture %hv, %struct.he* %entry1) #0 {
entry:
  %tobool = icmp eq %struct.he* %entry1, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %hent_val = getelementptr inbounds %struct.he* %entry1, i64 0, i32 2
  %0 = load %struct.sv** %hent_val, align 8, !tbaa !0
  %tobool2 = icmp eq %struct.sv* %0, null
  br i1 %tobool2, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %sv_flags = getelementptr inbounds %struct.sv* %0, i64 0, i32 2
  %1 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %1, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %land.lhs.true3, label %if.end12

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sv_any = getelementptr inbounds %struct.sv* %0, i64 0, i32 0
  %2 = load i8** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds i8* %2, i64 56
  %3 = bitcast i8* %xgv_gp to %struct.gp**
  %4 = load %struct.gp** %3, align 8, !tbaa !0
  %gp_cvgen = getelementptr inbounds %struct.gp* %4, i64 0, i32 8
  %5 = load i32* %gp_cvgen, align 4, !tbaa !4
  %tobool4 = icmp eq i32 %5, 0
  br i1 %tobool4, label %cond.false, label %if.end12

cond.false:                                       ; preds = %land.lhs.true3
  %gp_cv = getelementptr inbounds %struct.gp* %4, i64 0, i32 7
  %6 = load %struct.cv** %gp_cv, align 8, !tbaa !0
  %tobool7 = icmp eq %struct.cv* %6, null
  br i1 %tobool7, label %if.end12, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %cond.false
  %sv_any9 = getelementptr inbounds %struct.hv* %hv, i64 0, i32 0
  %7 = load %struct.xpvhv** %sv_any9, align 8, !tbaa !0
  %xhv_name = getelementptr inbounds %struct.xpvhv* %7, i64 0, i32 10
  %8 = load i8** %xhv_name, align 8, !tbaa !0
  %tobool10 = icmp eq i8* %8, null
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %land.lhs.true8
  %9 = load i32* @PL_sub_generation, align 4, !tbaa !4
  %inc = add i32 %9, 1
  store i32 %inc, i32* @PL_sub_generation, align 4, !tbaa !4
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true8, %cond.false, %land.lhs.true3, %if.end, %if.then11, %land.lhs.true
  tail call void @Perl_sv_free(%struct.sv* %0) #4
  %hent_hek = getelementptr inbounds %struct.he* %entry1, i64 0, i32 1
  %10 = load %struct.hek** %hent_hek, align 8, !tbaa !0
  %hek_len = getelementptr inbounds %struct.hek* %10, i64 0, i32 1
  %11 = load i32* %hek_len, align 4, !tbaa !4
  %cmp13 = icmp eq i32 %11, -2
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end12
  %arraydecay = getelementptr inbounds %struct.hek* %10, i64 0, i32 2, i64 0
  %12 = bitcast i8* %arraydecay to %struct.sv**
  %13 = load %struct.sv** %12, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %13) #4
  %14 = load %struct.hek** %hent_hek, align 8, !tbaa !0
  %15 = bitcast %struct.hek* %14 to i8*
  tail call void @Perl_safesysfree(i8* %15) #4
  br label %if.end25

if.else:                                          ; preds = %if.end12
  %sv_flags17 = getelementptr inbounds %struct.hv* %hv, i64 0, i32 2
  %16 = load i32* %sv_flags17, align 4, !tbaa !4
  %and18 = and i32 %16, 536870912
  %tobool19 = icmp eq i32 %and18, 0
  br i1 %tobool19, label %if.else22, label %if.then20

if.then20:                                        ; preds = %if.else
  tail call fastcc void @S_unshare_hek_or_pvn(%struct.hek* %10, i8* null, i32 0, i32 0) #4
  br label %if.end25

if.else22:                                        ; preds = %if.else
  %17 = bitcast %struct.hek* %10 to i8*
  tail call void @Perl_safesysfree(i8* %17) #4
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.else22, %if.then14
  %18 = load %struct.he** @PL_he_root, align 8, !tbaa !0
  %hent_next.i = getelementptr inbounds %struct.he* %entry1, i64 0, i32 0
  store %struct.he* %18, %struct.he** %hent_next.i, align 8, !tbaa !0
  store %struct.he* %entry1, %struct.he** @PL_he_root, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %entry, %if.end25
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_free(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_unshare_hek(%struct.hek* %hek) #0 {
entry:
  tail call fastcc void @S_unshare_hek_or_pvn(%struct.hek* %hek, i8* null, i32 0, i32 0) #5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_hv_delayfree_ent(%struct.hv* nocapture %hv, %struct.he* %entry1) #0 {
entry:
  %tobool = icmp eq %struct.he* %entry1, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %hent_val = getelementptr inbounds %struct.he* %entry1, i64 0, i32 2
  %0 = load %struct.sv** %hent_val, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %0, i64 0, i32 2
  %1 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %1, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %sv_any = getelementptr inbounds %struct.sv* %0, i64 0, i32 0
  %2 = load i8** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds i8* %2, i64 56
  %3 = bitcast i8* %xgv_gp to %struct.gp**
  %4 = load %struct.gp** %3, align 8, !tbaa !0
  %gp_cvgen = getelementptr inbounds %struct.gp* %4, i64 0, i32 8
  %5 = load i32* %gp_cvgen, align 4, !tbaa !4
  %tobool3 = icmp eq i32 %5, 0
  br i1 %tobool3, label %cond.false, label %if.end12

cond.false:                                       ; preds = %land.lhs.true
  %gp_cv = getelementptr inbounds %struct.gp* %4, i64 0, i32 7
  %6 = load %struct.cv** %gp_cv, align 8, !tbaa !0
  %tobool7 = icmp eq %struct.cv* %6, null
  br i1 %tobool7, label %if.end12, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %cond.false
  %sv_any9 = getelementptr inbounds %struct.hv* %hv, i64 0, i32 0
  %7 = load %struct.xpvhv** %sv_any9, align 8, !tbaa !0
  %xhv_name = getelementptr inbounds %struct.xpvhv* %7, i64 0, i32 10
  %8 = load i8** %xhv_name, align 8, !tbaa !0
  %tobool10 = icmp eq i8* %8, null
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %land.lhs.true8
  %9 = load i32* @PL_sub_generation, align 4, !tbaa !4
  %inc = add i32 %9, 1
  store i32 %inc, i32* @PL_sub_generation, align 4, !tbaa !4
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true8, %cond.false, %land.lhs.true, %if.then11, %if.end
  %call = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %0) #4
  %hent_hek = getelementptr inbounds %struct.he* %entry1, i64 0, i32 1
  %10 = load %struct.hek** %hent_hek, align 8, !tbaa !0
  %hek_len = getelementptr inbounds %struct.hek* %10, i64 0, i32 1
  %11 = load i32* %hek_len, align 4, !tbaa !4
  %cmp14 = icmp eq i32 %11, -2
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end12
  %arraydecay = getelementptr inbounds %struct.hek* %10, i64 0, i32 2, i64 0
  %12 = bitcast i8* %arraydecay to %struct.sv**
  %13 = load %struct.sv** %12, align 8, !tbaa !0
  %call17 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %13) #4
  %14 = load %struct.hek** %hent_hek, align 8, !tbaa !0
  %15 = bitcast %struct.hek* %14 to i8*
  tail call void @Perl_safesysfree(i8* %15) #4
  br label %if.end27

if.else:                                          ; preds = %if.end12
  %sv_flags19 = getelementptr inbounds %struct.hv* %hv, i64 0, i32 2
  %16 = load i32* %sv_flags19, align 4, !tbaa !4
  %and20 = and i32 %16, 536870912
  %tobool21 = icmp eq i32 %and20, 0
  br i1 %tobool21, label %if.else24, label %if.then22

if.then22:                                        ; preds = %if.else
  tail call fastcc void @S_unshare_hek_or_pvn(%struct.hek* %10, i8* null, i32 0, i32 0) #4
  br label %if.end27

if.else24:                                        ; preds = %if.else
  %17 = bitcast %struct.hek* %10 to i8*
  tail call void @Perl_safesysfree(i8* %17) #4
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.else24, %if.then15
  %18 = load %struct.he** @PL_he_root, align 8, !tbaa !0
  %hent_next.i = getelementptr inbounds %struct.he* %entry1, i64 0, i32 0
  store %struct.he* %18, %struct.he** %hent_next.i, align 8, !tbaa !0
  store %struct.he* %entry1, %struct.he** @PL_he_root, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %entry, %if.end27
  ret void
}

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_hv_clear(%struct.hv* %hv) #0 {
entry:
  %tobool = icmp eq %struct.hv* %hv, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sv_any = getelementptr inbounds %struct.hv* %hv, i64 0, i32 0
  %0 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.hv* %hv, i64 0, i32 2
  %1 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %1, 8388608
  %tobool1 = icmp eq i32 %and, 0
  %xhv_array30.pre = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 0
  br i1 %tobool1, label %if.end28, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8** %xhv_array30.pre, align 8, !tbaa !0
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.end28, label %for.cond.preheader

for.cond.preheader:                               ; preds = %land.lhs.true
  %xhv_max = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 2
  %3 = load i64* %xhv_max, align 8, !tbaa !3
  %conv74 = trunc i64 %3 to i32
  %cmp475 = icmp slt i32 %conv74, 0
  br i1 %cmp475, label %reset, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %xnv_nv = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc25.for.body_crit_edge, %for.body.lr.ph
  %4 = phi i64 [ %11, %for.inc25.for.body_crit_edge ], [ %3, %for.body.lr.ph ]
  %5 = phi i8* [ %.pre78, %for.inc25.for.body_crit_edge ], [ %2, %for.body.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc25.for.body_crit_edge ], [ 0, %for.body.lr.ph ]
  %6 = bitcast i8* %5 to %struct.he**
  %arrayidx = getelementptr inbounds %struct.he** %6, i64 %indvars.iv
  %entry3.071 = load %struct.he** %arrayidx, align 8
  %tobool872 = icmp eq %struct.he* %entry3.071, null
  br i1 %tobool872, label %for.inc25, label %for.body9

for.body9:                                        ; preds = %for.body, %for.inc
  %entry3.073 = phi %struct.he* [ %entry3.0, %for.inc ], [ %entry3.071, %for.body ]
  %hent_val = getelementptr inbounds %struct.he* %entry3.073, i64 0, i32 2
  %7 = load %struct.sv** %hent_val, align 8, !tbaa !0
  %cmp10 = icmp eq %struct.sv* %7, @PL_sv_placeholder
  br i1 %cmp10, label %for.inc, label %if.then12

if.then12:                                        ; preds = %for.body9
  %tobool14 = icmp eq %struct.sv* %7, null
  br i1 %tobool14, label %if.end21, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %if.then12
  %sv_flags17 = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %8 = load i32* %sv_flags17, align 4, !tbaa !4
  %and18 = and i32 %8, 8388608
  %tobool19 = icmp eq i32 %and18, 0
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %land.lhs.true15
  %call = tail call %struct.sv* @Perl_hv_iterkeysv(%struct.he* %entry3.073) #5
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([59 x i8]* @.str1, i64 0, i64 0), %struct.sv* %call) #4
  %.pre77 = load %struct.sv** %hent_val, align 8, !tbaa !0
  br label %if.end21

if.end21:                                         ; preds = %land.lhs.true15, %if.then12, %if.then20
  %9 = phi %struct.sv* [ %7, %land.lhs.true15 ], [ null, %if.then12 ], [ %.pre77, %if.then20 ]
  tail call void @Perl_sv_free(%struct.sv* %9) #4
  store %struct.sv* @PL_sv_placeholder, %struct.sv** %hent_val, align 8, !tbaa !0
  %10 = load double* %xnv_nv, align 8, !tbaa !5
  %inc = fadd double %10, 1.000000e+00
  store double %inc, double* %xnv_nv, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body9, %if.end21
  %hent_next = getelementptr inbounds %struct.he* %entry3.073, i64 0, i32 0
  %entry3.0 = load %struct.he** %hent_next, align 8
  %tobool8 = icmp eq %struct.he* %entry3.0, null
  br i1 %tobool8, label %for.cond7.for.inc25_crit_edge, label %for.body9

for.cond7.for.inc25_crit_edge:                    ; preds = %for.inc
  %.pre79 = load i64* %xhv_max, align 8, !tbaa !3
  br label %for.inc25

for.inc25:                                        ; preds = %for.body, %for.cond7.for.inc25_crit_edge
  %11 = phi i64 [ %.pre79, %for.cond7.for.inc25_crit_edge ], [ %4, %for.body ]
  %conv = trunc i64 %11 to i32
  %12 = trunc i64 %indvars.iv to i32
  %cmp4 = icmp slt i32 %12, %conv
  br i1 %cmp4, label %for.inc25.for.body_crit_edge, label %reset

for.inc25.for.body_crit_edge:                     ; preds = %for.inc25
  %indvars.iv.next = add i64 %indvars.iv, 1
  %.pre78 = load i8** %xhv_array30.pre, align 8, !tbaa !0
  br label %for.body

if.end28:                                         ; preds = %if.end, %land.lhs.true
  tail call fastcc void @S_hfreeentries(%struct.hv* %hv) #5
  %xnv_nv29 = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 4
  store double 0.000000e+00, double* %xnv_nv29, align 8, !tbaa !5
  %13 = load i8** %xhv_array30.pre, align 8, !tbaa !0
  %tobool31 = icmp eq i8* %13, null
  br i1 %tobool31, label %if.end35, label %if.then32

if.then32:                                        ; preds = %if.end28
  %xhv_max34 = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 2
  %14 = load i64* %xhv_max34, align 8, !tbaa !3
  %add = shl i64 %14, 3
  %mul = add i64 %add, 8
  tail call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 %mul, i32 1, i1 false)
  br label %if.end35

if.end35:                                         ; preds = %if.end28, %if.then32
  %15 = load i32* %sv_flags, align 4, !tbaa !4
  %and37 = and i32 %15, 32768
  %tobool38 = icmp eq i32 %and37, 0
  br i1 %tobool38, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.end35
  %16 = bitcast %struct.hv* %hv to %struct.sv*
  %call40 = tail call i32 @Perl_mg_clear(%struct.sv* %16) #4
  %.pre = load i32* %sv_flags, align 4, !tbaa !4
  br label %if.end41

if.end41:                                         ; preds = %if.end35, %if.then39
  %17 = phi i32 [ %15, %if.end35 ], [ %.pre, %if.then39 ]
  %and45 = and i32 %17, 1879048191
  store i32 %and45, i32* %sv_flags, align 4, !tbaa !4
  br label %reset

reset:                                            ; preds = %for.cond.preheader, %for.inc25, %if.end41
  %18 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %xhv_eiter = getelementptr inbounds %struct.xpvhv* %18, i64 0, i32 8
  store %struct.he* null, %struct.he** %xhv_eiter, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %entry, %reset
  ret void
}

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @Perl_hv_iterkeysv(%struct.he* nocapture %entry1) #0 {
entry:
  %utf8_len = alloca i64, align 8
  %hent_hek = getelementptr inbounds %struct.he* %entry1, i64 0, i32 1
  %0 = load %struct.hek** %hent_hek, align 8, !tbaa !0
  %hek_len = getelementptr inbounds %struct.hek* %0, i64 0, i32 1
  %1 = load i32* %hek_len, align 4, !tbaa !4
  %cmp = icmp eq i32 %1, -2
  %arraydecay52 = getelementptr inbounds %struct.hek* %0, i64 0, i32 2, i64 0
  br i1 %cmp, label %if.end49, label %if.then

if.then:                                          ; preds = %entry
  %idx.ext = sext i32 %1 to i64
  %add.ptr.sum = add i64 %idx.ext, 1
  %add.ptr4 = getelementptr inbounds %struct.hek* %0, i64 0, i32 2, i64 %add.ptr.sum
  %2 = load i8* %add.ptr4, align 1, !tbaa !1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 2
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  store i64 %idx.ext, i64* %utf8_len, align 8, !tbaa !3
  %call = call i8* @Perl_bytes_to_utf8(i8* %arraydecay52, i64* %utf8_len) #4
  %3 = load i64* %utf8_len, align 8, !tbaa !3
  %call10 = call %struct.sv* @Perl_newSVpvn(i8* %call, i64 %3) #4
  %sv_flags = getelementptr inbounds %struct.sv* %call10, i64 0, i32 2
  %4 = load i32* %sv_flags, align 4, !tbaa !4
  %or = or i32 %4, 536870912
  store i32 %or, i32* %sv_flags, align 4, !tbaa !4
  call void @Perl_safesysfree(i8* %call) #4
  br label %if.end47

if.else:                                          ; preds = %if.then
  %and11 = and i32 %conv, 4
  %tobool12 = icmp eq i32 %and11, 0
  br i1 %tobool12, label %if.else31, label %if.then13

if.then13:                                        ; preds = %if.else
  %call18 = call %struct.sv* @Perl_newSVpvn(i8* %arraydecay52, i64 %idx.ext) #4
  %5 = load i32* %hek_len, align 4, !tbaa !4
  %idx.ext22 = sext i32 %5 to i64
  %add.ptr23.sum = add i64 %idx.ext22, 1
  %add.ptr24 = getelementptr inbounds %struct.hek* %0, i64 0, i32 2, i64 %add.ptr23.sum
  %6 = load i8* %add.ptr24, align 1, !tbaa !1
  %and26 = and i8 %6, 1
  %tobool27 = icmp eq i8 %and26, 0
  br i1 %tobool27, label %if.end47, label %if.then28

if.then28:                                        ; preds = %if.then13
  %sv_flags29 = getelementptr inbounds %struct.sv* %call18, i64 0, i32 2
  %7 = load i32* %sv_flags29, align 4, !tbaa !4
  %or30 = or i32 %7, 536870912
  store i32 %or30, i32* %sv_flags29, align 4, !tbaa !4
  br label %if.end47

if.else31:                                        ; preds = %if.else
  %and41 = and i32 %conv, 1
  %tobool42 = icmp ne i32 %and41, 0
  %sub = sub nsw i32 0, %1
  %cond = select i1 %tobool42, i32 %sub, i32 %1
  %hek_hash = getelementptr inbounds %struct.hek* %0, i64 0, i32 0
  %8 = load i32* %hek_hash, align 4, !tbaa !4
  %call45 = call %struct.sv* @Perl_newSVpvn_share(i8* %arraydecay52, i32 %cond, i32 %8) #4
  br label %if.end47

if.end47:                                         ; preds = %if.then13, %if.else31, %if.then28, %if.then5
  %sv.0 = phi %struct.sv* [ %call10, %if.then5 ], [ %call18, %if.then28 ], [ %call18, %if.then13 ], [ %call45, %if.else31 ]
  %call48 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %sv.0) #4
  br label %return

if.end49:                                         ; preds = %entry
  %9 = bitcast i8* %arraydecay52 to %struct.sv**
  %10 = load %struct.sv** %9, align 8, !tbaa !0
  %call53 = call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %10) #4
  br label %return

return:                                           ; preds = %if.end49, %if.end47
  %retval.0 = phi %struct.sv* [ %call48, %if.end47 ], [ %call53, %if.end49 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @S_hfreeentries(%struct.hv* %hv) #0 {
entry:
  %tobool = icmp eq %struct.hv* %hv, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sv_any = getelementptr inbounds %struct.hv* %hv, i64 0, i32 0
  %0 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %1 = bitcast %struct.xpvhv* %0 to %struct.he***
  %2 = load %struct.he*** %1, align 8, !tbaa !0
  %tobool2 = icmp eq %struct.he** %2, null
  br i1 %tobool2, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %xhv_max = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 2
  %3 = load i64* %xhv_max, align 8, !tbaa !3
  %conv = trunc i64 %3 to i32
  %4 = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 0
  store i8* null, i8** %4, align 8, !tbaa !0
  %5 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %xhv_fill = getelementptr inbounds %struct.xpvhv* %5, i64 0, i32 1
  store i64 0, i64* %xhv_fill, align 8, !tbaa !3
  %xhv_keys = getelementptr inbounds %struct.xpvhv* %5, i64 0, i32 3
  store i64 0, i64* %xhv_keys, align 8, !tbaa !3
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %if.end19, %if.end4
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end19 ], [ 0, %if.end4 ]
  %entry1.0.ph.in = phi %struct.he** [ %arrayidx20, %if.end19 ], [ %2, %if.end4 ]
  %entry1.0.ph = load %struct.he** %entry1.0.ph.in, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %if.end14
  %entry1.0 = phi %struct.he* [ %6, %if.end14 ], [ %entry1.0.ph, %for.cond.outer ]
  %tobool12 = icmp eq %struct.he* %entry1.0, null
  br i1 %tobool12, label %if.then16, label %if.end14

if.end14:                                         ; preds = %for.cond
  %hent_next = getelementptr inbounds %struct.he* %entry1.0, i64 0, i32 0
  %6 = load %struct.he** %hent_next, align 8, !tbaa !0
  tail call void @Perl_hv_free_ent(%struct.hv* %hv, %struct.he* %entry1.0) #5
  %tobool15 = icmp eq %struct.he* %6, null
  br i1 %tobool15, label %if.then16, label %for.cond

if.then16:                                        ; preds = %for.cond, %if.end14
  %indvars.iv.next = add i64 %indvars.iv, 1
  %7 = trunc i64 %indvars.iv to i32
  %cmp = icmp slt i32 %7, %conv
  br i1 %cmp, label %if.end19, label %for.end

if.end19:                                         ; preds = %if.then16
  %arrayidx20 = getelementptr inbounds %struct.he** %2, i64 %indvars.iv.next
  br label %for.cond.outer

for.end:                                          ; preds = %if.then16
  %8 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %9 = getelementptr inbounds %struct.xpvhv* %8, i64 0, i32 0
  %.c = bitcast %struct.he** %2 to i8*
  store i8* %.c, i8** %9, align 8, !tbaa !0
  %call = tail call i32 @Perl_hv_iterinit(%struct.hv* %hv) #5
  br label %return

return:                                           ; preds = %if.end, %entry, %for.end
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_mg_clear(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_hv_clear_placeholders(%struct.hv* nocapture %hv) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.hv* %hv, i64 0, i32 0
  %0 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 4
  %1 = load double* %xnv_nv, align 8, !tbaa !5
  %conv = fptosi double %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %do.end, label %do.body.preheader

do.body.preheader:                                ; preds = %entry
  %xhv_max = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 2
  %2 = load i64* %xhv_max, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.hv* %hv, i64 0, i32 2
  %sext = shl i64 %2, 32
  %3 = ashr exact i64 %sext, 32
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %4 = phi %struct.xpvhv* [ %0, %do.body.preheader ], [ %.pre, %do.cond.do.body_crit_edge ]
  %indvars.iv = phi i64 [ %3, %do.body.preheader ], [ %indvars.iv.next, %do.cond.do.body_crit_edge ]
  %items.0 = phi i32 [ %conv, %do.body.preheader ], [ %items.3, %do.cond.do.body_crit_edge ]
  %5 = bitcast %struct.xpvhv* %4 to %struct.he***
  %6 = load %struct.he*** %5, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.he** %6, i64 %indvars.iv
  %7 = load %struct.he** %arrayidx, align 8, !tbaa !0
  %tobool = icmp eq %struct.he* %7, null
  br i1 %tobool, label %do.cond, label %for.body

for.body:                                         ; preds = %do.body, %for.inc
  %items.1 = phi i32 [ %items.2, %for.inc ], [ %items.0, %do.body ]
  %first.0 = phi i32 [ %first.1, %for.inc ], [ 1, %do.body ]
  %oentry.0 = phi %struct.he** [ %oentry.1, %for.inc ], [ %arrayidx, %do.body ]
  %entry5.0 = phi %struct.he* [ %18, %for.inc ], [ %7, %do.body ]
  %hent_val = getelementptr inbounds %struct.he* %entry5.0, i64 0, i32 2
  %8 = load %struct.sv** %hent_val, align 8, !tbaa !0
  %cmp9 = icmp eq %struct.sv* %8, @PL_sv_placeholder
  %hent_next = getelementptr inbounds %struct.he* %entry5.0, i64 0, i32 0
  br i1 %cmp9, label %if.then11, label %for.inc

if.then11:                                        ; preds = %for.body
  %9 = load %struct.he** %hent_next, align 8, !tbaa !0
  store %struct.he* %9, %struct.he** %oentry.0, align 8, !tbaa !0
  %tobool12 = icmp ne i32 %first.0, 0
  %tobool13 = icmp eq %struct.he* %9, null
  %or.cond = and i1 %tobool12, %tobool13
  %10 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  br i1 %or.cond, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.then11
  %xhv_fill = getelementptr inbounds %struct.xpvhv* %10, i64 0, i32 1
  %11 = load i64* %xhv_fill, align 8, !tbaa !3
  %dec = add i64 %11, -1
  store i64 %dec, i64* %xhv_fill, align 8, !tbaa !3
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.then14
  %xhv_eiter = getelementptr inbounds %struct.xpvhv* %10, i64 0, i32 8
  %12 = load %struct.he** %xhv_eiter, align 8, !tbaa !0
  %tobool18 = icmp eq %struct.he* %12, null
  br i1 %tobool18, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end16
  %13 = load i32* %sv_flags, align 4, !tbaa !4
  %or = or i32 %13, 1073741824
  store i32 %or, i32* %sv_flags, align 4, !tbaa !4
  br label %if.end20

if.else:                                          ; preds = %if.end16
  tail call void @Perl_hv_free_ent(%struct.hv* %hv, %struct.he* %entry5.0) #5
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then19
  %dec21 = add nsw i32 %items.1, -1
  %cmp22 = icmp eq i32 %dec21, 0
  br i1 %cmp22, label %if.then24, label %for.inc

if.then24:                                        ; preds = %if.end20
  %14 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %xnv_nv26 = getelementptr inbounds %struct.xpvhv* %14, i64 0, i32 4
  %15 = load double* %xnv_nv26, align 8, !tbaa !5
  %conv27 = fptosi double %15 to i64
  %xhv_keys = getelementptr inbounds %struct.xpvhv* %14, i64 0, i32 3
  %16 = load i64* %xhv_keys, align 8, !tbaa !3
  %sub = sub nsw i64 %16, %conv27
  store i64 %sub, i64* %xhv_keys, align 8, !tbaa !3
  %cmp35 = icmp eq i64 %sub, %conv27
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.then24
  %17 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %17, 2147483647
  store i32 %and, i32* %sv_flags, align 4, !tbaa !4
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.then24
  store double 0.000000e+00, double* %xnv_nv26, align 8, !tbaa !5
  br label %do.end

for.inc:                                          ; preds = %if.end20, %for.body
  %items.2 = phi i32 [ %items.1, %for.body ], [ %dec21, %if.end20 ]
  %first.1 = phi i32 [ 0, %for.body ], [ %first.0, %if.end20 ]
  %oentry.1 = phi %struct.he** [ %hent_next, %for.body ], [ %oentry.0, %if.end20 ]
  %18 = load %struct.he** %oentry.1, align 8, !tbaa !0
  %tobool8.old = icmp eq %struct.he* %18, null
  br i1 %tobool8.old, label %do.cond, label %for.body

do.cond:                                          ; preds = %for.inc, %do.body
  %items.3 = phi i32 [ %items.0, %do.body ], [ %items.2, %for.inc ]
  %19 = trunc i64 %indvars.iv to i32
  %cmp47 = icmp sgt i32 %19, 0
  br i1 %cmp47, label %do.cond.do.body_crit_edge, label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  %indvars.iv.next = add i64 %indvars.iv, -1
  %.pre = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  br label %do.body

do.end:                                           ; preds = %do.cond, %entry, %if.end39
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_hv_undef(%struct.hv* %hv) #0 {
entry:
  %tobool = icmp eq %struct.hv* %hv, null
  br i1 %tobool, label %if.end21, label %if.end

if.end:                                           ; preds = %entry
  %sv_any = getelementptr inbounds %struct.hv* %hv, i64 0, i32 0
  %0 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  tail call fastcc void @S_hfreeentries(%struct.hv* %hv) #5
  %xhv_array = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 0
  %1 = load i8** %xhv_array, align 8, !tbaa !0
  tail call void @Perl_safesysfree(i8* %1) #4
  %2 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %xhv_name = getelementptr inbounds %struct.xpvhv* %2, i64 0, i32 10
  %3 = load i8** %xhv_name, align 8, !tbaa !0
  %tobool2 = icmp eq i8* %3, null
  br i1 %tobool2, label %if.end16, label %if.then3

if.then3:                                         ; preds = %if.end
  %4 = load %struct.hv** @PL_stashcache, align 8, !tbaa !0
  %tobool4 = icmp eq %struct.hv* %4, null
  br i1 %tobool4, label %if.end11, label %if.then5

if.then5:                                         ; preds = %if.then3
  %call = tail call i64 @strlen(i8* %3) #4
  %conv = trunc i64 %call to i32
  %cmp.i = icmp slt i32 %conv, 0
  %sub.i = sub i64 0, %call
  %klen.0.in.i = select i1 %cmp.i, i64 %sub.i, i64 %call
  %klen_i32.lobit.i = lshr i32 %conv, 31
  %sext = shl i64 %klen.0.in.i, 32
  %klen.0.i = ashr exact i64 %sext, 32
  %call.i = tail call fastcc %struct.sv* @S_hv_delete_common(%struct.hv* %4, %struct.sv* null, i8* %3, i64 %klen.0.i, i32 %klen_i32.lobit.i, i32 2, i32 0) #4
  %.pre = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %xhv_name13.phi.trans.insert = getelementptr inbounds %struct.xpvhv* %.pre, i64 0, i32 10
  %.pre34 = load i8** %xhv_name13.phi.trans.insert, align 8, !tbaa !0
  br label %if.end11

if.end11:                                         ; preds = %if.then3, %if.then5
  %5 = phi i8* [ %3, %if.then3 ], [ %.pre34, %if.then5 ]
  tail call void @Perl_safesysfree(i8* %5) #4
  %6 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %xhv_name15 = getelementptr inbounds %struct.xpvhv* %6, i64 0, i32 10
  store i8* null, i8** %xhv_name15, align 8, !tbaa !0
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.end11
  %xhv_max = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 2
  store i64 7, i64* %xhv_max, align 8, !tbaa !3
  store i8* null, i8** %xhv_array, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 4
  store double 0.000000e+00, double* %xnv_nv, align 8, !tbaa !5
  %sv_flags = getelementptr inbounds %struct.hv* %hv, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %7, 32768
  %tobool18 = icmp eq i32 %and, 0
  br i1 %tobool18, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end16
  %8 = bitcast %struct.hv* %hv to %struct.sv*
  %call20 = tail call i32 @Perl_mg_clear(%struct.sv* %8) #4
  br label %if.end21

if.end21:                                         ; preds = %if.end16, %entry, %if.then19
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define %struct.he* @Perl_hv_iternext(%struct.hv* %hv) #0 {
entry:
  %call = tail call %struct.he* @Perl_hv_iternext_flags(%struct.hv* %hv, i32 0) #5
  ret %struct.he* %call
}

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

; Function Attrs: optsize
declare i32 @Perl_magic_nextpack(%struct.sv*, %struct.magic*, %struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define i8* @Perl_hv_iterkey(%struct.he* nocapture %entry1, i32* nocapture %retlen) #0 {
entry:
  %len = alloca i64, align 8
  %hent_hek = getelementptr inbounds %struct.he* %entry1, i64 0, i32 1
  %0 = load %struct.hek** %hent_hek, align 8, !tbaa !0
  %hek_len = getelementptr inbounds %struct.hek* %0, i64 0, i32 1
  %1 = load i32* %hek_len, align 4, !tbaa !4
  %cmp = icmp eq i32 %1, -2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.hek* %0, i64 0, i32 2, i64 0
  %2 = bitcast i8* %arraydecay to %struct.sv**
  %3 = load %struct.sv** %2, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %3, i64 0, i32 2
  %4 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %4, 262144
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %sv_any = getelementptr inbounds %struct.sv* %3, i64 0, i32 0
  %5 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %5, i64 8
  %6 = bitcast i8* %xpv_cur to i64*
  %7 = load i64* %6, align 8, !tbaa !3
  store i64 %7, i64* %len, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %5 to i8**
  %8 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %3, i64* %len, i32 2) #4
  %.pre = load i64* %len, align 8, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %9 = phi i64 [ %7, %cond.true ], [ %.pre, %cond.false ]
  %cond = phi i8* [ %8, %cond.true ], [ %call, %cond.false ]
  %conv = trunc i64 %9 to i32
  store i32 %conv, i32* %retlen, align 4, !tbaa !4
  br label %return

if.else:                                          ; preds = %entry
  store i32 %1, i32* %retlen, align 4, !tbaa !4
  %arraydecay18 = getelementptr inbounds %struct.hek* %0, i64 0, i32 2, i64 0
  br label %return

return:                                           ; preds = %if.else, %cond.end
  %retval.0 = phi i8* [ %cond, %cond.end ], [ %arraydecay18, %if.else ]
  ret i8* %retval.0
}

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: optsize
declare i8* @Perl_bytes_to_utf8(i8*, i64*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvn_share(i8*, i32, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_mortalcopy(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @Perl_hv_iterval(%struct.hv* %hv, %struct.he* nocapture %entry1) #0 {
entry:
  %sv_flags = getelementptr inbounds %struct.hv* %hv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %0, 32768
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.hv* %hv to %struct.sv*
  %call = tail call %struct.magic* @Perl_mg_find(%struct.sv* %1, i32 80) #4
  %tobool2 = icmp eq %struct.magic* %call, null
  br i1 %tobool2, label %if.end15, label %if.then3

if.then3:                                         ; preds = %if.then
  %call4 = tail call %struct.sv* @Perl_sv_newmortal() #4
  %hent_hek = getelementptr inbounds %struct.he* %entry1, i64 0, i32 1
  %2 = load %struct.hek** %hent_hek, align 8, !tbaa !0
  %hek_len = getelementptr inbounds %struct.hek* %2, i64 0, i32 1
  %3 = load i32* %hek_len, align 4, !tbaa !4
  %cmp = icmp eq i32 %3, -2
  %arraydecay = getelementptr inbounds %struct.hek* %2, i64 0, i32 2, i64 0
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then3
  %4 = bitcast i8* %arraydecay to %struct.sv**
  %5 = load %struct.sv** %4, align 8, !tbaa !0
  %6 = bitcast %struct.sv* %5 to i8*
  %call7 = tail call i32 @Perl_mg_copy(%struct.sv* %1, %struct.sv* %call4, i8* %6, i32 -2) #4
  br label %return

if.else:                                          ; preds = %if.then3
  %call13 = tail call i32 @Perl_mg_copy(%struct.sv* %1, %struct.sv* %call4, i8* %arraydecay, i32 %3) #4
  br label %return

if.end15:                                         ; preds = %if.then, %entry
  %hent_val = getelementptr inbounds %struct.he* %entry1, i64 0, i32 2
  %7 = load %struct.sv** %hent_val, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.then5, %if.else, %if.end15
  %retval.0 = phi %struct.sv* [ %7, %if.end15 ], [ %call4, %if.else ], [ %call4, %if.then5 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: optsize
declare i32 @Perl_mg_copy(%struct.sv*, %struct.sv*, i8*, i32) #1

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @Perl_hv_iternextsv(%struct.hv* %hv, i8** nocapture %key, i32* nocapture %retlen) #0 {
entry:
  %call = tail call %struct.he* @Perl_hv_iternext_flags(%struct.hv* %hv, i32 0) #5
  %cmp = icmp eq %struct.he* %call, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @Perl_hv_iterkey(%struct.he* %call, i32* %retlen) #5
  store i8* %call1, i8** %key, align 8, !tbaa !0
  %call2 = tail call %struct.sv* @Perl_hv_iterval(%struct.hv* %hv, %struct.he* %call) #5
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.sv* [ %call2, %if.end ], [ null, %entry ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_hv_magic(%struct.hv* %hv, %struct.gv* %gv, i32 %how) #0 {
entry:
  %0 = bitcast %struct.hv* %hv to %struct.sv*
  %1 = bitcast %struct.gv* %gv to %struct.sv*
  tail call void @Perl_sv_magic(%struct.sv* %0, %struct.sv* %1, i32 %how, i8* null, i32 0) #4
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_magic(%struct.sv*, %struct.sv*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_unsharepvn(i8* %str, i32 %len, i32 %hash) #0 {
entry:
  tail call fastcc void @S_unshare_hek_or_pvn(%struct.hek* null, i8* %str, i32 %len, i32 %hash) #5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @S_unshare_hek_or_pvn(%struct.hek* %hek, i8* %str, i32 %len, i32 %hash) #0 {
entry:
  %is_utf8 = alloca i8, align 1
  %tmplen = alloca i64, align 8
  store i8 0, i8* %is_utf8, align 1, !tbaa !1
  %tobool = icmp ne %struct.hek* %hek, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %hek_hash = getelementptr inbounds %struct.hek* %hek, i64 0, i32 0
  %0 = load i32* %hek_hash, align 4, !tbaa !4
  br label %if.end11

if.else:                                          ; preds = %entry
  %cmp = icmp slt i32 %len, 0
  br i1 %cmp, label %if.then2, label %if.end11

if.then2:                                         ; preds = %if.else
  %sub = sub nsw i32 0, %len
  %conv = sext i32 %sub to i64
  store i64 %conv, i64* %tmplen, align 8, !tbaa !3
  store i8 1, i8* %is_utf8, align 1, !tbaa !1
  %call = call i8* @Perl_bytes_from_utf8(i8* %str, i64* %tmplen, i8* %is_utf8) #4
  %1 = load i64* %tmplen, align 8, !tbaa !3
  %conv3 = trunc i64 %1 to i32
  %2 = load i8* %is_utf8, align 1, !tbaa !1
  %not.tobool4 = icmp ne i8 %2, 0
  %. = zext i1 %not.tobool4 to i32
  %cmp6 = icmp eq i8* %call, %str
  %or = or i32 %., 258
  %..or = select i1 %cmp6, i32 %., i32 %or
  br label %if.end11

if.end11:                                         ; preds = %if.then2, %if.else, %if.then
  %hash.addr.0 = phi i32 [ %0, %if.then ], [ %hash, %if.else ], [ %hash, %if.then2 ]
  %k_flags.1 = phi i32 [ 0, %if.then ], [ 0, %if.else ], [ %..or, %if.then2 ]
  %len.addr.0 = phi i32 [ %len, %if.then ], [ %len, %if.else ], [ %conv3, %if.then2 ]
  %str.addr.0 = phi i8* [ %str, %if.then ], [ %str, %if.else ], [ %call, %if.then2 ]
  %3 = load %struct.hv** @PL_strtab, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.hv* %3, i64 0, i32 0
  %4 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %xhv_max = getelementptr inbounds %struct.xpvhv* %4, i64 0, i32 2
  %5 = load i64* %xhv_max, align 8, !tbaa !3
  %conv12 = trunc i64 %5 to i32
  %and = and i32 %conv12, %hash.addr.0
  %idxprom = zext i32 %and to i64
  %xhv_array = getelementptr inbounds %struct.xpvhv* %4, i64 0, i32 0
  %6 = load i8** %xhv_array, align 8, !tbaa !0
  %7 = bitcast i8* %6 to %struct.he**
  %arrayidx = getelementptr inbounds %struct.he** %7, i64 %idxprom
  %entry1.0151 = load %struct.he** %arrayidx, align 8
  %tobool15152 = icmp eq %struct.he* %entry1.0151, null
  br i1 %tobool, label %for.cond.preheader, label %for.cond22.preheader

for.cond22.preheader:                             ; preds = %if.end11
  br i1 %tobool15152, label %land.lhs.true78, label %for.body24.lr.ph

for.body24.lr.ph:                                 ; preds = %for.cond22.preheader
  %8 = trunc i32 %k_flags.1 to i8
  %conv42 = sext i32 %len.addr.0 to i64
  br label %for.body24

for.cond.preheader:                               ; preds = %if.end11
  br i1 %tobool15152, label %land.lhs.true78, label %for.body

for.cond:                                         ; preds = %for.body
  %hent_next = getelementptr inbounds %struct.he* %entry1.0153, i64 0, i32 0
  %entry1.0 = load %struct.he** %hent_next, align 8
  %tobool15 = icmp eq %struct.he* %entry1.0, null
  br i1 %tobool15, label %land.lhs.true78, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %entry1.0153 = phi %struct.he* [ %entry1.0, %for.cond ], [ %entry1.0151, %for.cond.preheader ]
  %hent_hek = getelementptr inbounds %struct.he* %entry1.0153, i64 0, i32 1
  %9 = load %struct.hek** %hent_hek, align 8, !tbaa !0
  %cmp16 = icmp eq %struct.hek* %9, %hek
  br i1 %cmp16, label %if.then63, label %for.cond

for.body24:                                       ; preds = %for.body24.lr.ph, %for.inc58
  %entry1.1159 = phi %struct.he* [ %entry1.0151, %for.body24.lr.ph ], [ %entry1.1, %for.inc58 ]
  %hent_hek25 = getelementptr inbounds %struct.he* %entry1.1159, i64 0, i32 1
  %10 = load %struct.hek** %hent_hek25, align 8, !tbaa !0
  %hek_hash26 = getelementptr inbounds %struct.hek* %10, i64 0, i32 0
  %11 = load i32* %hek_hash26, align 4, !tbaa !4
  %cmp27 = icmp eq i32 %11, %hash.addr.0
  br i1 %cmp27, label %if.end30, label %for.inc58

if.end30:                                         ; preds = %for.body24
  %hek_len = getelementptr inbounds %struct.hek* %10, i64 0, i32 1
  %12 = load i32* %hek_len, align 4, !tbaa !4
  %cmp32 = icmp eq i32 %12, %len.addr.0
  br i1 %cmp32, label %if.end35, label %for.inc58

if.end35:                                         ; preds = %if.end30
  %arraydecay = getelementptr inbounds %struct.hek* %10, i64 0, i32 2, i64 0
  %cmp37 = icmp eq i8* %arraydecay, %str.addr.0
  br i1 %cmp37, label %if.end46, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end35
  %call43 = call i32 @memcmp(i8* %arraydecay, i8* %str.addr.0, i64 %conv42) #4
  %tobool44 = icmp eq i32 %call43, 0
  br i1 %tobool44, label %if.end46, label %for.inc58

if.end46:                                         ; preds = %land.lhs.true, %if.end35
  %add.ptr.sum = add i64 %conv42, 1
  %add.ptr52 = getelementptr inbounds %struct.hek* %10, i64 0, i32 2, i64 %add.ptr.sum
  %13 = load i8* %add.ptr52, align 1, !tbaa !1
  %cmp54 = icmp eq i8 %13, %8
  br i1 %cmp54, label %if.then63, label %for.inc58

for.inc58:                                        ; preds = %land.lhs.true, %if.end46, %if.end30, %for.body24
  %hent_next59 = getelementptr inbounds %struct.he* %entry1.1159, i64 0, i32 0
  %entry1.1 = load %struct.he** %hent_next59, align 8
  %tobool23 = icmp eq %struct.he* %entry1.1, null
  br i1 %tobool23, label %land.lhs.true78, label %for.body24

if.then63:                                        ; preds = %if.end46, %for.body
  %entry1.2.ph = phi %struct.he* [ %entry1.0153, %for.body ], [ %entry1.1159, %if.end46 ]
  %hent_val = getelementptr inbounds %struct.he* %entry1.2.ph, i64 0, i32 2
  %14 = load %struct.sv** %hent_val, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.sv* %14, i64 -1
  store %struct.sv* %incdec.ptr, %struct.sv** %hent_val, align 8, !tbaa !0
  br label %if.end102

land.lhs.true78:                                  ; preds = %for.cond22.preheader, %for.inc58, %for.cond.preheader, %for.cond
  %15 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %15, i64 0, i32 14
  %16 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp79 = icmp eq %struct.sv* %16, null
  br i1 %cmp79, label %if.then95, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true78
  %17 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings81 = getelementptr inbounds %struct.cop* %17, i64 0, i32 14
  %18 = load %struct.sv** %cop_warnings81, align 8, !tbaa !0
  %cmp82 = icmp eq %struct.sv* %18, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp82, label %if.then95, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %lor.lhs.false
  %19 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings85 = getelementptr inbounds %struct.cop* %19, i64 0, i32 14
  %20 = load %struct.sv** %cop_warnings85, align 8, !tbaa !0
  %cmp86 = icmp eq %struct.sv* %20, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp86, label %if.end102, label %land.lhs.true88

land.lhs.true88:                                  ; preds = %lor.lhs.false84
  %21 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings89 = getelementptr inbounds %struct.cop* %21, i64 0, i32 14
  %22 = load %struct.sv** %cop_warnings89, align 8, !tbaa !0
  %sv_any90 = getelementptr inbounds %struct.sv* %22, i64 0, i32 0
  %23 = load i8** %sv_any90, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %23 to i8**
  %24 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx91 = getelementptr inbounds i8* %24, i64 6
  %25 = load i8* %arrayidx91, align 1, !tbaa !1
  %and93 = and i8 %25, 1
  %tobool94 = icmp eq i8 %and93, 0
  br i1 %tobool94, label %if.end102, label %if.then95

if.then95:                                        ; preds = %land.lhs.true88, %lor.lhs.false, %land.lhs.true78
  %arraydecay98 = getelementptr inbounds %struct.hek* %hek, i64 0, i32 2, i64 0
  %cond = select i1 %tobool, i8* %arraydecay98, i8* %str.addr.0
  %and99 = and i32 %k_flags.1, 1
  %tobool100 = icmp ne i32 %and99, 0
  %cond101 = select i1 %tobool100, i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str5, i64 0, i64 0)
  call void (i32, i8*, ...)* @Perl_warner(i32 24, i8* getelementptr inbounds ([50 x i8]* @.str3, i64 0, i64 0), i8* %cond, i8* %cond101) #4
  br label %if.end102

if.end102:                                        ; preds = %if.then63, %land.lhs.true88, %lor.lhs.false84, %if.then95
  %and103 = and i32 %k_flags.1, 256
  %tobool104 = icmp eq i32 %and103, 0
  br i1 %tobool104, label %if.end106, label %if.then105

if.then105:                                       ; preds = %if.end102
  call void @Perl_safesysfree(i8* %str.addr.0) #4
  br label %if.end106

if.end106:                                        ; preds = %if.end102, %if.then105
  ret void
}

; Function Attrs: nounwind optsize uwtable
define %struct.hek* @Perl_share_hek(i8* %str, i32 %len, i32 %hash) #0 {
entry:
  %is_utf8 = alloca i8, align 1
  %tmplen = alloca i64, align 8
  store i8 0, i8* %is_utf8, align 1, !tbaa !1
  %cmp = icmp slt i32 %len, 0
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %sub = sub nsw i32 0, %len
  %conv = sext i32 %sub to i64
  store i64 %conv, i64* %tmplen, align 8, !tbaa !3
  store i8 1, i8* %is_utf8, align 1, !tbaa !1
  %call = call i8* @Perl_bytes_from_utf8(i8* %str, i64* %tmplen, i8* %is_utf8) #4
  %0 = load i64* %tmplen, align 8, !tbaa !3
  %conv1 = trunc i64 %0 to i32
  %1 = load i8* %is_utf8, align 1, !tbaa !1
  %not.tobool = icmp ne i8 %1, 0
  %. = zext i1 %not.tobool to i32
  %cmp3 = icmp eq i8* %call, %str
  %or = or i32 %., 258
  %..or = select i1 %cmp3, i32 %., i32 %or
  br label %if.end7

if.end7:                                          ; preds = %if.then, %entry
  %len.addr.0 = phi i32 [ %len, %entry ], [ %conv1, %if.then ]
  %flags.1 = phi i32 [ 0, %entry ], [ %..or, %if.then ]
  %str.addr.0 = phi i8* [ %str, %entry ], [ %call, %if.then ]
  %call8 = call fastcc %struct.hek* @S_share_hek_flags(i8* %str.addr.0, i32 %len.addr.0, i32 %hash, i32 %flags.1) #5
  ret %struct.hek* %call8
}

; Function Attrs: optsize
declare i8* @Perl_bytes_from_utf8(i8*, i64*, i8*) #1

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @S_hsplit(%struct.hv* %hv) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.hv* %hv, i64 0, i32 0
  %0 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %xhv_max = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 2
  %1 = load i64* %xhv_max, align 8, !tbaa !3
  %conv = trunc i64 %1 to i32
  %add = add nsw i32 %conv, 1
  %mul = shl nsw i32 %add, 1
  %xhv_array = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 0
  %xnv_nv = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 4
  %2 = load double* %xnv_nv, align 8, !tbaa !5
  %tobool = fcmp une double %2, 0.000000e+00
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.hv* %hv, i64 0, i32 2
  %3 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %3, 8388608
  %tobool3 = icmp eq i32 %and, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call void @Perl_hv_clear_placeholders(%struct.hv* %hv) #5
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %if.then, %entry
  store i8 1, i8* @PL_nomemok, align 1, !tbaa !1
  %cmp = icmp slt i32 %mul, 64
  %conv5 = sext i32 %mul to i64
  %mul6 = shl nsw i64 %conv5, 3
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end
  %mul9 = shl nsw i64 %conv5, 4
  %sub = add i64 %mul9, -16
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.false
  %cond = phi i64 [ %sub, %cond.false ], [ %mul6, %if.end ]
  %call = tail call i8* @Perl_safesysmalloc(i64 %cond) #4
  %tobool11 = icmp eq i8* %call, null
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %cond.end
  store i8 0, i8* @PL_nomemok, align 1, !tbaa !1
  br label %return

if.end13:                                         ; preds = %cond.end
  %4 = load i8** %xhv_array, align 8, !tbaa !0
  %conv15 = sext i32 %add to i64
  %mul16 = shl nsw i64 %conv15, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call, i8* %4, i64 %mul16, i32 1, i1 false)
  %cmp18 = icmp sgt i32 %conv, 62
  %5 = load i8** %xhv_array, align 8, !tbaa !0
  br i1 %cmp18, label %if.then20, label %if.else43

if.then20:                                        ; preds = %if.end13
  %cmp22 = icmp slt i32 %add, 64
  br i1 %cmp22, label %cond.end32, label %cond.false27

cond.false27:                                     ; preds = %if.then20
  %mul30 = shl nsw i64 %conv15, 4
  %sub31 = add i64 %mul30, -16
  br label %cond.end32

cond.end32:                                       ; preds = %if.then20, %cond.false27
  %cond33 = phi i64 [ %sub31, %cond.false27 ], [ %mul16, %if.then20 ]
  %conv34 = trunc i64 %cond33 to i32
  %6 = load i32* @PL_nice_chunk_size, align 4, !tbaa !4
  %cmp35 = icmp ugt i32 %conv34, %6
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %cond.end32
  %7 = load i8** @PL_nice_chunk, align 8, !tbaa !0
  %tobool38 = icmp eq i8* %7, null
  br i1 %tobool38, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.then37
  tail call void @Perl_safesysfree(i8* %7) #4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.then39
  store i8* %5, i8** @PL_nice_chunk, align 8, !tbaa !0
  store i32 %conv34, i32* @PL_nice_chunk_size, align 4, !tbaa !4
  br label %if.end45

if.else:                                          ; preds = %cond.end32
  tail call void @Perl_safesysfree(i8* %5) #4
  br label %if.end45

if.else43:                                        ; preds = %if.end13
  tail call void @Perl_safesysfree(i8* %5) #4
  br label %if.end45

if.end45:                                         ; preds = %if.end40, %if.else, %if.else43
  store i8 0, i8* @PL_nomemok, align 1, !tbaa !1
  %arrayidx = getelementptr inbounds i8* %call, i64 %mul16
  tail call void @llvm.memset.p0i8.i64(i8* %arrayidx, i8 0, i64 %mul16, i32 1, i1 false)
  %dec = add nsw i32 %mul, -1
  %conv52 = sext i32 %dec to i64
  store i64 %conv52, i64* %xhv_max, align 8, !tbaa !3
  store i8* %call, i8** %xhv_array, align 8, !tbaa !0
  %cmp55336 = icmp sgt i32 %conv, -1
  br i1 %cmp55336, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %if.end45
  %8 = bitcast i8* %call to %struct.he**
  %xhv_fill78 = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc89
  %i.0339 = phi i32 [ 0, %for.body.lr.ph ], [ %inc90, %for.inc89 ]
  %aep.0338 = phi %struct.he** [ %8, %for.body.lr.ph ], [ %incdec.ptr, %for.inc89 ]
  %longest_chain.0337 = phi i32 [ 0, %for.body.lr.ph ], [ %longest_chain.2, %for.inc89 ]
  %9 = load %struct.he** %aep.0338, align 8, !tbaa !0
  %tobool57 = icmp eq %struct.he* %9, null
  br i1 %tobool57, label %for.inc89, label %for.body62.lr.ph

for.body62.lr.ph:                                 ; preds = %for.body
  %add.ptr = getelementptr inbounds %struct.he** %aep.0338, i64 %conv15
  br label %for.body62

for.body62:                                       ; preds = %for.body62.lr.ph, %for.inc
  %right_length.0333 = phi i32 [ 0, %for.body62.lr.ph ], [ %right_length.1, %for.inc ]
  %left_length.0332 = phi i32 [ 0, %for.body62.lr.ph ], [ %left_length.1, %for.inc ]
  %entry1.0331 = phi %struct.he* [ %9, %for.body62.lr.ph ], [ %16, %for.inc ]
  %oentry.0330 = phi %struct.he** [ %aep.0338, %for.body62.lr.ph ], [ %oentry.1, %for.inc ]
  %hent_hek = getelementptr inbounds %struct.he* %entry1.0331, i64 0, i32 1
  %10 = load %struct.hek** %hent_hek, align 8, !tbaa !0
  %hek_hash = getelementptr inbounds %struct.hek* %10, i64 0, i32 0
  %11 = load i32* %hek_hash, align 4, !tbaa !4
  %and63 = and i32 %11, %dec
  %cmp64 = icmp eq i32 %and63, %i.0339
  %hent_next = getelementptr inbounds %struct.he* %entry1.0331, i64 0, i32 0
  br i1 %cmp64, label %if.else72, label %if.then66

if.then66:                                        ; preds = %for.body62
  %12 = load %struct.he** %hent_next, align 8, !tbaa !0
  store %struct.he* %12, %struct.he** %oentry.0330, align 8, !tbaa !0
  %13 = load %struct.he** %add.ptr, align 8, !tbaa !0
  store %struct.he* %13, %struct.he** %hent_next, align 8, !tbaa !0
  %14 = load %struct.he** %add.ptr, align 8, !tbaa !0
  %tobool68 = icmp eq %struct.he* %14, null
  br i1 %tobool68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.then66
  %15 = load i64* %xhv_fill78, align 8, !tbaa !3
  %inc = add i64 %15, 1
  store i64 %inc, i64* %xhv_fill78, align 8, !tbaa !3
  br label %if.end70

if.end70:                                         ; preds = %if.then66, %if.then69
  store %struct.he* %entry1.0331, %struct.he** %add.ptr, align 8, !tbaa !0
  %inc71 = add nsw i32 %right_length.0333, 1
  br label %for.inc

if.else72:                                        ; preds = %for.body62
  %inc74 = add nsw i32 %left_length.0332, 1
  br label %for.inc

for.inc:                                          ; preds = %if.else72, %if.end70
  %oentry.1 = phi %struct.he** [ %oentry.0330, %if.end70 ], [ %hent_next, %if.else72 ]
  %left_length.1 = phi i32 [ %left_length.0332, %if.end70 ], [ %inc74, %if.else72 ]
  %right_length.1 = phi i32 [ %inc71, %if.end70 ], [ %right_length.0333, %if.else72 ]
  %16 = load %struct.he** %oentry.1, align 8, !tbaa !0
  %tobool61 = icmp eq %struct.he* %16, null
  br i1 %tobool61, label %for.end, label %for.body62

for.end:                                          ; preds = %for.inc
  %.pre342 = load %struct.he** %aep.0338, align 8, !tbaa !0
  %tobool76 = icmp eq %struct.he* %.pre342, null
  br i1 %tobool76, label %if.then77, label %if.end80

if.then77:                                        ; preds = %for.end
  %17 = load i64* %xhv_fill78, align 8, !tbaa !3
  %dec79 = add i64 %17, -1
  store i64 %dec79, i64* %xhv_fill78, align 8, !tbaa !3
  br label %if.end80

if.end80:                                         ; preds = %for.end, %if.then77
  %cmp81 = icmp sgt i32 %left_length.1, %longest_chain.0337
  %left_length.0.longest_chain.0 = select i1 %cmp81, i32 %left_length.1, i32 %longest_chain.0337
  %cmp85 = icmp sgt i32 %right_length.1, %left_length.0.longest_chain.0
  %right_length.0.left_length.0.longest_chain.0 = select i1 %cmp85, i32 %right_length.1, i32 %left_length.0.longest_chain.0
  br label %for.inc89

for.inc89:                                        ; preds = %if.end80, %for.body
  %longest_chain.2 = phi i32 [ %longest_chain.0337, %for.body ], [ %right_length.0.left_length.0.longest_chain.0, %if.end80 ]
  %inc90 = add nsw i32 %i.0339, 1
  %incdec.ptr = getelementptr inbounds %struct.he** %aep.0338, i64 1
  %cmp55 = icmp slt i32 %inc90, %add
  br i1 %cmp55, label %for.body, label %for.end91

for.end91:                                        ; preds = %for.inc89
  %cmp92 = icmp slt i32 %longest_chain.2, 15
  br i1 %cmp92, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end91
  %sv_flags94 = getelementptr inbounds %struct.hv* %hv, i64 0, i32 2
  %18 = load i32* %sv_flags94, align 4, !tbaa !4
  %and95 = and i32 %18, 268435456
  %tobool96 = icmp ne i32 %and95, 0
  %19 = load %struct.hv** @PL_strtab, align 8, !tbaa !0
  %cmp99 = icmp eq %struct.hv* %19, %hv
  %or.cond = or i1 %tobool96, %cmp99
  br i1 %or.cond, label %return, label %if.end102

if.end102:                                        ; preds = %lor.lhs.false
  br i1 %cmp, label %cond.end114.thread, label %cond.false123

cond.end114.thread:                               ; preds = %if.end102
  %call117318 = tail call i8* @Perl_safesysmalloc(i64 %mul6) #4
  br label %cond.end128

cond.false123:                                    ; preds = %if.end102
  %mul112 = shl nsw i64 %conv5, 4
  %sub113 = add i64 %mul112, -16
  %call117 = tail call i8* @Perl_safesysmalloc(i64 %sub113) #4
  br label %cond.end128

cond.end128:                                      ; preds = %cond.end114.thread, %cond.false123
  %call117319 = phi i8* [ %call117, %cond.false123 ], [ %call117318, %cond.end114.thread ]
  %cond129 = phi i64 [ %sub113, %cond.false123 ], [ %mul6, %cond.end114.thread ]
  tail call void @llvm.memset.p0i8.i64(i8* %call117319, i8 0, i64 %cond129, i32 1, i1 false)
  %20 = load i32* %sv_flags94, align 4, !tbaa !4
  %xhv_fill133 = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 1
  store i64 0, i64* %xhv_fill133, align 8, !tbaa !3
  %and135 = and i32 %20, -805306369
  %or = or i32 %and135, 268435456
  store i32 %or, i32* %sv_flags94, align 4, !tbaa !4
  br i1 %cmp55336, label %for.body141.lr.ph, label %for.end213

for.body141.lr.ph:                                ; preds = %cond.end128
  %21 = load i8** %xhv_array, align 8, !tbaa !0
  %22 = bitcast i8* %21 to %struct.he**
  %and132 = and i32 %20, 536870912
  %tobool162 = icmp eq i32 %and132, 0
  %23 = bitcast i8* %call117319 to %struct.he**
  br label %for.body141

for.body141:                                      ; preds = %for.body141.lr.ph, %for.inc210
  %i.1328 = phi i32 [ 0, %for.body141.lr.ph ], [ %inc211, %for.inc210 ]
  %aep.1327 = phi %struct.he** [ %22, %for.body141.lr.ph ], [ %incdec.ptr212, %for.inc210 ]
  %24 = load %struct.he** %aep.1327, align 8, !tbaa !0
  %tobool142324 = icmp eq %struct.he* %24, null
  br i1 %tobool142324, label %for.inc210, label %while.body

while.body:                                       ; preds = %for.body141, %if.end207
  %entry1.1325 = phi %struct.he* [ %25, %if.end207 ], [ %24, %for.body141 ]
  %hent_next143 = getelementptr inbounds %struct.he* %entry1.1325, i64 0, i32 0
  %25 = load %struct.he** %hent_next143, align 8, !tbaa !0
  %hent_hek144 = getelementptr inbounds %struct.he* %entry1.1325, i64 0, i32 1
  %26 = load %struct.hek** %hent_hek144, align 8, !tbaa !0
  %hek_len = getelementptr inbounds %struct.hek* %26, i64 0, i32 1
  %27 = load i32* %hek_len, align 4, !tbaa !4
  %28 = load i64* @PL_rehash_seed, align 8, !tbaa !3
  %conv146 = trunc i64 %28 to i32
  %tobool149320 = icmp eq i32 %27, 0
  br i1 %tobool149320, label %while.end, label %while.body150.lr.ph

while.body150.lr.ph:                              ; preds = %while.body
  %arraydecay = getelementptr inbounds %struct.hek* %26, i64 0, i32 2, i64 0
  br label %while.body150

while.body150:                                    ; preds = %while.body150.lr.ph, %while.body150
  %hash_PeRlHaSh.0323 = phi i32 [ %conv146, %while.body150.lr.ph ], [ %xor, %while.body150 ]
  %i_PeRlHaSh.0322 = phi i32 [ %27, %while.body150.lr.ph ], [ %dec148, %while.body150 ]
  %s_PeRlHaSh.0321 = phi i8* [ %arraydecay, %while.body150.lr.ph ], [ %incdec.ptr151, %while.body150 ]
  %dec148 = add nsw i32 %i_PeRlHaSh.0322, -1
  %incdec.ptr151 = getelementptr inbounds i8* %s_PeRlHaSh.0321, i64 1
  %29 = load i8* %s_PeRlHaSh.0321, align 1, !tbaa !1
  %conv152 = zext i8 %29 to i32
  %add153 = add i32 %conv152, %hash_PeRlHaSh.0323
  %add154 = mul i32 %add153, 1025
  %shr = lshr i32 %add154, 6
  %xor = xor i32 %shr, %add154
  %tobool149 = icmp eq i32 %dec148, 0
  br i1 %tobool149, label %while.end, label %while.body150

while.end:                                        ; preds = %while.body150, %while.body
  %hash_PeRlHaSh.0.lcssa = phi i32 [ %conv146, %while.body ], [ %xor, %while.body150 ]
  %add156 = mul i32 %hash_PeRlHaSh.0.lcssa, 9
  %shr157 = lshr i32 %add156, 11
  %xor158 = xor i32 %shr157, %add156
  %add160 = mul i32 %xor158, 32769
  %conv161 = zext i32 %add160 to i64
  br i1 %tobool162, label %if.else182, label %if.then163

if.then163:                                       ; preds = %while.end
  %arraydecay166 = getelementptr inbounds %struct.hek* %26, i64 0, i32 2, i64 0
  %idx.ext175 = sext i32 %27 to i64
  %add.ptr176.sum = add i64 %idx.ext175, 1
  %add.ptr177 = getelementptr inbounds %struct.hek* %26, i64 0, i32 2, i64 %add.ptr176.sum
  %30 = load i8* %add.ptr177, align 1, !tbaa !1
  %conv178 = zext i8 %30 to i32
  %call179 = tail call fastcc %struct.hek* @S_save_hek_flags(i8* %arraydecay166, i32 %27, i32 %add160, i32 %conv178) #5
  %31 = load %struct.hek** %hent_hek144, align 8, !tbaa !0
  tail call fastcc void @S_unshare_hek_or_pvn(%struct.hek* %31, i8* null, i32 0, i32 0) #4
  store %struct.hek* %call179, %struct.hek** %hent_hek144, align 8, !tbaa !0
  %hek_len191.phi.trans.insert = getelementptr inbounds %struct.hek* %call179, i64 0, i32 1
  %.pre = load i32* %hek_len191.phi.trans.insert, align 4, !tbaa !4
  br label %if.end186

if.else182:                                       ; preds = %while.end
  %hek_hash185 = getelementptr inbounds %struct.hek* %26, i64 0, i32 0
  store i32 %add160, i32* %hek_hash185, align 4, !tbaa !4
  br label %if.end186

if.end186:                                        ; preds = %if.else182, %if.then163
  %32 = phi i32 [ %27, %if.else182 ], [ %.pre, %if.then163 ]
  %33 = phi %struct.hek* [ %26, %if.else182 ], [ %call179, %if.then163 ]
  %idx.ext192 = sext i32 %32 to i64
  %add.ptr193.sum = add i64 %idx.ext192, 1
  %add.ptr194 = getelementptr inbounds %struct.hek* %33, i64 0, i32 2, i64 %add.ptr193.sum
  %34 = load i8* %add.ptr194, align 1, !tbaa !1
  %or196 = or i8 %34, 4
  store i8 %or196, i8* %add.ptr194, align 1, !tbaa !1
  %35 = load i64* %xhv_max, align 8, !tbaa !3
  %and201 = and i64 %35, %conv161
  %add.ptr202 = getelementptr inbounds %struct.he** %23, i64 %and201
  %36 = load %struct.he** %add.ptr202, align 8, !tbaa !0
  %tobool203 = icmp eq %struct.he* %36, null
  br i1 %tobool203, label %if.then204, label %if.end207

if.then204:                                       ; preds = %if.end186
  %37 = load i64* %xhv_fill133, align 8, !tbaa !3
  %inc206 = add i64 %37, 1
  store i64 %inc206, i64* %xhv_fill133, align 8, !tbaa !3
  br label %if.end207

if.end207:                                        ; preds = %if.end186, %if.then204
  store %struct.he* %36, %struct.he** %hent_next143, align 8, !tbaa !0
  store %struct.he* %entry1.1325, %struct.he** %add.ptr202, align 8, !tbaa !0
  %tobool142 = icmp eq %struct.he* %25, null
  br i1 %tobool142, label %for.inc210, label %while.body

for.inc210:                                       ; preds = %if.end207, %for.body141
  %inc211 = add nsw i32 %i.1328, 1
  %incdec.ptr212 = getelementptr inbounds %struct.he** %aep.1327, i64 1
  %cmp139 = icmp slt i32 %inc211, %mul
  br i1 %cmp139, label %for.body141, label %for.end213

for.end213:                                       ; preds = %for.inc210, %cond.end128
  %38 = load i8** %xhv_array, align 8, !tbaa !0
  tail call void @Perl_safesysfree(i8* %38) #4
  store i8* %call117319, i8** %xhv_array, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end45, %lor.lhs.false, %for.end91, %for.end213, %if.then12
  ret void
}

; Function Attrs: optsize
declare void @Perl_warner(i32, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @S_hv_magic_check(%struct.hv* nocapture %hv, i8* nocapture %needs_copy, i8* nocapture %needs_store) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.hv* %hv, i64 0, i32 0
  %0 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %1 = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 5
  %2 = load %struct.magic** %1, align 8, !tbaa !0
  store i8 0, i8* %needs_copy, align 1, !tbaa !1
  store i8 1, i8* %needs_store, align 1, !tbaa !1
  %tobool14 = icmp eq %struct.magic* %2, null
  br i1 %tobool14, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %mg.015 = phi %struct.magic* [ %6, %if.end ], [ %2, %entry ]
  %mg_type = getelementptr inbounds %struct.magic* %mg.015, i64 0, i32 3
  %3 = load i8* %mg_type, align 1, !tbaa !1
  %.off = add i8 %3, -65
  %4 = icmp ult i8 %.off, 26
  br i1 %4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i8 1, i8* %needs_copy, align 1, !tbaa !1
  %5 = load i8* %mg_type, align 1, !tbaa !1
  %conv7 = sext i8 %5 to i32
  switch i32 %conv7, label %if.end [
    i32 80, label %sw.bb
    i32 83, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then, %if.then
  store i8 0, i8* %needs_store, align 1, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb, %while.body
  %mg_moremagic = getelementptr inbounds %struct.magic* %mg.015, i64 0, i32 0
  %6 = load %struct.magic** %mg_moremagic, align 8, !tbaa !0
  %tobool = icmp eq %struct.magic* %6, null
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_sv_unmagic(%struct.sv*, i32) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @S_hv_notallowed(i32 %flags, i8* %key, i32 %klen, i8* %msg) #0 {
entry:
  %call = tail call %struct.sv* @Perl_sv_newmortal() #4
  %call1 = tail call %struct.sv* @Perl_sv_newmortal() #4
  %and = and i32 %flags, 256
  %tobool = icmp eq i32 %and, 0
  %conv2 = sext i32 %klen to i64
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @Perl_sv_setpvn(%struct.sv* %call, i8* %key, i64 %conv2) #4
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @Perl_sv_usepvn(%struct.sv* %call, i8* %key, i64 %conv2) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %and3 = and i32 %flags, 1
  %tobool4 = icmp eq i32 %and3, 0
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  %sv_flags = getelementptr inbounds %struct.sv* %call, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !4
  %or = or i32 %0, 536870912
  store i32 %or, i32* %sv_flags, align 4, !tbaa !4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then5
  tail call void (%struct.sv*, i8*, ...)* @Perl_sv_setpvf(%struct.sv* %call1, i8* getelementptr inbounds ([32 x i8]* @.str8, i64 0, i64 0), i8* %msg) #4
  %sv_any = getelementptr inbounds %struct.sv* %call1, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %1 to i8**
  %2 = load i8** %xpv_pv, align 8, !tbaa !0
  tail call void (i8*, ...)* @Perl_croak(i8* %2, %struct.sv* %call) #4
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #1

; Function Attrs: optsize
declare void @Perl_sv_usepvn(%struct.sv*, i8*, i64) #1

; Function Attrs: optsize
declare i32 @Perl_magic_existspack(%struct.sv*, %struct.magic*) #1

; Function Attrs: optsize
declare signext i8 @Perl_sv_2bool(%struct.sv*) #1

; Function Attrs: optsize
declare signext i8 @Perl_sv_tainted(%struct.sv*) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"long", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}

; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/numeric.c'
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

@PL_curcop = external global %struct.cop*
@.str = private unnamed_addr constant [34 x i8] c"Integer overflow in binary number\00", align 1
@PL_dowarn = external global i8
@.str1 = private unnamed_addr constant [34 x i8] c"Illegal binary digit '%c' ignored\00", align 1
@.str2 = private unnamed_addr constant [64 x i8] c"Binary number > 0b11111111111111111111111111111111 non-portable\00", align 1
@PL_hexdigit = external global i8*
@.str3 = private unnamed_addr constant [39 x i8] c"Integer overflow in hexadecimal number\00", align 1
@.str4 = private unnamed_addr constant [39 x i8] c"Illegal hexadecimal digit '%c' ignored\00", align 1
@.str5 = private unnamed_addr constant [45 x i8] c"Hexadecimal number > 0xffffffff non-portable\00", align 1
@.str6 = private unnamed_addr constant [33 x i8] c"Integer overflow in octal number\00", align 1
@.str7 = private unnamed_addr constant [33 x i8] c"Illegal octal digit '%c' ignored\00", align 1
@.str8 = private unnamed_addr constant [41 x i8] c"Octal number > 037777777777 non-portable\00", align 1
@.str9 = private unnamed_addr constant [11 x i8] c"0 but true\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i32 @Perl_cast_ulong(double %f) #0 {
entry:
  %cmp = fcmp olt double %f, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cmp1 = fcmp olt double %f, 0xC1E0000000000000
  br i1 %cmp1, label %return, label %cond.false

cond.false:                                       ; preds = %if.then
  %conv = fptosi double %f to i32
  br label %return

if.end:                                           ; preds = %entry
  %cmp2 = fcmp olt double %f, 0x41F0000000000000
  br i1 %cmp2, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %conv5 = fptoui double %f to i32
  br label %return

if.end6:                                          ; preds = %if.end
  %cmp7 = fcmp ogt double %f, 0.000000e+00
  %cond9 = sext i1 %cmp7 to i32
  br label %return

return:                                           ; preds = %cond.false, %if.then, %if.end6, %if.then4
  %retval.0 = phi i32 [ %conv5, %if.then4 ], [ %cond9, %if.end6 ], [ %conv, %cond.false ], [ -2147483648, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @Perl_cast_i32(double %f) #0 {
entry:
  %cmp = fcmp olt double %f, 0x41E0000000000000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cmp1 = fcmp olt double %f, 0xC1E0000000000000
  br i1 %cmp1, label %return, label %cond.false

cond.false:                                       ; preds = %if.then
  %conv = fptosi double %f to i32
  br label %return

if.end:                                           ; preds = %entry
  %cmp2 = fcmp olt double %f, 0x41F0000000000000
  br i1 %cmp2, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %conv5 = fptoui double %f to i32
  br label %return

if.end6:                                          ; preds = %if.end
  %cmp7 = fcmp ogt double %f, 0.000000e+00
  %cond9 = sext i1 %cmp7 to i32
  br label %return

return:                                           ; preds = %cond.false, %if.then, %if.end6, %if.then4
  %retval.0 = phi i32 [ %conv5, %if.then4 ], [ %cond9, %if.end6 ], [ %conv, %cond.false ], [ -2147483648, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readnone uwtable
define i64 @Perl_cast_iv(double %f) #0 {
entry:
  %cmp = fcmp olt double %f, 0x43E0000000000000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cmp1 = fcmp olt double %f, 0xC3E0000000000000
  br i1 %cmp1, label %return, label %cond.false

cond.false:                                       ; preds = %if.then
  %conv = fptosi double %f to i64
  br label %return

if.end:                                           ; preds = %entry
  %cmp2 = fcmp olt double %f, 0x43F0000000000000
  br i1 %cmp2, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %conv5 = fptoui double %f to i64
  br label %return

if.end6:                                          ; preds = %if.end
  %cmp7 = fcmp ogt double %f, 0.000000e+00
  %cond9 = sext i1 %cmp7 to i64
  br label %return

return:                                           ; preds = %cond.false, %if.then, %if.end6, %if.then4
  %retval.0 = phi i64 [ %conv5, %if.then4 ], [ %cond9, %if.end6 ], [ %conv, %cond.false ], [ -9223372036854775808, %if.then ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize readnone uwtable
define i64 @Perl_cast_uv(double %f) #0 {
entry:
  %cmp = fcmp olt double %f, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cmp1 = fcmp olt double %f, 0xC3E0000000000000
  br i1 %cmp1, label %return, label %cond.false

cond.false:                                       ; preds = %if.then
  %conv = fptosi double %f to i64
  br label %return

if.end:                                           ; preds = %entry
  %cmp2 = fcmp olt double %f, 0x43F0000000000000
  br i1 %cmp2, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %conv5 = fptoui double %f to i64
  br label %return

if.end6:                                          ; preds = %if.end
  %cmp7 = fcmp ogt double %f, 0.000000e+00
  %cond9 = sext i1 %cmp7 to i64
  br label %return

return:                                           ; preds = %cond.false, %if.then, %if.end6, %if.then4
  %retval.0 = phi i64 [ %conv5, %if.then4 ], [ %cond9, %if.end6 ], [ %conv, %cond.false ], [ -9223372036854775808, %if.then ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize readnone uwtable
define double @Perl_huge() #0 {
entry:
  ret double 0x7FF0000000000000
}

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_grok_bin(i8* %start, i64* nocapture %len_p, i32* nocapture %flags, double* %result) #1 {
entry:
  %0 = load i64* %len_p, align 8, !tbaa !0
  %1 = load i32* %flags, align 4, !tbaa !3
  %conv = and i32 %1, 1
  %and1 = and i32 %1, 2
  %tobool = icmp ne i32 %and1, 0
  %cmp = icmp eq i64 %0, 0
  %or.cond = or i1 %tobool, %cmp
  br i1 %or.cond, label %for.cond.preheader, label %if.then3

if.then3:                                         ; preds = %entry
  %2 = load i8* %start, align 1, !tbaa !1
  %cmp5 = icmp eq i8 %2, 98
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then3
  %incdec.ptr = getelementptr inbounds i8* %start, i64 1
  %dec = add i64 %0, -1
  br label %for.cond.preheader

if.else:                                          ; preds = %if.then3
  %cmp8 = icmp ugt i64 %0, 1
  %cmp12 = icmp eq i8 %2, 48
  %or.cond215 = and i1 %cmp8, %cmp12
  br i1 %or.cond215, label %land.lhs.true14, label %for.cond.preheader

land.lhs.true14:                                  ; preds = %if.else
  %arrayidx15 = getelementptr inbounds i8* %start, i64 1
  %3 = load i8* %arrayidx15, align 1, !tbaa !1
  %cmp17 = icmp eq i8 %3, 98
  br i1 %cmp17, label %if.then19, label %for.cond.preheader

if.then19:                                        ; preds = %land.lhs.true14
  %add.ptr = getelementptr inbounds i8* %start, i64 2
  %sub = add i64 %0, -2
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else, %land.lhs.true14, %if.then19, %if.then7, %entry
  %len.0.ph = phi i64 [ %0, %entry ], [ %dec, %if.then7 ], [ %sub, %if.then19 ], [ %0, %land.lhs.true14 ], [ %0, %if.else ]
  %s.0.ph = phi i8* [ %start, %entry ], [ %incdec.ptr, %if.then7 ], [ %add.ptr, %if.then19 ], [ %start, %land.lhs.true14 ], [ %start, %if.else ]
  %tobool24228 = icmp eq i64 %len.0.ph, 0
  br i1 %tobool24228, label %if.end165.thread, label %land.rhs.lr.ph

if.end165.thread:                                 ; preds = %for.cond.preheader
  %sub.ptr.lhs.cast268 = ptrtoint i8* %s.0.ph to i64
  %sub.ptr.rhs.cast269 = ptrtoint i8* %start to i64
  %sub.ptr.sub270 = sub i64 %sub.ptr.lhs.cast268, %sub.ptr.rhs.cast269
  store i64 %sub.ptr.sub270, i64* %len_p, align 8, !tbaa !0
  br label %if.then167

land.rhs.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool74 = icmp eq i32 %conv, 0
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc, %land.rhs.lr.ph
  %dec23235.in = phi i64 [ %len.0.ph, %land.rhs.lr.ph ], [ %len.1, %for.inc ]
  %overflowed.0234 = phi i8 [ 0, %land.rhs.lr.ph ], [ %overflowed.2, %for.inc ]
  %s.0233 = phi i8* [ %s.0.ph, %land.rhs.lr.ph ], [ %incdec.ptr124, %for.inc ]
  %value_nv.0232 = phi double [ 0.000000e+00, %land.rhs.lr.ph ], [ %value_nv.2, %for.inc ]
  %value.0230 = phi i64 [ 0, %land.rhs.lr.ph ], [ %value.1, %for.inc ]
  %dec23235 = add i64 %dec23235.in, -1
  %4 = load i8* %s.0233, align 1, !tbaa !1
  switch i8 %4, label %if.end90 [
    i8 0, label %for.end
    i8 48, label %redo
    i8 49, label %redo
    i8 95, label %land.lhs.true70
  ]

redo:                                             ; preds = %land.rhs, %land.rhs, %if.then87
  %len.1 = phi i64 [ %dec88, %if.then87 ], [ %dec23235, %land.rhs ], [ %dec23235, %land.rhs ]
  %s.1 = phi i8* [ %arrayidx76, %if.then87 ], [ %s.0233, %land.rhs ], [ %s.0233, %land.rhs ]
  %bit.0 = phi i8 [ %16, %if.then87 ], [ %4, %land.rhs ], [ %4, %land.rhs ]
  %tobool34 = icmp eq i8 %overflowed.0234, 0
  br i1 %tobool34, label %if.then35, label %if.end62

if.then35:                                        ; preds = %redo
  %cmp36 = icmp sgt i64 %value.0230, -1
  br i1 %cmp36, label %if.then38, label %if.end42

if.then38:                                        ; preds = %if.then35
  %shl = shl i64 %value.0230, 1
  %conv39 = sext i8 %bit.0 to i64
  %sub40 = add i64 %conv39, -48
  %or = or i64 %sub40, %shl
  br label %for.inc

if.end42:                                         ; preds = %if.then35
  %5 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings = getelementptr inbounds %struct.cop* %5, i64 0, i32 14
  %6 = load %struct.sv** %cop_warnings, align 8, !tbaa !4
  %cmp43 = icmp eq %struct.sv* %6, null
  br i1 %cmp43, label %if.then59, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %if.end42
  %7 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings46 = getelementptr inbounds %struct.cop* %7, i64 0, i32 14
  %8 = load %struct.sv** %cop_warnings46, align 8, !tbaa !4
  %cmp47 = icmp eq %struct.sv* %8, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp47, label %if.then59, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %lor.lhs.false45
  %9 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings50 = getelementptr inbounds %struct.cop* %9, i64 0, i32 14
  %10 = load %struct.sv** %cop_warnings50, align 8, !tbaa !4
  %cmp51 = icmp eq %struct.sv* %10, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp51, label %if.end60, label %land.lhs.true53

land.lhs.true53:                                  ; preds = %lor.lhs.false49
  %11 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings54 = getelementptr inbounds %struct.cop* %11, i64 0, i32 14
  %12 = load %struct.sv** %cop_warnings54, align 8, !tbaa !4
  %sv_any = getelementptr inbounds %struct.sv* %12, i64 0, i32 0
  %13 = load i8** %sv_any, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %13 to i8**
  %14 = load i8** %xpv_pv, align 8, !tbaa !4
  %arrayidx55 = getelementptr inbounds i8* %14, i64 3
  %15 = load i8* %arrayidx55, align 1, !tbaa !1
  %and57 = and i8 %15, 64
  %tobool58 = icmp eq i8 %and57, 0
  br i1 %tobool58, label %if.end60, label %if.then59

if.then59:                                        ; preds = %land.lhs.true53, %lor.lhs.false45, %if.end42
  tail call void (i32, i8*, ...)* @Perl_warner(i32 15, i8* getelementptr inbounds ([34 x i8]* @.str, i64 0, i64 0)) #5
  br label %if.end60

if.end60:                                         ; preds = %land.lhs.true53, %lor.lhs.false49, %if.then59
  %conv61 = uitofp i64 %value.0230 to double
  br label %if.end62

if.end62:                                         ; preds = %redo, %if.end60
  %value_nv.1 = phi double [ %value_nv.0232, %redo ], [ %conv61, %if.end60 ]
  %overflowed.1 = phi i8 [ %overflowed.0234, %redo ], [ 1, %if.end60 ]
  %mul = fmul double %value_nv.1, 2.000000e+00
  %conv63 = sext i8 %bit.0 to i32
  %sub64 = add nsw i32 %conv63, -48
  %conv65 = sitofp i32 %sub64 to double
  %add = fadd double %conv65, %mul
  br label %for.inc

land.lhs.true70:                                  ; preds = %land.rhs
  %tobool71 = icmp eq i64 %dec23235, 0
  %or.cond216 = or i1 %tobool71, %tobool74
  br i1 %or.cond216, label %if.end90, label %land.lhs.true75

land.lhs.true75:                                  ; preds = %land.lhs.true70
  %arrayidx76 = getelementptr inbounds i8* %s.0233, i64 1
  %16 = load i8* %arrayidx76, align 1, !tbaa !1
  %.off = add i8 %16, -48
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then87, label %if.end90

if.then87:                                        ; preds = %land.lhs.true75
  %dec88 = add i64 %dec23235.in, -2
  br label %redo

if.end90:                                         ; preds = %land.lhs.true75, %land.lhs.true70, %land.rhs
  %17 = load i32* %flags, align 4, !tbaa !3
  %and91 = and i32 %17, 4
  %tobool92 = icmp eq i32 %and91, 0
  br i1 %tobool92, label %land.lhs.true93, label %for.end

land.lhs.true93:                                  ; preds = %if.end90
  %18 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings94 = getelementptr inbounds %struct.cop* %18, i64 0, i32 14
  %19 = load %struct.sv** %cop_warnings94, align 8, !tbaa !4
  %cmp95 = icmp eq %struct.sv* %19, null
  br i1 %cmp95, label %lor.lhs.false113, label %land.lhs.true97

land.lhs.true97:                                  ; preds = %land.lhs.true93
  %20 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings98 = getelementptr inbounds %struct.cop* %20, i64 0, i32 14
  %21 = load %struct.sv** %cop_warnings98, align 8, !tbaa !4
  %cmp99 = icmp eq %struct.sv* %21, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp99, label %lor.lhs.false113, label %land.lhs.true101

land.lhs.true101:                                 ; preds = %land.lhs.true97
  %22 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings102 = getelementptr inbounds %struct.cop* %22, i64 0, i32 14
  %23 = load %struct.sv** %cop_warnings102, align 8, !tbaa !4
  %cmp103 = icmp eq %struct.sv* %23, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp103, label %if.then121, label %lor.lhs.false105

lor.lhs.false105:                                 ; preds = %land.lhs.true101
  %24 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings106 = getelementptr inbounds %struct.cop* %24, i64 0, i32 14
  %25 = load %struct.sv** %cop_warnings106, align 8, !tbaa !4
  %sv_any107 = getelementptr inbounds %struct.sv* %25, i64 0, i32 0
  %26 = load i8** %sv_any107, align 8, !tbaa !4
  %xpv_pv108 = bitcast i8* %26 to i8**
  %27 = load i8** %xpv_pv108, align 8, !tbaa !4
  %arrayidx109 = getelementptr inbounds i8* %27, i64 7
  %28 = load i8* %arrayidx109, align 1, !tbaa !1
  %and111 = and i8 %28, 64
  %tobool112 = icmp eq i8 %and111, 0
  br i1 %tobool112, label %lor.lhs.false113, label %if.then121

lor.lhs.false113:                                 ; preds = %lor.lhs.false105, %land.lhs.true97, %land.lhs.true93
  %29 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings114 = getelementptr inbounds %struct.cop* %29, i64 0, i32 14
  %30 = load %struct.sv** %cop_warnings114, align 8, !tbaa !4
  %cmp115 = icmp eq %struct.sv* %30, null
  br i1 %cmp115, label %land.lhs.true117, label %for.end

land.lhs.true117:                                 ; preds = %lor.lhs.false113
  %31 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and119 = and i8 %31, 1
  %tobool120 = icmp eq i8 %and119, 0
  br i1 %tobool120, label %for.end, label %if.then121

if.then121:                                       ; preds = %lor.lhs.false105, %land.lhs.true117, %land.lhs.true101
  %32 = load i8* %s.0233, align 1, !tbaa !1
  %conv122 = sext i8 %32 to i32
  tail call void (i32, i8*, ...)* @Perl_warner(i32 31, i8* getelementptr inbounds ([34 x i8]* @.str1, i64 0, i64 0), i32 %conv122) #5
  br label %for.end

for.inc:                                          ; preds = %if.end62, %if.then38
  %value.1 = phi i64 [ %value.0230, %if.end62 ], [ %or, %if.then38 ]
  %value_nv.2 = phi double [ %add, %if.end62 ], [ %value_nv.0232, %if.then38 ]
  %overflowed.2 = phi i8 [ %overflowed.1, %if.end62 ], [ 0, %if.then38 ]
  %incdec.ptr124 = getelementptr inbounds i8* %s.1, i64 1
  %tobool24 = icmp eq i64 %len.1, 0
  br i1 %tobool24, label %for.end, label %land.rhs

for.end:                                          ; preds = %land.rhs, %for.inc, %land.lhs.true117, %if.end90, %lor.lhs.false113, %if.then121
  %overflowed.0226 = phi i8 [ %overflowed.0234, %land.lhs.true117 ], [ %overflowed.0234, %if.end90 ], [ %overflowed.0234, %lor.lhs.false113 ], [ %overflowed.0234, %if.then121 ], [ %overflowed.0234, %land.rhs ], [ %overflowed.2, %for.inc ]
  %s.0224 = phi i8* [ %s.0233, %land.lhs.true117 ], [ %s.0233, %if.end90 ], [ %s.0233, %lor.lhs.false113 ], [ %s.0233, %if.then121 ], [ %s.0233, %land.rhs ], [ %incdec.ptr124, %for.inc ]
  %value_nv.0222 = phi double [ %value_nv.0232, %land.lhs.true117 ], [ %value_nv.0232, %if.end90 ], [ %value_nv.0232, %lor.lhs.false113 ], [ %value_nv.0232, %if.then121 ], [ %value_nv.0232, %land.rhs ], [ %value_nv.2, %for.inc ]
  %value.0220 = phi i64 [ %value.0230, %land.lhs.true117 ], [ %value.0230, %if.end90 ], [ %value.0230, %lor.lhs.false113 ], [ %value.0230, %if.then121 ], [ %value.0230, %land.rhs ], [ %value.1, %for.inc ]
  %tobool126 = icmp ne i8 %overflowed.0226, 0
  %cmp128 = fcmp ogt double %value_nv.0222, 0x41EFFFFFFFE00000
  %or.cond217 = and i1 %tobool126, %cmp128
  br i1 %or.cond217, label %if.then135, label %lor.lhs.false130

lor.lhs.false130:                                 ; preds = %for.end
  %tobool131 = icmp eq i8 %overflowed.0226, 0
  %cmp133 = icmp ugt i64 %value.0220, 4294967295
  %or.cond218 = and i1 %tobool131, %cmp133
  br i1 %or.cond218, label %if.then135, label %if.end165

if.then135:                                       ; preds = %lor.lhs.false130, %for.end
  %33 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings136 = getelementptr inbounds %struct.cop* %33, i64 0, i32 14
  %34 = load %struct.sv** %cop_warnings136, align 8, !tbaa !4
  %cmp137 = icmp eq %struct.sv* %34, null
  br i1 %cmp137, label %lor.lhs.false155, label %land.lhs.true139

land.lhs.true139:                                 ; preds = %if.then135
  %35 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings140 = getelementptr inbounds %struct.cop* %35, i64 0, i32 14
  %36 = load %struct.sv** %cop_warnings140, align 8, !tbaa !4
  %cmp141 = icmp eq %struct.sv* %36, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp141, label %lor.lhs.false155, label %land.lhs.true143

land.lhs.true143:                                 ; preds = %land.lhs.true139
  %37 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings144 = getelementptr inbounds %struct.cop* %37, i64 0, i32 14
  %38 = load %struct.sv** %cop_warnings144, align 8, !tbaa !4
  %cmp145 = icmp eq %struct.sv* %38, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp145, label %if.then163, label %lor.lhs.false147

lor.lhs.false147:                                 ; preds = %land.lhs.true143
  %39 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings148 = getelementptr inbounds %struct.cop* %39, i64 0, i32 14
  %40 = load %struct.sv** %cop_warnings148, align 8, !tbaa !4
  %sv_any149 = getelementptr inbounds %struct.sv* %40, i64 0, i32 0
  %41 = load i8** %sv_any149, align 8, !tbaa !4
  %xpv_pv150 = bitcast i8* %41 to i8**
  %42 = load i8** %xpv_pv150, align 8, !tbaa !4
  %arrayidx151 = getelementptr inbounds i8* %42, i64 4
  %43 = load i8* %arrayidx151, align 1, !tbaa !1
  %and153 = and i8 %43, 4
  %tobool154 = icmp eq i8 %and153, 0
  br i1 %tobool154, label %lor.lhs.false155, label %if.then163

lor.lhs.false155:                                 ; preds = %lor.lhs.false147, %land.lhs.true139, %if.then135
  %44 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings156 = getelementptr inbounds %struct.cop* %44, i64 0, i32 14
  %45 = load %struct.sv** %cop_warnings156, align 8, !tbaa !4
  %cmp157 = icmp eq %struct.sv* %45, null
  br i1 %cmp157, label %land.lhs.true159, label %if.end165

land.lhs.true159:                                 ; preds = %lor.lhs.false155
  %46 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and161 = and i8 %46, 1
  %tobool162 = icmp eq i8 %and161, 0
  br i1 %tobool162, label %if.end165, label %if.then163

if.then163:                                       ; preds = %lor.lhs.false147, %land.lhs.true159, %land.lhs.true143
  tail call void (i32, i8*, ...)* @Perl_warner(i32 17, i8* getelementptr inbounds ([64 x i8]* @.str2, i64 0, i64 0)) #5
  br label %if.end165

if.end165:                                        ; preds = %land.lhs.true159, %lor.lhs.false130, %lor.lhs.false155, %if.then163
  %sub.ptr.lhs.cast = ptrtoint i8* %s.0224 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %start to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %len_p, align 8, !tbaa !0
  %tobool166 = icmp eq i8 %overflowed.0226, 0
  br i1 %tobool166, label %if.then167, label %if.end168

if.then167:                                       ; preds = %if.end165.thread, %if.end165
  %value.0220262272 = phi i64 [ 0, %if.end165.thread ], [ %value.0220, %if.end165 ]
  store i32 0, i32* %flags, align 4, !tbaa !3
  br label %return

if.end168:                                        ; preds = %if.end165
  store i32 2, i32* %flags, align 4, !tbaa !3
  %tobool169 = icmp eq double* %result, null
  br i1 %tobool169, label %return, label %if.then170

if.then170:                                       ; preds = %if.end168
  store double %value_nv.0222, double* %result, align 8, !tbaa !5
  br label %return

return:                                           ; preds = %if.then170, %if.end168, %if.then167
  %retval.0 = phi i64 [ %value.0220262272, %if.then167 ], [ -1, %if.end168 ], [ -1, %if.then170 ]
  ret i64 %retval.0
}

; Function Attrs: optsize
declare void @Perl_warner(i32, i8*, ...) #2

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_grok_hex(i8* %start, i64* nocapture %len_p, i32* nocapture %flags, double* %result) #1 {
entry:
  %0 = load i64* %len_p, align 8, !tbaa !0
  %1 = load i32* %flags, align 4, !tbaa !3
  %conv = and i32 %1, 1
  %and1 = and i32 %1, 2
  %tobool = icmp ne i32 %and1, 0
  %cmp = icmp eq i64 %0, 0
  %or.cond = or i1 %tobool, %cmp
  br i1 %or.cond, label %for.cond.preheader, label %if.then3

if.then3:                                         ; preds = %entry
  %2 = load i8* %start, align 1, !tbaa !1
  %cmp5 = icmp eq i8 %2, 120
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then3
  %incdec.ptr = getelementptr inbounds i8* %start, i64 1
  %dec = add i64 %0, -1
  br label %for.cond.preheader

if.else:                                          ; preds = %if.then3
  %cmp8 = icmp ugt i64 %0, 1
  %cmp12 = icmp eq i8 %2, 48
  %or.cond208 = and i1 %cmp8, %cmp12
  br i1 %or.cond208, label %land.lhs.true14, label %for.cond.preheader

land.lhs.true14:                                  ; preds = %if.else
  %arrayidx15 = getelementptr inbounds i8* %start, i64 1
  %3 = load i8* %arrayidx15, align 1, !tbaa !1
  %cmp17 = icmp eq i8 %3, 120
  br i1 %cmp17, label %if.then19, label %for.cond.preheader

if.then19:                                        ; preds = %land.lhs.true14
  %add.ptr = getelementptr inbounds i8* %start, i64 2
  %sub = add i64 %0, -2
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else, %land.lhs.true14, %if.then19, %if.then7, %entry
  %len.0.ph = phi i64 [ %0, %entry ], [ %dec, %if.then7 ], [ %sub, %if.then19 ], [ %0, %land.lhs.true14 ], [ %0, %if.else ]
  %s.0.ph = phi i8* [ %start, %entry ], [ %incdec.ptr, %if.then7 ], [ %add.ptr, %if.then19 ], [ %start, %land.lhs.true14 ], [ %start, %if.else ]
  %tobool24222 = icmp eq i64 %len.0.ph, 0
  br i1 %tobool24222, label %if.end157.thread, label %land.rhs.lr.ph

if.end157.thread:                                 ; preds = %for.cond.preheader
  %sub.ptr.lhs.cast158262 = ptrtoint i8* %s.0.ph to i64
  %sub.ptr.rhs.cast159263 = ptrtoint i8* %start to i64
  %sub.ptr.sub160264 = sub i64 %sub.ptr.lhs.cast158262, %sub.ptr.rhs.cast159263
  store i64 %sub.ptr.sub160264, i64* %len_p, align 8, !tbaa !0
  br label %if.then162

land.rhs.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool69 = icmp eq i32 %conv, 0
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc, %land.rhs.lr.ph
  %dec23229.in = phi i64 [ %len.0.ph, %land.rhs.lr.ph ], [ %len.1, %for.inc ]
  %overflowed.0228 = phi i8 [ 0, %land.rhs.lr.ph ], [ %overflowed.2, %for.inc ]
  %s.0227 = phi i8* [ %s.0.ph, %land.rhs.lr.ph ], [ %incdec.ptr116, %for.inc ]
  %value_nv.0226 = phi double [ 0.000000e+00, %land.rhs.lr.ph ], [ %value_nv.2, %for.inc ]
  %value.0224 = phi i64 [ 0, %land.rhs.lr.ph ], [ %value.1, %for.inc ]
  %dec23229 = add i64 %dec23229.in, -1
  %4 = load i8* %s.0227, align 1, !tbaa !1
  %tobool26 = icmp eq i8 %4, 0
  br i1 %tobool26, label %for.end, label %for.body

for.body:                                         ; preds = %land.rhs
  %conv25 = sext i8 %4 to i32
  %5 = load i8** @PL_hexdigit, align 8, !tbaa !4
  %call = tail call i8* @strchr(i8* %5, i32 %conv25) #5
  %tobool28 = icmp eq i8* %call, null
  br i1 %tobool28, label %if.end61, label %redo

redo:                                             ; preds = %for.body, %if.then79
  %len.1 = phi i64 [ %dec23229, %for.body ], [ %dec80, %if.then79 ]
  %s.1 = phi i8* [ %s.0227, %for.body ], [ %arrayidx71, %if.then79 ]
  %hexdigit.0 = phi i8* [ %call, %for.body ], [ %call77, %if.then79 ]
  %tobool30 = icmp eq i8 %overflowed.0228, 0
  br i1 %tobool30, label %if.then31, label %if.end55

if.then31:                                        ; preds = %redo
  %cmp32 = icmp ult i64 %value.0224, 1152921504606846976
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.then31
  %shl = shl i64 %value.0224, 4
  %sub.ptr.lhs.cast = ptrtoint i8* %hexdigit.0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %and35 = and i64 %sub.ptr.sub, 15
  %or = or i64 %and35, %shl
  br label %for.inc

if.end36:                                         ; preds = %if.then31
  %6 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings = getelementptr inbounds %struct.cop* %6, i64 0, i32 14
  %7 = load %struct.sv** %cop_warnings, align 8, !tbaa !4
  %cmp37 = icmp eq %struct.sv* %7, null
  br i1 %cmp37, label %if.then52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end36
  %8 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings39 = getelementptr inbounds %struct.cop* %8, i64 0, i32 14
  %9 = load %struct.sv** %cop_warnings39, align 8, !tbaa !4
  %cmp40 = icmp eq %struct.sv* %9, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp40, label %if.then52, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false
  %10 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings43 = getelementptr inbounds %struct.cop* %10, i64 0, i32 14
  %11 = load %struct.sv** %cop_warnings43, align 8, !tbaa !4
  %cmp44 = icmp eq %struct.sv* %11, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp44, label %if.end53, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %lor.lhs.false42
  %12 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings47 = getelementptr inbounds %struct.cop* %12, i64 0, i32 14
  %13 = load %struct.sv** %cop_warnings47, align 8, !tbaa !4
  %sv_any = getelementptr inbounds %struct.sv* %13, i64 0, i32 0
  %14 = load i8** %sv_any, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %14 to i8**
  %15 = load i8** %xpv_pv, align 8, !tbaa !4
  %arrayidx48 = getelementptr inbounds i8* %15, i64 3
  %16 = load i8* %arrayidx48, align 1, !tbaa !1
  %and50 = and i8 %16, 64
  %tobool51 = icmp eq i8 %and50, 0
  br i1 %tobool51, label %if.end53, label %if.then52

if.then52:                                        ; preds = %land.lhs.true46, %lor.lhs.false, %if.end36
  tail call void (i32, i8*, ...)* @Perl_warner(i32 15, i8* getelementptr inbounds ([39 x i8]* @.str3, i64 0, i64 0)) #5
  br label %if.end53

if.end53:                                         ; preds = %land.lhs.true46, %lor.lhs.false42, %if.then52
  %conv54 = uitofp i64 %value.0224 to double
  %.pre = load i8** @PL_hexdigit, align 8, !tbaa !4
  br label %if.end55

if.end55:                                         ; preds = %redo, %if.end53
  %17 = phi i8* [ %5, %redo ], [ %.pre, %if.end53 ]
  %value_nv.1 = phi double [ %value_nv.0226, %redo ], [ %conv54, %if.end53 ]
  %overflowed.1 = phi i8 [ %overflowed.0228, %redo ], [ 1, %if.end53 ]
  %mul = fmul double %value_nv.1, 1.600000e+01
  %sub.ptr.lhs.cast56 = ptrtoint i8* %hexdigit.0 to i64
  %sub.ptr.rhs.cast57 = ptrtoint i8* %17 to i64
  %sub.ptr.sub58 = sub i64 %sub.ptr.lhs.cast56, %sub.ptr.rhs.cast57
  %and59 = and i64 %sub.ptr.sub58, 15
  %conv60 = sitofp i64 %and59 to double
  %add = fadd double %mul, %conv60
  br label %for.inc

if.end61:                                         ; preds = %for.body
  %cmp63 = icmp ne i8 %4, 95
  %tobool66 = icmp eq i64 %dec23229, 0
  %or.cond209 = or i1 %cmp63, %tobool66
  %or.cond210 = or i1 %or.cond209, %tobool69
  br i1 %or.cond210, label %if.end82, label %land.lhs.true70

land.lhs.true70:                                  ; preds = %if.end61
  %arrayidx71 = getelementptr inbounds i8* %s.0227, i64 1
  %18 = load i8* %arrayidx71, align 1, !tbaa !1
  %tobool73 = icmp eq i8 %18, 0
  br i1 %tobool73, label %if.end82, label %land.lhs.true74

land.lhs.true74:                                  ; preds = %land.lhs.true70
  %conv72 = sext i8 %18 to i32
  %call77 = tail call i8* @strchr(i8* %5, i32 %conv72) #5
  %tobool78 = icmp eq i8* %call77, null
  br i1 %tobool78, label %if.end82, label %if.then79

if.then79:                                        ; preds = %land.lhs.true74
  %dec80 = add i64 %dec23229.in, -2
  br label %redo

if.end82:                                         ; preds = %land.lhs.true74, %land.lhs.true70, %if.end61
  %19 = load i32* %flags, align 4, !tbaa !3
  %and83 = and i32 %19, 4
  %tobool84 = icmp eq i32 %and83, 0
  br i1 %tobool84, label %land.lhs.true85, label %for.end

land.lhs.true85:                                  ; preds = %if.end82
  %20 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings86 = getelementptr inbounds %struct.cop* %20, i64 0, i32 14
  %21 = load %struct.sv** %cop_warnings86, align 8, !tbaa !4
  %cmp87 = icmp eq %struct.sv* %21, null
  br i1 %cmp87, label %lor.lhs.false105, label %land.lhs.true89

land.lhs.true89:                                  ; preds = %land.lhs.true85
  %22 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings90 = getelementptr inbounds %struct.cop* %22, i64 0, i32 14
  %23 = load %struct.sv** %cop_warnings90, align 8, !tbaa !4
  %cmp91 = icmp eq %struct.sv* %23, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp91, label %lor.lhs.false105, label %land.lhs.true93

land.lhs.true93:                                  ; preds = %land.lhs.true89
  %24 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings94 = getelementptr inbounds %struct.cop* %24, i64 0, i32 14
  %25 = load %struct.sv** %cop_warnings94, align 8, !tbaa !4
  %cmp95 = icmp eq %struct.sv* %25, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp95, label %if.then113, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %land.lhs.true93
  %26 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings98 = getelementptr inbounds %struct.cop* %26, i64 0, i32 14
  %27 = load %struct.sv** %cop_warnings98, align 8, !tbaa !4
  %sv_any99 = getelementptr inbounds %struct.sv* %27, i64 0, i32 0
  %28 = load i8** %sv_any99, align 8, !tbaa !4
  %xpv_pv100 = bitcast i8* %28 to i8**
  %29 = load i8** %xpv_pv100, align 8, !tbaa !4
  %arrayidx101 = getelementptr inbounds i8* %29, i64 7
  %30 = load i8* %arrayidx101, align 1, !tbaa !1
  %and103 = and i8 %30, 64
  %tobool104 = icmp eq i8 %and103, 0
  br i1 %tobool104, label %lor.lhs.false105, label %if.then113

lor.lhs.false105:                                 ; preds = %lor.lhs.false97, %land.lhs.true89, %land.lhs.true85
  %31 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings106 = getelementptr inbounds %struct.cop* %31, i64 0, i32 14
  %32 = load %struct.sv** %cop_warnings106, align 8, !tbaa !4
  %cmp107 = icmp eq %struct.sv* %32, null
  br i1 %cmp107, label %land.lhs.true109, label %for.end

land.lhs.true109:                                 ; preds = %lor.lhs.false105
  %33 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and111 = and i8 %33, 1
  %tobool112 = icmp eq i8 %and111, 0
  br i1 %tobool112, label %for.end, label %if.then113

if.then113:                                       ; preds = %lor.lhs.false97, %land.lhs.true109, %land.lhs.true93
  %34 = load i8* %s.0227, align 1, !tbaa !1
  %conv114 = sext i8 %34 to i32
  tail call void (i32, i8*, ...)* @Perl_warner(i32 31, i8* getelementptr inbounds ([39 x i8]* @.str4, i64 0, i64 0), i32 %conv114) #5
  br label %for.end

for.inc:                                          ; preds = %if.end55, %if.then34
  %value.1 = phi i64 [ %value.0224, %if.end55 ], [ %or, %if.then34 ]
  %value_nv.2 = phi double [ %add, %if.end55 ], [ %value_nv.0226, %if.then34 ]
  %overflowed.2 = phi i8 [ %overflowed.1, %if.end55 ], [ 0, %if.then34 ]
  %incdec.ptr116 = getelementptr inbounds i8* %s.1, i64 1
  %tobool24 = icmp eq i64 %len.1, 0
  br i1 %tobool24, label %for.end, label %land.rhs

for.end:                                          ; preds = %land.rhs, %for.inc, %land.lhs.true109, %if.end82, %lor.lhs.false105, %if.then113
  %overflowed.0220 = phi i8 [ %overflowed.0228, %land.lhs.true109 ], [ %overflowed.0228, %if.end82 ], [ %overflowed.0228, %lor.lhs.false105 ], [ %overflowed.0228, %if.then113 ], [ %overflowed.0228, %land.rhs ], [ %overflowed.2, %for.inc ]
  %s.0218 = phi i8* [ %s.0227, %land.lhs.true109 ], [ %s.0227, %if.end82 ], [ %s.0227, %lor.lhs.false105 ], [ %s.0227, %if.then113 ], [ %s.0227, %land.rhs ], [ %incdec.ptr116, %for.inc ]
  %value_nv.0216 = phi double [ %value_nv.0226, %land.lhs.true109 ], [ %value_nv.0226, %if.end82 ], [ %value_nv.0226, %lor.lhs.false105 ], [ %value_nv.0226, %if.then113 ], [ %value_nv.0226, %land.rhs ], [ %value_nv.2, %for.inc ]
  %value.0214 = phi i64 [ %value.0224, %land.lhs.true109 ], [ %value.0224, %if.end82 ], [ %value.0224, %lor.lhs.false105 ], [ %value.0224, %if.then113 ], [ %value.0224, %land.rhs ], [ %value.1, %for.inc ]
  %tobool118 = icmp ne i8 %overflowed.0220, 0
  %cmp120 = fcmp ogt double %value_nv.0216, 0x41EFFFFFFFE00000
  %or.cond211 = and i1 %tobool118, %cmp120
  br i1 %or.cond211, label %if.then127, label %lor.lhs.false122

lor.lhs.false122:                                 ; preds = %for.end
  %tobool123 = icmp eq i8 %overflowed.0220, 0
  %cmp125 = icmp ugt i64 %value.0214, 4294967295
  %or.cond212 = and i1 %tobool123, %cmp125
  br i1 %or.cond212, label %if.then127, label %if.end157

if.then127:                                       ; preds = %lor.lhs.false122, %for.end
  %35 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings128 = getelementptr inbounds %struct.cop* %35, i64 0, i32 14
  %36 = load %struct.sv** %cop_warnings128, align 8, !tbaa !4
  %cmp129 = icmp eq %struct.sv* %36, null
  br i1 %cmp129, label %lor.lhs.false147, label %land.lhs.true131

land.lhs.true131:                                 ; preds = %if.then127
  %37 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings132 = getelementptr inbounds %struct.cop* %37, i64 0, i32 14
  %38 = load %struct.sv** %cop_warnings132, align 8, !tbaa !4
  %cmp133 = icmp eq %struct.sv* %38, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp133, label %lor.lhs.false147, label %land.lhs.true135

land.lhs.true135:                                 ; preds = %land.lhs.true131
  %39 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings136 = getelementptr inbounds %struct.cop* %39, i64 0, i32 14
  %40 = load %struct.sv** %cop_warnings136, align 8, !tbaa !4
  %cmp137 = icmp eq %struct.sv* %40, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp137, label %if.then155, label %lor.lhs.false139

lor.lhs.false139:                                 ; preds = %land.lhs.true135
  %41 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings140 = getelementptr inbounds %struct.cop* %41, i64 0, i32 14
  %42 = load %struct.sv** %cop_warnings140, align 8, !tbaa !4
  %sv_any141 = getelementptr inbounds %struct.sv* %42, i64 0, i32 0
  %43 = load i8** %sv_any141, align 8, !tbaa !4
  %xpv_pv142 = bitcast i8* %43 to i8**
  %44 = load i8** %xpv_pv142, align 8, !tbaa !4
  %arrayidx143 = getelementptr inbounds i8* %44, i64 4
  %45 = load i8* %arrayidx143, align 1, !tbaa !1
  %and145 = and i8 %45, 4
  %tobool146 = icmp eq i8 %and145, 0
  br i1 %tobool146, label %lor.lhs.false147, label %if.then155

lor.lhs.false147:                                 ; preds = %lor.lhs.false139, %land.lhs.true131, %if.then127
  %46 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings148 = getelementptr inbounds %struct.cop* %46, i64 0, i32 14
  %47 = load %struct.sv** %cop_warnings148, align 8, !tbaa !4
  %cmp149 = icmp eq %struct.sv* %47, null
  br i1 %cmp149, label %land.lhs.true151, label %if.end157

land.lhs.true151:                                 ; preds = %lor.lhs.false147
  %48 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and153 = and i8 %48, 1
  %tobool154 = icmp eq i8 %and153, 0
  br i1 %tobool154, label %if.end157, label %if.then155

if.then155:                                       ; preds = %lor.lhs.false139, %land.lhs.true151, %land.lhs.true135
  tail call void (i32, i8*, ...)* @Perl_warner(i32 17, i8* getelementptr inbounds ([45 x i8]* @.str5, i64 0, i64 0)) #5
  br label %if.end157

if.end157:                                        ; preds = %land.lhs.true151, %lor.lhs.false122, %lor.lhs.false147, %if.then155
  %sub.ptr.lhs.cast158 = ptrtoint i8* %s.0218 to i64
  %sub.ptr.rhs.cast159 = ptrtoint i8* %start to i64
  %sub.ptr.sub160 = sub i64 %sub.ptr.lhs.cast158, %sub.ptr.rhs.cast159
  store i64 %sub.ptr.sub160, i64* %len_p, align 8, !tbaa !0
  %tobool161 = icmp eq i8 %overflowed.0220, 0
  br i1 %tobool161, label %if.then162, label %if.end163

if.then162:                                       ; preds = %if.end157.thread, %if.end157
  %value.0214256266 = phi i64 [ 0, %if.end157.thread ], [ %value.0214, %if.end157 ]
  store i32 0, i32* %flags, align 4, !tbaa !3
  br label %return

if.end163:                                        ; preds = %if.end157
  store i32 2, i32* %flags, align 4, !tbaa !3
  %tobool164 = icmp eq double* %result, null
  br i1 %tobool164, label %return, label %if.then165

if.then165:                                       ; preds = %if.end163
  store double %value_nv.0216, double* %result, align 8, !tbaa !5
  br label %return

return:                                           ; preds = %if.then165, %if.end163, %if.then162
  %retval.0 = phi i64 [ %value.0214256266, %if.then162 ], [ -1, %if.end163 ], [ -1, %if.then165 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_grok_oct(i8* %start, i64* nocapture %len_p, i32* nocapture %flags, double* %result) #1 {
entry:
  %0 = load i64* %len_p, align 8, !tbaa !0
  %tobool192 = icmp eq i64 %0, 0
  br i1 %tobool192, label %if.end135.thread, label %land.rhs.lr.ph

if.end135.thread:                                 ; preds = %entry
  store i64 0, i64* %len_p, align 8, !tbaa !0
  br label %if.then137

land.rhs.lr.ph:                                   ; preds = %entry
  %1 = load i32* %flags, align 4, !tbaa !3
  %conv = and i32 %1, 1
  %tobool39 = icmp eq i32 %conv, 0
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.inc
  %dec199.in = phi i64 [ %0, %land.rhs.lr.ph ], [ %len.1, %for.inc ]
  %overflowed.0198 = phi i8 [ 0, %land.rhs.lr.ph ], [ %overflowed.2, %for.inc ]
  %s.0197 = phi i8* [ %start, %land.rhs.lr.ph ], [ %incdec.ptr94, %for.inc ]
  %value_nv.0196 = phi double [ 0.000000e+00, %land.rhs.lr.ph ], [ %value_nv.2, %for.inc ]
  %value.0194 = phi i64 [ 0, %land.rhs.lr.ph ], [ %value.1, %for.inc ]
  %dec199 = add i64 %dec199.in, -1
  %2 = load i8* %s.0197, align 1, !tbaa !1
  %tobool2 = icmp eq i8 %2, 0
  br i1 %tobool2, label %for.end, label %for.body

for.body:                                         ; preds = %land.rhs
  %conv1 = sext i8 %2 to i32
  %sub = add nsw i32 %conv1, -48
  %3 = icmp ult i32 %sub, 8
  br i1 %3, label %redo, label %if.end32

redo:                                             ; preds = %for.body, %if.then51
  %len.1 = phi i64 [ %dec199, %for.body ], [ %dec52, %if.then51 ]
  %s.1 = phi i8* [ %s.0197, %for.body ], [ %arrayidx41, %if.then51 ]
  %digit.0 = phi i32 [ %sub, %for.body ], [ %sub43, %if.then51 ]
  %tobool7 = icmp eq i8 %overflowed.0198, 0
  br i1 %tobool7, label %if.then8, label %if.end30

if.then8:                                         ; preds = %redo
  %cmp9 = icmp ult i64 %value.0194, 2305843009213693952
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then8
  %shl = shl i64 %value.0194, 3
  %conv12 = sext i32 %digit.0 to i64
  %or = or i64 %conv12, %shl
  br label %for.inc

if.end:                                           ; preds = %if.then8
  %4 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings = getelementptr inbounds %struct.cop* %4, i64 0, i32 14
  %5 = load %struct.sv** %cop_warnings, align 8, !tbaa !4
  %cmp13 = icmp eq %struct.sv* %5, null
  br i1 %cmp13, label %if.then27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings15 = getelementptr inbounds %struct.cop* %6, i64 0, i32 14
  %7 = load %struct.sv** %cop_warnings15, align 8, !tbaa !4
  %cmp16 = icmp eq %struct.sv* %7, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp16, label %if.then27, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %8 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings19 = getelementptr inbounds %struct.cop* %8, i64 0, i32 14
  %9 = load %struct.sv** %cop_warnings19, align 8, !tbaa !4
  %cmp20 = icmp eq %struct.sv* %9, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp20, label %if.end28, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %lor.lhs.false18
  %10 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings23 = getelementptr inbounds %struct.cop* %10, i64 0, i32 14
  %11 = load %struct.sv** %cop_warnings23, align 8, !tbaa !4
  %sv_any = getelementptr inbounds %struct.sv* %11, i64 0, i32 0
  %12 = load i8** %sv_any, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %12 to i8**
  %13 = load i8** %xpv_pv, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8* %13, i64 3
  %14 = load i8* %arrayidx, align 1, !tbaa !1
  %and25 = and i8 %14, 64
  %tobool26 = icmp eq i8 %and25, 0
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %land.lhs.true22, %lor.lhs.false, %if.end
  tail call void (i32, i8*, ...)* @Perl_warner(i32 15, i8* getelementptr inbounds ([33 x i8]* @.str6, i64 0, i64 0)) #5
  br label %if.end28

if.end28:                                         ; preds = %land.lhs.true22, %lor.lhs.false18, %if.then27
  %conv29 = uitofp i64 %value.0194 to double
  br label %if.end30

if.end30:                                         ; preds = %redo, %if.end28
  %value_nv.1 = phi double [ %value_nv.0196, %redo ], [ %conv29, %if.end28 ]
  %overflowed.1 = phi i8 [ %overflowed.0198, %redo ], [ 1, %if.end28 ]
  %mul = fmul double %value_nv.1, 8.000000e+00
  %conv31 = sitofp i32 %digit.0 to double
  %add = fadd double %conv31, %mul
  br label %for.inc

if.end32:                                         ; preds = %for.body
  %cmp33 = icmp ne i32 %sub, 47
  %tobool36 = icmp eq i64 %dec199, 0
  %or.cond = or i1 %cmp33, %tobool36
  %or.cond179 = or i1 %or.cond, %tobool39
  br i1 %or.cond179, label %if.end53, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %if.end32
  %arrayidx41 = getelementptr inbounds i8* %s.0197, i64 1
  %15 = load i8* %arrayidx41, align 1, !tbaa !1
  %conv42 = sext i8 %15 to i32
  %sub43 = add nsw i32 %conv42, -48
  %tobool44 = icmp ne i32 %sub43, 0
  %16 = icmp ult i32 %sub43, 8
  %or.cond180 = and i1 %tobool44, %16
  br i1 %or.cond180, label %if.then51, label %if.end53

if.then51:                                        ; preds = %land.lhs.true40
  %dec52 = add i64 %dec199.in, -2
  br label %redo

if.end53:                                         ; preds = %land.lhs.true40, %if.end32
  %digit.1 = phi i32 [ %sub43, %land.lhs.true40 ], [ %sub, %if.end32 ]
  %17 = and i32 %digit.1, -2
  %18 = icmp eq i32 %17, 8
  br i1 %18, label %if.then59, label %for.end

if.then59:                                        ; preds = %if.end53
  %19 = load i32* %flags, align 4, !tbaa !3
  %and60 = and i32 %19, 4
  %tobool61 = icmp eq i32 %and60, 0
  br i1 %tobool61, label %land.lhs.true62, label %for.end

land.lhs.true62:                                  ; preds = %if.then59
  %20 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings63 = getelementptr inbounds %struct.cop* %20, i64 0, i32 14
  %21 = load %struct.sv** %cop_warnings63, align 8, !tbaa !4
  %cmp64 = icmp eq %struct.sv* %21, null
  br i1 %cmp64, label %lor.lhs.false82, label %land.lhs.true66

land.lhs.true66:                                  ; preds = %land.lhs.true62
  %22 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings67 = getelementptr inbounds %struct.cop* %22, i64 0, i32 14
  %23 = load %struct.sv** %cop_warnings67, align 8, !tbaa !4
  %cmp68 = icmp eq %struct.sv* %23, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp68, label %lor.lhs.false82, label %land.lhs.true70

land.lhs.true70:                                  ; preds = %land.lhs.true66
  %24 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings71 = getelementptr inbounds %struct.cop* %24, i64 0, i32 14
  %25 = load %struct.sv** %cop_warnings71, align 8, !tbaa !4
  %cmp72 = icmp eq %struct.sv* %25, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp72, label %if.then90, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %land.lhs.true70
  %26 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings75 = getelementptr inbounds %struct.cop* %26, i64 0, i32 14
  %27 = load %struct.sv** %cop_warnings75, align 8, !tbaa !4
  %sv_any76 = getelementptr inbounds %struct.sv* %27, i64 0, i32 0
  %28 = load i8** %sv_any76, align 8, !tbaa !4
  %xpv_pv77 = bitcast i8* %28 to i8**
  %29 = load i8** %xpv_pv77, align 8, !tbaa !4
  %arrayidx78 = getelementptr inbounds i8* %29, i64 7
  %30 = load i8* %arrayidx78, align 1, !tbaa !1
  %and80 = and i8 %30, 64
  %tobool81 = icmp eq i8 %and80, 0
  br i1 %tobool81, label %lor.lhs.false82, label %if.then90

lor.lhs.false82:                                  ; preds = %lor.lhs.false74, %land.lhs.true66, %land.lhs.true62
  %31 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings83 = getelementptr inbounds %struct.cop* %31, i64 0, i32 14
  %32 = load %struct.sv** %cop_warnings83, align 8, !tbaa !4
  %cmp84 = icmp eq %struct.sv* %32, null
  br i1 %cmp84, label %land.lhs.true86, label %for.end

land.lhs.true86:                                  ; preds = %lor.lhs.false82
  %33 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and88 = and i8 %33, 1
  %tobool89 = icmp eq i8 %and88, 0
  br i1 %tobool89, label %for.end, label %if.then90

if.then90:                                        ; preds = %lor.lhs.false74, %land.lhs.true86, %land.lhs.true70
  %34 = load i8* %s.0197, align 1, !tbaa !1
  %conv91 = sext i8 %34 to i32
  tail call void (i32, i8*, ...)* @Perl_warner(i32 31, i8* getelementptr inbounds ([33 x i8]* @.str7, i64 0, i64 0), i32 %conv91) #5
  br label %for.end

for.inc:                                          ; preds = %if.end30, %if.then11
  %value.1 = phi i64 [ %value.0194, %if.end30 ], [ %or, %if.then11 ]
  %value_nv.2 = phi double [ %add, %if.end30 ], [ %value_nv.0196, %if.then11 ]
  %overflowed.2 = phi i8 [ %overflowed.1, %if.end30 ], [ 0, %if.then11 ]
  %incdec.ptr94 = getelementptr inbounds i8* %s.1, i64 1
  %tobool = icmp eq i64 %len.1, 0
  br i1 %tobool, label %for.end, label %land.rhs

for.end:                                          ; preds = %land.rhs, %for.inc, %land.lhs.true86, %if.then59, %if.end53, %if.then90, %lor.lhs.false82
  %overflowed.0190 = phi i8 [ %overflowed.0198, %land.lhs.true86 ], [ %overflowed.0198, %if.then59 ], [ %overflowed.0198, %if.end53 ], [ %overflowed.0198, %if.then90 ], [ %overflowed.0198, %lor.lhs.false82 ], [ %overflowed.0198, %land.rhs ], [ %overflowed.2, %for.inc ]
  %s.0188 = phi i8* [ %s.0197, %land.lhs.true86 ], [ %s.0197, %if.then59 ], [ %s.0197, %if.end53 ], [ %s.0197, %if.then90 ], [ %s.0197, %lor.lhs.false82 ], [ %s.0197, %land.rhs ], [ %incdec.ptr94, %for.inc ]
  %value_nv.0186 = phi double [ %value_nv.0196, %land.lhs.true86 ], [ %value_nv.0196, %if.then59 ], [ %value_nv.0196, %if.end53 ], [ %value_nv.0196, %if.then90 ], [ %value_nv.0196, %lor.lhs.false82 ], [ %value_nv.0196, %land.rhs ], [ %value_nv.2, %for.inc ]
  %value.0184 = phi i64 [ %value.0194, %land.lhs.true86 ], [ %value.0194, %if.then59 ], [ %value.0194, %if.end53 ], [ %value.0194, %if.then90 ], [ %value.0194, %lor.lhs.false82 ], [ %value.0194, %land.rhs ], [ %value.1, %for.inc ]
  %tobool96 = icmp ne i8 %overflowed.0190, 0
  %cmp98 = fcmp ogt double %value_nv.0186, 0x41EFFFFFFFE00000
  %or.cond181 = and i1 %tobool96, %cmp98
  br i1 %or.cond181, label %if.then105, label %lor.lhs.false100

lor.lhs.false100:                                 ; preds = %for.end
  %tobool101 = icmp eq i8 %overflowed.0190, 0
  %cmp103 = icmp ugt i64 %value.0184, 4294967295
  %or.cond182 = and i1 %tobool101, %cmp103
  br i1 %or.cond182, label %if.then105, label %if.end135

if.then105:                                       ; preds = %lor.lhs.false100, %for.end
  %35 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings106 = getelementptr inbounds %struct.cop* %35, i64 0, i32 14
  %36 = load %struct.sv** %cop_warnings106, align 8, !tbaa !4
  %cmp107 = icmp eq %struct.sv* %36, null
  br i1 %cmp107, label %lor.lhs.false125, label %land.lhs.true109

land.lhs.true109:                                 ; preds = %if.then105
  %37 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings110 = getelementptr inbounds %struct.cop* %37, i64 0, i32 14
  %38 = load %struct.sv** %cop_warnings110, align 8, !tbaa !4
  %cmp111 = icmp eq %struct.sv* %38, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp111, label %lor.lhs.false125, label %land.lhs.true113

land.lhs.true113:                                 ; preds = %land.lhs.true109
  %39 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings114 = getelementptr inbounds %struct.cop* %39, i64 0, i32 14
  %40 = load %struct.sv** %cop_warnings114, align 8, !tbaa !4
  %cmp115 = icmp eq %struct.sv* %40, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp115, label %if.then133, label %lor.lhs.false117

lor.lhs.false117:                                 ; preds = %land.lhs.true113
  %41 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings118 = getelementptr inbounds %struct.cop* %41, i64 0, i32 14
  %42 = load %struct.sv** %cop_warnings118, align 8, !tbaa !4
  %sv_any119 = getelementptr inbounds %struct.sv* %42, i64 0, i32 0
  %43 = load i8** %sv_any119, align 8, !tbaa !4
  %xpv_pv120 = bitcast i8* %43 to i8**
  %44 = load i8** %xpv_pv120, align 8, !tbaa !4
  %arrayidx121 = getelementptr inbounds i8* %44, i64 4
  %45 = load i8* %arrayidx121, align 1, !tbaa !1
  %and123 = and i8 %45, 4
  %tobool124 = icmp eq i8 %and123, 0
  br i1 %tobool124, label %lor.lhs.false125, label %if.then133

lor.lhs.false125:                                 ; preds = %lor.lhs.false117, %land.lhs.true109, %if.then105
  %46 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !4
  %cop_warnings126 = getelementptr inbounds %struct.cop* %46, i64 0, i32 14
  %47 = load %struct.sv** %cop_warnings126, align 8, !tbaa !4
  %cmp127 = icmp eq %struct.sv* %47, null
  br i1 %cmp127, label %land.lhs.true129, label %if.end135

land.lhs.true129:                                 ; preds = %lor.lhs.false125
  %48 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and131 = and i8 %48, 1
  %tobool132 = icmp eq i8 %and131, 0
  br i1 %tobool132, label %if.end135, label %if.then133

if.then133:                                       ; preds = %lor.lhs.false117, %land.lhs.true129, %land.lhs.true113
  tail call void (i32, i8*, ...)* @Perl_warner(i32 17, i8* getelementptr inbounds ([41 x i8]* @.str8, i64 0, i64 0)) #5
  br label %if.end135

if.end135:                                        ; preds = %land.lhs.true129, %lor.lhs.false100, %lor.lhs.false125, %if.then133
  %sub.ptr.lhs.cast = ptrtoint i8* %s.0188 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %start to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %len_p, align 8, !tbaa !0
  %tobool136 = icmp eq i8 %overflowed.0190, 0
  br i1 %tobool136, label %if.then137, label %if.end138

if.then137:                                       ; preds = %if.end135.thread, %if.end135
  %value.0184226236 = phi i64 [ 0, %if.end135.thread ], [ %value.0184, %if.end135 ]
  store i32 0, i32* %flags, align 4, !tbaa !3
  br label %return

if.end138:                                        ; preds = %if.end135
  store i32 2, i32* %flags, align 4, !tbaa !3
  %tobool139 = icmp eq double* %result, null
  br i1 %tobool139, label %return, label %if.then140

if.then140:                                       ; preds = %if.end138
  store double %value_nv.0186, double* %result, align 8, !tbaa !5
  br label %return

return:                                           ; preds = %if.then140, %if.end138, %if.then137
  %retval.0 = phi i64 [ %value.0184226236, %if.then137 ], [ -1, %if.end138 ], [ -1, %if.then140 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define double @Perl_scan_bin(i8* %start, i64 %len, i64* nocapture %retlen) #1 {
entry:
  %len.addr = alloca i64, align 8
  %rnv = alloca double, align 8
  %flags = alloca i32, align 4
  store i64 %len, i64* %len.addr, align 8, !tbaa !0
  %0 = load i64* %retlen, align 8, !tbaa !0
  %tobool = icmp ne i64 %0, 0
  %cond = zext i1 %tobool to i32
  store i32 %cond, i32* %flags, align 4, !tbaa !3
  %call = call i64 @Perl_grok_bin(i8* %start, i64* %len.addr, i32* %flags, double* %rnv) #6
  %1 = load i64* %len.addr, align 8, !tbaa !0
  store i64 %1, i64* %retlen, align 8, !tbaa !0
  %2 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %2, 2
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %3 = load double* %rnv, align 8, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %conv = uitofp i64 %call to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi double [ %3, %cond.true ], [ %conv, %cond.false ]
  ret double %cond2
}

; Function Attrs: nounwind optsize uwtable
define double @Perl_scan_oct(i8* %start, i64 %len, i64* nocapture %retlen) #1 {
entry:
  %len.addr = alloca i64, align 8
  %rnv = alloca double, align 8
  %flags = alloca i32, align 4
  store i64 %len, i64* %len.addr, align 8, !tbaa !0
  %0 = load i64* %retlen, align 8, !tbaa !0
  %tobool = icmp ne i64 %0, 0
  %cond = zext i1 %tobool to i32
  store i32 %cond, i32* %flags, align 4, !tbaa !3
  %call = call i64 @Perl_grok_oct(i8* %start, i64* %len.addr, i32* %flags, double* %rnv) #6
  %1 = load i64* %len.addr, align 8, !tbaa !0
  store i64 %1, i64* %retlen, align 8, !tbaa !0
  %2 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %2, 2
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %3 = load double* %rnv, align 8, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %conv = uitofp i64 %call to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi double [ %3, %cond.true ], [ %conv, %cond.false ]
  ret double %cond2
}

; Function Attrs: nounwind optsize uwtable
define double @Perl_scan_hex(i8* %start, i64 %len, i64* nocapture %retlen) #1 {
entry:
  %len.addr = alloca i64, align 8
  %rnv = alloca double, align 8
  %flags = alloca i32, align 4
  store i64 %len, i64* %len.addr, align 8, !tbaa !0
  %0 = load i64* %retlen, align 8, !tbaa !0
  %tobool = icmp ne i64 %0, 0
  %cond = zext i1 %tobool to i32
  store i32 %cond, i32* %flags, align 4, !tbaa !3
  %call = call i64 @Perl_grok_hex(i8* %start, i64* %len.addr, i32* %flags, double* %rnv) #6
  %1 = load i64* %len.addr, align 8, !tbaa !0
  store i64 %1, i64* %retlen, align 8, !tbaa !0
  %2 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %2, 2
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %3 = load double* %rnv, align 8, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %conv = uitofp i64 %call to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi double [ %3, %cond.true ], [ %conv, %cond.false ]
  ret double %cond2
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_grok_numeric_radix(i8** nocapture %sp, i8* %send) #1 {
entry:
  %0 = load i8** %sp, align 8, !tbaa !4
  %cmp = icmp ult i8* %0, %send
  br i1 %cmp, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %entry
  %1 = load i8* %0, align 1, !tbaa !1
  %cmp1 = icmp eq i8 %1, 46
  br i1 %cmp1, label %if.then, label %return

if.then:                                          ; preds = %land.lhs.true
  %incdec.ptr = getelementptr inbounds i8* %0, i64 1
  store i8* %incdec.ptr, i8** %sp, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i8 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_grok_number(i8* %pv, i64 %len, i64* %valuep) #1 {
entry:
  %add.ptr = getelementptr inbounds i8* %pv, i64 %len
  %cmp747 = icmp sgt i64 %len, 0
  br i1 %cmp747, label %land.rhs, label %while.end

while.cond:                                       ; preds = %land.end
  %cmp = icmp ult i8* %incdec.ptr, %add.ptr
  br i1 %cmp, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %entry, %while.cond
  %incdec.ptr.i676710748 = phi i8* [ %incdec.ptr, %while.cond ], [ %pv, %entry ]
  %0 = load i8* %incdec.ptr.i676710748, align 1, !tbaa !1
  %switch.tableidx = add i8 %0, -9
  %1 = icmp ult i8 %switch.tableidx, 24
  br i1 %1, label %land.end, label %while.end

land.end:                                         ; preds = %land.rhs
  %switch.cast = zext i8 %switch.tableidx to i24
  %switch.downshift = lshr i24 -8388581, %switch.cast
  %2 = and i24 %switch.downshift, 1
  %switch.masked = icmp eq i24 %2, 0
  %incdec.ptr = getelementptr inbounds i8* %incdec.ptr.i676710748, i64 1
  br i1 %switch.masked, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond, %land.end, %land.rhs, %entry
  %incdec.ptr.i676710.lcssa = phi i8* [ %pv, %entry ], [ %incdec.ptr.i676710748, %land.rhs ], [ %incdec.ptr.i676710748, %land.end ], [ %incdec.ptr, %while.cond ]
  %cmp17 = icmp eq i8* %incdec.ptr.i676710.lcssa, %add.ptr
  br i1 %cmp17, label %return, label %if.else

if.else:                                          ; preds = %while.end
  %3 = load i8* %incdec.ptr.i676710.lcssa, align 1, !tbaa !1
  switch i8 %3, label %if.end31 [
    i8 45, label %if.then22
    i8 43, label %if.then28
  ]

if.then22:                                        ; preds = %if.else
  %incdec.ptr23 = getelementptr inbounds i8* %incdec.ptr.i676710.lcssa, i64 1
  br label %if.end31

if.then28:                                        ; preds = %if.else
  %incdec.ptr29 = getelementptr inbounds i8* %incdec.ptr.i676710.lcssa, i64 1
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then22, %if.then28
  %incdec.ptr.i676709 = phi i8* [ %incdec.ptr23, %if.then22 ], [ %incdec.ptr29, %if.then28 ], [ %incdec.ptr.i676710.lcssa, %if.else ]
  %numtype.0 = phi i32 [ 8, %if.then22 ], [ 0, %if.then28 ], [ 0, %if.else ]
  %cmp32 = icmp eq i8* %incdec.ptr.i676709, %add.ptr
  br i1 %cmp32, label %return, label %if.end35

if.end35:                                         ; preds = %if.end31
  %4 = load i8* %incdec.ptr.i676709, align 1, !tbaa !1
  %.off = add i8 %4, -48
  %5 = icmp ult i8 %.off, 10
  br i1 %5, label %if.then42, label %if.else263

if.then42:                                        ; preds = %if.end35
  %conv36 = sext i8 %4 to i64
  %sub = add i64 %conv36, -48
  %incdec.ptr45 = getelementptr inbounds i8* %incdec.ptr.i676709, i64 1
  %cmp46 = icmp ult i8* %incdec.ptr45, %add.ptr
  br i1 %cmp46, label %if.then48, label %if.end239

if.then48:                                        ; preds = %if.then42
  %6 = load i8* %incdec.ptr45, align 1, !tbaa !1
  %conv49 = sext i8 %6 to i32
  %sub50 = add nsw i32 %conv49, -48
  %7 = icmp ult i32 %sub50, 10
  br i1 %7, label %if.then56, label %if.end239

if.then56:                                        ; preds = %if.then48
  %mul = mul i64 %sub, 10
  %conv57 = sext i32 %sub50 to i64
  %add = add i64 %conv57, %mul
  %incdec.ptr58 = getelementptr inbounds i8* %incdec.ptr.i676709, i64 2
  %cmp59 = icmp ult i8* %incdec.ptr58, %add.ptr
  br i1 %cmp59, label %if.then61, label %if.end239

if.then61:                                        ; preds = %if.then56
  %8 = load i8* %incdec.ptr58, align 1, !tbaa !1
  %conv62 = sext i8 %8 to i32
  %sub63 = add nsw i32 %conv62, -48
  %9 = icmp ult i32 %sub63, 10
  br i1 %9, label %if.then69, label %if.end239

if.then69:                                        ; preds = %if.then61
  %mul70 = mul i64 %add, 10
  %conv71 = sext i32 %sub63 to i64
  %add72 = add i64 %conv71, %mul70
  %incdec.ptr73 = getelementptr inbounds i8* %incdec.ptr.i676709, i64 3
  %cmp74 = icmp ult i8* %incdec.ptr73, %add.ptr
  br i1 %cmp74, label %if.then76, label %if.end239

if.then76:                                        ; preds = %if.then69
  %10 = load i8* %incdec.ptr73, align 1, !tbaa !1
  %conv77 = sext i8 %10 to i32
  %sub78 = add nsw i32 %conv77, -48
  %11 = icmp ult i32 %sub78, 10
  br i1 %11, label %if.then84, label %if.end239

if.then84:                                        ; preds = %if.then76
  %mul85 = mul i64 %add72, 10
  %conv86 = sext i32 %sub78 to i64
  %add87 = add i64 %conv86, %mul85
  %incdec.ptr88 = getelementptr inbounds i8* %incdec.ptr.i676709, i64 4
  %cmp89 = icmp ult i8* %incdec.ptr88, %add.ptr
  br i1 %cmp89, label %if.then91, label %if.end239

if.then91:                                        ; preds = %if.then84
  %12 = load i8* %incdec.ptr88, align 1, !tbaa !1
  %conv92 = sext i8 %12 to i32
  %sub93 = add nsw i32 %conv92, -48
  %13 = icmp ult i32 %sub93, 10
  br i1 %13, label %if.then99, label %if.end239

if.then99:                                        ; preds = %if.then91
  %mul100 = mul i64 %add87, 10
  %conv101 = sext i32 %sub93 to i64
  %add102 = add i64 %conv101, %mul100
  %incdec.ptr103 = getelementptr inbounds i8* %incdec.ptr.i676709, i64 5
  %cmp104 = icmp ult i8* %incdec.ptr103, %add.ptr
  br i1 %cmp104, label %if.then106, label %if.end239

if.then106:                                       ; preds = %if.then99
  %14 = load i8* %incdec.ptr103, align 1, !tbaa !1
  %conv107 = sext i8 %14 to i32
  %sub108 = add nsw i32 %conv107, -48
  %15 = icmp ult i32 %sub108, 10
  br i1 %15, label %if.then114, label %if.end239

if.then114:                                       ; preds = %if.then106
  %mul115 = mul i64 %add102, 10
  %conv116 = sext i32 %sub108 to i64
  %add117 = add i64 %conv116, %mul115
  %incdec.ptr118 = getelementptr inbounds i8* %incdec.ptr.i676709, i64 6
  %cmp119 = icmp ult i8* %incdec.ptr118, %add.ptr
  br i1 %cmp119, label %if.then121, label %if.end239

if.then121:                                       ; preds = %if.then114
  %16 = load i8* %incdec.ptr118, align 1, !tbaa !1
  %conv122 = sext i8 %16 to i32
  %sub123 = add nsw i32 %conv122, -48
  %17 = icmp ult i32 %sub123, 10
  br i1 %17, label %if.then129, label %if.end239

if.then129:                                       ; preds = %if.then121
  %mul130 = mul i64 %add117, 10
  %conv131 = sext i32 %sub123 to i64
  %add132 = add i64 %conv131, %mul130
  %incdec.ptr133 = getelementptr inbounds i8* %incdec.ptr.i676709, i64 7
  %cmp134 = icmp ult i8* %incdec.ptr133, %add.ptr
  br i1 %cmp134, label %if.then136, label %if.end239

if.then136:                                       ; preds = %if.then129
  %18 = load i8* %incdec.ptr133, align 1, !tbaa !1
  %conv137 = sext i8 %18 to i32
  %sub138 = add nsw i32 %conv137, -48
  %19 = icmp ult i32 %sub138, 10
  br i1 %19, label %if.then144, label %if.end239

if.then144:                                       ; preds = %if.then136
  %mul145 = mul i64 %add132, 10
  %conv146 = sext i32 %sub138 to i64
  %add147 = add i64 %conv146, %mul145
  %incdec.ptr148 = getelementptr inbounds i8* %incdec.ptr.i676709, i64 8
  %cmp149 = icmp ult i8* %incdec.ptr148, %add.ptr
  br i1 %cmp149, label %if.then151, label %if.end239

if.then151:                                       ; preds = %if.then144
  %20 = load i8* %incdec.ptr148, align 1, !tbaa !1
  %conv152 = sext i8 %20 to i32
  %sub153 = add nsw i32 %conv152, -48
  %21 = icmp ult i32 %sub153, 10
  br i1 %21, label %if.then159, label %if.end239

if.then159:                                       ; preds = %if.then151
  %mul160 = mul i64 %add147, 10
  %conv161 = sext i32 %sub153 to i64
  %add162 = add i64 %conv161, %mul160
  %incdec.ptr163 = getelementptr inbounds i8* %incdec.ptr.i676709, i64 9
  %cmp164 = icmp ult i8* %incdec.ptr163, %add.ptr
  br i1 %cmp164, label %while.cond169, label %if.end239

while.cond169:                                    ; preds = %if.then159, %while.body187
  %value.0 = phi i64 [ %add190, %while.body187 ], [ %add162, %if.then159 ]
  %digit.0.in.in.in = phi i8* [ %incdec.ptr191, %while.body187 ], [ %incdec.ptr163, %if.then159 ]
  %digit.0.in.in = load i8* %digit.0.in.in.in, align 1
  %digit.0.in = sext i8 %digit.0.in.in to i32
  %digit.0 = add nsw i32 %digit.0.in, -48
  %22 = icmp ult i32 %digit.0, 10
  br i1 %22, label %land.rhs175, label %if.end239

land.rhs175:                                      ; preds = %while.cond169
  %cmp176 = icmp ult i64 %value.0, 1844674407370955161
  br i1 %cmp176, label %while.body187, label %lor.rhs178

lor.rhs178:                                       ; preds = %land.rhs175
  %cmp179 = icmp eq i64 %value.0, 1844674407370955161
  %cmp182 = icmp slt i32 %digit.0, 6
  %or.cond659 = and i1 %cmp179, %cmp182
  br i1 %or.cond659, label %while.body187, label %while.end199

while.body187:                                    ; preds = %lor.rhs178, %land.rhs175
  %mul188 = mul i64 %value.0, 10
  %conv189 = sext i32 %digit.0 to i64
  %add190 = add i64 %conv189, %mul188
  %incdec.ptr191 = getelementptr inbounds i8* %digit.0.in.in.in, i64 1
  %cmp192 = icmp ult i8* %incdec.ptr191, %add.ptr
  br i1 %cmp192, label %while.cond169, label %while.end199

while.end199:                                     ; preds = %lor.rhs178, %while.body187
  %incdec.ptr.i676713 = phi i8* [ %incdec.ptr191, %while.body187 ], [ %digit.0.in.in.in, %lor.rhs178 ]
  %value.1 = phi i64 [ %add190, %while.body187 ], [ %value.0, %lor.rhs178 ]
  %cmp206 = icmp ult i8* %incdec.ptr.i676713, %add.ptr
  br i1 %cmp206, label %do.body, label %if.end239

do.body:                                          ; preds = %while.end199, %land.rhs212
  %incdec.ptr.i676722 = phi i8* [ %incdec.ptr209, %land.rhs212 ], [ %incdec.ptr.i676713, %while.end199 ]
  %incdec.ptr209 = getelementptr inbounds i8* %incdec.ptr.i676722, i64 1
  %cmp210 = icmp ult i8* %incdec.ptr209, %add.ptr
  br i1 %cmp210, label %land.rhs212, label %do.end

land.rhs212:                                      ; preds = %do.body
  %23 = load i8* %incdec.ptr209, align 1, !tbaa !1
  %.off741 = add i8 %23, -48
  %24 = icmp ult i8 %.off741, 10
  br i1 %24, label %do.body, label %do.end

do.end:                                           ; preds = %land.rhs212, %do.body
  %or = or i32 %numtype.0, 2
  br label %skip_value

if.end239:                                        ; preds = %while.cond169, %if.then48, %if.then61, %if.then76, %if.then91, %if.then106, %if.then121, %if.then136, %if.then151, %while.end199, %if.then159, %if.then144, %if.then129, %if.then114, %if.then99, %if.then84, %if.then69, %if.then56, %if.then42
  %incdec.ptr.i676712 = phi i8* [ %incdec.ptr.i676713, %while.end199 ], [ %incdec.ptr163, %if.then159 ], [ %incdec.ptr148, %if.then151 ], [ %incdec.ptr148, %if.then144 ], [ %incdec.ptr133, %if.then136 ], [ %incdec.ptr133, %if.then129 ], [ %incdec.ptr118, %if.then121 ], [ %incdec.ptr118, %if.then114 ], [ %incdec.ptr103, %if.then106 ], [ %incdec.ptr103, %if.then99 ], [ %incdec.ptr88, %if.then91 ], [ %incdec.ptr88, %if.then84 ], [ %incdec.ptr73, %if.then76 ], [ %incdec.ptr73, %if.then69 ], [ %incdec.ptr58, %if.then61 ], [ %incdec.ptr58, %if.then56 ], [ %incdec.ptr45, %if.then48 ], [ %incdec.ptr45, %if.then42 ], [ %digit.0.in.in.in, %while.cond169 ]
  %value.2 = phi i64 [ %value.1, %while.end199 ], [ %add162, %if.then159 ], [ %add147, %if.then151 ], [ %add147, %if.then144 ], [ %add132, %if.then136 ], [ %add132, %if.then129 ], [ %add117, %if.then121 ], [ %add117, %if.then114 ], [ %add102, %if.then106 ], [ %add102, %if.then99 ], [ %add87, %if.then91 ], [ %add87, %if.then84 ], [ %add72, %if.then76 ], [ %add72, %if.then69 ], [ %add, %if.then61 ], [ %add, %if.then56 ], [ %sub, %if.then48 ], [ %sub, %if.then42 ], [ %value.0, %while.cond169 ]
  %or240 = or i32 %numtype.0, 1
  %tobool = icmp eq i64* %valuep, null
  br i1 %tobool, label %skip_value, label %if.then241

if.then241:                                       ; preds = %if.end239
  store i64 %value.2, i64* %valuep, align 8, !tbaa !0
  br label %skip_value

skip_value:                                       ; preds = %if.end239, %if.then241, %do.end
  %incdec.ptr.i676711 = phi i8* [ %incdec.ptr209, %do.end ], [ %incdec.ptr.i676712, %if.then241 ], [ %incdec.ptr.i676712, %if.end239 ]
  %numtype.1 = phi i32 [ %or, %do.end ], [ %or240, %if.then241 ], [ %or240, %if.end239 ]
  %cmp.i = icmp ult i8* %incdec.ptr.i676711, %add.ptr
  br i1 %cmp.i, label %land.lhs.true.i, label %if.else450

land.lhs.true.i:                                  ; preds = %skip_value
  %25 = load i8* %incdec.ptr.i676711, align 1, !tbaa !1
  %cmp1.i = icmp eq i8 %25, 46
  br i1 %cmp1.i, label %if.then244, label %if.else450

if.then244:                                       ; preds = %land.lhs.true.i
  %or245 = or i32 %numtype.1, 4
  br label %while.cond246

while.cond246:                                    ; preds = %land.rhs249, %if.then244
  %incdec.ptr.i676716.pn = phi i8* [ %incdec.ptr.i676711, %if.then244 ], [ %incdec.ptr.i676716, %land.rhs249 ]
  %incdec.ptr.i676716 = getelementptr inbounds i8* %incdec.ptr.i676716.pn, i64 1
  %cmp247 = icmp ult i8* %incdec.ptr.i676716, %add.ptr
  br i1 %cmp247, label %land.rhs249, label %if.else450

land.rhs249:                                      ; preds = %while.cond246
  %26 = load i8* %incdec.ptr.i676716, align 1, !tbaa !1
  %.off740 = add i8 %26, -48
  %27 = icmp ult i8 %.off740, 10
  br i1 %27, label %while.cond246, label %if.else450

if.else263:                                       ; preds = %if.end35
  %cmp.i673 = icmp ult i8* %incdec.ptr.i676709, %add.ptr
  %cmp1.i674 = icmp eq i8 %4, 46
  %or.cond735 = and i1 %cmp.i673, %cmp1.i674
  br i1 %or.cond735, label %if.then266, label %if.else300

if.then266:                                       ; preds = %if.else263
  %incdec.ptr.i676 = getelementptr inbounds i8* %incdec.ptr.i676709, i64 1
  %or267 = or i32 %numtype.0, 5
  %cmp268 = icmp ult i8* %incdec.ptr.i676, %add.ptr
  br i1 %cmp268, label %land.lhs.true270, label %return

land.lhs.true270:                                 ; preds = %if.then266
  %28 = load i8* %incdec.ptr.i676, align 1, !tbaa !1
  %.off736 = add i8 %28, -48
  %29 = icmp ult i8 %.off736, 10
  br i1 %29, label %do.body279, label %return

do.body279:                                       ; preds = %land.lhs.true270, %land.rhs284
  %incdec.ptr.i676721 = phi i8* [ %incdec.ptr280, %land.rhs284 ], [ %incdec.ptr.i676, %land.lhs.true270 ]
  %incdec.ptr280 = getelementptr inbounds i8* %incdec.ptr.i676721, i64 1
  %cmp282 = icmp ult i8* %incdec.ptr280, %add.ptr
  br i1 %cmp282, label %land.rhs284, label %do.end294

land.rhs284:                                      ; preds = %do.body279
  %30 = load i8* %incdec.ptr280, align 1, !tbaa !1
  %.off739 = add i8 %30, -48
  %31 = icmp ult i8 %.off739, 10
  br i1 %31, label %do.body279, label %do.end294

do.end294:                                        ; preds = %land.rhs284, %do.body279
  %tobool295 = icmp eq i64* %valuep, null
  br i1 %tobool295, label %if.else450, label %if.then296

if.then296:                                       ; preds = %do.end294
  store i64 0, i64* %valuep, align 8, !tbaa !0
  br label %if.else450

if.else300:                                       ; preds = %if.else263
  switch i8 %4, label %return [
    i8 73, label %if.then308
    i8 105, label %if.then308
    i8 78, label %if.then409
    i8 110, label %if.then409
  ]

if.then308:                                       ; preds = %if.else300, %if.else300
  %incdec.ptr309 = getelementptr inbounds i8* %incdec.ptr.i676709, i64 1
  %cmp310 = icmp eq i8* %incdec.ptr309, %add.ptr
  br i1 %cmp310, label %return, label %lor.lhs.false312

lor.lhs.false312:                                 ; preds = %if.then308
  %32 = load i8* %incdec.ptr309, align 1, !tbaa !1
  switch i8 %32, label %return [
    i8 78, label %if.end321
    i8 110, label %if.end321
  ]

if.end321:                                        ; preds = %lor.lhs.false312, %lor.lhs.false312
  %incdec.ptr322 = getelementptr inbounds i8* %incdec.ptr.i676709, i64 2
  %cmp323 = icmp eq i8* %incdec.ptr322, %add.ptr
  br i1 %cmp323, label %return, label %lor.lhs.false325

lor.lhs.false325:                                 ; preds = %if.end321
  %33 = load i8* %incdec.ptr322, align 1, !tbaa !1
  switch i8 %33, label %return [
    i8 70, label %if.end334
    i8 102, label %if.end334
  ]

if.end334:                                        ; preds = %lor.lhs.false325, %lor.lhs.false325
  %incdec.ptr335 = getelementptr inbounds i8* %incdec.ptr.i676709, i64 3
  %cmp336 = icmp ult i8* %incdec.ptr335, %add.ptr
  br i1 %cmp336, label %land.lhs.true338, label %if.then443

land.lhs.true338:                                 ; preds = %if.end334
  %34 = load i8* %incdec.ptr335, align 1, !tbaa !1
  switch i8 %34, label %if.then443 [
    i8 73, label %if.then346
    i8 105, label %if.then346
  ]

if.then346:                                       ; preds = %land.lhs.true338, %land.lhs.true338
  %incdec.ptr347 = getelementptr inbounds i8* %incdec.ptr.i676709, i64 4
  %cmp348 = icmp eq i8* %incdec.ptr347, %add.ptr
  br i1 %cmp348, label %return, label %lor.lhs.false350

lor.lhs.false350:                                 ; preds = %if.then346
  %35 = load i8* %incdec.ptr347, align 1, !tbaa !1
  switch i8 %35, label %return [
    i8 78, label %if.end359
    i8 110, label %if.end359
  ]

if.end359:                                        ; preds = %lor.lhs.false350, %lor.lhs.false350
  %incdec.ptr360 = getelementptr inbounds i8* %incdec.ptr.i676709, i64 5
  %cmp361 = icmp eq i8* %incdec.ptr360, %add.ptr
  br i1 %cmp361, label %return, label %lor.lhs.false363

lor.lhs.false363:                                 ; preds = %if.end359
  %36 = load i8* %incdec.ptr360, align 1, !tbaa !1
  switch i8 %36, label %return [
    i8 73, label %if.end372
    i8 105, label %if.end372
  ]

if.end372:                                        ; preds = %lor.lhs.false363, %lor.lhs.false363
  %incdec.ptr373 = getelementptr inbounds i8* %incdec.ptr.i676709, i64 6
  %cmp374 = icmp eq i8* %incdec.ptr373, %add.ptr
  br i1 %cmp374, label %return, label %lor.lhs.false376

lor.lhs.false376:                                 ; preds = %if.end372
  %37 = load i8* %incdec.ptr373, align 1, !tbaa !1
  switch i8 %37, label %return [
    i8 84, label %if.end385
    i8 116, label %if.end385
  ]

if.end385:                                        ; preds = %lor.lhs.false376, %lor.lhs.false376
  %incdec.ptr386 = getelementptr inbounds i8* %incdec.ptr.i676709, i64 7
  %cmp387 = icmp eq i8* %incdec.ptr386, %add.ptr
  br i1 %cmp387, label %return, label %lor.lhs.false389

lor.lhs.false389:                                 ; preds = %if.end385
  %38 = load i8* %incdec.ptr386, align 1, !tbaa !1
  switch i8 %38, label %return [
    i8 89, label %if.end398
    i8 121, label %if.end398
  ]

if.end398:                                        ; preds = %lor.lhs.false389, %lor.lhs.false389
  %incdec.ptr399 = getelementptr inbounds i8* %incdec.ptr.i676709, i64 8
  br label %if.then443

if.then409:                                       ; preds = %if.else300, %if.else300
  %incdec.ptr410 = getelementptr inbounds i8* %incdec.ptr.i676709, i64 1
  %cmp411 = icmp eq i8* %incdec.ptr410, %add.ptr
  br i1 %cmp411, label %return, label %lor.lhs.false413

lor.lhs.false413:                                 ; preds = %if.then409
  %39 = load i8* %incdec.ptr410, align 1, !tbaa !1
  switch i8 %39, label %return [
    i8 65, label %if.end422
    i8 97, label %if.end422
  ]

if.end422:                                        ; preds = %lor.lhs.false413, %lor.lhs.false413
  %incdec.ptr423 = getelementptr inbounds i8* %incdec.ptr.i676709, i64 2
  %cmp424 = icmp eq i8* %incdec.ptr423, %add.ptr
  br i1 %cmp424, label %return, label %lor.lhs.false426

lor.lhs.false426:                                 ; preds = %if.end422
  %40 = load i8* %incdec.ptr423, align 1, !tbaa !1
  switch i8 %40, label %return [
    i8 78, label %if.then447
    i8 110, label %if.then447
  ]

if.then443:                                       ; preds = %land.lhs.true338, %if.end398, %if.end334
  %incdec.ptr.i676715 = phi i8* [ %incdec.ptr335, %land.lhs.true338 ], [ %incdec.ptr399, %if.end398 ], [ %incdec.ptr335, %if.end334 ]
  %or444 = or i32 %numtype.0, 20
  br label %while.cond511.preheader

if.then447:                                       ; preds = %lor.lhs.false426, %lor.lhs.false426
  %incdec.ptr436 = getelementptr inbounds i8* %incdec.ptr.i676709, i64 3
  %or449 = or i32 %numtype.0, 36
  br label %while.cond511.preheader

if.else450:                                       ; preds = %land.rhs249, %while.cond246, %skip_value, %land.lhs.true.i, %if.then296, %do.end294
  %incdec.ptr.i676715.ph.ph = phi i8* [ %incdec.ptr280, %if.then296 ], [ %incdec.ptr280, %do.end294 ], [ %incdec.ptr.i676711, %land.lhs.true.i ], [ %incdec.ptr.i676711, %skip_value ], [ %incdec.ptr.i676716, %while.cond246 ], [ %incdec.ptr.i676716, %land.rhs249 ]
  %numtype.2.ph.ph = phi i32 [ %or267, %if.then296 ], [ %or267, %do.end294 ], [ %numtype.1, %land.lhs.true.i ], [ %numtype.1, %skip_value ], [ %or245, %while.cond246 ], [ %or245, %land.rhs249 ]
  %cmp451 = icmp ult i8* %incdec.ptr.i676715.ph.ph, %add.ptr
  br i1 %cmp451, label %if.then453, label %while.cond511.preheader

if.then453:                                       ; preds = %if.else450
  %41 = load i8* %incdec.ptr.i676715.ph.ph, align 1, !tbaa !1
  switch i8 %41, label %while.cond511.preheader [
    i8 101, label %if.then461
    i8 69, label %if.then461
  ]

if.then461:                                       ; preds = %if.then453, %if.then453
  %and462 = and i32 %numtype.2.ph.ph, 8
  %or463 = or i32 %and462, 4
  %incdec.ptr464 = getelementptr inbounds i8* %incdec.ptr.i676715.ph.ph, i64 1
  %cmp465 = icmp ult i8* %incdec.ptr464, %add.ptr
  br i1 %cmp465, label %land.lhs.true467, label %if.end477

land.lhs.true467:                                 ; preds = %if.then461
  %42 = load i8* %incdec.ptr464, align 1, !tbaa !1
  switch i8 %42, label %if.end477 [
    i8 45, label %if.then475
    i8 43, label %if.then475
  ]

if.then475:                                       ; preds = %land.lhs.true467, %land.lhs.true467
  %incdec.ptr476 = getelementptr inbounds i8* %incdec.ptr.i676715.ph.ph, i64 2
  br label %if.end477

if.end477:                                        ; preds = %land.lhs.true467, %if.then475, %if.then461
  %incdec.ptr.i676718 = phi i8* [ %incdec.ptr464, %land.lhs.true467 ], [ %incdec.ptr476, %if.then475 ], [ %incdec.ptr464, %if.then461 ]
  %cmp478 = icmp ult i8* %incdec.ptr.i676718, %add.ptr
  br i1 %cmp478, label %land.lhs.true480, label %return

land.lhs.true480:                                 ; preds = %if.end477
  %43 = load i8* %incdec.ptr.i676718, align 1, !tbaa !1
  %.off737 = add i8 %43, -48
  %44 = icmp ult i8 %.off737, 10
  br i1 %44, label %do.body489, label %return

do.body489:                                       ; preds = %land.lhs.true480, %land.rhs494
  %incdec.ptr.i676719 = phi i8* [ %incdec.ptr490, %land.rhs494 ], [ %incdec.ptr.i676718, %land.lhs.true480 ]
  %incdec.ptr490 = getelementptr inbounds i8* %incdec.ptr.i676719, i64 1
  %cmp492 = icmp ult i8* %incdec.ptr490, %add.ptr
  br i1 %cmp492, label %land.rhs494, label %while.cond511.preheader

land.rhs494:                                      ; preds = %do.body489
  %45 = load i8* %incdec.ptr490, align 1, !tbaa !1
  %.off738 = add i8 %45, -48
  %46 = icmp ult i8 %.off738, 10
  br i1 %46, label %do.body489, label %while.cond511.preheader

while.cond511.preheader:                          ; preds = %do.body489, %land.rhs494, %if.then447, %if.else450, %if.then443, %if.then453
  %incdec.ptr.i676714.ph = phi i8* [ %incdec.ptr.i676715.ph.ph, %if.then453 ], [ %incdec.ptr.i676715, %if.then443 ], [ %incdec.ptr.i676715.ph.ph, %if.else450 ], [ %incdec.ptr436, %if.then447 ], [ %incdec.ptr490, %land.rhs494 ], [ %incdec.ptr490, %do.body489 ]
  %numtype.3.ph = phi i32 [ %numtype.2.ph.ph, %if.then453 ], [ %or444, %if.then443 ], [ %numtype.2.ph.ph, %if.else450 ], [ %or449, %if.then447 ], [ %or463, %land.rhs494 ], [ %or463, %do.body489 ]
  %cmp512742 = icmp ult i8* %incdec.ptr.i676714.ph, %add.ptr
  br i1 %cmp512742, label %land.rhs514, label %return

while.cond511:                                    ; preds = %land.end535
  %cmp512 = icmp ult i8* %incdec.ptr537, %add.ptr
  br i1 %cmp512, label %land.rhs514, label %return

land.rhs514:                                      ; preds = %while.cond511, %while.cond511.preheader
  %incdec.ptr.i676714743 = phi i8* [ %incdec.ptr.i676714.ph, %while.cond511.preheader ], [ %incdec.ptr537, %while.cond511 ]
  %47 = load i8* %incdec.ptr.i676714743, align 1, !tbaa !1
  %switch.tableidx668 = add i8 %47, -9
  %48 = icmp ult i8 %switch.tableidx668, 24
  br i1 %48, label %land.end535, label %if.end542

land.end535:                                      ; preds = %land.rhs514
  %switch.cast669 = zext i8 %switch.tableidx668 to i24
  %switch.downshift671 = lshr i24 -8388581, %switch.cast669
  %49 = and i24 %switch.downshift671, 1
  %switch.masked672 = icmp eq i24 %49, 0
  %incdec.ptr537 = getelementptr inbounds i8* %incdec.ptr.i676714743, i64 1
  br i1 %switch.masked672, label %if.end542, label %while.cond511

if.end542:                                        ; preds = %land.end535, %land.rhs514
  %cmp543 = icmp eq i64 %len, 10
  br i1 %cmp543, label %land.lhs.true545, label %return

land.lhs.true545:                                 ; preds = %if.end542
  %call546 = tail call i32 @memcmp(i8* %pv, i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0), i64 10) #5
  %tobool547 = icmp eq i32 %call546, 0
  br i1 %tobool547, label %if.then548, label %return

if.then548:                                       ; preds = %land.lhs.true545
  %tobool549 = icmp eq i64* %valuep, null
  br i1 %tobool549, label %return, label %if.then550

if.then550:                                       ; preds = %if.then548
  store i64 0, i64* %valuep, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %while.cond511.preheader, %while.cond511, %if.end542, %land.lhs.true545, %if.then550, %if.then548, %if.end477, %land.lhs.true480, %if.else300, %if.end422, %lor.lhs.false426, %if.then409, %lor.lhs.false413, %if.end385, %lor.lhs.false389, %if.end372, %lor.lhs.false376, %if.end359, %lor.lhs.false363, %if.then346, %lor.lhs.false350, %if.end321, %lor.lhs.false325, %if.then308, %lor.lhs.false312, %if.then266, %land.lhs.true270, %if.end31, %while.end
  %retval.0 = phi i32 [ 0, %while.end ], [ 0, %if.end31 ], [ 0, %land.lhs.true270 ], [ 0, %if.then266 ], [ 0, %lor.lhs.false312 ], [ 0, %if.then308 ], [ 0, %lor.lhs.false325 ], [ 0, %if.end321 ], [ 0, %lor.lhs.false350 ], [ 0, %if.then346 ], [ 0, %lor.lhs.false363 ], [ 0, %if.end359 ], [ 0, %lor.lhs.false376 ], [ 0, %if.end372 ], [ 0, %lor.lhs.false389 ], [ 0, %if.end385 ], [ 0, %lor.lhs.false413 ], [ 0, %if.then409 ], [ 0, %lor.lhs.false426 ], [ 0, %if.end422 ], [ 0, %if.else300 ], [ 0, %land.lhs.true480 ], [ 0, %if.end477 ], [ 1, %if.then548 ], [ 1, %if.then550 ], [ 0, %land.lhs.true545 ], [ 0, %if.end542 ], [ %numtype.3.ph, %while.cond511 ], [ %numtype.3.ph, %while.cond511.preheader ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #3

; Function Attrs: nounwind optsize uwtable
define double @Perl_my_atof(i8* %s) #1 {
entry:
  %x = alloca double, align 8
  store double 0.000000e+00, double* %x, align 8, !tbaa !5
  %call = call i8* @Perl_my_atof2(i8* %s, double* %x) #6
  %0 = load double* %x, align 8, !tbaa !5
  ret double %0
}

; Function Attrs: nounwind optsize uwtable
define i8* @Perl_my_atof2(i8* %orig, double* nocapture %value) #1 {
entry:
  %result = alloca [3 x double], align 16
  %accumulator = alloca [2 x i64], align 16
  %exp_acc = alloca i64, align 8
  %tmpcast = bitcast i64* %exp_acc to [2 x i32]*
  %0 = bitcast [3 x double]* %result to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 16, i1 false)
  %1 = bitcast [2 x i64]* %accumulator to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 16, i32 16, i1 false)
  %call = call i64 @strlen(i8* %orig) #5
  %add.ptr.sum = add i64 %call, -1
  %add.ptr1 = getelementptr inbounds i8* %orig, i64 %add.ptr.sum
  store i64 -1, i64* %exp_acc, align 8
  %2 = load i8* %orig, align 1, !tbaa !1
  %switch.tableidx299 = add i8 %2, -9
  %3 = icmp ult i8 %switch.tableidx299, 24
  br i1 %3, label %lor.end, label %while.end

while.cond:                                       ; preds = %lor.end
  %4 = load i8* %incdec.ptr, align 1, !tbaa !1
  %switch.tableidx = add i8 %4, -9
  %5 = icmp ult i8 %switch.tableidx, 24
  br i1 %5, label %lor.end, label %while.end

lor.end:                                          ; preds = %entry, %while.cond
  %6 = phi i8 [ %4, %while.cond ], [ %2, %entry ]
  %switch.tableidx301 = phi i8 [ %switch.tableidx, %while.cond ], [ %switch.tableidx299, %entry ]
  %incdec.ptr.i274300 = phi i8* [ %incdec.ptr, %while.cond ], [ %orig, %entry ]
  %switch.cast = zext i8 %switch.tableidx301 to i24
  %switch.downshift = lshr i24 -8388581, %switch.cast
  %7 = and i24 %switch.downshift, 1
  %switch.masked = icmp eq i24 %7, 0
  %incdec.ptr = getelementptr inbounds i8* %incdec.ptr.i274300, i64 1
  br i1 %switch.masked, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond, %lor.end, %entry
  %8 = phi i8 [ %2, %entry ], [ %6, %lor.end ], [ %4, %while.cond ]
  %incdec.ptr.i274.lcssa = phi i8* [ %orig, %entry ], [ %incdec.ptr.i274300, %lor.end ], [ %incdec.ptr, %while.cond ]
  %conv17 = sext i8 %8 to i32
  switch i32 %conv17, label %while.body21.preheader [
    i32 45, label %sw.bb
    i32 43, label %sw.bb18
  ]

sw.bb:                                            ; preds = %while.end
  br label %sw.bb18

sw.bb18:                                          ; preds = %while.end, %sw.bb
  %negative.0 = phi i8 [ 0, %while.end ], [ 1, %sw.bb ]
  %incdec.ptr19 = getelementptr inbounds i8* %incdec.ptr.i274.lcssa, i64 1
  br label %while.body21.preheader

while.body21.preheader:                           ; preds = %sw.bb18, %while.end
  %incdec.ptr.i272.ph = phi i8* [ %incdec.ptr.i274.lcssa, %while.end ], [ %incdec.ptr19, %sw.bb18 ]
  %negative.1.ph = phi i8 [ 0, %while.end ], [ %negative.0, %sw.bb18 ]
  br label %while.body21.outer.outer

while.body21.outer.outer:                         ; preds = %if.end56, %while.body71, %while.body21.preheader
  %incdec.ptr.i272.ph292.ph = phi i8* [ %incdec.ptr.i272.ph, %while.body21.preheader ], [ %incdec.ptr28, %if.end56 ], [ %incdec.ptr72, %while.body71 ]
  %seen_digit.0.ph.ph = phi i8 [ 0, %while.body21.preheader ], [ 1, %if.end56 ], [ 1, %while.body71 ]
  %exp_adjust.sroa.1.0.ph.ph = phi i32 [ 0, %while.body21.preheader ], [ %exp_adjust.sroa.1.2.ph, %if.end56 ], [ %exp_adjust.sroa.1.2.ph, %while.body71 ]
  %exp_adjust.sroa.0.0.ph.ph = phi i32 [ 0, %while.body21.preheader ], [ %exp_adjust.sroa.0.1.ph, %if.end56 ], [ %exp_adjust.sroa.0.1.inc76, %while.body71 ]
  %seen_dp.0.ph.ph = phi i32 [ 0, %while.body21.preheader ], [ %seen_dp.0, %if.end56 ], [ %seen_dp.0, %while.body71 ]
  %digit.0.ph.ph = phi i32 [ 0, %while.body21.preheader ], [ %sub, %if.end56 ], [ %sub, %while.body71 ]
  %sig_digits.0.ph.ph = phi i32 [ 0, %while.body21.preheader ], [ %inc37, %if.end56 ], [ %inc37, %while.body71 ]
  br label %while.body21.outer.outer303

while.body21.outer.outer303:                      ; preds = %while.body21.outer.outer, %if.end99
  %incdec.ptr.i272.ph292.ph304 = phi i8* [ %incdec.ptr28, %if.end99 ], [ %incdec.ptr.i272.ph292.ph, %while.body21.outer.outer ]
  %seen_digit.0.ph.ph305 = phi i8 [ 1, %if.end99 ], [ %seen_digit.0.ph.ph, %while.body21.outer.outer ]
  %exp_adjust.sroa.1.0.ph.ph306 = phi i32 [ %inc.exp_adjust.sroa.1.0, %if.end99 ], [ %exp_adjust.sroa.1.0.ph.ph, %while.body21.outer.outer ]
  %seen_dp.0.ph.ph307 = phi i32 [ %seen_dp.0, %if.end99 ], [ %seen_dp.0.ph.ph, %while.body21.outer.outer ]
  %digit.0.ph.ph308 = phi i32 [ %sub, %if.end99 ], [ %digit.0.ph.ph, %while.body21.outer.outer ]
  %sig_digits.0.ph.ph309 = phi i32 [ %inc37, %if.end99 ], [ %sig_digits.0.ph.ph, %while.body21.outer.outer ]
  %cmp117 = icmp sgt i32 %sig_digits.0.ph.ph309, 17
  br label %while.body21.outer

while.body21.outer:                               ; preds = %while.body21.outer.outer303, %if.then
  %incdec.ptr.i272.ph292 = phi i8* [ %incdec.ptr28, %if.then ], [ %incdec.ptr.i272.ph292.ph304, %while.body21.outer.outer303 ]
  %seen_digit.0.ph = phi i8 [ 1, %if.then ], [ %seen_digit.0.ph.ph305, %while.body21.outer.outer303 ]
  %exp_adjust.sroa.1.0.ph = phi i32 [ %inc.exp_adjust.sroa.1.0, %if.then ], [ %exp_adjust.sroa.1.0.ph.ph306, %while.body21.outer.outer303 ]
  %seen_dp.0.ph = phi i32 [ %seen_dp.0, %if.then ], [ %seen_dp.0.ph.ph307, %while.body21.outer.outer303 ]
  %digit.0.ph = phi i32 [ %sub, %if.then ], [ %digit.0.ph.ph308, %while.body21.outer.outer303 ]
  br label %while.body21

while.body21:                                     ; preds = %if.then116, %while.body21.outer
  %incdec.ptr.i272 = phi i8* [ %incdec.ptr.i272.ph292, %while.body21.outer ], [ %incdec.ptr.i, %if.then116 ]
  %seen_dp.0 = phi i32 [ %seen_dp.0.ph, %while.body21.outer ], [ 1, %if.then116 ]
  %9 = load i8* %incdec.ptr.i272, align 1, !tbaa !1
  %.off = add i8 %9, -48
  %10 = icmp ult i8 %.off, 10
  br i1 %10, label %if.then, label %if.else110

if.then:                                          ; preds = %while.body21
  %incdec.ptr28 = getelementptr inbounds i8* %incdec.ptr.i272, i64 1
  %conv29 = sext i8 %9 to i32
  %sub = add nsw i32 %conv29, -48
  %inc.exp_adjust.sroa.1.0 = add nsw i32 %seen_dp.0, %exp_adjust.sroa.1.0.ph
  %11 = or i32 %sub, %sig_digits.0.ph.ph309
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %while.body21.outer, label %if.end36

if.end36:                                         ; preds = %if.then
  %tobool = icmp eq i32 %seen_dp.0, 0
  %inc37 = add nsw i32 %sig_digits.0.ph.ph309, 1
  %cmp38 = icmp sgt i32 %sig_digits.0.ph.ph309, 16
  br i1 %cmp38, label %if.then40, label %if.else79

if.then40:                                        ; preds = %if.end36
  %cmp41 = icmp sgt i32 %sub, 5
  br i1 %cmp41, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.then40
  %idxprom254 = zext i32 %seen_dp.0 to i64
  %arrayidx44 = getelementptr inbounds [2 x i64]* %accumulator, i64 0, i64 %idxprom254
  %13 = load i64* %arrayidx44, align 8, !tbaa !0
  %inc45 = add i64 %13, 1
  store i64 %inc45, i64* %arrayidx44, align 8, !tbaa !0
  br label %if.end56

if.else:                                          ; preds = %if.then40
  %cmp46 = icmp eq i32 %sub, 5
  br i1 %cmp46, label %if.then48, label %if.end56

if.then48:                                        ; preds = %if.else
  %rem252 = and i32 %digit.0.ph, 1
  %tobool49 = icmp eq i32 %rem252, 0
  br i1 %tobool49, label %if.end56, label %if.then50

if.then50:                                        ; preds = %if.then48
  %idxprom51253 = zext i32 %seen_dp.0 to i64
  %arrayidx52 = getelementptr inbounds [2 x i64]* %accumulator, i64 0, i64 %idxprom51253
  %14 = load i64* %arrayidx52, align 8, !tbaa !0
  %inc53 = add i64 %14, 1
  store i64 %inc53, i64* %arrayidx52, align 8, !tbaa !0
  br label %if.end56

if.end56:                                         ; preds = %if.then48, %if.else, %if.then50, %if.then43
  %not.tobool = xor i1 %tobool, true
  %dec = sext i1 %not.tobool to i32
  %exp_adjust.sroa.1.2.ph = add nsw i32 %inc.exp_adjust.sroa.1.0, %dec
  %inc62 = zext i1 %tobool to i32
  %exp_adjust.sroa.0.1.ph = add nsw i32 %exp_adjust.sroa.0.0.ph.ph, %inc62
  %15 = load i8* %incdec.ptr28, align 1, !tbaa !1
  %.off281286 = add i8 %15, -48
  %16 = icmp ult i8 %.off281286, 10
  br i1 %16, label %while.body71.lr.ph, label %while.body21.outer.outer

while.body71.lr.ph:                               ; preds = %if.end56
  %inc76 = xor i32 %seen_dp.0, 1
  br label %while.body71

while.body71:                                     ; preds = %while.body71.lr.ph, %while.body71
  %exp_adjust.sroa.0.1288 = phi i32 [ %exp_adjust.sroa.0.1.ph, %while.body71.lr.ph ], [ %exp_adjust.sroa.0.1.inc76, %while.body71 ]
  %incdec.ptr.i273287 = phi i8* [ %incdec.ptr28, %while.body71.lr.ph ], [ %incdec.ptr72, %while.body71 ]
  %incdec.ptr72 = getelementptr inbounds i8* %incdec.ptr.i273287, i64 1
  %exp_adjust.sroa.0.1.inc76 = add nsw i32 %exp_adjust.sroa.0.1288, %inc76
  %17 = load i8* %incdec.ptr72, align 1, !tbaa !1
  %.off281 = add i8 %17, -48
  %18 = icmp ult i8 %.off281, 10
  br i1 %18, label %while.body71, label %while.body21.outer.outer

if.else79:                                        ; preds = %if.end36
  %idxprom80251 = zext i32 %seen_dp.0 to i64
  %arrayidx81 = getelementptr inbounds [2 x i64]* %accumulator, i64 0, i64 %idxprom80251
  %19 = load i64* %arrayidx81, align 8, !tbaa !0
  %cmp82 = icmp ugt i64 %19, 1844674407370955160
  br i1 %cmp82, label %if.then84, label %if.else79.if.end99_crit_edge

if.else79.if.end99_crit_edge:                     ; preds = %if.else79
  %arrayidx107.phi.trans.insert = getelementptr inbounds [2 x i32]* %tmpcast, i64 0, i64 %idxprom80251
  %.pre338 = load i32* %arrayidx107.phi.trans.insert, align 4, !tbaa !3
  %phitmp = mul i64 %19, 10
  %phitmp339 = add i32 %.pre338, 1
  br label %if.end99

if.then84:                                        ; preds = %if.else79
  %arrayidx86 = getelementptr inbounds [3 x double]* %result, i64 0, i64 %idxprom80251
  %20 = load double* %arrayidx86, align 8, !tbaa !5
  %arrayidx88 = getelementptr inbounds [2 x i32]* %tmpcast, i64 0, i64 %idxprom80251
  %21 = load i32* %arrayidx88, align 4, !tbaa !3
  %call89 = call fastcc double @S_mulexp10(double %20, i32 %21) #6
  %conv92 = uitofp i64 %19 to double
  %add = fadd double %conv92, %call89
  store double %add, double* %arrayidx86, align 8, !tbaa !5
  store i64 0, i64* %arrayidx81, align 8, !tbaa !0
  store i32 0, i32* %arrayidx88, align 4, !tbaa !3
  br label %if.end99

if.end99:                                         ; preds = %if.else79.if.end99_crit_edge, %if.then84
  %22 = phi i32 [ 1, %if.then84 ], [ %phitmp339, %if.else79.if.end99_crit_edge ]
  %23 = phi i64 [ 0, %if.then84 ], [ %phitmp, %if.else79.if.end99_crit_edge ]
  %conv102 = sext i32 %sub to i64
  %add103 = add i64 %23, %conv102
  store i64 %add103, i64* %arrayidx81, align 8, !tbaa !0
  %arrayidx107 = getelementptr inbounds [2 x i32]* %tmpcast, i64 0, i64 %idxprom80251
  store i32 %22, i32* %arrayidx107, align 4, !tbaa !3
  br label %while.body21.outer.outer303

if.else110:                                       ; preds = %while.body21
  %tobool111 = icmp eq i32 %seen_dp.0, 0
  br i1 %tobool111, label %land.lhs.true112, label %while.end137

land.lhs.true112:                                 ; preds = %if.else110
  %cmp.i = icmp ult i8* %incdec.ptr.i272, %add.ptr1
  %cmp1.i = icmp eq i8 %9, 46
  %or.cond = and i1 %cmp.i, %cmp1.i
  br i1 %or.cond, label %if.then116, label %while.end137

if.then116:                                       ; preds = %land.lhs.true112
  %incdec.ptr.i = getelementptr inbounds i8* %incdec.ptr.i272, i64 1
  br i1 %cmp117, label %while.cond121, label %while.body21

while.cond121:                                    ; preds = %if.then116, %while.cond121
  %.pn = phi i8* [ %storemerge, %while.cond121 ], [ %incdec.ptr.i, %if.then116 ]
  %storemerge = getelementptr inbounds i8* %.pn, i64 1
  %24 = load i8* %storemerge, align 1, !tbaa !1
  %.off280 = add i8 %24, -48
  %25 = icmp ult i8 %.off280, 10
  br i1 %25, label %while.cond121, label %while.end137

while.end137:                                     ; preds = %land.lhs.true112, %if.else110, %while.cond121
  %incdec.ptr.i277 = phi i8* [ %storemerge, %while.cond121 ], [ %incdec.ptr.i272, %if.else110 ], [ %incdec.ptr.i272, %land.lhs.true112 ]
  %seen_dp.1 = phi i32 [ 1, %while.cond121 ], [ %seen_dp.0, %if.else110 ], [ 0, %land.lhs.true112 ]
  %arrayidx138 = getelementptr inbounds [3 x double]* %result, i64 0, i64 0
  %26 = load double* %arrayidx138, align 16, !tbaa !5
  %27 = load i64* %exp_acc, align 8
  %28 = trunc i64 %27 to i32
  %call140 = call fastcc double @S_mulexp10(double %26, i32 %28) #6
  %arrayidx141 = getelementptr inbounds [2 x i64]* %accumulator, i64 0, i64 0
  %29 = load i64* %arrayidx141, align 16, !tbaa !0
  %conv142 = uitofp i64 %29 to double
  %add143 = fadd double %call140, %conv142
  store double %add143, double* %arrayidx138, align 16, !tbaa !5
  %tobool145 = icmp ne i32 %seen_dp.1, 0
  br i1 %tobool145, label %if.then146, label %if.end154

if.then146:                                       ; preds = %while.end137
  %30 = lshr i64 %27, 32
  %31 = trunc i64 %30 to i32
  %arrayidx147 = getelementptr inbounds [3 x double]* %result, i64 0, i64 1
  %32 = load double* %arrayidx147, align 8, !tbaa !5
  %call149 = call fastcc double @S_mulexp10(double %32, i32 %31) #6
  %arrayidx150 = getelementptr inbounds [2 x i64]* %accumulator, i64 0, i64 1
  %33 = load i64* %arrayidx150, align 8, !tbaa !0
  %conv151 = uitofp i64 %33 to double
  %add152 = fadd double %call149, %conv151
  store double %add152, double* %arrayidx147, align 8, !tbaa !5
  br label %if.end154

if.end154:                                        ; preds = %if.then146, %while.end137
  %tobool156 = icmp eq i8 %seen_digit.0.ph, 0
  br i1 %tobool156, label %if.end192, label %land.lhs.true157

land.lhs.true157:                                 ; preds = %if.end154
  %34 = load i8* %incdec.ptr.i277, align 1, !tbaa !1
  switch i8 %34, label %if.end192 [
    i8 101, label %if.then165
    i8 69, label %if.then165
  ]

if.then165:                                       ; preds = %land.lhs.true157, %land.lhs.true157
  %incdec.ptr166 = getelementptr inbounds i8* %incdec.ptr.i277, i64 1
  %35 = load i8* %incdec.ptr166, align 1, !tbaa !1
  %conv167 = sext i8 %35 to i32
  switch i32 %conv167, label %while.cond172.preheader [
    i32 45, label %sw.bb168
    i32 43, label %sw.bb169
  ]

sw.bb168:                                         ; preds = %if.then165
  br label %sw.bb169

sw.bb169:                                         ; preds = %if.then165, %sw.bb168
  %expnegative.0 = phi i8 [ 0, %if.then165 ], [ 1, %sw.bb168 ]
  %incdec.ptr170 = getelementptr inbounds i8* %incdec.ptr.i277, i64 2
  %.pre = load i8* %incdec.ptr170, align 1, !tbaa !1
  br label %while.cond172.preheader

while.cond172.preheader:                          ; preds = %sw.bb169, %if.then165
  %36 = phi i8 [ %35, %if.then165 ], [ %.pre, %sw.bb169 ]
  %incdec.ptr.i276.ph = phi i8* [ %incdec.ptr166, %if.then165 ], [ %incdec.ptr170, %sw.bb169 ]
  %expnegative.1.ph = phi i8 [ 0, %if.then165 ], [ %expnegative.0, %sw.bb169 ]
  %.off279282 = add i8 %36, -48
  %37 = icmp ult i8 %.off279282, 10
  br i1 %37, label %while.body181, label %while.end187

while.body181:                                    ; preds = %while.cond172.preheader, %while.body181
  %38 = phi i8 [ %39, %while.body181 ], [ %36, %while.cond172.preheader ]
  %exponent.0284 = phi i32 [ %add186, %while.body181 ], [ 0, %while.cond172.preheader ]
  %incdec.ptr.i276283 = phi i8* [ %incdec.ptr183, %while.body181 ], [ %incdec.ptr.i276.ph, %while.cond172.preheader ]
  %mul182 = mul nsw i32 %exponent.0284, 10
  %incdec.ptr183 = getelementptr inbounds i8* %incdec.ptr.i276283, i64 1
  %conv184 = sext i8 %38 to i32
  %sub185 = add i32 %mul182, -48
  %add186 = add i32 %sub185, %conv184
  %39 = load i8* %incdec.ptr183, align 1, !tbaa !1
  %.off279 = add i8 %39, -48
  %40 = icmp ult i8 %.off279, 10
  br i1 %40, label %while.body181, label %while.end187

while.end187:                                     ; preds = %while.body181, %while.cond172.preheader
  %exponent.0.lcssa = phi i32 [ 0, %while.cond172.preheader ], [ %add186, %while.body181 ]
  %incdec.ptr.i276.lcssa = phi i8* [ %incdec.ptr.i276.ph, %while.cond172.preheader ], [ %incdec.ptr183, %while.body181 ]
  %tobool188 = icmp eq i8 %expnegative.1.ph, 0
  %sub190 = sub nsw i32 0, %exponent.0.lcssa
  %exponent.0.sub190 = select i1 %tobool188, i32 %exponent.0.lcssa, i32 %sub190
  br label %if.end192

if.end192:                                        ; preds = %while.end187, %land.lhs.true157, %if.end154
  %incdec.ptr.i275 = phi i8* [ %incdec.ptr.i277, %if.end154 ], [ %incdec.ptr.i277, %land.lhs.true157 ], [ %incdec.ptr.i276.lcssa, %while.end187 ]
  %exponent.1 = phi i32 [ 0, %if.end154 ], [ 0, %land.lhs.true157 ], [ %exponent.0.sub190, %while.end187 ]
  %add197 = add nsw i32 %exponent.1, %exp_adjust.sroa.0.0.ph.ph
  %call198 = call fastcc double @S_mulexp10(double %add143, i32 %add197) #6
  br i1 %tobool145, label %if.then194, label %if.else205

if.then194:                                       ; preds = %if.end192
  %arrayidx199 = getelementptr inbounds [3 x double]* %result, i64 0, i64 1
  %41 = load double* %arrayidx199, align 8, !tbaa !5
  %sub201 = sub nsw i32 %exponent.1, %exp_adjust.sroa.1.0.ph
  %call202 = call fastcc double @S_mulexp10(double %41, i32 %sub201) #6
  %add203 = fadd double %call198, %call202
  %arrayidx204 = getelementptr inbounds [3 x double]* %result, i64 0, i64 2
  store double %add203, double* %arrayidx204, align 16, !tbaa !5
  br label %if.end211

if.else205:                                       ; preds = %if.end192
  %arrayidx210 = getelementptr inbounds [3 x double]* %result, i64 0, i64 2
  store double %call198, double* %arrayidx210, align 16, !tbaa !5
  br label %if.end211

if.end211:                                        ; preds = %if.else205, %if.then194
  %42 = phi double [ %call198, %if.else205 ], [ %add203, %if.then194 ]
  %tobool212 = icmp eq i8 %negative.1.ph, 0
  br i1 %tobool212, label %if.end217, label %if.then213

if.then213:                                       ; preds = %if.end211
  %arrayidx214 = getelementptr inbounds [3 x double]* %result, i64 0, i64 2
  %sub215 = fsub double -0.000000e+00, %42
  store double %sub215, double* %arrayidx214, align 16, !tbaa !5
  br label %if.end217

if.end217:                                        ; preds = %if.end211, %if.then213
  %43 = phi double [ %sub215, %if.then213 ], [ %42, %if.end211 ]
  store double %43, double* %value, align 8, !tbaa !5
  ret i8* %incdec.ptr.i275
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize readnone uwtable
define internal fastcc double @S_mulexp10(double %value, i32 %exponent) #0 {
entry:
  %cmp = icmp eq i32 %exponent, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = fcmp oeq double %value, 0.000000e+00
  br i1 %cmp1, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp slt i32 %exponent, 0
  %sub = sub nsw i32 0, %exponent
  %sub.exponent = select i1 %cmp4, i32 %sub, i32 %exponent
  %tobool28 = icmp eq i32 %sub.exponent, 0
  br i1 %tobool28, label %for.end, label %for.body

for.body:                                         ; preds = %if.end3, %if.end12
  %bit.032 = phi i32 [ %shl, %if.end12 ], [ 1, %if.end3 ]
  %power.031 = phi double [ %mul13, %if.end12 ], [ 1.000000e+01, %if.end3 ]
  %result.030 = phi double [ %result.1, %if.end12 ], [ 1.000000e+00, %if.end3 ]
  %exponent.addr.129 = phi i32 [ %exponent.addr.2, %if.end12 ], [ %sub.exponent, %if.end3 ]
  %and = and i32 %bit.032, %exponent.addr.129
  %tobool7 = icmp eq i32 %and, 0
  br i1 %tobool7, label %if.end12, label %if.then8

if.then8:                                         ; preds = %for.body
  %xor = xor i32 %bit.032, %exponent.addr.129
  %mul = fmul double %result.030, %power.031
  %cmp9 = icmp eq i32 %exponent.addr.129, %bit.032
  br i1 %cmp9, label %for.end, label %if.end12

if.end12:                                         ; preds = %for.body, %if.then8
  %exponent.addr.2 = phi i32 [ %xor, %if.then8 ], [ %exponent.addr.129, %for.body ]
  %result.1 = phi double [ %mul, %if.then8 ], [ %result.030, %for.body ]
  %mul13 = fmul double %power.031, %power.031
  %shl = shl i32 %bit.032, 1
  %tobool = icmp eq i32 %exponent.addr.2, 0
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %if.end12, %if.then8, %if.end3
  %result.2 = phi double [ 1.000000e+00, %if.end3 ], [ %mul, %if.then8 ], [ %result.1, %if.end12 ]
  %tobool14 = icmp sgt i32 %exponent, -1
  br i1 %tobool14, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.end
  %div = fdiv double %value, %result.2
  br label %return

cond.false:                                       ; preds = %for.end
  %mul15 = fmul double %result.2, %value
  br label %return

return:                                           ; preds = %cond.true, %cond.false, %if.end, %entry
  %retval.0 = phi double [ %value, %entry ], [ 0.000000e+00, %if.end ], [ %div, %cond.true ], [ %mul15, %cond.false ]
  ret double %retval.0
}

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"long", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}

; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/DynaLoader.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
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

@PL_stack_sp = external global %struct.sv**
@PL_stack_base = external global %struct.sv**
@PL_markstack_ptr = external global i32*
@.str = private unnamed_addr constant [30 x i8] c"Usage: DynaLoader::dl_error()\00", align 1
@PL_op = external global %struct.op*
@PL_curpad = external global %struct.sv**
@.str1 = private unnamed_addr constant [16 x i8] c"Not implemented\00", align 1
@.str2 = private unnamed_addr constant [60 x i8] c"../../SPEC/benchspec/CPU2006/400.perlbench/src/DynaLoader.c\00", align 1
@.str3 = private unnamed_addr constant [21 x i8] c"DynaLoader::dl_error\00", align 1
@PL_sv_yes = external global %struct.sv

; Function Attrs: nounwind optsize uwtable
define void @XS_DynaLoader_dl_error(%struct.cv* nocapture %cv) #0 {
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
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([30 x i8]* @.str, i64 0, i64 0)) #2
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %5, i64 0, i32 7
  %6 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %6, 32
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %op_targ = getelementptr inbounds %struct.op* %5, i64 0, i32 3
  %7 = load i64* %op_targ, align 8, !tbaa !4
  %8 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %8, i64 %7
  %9 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = tail call %struct.sv* @Perl_sv_newmortal() #2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %9, %cond.true ], [ %call, %cond.false ]
  tail call void @Perl_sv_setpv(%struct.sv* %cond, i8* getelementptr inbounds ([16 x i8]* @.str1, i64 0, i64 0)) #2
  %10 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sext = add i64 %add.ptr.idx, 4294967296
  %idx.ext8 = ashr exact i64 %sext, 32
  %sv_flags = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %11 = load i32* %sv_flags, align 4, !tbaa !3
  %and11 = and i32 %11, 16384
  %tobool12 = icmp eq i32 %and11, 0
  br i1 %tobool12, label %if.end15, label %if.then13

if.then13:                                        ; preds = %cond.end
  %call14 = tail call i32 @Perl_mg_set(%struct.sv* %cond) #2
  br label %if.end15

if.end15:                                         ; preds = %cond.end, %if.then13
  %incdec.ptr16 = getelementptr inbounds %struct.sv** %10, i64 %idx.ext8
  store %struct.sv* %cond, %struct.sv** %incdec.ptr16, align 8, !tbaa !0
  %12 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr18 = getelementptr inbounds %struct.sv** %12, i64 %idx.ext8
  store %struct.sv** %add.ptr18, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_newmortal() #1

; Function Attrs: optsize
declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

; Function Attrs: optsize
declare i32 @Perl_mg_set(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define void @boot_DynaLoader(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %0, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %1 = load i32* %0, align 4, !tbaa !3
  %idx.ext13 = zext i32 %1 to i64
  %add.ptr.idx = shl nuw i64 %idx.ext13, 32
  %call = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8]* @.str3, i64 0, i64 0), void (%struct.cv*)* @XS_DynaLoader_dl_error, i8* getelementptr inbounds ([60 x i8]* @.str2, i64 0, i64 0)) #2
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %2 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %2, i64 %idxprom
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx, align 8, !tbaa !0
  %3 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr8 = getelementptr inbounds %struct.sv** %3, i64 %idxprom
  store %struct.sv** %add.ptr8, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}

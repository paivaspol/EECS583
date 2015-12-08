; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/perlmain.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interpreter = type { i8 }
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, void (%struct.cv*)*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.sv = type { i8*, i32, i32 }
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
%union.any = type { i8* }
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%struct._PerlIO = type opaque
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque

@PL_use_safe_putenv = external global i32
@PL_do_undump = external global i8
@PL_perl_destruct_level = external global i32
@PL_exit_flags = external global i8
@.str = private unnamed_addr constant [58 x i8] c"../../SPEC/benchspec/CPU2006/400.perlbench/src/perlmain.c\00", align 1
@.str1 = private unnamed_addr constant [28 x i8] c"DynaLoader::boot_DynaLoader\00", align 1
@.str2 = private unnamed_addr constant [15 x i8] c"Cwd::bootstrap\00", align 1
@.str3 = private unnamed_addr constant [24 x i8] c"Data::Dumper::bootstrap\00", align 1
@.str4 = private unnamed_addr constant [23 x i8] c"Devel::Peek::bootstrap\00", align 1
@.str5 = private unnamed_addr constant [23 x i8] c"Digest::MD5::bootstrap\00", align 1
@.str6 = private unnamed_addr constant [14 x i8] c"IO::bootstrap\00", align 1
@.str7 = private unnamed_addr constant [24 x i8] c"MIME::Base64::bootstrap\00", align 1
@.str8 = private unnamed_addr constant [25 x i8] c"Sys::Hostname::bootstrap\00", align 1
@.str9 = private unnamed_addr constant [23 x i8] c"Time::HiRes::bootstrap\00", align 1
@.str10 = private unnamed_addr constant [17 x i8] c"attrs::bootstrap\00", align 1
@.str11 = private unnamed_addr constant [20 x i8] c"Storable::bootstrap\00", align 1
@.str12 = private unnamed_addr constant [24 x i8] c"HTML::Parser::bootstrap\00", align 1
@.str13 = private unnamed_addr constant [18 x i8] c"Opcode::bootstrap\00", align 1

; Function Attrs: noreturn nounwind optsize uwtable
define i32 @main(i32 %argc, i8** %argv, i8** nocapture %env) #0 {
entry:
  store i32 0, i32* @PL_use_safe_putenv, align 4, !tbaa !0
  %0 = load i8* @PL_do_undump, align 1, !tbaa !1
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call %struct.interpreter* @perl_alloc() #4
  %tobool1 = icmp eq %struct.interpreter* %call, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  tail call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %if.then
  tail call void @perl_construct(%struct.interpreter* %call) #4
  store i32 0, i32* @PL_perl_destruct_level, align 4, !tbaa !0
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.end
  %call15 = phi %struct.interpreter* [ null, %entry ], [ %call, %if.end ]
  %1 = load i8* @PL_exit_flags, align 1, !tbaa !1
  %or = or i8 %1, 2
  store i8 %or, i8* @PL_exit_flags, align 1, !tbaa !1
  %call5 = tail call i32 @perl_parse(%struct.interpreter* %call15, void ()* @xs_init, i32 %argc, i8** %argv, i8** null) #4
  %tobool6 = icmp eq i32 %call5, 0
  br i1 %tobool6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end3
  %call8 = tail call i32 @perl_run(%struct.interpreter* %call15) #4
  br label %if.end9

if.end9:                                          ; preds = %if.end3, %if.then7
  %call10 = tail call i32 @perl_destruct(%struct.interpreter* %call15) #4
  tail call void @perl_free(%struct.interpreter* %call15) #4
  tail call void @exit(i32 %call10) #5
  unreachable
}

; Function Attrs: optsize
declare %struct.interpreter* @perl_alloc() #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @perl_construct(%struct.interpreter*) #1

; Function Attrs: optsize
declare i32 @perl_parse(%struct.interpreter*, void ()*, i32, i8**, i8**) #1

; Function Attrs: nounwind optsize uwtable
define internal void @xs_init() #3 {
entry:
  %call = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([28 x i8]* @.str1, i64 0, i64 0), void (%struct.cv*)* @boot_DynaLoader, i8* getelementptr inbounds ([58 x i8]* @.str, i64 0, i64 0)) #4
  %call1 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([15 x i8]* @.str2, i64 0, i64 0), void (%struct.cv*)* @boot_Cwd, i8* getelementptr inbounds ([58 x i8]* @.str, i64 0, i64 0)) #4
  %call2 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([24 x i8]* @.str3, i64 0, i64 0), void (%struct.cv*)* @boot_Data__Dumper, i8* getelementptr inbounds ([58 x i8]* @.str, i64 0, i64 0)) #4
  %call3 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([23 x i8]* @.str4, i64 0, i64 0), void (%struct.cv*)* @boot_Devel__Peek, i8* getelementptr inbounds ([58 x i8]* @.str, i64 0, i64 0)) #4
  %call4 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([23 x i8]* @.str5, i64 0, i64 0), void (%struct.cv*)* @boot_Digest__MD5, i8* getelementptr inbounds ([58 x i8]* @.str, i64 0, i64 0)) #4
  %call5 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0), void (%struct.cv*)* @boot_IO, i8* getelementptr inbounds ([58 x i8]* @.str, i64 0, i64 0)) #4
  %call6 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([24 x i8]* @.str7, i64 0, i64 0), void (%struct.cv*)* @boot_MIME__Base64, i8* getelementptr inbounds ([58 x i8]* @.str, i64 0, i64 0)) #4
  %call7 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([25 x i8]* @.str8, i64 0, i64 0), void (%struct.cv*)* @boot_Sys__Hostname, i8* getelementptr inbounds ([58 x i8]* @.str, i64 0, i64 0)) #4
  %call8 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([23 x i8]* @.str9, i64 0, i64 0), void (%struct.cv*)* @boot_Time__HiRes, i8* getelementptr inbounds ([58 x i8]* @.str, i64 0, i64 0)) #4
  %call9 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([17 x i8]* @.str10, i64 0, i64 0), void (%struct.cv*)* @boot_attrs, i8* getelementptr inbounds ([58 x i8]* @.str, i64 0, i64 0)) #4
  %call10 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([20 x i8]* @.str11, i64 0, i64 0), void (%struct.cv*)* @boot_Storable, i8* getelementptr inbounds ([58 x i8]* @.str, i64 0, i64 0)) #4
  %call11 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([24 x i8]* @.str12, i64 0, i64 0), void (%struct.cv*)* @boot_HTML__Parser, i8* getelementptr inbounds ([58 x i8]* @.str, i64 0, i64 0)) #4
  %call12 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([24 x i8]* @.str7, i64 0, i64 0), void (%struct.cv*)* @boot_MIME__Base64, i8* getelementptr inbounds ([58 x i8]* @.str, i64 0, i64 0)) #4
  %call13 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([18 x i8]* @.str13, i64 0, i64 0), void (%struct.cv*)* @boot_Opcode, i8* getelementptr inbounds ([58 x i8]* @.str, i64 0, i64 0)) #4
  ret void
}

; Function Attrs: optsize
declare i32 @perl_run(%struct.interpreter*) #1

; Function Attrs: optsize
declare i32 @perl_destruct(%struct.interpreter*) #1

; Function Attrs: optsize
declare void @perl_free(%struct.interpreter*) #1

; Function Attrs: optsize
declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #1

; Function Attrs: optsize
declare void @boot_DynaLoader(%struct.cv*) #1

; Function Attrs: optsize
declare void @boot_Cwd(%struct.cv*) #1

; Function Attrs: optsize
declare void @boot_Data__Dumper(%struct.cv*) #1

; Function Attrs: optsize
declare void @boot_Devel__Peek(%struct.cv*) #1

; Function Attrs: optsize
declare void @boot_Digest__MD5(%struct.cv*) #1

; Function Attrs: optsize
declare void @boot_IO(%struct.cv*) #1

; Function Attrs: optsize
declare void @boot_MIME__Base64(%struct.cv*) #1

; Function Attrs: optsize
declare void @boot_Sys__Hostname(%struct.cv*) #1

; Function Attrs: optsize
declare void @boot_Time__HiRes(%struct.cv*) #1

; Function Attrs: optsize
declare void @boot_attrs(%struct.cv*) #1

; Function Attrs: optsize
declare void @boot_Storable(%struct.cv*) #1

; Function Attrs: optsize
declare void @boot_HTML__Parser(%struct.cv*) #1

; Function Attrs: optsize
declare void @boot_Opcode(%struct.cv*) #1

attributes #0 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}

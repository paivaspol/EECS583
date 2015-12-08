; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/io_helpers.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.su3_vector = type { [3 x %struct.complex] }
%struct.gauge_file = type { %struct._IO_FILE*, %struct.gauge_header*, i8*, i32, i32*, i32, %struct.gauge_check }
%struct.gauge_header = type { i32, [64 x i8], [4 x i32], i32, i32 }
%struct.gauge_check = type { i32, i32 }

@this_node = external global i32
@.str1 = private unnamed_addr constant [19 x i8] c"Time to save = %e\0A\00", align 1
@.str2 = private unnamed_addr constant [19 x i8] c"CHECK PLAQ: %e %e\0A\00", align 1
@.str3 = private unnamed_addr constant [34 x i8] c"reload_lattice: Bad startflag %d\0A\00", align 1
@.str4 = private unnamed_addr constant [41 x i8] c"Time to reload gauge configuration = %e\0A\00", align 1
@stdout = external global %struct._IO_FILE*
@.str5 = private unnamed_addr constant [40 x i8] c"Unitarity checked.  Max deviation %.2e\0A\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str9 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str10 = private unnamed_addr constant [6 x i8] c"fresh\00", align 1
@.str12 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str13 = private unnamed_addr constant [13 x i8] c"reload_ascii\00", align 1
@.str14 = private unnamed_addr constant [14 x i8] c"reload_serial\00", align 1
@.str15 = private unnamed_addr constant [16 x i8] c"reload_parallel\00", align 1
@.str16 = private unnamed_addr constant [69 x i8] c"ask_starting_lattice: ERROR IN INPUT: lattice_command %s is invalid\0A\00", align 1
@.str22 = private unnamed_addr constant [11 x i8] c"save_ascii\00", align 1
@.str23 = private unnamed_addr constant [12 x i8] c"save_serial\00", align 1
@.str24 = private unnamed_addr constant [14 x i8] c"save_parallel\00", align 1
@.str25 = private unnamed_addr constant [16 x i8] c"save_checkpoint\00", align 1
@.str26 = private unnamed_addr constant [20 x i8] c"save_serial_archive\00", align 1
@.str27 = private unnamed_addr constant [22 x i8] c"save_parallel_archive\00", align 1
@.str28 = private unnamed_addr constant [7 x i8] c"forget\00", align 1
@.str29 = private unnamed_addr constant [70 x i8] c"ask_ending_lattice: ERROR IN INPUT: %s is not a save lattice command\0A\00", align 1
@lattice = external global %struct.site*
@sites_on_node = external global i32
@.str33 = private unnamed_addr constant [10 x i8] c"enter %s \00", align 1
@.str34 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str35 = private unnamed_addr constant [7 x i8] c"%s %g\0A\00", align 1
@.str37 = private unnamed_addr constant [41 x i8] c"get_f: EOF on STDIN while expecting %s.\0A\00", align 1
@.str38 = private unnamed_addr constant [36 x i8] c"get_f: Format error looking for %s\0A\00", align 1
@.str39 = private unnamed_addr constant [49 x i8] c"get_f: ERROR IN INPUT: expected %s but found %s\0A\00", align 1
@.str40 = private unnamed_addr constant [47 x i8] c"\0Aget_f: Expecting value for %s but found EOF.\0A\00", align 1
@.str41 = private unnamed_addr constant [43 x i8] c"\0Aget_f: Format error reading value for %s\0A\00", align 1
@.str42 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str43 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str44 = private unnamed_addr constant [7 x i8] c"%s %d\0A\00", align 1
@.str45 = private unnamed_addr constant [41 x i8] c"get_i: EOF on STDIN while expecting %s.\0A\00", align 1
@.str46 = private unnamed_addr constant [36 x i8] c"get_i: Format error looking for %s\0A\00", align 1
@.str47 = private unnamed_addr constant [49 x i8] c"get_i: ERROR IN INPUT: expected %s but found %s\0A\00", align 1
@.str48 = private unnamed_addr constant [47 x i8] c"\0Aget_i: Expecting value for %s but found EOF.\0A\00", align 1
@.str49 = private unnamed_addr constant [43 x i8] c"\0Aget_i: Format error reading value for %s\0A\00", align 1
@.str50 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str51 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str52 = private unnamed_addr constant [41 x i8] c"get_s: EOF on STDIN while expecting %s.\0A\00", align 1
@.str53 = private unnamed_addr constant [36 x i8] c"get_s: Format error looking for %s\0A\00", align 1
@.str54 = private unnamed_addr constant [49 x i8] c"get_s: ERROR IN INPUT: expected %s but found %s\0A\00", align 1
@.str55 = private unnamed_addr constant [47 x i8] c"\0Aget_s: Expecting value for %s but found EOF.\0A\00", align 1
@.str56 = private unnamed_addr constant [43 x i8] c"\0Aget_s: Format error reading value for %s\0A\00", align 1
@.str58 = private unnamed_addr constant [7 x i8] c"prompt\00", align 1
@.str59 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str60 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@str = private unnamed_addr constant [53 x i8] c"save_lattice: ERROR: unknown type for saving lattice\00"
@str62 = private unnamed_addr constant [53 x i8] c"ask_starting_lattice: ERROR IN INPUT: file name read\00"
@str63 = private unnamed_addr constant [38 x i8] c"enter name of file containing lattice\00"
@str64 = private unnamed_addr constant [63 x i8] c"ask_starting_lattice: ERROR IN INPUT: starting lattice command\00"
@str65 = private unnamed_addr constant [81 x i8] c"enter 'continue', 'fresh', 'reload_ascii', 'reload_serial', or 'reload_parallel'\00"
@str66 = private unnamed_addr constant [50 x i8] c"ask_ending_lattice: ERROR IN INPUT: save filename\00"
@str67 = private unnamed_addr constant [15 x i8] c"enter filename\00"
@str68 = private unnamed_addr constant [59 x i8] c"ask_ending_lattice: ERROR IN INPUT: ending lattice command\00"
@str69 = private unnamed_addr constant [141 x i8] c"'forget' lattice at end,  'save_ascii', 'save_serial', 'save_parallel', 'save_checkpoint', 'save_serial_archive', or 'save_parallel_archive'\00"
@str70 = private unnamed_addr constant [32 x i8] c"unit gauge configuration loaded\00"
@str73 = private unnamed_addr constant [19 x i8] c"Data format error.\00"
@str74 = private unnamed_addr constant [40 x i8] c"type 0 for no prompts  or 1 for prompts\00"
@str75 = private unnamed_addr constant [43 x i8] c"get_prompt: ERROR IN INPUT: initial prompt\00"

; Function Attrs: nounwind optsize uwtable
define %struct.gauge_file* @save_lattice(i32 %flag, i8* %filename) #0 {
entry:
  %ssplaq = alloca double, align 8
  %stplaq = alloca double, align 8
  %call = call double (...)* @dclock() #5
  switch i32 %flag, label %sw.default [
    i32 20, label %sw.epilog
    i32 21, label %sw.bb1
    i32 22, label %sw.bb3
    i32 28, label %sw.bb5
    i32 23, label %sw.bb7
    i32 30, label %sw.bb9
    i32 31, label %sw.bb11
  ]

sw.bb1:                                           ; preds = %entry
  %call2 = call %struct.gauge_file* @save_ascii(i8* %filename) #5
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %call4 = call %struct.gauge_file* @save_serial(i8* %filename) #5
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %call6 = call %struct.gauge_file* @save_parallel(i8* %filename) #5
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %call8 = call %struct.gauge_file* @save_checkpoint(i8* %filename) #5
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %call10 = call %struct.gauge_file* @save_serial_archive(i8* %filename) #5
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %call12 = call %struct.gauge_file* @save_parallel_archive(i8* %filename) #5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %puts = call i32 @puts(i8* getelementptr inbounds ([53 x i8]* @str, i64 0, i64 0))
  call void @terminate(i32 1) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.default, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1
  %gf.0 = phi %struct.gauge_file* [ undef, %sw.default ], [ %call12, %sw.bb11 ], [ %call10, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %call6, %sw.bb5 ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb1 ], [ null, %entry ]
  %call14 = call double (...)* @dclock() #5
  %cmp = icmp ne i32 %flag, 20
  %0 = load i32* @this_node, align 4, !tbaa !0
  %cmp15 = icmp eq i32 %0, 0
  %or.cond = and i1 %cmp, %cmp15
  br i1 %or.cond, label %if.then16, label %if.end18

if.then16:                                        ; preds = %sw.epilog
  %add = fsub double %call14, %call
  %call17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str1, i64 0, i64 0), double %add) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %sw.epilog
  call void @d_plaquette(double* %ssplaq, double* %stplaq) #5
  %1 = load i32* @this_node, align 4, !tbaa !0
  %cmp19 = icmp eq i32 %1, 0
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end18
  %2 = load double* %ssplaq, align 8, !tbaa !3
  %3 = load double* %stplaq, align 8, !tbaa !3
  %call21 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str2, i64 0, i64 0), double %2, double %3) #5
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end18
  ret %struct.gauge_file* %gf.0
}

; Function Attrs: optsize
declare double @dclock(...) #1

; Function Attrs: optsize
declare %struct.gauge_file* @save_ascii(i8*) #1

; Function Attrs: optsize
declare %struct.gauge_file* @save_serial(i8*) #1

; Function Attrs: optsize
declare %struct.gauge_file* @save_parallel(i8*) #1

; Function Attrs: optsize
declare %struct.gauge_file* @save_checkpoint(i8*) #1

; Function Attrs: optsize
declare %struct.gauge_file* @save_serial_archive(i8*) #1

; Function Attrs: optsize
declare %struct.gauge_file* @save_parallel_archive(i8*) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @terminate(i32) #1

; Function Attrs: optsize
declare void @d_plaquette(double*, double*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.gauge_file* @reload_lattice(i32 %flag, i8* %filename) #0 {
entry:
  %ssplaq = alloca double, align 8
  %stplaq = alloca double, align 8
  %max_deviation = alloca double, align 8
  %call = call double (...)* @dclock() #5
  switch i32 %flag, label %sw.default [
    i32 10, label %sw.epilog
    i32 11, label %sw.bb1
    i32 12, label %sw.bb2
    i32 13, label %sw.bb4
    i32 19, label %sw.bb6
  ]

sw.bb1:                                           ; preds = %entry
  call void @coldlat() #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %call3 = call %struct.gauge_file* @restore_ascii(i8* %filename) #5
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %call5 = call %struct.gauge_file* @restore_serial(i8* %filename) #5
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %call7 = call %struct.gauge_file* @restore_parallel(i8* %filename) #5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %0 = load i32* @this_node, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  %call8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0), i32 %flag) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.default
  call void @terminate(i32 1) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb1
  %gf.0 = phi %struct.gauge_file* [ undef, %if.end ], [ %call7, %sw.bb6 ], [ %call5, %sw.bb4 ], [ %call3, %sw.bb2 ], [ null, %sw.bb1 ], [ null, %entry ]
  %call9 = call double (...)* @dclock() #5
  %flag.off = add i32 %flag, -10
  %1 = icmp ugt i32 %flag.off, 1
  %2 = load i32* @this_node, align 4, !tbaa !0
  %cmp13 = icmp eq i32 %2, 0
  %or.cond33 = and i1 %1, %cmp13
  br i1 %or.cond33, label %if.then14, label %if.end17

if.then14:                                        ; preds = %sw.epilog
  %add = fsub double %call9, %call
  %call15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str4, i64 0, i64 0), double %add) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %sw.epilog
  call void @d_plaquette(double* %ssplaq, double* %stplaq) #5
  %3 = load i32* @this_node, align 4, !tbaa !0
  %cmp18 = icmp eq i32 %3, 0
  br i1 %cmp18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end17
  %4 = load double* %ssplaq, align 8, !tbaa !3
  %5 = load double* %stplaq, align 8, !tbaa !3
  %call20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str2, i64 0, i64 0), double %4, double %5) #5
  %6 = load %struct._IO_FILE** @stdout, align 8, !tbaa !4
  %call21 = call i32 @fflush(%struct._IO_FILE* %6) #5
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end17
  %call23 = call double (...)* @dclock() #5
  %call25 = call double @check_unitarity() #5
  store double %call25, double* %max_deviation, align 8, !tbaa !3
  call void @g_doublemax(double* %max_deviation) #5
  %call26 = call double (...)* @dclock() #5
  %7 = load i32* @this_node, align 4, !tbaa !0
  %cmp28 = icmp eq i32 %7, 0
  br i1 %cmp28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end22
  %8 = load double* %max_deviation, align 8, !tbaa !3
  %call30 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str5, i64 0, i64 0), double %8) #5
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end22
  %9 = load %struct._IO_FILE** @stdout, align 8, !tbaa !4
  %call32 = call i32 @fflush(%struct._IO_FILE* %9) #5
  ret %struct.gauge_file* %gf.0
}

; Function Attrs: optsize
declare %struct.gauge_file* @restore_ascii(i8*) #1

; Function Attrs: optsize
declare %struct.gauge_file* @restore_serial(i8*) #1

; Function Attrs: optsize
declare %struct.gauge_file* @restore_parallel(i8*) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare double @check_unitarity() #1

; Function Attrs: optsize
declare void @g_doublemax(double*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @ask_starting_lattice(i32 %prompt, i32* nocapture %flag, i8* %filename) #0 {
entry:
  %savebuf = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8]* %savebuf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #3
  %cmp = icmp ne i32 %prompt, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %puts68 = call i32 @puts(i8* getelementptr inbounds ([81 x i8]* @str65, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i8* %0) #5
  %cmp2 = icmp eq i32 %call1, 1
  br i1 %cmp2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %puts67 = call i32 @puts(i8* getelementptr inbounds ([63 x i8]* @str64, i64 0, i64 0))
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str9, i64 0, i64 0), i8* %0) #5
  %call9 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8]* @.str10, i64 0, i64 0), i8* %0) #7
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end5
  store i32 11, i32* %flag, align 4, !tbaa !0
  %putchar66 = call i32 @putchar(i32 10) #3
  br label %if.end40

if.else:                                          ; preds = %if.end5
  %call14 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* %0) #7
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.else
  store i32 10, i32* %flag, align 4, !tbaa !0
  %putchar = call i32 @putchar(i32 10) #3
  br label %if.end40

if.else18:                                        ; preds = %if.else
  %call20 = call i32 @strcmp(i8* getelementptr inbounds ([13 x i8]* @.str13, i64 0, i64 0), i8* %0) #7
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.else18
  store i32 12, i32* %flag, align 4, !tbaa !0
  br label %if.end40

if.else23:                                        ; preds = %if.else18
  %call25 = call i32 @strcmp(i8* getelementptr inbounds ([14 x i8]* @.str14, i64 0, i64 0), i8* %0) #7
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.else23
  store i32 13, i32* %flag, align 4, !tbaa !0
  br label %if.end40

if.else28:                                        ; preds = %if.else23
  %call30 = call i32 @strcmp(i8* getelementptr inbounds ([16 x i8]* @.str15, i64 0, i64 0), i8* %0) #7
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.else28
  store i32 19, i32* %flag, align 4, !tbaa !0
  br label %if.end40

if.else33:                                        ; preds = %if.else28
  %call35 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([69 x i8]* @.str16, i64 0, i64 0), i8* %0) #5
  br label %cleanup

if.end40:                                         ; preds = %if.then16, %if.then27, %if.then32, %if.then22, %if.then11
  %1 = load i32* %flag, align 4, !tbaa !0
  %.off = add i32 %1, -10
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %cleanup, label %if.then43

if.then43:                                        ; preds = %if.end40
  br i1 %cmp, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.then43
  %puts65 = call i32 @puts(i8* getelementptr inbounds ([38 x i8]* @str63, i64 0, i64 0))
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.then43
  %call48 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i8* %filename) #5
  %cmp49 = icmp eq i32 %call48, 1
  br i1 %cmp49, label %if.end52, label %if.then50

if.then50:                                        ; preds = %if.end47
  %puts64 = call i32 @puts(i8* getelementptr inbounds ([53 x i8]* @str62, i64 0, i64 0))
  br label %cleanup

if.end52:                                         ; preds = %if.end47
  %puts = call i32 @puts(i8* %filename)
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end52, %if.then50, %if.else33, %if.then3
  %retval.0 = phi i32 [ 1, %if.then3 ], [ 1, %if.then50 ], [ 1, %if.else33 ], [ 0, %if.end40 ], [ 0, %if.end52 ]
  call void @llvm.lifetime.end(i64 256, i8* %0) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @__isoc99_scanf(i8* nocapture, ...) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define i32 @ask_ending_lattice(i32 %prompt, i32* nocapture %flag, i8* %filename) #0 {
entry:
  %savebuf = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8]* %savebuf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #3
  %cmp = icmp ne i32 %prompt, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %puts78 = call i32 @puts(i8* getelementptr inbounds ([141 x i8]* @str69, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i8* %0) #5
  %cmp2 = icmp eq i32 %call1, 1
  br i1 %cmp2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %puts77 = call i32 @puts(i8* getelementptr inbounds ([59 x i8]* @str68, i64 0, i64 0))
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str9, i64 0, i64 0), i8* %0) #5
  %call9 = call i32 @strcmp(i8* getelementptr inbounds ([11 x i8]* @.str22, i64 0, i64 0), i8* %0) #7
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end5
  store i32 21, i32* %flag, align 4, !tbaa !0
  br label %if.then53

if.else:                                          ; preds = %if.end5
  %call13 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8]* @.str23, i64 0, i64 0), i8* %0) #7
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else
  store i32 22, i32* %flag, align 4, !tbaa !0
  br label %if.then53

if.else16:                                        ; preds = %if.else
  %call18 = call i32 @strcmp(i8* getelementptr inbounds ([14 x i8]* @.str24, i64 0, i64 0), i8* %0) #7
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.else16
  store i32 28, i32* %flag, align 4, !tbaa !0
  br label %if.then53

if.else21:                                        ; preds = %if.else16
  %call23 = call i32 @strcmp(i8* getelementptr inbounds ([16 x i8]* @.str25, i64 0, i64 0), i8* %0) #7
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.else21
  store i32 23, i32* %flag, align 4, !tbaa !0
  br label %if.then53

if.else26:                                        ; preds = %if.else21
  %call28 = call i32 @strcmp(i8* getelementptr inbounds ([20 x i8]* @.str26, i64 0, i64 0), i8* %0) #7
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.else26
  store i32 30, i32* %flag, align 4, !tbaa !0
  br label %if.then53

if.else31:                                        ; preds = %if.else26
  %call33 = call i32 @strcmp(i8* getelementptr inbounds ([22 x i8]* @.str27, i64 0, i64 0), i8* %0) #7
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.else36

if.then35:                                        ; preds = %if.else31
  store i32 31, i32* %flag, align 4, !tbaa !0
  br label %if.then53

if.else36:                                        ; preds = %if.else31
  %call38 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8]* @.str28, i64 0, i64 0), i8* %0) #7
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.end51, label %if.else42

if.else42:                                        ; preds = %if.else36
  %call44 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([70 x i8]* @.str29, i64 0, i64 0), i8* %0) #5
  br label %cleanup

if.end51:                                         ; preds = %if.else36
  store i32 20, i32* %flag, align 4, !tbaa !0
  %putchar = call i32 @putchar(i32 10) #3
  %.pr = load i32* %flag, align 4, !tbaa !0
  %cmp52 = icmp eq i32 %.pr, 20
  br i1 %cmp52, label %cleanup, label %if.then53

if.then53:                                        ; preds = %if.then11, %if.then20, %if.then30, %if.then35, %if.then25, %if.then15, %if.end51
  br i1 %cmp, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.then53
  %puts76 = call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str67, i64 0, i64 0))
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.then53
  %call58 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i8* %filename) #5
  %cmp59 = icmp eq i32 %call58, 1
  br i1 %cmp59, label %if.end62, label %if.then60

if.then60:                                        ; preds = %if.end57
  %puts75 = call i32 @puts(i8* getelementptr inbounds ([50 x i8]* @str66, i64 0, i64 0))
  br label %cleanup

if.end62:                                         ; preds = %if.end57
  %puts = call i32 @puts(i8* %filename)
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.end51, %if.then60, %if.else42, %if.then3
  %retval.0 = phi i32 [ 1, %if.then3 ], [ 1, %if.then60 ], [ 1, %if.else42 ], [ 0, %if.end51 ], [ 0, %if.end62 ]
  call void @llvm.lifetime.end(i64 256, i8* %0) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @coldlat() #0 {
entry:
  %0 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp52 = icmp sgt i32 %0, 0
  br i1 %cmp52, label %for.cond1.preheader.lr.ph, label %for.end33

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %1 = load %struct.site** @lattice, align 8, !tbaa !4
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc31
  %i.054 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc32, %for.inc31 ]
  %sit.053 = phi %struct.site* [ %1, %for.cond1.preheader.lr.ph ], [ %incdec.ptr, %for.inc31 ]
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc28, %for.cond1.preheader
  %indvars.iv59 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next60, %for.inc28 ]
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.inc25, %for.cond4.preheader
  %indvars.iv55 = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next56, %for.inc25 ]
  br label %for.body9

for.body9:                                        ; preds = %for.inc, %for.cond7.preheader
  %indvars.iv = phi i64 [ 0, %for.cond7.preheader ], [ %indvars.iv.next, %for.inc ]
  %2 = trunc i64 %indvars.iv to i32
  %3 = trunc i64 %indvars.iv55 to i32
  %cmp10 = icmp eq i32 %3, %2
  %arrayidx14 = getelementptr inbounds %struct.site* %sit.053, i64 0, i32 8, i64 %indvars.iv59, i32 0, i64 %indvars.iv55, i64 %indvars.iv
  br i1 %cmp10, label %if.else, label %if.then

if.then:                                          ; preds = %for.body9
  %call = tail call { double, double } @cmplx(double 0.000000e+00, double 0.000000e+00) #5
  %4 = extractvalue { double, double } %call, 0
  %5 = extractvalue { double, double } %call, 1
  %coerce.sroa.0.0.idx = getelementptr inbounds %struct.complex* %arrayidx14, i64 0, i32 0
  store double %4, double* %coerce.sroa.0.0.idx, align 8
  %coerce.sroa.1.8.idx39 = getelementptr inbounds %struct.site* %sit.053, i64 0, i32 8, i64 %indvars.iv59, i32 0, i64 %indvars.iv55, i64 %indvars.iv, i32 1
  store double %5, double* %coerce.sroa.1.8.idx39, align 8
  br label %for.inc

if.else:                                          ; preds = %for.body9
  %call23 = tail call { double, double } @cmplx(double 1.000000e+00, double 0.000000e+00) #5
  %6 = extractvalue { double, double } %call23, 0
  %7 = extractvalue { double, double } %call23, 1
  %coerce24.sroa.0.0.idx = getelementptr inbounds %struct.complex* %arrayidx14, i64 0, i32 0
  store double %6, double* %coerce24.sroa.0.0.idx, align 8
  %coerce24.sroa.1.8.idx38 = getelementptr inbounds %struct.site* %sit.053, i64 0, i32 8, i64 %indvars.iv59, i32 0, i64 %indvars.iv55, i64 %indvars.iv, i32 1
  store double %7, double* %coerce24.sroa.1.8.idx38, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc25, label %for.body9

for.inc25:                                        ; preds = %for.inc
  %indvars.iv.next56 = add i64 %indvars.iv55, 1
  %lftr.wideiv57 = trunc i64 %indvars.iv.next56 to i32
  %exitcond58 = icmp eq i32 %lftr.wideiv57, 3
  br i1 %exitcond58, label %for.inc28, label %for.cond7.preheader

for.inc28:                                        ; preds = %for.inc25
  %indvars.iv.next60 = add i64 %indvars.iv59, 1
  %lftr.wideiv61 = trunc i64 %indvars.iv.next60 to i32
  %exitcond62 = icmp eq i32 %lftr.wideiv61, 4
  br i1 %exitcond62, label %for.inc31, label %for.cond4.preheader

for.inc31:                                        ; preds = %for.inc28
  %inc32 = add nsw i32 %i.054, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %sit.053, i64 1
  %8 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp = icmp slt i32 %inc32, %8
  br i1 %cmp, label %for.cond1.preheader, label %for.end33

for.end33:                                        ; preds = %for.inc31, %entry
  %9 = load i32* @this_node, align 4, !tbaa !0
  %cmp34 = icmp eq i32 %9, 0
  br i1 %cmp34, label %if.then35, label %if.end37

if.then35:                                        ; preds = %for.end33
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([32 x i8]* @str70, i64 0, i64 0))
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %for.end33
  ret void
}

; Function Attrs: optsize
declare { double, double } @cmplx(double, double) #1

; Function Attrs: nounwind optsize uwtable
define void @funnylat() #0 {
entry:
  %0 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp105 = icmp sgt i32 %0, 0
  br i1 %cmp105, label %for.cond1.preheader.lr.ph, label %for.end74

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %1 = load %struct.site** @lattice, align 8, !tbaa !4
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc72
  %i.0107 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc73, %for.inc72 ]
  %sit.0106 = phi %struct.site* [ %1, %for.cond1.preheader.lr.ph ], [ %incdec.ptr, %for.inc72 ]
  %x = getelementptr inbounds %struct.site* %sit.0106, i64 0, i32 0
  %y = getelementptr inbounds %struct.site* %sit.0106, i64 0, i32 1
  %z = getelementptr inbounds %struct.site* %sit.0106, i64 0, i32 2
  %t = getelementptr inbounds %struct.site* %sit.0106, i64 0, i32 3
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.end16, %for.cond1.preheader
  %indvars.iv112 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next113, %for.end16 ]
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.inc14, %for.cond4.preheader
  %indvars.iv108 = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next109, %for.inc14 ]
  br label %for.body9

for.body9:                                        ; preds = %for.body9, %for.cond7.preheader
  %indvars.iv = phi i64 [ 0, %for.cond7.preheader ], [ %indvars.iv.next, %for.body9 ]
  %call = tail call { double, double } @cmplx(double 0.000000e+00, double 0.000000e+00) #5
  %2 = extractvalue { double, double } %call, 0
  %3 = extractvalue { double, double } %call, 1
  %coerce.sroa.0.0.idx = getelementptr inbounds %struct.site* %sit.0106, i64 0, i32 8, i64 %indvars.iv112, i32 0, i64 %indvars.iv108, i64 %indvars.iv, i32 0
  store double %2, double* %coerce.sroa.0.0.idx, align 8
  %coerce.sroa.1.8.idx75 = getelementptr inbounds %struct.site* %sit.0106, i64 0, i32 8, i64 %indvars.iv112, i32 0, i64 %indvars.iv108, i64 %indvars.iv, i32 1
  store double %3, double* %coerce.sroa.1.8.idx75, align 8
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc14, label %for.body9

for.inc14:                                        ; preds = %for.body9
  %indvars.iv.next109 = add i64 %indvars.iv108, 1
  %lftr.wideiv110 = trunc i64 %indvars.iv.next109 to i32
  %exitcond111 = icmp eq i32 %lftr.wideiv110, 3
  br i1 %exitcond111, label %for.end16, label %for.cond7.preheader

for.end16:                                        ; preds = %for.inc14
  %4 = trunc i64 %indvars.iv112 to i32
  %conv = sitofp i32 %4 to double
  %real = getelementptr inbounds %struct.site* %sit.0106, i64 0, i32 8, i64 %indvars.iv112, i32 0, i64 0, i64 0, i32 0
  store double %conv, double* %real, align 8, !tbaa !3
  %5 = load i16* %x, align 2, !tbaa !5
  %conv23 = sext i16 %5 to i32
  %mul = mul nsw i32 %conv23, 10
  %conv24 = sitofp i32 %mul to double
  %real31 = getelementptr inbounds %struct.site* %sit.0106, i64 0, i32 8, i64 %indvars.iv112, i32 0, i64 1, i64 1, i32 0
  store double %conv24, double* %real31, align 8, !tbaa !3
  %6 = load i16* %y, align 2, !tbaa !5
  %conv32 = sext i16 %6 to i32
  %mul33 = mul nsw i32 %conv32, 100
  %conv34 = sitofp i32 %mul33 to double
  %real41 = getelementptr inbounds %struct.site* %sit.0106, i64 0, i32 8, i64 %indvars.iv112, i32 0, i64 2, i64 2, i32 0
  store double %conv34, double* %real41, align 8, !tbaa !3
  %imag = getelementptr inbounds %struct.site* %sit.0106, i64 0, i32 8, i64 %indvars.iv112, i32 0, i64 0, i64 0, i32 1
  store double %conv, double* %imag, align 8, !tbaa !3
  %7 = load i16* %z, align 2, !tbaa !5
  %conv49 = sext i16 %7 to i32
  %mul50 = mul nsw i32 %conv49, 10
  %conv51 = sitofp i32 %mul50 to double
  %imag58 = getelementptr inbounds %struct.site* %sit.0106, i64 0, i32 8, i64 %indvars.iv112, i32 0, i64 1, i64 1, i32 1
  store double %conv51, double* %imag58, align 8, !tbaa !3
  %8 = load i16* %t, align 2, !tbaa !5
  %conv59 = sext i16 %8 to i32
  %mul60 = mul nsw i32 %conv59, 100
  %conv61 = sitofp i32 %mul60 to double
  %imag68 = getelementptr inbounds %struct.site* %sit.0106, i64 0, i32 8, i64 %indvars.iv112, i32 0, i64 2, i64 2, i32 1
  store double %conv61, double* %imag68, align 8, !tbaa !3
  %indvars.iv.next113 = add i64 %indvars.iv112, 1
  %lftr.wideiv114 = trunc i64 %indvars.iv.next113 to i32
  %exitcond115 = icmp eq i32 %lftr.wideiv114, 4
  br i1 %exitcond115, label %for.inc72, label %for.cond4.preheader

for.inc72:                                        ; preds = %for.end16
  %inc73 = add nsw i32 %i.0107, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %sit.0106, i64 1
  %9 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp = icmp slt i32 %inc73, %9
  br i1 %cmp, label %for.cond1.preheader, label %for.end74

for.end74:                                        ; preds = %for.inc72, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_f(i32 %prompt, i8* %variable_name_string, double* %value) #0 {
entry:
  %checkname = alloca [80 x i8], align 16
  %0 = getelementptr inbounds [80 x i8]* %checkname, i64 0, i64 0
  call void @llvm.lifetime.start(i64 80, i8* %0) #3
  %tobool = icmp eq i32 %prompt, 0
  br i1 %tobool, label %if.else8, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  %call56 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str33, i64 0, i64 0), i8* %variable_name_string) #5
  %call157 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i8* %0) #5
  %call358 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str34, i64 0, i64 0), double* %value) #5
  %cmp459 = icmp eq i32 %call358, 1
  br i1 %cmp459, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.else, %while.body.preheader
  %1 = load double* %value, align 8, !tbaa !3
  %call6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str35, i64 0, i64 0), i8* %variable_name_string, double %1) #5
  br label %cleanup

if.else:                                          ; preds = %while.body.preheader, %if.else
  %puts = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str73, i64 0, i64 0))
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str33, i64 0, i64 0), i8* %variable_name_string) #5
  %call1 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i8* %0) #5
  %call3 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str34, i64 0, i64 0), double* %value) #5
  %cmp4 = icmp eq i32 %call3, 1
  br i1 %cmp4, label %if.then5, label %if.else

if.else8:                                         ; preds = %entry
  %call10 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i8* %0) #5
  switch i32 %call10, label %if.else18 [
    i32 -1, label %if.then12
    i32 0, label %if.then16
  ]

if.then12:                                        ; preds = %if.else8
  %call13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str37, i64 0, i64 0), i8* %variable_name_string) #5
  br label %cleanup

if.then16:                                        ; preds = %if.else8
  %call17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str38, i64 0, i64 0), i8* %variable_name_string) #5
  br label %cleanup

if.else18:                                        ; preds = %if.else8
  %call20 = call i32 @strcmp(i8* %0, i8* %variable_name_string) #7
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.end27, label %if.then22

if.then22:                                        ; preds = %if.else18
  %call24 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([49 x i8]* @.str39, i64 0, i64 0), i8* %variable_name_string, i8* %0) #5
  br label %cleanup

if.end27:                                         ; preds = %if.else18
  %call28 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str9, i64 0, i64 0), i8* %variable_name_string) #5
  %call29 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([4 x i8]* @.str34, i64 0, i64 0), double* %value) #5
  switch i32 %call29, label %if.end38 [
    i32 -1, label %if.then31
    i32 0, label %if.then35
  ]

if.then31:                                        ; preds = %if.end27
  %call32 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([47 x i8]* @.str40, i64 0, i64 0), i8* %variable_name_string) #5
  br label %cleanup

if.then35:                                        ; preds = %if.end27
  %call36 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([43 x i8]* @.str41, i64 0, i64 0), i8* %variable_name_string) #5
  br label %cleanup

if.end38:                                         ; preds = %if.end27
  %2 = load double* %value, align 8, !tbaa !3
  %call39 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str42, i64 0, i64 0), double %2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end38, %if.then35, %if.then31, %if.then22, %if.then16, %if.then12
  %retval.0 = phi i32 [ 1, %if.then12 ], [ 1, %if.then16 ], [ 1, %if.then22 ], [ 1, %if.then31 ], [ 1, %if.then35 ], [ 0, %if.end38 ], [ 0, %if.then5 ]
  call void @llvm.lifetime.end(i64 80, i8* %0) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define i32 @get_i(i32 %prompt, i8* %variable_name_string, i32* %value) #0 {
entry:
  %checkname = alloca [80 x i8], align 16
  %0 = getelementptr inbounds [80 x i8]* %checkname, i64 0, i64 0
  call void @llvm.lifetime.start(i64 80, i8* %0) #3
  %tobool = icmp eq i32 %prompt, 0
  br i1 %tobool, label %if.else8, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  %call56 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str33, i64 0, i64 0), i8* %variable_name_string) #5
  %call157 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i8* %0) #5
  %call358 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i32* %value) #5
  %cmp459 = icmp eq i32 %call358, 1
  br i1 %cmp459, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.else, %while.body.preheader
  %1 = load i32* %value, align 4, !tbaa !0
  %call6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str44, i64 0, i64 0), i8* %variable_name_string, i32 %1) #5
  br label %cleanup

if.else:                                          ; preds = %while.body.preheader, %if.else
  %puts = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str73, i64 0, i64 0))
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str33, i64 0, i64 0), i8* %variable_name_string) #5
  %call1 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i8* %0) #5
  %call3 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i32* %value) #5
  %cmp4 = icmp eq i32 %call3, 1
  br i1 %cmp4, label %if.then5, label %if.else

if.else8:                                         ; preds = %entry
  %call10 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i8* %0) #5
  switch i32 %call10, label %if.else18 [
    i32 -1, label %if.then12
    i32 0, label %if.then16
  ]

if.then12:                                        ; preds = %if.else8
  %call13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str45, i64 0, i64 0), i8* %variable_name_string) #5
  br label %cleanup

if.then16:                                        ; preds = %if.else8
  %call17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str46, i64 0, i64 0), i8* %variable_name_string) #5
  br label %cleanup

if.else18:                                        ; preds = %if.else8
  %call20 = call i32 @strcmp(i8* %0, i8* %variable_name_string) #7
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.end27, label %if.then22

if.then22:                                        ; preds = %if.else18
  %call24 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([49 x i8]* @.str47, i64 0, i64 0), i8* %variable_name_string, i8* %0) #5
  br label %cleanup

if.end27:                                         ; preds = %if.else18
  %call28 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str9, i64 0, i64 0), i8* %variable_name_string) #5
  %call29 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i32* %value) #5
  switch i32 %call29, label %if.end38 [
    i32 -1, label %if.then31
    i32 0, label %if.then35
  ]

if.then31:                                        ; preds = %if.end27
  %call32 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([47 x i8]* @.str48, i64 0, i64 0), i8* %variable_name_string) #5
  br label %cleanup

if.then35:                                        ; preds = %if.end27
  %call36 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([43 x i8]* @.str49, i64 0, i64 0), i8* %variable_name_string) #5
  br label %cleanup

if.end38:                                         ; preds = %if.end27
  %2 = load i32* %value, align 4, !tbaa !0
  %call39 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str50, i64 0, i64 0), i32 %2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end38, %if.then35, %if.then31, %if.then22, %if.then16, %if.then12
  %retval.0 = phi i32 [ 1, %if.then12 ], [ 1, %if.then16 ], [ 1, %if.then22 ], [ 1, %if.then31 ], [ 1, %if.then35 ], [ 0, %if.end38 ], [ 0, %if.then5 ]
  call void @llvm.lifetime.end(i64 80, i8* %0) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_s(i32 %prompt, i8* %variable_name_string, i8* %value) #0 {
entry:
  %checkname = alloca [80 x i8], align 16
  %0 = getelementptr inbounds [80 x i8]* %checkname, i64 0, i64 0
  call void @llvm.lifetime.start(i64 80, i8* %0) #3
  %tobool = icmp eq i32 %prompt, 0
  br i1 %tobool, label %if.else6, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  %call54 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str33, i64 0, i64 0), i8* %variable_name_string) #5
  %call155 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i8* %value) #5
  %cmp256 = icmp eq i32 %call155, 1
  br i1 %cmp256, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.else, %while.body.preheader
  %call4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str51, i64 0, i64 0), i8* %variable_name_string, i8* %value) #5
  br label %cleanup

if.else:                                          ; preds = %while.body.preheader, %if.else
  %puts53 = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str73, i64 0, i64 0))
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str33, i64 0, i64 0), i8* %variable_name_string) #5
  %call1 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i8* %value) #5
  %cmp2 = icmp eq i32 %call1, 1
  br i1 %cmp2, label %if.then3, label %if.else

if.else6:                                         ; preds = %entry
  %call7 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i8* %0) #5
  switch i32 %call7, label %if.else15 [
    i32 -1, label %if.then9
    i32 0, label %if.then13
  ]

if.then9:                                         ; preds = %if.else6
  %call10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str52, i64 0, i64 0), i8* %variable_name_string) #5
  br label %cleanup

if.then13:                                        ; preds = %if.else6
  %call14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str53, i64 0, i64 0), i8* %variable_name_string) #5
  br label %cleanup

if.else15:                                        ; preds = %if.else6
  %call17 = call i32 @strcmp(i8* %0, i8* %variable_name_string) #7
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.end24, label %if.then19

if.then19:                                        ; preds = %if.else15
  %call21 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([49 x i8]* @.str54, i64 0, i64 0), i8* %variable_name_string, i8* %0) #5
  br label %cleanup

if.end24:                                         ; preds = %if.else15
  %call25 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str9, i64 0, i64 0), i8* %variable_name_string) #5
  %call26 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i8* %value) #5
  switch i32 %call26, label %if.end35 [
    i32 -1, label %if.then28
    i32 0, label %if.then32
  ]

if.then28:                                        ; preds = %if.end24
  %call29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([47 x i8]* @.str55, i64 0, i64 0), i8* %variable_name_string) #5
  br label %cleanup

if.then32:                                        ; preds = %if.end24
  %call33 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([43 x i8]* @.str56, i64 0, i64 0), i8* %variable_name_string) #5
  br label %cleanup

if.end35:                                         ; preds = %if.end24
  %puts = call i32 @puts(i8* %value)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end35, %if.then32, %if.then28, %if.then19, %if.then13, %if.then9
  %retval.0 = phi i32 [ 1, %if.then9 ], [ 1, %if.then13 ], [ 1, %if.then19 ], [ 1, %if.then28 ], [ 1, %if.then32 ], [ 0, %if.end35 ], [ 0, %if.then3 ]
  call void @llvm.lifetime.end(i64 80, i8* %0) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_prompt(i32* %prompt) #0 {
entry:
  %initial_prompt = alloca [80 x i8], align 16
  %0 = getelementptr inbounds [80 x i8]* %initial_prompt, i64 0, i64 0
  call void @llvm.lifetime.start(i64 80, i8* %0) #3
  store i32 -1, i32* %prompt, align 4, !tbaa !0
  %puts = call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str74, i64 0, i64 0))
  %call1 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i8* %0) #5
  %call3 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str58, i64 0, i64 0)) #7
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call4 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i32* %prompt) #5
  br label %if.end15

if.else:                                          ; preds = %entry
  %call6 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8]* @.str59, i64 0, i64 0)) #7
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else
  store i32 0, i32* %prompt, align 4, !tbaa !0
  br label %cleanup

if.else9:                                         ; preds = %if.else
  %call11 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8]* @.str60, i64 0, i64 0)) #7
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.else9
  store i32 1, i32* %prompt, align 4, !tbaa !0
  br label %cleanup

if.end15:                                         ; preds = %if.else9, %if.then
  %.pr = load i32* %prompt, align 4, !tbaa !0
  %switch = icmp ult i32 %.pr, 2
  br i1 %switch, label %cleanup, label %if.else19

if.else19:                                        ; preds = %if.end15
  %puts26 = call i32 @puts(i8* getelementptr inbounds ([43 x i8]* @str75, i64 0, i64 0))
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.then8, %if.end15, %if.else19
  %retval.0 = phi i32 [ 1, %if.else19 ], [ 0, %if.end15 ], [ 0, %if.then8 ], [ 0, %if.then13 ]
  call void @llvm.lifetime.end(i64 80, i8* %0) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #3

; Function Attrs: nounwind
declare i32 @putchar(i32) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize readonly }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"double", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}

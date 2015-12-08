; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/setup.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, i32, double, double, double, i32, i32, i32, i32, i32, [256 x i8], [256 x i8] }
%struct.gauge_file = type { %struct._IO_FILE*, %struct.gauge_header*, i8*, i32, i32*, i32, %struct.gauge_check }
%struct.gauge_header = type { i32, [64 x i8], [4 x i32], i32, i32 }
%struct.gauge_check = type { i32, i32 }

@node_prn = external global %struct.double_prn
@iseed = external global i32
@volume = external global i32
@this_node = external global i32
@stdout = external global %struct._IO_FILE*
@.str7 = private unnamed_addr constant [29 x i8] c"Machine = %s, with %d nodes\0A\00", align 1
@.str9 = private unnamed_addr constant [9 x i8] c"nflavors\00", align 1
@par_buf = common global %struct.params zeroinitializer, align 8
@.str10 = private unnamed_addr constant [3 x i8] c"nx\00", align 1
@.str11 = private unnamed_addr constant [3 x i8] c"ny\00", align 1
@.str12 = private unnamed_addr constant [3 x i8] c"nz\00", align 1
@.str13 = private unnamed_addr constant [3 x i8] c"nt\00", align 1
@.str14 = private unnamed_addr constant [6 x i8] c"iseed\00", align 1
@nx = external global i32
@ny = external global i32
@nz = external global i32
@nt = external global i32
@nflavors = external global i32
@number_of_nodes = external global i32
@total_iters = external global i32
@.str16 = private unnamed_addr constant [6 x i8] c"warms\00", align 1
@.str17 = private unnamed_addr constant [8 x i8] c"trajecs\00", align 1
@.str18 = private unnamed_addr constant [18 x i8] c"traj_between_meas\00", align 1
@.str19 = private unnamed_addr constant [5 x i8] c"beta\00", align 1
@.str20 = private unnamed_addr constant [5 x i8] c"mass\00", align 1
@.str21 = private unnamed_addr constant [3 x i8] c"u0\00", align 1
@.str22 = private unnamed_addr constant [25 x i8] c"microcanonical_time_step\00", align 1
@.str23 = private unnamed_addr constant [21 x i8] c"steps_per_trajectory\00", align 1
@.str24 = private unnamed_addr constant [18 x i8] c"max_cg_iterations\00", align 1
@.str25 = private unnamed_addr constant [15 x i8] c"error_per_site\00", align 1
@.str26 = private unnamed_addr constant [21 x i8] c"error_for_propagator\00", align 1
@warms = external global i32
@trajecs = external global i32
@steps = external global i32
@propinterval = external global i32
@niter = external global i32
@rsqmin = external global double
@rsqprop = external global double
@epsilon = external global double
@beta = external global double
@mass = external global double
@u0 = external global double
@startflag = external global i32
@saveflag = external global i32
@startfile = external global [256 x i8]
@savefile = external global [256 x i8]
@startlat_p = external global %struct.gauge_file*
@valid_longlinks = external global i32
@valid_fatlinks = external global i32
@phases_in = external global i32
@gf = common global %struct.gauge_file* null, align 8
@str = private unnamed_addr constant [15 x i8] c"Finished setup\00"
@str28 = private unnamed_addr constant [17 x i8] c"Made 3nn gathers\00"
@str29 = private unnamed_addr constant [16 x i8] c"Made nn gathers\00"
@str30 = private unnamed_addr constant [13 x i8] c"Made lattice\00"
@str31 = private unnamed_addr constant [28 x i8] c"SU3 with improved KS action\00"
@str32 = private unnamed_addr constant [42 x i8] c"Microcanonical simulation with refreshing\00"
@str33 = private unnamed_addr constant [15 x i8] c"MIMD version 6\00"
@str34 = private unnamed_addr constant [12 x i8] c"R algorithm\00"
@str35 = private unnamed_addr constant [2 x i8] c"\0A\00"
@str36 = private unnamed_addr constant [28 x i8] c"third_neighb: bad direction\00"

; Function Attrs: nounwind optsize uwtable
define i32 @setup() #0 {
entry:
  %call = tail call i32 @initial_set() #5
  %0 = load i32* @iseed, align 4, !tbaa !0
  %1 = load i32* @volume, align 4, !tbaa !0
  %call1 = tail call i32 (...)* @mynode() #6
  %add = add nsw i32 %call1, %1
  tail call void @initialize_prn(%struct.double_prn* @node_prn, i32 %0, i32 %add) #6
  tail call void @setup_layout() #6
  tail call void (...)* @make_lattice() #6
  %2 = load i32* @this_node, align 4, !tbaa !0
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %puts21 = tail call i32 @puts(i8* getelementptr inbounds ([13 x i8]* @str30, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call3 = tail call i32 @fflush(%struct._IO_FILE* %3) #6
  tail call void (...)* @make_nn_gathers() #6
  %4 = load i32* @this_node, align 4, !tbaa !0
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %puts20 = tail call i32 @puts(i8* getelementptr inbounds ([16 x i8]* @str29, i64 0, i64 0))
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %5 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call8 = tail call i32 @fflush(%struct._IO_FILE* %5) #6
  tail call void @make_3n_gathers() #5
  %6 = load i32* @this_node, align 4, !tbaa !0
  %cmp9 = icmp eq i32 %6, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  %puts19 = tail call i32 @puts(i8* getelementptr inbounds ([17 x i8]* @str28, i64 0, i64 0))
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7
  %7 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call13 = tail call i32 @fflush(%struct._IO_FILE* %7) #6
  tail call void (...)* @phaseset() #6
  %8 = load i32* @this_node, align 4, !tbaa !0
  %cmp14 = icmp eq i32 %8, 0
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str, i64 0, i64 0))
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end12
  %9 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call18 = tail call i32 @fflush(%struct._IO_FILE* %9) #6
  ret i32 %call
}

; Function Attrs: optsize
declare void @initialize_prn(%struct.double_prn*, i32, i32) #1

; Function Attrs: optsize
declare i32 @mynode(...) #1

; Function Attrs: optsize
declare void @setup_layout() #1

; Function Attrs: optsize
declare void @make_lattice(...) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare void @make_nn_gathers(...) #1

; Function Attrs: optsize
declare void @phaseset(...) #1

; Function Attrs: nounwind optsize uwtable
define i32 @initial_set() #0 {
entry:
  %prompt = alloca i32, align 4
  %call = call i32 (...)* @mynode() #6
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end40

if.then:                                          ; preds = %entry
  %puts = call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str31, i64 0, i64 0))
  %puts60 = call i32 @puts(i8* getelementptr inbounds ([42 x i8]* @str32, i64 0, i64 0))
  %puts61 = call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str33, i64 0, i64 0))
  %call4 = call i8* (...)* @machine_type() #6
  %call5 = call i32 (...)* @numnodes() #6
  %call6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str7, i64 0, i64 0), i8* %call4, i32 %call5) #6
  %puts62 = call i32 @puts(i8* getelementptr inbounds ([12 x i8]* @str34, i64 0, i64 0))
  %call8 = call i32 @get_prompt(i32* %prompt) #6
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.end, label %if.end36

if.end:                                           ; preds = %if.then
  %0 = load i32* %prompt, align 4, !tbaa !0
  %call11 = call i32 @get_i(i32 %0, i8* getelementptr inbounds ([9 x i8]* @.str9, i64 0, i64 0), i32* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 6)) #6
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.end16, label %if.end36

if.end16:                                         ; preds = %if.end
  %1 = load i32* %prompt, align 4, !tbaa !0
  %call14 = call i32 @get_i(i32 %1, i8* getelementptr inbounds ([3 x i8]* @.str10, i64 0, i64 0), i32* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 1)) #6
  %cmp17 = icmp eq i32 %call14, 0
  br i1 %cmp17, label %if.end21, label %if.end36

if.end21:                                         ; preds = %if.end16
  %2 = load i32* %prompt, align 4, !tbaa !0
  %call19 = call i32 @get_i(i32 %2, i8* getelementptr inbounds ([3 x i8]* @.str11, i64 0, i64 0), i32* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 2)) #6
  %cmp22 = icmp eq i32 %call19, 0
  br i1 %cmp22, label %if.end26, label %if.end36

if.end26:                                         ; preds = %if.end21
  %3 = load i32* %prompt, align 4, !tbaa !0
  %call24 = call i32 @get_i(i32 %3, i8* getelementptr inbounds ([3 x i8]* @.str12, i64 0, i64 0), i32* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 3)) #6
  %cmp27 = icmp eq i32 %call24, 0
  br i1 %cmp27, label %if.end31, label %if.end36

if.end31:                                         ; preds = %if.end26
  %4 = load i32* %prompt, align 4, !tbaa !0
  %call29 = call i32 @get_i(i32 %4, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), i32* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 4)) #6
  %cmp32 = icmp eq i32 %call29, 0
  br i1 %cmp32, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end31
  %5 = load i32* %prompt, align 4, !tbaa !0
  %call34 = call i32 @get_i(i32 %5, i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i32* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 5)) #6
  br label %if.end36

if.end36:                                         ; preds = %if.then, %if.end, %if.end16, %if.end21, %if.end26, %if.then33, %if.end31
  %status.5 = phi i32 [ %call34, %if.then33 ], [ %call29, %if.end31 ], [ %call24, %if.end26 ], [ %call19, %if.end21 ], [ %call14, %if.end16 ], [ %call11, %if.end ], [ %call8, %if.then ]
  %cmp37 = icmp sgt i32 %status.5, 0
  br i1 %cmp37, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end36
  store i32 1, i32* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 0), align 8, !tbaa !0
  br label %if.end40

if.else:                                          ; preds = %if.end36
  store i32 0, i32* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 0), align 8, !tbaa !0
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.else, %entry
  call void @broadcast_bytes(i8* bitcast (%struct.params* @par_buf to i8*), i32 640) #6
  %6 = load i64* bitcast (%struct.params* @par_buf to i64*), align 8
  %7 = trunc i64 %6 to i32
  %cmp41 = icmp eq i32 %7, 0
  %8 = lshr i64 %6, 32
  %9 = trunc i64 %8 to i32
  br i1 %cmp41, label %if.end43, label %if.then42

if.then42:                                        ; preds = %if.end40
  call void @normal_exit(i32 0) #6
  %.pre = load i32* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 1), align 4, !tbaa !0
  br label %if.end43

if.end43:                                         ; preds = %if.end40, %if.then42
  %10 = phi i32 [ %9, %if.end40 ], [ %.pre, %if.then42 ]
  store i32 %10, i32* @nx, align 4, !tbaa !0
  %11 = load i64* bitcast (i32* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 2) to i64*), align 8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* @ny, align 4, !tbaa !0
  %13 = lshr i64 %11, 32
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* @nz, align 4, !tbaa !0
  %15 = load i64* bitcast (i32* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 4) to i64*), align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* @nt, align 4, !tbaa !0
  %17 = lshr i64 %15, 32
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* @iseed, align 4, !tbaa !0
  %19 = load i32* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 6), align 8, !tbaa !0
  store i32 %19, i32* @nflavors, align 4, !tbaa !0
  %call44 = call i32 (...)* @mynode() #6
  store i32 %call44, i32* @this_node, align 4, !tbaa !0
  %call45 = call i32 (...)* @numnodes() #6
  store i32 %call45, i32* @number_of_nodes, align 4, !tbaa !0
  %20 = load i32* @nx, align 4, !tbaa !0
  %21 = load i32* @ny, align 4, !tbaa !0
  %mul = mul nsw i32 %21, %20
  %22 = load i32* @nz, align 4, !tbaa !0
  %mul46 = mul nsw i32 %mul, %22
  %23 = load i32* @nt, align 4, !tbaa !0
  %mul47 = mul nsw i32 %mul46, %23
  store i32 %mul47, i32* @volume, align 4, !tbaa !0
  store i32 0, i32* @total_iters, align 4, !tbaa !0
  %24 = load i32* %prompt, align 4, !tbaa !0
  ret i32 %24
}

; Function Attrs: optsize
declare i8* @machine_type(...) #1

; Function Attrs: optsize
declare i32 @numnodes(...) #1

; Function Attrs: optsize
declare i32 @get_prompt(i32*) #1

; Function Attrs: optsize
declare i32 @get_i(i32, i8*, i32*) #1

; Function Attrs: optsize
declare void @broadcast_bytes(i8*, i32) #1

; Function Attrs: optsize
declare void @normal_exit(i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @readin(i32 %prompt) #0 {
entry:
  %x = alloca double, align 8
  %0 = load i32* @this_node, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end74

if.then:                                          ; preds = %entry
  %puts = call i32 @puts(i8* getelementptr inbounds ([2 x i8]* @str35, i64 0, i64 0))
  %call3 = call i32 @get_i(i32 %prompt, i8* getelementptr inbounds ([6 x i8]* @.str16, i64 0, i64 0), i32* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 7)) #6
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.end8, label %if.end70

if.end8:                                          ; preds = %if.then
  %call6 = call i32 @get_i(i32 %prompt, i8* getelementptr inbounds ([8 x i8]* @.str17, i64 0, i64 0), i32* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 8)) #6
  %cmp9 = icmp eq i32 %call6, 0
  br i1 %cmp9, label %if.end13, label %if.end70

if.end13:                                         ; preds = %if.end8
  %call11 = call i32 @get_i(i32 %prompt, i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), i32* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 10)) #6
  %cmp14 = icmp eq i32 %call11, 0
  br i1 %cmp14, label %if.end18, label %if.end70

if.end18:                                         ; preds = %if.end13
  %call16 = call i32 @get_f(i32 %prompt, i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), double* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 11)) #6
  %cmp19 = icmp eq i32 %call16, 0
  br i1 %cmp19, label %if.end23, label %if.end70

if.end23:                                         ; preds = %if.end18
  %call21 = call i32 @get_f(i32 %prompt, i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0), double* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 12)) #6
  %cmp24 = icmp eq i32 %call21, 0
  br i1 %cmp24, label %if.end28, label %if.end70

if.end28:                                         ; preds = %if.end23
  %call26 = call i32 @get_f(i32 %prompt, i8* getelementptr inbounds ([3 x i8]* @.str21, i64 0, i64 0), double* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 13)) #6
  %cmp29 = icmp eq i32 %call26, 0
  br i1 %cmp29, label %if.end33, label %if.end70

if.end33:                                         ; preds = %if.end28
  %call31 = call i32 @get_f(i32 %prompt, i8* getelementptr inbounds ([25 x i8]* @.str22, i64 0, i64 0), double* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 17)) #6
  %cmp34 = icmp eq i32 %call31, 0
  br i1 %cmp34, label %if.end38, label %if.end70

if.end38:                                         ; preds = %if.end33
  %call36 = call i32 @get_i(i32 %prompt, i8* getelementptr inbounds ([21 x i8]* @.str23, i64 0, i64 0), i32* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 9)) #6
  %cmp39 = icmp eq i32 %call36, 0
  br i1 %cmp39, label %if.end43, label %if.end70

if.end43:                                         ; preds = %if.end38
  %call41 = call i32 @get_i(i32 %prompt, i8* getelementptr inbounds ([18 x i8]* @.str24, i64 0, i64 0), i32* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 14)) #6
  %cmp44 = icmp eq i32 %call41, 0
  br i1 %cmp44, label %if.end48, label %if.end70

if.end48:                                         ; preds = %if.end43
  %call46 = call i32 @get_f(i32 %prompt, i8* getelementptr inbounds ([15 x i8]* @.str25, i64 0, i64 0), double* %x) #6
  %cmp49 = icmp eq i32 %call46, 0
  br i1 %cmp49, label %if.end56, label %if.end70

if.end56:                                         ; preds = %if.end48
  %1 = load double* %x, align 8, !tbaa !4
  %mul = fmul double %1, %1
  store double %mul, double* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 15), align 8, !tbaa !4
  %call54 = call i32 @get_f(i32 %prompt, i8* getelementptr inbounds ([21 x i8]* @.str26, i64 0, i64 0), double* %x) #6
  %cmp57 = icmp eq i32 %call54, 0
  br i1 %cmp57, label %if.end65, label %if.end70

if.end65:                                         ; preds = %if.end56
  %2 = load double* %x, align 8, !tbaa !4
  %mul59 = fmul double %2, %2
  store double %mul59, double* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 16), align 8, !tbaa !4
  %call63 = call i32 @ask_starting_lattice(i32 %prompt, i32* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 21), i8* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 23, i64 0)) #6
  %cmp66 = icmp eq i32 %call63, 0
  br i1 %cmp66, label %if.then67, label %if.end70

if.then67:                                        ; preds = %if.end65
  %call68 = call i32 @ask_ending_lattice(i32 %prompt, i32* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 22), i8* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 24, i64 0)) #6
  br label %if.end70

if.end70:                                         ; preds = %if.end13, %if.end18, %if.then, %if.end8, %if.end33, %if.end38, %if.end23, %if.end28, %if.end43, %if.end48, %if.end56, %if.then67, %if.end65
  %status.12 = phi i32 [ %call68, %if.then67 ], [ %call63, %if.end65 ], [ %call54, %if.end56 ], [ %call46, %if.end48 ], [ %call41, %if.end43 ], [ %call26, %if.end28 ], [ %call21, %if.end23 ], [ %call36, %if.end38 ], [ %call31, %if.end33 ], [ %call6, %if.end8 ], [ %call3, %if.then ], [ %call16, %if.end18 ], [ %call11, %if.end13 ]
  %cmp71 = icmp sgt i32 %status.12, 0
  br i1 %cmp71, label %if.then72, label %if.else

if.then72:                                        ; preds = %if.end70
  store i32 1, i32* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 0), align 8, !tbaa !0
  br label %if.end74

if.else:                                          ; preds = %if.end70
  store i32 0, i32* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 0), align 8, !tbaa !0
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.else, %entry
  call void @broadcast_bytes(i8* bitcast (%struct.params* @par_buf to i8*), i32 640) #6
  %3 = load i32* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 0), align 8, !tbaa !0
  %cmp75 = icmp eq i32 %3, 0
  br i1 %cmp75, label %if.end77, label %if.then76

if.then76:                                        ; preds = %if.end74
  call void @normal_exit(i32 0) #6
  br label %if.end77

if.end77:                                         ; preds = %if.end74, %if.then76
  %4 = load i32* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 7), align 4, !tbaa !0
  store i32 %4, i32* @warms, align 4, !tbaa !0
  %5 = load i64* bitcast (i32* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 8) to i64*), align 8
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* @trajecs, align 4, !tbaa !0
  %7 = lshr i64 %5, 32
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* @steps, align 4, !tbaa !0
  %9 = load i32* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 10), align 8, !tbaa !0
  store i32 %9, i32* @propinterval, align 4, !tbaa !0
  %10 = load i32* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 14), align 8, !tbaa !0
  store i32 %10, i32* @niter, align 4, !tbaa !0
  %11 = load double* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 15), align 8, !tbaa !4
  store double %11, double* @rsqmin, align 8, !tbaa !4
  %12 = load double* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 16), align 8, !tbaa !4
  store double %12, double* @rsqprop, align 8, !tbaa !4
  %13 = load double* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 17), align 8, !tbaa !4
  store double %13, double* @epsilon, align 8, !tbaa !4
  %14 = load double* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 11), align 8, !tbaa !4
  store double %14, double* @beta, align 8, !tbaa !4
  %15 = load double* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 12), align 8, !tbaa !4
  store double %15, double* @mass, align 8, !tbaa !4
  %16 = load double* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 13), align 8, !tbaa !4
  store double %16, double* @u0, align 8, !tbaa !4
  %17 = load i32* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 21), align 4, !tbaa !0
  store i32 %17, i32* @startflag, align 4, !tbaa !0
  %18 = load i32* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 22), align 8, !tbaa !0
  store i32 %18, i32* @saveflag, align 4, !tbaa !0
  %call78 = call i8* @strcpy(i8* getelementptr inbounds ([256 x i8]* @startfile, i64 0, i64 0), i8* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 23, i64 0)) #6
  %call79 = call i8* @strcpy(i8* getelementptr inbounds ([256 x i8]* @savefile, i64 0, i64 0), i8* getelementptr inbounds (%struct.params* @par_buf, i64 0, i32 24, i64 0)) #6
  %19 = load i32* @startflag, align 4, !tbaa !0
  %cmp80 = icmp eq i32 %19, 10
  br i1 %cmp80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.end77
  call void @rephase(i32 0) #6
  %.pre = load i32* @startflag, align 4, !tbaa !0
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %if.end77
  %20 = phi i32 [ %.pre, %if.then81 ], [ %19, %if.end77 ]
  %call83 = call %struct.gauge_file* @reload_lattice(i32 %20, i8* getelementptr inbounds ([256 x i8]* @startfile, i64 0, i64 0)) #6
  store %struct.gauge_file* %call83, %struct.gauge_file** @startlat_p, align 8, !tbaa !3
  store i32 0, i32* @valid_longlinks, align 4, !tbaa !0
  store i32 0, i32* @valid_fatlinks, align 4, !tbaa !0
  store i32 0, i32* @phases_in, align 4, !tbaa !0
  call void @rephase(i32 1) #6
  call void (...)* @make_loop_table() #6
  call void (...)* @make_path_table() #6
  ret i32 0
}

; Function Attrs: optsize
declare i32 @get_f(i32, i8*, double*) #1

; Function Attrs: optsize
declare i32 @ask_starting_lattice(i32, i32*, i8*) #1

; Function Attrs: optsize
declare i32 @ask_ending_lattice(i32, i32*, i8*) #1

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #2

; Function Attrs: optsize
declare void @rephase(i32) #1

; Function Attrs: optsize
declare %struct.gauge_file* @reload_lattice(i32, i8*) #1

; Function Attrs: optsize
declare void @make_loop_table(...) #1

; Function Attrs: optsize
declare void @make_path_table(...) #1

; Function Attrs: nounwind optsize uwtable
define void @make_3n_gathers() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %call = call i32 @make_gather(void (i32, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32*)* @third_neighbor, i32* %i, i32 1, i32 0, i32 1) #6
  %0 = load i32* %i, align 4, !tbaa !0
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %i, align 4, !tbaa !0
  %cmp = icmp slt i32 %inc, 4
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  call void @sort_eight_neighborlists(i32 8) #6
  ret void
}

; Function Attrs: optsize
declare i32 @make_gather(void (i32, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32*)*, i32*, i32, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @third_neighbor(i32 %x, i32 %y, i32 %z, i32 %t, i32* nocapture %dirpt, i32 %FB, i32* nocapture %xp, i32* nocapture %yp, i32* nocapture %zp, i32* nocapture %tp) #0 {
entry:
  %cmp = icmp eq i32 %FB, 1
  %0 = load i32* %dirpt, align 4, !tbaa !0
  %sub = sub nsw i32 7, %0
  %cond = select i1 %cmp, i32 %0, i32 %sub
  store i32 %x, i32* %xp, align 4, !tbaa !0
  store i32 %y, i32* %yp, align 4, !tbaa !0
  store i32 %z, i32* %zp, align 4, !tbaa !0
  store i32 %t, i32* %tp, align 4, !tbaa !0
  switch i32 %cond, label %sw.default [
    i32 0, label %sw.bb
    i32 7, label %sw.bb1
    i32 1, label %sw.bb5
    i32 6, label %sw.bb8
    i32 2, label %sw.bb13
    i32 5, label %sw.bb16
    i32 3, label %sw.bb21
    i32 4, label %sw.bb24
  ]

sw.bb:                                            ; preds = %entry
  %add = add nsw i32 %x, 3
  %1 = load i32* @nx, align 4, !tbaa !0
  %rem = srem i32 %add, %1
  store i32 %rem, i32* %xp, align 4, !tbaa !0
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %2 = load i32* @nx, align 4, !tbaa !0
  %mul = shl i32 %2, 2
  %add2 = add i32 %x, -3
  %sub3 = add i32 %add2, %mul
  %rem4 = srem i32 %sub3, %2
  store i32 %rem4, i32* %xp, align 4, !tbaa !0
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %add6 = add nsw i32 %y, 3
  %3 = load i32* @ny, align 4, !tbaa !0
  %rem7 = srem i32 %add6, %3
  store i32 %rem7, i32* %yp, align 4, !tbaa !0
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %4 = load i32* @ny, align 4, !tbaa !0
  %mul9 = shl i32 %4, 2
  %add10 = add i32 %y, -3
  %sub11 = add i32 %add10, %mul9
  %rem12 = srem i32 %sub11, %4
  store i32 %rem12, i32* %yp, align 4, !tbaa !0
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %add14 = add nsw i32 %z, 3
  %5 = load i32* @nz, align 4, !tbaa !0
  %rem15 = srem i32 %add14, %5
  store i32 %rem15, i32* %zp, align 4, !tbaa !0
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %6 = load i32* @nz, align 4, !tbaa !0
  %mul17 = shl i32 %6, 2
  %add18 = add i32 %z, -3
  %sub19 = add i32 %add18, %mul17
  %rem20 = srem i32 %sub19, %6
  store i32 %rem20, i32* %zp, align 4, !tbaa !0
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  %add22 = add nsw i32 %t, 3
  %7 = load i32* @nt, align 4, !tbaa !0
  %rem23 = srem i32 %add22, %7
  store i32 %rem23, i32* %tp, align 4, !tbaa !0
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  %8 = load i32* @nt, align 4, !tbaa !0
  %mul25 = shl i32 %8, 2
  %add26 = add i32 %t, -3
  %sub27 = add i32 %add26, %mul25
  %rem28 = srem i32 %sub27, %8
  store i32 %rem28, i32* %tp, align 4, !tbaa !0
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str36, i64 0, i64 0))
  tail call void @exit(i32 1) #7
  unreachable

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb21, %sw.bb16, %sw.bb13, %sw.bb8, %sw.bb5, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: optsize
declare void @sort_eight_neighborlists(i32) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}

; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/control.c'
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

@.str = private unnamed_addr constant [13 x i8] c"magic_number\00", align 1
@.str1 = private unnamed_addr constant [11 x i8] c"time_stamp\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"checksums\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"nx\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"ny\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c"nz\00", align 1
@.str6 = private unnamed_addr constant [3 x i8] c"nt\00", align 1
@.str7 = private unnamed_addr constant [19 x i8] c"action.description\00", align 1
@.str8 = private unnamed_addr constant [18 x i8] c"gauge.description\00", align 1
@.str9 = private unnamed_addr constant [13 x i8] c"gauge.beta11\00", align 1
@.str10 = private unnamed_addr constant [13 x i8] c"gauge.beta12\00", align 1
@.str11 = private unnamed_addr constant [17 x i8] c"gauge.tadpole.u0\00", align 1
@.str12 = private unnamed_addr constant [13 x i8] c"gauge.nloops\00", align 1
@.str13 = private unnamed_addr constant [12 x i8] c"gauge.nreps\00", align 1
@.str14 = private unnamed_addr constant [24 x i8] c"gauge.previous.filename\00", align 1
@.str15 = private unnamed_addr constant [26 x i8] c"gauge.previous.time_stamp\00", align 1
@.str16 = private unnamed_addr constant [25 x i8] c"gauge.previous.checksums\00", align 1
@.str17 = private unnamed_addr constant [22 x i8] c"gauge.fix.description\00", align 1
@.str18 = private unnamed_addr constant [20 x i8] c"gauge.fix.tolerance\00", align 1
@.str19 = private unnamed_addr constant [24 x i8] c"gauge.smear.description\00", align 1
@.str20 = private unnamed_addr constant [18 x i8] c"gauge.smear.steps\00", align 1
@.str21 = private unnamed_addr constant [19 x i8] c"gauge.smear.factor\00", align 1
@.str22 = private unnamed_addr constant [18 x i8] c"quark.description\00", align 1
@.str23 = private unnamed_addr constant [14 x i8] c"quark.flavors\00", align 1
@.str24 = private unnamed_addr constant [15 x i8] c"quark.flavors1\00", align 1
@.str25 = private unnamed_addr constant [15 x i8] c"quark.flavors2\00", align 1
@.str26 = private unnamed_addr constant [11 x i8] c"quark.mass\00", align 1
@.str27 = private unnamed_addr constant [12 x i8] c"quark.mass1\00", align 1
@.str28 = private unnamed_addr constant [12 x i8] c"quark.mass2\00", align 1
@.str29 = private unnamed_addr constant [12 x i8] c"quark.kappa\00", align 1
@.str30 = private unnamed_addr constant [14 x i8] c"quark.link.c1\00", align 1
@.str31 = private unnamed_addr constant [14 x i8] c"quark.link.c3\00", align 1
@.str32 = private unnamed_addr constant [16 x i8] c"quark.staple.w3\00", align 1
@.str33 = private unnamed_addr constant [16 x i8] c"quark.clover.c0\00", align 1
@.str34 = private unnamed_addr constant [16 x i8] c"quark.clover.u0\00", align 1
@.str35 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@gauge_info_keyword = global [36 x i8*] [i8* getelementptr inbounds ([13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8]* @.str19, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str21, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str29, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str30, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str31, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str32, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str33, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str34, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str35, i32 0, i32 0)], align 16
@warms = common global i32 0, align 4
@this_node = common global i32 0, align 4
@stdout = external global %struct._IO_FILE*
@trajecs = common global i32 0, align 4
@propinterval = common global i32 0, align 4
@lattice = common global %struct.site* null, align 8
@mass = common global double 0.000000e+00, align 8
@.str38 = private unnamed_addr constant [31 x i8] c"average cg iters for step= %e\0A\00", align 1
@.str39 = private unnamed_addr constant [18 x i8] c"total_iters = %d\0A\00", align 1
@total_iters = common global i32 0, align 4
@saveflag = common global i32 0, align 4
@savefile = common global [256 x i8] zeroinitializer, align 16
@ensemble_id = common global [256 x i8] zeroinitializer, align 16
@sequence_number = common global i32 0, align 4
@nx = common global i32 0, align 4
@ny = common global i32 0, align 4
@nz = common global i32 0, align 4
@nt = common global i32 0, align 4
@volume = common global i32 0, align 4
@iseed = common global i32 0, align 4
@steps = common global i32 0, align 4
@niter = common global i32 0, align 4
@nflavors = common global i32 0, align 4
@epsilon = common global double 0.000000e+00, align 8
@beta = common global double 0.000000e+00, align 8
@u0 = common global double 0.000000e+00, align 8
@rsqmin = common global double 0.000000e+00, align 8
@rsqprop = common global double 0.000000e+00, align 8
@startflag = common global i32 0, align 4
@startfile = common global [256 x i8] zeroinitializer, align 16
@phases_in = common global i32 0, align 4
@source_start = common global i32 0, align 4
@source_inc = common global i32 0, align 4
@n_sources = common global i32 0, align 4
@sites_on_node = common global i32 0, align 4
@even_sites_on_node = common global i32 0, align 4
@odd_sites_on_node = common global i32 0, align 4
@number_of_nodes = common global i32 0, align 4
@valid_longlinks = common global i32 0, align 4
@valid_fatlinks = common global i32 0, align 4
@startlat_p = common global %struct.gauge_file* null, align 8
@node_prn = common global %struct.double_prn zeroinitializer, align 8
@gen_pt = common global [16 x i8**] zeroinitializer, align 16
@start_lat_hdr = common global %struct.gauge_header zeroinitializer, align 4
@str = private unnamed_addr constant [18 x i8] c"RUNNING COMPLETED\00"
@str40 = private unnamed_addr constant [18 x i8] c"WARMUPS COMPLETED\00"

; Function Attrs: nounwind optsize uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  tail call void @initialize_machine(i32 %argc, i8** %argv) #4
  tail call void (...)* @g_sync() #4
  %call = tail call i32 (...)* @setup() #4
  %call173 = tail call i32 @readin(i32 %call) #4
  %cmp74 = icmp eq i32 %call173, 0
  br i1 %cmp74, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.cond.backedge
  %call2 = tail call double (...)* @dclock() #4
  %0 = load i32* @warms, align 4, !tbaa !0
  %cmp366 = icmp sgt i32 %0, 0
  br i1 %cmp366, label %for.body, label %for.end

for.body:                                         ; preds = %while.body, %for.body
  %traj_done.067 = phi i32 [ %inc, %for.body ], [ 0, %while.body ]
  %call4 = tail call i32 (...)* @update() #4
  %inc = add nsw i32 %traj_done.067, 1
  %1 = load i32* @warms, align 4, !tbaa !0
  %cmp3 = icmp slt i32 %inc, %1
  br i1 %cmp3, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %while.body
  %2 = load i32* @this_node, align 4, !tbaa !0
  %cmp5 = icmp eq i32 %2, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %puts65 = tail call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str40, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %3 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call7 = tail call i32 @fflush(%struct._IO_FILE* %3) #4
  %4 = load i32* @trajecs, align 4, !tbaa !0
  %cmp968 = icmp sgt i32 %4, 0
  br i1 %cmp968, label %for.body10, label %for.end27

for.body10:                                       ; preds = %if.end, %for.inc25
  %meascount.071 = phi i32 [ %meascount.1, %for.inc25 ], [ 0, %if.end ]
  %traj_done.170 = phi i32 [ %inc26, %for.inc25 ], [ 0, %if.end ]
  %avs_iters.069 = phi i32 [ %avs_iters.1, %for.inc25 ], [ 0, %if.end ]
  %call11 = tail call i32 (...)* @update() #4
  %5 = load i32* @propinterval, align 4, !tbaa !0
  %rem = srem i32 %traj_done.170, %5
  %sub12 = add nsw i32 %5, -1
  %cmp13 = icmp eq i32 %rem, %sub12
  br i1 %cmp13, label %if.then14, label %for.inc25

if.then14:                                        ; preds = %for.body10
  tail call void @rephase(i32 0) #4
  tail call void @g_measure() #4
  tail call void @rephase(i32 1) #4
  %6 = load double* @mass, align 8, !tbaa !4
  tail call void @f_meas_imp(i32 1040, i32 1184, double %6) #4
  %add = add nsw i32 %call11, %avs_iters.069
  %inc22 = add nsw i32 %meascount.071, 1
  %7 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call23 = tail call i32 @fflush(%struct._IO_FILE* %7) #4
  br label %for.inc25

for.inc25:                                        ; preds = %for.body10, %if.then14
  %avs_iters.1 = phi i32 [ %add, %if.then14 ], [ %avs_iters.069, %for.body10 ]
  %meascount.1 = phi i32 [ %inc22, %if.then14 ], [ %meascount.071, %for.body10 ]
  %inc26 = add nsw i32 %traj_done.170, 1
  %8 = load i32* @trajecs, align 4, !tbaa !0
  %cmp9 = icmp slt i32 %inc26, %8
  br i1 %cmp9, label %for.body10, label %for.end27

for.end27:                                        ; preds = %for.inc25, %if.end
  %meascount.0.lcssa = phi i32 [ 0, %if.end ], [ %meascount.1, %for.inc25 ]
  %avs_iters.0.lcssa = phi i32 [ 0, %if.end ], [ %avs_iters.1, %for.inc25 ]
  %9 = load i32* @this_node, align 4, !tbaa !0
  %cmp28 = icmp eq i32 %9, 0
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %for.end27
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str, i64 0, i64 0))
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %for.end27
  %10 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call33 = tail call i32 @fflush(%struct._IO_FILE* %10) #4
  %cmp34 = icmp sgt i32 %meascount.0.lcssa, 0
  %11 = load i32* @this_node, align 4, !tbaa !0
  %cmp37 = icmp eq i32 %11, 0
  %or.cond = and i1 %cmp34, %cmp37
  br i1 %or.cond, label %if.then39, label %if.end44

if.then39:                                        ; preds = %if.end32
  %conv40 = sitofp i32 %avs_iters.0.lcssa to double
  %conv41 = sitofp i32 %meascount.0.lcssa to double
  %div = fdiv double %conv40, %conv41
  %call42 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str38, i64 0, i64 0), double %div) #4
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %if.end32
  %call45 = tail call double (...)* @dclock() #4
  %12 = load i32* @this_node, align 4, !tbaa !0
  %cmp47 = icmp eq i32 %12, 0
  br i1 %cmp47, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end44
  %13 = load i32* @total_iters, align 4, !tbaa !0
  %call50 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str39, i64 0, i64 0), i32 %13) #4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end44
  %14 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call52 = tail call i32 @fflush(%struct._IO_FILE* %14) #4
  %15 = load i32* @saveflag, align 4, !tbaa !0
  %cmp53 = icmp eq i32 %15, 20
  br i1 %cmp53, label %while.cond.backedge, label %if.then55

if.then55:                                        ; preds = %if.end51
  tail call void @rephase(i32 0) #4
  %16 = load i32* @saveflag, align 4, !tbaa !0
  %call56 = tail call %struct.gauge_file* @save_lattice(i32 %16, i8* getelementptr inbounds ([256 x i8]* @savefile, i64 0, i64 0)) #4
  tail call void @rephase(i32 1) #4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then55, %if.end51
  %call1 = tail call i32 @readin(i32 %call) #4
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.cond.backedge, %entry
  ret i32 0
}

; Function Attrs: optsize
declare void @initialize_machine(i32, i8**) #1

; Function Attrs: optsize
declare void @g_sync(...) #1

; Function Attrs: optsize
declare i32 @setup(...) #1

; Function Attrs: optsize
declare i32 @readin(i32) #1

; Function Attrs: optsize
declare double @dclock(...) #1

; Function Attrs: optsize
declare i32 @update(...) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare void @rephase(i32) #1

; Function Attrs: optsize
declare void @g_measure() #1

; Function Attrs: optsize
declare void @f_meas_imp(i32, i32, double) #1

; Function Attrs: optsize
declare %struct.gauge_file* @save_lattice(i32, i8*) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}

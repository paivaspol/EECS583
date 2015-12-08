; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/genalg.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_genalg = type { i32, i32, i32, i32, i32, i32, i32, float, float, float**, float**, float*, float*, float*, float*, float*, float* }
%struct.t_range = type { i32, i32, i32, float, float, float, float }

@.str = private unnamed_addr constant [3 x i8] c"ga\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/genalg.c\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str4 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str5 = private unnamed_addr constant [8 x i8] c"ga->tmp\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"ga->best\00", align 1
@.str7 = private unnamed_addr constant [11 x i8] c"ga->bestit\00", align 1
@.str8 = private unnamed_addr constant [9 x i8] c"ga->cost\00", align 1
@.str9 = private unnamed_addr constant [9 x i8] c"ga->rmsf\00", align 1
@.str10 = private unnamed_addr constant [11 x i8] c"ga->energy\00", align 1
@.str11 = private unnamed_addr constant [26 x i8] c"CR=%f, should be ex [0,1]\00", align 1
@.str12 = private unnamed_addr constant [23 x i8] c"seed=%d, should be > 0\00", align 1
@.str13 = private unnamed_addr constant [33 x i8] c"strategy=%d, should be ex {1-10}\00", align 1
@stdlog = external global %struct._IO_FILE*
@.str14 = private unnamed_addr constant [49 x i8] c"-----------------------------------------------\0A\00", align 1
@.str15 = private unnamed_addr constant [30 x i8] c"Genetic algorithm parameters\0A\00", align 1
@.str16 = private unnamed_addr constant [27 x i8] c"Population size:       %d\0A\00", align 1
@.str17 = private unnamed_addr constant [27 x i8] c"Strategy:              %s\0A\00", align 1
@strat = internal unnamed_addr constant [10 x i8*] [i8* getelementptr inbounds ([14 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @.str29, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str30, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str31, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str32, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str33, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @.str34, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str35, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str36, i32 0, i32 0)], align 16
@.str18 = private unnamed_addr constant [27 x i8] c"Weight factor:         %g\0A\00", align 1
@.str19 = private unnamed_addr constant [27 x i8] c"Crossing over factor:  %g\0A\00", align 1
@.str20 = private unnamed_addr constant [27 x i8] c"Random seed:           %d\0A\00", align 1
@update_ga.i_init = internal unnamed_addr global i32 0, align 4
@print_ga.nfeval = internal unnamed_addr global i32 0, align 4
@.str21 = private unnamed_addr constant [62 x i8] c"\0AGen: %6d Cost:%8.3f  Ener: %8.3f RMSF: %8.3f  <Cost>: %8.3f\0A\00", align 1
@.str22 = private unnamed_addr constant [20 x i8] c"\09best[%d]=%-15.10g\0A\00", align 1
@.str23 = private unnamed_addr constant [51 x i8] c"Animal: %3d Cost:%8.3f  Ener: %8.3f RMSF: %8.3f%s\0A\00", align 1
@.str24 = private unnamed_addr constant [5 x i8] c" ***\00", align 1
@.str25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str26 = private unnamed_addr constant [24 x i8] c"\09Param[%d][%d]=%15.10g\0A\00", align 1
@.str27 = private unnamed_addr constant [14 x i8] c"DE/best/1/exp\00", align 1
@.str28 = private unnamed_addr constant [14 x i8] c"DE/rand/1/exp\00", align 1
@.str29 = private unnamed_addr constant [22 x i8] c"DE/rand-to-best/1/exp\00", align 1
@.str30 = private unnamed_addr constant [14 x i8] c"DE/best/2/exp\00", align 1
@.str31 = private unnamed_addr constant [14 x i8] c"DE/rand/2/exp\00", align 1
@.str32 = private unnamed_addr constant [14 x i8] c"DE/best/1/bin\00", align 1
@.str33 = private unnamed_addr constant [14 x i8] c"DE/rand/1/bin\00", align 1
@.str34 = private unnamed_addr constant [22 x i8] c"DE/rand-to-best/1/bin\00", align 1
@.str35 = private unnamed_addr constant [14 x i8] c"DE/best/2/bin\00", align 1
@.str36 = private unnamed_addr constant [14 x i8] c"DE/rand/2/bin\00", align 1
@.str37 = private unnamed_addr constant [5 x i8] c"r[i]\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.t_genalg* @init_ga(i8* %infile, i32 %D, %struct.t_range* %range) #0 {
entry:
  %ff = alloca double, align 8
  %cr = alloca double, align 8
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 121, i32 1, i32 104) #4
  %0 = bitcast i8* %call to %struct.t_genalg*
  %call1 = call %struct._IO_FILE* @ffopen(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0)) #4
  %NP = bitcast i8* %call to i32*
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call1, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i8* %call) #4
  %strategy = getelementptr inbounds i8* %call, i64 8
  %1 = bitcast i8* %strategy to i32*
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call1, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i8* %strategy) #4
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call1, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), double* %ff) #4
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call1, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), double* %cr) #4
  %seed = getelementptr inbounds i8* %call, i64 12
  %2 = bitcast i8* %seed to i32*
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call1, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i8* %seed) #4
  call void @ffclose(%struct._IO_FILE* %call1) #4
  %3 = load double* %ff, align 8, !tbaa !0
  %conv = fptrunc double %3 to float
  %FF = getelementptr inbounds i8* %call, i64 32
  %4 = bitcast i8* %FF to float*
  store float %conv, float* %4, align 4, !tbaa !3
  %5 = load double* %cr, align 8, !tbaa !0
  %conv7 = fptrunc double %5 to float
  %CR = getelementptr inbounds i8* %call, i64 28
  %6 = bitcast i8* %CR to float*
  store float %conv7, float* %6, align 4, !tbaa !3
  %D8 = getelementptr inbounds i8* %call, i64 4
  %7 = bitcast i8* %D8 to i32*
  store i32 %D, i32* %7, align 4, !tbaa !4
  %ipop = getelementptr inbounds i8* %call, i64 16
  %8 = bitcast i8* %ipop to i32*
  store i32 0, i32* %8, align 4, !tbaa !4
  %gen = getelementptr inbounds i8* %call, i64 20
  %9 = bitcast i8* %gen to i32*
  store i32 0, i32* %9, align 4, !tbaa !4
  %10 = load i32* %NP, align 4, !tbaa !4
  %call11 = call fastcc float** @make2d(i32 %10, i32 %D) #5
  %pold = getelementptr inbounds i8* %call, i64 40
  %11 = bitcast i8* %pold to float***
  store float** %call11, float*** %11, align 8, !tbaa !5
  %12 = load i32* %NP, align 4, !tbaa !4
  %13 = load i32* %7, align 4, !tbaa !4
  %call14 = call fastcc float** @make2d(i32 %12, i32 %13) #5
  %pnew = getelementptr inbounds i8* %call, i64 48
  %14 = bitcast i8* %pnew to float***
  store float** %call14, float*** %14, align 8, !tbaa !5
  %15 = load i32* %7, align 4, !tbaa !4
  %call16 = call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 140, i32 %15, i32 4) #4
  %16 = bitcast i8* %call16 to float*
  %tmp = getelementptr inbounds i8* %call, i64 80
  %17 = bitcast i8* %tmp to float**
  store float* %16, float** %17, align 8, !tbaa !5
  %18 = load i32* %7, align 4, !tbaa !4
  %call18 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 141, i32 %18, i32 4) #4
  %19 = bitcast i8* %call18 to float*
  %best = getelementptr inbounds i8* %call, i64 56
  %20 = bitcast i8* %best to float**
  store float* %19, float** %20, align 8, !tbaa !5
  %21 = load i32* %7, align 4, !tbaa !4
  %call20 = call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 142, i32 %21, i32 4) #4
  %22 = bitcast i8* %call20 to float*
  %bestit = getelementptr inbounds i8* %call, i64 64
  %23 = bitcast i8* %bestit to float**
  store float* %22, float** %23, align 8, !tbaa !5
  %24 = load i32* %NP, align 4, !tbaa !4
  %call22 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 143, i32 %24, i32 4) #4
  %25 = bitcast i8* %call22 to float*
  %cost = getelementptr inbounds i8* %call, i64 72
  %26 = bitcast i8* %cost to float**
  store float* %25, float** %26, align 8, !tbaa !5
  %27 = load i32* %NP, align 4, !tbaa !4
  %call24 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 144, i32 %27, i32 4) #4
  %28 = bitcast i8* %call24 to float*
  %rmsf = getelementptr inbounds i8* %call, i64 88
  %29 = bitcast i8* %rmsf to float**
  store float* %28, float** %29, align 8, !tbaa !5
  %30 = load i32* %NP, align 4, !tbaa !4
  %call26 = call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 145, i32 %30, i32 4) #4
  %31 = bitcast i8* %call26 to float*
  %energy = getelementptr inbounds i8* %call, i64 96
  %32 = bitcast i8* %energy to float**
  store float* %31, float** %32, align 8, !tbaa !5
  %33 = load float* %6, align 4, !tbaa !3
  %cmp = fcmp olt float %33, 0.000000e+00
  %cmp31 = fcmp ogt float %33, 1.000000e+00
  %or.cond = or i1 %cmp, %cmp31
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv34 = fpext float %33 to double
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([26 x i8]* @.str11, i64 0, i64 0), double %conv34) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %34 = load i32* %2, align 4, !tbaa !4
  %cmp36 = icmp slt i32 %34, 1
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([23 x i8]* @.str12, i64 0, i64 0), i32 %34) #4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end
  %35 = load i32* %1, align 4, !tbaa !4
  %36 = icmp ugt i32 %35, 10
  br i1 %36, label %if.then48, label %for.cond.preheader

if.then48:                                        ; preds = %if.end40
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([33 x i8]* @.str13, i64 0, i64 0), i32 %35) #4
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end40, %if.then48
  %37 = load i32* %NP, align 4, !tbaa !4
  %cmp52143 = icmp sgt i32 %37, 0
  br i1 %cmp52143, label %for.cond54.preheader.lr.ph, label %for.end68

for.cond54.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %.pre = load i32* %7, align 4, !tbaa !4
  br label %for.cond54.preheader

for.cond54.preheader:                             ; preds = %for.cond54.preheader.lr.ph, %for.inc66
  %38 = phi i32 [ %37, %for.cond54.preheader.lr.ph ], [ %44, %for.inc66 ]
  %39 = phi i32 [ %.pre, %for.cond54.preheader.lr.ph ], [ %45, %for.inc66 ]
  %indvars.iv145 = phi i64 [ 0, %for.cond54.preheader.lr.ph ], [ %indvars.iv.next146, %for.inc66 ]
  %cmp56141 = icmp sgt i32 %39, 0
  br i1 %cmp56141, label %for.body58, label %for.inc66

for.body58:                                       ; preds = %for.cond54.preheader, %for.body58
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body58 ], [ 0, %for.cond54.preheader ]
  %arrayidx = getelementptr inbounds %struct.t_range* %range, i64 %indvars.iv
  %call60 = call float @value_rand(%struct.t_range* %arrayidx, i32* %2) #4
  %40 = load float*** %11, align 8, !tbaa !5
  %arrayidx64 = getelementptr inbounds float** %40, i64 %indvars.iv145
  %41 = load float** %arrayidx64, align 8, !tbaa !5
  %arrayidx65 = getelementptr inbounds float* %41, i64 %indvars.iv
  store float %call60, float* %arrayidx65, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %42 = load i32* %7, align 4, !tbaa !4
  %43 = trunc i64 %indvars.iv.next to i32
  %cmp56 = icmp slt i32 %43, %42
  br i1 %cmp56, label %for.body58, label %for.cond54.for.inc66_crit_edge

for.cond54.for.inc66_crit_edge:                   ; preds = %for.body58
  %.pre147 = load i32* %NP, align 4, !tbaa !4
  br label %for.inc66

for.inc66:                                        ; preds = %for.cond54.for.inc66_crit_edge, %for.cond54.preheader
  %44 = phi i32 [ %.pre147, %for.cond54.for.inc66_crit_edge ], [ %38, %for.cond54.preheader ]
  %45 = phi i32 [ %42, %for.cond54.for.inc66_crit_edge ], [ %39, %for.cond54.preheader ]
  %indvars.iv.next146 = add i64 %indvars.iv145, 1
  %46 = trunc i64 %indvars.iv.next146 to i32
  %cmp52 = icmp slt i32 %46, %44
  br i1 %cmp52, label %for.cond54.preheader, label %for.end68

for.end68:                                        ; preds = %for.inc66, %for.cond.preheader
  %47 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !5
  %48 = call i64 @fwrite(i8* getelementptr inbounds ([49 x i8]* @.str14, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %47)
  %49 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !5
  %50 = call i64 @fwrite(i8* getelementptr inbounds ([30 x i8]* @.str15, i64 0, i64 0), i64 29, i64 1, %struct._IO_FILE* %49)
  %51 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !5
  %52 = call i64 @fwrite(i8* getelementptr inbounds ([49 x i8]* @.str14, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %51)
  %53 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !5
  %54 = load i32* %NP, align 4, !tbaa !4
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([27 x i8]* @.str16, i64 0, i64 0), i32 %54) #4
  %55 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !5
  %56 = load i32* %1, align 4, !tbaa !4
  %idxprom75 = sext i32 %56 to i64
  %arrayidx76 = getelementptr inbounds [10 x i8*]* @strat, i64 0, i64 %idxprom75
  %57 = load i8** %arrayidx76, align 8, !tbaa !5
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([27 x i8]* @.str17, i64 0, i64 0), i8* %57) #4
  %58 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !5
  %59 = load float* %4, align 4, !tbaa !3
  %conv79 = fpext float %59 to double
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([27 x i8]* @.str18, i64 0, i64 0), double %conv79) #4
  %60 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !5
  %61 = load float* %6, align 4, !tbaa !3
  %conv82 = fpext float %61 to double
  %call83 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([27 x i8]* @.str19, i64 0, i64 0), double %conv82) #4
  %62 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !5
  %63 = load i32* %2, align 4, !tbaa !4
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([27 x i8]* @.str20, i64 0, i64 0), i32 %63) #4
  %64 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !5
  %65 = call i64 @fwrite(i8* getelementptr inbounds ([49 x i8]* @.str14, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %64)
  ret %struct.t_genalg* %0
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #1

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc float** @make2d(i32 %n, i32 %m) #0 {
entry:
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 88, i32 %n, i32 8) #4
  %0 = bitcast i8* %call to float**
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %call1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 90, i32 %m, i32 4) #4
  %1 = bitcast i8* %call1 to float*
  %arrayidx = getelementptr inbounds float** %0, i64 %indvars.iv
  store float* %1, float** %arrayidx, align 8, !tbaa !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret float** %0
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: optsize
declare float @value_rand(%struct.t_range*, i32*) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @update_ga(%struct._IO_FILE* nocapture %fpout_ptr, %struct.t_range* nocapture %range, %struct.t_genalg* %ga) #0 {
entry:
  %0 = load i32* @update_ga.i_init, align 4, !tbaa !4
  %NP = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 0
  %1 = load i32* %NP, align 4, !tbaa !4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %D = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 1
  %2 = load i32* %D, align 4, !tbaa !4
  %idxprom = sext i32 %0 to i64
  %pold = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 9
  %3 = load float*** %pold, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds float** %3, i64 %idxprom
  %4 = load float** %arrayidx, align 8, !tbaa !5
  tail call fastcc void @copy2range(i32 %2, float* %4, %struct.t_range* %range) #5
  %5 = load i32* @update_ga.i_init, align 4, !tbaa !4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @update_ga.i_init, align 4, !tbaa !4
  br label %if.end573

if.else:                                          ; preds = %entry
  %ipop = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 4
  %6 = load i32* %ipop, align 4, !tbaa !4
  %cmp2 = icmp eq i32 %6, %1
  br i1 %cmp2, label %if.then3, label %do.body.preheader

if.then3:                                         ; preds = %if.else
  %gen = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 5
  %7 = load i32* %gen, align 4, !tbaa !4
  %inc4 = add nsw i32 %7, 1
  store i32 %inc4, i32* %gen, align 4, !tbaa !4
  store i32 0, i32* %ipop, align 4, !tbaa !4
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.then3, %if.else
  %i.0.ph = phi i32 [ %6, %if.else ], [ 0, %if.then3 ]
  %seed = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 3
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.body
  %call = tail call float @rando(i32* %seed) #4
  %8 = load i32* %NP, align 4, !tbaa !4
  %conv = sitofp i32 %8 to float
  %mul = fmul float %call, %conv
  %conv9 = fptosi float %mul to i32
  %cmp10 = icmp eq i32 %conv9, %i.0.ph
  br i1 %cmp10, label %do.body, label %do.body12

do.body12:                                        ; preds = %do.body, %do.body12
  %call14 = tail call float @rando(i32* %seed) #4
  %9 = load i32* %NP, align 4, !tbaa !4
  %conv16 = sitofp i32 %9 to float
  %mul17 = fmul float %call14, %conv16
  %conv18 = fptosi float %mul17 to i32
  %cmp20 = icmp eq i32 %conv18, %i.0.ph
  %cmp22 = icmp eq i32 %conv18, %conv9
  %or.cond = or i1 %cmp20, %cmp22
  br i1 %or.cond, label %do.body12, label %do.body25

do.body25:                                        ; preds = %do.body12, %do.body25
  %call27 = tail call float @rando(i32* %seed) #4
  %10 = load i32* %NP, align 4, !tbaa !4
  %conv29 = sitofp i32 %10 to float
  %mul30 = fmul float %call27, %conv29
  %conv31 = fptosi float %mul30 to i32
  %cmp33 = icmp eq i32 %conv31, %i.0.ph
  %cmp35 = icmp eq i32 %conv31, %conv9
  %or.cond855 = or i1 %cmp33, %cmp35
  %cmp38 = icmp eq i32 %conv31, %conv18
  %or.cond856 = or i1 %or.cond855, %cmp38
  br i1 %or.cond856, label %do.body25, label %do.body42

do.body42:                                        ; preds = %do.body25, %do.body42
  %call44 = tail call float @rando(i32* %seed) #4
  %11 = load i32* %NP, align 4, !tbaa !4
  %conv46 = sitofp i32 %11 to float
  %mul47 = fmul float %call44, %conv46
  %conv48 = fptosi float %mul47 to i32
  %cmp50 = icmp eq i32 %conv48, %i.0.ph
  %cmp53 = icmp eq i32 %conv48, %conv9
  %or.cond857 = or i1 %cmp50, %cmp53
  %cmp56 = icmp eq i32 %conv48, %conv18
  %or.cond858 = or i1 %or.cond857, %cmp56
  %cmp59 = icmp eq i32 %conv48, %conv31
  %or.cond859 = or i1 %or.cond858, %cmp59
  br i1 %or.cond859, label %do.body42, label %do.body63

do.body63:                                        ; preds = %do.body42, %do.body63
  %call65 = tail call float @rando(i32* %seed) #4
  %12 = load i32* %NP, align 4, !tbaa !4
  %conv67 = sitofp i32 %12 to float
  %mul68 = fmul float %call65, %conv67
  %conv69 = fptosi float %mul68 to i32
  %cmp71 = icmp eq i32 %conv69, %i.0.ph
  %cmp74 = icmp eq i32 %conv69, %conv9
  %or.cond860 = or i1 %cmp71, %cmp74
  %cmp77 = icmp eq i32 %conv69, %conv18
  %or.cond861 = or i1 %or.cond860, %cmp77
  %cmp80 = icmp eq i32 %conv69, %conv31
  %or.cond862 = or i1 %or.cond861, %cmp80
  %cmp83 = icmp eq i32 %conv69, %conv48
  %or.cond863 = or i1 %or.cond862, %cmp83
  br i1 %or.cond863, label %do.body63, label %do.end86

do.end86:                                         ; preds = %do.body63
  %tmp = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 14
  %13 = load float** %tmp, align 8, !tbaa !5
  %14 = bitcast float* %13 to i8*
  %idxprom87 = sext i32 %i.0.ph to i64
  %pold88 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 9
  %15 = load float*** %pold88, align 8, !tbaa !5
  %arrayidx89 = getelementptr inbounds float** %15, i64 %idxprom87
  %16 = load float** %arrayidx89, align 8, !tbaa !5
  %17 = bitcast float* %16 to i8*
  %D90 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 1
  %18 = load i32* %D90, align 4, !tbaa !4
  %conv91 = sext i32 %18 to i64
  %mul92 = shl nsw i64 %conv91, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %17, i64 %mul92, i32 4, i1 false)
  %call94 = tail call float @rando(i32* %seed) #4
  %19 = load i32* %D90, align 4, !tbaa !4
  %conv96 = sitofp i32 %19 to float
  %mul97 = fmul float %call94, %conv96
  %conv98 = fptosi float %mul97 to i32
  %strategy = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 2
  %20 = load i32* %strategy, align 4, !tbaa !4
  switch i32 %20, label %for.cond514.preheader [
    i32 1, label %do.body99.preheader
    i32 2, label %do.body129.preheader
    i32 3, label %do.body169.preheader
    i32 4, label %do.body217.preheader
    i32 5, label %do.body267.preheader
    i32 6, label %for.cond.preheader
    i32 7, label %for.cond359.preheader
    i32 8, label %for.cond405.preheader
    i32 9, label %for.cond459.preheader
  ]

for.cond459.preheader:                            ; preds = %do.end86
  %cmp461885 = icmp sgt i32 %19, 0
  br i1 %cmp461885, label %for.body463.lr.ph, label %sw.epilog

for.body463.lr.ph:                                ; preds = %for.cond459.preheader
  %CR466 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 7
  %bestit476 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 12
  %idxprom479 = sext i32 %conv9 to i64
  %idxprom484 = sext i32 %conv18 to i64
  %idxprom490 = sext i32 %conv31 to i64
  %idxprom496 = sext i32 %conv48 to i64
  %FF501 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 8
  br label %for.body463

for.cond405.preheader:                            ; preds = %do.end86
  %cmp407881 = icmp sgt i32 %19, 0
  br i1 %cmp407881, label %for.body409.lr.ph, label %sw.epilog

for.body409.lr.ph:                                ; preds = %for.cond405.preheader
  %CR412 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 7
  %FF424 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 8
  %bestit426 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 12
  %idxprom436 = sext i32 %conv9 to i64
  %idxprom441 = sext i32 %conv18 to i64
  br label %for.body409

for.cond359.preheader:                            ; preds = %do.end86
  %cmp361877 = icmp sgt i32 %19, 0
  br i1 %cmp361877, label %for.body363.lr.ph, label %sw.epilog

for.body363.lr.ph:                                ; preds = %for.cond359.preheader
  %CR366 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 7
  %idxprom376 = sext i32 %conv9 to i64
  %FF380 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 8
  %idxprom382 = sext i32 %conv18 to i64
  %idxprom387 = sext i32 %conv31 to i64
  br label %for.body363

for.cond.preheader:                               ; preds = %do.end86
  %cmp320873 = icmp sgt i32 %19, 0
  br i1 %cmp320873, label %for.body.lr.ph, label %sw.epilog

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %CR324 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 7
  %bestit334 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 12
  %FF336 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 8
  %idxprom338 = sext i32 %conv18 to i64
  %idxprom343 = sext i32 %conv31 to i64
  br label %for.body

do.body267.preheader:                             ; preds = %do.end86
  %idxprom269 = sext i32 %conv69 to i64
  %idxprom274 = sext i32 %conv9 to i64
  %idxprom279 = sext i32 %conv18 to i64
  %idxprom285 = sext i32 %conv31 to i64
  %idxprom291 = sext i32 %conv48 to i64
  %FF296 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 8
  %CR309 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 7
  br label %do.body267

do.body217.preheader:                             ; preds = %do.end86
  %bestit219 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 12
  %idxprom222 = sext i32 %conv9 to i64
  %idxprom227 = sext i32 %conv18 to i64
  %idxprom233 = sext i32 %conv31 to i64
  %idxprom239 = sext i32 %conv48 to i64
  %FF244 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 8
  %CR257 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 7
  br label %do.body217

do.body169.preheader:                             ; preds = %do.end86
  %FF173 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 8
  %bestit175 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 12
  %idxprom185 = sext i32 %conv9 to i64
  %idxprom190 = sext i32 %conv18 to i64
  %CR207 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 7
  br label %do.body169

do.body129.preheader:                             ; preds = %do.end86
  %idxprom131 = sext i32 %conv9 to i64
  %FF135 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 8
  %idxprom137 = sext i32 %conv18 to i64
  %idxprom142 = sext i32 %conv31 to i64
  %CR159 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 7
  br label %do.body129

do.body99.preheader:                              ; preds = %do.end86
  %bestit = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 12
  %FF = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 8
  %idxprom103 = sext i32 %conv18 to i64
  %idxprom108 = sext i32 %conv31 to i64
  %CR = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 7
  br label %do.body99

for.cond514.preheader:                            ; preds = %do.end86
  %cmp516864 = icmp sgt i32 %19, 0
  br i1 %cmp516864, label %for.body518.lr.ph, label %sw.epilog

for.body518.lr.ph:                                ; preds = %for.cond514.preheader
  %CR521 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 7
  %idxprom531 = sext i32 %conv69 to i64
  %idxprom536 = sext i32 %conv9 to i64
  %idxprom541 = sext i32 %conv18 to i64
  %idxprom547 = sext i32 %conv31 to i64
  %idxprom553 = sext i32 %conv48 to i64
  %FF558 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 8
  br label %for.body518

do.body99:                                        ; preds = %do.body99.preheader, %land.rhs
  %21 = phi i32 [ %32, %land.rhs ], [ %19, %do.body99.preheader ]
  %n.0 = phi i32 [ %rem, %land.rhs ], [ %conv98, %do.body99.preheader ]
  %L.0 = phi i32 [ %inc118, %land.rhs ], [ 0, %do.body99.preheader ]
  %idxprom100 = sext i32 %n.0 to i64
  %22 = load float** %bestit, align 8, !tbaa !5
  %arrayidx101 = getelementptr inbounds float* %22, i64 %idxprom100
  %23 = load float* %arrayidx101, align 4, !tbaa !3
  %24 = load float* %FF, align 4, !tbaa !3
  %25 = load float*** %pold88, align 8, !tbaa !5
  %arrayidx105 = getelementptr inbounds float** %25, i64 %idxprom103
  %26 = load float** %arrayidx105, align 8, !tbaa !5
  %arrayidx106 = getelementptr inbounds float* %26, i64 %idxprom100
  %27 = load float* %arrayidx106, align 4, !tbaa !3
  %arrayidx110 = getelementptr inbounds float** %25, i64 %idxprom108
  %28 = load float** %arrayidx110, align 8, !tbaa !5
  %arrayidx111 = getelementptr inbounds float* %28, i64 %idxprom100
  %29 = load float* %arrayidx111, align 4, !tbaa !3
  %sub = fsub float %27, %29
  %mul112 = fmul float %24, %sub
  %add = fadd float %23, %mul112
  %30 = load float** %tmp, align 8, !tbaa !5
  %arrayidx115 = getelementptr inbounds float* %30, i64 %idxprom100
  store float %add, float* %arrayidx115, align 4, !tbaa !3
  %inc118 = add nsw i32 %L.0, 1
  %call121 = tail call float @rando(i32* %seed) #4
  %31 = load float* %CR, align 4, !tbaa !3
  %cmp122 = fcmp olt float %call121, %31
  br i1 %cmp122, label %land.rhs, label %sw.epilog

land.rhs:                                         ; preds = %do.body99
  %add116 = add nsw i32 %n.0, 1
  %rem = srem i32 %add116, %21
  %32 = load i32* %D90, align 4, !tbaa !4
  %cmp125 = icmp slt i32 %inc118, %32
  br i1 %cmp125, label %do.body99, label %sw.epilog

do.body129:                                       ; preds = %do.body129.preheader, %land.rhs162
  %33 = phi i32 [ %44, %land.rhs162 ], [ %19, %do.body129.preheader ]
  %n.1 = phi i32 [ %rem154, %land.rhs162 ], [ %conv98, %do.body129.preheader ]
  %L.1 = phi i32 [ %inc155, %land.rhs162 ], [ 0, %do.body129.preheader ]
  %idxprom130 = sext i32 %n.1 to i64
  %34 = load float*** %pold88, align 8, !tbaa !5
  %arrayidx133 = getelementptr inbounds float** %34, i64 %idxprom131
  %35 = load float** %arrayidx133, align 8, !tbaa !5
  %arrayidx134 = getelementptr inbounds float* %35, i64 %idxprom130
  %36 = load float* %arrayidx134, align 4, !tbaa !3
  %37 = load float* %FF135, align 4, !tbaa !3
  %arrayidx139 = getelementptr inbounds float** %34, i64 %idxprom137
  %38 = load float** %arrayidx139, align 8, !tbaa !5
  %arrayidx140 = getelementptr inbounds float* %38, i64 %idxprom130
  %39 = load float* %arrayidx140, align 4, !tbaa !3
  %arrayidx144 = getelementptr inbounds float** %34, i64 %idxprom142
  %40 = load float** %arrayidx144, align 8, !tbaa !5
  %arrayidx145 = getelementptr inbounds float* %40, i64 %idxprom130
  %41 = load float* %arrayidx145, align 4, !tbaa !3
  %sub146 = fsub float %39, %41
  %mul147 = fmul float %37, %sub146
  %add148 = fadd float %36, %mul147
  %42 = load float** %tmp, align 8, !tbaa !5
  %arrayidx151 = getelementptr inbounds float* %42, i64 %idxprom130
  store float %add148, float* %arrayidx151, align 4, !tbaa !3
  %inc155 = add nsw i32 %L.1, 1
  %call158 = tail call float @rando(i32* %seed) #4
  %43 = load float* %CR159, align 4, !tbaa !3
  %cmp160 = fcmp olt float %call158, %43
  br i1 %cmp160, label %land.rhs162, label %sw.epilog

land.rhs162:                                      ; preds = %do.body129
  %add152 = add nsw i32 %n.1, 1
  %rem154 = srem i32 %add152, %33
  %44 = load i32* %D90, align 4, !tbaa !4
  %cmp164 = icmp slt i32 %inc155, %44
  br i1 %cmp164, label %do.body129, label %sw.epilog

do.body169:                                       ; preds = %do.body169.preheader, %land.rhs210
  %45 = phi i32 [ %57, %land.rhs210 ], [ %19, %do.body169.preheader ]
  %n.2 = phi i32 [ %rem202, %land.rhs210 ], [ %conv98, %do.body169.preheader ]
  %L.2 = phi i32 [ %inc203, %land.rhs210 ], [ 0, %do.body169.preheader ]
  %idxprom170 = sext i32 %n.2 to i64
  %46 = load float** %tmp, align 8, !tbaa !5
  %arrayidx172 = getelementptr inbounds float* %46, i64 %idxprom170
  %47 = load float* %arrayidx172, align 4, !tbaa !3
  %48 = load float* %FF173, align 4, !tbaa !3
  %49 = load float** %bestit175, align 8, !tbaa !5
  %arrayidx176 = getelementptr inbounds float* %49, i64 %idxprom170
  %50 = load float* %arrayidx176, align 4, !tbaa !3
  %sub180 = fsub float %50, %47
  %mul181 = fmul float %48, %sub180
  %add182 = fadd float %47, %mul181
  %51 = load float*** %pold88, align 8, !tbaa !5
  %arrayidx187 = getelementptr inbounds float** %51, i64 %idxprom185
  %52 = load float** %arrayidx187, align 8, !tbaa !5
  %arrayidx188 = getelementptr inbounds float* %52, i64 %idxprom170
  %53 = load float* %arrayidx188, align 4, !tbaa !3
  %arrayidx192 = getelementptr inbounds float** %51, i64 %idxprom190
  %54 = load float** %arrayidx192, align 8, !tbaa !5
  %arrayidx193 = getelementptr inbounds float* %54, i64 %idxprom170
  %55 = load float* %arrayidx193, align 4, !tbaa !3
  %sub194 = fsub float %53, %55
  %mul195 = fmul float %48, %sub194
  %add196 = fadd float %add182, %mul195
  store float %add196, float* %arrayidx172, align 4, !tbaa !3
  %inc203 = add nsw i32 %L.2, 1
  %call206 = tail call float @rando(i32* %seed) #4
  %56 = load float* %CR207, align 4, !tbaa !3
  %cmp208 = fcmp olt float %call206, %56
  br i1 %cmp208, label %land.rhs210, label %sw.epilog

land.rhs210:                                      ; preds = %do.body169
  %add200 = add nsw i32 %n.2, 1
  %rem202 = srem i32 %add200, %45
  %57 = load i32* %D90, align 4, !tbaa !4
  %cmp212 = icmp slt i32 %inc203, %57
  br i1 %cmp212, label %do.body169, label %sw.epilog

do.body217:                                       ; preds = %do.body217.preheader, %land.rhs260
  %58 = phi i32 [ %73, %land.rhs260 ], [ %19, %do.body217.preheader ]
  %n.3 = phi i32 [ %rem252, %land.rhs260 ], [ %conv98, %do.body217.preheader ]
  %L.3 = phi i32 [ %inc253, %land.rhs260 ], [ 0, %do.body217.preheader ]
  %idxprom218 = sext i32 %n.3 to i64
  %59 = load float** %bestit219, align 8, !tbaa !5
  %arrayidx220 = getelementptr inbounds float* %59, i64 %idxprom218
  %60 = load float* %arrayidx220, align 4, !tbaa !3
  %61 = load float*** %pold88, align 8, !tbaa !5
  %arrayidx224 = getelementptr inbounds float** %61, i64 %idxprom222
  %62 = load float** %arrayidx224, align 8, !tbaa !5
  %arrayidx225 = getelementptr inbounds float* %62, i64 %idxprom218
  %63 = load float* %arrayidx225, align 4, !tbaa !3
  %arrayidx229 = getelementptr inbounds float** %61, i64 %idxprom227
  %64 = load float** %arrayidx229, align 8, !tbaa !5
  %arrayidx230 = getelementptr inbounds float* %64, i64 %idxprom218
  %65 = load float* %arrayidx230, align 4, !tbaa !3
  %add231 = fadd float %63, %65
  %arrayidx235 = getelementptr inbounds float** %61, i64 %idxprom233
  %66 = load float** %arrayidx235, align 8, !tbaa !5
  %arrayidx236 = getelementptr inbounds float* %66, i64 %idxprom218
  %67 = load float* %arrayidx236, align 4, !tbaa !3
  %sub237 = fsub float %add231, %67
  %arrayidx241 = getelementptr inbounds float** %61, i64 %idxprom239
  %68 = load float** %arrayidx241, align 8, !tbaa !5
  %arrayidx242 = getelementptr inbounds float* %68, i64 %idxprom218
  %69 = load float* %arrayidx242, align 4, !tbaa !3
  %sub243 = fsub float %sub237, %69
  %70 = load float* %FF244, align 4, !tbaa !3
  %mul245 = fmul float %sub243, %70
  %add246 = fadd float %60, %mul245
  %71 = load float** %tmp, align 8, !tbaa !5
  %arrayidx249 = getelementptr inbounds float* %71, i64 %idxprom218
  store float %add246, float* %arrayidx249, align 4, !tbaa !3
  %inc253 = add nsw i32 %L.3, 1
  %call256 = tail call float @rando(i32* %seed) #4
  %72 = load float* %CR257, align 4, !tbaa !3
  %cmp258 = fcmp olt float %call256, %72
  br i1 %cmp258, label %land.rhs260, label %sw.epilog

land.rhs260:                                      ; preds = %do.body217
  %add250 = add nsw i32 %n.3, 1
  %rem252 = srem i32 %add250, %58
  %73 = load i32* %D90, align 4, !tbaa !4
  %cmp262 = icmp slt i32 %inc253, %73
  br i1 %cmp262, label %do.body217, label %sw.epilog

do.body267:                                       ; preds = %do.body267.preheader, %land.rhs312
  %74 = phi i32 [ %89, %land.rhs312 ], [ %19, %do.body267.preheader ]
  %n.4 = phi i32 [ %rem304, %land.rhs312 ], [ %conv98, %do.body267.preheader ]
  %L.4 = phi i32 [ %inc305, %land.rhs312 ], [ 0, %do.body267.preheader ]
  %idxprom268 = sext i32 %n.4 to i64
  %75 = load float*** %pold88, align 8, !tbaa !5
  %arrayidx271 = getelementptr inbounds float** %75, i64 %idxprom269
  %76 = load float** %arrayidx271, align 8, !tbaa !5
  %arrayidx272 = getelementptr inbounds float* %76, i64 %idxprom268
  %77 = load float* %arrayidx272, align 4, !tbaa !3
  %arrayidx276 = getelementptr inbounds float** %75, i64 %idxprom274
  %78 = load float** %arrayidx276, align 8, !tbaa !5
  %arrayidx277 = getelementptr inbounds float* %78, i64 %idxprom268
  %79 = load float* %arrayidx277, align 4, !tbaa !3
  %arrayidx281 = getelementptr inbounds float** %75, i64 %idxprom279
  %80 = load float** %arrayidx281, align 8, !tbaa !5
  %arrayidx282 = getelementptr inbounds float* %80, i64 %idxprom268
  %81 = load float* %arrayidx282, align 4, !tbaa !3
  %add283 = fadd float %79, %81
  %arrayidx287 = getelementptr inbounds float** %75, i64 %idxprom285
  %82 = load float** %arrayidx287, align 8, !tbaa !5
  %arrayidx288 = getelementptr inbounds float* %82, i64 %idxprom268
  %83 = load float* %arrayidx288, align 4, !tbaa !3
  %sub289 = fsub float %add283, %83
  %arrayidx293 = getelementptr inbounds float** %75, i64 %idxprom291
  %84 = load float** %arrayidx293, align 8, !tbaa !5
  %arrayidx294 = getelementptr inbounds float* %84, i64 %idxprom268
  %85 = load float* %arrayidx294, align 4, !tbaa !3
  %sub295 = fsub float %sub289, %85
  %86 = load float* %FF296, align 4, !tbaa !3
  %mul297 = fmul float %sub295, %86
  %add298 = fadd float %77, %mul297
  %87 = load float** %tmp, align 8, !tbaa !5
  %arrayidx301 = getelementptr inbounds float* %87, i64 %idxprom268
  store float %add298, float* %arrayidx301, align 4, !tbaa !3
  %inc305 = add nsw i32 %L.4, 1
  %call308 = tail call float @rando(i32* %seed) #4
  %88 = load float* %CR309, align 4, !tbaa !3
  %cmp310 = fcmp olt float %call308, %88
  br i1 %cmp310, label %land.rhs312, label %sw.epilog

land.rhs312:                                      ; preds = %do.body267
  %add302 = add nsw i32 %n.4, 1
  %rem304 = srem i32 %add302, %74
  %89 = load i32* %D90, align 4, !tbaa !4
  %cmp314 = icmp slt i32 %inc305, %89
  br i1 %cmp314, label %do.body267, label %sw.epilog

for.body:                                         ; preds = %for.body.lr.ph, %if.end353
  %L.5875 = phi i32 [ 0, %for.body.lr.ph ], [ %inc357, %if.end353 ]
  %n.5874 = phi i32 [ %conv98, %for.body.lr.ph ], [ %rem356, %if.end353 ]
  %call323 = tail call float @rando(i32* %seed) #4
  %90 = load float* %CR324, align 4, !tbaa !3
  %cmp325 = fcmp olt float %call323, %90
  %.pre888.pre = load i32* %D90, align 4, !tbaa !4
  br i1 %cmp325, label %if.then332, label %lor.lhs.false327

lor.lhs.false327:                                 ; preds = %for.body
  %sub329 = add nsw i32 %.pre888.pre, -1
  %cmp330 = icmp eq i32 %L.5875, %sub329
  br i1 %cmp330, label %if.then332, label %if.end353

if.then332:                                       ; preds = %for.body, %lor.lhs.false327
  %idxprom333 = sext i32 %n.5874 to i64
  %91 = load float** %bestit334, align 8, !tbaa !5
  %arrayidx335 = getelementptr inbounds float* %91, i64 %idxprom333
  %92 = load float* %arrayidx335, align 4, !tbaa !3
  %93 = load float* %FF336, align 4, !tbaa !3
  %94 = load float*** %pold88, align 8, !tbaa !5
  %arrayidx340 = getelementptr inbounds float** %94, i64 %idxprom338
  %95 = load float** %arrayidx340, align 8, !tbaa !5
  %arrayidx341 = getelementptr inbounds float* %95, i64 %idxprom333
  %96 = load float* %arrayidx341, align 4, !tbaa !3
  %arrayidx345 = getelementptr inbounds float** %94, i64 %idxprom343
  %97 = load float** %arrayidx345, align 8, !tbaa !5
  %arrayidx346 = getelementptr inbounds float* %97, i64 %idxprom333
  %98 = load float* %arrayidx346, align 4, !tbaa !3
  %sub347 = fsub float %96, %98
  %mul348 = fmul float %93, %sub347
  %add349 = fadd float %92, %mul348
  %99 = load float** %tmp, align 8, !tbaa !5
  %arrayidx352 = getelementptr inbounds float* %99, i64 %idxprom333
  store float %add349, float* %arrayidx352, align 4, !tbaa !3
  br label %if.end353

if.end353:                                        ; preds = %if.then332, %lor.lhs.false327
  %add354 = add nsw i32 %n.5874, 1
  %rem356 = srem i32 %add354, %.pre888.pre
  %inc357 = add nsw i32 %L.5875, 1
  %cmp320 = icmp slt i32 %inc357, %.pre888.pre
  br i1 %cmp320, label %for.body, label %sw.epilog

for.body363:                                      ; preds = %for.body363.lr.ph, %if.end397
  %L.6879 = phi i32 [ 0, %for.body363.lr.ph ], [ %inc402, %if.end397 ]
  %n.6878 = phi i32 [ %conv98, %for.body363.lr.ph ], [ %rem400, %if.end397 ]
  %call365 = tail call float @rando(i32* %seed) #4
  %100 = load float* %CR366, align 4, !tbaa !3
  %cmp367 = fcmp olt float %call365, %100
  %.pre889.pre = load i32* %D90, align 4, !tbaa !4
  br i1 %cmp367, label %if.then374, label %lor.lhs.false369

lor.lhs.false369:                                 ; preds = %for.body363
  %sub371 = add nsw i32 %.pre889.pre, -1
  %cmp372 = icmp eq i32 %L.6879, %sub371
  br i1 %cmp372, label %if.then374, label %if.end397

if.then374:                                       ; preds = %for.body363, %lor.lhs.false369
  %idxprom375 = sext i32 %n.6878 to i64
  %101 = load float*** %pold88, align 8, !tbaa !5
  %arrayidx378 = getelementptr inbounds float** %101, i64 %idxprom376
  %102 = load float** %arrayidx378, align 8, !tbaa !5
  %arrayidx379 = getelementptr inbounds float* %102, i64 %idxprom375
  %103 = load float* %arrayidx379, align 4, !tbaa !3
  %104 = load float* %FF380, align 4, !tbaa !3
  %arrayidx384 = getelementptr inbounds float** %101, i64 %idxprom382
  %105 = load float** %arrayidx384, align 8, !tbaa !5
  %arrayidx385 = getelementptr inbounds float* %105, i64 %idxprom375
  %106 = load float* %arrayidx385, align 4, !tbaa !3
  %arrayidx389 = getelementptr inbounds float** %101, i64 %idxprom387
  %107 = load float** %arrayidx389, align 8, !tbaa !5
  %arrayidx390 = getelementptr inbounds float* %107, i64 %idxprom375
  %108 = load float* %arrayidx390, align 4, !tbaa !3
  %sub391 = fsub float %106, %108
  %mul392 = fmul float %104, %sub391
  %add393 = fadd float %103, %mul392
  %109 = load float** %tmp, align 8, !tbaa !5
  %arrayidx396 = getelementptr inbounds float* %109, i64 %idxprom375
  store float %add393, float* %arrayidx396, align 4, !tbaa !3
  br label %if.end397

if.end397:                                        ; preds = %if.then374, %lor.lhs.false369
  %add398 = add nsw i32 %n.6878, 1
  %rem400 = srem i32 %add398, %.pre889.pre
  %inc402 = add nsw i32 %L.6879, 1
  %cmp361 = icmp slt i32 %inc402, %.pre889.pre
  br i1 %cmp361, label %for.body363, label %sw.epilog

for.body409:                                      ; preds = %for.body409.lr.ph, %if.end451
  %L.7883 = phi i32 [ 0, %for.body409.lr.ph ], [ %inc456, %if.end451 ]
  %n.7882 = phi i32 [ %conv98, %for.body409.lr.ph ], [ %rem454, %if.end451 ]
  %call411 = tail call float @rando(i32* %seed) #4
  %110 = load float* %CR412, align 4, !tbaa !3
  %cmp413 = fcmp olt float %call411, %110
  %.pre890.pre = load i32* %D90, align 4, !tbaa !4
  br i1 %cmp413, label %if.then420, label %lor.lhs.false415

lor.lhs.false415:                                 ; preds = %for.body409
  %sub417 = add nsw i32 %.pre890.pre, -1
  %cmp418 = icmp eq i32 %L.7883, %sub417
  br i1 %cmp418, label %if.then420, label %if.end451

if.then420:                                       ; preds = %for.body409, %lor.lhs.false415
  %idxprom421 = sext i32 %n.7882 to i64
  %111 = load float** %tmp, align 8, !tbaa !5
  %arrayidx423 = getelementptr inbounds float* %111, i64 %idxprom421
  %112 = load float* %arrayidx423, align 4, !tbaa !3
  %113 = load float* %FF424, align 4, !tbaa !3
  %114 = load float** %bestit426, align 8, !tbaa !5
  %arrayidx427 = getelementptr inbounds float* %114, i64 %idxprom421
  %115 = load float* %arrayidx427, align 4, !tbaa !3
  %sub431 = fsub float %115, %112
  %mul432 = fmul float %113, %sub431
  %add433 = fadd float %112, %mul432
  %116 = load float*** %pold88, align 8, !tbaa !5
  %arrayidx438 = getelementptr inbounds float** %116, i64 %idxprom436
  %117 = load float** %arrayidx438, align 8, !tbaa !5
  %arrayidx439 = getelementptr inbounds float* %117, i64 %idxprom421
  %118 = load float* %arrayidx439, align 4, !tbaa !3
  %arrayidx443 = getelementptr inbounds float** %116, i64 %idxprom441
  %119 = load float** %arrayidx443, align 8, !tbaa !5
  %arrayidx444 = getelementptr inbounds float* %119, i64 %idxprom421
  %120 = load float* %arrayidx444, align 4, !tbaa !3
  %sub445 = fsub float %118, %120
  %mul446 = fmul float %113, %sub445
  %add447 = fadd float %add433, %mul446
  store float %add447, float* %arrayidx423, align 4, !tbaa !3
  br label %if.end451

if.end451:                                        ; preds = %if.then420, %lor.lhs.false415
  %add452 = add nsw i32 %n.7882, 1
  %rem454 = srem i32 %add452, %.pre890.pre
  %inc456 = add nsw i32 %L.7883, 1
  %cmp407 = icmp slt i32 %inc456, %.pre890.pre
  br i1 %cmp407, label %for.body409, label %sw.epilog

for.body463:                                      ; preds = %for.body463.lr.ph, %if.end507
  %L.8887 = phi i32 [ 0, %for.body463.lr.ph ], [ %inc512, %if.end507 ]
  %n.8886 = phi i32 [ %conv98, %for.body463.lr.ph ], [ %rem510, %if.end507 ]
  %call465 = tail call float @rando(i32* %seed) #4
  %121 = load float* %CR466, align 4, !tbaa !3
  %cmp467 = fcmp olt float %call465, %121
  %.pre891.pre = load i32* %D90, align 4, !tbaa !4
  br i1 %cmp467, label %if.then474, label %lor.lhs.false469

lor.lhs.false469:                                 ; preds = %for.body463
  %sub471 = add nsw i32 %.pre891.pre, -1
  %cmp472 = icmp eq i32 %L.8887, %sub471
  br i1 %cmp472, label %if.then474, label %if.end507

if.then474:                                       ; preds = %for.body463, %lor.lhs.false469
  %idxprom475 = sext i32 %n.8886 to i64
  %122 = load float** %bestit476, align 8, !tbaa !5
  %arrayidx477 = getelementptr inbounds float* %122, i64 %idxprom475
  %123 = load float* %arrayidx477, align 4, !tbaa !3
  %124 = load float*** %pold88, align 8, !tbaa !5
  %arrayidx481 = getelementptr inbounds float** %124, i64 %idxprom479
  %125 = load float** %arrayidx481, align 8, !tbaa !5
  %arrayidx482 = getelementptr inbounds float* %125, i64 %idxprom475
  %126 = load float* %arrayidx482, align 4, !tbaa !3
  %arrayidx486 = getelementptr inbounds float** %124, i64 %idxprom484
  %127 = load float** %arrayidx486, align 8, !tbaa !5
  %arrayidx487 = getelementptr inbounds float* %127, i64 %idxprom475
  %128 = load float* %arrayidx487, align 4, !tbaa !3
  %add488 = fadd float %126, %128
  %arrayidx492 = getelementptr inbounds float** %124, i64 %idxprom490
  %129 = load float** %arrayidx492, align 8, !tbaa !5
  %arrayidx493 = getelementptr inbounds float* %129, i64 %idxprom475
  %130 = load float* %arrayidx493, align 4, !tbaa !3
  %sub494 = fsub float %add488, %130
  %arrayidx498 = getelementptr inbounds float** %124, i64 %idxprom496
  %131 = load float** %arrayidx498, align 8, !tbaa !5
  %arrayidx499 = getelementptr inbounds float* %131, i64 %idxprom475
  %132 = load float* %arrayidx499, align 4, !tbaa !3
  %sub500 = fsub float %sub494, %132
  %133 = load float* %FF501, align 4, !tbaa !3
  %mul502 = fmul float %sub500, %133
  %add503 = fadd float %123, %mul502
  %134 = load float** %tmp, align 8, !tbaa !5
  %arrayidx506 = getelementptr inbounds float* %134, i64 %idxprom475
  store float %add503, float* %arrayidx506, align 4, !tbaa !3
  br label %if.end507

if.end507:                                        ; preds = %if.then474, %lor.lhs.false469
  %add508 = add nsw i32 %n.8886, 1
  %rem510 = srem i32 %add508, %.pre891.pre
  %inc512 = add nsw i32 %L.8887, 1
  %cmp461 = icmp slt i32 %inc512, %.pre891.pre
  br i1 %cmp461, label %for.body463, label %sw.epilog

for.body518:                                      ; preds = %for.body518.lr.ph, %if.end564
  %L.9866 = phi i32 [ 0, %for.body518.lr.ph ], [ %inc569, %if.end564 ]
  %n.9865 = phi i32 [ %conv98, %for.body518.lr.ph ], [ %rem567, %if.end564 ]
  %call520 = tail call float @rando(i32* %seed) #4
  %135 = load float* %CR521, align 4, !tbaa !3
  %cmp522 = fcmp olt float %call520, %135
  %.pre.pre = load i32* %D90, align 4, !tbaa !4
  br i1 %cmp522, label %if.then529, label %lor.lhs.false524

lor.lhs.false524:                                 ; preds = %for.body518
  %sub526 = add nsw i32 %.pre.pre, -1
  %cmp527 = icmp eq i32 %L.9866, %sub526
  br i1 %cmp527, label %if.then529, label %if.end564

if.then529:                                       ; preds = %for.body518, %lor.lhs.false524
  %idxprom530 = sext i32 %n.9865 to i64
  %136 = load float*** %pold88, align 8, !tbaa !5
  %arrayidx533 = getelementptr inbounds float** %136, i64 %idxprom531
  %137 = load float** %arrayidx533, align 8, !tbaa !5
  %arrayidx534 = getelementptr inbounds float* %137, i64 %idxprom530
  %138 = load float* %arrayidx534, align 4, !tbaa !3
  %arrayidx538 = getelementptr inbounds float** %136, i64 %idxprom536
  %139 = load float** %arrayidx538, align 8, !tbaa !5
  %arrayidx539 = getelementptr inbounds float* %139, i64 %idxprom530
  %140 = load float* %arrayidx539, align 4, !tbaa !3
  %arrayidx543 = getelementptr inbounds float** %136, i64 %idxprom541
  %141 = load float** %arrayidx543, align 8, !tbaa !5
  %arrayidx544 = getelementptr inbounds float* %141, i64 %idxprom530
  %142 = load float* %arrayidx544, align 4, !tbaa !3
  %add545 = fadd float %140, %142
  %arrayidx549 = getelementptr inbounds float** %136, i64 %idxprom547
  %143 = load float** %arrayidx549, align 8, !tbaa !5
  %arrayidx550 = getelementptr inbounds float* %143, i64 %idxprom530
  %144 = load float* %arrayidx550, align 4, !tbaa !3
  %sub551 = fsub float %add545, %144
  %arrayidx555 = getelementptr inbounds float** %136, i64 %idxprom553
  %145 = load float** %arrayidx555, align 8, !tbaa !5
  %arrayidx556 = getelementptr inbounds float* %145, i64 %idxprom530
  %146 = load float* %arrayidx556, align 4, !tbaa !3
  %sub557 = fsub float %sub551, %146
  %147 = load float* %FF558, align 4, !tbaa !3
  %mul559 = fmul float %sub557, %147
  %add560 = fadd float %138, %mul559
  %148 = load float** %tmp, align 8, !tbaa !5
  %arrayidx563 = getelementptr inbounds float* %148, i64 %idxprom530
  store float %add560, float* %arrayidx563, align 4, !tbaa !3
  br label %if.end564

if.end564:                                        ; preds = %if.then529, %lor.lhs.false524
  %add565 = add nsw i32 %n.9865, 1
  %rem567 = srem i32 %add565, %.pre.pre
  %inc569 = add nsw i32 %L.9866, 1
  %cmp516 = icmp slt i32 %inc569, %.pre.pre
  br i1 %cmp516, label %for.body518, label %sw.epilog

sw.epilog:                                        ; preds = %for.cond459.preheader, %if.end507, %for.cond405.preheader, %if.end451, %for.cond359.preheader, %if.end397, %for.cond.preheader, %if.end353, %do.body267, %land.rhs312, %do.body217, %land.rhs260, %do.body169, %land.rhs210, %do.body129, %land.rhs162, %do.body99, %land.rhs, %for.cond514.preheader, %if.end564
  %149 = load i32* %D90, align 4, !tbaa !4
  %150 = load float** %tmp, align 8, !tbaa !5
  tail call fastcc void @copy2range(i32 %149, float* %150, %struct.t_range* %range) #5
  br label %if.end573

if.end573:                                        ; preds = %if.then, %sw.epilog
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @copy2range(i32 %D, float* nocapture %c, %struct.t_range* nocapture %r) #0 {
entry:
  %cmp47 = icmp sgt i32 %D, 0
  br i1 %cmp47, label %while.cond.preheader, label %for.end

while.cond.preheader:                             ; preds = %entry, %while.end20
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.end20 ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %c, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !3
  %rmin = getelementptr inbounds %struct.t_range* %r, i64 %indvars.iv, i32 3
  %1 = load float* %rmin, align 4, !tbaa !3
  %cmp343 = fcmp olt float %0, %1
  br i1 %cmp343, label %while.body.lr.ph, label %while.cond8.loopexit

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %dr = getelementptr inbounds %struct.t_range* %r, i64 %indvars.iv, i32 5
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %2 = phi float [ %0, %while.body.lr.ph ], [ %add, %while.body ]
  %3 = load float* %dr, align 4, !tbaa !3
  %add = fadd float %2, %3
  store float %add, float* %arrayidx, align 4, !tbaa !3
  %4 = load float* %rmin, align 4, !tbaa !3
  %cmp3 = fcmp olt float %add, %4
  br i1 %cmp3, label %while.body, label %while.cond8.loopexit

while.cond8.loopexit:                             ; preds = %while.body, %while.cond.preheader
  %5 = phi float [ %0, %while.cond.preheader ], [ %add, %while.body ]
  %rmax = getelementptr inbounds %struct.t_range* %r, i64 %indvars.iv, i32 4
  %6 = load float* %rmax, align 4, !tbaa !3
  %cmp1345 = fcmp ogt float %5, %6
  br i1 %cmp1345, label %while.body14.lr.ph, label %while.end20

while.body14.lr.ph:                               ; preds = %while.cond8.loopexit
  %dr17 = getelementptr inbounds %struct.t_range* %r, i64 %indvars.iv, i32 5
  br label %while.body14

while.body14:                                     ; preds = %while.body14.lr.ph, %while.body14
  %7 = phi float [ %5, %while.body14.lr.ph ], [ %sub, %while.body14 ]
  %8 = load float* %dr17, align 4, !tbaa !3
  %sub = fsub float %7, %8
  store float %sub, float* %arrayidx, align 4, !tbaa !3
  %9 = load float* %rmax, align 4, !tbaa !3
  %cmp13 = fcmp ogt float %sub, %9
  br i1 %cmp13, label %while.body14, label %while.end20

while.end20:                                      ; preds = %while.body14, %while.cond8.loopexit
  %.lcssa = phi float [ %5, %while.cond8.loopexit ], [ %sub, %while.body14 ]
  %rval = getelementptr inbounds %struct.t_range* %r, i64 %indvars.iv, i32 6
  store float %.lcssa, float* %rval, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %D
  br i1 %exitcond, label %for.end, label %while.cond.preheader

for.end:                                          ; preds = %while.end20, %entry
  ret void
}

; Function Attrs: optsize
declare float @rando(i32*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: nounwind optsize uwtable
define i32 @print_ga(%struct._IO_FILE* nocapture %fp, %struct.t_genalg* %ga, float %rmsf, float %energy, %struct.t_range* nocapture %range, float %tol) #0 {
entry:
  %call = tail call float @cost(float %rmsf, float %energy) #4
  %0 = load i32* @print_ga.nfeval, align 4, !tbaa !4
  %NP = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 0
  %1 = load i32* %NP, align 4, !tbaa !4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %0 to i64
  %cost = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 13
  %2 = load float** %cost, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds float* %2, i64 %idxprom
  store float %call, float* %arrayidx, align 4, !tbaa !3
  %rmsf2 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 15
  %3 = load float** %rmsf2, align 8, !tbaa !5
  %arrayidx3 = getelementptr inbounds float* %3, i64 %idxprom
  store float %rmsf, float* %arrayidx3, align 4, !tbaa !3
  %energy5 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 16
  %4 = load float** %energy5, align 8, !tbaa !5
  %arrayidx6 = getelementptr inbounds float* %4, i64 %idxprom
  store float %energy, float* %arrayidx6, align 4, !tbaa !3
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @print_ga.nfeval, align 4, !tbaa !4
  br label %return

if.end:                                           ; preds = %entry
  %ipop = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 4
  %cmp11 = icmp eq i32 %0, %1
  br i1 %cmp11, label %if.then12, label %if.end37

if.then12:                                        ; preds = %if.end
  %imin = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 6
  store i32 0, i32* %imin, align 4, !tbaa !4
  %cmp14343 = icmp sgt i32 %0, 1
  br i1 %cmp14343, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.then12
  %cost16 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 13
  %5 = load float** %cost16, align 8, !tbaa !5
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %6 = phi i32 [ 0, %for.body.lr.ph ], [ %10, %for.inc ]
  %indvars.iv351 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next352, %for.inc ]
  %arrayidx17 = getelementptr inbounds float* %5, i64 %indvars.iv351
  %7 = load float* %arrayidx17, align 4, !tbaa !3
  %idxprom19 = sext i32 %6 to i64
  %arrayidx21 = getelementptr inbounds float* %5, i64 %idxprom19
  %8 = load float* %arrayidx21, align 4, !tbaa !3
  %cmp22 = fcmp olt float %7, %8
  br i1 %cmp22, label %if.then23, label %for.inc

if.then23:                                        ; preds = %for.body
  %9 = trunc i64 %indvars.iv351 to i32
  store i32 %9, i32* %imin, align 4, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then23
  %10 = phi i32 [ %6, %for.body ], [ %9, %if.then23 ]
  %indvars.iv.next352 = add i64 %indvars.iv351, 1
  %11 = trunc i64 %indvars.iv.next352 to i32
  %cmp14 = icmp slt i32 %11, %0
  br i1 %cmp14, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.then12
  %12 = phi i32 [ 0, %if.then12 ], [ %10, %for.inc ]
  %best = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 11
  %13 = load float** %best, align 8, !tbaa !5
  %14 = bitcast float* %13 to i8*
  %idxprom28 = sext i32 %12 to i64
  %pold = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 9
  %15 = load float*** %pold, align 8, !tbaa !5
  %arrayidx29 = getelementptr inbounds float** %15, i64 %idxprom28
  %16 = load float** %arrayidx29, align 8, !tbaa !5
  %17 = bitcast float* %16 to i8*
  %D = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 1
  %18 = load i32* %D, align 4, !tbaa !4
  %conv = sext i32 %18 to i64
  %mul = shl nsw i64 %conv, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %17, i64 %mul, i32 4, i1 false)
  %bestit = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 12
  %19 = load float** %bestit, align 8, !tbaa !5
  %20 = bitcast float* %19 to i8*
  %21 = load i32* %imin, align 4, !tbaa !4
  %idxprom31 = sext i32 %21 to i64
  %22 = load float*** %pold, align 8, !tbaa !5
  %arrayidx33 = getelementptr inbounds float** %22, i64 %idxprom31
  %23 = load float** %arrayidx33, align 8, !tbaa !5
  %24 = bitcast float* %23 to i8*
  %25 = load i32* %D, align 4, !tbaa !4
  %conv35 = sext i32 %25 to i64
  %mul36 = shl nsw i64 %conv35, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %24, i64 %mul36, i32 4, i1 false)
  br label %if.end37

if.end37:                                         ; preds = %for.end, %if.end
  %26 = load i32* %ipop, align 4, !tbaa !4
  %idxprom39 = sext i32 %26 to i64
  %cost40 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 13
  %27 = load float** %cost40, align 8, !tbaa !5
  %arrayidx41 = getelementptr inbounds float* %27, i64 %idxprom39
  %28 = load float* %arrayidx41, align 4, !tbaa !3
  %cmp42 = fcmp ugt float %call, %28
  br i1 %cmp42, label %if.else, label %if.then44

if.then44:                                        ; preds = %if.end37
  store float %call, float* %arrayidx41, align 4, !tbaa !3
  %rmsf51 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 15
  %29 = load float** %rmsf51, align 8, !tbaa !5
  %arrayidx52 = getelementptr inbounds float* %29, i64 %idxprom39
  store float %rmsf, float* %arrayidx52, align 4, !tbaa !3
  %energy55 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 16
  %30 = load float** %energy55, align 8, !tbaa !5
  %arrayidx56 = getelementptr inbounds float* %30, i64 %idxprom39
  store float %energy, float* %arrayidx56, align 4, !tbaa !3
  %pnew = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 10
  %31 = load float*** %pnew, align 8, !tbaa !5
  %arrayidx59 = getelementptr inbounds float** %31, i64 %idxprom39
  %32 = load float** %arrayidx59, align 8, !tbaa !5
  %33 = bitcast float* %32 to i8*
  %tmp = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 14
  %34 = load float** %tmp, align 8, !tbaa !5
  %35 = bitcast float* %34 to i8*
  %D60 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 1
  %36 = load i32* %D60, align 4, !tbaa !4
  %conv61 = sext i32 %36 to i64
  %mul62 = shl nsw i64 %conv61, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %35, i64 %mul62, i32 4, i1 false)
  %imin63 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 6
  %37 = load i32* %imin63, align 4, !tbaa !4
  %idxprom64 = sext i32 %37 to i64
  %38 = load float** %cost40, align 8, !tbaa !5
  %arrayidx66 = getelementptr inbounds float* %38, i64 %idxprom64
  %39 = load float* %arrayidx66, align 4, !tbaa !3
  %cmp67 = fcmp olt float %call, %39
  br i1 %cmp67, label %if.then69, label %if.end89

if.then69:                                        ; preds = %if.then44
  %40 = load i32* %ipop, align 4, !tbaa !4
  store i32 %40, i32* %imin63, align 4, !tbaa !4
  %best72 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 11
  %41 = load float** %best72, align 8, !tbaa !5
  %42 = bitcast float* %41 to i8*
  %43 = load float** %tmp, align 8, !tbaa !5
  %44 = bitcast float* %43 to i8*
  %45 = load i32* %D60, align 4, !tbaa !4
  %conv75 = sext i32 %45 to i64
  %mul76 = shl nsw i64 %conv75, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %44, i64 %mul76, i32 4, i1 false)
  br label %if.end89

if.else:                                          ; preds = %if.end37
  %pnew80 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 10
  %46 = load float*** %pnew80, align 8, !tbaa !5
  %arrayidx81 = getelementptr inbounds float** %46, i64 %idxprom39
  %47 = load float** %arrayidx81, align 8, !tbaa !5
  %48 = bitcast float* %47 to i8*
  %pold84 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 9
  %49 = load float*** %pold84, align 8, !tbaa !5
  %arrayidx85 = getelementptr inbounds float** %49, i64 %idxprom39
  %50 = load float** %arrayidx85, align 8, !tbaa !5
  %51 = bitcast float* %50 to i8*
  %D86 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 1
  %52 = load i32* %D86, align 4, !tbaa !4
  %conv87 = sext i32 %52 to i64
  %mul88 = shl nsw i64 %conv87, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %51, i64 %mul88, i32 4, i1 false)
  br label %if.end89

if.end89:                                         ; preds = %if.then44, %if.then69, %if.else
  %53 = load i32* %ipop, align 4, !tbaa !4
  %inc91 = add nsw i32 %53, 1
  store i32 %inc91, i32* %ipop, align 4, !tbaa !4
  %54 = load i32* %NP, align 4, !tbaa !4
  %cmp94 = icmp eq i32 %inc91, %54
  br i1 %cmp94, label %if.then96, label %if.end214

if.then96:                                        ; preds = %if.end89
  %bestit97 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 12
  %55 = load float** %bestit97, align 8, !tbaa !5
  %56 = bitcast float* %55 to i8*
  %best98 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 11
  %57 = load float** %best98, align 8, !tbaa !5
  %58 = bitcast float* %57 to i8*
  %D99 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 1
  %59 = load i32* %D99, align 4, !tbaa !4
  %conv100 = sext i32 %59 to i64
  %mul101 = shl nsw i64 %conv100, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %58, i64 %mul101, i32 4, i1 false)
  %pold102 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 9
  %60 = load float*** %pold102, align 8, !tbaa !5
  %pnew103 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 10
  %61 = load float*** %pnew103, align 8, !tbaa !5
  store float** %61, float*** %pold102, align 8, !tbaa !5
  store float** %60, float*** %pnew103, align 8, !tbaa !5
  %62 = load i32* %NP, align 4, !tbaa !4
  %cmp108339 = icmp sgt i32 %62, 0
  %63 = load float** %cost40, align 8, !tbaa !5
  br i1 %cmp108339, label %for.body110, label %for.end116

for.body110:                                      ; preds = %if.then96, %for.body110
  %indvars.iv349 = phi i64 [ %indvars.iv.next350, %for.body110 ], [ 0, %if.then96 ]
  %cmean.0340 = phi float [ %add, %for.body110 ], [ 0.000000e+00, %if.then96 ]
  %arrayidx113 = getelementptr inbounds float* %63, i64 %indvars.iv349
  %64 = load float* %arrayidx113, align 4, !tbaa !3
  %add = fadd float %cmean.0340, %64
  %indvars.iv.next350 = add i64 %indvars.iv349, 1
  %65 = trunc i64 %indvars.iv.next350 to i32
  %cmp108 = icmp slt i32 %65, %62
  br i1 %cmp108, label %for.body110, label %for.end116

for.end116:                                       ; preds = %if.then96, %for.body110
  %cmean.0.lcssa = phi float [ %add, %for.body110 ], [ 0.000000e+00, %if.then96 ]
  %conv118 = sitofp i32 %62 to float
  %div = fdiv float %cmean.0.lcssa, %conv118
  %gen = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 5
  %66 = load i32* %gen, align 4, !tbaa !4
  %imin136 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 6
  %67 = load i32* %imin136, align 4, !tbaa !4
  %idxprom137 = sext i32 %67 to i64
  %arrayidx139 = getelementptr inbounds float* %63, i64 %idxprom137
  %68 = load float* %arrayidx139, align 4, !tbaa !3
  %conv140 = fpext float %68 to double
  %energy143 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 16
  %69 = load float** %energy143, align 8, !tbaa !5
  %arrayidx144 = getelementptr inbounds float* %69, i64 %idxprom137
  %70 = load float* %arrayidx144, align 4, !tbaa !3
  %conv145 = fpext float %70 to double
  %rmsf148 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 15
  %71 = load float** %rmsf148, align 8, !tbaa !5
  %arrayidx149 = getelementptr inbounds float* %71, i64 %idxprom137
  %72 = load float* %arrayidx149, align 4, !tbaa !3
  %conv150 = fpext float %72 to double
  %conv151 = fpext float %div to double
  %call152 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([62 x i8]* @.str21, i64 0, i64 0), i32 %66, double %conv140, double %conv145, double %conv150, double %conv151) #4
  %73 = load i32* %D99, align 4, !tbaa !4
  %cmp155337 = icmp sgt i32 %73, 0
  br i1 %cmp155337, label %for.body157, label %for.end165

for.body157:                                      ; preds = %for.end116, %for.body157
  %indvars.iv347 = phi i64 [ %indvars.iv.next348, %for.body157 ], [ 0, %for.end116 ]
  %74 = load float** %best98, align 8, !tbaa !5
  %arrayidx160 = getelementptr inbounds float* %74, i64 %indvars.iv347
  %75 = load float* %arrayidx160, align 4, !tbaa !3
  %conv161 = fpext float %75 to double
  %76 = trunc i64 %indvars.iv347 to i32
  %call162 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str22, i64 0, i64 0), i32 %76, double %conv161) #4
  %indvars.iv.next348 = add i64 %indvars.iv347, 1
  %77 = load i32* %D99, align 4, !tbaa !4
  %78 = trunc i64 %indvars.iv.next348 to i32
  %cmp155 = icmp slt i32 %78, %77
  br i1 %cmp155, label %for.body157, label %for.end165

for.end165:                                       ; preds = %for.body157, %for.end116
  %79 = load i32* %imin136, align 4, !tbaa !4
  %idxprom167 = sext i32 %79 to i64
  %80 = load float** %cost40, align 8, !tbaa !5
  %arrayidx169 = getelementptr inbounds float* %80, i64 %idxprom167
  %81 = load float* %arrayidx169, align 4, !tbaa !3
  %cmp170 = fcmp olt float %81, %tol
  br i1 %cmp170, label %for.cond173.preheader, label %if.end212

for.cond173.preheader:                            ; preds = %for.end165
  %82 = load i32* %NP, align 4, !tbaa !4
  %cmp175335 = icmp sgt i32 %82, 0
  br i1 %cmp175335, label %for.body177, label %return

for.body177:                                      ; preds = %for.cond173.preheader, %for.inc209.for.body177_crit_edge
  %83 = phi i32 [ %.pre354, %for.inc209.for.body177_crit_edge ], [ %79, %for.cond173.preheader ]
  %84 = phi float* [ %.pre353, %for.inc209.for.body177_crit_edge ], [ %80, %for.cond173.preheader ]
  %indvars.iv345 = phi i64 [ %indvars.iv.next346, %for.inc209.for.body177_crit_edge ], [ 0, %for.cond173.preheader ]
  %arrayidx180 = getelementptr inbounds float* %84, i64 %indvars.iv345
  %85 = load float* %arrayidx180, align 4, !tbaa !3
  %conv181 = fpext float %85 to double
  %86 = load float** %energy143, align 8, !tbaa !5
  %arrayidx184 = getelementptr inbounds float* %86, i64 %indvars.iv345
  %87 = load float* %arrayidx184, align 4, !tbaa !3
  %conv185 = fpext float %87 to double
  %88 = load float** %rmsf148, align 8, !tbaa !5
  %arrayidx188 = getelementptr inbounds float* %88, i64 %indvars.iv345
  %89 = load float* %arrayidx188, align 4, !tbaa !3
  %conv189 = fpext float %89 to double
  %90 = trunc i64 %indvars.iv345 to i32
  %cmp191 = icmp eq i32 %90, %83
  %cond = select i1 %cmp191, i8* getelementptr inbounds ([5 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str25, i64 0, i64 0)
  %call193 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([51 x i8]* @.str23, i64 0, i64 0), i32 %90, double %conv181, double %conv185, double %conv189, i8* %cond) #4
  %91 = load i32* %D99, align 4, !tbaa !4
  %cmp196333 = icmp sgt i32 %91, 0
  br i1 %cmp196333, label %for.body198, label %for.inc209

for.body198:                                      ; preds = %for.body177, %for.body198
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body198 ], [ 0, %for.body177 ]
  %92 = load float*** %pold102, align 8, !tbaa !5
  %arrayidx202 = getelementptr inbounds float** %92, i64 %indvars.iv345
  %93 = load float** %arrayidx202, align 8, !tbaa !5
  %arrayidx203 = getelementptr inbounds float* %93, i64 %indvars.iv
  %94 = load float* %arrayidx203, align 4, !tbaa !3
  %conv204 = fpext float %94 to double
  %95 = trunc i64 %indvars.iv to i32
  %call205 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str26, i64 0, i64 0), i32 %90, i32 %95, double %conv204) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %96 = load i32* %D99, align 4, !tbaa !4
  %97 = trunc i64 %indvars.iv.next to i32
  %cmp196 = icmp slt i32 %97, %96
  br i1 %cmp196, label %for.body198, label %for.inc209

for.inc209:                                       ; preds = %for.body198, %for.body177
  %indvars.iv.next346 = add i64 %indvars.iv345, 1
  %98 = load i32* %NP, align 4, !tbaa !4
  %99 = trunc i64 %indvars.iv.next346 to i32
  %cmp175 = icmp slt i32 %99, %98
  br i1 %cmp175, label %for.inc209.for.body177_crit_edge, label %return

for.inc209.for.body177_crit_edge:                 ; preds = %for.inc209
  %.pre353 = load float** %cost40, align 8, !tbaa !5
  %.pre354 = load i32* %imin136, align 4, !tbaa !4
  br label %for.body177

if.end212:                                        ; preds = %for.end165
  %call213 = tail call i32 @fflush(%struct._IO_FILE* %fp) #4
  br label %if.end214

if.end214:                                        ; preds = %if.end212, %if.end89
  %100 = load i32* @print_ga.nfeval, align 4, !tbaa !4
  %inc215 = add nsw i32 %100, 1
  store i32 %inc215, i32* @print_ga.nfeval, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %for.cond173.preheader, %for.inc209, %if.end214, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end214 ], [ 1, %for.inc209 ], [ 1, %for.cond173.preheader ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare float @cost(float, float) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!0 = metadata !{metadata !"double", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
!5 = metadata !{metadata !"any pointer", metadata !1}

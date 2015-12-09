; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/reunitarize2.c'
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

@max_deviation = common global double 0.000000e+00, align 8
@av_deviation = common global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [60 x i8] c"Unitarity problem on node %d, site %d, dir %d tolerance=%e\0A\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"%08x \00", align 1
@stdout = external global %struct._IO_FILE*
@lattice = external global %struct.site*
@sites_on_node = external global i32
@.str8 = private unnamed_addr constant [62 x i8] c"reunitarize: Node %d unitarity problem, maximum deviation=%e\0A\00", align 1
@str = private unnamed_addr constant [12 x i8] c"SU3 matrix:\00"
@str9 = private unnamed_addr constant [15 x i8] c"repeat in hex:\00"
@str10 = private unnamed_addr constant [5 x i8] c"  \0A \00"
@str12 = private unnamed_addr constant [32 x i8] c"Unitarity error count exceeded.\00"

; Function Attrs: nounwind optsize uwtable
define i32 @check_deviation(double %deviation) #0 {
entry:
  %0 = load double* @max_deviation, align 8, !tbaa !0
  %cmp = fcmp olt double %0, %deviation
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double %deviation, double* @max_deviation, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %mul = fmul double %deviation, %deviation
  %1 = load double* @av_deviation, align 8, !tbaa !0
  %add = fadd double %mul, %1
  store double %add, double* @av_deviation, align 8, !tbaa !0
  %cmp1 = fcmp ogt double %deviation, 1.000000e-04
  %. = zext i1 %cmp1 to i32
  ret i32 %.
}

; Function Attrs: nounwind optsize uwtable
define void @reunit_report_problem_matrix(%struct.su3_matrix* nocapture %mat, i32 %i, i32 %dir) #0 {
entry:
  %call = tail call i32 (...)* @mynode() #5
  %call1 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([60 x i8]* @.str, i64 0, i64 0), i32 %call, i32 %i, i32 %dir, double 1.000000e-04) #5
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([12 x i8]* @str, i64 0, i64 0))
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.end, %entry
  %indvars.iv85 = phi i64 [ 0, %entry ], [ %indvars.iv.next86, %for.end ]
  br label %for.body5

for.body5:                                        ; preds = %for.body5, %for.cond3.preheader
  %indvars.iv81 = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next82, %for.body5 ]
  %real = getelementptr inbounds %struct.su3_matrix* %mat, i64 0, i32 0, i64 %indvars.iv85, i64 %indvars.iv81, i32 0
  %0 = load double* %real, align 8, !tbaa !0
  %call8 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), double %0) #5
  %imag = getelementptr inbounds %struct.su3_matrix* %mat, i64 0, i32 0, i64 %indvars.iv85, i64 %indvars.iv81, i32 1
  %1 = load double* %imag, align 8, !tbaa !0
  %call14 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), double %1) #5
  %indvars.iv.next82 = add i64 %indvars.iv81, 1
  %lftr.wideiv83 = trunc i64 %indvars.iv.next82 to i32
  %exitcond84 = icmp eq i32 %lftr.wideiv83, 3
  br i1 %exitcond84, label %for.end, label %for.body5

for.end:                                          ; preds = %for.body5
  %putchar72 = tail call i32 @putchar(i32 10) #4
  %indvars.iv.next86 = add i64 %indvars.iv85, 1
  %lftr.wideiv87 = trunc i64 %indvars.iv.next86 to i32
  %exitcond88 = icmp eq i32 %lftr.wideiv87, 3
  br i1 %exitcond88, label %for.end18, label %for.cond3.preheader

for.end18:                                        ; preds = %for.end
  %puts70 = tail call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str9, i64 0, i64 0))
  br label %for.cond23.preheader

for.cond23.preheader:                             ; preds = %for.end44, %for.end18
  %indvars.iv77 = phi i64 [ 0, %for.end18 ], [ %indvars.iv.next78, %for.end44 ]
  br label %for.body25

for.body25:                                       ; preds = %for.body25, %for.cond23.preheader
  %indvars.iv = phi i64 [ 0, %for.cond23.preheader ], [ %indvars.iv.next, %for.body25 ]
  %real31 = getelementptr inbounds %struct.su3_matrix* %mat, i64 0, i32 0, i64 %indvars.iv77, i64 %indvars.iv, i32 0
  %2 = load double* %real31, align 8, !tbaa !0
  %3 = bitcast double %2 to i64
  %ifval.sroa.0.0.extract.trunc = trunc i64 %3 to i32
  %call32 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i32 %ifval.sroa.0.0.extract.trunc) #5
  %imag38 = getelementptr inbounds %struct.su3_matrix* %mat, i64 0, i32 0, i64 %indvars.iv77, i64 %indvars.iv, i32 1
  %4 = load double* %imag38, align 8, !tbaa !0
  %5 = bitcast double %4 to i64
  %ifval.sroa.0.0.extract.trunc52 = trunc i64 %5 to i32
  %call41 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i32 %ifval.sroa.0.0.extract.trunc52) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end44, label %for.body25

for.end44:                                        ; preds = %for.body25
  %putchar = tail call i32 @putchar(i32 10) #4
  %indvars.iv.next78 = add i64 %indvars.iv77, 1
  %lftr.wideiv79 = trunc i64 %indvars.iv.next78 to i32
  %exitcond80 = icmp eq i32 %lftr.wideiv79, 3
  br i1 %exitcond80, label %for.end48, label %for.cond23.preheader

for.end48:                                        ; preds = %for.end44
  %puts71 = tail call i32 @puts(i8* getelementptr inbounds ([5 x i8]* @str10, i64 0, i64 0))
  %6 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call50 = tail call i32 @fflush(%struct._IO_FILE* %6) #5
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #1

; Function Attrs: optsize
declare i32 @mynode(...) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @reunit_su3(%struct.su3_matrix* nocapture %c) #0 {
entry:
  %real = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 0, i64 0, i32 0
  %0 = load double* %real, align 8, !tbaa !0
  %mul = fmul double %0, %0
  %imag = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 0, i64 0, i32 1
  %1 = load double* %imag, align 8, !tbaa !0
  %mul13 = fmul double %1, %1
  %add = fadd double %mul, %mul13
  %real17 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 0, i64 1, i32 0
  %2 = load double* %real17, align 8, !tbaa !0
  %mul22 = fmul double %2, %2
  %add23 = fadd double %add, %mul22
  %imag27 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 0, i64 1, i32 1
  %3 = load double* %imag27, align 8, !tbaa !0
  %mul32 = fmul double %3, %3
  %add33 = fadd double %add23, %mul32
  %real37 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 0, i64 2, i32 0
  %4 = load double* %real37, align 8, !tbaa !0
  %mul42 = fmul double %4, %4
  %add43 = fadd double %add33, %mul42
  %imag47 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 0, i64 2, i32 1
  %5 = load double* %imag47, align 8, !tbaa !0
  %mul52 = fmul double %5, %5
  %add53 = fadd double %add43, %mul52
  %sub = fadd double %add53, -1.000000e+00
  %call = tail call double @fabs(double %sub) #6
  %6 = load double* @max_deviation, align 8, !tbaa !0
  %cmp.i = fcmp olt double %6, %call
  br i1 %cmp.i, label %if.then.i, label %check_deviation.exit

if.then.i:                                        ; preds = %entry
  store double %call, double* @max_deviation, align 8, !tbaa !0
  br label %check_deviation.exit

check_deviation.exit:                             ; preds = %entry, %if.then.i
  %mul.i = fmul double %call, %call
  %7 = load double* @av_deviation, align 8, !tbaa !0
  %add.i = fadd double %mul.i, %7
  store double %add.i, double* @av_deviation, align 8, !tbaa !0
  %cmp1.i = fcmp ogt double %call, 1.000000e-04
  %..i = zext i1 %cmp1.i to i32
  %call56 = tail call double @sqrt(double %add53) #5
  %div = fdiv double 1.000000e+00, %call56
  %8 = load double* %real, align 8, !tbaa !0
  %mul61 = fmul double %div, %8
  store double %mul61, double* %real, align 8, !tbaa !0
  %9 = load double* %imag, align 8, !tbaa !0
  %mul66 = fmul double %div, %9
  store double %mul66, double* %imag, align 8, !tbaa !0
  %10 = load double* %real17, align 8, !tbaa !0
  %mul71 = fmul double %div, %10
  store double %mul71, double* %real17, align 8, !tbaa !0
  %11 = load double* %imag27, align 8, !tbaa !0
  %mul76 = fmul double %div, %11
  store double %mul76, double* %imag27, align 8, !tbaa !0
  %12 = load double* %real37, align 8, !tbaa !0
  %mul81 = fmul double %div, %12
  store double %mul81, double* %real37, align 8, !tbaa !0
  %13 = load double* %imag47, align 8, !tbaa !0
  %mul86 = fmul double %div, %13
  store double %mul86, double* %imag47, align 8, !tbaa !0
  %real94 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 1, i64 0, i32 0
  %14 = load double* %real94, align 8, !tbaa !0
  %mul95 = fmul double %mul61, %14
  %imag103 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 1, i64 0, i32 1
  %15 = load double* %imag103, align 8, !tbaa !0
  %mul104 = fmul double %mul66, %15
  %add105 = fadd double %mul95, %mul104
  %real113 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 1, i64 1, i32 0
  %16 = load double* %real113, align 8, !tbaa !0
  %mul114 = fmul double %mul71, %16
  %add115 = fadd double %add105, %mul114
  %imag123 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 1, i64 1, i32 1
  %17 = load double* %imag123, align 8, !tbaa !0
  %mul124 = fmul double %mul76, %17
  %add125 = fadd double %add115, %mul124
  %real133 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 1, i64 2, i32 0
  %18 = load double* %real133, align 8, !tbaa !0
  %mul134 = fmul double %mul81, %18
  %add135 = fadd double %add125, %mul134
  %imag143 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 1, i64 2, i32 1
  %19 = load double* %imag143, align 8, !tbaa !0
  %mul144 = fmul double %mul86, %19
  %add145 = fadd double %add135, %mul144
  %mul154 = fmul double %mul61, %15
  %mul163 = fmul double %14, %mul66
  %sub164 = fsub double %mul154, %mul163
  %mul173 = fmul double %mul71, %17
  %add174 = fadd double %sub164, %mul173
  %mul183 = fmul double %16, %mul76
  %sub184 = fsub double %add174, %mul183
  %mul193 = fmul double %mul81, %19
  %add194 = fadd double %sub184, %mul193
  %mul203 = fmul double %mul86, %18
  %sub204 = fsub double %add194, %mul203
  %mul205 = fmul double %add145, %add145
  %mul206 = fmul double %sub204, %sub204
  %add207 = fadd double %mul205, %mul206
  %20 = load double* @max_deviation, align 8, !tbaa !0
  %cmp.i868 = fcmp olt double %20, %add207
  br i1 %cmp.i868, label %if.then.i869, label %check_deviation.exit874

if.then.i869:                                     ; preds = %check_deviation.exit
  store double %add207, double* @max_deviation, align 8, !tbaa !0
  br label %check_deviation.exit874

check_deviation.exit874:                          ; preds = %check_deviation.exit, %if.then.i869
  %mul.i870 = fmul double %add207, %add207
  %21 = load double* @av_deviation, align 8, !tbaa !0
  %add.i871 = fadd double %mul.i870, %21
  store double %add.i871, double* @av_deviation, align 8, !tbaa !0
  %cmp1.i872 = fcmp ogt double %add207, 1.000000e-04
  %..i873 = zext i1 %cmp1.i872 to i32
  %add209 = add nsw i32 %..i873, %..i
  %22 = load double* %real, align 8, !tbaa !0
  %mul214 = fmul double %add145, %22
  %23 = load double* %imag, align 8, !tbaa !0
  %mul219 = fmul double %sub204, %23
  %sub220 = fsub double %mul214, %mul219
  %24 = load double* %real94, align 8, !tbaa !0
  %sub225 = fsub double %24, %sub220
  store double %sub225, double* %real94, align 8, !tbaa !0
  %mul230 = fmul double %add145, %23
  %mul235 = fmul double %sub204, %22
  %add236 = fadd double %mul230, %mul235
  %25 = load double* %imag103, align 8, !tbaa !0
  %sub241 = fsub double %25, %add236
  store double %sub241, double* %imag103, align 8, !tbaa !0
  %26 = load double* %real17, align 8, !tbaa !0
  %mul246 = fmul double %add145, %26
  %27 = load double* %imag27, align 8, !tbaa !0
  %mul251 = fmul double %sub204, %27
  %sub252 = fsub double %mul246, %mul251
  %28 = load double* %real113, align 8, !tbaa !0
  %sub257 = fsub double %28, %sub252
  store double %sub257, double* %real113, align 8, !tbaa !0
  %mul262 = fmul double %add145, %27
  %mul267 = fmul double %sub204, %26
  %add268 = fadd double %mul262, %mul267
  %29 = load double* %imag123, align 8, !tbaa !0
  %sub273 = fsub double %29, %add268
  store double %sub273, double* %imag123, align 8, !tbaa !0
  %30 = load double* %real37, align 8, !tbaa !0
  %mul278 = fmul double %add145, %30
  %31 = load double* %imag47, align 8, !tbaa !0
  %mul283 = fmul double %sub204, %31
  %sub284 = fsub double %mul278, %mul283
  %32 = load double* %real133, align 8, !tbaa !0
  %sub289 = fsub double %32, %sub284
  store double %sub289, double* %real133, align 8, !tbaa !0
  %mul294 = fmul double %add145, %31
  %mul299 = fmul double %sub204, %30
  %add300 = fadd double %mul294, %mul299
  %33 = load double* %imag143, align 8, !tbaa !0
  %sub305 = fsub double %33, %add300
  store double %sub305, double* %imag143, align 8, !tbaa !0
  %mul314 = fmul double %sub225, %sub225
  %mul323 = fmul double %sub241, %sub241
  %add324 = fadd double %mul314, %mul323
  %mul333 = fmul double %sub257, %sub257
  %add334 = fadd double %add324, %mul333
  %mul343 = fmul double %sub273, %sub273
  %add344 = fadd double %add334, %mul343
  %mul353 = fmul double %sub289, %sub289
  %add354 = fadd double %add344, %mul353
  %mul363 = fmul double %sub305, %sub305
  %add364 = fadd double %mul363, %add354
  %sub365 = fadd double %add364, -1.000000e+00
  %call366 = tail call double @fabs(double %sub365) #6
  %34 = load double* @max_deviation, align 8, !tbaa !0
  %cmp.i861 = fcmp olt double %34, %call366
  br i1 %cmp.i861, label %if.then.i862, label %check_deviation.exit867

if.then.i862:                                     ; preds = %check_deviation.exit874
  store double %call366, double* @max_deviation, align 8, !tbaa !0
  br label %check_deviation.exit867

check_deviation.exit867:                          ; preds = %check_deviation.exit874, %if.then.i862
  %mul.i863 = fmul double %call366, %call366
  %35 = load double* @av_deviation, align 8, !tbaa !0
  %add.i864 = fadd double %mul.i863, %35
  store double %add.i864, double* @av_deviation, align 8, !tbaa !0
  %cmp1.i865 = fcmp ogt double %call366, 1.000000e-04
  %..i866 = zext i1 %cmp1.i865 to i32
  %add368 = add nsw i32 %add209, %..i866
  %call369 = tail call double @sqrt(double %add364) #5
  %div370 = fdiv double 1.000000e+00, %call369
  %36 = load double* %real94, align 8, !tbaa !0
  %mul375 = fmul double %div370, %36
  store double %mul375, double* %real94, align 8, !tbaa !0
  %37 = load double* %imag103, align 8, !tbaa !0
  %mul380 = fmul double %div370, %37
  store double %mul380, double* %imag103, align 8, !tbaa !0
  %38 = load double* %real113, align 8, !tbaa !0
  %mul385 = fmul double %div370, %38
  store double %mul385, double* %real113, align 8, !tbaa !0
  %39 = load double* %imag123, align 8, !tbaa !0
  %mul390 = fmul double %div370, %39
  store double %mul390, double* %imag123, align 8, !tbaa !0
  %40 = load double* %real133, align 8, !tbaa !0
  %mul395 = fmul double %div370, %40
  store double %mul395, double* %real133, align 8, !tbaa !0
  %41 = load double* %imag143, align 8, !tbaa !0
  %mul400 = fmul double %div370, %41
  store double %mul400, double* %imag143, align 8, !tbaa !0
  %real404 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 2, i64 0, i32 0
  %42 = load double* %real404, align 8, !tbaa !0
  %imag408 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 2, i64 0, i32 1
  %43 = load double* %imag408, align 8, !tbaa !0
  %real412 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 2, i64 1, i32 0
  %44 = load double* %real412, align 8, !tbaa !0
  %imag416 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 2, i64 1, i32 1
  %45 = load double* %imag416, align 8, !tbaa !0
  %real420 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 2, i64 2, i32 0
  %46 = load double* %real420, align 8, !tbaa !0
  %imag424 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 2, i64 2, i32 1
  %47 = load double* %imag424, align 8, !tbaa !0
  %48 = load double* %real, align 8, !tbaa !0
  %49 = load double* %imag, align 8, !tbaa !0
  %50 = load double* %real17, align 8, !tbaa !0
  %51 = load double* %imag27, align 8, !tbaa !0
  %52 = load double* %real37, align 8, !tbaa !0
  %53 = load double* %imag47, align 8, !tbaa !0
  %mul457 = fmul double %50, %mul395
  %mul458 = fmul double %mul400, %51
  %sub459 = fsub double %mul457, %mul458
  %mul460 = fmul double %mul400, %50
  %mul461 = fmul double %51, %mul395
  %add462 = fadd double %mul460, %mul461
  %mul471 = fmul double %52, %mul385
  %sub472 = fsub double %sub459, %mul471
  %mul473 = fmul double %53, %mul390
  %add474 = fadd double %sub472, %mul473
  %mul475 = fmul double %52, %mul390
  %sub476 = fsub double %add462, %mul475
  %mul477 = fmul double %53, %mul385
  %sub478 = fsub double %sub476, %mul477
  store double %add474, double* %real404, align 8, !tbaa !0
  %sub483 = fsub double -0.000000e+00, %sub478
  store double %sub483, double* %imag408, align 8, !tbaa !0
  %mul496 = fmul double %52, %mul375
  %mul497 = fmul double %53, %mul380
  %sub498 = fsub double %mul496, %mul497
  %mul499 = fmul double %52, %mul380
  %mul500 = fmul double %53, %mul375
  %add501 = fadd double %mul500, %mul499
  %mul510 = fmul double %48, %mul395
  %sub511 = fsub double %sub498, %mul510
  %mul512 = fmul double %49, %mul400
  %add513 = fadd double %sub511, %mul512
  %mul514 = fmul double %48, %mul400
  %sub515 = fsub double %add501, %mul514
  %mul516 = fmul double %49, %mul395
  %sub517 = fsub double %sub515, %mul516
  store double %add513, double* %real412, align 8, !tbaa !0
  %sub522 = fsub double -0.000000e+00, %sub517
  store double %sub522, double* %imag416, align 8, !tbaa !0
  %mul535 = fmul double %48, %mul385
  %mul536 = fmul double %49, %mul390
  %sub537 = fsub double %mul535, %mul536
  %mul538 = fmul double %48, %mul390
  %mul539 = fmul double %49, %mul385
  %add540 = fadd double %mul539, %mul538
  %mul549 = fmul double %50, %mul375
  %sub550 = fsub double %sub537, %mul549
  %mul551 = fmul double %51, %mul380
  %add552 = fadd double %sub550, %mul551
  %mul553 = fmul double %50, %mul380
  %sub554 = fsub double %add540, %mul553
  %mul555 = fmul double %51, %mul375
  %sub556 = fsub double %sub554, %mul555
  store double %add552, double* %real420, align 8, !tbaa !0
  %sub561 = fsub double -0.000000e+00, %sub556
  store double %sub561, double* %imag424, align 8, !tbaa !0
  %sub570 = fsub double %42, %add474
  %mul576 = fmul double %sub570, %sub570
  %sub581 = fadd double %43, %sub478
  %mul587 = fmul double %sub581, %sub581
  %add588 = fadd double %mul576, %mul587
  %sub593 = fsub double %44, %add513
  %mul599 = fmul double %sub593, %sub593
  %add600 = fadd double %add588, %mul599
  %sub605 = fadd double %45, %sub517
  %mul611 = fmul double %sub605, %sub605
  %add612 = fadd double %add600, %mul611
  %sub617 = fsub double %46, %add552
  %mul623 = fmul double %sub617, %sub617
  %add624 = fadd double %add612, %mul623
  %sub629 = fadd double %47, %sub556
  %mul635 = fmul double %sub629, %sub629
  %add636 = fadd double %mul635, %add624
  %54 = load double* @max_deviation, align 8, !tbaa !0
  %cmp.i854 = fcmp olt double %54, %add636
  br i1 %cmp.i854, label %if.then.i855, label %check_deviation.exit860

if.then.i855:                                     ; preds = %check_deviation.exit867
  store double %add636, double* @max_deviation, align 8, !tbaa !0
  br label %check_deviation.exit860

check_deviation.exit860:                          ; preds = %check_deviation.exit867, %if.then.i855
  %mul.i856 = fmul double %add636, %add636
  %55 = load double* @av_deviation, align 8, !tbaa !0
  %add.i857 = fadd double %mul.i856, %55
  store double %add.i857, double* @av_deviation, align 8, !tbaa !0
  %cmp1.i858 = fcmp ogt double %add636, 1.000000e-04
  %..i859 = zext i1 %cmp1.i858 to i32
  %add638 = add nsw i32 %add368, %..i859
  ret i32 %add638
}

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #3

; Function Attrs: nounwind optsize
declare double @sqrt(double) #1

; Function Attrs: nounwind optsize uwtable
define void @reunitarize() #0 {
entry:
  store double 0.000000e+00, double* @max_deviation, align 8, !tbaa !0
  store double 0.000000e+00, double* @av_deviation, align 8, !tbaa !0
  %0 = load i32* @sites_on_node, align 4, !tbaa !4
  %cmp35 = icmp sgt i32 %0, 0
  br i1 %cmp35, label %for.cond1.preheader.lr.ph, label %if.end20

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %1 = load %struct.site** @lattice, align 8, !tbaa !3
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc8
  %i.038 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc9, %for.inc8 ]
  %errcount.037 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %add, %for.inc8 ]
  %s.036 = phi %struct.site* [ %1, %for.cond1.preheader.lr.ph ], [ %incdec.ptr, %for.inc8 ]
  br label %for.body3

for.body3:                                        ; preds = %for.inc, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %errcount.134 = phi i32 [ %errcount.037, %for.cond1.preheader ], [ %add, %for.inc ]
  %arrayidx = getelementptr inbounds %struct.site* %s.036, i64 0, i32 8, i64 %indvars.iv
  %call = tail call i32 @reunit_su3(%struct.su3_matrix* %arrayidx) #7
  %add = add nsw i32 %call, %errcount.134
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body3
  %2 = trunc i64 %indvars.iv to i32
  tail call void @reunit_report_problem_matrix(%struct.su3_matrix* %arrayidx, i32 %i.038, i32 %2) #7
  br label %if.end

if.end:                                           ; preds = %for.body3, %if.then
  %cmp4 = icmp sgt i32 %add, 100
  br i1 %cmp4, label %if.then5, label %for.inc

if.then5:                                         ; preds = %if.end
  %puts32 = tail call i32 @puts(i8* getelementptr inbounds ([32 x i8]* @str12, i64 0, i64 0))
  tail call void @terminate(i32 1) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc8, label %for.body3

for.inc8:                                         ; preds = %for.inc
  %inc9 = add nsw i32 %i.038, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %s.036, i64 1
  %3 = load i32* @sites_on_node, align 4, !tbaa !4
  %cmp = icmp slt i32 %inc9, %3
  br i1 %cmp, label %for.cond1.preheader, label %for.end10

for.end10:                                        ; preds = %for.inc8
  %.pre = load double* @max_deviation, align 8, !tbaa !0
  %phitmp = fcmp ogt double %.pre, 1.000000e-04
  br i1 %phitmp, label %if.then12, label %if.end20

if.then12:                                        ; preds = %for.end10
  %call13 = tail call i32 (...)* @mynode() #5
  %4 = load double* @max_deviation, align 8, !tbaa !0
  %call14 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([62 x i8]* @.str8, i64 0, i64 0), i32 %call13, double %4) #5
  %cmp16 = icmp sgt i32 %add, 99
  br i1 %cmp16, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.then12
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([32 x i8]* @str12, i64 0, i64 0))
  tail call void @terminate(i32 1) #5
  br label %if.end20

if.end20:                                         ; preds = %entry, %if.then12, %if.then17, %for.end10
  ret void
}

; Function Attrs: optsize
declare void @terminate(i32) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #4

; Function Attrs: nounwind
declare i32 @putchar(i32) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readnone }
attributes #7 = { optsize }

!0 = metadata !{metadata !"double", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
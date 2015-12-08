; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }

@A = internal unnamed_addr global float 0.000000e+00, align 4
@B = internal unnamed_addr global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [34 x i8] c"r1 (%f) >= rc (%f) in %s, line %d\00", align 1
@.str1 = private unnamed_addr constant [58 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c\00", align 1
@A_3 = internal unnamed_addr global float 0.000000e+00, align 4
@B_4 = internal unnamed_addr global float 0.000000e+00, align 4
@C = internal unnamed_addr global float 0.000000e+00, align 4
@N0 = internal unnamed_addr global float 0.000000e+00, align 4
@Vol = internal unnamed_addr global float 0.000000e+00, align 4
@FourPi_V = internal unnamed_addr global float 0.000000e+00, align 4
@debug = external global %struct._IO_FILE*
@.str2 = private unnamed_addr constant [131 x i8] c"Constants for short-range and fourier stuff:\0Ar1 = %10.3f,  rc = %10.3f\0AA  = %10.3e,  B  = %10.3e,  C  = %10.3e, FourPi_V = %10.3e\0A\00", align 1
@c1 = internal unnamed_addr global float 0.000000e+00, align 4
@c2 = internal unnamed_addr global float 0.000000e+00, align 4
@c3 = internal unnamed_addr global float 0.000000e+00, align 4
@c4 = internal unnamed_addr global float 0.000000e+00, align 4
@c5 = internal unnamed_addr global float 0.000000e+00, align 4
@c6 = internal unnamed_addr global float 0.000000e+00, align 4
@.str3 = private unnamed_addr constant [95 x i8] c"c1 = %10.3e,  c2 = %10.3e,  c3 = %10.3e\0Ac4 = %10.3e,  c5 = %10.3e,  c6 = %10.3e,  N0 = %10.3e\0A\00", align 1
@One_4pi = internal unnamed_addr global float 0.000000e+00, align 4
@.str4 = private unnamed_addr constant [48 x i8] c"There were %d short range interactions, vsr=%g\0A\00", align 1
@shift_LRcorrection.bFirst = internal unnamed_addr global i1 false
@shift_LRcorrection.Vself = internal unnamed_addr global float 0.000000e+00, align 4
@.str5 = private unnamed_addr constant [50 x i8] c"Long Range corrections for shifted interactions:\0A\00", align 1
@.str6 = private unnamed_addr constant [16 x i8] c"r1 = %g, rc=%g\0A\00", align 1
@.str7 = private unnamed_addr constant [20 x i8] c"start=%d,natoms=%d\0A\00", align 1
@.str8 = private unnamed_addr constant [19 x i8] c"qq = %g, Vself=%g\0A\00", align 1
@.str9 = private unnamed_addr constant [36 x i8] c"i: %d, k: %d, dr: %.3f fscal: %.3f\0A\00", align 1
@.str10 = private unnamed_addr constant [33 x i8] c"Long Range correction: Vexcl=%g\0A\00", align 1
@.str11 = private unnamed_addr constant [36 x i8] c"%12s  %12s  %12s  %12s  %12s  %12s\0A\00", align 1
@.str12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str13 = private unnamed_addr constant [5 x i8] c"Vphi\00", align 1
@.str14 = private unnamed_addr constant [6 x i8] c"Vself\00", align 1
@.str15 = private unnamed_addr constant [6 x i8] c"Vexcl\00", align 1
@.str16 = private unnamed_addr constant [5 x i8] c"Vtot\00", align 1
@.str17 = private unnamed_addr constant [5 x i8] c"1Mol\00", align 1
@.str18 = private unnamed_addr constant [46 x i8] c"%12s  %12.5e  %12.5e  %12.5e  %12.5e  %12.5e\0A\00", align 1
@.str19 = private unnamed_addr constant [19 x i8] c"phi_aver = %10.3e\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str20 = private unnamed_addr constant [32 x i8] c"All values zero, see .out file\0A\00", align 1
@.str21 = private unnamed_addr constant [3 x i8] c"xx\00", align 1
@.str22 = private unnamed_addr constant [4 x i8] c"phi\00", align 1
@.str23 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str24 = private unnamed_addr constant [14 x i8] c"%10d  %12.5e\0A\00", align 1
@.str25 = private unnamed_addr constant [57 x i8] c"%-6s%5d  %-4.4s%3.3s %c%4d    %8.3f%8.3f%8.3f%6.2f%6.2f\0A\00", align 1
@.str26 = private unnamed_addr constant [5 x i8] c"ATOM\00", align 1
@.str27 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str28 = private unnamed_addr constant [57 x i8] c"\0A********************************\0AERROR ANALYSIS for %s\0A\00", align 1
@.str29 = private unnamed_addr constant [15 x i8] c"%-10s%12s%12s\0A\00", align 1
@.str30 = private unnamed_addr constant [7 x i8] c"Error:\00", align 1
@.str31 = private unnamed_addr constant [8 x i8] c"Max Abs\00", align 1
@.str32 = private unnamed_addr constant [4 x i8] c"RMS\00", align 1
@.str33 = private unnamed_addr constant [23 x i8] c"%-10s  %10.3f  %10.3f\0A\00", align 1
@.str34 = private unnamed_addr constant [6 x i8] c"Force\00", align 1
@.str35 = private unnamed_addr constant [10 x i8] c"Potential\00", align 1
@.str36 = private unnamed_addr constant [21 x i8] c"LR Force Correlation\00", align 1
@.str37 = private unnamed_addr constant [11 x i8] c"Four-Force\00", align 1
@.str38 = private unnamed_addr constant [11 x i8] c"PPPM-Force\00", align 1
@.str39 = private unnamed_addr constant [16 x i8] c"%10.3f  %10.3f\0A\00", align 1
@.str40 = private unnamed_addr constant [25 x i8] c"LR Potential Correlation\00", align 1
@.str41 = private unnamed_addr constant [9 x i8] c"Four-Pot\00", align 1
@.str42 = private unnamed_addr constant [9 x i8] c"PPPM-Pot\00", align 1
@.str43 = private unnamed_addr constant [28 x i8] c"Total Potential Correlation\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @set_shift_consts(%struct._IO_FILE* %log, float %r1, float %rc, float* nocapture %box, %struct.t_forcerec* nocapture %fr) #0 {
entry:
  %cmp = fcmp olt float %r1, %rc
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %mul = fmul float %r1, 2.000000e+00
  %mul1 = fmul float %rc, 5.000000e+00
  %sub = fsub float %mul, %mul1
  %mul2 = fmul float %rc, %rc
  %mul3 = fmul float %mul2, %rc
  %sub4 = fsub float %rc, %r1
  %mul6 = fmul float %sub4, %sub4
  %mul7 = fmul float %mul3, %mul6
  %div = fdiv float %sub, %mul7
  store float %div, float* @A, align 4, !tbaa !0
  %mul8 = fmul float %rc, 4.000000e+00
  %sub10 = fsub float %mul8, %mul
  %mul17 = fmul float %sub4, %mul6
  %mul18 = fmul float %mul3, %mul17
  %div19 = fdiv float %sub10, %mul18
  store float %div19, float* @B, align 4, !tbaa !0
  br label %if.end

if.else:                                          ; preds = %entry
  %conv = fpext float %r1 to double
  %conv20 = fpext float %rc to double
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str, i64 0, i64 0), double %conv, double %conv20, i8* getelementptr inbounds ([58 x i8]* @.str1, i64 0, i64 0), i32 64) #6
  %.pre = load float* @A, align 4, !tbaa !0
  %.pre218 = load float* @B, align 4, !tbaa !0
  %sub28.pre = fsub float %rc, %r1
  %mul30.pre = fmul float %sub28.pre, %sub28.pre
  %mul32.pre = fmul float %sub28.pre, %mul30.pre
  %mul44.pre = fmul float %rc, %rc
  %mul45.pre = fmul float %mul44.pre, %rc
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %mul45.pre-phi = phi float [ %mul45.pre, %if.else ], [ %mul3, %if.then ]
  %mul32.pre-phi = phi float [ %mul32.pre, %if.else ], [ %mul17, %if.then ]
  %sub28.pre-phi = phi float [ %sub28.pre, %if.else ], [ %sub4, %if.then ]
  %0 = phi float [ %.pre218, %if.else ], [ %div19, %if.then ]
  %1 = phi float [ %.pre, %if.else ], [ %div, %if.then ]
  %conv23 = fdiv float %1, 3.000000e+00
  store float %conv23, float* @A_3, align 4, !tbaa !0
  %conv26 = fmul float %0, 2.500000e-01
  store float %conv26, float* @B_4, align 4, !tbaa !0
  %div27 = fdiv float 1.000000e+00, %rc
  %mul33 = fmul float %mul32.pre-phi, %conv23
  %sub34 = fsub float %div27, %mul33
  %mul41 = fmul float %sub28.pre-phi, %mul32.pre-phi
  %mul42 = fmul float %mul41, %conv26
  %sub43 = fsub float %sub34, %mul42
  store float %sub43, float* @C, align 4, !tbaa !0
  %conv46 = fpext float %mul45.pre-phi to double
  %mul47 = fmul double %conv46, 0x401921FB54442D18
  %conv53 = fpext float %mul32.pre-phi to double
  %mul54 = fmul double %mul47, %conv53
  %conv55 = fptrunc double %mul54 to float
  store float %conv55, float* @N0, align 4, !tbaa !0
  %2 = load float* %box, align 4, !tbaa !0
  %arrayidx56 = getelementptr inbounds float* %box, i64 1
  %3 = load float* %arrayidx56, align 4, !tbaa !0
  %mul57 = fmul float %2, %3
  %arrayidx58 = getelementptr inbounds float* %box, i64 2
  %4 = load float* %arrayidx58, align 4, !tbaa !0
  %mul59 = fmul float %mul57, %4
  store float %mul59, float* @Vol, align 4, !tbaa !0
  %conv60 = fpext float %mul59 to double
  %div61 = fdiv double 0x402921FB54442D18, %conv60
  %conv62 = fptrunc double %div61 to float
  store float %conv62, float* @FourPi_V, align 4, !tbaa !0
  %5 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool = icmp eq %struct._IO_FILE* %5, null
  %tobool63 = icmp eq %struct._IO_FILE* %log, null
  %or.cond = or i1 %tobool, %tobool63
  br i1 %or.cond, label %if.end71, label %if.then64

if.then64:                                        ; preds = %if.end
  %conv65 = fpext float %r1 to double
  %conv66 = fpext float %rc to double
  %conv67 = fpext float %1 to double
  %conv68 = fpext float %0 to double
  %conv69 = fpext float %sub43 to double
  %conv70 = fpext float %conv62 to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([131 x i8]* @.str2, i64 0, i64 0), double %conv65, double %conv66, double %conv67, double %conv68, double %conv69, double %conv70) #6
  %.pre219 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  br label %if.end71

if.end71:                                         ; preds = %if.end, %if.then64
  %6 = phi %struct._IO_FILE* [ %5, %if.end ], [ %.pre219, %if.then64 ]
  %mul72 = fmul float %rc, -4.000000e+01
  %mul73 = fmul float %mul72, %rc
  %mul74 = fmul float %rc, 5.000000e+01
  %mul75 = fmul float %mul74, %r1
  %add = fadd float %mul73, %mul75
  %mul76 = fmul float %r1, 1.600000e+01
  %mul77 = fmul float %mul76, %r1
  %sub78 = fsub float %add, %mul77
  store float %sub78, float* @c1, align 4, !tbaa !0
  %mul79 = fmul float %rc, 6.000000e+01
  %mul80 = fmul float %r1, 3.000000e+01
  %sub81 = fsub float %mul79, %mul80
  store float %sub81, float* @c2, align 4, !tbaa !0
  %mul82 = fmul float %rc, -1.000000e+01
  %mul83 = fmul float %mul82, %rc
  %mul84 = fmul float %mul83, %rc
  %mul85 = fmul float %rc, 2.000000e+01
  %mul86 = fmul float %mul85, %rc
  %mul87 = fmul float %mul86, %r1
  %add88 = fadd float %mul84, %mul87
  %mul89 = fmul float %rc, 1.300000e+01
  %mul90 = fmul float %mul89, %r1
  %mul91 = fmul float %mul90, %r1
  %sub92 = fsub float %add88, %mul91
  %mul93 = fmul float %r1, 3.000000e+00
  %mul94 = fmul float %mul93, %r1
  %mul95 = fmul float %mul94, %r1
  %add96 = fadd float %mul95, %sub92
  store float %add96, float* @c3, align 4, !tbaa !0
  %mul97 = fmul float %rc, -2.000000e+01
  %mul98 = fmul float %mul97, %rc
  %mul99 = fmul float %rc, 4.000000e+01
  %mul100 = fmul float %mul99, %r1
  %add101 = fadd float %mul98, %mul100
  %mul102 = fmul float %r1, 1.400000e+01
  %mul103 = fmul float %mul102, %r1
  %sub104 = fsub float %add101, %mul103
  store float %sub104, float* @c4, align 4, !tbaa !0
  %sub105 = fsub float -0.000000e+00, %sub81
  store float %sub105, float* @c5, align 4, !tbaa !0
  %mul106 = fmul float %rc, -5.000000e+00
  %mul107 = fmul float %mul106, %rc
  %mul108 = fmul float %mul107, %r1
  %mul109 = fmul float %rc, 7.000000e+00
  %mul110 = fmul float %mul109, %r1
  %mul111 = fmul float %mul110, %r1
  %add112 = fadd float %mul108, %mul111
  %mul113 = fmul float %r1, 2.000000e+00
  %mul114 = fmul float %mul113, %r1
  %mul115 = fmul float %mul114, %r1
  %sub116 = fsub float %add112, %mul115
  store float %sub116, float* @c6, align 4, !tbaa !0
  %tobool117 = icmp eq %struct._IO_FILE* %6, null
  %or.cond217 = or i1 %tobool117, %tobool63
  br i1 %or.cond217, label %if.end129, label %if.then120

if.then120:                                       ; preds = %if.end71
  %conv121 = fpext float %sub78 to double
  %conv122 = fpext float %sub81 to double
  %conv123 = fpext float %add96 to double
  %conv124 = fpext float %sub104 to double
  %conv125 = fpext float %sub105 to double
  %conv126 = fpext float %sub116 to double
  %7 = load float* @N0, align 4, !tbaa !0
  %conv127 = fpext float %7 to double
  %call128 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([95 x i8]* @.str3, i64 0, i64 0), double %conv121, double %conv122, double %conv123, double %conv124, double %conv125, double %conv126, double %conv127) #6
  br label %if.end129

if.end129:                                        ; preds = %if.end71, %if.then120
  store float 0x3FB45F3060000000, float* @One_4pi, align 4, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define float @gk(float %k, float %rc, float %r1) #0 {
entry:
  %0 = load float* @N0, align 4, !tbaa !0
  %mul = fmul float %k, %k
  %mul1 = fmul float %mul, %k
  %mul2 = fmul float %mul1, %k
  %mul3 = fmul float %mul2, %0
  %1 = load float* @FourPi_V, align 4, !tbaa !0
  %mul4 = fmul float %mul3, %k
  %div = fdiv float %1, %mul4
  %conv = fpext float %div to double
  %2 = load float* @c1, align 4, !tbaa !0
  %mul5 = fmul float %2, %k
  %conv6 = fpext float %mul5 to double
  %mul7 = fmul float %k, %rc
  %conv8 = fpext float %mul7 to double
  %call = tail call double @cos(double %conv8) #6
  %mul9 = fmul double %call, %conv6
  %3 = load float* @c2, align 4, !tbaa !0
  %4 = load float* @c3, align 4, !tbaa !0
  %mul10 = fmul float %4, %k
  %mul11 = fmul float %mul10, %k
  %add = fadd float %3, %mul11
  %conv12 = fpext float %add to double
  %call15 = tail call double @sin(double %conv8) #6
  %mul16 = fmul double %call15, %conv12
  %add17 = fadd double %mul9, %mul16
  %5 = load float* @c4, align 4, !tbaa !0
  %mul18 = fmul float %5, %k
  %conv19 = fpext float %mul18 to double
  %mul20 = fmul float %k, %r1
  %conv21 = fpext float %mul20 to double
  %call22 = tail call double @cos(double %conv21) #6
  %mul23 = fmul double %call22, %conv19
  %add24 = fadd double %mul23, %add17
  %6 = load float* @c5, align 4, !tbaa !0
  %7 = load float* @c6, align 4, !tbaa !0
  %mul25 = fmul float %7, %k
  %mul26 = fmul float %mul25, %k
  %add27 = fadd float %6, %mul26
  %conv28 = fpext float %add27 to double
  %call31 = tail call double @sin(double %conv21) #6
  %mul32 = fmul double %call31, %conv28
  %add33 = fadd double %add24, %mul32
  %mul34 = fmul double %conv, %add33
  %conv35 = fptrunc double %mul34 to float
  ret float %conv35
}

; Function Attrs: nounwind optsize
declare double @cos(double) #2

; Function Attrs: nounwind optsize
declare double @sin(double) #2

; Function Attrs: nounwind optsize uwtable
define float @gknew(float %k, float %rc, float %r1) #0 {
entry:
  %mul = fmul float %k, %rc
  %mul1 = fmul float %mul, %mul
  %conv = fpext float %mul1 to double
  %sub = fadd double %conv, -3.000000e+00
  %conv2 = fpext float %mul to double
  %call = tail call double @sin(double %conv2) #6
  %mul3 = fmul double %sub, %call
  %mul4 = fmul float %mul, 3.000000e+00
  %conv5 = fpext float %mul4 to double
  %call7 = tail call double @cos(double %conv2) #6
  %mul8 = fmul double %conv5, %call7
  %add = fadd double %mul3, %mul8
  %mul9 = fmul double %add, -1.500000e+01
  %0 = load float* @Vol, align 4, !tbaa !0
  %mul10 = fmul float %mul1, %0
  %mul11 = fmul float %mul1, %mul10
  %mul12 = fmul float %mul, %mul11
  %conv13 = fpext float %mul12 to double
  %div = fdiv double %mul9, %conv13
  %conv14 = fptrunc double %div to float
  ret float %conv14
}

; Function Attrs: nounwind optsize uwtable
define float @calc_dx2dx(float* nocapture %xi, float* nocapture %xj, float* nocapture %box, float* nocapture %dx) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %if.end21, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end21 ]
  %dx2.045 = phi float [ 0.000000e+00, %entry ], [ %add25, %if.end21 ]
  %arrayidx = getelementptr inbounds float* %xj, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !0
  %arrayidx2 = getelementptr inbounds float* %xi, i64 %indvars.iv
  %1 = load float* %arrayidx2, align 4, !tbaa !0
  %sub = fsub float %0, %1
  %conv = fpext float %sub to double
  %arrayidx4 = getelementptr inbounds float* %box, i64 %indvars.iv
  %2 = load float* %arrayidx4, align 4, !tbaa !0
  %conv5 = fpext float %2 to double
  %mul = fmul double %conv5, -5.000000e-01
  %cmp6 = fcmp olt double %conv, %mul
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %add = fadd float %sub, %2
  br label %if.end21

if.else:                                          ; preds = %for.body
  %mul14 = fmul double %conv5, 5.000000e-01
  %cmp15 = fcmp ult double %conv, %mul14
  br i1 %cmp15, label %if.end21, label %if.then17

if.then17:                                        ; preds = %if.else
  %sub20 = fsub float %sub, %2
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then17, %if.then
  %ddx.0 = phi float [ %add, %if.then ], [ %sub20, %if.then17 ], [ %sub, %if.else ]
  %arrayidx23 = getelementptr inbounds float* %dx, i64 %indvars.iv
  store float %ddx.0, float* %arrayidx23, align 4, !tbaa !0
  %mul24 = fmul float %ddx.0, %ddx.0
  %add25 = fadd float %dx2.045, %mul24
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %if.end21
  ret float %add25
}

; Function Attrs: nounwind optsize uwtable
define float @calc_dx2(float* nocapture %xi, float* nocapture %xj, float* nocapture %box) #0 {
entry:
  %dx = alloca [3 x float], align 4
  %arraydecay = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0
  %call = call float @calc_dx2dx(float* %xi, float* %xj, float* %box, float* %arraydecay) #7
  ret float %call
}

; Function Attrs: nounwind optsize readonly uwtable
define float @shiftfunction(float %r1, float %rc, float %R) #3 {
entry:
  %cmp = fcmp ugt float %R, %r1
  br i1 %cmp, label %if.else, label %return

if.else:                                          ; preds = %entry
  %cmp1 = fcmp ult float %R, %rc
  br i1 %cmp1, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.else
  %mul = fmul float %R, %R
  %conv3 = fdiv float -1.000000e+00, %mul
  br label %return

if.end4:                                          ; preds = %if.else
  %sub = fsub float %R, %r1
  %0 = load float* @A, align 4, !tbaa !0
  %mul5 = fmul float %sub, %0
  %mul6 = fmul float %sub, %mul5
  %1 = load float* @B, align 4, !tbaa !0
  %mul7 = fmul float %sub, %1
  %mul8 = fmul float %sub, %mul7
  %mul9 = fmul float %sub, %mul8
  %add = fadd float %mul6, %mul9
  br label %return

return:                                           ; preds = %entry, %if.end4, %if.then2
  %retval.0 = phi float [ %conv3, %if.then2 ], [ %add, %if.end4 ], [ 0.000000e+00, %entry ]
  ret float %retval.0
}

; Function Attrs: nounwind optsize readnone uwtable
define float @new_f(float %r, float %rc) #4 {
entry:
  %div = fdiv float %r, %rc
  %mul = fmul float %div, %div
  %mul1 = fmul float %div, %mul
  %conv = fpext float %mul to double
  %mul2 = fmul double %conv, 1.500000e+00
  %conv3 = fpext float %mul1 to double
  %mul4 = fmul double %mul2, %conv3
  %mul6 = fmul double %conv3, 2.500000e+00
  %sub = fsub double %mul4, %mul6
  %add = fadd double %sub, 1.000000e+00
  %conv7 = fptrunc double %add to float
  ret float %conv7
}

; Function Attrs: nounwind optsize readnone uwtable
define float @new_phi(float %r, float %rc) #4 {
entry:
  %div = fdiv float %r, %rc
  %mul.i = fmul float %div, %div
  %div1 = fdiv float 1.000000e+00, %r
  %conv = fpext float %div1 to double
  %conv2 = fpext float %rc to double
  %div3 = fdiv double 1.250000e-01, %conv2
  %mul = fmul float %mul.i, 3.000000e+00
  %mul4 = fmul float %mul.i, %mul
  %add = fadd float %mul4, 1.500000e+01
  %mul5 = fmul float %mul.i, 1.000000e+01
  %sub = fsub float %add, %mul5
  %conv6 = fpext float %sub to double
  %mul7 = fmul double %div3, %conv6
  %sub8 = fsub double %conv, %mul7
  %conv9 = fptrunc double %sub8 to float
  ret float %conv9
}

; Function Attrs: nounwind optsize readonly uwtable
define float @old_f(float %r, float %rc, float %r1) #3 {
entry:
  %cmp = fcmp ugt float %r, %r1
  br i1 %cmp, label %if.else, label %return

if.else:                                          ; preds = %entry
  %cmp1 = fcmp ult float %r, %rc
  br i1 %cmp1, label %if.end3, label %return

if.end3:                                          ; preds = %if.else
  %sub = fsub float %r, %r1
  %mul = fmul float %r, %r
  %0 = load float* @A, align 4, !tbaa !0
  %mul4 = fmul float %mul, %0
  %mul5 = fmul float %sub, %mul4
  %mul6 = fmul float %sub, %mul5
  %add = fadd float %mul6, 1.000000e+00
  %1 = load float* @B, align 4, !tbaa !0
  %mul7 = fmul float %mul, %1
  %mul8 = fmul float %sub, %mul7
  %mul9 = fmul float %sub, %mul8
  %mul10 = fmul float %sub, %mul9
  %add11 = fadd float %add, %mul10
  br label %return

return:                                           ; preds = %if.else, %entry, %if.end3
  %retval.0 = phi float [ %add11, %if.end3 ], [ 1.000000e+00, %entry ], [ 0.000000e+00, %if.else ]
  ret float %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define float @old_phi(float %r, float %rc, float %r1) #3 {
entry:
  %cmp = fcmp ugt float %r, %r1
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %div = fdiv float 1.000000e+00, %r
  %0 = load float* @C, align 4, !tbaa !0
  %sub = fsub float %div, %0
  br label %return

if.else:                                          ; preds = %entry
  %cmp1 = fcmp ult float %r, %rc
  br i1 %cmp1, label %if.end3, label %return

if.end3:                                          ; preds = %if.else
  %sub4 = fsub float %r, %r1
  %div5 = fdiv float 1.000000e+00, %r
  %1 = load float* @A_3, align 4, !tbaa !0
  %mul = fmul float %sub4, %1
  %mul6 = fmul float %sub4, %mul
  %mul7 = fmul float %sub4, %mul6
  %sub8 = fsub float %div5, %mul7
  %2 = load float* @B_4, align 4, !tbaa !0
  %mul9 = fmul float %sub4, %2
  %mul10 = fmul float %sub4, %mul9
  %mul11 = fmul float %sub4, %mul10
  %mul12 = fmul float %sub4, %mul11
  %sub13 = fsub float %sub8, %mul12
  %3 = load float* @C, align 4, !tbaa !0
  %sub14 = fsub float %sub13, %3
  br label %return

return:                                           ; preds = %if.else, %if.end3, %if.then
  %retval.0 = phi float [ %sub, %if.then ], [ %sub14, %if.end3 ], [ 0.000000e+00, %if.else ]
  ret float %retval.0
}

; Function Attrs: nounwind optsize uwtable
define float @phi_sr(%struct._IO_FILE* %log, i32 %nj, [3 x float]* nocapture %x, float* nocapture %charge, float %rc, float %r1, float* nocapture %box, float* nocapture %phi, %struct.t_block* nocapture %excl, [3 x float]* nocapture %f_sr, i32 %bOld) #0 {
entry:
  %dx = alloca [3 x float], align 4
  %mul = fmul float %rc, %rc
  %sub = add i32 %nj, -1
  %cmp160 = icmp sgt i32 %sub, 0
  br i1 %cmp160, label %for.body.lr.ph, label %for.end88

for.body.lr.ph:                                   ; preds = %entry
  %index = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 2
  %arraydecay23 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0
  %tobool = icmp eq i32 %bOld, 0
  %conv2.i = fpext float %rc to double
  %div3.i = fdiv double 1.250000e-01, %conv2.i
  %a = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 4
  br label %for.body

for.cond.loopexit:                                ; preds = %for.inc83, %for.body
  %vsr.1.lcssa = phi float [ %vsr.0162, %for.body ], [ %vsr.2, %for.inc83 ]
  %ni.1.lcssa = phi i32 [ %ni.0161, %for.body ], [ %ni.2, %for.inc83 ]
  %indvars.iv.next171 = add i64 %indvars.iv170, 1
  %exitcond180 = icmp eq i32 %1, %sub
  br i1 %exitcond180, label %for.end88, label %for.body

for.body:                                         ; preds = %for.cond.loopexit, %for.body.lr.ph
  %indvars.iv177 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next178, %for.cond.loopexit ]
  %indvars.iv170 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next171, %for.cond.loopexit ]
  %vsr.0162 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %vsr.1.lcssa, %for.cond.loopexit ]
  %ni.0161 = phi i32 [ 0, %for.body.lr.ph ], [ %ni.1.lcssa, %for.cond.loopexit ]
  %arrayidx = getelementptr inbounds float* %charge, i64 %indvars.iv177
  %0 = load float* %arrayidx, align 4, !tbaa !0
  %indvars.iv.next178 = add i64 %indvars.iv177, 1
  %1 = trunc i64 %indvars.iv.next178 to i32
  %cmp2154 = icmp slt i32 %1, %nj
  br i1 %cmp2154, label %for.body3.lr.ph, label %for.cond.loopexit

for.body3.lr.ph:                                  ; preds = %for.body
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv177, i64 0
  %arrayidx46 = getelementptr inbounds float* %phi, i64 %indvars.iv177
  %mul48 = fmul float %0, 0x40615DEEE0000000
  br label %for.body3

for.body3:                                        ; preds = %for.inc83, %for.body3.lr.ph
  %indvars.iv172 = phi i64 [ %indvars.iv170, %for.body3.lr.ph ], [ %indvars.iv.next173, %for.inc83 ]
  %vsr.1157 = phi float [ %vsr.0162, %for.body3.lr.ph ], [ %vsr.2, %for.inc83 ]
  %ni.1155 = phi i32 [ %ni.0161, %for.body3.lr.ph ], [ %ni.2, %for.inc83 ]
  %2 = load i32** %index, align 8, !tbaa !3
  %arrayidx5 = getelementptr inbounds i32* %2, i64 %indvars.iv177
  %3 = load i32* %arrayidx5, align 4, !tbaa !4
  %arrayidx9 = getelementptr inbounds i32* %2, i64 %indvars.iv.next178
  %4 = load i32* %arrayidx9, align 4, !tbaa !4
  %cmp11151 = icmp slt i32 %3, %4
  br i1 %cmp11151, label %for.body12.lr.ph, label %for.end

for.body12.lr.ph:                                 ; preds = %for.body3
  %5 = load i32** %a, align 8, !tbaa !3
  %6 = sext i32 %3 to i64
  br label %for.body12

for.cond10:                                       ; preds = %for.body12
  %7 = trunc i64 %indvars.iv.next to i32
  %cmp11 = icmp slt i32 %7, %4
  br i1 %cmp11, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.body12.lr.ph, %for.cond10
  %indvars.iv = phi i64 [ %6, %for.body12.lr.ph ], [ %indvars.iv.next, %for.cond10 ]
  %k.0152 = phi i32 [ %3, %for.body12.lr.ph ], [ %inc, %for.cond10 ]
  %arrayidx14 = getelementptr inbounds i32* %5, i64 %indvars.iv
  %8 = load i32* %arrayidx14, align 4, !tbaa !4
  %9 = trunc i64 %indvars.iv172 to i32
  %cmp15 = icmp eq i32 %8, %9
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %k.0152, 1
  br i1 %cmp15, label %for.end, label %for.cond10

for.end:                                          ; preds = %for.cond10, %for.body12, %for.body3
  %k.0.lcssa = phi i32 [ %3, %for.body3 ], [ %k.0152, %for.body12 ], [ %inc, %for.cond10 ]
  %cmp16 = icmp eq i32 %k.0.lcssa, %4
  br i1 %cmp16, label %if.then17, label %for.inc83

if.then17:                                        ; preds = %for.end
  %arraydecay22 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv172, i64 0
  %call = call float @calc_dx2dx(float* %arraydecay, float* %arraydecay22, float* %box, float* %arraydecay23) #7
  %cmp24 = fcmp olt float %call, %mul
  br i1 %cmp24, label %if.then25, label %for.inc83

if.then25:                                        ; preds = %if.then17
  %arrayidx27 = getelementptr inbounds float* %charge, i64 %indvars.iv172
  %10 = load float* %arrayidx27, align 4, !tbaa !0
  %conv = fpext float %call to double
  %call28 = call double @sqrt(double %conv) #6
  %div = fdiv double 1.000000e+00, %call28
  %conv29 = fptrunc double %div to float
  %mul30 = fmul float %conv29, %conv29
  %conv31 = fpext float %mul30 to double
  %call32 = call double @sqrt(double %conv31) #6
  %div33 = fdiv double 1.000000e+00, %call32
  %conv34 = fptrunc double %div33 to float
  br i1 %tobool, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.then25
  %call36 = call float @old_f(float %conv34, float %rc, float %r1) #7
  %call38 = call float @old_phi(float %conv34, float %rc, float %r1) #7
  br label %if.end42

if.else:                                          ; preds = %if.then25
  %div.i = fdiv float %conv34, %rc
  %mul.i = fmul float %div.i, %div.i
  %mul1.i = fmul float %div.i, %mul.i
  %conv.i = fpext float %mul.i to double
  %mul2.i = fmul double %conv.i, 1.500000e+00
  %conv3.i = fpext float %mul1.i to double
  %mul4.i = fmul double %mul2.i, %conv3.i
  %mul6.i = fmul double %conv3.i, 2.500000e+00
  %sub.i = fsub double %mul4.i, %mul6.i
  %add.i = fadd double %sub.i, 1.000000e+00
  %conv7.i = fptrunc double %add.i to float
  %div1.i = fdiv float 1.000000e+00, %conv34
  %conv.i146 = fpext float %div1.i to double
  %mul.i147 = fmul float %mul.i, 3.000000e+00
  %mul4.i148 = fmul float %mul.i, %mul.i147
  %add.i149 = fadd float %mul4.i148, 1.500000e+01
  %mul5.i = fmul float %mul.i, 1.000000e+01
  %sub.i150 = fsub float %add.i149, %mul5.i
  %conv6.i = fpext float %sub.i150 to double
  %mul7.i = fmul double %div3.i, %conv6.i
  %sub8.i = fsub double %conv.i146, %mul7.i
  %conv9.i = fptrunc double %sub8.i to float
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then35
  %pp.0 = phi float [ %call38, %if.then35 ], [ %conv9.i, %if.else ]
  %call36.pn = phi float [ %call36, %if.then35 ], [ %conv7.i, %if.else ]
  %fscal.0 = fmul float %mul30, %call36.pn
  %mul43 = fmul float %10, 0x40615DEEE0000000
  %mul44 = fmul float %mul43, %pp.0
  %11 = load float* %arrayidx46, align 4, !tbaa !0
  %add47 = fadd float %mul44, %11
  store float %add47, float* %arrayidx46, align 4, !tbaa !0
  %mul49 = fmul float %mul48, %pp.0
  %arrayidx51 = getelementptr inbounds float* %phi, i64 %indvars.iv172
  %12 = load float* %arrayidx51, align 4, !tbaa !0
  %add52 = fadd float %mul49, %12
  store float %add52, float* %arrayidx51, align 4, !tbaa !0
  %mul54 = fmul float %0, %mul43
  %mul55 = fmul float %mul54, %pp.0
  br label %for.body60

for.body60:                                       ; preds = %for.body60, %if.end42
  %indvars.iv168 = phi i64 [ 0, %if.end42 ], [ %indvars.iv.next169, %for.body60 ]
  %arrayidx62 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv168
  %13 = load float* %arrayidx62, align 4, !tbaa !0
  %mul63 = fmul float %fscal.0, %13
  %arrayidx67 = getelementptr inbounds [3 x float]* %f_sr, i64 %indvars.iv177, i64 %indvars.iv168
  %14 = load float* %arrayidx67, align 4, !tbaa !0
  %add68 = fadd float %14, %mul63
  store float %add68, float* %arrayidx67, align 4, !tbaa !0
  %arrayidx75 = getelementptr inbounds [3 x float]* %f_sr, i64 %indvars.iv172, i64 %indvars.iv168
  %15 = load float* %arrayidx75, align 4, !tbaa !0
  %sub76 = fsub float %15, %mul63
  store float %sub76, float* %arrayidx75, align 4, !tbaa !0
  %indvars.iv.next169 = add i64 %indvars.iv168, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next169 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end79, label %for.body60

for.end79:                                        ; preds = %for.body60
  %add56 = fadd float %vsr.1157, %mul55
  %inc80 = add nsw i32 %ni.1155, 1
  br label %for.inc83

for.inc83:                                        ; preds = %for.end, %for.end79, %if.then17
  %ni.2 = phi i32 [ %inc80, %for.end79 ], [ %ni.1155, %if.then17 ], [ %ni.1155, %for.end ]
  %vsr.2 = phi float [ %add56, %for.end79 ], [ %vsr.1157, %if.then17 ], [ %vsr.1157, %for.end ]
  %indvars.iv.next173 = add i64 %indvars.iv172, 1
  %lftr.wideiv175 = trunc i64 %indvars.iv.next173 to i32
  %exitcond176 = icmp eq i32 %lftr.wideiv175, %nj
  br i1 %exitcond176, label %for.cond.loopexit, label %for.body3

for.end88:                                        ; preds = %for.cond.loopexit, %entry
  %vsr.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %vsr.1.lcssa, %for.cond.loopexit ]
  %ni.0.lcssa = phi i32 [ 0, %entry ], [ %ni.1.lcssa, %for.cond.loopexit ]
  %tobool89 = icmp eq %struct._IO_FILE* %log, null
  br i1 %tobool89, label %if.end93, label %if.then90

if.then90:                                        ; preds = %for.end88
  %conv91 = fpext float %vsr.0.lcssa to double
  %call92 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([48 x i8]* @.str4, i64 0, i64 0), i32 %ni.0.lcssa, double %conv91) #6
  br label %if.end93

if.end93:                                         ; preds = %for.end88, %if.then90
  ret float %vsr.0.lcssa
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #2

; Function Attrs: nounwind optsize readonly uwtable
define float @spreadfunction(float %r1, float %rc, float %R) #3 {
entry:
  %cmp = fcmp ugt float %R, %r1
  %cmp1 = fcmp ult float %R, %rc
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.end3, label %return

if.end3:                                          ; preds = %entry
  %sub = fsub float %R, %r1
  %0 = load float* @One_4pi, align 4, !tbaa !0
  %div = fdiv float %sub, %R
  %1 = fmul float %0, %div
  %2 = load float* @A, align 4, !tbaa !0
  %mul5 = fmul float %2, 2.000000e+00
  %mul6 = fmul float %R, 2.000000e+00
  %sub7 = fsub float %mul6, %r1
  %mul8 = fmul float %sub7, %mul5
  %3 = load float* @B, align 4, !tbaa !0
  %mul9 = fmul float %sub, %3
  %mul10 = fmul float %R, 5.000000e+00
  %mul11 = fmul float %r1, 2.000000e+00
  %sub12 = fsub float %mul10, %mul11
  %mul13 = fmul float %sub12, %mul9
  %add = fadd float %mul8, %mul13
  %4 = fmul float %1, %add
  %mul14 = fsub float -0.000000e+00, %4
  br label %return

return:                                           ; preds = %entry, %if.end3
  %retval.0 = phi float [ %mul14, %if.end3 ], [ 0.000000e+00, %entry ]
  ret float %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define float @potential(float %r1, float %rc, float %R) #3 {
entry:
  %cmp = fcmp olt float %R, %r1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %conv = fpext float %R to double
  %div = fdiv double 1.000000e+00, %conv
  %0 = load float* @C, align 4, !tbaa !0
  %conv1 = fpext float %0 to double
  %sub = fsub double %div, %conv1
  %conv2 = fptrunc double %sub to float
  br label %return

if.else:                                          ; preds = %entry
  %cmp3 = fcmp ugt float %R, %rc
  br i1 %cmp3, label %return, label %if.then5

if.then5:                                         ; preds = %if.else
  %conv6 = fpext float %R to double
  %div7 = fdiv double 1.000000e+00, %conv6
  %1 = load float* @A_3, align 4, !tbaa !0
  %sub8 = fsub float %R, %r1
  %mul = fmul float %sub8, %sub8
  %mul11 = fmul float %sub8, %mul
  %mul12 = fmul float %mul11, %1
  %conv13 = fpext float %mul12 to double
  %sub14 = fsub double %div7, %conv13
  %2 = load float* @B_4, align 4, !tbaa !0
  %mul21 = fmul float %sub8, %mul11
  %mul22 = fmul float %mul21, %2
  %conv23 = fpext float %mul22 to double
  %sub24 = fsub double %sub14, %conv23
  %3 = load float* @C, align 4, !tbaa !0
  %conv25 = fpext float %3 to double
  %sub26 = fsub double %sub24, %conv25
  %conv27 = fptrunc double %sub26 to float
  br label %return

return:                                           ; preds = %if.else, %if.then5, %if.then
  %retval.0 = phi float [ %conv2, %if.then ], [ %conv27, %if.then5 ], [ 0.000000e+00, %if.else ]
  ret float %retval.0
}

; Function Attrs: nounwind optsize uwtable
define float @shift_LRcorrection(%struct._IO_FILE* %fp, %struct.t_nsborder* nocapture %nsb, %struct.t_commrec* nocapture %cr, %struct.t_forcerec* nocapture %fr, float* nocapture %charge, %struct.t_block* nocapture %excl, [3 x float]* nocapture %x, i32 %bOld, [3 x float]* nocapture %box, [3 x float]* nocapture %lr_vir) #0 {
entry:
  %df = alloca [3 x float], align 4
  %dx = alloca [3 x float], align 4
  %rcoulomb_switch = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 22
  %0 = load float* %rcoulomb_switch, align 4, !tbaa !0
  %rcoulomb = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 23
  %1 = load float* %rcoulomb, align 4, !tbaa !0
  %nodeid = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %2 = load i32* %nodeid, align 4, !tbaa !4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom
  %3 = load i32* %arrayidx, align 4, !tbaa !4
  %arrayidx3 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom
  %4 = load i32* %arrayidx3, align 4, !tbaa !4
  %.b287 = load i1* @shift_LRcorrection.bFirst, align 1
  %add27.pre = add nsw i32 %4, %3
  br i1 %.b287, label %if.end25, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp333 = icmp sgt i32 %4, 0
  br i1 %cmp333, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %5 = sext i32 %3 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv347 = phi i64 [ %5, %for.body.lr.ph ], [ %indvars.iv.next348, %for.body ]
  %qq.0334 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add8, %for.body ]
  %arrayidx5 = getelementptr inbounds float* %charge, i64 %indvars.iv347
  %6 = load float* %arrayidx5, align 4, !tbaa !0
  %mul = fmul float %6, %6
  %conv = fpext float %mul to double
  %add8 = fadd double %qq.0334, %conv
  %indvars.iv.next348 = add i64 %indvars.iv347, 1
  %7 = trunc i64 %indvars.iv.next348 to i32
  %cmp = icmp slt i32 %7, %add27.pre
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %qq.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add8, %for.body ]
  %8 = load float* @C, align 4, !tbaa !0
  %conv9 = fpext float %8 to double
  %mul10 = fmul double %conv9, 5.000000e-01
  %mul11 = fmul double %mul10, 3.320636e+02
  %mul12 = fmul double %mul11, 4.184000e+00
  %mul13 = fmul double %mul12, 1.000000e-01
  %mul14 = fmul double %qq.0.lcssa, %mul13
  %conv15 = fptrunc double %mul14 to float
  store float %conv15, float* @shift_LRcorrection.Vself, align 4, !tbaa !0
  %9 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool16 = icmp eq %struct._IO_FILE* %9, null
  %tobool17 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond289 = or i1 %tobool16, %tobool17
  br i1 %or.cond289, label %if.end25, label %if.then18

if.then18:                                        ; preds = %for.end
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([50 x i8]* @.str5, i64 0, i64 0), i64 49, i64 1, %struct._IO_FILE* %fp)
  %conv19 = fpext float %0 to double
  %conv20 = fpext float %1 to double
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str6, i64 0, i64 0), double %conv19, double %conv20) #6
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str7, i64 0, i64 0), i32 %3, i32 %4) #6
  %11 = load float* @shift_LRcorrection.Vself, align 4, !tbaa !0
  %conv23 = fpext float %11 to double
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str8, i64 0, i64 0), double %qq.0.lcssa, double %conv23) #6
  br label %if.end25

if.end25:                                         ; preds = %entry, %for.end, %if.then18
  %a = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 4
  %12 = load i32** %a, align 8, !tbaa !3
  %cmp28329 = icmp sgt i32 %4, 0
  br i1 %cmp28329, label %for.body30.lr.ph, label %for.end193

for.body30.lr.ph:                                 ; preds = %if.end25
  %index32 = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 2
  %arraydecay67 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0
  %arrayidx9.i = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1
  %arrayidx10.i = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2
  %arraydecay147 = getelementptr inbounds [3 x float]* %df, i64 0, i64 0
  %arrayidx4.i = getelementptr inbounds [3 x float]* %df, i64 0, i64 1
  %arrayidx7.i = getelementptr inbounds [3 x float]* %df, i64 0, i64 2
  %f_pme = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55
  %13 = sext i32 %3 to i64
  br label %for.body30

for.cond26.loopexit:                              ; preds = %for.inc188, %for.body30
  %Vexcl.1.lcssa = phi float [ %Vexcl.0330, %for.body30 ], [ %Vexcl.2, %for.inc188 ]
  %14 = trunc i64 %indvars.iv.next346 to i32
  %cmp28 = icmp slt i32 %14, %add27.pre
  br i1 %cmp28, label %for.body30, label %for.end193

for.body30:                                       ; preds = %for.cond26.loopexit, %for.body30.lr.ph
  %indvars.iv345 = phi i64 [ %13, %for.body30.lr.ph ], [ %indvars.iv.next346, %for.cond26.loopexit ]
  %Vexcl.0330 = phi float [ 0.000000e+00, %for.body30.lr.ph ], [ %Vexcl.1.lcssa, %for.cond26.loopexit ]
  %15 = load i32** %index32, align 8, !tbaa !3
  %arrayidx33 = getelementptr inbounds i32* %15, i64 %indvars.iv345
  %16 = load i32* %arrayidx33, align 4, !tbaa !4
  %indvars.iv.next346 = add i64 %indvars.iv345, 1
  %arrayidx37 = getelementptr inbounds i32* %15, i64 %indvars.iv.next346
  %17 = load i32* %arrayidx37, align 4, !tbaa !4
  %arrayidx39 = getelementptr inbounds float* %charge, i64 %indvars.iv345
  %18 = load float* %arrayidx39, align 4, !tbaa !0
  %conv40 = fpext float %18 to double
  %mul41 = fmul double %conv40, 3.320636e+02
  %mul42 = fmul double %mul41, 4.184000e+00
  %mul43 = fmul double %mul42, 1.000000e-01
  %conv44 = fptrunc double %mul43 to float
  %cmp46326 = icmp slt i32 %16, %17
  br i1 %cmp46326, label %for.body48.lr.ph, label %for.cond26.loopexit

for.body48.lr.ph:                                 ; preds = %for.body30
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv345, i64 0
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv345, i64 1
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv345, i64 2
  %19 = sext i32 %16 to i64
  br label %for.body48

for.body48:                                       ; preds = %for.body48.lr.ph, %for.inc188
  %indvars.iv343 = phi i64 [ %19, %for.body48.lr.ph ], [ %indvars.iv.next344, %for.inc188 ]
  %Vexcl.1327 = phi float [ %Vexcl.0330, %for.body48.lr.ph ], [ %Vexcl.2, %for.inc188 ]
  %arrayidx50 = getelementptr inbounds i32* %12, i64 %indvars.iv343
  %20 = load i32* %arrayidx50, align 4, !tbaa !4
  %21 = trunc i64 %indvars.iv345 to i32
  %cmp51 = icmp sgt i32 %20, %21
  br i1 %cmp51, label %if.then53, label %for.inc188

if.then53:                                        ; preds = %for.body48
  %idxprom54 = sext i32 %20 to i64
  %arrayidx55 = getelementptr inbounds float* %charge, i64 %idxprom54
  %22 = load float* %arrayidx55, align 4, !tbaa !0
  %mul56 = fmul float %conv44, %22
  %conv57 = fpext float %mul56 to double
  %fabsf = call float @fabsf(float %mul56) #8
  %23 = fpext float %fabsf to double
  %cmp59 = fcmp ogt double %23, 1.200000e-38
  br i1 %cmp59, label %if.then61, label %for.inc188

if.then61:                                        ; preds = %if.then53
  %arraydecay66 = getelementptr inbounds [3 x float]* %x, i64 %idxprom54, i64 0
  %24 = load float* %arraydecay, align 4, !tbaa !0
  %25 = load float* %arraydecay66, align 4, !tbaa !0
  %sub.i = fsub float %24, %25
  %26 = load float* %arrayidx2.i, align 4, !tbaa !0
  %arrayidx3.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom54, i64 1
  %27 = load float* %arrayidx3.i, align 4, !tbaa !0
  %sub4.i = fsub float %26, %27
  %28 = load float* %arrayidx5.i, align 4, !tbaa !0
  %arrayidx6.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom54, i64 2
  %29 = load float* %arrayidx6.i, align 4, !tbaa !0
  %sub7.i = fsub float %28, %29
  store float %sub.i, float* %arraydecay67, align 4, !tbaa !0
  store float %sub4.i, float* %arrayidx9.i, align 4, !tbaa !0
  store float %sub7.i, float* %arrayidx10.i, align 4, !tbaa !0
  br label %for.body71

for.body71:                                       ; preds = %if.end105.for.body71_crit_edge, %if.then61
  %30 = phi float [ %sub7.i, %if.then61 ], [ %.pre, %if.end105.for.body71_crit_edge ]
  %31 = phi float [ %sub7.i, %if.then61 ], [ %41, %if.end105.for.body71_crit_edge ]
  %32 = phi float [ %sub4.i, %if.then61 ], [ %42, %if.end105.for.body71_crit_edge ]
  %33 = phi float [ %sub.i, %if.then61 ], [ %43, %if.end105.for.body71_crit_edge ]
  %indvars.iv = phi i64 [ 2, %if.then61 ], [ %indvars.iv.next, %if.end105.for.body71_crit_edge ]
  %dr2.0322 = phi float [ 0.000000e+00, %if.then61 ], [ %add111, %if.end105.for.body71_crit_edge ]
  %arrayidx73 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv
  %conv74 = fpext float %30 to double
  %arrayidx77 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv
  %arrayidx78 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv
  %34 = load float* %arrayidx78, align 4, !tbaa !0
  %conv79 = fpext float %34 to double
  %mul80 = fmul double %conv79, 5.000000e-01
  %cmp81 = fcmp ogt double %conv74, %mul80
  br i1 %cmp81, label %if.then83, label %if.else

if.then83:                                        ; preds = %for.body71
  %arraydecay87 = getelementptr inbounds [3 x float]* %arrayidx77, i64 0, i64 0
  %35 = load float* %arraydecay87, align 4, !tbaa !0
  %sub.i308 = fsub float %33, %35
  %arrayidx3.i310 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 1
  %36 = load float* %arrayidx3.i310, align 4, !tbaa !0
  %sub4.i311 = fsub float %32, %36
  %arrayidx6.i313 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 2
  %37 = load float* %arrayidx6.i313, align 4, !tbaa !0
  %sub7.i314 = fsub float %31, %37
  store float %sub.i308, float* %arraydecay67, align 4, !tbaa !0
  store float %sub4.i311, float* %arrayidx9.i, align 4, !tbaa !0
  store float %sub7.i314, float* %arrayidx10.i, align 4, !tbaa !0
  br label %if.end105

if.else:                                          ; preds = %for.body71
  %mul96 = fmul double %conv79, -5.000000e-01
  %cmp97 = fcmp olt double %conv74, %mul96
  br i1 %cmp97, label %if.then99, label %if.end105

if.then99:                                        ; preds = %if.else
  %arraydecay103 = getelementptr inbounds [3 x float]* %arrayidx77, i64 0, i64 0
  %38 = load float* %arraydecay103, align 4, !tbaa !0
  %add.i315 = fadd float %33, %38
  %arrayidx3.i317 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 1
  %39 = load float* %arrayidx3.i317, align 4, !tbaa !0
  %add4.i318 = fadd float %32, %39
  %arrayidx6.i320 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 2
  %40 = load float* %arrayidx6.i320, align 4, !tbaa !0
  %add7.i321 = fadd float %31, %40
  store float %add.i315, float* %arraydecay67, align 4, !tbaa !0
  store float %add4.i318, float* %arrayidx9.i, align 4, !tbaa !0
  store float %add7.i321, float* %arrayidx10.i, align 4, !tbaa !0
  br label %if.end105

if.end105:                                        ; preds = %if.else, %if.then99, %if.then83
  %41 = phi float [ %31, %if.else ], [ %add7.i321, %if.then99 ], [ %sub7.i314, %if.then83 ]
  %42 = phi float [ %32, %if.else ], [ %add4.i318, %if.then99 ], [ %sub4.i311, %if.then83 ]
  %43 = phi float [ %33, %if.else ], [ %add.i315, %if.then99 ], [ %sub.i308, %if.then83 ]
  %44 = load float* %arrayidx73, align 4, !tbaa !0
  %mul110 = fmul float %44, %44
  %add111 = fadd float %dr2.0322, %mul110
  %indvars.iv.next = add i64 %indvars.iv, -1
  %45 = trunc i64 %indvars.iv to i32
  %cmp69 = icmp sgt i32 %45, 0
  br i1 %cmp69, label %if.end105.for.body71_crit_edge, label %for.end113

if.end105.for.body71_crit_edge:                   ; preds = %if.end105
  %arrayidx73.phi.trans.insert = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv.next
  %.pre = load float* %arrayidx73.phi.trans.insert, align 4, !tbaa !0
  br label %for.body71

for.end113:                                       ; preds = %if.end105
  %conv114 = fpext float %add111 to double
  %call115 = call double @sqrt(double %conv114) #6
  %div = fdiv double 1.000000e+00, %call115
  %conv116 = fptrunc double %div to float
  %conv119 = fdiv float 1.000000e+00, %conv116
  %mul120 = fmul float %conv116, %conv116
  %mul121 = fmul float %conv116, %mul120
  %call122 = call float @potential(float %0, float %1, float %conv119) #7
  %sub = fsub float %conv116, %call122
  %conv123 = fpext float %sub to double
  %mul124 = fmul double %conv57, %conv123
  %conv125 = fpext float %Vexcl.1327 to double
  %add126 = fadd double %conv125, %mul124
  %conv127 = fptrunc double %add126 to float
  %cmp.i = fcmp ugt float %conv119, %0
  br i1 %cmp.i, label %if.else.i, label %shiftfunction.exit

if.else.i:                                        ; preds = %for.end113
  %cmp1.i = fcmp ult float %conv119, %1
  br i1 %cmp1.i, label %if.end4.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.else.i
  %mul.i304 = fmul float %conv119, %conv119
  %conv3.i = fdiv float -1.000000e+00, %mul.i304
  br label %shiftfunction.exit

if.end4.i:                                        ; preds = %if.else.i
  %sub.i305 = fsub float %conv119, %0
  %46 = load float* @A, align 4, !tbaa !0
  %mul5.i = fmul float %sub.i305, %46
  %mul6.i306 = fmul float %sub.i305, %mul5.i
  %47 = load float* @B, align 4, !tbaa !0
  %mul7.i = fmul float %sub.i305, %47
  %mul8.i = fmul float %sub.i305, %mul7.i
  %mul9.i = fmul float %sub.i305, %mul8.i
  %add.i307 = fadd float %mul6.i306, %mul9.i
  br label %shiftfunction.exit

shiftfunction.exit:                               ; preds = %for.end113, %if.then2.i, %if.end4.i
  %retval.0.i = phi float [ %conv3.i, %if.then2.i ], [ %add.i307, %if.end4.i ], [ 0.000000e+00, %for.end113 ]
  %sub129 = fsub float -0.000000e+00, %retval.0.i
  %conv130 = fpext float %sub129 to double
  %mul131 = fmul double %conv57, %conv130
  %conv132 = fpext float %mul121 to double
  %mul133 = fmul double %conv132, %mul131
  %conv134 = fptrunc double %mul133 to float
  %fabsf288 = call float @fabsf(float %conv134) #8
  %48 = fpext float %fabsf288 to double
  %cmp137 = fcmp ogt double %48, 1.200000e-38
  %49 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool140 = icmp ne %struct._IO_FILE* %49, null
  %or.cond = and i1 %cmp137, %tobool140
  br i1 %or.cond, label %if.then141, label %if.end145

if.then141:                                       ; preds = %shiftfunction.exit
  %conv135 = fpext float %conv134 to double
  %conv142 = fpext float %conv119 to double
  %call144 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([36 x i8]* @.str9, i64 0, i64 0), i32 %21, i32 %20, double %conv142, double %conv135) #6
  br label %if.end145

if.end145:                                        ; preds = %if.then141, %shiftfunction.exit
  %mul.i = fmul float %conv134, %43
  store float %mul.i, float* %arraydecay147, align 4, !tbaa !0
  %mul3.i = fmul float %conv134, %42
  store float %mul3.i, float* %arrayidx4.i, align 4, !tbaa !0
  %mul6.i = fmul float %conv134, %41
  store float %mul6.i, float* %arrayidx7.i, align 4, !tbaa !0
  %50 = load [3 x float]** %f_pme, align 8, !tbaa !3
  %arraydecay150 = getelementptr inbounds [3 x float]* %50, i64 %idxprom54, i64 0
  %51 = load float* %arraydecay150, align 4, !tbaa !0
  %add.i = fadd float %51, %mul.i
  %arrayidx2.i298 = getelementptr inbounds [3 x float]* %50, i64 %idxprom54, i64 1
  %52 = load float* %arrayidx2.i298, align 4, !tbaa !0
  %add4.i = fadd float %52, %mul3.i
  %arrayidx5.i300 = getelementptr inbounds [3 x float]* %50, i64 %idxprom54, i64 2
  %53 = load float* %arrayidx5.i300, align 4, !tbaa !0
  %add7.i = fadd float %mul6.i, %53
  store float %add.i, float* %arraydecay150, align 4, !tbaa !0
  store float %add4.i, float* %arrayidx2.i298, align 4, !tbaa !0
  store float %add7.i, float* %arrayidx5.i300, align 4, !tbaa !0
  %arraydecay155 = getelementptr inbounds [3 x float]* %50, i64 %indvars.iv345, i64 0
  %54 = load float* %arraydecay155, align 4, !tbaa !0
  %sub.i291 = fsub float %54, %mul.i
  %arrayidx2.i292 = getelementptr inbounds [3 x float]* %50, i64 %indvars.iv345, i64 1
  %55 = load float* %arrayidx2.i292, align 4, !tbaa !0
  %sub4.i294 = fsub float %55, %mul3.i
  %arrayidx5.i295 = getelementptr inbounds [3 x float]* %50, i64 %indvars.iv345, i64 2
  %56 = load float* %arrayidx5.i295, align 4, !tbaa !0
  %sub7.i297 = fsub float %56, %mul6.i
  store float %sub.i291, float* %arraydecay155, align 4, !tbaa !0
  store float %sub4.i294, float* %arrayidx2.i292, align 4, !tbaa !0
  store float %sub7.i297, float* %arrayidx5.i295, align 4, !tbaa !0
  br label %for.cond161.preheader

for.cond161.preheader:                            ; preds = %for.inc183.for.cond161.preheader_crit_edge, %if.end145
  %57 = phi float [ %43, %if.end145 ], [ %.pre349, %for.inc183.for.cond161.preheader_crit_edge ]
  %indvars.iv339 = phi i64 [ 0, %if.end145 ], [ %indvars.iv.next340, %for.inc183.for.cond161.preheader_crit_edge ]
  %conv167 = fpext float %57 to double
  %mul168 = fmul double %conv167, 5.000000e-01
  br label %for.body164

for.body164:                                      ; preds = %for.body164, %for.cond161.preheader
  %indvars.iv337 = phi i64 [ 0, %for.cond161.preheader ], [ %indvars.iv.next338, %for.body164 ]
  %arrayidx170 = getelementptr inbounds [3 x float]* %df, i64 0, i64 %indvars.iv337
  %58 = load float* %arrayidx170, align 4, !tbaa !0
  %conv171 = fpext float %58 to double
  %mul172 = fmul double %mul168, %conv171
  %arrayidx176 = getelementptr inbounds [3 x float]* %lr_vir, i64 %indvars.iv339, i64 %indvars.iv337
  %59 = load float* %arrayidx176, align 4, !tbaa !0
  %conv177 = fpext float %59 to double
  %add178 = fadd double %conv177, %mul172
  %conv179 = fptrunc double %add178 to float
  store float %conv179, float* %arrayidx176, align 4, !tbaa !0
  %indvars.iv.next338 = add i64 %indvars.iv337, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next338 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc183, label %for.body164

for.inc183:                                       ; preds = %for.body164
  %indvars.iv.next340 = add i64 %indvars.iv339, 1
  %lftr.wideiv341 = trunc i64 %indvars.iv.next340 to i32
  %exitcond342 = icmp eq i32 %lftr.wideiv341, 3
  br i1 %exitcond342, label %for.inc188, label %for.inc183.for.cond161.preheader_crit_edge

for.inc183.for.cond161.preheader_crit_edge:       ; preds = %for.inc183
  %arrayidx166.phi.trans.insert = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv.next340
  %.pre349 = load float* %arrayidx166.phi.trans.insert, align 4, !tbaa !0
  br label %for.cond161.preheader

for.inc188:                                       ; preds = %for.inc183, %for.body48, %if.then53
  %Vexcl.2 = phi float [ %Vexcl.1327, %if.then53 ], [ %Vexcl.1327, %for.body48 ], [ %conv127, %for.inc183 ]
  %indvars.iv.next344 = add i64 %indvars.iv343, 1
  %60 = trunc i64 %indvars.iv.next344 to i32
  %cmp46 = icmp slt i32 %60, %17
  br i1 %cmp46, label %for.body48, label %for.cond26.loopexit

for.end193:                                       ; preds = %for.cond26.loopexit, %if.end25
  %Vexcl.0.lcssa = phi float [ 0.000000e+00, %if.end25 ], [ %Vexcl.1.lcssa, %for.cond26.loopexit ]
  %.b = load i1* @shift_LRcorrection.bFirst, align 1
  %61 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool196.not = icmp eq %struct._IO_FILE* %61, null
  %or.cond205.not = or i1 %.b, %tobool196.not
  %tobool198 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond290 = or i1 %or.cond205.not, %tobool198
  br i1 %or.cond290, label %if.end202, label %if.then199

if.then199:                                       ; preds = %for.end193
  %conv200 = fpext float %Vexcl.0.lcssa to double
  %call201 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([33 x i8]* @.str10, i64 0, i64 0), double %conv200) #6
  br label %if.end202

if.end202:                                        ; preds = %for.end193, %if.then199
  store i1 true, i1* @shift_LRcorrection.bFirst, align 1
  %62 = load float* @shift_LRcorrection.Vself, align 4, !tbaa !0
  %add203 = fadd float %Vexcl.0.lcssa, %62
  %sub204 = fsub float -0.000000e+00, %add203
  ret float %sub204
}

; Function Attrs: nounwind optsize uwtable
define void @calc_ener(%struct._IO_FILE* %fp, i8* %title, i32 %bHeader, i32 %nmol, i32 %natoms, float* nocapture %phi, float* nocapture %charge, %struct.t_block* nocapture %excl) #0 {
entry:
  %cmp111 = icmp sgt i32 %natoms, 0
  br i1 %cmp111, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %for.body ], [ 0, %entry ]
  %qq.0113 = phi float [ %add8, %for.body ], [ 0.000000e+00, %entry ]
  %V.0112 = phi float [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds float* %charge, i64 %indvars.iv120
  %0 = load float* %arrayidx, align 4, !tbaa !0
  %arrayidx2 = getelementptr inbounds float* %phi, i64 %indvars.iv120
  %1 = load float* %arrayidx2, align 4, !tbaa !0
  %mul = fmul float %0, %1
  %add = fadd float %V.0112, %mul
  %mul7 = fmul float %0, %0
  %add8 = fadd float %qq.0113, %mul7
  %indvars.iv.next121 = add i64 %indvars.iv120, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next121 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %natoms
  br i1 %exitcond, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %phitmp = fmul float %add, 5.000000e-01
  %phitmp117 = fpext float %add8 to double
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %qq.0.lcssa = phi double [ %phitmp117, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  %V.0.lcssa = phi float [ %phitmp, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  %2 = load float* @C, align 4, !tbaa !0
  %conv11 = fpext float %2 to double
  %mul12 = fmul double %conv11, 5.000000e-01
  %mul13 = fmul double %mul12, 3.320636e+02
  %mul14 = fmul double %mul13, 4.184000e+00
  %mul15 = fmul double %mul14, 1.000000e-01
  %mul17 = fmul double %qq.0.lcssa, %mul15
  %conv18 = fptrunc double %mul17 to float
  %nr = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 1
  %3 = load i32* %nr, align 4, !tbaa !4
  %cmp20107 = icmp sgt i32 %3, 0
  br i1 %cmp20107, label %for.body22.lr.ph, label %for.end48

for.body22.lr.ph:                                 ; preds = %for.end
  %index = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 2
  %4 = load i32** %index, align 8, !tbaa !3
  %a = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 4
  %.pre = load i32* %4, align 4, !tbaa !4
  br label %for.body22

for.cond19.loopexit:                              ; preds = %for.inc43, %for.body22
  %qq.2.lcssa = phi float [ %qq.1108, %for.body22 ], [ %qq.3, %for.inc43 ]
  %5 = trunc i64 %indvars.iv.next119 to i32
  %cmp20 = icmp slt i32 %5, %3
  br i1 %cmp20, label %for.body22, label %for.end48

for.body22:                                       ; preds = %for.body22.lr.ph, %for.cond19.loopexit
  %6 = phi i32 [ %.pre, %for.body22.lr.ph ], [ %7, %for.cond19.loopexit ]
  %indvars.iv118 = phi i64 [ 0, %for.body22.lr.ph ], [ %indvars.iv.next119, %for.cond19.loopexit ]
  %qq.1108 = phi float [ 0.000000e+00, %for.body22.lr.ph ], [ %qq.2.lcssa, %for.cond19.loopexit ]
  %indvars.iv.next119 = add i64 %indvars.iv118, 1
  %arrayidx28 = getelementptr inbounds i32* %4, i64 %indvars.iv.next119
  %7 = load i32* %arrayidx28, align 4, !tbaa !4
  %arrayidx30 = getelementptr inbounds float* %charge, i64 %indvars.iv118
  %8 = load float* %arrayidx30, align 4, !tbaa !0
  %cmp32104 = icmp slt i32 %6, %7
  br i1 %cmp32104, label %for.body34.lr.ph, label %for.cond19.loopexit

for.body34.lr.ph:                                 ; preds = %for.body22
  %9 = load i32** %a, align 8, !tbaa !3
  %10 = sext i32 %6 to i64
  br label %for.body34

for.body34:                                       ; preds = %for.body34.lr.ph, %for.inc43
  %indvars.iv = phi i64 [ %10, %for.body34.lr.ph ], [ %indvars.iv.next, %for.inc43 ]
  %qq.2105 = phi float [ %qq.1108, %for.body34.lr.ph ], [ %qq.3, %for.inc43 ]
  %arrayidx36 = getelementptr inbounds i32* %9, i64 %indvars.iv
  %11 = load i32* %arrayidx36, align 4, !tbaa !4
  %12 = trunc i64 %indvars.iv118 to i32
  %cmp37 = icmp eq i32 %11, %12
  br i1 %cmp37, label %for.inc43, label %if.then

if.then:                                          ; preds = %for.body34
  %idxprom39 = sext i32 %11 to i64
  %arrayidx40 = getelementptr inbounds float* %charge, i64 %idxprom39
  %13 = load float* %arrayidx40, align 4, !tbaa !0
  %mul41 = fmul float %8, %13
  %add42 = fadd float %qq.2105, %mul41
  br label %for.inc43

for.inc43:                                        ; preds = %for.body34, %if.then
  %qq.3 = phi float [ %add42, %if.then ], [ %qq.2105, %for.body34 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %14 = trunc i64 %indvars.iv.next to i32
  %cmp32 = icmp slt i32 %14, %7
  br i1 %cmp32, label %for.body34, label %for.cond19.loopexit

for.end48:                                        ; preds = %for.cond19.loopexit, %for.end
  %qq.1.lcssa = phi float [ 0.000000e+00, %for.end ], [ %qq.2.lcssa, %for.cond19.loopexit ]
  %conv49 = fpext float %qq.1.lcssa to double
  %mul50 = fmul double %conv49, 5.000000e-01
  %mul52 = fmul double %mul50, %conv11
  %mul53 = fmul double %mul52, 3.320636e+02
  %mul54 = fmul double %mul53, 4.184000e+00
  %mul55 = fmul double %mul54, 1.000000e-01
  %conv56 = fptrunc double %mul55 to float
  %sub = fsub float %V.0.lcssa, %conv18
  %sub57 = fsub float %sub, %conv56
  %tobool = icmp eq i32 %bHeader, 0
  %tobool58 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %tobool, %tobool58
  br i1 %or.cond, label %if.end60, label %if.then59

if.then59:                                        ; preds = %for.end48
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([36 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0)) #6
  br label %if.end60

if.end60:                                         ; preds = %for.end48, %if.then59
  br i1 %tobool58, label %if.end70, label %if.then62

if.then62:                                        ; preds = %if.end60
  %conv63 = fpext float %V.0.lcssa to double
  %conv64 = fpext float %conv18 to double
  %conv65 = fpext float %conv56 to double
  %conv66 = fpext float %sub57 to double
  %conv67 = sitofp i32 %nmol to float
  %div = fdiv float %sub57, %conv67
  %conv68 = fpext float %div to double
  %call69 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([46 x i8]* @.str18, i64 0, i64 0), i8* %title, double %conv63, double %conv64, double %conv65, double %conv66, double %conv68) #6
  br label %if.end70

if.end70:                                         ; preds = %if.end60, %if.then62
  ret void
}

; Function Attrs: nounwind optsize readonly uwtable
define float @phi_aver(i32 %natoms, float* nocapture %phi) #3 {
entry:
  %cmp4 = icmp sgt i32 %natoms, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %phitot.05 = phi float [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds float* %phi, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !0
  %add = fadd float %phitot.05, %0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %natoms
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %phitot.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %conv = sitofp i32 %natoms to float
  %div = fdiv float %phitot.0.lcssa, %conv
  ret float %div
}

; Function Attrs: nounwind optsize uwtable
define float @symmetrize_phi(%struct._IO_FILE* %log, i32 %natoms, float* nocapture %phi, i32 %bVerbose) #0 {
entry:
  %cmp4.i = icmp sgt i32 %natoms, 0
  br i1 %cmp4.i, label %for.body.i, label %phi_aver.exit

for.body.i:                                       ; preds = %entry, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %entry ]
  %phitot.05.i = phi float [ %add.i, %for.body.i ], [ 0.000000e+00, %entry ]
  %arrayidx.i = getelementptr inbounds float* %phi, i64 %indvars.iv.i
  %0 = load float* %arrayidx.i, align 4, !tbaa !0
  %add.i = fadd float %phitot.05.i, %0
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv12 = trunc i64 %indvars.iv.next.i to i32
  %exitcond13 = icmp eq i32 %lftr.wideiv12, %natoms
  br i1 %exitcond13, label %phi_aver.exit, label %for.body.i

phi_aver.exit:                                    ; preds = %for.body.i, %entry
  %phitot.0.lcssa.i = phi float [ 0.000000e+00, %entry ], [ %add.i, %for.body.i ]
  %conv.i = sitofp i32 %natoms to float
  %div.i = fdiv float %phitot.0.lcssa.i, %conv.i
  %tobool = icmp eq i32 %bVerbose, 0
  %tobool1 = icmp eq %struct._IO_FILE* %log, null
  %or.cond = or i1 %tobool, %tobool1
  br i1 %or.cond, label %for.cond.preheader, label %if.then

if.then:                                          ; preds = %phi_aver.exit
  %conv = fpext float %div.i to double
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([19 x i8]* @.str19, i64 0, i64 0), double %conv) #6
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %phi_aver.exit, %if.then
  br i1 %cmp4.i, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds float* %phi, i64 %indvars.iv
  %1 = load float* %arrayidx, align 4, !tbaa !0
  %sub = fsub float %1, %div.i
  store float %sub, float* %arrayidx, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %natoms
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret float %div.i
}

; Function Attrs: nounwind optsize uwtable
define void @plot_phi(i8* %fn, float* nocapture %box, i32 %natoms, [3 x float]* nocapture %x, float* nocapture %phi) #0 {
entry:
  %0 = load float* %phi, align 4, !tbaa !0
  %cmp138 = icmp sgt i32 %natoms, 0
  br i1 %cmp138, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body.for.body_crit_edge
  %1 = phi float [ %.pre, %for.body.for.body_crit_edge ], [ %0, %entry ]
  %indvars.iv141 = phi i64 [ %phitmp145, %for.body.for.body_crit_edge ], [ 1, %entry ]
  %phi_max.0139 = phi float [ %phi_max.0.fabsf112, %for.body.for.body_crit_edge ], [ %0, %entry ]
  %fabsf112 = tail call float @fabsf(float %1) #8
  %cmp3 = fcmp ogt float %phi_max.0139, %fabsf112
  %phi_max.0.fabsf112 = select i1 %cmp3, float %phi_max.0139, float %fabsf112
  %lftr.wideiv143 = trunc i64 %indvars.iv141 to i32
  %exitcond144 = icmp eq i32 %lftr.wideiv143, %natoms
  br i1 %exitcond144, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  %arrayidx1.phi.trans.insert = getelementptr inbounds float* %phi, i64 %indvars.iv141
  %.pre = load float* %arrayidx1.phi.trans.insert, align 4, !tbaa !0
  %phitmp145 = add i64 %indvars.iv141, 1
  br label %for.body

for.end:                                          ; preds = %for.body, %entry
  %phi_max.0.lcssa = phi float [ %0, %entry ], [ %phi_max.0.fabsf112, %for.body ]
  %fabsf = tail call float @fabsf(float %phi_max.0.lcssa) #8
  %2 = fpext float %fabsf to double
  %cmp13 = fcmp olt double %2, 1.200000e-38
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str20, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %3)
  br label %return

if.end:                                           ; preds = %for.end
  %5 = load float* %box, align 4, !tbaa !0
  %mul = fmul float %5, 1.500000e+01
  %add = fadd float %mul, 4.000000e+01
  %arrayidx18 = getelementptr inbounds float* %box, i64 1
  %6 = load float* %arrayidx18, align 4, !tbaa !0
  %mul19 = fmul float %6, 1.500000e+01
  %add21 = fadd float %mul19, 4.000000e+01
  %call22 = tail call %struct._IO_FILE* @ps_open(i8* %fn, float 0.000000e+00, float 0.000000e+00, float %add, float %add21) #6
  tail call void @ps_translate(%struct._IO_FILE* %call22, float 2.000000e+01, float 2.000000e+01) #6
  tail call void @ps_color(%struct._IO_FILE* %call22, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00) #6
  %7 = load float* %box, align 4, !tbaa !0
  %mul24 = fmul float %7, 1.500000e+01
  %sub = fadd float %mul24, -1.000000e+00
  %8 = load float* %arrayidx18, align 4, !tbaa !0
  %mul26 = fmul float %8, 1.500000e+01
  %sub27 = fadd float %mul26, -1.000000e+00
  tail call void @ps_box(%struct._IO_FILE* %call22, float 1.000000e+00, float 1.000000e+00, float %sub, float %sub27) #6
  br i1 %cmp138, label %for.body34, label %for.end69

for.body34:                                       ; preds = %if.end, %if.end51
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end51 ], [ 0, %if.end ]
  %arrayidx36 = getelementptr inbounds float* %phi, i64 %indvars.iv
  %9 = load float* %arrayidx36, align 4, !tbaa !0
  %cmp37 = fcmp olt float %9, 0.000000e+00
  %div = fdiv float %9, %phi_max.0.lcssa
  br i1 %cmp37, label %if.then39, label %if.else

if.then39:                                        ; preds = %for.body34
  %conv44 = fadd float %div, 1.000000e+00
  %phitmp130 = fpext float %conv44 to double
  %phitmp131 = fmul double %phitmp130, 3.200000e+01
  %phitmp132 = fptosi double %phitmp131 to i32
  %phitmp133 = sitofp i32 %phitmp132 to double
  %phitmp134 = fmul double %phitmp133, 3.125000e-02
  %phitmp135 = fptrunc double %phitmp134 to float
  br label %if.end51

if.else:                                          ; preds = %for.body34
  %conv50 = fsub float 1.000000e+00, %div
  %phitmp = fpext float %conv50 to double
  %phitmp125 = fmul double %phitmp, 3.200000e+01
  %phitmp126 = fptosi double %phitmp125 to i32
  %phitmp127 = sitofp i32 %phitmp126 to double
  %phitmp128 = fmul double %phitmp127, 3.125000e-02
  %phitmp129 = fptrunc double %phitmp128 to float
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then39
  %bb.0 = phi float [ %phitmp135, %if.then39 ], [ 1.000000e+00, %if.else ]
  %gg.0 = phi float [ %conv44, %if.then39 ], [ %conv50, %if.else ]
  %rr.0 = phi float [ 1.000000e+00, %if.then39 ], [ %phitmp129, %if.else ]
  %conv.i119 = fpext float %gg.0 to double
  %mul.i120 = fmul double %conv.i119, 3.200000e+01
  %conv1.i121 = fptosi double %mul.i120 to i32
  %conv2.i122 = sitofp i32 %conv1.i121 to double
  %div.i123 = fmul double %conv2.i122, 3.125000e-02
  %conv3.i124 = fptrunc double %div.i123 to float
  tail call void @ps_color(%struct._IO_FILE* %call22, float %rr.0, float %conv3.i124, float %bb.0) #6
  %arrayidx57 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %10 = load float* %arrayidx57, align 4, !tbaa !0
  %mul58 = fmul float %10, 1.500000e+01
  %arrayidx61 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  %11 = load float* %arrayidx61, align 4, !tbaa !0
  %mul62 = fmul float %11, 1.500000e+01
  %sub63 = fadd float %mul58, -2.250000e+00
  %sub64 = fadd float %mul62, -2.250000e+00
  %add65 = fadd float %mul58, 2.250000e+00
  %add66 = fadd float %mul62, 2.250000e+00
  tail call void @ps_fillbox(%struct._IO_FILE* %call22, float %sub63, float %sub64, float %add65, float %add66) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %natoms
  br i1 %exitcond, label %for.end69, label %for.body34

for.end69:                                        ; preds = %if.end51, %if.end
  tail call void @ps_close(%struct._IO_FILE* %call22) #6
  br label %return

return:                                           ; preds = %for.end69, %if.then
  ret void
}

; Function Attrs: optsize
declare %struct._IO_FILE* @ps_open(i8*, float, float, float, float) #1

; Function Attrs: optsize
declare void @ps_translate(%struct._IO_FILE*, float, float) #1

; Function Attrs: optsize
declare void @ps_color(%struct._IO_FILE*, float, float, float) #1

; Function Attrs: optsize
declare void @ps_box(%struct._IO_FILE*, float, float, float, float) #1

; Function Attrs: optsize
declare void @ps_fillbox(%struct._IO_FILE*, float, float, float, float) #1

; Function Attrs: optsize
declare void @ps_close(%struct._IO_FILE*) #1

; Function Attrs: nounwind optsize uwtable
define void @plot_qtab(i8* %fn, i32 %nx, i32 %ny, i32 %nz, float*** nocapture %qtab) #0 {
entry:
  %box = alloca [3 x float], align 4
  %conv = sitofp i32 %nx to float
  %arrayidx = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  store float %conv, float* %arrayidx, align 4, !tbaa !0
  %conv1 = sitofp i32 %ny to float
  %arrayidx2 = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  store float %conv1, float* %arrayidx2, align 4, !tbaa !0
  %conv3 = sitofp i32 %nz to float
  %arrayidx4 = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  store float %conv3, float* %arrayidx4, align 4, !tbaa !0
  %mul = fmul float %conv, %conv1
  %mul8 = fmul float %conv3, %mul
  %conv9 = fptosi float %mul8 to i32
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str1, i64 0, i64 0), i32 523, i32 %conv9, i32 12) #6
  %0 = bitcast i8* %call to [3 x float]*
  %call10 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str1, i64 0, i64 0), i32 524, i32 %conv9, i32 4) #6
  %1 = bitcast i8* %call10 to float*
  %div = sdiv i32 %nx, 2
  %div11 = sdiv i32 %ny, 2
  %div12 = sdiv i32 %nz, 2
  %sub = sub i32 0, %div
  %cmp104 = icmp sgt i32 %div, %sub
  br i1 %cmp104, label %for.body.lr.ph, label %for.end60

for.body.lr.ph:                                   ; preds = %entry
  %sub14 = sub i32 0, %div11
  %cmp16100 = icmp sgt i32 %div11, %sub14
  %sub19 = sub nsw i32 0, %div12
  %cmp2197 = icmp sgt i32 %div12, %sub19
  %2 = sext i32 %sub19 to i64
  %3 = sext i32 %div12 to i64
  %4 = shl i32 %div12, 1
  %5 = sext i32 %sub14 to i64
  %6 = sext i32 %div11 to i64
  %7 = sext i32 %sub to i64
  %8 = sext i32 %div to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc58
  %indvars.iv113 = phi i64 [ %7, %for.body.lr.ph ], [ %indvars.iv.next114, %for.inc58 ]
  %i.0105 = phi i32 [ 0, %for.body.lr.ph ], [ %i.1.lcssa, %for.inc58 ]
  br i1 %cmp16100, label %for.body18.lr.ph, label %for.inc58

for.body18.lr.ph:                                 ; preds = %for.body
  %9 = add nsw i64 %indvars.iv113, %8
  %10 = trunc i64 %9 to i32
  %conv24 = sitofp i32 %10 to double
  %add25 = fadd double %conv24, 5.000000e-01
  %conv26 = fptrunc double %add25 to float
  %arrayidx49 = getelementptr inbounds float*** %qtab, i64 %9
  br label %for.body18

for.body18:                                       ; preds = %for.body18.lr.ph, %for.inc55
  %indvars.iv110 = phi i64 [ %5, %for.body18.lr.ph ], [ %indvars.iv.next111, %for.inc55 ]
  %i.1101 = phi i32 [ %i.0105, %for.body18.lr.ph ], [ %i.2.lcssa, %for.inc55 ]
  br i1 %cmp2197, label %for.body23.lr.ph, label %for.inc55

for.body23.lr.ph:                                 ; preds = %for.body18
  %11 = add nsw i64 %indvars.iv110, %6
  %12 = trunc i64 %11 to i32
  %conv30 = sitofp i32 %12 to double
  %add31 = fadd double %conv30, 5.000000e-01
  %conv32 = fptrunc double %add31 to float
  %13 = load float*** %arrayidx49, align 8, !tbaa !3
  %arrayidx50 = getelementptr inbounds float** %13, i64 %11
  %14 = load float** %arrayidx50, align 8, !tbaa !3
  %15 = sext i32 %i.1101 to i64
  br label %for.body23

for.body23:                                       ; preds = %for.body23.lr.ph, %for.body23
  %indvars.iv108 = phi i64 [ %15, %for.body23.lr.ph ], [ %indvars.iv.next109, %for.body23 ]
  %indvars.iv = phi i64 [ %2, %for.body23.lr.ph ], [ %indvars.iv.next, %for.body23 ]
  %arrayidx28 = getelementptr inbounds [3 x float]* %0, i64 %indvars.iv108, i64 0
  store float %conv26, float* %arrayidx28, align 4, !tbaa !0
  %arrayidx35 = getelementptr inbounds [3 x float]* %0, i64 %indvars.iv108, i64 1
  store float %conv32, float* %arrayidx35, align 4, !tbaa !0
  %16 = add nsw i64 %indvars.iv, %3
  %17 = trunc i64 %16 to i32
  %conv37 = sitofp i32 %17 to double
  %add38 = fadd double %conv37, 5.000000e-01
  %conv39 = fptrunc double %add38 to float
  %arrayidx42 = getelementptr inbounds [3 x float]* %0, i64 %indvars.iv108, i64 2
  store float %conv39, float* %arrayidx42, align 4, !tbaa !0
  %arrayidx51 = getelementptr inbounds float* %14, i64 %16
  %18 = load float* %arrayidx51, align 4, !tbaa !0
  %arrayidx53 = getelementptr inbounds float* %1, i64 %indvars.iv108
  store float %18, float* %arrayidx53, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next109 = add i64 %indvars.iv108, 1
  %19 = trunc i64 %indvars.iv.next to i32
  %cmp21 = icmp slt i32 %19, %div12
  br i1 %cmp21, label %for.body23, label %for.cond20.for.inc55_crit_edge

for.cond20.for.inc55_crit_edge:                   ; preds = %for.body23
  %20 = add i32 %4, %i.1101
  br label %for.inc55

for.inc55:                                        ; preds = %for.cond20.for.inc55_crit_edge, %for.body18
  %i.2.lcssa = phi i32 [ %20, %for.cond20.for.inc55_crit_edge ], [ %i.1101, %for.body18 ]
  %indvars.iv.next111 = add i64 %indvars.iv110, 1
  %21 = trunc i64 %indvars.iv.next111 to i32
  %cmp16 = icmp slt i32 %21, %div11
  br i1 %cmp16, label %for.body18, label %for.inc58

for.inc58:                                        ; preds = %for.inc55, %for.body
  %i.1.lcssa = phi i32 [ %i.0105, %for.body ], [ %i.2.lcssa, %for.inc55 ]
  %indvars.iv.next114 = add i64 %indvars.iv113, 1
  %22 = trunc i64 %indvars.iv.next114 to i32
  %cmp = icmp slt i32 %22, %div
  br i1 %cmp, label %for.body, label %for.end60

for.end60:                                        ; preds = %for.inc58, %entry
  call void @plot_phi(i8* %fn, float* %arrayidx, i32 %conv9, [3 x float]* %0, float* %1) #7
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str1, i64 0, i64 0), i32 540, i8* %call) #6
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str1, i64 0, i64 0), i32 541, i8* %call10) #6
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @print_phi(i8* %fn, i32 %natoms, [3 x float]* nocapture %x, float* nocapture %phi) #0 {
entry:
  %call = tail call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str23, i64 0, i64 0)) #6
  %cmp5 = icmp sgt i32 %natoms, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %phi, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !0
  %conv = fpext float %0 to double
  %1 = trunc i64 %indvars.iv to i32
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([14 x i8]* @.str24, i64 0, i64 0), i32 %1, double %conv) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %natoms
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  tail call void @ffclose(%struct._IO_FILE* %call) #6
  ret void
}

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #1

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind optsize uwtable
define void @write_pqr(i8* %fn, %struct.t_atoms* nocapture %atoms, [3 x float]* nocapture %x, float* nocapture %phi, float %dx) #0 {
entry:
  %call = tail call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str23, i64 0, i64 0)) #6
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %0 = load i32* %nr, align 4, !tbaa !4
  %cmp39 = icmp sgt i32 %0, 0
  br i1 %cmp39, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %atom = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %atomname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2
  %resname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %1 = load %struct.t_atom** %atom, align 8, !tbaa !3
  %resnr = getelementptr inbounds %struct.t_atom* %1, i64 %indvars.iv, i32 7
  %2 = load i32* %resnr, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %3 = load i8**** %atomname, align 8, !tbaa !3
  %arrayidx2 = getelementptr inbounds i8*** %3, i64 %indvars.iv
  %4 = load i8*** %arrayidx2, align 8, !tbaa !3
  %5 = load i8** %4, align 8, !tbaa !3
  %idxprom3 = sext i32 %2 to i64
  %6 = load i8**** %resname, align 8, !tbaa !3
  %arrayidx4 = getelementptr inbounds i8*** %6, i64 %idxprom3
  %7 = load i8*** %arrayidx4, align 8, !tbaa !3
  %8 = load i8** %7, align 8, !tbaa !3
  %add5 = add nsw i32 %2, 1
  %rem = srem i32 %add5, 10000
  %arrayidx8 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %9 = load float* %arrayidx8, align 4, !tbaa !0
  %add9 = fadd float %9, %dx
  %mul = fmul float %add9, 1.000000e+01
  %conv = fpext float %mul to double
  %arrayidx12 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  %10 = load float* %arrayidx12, align 4, !tbaa !0
  %mul13 = fmul float %10, 1.000000e+01
  %conv14 = fpext float %mul13 to double
  %arrayidx17 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  %11 = load float* %arrayidx17, align 4, !tbaa !0
  %mul18 = fmul float %11, 1.000000e+01
  %conv19 = fpext float %mul18 to double
  %arrayidx21 = getelementptr inbounds float* %phi, i64 %indvars.iv
  %12 = load float* %arrayidx21, align 4, !tbaa !0
  %conv22 = fpext float %12 to double
  %13 = trunc i64 %indvars.iv.next to i32
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([57 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str26, i64 0, i64 0), i32 %13, i8* %5, i8* %8, i32 32, i32 %rem, double %conv, double %conv14, double %conv19, double 0.000000e+00, double %conv22) #6
  %14 = load i32* %nr, align 4, !tbaa !4
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  tail call void @ffclose(%struct._IO_FILE* %call) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @write_grid_pqr(i8* %fn, i32 %nx, i32 %ny, i32 %nz, float*** nocapture %phi) #0 {
entry:
  %call = tail call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str23, i64 0, i64 0)) #6
  %cmp50 = icmp sgt i32 %nx, 0
  br i1 %cmp50, label %for.cond1.preheader.lr.ph, label %for.end28

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp246 = icmp sgt i32 %ny, 0
  %cmp543 = icmp sgt i32 %nz, 0
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc26, %for.cond1.preheader.lr.ph
  %indvars.iv57 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %0, %for.inc26 ]
  %rnr.051 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %rnr.1.lcssa, %for.inc26 ]
  %0 = add i64 %indvars.iv57, 1
  br i1 %cmp246, label %for.cond4.preheader.lr.ph, label %for.inc26

for.cond4.preheader.lr.ph:                        ; preds = %for.cond1.preheader
  %1 = trunc i64 %indvars.iv57 to i32
  %conv = sitofp i32 %1 to float
  %mul = fmul float %conv, 4.000000e+00
  %conv9 = fpext float %mul to double
  %arrayidx = getelementptr inbounds float*** %phi, i64 %indvars.iv57
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc23, %for.cond4.preheader.lr.ph
  %indvars.iv53 = phi i64 [ 0, %for.cond4.preheader.lr.ph ], [ %indvars.iv.next54, %for.inc23 ]
  %rnr.148 = phi i32 [ %rnr.051, %for.cond4.preheader.lr.ph ], [ %rnr.2.lcssa, %for.inc23 ]
  br i1 %cmp543, label %for.body6.lr.ph, label %for.inc23

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %2 = trunc i64 %indvars.iv53 to i32
  %conv10 = sitofp i32 %2 to float
  %mul11 = fmul float %conv10, 4.000000e+00
  %conv12 = fpext float %mul11 to double
  br label %for.body6

for.body6:                                        ; preds = %for.body6, %for.body6.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next, %for.body6 ]
  %rnr.245 = phi i32 [ %rnr.148, %for.body6.lr.ph ], [ %add7, %for.body6 ]
  %add7 = add nsw i32 %rnr.245, 1
  %rem = srem i32 %add7, 10000
  %add8 = add nsw i32 %rem, 1
  %3 = trunc i64 %indvars.iv to i32
  %conv13 = sitofp i32 %3 to float
  %mul14 = fmul float %conv13, 4.000000e+00
  %conv15 = fpext float %mul14 to double
  %4 = load float*** %arrayidx, align 8, !tbaa !3
  %arrayidx18 = getelementptr inbounds float** %4, i64 %indvars.iv53
  %5 = load float** %arrayidx18, align 8, !tbaa !3
  %arrayidx19 = getelementptr inbounds float* %5, i64 %indvars.iv
  %6 = load float* %arrayidx19, align 4, !tbaa !0
  %conv20 = fpext float %6 to double
  %7 = trunc i64 %0 to i32
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([57 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str26, i64 0, i64 0), i32 %7, i8* getelementptr inbounds ([2 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str27, i64 0, i64 0), i32 32, i32 %add8, double %conv9, double %conv12, double %conv15, double 0.000000e+00, double %conv20) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nz
  br i1 %exitcond, label %for.cond4.for.inc23_crit_edge, label %for.body6

for.cond4.for.inc23_crit_edge:                    ; preds = %for.body6
  %8 = add i32 %rnr.148, %nz
  br label %for.inc23

for.inc23:                                        ; preds = %for.cond4.for.inc23_crit_edge, %for.cond4.preheader
  %rnr.2.lcssa = phi i32 [ %8, %for.cond4.for.inc23_crit_edge ], [ %rnr.148, %for.cond4.preheader ]
  %indvars.iv.next54 = add i64 %indvars.iv53, 1
  %lftr.wideiv55 = trunc i64 %indvars.iv.next54 to i32
  %exitcond56 = icmp eq i32 %lftr.wideiv55, %ny
  br i1 %exitcond56, label %for.inc26, label %for.cond4.preheader

for.inc26:                                        ; preds = %for.cond1.preheader, %for.inc23
  %rnr.1.lcssa = phi i32 [ %rnr.2.lcssa, %for.inc23 ], [ %rnr.051, %for.cond1.preheader ]
  %lftr.wideiv60 = trunc i64 %0 to i32
  %exitcond61 = icmp eq i32 %lftr.wideiv60, %nx
  br i1 %exitcond61, label %for.end28, label %for.cond1.preheader

for.end28:                                        ; preds = %for.inc26, %entry
  tail call void @ffclose(%struct._IO_FILE* %call) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define float @analyse_diff(%struct._IO_FILE* %log, i8* %label, i32 %natom, [3 x float]* nocapture %ffour, [3 x float]* nocapture %fpppm, float* nocapture %phi_f, float* nocapture %phi_p, float* nocapture %phi_sr, i8* %fcorr, i8* %pcorr, i8* nocapture %ftotcorr, i8* %ptotcorr) #0 {
entry:
  %arrayidx1 = getelementptr inbounds [3 x float]* %ffour, i64 0, i64 0
  %0 = load float* %arrayidx1, align 4, !tbaa !0
  %arrayidx3 = getelementptr inbounds [3 x float]* %fpppm, i64 0, i64 0
  %1 = load float* %arrayidx3, align 4, !tbaa !0
  %sub = fsub float %0, %1
  %fabsf = tail call float @fabsf(float %sub) #8
  %2 = load float* %phi_f, align 4, !tbaa !0
  %3 = load float* %phi_p, align 4, !tbaa !0
  %sub7 = fsub float %2, %3
  %fabsf209 = tail call float @fabsf(float %sub7) #8
  %cmp220 = icmp sgt i32 %natom, 0
  br i1 %cmp220, label %for.body, label %for.end47

for.body:                                         ; preds = %entry, %for.inc45.for.body_crit_edge
  %4 = phi float [ %.pre245, %for.inc45.for.body_crit_edge ], [ %3, %entry ]
  %5 = phi float [ %.pre, %for.inc45.for.body_crit_edge ], [ %2, %entry ]
  %indvars.iv241 = phi i64 [ %indvars.iv.next242, %for.inc45.for.body_crit_edge ], [ 0, %entry ]
  %pmax.0224 = phi float [ %cond, %for.inc45.for.body_crit_edge ], [ %fabsf209, %entry ]
  %fmax.0223 = phi float [ %cond42, %for.inc45.for.body_crit_edge ], [ %fabsf, %entry ]
  %p2sum.0222 = phi float [ %add, %for.inc45.for.body_crit_edge ], [ 0.000000e+00, %entry ]
  %f2sum.0221 = phi float [ %add44, %for.inc45.for.body_crit_edge ], [ 0.000000e+00, %entry ]
  %sub15 = fsub float %5, %4
  %fabsf210 = tail call float @fabsf(float %sub15) #8
  %cmp19 = fcmp ogt float %fabsf210, %pmax.0224
  %mul = fmul float %fabsf210, %fabsf210
  br label %for.body24

for.body24:                                       ; preds = %for.body24, %for.body
  %indvars.iv237 = phi i64 [ 0, %for.body ], [ %indvars.iv.next238, %for.body24 ]
  %fmax.1218 = phi float [ %fmax.0223, %for.body ], [ %cond42, %for.body24 ]
  %f2sum.1217 = phi float [ %f2sum.0221, %for.body ], [ %add44, %for.body24 ]
  %arrayidx28 = getelementptr inbounds [3 x float]* %ffour, i64 %indvars.iv241, i64 %indvars.iv237
  %6 = load float* %arrayidx28, align 4, !tbaa !0
  %arrayidx32 = getelementptr inbounds [3 x float]* %fpppm, i64 %indvars.iv241, i64 %indvars.iv237
  %7 = load float* %arrayidx32, align 4, !tbaa !0
  %sub33 = fsub float %6, %7
  %fabsf211 = tail call float @fabsf(float %sub33) #8
  %cmp37 = fcmp ogt float %fabsf211, %fmax.1218
  %cond42 = select i1 %cmp37, float %fabsf211, float %fmax.1218
  %mul43 = fmul float %fabsf211, %fabsf211
  %add44 = fadd float %f2sum.1217, %mul43
  %indvars.iv.next238 = add i64 %indvars.iv237, 1
  %lftr.wideiv239 = trunc i64 %indvars.iv.next238 to i32
  %exitcond240 = icmp eq i32 %lftr.wideiv239, 3
  br i1 %exitcond240, label %for.inc45, label %for.body24

for.inc45:                                        ; preds = %for.body24
  %cond = select i1 %cmp19, float %fabsf210, float %pmax.0224
  %add = fadd float %p2sum.0222, %mul
  %indvars.iv.next242 = add i64 %indvars.iv241, 1
  %lftr.wideiv243 = trunc i64 %indvars.iv.next242 to i32
  %exitcond244 = icmp eq i32 %lftr.wideiv243, %natom
  br i1 %exitcond244, label %for.cond.for.end47_crit_edge, label %for.inc45.for.body_crit_edge

for.inc45.for.body_crit_edge:                     ; preds = %for.inc45
  %arrayidx12.phi.trans.insert = getelementptr inbounds float* %phi_f, i64 %indvars.iv.next242
  %.pre = load float* %arrayidx12.phi.trans.insert, align 4, !tbaa !0
  %arrayidx14.phi.trans.insert = getelementptr inbounds float* %phi_p, i64 %indvars.iv.next242
  %.pre245 = load float* %arrayidx14.phi.trans.insert, align 4, !tbaa !0
  br label %for.body

for.cond.for.end47_crit_edge:                     ; preds = %for.inc45
  %phitmp = fpext float %add44 to double
  br label %for.end47

for.end47:                                        ; preds = %for.cond.for.end47_crit_edge, %entry
  %pmax.0.lcssa = phi float [ %cond, %for.cond.for.end47_crit_edge ], [ %fabsf209, %entry ]
  %fmax.0.lcssa = phi float [ %cond42, %for.cond.for.end47_crit_edge ], [ %fabsf, %entry ]
  %p2sum.0.lcssa = phi float [ %add, %for.cond.for.end47_crit_edge ], [ 0.000000e+00, %entry ]
  %f2sum.0.lcssa = phi double [ %phitmp, %for.cond.for.end47_crit_edge ], [ 0.000000e+00, %entry ]
  %conv49 = sitofp i32 %natom to double
  %mul50 = fmul double %conv49, 3.000000e+00
  %div = fdiv double %f2sum.0.lcssa, %mul50
  %call51 = tail call double @sqrt(double %div) #6
  %conv52 = fptrunc double %call51 to float
  %tobool = icmp eq %struct._IO_FILE* %log, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end47
  %call53 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([57 x i8]* @.str28, i64 0, i64 0), i8* %label) #6
  %call54 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([15 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str32, i64 0, i64 0)) #6
  %conv55 = fpext float %fmax.0.lcssa to double
  %conv56 = fpext float %conv52 to double
  %call57 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str34, i64 0, i64 0), double %conv55, double %conv56) #6
  %conv58 = fpext float %pmax.0.lcssa to double
  %conv59 = sitofp i32 %natom to float
  %div60 = fdiv float %p2sum.0.lcssa, %conv59
  %conv61 = fpext float %div60 to double
  %call62 = tail call double @sqrt(double %conv61) #6
  %call63 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str35, i64 0, i64 0), double %conv58, double %call62) #6
  br label %if.end

if.end:                                           ; preds = %for.end47, %if.then
  %tobool64 = icmp eq i8* %fcorr, null
  br i1 %tobool64, label %if.end92, label %if.then65

if.then65:                                        ; preds = %if.end
  %call66 = tail call %struct._IO_FILE* @xvgropen(i8* %fcorr, i8* getelementptr inbounds ([21 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str38, i64 0, i64 0)) #6
  br i1 %cmp220, label %for.cond71.preheader, label %for.end91

for.cond71.preheader:                             ; preds = %if.then65, %for.inc89
  %indvars.iv233 = phi i64 [ %indvars.iv.next234, %for.inc89 ], [ 0, %if.then65 ]
  br label %for.body74

for.body74:                                       ; preds = %for.body74, %for.cond71.preheader
  %indvars.iv229 = phi i64 [ 0, %for.cond71.preheader ], [ %indvars.iv.next230, %for.body74 ]
  %arrayidx78 = getelementptr inbounds [3 x float]* %ffour, i64 %indvars.iv233, i64 %indvars.iv229
  %8 = load float* %arrayidx78, align 4, !tbaa !0
  %conv79 = fpext float %8 to double
  %arrayidx83 = getelementptr inbounds [3 x float]* %fpppm, i64 %indvars.iv233, i64 %indvars.iv229
  %9 = load float* %arrayidx83, align 4, !tbaa !0
  %conv84 = fpext float %9 to double
  %call85 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call66, i8* getelementptr inbounds ([16 x i8]* @.str39, i64 0, i64 0), double %conv79, double %conv84) #6
  %indvars.iv.next230 = add i64 %indvars.iv229, 1
  %lftr.wideiv231 = trunc i64 %indvars.iv.next230 to i32
  %exitcond232 = icmp eq i32 %lftr.wideiv231, 3
  br i1 %exitcond232, label %for.inc89, label %for.body74

for.inc89:                                        ; preds = %for.body74
  %indvars.iv.next234 = add i64 %indvars.iv233, 1
  %lftr.wideiv235 = trunc i64 %indvars.iv.next234 to i32
  %exitcond236 = icmp eq i32 %lftr.wideiv235, %natom
  br i1 %exitcond236, label %for.end91, label %for.cond71.preheader

for.end91:                                        ; preds = %for.inc89, %if.then65
  tail call void @ffclose(%struct._IO_FILE* %call66) #6
  tail call void @do_view(i8* %fcorr, i8* null) #6
  br label %if.end92

if.end92:                                         ; preds = %if.end, %for.end91
  %fp.0 = phi %struct._IO_FILE* [ %call66, %for.end91 ], [ null, %if.end ]
  %tobool93 = icmp ne i8* %pcorr, null
  br i1 %tobool93, label %if.then94, label %if.end96

if.then94:                                        ; preds = %if.end92
  %call95 = tail call %struct._IO_FILE* @xvgropen(i8* %pcorr, i8* getelementptr inbounds ([25 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str42, i64 0, i64 0)) #6
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %if.end92
  %fp.1 = phi %struct._IO_FILE* [ %call95, %if.then94 ], [ %fp.0, %if.end92 ]
  %tobool97 = icmp ne i8* %ptotcorr, null
  br i1 %tobool97, label %if.then98, label %if.end100

if.then98:                                        ; preds = %if.end96
  %call99 = tail call %struct._IO_FILE* @xvgropen(i8* %ptotcorr, i8* getelementptr inbounds ([28 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str42, i64 0, i64 0)) #6
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %if.end96
  %gp.0 = phi %struct._IO_FILE* [ %call99, %if.then98 ], [ null, %if.end96 ]
  br i1 %cmp220, label %for.body104, label %for.end133

for.body104:                                      ; preds = %if.end100, %for.inc131
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc131 ], [ 0, %if.end100 ]
  br i1 %tobool93, label %if.then106, label %if.end114

if.then106:                                       ; preds = %for.body104
  %arrayidx108 = getelementptr inbounds float* %phi_f, i64 %indvars.iv
  %10 = load float* %arrayidx108, align 4, !tbaa !0
  %conv109 = fpext float %10 to double
  %arrayidx111 = getelementptr inbounds float* %phi_p, i64 %indvars.iv
  %11 = load float* %arrayidx111, align 4, !tbaa !0
  %conv112 = fpext float %11 to double
  %call113 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp.1, i8* getelementptr inbounds ([16 x i8]* @.str39, i64 0, i64 0), double %conv109, double %conv112) #6
  br label %if.end114

if.end114:                                        ; preds = %if.then106, %for.body104
  br i1 %tobool97, label %if.then116, label %for.inc131

if.then116:                                       ; preds = %if.end114
  %arrayidx118 = getelementptr inbounds float* %phi_f, i64 %indvars.iv
  %12 = load float* %arrayidx118, align 4, !tbaa !0
  %arrayidx120 = getelementptr inbounds float* %phi_sr, i64 %indvars.iv
  %13 = load float* %arrayidx120, align 4, !tbaa !0
  %add121 = fadd float %12, %13
  %conv122 = fpext float %add121 to double
  %arrayidx124 = getelementptr inbounds float* %phi_p, i64 %indvars.iv
  %14 = load float* %arrayidx124, align 4, !tbaa !0
  %add127 = fadd float %13, %14
  %conv128 = fpext float %add127 to double
  %call129 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %gp.0, i8* getelementptr inbounds ([16 x i8]* @.str39, i64 0, i64 0), double %conv122, double %conv128) #6
  br label %for.inc131

for.inc131:                                       ; preds = %if.end114, %if.then116
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %natom
  br i1 %exitcond, label %for.end133, label %for.body104

for.end133:                                       ; preds = %for.inc131, %if.end100
  br i1 %tobool93, label %if.then135, label %if.end136

if.then135:                                       ; preds = %for.end133
  tail call void @ffclose(%struct._IO_FILE* %fp.1) #6
  tail call void @do_view(i8* %pcorr, i8* null) #6
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %for.end133
  br i1 %tobool97, label %if.then138, label %if.end139

if.then138:                                       ; preds = %if.end136
  tail call void @ffclose(%struct._IO_FILE* %gp.0) #6
  tail call void @do_view(i8* %ptotcorr, i8* null) #6
  br label %if.end139

if.end139:                                        ; preds = %if.then138, %if.end136
  ret float %conv52
}

; Function Attrs: optsize
declare %struct._IO_FILE* @xvgropen(i8*, i8*, i8*, i8*) #1

; Function Attrs: optsize
declare void @do_view(i8*, i8*) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"float", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}

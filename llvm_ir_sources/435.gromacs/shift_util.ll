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
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !173), !dbg !641
  tail call void @llvm.dbg.value(metadata !{float %r1}, i64 0, metadata !174), !dbg !641
  tail call void @llvm.dbg.value(metadata !{float %rc}, i64 0, metadata !175), !dbg !641
  tail call void @llvm.dbg.value(metadata !{float* %box}, i64 0, metadata !176), !dbg !641
  tail call void @llvm.dbg.value(metadata !{%struct.t_forcerec* %fr}, i64 0, metadata !177), !dbg !641
  %cmp = fcmp olt float %r1, %rc, !dbg !642
  br i1 %cmp, label %if.then, label %if.else, !dbg !642

if.then:                                          ; preds = %entry
  %mul = fmul float %r1, 2.000000e+00, !dbg !643
  %mul1 = fmul float %rc, 5.000000e+00, !dbg !643
  %sub = fsub float %mul, %mul1, !dbg !643
  %mul2 = fmul float %rc, %rc, !dbg !643
  %mul3 = fmul float %mul2, %rc, !dbg !643
  %sub4 = fsub float %rc, %r1, !dbg !643
  %mul6 = fmul float %sub4, %sub4, !dbg !643
  %mul7 = fmul float %mul3, %mul6, !dbg !643
  %div = fdiv float %sub, %mul7, !dbg !643
  store float %div, float* @A, align 4, !dbg !643, !tbaa !645
  %mul8 = fmul float %rc, 4.000000e+00, !dbg !648
  %sub10 = fsub float %mul8, %mul, !dbg !648
  %mul17 = fmul float %sub4, %mul6, !dbg !648
  %mul18 = fmul float %mul3, %mul17, !dbg !648
  %div19 = fdiv float %sub10, %mul18, !dbg !648
  store float %div19, float* @B, align 4, !dbg !648, !tbaa !645
  br label %if.end, !dbg !649

if.else:                                          ; preds = %entry
  %conv = fpext float %r1 to double, !dbg !650
  %conv20 = fpext float %rc to double, !dbg !650
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str, i64 0, i64 0), double %conv, double %conv20, i8* getelementptr inbounds ([58 x i8]* @.str1, i64 0, i64 0), i32 64) #7, !dbg !650
  %.pre = load float* @A, align 4, !dbg !651, !tbaa !645
  %.pre218 = load float* @B, align 4, !dbg !652, !tbaa !645
  %sub28.pre = fsub float %rc, %r1, !dbg !653
  %mul30.pre = fmul float %sub28.pre, %sub28.pre, !dbg !653
  %mul32.pre = fmul float %sub28.pre, %mul30.pre, !dbg !653
  %mul44.pre = fmul float %rc, %rc, !dbg !654
  %mul45.pre = fmul float %mul44.pre, %rc, !dbg !654
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %mul45.pre-phi = phi float [ %mul45.pre, %if.else ], [ %mul3, %if.then ], !dbg !654
  %mul32.pre-phi = phi float [ %mul32.pre, %if.else ], [ %mul17, %if.then ], !dbg !653
  %sub28.pre-phi = phi float [ %sub28.pre, %if.else ], [ %sub4, %if.then ], !dbg !653
  %0 = phi float [ %.pre218, %if.else ], [ %div19, %if.then ]
  %1 = phi float [ %.pre, %if.else ], [ %div, %if.then ]
  %conv23 = fdiv float %1, 3.000000e+00, !dbg !651
  store float %conv23, float* @A_3, align 4, !dbg !651, !tbaa !645
  %conv26 = fmul float %0, 2.500000e-01, !dbg !652
  store float %conv26, float* @B_4, align 4, !dbg !652, !tbaa !645
  %div27 = fdiv float 1.000000e+00, %rc, !dbg !653
  %mul33 = fmul float %mul32.pre-phi, %conv23, !dbg !653
  %sub34 = fsub float %div27, %mul33, !dbg !653
  %mul41 = fmul float %sub28.pre-phi, %mul32.pre-phi, !dbg !653
  %mul42 = fmul float %mul41, %conv26, !dbg !653
  %sub43 = fsub float %sub34, %mul42, !dbg !653
  store float %sub43, float* @C, align 4, !dbg !653, !tbaa !645
  %conv46 = fpext float %mul45.pre-phi to double, !dbg !654
  %mul47 = fmul double %conv46, 0x401921FB54442D18, !dbg !654
  %conv53 = fpext float %mul32.pre-phi to double, !dbg !654
  %mul54 = fmul double %mul47, %conv53, !dbg !654
  %conv55 = fptrunc double %mul54 to float, !dbg !654
  store float %conv55, float* @N0, align 4, !dbg !654, !tbaa !645
  %2 = load float* %box, align 4, !dbg !655, !tbaa !645
  %arrayidx56 = getelementptr inbounds float* %box, i64 1, !dbg !655
  %3 = load float* %arrayidx56, align 4, !dbg !655, !tbaa !645
  %mul57 = fmul float %2, %3, !dbg !655
  %arrayidx58 = getelementptr inbounds float* %box, i64 2, !dbg !655
  %4 = load float* %arrayidx58, align 4, !dbg !655, !tbaa !645
  %mul59 = fmul float %mul57, %4, !dbg !655
  store float %mul59, float* @Vol, align 4, !dbg !655, !tbaa !645
  %conv60 = fpext float %mul59 to double, !dbg !656
  %div61 = fdiv double 0x402921FB54442D18, %conv60, !dbg !656
  %conv62 = fptrunc double %div61 to float, !dbg !656
  store float %conv62, float* @FourPi_V, align 4, !dbg !656, !tbaa !645
  %5 = load %struct._IO_FILE** @debug, align 8, !dbg !657, !tbaa !658
  %tobool = icmp eq %struct._IO_FILE* %5, null, !dbg !657
  %tobool63 = icmp eq %struct._IO_FILE* %log, null, !dbg !657
  %or.cond = or i1 %tobool, %tobool63, !dbg !657
  br i1 %or.cond, label %if.end71, label %if.then64, !dbg !657

if.then64:                                        ; preds = %if.end
  %conv65 = fpext float %r1 to double, !dbg !659
  %conv66 = fpext float %rc to double, !dbg !659
  %conv67 = fpext float %1 to double, !dbg !659
  %conv68 = fpext float %0 to double, !dbg !659
  %conv69 = fpext float %sub43 to double, !dbg !659
  %conv70 = fpext float %conv62 to double, !dbg !659
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([131 x i8]* @.str2, i64 0, i64 0), double %conv65, double %conv66, double %conv67, double %conv68, double %conv69, double %conv70) #7, !dbg !659
  %.pre219 = load %struct._IO_FILE** @debug, align 8, !dbg !660, !tbaa !658
  br label %if.end71, !dbg !659

if.end71:                                         ; preds = %if.end, %if.then64
  %6 = phi %struct._IO_FILE* [ %5, %if.end ], [ %.pre219, %if.then64 ]
  %mul72 = fmul float %rc, -4.000000e+01, !dbg !661
  %mul73 = fmul float %mul72, %rc, !dbg !661
  %mul74 = fmul float %rc, 5.000000e+01, !dbg !661
  %mul75 = fmul float %mul74, %r1, !dbg !661
  %add = fadd float %mul73, %mul75, !dbg !661
  %mul76 = fmul float %r1, 1.600000e+01, !dbg !661
  %mul77 = fmul float %mul76, %r1, !dbg !661
  %sub78 = fsub float %add, %mul77, !dbg !661
  store float %sub78, float* @c1, align 4, !dbg !661, !tbaa !645
  %mul79 = fmul float %rc, 6.000000e+01, !dbg !662
  %mul80 = fmul float %r1, 3.000000e+01, !dbg !662
  %sub81 = fsub float %mul79, %mul80, !dbg !662
  store float %sub81, float* @c2, align 4, !dbg !662, !tbaa !645
  %mul82 = fmul float %rc, -1.000000e+01, !dbg !663
  %mul83 = fmul float %mul82, %rc, !dbg !663
  %mul84 = fmul float %mul83, %rc, !dbg !663
  %mul85 = fmul float %rc, 2.000000e+01, !dbg !663
  %mul86 = fmul float %mul85, %rc, !dbg !663
  %mul87 = fmul float %mul86, %r1, !dbg !663
  %add88 = fadd float %mul84, %mul87, !dbg !663
  %mul89 = fmul float %rc, 1.300000e+01, !dbg !663
  %mul90 = fmul float %mul89, %r1, !dbg !663
  %mul91 = fmul float %mul90, %r1, !dbg !663
  %sub92 = fsub float %add88, %mul91, !dbg !663
  %mul93 = fmul float %r1, 3.000000e+00, !dbg !663
  %mul94 = fmul float %mul93, %r1, !dbg !663
  %mul95 = fmul float %mul94, %r1, !dbg !663
  %add96 = fadd float %mul95, %sub92, !dbg !663
  store float %add96, float* @c3, align 4, !dbg !663, !tbaa !645
  %mul97 = fmul float %rc, -2.000000e+01, !dbg !664
  %mul98 = fmul float %mul97, %rc, !dbg !664
  %mul99 = fmul float %rc, 4.000000e+01, !dbg !664
  %mul100 = fmul float %mul99, %r1, !dbg !664
  %add101 = fadd float %mul98, %mul100, !dbg !664
  %mul102 = fmul float %r1, 1.400000e+01, !dbg !664
  %mul103 = fmul float %mul102, %r1, !dbg !664
  %sub104 = fsub float %add101, %mul103, !dbg !664
  store float %sub104, float* @c4, align 4, !dbg !664, !tbaa !645
  %sub105 = fsub float -0.000000e+00, %sub81, !dbg !665
  store float %sub105, float* @c5, align 4, !dbg !665, !tbaa !645
  %mul106 = fmul float %rc, -5.000000e+00, !dbg !666
  %mul107 = fmul float %mul106, %rc, !dbg !666
  %mul108 = fmul float %mul107, %r1, !dbg !666
  %mul109 = fmul float %rc, 7.000000e+00, !dbg !666
  %mul110 = fmul float %mul109, %r1, !dbg !666
  %mul111 = fmul float %mul110, %r1, !dbg !666
  %add112 = fadd float %mul108, %mul111, !dbg !666
  %mul113 = fmul float %r1, 2.000000e+00, !dbg !666
  %mul114 = fmul float %mul113, %r1, !dbg !666
  %mul115 = fmul float %mul114, %r1, !dbg !666
  %sub116 = fsub float %add112, %mul115, !dbg !666
  store float %sub116, float* @c6, align 4, !dbg !666, !tbaa !645
  %tobool117 = icmp eq %struct._IO_FILE* %6, null, !dbg !660
  %or.cond217 = or i1 %tobool117, %tobool63, !dbg !660
  br i1 %or.cond217, label %if.end129, label %if.then120, !dbg !660

if.then120:                                       ; preds = %if.end71
  %conv121 = fpext float %sub78 to double, !dbg !667
  %conv122 = fpext float %sub81 to double, !dbg !667
  %conv123 = fpext float %add96 to double, !dbg !667
  %conv124 = fpext float %sub104 to double, !dbg !667
  %conv125 = fpext float %sub105 to double, !dbg !667
  %conv126 = fpext float %sub116 to double, !dbg !667
  %7 = load float* @N0, align 4, !dbg !667, !tbaa !645
  %conv127 = fpext float %7 to double, !dbg !667
  %call128 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([95 x i8]* @.str3, i64 0, i64 0), double %conv121, double %conv122, double %conv123, double %conv124, double %conv125, double %conv126, double %conv127) #7, !dbg !667
  br label %if.end129, !dbg !667

if.end129:                                        ; preds = %if.end71, %if.then120
  store float 0x3FB45F3060000000, float* @One_4pi, align 4, !dbg !668, !tbaa !645
  ret void, !dbg !669
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define float @gk(float %k, float %rc, float %r1) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %k}, i64 0, metadata !182), !dbg !670
  tail call void @llvm.dbg.value(metadata !{float %rc}, i64 0, metadata !183), !dbg !670
  tail call void @llvm.dbg.value(metadata !{float %r1}, i64 0, metadata !184), !dbg !670
  %0 = load float* @N0, align 4, !dbg !671, !tbaa !645
  %mul = fmul float %k, %k, !dbg !671
  %mul1 = fmul float %mul, %k, !dbg !671
  %mul2 = fmul float %mul1, %k, !dbg !671
  %mul3 = fmul float %mul2, %0, !dbg !671
  tail call void @llvm.dbg.value(metadata !{float %mul3}, i64 0, metadata !185), !dbg !671
  %1 = load float* @FourPi_V, align 4, !dbg !672, !tbaa !645
  %mul4 = fmul float %mul3, %k, !dbg !672
  %div = fdiv float %1, %mul4, !dbg !672
  %conv = fpext float %div to double, !dbg !672
  %2 = load float* @c1, align 4, !dbg !672, !tbaa !645
  %mul5 = fmul float %2, %k, !dbg !672
  %conv6 = fpext float %mul5 to double, !dbg !672
  %mul7 = fmul float %k, %rc, !dbg !673
  %conv8 = fpext float %mul7 to double, !dbg !673
  %call = tail call double @cos(double %conv8) #7, !dbg !673
  %mul9 = fmul double %call, %conv6, !dbg !673
  %3 = load float* @c2, align 4, !dbg !673, !tbaa !645
  %4 = load float* @c3, align 4, !dbg !673, !tbaa !645
  %mul10 = fmul float %4, %k, !dbg !673
  %mul11 = fmul float %mul10, %k, !dbg !673
  %add = fadd float %3, %mul11, !dbg !673
  %conv12 = fpext float %add to double, !dbg !673
  %call15 = tail call double @sin(double %conv8) #7, !dbg !673
  %mul16 = fmul double %call15, %conv12, !dbg !673
  %add17 = fadd double %mul9, %mul16, !dbg !673
  %5 = load float* @c4, align 4, !dbg !673, !tbaa !645
  %mul18 = fmul float %5, %k, !dbg !673
  %conv19 = fpext float %mul18 to double, !dbg !673
  %mul20 = fmul float %k, %r1, !dbg !674
  %conv21 = fpext float %mul20 to double, !dbg !674
  %call22 = tail call double @cos(double %conv21) #7, !dbg !674
  %mul23 = fmul double %call22, %conv19, !dbg !674
  %add24 = fadd double %mul23, %add17, !dbg !674
  %6 = load float* @c5, align 4, !dbg !674, !tbaa !645
  %7 = load float* @c6, align 4, !dbg !674, !tbaa !645
  %mul25 = fmul float %7, %k, !dbg !674
  %mul26 = fmul float %mul25, %k, !dbg !674
  %add27 = fadd float %6, %mul26, !dbg !674
  %conv28 = fpext float %add27 to double, !dbg !674
  %call31 = tail call double @sin(double %conv21) #7, !dbg !674
  %mul32 = fmul double %call31, %conv28, !dbg !674
  %add33 = fadd double %add24, %mul32, !dbg !674
  %mul34 = fmul double %conv, %add33, !dbg !674
  %conv35 = fptrunc double %mul34 to float, !dbg !674
  tail call void @llvm.dbg.value(metadata !{float %conv35}, i64 0, metadata !186), !dbg !674
  ret float %conv35, !dbg !675
}

; Function Attrs: nounwind optsize
declare double @cos(double) #3

; Function Attrs: nounwind optsize
declare double @sin(double) #3

; Function Attrs: nounwind optsize uwtable
define float @gknew(float %k, float %rc, float %r1) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %k}, i64 0, metadata !189), !dbg !676
  tail call void @llvm.dbg.value(metadata !{float %rc}, i64 0, metadata !190), !dbg !676
  tail call void @llvm.dbg.value(metadata !{float %r1}, i64 0, metadata !191), !dbg !676
  %mul = fmul float %k, %rc, !dbg !677
  tail call void @llvm.dbg.value(metadata !{float %mul}, i64 0, metadata !192), !dbg !677
  %mul1 = fmul float %mul, %mul, !dbg !678
  tail call void @llvm.dbg.value(metadata !{float %mul1}, i64 0, metadata !193), !dbg !678
  %conv = fpext float %mul1 to double, !dbg !679
  %sub = fadd double %conv, -3.000000e+00, !dbg !679
  %conv2 = fpext float %mul to double, !dbg !679
  %call = tail call double @sin(double %conv2) #7, !dbg !679
  %mul3 = fmul double %sub, %call, !dbg !679
  %mul4 = fmul float %mul, 3.000000e+00, !dbg !679
  %conv5 = fpext float %mul4 to double, !dbg !679
  %call7 = tail call double @cos(double %conv2) #7, !dbg !679
  %mul8 = fmul double %conv5, %call7, !dbg !679
  %add = fadd double %mul3, %mul8, !dbg !679
  %mul9 = fmul double %add, -1.500000e+01, !dbg !679
  %0 = load float* @Vol, align 4, !dbg !679, !tbaa !645
  %mul10 = fmul float %mul1, %0, !dbg !679
  %mul11 = fmul float %mul1, %mul10, !dbg !679
  %mul12 = fmul float %mul, %mul11, !dbg !679
  %conv13 = fpext float %mul12 to double, !dbg !679
  %div = fdiv double %mul9, %conv13, !dbg !679
  %conv14 = fptrunc double %div to float, !dbg !679
  ret float %conv14, !dbg !679
}

; Function Attrs: nounwind optsize uwtable
define float @calc_dx2dx(float* nocapture %xi, float* nocapture %xj, float* nocapture %box, float* nocapture %dx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %xi}, i64 0, metadata !198), !dbg !680
  tail call void @llvm.dbg.value(metadata !{float* %xj}, i64 0, metadata !199), !dbg !680
  tail call void @llvm.dbg.value(metadata !{float* %box}, i64 0, metadata !200), !dbg !680
  tail call void @llvm.dbg.value(metadata !{float* %dx}, i64 0, metadata !201), !dbg !680
  tail call void @llvm.dbg.value(metadata !681, i64 0, metadata !204), !dbg !682
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !202), !dbg !683
  br label %for.body, !dbg !683

for.body:                                         ; preds = %if.end21, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end21 ]
  %dx2.045 = phi float [ 0.000000e+00, %entry ], [ %add25, %if.end21 ]
  %arrayidx = getelementptr inbounds float* %xj, i64 %indvars.iv, !dbg !685
  %0 = load float* %arrayidx, align 4, !dbg !685, !tbaa !645
  %arrayidx2 = getelementptr inbounds float* %xi, i64 %indvars.iv, !dbg !685
  %1 = load float* %arrayidx2, align 4, !dbg !685, !tbaa !645
  %sub = fsub float %0, %1, !dbg !685
  tail call void @llvm.dbg.value(metadata !{float %sub}, i64 0, metadata !203), !dbg !685
  %conv = fpext float %sub to double, !dbg !687
  %arrayidx4 = getelementptr inbounds float* %box, i64 %indvars.iv, !dbg !687
  %2 = load float* %arrayidx4, align 4, !dbg !687, !tbaa !645
  %conv5 = fpext float %2 to double, !dbg !687
  %mul = fmul double %conv5, -5.000000e-01, !dbg !687
  %cmp6 = fcmp olt double %conv, %mul, !dbg !687
  br i1 %cmp6, label %if.then, label %if.else, !dbg !687

if.then:                                          ; preds = %for.body
  %add = fadd float %sub, %2, !dbg !688
  tail call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !203), !dbg !688
  br label %if.end21, !dbg !688

if.else:                                          ; preds = %for.body
  %mul14 = fmul double %conv5, 5.000000e-01, !dbg !689
  %cmp15 = fcmp ult double %conv, %mul14, !dbg !689
  br i1 %cmp15, label %if.end21, label %if.then17, !dbg !689

if.then17:                                        ; preds = %if.else
  %sub20 = fsub float %sub, %2, !dbg !690
  tail call void @llvm.dbg.value(metadata !{float %sub20}, i64 0, metadata !203), !dbg !690
  br label %if.end21, !dbg !690

if.end21:                                         ; preds = %if.else, %if.then17, %if.then
  %ddx.0 = phi float [ %add, %if.then ], [ %sub20, %if.then17 ], [ %sub, %if.else ]
  %arrayidx23 = getelementptr inbounds float* %dx, i64 %indvars.iv, !dbg !691
  store float %ddx.0, float* %arrayidx23, align 4, !dbg !691, !tbaa !645
  %mul24 = fmul float %ddx.0, %ddx.0, !dbg !692
  %add25 = fadd float %dx2.045, %mul24, !dbg !692
  tail call void @llvm.dbg.value(metadata !{float %add25}, i64 0, metadata !204), !dbg !692
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !683
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !683
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !683
  br i1 %exitcond, label %for.end, label %for.body, !dbg !683

for.end:                                          ; preds = %if.end21
  ret float %add25, !dbg !693
}

; Function Attrs: nounwind optsize uwtable
define float @calc_dx2(float* nocapture %xi, float* nocapture %xj, float* nocapture %box) #0 {
entry:
  %dx = alloca [3 x float], align 4
  call void @llvm.dbg.value(metadata !{float* %xi}, i64 0, metadata !209), !dbg !694
  call void @llvm.dbg.value(metadata !{float* %xj}, i64 0, metadata !210), !dbg !694
  call void @llvm.dbg.value(metadata !{float* %box}, i64 0, metadata !211), !dbg !694
  call void @llvm.dbg.declare(metadata !{[3 x float]* %dx}, metadata !212), !dbg !695
  %arraydecay = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0, !dbg !696
  %call = call float @calc_dx2dx(float* %xi, float* %xj, float* %box, float* %arraydecay) #8, !dbg !696
  ret float %call, !dbg !696
}

; Function Attrs: nounwind optsize readonly uwtable
define float @shiftfunction(float %r1, float %rc, float %R) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %r1}, i64 0, metadata !215), !dbg !697
  tail call void @llvm.dbg.value(metadata !{float %rc}, i64 0, metadata !216), !dbg !697
  tail call void @llvm.dbg.value(metadata !{float %R}, i64 0, metadata !217), !dbg !697
  %cmp = fcmp ugt float %R, %r1, !dbg !698
  br i1 %cmp, label %if.else, label %return, !dbg !698

if.else:                                          ; preds = %entry
  %cmp1 = fcmp ult float %R, %rc, !dbg !699
  br i1 %cmp1, label %if.end4, label %if.then2, !dbg !699

if.then2:                                         ; preds = %if.else
  %mul = fmul float %R, %R, !dbg !700
  %conv3 = fdiv float -1.000000e+00, %mul, !dbg !700
  br label %return, !dbg !700

if.end4:                                          ; preds = %if.else
  %sub = fsub float %R, %r1, !dbg !701
  tail call void @llvm.dbg.value(metadata !{float %sub}, i64 0, metadata !218), !dbg !701
  %0 = load float* @A, align 4, !dbg !702, !tbaa !645
  %mul5 = fmul float %sub, %0, !dbg !702
  %mul6 = fmul float %sub, %mul5, !dbg !702
  %1 = load float* @B, align 4, !dbg !702, !tbaa !645
  %mul7 = fmul float %sub, %1, !dbg !702
  %mul8 = fmul float %sub, %mul7, !dbg !702
  %mul9 = fmul float %sub, %mul8, !dbg !702
  %add = fadd float %mul6, %mul9, !dbg !702
  br label %return, !dbg !702

return:                                           ; preds = %entry, %if.end4, %if.then2
  %retval.0 = phi float [ %conv3, %if.then2 ], [ %add, %if.end4 ], [ 0.000000e+00, %entry ]
  ret float %retval.0, !dbg !703
}

; Function Attrs: nounwind optsize readnone uwtable
define float @new_f(float %r, float %rc) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %r}, i64 0, metadata !223), !dbg !704
  tail call void @llvm.dbg.value(metadata !{float %rc}, i64 0, metadata !224), !dbg !704
  %div = fdiv float %r, %rc, !dbg !705
  tail call void @llvm.dbg.value(metadata !{float %div}, i64 0, metadata !225), !dbg !705
  %mul = fmul float %div, %div, !dbg !706
  tail call void @llvm.dbg.value(metadata !{float %mul}, i64 0, metadata !226), !dbg !706
  %mul1 = fmul float %div, %mul, !dbg !707
  tail call void @llvm.dbg.value(metadata !{float %mul1}, i64 0, metadata !227), !dbg !707
  %conv = fpext float %mul to double, !dbg !708
  %mul2 = fmul double %conv, 1.500000e+00, !dbg !708
  %conv3 = fpext float %mul1 to double, !dbg !708
  %mul4 = fmul double %mul2, %conv3, !dbg !708
  %mul6 = fmul double %conv3, 2.500000e+00, !dbg !708
  %sub = fsub double %mul4, %mul6, !dbg !708
  %add = fadd double %sub, 1.000000e+00, !dbg !708
  %conv7 = fptrunc double %add to float, !dbg !708
  ret float %conv7, !dbg !708
}

; Function Attrs: nounwind optsize readnone uwtable
define float @new_phi(float %r, float %rc) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %r}, i64 0, metadata !230), !dbg !709
  tail call void @llvm.dbg.value(metadata !{float %rc}, i64 0, metadata !231), !dbg !709
  %div = fdiv float %r, %rc, !dbg !710
  tail call void @llvm.dbg.value(metadata !{float %div}, i64 0, metadata !711), !dbg !712
  %mul.i = fmul float %div, %div, !dbg !713
  tail call void @llvm.dbg.value(metadata !{float %mul.i}, i64 0, metadata !232), !dbg !710
  %div1 = fdiv float 1.000000e+00, %r, !dbg !714
  %conv = fpext float %div1 to double, !dbg !714
  %conv2 = fpext float %rc to double, !dbg !714
  %div3 = fdiv double 1.250000e-01, %conv2, !dbg !714
  %mul = fmul float %mul.i, 3.000000e+00, !dbg !714
  %mul4 = fmul float %mul.i, %mul, !dbg !714
  %add = fadd float %mul4, 1.500000e+01, !dbg !714
  %mul5 = fmul float %mul.i, 1.000000e+01, !dbg !714
  %sub = fsub float %add, %mul5, !dbg !714
  %conv6 = fpext float %sub to double, !dbg !714
  %mul7 = fmul double %div3, %conv6, !dbg !714
  %sub8 = fsub double %conv, %mul7, !dbg !714
  %conv9 = fptrunc double %sub8 to float, !dbg !714
  ret float %conv9, !dbg !714
}

; Function Attrs: nounwind optsize readonly uwtable
define float @old_f(float %r, float %rc, float %r1) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %r}, i64 0, metadata !235), !dbg !715
  tail call void @llvm.dbg.value(metadata !{float %rc}, i64 0, metadata !236), !dbg !715
  tail call void @llvm.dbg.value(metadata !{float %r1}, i64 0, metadata !237), !dbg !715
  %cmp = fcmp ugt float %r, %r1, !dbg !716
  br i1 %cmp, label %if.else, label %return, !dbg !716

if.else:                                          ; preds = %entry
  %cmp1 = fcmp ult float %r, %rc, !dbg !717
  br i1 %cmp1, label %if.end3, label %return, !dbg !717

if.end3:                                          ; preds = %if.else
  %sub = fsub float %r, %r1, !dbg !718
  tail call void @llvm.dbg.value(metadata !{float %sub}, i64 0, metadata !238), !dbg !718
  %mul = fmul float %r, %r, !dbg !719
  tail call void @llvm.dbg.value(metadata !{float %mul}, i64 0, metadata !239), !dbg !719
  %0 = load float* @A, align 4, !dbg !720, !tbaa !645
  %mul4 = fmul float %mul, %0, !dbg !720
  %mul5 = fmul float %sub, %mul4, !dbg !720
  %mul6 = fmul float %sub, %mul5, !dbg !720
  %add = fadd float %mul6, 1.000000e+00, !dbg !720
  %1 = load float* @B, align 4, !dbg !720, !tbaa !645
  %mul7 = fmul float %mul, %1, !dbg !720
  %mul8 = fmul float %sub, %mul7, !dbg !720
  %mul9 = fmul float %sub, %mul8, !dbg !720
  %mul10 = fmul float %sub, %mul9, !dbg !720
  %add11 = fadd float %add, %mul10, !dbg !720
  br label %return, !dbg !720

return:                                           ; preds = %if.else, %entry, %if.end3
  %retval.0 = phi float [ %add11, %if.end3 ], [ 1.000000e+00, %entry ], [ 0.000000e+00, %if.else ]
  ret float %retval.0, !dbg !721
}

; Function Attrs: nounwind optsize readonly uwtable
define float @old_phi(float %r, float %rc, float %r1) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %r}, i64 0, metadata !242), !dbg !722
  tail call void @llvm.dbg.value(metadata !{float %rc}, i64 0, metadata !243), !dbg !722
  tail call void @llvm.dbg.value(metadata !{float %r1}, i64 0, metadata !244), !dbg !722
  %cmp = fcmp ugt float %r, %r1, !dbg !723
  br i1 %cmp, label %if.else, label %if.then, !dbg !723

if.then:                                          ; preds = %entry
  %div = fdiv float 1.000000e+00, %r, !dbg !724
  %0 = load float* @C, align 4, !dbg !724, !tbaa !645
  %sub = fsub float %div, %0, !dbg !724
  br label %return, !dbg !724

if.else:                                          ; preds = %entry
  %cmp1 = fcmp ult float %r, %rc, !dbg !725
  br i1 %cmp1, label %if.end3, label %return, !dbg !725

if.end3:                                          ; preds = %if.else
  %sub4 = fsub float %r, %r1, !dbg !726
  tail call void @llvm.dbg.value(metadata !{float %sub4}, i64 0, metadata !245), !dbg !726
  %div5 = fdiv float 1.000000e+00, %r, !dbg !727
  %1 = load float* @A_3, align 4, !dbg !727, !tbaa !645
  %mul = fmul float %sub4, %1, !dbg !727
  %mul6 = fmul float %sub4, %mul, !dbg !727
  %mul7 = fmul float %sub4, %mul6, !dbg !727
  %sub8 = fsub float %div5, %mul7, !dbg !727
  %2 = load float* @B_4, align 4, !dbg !727, !tbaa !645
  %mul9 = fmul float %sub4, %2, !dbg !727
  %mul10 = fmul float %sub4, %mul9, !dbg !727
  %mul11 = fmul float %sub4, %mul10, !dbg !727
  %mul12 = fmul float %sub4, %mul11, !dbg !727
  %sub13 = fsub float %sub8, %mul12, !dbg !727
  %3 = load float* @C, align 4, !dbg !727, !tbaa !645
  %sub14 = fsub float %sub13, %3, !dbg !727
  br label %return, !dbg !727

return:                                           ; preds = %if.else, %if.end3, %if.then
  %retval.0 = phi float [ %sub, %if.then ], [ %sub14, %if.end3 ], [ 0.000000e+00, %if.else ]
  ret float %retval.0, !dbg !728
}

; Function Attrs: nounwind optsize uwtable
define float @phi_sr(%struct._IO_FILE* %log, i32 %nj, [3 x float]* nocapture %x, float* nocapture %charge, float %rc, float %r1, float* nocapture %box, float* nocapture %phi, %struct.t_block* nocapture %excl, [3 x float]* nocapture %f_sr, i32 %bOld) #0 {
entry:
  %dx = alloca [3 x float], align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !263), !dbg !729
  call void @llvm.dbg.value(metadata !{i32 %nj}, i64 0, metadata !264), !dbg !729
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !265), !dbg !729
  call void @llvm.dbg.value(metadata !{float* %charge}, i64 0, metadata !266), !dbg !729
  call void @llvm.dbg.value(metadata !{float %rc}, i64 0, metadata !267), !dbg !729
  call void @llvm.dbg.value(metadata !{float %r1}, i64 0, metadata !268), !dbg !729
  call void @llvm.dbg.value(metadata !{float* %box}, i64 0, metadata !269), !dbg !729
  call void @llvm.dbg.value(metadata !{float* %phi}, i64 0, metadata !270), !dbg !730
  call void @llvm.dbg.value(metadata !{%struct.t_block* %excl}, i64 0, metadata !271), !dbg !730
  call void @llvm.dbg.value(metadata !{[3 x float]* %f_sr}, i64 0, metadata !272), !dbg !730
  call void @llvm.dbg.value(metadata !{i32 %bOld}, i64 0, metadata !273), !dbg !730
  call void @llvm.dbg.declare(metadata !{[3 x float]* %dx}, metadata !292), !dbg !731
  call void @llvm.dbg.value(metadata !681, i64 0, metadata !289), !dbg !732
  call void @llvm.dbg.value(metadata !733, i64 0, metadata !290), !dbg !734
  %mul = fmul float %rc, %rc, !dbg !735
  call void @llvm.dbg.value(metadata !{float %mul}, i64 0, metadata !286), !dbg !735
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !278), !dbg !736
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !274), !dbg !737
  %sub = add i32 %nj, -1, !dbg !737
  %cmp160 = icmp sgt i32 %sub, 0, !dbg !737
  br i1 %cmp160, label %for.body.lr.ph, label %for.end88, !dbg !737

for.body.lr.ph:                                   ; preds = %entry
  %index = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 2, !dbg !739
  %arraydecay23 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0, !dbg !743
  %tobool = icmp eq i32 %bOld, 0, !dbg !745
  %conv2.i = fpext float %rc to double, !dbg !747
  %div3.i = fdiv double 1.250000e-01, %conv2.i, !dbg !747
  %a = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 4, !dbg !750
  br label %for.body, !dbg !737

for.cond.loopexit:                                ; preds = %for.inc83, %for.body
  %vsr.1.lcssa = phi float [ %vsr.0162, %for.body ], [ %vsr.2, %for.inc83 ]
  %ni.1.lcssa = phi i32 [ %ni.0161, %for.body ], [ %ni.2, %for.inc83 ]
  %indvars.iv.next171 = add i64 %indvars.iv170, 1, !dbg !737
  %exitcond180 = icmp eq i32 %1, %sub, !dbg !737
  br i1 %exitcond180, label %for.end88, label %for.body, !dbg !737

for.body:                                         ; preds = %for.cond.loopexit, %for.body.lr.ph
  %indvars.iv177 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next178, %for.cond.loopexit ]
  %indvars.iv170 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next171, %for.cond.loopexit ]
  %vsr.0162 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %vsr.1.lcssa, %for.cond.loopexit ]
  %ni.0161 = phi i32 [ 0, %for.body.lr.ph ], [ %ni.1.lcssa, %for.cond.loopexit ]
  %arrayidx = getelementptr inbounds float* %charge, i64 %indvars.iv177, !dbg !752
  %0 = load float* %arrayidx, align 4, !dbg !752, !tbaa !645
  call void @llvm.dbg.value(metadata !{float %0}, i64 0, metadata !287), !dbg !752
  %indvars.iv.next178 = add i64 %indvars.iv177, 1, !dbg !737
  %1 = trunc i64 %indvars.iv.next178 to i32, !dbg !753
  %cmp2154 = icmp slt i32 %1, %nj, !dbg !753
  br i1 %cmp2154, label %for.body3.lr.ph, label %for.cond.loopexit, !dbg !753

for.body3.lr.ph:                                  ; preds = %for.body
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv177, i64 0, !dbg !743
  %arrayidx46 = getelementptr inbounds float* %phi, i64 %indvars.iv177, !dbg !754
  %mul48 = fmul float %0, 0x40615DEEE0000000, !dbg !755
  br label %for.body3, !dbg !753

for.body3:                                        ; preds = %for.inc83, %for.body3.lr.ph
  %indvars.iv172 = phi i64 [ %indvars.iv170, %for.body3.lr.ph ], [ %indvars.iv.next173, %for.inc83 ], !dbg !737
  %vsr.1157 = phi float [ %vsr.0162, %for.body3.lr.ph ], [ %vsr.2, %for.inc83 ]
  %ni.1155 = phi i32 [ %ni.0161, %for.body3.lr.ph ], [ %ni.2, %for.inc83 ]
  %2 = load i32** %index, align 8, !dbg !739, !tbaa !658
  %arrayidx5 = getelementptr inbounds i32* %2, i64 %indvars.iv177, !dbg !739
  %3 = load i32* %arrayidx5, align 4, !dbg !739, !tbaa !756
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !279), !dbg !739
  %arrayidx9 = getelementptr inbounds i32* %2, i64 %indvars.iv.next178, !dbg !757
  %4 = load i32* %arrayidx9, align 4, !dbg !757, !tbaa !756
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !280), !dbg !757
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !276), !dbg !758
  %cmp11151 = icmp slt i32 %3, %4, !dbg !758
  br i1 %cmp11151, label %for.body12.lr.ph, label %for.end, !dbg !758

for.body12.lr.ph:                                 ; preds = %for.body3
  %5 = load i32** %a, align 8, !dbg !750, !tbaa !658
  %6 = sext i32 %3 to i64
  br label %for.body12, !dbg !758

for.cond10:                                       ; preds = %for.body12
  %7 = trunc i64 %indvars.iv.next to i32, !dbg !758
  %cmp11 = icmp slt i32 %7, %4, !dbg !758
  br i1 %cmp11, label %for.body12, label %for.end, !dbg !758

for.body12:                                       ; preds = %for.body12.lr.ph, %for.cond10
  %indvars.iv = phi i64 [ %6, %for.body12.lr.ph ], [ %indvars.iv.next, %for.cond10 ]
  %k.0152 = phi i32 [ %3, %for.body12.lr.ph ], [ %inc, %for.cond10 ]
  %arrayidx14 = getelementptr inbounds i32* %5, i64 %indvars.iv, !dbg !750
  %8 = load i32* %arrayidx14, align 4, !dbg !750, !tbaa !756
  %9 = trunc i64 %indvars.iv172 to i32, !dbg !750
  %cmp15 = icmp eq i32 %8, %9, !dbg !750
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !758
  %inc = add nsw i32 %k.0152, 1, !dbg !758
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !276), !dbg !758
  br i1 %cmp15, label %for.end, label %for.cond10, !dbg !750

for.end:                                          ; preds = %for.cond10, %for.body12, %for.body3
  %k.0.lcssa = phi i32 [ %3, %for.body3 ], [ %k.0152, %for.body12 ], [ %inc, %for.cond10 ]
  %cmp16 = icmp eq i32 %k.0.lcssa, %4, !dbg !759
  br i1 %cmp16, label %if.then17, label %for.inc83, !dbg !759

if.then17:                                        ; preds = %for.end
  %arraydecay22 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv172, i64 0, !dbg !743
  %call = call float @calc_dx2dx(float* %arraydecay, float* %arraydecay22, float* %box, float* %arraydecay23) #8, !dbg !743
  call void @llvm.dbg.value(metadata !{float %call}, i64 0, metadata !282), !dbg !743
  %cmp24 = fcmp olt float %call, %mul, !dbg !760
  br i1 %cmp24, label %if.then25, label %for.inc83, !dbg !760

if.then25:                                        ; preds = %if.then17
  %arrayidx27 = getelementptr inbounds float* %charge, i64 %indvars.iv172, !dbg !761
  %10 = load float* %arrayidx27, align 4, !dbg !761, !tbaa !645
  call void @llvm.dbg.value(metadata !{float %10}, i64 0, metadata !288), !dbg !761
  %conv = fpext float %call to double, !dbg !762
  %call28 = call double @sqrt(double %conv) #7, !dbg !762
  %div = fdiv double 1.000000e+00, %call28, !dbg !762
  %conv29 = fptrunc double %div to float, !dbg !762
  call void @llvm.dbg.value(metadata !{float %conv29}, i64 0, metadata !284), !dbg !762
  %mul30 = fmul float %conv29, %conv29, !dbg !763
  call void @llvm.dbg.value(metadata !{float %mul30}, i64 0, metadata !285), !dbg !763
  %conv31 = fpext float %mul30 to double, !dbg !764
  %call32 = call double @sqrt(double %conv31) #7, !dbg !764
  %div33 = fdiv double 1.000000e+00, %call32, !dbg !764
  %conv34 = fptrunc double %div33 to float, !dbg !764
  call void @llvm.dbg.value(metadata !{float %conv34}, i64 0, metadata !283), !dbg !764
  br i1 %tobool, label %if.else, label %if.then35, !dbg !745

if.then35:                                        ; preds = %if.then25
  %call36 = call float @old_f(float %conv34, float %rc, float %r1) #8, !dbg !765
  %call38 = call float @old_phi(float %conv34, float %rc, float %r1) #8, !dbg !767
  call void @llvm.dbg.value(metadata !{float %call38}, i64 0, metadata !281), !dbg !767
  br label %if.end42, !dbg !768

if.else:                                          ; preds = %if.then25
  tail call void @llvm.dbg.value(metadata !{float %conv34}, i64 0, metadata !769), !dbg !771
  tail call void @llvm.dbg.value(metadata !{float %rc}, i64 0, metadata !772), !dbg !771
  %div.i = fdiv float %conv34, %rc, !dbg !773
  tail call void @llvm.dbg.value(metadata !{float %div.i}, i64 0, metadata !774), !dbg !773
  %mul.i = fmul float %div.i, %div.i, !dbg !775
  tail call void @llvm.dbg.value(metadata !{float %mul.i}, i64 0, metadata !776), !dbg !775
  %mul1.i = fmul float %div.i, %mul.i, !dbg !777
  tail call void @llvm.dbg.value(metadata !{float %mul1.i}, i64 0, metadata !778), !dbg !777
  %conv.i = fpext float %mul.i to double, !dbg !779
  %mul2.i = fmul double %conv.i, 1.500000e+00, !dbg !779
  %conv3.i = fpext float %mul1.i to double, !dbg !779
  %mul4.i = fmul double %mul2.i, %conv3.i, !dbg !779
  %mul6.i = fmul double %conv3.i, 2.500000e+00, !dbg !779
  %sub.i = fsub double %mul4.i, %mul6.i, !dbg !779
  %add.i = fadd double %sub.i, 1.000000e+00, !dbg !779
  %conv7.i = fptrunc double %add.i to float, !dbg !779
  tail call void @llvm.dbg.value(metadata !{float %conv34}, i64 0, metadata !780), !dbg !781
  tail call void @llvm.dbg.value(metadata !{float %rc}, i64 0, metadata !782), !dbg !781
  tail call void @llvm.dbg.value(metadata !{float %div.i}, i64 0, metadata !783), !dbg !785
  tail call void @llvm.dbg.value(metadata !{float %mul.i}, i64 0, metadata !786), !dbg !784
  %div1.i = fdiv float 1.000000e+00, %conv34, !dbg !747
  %conv.i146 = fpext float %div1.i to double, !dbg !747
  %mul.i147 = fmul float %mul.i, 3.000000e+00, !dbg !747
  %mul4.i148 = fmul float %mul.i, %mul.i147, !dbg !747
  %add.i149 = fadd float %mul4.i148, 1.500000e+01, !dbg !747
  %mul5.i = fmul float %mul.i, 1.000000e+01, !dbg !747
  %sub.i150 = fsub float %add.i149, %mul5.i, !dbg !747
  %conv6.i = fpext float %sub.i150 to double, !dbg !747
  %mul7.i = fmul double %div3.i, %conv6.i, !dbg !747
  %sub8.i = fsub double %conv.i146, %mul7.i, !dbg !747
  %conv9.i = fptrunc double %sub8.i to float, !dbg !747
  call void @llvm.dbg.value(metadata !{float %conv9.i}, i64 0, metadata !281), !dbg !748
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then35
  %pp.0 = phi float [ %call38, %if.then35 ], [ %conv9.i, %if.else ]
  %call36.pn = phi float [ %call36, %if.then35 ], [ %conv7.i, %if.else ]
  %fscal.0 = fmul float %mul30, %call36.pn, !dbg !765
  %mul43 = fmul float %10, 0x40615DEEE0000000, !dbg !754
  %mul44 = fmul float %mul43, %pp.0, !dbg !754
  %11 = load float* %arrayidx46, align 4, !dbg !754, !tbaa !645
  %add47 = fadd float %mul44, %11, !dbg !754
  store float %add47, float* %arrayidx46, align 4, !dbg !754, !tbaa !645
  %mul49 = fmul float %mul48, %pp.0, !dbg !755
  %arrayidx51 = getelementptr inbounds float* %phi, i64 %indvars.iv172, !dbg !755
  %12 = load float* %arrayidx51, align 4, !dbg !755, !tbaa !645
  %add52 = fadd float %mul49, %12, !dbg !755
  store float %add52, float* %arrayidx51, align 4, !dbg !755, !tbaa !645
  %mul54 = fmul float %0, %mul43, !dbg !787
  %mul55 = fmul float %mul54, %pp.0, !dbg !787
  call void @llvm.dbg.value(metadata !{float %add56}, i64 0, metadata !289), !dbg !787
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !277), !dbg !788
  br label %for.body60, !dbg !788

for.body60:                                       ; preds = %for.body60, %if.end42
  %indvars.iv168 = phi i64 [ 0, %if.end42 ], [ %indvars.iv.next169, %for.body60 ]
  %arrayidx62 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv168, !dbg !790
  %13 = load float* %arrayidx62, align 4, !dbg !790, !tbaa !645
  %mul63 = fmul float %fscal.0, %13, !dbg !790
  %arrayidx67 = getelementptr inbounds [3 x float]* %f_sr, i64 %indvars.iv177, i64 %indvars.iv168, !dbg !790
  %14 = load float* %arrayidx67, align 4, !dbg !790, !tbaa !645
  %add68 = fadd float %14, %mul63, !dbg !790
  store float %add68, float* %arrayidx67, align 4, !dbg !790, !tbaa !645
  %arrayidx75 = getelementptr inbounds [3 x float]* %f_sr, i64 %indvars.iv172, i64 %indvars.iv168, !dbg !792
  %15 = load float* %arrayidx75, align 4, !dbg !792, !tbaa !645
  %sub76 = fsub float %15, %mul63, !dbg !792
  store float %sub76, float* %arrayidx75, align 4, !dbg !792, !tbaa !645
  %indvars.iv.next169 = add i64 %indvars.iv168, 1, !dbg !788
  %lftr.wideiv = trunc i64 %indvars.iv.next169 to i32, !dbg !788
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !788
  br i1 %exitcond, label %for.end79, label %for.body60, !dbg !788

for.end79:                                        ; preds = %for.body60
  %add56 = fadd float %vsr.1157, %mul55, !dbg !787
  %inc80 = add nsw i32 %ni.1155, 1, !dbg !793
  call void @llvm.dbg.value(metadata !{i32 %inc80}, i64 0, metadata !278), !dbg !793
  br label %for.inc83, !dbg !794

for.inc83:                                        ; preds = %for.end, %for.end79, %if.then17
  %ni.2 = phi i32 [ %inc80, %for.end79 ], [ %ni.1155, %if.then17 ], [ %ni.1155, %for.end ]
  %vsr.2 = phi float [ %add56, %for.end79 ], [ %vsr.1157, %if.then17 ], [ %vsr.1157, %for.end ]
  %indvars.iv.next173 = add i64 %indvars.iv172, 1, !dbg !753
  %lftr.wideiv175 = trunc i64 %indvars.iv.next173 to i32, !dbg !753
  %exitcond176 = icmp eq i32 %lftr.wideiv175, %nj, !dbg !753
  br i1 %exitcond176, label %for.cond.loopexit, label %for.body3, !dbg !753

for.end88:                                        ; preds = %for.cond.loopexit, %entry
  %vsr.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %vsr.1.lcssa, %for.cond.loopexit ]
  %ni.0.lcssa = phi i32 [ 0, %entry ], [ %ni.1.lcssa, %for.cond.loopexit ]
  %tobool89 = icmp eq %struct._IO_FILE* %log, null, !dbg !795
  br i1 %tobool89, label %if.end93, label %if.then90, !dbg !795

if.then90:                                        ; preds = %for.end88
  %conv91 = fpext float %vsr.0.lcssa to double, !dbg !796
  %call92 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([48 x i8]* @.str4, i64 0, i64 0), i32 %ni.0.lcssa, double %conv91) #7, !dbg !796
  br label %if.end93, !dbg !796

if.end93:                                         ; preds = %for.end88, %if.then90
  ret float %vsr.0.lcssa, !dbg !797
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #3

; Function Attrs: nounwind optsize readonly uwtable
define float @spreadfunction(float %r1, float %rc, float %R) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %r1}, i64 0, metadata !295), !dbg !798
  tail call void @llvm.dbg.value(metadata !{float %rc}, i64 0, metadata !296), !dbg !798
  tail call void @llvm.dbg.value(metadata !{float %R}, i64 0, metadata !297), !dbg !798
  %cmp = fcmp ugt float %R, %r1, !dbg !799
  %cmp1 = fcmp ult float %R, %rc, !dbg !800
  %or.cond = and i1 %cmp, %cmp1, !dbg !799
  br i1 %or.cond, label %if.end3, label %return, !dbg !799

if.end3:                                          ; preds = %entry
  %sub = fsub float %R, %r1, !dbg !801
  tail call void @llvm.dbg.value(metadata !{float %sub}, i64 0, metadata !298), !dbg !801
  %0 = load float* @One_4pi, align 4, !dbg !802, !tbaa !645
  %div = fdiv float %sub, %R, !dbg !802
  %1 = fmul float %0, %div, !dbg !802
  %2 = load float* @A, align 4, !dbg !802, !tbaa !645
  %mul5 = fmul float %2, 2.000000e+00, !dbg !802
  %mul6 = fmul float %R, 2.000000e+00, !dbg !802
  %sub7 = fsub float %mul6, %r1, !dbg !802
  %mul8 = fmul float %sub7, %mul5, !dbg !802
  %3 = load float* @B, align 4, !dbg !802, !tbaa !645
  %mul9 = fmul float %sub, %3, !dbg !802
  %mul10 = fmul float %R, 5.000000e+00, !dbg !802
  %mul11 = fmul float %r1, 2.000000e+00, !dbg !802
  %sub12 = fsub float %mul10, %mul11, !dbg !802
  %mul13 = fmul float %sub12, %mul9, !dbg !802
  %add = fadd float %mul8, %mul13, !dbg !802
  %4 = fmul float %1, %add, !dbg !802
  %mul14 = fsub float -0.000000e+00, %4, !dbg !802
  br label %return, !dbg !802

return:                                           ; preds = %entry, %if.end3
  %retval.0 = phi float [ %mul14, %if.end3 ], [ 0.000000e+00, %entry ]
  ret float %retval.0, !dbg !803
}

; Function Attrs: nounwind optsize readonly uwtable
define float @potential(float %r1, float %rc, float %R) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %r1}, i64 0, metadata !301), !dbg !804
  tail call void @llvm.dbg.value(metadata !{float %rc}, i64 0, metadata !302), !dbg !804
  tail call void @llvm.dbg.value(metadata !{float %R}, i64 0, metadata !303), !dbg !804
  %cmp = fcmp olt float %R, %r1, !dbg !805
  br i1 %cmp, label %if.then, label %if.else, !dbg !805

if.then:                                          ; preds = %entry
  %conv = fpext float %R to double, !dbg !806
  %div = fdiv double 1.000000e+00, %conv, !dbg !806
  %0 = load float* @C, align 4, !dbg !806, !tbaa !645
  %conv1 = fpext float %0 to double, !dbg !806
  %sub = fsub double %div, %conv1, !dbg !806
  %conv2 = fptrunc double %sub to float, !dbg !806
  br label %return, !dbg !806

if.else:                                          ; preds = %entry
  %cmp3 = fcmp ugt float %R, %rc, !dbg !807
  br i1 %cmp3, label %return, label %if.then5, !dbg !807

if.then5:                                         ; preds = %if.else
  %conv6 = fpext float %R to double, !dbg !808
  %div7 = fdiv double 1.000000e+00, %conv6, !dbg !808
  %1 = load float* @A_3, align 4, !dbg !808, !tbaa !645
  %sub8 = fsub float %R, %r1, !dbg !808
  %mul = fmul float %sub8, %sub8, !dbg !808
  %mul11 = fmul float %sub8, %mul, !dbg !808
  %mul12 = fmul float %mul11, %1, !dbg !808
  %conv13 = fpext float %mul12 to double, !dbg !808
  %sub14 = fsub double %div7, %conv13, !dbg !808
  %2 = load float* @B_4, align 4, !dbg !808, !tbaa !645
  %mul21 = fmul float %sub8, %mul11, !dbg !808
  %mul22 = fmul float %mul21, %2, !dbg !808
  %conv23 = fpext float %mul22 to double, !dbg !808
  %sub24 = fsub double %sub14, %conv23, !dbg !808
  %3 = load float* @C, align 4, !dbg !808, !tbaa !645
  %conv25 = fpext float %3 to double, !dbg !808
  %sub26 = fsub double %sub24, %conv25, !dbg !808
  %conv27 = fptrunc double %sub26 to float, !dbg !808
  br label %return, !dbg !808

return:                                           ; preds = %if.else, %if.then5, %if.then
  %retval.0 = phi float [ %conv2, %if.then ], [ %conv27, %if.then5 ], [ 0.000000e+00, %if.else ]
  ret float %retval.0, !dbg !809
}

; Function Attrs: nounwind optsize uwtable
define float @shift_LRcorrection(%struct._IO_FILE* %fp, %struct.t_nsborder* nocapture %nsb, %struct.t_commrec* nocapture %cr, %struct.t_forcerec* nocapture %fr, float* nocapture %charge, %struct.t_block* nocapture %excl, [3 x float]* nocapture %x, i32 %bOld, [3 x float]* nocapture %box, [3 x float]* nocapture %lr_vir) #0 {
entry:
  %df = alloca [3 x float], align 4
  %dx = alloca [3 x float], align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !336), !dbg !810
  call void @llvm.dbg.value(metadata !{%struct.t_nsborder* %nsb}, i64 0, metadata !337), !dbg !810
  call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !338), !dbg !810
  call void @llvm.dbg.value(metadata !{%struct.t_forcerec* %fr}, i64 0, metadata !339), !dbg !810
  call void @llvm.dbg.value(metadata !{float* %charge}, i64 0, metadata !340), !dbg !811
  call void @llvm.dbg.value(metadata !{%struct.t_block* %excl}, i64 0, metadata !341), !dbg !811
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !342), !dbg !811
  call void @llvm.dbg.value(metadata !{i32 %bOld}, i64 0, metadata !343), !dbg !812
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !344), !dbg !812
  call void @llvm.dbg.value(metadata !{[3 x float]* %lr_vir}, i64 0, metadata !345), !dbg !812
  call void @llvm.dbg.value(metadata !813, i64 0, metadata !357), !dbg !814
  call void @llvm.dbg.value(metadata !681, i64 0, metadata !365), !dbg !815
  call void @llvm.dbg.declare(metadata !{[3 x float]* %df}, metadata !366), !dbg !816
  call void @llvm.dbg.declare(metadata !{[3 x float]* %dx}, metadata !367), !dbg !816
  %rcoulomb_switch = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 22, !dbg !817
  %0 = load float* %rcoulomb_switch, align 4, !dbg !817, !tbaa !645
  call void @llvm.dbg.value(metadata !{float %0}, i64 0, metadata !368), !dbg !817
  %rcoulomb = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 23, !dbg !818
  %1 = load float* %rcoulomb, align 4, !dbg !818, !tbaa !645
  call void @llvm.dbg.value(metadata !{float %1}, i64 0, metadata !369), !dbg !818
  %nodeid = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0, !dbg !819
  %2 = load i32* %nodeid, align 4, !dbg !819, !tbaa !756
  %idxprom = sext i32 %2 to i64, !dbg !819
  %arrayidx = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom, !dbg !819
  %3 = load i32* %arrayidx, align 4, !dbg !819, !tbaa !756
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !373), !dbg !819
  %arrayidx3 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom, !dbg !820
  %4 = load i32* %arrayidx3, align 4, !dbg !820, !tbaa !756
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !374), !dbg !820
  %.b287 = load i1* @shift_LRcorrection.bFirst, align 1
  %add27.pre = add nsw i32 %4, %3, !dbg !821
  br i1 %.b287, label %if.end25, label %for.cond.preheader, !dbg !823

for.cond.preheader:                               ; preds = %entry
  %cmp333 = icmp sgt i32 %4, 0, !dbg !824
  br i1 %cmp333, label %for.body.lr.ph, label %for.end, !dbg !824

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %5 = sext i32 %3 to i64
  br label %for.body, !dbg !824

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv347 = phi i64 [ %5, %for.body.lr.ph ], [ %indvars.iv.next348, %for.body ]
  %qq.0334 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add8, %for.body ]
  %arrayidx5 = getelementptr inbounds float* %charge, i64 %indvars.iv347, !dbg !827
  %6 = load float* %arrayidx5, align 4, !dbg !827, !tbaa !645
  %mul = fmul float %6, %6, !dbg !827
  %conv = fpext float %mul to double, !dbg !827
  %add8 = fadd double %qq.0334, %conv, !dbg !827
  call void @llvm.dbg.value(metadata !{double %add8}, i64 0, metadata !355), !dbg !827
  %indvars.iv.next348 = add i64 %indvars.iv347, 1, !dbg !824
  %7 = trunc i64 %indvars.iv.next348 to i32, !dbg !824
  %cmp = icmp slt i32 %7, %add27.pre, !dbg !824
  br i1 %cmp, label %for.body, label %for.end, !dbg !824

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %qq.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add8, %for.body ]
  %8 = load float* @C, align 4, !dbg !828, !tbaa !645
  %conv9 = fpext float %8 to double, !dbg !828
  %mul10 = fmul double %conv9, 5.000000e-01, !dbg !828
  %mul11 = fmul double %mul10, 3.320636e+02, !dbg !828
  %mul12 = fmul double %mul11, 4.184000e+00, !dbg !828
  %mul13 = fmul double %mul12, 1.000000e-01, !dbg !828
  %mul14 = fmul double %qq.0.lcssa, %mul13, !dbg !828
  %conv15 = fptrunc double %mul14 to float, !dbg !828
  store float %conv15, float* @shift_LRcorrection.Vself, align 4, !dbg !828, !tbaa !645
  %9 = load %struct._IO_FILE** @debug, align 8, !dbg !829, !tbaa !658
  %tobool16 = icmp eq %struct._IO_FILE* %9, null, !dbg !829
  %tobool17 = icmp eq %struct._IO_FILE* %fp, null, !dbg !829
  %or.cond289 = or i1 %tobool16, %tobool17, !dbg !829
  br i1 %or.cond289, label %if.end25, label %if.then18, !dbg !829

if.then18:                                        ; preds = %for.end
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([50 x i8]* @.str5, i64 0, i64 0), i64 49, i64 1, %struct._IO_FILE* %fp), !dbg !830
  %conv19 = fpext float %0 to double, !dbg !832
  %conv20 = fpext float %1 to double, !dbg !832
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str6, i64 0, i64 0), double %conv19, double %conv20) #7, !dbg !832
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str7, i64 0, i64 0), i32 %3, i32 %4) #7, !dbg !833
  %11 = load float* @shift_LRcorrection.Vself, align 4, !dbg !834, !tbaa !645
  %conv23 = fpext float %11 to double, !dbg !834
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str8, i64 0, i64 0), double %qq.0.lcssa, double %conv23) #7, !dbg !834
  br label %if.end25, !dbg !835

if.end25:                                         ; preds = %entry, %for.end, %if.then18
  %a = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 4, !dbg !836
  %12 = load i32** %a, align 8, !dbg !836, !tbaa !658
  call void @llvm.dbg.value(metadata !{i32* %12}, i64 0, metadata !354), !dbg !836
  call void @llvm.dbg.value(metadata !681, i64 0, metadata !364), !dbg !837
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !346), !dbg !821
  %cmp28329 = icmp sgt i32 %4, 0, !dbg !821
  br i1 %cmp28329, label %for.body30.lr.ph, label %for.end193, !dbg !821

for.body30.lr.ph:                                 ; preds = %if.end25
  %index32 = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 2, !dbg !838
  %arraydecay67 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0, !dbg !840
  %arrayidx9.i = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1, !dbg !845
  %arrayidx10.i = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2, !dbg !846
  %arraydecay147 = getelementptr inbounds [3 x float]* %df, i64 0, i64 0, !dbg !847
  %arrayidx4.i = getelementptr inbounds [3 x float]* %df, i64 0, i64 1, !dbg !848
  %arrayidx7.i = getelementptr inbounds [3 x float]* %df, i64 0, i64 2, !dbg !850
  %f_pme = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55, !dbg !851
  %13 = sext i32 %3 to i64
  br label %for.body30, !dbg !821

for.cond26.loopexit:                              ; preds = %for.inc188, %for.body30
  %Vexcl.1.lcssa = phi float [ %Vexcl.0330, %for.body30 ], [ %Vexcl.2, %for.inc188 ]
  %14 = trunc i64 %indvars.iv.next346 to i32, !dbg !821
  %cmp28 = icmp slt i32 %14, %add27.pre, !dbg !821
  br i1 %cmp28, label %for.body30, label %for.end193, !dbg !821

for.body30:                                       ; preds = %for.cond26.loopexit, %for.body30.lr.ph
  %indvars.iv345 = phi i64 [ %13, %for.body30.lr.ph ], [ %indvars.iv.next346, %for.cond26.loopexit ]
  %Vexcl.0330 = phi float [ 0.000000e+00, %for.body30.lr.ph ], [ %Vexcl.1.lcssa, %for.cond26.loopexit ]
  %15 = load i32** %index32, align 8, !dbg !838, !tbaa !658
  %arrayidx33 = getelementptr inbounds i32* %15, i64 %indvars.iv345, !dbg !838
  %16 = load i32* %arrayidx33, align 4, !dbg !838, !tbaa !756
  call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !347), !dbg !838
  %indvars.iv.next346 = add i64 %indvars.iv345, 1, !dbg !821
  %arrayidx37 = getelementptr inbounds i32* %15, i64 %indvars.iv.next346, !dbg !852
  %17 = load i32* %arrayidx37, align 4, !dbg !852, !tbaa !756
  call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !348), !dbg !852
  %arrayidx39 = getelementptr inbounds float* %charge, i64 %indvars.iv345, !dbg !853
  %18 = load float* %arrayidx39, align 4, !dbg !853, !tbaa !645
  %conv40 = fpext float %18 to double, !dbg !853
  %mul41 = fmul double %conv40, 3.320636e+02, !dbg !853
  %mul42 = fmul double %mul41, 4.184000e+00, !dbg !853
  %mul43 = fmul double %mul42, 1.000000e-01, !dbg !853
  %conv44 = fptrunc double %mul43 to float, !dbg !853
  call void @llvm.dbg.value(metadata !{float %conv44}, i64 0, metadata !358), !dbg !853
  call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !349), !dbg !854
  %cmp46326 = icmp slt i32 %16, %17, !dbg !854
  br i1 %cmp46326, label %for.body48.lr.ph, label %for.cond26.loopexit, !dbg !854

for.body48.lr.ph:                                 ; preds = %for.body30
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv345, i64 0, !dbg !840
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv345, i64 1, !dbg !855
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv345, i64 2, !dbg !856
  %19 = sext i32 %16 to i64
  br label %for.body48, !dbg !854

for.body48:                                       ; preds = %for.body48.lr.ph, %for.inc188
  %indvars.iv343 = phi i64 [ %19, %for.body48.lr.ph ], [ %indvars.iv.next344, %for.inc188 ]
  %Vexcl.1327 = phi float [ %Vexcl.0330, %for.body48.lr.ph ], [ %Vexcl.2, %for.inc188 ]
  %arrayidx50 = getelementptr inbounds i32* %12, i64 %indvars.iv343, !dbg !857
  %20 = load i32* %arrayidx50, align 4, !dbg !857, !tbaa !756
  call void @llvm.dbg.value(metadata !{i32 %20}, i64 0, metadata !350), !dbg !857
  %21 = trunc i64 %indvars.iv345 to i32, !dbg !858
  %cmp51 = icmp sgt i32 %20, %21, !dbg !858
  br i1 %cmp51, label %if.then53, label %for.inc188, !dbg !858

if.then53:                                        ; preds = %for.body48
  %idxprom54 = sext i32 %20 to i64, !dbg !859
  %arrayidx55 = getelementptr inbounds float* %charge, i64 %idxprom54, !dbg !859
  %22 = load float* %arrayidx55, align 4, !dbg !859, !tbaa !645
  %mul56 = fmul float %conv44, %22, !dbg !859
  %conv57 = fpext float %mul56 to double, !dbg !859
  call void @llvm.dbg.value(metadata !{double %conv57}, i64 0, metadata !355), !dbg !859
  %fabsf = call float @fabsf(float %mul56) #9, !dbg !860
  %23 = fpext float %fabsf to double, !dbg !860
  %cmp59 = fcmp ogt double %23, 1.200000e-38, !dbg !860
  br i1 %cmp59, label %if.then61, label %for.inc188, !dbg !860

if.then61:                                        ; preds = %if.then53
  call void @llvm.dbg.value(metadata !681, i64 0, metadata !360), !dbg !861
  %arraydecay66 = getelementptr inbounds [3 x float]* %x, i64 %idxprom54, i64 0, !dbg !840
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !862), !dbg !863
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay66}, i64 0, metadata !864), !dbg !863
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay67}, i64 0, metadata !865), !dbg !863
  %24 = load float* %arraydecay, align 4, !dbg !866, !tbaa !645
  %25 = load float* %arraydecay66, align 4, !dbg !866, !tbaa !645
  %sub.i = fsub float %24, %25, !dbg !866
  tail call void @llvm.dbg.value(metadata !{float %sub.i}, i64 0, metadata !867), !dbg !866
  %26 = load float* %arrayidx2.i, align 4, !dbg !855, !tbaa !645
  %arrayidx3.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom54, i64 1, !dbg !855
  %27 = load float* %arrayidx3.i, align 4, !dbg !855, !tbaa !645
  %sub4.i = fsub float %26, %27, !dbg !855
  tail call void @llvm.dbg.value(metadata !{float %sub4.i}, i64 0, metadata !868), !dbg !855
  %28 = load float* %arrayidx5.i, align 4, !dbg !856, !tbaa !645
  %arrayidx6.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom54, i64 2, !dbg !856
  %29 = load float* %arrayidx6.i, align 4, !dbg !856, !tbaa !645
  %sub7.i = fsub float %28, %29, !dbg !856
  tail call void @llvm.dbg.value(metadata !{float %sub7.i}, i64 0, metadata !869), !dbg !856
  store float %sub.i, float* %arraydecay67, align 4, !dbg !870, !tbaa !645
  store float %sub4.i, float* %arrayidx9.i, align 4, !dbg !845, !tbaa !645
  store float %sub7.i, float* %arrayidx10.i, align 4, !dbg !846, !tbaa !645
  call void @llvm.dbg.value(metadata !871, i64 0, metadata !351), !dbg !872
  br label %for.body71, !dbg !872

for.body71:                                       ; preds = %if.end105.for.body71_crit_edge, %if.then61
  %30 = phi float [ %sub7.i, %if.then61 ], [ %.pre, %if.end105.for.body71_crit_edge ]
  %31 = phi float [ %sub7.i, %if.then61 ], [ %41, %if.end105.for.body71_crit_edge ]
  %32 = phi float [ %sub4.i, %if.then61 ], [ %42, %if.end105.for.body71_crit_edge ]
  %33 = phi float [ %sub.i, %if.then61 ], [ %43, %if.end105.for.body71_crit_edge ]
  %indvars.iv = phi i64 [ 2, %if.then61 ], [ %indvars.iv.next, %if.end105.for.body71_crit_edge ]
  %dr2.0322 = phi float [ 0.000000e+00, %if.then61 ], [ %add111, %if.end105.for.body71_crit_edge ]
  %arrayidx73 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv, !dbg !874
  %conv74 = fpext float %30 to double, !dbg !874
  %arrayidx77 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, !dbg !874
  %arrayidx78 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv, !dbg !874
  %34 = load float* %arrayidx78, align 4, !dbg !874, !tbaa !645
  %conv79 = fpext float %34 to double, !dbg !874
  %mul80 = fmul double %conv79, 5.000000e-01, !dbg !874
  %cmp81 = fcmp ogt double %conv74, %mul80, !dbg !874
  br i1 %cmp81, label %if.then83, label %if.else, !dbg !874

if.then83:                                        ; preds = %for.body71
  %arraydecay87 = getelementptr inbounds [3 x float]* %arrayidx77, i64 0, i64 0, !dbg !876
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay67}, i64 0, metadata !877), !dbg !878
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay87}, i64 0, metadata !879), !dbg !878
  %35 = load float* %arraydecay87, align 4, !dbg !880, !tbaa !645
  %sub.i308 = fsub float %33, %35, !dbg !880
  tail call void @llvm.dbg.value(metadata !{float %sub.i308}, i64 0, metadata !881), !dbg !880
  %arrayidx3.i310 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 1, !dbg !882
  %36 = load float* %arrayidx3.i310, align 4, !dbg !882, !tbaa !645
  %sub4.i311 = fsub float %32, %36, !dbg !882
  tail call void @llvm.dbg.value(metadata !{float %sub4.i311}, i64 0, metadata !883), !dbg !882
  %arrayidx6.i313 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 2, !dbg !884
  %37 = load float* %arrayidx6.i313, align 4, !dbg !884, !tbaa !645
  %sub7.i314 = fsub float %31, %37, !dbg !884
  tail call void @llvm.dbg.value(metadata !{float %sub7.i314}, i64 0, metadata !885), !dbg !884
  store float %sub.i308, float* %arraydecay67, align 4, !dbg !886, !tbaa !645
  store float %sub4.i311, float* %arrayidx9.i, align 4, !dbg !887, !tbaa !645
  store float %sub7.i314, float* %arrayidx10.i, align 4, !dbg !888, !tbaa !645
  br label %if.end105, !dbg !876

if.else:                                          ; preds = %for.body71
  %mul96 = fmul double %conv79, -5.000000e-01, !dbg !889
  %cmp97 = fcmp olt double %conv74, %mul96, !dbg !889
  br i1 %cmp97, label %if.then99, label %if.end105, !dbg !889

if.then99:                                        ; preds = %if.else
  %arraydecay103 = getelementptr inbounds [3 x float]* %arrayidx77, i64 0, i64 0, !dbg !890
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay67}, i64 0, metadata !891), !dbg !892
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay103}, i64 0, metadata !893), !dbg !892
  %38 = load float* %arraydecay103, align 4, !dbg !894, !tbaa !645
  %add.i315 = fadd float %33, %38, !dbg !894
  tail call void @llvm.dbg.value(metadata !{float %add.i315}, i64 0, metadata !895), !dbg !894
  %arrayidx3.i317 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 1, !dbg !896
  %39 = load float* %arrayidx3.i317, align 4, !dbg !896, !tbaa !645
  %add4.i318 = fadd float %32, %39, !dbg !896
  tail call void @llvm.dbg.value(metadata !{float %add4.i318}, i64 0, metadata !897), !dbg !896
  %arrayidx6.i320 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 2, !dbg !898
  %40 = load float* %arrayidx6.i320, align 4, !dbg !898, !tbaa !645
  %add7.i321 = fadd float %31, %40, !dbg !898
  tail call void @llvm.dbg.value(metadata !{float %add7.i321}, i64 0, metadata !899), !dbg !898
  store float %add.i315, float* %arraydecay67, align 4, !dbg !900, !tbaa !645
  store float %add4.i318, float* %arrayidx9.i, align 4, !dbg !901, !tbaa !645
  store float %add7.i321, float* %arrayidx10.i, align 4, !dbg !902, !tbaa !645
  br label %if.end105, !dbg !890

if.end105:                                        ; preds = %if.else, %if.then99, %if.then83
  %41 = phi float [ %31, %if.else ], [ %add7.i321, %if.then99 ], [ %sub7.i314, %if.then83 ]
  %42 = phi float [ %32, %if.else ], [ %add4.i318, %if.then99 ], [ %sub4.i311, %if.then83 ]
  %43 = phi float [ %33, %if.else ], [ %add.i315, %if.then99 ], [ %sub.i308, %if.then83 ]
  %44 = load float* %arrayidx73, align 4, !dbg !903, !tbaa !645
  %mul110 = fmul float %44, %44, !dbg !903
  %add111 = fadd float %dr2.0322, %mul110, !dbg !903
  call void @llvm.dbg.value(metadata !{float %add111}, i64 0, metadata !360), !dbg !903
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !872
  %45 = trunc i64 %indvars.iv to i32, !dbg !872
  %cmp69 = icmp sgt i32 %45, 0, !dbg !872
  br i1 %cmp69, label %if.end105.for.body71_crit_edge, label %for.end113, !dbg !872

if.end105.for.body71_crit_edge:                   ; preds = %if.end105
  %arrayidx73.phi.trans.insert = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv.next
  %.pre = load float* %arrayidx73.phi.trans.insert, align 4, !dbg !874, !tbaa !645
  br label %for.body71, !dbg !872

for.end113:                                       ; preds = %if.end105
  %conv114 = fpext float %add111 to double, !dbg !904
  %call115 = call double @sqrt(double %conv114) #7, !dbg !904
  %div = fdiv double 1.000000e+00, %call115, !dbg !904
  %conv116 = fptrunc double %div to float, !dbg !904
  call void @llvm.dbg.value(metadata !{float %conv116}, i64 0, metadata !361), !dbg !904
  %conv119 = fdiv float 1.000000e+00, %conv116, !dbg !905
  call void @llvm.dbg.value(metadata !{float %conv119}, i64 0, metadata !359), !dbg !905
  %mul120 = fmul float %conv116, %conv116, !dbg !906
  %mul121 = fmul float %conv116, %mul120, !dbg !906
  call void @llvm.dbg.value(metadata !{float %mul121}, i64 0, metadata !362), !dbg !906
  %call122 = call float @potential(float %0, float %1, float %conv119) #8, !dbg !907
  %sub = fsub float %conv116, %call122, !dbg !907
  %conv123 = fpext float %sub to double, !dbg !907
  %mul124 = fmul double %conv57, %conv123, !dbg !907
  %conv125 = fpext float %Vexcl.1327 to double, !dbg !907
  %add126 = fadd double %conv125, %mul124, !dbg !907
  %conv127 = fptrunc double %add126 to float, !dbg !907
  call void @llvm.dbg.value(metadata !{float %conv127}, i64 0, metadata !364), !dbg !907
  tail call void @llvm.dbg.value(metadata !{float %0}, i64 0, metadata !908), !dbg !910
  tail call void @llvm.dbg.value(metadata !{float %1}, i64 0, metadata !911), !dbg !910
  tail call void @llvm.dbg.value(metadata !{float %conv119}, i64 0, metadata !912), !dbg !910
  %cmp.i = fcmp ugt float %conv119, %0, !dbg !913
  br i1 %cmp.i, label %if.else.i, label %shiftfunction.exit, !dbg !913

if.else.i:                                        ; preds = %for.end113
  %cmp1.i = fcmp ult float %conv119, %1, !dbg !914
  br i1 %cmp1.i, label %if.end4.i, label %if.then2.i, !dbg !914

if.then2.i:                                       ; preds = %if.else.i
  %mul.i304 = fmul float %conv119, %conv119, !dbg !915
  %conv3.i = fdiv float -1.000000e+00, %mul.i304, !dbg !915
  br label %shiftfunction.exit, !dbg !915

if.end4.i:                                        ; preds = %if.else.i
  %sub.i305 = fsub float %conv119, %0, !dbg !916
  tail call void @llvm.dbg.value(metadata !{float %sub.i305}, i64 0, metadata !917), !dbg !916
  %46 = load float* @A, align 4, !dbg !918, !tbaa !645
  %mul5.i = fmul float %sub.i305, %46, !dbg !918
  %mul6.i306 = fmul float %sub.i305, %mul5.i, !dbg !918
  %47 = load float* @B, align 4, !dbg !918, !tbaa !645
  %mul7.i = fmul float %sub.i305, %47, !dbg !918
  %mul8.i = fmul float %sub.i305, %mul7.i, !dbg !918
  %mul9.i = fmul float %sub.i305, %mul8.i, !dbg !918
  %add.i307 = fadd float %mul6.i306, %mul9.i, !dbg !918
  br label %shiftfunction.exit, !dbg !918

shiftfunction.exit:                               ; preds = %for.end113, %if.then2.i, %if.end4.i
  %retval.0.i = phi float [ %conv3.i, %if.then2.i ], [ %add.i307, %if.end4.i ], [ 0.000000e+00, %for.end113 ]
  %sub129 = fsub float -0.000000e+00, %retval.0.i, !dbg !909
  %conv130 = fpext float %sub129 to double, !dbg !909
  %mul131 = fmul double %conv57, %conv130, !dbg !909
  %conv132 = fpext float %mul121 to double, !dbg !909
  %mul133 = fmul double %conv132, %mul131, !dbg !909
  %conv134 = fptrunc double %mul133 to float, !dbg !909
  call void @llvm.dbg.value(metadata !{float %conv134}, i64 0, metadata !363), !dbg !909
  %fabsf288 = call float @fabsf(float %conv134) #9, !dbg !919
  %48 = fpext float %fabsf288 to double, !dbg !919
  %cmp137 = fcmp ogt double %48, 1.200000e-38, !dbg !919
  %49 = load %struct._IO_FILE** @debug, align 8, !dbg !919, !tbaa !658
  %tobool140 = icmp ne %struct._IO_FILE* %49, null, !dbg !919
  %or.cond = and i1 %cmp137, %tobool140, !dbg !919
  br i1 %or.cond, label %if.then141, label %if.end145, !dbg !919

if.then141:                                       ; preds = %shiftfunction.exit
  %conv135 = fpext float %conv134 to double, !dbg !919
  %conv142 = fpext float %conv119 to double, !dbg !920
  %call144 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([36 x i8]* @.str9, i64 0, i64 0), i32 %21, i32 %20, double %conv142, double %conv135) #7, !dbg !920
  br label %if.end145, !dbg !920

if.end145:                                        ; preds = %if.then141, %shiftfunction.exit
  tail call void @llvm.dbg.value(metadata !{float %conv134}, i64 0, metadata !921), !dbg !922
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay67}, i64 0, metadata !923), !dbg !922
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay147}, i64 0, metadata !924), !dbg !922
  %mul.i = fmul float %conv134, %43, !dbg !925
  store float %mul.i, float* %arraydecay147, align 4, !dbg !925, !tbaa !645
  %mul3.i = fmul float %conv134, %42, !dbg !848
  store float %mul3.i, float* %arrayidx4.i, align 4, !dbg !848, !tbaa !645
  %mul6.i = fmul float %conv134, %41, !dbg !850
  store float %mul6.i, float* %arrayidx7.i, align 4, !dbg !850, !tbaa !645
  %50 = load [3 x float]** %f_pme, align 8, !dbg !851, !tbaa !658
  %arraydecay150 = getelementptr inbounds [3 x float]* %50, i64 %idxprom54, i64 0, !dbg !851
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay150}, i64 0, metadata !926), !dbg !927
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay147}, i64 0, metadata !928), !dbg !927
  %51 = load float* %arraydecay150, align 4, !dbg !929, !tbaa !645
  %add.i = fadd float %51, %mul.i, !dbg !929
  tail call void @llvm.dbg.value(metadata !{float %add.i}, i64 0, metadata !930), !dbg !929
  %arrayidx2.i298 = getelementptr inbounds [3 x float]* %50, i64 %idxprom54, i64 1, !dbg !931
  %52 = load float* %arrayidx2.i298, align 4, !dbg !931, !tbaa !645
  %add4.i = fadd float %52, %mul3.i, !dbg !931
  tail call void @llvm.dbg.value(metadata !{float %add4.i}, i64 0, metadata !932), !dbg !931
  %arrayidx5.i300 = getelementptr inbounds [3 x float]* %50, i64 %idxprom54, i64 2, !dbg !933
  %53 = load float* %arrayidx5.i300, align 4, !dbg !933, !tbaa !645
  %add7.i = fadd float %mul6.i, %53, !dbg !933
  tail call void @llvm.dbg.value(metadata !{float %add7.i}, i64 0, metadata !934), !dbg !933
  store float %add.i, float* %arraydecay150, align 4, !dbg !935, !tbaa !645
  store float %add4.i, float* %arrayidx2.i298, align 4, !dbg !936, !tbaa !645
  store float %add7.i, float* %arrayidx5.i300, align 4, !dbg !937, !tbaa !645
  %arraydecay155 = getelementptr inbounds [3 x float]* %50, i64 %indvars.iv345, i64 0, !dbg !938
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay155}, i64 0, metadata !939), !dbg !940
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay147}, i64 0, metadata !941), !dbg !940
  %54 = load float* %arraydecay155, align 4, !dbg !942, !tbaa !645
  %sub.i291 = fsub float %54, %mul.i, !dbg !942
  tail call void @llvm.dbg.value(metadata !{float %sub.i291}, i64 0, metadata !943), !dbg !942
  %arrayidx2.i292 = getelementptr inbounds [3 x float]* %50, i64 %indvars.iv345, i64 1, !dbg !944
  %55 = load float* %arrayidx2.i292, align 4, !dbg !944, !tbaa !645
  %sub4.i294 = fsub float %55, %mul3.i, !dbg !944
  tail call void @llvm.dbg.value(metadata !{float %sub4.i294}, i64 0, metadata !945), !dbg !944
  %arrayidx5.i295 = getelementptr inbounds [3 x float]* %50, i64 %indvars.iv345, i64 2, !dbg !946
  %56 = load float* %arrayidx5.i295, align 4, !dbg !946, !tbaa !645
  %sub7.i297 = fsub float %56, %mul6.i, !dbg !946
  tail call void @llvm.dbg.value(metadata !{float %sub7.i297}, i64 0, metadata !947), !dbg !946
  store float %sub.i291, float* %arraydecay155, align 4, !dbg !948, !tbaa !645
  store float %sub4.i294, float* %arrayidx2.i292, align 4, !dbg !949, !tbaa !645
  store float %sub7.i297, float* %arrayidx5.i295, align 4, !dbg !950, !tbaa !645
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !352), !dbg !951
  br label %for.cond161.preheader, !dbg !951

for.cond161.preheader:                            ; preds = %for.inc183.for.cond161.preheader_crit_edge, %if.end145
  %57 = phi float [ %43, %if.end145 ], [ %.pre349, %for.inc183.for.cond161.preheader_crit_edge ]
  %indvars.iv339 = phi i64 [ 0, %if.end145 ], [ %indvars.iv.next340, %for.inc183.for.cond161.preheader_crit_edge ]
  %conv167 = fpext float %57 to double, !dbg !953
  %mul168 = fmul double %conv167, 5.000000e-01, !dbg !953
  br label %for.body164, !dbg !955

for.body164:                                      ; preds = %for.body164, %for.cond161.preheader
  %indvars.iv337 = phi i64 [ 0, %for.cond161.preheader ], [ %indvars.iv.next338, %for.body164 ]
  %arrayidx170 = getelementptr inbounds [3 x float]* %df, i64 0, i64 %indvars.iv337, !dbg !953
  %58 = load float* %arrayidx170, align 4, !dbg !953, !tbaa !645
  %conv171 = fpext float %58 to double, !dbg !953
  %mul172 = fmul double %mul168, %conv171, !dbg !953
  %arrayidx176 = getelementptr inbounds [3 x float]* %lr_vir, i64 %indvars.iv339, i64 %indvars.iv337, !dbg !953
  %59 = load float* %arrayidx176, align 4, !dbg !953, !tbaa !645
  %conv177 = fpext float %59 to double, !dbg !953
  %add178 = fadd double %conv177, %mul172, !dbg !953
  %conv179 = fptrunc double %add178 to float, !dbg !953
  store float %conv179, float* %arrayidx176, align 4, !dbg !953, !tbaa !645
  %indvars.iv.next338 = add i64 %indvars.iv337, 1, !dbg !955
  %lftr.wideiv = trunc i64 %indvars.iv.next338 to i32, !dbg !955
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !955
  br i1 %exitcond, label %for.inc183, label %for.body164, !dbg !955

for.inc183:                                       ; preds = %for.body164
  %indvars.iv.next340 = add i64 %indvars.iv339, 1, !dbg !951
  %lftr.wideiv341 = trunc i64 %indvars.iv.next340 to i32, !dbg !951
  %exitcond342 = icmp eq i32 %lftr.wideiv341, 3, !dbg !951
  br i1 %exitcond342, label %for.inc188, label %for.inc183.for.cond161.preheader_crit_edge, !dbg !951

for.inc183.for.cond161.preheader_crit_edge:       ; preds = %for.inc183
  %arrayidx166.phi.trans.insert = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv.next340
  %.pre349 = load float* %arrayidx166.phi.trans.insert, align 4, !dbg !953, !tbaa !645
  br label %for.cond161.preheader, !dbg !951

for.inc188:                                       ; preds = %for.inc183, %for.body48, %if.then53
  %Vexcl.2 = phi float [ %Vexcl.1327, %if.then53 ], [ %Vexcl.1327, %for.body48 ], [ %conv127, %for.inc183 ]
  %indvars.iv.next344 = add i64 %indvars.iv343, 1, !dbg !854
  %60 = trunc i64 %indvars.iv.next344 to i32, !dbg !854
  %cmp46 = icmp slt i32 %60, %17, !dbg !854
  br i1 %cmp46, label %for.body48, label %for.cond26.loopexit, !dbg !854

for.end193:                                       ; preds = %for.cond26.loopexit, %if.end25
  %Vexcl.0.lcssa = phi float [ 0.000000e+00, %if.end25 ], [ %Vexcl.1.lcssa, %for.cond26.loopexit ]
  %.b = load i1* @shift_LRcorrection.bFirst, align 1
  %61 = load %struct._IO_FILE** @debug, align 8, !dbg !956, !tbaa !658
  %tobool196.not = icmp eq %struct._IO_FILE* %61, null, !dbg !956
  %or.cond205.not = or i1 %.b, %tobool196.not, !dbg !956
  %tobool198 = icmp eq %struct._IO_FILE* %fp, null, !dbg !956
  %or.cond290 = or i1 %or.cond205.not, %tobool198, !dbg !956
  br i1 %or.cond290, label %if.end202, label %if.then199, !dbg !956

if.then199:                                       ; preds = %for.end193
  %conv200 = fpext float %Vexcl.0.lcssa to double, !dbg !957
  %call201 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([33 x i8]* @.str10, i64 0, i64 0), double %conv200) #7, !dbg !957
  br label %if.end202, !dbg !957

if.end202:                                        ; preds = %for.end193, %if.then199
  store i1 true, i1* @shift_LRcorrection.bFirst, align 1
  %62 = load float* @shift_LRcorrection.Vself, align 4, !dbg !958, !tbaa !645
  %add203 = fadd float %Vexcl.0.lcssa, %62, !dbg !958
  %sub204 = fsub float -0.000000e+00, %add203, !dbg !958
  ret float %sub204, !dbg !958
}

; Function Attrs: nounwind optsize uwtable
define void @calc_ener(%struct._IO_FILE* %fp, i8* %title, i32 %bHeader, i32 %nmol, i32 %natoms, float* nocapture %phi, float* nocapture %charge, %struct.t_block* nocapture %excl) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !379), !dbg !959
  tail call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !380), !dbg !959
  tail call void @llvm.dbg.value(metadata !{i32 %bHeader}, i64 0, metadata !381), !dbg !959
  tail call void @llvm.dbg.value(metadata !{i32 %nmol}, i64 0, metadata !382), !dbg !959
  tail call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !383), !dbg !960
  tail call void @llvm.dbg.value(metadata !{float* %phi}, i64 0, metadata !384), !dbg !960
  tail call void @llvm.dbg.value(metadata !{float* %charge}, i64 0, metadata !385), !dbg !960
  tail call void @llvm.dbg.value(metadata !{%struct.t_block* %excl}, i64 0, metadata !386), !dbg !960
  tail call void @llvm.dbg.value(metadata !681, i64 0, metadata !392), !dbg !961
  tail call void @llvm.dbg.value(metadata !681, i64 0, metadata !395), !dbg !962
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !387), !dbg !963
  %cmp111 = icmp sgt i32 %natoms, 0, !dbg !963
  br i1 %cmp111, label %for.body, label %for.end, !dbg !963

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %for.body ], [ 0, %entry ]
  %qq.0113 = phi float [ %add8, %for.body ], [ 0.000000e+00, %entry ]
  %V.0112 = phi float [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds float* %charge, i64 %indvars.iv120, !dbg !965
  %0 = load float* %arrayidx, align 4, !dbg !965, !tbaa !645
  %arrayidx2 = getelementptr inbounds float* %phi, i64 %indvars.iv120, !dbg !965
  %1 = load float* %arrayidx2, align 4, !dbg !965, !tbaa !645
  %mul = fmul float %0, %1, !dbg !965
  tail call void @llvm.dbg.value(metadata !{float %mul}, i64 0, metadata !394), !dbg !965
  %add = fadd float %V.0112, %mul, !dbg !967
  tail call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !395), !dbg !967
  %mul7 = fmul float %0, %0, !dbg !968
  %add8 = fadd float %qq.0113, %mul7, !dbg !968
  tail call void @llvm.dbg.value(metadata !{float %add8}, i64 0, metadata !392), !dbg !968
  %indvars.iv.next121 = add i64 %indvars.iv120, 1, !dbg !963
  %lftr.wideiv = trunc i64 %indvars.iv.next121 to i32, !dbg !963
  %exitcond = icmp eq i32 %lftr.wideiv, %natoms, !dbg !963
  br i1 %exitcond, label %for.cond.for.end_crit_edge, label %for.body, !dbg !963

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %phitmp = fmul float %add, 5.000000e-01, !dbg !963
  %phitmp117 = fpext float %add8 to double, !dbg !963
  br label %for.end, !dbg !963

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %qq.0.lcssa = phi double [ %phitmp117, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  %V.0.lcssa = phi float [ %phitmp, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  tail call void @llvm.dbg.value(metadata !{float %V.0.lcssa}, i64 0, metadata !395), !dbg !969
  %2 = load float* @C, align 4, !dbg !970, !tbaa !645
  %conv11 = fpext float %2 to double, !dbg !970
  %mul12 = fmul double %conv11, 5.000000e-01, !dbg !970
  %mul13 = fmul double %mul12, 3.320636e+02, !dbg !970
  %mul14 = fmul double %mul13, 4.184000e+00, !dbg !970
  %mul15 = fmul double %mul14, 1.000000e-01, !dbg !970
  %mul17 = fmul double %qq.0.lcssa, %mul15, !dbg !970
  %conv18 = fptrunc double %mul17 to float, !dbg !970
  tail call void @llvm.dbg.value(metadata !{float %conv18}, i64 0, metadata !397), !dbg !970
  tail call void @llvm.dbg.value(metadata !681, i64 0, metadata !392), !dbg !971
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !387), !dbg !972
  %nr = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 1, !dbg !972
  %3 = load i32* %nr, align 4, !dbg !972, !tbaa !756
  %cmp20107 = icmp sgt i32 %3, 0, !dbg !972
  br i1 %cmp20107, label %for.body22.lr.ph, label %for.end48, !dbg !972

for.body22.lr.ph:                                 ; preds = %for.end
  %index = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 2, !dbg !974
  %4 = load i32** %index, align 8, !dbg !974, !tbaa !658
  %a = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 4, !dbg !976
  %.pre = load i32* %4, align 4, !dbg !974, !tbaa !756
  br label %for.body22, !dbg !972

for.cond19.loopexit:                              ; preds = %for.inc43, %for.body22
  %qq.2.lcssa = phi float [ %qq.1108, %for.body22 ], [ %qq.3, %for.inc43 ]
  %5 = trunc i64 %indvars.iv.next119 to i32, !dbg !972
  %cmp20 = icmp slt i32 %5, %3, !dbg !972
  br i1 %cmp20, label %for.body22, label %for.end48, !dbg !972

for.body22:                                       ; preds = %for.body22.lr.ph, %for.cond19.loopexit
  %6 = phi i32 [ %.pre, %for.body22.lr.ph ], [ %7, %for.cond19.loopexit ], !dbg !974
  %indvars.iv118 = phi i64 [ 0, %for.body22.lr.ph ], [ %indvars.iv.next119, %for.cond19.loopexit ]
  %qq.1108 = phi float [ 0.000000e+00, %for.body22.lr.ph ], [ %qq.2.lcssa, %for.cond19.loopexit ]
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !388), !dbg !974
  %indvars.iv.next119 = add i64 %indvars.iv118, 1, !dbg !972
  %arrayidx28 = getelementptr inbounds i32* %4, i64 %indvars.iv.next119, !dbg !979
  %7 = load i32* %arrayidx28, align 4, !dbg !979, !tbaa !756
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !389), !dbg !979
  %arrayidx30 = getelementptr inbounds float* %charge, i64 %indvars.iv118, !dbg !980
  %8 = load float* %arrayidx30, align 4, !dbg !980, !tbaa !645
  tail call void @llvm.dbg.value(metadata !{float %8}, i64 0, metadata !393), !dbg !980
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !390), !dbg !981
  %cmp32104 = icmp slt i32 %6, %7, !dbg !981
  br i1 %cmp32104, label %for.body34.lr.ph, label %for.cond19.loopexit, !dbg !981

for.body34.lr.ph:                                 ; preds = %for.body22
  %9 = load i32** %a, align 8, !dbg !976, !tbaa !658
  %10 = sext i32 %6 to i64
  br label %for.body34, !dbg !981

for.body34:                                       ; preds = %for.body34.lr.ph, %for.inc43
  %indvars.iv = phi i64 [ %10, %for.body34.lr.ph ], [ %indvars.iv.next, %for.inc43 ]
  %qq.2105 = phi float [ %qq.1108, %for.body34.lr.ph ], [ %qq.3, %for.inc43 ]
  %arrayidx36 = getelementptr inbounds i32* %9, i64 %indvars.iv, !dbg !976
  %11 = load i32* %arrayidx36, align 4, !dbg !976, !tbaa !756
  tail call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !391), !dbg !976
  %12 = trunc i64 %indvars.iv118 to i32, !dbg !982
  %cmp37 = icmp eq i32 %11, %12, !dbg !982
  br i1 %cmp37, label %for.inc43, label %if.then, !dbg !982

if.then:                                          ; preds = %for.body34
  %idxprom39 = sext i32 %11 to i64, !dbg !983
  %arrayidx40 = getelementptr inbounds float* %charge, i64 %idxprom39, !dbg !983
  %13 = load float* %arrayidx40, align 4, !dbg !983, !tbaa !645
  %mul41 = fmul float %8, %13, !dbg !983
  %add42 = fadd float %qq.2105, %mul41, !dbg !983
  tail call void @llvm.dbg.value(metadata !{float %add42}, i64 0, metadata !392), !dbg !983
  br label %for.inc43, !dbg !983

for.inc43:                                        ; preds = %for.body34, %if.then
  %qq.3 = phi float [ %add42, %if.then ], [ %qq.2105, %for.body34 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !981
  %14 = trunc i64 %indvars.iv.next to i32, !dbg !981
  %cmp32 = icmp slt i32 %14, %7, !dbg !981
  br i1 %cmp32, label %for.body34, label %for.cond19.loopexit, !dbg !981

for.end48:                                        ; preds = %for.cond19.loopexit, %for.end
  %qq.1.lcssa = phi float [ 0.000000e+00, %for.end ], [ %qq.2.lcssa, %for.cond19.loopexit ]
  %conv49 = fpext float %qq.1.lcssa to double, !dbg !984
  %mul50 = fmul double %conv49, 5.000000e-01, !dbg !984
  %mul52 = fmul double %mul50, %conv11, !dbg !984
  %mul53 = fmul double %mul52, 3.320636e+02, !dbg !984
  %mul54 = fmul double %mul53, 4.184000e+00, !dbg !984
  %mul55 = fmul double %mul54, 1.000000e-01, !dbg !984
  %conv56 = fptrunc double %mul55 to float, !dbg !984
  tail call void @llvm.dbg.value(metadata !{float %conv56}, i64 0, metadata !396), !dbg !984
  %sub = fsub float %V.0.lcssa, %conv18, !dbg !985
  %sub57 = fsub float %sub, %conv56, !dbg !985
  tail call void @llvm.dbg.value(metadata !{float %sub57}, i64 0, metadata !398), !dbg !985
  %tobool = icmp eq i32 %bHeader, 0, !dbg !986
  %tobool58 = icmp eq %struct._IO_FILE* %fp, null, !dbg !986
  %or.cond = or i1 %tobool, %tobool58, !dbg !986
  br i1 %or.cond, label %if.end60, label %if.then59, !dbg !986

if.then59:                                        ; preds = %for.end48
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([36 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0)) #7, !dbg !987
  br label %if.end60, !dbg !989

if.end60:                                         ; preds = %for.end48, %if.then59
  br i1 %tobool58, label %if.end70, label %if.then62, !dbg !990

if.then62:                                        ; preds = %if.end60
  %conv63 = fpext float %V.0.lcssa to double, !dbg !991
  %conv64 = fpext float %conv18 to double, !dbg !991
  %conv65 = fpext float %conv56 to double, !dbg !991
  %conv66 = fpext float %sub57 to double, !dbg !991
  %conv67 = sitofp i32 %nmol to float, !dbg !991
  %div = fdiv float %sub57, %conv67, !dbg !991
  %conv68 = fpext float %div to double, !dbg !991
  %call69 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([46 x i8]* @.str18, i64 0, i64 0), i8* %title, double %conv63, double %conv64, double %conv65, double %conv66, double %conv68) #7, !dbg !991
  br label %if.end70, !dbg !991

if.end70:                                         ; preds = %if.end60, %if.then62
  ret void, !dbg !992
}

; Function Attrs: nounwind optsize readonly uwtable
define float @phi_aver(i32 %natoms, float* nocapture %phi) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !403), !dbg !993
  tail call void @llvm.dbg.value(metadata !{float* %phi}, i64 0, metadata !404), !dbg !993
  tail call void @llvm.dbg.value(metadata !681, i64 0, metadata !405), !dbg !994
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !406), !dbg !995
  %cmp4 = icmp sgt i32 %natoms, 0, !dbg !995
  br i1 %cmp4, label %for.body, label %for.end, !dbg !995

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %phitot.05 = phi float [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds float* %phi, i64 %indvars.iv, !dbg !997
  %0 = load float* %arrayidx, align 4, !dbg !997, !tbaa !645
  %add = fadd float %phitot.05, %0, !dbg !997
  tail call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !405), !dbg !997
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !995
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !995
  %exitcond = icmp eq i32 %lftr.wideiv, %natoms, !dbg !995
  br i1 %exitcond, label %for.end, label %for.body, !dbg !995

for.end:                                          ; preds = %for.body, %entry
  %phitot.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %conv = sitofp i32 %natoms to float, !dbg !998
  %div = fdiv float %phitot.0.lcssa, %conv, !dbg !998
  ret float %div, !dbg !998
}

; Function Attrs: nounwind optsize uwtable
define float @symmetrize_phi(%struct._IO_FILE* %log, i32 %natoms, float* nocapture %phi, i32 %bVerbose) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !411), !dbg !999
  tail call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !412), !dbg !999
  tail call void @llvm.dbg.value(metadata !{float* %phi}, i64 0, metadata !413), !dbg !999
  tail call void @llvm.dbg.value(metadata !{i32 %bVerbose}, i64 0, metadata !414), !dbg !999
  tail call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !1000), !dbg !1002
  tail call void @llvm.dbg.value(metadata !{float* %phi}, i64 0, metadata !1003), !dbg !1002
  tail call void @llvm.dbg.value(metadata !681, i64 0, metadata !1004), !dbg !1005
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !1006), !dbg !1007
  %cmp4.i = icmp sgt i32 %natoms, 0, !dbg !1007
  br i1 %cmp4.i, label %for.body.i, label %phi_aver.exit, !dbg !1007

for.body.i:                                       ; preds = %entry, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %entry ]
  %phitot.05.i = phi float [ %add.i, %for.body.i ], [ 0.000000e+00, %entry ]
  %arrayidx.i = getelementptr inbounds float* %phi, i64 %indvars.iv.i, !dbg !1008
  %0 = load float* %arrayidx.i, align 4, !dbg !1008, !tbaa !645
  %add.i = fadd float %phitot.05.i, %0, !dbg !1008
  tail call void @llvm.dbg.value(metadata !{float %add.i}, i64 0, metadata !1004), !dbg !1008
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !1007
  %lftr.wideiv12 = trunc i64 %indvars.iv.next.i to i32, !dbg !1007
  %exitcond13 = icmp eq i32 %lftr.wideiv12, %natoms, !dbg !1007
  br i1 %exitcond13, label %phi_aver.exit, label %for.body.i, !dbg !1007

phi_aver.exit:                                    ; preds = %for.body.i, %entry
  %phitot.0.lcssa.i = phi float [ 0.000000e+00, %entry ], [ %add.i, %for.body.i ]
  %conv.i = sitofp i32 %natoms to float, !dbg !1009
  %div.i = fdiv float %phitot.0.lcssa.i, %conv.i, !dbg !1009
  tail call void @llvm.dbg.value(metadata !{float %div.i}, i64 0, metadata !415), !dbg !1001
  %tobool = icmp eq i32 %bVerbose, 0, !dbg !1010
  %tobool1 = icmp eq %struct._IO_FILE* %log, null, !dbg !1010
  %or.cond = or i1 %tobool, %tobool1, !dbg !1010
  br i1 %or.cond, label %for.cond.preheader, label %if.then, !dbg !1010

if.then:                                          ; preds = %phi_aver.exit
  %conv = fpext float %div.i to double, !dbg !1011
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([19 x i8]* @.str19, i64 0, i64 0), double %conv) #7, !dbg !1011
  br label %for.cond.preheader, !dbg !1011

for.cond.preheader:                               ; preds = %phi_aver.exit, %if.then
  br i1 %cmp4.i, label %for.body, label %for.end, !dbg !1012

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds float* %phi, i64 %indvars.iv, !dbg !1014
  %1 = load float* %arrayidx, align 4, !dbg !1014, !tbaa !645
  %sub = fsub float %1, %div.i, !dbg !1014
  store float %sub, float* %arrayidx, align 4, !dbg !1014, !tbaa !645
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1012
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1012
  %exitcond = icmp eq i32 %lftr.wideiv, %natoms, !dbg !1012
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1012

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret float %div.i, !dbg !1015
}

; Function Attrs: nounwind optsize uwtable
define void @plot_phi(i8* %fn, float* nocapture %box, i32 %natoms, [3 x float]* nocapture %x, float* nocapture %phi) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !421), !dbg !1016
  tail call void @llvm.dbg.value(metadata !{float* %box}, i64 0, metadata !422), !dbg !1016
  tail call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !423), !dbg !1016
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !424), !dbg !1016
  tail call void @llvm.dbg.value(metadata !{float* %phi}, i64 0, metadata !425), !dbg !1016
  %0 = load float* %phi, align 4, !dbg !1017, !tbaa !645
  tail call void @llvm.dbg.value(metadata !{float %0}, i64 0, metadata !427), !dbg !1017
  tail call void @llvm.dbg.value(metadata !681, i64 0, metadata !430), !dbg !1018
  tail call void @llvm.dbg.value(metadata !681, i64 0, metadata !429), !dbg !1018
  tail call void @llvm.dbg.value(metadata !681, i64 0, metadata !428), !dbg !1018
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !436), !dbg !1019
  %cmp138 = icmp sgt i32 %natoms, 0, !dbg !1019
  br i1 %cmp138, label %for.body, label %for.end, !dbg !1019

for.body:                                         ; preds = %entry, %for.body.for.body_crit_edge
  %1 = phi float [ %.pre, %for.body.for.body_crit_edge ], [ %0, %entry ]
  %indvars.iv141 = phi i64 [ %phitmp145, %for.body.for.body_crit_edge ], [ 1, %entry ]
  %phi_max.0139 = phi float [ %phi_max.0.fabsf112, %for.body.for.body_crit_edge ], [ %0, %entry ]
  %fabsf112 = tail call float @fabsf(float %1) #9, !dbg !1021
  %cmp3 = fcmp ogt float %phi_max.0139, %fabsf112, !dbg !1021
  %phi_max.0.fabsf112 = select i1 %cmp3, float %phi_max.0139, float %fabsf112, !dbg !1021
  tail call void @llvm.dbg.value(metadata !{float %phi_max.0.fabsf112}, i64 0, metadata !427), !dbg !1021
  %lftr.wideiv143 = trunc i64 %indvars.iv141 to i32, !dbg !1019
  %exitcond144 = icmp eq i32 %lftr.wideiv143, %natoms, !dbg !1019
  br i1 %exitcond144, label %for.end, label %for.body.for.body_crit_edge, !dbg !1019

for.body.for.body_crit_edge:                      ; preds = %for.body
  %arrayidx1.phi.trans.insert = getelementptr inbounds float* %phi, i64 %indvars.iv141
  %.pre = load float* %arrayidx1.phi.trans.insert, align 4, !dbg !1021, !tbaa !645
  %phitmp145 = add i64 %indvars.iv141, 1, !dbg !1019
  br label %for.body, !dbg !1019

for.end:                                          ; preds = %for.body, %entry
  %phi_max.0.lcssa = phi float [ %0, %entry ], [ %phi_max.0.fabsf112, %for.body ]
  %fabsf = tail call float @fabsf(float %phi_max.0.lcssa) #9, !dbg !1022
  %2 = fpext float %fabsf to double, !dbg !1022
  %cmp13 = fcmp olt double %2, 1.200000e-38, !dbg !1022
  br i1 %cmp13, label %if.then, label %if.end, !dbg !1022

if.then:                                          ; preds = %for.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !1023, !tbaa !658
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str20, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %3), !dbg !1023
  br label %return, !dbg !1025

if.end:                                           ; preds = %for.end
  tail call void @llvm.dbg.value(metadata !1026, i64 0, metadata !435), !dbg !1027
  tail call void @llvm.dbg.value(metadata !1028, i64 0, metadata !431), !dbg !1029
  %5 = load float* %box, align 4, !dbg !1030, !tbaa !645
  %mul = fmul float %5, 1.500000e+01, !dbg !1030
  %add = fadd float %mul, 4.000000e+01, !dbg !1030
  %arrayidx18 = getelementptr inbounds float* %box, i64 1, !dbg !1030
  %6 = load float* %arrayidx18, align 4, !dbg !1030, !tbaa !645
  %mul19 = fmul float %6, 1.500000e+01, !dbg !1030
  %add21 = fadd float %mul19, 4.000000e+01, !dbg !1030
  %call22 = tail call %struct._IO_FILE* @ps_open(i8* %fn, float 0.000000e+00, float 0.000000e+00, float %add, float %add21) #7, !dbg !1030
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call22}, i64 0, metadata !426), !dbg !1030
  tail call void @ps_translate(%struct._IO_FILE* %call22, float 2.000000e+01, float 2.000000e+01) #7, !dbg !1031
  tail call void @ps_color(%struct._IO_FILE* %call22, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00) #7, !dbg !1032
  %7 = load float* %box, align 4, !dbg !1033, !tbaa !645
  %mul24 = fmul float %7, 1.500000e+01, !dbg !1033
  %sub = fadd float %mul24, -1.000000e+00, !dbg !1033
  %8 = load float* %arrayidx18, align 4, !dbg !1033, !tbaa !645
  %mul26 = fmul float %8, 1.500000e+01, !dbg !1033
  %sub27 = fadd float %mul26, -1.000000e+00, !dbg !1033
  tail call void @ps_box(%struct._IO_FILE* %call22, float 1.000000e+00, float 1.000000e+00, float %sub, float %sub27) #7, !dbg !1033
  tail call void @llvm.dbg.value(metadata !1034, i64 0, metadata !432), !dbg !1035
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !436), !dbg !1036
  br i1 %cmp138, label %for.body34, label %for.end69, !dbg !1036

for.body34:                                       ; preds = %if.end, %if.end51
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end51 ], [ 0, %if.end ]
  tail call void @llvm.dbg.value(metadata !1038, i64 0, metadata !430), !dbg !1039
  tail call void @llvm.dbg.value(metadata !1038, i64 0, metadata !429), !dbg !1039
  tail call void @llvm.dbg.value(metadata !1038, i64 0, metadata !428), !dbg !1039
  %arrayidx36 = getelementptr inbounds float* %phi, i64 %indvars.iv, !dbg !1041
  %9 = load float* %arrayidx36, align 4, !dbg !1041, !tbaa !645
  %cmp37 = fcmp olt float %9, 0.000000e+00, !dbg !1041
  %div = fdiv float %9, %phi_max.0.lcssa, !dbg !1042
  br i1 %cmp37, label %if.then39, label %if.else, !dbg !1041

if.then39:                                        ; preds = %for.body34
  %conv44 = fadd float %div, 1.000000e+00, !dbg !1042
  tail call void @llvm.dbg.value(metadata !{float %conv44}, i64 0, metadata !430), !dbg !1042
  tail call void @llvm.dbg.value(metadata !{float %conv44}, i64 0, metadata !429), !dbg !1042
  %phitmp130 = fpext float %conv44 to double, !dbg !1042
  %phitmp131 = fmul double %phitmp130, 3.200000e+01, !dbg !1042
  %phitmp132 = fptosi double %phitmp131 to i32, !dbg !1042
  %phitmp133 = sitofp i32 %phitmp132 to double, !dbg !1042
  %phitmp134 = fmul double %phitmp133, 3.125000e-02, !dbg !1042
  %phitmp135 = fptrunc double %phitmp134 to float, !dbg !1042
  br label %if.end51, !dbg !1042

if.else:                                          ; preds = %for.body34
  %conv50 = fsub float 1.000000e+00, %div, !dbg !1043
  tail call void @llvm.dbg.value(metadata !{float %conv50}, i64 0, metadata !429), !dbg !1043
  tail call void @llvm.dbg.value(metadata !{float %conv50}, i64 0, metadata !428), !dbg !1043
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
  tail call void @llvm.dbg.value(metadata !{float %rr.0}, i64 0, metadata !428), !dbg !1044
  tail call void @llvm.dbg.value(metadata !{float %gg.0}, i64 0, metadata !1045), !dbg !1047
  %conv.i119 = fpext float %gg.0 to double, !dbg !1048
  %mul.i120 = fmul double %conv.i119, 3.200000e+01, !dbg !1048
  %conv1.i121 = fptosi double %mul.i120 to i32, !dbg !1048
  tail call void @llvm.dbg.value(metadata !{i32 %conv1.i121}, i64 0, metadata !1049), !dbg !1048
  %conv2.i122 = sitofp i32 %conv1.i121 to double, !dbg !1050
  %div.i123 = fmul double %conv2.i122, 3.125000e-02, !dbg !1050
  %conv3.i124 = fptrunc double %div.i123 to float, !dbg !1050
  tail call void @llvm.dbg.value(metadata !{float %conv3.i124}, i64 0, metadata !429), !dbg !1046
  tail call void @llvm.dbg.value(metadata !{float %bb.0}, i64 0, metadata !430), !dbg !1051
  tail call void @ps_color(%struct._IO_FILE* %call22, float %rr.0, float %conv3.i124, float %bb.0) #7, !dbg !1052
  %arrayidx57 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0, !dbg !1053
  %10 = load float* %arrayidx57, align 4, !dbg !1053, !tbaa !645
  %mul58 = fmul float %10, 1.500000e+01, !dbg !1053
  tail call void @llvm.dbg.value(metadata !{float %mul58}, i64 0, metadata !433), !dbg !1053
  %arrayidx61 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1, !dbg !1054
  %11 = load float* %arrayidx61, align 4, !dbg !1054, !tbaa !645
  %mul62 = fmul float %11, 1.500000e+01, !dbg !1054
  tail call void @llvm.dbg.value(metadata !{float %mul62}, i64 0, metadata !434), !dbg !1054
  %sub63 = fadd float %mul58, -2.250000e+00, !dbg !1055
  %sub64 = fadd float %mul62, -2.250000e+00, !dbg !1055
  %add65 = fadd float %mul58, 2.250000e+00, !dbg !1055
  %add66 = fadd float %mul62, 2.250000e+00, !dbg !1055
  tail call void @ps_fillbox(%struct._IO_FILE* %call22, float %sub63, float %sub64, float %add65, float %add66) #7, !dbg !1055
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1036
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1036
  %exitcond = icmp eq i32 %lftr.wideiv, %natoms, !dbg !1036
  br i1 %exitcond, label %for.end69, label %for.body34, !dbg !1036

for.end69:                                        ; preds = %if.end51, %if.end
  tail call void @ps_close(%struct._IO_FILE* %call22) #7, !dbg !1056
  br label %return, !dbg !1056

return:                                           ; preds = %for.end69, %if.then
  ret void, !dbg !1056
}

; Function Attrs: optsize
declare %struct._IO_FILE* @ps_open(i8*, float, float, float, float) #2

; Function Attrs: optsize
declare void @ps_translate(%struct._IO_FILE*, float, float) #2

; Function Attrs: optsize
declare void @ps_color(%struct._IO_FILE*, float, float, float) #2

; Function Attrs: optsize
declare void @ps_box(%struct._IO_FILE*, float, float, float, float) #2

; Function Attrs: optsize
declare void @ps_fillbox(%struct._IO_FILE*, float, float, float, float) #2

; Function Attrs: optsize
declare void @ps_close(%struct._IO_FILE*) #2

; Function Attrs: nounwind optsize uwtable
define void @plot_qtab(i8* %fn, i32 %nx, i32 %ny, i32 %nz, float*** nocapture %qtab) #0 {
entry:
  %box = alloca [3 x float], align 4
  call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !443), !dbg !1057
  call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !444), !dbg !1057
  call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !445), !dbg !1057
  call void @llvm.dbg.value(metadata !{i32 %nz}, i64 0, metadata !446), !dbg !1057
  call void @llvm.dbg.value(metadata !{float*** %qtab}, i64 0, metadata !447), !dbg !1057
  call void @llvm.dbg.declare(metadata !{[3 x float]* %box}, metadata !448), !dbg !1058
  %conv = sitofp i32 %nx to float, !dbg !1059
  %arrayidx = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !1059
  store float %conv, float* %arrayidx, align 4, !dbg !1059, !tbaa !645
  %conv1 = sitofp i32 %ny to float, !dbg !1060
  %arrayidx2 = getelementptr inbounds [3 x float]* %box, i64 0, i64 1, !dbg !1060
  store float %conv1, float* %arrayidx2, align 4, !dbg !1060, !tbaa !645
  %conv3 = sitofp i32 %nz to float, !dbg !1061
  %arrayidx4 = getelementptr inbounds [3 x float]* %box, i64 0, i64 2, !dbg !1061
  store float %conv3, float* %arrayidx4, align 4, !dbg !1061, !tbaa !645
  %mul = fmul float %conv, %conv1, !dbg !1062
  %mul8 = fmul float %conv3, %mul, !dbg !1062
  %conv9 = fptosi float %mul8 to i32, !dbg !1062
  call void @llvm.dbg.value(metadata !{i32 %conv9}, i64 0, metadata !452), !dbg !1062
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str1, i64 0, i64 0), i32 523, i32 %conv9, i32 12) #7, !dbg !1063
  %0 = bitcast i8* %call to [3 x float]*, !dbg !1063
  call void @llvm.dbg.value(metadata !{[3 x float]* %0}, i64 0, metadata !449), !dbg !1063
  %call10 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str1, i64 0, i64 0), i32 524, i32 %conv9, i32 4) #7, !dbg !1064
  %1 = bitcast i8* %call10 to float*, !dbg !1064
  call void @llvm.dbg.value(metadata !{float* %1}, i64 0, metadata !450), !dbg !1064
  %div = sdiv i32 %nx, 2, !dbg !1065
  call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !444), !dbg !1065
  %div11 = sdiv i32 %ny, 2, !dbg !1066
  call void @llvm.dbg.value(metadata !{i32 %div11}, i64 0, metadata !445), !dbg !1066
  %div12 = sdiv i32 %nz, 2, !dbg !1067
  call void @llvm.dbg.value(metadata !{i32 %div12}, i64 0, metadata !446), !dbg !1067
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !451), !dbg !1068
  %sub = sub i32 0, %div, !dbg !1069
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !453), !dbg !1069
  %cmp104 = icmp sgt i32 %div, %sub, !dbg !1069
  br i1 %cmp104, label %for.body.lr.ph, label %for.end60, !dbg !1069

for.body.lr.ph:                                   ; preds = %entry
  %sub14 = sub i32 0, %div11, !dbg !1071
  %cmp16100 = icmp sgt i32 %div11, %sub14, !dbg !1071
  %sub19 = sub nsw i32 0, %div12, !dbg !1073
  %cmp2197 = icmp sgt i32 %div12, %sub19, !dbg !1073
  %2 = sext i32 %sub19 to i64
  %3 = sext i32 %div12 to i64, !dbg !1069
  %4 = shl i32 %div12, 1, !dbg !1069
  %5 = sext i32 %sub14 to i64
  %6 = sext i32 %div11 to i64, !dbg !1069
  %7 = sext i32 %sub to i64
  %8 = sext i32 %div to i64, !dbg !1069
  br label %for.body, !dbg !1069

for.body:                                         ; preds = %for.body.lr.ph, %for.inc58
  %indvars.iv113 = phi i64 [ %7, %for.body.lr.ph ], [ %indvars.iv.next114, %for.inc58 ]
  %i.0105 = phi i32 [ 0, %for.body.lr.ph ], [ %i.1.lcssa, %for.inc58 ]
  call void @llvm.dbg.value(metadata !{i32 %sub14}, i64 0, metadata !454), !dbg !1071
  br i1 %cmp16100, label %for.body18.lr.ph, label %for.inc58, !dbg !1071

for.body18.lr.ph:                                 ; preds = %for.body
  %9 = add nsw i64 %indvars.iv113, %8, !dbg !1075
  %10 = trunc i64 %9 to i32, !dbg !1075
  %conv24 = sitofp i32 %10 to double, !dbg !1075
  %add25 = fadd double %conv24, 5.000000e-01, !dbg !1075
  %conv26 = fptrunc double %add25 to float, !dbg !1075
  %arrayidx49 = getelementptr inbounds float*** %qtab, i64 %9, !dbg !1077
  br label %for.body18, !dbg !1071

for.body18:                                       ; preds = %for.body18.lr.ph, %for.inc55
  %indvars.iv110 = phi i64 [ %5, %for.body18.lr.ph ], [ %indvars.iv.next111, %for.inc55 ]
  %i.1101 = phi i32 [ %i.0105, %for.body18.lr.ph ], [ %i.2.lcssa, %for.inc55 ]
  call void @llvm.dbg.value(metadata !{i32 %sub19}, i64 0, metadata !455), !dbg !1073
  br i1 %cmp2197, label %for.body23.lr.ph, label %for.inc55, !dbg !1073

for.body23.lr.ph:                                 ; preds = %for.body18
  %11 = add nsw i64 %indvars.iv110, %6, !dbg !1078
  %12 = trunc i64 %11 to i32, !dbg !1078
  %conv30 = sitofp i32 %12 to double, !dbg !1078
  %add31 = fadd double %conv30, 5.000000e-01, !dbg !1078
  %conv32 = fptrunc double %add31 to float, !dbg !1078
  %13 = load float*** %arrayidx49, align 8, !dbg !1077, !tbaa !658
  %arrayidx50 = getelementptr inbounds float** %13, i64 %11, !dbg !1077
  %14 = load float** %arrayidx50, align 8, !dbg !1077, !tbaa !658
  %15 = sext i32 %i.1101 to i64, !dbg !1073
  br label %for.body23, !dbg !1073

for.body23:                                       ; preds = %for.body23.lr.ph, %for.body23
  %indvars.iv108 = phi i64 [ %15, %for.body23.lr.ph ], [ %indvars.iv.next109, %for.body23 ], !dbg !1073
  %indvars.iv = phi i64 [ %2, %for.body23.lr.ph ], [ %indvars.iv.next, %for.body23 ]
  %arrayidx28 = getelementptr inbounds [3 x float]* %0, i64 %indvars.iv108, i64 0, !dbg !1075
  store float %conv26, float* %arrayidx28, align 4, !dbg !1075, !tbaa !645
  %arrayidx35 = getelementptr inbounds [3 x float]* %0, i64 %indvars.iv108, i64 1, !dbg !1078
  store float %conv32, float* %arrayidx35, align 4, !dbg !1078, !tbaa !645
  %16 = add nsw i64 %indvars.iv, %3, !dbg !1079
  %17 = trunc i64 %16 to i32, !dbg !1079
  %conv37 = sitofp i32 %17 to double, !dbg !1079
  %add38 = fadd double %conv37, 5.000000e-01, !dbg !1079
  %conv39 = fptrunc double %add38 to float, !dbg !1079
  %arrayidx42 = getelementptr inbounds [3 x float]* %0, i64 %indvars.iv108, i64 2, !dbg !1079
  store float %conv39, float* %arrayidx42, align 4, !dbg !1079, !tbaa !645
  %arrayidx51 = getelementptr inbounds float* %14, i64 %16, !dbg !1077
  %18 = load float* %arrayidx51, align 4, !dbg !1077, !tbaa !645
  %arrayidx53 = getelementptr inbounds float* %1, i64 %indvars.iv108, !dbg !1077
  store float %18, float* %arrayidx53, align 4, !dbg !1077, !tbaa !645
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1073
  %indvars.iv.next109 = add i64 %indvars.iv108, 1, !dbg !1073
  call void @llvm.dbg.value(metadata !{i32 %20}, i64 0, metadata !451), !dbg !1073
  %19 = trunc i64 %indvars.iv.next to i32, !dbg !1073
  %cmp21 = icmp slt i32 %19, %div12, !dbg !1073
  br i1 %cmp21, label %for.body23, label %for.cond20.for.inc55_crit_edge, !dbg !1073

for.cond20.for.inc55_crit_edge:                   ; preds = %for.body23
  %20 = add i32 %4, %i.1101, !dbg !1073
  br label %for.inc55, !dbg !1073

for.inc55:                                        ; preds = %for.cond20.for.inc55_crit_edge, %for.body18
  %i.2.lcssa = phi i32 [ %20, %for.cond20.for.inc55_crit_edge ], [ %i.1101, %for.body18 ]
  %indvars.iv.next111 = add i64 %indvars.iv110, 1, !dbg !1071
  %21 = trunc i64 %indvars.iv.next111 to i32, !dbg !1071
  %cmp16 = icmp slt i32 %21, %div11, !dbg !1071
  br i1 %cmp16, label %for.body18, label %for.inc58, !dbg !1071

for.inc58:                                        ; preds = %for.inc55, %for.body
  %i.1.lcssa = phi i32 [ %i.0105, %for.body ], [ %i.2.lcssa, %for.inc55 ]
  %indvars.iv.next114 = add i64 %indvars.iv113, 1, !dbg !1069
  %22 = trunc i64 %indvars.iv.next114 to i32, !dbg !1069
  %cmp = icmp slt i32 %22, %div, !dbg !1069
  br i1 %cmp, label %for.body, label %for.end60, !dbg !1069

for.end60:                                        ; preds = %for.inc58, %entry
  call void @plot_phi(i8* %fn, float* %arrayidx, i32 %conv9, [3 x float]* %0, float* %1) #8, !dbg !1080
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str1, i64 0, i64 0), i32 540, i8* %call) #7, !dbg !1081
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str1, i64 0, i64 0), i32 541, i8* %call10) #7, !dbg !1082
  ret void, !dbg !1083
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @print_phi(i8* %fn, i32 %natoms, [3 x float]* nocapture %x, float* nocapture %phi) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !460), !dbg !1084
  tail call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !461), !dbg !1084
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !462), !dbg !1084
  tail call void @llvm.dbg.value(metadata !{float* %phi}, i64 0, metadata !463), !dbg !1084
  %call = tail call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str23, i64 0, i64 0)) #7, !dbg !1085
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !464), !dbg !1085
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !465), !dbg !1086
  %cmp5 = icmp sgt i32 %natoms, 0, !dbg !1086
  br i1 %cmp5, label %for.body, label %for.end, !dbg !1086

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %phi, i64 %indvars.iv, !dbg !1088
  %0 = load float* %arrayidx, align 4, !dbg !1088, !tbaa !645
  %conv = fpext float %0 to double, !dbg !1088
  %1 = trunc i64 %indvars.iv to i32, !dbg !1088
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([14 x i8]* @.str24, i64 0, i64 0), i32 %1, double %conv) #7, !dbg !1088
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1086
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1086
  %exitcond = icmp eq i32 %lftr.wideiv, %natoms, !dbg !1086
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1086

for.end:                                          ; preds = %for.body, %entry
  tail call void @ffclose(%struct._IO_FILE* %call) #7, !dbg !1089
  ret void, !dbg !1090
}

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #2

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind optsize uwtable
define void @write_pqr(i8* %fn, %struct.t_atoms* nocapture %atoms, [3 x float]* nocapture %x, float* nocapture %phi, float %dx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !529), !dbg !1091
  tail call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !530), !dbg !1091
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !531), !dbg !1091
  tail call void @llvm.dbg.value(metadata !{float* %phi}, i64 0, metadata !532), !dbg !1091
  tail call void @llvm.dbg.value(metadata !{float %dx}, i64 0, metadata !533), !dbg !1091
  %call = tail call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str23, i64 0, i64 0)) #7, !dbg !1092
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !534), !dbg !1092
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !535), !dbg !1093
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !1093
  %0 = load i32* %nr, align 4, !dbg !1093, !tbaa !756
  %cmp39 = icmp sgt i32 %0, 0, !dbg !1093
  br i1 %cmp39, label %for.body.lr.ph, label %for.end, !dbg !1093

for.body.lr.ph:                                   ; preds = %entry
  %atom = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !1095
  %atomname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2, !dbg !1097
  %resname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6, !dbg !1097
  br label %for.body, !dbg !1093

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %1 = load %struct.t_atom** %atom, align 8, !dbg !1095, !tbaa !658
  %resnr = getelementptr inbounds %struct.t_atom* %1, i64 %indvars.iv, i32 7, !dbg !1095
  %2 = load i32* %resnr, align 4, !dbg !1095, !tbaa !756
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !536), !dbg !1095
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1093
  %3 = load i8**** %atomname, align 8, !dbg !1097, !tbaa !658
  %arrayidx2 = getelementptr inbounds i8*** %3, i64 %indvars.iv, !dbg !1097
  %4 = load i8*** %arrayidx2, align 8, !dbg !1097, !tbaa !658
  %5 = load i8** %4, align 8, !dbg !1097, !tbaa !658
  %idxprom3 = sext i32 %2 to i64, !dbg !1097
  %6 = load i8**** %resname, align 8, !dbg !1097, !tbaa !658
  %arrayidx4 = getelementptr inbounds i8*** %6, i64 %idxprom3, !dbg !1097
  %7 = load i8*** %arrayidx4, align 8, !dbg !1097, !tbaa !658
  %8 = load i8** %7, align 8, !dbg !1097, !tbaa !658
  %add5 = add nsw i32 %2, 1, !dbg !1097
  %rem = srem i32 %add5, 10000, !dbg !1097
  %arrayidx8 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0, !dbg !1097
  %9 = load float* %arrayidx8, align 4, !dbg !1097, !tbaa !645
  %add9 = fadd float %9, %dx, !dbg !1097
  %mul = fmul float %add9, 1.000000e+01, !dbg !1097
  %conv = fpext float %mul to double, !dbg !1097
  %arrayidx12 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1, !dbg !1097
  %10 = load float* %arrayidx12, align 4, !dbg !1097, !tbaa !645
  %mul13 = fmul float %10, 1.000000e+01, !dbg !1097
  %conv14 = fpext float %mul13 to double, !dbg !1097
  %arrayidx17 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2, !dbg !1097
  %11 = load float* %arrayidx17, align 4, !dbg !1097, !tbaa !645
  %mul18 = fmul float %11, 1.000000e+01, !dbg !1097
  %conv19 = fpext float %mul18 to double, !dbg !1097
  %arrayidx21 = getelementptr inbounds float* %phi, i64 %indvars.iv, !dbg !1097
  %12 = load float* %arrayidx21, align 4, !dbg !1097, !tbaa !645
  %conv22 = fpext float %12 to double, !dbg !1097
  %13 = trunc i64 %indvars.iv.next to i32, !dbg !1097
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([57 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str26, i64 0, i64 0), i32 %13, i8* %5, i8* %8, i32 32, i32 %rem, double %conv, double %conv14, double %conv19, double 0.000000e+00, double %conv22) #7, !dbg !1097
  %14 = load i32* %nr, align 4, !dbg !1093, !tbaa !756
  %cmp = icmp slt i32 %13, %14, !dbg !1093
  br i1 %cmp, label %for.body, label %for.end, !dbg !1093

for.end:                                          ; preds = %for.body, %entry
  tail call void @ffclose(%struct._IO_FILE* %call) #7, !dbg !1098
  ret void, !dbg !1099
}

; Function Attrs: nounwind optsize uwtable
define void @write_grid_pqr(i8* %fn, i32 %nx, i32 %ny, i32 %nz, float*** nocapture %phi) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !539), !dbg !1100
  tail call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !540), !dbg !1100
  tail call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !541), !dbg !1100
  tail call void @llvm.dbg.value(metadata !{i32 %nz}, i64 0, metadata !542), !dbg !1100
  tail call void @llvm.dbg.value(metadata !{float*** %phi}, i64 0, metadata !543), !dbg !1100
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !548), !dbg !1101
  tail call void @llvm.dbg.value(metadata !1102, i64 0, metadata !549), !dbg !1103
  %call = tail call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str23, i64 0, i64 0)) #7, !dbg !1104
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !544), !dbg !1104
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !545), !dbg !1105
  %cmp50 = icmp sgt i32 %nx, 0, !dbg !1105
  br i1 %cmp50, label %for.cond1.preheader.lr.ph, label %for.end28, !dbg !1105

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp246 = icmp sgt i32 %ny, 0, !dbg !1107
  %cmp543 = icmp sgt i32 %nz, 0, !dbg !1109
  br label %for.cond1.preheader, !dbg !1105

for.cond1.preheader:                              ; preds = %for.inc26, %for.cond1.preheader.lr.ph
  %indvars.iv57 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %0, %for.inc26 ]
  %rnr.051 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %rnr.1.lcssa, %for.inc26 ]
  %0 = add i64 %indvars.iv57, 1, !dbg !1111
  br i1 %cmp246, label %for.cond4.preheader.lr.ph, label %for.inc26, !dbg !1107

for.cond4.preheader.lr.ph:                        ; preds = %for.cond1.preheader
  %1 = trunc i64 %indvars.iv57 to i32, !dbg !1111
  %conv = sitofp i32 %1 to float, !dbg !1111
  %mul = fmul float %conv, 4.000000e+00, !dbg !1111
  %conv9 = fpext float %mul to double, !dbg !1111
  %arrayidx = getelementptr inbounds float*** %phi, i64 %indvars.iv57, !dbg !1111
  br label %for.cond4.preheader, !dbg !1107

for.cond4.preheader:                              ; preds = %for.inc23, %for.cond4.preheader.lr.ph
  %indvars.iv53 = phi i64 [ 0, %for.cond4.preheader.lr.ph ], [ %indvars.iv.next54, %for.inc23 ]
  %rnr.148 = phi i32 [ %rnr.051, %for.cond4.preheader.lr.ph ], [ %rnr.2.lcssa, %for.inc23 ]
  br i1 %cmp543, label %for.body6.lr.ph, label %for.inc23, !dbg !1109

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %2 = trunc i64 %indvars.iv53 to i32, !dbg !1111
  %conv10 = sitofp i32 %2 to float, !dbg !1111
  %mul11 = fmul float %conv10, 4.000000e+00, !dbg !1111
  %conv12 = fpext float %mul11 to double, !dbg !1111
  br label %for.body6, !dbg !1109

for.body6:                                        ; preds = %for.body6, %for.body6.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next, %for.body6 ]
  %rnr.245 = phi i32 [ %rnr.148, %for.body6.lr.ph ], [ %add7, %for.body6 ]
  %add7 = add nsw i32 %rnr.245, 1, !dbg !1111
  %rem = srem i32 %add7, 10000, !dbg !1111
  %add8 = add nsw i32 %rem, 1, !dbg !1111
  %3 = trunc i64 %indvars.iv to i32, !dbg !1111
  %conv13 = sitofp i32 %3 to float, !dbg !1111
  %mul14 = fmul float %conv13, 4.000000e+00, !dbg !1111
  %conv15 = fpext float %mul14 to double, !dbg !1111
  %4 = load float*** %arrayidx, align 8, !dbg !1111, !tbaa !658
  %arrayidx18 = getelementptr inbounds float** %4, i64 %indvars.iv53, !dbg !1111
  %5 = load float** %arrayidx18, align 8, !dbg !1111, !tbaa !658
  %arrayidx19 = getelementptr inbounds float* %5, i64 %indvars.iv, !dbg !1111
  %6 = load float* %arrayidx19, align 4, !dbg !1111, !tbaa !645
  %conv20 = fpext float %6 to double, !dbg !1111
  %7 = trunc i64 %0 to i32, !dbg !1111
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([57 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str26, i64 0, i64 0), i32 %7, i8* getelementptr inbounds ([2 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str27, i64 0, i64 0), i32 32, i32 %add8, double %conv9, double %conv12, double %conv15, double 0.000000e+00, double %conv20) #7, !dbg !1111
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1109
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !548), !dbg !1109
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1109
  %exitcond = icmp eq i32 %lftr.wideiv, %nz, !dbg !1109
  br i1 %exitcond, label %for.cond4.for.inc23_crit_edge, label %for.body6, !dbg !1109

for.cond4.for.inc23_crit_edge:                    ; preds = %for.body6
  %8 = add i32 %rnr.148, %nz, !dbg !1109
  br label %for.inc23, !dbg !1109

for.inc23:                                        ; preds = %for.cond4.for.inc23_crit_edge, %for.cond4.preheader
  %rnr.2.lcssa = phi i32 [ %8, %for.cond4.for.inc23_crit_edge ], [ %rnr.148, %for.cond4.preheader ]
  %indvars.iv.next54 = add i64 %indvars.iv53, 1, !dbg !1107
  %lftr.wideiv55 = trunc i64 %indvars.iv.next54 to i32, !dbg !1107
  %exitcond56 = icmp eq i32 %lftr.wideiv55, %ny, !dbg !1107
  br i1 %exitcond56, label %for.inc26, label %for.cond4.preheader, !dbg !1107

for.inc26:                                        ; preds = %for.cond1.preheader, %for.inc23
  %rnr.1.lcssa = phi i32 [ %rnr.2.lcssa, %for.inc23 ], [ %rnr.051, %for.cond1.preheader ]
  %lftr.wideiv60 = trunc i64 %0 to i32, !dbg !1105
  %exitcond61 = icmp eq i32 %lftr.wideiv60, %nx, !dbg !1105
  br i1 %exitcond61, label %for.end28, label %for.cond1.preheader, !dbg !1105

for.end28:                                        ; preds = %for.inc26, %entry
  tail call void @ffclose(%struct._IO_FILE* %call) #7, !dbg !1112
  ret void, !dbg !1113
}

; Function Attrs: nounwind optsize uwtable
define float @analyse_diff(%struct._IO_FILE* %log, i8* %label, i32 %natom, [3 x float]* nocapture %ffour, [3 x float]* nocapture %fpppm, float* nocapture %phi_f, float* nocapture %phi_p, float* nocapture %phi_sr, i8* %fcorr, i8* %pcorr, i8* nocapture %ftotcorr, i8* %ptotcorr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !554), !dbg !1114
  tail call void @llvm.dbg.value(metadata !{i8* %label}, i64 0, metadata !555), !dbg !1114
  tail call void @llvm.dbg.value(metadata !{i32 %natom}, i64 0, metadata !556), !dbg !1115
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %ffour}, i64 0, metadata !557), !dbg !1115
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %fpppm}, i64 0, metadata !558), !dbg !1115
  tail call void @llvm.dbg.value(metadata !{float* %phi_f}, i64 0, metadata !559), !dbg !1116
  tail call void @llvm.dbg.value(metadata !{float* %phi_p}, i64 0, metadata !560), !dbg !1116
  tail call void @llvm.dbg.value(metadata !{float* %phi_sr}, i64 0, metadata !561), !dbg !1116
  tail call void @llvm.dbg.value(metadata !{i8* %fcorr}, i64 0, metadata !562), !dbg !1117
  tail call void @llvm.dbg.value(metadata !{i8* %pcorr}, i64 0, metadata !563), !dbg !1117
  tail call void @llvm.dbg.value(metadata !{i8* %ftotcorr}, i64 0, metadata !564), !dbg !1117
  tail call void @llvm.dbg.value(metadata !{i8* %ptotcorr}, i64 0, metadata !565), !dbg !1117
  tail call void @llvm.dbg.value(metadata !1118, i64 0, metadata !568), !dbg !1119
  tail call void @llvm.dbg.value(metadata !1118, i64 0, metadata !569), !dbg !1119
  tail call void @llvm.dbg.value(metadata !681, i64 0, metadata !570), !dbg !1120
  tail call void @llvm.dbg.value(metadata !681, i64 0, metadata !571), !dbg !1120
  %arrayidx1 = getelementptr inbounds [3 x float]* %ffour, i64 0, i64 0, !dbg !1121
  %0 = load float* %arrayidx1, align 4, !dbg !1121, !tbaa !645
  %arrayidx3 = getelementptr inbounds [3 x float]* %fpppm, i64 0, i64 0, !dbg !1121
  %1 = load float* %arrayidx3, align 4, !dbg !1121, !tbaa !645
  %sub = fsub float %0, %1, !dbg !1121
  %fabsf = tail call float @fabsf(float %sub) #9, !dbg !1121
  tail call void @llvm.dbg.value(metadata !{float %fabsf}, i64 0, metadata !573), !dbg !1121
  %2 = load float* %phi_f, align 4, !dbg !1122, !tbaa !645
  %3 = load float* %phi_p, align 4, !dbg !1122, !tbaa !645
  %sub7 = fsub float %2, %3, !dbg !1122
  %fabsf209 = tail call float @fabsf(float %sub7) #9, !dbg !1122
  tail call void @llvm.dbg.value(metadata !{float %fabsf209}, i64 0, metadata !575), !dbg !1122
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !566), !dbg !1123
  %cmp220 = icmp sgt i32 %natom, 0, !dbg !1123
  br i1 %cmp220, label %for.body, label %for.end47, !dbg !1123

for.body:                                         ; preds = %entry, %for.inc45.for.body_crit_edge
  %4 = phi float [ %.pre245, %for.inc45.for.body_crit_edge ], [ %3, %entry ]
  %5 = phi float [ %.pre, %for.inc45.for.body_crit_edge ], [ %2, %entry ]
  %indvars.iv241 = phi i64 [ %indvars.iv.next242, %for.inc45.for.body_crit_edge ], [ 0, %entry ]
  %pmax.0224 = phi float [ %cond, %for.inc45.for.body_crit_edge ], [ %fabsf209, %entry ]
  %fmax.0223 = phi float [ %cond42, %for.inc45.for.body_crit_edge ], [ %fabsf, %entry ]
  %p2sum.0222 = phi float [ %add, %for.inc45.for.body_crit_edge ], [ 0.000000e+00, %entry ]
  %f2sum.0221 = phi float [ %add44, %for.inc45.for.body_crit_edge ], [ 0.000000e+00, %entry ]
  %sub15 = fsub float %5, %4, !dbg !1125
  %fabsf210 = tail call float @fabsf(float %sub15) #9, !dbg !1125
  tail call void @llvm.dbg.value(metadata !{float %fabsf210}, i64 0, metadata !574), !dbg !1125
  %cmp19 = fcmp ogt float %fabsf210, %pmax.0224, !dbg !1127
  tail call void @llvm.dbg.value(metadata !{float %cond}, i64 0, metadata !575), !dbg !1127
  %mul = fmul float %fabsf210, %fabsf210, !dbg !1128
  tail call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !571), !dbg !1128
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !567), !dbg !1129
  br label %for.body24, !dbg !1129

for.body24:                                       ; preds = %for.body24, %for.body
  %indvars.iv237 = phi i64 [ 0, %for.body ], [ %indvars.iv.next238, %for.body24 ]
  %fmax.1218 = phi float [ %fmax.0223, %for.body ], [ %cond42, %for.body24 ]
  %f2sum.1217 = phi float [ %f2sum.0221, %for.body ], [ %add44, %for.body24 ]
  %arrayidx28 = getelementptr inbounds [3 x float]* %ffour, i64 %indvars.iv241, i64 %indvars.iv237, !dbg !1131
  %6 = load float* %arrayidx28, align 4, !dbg !1131, !tbaa !645
  %arrayidx32 = getelementptr inbounds [3 x float]* %fpppm, i64 %indvars.iv241, i64 %indvars.iv237, !dbg !1131
  %7 = load float* %arrayidx32, align 4, !dbg !1131, !tbaa !645
  %sub33 = fsub float %6, %7, !dbg !1131
  %fabsf211 = tail call float @fabsf(float %sub33) #9, !dbg !1131
  tail call void @llvm.dbg.value(metadata !{float %fabsf211}, i64 0, metadata !572), !dbg !1131
  %cmp37 = fcmp ogt float %fabsf211, %fmax.1218, !dbg !1133
  %cond42 = select i1 %cmp37, float %fabsf211, float %fmax.1218, !dbg !1133
  tail call void @llvm.dbg.value(metadata !{float %cond42}, i64 0, metadata !573), !dbg !1133
  %mul43 = fmul float %fabsf211, %fabsf211, !dbg !1134
  %add44 = fadd float %f2sum.1217, %mul43, !dbg !1134
  tail call void @llvm.dbg.value(metadata !{float %add44}, i64 0, metadata !570), !dbg !1134
  %indvars.iv.next238 = add i64 %indvars.iv237, 1, !dbg !1129
  %lftr.wideiv239 = trunc i64 %indvars.iv.next238 to i32, !dbg !1129
  %exitcond240 = icmp eq i32 %lftr.wideiv239, 3, !dbg !1129
  br i1 %exitcond240, label %for.inc45, label %for.body24, !dbg !1129

for.inc45:                                        ; preds = %for.body24
  %cond = select i1 %cmp19, float %fabsf210, float %pmax.0224, !dbg !1127
  %add = fadd float %p2sum.0222, %mul, !dbg !1128
  %indvars.iv.next242 = add i64 %indvars.iv241, 1, !dbg !1123
  %lftr.wideiv243 = trunc i64 %indvars.iv.next242 to i32, !dbg !1123
  %exitcond244 = icmp eq i32 %lftr.wideiv243, %natom, !dbg !1123
  br i1 %exitcond244, label %for.cond.for.end47_crit_edge, label %for.inc45.for.body_crit_edge, !dbg !1123

for.inc45.for.body_crit_edge:                     ; preds = %for.inc45
  %arrayidx12.phi.trans.insert = getelementptr inbounds float* %phi_f, i64 %indvars.iv.next242
  %.pre = load float* %arrayidx12.phi.trans.insert, align 4, !dbg !1125, !tbaa !645
  %arrayidx14.phi.trans.insert = getelementptr inbounds float* %phi_p, i64 %indvars.iv.next242
  %.pre245 = load float* %arrayidx14.phi.trans.insert, align 4, !dbg !1125, !tbaa !645
  br label %for.body, !dbg !1123

for.cond.for.end47_crit_edge:                     ; preds = %for.inc45
  %phitmp = fpext float %add44 to double, !dbg !1123
  br label %for.end47, !dbg !1123

for.end47:                                        ; preds = %for.cond.for.end47_crit_edge, %entry
  %pmax.0.lcssa = phi float [ %cond, %for.cond.for.end47_crit_edge ], [ %fabsf209, %entry ]
  %fmax.0.lcssa = phi float [ %cond42, %for.cond.for.end47_crit_edge ], [ %fabsf, %entry ]
  %p2sum.0.lcssa = phi float [ %add, %for.cond.for.end47_crit_edge ], [ 0.000000e+00, %entry ]
  %f2sum.0.lcssa = phi double [ %phitmp, %for.cond.for.end47_crit_edge ], [ 0.000000e+00, %entry ]
  %conv49 = sitofp i32 %natom to double, !dbg !1135
  %mul50 = fmul double %conv49, 3.000000e+00, !dbg !1135
  %div = fdiv double %f2sum.0.lcssa, %mul50, !dbg !1135
  %call51 = tail call double @sqrt(double %div) #7, !dbg !1135
  %conv52 = fptrunc double %call51 to float, !dbg !1135
  tail call void @llvm.dbg.value(metadata !{float %conv52}, i64 0, metadata !576), !dbg !1135
  %tobool = icmp eq %struct._IO_FILE* %log, null, !dbg !1136
  br i1 %tobool, label %if.end, label %if.then, !dbg !1136

if.then:                                          ; preds = %for.end47
  %call53 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([57 x i8]* @.str28, i64 0, i64 0), i8* %label) #7, !dbg !1137
  %call54 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([15 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str32, i64 0, i64 0)) #7, !dbg !1139
  %conv55 = fpext float %fmax.0.lcssa to double, !dbg !1140
  %conv56 = fpext float %conv52 to double, !dbg !1140
  %call57 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str34, i64 0, i64 0), double %conv55, double %conv56) #7, !dbg !1140
  %conv58 = fpext float %pmax.0.lcssa to double, !dbg !1141
  %conv59 = sitofp i32 %natom to float, !dbg !1141
  %div60 = fdiv float %p2sum.0.lcssa, %conv59, !dbg !1141
  %conv61 = fpext float %div60 to double, !dbg !1141
  %call62 = tail call double @sqrt(double %conv61) #7, !dbg !1141
  %call63 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str35, i64 0, i64 0), double %conv58, double %call62) #7, !dbg !1141
  br label %if.end, !dbg !1142

if.end:                                           ; preds = %for.end47, %if.then
  %tobool64 = icmp eq i8* %fcorr, null, !dbg !1143
  br i1 %tobool64, label %if.end92, label %if.then65, !dbg !1143

if.then65:                                        ; preds = %if.end
  %call66 = tail call %struct._IO_FILE* @xvgropen(i8* %fcorr, i8* getelementptr inbounds ([21 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str38, i64 0, i64 0)) #7, !dbg !1144
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call66}, i64 0, metadata !568), !dbg !1144
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !566), !dbg !1146
  br i1 %cmp220, label %for.cond71.preheader, label %for.end91, !dbg !1146

for.cond71.preheader:                             ; preds = %if.then65, %for.inc89
  %indvars.iv233 = phi i64 [ %indvars.iv.next234, %for.inc89 ], [ 0, %if.then65 ]
  br label %for.body74, !dbg !1148

for.body74:                                       ; preds = %for.body74, %for.cond71.preheader
  %indvars.iv229 = phi i64 [ 0, %for.cond71.preheader ], [ %indvars.iv.next230, %for.body74 ]
  %arrayidx78 = getelementptr inbounds [3 x float]* %ffour, i64 %indvars.iv233, i64 %indvars.iv229, !dbg !1151
  %8 = load float* %arrayidx78, align 4, !dbg !1151, !tbaa !645
  %conv79 = fpext float %8 to double, !dbg !1151
  %arrayidx83 = getelementptr inbounds [3 x float]* %fpppm, i64 %indvars.iv233, i64 %indvars.iv229, !dbg !1151
  %9 = load float* %arrayidx83, align 4, !dbg !1151, !tbaa !645
  %conv84 = fpext float %9 to double, !dbg !1151
  %call85 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call66, i8* getelementptr inbounds ([16 x i8]* @.str39, i64 0, i64 0), double %conv79, double %conv84) #7, !dbg !1151
  %indvars.iv.next230 = add i64 %indvars.iv229, 1, !dbg !1148
  %lftr.wideiv231 = trunc i64 %indvars.iv.next230 to i32, !dbg !1148
  %exitcond232 = icmp eq i32 %lftr.wideiv231, 3, !dbg !1148
  br i1 %exitcond232, label %for.inc89, label %for.body74, !dbg !1148

for.inc89:                                        ; preds = %for.body74
  %indvars.iv.next234 = add i64 %indvars.iv233, 1, !dbg !1146
  %lftr.wideiv235 = trunc i64 %indvars.iv.next234 to i32, !dbg !1146
  %exitcond236 = icmp eq i32 %lftr.wideiv235, %natom, !dbg !1146
  br i1 %exitcond236, label %for.end91, label %for.cond71.preheader, !dbg !1146

for.end91:                                        ; preds = %for.inc89, %if.then65
  tail call void @ffclose(%struct._IO_FILE* %call66) #7, !dbg !1153
  tail call void @do_view(i8* %fcorr, i8* null) #7, !dbg !1154
  br label %if.end92, !dbg !1155

if.end92:                                         ; preds = %if.end, %for.end91
  %fp.0 = phi %struct._IO_FILE* [ %call66, %for.end91 ], [ null, %if.end ]
  %tobool93 = icmp ne i8* %pcorr, null, !dbg !1156
  br i1 %tobool93, label %if.then94, label %if.end96, !dbg !1156

if.then94:                                        ; preds = %if.end92
  %call95 = tail call %struct._IO_FILE* @xvgropen(i8* %pcorr, i8* getelementptr inbounds ([25 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str42, i64 0, i64 0)) #7, !dbg !1157
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call95}, i64 0, metadata !568), !dbg !1157
  br label %if.end96, !dbg !1157

if.end96:                                         ; preds = %if.then94, %if.end92
  %fp.1 = phi %struct._IO_FILE* [ %call95, %if.then94 ], [ %fp.0, %if.end92 ]
  %tobool97 = icmp ne i8* %ptotcorr, null, !dbg !1158
  br i1 %tobool97, label %if.then98, label %if.end100, !dbg !1158

if.then98:                                        ; preds = %if.end96
  %call99 = tail call %struct._IO_FILE* @xvgropen(i8* %ptotcorr, i8* getelementptr inbounds ([28 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str42, i64 0, i64 0)) #7, !dbg !1159
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call99}, i64 0, metadata !569), !dbg !1159
  br label %if.end100, !dbg !1159

if.end100:                                        ; preds = %if.then98, %if.end96
  %gp.0 = phi %struct._IO_FILE* [ %call99, %if.then98 ], [ null, %if.end96 ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !566), !dbg !1160
  br i1 %cmp220, label %for.body104, label %for.end133, !dbg !1160

for.body104:                                      ; preds = %if.end100, %for.inc131
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc131 ], [ 0, %if.end100 ]
  br i1 %tobool93, label %if.then106, label %if.end114, !dbg !1162

if.then106:                                       ; preds = %for.body104
  %arrayidx108 = getelementptr inbounds float* %phi_f, i64 %indvars.iv, !dbg !1164
  %10 = load float* %arrayidx108, align 4, !dbg !1164, !tbaa !645
  %conv109 = fpext float %10 to double, !dbg !1164
  %arrayidx111 = getelementptr inbounds float* %phi_p, i64 %indvars.iv, !dbg !1164
  %11 = load float* %arrayidx111, align 4, !dbg !1164, !tbaa !645
  %conv112 = fpext float %11 to double, !dbg !1164
  %call113 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp.1, i8* getelementptr inbounds ([16 x i8]* @.str39, i64 0, i64 0), double %conv109, double %conv112) #7, !dbg !1164
  br label %if.end114, !dbg !1164

if.end114:                                        ; preds = %if.then106, %for.body104
  br i1 %tobool97, label %if.then116, label %for.inc131, !dbg !1165

if.then116:                                       ; preds = %if.end114
  %arrayidx118 = getelementptr inbounds float* %phi_f, i64 %indvars.iv, !dbg !1166
  %12 = load float* %arrayidx118, align 4, !dbg !1166, !tbaa !645
  %arrayidx120 = getelementptr inbounds float* %phi_sr, i64 %indvars.iv, !dbg !1166
  %13 = load float* %arrayidx120, align 4, !dbg !1166, !tbaa !645
  %add121 = fadd float %12, %13, !dbg !1166
  %conv122 = fpext float %add121 to double, !dbg !1166
  %arrayidx124 = getelementptr inbounds float* %phi_p, i64 %indvars.iv, !dbg !1166
  %14 = load float* %arrayidx124, align 4, !dbg !1166, !tbaa !645
  %add127 = fadd float %13, %14, !dbg !1166
  %conv128 = fpext float %add127 to double, !dbg !1166
  %call129 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %gp.0, i8* getelementptr inbounds ([16 x i8]* @.str39, i64 0, i64 0), double %conv122, double %conv128) #7, !dbg !1166
  br label %for.inc131, !dbg !1166

for.inc131:                                       ; preds = %if.end114, %if.then116
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1160
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1160
  %exitcond = icmp eq i32 %lftr.wideiv, %natom, !dbg !1160
  br i1 %exitcond, label %for.end133, label %for.body104, !dbg !1160

for.end133:                                       ; preds = %for.inc131, %if.end100
  br i1 %tobool93, label %if.then135, label %if.end136, !dbg !1167

if.then135:                                       ; preds = %for.end133
  tail call void @ffclose(%struct._IO_FILE* %fp.1) #7, !dbg !1168
  tail call void @do_view(i8* %pcorr, i8* null) #7, !dbg !1170
  br label %if.end136, !dbg !1171

if.end136:                                        ; preds = %if.then135, %for.end133
  br i1 %tobool97, label %if.then138, label %if.end139, !dbg !1172

if.then138:                                       ; preds = %if.end136
  tail call void @ffclose(%struct._IO_FILE* %gp.0) #7, !dbg !1173
  tail call void @do_view(i8* %ptotcorr, i8* null) #7, !dbg !1175
  br label %if.end139, !dbg !1176

if.end139:                                        ; preds = %if.then138, %if.end136
  ret float %conv52, !dbg !1177
}

; Function Attrs: optsize
declare %struct._IO_FILE* @xvgropen(i8*, i8*, i8*, i8*) #2

; Function Attrs: optsize
declare void @do_view(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #6

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !623, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !178, metadata !187, metadata !194, metadata !205, metadata !213, metadata !219, metadata !228, metadata !233, metadata !240, metadata !246, metadata !293, metadata !299, metadata !304, metadata !375, metadata !399, metadata !407, metadata !417, metadata !437, metadata !456, metadata !466, metadata !537, metadata !550, metadata !577, metadata !583, metadata !592, metadata !601, metadata !608, metadata !620}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"set_shift_consts", metadata !"set_shift_consts", metadata !"", i32 54, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, float, float, float*, %struct.t_forcerec*)* @set_shift_consts, null, null, metadata !172, i32 55} ; [ DW_TAG_subprogram ] [line 54] [def] [scope 55] [set_shift_consts]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !66, metadata !66, metadata !68, metadata !69}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!11 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !36, metadata !37, metadata !38, metadata !39, metadata !42, metadata !44, metadata !46, metadata !50, metadata !52, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !61, metadata !62}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!17 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!22 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!23 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!24 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!25 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!26 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!27 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!28 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !29} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!30 = metadata !{i32 786451, metadata !11, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !31, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!31 = metadata !{metadata !32, metadata !33, metadata !35}
!32 = metadata !{i32 786445, metadata !11, metadata !30, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!33 = metadata !{i32 786445, metadata !11, metadata !30, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !34} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!35 = metadata !{i32 786445, metadata !11, metadata !30, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!36 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !34} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!37 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!38 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!39 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !40} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!40 = metadata !{i32 786454, metadata !11, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!41 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!42 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !43} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!43 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!44 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !45} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!45 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!46 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !47} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!47 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !17, metadata !48, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!48 = metadata !{metadata !49}
!49 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!50 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !51} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!52 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !53} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!53 = metadata !{i32 786454, metadata !11, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!54 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !51} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!55 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !51} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!56 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !51} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!57 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !51} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!58 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !59} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!59 = metadata !{i32 786454, metadata !11, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !60} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!60 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!61 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !14} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!62 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !63} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!63 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !17, metadata !64, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!64 = metadata !{metadata !65}
!65 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!66 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!67 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!68 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !66} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!69 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !70} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_forcerec]
!70 = metadata !{i32 786454, metadata !1, null, metadata !"t_forcerec", i32 149, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [t_forcerec] [line 149, size 0, align 0, offset 0] [from ]
!71 = metadata !{i32 786451, metadata !72, null, metadata !"", i32 43, i64 22784, i64 64, i32 0, i32 0, null, metadata !73, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 43, size 22784, align 64, offset 0] [from ]
!72 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/forcerec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!73 = metadata !{metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !124, metadata !125, metadata !128, metadata !129, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171}
!74 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"ePBC", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [ePBC] [line 45, size 32, align 32, offset 0] [from int]
!75 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"rlist", i32 46, i64 32, i64 32, i64 32, i32 0, metadata !66} ; [ DW_TAG_member ] [rlist] [line 46, size 32, align 32, offset 32] [from real]
!76 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"rlistlong", i32 46, i64 32, i64 32, i64 64, i32 0, metadata !66} ; [ DW_TAG_member ] [rlistlong] [line 46, size 32, align 32, offset 64] [from real]
!77 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"zsquare", i32 49, i64 32, i64 32, i64 96, i32 0, metadata !66} ; [ DW_TAG_member ] [zsquare] [line 49, size 32, align 32, offset 96] [from real]
!78 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"temp", i32 49, i64 32, i64 32, i64 128, i32 0, metadata !66} ; [ DW_TAG_member ] [temp] [line 49, size 32, align 32, offset 128] [from real]
!79 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"epsilon_r", i32 50, i64 32, i64 32, i64 160, i32 0, metadata !66} ; [ DW_TAG_member ] [epsilon_r] [line 50, size 32, align 32, offset 160] [from real]
!80 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"epsfac", i32 50, i64 32, i64 32, i64 192, i32 0, metadata !66} ; [ DW_TAG_member ] [epsfac] [line 50, size 32, align 32, offset 192] [from real]
!81 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"bRF", i32 53, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [bRF] [line 53, size 32, align 32, offset 224] [from int]
!82 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"kappa", i32 54, i64 32, i64 32, i64 256, i32 0, metadata !66} ; [ DW_TAG_member ] [kappa] [line 54, size 32, align 32, offset 256] [from real]
!83 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"k_rf", i32 54, i64 32, i64 32, i64 288, i32 0, metadata !66} ; [ DW_TAG_member ] [k_rf] [line 54, size 32, align 32, offset 288] [from real]
!84 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"c_rf", i32 54, i64 32, i64 32, i64 320, i32 0, metadata !66} ; [ DW_TAG_member ] [c_rf] [line 54, size 32, align 32, offset 320] [from real]
!85 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"avcsix", i32 57, i64 32, i64 32, i64 352, i32 0, metadata !66} ; [ DW_TAG_member ] [avcsix] [line 57, size 32, align 32, offset 352] [from real]
!86 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"fudgeQQ", i32 60, i64 32, i64 32, i64 384, i32 0, metadata !66} ; [ DW_TAG_member ] [fudgeQQ] [line 60, size 32, align 32, offset 384] [from real]
!87 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"bcoultab", i32 63, i64 32, i64 32, i64 416, i32 0, metadata !14} ; [ DW_TAG_member ] [bcoultab] [line 63, size 32, align 32, offset 416] [from int]
!88 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"bvdwtab", i32 64, i64 32, i64 32, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [bvdwtab] [line 64, size 32, align 32, offset 448] [from int]
!89 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"rtab", i32 65, i64 32, i64 32, i64 480, i32 0, metadata !66} ; [ DW_TAG_member ] [rtab] [line 65, size 32, align 32, offset 480] [from real]
!90 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"ntab", i32 66, i64 32, i64 32, i64 512, i32 0, metadata !14} ; [ DW_TAG_member ] [ntab] [line 66, size 32, align 32, offset 512] [from int]
!91 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"tabscale", i32 67, i64 32, i64 32, i64 544, i32 0, metadata !66} ; [ DW_TAG_member ] [tabscale] [line 67, size 32, align 32, offset 544] [from real]
!92 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"coultab", i32 69, i64 64, i64 64, i64 576, i32 0, metadata !68} ; [ DW_TAG_member ] [coultab] [line 69, size 64, align 64, offset 576] [from ]
!93 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"vdwtab", i32 70, i64 64, i64 64, i64 640, i32 0, metadata !68} ; [ DW_TAG_member ] [vdwtab] [line 70, size 64, align 64, offset 640] [from ]
!94 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"coulvdwtab", i32 71, i64 64, i64 64, i64 704, i32 0, metadata !68} ; [ DW_TAG_member ] [coulvdwtab] [line 71, size 64, align 64, offset 704] [from ]
!95 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"coulvdw14tab", i32 72, i64 64, i64 64, i64 768, i32 0, metadata !68} ; [ DW_TAG_member ] [coulvdw14tab] [line 72, size 64, align 64, offset 768] [from ]
!96 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"rcoulomb_switch", i32 75, i64 32, i64 32, i64 832, i32 0, metadata !66} ; [ DW_TAG_member ] [rcoulomb_switch] [line 75, size 32, align 32, offset 832] [from real]
!97 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"rcoulomb", i32 75, i64 32, i64 32, i64 864, i32 0, metadata !66} ; [ DW_TAG_member ] [rcoulomb] [line 75, size 32, align 32, offset 864] [from real]
!98 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"phi", i32 76, i64 64, i64 64, i64 896, i32 0, metadata !68} ; [ DW_TAG_member ] [phi] [line 76, size 64, align 64, offset 896] [from ]
!99 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"rvdw_switch", i32 79, i64 32, i64 32, i64 960, i32 0, metadata !66} ; [ DW_TAG_member ] [rvdw_switch] [line 79, size 32, align 32, offset 960] [from real]
!100 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"rvdw", i32 79, i64 32, i64 32, i64 992, i32 0, metadata !66} ; [ DW_TAG_member ] [rvdw] [line 79, size 32, align 32, offset 992] [from real]
!101 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"bham_b_max", i32 80, i64 32, i64 32, i64 1024, i32 0, metadata !66} ; [ DW_TAG_member ] [bham_b_max] [line 80, size 32, align 32, offset 1024] [from real]
!102 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"tabscale_exp", i32 81, i64 32, i64 32, i64 1056, i32 0, metadata !66} ; [ DW_TAG_member ] [tabscale_exp] [line 81, size 32, align 32, offset 1056] [from real]
!103 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"efep", i32 84, i64 32, i64 32, i64 1088, i32 0, metadata !14} ; [ DW_TAG_member ] [efep] [line 84, size 32, align 32, offset 1088] [from int]
!104 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"sc_alpha", i32 85, i64 32, i64 32, i64 1120, i32 0, metadata !66} ; [ DW_TAG_member ] [sc_alpha] [line 85, size 32, align 32, offset 1120] [from real]
!105 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"sc_sigma6", i32 86, i64 32, i64 32, i64 1152, i32 0, metadata !66} ; [ DW_TAG_member ] [sc_sigma6] [line 86, size 32, align 32, offset 1152] [from real]
!106 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"bSepDVDL", i32 87, i64 32, i64 32, i64 1184, i32 0, metadata !14} ; [ DW_TAG_member ] [bSepDVDL] [line 87, size 32, align 32, offset 1184] [from int]
!107 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"eeltype", i32 90, i64 32, i64 32, i64 1216, i32 0, metadata !14} ; [ DW_TAG_member ] [eeltype] [line 90, size 32, align 32, offset 1216] [from int]
!108 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"vdwtype", i32 91, i64 32, i64 32, i64 1248, i32 0, metadata !14} ; [ DW_TAG_member ] [vdwtype] [line 91, size 32, align 32, offset 1248] [from int]
!109 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"cg0", i32 92, i64 32, i64 32, i64 1280, i32 0, metadata !14} ; [ DW_TAG_member ] [cg0] [line 92, size 32, align 32, offset 1280] [from int]
!110 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"hcg", i32 92, i64 32, i64 32, i64 1312, i32 0, metadata !14} ; [ DW_TAG_member ] [hcg] [line 92, size 32, align 32, offset 1312] [from int]
!111 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"ndelta", i32 93, i64 32, i64 32, i64 1344, i32 0, metadata !14} ; [ DW_TAG_member ] [ndelta] [line 93, size 32, align 32, offset 1344] [from int]
!112 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"bSolvOpt", i32 94, i64 32, i64 32, i64 1376, i32 0, metadata !14} ; [ DW_TAG_member ] [bSolvOpt] [line 94, size 32, align 32, offset 1376] [from int]
!113 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"nMNOMol", i32 95, i64 32, i64 32, i64 1408, i32 0, metadata !14} ; [ DW_TAG_member ] [nMNOMol] [line 95, size 32, align 32, offset 1408] [from int]
!114 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"nMNOav", i32 96, i64 96, i64 32, i64 1440, i32 0, metadata !115} ; [ DW_TAG_member ] [nMNOav] [line 96, size 96, align 32, offset 1440] [from ]
!115 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !66, metadata !116, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!116 = metadata !{metadata !117}
!117 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!118 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"nWatMol", i32 97, i64 32, i64 32, i64 1536, i32 0, metadata !14} ; [ DW_TAG_member ] [nWatMol] [line 97, size 32, align 32, offset 1536] [from int]
!119 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"Dimension", i32 98, i64 32, i64 32, i64 1568, i32 0, metadata !14} ; [ DW_TAG_member ] [Dimension] [line 98, size 32, align 32, offset 1568] [from int]
!120 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"bGrid", i32 99, i64 32, i64 32, i64 1600, i32 0, metadata !14} ; [ DW_TAG_member ] [bGrid] [line 99, size 32, align 32, offset 1600] [from int]
!121 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"bDomDecomp", i32 99, i64 32, i64 32, i64 1632, i32 0, metadata !14} ; [ DW_TAG_member ] [bDomDecomp] [line 99, size 32, align 32, offset 1632] [from int]
!122 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"solvent_type", i32 100, i64 64, i64 64, i64 1664, i32 0, metadata !123} ; [ DW_TAG_member ] [solvent_type] [line 100, size 64, align 64, offset 1664] [from ]
!123 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!124 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"mno_index", i32 101, i64 64, i64 64, i64 1728, i32 0, metadata !123} ; [ DW_TAG_member ] [mno_index] [line 101, size 64, align 64, offset 1728] [from ]
!125 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"cg_cm", i32 102, i64 64, i64 64, i64 1792, i32 0, metadata !126} ; [ DW_TAG_member ] [cg_cm] [line 102, size 64, align 64, offset 1792] [from ]
!126 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !127} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!127 = metadata !{i32 786454, metadata !72, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !115} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!128 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"shift_vec", i32 103, i64 64, i64 64, i64 1856, i32 0, metadata !126} ; [ DW_TAG_member ] [shift_vec] [line 103, size 64, align 64, offset 1856] [from ]
!129 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"nlist_sr", i32 108, i64 9984, i64 64, i64 1920, i32 0, metadata !130} ; [ DW_TAG_member ] [nlist_sr] [line 108, size 9984, align 64, offset 1920] [from ]
!130 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 9984, i64 64, i32 0, i32 0, metadata !131, metadata !152, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 9984, align 64, offset 0] [from t_nblist]
!131 = metadata !{i32 786454, metadata !72, null, metadata !"t_nblist", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !132} ; [ DW_TAG_typedef ] [t_nblist] [line 60, size 0, align 0, offset 0] [from ]
!132 = metadata !{i32 786451, metadata !133, null, metadata !"", i32 36, i64 768, i64 64, i32 0, i32 0, null, metadata !134, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 768, align 64, offset 0] [from ]
!133 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/nblist.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!134 = metadata !{metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151}
!135 = metadata !{i32 786445, metadata !133, metadata !132, metadata !"il_code", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [il_code] [line 37, size 32, align 32, offset 0] [from int]
!136 = metadata !{i32 786445, metadata !133, metadata !132, metadata !"nri", i32 39, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nri] [line 39, size 32, align 32, offset 32] [from int]
!137 = metadata !{i32 786445, metadata !133, metadata !132, metadata !"maxnri", i32 39, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnri] [line 39, size 32, align 32, offset 64] [from int]
!138 = metadata !{i32 786445, metadata !133, metadata !132, metadata !"nrj", i32 40, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nrj] [line 40, size 32, align 32, offset 96] [from int]
!139 = metadata !{i32 786445, metadata !133, metadata !132, metadata !"maxnrj", i32 40, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnrj] [line 40, size 32, align 32, offset 128] [from int]
!140 = metadata !{i32 786445, metadata !133, metadata !132, metadata !"maxlen", i32 41, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [maxlen] [line 41, size 32, align 32, offset 160] [from int]
!141 = metadata !{i32 786445, metadata !133, metadata !132, metadata !"solvent", i32 42, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [solvent] [line 42, size 32, align 32, offset 192] [from int]
!142 = metadata !{i32 786445, metadata !133, metadata !132, metadata !"iinr", i32 43, i64 64, i64 64, i64 256, i32 0, metadata !143} ; [ DW_TAG_member ] [iinr] [line 43, size 64, align 64, offset 256] [from ]
!143 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !144} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!144 = metadata !{i32 786454, metadata !133, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!145 = metadata !{i32 786445, metadata !133, metadata !132, metadata !"gid", i32 44, i64 64, i64 64, i64 320, i32 0, metadata !123} ; [ DW_TAG_member ] [gid] [line 44, size 64, align 64, offset 320] [from ]
!146 = metadata !{i32 786445, metadata !133, metadata !132, metadata !"shift", i32 45, i64 64, i64 64, i64 384, i32 0, metadata !123} ; [ DW_TAG_member ] [shift] [line 45, size 64, align 64, offset 384] [from ]
!147 = metadata !{i32 786445, metadata !133, metadata !132, metadata !"jindex", i32 46, i64 64, i64 64, i64 448, i32 0, metadata !123} ; [ DW_TAG_member ] [jindex] [line 46, size 64, align 64, offset 448] [from ]
!148 = metadata !{i32 786445, metadata !133, metadata !132, metadata !"jjnr", i32 47, i64 64, i64 64, i64 512, i32 0, metadata !143} ; [ DW_TAG_member ] [jjnr] [line 47, size 64, align 64, offset 512] [from ]
!149 = metadata !{i32 786445, metadata !133, metadata !132, metadata !"nsatoms", i32 48, i64 64, i64 64, i64 576, i32 0, metadata !123} ; [ DW_TAG_member ] [nsatoms] [line 48, size 64, align 64, offset 576] [from ]
!150 = metadata !{i32 786445, metadata !133, metadata !132, metadata !"pad1", i32 58, i64 32, i64 32, i64 640, i32 0, metadata !14} ; [ DW_TAG_member ] [pad1] [line 58, size 32, align 32, offset 640] [from int]
!151 = metadata !{i32 786445, metadata !133, metadata !132, metadata !"pad2", i32 58, i64 64, i64 64, i64 704, i32 0, metadata !123} ; [ DW_TAG_member ] [pad2] [line 58, size 64, align 64, offset 704] [from ]
!152 = metadata !{metadata !153}
!153 = metadata !{i32 786465, i64 0, i64 13}      ; [ DW_TAG_subrange_type ] [0, 12]
!154 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"nlist_lr", i32 109, i64 9984, i64 64, i64 11904, i32 0, metadata !130} ; [ DW_TAG_member ] [nlist_lr] [line 109, size 9984, align 64, offset 11904] [from ]
!155 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"bTwinRange", i32 120, i64 32, i64 32, i64 21888, i32 0, metadata !14} ; [ DW_TAG_member ] [bTwinRange] [line 120, size 32, align 32, offset 21888] [from int]
!156 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"nlr", i32 121, i64 32, i64 32, i64 21920, i32 0, metadata !14} ; [ DW_TAG_member ] [nlr] [line 121, size 32, align 32, offset 21920] [from int]
!157 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"f_twin", i32 122, i64 64, i64 64, i64 21952, i32 0, metadata !126} ; [ DW_TAG_member ] [f_twin] [line 122, size 64, align 64, offset 21952] [from ]
!158 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"fshift_twin", i32 123, i64 64, i64 64, i64 22016, i32 0, metadata !126} ; [ DW_TAG_member ] [fshift_twin] [line 123, size 64, align 64, offset 22016] [from ]
!159 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"f_pme", i32 126, i64 64, i64 64, i64 22080, i32 0, metadata !126} ; [ DW_TAG_member ] [f_pme] [line 126, size 64, align 64, offset 22080] [from ]
!160 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"bEwald", i32 127, i64 32, i64 32, i64 22144, i32 0, metadata !14} ; [ DW_TAG_member ] [bEwald] [line 127, size 32, align 32, offset 22144] [from int]
!161 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"ewaldcoeff", i32 128, i64 32, i64 32, i64 22176, i32 0, metadata !66} ; [ DW_TAG_member ] [ewaldcoeff] [line 128, size 32, align 32, offset 22176] [from real]
!162 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"fshift", i32 131, i64 64, i64 64, i64 22208, i32 0, metadata !126} ; [ DW_TAG_member ] [fshift] [line 131, size 64, align 64, offset 22208] [from ]
!163 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"nmol", i32 134, i64 32, i64 32, i64 22272, i32 0, metadata !14} ; [ DW_TAG_member ] [nmol] [line 134, size 32, align 32, offset 22272] [from int]
!164 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"mol_nr", i32 135, i64 64, i64 64, i64 22336, i32 0, metadata !143} ; [ DW_TAG_member ] [mol_nr] [line 135, size 64, align 64, offset 22336] [from ]
!165 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"mol_epot", i32 136, i64 64, i64 64, i64 22400, i32 0, metadata !68} ; [ DW_TAG_member ] [mol_epot] [line 136, size 64, align 64, offset 22400] [from ]
!166 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"nstcalc", i32 137, i64 32, i64 32, i64 22464, i32 0, metadata !14} ; [ DW_TAG_member ] [nstcalc] [line 137, size 32, align 32, offset 22464] [from int]
!167 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"ntype", i32 140, i64 32, i64 32, i64 22496, i32 0, metadata !14} ; [ DW_TAG_member ] [ntype] [line 140, size 32, align 32, offset 22496] [from int]
!168 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"bBHAM", i32 141, i64 32, i64 32, i64 22528, i32 0, metadata !14} ; [ DW_TAG_member ] [bBHAM] [line 141, size 32, align 32, offset 22528] [from int]
!169 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"nbfp", i32 142, i64 64, i64 64, i64 22592, i32 0, metadata !68} ; [ DW_TAG_member ] [nbfp] [line 142, size 64, align 64, offset 22592] [from ]
!170 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"eg_excl", i32 145, i64 64, i64 64, i64 22656, i32 0, metadata !123} ; [ DW_TAG_member ] [eg_excl] [line 145, size 64, align 64, offset 22656] [from ]
!171 = metadata !{i32 786445, metadata !72, metadata !71, metadata !"fc_stepsize", i32 148, i64 32, i64 32, i64 22720, i32 0, metadata !66} ; [ DW_TAG_member ] [fc_stepsize] [line 148, size 32, align 32, offset 22720] [from real]
!172 = metadata !{metadata !173, metadata !174, metadata !175, metadata !176, metadata !177}
!173 = metadata !{i32 786689, metadata !4, metadata !"log", metadata !5, i32 16777270, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 54]
!174 = metadata !{i32 786689, metadata !4, metadata !"r1", metadata !5, i32 33554486, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r1] [line 54]
!175 = metadata !{i32 786689, metadata !4, metadata !"rc", metadata !5, i32 50331702, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rc] [line 54]
!176 = metadata !{i32 786689, metadata !4, metadata !"box", metadata !5, i32 67108918, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 54]
!177 = metadata !{i32 786689, metadata !4, metadata !"fr", metadata !5, i32 83886134, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 54]
!178 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gk", metadata !"gk", metadata !"", i32 96, metadata !179, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float, float, float)* @gk, null, null, metadata !181, i32 98} ; [ DW_TAG_subprogram ] [line 96] [def] [scope 98] [gk]
!179 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !180, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!180 = metadata !{metadata !66, metadata !66, metadata !66, metadata !66}
!181 = metadata !{metadata !182, metadata !183, metadata !184, metadata !185, metadata !186}
!182 = metadata !{i32 786689, metadata !178, metadata !"k", metadata !5, i32 16777312, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k] [line 96]
!183 = metadata !{i32 786689, metadata !178, metadata !"rc", metadata !5, i32 33554528, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rc] [line 96]
!184 = metadata !{i32 786689, metadata !178, metadata !"r1", metadata !5, i32 50331744, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r1] [line 96]
!185 = metadata !{i32 786688, metadata !178, metadata !"N", metadata !5, i32 99, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [N] [line 99]
!186 = metadata !{i32 786688, metadata !178, metadata !"gg", metadata !5, i32 99, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gg] [line 99]
!187 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gknew", metadata !"gknew", metadata !"", i32 111, metadata !179, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float, float, float)* @gknew, null, null, metadata !188, i32 112} ; [ DW_TAG_subprogram ] [line 111] [def] [scope 112] [gknew]
!188 = metadata !{metadata !189, metadata !190, metadata !191, metadata !192, metadata !193}
!189 = metadata !{i32 786689, metadata !187, metadata !"k", metadata !5, i32 16777327, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k] [line 111]
!190 = metadata !{i32 786689, metadata !187, metadata !"rc", metadata !5, i32 33554543, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rc] [line 111]
!191 = metadata !{i32 786689, metadata !187, metadata !"r1", metadata !5, i32 50331759, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r1] [line 111]
!192 = metadata !{i32 786688, metadata !187, metadata !"rck", metadata !5, i32 113, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rck] [line 113]
!193 = metadata !{i32 786688, metadata !187, metadata !"rck2", metadata !5, i32 113, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rck2] [line 113]
!194 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"calc_dx2dx", metadata !"calc_dx2dx", metadata !"", i32 121, metadata !195, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float*, float*, float*, float*)* @calc_dx2dx, null, null, metadata !197, i32 122} ; [ DW_TAG_subprogram ] [line 121] [def] [scope 122] [calc_dx2dx]
!195 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !196, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!196 = metadata !{metadata !66, metadata !68, metadata !68, metadata !68, metadata !68}
!197 = metadata !{metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204}
!198 = metadata !{i32 786689, metadata !194, metadata !"xi", metadata !5, i32 16777337, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xi] [line 121]
!199 = metadata !{i32 786689, metadata !194, metadata !"xj", metadata !5, i32 33554553, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xj] [line 121]
!200 = metadata !{i32 786689, metadata !194, metadata !"box", metadata !5, i32 50331769, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 121]
!201 = metadata !{i32 786689, metadata !194, metadata !"dx", metadata !5, i32 67108985, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dx] [line 121]
!202 = metadata !{i32 786688, metadata !194, metadata !"m", metadata !5, i32 123, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 123]
!203 = metadata !{i32 786688, metadata !194, metadata !"ddx", metadata !5, i32 124, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ddx] [line 124]
!204 = metadata !{i32 786688, metadata !194, metadata !"dx2", metadata !5, i32 124, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx2] [line 124]
!205 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"calc_dx2", metadata !"calc_dx2", metadata !"", i32 139, metadata !206, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float*, float*, float*)* @calc_dx2, null, null, metadata !208, i32 140} ; [ DW_TAG_subprogram ] [line 139] [def] [scope 140] [calc_dx2]
!206 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !207, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!207 = metadata !{metadata !66, metadata !68, metadata !68, metadata !68}
!208 = metadata !{metadata !209, metadata !210, metadata !211, metadata !212}
!209 = metadata !{i32 786689, metadata !205, metadata !"xi", metadata !5, i32 16777355, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xi] [line 139]
!210 = metadata !{i32 786689, metadata !205, metadata !"xj", metadata !5, i32 33554571, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xj] [line 139]
!211 = metadata !{i32 786689, metadata !205, metadata !"box", metadata !5, i32 50331787, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 139]
!212 = metadata !{i32 786688, metadata !205, metadata !"dx", metadata !5, i32 141, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 141]
!213 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"shiftfunction", metadata !"shiftfunction", metadata !"", i32 146, metadata !179, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float, float, float)* @shiftfunction, null, null, metadata !214, i32 147} ; [ DW_TAG_subprogram ] [line 146] [def] [scope 147] [shiftfunction]
!214 = metadata !{metadata !215, metadata !216, metadata !217, metadata !218}
!215 = metadata !{i32 786689, metadata !213, metadata !"r1", metadata !5, i32 16777362, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r1] [line 146]
!216 = metadata !{i32 786689, metadata !213, metadata !"rc", metadata !5, i32 33554578, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rc] [line 146]
!217 = metadata !{i32 786689, metadata !213, metadata !"R", metadata !5, i32 50331794, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [R] [line 146]
!218 = metadata !{i32 786688, metadata !213, metadata !"dr", metadata !5, i32 148, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dr] [line 148]
!219 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"new_f", metadata !"new_f", metadata !"", i32 160, metadata !220, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float, float)* @new_f, null, null, metadata !222, i32 161} ; [ DW_TAG_subprogram ] [line 160] [def] [scope 161] [new_f]
!220 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !221, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!221 = metadata !{metadata !66, metadata !66, metadata !66}
!222 = metadata !{metadata !223, metadata !224, metadata !225, metadata !226, metadata !227}
!223 = metadata !{i32 786689, metadata !219, metadata !"r", metadata !5, i32 16777376, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 160]
!224 = metadata !{i32 786689, metadata !219, metadata !"rc", metadata !5, i32 33554592, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rc] [line 160]
!225 = metadata !{i32 786688, metadata !219, metadata !"rrc", metadata !5, i32 162, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rrc] [line 162]
!226 = metadata !{i32 786688, metadata !219, metadata !"rrc2", metadata !5, i32 162, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rrc2] [line 162]
!227 = metadata !{i32 786688, metadata !219, metadata !"rrc3", metadata !5, i32 162, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rrc3] [line 162]
!228 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"new_phi", metadata !"new_phi", metadata !"", i32 170, metadata !220, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float, float)* @new_phi, null, null, metadata !229, i32 171} ; [ DW_TAG_subprogram ] [line 170] [def] [scope 171] [new_phi]
!229 = metadata !{metadata !230, metadata !231, metadata !232}
!230 = metadata !{i32 786689, metadata !228, metadata !"r", metadata !5, i32 16777386, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 170]
!231 = metadata !{i32 786689, metadata !228, metadata !"rc", metadata !5, i32 33554602, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rc] [line 170]
!232 = metadata !{i32 786688, metadata !228, metadata !"rrr", metadata !5, i32 172, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rrr] [line 172]
!233 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"old_f", metadata !"old_f", metadata !"", i32 179, metadata !179, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float, float, float)* @old_f, null, null, metadata !234, i32 180} ; [ DW_TAG_subprogram ] [line 179] [def] [scope 180] [old_f]
!234 = metadata !{metadata !235, metadata !236, metadata !237, metadata !238, metadata !239}
!235 = metadata !{i32 786689, metadata !233, metadata !"r", metadata !5, i32 16777395, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 179]
!236 = metadata !{i32 786689, metadata !233, metadata !"rc", metadata !5, i32 33554611, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rc] [line 179]
!237 = metadata !{i32 786689, metadata !233, metadata !"r1", metadata !5, i32 50331827, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r1] [line 179]
!238 = metadata !{i32 786688, metadata !233, metadata !"dr", metadata !5, i32 181, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dr] [line 181]
!239 = metadata !{i32 786688, metadata !233, metadata !"r2", metadata !5, i32 181, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r2] [line 181]
!240 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"old_phi", metadata !"old_phi", metadata !"", i32 193, metadata !179, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float, float, float)* @old_phi, null, null, metadata !241, i32 194} ; [ DW_TAG_subprogram ] [line 193] [def] [scope 194] [old_phi]
!241 = metadata !{metadata !242, metadata !243, metadata !244, metadata !245}
!242 = metadata !{i32 786689, metadata !240, metadata !"r", metadata !5, i32 16777409, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 193]
!243 = metadata !{i32 786689, metadata !240, metadata !"rc", metadata !5, i32 33554625, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rc] [line 193]
!244 = metadata !{i32 786689, metadata !240, metadata !"r1", metadata !5, i32 50331841, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r1] [line 193]
!245 = metadata !{i32 786688, metadata !240, metadata !"dr", metadata !5, i32 195, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dr] [line 195]
!246 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"phi_sr", metadata !"phi_sr", metadata !"", i32 207, metadata !247, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct._IO_FILE*, i32, [3 x float]*, float*, float, float, float*, float*, %struct.t_block*, [3 x float]*, i32)* @phi_sr, null, null, metadata !262, i32 209} ; [ DW_TAG_subprogram ] [line 207] [def] [scope 209] [phi_sr]
!247 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !248, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!248 = metadata !{metadata !66, metadata !8, metadata !14, metadata !126, metadata !68, metadata !66, metadata !66, metadata !68, metadata !68, metadata !249, metadata !126, metadata !14}
!249 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !250} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_block]
!250 = metadata !{i32 786454, metadata !1, null, metadata !"t_block", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !251} ; [ DW_TAG_typedef ] [t_block] [line 52, size 0, align 0, offset 0] [from ]
!251 = metadata !{i32 786451, metadata !252, null, metadata !"", i32 36, i64 8448, i64 64, i32 0, i32 0, null, metadata !253, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 8448, align 64, offset 0] [from ]
!252 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/block.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!253 = metadata !{metadata !254, metadata !258, metadata !259, metadata !260, metadata !261}
!254 = metadata !{i32 786445, metadata !252, metadata !251, metadata !"multinr", i32 37, i64 8192, i64 32, i64 0, i32 0, metadata !255} ; [ DW_TAG_member ] [multinr] [line 37, size 8192, align 32, offset 0] [from ]
!255 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !14, metadata !256, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!256 = metadata !{metadata !257}
!257 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!258 = metadata !{i32 786445, metadata !252, metadata !251, metadata !"nr", i32 43, i64 32, i64 32, i64 8192, i32 0, metadata !14} ; [ DW_TAG_member ] [nr] [line 43, size 32, align 32, offset 8192] [from int]
!259 = metadata !{i32 786445, metadata !252, metadata !251, metadata !"index", i32 44, i64 64, i64 64, i64 8256, i32 0, metadata !143} ; [ DW_TAG_member ] [index] [line 44, size 64, align 64, offset 8256] [from ]
!260 = metadata !{i32 786445, metadata !252, metadata !251, metadata !"nra", i32 45, i64 32, i64 32, i64 8320, i32 0, metadata !14} ; [ DW_TAG_member ] [nra] [line 45, size 32, align 32, offset 8320] [from int]
!261 = metadata !{i32 786445, metadata !252, metadata !251, metadata !"a", i32 46, i64 64, i64 64, i64 8384, i32 0, metadata !143} ; [ DW_TAG_member ] [a] [line 46, size 64, align 64, offset 8384] [from ]
!262 = metadata !{metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292}
!263 = metadata !{i32 786689, metadata !246, metadata !"log", metadata !5, i32 16777423, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 207]
!264 = metadata !{i32 786689, metadata !246, metadata !"nj", metadata !5, i32 33554639, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nj] [line 207]
!265 = metadata !{i32 786689, metadata !246, metadata !"x", metadata !5, i32 50331855, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 207]
!266 = metadata !{i32 786689, metadata !246, metadata !"charge", metadata !5, i32 67109071, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [charge] [line 207]
!267 = metadata !{i32 786689, metadata !246, metadata !"rc", metadata !5, i32 83886287, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rc] [line 207]
!268 = metadata !{i32 786689, metadata !246, metadata !"r1", metadata !5, i32 100663503, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r1] [line 207]
!269 = metadata !{i32 786689, metadata !246, metadata !"box", metadata !5, i32 117440719, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 207]
!270 = metadata !{i32 786689, metadata !246, metadata !"phi", metadata !5, i32 134217936, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [phi] [line 208]
!271 = metadata !{i32 786689, metadata !246, metadata !"excl", metadata !5, i32 150995152, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [excl] [line 208]
!272 = metadata !{i32 786689, metadata !246, metadata !"f_sr", metadata !5, i32 167772368, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f_sr] [line 208]
!273 = metadata !{i32 786689, metadata !246, metadata !"bOld", metadata !5, i32 184549584, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bOld] [line 208]
!274 = metadata !{i32 786688, metadata !246, metadata !"i", metadata !5, i32 210, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 210]
!275 = metadata !{i32 786688, metadata !246, metadata !"j", metadata !5, i32 210, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 210]
!276 = metadata !{i32 786688, metadata !246, metadata !"k", metadata !5, i32 210, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 210]
!277 = metadata !{i32 786688, metadata !246, metadata !"m", metadata !5, i32 210, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 210]
!278 = metadata !{i32 786688, metadata !246, metadata !"ni", metadata !5, i32 210, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ni] [line 210]
!279 = metadata !{i32 786688, metadata !246, metadata !"i1", metadata !5, i32 210, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i1] [line 210]
!280 = metadata !{i32 786688, metadata !246, metadata !"i2", metadata !5, i32 210, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i2] [line 210]
!281 = metadata !{i32 786688, metadata !246, metadata !"pp", metadata !5, i32 211, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pp] [line 211]
!282 = metadata !{i32 786688, metadata !246, metadata !"r2", metadata !5, i32 211, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r2] [line 211]
!283 = metadata !{i32 786688, metadata !246, metadata !"R", metadata !5, i32 211, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [R] [line 211]
!284 = metadata !{i32 786688, metadata !246, metadata !"R_1", metadata !5, i32 211, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [R_1] [line 211]
!285 = metadata !{i32 786688, metadata !246, metadata !"R_2", metadata !5, i32 211, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [R_2] [line 211]
!286 = metadata !{i32 786688, metadata !246, metadata !"rc2", metadata !5, i32 211, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc2] [line 211]
!287 = metadata !{i32 786688, metadata !246, metadata !"qi", metadata !5, i32 212, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qi] [line 212]
!288 = metadata !{i32 786688, metadata !246, metadata !"qj", metadata !5, i32 212, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qj] [line 212]
!289 = metadata !{i32 786688, metadata !246, metadata !"vsr", metadata !5, i32 212, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vsr] [line 212]
!290 = metadata !{i32 786688, metadata !246, metadata !"eps", metadata !5, i32 212, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [eps] [line 212]
!291 = metadata !{i32 786688, metadata !246, metadata !"fscal", metadata !5, i32 212, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fscal] [line 212]
!292 = metadata !{i32 786688, metadata !246, metadata !"dx", metadata !5, i32 213, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 213]
!293 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"spreadfunction", metadata !"spreadfunction", metadata !"", i32 260, metadata !179, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float, float, float)* @spreadfunction, null, null, metadata !294, i32 261} ; [ DW_TAG_subprogram ] [line 260] [def] [scope 261] [spreadfunction]
!294 = metadata !{metadata !295, metadata !296, metadata !297, metadata !298}
!295 = metadata !{i32 786689, metadata !293, metadata !"r1", metadata !5, i32 16777476, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r1] [line 260]
!296 = metadata !{i32 786689, metadata !293, metadata !"rc", metadata !5, i32 33554692, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rc] [line 260]
!297 = metadata !{i32 786689, metadata !293, metadata !"R", metadata !5, i32 50331908, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [R] [line 260]
!298 = metadata !{i32 786688, metadata !293, metadata !"dr", metadata !5, i32 262, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dr] [line 262]
!299 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"potential", metadata !"potential", metadata !"", i32 274, metadata !179, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float, float, float)* @potential, null, null, metadata !300, i32 275} ; [ DW_TAG_subprogram ] [line 274] [def] [scope 275] [potential]
!300 = metadata !{metadata !301, metadata !302, metadata !303}
!301 = metadata !{i32 786689, metadata !299, metadata !"r1", metadata !5, i32 16777490, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r1] [line 274]
!302 = metadata !{i32 786689, metadata !299, metadata !"rc", metadata !5, i32 33554706, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rc] [line 274]
!303 = metadata !{i32 786689, metadata !299, metadata !"R", metadata !5, i32 50331922, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [R] [line 274]
!304 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"shift_LRcorrection", metadata !"shift_LRcorrection", metadata !"", i32 286, metadata !305, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct._IO_FILE*, %struct.t_nsborder*, %struct.t_commrec*, %struct.t_forcerec*, float*, %struct.t_block*, [3 x float]*, i32, [3 x float]*, [3 x float]*)* @shift_LRcorrection, null, null, metadata !335, i32 289} ; [ DW_TAG_subprogram ] [line 286] [def] [scope 289] [shift_LRcorrection]
!305 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !306, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!306 = metadata !{metadata !66, metadata !8, metadata !307, metadata !323, metadata !69, metadata !68, metadata !249, metadata !126, metadata !14, metadata !334, metadata !334}
!307 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !308} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_nsborder]
!308 = metadata !{i32 786454, metadata !1, null, metadata !"t_nsborder", i32 59, i64 0, i64 0, i64 0, i32 0, metadata !309} ; [ DW_TAG_typedef ] [t_nsborder] [line 59, size 0, align 0, offset 0] [from ]
!309 = metadata !{i32 786451, metadata !310, null, metadata !"", i32 36, i64 32992, i64 32, i32 0, i32 0, null, metadata !311, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 32992, align 32, offset 0] [from ]
!310 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/nsborder.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!311 = metadata !{metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322}
!312 = metadata !{i32 786445, metadata !310, metadata !309, metadata !"nodeid", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nodeid] [line 37, size 32, align 32, offset 0] [from int]
!313 = metadata !{i32 786445, metadata !310, metadata !309, metadata !"nnodes", i32 38, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nnodes] [line 38, size 32, align 32, offset 32] [from int]
!314 = metadata !{i32 786445, metadata !310, metadata !309, metadata !"cgtotal", i32 39, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [cgtotal] [line 39, size 32, align 32, offset 64] [from int]
!315 = metadata !{i32 786445, metadata !310, metadata !309, metadata !"natoms", i32 40, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [natoms] [line 40, size 32, align 32, offset 96] [from int]
!316 = metadata !{i32 786445, metadata !310, metadata !309, metadata !"nstDlb", i32 41, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [nstDlb] [line 41, size 32, align 32, offset 128] [from int]
!317 = metadata !{i32 786445, metadata !310, metadata !309, metadata !"shift", i32 43, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [shift] [line 43, size 32, align 32, offset 160] [from int]
!318 = metadata !{i32 786445, metadata !310, metadata !309, metadata !"bshift", i32 43, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [bshift] [line 43, size 32, align 32, offset 192] [from int]
!319 = metadata !{i32 786445, metadata !310, metadata !309, metadata !"homenr", i32 50, i64 8192, i64 32, i64 224, i32 0, metadata !255} ; [ DW_TAG_member ] [homenr] [line 50, size 8192, align 32, offset 224] [from ]
!320 = metadata !{i32 786445, metadata !310, metadata !309, metadata !"index", i32 51, i64 8192, i64 32, i64 8416, i32 0, metadata !255} ; [ DW_TAG_member ] [index] [line 51, size 8192, align 32, offset 8416] [from ]
!321 = metadata !{i32 786445, metadata !310, metadata !309, metadata !"cgload", i32 52, i64 8192, i64 32, i64 16608, i32 0, metadata !255} ; [ DW_TAG_member ] [cgload] [line 52, size 8192, align 32, offset 16608] [from ]
!322 = metadata !{i32 786445, metadata !310, metadata !309, metadata !"workload", i32 55, i64 8192, i64 32, i64 24800, i32 0, metadata !255} ; [ DW_TAG_member ] [workload] [line 55, size 8192, align 32, offset 24800] [from ]
!323 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !324} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_commrec]
!324 = metadata !{i32 786454, metadata !1, null, metadata !"t_commrec", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !325} ; [ DW_TAG_typedef ] [t_commrec] [line 40, size 0, align 0, offset 0] [from ]
!325 = metadata !{i32 786451, metadata !326, null, metadata !"", i32 36, i64 192, i64 32, i32 0, i32 0, null, metadata !327, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 32, offset 0] [from ]
!326 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/commrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!327 = metadata !{metadata !328, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333}
!328 = metadata !{i32 786445, metadata !326, metadata !325, metadata !"nodeid", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nodeid] [line 37, size 32, align 32, offset 0] [from int]
!329 = metadata !{i32 786445, metadata !326, metadata !325, metadata !"nnodes", i32 37, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nnodes] [line 37, size 32, align 32, offset 32] [from int]
!330 = metadata !{i32 786445, metadata !326, metadata !325, metadata !"left", i32 38, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [left] [line 38, size 32, align 32, offset 64] [from int]
!331 = metadata !{i32 786445, metadata !326, metadata !325, metadata !"right", i32 38, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [right] [line 38, size 32, align 32, offset 96] [from int]
!332 = metadata !{i32 786445, metadata !326, metadata !325, metadata !"threadid", i32 39, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [threadid] [line 39, size 32, align 32, offset 128] [from int]
!333 = metadata !{i32 786445, metadata !326, metadata !325, metadata !"nthreads", i32 39, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [nthreads] [line 39, size 32, align 32, offset 160] [from int]
!334 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !115} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!335 = metadata !{metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !357, metadata !358, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !373, metadata !374}
!336 = metadata !{i32 786689, metadata !304, metadata !"fp", metadata !5, i32 16777502, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 286]
!337 = metadata !{i32 786689, metadata !304, metadata !"nsb", metadata !5, i32 33554718, metadata !307, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsb] [line 286]
!338 = metadata !{i32 786689, metadata !304, metadata !"cr", metadata !5, i32 50331934, metadata !323, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 286]
!339 = metadata !{i32 786689, metadata !304, metadata !"fr", metadata !5, i32 67109150, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 286]
!340 = metadata !{i32 786689, metadata !304, metadata !"charge", metadata !5, i32 83886367, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [charge] [line 287]
!341 = metadata !{i32 786689, metadata !304, metadata !"excl", metadata !5, i32 100663583, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [excl] [line 287]
!342 = metadata !{i32 786689, metadata !304, metadata !"x", metadata !5, i32 117440799, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 287]
!343 = metadata !{i32 786689, metadata !304, metadata !"bOld", metadata !5, i32 134218016, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bOld] [line 288]
!344 = metadata !{i32 786689, metadata !304, metadata !"box", metadata !5, i32 150995232, metadata !334, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 288]
!345 = metadata !{i32 786689, metadata !304, metadata !"lr_vir", metadata !5, i32 167772448, metadata !334, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lr_vir] [line 288]
!346 = metadata !{i32 786688, metadata !304, metadata !"i", metadata !5, i32 292, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 292]
!347 = metadata !{i32 786688, metadata !304, metadata !"i1", metadata !5, i32 292, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i1] [line 292]
!348 = metadata !{i32 786688, metadata !304, metadata !"i2", metadata !5, i32 292, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i2] [line 292]
!349 = metadata !{i32 786688, metadata !304, metadata !"j", metadata !5, i32 292, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 292]
!350 = metadata !{i32 786688, metadata !304, metadata !"k", metadata !5, i32 292, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 292]
!351 = metadata !{i32 786688, metadata !304, metadata !"m", metadata !5, i32 292, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 292]
!352 = metadata !{i32 786688, metadata !304, metadata !"iv", metadata !5, i32 292, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iv] [line 292]
!353 = metadata !{i32 786688, metadata !304, metadata !"jv", metadata !5, i32 292, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jv] [line 292]
!354 = metadata !{i32 786688, metadata !304, metadata !"AA", metadata !5, i32 293, metadata !123, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [AA] [line 293]
!355 = metadata !{i32 786688, metadata !304, metadata !"qq", metadata !5, i32 294, metadata !356, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qq] [line 294]
!356 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!357 = metadata !{i32 786688, metadata !304, metadata !"isp", metadata !5, i32 295, metadata !356, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isp] [line 295]
!358 = metadata !{i32 786688, metadata !304, metadata !"qi", metadata !5, i32 296, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qi] [line 296]
!359 = metadata !{i32 786688, metadata !304, metadata !"dr", metadata !5, i32 296, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dr] [line 296]
!360 = metadata !{i32 786688, metadata !304, metadata !"dr2", metadata !5, i32 296, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dr2] [line 296]
!361 = metadata !{i32 786688, metadata !304, metadata !"dr_1", metadata !5, i32 296, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dr_1] [line 296]
!362 = metadata !{i32 786688, metadata !304, metadata !"dr_3", metadata !5, i32 296, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dr_3] [line 296]
!363 = metadata !{i32 786688, metadata !304, metadata !"fscal", metadata !5, i32 296, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fscal] [line 296]
!364 = metadata !{i32 786688, metadata !304, metadata !"Vexcl", metadata !5, i32 296, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Vexcl] [line 296]
!365 = metadata !{i32 786688, metadata !304, metadata !"qtot", metadata !5, i32 296, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qtot] [line 296]
!366 = metadata !{i32 786688, metadata !304, metadata !"df", metadata !5, i32 297, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [df] [line 297]
!367 = metadata !{i32 786688, metadata !304, metadata !"dx", metadata !5, i32 297, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 297]
!368 = metadata !{i32 786688, metadata !304, metadata !"r1", metadata !5, i32 298, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r1] [line 298]
!369 = metadata !{i32 786688, metadata !304, metadata !"rc", metadata !5, i32 299, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 299]
!370 = metadata !{i32 786688, metadata !304, metadata !"shift", metadata !5, i32 300, metadata !371, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shift] [line 300]
!371 = metadata !{i32 786454, metadata !1, null, metadata !"ivec", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !372} ; [ DW_TAG_typedef ] [ivec] [line 107, size 0, align 0, offset 0] [from ]
!372 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !14, metadata !116, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!373 = metadata !{i32 786688, metadata !304, metadata !"start", metadata !5, i32 301, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [start] [line 301]
!374 = metadata !{i32 786688, metadata !304, metadata !"natoms", metadata !5, i32 302, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [natoms] [line 302]
!375 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"calc_ener", metadata !"calc_ener", metadata !"", i32 390, metadata !376, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*, i32, i32, i32, float*, float*, %struct.t_block*)* @calc_ener, null, null, metadata !378, i32 392} ; [ DW_TAG_subprogram ] [line 390] [def] [scope 392] [calc_ener]
!376 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !377, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!377 = metadata !{null, metadata !8, metadata !16, metadata !14, metadata !14, metadata !14, metadata !68, metadata !68, metadata !249}
!378 = metadata !{metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398}
!379 = metadata !{i32 786689, metadata !375, metadata !"fp", metadata !5, i32 16777606, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 390]
!380 = metadata !{i32 786689, metadata !375, metadata !"title", metadata !5, i32 33554822, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 390]
!381 = metadata !{i32 786689, metadata !375, metadata !"bHeader", metadata !5, i32 50332038, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bHeader] [line 390]
!382 = metadata !{i32 786689, metadata !375, metadata !"nmol", metadata !5, i32 67109254, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nmol] [line 390]
!383 = metadata !{i32 786689, metadata !375, metadata !"natoms", metadata !5, i32 83886471, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 391]
!384 = metadata !{i32 786689, metadata !375, metadata !"phi", metadata !5, i32 100663687, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [phi] [line 391]
!385 = metadata !{i32 786689, metadata !375, metadata !"charge", metadata !5, i32 117440903, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [charge] [line 391]
!386 = metadata !{i32 786689, metadata !375, metadata !"excl", metadata !5, i32 134218119, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [excl] [line 391]
!387 = metadata !{i32 786688, metadata !375, metadata !"i", metadata !5, i32 393, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 393]
!388 = metadata !{i32 786688, metadata !375, metadata !"i1", metadata !5, i32 393, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i1] [line 393]
!389 = metadata !{i32 786688, metadata !375, metadata !"i2", metadata !5, i32 393, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i2] [line 393]
!390 = metadata !{i32 786688, metadata !375, metadata !"j", metadata !5, i32 393, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 393]
!391 = metadata !{i32 786688, metadata !375, metadata !"k", metadata !5, i32 393, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 393]
!392 = metadata !{i32 786688, metadata !375, metadata !"qq", metadata !5, i32 394, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qq] [line 394]
!393 = metadata !{i32 786688, metadata !375, metadata !"qi", metadata !5, i32 394, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qi] [line 394]
!394 = metadata !{i32 786688, metadata !375, metadata !"vv", metadata !5, i32 394, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vv] [line 394]
!395 = metadata !{i32 786688, metadata !375, metadata !"V", metadata !5, i32 394, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [V] [line 394]
!396 = metadata !{i32 786688, metadata !375, metadata !"Vex", metadata !5, i32 394, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Vex] [line 394]
!397 = metadata !{i32 786688, metadata !375, metadata !"Vc", metadata !5, i32 394, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Vc] [line 394]
!398 = metadata !{i32 786688, metadata !375, metadata !"Vt", metadata !5, i32 394, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Vt] [line 394]
!399 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"phi_aver", metadata !"phi_aver", metadata !"", i32 432, metadata !400, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i32, float*)* @phi_aver, null, null, metadata !402, i32 433} ; [ DW_TAG_subprogram ] [line 432] [def] [scope 433] [phi_aver]
!400 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !401, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!401 = metadata !{metadata !66, metadata !14, metadata !68}
!402 = metadata !{metadata !403, metadata !404, metadata !405, metadata !406}
!403 = metadata !{i32 786689, metadata !399, metadata !"natoms", metadata !5, i32 16777648, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 432]
!404 = metadata !{i32 786689, metadata !399, metadata !"phi", metadata !5, i32 33554864, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [phi] [line 432]
!405 = metadata !{i32 786688, metadata !399, metadata !"phitot", metadata !5, i32 434, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [phitot] [line 434]
!406 = metadata !{i32 786688, metadata !399, metadata !"i", metadata !5, i32 435, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 435]
!407 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"symmetrize_phi", metadata !"symmetrize_phi", metadata !"", i32 444, metadata !408, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct._IO_FILE*, i32, float*, i32)* @symmetrize_phi, null, null, metadata !410, i32 445} ; [ DW_TAG_subprogram ] [line 444] [def] [scope 445] [symmetrize_phi]
!408 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !409, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!409 = metadata !{metadata !66, metadata !8, metadata !14, metadata !68, metadata !14}
!410 = metadata !{metadata !411, metadata !412, metadata !413, metadata !414, metadata !415, metadata !416}
!411 = metadata !{i32 786689, metadata !407, metadata !"log", metadata !5, i32 16777660, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 444]
!412 = metadata !{i32 786689, metadata !407, metadata !"natoms", metadata !5, i32 33554876, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 444]
!413 = metadata !{i32 786689, metadata !407, metadata !"phi", metadata !5, i32 50332092, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [phi] [line 444]
!414 = metadata !{i32 786689, metadata !407, metadata !"bVerbose", metadata !5, i32 67109308, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bVerbose] [line 444]
!415 = metadata !{i32 786688, metadata !407, metadata !"phitot", metadata !5, i32 446, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [phitot] [line 446]
!416 = metadata !{i32 786688, metadata !407, metadata !"i", metadata !5, i32 447, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 447]
!417 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"plot_phi", metadata !"plot_phi", metadata !"", i32 467, metadata !418, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, float*, i32, [3 x float]*, float*)* @plot_phi, null, null, metadata !420, i32 468} ; [ DW_TAG_subprogram ] [line 467] [def] [scope 468] [plot_phi]
!418 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !419, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!419 = metadata !{null, metadata !16, metadata !68, metadata !14, metadata !126, metadata !68}
!420 = metadata !{metadata !421, metadata !422, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436}
!421 = metadata !{i32 786689, metadata !417, metadata !"fn", metadata !5, i32 16777683, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 467]
!422 = metadata !{i32 786689, metadata !417, metadata !"box", metadata !5, i32 33554899, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 467]
!423 = metadata !{i32 786689, metadata !417, metadata !"natoms", metadata !5, i32 50332115, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 467]
!424 = metadata !{i32 786689, metadata !417, metadata !"x", metadata !5, i32 67109331, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 467]
!425 = metadata !{i32 786689, metadata !417, metadata !"phi", metadata !5, i32 83886547, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [phi] [line 467]
!426 = metadata !{i32 786688, metadata !417, metadata !"eps", metadata !5, i32 469, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [eps] [line 469]
!427 = metadata !{i32 786688, metadata !417, metadata !"phi_max", metadata !5, i32 470, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [phi_max] [line 470]
!428 = metadata !{i32 786688, metadata !417, metadata !"rr", metadata !5, i32 470, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rr] [line 470]
!429 = metadata !{i32 786688, metadata !417, metadata !"gg", metadata !5, i32 470, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gg] [line 470]
!430 = metadata !{i32 786688, metadata !417, metadata !"bb", metadata !5, i32 470, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bb] [line 470]
!431 = metadata !{i32 786688, metadata !417, metadata !"fac", metadata !5, i32 470, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fac] [line 470]
!432 = metadata !{i32 786688, metadata !417, metadata !"dx", metadata !5, i32 470, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 470]
!433 = metadata !{i32 786688, metadata !417, metadata !"x0", metadata !5, i32 470, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x0] [line 470]
!434 = metadata !{i32 786688, metadata !417, metadata !"y0", metadata !5, i32 470, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y0] [line 470]
!435 = metadata !{i32 786688, metadata !417, metadata !"offset", metadata !5, i32 471, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 471]
!436 = metadata !{i32 786688, metadata !417, metadata !"i", metadata !5, i32 472, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 472]
!437 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"plot_qtab", metadata !"plot_qtab", metadata !"", i32 511, metadata !438, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32, i32, i32, float***)* @plot_qtab, null, null, metadata !442, i32 512} ; [ DW_TAG_subprogram ] [line 511] [def] [scope 512] [plot_qtab]
!438 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !439, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!439 = metadata !{null, metadata !16, metadata !14, metadata !14, metadata !14, metadata !440}
!440 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !441} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!441 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!442 = metadata !{metadata !443, metadata !444, metadata !445, metadata !446, metadata !447, metadata !448, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !454, metadata !455}
!443 = metadata !{i32 786689, metadata !437, metadata !"fn", metadata !5, i32 16777727, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 511]
!444 = metadata !{i32 786689, metadata !437, metadata !"nx", metadata !5, i32 33554943, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 511]
!445 = metadata !{i32 786689, metadata !437, metadata !"ny", metadata !5, i32 50332159, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 511]
!446 = metadata !{i32 786689, metadata !437, metadata !"nz", metadata !5, i32 67109375, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 511]
!447 = metadata !{i32 786689, metadata !437, metadata !"qtab", metadata !5, i32 83886591, metadata !440, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [qtab] [line 511]
!448 = metadata !{i32 786688, metadata !437, metadata !"box", metadata !5, i32 513, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [box] [line 513]
!449 = metadata !{i32 786688, metadata !437, metadata !"xx", metadata !5, i32 514, metadata !126, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xx] [line 514]
!450 = metadata !{i32 786688, metadata !437, metadata !"phi", metadata !5, i32 515, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [phi] [line 515]
!451 = metadata !{i32 786688, metadata !437, metadata !"i", metadata !5, i32 516, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 516]
!452 = metadata !{i32 786688, metadata !437, metadata !"npt", metadata !5, i32 516, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [npt] [line 516]
!453 = metadata !{i32 786688, metadata !437, metadata !"ix", metadata !5, i32 516, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ix] [line 516]
!454 = metadata !{i32 786688, metadata !437, metadata !"iy", metadata !5, i32 516, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iy] [line 516]
!455 = metadata !{i32 786688, metadata !437, metadata !"iz", metadata !5, i32 516, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iz] [line 516]
!456 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"print_phi", metadata !"print_phi", metadata !"", i32 544, metadata !457, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32, [3 x float]*, float*)* @print_phi, null, null, metadata !459, i32 545} ; [ DW_TAG_subprogram ] [line 544] [def] [scope 545] [print_phi]
!457 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !458, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!458 = metadata !{null, metadata !16, metadata !14, metadata !126, metadata !68}
!459 = metadata !{metadata !460, metadata !461, metadata !462, metadata !463, metadata !464, metadata !465}
!460 = metadata !{i32 786689, metadata !456, metadata !"fn", metadata !5, i32 16777760, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 544]
!461 = metadata !{i32 786689, metadata !456, metadata !"natoms", metadata !5, i32 33554976, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 544]
!462 = metadata !{i32 786689, metadata !456, metadata !"x", metadata !5, i32 50332192, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 544]
!463 = metadata !{i32 786689, metadata !456, metadata !"phi", metadata !5, i32 67109408, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [phi] [line 544]
!464 = metadata !{i32 786688, metadata !456, metadata !"fp", metadata !5, i32 546, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 546]
!465 = metadata !{i32 786688, metadata !456, metadata !"i", metadata !5, i32 547, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 547]
!466 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"write_pqr", metadata !"write_pqr", metadata !"", i32 555, metadata !467, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, %struct.t_atoms*, [3 x float]*, float*, float)* @write_pqr, null, null, metadata !528, i32 556} ; [ DW_TAG_subprogram ] [line 555] [def] [scope 556] [write_pqr]
!467 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !468, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!468 = metadata !{null, metadata !16, metadata !469, metadata !126, metadata !68, metadata !66}
!469 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !470} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atoms]
!470 = metadata !{i32 786454, metadata !1, null, metadata !"t_atoms", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !471} ; [ DW_TAG_typedef ] [t_atoms] [line 94, size 0, align 0, offset 0] [from ]
!471 = metadata !{i32 786451, metadata !472, null, metadata !"", i32 75, i64 10240, i64 64, i32 0, i32 0, null, metadata !473, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 75, size 10240, align 64, offset 0] [from ]
!472 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/atoms.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!473 = metadata !{metadata !474, metadata !475, metadata !494, metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !511}
!474 = metadata !{i32 786445, metadata !472, metadata !471, metadata !"nr", i32 76, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nr] [line 76, size 32, align 32, offset 0] [from int]
!475 = metadata !{i32 786445, metadata !472, metadata !471, metadata !"atom", i32 77, i64 64, i64 64, i64 64, i32 0, metadata !476} ; [ DW_TAG_member ] [atom] [line 77, size 64, align 64, offset 64] [from ]
!476 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !477} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atom]
!477 = metadata !{i32 786454, metadata !472, null, metadata !"t_atom", i32 57, i64 0, i64 0, i64 0, i32 0, metadata !478} ; [ DW_TAG_typedef ] [t_atom] [line 57, size 0, align 0, offset 0] [from ]
!478 = metadata !{i32 786451, metadata !472, null, metadata !"", i32 48, i64 320, i64 32, i32 0, i32 0, null, metadata !479, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 320, align 32, offset 0] [from ]
!479 = metadata !{metadata !480, metadata !481, metadata !482, metadata !483, metadata !484, metadata !485, metadata !486, metadata !487, metadata !488, metadata !493}
!480 = metadata !{i32 786445, metadata !472, metadata !478, metadata !"m", i32 49, i64 32, i64 32, i64 0, i32 0, metadata !66} ; [ DW_TAG_member ] [m] [line 49, size 32, align 32, offset 0] [from real]
!481 = metadata !{i32 786445, metadata !472, metadata !478, metadata !"q", i32 49, i64 32, i64 32, i64 32, i32 0, metadata !66} ; [ DW_TAG_member ] [q] [line 49, size 32, align 32, offset 32] [from real]
!482 = metadata !{i32 786445, metadata !472, metadata !478, metadata !"mB", i32 50, i64 32, i64 32, i64 64, i32 0, metadata !66} ; [ DW_TAG_member ] [mB] [line 50, size 32, align 32, offset 64] [from real]
!483 = metadata !{i32 786445, metadata !472, metadata !478, metadata !"qB", i32 50, i64 32, i64 32, i64 96, i32 0, metadata !66} ; [ DW_TAG_member ] [qB] [line 50, size 32, align 32, offset 96] [from real]
!484 = metadata !{i32 786445, metadata !472, metadata !478, metadata !"type", i32 51, i64 16, i64 16, i64 128, i32 0, metadata !43} ; [ DW_TAG_member ] [type] [line 51, size 16, align 16, offset 128] [from unsigned short]
!485 = metadata !{i32 786445, metadata !472, metadata !478, metadata !"typeB", i32 52, i64 16, i64 16, i64 144, i32 0, metadata !43} ; [ DW_TAG_member ] [typeB] [line 52, size 16, align 16, offset 144] [from unsigned short]
!486 = metadata !{i32 786445, metadata !472, metadata !478, metadata !"ptype", i32 53, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [ptype] [line 53, size 32, align 32, offset 160] [from int]
!487 = metadata !{i32 786445, metadata !472, metadata !478, metadata !"resnr", i32 54, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [resnr] [line 54, size 32, align 32, offset 192] [from int]
!488 = metadata !{i32 786445, metadata !472, metadata !478, metadata !"grpnr", i32 55, i64 72, i64 8, i64 224, i32 0, metadata !489} ; [ DW_TAG_member ] [grpnr] [line 55, size 72, align 8, offset 224] [from ]
!489 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 72, i64 8, i32 0, i32 0, metadata !490, metadata !491, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 72, align 8, offset 0] [from unsigned char]
!490 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!491 = metadata !{metadata !492}
!492 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!493 = metadata !{i32 786445, metadata !472, metadata !478, metadata !"chain", i32 56, i64 8, i64 8, i64 296, i32 0, metadata !490} ; [ DW_TAG_member ] [chain] [line 56, size 8, align 8, offset 296] [from unsigned char]
!494 = metadata !{i32 786445, metadata !472, metadata !471, metadata !"atomname", i32 80, i64 64, i64 64, i64 128, i32 0, metadata !495} ; [ DW_TAG_member ] [atomname] [line 80, size 64, align 64, offset 128] [from ]
!495 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !496} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!496 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!497 = metadata !{i32 786445, metadata !472, metadata !471, metadata !"atomtype", i32 82, i64 64, i64 64, i64 192, i32 0, metadata !495} ; [ DW_TAG_member ] [atomtype] [line 82, size 64, align 64, offset 192] [from ]
!498 = metadata !{i32 786445, metadata !472, metadata !471, metadata !"atomtypeB", i32 84, i64 64, i64 64, i64 256, i32 0, metadata !495} ; [ DW_TAG_member ] [atomtypeB] [line 84, size 64, align 64, offset 256] [from ]
!499 = metadata !{i32 786445, metadata !472, metadata !471, metadata !"nres", i32 86, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [nres] [line 86, size 32, align 32, offset 320] [from int]
!500 = metadata !{i32 786445, metadata !472, metadata !471, metadata !"resname", i32 87, i64 64, i64 64, i64 384, i32 0, metadata !495} ; [ DW_TAG_member ] [resname] [line 87, size 64, align 64, offset 384] [from ]
!501 = metadata !{i32 786445, metadata !472, metadata !471, metadata !"ngrpname", i32 89, i64 32, i64 32, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [ngrpname] [line 89, size 32, align 32, offset 448] [from int]
!502 = metadata !{i32 786445, metadata !472, metadata !471, metadata !"grpname", i32 90, i64 64, i64 64, i64 512, i32 0, metadata !495} ; [ DW_TAG_member ] [grpname] [line 90, size 64, align 64, offset 512] [from ]
!503 = metadata !{i32 786445, metadata !472, metadata !471, metadata !"excl", i32 91, i64 8448, i64 64, i64 576, i32 0, metadata !250} ; [ DW_TAG_member ] [excl] [line 91, size 8448, align 64, offset 576] [from t_block]
!504 = metadata !{i32 786445, metadata !472, metadata !471, metadata !"grps", i32 92, i64 1152, i64 64, i64 9024, i32 0, metadata !505} ; [ DW_TAG_member ] [grps] [line 92, size 1152, align 64, offset 9024] [from ]
!505 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 64, i32 0, i32 0, metadata !506, metadata !491, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1152, align 64, offset 0] [from t_grps]
!506 = metadata !{i32 786454, metadata !472, null, metadata !"t_grps", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !507} ; [ DW_TAG_typedef ] [t_grps] [line 73, size 0, align 0, offset 0] [from ]
!507 = metadata !{i32 786451, metadata !472, null, metadata !"", i32 70, i64 128, i64 64, i32 0, i32 0, null, metadata !508, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 70, size 128, align 64, offset 0] [from ]
!508 = metadata !{metadata !509, metadata !510}
!509 = metadata !{i32 786445, metadata !472, metadata !507, metadata !"nr", i32 71, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nr] [line 71, size 32, align 32, offset 0] [from int]
!510 = metadata !{i32 786445, metadata !472, metadata !507, metadata !"nm_ind", i32 72, i64 64, i64 64, i64 64, i32 0, metadata !123} ; [ DW_TAG_member ] [nm_ind] [line 72, size 64, align 64, offset 64] [from ]
!511 = metadata !{i32 786445, metadata !472, metadata !471, metadata !"pdbinfo", i32 93, i64 64, i64 64, i64 10176, i32 0, metadata !512} ; [ DW_TAG_member ] [pdbinfo] [line 93, size 64, align 64, offset 10176] [from ]
!512 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !513} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_pdbinfo]
!513 = metadata !{i32 786454, metadata !472, null, metadata !"t_pdbinfo", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !514} ; [ DW_TAG_typedef ] [t_pdbinfo] [line 68, size 0, align 0, offset 0] [from ]
!514 = metadata !{i32 786451, metadata !472, null, metadata !"", i32 59, i64 416, i64 32, i32 0, i32 0, null, metadata !515, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 59, size 416, align 32, offset 0] [from ]
!515 = metadata !{metadata !516, metadata !517, metadata !518, metadata !519, metadata !523, metadata !524, metadata !525, metadata !526}
!516 = metadata !{i32 786445, metadata !472, metadata !514, metadata !"type", i32 60, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 60, size 32, align 32, offset 0] [from int]
!517 = metadata !{i32 786445, metadata !472, metadata !514, metadata !"atomnr", i32 61, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [atomnr] [line 61, size 32, align 32, offset 32] [from int]
!518 = metadata !{i32 786445, metadata !472, metadata !514, metadata !"altloc", i32 62, i64 8, i64 8, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [altloc] [line 62, size 8, align 8, offset 64] [from char]
!519 = metadata !{i32 786445, metadata !472, metadata !514, metadata !"pdbresnr", i32 63, i64 48, i64 8, i64 72, i32 0, metadata !520} ; [ DW_TAG_member ] [pdbresnr] [line 63, size 48, align 8, offset 72] [from ]
!520 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 48, i64 8, i32 0, i32 0, metadata !17, metadata !521, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 48, align 8, offset 0] [from char]
!521 = metadata !{metadata !522}
!522 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!523 = metadata !{i32 786445, metadata !472, metadata !514, metadata !"occup", i32 64, i64 32, i64 32, i64 128, i32 0, metadata !66} ; [ DW_TAG_member ] [occup] [line 64, size 32, align 32, offset 128] [from real]
!524 = metadata !{i32 786445, metadata !472, metadata !514, metadata !"bfac", i32 65, i64 32, i64 32, i64 160, i32 0, metadata !66} ; [ DW_TAG_member ] [bfac] [line 65, size 32, align 32, offset 160] [from real]
!525 = metadata !{i32 786445, metadata !472, metadata !514, metadata !"bAnisotropic", i32 66, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [bAnisotropic] [line 66, size 32, align 32, offset 192] [from int]
!526 = metadata !{i32 786445, metadata !472, metadata !514, metadata !"uij", i32 67, i64 192, i64 32, i64 224, i32 0, metadata !527} ; [ DW_TAG_member ] [uij] [line 67, size 192, align 32, offset 224] [from ]
!527 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !14, metadata !521, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!528 = metadata !{metadata !529, metadata !530, metadata !531, metadata !532, metadata !533, metadata !534, metadata !535, metadata !536}
!529 = metadata !{i32 786689, metadata !466, metadata !"fn", metadata !5, i32 16777771, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 555]
!530 = metadata !{i32 786689, metadata !466, metadata !"atoms", metadata !5, i32 33554987, metadata !469, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 555]
!531 = metadata !{i32 786689, metadata !466, metadata !"x", metadata !5, i32 50332203, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 555]
!532 = metadata !{i32 786689, metadata !466, metadata !"phi", metadata !5, i32 67109419, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [phi] [line 555]
!533 = metadata !{i32 786689, metadata !466, metadata !"dx", metadata !5, i32 83886635, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dx] [line 555]
!534 = metadata !{i32 786688, metadata !466, metadata !"fp", metadata !5, i32 557, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 557]
!535 = metadata !{i32 786688, metadata !466, metadata !"i", metadata !5, i32 558, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 558]
!536 = metadata !{i32 786688, metadata !466, metadata !"rnr", metadata !5, i32 558, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rnr] [line 558]
!537 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"write_grid_pqr", metadata !"write_grid_pqr", metadata !"", i32 571, metadata !438, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32, i32, i32, float***)* @write_grid_pqr, null, null, metadata !538, i32 572} ; [ DW_TAG_subprogram ] [line 571] [def] [scope 572] [write_grid_pqr]
!538 = metadata !{metadata !539, metadata !540, metadata !541, metadata !542, metadata !543, metadata !544, metadata !545, metadata !546, metadata !547, metadata !548, metadata !549}
!539 = metadata !{i32 786689, metadata !537, metadata !"fn", metadata !5, i32 16777787, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 571]
!540 = metadata !{i32 786689, metadata !537, metadata !"nx", metadata !5, i32 33555003, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 571]
!541 = metadata !{i32 786689, metadata !537, metadata !"ny", metadata !5, i32 50332219, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 571]
!542 = metadata !{i32 786689, metadata !537, metadata !"nz", metadata !5, i32 67109435, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 571]
!543 = metadata !{i32 786689, metadata !537, metadata !"phi", metadata !5, i32 83886651, metadata !440, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [phi] [line 571]
!544 = metadata !{i32 786688, metadata !537, metadata !"fp", metadata !5, i32 573, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 573]
!545 = metadata !{i32 786688, metadata !537, metadata !"i", metadata !5, i32 574, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 574]
!546 = metadata !{i32 786688, metadata !537, metadata !"j", metadata !5, i32 574, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 574]
!547 = metadata !{i32 786688, metadata !537, metadata !"k", metadata !5, i32 574, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 574]
!548 = metadata !{i32 786688, metadata !537, metadata !"rnr", metadata !5, i32 574, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rnr] [line 574]
!549 = metadata !{i32 786688, metadata !537, metadata !"fac", metadata !5, i32 575, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fac] [line 575]
!550 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"analyse_diff", metadata !"analyse_diff", metadata !"", i32 588, metadata !551, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct._IO_FILE*, i8*, i32, [3 x float]*, [3 x float]*, float*, float*, float*, i8*, i8*, i8*, i8*)* @analyse_diff, null, null, metadata !553, i32 592} ; [ DW_TAG_subprogram ] [line 588] [def] [scope 592] [analyse_diff]
!551 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !552, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!552 = metadata !{metadata !66, metadata !8, metadata !16, metadata !14, metadata !126, metadata !126, metadata !68, metadata !68, metadata !68, metadata !16, metadata !16, metadata !16, metadata !16}
!553 = metadata !{metadata !554, metadata !555, metadata !556, metadata !557, metadata !558, metadata !559, metadata !560, metadata !561, metadata !562, metadata !563, metadata !564, metadata !565, metadata !566, metadata !567, metadata !568, metadata !569, metadata !570, metadata !571, metadata !572, metadata !573, metadata !574, metadata !575, metadata !576}
!554 = metadata !{i32 786689, metadata !550, metadata !"log", metadata !5, i32 16777804, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 588]
!555 = metadata !{i32 786689, metadata !550, metadata !"label", metadata !5, i32 33555020, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [label] [line 588]
!556 = metadata !{i32 786689, metadata !550, metadata !"natom", metadata !5, i32 50332237, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natom] [line 589]
!557 = metadata !{i32 786689, metadata !550, metadata !"ffour", metadata !5, i32 67109453, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ffour] [line 589]
!558 = metadata !{i32 786689, metadata !550, metadata !"fpppm", metadata !5, i32 83886669, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fpppm] [line 589]
!559 = metadata !{i32 786689, metadata !550, metadata !"phi_f", metadata !5, i32 100663886, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [phi_f] [line 590]
!560 = metadata !{i32 786689, metadata !550, metadata !"phi_p", metadata !5, i32 117441102, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [phi_p] [line 590]
!561 = metadata !{i32 786689, metadata !550, metadata !"phi_sr", metadata !5, i32 134218318, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [phi_sr] [line 590]
!562 = metadata !{i32 786689, metadata !550, metadata !"fcorr", metadata !5, i32 150995535, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fcorr] [line 591]
!563 = metadata !{i32 786689, metadata !550, metadata !"pcorr", metadata !5, i32 167772751, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pcorr] [line 591]
!564 = metadata !{i32 786689, metadata !550, metadata !"ftotcorr", metadata !5, i32 184549967, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ftotcorr] [line 591]
!565 = metadata !{i32 786689, metadata !550, metadata !"ptotcorr", metadata !5, i32 201327183, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ptotcorr] [line 591]
!566 = metadata !{i32 786688, metadata !550, metadata !"i", metadata !5, i32 593, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 593]
!567 = metadata !{i32 786688, metadata !550, metadata !"m", metadata !5, i32 593, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 593]
!568 = metadata !{i32 786688, metadata !550, metadata !"fp", metadata !5, i32 594, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 594]
!569 = metadata !{i32 786688, metadata !550, metadata !"gp", metadata !5, i32 594, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gp] [line 594]
!570 = metadata !{i32 786688, metadata !550, metadata !"f2sum", metadata !5, i32 595, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f2sum] [line 595]
!571 = metadata !{i32 786688, metadata !550, metadata !"p2sum", metadata !5, i32 595, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p2sum] [line 595]
!572 = metadata !{i32 786688, metadata !550, metadata !"df", metadata !5, i32 596, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [df] [line 596]
!573 = metadata !{i32 786688, metadata !550, metadata !"fmax", metadata !5, i32 596, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fmax] [line 596]
!574 = metadata !{i32 786688, metadata !550, metadata !"dp", metadata !5, i32 596, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dp] [line 596]
!575 = metadata !{i32 786688, metadata !550, metadata !"pmax", metadata !5, i32 596, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pmax] [line 596]
!576 = metadata !{i32 786688, metadata !550, metadata !"rmsf", metadata !5, i32 596, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rmsf] [line 596]
!577 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"rgbset", metadata !"rgbset", metadata !"", i32 459, metadata !578, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !580, i32 460} ; [ DW_TAG_subprogram ] [line 459] [local] [def] [scope 460] [rgbset]
!578 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !579, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!579 = metadata !{metadata !66, metadata !66}
!580 = metadata !{metadata !581, metadata !582}
!581 = metadata !{i32 786689, metadata !577, metadata !"col", metadata !5, i32 16777675, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col] [line 459]
!582 = metadata !{i32 786688, metadata !577, metadata !"icol32", metadata !5, i32 461, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [icol32] [line 461]
!583 = metadata !{i32 786478, metadata !584, metadata !585, metadata !"svmul", metadata !"svmul", metadata !"", i32 304, metadata !586, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !588, i32 305} ; [ DW_TAG_subprogram ] [line 304] [local] [def] [scope 305] [svmul]
!584 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!585 = metadata !{i32 786473, metadata !584}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!586 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !587, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!587 = metadata !{null, metadata !66, metadata !68, metadata !68}
!588 = metadata !{metadata !589, metadata !590, metadata !591}
!589 = metadata !{i32 786689, metadata !583, metadata !"a", metadata !585, i32 16777520, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 304]
!590 = metadata !{i32 786689, metadata !583, metadata !"v1", metadata !585, i32 33554736, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v1] [line 304]
!591 = metadata !{i32 786689, metadata !583, metadata !"v2", metadata !585, i32 50331952, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v2] [line 304]
!592 = metadata !{i32 786478, metadata !584, metadata !585, metadata !"rvec_inc", metadata !"rvec_inc", metadata !"", i32 231, metadata !593, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !595, i32 232} ; [ DW_TAG_subprogram ] [line 231] [local] [def] [scope 232] [rvec_inc]
!593 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !594, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!594 = metadata !{null, metadata !68, metadata !68}
!595 = metadata !{metadata !596, metadata !597, metadata !598, metadata !599, metadata !600}
!596 = metadata !{i32 786689, metadata !592, metadata !"a", metadata !585, i32 16777447, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 231]
!597 = metadata !{i32 786689, metadata !592, metadata !"b", metadata !585, i32 33554663, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 231]
!598 = metadata !{i32 786688, metadata !592, metadata !"x", metadata !585, i32 233, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 233]
!599 = metadata !{i32 786688, metadata !592, metadata !"y", metadata !585, i32 233, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 233]
!600 = metadata !{i32 786688, metadata !592, metadata !"z", metadata !585, i32 233, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 233]
!601 = metadata !{i32 786478, metadata !584, metadata !585, metadata !"rvec_dec", metadata !"rvec_dec", metadata !"", i32 257, metadata !593, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !602, i32 258} ; [ DW_TAG_subprogram ] [line 257] [local] [def] [scope 258] [rvec_dec]
!602 = metadata !{metadata !603, metadata !604, metadata !605, metadata !606, metadata !607}
!603 = metadata !{i32 786689, metadata !601, metadata !"a", metadata !585, i32 16777473, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 257]
!604 = metadata !{i32 786689, metadata !601, metadata !"b", metadata !585, i32 33554689, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 257]
!605 = metadata !{i32 786688, metadata !601, metadata !"x", metadata !585, i32 259, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 259]
!606 = metadata !{i32 786688, metadata !601, metadata !"y", metadata !585, i32 259, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 259]
!607 = metadata !{i32 786688, metadata !601, metadata !"z", metadata !585, i32 259, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 259]
!608 = metadata !{i32 786478, metadata !584, metadata !585, metadata !"rvec_sub", metadata !"rvec_sub", metadata !"", i32 244, metadata !609, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !613, i32 245} ; [ DW_TAG_subprogram ] [line 244] [local] [def] [scope 245] [rvec_sub]
!609 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !610, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!610 = metadata !{null, metadata !611, metadata !611, metadata !68}
!611 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !612} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!612 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from real]
!613 = metadata !{metadata !614, metadata !615, metadata !616, metadata !617, metadata !618, metadata !619}
!614 = metadata !{i32 786689, metadata !608, metadata !"a", metadata !585, i32 16777460, metadata !611, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 244]
!615 = metadata !{i32 786689, metadata !608, metadata !"b", metadata !585, i32 33554676, metadata !611, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 244]
!616 = metadata !{i32 786689, metadata !608, metadata !"c", metadata !585, i32 50331892, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 244]
!617 = metadata !{i32 786688, metadata !608, metadata !"x", metadata !585, i32 246, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 246]
!618 = metadata !{i32 786688, metadata !608, metadata !"y", metadata !585, i32 246, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 246]
!619 = metadata !{i32 786688, metadata !608, metadata !"z", metadata !585, i32 246, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 246]
!620 = metadata !{i32 786478, metadata !584, metadata !585, metadata !"sqr", metadata !"sqr", metadata !"", i32 197, metadata !578, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !621, i32 198} ; [ DW_TAG_subprogram ] [line 197] [local] [def] [scope 198] [sqr]
!621 = metadata !{metadata !622}
!622 = metadata !{i32 786689, metadata !620, metadata !"x", metadata !585, i32 16777413, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 197]
!623 = metadata !{metadata !624, metadata !625, metadata !626, metadata !627, metadata !628, metadata !629, metadata !630, metadata !631, metadata !632, metadata !633, metadata !634, metadata !635, metadata !636, metadata !637, metadata !638, metadata !639, metadata !640}
!624 = metadata !{i32 786484, i32 0, metadata !304, metadata !"bFirst", metadata !"bFirst", metadata !"", metadata !5, i32 290, metadata !14, i32 1, i32 1, null, null}
!625 = metadata !{i32 786484, i32 0, metadata !304, metadata !"Vself", metadata !"Vself", metadata !"", metadata !5, i32 291, metadata !66, i32 1, i32 1, float* @shift_LRcorrection.Vself, null} ; [ DW_TAG_variable ] [Vself] [line 291] [local] [def]
!626 = metadata !{i32 786484, i32 0, null, metadata !"A", metadata !"A", metadata !"", metadata !5, i32 52, metadata !66, i32 1, i32 1, float* @A, null} ; [ DW_TAG_variable ] [A] [line 52] [local] [def]
!627 = metadata !{i32 786484, i32 0, null, metadata !"A_3", metadata !"A_3", metadata !"", metadata !5, i32 52, metadata !66, i32 1, i32 1, float* @A_3, null} ; [ DW_TAG_variable ] [A_3] [line 52] [local] [def]
!628 = metadata !{i32 786484, i32 0, null, metadata !"B", metadata !"B", metadata !"", metadata !5, i32 52, metadata !66, i32 1, i32 1, float* @B, null} ; [ DW_TAG_variable ] [B] [line 52] [local] [def]
!629 = metadata !{i32 786484, i32 0, null, metadata !"B_4", metadata !"B_4", metadata !"", metadata !5, i32 52, metadata !66, i32 1, i32 1, float* @B_4, null} ; [ DW_TAG_variable ] [B_4] [line 52] [local] [def]
!630 = metadata !{i32 786484, i32 0, null, metadata !"C", metadata !"C", metadata !"", metadata !5, i32 52, metadata !66, i32 1, i32 1, float* @C, null} ; [ DW_TAG_variable ] [C] [line 52] [local] [def]
!631 = metadata !{i32 786484, i32 0, null, metadata !"c1", metadata !"c1", metadata !"", metadata !5, i32 52, metadata !66, i32 1, i32 1, float* @c1, null} ; [ DW_TAG_variable ] [c1] [line 52] [local] [def]
!632 = metadata !{i32 786484, i32 0, null, metadata !"c2", metadata !"c2", metadata !"", metadata !5, i32 52, metadata !66, i32 1, i32 1, float* @c2, null} ; [ DW_TAG_variable ] [c2] [line 52] [local] [def]
!633 = metadata !{i32 786484, i32 0, null, metadata !"c3", metadata !"c3", metadata !"", metadata !5, i32 52, metadata !66, i32 1, i32 1, float* @c3, null} ; [ DW_TAG_variable ] [c3] [line 52] [local] [def]
!634 = metadata !{i32 786484, i32 0, null, metadata !"c4", metadata !"c4", metadata !"", metadata !5, i32 52, metadata !66, i32 1, i32 1, float* @c4, null} ; [ DW_TAG_variable ] [c4] [line 52] [local] [def]
!635 = metadata !{i32 786484, i32 0, null, metadata !"c5", metadata !"c5", metadata !"", metadata !5, i32 52, metadata !66, i32 1, i32 1, float* @c5, null} ; [ DW_TAG_variable ] [c5] [line 52] [local] [def]
!636 = metadata !{i32 786484, i32 0, null, metadata !"c6", metadata !"c6", metadata !"", metadata !5, i32 52, metadata !66, i32 1, i32 1, float* @c6, null} ; [ DW_TAG_variable ] [c6] [line 52] [local] [def]
!637 = metadata !{i32 786484, i32 0, null, metadata !"One_4pi", metadata !"One_4pi", metadata !"", metadata !5, i32 52, metadata !66, i32 1, i32 1, float* @One_4pi, null} ; [ DW_TAG_variable ] [One_4pi] [line 52] [local] [def]
!638 = metadata !{i32 786484, i32 0, null, metadata !"FourPi_V", metadata !"FourPi_V", metadata !"", metadata !5, i32 52, metadata !66, i32 1, i32 1, float* @FourPi_V, null} ; [ DW_TAG_variable ] [FourPi_V] [line 52] [local] [def]
!639 = metadata !{i32 786484, i32 0, null, metadata !"Vol", metadata !"Vol", metadata !"", metadata !5, i32 52, metadata !66, i32 1, i32 1, float* @Vol, null} ; [ DW_TAG_variable ] [Vol] [line 52] [local] [def]
!640 = metadata !{i32 786484, i32 0, null, metadata !"N0", metadata !"N0", metadata !"", metadata !5, i32 52, metadata !66, i32 1, i32 1, float* @N0, null} ; [ DW_TAG_variable ] [N0] [line 52] [local] [def]
!641 = metadata !{i32 54, i32 0, metadata !4, null}
!642 = metadata !{i32 57, i32 0, metadata !4, null}
!643 = metadata !{i32 58, i32 0, metadata !644, null} ; [ DW_TAG_imported_module ]
!644 = metadata !{i32 786443, metadata !1, metadata !4, i32 57, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!645 = metadata !{metadata !"float", metadata !646}
!646 = metadata !{metadata !"omnipotent char", metadata !647}
!647 = metadata !{metadata !"Simple C/C++ TBAA"}
!648 = metadata !{i32 59, i32 0, metadata !644, null}
!649 = metadata !{i32 61, i32 0, metadata !644, null}
!650 = metadata !{i32 63, i32 0, metadata !4, null}
!651 = metadata !{i32 66, i32 0, metadata !4, null}
!652 = metadata !{i32 67, i32 0, metadata !4, null}
!653 = metadata !{i32 68, i32 0, metadata !4, null}
!654 = metadata !{i32 69, i32 0, metadata !4, null}
!655 = metadata !{i32 71, i32 0, metadata !4, null}
!656 = metadata !{i32 72, i32 0, metadata !4, null}
!657 = metadata !{i32 74, i32 0, metadata !4, null}
!658 = metadata !{metadata !"any pointer", metadata !646}
!659 = metadata !{i32 75, i32 0, metadata !4, null}
!660 = metadata !{i32 88, i32 0, metadata !4, null}
!661 = metadata !{i32 81, i32 0, metadata !4, null}
!662 = metadata !{i32 82, i32 0, metadata !4, null}
!663 = metadata !{i32 83, i32 0, metadata !4, null}
!664 = metadata !{i32 84, i32 0, metadata !4, null}
!665 = metadata !{i32 85, i32 0, metadata !4, null}
!666 = metadata !{i32 86, i32 0, metadata !4, null}
!667 = metadata !{i32 89, i32 0, metadata !4, null}
!668 = metadata !{i32 93, i32 0, metadata !4, null}
!669 = metadata !{i32 94, i32 0, metadata !4, null}
!670 = metadata !{i32 96, i32 0, metadata !178, null}
!671 = metadata !{i32 101, i32 0, metadata !178, null}
!672 = metadata !{i32 104, i32 0, metadata !178, null}
!673 = metadata !{i32 105, i32 0, metadata !178, null}
!674 = metadata !{i32 106, i32 0, metadata !178, null}
!675 = metadata !{i32 108, i32 0, metadata !178, null}
!676 = metadata !{i32 111, i32 0, metadata !187, null}
!677 = metadata !{i32 115, i32 0, metadata !187, null}
!678 = metadata !{i32 116, i32 0, metadata !187, null}
!679 = metadata !{i32 118, i32 0, metadata !187, null}
!680 = metadata !{i32 121, i32 0, metadata !194, null}
!681 = metadata !{float 0.000000e+00}
!682 = metadata !{i32 126, i32 0, metadata !194, null}
!683 = metadata !{i32 127, i32 0, metadata !684, null}
!684 = metadata !{i32 786443, metadata !1, metadata !194, i32 127, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!685 = metadata !{i32 128, i32 0, metadata !686, null}
!686 = metadata !{i32 786443, metadata !1, metadata !684, i32 127, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!687 = metadata !{i32 129, i32 0, metadata !686, null}
!688 = metadata !{i32 130, i32 0, metadata !686, null}
!689 = metadata !{i32 131, i32 0, metadata !686, null}
!690 = metadata !{i32 132, i32 0, metadata !686, null}
!691 = metadata !{i32 133, i32 0, metadata !686, null}
!692 = metadata !{i32 134, i32 0, metadata !686, null}
!693 = metadata !{i32 136, i32 0, metadata !194, null}
!694 = metadata !{i32 139, i32 0, metadata !205, null}
!695 = metadata !{i32 141, i32 0, metadata !205, null}
!696 = metadata !{i32 143, i32 0, metadata !205, null}
!697 = metadata !{i32 146, i32 0, metadata !213, null}
!698 = metadata !{i32 150, i32 0, metadata !213, null}
!699 = metadata !{i32 152, i32 0, metadata !213, null}
!700 = metadata !{i32 153, i32 0, metadata !213, null}
!701 = metadata !{i32 155, i32 0, metadata !213, null}
!702 = metadata !{i32 157, i32 0, metadata !213, null}
!703 = metadata !{i32 158, i32 0, metadata !213, null}
!704 = metadata !{i32 160, i32 0, metadata !219, null}
!705 = metadata !{i32 164, i32 0, metadata !219, null}
!706 = metadata !{i32 165, i32 0, metadata !219, null}
!707 = metadata !{i32 166, i32 0, metadata !219, null}
!708 = metadata !{i32 167, i32 0, metadata !219, null}
!709 = metadata !{i32 170, i32 0, metadata !228, null}
!710 = metadata !{i32 174, i32 0, metadata !228, null}
!711 = metadata !{i32 786689, metadata !620, metadata !"x", metadata !585, i32 16777413, metadata !66, i32 0, metadata !710} ; [ DW_TAG_arg_variable ] [x] [line 197]
!712 = metadata !{i32 197, i32 0, metadata !620, metadata !710}
!713 = metadata !{i32 199, i32 0, metadata !620, metadata !710}
!714 = metadata !{i32 176, i32 0, metadata !228, null}
!715 = metadata !{i32 179, i32 0, metadata !233, null}
!716 = metadata !{i32 183, i32 0, metadata !233, null}
!717 = metadata !{i32 185, i32 0, metadata !233, null}
!718 = metadata !{i32 188, i32 0, metadata !233, null}
!719 = metadata !{i32 189, i32 0, metadata !233, null}
!720 = metadata !{i32 190, i32 0, metadata !233, null}
!721 = metadata !{i32 191, i32 0, metadata !233, null}
!722 = metadata !{i32 193, i32 0, metadata !240, null}
!723 = metadata !{i32 197, i32 0, metadata !240, null}
!724 = metadata !{i32 198, i32 0, metadata !240, null}
!725 = metadata !{i32 199, i32 0, metadata !240, null}
!726 = metadata !{i32 202, i32 0, metadata !240, null}
!727 = metadata !{i32 204, i32 0, metadata !240, null}
!728 = metadata !{i32 205, i32 0, metadata !240, null}
!729 = metadata !{i32 207, i32 0, metadata !246, null}
!730 = metadata !{i32 208, i32 0, metadata !246, null}
!731 = metadata !{i32 213, i32 0, metadata !246, null}
!732 = metadata !{i32 215, i32 0, metadata !246, null}
!733 = metadata !{float 0x40615DEEE0000000}
!734 = metadata !{i32 216, i32 0, metadata !246, null}
!735 = metadata !{i32 217, i32 0, metadata !246, null}
!736 = metadata !{i32 218, i32 0, metadata !246, null}
!737 = metadata !{i32 219, i32 0, metadata !738, null}
!738 = metadata !{i32 786443, metadata !1, metadata !246, i32 219, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!739 = metadata !{i32 222, i32 0, metadata !740, null}
!740 = metadata !{i32 786443, metadata !1, metadata !741, i32 221, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!741 = metadata !{i32 786443, metadata !1, metadata !742, i32 221, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!742 = metadata !{i32 786443, metadata !1, metadata !738, i32 219, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!743 = metadata !{i32 228, i32 0, metadata !744, null}
!744 = metadata !{i32 786443, metadata !1, metadata !740, i32 227, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!745 = metadata !{i32 234, i32 0, metadata !746, null}
!746 = metadata !{i32 786443, metadata !1, metadata !744, i32 229, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!747 = metadata !{i32 176, i32 0, metadata !228, metadata !748}
!748 = metadata !{i32 240, i32 0, metadata !749, null}
!749 = metadata !{i32 786443, metadata !1, metadata !746, i32 238, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!750 = metadata !{i32 225, i32 0, metadata !751, null}
!751 = metadata !{i32 786443, metadata !1, metadata !740, i32 224, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!752 = metadata !{i32 220, i32 0, metadata !742, null}
!753 = metadata !{i32 221, i32 0, metadata !741, null}
!754 = metadata !{i32 242, i32 0, metadata !746, null}
!755 = metadata !{i32 243, i32 0, metadata !746, null}
!756 = metadata !{metadata !"int", metadata !646}
!757 = metadata !{i32 223, i32 0, metadata !740, null}
!758 = metadata !{i32 224, i32 0, metadata !751, null}
!759 = metadata !{i32 227, i32 0, metadata !740, null}
!760 = metadata !{i32 229, i32 0, metadata !744, null}
!761 = metadata !{i32 230, i32 0, metadata !746, null}
!762 = metadata !{i32 231, i32 0, metadata !746, null}
!763 = metadata !{i32 232, i32 0, metadata !746, null}
!764 = metadata !{i32 233, i32 0, metadata !746, null}
!765 = metadata !{i32 235, i32 0, metadata !766, null}
!766 = metadata !{i32 786443, metadata !1, metadata !746, i32 234, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!767 = metadata !{i32 236, i32 0, metadata !766, null}
!768 = metadata !{i32 237, i32 0, metadata !766, null}
!769 = metadata !{i32 786689, metadata !219, metadata !"r", metadata !5, i32 16777376, metadata !66, i32 0, metadata !770} ; [ DW_TAG_arg_variable ] [r] [line 160]
!770 = metadata !{i32 239, i32 0, metadata !749, null}
!771 = metadata !{i32 160, i32 0, metadata !219, metadata !770}
!772 = metadata !{i32 786689, metadata !219, metadata !"rc", metadata !5, i32 33554592, metadata !66, i32 0, metadata !770} ; [ DW_TAG_arg_variable ] [rc] [line 160]
!773 = metadata !{i32 164, i32 0, metadata !219, metadata !770}
!774 = metadata !{i32 786688, metadata !219, metadata !"rrc", metadata !5, i32 162, metadata !66, i32 0, metadata !770} ; [ DW_TAG_auto_variable ] [rrc] [line 162]
!775 = metadata !{i32 165, i32 0, metadata !219, metadata !770}
!776 = metadata !{i32 786688, metadata !219, metadata !"rrc2", metadata !5, i32 162, metadata !66, i32 0, metadata !770} ; [ DW_TAG_auto_variable ] [rrc2] [line 162]
!777 = metadata !{i32 166, i32 0, metadata !219, metadata !770}
!778 = metadata !{i32 786688, metadata !219, metadata !"rrc3", metadata !5, i32 162, metadata !66, i32 0, metadata !770} ; [ DW_TAG_auto_variable ] [rrc3] [line 162]
!779 = metadata !{i32 167, i32 0, metadata !219, metadata !770}
!780 = metadata !{i32 786689, metadata !228, metadata !"r", metadata !5, i32 16777386, metadata !66, i32 0, metadata !748} ; [ DW_TAG_arg_variable ] [r] [line 170]
!781 = metadata !{i32 170, i32 0, metadata !228, metadata !748}
!782 = metadata !{i32 786689, metadata !228, metadata !"rc", metadata !5, i32 33554602, metadata !66, i32 0, metadata !748} ; [ DW_TAG_arg_variable ] [rc] [line 170]
!783 = metadata !{i32 786689, metadata !620, metadata !"x", metadata !585, i32 16777413, metadata !66, i32 0, metadata !784} ; [ DW_TAG_arg_variable ] [x] [line 197]
!784 = metadata !{i32 174, i32 0, metadata !228, metadata !748}
!785 = metadata !{i32 197, i32 0, metadata !620, metadata !784}
!786 = metadata !{i32 786688, metadata !228, metadata !"rrr", metadata !5, i32 172, metadata !66, i32 0, metadata !748} ; [ DW_TAG_auto_variable ] [rrr] [line 172]
!787 = metadata !{i32 244, i32 0, metadata !746, null}
!788 = metadata !{i32 245, i32 0, metadata !789, null}
!789 = metadata !{i32 786443, metadata !1, metadata !746, i32 245, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!790 = metadata !{i32 246, i32 0, metadata !791, null}
!791 = metadata !{i32 786443, metadata !1, metadata !789, i32 245, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!792 = metadata !{i32 247, i32 0, metadata !791, null}
!793 = metadata !{i32 249, i32 0, metadata !746, null}
!794 = metadata !{i32 250, i32 0, metadata !746, null}
!795 = metadata !{i32 254, i32 0, metadata !246, null}
!796 = metadata !{i32 255, i32 0, metadata !246, null}
!797 = metadata !{i32 257, i32 0, metadata !246, null}
!798 = metadata !{i32 260, i32 0, metadata !293, null}
!799 = metadata !{i32 264, i32 0, metadata !293, null}
!800 = metadata !{i32 266, i32 0, metadata !293, null}
!801 = metadata !{i32 269, i32 0, metadata !293, null}
!802 = metadata !{i32 271, i32 0, metadata !293, null}
!803 = metadata !{i32 272, i32 0, metadata !293, null}
!804 = metadata !{i32 274, i32 0, metadata !299, null}
!805 = metadata !{i32 276, i32 0, metadata !299, null}
!806 = metadata !{i32 277, i32 0, metadata !299, null}
!807 = metadata !{i32 278, i32 0, metadata !299, null}
!808 = metadata !{i32 279, i32 0, metadata !299, null}
!809 = metadata !{i32 282, i32 0, metadata !299, null}
!810 = metadata !{i32 286, i32 0, metadata !304, null}
!811 = metadata !{i32 287, i32 0, metadata !304, null}
!812 = metadata !{i32 288, i32 0, metadata !304, null}
!813 = metadata !{double 0x3FE20DD750429B6A}
!814 = metadata !{i32 295, i32 0, metadata !304, null}
!815 = metadata !{i32 296, i32 0, metadata !304, null}
!816 = metadata !{i32 297, i32 0, metadata !304, null}
!817 = metadata !{i32 298, i32 0, metadata !304, null}
!818 = metadata !{i32 299, i32 0, metadata !304, null}
!819 = metadata !{i32 301, i32 0, metadata !304, null}
!820 = metadata !{i32 302, i32 0, metadata !304, null}
!821 = metadata !{i32 328, i32 0, metadata !822, null}
!822 = metadata !{i32 786443, metadata !1, metadata !304, i32 328, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!823 = metadata !{i32 304, i32 0, metadata !304, null}
!824 = metadata !{i32 306, i32 0, metadata !825, null}
!825 = metadata !{i32 786443, metadata !1, metadata !826, i32 306, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!826 = metadata !{i32 786443, metadata !1, metadata !304, i32 304, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!827 = metadata !{i32 307, i32 0, metadata !825, null}
!828 = metadata !{i32 315, i32 0, metadata !826, null}
!829 = metadata !{i32 316, i32 0, metadata !826, null}
!830 = metadata !{i32 318, i32 0, metadata !831, null}
!831 = metadata !{i32 786443, metadata !1, metadata !826, i32 317, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!832 = metadata !{i32 319, i32 0, metadata !831, null}
!833 = metadata !{i32 320, i32 0, metadata !831, null}
!834 = metadata !{i32 321, i32 0, metadata !831, null}
!835 = metadata !{i32 322, i32 0, metadata !831, null}
!836 = metadata !{i32 325, i32 0, metadata !304, null}
!837 = metadata !{i32 326, i32 0, metadata !304, null}
!838 = metadata !{i32 330, i32 0, metadata !839, null}
!839 = metadata !{i32 786443, metadata !1, metadata !822, i32 328, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!840 = metadata !{i32 348, i32 0, metadata !841, null}
!841 = metadata !{i32 786443, metadata !1, metadata !842, i32 346, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!842 = metadata !{i32 786443, metadata !1, metadata !843, i32 344, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!843 = metadata !{i32 786443, metadata !1, metadata !844, i32 335, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!844 = metadata !{i32 786443, metadata !1, metadata !839, i32 335, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!845 = metadata !{i32 253, i32 0, metadata !608, metadata !840}
!846 = metadata !{i32 254, i32 0, metadata !608, metadata !840}
!847 = metadata !{i32 371, i32 0, metadata !841, null}
!848 = metadata !{i32 307, i32 0, metadata !849, metadata !847}
!849 = metadata !{i32 786443, metadata !584, metadata !583} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!850 = metadata !{i32 308, i32 0, metadata !849, metadata !847}
!851 = metadata !{i32 372, i32 0, metadata !841, null}
!852 = metadata !{i32 331, i32 0, metadata !839, null}
!853 = metadata !{i32 332, i32 0, metadata !839, null}
!854 = metadata !{i32 335, i32 0, metadata !844, null}
!855 = metadata !{i32 249, i32 0, metadata !608, metadata !840}
!856 = metadata !{i32 250, i32 0, metadata !608, metadata !840}
!857 = metadata !{i32 336, i32 0, metadata !843, null}
!858 = metadata !{i32 344, i32 0, metadata !843, null}
!859 = metadata !{i32 345, i32 0, metadata !842, null}
!860 = metadata !{i32 346, i32 0, metadata !842, null}
!861 = metadata !{i32 347, i32 0, metadata !841, null}
!862 = metadata !{i32 786689, metadata !608, metadata !"a", metadata !585, i32 16777460, metadata !611, i32 0, metadata !840} ; [ DW_TAG_arg_variable ] [a] [line 244]
!863 = metadata !{i32 244, i32 0, metadata !608, metadata !840}
!864 = metadata !{i32 786689, metadata !608, metadata !"b", metadata !585, i32 33554676, metadata !611, i32 0, metadata !840} ; [ DW_TAG_arg_variable ] [b] [line 244]
!865 = metadata !{i32 786689, metadata !608, metadata !"c", metadata !585, i32 50331892, metadata !68, i32 0, metadata !840} ; [ DW_TAG_arg_variable ] [c] [line 244]
!866 = metadata !{i32 248, i32 0, metadata !608, metadata !840}
!867 = metadata !{i32 786688, metadata !608, metadata !"x", metadata !585, i32 246, metadata !66, i32 0, metadata !840} ; [ DW_TAG_auto_variable ] [x] [line 246]
!868 = metadata !{i32 786688, metadata !608, metadata !"y", metadata !585, i32 246, metadata !66, i32 0, metadata !840} ; [ DW_TAG_auto_variable ] [y] [line 246]
!869 = metadata !{i32 786688, metadata !608, metadata !"z", metadata !585, i32 246, metadata !66, i32 0, metadata !840} ; [ DW_TAG_auto_variable ] [z] [line 246]
!870 = metadata !{i32 252, i32 0, metadata !608, metadata !840}
!871 = metadata !{i32 2}
!872 = metadata !{i32 349, i32 0, metadata !873, null}
!873 = metadata !{i32 786443, metadata !1, metadata !841, i32 349, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!874 = metadata !{i32 350, i32 0, metadata !875, null}
!875 = metadata !{i32 786443, metadata !1, metadata !873, i32 349, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!876 = metadata !{i32 351, i32 0, metadata !875, null}
!877 = metadata !{i32 786689, metadata !601, metadata !"a", metadata !585, i32 16777473, metadata !68, i32 0, metadata !876} ; [ DW_TAG_arg_variable ] [a] [line 257]
!878 = metadata !{i32 257, i32 0, metadata !601, metadata !876}
!879 = metadata !{i32 786689, metadata !601, metadata !"b", metadata !585, i32 33554689, metadata !68, i32 0, metadata !876} ; [ DW_TAG_arg_variable ] [b] [line 257]
!880 = metadata !{i32 261, i32 0, metadata !601, metadata !876}
!881 = metadata !{i32 786688, metadata !601, metadata !"x", metadata !585, i32 259, metadata !66, i32 0, metadata !876} ; [ DW_TAG_auto_variable ] [x] [line 259]
!882 = metadata !{i32 262, i32 0, metadata !601, metadata !876}
!883 = metadata !{i32 786688, metadata !601, metadata !"y", metadata !585, i32 259, metadata !66, i32 0, metadata !876} ; [ DW_TAG_auto_variable ] [y] [line 259]
!884 = metadata !{i32 263, i32 0, metadata !601, metadata !876}
!885 = metadata !{i32 786688, metadata !601, metadata !"z", metadata !585, i32 259, metadata !66, i32 0, metadata !876} ; [ DW_TAG_auto_variable ] [z] [line 259]
!886 = metadata !{i32 265, i32 0, metadata !601, metadata !876}
!887 = metadata !{i32 266, i32 0, metadata !601, metadata !876}
!888 = metadata !{i32 267, i32 0, metadata !601, metadata !876}
!889 = metadata !{i32 352, i32 0, metadata !875, null}
!890 = metadata !{i32 353, i32 0, metadata !875, null}
!891 = metadata !{i32 786689, metadata !592, metadata !"a", metadata !585, i32 16777447, metadata !68, i32 0, metadata !890} ; [ DW_TAG_arg_variable ] [a] [line 231]
!892 = metadata !{i32 231, i32 0, metadata !592, metadata !890}
!893 = metadata !{i32 786689, metadata !592, metadata !"b", metadata !585, i32 33554663, metadata !68, i32 0, metadata !890} ; [ DW_TAG_arg_variable ] [b] [line 231]
!894 = metadata !{i32 235, i32 0, metadata !592, metadata !890}
!895 = metadata !{i32 786688, metadata !592, metadata !"x", metadata !585, i32 233, metadata !66, i32 0, metadata !890} ; [ DW_TAG_auto_variable ] [x] [line 233]
!896 = metadata !{i32 236, i32 0, metadata !592, metadata !890}
!897 = metadata !{i32 786688, metadata !592, metadata !"y", metadata !585, i32 233, metadata !66, i32 0, metadata !890} ; [ DW_TAG_auto_variable ] [y] [line 233]
!898 = metadata !{i32 237, i32 0, metadata !592, metadata !890}
!899 = metadata !{i32 786688, metadata !592, metadata !"z", metadata !585, i32 233, metadata !66, i32 0, metadata !890} ; [ DW_TAG_auto_variable ] [z] [line 233]
!900 = metadata !{i32 239, i32 0, metadata !592, metadata !890}
!901 = metadata !{i32 240, i32 0, metadata !592, metadata !890}
!902 = metadata !{i32 241, i32 0, metadata !592, metadata !890}
!903 = metadata !{i32 355, i32 0, metadata !875, null}
!904 = metadata !{i32 357, i32 0, metadata !841, null}
!905 = metadata !{i32 358, i32 0, metadata !841, null}
!906 = metadata !{i32 359, i32 0, metadata !841, null}
!907 = metadata !{i32 362, i32 0, metadata !841, null}
!908 = metadata !{i32 786689, metadata !213, metadata !"r1", metadata !5, i32 16777362, metadata !66, i32 0, metadata !909} ; [ DW_TAG_arg_variable ] [r1] [line 146]
!909 = metadata !{i32 363, i32 0, metadata !841, null}
!910 = metadata !{i32 146, i32 0, metadata !213, metadata !909}
!911 = metadata !{i32 786689, metadata !213, metadata !"rc", metadata !5, i32 33554578, metadata !66, i32 0, metadata !909} ; [ DW_TAG_arg_variable ] [rc] [line 146]
!912 = metadata !{i32 786689, metadata !213, metadata !"R", metadata !5, i32 50331794, metadata !66, i32 0, metadata !909} ; [ DW_TAG_arg_variable ] [R] [line 146]
!913 = metadata !{i32 150, i32 0, metadata !213, metadata !909}
!914 = metadata !{i32 152, i32 0, metadata !213, metadata !909}
!915 = metadata !{i32 153, i32 0, metadata !213, metadata !909}
!916 = metadata !{i32 155, i32 0, metadata !213, metadata !909}
!917 = metadata !{i32 786688, metadata !213, metadata !"dr", metadata !5, i32 148, metadata !66, i32 0, metadata !909} ; [ DW_TAG_auto_variable ] [dr] [line 148]
!918 = metadata !{i32 157, i32 0, metadata !213, metadata !909}
!919 = metadata !{i32 365, i32 0, metadata !841, null}
!920 = metadata !{i32 366, i32 0, metadata !841, null}
!921 = metadata !{i32 786689, metadata !583, metadata !"a", metadata !585, i32 16777520, metadata !66, i32 0, metadata !847} ; [ DW_TAG_arg_variable ] [a] [line 304]
!922 = metadata !{i32 304, i32 0, metadata !583, metadata !847}
!923 = metadata !{i32 786689, metadata !583, metadata !"v1", metadata !585, i32 33554736, metadata !68, i32 0, metadata !847} ; [ DW_TAG_arg_variable ] [v1] [line 304]
!924 = metadata !{i32 786689, metadata !583, metadata !"v2", metadata !585, i32 50331952, metadata !68, i32 0, metadata !847} ; [ DW_TAG_arg_variable ] [v2] [line 304]
!925 = metadata !{i32 306, i32 0, metadata !849, metadata !847}
!926 = metadata !{i32 786689, metadata !592, metadata !"a", metadata !585, i32 16777447, metadata !68, i32 0, metadata !851} ; [ DW_TAG_arg_variable ] [a] [line 231]
!927 = metadata !{i32 231, i32 0, metadata !592, metadata !851}
!928 = metadata !{i32 786689, metadata !592, metadata !"b", metadata !585, i32 33554663, metadata !68, i32 0, metadata !851} ; [ DW_TAG_arg_variable ] [b] [line 231]
!929 = metadata !{i32 235, i32 0, metadata !592, metadata !851}
!930 = metadata !{i32 786688, metadata !592, metadata !"x", metadata !585, i32 233, metadata !66, i32 0, metadata !851} ; [ DW_TAG_auto_variable ] [x] [line 233]
!931 = metadata !{i32 236, i32 0, metadata !592, metadata !851}
!932 = metadata !{i32 786688, metadata !592, metadata !"y", metadata !585, i32 233, metadata !66, i32 0, metadata !851} ; [ DW_TAG_auto_variable ] [y] [line 233]
!933 = metadata !{i32 237, i32 0, metadata !592, metadata !851}
!934 = metadata !{i32 786688, metadata !592, metadata !"z", metadata !585, i32 233, metadata !66, i32 0, metadata !851} ; [ DW_TAG_auto_variable ] [z] [line 233]
!935 = metadata !{i32 239, i32 0, metadata !592, metadata !851}
!936 = metadata !{i32 240, i32 0, metadata !592, metadata !851}
!937 = metadata !{i32 241, i32 0, metadata !592, metadata !851}
!938 = metadata !{i32 373, i32 0, metadata !841, null}
!939 = metadata !{i32 786689, metadata !601, metadata !"a", metadata !585, i32 16777473, metadata !68, i32 0, metadata !938} ; [ DW_TAG_arg_variable ] [a] [line 257]
!940 = metadata !{i32 257, i32 0, metadata !601, metadata !938}
!941 = metadata !{i32 786689, metadata !601, metadata !"b", metadata !585, i32 33554689, metadata !68, i32 0, metadata !938} ; [ DW_TAG_arg_variable ] [b] [line 257]
!942 = metadata !{i32 261, i32 0, metadata !601, metadata !938}
!943 = metadata !{i32 786688, metadata !601, metadata !"x", metadata !585, i32 259, metadata !66, i32 0, metadata !938} ; [ DW_TAG_auto_variable ] [x] [line 259]
!944 = metadata !{i32 262, i32 0, metadata !601, metadata !938}
!945 = metadata !{i32 786688, metadata !601, metadata !"y", metadata !585, i32 259, metadata !66, i32 0, metadata !938} ; [ DW_TAG_auto_variable ] [y] [line 259]
!946 = metadata !{i32 263, i32 0, metadata !601, metadata !938}
!947 = metadata !{i32 786688, metadata !601, metadata !"z", metadata !585, i32 259, metadata !66, i32 0, metadata !938} ; [ DW_TAG_auto_variable ] [z] [line 259]
!948 = metadata !{i32 265, i32 0, metadata !601, metadata !938}
!949 = metadata !{i32 266, i32 0, metadata !601, metadata !938}
!950 = metadata !{i32 267, i32 0, metadata !601, metadata !938}
!951 = metadata !{i32 374, i32 0, metadata !952, null}
!952 = metadata !{i32 786443, metadata !1, metadata !841, i32 374, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!953 = metadata !{i32 376, i32 0, metadata !954, null}
!954 = metadata !{i32 786443, metadata !1, metadata !952, i32 375, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!955 = metadata !{i32 375, i32 0, metadata !954, null}
!956 = metadata !{i32 381, i32 0, metadata !304, null}
!957 = metadata !{i32 382, i32 0, metadata !304, null}
!958 = metadata !{i32 386, i32 0, metadata !304, null}
!959 = metadata !{i32 390, i32 0, metadata !375, null}
!960 = metadata !{i32 391, i32 0, metadata !375, null}
!961 = metadata !{i32 396, i32 0, metadata !375, null}
!962 = metadata !{i32 397, i32 0, metadata !375, null}
!963 = metadata !{i32 398, i32 0, metadata !964, null}
!964 = metadata !{i32 786443, metadata !1, metadata !375, i32 398, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!965 = metadata !{i32 399, i32 0, metadata !966, null}
!966 = metadata !{i32 786443, metadata !1, metadata !964, i32 398, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!967 = metadata !{i32 400, i32 0, metadata !966, null}
!968 = metadata !{i32 401, i32 0, metadata !966, null}
!969 = metadata !{i32 403, i32 0, metadata !375, null}
!970 = metadata !{i32 404, i32 0, metadata !375, null}
!971 = metadata !{i32 406, i32 0, metadata !375, null}
!972 = metadata !{i32 407, i32 0, metadata !973, null}
!973 = metadata !{i32 786443, metadata !1, metadata !375, i32 407, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!974 = metadata !{i32 408, i32 0, metadata !975, null}
!975 = metadata !{i32 786443, metadata !1, metadata !973, i32 407, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!976 = metadata !{i32 412, i32 0, metadata !977, null}
!977 = metadata !{i32 786443, metadata !1, metadata !978, i32 411, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!978 = metadata !{i32 786443, metadata !1, metadata !975, i32 411, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!979 = metadata !{i32 409, i32 0, metadata !975, null}
!980 = metadata !{i32 410, i32 0, metadata !975, null}
!981 = metadata !{i32 411, i32 0, metadata !978, null}
!982 = metadata !{i32 413, i32 0, metadata !977, null}
!983 = metadata !{i32 414, i32 0, metadata !977, null}
!984 = metadata !{i32 417, i32 0, metadata !375, null}
!985 = metadata !{i32 419, i32 0, metadata !375, null}
!986 = metadata !{i32 421, i32 0, metadata !375, null}
!987 = metadata !{i32 422, i32 0, metadata !988, null}
!988 = metadata !{i32 786443, metadata !1, metadata !375, i32 421, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!989 = metadata !{i32 425, i32 0, metadata !988, null}
!990 = metadata !{i32 427, i32 0, metadata !375, null}
!991 = metadata !{i32 428, i32 0, metadata !375, null}
!992 = metadata !{i32 430, i32 0, metadata !375, null}
!993 = metadata !{i32 432, i32 0, metadata !399, null}
!994 = metadata !{i32 437, i32 0, metadata !399, null}
!995 = metadata !{i32 438, i32 0, metadata !996, null}
!996 = metadata !{i32 786443, metadata !1, metadata !399, i32 438, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!997 = metadata !{i32 439, i32 0, metadata !996, null}
!998 = metadata !{i32 441, i32 0, metadata !399, null}
!999 = metadata !{i32 444, i32 0, metadata !407, null}
!1000 = metadata !{i32 786689, metadata !399, metadata !"natoms", metadata !5, i32 16777648, metadata !14, i32 0, metadata !1001} ; [ DW_TAG_arg_variable ] [natoms] [line 432]
!1001 = metadata !{i32 449, i32 0, metadata !407, null}
!1002 = metadata !{i32 432, i32 0, metadata !399, metadata !1001}
!1003 = metadata !{i32 786689, metadata !399, metadata !"phi", metadata !5, i32 33554864, metadata !68, i32 0, metadata !1001} ; [ DW_TAG_arg_variable ] [phi] [line 432]
!1004 = metadata !{i32 786688, metadata !399, metadata !"phitot", metadata !5, i32 434, metadata !66, i32 0, metadata !1001} ; [ DW_TAG_auto_variable ] [phitot] [line 434]
!1005 = metadata !{i32 437, i32 0, metadata !399, metadata !1001}
!1006 = metadata !{i32 786688, metadata !399, metadata !"i", metadata !5, i32 435, metadata !14, i32 0, metadata !1001} ; [ DW_TAG_auto_variable ] [i] [line 435]
!1007 = metadata !{i32 438, i32 0, metadata !996, metadata !1001}
!1008 = metadata !{i32 439, i32 0, metadata !996, metadata !1001}
!1009 = metadata !{i32 441, i32 0, metadata !399, metadata !1001}
!1010 = metadata !{i32 450, i32 0, metadata !407, null}
!1011 = metadata !{i32 451, i32 0, metadata !407, null}
!1012 = metadata !{i32 453, i32 0, metadata !1013, null}
!1013 = metadata !{i32 786443, metadata !1, metadata !407, i32 453, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!1014 = metadata !{i32 454, i32 0, metadata !1013, null}
!1015 = metadata !{i32 456, i32 0, metadata !407, null}
!1016 = metadata !{i32 467, i32 0, metadata !417, null}
!1017 = metadata !{i32 474, i32 0, metadata !417, null}
!1018 = metadata !{i32 475, i32 0, metadata !417, null}
!1019 = metadata !{i32 476, i32 0, metadata !1020, null}
!1020 = metadata !{i32 786443, metadata !1, metadata !417, i32 476, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!1021 = metadata !{i32 477, i32 0, metadata !1020, null}
!1022 = metadata !{i32 479, i32 0, metadata !417, null}
!1023 = metadata !{i32 480, i32 0, metadata !1024, null}
!1024 = metadata !{i32 786443, metadata !1, metadata !417, i32 479, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!1025 = metadata !{i32 481, i32 0, metadata !1024, null}
!1026 = metadata !{float 2.000000e+01}
!1027 = metadata !{i32 483, i32 0, metadata !417, null}
!1028 = metadata !{float 1.500000e+01}
!1029 = metadata !{i32 484, i32 0, metadata !417, null}
!1030 = metadata !{i32 488, i32 0, metadata !417, null}
!1031 = metadata !{i32 490, i32 0, metadata !417, null}
!1032 = metadata !{i32 491, i32 0, metadata !417, null}
!1033 = metadata !{i32 492, i32 0, metadata !417, null}
!1034 = metadata !{float 2.250000e+00}
!1035 = metadata !{i32 493, i32 0, metadata !417, null}
!1036 = metadata !{i32 494, i32 0, metadata !1037, null}
!1037 = metadata !{i32 786443, metadata !1, metadata !417, i32 494, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!1038 = metadata !{float 1.000000e+00}
!1039 = metadata !{i32 495, i32 0, metadata !1040, null}
!1040 = metadata !{i32 786443, metadata !1, metadata !1037, i32 494, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!1041 = metadata !{i32 496, i32 0, metadata !1040, null}
!1042 = metadata !{i32 497, i32 0, metadata !1040, null}
!1043 = metadata !{i32 499, i32 0, metadata !1040, null}
!1044 = metadata !{i32 500, i32 0, metadata !1040, null}
!1045 = metadata !{i32 786689, metadata !577, metadata !"col", metadata !5, i32 16777675, metadata !66, i32 0, metadata !1046} ; [ DW_TAG_arg_variable ] [col] [line 459]
!1046 = metadata !{i32 501, i32 0, metadata !1040, null}
!1047 = metadata !{i32 459, i32 0, metadata !577, metadata !1046}
!1048 = metadata !{i32 463, i32 0, metadata !577, metadata !1046}
!1049 = metadata !{i32 786688, metadata !577, metadata !"icol32", metadata !5, i32 461, metadata !14, i32 0, metadata !1046} ; [ DW_TAG_auto_variable ] [icol32] [line 461]
!1050 = metadata !{i32 464, i32 0, metadata !577, metadata !1046}
!1051 = metadata !{i32 502, i32 0, metadata !1040, null}
!1052 = metadata !{i32 503, i32 0, metadata !1040, null}
!1053 = metadata !{i32 504, i32 0, metadata !1040, null}
!1054 = metadata !{i32 505, i32 0, metadata !1040, null}
!1055 = metadata !{i32 506, i32 0, metadata !1040, null}
!1056 = metadata !{i32 508, i32 0, metadata !417, null}
!1057 = metadata !{i32 511, i32 0, metadata !437, null}
!1058 = metadata !{i32 513, i32 0, metadata !437, null}
!1059 = metadata !{i32 518, i32 0, metadata !437, null}
!1060 = metadata !{i32 519, i32 0, metadata !437, null}
!1061 = metadata !{i32 520, i32 0, metadata !437, null}
!1062 = metadata !{i32 522, i32 0, metadata !437, null}
!1063 = metadata !{i32 523, i32 0, metadata !437, null}
!1064 = metadata !{i32 524, i32 0, metadata !437, null}
!1065 = metadata !{i32 525, i32 0, metadata !437, null}
!1066 = metadata !{i32 526, i32 0, metadata !437, null}
!1067 = metadata !{i32 527, i32 0, metadata !437, null}
!1068 = metadata !{i32 528, i32 0, metadata !437, null}
!1069 = metadata !{i32 529, i32 0, metadata !1070, null}
!1070 = metadata !{i32 786443, metadata !1, metadata !437, i32 529, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!1071 = metadata !{i32 530, i32 0, metadata !1072, null}
!1072 = metadata !{i32 786443, metadata !1, metadata !1070, i32 530, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!1073 = metadata !{i32 531, i32 0, metadata !1074, null}
!1074 = metadata !{i32 786443, metadata !1, metadata !1072, i32 531, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!1075 = metadata !{i32 532, i32 0, metadata !1076, null}
!1076 = metadata !{i32 786443, metadata !1, metadata !1074, i32 531, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!1077 = metadata !{i32 535, i32 0, metadata !1076, null}
!1078 = metadata !{i32 533, i32 0, metadata !1076, null}
!1079 = metadata !{i32 534, i32 0, metadata !1076, null}
!1080 = metadata !{i32 538, i32 0, metadata !437, null}
!1081 = metadata !{i32 540, i32 0, metadata !437, null}
!1082 = metadata !{i32 541, i32 0, metadata !437, null}
!1083 = metadata !{i32 542, i32 0, metadata !437, null}
!1084 = metadata !{i32 544, i32 0, metadata !456, null}
!1085 = metadata !{i32 549, i32 0, metadata !456, null}
!1086 = metadata !{i32 550, i32 0, metadata !1087, null}
!1087 = metadata !{i32 786443, metadata !1, metadata !456, i32 550, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!1088 = metadata !{i32 551, i32 0, metadata !1087, null}
!1089 = metadata !{i32 552, i32 0, metadata !456, null}
!1090 = metadata !{i32 553, i32 0, metadata !456, null}
!1091 = metadata !{i32 555, i32 0, metadata !466, null}
!1092 = metadata !{i32 560, i32 0, metadata !466, null}
!1093 = metadata !{i32 561, i32 0, metadata !1094, null}
!1094 = metadata !{i32 786443, metadata !1, metadata !466, i32 561, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!1095 = metadata !{i32 562, i32 0, metadata !1096, null}
!1096 = metadata !{i32 786443, metadata !1, metadata !1094, i32 561, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!1097 = metadata !{i32 563, i32 0, metadata !1096, null}
!1098 = metadata !{i32 568, i32 0, metadata !466, null}
!1099 = metadata !{i32 569, i32 0, metadata !466, null}
!1100 = metadata !{i32 571, i32 0, metadata !537, null}
!1101 = metadata !{i32 574, i32 0, metadata !537, null}
!1102 = metadata !{float 4.000000e+00}
!1103 = metadata !{i32 575, i32 0, metadata !537, null}
!1104 = metadata !{i32 577, i32 0, metadata !537, null}
!1105 = metadata !{i32 578, i32 0, metadata !1106, null}
!1106 = metadata !{i32 786443, metadata !1, metadata !537, i32 578, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!1107 = metadata !{i32 579, i32 0, metadata !1108, null}
!1108 = metadata !{i32 786443, metadata !1, metadata !1106, i32 579, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!1109 = metadata !{i32 580, i32 0, metadata !1110, null}
!1110 = metadata !{i32 786443, metadata !1, metadata !1108, i32 580, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!1111 = metadata !{i32 581, i32 0, metadata !1110, null}
!1112 = metadata !{i32 584, i32 0, metadata !537, null}
!1113 = metadata !{i32 585, i32 0, metadata !537, null}
!1114 = metadata !{i32 588, i32 0, metadata !550, null}
!1115 = metadata !{i32 589, i32 0, metadata !550, null}
!1116 = metadata !{i32 590, i32 0, metadata !550, null}
!1117 = metadata !{i32 591, i32 0, metadata !550, null}
!1118 = metadata !{%struct._IO_FILE* null}
!1119 = metadata !{i32 594, i32 0, metadata !550, null}
!1120 = metadata !{i32 595, i32 0, metadata !550, null}
!1121 = metadata !{i32 598, i32 0, metadata !550, null}
!1122 = metadata !{i32 599, i32 0, metadata !550, null}
!1123 = metadata !{i32 601, i32 0, metadata !1124, null}
!1124 = metadata !{i32 786443, metadata !1, metadata !550, i32 601, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!1125 = metadata !{i32 602, i32 0, metadata !1126, null}
!1126 = metadata !{i32 786443, metadata !1, metadata !1124, i32 601, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!1127 = metadata !{i32 603, i32 0, metadata !1126, null}
!1128 = metadata !{i32 604, i32 0, metadata !1126, null}
!1129 = metadata !{i32 605, i32 0, metadata !1130, null}
!1130 = metadata !{i32 786443, metadata !1, metadata !1126, i32 605, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!1131 = metadata !{i32 606, i32 0, metadata !1132, null}
!1132 = metadata !{i32 786443, metadata !1, metadata !1130, i32 605, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!1133 = metadata !{i32 607, i32 0, metadata !1132, null}
!1134 = metadata !{i32 608, i32 0, metadata !1132, null}
!1135 = metadata !{i32 612, i32 0, metadata !550, null}
!1136 = metadata !{i32 613, i32 0, metadata !550, null}
!1137 = metadata !{i32 615, i32 0, metadata !1138, null}
!1138 = metadata !{i32 786443, metadata !1, metadata !550, i32 614, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!1139 = metadata !{i32 617, i32 0, metadata !1138, null}
!1140 = metadata !{i32 618, i32 0, metadata !1138, null}
!1141 = metadata !{i32 619, i32 0, metadata !1138, null}
!1142 = metadata !{i32 620, i32 0, metadata !1138, null}
!1143 = metadata !{i32 622, i32 0, metadata !550, null}
!1144 = metadata !{i32 623, i32 0, metadata !1145, null}
!1145 = metadata !{i32 786443, metadata !1, metadata !550, i32 622, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!1146 = metadata !{i32 624, i32 0, metadata !1147, null}
!1147 = metadata !{i32 786443, metadata !1, metadata !1145, i32 624, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!1148 = metadata !{i32 625, i32 0, metadata !1149, null}
!1149 = metadata !{i32 786443, metadata !1, metadata !1150, i32 625, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!1150 = metadata !{i32 786443, metadata !1, metadata !1147, i32 624, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!1151 = metadata !{i32 626, i32 0, metadata !1152, null}
!1152 = metadata !{i32 786443, metadata !1, metadata !1149, i32 625, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!1153 = metadata !{i32 629, i32 0, metadata !1145, null}
!1154 = metadata !{i32 630, i32 0, metadata !1145, null}
!1155 = metadata !{i32 631, i32 0, metadata !1145, null}
!1156 = metadata !{i32 632, i32 0, metadata !550, null}
!1157 = metadata !{i32 633, i32 0, metadata !550, null}
!1158 = metadata !{i32 634, i32 0, metadata !550, null}
!1159 = metadata !{i32 635, i32 0, metadata !550, null}
!1160 = metadata !{i32 636, i32 0, metadata !1161, null}
!1161 = metadata !{i32 786443, metadata !1, metadata !550, i32 636, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!1162 = metadata !{i32 637, i32 0, metadata !1163, null}
!1163 = metadata !{i32 786443, metadata !1, metadata !1161, i32 636, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!1164 = metadata !{i32 638, i32 0, metadata !1163, null}
!1165 = metadata !{i32 639, i32 0, metadata !1163, null}
!1166 = metadata !{i32 640, i32 0, metadata !1163, null}
!1167 = metadata !{i32 642, i32 0, metadata !550, null}
!1168 = metadata !{i32 643, i32 0, metadata !1169, null}
!1169 = metadata !{i32 786443, metadata !1, metadata !550, i32 642, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!1170 = metadata !{i32 644, i32 0, metadata !1169, null}
!1171 = metadata !{i32 645, i32 0, metadata !1169, null}
!1172 = metadata !{i32 646, i32 0, metadata !550, null}
!1173 = metadata !{i32 647, i32 0, metadata !1174, null}
!1174 = metadata !{i32 786443, metadata !1, metadata !550, i32 646, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.c]
!1175 = metadata !{i32 648, i32 0, metadata !1174, null}
!1176 = metadata !{i32 649, i32 0, metadata !1174, null}
!1177 = metadata !{i32 651, i32 0, metadata !550, null}

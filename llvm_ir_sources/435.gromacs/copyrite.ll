; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/copyrite.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_citerec = type { i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c"%ds\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str6 = private unnamed_addr constant [42 x i8] c"Groningen Machine for Chemical Simulation\00", align 1
@cool_quote.buf = internal global [1024 x i8] zeroinitializer, align 16
@.str8 = private unnamed_addr constant [42 x i8] c"Thanx for Using GROMACS - Have a Nice Day\00", align 1
@.str10 = private unnamed_addr constant [20 x i8] c"G  R  O  M  A  C  S\00", align 1
@GPLText = internal unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([62 x i8]* @.str91, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8]* @.str92, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8]* @.str93, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8]* @.str94, i32 0, i32 0)], align 16
@.str13 = private unnamed_addr constant [56 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/copyrite.c\00", align 1
@.str15 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@please_cite.citedb = internal unnamed_addr constant [18 x %struct.t_citerec] [%struct.t_citerec { i8* getelementptr inbounds ([13 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str19, i32 0, i32 0), i32 91, i32 1995, i32 43, i32 56 }, %struct.t_citerec { i8* getelementptr inbounds ([13 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8]* @.str21, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str23, i32 0, i32 0), i32 81, i32 1984, i32 3684, i32 3690 }, %struct.t_citerec { i8* getelementptr inbounds ([12 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([121 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str27, i32 0, i32 0), i32 23, i32 1977, i32 327, i32 341 }, %struct.t_citerec { i8* getelementptr inbounds ([12 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8]* @.str29, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8]* @.str30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str31, i32 0, i32 0), i32 13, i32 1992, i32 952, i32 962 }, %struct.t_citerec { i8* getelementptr inbounds ([9 x i8]* @.str32, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8]* @.str33, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8]* @.str34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str31, i32 0, i32 0), i32 16, i32 1995, i32 1192, i32 1209 }, %struct.t_citerec { i8* getelementptr inbounds ([10 x i8]* @.str35, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8]* @.str37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str23, i32 0, i32 0), i32 103, i32 1995, i32 8577, i32 8592 }, %struct.t_citerec { i8* getelementptr inbounds ([9 x i8]* @.str38, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str41, i32 0, i32 0), i32 157, i32 1989, i32 289, i32 294 }, %struct.t_citerec { i8* getelementptr inbounds ([10 x i8]* @.str42, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8]* @.str43, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8]* @.str44, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str45, i32 0, i32 0), i32 102, i32 1995, i32 5451, i32 5459 }, %struct.t_citerec { i8* getelementptr inbounds ([8 x i8]* @.str46, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8]* @.str47, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8]* @.str48, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str31, i32 0, i32 0), i32 18, i32 1997, i32 1463, i32 1472 }, %struct.t_citerec { i8* getelementptr inbounds ([11 x i8]* @.str49, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8]* @.str50, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8]* @.str51, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str23, i32 0, i32 0), i32 111, i32 1999, i32 3155, i32 3162 }, %struct.t_citerec { i8* getelementptr inbounds ([11 x i8]* @.str52, i32 0, i32 0), i8* getelementptr inbounds ([107 x i8]* @.str53, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8]* @.str54, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str55, i32 0, i32 0), i32 29, i32 1997, i32 240, i32 251 }, %struct.t_citerec { i8* getelementptr inbounds ([9 x i8]* @.str56, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8]* @.str57, i32 0, i32 0), i8* getelementptr inbounds ([123 x i8]* @.str58, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str23, i32 0, i32 0), i32 108, i32 1998, i32 10220, i32 10230 }, %struct.t_citerec { i8* getelementptr inbounds ([11 x i8]* @.str59, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str60, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8]* @.str61, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str62, i32 0, i32 0), i32 76, i32 1998, i32 153, i32 163 }, %struct.t_citerec { i8* getelementptr inbounds ([10 x i8]* @.str63, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8]* @.str64, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8]* @.str65, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8]* @.str66, i32 0, i32 0), i32 22, i32 1995, i32 273, i32 283 }, %struct.t_citerec { i8* getelementptr inbounds ([11 x i8]* @.str67, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8]* @.str68, i32 0, i32 0), i8* getelementptr inbounds ([97 x i8]* @.str69, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str70, i32 0, i32 0), i32 20, i32 1999, i32 786, i32 798 }, %struct.t_citerec { i8* getelementptr inbounds ([13 x i8]* @.str71, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8]* @.str72, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8]* @.str73, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str74, i32 0, i32 0), i32 7, i32 2001, i32 306, i32 317 }, %struct.t_citerec { i8* getelementptr inbounds ([10 x i8]* @.str75, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8]* @.str76, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8]* @.str77, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str78, i32 0, i32 0), i32 105, i32 2001, i32 5055, i32 5067 }, %struct.t_citerec { i8* getelementptr inbounds ([13 x i8]* @.str79, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8]* @.str80, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8]* @.str81, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str82, i32 0, i32 0), i32 319, i32 1986, i32 199, i32 203 }], align 16
@.str16 = private unnamed_addr constant [13 x i8] c"Berendsen95a\00", align 1
@.str17 = private unnamed_addr constant [55 x i8] c"H. J. C. Berendsen, D. van der Spoel and R. van Drunen\00", align 1
@.str18 = private unnamed_addr constant [70 x i8] c"GROMACS: A message-passing parallel molecular dynamics implementation\00", align 1
@.str19 = private unnamed_addr constant [18 x i8] c"Comp. Phys. Comm.\00", align 1
@.str20 = private unnamed_addr constant [13 x i8] c"Berendsen84a\00", align 1
@.str21 = private unnamed_addr constant [62 x i8] c"H. J. C. Berendsen, J. P. M. Postma, A. DiNola and J. R. Haak\00", align 1
@.str22 = private unnamed_addr constant [53 x i8] c"Molecular dynamics with coupling to an external bath\00", align 1
@.str23 = private unnamed_addr constant [15 x i8] c"J. Chem. Phys.\00", align 1
@.str24 = private unnamed_addr constant [12 x i8] c"Ryckaert77a\00", align 1
@.str25 = private unnamed_addr constant [54 x i8] c"J. P. Ryckaert and G. Ciccotti and H. J. C. Berendsen\00", align 1
@.str26 = private unnamed_addr constant [121 x i8] c"Numerical Integration of the Cartesian Equations of Motion of a System with Constraints; Molecular Dynamics of n-Alkanes\00", align 1
@.str27 = private unnamed_addr constant [15 x i8] c"J. Comp. Phys.\00", align 1
@.str28 = private unnamed_addr constant [12 x i8] c"Miyamoto92a\00", align 1
@.str29 = private unnamed_addr constant [30 x i8] c"S. Miyamoto and P. A. Kollman\00", align 1
@.str30 = private unnamed_addr constant [88 x i8] c"SETTLE: An Analytical Version of the SHAKE and RATTLE Algorithms for Rigid Water Models\00", align 1
@.str31 = private unnamed_addr constant [15 x i8] c"J. Comp. Chem.\00", align 1
@.str32 = private unnamed_addr constant [9 x i8] c"Barth95a\00", align 1
@.str33 = private unnamed_addr constant [58 x i8] c"E. Barth and K. Kuczera and B. Leimkuhler and R. D. Skeel\00", align 1
@.str34 = private unnamed_addr constant [46 x i8] c"Algorithms for Constrained Molecular Dynamics\00", align 1
@.str35 = private unnamed_addr constant [10 x i8] c"Essman95a\00", align 1
@.str36 = private unnamed_addr constant [77 x i8] c"U. Essman, L. Perela, M. L. Berkowitz, T. Darden, H. Lee and L. G. Pedersen \00", align 1
@.str37 = private unnamed_addr constant [37 x i8] c"{A smooth particle mesh Ewald method\00", align 1
@.str38 = private unnamed_addr constant [9 x i8] c"Torda89a\00", align 1
@.str39 = private unnamed_addr constant [53 x i8] c"A. E. Torda and R. M. Scheek and W. F. van Gunsteren\00", align 1
@.str40 = private unnamed_addr constant [69 x i8] c"Time-dependent distance restraints in molecular dynamics simulations\00", align 1
@.str41 = private unnamed_addr constant [18 x i8] c"Chem. Phys. Lett.\00", align 1
@.str42 = private unnamed_addr constant [10 x i8] c"Tironi95a\00", align 1
@.str43 = private unnamed_addr constant [66 x i8] c"I. G. Tironi and R. Sperb and P. E. Smith and W. F. van Gunsteren\00", align 1
@.str44 = private unnamed_addr constant [69 x i8] c"Generalized reaction field method for molecular dynamics simulations\00", align 1
@.str45 = private unnamed_addr constant [14 x i8] c"J. Chem. Phys\00", align 1
@.str46 = private unnamed_addr constant [8 x i8] c"Hess97a\00", align 1
@.str47 = private unnamed_addr constant [69 x i8] c"B. Hess and H. Bekker and H. J. C. Berendsen and J. G. E. M. Fraaije\00", align 1
@.str48 = private unnamed_addr constant [60 x i8] c"LINCS: A Linear Constraint Solver for molecular simulations\00", align 1
@.str49 = private unnamed_addr constant [11 x i8] c"In-Chul99a\00", align 1
@.str50 = private unnamed_addr constant [31 x i8] c"Y. In-Chul and M. L. Berkowitz\00", align 1
@.str51 = private unnamed_addr constant [47 x i8] c"Ewald summation for systems with slab geometry\00", align 1
@.str52 = private unnamed_addr constant [11 x i8] c"DeGroot97a\00", align 1
@.str53 = private unnamed_addr constant [107 x i8] c"B. L. de Groot and D. M. F. van Aalten and R. M. Scheek and A. Amadei and G. Vriend and H. J. C. Berendsen\00", align 1
@.str54 = private unnamed_addr constant [70 x i8] c"Prediction of Protein Conformational Freedom From Distance Constrains\00", align 1
@.str55 = private unnamed_addr constant [9 x i8] c"Proteins\00", align 1
@.str56 = private unnamed_addr constant [9 x i8] c"Spoel98a\00", align 1
@.str57 = private unnamed_addr constant [61 x i8] c"D. van der Spoel and P. J. van Maaren and H. J. C. Berendsen\00", align 1
@.str58 = private unnamed_addr constant [123 x i8] c"A systematic study of water models for molecular simulation. Derivation of models optimized for use with a reaction-field.\00", align 1
@.str59 = private unnamed_addr constant [11 x i8] c"Wishart98a\00", align 1
@.str60 = private unnamed_addr constant [28 x i8] c"D. S. Wishart and A. M. Nip\00", align 1
@.str61 = private unnamed_addr constant [51 x i8] c"Protein Chemical Shift Analysis: A Practical Guide\00", align 1
@.str62 = private unnamed_addr constant [20 x i8] c"Biochem. Cell Biol.\00", align 1
@.str63 = private unnamed_addr constant [10 x i8] c"Maiorov95\00", align 1
@.str64 = private unnamed_addr constant [32 x i8] c"V. N. Maiorov and G. M. Crippen\00", align 1
@.str65 = private unnamed_addr constant [68 x i8] c"Size-Independent Comparison of Protein Three-Dimensional Structures\00", align 1
@.str66 = private unnamed_addr constant [30 x i8] c"PROTEINS: Struct. Funct. Gen.\00", align 1
@.str67 = private unnamed_addr constant [11 x i8] c"Feenstra99\00", align 1
@.str68 = private unnamed_addr constant [50 x i8] c"K. A. Feenstra and B. Hess and H. J. C. Berendsen\00", align 1
@.str69 = private unnamed_addr constant [97 x i8] c"Improving Efficiency of Large Time-scale Molecular Dynamics Simulations of Hydrogen-rich Systems\00", align 1
@.str70 = private unnamed_addr constant [17 x i8] c"J. Comput. Chem.\00", align 1
@.str71 = private unnamed_addr constant [13 x i8] c"Lindahl2001a\00", align 1
@.str72 = private unnamed_addr constant [44 x i8] c"E. Lindahl and B. Hess and D. van der Spoel\00", align 1
@.str73 = private unnamed_addr constant [72 x i8] c"GROMACS 3.0: A package for molecular simulation and trajectory analysis\00", align 1
@.str74 = private unnamed_addr constant [13 x i8] c"J. Mol. Mod.\00", align 1
@.str75 = private unnamed_addr constant [10 x i8] c"Wang2001a\00", align 1
@.str76 = private unnamed_addr constant [60 x i8] c"J. Wang and W. Wang and S. Huo and M. Lee and P. A. Kollman\00", align 1
@.str77 = private unnamed_addr constant [66 x i8] c"Solvation model based on weighted solvent accessible surface area\00", align 1
@.str78 = private unnamed_addr constant [17 x i8] c"J. Phys. Chem. B\00", align 1
@.str79 = private unnamed_addr constant [13 x i8] c"Eisenberg86a\00", align 1
@.str80 = private unnamed_addr constant [33 x i8] c"D. Eisenberg and A. D. McLachlan\00", align 1
@.str81 = private unnamed_addr constant [48 x i8] c"Solvation energy in protein folding and binding\00", align 1
@.str82 = private unnamed_addr constant [7 x i8] c"Nature\00", align 1
@.str83 = private unnamed_addr constant [56 x i8] c"\0A++++++++ PLEASE CITE THE FOLLOWING REFERENCE ++++++++\0A\00", align 1
@.str84 = private unnamed_addr constant [28 x i8] c"%s\0A%s\0A%s %d (%d) pp. %d-%d\0A\00", align 1
@.str85 = private unnamed_addr constant [7 x i8] c"author\00", align 1
@.str86 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str87 = private unnamed_addr constant [41 x i8] c"Entry %s not found in citation database\0A\00", align 1
@.str88 = private unnamed_addr constant [56 x i8] c"-------- -------- --- Thank You --- -------- --------\0A\0A\00", align 1
@GromacsVersion.bFirst = internal unnamed_addr global i1 false
@GromacsVersion.ver_string = internal global [100 x i8] zeroinitializer, align 16
@.str89 = private unnamed_addr constant [11 x i8] c"VERSION %s\00", align 1
@.str90 = private unnamed_addr constant [16 x i8] c"specbench-3.1.2\00", align 1
@.str91 = private unnamed_addr constant [62 x i8] c"This program is free software; you can redistribute it and/or\00", align 1
@.str92 = private unnamed_addr constant [60 x i8] c"modify it under the terms of the GNU General Public License\00", align 1
@.str93 = private unnamed_addr constant [63 x i8] c"as published by the Free Software Foundation; either version 2\00", align 1
@.str94 = private unnamed_addr constant [55 x i8] c"of the License, or (at your option) any later version.\00", align 1
@.str95 = private unnamed_addr constant [66 x i8] c"Copyright (c) 1991-2002, University of Groningen, The Netherlands\00", align 1
@.str96 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str97 = private unnamed_addr constant [13 x i8] c":-)  %s  (-:\00", align 1
@.str100 = private unnamed_addr constant [7 x i8] c"%c0%1d\00", align 1
@.str101 = private unnamed_addr constant [6 x i8] c"%c%2d\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @pr_difftime(%struct._IO_FILE* nocapture %out, double %dt) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !68), !dbg !200
  tail call void @llvm.dbg.value(metadata !{double %dt}, i64 0, metadata !69), !dbg !200
  %div = fdiv double %dt, 8.640000e+04, !dbg !201
  %conv = fptosi double %div to i32, !dbg !201
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !70), !dbg !201
  %mul = mul nsw i32 %conv, 86400, !dbg !202
  %conv1 = sitofp i32 %mul to double, !dbg !202
  %sub = fsub double %dt, %conv1, !dbg !202
  tail call void @llvm.dbg.value(metadata !{double %sub}, i64 0, metadata !69), !dbg !202
  %div2 = fdiv double %sub, 3.600000e+03, !dbg !203
  %conv3 = fptosi double %div2 to i32, !dbg !203
  tail call void @llvm.dbg.value(metadata !{i32 %conv3}, i64 0, metadata !71), !dbg !203
  %mul4 = mul nsw i32 %conv3, 3600, !dbg !204
  %conv5 = sitofp i32 %mul4 to double, !dbg !204
  %sub6 = fsub double %sub, %conv5, !dbg !204
  tail call void @llvm.dbg.value(metadata !{double %sub6}, i64 0, metadata !69), !dbg !204
  %div7 = fdiv double %sub6, 6.000000e+01, !dbg !205
  %conv8 = fptosi double %div7 to i32, !dbg !205
  tail call void @llvm.dbg.value(metadata !{i32 %conv8}, i64 0, metadata !72), !dbg !205
  %mul9 = mul nsw i32 %conv8, 60, !dbg !206
  %conv10 = sitofp i32 %mul9 to double, !dbg !206
  %sub11 = fsub double %sub6, %conv10, !dbg !206
  tail call void @llvm.dbg.value(metadata !{double %sub11}, i64 0, metadata !69), !dbg !206
  %conv12 = fptosi double %sub11 to i32, !dbg !207
  tail call void @llvm.dbg.value(metadata !{i32 %conv12}, i64 0, metadata !73), !dbg !207
  %cmp = icmp sgt i32 %conv, 0, !dbg !208
  br i1 %cmp, label %if.then36.thread, label %if.end, !dbg !209

if.end:                                           ; preds = %entry
  %cmp15 = icmp sgt i32 %conv3, 0, !dbg !210
  br i1 %cmp15, label %if.end23.thread, label %if.end23, !dbg !211

if.then36.thread:                                 ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i32 %conv) #7, !dbg !212
  tail call fastcc void @pr_two(%struct._IO_FILE* %out, i32 100, i32 %conv3) #8, !dbg !213
  br label %if.end42.thread, !dbg !215

if.end23.thread:                                  ; preds = %if.end
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i32 %conv3) #7, !dbg !217
  br label %if.end42.thread, !dbg !215

if.end23:                                         ; preds = %if.end
  %cmp31 = icmp sgt i32 %conv8, 0, !dbg !218
  br i1 %cmp31, label %if.then36, label %if.end42, !dbg !219

if.then36:                                        ; preds = %if.end23
  br i1 %cmp, label %if.end42.thread, label %if.end42.thread97, !dbg !215

if.end42.thread:                                  ; preds = %if.then36.thread, %if.end23.thread, %if.then36
  tail call fastcc void @pr_two(%struct._IO_FILE* %out, i32 104, i32 %conv8) #8, !dbg !220
  br label %if.then49, !dbg !221

if.end42.thread97:                                ; preds = %if.then36
  %call40 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i32 %conv8) #7, !dbg !222
  br label %if.then49, !dbg !221

if.end42:                                         ; preds = %if.end23
  br i1 %cmp, label %if.then49, label %if.else50, !dbg !221

if.then49:                                        ; preds = %if.end42.thread97, %if.end42.thread, %if.end42
  tail call fastcc void @pr_two(%struct._IO_FILE* %out, i32 58, i32 %conv12) #8, !dbg !223
  br label %if.end52, !dbg !223

if.else50:                                        ; preds = %if.end42
  %call51 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i32 %conv12) #7, !dbg !224
  br label %if.end52

if.end52:                                         ; preds = %if.else50, %if.then49
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out), !dbg !225
  ret void, !dbg !226
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @pr_two(%struct._IO_FILE* nocapture %out, i32 %c, i32 %i) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !158), !dbg !227
  tail call void @llvm.dbg.value(metadata !{i32 %c}, i64 0, metadata !159), !dbg !227
  tail call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !160), !dbg !227
  %cmp = icmp slt i32 %i, 10, !dbg !228
  br i1 %cmp, label %if.then, label %if.else, !dbg !228

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([7 x i8]* @.str100, i64 0, i64 0), i32 %c, i32 %i) #7, !dbg !229
  br label %if.end, !dbg !229

if.else:                                          ; preds = %entry
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([6 x i8]* @.str101, i64 0, i64 0), i32 %c, i32 %i) #7, !dbg !230
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !231
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @be_cool() #3 {
entry:
  ret i32 0, !dbg !232
}

; Function Attrs: nounwind optsize uwtable
define void @space(%struct._IO_FILE* nocapture %out, i32 %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !85), !dbg !233
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !86), !dbg !233
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i32 %n, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0)) #7, !dbg !234
  ret void, !dbg !235
}

; Function Attrs: nounwind optsize uwtable
define void @f(i8* nocapture %a) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %a}, i64 0, metadata !91), !dbg !236
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !92), !dbg !237
  %call12 = tail call i64 @strlen(i8* %a) #9, !dbg !237
  %conv13 = trunc i64 %call12 to i32, !dbg !237
  %cmp14 = icmp sgt i32 %conv13, 0, !dbg !237
  br i1 %cmp14, label %for.body, label %for.end, !dbg !237

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8* %a, i64 %indvars.iv, !dbg !237
  %0 = load i8* %arrayidx, align 1, !dbg !237, !tbaa !239
  %neg = xor i8 %0, -1, !dbg !237
  store i8 %neg, i8* %arrayidx, align 1, !dbg !237, !tbaa !239
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !237
  %call = tail call i64 @strlen(i8* %a) #9, !dbg !237
  %conv = trunc i64 %call to i32, !dbg !237
  %1 = trunc i64 %indvars.iv.next to i32, !dbg !237
  %cmp = icmp slt i32 %1, %conv, !dbg !237
  br i1 %cmp, label %for.body, label %for.end, !dbg !237

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !236
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize readnone uwtable
define i8* @bromacs() #3 {
entry:
  tail call void @llvm.dbg.value(metadata !241, i64 0, metadata !242), !dbg !244
  ret i8* getelementptr inbounds ([42 x i8]* @.str6, i64 0, i64 0), !dbg !243
}

; Function Attrs: nounwind optsize uwtable
define i8* @cool_quote() #0 {
entry:
  tail call void @llvm.dbg.value(metadata !241, i64 0, metadata !245), !dbg !247
  tail call void @llvm.dbg.value(metadata !248, i64 0, metadata !98), !dbg !246
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([1024 x i8]* @cool_quote.buf, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str8, i64 0, i64 0), i64 42, i32 1, i1 false), !dbg !249
  ret i8* getelementptr inbounds ([1024 x i8]* @cool_quote.buf, i64 0, i64 0), !dbg !251
}

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @CopyRight(%struct._IO_FILE* %out, i8* %szProgram) #0 {
entry:
  %buf = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !104), !dbg !252
  call void @llvm.dbg.value(metadata !{i8* %szProgram}, i64 0, metadata !105), !dbg !252
  %0 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0, !dbg !253
  call void @llvm.lifetime.start(i64 256, i8* %0) #5, !dbg !253
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %buf}, metadata !106), !dbg !253
  call void @set_program_name(i8* %szProgram) #7, !dbg !254
  %tobool = icmp eq %struct._IO_FILE* %out, null, !dbg !255
  br i1 %tobool, label %if.end, label %if.then, !dbg !255

if.then:                                          ; preds = %entry
  call fastcc void @ster_print(%struct._IO_FILE* %out, i8* getelementptr inbounds ([20 x i8]* @.str10, i64 0, i64 0)) #8, !dbg !256
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %out), !dbg !258
  tail call void @llvm.dbg.value(metadata !241, i64 0, metadata !259), !dbg !262
  call void @llvm.dbg.value(metadata !263, i64 0, metadata !110), !dbg !261
  call fastcc void @sp_print(%struct._IO_FILE* %out, i8* getelementptr inbounds ([42 x i8]* @.str6, i64 0, i64 0)) #8, !dbg !264
  %fputc37 = call i32 @fputc(i32 10, %struct._IO_FILE* %out), !dbg !265
  %.b.i = load i1* @GromacsVersion.bFirst, align 1
  br i1 %.b.i, label %for.body, label %if.then.i, !dbg !266

if.then.i:                                        ; preds = %if.then
  %call.i = call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([100 x i8]* @GromacsVersion.ver_string, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str89, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str90, i64 0, i64 0)) #7, !dbg !268
  store i1 true, i1* @GromacsVersion.bFirst, align 1
  br label %for.body, !dbg !270

for.body:                                         ; preds = %if.then.i, %if.then
  call fastcc void @ster_print(%struct._IO_FILE* %out, i8* getelementptr inbounds ([100 x i8]* @GromacsVersion.ver_string, i64 0, i64 0)) #8, !dbg !267
  %fputc40 = call i32 @fputc(i32 10, %struct._IO_FILE* %out), !dbg !271
  %fputc43 = call i32 @fputc(i32 10, %struct._IO_FILE* %out), !dbg !272
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !111), !dbg !273
  call fastcc void @sp_print(%struct._IO_FILE* %out, i8* getelementptr inbounds ([66 x i8]* @.str95, i64 0, i64 0)) #8, !dbg !275
  br label %for.body8, !dbg !273

for.body8:                                        ; preds = %for.body, %for.body8
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.body ]
  %arrayidx10 = getelementptr inbounds [4 x i8*]* @GPLText, i64 0, i64 %indvars.iv, !dbg !276
  %1 = load i8** %arrayidx10, align 8, !dbg !276, !tbaa !278
  call fastcc void @sp_print(%struct._IO_FILE* %out, i8* %1) #8, !dbg !276
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !279
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !279
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !279
  br i1 %exitcond, label %for.end13, label %for.body8, !dbg !279

for.end13:                                        ; preds = %for.body8
  %fputc46 = call i32 @fputc(i32 10, %struct._IO_FILE* %out), !dbg !280
  %call15 = call i8* @Program() #7, !dbg !281
  %strlen = call i64 @strlen(i8* %call15), !dbg !281
  %leninc = add i64 %strlen, 1, !dbg !281
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %call15, i64 %leninc, i32 1, i1 false), !dbg !281
  call fastcc void @ster_print(%struct._IO_FILE* %out, i8* %0) #8, !dbg !282
  %fputc49 = call i32 @fputc(i32 10, %struct._IO_FILE* %out), !dbg !283
  br label %if.end, !dbg !284

if.end:                                           ; preds = %entry, %for.end13
  call void @llvm.lifetime.end(i64 256, i8* %0) #5, !dbg !285
  ret void, !dbg !285
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare void @set_program_name(i8*) #6

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ster_print(%struct._IO_FILE* nocapture %out, i8* %s) #0 {
entry:
  %buf = alloca [128 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !135), !dbg !286
  call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !136), !dbg !286
  %0 = getelementptr inbounds [128 x i8]* %buf, i64 0, i64 0, !dbg !287
  call void @llvm.lifetime.start(i64 128, i8* %0) #5, !dbg !287
  call void @llvm.dbg.declare(metadata !{[128 x i8]* %buf}, metadata !138), !dbg !287
  %call = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([13 x i8]* @.str97, i64 0, i64 0), i8* %s) #7, !dbg !288
  %call2 = call i64 @strlen(i8* %0) #9, !dbg !289
  %conv = trunc i64 %call2 to i32, !dbg !289
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !137), !dbg !289
  %sub = sub nsw i32 80, %conv, !dbg !290
  %div = sdiv i32 %sub, 2, !dbg !290
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !291) #5, !dbg !292
  call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !293) #5, !dbg !292
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i32 %div, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0)) #7, !dbg !294
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str96, i64 0, i64 0), i8* %0) #7, !dbg !295
  call void @llvm.lifetime.end(i64 128, i8* %0) #5, !dbg !296
  ret void, !dbg !296
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @sp_print(%struct._IO_FILE* nocapture %out, i8* %s) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !130), !dbg !297
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !131), !dbg !297
  %call = tail call i64 @strlen(i8* %s) #9, !dbg !298
  %conv = trunc i64 %call to i32, !dbg !298
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !132), !dbg !298
  %sub = sub nsw i32 80, %conv, !dbg !299
  %div = sdiv i32 %sub, 2, !dbg !299
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !300) #5, !dbg !301
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !302) #5, !dbg !301
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i32 %div, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0)) #7, !dbg !303
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str96, i64 0, i64 0), i8* %s) #7, !dbg !304
  ret void, !dbg !305
}

; Function Attrs: nounwind optsize uwtable
define i8* @GromacsVersion() #0 {
entry:
  %.b = load i1* @GromacsVersion.bFirst, align 1
  br i1 %.b, label %if.end, label %if.then, !dbg !306

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([100 x i8]* @GromacsVersion.ver_string, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str89, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str90, i64 0, i64 0)) #7, !dbg !307
  store i1 true, i1* @GromacsVersion.bFirst, align 1
  br label %if.end, !dbg !308

if.end:                                           ; preds = %entry, %if.then
  ret i8* getelementptr inbounds ([100 x i8]* @GromacsVersion.ver_string, i64 0, i64 0), !dbg !309
}

; Function Attrs: optsize
declare i8* @Program() #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define void @thanx(%struct._IO_FILE* nocapture %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !116), !dbg !310
  tail call void @llvm.dbg.value(metadata !241, i64 0, metadata !311) #5, !dbg !314
  tail call void @llvm.dbg.value(metadata !248, i64 0, metadata !315) #5, !dbg !312
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([1024 x i8]* @cool_quote.buf, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str8, i64 0, i64 0), i64 42, i32 1, i1 false) #5, !dbg !316
  tail call void @llvm.dbg.value(metadata !317, i64 0, metadata !117), !dbg !313
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([1024 x i8]* @cool_quote.buf, i64 0, i64 0)) #7, !dbg !318
  ret void, !dbg !319
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #6

; Function Attrs: nounwind optsize uwtable
define void @please_cite(%struct._IO_FILE* %fp, i8* %key) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !121), !dbg !320
  tail call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !122), !dbg !320
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !124), !dbg !321
  br label %land.rhs, !dbg !321

for.cond:                                         ; preds = %land.rhs
  %0 = trunc i64 %indvars.iv.next to i32, !dbg !321
  %cmp = icmp slt i32 %0, 18, !dbg !321
  br i1 %cmp, label %land.rhs, label %for.end, !dbg !321

land.rhs:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  %index.047 = phi i32 [ 0, %entry ], [ %inc, %for.cond ]
  %key1 = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %indvars.iv, i32 0, !dbg !321
  %1 = load i8** %key1, align 16, !dbg !321, !tbaa !278
  %call = tail call i32 @strcmp(i8* %1, i8* %key) #9, !dbg !321
  %cmp2 = icmp eq i32 %call, 0, !dbg !321
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !321
  %inc = add nsw i32 %index.047, 1, !dbg !321
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !124), !dbg !321
  br i1 %cmp2, label %for.end, label %for.cond

for.end:                                          ; preds = %land.rhs, %for.cond
  %cmp.lcssa = phi i1 [ true, %land.rhs ], [ false, %for.cond ]
  %index.0.lcssa = phi i32 [ %index.047, %land.rhs ], [ %inc, %for.cond ]
  %tobool = icmp eq %struct._IO_FILE* %fp, null, !dbg !323
  br i1 %tobool, label %if.end28, label %if.then, !dbg !323

if.then:                                          ; preds = %for.end
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str83, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %fp), !dbg !324
  br i1 %cmp.lcssa, label %if.then5, label %if.else, !dbg !326

if.then5:                                         ; preds = %if.then
  %idxprom6 = sext i32 %index.0.lcssa to i64, !dbg !327
  %author8 = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %idxprom6, i32 1, !dbg !327
  %3 = load i8** %author8, align 8, !dbg !327, !tbaa !278
  %call9 = tail call i8* @wrap_lines(i8* %3, i32 79, i32 0) #7, !dbg !327
  tail call void @llvm.dbg.value(metadata !{i8* %call9}, i64 0, metadata !125), !dbg !327
  %title12 = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %idxprom6, i32 2, !dbg !329
  %4 = load i8** %title12, align 16, !dbg !329, !tbaa !278
  %call13 = tail call i8* @wrap_lines(i8* %4, i32 79, i32 0) #7, !dbg !329
  tail call void @llvm.dbg.value(metadata !{i8* %call13}, i64 0, metadata !126), !dbg !329
  %journal = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %idxprom6, i32 3, !dbg !330
  %5 = load i8** %journal, align 8, !dbg !330, !tbaa !278
  %volume = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %idxprom6, i32 4, !dbg !330
  %6 = load i32* %volume, align 16, !dbg !330, !tbaa !331
  %year = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %idxprom6, i32 5, !dbg !330
  %7 = load i32* %year, align 4, !dbg !330, !tbaa !331
  %p0 = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %idxprom6, i32 6, !dbg !330
  %8 = load i32* %p0, align 8, !dbg !330, !tbaa !331
  %p1 = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %idxprom6, i32 7, !dbg !330
  %9 = load i32* %p1, align 4, !dbg !330, !tbaa !331
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([28 x i8]* @.str84, i64 0, i64 0), i8* %call9, i8* %call13, i8* %5, i32 %6, i32 %7, i32 %8, i32 %9) #7, !dbg !330
  tail call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str85, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str13, i64 0, i64 0), i32 385, i8* %call9) #7, !dbg !332
  tail call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str86, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str13, i64 0, i64 0), i32 386, i8* %call13) #7, !dbg !333
  br label %if.end, !dbg !334

if.else:                                          ; preds = %if.then
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([41 x i8]* @.str87, i64 0, i64 0), i8* %key) #7, !dbg !335
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str88, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %fp), !dbg !337
  %call27 = tail call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !338
  br label %if.end28, !dbg !339

if.end28:                                         ; preds = %for.end, %if.end
  ret void, !dbg !340
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: optsize
declare i8* @wrap_lines(i8*, i32, i32) #6

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !161, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/copyrite.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/copyrite.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !76, metadata !81, metadata !87, metadata !93, metadata !96, metadata !100, metadata !112, metadata !119, metadata !127, metadata !128, metadata !133, metadata !142, metadata !154}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"pr_difftime", metadata !"pr_difftime", metadata !"", i32 57, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, double)* @pr_difftime, null, null, metadata !67, i32 58} ; [ DW_TAG_subprogram ] [line 57] [def] [scope 58] [pr_difftime]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/copyrite.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !66}
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
!66 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!67 = metadata !{metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75}
!68 = metadata !{i32 786689, metadata !4, metadata !"out", metadata !5, i32 16777273, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 57]
!69 = metadata !{i32 786689, metadata !4, metadata !"dt", metadata !5, i32 33554489, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dt] [line 57]
!70 = metadata !{i32 786688, metadata !4, metadata !"ndays", metadata !5, i32 59, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndays] [line 59]
!71 = metadata !{i32 786688, metadata !4, metadata !"nhours", metadata !5, i32 59, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nhours] [line 59]
!72 = metadata !{i32 786688, metadata !4, metadata !"nmins", metadata !5, i32 59, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nmins] [line 59]
!73 = metadata !{i32 786688, metadata !4, metadata !"nsecs", metadata !5, i32 59, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nsecs] [line 59]
!74 = metadata !{i32 786688, metadata !4, metadata !"bPrint", metadata !5, i32 60, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bPrint] [line 60]
!75 = metadata !{i32 786688, metadata !4, metadata !"bPrinted", metadata !5, i32 60, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bPrinted] [line 60]
!76 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"be_cool", metadata !"be_cool", metadata !"", i32 96, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @be_cool, null, null, metadata !79, i32 97} ; [ DW_TAG_subprogram ] [line 96] [def] [scope 97] [be_cool]
!77 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!78 = metadata !{metadata !14}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 786688, metadata !76, metadata !"envptr", metadata !5, i32 99, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [envptr] [line 99]
!81 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"space", metadata !"space", metadata !"", i32 115, metadata !82, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32)* @space, null, null, metadata !84, i32 116} ; [ DW_TAG_subprogram ] [line 115] [def] [scope 116] [space]
!82 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!83 = metadata !{null, metadata !8, metadata !14}
!84 = metadata !{metadata !85, metadata !86}
!85 = metadata !{i32 786689, metadata !81, metadata !"out", metadata !5, i32 16777331, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 115]
!86 = metadata !{i32 786689, metadata !81, metadata !"n", metadata !5, i32 33554547, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 115]
!87 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"f", metadata !"f", metadata !"", i32 120, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @f, null, null, metadata !90, i32 120} ; [ DW_TAG_subprogram ] [line 120] [def] [f]
!88 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!89 = metadata !{null, metadata !16}
!90 = metadata !{metadata !91, metadata !92}
!91 = metadata !{i32 786689, metadata !87, metadata !"a", metadata !5, i32 16777336, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 120]
!92 = metadata !{i32 786688, metadata !87, metadata !"i", metadata !5, i32 120, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 120]
!93 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"bromacs", metadata !"bromacs", metadata !"", i32 173, metadata !94, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @bromacs, null, null, metadata !2, i32 174} ; [ DW_TAG_subprogram ] [line 173] [def] [scope 174] [bromacs]
!94 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !95, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!95 = metadata !{metadata !16}
!96 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cool_quote", metadata !"cool_quote", metadata !"", i32 179, metadata !94, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @cool_quote, null, null, metadata !97, i32 180} ; [ DW_TAG_subprogram ] [line 179] [def] [scope 180] [cool_quote]
!97 = metadata !{metadata !98, metadata !99}
!98 = metadata !{i32 786688, metadata !96, metadata !"s", metadata !5, i32 182, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 182]
!99 = metadata !{i32 786688, metadata !96, metadata !"ptr", metadata !5, i32 182, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 182]
!100 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CopyRight", metadata !"CopyRight", metadata !"", i32 199, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*)* @CopyRight, null, null, metadata !103, i32 200} ; [ DW_TAG_subprogram ] [line 199] [def] [scope 200] [CopyRight]
!101 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !102, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!102 = metadata !{null, metadata !8, metadata !16}
!103 = metadata !{metadata !104, metadata !105, metadata !106, metadata !110, metadata !111}
!104 = metadata !{i32 786689, metadata !100, metadata !"out", metadata !5, i32 16777415, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 199]
!105 = metadata !{i32 786689, metadata !100, metadata !"szProgram", metadata !5, i32 33554631, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [szProgram] [line 199]
!106 = metadata !{i32 786688, metadata !100, metadata !"buf", metadata !5, i32 207, metadata !107, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 207]
!107 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !17, metadata !108, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!108 = metadata !{metadata !109}
!109 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!110 = metadata !{i32 786688, metadata !100, metadata !"ptr", metadata !5, i32 208, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 208]
!111 = metadata !{i32 786688, metadata !100, metadata !"i", metadata !5, i32 210, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 210]
!112 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"thanx", metadata !"thanx", metadata !"", i32 245, metadata !113, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*)* @thanx, null, null, metadata !115, i32 246} ; [ DW_TAG_subprogram ] [line 245] [def] [scope 246] [thanx]
!113 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !114, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!114 = metadata !{null, metadata !8}
!115 = metadata !{metadata !116, metadata !117, metadata !118}
!116 = metadata !{i32 786689, metadata !112, metadata !"fp", metadata !5, i32 16777461, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 245]
!117 = metadata !{i32 786688, metadata !112, metadata !"cq", metadata !5, i32 247, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cq] [line 247]
!118 = metadata !{i32 786688, metadata !112, metadata !"c", metadata !5, i32 247, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 247]
!119 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"please_cite", metadata !"please_cite", metadata !"", i32 270, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*)* @please_cite, null, null, metadata !120, i32 271} ; [ DW_TAG_subprogram ] [line 270] [def] [scope 271] [please_cite]
!120 = metadata !{metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126}
!121 = metadata !{i32 786689, metadata !119, metadata !"fp", metadata !5, i32 16777486, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 270]
!122 = metadata !{i32 786689, metadata !119, metadata !"key", metadata !5, i32 33554702, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 270]
!123 = metadata !{i32 786688, metadata !119, metadata !"j", metadata !5, i32 366, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 366]
!124 = metadata !{i32 786688, metadata !119, metadata !"index", metadata !5, i32 366, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 366]
!125 = metadata !{i32 786688, metadata !119, metadata !"author", metadata !5, i32 367, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [author] [line 367]
!126 = metadata !{i32 786688, metadata !119, metadata !"title", metadata !5, i32 368, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [title] [line 368]
!127 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"GromacsVersion", metadata !"GromacsVersion", metadata !"", i32 396, metadata !94, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @GromacsVersion, null, null, metadata !2, i32 397} ; [ DW_TAG_subprogram ] [line 396] [def] [scope 397] [GromacsVersion]
!128 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"sp_print", metadata !"sp_print", metadata !"", i32 122, metadata !101, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*)* @sp_print, null, null, metadata !129, i32 123} ; [ DW_TAG_subprogram ] [line 122] [local] [def] [scope 123] [sp_print]
!129 = metadata !{metadata !130, metadata !131, metadata !132}
!130 = metadata !{i32 786689, metadata !128, metadata !"out", metadata !5, i32 16777338, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 122]
!131 = metadata !{i32 786689, metadata !128, metadata !"s", metadata !5, i32 33554554, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 122]
!132 = metadata !{i32 786688, metadata !128, metadata !"slen", metadata !5, i32 124, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slen] [line 124]
!133 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ster_print", metadata !"ster_print", metadata !"", i32 131, metadata !101, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*)* @ster_print, null, null, metadata !134, i32 132} ; [ DW_TAG_subprogram ] [line 131] [local] [def] [scope 132] [ster_print]
!134 = metadata !{metadata !135, metadata !136, metadata !137, metadata !138}
!135 = metadata !{i32 786689, metadata !133, metadata !"out", metadata !5, i32 16777347, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 131]
!136 = metadata !{i32 786689, metadata !133, metadata !"s", metadata !5, i32 33554563, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 131]
!137 = metadata !{i32 786688, metadata !133, metadata !"slen", metadata !5, i32 133, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slen] [line 133]
!138 = metadata !{i32 786688, metadata !133, metadata !"buf", metadata !5, i32 134, metadata !139, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 134]
!139 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !17, metadata !140, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 8, offset 0] [from char]
!140 = metadata !{metadata !141}
!141 = metadata !{i32 786465, i64 0, i64 128}     ; [ DW_TAG_subrange_type ] [0, 127]
!142 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"pukeit", metadata !"pukeit", metadata !"", i32 144, metadata !143, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !145, i32 145} ; [ DW_TAG_subprogram ] [line 144] [local] [def] [scope 145] [pukeit]
!143 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !144, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!144 = metadata !{metadata !16, metadata !16, metadata !16}
!145 = metadata !{metadata !146, metadata !147, metadata !148, metadata !149, metadata !151, metadata !152, metadata !153}
!146 = metadata !{i32 786689, metadata !142, metadata !"db", metadata !5, i32 16777360, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [db] [line 144]
!147 = metadata !{i32 786689, metadata !142, metadata !"defstring", metadata !5, i32 33554576, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [defstring] [line 144]
!148 = metadata !{i32 786688, metadata !142, metadata !"fp", metadata !5, i32 147, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 147]
!149 = metadata !{i32 786688, metadata !142, metadata !"help", metadata !5, i32 148, metadata !150, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [help] [line 148]
!150 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!151 = metadata !{i32 786688, metadata !142, metadata !"i", metadata !5, i32 149, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 149]
!152 = metadata !{i32 786688, metadata !142, metadata !"nhlp", metadata !5, i32 149, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nhlp] [line 149]
!153 = metadata !{i32 786688, metadata !142, metadata !"seed", metadata !5, i32 150, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [seed] [line 150]
!154 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"pr_two", metadata !"pr_two", metadata !"", i32 49, metadata !155, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, i32)* @pr_two, null, null, metadata !157, i32 50} ; [ DW_TAG_subprogram ] [line 49] [local] [def] [scope 50] [pr_two]
!155 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !156, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!156 = metadata !{null, metadata !8, metadata !14, metadata !14}
!157 = metadata !{metadata !158, metadata !159, metadata !160}
!158 = metadata !{i32 786689, metadata !154, metadata !"out", metadata !5, i32 16777265, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 49]
!159 = metadata !{i32 786689, metadata !154, metadata !"c", metadata !5, i32 33554481, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 49]
!160 = metadata !{i32 786689, metadata !154, metadata !"i", metadata !5, i32 50331697, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 49]
!161 = metadata !{metadata !162, metadata !163, metadata !167, metadata !182, metadata !183, metadata !187, metadata !188, metadata !194, metadata !196}
!162 = metadata !{i32 786484, i32 0, metadata !76, metadata !"cool", metadata !"cool", metadata !"", metadata !5, i32 98, metadata !14, i32 1, i32 1, null, null}
!163 = metadata !{i32 786484, i32 0, metadata !96, metadata !"buf", metadata !"buf", metadata !"", metadata !5, i32 181, metadata !164, i32 1, i32 1, [1024 x i8]* @cool_quote.buf, null} ; [ DW_TAG_variable ] [buf] [line 181] [local] [def]
!164 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 8, i32 0, i32 0, metadata !17, metadata !165, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 8, offset 0] [from char]
!165 = metadata !{metadata !166}
!166 = metadata !{i32 786465, i64 0, i64 1024}    ; [ DW_TAG_subrange_type ] [0, 1023]
!167 = metadata !{i32 786484, i32 0, metadata !119, metadata !"citedb", metadata !"citedb", metadata !"", metadata !5, i32 272, metadata !168, i32 1, i32 1, [18 x %struct.t_citerec]* @please_cite.citedb, null} ; [ DW_TAG_variable ] [citedb] [line 272] [local] [def]
!168 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6912, i64 64, i32 0, i32 0, metadata !169, metadata !180, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6912, align 64, offset 0] [from t_citerec]
!169 = metadata !{i32 786454, metadata !1, null, metadata !"t_citerec", i32 268, i64 0, i64 0, i64 0, i32 0, metadata !170} ; [ DW_TAG_typedef ] [t_citerec] [line 268, size 0, align 0, offset 0] [from ]
!170 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 262, i64 384, i64 64, i32 0, i32 0, null, metadata !171, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 262, size 384, align 64, offset 0] [from ]
!171 = metadata !{metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179}
!172 = metadata !{i32 786445, metadata !1, metadata !170, metadata !"key", i32 263, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [key] [line 263, size 64, align 64, offset 0] [from ]
!173 = metadata !{i32 786445, metadata !1, metadata !170, metadata !"author", i32 264, i64 64, i64 64, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [author] [line 264, size 64, align 64, offset 64] [from ]
!174 = metadata !{i32 786445, metadata !1, metadata !170, metadata !"title", i32 265, i64 64, i64 64, i64 128, i32 0, metadata !16} ; [ DW_TAG_member ] [title] [line 265, size 64, align 64, offset 128] [from ]
!175 = metadata !{i32 786445, metadata !1, metadata !170, metadata !"journal", i32 266, i64 64, i64 64, i64 192, i32 0, metadata !16} ; [ DW_TAG_member ] [journal] [line 266, size 64, align 64, offset 192] [from ]
!176 = metadata !{i32 786445, metadata !1, metadata !170, metadata !"volume", i32 267, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [volume] [line 267, size 32, align 32, offset 256] [from int]
!177 = metadata !{i32 786445, metadata !1, metadata !170, metadata !"year", i32 267, i64 32, i64 32, i64 288, i32 0, metadata !14} ; [ DW_TAG_member ] [year] [line 267, size 32, align 32, offset 288] [from int]
!178 = metadata !{i32 786445, metadata !1, metadata !170, metadata !"p0", i32 267, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [p0] [line 267, size 32, align 32, offset 320] [from int]
!179 = metadata !{i32 786445, metadata !1, metadata !170, metadata !"p1", i32 267, i64 32, i64 32, i64 352, i32 0, metadata !14} ; [ DW_TAG_member ] [p1] [line 267, size 32, align 32, offset 352] [from int]
!180 = metadata !{metadata !181}
!181 = metadata !{i32 786465, i64 0, i64 18}      ; [ DW_TAG_subrange_type ] [0, 17]
!182 = metadata !{i32 786484, i32 0, metadata !127, metadata !"bFirst", metadata !"bFirst", metadata !"", metadata !5, i32 398, metadata !14, i32 1, i32 1, null, null}
!183 = metadata !{i32 786484, i32 0, metadata !127, metadata !"ver_string", metadata !"ver_string", metadata !"", metadata !5, i32 399, metadata !184, i32 1, i32 1, [100 x i8]* @GromacsVersion.ver_string, null} ; [ DW_TAG_variable ] [ver_string] [line 399] [local] [def]
!184 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800, i64 8, i32 0, i32 0, metadata !17, metadata !185, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 800, align 8, offset 0] [from char]
!185 = metadata !{metadata !186}
!186 = metadata !{i32 786465, i64 0, i64 100}     ; [ DW_TAG_subrange_type ] [0, 99]
!187 = metadata !{i32 786484, i32 0, null, metadata !"nran", metadata !"nran", metadata !"", metadata !5, i32 142, metadata !14, i32 1, i32 1, null, null}
!188 = metadata !{i32 786484, i32 0, null, metadata !"GPLText", metadata !"GPLText", metadata !"", metadata !189, i32 56, metadata !191, i32 1, i32 1, [4 x i8*]* @GPLText, null} ; [ DW_TAG_variable ] [GPLText] [line 56] [local] [def]
!189 = metadata !{i32 786473, metadata !190}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/copyrite.h]
!190 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/copyrite.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!191 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !16, metadata !192, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from ]
!192 = metadata !{metadata !193}
!193 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!194 = metadata !{i32 786484, i32 0, null, metadata !"CopyrightText", metadata !"CopyrightText", metadata !"", metadata !189, i32 52, metadata !195, i32 1, i32 1, null, null}
!195 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 64, i32 0, i32 0, metadata !16, metadata !48, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 64, offset 0] [from ]
!196 = metadata !{i32 786484, i32 0, metadata !142, metadata !"hulp", metadata !"hulp", metadata !"", metadata !5, i32 146, metadata !197, i32 1, i32 1, null, null}
!197 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 8, i32 0, i32 0, metadata !17, metadata !198, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32768, align 8, offset 0] [from char]
!198 = metadata !{metadata !199}
!199 = metadata !{i32 786465, i64 0, i64 4096}    ; [ DW_TAG_subrange_type ] [0, 4095]
!200 = metadata !{i32 57, i32 0, metadata !4, null}
!201 = metadata !{i32 62, i32 0, metadata !4, null}
!202 = metadata !{i32 63, i32 0, metadata !4, null}
!203 = metadata !{i32 64, i32 0, metadata !4, null}
!204 = metadata !{i32 65, i32 0, metadata !4, null}
!205 = metadata !{i32 66, i32 0, metadata !4, null}
!206 = metadata !{i32 67, i32 0, metadata !4, null}
!207 = metadata !{i32 68, i32 0, metadata !4, null}
!208 = metadata !{i32 69, i32 0, metadata !4, null}
!209 = metadata !{i32 71, i32 0, metadata !4, null}
!210 = metadata !{i32 73, i32 0, metadata !4, null}
!211 = metadata !{i32 74, i32 0, metadata !4, null}
!212 = metadata !{i32 72, i32 0, metadata !4, null}
!213 = metadata !{i32 76, i32 0, metadata !214, null}
!214 = metadata !{i32 786443, metadata !1, metadata !4, i32 74, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/copyrite.c]
!215 = metadata !{i32 83, i32 0, metadata !216, null}
!216 = metadata !{i32 786443, metadata !1, metadata !4, i32 82, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/copyrite.c]
!217 = metadata !{i32 78, i32 0, metadata !214, null}
!218 = metadata !{i32 81, i32 0, metadata !4, null}
!219 = metadata !{i32 82, i32 0, metadata !4, null}
!220 = metadata !{i32 84, i32 0, metadata !216, null}
!221 = metadata !{i32 89, i32 0, metadata !4, null}
!222 = metadata !{i32 86, i32 0, metadata !216, null}
!223 = metadata !{i32 90, i32 0, metadata !4, null}
!224 = metadata !{i32 92, i32 0, metadata !4, null}
!225 = metadata !{i32 93, i32 0, metadata !4, null}
!226 = metadata !{i32 94, i32 0, metadata !4, null}
!227 = metadata !{i32 49, i32 0, metadata !154, null}
!228 = metadata !{i32 51, i32 0, metadata !154, null}
!229 = metadata !{i32 52, i32 0, metadata !154, null}
!230 = metadata !{i32 54, i32 0, metadata !154, null}
!231 = metadata !{i32 55, i32 0, metadata !154, null}
!232 = metadata !{i32 101, i32 0, metadata !76, null}
!233 = metadata !{i32 115, i32 0, metadata !81, null}
!234 = metadata !{i32 117, i32 0, metadata !81, null}
!235 = metadata !{i32 118, i32 0, metadata !81, null}
!236 = metadata !{i32 120, i32 0, metadata !87, null}
!237 = metadata !{i32 120, i32 0, metadata !238, null}
!238 = metadata !{i32 786443, metadata !1, metadata !87, i32 120, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/copyrite.c]
!239 = metadata !{metadata !"omnipotent char", metadata !240}
!240 = metadata !{metadata !"Simple C/C++ TBAA"}
!241 = metadata !{i8* null}
!242 = metadata !{i32 786689, metadata !142, metadata !"db", metadata !5, i32 16777360, metadata !16, i32 0, metadata !243} ; [ DW_TAG_arg_variable ] [db] [line 144]
!243 = metadata !{i32 175, i32 0, metadata !93, null}
!244 = metadata !{i32 144, i32 0, metadata !142, metadata !243}
!245 = metadata !{i32 786689, metadata !142, metadata !"db", metadata !5, i32 16777360, metadata !16, i32 0, metadata !246} ; [ DW_TAG_arg_variable ] [db] [line 144]
!246 = metadata !{i32 185, i32 0, metadata !96, null}
!247 = metadata !{i32 144, i32 0, metadata !142, metadata !246}
!248 = metadata !{i8* getelementptr inbounds ([42 x i8]* @.str8, i64 0, i64 0)}
!249 = metadata !{i32 193, i32 0, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !96, i32 192, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/copyrite.c]
!251 = metadata !{i32 196, i32 0, metadata !96, null}
!252 = metadata !{i32 199, i32 0, metadata !100, null}
!253 = metadata !{i32 207, i32 0, metadata !100, null}
!254 = metadata !{i32 212, i32 0, metadata !100, null}
!255 = metadata !{i32 214, i32 0, metadata !100, null}
!256 = metadata !{i32 216, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !100, i32 215, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/copyrite.c]
!258 = metadata !{i32 217, i32 0, metadata !257, null}
!259 = metadata !{i32 786689, metadata !142, metadata !"db", metadata !5, i32 16777360, metadata !16, i32 0, metadata !260} ; [ DW_TAG_arg_variable ] [db] [line 144]
!260 = metadata !{i32 175, i32 0, metadata !93, metadata !261}
!261 = metadata !{i32 219, i32 0, metadata !257, null}
!262 = metadata !{i32 144, i32 0, metadata !142, metadata !260}
!263 = metadata !{i8* getelementptr inbounds ([42 x i8]* @.str6, i64 0, i64 0)}
!264 = metadata !{i32 220, i32 0, metadata !257, null}
!265 = metadata !{i32 221, i32 0, metadata !257, null}
!266 = metadata !{i32 402, i32 0, metadata !127, metadata !267}
!267 = metadata !{i32 223, i32 0, metadata !257, null}
!268 = metadata !{i32 403, i32 0, metadata !269, metadata !267}
!269 = metadata !{i32 786443, metadata !1, metadata !127, i32 402, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/copyrite.c]
!270 = metadata !{i32 405, i32 0, metadata !269, metadata !267}
!271 = metadata !{i32 224, i32 0, metadata !257, null}
!272 = metadata !{i32 226, i32 0, metadata !257, null}
!273 = metadata !{i32 228, i32 0, metadata !274, null}
!274 = metadata !{i32 786443, metadata !1, metadata !257, i32 228, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/copyrite.c]
!275 = metadata !{i32 229, i32 0, metadata !274, null}
!276 = metadata !{i32 231, i32 0, metadata !277, null}
!277 = metadata !{i32 786443, metadata !1, metadata !257, i32 230, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/copyrite.c]
!278 = metadata !{metadata !"any pointer", metadata !239}
!279 = metadata !{i32 230, i32 0, metadata !277, null}
!280 = metadata !{i32 233, i32 0, metadata !257, null}
!281 = metadata !{i32 235, i32 0, metadata !257, null}
!282 = metadata !{i32 239, i32 0, metadata !257, null}
!283 = metadata !{i32 240, i32 0, metadata !257, null}
!284 = metadata !{i32 241, i32 0, metadata !257, null}
!285 = metadata !{i32 242, i32 0, metadata !100, null}
!286 = metadata !{i32 131, i32 0, metadata !133, null}
!287 = metadata !{i32 134, i32 0, metadata !133, null}
!288 = metadata !{i32 136, i32 0, metadata !133, null}
!289 = metadata !{i32 137, i32 0, metadata !133, null}
!290 = metadata !{i32 138, i32 0, metadata !133, null}
!291 = metadata !{i32 786689, metadata !81, metadata !"out", metadata !5, i32 16777331, metadata !8, i32 0, metadata !290} ; [ DW_TAG_arg_variable ] [out] [line 115]
!292 = metadata !{i32 115, i32 0, metadata !81, metadata !290}
!293 = metadata !{i32 786689, metadata !81, metadata !"n", metadata !5, i32 33554547, metadata !14, i32 0, metadata !290} ; [ DW_TAG_arg_variable ] [n] [line 115]
!294 = metadata !{i32 117, i32 0, metadata !81, metadata !290}
!295 = metadata !{i32 139, i32 0, metadata !133, null}
!296 = metadata !{i32 140, i32 0, metadata !133, null}
!297 = metadata !{i32 122, i32 0, metadata !128, null}
!298 = metadata !{i32 126, i32 0, metadata !128, null}
!299 = metadata !{i32 127, i32 0, metadata !128, null}
!300 = metadata !{i32 786689, metadata !81, metadata !"out", metadata !5, i32 16777331, metadata !8, i32 0, metadata !299} ; [ DW_TAG_arg_variable ] [out] [line 115]
!301 = metadata !{i32 115, i32 0, metadata !81, metadata !299}
!302 = metadata !{i32 786689, metadata !81, metadata !"n", metadata !5, i32 33554547, metadata !14, i32 0, metadata !299} ; [ DW_TAG_arg_variable ] [n] [line 115]
!303 = metadata !{i32 117, i32 0, metadata !81, metadata !299}
!304 = metadata !{i32 128, i32 0, metadata !128, null}
!305 = metadata !{i32 129, i32 0, metadata !128, null}
!306 = metadata !{i32 402, i32 0, metadata !127, null}
!307 = metadata !{i32 403, i32 0, metadata !269, null}
!308 = metadata !{i32 405, i32 0, metadata !269, null}
!309 = metadata !{i32 407, i32 0, metadata !127, null}
!310 = metadata !{i32 245, i32 0, metadata !112, null}
!311 = metadata !{i32 786689, metadata !142, metadata !"db", metadata !5, i32 16777360, metadata !16, i32 0, metadata !312} ; [ DW_TAG_arg_variable ] [db] [line 144]
!312 = metadata !{i32 185, i32 0, metadata !96, metadata !313}
!313 = metadata !{i32 250, i32 0, metadata !112, null}
!314 = metadata !{i32 144, i32 0, metadata !142, metadata !312}
!315 = metadata !{i32 786688, metadata !96, metadata !"s", metadata !5, i32 182, metadata !16, i32 0, metadata !313} ; [ DW_TAG_auto_variable ] [s] [line 182]
!316 = metadata !{i32 193, i32 0, metadata !250, metadata !313}
!317 = metadata !{null}
!318 = metadata !{i32 259, i32 0, metadata !112, null}
!319 = metadata !{i32 260, i32 0, metadata !112, null}
!320 = metadata !{i32 270, i32 0, metadata !119, null}
!321 = metadata !{i32 371, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !119, i32 371, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/copyrite.c]
!323 = metadata !{i32 374, i32 0, metadata !119, null}
!324 = metadata !{i32 376, i32 0, metadata !325, null}
!325 = metadata !{i32 786443, metadata !1, metadata !119, i32 375, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/copyrite.c]
!326 = metadata !{i32 377, i32 0, metadata !325, null}
!327 = metadata !{i32 379, i32 0, metadata !328, null}
!328 = metadata !{i32 786443, metadata !1, metadata !325, i32 377, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/copyrite.c]
!329 = metadata !{i32 380, i32 0, metadata !328, null}
!330 = metadata !{i32 381, i32 0, metadata !328, null}
!331 = metadata !{metadata !"int", metadata !239}
!332 = metadata !{i32 385, i32 0, metadata !328, null}
!333 = metadata !{i32 386, i32 0, metadata !328, null}
!334 = metadata !{i32 387, i32 0, metadata !328, null}
!335 = metadata !{i32 389, i32 0, metadata !336, null}
!336 = metadata !{i32 786443, metadata !1, metadata !325, i32 388, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/copyrite.c]
!337 = metadata !{i32 391, i32 0, metadata !325, null}
!338 = metadata !{i32 392, i32 0, metadata !325, null}
!339 = metadata !{i32 393, i32 0, metadata !325, null}
!340 = metadata !{i32 394, i32 0, metadata !119, null}

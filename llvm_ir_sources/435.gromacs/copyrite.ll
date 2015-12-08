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
  %div = fdiv double %dt, 8.640000e+04
  %conv = fptosi double %div to i32
  %mul = mul nsw i32 %conv, 86400
  %conv1 = sitofp i32 %mul to double
  %sub = fsub double %dt, %conv1
  %div2 = fdiv double %sub, 3.600000e+03
  %conv3 = fptosi double %div2 to i32
  %mul4 = mul nsw i32 %conv3, 3600
  %conv5 = sitofp i32 %mul4 to double
  %sub6 = fsub double %sub, %conv5
  %div7 = fdiv double %sub6, 6.000000e+01
  %conv8 = fptosi double %div7 to i32
  %mul9 = mul nsw i32 %conv8, 60
  %conv10 = sitofp i32 %mul9 to double
  %sub11 = fsub double %sub6, %conv10
  %conv12 = fptosi double %sub11 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %if.then36.thread, label %if.end

if.end:                                           ; preds = %entry
  %cmp15 = icmp sgt i32 %conv3, 0
  br i1 %cmp15, label %if.end23.thread, label %if.end23

if.then36.thread:                                 ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i32 %conv) #6
  tail call fastcc void @pr_two(%struct._IO_FILE* %out, i32 100, i32 %conv3) #7
  br label %if.end42.thread

if.end23.thread:                                  ; preds = %if.end
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i32 %conv3) #6
  br label %if.end42.thread

if.end23:                                         ; preds = %if.end
  %cmp31 = icmp sgt i32 %conv8, 0
  br i1 %cmp31, label %if.then36, label %if.end42

if.then36:                                        ; preds = %if.end23
  br i1 %cmp, label %if.end42.thread, label %if.end42.thread97

if.end42.thread:                                  ; preds = %if.then36.thread, %if.end23.thread, %if.then36
  tail call fastcc void @pr_two(%struct._IO_FILE* %out, i32 104, i32 %conv8) #7
  br label %if.then49

if.end42.thread97:                                ; preds = %if.then36
  %call40 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i32 %conv8) #6
  br label %if.then49

if.end42:                                         ; preds = %if.end23
  br i1 %cmp, label %if.then49, label %if.else50

if.then49:                                        ; preds = %if.end42.thread97, %if.end42.thread, %if.end42
  tail call fastcc void @pr_two(%struct._IO_FILE* %out, i32 58, i32 %conv12) #7
  br label %if.end52

if.else50:                                        ; preds = %if.end42
  %call51 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i32 %conv12) #6
  br label %if.end52

if.end52:                                         ; preds = %if.else50, %if.then49
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out)
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @pr_two(%struct._IO_FILE* nocapture %out, i32 %c, i32 %i) #0 {
entry:
  %cmp = icmp slt i32 %i, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([7 x i8]* @.str100, i64 0, i64 0), i32 %c, i32 %i) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([6 x i8]* @.str101, i64 0, i64 0), i32 %c, i32 %i) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @be_cool() #2 {
entry:
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define void @space(%struct._IO_FILE* nocapture %out, i32 %n) #0 {
entry:
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i32 %n, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0)) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @f(i8* nocapture %a) #0 {
entry:
  %call12 = tail call i64 @strlen(i8* %a) #8
  %conv13 = trunc i64 %call12 to i32
  %cmp14 = icmp sgt i32 %conv13, 0
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8* %a, i64 %indvars.iv
  %0 = load i8* %arrayidx, align 1, !tbaa !0
  %neg = xor i8 %0, -1
  store i8 %neg, i8* %arrayidx, align 1, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %call = tail call i64 @strlen(i8* %a) #8
  %conv = trunc i64 %call to i32
  %1 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %1, %conv
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize readnone uwtable
define i8* @bromacs() #2 {
entry:
  ret i8* getelementptr inbounds ([42 x i8]* @.str6, i64 0, i64 0)
}

; Function Attrs: nounwind optsize uwtable
define i8* @cool_quote() #0 {
entry:
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([1024 x i8]* @cool_quote.buf, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str8, i64 0, i64 0), i64 42, i32 1, i1 false)
  ret i8* getelementptr inbounds ([1024 x i8]* @cool_quote.buf, i64 0, i64 0)
}

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @CopyRight(%struct._IO_FILE* %out, i8* %szProgram) #0 {
entry:
  %buf = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #4
  call void @set_program_name(i8* %szProgram) #6
  %tobool = icmp eq %struct._IO_FILE* %out, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @ster_print(%struct._IO_FILE* %out, i8* getelementptr inbounds ([20 x i8]* @.str10, i64 0, i64 0)) #7
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %out)
  call fastcc void @sp_print(%struct._IO_FILE* %out, i8* getelementptr inbounds ([42 x i8]* @.str6, i64 0, i64 0)) #7
  %fputc37 = call i32 @fputc(i32 10, %struct._IO_FILE* %out)
  %.b.i = load i1* @GromacsVersion.bFirst, align 1
  br i1 %.b.i, label %for.body, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %call.i = call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([100 x i8]* @GromacsVersion.ver_string, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str89, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str90, i64 0, i64 0)) #6
  store i1 true, i1* @GromacsVersion.bFirst, align 1
  br label %for.body

for.body:                                         ; preds = %if.then.i, %if.then
  call fastcc void @ster_print(%struct._IO_FILE* %out, i8* getelementptr inbounds ([100 x i8]* @GromacsVersion.ver_string, i64 0, i64 0)) #7
  %fputc40 = call i32 @fputc(i32 10, %struct._IO_FILE* %out)
  %fputc43 = call i32 @fputc(i32 10, %struct._IO_FILE* %out)
  call fastcc void @sp_print(%struct._IO_FILE* %out, i8* getelementptr inbounds ([66 x i8]* @.str95, i64 0, i64 0)) #7
  br label %for.body8

for.body8:                                        ; preds = %for.body, %for.body8
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.body ]
  %arrayidx10 = getelementptr inbounds [4 x i8*]* @GPLText, i64 0, i64 %indvars.iv
  %1 = load i8** %arrayidx10, align 8, !tbaa !2
  call fastcc void @sp_print(%struct._IO_FILE* %out, i8* %1) #7
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end13, label %for.body8

for.end13:                                        ; preds = %for.body8
  %fputc46 = call i32 @fputc(i32 10, %struct._IO_FILE* %out)
  %call15 = call i8* @Program() #6
  %strlen = call i64 @strlen(i8* %call15)
  %leninc = add i64 %strlen, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %call15, i64 %leninc, i32 1, i1 false)
  call fastcc void @ster_print(%struct._IO_FILE* %out, i8* %0) #7
  %fputc49 = call i32 @fputc(i32 10, %struct._IO_FILE* %out)
  br label %if.end

if.end:                                           ; preds = %entry, %for.end13
  call void @llvm.lifetime.end(i64 256, i8* %0) #4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare void @set_program_name(i8*) #5

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ster_print(%struct._IO_FILE* nocapture %out, i8* %s) #0 {
entry:
  %buf = alloca [128 x i8], align 16
  %0 = getelementptr inbounds [128 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 128, i8* %0) #4
  %call = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([13 x i8]* @.str97, i64 0, i64 0), i8* %s) #6
  %call2 = call i64 @strlen(i8* %0) #8
  %conv = trunc i64 %call2 to i32
  %sub = sub nsw i32 80, %conv
  %div = sdiv i32 %sub, 2
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i32 %div, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0)) #6
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str96, i64 0, i64 0), i8* %0) #6
  call void @llvm.lifetime.end(i64 128, i8* %0) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @sp_print(%struct._IO_FILE* nocapture %out, i8* %s) #0 {
entry:
  %call = tail call i64 @strlen(i8* %s) #8
  %conv = trunc i64 %call to i32
  %sub = sub nsw i32 80, %conv
  %div = sdiv i32 %sub, 2
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i32 %div, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0)) #6
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str96, i64 0, i64 0), i8* %s) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i8* @GromacsVersion() #0 {
entry:
  %.b = load i1* @GromacsVersion.bFirst, align 1
  br i1 %.b, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([100 x i8]* @GromacsVersion.ver_string, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str89, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str90, i64 0, i64 0)) #6
  store i1 true, i1* @GromacsVersion.bFirst, align 1
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret i8* getelementptr inbounds ([100 x i8]* @GromacsVersion.ver_string, i64 0, i64 0)
}

; Function Attrs: optsize
declare i8* @Program() #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define void @thanx(%struct._IO_FILE* nocapture %fp) #0 {
entry:
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([1024 x i8]* @cool_quote.buf, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str8, i64 0, i64 0), i64 42, i32 1, i1 false) #4
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([1024 x i8]* @cool_quote.buf, i64 0, i64 0)) #6
  ret void
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #5

; Function Attrs: nounwind optsize uwtable
define void @please_cite(%struct._IO_FILE* %fp, i8* %key) #0 {
entry:
  br label %land.rhs

for.cond:                                         ; preds = %land.rhs
  %0 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %0, 18
  br i1 %cmp, label %land.rhs, label %for.end

land.rhs:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  %index.047 = phi i32 [ 0, %entry ], [ %inc, %for.cond ]
  %key1 = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %indvars.iv, i32 0
  %1 = load i8** %key1, align 16, !tbaa !2
  %call = tail call i32 @strcmp(i8* %1, i8* %key) #8
  %cmp2 = icmp eq i32 %call, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %index.047, 1
  br i1 %cmp2, label %for.end, label %for.cond

for.end:                                          ; preds = %land.rhs, %for.cond
  %cmp.lcssa = phi i1 [ true, %land.rhs ], [ false, %for.cond ]
  %index.0.lcssa = phi i32 [ %index.047, %land.rhs ], [ %inc, %for.cond ]
  %tobool = icmp eq %struct._IO_FILE* %fp, null
  br i1 %tobool, label %if.end28, label %if.then

if.then:                                          ; preds = %for.end
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str83, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %fp)
  br i1 %cmp.lcssa, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %idxprom6 = sext i32 %index.0.lcssa to i64
  %author8 = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %idxprom6, i32 1
  %3 = load i8** %author8, align 8, !tbaa !2
  %call9 = tail call i8* @wrap_lines(i8* %3, i32 79, i32 0) #6
  %title12 = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %idxprom6, i32 2
  %4 = load i8** %title12, align 16, !tbaa !2
  %call13 = tail call i8* @wrap_lines(i8* %4, i32 79, i32 0) #6
  %journal = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %idxprom6, i32 3
  %5 = load i8** %journal, align 8, !tbaa !2
  %volume = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %idxprom6, i32 4
  %6 = load i32* %volume, align 16, !tbaa !3
  %year = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %idxprom6, i32 5
  %7 = load i32* %year, align 4, !tbaa !3
  %p0 = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %idxprom6, i32 6
  %8 = load i32* %p0, align 8, !tbaa !3
  %p1 = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %idxprom6, i32 7
  %9 = load i32* %p1, align 4, !tbaa !3
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([28 x i8]* @.str84, i64 0, i64 0), i8* %call9, i8* %call13, i8* %5, i32 %6, i32 %7, i32 %8, i32 %9) #6
  tail call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str85, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str13, i64 0, i64 0), i32 385, i8* %call9) #6
  tail call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str86, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str13, i64 0, i64 0), i32 386, i8* %call13) #6
  br label %if.end

if.else:                                          ; preds = %if.then
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([41 x i8]* @.str87, i64 0, i64 0), i8* %key) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str88, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %fp)
  %call27 = tail call i32 @fflush(%struct._IO_FILE* %fp) #6
  br label %if.end28

if.end28:                                         ; preds = %for.end, %if.end
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: optsize
declare i8* @wrap_lines(i8*, i32, i32) #5

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize readonly }

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
!2 = metadata !{metadata !"any pointer", metadata !0}
!3 = metadata !{metadata !"int", metadata !0}

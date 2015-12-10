; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/copyrite.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.t_citerec = type { i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c"%ds\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str6 = private unnamed_addr constant [42 x i8] c"Groningen Machine for Chemical Simulation\00", align 1
@cool_quote.buf = internal global [1024 x i8] zeroinitializer, align 16
@.str8 = private unnamed_addr constant [42 x i8] c"Thanx for Using GROMACS - Have a Nice Day\00", align 1
@.str10 = private unnamed_addr constant [20 x i8] c"G  R  O  M  A  C  S\00", align 1
@GPLText = internal unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([62 x i8]* @.str98, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8]* @.str99, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8]* @.str100, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8]* @.str101, i32 0, i32 0)], align 16
@.str11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str13 = private unnamed_addr constant [68 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/copyrite.c\00", align 1
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
@.str91 = private unnamed_addr constant [7 x i8] c"%c0%1d\00", align 1
@.str92 = private unnamed_addr constant [6 x i8] c"%c%2d\00", align 1
@.str95 = private unnamed_addr constant [13 x i8] c":-)  %s  (-:\00", align 1
@.str96 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str97 = private unnamed_addr constant [66 x i8] c"Copyright (c) 1991-2002, University of Groningen, The Netherlands\00", align 1
@.str98 = private unnamed_addr constant [62 x i8] c"This program is free software; you can redistribute it and/or\00", align 1
@.str99 = private unnamed_addr constant [60 x i8] c"modify it under the terms of the GNU General Public License\00", align 1
@.str100 = private unnamed_addr constant [63 x i8] c"as published by the Free Software Foundation; either version 2\00", align 1
@.str101 = private unnamed_addr constant [55 x i8] c"of the License, or (at your option) any later version.\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2
  %2 = load i32* %1, align 4, !tbaa !2
  %3 = add nsw i32 %2, -1
  store i32 %3, i32* %1, align 4, !tbaa !2
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %._crit_edge, label %5

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255
  br label %10

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6
  %7 = load i32* %6, align 4, !tbaa !11
  %8 = icmp sle i32 %2, %7
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10
  %or.cond = or i1 %9, %8
  br i1 %or.cond, label %15, label %10

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ]
  %11 = trunc i32 %_c to i8
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0
  %13 = load i8** %12, align 8, !tbaa !12
  %14 = getelementptr inbounds i8* %13, i64 1
  store i8* %14, i8** %12, align 8, !tbaa !12
  store i8 %11, i8* %13, align 1, !tbaa !13
  br label %17

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #8
  br label %17

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #2 {
  %1 = icmp sgt i32 %__signo, 32
  br i1 %1, label %5, label %2

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1
  %4 = shl i32 1, %3
  br label %5

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_difftime(%struct.__sFILE* nocapture %out, double %dt) #3 {
  %1 = fdiv double %dt, 8.640000e+04
  %2 = fptosi double %1 to i32
  %3 = mul nsw i32 %2, 86400
  %4 = sitofp i32 %3 to double
  %5 = fsub double %dt, %4
  %6 = fdiv double %5, 3.600000e+03
  %7 = fptosi double %6 to i32
  %8 = mul nsw i32 %7, 3600
  %9 = sitofp i32 %8 to double
  %10 = fsub double %5, %9
  %11 = fdiv double %10, 6.000000e+01
  %12 = fptosi double %11 to i32
  %13 = mul nsw i32 %12, 60
  %14 = sitofp i32 %13 to double
  %15 = fsub double %10, %14
  %16 = fptosi double %15 to i32
  %17 = icmp sgt i32 %2, 0
  br i1 %17, label %.thread17, label %18

; <label>:18                                      ; preds = %0
  %19 = icmp sgt i32 %7, 0
  br i1 %19, label %.thread, label %22

.thread17:                                        ; preds = %0
  %20 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i32 %2) #8
  tail call fastcc void @pr_two(%struct.__sFILE* %out, i32 100, i32 %7) #9
  br label %.thread12

.thread:                                          ; preds = %18
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i32 %7) #8
  br label %.thread12

; <label>:22                                      ; preds = %18
  %23 = icmp sgt i32 %12, 0
  br i1 %23, label %24, label %26

; <label>:24                                      ; preds = %22
  br i1 %17, label %.thread12, label %.thread18

.thread12:                                        ; preds = %.thread17, %.thread, %24
  tail call fastcc void @pr_two(%struct.__sFILE* %out, i32 104, i32 %12) #9
  br label %27

.thread18:                                        ; preds = %24
  %25 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i32 %12) #8
  br label %27

; <label>:26                                      ; preds = %22
  br i1 %17, label %27, label %28

; <label>:27                                      ; preds = %.thread18, %.thread12, %26
  tail call fastcc void @pr_two(%struct.__sFILE* %out, i32 58, i32 %16) #9
  br label %30

; <label>:28                                      ; preds = %26
  %29 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i32 %16) #8
  br label %30

; <label>:30                                      ; preds = %28, %27
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %out)
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @pr_two(%struct.__sFILE* nocapture %out, i32 %c, i32 %i) #3 {
  %1 = icmp slt i32 %i, 10
  br i1 %1, label %2, label %4

; <label>:2                                       ; preds = %0
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([7 x i8]* @.str91, i64 0, i64 0), i32 %c, i32 %i) #8
  br label %6

; <label>:4                                       ; preds = %0
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([6 x i8]* @.str92, i64 0, i64 0), i32 %c, i32 %i) #8
  br label %6

; <label>:6                                       ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @be_cool() #5 {
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @space(%struct.__sFILE* nocapture %out, i32 %n) #3 {
  %1 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i32 %n, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0)) #8
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @f(i8* nocapture %a) #3 {
  %1 = tail call i64 @strlen(i8* %a) #8
  %2 = trunc i64 %1 to i32
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ]
  %4 = getelementptr inbounds i8* %a, i64 %indvars.iv
  %5 = load i8* %4, align 1, !tbaa !13
  %6 = xor i8 %5, -1
  store i8 %6, i8* %4, align 1, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %7 = tail call i64 @strlen(i8* %a) #8
  %sext = shl i64 %7, 32
  %8 = ashr exact i64 %sext, 32
  %9 = icmp slt i64 %indvars.iv.next, %8
  br i1 %9, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %0
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @bromacs() #5 {
  ret i8* getelementptr inbounds ([42 x i8]* @.str6, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @cool_quote() #3 {
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([1024 x i8]* @cool_quote.buf, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str8, i64 0, i64 0), i64 42, i32 1, i1 false)
  ret i8* getelementptr inbounds ([1024 x i8]* @cool_quote.buf, i64 0, i64 0)
}

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @CopyRight(%struct.__sFILE* %out, i8* %szProgram) #3 {
  %buf = alloca [256 x i8], align 16
  %1 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %1) #7
  tail call void @set_program_name(i8* %szProgram) #8
  %2 = icmp eq %struct.__sFILE* %out, null
  br i1 %2, label %12, label %3

; <label>:3                                       ; preds = %0
  tail call fastcc void @ster_print(%struct.__sFILE* %out, i8* getelementptr inbounds ([20 x i8]* @.str10, i64 0, i64 0)) #9
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %out)
  tail call fastcc void @sp_print(%struct.__sFILE* %out, i8* getelementptr inbounds ([42 x i8]* @.str6, i64 0, i64 0)) #9
  %fputc3 = tail call i32 @fputc(i32 10, %struct.__sFILE* %out)
  %.b.i = load i1* @GromacsVersion.bFirst, align 1
  br i1 %.b.i, label %.preheader, label %4

; <label>:4                                       ; preds = %3
  %5 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([100 x i8]* @GromacsVersion.ver_string, i64 0, i64 0), i32 0, i64 100, i8* getelementptr inbounds ([11 x i8]* @.str89, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str90, i64 0, i64 0)) #8
  store i1 true, i1* @GromacsVersion.bFirst, align 1
  br label %.preheader

.preheader:                                       ; preds = %4, %3
  tail call fastcc void @ster_print(%struct.__sFILE* %out, i8* getelementptr inbounds ([100 x i8]* @GromacsVersion.ver_string, i64 0, i64 0)) #9
  %fputc6 = tail call i32 @fputc(i32 10, %struct.__sFILE* %out)
  %fputc9 = tail call i32 @fputc(i32 10, %struct.__sFILE* %out)
  tail call fastcc void @sp_print(%struct.__sFILE* %out, i8* getelementptr inbounds ([66 x i8]* @.str97, i64 0, i64 0)) #9
  br label %6

; <label>:6                                       ; preds = %6, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %6 ]
  %7 = getelementptr inbounds [4 x i8*]* @GPLText, i64 0, i64 %indvars.iv
  %8 = load i8** %7, align 8, !tbaa !14
  tail call fastcc void @sp_print(%struct.__sFILE* %out, i8* %8) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond, label %9, label %6

; <label>:9                                       ; preds = %6
  %fputc12 = tail call i32 @fputc(i32 10, %struct.__sFILE* %out)
  %10 = tail call i8* @Program() #8
  %11 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 256, i8* getelementptr inbounds ([3 x i8]* @.str11, i64 0, i64 0), i8* %10) #8
  call fastcc void @ster_print(%struct.__sFILE* %out, i8* %1) #9
  %fputc15 = call i32 @fputc(i32 10, %struct.__sFILE* %out)
  br label %12

; <label>:12                                      ; preds = %0, %9
  call void @llvm.lifetime.end(i64 256, i8* %1) #7
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: optsize
declare void @set_program_name(i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @ster_print(%struct.__sFILE* nocapture %out, i8* %s) #3 {
  %buf = alloca [128 x i8], align 16
  %1 = getelementptr inbounds [128 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 128, i8* %1) #7
  %2 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 128, i8* getelementptr inbounds ([13 x i8]* @.str95, i64 0, i64 0), i8* %s) #8
  %3 = call i64 @strlen(i8* %1) #8
  %4 = trunc i64 %3 to i32
  %5 = sub nsw i32 80, %4
  %6 = sdiv i32 %5, 2
  %7 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i32 %6, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0)) #8
  %8 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str96, i64 0, i64 0), i8* %1) #8
  call void @llvm.lifetime.end(i64 128, i8* %1) #7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @sp_print(%struct.__sFILE* nocapture %out, i8* %s) #3 {
  %1 = tail call i64 @strlen(i8* %s) #8
  %2 = trunc i64 %1 to i32
  %3 = sub nsw i32 80, %2
  %4 = sdiv i32 %3, 2
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i32 %4, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0)) #8
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str96, i64 0, i64 0), i8* %s) #8
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @GromacsVersion() #3 {
  %.b = load i1* @GromacsVersion.bFirst, align 1
  br i1 %.b, label %3, label %1

; <label>:1                                       ; preds = %0
  %2 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([100 x i8]* @GromacsVersion.ver_string, i64 0, i64 0), i32 0, i64 100, i8* getelementptr inbounds ([11 x i8]* @.str89, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str90, i64 0, i64 0)) #8
  store i1 true, i1* @GromacsVersion.bFirst, align 1
  br label %3

; <label>:3                                       ; preds = %0, %1
  ret i8* getelementptr inbounds ([100 x i8]* @GromacsVersion.ver_string, i64 0, i64 0)
}

; Function Attrs: optsize
declare i8* @Program() #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind optsize ssp uwtable
define void @thanx(%struct.__sFILE* nocapture %fp) #3 {
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([1024 x i8]* @cool_quote.buf, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str8, i64 0, i64 0), i64 42, i32 1, i1 false) #7
  %1 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([1024 x i8]* @cool_quote.buf, i64 0, i64 0)) #8
  ret void
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @please_cite(%struct.__sFILE* %fp, i8* %key) #3 {
  br label %1

; <label>:1                                       ; preds = %0, %7
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %7 ]
  %index.01 = phi i32 [ 0, %0 ], [ %8, %7 ]
  %2 = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %indvars.iv, i32 0
  %3 = load i8** %2, align 16, !tbaa !15
  %4 = tail call i32 @strcmp(i8* %3, i8* %key) #8
  %5 = icmp eq i32 %4, 0
  %6 = trunc i64 %indvars.iv to i32
  br i1 %5, label %.critedge, label %7

; <label>:7                                       ; preds = %1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %8 = add nuw nsw i32 %index.01, 1
  %9 = icmp slt i64 %indvars.iv.next, 18
  br i1 %9, label %1, label %.critedge

.critedge:                                        ; preds = %1, %7
  %.lcssa = phi i1 [ true, %1 ], [ false, %7 ]
  %index.0.lcssa = phi i32 [ %6, %1 ], [ %8, %7 ]
  %10 = icmp eq %struct.__sFILE* %fp, null
  br i1 %10, label %37, label %11

; <label>:11                                      ; preds = %.critedge
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str83, i64 0, i64 0), i64 55, i64 1, %struct.__sFILE* %fp)
  br i1 %.lcssa, label %13, label %32

; <label>:13                                      ; preds = %11
  %14 = sext i32 %index.0.lcssa to i64
  %15 = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %14, i32 1
  %16 = load i8** %15, align 8, !tbaa !17
  %17 = tail call i8* @wrap_lines(i8* %16, i32 79, i32 0) #8
  %18 = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %14, i32 2
  %19 = load i8** %18, align 16, !tbaa !18
  %20 = tail call i8* @wrap_lines(i8* %19, i32 79, i32 0) #8
  %21 = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %14, i32 3
  %22 = load i8** %21, align 8, !tbaa !19
  %23 = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %14, i32 4
  %24 = load i32* %23, align 16, !tbaa !20
  %25 = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %14, i32 5
  %26 = load i32* %25, align 4, !tbaa !21
  %27 = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %14, i32 6
  %28 = load i32* %27, align 8, !tbaa !22
  %29 = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %14, i32 7
  %30 = load i32* %29, align 4, !tbaa !23
  %31 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([28 x i8]* @.str84, i64 0, i64 0), i8* %17, i8* %20, i8* %22, i32 %24, i32 %26, i32 %28, i32 %30) #8
  tail call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str85, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str13, i64 0, i64 0), i32 385, i8* %17) #8
  tail call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str86, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str13, i64 0, i64 0), i32 386, i8* %20) #8
  br label %34

; <label>:32                                      ; preds = %11
  %33 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([41 x i8]* @.str87, i64 0, i64 0), i8* %key) #8
  br label %34

; <label>:34                                      ; preds = %32, %13
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str88, i64 0, i64 0), i64 55, i64 1, %struct.__sFILE* %fp)
  %36 = tail call i32 @fflush(%struct.__sFILE* %fp) #8
  br label %37

; <label>:37                                      ; preds = %.critedge, %34
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #6

; Function Attrs: optsize
declare i8* @wrap_lines(i8*, i32, i32) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #7

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #7

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 12}
!3 = !{!"__sFILE", !4, i64 0, !7, i64 8, !7, i64 12, !8, i64 16, !8, i64 18, !9, i64 24, !7, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !9, i64 88, !4, i64 104, !7, i64 112, !5, i64 116, !5, i64 119, !9, i64 120, !7, i64 136, !10, i64 144}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = !{!"__sbuf", !4, i64 0, !7, i64 8}
!10 = !{!"long long", !5, i64 0}
!11 = !{!3, !7, i64 40}
!12 = !{!3, !4, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!4, !4, i64 0}
!15 = !{!16, !4, i64 0}
!16 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44}
!17 = !{!16, !4, i64 8}
!18 = !{!16, !4, i64 16}
!19 = !{!16, !4, i64 24}
!20 = !{!16, !7, i64 32}
!21 = !{!16, !7, i64 36}
!22 = !{!16, !7, i64 40}
!23 = !{!16, !7, i64 44}

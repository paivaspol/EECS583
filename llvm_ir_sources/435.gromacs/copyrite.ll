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
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !73, metadata !221), !dbg !222
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !74, metadata !221), !dbg !223
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !224
  %2 = load i32* %1, align 4, !dbg !226, !tbaa !227
  %3 = add nsw i32 %2, -1, !dbg !226
  store i32 %3, i32* %1, align 4, !dbg !226, !tbaa !227
  %4 = icmp sgt i32 %2, 0, !dbg !236
  br i1 %4, label %._crit_edge, label %5, !dbg !237

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !238
  br label %10, !dbg !237

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !239
  %7 = load i32* %6, align 4, !dbg !239, !tbaa !240
  %8 = icmp sle i32 %2, %7, !dbg !241
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !242
  %or.cond = or i1 %9, %8, !dbg !243
  br i1 %or.cond, label %15, label %10, !dbg !243

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !238
  %11 = trunc i32 %_c to i8, !dbg !244
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !245
  %13 = load i8** %12, align 8, !dbg !246, !tbaa !247
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !246
  store i8* %14, i8** %12, align 8, !dbg !246, !tbaa !247
  store i8 %11, i8* %13, align 1, !dbg !248, !tbaa !249
  br label %17, !dbg !250

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #9, !dbg !251
  br label %17, !dbg !252

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !253
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !80, metadata !221), !dbg !254
  %1 = icmp sgt i32 %__signo, 32, !dbg !255
  br i1 %1, label %5, label %2, !dbg !256

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !257
  %4 = shl i32 1, %3, !dbg !258
  br label %5, !dbg !256

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !256
  ret i32 %6, !dbg !259
}

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_difftime(%struct.__sFILE* nocapture %out, double %dt) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !86, metadata !221), !dbg !260
  tail call void @llvm.dbg.value(metadata double %dt, i64 0, metadata !87, metadata !221), !dbg !261
  %1 = fdiv double %dt, 8.640000e+04, !dbg !262
  %2 = fptosi double %1 to i32, !dbg !263
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !88, metadata !221), !dbg !264
  %3 = mul nsw i32 %2, 86400, !dbg !265
  %4 = sitofp i32 %3 to double, !dbg !266
  %5 = fsub double %dt, %4, !dbg !267
  tail call void @llvm.dbg.value(metadata double %5, i64 0, metadata !87, metadata !221), !dbg !261
  %6 = fdiv double %5, 3.600000e+03, !dbg !268
  %7 = fptosi double %6 to i32, !dbg !269
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !89, metadata !221), !dbg !270
  %8 = mul nsw i32 %7, 3600, !dbg !271
  %9 = sitofp i32 %8 to double, !dbg !272
  %10 = fsub double %5, %9, !dbg !273
  tail call void @llvm.dbg.value(metadata double %10, i64 0, metadata !87, metadata !221), !dbg !261
  %11 = fdiv double %10, 6.000000e+01, !dbg !274
  %12 = fptosi double %11 to i32, !dbg !275
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !90, metadata !221), !dbg !276
  %13 = mul nsw i32 %12, 60, !dbg !277
  %14 = sitofp i32 %13 to double, !dbg !278
  %15 = fsub double %10, %14, !dbg !279
  tail call void @llvm.dbg.value(metadata double %15, i64 0, metadata !87, metadata !221), !dbg !261
  %16 = fptosi double %15 to i32, !dbg !280
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !91, metadata !221), !dbg !281
  %17 = icmp sgt i32 %2, 0, !dbg !282
  br i1 %17, label %.thread17, label %18, !dbg !283

; <label>:18                                      ; preds = %0
  %19 = icmp sgt i32 %7, 0, !dbg !284
  br i1 %19, label %.thread, label %22, !dbg !285

.thread17:                                        ; preds = %0
  %20 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i32 %2) #9, !dbg !286
  tail call fastcc void @pr_two(%struct.__sFILE* %out, i32 100, i32 %7) #10, !dbg !288
  br label %.thread12, !dbg !292

.thread:                                          ; preds = %18
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i32 %7) #9, !dbg !295
  br label %.thread12, !dbg !292

; <label>:22                                      ; preds = %18
  %23 = icmp sgt i32 %12, 0, !dbg !296
  br i1 %23, label %24, label %26, !dbg !297

; <label>:24                                      ; preds = %22
  br i1 %17, label %.thread12, label %.thread18, !dbg !292

.thread12:                                        ; preds = %.thread17, %.thread, %24
  tail call fastcc void @pr_two(%struct.__sFILE* %out, i32 104, i32 %12) #10, !dbg !298
  br label %27, !dbg !300

.thread18:                                        ; preds = %24
  %25 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i32 %12) #9, !dbg !301
  br label %27, !dbg !300

; <label>:26                                      ; preds = %22
  br i1 %17, label %27, label %28, !dbg !300

; <label>:27                                      ; preds = %.thread18, %.thread12, %26
  tail call fastcc void @pr_two(%struct.__sFILE* %out, i32 58, i32 %16) #10, !dbg !302
  br label %30, !dbg !302

; <label>:28                                      ; preds = %26
  %29 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i32 %16) #9, !dbg !304
  br label %30

; <label>:30                                      ; preds = %28, %27
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %out), !dbg !305
  ret void, !dbg !306
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @pr_two(%struct.__sFILE* nocapture %out, i32 %c, i32 %i) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !150, metadata !221), !dbg !307
  tail call void @llvm.dbg.value(metadata i32 %c, i64 0, metadata !151, metadata !221), !dbg !308
  tail call void @llvm.dbg.value(metadata i32 %i, i64 0, metadata !152, metadata !221), !dbg !309
  %1 = icmp slt i32 %i, 10, !dbg !310
  br i1 %1, label %2, label %4, !dbg !312

; <label>:2                                       ; preds = %0
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([7 x i8]* @.str91, i64 0, i64 0), i32 %c, i32 %i) #9, !dbg !313
  br label %6, !dbg !313

; <label>:4                                       ; preds = %0
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([6 x i8]* @.str92, i64 0, i64 0), i32 %c, i32 %i) #9, !dbg !314
  br label %6

; <label>:6                                       ; preds = %4, %2
  ret void, !dbg !315
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @be_cool() #6 {
  ret i32 0, !dbg !316
}

; Function Attrs: nounwind optsize ssp uwtable
define void @space(%struct.__sFILE* nocapture %out, i32 %n) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !103, metadata !221), !dbg !317
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !104, metadata !221), !dbg !318
  %1 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i32 %n, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0)) #9, !dbg !319
  ret void, !dbg !320
}

; Function Attrs: nounwind optsize ssp uwtable
define void @f(i8* nocapture %a) #4 {
  tail call void @llvm.dbg.value(metadata i8* %a, i64 0, metadata !109, metadata !221), !dbg !321
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !110, metadata !221), !dbg !322
  %1 = tail call i64 @strlen(i8* %a) #9, !dbg !323
  %2 = trunc i64 %1 to i32, !dbg !326
  %3 = icmp sgt i32 %2, 0, !dbg !327
  br i1 %3, label %.lr.ph, label %._crit_edge, !dbg !328

.lr.ph:                                           ; preds = %0, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ]
  %4 = getelementptr inbounds i8* %a, i64 %indvars.iv, !dbg !329
  %5 = load i8* %4, align 1, !dbg !329, !tbaa !249
  %6 = xor i8 %5, -1, !dbg !330
  store i8 %6, i8* %4, align 1, !dbg !331, !tbaa !249
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !328
  %7 = tail call i64 @strlen(i8* %a) #9, !dbg !323
  %sext = shl i64 %7, 32, !dbg !327
  %8 = ashr exact i64 %sext, 32, !dbg !327
  %9 = icmp slt i64 %indvars.iv.next, %8, !dbg !327
  br i1 %9, label %.lr.ph, label %._crit_edge, !dbg !328

._crit_edge:                                      ; preds = %.lr.ph, %0
  ret void, !dbg !332
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #7

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @bromacs() #6 {
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !157, metadata !221), !dbg !333
  ret i8* getelementptr inbounds ([42 x i8]* @.str6, i64 0, i64 0), !dbg !335
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @cool_quote() #4 {
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !157, metadata !221), !dbg !336
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([42 x i8]* @.str8, i64 0, i64 0), i64 0, metadata !116, metadata !221), !dbg !338
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([1024 x i8]* @cool_quote.buf, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str8, i64 0, i64 0), i64 42, i32 1, i1 false), !dbg !339
  ret i8* getelementptr inbounds ([1024 x i8]* @cool_quote.buf, i64 0, i64 0), !dbg !342
}

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @CopyRight(%struct.__sFILE* %out, i8* %szProgram) #4 {
  %buf = alloca [256 x i8], align 16
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !122, metadata !221), !dbg !343
  tail call void @llvm.dbg.value(metadata i8* %szProgram, i64 0, metadata !123, metadata !221), !dbg !344
  %1 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0, !dbg !345
  call void @llvm.lifetime.start(i64 256, i8* %1) #8, !dbg !345
  tail call void @llvm.dbg.declare(metadata [256 x i8]* %buf, metadata !124, metadata !221), !dbg !346
  tail call void @set_program_name(i8* %szProgram) #9, !dbg !347
  %2 = icmp eq %struct.__sFILE* %out, null, !dbg !348
  br i1 %2, label %12, label %3, !dbg !350

; <label>:3                                       ; preds = %0
  tail call fastcc void @ster_print(%struct.__sFILE* %out, i8* getelementptr inbounds ([20 x i8]* @.str10, i64 0, i64 0)) #10, !dbg !351
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %out), !dbg !353
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !157, metadata !221), !dbg !354
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([42 x i8]* @.str6, i64 0, i64 0), i64 0, metadata !128, metadata !221), !dbg !357
  tail call fastcc void @sp_print(%struct.__sFILE* %out, i8* getelementptr inbounds ([42 x i8]* @.str6, i64 0, i64 0)) #10, !dbg !358
  %fputc3 = tail call i32 @fputc(i32 10, %struct.__sFILE* %out), !dbg !359
  %.b.i = load i1* @GromacsVersion.bFirst, align 1, !dbg !360
  br i1 %.b.i, label %.preheader, label %4, !dbg !361

; <label>:4                                       ; preds = %3
  %5 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([100 x i8]* @GromacsVersion.ver_string, i64 0, i64 0), i32 0, i64 100, i8* getelementptr inbounds ([11 x i8]* @.str89, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str90, i64 0, i64 0)) #9, !dbg !363
  store i1 true, i1* @GromacsVersion.bFirst, align 1, !dbg !360
  br label %.preheader, !dbg !366

.preheader:                                       ; preds = %4, %3
  tail call fastcc void @ster_print(%struct.__sFILE* %out, i8* getelementptr inbounds ([100 x i8]* @GromacsVersion.ver_string, i64 0, i64 0)) #10, !dbg !367
  %fputc6 = tail call i32 @fputc(i32 10, %struct.__sFILE* %out), !dbg !368
  %fputc9 = tail call i32 @fputc(i32 10, %struct.__sFILE* %out), !dbg !369
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !129, metadata !221), !dbg !370
  tail call fastcc void @sp_print(%struct.__sFILE* %out, i8* getelementptr inbounds ([66 x i8]* @.str97, i64 0, i64 0)) #10, !dbg !371
  br label %6, !dbg !374

; <label>:6                                       ; preds = %6, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %6 ]
  %7 = getelementptr inbounds [4 x i8*]* @GPLText, i64 0, i64 %indvars.iv, !dbg !376
  %8 = load i8** %7, align 8, !dbg !376, !tbaa !378
  tail call fastcc void @sp_print(%struct.__sFILE* %out, i8* %8) #10, !dbg !379
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !374
  %exitcond = icmp eq i64 %indvars.iv.next, 4, !dbg !374
  br i1 %exitcond, label %9, label %6, !dbg !374

; <label>:9                                       ; preds = %6
  %fputc12 = tail call i32 @fputc(i32 10, %struct.__sFILE* %out), !dbg !380
  %10 = tail call i8* @Program() #9, !dbg !381
  %11 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 256, i8* getelementptr inbounds ([3 x i8]* @.str11, i64 0, i64 0), i8* %10) #9, !dbg !381
  call fastcc void @ster_print(%struct.__sFILE* %out, i8* %1) #10, !dbg !382
  %fputc15 = call i32 @fputc(i32 10, %struct.__sFILE* %out), !dbg !383
  br label %12, !dbg !384

; <label>:12                                      ; preds = %0, %9
  call void @llvm.lifetime.end(i64 256, i8* %1) #8, !dbg !385
  ret void, !dbg !385
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #8

; Function Attrs: optsize
declare void @set_program_name(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @ster_print(%struct.__sFILE* nocapture %out, i8* %s) #4 {
  %buf = alloca [128 x i8], align 16
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !167, metadata !221), !dbg !386
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !168, metadata !221), !dbg !387
  %1 = getelementptr inbounds [128 x i8]* %buf, i64 0, i64 0, !dbg !388
  call void @llvm.lifetime.start(i64 128, i8* %1) #8, !dbg !388
  tail call void @llvm.dbg.declare(metadata [128 x i8]* %buf, metadata !170, metadata !221), !dbg !389
  %2 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 128, i8* getelementptr inbounds ([13 x i8]* @.str95, i64 0, i64 0), i8* %s) #9, !dbg !390
  %3 = call i64 @strlen(i8* %1) #9, !dbg !391
  %4 = trunc i64 %3 to i32, !dbg !391
  call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !169, metadata !221), !dbg !392
  %5 = sub nsw i32 80, %4, !dbg !393
  %6 = sdiv i32 %5, 2, !dbg !394
  call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !103, metadata !221) #8, !dbg !395
  call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !104, metadata !221) #8, !dbg !397
  %7 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i32 %6, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0)) #9, !dbg !398
  %8 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str96, i64 0, i64 0), i8* %1) #9, !dbg !399
  call void @llvm.lifetime.end(i64 128, i8* %1) #8, !dbg !400
  ret void, !dbg !400
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @sp_print(%struct.__sFILE* nocapture %out, i8* %s) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !176, metadata !221), !dbg !401
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !177, metadata !221), !dbg !402
  %1 = tail call i64 @strlen(i8* %s) #9, !dbg !403
  %2 = trunc i64 %1 to i32, !dbg !403
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !178, metadata !221), !dbg !404
  %3 = sub nsw i32 80, %2, !dbg !405
  %4 = sdiv i32 %3, 2, !dbg !406
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !103, metadata !221) #8, !dbg !407
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !104, metadata !221) #8, !dbg !409
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i32 %4, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0)) #9, !dbg !410
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str96, i64 0, i64 0), i8* %s) #9, !dbg !411
  ret void, !dbg !412
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @GromacsVersion() #4 {
  %.b = load i1* @GromacsVersion.bFirst, align 1
  br i1 %.b, label %3, label %1, !dbg !413

; <label>:1                                       ; preds = %0
  %2 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([100 x i8]* @GromacsVersion.ver_string, i64 0, i64 0), i32 0, i64 100, i8* getelementptr inbounds ([11 x i8]* @.str89, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str90, i64 0, i64 0)) #9, !dbg !414
  store i1 true, i1* @GromacsVersion.bFirst, align 1
  br label %3, !dbg !415

; <label>:3                                       ; preds = %0, %1
  ret i8* getelementptr inbounds ([100 x i8]* @GromacsVersion.ver_string, i64 0, i64 0), !dbg !416
}

; Function Attrs: optsize
declare i8* @Program() #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #8

; Function Attrs: nounwind optsize ssp uwtable
define void @thanx(%struct.__sFILE* nocapture %fp) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !134, metadata !221), !dbg !417
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !157, metadata !221) #8, !dbg !418
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([42 x i8]* @.str8, i64 0, i64 0), i64 0, metadata !116, metadata !221) #8, !dbg !421
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([1024 x i8]* @cool_quote.buf, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str8, i64 0, i64 0), i64 42, i32 1, i1 false) #8, !dbg !422
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !135, metadata !221), !dbg !423
  %1 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([1024 x i8]* @cool_quote.buf, i64 0, i64 0)) #9, !dbg !424
  ret void, !dbg !426
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @please_cite(%struct.__sFILE* %fp, i8* %key) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !139, metadata !221), !dbg !427
  tail call void @llvm.dbg.value(metadata i8* %key, i64 0, metadata !140, metadata !221), !dbg !428
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !142, metadata !221), !dbg !429
  br label %1, !dbg !430

; <label>:1                                       ; preds = %0, %7
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %7 ]
  %index.01 = phi i32 [ 0, %0 ], [ %8, %7 ]
  %2 = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %indvars.iv, i32 0, !dbg !433
  %3 = load i8** %2, align 16, !dbg !433, !tbaa !434
  %4 = tail call i32 @strcmp(i8* %3, i8* %key) #9, !dbg !436
  %5 = icmp eq i32 %4, 0, !dbg !437
  %6 = trunc i64 %indvars.iv to i32, !dbg !438
  br i1 %5, label %.critedge, label %7, !dbg !438

; <label>:7                                       ; preds = %1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !430
  %8 = add nuw nsw i32 %index.01, 1, !dbg !439
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !142, metadata !221), !dbg !429
  %9 = icmp slt i64 %indvars.iv.next, 18, !dbg !440
  br i1 %9, label %1, label %.critedge, !dbg !430

.critedge:                                        ; preds = %1, %7
  %.lcssa = phi i1 [ true, %1 ], [ false, %7 ]
  %index.0.lcssa = phi i32 [ %6, %1 ], [ %8, %7 ]
  %10 = icmp eq %struct.__sFILE* %fp, null, !dbg !441
  br i1 %10, label %37, label %11, !dbg !443

; <label>:11                                      ; preds = %.critedge
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str83, i64 0, i64 0), i64 55, i64 1, %struct.__sFILE* %fp), !dbg !444
  br i1 %.lcssa, label %13, label %32, !dbg !446

; <label>:13                                      ; preds = %11
  %14 = sext i32 %index.0.lcssa to i64, !dbg !447
  %15 = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %14, i32 1, !dbg !450
  %16 = load i8** %15, align 8, !dbg !450, !tbaa !451
  %17 = tail call i8* @wrap_lines(i8* %16, i32 79, i32 0) #9, !dbg !452
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !143, metadata !221), !dbg !453
  %18 = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %14, i32 2, !dbg !454
  %19 = load i8** %18, align 16, !dbg !454, !tbaa !455
  %20 = tail call i8* @wrap_lines(i8* %19, i32 79, i32 0) #9, !dbg !456
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !144, metadata !221), !dbg !457
  %21 = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %14, i32 3, !dbg !458
  %22 = load i8** %21, align 8, !dbg !458, !tbaa !459
  %23 = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %14, i32 4, !dbg !460
  %24 = load i32* %23, align 16, !dbg !460, !tbaa !461
  %25 = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %14, i32 5, !dbg !462
  %26 = load i32* %25, align 4, !dbg !462, !tbaa !463
  %27 = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %14, i32 6, !dbg !464
  %28 = load i32* %27, align 8, !dbg !464, !tbaa !465
  %29 = getelementptr inbounds [18 x %struct.t_citerec]* @please_cite.citedb, i64 0, i64 %14, i32 7, !dbg !466
  %30 = load i32* %29, align 4, !dbg !466, !tbaa !467
  %31 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([28 x i8]* @.str84, i64 0, i64 0), i8* %17, i8* %20, i8* %22, i32 %24, i32 %26, i32 %28, i32 %30) #9, !dbg !468
  tail call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str85, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str13, i64 0, i64 0), i32 385, i8* %17) #9, !dbg !469
  tail call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str86, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str13, i64 0, i64 0), i32 386, i8* %20) #9, !dbg !470
  br label %34, !dbg !471

; <label>:32                                      ; preds = %11
  %33 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([41 x i8]* @.str87, i64 0, i64 0), i8* %key) #9, !dbg !472
  br label %34

; <label>:34                                      ; preds = %32, %13
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str88, i64 0, i64 0), i64 55, i64 1, %struct.__sFILE* %fp), !dbg !474
  %36 = tail call i32 @fflush(%struct.__sFILE* %fp) #9, !dbg !475
  br label %37, !dbg !476

; <label>:37                                      ; preds = %.critedge, %34
  ret void, !dbg !477
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #7

; Function Attrs: optsize
declare i8* @wrap_lines(i8*, i32, i32) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #8

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #8

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #8

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!217, !218, !219}
!llvm.ident = !{!220}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !7, globals: !179, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/copyrite.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!7 = !{!8, !75, !81, !94, !99, !105, !111, !114, !118, !130, !137, !145, !146, !153, !165, !174}
!8 = !DISubprogram(name: "__sputc", scope: !9, file: !9, line: 348, type: !10, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !72)
!9 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!10 = !DISubroutineType(types: !11)
!11 = !{!5, !5, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !9, line: 153, baseType: !14)
!14 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !9, line: 122, size: 1216, align: 64, elements: !15)
!15 = !{!16, !19, !20, !21, !23, !24, !29, !30, !31, !35, !40, !50, !56, !57, !60, !61, !65, !69, !70, !71}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !14, file: !9, line: 123, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !14, file: !9, line: 124, baseType: !5, size: 32, align: 32, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !14, file: !9, line: 125, baseType: !5, size: 32, align: 32, offset: 96)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !14, file: !9, line: 126, baseType: !22, size: 16, align: 16, offset: 128)
!22 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !14, file: !9, line: 127, baseType: !22, size: 16, align: 16, offset: 144)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !14, file: !9, line: 128, baseType: !25, size: 128, align: 64, offset: 192)
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !9, line: 88, size: 128, align: 64, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !25, file: !9, line: 89, baseType: !17, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !25, file: !9, line: 90, baseType: !5, size: 32, align: 32, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !14, file: !9, line: 129, baseType: !5, size: 32, align: 32, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !14, file: !9, line: 132, baseType: !6, size: 64, align: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !14, file: !9, line: 133, baseType: !32, size: 64, align: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{!5, !6}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !14, file: !9, line: 134, baseType: !36, size: 64, align: 64, offset: 512)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!5, !6, !39, !5}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !14, file: !9, line: 135, baseType: !41, size: 64, align: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !6, !44, !5}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !9, line: 77, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !46, line: 71, baseType: !47)
!46 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!49 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !14, file: !9, line: 136, baseType: !51, size: 64, align: 64, offset: 640)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!5, !6, !54, !5}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !14, file: !9, line: 139, baseType: !25, size: 128, align: 64, offset: 704)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !14, file: !9, line: 140, baseType: !58, size: 64, align: 64, offset: 832)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !9, line: 94, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !14, file: !9, line: 141, baseType: !5, size: 32, align: 32, offset: 896)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !14, file: !9, line: 144, baseType: !62, size: 24, align: 8, offset: 928)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 24, align: 8, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 3)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !14, file: !9, line: 145, baseType: !66, size: 8, align: 8, offset: 952)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, align: 8, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !14, file: !9, line: 148, baseType: !25, size: 128, align: 64, offset: 960)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !14, file: !9, line: 151, baseType: !5, size: 32, align: 32, offset: 1088)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !14, file: !9, line: 152, baseType: !44, size: 64, align: 64, offset: 1152)
!72 = !{!73, !74}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !8, file: !9, line: 348, type: !5)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !8, file: !9, line: 348, type: !12)
!75 = !DISubprogram(name: "__sigbits", scope: !76, file: !76, line: 114, type: !77, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !79)
!76 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!77 = !DISubroutineType(types: !78)
!78 = !{!5, !5}
!79 = !{!80}
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !75, file: !76, line: 114, type: !5)
!81 = !DISubprogram(name: "pr_difftime", scope: !1, file: !1, line: 57, type: !82, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, double)* @pr_difftime, variables: !85)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !12, !84}
!84 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93}
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !81, file: !1, line: 57, type: !12)
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dt", arg: 2, scope: !81, file: !1, line: 57, type: !84)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ndays", scope: !81, file: !1, line: 59, type: !5)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nhours", scope: !81, file: !1, line: 59, type: !5)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nmins", scope: !81, file: !1, line: 59, type: !5)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nsecs", scope: !81, file: !1, line: 59, type: !5)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bPrint", scope: !81, file: !1, line: 60, type: !5)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bPrinted", scope: !81, file: !1, line: 60, type: !5)
!94 = !DISubprogram(name: "be_cool", scope: !1, file: !1, line: 96, type: !95, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @be_cool, variables: !97)
!95 = !DISubroutineType(types: !96)
!96 = !{!5}
!97 = !{!98}
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "envptr", scope: !94, file: !1, line: 99, type: !39)
!99 = !DISubprogram(name: "space", scope: !1, file: !1, line: 115, type: !100, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i32)* @space, variables: !102)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !12, !5}
!102 = !{!103, !104}
!103 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !99, file: !1, line: 115, type: !12)
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !99, file: !1, line: 115, type: !5)
!105 = !DISubprogram(name: "f", scope: !1, file: !1, line: 120, type: !106, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @f, variables: !108)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !39}
!108 = !{!109, !110}
!109 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !105, file: !1, line: 120, type: !39)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !105, file: !1, line: 120, type: !5)
!111 = !DISubprogram(name: "bromacs", scope: !1, file: !1, line: 173, type: !112, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @bromacs, variables: !2)
!112 = !DISubroutineType(types: !113)
!113 = !{!39}
!114 = !DISubprogram(name: "cool_quote", scope: !1, file: !1, line: 179, type: !112, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @cool_quote, variables: !115)
!115 = !{!116, !117}
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !114, file: !1, line: 182, type: !39)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !114, file: !1, line: 182, type: !39)
!118 = !DISubprogram(name: "CopyRight", scope: !1, file: !1, line: 199, type: !119, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i8*)* @CopyRight, variables: !121)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !12, !39}
!121 = !{!122, !123, !124, !128, !129}
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !118, file: !1, line: 199, type: !12)
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "szProgram", arg: 2, scope: !118, file: !1, line: 199, type: !39)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !118, file: !1, line: 207, type: !125)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, align: 8, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 256)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !118, file: !1, line: 208, type: !39)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !118, file: !1, line: 210, type: !5)
!130 = !DISubprogram(name: "thanx", scope: !1, file: !1, line: 245, type: !131, isLocal: false, isDefinition: true, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*)* @thanx, variables: !133)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !12}
!133 = !{!134, !135, !136}
!134 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !130, file: !1, line: 245, type: !12)
!135 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cq", scope: !130, file: !1, line: 247, type: !39)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !130, file: !1, line: 247, type: !39)
!137 = !DISubprogram(name: "please_cite", scope: !1, file: !1, line: 270, type: !119, isLocal: false, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i8*)* @please_cite, variables: !138)
!138 = !{!139, !140, !141, !142, !143, !144}
!139 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !137, file: !1, line: 270, type: !12)
!140 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !137, file: !1, line: 270, type: !39)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !137, file: !1, line: 366, type: !5)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !137, file: !1, line: 366, type: !5)
!143 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "author", scope: !137, file: !1, line: 367, type: !39)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "title", scope: !137, file: !1, line: 368, type: !39)
!145 = !DISubprogram(name: "GromacsVersion", scope: !1, file: !1, line: 396, type: !112, isLocal: false, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @GromacsVersion, variables: !2)
!146 = !DISubprogram(name: "pr_two", scope: !1, file: !1, line: 49, type: !147, isLocal: true, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i32, i32)* @pr_two, variables: !149)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !12, !5, !5}
!149 = !{!150, !151, !152}
!150 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !146, file: !1, line: 49, type: !12)
!151 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !146, file: !1, line: 49, type: !5)
!152 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 3, scope: !146, file: !1, line: 49, type: !5)
!153 = !DISubprogram(name: "pukeit", scope: !1, file: !1, line: 144, type: !154, isLocal: true, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, variables: !156)
!154 = !DISubroutineType(types: !155)
!155 = !{!39, !39, !39}
!156 = !{!157, !158, !159, !160, !162, !163, !164}
!157 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "db", arg: 1, scope: !153, file: !1, line: 144, type: !39)
!158 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "defstring", arg: 2, scope: !153, file: !1, line: 144, type: !39)
!159 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !153, file: !1, line: 147, type: !12)
!160 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "help", scope: !153, file: !1, line: 148, type: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!162 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !153, file: !1, line: 149, type: !5)
!163 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nhlp", scope: !153, file: !1, line: 149, type: !5)
!164 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seed", scope: !153, file: !1, line: 150, type: !5)
!165 = !DISubprogram(name: "ster_print", scope: !1, file: !1, line: 131, type: !119, isLocal: true, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i8*)* @ster_print, variables: !166)
!166 = !{!167, !168, !169, !170}
!167 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !165, file: !1, line: 131, type: !12)
!168 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 2, scope: !165, file: !1, line: 131, type: !39)
!169 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slen", scope: !165, file: !1, line: 133, type: !5)
!170 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !165, file: !1, line: 134, type: !171)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, align: 8, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 128)
!174 = !DISubprogram(name: "sp_print", scope: !1, file: !1, line: 122, type: !119, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i8*)* @sp_print, variables: !175)
!175 = !{!176, !177, !178}
!176 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !174, file: !1, line: 122, type: !12)
!177 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 2, scope: !174, file: !1, line: 122, type: !39)
!178 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slen", scope: !174, file: !1, line: 124, type: !5)
!179 = !{!180, !181, !185, !200, !201, !205, !209, !212, !216}
!180 = !DIGlobalVariable(name: "cool", scope: !94, file: !1, line: 98, type: !5, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariable(name: "buf", scope: !114, file: !1, line: 181, type: !182, isLocal: true, isDefinition: true, variable: [1024 x i8]* @cool_quote.buf)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, align: 8, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 1024)
!185 = !DIGlobalVariable(name: "citedb", scope: !137, file: !1, line: 272, type: !186, isLocal: true, isDefinition: true, variable: [18 x %struct.t_citerec]* @please_cite.citedb)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 6912, align: 64, elements: !198)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_citerec", file: !1, line: 268, baseType: !188)
!188 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 262, size: 384, align: 64, elements: !189)
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !188, file: !1, line: 263, baseType: !39, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "author", scope: !188, file: !1, line: 264, baseType: !39, size: 64, align: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "title", scope: !188, file: !1, line: 265, baseType: !39, size: 64, align: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "journal", scope: !188, file: !1, line: 266, baseType: !39, size: 64, align: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "volume", scope: !188, file: !1, line: 267, baseType: !5, size: 32, align: 32, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "year", scope: !188, file: !1, line: 267, baseType: !5, size: 32, align: 32, offset: 288)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "p0", scope: !188, file: !1, line: 267, baseType: !5, size: 32, align: 32, offset: 320)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "p1", scope: !188, file: !1, line: 267, baseType: !5, size: 32, align: 32, offset: 352)
!198 = !{!199}
!199 = !DISubrange(count: 18)
!200 = !DIGlobalVariable(name: "bFirst", scope: !145, file: !1, line: 398, type: !5, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariable(name: "ver_string", scope: !145, file: !1, line: 399, type: !202, isLocal: true, isDefinition: true, variable: [100 x i8]* @GromacsVersion.ver_string)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 800, align: 8, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 100)
!205 = !DIGlobalVariable(name: "hulp", scope: !153, file: !1, line: 146, type: !206, isLocal: true, isDefinition: true)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, align: 8, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 4096)
!209 = !DIGlobalVariable(name: "CopyrightText", scope: !0, file: !210, line: 52, type: !211, isLocal: true, isDefinition: true)
!210 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/copyrite.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, align: 64, elements: !67)
!212 = !DIGlobalVariable(name: "GPLText", scope: !0, file: !210, line: 56, type: !213, isLocal: true, isDefinition: true, variable: [4 x i8*]* @GPLText)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, align: 64, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 4)
!216 = !DIGlobalVariable(name: "nran", scope: !0, file: !1, line: 142, type: !5, isLocal: true, isDefinition: true)
!217 = !{i32 2, !"Dwarf Version", i32 2}
!218 = !{i32 2, !"Debug Info Version", i32 700000003}
!219 = !{i32 1, !"PIC Level", i32 2}
!220 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!221 = !DIExpression()
!222 = !DILocation(line: 348, column: 40, scope: !8)
!223 = !DILocation(line: 348, column: 50, scope: !8)
!224 = !DILocation(line: 349, column: 12, scope: !225)
!225 = distinct !DILexicalBlock(scope: !8, file: !9, line: 349, column: 6)
!226 = !DILocation(line: 349, column: 6, scope: !225)
!227 = !{!228, !232, i64 12}
!228 = !{!"__sFILE", !229, i64 0, !232, i64 8, !232, i64 12, !233, i64 16, !233, i64 18, !234, i64 24, !232, i64 40, !229, i64 48, !229, i64 56, !229, i64 64, !229, i64 72, !229, i64 80, !234, i64 88, !229, i64 104, !232, i64 112, !230, i64 116, !230, i64 119, !234, i64 120, !232, i64 136, !235, i64 144}
!229 = !{!"any pointer", !230, i64 0}
!230 = !{!"omnipotent char", !231, i64 0}
!231 = !{!"Simple C/C++ TBAA"}
!232 = !{!"int", !230, i64 0}
!233 = !{!"short", !230, i64 0}
!234 = !{!"__sbuf", !229, i64 0, !232, i64 8}
!235 = !{!"long long", !230, i64 0}
!236 = !DILocation(line: 349, column: 15, scope: !225)
!237 = !DILocation(line: 349, column: 20, scope: !225)
!238 = !DILocation(line: 350, column: 10, scope: !225)
!239 = !DILocation(line: 349, column: 38, scope: !225)
!240 = !{!228, !232, i64 40}
!241 = !DILocation(line: 349, column: 31, scope: !225)
!242 = !DILocation(line: 349, column: 59, scope: !225)
!243 = !DILocation(line: 349, column: 47, scope: !225)
!244 = !DILocation(line: 350, column: 23, scope: !225)
!245 = !DILocation(line: 350, column: 16, scope: !225)
!246 = !DILocation(line: 350, column: 18, scope: !225)
!247 = !{!228, !229, i64 0}
!248 = !DILocation(line: 350, column: 21, scope: !225)
!249 = !{!230, !230, i64 0}
!250 = !DILocation(line: 350, column: 3, scope: !225)
!251 = !DILocation(line: 352, column: 11, scope: !225)
!252 = !DILocation(line: 352, column: 3, scope: !225)
!253 = !DILocation(line: 353, column: 1, scope: !8)
!254 = !DILocation(line: 114, column: 15, scope: !75)
!255 = !DILocation(line: 116, column: 20, scope: !75)
!256 = !DILocation(line: 116, column: 12, scope: !75)
!257 = !DILocation(line: 116, column: 57, scope: !75)
!258 = !DILocation(line: 116, column: 45, scope: !75)
!259 = !DILocation(line: 116, column: 5, scope: !75)
!260 = !DILocation(line: 57, column: 24, scope: !81)
!261 = !DILocation(line: 57, column: 35, scope: !81)
!262 = !DILocation(line: 62, column: 13, scope: !81)
!263 = !DILocation(line: 62, column: 11, scope: !81)
!264 = !DILocation(line: 59, column: 10, scope: !81)
!265 = !DILocation(line: 63, column: 21, scope: !81)
!266 = !DILocation(line: 63, column: 14, scope: !81)
!267 = !DILocation(line: 63, column: 13, scope: !81)
!268 = !DILocation(line: 64, column: 13, scope: !81)
!269 = !DILocation(line: 64, column: 11, scope: !81)
!270 = !DILocation(line: 59, column: 16, scope: !81)
!271 = !DILocation(line: 65, column: 18, scope: !81)
!272 = !DILocation(line: 65, column: 14, scope: !81)
!273 = !DILocation(line: 65, column: 13, scope: !81)
!274 = !DILocation(line: 66, column: 13, scope: !81)
!275 = !DILocation(line: 66, column: 11, scope: !81)
!276 = !DILocation(line: 59, column: 23, scope: !81)
!277 = !DILocation(line: 67, column: 19, scope: !81)
!278 = !DILocation(line: 67, column: 14, scope: !81)
!279 = !DILocation(line: 67, column: 13, scope: !81)
!280 = !DILocation(line: 68, column: 11, scope: !81)
!281 = !DILocation(line: 59, column: 29, scope: !81)
!282 = !DILocation(line: 69, column: 18, scope: !81)
!283 = !DILocation(line: 71, column: 7, scope: !81)
!284 = !DILocation(line: 73, column: 28, scope: !81)
!285 = !DILocation(line: 74, column: 7, scope: !81)
!286 = !DILocation(line: 72, column: 5, scope: !287)
!287 = distinct !DILexicalBlock(scope: !81, file: !1, line: 71, column: 7)
!288 = !DILocation(line: 76, column: 7, scope: !289)
!289 = distinct !DILexicalBlock(scope: !290, file: !1, line: 75, column: 9)
!290 = distinct !DILexicalBlock(scope: !291, file: !1, line: 74, column: 15)
!291 = distinct !DILexicalBlock(scope: !81, file: !1, line: 74, column: 7)
!292 = !DILocation(line: 83, column: 9, scope: !293)
!293 = distinct !DILexicalBlock(scope: !294, file: !1, line: 82, column: 15)
!294 = distinct !DILexicalBlock(scope: !81, file: !1, line: 82, column: 7)
!295 = !DILocation(line: 78, column: 7, scope: !289)
!296 = !DILocation(line: 81, column: 27, scope: !81)
!297 = !DILocation(line: 82, column: 7, scope: !81)
!298 = !DILocation(line: 84, column: 7, scope: !299)
!299 = distinct !DILexicalBlock(scope: !293, file: !1, line: 83, column: 9)
!300 = !DILocation(line: 89, column: 7, scope: !81)
!301 = !DILocation(line: 86, column: 7, scope: !299)
!302 = !DILocation(line: 90, column: 5, scope: !303)
!303 = distinct !DILexicalBlock(scope: !81, file: !1, line: 89, column: 7)
!304 = !DILocation(line: 92, column: 5, scope: !303)
!305 = !DILocation(line: 93, column: 3, scope: !81)
!306 = !DILocation(line: 94, column: 1, scope: !81)
!307 = !DILocation(line: 49, column: 26, scope: !146)
!308 = !DILocation(line: 49, column: 34, scope: !146)
!309 = !DILocation(line: 49, column: 40, scope: !146)
!310 = !DILocation(line: 51, column: 9, scope: !311)
!311 = distinct !DILexicalBlock(scope: !146, file: !1, line: 51, column: 7)
!312 = !DILocation(line: 51, column: 7, scope: !146)
!313 = !DILocation(line: 52, column: 5, scope: !311)
!314 = !DILocation(line: 54, column: 5, scope: !311)
!315 = !DILocation(line: 55, column: 1, scope: !146)
!316 = !DILocation(line: 101, column: 3, scope: !94)
!317 = !DILocation(line: 115, column: 18, scope: !99)
!318 = !DILocation(line: 115, column: 27, scope: !99)
!319 = !DILocation(line: 117, column: 3, scope: !99)
!320 = !DILocation(line: 118, column: 1, scope: !99)
!321 = !DILocation(line: 120, column: 14, scope: !105)
!322 = !DILocation(line: 120, column: 21, scope: !105)
!323 = !DILocation(line: 120, column: 38, scope: !324)
!324 = distinct !DILexicalBlock(scope: !325, file: !1, line: 120, column: 23)
!325 = distinct !DILexicalBlock(scope: !105, file: !1, line: 120, column: 23)
!326 = !DILocation(line: 120, column: 33, scope: !324)
!327 = !DILocation(line: 120, column: 32, scope: !324)
!328 = !DILocation(line: 120, column: 23, scope: !325)
!329 = !DILocation(line: 120, column: 58, scope: !324)
!330 = !DILocation(line: 120, column: 57, scope: !324)
!331 = !DILocation(line: 120, column: 56, scope: !324)
!332 = !DILocation(line: 120, column: 64, scope: !105)
!333 = !DILocation(line: 144, column: 27, scope: !153, inlinedAt: !334)
!334 = distinct !DILocation(line: 175, column: 10, scope: !111)
!335 = !DILocation(line: 175, column: 3, scope: !111)
!336 = !DILocation(line: 144, column: 27, scope: !153, inlinedAt: !337)
!337 = distinct !DILocation(line: 185, column: 7, scope: !114)
!338 = !DILocation(line: 182, column: 9, scope: !114)
!339 = !DILocation(line: 193, column: 5, scope: !340)
!340 = distinct !DILexicalBlock(scope: !341, file: !1, line: 192, column: 8)
!341 = distinct !DILexicalBlock(scope: !114, file: !1, line: 187, column: 7)
!342 = !DILocation(line: 196, column: 3, scope: !114)
!343 = !DILocation(line: 199, column: 22, scope: !118)
!344 = !DILocation(line: 199, column: 32, scope: !118)
!345 = !DILocation(line: 207, column: 3, scope: !118)
!346 = !DILocation(line: 207, column: 8, scope: !118)
!347 = !DILocation(line: 212, column: 3, scope: !118)
!348 = !DILocation(line: 214, column: 6, scope: !349)
!349 = distinct !DILexicalBlock(scope: !118, file: !1, line: 214, column: 6)
!350 = !DILocation(line: 214, column: 6, scope: !118)
!351 = !DILocation(line: 216, column: 7, scope: !352)
!352 = distinct !DILexicalBlock(scope: !349, file: !1, line: 215, column: 3)
!353 = !DILocation(line: 217, column: 7, scope: !352)
!354 = !DILocation(line: 144, column: 27, scope: !153, inlinedAt: !355)
!355 = distinct !DILocation(line: 175, column: 10, scope: !111, inlinedAt: !356)
!356 = distinct !DILocation(line: 219, column: 11, scope: !352)
!357 = !DILocation(line: 208, column: 9, scope: !118)
!358 = !DILocation(line: 220, column: 7, scope: !352)
!359 = !DILocation(line: 221, column: 7, scope: !352)
!360 = !DILocation(line: 223, column: 22, scope: !352)
!361 = !DILocation(line: 402, column: 6, scope: !145, inlinedAt: !362)
!362 = distinct !DILocation(line: 223, column: 22, scope: !352)
!363 = !DILocation(line: 403, column: 5, scope: !364, inlinedAt: !362)
!364 = distinct !DILexicalBlock(scope: !365, file: !1, line: 402, column: 14)
!365 = distinct !DILexicalBlock(scope: !145, file: !1, line: 402, column: 6)
!366 = !DILocation(line: 405, column: 3, scope: !364, inlinedAt: !362)
!367 = !DILocation(line: 223, column: 7, scope: !352)
!368 = !DILocation(line: 224, column: 7, scope: !352)
!369 = !DILocation(line: 226, column: 7, scope: !352)
!370 = !DILocation(line: 210, column: 7, scope: !118)
!371 = !DILocation(line: 229, column: 11, scope: !372)
!372 = distinct !DILexicalBlock(scope: !373, file: !1, line: 228, column: 7)
!373 = distinct !DILexicalBlock(scope: !352, file: !1, line: 228, column: 7)
!374 = !DILocation(line: 230, column: 7, scope: !375)
!375 = distinct !DILexicalBlock(scope: !352, file: !1, line: 230, column: 7)
!376 = !DILocation(line: 231, column: 24, scope: !377)
!377 = distinct !DILexicalBlock(scope: !375, file: !1, line: 230, column: 7)
!378 = !{!229, !229, i64 0}
!379 = !DILocation(line: 231, column: 11, scope: !377)
!380 = !DILocation(line: 233, column: 7, scope: !352)
!381 = !DILocation(line: 235, column: 7, scope: !352)
!382 = !DILocation(line: 239, column: 7, scope: !352)
!383 = !DILocation(line: 240, column: 7, scope: !352)
!384 = !DILocation(line: 241, column: 3, scope: !352)
!385 = !DILocation(line: 242, column: 1, scope: !118)
!386 = !DILocation(line: 131, column: 30, scope: !165)
!387 = !DILocation(line: 131, column: 40, scope: !165)
!388 = !DILocation(line: 134, column: 3, scope: !165)
!389 = !DILocation(line: 134, column: 8, scope: !165)
!390 = !DILocation(line: 136, column: 3, scope: !165)
!391 = !DILocation(line: 137, column: 8, scope: !165)
!392 = !DILocation(line: 133, column: 8, scope: !165)
!393 = !DILocation(line: 138, column: 16, scope: !165)
!394 = !DILocation(line: 138, column: 22, scope: !165)
!395 = !DILocation(line: 115, column: 18, scope: !99, inlinedAt: !396)
!396 = distinct !DILocation(line: 138, column: 3, scope: !165)
!397 = !DILocation(line: 115, column: 27, scope: !99, inlinedAt: !396)
!398 = !DILocation(line: 117, column: 3, scope: !99, inlinedAt: !396)
!399 = !DILocation(line: 139, column: 3, scope: !165)
!400 = !DILocation(line: 140, column: 1, scope: !165)
!401 = !DILocation(line: 122, column: 28, scope: !174)
!402 = !DILocation(line: 122, column: 38, scope: !174)
!403 = !DILocation(line: 126, column: 8, scope: !174)
!404 = !DILocation(line: 124, column: 7, scope: !174)
!405 = !DILocation(line: 127, column: 16, scope: !174)
!406 = !DILocation(line: 127, column: 22, scope: !174)
!407 = !DILocation(line: 115, column: 18, scope: !99, inlinedAt: !408)
!408 = distinct !DILocation(line: 127, column: 3, scope: !174)
!409 = !DILocation(line: 115, column: 27, scope: !99, inlinedAt: !408)
!410 = !DILocation(line: 117, column: 3, scope: !99, inlinedAt: !408)
!411 = !DILocation(line: 128, column: 3, scope: !174)
!412 = !DILocation(line: 129, column: 1, scope: !174)
!413 = !DILocation(line: 402, column: 6, scope: !145)
!414 = !DILocation(line: 403, column: 5, scope: !364)
!415 = !DILocation(line: 405, column: 3, scope: !364)
!416 = !DILocation(line: 407, column: 3, scope: !145)
!417 = !DILocation(line: 245, column: 18, scope: !130)
!418 = !DILocation(line: 144, column: 27, scope: !153, inlinedAt: !419)
!419 = distinct !DILocation(line: 185, column: 7, scope: !114, inlinedAt: !420)
!420 = distinct !DILocation(line: 250, column: 6, scope: !130)
!421 = !DILocation(line: 182, column: 9, scope: !114, inlinedAt: !420)
!422 = !DILocation(line: 193, column: 5, scope: !340, inlinedAt: !420)
!423 = !DILocation(line: 247, column: 9, scope: !130)
!424 = !DILocation(line: 259, column: 5, scope: !425)
!425 = distinct !DILexicalBlock(scope: !130, file: !1, line: 252, column: 7)
!426 = !DILocation(line: 260, column: 1, scope: !130)
!427 = !DILocation(line: 270, column: 24, scope: !137)
!428 = !DILocation(line: 270, column: 33, scope: !137)
!429 = !DILocation(line: 366, column: 10, scope: !137)
!430 = !DILocation(line: 371, column: 29, scope: !431)
!431 = distinct !DILexicalBlock(scope: !432, file: !1, line: 371, column: 3)
!432 = distinct !DILexicalBlock(scope: !137, file: !1, line: 371, column: 3)
!433 = !DILocation(line: 371, column: 54, scope: !431)
!434 = !{!435, !229, i64 0}
!435 = !{!"", !229, i64 0, !229, i64 8, !229, i64 16, !229, i64 24, !232, i64 32, !232, i64 36, !232, i64 40, !232, i64 44}
!436 = !DILocation(line: 371, column: 33, scope: !431)
!437 = !DILocation(line: 371, column: 63, scope: !431)
!438 = !DILocation(line: 371, column: 3, scope: !432)
!439 = !DILocation(line: 371, column: 75, scope: !431)
!440 = !DILocation(line: 371, column: 22, scope: !431)
!441 = !DILocation(line: 374, column: 6, scope: !442)
!442 = distinct !DILexicalBlock(scope: !137, file: !1, line: 374, column: 6)
!443 = !DILocation(line: 374, column: 6, scope: !137)
!444 = !DILocation(line: 376, column: 7, scope: !445)
!445 = distinct !DILexicalBlock(scope: !442, file: !1, line: 375, column: 3)
!446 = !DILocation(line: 377, column: 11, scope: !445)
!447 = !DILocation(line: 379, column: 31, scope: !448)
!448 = distinct !DILexicalBlock(scope: !449, file: !1, line: 377, column: 25)
!449 = distinct !DILexicalBlock(scope: !445, file: !1, line: 377, column: 11)
!450 = !DILocation(line: 379, column: 45, scope: !448)
!451 = !{!435, !229, i64 8}
!452 = !DILocation(line: 379, column: 20, scope: !448)
!453 = !DILocation(line: 367, column: 9, scope: !137)
!454 = !DILocation(line: 380, column: 45, scope: !448)
!455 = !{!435, !229, i64 16}
!456 = !DILocation(line: 380, column: 20, scope: !448)
!457 = !DILocation(line: 368, column: 9, scope: !137)
!458 = !DILocation(line: 382, column: 46, scope: !448)
!459 = !{!435, !229, i64 24}
!460 = !DILocation(line: 383, column: 33, scope: !448)
!461 = !{!435, !232, i64 32}
!462 = !DILocation(line: 383, column: 54, scope: !448)
!463 = !{!435, !232, i64 36}
!464 = !DILocation(line: 384, column: 33, scope: !448)
!465 = !{!435, !232, i64 40}
!466 = !DILocation(line: 384, column: 50, scope: !448)
!467 = !{!435, !232, i64 44}
!468 = !DILocation(line: 381, column: 11, scope: !448)
!469 = !DILocation(line: 385, column: 11, scope: !448)
!470 = !DILocation(line: 386, column: 11, scope: !448)
!471 = !DILocation(line: 387, column: 7, scope: !448)
!472 = !DILocation(line: 389, column: 11, scope: !473)
!473 = distinct !DILexicalBlock(scope: !449, file: !1, line: 388, column: 12)
!474 = !DILocation(line: 391, column: 7, scope: !445)
!475 = !DILocation(line: 392, column: 7, scope: !445)
!476 = !DILocation(line: 393, column: 3, scope: !445)
!477 = !DILocation(line: 394, column: 1, scope: !137)

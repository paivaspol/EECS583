; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_nrnb = type { [129 x double] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_nrnb_data = type { i8*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%14s  %10.0f.\0A\00", align 1
@.str1 = private unnamed_addr constant [38 x i8] c"nodetime = 0! Infinite Giga flopses!\0A\00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"(WW)\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"(W)\00", align 1
@.str4 = private unnamed_addr constant [27 x i8] c"No MEGA Flopsen this time\0A\00", align 1
@.str5 = private unnamed_addr constant [46 x i8] c"\0A\09M E G A - F L O P S   A C C O U N T I N G\0A\0A\00", align 1
@.str6 = private unnamed_addr constant [44 x i8] c"\09Based on real time for parallel computer.\0A\00", align 1
@.str7 = private unnamed_addr constant [53 x i8] c"   RF=Reaction-field  Free=Free Energy  SC=Softcore\0A\00", align 1
@.str8 = private unnamed_addr constant [69 x i8] c"   T=Tabulated        S=Solvent         W=Water     WW=Water-Water\0A\0A\00", align 1
@.str9 = private unnamed_addr constant [23 x i8] c"%21s  %12s  %12s  %8s\0A\00", align 1
@.str10 = private unnamed_addr constant [11 x i8] c"Computing:\00", align 1
@.str11 = private unnamed_addr constant [9 x i8] c"M-Number\00", align 1
@.str12 = private unnamed_addr constant [9 x i8] c"M-Flop's\00", align 1
@.str13 = private unnamed_addr constant [9 x i8] c"% Flop's\00", align 1
@.str14 = private unnamed_addr constant [29 x i8] c"%21s  %12.6f  %12.6f  %6.1f\0A\00", align 1
@.str15 = private unnamed_addr constant [28 x i8] c"%15s  %12s  %12.5f  %6.1f\0A\0A\00", align 1
@.str16 = private unnamed_addr constant [6 x i8] c"Total\00", align 1
@.str17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str18 = private unnamed_addr constant [20 x i8] c"%12s %10s %10s %8s\0A\00", align 1
@.str19 = private unnamed_addr constant [9 x i8] c"NODE (s)\00", align 1
@.str20 = private unnamed_addr constant [9 x i8] c"Real (s)\00", align 1
@.str21 = private unnamed_addr constant [4 x i8] c"(%)\00", align 1
@.str22 = private unnamed_addr constant [26 x i8] c"%12s %10.3f %10.3f %8.1f\0A\00", align 1
@.str23 = private unnamed_addr constant [6 x i8] c"Time:\00", align 1
@.str24 = private unnamed_addr constant [10 x i8] c"%12s %10s\00", align 1
@.str25 = private unnamed_addr constant [26 x i8] c"%12s %10s %10s %10s %10s\0A\00", align 1
@.str26 = private unnamed_addr constant [9 x i8] c"(Mnbf/s)\00", align 1
@.str27 = private unnamed_addr constant [9 x i8] c"(GFlops)\00", align 1
@.str28 = private unnamed_addr constant [9 x i8] c"(MFlops)\00", align 1
@.str29 = private unnamed_addr constant [15 x i8] c"(ps/NODE hour)\00", align 1
@.str30 = private unnamed_addr constant [15 x i8] c"(NODE hour/ns)\00", align 1
@.str31 = private unnamed_addr constant [34 x i8] c"%12s %10.3f %10.3f %10.3f %10.3f\0A\00", align 1
@.str32 = private unnamed_addr constant [13 x i8] c"Performance:\00", align 1
@.str33 = private unnamed_addr constant [3 x i8] c"av\00", align 1
@.str34 = private unnamed_addr constant [52 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c\00", align 1
@.str35 = private unnamed_addr constant [5 x i8] c"ftot\00", align 1
@.str36 = private unnamed_addr constant [5 x i8] c"stot\00", align 1
@force_index = internal unnamed_addr constant [10 x i32] [i32 92, i32 94, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 87, i32 78], align 16
@shake_index = internal unnamed_addr constant [10 x i32] [i32 115, i32 117, i32 119, i32 108, i32 111, i32 118, i32 116, i32 120, i32 121, i32 122], align 16
@.str37 = private unnamed_addr constant [56 x i8] c"\0ADetailed load balancing info in percentage of average\0A\00", align 1
@.str38 = private unnamed_addr constant [18 x i8] c"Type        NODE:\00", align 1
@.str39 = private unnamed_addr constant [5 x i8] c"%3d \00", align 1
@.str40 = private unnamed_addr constant [9 x i8] c"Scaling\0A\00", align 1
@.str41 = private unnamed_addr constant [17 x i8] c"----------------\00", align 1
@.str42 = private unnamed_addr constant [5 x i8] c"----\00", align 1
@.str43 = private unnamed_addr constant [9 x i8] c"-------\0A\00", align 1
@.str44 = private unnamed_addr constant [6 x i8] c"%15s:\00", align 1
@.str45 = private unnamed_addr constant [7 x i8] c"%6d%%\0A\00", align 1
@.str47 = private unnamed_addr constant [12 x i8] c"Total Force\00", align 1
@.str48 = private unnamed_addr constant [12 x i8] c"Total Shake\00", align 1
@.str49 = private unnamed_addr constant [44 x i8] c"\0ATotal Scaling: %.0f%% of max performance\0A\0A\00", align 1
@.str50 = private unnamed_addr constant [7 x i8] c"\0A%15s:\00", align 1
@.str51 = private unnamed_addr constant [8 x i8] c"%6d%%\0A\0A\00", align 1
@.str52 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str53 = private unnamed_addr constant [3 x i8] c"LJ\00", align 1
@.str54 = private unnamed_addr constant [6 x i8] c"LJ(S)\00", align 1
@.str55 = private unnamed_addr constant [11 x i8] c"Buckingham\00", align 1
@.str56 = private unnamed_addr constant [14 x i8] c"Buckingham(S)\00", align 1
@.str57 = private unnamed_addr constant [6 x i8] c"LJ(T)\00", align 1
@.str58 = private unnamed_addr constant [9 x i8] c"LJ(T)(S)\00", align 1
@.str59 = private unnamed_addr constant [15 x i8] c"FreeEner LJ(T)\00", align 1
@.str60 = private unnamed_addr constant [15 x i8] c"Softcore LJ(T)\00", align 1
@.str61 = private unnamed_addr constant [14 x i8] c"Buckingham(T)\00", align 1
@.str62 = private unnamed_addr constant [17 x i8] c"Buckingham(T)(S)\00", align 1
@.str63 = private unnamed_addr constant [17 x i8] c"FreeEner Bham(T)\00", align 1
@.str64 = private unnamed_addr constant [17 x i8] c"Softcore Bham(T)\00", align 1
@.str65 = private unnamed_addr constant [8 x i8] c"Coulomb\00", align 1
@.str66 = private unnamed_addr constant [11 x i8] c"Coulomb(S)\00", align 1
@.str67 = private unnamed_addr constant [11 x i8] c"Coulomb(W)\00", align 1
@.str68 = private unnamed_addr constant [12 x i8] c"Coulomb(WW)\00", align 1
@.str69 = private unnamed_addr constant [13 x i8] c"LJ + Coulomb\00", align 1
@.str70 = private unnamed_addr constant [13 x i8] c"LJ + Coul(S)\00", align 1
@.str71 = private unnamed_addr constant [13 x i8] c"LJ + Coul(W)\00", align 1
@.str72 = private unnamed_addr constant [14 x i8] c"LJ + Coul(WW)\00", align 1
@.str73 = private unnamed_addr constant [18 x i8] c"Buckingham + Coul\00", align 1
@.str74 = private unnamed_addr constant [15 x i8] c"Bham + Coul(S)\00", align 1
@.str75 = private unnamed_addr constant [15 x i8] c"Bham + Coul(W)\00", align 1
@.str76 = private unnamed_addr constant [16 x i8] c"Bham + Coul(WW)\00", align 1
@.str77 = private unnamed_addr constant [14 x i8] c"LJ(T) + Coul \00", align 1
@.str78 = private unnamed_addr constant [16 x i8] c"LJ(T) + Coul(S)\00", align 1
@.str79 = private unnamed_addr constant [16 x i8] c"LJ(T) + Coul(W)\00", align 1
@.str80 = private unnamed_addr constant [17 x i8] c"LJ(T) + Coul(WW)\00", align 1
@.str81 = private unnamed_addr constant [16 x i8] c"Bham(T) + Coul \00", align 1
@.str82 = private unnamed_addr constant [18 x i8] c"Bham(T) + Coul(S)\00", align 1
@.str83 = private unnamed_addr constant [18 x i8] c"Bham(T) + Coul(W)\00", align 1
@.str84 = private unnamed_addr constant [19 x i8] c"Bham(T) + Coul(WW)\00", align 1
@.str85 = private unnamed_addr constant [8 x i8] c"RF Coul\00", align 1
@.str86 = private unnamed_addr constant [11 x i8] c"RF Coul(S)\00", align 1
@.str87 = private unnamed_addr constant [11 x i8] c"RF Coul(W)\00", align 1
@.str88 = private unnamed_addr constant [12 x i8] c"RF Coul(WW)\00", align 1
@.str89 = private unnamed_addr constant [13 x i8] c"LJ + RF Coul\00", align 1
@.str90 = private unnamed_addr constant [16 x i8] c"LJ + RF Coul(S)\00", align 1
@.str91 = private unnamed_addr constant [16 x i8] c"LJ + RF Coul(W)\00", align 1
@.str92 = private unnamed_addr constant [17 x i8] c"LJ + RF Coul(WW)\00", align 1
@.str93 = private unnamed_addr constant [15 x i8] c"Bham + RF Coul\00", align 1
@.str94 = private unnamed_addr constant [18 x i8] c"Bham + RF Coul(S)\00", align 1
@.str95 = private unnamed_addr constant [18 x i8] c"Bham + RF Coul(W)\00", align 1
@.str96 = private unnamed_addr constant [19 x i8] c"Bham + RF Coul(WW)\00", align 1
@.str97 = private unnamed_addr constant [16 x i8] c"LJ(T) + RF Coul\00", align 1
@.str98 = private unnamed_addr constant [19 x i8] c"LJ(T) + RF Coul(S)\00", align 1
@.str99 = private unnamed_addr constant [19 x i8] c"LJ(T) + RF Coul(W)\00", align 1
@.str100 = private unnamed_addr constant [20 x i8] c"LJ(T) + RF Coul(WW)\00", align 1
@.str101 = private unnamed_addr constant [13 x i8] c"Bham(T) + RF\00", align 1
@.str102 = private unnamed_addr constant [16 x i8] c"Bham(T) + RF(S)\00", align 1
@.str103 = private unnamed_addr constant [16 x i8] c"Bham(T) + RF(W)\00", align 1
@.str104 = private unnamed_addr constant [17 x i8] c"Bham(T) + RF(WW)\00", align 1
@.str105 = private unnamed_addr constant [11 x i8] c"Coulomb(T)\00", align 1
@.str106 = private unnamed_addr constant [17 x i8] c"FreeEner Coul(T)\00", align 1
@.str107 = private unnamed_addr constant [17 x i8] c"Softcore Coul(T)\00", align 1
@.str108 = private unnamed_addr constant [14 x i8] c"Coulomb(T)(S)\00", align 1
@.str109 = private unnamed_addr constant [14 x i8] c"Coulomb(T)(W)\00", align 1
@.str110 = private unnamed_addr constant [15 x i8] c"Coulomb(T)(WW)\00", align 1
@.str111 = private unnamed_addr constant [16 x i8] c"LJ + Coulomb(T)\00", align 1
@.str112 = private unnamed_addr constant [19 x i8] c"LJ + Coulomb(T)(S)\00", align 1
@.str113 = private unnamed_addr constant [19 x i8] c"LJ + Coulomb(T)(W)\00", align 1
@.str114 = private unnamed_addr constant [20 x i8] c"LJ + Coulomb(T)(WW)\00", align 1
@.str115 = private unnamed_addr constant [15 x i8] c"Bham + Coul(T)\00", align 1
@.str116 = private unnamed_addr constant [18 x i8] c"Bham + Coul(T)(S)\00", align 1
@.str117 = private unnamed_addr constant [18 x i8] c"Bham + Coul(T)(W)\00", align 1
@.str118 = private unnamed_addr constant [19 x i8] c"Bham + Coul(T)(WW)\00", align 1
@.str119 = private unnamed_addr constant [16 x i8] c"LJ(T) + Coul(T)\00", align 1
@.str120 = private unnamed_addr constant [19 x i8] c"Free LJ(T)+Coul(T)\00", align 1
@.str121 = private unnamed_addr constant [17 x i8] c"SC LJ(T)+Coul(T)\00", align 1
@.str122 = private unnamed_addr constant [19 x i8] c"LJ(T) + Coul(T)(S)\00", align 1
@.str123 = private unnamed_addr constant [19 x i8] c"LJ(T) + Coul(T)(W)\00", align 1
@.str124 = private unnamed_addr constant [20 x i8] c"LJ(T) + Coul(T)(WW)\00", align 1
@.str125 = private unnamed_addr constant [21 x i8] c"Free Bham(T)+Coul(T)\00", align 1
@.str126 = private unnamed_addr constant [19 x i8] c"SC Bham(T)+Coul(T)\00", align 1
@.str127 = private unnamed_addr constant [21 x i8] c"Bham(T) + Coul(T)(S)\00", align 1
@.str128 = private unnamed_addr constant [20 x i8] c"Bham(T) + Coul(T,W)\00", align 1
@.str129 = private unnamed_addr constant [21 x i8] c"Bham(T) + Coul(T,WW)\00", align 1
@.str130 = private unnamed_addr constant [16 x i8] c"Innerloop-Iatom\00", align 1
@.str131 = private unnamed_addr constant [13 x i8] c"Calc Weights\00", align 1
@.str132 = private unnamed_addr constant [9 x i8] c"Spread Q\00", align 1
@.str133 = private unnamed_addr constant [17 x i8] c"Spread Q Bspline\00", align 1
@.str134 = private unnamed_addr constant [9 x i8] c"Gather F\00", align 1
@.str135 = private unnamed_addr constant [17 x i8] c"Gather F Bspline\00", align 1
@.str136 = private unnamed_addr constant [7 x i8] c"3D-FFT\00", align 1
@.str137 = private unnamed_addr constant [12 x i8] c"Convolution\00", align 1
@.str138 = private unnamed_addr constant [10 x i8] c"Solve PME\00", align 1
@.str139 = private unnamed_addr constant [9 x i8] c"NS-Pairs\00", align 1
@.str140 = private unnamed_addr constant [13 x i8] c"Reset In Box\00", align 1
@.str141 = private unnamed_addr constant [8 x i8] c"Shift-X\00", align 1
@.str142 = private unnamed_addr constant [7 x i8] c"CG-CoM\00", align 1
@.str143 = private unnamed_addr constant [11 x i8] c"Sum Forces\00", align 1
@.str144 = private unnamed_addr constant [6 x i8] c"Bonds\00", align 1
@.str145 = private unnamed_addr constant [9 x i8] c"G96Bonds\00", align 1
@.str146 = private unnamed_addr constant [7 x i8] c"Angles\00", align 1
@.str147 = private unnamed_addr constant [10 x i8] c"G96Angles\00", align 1
@.str148 = private unnamed_addr constant [8 x i8] c"Propers\00", align 1
@.str149 = private unnamed_addr constant [10 x i8] c"Impropers\00", align 1
@.str150 = private unnamed_addr constant [13 x i8] c"RB-Dihedrals\00", align 1
@.str151 = private unnamed_addr constant [13 x i8] c"Dist. Restr.\00", align 1
@.str152 = private unnamed_addr constant [15 x i8] c"Orient. Restr.\00", align 1
@.str153 = private unnamed_addr constant [12 x i8] c"Pos. Restr.\00", align 1
@.str154 = private unnamed_addr constant [13 x i8] c"Angle Restr.\00", align 1
@.str155 = private unnamed_addr constant [15 x i8] c"Angle Restr. Z\00", align 1
@.str156 = private unnamed_addr constant [14 x i8] c"Morse Potent.\00", align 1
@.str157 = private unnamed_addr constant [12 x i8] c"Cubic Bonds\00", align 1
@.str158 = private unnamed_addr constant [11 x i8] c"Water Pol.\00", align 1
@.str159 = private unnamed_addr constant [7 x i8] c"Virial\00", align 1
@.str160 = private unnamed_addr constant [7 x i8] c"Update\00", align 1
@.str161 = private unnamed_addr constant [16 x i8] c"Ext.ens. Update\00", align 1
@.str162 = private unnamed_addr constant [8 x i8] c"Stop-CM\00", align 1
@.str163 = private unnamed_addr constant [11 x i8] c"P-Coupling\00", align 1
@.str164 = private unnamed_addr constant [10 x i8] c"Calc-Ekin\00", align 1
@.str165 = private unnamed_addr constant [6 x i8] c"Lincs\00", align 1
@.str166 = private unnamed_addr constant [10 x i8] c"Lincs-Mat\00", align 1
@.str167 = private unnamed_addr constant [6 x i8] c"Shake\00", align 1
@.str168 = private unnamed_addr constant [8 x i8] c"Shake-V\00", align 1
@.str169 = private unnamed_addr constant [11 x i8] c"Shake-Init\00", align 1
@.str170 = private unnamed_addr constant [10 x i8] c"Shake-Vir\00", align 1
@.str171 = private unnamed_addr constant [7 x i8] c"Settle\00", align 1
@.str172 = private unnamed_addr constant [14 x i8] c"PShake-InitLD\00", align 1
@.str173 = private unnamed_addr constant [14 x i8] c"PShake-InitMD\00", align 1
@.str174 = private unnamed_addr constant [7 x i8] c"PShake\00", align 1
@.str175 = private unnamed_addr constant [7 x i8] c"Dummy2\00", align 1
@.str176 = private unnamed_addr constant [7 x i8] c"Dummy3\00", align 1
@.str177 = private unnamed_addr constant [9 x i8] c"Dummy3fd\00", align 1
@.str178 = private unnamed_addr constant [10 x i8] c"Dummy3fad\00", align 1
@.str179 = private unnamed_addr constant [10 x i8] c"Dummy3out\00", align 1
@.str180 = private unnamed_addr constant [9 x i8] c"Dummy4fd\00", align 1
@nbdata = internal unnamed_addr constant <{ { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] } }> <{ { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([3 x i8]* @.str53, i32 0, i32 0), i32 31, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([6 x i8]* @.str54, i32 0, i32 0), i32 31, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([11 x i8]* @.str55, i32 0, i32 0), i32 36, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([14 x i8]* @.str56, i32 0, i32 0), i32 36, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([6 x i8]* @.str57, i32 0, i32 0), i32 52, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([9 x i8]* @.str58, i32 0, i32 0), i32 52, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([15 x i8]* @.str59, i32 0, i32 0), i32 65, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([15 x i8]* @.str60, i32 0, i32 0), i32 118, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([14 x i8]* @.str61, i32 0, i32 0), i32 57, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([17 x i8]* @.str62, i32 0, i32 0), i32 57, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([17 x i8]* @.str63, i32 0, i32 0), i32 89, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([17 x i8]* @.str64, i32 0, i32 0), i32 128, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([8 x i8]* @.str65, i32 0, i32 0), i32 27, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([11 x i8]* @.str66, i32 0, i32 0), i32 27, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([11 x i8]* @.str67, i32 0, i32 0), i32 81, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([12 x i8]* @.str68, i32 0, i32 0), i32 234, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([13 x i8]* @.str69, i32 0, i32 0), i32 38, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([13 x i8]* @.str70, i32 0, i32 0), i32 38, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([13 x i8]* @.str71, i32 0, i32 0), i32 92, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([14 x i8]* @.str72, i32 0, i32 0), i32 245, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([18 x i8]* @.str73, i32 0, i32 0), i32 40, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([15 x i8]* @.str74, i32 0, i32 0), i32 40, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([15 x i8]* @.str75, i32 0, i32 0), i32 94, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([16 x i8]* @.str76, i32 0, i32 0), i32 247, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([14 x i8]* @.str77, i32 0, i32 0), i32 58, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([16 x i8]* @.str78, i32 0, i32 0), i32 58, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([16 x i8]* @.str79, i32 0, i32 0), i32 112, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([17 x i8]* @.str80, i32 0, i32 0), i32 265, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([16 x i8]* @.str81, i32 0, i32 0), i32 63, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([18 x i8]* @.str82, i32 0, i32 0), i32 63, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([18 x i8]* @.str83, i32 0, i32 0), i32 117, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([19 x i8]* @.str84, i32 0, i32 0), i32 270, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([8 x i8]* @.str85, i32 0, i32 0), i32 32, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([11 x i8]* @.str86, i32 0, i32 0), i32 32, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([11 x i8]* @.str87, i32 0, i32 0), i32 96, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([12 x i8]* @.str88, i32 0, i32 0), i32 279, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([13 x i8]* @.str89, i32 0, i32 0), i32 43, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([16 x i8]* @.str90, i32 0, i32 0), i32 43, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([16 x i8]* @.str91, i32 0, i32 0), i32 107, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([17 x i8]* @.str92, i32 0, i32 0), i32 290, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([15 x i8]* @.str93, i32 0, i32 0), i32 45, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([18 x i8]* @.str94, i32 0, i32 0), i32 45, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([18 x i8]* @.str95, i32 0, i32 0), i32 109, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([19 x i8]* @.str96, i32 0, i32 0), i32 292, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([16 x i8]* @.str97, i32 0, i32 0), i32 63, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([19 x i8]* @.str98, i32 0, i32 0), i32 63, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([19 x i8]* @.str99, i32 0, i32 0), i32 127, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([20 x i8]* @.str100, i32 0, i32 0), i32 310, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([13 x i8]* @.str101, i32 0, i32 0), i32 68, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([16 x i8]* @.str102, i32 0, i32 0), i32 68, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([16 x i8]* @.str103, i32 0, i32 0), i32 132, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([17 x i8]* @.str104, i32 0, i32 0), i32 310, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([11 x i8]* @.str105, i32 0, i32 0), i32 41, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([17 x i8]* @.str106, i32 0, i32 0), i32 54, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([17 x i8]* @.str107, i32 0, i32 0), i32 99, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([14 x i8]* @.str108, i32 0, i32 0), i32 99, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([14 x i8]* @.str109, i32 0, i32 0), i32 123, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([15 x i8]* @.str110, i32 0, i32 0), i32 360, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([16 x i8]* @.str111, i32 0, i32 0), i32 54, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([19 x i8]* @.str112, i32 0, i32 0), i32 54, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([19 x i8]* @.str113, i32 0, i32 0), i32 136, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([20 x i8]* @.str114, i32 0, i32 0), i32 373, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([15 x i8]* @.str115, i32 0, i32 0), i32 55, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([18 x i8]* @.str116, i32 0, i32 0), i32 55, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([18 x i8]* @.str117, i32 0, i32 0), i32 137, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([19 x i8]* @.str118, i32 0, i32 0), i32 374, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([16 x i8]* @.str119, i32 0, i32 0), i32 67, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([19 x i8]* @.str120, i32 0, i32 0), i32 92, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([17 x i8]* @.str121, i32 0, i32 0), i32 151, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([19 x i8]* @.str122, i32 0, i32 0), i32 151, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([19 x i8]* @.str123, i32 0, i32 0), i32 149, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([20 x i8]* @.str124, i32 0, i32 0), i32 386, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([16 x i8]* @.str119, i32 0, i32 0), i32 71, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([21 x i8]* @.str125, i32 0, i32 0), i32 116, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([19 x i8]* @.str126, i32 0, i32 0), i32 161, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([21 x i8]* @.str127, i32 0, i32 0), i32 161, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([20 x i8]* @.str128, i32 0, i32 0), i32 153, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([21 x i8]* @.str129, i32 0, i32 0), i32 390, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([16 x i8]* @.str130, i32 0, i32 0), i32 10, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([13 x i8]* @.str131, i32 0, i32 0), i32 36, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([9 x i8]* @.str132, i32 0, i32 0), i32 6, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([17 x i8]* @.str133, i32 0, i32 0), i32 2, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([9 x i8]* @.str134, i32 0, i32 0), i32 23, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([17 x i8]* @.str135, i32 0, i32 0), i32 12, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([7 x i8]* @.str136, i32 0, i32 0), i32 8, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([12 x i8]* @.str137, i32 0, i32 0), i32 4, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([10 x i8]* @.str138, i32 0, i32 0), i32 64, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([9 x i8]* @.str139, i32 0, i32 0), i32 21, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([13 x i8]* @.str140, i32 0, i32 0), i32 9, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([8 x i8]* @.str141, i32 0, i32 0), i32 6, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([7 x i8]* @.str142, i32 0, i32 0), i32 29, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([11 x i8]* @.str143, i32 0, i32 0), i32 1, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([6 x i8]* @.str144, i32 0, i32 0), i32 43, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([9 x i8]* @.str145, i32 0, i32 0), i32 40, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([7 x i8]* @.str146, i32 0, i32 0), i32 163, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([10 x i8]* @.str147, i32 0, i32 0), i32 150, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([8 x i8]* @.str148, i32 0, i32 0), i32 229, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([10 x i8]* @.str149, i32 0, i32 0), i32 208, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([13 x i8]* @.str150, i32 0, i32 0), i32 247, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([13 x i8]* @.str151, i32 0, i32 0), i32 200, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([15 x i8]* @.str152, i32 0, i32 0), i32 200, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([12 x i8]* @.str153, i32 0, i32 0), i32 50, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([13 x i8]* @.str154, i32 0, i32 0), i32 191, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([15 x i8]* @.str155, i32 0, i32 0), i32 164, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([14 x i8]* @.str156, i32 0, i32 0), i32 58, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([12 x i8]* @.str157, i32 0, i32 0), i32 54, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([11 x i8]* @.str158, i32 0, i32 0), i32 62, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([7 x i8]* @.str159, i32 0, i32 0), i32 18, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([7 x i8]* @.str160, i32 0, i32 0), i32 31, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([16 x i8]* @.str161, i32 0, i32 0), i32 54, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([8 x i8]* @.str162, i32 0, i32 0), i32 10, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([11 x i8]* @.str163, i32 0, i32 0), i32 6, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([10 x i8]* @.str164, i32 0, i32 0), i32 27, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([6 x i8]* @.str165, i32 0, i32 0), i32 60, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([10 x i8]* @.str166, i32 0, i32 0), i32 4, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([6 x i8]* @.str167, i32 0, i32 0), i32 30, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([8 x i8]* @.str168, i32 0, i32 0), i32 15, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([11 x i8]* @.str169, i32 0, i32 0), i32 10, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([10 x i8]* @.str170, i32 0, i32 0), i32 18, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([7 x i8]* @.str171, i32 0, i32 0), i32 323, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([14 x i8]* @.str172, i32 0, i32 0), i32 59, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([14 x i8]* @.str173, i32 0, i32 0), i32 65, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([7 x i8]* @.str174, i32 0, i32 0), i32 7, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([7 x i8]* @.str175, i32 0, i32 0), i32 17, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([7 x i8]* @.str176, i32 0, i32 0), i32 28, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([9 x i8]* @.str177, i32 0, i32 0), i32 95, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([10 x i8]* @.str178, i32 0, i32 0), i32 176, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([10 x i8]* @.str179, i32 0, i32 0), i32 87, [4 x i8] undef }, { i8*, i32, [4 x i8] } { i8* getelementptr inbounds ([9 x i8]* @.str180, i32 0, i32 0), i32 110, [4 x i8] undef } }>, align 16

; Function Attrs: nounwind optsize uwtable
define void @init_nrnb(%struct.t_nrnb* nocapture %nrnb) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %nrnb}, i64 0, metadata !153), !dbg !319
  tail call void @llvm.dbg.value(metadata !137, i64 0, metadata !154), !dbg !320
  %nrnb4 = bitcast %struct.t_nrnb* %nrnb to i8*
  call void @llvm.memset.p0i8.i64(i8* %nrnb4, i8 0, i64 1032, i32 8, i1 false), !dbg !322
  ret void, !dbg !323
}

; Function Attrs: nounwind optsize uwtable
define void @cp_nrnb(%struct.t_nrnb* nocapture %dest, %struct.t_nrnb* nocapture %src) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %dest}, i64 0, metadata !160), !dbg !324
  tail call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %src}, i64 0, metadata !161), !dbg !324
  tail call void @llvm.dbg.value(metadata !137, i64 0, metadata !162), !dbg !325
  br label %for.body, !dbg !325

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds %struct.t_nrnb* %src, i64 0, i32 0, i64 %indvars.iv, !dbg !327
  %0 = load double* %arrayidx, align 8, !dbg !327, !tbaa !328
  %arrayidx3 = getelementptr inbounds %struct.t_nrnb* %dest, i64 0, i32 0, i64 %indvars.iv, !dbg !327
  store double %0, double* %arrayidx3, align 8, !dbg !327, !tbaa !328
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !325
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !325
  %exitcond = icmp eq i32 %lftr.wideiv, 129, !dbg !325
  br i1 %exitcond, label %for.end, label %for.body, !dbg !325

for.end:                                          ; preds = %for.body
  ret void, !dbg !331
}

; Function Attrs: nounwind optsize uwtable
define void @add_nrnb(%struct.t_nrnb* nocapture %dest, %struct.t_nrnb* nocapture %s1, %struct.t_nrnb* nocapture %s2) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %dest}, i64 0, metadata !167), !dbg !332
  tail call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %s1}, i64 0, metadata !168), !dbg !332
  tail call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %s2}, i64 0, metadata !169), !dbg !332
  tail call void @llvm.dbg.value(metadata !137, i64 0, metadata !170), !dbg !333
  br label %for.body, !dbg !333

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds %struct.t_nrnb* %s1, i64 0, i32 0, i64 %indvars.iv, !dbg !335
  %0 = load double* %arrayidx, align 8, !dbg !335, !tbaa !328
  %arrayidx3 = getelementptr inbounds %struct.t_nrnb* %s2, i64 0, i32 0, i64 %indvars.iv, !dbg !335
  %1 = load double* %arrayidx3, align 8, !dbg !335, !tbaa !328
  %add = fadd double %0, %1, !dbg !335
  %arrayidx6 = getelementptr inbounds %struct.t_nrnb* %dest, i64 0, i32 0, i64 %indvars.iv, !dbg !335
  store double %add, double* %arrayidx6, align 8, !dbg !335, !tbaa !328
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !333
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !333
  %exitcond = icmp eq i32 %lftr.wideiv, 129, !dbg !333
  br i1 %exitcond, label %for.end, label %for.body, !dbg !333

for.end:                                          ; preds = %for.body
  ret void, !dbg !336
}

; Function Attrs: nounwind optsize uwtable
define void @print_nrnb(%struct._IO_FILE* nocapture %out, %struct.t_nrnb* nocapture %nrnb) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !232), !dbg !337
  tail call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %nrnb}, i64 0, metadata !233), !dbg !337
  tail call void @llvm.dbg.value(metadata !137, i64 0, metadata !234), !dbg !338
  br label %for.body, !dbg !338

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %name = getelementptr inbounds [129 x %struct.t_nrnb_data]* bitcast (<{ { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] } }>* @nbdata to [129 x %struct.t_nrnb_data]*), i64 0, i64 %indvars.iv, i32 0, !dbg !340
  %0 = load i8** %name, align 16, !dbg !340, !tbaa !341
  %arrayidx2 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %indvars.iv, !dbg !340
  %1 = load double* %arrayidx2, align 8, !dbg !340, !tbaa !328
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0), i8* %0, double %1) #8, !dbg !340
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !338
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !338
  %exitcond = icmp eq i32 %lftr.wideiv, 129, !dbg !338
  br i1 %exitcond, label %for.end, label %for.body, !dbg !338

for.end:                                          ; preds = %for.body
  ret void, !dbg !342
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @_inc_nrnb(%struct.t_nrnb* nocapture %nrnb, i32 %enr, i32 %inc, i8* nocapture %file, i32 %line) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %nrnb}, i64 0, metadata !239), !dbg !343
  tail call void @llvm.dbg.value(metadata !{i32 %enr}, i64 0, metadata !240), !dbg !343
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !241), !dbg !343
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !242), !dbg !343
  tail call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !243), !dbg !343
  %conv = sitofp i32 %inc to double, !dbg !344
  %idxprom = sext i32 %enr to i64, !dbg !344
  %arrayidx = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %idxprom, !dbg !344
  %0 = load double* %arrayidx, align 8, !dbg !344, !tbaa !328
  %add = fadd double %conv, %0, !dbg !344
  store double %add, double* %arrayidx, align 8, !dbg !344, !tbaa !328
  ret void, !dbg !345
}

; Function Attrs: nounwind optsize uwtable
define void @print_perf(%struct._IO_FILE* %out, double %nodetime, double %realtime, float %runtime, %struct.t_nrnb* nocapture %nrnb, i32 %nprocs) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !250), !dbg !346
  tail call void @llvm.dbg.value(metadata !{double %nodetime}, i64 0, metadata !251), !dbg !346
  tail call void @llvm.dbg.value(metadata !{double %realtime}, i64 0, metadata !252), !dbg !346
  tail call void @llvm.dbg.value(metadata !{float %runtime}, i64 0, metadata !253), !dbg !346
  tail call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %nrnb}, i64 0, metadata !254), !dbg !347
  tail call void @llvm.dbg.value(metadata !{i32 %nprocs}, i64 0, metadata !255), !dbg !347
  %cmp = fcmp olt double %nodetime, 1.200000e-38, !dbg !348
  br i1 %cmp, label %if.then, label %for.body, !dbg !348

if.then:                                          ; preds = %entry
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([38 x i8]* @.str1, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* %out), !dbg !349
  br label %for.body, !dbg !351

for.body:                                         ; preds = %entry, %if.then, %for.inc
  %indvars.iv201 = phi i64 [ %indvars.iv.next202, %for.inc ], [ 0, %if.then ], [ 0, %entry ]
  %nbfs.0195 = phi double [ %nbfs.1, %for.inc ], [ 0.000000e+00, %if.then ], [ 0.000000e+00, %entry ]
  %name = getelementptr inbounds [129 x %struct.t_nrnb_data]* bitcast (<{ { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] } }>* @nbdata to [129 x %struct.t_nrnb_data]*), i64 0, i64 %indvars.iv201, i32 0, !dbg !352
  %1 = load i8** %name, align 16, !dbg !352, !tbaa !341
  %call2 = tail call i8* @strstr(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #9, !dbg !352
  %cmp3 = icmp eq i8* %call2, null, !dbg !352
  br i1 %cmp3, label %if.else, label %if.then4, !dbg !352

if.then4:                                         ; preds = %for.body
  %arrayidx6 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %indvars.iv201, !dbg !355
  %2 = load double* %arrayidx6, align 8, !dbg !355, !tbaa !328
  %mul = fmul double %2, 9.000000e-06, !dbg !355
  br label %for.inc, !dbg !355

if.else:                                          ; preds = %for.body
  %call10 = tail call i8* @strstr(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #9, !dbg !356
  %cmp11 = icmp eq i8* %call10, null, !dbg !356
  %arrayidx15 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %indvars.iv201, !dbg !357
  %3 = load double* %arrayidx15, align 8, !dbg !357, !tbaa !328
  br i1 %cmp11, label %if.else18, label %if.then12, !dbg !356

if.then12:                                        ; preds = %if.else
  %mul16 = fmul double %3, 3.000000e-06, !dbg !357
  br label %for.inc, !dbg !357

if.else18:                                        ; preds = %if.else
  %mul22 = fmul double %3, 1.000000e-06, !dbg !358
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %if.else18, %if.then12
  %mul.pn = phi double [ %mul, %if.then4 ], [ %mul16, %if.then12 ], [ %mul22, %if.else18 ]
  %nbfs.1 = fadd double %nbfs.0195, %mul.pn, !dbg !355
  %indvars.iv.next202 = add i64 %indvars.iv201, 1, !dbg !359
  %lftr.wideiv203 = trunc i64 %indvars.iv.next202 to i32, !dbg !359
  %exitcond204 = icmp eq i32 %lftr.wideiv203, 78, !dbg !359
  br i1 %exitcond204, label %for.body28, label %for.body, !dbg !359

for.body28:                                       ; preds = %for.inc, %for.body28
  %indvars.iv197 = phi i64 [ %indvars.iv.next198, %for.body28 ], [ 0, %for.inc ]
  %tflop.0194 = phi double [ %add36, %for.body28 ], [ 0.000000e+00, %for.inc ]
  %arrayidx31 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %indvars.iv197, !dbg !360
  %4 = load double* %arrayidx31, align 8, !dbg !360, !tbaa !328
  %mul32 = fmul double %4, 1.000000e-06, !dbg !360
  %flop = getelementptr inbounds [129 x %struct.t_nrnb_data]* bitcast (<{ { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] } }>* @nbdata to [129 x %struct.t_nrnb_data]*), i64 0, i64 %indvars.iv197, i32 1, !dbg !360
  %5 = load i32* %flop, align 8, !dbg !360, !tbaa !362
  %conv = sitofp i32 %5 to double, !dbg !360
  %mul35 = fmul double %mul32, %conv, !dbg !360
  %add36 = fadd double %tflop.0194, %mul35, !dbg !360
  tail call void @llvm.dbg.value(metadata !{double %add36}, i64 0, metadata !262), !dbg !360
  %indvars.iv.next198 = add i64 %indvars.iv197, 1, !dbg !363
  %lftr.wideiv199 = trunc i64 %indvars.iv.next198 to i32, !dbg !363
  %exitcond200 = icmp eq i32 %lftr.wideiv199, 129, !dbg !363
  br i1 %exitcond200, label %for.end39, label %for.body28, !dbg !363

for.end39:                                        ; preds = %for.body28
  %cmp40 = fcmp olt double %add36, 1.200000e-38, !dbg !364
  br i1 %cmp40, label %if.then42, label %if.end44, !dbg !364

if.then42:                                        ; preds = %for.end39
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str4, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %out), !dbg !365
  br label %if.end128, !dbg !367

if.end44:                                         ; preds = %for.end39
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([46 x i8]* @.str5, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %out), !dbg !368
  %cmp46 = icmp sgt i32 %nprocs, 1, !dbg !369
  br i1 %cmp46, label %if.then48, label %if.end50, !dbg !369

if.then48:                                        ; preds = %if.end44
  tail call void @llvm.dbg.value(metadata !{double %realtime}, i64 0, metadata !251), !dbg !370
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([44 x i8]* @.str6, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %out), !dbg !372
  br label %if.end50, !dbg !373

if.end50:                                         ; preds = %if.then48, %if.end44
  %nodetime.addr.0 = phi double [ %realtime, %if.then48 ], [ %nodetime, %if.end44 ]
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([53 x i8]* @.str7, i64 0, i64 0), i64 52, i64 1, %struct._IO_FILE* %out), !dbg !374
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([69 x i8]* @.str8, i64 0, i64 0), i64 68, i64 1, %struct._IO_FILE* %out), !dbg !375
  %call53 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([23 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0)) #8, !dbg !376
  tail call void @llvm.dbg.value(metadata !377, i64 0, metadata !261), !dbg !378
  tail call void @llvm.dbg.value(metadata !377, i64 0, metadata !260), !dbg !379
  tail call void @llvm.dbg.value(metadata !137, i64 0, metadata !256), !dbg !380
  br label %for.body57, !dbg !380

for.body57:                                       ; preds = %for.inc89, %if.end50
  %indvars.iv = phi i64 [ 0, %if.end50 ], [ %indvars.iv.next, %for.inc89 ]
  %mflop.0192 = phi double [ 0.000000e+00, %if.end50 ], [ %add67, %for.inc89 ]
  %tfrac.0191 = phi double [ 0.000000e+00, %if.end50 ], [ %add74, %for.inc89 ]
  %arrayidx60 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %indvars.iv, !dbg !382
  %11 = load double* %arrayidx60, align 8, !dbg !382, !tbaa !328
  %mul61 = fmul double %11, 1.000000e-06, !dbg !382
  tail call void @llvm.dbg.value(metadata !{double %mul61}, i64 0, metadata !258), !dbg !382
  %flop64 = getelementptr inbounds [129 x %struct.t_nrnb_data]* bitcast (<{ { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] } }>* @nbdata to [129 x %struct.t_nrnb_data]*), i64 0, i64 %indvars.iv, i32 1, !dbg !384
  %12 = load i32* %flop64, align 8, !dbg !384, !tbaa !362
  %conv65 = sitofp i32 %12 to double, !dbg !384
  %mul66 = fmul double %mul61, %conv65, !dbg !384
  %add67 = fadd double %mflop.0192, %mul66, !dbg !384
  tail call void @llvm.dbg.value(metadata !{double %add67}, i64 0, metadata !261), !dbg !384
  %mul68 = fmul double %mul61, 1.000000e+02, !dbg !385
  %mul73 = fmul double %mul68, %conv65, !dbg !385
  %div = fdiv double %mul73, %add36, !dbg !385
  tail call void @llvm.dbg.value(metadata !{double %div}, i64 0, metadata !259), !dbg !385
  %add74 = fadd double %tfrac.0191, %div, !dbg !386
  tail call void @llvm.dbg.value(metadata !{double %add74}, i64 0, metadata !260), !dbg !386
  %call75 = tail call double @fabs(double %mul61) #10, !dbg !387
  %cmp76 = fcmp ogt double %call75, 1.200000e-38, !dbg !387
  br i1 %cmp76, label %if.then78, label %for.inc89, !dbg !387

if.then78:                                        ; preds = %for.body57
  %name81 = getelementptr inbounds [129 x %struct.t_nrnb_data]* bitcast (<{ { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] } }>* @nbdata to [129 x %struct.t_nrnb_data]*), i64 0, i64 %indvars.iv, i32 0, !dbg !388
  %13 = load i8** %name81, align 16, !dbg !388, !tbaa !341
  %call87 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([29 x i8]* @.str14, i64 0, i64 0), i8* %13, double %mul61, double %mul66, double %div) #8, !dbg !388
  br label %for.inc89, !dbg !388

for.inc89:                                        ; preds = %for.body57, %if.then78
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !380
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !380
  %exitcond = icmp eq i32 %lftr.wideiv, 129, !dbg !380
  br i1 %exitcond, label %for.end91, label %for.body57, !dbg !380

for.end91:                                        ; preds = %for.inc89
  %call92 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([28 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str17, i64 0, i64 0), double %add67, double %add74) #8, !dbg !389
  %cmp93 = fcmp ogt double %nodetime.addr.0, 0.000000e+00, !dbg !390
  %cmp95 = fcmp ogt double %realtime, 0.000000e+00, !dbg !390
  %or.cond = and i1 %cmp93, %cmp95, !dbg !390
  br i1 %or.cond, label %if.then97, label %if.end128, !dbg !390

if.then97:                                        ; preds = %for.end91
  %call98 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([20 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0)) #8, !dbg !391
  %mul99 = fmul double %nodetime.addr.0, 1.000000e+02, !dbg !393
  %div100 = fdiv double %mul99, %realtime, !dbg !393
  %call101 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([26 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str23, i64 0, i64 0), double %nodetime.addr.0, double %realtime, double %div100) #8, !dbg !393
  %cmp102 = fcmp ogt double %nodetime.addr.0, 6.000000e+01, !dbg !394
  br i1 %cmp102, label %if.then104, label %if.end106, !dbg !394

if.then104:                                       ; preds = %if.then97
  %call105 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([10 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str17, i64 0, i64 0)) #8, !dbg !395
  tail call void @pr_difftime(%struct._IO_FILE* %out, double %nodetime.addr.0) #8, !dbg !397
  br label %if.end106, !dbg !398

if.end106:                                        ; preds = %if.then104, %if.then97
  %cmp107 = fcmp ogt float %runtime, 0.000000e+00, !dbg !399
  br i1 %cmp107, label %if.then109, label %if.end128, !dbg !399

if.then109:                                       ; preds = %if.end106
  %div110 = fdiv double %add67, %nodetime.addr.0, !dbg !400
  tail call void @llvm.dbg.value(metadata !{double %div110}, i64 0, metadata !261), !dbg !400
  %cmp111 = fcmp ogt double %div110, 1.000000e+03, !dbg !402
  %cond = select i1 %cmp111, i8* getelementptr inbounds ([9 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str28, i64 0, i64 0), !dbg !402
  %call113 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([26 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str26, i64 0, i64 0), i8* %cond, i8* getelementptr inbounds ([15 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str30, i64 0, i64 0)) #8, !dbg !402
  %div114 = fdiv double %nbfs.1, %nodetime.addr.0, !dbg !403
  br i1 %cmp111, label %cond.true, label %cond.end, !dbg !403

cond.true:                                        ; preds = %if.then109
  %div117 = fdiv double %div110, 1.000000e+03, !dbg !403
  br label %cond.end, !dbg !403

cond.end:                                         ; preds = %if.then109, %cond.true
  %cond118 = phi double [ %div117, %cond.true ], [ %div110, %if.then109 ], !dbg !403
  %mul119 = fmul float %runtime, 3.600000e+03, !dbg !403
  %conv120 = fpext float %mul119 to double, !dbg !403
  %div121 = fdiv double %conv120, %nodetime.addr.0, !dbg !403
  %mul122 = fmul double %nodetime.addr.0, 1.000000e+03, !dbg !403
  %div125 = fdiv double %mul122, %conv120, !dbg !403
  %call126 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([34 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str32, i64 0, i64 0), double %div114, double %cond118, double %div121, double %div125) #8, !dbg !403
  br label %if.end128, !dbg !404

if.end128:                                        ; preds = %if.end106, %cond.end, %if.then42, %for.end91
  ret void, !dbg !405
}

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #3

; Function Attrs: optsize
declare void @pr_difftime(%struct._IO_FILE*, double) #4

; Function Attrs: nounwind optsize readnone uwtable
define i32 @cost_nrnb(i32 %enr) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %enr}, i64 0, metadata !267), !dbg !406
  %idxprom = sext i32 %enr to i64, !dbg !407
  %flop = getelementptr inbounds [129 x %struct.t_nrnb_data]* bitcast (<{ { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] } }>* @nbdata to [129 x %struct.t_nrnb_data]*), i64 0, i64 %idxprom, i32 1, !dbg !407
  %0 = load i32* %flop, align 8, !dbg !407, !tbaa !362
  ret i32 %0, !dbg !407
}

; Function Attrs: nounwind optsize readnone uwtable
define i8* @nrnb_str(i32 %enr) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %enr}, i64 0, metadata !272), !dbg !408
  %idxprom = sext i32 %enr to i64, !dbg !409
  %name = getelementptr inbounds [129 x %struct.t_nrnb_data]* bitcast (<{ { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] } }>* @nbdata to [129 x %struct.t_nrnb_data]*), i64 0, i64 %idxprom, i32 0, !dbg !409
  %0 = load i8** %name, align 16, !dbg !409, !tbaa !341
  ret i8* %0, !dbg !409
}

; Function Attrs: nounwind optsize uwtable
define void @pr_load(%struct._IO_FILE* nocapture %log, i32 %nprocs, %struct.t_nrnb* nocapture %nrnb) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !277), !dbg !410
  tail call void @llvm.dbg.value(metadata !{i32 %nprocs}, i64 0, metadata !278), !dbg !410
  tail call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %nrnb}, i64 0, metadata !279), !dbg !410
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str34, i64 0, i64 0), i32 350, i32 1, i32 1032) #8, !dbg !411
  %0 = bitcast i8* %call to %struct.t_nrnb*, !dbg !411
  tail call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %0}, i64 0, metadata !292), !dbg !411
  %call1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str34, i64 0, i64 0), i32 351, i32 %nprocs, i32 8) #8, !dbg !412
  %1 = bitcast i8* %call1 to double*, !dbg !412
  tail call void @llvm.dbg.value(metadata !{double* %1}, i64 0, metadata !287), !dbg !412
  %call2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str34, i64 0, i64 0), i32 352, i32 %nprocs, i32 8) #8, !dbg !413
  %2 = bitcast i8* %call2 to double*, !dbg !413
  tail call void @llvm.dbg.value(metadata !{double* %2}, i64 0, metadata !290), !dbg !413
  tail call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %0}, i64 0, metadata !414) #7, !dbg !416
  tail call void @llvm.dbg.value(metadata !137, i64 0, metadata !417) #7, !dbg !418
  tail call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 1032, i32 8, i1 false) #7, !dbg !419
  tail call void @llvm.dbg.value(metadata !137, i64 0, metadata !280), !dbg !420
  %cmp280 = icmp sgt i32 %nprocs, 0, !dbg !420
  br i1 %cmp280, label %for.body, label %for.cond62.preheader, !dbg !420

for.cond62.preheader:                             ; preds = %for.inc59, %entry
  %n67 = bitcast i8* %call to [129 x double]*, !dbg !422
  %conv69 = sitofp i32 %nprocs to double, !dbg !422
  br label %for.body65, !dbg !424

for.body:                                         ; preds = %entry, %for.inc59
  %indvars.iv310 = phi i64 [ %indvars.iv.next311, %for.inc59 ], [ 0, %entry ]
  tail call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %0}, i64 0, metadata !425), !dbg !428
  tail call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %0}, i64 0, metadata !429), !dbg !428
  tail call void @llvm.dbg.value(metadata !137, i64 0, metadata !430), !dbg !431
  br label %for.body.i, !dbg !431

for.body.i:                                       ; preds = %for.body.i, %for.body
  %indvars.iv.i = phi i64 [ 0, %for.body ], [ %indvars.iv.next.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds %struct.t_nrnb* %0, i64 0, i32 0, i64 %indvars.iv.i, !dbg !432
  %3 = load double* %arrayidx.i, align 8, !dbg !432, !tbaa !328
  %arrayidx3.i = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv310, i32 0, i64 %indvars.iv.i, !dbg !432
  %4 = load double* %arrayidx3.i, align 8, !dbg !432, !tbaa !328
  %add.i = fadd double %3, %4, !dbg !432
  store double %add.i, double* %arrayidx.i, align 8, !dbg !432, !tbaa !328
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !431
  %lftr.wideiv296 = trunc i64 %indvars.iv.next.i to i32, !dbg !431
  %exitcond297 = icmp eq i32 %lftr.wideiv296, 129, !dbg !431
  br i1 %exitcond297, label %for.cond3.loopexit, label %for.body.i, !dbg !431

for.cond3.loopexit:                               ; preds = %for.body.i
  %arrayidx12 = getelementptr inbounds double* %1, i64 %indvars.iv310, !dbg !433
  %.pre = load double* %arrayidx12, align 8, !dbg !433, !tbaa !328
  br label %for.body5, !dbg !435

for.body5:                                        ; preds = %for.body5, %for.cond3.loopexit
  %5 = phi double [ %.pre, %for.cond3.loopexit ], [ %add, %for.body5 ], !dbg !433
  %indvars.iv298 = phi i64 [ 0, %for.cond3.loopexit ], [ %indvars.iv.next299, %for.body5 ]
  %arrayidx9 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv310, i32 0, i64 %indvars.iv298, !dbg !433
  %6 = load double* %arrayidx9, align 8, !dbg !433, !tbaa !328
  tail call void @llvm.dbg.value(metadata !436, i64 0, metadata !437), !dbg !438
  %flop.i = getelementptr inbounds [129 x %struct.t_nrnb_data]* bitcast (<{ { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] } }>* @nbdata to [129 x %struct.t_nrnb_data]*), i64 0, i64 %indvars.iv298, i32 1, !dbg !439
  %7 = load i32* %flop.i, align 8, !dbg !439, !tbaa !362
  %conv = sitofp i32 %7 to double, !dbg !433
  %mul = fmul double %6, %conv, !dbg !433
  %add = fadd double %5, %mul, !dbg !433
  store double %add, double* %arrayidx12, align 8, !dbg !433, !tbaa !328
  %indvars.iv.next299 = add i64 %indvars.iv298, 1, !dbg !435
  %lftr.wideiv300 = trunc i64 %indvars.iv.next299 to i32, !dbg !435
  %exitcond301 = icmp eq i32 %lftr.wideiv300, 78, !dbg !435
  br i1 %exitcond301, label %for.body17, label %for.body5, !dbg !435

for.body17:                                       ; preds = %for.body5, %for.body17
  %8 = phi double [ %add32, %for.body17 ], [ %add, %for.body5 ], !dbg !440
  %indvars.iv302 = phi i64 [ %indvars.iv.next303, %for.body17 ], [ 0, %for.body5 ]
  %arrayidx19 = getelementptr inbounds [10 x i32]* @force_index, i64 0, i64 %indvars.iv302, !dbg !440
  %9 = load i32* %arrayidx19, align 4, !dbg !440, !tbaa !362
  %idxprom20 = sext i32 %9 to i64, !dbg !440
  %arrayidx24 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv310, i32 0, i64 %idxprom20, !dbg !440
  %10 = load double* %arrayidx24, align 8, !dbg !440, !tbaa !328
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !442), !dbg !443
  %flop.i261 = getelementptr inbounds [129 x %struct.t_nrnb_data]* bitcast (<{ { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] } }>* @nbdata to [129 x %struct.t_nrnb_data]*), i64 0, i64 %idxprom20, i32 1, !dbg !444
  %11 = load i32* %flop.i261, align 8, !dbg !444, !tbaa !362
  %conv28 = sitofp i32 %11 to double, !dbg !440
  %mul29 = fmul double %10, %conv28, !dbg !440
  %add32 = fadd double %8, %mul29, !dbg !440
  store double %add32, double* %arrayidx12, align 8, !dbg !440, !tbaa !328
  %indvars.iv.next303 = add i64 %indvars.iv302, 1, !dbg !445
  %lftr.wideiv304 = trunc i64 %indvars.iv.next303 to i32, !dbg !445
  %exitcond305 = icmp eq i32 %lftr.wideiv304, 10, !dbg !445
  br i1 %exitcond305, label %for.cond36.loopexit, label %for.body17, !dbg !445

for.cond36.loopexit:                              ; preds = %for.body17
  %arrayidx54 = getelementptr inbounds double* %2, i64 %indvars.iv310, !dbg !446
  %.pre314 = load double* %arrayidx54, align 8, !dbg !446, !tbaa !328
  br label %for.body40, !dbg !449

for.body40:                                       ; preds = %for.body40, %for.cond36.loopexit
  %12 = phi double [ %.pre314, %for.cond36.loopexit ], [ %add55, %for.body40 ], !dbg !446
  %indvars.iv306 = phi i64 [ 0, %for.cond36.loopexit ], [ %indvars.iv.next307, %for.body40 ]
  %arrayidx42 = getelementptr inbounds [10 x i32]* @shake_index, i64 0, i64 %indvars.iv306, !dbg !446
  %13 = load i32* %arrayidx42, align 4, !dbg !446, !tbaa !362
  %idxprom43 = sext i32 %13 to i64, !dbg !446
  %arrayidx47 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv310, i32 0, i64 %idxprom43, !dbg !446
  %14 = load double* %arrayidx47, align 8, !dbg !446, !tbaa !328
  tail call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !450), !dbg !451
  %flop.i259 = getelementptr inbounds [129 x %struct.t_nrnb_data]* bitcast (<{ { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] } }>* @nbdata to [129 x %struct.t_nrnb_data]*), i64 0, i64 %idxprom43, i32 1, !dbg !452
  %15 = load i32* %flop.i259, align 8, !dbg !452, !tbaa !362
  %conv51 = sitofp i32 %15 to double, !dbg !446
  %mul52 = fmul double %14, %conv51, !dbg !446
  %add55 = fadd double %12, %mul52, !dbg !446
  store double %add55, double* %arrayidx54, align 8, !dbg !446, !tbaa !328
  %indvars.iv.next307 = add i64 %indvars.iv306, 1, !dbg !449
  %lftr.wideiv308 = trunc i64 %indvars.iv.next307 to i32, !dbg !449
  %exitcond309 = icmp eq i32 %lftr.wideiv308, 10, !dbg !449
  br i1 %exitcond309, label %for.inc59, label %for.body40, !dbg !449

for.inc59:                                        ; preds = %for.body40
  %indvars.iv.next311 = add i64 %indvars.iv310, 1, !dbg !420
  %lftr.wideiv312 = trunc i64 %indvars.iv.next311 to i32, !dbg !420
  %exitcond313 = icmp eq i32 %lftr.wideiv312, %nprocs, !dbg !420
  br i1 %exitcond313, label %for.cond62.preheader, label %for.body, !dbg !420

for.body65:                                       ; preds = %for.body65, %for.cond62.preheader
  %indvars.iv292 = phi i64 [ 0, %for.cond62.preheader ], [ %indvars.iv.next293, %for.body65 ]
  %arrayidx68 = getelementptr inbounds [129 x double]* %n67, i64 0, i64 %indvars.iv292, !dbg !422
  %16 = load double* %arrayidx68, align 8, !dbg !422, !tbaa !328
  %div = fdiv double %16, %conv69, !dbg !422
  store double %div, double* %arrayidx68, align 8, !dbg !422, !tbaa !328
  %indvars.iv.next293 = add i64 %indvars.iv292, 1, !dbg !424
  %lftr.wideiv294 = trunc i64 %indvars.iv.next293 to i32, !dbg !424
  %exitcond295 = icmp eq i32 %lftr.wideiv294, 129, !dbg !424
  br i1 %exitcond295, label %for.end75, label %for.body65, !dbg !424

for.end75:                                        ; preds = %for.body65
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str37, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %log), !dbg !453
  %18 = tail call i64 @fwrite(i8* getelementptr inbounds ([18 x i8]* @.str38, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %log), !dbg !454
  tail call void @llvm.dbg.value(metadata !137, i64 0, metadata !280), !dbg !455
  br i1 %cmp280, label %for.body81, label %for.end95.critedge, !dbg !455

for.body81:                                       ; preds = %for.end75, %for.body81
  %i.1275 = phi i32 [ %inc84, %for.body81 ], [ 0, %for.end75 ]
  %call82 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0), i32 %i.1275) #8, !dbg !457
  %inc84 = add nsw i32 %i.1275, 1, !dbg !455
  tail call void @llvm.dbg.value(metadata !{i32 %inc84}, i64 0, metadata !280), !dbg !455
  %exitcond291 = icmp eq i32 %inc84, %nprocs, !dbg !455
  br i1 %exitcond291, label %for.end85, label %for.body81, !dbg !455

for.end85:                                        ; preds = %for.body81
  %19 = tail call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str40, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %log), !dbg !458
  %20 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str41, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %log), !dbg !459
  tail call void @llvm.dbg.value(metadata !137, i64 0, metadata !280), !dbg !460
  br i1 %cmp280, label %for.body91, label %for.end95, !dbg !460

for.body91:                                       ; preds = %for.end85, %for.body91
  %i.2273 = phi i32 [ %inc94, %for.body91 ], [ 0, %for.end85 ]
  %21 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str42, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %log), !dbg !462
  %inc94 = add nsw i32 %i.2273, 1, !dbg !460
  tail call void @llvm.dbg.value(metadata !{i32 %inc94}, i64 0, metadata !280), !dbg !460
  %exitcond290 = icmp eq i32 %inc94, %nprocs, !dbg !460
  br i1 %exitcond290, label %for.end95, label %for.body91, !dbg !460

for.end95.critedge:                               ; preds = %for.end75
  %22 = tail call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str40, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %log), !dbg !458
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str41, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %log), !dbg !459
  tail call void @llvm.dbg.value(metadata !137, i64 0, metadata !280), !dbg !460
  br label %for.end95

for.end95:                                        ; preds = %for.end95.critedge, %for.body91, %for.end85
  %24 = tail call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str43, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %log), !dbg !463
  tail call void @llvm.dbg.value(metadata !137, i64 0, metadata !281), !dbg !464
  br label %for.body100, !dbg !464

for.cond140.preheader:                            ; preds = %for.inc137
  br i1 %cmp280, label %for.body143, label %for.end152, !dbg !466

for.body100:                                      ; preds = %for.inc137, %for.end95
  %indvars.iv286 = phi i64 [ 0, %for.end95 ], [ %indvars.iv.next287, %for.inc137 ]
  tail call void @llvm.dbg.value(metadata !468, i64 0, metadata !284), !dbg !469
  %arrayidx103 = getelementptr inbounds [129 x double]* %n67, i64 0, i64 %indvars.iv286, !dbg !471
  %25 = load double* %arrayidx103, align 8, !dbg !471, !tbaa !328
  %cmp104 = fcmp ogt double %25, 0.000000e+00, !dbg !471
  br i1 %cmp104, label %if.then, label %for.inc137, !dbg !471

if.then:                                          ; preds = %for.body100
  tail call void @llvm.dbg.value(metadata !436, i64 0, metadata !472), !dbg !475
  %name.i = getelementptr inbounds [129 x %struct.t_nrnb_data]* bitcast (<{ { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] } }>* @nbdata to [129 x %struct.t_nrnb_data]*), i64 0, i64 %indvars.iv286, i32 0, !dbg !476
  %26 = load i8** %name.i, align 16, !dbg !476, !tbaa !341
  %call107 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([6 x i8]* @.str44, i64 0, i64 0), i8* %26) #8, !dbg !473
  tail call void @llvm.dbg.value(metadata !137, i64 0, metadata !280), !dbg !477
  br i1 %cmp280, label %for.body111, label %if.then131, !dbg !477

for.body111:                                      ; preds = %if.then, %for.body111
  %indvars.iv282 = phi i64 [ %indvars.iv.next283, %for.body111 ], [ 0, %if.then ]
  %unb.0268 = phi double [ %cond, %for.body111 ], [ 1.000000e+02, %if.then ]
  %arrayidx116 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv282, i32 0, i64 %indvars.iv286, !dbg !479
  %27 = load double* %arrayidx116, align 8, !dbg !479, !tbaa !328
  %mul117 = fmul double %27, 1.000000e+02, !dbg !479
  %28 = load double* %arrayidx103, align 8, !dbg !479, !tbaa !328
  %div121 = fdiv double %mul117, %28, !dbg !479
  tail call void @llvm.dbg.value(metadata !{double %div121}, i64 0, metadata !283), !dbg !479
  %cmp122 = fcmp ogt double %unb.0268, %div121, !dbg !481
  %cond = select i1 %cmp122, double %unb.0268, double %div121, !dbg !481
  tail call void @llvm.dbg.value(metadata !{double %cond}, i64 0, metadata !284), !dbg !481
  %conv124 = fptosi double %div121 to i32, !dbg !482
  tail call void @llvm.dbg.value(metadata !{i32 %conv124}, i64 0, metadata !282), !dbg !482
  %call125 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0), i32 %conv124) #8, !dbg !483
  %indvars.iv.next283 = add i64 %indvars.iv282, 1, !dbg !477
  %lftr.wideiv284 = trunc i64 %indvars.iv.next283 to i32, !dbg !477
  %exitcond285 = icmp eq i32 %lftr.wideiv284, %nprocs, !dbg !477
  br i1 %exitcond285, label %for.end128, label %for.body111, !dbg !477

for.end128:                                       ; preds = %for.body111
  %cmp129 = fcmp ogt double %cond, 0.000000e+00, !dbg !484
  br i1 %cmp129, label %if.then131, label %if.else, !dbg !484

if.then131:                                       ; preds = %if.then, %for.end128
  %unb.0.lcssa316 = phi double [ %cond, %for.end128 ], [ 1.000000e+02, %if.then ]
  %div132 = fdiv double 1.000000e+04, %unb.0.lcssa316, !dbg !485
  %conv133 = fptosi double %div132 to i32, !dbg !485
  tail call void @llvm.dbg.value(metadata !{i32 %conv133}, i64 0, metadata !282), !dbg !485
  %call134 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([7 x i8]* @.str45, i64 0, i64 0), i32 %conv133) #8, !dbg !487
  br label %for.inc137, !dbg !488

if.else:                                          ; preds = %for.end128
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %log), !dbg !489
  br label %for.inc137

for.inc137:                                       ; preds = %for.body100, %if.else, %if.then131
  %indvars.iv.next287 = add i64 %indvars.iv286, 1, !dbg !464
  %lftr.wideiv288 = trunc i64 %indvars.iv.next287 to i32, !dbg !464
  %exitcond289 = icmp eq i32 %lftr.wideiv288, 129, !dbg !464
  br i1 %exitcond289, label %for.cond140.preheader, label %for.body100, !dbg !464

for.body143:                                      ; preds = %for.cond140.preheader, %for.body143
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body143 ], [ 0, %for.cond140.preheader ]
  %sav.0264 = phi double [ %add149, %for.body143 ], [ 0.000000e+00, %for.cond140.preheader ]
  %fav.0263 = phi double [ %add146, %for.body143 ], [ 0.000000e+00, %for.cond140.preheader ]
  %arrayidx145 = getelementptr inbounds double* %1, i64 %indvars.iv, !dbg !490
  %29 = load double* %arrayidx145, align 8, !dbg !490, !tbaa !328
  %add146 = fadd double %fav.0263, %29, !dbg !490
  tail call void @llvm.dbg.value(metadata !{double %add146}, i64 0, metadata !289), !dbg !490
  %arrayidx148 = getelementptr inbounds double* %2, i64 %indvars.iv, !dbg !492
  %30 = load double* %arrayidx148, align 8, !dbg !492, !tbaa !328
  %add149 = fadd double %sav.0264, %30, !dbg !492
  tail call void @llvm.dbg.value(metadata !{double %add149}, i64 0, metadata !291), !dbg !492
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !466
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !466
  %exitcond = icmp eq i32 %lftr.wideiv, %nprocs, !dbg !466
  br i1 %exitcond, label %for.end152, label %for.body143, !dbg !466

for.end152:                                       ; preds = %for.body143, %for.cond140.preheader
  %sav.0.lcssa = phi double [ 0.000000e+00, %for.cond140.preheader ], [ %add149, %for.body143 ]
  %fav.0.lcssa = phi double [ 0.000000e+00, %for.cond140.preheader ], [ %add146, %for.body143 ]
  %call153 = tail call fastcc double @pr_av(%struct._IO_FILE* %log, i32 %nprocs, double %fav.0.lcssa, double* %1, i8* getelementptr inbounds ([12 x i8]* @.str47, i64 0, i64 0)) #11, !dbg !493
  tail call void @llvm.dbg.value(metadata !{double %call153}, i64 0, metadata !285), !dbg !493
  %call154 = tail call fastcc double @pr_av(%struct._IO_FILE* %log, i32 %nprocs, double %sav.0.lcssa, double* %2, i8* getelementptr inbounds ([12 x i8]* @.str48, i64 0, i64 0)) #11, !dbg !494
  tail call void @llvm.dbg.value(metadata !{double %call154}, i64 0, metadata !286), !dbg !494
  %mul155 = fmul double %fav.0.lcssa, %call153, !dbg !495
  %mul156 = fmul double %sav.0.lcssa, %call154, !dbg !495
  %add157 = fadd double %mul155, %mul156, !dbg !495
  %add158 = fadd double %fav.0.lcssa, %sav.0.lcssa, !dbg !495
  %div159 = fdiv double %add157, %add158, !dbg !495
  tail call void @llvm.dbg.value(metadata !{double %div159}, i64 0, metadata !284), !dbg !495
  %cmp160 = fcmp ogt double %div159, 0.000000e+00, !dbg !496
  br i1 %cmp160, label %if.then162, label %if.end165, !dbg !496

if.then162:                                       ; preds = %for.end152
  %div163 = fdiv double 1.000000e+04, %div159, !dbg !497
  tail call void @llvm.dbg.value(metadata !{double %div163}, i64 0, metadata !284), !dbg !497
  %call164 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([44 x i8]* @.str49, i64 0, i64 0), double %div163) #8, !dbg !499
  br label %if.end165, !dbg !500

if.end165:                                        ; preds = %if.then162, %for.end152
  ret void, !dbg !501
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc double @pr_av(%struct._IO_FILE* nocapture %log, i32 %nprocs, double %fav, double* nocapture %ftot, i8* %title) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !297), !dbg !502
  tail call void @llvm.dbg.value(metadata !{i32 %nprocs}, i64 0, metadata !298), !dbg !502
  tail call void @llvm.dbg.value(metadata !{double %fav}, i64 0, metadata !299), !dbg !502
  tail call void @llvm.dbg.value(metadata !{double* %ftot}, i64 0, metadata !300), !dbg !502
  tail call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !301), !dbg !502
  tail call void @llvm.dbg.value(metadata !377, i64 0, metadata !305), !dbg !503
  %cmp = fcmp ogt double %fav, 0.000000e+00, !dbg !504
  br i1 %cmp, label %if.then, label %if.end15, !dbg !504

if.then:                                          ; preds = %entry
  %conv = sitofp i32 %nprocs to double, !dbg !505
  %div = fdiv double %fav, %conv, !dbg !505
  tail call void @llvm.dbg.value(metadata !{double %div}, i64 0, metadata !299), !dbg !505
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([7 x i8]* @.str50, i64 0, i64 0), i8* %title) #8, !dbg !507
  tail call void @llvm.dbg.value(metadata !137, i64 0, metadata !302), !dbg !508
  %cmp131 = icmp sgt i32 %nprocs, 0, !dbg !508
  br i1 %cmp131, label %for.body, label %if.else, !dbg !508

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %unb.033 = phi double [ %cond, %for.body ], [ 0.000000e+00, %if.then ]
  %arrayidx = getelementptr inbounds double* %ftot, i64 %indvars.iv, !dbg !510
  %0 = load double* %arrayidx, align 8, !dbg !510, !tbaa !328
  %mul = fmul double %0, 1.000000e+02, !dbg !510
  %div3 = fdiv double %mul, %div, !dbg !510
  tail call void @llvm.dbg.value(metadata !{double %div3}, i64 0, metadata !304), !dbg !510
  %cmp4 = fcmp ogt double %unb.033, %div3, !dbg !512
  %cond = select i1 %cmp4, double %unb.033, double %div3, !dbg !512
  tail call void @llvm.dbg.value(metadata !{double %cond}, i64 0, metadata !305), !dbg !512
  %conv6 = fptosi double %div3 to i32, !dbg !513
  tail call void @llvm.dbg.value(metadata !{i32 %conv6}, i64 0, metadata !303), !dbg !513
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0), i32 %conv6) #8, !dbg !514
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !508
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !508
  %exitcond = icmp eq i32 %lftr.wideiv, %nprocs, !dbg !508
  br i1 %exitcond, label %for.end, label %for.body, !dbg !508

for.end:                                          ; preds = %for.body
  %cmp8 = fcmp ogt double %cond, 0.000000e+00, !dbg !515
  br i1 %cmp8, label %if.then10, label %if.else, !dbg !515

if.then10:                                        ; preds = %for.end
  %div11 = fdiv double 1.000000e+04, %cond, !dbg !516
  %conv12 = fptosi double %div11 to i32, !dbg !516
  tail call void @llvm.dbg.value(metadata !{i32 %conv12}, i64 0, metadata !303), !dbg !516
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([8 x i8]* @.str51, i64 0, i64 0), i32 %conv12) #8, !dbg !518
  br label %if.end15, !dbg !519

if.else:                                          ; preds = %if.then, %for.end
  %unb.0.lcssa35 = phi double [ %cond, %for.end ], [ 0.000000e+00, %if.then ]
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str52, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %log), !dbg !520
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.else, %entry
  %unb.1 = phi double [ %cond, %if.then10 ], [ %unb.0.lcssa35, %if.else ], [ 0.000000e+00, %entry ]
  ret double %unb.1, !dbg !521
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #6

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #7

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #7

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readonly }
attributes #10 = { nounwind optsize readnone }
attributes #11 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !137, metadata !138, metadata !306, metadata !137, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 51, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 51, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/nrnb.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136}
!6 = metadata !{i32 786472, metadata !"eNR_INL0100", i64 0} ; [ DW_TAG_enumerator ] [eNR_INL0100 :: 0]
!7 = metadata !{i32 786472, metadata !"eNR_INL0110", i64 1} ; [ DW_TAG_enumerator ] [eNR_INL0110 :: 1]
!8 = metadata !{i32 786472, metadata !"eNR_INL0200", i64 2} ; [ DW_TAG_enumerator ] [eNR_INL0200 :: 2]
!9 = metadata !{i32 786472, metadata !"eNR_INL0210", i64 3} ; [ DW_TAG_enumerator ] [eNR_INL0210 :: 3]
!10 = metadata !{i32 786472, metadata !"eNR_INL0300", i64 4} ; [ DW_TAG_enumerator ] [eNR_INL0300 :: 4]
!11 = metadata !{i32 786472, metadata !"eNR_INL0310", i64 5} ; [ DW_TAG_enumerator ] [eNR_INL0310 :: 5]
!12 = metadata !{i32 786472, metadata !"eNR_INL0301", i64 6} ; [ DW_TAG_enumerator ] [eNR_INL0301 :: 6]
!13 = metadata !{i32 786472, metadata !"eNR_INL0302", i64 7} ; [ DW_TAG_enumerator ] [eNR_INL0302 :: 7]
!14 = metadata !{i32 786472, metadata !"eNR_INL0400", i64 8} ; [ DW_TAG_enumerator ] [eNR_INL0400 :: 8]
!15 = metadata !{i32 786472, metadata !"eNR_INL0410", i64 9} ; [ DW_TAG_enumerator ] [eNR_INL0410 :: 9]
!16 = metadata !{i32 786472, metadata !"eNR_INL0401", i64 10} ; [ DW_TAG_enumerator ] [eNR_INL0401 :: 10]
!17 = metadata !{i32 786472, metadata !"eNR_INL0402", i64 11} ; [ DW_TAG_enumerator ] [eNR_INL0402 :: 11]
!18 = metadata !{i32 786472, metadata !"eNR_INL1000", i64 12} ; [ DW_TAG_enumerator ] [eNR_INL1000 :: 12]
!19 = metadata !{i32 786472, metadata !"eNR_INL1010", i64 13} ; [ DW_TAG_enumerator ] [eNR_INL1010 :: 13]
!20 = metadata !{i32 786472, metadata !"eNR_INL1020", i64 14} ; [ DW_TAG_enumerator ] [eNR_INL1020 :: 14]
!21 = metadata !{i32 786472, metadata !"eNR_INL1030", i64 15} ; [ DW_TAG_enumerator ] [eNR_INL1030 :: 15]
!22 = metadata !{i32 786472, metadata !"eNR_INL1100", i64 16} ; [ DW_TAG_enumerator ] [eNR_INL1100 :: 16]
!23 = metadata !{i32 786472, metadata !"eNR_INL1110", i64 17} ; [ DW_TAG_enumerator ] [eNR_INL1110 :: 17]
!24 = metadata !{i32 786472, metadata !"eNR_INL1120", i64 18} ; [ DW_TAG_enumerator ] [eNR_INL1120 :: 18]
!25 = metadata !{i32 786472, metadata !"eNR_INL1130", i64 19} ; [ DW_TAG_enumerator ] [eNR_INL1130 :: 19]
!26 = metadata !{i32 786472, metadata !"eNR_INL1200", i64 20} ; [ DW_TAG_enumerator ] [eNR_INL1200 :: 20]
!27 = metadata !{i32 786472, metadata !"eNR_INL1210", i64 21} ; [ DW_TAG_enumerator ] [eNR_INL1210 :: 21]
!28 = metadata !{i32 786472, metadata !"eNR_INL1220", i64 22} ; [ DW_TAG_enumerator ] [eNR_INL1220 :: 22]
!29 = metadata !{i32 786472, metadata !"eNR_INL1230", i64 23} ; [ DW_TAG_enumerator ] [eNR_INL1230 :: 23]
!30 = metadata !{i32 786472, metadata !"eNR_INL1300", i64 24} ; [ DW_TAG_enumerator ] [eNR_INL1300 :: 24]
!31 = metadata !{i32 786472, metadata !"eNR_INL1310", i64 25} ; [ DW_TAG_enumerator ] [eNR_INL1310 :: 25]
!32 = metadata !{i32 786472, metadata !"eNR_INL1320", i64 26} ; [ DW_TAG_enumerator ] [eNR_INL1320 :: 26]
!33 = metadata !{i32 786472, metadata !"eNR_INL1330", i64 27} ; [ DW_TAG_enumerator ] [eNR_INL1330 :: 27]
!34 = metadata !{i32 786472, metadata !"eNR_INL1400", i64 28} ; [ DW_TAG_enumerator ] [eNR_INL1400 :: 28]
!35 = metadata !{i32 786472, metadata !"eNR_INL1410", i64 29} ; [ DW_TAG_enumerator ] [eNR_INL1410 :: 29]
!36 = metadata !{i32 786472, metadata !"eNR_INL1420", i64 30} ; [ DW_TAG_enumerator ] [eNR_INL1420 :: 30]
!37 = metadata !{i32 786472, metadata !"eNR_INL1430", i64 31} ; [ DW_TAG_enumerator ] [eNR_INL1430 :: 31]
!38 = metadata !{i32 786472, metadata !"eNR_INL2000", i64 32} ; [ DW_TAG_enumerator ] [eNR_INL2000 :: 32]
!39 = metadata !{i32 786472, metadata !"eNR_INL2010", i64 33} ; [ DW_TAG_enumerator ] [eNR_INL2010 :: 33]
!40 = metadata !{i32 786472, metadata !"eNR_INL2020", i64 34} ; [ DW_TAG_enumerator ] [eNR_INL2020 :: 34]
!41 = metadata !{i32 786472, metadata !"eNR_INL2030", i64 35} ; [ DW_TAG_enumerator ] [eNR_INL2030 :: 35]
!42 = metadata !{i32 786472, metadata !"eNR_INL2100", i64 36} ; [ DW_TAG_enumerator ] [eNR_INL2100 :: 36]
!43 = metadata !{i32 786472, metadata !"eNR_INL2110", i64 37} ; [ DW_TAG_enumerator ] [eNR_INL2110 :: 37]
!44 = metadata !{i32 786472, metadata !"eNR_INL2120", i64 38} ; [ DW_TAG_enumerator ] [eNR_INL2120 :: 38]
!45 = metadata !{i32 786472, metadata !"eNR_INL2130", i64 39} ; [ DW_TAG_enumerator ] [eNR_INL2130 :: 39]
!46 = metadata !{i32 786472, metadata !"eNR_INL2200", i64 40} ; [ DW_TAG_enumerator ] [eNR_INL2200 :: 40]
!47 = metadata !{i32 786472, metadata !"eNR_INL2210", i64 41} ; [ DW_TAG_enumerator ] [eNR_INL2210 :: 41]
!48 = metadata !{i32 786472, metadata !"eNR_INL2220", i64 42} ; [ DW_TAG_enumerator ] [eNR_INL2220 :: 42]
!49 = metadata !{i32 786472, metadata !"eNR_INL2230", i64 43} ; [ DW_TAG_enumerator ] [eNR_INL2230 :: 43]
!50 = metadata !{i32 786472, metadata !"eNR_INL2300", i64 44} ; [ DW_TAG_enumerator ] [eNR_INL2300 :: 44]
!51 = metadata !{i32 786472, metadata !"eNR_INL2310", i64 45} ; [ DW_TAG_enumerator ] [eNR_INL2310 :: 45]
!52 = metadata !{i32 786472, metadata !"eNR_INL2320", i64 46} ; [ DW_TAG_enumerator ] [eNR_INL2320 :: 46]
!53 = metadata !{i32 786472, metadata !"eNR_INL2330", i64 47} ; [ DW_TAG_enumerator ] [eNR_INL2330 :: 47]
!54 = metadata !{i32 786472, metadata !"eNR_INL2400", i64 48} ; [ DW_TAG_enumerator ] [eNR_INL2400 :: 48]
!55 = metadata !{i32 786472, metadata !"eNR_INL2410", i64 49} ; [ DW_TAG_enumerator ] [eNR_INL2410 :: 49]
!56 = metadata !{i32 786472, metadata !"eNR_INL2420", i64 50} ; [ DW_TAG_enumerator ] [eNR_INL2420 :: 50]
!57 = metadata !{i32 786472, metadata !"eNR_INL2430", i64 51} ; [ DW_TAG_enumerator ] [eNR_INL2430 :: 51]
!58 = metadata !{i32 786472, metadata !"eNR_INL3000", i64 52} ; [ DW_TAG_enumerator ] [eNR_INL3000 :: 52]
!59 = metadata !{i32 786472, metadata !"eNR_INL3001", i64 53} ; [ DW_TAG_enumerator ] [eNR_INL3001 :: 53]
!60 = metadata !{i32 786472, metadata !"eNR_INL3002", i64 54} ; [ DW_TAG_enumerator ] [eNR_INL3002 :: 54]
!61 = metadata !{i32 786472, metadata !"eNR_INL3010", i64 55} ; [ DW_TAG_enumerator ] [eNR_INL3010 :: 55]
!62 = metadata !{i32 786472, metadata !"eNR_INL3020", i64 56} ; [ DW_TAG_enumerator ] [eNR_INL3020 :: 56]
!63 = metadata !{i32 786472, metadata !"eNR_INL3030", i64 57} ; [ DW_TAG_enumerator ] [eNR_INL3030 :: 57]
!64 = metadata !{i32 786472, metadata !"eNR_INL3100", i64 58} ; [ DW_TAG_enumerator ] [eNR_INL3100 :: 58]
!65 = metadata !{i32 786472, metadata !"eNR_INL3110", i64 59} ; [ DW_TAG_enumerator ] [eNR_INL3110 :: 59]
!66 = metadata !{i32 786472, metadata !"eNR_INL3120", i64 60} ; [ DW_TAG_enumerator ] [eNR_INL3120 :: 60]
!67 = metadata !{i32 786472, metadata !"eNR_INL3130", i64 61} ; [ DW_TAG_enumerator ] [eNR_INL3130 :: 61]
!68 = metadata !{i32 786472, metadata !"eNR_INL3200", i64 62} ; [ DW_TAG_enumerator ] [eNR_INL3200 :: 62]
!69 = metadata !{i32 786472, metadata !"eNR_INL3210", i64 63} ; [ DW_TAG_enumerator ] [eNR_INL3210 :: 63]
!70 = metadata !{i32 786472, metadata !"eNR_INL3220", i64 64} ; [ DW_TAG_enumerator ] [eNR_INL3220 :: 64]
!71 = metadata !{i32 786472, metadata !"eNR_INL3230", i64 65} ; [ DW_TAG_enumerator ] [eNR_INL3230 :: 65]
!72 = metadata !{i32 786472, metadata !"eNR_INL3300", i64 66} ; [ DW_TAG_enumerator ] [eNR_INL3300 :: 66]
!73 = metadata !{i32 786472, metadata !"eNR_INL3301", i64 67} ; [ DW_TAG_enumerator ] [eNR_INL3301 :: 67]
!74 = metadata !{i32 786472, metadata !"eNR_INL3302", i64 68} ; [ DW_TAG_enumerator ] [eNR_INL3302 :: 68]
!75 = metadata !{i32 786472, metadata !"eNR_INL3310", i64 69} ; [ DW_TAG_enumerator ] [eNR_INL3310 :: 69]
!76 = metadata !{i32 786472, metadata !"eNR_INL3320", i64 70} ; [ DW_TAG_enumerator ] [eNR_INL3320 :: 70]
!77 = metadata !{i32 786472, metadata !"eNR_INL3330", i64 71} ; [ DW_TAG_enumerator ] [eNR_INL3330 :: 71]
!78 = metadata !{i32 786472, metadata !"eNR_INL3400", i64 72} ; [ DW_TAG_enumerator ] [eNR_INL3400 :: 72]
!79 = metadata !{i32 786472, metadata !"eNR_INL3401", i64 73} ; [ DW_TAG_enumerator ] [eNR_INL3401 :: 73]
!80 = metadata !{i32 786472, metadata !"eNR_INL3402", i64 74} ; [ DW_TAG_enumerator ] [eNR_INL3402 :: 74]
!81 = metadata !{i32 786472, metadata !"eNR_INL3410", i64 75} ; [ DW_TAG_enumerator ] [eNR_INL3410 :: 75]
!82 = metadata !{i32 786472, metadata !"eNR_INL3420", i64 76} ; [ DW_TAG_enumerator ] [eNR_INL3420 :: 76]
!83 = metadata !{i32 786472, metadata !"eNR_INL3430", i64 77} ; [ DW_TAG_enumerator ] [eNR_INL3430 :: 77]
!84 = metadata !{i32 786472, metadata !"eNR_INLOOP", i64 78} ; [ DW_TAG_enumerator ] [eNR_INLOOP :: 78]
!85 = metadata !{i32 786472, metadata !"eNR_INL_IATOM", i64 78} ; [ DW_TAG_enumerator ] [eNR_INL_IATOM :: 78]
!86 = metadata !{i32 786472, metadata !"eNR_WEIGHTS", i64 79} ; [ DW_TAG_enumerator ] [eNR_WEIGHTS :: 79]
!87 = metadata !{i32 786472, metadata !"eNR_SPREADQ", i64 80} ; [ DW_TAG_enumerator ] [eNR_SPREADQ :: 80]
!88 = metadata !{i32 786472, metadata !"eNR_SPREADQBSP", i64 81} ; [ DW_TAG_enumerator ] [eNR_SPREADQBSP :: 81]
!89 = metadata !{i32 786472, metadata !"eNR_GATHERF", i64 82} ; [ DW_TAG_enumerator ] [eNR_GATHERF :: 82]
!90 = metadata !{i32 786472, metadata !"eNR_GATHERFBSP", i64 83} ; [ DW_TAG_enumerator ] [eNR_GATHERFBSP :: 83]
!91 = metadata !{i32 786472, metadata !"eNR_FFT", i64 84} ; [ DW_TAG_enumerator ] [eNR_FFT :: 84]
!92 = metadata !{i32 786472, metadata !"eNR_CONV", i64 85} ; [ DW_TAG_enumerator ] [eNR_CONV :: 85]
!93 = metadata !{i32 786472, metadata !"eNR_SOLVEPME", i64 86} ; [ DW_TAG_enumerator ] [eNR_SOLVEPME :: 86]
!94 = metadata !{i32 786472, metadata !"eNR_NS", i64 87} ; [ DW_TAG_enumerator ] [eNR_NS :: 87]
!95 = metadata !{i32 786472, metadata !"eNR_RESETX", i64 88} ; [ DW_TAG_enumerator ] [eNR_RESETX :: 88]
!96 = metadata !{i32 786472, metadata !"eNR_SHIFTX", i64 89} ; [ DW_TAG_enumerator ] [eNR_SHIFTX :: 89]
!97 = metadata !{i32 786472, metadata !"eNR_CGCM", i64 90} ; [ DW_TAG_enumerator ] [eNR_CGCM :: 90]
!98 = metadata !{i32 786472, metadata !"eNR_FSUM", i64 91} ; [ DW_TAG_enumerator ] [eNR_FSUM :: 91]
!99 = metadata !{i32 786472, metadata !"eNR_BONDS", i64 92} ; [ DW_TAG_enumerator ] [eNR_BONDS :: 92]
!100 = metadata !{i32 786472, metadata !"eNR_G96BONDS", i64 93} ; [ DW_TAG_enumerator ] [eNR_G96BONDS :: 93]
!101 = metadata !{i32 786472, metadata !"eNR_ANGLES", i64 94} ; [ DW_TAG_enumerator ] [eNR_ANGLES :: 94]
!102 = metadata !{i32 786472, metadata !"eNR_G96ANGLES", i64 95} ; [ DW_TAG_enumerator ] [eNR_G96ANGLES :: 95]
!103 = metadata !{i32 786472, metadata !"eNR_PROPER", i64 96} ; [ DW_TAG_enumerator ] [eNR_PROPER :: 96]
!104 = metadata !{i32 786472, metadata !"eNR_IMPROPER", i64 97} ; [ DW_TAG_enumerator ] [eNR_IMPROPER :: 97]
!105 = metadata !{i32 786472, metadata !"eNR_RB", i64 98} ; [ DW_TAG_enumerator ] [eNR_RB :: 98]
!106 = metadata !{i32 786472, metadata !"eNR_DISRES", i64 99} ; [ DW_TAG_enumerator ] [eNR_DISRES :: 99]
!107 = metadata !{i32 786472, metadata !"eNR_ORIRES", i64 100} ; [ DW_TAG_enumerator ] [eNR_ORIRES :: 100]
!108 = metadata !{i32 786472, metadata !"eNR_POSRES", i64 101} ; [ DW_TAG_enumerator ] [eNR_POSRES :: 101]
!109 = metadata !{i32 786472, metadata !"eNR_ANGRES", i64 102} ; [ DW_TAG_enumerator ] [eNR_ANGRES :: 102]
!110 = metadata !{i32 786472, metadata !"eNR_ANGRESZ", i64 103} ; [ DW_TAG_enumerator ] [eNR_ANGRESZ :: 103]
!111 = metadata !{i32 786472, metadata !"eNR_MORSE", i64 104} ; [ DW_TAG_enumerator ] [eNR_MORSE :: 104]
!112 = metadata !{i32 786472, metadata !"eNR_CUBICBONDS", i64 105} ; [ DW_TAG_enumerator ] [eNR_CUBICBONDS :: 105]
!113 = metadata !{i32 786472, metadata !"eNR_WPOL", i64 106} ; [ DW_TAG_enumerator ] [eNR_WPOL :: 106]
!114 = metadata !{i32 786472, metadata !"eNR_VIRIAL", i64 107} ; [ DW_TAG_enumerator ] [eNR_VIRIAL :: 107]
!115 = metadata !{i32 786472, metadata !"eNR_UPDATE", i64 108} ; [ DW_TAG_enumerator ] [eNR_UPDATE :: 108]
!116 = metadata !{i32 786472, metadata !"eNR_EXTUPDATE", i64 109} ; [ DW_TAG_enumerator ] [eNR_EXTUPDATE :: 109]
!117 = metadata !{i32 786472, metadata !"eNR_STOPCM", i64 110} ; [ DW_TAG_enumerator ] [eNR_STOPCM :: 110]
!118 = metadata !{i32 786472, metadata !"eNR_PCOUPL", i64 111} ; [ DW_TAG_enumerator ] [eNR_PCOUPL :: 111]
!119 = metadata !{i32 786472, metadata !"eNR_EKIN", i64 112} ; [ DW_TAG_enumerator ] [eNR_EKIN :: 112]
!120 = metadata !{i32 786472, metadata !"eNR_LINCS", i64 113} ; [ DW_TAG_enumerator ] [eNR_LINCS :: 113]
!121 = metadata !{i32 786472, metadata !"eNR_LINCSMAT", i64 114} ; [ DW_TAG_enumerator ] [eNR_LINCSMAT :: 114]
!122 = metadata !{i32 786472, metadata !"eNR_SHAKE", i64 115} ; [ DW_TAG_enumerator ] [eNR_SHAKE :: 115]
!123 = metadata !{i32 786472, metadata !"eNR_SHAKE_V", i64 116} ; [ DW_TAG_enumerator ] [eNR_SHAKE_V :: 116]
!124 = metadata !{i32 786472, metadata !"eNR_SHAKE_RIJ", i64 117} ; [ DW_TAG_enumerator ] [eNR_SHAKE_RIJ :: 117]
!125 = metadata !{i32 786472, metadata !"eNR_SHAKE_VIR", i64 118} ; [ DW_TAG_enumerator ] [eNR_SHAKE_VIR :: 118]
!126 = metadata !{i32 786472, metadata !"eNR_SETTLE", i64 119} ; [ DW_TAG_enumerator ] [eNR_SETTLE :: 119]
!127 = metadata !{i32 786472, metadata !"eNR_PSHAKEINITLD", i64 120} ; [ DW_TAG_enumerator ] [eNR_PSHAKEINITLD :: 120]
!128 = metadata !{i32 786472, metadata !"eNR_PSHAKEINITMD", i64 121} ; [ DW_TAG_enumerator ] [eNR_PSHAKEINITMD :: 121]
!129 = metadata !{i32 786472, metadata !"eNR_PSHAKE", i64 122} ; [ DW_TAG_enumerator ] [eNR_PSHAKE :: 122]
!130 = metadata !{i32 786472, metadata !"eNR_DUM2", i64 123} ; [ DW_TAG_enumerator ] [eNR_DUM2 :: 123]
!131 = metadata !{i32 786472, metadata !"eNR_DUM3", i64 124} ; [ DW_TAG_enumerator ] [eNR_DUM3 :: 124]
!132 = metadata !{i32 786472, metadata !"eNR_DUM3FD", i64 125} ; [ DW_TAG_enumerator ] [eNR_DUM3FD :: 125]
!133 = metadata !{i32 786472, metadata !"eNR_DUM3FAD", i64 126} ; [ DW_TAG_enumerator ] [eNR_DUM3FAD :: 126]
!134 = metadata !{i32 786472, metadata !"eNR_DUM3OUT", i64 127} ; [ DW_TAG_enumerator ] [eNR_DUM3OUT :: 127]
!135 = metadata !{i32 786472, metadata !"eNR_DUM4FD", i64 128} ; [ DW_TAG_enumerator ] [eNR_DUM4FD :: 128]
!136 = metadata !{i32 786472, metadata !"eNRNB", i64 129} ; [ DW_TAG_enumerator ] [eNRNB :: 129]
!137 = metadata !{i32 0}
!138 = metadata !{metadata !139, metadata !156, metadata !163, metadata !171, metadata !235, metadata !244, metadata !263, metadata !268, metadata !273, metadata !293}
!139 = metadata !{i32 786478, metadata !1, metadata !140, metadata !"init_nrnb", metadata !"init_nrnb", metadata !"", i32 183, metadata !141, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_nrnb*)* @init_nrnb, null, null, metadata !152, i32 184} ; [ DW_TAG_subprogram ] [line 183] [def] [scope 184] [init_nrnb]
!140 = metadata !{i32 786473, metadata !1}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!141 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !142, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!142 = metadata !{null, metadata !143}
!143 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !144} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_nrnb]
!144 = metadata !{i32 786454, metadata !1, null, metadata !"t_nrnb", i32 95, i64 0, i64 0, i64 0, i32 0, metadata !145} ; [ DW_TAG_typedef ] [t_nrnb] [line 95, size 0, align 0, offset 0] [from ]
!145 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 93, i64 8256, i64 64, i32 0, i32 0, null, metadata !146, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 93, size 8256, align 64, offset 0] [from ]
!146 = metadata !{metadata !147}
!147 = metadata !{i32 786445, metadata !4, metadata !145, metadata !"n", i32 94, i64 8256, i64 64, i64 0, i32 0, metadata !148} ; [ DW_TAG_member ] [n] [line 94, size 8256, align 64, offset 0] [from ]
!148 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8256, i64 64, i32 0, i32 0, metadata !149, metadata !150, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8256, align 64, offset 0] [from double]
!149 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!150 = metadata !{metadata !151}
!151 = metadata !{i32 786465, i64 0, i64 129}     ; [ DW_TAG_subrange_type ] [0, 128]
!152 = metadata !{metadata !153, metadata !154}
!153 = metadata !{i32 786689, metadata !139, metadata !"nrnb", metadata !140, i32 16777399, metadata !143, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrnb] [line 183]
!154 = metadata !{i32 786688, metadata !139, metadata !"i", metadata !140, i32 185, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 185]
!155 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!156 = metadata !{i32 786478, metadata !1, metadata !140, metadata !"cp_nrnb", metadata !"cp_nrnb", metadata !"", i32 191, metadata !157, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_nrnb*, %struct.t_nrnb*)* @cp_nrnb, null, null, metadata !159, i32 192} ; [ DW_TAG_subprogram ] [line 191] [def] [scope 192] [cp_nrnb]
!157 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !158, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!158 = metadata !{null, metadata !143, metadata !143}
!159 = metadata !{metadata !160, metadata !161, metadata !162}
!160 = metadata !{i32 786689, metadata !156, metadata !"dest", metadata !140, i32 16777407, metadata !143, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dest] [line 191]
!161 = metadata !{i32 786689, metadata !156, metadata !"src", metadata !140, i32 33554623, metadata !143, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 191]
!162 = metadata !{i32 786688, metadata !156, metadata !"i", metadata !140, i32 193, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 193]
!163 = metadata !{i32 786478, metadata !1, metadata !140, metadata !"add_nrnb", metadata !"add_nrnb", metadata !"", i32 199, metadata !164, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_nrnb*, %struct.t_nrnb*, %struct.t_nrnb*)* @add_nrnb, null, null, metadata !166, i32 200} ; [ DW_TAG_subprogram ] [line 199] [def] [scope 200] [add_nrnb]
!164 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !165, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!165 = metadata !{null, metadata !143, metadata !143, metadata !143}
!166 = metadata !{metadata !167, metadata !168, metadata !169, metadata !170}
!167 = metadata !{i32 786689, metadata !163, metadata !"dest", metadata !140, i32 16777415, metadata !143, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dest] [line 199]
!168 = metadata !{i32 786689, metadata !163, metadata !"s1", metadata !140, i32 33554631, metadata !143, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 199]
!169 = metadata !{i32 786689, metadata !163, metadata !"s2", metadata !140, i32 50331847, metadata !143, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 199]
!170 = metadata !{i32 786688, metadata !163, metadata !"i", metadata !140, i32 201, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 201]
!171 = metadata !{i32 786478, metadata !1, metadata !140, metadata !"print_nrnb", metadata !"print_nrnb", metadata !"", i32 207, metadata !172, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_nrnb*)* @print_nrnb, null, null, metadata !231, i32 208} ; [ DW_TAG_subprogram ] [line 207] [def] [scope 208] [print_nrnb]
!172 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !173, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!173 = metadata !{null, metadata !174, metadata !143}
!174 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !175} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!175 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !176} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!176 = metadata !{i32 786451, metadata !177, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !178, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!177 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!178 = metadata !{metadata !179, metadata !180, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !201, metadata !202, metadata !203, metadata !204, metadata !207, metadata !209, metadata !211, metadata !215, metadata !217, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !226, metadata !227}
!179 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !155} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!180 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !181} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!181 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !182} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!182 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!183 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !181} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!184 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !181} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!185 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !181} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!186 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !181} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!187 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !181} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!188 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !181} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!189 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !181} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!190 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !181} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!191 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !181} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!192 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !181} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!193 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !194} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!194 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !195} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!195 = metadata !{i32 786451, metadata !177, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !196, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!196 = metadata !{metadata !197, metadata !198, metadata !200}
!197 = metadata !{i32 786445, metadata !177, metadata !195, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !194} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!198 = metadata !{i32 786445, metadata !177, metadata !195, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !199} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!199 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !176} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!200 = metadata !{i32 786445, metadata !177, metadata !195, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !155} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!201 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !199} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!202 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !155} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!203 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !155} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!204 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !205} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!205 = metadata !{i32 786454, metadata !177, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !206} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!206 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!207 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !208} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!208 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!209 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !210} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!210 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!211 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !212} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!212 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !182, metadata !213, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!213 = metadata !{metadata !214}
!214 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!215 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !216} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!216 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!217 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !218} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!218 = metadata !{i32 786454, metadata !177, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !206} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!219 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !216} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!220 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !216} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!221 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !216} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!222 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !216} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!223 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !224} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!224 = metadata !{i32 786454, metadata !177, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !225} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!225 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!226 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !155} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!227 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !228} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!228 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !182, metadata !229, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!229 = metadata !{metadata !230}
!230 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!231 = metadata !{metadata !232, metadata !233, metadata !234}
!232 = metadata !{i32 786689, metadata !171, metadata !"out", metadata !140, i32 16777423, metadata !174, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 207]
!233 = metadata !{i32 786689, metadata !171, metadata !"nrnb", metadata !140, i32 33554639, metadata !143, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrnb] [line 207]
!234 = metadata !{i32 786688, metadata !171, metadata !"i", metadata !140, i32 209, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 209]
!235 = metadata !{i32 786478, metadata !1, metadata !140, metadata !"_inc_nrnb", metadata !"_inc_nrnb", metadata !"", i32 215, metadata !236, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_nrnb*, i32, i32, i8*, i32)* @_inc_nrnb, null, null, metadata !238, i32 216} ; [ DW_TAG_subprogram ] [line 215] [def] [scope 216] [_inc_nrnb]
!236 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !237, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!237 = metadata !{null, metadata !143, metadata !155, metadata !155, metadata !181, metadata !155}
!238 = metadata !{metadata !239, metadata !240, metadata !241, metadata !242, metadata !243}
!239 = metadata !{i32 786689, metadata !235, metadata !"nrnb", metadata !140, i32 16777431, metadata !143, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrnb] [line 215]
!240 = metadata !{i32 786689, metadata !235, metadata !"enr", metadata !140, i32 33554647, metadata !155, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [enr] [line 215]
!241 = metadata !{i32 786689, metadata !235, metadata !"inc", metadata !140, i32 50331863, metadata !155, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inc] [line 215]
!242 = metadata !{i32 786689, metadata !235, metadata !"file", metadata !140, i32 67109079, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 215]
!243 = metadata !{i32 786689, metadata !235, metadata !"line", metadata !140, i32 83886295, metadata !155, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 215]
!244 = metadata !{i32 786478, metadata !1, metadata !140, metadata !"print_perf", metadata !"print_perf", metadata !"", i32 224, metadata !245, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, double, double, float, %struct.t_nrnb*, i32)* @print_perf, null, null, metadata !249, i32 226} ; [ DW_TAG_subprogram ] [line 224] [def] [scope 226] [print_perf]
!245 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !246, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!246 = metadata !{null, metadata !174, metadata !149, metadata !149, metadata !247, metadata !143, metadata !155}
!247 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !248} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!248 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!249 = metadata !{metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262}
!250 = metadata !{i32 786689, metadata !244, metadata !"out", metadata !140, i32 16777440, metadata !174, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 224]
!251 = metadata !{i32 786689, metadata !244, metadata !"nodetime", metadata !140, i32 33554656, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nodetime] [line 224]
!252 = metadata !{i32 786689, metadata !244, metadata !"realtime", metadata !140, i32 50331872, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [realtime] [line 224]
!253 = metadata !{i32 786689, metadata !244, metadata !"runtime", metadata !140, i32 67109088, metadata !247, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [runtime] [line 224]
!254 = metadata !{i32 786689, metadata !244, metadata !"nrnb", metadata !140, i32 83886305, metadata !143, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrnb] [line 225]
!255 = metadata !{i32 786689, metadata !244, metadata !"nprocs", metadata !140, i32 100663521, metadata !155, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nprocs] [line 225]
!256 = metadata !{i32 786688, metadata !244, metadata !"i", metadata !140, i32 227, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 227]
!257 = metadata !{i32 786688, metadata !244, metadata !"nbfs", metadata !140, i32 228, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbfs] [line 228]
!258 = metadata !{i32 786688, metadata !244, metadata !"mni", metadata !140, i32 228, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mni] [line 228]
!259 = metadata !{i32 786688, metadata !244, metadata !"frac", metadata !140, i32 228, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [frac] [line 228]
!260 = metadata !{i32 786688, metadata !244, metadata !"tfrac", metadata !140, i32 228, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tfrac] [line 228]
!261 = metadata !{i32 786688, metadata !244, metadata !"mflop", metadata !140, i32 228, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mflop] [line 228]
!262 = metadata !{i32 786688, metadata !244, metadata !"tflop", metadata !140, i32 228, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tflop] [line 228]
!263 = metadata !{i32 786478, metadata !1, metadata !140, metadata !"cost_nrnb", metadata !"cost_nrnb", metadata !"", i32 294, metadata !264, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @cost_nrnb, null, null, metadata !266, i32 295} ; [ DW_TAG_subprogram ] [line 294] [def] [scope 295] [cost_nrnb]
!264 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !265, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!265 = metadata !{metadata !155, metadata !155}
!266 = metadata !{metadata !267}
!267 = metadata !{i32 786689, metadata !263, metadata !"enr", metadata !140, i32 16777510, metadata !155, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [enr] [line 294]
!268 = metadata !{i32 786478, metadata !1, metadata !140, metadata !"nrnb_str", metadata !"nrnb_str", metadata !"", i32 299, metadata !269, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32)* @nrnb_str, null, null, metadata !271, i32 300} ; [ DW_TAG_subprogram ] [line 299] [def] [scope 300] [nrnb_str]
!269 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !270, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!270 = metadata !{metadata !181, metadata !155}
!271 = metadata !{metadata !272}
!272 = metadata !{i32 786689, metadata !268, metadata !"enr", metadata !140, i32 16777515, metadata !155, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [enr] [line 299]
!273 = metadata !{i32 786478, metadata !1, metadata !140, metadata !"pr_load", metadata !"pr_load", metadata !"", i32 342, metadata !274, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, %struct.t_nrnb*)* @pr_load, null, null, metadata !276, i32 343} ; [ DW_TAG_subprogram ] [line 342] [def] [scope 343] [pr_load]
!274 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !275, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!275 = metadata !{null, metadata !174, metadata !155, metadata !143}
!276 = metadata !{metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !289, metadata !290, metadata !291, metadata !292}
!277 = metadata !{i32 786689, metadata !273, metadata !"log", metadata !140, i32 16777558, metadata !174, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 342]
!278 = metadata !{i32 786689, metadata !273, metadata !"nprocs", metadata !140, i32 33554774, metadata !155, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nprocs] [line 342]
!279 = metadata !{i32 786689, metadata !273, metadata !"nrnb", metadata !140, i32 50331990, metadata !143, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrnb] [line 342]
!280 = metadata !{i32 786688, metadata !273, metadata !"i", metadata !140, i32 344, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 344]
!281 = metadata !{i32 786688, metadata !273, metadata !"j", metadata !140, i32 344, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 344]
!282 = metadata !{i32 786688, metadata !273, metadata !"perc", metadata !140, i32 344, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [perc] [line 344]
!283 = metadata !{i32 786688, metadata !273, metadata !"dperc", metadata !140, i32 345, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dperc] [line 345]
!284 = metadata !{i32 786688, metadata !273, metadata !"unb", metadata !140, i32 345, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [unb] [line 345]
!285 = metadata !{i32 786688, metadata !273, metadata !"uf", metadata !140, i32 345, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uf] [line 345]
!286 = metadata !{i32 786688, metadata !273, metadata !"us", metadata !140, i32 345, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [us] [line 345]
!287 = metadata !{i32 786688, metadata !273, metadata !"ftot", metadata !140, i32 346, metadata !288, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ftot] [line 346]
!288 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !149} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!289 = metadata !{i32 786688, metadata !273, metadata !"fav", metadata !140, i32 346, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fav] [line 346]
!290 = metadata !{i32 786688, metadata !273, metadata !"stot", metadata !140, i32 347, metadata !288, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stot] [line 347]
!291 = metadata !{i32 786688, metadata !273, metadata !"sav", metadata !140, i32 347, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sav] [line 347]
!292 = metadata !{i32 786688, metadata !273, metadata !"av", metadata !140, i32 348, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [av] [line 348]
!293 = metadata !{i32 786478, metadata !1, metadata !140, metadata !"pr_av", metadata !"pr_av", metadata !"", i32 317, metadata !294, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct._IO_FILE*, i32, double, double*, i8*)* @pr_av, null, null, metadata !296, i32 318} ; [ DW_TAG_subprogram ] [line 317] [local] [def] [scope 318] [pr_av]
!294 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !295, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!295 = metadata !{metadata !149, metadata !174, metadata !155, metadata !149, metadata !288, metadata !181}
!296 = metadata !{metadata !297, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305}
!297 = metadata !{i32 786689, metadata !293, metadata !"log", metadata !140, i32 16777533, metadata !174, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 317]
!298 = metadata !{i32 786689, metadata !293, metadata !"nprocs", metadata !140, i32 33554749, metadata !155, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nprocs] [line 317]
!299 = metadata !{i32 786689, metadata !293, metadata !"fav", metadata !140, i32 50331965, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fav] [line 317]
!300 = metadata !{i32 786689, metadata !293, metadata !"ftot", metadata !140, i32 67109181, metadata !288, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ftot] [line 317]
!301 = metadata !{i32 786689, metadata !293, metadata !"title", metadata !140, i32 83886397, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 317]
!302 = metadata !{i32 786688, metadata !293, metadata !"i", metadata !140, i32 319, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 319]
!303 = metadata !{i32 786688, metadata !293, metadata !"perc", metadata !140, i32 319, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [perc] [line 319]
!304 = metadata !{i32 786688, metadata !293, metadata !"dperc", metadata !140, i32 320, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dperc] [line 320]
!305 = metadata !{i32 786688, metadata !293, metadata !"unb", metadata !140, i32 320, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [unb] [line 320]
!306 = metadata !{metadata !307, metadata !311, metadata !312}
!307 = metadata !{i32 786484, i32 0, null, metadata !"shake_index", metadata !"shake_index", metadata !"", metadata !140, i32 311, metadata !308, i32 1, i32 1, [10 x i32]* @shake_index, null} ; [ DW_TAG_variable ] [shake_index] [line 311] [local] [def]
!308 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 320, i64 32, i32 0, i32 0, metadata !155, metadata !309, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 320, align 32, offset 0] [from int]
!309 = metadata !{metadata !310}
!310 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!311 = metadata !{i32 786484, i32 0, null, metadata !"force_index", metadata !"force_index", metadata !"", metadata !140, i32 304, metadata !308, i32 1, i32 1, [10 x i32]* @force_index, null} ; [ DW_TAG_variable ] [force_index] [line 304] [local] [def]
!312 = metadata !{i32 786484, i32 0, null, metadata !"nbdata", metadata !"nbdata", metadata !"", metadata !140, i32 51, metadata !313, i32 1, i32 1, <{ { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] } }>* @nbdata, null} ; [ DW_TAG_variable ] [nbdata] [line 51] [local] [def]
!313 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 16512, i64 64, i32 0, i32 0, metadata !314, metadata !150, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 16512, align 64, offset 0] [from t_nrnb_data]
!314 = metadata !{i32 786454, metadata !1, null, metadata !"t_nrnb_data", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !315} ; [ DW_TAG_typedef ] [t_nrnb_data] [line 48, size 0, align 0, offset 0] [from ]
!315 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 45, i64 128, i64 64, i32 0, i32 0, null, metadata !316, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 45, size 128, align 64, offset 0] [from ]
!316 = metadata !{metadata !317, metadata !318}
!317 = metadata !{i32 786445, metadata !1, metadata !315, metadata !"name", i32 46, i64 64, i64 64, i64 0, i32 0, metadata !181} ; [ DW_TAG_member ] [name] [line 46, size 64, align 64, offset 0] [from ]
!318 = metadata !{i32 786445, metadata !1, metadata !315, metadata !"flop", i32 47, i64 32, i64 32, i64 64, i32 0, metadata !155} ; [ DW_TAG_member ] [flop] [line 47, size 32, align 32, offset 64] [from int]
!319 = metadata !{i32 183, i32 0, metadata !139, null}
!320 = metadata !{i32 187, i32 0, metadata !321, null}
!321 = metadata !{i32 786443, metadata !1, metadata !139, i32 187, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!322 = metadata !{i32 188, i32 0, metadata !321, null}
!323 = metadata !{i32 189, i32 0, metadata !139, null}
!324 = metadata !{i32 191, i32 0, metadata !156, null}
!325 = metadata !{i32 195, i32 0, metadata !326, null}
!326 = metadata !{i32 786443, metadata !1, metadata !156, i32 195, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!327 = metadata !{i32 196, i32 0, metadata !326, null}
!328 = metadata !{metadata !"double", metadata !329}
!329 = metadata !{metadata !"omnipotent char", metadata !330}
!330 = metadata !{metadata !"Simple C/C++ TBAA"}
!331 = metadata !{i32 197, i32 0, metadata !156, null}
!332 = metadata !{i32 199, i32 0, metadata !163, null}
!333 = metadata !{i32 203, i32 0, metadata !334, null}
!334 = metadata !{i32 786443, metadata !1, metadata !163, i32 203, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!335 = metadata !{i32 204, i32 0, metadata !334, null}
!336 = metadata !{i32 205, i32 0, metadata !163, null}
!337 = metadata !{i32 207, i32 0, metadata !171, null}
!338 = metadata !{i32 211, i32 0, metadata !339, null}
!339 = metadata !{i32 786443, metadata !1, metadata !171, i32 211, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!340 = metadata !{i32 212, i32 0, metadata !339, null}
!341 = metadata !{metadata !"any pointer", metadata !329}
!342 = metadata !{i32 213, i32 0, metadata !171, null}
!343 = metadata !{i32 215, i32 0, metadata !235, null}
!344 = metadata !{i32 217, i32 0, metadata !235, null}
!345 = metadata !{i32 222, i32 0, metadata !235, null}
!346 = metadata !{i32 224, i32 0, metadata !244, null}
!347 = metadata !{i32 225, i32 0, metadata !244, null}
!348 = metadata !{i32 230, i32 0, metadata !244, null}
!349 = metadata !{i32 231, i32 0, metadata !350, null}
!350 = metadata !{i32 786443, metadata !1, metadata !244, i32 230, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!351 = metadata !{i32 232, i32 0, metadata !350, null}
!352 = metadata !{i32 236, i32 0, metadata !353, null}
!353 = metadata !{i32 786443, metadata !1, metadata !354, i32 235, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!354 = metadata !{i32 786443, metadata !1, metadata !244, i32 235, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!355 = metadata !{i32 237, i32 0, metadata !353, null}
!356 = metadata !{i32 238, i32 0, metadata !353, null}
!357 = metadata !{i32 239, i32 0, metadata !353, null}
!358 = metadata !{i32 241, i32 0, metadata !353, null}
!359 = metadata !{i32 235, i32 0, metadata !354, null}
!360 = metadata !{i32 245, i32 0, metadata !361, null}
!361 = metadata !{i32 786443, metadata !1, metadata !244, i32 244, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!362 = metadata !{metadata !"int", metadata !329}
!363 = metadata !{i32 244, i32 0, metadata !361, null}
!364 = metadata !{i32 247, i32 0, metadata !244, null}
!365 = metadata !{i32 248, i32 0, metadata !366, null}
!366 = metadata !{i32 786443, metadata !1, metadata !244, i32 247, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!367 = metadata !{i32 249, i32 0, metadata !366, null}
!368 = metadata !{i32 251, i32 0, metadata !244, null}
!369 = metadata !{i32 252, i32 0, metadata !244, null}
!370 = metadata !{i32 253, i32 0, metadata !371, null}
!371 = metadata !{i32 786443, metadata !1, metadata !244, i32 252, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!372 = metadata !{i32 254, i32 0, metadata !371, null}
!373 = metadata !{i32 255, i32 0, metadata !371, null}
!374 = metadata !{i32 257, i32 0, metadata !244, null}
!375 = metadata !{i32 258, i32 0, metadata !244, null}
!376 = metadata !{i32 259, i32 0, metadata !244, null}
!377 = metadata !{double 0.000000e+00}
!378 = metadata !{i32 261, i32 0, metadata !244, null}
!379 = metadata !{i32 262, i32 0, metadata !244, null}
!380 = metadata !{i32 263, i32 0, metadata !381, null}
!381 = metadata !{i32 786443, metadata !1, metadata !244, i32 263, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!382 = metadata !{i32 264, i32 0, metadata !383, null}
!383 = metadata !{i32 786443, metadata !1, metadata !381, i32 263, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!384 = metadata !{i32 265, i32 0, metadata !383, null}
!385 = metadata !{i32 266, i32 0, metadata !383, null}
!386 = metadata !{i32 267, i32 0, metadata !383, null}
!387 = metadata !{i32 268, i32 0, metadata !383, null}
!388 = metadata !{i32 269, i32 0, metadata !383, null}
!389 = metadata !{i32 272, i32 0, metadata !244, null}
!390 = metadata !{i32 274, i32 0, metadata !244, null}
!391 = metadata !{i32 275, i32 0, metadata !392, null}
!392 = metadata !{i32 786443, metadata !1, metadata !244, i32 274, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!393 = metadata !{i32 276, i32 0, metadata !392, null}
!394 = metadata !{i32 278, i32 0, metadata !392, null}
!395 = metadata !{i32 279, i32 0, metadata !396, null}
!396 = metadata !{i32 786443, metadata !1, metadata !392, i32 278, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!397 = metadata !{i32 280, i32 0, metadata !396, null}
!398 = metadata !{i32 281, i32 0, metadata !396, null}
!399 = metadata !{i32 282, i32 0, metadata !392, null}
!400 = metadata !{i32 283, i32 0, metadata !401, null}
!401 = metadata !{i32 786443, metadata !1, metadata !392, i32 282, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!402 = metadata !{i32 284, i32 0, metadata !401, null}
!403 = metadata !{i32 287, i32 0, metadata !401, null}
!404 = metadata !{i32 290, i32 0, metadata !401, null}
!405 = metadata !{i32 287, i32 0, metadata !244, null}
!406 = metadata !{i32 294, i32 0, metadata !263, null}
!407 = metadata !{i32 296, i32 0, metadata !263, null}
!408 = metadata !{i32 299, i32 0, metadata !268, null}
!409 = metadata !{i32 301, i32 0, metadata !268, null}
!410 = metadata !{i32 342, i32 0, metadata !273, null}
!411 = metadata !{i32 350, i32 0, metadata !273, null}
!412 = metadata !{i32 351, i32 0, metadata !273, null}
!413 = metadata !{i32 352, i32 0, metadata !273, null}
!414 = metadata !{i32 786689, metadata !139, metadata !"nrnb", metadata !140, i32 16777399, metadata !143, i32 0, metadata !415} ; [ DW_TAG_arg_variable ] [nrnb] [line 183]
!415 = metadata !{i32 353, i32 0, metadata !273, null}
!416 = metadata !{i32 183, i32 0, metadata !139, metadata !415}
!417 = metadata !{i32 786688, metadata !139, metadata !"i", metadata !140, i32 185, metadata !155, i32 0, metadata !415} ; [ DW_TAG_auto_variable ] [i] [line 185]
!418 = metadata !{i32 187, i32 0, metadata !321, metadata !415}
!419 = metadata !{i32 188, i32 0, metadata !321, metadata !415}
!420 = metadata !{i32 354, i32 0, metadata !421, null}
!421 = metadata !{i32 786443, metadata !1, metadata !273, i32 354, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!422 = metadata !{i32 367, i32 0, metadata !423, null}
!423 = metadata !{i32 786443, metadata !1, metadata !273, i32 366, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!424 = metadata !{i32 366, i32 0, metadata !423, null}
!425 = metadata !{i32 786689, metadata !163, metadata !"dest", metadata !140, i32 16777415, metadata !143, i32 0, metadata !426} ; [ DW_TAG_arg_variable ] [dest] [line 199]
!426 = metadata !{i32 355, i32 0, metadata !427, null}
!427 = metadata !{i32 786443, metadata !1, metadata !421, i32 354, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!428 = metadata !{i32 199, i32 0, metadata !163, metadata !426}
!429 = metadata !{i32 786689, metadata !163, metadata !"s1", metadata !140, i32 33554631, metadata !143, i32 0, metadata !426} ; [ DW_TAG_arg_variable ] [s1] [line 199]
!430 = metadata !{i32 786688, metadata !163, metadata !"i", metadata !140, i32 201, metadata !155, i32 0, metadata !426} ; [ DW_TAG_auto_variable ] [i] [line 201]
!431 = metadata !{i32 203, i32 0, metadata !334, metadata !426}
!432 = metadata !{i32 204, i32 0, metadata !334, metadata !426}
!433 = metadata !{i32 358, i32 0, metadata !434, null}
!434 = metadata !{i32 786443, metadata !1, metadata !427, i32 357, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!435 = metadata !{i32 357, i32 0, metadata !434, null}
!436 = metadata !{i32 undef}
!437 = metadata !{i32 786689, metadata !263, metadata !"enr", metadata !140, i32 16777510, metadata !155, i32 0, metadata !433} ; [ DW_TAG_arg_variable ] [enr] [line 294]
!438 = metadata !{i32 294, i32 0, metadata !263, metadata !433}
!439 = metadata !{i32 296, i32 0, metadata !263, metadata !433}
!440 = metadata !{i32 360, i32 0, metadata !441, null}
!441 = metadata !{i32 786443, metadata !1, metadata !427, i32 359, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!442 = metadata !{i32 786689, metadata !263, metadata !"enr", metadata !140, i32 16777510, metadata !155, i32 0, metadata !440} ; [ DW_TAG_arg_variable ] [enr] [line 294]
!443 = metadata !{i32 294, i32 0, metadata !263, metadata !440}
!444 = metadata !{i32 296, i32 0, metadata !263, metadata !440}
!445 = metadata !{i32 359, i32 0, metadata !441, null}
!446 = metadata !{i32 363, i32 0, metadata !447, null}
!447 = metadata !{i32 786443, metadata !1, metadata !448, i32 362, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!448 = metadata !{i32 786443, metadata !1, metadata !427, i32 362, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!449 = metadata !{i32 362, i32 0, metadata !448, null}
!450 = metadata !{i32 786689, metadata !263, metadata !"enr", metadata !140, i32 16777510, metadata !155, i32 0, metadata !446} ; [ DW_TAG_arg_variable ] [enr] [line 294]
!451 = metadata !{i32 294, i32 0, metadata !263, metadata !446}
!452 = metadata !{i32 296, i32 0, metadata !263, metadata !446}
!453 = metadata !{i32 369, i32 0, metadata !273, null}
!454 = metadata !{i32 371, i32 0, metadata !273, null}
!455 = metadata !{i32 372, i32 0, metadata !456, null}
!456 = metadata !{i32 786443, metadata !1, metadata !273, i32 372, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!457 = metadata !{i32 373, i32 0, metadata !456, null}
!458 = metadata !{i32 374, i32 0, metadata !273, null}
!459 = metadata !{i32 375, i32 0, metadata !273, null}
!460 = metadata !{i32 376, i32 0, metadata !461, null}
!461 = metadata !{i32 786443, metadata !1, metadata !273, i32 376, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!462 = metadata !{i32 377, i32 0, metadata !461, null}
!463 = metadata !{i32 378, i32 0, metadata !273, null}
!464 = metadata !{i32 380, i32 0, metadata !465, null}
!465 = metadata !{i32 786443, metadata !1, metadata !273, i32 380, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!466 = metadata !{i32 399, i32 0, metadata !467, null}
!467 = metadata !{i32 786443, metadata !1, metadata !273, i32 399, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!468 = metadata !{double 1.000000e+02}
!469 = metadata !{i32 381, i32 0, metadata !470, null}
!470 = metadata !{i32 786443, metadata !1, metadata !465, i32 380, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!471 = metadata !{i32 382, i32 0, metadata !470, null}
!472 = metadata !{i32 786689, metadata !268, metadata !"enr", metadata !140, i32 16777515, metadata !155, i32 0, metadata !473} ; [ DW_TAG_arg_variable ] [enr] [line 299]
!473 = metadata !{i32 383, i32 0, metadata !474, null}
!474 = metadata !{i32 786443, metadata !1, metadata !470, i32 382, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!475 = metadata !{i32 299, i32 0, metadata !268, metadata !473}
!476 = metadata !{i32 301, i32 0, metadata !268, metadata !473}
!477 = metadata !{i32 384, i32 0, metadata !478, null}
!478 = metadata !{i32 786443, metadata !1, metadata !474, i32 384, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!479 = metadata !{i32 385, i32 0, metadata !480, null}
!480 = metadata !{i32 786443, metadata !1, metadata !478, i32 384, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!481 = metadata !{i32 386, i32 0, metadata !480, null}
!482 = metadata !{i32 387, i32 0, metadata !480, null}
!483 = metadata !{i32 388, i32 0, metadata !480, null}
!484 = metadata !{i32 390, i32 0, metadata !474, null}
!485 = metadata !{i32 391, i32 0, metadata !486, null}
!486 = metadata !{i32 786443, metadata !1, metadata !474, i32 390, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!487 = metadata !{i32 392, i32 0, metadata !486, null}
!488 = metadata !{i32 393, i32 0, metadata !486, null}
!489 = metadata !{i32 395, i32 0, metadata !474, null}
!490 = metadata !{i32 400, i32 0, metadata !491, null}
!491 = metadata !{i32 786443, metadata !1, metadata !467, i32 399, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!492 = metadata !{i32 401, i32 0, metadata !491, null}
!493 = metadata !{i32 403, i32 0, metadata !273, null}
!494 = metadata !{i32 404, i32 0, metadata !273, null}
!495 = metadata !{i32 406, i32 0, metadata !273, null}
!496 = metadata !{i32 407, i32 0, metadata !273, null}
!497 = metadata !{i32 408, i32 0, metadata !498, null}
!498 = metadata !{i32 786443, metadata !1, metadata !273, i32 407, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!499 = metadata !{i32 409, i32 0, metadata !498, null}
!500 = metadata !{i32 410, i32 0, metadata !498, null}
!501 = metadata !{i32 411, i32 0, metadata !273, null}
!502 = metadata !{i32 317, i32 0, metadata !293, null}
!503 = metadata !{i32 322, i32 0, metadata !293, null}
!504 = metadata !{i32 323, i32 0, metadata !293, null}
!505 = metadata !{i32 324, i32 0, metadata !506, null}
!506 = metadata !{i32 786443, metadata !1, metadata !293, i32 323, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!507 = metadata !{i32 325, i32 0, metadata !506, null}
!508 = metadata !{i32 326, i32 0, metadata !509, null}
!509 = metadata !{i32 786443, metadata !1, metadata !506, i32 326, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!510 = metadata !{i32 327, i32 0, metadata !511, null}
!511 = metadata !{i32 786443, metadata !1, metadata !509, i32 326, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!512 = metadata !{i32 328, i32 0, metadata !511, null}
!513 = metadata !{i32 329, i32 0, metadata !511, null}
!514 = metadata !{i32 330, i32 0, metadata !511, null}
!515 = metadata !{i32 332, i32 0, metadata !506, null}
!516 = metadata !{i32 333, i32 0, metadata !517, null}
!517 = metadata !{i32 786443, metadata !1, metadata !506, i32 332, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrnb.c]
!518 = metadata !{i32 334, i32 0, metadata !517, null}
!519 = metadata !{i32 335, i32 0, metadata !517, null}
!520 = metadata !{i32 337, i32 0, metadata !506, null}
!521 = metadata !{i32 339, i32 0, metadata !293, null}

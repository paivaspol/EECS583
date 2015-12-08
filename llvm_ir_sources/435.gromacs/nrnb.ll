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
  %nrnb4 = bitcast %struct.t_nrnb* %nrnb to i8*
  call void @llvm.memset.p0i8.i64(i8* %nrnb4, i8 0, i64 1032, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @cp_nrnb(%struct.t_nrnb* nocapture %dest, %struct.t_nrnb* nocapture %src) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds %struct.t_nrnb* %src, i64 0, i32 0, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %arrayidx3 = getelementptr inbounds %struct.t_nrnb* %dest, i64 0, i32 0, i64 %indvars.iv
  store double %0, double* %arrayidx3, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 129
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @add_nrnb(%struct.t_nrnb* nocapture %dest, %struct.t_nrnb* nocapture %s1, %struct.t_nrnb* nocapture %s2) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds %struct.t_nrnb* %s1, i64 0, i32 0, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %arrayidx3 = getelementptr inbounds %struct.t_nrnb* %s2, i64 0, i32 0, i64 %indvars.iv
  %1 = load double* %arrayidx3, align 8, !tbaa !0
  %add = fadd double %0, %1
  %arrayidx6 = getelementptr inbounds %struct.t_nrnb* %dest, i64 0, i32 0, i64 %indvars.iv
  store double %add, double* %arrayidx6, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 129
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @print_nrnb(%struct._IO_FILE* nocapture %out, %struct.t_nrnb* nocapture %nrnb) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %name = getelementptr inbounds [129 x %struct.t_nrnb_data]* bitcast (<{ { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] } }>* @nbdata to [129 x %struct.t_nrnb_data]*), i64 0, i64 %indvars.iv, i32 0
  %0 = load i8** %name, align 16, !tbaa !3
  %arrayidx2 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %indvars.iv
  %1 = load double* %arrayidx2, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0), i8* %0, double %1) #7
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 129
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @_inc_nrnb(%struct.t_nrnb* nocapture %nrnb, i32 %enr, i32 %inc, i8* nocapture %file, i32 %line) #0 {
entry:
  %conv = sitofp i32 %inc to double
  %idxprom = sext i32 %enr to i64
  %arrayidx = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %idxprom
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %add = fadd double %conv, %0
  store double %add, double* %arrayidx, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @print_perf(%struct._IO_FILE* %out, double %nodetime, double %realtime, float %runtime, %struct.t_nrnb* nocapture %nrnb, i32 %nprocs) #0 {
entry:
  %cmp = fcmp olt double %nodetime, 1.200000e-38
  br i1 %cmp, label %if.then, label %for.body

if.then:                                          ; preds = %entry
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([38 x i8]* @.str1, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* %out)
  br label %for.body

for.body:                                         ; preds = %entry, %if.then, %for.inc
  %indvars.iv201 = phi i64 [ %indvars.iv.next202, %for.inc ], [ 0, %if.then ], [ 0, %entry ]
  %nbfs.0195 = phi double [ %nbfs.1, %for.inc ], [ 0.000000e+00, %if.then ], [ 0.000000e+00, %entry ]
  %name = getelementptr inbounds [129 x %struct.t_nrnb_data]* bitcast (<{ { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] } }>* @nbdata to [129 x %struct.t_nrnb_data]*), i64 0, i64 %indvars.iv201, i32 0
  %1 = load i8** %name, align 16, !tbaa !3
  %call2 = tail call i8* @strstr(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #8
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.else, label %if.then4

if.then4:                                         ; preds = %for.body
  %arrayidx6 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %indvars.iv201
  %2 = load double* %arrayidx6, align 8, !tbaa !0
  %mul = fmul double %2, 9.000000e-06
  br label %for.inc

if.else:                                          ; preds = %for.body
  %call10 = tail call i8* @strstr(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #8
  %cmp11 = icmp eq i8* %call10, null
  %arrayidx15 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %indvars.iv201
  %3 = load double* %arrayidx15, align 8, !tbaa !0
  br i1 %cmp11, label %if.else18, label %if.then12

if.then12:                                        ; preds = %if.else
  %mul16 = fmul double %3, 3.000000e-06
  br label %for.inc

if.else18:                                        ; preds = %if.else
  %mul22 = fmul double %3, 1.000000e-06
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %if.else18, %if.then12
  %mul.pn = phi double [ %mul, %if.then4 ], [ %mul16, %if.then12 ], [ %mul22, %if.else18 ]
  %nbfs.1 = fadd double %nbfs.0195, %mul.pn
  %indvars.iv.next202 = add i64 %indvars.iv201, 1
  %lftr.wideiv203 = trunc i64 %indvars.iv.next202 to i32
  %exitcond204 = icmp eq i32 %lftr.wideiv203, 78
  br i1 %exitcond204, label %for.body28, label %for.body

for.body28:                                       ; preds = %for.inc, %for.body28
  %indvars.iv197 = phi i64 [ %indvars.iv.next198, %for.body28 ], [ 0, %for.inc ]
  %tflop.0194 = phi double [ %add36, %for.body28 ], [ 0.000000e+00, %for.inc ]
  %arrayidx31 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %indvars.iv197
  %4 = load double* %arrayidx31, align 8, !tbaa !0
  %mul32 = fmul double %4, 1.000000e-06
  %flop = getelementptr inbounds [129 x %struct.t_nrnb_data]* bitcast (<{ { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] } }>* @nbdata to [129 x %struct.t_nrnb_data]*), i64 0, i64 %indvars.iv197, i32 1
  %5 = load i32* %flop, align 8, !tbaa !4
  %conv = sitofp i32 %5 to double
  %mul35 = fmul double %mul32, %conv
  %add36 = fadd double %tflop.0194, %mul35
  %indvars.iv.next198 = add i64 %indvars.iv197, 1
  %lftr.wideiv199 = trunc i64 %indvars.iv.next198 to i32
  %exitcond200 = icmp eq i32 %lftr.wideiv199, 129
  br i1 %exitcond200, label %for.end39, label %for.body28

for.end39:                                        ; preds = %for.body28
  %cmp40 = fcmp olt double %add36, 1.200000e-38
  br i1 %cmp40, label %if.then42, label %if.end44

if.then42:                                        ; preds = %for.end39
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str4, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %out)
  br label %if.end128

if.end44:                                         ; preds = %for.end39
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([46 x i8]* @.str5, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %out)
  %cmp46 = icmp sgt i32 %nprocs, 1
  br i1 %cmp46, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end44
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([44 x i8]* @.str6, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %out)
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end44
  %nodetime.addr.0 = phi double [ %realtime, %if.then48 ], [ %nodetime, %if.end44 ]
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([53 x i8]* @.str7, i64 0, i64 0), i64 52, i64 1, %struct._IO_FILE* %out)
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([69 x i8]* @.str8, i64 0, i64 0), i64 68, i64 1, %struct._IO_FILE* %out)
  %call53 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([23 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0)) #7
  br label %for.body57

for.body57:                                       ; preds = %for.inc89, %if.end50
  %indvars.iv = phi i64 [ 0, %if.end50 ], [ %indvars.iv.next, %for.inc89 ]
  %mflop.0192 = phi double [ 0.000000e+00, %if.end50 ], [ %add67, %for.inc89 ]
  %tfrac.0191 = phi double [ 0.000000e+00, %if.end50 ], [ %add74, %for.inc89 ]
  %arrayidx60 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %indvars.iv
  %11 = load double* %arrayidx60, align 8, !tbaa !0
  %mul61 = fmul double %11, 1.000000e-06
  %flop64 = getelementptr inbounds [129 x %struct.t_nrnb_data]* bitcast (<{ { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] } }>* @nbdata to [129 x %struct.t_nrnb_data]*), i64 0, i64 %indvars.iv, i32 1
  %12 = load i32* %flop64, align 8, !tbaa !4
  %conv65 = sitofp i32 %12 to double
  %mul66 = fmul double %mul61, %conv65
  %add67 = fadd double %mflop.0192, %mul66
  %mul68 = fmul double %mul61, 1.000000e+02
  %mul73 = fmul double %mul68, %conv65
  %div = fdiv double %mul73, %add36
  %add74 = fadd double %tfrac.0191, %div
  %call75 = tail call double @fabs(double %mul61) #9
  %cmp76 = fcmp ogt double %call75, 1.200000e-38
  br i1 %cmp76, label %if.then78, label %for.inc89

if.then78:                                        ; preds = %for.body57
  %name81 = getelementptr inbounds [129 x %struct.t_nrnb_data]* bitcast (<{ { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] } }>* @nbdata to [129 x %struct.t_nrnb_data]*), i64 0, i64 %indvars.iv, i32 0
  %13 = load i8** %name81, align 16, !tbaa !3
  %call87 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([29 x i8]* @.str14, i64 0, i64 0), i8* %13, double %mul61, double %mul66, double %div) #7
  br label %for.inc89

for.inc89:                                        ; preds = %for.body57, %if.then78
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 129
  br i1 %exitcond, label %for.end91, label %for.body57

for.end91:                                        ; preds = %for.inc89
  %call92 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([28 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str17, i64 0, i64 0), double %add67, double %add74) #7
  %cmp93 = fcmp ogt double %nodetime.addr.0, 0.000000e+00
  %cmp95 = fcmp ogt double %realtime, 0.000000e+00
  %or.cond = and i1 %cmp93, %cmp95
  br i1 %or.cond, label %if.then97, label %if.end128

if.then97:                                        ; preds = %for.end91
  %call98 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([20 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0)) #7
  %mul99 = fmul double %nodetime.addr.0, 1.000000e+02
  %div100 = fdiv double %mul99, %realtime
  %call101 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([26 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str23, i64 0, i64 0), double %nodetime.addr.0, double %realtime, double %div100) #7
  %cmp102 = fcmp ogt double %nodetime.addr.0, 6.000000e+01
  br i1 %cmp102, label %if.then104, label %if.end106

if.then104:                                       ; preds = %if.then97
  %call105 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([10 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str17, i64 0, i64 0)) #7
  tail call void @pr_difftime(%struct._IO_FILE* %out, double %nodetime.addr.0) #7
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %if.then97
  %cmp107 = fcmp ogt float %runtime, 0.000000e+00
  br i1 %cmp107, label %if.then109, label %if.end128

if.then109:                                       ; preds = %if.end106
  %div110 = fdiv double %add67, %nodetime.addr.0
  %cmp111 = fcmp ogt double %div110, 1.000000e+03
  %cond = select i1 %cmp111, i8* getelementptr inbounds ([9 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str28, i64 0, i64 0)
  %call113 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([26 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str26, i64 0, i64 0), i8* %cond, i8* getelementptr inbounds ([15 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str30, i64 0, i64 0)) #7
  %div114 = fdiv double %nbfs.1, %nodetime.addr.0
  br i1 %cmp111, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.then109
  %div117 = fdiv double %div110, 1.000000e+03
  br label %cond.end

cond.end:                                         ; preds = %if.then109, %cond.true
  %cond118 = phi double [ %div117, %cond.true ], [ %div110, %if.then109 ]
  %mul119 = fmul float %runtime, 3.600000e+03
  %conv120 = fpext float %mul119 to double
  %div121 = fdiv double %conv120, %nodetime.addr.0
  %mul122 = fmul double %nodetime.addr.0, 1.000000e+03
  %div125 = fdiv double %mul122, %conv120
  %call126 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([34 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str32, i64 0, i64 0), double %div114, double %cond118, double %div121, double %div125) #7
  br label %if.end128

if.end128:                                        ; preds = %if.end106, %cond.end, %if.then42, %for.end91
  ret void
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
  %idxprom = sext i32 %enr to i64
  %flop = getelementptr inbounds [129 x %struct.t_nrnb_data]* bitcast (<{ { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] } }>* @nbdata to [129 x %struct.t_nrnb_data]*), i64 0, i64 %idxprom, i32 1
  %0 = load i32* %flop, align 8, !tbaa !4
  ret i32 %0
}

; Function Attrs: nounwind optsize readnone uwtable
define i8* @nrnb_str(i32 %enr) #5 {
entry:
  %idxprom = sext i32 %enr to i64
  %name = getelementptr inbounds [129 x %struct.t_nrnb_data]* bitcast (<{ { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] } }>* @nbdata to [129 x %struct.t_nrnb_data]*), i64 0, i64 %idxprom, i32 0
  %0 = load i8** %name, align 16, !tbaa !3
  ret i8* %0
}

; Function Attrs: nounwind optsize uwtable
define void @pr_load(%struct._IO_FILE* nocapture %log, i32 %nprocs, %struct.t_nrnb* nocapture %nrnb) #0 {
entry:
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str34, i64 0, i64 0), i32 350, i32 1, i32 1032) #7
  %0 = bitcast i8* %call to %struct.t_nrnb*
  %call1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str34, i64 0, i64 0), i32 351, i32 %nprocs, i32 8) #7
  %1 = bitcast i8* %call1 to double*
  %call2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str34, i64 0, i64 0), i32 352, i32 %nprocs, i32 8) #7
  %2 = bitcast i8* %call2 to double*
  tail call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 1032, i32 8, i1 false) #6
  %cmp280 = icmp sgt i32 %nprocs, 0
  br i1 %cmp280, label %for.body, label %for.cond62.preheader

for.cond62.preheader:                             ; preds = %for.inc59, %entry
  %n67 = bitcast i8* %call to [129 x double]*
  %conv69 = sitofp i32 %nprocs to double
  br label %for.body65

for.body:                                         ; preds = %entry, %for.inc59
  %indvars.iv310 = phi i64 [ %indvars.iv.next311, %for.inc59 ], [ 0, %entry ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body
  %indvars.iv.i = phi i64 [ 0, %for.body ], [ %indvars.iv.next.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds %struct.t_nrnb* %0, i64 0, i32 0, i64 %indvars.iv.i
  %3 = load double* %arrayidx.i, align 8, !tbaa !0
  %arrayidx3.i = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv310, i32 0, i64 %indvars.iv.i
  %4 = load double* %arrayidx3.i, align 8, !tbaa !0
  %add.i = fadd double %3, %4
  store double %add.i, double* %arrayidx.i, align 8, !tbaa !0
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv296 = trunc i64 %indvars.iv.next.i to i32
  %exitcond297 = icmp eq i32 %lftr.wideiv296, 129
  br i1 %exitcond297, label %for.cond3.loopexit, label %for.body.i

for.cond3.loopexit:                               ; preds = %for.body.i
  %arrayidx12 = getelementptr inbounds double* %1, i64 %indvars.iv310
  %.pre = load double* %arrayidx12, align 8, !tbaa !0
  br label %for.body5

for.body5:                                        ; preds = %for.body5, %for.cond3.loopexit
  %5 = phi double [ %.pre, %for.cond3.loopexit ], [ %add, %for.body5 ]
  %indvars.iv298 = phi i64 [ 0, %for.cond3.loopexit ], [ %indvars.iv.next299, %for.body5 ]
  %arrayidx9 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv310, i32 0, i64 %indvars.iv298
  %6 = load double* %arrayidx9, align 8, !tbaa !0
  %flop.i = getelementptr inbounds [129 x %struct.t_nrnb_data]* bitcast (<{ { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] } }>* @nbdata to [129 x %struct.t_nrnb_data]*), i64 0, i64 %indvars.iv298, i32 1
  %7 = load i32* %flop.i, align 8, !tbaa !4
  %conv = sitofp i32 %7 to double
  %mul = fmul double %6, %conv
  %add = fadd double %5, %mul
  store double %add, double* %arrayidx12, align 8, !tbaa !0
  %indvars.iv.next299 = add i64 %indvars.iv298, 1
  %lftr.wideiv300 = trunc i64 %indvars.iv.next299 to i32
  %exitcond301 = icmp eq i32 %lftr.wideiv300, 78
  br i1 %exitcond301, label %for.body17, label %for.body5

for.body17:                                       ; preds = %for.body5, %for.body17
  %8 = phi double [ %add32, %for.body17 ], [ %add, %for.body5 ]
  %indvars.iv302 = phi i64 [ %indvars.iv.next303, %for.body17 ], [ 0, %for.body5 ]
  %arrayidx19 = getelementptr inbounds [10 x i32]* @force_index, i64 0, i64 %indvars.iv302
  %9 = load i32* %arrayidx19, align 4, !tbaa !4
  %idxprom20 = sext i32 %9 to i64
  %arrayidx24 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv310, i32 0, i64 %idxprom20
  %10 = load double* %arrayidx24, align 8, !tbaa !0
  %flop.i261 = getelementptr inbounds [129 x %struct.t_nrnb_data]* bitcast (<{ { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] } }>* @nbdata to [129 x %struct.t_nrnb_data]*), i64 0, i64 %idxprom20, i32 1
  %11 = load i32* %flop.i261, align 8, !tbaa !4
  %conv28 = sitofp i32 %11 to double
  %mul29 = fmul double %10, %conv28
  %add32 = fadd double %8, %mul29
  store double %add32, double* %arrayidx12, align 8, !tbaa !0
  %indvars.iv.next303 = add i64 %indvars.iv302, 1
  %lftr.wideiv304 = trunc i64 %indvars.iv.next303 to i32
  %exitcond305 = icmp eq i32 %lftr.wideiv304, 10
  br i1 %exitcond305, label %for.cond36.loopexit, label %for.body17

for.cond36.loopexit:                              ; preds = %for.body17
  %arrayidx54 = getelementptr inbounds double* %2, i64 %indvars.iv310
  %.pre314 = load double* %arrayidx54, align 8, !tbaa !0
  br label %for.body40

for.body40:                                       ; preds = %for.body40, %for.cond36.loopexit
  %12 = phi double [ %.pre314, %for.cond36.loopexit ], [ %add55, %for.body40 ]
  %indvars.iv306 = phi i64 [ 0, %for.cond36.loopexit ], [ %indvars.iv.next307, %for.body40 ]
  %arrayidx42 = getelementptr inbounds [10 x i32]* @shake_index, i64 0, i64 %indvars.iv306
  %13 = load i32* %arrayidx42, align 4, !tbaa !4
  %idxprom43 = sext i32 %13 to i64
  %arrayidx47 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv310, i32 0, i64 %idxprom43
  %14 = load double* %arrayidx47, align 8, !tbaa !0
  %flop.i259 = getelementptr inbounds [129 x %struct.t_nrnb_data]* bitcast (<{ { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] } }>* @nbdata to [129 x %struct.t_nrnb_data]*), i64 0, i64 %idxprom43, i32 1
  %15 = load i32* %flop.i259, align 8, !tbaa !4
  %conv51 = sitofp i32 %15 to double
  %mul52 = fmul double %14, %conv51
  %add55 = fadd double %12, %mul52
  store double %add55, double* %arrayidx54, align 8, !tbaa !0
  %indvars.iv.next307 = add i64 %indvars.iv306, 1
  %lftr.wideiv308 = trunc i64 %indvars.iv.next307 to i32
  %exitcond309 = icmp eq i32 %lftr.wideiv308, 10
  br i1 %exitcond309, label %for.inc59, label %for.body40

for.inc59:                                        ; preds = %for.body40
  %indvars.iv.next311 = add i64 %indvars.iv310, 1
  %lftr.wideiv312 = trunc i64 %indvars.iv.next311 to i32
  %exitcond313 = icmp eq i32 %lftr.wideiv312, %nprocs
  br i1 %exitcond313, label %for.cond62.preheader, label %for.body

for.body65:                                       ; preds = %for.body65, %for.cond62.preheader
  %indvars.iv292 = phi i64 [ 0, %for.cond62.preheader ], [ %indvars.iv.next293, %for.body65 ]
  %arrayidx68 = getelementptr inbounds [129 x double]* %n67, i64 0, i64 %indvars.iv292
  %16 = load double* %arrayidx68, align 8, !tbaa !0
  %div = fdiv double %16, %conv69
  store double %div, double* %arrayidx68, align 8, !tbaa !0
  %indvars.iv.next293 = add i64 %indvars.iv292, 1
  %lftr.wideiv294 = trunc i64 %indvars.iv.next293 to i32
  %exitcond295 = icmp eq i32 %lftr.wideiv294, 129
  br i1 %exitcond295, label %for.end75, label %for.body65

for.end75:                                        ; preds = %for.body65
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str37, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %log)
  %18 = tail call i64 @fwrite(i8* getelementptr inbounds ([18 x i8]* @.str38, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %log)
  br i1 %cmp280, label %for.body81, label %for.end95.critedge

for.body81:                                       ; preds = %for.end75, %for.body81
  %i.1275 = phi i32 [ %inc84, %for.body81 ], [ 0, %for.end75 ]
  %call82 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0), i32 %i.1275) #7
  %inc84 = add nsw i32 %i.1275, 1
  %exitcond291 = icmp eq i32 %inc84, %nprocs
  br i1 %exitcond291, label %for.end85, label %for.body81

for.end85:                                        ; preds = %for.body81
  %19 = tail call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str40, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %log)
  %20 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str41, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %log)
  br i1 %cmp280, label %for.body91, label %for.end95

for.body91:                                       ; preds = %for.end85, %for.body91
  %i.2273 = phi i32 [ %inc94, %for.body91 ], [ 0, %for.end85 ]
  %21 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str42, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %log)
  %inc94 = add nsw i32 %i.2273, 1
  %exitcond290 = icmp eq i32 %inc94, %nprocs
  br i1 %exitcond290, label %for.end95, label %for.body91

for.end95.critedge:                               ; preds = %for.end75
  %22 = tail call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str40, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %log)
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str41, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %log)
  br label %for.end95

for.end95:                                        ; preds = %for.end95.critedge, %for.body91, %for.end85
  %24 = tail call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str43, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %log)
  br label %for.body100

for.cond140.preheader:                            ; preds = %for.inc137
  br i1 %cmp280, label %for.body143, label %for.end152

for.body100:                                      ; preds = %for.inc137, %for.end95
  %indvars.iv286 = phi i64 [ 0, %for.end95 ], [ %indvars.iv.next287, %for.inc137 ]
  %arrayidx103 = getelementptr inbounds [129 x double]* %n67, i64 0, i64 %indvars.iv286
  %25 = load double* %arrayidx103, align 8, !tbaa !0
  %cmp104 = fcmp ogt double %25, 0.000000e+00
  br i1 %cmp104, label %if.then, label %for.inc137

if.then:                                          ; preds = %for.body100
  %name.i = getelementptr inbounds [129 x %struct.t_nrnb_data]* bitcast (<{ { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] }, { i8*, i32, [4 x i8] } }>* @nbdata to [129 x %struct.t_nrnb_data]*), i64 0, i64 %indvars.iv286, i32 0
  %26 = load i8** %name.i, align 16, !tbaa !3
  %call107 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([6 x i8]* @.str44, i64 0, i64 0), i8* %26) #7
  br i1 %cmp280, label %for.body111, label %if.then131

for.body111:                                      ; preds = %if.then, %for.body111
  %indvars.iv282 = phi i64 [ %indvars.iv.next283, %for.body111 ], [ 0, %if.then ]
  %unb.0268 = phi double [ %cond, %for.body111 ], [ 1.000000e+02, %if.then ]
  %arrayidx116 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv282, i32 0, i64 %indvars.iv286
  %27 = load double* %arrayidx116, align 8, !tbaa !0
  %mul117 = fmul double %27, 1.000000e+02
  %28 = load double* %arrayidx103, align 8, !tbaa !0
  %div121 = fdiv double %mul117, %28
  %cmp122 = fcmp ogt double %unb.0268, %div121
  %cond = select i1 %cmp122, double %unb.0268, double %div121
  %conv124 = fptosi double %div121 to i32
  %call125 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0), i32 %conv124) #7
  %indvars.iv.next283 = add i64 %indvars.iv282, 1
  %lftr.wideiv284 = trunc i64 %indvars.iv.next283 to i32
  %exitcond285 = icmp eq i32 %lftr.wideiv284, %nprocs
  br i1 %exitcond285, label %for.end128, label %for.body111

for.end128:                                       ; preds = %for.body111
  %cmp129 = fcmp ogt double %cond, 0.000000e+00
  br i1 %cmp129, label %if.then131, label %if.else

if.then131:                                       ; preds = %if.then, %for.end128
  %unb.0.lcssa316 = phi double [ %cond, %for.end128 ], [ 1.000000e+02, %if.then ]
  %div132 = fdiv double 1.000000e+04, %unb.0.lcssa316
  %conv133 = fptosi double %div132 to i32
  %call134 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([7 x i8]* @.str45, i64 0, i64 0), i32 %conv133) #7
  br label %for.inc137

if.else:                                          ; preds = %for.end128
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %log)
  br label %for.inc137

for.inc137:                                       ; preds = %for.body100, %if.else, %if.then131
  %indvars.iv.next287 = add i64 %indvars.iv286, 1
  %lftr.wideiv288 = trunc i64 %indvars.iv.next287 to i32
  %exitcond289 = icmp eq i32 %lftr.wideiv288, 129
  br i1 %exitcond289, label %for.cond140.preheader, label %for.body100

for.body143:                                      ; preds = %for.cond140.preheader, %for.body143
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body143 ], [ 0, %for.cond140.preheader ]
  %sav.0264 = phi double [ %add149, %for.body143 ], [ 0.000000e+00, %for.cond140.preheader ]
  %fav.0263 = phi double [ %add146, %for.body143 ], [ 0.000000e+00, %for.cond140.preheader ]
  %arrayidx145 = getelementptr inbounds double* %1, i64 %indvars.iv
  %29 = load double* %arrayidx145, align 8, !tbaa !0
  %add146 = fadd double %fav.0263, %29
  %arrayidx148 = getelementptr inbounds double* %2, i64 %indvars.iv
  %30 = load double* %arrayidx148, align 8, !tbaa !0
  %add149 = fadd double %sav.0264, %30
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nprocs
  br i1 %exitcond, label %for.end152, label %for.body143

for.end152:                                       ; preds = %for.body143, %for.cond140.preheader
  %sav.0.lcssa = phi double [ 0.000000e+00, %for.cond140.preheader ], [ %add149, %for.body143 ]
  %fav.0.lcssa = phi double [ 0.000000e+00, %for.cond140.preheader ], [ %add146, %for.body143 ]
  %call153 = tail call fastcc double @pr_av(%struct._IO_FILE* %log, i32 %nprocs, double %fav.0.lcssa, double* %1, i8* getelementptr inbounds ([12 x i8]* @.str47, i64 0, i64 0)) #10
  %call154 = tail call fastcc double @pr_av(%struct._IO_FILE* %log, i32 %nprocs, double %sav.0.lcssa, double* %2, i8* getelementptr inbounds ([12 x i8]* @.str48, i64 0, i64 0)) #10
  %mul155 = fmul double %fav.0.lcssa, %call153
  %mul156 = fmul double %sav.0.lcssa, %call154
  %add157 = fadd double %mul155, %mul156
  %add158 = fadd double %fav.0.lcssa, %sav.0.lcssa
  %div159 = fdiv double %add157, %add158
  %cmp160 = fcmp ogt double %div159, 0.000000e+00
  br i1 %cmp160, label %if.then162, label %if.end165

if.then162:                                       ; preds = %for.end152
  %div163 = fdiv double 1.000000e+04, %div159
  %call164 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([44 x i8]* @.str49, i64 0, i64 0), double %div163) #7
  br label %if.end165

if.end165:                                        ; preds = %if.then162, %for.end152
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc double @pr_av(%struct._IO_FILE* nocapture %log, i32 %nprocs, double %fav, double* nocapture %ftot, i8* %title) #0 {
entry:
  %cmp = fcmp ogt double %fav, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %conv = sitofp i32 %nprocs to double
  %div = fdiv double %fav, %conv
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([7 x i8]* @.str50, i64 0, i64 0), i8* %title) #7
  %cmp131 = icmp sgt i32 %nprocs, 0
  br i1 %cmp131, label %for.body, label %if.else

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %unb.033 = phi double [ %cond, %for.body ], [ 0.000000e+00, %if.then ]
  %arrayidx = getelementptr inbounds double* %ftot, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %mul = fmul double %0, 1.000000e+02
  %div3 = fdiv double %mul, %div
  %cmp4 = fcmp ogt double %unb.033, %div3
  %cond = select i1 %cmp4, double %unb.033, double %div3
  %conv6 = fptosi double %div3 to i32
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0), i32 %conv6) #7
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nprocs
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %cmp8 = fcmp ogt double %cond, 0.000000e+00
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %for.end
  %div11 = fdiv double 1.000000e+04, %cond
  %conv12 = fptosi double %div11 to i32
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([8 x i8]* @.str51, i64 0, i64 0), i32 %conv12) #7
  br label %if.end15

if.else:                                          ; preds = %if.then, %for.end
  %unb.0.lcssa35 = phi double [ %cond, %for.end ], [ 0.000000e+00, %if.then ]
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str52, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %log)
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.else, %entry
  %unb.1 = phi double [ %cond, %if.then10 ], [ %unb.0.lcssa35, %if.else ], [ 0.000000e+00, %entry ]
  ret double %unb.1
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #6

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { nounwind optsize readnone }
attributes #10 = { optsize }

!0 = metadata !{metadata !"double", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}

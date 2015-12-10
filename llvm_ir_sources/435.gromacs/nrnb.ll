; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/nrnb.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.t_nrnb_data = type { i8*, i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_nrnb = type { [129 x double] }

@.str = private unnamed_addr constant [15 x i8] c"%14s  %10.0f.\0A\00", align 1
@nbdata = internal unnamed_addr constant [129 x %struct.t_nrnb_data] [%struct.t_nrnb_data { i8* getelementptr inbounds ([3 x i8]* @.str50, i32 0, i32 0), i32 31 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([6 x i8]* @.str51, i32 0, i32 0), i32 31 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([11 x i8]* @.str52, i32 0, i32 0), i32 36 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([14 x i8]* @.str53, i32 0, i32 0), i32 36 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([6 x i8]* @.str54, i32 0, i32 0), i32 52 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([9 x i8]* @.str55, i32 0, i32 0), i32 52 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([15 x i8]* @.str56, i32 0, i32 0), i32 65 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([15 x i8]* @.str57, i32 0, i32 0), i32 118 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([14 x i8]* @.str58, i32 0, i32 0), i32 57 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([17 x i8]* @.str59, i32 0, i32 0), i32 57 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([17 x i8]* @.str60, i32 0, i32 0), i32 89 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([17 x i8]* @.str61, i32 0, i32 0), i32 128 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([8 x i8]* @.str62, i32 0, i32 0), i32 27 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([11 x i8]* @.str63, i32 0, i32 0), i32 27 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([11 x i8]* @.str64, i32 0, i32 0), i32 81 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([12 x i8]* @.str65, i32 0, i32 0), i32 234 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([13 x i8]* @.str66, i32 0, i32 0), i32 38 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([13 x i8]* @.str67, i32 0, i32 0), i32 38 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([13 x i8]* @.str68, i32 0, i32 0), i32 92 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([14 x i8]* @.str69, i32 0, i32 0), i32 245 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([18 x i8]* @.str70, i32 0, i32 0), i32 40 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([15 x i8]* @.str71, i32 0, i32 0), i32 40 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([15 x i8]* @.str72, i32 0, i32 0), i32 94 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([16 x i8]* @.str73, i32 0, i32 0), i32 247 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([14 x i8]* @.str74, i32 0, i32 0), i32 58 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([16 x i8]* @.str75, i32 0, i32 0), i32 58 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([16 x i8]* @.str76, i32 0, i32 0), i32 112 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([17 x i8]* @.str77, i32 0, i32 0), i32 265 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([16 x i8]* @.str78, i32 0, i32 0), i32 63 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([18 x i8]* @.str79, i32 0, i32 0), i32 63 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([18 x i8]* @.str80, i32 0, i32 0), i32 117 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([19 x i8]* @.str81, i32 0, i32 0), i32 270 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([8 x i8]* @.str82, i32 0, i32 0), i32 32 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([11 x i8]* @.str83, i32 0, i32 0), i32 32 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([11 x i8]* @.str84, i32 0, i32 0), i32 96 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([12 x i8]* @.str85, i32 0, i32 0), i32 279 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([13 x i8]* @.str86, i32 0, i32 0), i32 43 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([16 x i8]* @.str87, i32 0, i32 0), i32 43 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([16 x i8]* @.str88, i32 0, i32 0), i32 107 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([17 x i8]* @.str89, i32 0, i32 0), i32 290 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([15 x i8]* @.str90, i32 0, i32 0), i32 45 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([18 x i8]* @.str91, i32 0, i32 0), i32 45 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([18 x i8]* @.str92, i32 0, i32 0), i32 109 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([19 x i8]* @.str93, i32 0, i32 0), i32 292 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([16 x i8]* @.str94, i32 0, i32 0), i32 63 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([19 x i8]* @.str95, i32 0, i32 0), i32 63 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([19 x i8]* @.str96, i32 0, i32 0), i32 127 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([20 x i8]* @.str97, i32 0, i32 0), i32 310 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([13 x i8]* @.str98, i32 0, i32 0), i32 68 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([16 x i8]* @.str99, i32 0, i32 0), i32 68 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([16 x i8]* @.str100, i32 0, i32 0), i32 132 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([17 x i8]* @.str101, i32 0, i32 0), i32 310 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([11 x i8]* @.str102, i32 0, i32 0), i32 41 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([17 x i8]* @.str103, i32 0, i32 0), i32 54 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([17 x i8]* @.str104, i32 0, i32 0), i32 99 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([14 x i8]* @.str105, i32 0, i32 0), i32 99 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([14 x i8]* @.str106, i32 0, i32 0), i32 123 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([15 x i8]* @.str107, i32 0, i32 0), i32 360 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([16 x i8]* @.str108, i32 0, i32 0), i32 54 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([19 x i8]* @.str109, i32 0, i32 0), i32 54 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([19 x i8]* @.str110, i32 0, i32 0), i32 136 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([20 x i8]* @.str111, i32 0, i32 0), i32 373 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([15 x i8]* @.str112, i32 0, i32 0), i32 55 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([18 x i8]* @.str113, i32 0, i32 0), i32 55 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([18 x i8]* @.str114, i32 0, i32 0), i32 137 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([19 x i8]* @.str115, i32 0, i32 0), i32 374 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([16 x i8]* @.str116, i32 0, i32 0), i32 67 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([19 x i8]* @.str117, i32 0, i32 0), i32 92 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([17 x i8]* @.str118, i32 0, i32 0), i32 151 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([19 x i8]* @.str119, i32 0, i32 0), i32 151 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([19 x i8]* @.str120, i32 0, i32 0), i32 149 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([20 x i8]* @.str121, i32 0, i32 0), i32 386 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([16 x i8]* @.str116, i32 0, i32 0), i32 71 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([21 x i8]* @.str122, i32 0, i32 0), i32 116 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([19 x i8]* @.str123, i32 0, i32 0), i32 161 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([21 x i8]* @.str124, i32 0, i32 0), i32 161 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([20 x i8]* @.str125, i32 0, i32 0), i32 153 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([21 x i8]* @.str126, i32 0, i32 0), i32 390 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([16 x i8]* @.str127, i32 0, i32 0), i32 10 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([13 x i8]* @.str128, i32 0, i32 0), i32 36 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([9 x i8]* @.str129, i32 0, i32 0), i32 6 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([17 x i8]* @.str130, i32 0, i32 0), i32 2 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([9 x i8]* @.str131, i32 0, i32 0), i32 23 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([17 x i8]* @.str132, i32 0, i32 0), i32 12 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([7 x i8]* @.str133, i32 0, i32 0), i32 8 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([12 x i8]* @.str134, i32 0, i32 0), i32 4 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([10 x i8]* @.str135, i32 0, i32 0), i32 64 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([9 x i8]* @.str136, i32 0, i32 0), i32 21 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([13 x i8]* @.str137, i32 0, i32 0), i32 9 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([8 x i8]* @.str138, i32 0, i32 0), i32 6 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([7 x i8]* @.str139, i32 0, i32 0), i32 29 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([11 x i8]* @.str140, i32 0, i32 0), i32 1 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([6 x i8]* @.str141, i32 0, i32 0), i32 43 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([9 x i8]* @.str142, i32 0, i32 0), i32 40 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([7 x i8]* @.str143, i32 0, i32 0), i32 163 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([10 x i8]* @.str144, i32 0, i32 0), i32 150 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([8 x i8]* @.str145, i32 0, i32 0), i32 229 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([10 x i8]* @.str146, i32 0, i32 0), i32 208 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([13 x i8]* @.str147, i32 0, i32 0), i32 247 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([13 x i8]* @.str148, i32 0, i32 0), i32 200 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([15 x i8]* @.str149, i32 0, i32 0), i32 200 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([12 x i8]* @.str150, i32 0, i32 0), i32 50 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([13 x i8]* @.str151, i32 0, i32 0), i32 191 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([15 x i8]* @.str152, i32 0, i32 0), i32 164 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([14 x i8]* @.str153, i32 0, i32 0), i32 58 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([12 x i8]* @.str154, i32 0, i32 0), i32 54 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([11 x i8]* @.str155, i32 0, i32 0), i32 62 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([7 x i8]* @.str156, i32 0, i32 0), i32 18 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([7 x i8]* @.str157, i32 0, i32 0), i32 31 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([16 x i8]* @.str158, i32 0, i32 0), i32 54 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([8 x i8]* @.str159, i32 0, i32 0), i32 10 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([11 x i8]* @.str160, i32 0, i32 0), i32 6 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([10 x i8]* @.str161, i32 0, i32 0), i32 27 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([6 x i8]* @.str162, i32 0, i32 0), i32 60 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([10 x i8]* @.str163, i32 0, i32 0), i32 4 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([6 x i8]* @.str164, i32 0, i32 0), i32 30 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([8 x i8]* @.str165, i32 0, i32 0), i32 15 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([11 x i8]* @.str166, i32 0, i32 0), i32 10 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([10 x i8]* @.str167, i32 0, i32 0), i32 18 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([7 x i8]* @.str168, i32 0, i32 0), i32 323 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([14 x i8]* @.str169, i32 0, i32 0), i32 59 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([14 x i8]* @.str170, i32 0, i32 0), i32 65 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([7 x i8]* @.str171, i32 0, i32 0), i32 7 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([7 x i8]* @.str172, i32 0, i32 0), i32 17 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([7 x i8]* @.str173, i32 0, i32 0), i32 28 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([9 x i8]* @.str174, i32 0, i32 0), i32 95 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([10 x i8]* @.str175, i32 0, i32 0), i32 176 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([10 x i8]* @.str176, i32 0, i32 0), i32 87 }, %struct.t_nrnb_data { i8* getelementptr inbounds ([9 x i8]* @.str177, i32 0, i32 0), i32 110 }], align 16
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
@.str34 = private unnamed_addr constant [64 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/nrnb.c\00", align 1
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
@.str50 = private unnamed_addr constant [3 x i8] c"LJ\00", align 1
@.str51 = private unnamed_addr constant [6 x i8] c"LJ(S)\00", align 1
@.str52 = private unnamed_addr constant [11 x i8] c"Buckingham\00", align 1
@.str53 = private unnamed_addr constant [14 x i8] c"Buckingham(S)\00", align 1
@.str54 = private unnamed_addr constant [6 x i8] c"LJ(T)\00", align 1
@.str55 = private unnamed_addr constant [9 x i8] c"LJ(T)(S)\00", align 1
@.str56 = private unnamed_addr constant [15 x i8] c"FreeEner LJ(T)\00", align 1
@.str57 = private unnamed_addr constant [15 x i8] c"Softcore LJ(T)\00", align 1
@.str58 = private unnamed_addr constant [14 x i8] c"Buckingham(T)\00", align 1
@.str59 = private unnamed_addr constant [17 x i8] c"Buckingham(T)(S)\00", align 1
@.str60 = private unnamed_addr constant [17 x i8] c"FreeEner Bham(T)\00", align 1
@.str61 = private unnamed_addr constant [17 x i8] c"Softcore Bham(T)\00", align 1
@.str62 = private unnamed_addr constant [8 x i8] c"Coulomb\00", align 1
@.str63 = private unnamed_addr constant [11 x i8] c"Coulomb(S)\00", align 1
@.str64 = private unnamed_addr constant [11 x i8] c"Coulomb(W)\00", align 1
@.str65 = private unnamed_addr constant [12 x i8] c"Coulomb(WW)\00", align 1
@.str66 = private unnamed_addr constant [13 x i8] c"LJ + Coulomb\00", align 1
@.str67 = private unnamed_addr constant [13 x i8] c"LJ + Coul(S)\00", align 1
@.str68 = private unnamed_addr constant [13 x i8] c"LJ + Coul(W)\00", align 1
@.str69 = private unnamed_addr constant [14 x i8] c"LJ + Coul(WW)\00", align 1
@.str70 = private unnamed_addr constant [18 x i8] c"Buckingham + Coul\00", align 1
@.str71 = private unnamed_addr constant [15 x i8] c"Bham + Coul(S)\00", align 1
@.str72 = private unnamed_addr constant [15 x i8] c"Bham + Coul(W)\00", align 1
@.str73 = private unnamed_addr constant [16 x i8] c"Bham + Coul(WW)\00", align 1
@.str74 = private unnamed_addr constant [14 x i8] c"LJ(T) + Coul \00", align 1
@.str75 = private unnamed_addr constant [16 x i8] c"LJ(T) + Coul(S)\00", align 1
@.str76 = private unnamed_addr constant [16 x i8] c"LJ(T) + Coul(W)\00", align 1
@.str77 = private unnamed_addr constant [17 x i8] c"LJ(T) + Coul(WW)\00", align 1
@.str78 = private unnamed_addr constant [16 x i8] c"Bham(T) + Coul \00", align 1
@.str79 = private unnamed_addr constant [18 x i8] c"Bham(T) + Coul(S)\00", align 1
@.str80 = private unnamed_addr constant [18 x i8] c"Bham(T) + Coul(W)\00", align 1
@.str81 = private unnamed_addr constant [19 x i8] c"Bham(T) + Coul(WW)\00", align 1
@.str82 = private unnamed_addr constant [8 x i8] c"RF Coul\00", align 1
@.str83 = private unnamed_addr constant [11 x i8] c"RF Coul(S)\00", align 1
@.str84 = private unnamed_addr constant [11 x i8] c"RF Coul(W)\00", align 1
@.str85 = private unnamed_addr constant [12 x i8] c"RF Coul(WW)\00", align 1
@.str86 = private unnamed_addr constant [13 x i8] c"LJ + RF Coul\00", align 1
@.str87 = private unnamed_addr constant [16 x i8] c"LJ + RF Coul(S)\00", align 1
@.str88 = private unnamed_addr constant [16 x i8] c"LJ + RF Coul(W)\00", align 1
@.str89 = private unnamed_addr constant [17 x i8] c"LJ + RF Coul(WW)\00", align 1
@.str90 = private unnamed_addr constant [15 x i8] c"Bham + RF Coul\00", align 1
@.str91 = private unnamed_addr constant [18 x i8] c"Bham + RF Coul(S)\00", align 1
@.str92 = private unnamed_addr constant [18 x i8] c"Bham + RF Coul(W)\00", align 1
@.str93 = private unnamed_addr constant [19 x i8] c"Bham + RF Coul(WW)\00", align 1
@.str94 = private unnamed_addr constant [16 x i8] c"LJ(T) + RF Coul\00", align 1
@.str95 = private unnamed_addr constant [19 x i8] c"LJ(T) + RF Coul(S)\00", align 1
@.str96 = private unnamed_addr constant [19 x i8] c"LJ(T) + RF Coul(W)\00", align 1
@.str97 = private unnamed_addr constant [20 x i8] c"LJ(T) + RF Coul(WW)\00", align 1
@.str98 = private unnamed_addr constant [13 x i8] c"Bham(T) + RF\00", align 1
@.str99 = private unnamed_addr constant [16 x i8] c"Bham(T) + RF(S)\00", align 1
@.str100 = private unnamed_addr constant [16 x i8] c"Bham(T) + RF(W)\00", align 1
@.str101 = private unnamed_addr constant [17 x i8] c"Bham(T) + RF(WW)\00", align 1
@.str102 = private unnamed_addr constant [11 x i8] c"Coulomb(T)\00", align 1
@.str103 = private unnamed_addr constant [17 x i8] c"FreeEner Coul(T)\00", align 1
@.str104 = private unnamed_addr constant [17 x i8] c"Softcore Coul(T)\00", align 1
@.str105 = private unnamed_addr constant [14 x i8] c"Coulomb(T)(S)\00", align 1
@.str106 = private unnamed_addr constant [14 x i8] c"Coulomb(T)(W)\00", align 1
@.str107 = private unnamed_addr constant [15 x i8] c"Coulomb(T)(WW)\00", align 1
@.str108 = private unnamed_addr constant [16 x i8] c"LJ + Coulomb(T)\00", align 1
@.str109 = private unnamed_addr constant [19 x i8] c"LJ + Coulomb(T)(S)\00", align 1
@.str110 = private unnamed_addr constant [19 x i8] c"LJ + Coulomb(T)(W)\00", align 1
@.str111 = private unnamed_addr constant [20 x i8] c"LJ + Coulomb(T)(WW)\00", align 1
@.str112 = private unnamed_addr constant [15 x i8] c"Bham + Coul(T)\00", align 1
@.str113 = private unnamed_addr constant [18 x i8] c"Bham + Coul(T)(S)\00", align 1
@.str114 = private unnamed_addr constant [18 x i8] c"Bham + Coul(T)(W)\00", align 1
@.str115 = private unnamed_addr constant [19 x i8] c"Bham + Coul(T)(WW)\00", align 1
@.str116 = private unnamed_addr constant [16 x i8] c"LJ(T) + Coul(T)\00", align 1
@.str117 = private unnamed_addr constant [19 x i8] c"Free LJ(T)+Coul(T)\00", align 1
@.str118 = private unnamed_addr constant [17 x i8] c"SC LJ(T)+Coul(T)\00", align 1
@.str119 = private unnamed_addr constant [19 x i8] c"LJ(T) + Coul(T)(S)\00", align 1
@.str120 = private unnamed_addr constant [19 x i8] c"LJ(T) + Coul(T)(W)\00", align 1
@.str121 = private unnamed_addr constant [20 x i8] c"LJ(T) + Coul(T)(WW)\00", align 1
@.str122 = private unnamed_addr constant [21 x i8] c"Free Bham(T)+Coul(T)\00", align 1
@.str123 = private unnamed_addr constant [19 x i8] c"SC Bham(T)+Coul(T)\00", align 1
@.str124 = private unnamed_addr constant [21 x i8] c"Bham(T) + Coul(T)(S)\00", align 1
@.str125 = private unnamed_addr constant [20 x i8] c"Bham(T) + Coul(T,W)\00", align 1
@.str126 = private unnamed_addr constant [21 x i8] c"Bham(T) + Coul(T,WW)\00", align 1
@.str127 = private unnamed_addr constant [16 x i8] c"Innerloop-Iatom\00", align 1
@.str128 = private unnamed_addr constant [13 x i8] c"Calc Weights\00", align 1
@.str129 = private unnamed_addr constant [9 x i8] c"Spread Q\00", align 1
@.str130 = private unnamed_addr constant [17 x i8] c"Spread Q Bspline\00", align 1
@.str131 = private unnamed_addr constant [9 x i8] c"Gather F\00", align 1
@.str132 = private unnamed_addr constant [17 x i8] c"Gather F Bspline\00", align 1
@.str133 = private unnamed_addr constant [7 x i8] c"3D-FFT\00", align 1
@.str134 = private unnamed_addr constant [12 x i8] c"Convolution\00", align 1
@.str135 = private unnamed_addr constant [10 x i8] c"Solve PME\00", align 1
@.str136 = private unnamed_addr constant [9 x i8] c"NS-Pairs\00", align 1
@.str137 = private unnamed_addr constant [13 x i8] c"Reset In Box\00", align 1
@.str138 = private unnamed_addr constant [8 x i8] c"Shift-X\00", align 1
@.str139 = private unnamed_addr constant [7 x i8] c"CG-CoM\00", align 1
@.str140 = private unnamed_addr constant [11 x i8] c"Sum Forces\00", align 1
@.str141 = private unnamed_addr constant [6 x i8] c"Bonds\00", align 1
@.str142 = private unnamed_addr constant [9 x i8] c"G96Bonds\00", align 1
@.str143 = private unnamed_addr constant [7 x i8] c"Angles\00", align 1
@.str144 = private unnamed_addr constant [10 x i8] c"G96Angles\00", align 1
@.str145 = private unnamed_addr constant [8 x i8] c"Propers\00", align 1
@.str146 = private unnamed_addr constant [10 x i8] c"Impropers\00", align 1
@.str147 = private unnamed_addr constant [13 x i8] c"RB-Dihedrals\00", align 1
@.str148 = private unnamed_addr constant [13 x i8] c"Dist. Restr.\00", align 1
@.str149 = private unnamed_addr constant [15 x i8] c"Orient. Restr.\00", align 1
@.str150 = private unnamed_addr constant [12 x i8] c"Pos. Restr.\00", align 1
@.str151 = private unnamed_addr constant [13 x i8] c"Angle Restr.\00", align 1
@.str152 = private unnamed_addr constant [15 x i8] c"Angle Restr. Z\00", align 1
@.str153 = private unnamed_addr constant [14 x i8] c"Morse Potent.\00", align 1
@.str154 = private unnamed_addr constant [12 x i8] c"Cubic Bonds\00", align 1
@.str155 = private unnamed_addr constant [11 x i8] c"Water Pol.\00", align 1
@.str156 = private unnamed_addr constant [7 x i8] c"Virial\00", align 1
@.str157 = private unnamed_addr constant [7 x i8] c"Update\00", align 1
@.str158 = private unnamed_addr constant [16 x i8] c"Ext.ens. Update\00", align 1
@.str159 = private unnamed_addr constant [8 x i8] c"Stop-CM\00", align 1
@.str160 = private unnamed_addr constant [11 x i8] c"P-Coupling\00", align 1
@.str161 = private unnamed_addr constant [10 x i8] c"Calc-Ekin\00", align 1
@.str162 = private unnamed_addr constant [6 x i8] c"Lincs\00", align 1
@.str163 = private unnamed_addr constant [10 x i8] c"Lincs-Mat\00", align 1
@.str164 = private unnamed_addr constant [6 x i8] c"Shake\00", align 1
@.str165 = private unnamed_addr constant [8 x i8] c"Shake-V\00", align 1
@.str166 = private unnamed_addr constant [11 x i8] c"Shake-Init\00", align 1
@.str167 = private unnamed_addr constant [10 x i8] c"Shake-Vir\00", align 1
@.str168 = private unnamed_addr constant [7 x i8] c"Settle\00", align 1
@.str169 = private unnamed_addr constant [14 x i8] c"PShake-InitLD\00", align 1
@.str170 = private unnamed_addr constant [14 x i8] c"PShake-InitMD\00", align 1
@.str171 = private unnamed_addr constant [7 x i8] c"PShake\00", align 1
@.str172 = private unnamed_addr constant [7 x i8] c"Dummy2\00", align 1
@.str173 = private unnamed_addr constant [7 x i8] c"Dummy3\00", align 1
@.str174 = private unnamed_addr constant [9 x i8] c"Dummy3fd\00", align 1
@.str175 = private unnamed_addr constant [10 x i8] c"Dummy3fad\00", align 1
@.str176 = private unnamed_addr constant [10 x i8] c"Dummy3out\00", align 1
@.str177 = private unnamed_addr constant [9 x i8] c"Dummy4fd\00", align 1
@.str178 = private unnamed_addr constant [7 x i8] c"\0A%15s:\00", align 1
@.str179 = private unnamed_addr constant [8 x i8] c"%6d%%\0A\0A\00", align 1
@.str180 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

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
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #9
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
define void @init_nrnb(%struct.t_nrnb* nocapture %nrnb) #3 {
  %nrnb2 = bitcast %struct.t_nrnb* %nrnb to i8*
  call void @llvm.memset.p0i8.i64(i8* %nrnb2, i8 0, i64 1032, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cp_nrnb(%struct.t_nrnb* nocapture %dest, %struct.t_nrnb* nocapture readonly %src) #3 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ]
  %2 = getelementptr inbounds %struct.t_nrnb* %src, i64 0, i32 0, i64 %indvars.iv
  %3 = bitcast double* %2 to i64*
  %4 = load i64* %3, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.t_nrnb* %dest, i64 0, i32 0, i64 %indvars.iv
  %6 = bitcast double* %5 to i64*
  store i64 %4, i64* %6, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 129
  br i1 %exitcond, label %7, label %1

; <label>:7                                       ; preds = %1
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @add_nrnb(%struct.t_nrnb* nocapture %dest, %struct.t_nrnb* nocapture readonly %s1, %struct.t_nrnb* nocapture readonly %s2) #3 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ]
  %2 = getelementptr inbounds %struct.t_nrnb* %s1, i64 0, i32 0, i64 %indvars.iv
  %3 = load double* %2, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.t_nrnb* %s2, i64 0, i32 0, i64 %indvars.iv
  %5 = load double* %4, align 8, !tbaa !14
  %6 = fadd double %3, %5
  %7 = getelementptr inbounds %struct.t_nrnb* %dest, i64 0, i32 0, i64 %indvars.iv
  store double %6, double* %7, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 129
  br i1 %exitcond, label %8, label %1

; <label>:8                                       ; preds = %1
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @print_nrnb(%struct.__sFILE* nocapture %out, %struct.t_nrnb* nocapture readonly %nrnb) #3 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ]
  %2 = getelementptr inbounds [129 x %struct.t_nrnb_data]* @nbdata, i64 0, i64 %indvars.iv, i32 0
  %3 = load i8** %2, align 16, !tbaa !16
  %4 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %indvars.iv
  %5 = load double* %4, align 8, !tbaa !14
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0), i8* %3, double %5) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 129
  br i1 %exitcond, label %7, label %1

; <label>:7                                       ; preds = %1
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @_inc_nrnb(%struct.t_nrnb* nocapture %nrnb, i32 %enr, i32 %inc, i8* nocapture readnone %file, i32 %line) #3 {
  %1 = sitofp i32 %inc to double
  %2 = sext i32 %enr to i64
  %3 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %2
  %4 = load double* %3, align 8, !tbaa !14
  %5 = fadd double %1, %4
  store double %5, double* %3, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @print_perf(%struct.__sFILE* %out, double %nodetime, double %realtime, float %runtime, %struct.t_nrnb* nocapture readonly %nrnb, i32 %nprocs) #3 {
  %1 = fcmp olt double %nodetime, 1.200000e-38
  br i1 %1, label %2, label %.preheader2

; <label>:2                                       ; preds = %0
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([38 x i8]* @.str1, i64 0, i64 0), i64 37, i64 1, %struct.__sFILE* %out)
  br label %.preheader2

.preheader2:                                      ; preds = %0, %2, %21
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %21 ], [ 0, %2 ], [ 0, %0 ]
  %nbfs.08 = phi double [ %nbfs.1, %21 ], [ 0.000000e+00, %2 ], [ 0.000000e+00, %0 ]
  %4 = getelementptr inbounds [129 x %struct.t_nrnb_data]* @nbdata, i64 0, i64 %indvars.iv15, i32 0
  %5 = load i8** %4, align 16, !tbaa !16
  %6 = tail call i8* @strstr(i8* %5, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #9
  %7 = icmp eq i8* %6, null
  br i1 %7, label %12, label %8

; <label>:8                                       ; preds = %.preheader2
  %9 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %indvars.iv15
  %10 = load double* %9, align 8, !tbaa !14
  %11 = fmul double %10, 9.000000e-06
  br label %21

; <label>:12                                      ; preds = %.preheader2
  %13 = tail call i8* @strstr(i8* %5, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #9
  %14 = icmp eq i8* %13, null
  %15 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %indvars.iv15
  %16 = load double* %15, align 8, !tbaa !14
  br i1 %14, label %19, label %17

; <label>:17                                      ; preds = %12
  %18 = fmul double %16, 3.000000e-06
  br label %21

; <label>:19                                      ; preds = %12
  %20 = fmul double %16, 1.000000e-06
  br label %21

; <label>:21                                      ; preds = %8, %19, %17
  %.pn = phi double [ %11, %8 ], [ %18, %17 ], [ %20, %19 ]
  %nbfs.1 = fadd double %nbfs.08, %.pn
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %exitcond17 = icmp eq i64 %indvars.iv.next16, 78
  br i1 %exitcond17, label %.preheader, label %.preheader2

.preheader:                                       ; preds = %21, %.preheader
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %.preheader ], [ 0, %21 ]
  %tflop.07 = phi double [ %29, %.preheader ], [ 0.000000e+00, %21 ]
  %22 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %indvars.iv12
  %23 = load double* %22, align 8, !tbaa !14
  %24 = fmul double %23, 1.000000e-06
  %25 = getelementptr inbounds [129 x %struct.t_nrnb_data]* @nbdata, i64 0, i64 %indvars.iv12, i32 1
  %26 = load i32* %25, align 8, !tbaa !18
  %27 = sitofp i32 %26 to double
  %28 = fmul double %24, %27
  %29 = fadd double %tflop.07, %28
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %exitcond14 = icmp eq i64 %indvars.iv.next13, 129
  br i1 %exitcond14, label %30, label %.preheader

; <label>:30                                      ; preds = %.preheader
  %31 = fcmp olt double %29, 1.200000e-38
  br i1 %31, label %32, label %34

; <label>:32                                      ; preds = %30
  %33 = tail call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str4, i64 0, i64 0), i64 26, i64 1, %struct.__sFILE* %out)
  br label %93

; <label>:34                                      ; preds = %30
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([46 x i8]* @.str5, i64 0, i64 0), i64 45, i64 1, %struct.__sFILE* %out)
  %36 = icmp sgt i32 %nprocs, 1
  br i1 %36, label %37, label %39

; <label>:37                                      ; preds = %34
  %38 = tail call i64 @fwrite(i8* getelementptr inbounds ([44 x i8]* @.str6, i64 0, i64 0), i64 43, i64 1, %struct.__sFILE* %out)
  br label %39

; <label>:39                                      ; preds = %37, %34
  %.0 = phi double [ %realtime, %37 ], [ %nodetime, %34 ]
  %40 = tail call i64 @fwrite(i8* getelementptr inbounds ([53 x i8]* @.str7, i64 0, i64 0), i64 52, i64 1, %struct.__sFILE* %out)
  %41 = tail call i64 @fwrite(i8* getelementptr inbounds ([69 x i8]* @.str8, i64 0, i64 0), i64 68, i64 1, %struct.__sFILE* %out)
  %42 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([23 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0)) #9
  br label %43

; <label>:43                                      ; preds = %62, %39
  %indvars.iv = phi i64 [ 0, %39 ], [ %indvars.iv.next, %62 ]
  %mflop.05 = phi double [ 0.000000e+00, %39 ], [ %51, %62 ]
  %tfrac.04 = phi double [ 0.000000e+00, %39 ], [ %55, %62 ]
  %44 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %indvars.iv
  %45 = load double* %44, align 8, !tbaa !14
  %46 = fmul double %45, 1.000000e-06
  %47 = getelementptr inbounds [129 x %struct.t_nrnb_data]* @nbdata, i64 0, i64 %indvars.iv, i32 1
  %48 = load i32* %47, align 8, !tbaa !18
  %49 = sitofp i32 %48 to double
  %50 = fmul double %46, %49
  %51 = fadd double %mflop.05, %50
  %52 = fmul double %46, 1.000000e+02
  %53 = fmul double %52, %49
  %54 = fdiv double %53, %29
  %55 = fadd double %tfrac.04, %54
  %56 = tail call double @fabs(double %46) #10
  %57 = fcmp ogt double %56, 1.200000e-38
  br i1 %57, label %58, label %62

; <label>:58                                      ; preds = %43
  %59 = getelementptr inbounds [129 x %struct.t_nrnb_data]* @nbdata, i64 0, i64 %indvars.iv, i32 0
  %60 = load i8** %59, align 16, !tbaa !16
  %61 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([29 x i8]* @.str14, i64 0, i64 0), i8* %60, double %46, double %50, double %54) #9
  br label %62

; <label>:62                                      ; preds = %43, %58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 129
  br i1 %exitcond, label %63, label %43

; <label>:63                                      ; preds = %62
  %64 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([28 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str17, i64 0, i64 0), double %51, double %55) #9
  %65 = fcmp ogt double %.0, 0.000000e+00
  %66 = fcmp ogt double %realtime, 0.000000e+00
  %or.cond = and i1 %66, %65
  br i1 %or.cond, label %67, label %93

; <label>:67                                      ; preds = %63
  %68 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([20 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0)) #9
  %69 = fmul double %.0, 1.000000e+02
  %70 = fdiv double %69, %realtime
  %71 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([26 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str23, i64 0, i64 0), double %.0, double %realtime, double %70) #9
  %72 = fcmp ogt double %.0, 6.000000e+01
  br i1 %72, label %73, label %75

; <label>:73                                      ; preds = %67
  %74 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([10 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str17, i64 0, i64 0)) #9
  tail call void @pr_difftime(%struct.__sFILE* %out, double %.0) #9
  br label %75

; <label>:75                                      ; preds = %73, %67
  %76 = fcmp ogt float %runtime, 0.000000e+00
  br i1 %76, label %77, label %93

; <label>:77                                      ; preds = %75
  %78 = fdiv double %51, %.0
  %79 = fcmp ogt double %78, 1.000000e+03
  %80 = select i1 %79, i8* getelementptr inbounds ([9 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str28, i64 0, i64 0)
  %81 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([26 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str26, i64 0, i64 0), i8* %80, i8* getelementptr inbounds ([15 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str30, i64 0, i64 0)) #9
  %82 = fdiv double %nbfs.1, %.0
  br i1 %79, label %83, label %85

; <label>:83                                      ; preds = %77
  %84 = fdiv double %78, 1.000000e+03
  br label %85

; <label>:85                                      ; preds = %77, %83
  %86 = phi double [ %84, %83 ], [ %78, %77 ]
  %87 = fmul float %runtime, 3.600000e+03
  %88 = fpext float %87 to double
  %89 = fdiv double %88, %.0
  %90 = fmul double %.0, 1.000000e+03
  %91 = fdiv double %90, %88
  %92 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([34 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str32, i64 0, i64 0), double %82, double %86, double %89, double %91) #9
  br label %93

; <label>:93                                      ; preds = %75, %85, %32, %63
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #5

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #6

; Function Attrs: optsize
declare void @pr_difftime(%struct.__sFILE*, double) #1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @cost_nrnb(i32 %enr) #7 {
  %1 = sext i32 %enr to i64
  %2 = getelementptr inbounds [129 x %struct.t_nrnb_data]* @nbdata, i64 0, i64 %1, i32 1
  %3 = load i32* %2, align 8, !tbaa !18
  ret i32 %3
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @nrnb_str(i32 %enr) #7 {
  %1 = sext i32 %enr to i64
  %2 = getelementptr inbounds [129 x %struct.t_nrnb_data]* @nbdata, i64 0, i64 %1, i32 0
  %3 = load i8** %2, align 16, !tbaa !16
  ret i8* %3
}

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_load(%struct.__sFILE* nocapture %log, i32 %nprocs, %struct.t_nrnb* nocapture readonly %nrnb) #3 {
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str34, i64 0, i64 0), i32 350, i32 1, i32 1032) #9
  %2 = bitcast i8* %1 to %struct.t_nrnb*
  %3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str34, i64 0, i64 0), i32 351, i32 %nprocs, i32 8) #9
  %4 = bitcast i8* %3 to double*
  %5 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str34, i64 0, i64 0), i32 352, i32 %nprocs, i32 8) #9
  %6 = bitcast i8* %5 to double*
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 1032, i32 8, i1 false) #8
  %7 = icmp sgt i32 %nprocs, 0
  br i1 %7, label %.lr.ph29, label %.preheader1

.lr.ph29:                                         ; preds = %0
  %8 = add i32 %nprocs, -1
  br label %11

.preheader1:                                      ; preds = %51, %0
  %9 = bitcast i8* %1 to [129 x double]*
  %10 = sitofp i32 %nprocs to double
  br label %52

; <label>:11                                      ; preds = %51, %.lr.ph29
  %indvars.iv53 = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next54, %51 ]
  br label %12

; <label>:12                                      ; preds = %12, %11
  %indvars.iv.i = phi i64 [ 0, %11 ], [ %indvars.iv.next.i, %12 ]
  %13 = getelementptr inbounds %struct.t_nrnb* %2, i64 0, i32 0, i64 %indvars.iv.i
  %14 = load double* %13, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv53, i32 0, i64 %indvars.iv.i
  %16 = load double* %15, align 8, !tbaa !14
  %17 = fadd double %14, %16
  store double %17, double* %13, align 8, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 129
  br i1 %exitcond.i, label %add_nrnb.exit.preheader, label %12

add_nrnb.exit.preheader:                          ; preds = %12
  %18 = getelementptr inbounds double* %4, i64 %indvars.iv53
  %.pre = load double* %18, align 8, !tbaa !14
  br label %add_nrnb.exit

add_nrnb.exit:                                    ; preds = %add_nrnb.exit, %add_nrnb.exit.preheader
  %19 = phi double [ %.pre, %add_nrnb.exit.preheader ], [ %26, %add_nrnb.exit ]
  %indvars.iv44 = phi i64 [ 0, %add_nrnb.exit.preheader ], [ %indvars.iv.next45, %add_nrnb.exit ]
  %20 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv53, i32 0, i64 %indvars.iv44
  %21 = load double* %20, align 8, !tbaa !14
  %22 = getelementptr inbounds [129 x %struct.t_nrnb_data]* @nbdata, i64 0, i64 %indvars.iv44, i32 1
  %23 = load i32* %22, align 8, !tbaa !18
  %24 = sitofp i32 %23 to double
  %25 = fmul double %21, %24
  %26 = fadd double %19, %25
  store double %26, double* %18, align 8, !tbaa !14
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %exitcond46 = icmp eq i64 %indvars.iv.next45, 78
  br i1 %exitcond46, label %.preheader3, label %add_nrnb.exit

.preheader2:                                      ; preds = %.preheader3
  %27 = getelementptr inbounds double* %6, i64 %indvars.iv53
  %.pre57 = load double* %27, align 8, !tbaa !14
  br label %39

.preheader3:                                      ; preds = %add_nrnb.exit, %.preheader3
  %28 = phi double [ %38, %.preheader3 ], [ %26, %add_nrnb.exit ]
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %.preheader3 ], [ 0, %add_nrnb.exit ]
  %29 = getelementptr inbounds [10 x i32]* @force_index, i64 0, i64 %indvars.iv47
  %30 = load i32* %29, align 4, !tbaa !19
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv53, i32 0, i64 %31
  %33 = load double* %32, align 8, !tbaa !14
  %34 = getelementptr inbounds [129 x %struct.t_nrnb_data]* @nbdata, i64 0, i64 %31, i32 1
  %35 = load i32* %34, align 8, !tbaa !18
  %36 = sitofp i32 %35 to double
  %37 = fmul double %33, %36
  %38 = fadd double %28, %37
  store double %38, double* %18, align 8, !tbaa !14
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %exitcond49 = icmp eq i64 %indvars.iv.next48, 10
  br i1 %exitcond49, label %.preheader2, label %.preheader3

; <label>:39                                      ; preds = %39, %.preheader2
  %40 = phi double [ %.pre57, %.preheader2 ], [ %50, %39 ]
  %indvars.iv50 = phi i64 [ 0, %.preheader2 ], [ %indvars.iv.next51, %39 ]
  %41 = getelementptr inbounds [10 x i32]* @shake_index, i64 0, i64 %indvars.iv50
  %42 = load i32* %41, align 4, !tbaa !19
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv53, i32 0, i64 %43
  %45 = load double* %44, align 8, !tbaa !14
  %46 = getelementptr inbounds [129 x %struct.t_nrnb_data]* @nbdata, i64 0, i64 %43, i32 1
  %47 = load i32* %46, align 8, !tbaa !18
  %48 = sitofp i32 %47 to double
  %49 = fmul double %45, %48
  %50 = fadd double %40, %49
  store double %50, double* %27, align 8, !tbaa !14
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %exitcond52 = icmp eq i64 %indvars.iv.next51, 10
  br i1 %exitcond52, label %51, label %39

; <label>:51                                      ; preds = %39
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %lftr.wideiv55 = trunc i64 %indvars.iv53 to i32
  %exitcond56 = icmp eq i32 %lftr.wideiv55, %8
  br i1 %exitcond56, label %.preheader1, label %11

; <label>:52                                      ; preds = %52, %.preheader1
  %indvars.iv41 = phi i64 [ 0, %.preheader1 ], [ %indvars.iv.next42, %52 ]
  %53 = getelementptr inbounds [129 x double]* %9, i64 0, i64 %indvars.iv41
  %54 = load double* %53, align 8, !tbaa !14
  %55 = fdiv double %54, %10
  store double %55, double* %53, align 8, !tbaa !14
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %exitcond43 = icmp eq i64 %indvars.iv.next42, 129
  br i1 %exitcond43, label %56, label %52

; <label>:56                                      ; preds = %52
  %57 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str37, i64 0, i64 0), i64 55, i64 1, %struct.__sFILE* %log)
  %58 = tail call i64 @fwrite(i8* getelementptr inbounds ([18 x i8]* @.str38, i64 0, i64 0), i64 17, i64 1, %struct.__sFILE* %log)
  br i1 %7, label %.lr.ph21, label %._crit_edge22

.lr.ph21:                                         ; preds = %56
  %59 = add i32 %nprocs, -1
  br label %60

; <label>:60                                      ; preds = %60, %.lr.ph21
  %i.119 = phi i32 [ 0, %.lr.ph21 ], [ %62, %60 ]
  %61 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0), i32 %i.119) #9
  %62 = add nuw nsw i32 %i.119, 1
  %exitcond40 = icmp eq i32 %i.119, %59
  br i1 %exitcond40, label %._crit_edge22, label %60

._crit_edge22:                                    ; preds = %60, %56
  %63 = tail call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str40, i64 0, i64 0), i64 8, i64 1, %struct.__sFILE* %log)
  %64 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str41, i64 0, i64 0), i64 16, i64 1, %struct.__sFILE* %log)
  %65 = add i32 %nprocs, -1
  br i1 %7, label %.lr.ph17, label %._crit_edge18

.lr.ph17:                                         ; preds = %._crit_edge22, %.lr.ph17
  %i.215 = phi i32 [ %67, %.lr.ph17 ], [ 0, %._crit_edge22 ]
  %66 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str42, i64 0, i64 0), i64 4, i64 1, %struct.__sFILE* %log)
  %67 = add nuw nsw i32 %i.215, 1
  %exitcond39 = icmp eq i32 %i.215, %65
  br i1 %exitcond39, label %._crit_edge18, label %.lr.ph17

._crit_edge18:                                    ; preds = %.lr.ph17, %._crit_edge22
  %68 = tail call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str43, i64 0, i64 0), i64 8, i64 1, %struct.__sFILE* %log)
  br label %69

.preheader:                                       ; preds = %91
  br i1 %7, label %.lr.ph, label %._crit_edge

; <label>:69                                      ; preds = %91, %._crit_edge18
  %indvars.iv36 = phi i64 [ 0, %._crit_edge18 ], [ %indvars.iv.next37, %91 ]
  %70 = getelementptr inbounds [129 x double]* %9, i64 0, i64 %indvars.iv36
  %71 = load double* %70, align 8, !tbaa !14
  %72 = fcmp ogt double %71, 0.000000e+00
  br i1 %72, label %73, label %91

; <label>:73                                      ; preds = %69
  %74 = getelementptr inbounds [129 x %struct.t_nrnb_data]* @nbdata, i64 0, i64 %indvars.iv36, i32 0
  %75 = load i8** %74, align 16, !tbaa !16
  %76 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([6 x i8]* @.str44, i64 0, i64 0), i8* %75) #9
  br i1 %7, label %.lr.ph11, label %._crit_edge12.thread

.lr.ph11:                                         ; preds = %73, %.lr.ph11
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %.lr.ph11 ], [ 0, %73 ]
  %unb.08 = phi double [ %83, %.lr.ph11 ], [ 1.000000e+02, %73 ]
  %77 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv32, i32 0, i64 %indvars.iv36
  %78 = load double* %77, align 8, !tbaa !14
  %79 = fmul double %78, 1.000000e+02
  %80 = load double* %70, align 8, !tbaa !14
  %81 = fdiv double %79, %80
  %82 = fcmp ogt double %unb.08, %81
  %83 = select i1 %82, double %unb.08, double %81
  %84 = fptosi double %81 to i32
  %85 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0), i32 %84) #9
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %lftr.wideiv34 = trunc i64 %indvars.iv32 to i32
  %exitcond35 = icmp eq i32 %lftr.wideiv34, %65
  br i1 %exitcond35, label %._crit_edge12, label %.lr.ph11

._crit_edge12:                                    ; preds = %.lr.ph11
  %86 = fcmp ogt double %83, 0.000000e+00
  br i1 %86, label %._crit_edge12.thread, label %90

._crit_edge12.thread:                             ; preds = %73, %._crit_edge12
  %unb.0.lcssa60 = phi double [ %83, %._crit_edge12 ], [ 1.000000e+02, %73 ]
  %87 = fdiv double 1.000000e+04, %unb.0.lcssa60
  %88 = fptosi double %87 to i32
  %89 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([7 x i8]* @.str45, i64 0, i64 0), i32 %88) #9
  br label %91

; <label>:90                                      ; preds = %._crit_edge12
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %log)
  br label %91

; <label>:91                                      ; preds = %69, %90, %._crit_edge12.thread
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %exitcond38 = icmp eq i64 %indvars.iv.next37, 129
  br i1 %exitcond38, label %.preheader, label %69

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ]
  %sav.05 = phi double [ %97, %.lr.ph ], [ 0.000000e+00, %.preheader ]
  %fav.04 = phi double [ %94, %.lr.ph ], [ 0.000000e+00, %.preheader ]
  %92 = getelementptr inbounds double* %4, i64 %indvars.iv
  %93 = load double* %92, align 8, !tbaa !14
  %94 = fadd double %fav.04, %93
  %95 = getelementptr inbounds double* %6, i64 %indvars.iv
  %96 = load double* %95, align 8, !tbaa !14
  %97 = fadd double %sav.05, %96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %65
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %sav.0.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %97, %.lr.ph ]
  %fav.0.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %94, %.lr.ph ]
  %98 = tail call fastcc double @pr_av(%struct.__sFILE* %log, i32 %nprocs, double %fav.0.lcssa, double* %4, i8* getelementptr inbounds ([12 x i8]* @.str47, i64 0, i64 0)) #11
  %99 = tail call fastcc double @pr_av(%struct.__sFILE* %log, i32 %nprocs, double %sav.0.lcssa, double* %6, i8* getelementptr inbounds ([12 x i8]* @.str48, i64 0, i64 0)) #11
  %100 = fmul double %fav.0.lcssa, %98
  %101 = fmul double %sav.0.lcssa, %99
  %102 = fadd double %100, %101
  %103 = fadd double %fav.0.lcssa, %sav.0.lcssa
  %104 = fdiv double %102, %103
  %105 = fcmp ogt double %104, 0.000000e+00
  br i1 %105, label %106, label %109

; <label>:106                                     ; preds = %._crit_edge
  %107 = fdiv double 1.000000e+04, %104
  %108 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([44 x i8]* @.str49, i64 0, i64 0), double %107) #9
  br label %109

; <label>:109                                     ; preds = %106, %._crit_edge
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc double @pr_av(%struct.__sFILE* nocapture %log, i32 %nprocs, double %fav, double* nocapture readonly %ftot, i8* %title) #3 {
  %1 = fcmp ogt double %fav, 0.000000e+00
  br i1 %1, label %2, label %23

; <label>:2                                       ; preds = %0
  %3 = sitofp i32 %nprocs to double
  %4 = fdiv double %fav, %3
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([7 x i8]* @.str178, i64 0, i64 0), i8* %title) #9
  %6 = icmp sgt i32 %nprocs, 0
  br i1 %6, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %2
  %7 = add i32 %nprocs, -1
  br label %8

; <label>:8                                       ; preds = %8, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %8 ]
  %unb.02 = phi double [ 0.000000e+00, %.lr.ph ], [ %14, %8 ]
  %9 = getelementptr inbounds double* %ftot, i64 %indvars.iv
  %10 = load double* %9, align 8, !tbaa !14
  %11 = fmul double %10, 1.000000e+02
  %12 = fdiv double %11, %4
  %13 = fcmp ogt double %unb.02, %12
  %14 = select i1 %13, double %unb.02, double %12
  %15 = fptosi double %12 to i32
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0), i32 %15) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %7
  br i1 %exitcond, label %._crit_edge, label %8

._crit_edge:                                      ; preds = %8
  %17 = fcmp ogt double %14, 0.000000e+00
  br i1 %17, label %18, label %._crit_edge.thread

; <label>:18                                      ; preds = %._crit_edge
  %19 = fdiv double 1.000000e+04, %14
  %20 = fptosi double %19 to i32
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([8 x i8]* @.str179, i64 0, i64 0), i32 %20) #9
  br label %23

._crit_edge.thread:                               ; preds = %2, %._crit_edge
  %unb.0.lcssa3 = phi double [ %14, %._crit_edge ], [ 0.000000e+00, %2 ]
  %22 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str180, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %log)
  br label %23

; <label>:23                                      ; preds = %18, %._crit_edge.thread, %0
  %unb.1 = phi double [ %14, %18 ], [ %unb.0.lcssa3, %._crit_edge.thread ], [ 0.000000e+00, %0 ]
  ret double %unb.1
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #8

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #8

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #8

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind optsize readnone }
attributes #11 = { optsize }

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
!14 = !{!15, !15, i64 0}
!15 = !{!"double", !5, i64 0}
!16 = !{!17, !4, i64 0}
!17 = !{!"", !4, i64 0, !7, i64 8}
!18 = !{!17, !7, i64 8}
!19 = !{!7, !7, i64 0}

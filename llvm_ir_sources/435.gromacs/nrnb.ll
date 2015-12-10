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
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !208, metadata !340), !dbg !341
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !209, metadata !340), !dbg !342
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !343
  %2 = load i32* %1, align 4, !dbg !345, !tbaa !346
  %3 = add nsw i32 %2, -1, !dbg !345
  store i32 %3, i32* %1, align 4, !dbg !345, !tbaa !346
  %4 = icmp sgt i32 %2, 0, !dbg !355
  br i1 %4, label %._crit_edge, label %5, !dbg !356

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !357
  br label %10, !dbg !356

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !358
  %7 = load i32* %6, align 4, !dbg !358, !tbaa !359
  %8 = icmp sle i32 %2, %7, !dbg !360
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !361
  %or.cond = or i1 %9, %8, !dbg !362
  br i1 %or.cond, label %15, label %10, !dbg !362

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !357
  %11 = trunc i32 %_c to i8, !dbg !363
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !364
  %13 = load i8** %12, align 8, !dbg !365, !tbaa !366
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !365
  store i8* %14, i8** %12, align 8, !dbg !365, !tbaa !366
  store i8 %11, i8* %13, align 1, !dbg !367, !tbaa !368
  br label %17, !dbg !369

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #10, !dbg !370
  br label %17, !dbg !371

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !372
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #2 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !215, metadata !340), !dbg !373
  %1 = icmp sgt i32 %__signo, 32, !dbg !374
  br i1 %1, label %5, label %2, !dbg !375

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !376
  %4 = shl i32 1, %3, !dbg !377
  br label %5, !dbg !375

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !375
  ret i32 %6, !dbg !378
}

; Function Attrs: nounwind optsize ssp uwtable
define void @init_nrnb(%struct.t_nrnb* nocapture %nrnb) #3 {
  tail call void @llvm.dbg.value(metadata %struct.t_nrnb* %nrnb, i64 0, metadata !228, metadata !340), !dbg !379
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !229, metadata !340), !dbg !380
  %nrnb2 = bitcast %struct.t_nrnb* %nrnb to i8*
  call void @llvm.memset.p0i8.i64(i8* %nrnb2, i8 0, i64 1032, i32 8, i1 false), !dbg !381
  ret void, !dbg !384
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cp_nrnb(%struct.t_nrnb* nocapture %dest, %struct.t_nrnb* nocapture readonly %src) #3 {
  tail call void @llvm.dbg.value(metadata %struct.t_nrnb* %dest, i64 0, metadata !234, metadata !340), !dbg !385
  tail call void @llvm.dbg.value(metadata %struct.t_nrnb* %src, i64 0, metadata !235, metadata !340), !dbg !386
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !236, metadata !340), !dbg !387
  br label %1, !dbg !388

; <label>:1                                       ; preds = %1, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ]
  %2 = getelementptr inbounds %struct.t_nrnb* %src, i64 0, i32 0, i64 %indvars.iv, !dbg !390
  %3 = bitcast double* %2 to i64*, !dbg !390
  %4 = load i64* %3, align 8, !dbg !390, !tbaa !392
  %5 = getelementptr inbounds %struct.t_nrnb* %dest, i64 0, i32 0, i64 %indvars.iv, !dbg !394
  %6 = bitcast double* %5 to i64*, !dbg !395
  store i64 %4, i64* %6, align 8, !dbg !395, !tbaa !392
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !388
  %exitcond = icmp eq i64 %indvars.iv.next, 129, !dbg !388
  br i1 %exitcond, label %7, label %1, !dbg !388

; <label>:7                                       ; preds = %1
  ret void, !dbg !396
}

; Function Attrs: nounwind optsize ssp uwtable
define void @add_nrnb(%struct.t_nrnb* nocapture %dest, %struct.t_nrnb* nocapture readonly %s1, %struct.t_nrnb* nocapture readonly %s2) #3 {
  tail call void @llvm.dbg.value(metadata %struct.t_nrnb* %dest, i64 0, metadata !241, metadata !340), !dbg !397
  tail call void @llvm.dbg.value(metadata %struct.t_nrnb* %s1, i64 0, metadata !242, metadata !340), !dbg !398
  tail call void @llvm.dbg.value(metadata %struct.t_nrnb* %s2, i64 0, metadata !243, metadata !340), !dbg !399
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !244, metadata !340), !dbg !400
  br label %1, !dbg !401

; <label>:1                                       ; preds = %1, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ]
  %2 = getelementptr inbounds %struct.t_nrnb* %s1, i64 0, i32 0, i64 %indvars.iv, !dbg !403
  %3 = load double* %2, align 8, !dbg !403, !tbaa !392
  %4 = getelementptr inbounds %struct.t_nrnb* %s2, i64 0, i32 0, i64 %indvars.iv, !dbg !405
  %5 = load double* %4, align 8, !dbg !405, !tbaa !392
  %6 = fadd double %3, %5, !dbg !406
  %7 = getelementptr inbounds %struct.t_nrnb* %dest, i64 0, i32 0, i64 %indvars.iv, !dbg !407
  store double %6, double* %7, align 8, !dbg !408, !tbaa !392
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !401
  %exitcond = icmp eq i64 %indvars.iv.next, 129, !dbg !401
  br i1 %exitcond, label %8, label %1, !dbg !401

; <label>:8                                       ; preds = %1
  ret void, !dbg !409
}

; Function Attrs: nounwind optsize ssp uwtable
define void @print_nrnb(%struct.__sFILE* nocapture %out, %struct.t_nrnb* nocapture readonly %nrnb) #3 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !249, metadata !340), !dbg !410
  tail call void @llvm.dbg.value(metadata %struct.t_nrnb* %nrnb, i64 0, metadata !250, metadata !340), !dbg !411
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !251, metadata !340), !dbg !412
  br label %1, !dbg !413

; <label>:1                                       ; preds = %1, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ]
  %2 = getelementptr inbounds [129 x %struct.t_nrnb_data]* @nbdata, i64 0, i64 %indvars.iv, i32 0, !dbg !415
  %3 = load i8** %2, align 16, !dbg !415, !tbaa !417
  %4 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %indvars.iv, !dbg !419
  %5 = load double* %4, align 8, !dbg !419, !tbaa !392
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0), i8* %3, double %5) #10, !dbg !420
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !413
  %exitcond = icmp eq i64 %indvars.iv.next, 129, !dbg !413
  br i1 %exitcond, label %7, label %1, !dbg !413

; <label>:7                                       ; preds = %1
  ret void, !dbg !421
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @_inc_nrnb(%struct.t_nrnb* nocapture %nrnb, i32 %enr, i32 %inc, i8* nocapture readnone %file, i32 %line) #3 {
  tail call void @llvm.dbg.value(metadata %struct.t_nrnb* %nrnb, i64 0, metadata !256, metadata !340), !dbg !422
  tail call void @llvm.dbg.value(metadata i32 %enr, i64 0, metadata !257, metadata !340), !dbg !423
  tail call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !258, metadata !340), !dbg !424
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !259, metadata !340), !dbg !425
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !260, metadata !340), !dbg !426
  %1 = sitofp i32 %inc to double, !dbg !427
  %2 = sext i32 %enr to i64, !dbg !428
  %3 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %2, !dbg !428
  %4 = load double* %3, align 8, !dbg !429, !tbaa !392
  %5 = fadd double %1, %4, !dbg !429
  store double %5, double* %3, align 8, !dbg !429, !tbaa !392
  ret void, !dbg !430
}

; Function Attrs: nounwind optsize ssp uwtable
define void @print_perf(%struct.__sFILE* %out, double %nodetime, double %realtime, float %runtime, %struct.t_nrnb* nocapture readonly %nrnb, i32 %nprocs) #3 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !268, metadata !340), !dbg !431
  tail call void @llvm.dbg.value(metadata double %nodetime, i64 0, metadata !269, metadata !340), !dbg !432
  tail call void @llvm.dbg.value(metadata double %realtime, i64 0, metadata !270, metadata !340), !dbg !433
  tail call void @llvm.dbg.value(metadata float %runtime, i64 0, metadata !271, metadata !340), !dbg !434
  tail call void @llvm.dbg.value(metadata %struct.t_nrnb* %nrnb, i64 0, metadata !272, metadata !340), !dbg !435
  tail call void @llvm.dbg.value(metadata i32 %nprocs, i64 0, metadata !273, metadata !340), !dbg !436
  %1 = fcmp olt double %nodetime, 1.200000e-38, !dbg !437
  br i1 %1, label %2, label %.preheader2, !dbg !439

; <label>:2                                       ; preds = %0
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([38 x i8]* @.str1, i64 0, i64 0), i64 37, i64 1, %struct.__sFILE* %out), !dbg !440
  br label %.preheader2, !dbg !442

.preheader2:                                      ; preds = %0, %2, %21
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %21 ], [ 0, %2 ], [ 0, %0 ]
  %nbfs.08 = phi double [ %nbfs.1, %21 ], [ 0.000000e+00, %2 ], [ 0.000000e+00, %0 ]
  %4 = getelementptr inbounds [129 x %struct.t_nrnb_data]* @nbdata, i64 0, i64 %indvars.iv15, i32 0, !dbg !443
  %5 = load i8** %4, align 16, !dbg !443, !tbaa !417
  %6 = tail call i8* @strstr(i8* %5, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #10, !dbg !448
  %7 = icmp eq i8* %6, null, !dbg !449
  br i1 %7, label %12, label %8, !dbg !450

; <label>:8                                       ; preds = %.preheader2
  %9 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %indvars.iv15, !dbg !451
  %10 = load double* %9, align 8, !dbg !451, !tbaa !392
  %11 = fmul double %10, 9.000000e-06, !dbg !452
  br label %21, !dbg !453

; <label>:12                                      ; preds = %.preheader2
  %13 = tail call i8* @strstr(i8* %5, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #10, !dbg !454
  %14 = icmp eq i8* %13, null, !dbg !456
  %15 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %indvars.iv15, !dbg !457
  %16 = load double* %15, align 8, !dbg !457, !tbaa !392
  br i1 %14, label %19, label %17, !dbg !458

; <label>:17                                      ; preds = %12
  %18 = fmul double %16, 3.000000e-06, !dbg !459
  br label %21, !dbg !460

; <label>:19                                      ; preds = %12
  %20 = fmul double %16, 1.000000e-06, !dbg !461
  br label %21

; <label>:21                                      ; preds = %8, %19, %17
  %.pn = phi double [ %11, %8 ], [ %18, %17 ], [ %20, %19 ]
  %nbfs.1 = fadd double %nbfs.08, %.pn, !dbg !462
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1, !dbg !463
  %exitcond17 = icmp eq i64 %indvars.iv.next16, 78, !dbg !463
  br i1 %exitcond17, label %.preheader, label %.preheader2, !dbg !463

.preheader:                                       ; preds = %21, %.preheader
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %.preheader ], [ 0, %21 ]
  %tflop.07 = phi double [ %29, %.preheader ], [ 0.000000e+00, %21 ]
  %22 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %indvars.iv12, !dbg !464
  %23 = load double* %22, align 8, !dbg !464, !tbaa !392
  %24 = fmul double %23, 1.000000e-06, !dbg !467
  %25 = getelementptr inbounds [129 x %struct.t_nrnb_data]* @nbdata, i64 0, i64 %indvars.iv12, i32 1, !dbg !468
  %26 = load i32* %25, align 8, !dbg !468, !tbaa !469
  %27 = sitofp i32 %26 to double, !dbg !470
  %28 = fmul double %24, %27, !dbg !471
  %29 = fadd double %tflop.07, %28, !dbg !472
  tail call void @llvm.dbg.value(metadata double %29, i64 0, metadata !280, metadata !340), !dbg !473
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1, !dbg !474
  %exitcond14 = icmp eq i64 %indvars.iv.next13, 129, !dbg !474
  br i1 %exitcond14, label %30, label %.preheader, !dbg !474

; <label>:30                                      ; preds = %.preheader
  %31 = fcmp olt double %29, 1.200000e-38, !dbg !475
  br i1 %31, label %32, label %34, !dbg !477

; <label>:32                                      ; preds = %30
  %33 = tail call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str4, i64 0, i64 0), i64 26, i64 1, %struct.__sFILE* %out), !dbg !478
  br label %93, !dbg !480

; <label>:34                                      ; preds = %30
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([46 x i8]* @.str5, i64 0, i64 0), i64 45, i64 1, %struct.__sFILE* %out), !dbg !481
  %36 = icmp sgt i32 %nprocs, 1, !dbg !482
  br i1 %36, label %37, label %39, !dbg !484

; <label>:37                                      ; preds = %34
  tail call void @llvm.dbg.value(metadata double %realtime, i64 0, metadata !269, metadata !340), !dbg !432
  %38 = tail call i64 @fwrite(i8* getelementptr inbounds ([44 x i8]* @.str6, i64 0, i64 0), i64 43, i64 1, %struct.__sFILE* %out), !dbg !485
  br label %39, !dbg !487

; <label>:39                                      ; preds = %37, %34
  %.0 = phi double [ %realtime, %37 ], [ %nodetime, %34 ]
  %40 = tail call i64 @fwrite(i8* getelementptr inbounds ([53 x i8]* @.str7, i64 0, i64 0), i64 52, i64 1, %struct.__sFILE* %out), !dbg !488
  %41 = tail call i64 @fwrite(i8* getelementptr inbounds ([69 x i8]* @.str8, i64 0, i64 0), i64 68, i64 1, %struct.__sFILE* %out), !dbg !489
  %42 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([23 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0)) #10, !dbg !490
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !279, metadata !340), !dbg !491
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !278, metadata !340), !dbg !492
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !274, metadata !340), !dbg !493
  br label %43, !dbg !494

; <label>:43                                      ; preds = %62, %39
  %indvars.iv = phi i64 [ 0, %39 ], [ %indvars.iv.next, %62 ]
  %mflop.05 = phi double [ 0.000000e+00, %39 ], [ %51, %62 ]
  %tfrac.04 = phi double [ 0.000000e+00, %39 ], [ %55, %62 ]
  %44 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %indvars.iv, !dbg !496
  %45 = load double* %44, align 8, !dbg !496, !tbaa !392
  %46 = fmul double %45, 1.000000e-06, !dbg !499
  tail call void @llvm.dbg.value(metadata double %46, i64 0, metadata !276, metadata !340), !dbg !500
  %47 = getelementptr inbounds [129 x %struct.t_nrnb_data]* @nbdata, i64 0, i64 %indvars.iv, i32 1, !dbg !501
  %48 = load i32* %47, align 8, !dbg !501, !tbaa !469
  %49 = sitofp i32 %48 to double, !dbg !502
  %50 = fmul double %46, %49, !dbg !503
  %51 = fadd double %mflop.05, %50, !dbg !504
  tail call void @llvm.dbg.value(metadata double %51, i64 0, metadata !279, metadata !340), !dbg !491
  %52 = fmul double %46, 1.000000e+02, !dbg !505
  %53 = fmul double %52, %49, !dbg !506
  %54 = fdiv double %53, %29, !dbg !507
  tail call void @llvm.dbg.value(metadata double %54, i64 0, metadata !277, metadata !340), !dbg !508
  %55 = fadd double %tfrac.04, %54, !dbg !509
  tail call void @llvm.dbg.value(metadata double %55, i64 0, metadata !278, metadata !340), !dbg !492
  %56 = tail call double @fabs(double %46) #11, !dbg !510
  %57 = fcmp ogt double %56, 1.200000e-38, !dbg !512
  br i1 %57, label %58, label %62, !dbg !513

; <label>:58                                      ; preds = %43
  %59 = getelementptr inbounds [129 x %struct.t_nrnb_data]* @nbdata, i64 0, i64 %indvars.iv, i32 0, !dbg !514
  %60 = load i8** %59, align 16, !dbg !514, !tbaa !417
  %61 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([29 x i8]* @.str14, i64 0, i64 0), i8* %60, double %46, double %50, double %54) #10, !dbg !515
  br label %62, !dbg !515

; <label>:62                                      ; preds = %43, %58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !494
  %exitcond = icmp eq i64 %indvars.iv.next, 129, !dbg !494
  br i1 %exitcond, label %63, label %43, !dbg !494

; <label>:63                                      ; preds = %62
  %64 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([28 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str17, i64 0, i64 0), double %51, double %55) #10, !dbg !516
  %65 = fcmp ogt double %.0, 0.000000e+00, !dbg !517
  %66 = fcmp ogt double %realtime, 0.000000e+00, !dbg !519
  %or.cond = and i1 %66, %65, !dbg !520
  br i1 %or.cond, label %67, label %93, !dbg !520

; <label>:67                                      ; preds = %63
  %68 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([20 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0)) #10, !dbg !521
  %69 = fmul double %.0, 1.000000e+02, !dbg !523
  %70 = fdiv double %69, %realtime, !dbg !524
  %71 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([26 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str23, i64 0, i64 0), double %.0, double %realtime, double %70) #10, !dbg !525
  %72 = fcmp ogt double %.0, 6.000000e+01, !dbg !526
  br i1 %72, label %73, label %75, !dbg !528

; <label>:73                                      ; preds = %67
  %74 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([10 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str17, i64 0, i64 0)) #10, !dbg !529
  tail call void @pr_difftime(%struct.__sFILE* %out, double %.0) #10, !dbg !531
  br label %75, !dbg !532

; <label>:75                                      ; preds = %73, %67
  %76 = fcmp ogt float %runtime, 0.000000e+00, !dbg !533
  br i1 %76, label %77, label %93, !dbg !535

; <label>:77                                      ; preds = %75
  %78 = fdiv double %51, %.0, !dbg !536
  tail call void @llvm.dbg.value(metadata double %78, i64 0, metadata !279, metadata !340), !dbg !491
  %79 = fcmp ogt double %78, 1.000000e+03, !dbg !538
  %80 = select i1 %79, i8* getelementptr inbounds ([9 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str28, i64 0, i64 0), !dbg !539
  %81 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([26 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str26, i64 0, i64 0), i8* %80, i8* getelementptr inbounds ([15 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str30, i64 0, i64 0)) #10, !dbg !540
  %82 = fdiv double %nbfs.1, %.0, !dbg !541
  br i1 %79, label %83, label %85, !dbg !542

; <label>:83                                      ; preds = %77
  %84 = fdiv double %78, 1.000000e+03, !dbg !543
  br label %85, !dbg !542

; <label>:85                                      ; preds = %77, %83
  %86 = phi double [ %84, %83 ], [ %78, %77 ], !dbg !542
  %87 = fmul float %runtime, 3.600000e+03, !dbg !544
  %88 = fpext float %87 to double, !dbg !545
  %89 = fdiv double %88, %.0, !dbg !546
  %90 = fmul double %.0, 1.000000e+03, !dbg !547
  %91 = fdiv double %90, %88, !dbg !548
  %92 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([34 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str32, i64 0, i64 0), double %82, double %86, double %89, double %91) #10, !dbg !549
  br label %93, !dbg !550

; <label>:93                                      ; preds = %75, %85, %32, %63
  ret void, !dbg !551
}

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #5

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #6

; Function Attrs: optsize
declare void @pr_difftime(%struct.__sFILE*, double) #1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @cost_nrnb(i32 %enr) #7 {
  tail call void @llvm.dbg.value(metadata i32 %enr, i64 0, metadata !283, metadata !340), !dbg !552
  %1 = sext i32 %enr to i64, !dbg !553
  %2 = getelementptr inbounds [129 x %struct.t_nrnb_data]* @nbdata, i64 0, i64 %1, i32 1, !dbg !554
  %3 = load i32* %2, align 8, !dbg !554, !tbaa !469
  ret i32 %3, !dbg !555
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @nrnb_str(i32 %enr) #7 {
  tail call void @llvm.dbg.value(metadata i32 %enr, i64 0, metadata !288, metadata !340), !dbg !556
  %1 = sext i32 %enr to i64, !dbg !557
  %2 = getelementptr inbounds [129 x %struct.t_nrnb_data]* @nbdata, i64 0, i64 %1, i32 0, !dbg !558
  %3 = load i8** %2, align 16, !dbg !558, !tbaa !417
  ret i8* %3, !dbg !559
}

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_load(%struct.__sFILE* nocapture %log, i32 %nprocs, %struct.t_nrnb* nocapture readonly %nrnb) #3 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %log, i64 0, metadata !293, metadata !340), !dbg !560
  tail call void @llvm.dbg.value(metadata i32 %nprocs, i64 0, metadata !294, metadata !340), !dbg !561
  tail call void @llvm.dbg.value(metadata %struct.t_nrnb* %nrnb, i64 0, metadata !295, metadata !340), !dbg !562
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str34, i64 0, i64 0), i32 350, i32 1, i32 1032) #10, !dbg !563
  %2 = bitcast i8* %1 to %struct.t_nrnb*, !dbg !563
  tail call void @llvm.dbg.value(metadata %struct.t_nrnb* %2, i64 0, metadata !308, metadata !340), !dbg !564
  %3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str34, i64 0, i64 0), i32 351, i32 %nprocs, i32 8) #10, !dbg !565
  %4 = bitcast i8* %3 to double*, !dbg !565
  tail call void @llvm.dbg.value(metadata double* %4, i64 0, metadata !303, metadata !340), !dbg !566
  %5 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str34, i64 0, i64 0), i32 352, i32 %nprocs, i32 8) #10, !dbg !567
  %6 = bitcast i8* %5 to double*, !dbg !567
  tail call void @llvm.dbg.value(metadata double* %6, i64 0, metadata !306, metadata !340), !dbg !568
  tail call void @llvm.dbg.value(metadata %struct.t_nrnb* %2, i64 0, metadata !228, metadata !340) #9, !dbg !569
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !229, metadata !340) #9, !dbg !571
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 1032, i32 8, i1 false) #9, !dbg !572
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !296, metadata !340), !dbg !573
  %7 = icmp sgt i32 %nprocs, 0, !dbg !574
  br i1 %7, label %.lr.ph29, label %.preheader1, !dbg !577

.lr.ph29:                                         ; preds = %0
  %8 = add i32 %nprocs, -1, !dbg !577
  br label %11, !dbg !577

.preheader1:                                      ; preds = %51, %0
  %9 = bitcast i8* %1 to [129 x double]*, !dbg !578
  %10 = sitofp i32 %nprocs to double, !dbg !581
  br label %52, !dbg !582

; <label>:11                                      ; preds = %51, %.lr.ph29
  %indvars.iv53 = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next54, %51 ]
  tail call void @llvm.dbg.value(metadata %struct.t_nrnb* %2, i64 0, metadata !241, metadata !340), !dbg !583
  tail call void @llvm.dbg.value(metadata %struct.t_nrnb* %2, i64 0, metadata !242, metadata !340), !dbg !586
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !244, metadata !340), !dbg !587
  br label %12, !dbg !588

; <label>:12                                      ; preds = %12, %11
  %indvars.iv.i = phi i64 [ 0, %11 ], [ %indvars.iv.next.i, %12 ], !dbg !589
  %13 = getelementptr inbounds %struct.t_nrnb* %2, i64 0, i32 0, i64 %indvars.iv.i, !dbg !590
  %14 = load double* %13, align 8, !dbg !590, !tbaa !392
  %15 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv53, i32 0, i64 %indvars.iv.i, !dbg !591
  %16 = load double* %15, align 8, !dbg !591, !tbaa !392
  %17 = fadd double %14, %16, !dbg !592
  store double %17, double* %13, align 8, !dbg !593, !tbaa !392
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !588
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 129, !dbg !588
  br i1 %exitcond.i, label %add_nrnb.exit.preheader, label %12, !dbg !588

add_nrnb.exit.preheader:                          ; preds = %12
  %18 = getelementptr inbounds double* %4, i64 %indvars.iv53, !dbg !594
  %.pre = load double* %18, align 8, !dbg !597, !tbaa !392
  br label %add_nrnb.exit, !dbg !598

add_nrnb.exit:                                    ; preds = %add_nrnb.exit, %add_nrnb.exit.preheader
  %19 = phi double [ %.pre, %add_nrnb.exit.preheader ], [ %26, %add_nrnb.exit ], !dbg !599
  %indvars.iv44 = phi i64 [ 0, %add_nrnb.exit.preheader ], [ %indvars.iv.next45, %add_nrnb.exit ]
  %20 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv53, i32 0, i64 %indvars.iv44, !dbg !599
  %21 = load double* %20, align 8, !dbg !599, !tbaa !392
  %22 = getelementptr inbounds [129 x %struct.t_nrnb_data]* @nbdata, i64 0, i64 %indvars.iv44, i32 1, !dbg !600
  %23 = load i32* %22, align 8, !dbg !600, !tbaa !469
  %24 = sitofp i32 %23 to double, !dbg !602
  %25 = fmul double %21, %24, !dbg !603
  %26 = fadd double %19, %25, !dbg !597
  store double %26, double* %18, align 8, !dbg !597, !tbaa !392
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1, !dbg !598
  %exitcond46 = icmp eq i64 %indvars.iv.next45, 78, !dbg !598
  br i1 %exitcond46, label %.preheader3, label %add_nrnb.exit, !dbg !598

.preheader2:                                      ; preds = %.preheader3
  %27 = getelementptr inbounds double* %6, i64 %indvars.iv53, !dbg !604
  %.pre57 = load double* %27, align 8, !dbg !608, !tbaa !392
  br label %39, !dbg !609

.preheader3:                                      ; preds = %add_nrnb.exit, %.preheader3
  %28 = phi double [ %38, %.preheader3 ], [ %26, %add_nrnb.exit ], !dbg !610
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %.preheader3 ], [ 0, %add_nrnb.exit ]
  %29 = getelementptr inbounds [10 x i32]* @force_index, i64 0, i64 %indvars.iv47, !dbg !610
  %30 = load i32* %29, align 4, !dbg !610, !tbaa !613
  %31 = sext i32 %30 to i64, !dbg !614
  %32 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv53, i32 0, i64 %31, !dbg !614
  %33 = load double* %32, align 8, !dbg !614, !tbaa !392
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !283, metadata !340), !dbg !615
  %34 = getelementptr inbounds [129 x %struct.t_nrnb_data]* @nbdata, i64 0, i64 %31, i32 1, !dbg !617
  %35 = load i32* %34, align 8, !dbg !617, !tbaa !469
  %36 = sitofp i32 %35 to double, !dbg !618
  %37 = fmul double %33, %36, !dbg !619
  %38 = fadd double %28, %37, !dbg !620
  store double %38, double* %18, align 8, !dbg !620, !tbaa !392
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1, !dbg !621
  %exitcond49 = icmp eq i64 %indvars.iv.next48, 10, !dbg !621
  br i1 %exitcond49, label %.preheader2, label %.preheader3, !dbg !621

; <label>:39                                      ; preds = %39, %.preheader2
  %40 = phi double [ %.pre57, %.preheader2 ], [ %50, %39 ], !dbg !622
  %indvars.iv50 = phi i64 [ 0, %.preheader2 ], [ %indvars.iv.next51, %39 ]
  %41 = getelementptr inbounds [10 x i32]* @shake_index, i64 0, i64 %indvars.iv50, !dbg !622
  %42 = load i32* %41, align 4, !dbg !622, !tbaa !613
  %43 = sext i32 %42 to i64, !dbg !623
  %44 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv53, i32 0, i64 %43, !dbg !623
  %45 = load double* %44, align 8, !dbg !623, !tbaa !392
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !283, metadata !340), !dbg !624
  %46 = getelementptr inbounds [129 x %struct.t_nrnb_data]* @nbdata, i64 0, i64 %43, i32 1, !dbg !626
  %47 = load i32* %46, align 8, !dbg !626, !tbaa !469
  %48 = sitofp i32 %47 to double, !dbg !627
  %49 = fmul double %45, %48, !dbg !628
  %50 = fadd double %40, %49, !dbg !608
  store double %50, double* %27, align 8, !dbg !608, !tbaa !392
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1, !dbg !609
  %exitcond52 = icmp eq i64 %indvars.iv.next51, 10, !dbg !609
  br i1 %exitcond52, label %51, label %39, !dbg !609

; <label>:51                                      ; preds = %39
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1, !dbg !577
  %lftr.wideiv55 = trunc i64 %indvars.iv53 to i32, !dbg !577
  %exitcond56 = icmp eq i32 %lftr.wideiv55, %8, !dbg !577
  br i1 %exitcond56, label %.preheader1, label %11, !dbg !577

; <label>:52                                      ; preds = %52, %.preheader1
  %indvars.iv41 = phi i64 [ 0, %.preheader1 ], [ %indvars.iv.next42, %52 ]
  %53 = getelementptr inbounds [129 x double]* %9, i64 0, i64 %indvars.iv41, !dbg !629
  %54 = load double* %53, align 8, !dbg !629, !tbaa !392
  %55 = fdiv double %54, %10, !dbg !630
  store double %55, double* %53, align 8, !dbg !631, !tbaa !392
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1, !dbg !582
  %exitcond43 = icmp eq i64 %indvars.iv.next42, 129, !dbg !582
  br i1 %exitcond43, label %56, label %52, !dbg !582

; <label>:56                                      ; preds = %52
  %57 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str37, i64 0, i64 0), i64 55, i64 1, %struct.__sFILE* %log), !dbg !632
  %58 = tail call i64 @fwrite(i8* getelementptr inbounds ([18 x i8]* @.str38, i64 0, i64 0), i64 17, i64 1, %struct.__sFILE* %log), !dbg !633
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !296, metadata !340), !dbg !573
  br i1 %7, label %.lr.ph21, label %._crit_edge22, !dbg !634

.lr.ph21:                                         ; preds = %56
  %59 = add i32 %nprocs, -1, !dbg !634
  br label %60, !dbg !634

; <label>:60                                      ; preds = %60, %.lr.ph21
  %i.119 = phi i32 [ 0, %.lr.ph21 ], [ %62, %60 ]
  %61 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0), i32 %i.119) #10, !dbg !636
  %62 = add nuw nsw i32 %i.119, 1, !dbg !638
  tail call void @llvm.dbg.value(metadata i32 %62, i64 0, metadata !296, metadata !340), !dbg !573
  %exitcond40 = icmp eq i32 %i.119, %59, !dbg !634
  br i1 %exitcond40, label %._crit_edge22, label %60, !dbg !634

._crit_edge22:                                    ; preds = %60, %56
  %63 = tail call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str40, i64 0, i64 0), i64 8, i64 1, %struct.__sFILE* %log), !dbg !639
  %64 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str41, i64 0, i64 0), i64 16, i64 1, %struct.__sFILE* %log), !dbg !640
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !296, metadata !340), !dbg !573
  %65 = add i32 %nprocs, -1, !dbg !641
  br i1 %7, label %.lr.ph17, label %._crit_edge18, !dbg !641

.lr.ph17:                                         ; preds = %._crit_edge22, %.lr.ph17
  %i.215 = phi i32 [ %67, %.lr.ph17 ], [ 0, %._crit_edge22 ]
  %66 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str42, i64 0, i64 0), i64 4, i64 1, %struct.__sFILE* %log), !dbg !643
  %67 = add nuw nsw i32 %i.215, 1, !dbg !645
  tail call void @llvm.dbg.value(metadata i32 %67, i64 0, metadata !296, metadata !340), !dbg !573
  %exitcond39 = icmp eq i32 %i.215, %65, !dbg !641
  br i1 %exitcond39, label %._crit_edge18, label %.lr.ph17, !dbg !641

._crit_edge18:                                    ; preds = %.lr.ph17, %._crit_edge22
  %68 = tail call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str43, i64 0, i64 0), i64 8, i64 1, %struct.__sFILE* %log), !dbg !646
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !297, metadata !340), !dbg !647
  br label %69, !dbg !648

.preheader:                                       ; preds = %91
  br i1 %7, label %.lr.ph, label %._crit_edge, !dbg !650

; <label>:69                                      ; preds = %91, %._crit_edge18
  %indvars.iv36 = phi i64 [ 0, %._crit_edge18 ], [ %indvars.iv.next37, %91 ]
  tail call void @llvm.dbg.value(metadata double 1.000000e+02, i64 0, metadata !300, metadata !340), !dbg !652
  %70 = getelementptr inbounds [129 x double]* %9, i64 0, i64 %indvars.iv36, !dbg !653
  %71 = load double* %70, align 8, !dbg !653, !tbaa !392
  %72 = fcmp ogt double %71, 0.000000e+00, !dbg !657
  br i1 %72, label %73, label %91, !dbg !658

; <label>:73                                      ; preds = %69
  %74 = getelementptr inbounds [129 x %struct.t_nrnb_data]* @nbdata, i64 0, i64 %indvars.iv36, i32 0, !dbg !659
  %75 = load i8** %74, align 16, !dbg !659, !tbaa !417
  %76 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([6 x i8]* @.str44, i64 0, i64 0), i8* %75) #10, !dbg !662
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !296, metadata !340), !dbg !573
  br i1 %7, label %.lr.ph11, label %._crit_edge12.thread, !dbg !663

.lr.ph11:                                         ; preds = %73, %.lr.ph11
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %.lr.ph11 ], [ 0, %73 ]
  %unb.08 = phi double [ %83, %.lr.ph11 ], [ 1.000000e+02, %73 ]
  %77 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv32, i32 0, i64 %indvars.iv36, !dbg !665
  %78 = load double* %77, align 8, !dbg !665, !tbaa !392
  %79 = fmul double %78, 1.000000e+02, !dbg !668
  %80 = load double* %70, align 8, !dbg !669, !tbaa !392
  %81 = fdiv double %79, %80, !dbg !670
  tail call void @llvm.dbg.value(metadata double %81, i64 0, metadata !299, metadata !340), !dbg !671
  %82 = fcmp ogt double %unb.08, %81, !dbg !672
  %83 = select i1 %82, double %unb.08, double %81, !dbg !672
  tail call void @llvm.dbg.value(metadata double %83, i64 0, metadata !300, metadata !340), !dbg !652
  %84 = fptosi double %81 to i32, !dbg !673
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !298, metadata !340), !dbg !674
  %85 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0), i32 %84) #10, !dbg !675
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1, !dbg !663
  %lftr.wideiv34 = trunc i64 %indvars.iv32 to i32, !dbg !663
  %exitcond35 = icmp eq i32 %lftr.wideiv34, %65, !dbg !663
  br i1 %exitcond35, label %._crit_edge12, label %.lr.ph11, !dbg !663

._crit_edge12:                                    ; preds = %.lr.ph11
  %86 = fcmp ogt double %83, 0.000000e+00, !dbg !676
  br i1 %86, label %._crit_edge12.thread, label %90, !dbg !678

._crit_edge12.thread:                             ; preds = %73, %._crit_edge12
  %unb.0.lcssa60 = phi double [ %83, %._crit_edge12 ], [ 1.000000e+02, %73 ]
  %87 = fdiv double 1.000000e+04, %unb.0.lcssa60, !dbg !679
  %88 = fptosi double %87 to i32, !dbg !681
  tail call void @llvm.dbg.value(metadata i32 %88, i64 0, metadata !298, metadata !340), !dbg !674
  %89 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([7 x i8]* @.str45, i64 0, i64 0), i32 %88) #10, !dbg !682
  br label %91, !dbg !683

; <label>:90                                      ; preds = %._crit_edge12
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %log), !dbg !684
  br label %91

; <label>:91                                      ; preds = %69, %90, %._crit_edge12.thread
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1, !dbg !648
  %exitcond38 = icmp eq i64 %indvars.iv.next37, 129, !dbg !648
  br i1 %exitcond38, label %.preheader, label %69, !dbg !648

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ]
  %sav.05 = phi double [ %97, %.lr.ph ], [ 0.000000e+00, %.preheader ]
  %fav.04 = phi double [ %94, %.lr.ph ], [ 0.000000e+00, %.preheader ]
  %92 = getelementptr inbounds double* %4, i64 %indvars.iv, !dbg !685
  %93 = load double* %92, align 8, !dbg !685, !tbaa !392
  %94 = fadd double %fav.04, %93, !dbg !688
  tail call void @llvm.dbg.value(metadata double %94, i64 0, metadata !305, metadata !340), !dbg !689
  %95 = getelementptr inbounds double* %6, i64 %indvars.iv, !dbg !690
  %96 = load double* %95, align 8, !dbg !690, !tbaa !392
  %97 = fadd double %sav.05, %96, !dbg !691
  tail call void @llvm.dbg.value(metadata double %97, i64 0, metadata !307, metadata !340), !dbg !692
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !650
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !650
  %exitcond = icmp eq i32 %lftr.wideiv, %65, !dbg !650
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !dbg !650

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %sav.0.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %97, %.lr.ph ]
  %fav.0.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %94, %.lr.ph ]
  %98 = tail call fastcc double @pr_av(%struct.__sFILE* %log, i32 %nprocs, double %fav.0.lcssa, double* %4, i8* getelementptr inbounds ([12 x i8]* @.str47, i64 0, i64 0)) #12, !dbg !693
  tail call void @llvm.dbg.value(metadata double %98, i64 0, metadata !301, metadata !340), !dbg !694
  %99 = tail call fastcc double @pr_av(%struct.__sFILE* %log, i32 %nprocs, double %sav.0.lcssa, double* %6, i8* getelementptr inbounds ([12 x i8]* @.str48, i64 0, i64 0)) #12, !dbg !695
  tail call void @llvm.dbg.value(metadata double %99, i64 0, metadata !302, metadata !340), !dbg !696
  %100 = fmul double %fav.0.lcssa, %98, !dbg !697
  %101 = fmul double %sav.0.lcssa, %99, !dbg !698
  %102 = fadd double %100, %101, !dbg !699
  %103 = fadd double %fav.0.lcssa, %sav.0.lcssa, !dbg !700
  %104 = fdiv double %102, %103, !dbg !701
  tail call void @llvm.dbg.value(metadata double %104, i64 0, metadata !300, metadata !340), !dbg !652
  %105 = fcmp ogt double %104, 0.000000e+00, !dbg !702
  br i1 %105, label %106, label %109, !dbg !704

; <label>:106                                     ; preds = %._crit_edge
  %107 = fdiv double 1.000000e+04, %104, !dbg !705
  tail call void @llvm.dbg.value(metadata double %107, i64 0, metadata !300, metadata !340), !dbg !652
  %108 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([44 x i8]* @.str49, i64 0, i64 0), double %107) #10, !dbg !707
  br label %109, !dbg !708

; <label>:109                                     ; preds = %106, %._crit_edge
  ret void, !dbg !709
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc double @pr_av(%struct.__sFILE* nocapture %log, i32 %nprocs, double %fav, double* nocapture readonly %ftot, i8* %title) #3 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %log, i64 0, metadata !313, metadata !340), !dbg !710
  tail call void @llvm.dbg.value(metadata i32 %nprocs, i64 0, metadata !314, metadata !340), !dbg !711
  tail call void @llvm.dbg.value(metadata double %fav, i64 0, metadata !315, metadata !340), !dbg !712
  tail call void @llvm.dbg.value(metadata double* %ftot, i64 0, metadata !316, metadata !340), !dbg !713
  tail call void @llvm.dbg.value(metadata i8* %title, i64 0, metadata !317, metadata !340), !dbg !714
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !321, metadata !340), !dbg !715
  %1 = fcmp ogt double %fav, 0.000000e+00, !dbg !716
  br i1 %1, label %2, label %23, !dbg !718

; <label>:2                                       ; preds = %0
  %3 = sitofp i32 %nprocs to double, !dbg !719
  %4 = fdiv double %fav, %3, !dbg !721
  tail call void @llvm.dbg.value(metadata double %4, i64 0, metadata !315, metadata !340), !dbg !712
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([7 x i8]* @.str178, i64 0, i64 0), i8* %title) #10, !dbg !722
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !318, metadata !340), !dbg !723
  %6 = icmp sgt i32 %nprocs, 0, !dbg !724
  br i1 %6, label %.lr.ph, label %._crit_edge.thread, !dbg !727

.lr.ph:                                           ; preds = %2
  %7 = add i32 %nprocs, -1, !dbg !727
  br label %8, !dbg !727

; <label>:8                                       ; preds = %8, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %8 ]
  %unb.02 = phi double [ 0.000000e+00, %.lr.ph ], [ %14, %8 ]
  %9 = getelementptr inbounds double* %ftot, i64 %indvars.iv, !dbg !728
  %10 = load double* %9, align 8, !dbg !728, !tbaa !392
  %11 = fmul double %10, 1.000000e+02, !dbg !730
  %12 = fdiv double %11, %4, !dbg !731
  tail call void @llvm.dbg.value(metadata double %12, i64 0, metadata !320, metadata !340), !dbg !732
  %13 = fcmp ogt double %unb.02, %12, !dbg !733
  %14 = select i1 %13, double %unb.02, double %12, !dbg !733
  tail call void @llvm.dbg.value(metadata double %14, i64 0, metadata !321, metadata !340), !dbg !715
  %15 = fptosi double %12 to i32, !dbg !734
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !319, metadata !340), !dbg !735
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0), i32 %15) #10, !dbg !736
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !727
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !727
  %exitcond = icmp eq i32 %lftr.wideiv, %7, !dbg !727
  br i1 %exitcond, label %._crit_edge, label %8, !dbg !727

._crit_edge:                                      ; preds = %8
  %17 = fcmp ogt double %14, 0.000000e+00, !dbg !737
  br i1 %17, label %18, label %._crit_edge.thread, !dbg !739

; <label>:18                                      ; preds = %._crit_edge
  %19 = fdiv double 1.000000e+04, %14, !dbg !740
  %20 = fptosi double %19 to i32, !dbg !742
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !319, metadata !340), !dbg !735
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([8 x i8]* @.str179, i64 0, i64 0), i32 %20) #10, !dbg !743
  br label %23, !dbg !744

._crit_edge.thread:                               ; preds = %2, %._crit_edge
  %unb.0.lcssa3 = phi double [ %14, %._crit_edge ], [ 0.000000e+00, %2 ]
  %22 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str180, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %log), !dbg !745
  br label %23

; <label>:23                                      ; preds = %18, %._crit_edge.thread, %0
  %unb.1 = phi double [ %14, %18 ], [ %unb.0.lcssa3, %._crit_edge.thread ], [ 0.000000e+00, %0 ]
  ret double %unb.1, !dbg !746
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #8

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #9

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #9

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #9

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind optsize readnone }
attributes #12 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!336, !337, !338}
!llvm.ident = !{!339}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !137, subprograms: !141, globals: !322, imports: !335)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/nrnb.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 51, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/nrnb.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136}
!6 = !DIEnumerator(name: "eNR_INL0100", value: 0)
!7 = !DIEnumerator(name: "eNR_INL0110", value: 1)
!8 = !DIEnumerator(name: "eNR_INL0200", value: 2)
!9 = !DIEnumerator(name: "eNR_INL0210", value: 3)
!10 = !DIEnumerator(name: "eNR_INL0300", value: 4)
!11 = !DIEnumerator(name: "eNR_INL0310", value: 5)
!12 = !DIEnumerator(name: "eNR_INL0301", value: 6)
!13 = !DIEnumerator(name: "eNR_INL0302", value: 7)
!14 = !DIEnumerator(name: "eNR_INL0400", value: 8)
!15 = !DIEnumerator(name: "eNR_INL0410", value: 9)
!16 = !DIEnumerator(name: "eNR_INL0401", value: 10)
!17 = !DIEnumerator(name: "eNR_INL0402", value: 11)
!18 = !DIEnumerator(name: "eNR_INL1000", value: 12)
!19 = !DIEnumerator(name: "eNR_INL1010", value: 13)
!20 = !DIEnumerator(name: "eNR_INL1020", value: 14)
!21 = !DIEnumerator(name: "eNR_INL1030", value: 15)
!22 = !DIEnumerator(name: "eNR_INL1100", value: 16)
!23 = !DIEnumerator(name: "eNR_INL1110", value: 17)
!24 = !DIEnumerator(name: "eNR_INL1120", value: 18)
!25 = !DIEnumerator(name: "eNR_INL1130", value: 19)
!26 = !DIEnumerator(name: "eNR_INL1200", value: 20)
!27 = !DIEnumerator(name: "eNR_INL1210", value: 21)
!28 = !DIEnumerator(name: "eNR_INL1220", value: 22)
!29 = !DIEnumerator(name: "eNR_INL1230", value: 23)
!30 = !DIEnumerator(name: "eNR_INL1300", value: 24)
!31 = !DIEnumerator(name: "eNR_INL1310", value: 25)
!32 = !DIEnumerator(name: "eNR_INL1320", value: 26)
!33 = !DIEnumerator(name: "eNR_INL1330", value: 27)
!34 = !DIEnumerator(name: "eNR_INL1400", value: 28)
!35 = !DIEnumerator(name: "eNR_INL1410", value: 29)
!36 = !DIEnumerator(name: "eNR_INL1420", value: 30)
!37 = !DIEnumerator(name: "eNR_INL1430", value: 31)
!38 = !DIEnumerator(name: "eNR_INL2000", value: 32)
!39 = !DIEnumerator(name: "eNR_INL2010", value: 33)
!40 = !DIEnumerator(name: "eNR_INL2020", value: 34)
!41 = !DIEnumerator(name: "eNR_INL2030", value: 35)
!42 = !DIEnumerator(name: "eNR_INL2100", value: 36)
!43 = !DIEnumerator(name: "eNR_INL2110", value: 37)
!44 = !DIEnumerator(name: "eNR_INL2120", value: 38)
!45 = !DIEnumerator(name: "eNR_INL2130", value: 39)
!46 = !DIEnumerator(name: "eNR_INL2200", value: 40)
!47 = !DIEnumerator(name: "eNR_INL2210", value: 41)
!48 = !DIEnumerator(name: "eNR_INL2220", value: 42)
!49 = !DIEnumerator(name: "eNR_INL2230", value: 43)
!50 = !DIEnumerator(name: "eNR_INL2300", value: 44)
!51 = !DIEnumerator(name: "eNR_INL2310", value: 45)
!52 = !DIEnumerator(name: "eNR_INL2320", value: 46)
!53 = !DIEnumerator(name: "eNR_INL2330", value: 47)
!54 = !DIEnumerator(name: "eNR_INL2400", value: 48)
!55 = !DIEnumerator(name: "eNR_INL2410", value: 49)
!56 = !DIEnumerator(name: "eNR_INL2420", value: 50)
!57 = !DIEnumerator(name: "eNR_INL2430", value: 51)
!58 = !DIEnumerator(name: "eNR_INL3000", value: 52)
!59 = !DIEnumerator(name: "eNR_INL3001", value: 53)
!60 = !DIEnumerator(name: "eNR_INL3002", value: 54)
!61 = !DIEnumerator(name: "eNR_INL3010", value: 55)
!62 = !DIEnumerator(name: "eNR_INL3020", value: 56)
!63 = !DIEnumerator(name: "eNR_INL3030", value: 57)
!64 = !DIEnumerator(name: "eNR_INL3100", value: 58)
!65 = !DIEnumerator(name: "eNR_INL3110", value: 59)
!66 = !DIEnumerator(name: "eNR_INL3120", value: 60)
!67 = !DIEnumerator(name: "eNR_INL3130", value: 61)
!68 = !DIEnumerator(name: "eNR_INL3200", value: 62)
!69 = !DIEnumerator(name: "eNR_INL3210", value: 63)
!70 = !DIEnumerator(name: "eNR_INL3220", value: 64)
!71 = !DIEnumerator(name: "eNR_INL3230", value: 65)
!72 = !DIEnumerator(name: "eNR_INL3300", value: 66)
!73 = !DIEnumerator(name: "eNR_INL3301", value: 67)
!74 = !DIEnumerator(name: "eNR_INL3302", value: 68)
!75 = !DIEnumerator(name: "eNR_INL3310", value: 69)
!76 = !DIEnumerator(name: "eNR_INL3320", value: 70)
!77 = !DIEnumerator(name: "eNR_INL3330", value: 71)
!78 = !DIEnumerator(name: "eNR_INL3400", value: 72)
!79 = !DIEnumerator(name: "eNR_INL3401", value: 73)
!80 = !DIEnumerator(name: "eNR_INL3402", value: 74)
!81 = !DIEnumerator(name: "eNR_INL3410", value: 75)
!82 = !DIEnumerator(name: "eNR_INL3420", value: 76)
!83 = !DIEnumerator(name: "eNR_INL3430", value: 77)
!84 = !DIEnumerator(name: "eNR_INLOOP", value: 78)
!85 = !DIEnumerator(name: "eNR_INL_IATOM", value: 78)
!86 = !DIEnumerator(name: "eNR_WEIGHTS", value: 79)
!87 = !DIEnumerator(name: "eNR_SPREADQ", value: 80)
!88 = !DIEnumerator(name: "eNR_SPREADQBSP", value: 81)
!89 = !DIEnumerator(name: "eNR_GATHERF", value: 82)
!90 = !DIEnumerator(name: "eNR_GATHERFBSP", value: 83)
!91 = !DIEnumerator(name: "eNR_FFT", value: 84)
!92 = !DIEnumerator(name: "eNR_CONV", value: 85)
!93 = !DIEnumerator(name: "eNR_SOLVEPME", value: 86)
!94 = !DIEnumerator(name: "eNR_NS", value: 87)
!95 = !DIEnumerator(name: "eNR_RESETX", value: 88)
!96 = !DIEnumerator(name: "eNR_SHIFTX", value: 89)
!97 = !DIEnumerator(name: "eNR_CGCM", value: 90)
!98 = !DIEnumerator(name: "eNR_FSUM", value: 91)
!99 = !DIEnumerator(name: "eNR_BONDS", value: 92)
!100 = !DIEnumerator(name: "eNR_G96BONDS", value: 93)
!101 = !DIEnumerator(name: "eNR_ANGLES", value: 94)
!102 = !DIEnumerator(name: "eNR_G96ANGLES", value: 95)
!103 = !DIEnumerator(name: "eNR_PROPER", value: 96)
!104 = !DIEnumerator(name: "eNR_IMPROPER", value: 97)
!105 = !DIEnumerator(name: "eNR_RB", value: 98)
!106 = !DIEnumerator(name: "eNR_DISRES", value: 99)
!107 = !DIEnumerator(name: "eNR_ORIRES", value: 100)
!108 = !DIEnumerator(name: "eNR_POSRES", value: 101)
!109 = !DIEnumerator(name: "eNR_ANGRES", value: 102)
!110 = !DIEnumerator(name: "eNR_ANGRESZ", value: 103)
!111 = !DIEnumerator(name: "eNR_MORSE", value: 104)
!112 = !DIEnumerator(name: "eNR_CUBICBONDS", value: 105)
!113 = !DIEnumerator(name: "eNR_WPOL", value: 106)
!114 = !DIEnumerator(name: "eNR_VIRIAL", value: 107)
!115 = !DIEnumerator(name: "eNR_UPDATE", value: 108)
!116 = !DIEnumerator(name: "eNR_EXTUPDATE", value: 109)
!117 = !DIEnumerator(name: "eNR_STOPCM", value: 110)
!118 = !DIEnumerator(name: "eNR_PCOUPL", value: 111)
!119 = !DIEnumerator(name: "eNR_EKIN", value: 112)
!120 = !DIEnumerator(name: "eNR_LINCS", value: 113)
!121 = !DIEnumerator(name: "eNR_LINCSMAT", value: 114)
!122 = !DIEnumerator(name: "eNR_SHAKE", value: 115)
!123 = !DIEnumerator(name: "eNR_SHAKE_V", value: 116)
!124 = !DIEnumerator(name: "eNR_SHAKE_RIJ", value: 117)
!125 = !DIEnumerator(name: "eNR_SHAKE_VIR", value: 118)
!126 = !DIEnumerator(name: "eNR_SETTLE", value: 119)
!127 = !DIEnumerator(name: "eNR_PSHAKEINITLD", value: 120)
!128 = !DIEnumerator(name: "eNR_PSHAKEINITMD", value: 121)
!129 = !DIEnumerator(name: "eNR_PSHAKE", value: 122)
!130 = !DIEnumerator(name: "eNR_DUM2", value: 123)
!131 = !DIEnumerator(name: "eNR_DUM3", value: 124)
!132 = !DIEnumerator(name: "eNR_DUM3FD", value: 125)
!133 = !DIEnumerator(name: "eNR_DUM3FAD", value: 126)
!134 = !DIEnumerator(name: "eNR_DUM3OUT", value: 127)
!135 = !DIEnumerator(name: "eNR_DUM4FD", value: 128)
!136 = !DIEnumerator(name: "eNRNB", value: 129)
!137 = !{!138, !139, !140}
!138 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!140 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!141 = !{!142, !210, !216, !230, !237, !245, !252, !261, !281, !284, !289, !309}
!142 = !DISubprogram(name: "__sputc", scope: !143, file: !143, line: 348, type: !144, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !207)
!143 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!144 = !DISubroutineType(types: !145)
!145 = !{!146, !146, !147}
!146 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !143, line: 153, baseType: !149)
!149 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !143, line: 122, size: 1216, align: 64, elements: !150)
!150 = !{!151, !154, !155, !156, !158, !159, !164, !165, !166, !170, !175, !185, !191, !192, !195, !196, !200, !204, !205, !206}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !149, file: !143, line: 123, baseType: !152, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !149, file: !143, line: 124, baseType: !146, size: 32, align: 32, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !149, file: !143, line: 125, baseType: !146, size: 32, align: 32, offset: 96)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !149, file: !143, line: 126, baseType: !157, size: 16, align: 16, offset: 128)
!157 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !149, file: !143, line: 127, baseType: !157, size: 16, align: 16, offset: 144)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !149, file: !143, line: 128, baseType: !160, size: 128, align: 64, offset: 192)
!160 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !143, line: 88, size: 128, align: 64, elements: !161)
!161 = !{!162, !163}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !160, file: !143, line: 89, baseType: !152, size: 64, align: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !160, file: !143, line: 90, baseType: !146, size: 32, align: 32, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !149, file: !143, line: 129, baseType: !146, size: 32, align: 32, offset: 320)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !149, file: !143, line: 132, baseType: !139, size: 64, align: 64, offset: 384)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !149, file: !143, line: 133, baseType: !167, size: 64, align: 64, offset: 448)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!146, !139}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !149, file: !143, line: 134, baseType: !171, size: 64, align: 64, offset: 512)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!146, !139, !174, !146}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !149, file: !143, line: 135, baseType: !176, size: 64, align: 64, offset: 576)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!179, !139, !179, !146}
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !143, line: 77, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !181, line: 71, baseType: !182)
!181 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !183, line: 46, baseType: !184)
!183 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!184 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !149, file: !143, line: 136, baseType: !186, size: 64, align: 64, offset: 640)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{!146, !139, !189, !146}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !149, file: !143, line: 139, baseType: !160, size: 128, align: 64, offset: 704)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !149, file: !143, line: 140, baseType: !193, size: 64, align: 64, offset: 832)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !143, line: 94, flags: DIFlagFwdDecl)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !149, file: !143, line: 141, baseType: !146, size: 32, align: 32, offset: 896)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !149, file: !143, line: 144, baseType: !197, size: 24, align: 8, offset: 928)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 24, align: 8, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 3)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !149, file: !143, line: 145, baseType: !201, size: 8, align: 8, offset: 952)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 8, align: 8, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 1)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !149, file: !143, line: 148, baseType: !160, size: 128, align: 64, offset: 960)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !149, file: !143, line: 151, baseType: !146, size: 32, align: 32, offset: 1088)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !149, file: !143, line: 152, baseType: !179, size: 64, align: 64, offset: 1152)
!207 = !{!208, !209}
!208 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !142, file: !143, line: 348, type: !146)
!209 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !142, file: !143, line: 348, type: !147)
!210 = !DISubprogram(name: "__sigbits", scope: !211, file: !211, line: 114, type: !212, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !214)
!211 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!212 = !DISubroutineType(types: !213)
!213 = !{!146, !146}
!214 = !{!215}
!215 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !210, file: !211, line: 114, type: !146)
!216 = !DISubprogram(name: "init_nrnb", scope: !1, file: !1, line: 183, type: !217, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_nrnb*)* @init_nrnb, variables: !227)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !219}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_nrnb", file: !4, line: 95, baseType: !221)
!221 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 93, size: 8256, align: 64, elements: !222)
!222 = !{!223}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !221, file: !4, line: 94, baseType: !224, size: 8256, align: 64)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 8256, align: 64, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 129)
!227 = !{!228, !229}
!228 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nrnb", arg: 1, scope: !216, file: !1, line: 183, type: !219)
!229 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !216, file: !1, line: 185, type: !146)
!230 = !DISubprogram(name: "cp_nrnb", scope: !1, file: !1, line: 191, type: !231, isLocal: false, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_nrnb*, %struct.t_nrnb*)* @cp_nrnb, variables: !233)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !219, !219}
!233 = !{!234, !235, !236}
!234 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dest", arg: 1, scope: !230, file: !1, line: 191, type: !219)
!235 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 2, scope: !230, file: !1, line: 191, type: !219)
!236 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !230, file: !1, line: 193, type: !146)
!237 = !DISubprogram(name: "add_nrnb", scope: !1, file: !1, line: 199, type: !238, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_nrnb*, %struct.t_nrnb*, %struct.t_nrnb*)* @add_nrnb, variables: !240)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !219, !219, !219}
!240 = !{!241, !242, !243, !244}
!241 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dest", arg: 1, scope: !237, file: !1, line: 199, type: !219)
!242 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s1", arg: 2, scope: !237, file: !1, line: 199, type: !219)
!243 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s2", arg: 3, scope: !237, file: !1, line: 199, type: !219)
!244 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !237, file: !1, line: 201, type: !146)
!245 = !DISubprogram(name: "print_nrnb", scope: !1, file: !1, line: 207, type: !246, isLocal: false, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.t_nrnb*)* @print_nrnb, variables: !248)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !147, !219}
!248 = !{!249, !250, !251}
!249 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !245, file: !1, line: 207, type: !147)
!250 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nrnb", arg: 2, scope: !245, file: !1, line: 207, type: !219)
!251 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !245, file: !1, line: 209, type: !146)
!252 = !DISubprogram(name: "_inc_nrnb", scope: !1, file: !1, line: 215, type: !253, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_nrnb*, i32, i32, i8*, i32)* @_inc_nrnb, variables: !255)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !219, !146, !146, !174, !146}
!255 = !{!256, !257, !258, !259, !260}
!256 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nrnb", arg: 1, scope: !252, file: !1, line: 215, type: !219)
!257 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enr", arg: 2, scope: !252, file: !1, line: 215, type: !146)
!258 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inc", arg: 3, scope: !252, file: !1, line: 215, type: !146)
!259 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 4, scope: !252, file: !1, line: 215, type: !174)
!260 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 5, scope: !252, file: !1, line: 215, type: !146)
!261 = !DISubprogram(name: "print_perf", scope: !1, file: !1, line: 224, type: !262, isLocal: false, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, double, double, float, %struct.t_nrnb*, i32)* @print_perf, variables: !267)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !147, !140, !140, !264, !219, !146}
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !265, line: 87, baseType: !266)
!265 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!266 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!267 = !{!268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280}
!268 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !261, file: !1, line: 224, type: !147)
!269 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nodetime", arg: 2, scope: !261, file: !1, line: 224, type: !140)
!270 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "realtime", arg: 3, scope: !261, file: !1, line: 224, type: !140)
!271 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "runtime", arg: 4, scope: !261, file: !1, line: 224, type: !264)
!272 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nrnb", arg: 5, scope: !261, file: !1, line: 225, type: !219)
!273 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nprocs", arg: 6, scope: !261, file: !1, line: 225, type: !146)
!274 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !261, file: !1, line: 227, type: !146)
!275 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbfs", scope: !261, file: !1, line: 228, type: !140)
!276 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mni", scope: !261, file: !1, line: 228, type: !140)
!277 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "frac", scope: !261, file: !1, line: 228, type: !140)
!278 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tfrac", scope: !261, file: !1, line: 228, type: !140)
!279 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mflop", scope: !261, file: !1, line: 228, type: !140)
!280 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tflop", scope: !261, file: !1, line: 228, type: !140)
!281 = !DISubprogram(name: "cost_nrnb", scope: !1, file: !1, line: 294, type: !212, isLocal: false, isDefinition: true, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @cost_nrnb, variables: !282)
!282 = !{!283}
!283 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enr", arg: 1, scope: !281, file: !1, line: 294, type: !146)
!284 = !DISubprogram(name: "nrnb_str", scope: !1, file: !1, line: 299, type: !285, isLocal: false, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i32)* @nrnb_str, variables: !287)
!285 = !DISubroutineType(types: !286)
!286 = !{!174, !146}
!287 = !{!288}
!288 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enr", arg: 1, scope: !284, file: !1, line: 299, type: !146)
!289 = !DISubprogram(name: "pr_load", scope: !1, file: !1, line: 342, type: !290, isLocal: false, isDefinition: true, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i32, %struct.t_nrnb*)* @pr_load, variables: !292)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !147, !146, !219}
!292 = !{!293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !305, !306, !307, !308}
!293 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "log", arg: 1, scope: !289, file: !1, line: 342, type: !147)
!294 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nprocs", arg: 2, scope: !289, file: !1, line: 342, type: !146)
!295 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nrnb", arg: 3, scope: !289, file: !1, line: 342, type: !219)
!296 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !289, file: !1, line: 344, type: !146)
!297 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !289, file: !1, line: 344, type: !146)
!298 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "perc", scope: !289, file: !1, line: 344, type: !146)
!299 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dperc", scope: !289, file: !1, line: 345, type: !140)
!300 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "unb", scope: !289, file: !1, line: 345, type: !140)
!301 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "uf", scope: !289, file: !1, line: 345, type: !140)
!302 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "us", scope: !289, file: !1, line: 345, type: !140)
!303 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ftot", scope: !289, file: !1, line: 346, type: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!305 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fav", scope: !289, file: !1, line: 346, type: !140)
!306 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stot", scope: !289, file: !1, line: 347, type: !304)
!307 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sav", scope: !289, file: !1, line: 347, type: !140)
!308 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "av", scope: !289, file: !1, line: 348, type: !219)
!309 = !DISubprogram(name: "pr_av", scope: !1, file: !1, line: 317, type: !310, isLocal: true, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: true, function: double (%struct.__sFILE*, i32, double, double*, i8*)* @pr_av, variables: !312)
!310 = !DISubroutineType(types: !311)
!311 = !{!140, !147, !146, !140, !304, !174}
!312 = !{!313, !314, !315, !316, !317, !318, !319, !320, !321}
!313 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "log", arg: 1, scope: !309, file: !1, line: 317, type: !147)
!314 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nprocs", arg: 2, scope: !309, file: !1, line: 317, type: !146)
!315 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fav", arg: 3, scope: !309, file: !1, line: 317, type: !140)
!316 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ftot", arg: 4, scope: !309, file: !1, line: 317, type: !304)
!317 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "title", arg: 5, scope: !309, file: !1, line: 317, type: !174)
!318 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !309, file: !1, line: 319, type: !146)
!319 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "perc", scope: !309, file: !1, line: 319, type: !146)
!320 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dperc", scope: !309, file: !1, line: 320, type: !140)
!321 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "unb", scope: !309, file: !1, line: 320, type: !140)
!322 = !{!323, !330, !334}
!323 = !DIGlobalVariable(name: "nbdata", scope: !0, file: !1, line: 51, type: !324, isLocal: true, isDefinition: true, variable: [129 x %struct.t_nrnb_data]* @nbdata)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 16512, align: 64, elements: !225)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_nrnb_data", file: !1, line: 48, baseType: !326)
!326 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 45, size: 128, align: 64, elements: !327)
!327 = !{!328, !329}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !326, file: !1, line: 46, baseType: !174, size: 64, align: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "flop", scope: !326, file: !1, line: 47, baseType: !146, size: 32, align: 32, offset: 64)
!330 = !DIGlobalVariable(name: "force_index", scope: !0, file: !1, line: 304, type: !331, isLocal: true, isDefinition: true, variable: [10 x i32]* @force_index)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 320, align: 32, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 10)
!334 = !DIGlobalVariable(name: "shake_index", scope: !0, file: !1, line: 311, type: !331, isLocal: true, isDefinition: true, variable: [10 x i32]* @shake_index)
!335 = !{}
!336 = !{i32 2, !"Dwarf Version", i32 2}
!337 = !{i32 2, !"Debug Info Version", i32 700000003}
!338 = !{i32 1, !"PIC Level", i32 2}
!339 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!340 = !DIExpression()
!341 = !DILocation(line: 348, column: 40, scope: !142)
!342 = !DILocation(line: 348, column: 50, scope: !142)
!343 = !DILocation(line: 349, column: 12, scope: !344)
!344 = distinct !DILexicalBlock(scope: !142, file: !143, line: 349, column: 6)
!345 = !DILocation(line: 349, column: 6, scope: !344)
!346 = !{!347, !351, i64 12}
!347 = !{!"__sFILE", !348, i64 0, !351, i64 8, !351, i64 12, !352, i64 16, !352, i64 18, !353, i64 24, !351, i64 40, !348, i64 48, !348, i64 56, !348, i64 64, !348, i64 72, !348, i64 80, !353, i64 88, !348, i64 104, !351, i64 112, !349, i64 116, !349, i64 119, !353, i64 120, !351, i64 136, !354, i64 144}
!348 = !{!"any pointer", !349, i64 0}
!349 = !{!"omnipotent char", !350, i64 0}
!350 = !{!"Simple C/C++ TBAA"}
!351 = !{!"int", !349, i64 0}
!352 = !{!"short", !349, i64 0}
!353 = !{!"__sbuf", !348, i64 0, !351, i64 8}
!354 = !{!"long long", !349, i64 0}
!355 = !DILocation(line: 349, column: 15, scope: !344)
!356 = !DILocation(line: 349, column: 20, scope: !344)
!357 = !DILocation(line: 350, column: 10, scope: !344)
!358 = !DILocation(line: 349, column: 38, scope: !344)
!359 = !{!347, !351, i64 40}
!360 = !DILocation(line: 349, column: 31, scope: !344)
!361 = !DILocation(line: 349, column: 59, scope: !344)
!362 = !DILocation(line: 349, column: 47, scope: !344)
!363 = !DILocation(line: 350, column: 23, scope: !344)
!364 = !DILocation(line: 350, column: 16, scope: !344)
!365 = !DILocation(line: 350, column: 18, scope: !344)
!366 = !{!347, !348, i64 0}
!367 = !DILocation(line: 350, column: 21, scope: !344)
!368 = !{!349, !349, i64 0}
!369 = !DILocation(line: 350, column: 3, scope: !344)
!370 = !DILocation(line: 352, column: 11, scope: !344)
!371 = !DILocation(line: 352, column: 3, scope: !344)
!372 = !DILocation(line: 353, column: 1, scope: !142)
!373 = !DILocation(line: 114, column: 15, scope: !210)
!374 = !DILocation(line: 116, column: 20, scope: !210)
!375 = !DILocation(line: 116, column: 12, scope: !210)
!376 = !DILocation(line: 116, column: 57, scope: !210)
!377 = !DILocation(line: 116, column: 45, scope: !210)
!378 = !DILocation(line: 116, column: 5, scope: !210)
!379 = !DILocation(line: 183, column: 24, scope: !216)
!380 = !DILocation(line: 185, column: 7, scope: !216)
!381 = !DILocation(line: 188, column: 15, scope: !382)
!382 = distinct !DILexicalBlock(scope: !383, file: !1, line: 187, column: 3)
!383 = distinct !DILexicalBlock(scope: !216, file: !1, line: 187, column: 3)
!384 = !DILocation(line: 189, column: 1, scope: !216)
!385 = !DILocation(line: 191, column: 22, scope: !230)
!386 = !DILocation(line: 191, column: 36, scope: !230)
!387 = !DILocation(line: 193, column: 7, scope: !230)
!388 = !DILocation(line: 195, column: 3, scope: !389)
!389 = distinct !DILexicalBlock(scope: !230, file: !1, line: 195, column: 3)
!390 = !DILocation(line: 196, column: 16, scope: !391)
!391 = distinct !DILexicalBlock(scope: !389, file: !1, line: 195, column: 3)
!392 = !{!393, !393, i64 0}
!393 = !{!"double", !349, i64 0}
!394 = !DILocation(line: 196, column: 5, scope: !391)
!395 = !DILocation(line: 196, column: 15, scope: !391)
!396 = !DILocation(line: 197, column: 1, scope: !230)
!397 = !DILocation(line: 199, column: 23, scope: !237)
!398 = !DILocation(line: 199, column: 37, scope: !237)
!399 = !DILocation(line: 199, column: 49, scope: !237)
!400 = !DILocation(line: 201, column: 7, scope: !237)
!401 = !DILocation(line: 203, column: 3, scope: !402)
!402 = distinct !DILexicalBlock(scope: !237, file: !1, line: 203, column: 3)
!403 = !DILocation(line: 204, column: 16, scope: !404)
!404 = distinct !DILexicalBlock(scope: !402, file: !1, line: 203, column: 3)
!405 = !DILocation(line: 204, column: 25, scope: !404)
!406 = !DILocation(line: 204, column: 24, scope: !404)
!407 = !DILocation(line: 204, column: 5, scope: !404)
!408 = !DILocation(line: 204, column: 15, scope: !404)
!409 = !DILocation(line: 205, column: 1, scope: !237)
!410 = !DILocation(line: 207, column: 23, scope: !245)
!411 = !DILocation(line: 207, column: 36, scope: !245)
!412 = !DILocation(line: 209, column: 7, scope: !245)
!413 = !DILocation(line: 211, column: 3, scope: !414)
!414 = distinct !DILexicalBlock(scope: !245, file: !1, line: 211, column: 3)
!415 = !DILocation(line: 212, column: 45, scope: !416)
!416 = distinct !DILexicalBlock(scope: !414, file: !1, line: 211, column: 3)
!417 = !{!418, !348, i64 0}
!418 = !{!"", !348, i64 0, !351, i64 8}
!419 = !DILocation(line: 212, column: 50, scope: !416)
!420 = !DILocation(line: 212, column: 5, scope: !416)
!421 = !DILocation(line: 213, column: 1, scope: !245)
!422 = !DILocation(line: 215, column: 24, scope: !252)
!423 = !DILocation(line: 215, column: 33, scope: !252)
!424 = !DILocation(line: 215, column: 41, scope: !252)
!425 = !DILocation(line: 215, column: 51, scope: !252)
!426 = !DILocation(line: 215, column: 60, scope: !252)
!427 = !DILocation(line: 217, column: 17, scope: !252)
!428 = !DILocation(line: 217, column: 3, scope: !252)
!429 = !DILocation(line: 217, column: 15, scope: !252)
!430 = !DILocation(line: 222, column: 1, scope: !252)
!431 = !DILocation(line: 224, column: 23, scope: !261)
!432 = !DILocation(line: 224, column: 34, scope: !261)
!433 = !DILocation(line: 224, column: 50, scope: !261)
!434 = !DILocation(line: 224, column: 64, scope: !261)
!435 = !DILocation(line: 225, column: 11, scope: !261)
!436 = !DILocation(line: 225, column: 20, scope: !261)
!437 = !DILocation(line: 230, column: 16, scope: !438)
!438 = distinct !DILexicalBlock(scope: !261, file: !1, line: 230, column: 7)
!439 = !DILocation(line: 230, column: 7, scope: !261)
!440 = !DILocation(line: 231, column: 5, scope: !441)
!441 = distinct !DILexicalBlock(scope: !438, file: !1, line: 230, column: 32)
!442 = !DILocation(line: 232, column: 3, scope: !441)
!443 = !DILocation(line: 236, column: 26, scope: !444)
!444 = distinct !DILexicalBlock(scope: !445, file: !1, line: 236, column: 9)
!445 = distinct !DILexicalBlock(scope: !446, file: !1, line: 235, column: 33)
!446 = distinct !DILexicalBlock(scope: !447, file: !1, line: 235, column: 3)
!447 = distinct !DILexicalBlock(scope: !261, file: !1, line: 235, column: 3)
!448 = !DILocation(line: 236, column: 9, scope: !444)
!449 = !DILocation(line: 236, column: 39, scope: !444)
!450 = !DILocation(line: 236, column: 9, scope: !445)
!451 = !DILocation(line: 237, column: 20, scope: !444)
!452 = !DILocation(line: 237, column: 19, scope: !444)
!453 = !DILocation(line: 237, column: 7, scope: !444)
!454 = !DILocation(line: 238, column: 14, scope: !455)
!455 = distinct !DILexicalBlock(scope: !444, file: !1, line: 238, column: 14)
!456 = !DILocation(line: 238, column: 43, scope: !455)
!457 = !DILocation(line: 239, column: 20, scope: !455)
!458 = !DILocation(line: 238, column: 14, scope: !444)
!459 = !DILocation(line: 239, column: 19, scope: !455)
!460 = !DILocation(line: 239, column: 7, scope: !455)
!461 = !DILocation(line: 241, column: 19, scope: !455)
!462 = !DILocation(line: 237, column: 12, scope: !444)
!463 = !DILocation(line: 235, column: 3, scope: !447)
!464 = !DILocation(line: 245, column: 17, scope: !465)
!465 = distinct !DILexicalBlock(scope: !466, file: !1, line: 244, column: 3)
!466 = distinct !DILexicalBlock(scope: !261, file: !1, line: 244, column: 3)
!467 = !DILocation(line: 245, column: 16, scope: !465)
!468 = !DILocation(line: 245, column: 38, scope: !465)
!469 = !{!418, !351, i64 8}
!470 = !DILocation(line: 245, column: 28, scope: !465)
!471 = !DILocation(line: 245, column: 27, scope: !465)
!472 = !DILocation(line: 245, column: 10, scope: !465)
!473 = !DILocation(line: 228, column: 36, scope: !261)
!474 = !DILocation(line: 244, column: 3, scope: !466)
!475 = !DILocation(line: 247, column: 13, scope: !476)
!476 = distinct !DILexicalBlock(scope: !261, file: !1, line: 247, column: 7)
!477 = !DILocation(line: 247, column: 7, scope: !261)
!478 = !DILocation(line: 248, column: 5, scope: !479)
!479 = distinct !DILexicalBlock(scope: !476, file: !1, line: 247, column: 29)
!480 = !DILocation(line: 249, column: 5, scope: !479)
!481 = !DILocation(line: 251, column: 3, scope: !261)
!482 = !DILocation(line: 252, column: 14, scope: !483)
!483 = distinct !DILexicalBlock(scope: !261, file: !1, line: 252, column: 7)
!484 = !DILocation(line: 252, column: 7, scope: !261)
!485 = !DILocation(line: 254, column: 5, scope: !486)
!486 = distinct !DILexicalBlock(scope: !483, file: !1, line: 252, column: 19)
!487 = !DILocation(line: 255, column: 3, scope: !486)
!488 = !DILocation(line: 257, column: 3, scope: !261)
!489 = !DILocation(line: 258, column: 3, scope: !261)
!490 = !DILocation(line: 259, column: 3, scope: !261)
!491 = !DILocation(line: 228, column: 30, scope: !261)
!492 = !DILocation(line: 228, column: 24, scope: !261)
!493 = !DILocation(line: 227, column: 10, scope: !261)
!494 = !DILocation(line: 263, column: 3, scope: !495)
!495 = distinct !DILexicalBlock(scope: !261, file: !1, line: 263, column: 3)
!496 = !DILocation(line: 264, column: 19, scope: !497)
!497 = distinct !DILexicalBlock(scope: !498, file: !1, line: 263, column: 28)
!498 = distinct !DILexicalBlock(scope: !495, file: !1, line: 263, column: 3)
!499 = !DILocation(line: 264, column: 18, scope: !497)
!500 = !DILocation(line: 228, column: 15, scope: !261)
!501 = !DILocation(line: 265, column: 28, scope: !497)
!502 = !DILocation(line: 265, column: 18, scope: !497)
!503 = !DILocation(line: 265, column: 17, scope: !497)
!504 = !DILocation(line: 265, column: 11, scope: !497)
!505 = !DILocation(line: 266, column: 19, scope: !497)
!506 = !DILocation(line: 266, column: 23, scope: !497)
!507 = !DILocation(line: 266, column: 38, scope: !497)
!508 = !DILocation(line: 228, column: 19, scope: !261)
!509 = !DILocation(line: 267, column: 11, scope: !497)
!510 = !DILocation(line: 268, column: 9, scope: !511)
!511 = distinct !DILexicalBlock(scope: !497, file: !1, line: 268, column: 9)
!512 = !DILocation(line: 268, column: 19, scope: !511)
!513 = !DILocation(line: 268, column: 9, scope: !497)
!514 = !DILocation(line: 270, column: 18, scope: !511)
!515 = !DILocation(line: 269, column: 7, scope: !511)
!516 = !DILocation(line: 272, column: 3, scope: !261)
!517 = !DILocation(line: 274, column: 17, scope: !518)
!518 = distinct !DILexicalBlock(scope: !261, file: !1, line: 274, column: 7)
!519 = !DILocation(line: 274, column: 35, scope: !518)
!520 = !DILocation(line: 274, column: 22, scope: !518)
!521 = !DILocation(line: 275, column: 5, scope: !522)
!522 = distinct !DILexicalBlock(scope: !518, file: !1, line: 274, column: 41)
!523 = !DILocation(line: 277, column: 31, scope: !522)
!524 = !DILocation(line: 277, column: 40, scope: !522)
!525 = !DILocation(line: 276, column: 5, scope: !522)
!526 = !DILocation(line: 278, column: 18, scope: !527)
!527 = distinct !DILexicalBlock(scope: !522, file: !1, line: 278, column: 9)
!528 = !DILocation(line: 278, column: 9, scope: !522)
!529 = !DILocation(line: 279, column: 7, scope: !530)
!530 = distinct !DILexicalBlock(scope: !527, file: !1, line: 278, column: 24)
!531 = !DILocation(line: 280, column: 7, scope: !530)
!532 = !DILocation(line: 281, column: 5, scope: !530)
!533 = !DILocation(line: 282, column: 16, scope: !534)
!534 = distinct !DILexicalBlock(scope: !522, file: !1, line: 282, column: 9)
!535 = !DILocation(line: 282, column: 9, scope: !522)
!536 = !DILocation(line: 283, column: 20, scope: !537)
!537 = distinct !DILexicalBlock(scope: !534, file: !1, line: 282, column: 20)
!538 = !DILocation(line: 285, column: 29, scope: !537)
!539 = !DILocation(line: 285, column: 22, scope: !537)
!540 = !DILocation(line: 284, column: 7, scope: !537)
!541 = !DILocation(line: 288, column: 12, scope: !537)
!542 = !DILocation(line: 288, column: 22, scope: !537)
!543 = !DILocation(line: 288, column: 45, scope: !537)
!544 = !DILocation(line: 289, column: 15, scope: !537)
!545 = !DILocation(line: 289, column: 8, scope: !537)
!546 = !DILocation(line: 289, column: 20, scope: !537)
!547 = !DILocation(line: 289, column: 34, scope: !537)
!548 = !DILocation(line: 289, column: 43, scope: !537)
!549 = !DILocation(line: 287, column: 7, scope: !537)
!550 = !DILocation(line: 290, column: 5, scope: !537)
!551 = !DILocation(line: 292, column: 1, scope: !261)
!552 = !DILocation(line: 294, column: 19, scope: !281)
!553 = !DILocation(line: 296, column: 10, scope: !281)
!554 = !DILocation(line: 296, column: 22, scope: !281)
!555 = !DILocation(line: 296, column: 3, scope: !281)
!556 = !DILocation(line: 299, column: 20, scope: !284)
!557 = !DILocation(line: 301, column: 10, scope: !284)
!558 = !DILocation(line: 301, column: 22, scope: !284)
!559 = !DILocation(line: 301, column: 3, scope: !284)
!560 = !DILocation(line: 342, column: 20, scope: !289)
!561 = !DILocation(line: 342, column: 28, scope: !289)
!562 = !DILocation(line: 342, column: 42, scope: !289)
!563 = !DILocation(line: 350, column: 3, scope: !289)
!564 = !DILocation(line: 348, column: 11, scope: !289)
!565 = !DILocation(line: 351, column: 3, scope: !289)
!566 = !DILocation(line: 346, column: 11, scope: !289)
!567 = !DILocation(line: 352, column: 3, scope: !289)
!568 = !DILocation(line: 347, column: 11, scope: !289)
!569 = !DILocation(line: 183, column: 24, scope: !216, inlinedAt: !570)
!570 = distinct !DILocation(line: 353, column: 3, scope: !289)
!571 = !DILocation(line: 185, column: 7, scope: !216, inlinedAt: !570)
!572 = !DILocation(line: 188, column: 15, scope: !382, inlinedAt: !570)
!573 = !DILocation(line: 344, column: 10, scope: !289)
!574 = !DILocation(line: 354, column: 14, scope: !575)
!575 = distinct !DILexicalBlock(scope: !576, file: !1, line: 354, column: 3)
!576 = distinct !DILexicalBlock(scope: !289, file: !1, line: 354, column: 3)
!577 = !DILocation(line: 354, column: 3, scope: !576)
!578 = !DILocation(line: 367, column: 18, scope: !579)
!579 = distinct !DILexicalBlock(scope: !580, file: !1, line: 366, column: 3)
!580 = distinct !DILexicalBlock(scope: !289, file: !1, line: 366, column: 3)
!581 = !DILocation(line: 367, column: 23, scope: !579)
!582 = !DILocation(line: 366, column: 3, scope: !580)
!583 = !DILocation(line: 199, column: 23, scope: !237, inlinedAt: !584)
!584 = distinct !DILocation(line: 355, column: 5, scope: !585)
!585 = distinct !DILexicalBlock(scope: !575, file: !1, line: 354, column: 29)
!586 = !DILocation(line: 199, column: 37, scope: !237, inlinedAt: !584)
!587 = !DILocation(line: 201, column: 7, scope: !237, inlinedAt: !584)
!588 = !DILocation(line: 203, column: 3, scope: !402, inlinedAt: !584)
!589 = !DILocation(line: 355, column: 5, scope: !585)
!590 = !DILocation(line: 204, column: 16, scope: !404, inlinedAt: !584)
!591 = !DILocation(line: 204, column: 25, scope: !404, inlinedAt: !584)
!592 = !DILocation(line: 204, column: 24, scope: !404, inlinedAt: !584)
!593 = !DILocation(line: 204, column: 15, scope: !404, inlinedAt: !584)
!594 = !DILocation(line: 358, column: 7, scope: !595)
!595 = distinct !DILexicalBlock(scope: !596, file: !1, line: 357, column: 5)
!596 = distinct !DILexicalBlock(scope: !585, file: !1, line: 357, column: 5)
!597 = !DILocation(line: 358, column: 14, scope: !595)
!598 = !DILocation(line: 357, column: 5, scope: !596)
!599 = !DILocation(line: 358, column: 16, scope: !595)
!600 = !DILocation(line: 296, column: 22, scope: !281, inlinedAt: !601)
!601 = distinct !DILocation(line: 358, column: 29, scope: !595)
!602 = !DILocation(line: 358, column: 29, scope: !595)
!603 = !DILocation(line: 358, column: 28, scope: !595)
!604 = !DILocation(line: 363, column: 7, scope: !605)
!605 = distinct !DILexicalBlock(scope: !606, file: !1, line: 362, column: 37)
!606 = distinct !DILexicalBlock(scope: !607, file: !1, line: 362, column: 5)
!607 = distinct !DILexicalBlock(scope: !585, file: !1, line: 362, column: 5)
!608 = !DILocation(line: 363, column: 14, scope: !605)
!609 = !DILocation(line: 362, column: 5, scope: !607)
!610 = !DILocation(line: 360, column: 26, scope: !611)
!611 = distinct !DILexicalBlock(scope: !612, file: !1, line: 359, column: 5)
!612 = distinct !DILexicalBlock(scope: !585, file: !1, line: 359, column: 5)
!613 = !{!351, !351, i64 0}
!614 = !DILocation(line: 360, column: 16, scope: !611)
!615 = !DILocation(line: 294, column: 19, scope: !281, inlinedAt: !616)
!616 = distinct !DILocation(line: 360, column: 42, scope: !611)
!617 = !DILocation(line: 296, column: 22, scope: !281, inlinedAt: !616)
!618 = !DILocation(line: 360, column: 42, scope: !611)
!619 = !DILocation(line: 360, column: 41, scope: !611)
!620 = !DILocation(line: 360, column: 14, scope: !611)
!621 = !DILocation(line: 359, column: 5, scope: !612)
!622 = !DILocation(line: 363, column: 26, scope: !605)
!623 = !DILocation(line: 363, column: 16, scope: !605)
!624 = !DILocation(line: 294, column: 19, scope: !281, inlinedAt: !625)
!625 = distinct !DILocation(line: 363, column: 42, scope: !605)
!626 = !DILocation(line: 296, column: 22, scope: !281, inlinedAt: !625)
!627 = !DILocation(line: 363, column: 42, scope: !605)
!628 = !DILocation(line: 363, column: 41, scope: !605)
!629 = !DILocation(line: 367, column: 14, scope: !579)
!630 = !DILocation(line: 367, column: 22, scope: !579)
!631 = !DILocation(line: 367, column: 13, scope: !579)
!632 = !DILocation(line: 369, column: 3, scope: !289)
!633 = !DILocation(line: 371, column: 3, scope: !289)
!634 = !DILocation(line: 372, column: 3, scope: !635)
!635 = distinct !DILexicalBlock(scope: !289, file: !1, line: 372, column: 3)
!636 = !DILocation(line: 373, column: 5, scope: !637)
!637 = distinct !DILexicalBlock(scope: !635, file: !1, line: 372, column: 3)
!638 = !DILocation(line: 372, column: 25, scope: !637)
!639 = !DILocation(line: 374, column: 3, scope: !289)
!640 = !DILocation(line: 375, column: 3, scope: !289)
!641 = !DILocation(line: 376, column: 3, scope: !642)
!642 = distinct !DILexicalBlock(scope: !289, file: !1, line: 376, column: 3)
!643 = !DILocation(line: 377, column: 5, scope: !644)
!644 = distinct !DILexicalBlock(scope: !642, file: !1, line: 376, column: 3)
!645 = !DILocation(line: 376, column: 25, scope: !644)
!646 = !DILocation(line: 378, column: 3, scope: !289)
!647 = !DILocation(line: 344, column: 12, scope: !289)
!648 = !DILocation(line: 380, column: 3, scope: !649)
!649 = distinct !DILexicalBlock(scope: !289, file: !1, line: 380, column: 3)
!650 = !DILocation(line: 399, column: 3, scope: !651)
!651 = distinct !DILexicalBlock(scope: !289, file: !1, line: 399, column: 3)
!652 = !DILocation(line: 345, column: 16, scope: !289)
!653 = !DILocation(line: 382, column: 9, scope: !654)
!654 = distinct !DILexicalBlock(scope: !655, file: !1, line: 382, column: 9)
!655 = distinct !DILexicalBlock(scope: !656, file: !1, line: 380, column: 28)
!656 = distinct !DILexicalBlock(scope: !649, file: !1, line: 380, column: 3)
!657 = !DILocation(line: 382, column: 18, scope: !654)
!658 = !DILocation(line: 382, column: 9, scope: !655)
!659 = !DILocation(line: 301, column: 22, scope: !284, inlinedAt: !660)
!660 = distinct !DILocation(line: 383, column: 27, scope: !661)
!661 = distinct !DILexicalBlock(scope: !654, file: !1, line: 382, column: 23)
!662 = !DILocation(line: 383, column: 7, scope: !661)
!663 = !DILocation(line: 384, column: 7, scope: !664)
!664 = distinct !DILexicalBlock(scope: !661, file: !1, line: 384, column: 7)
!665 = !DILocation(line: 385, column: 15, scope: !666)
!666 = distinct !DILexicalBlock(scope: !667, file: !1, line: 384, column: 33)
!667 = distinct !DILexicalBlock(scope: !664, file: !1, line: 384, column: 7)
!668 = !DILocation(line: 385, column: 14, scope: !666)
!669 = !DILocation(line: 385, column: 29, scope: !666)
!670 = !DILocation(line: 385, column: 28, scope: !666)
!671 = !DILocation(line: 345, column: 10, scope: !289)
!672 = !DILocation(line: 386, column: 6, scope: !666)
!673 = !DILocation(line: 387, column: 7, scope: !666)
!674 = !DILocation(line: 344, column: 14, scope: !289)
!675 = !DILocation(line: 388, column: 2, scope: !666)
!676 = !DILocation(line: 390, column: 15, scope: !677)
!677 = distinct !DILexicalBlock(scope: !661, file: !1, line: 390, column: 11)
!678 = !DILocation(line: 390, column: 11, scope: !661)
!679 = !DILocation(line: 391, column: 14, scope: !680)
!680 = distinct !DILexicalBlock(scope: !677, file: !1, line: 390, column: 20)
!681 = !DILocation(line: 391, column: 7, scope: !680)
!682 = !DILocation(line: 392, column: 2, scope: !680)
!683 = !DILocation(line: 393, column: 7, scope: !680)
!684 = !DILocation(line: 395, column: 2, scope: !677)
!685 = !DILocation(line: 400, column: 10, scope: !686)
!686 = distinct !DILexicalBlock(scope: !687, file: !1, line: 399, column: 29)
!687 = distinct !DILexicalBlock(scope: !651, file: !1, line: 399, column: 3)
!688 = !DILocation(line: 400, column: 8, scope: !686)
!689 = !DILocation(line: 346, column: 16, scope: !289)
!690 = !DILocation(line: 401, column: 10, scope: !686)
!691 = !DILocation(line: 401, column: 8, scope: !686)
!692 = !DILocation(line: 347, column: 16, scope: !289)
!693 = !DILocation(line: 403, column: 6, scope: !289)
!694 = !DILocation(line: 345, column: 20, scope: !289)
!695 = !DILocation(line: 404, column: 6, scope: !289)
!696 = !DILocation(line: 345, column: 23, scope: !289)
!697 = !DILocation(line: 406, column: 10, scope: !289)
!698 = !DILocation(line: 406, column: 17, scope: !289)
!699 = !DILocation(line: 406, column: 14, scope: !289)
!700 = !DILocation(line: 406, column: 27, scope: !289)
!701 = !DILocation(line: 406, column: 22, scope: !289)
!702 = !DILocation(line: 407, column: 11, scope: !703)
!703 = distinct !DILexicalBlock(scope: !289, file: !1, line: 407, column: 7)
!704 = !DILocation(line: 407, column: 7, scope: !289)
!705 = !DILocation(line: 408, column: 16, scope: !706)
!706 = distinct !DILexicalBlock(scope: !703, file: !1, line: 407, column: 16)
!707 = !DILocation(line: 409, column: 5, scope: !706)
!708 = !DILocation(line: 410, column: 3, scope: !706)
!709 = !DILocation(line: 411, column: 1, scope: !289)
!710 = !DILocation(line: 317, column: 27, scope: !309)
!711 = !DILocation(line: 317, column: 35, scope: !309)
!712 = !DILocation(line: 317, column: 49, scope: !309)
!713 = !DILocation(line: 317, column: 60, scope: !309)
!714 = !DILocation(line: 317, column: 73, scope: !309)
!715 = !DILocation(line: 320, column: 16, scope: !309)
!716 = !DILocation(line: 323, column: 11, scope: !717)
!717 = distinct !DILexicalBlock(scope: !309, file: !1, line: 323, column: 7)
!718 = !DILocation(line: 323, column: 7, scope: !309)
!719 = !DILocation(line: 324, column: 10, scope: !720)
!720 = distinct !DILexicalBlock(scope: !717, file: !1, line: 323, column: 16)
!721 = !DILocation(line: 324, column: 8, scope: !720)
!722 = !DILocation(line: 325, column: 5, scope: !720)
!723 = !DILocation(line: 319, column: 10, scope: !309)
!724 = !DILocation(line: 326, column: 16, scope: !725)
!725 = distinct !DILexicalBlock(scope: !726, file: !1, line: 326, column: 5)
!726 = distinct !DILexicalBlock(scope: !720, file: !1, line: 326, column: 5)
!727 = !DILocation(line: 326, column: 5, scope: !726)
!728 = !DILocation(line: 327, column: 20, scope: !729)
!729 = distinct !DILexicalBlock(scope: !725, file: !1, line: 326, column: 31)
!730 = !DILocation(line: 327, column: 19, scope: !729)
!731 = !DILocation(line: 327, column: 28, scope: !729)
!732 = !DILocation(line: 320, column: 10, scope: !309)
!733 = !DILocation(line: 328, column: 11, scope: !729)
!734 = !DILocation(line: 329, column: 12, scope: !729)
!735 = !DILocation(line: 319, column: 12, scope: !309)
!736 = !DILocation(line: 330, column: 7, scope: !729)
!737 = !DILocation(line: 332, column: 13, scope: !738)
!738 = distinct !DILexicalBlock(scope: !720, file: !1, line: 332, column: 9)
!739 = !DILocation(line: 332, column: 9, scope: !720)
!740 = !DILocation(line: 333, column: 19, scope: !741)
!741 = distinct !DILexicalBlock(scope: !738, file: !1, line: 332, column: 18)
!742 = !DILocation(line: 333, column: 12, scope: !741)
!743 = !DILocation(line: 334, column: 7, scope: !741)
!744 = !DILocation(line: 335, column: 5, scope: !741)
!745 = !DILocation(line: 337, column: 7, scope: !738)
!746 = !DILocation(line: 339, column: 3, scope: !309)

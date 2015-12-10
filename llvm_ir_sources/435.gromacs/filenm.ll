; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/filenm.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.t_deffile = type { i32, i8*, i8*, i8*, i8*, i32, i32* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_filenm = type { i32, i8*, i8*, i64 }

@.str = private unnamed_addr constant [4 x i8] c".gz\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c".Z\00", align 1
@z_ext = global [2 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0)], align 16
@default_file_name = internal unnamed_addr global i8* null, align 8
@deffile = internal unnamed_addr global [46 x %struct.t_deffile] [%struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str49, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str50, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str51, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8]* @.str52, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str53, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str54, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str51, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str55, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 3, i8* getelementptr inbounds ([5 x i8]* @.str56, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str57, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str51, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8]* @.str58, i32 0, i32 0), i32 7, i32* getelementptr inbounds ([7 x i32]* @trxs, i32 0, i32 0) }, %struct.t_deffile { i32 3, i8* getelementptr inbounds ([5 x i8]* @.str56, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str57, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([35 x i8]* @.str59, i32 0, i32 0), i32 2, i32* getelementptr inbounds ([2 x i32]* @trns, i32 0, i32 0) }, %struct.t_deffile { i32 2, i8* getelementptr inbounds ([5 x i8]* @.str60, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str57, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([34 x i8]* @.str61, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 1, i8* getelementptr inbounds ([5 x i8]* @.str62, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str57, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([40 x i8]* @.str63, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 2, i8* getelementptr inbounds ([5 x i8]* @.str64, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str57, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([44 x i8]* @.str65, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str66, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str67, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([34 x i8]* @.str68, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 3, i8* getelementptr inbounds ([5 x i8]* @.str56, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str69, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([24 x i8]* @.str70, i32 0, i32 0), i32 2, i32* getelementptr inbounds ([2 x i32]* @enxs, i32 0, i32 0) }, %struct.t_deffile { i32 2, i8* getelementptr inbounds ([5 x i8]* @.str71, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str69, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([35 x i8]* @.str72, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 1, i8* getelementptr inbounds ([5 x i8]* @.str73, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str69, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8]* @.str74, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 3, i8* getelementptr inbounds ([5 x i8]* @.str56, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str75, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str76, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8]* @.str77, i32 0, i32 0), i32 8, i32* getelementptr inbounds ([8 x i32]* @stxs, i32 0, i32 0) }, %struct.t_deffile { i32 3, i8* getelementptr inbounds ([5 x i8]* @.str56, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str78, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str79, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8]* @.str80, i32 0, i32 0), i32 5, i32* getelementptr inbounds ([5 x i32]* @stos, i32 0, i32 0) }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str81, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str75, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str76, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8]* @.str82, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str83, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str75, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str76, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8]* @.str84, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str85, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str86, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str51, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str87, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str88, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str86, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str51, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8]* @.str89, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str90, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str86, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str51, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8]* @.str91, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str92, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str93, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str94, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str95, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str96, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str97, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str79, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str98, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str99, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str100, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str79, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str101, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str102, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str103, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str104, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str105, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str106, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str107, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str108, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str109, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str110, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str111, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([26 x i8]* @.str112, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 3, i8* getelementptr inbounds ([5 x i8]* @.str56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str107, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str113, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8]* @.str114, i32 0, i32 0), i32 3, i32* getelementptr inbounds ([3 x i32]* @tpxs, i32 0, i32 0) }, %struct.t_deffile { i32 3, i8* getelementptr inbounds ([5 x i8]* @.str56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str107, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str113, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8]* @.str115, i32 0, i32 0), i32 8, i32* getelementptr inbounds ([8 x i32]* @tpss, i32 0, i32 0) }, %struct.t_deffile { i32 2, i8* getelementptr inbounds ([5 x i8]* @.str116, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str107, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str113, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str117, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str118, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str107, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str113, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8]* @.str119, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 1, i8* getelementptr inbounds ([5 x i8]* @.str120, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str107, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str113, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @.str121, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str122, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str123, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str79, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str124, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str125, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str126, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([34 x i8]* @.str127, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str128, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str129, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([30 x i8]* @.str130, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str131, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str132, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([19 x i8]* @.str133, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str134, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str135, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8]* @.str136, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str137, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str138, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([25 x i8]* @.str139, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str140, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str141, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([37 x i8]* @.str142, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str143, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str144, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([34 x i8]* @.str145, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str146, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str141, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8]* @.str147, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str148, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str149, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8]* @.str150, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 1, i8* getelementptr inbounds ([5 x i8]* @.str151, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str152, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str153, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str154, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str155, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str156, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8]* @.str157, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str158, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str156, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([19 x i8]* @.str159, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str160, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str161, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8]* @.str162, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str163, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str161, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8]* @.str164, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str165, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str166, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([37 x i8]* @.str167, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str168, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str169, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([32 x i8]* @.str170, i32 0, i32 0), i32 0, i32* null }], align 16
@.str2 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str3 = private unnamed_addr constant [17 x i8] c"unknown filetype\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"Binary\00", align 1
@.str6 = private unnamed_addr constant [13 x i8] c"XDR portable\00", align 1
@.str7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str8 = private unnamed_addr constant [49 x i8] c"DEATH HORROR: Unknown filetype in ftp2ftype (%d)\00", align 1
@ftp2defnm.buf = internal global [256 x i8] zeroinitializer, align 16
@.str9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str10 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"flst\00", align 1
@.str12 = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/filenm.c\00", align 1
@.str13 = private unnamed_addr constant [6 x i8] c" \5Ctt \00", align 1
@.str14 = private unnamed_addr constant [4 x i8] c"Asc\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"Bin\00", align 1
@.str16 = private unnamed_addr constant [4 x i8] c"xdr\00", align 1
@.str17 = private unnamed_addr constant [29 x i8] c"Unimplemented filetype %d %d\00", align 1
@.str18 = private unnamed_addr constant [53 x i8] c"\5Ctt %8s & \5Ctt %3s & %3s & \5Ctt %2s & %s%s \5C\5C[-0.1ex]\0A\00", align 1
@.str19 = private unnamed_addr constant [21 x i8] c"%6s %12s  %-12s  %s\0A\00", align 1
@.str20 = private unnamed_addr constant [7 x i8] c"Option\00", align 1
@.str21 = private unnamed_addr constant [9 x i8] c"Filename\00", align 1
@.str22 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str23 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str24 = private unnamed_addr constant [62 x i8] c"------------------------------------------------------------\0A\00", align 1
@.str25 = private unnamed_addr constant [21 x i8] c"%4s %14s  %-12s  %s\0A\00", align 1
@.str26 = private unnamed_addr constant [5 x i8] c"wbuf\00", align 1
@.str28 = private unnamed_addr constant [12 x i8] c" \22n/%s/f:*.\00", align 1
@.str30 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str31 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str32 = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@.str33 = private unnamed_addr constant [4 x i8] c"}/\22\00", align 1
@.str34 = private unnamed_addr constant [34 x i8] c"%s) COMPREPLY=( $(compgen -X '!*.\00", align 1
@.str35 = private unnamed_addr constant [3 x i8] c"+(\00", align 1
@.str38 = private unnamed_addr constant [3 x i8] c"*(\00", align 1
@.str39 = private unnamed_addr constant [46 x i8] c")' -f $c ; compgen -S '/' -X '.*' -d $c ));;\0A\00", align 1
@.str40 = private unnamed_addr constant [20 x i8] c"- 'c[-1,%s]' -g '*.\00", align 1
@.str42 = private unnamed_addr constant [4 x i8] c"|%s\00", align 1
@.str43 = private unnamed_addr constant [9 x i8] c") *(/)' \00", align 1
@.str44 = private unnamed_addr constant [8 x i8] c"bRemove\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str45 = private unnamed_addr constant [14 x i8] c"No option %s\0A\00", align 1
@.str46 = private unnamed_addr constant [24 x i8] c"ftp2fn: No filetype %s\0A\00", align 1
@.str47 = private unnamed_addr constant [26 x i8] c"ftp2bSet: No filetype %s\0A\00", align 1
@ftp2filter.filter = internal global [128 x i8] zeroinitializer, align 16
@enxs = internal global [2 x i32] [i32 9, i32 10], align 4
@trxs = internal global [7 x i32] [i32 6, i32 4, i32 5, i32 13, i32 14, i32 15, i32 7], align 16
@trns = internal global [2 x i32] [i32 4, i32 5], align 4
@stos = internal global [5 x i32] [i32 13, i32 14, i32 15, i32 16, i32 17], align 16
@stxs = internal global [8 x i32] [i32 13, i32 14, i32 15, i32 16, i32 17, i32 26, i32 28, i32 27], align 16
@tpxs = internal global [3 x i32] [i32 26, i32 28, i32 27], align 4
@.str48 = private unnamed_addr constant [4 x i8] c"*%s\00", align 1
@.str49 = private unnamed_addr constant [5 x i8] c".mdp\00", align 1
@.str50 = private unnamed_addr constant [7 x i8] c"grompp\00", align 1
@.str51 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str52 = private unnamed_addr constant [37 x i8] c"grompp input file with MD parameters\00", align 1
@.str53 = private unnamed_addr constant [5 x i8] c".gct\00", align 1
@.str54 = private unnamed_addr constant [4 x i8] c"gct\00", align 1
@.str55 = private unnamed_addr constant [23 x i8] c"General coupling stuff\00", align 1
@.str56 = private unnamed_addr constant [5 x i8] c".???\00", align 1
@.str57 = private unnamed_addr constant [5 x i8] c"traj\00", align 1
@.str58 = private unnamed_addr constant [44 x i8] c"Generic trajectory: xtc trr trj gro g96 pdb\00", align 1
@.str59 = private unnamed_addr constant [35 x i8] c"Full precision trajectory: trr trj\00", align 1
@.str60 = private unnamed_addr constant [5 x i8] c".trr\00", align 1
@.str61 = private unnamed_addr constant [34 x i8] c"Trajectory in portable xdr format\00", align 1
@.str62 = private unnamed_addr constant [5 x i8] c".trj\00", align 1
@.str63 = private unnamed_addr constant [40 x i8] c"Trajectory file (architecture specific)\00", align 1
@.str64 = private unnamed_addr constant [5 x i8] c".xtc\00", align 1
@.str65 = private unnamed_addr constant [44 x i8] c"Compressed trajectory (portable xdr format)\00", align 1
@.str66 = private unnamed_addr constant [5 x i8] c".g87\00", align 1
@.str67 = private unnamed_addr constant [6 x i8] c"gtraj\00", align 1
@.str68 = private unnamed_addr constant [34 x i8] c"Gromos-87 ASCII trajectory format\00", align 1
@.str69 = private unnamed_addr constant [5 x i8] c"ener\00", align 1
@.str70 = private unnamed_addr constant [24 x i8] c"Generic energy: edr ene\00", align 1
@.str71 = private unnamed_addr constant [5 x i8] c".edr\00", align 1
@.str72 = private unnamed_addr constant [35 x i8] c"Energy file in portable xdr format\00", align 1
@.str73 = private unnamed_addr constant [5 x i8] c".ene\00", align 1
@.str74 = private unnamed_addr constant [12 x i8] c"Energy file\00", align 1
@.str75 = private unnamed_addr constant [5 x i8] c"conf\00", align 1
@.str76 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str77 = private unnamed_addr constant [43 x i8] c"Generic structure: gro g96 pdb tpr tpb tpa\00", align 1
@.str78 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str79 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str80 = private unnamed_addr constant [31 x i8] c"Generic structure: gro g96 pdb\00", align 1
@.str81 = private unnamed_addr constant [5 x i8] c".gro\00", align 1
@.str82 = private unnamed_addr constant [36 x i8] c"Coordinate file in Gromos-87 format\00", align 1
@.str83 = private unnamed_addr constant [5 x i8] c".g96\00", align 1
@.str84 = private unnamed_addr constant [36 x i8] c"Coordinate file in Gromos-96 format\00", align 1
@.str85 = private unnamed_addr constant [5 x i8] c".pdb\00", align 1
@.str86 = private unnamed_addr constant [6 x i8] c"eiwit\00", align 1
@.str87 = private unnamed_addr constant [23 x i8] c"Protein data bank file\00", align 1
@.str88 = private unnamed_addr constant [5 x i8] c".brk\00", align 1
@.str89 = private unnamed_addr constant [26 x i8] c"Brookhaven data bank file\00", align 1
@.str90 = private unnamed_addr constant [5 x i8] c".ent\00", align 1
@.str91 = private unnamed_addr constant [31 x i8] c"Entry in the protein date bank\00", align 1
@.str92 = private unnamed_addr constant [5 x i8] c".log\00", align 1
@.str93 = private unnamed_addr constant [4 x i8] c"run\00", align 1
@.str94 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str95 = private unnamed_addr constant [9 x i8] c"Log file\00", align 1
@.str96 = private unnamed_addr constant [5 x i8] c".xvg\00", align 1
@.str97 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@.str98 = private unnamed_addr constant [15 x i8] c"xvgr/xmgr file\00", align 1
@.str99 = private unnamed_addr constant [5 x i8] c".out\00", align 1
@.str100 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str101 = private unnamed_addr constant [20 x i8] c"Generic output file\00", align 1
@.str102 = private unnamed_addr constant [5 x i8] c".ndx\00", align 1
@.str103 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str104 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str105 = private unnamed_addr constant [11 x i8] c"Index file\00", align 1
@.str106 = private unnamed_addr constant [5 x i8] c".top\00", align 1
@.str107 = private unnamed_addr constant [6 x i8] c"topol\00", align 1
@.str108 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str109 = private unnamed_addr constant [14 x i8] c"Topology file\00", align 1
@.str110 = private unnamed_addr constant [5 x i8] c".itp\00", align 1
@.str111 = private unnamed_addr constant [7 x i8] c"topinc\00", align 1
@.str112 = private unnamed_addr constant [26 x i8] c"Include file for topology\00", align 1
@.str113 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str114 = private unnamed_addr constant [31 x i8] c"Generic run input: tpr tpb tpa\00", align 1
@.str115 = private unnamed_addr constant [44 x i8] c"Structure+mass(db): tpr tpb tpa gro g96 pdb\00", align 1
@tpss = internal global [8 x i32] [i32 26, i32 28, i32 27, i32 13, i32 14, i32 15, i32 16, i32 17], align 16
@.str116 = private unnamed_addr constant [5 x i8] c".tpr\00", align 1
@.str117 = private unnamed_addr constant [28 x i8] c"Portable xdr run input file\00", align 1
@.str118 = private unnamed_addr constant [5 x i8] c".tpa\00", align 1
@.str119 = private unnamed_addr constant [21 x i8] c"Ascii run input file\00", align 1
@.str120 = private unnamed_addr constant [5 x i8] c".tpb\00", align 1
@.str121 = private unnamed_addr constant [22 x i8] c"Binary run input file\00", align 1
@.str122 = private unnamed_addr constant [5 x i8] c".tex\00", align 1
@.str123 = private unnamed_addr constant [4 x i8] c"doc\00", align 1
@.str124 = private unnamed_addr constant [11 x i8] c"LaTeX file\00", align 1
@.str125 = private unnamed_addr constant [5 x i8] c".rtp\00", align 1
@.str126 = private unnamed_addr constant [8 x i8] c"residue\00", align 1
@.str127 = private unnamed_addr constant [34 x i8] c"Residue Type file used by pdb2gmx\00", align 1
@.str128 = private unnamed_addr constant [5 x i8] c".atp\00", align 1
@.str129 = private unnamed_addr constant [7 x i8] c"atomtp\00", align 1
@.str130 = private unnamed_addr constant [30 x i8] c"Atomtype file used by pdb2gmx\00", align 1
@.str131 = private unnamed_addr constant [5 x i8] c".hdb\00", align 1
@.str132 = private unnamed_addr constant [6 x i8] c"polar\00", align 1
@.str133 = private unnamed_addr constant [19 x i8] c"Hydrogen data base\00", align 1
@.str134 = private unnamed_addr constant [5 x i8] c".dat\00", align 1
@.str135 = private unnamed_addr constant [7 x i8] c"nnnice\00", align 1
@.str136 = private unnamed_addr constant [18 x i8] c"Generic data file\00", align 1
@.str137 = private unnamed_addr constant [5 x i8] c".dlg\00", align 1
@.str138 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str139 = private unnamed_addr constant [25 x i8] c"Dialog Box data for ngmx\00", align 1
@.str140 = private unnamed_addr constant [5 x i8] c".map\00", align 1
@.str141 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@.str142 = private unnamed_addr constant [37 x i8] c"File that maps matrix data to colors\00", align 1
@.str143 = private unnamed_addr constant [5 x i8] c".eps\00", align 1
@.str144 = private unnamed_addr constant [5 x i8] c"plot\00", align 1
@.str145 = private unnamed_addr constant [34 x i8] c"Encapsulated PostScript (tm) file\00", align 1
@.str146 = private unnamed_addr constant [5 x i8] c".mat\00", align 1
@.str147 = private unnamed_addr constant [17 x i8] c"Matrix Data file\00", align 1
@.str148 = private unnamed_addr constant [5 x i8] c".m2p\00", align 1
@.str149 = private unnamed_addr constant [3 x i8] c"ps\00", align 1
@.str150 = private unnamed_addr constant [22 x i8] c"Input file for mat2ps\00", align 1
@.str151 = private unnamed_addr constant [5 x i8] c".mtx\00", align 1
@.str152 = private unnamed_addr constant [8 x i8] c"hessian\00", align 1
@.str153 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str154 = private unnamed_addr constant [15 x i8] c"Hessian matrix\00", align 1
@.str155 = private unnamed_addr constant [5 x i8] c".edi\00", align 1
@.str156 = private unnamed_addr constant [4 x i8] c"sam\00", align 1
@.str157 = private unnamed_addr constant [18 x i8] c"ED sampling input\00", align 1
@.str158 = private unnamed_addr constant [5 x i8] c".edo\00", align 1
@.str159 = private unnamed_addr constant [19 x i8] c"ED sampling output\00", align 1
@.str160 = private unnamed_addr constant [5 x i8] c".ppa\00", align 1
@.str161 = private unnamed_addr constant [5 x i8] c"pull\00", align 1
@.str162 = private unnamed_addr constant [16 x i8] c"Pull parameters\00", align 1
@.str163 = private unnamed_addr constant [5 x i8] c".pdo\00", align 1
@.str164 = private unnamed_addr constant [17 x i8] c"Pull data output\00", align 1
@.str165 = private unnamed_addr constant [5 x i8] c".hat\00", align 1
@.str166 = private unnamed_addr constant [3 x i8] c"gk\00", align 1
@.str167 = private unnamed_addr constant [37 x i8] c"Fourier transform of spread function\00", align 1
@.str168 = private unnamed_addr constant [5 x i8] c".xpm\00", align 1
@.str169 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str170 = private unnamed_addr constant [32 x i8] c"X PixMap compatible matrix file\00", align 1
@.str171 = private unnamed_addr constant [45 x i8] c"No default cmd-line option for %s (type %d)\0A\00", align 1
@.str172 = private unnamed_addr constant [28 x i8] c"file type out of range (%d)\00", align 1
@.str173 = private unnamed_addr constant [28 x i8] c"DEATH HORROR ERROR in %s:%d\00", align 1
@.str174 = private unnamed_addr constant [4 x i8] c"*.{\00", align 1
@switch.table = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0)]
@switch.table175 = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0)]

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
define void @set_default_file_name(i8* nocapture readonly %name) #3 {
  %1 = tail call i8* @strdup(i8* %name) #9
  store i8* %1, i8** @default_file_name, align 8, !tbaa !14
  %.cast = ptrtoint i8* %1 to i64
  br label %2

; <label>:2                                       ; preds = %2, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %2 ]
  %3 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %indvars.iv, i32 2
  %4 = bitcast i8** %3 to i64*
  store i64 %.cast, i64* %4, align 8, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 46
  br i1 %exitcond, label %5, label %2

; <label>:5                                       ; preds = %2
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #4

; Function Attrs: nounwind optsize readonly ssp uwtable
define i8* @ftp2ext(i32 %ftp) #5 {
  %1 = icmp ult i32 %ftp, 46
  br i1 %1, label %2, label %7

; <label>:2                                       ; preds = %0
  %3 = sext i32 %ftp to i64
  %4 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %3, i32 1
  %5 = load i8** %4, align 8, !tbaa !17
  %6 = getelementptr inbounds i8* %5, i64 1
  br label %7

; <label>:7                                       ; preds = %0, %2
  %.0 = phi i8* [ %6, %2 ], [ getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), %0 ]
  ret i8* %.0
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i8* @ftp2desc(i32 %ftp) #5 {
  %1 = icmp ult i32 %ftp, 46
  br i1 %1, label %2, label %6

; <label>:2                                       ; preds = %0
  %3 = sext i32 %ftp to i64
  %4 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %3, i32 4
  %5 = load i8** %4, align 8, !tbaa !18
  br label %6

; <label>:6                                       ; preds = %0, %2
  %.0 = phi i8* [ %5, %2 ], [ getelementptr inbounds ([17 x i8]* @.str3, i64 0, i64 0), %0 ]
  ret i8* %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @ftp2ftype(i32 %ftp) #3 {
  %1 = icmp ult i32 %ftp, 46
  br i1 %1, label %2, label %9

; <label>:2                                       ; preds = %0
  %3 = sext i32 %ftp to i64
  %4 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %3, i32 0
  %5 = load i32* %4, align 8, !tbaa !19
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %switch.lookup, label %7

; <label>:7                                       ; preds = %2
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([49 x i8]* @.str8, i64 0, i64 0), i32 %5) #9
  br label %9

switch.lookup:                                    ; preds = %2
  %8 = sext i32 %5 to i64
  %switch.gep = getelementptr inbounds [4 x i8*]* @switch.table, i64 0, i64 %8
  %switch.load = load i8** %switch.gep, align 8
  ret i8* %switch.load

; <label>:9                                       ; preds = %0, %7
  ret i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0)
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define i8* @ftp2defnm(i32 %ftp) #3 {
  %1 = icmp ult i32 %ftp, 46
  br i1 %1, label %2, label %7

; <label>:2                                       ; preds = %0
  %3 = sext i32 %ftp to i64
  %4 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %3, i32 2
  %5 = load i8** %4, align 8, !tbaa !15
  %6 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([256 x i8]* @ftp2defnm.buf, i64 0, i64 0), i32 0, i64 256, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i8* %5) #9
  br label %7

; <label>:7                                       ; preds = %0, %2
  %.0 = phi i8* [ getelementptr inbounds ([256 x i8]* @ftp2defnm.buf, i64 0, i64 0), %2 ], [ null, %0 ]
  ret i8* %.0
}

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_def(%struct.__sFILE* nocapture %fp, i32 %ftp) #3 {
  %1 = sext i32 %ftp to i64
  %2 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %1, i32 5
  %3 = load i32* %2, align 8, !tbaa !20
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %1, i32 4
  %6 = load i8** %5, align 8
  br i1 %4, label %25, label %7

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %1, i32 6
  %9 = load i32** %8, align 8, !tbaa !21
  %10 = load i32* %9, align 4, !tbaa !22
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %11, i32 1
  %13 = load i8** %12, align 8, !tbaa !17
  %14 = tail call i8* @strdup(i8* %6) #9
  %15 = tail call i8* @strstr(i8* %14, i8* getelementptr inbounds ([3 x i8]* @.str10, i64 0, i64 0)) #9
  %16 = getelementptr inbounds i8* %15, i64 1
  store i8 0, i8* %16, align 1, !tbaa !13
  %17 = getelementptr inbounds i8* %15, i64 2
  %18 = tail call i64 @strlen(i8* %17) #9
  %19 = add i64 %18, 6
  %20 = trunc i64 %19 to i32
  %21 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str12, i64 0, i64 0), i32 239, i32 %20, i32 1) #9
  %22 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %21, i1 false)
  %23 = tail call i8* @__memcpy_chk(i8* %21, i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i64 6, i64 %22)
  %24 = tail call i8* @__strcat_chk(i8* %21, i8* %17, i64 %22) #9
  br label %28

; <label>:25                                      ; preds = %0
  %26 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %1, i32 1
  %27 = load i8** %26, align 8, !tbaa !17
  br label %28

; <label>:28                                      ; preds = %7, %25
  %s.0 = phi i8* [ %17, %7 ], [ null, %25 ]
  %ext.0 = phi i8* [ %13, %7 ], [ %27, %25 ]
  %desc.0 = phi i8* [ %14, %7 ], [ %6, %25 ]
  %flst.0 = phi i8* [ %21, %7 ], [ getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), %25 ]
  %29 = load i8* %ext.0, align 1, !tbaa !13
  %30 = icmp eq i8 %29, 0
  %31 = getelementptr inbounds i8* %ext.0, i64 1
  %ext.1 = select i1 %30, i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* %31
  %32 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %1, i32 0
  %33 = load i32* %32, align 8, !tbaa !19
  %34 = icmp ult i32 %33, 4
  br i1 %34, label %switch.lookup, label %35

; <label>:35                                      ; preds = %28
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str17, i64 0, i64 0), i32 %ftp, i32 %33) #9
  br label %37

switch.lookup:                                    ; preds = %28
  %36 = sext i32 %33 to i64
  %switch.gep = getelementptr inbounds [4 x i8*]* @switch.table175, i64 0, i64 %36
  %switch.load = load i8** %switch.gep, align 8
  br label %37

; <label>:37                                      ; preds = %switch.lookup, %35
  %s.1 = phi i8* [ %s.0, %35 ], [ %switch.load, %switch.lookup ]
  %38 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %1, i32 2
  %39 = load i8** %38, align 8, !tbaa !15
  %40 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %1, i32 3
  %41 = load i8** %40, align 8, !tbaa !23
  %42 = icmp eq i8* %41, null
  %. = select i1 %42, i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* %41
  %43 = tail call i8* @check_tex(i8* %desc.0) #9
  %44 = tail call i8* @check_tex(i8* %flst.0) #9
  %45 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([53 x i8]* @.str18, i64 0, i64 0), i8* %39, i8* %ext.1, i8* %s.1, i8* %., i8* %43, i8* %44) #9
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #6

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #4

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #7

; Function Attrs: nounwind optsize
declare i8* @__strcat_chk(i8*, i8*, i64) #4

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: optsize
declare i8* @check_tex(i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_fns(%struct.__sFILE* nocapture %fp, i32 %nf, %struct.t_filenm* nocapture readonly %tfn) #3 {
  %buf = alloca [256 x i8], align 16
  %1 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %1) #8
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([21 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str23, i64 0, i64 0)) #9
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([62 x i8]* @.str24, i64 0, i64 0), i64 61, i64 1, %struct.__sFILE* %fp)
  %4 = icmp sgt i32 %nf, 0
  br i1 %4, label %.lr.ph5, label %._crit_edge

.lr.ph5:                                          ; preds = %0
  %5 = add i32 %nf, -1
  br label %6

; <label>:6                                       ; preds = %.loopexit, %.lr.ph5
  %indvars.iv6 = phi i64 [ 0, %.lr.ph5 ], [ %indvars.iv.next7, %.loopexit ]
  %7 = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv6, i32 1
  %8 = load i8** %7, align 8, !tbaa !24
  %9 = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv6, i32 2
  %10 = load i8** %9, align 8, !tbaa !27
  %11 = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv6, i32 3
  %12 = load i64* %11, align 8, !tbaa !28
  %13 = call i8* @fileopt(i64 %12) #9
  %14 = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv6, i32 0
  %15 = load i32* %14, align 4, !tbaa !29
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %16, i32 4
  %18 = load i8** %17, align 8, !tbaa !18
  %19 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 256, i8* getelementptr inbounds ([21 x i8]* @.str25, i64 0, i64 0), i8* %8, i8* %10, i8* %13, i8* %18) #9
  %20 = load i8** %7, align 8, !tbaa !24
  %21 = call i64 @strlen(i8* %20) #9
  %22 = icmp ugt i64 %21, 4
  br i1 %22, label %23, label %.loopexit

; <label>:23                                      ; preds = %6
  %24 = load i8** %9, align 8, !tbaa !27
  %25 = call i64 @strlen(i8* %24) #9
  %26 = sub i64 18, %25
  %27 = icmp ugt i64 %21, %26
  br i1 %27, label %.loopexit, label %28

; <label>:28                                      ; preds = %23
  %sext = shl i64 %21, 32
  %29 = ashr exact i64 %sext, 32
  %30 = call i64 @strlen(i8* %1) #9
  %31 = call i64 @strlen(i8* %20) #9
  %32 = add i64 %30, 5
  %33 = sub i64 %32, %31
  %34 = icmp ult i64 %29, %33
  br i1 %34, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %28
  %sext8 = shl i64 %21, 32
  %35 = ashr exact i64 %sext8, 32
  br label %36

; <label>:36                                      ; preds = %.lr.ph, %36
  %indvars.iv = phi i64 [ %35, %.lr.ph ], [ %indvars.iv.next, %36 ]
  %37 = phi i64 [ %31, %.lr.ph ], [ %44, %36 ]
  %38 = add nsw i64 %indvars.iv, -4
  %39 = add i64 %38, %37
  %40 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 %39
  %41 = load i8* %40, align 1, !tbaa !13
  %42 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 %indvars.iv
  store i8 %41, i8* %42, align 1, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %43 = call i64 @strlen(i8* %1) #9
  %44 = call i64 @strlen(i8* %20) #9
  %45 = add i64 %43, 5
  %46 = sub i64 %45, %44
  %47 = icmp ult i64 %indvars.iv.next, %46
  br i1 %47, label %36, label %.loopexit

.loopexit:                                        ; preds = %36, %28, %23, %6
  %48 = call i8* @wrap_lines(i8* %1, i32 80, i32 35) #9
  %fputs = call i32 @fputs(i8* %48, %struct.__sFILE* %fp)
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str12, i64 0, i64 0), i32 290, i8* %48) #9
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %lftr.wideiv = trunc i64 %indvars.iv6 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %._crit_edge, label %6

._crit_edge:                                      ; preds = %.loopexit, %0
  %fputc = call i32 @fputc(i32 10, %struct.__sFILE* %fp)
  %49 = call i32 @fflush(%struct.__sFILE* %fp) #9
  call void @llvm.lifetime.end(i64 256, i8* %1) #8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #8

; Function Attrs: optsize
declare i8* @fileopt(i64) #1

; Function Attrs: optsize
declare i8* @wrap_lines(i8*, i32, i32) #1

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #8

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_fopts(%struct.__sFILE* %fp, i32 %nf, %struct.t_filenm* nocapture readonly %tfn, i32 %shell) #3 {
  switch i32 %shell, label %.loopexit [
    i32 0, label %.preheader
    i32 1, label %.preheader37
    i32 2, label %.preheader39
  ]

.preheader39:                                     ; preds = %0
  %1 = icmp sgt i32 %nf, 0
  br i1 %1, label %.lr.ph58, label %.loopexit

.lr.ph58:                                         ; preds = %.preheader39
  %2 = add i32 %nf, -1
  br label %105

.preheader37:                                     ; preds = %0
  %3 = icmp sgt i32 %nf, 0
  br i1 %3, label %.lr.ph51, label %.loopexit

.lr.ph51:                                         ; preds = %.preheader37
  %4 = add i32 %nf, -1
  br label %54

.preheader:                                       ; preds = %0
  %5 = icmp sgt i32 %nf, 0
  br i1 %5, label %.lr.ph44, label %.loopexit

.lr.ph44:                                         ; preds = %.preheader
  %6 = add i32 %nf, -1
  br label %7

; <label>:7                                       ; preds = %52, %.lr.ph44
  %indvars.iv61 = phi i64 [ 0, %.lr.ph44 ], [ %indvars.iv.next62, %52 ]
  %8 = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv61, i32 1
  %9 = load i8** %8, align 8, !tbaa !24
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([12 x i8]* @.str28, i64 0, i64 0), i8* %9) #9
  %11 = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv61, i32 0
  %12 = load i32* %11, align 4, !tbaa !29
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %13, i32 5
  %15 = load i32* %14, align 8, !tbaa !20
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %43, label %17

; <label>:17                                      ; preds = %7
  %fputc27 = tail call i32 @fputc(i32 123, %struct.__sFILE* %fp)
  %18 = load i32* %11, align 4, !tbaa !29
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %19, i32 5
  %21 = load i32* %20, align 8, !tbaa !20
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %17, %26
  %23 = phi i32 [ %37, %26 ], [ %18, %17 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %26 ], [ 0, %17 ]
  %24 = icmp sgt i64 %indvars.iv, 0
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %.lr.ph
  %fputc36 = tail call i32 @fputc(i32 44, %struct.__sFILE* %fp)
  %.pre83 = load i32* %11, align 4, !tbaa !29
  br label %26

; <label>:26                                      ; preds = %25, %.lr.ph
  %27 = phi i32 [ %.pre83, %25 ], [ %23, %.lr.ph ]
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %28, i32 6
  %30 = load i32** %29, align 8, !tbaa !21
  %31 = getelementptr inbounds i32* %30, i64 %indvars.iv
  %32 = load i32* %31, align 4, !tbaa !22
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %33, i32 1
  %35 = load i8** %34, align 8, !tbaa !17
  %36 = getelementptr inbounds i8* %35, i64 1
  %fputs6 = tail call i32 @fputs(i8* %36, %struct.__sFILE* %fp)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %37 = load i32* %11, align 4, !tbaa !29
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %38, i32 5
  %40 = load i32* %39, align 8, !tbaa !20
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %indvars.iv.next, %41
  br i1 %42, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %26, %17
  %fputc30 = tail call i32 @fputc(i32 125, %struct.__sFILE* %fp)
  br label %47

; <label>:43                                      ; preds = %7
  %44 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %13, i32 1
  %45 = load i8** %44, align 8, !tbaa !17
  %46 = getelementptr inbounds i8* %45, i64 1
  %fputs5 = tail call i32 @fputs(i8* %46, %struct.__sFILE* %fp)
  br label %47

; <label>:47                                      ; preds = %43, %._crit_edge
  %fputc33 = tail call i32 @fputc(i32 123, %struct.__sFILE* %fp)
  br label %48

; <label>:48                                      ; preds = %48, %47
  %indvars.iv59 = phi i64 [ 0, %47 ], [ %indvars.iv.next60, %48 ]
  %49 = getelementptr inbounds [2 x i8*]* @z_ext, i64 0, i64 %indvars.iv59
  %50 = load i8** %49, align 8, !tbaa !14
  %51 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str32, i64 0, i64 0), i8* %50) #9
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  %exitcond = icmp eq i64 %indvars.iv.next60, 2
  br i1 %exitcond, label %52, label %48

; <label>:52                                      ; preds = %48
  %53 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str33, i64 0, i64 0), i64 3, i64 1, %struct.__sFILE* %fp)
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %lftr.wideiv = trunc i64 %indvars.iv61 to i32
  %exitcond63 = icmp eq i32 %lftr.wideiv, %6
  br i1 %exitcond63, label %.loopexit, label %7

; <label>:54                                      ; preds = %103, %.lr.ph51
  %indvars.iv69 = phi i64 [ 0, %.lr.ph51 ], [ %indvars.iv.next70, %103 ]
  %55 = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv69, i32 1
  %56 = load i8** %55, align 8, !tbaa !24
  %57 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([34 x i8]* @.str34, i64 0, i64 0), i8* %56) #9
  %58 = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv69, i32 0
  %59 = load i32* %58, align 4, !tbaa !29
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %60, i32 5
  %62 = load i32* %61, align 8, !tbaa !20
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %91, label %64

; <label>:64                                      ; preds = %54
  %65 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str35, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %fp)
  %66 = load i32* %58, align 4, !tbaa !29
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %67, i32 5
  %69 = load i32* %68, align 8, !tbaa !20
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %.lr.ph47, label %._crit_edge48

.lr.ph47:                                         ; preds = %64, %74
  %71 = phi i32 [ %85, %74 ], [ %66, %64 ]
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %74 ], [ 0, %64 ]
  %72 = icmp sgt i64 %indvars.iv64, 0
  br i1 %72, label %73, label %74

; <label>:73                                      ; preds = %.lr.ph47
  %fputc24 = tail call i32 @fputc(i32 124, %struct.__sFILE* %fp)
  %.pre82 = load i32* %58, align 4, !tbaa !29
  br label %74

; <label>:74                                      ; preds = %73, %.lr.ph47
  %75 = phi i32 [ %.pre82, %73 ], [ %71, %.lr.ph47 ]
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %76, i32 6
  %78 = load i32** %77, align 8, !tbaa !21
  %79 = getelementptr inbounds i32* %78, i64 %indvars.iv64
  %80 = load i32* %79, align 4, !tbaa !22
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %81, i32 1
  %83 = load i8** %82, align 8, !tbaa !17
  %84 = getelementptr inbounds i8* %83, i64 1
  %fputs4 = tail call i32 @fputs(i8* %84, %struct.__sFILE* %fp)
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %85 = load i32* %58, align 4, !tbaa !29
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %86, i32 5
  %88 = load i32* %87, align 8, !tbaa !20
  %89 = sext i32 %88 to i64
  %90 = icmp slt i64 %indvars.iv.next65, %89
  br i1 %90, label %.lr.ph47, label %._crit_edge48

._crit_edge48:                                    ; preds = %74, %64
  %fputc18 = tail call i32 @fputc(i32 41, %struct.__sFILE* %fp)
  br label %95

; <label>:91                                      ; preds = %54
  %92 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %60, i32 1
  %93 = load i8** %92, align 8, !tbaa !17
  %94 = getelementptr inbounds i8* %93, i64 1
  %fputs2 = tail call i32 @fputs(i8* %94, %struct.__sFILE* %fp)
  br label %95

; <label>:95                                      ; preds = %91, %._crit_edge48
  %96 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str38, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %fp)
  br label %97

; <label>:97                                      ; preds = %100, %95
  %indvars.iv66 = phi i64 [ 0, %95 ], [ %indvars.iv.next67, %100 ]
  %98 = icmp sgt i64 %indvars.iv66, 0
  br i1 %98, label %99, label %100

; <label>:99                                      ; preds = %97
  %fputc21 = tail call i32 @fputc(i32 124, %struct.__sFILE* %fp)
  br label %100

; <label>:100                                     ; preds = %99, %97
  %101 = getelementptr inbounds [2 x i8*]* @z_ext, i64 0, i64 %indvars.iv66
  %102 = load i8** %101, align 8, !tbaa !14
  %fputs3 = tail call i32 @fputs(i8* %102, %struct.__sFILE* %fp)
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %exitcond68 = icmp eq i64 %indvars.iv.next67, 2
  br i1 %exitcond68, label %103, label %97

; <label>:103                                     ; preds = %100
  %104 = tail call i64 @fwrite(i8* getelementptr inbounds ([46 x i8]* @.str39, i64 0, i64 0), i64 45, i64 1, %struct.__sFILE* %fp)
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  %lftr.wideiv71 = trunc i64 %indvars.iv69 to i32
  %exitcond72 = icmp eq i32 %lftr.wideiv71, %4
  br i1 %exitcond72, label %.loopexit, label %54

; <label>:105                                     ; preds = %150, %.lr.ph58
  %indvars.iv78 = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next79, %150 ]
  %106 = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv78, i32 1
  %107 = load i8** %106, align 8, !tbaa !24
  %108 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str40, i64 0, i64 0), i8* %107) #9
  %109 = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv78, i32 0
  %110 = load i32* %109, align 4, !tbaa !29
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %111, i32 5
  %113 = load i32* %112, align 8, !tbaa !20
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %141, label %115

; <label>:115                                     ; preds = %105
  %fputc = tail call i32 @fputc(i32 40, %struct.__sFILE* %fp)
  %116 = load i32* %109, align 4, !tbaa !29
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %117, i32 5
  %119 = load i32* %118, align 8, !tbaa !20
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %.lr.ph54, label %._crit_edge55

.lr.ph54:                                         ; preds = %115, %124
  %121 = phi i32 [ %135, %124 ], [ %116, %115 ]
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %124 ], [ 0, %115 ]
  %122 = icmp sgt i64 %indvars.iv73, 0
  br i1 %122, label %123, label %124

; <label>:123                                     ; preds = %.lr.ph54
  %fputc15 = tail call i32 @fputc(i32 124, %struct.__sFILE* %fp)
  %.pre = load i32* %109, align 4, !tbaa !29
  br label %124

; <label>:124                                     ; preds = %123, %.lr.ph54
  %125 = phi i32 [ %.pre, %123 ], [ %121, %.lr.ph54 ]
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %126, i32 6
  %128 = load i32** %127, align 8, !tbaa !21
  %129 = getelementptr inbounds i32* %128, i64 %indvars.iv73
  %130 = load i32* %129, align 4, !tbaa !22
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %131, i32 1
  %133 = load i8** %132, align 8, !tbaa !17
  %134 = getelementptr inbounds i8* %133, i64 1
  %fputs1 = tail call i32 @fputs(i8* %134, %struct.__sFILE* %fp)
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  %135 = load i32* %109, align 4, !tbaa !29
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %136, i32 5
  %138 = load i32* %137, align 8, !tbaa !20
  %139 = sext i32 %138 to i64
  %140 = icmp slt i64 %indvars.iv.next74, %139
  br i1 %140, label %.lr.ph54, label %._crit_edge55

._crit_edge55:                                    ; preds = %124, %115
  %fputc9 = tail call i32 @fputc(i32 41, %struct.__sFILE* %fp)
  br label %145

; <label>:141                                     ; preds = %105
  %142 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %111, i32 1
  %143 = load i8** %142, align 8, !tbaa !17
  %144 = getelementptr inbounds i8* %143, i64 1
  %fputs = tail call i32 @fputs(i8* %144, %struct.__sFILE* %fp)
  br label %145

; <label>:145                                     ; preds = %141, %._crit_edge55
  %fputc12 = tail call i32 @fputc(i32 40, %struct.__sFILE* %fp)
  br label %146

; <label>:146                                     ; preds = %146, %145
  %indvars.iv75 = phi i64 [ 0, %145 ], [ %indvars.iv.next76, %146 ]
  %147 = getelementptr inbounds [2 x i8*]* @z_ext, i64 0, i64 %indvars.iv75
  %148 = load i8** %147, align 8, !tbaa !14
  %149 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str42, i64 0, i64 0), i8* %148) #9
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  %exitcond77 = icmp eq i64 %indvars.iv.next76, 2
  br i1 %exitcond77, label %150, label %146

; <label>:150                                     ; preds = %146
  %151 = tail call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str43, i64 0, i64 0), i64 8, i64 1, %struct.__sFILE* %fp)
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  %lftr.wideiv80 = trunc i64 %indvars.iv78 to i32
  %exitcond81 = icmp eq i32 %lftr.wideiv80, %2
  br i1 %exitcond81, label %.loopexit, label %105

.loopexit:                                        ; preds = %150, %103, %52, %.preheader39, %.preheader37, %.preheader, %0
  ret void
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @fn2ftp(i8* readonly %fn) #5 {
  %1 = icmp eq i8* %fn, null
  br i1 %1, label %.loopexit, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i64 @strlen(i8* %fn) #9
  %4 = trunc i64 %3 to i32
  %5 = icmp sgt i32 %4, 3
  br i1 %5, label %6, label %.loopexit

; <label>:6                                       ; preds = %2
  %7 = shl i64 %3, 32
  %sext = add i64 %7, -17179869184
  %8 = ashr exact i64 %sext, 32
  %9 = getelementptr inbounds i8* %fn, i64 %8
  %10 = load i8* %9, align 1, !tbaa !13
  %11 = icmp eq i8 %10, 46
  br i1 %11, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %6, %19
  %indvars.iv = phi i64 [ %indvars.iv.next, %19 ], [ 0, %6 ]
  %i.01 = phi i32 [ %20, %19 ], [ 0, %6 ]
  %12 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %indvars.iv, i32 1
  %13 = load i8** %12, align 8, !tbaa !17
  %14 = icmp eq i8* %13, null
  br i1 %14, label %19, label %15

; <label>:15                                      ; preds = %.preheader
  %16 = tail call i32 @strcasecmp(i8* %9, i8* %13) #9
  %17 = icmp eq i32 %16, 0
  %18 = trunc i64 %indvars.iv to i32
  br i1 %17, label %.loopexit, label %19

; <label>:19                                      ; preds = %.preheader, %15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %20 = add nuw nsw i32 %i.01, 1
  %21 = icmp slt i64 %indvars.iv.next, 46
  br i1 %21, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %19, %15, %2, %6, %0
  %.0 = phi i32 [ 46, %0 ], [ 46, %6 ], [ 46, %2 ], [ %20, %19 ], [ %18, %15 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcasecmp(i8* nocapture, i8* nocapture) #6

; Function Attrs: nounwind optsize ssp uwtable
define void @parse_file_args(i32* nocapture %argc, i8** nocapture %argv, i32 %nf, %struct.t_filenm* nocapture %fnm, i32 %bKeep) #3 {
  %1 = icmp sgt i32 %nf, 0
  br i1 %1, label %.lr.ph.i, label %check_opts.exit._crit_edge

.lr.ph.i:                                         ; preds = %0
  %2 = add i32 %nf, -1
  br label %3

; <label>:3                                       ; preds = %18, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %18 ]
  %4 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv.i, i32 0
  %5 = load i32* %4, align 4, !tbaa !29
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv.i, i32 1
  %8 = load i8** %7, align 8, !tbaa !24
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %18

; <label>:10                                      ; preds = %3
  %11 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %6, i32 3
  %12 = load i8** %11, align 8, !tbaa !23
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %10
  %15 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %6, i32 1
  %16 = load i8** %15, align 8, !tbaa !17
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([45 x i8]* @.str171, i64 0, i64 0), i8* %16, i32 %5) #9
  br label %18

; <label>:17                                      ; preds = %10
  store i8* %12, i8** %7, align 8, !tbaa !24
  br label %18

; <label>:18                                      ; preds = %17, %14, %3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %lftr.wideiv28 = trunc i64 %indvars.iv.i to i32
  %exitcond29 = icmp eq i32 %lftr.wideiv28, %2
  br i1 %exitcond29, label %check_opts.exit.preheader, label %3

check_opts.exit.preheader:                        ; preds = %18
  br i1 %1, label %.lr.ph18, label %check_opts.exit._crit_edge

.lr.ph18:                                         ; preds = %check_opts.exit.preheader
  %19 = add i32 %nf, -1
  br label %check_opts.exit

check_opts.exit:                                  ; preds = %check_opts.exit, %.lr.ph18
  %indvars.iv24 = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next25, %check_opts.exit ]
  %20 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv24, i32 3
  %21 = load i64* %20, align 8, !tbaa !28
  %22 = and i64 %21, -2
  store i64 %22, i64* %20, align 8, !tbaa !28
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %lftr.wideiv26 = trunc i64 %indvars.iv24 to i32
  %exitcond27 = icmp eq i32 %lftr.wideiv26, %19
  br i1 %exitcond27, label %check_opts.exit._crit_edge, label %check_opts.exit

check_opts.exit._crit_edge:                       ; preds = %check_opts.exit, %0, %check_opts.exit.preheader
  %23 = load i32* %argc, align 4, !tbaa !22
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %88

; <label>:25                                      ; preds = %check_opts.exit._crit_edge
  %26 = add nsw i32 %23, 1
  %27 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str12, i64 0, i64 0), i32 520, i32 %26, i32 4) #9
  %28 = bitcast i8* %27 to i32*
  %29 = sext i32 %nf to i64
  br label %30

; <label>:30                                      ; preds = %.loopexit, %25
  %i.1 = phi i32 [ 1, %25 ], [ %.i.2, %.loopexit ]
  br i1 %1, label %.lr.ph14, label %.loopexit

.lr.ph14:                                         ; preds = %30
  %31 = sext i32 %i.1 to i64
  %32 = getelementptr inbounds i8** %argv, i64 %31
  %33 = load i8** %32, align 8, !tbaa !14
  br label %34

; <label>:34                                      ; preds = %.lr.ph14, %61
  %indvars.iv22 = phi i64 [ 0, %.lr.ph14 ], [ %indvars.iv.next23, %61 ]
  %35 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv22, i32 1
  %36 = load i8** %35, align 8, !tbaa !24
  %37 = tail call i32 @strcmp(i8* %33, i8* %36) #9
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %61

; <label>:39                                      ; preds = %34
  %40 = trunc i64 %indvars.iv22 to i32
  %41 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv22
  %42 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv22, i32 3
  %43 = load i64* %42, align 8, !tbaa !28
  %44 = or i64 %43, 1
  store i64 %44, i64* %42, align 8, !tbaa !28
  %45 = getelementptr inbounds i32* %28, i64 %31
  store i32 1, i32* %45, align 4, !tbaa !22
  %46 = add nsw i32 %i.1, 1
  %47 = load i32* %argc, align 4, !tbaa !22
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %58

; <label>:49                                      ; preds = %39
  %50 = sext i32 %46 to i64
  %51 = getelementptr inbounds i8** %argv, i64 %50
  %52 = load i8** %51, align 8, !tbaa !14
  %53 = load i8* %52, align 1, !tbaa !13
  %54 = icmp eq i8 %53, 45
  br i1 %54, label %58, label %55

; <label>:55                                      ; preds = %49
  tail call fastcc void @set_filenm(%struct.t_filenm* %41, i8* %52, i32 1) #10
  %56 = getelementptr inbounds i32* %28, i64 %50
  store i32 1, i32* %56, align 4, !tbaa !22
  %57 = add nsw i32 %i.1, 2
  br label %.loopexit

; <label>:58                                      ; preds = %49, %39
  %59 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv22, i32 2
  %60 = load i8** %59, align 8, !tbaa !27
  tail call fastcc void @set_filenm(%struct.t_filenm* %41, i8* %60, i32 0) #10
  br label %.loopexit

; <label>:61                                      ; preds = %34
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %62 = icmp slt i64 %indvars.iv.next23, %29
  br i1 %62, label %34, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %61
  %63 = trunc i64 %indvars.iv.next23 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %30, %..loopexit_crit_edge, %55, %58
  %j.07 = phi i32 [ %40, %55 ], [ %40, %58 ], [ %63, %..loopexit_crit_edge ], [ 0, %30 ]
  %i.2 = phi i32 [ %57, %55 ], [ %46, %58 ], [ %i.1, %..loopexit_crit_edge ], [ %i.1, %30 ]
  %64 = icmp eq i32 %j.07, %nf
  %65 = zext i1 %64 to i32
  %.i.2 = add nsw i32 %i.2, %65
  %66 = load i32* %argc, align 4, !tbaa !22
  %67 = icmp slt i32 %.i.2, %66
  br i1 %67, label %30, label %68

; <label>:68                                      ; preds = %.loopexit
  %69 = icmp eq i32 %bKeep, 0
  br i1 %69, label %.preheader, label %87

.preheader:                                       ; preds = %68
  %70 = icmp slt i32 %66, 0
  br i1 %70, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %71 = sext i32 %66 to i64
  br label %72

; <label>:72                                      ; preds = %84, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %84 ], [ 0, %.lr.ph ]
  %j.110 = phi i32 [ %j.2, %84 ], [ 0, %.lr.ph ]
  %73 = getelementptr inbounds i32* %28, i64 %indvars.iv
  %74 = load i32* %73, align 4, !tbaa !22
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %84

; <label>:76                                      ; preds = %72
  %77 = getelementptr inbounds i8** %argv, i64 %indvars.iv
  %78 = bitcast i8** %77 to i64*
  %79 = load i64* %78, align 8, !tbaa !14
  %80 = add nsw i32 %j.110, 1
  %81 = sext i32 %j.110 to i64
  %82 = getelementptr inbounds i8** %argv, i64 %81
  %83 = bitcast i8** %82 to i64*
  store i64 %79, i64* %83, align 8, !tbaa !14
  br label %84

; <label>:84                                      ; preds = %72, %76
  %j.2 = phi i32 [ %j.110, %72 ], [ %80, %76 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %85 = icmp slt i64 %indvars.iv, %71
  br i1 %85, label %72, label %._crit_edge

._crit_edge:                                      ; preds = %84, %.preheader
  %j.1.lcssa = phi i32 [ 0, %.preheader ], [ %j.2, %84 ]
  %86 = add nsw i32 %j.1.lcssa, -1
  store i32 %86, i32* %argc, align 4, !tbaa !22
  br label %87

; <label>:87                                      ; preds = %68, %._crit_edge
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str12, i64 0, i64 0), i32 552, i8* %27) #9
  br label %88

; <label>:88                                      ; preds = %87, %check_opts.exit._crit_edge
  br i1 %1, label %.lr.ph.i1, label %set_filenms.exit

.lr.ph.i1:                                        ; preds = %88
  %89 = add i32 %nf, -1
  br label %90

; <label>:90                                      ; preds = %99, %.lr.ph.i1
  %indvars.iv.i2 = phi i64 [ 0, %.lr.ph.i1 ], [ %indvars.iv.next.i3, %99 ]
  %91 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv.i2, i32 3
  %92 = load i64* %91, align 8, !tbaa !28
  %93 = and i64 %92, 1
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %99

; <label>:95                                      ; preds = %90
  %96 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv.i2
  %97 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv.i2, i32 2
  %98 = load i8** %97, align 8, !tbaa !27
  tail call fastcc void @set_filenm(%struct.t_filenm* %96, i8* %98, i32 0) #9
  br label %99

; <label>:99                                      ; preds = %95, %90
  %indvars.iv.next.i3 = add nuw nsw i64 %indvars.iv.i2, 1
  %lftr.wideiv = trunc i64 %indvars.iv.i2 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %89
  br i1 %exitcond, label %set_filenms.exit, label %90

set_filenms.exit:                                 ; preds = %99, %88
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #6

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @set_filenm(%struct.t_filenm* nocapture %fnm, i8* %name, i32 %bCanNotOverride) #3 {
  %buf.i = alloca [256 x i8], align 16
  %buf2.i = alloca [256 x i8], align 16
  %buf = alloca [256 x i8], align 16
  %1 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %1) #8
  %2 = getelementptr inbounds %struct.t_filenm* %fnm, i64 0, i32 0
  %3 = load i32* %2, align 4, !tbaa !29
  %4 = icmp ugt i32 %3, 45
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str172, i64 0, i64 0), i32 %3) #9
  br label %6

; <label>:6                                       ; preds = %0, %5
  %7 = getelementptr inbounds %struct.t_filenm* %fnm, i64 0, i32 3
  %8 = load i64* %7, align 8, !tbaa !28
  %9 = and i64 %8, 2
  %10 = icmp ne i64 %9, 0
  %11 = icmp ne i8* %name, null
  %or.cond = and i1 %11, %10
  br i1 %or.cond, label %12, label %.loopexit

; <label>:12                                      ; preds = %6
  %13 = tail call i32 @fexist(i8* %name) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %.loopexit, label %15

; <label>:15                                      ; preds = %12
  %16 = tail call i64 @strlen(i8* %name) #9
  %17 = trunc i64 %16 to i32
  %sext = shl i64 %16, 32
  %18 = ashr exact i64 %sext, 32
  br label %19

; <label>:19                                      ; preds = %15, %34
  %indvars.iv = phi i64 [ 0, %15 ], [ %indvars.iv.next, %34 ]
  %20 = getelementptr inbounds [2 x i8*]* @z_ext, i64 0, i64 %indvars.iv
  %21 = load i8** %20, align 8, !tbaa !14
  %22 = tail call i64 @strlen(i8* %21) #9
  %23 = trunc i64 %22 to i32
  %24 = icmp sgt i32 %17, %23
  br i1 %24, label %25, label %34

; <label>:25                                      ; preds = %19
  %sext4 = shl i64 %22, 32
  %26 = ashr exact i64 %sext4, 32
  %.sum = sub nsw i64 %18, %26
  %27 = getelementptr inbounds i8* %name, i64 %.sum
  %28 = tail call i32 @strcasecmp(i8* %27, i8* %21) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

; <label>:30                                      ; preds = %25
  %31 = sub i64 %16, %22
  %sext5 = shl i64 %31, 32
  %32 = ashr exact i64 %sext5, 32
  %33 = getelementptr inbounds i8* %name, i64 %32
  store i8 0, i8* %33, align 1, !tbaa !13
  br label %.loopexit

; <label>:34                                      ; preds = %19, %25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %35 = icmp slt i64 %indvars.iv.next, 2
  br i1 %35, label %19, label %.loopexit

.loopexit:                                        ; preds = %34, %12, %30, %6
  %36 = load i32* %2, align 4, !tbaa !29
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %37, i32 5
  %39 = load i32* %38, align 8, !tbaa !20
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %84, label %41

; <label>:41                                      ; preds = %.loopexit
  %42 = getelementptr inbounds [256 x i8]* %buf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %42) #8
  %43 = getelementptr inbounds [256 x i8]* %buf2.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %43) #8
  %44 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %37, i32 6
  %45 = load i32** %44, align 8, !tbaa !21
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

; <label>:47                                      ; preds = %41
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str173, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str12, i64 0, i64 0), i32 427) #9
  br label %48

; <label>:48                                      ; preds = %47, %41
  %49 = icmp eq i8* %name, null
  br i1 %49, label %.critedge.thread.i, label %50

; <label>:50                                      ; preds = %48
  %51 = icmp ne i32 %bCanNotOverride, 0
  %52 = load i8** @default_file_name, align 8
  %53 = icmp eq i8* %52, null
  %or.cond3.i = or i1 %51, %53
  br i1 %or.cond3.i, label %54, label %.critedge.thread.i

; <label>:54                                      ; preds = %50
  %55 = call i8* @__strcpy_chk(i8* %42, i8* %name, i64 256) #9
  %56 = call i32 @fn2ftp(i8* %name) #9
  %57 = icmp sgt i32 %39, 0
  br i1 %57, label %.lr.ph13.i, label %.critedge4.thread.i

.lr.ph13.i:                                       ; preds = %54
  %58 = sext i32 %39 to i64
  br label %59

; <label>:59                                      ; preds = %59, %.lr.ph13.i
  %indvars.iv15.i = phi i64 [ 0, %.lr.ph13.i ], [ %indvars.iv.next16.i, %59 ]
  %60 = getelementptr inbounds i32* %45, i64 %indvars.iv15.i
  %61 = load i32* %60, align 4, !tbaa !22
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %62 = icmp slt i64 %indvars.iv.next16.i, %58
  %63 = icmp ne i32 %56, %61
  %or.cond5.i = and i1 %62, %63
  br i1 %or.cond5.i, label %59, label %.critedge.i

.critedge.thread.i:                               ; preds = %50, %48
  %64 = load i32* %2, align 4, !tbaa !29
  %65 = tail call i8* @ftp2defnm(i32 %64) #9
  %66 = call i8* @__strcpy_chk(i8* %42, i8* %65, i64 256) #9
  br label %.critedge.thread17.i

.critedge.i:                                      ; preds = %59
  br i1 %63, label %.critedge.thread17.i, label %set_grpfnm.exit

.critedge.thread17.i:                             ; preds = %.critedge.i, %.critedge.thread.i
  %67 = load i64* %7, align 8, !tbaa !28
  %68 = and i64 %67, 2
  %69 = icmp ne i64 %68, 0
  %70 = icmp sgt i32 %39, 0
  %or.cond22.i = and i1 %70, %69
  br i1 %or.cond22.i, label %.lr.ph.i, label %.critedge4.thread.i

.lr.ph.i:                                         ; preds = %.critedge.thread17.i
  %71 = sext i32 %39 to i64
  br label %72

; <label>:72                                      ; preds = %78, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %78 ]
  %73 = getelementptr inbounds i32* %45, i64 %indvars.iv.i
  %74 = load i32* %73, align 4, !tbaa !22
  %75 = call i8* @__strcpy_chk(i8* %43, i8* %42, i64 256) #9
  call fastcc void @set_extension(i8* %43, i32 %74) #9
  %76 = call i32 @fexist(i8* %43) #9
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %.critedge4.i

; <label>:78                                      ; preds = %72
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %79 = icmp slt i64 %indvars.iv.next.i, %71
  br i1 %79, label %72, label %.critedge4.thread.i

.critedge4.i:                                     ; preds = %72
  %80 = call i8* @__strcpy_chk(i8* %42, i8* %43, i64 256) #9
  br label %set_grpfnm.exit

.critedge4.thread.i:                              ; preds = %78, %54, %.critedge.thread17.i
  %81 = load i32* %45, align 4, !tbaa !22
  call fastcc void @set_extension(i8* %42, i32 %81) #9
  br label %set_grpfnm.exit

set_grpfnm.exit:                                  ; preds = %.critedge.i, %.critedge4.i, %.critedge4.thread.i
  %82 = call i8* @strdup(i8* %42) #9
  %83 = getelementptr inbounds %struct.t_filenm* %fnm, i64 0, i32 2
  store i8* %82, i8** %83, align 8, !tbaa !27
  call void @llvm.lifetime.end(i64 256, i8* %43) #8
  call void @llvm.lifetime.end(i64 256, i8* %42) #8
  br label %99

; <label>:84                                      ; preds = %.loopexit
  br i1 %11, label %85, label %91

; <label>:85                                      ; preds = %84
  %86 = icmp ne i32 %bCanNotOverride, 0
  %87 = load i8** @default_file_name, align 8
  %88 = icmp eq i8* %87, null
  %or.cond3 = or i1 %86, %88
  br i1 %or.cond3, label %89, label %91

; <label>:89                                      ; preds = %85
  %90 = call i8* @__strcpy_chk(i8* %1, i8* %name, i64 256) #9
  br label %95

; <label>:91                                      ; preds = %85, %84
  %92 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %37, i32 2
  %93 = load i8** %92, align 8, !tbaa !15
  %94 = call i8* @__strcpy_chk(i8* %1, i8* %93, i64 256) #9
  br label %95

; <label>:95                                      ; preds = %91, %89
  %96 = load i32* %2, align 4, !tbaa !29
  call fastcc void @set_extension(i8* %1, i32 %96) #10
  %97 = call i8* @strdup(i8* %1) #9
  %98 = getelementptr inbounds %struct.t_filenm* %fnm, i64 0, i32 2
  store i8* %97, i8** %98, align 8, !tbaa !27
  br label %99

; <label>:99                                      ; preds = %95, %set_grpfnm.exit
  call void @llvm.lifetime.end(i64 256, i8* %1) #8
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @opt2fn(i8* %opt, i32 %nfile, %struct.t_filenm* nocapture readonly %fnm) #3 {
  %1 = icmp sgt i32 %nfile, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = sext i32 %nfile to i64
  br label %5

; <label>:3                                       ; preds = %5
  %4 = icmp slt i64 %indvars.iv.next, %2
  br i1 %4, label %5, label %._crit_edge

; <label>:5                                       ; preds = %.lr.ph, %3
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %6 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 1
  %7 = load i8** %6, align 8, !tbaa !24
  %8 = tail call i32 @strcmp(i8* %opt, i8* %7) #9
  %9 = icmp eq i32 %8, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %9, label %10, label %3

; <label>:10                                      ; preds = %5
  %11 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 2
  %12 = load i8** %11, align 8, !tbaa !27
  br label %15

._crit_edge:                                      ; preds = %3, %0
  %13 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %13, i8* getelementptr inbounds ([14 x i8]* @.str45, i64 0, i64 0), i8* %opt) #9
  br label %15

; <label>:15                                      ; preds = %._crit_edge, %10
  %.0 = phi i8* [ %12, %10 ], [ null, %._crit_edge ]
  ret i8* %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @ftp2fn(i32 %ftp, i32 %nfile, %struct.t_filenm* nocapture readonly %fnm) #3 {
  %1 = icmp sgt i32 %nfile, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = sext i32 %nfile to i64
  br label %5

; <label>:3                                       ; preds = %5
  %4 = icmp slt i64 %indvars.iv.next, %2
  br i1 %4, label %5, label %._crit_edge

; <label>:5                                       ; preds = %.lr.ph, %3
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %6 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 0
  %7 = load i32* %6, align 4, !tbaa !29
  %8 = icmp eq i32 %7, %ftp
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %8, label %9, label %3

; <label>:9                                       ; preds = %5
  %10 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 2
  %11 = load i8** %10, align 8, !tbaa !27
  br label %17

._crit_edge:                                      ; preds = %3, %0
  %12 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %13 = sext i32 %ftp to i64
  %14 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %13, i32 1
  %15 = load i8** %14, align 8, !tbaa !17
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([24 x i8]* @.str46, i64 0, i64 0), i8* %15) #9
  br label %17

; <label>:17                                      ; preds = %._crit_edge, %9
  %.0 = phi i8* [ %11, %9 ], [ null, %._crit_edge ]
  ret i8* %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ftp2bSet(i32 %ftp, i32 %nfile, %struct.t_filenm* nocapture readonly %fnm) #3 {
  %1 = icmp sgt i32 %nfile, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = sext i32 %nfile to i64
  br label %5

; <label>:3                                       ; preds = %5
  %4 = icmp slt i64 %indvars.iv.next, %2
  br i1 %4, label %5, label %._crit_edge

; <label>:5                                       ; preds = %.lr.ph, %3
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %6 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 0
  %7 = load i32* %6, align 4, !tbaa !29
  %8 = icmp eq i32 %7, %ftp
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %8, label %9, label %3

; <label>:9                                       ; preds = %5
  %10 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 3
  %11 = load i64* %10, align 8, !tbaa !28
  %.tr = trunc i64 %11 to i32
  %12 = and i32 %.tr, 1
  br label %18

._crit_edge:                                      ; preds = %3, %0
  %13 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %14 = sext i32 %ftp to i64
  %15 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %14, i32 1
  %16 = load i8** %15, align 8, !tbaa !17
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %13, i8* getelementptr inbounds ([26 x i8]* @.str47, i64 0, i64 0), i8* %16) #9
  br label %18

; <label>:18                                      ; preds = %._crit_edge, %9
  %.0 = phi i32 [ %12, %9 ], [ 0, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @opt2bSet(i8* %opt, i32 %nfile, %struct.t_filenm* nocapture readonly %fnm) #3 {
  %1 = icmp sgt i32 %nfile, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = sext i32 %nfile to i64
  br label %5

; <label>:3                                       ; preds = %5
  %4 = icmp slt i64 %indvars.iv.next, %2
  br i1 %4, label %5, label %._crit_edge

; <label>:5                                       ; preds = %.lr.ph, %3
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %6 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 1
  %7 = load i8** %6, align 8, !tbaa !24
  %8 = tail call i32 @strcmp(i8* %opt, i8* %7) #9
  %9 = icmp eq i32 %8, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %9, label %10, label %3

; <label>:10                                      ; preds = %5
  %11 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 3
  %12 = load i64* %11, align 8, !tbaa !28
  %.tr = trunc i64 %12 to i32
  %13 = and i32 %.tr, 1
  br label %16

._crit_edge:                                      ; preds = %3, %0
  %14 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([14 x i8]* @.str45, i64 0, i64 0), i8* %opt) #9
  br label %16

; <label>:16                                      ; preds = %._crit_edge, %10
  %.0 = phi i32 [ %13, %10 ], [ 0, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @opt2fn_null(i8* %opt, i32 %nfile, %struct.t_filenm* nocapture readonly %fnm) #3 {
  %1 = icmp sgt i32 %nfile, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = sext i32 %nfile to i64
  br label %5

; <label>:3                                       ; preds = %5
  %4 = icmp slt i64 %indvars.iv.next, %2
  br i1 %4, label %5, label %._crit_edge

; <label>:5                                       ; preds = %.lr.ph, %3
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %6 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 1
  %7 = load i8** %6, align 8, !tbaa !24
  %8 = tail call i32 @strcmp(i8* %opt, i8* %7) #9
  %9 = icmp eq i32 %8, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %9, label %10, label %3

; <label>:10                                      ; preds = %5
  %11 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 3
  %12 = load i64* %11, align 8, !tbaa !28
  %13 = and i64 %12, 9
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %20, label %15

; <label>:15                                      ; preds = %10
  %16 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 2
  %17 = load i8** %16, align 8, !tbaa !27
  br label %20

._crit_edge:                                      ; preds = %3, %0
  %18 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %19 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %18, i8* getelementptr inbounds ([14 x i8]* @.str45, i64 0, i64 0), i8* %opt) #9
  br label %20

; <label>:20                                      ; preds = %10, %._crit_edge, %15
  %.0 = phi i8* [ %17, %15 ], [ null, %._crit_edge ], [ null, %10 ]
  ret i8* %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @ftp2fn_null(i32 %ftp, i32 %nfile, %struct.t_filenm* nocapture readonly %fnm) #3 {
  %1 = icmp sgt i32 %nfile, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = sext i32 %nfile to i64
  br label %5

; <label>:3                                       ; preds = %5
  %4 = icmp slt i64 %indvars.iv.next, %2
  br i1 %4, label %5, label %._crit_edge

; <label>:5                                       ; preds = %.lr.ph, %3
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %6 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 0
  %7 = load i32* %6, align 4, !tbaa !29
  %8 = icmp eq i32 %7, %ftp
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %8, label %9, label %3

; <label>:9                                       ; preds = %5
  %10 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 3
  %11 = load i64* %10, align 8, !tbaa !28
  %12 = and i64 %11, 9
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %22, label %14

; <label>:14                                      ; preds = %9
  %15 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 2
  %16 = load i8** %15, align 8, !tbaa !27
  br label %22

._crit_edge:                                      ; preds = %3, %0
  %17 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %18 = sext i32 %ftp to i64
  %19 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %18, i32 1
  %20 = load i8** %19, align 8, !tbaa !17
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %17, i8* getelementptr inbounds ([24 x i8]* @.str46, i64 0, i64 0), i8* %20) #9
  br label %22

; <label>:22                                      ; preds = %9, %._crit_edge, %14
  %.0 = phi i8* [ %16, %14 ], [ null, %._crit_edge ], [ null, %9 ]
  ret i8* %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @ftp2filter(i32 %ftp) #3 {
  %n = alloca i32, align 4
  store i8 0, i8* getelementptr inbounds ([128 x i8]* @ftp2filter.filter, i64 0, i64 0), align 16, !tbaa !13
  store i32 0, i32* %n, align 4, !tbaa !22
  switch i32 %ftp, label %7 [
    i32 8, label %1
    i32 2, label %2
    i32 3, label %3
    i32 12, label %4
    i32 11, label %5
    i32 24, label %6
  ]

; <label>:1                                       ; preds = %0
  call fastcc void @add_filters(i32* %n, i32 2, i32* getelementptr inbounds ([2 x i32]* @enxs, i64 0, i64 0)) #10
  br label %15

; <label>:2                                       ; preds = %0
  call fastcc void @add_filters(i32* %n, i32 7, i32* getelementptr inbounds ([7 x i32]* @trxs, i64 0, i64 0)) #10
  br label %15

; <label>:3                                       ; preds = %0
  call fastcc void @add_filters(i32* %n, i32 2, i32* getelementptr inbounds ([2 x i32]* @trns, i64 0, i64 0)) #10
  br label %15

; <label>:4                                       ; preds = %0
  call fastcc void @add_filters(i32* %n, i32 5, i32* getelementptr inbounds ([5 x i32]* @stos, i64 0, i64 0)) #10
  br label %15

; <label>:5                                       ; preds = %0
  call fastcc void @add_filters(i32* %n, i32 8, i32* getelementptr inbounds ([8 x i32]* @stxs, i64 0, i64 0)) #10
  br label %15

; <label>:6                                       ; preds = %0
  call fastcc void @add_filters(i32* %n, i32 3, i32* getelementptr inbounds ([3 x i32]* @tpxs, i64 0, i64 0)) #10
  br label %15

; <label>:7                                       ; preds = %0
  %8 = icmp ult i32 %ftp, 46
  br i1 %8, label %9, label %ftp2ext.exit

; <label>:9                                       ; preds = %7
  %10 = sext i32 %ftp to i64
  %11 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %10, i32 1
  %12 = load i8** %11, align 8, !tbaa !17
  %13 = getelementptr inbounds i8* %12, i64 1
  br label %ftp2ext.exit

ftp2ext.exit:                                     ; preds = %7, %9
  %.0.i = phi i8* [ %13, %9 ], [ getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), %7 ]
  %14 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([128 x i8]* @ftp2filter.filter, i64 0, i64 0), i32 0, i64 128, i8* getelementptr inbounds ([4 x i8]* @.str48, i64 0, i64 0), i8* %.0.i) #9
  br label %15

; <label>:15                                      ; preds = %ftp2ext.exit, %6, %5, %4, %3, %2, %1
  ret i8* getelementptr inbounds ([128 x i8]* @ftp2filter.filter, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @add_filters(i32* nocapture %n, i32 %nf, i32* nocapture readonly %ftp) #3 {
  %buf = alloca [8 x i8], align 1
  %1 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([128 x i8]* @ftp2filter.filter, i64 0, i64 0), i32 0, i64 128, i8* getelementptr inbounds ([4 x i8]* @.str174, i64 0, i64 0)) #9
  %2 = icmp sgt i32 %nf, 0
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %3 = getelementptr inbounds [8 x i8]* %buf, i64 0, i64 0
  %4 = add i32 %nf, -1
  br label %5

; <label>:5                                       ; preds = %19, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %19 ]
  %6 = getelementptr inbounds i32* %ftp, i64 %indvars.iv
  %7 = load i32* %6, align 4, !tbaa !22
  %8 = icmp ult i32 %7, 46
  br i1 %8, label %9, label %ftp2ext.exit

; <label>:9                                       ; preds = %5
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %10, i32 1
  %12 = load i8** %11, align 8, !tbaa !17
  %13 = getelementptr inbounds i8* %12, i64 1
  br label %ftp2ext.exit

ftp2ext.exit:                                     ; preds = %5, %9
  %.0.i = phi i8* [ %13, %9 ], [ getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), %5 ]
  %14 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %3, i32 0, i64 8, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i8* %.0.i) #9
  %15 = load i32* %n, align 4, !tbaa !22
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %19

; <label>:17                                      ; preds = %ftp2ext.exit
  %18 = call i8* @__strcat_chk(i8* getelementptr inbounds ([128 x i8]* @ftp2filter.filter, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str30, i64 0, i64 0), i64 128) #9
  br label %19

; <label>:19                                      ; preds = %17, %ftp2ext.exit
  %20 = call i8* @__strcat_chk(i8* getelementptr inbounds ([128 x i8]* @ftp2filter.filter, i64 0, i64 0), i8* %3, i64 128) #9
  %21 = load i32* %n, align 4, !tbaa !22
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %n, align 4, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %4
  br i1 %exitcond, label %._crit_edge, label %5

._crit_edge:                                      ; preds = %19, %0
  %23 = call i8* @__strcat_chk(i8* getelementptr inbounds ([128 x i8]* @ftp2filter.filter, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str31, i64 0, i64 0), i64 128) #9
  ret void
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @is_optional(%struct.t_filenm* nocapture readonly %fnm) #5 {
  %1 = getelementptr inbounds %struct.t_filenm* %fnm, i64 0, i32 3
  %2 = load i64* %1, align 8, !tbaa !28
  %3 = lshr i64 %2, 3
  %.tr = trunc i64 %3 to i32
  %4 = and i32 %.tr, 1
  ret i32 %4
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @is_output(%struct.t_filenm* nocapture readonly %fnm) #5 {
  %1 = getelementptr inbounds %struct.t_filenm* %fnm, i64 0, i32 3
  %2 = load i64* %1, align 8, !tbaa !28
  %3 = lshr i64 %2, 2
  %.tr = trunc i64 %3 to i32
  %4 = and i32 %.tr, 1
  ret i32 %4
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @is_set(%struct.t_filenm* nocapture readonly %fnm) #5 {
  %1 = getelementptr inbounds %struct.t_filenm* %fnm, i64 0, i32 3
  %2 = load i64* %1, align 8, !tbaa !28
  %.tr = trunc i64 %2 to i32
  %3 = and i32 %.tr, 1
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @fexist(i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @set_extension(i8* %buf, i32 %ftp) #3 {
  %1 = sext i32 %ftp to i64
  %2 = tail call i64 @strlen(i8* %buf) #9
  %3 = trunc i64 %2 to i32
  %4 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %1, i32 1
  %5 = load i8** %4, align 8, !tbaa !17
  %6 = tail call i64 @strlen(i8* %5) #9
  %7 = trunc i64 %6 to i32
  %8 = icmp sgt i32 %3, %7
  br i1 %8, label %9, label %15

; <label>:9                                       ; preds = %0
  %10 = sub i64 %2, %6
  %sext = shl i64 %10, 32
  %11 = ashr exact i64 %sext, 32
  %12 = getelementptr inbounds i8* %buf, i64 %11
  %13 = tail call i32 @strcasecmp(i8* %12, i8* %5) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

; <label>:15                                      ; preds = %9, %0
  %16 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %buf, i1 false)
  %17 = tail call i8* @__strcat_chk(i8* %buf, i8* %5, i64 %16) #9
  br label %18

; <label>:18                                      ; preds = %9, %15
  ret void
}

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #8

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #8

; Function Attrs: nounwind
declare i32 @fputs(i8* nocapture readonly, %struct.__sFILE* nocapture) #8

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #8

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }

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
!15 = !{!16, !4, i64 16}
!16 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !7, i64 40, !4, i64 48}
!17 = !{!16, !4, i64 8}
!18 = !{!16, !4, i64 32}
!19 = !{!16, !7, i64 0}
!20 = !{!16, !7, i64 40}
!21 = !{!16, !4, i64 48}
!22 = !{!7, !7, i64 0}
!23 = !{!16, !4, i64 24}
!24 = !{!25, !4, i64 8}
!25 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16, !26, i64 24}
!26 = !{!"long", !5, i64 0}
!27 = !{!25, !4, i64 16}
!28 = !{!25, !26, i64 24}
!29 = !{!25, !7, i64 0}

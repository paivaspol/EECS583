; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_deffile = type { i32, i8*, i8*, i8*, i8*, i32, i32* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_filenm = type { i32, i8*, i8*, i64 }

@.str = private unnamed_addr constant [4 x i8] c".gz\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c".Z\00", align 1
@z_ext = global [2 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0)], align 16
@default_file_name = internal unnamed_addr global i8* null, align 8
@deffile = internal unnamed_addr global [46 x %struct.t_deffile] [%struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str53, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str54, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str55, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8]* @.str56, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str57, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str58, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str55, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str59, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 3, i8* getelementptr inbounds ([5 x i8]* @.str60, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str61, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str55, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8]* @.str62, i32 0, i32 0), i32 7, i32* getelementptr inbounds ([7 x i32]* @trxs, i32 0, i32 0) }, %struct.t_deffile { i32 3, i8* getelementptr inbounds ([5 x i8]* @.str60, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str61, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([35 x i8]* @.str63, i32 0, i32 0), i32 2, i32* getelementptr inbounds ([2 x i32]* @trns, i32 0, i32 0) }, %struct.t_deffile { i32 2, i8* getelementptr inbounds ([5 x i8]* @.str64, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str61, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([34 x i8]* @.str65, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 1, i8* getelementptr inbounds ([5 x i8]* @.str66, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str61, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([40 x i8]* @.str67, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 2, i8* getelementptr inbounds ([5 x i8]* @.str68, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str61, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([44 x i8]* @.str69, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str70, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str71, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([34 x i8]* @.str72, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 3, i8* getelementptr inbounds ([5 x i8]* @.str60, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str73, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([24 x i8]* @.str74, i32 0, i32 0), i32 2, i32* getelementptr inbounds ([2 x i32]* @enxs, i32 0, i32 0) }, %struct.t_deffile { i32 2, i8* getelementptr inbounds ([5 x i8]* @.str75, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str73, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([35 x i8]* @.str76, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 1, i8* getelementptr inbounds ([5 x i8]* @.str77, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str73, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8]* @.str78, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 3, i8* getelementptr inbounds ([5 x i8]* @.str60, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str79, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str80, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8]* @.str81, i32 0, i32 0), i32 8, i32* getelementptr inbounds ([8 x i32]* @stxs, i32 0, i32 0) }, %struct.t_deffile { i32 3, i8* getelementptr inbounds ([5 x i8]* @.str60, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str82, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str83, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8]* @.str84, i32 0, i32 0), i32 5, i32* getelementptr inbounds ([5 x i32]* @stos, i32 0, i32 0) }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str85, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str79, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str80, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8]* @.str86, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str87, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str79, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str80, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8]* @.str88, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str89, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str90, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str55, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str91, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str92, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str90, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str55, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8]* @.str93, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str94, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str90, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str55, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8]* @.str95, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str96, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str97, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str98, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str99, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str100, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str101, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str83, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str102, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str103, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str104, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str83, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str105, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str106, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str107, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str108, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str109, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str110, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str111, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str112, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str113, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str114, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([26 x i8]* @.str116, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 3, i8* getelementptr inbounds ([5 x i8]* @.str60, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str111, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str117, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8]* @.str118, i32 0, i32 0), i32 3, i32* getelementptr inbounds ([3 x i32]* @tpxs, i32 0, i32 0) }, %struct.t_deffile { i32 3, i8* getelementptr inbounds ([5 x i8]* @.str60, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str111, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str117, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8]* @.str119, i32 0, i32 0), i32 8, i32* getelementptr inbounds ([8 x i32]* @tpss, i32 0, i32 0) }, %struct.t_deffile { i32 2, i8* getelementptr inbounds ([5 x i8]* @.str120, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str111, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str117, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str121, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str122, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str111, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str117, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8]* @.str123, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 1, i8* getelementptr inbounds ([5 x i8]* @.str124, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str111, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str117, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @.str125, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str126, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str127, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str83, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str128, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str129, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str130, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([34 x i8]* @.str131, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str132, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str133, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([30 x i8]* @.str134, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str135, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str136, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([19 x i8]* @.str137, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str138, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str139, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8]* @.str140, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str141, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str142, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([25 x i8]* @.str143, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str144, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str145, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([37 x i8]* @.str146, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str147, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str148, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([34 x i8]* @.str149, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str150, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str145, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8]* @.str151, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str152, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str153, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8]* @.str154, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 1, i8* getelementptr inbounds ([5 x i8]* @.str155, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str156, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str157, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str158, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str159, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str160, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8]* @.str161, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str162, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str160, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([19 x i8]* @.str163, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str164, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str165, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8]* @.str166, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str167, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str165, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8]* @.str168, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str169, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str170, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([37 x i8]* @.str171, i32 0, i32 0), i32 0, i32* null }, %struct.t_deffile { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str172, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str173, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([32 x i8]* @.str174, i32 0, i32 0), i32 0, i32* null }], align 16
@.str2 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str3 = private unnamed_addr constant [17 x i8] c"unknown filetype\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"Binary\00", align 1
@.str6 = private unnamed_addr constant [13 x i8] c"XDR portable\00", align 1
@.str7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str8 = private unnamed_addr constant [49 x i8] c"DEATH HORROR: Unknown filetype in ftp2ftype (%d)\00", align 1
@ftp2defnm.buf = internal global [256 x i8] zeroinitializer, align 16
@.str10 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"flst\00", align 1
@.str12 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c\00", align 1
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
@stderr = external global %struct._IO_FILE*
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
@.str50 = private unnamed_addr constant [28 x i8] c"file type out of range (%d)\00", align 1
@.str51 = private unnamed_addr constant [28 x i8] c"DEATH HORROR ERROR in %s:%d\00", align 1
@.str52 = private unnamed_addr constant [45 x i8] c"No default cmd-line option for %s (type %d)\0A\00", align 1
@.str53 = private unnamed_addr constant [5 x i8] c".mdp\00", align 1
@.str54 = private unnamed_addr constant [7 x i8] c"grompp\00", align 1
@.str55 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str56 = private unnamed_addr constant [37 x i8] c"grompp input file with MD parameters\00", align 1
@.str57 = private unnamed_addr constant [5 x i8] c".gct\00", align 1
@.str58 = private unnamed_addr constant [4 x i8] c"gct\00", align 1
@.str59 = private unnamed_addr constant [23 x i8] c"General coupling stuff\00", align 1
@.str60 = private unnamed_addr constant [5 x i8] c".???\00", align 1
@.str61 = private unnamed_addr constant [5 x i8] c"traj\00", align 1
@.str62 = private unnamed_addr constant [44 x i8] c"Generic trajectory: xtc trr trj gro g96 pdb\00", align 1
@.str63 = private unnamed_addr constant [35 x i8] c"Full precision trajectory: trr trj\00", align 1
@.str64 = private unnamed_addr constant [5 x i8] c".trr\00", align 1
@.str65 = private unnamed_addr constant [34 x i8] c"Trajectory in portable xdr format\00", align 1
@.str66 = private unnamed_addr constant [5 x i8] c".trj\00", align 1
@.str67 = private unnamed_addr constant [40 x i8] c"Trajectory file (architecture specific)\00", align 1
@.str68 = private unnamed_addr constant [5 x i8] c".xtc\00", align 1
@.str69 = private unnamed_addr constant [44 x i8] c"Compressed trajectory (portable xdr format)\00", align 1
@.str70 = private unnamed_addr constant [5 x i8] c".g87\00", align 1
@.str71 = private unnamed_addr constant [6 x i8] c"gtraj\00", align 1
@.str72 = private unnamed_addr constant [34 x i8] c"Gromos-87 ASCII trajectory format\00", align 1
@.str73 = private unnamed_addr constant [5 x i8] c"ener\00", align 1
@.str74 = private unnamed_addr constant [24 x i8] c"Generic energy: edr ene\00", align 1
@.str75 = private unnamed_addr constant [5 x i8] c".edr\00", align 1
@.str76 = private unnamed_addr constant [35 x i8] c"Energy file in portable xdr format\00", align 1
@.str77 = private unnamed_addr constant [5 x i8] c".ene\00", align 1
@.str78 = private unnamed_addr constant [12 x i8] c"Energy file\00", align 1
@.str79 = private unnamed_addr constant [5 x i8] c"conf\00", align 1
@.str80 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str81 = private unnamed_addr constant [43 x i8] c"Generic structure: gro g96 pdb tpr tpb tpa\00", align 1
@.str82 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str83 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str84 = private unnamed_addr constant [31 x i8] c"Generic structure: gro g96 pdb\00", align 1
@.str85 = private unnamed_addr constant [5 x i8] c".gro\00", align 1
@.str86 = private unnamed_addr constant [36 x i8] c"Coordinate file in Gromos-87 format\00", align 1
@.str87 = private unnamed_addr constant [5 x i8] c".g96\00", align 1
@.str88 = private unnamed_addr constant [36 x i8] c"Coordinate file in Gromos-96 format\00", align 1
@.str89 = private unnamed_addr constant [5 x i8] c".pdb\00", align 1
@.str90 = private unnamed_addr constant [6 x i8] c"eiwit\00", align 1
@.str91 = private unnamed_addr constant [23 x i8] c"Protein data bank file\00", align 1
@.str92 = private unnamed_addr constant [5 x i8] c".brk\00", align 1
@.str93 = private unnamed_addr constant [26 x i8] c"Brookhaven data bank file\00", align 1
@.str94 = private unnamed_addr constant [5 x i8] c".ent\00", align 1
@.str95 = private unnamed_addr constant [31 x i8] c"Entry in the protein date bank\00", align 1
@.str96 = private unnamed_addr constant [5 x i8] c".log\00", align 1
@.str97 = private unnamed_addr constant [4 x i8] c"run\00", align 1
@.str98 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str99 = private unnamed_addr constant [9 x i8] c"Log file\00", align 1
@.str100 = private unnamed_addr constant [5 x i8] c".xvg\00", align 1
@.str101 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@.str102 = private unnamed_addr constant [15 x i8] c"xvgr/xmgr file\00", align 1
@.str103 = private unnamed_addr constant [5 x i8] c".out\00", align 1
@.str104 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str105 = private unnamed_addr constant [20 x i8] c"Generic output file\00", align 1
@.str106 = private unnamed_addr constant [5 x i8] c".ndx\00", align 1
@.str107 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str108 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str109 = private unnamed_addr constant [11 x i8] c"Index file\00", align 1
@.str110 = private unnamed_addr constant [5 x i8] c".top\00", align 1
@.str111 = private unnamed_addr constant [6 x i8] c"topol\00", align 1
@.str112 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str113 = private unnamed_addr constant [14 x i8] c"Topology file\00", align 1
@.str114 = private unnamed_addr constant [5 x i8] c".itp\00", align 1
@.str115 = private unnamed_addr constant [7 x i8] c"topinc\00", align 1
@.str116 = private unnamed_addr constant [26 x i8] c"Include file for topology\00", align 1
@.str117 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str118 = private unnamed_addr constant [31 x i8] c"Generic run input: tpr tpb tpa\00", align 1
@.str119 = private unnamed_addr constant [44 x i8] c"Structure+mass(db): tpr tpb tpa gro g96 pdb\00", align 1
@tpss = internal global [8 x i32] [i32 26, i32 28, i32 27, i32 13, i32 14, i32 15, i32 16, i32 17], align 16
@.str120 = private unnamed_addr constant [5 x i8] c".tpr\00", align 1
@.str121 = private unnamed_addr constant [28 x i8] c"Portable xdr run input file\00", align 1
@.str122 = private unnamed_addr constant [5 x i8] c".tpa\00", align 1
@.str123 = private unnamed_addr constant [21 x i8] c"Ascii run input file\00", align 1
@.str124 = private unnamed_addr constant [5 x i8] c".tpb\00", align 1
@.str125 = private unnamed_addr constant [22 x i8] c"Binary run input file\00", align 1
@.str126 = private unnamed_addr constant [5 x i8] c".tex\00", align 1
@.str127 = private unnamed_addr constant [4 x i8] c"doc\00", align 1
@.str128 = private unnamed_addr constant [11 x i8] c"LaTeX file\00", align 1
@.str129 = private unnamed_addr constant [5 x i8] c".rtp\00", align 1
@.str130 = private unnamed_addr constant [8 x i8] c"residue\00", align 1
@.str131 = private unnamed_addr constant [34 x i8] c"Residue Type file used by pdb2gmx\00", align 1
@.str132 = private unnamed_addr constant [5 x i8] c".atp\00", align 1
@.str133 = private unnamed_addr constant [7 x i8] c"atomtp\00", align 1
@.str134 = private unnamed_addr constant [30 x i8] c"Atomtype file used by pdb2gmx\00", align 1
@.str135 = private unnamed_addr constant [5 x i8] c".hdb\00", align 1
@.str136 = private unnamed_addr constant [6 x i8] c"polar\00", align 1
@.str137 = private unnamed_addr constant [19 x i8] c"Hydrogen data base\00", align 1
@.str138 = private unnamed_addr constant [5 x i8] c".dat\00", align 1
@.str139 = private unnamed_addr constant [7 x i8] c"nnnice\00", align 1
@.str140 = private unnamed_addr constant [18 x i8] c"Generic data file\00", align 1
@.str141 = private unnamed_addr constant [5 x i8] c".dlg\00", align 1
@.str142 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str143 = private unnamed_addr constant [25 x i8] c"Dialog Box data for ngmx\00", align 1
@.str144 = private unnamed_addr constant [5 x i8] c".map\00", align 1
@.str145 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@.str146 = private unnamed_addr constant [37 x i8] c"File that maps matrix data to colors\00", align 1
@.str147 = private unnamed_addr constant [5 x i8] c".eps\00", align 1
@.str148 = private unnamed_addr constant [5 x i8] c"plot\00", align 1
@.str149 = private unnamed_addr constant [34 x i8] c"Encapsulated PostScript (tm) file\00", align 1
@.str150 = private unnamed_addr constant [5 x i8] c".mat\00", align 1
@.str151 = private unnamed_addr constant [17 x i8] c"Matrix Data file\00", align 1
@.str152 = private unnamed_addr constant [5 x i8] c".m2p\00", align 1
@.str153 = private unnamed_addr constant [3 x i8] c"ps\00", align 1
@.str154 = private unnamed_addr constant [22 x i8] c"Input file for mat2ps\00", align 1
@.str155 = private unnamed_addr constant [5 x i8] c".mtx\00", align 1
@.str156 = private unnamed_addr constant [8 x i8] c"hessian\00", align 1
@.str157 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str158 = private unnamed_addr constant [15 x i8] c"Hessian matrix\00", align 1
@.str159 = private unnamed_addr constant [5 x i8] c".edi\00", align 1
@.str160 = private unnamed_addr constant [4 x i8] c"sam\00", align 1
@.str161 = private unnamed_addr constant [18 x i8] c"ED sampling input\00", align 1
@.str162 = private unnamed_addr constant [5 x i8] c".edo\00", align 1
@.str163 = private unnamed_addr constant [19 x i8] c"ED sampling output\00", align 1
@.str164 = private unnamed_addr constant [5 x i8] c".ppa\00", align 1
@.str165 = private unnamed_addr constant [5 x i8] c"pull\00", align 1
@.str166 = private unnamed_addr constant [16 x i8] c"Pull parameters\00", align 1
@.str167 = private unnamed_addr constant [5 x i8] c".pdo\00", align 1
@.str168 = private unnamed_addr constant [17 x i8] c"Pull data output\00", align 1
@.str169 = private unnamed_addr constant [5 x i8] c".hat\00", align 1
@.str170 = private unnamed_addr constant [3 x i8] c"gk\00", align 1
@.str171 = private unnamed_addr constant [37 x i8] c"Fourier transform of spread function\00", align 1
@.str172 = private unnamed_addr constant [5 x i8] c".xpm\00", align 1
@.str173 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str174 = private unnamed_addr constant [32 x i8] c"X PixMap compatible matrix file\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @set_default_file_name(i8* %name) #0 {
entry:
  %call = tail call i8* @gmx_strdup(i8* %name) #6
  store i8* %call, i8** @default_file_name, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %defnm = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %indvars.iv, i32 2
  store i8* %call, i8** %defnm, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 46
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: optsize
declare i8* @gmx_strdup(i8*) #1

; Function Attrs: nounwind optsize readonly uwtable
define i8* @ftp2ext(i32 %ftp) #2 {
entry:
  %0 = icmp ult i32 %ftp, 46
  br i1 %0, label %if.then, label %return

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %ftp to i64
  %ext = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom, i32 1
  %1 = load i8** %ext, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %1, i64 1
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i8* [ %add.ptr, %if.then ], [ getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i8* @ftp2desc(i32 %ftp) #2 {
entry:
  %0 = icmp ult i32 %ftp, 46
  br i1 %0, label %if.then, label %return

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %ftp to i64
  %descr = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom, i32 4
  %1 = load i8** %descr, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i8* [ %1, %if.then ], [ getelementptr inbounds ([17 x i8]* @.str3, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i8* @ftp2ftype(i32 %ftp) #0 {
entry:
  %0 = icmp ult i32 %ftp, 46
  br i1 %0, label %if.then, label %return

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %ftp to i64
  %ftype = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom, i32 0
  %1 = load i32* %ftype, align 8, !tbaa !3
  switch i32 %1, label %sw.default [
    i32 0, label %return
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
  ]

sw.bb2:                                           ; preds = %if.then
  br label %return

sw.bb3:                                           ; preds = %if.then
  br label %return

sw.bb4:                                           ; preds = %if.then
  br label %return

sw.default:                                       ; preds = %if.then
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([49 x i8]* @.str8, i64 0, i64 0), i32 %1) #6
  br label %return

return:                                           ; preds = %entry, %sw.default, %if.then, %sw.bb4, %sw.bb3, %sw.bb2
  %retval.0 = phi i8* [ getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), %sw.bb4 ], [ getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0), %sw.bb3 ], [ getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0), %sw.bb2 ], [ getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), %if.then ], [ getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), %sw.default ], [ getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define i8* @ftp2defnm(i32 %ftp) #0 {
entry:
  %0 = icmp ult i32 %ftp, 46
  br i1 %0, label %if.then, label %return

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %ftp to i64
  %defnm = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom, i32 2
  %1 = load i8** %defnm, align 8, !tbaa !0
  %strlen = tail call i64 @strlen(i8* %1)
  %leninc = add i64 %strlen, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([256 x i8]* @ftp2defnm.buf, i64 0, i64 0), i8* %1, i64 %leninc, i32 1, i1 false)
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i8* [ getelementptr inbounds ([256 x i8]* @ftp2defnm.buf, i64 0, i64 0), %if.then ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @pr_def(%struct._IO_FILE* nocapture %fp, i32 %ftp) #0 {
entry:
  %idxprom = sext i32 %ftp to i64
  %ntps = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom, i32 5
  %0 = load i32* %ntps, align 8, !tbaa !3
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %tps = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom, i32 6
  %1 = load i32** %tps, align 8, !tbaa !0
  %2 = load i32* %1, align 4, !tbaa !3
  %idxprom2 = sext i32 %2 to i64
  %ext4 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom2, i32 1
  %3 = load i8** %ext4, align 8, !tbaa !0
  %descr = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom, i32 4
  %4 = load i8** %descr, align 8, !tbaa !0
  %call = tail call i8* @gmx_strdup(i8* %4) #6
  %call5 = tail call i8* @strstr(i8* %call, i8* getelementptr inbounds ([3 x i8]* @.str10, i64 0, i64 0)) #7
  %add.ptr = getelementptr inbounds i8* %call5, i64 1
  store i8 0, i8* %add.ptr, align 1, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8* %call5, i64 2
  %call9 = tail call i64 @strlen(i8* %incdec.ptr) #7
  %add = add i64 %call9, 6
  %conv = trunc i64 %add to i32
  %call10 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str12, i64 0, i64 0), i32 239, i32 %conv, i32 1) #6
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call10, i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i64 6, i32 1, i1 false)
  %call12 = tail call i8* @strcat(i8* %call10, i8* %incdec.ptr) #6
  br label %if.end15

if.else:                                          ; preds = %entry
  %ext13 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom, i32 1
  %5 = load i8** %ext13, align 8, !tbaa !0
  %descr14 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom, i32 4
  %6 = load i8** %descr14, align 8, !tbaa !0
  br label %if.end15

if.end15:                                         ; preds = %if.then, %if.else
  %s.0 = phi i8* [ %incdec.ptr, %if.then ], [ null, %if.else ]
  %ext.0 = phi i8* [ %3, %if.then ], [ %5, %if.else ]
  %desc.0 = phi i8* [ %call, %if.then ], [ %6, %if.else ]
  %flst.0 = phi i8* [ %call10, %if.then ], [ getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), %if.else ]
  %7 = load i8* %ext.0, align 1, !tbaa !1
  %tobool17 = icmp eq i8 %7, 0
  %incdec.ptr19 = getelementptr inbounds i8* %ext.0, i64 1
  %ext.1 = select i1 %tobool17, i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* %incdec.ptr19
  %ftype = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom, i32 0
  %8 = load i32* %ftype, align 8, !tbaa !3
  switch i32 %8, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb22
    i32 2, label %sw.bb23
    i32 3, label %sw.bb24
  ]

sw.bb22:                                          ; preds = %if.end15
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end15
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end15
  br label %sw.epilog

sw.default:                                       ; preds = %if.end15
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str17, i64 0, i64 0), i32 %ftp, i32 %8) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end15, %sw.default, %sw.bb24, %sw.bb23, %sw.bb22
  %s.1 = phi i8* [ %s.0, %sw.default ], [ getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), %sw.bb24 ], [ getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), %sw.bb23 ], [ getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), %sw.bb22 ], [ getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), %if.end15 ]
  %defnm = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom, i32 2
  %9 = load i8** %defnm, align 8, !tbaa !0
  %defopt = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom, i32 3
  %10 = load i8** %defopt, align 8, !tbaa !0
  %tobool26 = icmp eq i8* %10, null
  %. = select i1 %tobool26, i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* %10
  %call28 = tail call i8* @check_tex(i8* %desc.0) #6
  %call29 = tail call i8* @check_tex(i8* %flst.0) #6
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([53 x i8]* @.str18, i64 0, i64 0), i8* %9, i8* %ext.1, i8* %s.1, i8* %., i8* %call28, i8* %call29) #6
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #4

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i8* @strcat(i8*, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare i8* @check_tex(i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @pr_fns(%struct._IO_FILE* nocapture %fp, i32 %nf, %struct.t_filenm* nocapture %tfn) #0 {
entry:
  %buf = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #5
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([21 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str23, i64 0, i64 0)) #6
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([62 x i8]* @.str24, i64 0, i64 0), i64 61, i64 1, %struct._IO_FILE* %fp)
  %cmp99 = icmp sgt i32 %nf, 0
  br i1 %cmp99, label %for.body, label %for.end58

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %if.end ], [ 0, %entry ]
  %opt = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv101, i32 1
  %2 = load i8** %opt, align 8, !tbaa !0
  %fn = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv101, i32 2
  %3 = load i8** %fn, align 8, !tbaa !0
  %flag = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv101, i32 3
  %4 = load i64* %flag, align 8, !tbaa !4
  %call6 = call i8* @fileopt(i64 %4) #6
  %ftp = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv101, i32 0
  %5 = load i32* %ftp, align 4, !tbaa !3
  %idxprom9 = sext i32 %5 to i64
  %descr = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom9, i32 4
  %6 = load i8** %descr, align 8, !tbaa !0
  %call11 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([21 x i8]* @.str25, i64 0, i64 0), i8* %2, i8* %3, i8* %call6, i8* %6) #6
  %7 = load i8** %opt, align 8, !tbaa !0
  %call15 = call i64 @strlen(i8* %7) #7
  %cmp16 = icmp ugt i64 %call15, 4
  br i1 %cmp16, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = load i8** %fn, align 8, !tbaa !0
  %call24 = call i64 @strlen(i8* %8) #7
  %sub = sub i64 18, %call24
  %cmp25 = icmp ugt i64 %call15, %sub
  br i1 %cmp25, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %sext = shl i64 %call15, 32
  %conv3189 = ashr exact i64 %sext, 32
  %call3390 = call i64 @strlen(i8* %0) #7
  %call3791 = call i64 @strlen(i8* %7) #7
  %sub3993 = add i64 %call3390, 5
  %add94 = sub i64 %sub3993, %call3791
  %cmp4095 = icmp ult i64 %conv3189, %add94
  br i1 %cmp4095, label %for.body42.lr.ph, label %if.end

for.body42.lr.ph:                                 ; preds = %if.then
  %sext103 = shl i64 %call15, 32
  %9 = ashr exact i64 %sext103, 32
  br label %for.body42

for.body42:                                       ; preds = %for.body42.lr.ph, %for.body42
  %indvars.iv = phi i64 [ %9, %for.body42.lr.ph ], [ %indvars.iv.next, %for.body42 ]
  %call3798 = phi i64 [ %call3791, %for.body42.lr.ph ], [ %call37, %for.body42 ]
  %add48 = add i64 %indvars.iv, -4
  %sub49 = add i64 %add48, %call3798
  %arrayidx50 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 %sub49
  %10 = load i8* %arrayidx50, align 1, !tbaa !1
  %arrayidx52 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 %indvars.iv
  store i8 %10, i8* %arrayidx52, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %call33 = call i64 @strlen(i8* %0) #7
  %call37 = call i64 @strlen(i8* %7) #7
  %sub39 = add i64 %call33, 5
  %add = sub i64 %sub39, %call37
  %cmp40 = icmp ult i64 %indvars.iv.next, %add
  br i1 %cmp40, label %for.body42, label %if.end

if.end:                                           ; preds = %if.then, %for.body42, %land.lhs.true, %for.body
  %call54 = call i8* @wrap_lines(i8* %0, i32 80, i32 35) #6
  %fputs = call i32 @fputs(i8* %call54, %struct._IO_FILE* %fp)
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str12, i64 0, i64 0), i32 290, i8* %call54) #6
  %indvars.iv.next102 = add i64 %indvars.iv101, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next102 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nf
  br i1 %exitcond, label %for.end58, label %for.body

for.end58:                                        ; preds = %if.end, %entry
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  %call60 = call i32 @fflush(%struct._IO_FILE* %fp) #6
  call void @llvm.lifetime.end(i64 256, i8* %0) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i8* @fileopt(i64) #1

; Function Attrs: optsize
declare i8* @wrap_lines(i8*, i32, i32) #1

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define void @pr_fopts(%struct._IO_FILE* %fp, i32 %nf, %struct.t_filenm* nocapture %tfn, i32 %shell) #0 {
entry:
  switch i32 %shell, label %sw.epilog [
    i32 0, label %for.cond.preheader
    i32 1, label %for.cond53.preheader
    i32 2, label %for.cond128.preheader
  ]

for.cond128.preheader:                            ; preds = %entry
  %cmp129334 = icmp sgt i32 %nf, 0
  br i1 %cmp129334, label %for.body130, label %sw.epilog

for.cond53.preheader:                             ; preds = %entry
  %cmp54326 = icmp sgt i32 %nf, 0
  br i1 %cmp54326, label %for.body55, label %sw.epilog

for.cond.preheader:                               ; preds = %entry
  %cmp318 = icmp sgt i32 %nf, 0
  br i1 %cmp318, label %for.body, label %sw.epilog

for.body:                                         ; preds = %for.cond.preheader, %for.end47
  %indvars.iv338 = phi i64 [ %indvars.iv.next339, %for.end47 ], [ 0, %for.cond.preheader ]
  %opt = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv338, i32 1
  %0 = load i8** %opt, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([12 x i8]* @.str28, i64 0, i64 0), i8* %0) #6
  %ftp = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv338, i32 0
  %1 = load i32* %ftp, align 4, !tbaa !3
  %idxprom3 = sext i32 %1 to i64
  %ntps = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom3, i32 5
  %2 = load i32* %ntps, align 8, !tbaa !3
  %tobool = icmp eq i32 %2, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %fputc303 = tail call i32 @fputc(i32 123, %struct._IO_FILE* %fp)
  %3 = load i32* %ftp, align 4, !tbaa !3
  %idxprom10313 = sext i32 %3 to i64
  %ntps12314 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom10313, i32 5
  %4 = load i32* %ntps12314, align 8, !tbaa !3
  %cmp13315 = icmp sgt i32 %4, 0
  br i1 %cmp13315, label %for.body14, label %for.end

for.body14:                                       ; preds = %if.then, %if.end
  %5 = phi i32 [ %11, %if.end ], [ %3, %if.then ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %if.then ]
  %6 = trunc i64 %indvars.iv to i32
  %cmp15 = icmp sgt i32 %6, 0
  br i1 %cmp15, label %if.then16, label %if.end

if.then16:                                        ; preds = %for.body14
  %fputc312 = tail call i32 @fputc(i32 44, %struct._IO_FILE* %fp)
  %.pre = load i32* %ftp, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then16, %for.body14
  %7 = phi i32 [ %.pre, %if.then16 ], [ %5, %for.body14 ]
  %idxprom22 = sext i32 %7 to i64
  %tps = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom22, i32 6
  %8 = load i32** %tps, align 8, !tbaa !0
  %arrayidx24 = getelementptr inbounds i32* %8, i64 %indvars.iv
  %9 = load i32* %arrayidx24, align 4, !tbaa !3
  %idxprom25 = sext i32 %9 to i64
  %ext = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom25, i32 1
  %10 = load i8** %ext, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %10, i64 1
  %fputs282 = tail call i32 @fputs(i8* %add.ptr, %struct._IO_FILE* %fp)
  %indvars.iv.next = add i64 %indvars.iv, 1
  %11 = load i32* %ftp, align 4, !tbaa !3
  %idxprom10 = sext i32 %11 to i64
  %ntps12 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom10, i32 5
  %12 = load i32* %ntps12, align 8, !tbaa !3
  %13 = trunc i64 %indvars.iv.next to i32
  %cmp13 = icmp slt i32 %13, %12
  br i1 %cmp13, label %for.body14, label %for.end

for.end:                                          ; preds = %if.end, %if.then
  %fputc306 = tail call i32 @fputc(i32 125, %struct._IO_FILE* %fp)
  br label %if.end37

if.else:                                          ; preds = %for.body
  %ext34 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom3, i32 1
  %14 = load i8** %ext34, align 8, !tbaa !0
  %add.ptr35 = getelementptr inbounds i8* %14, i64 1
  %fputs281 = tail call i32 @fputs(i8* %add.ptr35, %struct._IO_FILE* %fp)
  br label %if.end37

if.end37:                                         ; preds = %if.else, %for.end
  %fputc309 = tail call i32 @fputc(i32 123, %struct._IO_FILE* %fp)
  br label %for.body41

for.body41:                                       ; preds = %for.body41, %if.end37
  %indvars.iv336 = phi i64 [ 0, %if.end37 ], [ %indvars.iv.next337, %for.body41 ]
  %arrayidx43 = getelementptr inbounds [2 x i8*]* @z_ext, i64 0, i64 %indvars.iv336
  %15 = load i8** %arrayidx43, align 8, !tbaa !0
  %call44 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str32, i64 0, i64 0), i8* %15) #6
  %indvars.iv.next337 = add i64 %indvars.iv336, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next337 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 2
  br i1 %exitcond, label %for.end47, label %for.body41

for.end47:                                        ; preds = %for.body41
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str33, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %fp)
  %indvars.iv.next339 = add i64 %indvars.iv338, 1
  %lftr.wideiv340 = trunc i64 %indvars.iv.next339 to i32
  %exitcond341 = icmp eq i32 %lftr.wideiv340, %nf
  br i1 %exitcond341, label %sw.epilog, label %for.body

for.body55:                                       ; preds = %for.cond53.preheader, %for.end122
  %indvars.iv348 = phi i64 [ %indvars.iv.next349, %for.end122 ], [ 0, %for.cond53.preheader ]
  %opt58 = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv348, i32 1
  %17 = load i8** %opt58, align 8, !tbaa !0
  %call59 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([34 x i8]* @.str34, i64 0, i64 0), i8* %17) #6
  %ftp62 = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv348, i32 0
  %18 = load i32* %ftp62, align 4, !tbaa !3
  %idxprom63 = sext i32 %18 to i64
  %ntps65 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom63, i32 5
  %19 = load i32* %ntps65, align 8, !tbaa !3
  %tobool66 = icmp eq i32 %19, 0
  br i1 %tobool66, label %if.else99, label %if.then67

if.then67:                                        ; preds = %for.body55
  %20 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str35, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  %21 = load i32* %ftp62, align 4, !tbaa !3
  %idxprom73320 = sext i32 %21 to i64
  %ntps75321 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom73320, i32 5
  %22 = load i32* %ntps75321, align 8, !tbaa !3
  %cmp76322 = icmp sgt i32 %22, 0
  br i1 %cmp76322, label %for.body77, label %for.end97

for.body77:                                       ; preds = %if.then67, %if.end81
  %23 = phi i32 [ %29, %if.end81 ], [ %21, %if.then67 ]
  %indvars.iv342 = phi i64 [ %indvars.iv.next343, %if.end81 ], [ 0, %if.then67 ]
  %24 = trunc i64 %indvars.iv342 to i32
  %cmp78 = icmp sgt i32 %24, 0
  br i1 %cmp78, label %if.then79, label %if.end81

if.then79:                                        ; preds = %for.body77
  %fputc300 = tail call i32 @fputc(i32 124, %struct._IO_FILE* %fp)
  %.pre362 = load i32* %ftp62, align 4, !tbaa !3
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %for.body77
  %25 = phi i32 [ %.pre362, %if.then79 ], [ %23, %for.body77 ]
  %idxprom86 = sext i32 %25 to i64
  %tps88 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom86, i32 6
  %26 = load i32** %tps88, align 8, !tbaa !0
  %arrayidx89 = getelementptr inbounds i32* %26, i64 %indvars.iv342
  %27 = load i32* %arrayidx89, align 4, !tbaa !3
  %idxprom90 = sext i32 %27 to i64
  %ext92 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom90, i32 1
  %28 = load i8** %ext92, align 8, !tbaa !0
  %add.ptr93 = getelementptr inbounds i8* %28, i64 1
  %fputs280 = tail call i32 @fputs(i8* %add.ptr93, %struct._IO_FILE* %fp)
  %indvars.iv.next343 = add i64 %indvars.iv342, 1
  %29 = load i32* %ftp62, align 4, !tbaa !3
  %idxprom73 = sext i32 %29 to i64
  %ntps75 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom73, i32 5
  %30 = load i32* %ntps75, align 8, !tbaa !3
  %31 = trunc i64 %indvars.iv.next343 to i32
  %cmp76 = icmp slt i32 %31, %30
  br i1 %cmp76, label %for.body77, label %for.end97

for.end97:                                        ; preds = %if.end81, %if.then67
  %fputc294 = tail call i32 @fputc(i32 41, %struct._IO_FILE* %fp)
  br label %if.end108

if.else99:                                        ; preds = %for.body55
  %ext105 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom63, i32 1
  %32 = load i8** %ext105, align 8, !tbaa !0
  %add.ptr106 = getelementptr inbounds i8* %32, i64 1
  %fputs278 = tail call i32 @fputs(i8* %add.ptr106, %struct._IO_FILE* %fp)
  br label %if.end108

if.end108:                                        ; preds = %if.else99, %for.end97
  %33 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str38, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  br label %for.body112

for.body112:                                      ; preds = %if.end116, %if.end108
  %indvars.iv344 = phi i64 [ 0, %if.end108 ], [ %indvars.iv.next345, %if.end116 ]
  %34 = trunc i64 %indvars.iv344 to i32
  %cmp113 = icmp sgt i32 %34, 0
  br i1 %cmp113, label %if.then114, label %if.end116

if.then114:                                       ; preds = %for.body112
  %fputc297 = tail call i32 @fputc(i32 124, %struct._IO_FILE* %fp)
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %for.body112
  %arrayidx118 = getelementptr inbounds [2 x i8*]* @z_ext, i64 0, i64 %indvars.iv344
  %35 = load i8** %arrayidx118, align 8, !tbaa !0
  %fputs279 = tail call i32 @fputs(i8* %35, %struct._IO_FILE* %fp)
  %indvars.iv.next345 = add i64 %indvars.iv344, 1
  %lftr.wideiv346 = trunc i64 %indvars.iv.next345 to i32
  %exitcond347 = icmp eq i32 %lftr.wideiv346, 2
  br i1 %exitcond347, label %for.end122, label %for.body112

for.end122:                                       ; preds = %if.end116
  %36 = tail call i64 @fwrite(i8* getelementptr inbounds ([46 x i8]* @.str39, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %fp)
  %indvars.iv.next349 = add i64 %indvars.iv348, 1
  %lftr.wideiv350 = trunc i64 %indvars.iv.next349 to i32
  %exitcond351 = icmp eq i32 %lftr.wideiv350, %nf
  br i1 %exitcond351, label %sw.epilog, label %for.body55

for.body130:                                      ; preds = %for.cond128.preheader, %for.end193
  %indvars.iv358 = phi i64 [ %indvars.iv.next359, %for.end193 ], [ 0, %for.cond128.preheader ]
  %opt133 = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv358, i32 1
  %37 = load i8** %opt133, align 8, !tbaa !0
  %call134 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str40, i64 0, i64 0), i8* %37) #6
  %ftp137 = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv358, i32 0
  %38 = load i32* %ftp137, align 4, !tbaa !3
  %idxprom138 = sext i32 %38 to i64
  %ntps140 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom138, i32 5
  %39 = load i32* %ntps140, align 8, !tbaa !3
  %tobool141 = icmp eq i32 %39, 0
  br i1 %tobool141, label %if.else174, label %if.then142

if.then142:                                       ; preds = %for.body130
  %fputc = tail call i32 @fputc(i32 40, %struct._IO_FILE* %fp)
  %40 = load i32* %ftp137, align 4, !tbaa !3
  %idxprom148328 = sext i32 %40 to i64
  %ntps150329 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom148328, i32 5
  %41 = load i32* %ntps150329, align 8, !tbaa !3
  %cmp151330 = icmp sgt i32 %41, 0
  br i1 %cmp151330, label %for.body152, label %for.end172

for.body152:                                      ; preds = %if.then142, %if.end156
  %42 = phi i32 [ %48, %if.end156 ], [ %40, %if.then142 ]
  %indvars.iv352 = phi i64 [ %indvars.iv.next353, %if.end156 ], [ 0, %if.then142 ]
  %43 = trunc i64 %indvars.iv352 to i32
  %cmp153 = icmp sgt i32 %43, 0
  br i1 %cmp153, label %if.then154, label %if.end156

if.then154:                                       ; preds = %for.body152
  %fputc291 = tail call i32 @fputc(i32 124, %struct._IO_FILE* %fp)
  %.pre363 = load i32* %ftp137, align 4, !tbaa !3
  br label %if.end156

if.end156:                                        ; preds = %if.then154, %for.body152
  %44 = phi i32 [ %.pre363, %if.then154 ], [ %42, %for.body152 ]
  %idxprom161 = sext i32 %44 to i64
  %tps163 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom161, i32 6
  %45 = load i32** %tps163, align 8, !tbaa !0
  %arrayidx164 = getelementptr inbounds i32* %45, i64 %indvars.iv352
  %46 = load i32* %arrayidx164, align 4, !tbaa !3
  %idxprom165 = sext i32 %46 to i64
  %ext167 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom165, i32 1
  %47 = load i8** %ext167, align 8, !tbaa !0
  %add.ptr168 = getelementptr inbounds i8* %47, i64 1
  %fputs277 = tail call i32 @fputs(i8* %add.ptr168, %struct._IO_FILE* %fp)
  %indvars.iv.next353 = add i64 %indvars.iv352, 1
  %48 = load i32* %ftp137, align 4, !tbaa !3
  %idxprom148 = sext i32 %48 to i64
  %ntps150 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom148, i32 5
  %49 = load i32* %ntps150, align 8, !tbaa !3
  %50 = trunc i64 %indvars.iv.next353 to i32
  %cmp151 = icmp slt i32 %50, %49
  br i1 %cmp151, label %for.body152, label %for.end172

for.end172:                                       ; preds = %if.end156, %if.then142
  %fputc285 = tail call i32 @fputc(i32 41, %struct._IO_FILE* %fp)
  br label %if.end183

if.else174:                                       ; preds = %for.body130
  %ext180 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom138, i32 1
  %51 = load i8** %ext180, align 8, !tbaa !0
  %add.ptr181 = getelementptr inbounds i8* %51, i64 1
  %fputs = tail call i32 @fputs(i8* %add.ptr181, %struct._IO_FILE* %fp)
  br label %if.end183

if.end183:                                        ; preds = %if.else174, %for.end172
  %fputc288 = tail call i32 @fputc(i32 40, %struct._IO_FILE* %fp)
  br label %for.body187

for.body187:                                      ; preds = %for.body187, %if.end183
  %indvars.iv354 = phi i64 [ 0, %if.end183 ], [ %indvars.iv.next355, %for.body187 ]
  %arrayidx189 = getelementptr inbounds [2 x i8*]* @z_ext, i64 0, i64 %indvars.iv354
  %52 = load i8** %arrayidx189, align 8, !tbaa !0
  %call190 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str42, i64 0, i64 0), i8* %52) #6
  %indvars.iv.next355 = add i64 %indvars.iv354, 1
  %lftr.wideiv356 = trunc i64 %indvars.iv.next355 to i32
  %exitcond357 = icmp eq i32 %lftr.wideiv356, 2
  br i1 %exitcond357, label %for.end193, label %for.body187

for.end193:                                       ; preds = %for.body187
  %53 = tail call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str43, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %fp)
  %indvars.iv.next359 = add i64 %indvars.iv358, 1
  %lftr.wideiv360 = trunc i64 %indvars.iv.next359 to i32
  %exitcond361 = icmp eq i32 %lftr.wideiv360, %nf
  br i1 %exitcond361, label %sw.epilog, label %for.body130

sw.epilog:                                        ; preds = %for.cond128.preheader, %for.end193, %for.cond53.preheader, %for.end122, %for.cond.preheader, %for.end47, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @fn2ftp(i8* %fn) #0 {
entry:
  %tobool = icmp eq i8* %fn, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i64 @strlen(i8* %fn) #7
  %conv = trunc i64 %call to i32
  %cmp = icmp sgt i32 %conv, 3
  br i1 %cmp, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %if.end
  %sub = shl i64 %call, 32
  %sext = add i64 %sub, -17179869184
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom
  %0 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp3 = icmp eq i8 %0, 46
  br i1 %cmp3, label %for.body, label %return

for.body:                                         ; preds = %land.lhs.true, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %land.lhs.true ]
  %i.031 = phi i32 [ %inc, %for.inc ], [ 0, %land.lhs.true ]
  %ext = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %indvars.iv, i32 1
  %1 = load i8** %ext, align 8, !tbaa !0
  %cmp14 = icmp eq i8* %1, null
  br i1 %cmp14, label %for.inc, label %if.then16

if.then16:                                        ; preds = %for.body
  %call17 = tail call i32 @gmx_strcasecmp(i8* %arrayidx, i8* %1) #6
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %return, label %for.inc

for.inc:                                          ; preds = %for.body, %if.then16
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %i.031, 1
  %2 = trunc i64 %indvars.iv.next to i32
  %cmp10 = icmp slt i32 %2, 46
  br i1 %cmp10, label %for.body, label %return

return:                                           ; preds = %for.inc, %if.then16, %if.end, %land.lhs.true, %entry
  %retval.0 = phi i32 [ 46, %entry ], [ 46, %land.lhs.true ], [ 46, %if.end ], [ %i.031, %if.then16 ], [ %inc, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @gmx_strcasecmp(i8*, i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @parse_file_args(i32* nocapture %argc, i8** nocapture %argv, i32 %nf, %struct.t_filenm* nocapture %fnm, i32 %bKeep) #0 {
entry:
  %cmp32.i = icmp sgt i32 %nf, 0
  br i1 %cmp32.i, label %for.body.i, label %for.end

for.body.i:                                       ; preds = %entry, %for.inc.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ 0, %entry ]
  %ftp.i = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv.i, i32 0
  %0 = load i32* %ftp.i, align 4, !tbaa !3
  %idxprom1.i = sext i32 %0 to i64
  %opt.i = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv.i, i32 1
  %1 = load i8** %opt.i, align 8, !tbaa !0
  %cmp5.i = icmp eq i8* %1, null
  br i1 %cmp5.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %defopt.i = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom1.i, i32 3
  %2 = load i8** %defopt.i, align 8, !tbaa !0
  %cmp6.i = icmp eq i8* %2, null
  br i1 %cmp6.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.then.i
  %ext.i = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom1.i, i32 1
  %3 = load i8** %ext.i, align 8, !tbaa !0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([45 x i8]* @.str52, i64 0, i64 0), i8* %3, i32 %0) #6
  br label %for.inc.i

if.else.i:                                        ; preds = %if.then.i
  store i8* %2, i8** %opt.i, align 8, !tbaa !0
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then7.i, %for.body.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv151 = trunc i64 %indvars.iv.next.i to i32
  %exitcond152 = icmp eq i32 %lftr.wideiv151, %nf
  br i1 %exitcond152, label %for.cond.preheader, label %for.body.i

for.cond.preheader:                               ; preds = %for.inc.i
  br i1 %cmp32.i, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv147 = phi i64 [ %indvars.iv.next148, %for.body ], [ 0, %for.cond.preheader ]
  %flag = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv147, i32 3
  %4 = load i64* %flag, align 8, !tbaa !4
  %and = and i64 %4, -2
  store i64 %and, i64* %flag, align 8, !tbaa !4
  %indvars.iv.next148 = add i64 %indvars.iv147, 1
  %lftr.wideiv149 = trunc i64 %indvars.iv.next148 to i32
  %exitcond150 = icmp eq i32 %lftr.wideiv149, %nf
  br i1 %exitcond150, label %for.end, label %for.body

for.end:                                          ; preds = %entry, %for.body, %for.cond.preheader
  %5 = load i32* %argc, align 4, !tbaa !3
  %cmp4 = icmp sgt i32 %5, 1
  br i1 %cmp4, label %if.then, label %if.end72

if.then:                                          ; preds = %for.end
  %add = add nsw i32 %5, 1
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str12, i64 0, i64 0), i32 520, i32 %add, i32 4) #6
  %6 = bitcast i8* %call to i32*
  br label %do.body

do.body:                                          ; preds = %for.end45, %if.then
  %i.1 = phi i32 [ 1, %if.then ], [ %inc49.i.2, %for.end45 ]
  br i1 %cmp32.i, label %for.body7.lr.ph, label %for.end45

for.body7.lr.ph:                                  ; preds = %do.body
  %idxprom8 = sext i32 %i.1 to i64
  %arrayidx9 = getelementptr inbounds i8** %argv, i64 %idxprom8
  %7 = load i8** %arrayidx9, align 8, !tbaa !0
  br label %for.body7

for.cond5:                                        ; preds = %for.body7
  %8 = trunc i64 %indvars.iv.next146 to i32
  %cmp6 = icmp slt i32 %8, %nf
  br i1 %cmp6, label %for.body7, label %for.end45

for.body7:                                        ; preds = %for.body7.lr.ph, %for.cond5
  %indvars.iv145 = phi i64 [ 0, %for.body7.lr.ph ], [ %indvars.iv.next146, %for.cond5 ]
  %j.0137 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc44, %for.cond5 ]
  %arrayidx11 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv145
  %opt = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv145, i32 1
  %9 = load i8** %opt, align 8, !tbaa !0
  %call12 = tail call i32 @strcmp(i8* %7, i8* %9) #7
  %cmp13 = icmp eq i32 %call12, 0
  %indvars.iv.next146 = add i64 %indvars.iv145, 1
  %inc44 = add nsw i32 %j.0137, 1
  br i1 %cmp13, label %if.then14, label %for.cond5

if.then14:                                        ; preds = %for.body7
  %flag17 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv145, i32 3
  %10 = load i64* %flag17, align 8, !tbaa !4
  %or = or i64 %10, 1
  store i64 %or, i64* %flag17, align 8, !tbaa !4
  %arrayidx22 = getelementptr inbounds i32* %6, i64 %idxprom8
  store i32 1, i32* %arrayidx22, align 4, !tbaa !3
  %inc23 = add nsw i32 %i.1, 1
  %11 = load i32* %argc, align 4, !tbaa !3
  %cmp24 = icmp slt i32 %inc23, %11
  br i1 %cmp24, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then14
  %idxprom25 = sext i32 %inc23 to i64
  %arrayidx26 = getelementptr inbounds i8** %argv, i64 %idxprom25
  %12 = load i8** %arrayidx26, align 8, !tbaa !0
  %13 = load i8* %12, align 1, !tbaa !1
  %cmp28 = icmp eq i8 %13, 45
  br i1 %cmp28, label %if.else, label %if.then30

if.then30:                                        ; preds = %land.lhs.true
  tail call fastcc void @set_filenm(%struct.t_filenm* %arrayidx11, i8* %12, i32 1) #8
  %arrayidx36 = getelementptr inbounds i32* %6, i64 %idxprom25
  store i32 1, i32* %arrayidx36, align 4, !tbaa !3
  %inc37 = add nsw i32 %i.1, 2
  br label %for.end45

if.else:                                          ; preds = %land.lhs.true, %if.then14
  %fn = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv145, i32 2
  %14 = load i8** %fn, align 8, !tbaa !0
  tail call fastcc void @set_filenm(%struct.t_filenm* %arrayidx11, i8* %14, i32 0) #8
  br label %for.end45

for.end45:                                        ; preds = %do.body, %for.cond5, %if.then30, %if.else
  %j.0135 = phi i32 [ %j.0137, %if.then30 ], [ %j.0137, %if.else ], [ 0, %do.body ], [ %inc44, %for.cond5 ]
  %i.2 = phi i32 [ %inc37, %if.then30 ], [ %inc23, %if.else ], [ %i.1, %do.body ], [ %i.1, %for.cond5 ]
  %cmp46 = icmp eq i32 %j.0135, %nf
  %inc49 = zext i1 %cmp46 to i32
  %inc49.i.2 = add nsw i32 %i.2, %inc49
  %15 = load i32* %argc, align 4, !tbaa !3
  %cmp51 = icmp slt i32 %inc49.i.2, %15
  br i1 %cmp51, label %do.body, label %do.end

do.end:                                           ; preds = %for.end45
  %tobool = icmp eq i32 %bKeep, 0
  br i1 %tobool, label %for.cond54.preheader, label %if.end71

for.cond54.preheader:                             ; preds = %do.end
  %cmp55131 = icmp slt i32 %15, 0
  br i1 %cmp55131, label %for.end70, label %for.body57

for.body57:                                       ; preds = %for.cond54.preheader, %for.inc68
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc68 ], [ 0, %for.cond54.preheader ]
  %j.1132 = phi i32 [ %j.2, %for.inc68 ], [ 0, %for.cond54.preheader ]
  %arrayidx59 = getelementptr inbounds i32* %6, i64 %indvars.iv
  %16 = load i32* %arrayidx59, align 4, !tbaa !3
  %tobool60 = icmp eq i32 %16, 0
  br i1 %tobool60, label %if.then61, label %for.inc68

if.then61:                                        ; preds = %for.body57
  %arrayidx63 = getelementptr inbounds i8** %argv, i64 %indvars.iv
  %17 = load i8** %arrayidx63, align 8, !tbaa !0
  %inc64 = add nsw i32 %j.1132, 1
  %idxprom65 = sext i32 %j.1132 to i64
  %arrayidx66 = getelementptr inbounds i8** %argv, i64 %idxprom65
  store i8* %17, i8** %arrayidx66, align 8, !tbaa !0
  br label %for.inc68

for.inc68:                                        ; preds = %for.body57, %if.then61
  %j.2 = phi i32 [ %j.1132, %for.body57 ], [ %inc64, %if.then61 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %18 = trunc i64 %indvars.iv to i32
  %cmp55 = icmp slt i32 %18, %15
  br i1 %cmp55, label %for.body57, label %for.end70

for.end70:                                        ; preds = %for.inc68, %for.cond54.preheader
  %j.1.lcssa = phi i32 [ 0, %for.cond54.preheader ], [ %j.2, %for.inc68 ]
  %sub = add nsw i32 %j.1.lcssa, -1
  store i32 %sub, i32* %argc, align 4, !tbaa !3
  br label %if.end71

if.end71:                                         ; preds = %do.end, %for.end70
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str12, i64 0, i64 0), i32 552, i8* %call) #6
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %for.end
  br i1 %cmp32.i, label %for.body.i125, label %set_filenms.exit

for.body.i125:                                    ; preds = %if.end72, %for.inc.i130
  %indvars.iv.i124 = phi i64 [ %indvars.iv.next.i127, %for.inc.i130 ], [ 0, %if.end72 ]
  %flag.i = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv.i124, i32 3
  %19 = load i64* %flag.i, align 8, !tbaa !4
  %and.i = and i64 %19, 1
  %cmp1.i = icmp eq i64 %and.i, 0
  br i1 %cmp1.i, label %if.then.i126, label %for.inc.i130

if.then.i126:                                     ; preds = %for.body.i125
  %arrayidx.i = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv.i124
  %fn.i = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv.i124, i32 2
  %20 = load i8** %fn.i, align 8, !tbaa !0
  tail call fastcc void @set_filenm(%struct.t_filenm* %arrayidx.i, i8* %20, i32 0) #6
  br label %for.inc.i130

for.inc.i130:                                     ; preds = %if.then.i126, %for.body.i125
  %indvars.iv.next.i127 = add i64 %indvars.iv.i124, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i127 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nf
  br i1 %exitcond, label %set_filenms.exit, label %for.body.i125

set_filenms.exit:                                 ; preds = %for.inc.i130, %if.end72
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @set_filenm(%struct.t_filenm* nocapture %fnm, i8* %name, i32 %bCanNotOverride) #0 {
entry:
  %buf.i = alloca [256 x i8], align 16
  %buf2.i = alloca [256 x i8], align 16
  %buf = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #5
  %ftp = getelementptr inbounds %struct.t_filenm* %fnm, i64 0, i32 0
  %1 = load i32* %ftp, align 4, !tbaa !3
  %2 = icmp ugt i32 %1, 45
  br i1 %2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str50, i64 0, i64 0), i32 %1) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %flag = getelementptr inbounds %struct.t_filenm* %fnm, i64 0, i32 3
  %3 = load i64* %flag, align 8, !tbaa !4
  %and = and i64 %3, 2
  %tobool = icmp eq i64 %and, 0
  %tobool4 = icmp eq i8* %name, null
  %or.cond81 = or i1 %tobool, %tobool4
  br i1 %or.cond81, label %if.end28, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %if.end
  %call = call i32 @fexist(i8* %name) #6
  %tobool6 = icmp eq i32 %call, 0
  br i1 %tobool6, label %if.end28, label %if.then7

if.then7:                                         ; preds = %land.lhs.true5
  %call8 = call i64 @strlen(i8* %name) #7
  %conv = trunc i64 %call8 to i32
  %sext = shl i64 %call8, 32
  %idx.ext = ashr exact i64 %sext, 32
  br label %for.body

for.body:                                         ; preds = %if.then7, %for.inc
  %indvars.iv = phi i64 [ 0, %if.then7 ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds [2 x i8*]* @z_ext, i64 0, i64 %indvars.iv
  %4 = load i8** %arrayidx, align 8, !tbaa !0
  %call11 = call i64 @strlen(i8* %4) #7
  %conv12 = trunc i64 %call11 to i32
  %cmp13 = icmp sgt i32 %conv, %conv12
  br i1 %cmp13, label %if.then15, label %for.inc

if.then15:                                        ; preds = %for.body
  %sext78 = shl i64 %call11, 32
  %idx.ext16 = ashr exact i64 %sext78, 32
  %add.ptr.sum = sub i64 %idx.ext, %idx.ext16
  %add.ptr17 = getelementptr inbounds i8* %name, i64 %add.ptr.sum
  %call20 = call i32 @gmx_strcasecmp(i8* %add.ptr17, i8* %4) #6
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %for.inc

if.then23:                                        ; preds = %if.then15
  %sub = sub i64 %call8, %call11
  %sext79 = shl i64 %sub, 32
  %idxprom24 = ashr exact i64 %sext79, 32
  %arrayidx25 = getelementptr inbounds i8* %name, i64 %idxprom24
  store i8 0, i8* %arrayidx25, align 1, !tbaa !1
  br label %if.end28

for.inc:                                          ; preds = %for.body, %if.then15
  %indvars.iv.next = add i64 %indvars.iv, 1
  %5 = trunc i64 %indvars.iv.next to i32
  %cmp9 = icmp slt i32 %5, 2
  br i1 %cmp9, label %for.body, label %if.end28

if.end28:                                         ; preds = %for.inc, %land.lhs.true5, %if.end, %if.then23
  %6 = load i32* %ftp, align 4, !tbaa !3
  %idxprom30 = sext i32 %6 to i64
  %ntps = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom30, i32 5
  %7 = load i32* %ntps, align 8, !tbaa !3
  %tobool32 = icmp eq i32 %7, 0
  br i1 %tobool32, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.end28
  %8 = getelementptr inbounds [256 x i8]* %buf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %8) #5
  %9 = getelementptr inbounds [256 x i8]* %buf2.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %9) #5
  %tps.i = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom30, i32 6
  %10 = load i32** %tps.i, align 8, !tbaa !0
  %cmp4.i = icmp eq i32* %10, null
  br i1 %cmp4.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then33
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str12, i64 0, i64 0), i32 427) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then33
  br i1 %tobool4, label %if.else.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %tobool5.i = icmp ne i32 %bCanNotOverride, 0
  %11 = load i8** @default_file_name, align 8, !tbaa !0
  %cmp7.i = icmp eq i8* %11, null
  %or.cond.i = or i1 %tobool5.i, %cmp7.i
  br i1 %or.cond.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %land.lhs.true.i
  %call.i = call i8* @strcpy(i8* %8, i8* %name) #6
  %call9.i = call i32 @fn2ftp(i8* %name) #6
  %cmp1089.i = icmp sgt i32 %7, 0
  br i1 %cmp1089.i, label %for.body.i, label %if.then52.i

for.body.i:                                       ; preds = %if.then8.i, %for.body.i
  %indvars.iv93.i = phi i64 [ %indvars.iv.next94.i, %for.body.i ], [ 0, %if.then8.i ]
  %arrayidx13.i = getelementptr inbounds i32* %10, i64 %indvars.iv93.i
  %12 = load i32* %arrayidx13.i, align 4, !tbaa !3
  %indvars.iv.next94.i = add i64 %indvars.iv93.i, 1
  %13 = trunc i64 %indvars.iv.next94.i to i32
  %cmp10.i = icmp slt i32 %13, %7
  %lnot.i = icmp ne i32 %call9.i, %12
  %or.cond79.i = and i1 %cmp10.i, %lnot.i
  br i1 %or.cond79.i, label %for.body.i, label %if.end21.i

if.else.i:                                        ; preds = %land.lhs.true.i, %if.end.i
  %14 = load i32* %ftp, align 4, !tbaa !3
  %15 = icmp ult i32 %14, 46
  br i1 %15, label %if.then.i.i, label %if.end21.thread.i

if.then.i.i:                                      ; preds = %if.else.i
  %idxprom.i.i = sext i32 %14 to i64
  %defnm.i.i = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom.i.i, i32 2
  %16 = load i8** %defnm.i.i, align 8, !tbaa !0
  %strlen.i.i = call i64 @strlen(i8* %16) #5
  %leninc.i.i = add i64 %strlen.i.i, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([256 x i8]* @ftp2defnm.buf, i64 0, i64 0), i8* %16, i64 %leninc.i.i, i32 1, i1 false) #5
  br label %if.end21.thread.i

if.end21.thread.i:                                ; preds = %if.then.i.i, %if.else.i
  %retval.0.i.i = phi i8* [ getelementptr inbounds ([256 x i8]* @ftp2defnm.buf, i64 0, i64 0), %if.then.i.i ], [ null, %if.else.i ]
  %call20.i = call i8* @strcpy(i8* %8, i8* %retval.0.i.i) #6
  br label %land.lhs.true23.i

if.end21.i:                                       ; preds = %for.body.i
  br i1 %lnot.i, label %land.lhs.true23.i, label %set_grpfnm.exit

land.lhs.true23.i:                                ; preds = %if.end21.i, %if.end21.thread.i
  %17 = load i64* %flag, align 8, !tbaa !4
  %and.i = and i64 %17, 2
  %tobool24.i = icmp ne i64 %and.i, 0
  %cmp2786.i = icmp sgt i32 %7, 0
  %or.cond102.i = and i1 %tobool24.i, %cmp2786.i
  br i1 %or.cond102.i, label %for.body32.i, label %if.then52.i

for.body32.i:                                     ; preds = %land.lhs.true23.i, %for.inc47.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc47.i ], [ 0, %land.lhs.true23.i ]
  %arrayidx34.i = getelementptr inbounds i32* %10, i64 %indvars.iv.i
  %18 = load i32* %arrayidx34.i, align 4, !tbaa !3
  %call37.i = call i8* @strcpy(i8* %9, i8* %8) #6
  call fastcc void @set_extension(i8* %9, i32 %18) #6
  %call40.i = call i32 @fexist(i8* %9) #6
  %tobool41.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.i, label %for.inc47.i, label %if.end50.i

for.inc47.i:                                      ; preds = %for.body32.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %19 = trunc i64 %indvars.iv.next.i to i32
  %cmp27.i = icmp slt i32 %19, %7
  br i1 %cmp27.i, label %for.body32.i, label %if.then52.i

if.end50.i:                                       ; preds = %for.body32.i
  %call45.i = call i8* @strcpy(i8* %8, i8* %9) #6
  br label %set_grpfnm.exit

if.then52.i:                                      ; preds = %for.inc47.i, %if.then8.i, %land.lhs.true23.i
  %20 = load i32* %10, align 4, !tbaa !3
  call fastcc void @set_extension(i8* %8, i32 %20) #6
  br label %set_grpfnm.exit

set_grpfnm.exit:                                  ; preds = %if.end21.i, %if.end50.i, %if.then52.i
  %call57.i = call i8* @gmx_strdup(i8* %8) #6
  %fn.i = getelementptr inbounds %struct.t_filenm* %fnm, i64 0, i32 2
  store i8* %call57.i, i8** %fn.i, align 8, !tbaa !0
  call void @llvm.lifetime.end(i64 256, i8* %9) #5
  call void @llvm.lifetime.end(i64 256, i8* %8) #5
  br label %if.end54

if.else:                                          ; preds = %if.end28
  br i1 %tobool4, label %if.else43, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %if.else
  %tobool37 = icmp ne i32 %bCanNotOverride, 0
  %21 = load i8** @default_file_name, align 8, !tbaa !0
  %cmp39 = icmp eq i8* %21, null
  %or.cond = or i1 %tobool37, %cmp39
  br i1 %or.cond, label %if.then41, label %if.else43

if.then41:                                        ; preds = %land.lhs.true36
  %call42 = call i8* @strcpy(i8* %0, i8* %name) #6
  br label %if.end49

if.else43:                                        ; preds = %if.else, %land.lhs.true36
  %defnm = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom30, i32 2
  %22 = load i8** %defnm, align 8, !tbaa !0
  %call48 = call i8* @strcpy(i8* %0, i8* %22) #6
  br label %if.end49

if.end49:                                         ; preds = %if.else43, %if.then41
  %23 = load i32* %ftp, align 4, !tbaa !3
  call fastcc void @set_extension(i8* %0, i32 %23) #8
  %call53 = call i8* @gmx_strdup(i8* %0) #6
  %fn = getelementptr inbounds %struct.t_filenm* %fnm, i64 0, i32 2
  store i8* %call53, i8** %fn, align 8, !tbaa !0
  br label %if.end54

if.end54:                                         ; preds = %if.end49, %set_grpfnm.exit
  call void @llvm.lifetime.end(i64 256, i8* %0) #5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i8* @opt2fn(i8* %opt, i32 %nfile, %struct.t_filenm* nocapture %fnm) #0 {
entry:
  %cmp10 = icmp sgt i32 %nfile, 0
  br i1 %cmp10, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %0, %nfile
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %opt1 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 1
  %1 = load i8** %opt1, align 8, !tbaa !0
  %call = tail call i32 @strcmp(i8* %opt, i8* %1) #7
  %cmp2 = icmp eq i32 %call, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp2, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %fn = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 2
  %2 = load i8** %fn, align 8, !tbaa !0
  br label %return

for.end:                                          ; preds = %for.cond, %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([14 x i8]* @.str45, i64 0, i64 0), i8* %opt) #6
  br label %return

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi i8* [ %2, %if.then ], [ null, %for.end ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i8* @ftp2fn(i32 %ftp, i32 %nfile, %struct.t_filenm* nocapture %fnm) #0 {
entry:
  %cmp11 = icmp sgt i32 %nfile, 0
  br i1 %cmp11, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %0, %nfile
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %ftp1 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 0
  %1 = load i32* %ftp1, align 4, !tbaa !3
  %cmp2 = icmp eq i32 %1, %ftp
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp2, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %fn = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 2
  %2 = load i8** %fn, align 8, !tbaa !0
  br label %return

for.end:                                          ; preds = %for.cond, %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %idxprom5 = sext i32 %ftp to i64
  %ext = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom5, i32 1
  %4 = load i8** %ext, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([24 x i8]* @.str46, i64 0, i64 0), i8* %4) #6
  br label %return

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi i8* [ %2, %if.then ], [ null, %for.end ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @ftp2bSet(i32 %ftp, i32 %nfile, %struct.t_filenm* nocapture %fnm) #0 {
entry:
  %cmp12 = icmp sgt i32 %nfile, 0
  br i1 %cmp12, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %0, %nfile
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %ftp1 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 0
  %1 = load i32* %ftp1, align 4, !tbaa !3
  %cmp2 = icmp eq i32 %1, %ftp
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp2, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %flag = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 3
  %2 = load i64* %flag, align 8, !tbaa !4
  %.tr = trunc i64 %2 to i32
  %conv = and i32 %.tr, 1
  br label %return

for.end:                                          ; preds = %for.cond, %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %idxprom6 = sext i32 %ftp to i64
  %ext = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom6, i32 1
  %4 = load i8** %ext, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([26 x i8]* @.str47, i64 0, i64 0), i8* %4) #6
  br label %return

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @opt2bSet(i8* %opt, i32 %nfile, %struct.t_filenm* nocapture %fnm) #0 {
entry:
  %cmp11 = icmp sgt i32 %nfile, 0
  br i1 %cmp11, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %0, %nfile
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %opt1 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 1
  %1 = load i8** %opt1, align 8, !tbaa !0
  %call = tail call i32 @strcmp(i8* %opt, i8* %1) #7
  %cmp2 = icmp eq i32 %call, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp2, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %flag = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 3
  %2 = load i64* %flag, align 8, !tbaa !4
  %.tr = trunc i64 %2 to i32
  %conv = and i32 %.tr, 1
  br label %return

for.end:                                          ; preds = %for.cond, %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([14 x i8]* @.str45, i64 0, i64 0), i8* %opt) #6
  br label %return

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i8* @opt2fn_null(i8* %opt, i32 %nfile, %struct.t_filenm* nocapture %fnm) #0 {
entry:
  %cmp23 = icmp sgt i32 %nfile, 0
  br i1 %cmp23, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %0, %nfile
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %opt1 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 1
  %1 = load i8** %opt1, align 8, !tbaa !0
  %call = tail call i32 @strcmp(i8* %opt, i8* %1) #7
  %cmp2 = icmp eq i32 %call, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp2, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %flag = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 3
  %2 = load i64* %flag, align 8, !tbaa !4
  %3 = and i64 %2, 9
  %4 = icmp eq i64 %3, 8
  br i1 %4, label %return, label %if.else

if.else:                                          ; preds = %if.then
  %fn = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 2
  %5 = load i8** %fn, align 8, !tbaa !0
  br label %return

for.end:                                          ; preds = %for.cond, %entry
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([14 x i8]* @.str45, i64 0, i64 0), i8* %opt) #6
  br label %return

return:                                           ; preds = %if.then, %for.end, %if.else
  %retval.0 = phi i8* [ %5, %if.else ], [ null, %for.end ], [ null, %if.then ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i8* @ftp2fn_null(i32 %ftp, i32 %nfile, %struct.t_filenm* nocapture %fnm) #0 {
entry:
  %cmp24 = icmp sgt i32 %nfile, 0
  br i1 %cmp24, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %0, %nfile
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %ftp1 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 0
  %1 = load i32* %ftp1, align 4, !tbaa !3
  %cmp2 = icmp eq i32 %1, %ftp
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp2, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %flag = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 3
  %2 = load i64* %flag, align 8, !tbaa !4
  %3 = and i64 %2, 9
  %4 = icmp eq i64 %3, 8
  br i1 %4, label %return, label %if.else

if.else:                                          ; preds = %if.then
  %fn = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 2
  %5 = load i8** %fn, align 8, !tbaa !0
  br label %return

for.end:                                          ; preds = %for.cond, %entry
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %idxprom14 = sext i32 %ftp to i64
  %ext = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom14, i32 1
  %7 = load i8** %ext, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([24 x i8]* @.str46, i64 0, i64 0), i8* %7) #6
  br label %return

return:                                           ; preds = %if.then, %for.end, %if.else
  %retval.0 = phi i8* [ %5, %if.else ], [ null, %for.end ], [ null, %if.then ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i8* @ftp2filter(i32 %ftp) #0 {
entry:
  %n = alloca i32, align 4
  store i8 0, i8* getelementptr inbounds ([128 x i8]* @ftp2filter.filter, i64 0, i64 0), align 16, !tbaa !1
  store i32 0, i32* %n, align 4, !tbaa !3
  switch i32 %ftp, label %sw.default [
    i32 8, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 12, label %sw.bb3
    i32 11, label %sw.bb4
    i32 24, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call fastcc void @add_filters(i32* %n, i32 2, i32* getelementptr inbounds ([2 x i32]* @enxs, i64 0, i64 0)) #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call fastcc void @add_filters(i32* %n, i32 7, i32* getelementptr inbounds ([7 x i32]* @trxs, i64 0, i64 0)) #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call fastcc void @add_filters(i32* %n, i32 2, i32* getelementptr inbounds ([2 x i32]* @trns, i64 0, i64 0)) #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call fastcc void @add_filters(i32* %n, i32 5, i32* getelementptr inbounds ([5 x i32]* @stos, i64 0, i64 0)) #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call fastcc void @add_filters(i32* %n, i32 8, i32* getelementptr inbounds ([8 x i32]* @stxs, i64 0, i64 0)) #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call fastcc void @add_filters(i32* %n, i32 3, i32* getelementptr inbounds ([3 x i32]* @tpxs, i64 0, i64 0)) #8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %0 = icmp ult i32 %ftp, 46
  br i1 %0, label %if.then.i, label %ftp2ext.exit

if.then.i:                                        ; preds = %sw.default
  %idxprom.i = sext i32 %ftp to i64
  %ext.i = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom.i, i32 1
  %1 = load i8** %ext.i, align 8, !tbaa !0
  %add.ptr.i = getelementptr inbounds i8* %1, i64 1
  br label %ftp2ext.exit

ftp2ext.exit:                                     ; preds = %sw.default, %if.then.i
  %retval.0.i = phi i8* [ %add.ptr.i, %if.then.i ], [ getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), %sw.default ]
  %call6 = call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([128 x i8]* @ftp2filter.filter, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str48, i64 0, i64 0), i8* %retval.0.i) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %ftp2ext.exit, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret i8* getelementptr inbounds ([128 x i8]* @ftp2filter.filter, i64 0, i64 0)
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @add_filters(i32* nocapture %n, i32 %nf, i32* nocapture %ftp) #0 {
entry:
  %buf = alloca [8 x i8], align 1
  store i32 8072746, i32* bitcast ([128 x i8]* @ftp2filter.filter to i32*), align 16
  %cmp4 = icmp sgt i32 %nf, 0
  br i1 %cmp4, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arraydecay = getelementptr inbounds [8 x i8]* %buf, i64 0, i64 0
  br label %for.body

for.body:                                         ; preds = %if.end, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end ]
  %arrayidx = getelementptr inbounds i32* %ftp, i64 %indvars.iv
  %0 = load i32* %arrayidx, align 4, !tbaa !3
  %1 = icmp ult i32 %0, 46
  br i1 %1, label %if.then.i, label %ftp2ext.exit

if.then.i:                                        ; preds = %for.body
  %idxprom.i = sext i32 %0 to i64
  %ext.i = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom.i, i32 1
  %2 = load i8** %ext.i, align 8, !tbaa !0
  %add.ptr.i = getelementptr inbounds i8* %2, i64 1
  br label %ftp2ext.exit

ftp2ext.exit:                                     ; preds = %for.body, %if.then.i
  %retval.0.i = phi i8* [ %add.ptr.i, %if.then.i ], [ getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), %for.body ]
  %strlen1 = call i64 @strlen(i8* %retval.0.i)
  %leninc = add i64 %strlen1, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arraydecay, i8* %retval.0.i, i64 %leninc, i32 1, i1 false)
  %3 = load i32* %n, align 4, !tbaa !3
  %cmp3 = icmp sgt i32 %3, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %ftp2ext.exit
  %strlen2 = call i64 @strlen(i8* getelementptr inbounds ([128 x i8]* @ftp2filter.filter, i64 0, i64 0))
  %endptr3 = getelementptr [128 x i8]* @ftp2filter.filter, i64 0, i64 %strlen2
  %4 = bitcast i8* %endptr3 to i16*
  store i16 44, i16* %4, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %ftp2ext.exit
  %call6 = call i8* @strcat(i8* getelementptr inbounds ([128 x i8]* @ftp2filter.filter, i64 0, i64 0), i8* %arraydecay) #6
  %5 = load i32* %n, align 4, !tbaa !3
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %n, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nf
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %if.end, %entry
  %strlen = call i64 @strlen(i8* getelementptr inbounds ([128 x i8]* @ftp2filter.filter, i64 0, i64 0))
  %endptr = getelementptr [128 x i8]* @ftp2filter.filter, i64 0, i64 %strlen
  %6 = bitcast i8* %endptr to i16*
  store i16 125, i16* %6, align 1
  ret void
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @is_optional(%struct.t_filenm* nocapture %fnm) #2 {
entry:
  %flag = getelementptr inbounds %struct.t_filenm* %fnm, i64 0, i32 3
  %0 = load i64* %flag, align 8, !tbaa !4
  %and = lshr i64 %0, 3
  %and.tr = trunc i64 %and to i32
  %conv = and i32 %and.tr, 1
  ret i32 %conv
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @is_output(%struct.t_filenm* nocapture %fnm) #2 {
entry:
  %flag = getelementptr inbounds %struct.t_filenm* %fnm, i64 0, i32 3
  %0 = load i64* %flag, align 8, !tbaa !4
  %and = lshr i64 %0, 2
  %and.tr = trunc i64 %and to i32
  %conv = and i32 %and.tr, 1
  ret i32 %conv
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @is_set(%struct.t_filenm* nocapture %fnm) #2 {
entry:
  %flag = getelementptr inbounds %struct.t_filenm* %fnm, i64 0, i32 3
  %0 = load i64* %flag, align 8, !tbaa !4
  %.tr = trunc i64 %0 to i32
  %conv = and i32 %.tr, 1
  ret i32 %conv
}

; Function Attrs: optsize
declare i32 @fexist(i8*) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @set_extension(i8* %buf, i32 %ftp) #0 {
entry:
  %idxprom = sext i32 %ftp to i64
  %call = tail call i64 @strlen(i8* %buf) #7
  %conv = trunc i64 %call to i32
  %ext = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom, i32 1
  %0 = load i8** %ext, align 8, !tbaa !0
  %call1 = tail call i64 @strlen(i8* %0) #7
  %conv2 = trunc i64 %call1 to i32
  %cmp = icmp sgt i32 %conv, %conv2
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sub = sub i64 %call, %call1
  %sext = shl i64 %sub, 32
  %idxprom4 = ashr exact i64 %sext, 32
  %arrayidx5 = getelementptr inbounds i8* %buf, i64 %idxprom4
  %call7 = tail call i32 @gmx_strcasecmp(i8* %arrayidx5, i8* %0) #6
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  %.pre = load i8** %ext, align 8, !tbaa !0
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry
  %1 = phi i8* [ %.pre, %lor.lhs.false.if.then_crit_edge ], [ %0, %entry ]
  %call11 = tail call i8* @strcat(i8* %buf, i8* %1) #6
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #5

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare i32 @fputs(i8* nocapture, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}

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
define void @set_default_file_name(i8* nocapture %name) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !62), !dbg !361
  %call = tail call noalias i8* @strdup(i8* %name) #7, !dbg !362
  store i8* %call, i8** @default_file_name, align 8, !dbg !362, !tbaa !363
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !63), !dbg !366
  br label %for.body, !dbg !366

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %defnm = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %indvars.iv, i32 2, !dbg !368
  store i8* %call, i8** %defnm, align 8, !dbg !368, !tbaa !363
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !366
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !366
  %exitcond = icmp eq i32 %lftr.wideiv, 46, !dbg !366
  br i1 %exitcond, label %for.end, label %for.body, !dbg !366

for.end:                                          ; preds = %for.body
  ret void, !dbg !369
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture) #2

; Function Attrs: nounwind optsize readonly uwtable
define i8* @ftp2ext(i32 %ftp) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %ftp}, i64 0, metadata !69), !dbg !370
  %0 = icmp ult i32 %ftp, 46, !dbg !371
  br i1 %0, label %if.then, label %return, !dbg !371

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %ftp to i64, !dbg !372
  %ext = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom, i32 1, !dbg !372
  %1 = load i8** %ext, align 8, !dbg !372, !tbaa !363
  %add.ptr = getelementptr inbounds i8* %1, i64 1, !dbg !372
  br label %return, !dbg !372

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i8* [ %add.ptr, %if.then ], [ getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), %entry ]
  ret i8* %retval.0, !dbg !373
}

; Function Attrs: nounwind optsize readonly uwtable
define i8* @ftp2desc(i32 %ftp) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %ftp}, i64 0, metadata !72), !dbg !374
  %0 = icmp ult i32 %ftp, 46, !dbg !375
  br i1 %0, label %if.then, label %return, !dbg !375

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %ftp to i64, !dbg !376
  %descr = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom, i32 4, !dbg !376
  %1 = load i8** %descr, align 8, !dbg !376, !tbaa !363
  br label %return, !dbg !376

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i8* [ %1, %if.then ], [ getelementptr inbounds ([17 x i8]* @.str3, i64 0, i64 0), %entry ]
  ret i8* %retval.0, !dbg !377
}

; Function Attrs: nounwind optsize uwtable
define i8* @ftp2ftype(i32 %ftp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %ftp}, i64 0, metadata !75), !dbg !378
  %0 = icmp ult i32 %ftp, 46, !dbg !379
  br i1 %0, label %if.then, label %return, !dbg !379

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %ftp to i64, !dbg !380
  %ftype = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom, i32 0, !dbg !380
  %1 = load i32* %ftype, align 8, !dbg !380, !tbaa !382
  switch i32 %1, label %sw.default [
    i32 0, label %return
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
  ], !dbg !380

sw.bb2:                                           ; preds = %if.then
  br label %return, !dbg !383

sw.bb3:                                           ; preds = %if.then
  br label %return, !dbg !385

sw.bb4:                                           ; preds = %if.then
  br label %return, !dbg !386

sw.default:                                       ; preds = %if.then
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([49 x i8]* @.str8, i64 0, i64 0), i32 %1) #7, !dbg !387
  br label %return, !dbg !388

return:                                           ; preds = %entry, %sw.default, %if.then, %sw.bb4, %sw.bb3, %sw.bb2
  %retval.0 = phi i8* [ getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), %sw.bb4 ], [ getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0), %sw.bb3 ], [ getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0), %sw.bb2 ], [ getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), %if.then ], [ getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), %sw.default ], [ getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), %entry ]
  ret i8* %retval.0, !dbg !389
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #4

; Function Attrs: nounwind optsize uwtable
define i8* @ftp2defnm(i32 %ftp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %ftp}, i64 0, metadata !78), !dbg !390
  %0 = icmp ult i32 %ftp, 46, !dbg !391
  br i1 %0, label %if.then, label %return, !dbg !391

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %ftp to i64, !dbg !392
  %defnm = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom, i32 2, !dbg !392
  %1 = load i8** %defnm, align 8, !dbg !392, !tbaa !363
  %strlen = tail call i64 @strlen(i8* %1), !dbg !392
  %leninc = add i64 %strlen, 1, !dbg !392
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([256 x i8]* @ftp2defnm.buf, i64 0, i64 0), i8* %1, i64 %leninc, i32 1, i1 false), !dbg !392
  br label %return, !dbg !394

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i8* [ getelementptr inbounds ([256 x i8]* @ftp2defnm.buf, i64 0, i64 0), %if.then ], [ null, %entry ]
  ret i8* %retval.0, !dbg !395
}

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @pr_def(%struct._IO_FILE* nocapture %fp, i32 %ftp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !138), !dbg !396
  tail call void @llvm.dbg.value(metadata !{i32 %ftp}, i64 0, metadata !139), !dbg !396
  tail call void @llvm.dbg.value(metadata !397, i64 0, metadata !153), !dbg !398
  %idxprom = sext i32 %ftp to i64, !dbg !399
  tail call void @llvm.dbg.value(metadata !400, i64 0, metadata !156), !dbg !401
  %ntps = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom, i32 5, !dbg !402
  %0 = load i32* %ntps, align 8, !dbg !402, !tbaa !382
  %tobool = icmp eq i32 %0, 0, !dbg !402
  br i1 %tobool, label %if.else, label %if.then, !dbg !402

if.then:                                          ; preds = %entry
  %tps = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom, i32 6, !dbg !403
  %1 = load i32** %tps, align 8, !dbg !403, !tbaa !363
  %2 = load i32* %1, align 4, !dbg !403, !tbaa !382
  %idxprom2 = sext i32 %2 to i64, !dbg !403
  %ext4 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom2, i32 1, !dbg !403
  %3 = load i8** %ext4, align 8, !dbg !403, !tbaa !363
  tail call void @llvm.dbg.value(metadata !{i8* %3}, i64 0, metadata !154), !dbg !403
  %descr = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom, i32 4, !dbg !405
  %4 = load i8** %descr, align 8, !dbg !405, !tbaa !363
  %call = tail call noalias i8* @strdup(i8* %4) #7, !dbg !405
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !155), !dbg !405
  %call5 = tail call i8* @strstr(i8* %call, i8* getelementptr inbounds ([3 x i8]* @.str10, i64 0, i64 0)) #8, !dbg !406
  %add.ptr = getelementptr inbounds i8* %call5, i64 1, !dbg !406
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !153), !dbg !406
  store i8 0, i8* %add.ptr, align 1, !dbg !407, !tbaa !364
  %incdec.ptr = getelementptr inbounds i8* %call5, i64 2, !dbg !409
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !153), !dbg !409
  %call9 = tail call i64 @strlen(i8* %incdec.ptr) #8, !dbg !410
  %add = add i64 %call9, 6, !dbg !410
  %conv = trunc i64 %add to i32, !dbg !410
  %call10 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str12, i64 0, i64 0), i32 239, i32 %conv, i32 1) #7, !dbg !410
  tail call void @llvm.dbg.value(metadata !{i8* %call10}, i64 0, metadata !156), !dbg !410
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call10, i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i64 6, i32 1, i1 false), !dbg !411
  %call12 = tail call i8* @strcat(i8* %call10, i8* %incdec.ptr) #7, !dbg !412
  br label %if.end15, !dbg !413

if.else:                                          ; preds = %entry
  %ext13 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom, i32 1, !dbg !414
  %5 = load i8** %ext13, align 8, !dbg !414, !tbaa !363
  tail call void @llvm.dbg.value(metadata !{i8* %5}, i64 0, metadata !154), !dbg !414
  %descr14 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom, i32 4, !dbg !416
  %6 = load i8** %descr14, align 8, !dbg !416, !tbaa !363
  tail call void @llvm.dbg.value(metadata !{i8* %6}, i64 0, metadata !155), !dbg !416
  br label %if.end15

if.end15:                                         ; preds = %if.then, %if.else
  %s.0 = phi i8* [ %incdec.ptr, %if.then ], [ null, %if.else ]
  %ext.0 = phi i8* [ %3, %if.then ], [ %5, %if.else ]
  %desc.0 = phi i8* [ %call, %if.then ], [ %6, %if.else ]
  %flst.0 = phi i8* [ %call10, %if.then ], [ getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), %if.else ]
  %7 = load i8* %ext.0, align 1, !dbg !417, !tbaa !364
  %tobool17 = icmp eq i8 %7, 0, !dbg !417
  %incdec.ptr19 = getelementptr inbounds i8* %ext.0, i64 1, !dbg !418
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr19}, i64 0, metadata !154), !dbg !418
  %ext.1 = select i1 %tobool17, i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* %incdec.ptr19, !dbg !417
  %ftype = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom, i32 0, !dbg !419
  %8 = load i32* %ftype, align 8, !dbg !419, !tbaa !382
  switch i32 %8, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb22
    i32 2, label %sw.bb23
    i32 3, label %sw.bb24
  ], !dbg !419

sw.bb22:                                          ; preds = %if.end15
  tail call void @llvm.dbg.value(metadata !420, i64 0, metadata !153), !dbg !421
  br label %sw.epilog, !dbg !423

sw.bb23:                                          ; preds = %if.end15
  tail call void @llvm.dbg.value(metadata !424, i64 0, metadata !153), !dbg !425
  br label %sw.epilog, !dbg !426

sw.bb24:                                          ; preds = %if.end15
  tail call void @llvm.dbg.value(metadata !400, i64 0, metadata !153), !dbg !427
  br label %sw.epilog, !dbg !428

sw.default:                                       ; preds = %if.end15
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str17, i64 0, i64 0), i32 %ftp, i32 %8) #7, !dbg !429
  br label %sw.epilog, !dbg !430

sw.epilog:                                        ; preds = %if.end15, %sw.default, %sw.bb24, %sw.bb23, %sw.bb22
  %s.1 = phi i8* [ %s.0, %sw.default ], [ getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), %sw.bb24 ], [ getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), %sw.bb23 ], [ getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), %sw.bb22 ], [ getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), %if.end15 ]
  %defnm = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom, i32 2, !dbg !431
  %9 = load i8** %defnm, align 8, !dbg !431, !tbaa !363
  %defopt = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom, i32 3, !dbg !431
  %10 = load i8** %defopt, align 8, !dbg !431, !tbaa !363
  %tobool26 = icmp eq i8* %10, null, !dbg !431
  %. = select i1 %tobool26, i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* %10, !dbg !431
  %call28 = tail call i8* @check_tex(i8* %desc.0) #7, !dbg !432
  %call29 = tail call i8* @check_tex(i8* %flst.0) #7, !dbg !432
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([53 x i8]* @.str18, i64 0, i64 0), i8* %9, i8* %ext.1, i8* %s.1, i8* %., i8* %call28, i8* %call29) #7, !dbg !432
  ret void, !dbg !433
}

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #5

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i8* @strcat(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare i8* @check_tex(i8*) #4

; Function Attrs: nounwind optsize uwtable
define void @pr_fns(%struct._IO_FILE* nocapture %fp, i32 %nf, %struct.t_filenm* nocapture %tfn) #0 {
entry:
  %buf = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !169), !dbg !434
  call void @llvm.dbg.value(metadata !{i32 %nf}, i64 0, metadata !170), !dbg !434
  call void @llvm.dbg.value(metadata !{%struct.t_filenm* %tfn}, i64 0, metadata !171), !dbg !434
  %0 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0, !dbg !435
  call void @llvm.lifetime.start(i64 256, i8* %0) #6, !dbg !435
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %buf}, metadata !174), !dbg !435
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([21 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str23, i64 0, i64 0)) #7, !dbg !436
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([62 x i8]* @.str24, i64 0, i64 0), i64 61, i64 1, %struct._IO_FILE* %fp), !dbg !437
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !172), !dbg !438
  %cmp99 = icmp sgt i32 %nf, 0, !dbg !438
  br i1 %cmp99, label %for.body, label %for.end58, !dbg !438

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %if.end ], [ 0, %entry ]
  %opt = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv101, i32 1, !dbg !440
  %2 = load i8** %opt, align 8, !dbg !440, !tbaa !363
  %fn = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv101, i32 2, !dbg !440
  %3 = load i8** %fn, align 8, !dbg !440, !tbaa !363
  %flag = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv101, i32 3, !dbg !442
  %4 = load i64* %flag, align 8, !dbg !442, !tbaa !443
  %call6 = call i8* @fileopt(i64 %4) #7, !dbg !442
  %ftp = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv101, i32 0, !dbg !442
  %5 = load i32* %ftp, align 4, !dbg !442, !tbaa !382
  %idxprom9 = sext i32 %5 to i64, !dbg !442
  %descr = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom9, i32 4, !dbg !442
  %6 = load i8** %descr, align 8, !dbg !442, !tbaa !363
  %call11 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([21 x i8]* @.str25, i64 0, i64 0), i8* %2, i8* %3, i8* %call6, i8* %6) #7, !dbg !442
  %7 = load i8** %opt, align 8, !dbg !444, !tbaa !363
  %call15 = call i64 @strlen(i8* %7) #8, !dbg !444
  %cmp16 = icmp ugt i64 %call15, 4, !dbg !444
  br i1 %cmp16, label %land.lhs.true, label %if.end, !dbg !444

land.lhs.true:                                    ; preds = %for.body
  %8 = load i8** %fn, align 8, !dbg !445, !tbaa !363
  %call24 = call i64 @strlen(i8* %8) #8, !dbg !445
  %sub = sub i64 18, %call24, !dbg !445
  %cmp25 = icmp ugt i64 %call15, %sub, !dbg !445
  br i1 %cmp25, label %if.end, label %if.then, !dbg !445

if.then:                                          ; preds = %land.lhs.true
  %sext = shl i64 %call15, 32, !dbg !446
  %conv3189 = ashr exact i64 %sext, 32, !dbg !446
  %call3390 = call i64 @strlen(i8* %0) #8, !dbg !449
  %call3791 = call i64 @strlen(i8* %7) #8, !dbg !449
  %sub3993 = add i64 %call3390, 5, !dbg !449
  %add94 = sub i64 %sub3993, %call3791, !dbg !449
  %cmp4095 = icmp ult i64 %conv3189, %add94, !dbg !449
  br i1 %cmp4095, label %for.body42.lr.ph, label %if.end, !dbg !449

for.body42.lr.ph:                                 ; preds = %if.then
  %sext103 = shl i64 %call15, 32
  %9 = ashr exact i64 %sext103, 32
  br label %for.body42, !dbg !449

for.body42:                                       ; preds = %for.body42.lr.ph, %for.body42
  %indvars.iv = phi i64 [ %9, %for.body42.lr.ph ], [ %indvars.iv.next, %for.body42 ]
  %call3798 = phi i64 [ %call3791, %for.body42.lr.ph ], [ %call37, %for.body42 ]
  %add48 = add i64 %indvars.iv, -4, !dbg !450
  %sub49 = add i64 %add48, %call3798, !dbg !450
  %arrayidx50 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 %sub49, !dbg !450
  %10 = load i8* %arrayidx50, align 1, !dbg !450, !tbaa !364
  %arrayidx52 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 %indvars.iv, !dbg !450
  store i8 %10, i8* %arrayidx52, align 1, !dbg !450, !tbaa !364
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !449
  %call33 = call i64 @strlen(i8* %0) #8, !dbg !449
  %call37 = call i64 @strlen(i8* %7) #8, !dbg !449
  %sub39 = add i64 %call33, 5, !dbg !449
  %add = sub i64 %sub39, %call37, !dbg !449
  %cmp40 = icmp ult i64 %indvars.iv.next, %add, !dbg !449
  br i1 %cmp40, label %for.body42, label %if.end, !dbg !449

if.end:                                           ; preds = %if.then, %for.body42, %land.lhs.true, %for.body
  %call54 = call i8* @wrap_lines(i8* %0, i32 80, i32 35) #7, !dbg !451
  call void @llvm.dbg.value(metadata !{i8* %call54}, i64 0, metadata !178), !dbg !451
  %fputs = call i32 @fputs(i8* %call54, %struct._IO_FILE* %fp), !dbg !452
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str12, i64 0, i64 0), i32 290, i8* %call54) #7, !dbg !453
  %indvars.iv.next102 = add i64 %indvars.iv101, 1, !dbg !438
  %lftr.wideiv = trunc i64 %indvars.iv.next102 to i32, !dbg !438
  %exitcond = icmp eq i32 %lftr.wideiv, %nf, !dbg !438
  br i1 %exitcond, label %for.end58, label %for.body, !dbg !438

for.end58:                                        ; preds = %if.end, %entry
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !454
  %call60 = call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !455
  call void @llvm.lifetime.end(i64 256, i8* %0) #6, !dbg !456
  ret void, !dbg !456
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: optsize
declare i8* @fileopt(i64) #4

; Function Attrs: optsize
declare i8* @wrap_lines(i8*, i32, i32) #4

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize uwtable
define void @pr_fopts(%struct._IO_FILE* %fp, i32 %nf, %struct.t_filenm* nocapture %tfn, i32 %shell) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !183), !dbg !457
  tail call void @llvm.dbg.value(metadata !{i32 %nf}, i64 0, metadata !184), !dbg !457
  tail call void @llvm.dbg.value(metadata !{%struct.t_filenm* %tfn}, i64 0, metadata !185), !dbg !457
  tail call void @llvm.dbg.value(metadata !{i32 %shell}, i64 0, metadata !186), !dbg !457
  switch i32 %shell, label %sw.epilog [
    i32 0, label %for.cond.preheader
    i32 1, label %for.cond53.preheader
    i32 2, label %for.cond128.preheader
  ], !dbg !458

for.cond128.preheader:                            ; preds = %entry
  %cmp129334 = icmp sgt i32 %nf, 0, !dbg !459
  br i1 %cmp129334, label %for.body130, label %sw.epilog, !dbg !459

for.cond53.preheader:                             ; preds = %entry
  %cmp54326 = icmp sgt i32 %nf, 0, !dbg !462
  br i1 %cmp54326, label %for.body55, label %sw.epilog, !dbg !462

for.cond.preheader:                               ; preds = %entry
  %cmp318 = icmp sgt i32 %nf, 0, !dbg !464
  br i1 %cmp318, label %for.body, label %sw.epilog, !dbg !464

for.body:                                         ; preds = %for.cond.preheader, %for.end47
  %indvars.iv338 = phi i64 [ %indvars.iv.next339, %for.end47 ], [ 0, %for.cond.preheader ]
  %opt = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv338, i32 1, !dbg !466
  %0 = load i8** %opt, align 8, !dbg !466, !tbaa !363
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([12 x i8]* @.str28, i64 0, i64 0), i8* %0) #7, !dbg !466
  %ftp = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv338, i32 0, !dbg !468
  %1 = load i32* %ftp, align 4, !dbg !468, !tbaa !382
  %idxprom3 = sext i32 %1 to i64, !dbg !468
  %ntps = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom3, i32 5, !dbg !468
  %2 = load i32* %ntps, align 8, !dbg !468, !tbaa !382
  %tobool = icmp eq i32 %2, 0, !dbg !468
  br i1 %tobool, label %if.else, label %if.then, !dbg !468

if.then:                                          ; preds = %for.body
  %fputc303 = tail call i32 @fputc(i32 123, %struct._IO_FILE* %fp), !dbg !469
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !188), !dbg !471
  %3 = load i32* %ftp, align 4, !dbg !471, !tbaa !382
  %idxprom10313 = sext i32 %3 to i64, !dbg !471
  %ntps12314 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom10313, i32 5, !dbg !471
  %4 = load i32* %ntps12314, align 8, !dbg !471, !tbaa !382
  %cmp13315 = icmp sgt i32 %4, 0, !dbg !471
  br i1 %cmp13315, label %for.body14, label %for.end, !dbg !471

for.body14:                                       ; preds = %if.then, %if.end
  %5 = phi i32 [ %11, %if.end ], [ %3, %if.then ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %if.then ]
  %6 = trunc i64 %indvars.iv to i32, !dbg !473
  %cmp15 = icmp sgt i32 %6, 0, !dbg !473
  br i1 %cmp15, label %if.then16, label %if.end, !dbg !473

if.then16:                                        ; preds = %for.body14
  %fputc312 = tail call i32 @fputc(i32 44, %struct._IO_FILE* %fp), !dbg !475
  %.pre = load i32* %ftp, align 4, !dbg !476, !tbaa !382
  br label %if.end, !dbg !475

if.end:                                           ; preds = %if.then16, %for.body14
  %7 = phi i32 [ %.pre, %if.then16 ], [ %5, %for.body14 ], !dbg !476
  %idxprom22 = sext i32 %7 to i64, !dbg !476
  %tps = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom22, i32 6, !dbg !476
  %8 = load i32** %tps, align 8, !dbg !476, !tbaa !363
  %arrayidx24 = getelementptr inbounds i32* %8, i64 %indvars.iv, !dbg !476
  %9 = load i32* %arrayidx24, align 4, !dbg !476, !tbaa !382
  %idxprom25 = sext i32 %9 to i64, !dbg !476
  %ext = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom25, i32 1, !dbg !476
  %10 = load i8** %ext, align 8, !dbg !476, !tbaa !363
  %add.ptr = getelementptr inbounds i8* %10, i64 1, !dbg !476
  %fputs282 = tail call i32 @fputs(i8* %add.ptr, %struct._IO_FILE* %fp), !dbg !476
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !471
  %11 = load i32* %ftp, align 4, !dbg !471, !tbaa !382
  %idxprom10 = sext i32 %11 to i64, !dbg !471
  %ntps12 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom10, i32 5, !dbg !471
  %12 = load i32* %ntps12, align 8, !dbg !471, !tbaa !382
  %13 = trunc i64 %indvars.iv.next to i32, !dbg !471
  %cmp13 = icmp slt i32 %13, %12, !dbg !471
  br i1 %cmp13, label %for.body14, label %for.end, !dbg !471

for.end:                                          ; preds = %if.end, %if.then
  %fputc306 = tail call i32 @fputc(i32 125, %struct._IO_FILE* %fp), !dbg !477
  br label %if.end37, !dbg !478

if.else:                                          ; preds = %for.body
  %ext34 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom3, i32 1, !dbg !479
  %14 = load i8** %ext34, align 8, !dbg !479, !tbaa !363
  %add.ptr35 = getelementptr inbounds i8* %14, i64 1, !dbg !479
  %fputs281 = tail call i32 @fputs(i8* %add.ptr35, %struct._IO_FILE* %fp), !dbg !479
  br label %if.end37

if.end37:                                         ; preds = %if.else, %for.end
  %fputc309 = tail call i32 @fputc(i32 123, %struct._IO_FILE* %fp), !dbg !480
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !188), !dbg !481
  br label %for.body41, !dbg !481

for.body41:                                       ; preds = %for.body41, %if.end37
  %indvars.iv336 = phi i64 [ 0, %if.end37 ], [ %indvars.iv.next337, %for.body41 ]
  %arrayidx43 = getelementptr inbounds [2 x i8*]* @z_ext, i64 0, i64 %indvars.iv336, !dbg !483
  %15 = load i8** %arrayidx43, align 8, !dbg !483, !tbaa !363
  %call44 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str32, i64 0, i64 0), i8* %15) #7, !dbg !483
  %indvars.iv.next337 = add i64 %indvars.iv336, 1, !dbg !481
  %lftr.wideiv = trunc i64 %indvars.iv.next337 to i32, !dbg !481
  %exitcond = icmp eq i32 %lftr.wideiv, 2, !dbg !481
  br i1 %exitcond, label %for.end47, label %for.body41, !dbg !481

for.end47:                                        ; preds = %for.body41
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str33, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %fp), !dbg !484
  %indvars.iv.next339 = add i64 %indvars.iv338, 1, !dbg !464
  %lftr.wideiv340 = trunc i64 %indvars.iv.next339 to i32, !dbg !464
  %exitcond341 = icmp eq i32 %lftr.wideiv340, %nf, !dbg !464
  br i1 %exitcond341, label %sw.epilog, label %for.body, !dbg !464

for.body55:                                       ; preds = %for.cond53.preheader, %for.end122
  %indvars.iv348 = phi i64 [ %indvars.iv.next349, %for.end122 ], [ 0, %for.cond53.preheader ]
  %opt58 = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv348, i32 1, !dbg !485
  %17 = load i8** %opt58, align 8, !dbg !485, !tbaa !363
  %call59 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([34 x i8]* @.str34, i64 0, i64 0), i8* %17) #7, !dbg !485
  %ftp62 = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv348, i32 0, !dbg !487
  %18 = load i32* %ftp62, align 4, !dbg !487, !tbaa !382
  %idxprom63 = sext i32 %18 to i64, !dbg !487
  %ntps65 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom63, i32 5, !dbg !487
  %19 = load i32* %ntps65, align 8, !dbg !487, !tbaa !382
  %tobool66 = icmp eq i32 %19, 0, !dbg !487
  br i1 %tobool66, label %if.else99, label %if.then67, !dbg !487

if.then67:                                        ; preds = %for.body55
  %20 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str35, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp), !dbg !488
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !188), !dbg !490
  %21 = load i32* %ftp62, align 4, !dbg !490, !tbaa !382
  %idxprom73320 = sext i32 %21 to i64, !dbg !490
  %ntps75321 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom73320, i32 5, !dbg !490
  %22 = load i32* %ntps75321, align 8, !dbg !490, !tbaa !382
  %cmp76322 = icmp sgt i32 %22, 0, !dbg !490
  br i1 %cmp76322, label %for.body77, label %for.end97, !dbg !490

for.body77:                                       ; preds = %if.then67, %if.end81
  %23 = phi i32 [ %29, %if.end81 ], [ %21, %if.then67 ]
  %indvars.iv342 = phi i64 [ %indvars.iv.next343, %if.end81 ], [ 0, %if.then67 ]
  %24 = trunc i64 %indvars.iv342 to i32, !dbg !492
  %cmp78 = icmp sgt i32 %24, 0, !dbg !492
  br i1 %cmp78, label %if.then79, label %if.end81, !dbg !492

if.then79:                                        ; preds = %for.body77
  %fputc300 = tail call i32 @fputc(i32 124, %struct._IO_FILE* %fp), !dbg !494
  %.pre362 = load i32* %ftp62, align 4, !dbg !495, !tbaa !382
  br label %if.end81, !dbg !494

if.end81:                                         ; preds = %if.then79, %for.body77
  %25 = phi i32 [ %.pre362, %if.then79 ], [ %23, %for.body77 ], !dbg !495
  %idxprom86 = sext i32 %25 to i64, !dbg !495
  %tps88 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom86, i32 6, !dbg !495
  %26 = load i32** %tps88, align 8, !dbg !495, !tbaa !363
  %arrayidx89 = getelementptr inbounds i32* %26, i64 %indvars.iv342, !dbg !495
  %27 = load i32* %arrayidx89, align 4, !dbg !495, !tbaa !382
  %idxprom90 = sext i32 %27 to i64, !dbg !495
  %ext92 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom90, i32 1, !dbg !495
  %28 = load i8** %ext92, align 8, !dbg !495, !tbaa !363
  %add.ptr93 = getelementptr inbounds i8* %28, i64 1, !dbg !495
  %fputs280 = tail call i32 @fputs(i8* %add.ptr93, %struct._IO_FILE* %fp), !dbg !495
  %indvars.iv.next343 = add i64 %indvars.iv342, 1, !dbg !490
  %29 = load i32* %ftp62, align 4, !dbg !490, !tbaa !382
  %idxprom73 = sext i32 %29 to i64, !dbg !490
  %ntps75 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom73, i32 5, !dbg !490
  %30 = load i32* %ntps75, align 8, !dbg !490, !tbaa !382
  %31 = trunc i64 %indvars.iv.next343 to i32, !dbg !490
  %cmp76 = icmp slt i32 %31, %30, !dbg !490
  br i1 %cmp76, label %for.body77, label %for.end97, !dbg !490

for.end97:                                        ; preds = %if.end81, %if.then67
  %fputc294 = tail call i32 @fputc(i32 41, %struct._IO_FILE* %fp), !dbg !496
  br label %if.end108, !dbg !497

if.else99:                                        ; preds = %for.body55
  %ext105 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom63, i32 1, !dbg !498
  %32 = load i8** %ext105, align 8, !dbg !498, !tbaa !363
  %add.ptr106 = getelementptr inbounds i8* %32, i64 1, !dbg !498
  %fputs278 = tail call i32 @fputs(i8* %add.ptr106, %struct._IO_FILE* %fp), !dbg !498
  br label %if.end108

if.end108:                                        ; preds = %if.else99, %for.end97
  %33 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str38, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp), !dbg !499
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !188), !dbg !500
  br label %for.body112, !dbg !500

for.body112:                                      ; preds = %if.end116, %if.end108
  %indvars.iv344 = phi i64 [ 0, %if.end108 ], [ %indvars.iv.next345, %if.end116 ]
  %34 = trunc i64 %indvars.iv344 to i32, !dbg !502
  %cmp113 = icmp sgt i32 %34, 0, !dbg !502
  br i1 %cmp113, label %if.then114, label %if.end116, !dbg !502

if.then114:                                       ; preds = %for.body112
  %fputc297 = tail call i32 @fputc(i32 124, %struct._IO_FILE* %fp), !dbg !504
  br label %if.end116, !dbg !504

if.end116:                                        ; preds = %if.then114, %for.body112
  %arrayidx118 = getelementptr inbounds [2 x i8*]* @z_ext, i64 0, i64 %indvars.iv344, !dbg !505
  %35 = load i8** %arrayidx118, align 8, !dbg !505, !tbaa !363
  %fputs279 = tail call i32 @fputs(i8* %35, %struct._IO_FILE* %fp), !dbg !505
  %indvars.iv.next345 = add i64 %indvars.iv344, 1, !dbg !500
  %lftr.wideiv346 = trunc i64 %indvars.iv.next345 to i32, !dbg !500
  %exitcond347 = icmp eq i32 %lftr.wideiv346, 2, !dbg !500
  br i1 %exitcond347, label %for.end122, label %for.body112, !dbg !500

for.end122:                                       ; preds = %if.end116
  %36 = tail call i64 @fwrite(i8* getelementptr inbounds ([46 x i8]* @.str39, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %fp), !dbg !506
  %indvars.iv.next349 = add i64 %indvars.iv348, 1, !dbg !462
  %lftr.wideiv350 = trunc i64 %indvars.iv.next349 to i32, !dbg !462
  %exitcond351 = icmp eq i32 %lftr.wideiv350, %nf, !dbg !462
  br i1 %exitcond351, label %sw.epilog, label %for.body55, !dbg !462

for.body130:                                      ; preds = %for.cond128.preheader, %for.end193
  %indvars.iv358 = phi i64 [ %indvars.iv.next359, %for.end193 ], [ 0, %for.cond128.preheader ]
  %opt133 = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv358, i32 1, !dbg !507
  %37 = load i8** %opt133, align 8, !dbg !507, !tbaa !363
  %call134 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str40, i64 0, i64 0), i8* %37) #7, !dbg !507
  %ftp137 = getelementptr inbounds %struct.t_filenm* %tfn, i64 %indvars.iv358, i32 0, !dbg !509
  %38 = load i32* %ftp137, align 4, !dbg !509, !tbaa !382
  %idxprom138 = sext i32 %38 to i64, !dbg !509
  %ntps140 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom138, i32 5, !dbg !509
  %39 = load i32* %ntps140, align 8, !dbg !509, !tbaa !382
  %tobool141 = icmp eq i32 %39, 0, !dbg !509
  br i1 %tobool141, label %if.else174, label %if.then142, !dbg !509

if.then142:                                       ; preds = %for.body130
  %fputc = tail call i32 @fputc(i32 40, %struct._IO_FILE* %fp), !dbg !510
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !188), !dbg !512
  %40 = load i32* %ftp137, align 4, !dbg !512, !tbaa !382
  %idxprom148328 = sext i32 %40 to i64, !dbg !512
  %ntps150329 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom148328, i32 5, !dbg !512
  %41 = load i32* %ntps150329, align 8, !dbg !512, !tbaa !382
  %cmp151330 = icmp sgt i32 %41, 0, !dbg !512
  br i1 %cmp151330, label %for.body152, label %for.end172, !dbg !512

for.body152:                                      ; preds = %if.then142, %if.end156
  %42 = phi i32 [ %48, %if.end156 ], [ %40, %if.then142 ]
  %indvars.iv352 = phi i64 [ %indvars.iv.next353, %if.end156 ], [ 0, %if.then142 ]
  %43 = trunc i64 %indvars.iv352 to i32, !dbg !514
  %cmp153 = icmp sgt i32 %43, 0, !dbg !514
  br i1 %cmp153, label %if.then154, label %if.end156, !dbg !514

if.then154:                                       ; preds = %for.body152
  %fputc291 = tail call i32 @fputc(i32 124, %struct._IO_FILE* %fp), !dbg !516
  %.pre363 = load i32* %ftp137, align 4, !dbg !517, !tbaa !382
  br label %if.end156, !dbg !516

if.end156:                                        ; preds = %if.then154, %for.body152
  %44 = phi i32 [ %.pre363, %if.then154 ], [ %42, %for.body152 ], !dbg !517
  %idxprom161 = sext i32 %44 to i64, !dbg !517
  %tps163 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom161, i32 6, !dbg !517
  %45 = load i32** %tps163, align 8, !dbg !517, !tbaa !363
  %arrayidx164 = getelementptr inbounds i32* %45, i64 %indvars.iv352, !dbg !517
  %46 = load i32* %arrayidx164, align 4, !dbg !517, !tbaa !382
  %idxprom165 = sext i32 %46 to i64, !dbg !517
  %ext167 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom165, i32 1, !dbg !517
  %47 = load i8** %ext167, align 8, !dbg !517, !tbaa !363
  %add.ptr168 = getelementptr inbounds i8* %47, i64 1, !dbg !517
  %fputs277 = tail call i32 @fputs(i8* %add.ptr168, %struct._IO_FILE* %fp), !dbg !517
  %indvars.iv.next353 = add i64 %indvars.iv352, 1, !dbg !512
  %48 = load i32* %ftp137, align 4, !dbg !512, !tbaa !382
  %idxprom148 = sext i32 %48 to i64, !dbg !512
  %ntps150 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom148, i32 5, !dbg !512
  %49 = load i32* %ntps150, align 8, !dbg !512, !tbaa !382
  %50 = trunc i64 %indvars.iv.next353 to i32, !dbg !512
  %cmp151 = icmp slt i32 %50, %49, !dbg !512
  br i1 %cmp151, label %for.body152, label %for.end172, !dbg !512

for.end172:                                       ; preds = %if.end156, %if.then142
  %fputc285 = tail call i32 @fputc(i32 41, %struct._IO_FILE* %fp), !dbg !518
  br label %if.end183, !dbg !519

if.else174:                                       ; preds = %for.body130
  %ext180 = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom138, i32 1, !dbg !520
  %51 = load i8** %ext180, align 8, !dbg !520, !tbaa !363
  %add.ptr181 = getelementptr inbounds i8* %51, i64 1, !dbg !520
  %fputs = tail call i32 @fputs(i8* %add.ptr181, %struct._IO_FILE* %fp), !dbg !520
  br label %if.end183

if.end183:                                        ; preds = %if.else174, %for.end172
  %fputc288 = tail call i32 @fputc(i32 40, %struct._IO_FILE* %fp), !dbg !521
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !188), !dbg !522
  br label %for.body187, !dbg !522

for.body187:                                      ; preds = %for.body187, %if.end183
  %indvars.iv354 = phi i64 [ 0, %if.end183 ], [ %indvars.iv.next355, %for.body187 ]
  %arrayidx189 = getelementptr inbounds [2 x i8*]* @z_ext, i64 0, i64 %indvars.iv354, !dbg !524
  %52 = load i8** %arrayidx189, align 8, !dbg !524, !tbaa !363
  %call190 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str42, i64 0, i64 0), i8* %52) #7, !dbg !524
  %indvars.iv.next355 = add i64 %indvars.iv354, 1, !dbg !522
  %lftr.wideiv356 = trunc i64 %indvars.iv.next355 to i32, !dbg !522
  %exitcond357 = icmp eq i32 %lftr.wideiv356, 2, !dbg !522
  br i1 %exitcond357, label %for.end193, label %for.body187, !dbg !522

for.end193:                                       ; preds = %for.body187
  %53 = tail call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str43, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %fp), !dbg !525
  %indvars.iv.next359 = add i64 %indvars.iv358, 1, !dbg !459
  %lftr.wideiv360 = trunc i64 %indvars.iv.next359 to i32, !dbg !459
  %exitcond361 = icmp eq i32 %lftr.wideiv360, %nf, !dbg !459
  br i1 %exitcond361, label %sw.epilog, label %for.body130, !dbg !459

sw.epilog:                                        ; preds = %for.cond128.preheader, %for.end193, %for.cond53.preheader, %for.end122, %for.cond.preheader, %for.end47, %entry
  ret void, !dbg !526
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @fn2ftp(i8* %fn) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !193), !dbg !527
  %tobool = icmp eq i8* %fn, null, !dbg !528
  br i1 %tobool, label %return, label %if.end, !dbg !528

if.end:                                           ; preds = %entry
  %call = tail call i64 @strlen(i8* %fn) #8, !dbg !529
  %conv = trunc i64 %call to i32, !dbg !529
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !195), !dbg !529
  %cmp = icmp sgt i32 %conv, 3, !dbg !530
  br i1 %cmp, label %land.lhs.true, label %return, !dbg !530

land.lhs.true:                                    ; preds = %if.end
  %sub = shl i64 %call, 32, !dbg !530
  %sext = add i64 %sub, -17179869184, !dbg !530
  %idxprom = ashr exact i64 %sext, 32, !dbg !530
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom, !dbg !530
  %0 = load i8* %arrayidx, align 1, !dbg !530, !tbaa !364
  %cmp3 = icmp eq i8 %0, 46, !dbg !530
  br i1 %cmp3, label %for.body, label %return, !dbg !530

for.body:                                         ; preds = %land.lhs.true, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %land.lhs.true ]
  %i.031 = phi i32 [ %inc, %for.inc ], [ 0, %land.lhs.true ]
  %ext = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %indvars.iv, i32 1, !dbg !531
  %1 = load i8** %ext, align 8, !dbg !531, !tbaa !363
  tail call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !197), !dbg !531
  %cmp14 = icmp eq i8* %1, null, !dbg !531
  br i1 %cmp14, label %for.inc, label %if.then16, !dbg !531

if.then16:                                        ; preds = %for.body
  %call17 = tail call i32 @strcasecmp(i8* %arrayidx, i8* %1) #8, !dbg !533
  %cmp18 = icmp eq i32 %call17, 0, !dbg !533
  br i1 %cmp18, label %return, label %for.inc, !dbg !533

for.inc:                                          ; preds = %for.body, %if.then16
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !534
  %inc = add nsw i32 %i.031, 1, !dbg !534
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !194), !dbg !534
  %2 = trunc i64 %indvars.iv.next to i32, !dbg !534
  %cmp10 = icmp slt i32 %2, 46, !dbg !534
  br i1 %cmp10, label %for.body, label %return, !dbg !534

return:                                           ; preds = %for.inc, %if.then16, %if.end, %land.lhs.true, %entry
  %retval.0 = phi i32 [ 46, %entry ], [ 46, %land.lhs.true ], [ 46, %if.end ], [ %i.031, %if.then16 ], [ %inc, %for.inc ]
  ret i32 %retval.0, !dbg !535
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcasecmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define void @parse_file_args(i32* nocapture %argc, i8** nocapture %argv, i32 %nf, %struct.t_filenm* nocapture %fnm, i32 %bKeep) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %argc}, i64 0, metadata !203), !dbg !536
  tail call void @llvm.dbg.value(metadata !{i8** %argv}, i64 0, metadata !204), !dbg !536
  tail call void @llvm.dbg.value(metadata !{i32 %nf}, i64 0, metadata !205), !dbg !536
  tail call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !206), !dbg !536
  tail call void @llvm.dbg.value(metadata !{i32 %bKeep}, i64 0, metadata !207), !dbg !537
  tail call void @llvm.dbg.value(metadata !{i32 %nf}, i64 0, metadata !538) #6, !dbg !540
  tail call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !541) #6, !dbg !540
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !542) #6, !dbg !543
  %cmp32.i = icmp sgt i32 %nf, 0, !dbg !543
  br i1 %cmp32.i, label %for.body.i, label %for.end, !dbg !543

for.body.i:                                       ; preds = %entry, %for.inc.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ 0, %entry ]
  %ftp.i = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv.i, i32 0, !dbg !545
  %0 = load i32* %ftp.i, align 4, !dbg !545, !tbaa !382
  %idxprom1.i = sext i32 %0 to i64, !dbg !545
  %opt.i = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv.i, i32 1, !dbg !547
  %1 = load i8** %opt.i, align 8, !dbg !547, !tbaa !363
  %cmp5.i = icmp eq i8* %1, null, !dbg !547
  br i1 %cmp5.i, label %if.then.i, label %for.inc.i, !dbg !547

if.then.i:                                        ; preds = %for.body.i
  %defopt.i = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom1.i, i32 3, !dbg !548
  %2 = load i8** %defopt.i, align 8, !dbg !548, !tbaa !363
  %cmp6.i = icmp eq i8* %2, null, !dbg !548
  br i1 %cmp6.i, label %if.then7.i, label %if.else.i, !dbg !548

if.then7.i:                                       ; preds = %if.then.i
  %ext.i = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom1.i, i32 1, !dbg !550
  %3 = load i8** %ext.i, align 8, !dbg !550, !tbaa !363
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([45 x i8]* @.str52, i64 0, i64 0), i8* %3, i32 %0) #7, !dbg !550
  br label %for.inc.i, !dbg !550

if.else.i:                                        ; preds = %if.then.i
  store i8* %2, i8** %opt.i, align 8, !dbg !551, !tbaa !363
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then7.i, %for.body.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !543
  %lftr.wideiv151 = trunc i64 %indvars.iv.next.i to i32, !dbg !543
  %exitcond152 = icmp eq i32 %lftr.wideiv151, %nf, !dbg !543
  br i1 %exitcond152, label %for.cond.preheader, label %for.body.i, !dbg !543

for.cond.preheader:                               ; preds = %for.inc.i
  br i1 %cmp32.i, label %for.body, label %for.end, !dbg !552

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv147 = phi i64 [ %indvars.iv.next148, %for.body ], [ 0, %for.cond.preheader ]
  %flag = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv147, i32 3, !dbg !554
  %4 = load i64* %flag, align 8, !dbg !554, !tbaa !443
  %and = and i64 %4, -2, !dbg !554
  store i64 %and, i64* %flag, align 8, !dbg !554, !tbaa !443
  %indvars.iv.next148 = add i64 %indvars.iv147, 1, !dbg !552
  %lftr.wideiv149 = trunc i64 %indvars.iv.next148 to i32, !dbg !552
  %exitcond150 = icmp eq i32 %lftr.wideiv149, %nf, !dbg !552
  br i1 %exitcond150, label %for.end, label %for.body, !dbg !552

for.end:                                          ; preds = %entry, %for.body, %for.cond.preheader
  %5 = load i32* %argc, align 4, !dbg !555, !tbaa !382
  %cmp4 = icmp sgt i32 %5, 1, !dbg !555
  br i1 %cmp4, label %if.then, label %if.end72, !dbg !555

if.then:                                          ; preds = %for.end
  %add = add nsw i32 %5, 1, !dbg !556
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str12, i64 0, i64 0), i32 520, i32 %add, i32 4) #7, !dbg !556
  %6 = bitcast i8* %call to i32*, !dbg !556
  tail call void @llvm.dbg.value(metadata !{i32* %6}, i64 0, metadata !210), !dbg !556
  tail call void @llvm.dbg.value(metadata !558, i64 0, metadata !208), !dbg !559
  br label %do.body, !dbg !560

do.body:                                          ; preds = %for.end45, %if.then
  %i.1 = phi i32 [ 1, %if.then ], [ %inc49.i.2, %for.end45 ]
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !209), !dbg !561
  br i1 %cmp32.i, label %for.body7.lr.ph, label %for.end45, !dbg !561

for.body7.lr.ph:                                  ; preds = %do.body
  %idxprom8 = sext i32 %i.1 to i64, !dbg !564
  %arrayidx9 = getelementptr inbounds i8** %argv, i64 %idxprom8, !dbg !564
  %7 = load i8** %arrayidx9, align 8, !dbg !564, !tbaa !363
  br label %for.body7, !dbg !561

for.cond5:                                        ; preds = %for.body7
  %8 = trunc i64 %indvars.iv.next146 to i32, !dbg !561
  %cmp6 = icmp slt i32 %8, %nf, !dbg !561
  br i1 %cmp6, label %for.body7, label %for.end45, !dbg !561

for.body7:                                        ; preds = %for.body7.lr.ph, %for.cond5
  %indvars.iv145 = phi i64 [ 0, %for.body7.lr.ph ], [ %indvars.iv.next146, %for.cond5 ]
  %j.0137 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc44, %for.cond5 ]
  %arrayidx11 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv145, !dbg !564
  %opt = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv145, i32 1, !dbg !564
  %9 = load i8** %opt, align 8, !dbg !564, !tbaa !363
  %call12 = tail call i32 @strcmp(i8* %7, i8* %9) #8, !dbg !564
  %cmp13 = icmp eq i32 %call12, 0, !dbg !564
  %indvars.iv.next146 = add i64 %indvars.iv145, 1, !dbg !561
  %inc44 = add nsw i32 %j.0137, 1, !dbg !561
  tail call void @llvm.dbg.value(metadata !{i32 %inc44}, i64 0, metadata !209), !dbg !561
  br i1 %cmp13, label %if.then14, label %for.cond5, !dbg !564

if.then14:                                        ; preds = %for.body7
  %flag17 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv145, i32 3, !dbg !566
  %10 = load i64* %flag17, align 8, !dbg !566, !tbaa !443
  %or = or i64 %10, 1, !dbg !566
  store i64 %or, i64* %flag17, align 8, !dbg !566, !tbaa !443
  %arrayidx22 = getelementptr inbounds i32* %6, i64 %idxprom8, !dbg !568
  store i32 1, i32* %arrayidx22, align 4, !dbg !568, !tbaa !382
  %inc23 = add nsw i32 %i.1, 1, !dbg !569
  tail call void @llvm.dbg.value(metadata !{i32 %inc23}, i64 0, metadata !208), !dbg !569
  %11 = load i32* %argc, align 4, !dbg !570, !tbaa !382
  %cmp24 = icmp slt i32 %inc23, %11, !dbg !570
  br i1 %cmp24, label %land.lhs.true, label %if.else, !dbg !570

land.lhs.true:                                    ; preds = %if.then14
  %idxprom25 = sext i32 %inc23 to i64, !dbg !570
  %arrayidx26 = getelementptr inbounds i8** %argv, i64 %idxprom25, !dbg !570
  %12 = load i8** %arrayidx26, align 8, !dbg !570, !tbaa !363
  %13 = load i8* %12, align 1, !dbg !570, !tbaa !364
  %cmp28 = icmp eq i8 %13, 45, !dbg !570
  br i1 %cmp28, label %if.else, label %if.then30, !dbg !570

if.then30:                                        ; preds = %land.lhs.true
  tail call fastcc void @set_filenm(%struct.t_filenm* %arrayidx11, i8* %12, i32 1) #9, !dbg !571
  %arrayidx36 = getelementptr inbounds i32* %6, i64 %idxprom25, !dbg !573
  store i32 1, i32* %arrayidx36, align 4, !dbg !573, !tbaa !382
  %inc37 = add nsw i32 %i.1, 2, !dbg !574
  tail call void @llvm.dbg.value(metadata !{i32 %inc37}, i64 0, metadata !208), !dbg !574
  br label %for.end45, !dbg !575

if.else:                                          ; preds = %land.lhs.true, %if.then14
  %fn = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv145, i32 2, !dbg !576
  %14 = load i8** %fn, align 8, !dbg !576, !tbaa !363
  tail call fastcc void @set_filenm(%struct.t_filenm* %arrayidx11, i8* %14, i32 0) #9, !dbg !576
  br label %for.end45

for.end45:                                        ; preds = %do.body, %for.cond5, %if.then30, %if.else
  %j.0135 = phi i32 [ %j.0137, %if.then30 ], [ %j.0137, %if.else ], [ 0, %do.body ], [ %inc44, %for.cond5 ]
  %i.2 = phi i32 [ %inc37, %if.then30 ], [ %inc23, %if.else ], [ %i.1, %do.body ], [ %i.1, %for.cond5 ]
  %cmp46 = icmp eq i32 %j.0135, %nf, !dbg !577
  %inc49 = zext i1 %cmp46 to i32, !dbg !577
  %inc49.i.2 = add nsw i32 %i.2, %inc49, !dbg !577
  %15 = load i32* %argc, align 4, !dbg !578, !tbaa !382
  %cmp51 = icmp slt i32 %inc49.i.2, %15, !dbg !578
  br i1 %cmp51, label %do.body, label %do.end, !dbg !578

do.end:                                           ; preds = %for.end45
  %tobool = icmp eq i32 %bKeep, 0, !dbg !579
  br i1 %tobool, label %for.cond54.preheader, label %if.end71, !dbg !579

for.cond54.preheader:                             ; preds = %do.end
  %cmp55131 = icmp slt i32 %15, 0, !dbg !580
  br i1 %cmp55131, label %for.end70, label %for.body57, !dbg !580

for.body57:                                       ; preds = %for.cond54.preheader, %for.inc68
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc68 ], [ 0, %for.cond54.preheader ]
  %j.1132 = phi i32 [ %j.2, %for.inc68 ], [ 0, %for.cond54.preheader ]
  %arrayidx59 = getelementptr inbounds i32* %6, i64 %indvars.iv, !dbg !583
  %16 = load i32* %arrayidx59, align 4, !dbg !583, !tbaa !382
  %tobool60 = icmp eq i32 %16, 0, !dbg !583
  br i1 %tobool60, label %if.then61, label %for.inc68, !dbg !583

if.then61:                                        ; preds = %for.body57
  %arrayidx63 = getelementptr inbounds i8** %argv, i64 %indvars.iv, !dbg !585
  %17 = load i8** %arrayidx63, align 8, !dbg !585, !tbaa !363
  %inc64 = add nsw i32 %j.1132, 1, !dbg !585
  tail call void @llvm.dbg.value(metadata !{i32 %inc64}, i64 0, metadata !209), !dbg !585
  %idxprom65 = sext i32 %j.1132 to i64, !dbg !585
  %arrayidx66 = getelementptr inbounds i8** %argv, i64 %idxprom65, !dbg !585
  store i8* %17, i8** %arrayidx66, align 8, !dbg !585, !tbaa !363
  br label %for.inc68, !dbg !585

for.inc68:                                        ; preds = %for.body57, %if.then61
  %j.2 = phi i32 [ %j.1132, %for.body57 ], [ %inc64, %if.then61 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !580
  %18 = trunc i64 %indvars.iv to i32, !dbg !580
  %cmp55 = icmp slt i32 %18, %15, !dbg !580
  br i1 %cmp55, label %for.body57, label %for.end70, !dbg !580

for.end70:                                        ; preds = %for.inc68, %for.cond54.preheader
  %j.1.lcssa = phi i32 [ 0, %for.cond54.preheader ], [ %j.2, %for.inc68 ]
  %sub = add nsw i32 %j.1.lcssa, -1, !dbg !586
  store i32 %sub, i32* %argc, align 4, !dbg !586, !tbaa !382
  br label %if.end71, !dbg !587

if.end71:                                         ; preds = %do.end, %for.end70
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str12, i64 0, i64 0), i32 552, i8* %call) #7, !dbg !588
  br label %if.end72, !dbg !589

if.end72:                                         ; preds = %if.end71, %for.end
  tail call void @llvm.dbg.value(metadata !{i32 %nf}, i64 0, metadata !590) #6, !dbg !592
  tail call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !593) #6, !dbg !592
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !594) #6, !dbg !595
  br i1 %cmp32.i, label %for.body.i125, label %set_filenms.exit, !dbg !595

for.body.i125:                                    ; preds = %if.end72, %for.inc.i130
  %indvars.iv.i124 = phi i64 [ %indvars.iv.next.i127, %for.inc.i130 ], [ 0, %if.end72 ]
  %flag.i = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv.i124, i32 3, !dbg !597
  %19 = load i64* %flag.i, align 8, !dbg !597, !tbaa !443
  %and.i = and i64 %19, 1, !dbg !597
  %cmp1.i = icmp eq i64 %and.i, 0, !dbg !597
  br i1 %cmp1.i, label %if.then.i126, label %for.inc.i130, !dbg !597

if.then.i126:                                     ; preds = %for.body.i125
  %arrayidx.i = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv.i124, !dbg !597
  %fn.i = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv.i124, i32 2, !dbg !598
  %20 = load i8** %fn.i, align 8, !dbg !598, !tbaa !363
  tail call fastcc void @set_filenm(%struct.t_filenm* %arrayidx.i, i8* %20, i32 0) #7, !dbg !598
  br label %for.inc.i130, !dbg !598

for.inc.i130:                                     ; preds = %if.then.i126, %for.body.i125
  %indvars.iv.next.i127 = add i64 %indvars.iv.i124, 1, !dbg !595
  %lftr.wideiv = trunc i64 %indvars.iv.next.i127 to i32, !dbg !595
  %exitcond = icmp eq i32 %lftr.wideiv, %nf, !dbg !595
  br i1 %exitcond, label %set_filenms.exit, label %for.body.i125, !dbg !595

set_filenms.exit:                                 ; preds = %for.inc.i130, %if.end72
  ret void, !dbg !599
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @set_filenm(%struct.t_filenm* nocapture %fnm, i8* %name, i32 %bCanNotOverride) #0 {
entry:
  %buf.i = alloca [256 x i8], align 16
  %buf2.i = alloca [256 x i8], align 16
  %buf = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !294), !dbg !600
  call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !295), !dbg !600
  call void @llvm.dbg.value(metadata !{i32 %bCanNotOverride}, i64 0, metadata !296), !dbg !600
  %0 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0, !dbg !601
  call void @llvm.lifetime.start(i64 256, i8* %0) #6, !dbg !601
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %buf}, metadata !297), !dbg !601
  %ftp = getelementptr inbounds %struct.t_filenm* %fnm, i64 0, i32 0, !dbg !602
  %1 = load i32* %ftp, align 4, !dbg !602, !tbaa !382
  %2 = icmp ugt i32 %1, 45, !dbg !602
  br i1 %2, label %if.then, label %if.end, !dbg !602

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str50, i64 0, i64 0), i32 %1) #7, !dbg !603
  br label %if.end, !dbg !603

if.end:                                           ; preds = %entry, %if.then
  %flag = getelementptr inbounds %struct.t_filenm* %fnm, i64 0, i32 3, !dbg !604
  %3 = load i64* %flag, align 8, !dbg !604, !tbaa !443
  %and = and i64 %3, 2, !dbg !604
  %tobool = icmp eq i64 %and, 0, !dbg !604
  %tobool4 = icmp eq i8* %name, null, !dbg !604
  %or.cond81 = or i1 %tobool, %tobool4, !dbg !604
  br i1 %or.cond81, label %if.end28, label %land.lhs.true5, !dbg !604

land.lhs.true5:                                   ; preds = %if.end
  %call = call i32 @fexist(i8* %name) #7, !dbg !604
  %tobool6 = icmp eq i32 %call, 0, !dbg !604
  br i1 %tobool6, label %if.end28, label %if.then7, !dbg !604

if.then7:                                         ; preds = %land.lhs.true5
  %call8 = call i64 @strlen(i8* %name) #8, !dbg !605
  %conv = trunc i64 %call8 to i32, !dbg !605
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !299), !dbg !605
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !298), !dbg !607
  %sext = shl i64 %call8, 32, !dbg !609
  %idx.ext = ashr exact i64 %sext, 32, !dbg !609
  br label %for.body, !dbg !607

for.body:                                         ; preds = %if.then7, %for.inc
  %indvars.iv = phi i64 [ 0, %if.then7 ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds [2 x i8*]* @z_ext, i64 0, i64 %indvars.iv, !dbg !611
  %4 = load i8** %arrayidx, align 8, !dbg !611, !tbaa !363
  %call11 = call i64 @strlen(i8* %4) #8, !dbg !611
  %conv12 = trunc i64 %call11 to i32, !dbg !611
  call void @llvm.dbg.value(metadata !{i32 %conv12}, i64 0, metadata !300), !dbg !611
  %cmp13 = icmp sgt i32 %conv, %conv12, !dbg !612
  br i1 %cmp13, label %if.then15, label %for.inc, !dbg !612

if.then15:                                        ; preds = %for.body
  %sext78 = shl i64 %call11, 32, !dbg !609
  %idx.ext16 = ashr exact i64 %sext78, 32, !dbg !609
  %add.ptr.sum = sub i64 %idx.ext, %idx.ext16, !dbg !609
  %add.ptr17 = getelementptr inbounds i8* %name, i64 %add.ptr.sum, !dbg !609
  %call20 = call i32 @strcasecmp(i8* %add.ptr17, i8* %4) #8, !dbg !609
  %cmp21 = icmp eq i32 %call20, 0, !dbg !609
  br i1 %cmp21, label %if.then23, label %for.inc, !dbg !609

if.then23:                                        ; preds = %if.then15
  %sub = sub i64 %call8, %call11, !dbg !613
  %sext79 = shl i64 %sub, 32, !dbg !613
  %idxprom24 = ashr exact i64 %sext79, 32, !dbg !613
  %arrayidx25 = getelementptr inbounds i8* %name, i64 %idxprom24, !dbg !613
  store i8 0, i8* %arrayidx25, align 1, !dbg !613, !tbaa !364
  br label %if.end28, !dbg !615

for.inc:                                          ; preds = %for.body, %if.then15
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !607
  %5 = trunc i64 %indvars.iv.next to i32, !dbg !607
  %cmp9 = icmp slt i32 %5, 2, !dbg !607
  br i1 %cmp9, label %for.body, label %if.end28, !dbg !607

if.end28:                                         ; preds = %for.inc, %land.lhs.true5, %if.end, %if.then23
  %6 = load i32* %ftp, align 4, !dbg !616, !tbaa !382
  %idxprom30 = sext i32 %6 to i64, !dbg !616
  %ntps = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom30, i32 5, !dbg !616
  %7 = load i32* %ntps, align 8, !dbg !616, !tbaa !382
  %tobool32 = icmp eq i32 %7, 0, !dbg !616
  br i1 %tobool32, label %if.else, label %if.then33, !dbg !616

if.then33:                                        ; preds = %if.end28
  call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !617) #6, !dbg !619
  call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !620) #6, !dbg !619
  call void @llvm.dbg.value(metadata !{i32 %bCanNotOverride}, i64 0, metadata !621) #6, !dbg !619
  %8 = getelementptr inbounds [256 x i8]* %buf.i, i64 0, i64 0, !dbg !622
  call void @llvm.lifetime.start(i64 256, i8* %8) #6, !dbg !622
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %buf.i}, metadata !315) #6, !dbg !622
  %9 = getelementptr inbounds [256 x i8]* %buf2.i, i64 0, i64 0, !dbg !622
  call void @llvm.lifetime.start(i64 256, i8* %9) #6, !dbg !622
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %buf2.i}, metadata !316) #6, !dbg !622
  call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !623) #6, !dbg !624
  %tps.i = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom30, i32 6, !dbg !625
  %10 = load i32** %tps.i, align 8, !dbg !625, !tbaa !363
  call void @llvm.dbg.value(metadata !{i32* %10}, i64 0, metadata !626) #6, !dbg !625
  %cmp4.i = icmp eq i32* %10, null, !dbg !627
  br i1 %cmp4.i, label %if.then.i, label %if.end.i, !dbg !627

if.then.i:                                        ; preds = %if.then33
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str12, i64 0, i64 0), i32 427) #7, !dbg !628
  br label %if.end.i, !dbg !628

if.end.i:                                         ; preds = %if.then.i, %if.then33
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !629) #6, !dbg !630
  br i1 %tobool4, label %if.else.i, label %land.lhs.true.i, !dbg !631

land.lhs.true.i:                                  ; preds = %if.end.i
  %tobool5.i = icmp ne i32 %bCanNotOverride, 0, !dbg !631
  %11 = load i8** @default_file_name, align 8, !dbg !631, !tbaa !363
  %cmp7.i = icmp eq i8* %11, null, !dbg !631
  %or.cond.i = or i1 %tobool5.i, %cmp7.i, !dbg !631
  br i1 %or.cond.i, label %if.then8.i, label %if.else.i, !dbg !631

if.then8.i:                                       ; preds = %land.lhs.true.i
  %call.i = call i8* @strcpy(i8* %8, i8* %name) #7, !dbg !632
  %call9.i = call i32 @fn2ftp(i8* %name) #7, !dbg !634
  call void @llvm.dbg.value(metadata !{i32 %call9.i}, i64 0, metadata !635) #6, !dbg !634
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !636) #6, !dbg !637
  %cmp1089.i = icmp sgt i32 %7, 0, !dbg !637
  br i1 %cmp1089.i, label %for.body.i, label %if.then52.i, !dbg !637

for.body.i:                                       ; preds = %if.then8.i, %for.body.i
  %indvars.iv93.i = phi i64 [ %indvars.iv.next94.i, %for.body.i ], [ 0, %if.then8.i ]
  %arrayidx13.i = getelementptr inbounds i32* %10, i64 %indvars.iv93.i, !dbg !639
  %12 = load i32* %arrayidx13.i, align 4, !dbg !639, !tbaa !382
  call void @llvm.dbg.value(metadata !558, i64 0, metadata !629) #6, !dbg !640
  %indvars.iv.next94.i = add i64 %indvars.iv93.i, 1, !dbg !637
  %13 = trunc i64 %indvars.iv.next94.i to i32, !dbg !637
  %cmp10.i = icmp slt i32 %13, %7, !dbg !637
  %lnot.i = icmp ne i32 %call9.i, %12, !dbg !637
  %or.cond79.i = and i1 %cmp10.i, %lnot.i, !dbg !637
  br i1 %or.cond79.i, label %for.body.i, label %if.end21.i, !dbg !637

if.else.i:                                        ; preds = %land.lhs.true.i, %if.end.i
  %14 = load i32* %ftp, align 4, !dbg !641, !tbaa !382
  call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !642) #6, !dbg !643
  %15 = icmp ult i32 %14, 46, !dbg !644
  br i1 %15, label %if.then.i.i, label %if.end21.thread.i, !dbg !644

if.then.i.i:                                      ; preds = %if.else.i
  %idxprom.i.i = sext i32 %14 to i64, !dbg !645
  %defnm.i.i = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom.i.i, i32 2, !dbg !645
  %16 = load i8** %defnm.i.i, align 8, !dbg !645, !tbaa !363
  %strlen.i.i = call i64 @strlen(i8* %16) #6, !dbg !645
  %leninc.i.i = add i64 %strlen.i.i, 1, !dbg !645
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([256 x i8]* @ftp2defnm.buf, i64 0, i64 0), i8* %16, i64 %leninc.i.i, i32 1, i1 false) #6, !dbg !645
  br label %if.end21.thread.i, !dbg !646

if.end21.thread.i:                                ; preds = %if.then.i.i, %if.else.i
  %retval.0.i.i = phi i8* [ getelementptr inbounds ([256 x i8]* @ftp2defnm.buf, i64 0, i64 0), %if.then.i.i ], [ null, %if.else.i ]
  %call20.i = call i8* @strcpy(i8* %8, i8* %retval.0.i.i) #7, !dbg !641
  br label %land.lhs.true23.i, !dbg !647

if.end21.i:                                       ; preds = %for.body.i
  br i1 %lnot.i, label %land.lhs.true23.i, label %set_grpfnm.exit, !dbg !647

land.lhs.true23.i:                                ; preds = %if.end21.i, %if.end21.thread.i
  %17 = load i64* %flag, align 8, !dbg !647, !tbaa !443
  %and.i = and i64 %17, 2, !dbg !647
  %tobool24.i = icmp ne i64 %and.i, 0, !dbg !647
  %cmp2786.i = icmp sgt i32 %7, 0, !dbg !648
  %or.cond102.i = and i1 %tobool24.i, %cmp2786.i, !dbg !647
  br i1 %or.cond102.i, label %for.body32.i, label %if.then52.i, !dbg !647

for.body32.i:                                     ; preds = %land.lhs.true23.i, %for.inc47.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc47.i ], [ 0, %land.lhs.true23.i ]
  %arrayidx34.i = getelementptr inbounds i32* %10, i64 %indvars.iv.i, !dbg !651
  %18 = load i32* %arrayidx34.i, align 4, !dbg !651, !tbaa !382
  call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !635) #6, !dbg !651
  %call37.i = call i8* @strcpy(i8* %9, i8* %8) #7, !dbg !653
  call fastcc void @set_extension(i8* %9, i32 %18) #7, !dbg !654
  %call40.i = call i32 @fexist(i8* %9) #7, !dbg !655
  %tobool41.i = icmp eq i32 %call40.i, 0, !dbg !655
  br i1 %tobool41.i, label %for.inc47.i, label %if.end50.i, !dbg !655

for.inc47.i:                                      ; preds = %for.body32.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !648
  %19 = trunc i64 %indvars.iv.next.i to i32, !dbg !648
  %cmp27.i = icmp slt i32 %19, %7, !dbg !648
  br i1 %cmp27.i, label %for.body32.i, label %if.then52.i, !dbg !648

if.end50.i:                                       ; preds = %for.body32.i
  call void @llvm.dbg.value(metadata !558, i64 0, metadata !629) #6, !dbg !656
  %call45.i = call i8* @strcpy(i8* %8, i8* %9) #7, !dbg !658
  br label %set_grpfnm.exit, !dbg !659

if.then52.i:                                      ; preds = %for.inc47.i, %if.then8.i, %land.lhs.true23.i
  %20 = load i32* %10, align 4, !dbg !660, !tbaa !382
  call fastcc void @set_extension(i8* %8, i32 %20) #7, !dbg !660
  br label %set_grpfnm.exit, !dbg !660

set_grpfnm.exit:                                  ; preds = %if.end21.i, %if.end50.i, %if.then52.i
  %call57.i = call noalias i8* @strdup(i8* %8) #7, !dbg !661
  %fn.i = getelementptr inbounds %struct.t_filenm* %fnm, i64 0, i32 2, !dbg !661
  store i8* %call57.i, i8** %fn.i, align 8, !dbg !661, !tbaa !363
  call void @llvm.lifetime.end(i64 256, i8* %9) #6, !dbg !662
  call void @llvm.lifetime.end(i64 256, i8* %8) #6, !dbg !662
  br label %if.end54, !dbg !618

if.else:                                          ; preds = %if.end28
  br i1 %tobool4, label %if.else43, label %land.lhs.true36, !dbg !663

land.lhs.true36:                                  ; preds = %if.else
  %tobool37 = icmp ne i32 %bCanNotOverride, 0, !dbg !663
  %21 = load i8** @default_file_name, align 8, !dbg !663, !tbaa !363
  %cmp39 = icmp eq i8* %21, null, !dbg !663
  %or.cond = or i1 %tobool37, %cmp39, !dbg !663
  br i1 %or.cond, label %if.then41, label %if.else43, !dbg !663

if.then41:                                        ; preds = %land.lhs.true36
  %call42 = call i8* @strcpy(i8* %0, i8* %name) #7, !dbg !665
  br label %if.end49, !dbg !665

if.else43:                                        ; preds = %if.else, %land.lhs.true36
  %defnm = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom30, i32 2, !dbg !666
  %22 = load i8** %defnm, align 8, !dbg !666, !tbaa !363
  %call48 = call i8* @strcpy(i8* %0, i8* %22) #7, !dbg !666
  br label %if.end49

if.end49:                                         ; preds = %if.else43, %if.then41
  %23 = load i32* %ftp, align 4, !dbg !667, !tbaa !382
  call fastcc void @set_extension(i8* %0, i32 %23) #9, !dbg !667
  %call53 = call noalias i8* @strdup(i8* %0) #7, !dbg !668
  %fn = getelementptr inbounds %struct.t_filenm* %fnm, i64 0, i32 2, !dbg !668
  store i8* %call53, i8** %fn, align 8, !dbg !668, !tbaa !363
  br label %if.end54

if.end54:                                         ; preds = %if.end49, %set_grpfnm.exit
  call void @llvm.lifetime.end(i64 256, i8* %0) #6, !dbg !669
  ret void, !dbg !669
}

; Function Attrs: nounwind optsize uwtable
define i8* @opt2fn(i8* %opt, i32 %nfile, %struct.t_filenm* nocapture %fnm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %opt}, i64 0, metadata !215), !dbg !670
  tail call void @llvm.dbg.value(metadata !{i32 %nfile}, i64 0, metadata !216), !dbg !670
  tail call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !217), !dbg !670
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !218), !dbg !671
  %cmp10 = icmp sgt i32 %nfile, 0, !dbg !671
  br i1 %cmp10, label %for.body, label %for.end, !dbg !671

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32, !dbg !671
  %cmp = icmp slt i32 %0, %nfile, !dbg !671
  br i1 %cmp, label %for.body, label %for.end, !dbg !671

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %opt1 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 1, !dbg !673
  %1 = load i8** %opt1, align 8, !dbg !673, !tbaa !363
  %call = tail call i32 @strcmp(i8* %opt, i8* %1) #8, !dbg !673
  %cmp2 = icmp eq i32 %call, 0, !dbg !673
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !671
  br i1 %cmp2, label %if.then, label %for.cond, !dbg !673

if.then:                                          ; preds = %for.body
  %fn = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 2, !dbg !674
  %2 = load i8** %fn, align 8, !dbg !674, !tbaa !363
  br label %return, !dbg !674

for.end:                                          ; preds = %for.cond, %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !675, !tbaa !363
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([14 x i8]* @.str45, i64 0, i64 0), i8* %opt) #7, !dbg !675
  br label %return, !dbg !676

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi i8* [ %2, %if.then ], [ null, %for.end ]
  ret i8* %retval.0, !dbg !677
}

; Function Attrs: nounwind optsize uwtable
define i8* @ftp2fn(i32 %ftp, i32 %nfile, %struct.t_filenm* nocapture %fnm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %ftp}, i64 0, metadata !223), !dbg !678
  tail call void @llvm.dbg.value(metadata !{i32 %nfile}, i64 0, metadata !224), !dbg !678
  tail call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !225), !dbg !678
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !226), !dbg !679
  %cmp11 = icmp sgt i32 %nfile, 0, !dbg !679
  br i1 %cmp11, label %for.body, label %for.end, !dbg !679

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32, !dbg !679
  %cmp = icmp slt i32 %0, %nfile, !dbg !679
  br i1 %cmp, label %for.body, label %for.end, !dbg !679

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %ftp1 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 0, !dbg !681
  %1 = load i32* %ftp1, align 4, !dbg !681, !tbaa !382
  %cmp2 = icmp eq i32 %1, %ftp, !dbg !681
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !679
  br i1 %cmp2, label %if.then, label %for.cond, !dbg !681

if.then:                                          ; preds = %for.body
  %fn = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 2, !dbg !682
  %2 = load i8** %fn, align 8, !dbg !682, !tbaa !363
  br label %return, !dbg !682

for.end:                                          ; preds = %for.cond, %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !683, !tbaa !363
  %idxprom5 = sext i32 %ftp to i64, !dbg !683
  %ext = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom5, i32 1, !dbg !683
  %4 = load i8** %ext, align 8, !dbg !683, !tbaa !363
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([24 x i8]* @.str46, i64 0, i64 0), i8* %4) #7, !dbg !683
  br label %return, !dbg !684

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi i8* [ %2, %if.then ], [ null, %for.end ]
  ret i8* %retval.0, !dbg !685
}

; Function Attrs: nounwind optsize uwtable
define i32 @ftp2bSet(i32 %ftp, i32 %nfile, %struct.t_filenm* nocapture %fnm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %ftp}, i64 0, metadata !231), !dbg !686
  tail call void @llvm.dbg.value(metadata !{i32 %nfile}, i64 0, metadata !232), !dbg !686
  tail call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !233), !dbg !686
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !234), !dbg !687
  %cmp12 = icmp sgt i32 %nfile, 0, !dbg !687
  br i1 %cmp12, label %for.body, label %for.end, !dbg !687

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32, !dbg !687
  %cmp = icmp slt i32 %0, %nfile, !dbg !687
  br i1 %cmp, label %for.body, label %for.end, !dbg !687

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %ftp1 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 0, !dbg !689
  %1 = load i32* %ftp1, align 4, !dbg !689, !tbaa !382
  %cmp2 = icmp eq i32 %1, %ftp, !dbg !689
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !687
  br i1 %cmp2, label %if.then, label %for.cond, !dbg !689

if.then:                                          ; preds = %for.body
  %flag = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 3, !dbg !690
  %2 = load i64* %flag, align 8, !dbg !690, !tbaa !443
  %.tr = trunc i64 %2 to i32, !dbg !690
  %conv = and i32 %.tr, 1, !dbg !690
  br label %return, !dbg !690

for.end:                                          ; preds = %for.cond, %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !691, !tbaa !363
  %idxprom6 = sext i32 %ftp to i64, !dbg !691
  %ext = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom6, i32 1, !dbg !691
  %4 = load i8** %ext, align 8, !dbg !691, !tbaa !363
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([26 x i8]* @.str47, i64 0, i64 0), i8* %4) #7, !dbg !691
  br label %return, !dbg !692

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %for.end ]
  ret i32 %retval.0, !dbg !693
}

; Function Attrs: nounwind optsize uwtable
define i32 @opt2bSet(i8* %opt, i32 %nfile, %struct.t_filenm* nocapture %fnm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %opt}, i64 0, metadata !239), !dbg !694
  tail call void @llvm.dbg.value(metadata !{i32 %nfile}, i64 0, metadata !240), !dbg !694
  tail call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !241), !dbg !694
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !242), !dbg !695
  %cmp11 = icmp sgt i32 %nfile, 0, !dbg !695
  br i1 %cmp11, label %for.body, label %for.end, !dbg !695

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32, !dbg !695
  %cmp = icmp slt i32 %0, %nfile, !dbg !695
  br i1 %cmp, label %for.body, label %for.end, !dbg !695

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %opt1 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 1, !dbg !697
  %1 = load i8** %opt1, align 8, !dbg !697, !tbaa !363
  %call = tail call i32 @strcmp(i8* %opt, i8* %1) #8, !dbg !697
  %cmp2 = icmp eq i32 %call, 0, !dbg !697
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !695
  br i1 %cmp2, label %if.then, label %for.cond, !dbg !697

if.then:                                          ; preds = %for.body
  %flag = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 3, !dbg !698
  %2 = load i64* %flag, align 8, !dbg !698, !tbaa !443
  %.tr = trunc i64 %2 to i32, !dbg !698
  %conv = and i32 %.tr, 1, !dbg !698
  br label %return, !dbg !698

for.end:                                          ; preds = %for.cond, %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !699, !tbaa !363
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([14 x i8]* @.str45, i64 0, i64 0), i8* %opt) #7, !dbg !699
  br label %return, !dbg !700

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %for.end ]
  ret i32 %retval.0, !dbg !701
}

; Function Attrs: nounwind optsize uwtable
define i8* @opt2fn_null(i8* %opt, i32 %nfile, %struct.t_filenm* nocapture %fnm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %opt}, i64 0, metadata !245), !dbg !702
  tail call void @llvm.dbg.value(metadata !{i32 %nfile}, i64 0, metadata !246), !dbg !702
  tail call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !247), !dbg !702
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !248), !dbg !703
  %cmp23 = icmp sgt i32 %nfile, 0, !dbg !703
  br i1 %cmp23, label %for.body, label %for.end, !dbg !703

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32, !dbg !703
  %cmp = icmp slt i32 %0, %nfile, !dbg !703
  br i1 %cmp, label %for.body, label %for.end, !dbg !703

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %opt1 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 1, !dbg !705
  %1 = load i8** %opt1, align 8, !dbg !705, !tbaa !363
  %call = tail call i32 @strcmp(i8* %opt, i8* %1) #8, !dbg !705
  %cmp2 = icmp eq i32 %call, 0, !dbg !705
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !703
  br i1 %cmp2, label %if.then, label %for.cond, !dbg !705

if.then:                                          ; preds = %for.body
  %flag = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 3, !dbg !706
  %2 = load i64* %flag, align 8, !dbg !706, !tbaa !443
  %3 = and i64 %2, 9, !dbg !706
  %4 = icmp eq i64 %3, 8, !dbg !706
  br i1 %4, label %return, label %if.else, !dbg !706

if.else:                                          ; preds = %if.then
  %fn = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 2, !dbg !708
  %5 = load i8** %fn, align 8, !dbg !708, !tbaa !363
  br label %return, !dbg !708

for.end:                                          ; preds = %for.cond, %entry
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !709, !tbaa !363
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([14 x i8]* @.str45, i64 0, i64 0), i8* %opt) #7, !dbg !709
  br label %return, !dbg !710

return:                                           ; preds = %if.then, %for.end, %if.else
  %retval.0 = phi i8* [ %5, %if.else ], [ null, %for.end ], [ null, %if.then ]
  ret i8* %retval.0, !dbg !711
}

; Function Attrs: nounwind optsize uwtable
define i8* @ftp2fn_null(i32 %ftp, i32 %nfile, %struct.t_filenm* nocapture %fnm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %ftp}, i64 0, metadata !251), !dbg !712
  tail call void @llvm.dbg.value(metadata !{i32 %nfile}, i64 0, metadata !252), !dbg !712
  tail call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !253), !dbg !712
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !254), !dbg !713
  %cmp24 = icmp sgt i32 %nfile, 0, !dbg !713
  br i1 %cmp24, label %for.body, label %for.end, !dbg !713

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32, !dbg !713
  %cmp = icmp slt i32 %0, %nfile, !dbg !713
  br i1 %cmp, label %for.body, label %for.end, !dbg !713

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %ftp1 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 0, !dbg !715
  %1 = load i32* %ftp1, align 4, !dbg !715, !tbaa !382
  %cmp2 = icmp eq i32 %1, %ftp, !dbg !715
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !713
  br i1 %cmp2, label %if.then, label %for.cond, !dbg !715

if.then:                                          ; preds = %for.body
  %flag = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 3, !dbg !716
  %2 = load i64* %flag, align 8, !dbg !716, !tbaa !443
  %3 = and i64 %2, 9, !dbg !716
  %4 = icmp eq i64 %3, 8, !dbg !716
  br i1 %4, label %return, label %if.else, !dbg !716

if.else:                                          ; preds = %if.then
  %fn = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 2, !dbg !718
  %5 = load i8** %fn, align 8, !dbg !718, !tbaa !363
  br label %return, !dbg !718

for.end:                                          ; preds = %for.cond, %entry
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !719, !tbaa !363
  %idxprom14 = sext i32 %ftp to i64, !dbg !719
  %ext = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom14, i32 1, !dbg !719
  %7 = load i8** %ext, align 8, !dbg !719, !tbaa !363
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([24 x i8]* @.str46, i64 0, i64 0), i8* %7) #7, !dbg !719
  br label %return, !dbg !720

return:                                           ; preds = %if.then, %for.end, %if.else
  %retval.0 = phi i8* [ %5, %if.else ], [ null, %for.end ], [ null, %if.then ]
  ret i8* %retval.0, !dbg !721
}

; Function Attrs: nounwind optsize uwtable
define i8* @ftp2filter(i32 %ftp) #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32 %ftp}, i64 0, metadata !257), !dbg !722
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !258), !dbg !723
  store i8 0, i8* getelementptr inbounds ([128 x i8]* @ftp2filter.filter, i64 0, i64 0), align 16, !dbg !724, !tbaa !364
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !258), !dbg !725
  store i32 0, i32* %n, align 4, !dbg !725, !tbaa !382
  switch i32 %ftp, label %sw.default [
    i32 8, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 12, label %sw.bb3
    i32 11, label %sw.bb4
    i32 24, label %sw.bb5
  ], !dbg !726

sw.bb:                                            ; preds = %entry
  call fastcc void @add_filters(i32* %n, i32 2, i32* getelementptr inbounds ([2 x i32]* @enxs, i64 0, i64 0)) #9, !dbg !727
  br label %sw.epilog, !dbg !729

sw.bb1:                                           ; preds = %entry
  call fastcc void @add_filters(i32* %n, i32 7, i32* getelementptr inbounds ([7 x i32]* @trxs, i64 0, i64 0)) #9, !dbg !730
  br label %sw.epilog, !dbg !731

sw.bb2:                                           ; preds = %entry
  call fastcc void @add_filters(i32* %n, i32 2, i32* getelementptr inbounds ([2 x i32]* @trns, i64 0, i64 0)) #9, !dbg !732
  br label %sw.epilog, !dbg !733

sw.bb3:                                           ; preds = %entry
  call fastcc void @add_filters(i32* %n, i32 5, i32* getelementptr inbounds ([5 x i32]* @stos, i64 0, i64 0)) #9, !dbg !734
  br label %sw.epilog, !dbg !735

sw.bb4:                                           ; preds = %entry
  call fastcc void @add_filters(i32* %n, i32 8, i32* getelementptr inbounds ([8 x i32]* @stxs, i64 0, i64 0)) #9, !dbg !736
  br label %sw.epilog, !dbg !737

sw.bb5:                                           ; preds = %entry
  call fastcc void @add_filters(i32* %n, i32 3, i32* getelementptr inbounds ([3 x i32]* @tpxs, i64 0, i64 0)) #9, !dbg !738
  br label %sw.epilog, !dbg !739

sw.default:                                       ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{i32 %ftp}, i64 0, metadata !740), !dbg !742
  %0 = icmp ult i32 %ftp, 46, !dbg !743
  br i1 %0, label %if.then.i, label %ftp2ext.exit, !dbg !743

if.then.i:                                        ; preds = %sw.default
  %idxprom.i = sext i32 %ftp to i64, !dbg !744
  %ext.i = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom.i, i32 1, !dbg !744
  %1 = load i8** %ext.i, align 8, !dbg !744, !tbaa !363
  %add.ptr.i = getelementptr inbounds i8* %1, i64 1, !dbg !744
  br label %ftp2ext.exit, !dbg !744

ftp2ext.exit:                                     ; preds = %sw.default, %if.then.i
  %retval.0.i = phi i8* [ %add.ptr.i, %if.then.i ], [ getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), %sw.default ]
  %call6 = call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([128 x i8]* @ftp2filter.filter, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str48, i64 0, i64 0), i8* %retval.0.i) #7, !dbg !741
  br label %sw.epilog, !dbg !745

sw.epilog:                                        ; preds = %ftp2ext.exit, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret i8* getelementptr inbounds ([128 x i8]* @ftp2filter.filter, i64 0, i64 0), !dbg !746
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @add_filters(i32* nocapture %n, i32 %nf, i32* nocapture %ftp) #0 {
entry:
  %buf = alloca [8 x i8], align 1
  call void @llvm.dbg.value(metadata !747, i64 0, metadata !274), !dbg !748
  call void @llvm.dbg.declare(metadata !{[8 x i8]* %buf}, metadata !278), !dbg !749
  store i32 8072746, i32* bitcast ([128 x i8]* @ftp2filter.filter to i32*), align 16, !dbg !750
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !282), !dbg !751
  %cmp4 = icmp sgt i32 %nf, 0, !dbg !751
  br i1 %cmp4, label %for.body.lr.ph, label %for.end, !dbg !751

for.body.lr.ph:                                   ; preds = %entry
  %arraydecay = getelementptr inbounds [8 x i8]* %buf, i64 0, i64 0, !dbg !753
  br label %for.body, !dbg !751

for.body:                                         ; preds = %if.end, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end ]
  %arrayidx = getelementptr inbounds i32* %ftp, i64 %indvars.iv, !dbg !753
  %0 = load i32* %arrayidx, align 4, !dbg !753, !tbaa !382
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !755), !dbg !756
  %1 = icmp ult i32 %0, 46, !dbg !757
  br i1 %1, label %if.then.i, label %ftp2ext.exit, !dbg !757

if.then.i:                                        ; preds = %for.body
  %idxprom.i = sext i32 %0 to i64, !dbg !758
  %ext.i = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom.i, i32 1, !dbg !758
  %2 = load i8** %ext.i, align 8, !dbg !758, !tbaa !363
  %add.ptr.i = getelementptr inbounds i8* %2, i64 1, !dbg !758
  br label %ftp2ext.exit, !dbg !758

ftp2ext.exit:                                     ; preds = %for.body, %if.then.i
  %retval.0.i = phi i8* [ %add.ptr.i, %if.then.i ], [ getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), %for.body ]
  %strlen1 = call i64 @strlen(i8* %retval.0.i), !dbg !753
  %leninc = add i64 %strlen1, 1, !dbg !753
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arraydecay, i8* %retval.0.i, i64 %leninc, i32 1, i1 false), !dbg !753
  %3 = load i32* %n, align 4, !dbg !759, !tbaa !382
  %cmp3 = icmp sgt i32 %3, 0, !dbg !759
  br i1 %cmp3, label %if.then, label %if.end, !dbg !759

if.then:                                          ; preds = %ftp2ext.exit
  %strlen2 = call i64 @strlen(i8* getelementptr inbounds ([128 x i8]* @ftp2filter.filter, i64 0, i64 0)), !dbg !760
  %endptr3 = getelementptr [128 x i8]* @ftp2filter.filter, i64 0, i64 %strlen2, !dbg !760
  %4 = bitcast i8* %endptr3 to i16*, !dbg !760
  store i16 44, i16* %4, align 1, !dbg !760
  br label %if.end, !dbg !760

if.end:                                           ; preds = %if.then, %ftp2ext.exit
  %call6 = call i8* @strcat(i8* getelementptr inbounds ([128 x i8]* @ftp2filter.filter, i64 0, i64 0), i8* %arraydecay) #7, !dbg !761
  %5 = load i32* %n, align 4, !dbg !762, !tbaa !382
  %inc = add nsw i32 %5, 1, !dbg !762
  store i32 %inc, i32* %n, align 4, !dbg !762, !tbaa !382
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !751
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !751
  %exitcond = icmp eq i32 %lftr.wideiv, %nf, !dbg !751
  br i1 %exitcond, label %for.end, label %for.body, !dbg !751

for.end:                                          ; preds = %if.end, %entry
  %strlen = call i64 @strlen(i8* getelementptr inbounds ([128 x i8]* @ftp2filter.filter, i64 0, i64 0)), !dbg !763
  %endptr = getelementptr [128 x i8]* @ftp2filter.filter, i64 0, i64 %strlen, !dbg !763
  %6 = bitcast i8* %endptr to i16*, !dbg !763
  store i16 125, i16* %6, align 1, !dbg !763
  ret void, !dbg !764
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @is_optional(%struct.t_filenm* nocapture %fnm) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !263), !dbg !765
  %flag = getelementptr inbounds %struct.t_filenm* %fnm, i64 0, i32 3, !dbg !766
  %0 = load i64* %flag, align 8, !dbg !766, !tbaa !443
  %and = lshr i64 %0, 3, !dbg !766
  %and.tr = trunc i64 %and to i32, !dbg !766
  %conv = and i32 %and.tr, 1, !dbg !766
  ret i32 %conv, !dbg !766
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @is_output(%struct.t_filenm* nocapture %fnm) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !266), !dbg !767
  %flag = getelementptr inbounds %struct.t_filenm* %fnm, i64 0, i32 3, !dbg !768
  %0 = load i64* %flag, align 8, !dbg !768, !tbaa !443
  %and = lshr i64 %0, 2, !dbg !768
  %and.tr = trunc i64 %and to i32, !dbg !768
  %conv = and i32 %and.tr, 1, !dbg !768
  ret i32 %conv, !dbg !768
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @is_set(%struct.t_filenm* nocapture %fnm) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !269), !dbg !769
  %flag = getelementptr inbounds %struct.t_filenm* %fnm, i64 0, i32 3, !dbg !770
  %0 = load i64* %flag, align 8, !dbg !770, !tbaa !443
  %.tr = trunc i64 %0 to i32, !dbg !770
  %conv = and i32 %.tr, 1, !dbg !770
  ret i32 %conv, !dbg !770
}

; Function Attrs: optsize
declare i32 @fexist(i8*) #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @set_extension(i8* %buf, i32 %ftp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !305), !dbg !771
  tail call void @llvm.dbg.value(metadata !{i32 %ftp}, i64 0, metadata !306), !dbg !771
  %idxprom = sext i32 %ftp to i64, !dbg !772
  %call = tail call i64 @strlen(i8* %buf) #8, !dbg !773
  %conv = trunc i64 %call to i32, !dbg !773
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !307), !dbg !773
  %ext = getelementptr inbounds [46 x %struct.t_deffile]* @deffile, i64 0, i64 %idxprom, i32 1, !dbg !774
  %0 = load i8** %ext, align 8, !dbg !774, !tbaa !363
  %call1 = tail call i64 @strlen(i8* %0) #8, !dbg !774
  %conv2 = trunc i64 %call1 to i32, !dbg !774
  tail call void @llvm.dbg.value(metadata !{i32 %conv2}, i64 0, metadata !308), !dbg !774
  %cmp = icmp sgt i32 %conv, %conv2, !dbg !775
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !775

lor.lhs.false:                                    ; preds = %entry
  %sub = sub i64 %call, %call1, !dbg !775
  %sext = shl i64 %sub, 32, !dbg !775
  %idxprom4 = ashr exact i64 %sext, 32, !dbg !775
  %arrayidx5 = getelementptr inbounds i8* %buf, i64 %idxprom4, !dbg !775
  %call7 = tail call i32 @strcasecmp(i8* %arrayidx5, i8* %0) #8, !dbg !775
  %cmp8 = icmp eq i32 %call7, 0, !dbg !775
  br i1 %cmp8, label %if.end, label %if.then, !dbg !775

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call11 = tail call i8* @strcat(i8* %buf, i8* %0) #7, !dbg !776
  br label %if.end, !dbg !776

if.end:                                           ; preds = %lor.lhs.false, %if.then
  ret void, !dbg !777
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #6

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #6

; Function Attrs: nounwind
declare i32 @fputs(i8* nocapture, %struct._IO_FILE* nocapture) #6

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #6

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !53, metadata !54, metadata !328, metadata !53, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 37, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 37, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/filenm.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52}
!6 = metadata !{i32 786472, metadata !"efMDP", i64 0} ; [ DW_TAG_enumerator ] [efMDP :: 0]
!7 = metadata !{i32 786472, metadata !"efGCT", i64 1} ; [ DW_TAG_enumerator ] [efGCT :: 1]
!8 = metadata !{i32 786472, metadata !"efTRX", i64 2} ; [ DW_TAG_enumerator ] [efTRX :: 2]
!9 = metadata !{i32 786472, metadata !"efTRN", i64 3} ; [ DW_TAG_enumerator ] [efTRN :: 3]
!10 = metadata !{i32 786472, metadata !"efTRR", i64 4} ; [ DW_TAG_enumerator ] [efTRR :: 4]
!11 = metadata !{i32 786472, metadata !"efTRJ", i64 5} ; [ DW_TAG_enumerator ] [efTRJ :: 5]
!12 = metadata !{i32 786472, metadata !"efXTC", i64 6} ; [ DW_TAG_enumerator ] [efXTC :: 6]
!13 = metadata !{i32 786472, metadata !"efG87", i64 7} ; [ DW_TAG_enumerator ] [efG87 :: 7]
!14 = metadata !{i32 786472, metadata !"efENX", i64 8} ; [ DW_TAG_enumerator ] [efENX :: 8]
!15 = metadata !{i32 786472, metadata !"efEDR", i64 9} ; [ DW_TAG_enumerator ] [efEDR :: 9]
!16 = metadata !{i32 786472, metadata !"efENE", i64 10} ; [ DW_TAG_enumerator ] [efENE :: 10]
!17 = metadata !{i32 786472, metadata !"efSTX", i64 11} ; [ DW_TAG_enumerator ] [efSTX :: 11]
!18 = metadata !{i32 786472, metadata !"efSTO", i64 12} ; [ DW_TAG_enumerator ] [efSTO :: 12]
!19 = metadata !{i32 786472, metadata !"efGRO", i64 13} ; [ DW_TAG_enumerator ] [efGRO :: 13]
!20 = metadata !{i32 786472, metadata !"efG96", i64 14} ; [ DW_TAG_enumerator ] [efG96 :: 14]
!21 = metadata !{i32 786472, metadata !"efPDB", i64 15} ; [ DW_TAG_enumerator ] [efPDB :: 15]
!22 = metadata !{i32 786472, metadata !"efBRK", i64 16} ; [ DW_TAG_enumerator ] [efBRK :: 16]
!23 = metadata !{i32 786472, metadata !"efENT", i64 17} ; [ DW_TAG_enumerator ] [efENT :: 17]
!24 = metadata !{i32 786472, metadata !"efLOG", i64 18} ; [ DW_TAG_enumerator ] [efLOG :: 18]
!25 = metadata !{i32 786472, metadata !"efXVG", i64 19} ; [ DW_TAG_enumerator ] [efXVG :: 19]
!26 = metadata !{i32 786472, metadata !"efOUT", i64 20} ; [ DW_TAG_enumerator ] [efOUT :: 20]
!27 = metadata !{i32 786472, metadata !"efNDX", i64 21} ; [ DW_TAG_enumerator ] [efNDX :: 21]
!28 = metadata !{i32 786472, metadata !"efTOP", i64 22} ; [ DW_TAG_enumerator ] [efTOP :: 22]
!29 = metadata !{i32 786472, metadata !"efITP", i64 23} ; [ DW_TAG_enumerator ] [efITP :: 23]
!30 = metadata !{i32 786472, metadata !"efTPX", i64 24} ; [ DW_TAG_enumerator ] [efTPX :: 24]
!31 = metadata !{i32 786472, metadata !"efTPS", i64 25} ; [ DW_TAG_enumerator ] [efTPS :: 25]
!32 = metadata !{i32 786472, metadata !"efTPR", i64 26} ; [ DW_TAG_enumerator ] [efTPR :: 26]
!33 = metadata !{i32 786472, metadata !"efTPA", i64 27} ; [ DW_TAG_enumerator ] [efTPA :: 27]
!34 = metadata !{i32 786472, metadata !"efTPB", i64 28} ; [ DW_TAG_enumerator ] [efTPB :: 28]
!35 = metadata !{i32 786472, metadata !"efTEX", i64 29} ; [ DW_TAG_enumerator ] [efTEX :: 29]
!36 = metadata !{i32 786472, metadata !"efRTP", i64 30} ; [ DW_TAG_enumerator ] [efRTP :: 30]
!37 = metadata !{i32 786472, metadata !"efATP", i64 31} ; [ DW_TAG_enumerator ] [efATP :: 31]
!38 = metadata !{i32 786472, metadata !"efHDB", i64 32} ; [ DW_TAG_enumerator ] [efHDB :: 32]
!39 = metadata !{i32 786472, metadata !"efDAT", i64 33} ; [ DW_TAG_enumerator ] [efDAT :: 33]
!40 = metadata !{i32 786472, metadata !"efDLG", i64 34} ; [ DW_TAG_enumerator ] [efDLG :: 34]
!41 = metadata !{i32 786472, metadata !"efMAP", i64 35} ; [ DW_TAG_enumerator ] [efMAP :: 35]
!42 = metadata !{i32 786472, metadata !"efEPS", i64 36} ; [ DW_TAG_enumerator ] [efEPS :: 36]
!43 = metadata !{i32 786472, metadata !"efMAT", i64 37} ; [ DW_TAG_enumerator ] [efMAT :: 37]
!44 = metadata !{i32 786472, metadata !"efM2P", i64 38} ; [ DW_TAG_enumerator ] [efM2P :: 38]
!45 = metadata !{i32 786472, metadata !"efMTX", i64 39} ; [ DW_TAG_enumerator ] [efMTX :: 39]
!46 = metadata !{i32 786472, metadata !"efEDI", i64 40} ; [ DW_TAG_enumerator ] [efEDI :: 40]
!47 = metadata !{i32 786472, metadata !"efEDO", i64 41} ; [ DW_TAG_enumerator ] [efEDO :: 41]
!48 = metadata !{i32 786472, metadata !"efPPA", i64 42} ; [ DW_TAG_enumerator ] [efPPA :: 42]
!49 = metadata !{i32 786472, metadata !"efPDO", i64 43} ; [ DW_TAG_enumerator ] [efPDO :: 43]
!50 = metadata !{i32 786472, metadata !"efHAT", i64 44} ; [ DW_TAG_enumerator ] [efHAT :: 44]
!51 = metadata !{i32 786472, metadata !"efXPM", i64 45} ; [ DW_TAG_enumerator ] [efXPM :: 45]
!52 = metadata !{i32 786472, metadata !"efNR", i64 46} ; [ DW_TAG_enumerator ] [efNR :: 46]
!53 = metadata !{i32 0}
!54 = metadata !{metadata !55, metadata !65, metadata !70, metadata !73, metadata !76, metadata !79, metadata !157, metadata !179, metadata !189, metadata !198, metadata !211, metadata !219, metadata !227, metadata !235, metadata !243, metadata !249, metadata !255, metadata !259, metadata !264, metadata !267, metadata !270, metadata !283, metadata !290, metadata !301, metadata !310, metadata !322}
!55 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"set_default_file_name", metadata !"set_default_file_name", metadata !"", i32 170, metadata !57, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @set_default_file_name, null, null, metadata !61, i32 171} ; [ DW_TAG_subprogram ] [line 170] [def] [scope 171] [set_default_file_name]
!56 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!57 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!58 = metadata !{null, metadata !59}
!59 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !60} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!60 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!61 = metadata !{metadata !62, metadata !63}
!62 = metadata !{i32 786689, metadata !55, metadata !"name", metadata !56, i32 16777386, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 170]
!63 = metadata !{i32 786688, metadata !55, metadata !"i", metadata !56, i32 172, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 172]
!64 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!65 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"ftp2ext", metadata !"ftp2ext", metadata !"", i32 180, metadata !66, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32)* @ftp2ext, null, null, metadata !68, i32 181} ; [ DW_TAG_subprogram ] [line 180] [def] [scope 181] [ftp2ext]
!66 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!67 = metadata !{metadata !59, metadata !64}
!68 = metadata !{metadata !69}
!69 = metadata !{i32 786689, metadata !65, metadata !"ftp", metadata !56, i32 16777396, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ftp] [line 180]
!70 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"ftp2desc", metadata !"ftp2desc", metadata !"", i32 188, metadata !66, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32)* @ftp2desc, null, null, metadata !71, i32 189} ; [ DW_TAG_subprogram ] [line 188] [def] [scope 189] [ftp2desc]
!71 = metadata !{metadata !72}
!72 = metadata !{i32 786689, metadata !70, metadata !"ftp", metadata !56, i32 16777404, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ftp] [line 188]
!73 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"ftp2ftype", metadata !"ftp2ftype", metadata !"", i32 196, metadata !66, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32)* @ftp2ftype, null, null, metadata !74, i32 197} ; [ DW_TAG_subprogram ] [line 196] [def] [scope 197] [ftp2ftype]
!74 = metadata !{metadata !75}
!75 = metadata !{i32 786689, metadata !73, metadata !"ftp", metadata !56, i32 16777412, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ftp] [line 196]
!76 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"ftp2defnm", metadata !"ftp2defnm", metadata !"", i32 213, metadata !66, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32)* @ftp2defnm, null, null, metadata !77, i32 214} ; [ DW_TAG_subprogram ] [line 213] [def] [scope 214] [ftp2defnm]
!77 = metadata !{metadata !78}
!78 = metadata !{i32 786689, metadata !76, metadata !"ftp", metadata !56, i32 16777429, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ftp] [line 213]
!79 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"pr_def", metadata !"pr_def", metadata !"", i32 224, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32)* @pr_def, null, null, metadata !137, i32 225} ; [ DW_TAG_subprogram ] [line 224] [def] [scope 225] [pr_def]
!80 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!81 = metadata !{null, metadata !82, metadata !64}
!82 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !83} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!83 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!84 = metadata !{i32 786451, metadata !85, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !86, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!85 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!86 = metadata !{metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !107, metadata !108, metadata !109, metadata !110, metadata !113, metadata !115, metadata !117, metadata !121, metadata !123, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !132, metadata !133}
!87 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !64} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!88 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!89 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !59} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!90 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !59} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!91 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !59} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!92 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !59} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!93 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !59} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!94 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !59} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!95 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !59} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!96 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !59} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!97 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !59} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!98 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !59} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!99 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !100} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!100 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !101} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!101 = metadata !{i32 786451, metadata !85, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !102, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!102 = metadata !{metadata !103, metadata !104, metadata !106}
!103 = metadata !{i32 786445, metadata !85, metadata !101, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !100} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!104 = metadata !{i32 786445, metadata !85, metadata !101, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !105} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!105 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !84} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!106 = metadata !{i32 786445, metadata !85, metadata !101, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !64} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!107 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !105} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!108 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !64} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!109 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !64} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!110 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !111} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!111 = metadata !{i32 786454, metadata !85, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !112} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!112 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!113 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !114} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!114 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!115 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !116} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!116 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!117 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !118} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!118 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !60, metadata !119, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!119 = metadata !{metadata !120}
!120 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!121 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !122} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!122 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!123 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !124} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!124 = metadata !{i32 786454, metadata !85, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !112} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!125 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !122} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!126 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !122} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!127 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !122} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!128 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !122} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!129 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !130} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!130 = metadata !{i32 786454, metadata !85, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !131} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!131 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!132 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !64} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!133 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !134} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!134 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !60, metadata !135, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!135 = metadata !{metadata !136}
!136 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!137 = metadata !{metadata !138, metadata !139, metadata !140, metadata !153, metadata !154, metadata !155, metadata !156}
!138 = metadata !{i32 786689, metadata !79, metadata !"fp", metadata !56, i32 16777440, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 224]
!139 = metadata !{i32 786689, metadata !79, metadata !"ftp", metadata !56, i32 33554656, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ftp] [line 224]
!140 = metadata !{i32 786688, metadata !79, metadata !"df", metadata !56, i32 226, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [df] [line 226]
!141 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !142} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_deffile]
!142 = metadata !{i32 786454, metadata !1, null, metadata !"t_deffile", i32 113, i64 0, i64 0, i64 0, i32 0, metadata !143} ; [ DW_TAG_typedef ] [t_deffile] [line 113, size 0, align 0, offset 0] [from ]
!143 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 105, i64 448, i64 64, i32 0, i32 0, null, metadata !144, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 105, size 448, align 64, offset 0] [from ]
!144 = metadata !{metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151}
!145 = metadata !{i32 786445, metadata !1, metadata !143, metadata !"ftype", i32 106, i64 32, i64 32, i64 0, i32 0, metadata !64} ; [ DW_TAG_member ] [ftype] [line 106, size 32, align 32, offset 0] [from int]
!146 = metadata !{i32 786445, metadata !1, metadata !143, metadata !"ext", i32 107, i64 64, i64 64, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [ext] [line 107, size 64, align 64, offset 64] [from ]
!147 = metadata !{i32 786445, metadata !1, metadata !143, metadata !"defnm", i32 108, i64 64, i64 64, i64 128, i32 0, metadata !59} ; [ DW_TAG_member ] [defnm] [line 108, size 64, align 64, offset 128] [from ]
!148 = metadata !{i32 786445, metadata !1, metadata !143, metadata !"defopt", i32 109, i64 64, i64 64, i64 192, i32 0, metadata !59} ; [ DW_TAG_member ] [defopt] [line 109, size 64, align 64, offset 192] [from ]
!149 = metadata !{i32 786445, metadata !1, metadata !143, metadata !"descr", i32 110, i64 64, i64 64, i64 256, i32 0, metadata !59} ; [ DW_TAG_member ] [descr] [line 110, size 64, align 64, offset 256] [from ]
!150 = metadata !{i32 786445, metadata !1, metadata !143, metadata !"ntps", i32 111, i64 32, i64 32, i64 320, i32 0, metadata !64} ; [ DW_TAG_member ] [ntps] [line 111, size 32, align 32, offset 320] [from int]
!151 = metadata !{i32 786445, metadata !1, metadata !143, metadata !"tps", i32 112, i64 64, i64 64, i64 384, i32 0, metadata !152} ; [ DW_TAG_member ] [tps] [line 112, size 64, align 64, offset 384] [from ]
!152 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!153 = metadata !{i32 786688, metadata !79, metadata !"s", metadata !56, i32 227, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 227]
!154 = metadata !{i32 786688, metadata !79, metadata !"ext", metadata !56, i32 227, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ext] [line 227]
!155 = metadata !{i32 786688, metadata !79, metadata !"desc", metadata !56, i32 227, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [desc] [line 227]
!156 = metadata !{i32 786688, metadata !79, metadata !"flst", metadata !56, i32 227, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [flst] [line 227]
!157 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"pr_fns", metadata !"pr_fns", metadata !"", i32 270, metadata !158, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, %struct.t_filenm*)* @pr_fns, null, null, metadata !168, i32 271} ; [ DW_TAG_subprogram ] [line 270] [def] [scope 271] [pr_fns]
!158 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !159, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!159 = metadata !{null, metadata !82, metadata !64, metadata !160}
!160 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !161} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_filenm]
!161 = metadata !{i32 786454, metadata !1, null, metadata !"t_filenm", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !162} ; [ DW_TAG_typedef ] [t_filenm] [line 62, size 0, align 0, offset 0] [from ]
!162 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 57, i64 256, i64 64, i32 0, i32 0, null, metadata !163, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 57, size 256, align 64, offset 0] [from ]
!163 = metadata !{metadata !164, metadata !165, metadata !166, metadata !167}
!164 = metadata !{i32 786445, metadata !4, metadata !162, metadata !"ftp", i32 58, i64 32, i64 32, i64 0, i32 0, metadata !64} ; [ DW_TAG_member ] [ftp] [line 58, size 32, align 32, offset 0] [from int]
!165 = metadata !{i32 786445, metadata !4, metadata !162, metadata !"opt", i32 59, i64 64, i64 64, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [opt] [line 59, size 64, align 64, offset 64] [from ]
!166 = metadata !{i32 786445, metadata !4, metadata !162, metadata !"fn", i32 60, i64 64, i64 64, i64 128, i32 0, metadata !59} ; [ DW_TAG_member ] [fn] [line 60, size 64, align 64, offset 128] [from ]
!167 = metadata !{i32 786445, metadata !4, metadata !162, metadata !"flag", i32 61, i64 64, i64 64, i64 192, i32 0, metadata !131} ; [ DW_TAG_member ] [flag] [line 61, size 64, align 64, offset 192] [from long unsigned int]
!168 = metadata !{metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !178}
!169 = metadata !{i32 786689, metadata !157, metadata !"fp", metadata !56, i32 16777486, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 270]
!170 = metadata !{i32 786689, metadata !157, metadata !"nf", metadata !56, i32 33554702, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nf] [line 270]
!171 = metadata !{i32 786689, metadata !157, metadata !"tfn", metadata !56, i32 50331918, metadata !160, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tfn] [line 270]
!172 = metadata !{i32 786688, metadata !157, metadata !"i", metadata !56, i32 272, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 272]
!173 = metadata !{i32 786688, metadata !157, metadata !"j", metadata !56, i32 272, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 272]
!174 = metadata !{i32 786688, metadata !157, metadata !"buf", metadata !56, i32 273, metadata !175, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 273]
!175 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !60, metadata !176, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!176 = metadata !{metadata !177}
!177 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!178 = metadata !{i32 786688, metadata !157, metadata !"wbuf", metadata !56, i32 273, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wbuf] [line 273]
!179 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"pr_fopts", metadata !"pr_fopts", metadata !"", i32 296, metadata !180, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, %struct.t_filenm*, i32)* @pr_fopts, null, null, metadata !182, i32 297} ; [ DW_TAG_subprogram ] [line 296] [def] [scope 297] [pr_fopts]
!180 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !181, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!181 = metadata !{null, metadata !82, metadata !64, metadata !160, metadata !64}
!182 = metadata !{metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188}
!183 = metadata !{i32 786689, metadata !179, metadata !"fp", metadata !56, i32 16777512, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 296]
!184 = metadata !{i32 786689, metadata !179, metadata !"nf", metadata !56, i32 33554728, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nf] [line 296]
!185 = metadata !{i32 786689, metadata !179, metadata !"tfn", metadata !56, i32 50331944, metadata !160, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tfn] [line 296]
!186 = metadata !{i32 786689, metadata !179, metadata !"shell", metadata !56, i32 67109160, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shell] [line 296]
!187 = metadata !{i32 786688, metadata !179, metadata !"i", metadata !56, i32 298, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 298]
!188 = metadata !{i32 786688, metadata !179, metadata !"j", metadata !56, i32 298, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 298]
!189 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"fn2ftp", metadata !"fn2ftp", metadata !"", i32 381, metadata !190, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @fn2ftp, null, null, metadata !192, i32 382} ; [ DW_TAG_subprogram ] [line 381] [def] [scope 382] [fn2ftp]
!190 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !191, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!191 = metadata !{metadata !64, metadata !59}
!192 = metadata !{metadata !193, metadata !194, metadata !195, metadata !196, metadata !197}
!193 = metadata !{i32 786689, metadata !189, metadata !"fn", metadata !56, i32 16777597, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 381]
!194 = metadata !{i32 786688, metadata !189, metadata !"i", metadata !56, i32 383, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 383]
!195 = metadata !{i32 786688, metadata !189, metadata !"len", metadata !56, i32 383, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 383]
!196 = metadata !{i32 786688, metadata !189, metadata !"feptr", metadata !56, i32 384, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [feptr] [line 384]
!197 = metadata !{i32 786688, metadata !189, metadata !"eptr", metadata !56, i32 384, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [eptr] [line 384]
!198 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"parse_file_args", metadata !"parse_file_args", metadata !"", i32 508, metadata !199, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8**, i32, %struct.t_filenm*, i32)* @parse_file_args, null, null, metadata !202, i32 510} ; [ DW_TAG_subprogram ] [line 508] [def] [scope 510] [parse_file_args]
!199 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !200, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!200 = metadata !{null, metadata !152, metadata !201, metadata !64, metadata !160, metadata !64}
!201 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!202 = metadata !{metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210}
!203 = metadata !{i32 786689, metadata !198, metadata !"argc", metadata !56, i32 16777724, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 508]
!204 = metadata !{i32 786689, metadata !198, metadata !"argv", metadata !56, i32 33554940, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 508]
!205 = metadata !{i32 786689, metadata !198, metadata !"nf", metadata !56, i32 50332156, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nf] [line 508]
!206 = metadata !{i32 786689, metadata !198, metadata !"fnm", metadata !56, i32 67109372, metadata !160, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 508]
!207 = metadata !{i32 786689, metadata !198, metadata !"bKeep", metadata !56, i32 83886589, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bKeep] [line 509]
!208 = metadata !{i32 786688, metadata !198, metadata !"i", metadata !56, i32 511, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 511]
!209 = metadata !{i32 786688, metadata !198, metadata !"j", metadata !56, i32 511, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 511]
!210 = metadata !{i32 786688, metadata !198, metadata !"bRemove", metadata !56, i32 512, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bRemove] [line 512]
!211 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"opt2fn", metadata !"opt2fn", metadata !"", i32 558, metadata !212, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, %struct.t_filenm*)* @opt2fn, null, null, metadata !214, i32 559} ; [ DW_TAG_subprogram ] [line 558] [def] [scope 559] [opt2fn]
!212 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !213, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!213 = metadata !{metadata !59, metadata !59, metadata !64, metadata !160}
!214 = metadata !{metadata !215, metadata !216, metadata !217, metadata !218}
!215 = metadata !{i32 786689, metadata !211, metadata !"opt", metadata !56, i32 16777774, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [opt] [line 558]
!216 = metadata !{i32 786689, metadata !211, metadata !"nfile", metadata !56, i32 33554990, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nfile] [line 558]
!217 = metadata !{i32 786689, metadata !211, metadata !"fnm", metadata !56, i32 50332206, metadata !160, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 558]
!218 = metadata !{i32 786688, metadata !211, metadata !"i", metadata !56, i32 560, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 560]
!219 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"ftp2fn", metadata !"ftp2fn", metadata !"", i32 570, metadata !220, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32, i32, %struct.t_filenm*)* @ftp2fn, null, null, metadata !222, i32 571} ; [ DW_TAG_subprogram ] [line 570] [def] [scope 571] [ftp2fn]
!220 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !221, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!221 = metadata !{metadata !59, metadata !64, metadata !64, metadata !160}
!222 = metadata !{metadata !223, metadata !224, metadata !225, metadata !226}
!223 = metadata !{i32 786689, metadata !219, metadata !"ftp", metadata !56, i32 16777786, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ftp] [line 570]
!224 = metadata !{i32 786689, metadata !219, metadata !"nfile", metadata !56, i32 33555002, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nfile] [line 570]
!225 = metadata !{i32 786689, metadata !219, metadata !"fnm", metadata !56, i32 50332218, metadata !160, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 570]
!226 = metadata !{i32 786688, metadata !219, metadata !"i", metadata !56, i32 572, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 572]
!227 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"ftp2bSet", metadata !"ftp2bSet", metadata !"", i32 582, metadata !228, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, %struct.t_filenm*)* @ftp2bSet, null, null, metadata !230, i32 583} ; [ DW_TAG_subprogram ] [line 582] [def] [scope 583] [ftp2bSet]
!228 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !229, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!229 = metadata !{metadata !64, metadata !64, metadata !64, metadata !160}
!230 = metadata !{metadata !231, metadata !232, metadata !233, metadata !234}
!231 = metadata !{i32 786689, metadata !227, metadata !"ftp", metadata !56, i32 16777798, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ftp] [line 582]
!232 = metadata !{i32 786689, metadata !227, metadata !"nfile", metadata !56, i32 33555014, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nfile] [line 582]
!233 = metadata !{i32 786689, metadata !227, metadata !"fnm", metadata !56, i32 50332230, metadata !160, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 582]
!234 = metadata !{i32 786688, metadata !227, metadata !"i", metadata !56, i32 584, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 584]
!235 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"opt2bSet", metadata !"opt2bSet", metadata !"", i32 595, metadata !236, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, %struct.t_filenm*)* @opt2bSet, null, null, metadata !238, i32 596} ; [ DW_TAG_subprogram ] [line 595] [def] [scope 596] [opt2bSet]
!236 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !237, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!237 = metadata !{metadata !64, metadata !59, metadata !64, metadata !160}
!238 = metadata !{metadata !239, metadata !240, metadata !241, metadata !242}
!239 = metadata !{i32 786689, metadata !235, metadata !"opt", metadata !56, i32 16777811, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [opt] [line 595]
!240 = metadata !{i32 786689, metadata !235, metadata !"nfile", metadata !56, i32 33555027, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nfile] [line 595]
!241 = metadata !{i32 786689, metadata !235, metadata !"fnm", metadata !56, i32 50332243, metadata !160, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 595]
!242 = metadata !{i32 786688, metadata !235, metadata !"i", metadata !56, i32 597, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 597]
!243 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"opt2fn_null", metadata !"opt2fn_null", metadata !"", i32 608, metadata !212, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, %struct.t_filenm*)* @opt2fn_null, null, null, metadata !244, i32 609} ; [ DW_TAG_subprogram ] [line 608] [def] [scope 609] [opt2fn_null]
!244 = metadata !{metadata !245, metadata !246, metadata !247, metadata !248}
!245 = metadata !{i32 786689, metadata !243, metadata !"opt", metadata !56, i32 16777824, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [opt] [line 608]
!246 = metadata !{i32 786689, metadata !243, metadata !"nfile", metadata !56, i32 33555040, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nfile] [line 608]
!247 = metadata !{i32 786689, metadata !243, metadata !"fnm", metadata !56, i32 50332256, metadata !160, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 608]
!248 = metadata !{i32 786688, metadata !243, metadata !"i", metadata !56, i32 610, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 610]
!249 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"ftp2fn_null", metadata !"ftp2fn_null", metadata !"", i32 623, metadata !220, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32, i32, %struct.t_filenm*)* @ftp2fn_null, null, null, metadata !250, i32 624} ; [ DW_TAG_subprogram ] [line 623] [def] [scope 624] [ftp2fn_null]
!250 = metadata !{metadata !251, metadata !252, metadata !253, metadata !254}
!251 = metadata !{i32 786689, metadata !249, metadata !"ftp", metadata !56, i32 16777839, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ftp] [line 623]
!252 = metadata !{i32 786689, metadata !249, metadata !"nfile", metadata !56, i32 33555055, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nfile] [line 623]
!253 = metadata !{i32 786689, metadata !249, metadata !"fnm", metadata !56, i32 50332271, metadata !160, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 623]
!254 = metadata !{i32 786688, metadata !249, metadata !"i", metadata !56, i32 625, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 625]
!255 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"ftp2filter", metadata !"ftp2filter", metadata !"", i32 654, metadata !66, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32)* @ftp2filter, null, null, metadata !256, i32 655} ; [ DW_TAG_subprogram ] [line 654] [def] [scope 655] [ftp2filter]
!256 = metadata !{metadata !257, metadata !258}
!257 = metadata !{i32 786689, metadata !255, metadata !"ftp", metadata !56, i32 16777870, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ftp] [line 654]
!258 = metadata !{i32 786688, metadata !255, metadata !"n", metadata !56, i32 656, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 656]
!259 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"is_optional", metadata !"is_optional", metadata !"", i32 687, metadata !260, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.t_filenm*)* @is_optional, null, null, metadata !262, i32 688} ; [ DW_TAG_subprogram ] [line 687] [def] [scope 688] [is_optional]
!260 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !261, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!261 = metadata !{metadata !64, metadata !160}
!262 = metadata !{metadata !263}
!263 = metadata !{i32 786689, metadata !259, metadata !"fnm", metadata !56, i32 16777903, metadata !160, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 687]
!264 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"is_output", metadata !"is_output", metadata !"", i32 692, metadata !260, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.t_filenm*)* @is_output, null, null, metadata !265, i32 693} ; [ DW_TAG_subprogram ] [line 692] [def] [scope 693] [is_output]
!265 = metadata !{metadata !266}
!266 = metadata !{i32 786689, metadata !264, metadata !"fnm", metadata !56, i32 16777908, metadata !160, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 692]
!267 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"is_set", metadata !"is_set", metadata !"", i32 697, metadata !260, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.t_filenm*)* @is_set, null, null, metadata !268, i32 698} ; [ DW_TAG_subprogram ] [line 697] [def] [scope 698] [is_set]
!268 = metadata !{metadata !269}
!269 = metadata !{i32 786689, metadata !267, metadata !"fnm", metadata !56, i32 16777913, metadata !160, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 697]
!270 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"add_filters", metadata !"add_filters", metadata !"", i32 638, metadata !271, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32, i32*)* @add_filters, null, null, metadata !273, i32 639} ; [ DW_TAG_subprogram ] [line 638] [local] [def] [scope 639] [add_filters]
!271 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !272, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!272 = metadata !{null, metadata !59, metadata !152, metadata !64, metadata !152}
!273 = metadata !{metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !282}
!274 = metadata !{i32 786689, metadata !270, metadata !"filter", metadata !56, i32 16777854, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filter] [line 638]
!275 = metadata !{i32 786689, metadata !270, metadata !"n", metadata !56, i32 33555070, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 638]
!276 = metadata !{i32 786689, metadata !270, metadata !"nf", metadata !56, i32 50332286, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nf] [line 638]
!277 = metadata !{i32 786689, metadata !270, metadata !"ftp", metadata !56, i32 67109502, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ftp] [line 638]
!278 = metadata !{i32 786688, metadata !270, metadata !"buf", metadata !56, i32 640, metadata !279, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 640]
!279 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 8, i32 0, i32 0, metadata !60, metadata !280, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 8, offset 0] [from char]
!280 = metadata !{metadata !281}
!281 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!282 = metadata !{i32 786688, metadata !270, metadata !"i", metadata !56, i32 641, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 641]
!283 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"set_filenms", metadata !"set_filenms", metadata !"", i32 499, metadata !284, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !286, i32 500} ; [ DW_TAG_subprogram ] [line 499] [local] [def] [scope 500] [set_filenms]
!284 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !285, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!285 = metadata !{null, metadata !64, metadata !160}
!286 = metadata !{metadata !287, metadata !288, metadata !289}
!287 = metadata !{i32 786689, metadata !283, metadata !"nf", metadata !56, i32 16777715, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nf] [line 499]
!288 = metadata !{i32 786689, metadata !283, metadata !"fnm", metadata !56, i32 33554931, metadata !160, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 499]
!289 = metadata !{i32 786688, metadata !283, metadata !"i", metadata !56, i32 501, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 501]
!290 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"set_filenm", metadata !"set_filenm", metadata !"", i32 461, metadata !291, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_filenm*, i8*, i32)* @set_filenm, null, null, metadata !293, i32 462} ; [ DW_TAG_subprogram ] [line 461] [local] [def] [scope 462] [set_filenm]
!291 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !292, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!292 = metadata !{null, metadata !160, metadata !59, metadata !64}
!293 = metadata !{metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !299, metadata !300}
!294 = metadata !{i32 786689, metadata !290, metadata !"fnm", metadata !56, i32 16777677, metadata !160, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 461]
!295 = metadata !{i32 786689, metadata !290, metadata !"name", metadata !56, i32 33554893, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 461]
!296 = metadata !{i32 786689, metadata !290, metadata !"bCanNotOverride", metadata !56, i32 50332109, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bCanNotOverride] [line 461]
!297 = metadata !{i32 786688, metadata !290, metadata !"buf", metadata !56, i32 467, metadata !175, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 467]
!298 = metadata !{i32 786688, metadata !290, metadata !"i", metadata !56, i32 468, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 468]
!299 = metadata !{i32 786688, metadata !290, metadata !"len", metadata !56, i32 468, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 468]
!300 = metadata !{i32 786688, metadata !290, metadata !"extlen", metadata !56, i32 468, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [extlen] [line 468]
!301 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"set_extension", metadata !"set_extension", metadata !"", i32 403, metadata !302, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32)* @set_extension, null, null, metadata !304, i32 404} ; [ DW_TAG_subprogram ] [line 403] [local] [def] [scope 404] [set_extension]
!302 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !303, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!303 = metadata !{null, metadata !59, metadata !64}
!304 = metadata !{metadata !305, metadata !306, metadata !307, metadata !308, metadata !309}
!305 = metadata !{i32 786689, metadata !301, metadata !"buf", metadata !56, i32 16777619, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 403]
!306 = metadata !{i32 786689, metadata !301, metadata !"ftp", metadata !56, i32 33554835, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ftp] [line 403]
!307 = metadata !{i32 786688, metadata !301, metadata !"len", metadata !56, i32 405, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 405]
!308 = metadata !{i32 786688, metadata !301, metadata !"extlen", metadata !56, i32 405, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [extlen] [line 405]
!309 = metadata !{i32 786688, metadata !301, metadata !"df", metadata !56, i32 406, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [df] [line 406]
!310 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"set_grpfnm", metadata !"set_grpfnm", metadata !"", i32 416, metadata !291, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !311, i32 417} ; [ DW_TAG_subprogram ] [line 416] [local] [def] [scope 417] [set_grpfnm]
!311 = metadata !{metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321}
!312 = metadata !{i32 786689, metadata !310, metadata !"fnm", metadata !56, i32 16777632, metadata !160, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 416]
!313 = metadata !{i32 786689, metadata !310, metadata !"name", metadata !56, i32 33554848, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 416]
!314 = metadata !{i32 786689, metadata !310, metadata !"bCanNotOverride", metadata !56, i32 50332064, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bCanNotOverride] [line 416]
!315 = metadata !{i32 786688, metadata !310, metadata !"buf", metadata !56, i32 418, metadata !175, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 418]
!316 = metadata !{i32 786688, metadata !310, metadata !"buf2", metadata !56, i32 418, metadata !175, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf2] [line 418]
!317 = metadata !{i32 786688, metadata !310, metadata !"i", metadata !56, i32 419, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 419]
!318 = metadata !{i32 786688, metadata !310, metadata !"type", metadata !56, i32 419, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 419]
!319 = metadata !{i32 786688, metadata !310, metadata !"bValidExt", metadata !56, i32 420, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bValidExt] [line 420]
!320 = metadata !{i32 786688, metadata !310, metadata !"nopts", metadata !56, i32 421, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nopts] [line 421]
!321 = metadata !{i32 786688, metadata !310, metadata !"ftps", metadata !56, i32 422, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ftps] [line 422]
!322 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"check_opts", metadata !"check_opts", metadata !"", i32 364, metadata !284, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !323, i32 365} ; [ DW_TAG_subprogram ] [line 364] [local] [def] [scope 365] [check_opts]
!323 = metadata !{metadata !324, metadata !325, metadata !326, metadata !327}
!324 = metadata !{i32 786689, metadata !322, metadata !"nf", metadata !56, i32 16777580, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nf] [line 364]
!325 = metadata !{i32 786689, metadata !322, metadata !"fnm", metadata !56, i32 33554796, metadata !160, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 364]
!326 = metadata !{i32 786688, metadata !322, metadata !"i", metadata !56, i32 366, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 366]
!327 = metadata !{i32 786688, metadata !322, metadata !"df", metadata !56, i32 367, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [df] [line 367]
!328 = metadata !{metadata !329, metadata !333, metadata !334, metadata !338, metadata !342, metadata !344, metadata !348, metadata !350, metadata !354, metadata !355, metadata !359, metadata !360}
!329 = metadata !{i32 786484, i32 0, null, metadata !"z_ext", metadata !"z_ext", metadata !"", metadata !56, i32 168, metadata !330, i32 0, i32 1, [2 x i8*]* @z_ext, null} ; [ DW_TAG_variable ] [z_ext] [line 168] [def]
!330 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 64, i32 0, i32 0, metadata !59, metadata !331, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 64, offset 0] [from ]
!331 = metadata !{metadata !332}
!332 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!333 = metadata !{i32 786484, i32 0, metadata !76, metadata !"buf", metadata !"buf", metadata !"", metadata !56, i32 215, metadata !175, i32 1, i32 1, [256 x i8]* @ftp2defnm.buf, null} ; [ DW_TAG_variable ] [buf] [line 215] [local] [def]
!334 = metadata !{i32 786484, i32 0, metadata !255, metadata !"filter", metadata !"filter", metadata !"", metadata !56, i32 657, metadata !335, i32 1, i32 1, [128 x i8]* @ftp2filter.filter, null} ; [ DW_TAG_variable ] [filter] [line 657] [local] [def]
!335 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !60, metadata !336, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 8, offset 0] [from char]
!336 = metadata !{metadata !337}
!337 = metadata !{i32 786465, i64 0, i64 128}     ; [ DW_TAG_subrange_type ] [0, 127]
!338 = metadata !{i32 786484, i32 0, null, metadata !"tpxs", metadata !"tpxs", metadata !"", metadata !56, i32 91, metadata !339, i32 1, i32 1, [3 x i32]* @tpxs, null} ; [ DW_TAG_variable ] [tpxs] [line 91] [local] [def]
!339 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !64, metadata !340, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!340 = metadata !{metadata !341}
!341 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!342 = metadata !{i32 786484, i32 0, null, metadata !"stxs", metadata !"stxs", metadata !"", metadata !56, i32 77, metadata !343, i32 1, i32 1, [8 x i32]* @stxs, null} ; [ DW_TAG_variable ] [stxs] [line 77] [local] [def]
!343 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !64, metadata !280, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!344 = metadata !{i32 786484, i32 0, null, metadata !"stos", metadata !"stos", metadata !"", metadata !56, i32 74, metadata !345, i32 1, i32 1, [5 x i32]* @stos, null} ; [ DW_TAG_variable ] [stos] [line 74] [local] [def]
!345 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 32, i32 0, i32 0, metadata !64, metadata !346, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 32, offset 0] [from int]
!346 = metadata !{metadata !347}
!347 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!348 = metadata !{i32 786484, i32 0, null, metadata !"trns", metadata !"trns", metadata !"", metadata !56, i32 67, metadata !349, i32 1, i32 1, [2 x i32]* @trns, null} ; [ DW_TAG_variable ] [trns] [line 67] [local] [def]
!349 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !64, metadata !331, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from int]
!350 = metadata !{i32 786484, i32 0, null, metadata !"trxs", metadata !"trxs", metadata !"", metadata !56, i32 60, metadata !351, i32 1, i32 1, [7 x i32]* @trxs, null} ; [ DW_TAG_variable ] [trxs] [line 60] [local] [def]
!351 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 224, i64 32, i32 0, i32 0, metadata !64, metadata !352, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 224, align 32, offset 0] [from int]
!352 = metadata !{metadata !353}
!353 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 6]
!354 = metadata !{i32 786484, i32 0, null, metadata !"enxs", metadata !"enxs", metadata !"", metadata !56, i32 84, metadata !349, i32 1, i32 1, [2 x i32]* @enxs, null} ; [ DW_TAG_variable ] [enxs] [line 84] [local] [def]
!355 = metadata !{i32 786484, i32 0, null, metadata !"deffile", metadata !"deffile", metadata !"", metadata !56, i32 116, metadata !356, i32 1, i32 1, [46 x %struct.t_deffile]* @deffile, null} ; [ DW_TAG_variable ] [deffile] [line 116] [local] [def]
!356 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 20608, i64 64, i32 0, i32 0, metadata !142, metadata !357, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 20608, align 64, offset 0] [from t_deffile]
!357 = metadata !{metadata !358}
!358 = metadata !{i32 786465, i64 0, i64 46}      ; [ DW_TAG_subrange_type ] [0, 45]
!359 = metadata !{i32 786484, i32 0, null, metadata !"tpss", metadata !"tpss", metadata !"", metadata !56, i32 98, metadata !343, i32 1, i32 1, [8 x i32]* @tpss, null} ; [ DW_TAG_variable ] [tpss] [line 98] [local] [def]
!360 = metadata !{i32 786484, i32 0, null, metadata !"default_file_name", metadata !"default_file_name", metadata !"", metadata !56, i32 165, metadata !59, i32 1, i32 1, i8** @default_file_name, null} ; [ DW_TAG_variable ] [default_file_name] [line 165] [local] [def]
!361 = metadata !{i32 170, i32 0, metadata !55, null}
!362 = metadata !{i32 174, i32 0, metadata !55, null}
!363 = metadata !{metadata !"any pointer", metadata !364}
!364 = metadata !{metadata !"omnipotent char", metadata !365}
!365 = metadata !{metadata !"Simple C/C++ TBAA"}
!366 = metadata !{i32 176, i32 0, metadata !367, null}
!367 = metadata !{i32 786443, metadata !1, metadata !55, i32 176, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!368 = metadata !{i32 177, i32 0, metadata !367, null}
!369 = metadata !{i32 178, i32 0, metadata !55, null}
!370 = metadata !{i32 180, i32 0, metadata !65, null}
!371 = metadata !{i32 182, i32 0, metadata !65, null}
!372 = metadata !{i32 183, i32 0, metadata !65, null}
!373 = metadata !{i32 186, i32 0, metadata !65, null}
!374 = metadata !{i32 188, i32 0, metadata !70, null}
!375 = metadata !{i32 190, i32 0, metadata !70, null}
!376 = metadata !{i32 191, i32 0, metadata !70, null}
!377 = metadata !{i32 194, i32 0, metadata !70, null}
!378 = metadata !{i32 196, i32 0, metadata !73, null}
!379 = metadata !{i32 198, i32 0, metadata !73, null}
!380 = metadata !{i32 199, i32 0, metadata !381, null}
!381 = metadata !{i32 786443, metadata !1, metadata !73, i32 198, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!382 = metadata !{metadata !"int", metadata !364}
!383 = metadata !{i32 201, i32 0, metadata !384, null}
!384 = metadata !{i32 786443, metadata !1, metadata !381, i32 199, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!385 = metadata !{i32 202, i32 0, metadata !384, null}
!386 = metadata !{i32 203, i32 0, metadata !384, null}
!387 = metadata !{i32 204, i32 0, metadata !384, null}
!388 = metadata !{i32 208, i32 0, metadata !381, null}
!389 = metadata !{i32 209, i32 0, metadata !73, null}
!390 = metadata !{i32 213, i32 0, metadata !76, null}
!391 = metadata !{i32 217, i32 0, metadata !76, null}
!392 = metadata !{i32 218, i32 0, metadata !393, null}
!393 = metadata !{i32 786443, metadata !1, metadata !76, i32 217, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!394 = metadata !{i32 219, i32 0, metadata !393, null}
!395 = metadata !{i32 221, i32 0, metadata !76, null}
!396 = metadata !{i32 224, i32 0, metadata !79, null}
!397 = metadata !{i8* null}
!398 = metadata !{i32 227, i32 0, metadata !79, null}
!399 = metadata !{i32 229, i32 0, metadata !79, null}
!400 = metadata !{null}
!401 = metadata !{i32 231, i32 0, metadata !79, null}
!402 = metadata !{i32 232, i32 0, metadata !79, null}
!403 = metadata !{i32 233, i32 0, metadata !404, null}
!404 = metadata !{i32 786443, metadata !1, metadata !79, i32 232, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!405 = metadata !{i32 234, i32 0, metadata !404, null}
!406 = metadata !{i32 235, i32 0, metadata !404, null}
!407 = metadata !{i32 237, i32 0, metadata !408, null}
!408 = metadata !{i32 786443, metadata !1, metadata !404, i32 236, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!409 = metadata !{i32 238, i32 0, metadata !408, null}
!410 = metadata !{i32 239, i32 0, metadata !408, null}
!411 = metadata !{i32 240, i32 0, metadata !408, null}
!412 = metadata !{i32 241, i32 0, metadata !408, null}
!413 = metadata !{i32 242, i32 0, metadata !408, null}
!414 = metadata !{i32 244, i32 0, metadata !415, null}
!415 = metadata !{i32 786443, metadata !1, metadata !79, i32 243, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!416 = metadata !{i32 245, i32 0, metadata !415, null}
!417 = metadata !{i32 248, i32 0, metadata !79, null}
!418 = metadata !{i32 249, i32 0, metadata !79, null}
!419 = metadata !{i32 253, i32 0, metadata !79, null}
!420 = metadata !{null}
!421 = metadata !{i32 256, i32 0, metadata !422, null}
!422 = metadata !{i32 786443, metadata !1, metadata !79, i32 253, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!423 = metadata !{i32 257, i32 0, metadata !422, null}
!424 = metadata !{null}
!425 = metadata !{i32 258, i32 0, metadata !422, null}
!426 = metadata !{i32 259, i32 0, metadata !422, null}
!427 = metadata !{i32 260, i32 0, metadata !422, null}
!428 = metadata !{i32 261, i32 0, metadata !422, null}
!429 = metadata !{i32 263, i32 0, metadata !422, null}
!430 = metadata !{i32 264, i32 0, metadata !422, null}
!431 = metadata !{i32 265, i32 0, metadata !79, null}
!432 = metadata !{i32 267, i32 0, metadata !79, null}
!433 = metadata !{i32 268, i32 0, metadata !79, null}
!434 = metadata !{i32 270, i32 0, metadata !157, null}
!435 = metadata !{i32 273, i32 0, metadata !157, null}
!436 = metadata !{i32 276, i32 0, metadata !157, null}
!437 = metadata !{i32 278, i32 0, metadata !157, null}
!438 = metadata !{i32 279, i32 0, metadata !439, null}
!439 = metadata !{i32 786443, metadata !1, metadata !157, i32 279, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!440 = metadata !{i32 280, i32 0, metadata !441, null}
!441 = metadata !{i32 786443, metadata !1, metadata !439, i32 279, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!442 = metadata !{i32 281, i32 0, metadata !441, null}
!443 = metadata !{metadata !"long", metadata !364}
!444 = metadata !{i32 282, i32 0, metadata !441, null}
!445 = metadata !{i32 283, i32 0, metadata !441, null}
!446 = metadata !{i32 284, i32 0, metadata !447, null}
!447 = metadata !{i32 786443, metadata !1, metadata !448, i32 284, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!448 = metadata !{i32 786443, metadata !1, metadata !441, i32 283, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!449 = metadata !{i32 285, i32 0, metadata !447, null}
!450 = metadata !{i32 286, i32 0, metadata !447, null}
!451 = metadata !{i32 288, i32 0, metadata !441, null}
!452 = metadata !{i32 289, i32 0, metadata !441, null}
!453 = metadata !{i32 290, i32 0, metadata !441, null}
!454 = metadata !{i32 292, i32 0, metadata !157, null}
!455 = metadata !{i32 293, i32 0, metadata !157, null}
!456 = metadata !{i32 294, i32 0, metadata !157, null}
!457 = metadata !{i32 296, i32 0, metadata !179, null}
!458 = metadata !{i32 300, i32 0, metadata !179, null}
!459 = metadata !{i32 343, i32 0, metadata !460, null}
!460 = metadata !{i32 786443, metadata !1, metadata !461, i32 343, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!461 = metadata !{i32 786443, metadata !1, metadata !179, i32 300, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!462 = metadata !{i32 321, i32 0, metadata !463, null}
!463 = metadata !{i32 786443, metadata !1, metadata !461, i32 321, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!464 = metadata !{i32 302, i32 0, metadata !465, null}
!465 = metadata !{i32 786443, metadata !1, metadata !461, i32 302, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!466 = metadata !{i32 303, i32 0, metadata !467, null}
!467 = metadata !{i32 786443, metadata !1, metadata !465, i32 302, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!468 = metadata !{i32 304, i32 0, metadata !467, null}
!469 = metadata !{i32 305, i32 0, metadata !470, null}
!470 = metadata !{i32 786443, metadata !1, metadata !467, i32 304, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!471 = metadata !{i32 306, i32 0, metadata !472, null}
!472 = metadata !{i32 786443, metadata !1, metadata !470, i32 306, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!473 = metadata !{i32 307, i32 0, metadata !474, null}
!474 = metadata !{i32 786443, metadata !1, metadata !472, i32 306, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!475 = metadata !{i32 308, i32 0, metadata !474, null}
!476 = metadata !{i32 309, i32 0, metadata !474, null}
!477 = metadata !{i32 311, i32 0, metadata !470, null}
!478 = metadata !{i32 312, i32 0, metadata !470, null}
!479 = metadata !{i32 313, i32 0, metadata !467, null}
!480 = metadata !{i32 314, i32 0, metadata !467, null}
!481 = metadata !{i32 315, i32 0, metadata !482, null}
!482 = metadata !{i32 786443, metadata !1, metadata !467, i32 315, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!483 = metadata !{i32 316, i32 0, metadata !482, null}
!484 = metadata !{i32 317, i32 0, metadata !467, null}
!485 = metadata !{i32 322, i32 0, metadata !486, null}
!486 = metadata !{i32 786443, metadata !1, metadata !463, i32 321, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!487 = metadata !{i32 323, i32 0, metadata !486, null}
!488 = metadata !{i32 324, i32 0, metadata !489, null}
!489 = metadata !{i32 786443, metadata !1, metadata !486, i32 323, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!490 = metadata !{i32 325, i32 0, metadata !491, null}
!491 = metadata !{i32 786443, metadata !1, metadata !489, i32 325, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!492 = metadata !{i32 326, i32 0, metadata !493, null}
!493 = metadata !{i32 786443, metadata !1, metadata !491, i32 325, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!494 = metadata !{i32 327, i32 0, metadata !493, null}
!495 = metadata !{i32 328, i32 0, metadata !493, null}
!496 = metadata !{i32 330, i32 0, metadata !489, null}
!497 = metadata !{i32 331, i32 0, metadata !489, null}
!498 = metadata !{i32 332, i32 0, metadata !486, null}
!499 = metadata !{i32 333, i32 0, metadata !486, null}
!500 = metadata !{i32 334, i32 0, metadata !501, null}
!501 = metadata !{i32 786443, metadata !1, metadata !486, i32 334, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!502 = metadata !{i32 335, i32 0, metadata !503, null}
!503 = metadata !{i32 786443, metadata !1, metadata !501, i32 334, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!504 = metadata !{i32 336, i32 0, metadata !503, null}
!505 = metadata !{i32 337, i32 0, metadata !503, null}
!506 = metadata !{i32 339, i32 0, metadata !486, null}
!507 = metadata !{i32 344, i32 0, metadata !508, null}
!508 = metadata !{i32 786443, metadata !1, metadata !460, i32 343, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!509 = metadata !{i32 345, i32 0, metadata !508, null}
!510 = metadata !{i32 346, i32 0, metadata !511, null}
!511 = metadata !{i32 786443, metadata !1, metadata !508, i32 345, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!512 = metadata !{i32 347, i32 0, metadata !513, null}
!513 = metadata !{i32 786443, metadata !1, metadata !511, i32 347, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!514 = metadata !{i32 348, i32 0, metadata !515, null}
!515 = metadata !{i32 786443, metadata !1, metadata !513, i32 347, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!516 = metadata !{i32 349, i32 0, metadata !515, null}
!517 = metadata !{i32 350, i32 0, metadata !515, null}
!518 = metadata !{i32 352, i32 0, metadata !511, null}
!519 = metadata !{i32 353, i32 0, metadata !511, null}
!520 = metadata !{i32 354, i32 0, metadata !508, null}
!521 = metadata !{i32 355, i32 0, metadata !508, null}
!522 = metadata !{i32 356, i32 0, metadata !523, null}
!523 = metadata !{i32 786443, metadata !1, metadata !508, i32 356, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!524 = metadata !{i32 357, i32 0, metadata !523, null}
!525 = metadata !{i32 358, i32 0, metadata !508, null}
!526 = metadata !{i32 362, i32 0, metadata !179, null}
!527 = metadata !{i32 381, i32 0, metadata !189, null}
!528 = metadata !{i32 386, i32 0, metadata !189, null}
!529 = metadata !{i32 389, i32 0, metadata !189, null}
!530 = metadata !{i32 390, i32 0, metadata !189, null}
!531 = metadata !{i32 396, i32 0, metadata !532, null}
!532 = metadata !{i32 786443, metadata !1, metadata !189, i32 395, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!533 = metadata !{i32 397, i32 0, metadata !532, null}
!534 = metadata !{i32 395, i32 0, metadata !532, null}
!535 = metadata !{i32 401, i32 0, metadata !189, null}
!536 = metadata !{i32 508, i32 0, metadata !198, null}
!537 = metadata !{i32 509, i32 0, metadata !198, null}
!538 = metadata !{i32 786689, metadata !322, metadata !"nf", metadata !56, i32 16777580, metadata !64, i32 0, metadata !539} ; [ DW_TAG_arg_variable ] [nf] [line 364]
!539 = metadata !{i32 514, i32 0, metadata !198, null}
!540 = metadata !{i32 364, i32 0, metadata !322, metadata !539}
!541 = metadata !{i32 786689, metadata !322, metadata !"fnm", metadata !56, i32 33554796, metadata !160, i32 0, metadata !539} ; [ DW_TAG_arg_variable ] [fnm] [line 364]
!542 = metadata !{i32 786688, metadata !322, metadata !"i", metadata !56, i32 366, metadata !64, i32 0, metadata !539} ; [ DW_TAG_auto_variable ] [i] [line 366]
!543 = metadata !{i32 369, i32 0, metadata !544, metadata !539}
!544 = metadata !{i32 786443, metadata !1, metadata !322, i32 369, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!545 = metadata !{i32 370, i32 0, metadata !546, metadata !539}
!546 = metadata !{i32 786443, metadata !1, metadata !544, i32 369, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!547 = metadata !{i32 371, i32 0, metadata !546, metadata !539}
!548 = metadata !{i32 372, i32 0, metadata !549, metadata !539}
!549 = metadata !{i32 786443, metadata !1, metadata !546, i32 371, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!550 = metadata !{i32 373, i32 0, metadata !549, metadata !539}
!551 = metadata !{i32 376, i32 0, metadata !549, metadata !539}
!552 = metadata !{i32 516, i32 0, metadata !553, null}
!553 = metadata !{i32 786443, metadata !1, metadata !198, i32 516, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!554 = metadata !{i32 517, i32 0, metadata !553, null}
!555 = metadata !{i32 519, i32 0, metadata !198, null}
!556 = metadata !{i32 520, i32 0, metadata !557, null}
!557 = metadata !{i32 786443, metadata !1, metadata !198, i32 519, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!558 = metadata !{i32 1}
!559 = metadata !{i32 521, i32 0, metadata !557, null}
!560 = metadata !{i32 522, i32 0, metadata !557, null}
!561 = metadata !{i32 523, i32 0, metadata !562, null}
!562 = metadata !{i32 786443, metadata !1, metadata !563, i32 523, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!563 = metadata !{i32 786443, metadata !1, metadata !557, i32 522, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!564 = metadata !{i32 524, i32 0, metadata !565, null}
!565 = metadata !{i32 786443, metadata !1, metadata !562, i32 523, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!566 = metadata !{i32 525, i32 0, metadata !567, null}
!567 = metadata !{i32 786443, metadata !1, metadata !565, i32 524, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!568 = metadata !{i32 526, i32 0, metadata !567, null}
!569 = metadata !{i32 527, i32 0, metadata !567, null}
!570 = metadata !{i32 528, i32 0, metadata !567, null}
!571 = metadata !{i32 529, i32 0, metadata !572, null}
!572 = metadata !{i32 786443, metadata !1, metadata !567, i32 528, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!573 = metadata !{i32 530, i32 0, metadata !572, null}
!574 = metadata !{i32 531, i32 0, metadata !572, null}
!575 = metadata !{i32 532, i32 0, metadata !572, null}
!576 = metadata !{i32 534, i32 0, metadata !567, null}
!577 = metadata !{i32 540, i32 0, metadata !563, null}
!578 = metadata !{i32 542, i32 0, metadata !563, null}
!579 = metadata !{i32 544, i32 0, metadata !557, null}
!580 = metadata !{i32 546, i32 0, metadata !581, null}
!581 = metadata !{i32 786443, metadata !1, metadata !582, i32 546, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!582 = metadata !{i32 786443, metadata !1, metadata !557, i32 544, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!583 = metadata !{i32 547, i32 0, metadata !584, null}
!584 = metadata !{i32 786443, metadata !1, metadata !581, i32 546, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!585 = metadata !{i32 548, i32 0, metadata !584, null}
!586 = metadata !{i32 550, i32 0, metadata !582, null}
!587 = metadata !{i32 551, i32 0, metadata !582, null}
!588 = metadata !{i32 552, i32 0, metadata !557, null}
!589 = metadata !{i32 553, i32 0, metadata !557, null}
!590 = metadata !{i32 786689, metadata !283, metadata !"nf", metadata !56, i32 16777715, metadata !64, i32 0, metadata !591} ; [ DW_TAG_arg_variable ] [nf] [line 499]
!591 = metadata !{i32 555, i32 0, metadata !198, null}
!592 = metadata !{i32 499, i32 0, metadata !283, metadata !591}
!593 = metadata !{i32 786689, metadata !283, metadata !"fnm", metadata !56, i32 33554931, metadata !160, i32 0, metadata !591} ; [ DW_TAG_arg_variable ] [fnm] [line 499]
!594 = metadata !{i32 786688, metadata !283, metadata !"i", metadata !56, i32 501, metadata !64, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [i] [line 501]
!595 = metadata !{i32 503, i32 0, metadata !596, metadata !591}
!596 = metadata !{i32 786443, metadata !1, metadata !283, i32 503, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!597 = metadata !{i32 504, i32 0, metadata !596, metadata !591}
!598 = metadata !{i32 505, i32 0, metadata !596, metadata !591}
!599 = metadata !{i32 556, i32 0, metadata !198, null}
!600 = metadata !{i32 461, i32 0, metadata !290, null}
!601 = metadata !{i32 467, i32 0, metadata !290, null}
!602 = metadata !{i32 470, i32 0, metadata !290, null}
!603 = metadata !{i32 471, i32 0, metadata !290, null}
!604 = metadata !{i32 473, i32 0, metadata !290, null}
!605 = metadata !{i32 475, i32 0, metadata !606, null}
!606 = metadata !{i32 786443, metadata !1, metadata !290, i32 473, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!607 = metadata !{i32 476, i32 0, metadata !608, null}
!608 = metadata !{i32 786443, metadata !1, metadata !606, i32 476, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!609 = metadata !{i32 479, i32 0, metadata !610, null}
!610 = metadata !{i32 786443, metadata !1, metadata !608, i32 476, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!611 = metadata !{i32 477, i32 0, metadata !610, null}
!612 = metadata !{i32 478, i32 0, metadata !610, null}
!613 = metadata !{i32 480, i32 0, metadata !614, null}
!614 = metadata !{i32 786443, metadata !1, metadata !610, i32 479, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!615 = metadata !{i32 481, i32 0, metadata !614, null}
!616 = metadata !{i32 486, i32 0, metadata !290, null}
!617 = metadata !{i32 786689, metadata !310, metadata !"fnm", metadata !56, i32 16777632, metadata !160, i32 0, metadata !618} ; [ DW_TAG_arg_variable ] [fnm] [line 416]
!618 = metadata !{i32 487, i32 0, metadata !290, null}
!619 = metadata !{i32 416, i32 0, metadata !310, metadata !618}
!620 = metadata !{i32 786689, metadata !310, metadata !"name", metadata !56, i32 33554848, metadata !59, i32 0, metadata !618} ; [ DW_TAG_arg_variable ] [name] [line 416]
!621 = metadata !{i32 786689, metadata !310, metadata !"bCanNotOverride", metadata !56, i32 50332064, metadata !64, i32 0, metadata !618} ; [ DW_TAG_arg_variable ] [bCanNotOverride] [line 416]
!622 = metadata !{i32 418, i32 0, metadata !310, metadata !618}
!623 = metadata !{i32 786688, metadata !310, metadata !"nopts", metadata !56, i32 421, metadata !64, i32 0, metadata !618} ; [ DW_TAG_auto_variable ] [nopts] [line 421]
!624 = metadata !{i32 424, i32 0, metadata !310, metadata !618}
!625 = metadata !{i32 425, i32 0, metadata !310, metadata !618}
!626 = metadata !{i32 786688, metadata !310, metadata !"ftps", metadata !56, i32 422, metadata !152, i32 0, metadata !618} ; [ DW_TAG_auto_variable ] [ftps] [line 422]
!627 = metadata !{i32 426, i32 0, metadata !310, metadata !618}
!628 = metadata !{i32 427, i32 0, metadata !310, metadata !618}
!629 = metadata !{i32 786688, metadata !310, metadata !"bValidExt", metadata !56, i32 420, metadata !64, i32 0, metadata !618} ; [ DW_TAG_auto_variable ] [bValidExt] [line 420]
!630 = metadata !{i32 429, i32 0, metadata !310, metadata !618}
!631 = metadata !{i32 430, i32 0, metadata !310, metadata !618}
!632 = metadata !{i32 431, i32 0, metadata !633, metadata !618}
!633 = metadata !{i32 786443, metadata !1, metadata !310, i32 430, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!634 = metadata !{i32 433, i32 0, metadata !633, metadata !618}
!635 = metadata !{i32 786688, metadata !310, metadata !"type", metadata !56, i32 419, metadata !64, i32 0, metadata !618} ; [ DW_TAG_auto_variable ] [type] [line 419]
!636 = metadata !{i32 786688, metadata !310, metadata !"i", metadata !56, i32 419, metadata !64, i32 0, metadata !618} ; [ DW_TAG_auto_variable ] [i] [line 419]
!637 = metadata !{i32 434, i32 0, metadata !638, metadata !618}
!638 = metadata !{i32 786443, metadata !1, metadata !633, i32 434, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!639 = metadata !{i32 435, i32 0, metadata !638, metadata !618}
!640 = metadata !{i32 436, i32 0, metadata !638, metadata !618}
!641 = metadata !{i32 439, i32 0, metadata !310, metadata !618}
!642 = metadata !{i32 786689, metadata !76, metadata !"ftp", metadata !56, i32 16777429, metadata !64, i32 0, metadata !641} ; [ DW_TAG_arg_variable ] [ftp] [line 213]
!643 = metadata !{i32 213, i32 0, metadata !76, metadata !641}
!644 = metadata !{i32 217, i32 0, metadata !76, metadata !641}
!645 = metadata !{i32 218, i32 0, metadata !393, metadata !641}
!646 = metadata !{i32 219, i32 0, metadata !393, metadata !641}
!647 = metadata !{i32 441, i32 0, metadata !310, metadata !618}
!648 = metadata !{i32 443, i32 0, metadata !649, metadata !618}
!649 = metadata !{i32 786443, metadata !1, metadata !650, i32 443, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!650 = metadata !{i32 786443, metadata !1, metadata !310, i32 441, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!651 = metadata !{i32 444, i32 0, metadata !652, metadata !618}
!652 = metadata !{i32 786443, metadata !1, metadata !649, i32 443, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!653 = metadata !{i32 445, i32 0, metadata !652, metadata !618}
!654 = metadata !{i32 446, i32 0, metadata !652, metadata !618}
!655 = metadata !{i32 447, i32 0, metadata !652, metadata !618}
!656 = metadata !{i32 448, i32 0, metadata !657, metadata !618}
!657 = metadata !{i32 786443, metadata !1, metadata !652, i32 447, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!658 = metadata !{i32 449, i32 0, metadata !657, metadata !618}
!659 = metadata !{i32 454, i32 0, metadata !310, metadata !618}
!660 = metadata !{i32 456, i32 0, metadata !310, metadata !618}
!661 = metadata !{i32 458, i32 0, metadata !310, metadata !618}
!662 = metadata !{i32 459, i32 0, metadata !310, metadata !618}
!663 = metadata !{i32 489, i32 0, metadata !664, null}
!664 = metadata !{i32 786443, metadata !1, metadata !290, i32 488, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!665 = metadata !{i32 490, i32 0, metadata !664, null}
!666 = metadata !{i32 492, i32 0, metadata !664, null}
!667 = metadata !{i32 493, i32 0, metadata !664, null}
!668 = metadata !{i32 495, i32 0, metadata !664, null}
!669 = metadata !{i32 497, i32 0, metadata !290, null}
!670 = metadata !{i32 558, i32 0, metadata !211, null}
!671 = metadata !{i32 562, i32 0, metadata !672, null}
!672 = metadata !{i32 786443, metadata !1, metadata !211, i32 562, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!673 = metadata !{i32 563, i32 0, metadata !672, null}
!674 = metadata !{i32 564, i32 0, metadata !672, null}
!675 = metadata !{i32 566, i32 0, metadata !211, null}
!676 = metadata !{i32 567, i32 0, metadata !211, null}
!677 = metadata !{i32 568, i32 0, metadata !211, null}
!678 = metadata !{i32 570, i32 0, metadata !219, null}
!679 = metadata !{i32 574, i32 0, metadata !680, null}
!680 = metadata !{i32 786443, metadata !1, metadata !219, i32 574, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!681 = metadata !{i32 575, i32 0, metadata !680, null}
!682 = metadata !{i32 576, i32 0, metadata !680, null}
!683 = metadata !{i32 578, i32 0, metadata !219, null}
!684 = metadata !{i32 579, i32 0, metadata !219, null}
!685 = metadata !{i32 580, i32 0, metadata !219, null}
!686 = metadata !{i32 582, i32 0, metadata !227, null}
!687 = metadata !{i32 586, i32 0, metadata !688, null}
!688 = metadata !{i32 786443, metadata !1, metadata !227, i32 586, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!689 = metadata !{i32 587, i32 0, metadata !688, null}
!690 = metadata !{i32 588, i32 0, metadata !688, null}
!691 = metadata !{i32 590, i32 0, metadata !227, null}
!692 = metadata !{i32 592, i32 0, metadata !227, null}
!693 = metadata !{i32 593, i32 0, metadata !227, null}
!694 = metadata !{i32 595, i32 0, metadata !235, null}
!695 = metadata !{i32 599, i32 0, metadata !696, null}
!696 = metadata !{i32 786443, metadata !1, metadata !235, i32 599, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!697 = metadata !{i32 600, i32 0, metadata !696, null}
!698 = metadata !{i32 601, i32 0, metadata !696, null}
!699 = metadata !{i32 603, i32 0, metadata !235, null}
!700 = metadata !{i32 605, i32 0, metadata !235, null}
!701 = metadata !{i32 606, i32 0, metadata !235, null}
!702 = metadata !{i32 608, i32 0, metadata !243, null}
!703 = metadata !{i32 612, i32 0, metadata !704, null}
!704 = metadata !{i32 786443, metadata !1, metadata !243, i32 612, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!705 = metadata !{i32 613, i32 0, metadata !704, null}
!706 = metadata !{i32 614, i32 0, metadata !707, null}
!707 = metadata !{i32 786443, metadata !1, metadata !704, i32 613, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!708 = metadata !{i32 617, i32 0, metadata !707, null}
!709 = metadata !{i32 619, i32 0, metadata !243, null}
!710 = metadata !{i32 620, i32 0, metadata !243, null}
!711 = metadata !{i32 621, i32 0, metadata !243, null}
!712 = metadata !{i32 623, i32 0, metadata !249, null}
!713 = metadata !{i32 627, i32 0, metadata !714, null}
!714 = metadata !{i32 786443, metadata !1, metadata !249, i32 627, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!715 = metadata !{i32 628, i32 0, metadata !714, null}
!716 = metadata !{i32 629, i32 0, metadata !717, null}
!717 = metadata !{i32 786443, metadata !1, metadata !714, i32 628, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!718 = metadata !{i32 632, i32 0, metadata !717, null}
!719 = metadata !{i32 634, i32 0, metadata !249, null}
!720 = metadata !{i32 635, i32 0, metadata !249, null}
!721 = metadata !{i32 636, i32 0, metadata !249, null}
!722 = metadata !{i32 654, i32 0, metadata !255, null}
!723 = metadata !{i32 656, i32 0, metadata !255, null}
!724 = metadata !{i32 659, i32 0, metadata !255, null}
!725 = metadata !{i32 660, i32 0, metadata !255, null}
!726 = metadata !{i32 661, i32 0, metadata !255, null}
!727 = metadata !{i32 663, i32 0, metadata !728, null}
!728 = metadata !{i32 786443, metadata !1, metadata !255, i32 661, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!729 = metadata !{i32 664, i32 0, metadata !728, null}
!730 = metadata !{i32 666, i32 0, metadata !728, null}
!731 = metadata !{i32 667, i32 0, metadata !728, null}
!732 = metadata !{i32 669, i32 0, metadata !728, null}
!733 = metadata !{i32 670, i32 0, metadata !728, null}
!734 = metadata !{i32 672, i32 0, metadata !728, null}
!735 = metadata !{i32 673, i32 0, metadata !728, null}
!736 = metadata !{i32 675, i32 0, metadata !728, null}
!737 = metadata !{i32 676, i32 0, metadata !728, null}
!738 = metadata !{i32 678, i32 0, metadata !728, null}
!739 = metadata !{i32 679, i32 0, metadata !728, null}
!740 = metadata !{i32 786689, metadata !65, metadata !"ftp", metadata !56, i32 16777396, metadata !64, i32 0, metadata !741} ; [ DW_TAG_arg_variable ] [ftp] [line 180]
!741 = metadata !{i32 681, i32 0, metadata !728, null}
!742 = metadata !{i32 180, i32 0, metadata !65, metadata !741}
!743 = metadata !{i32 182, i32 0, metadata !65, metadata !741}
!744 = metadata !{i32 183, i32 0, metadata !65, metadata !741}
!745 = metadata !{i32 682, i32 0, metadata !728, null}
!746 = metadata !{i32 684, i32 0, metadata !255, null}
!747 = metadata !{null}
!748 = metadata !{i32 638, i32 0, metadata !270, null}
!749 = metadata !{i32 640, i32 0, metadata !270, null}
!750 = metadata !{i32 643, i32 0, metadata !270, null}
!751 = metadata !{i32 644, i32 0, metadata !752, null}
!752 = metadata !{i32 786443, metadata !1, metadata !270, i32 644, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!753 = metadata !{i32 645, i32 0, metadata !754, null}
!754 = metadata !{i32 786443, metadata !1, metadata !752, i32 644, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/filenm.c]
!755 = metadata !{i32 786689, metadata !65, metadata !"ftp", metadata !56, i32 16777396, metadata !64, i32 0, metadata !753} ; [ DW_TAG_arg_variable ] [ftp] [line 180]
!756 = metadata !{i32 180, i32 0, metadata !65, metadata !753}
!757 = metadata !{i32 182, i32 0, metadata !65, metadata !753}
!758 = metadata !{i32 183, i32 0, metadata !65, metadata !753}
!759 = metadata !{i32 646, i32 0, metadata !754, null}
!760 = metadata !{i32 647, i32 0, metadata !754, null}
!761 = metadata !{i32 648, i32 0, metadata !754, null}
!762 = metadata !{i32 649, i32 0, metadata !754, null}
!763 = metadata !{i32 651, i32 0, metadata !270, null}
!764 = metadata !{i32 652, i32 0, metadata !270, null}
!765 = metadata !{i32 687, i32 0, metadata !259, null}
!766 = metadata !{i32 689, i32 0, metadata !259, null}
!767 = metadata !{i32 692, i32 0, metadata !264, null}
!768 = metadata !{i32 694, i32 0, metadata !264, null}
!769 = metadata !{i32 697, i32 0, metadata !267, null}
!770 = metadata !{i32 699, i32 0, metadata !267, null}
!771 = metadata !{i32 403, i32 0, metadata !301, null}
!772 = metadata !{i32 409, i32 0, metadata !301, null}
!773 = metadata !{i32 410, i32 0, metadata !301, null}
!774 = metadata !{i32 411, i32 0, metadata !301, null}
!775 = metadata !{i32 412, i32 0, metadata !301, null}
!776 = metadata !{i32 413, i32 0, metadata !301, null}
!777 = metadata !{i32 414, i32 0, metadata !301, null}

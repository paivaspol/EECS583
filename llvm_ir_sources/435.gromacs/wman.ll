; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/wman.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.t_sandr = type { i8*, i8* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_filenm = type { i32, i8*, i8*, i64 }
%struct.t_pargs = type { i8*, i32, i32, %union.anon, i8* }
%union.anon = type { i8* }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [5 x i8] c"[TT]\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"{\5Ctt \00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"[tt]\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"[BB]\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"{\5Cbf \00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"[bb]\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"[IT]\00", align 1
@.str8 = private unnamed_addr constant [6 x i8] c"{\5Cem \00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"[it]\00", align 1
@.str10 = private unnamed_addr constant [6 x i8] c"[PAR]\00", align 1
@.str11 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str12 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str13 = private unnamed_addr constant [3 x i8] c"\5C_\00", align 1
@.str14 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str15 = private unnamed_addr constant [3 x i8] c"\5C$\00", align 1
@.str16 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str17 = private unnamed_addr constant [4 x i8] c"$<$\00", align 1
@.str18 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str19 = private unnamed_addr constant [4 x i8] c"$>$\00", align 1
@.str20 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str21 = private unnamed_addr constant [3 x i8] c"\5C^\00", align 1
@.str22 = private unnamed_addr constant [4 x i8] c"\5C^2\00", align 1
@.str23 = private unnamed_addr constant [5 x i8] c"$^2$\00", align 1
@.str24 = private unnamed_addr constant [4 x i8] c"\5C^3\00", align 1
@.str25 = private unnamed_addr constant [5 x i8] c"$^3$\00", align 1
@.str26 = private unnamed_addr constant [4 x i8] c"\5C^6\00", align 1
@.str27 = private unnamed_addr constant [5 x i8] c"$^6$\00", align 1
@.str28 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str29 = private unnamed_addr constant [3 x i8] c"\5C#\00", align 1
@.str30 = private unnamed_addr constant [5 x i8] c"[BR]\00", align 1
@.str31 = private unnamed_addr constant [3 x i8] c"\5C\5C\00", align 1
@.str32 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str33 = private unnamed_addr constant [3 x i8] c"\5C%\00", align 1
@.str34 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str35 = private unnamed_addr constant [3 x i8] c"\5C&\00", align 1
@.str36 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str37 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str38 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@sandrTeX = global [21 x %struct.t_sandr] [%struct.t_sandr { i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([5 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str8, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([6 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str11, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([2 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str15, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([2 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str17, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([2 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str19, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([2 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str21, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([4 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str23, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([4 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str25, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([4 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str27, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([2 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str29, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([5 x i8]* @.str30, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str31, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([2 x i8]* @.str32, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str33, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([2 x i8]* @.str34, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str35, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([3 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str37, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([2 x i8]* @.str38, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str37, i32 0, i32 0) }], align 16
@.str39 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str40 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@sandrTty = global [8 x %struct.t_sandr] [%struct.t_sandr { i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str39, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str39, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str39, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str39, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([5 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str39, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str39, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([6 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str11, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([5 x i8]* @.str30, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str40, i32 0, i32 0) }], align 16
@.str41 = private unnamed_addr constant [5 x i8] c"\0A.B \00", align 1
@.str42 = private unnamed_addr constant [5 x i8] c"\0A.I \00", align 1
@.str43 = private unnamed_addr constant [3 x i8] c"\0A \00", align 1
@sandrNROFF = global [13 x %struct.t_sandr] [%struct.t_sandr { i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str41, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str40, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str41, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str40, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([5 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str42, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str40, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([6 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str11, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([3 x i8]* @.str43, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str40, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([2 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str39, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([2 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str39, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([2 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str39, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([2 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str39, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([5 x i8]* @.str30, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str40, i32 0, i32 0) }], align 16
@.str44 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str45 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str46 = private unnamed_addr constant [5 x i8] c"<tt>\00", align 1
@.str47 = private unnamed_addr constant [6 x i8] c"</tt>\00", align 1
@.str48 = private unnamed_addr constant [4 x i8] c"<b>\00", align 1
@.str49 = private unnamed_addr constant [5 x i8] c"</b>\00", align 1
@.str50 = private unnamed_addr constant [5 x i8] c"<it>\00", align 1
@.str51 = private unnamed_addr constant [6 x i8] c"</it>\00", align 1
@.str52 = private unnamed_addr constant [4 x i8] c"<p>\00", align 1
@.str53 = private unnamed_addr constant [5 x i8] c"<br>\00", align 1
@sandrHTML = global [10 x %struct.t_sandr] [%struct.t_sandr { i8* getelementptr inbounds ([2 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str44, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([2 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str45, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str46, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str47, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str48, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str49, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([5 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str50, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str51, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([6 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str52, i32 0, i32 0) }, %struct.t_sandr { i8* getelementptr inbounds ([5 x i8]* @.str30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str53, i32 0, i32 0) }], align 16
@fileopt.buf = internal global [32 x i8] zeroinitializer, align 16
@.str54 = private unnamed_addr constant [7 x i8] c"In/Out\00", align 1
@.str55 = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@.str56 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@.str57 = private unnamed_addr constant [6 x i8] c"Dunno\00", align 1
@.str58 = private unnamed_addr constant [6 x i8] c", Opt\00", align 1
@.str59 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str60 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str61 = private unnamed_addr constant [7 x i8] c", Lib.\00", align 1
@.str62 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str63 = private unnamed_addr constant [64 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/wman.c\00", align 1
@.str64 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str65 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str66 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str67 = private unnamed_addr constant [4 x i8] c"par\00", align 1
@.str68 = private unnamed_addr constant [4 x i8] c"tex\00", align 1
@.str69 = private unnamed_addr constant [6 x i8] c"nroff\00", align 1
@.str70 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str71 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str72 = private unnamed_addr constant [5 x i8] c"html\00", align 1
@.str73 = private unnamed_addr constant [15 x i8] c"completion-zsh\00", align 1
@.str74 = private unnamed_addr constant [16 x i8] c"completion-bash\00", align 1
@.str75 = private unnamed_addr constant [15 x i8] c"completion-csh\00", align 1
@html_xref.nstr = internal unnamed_addr global i32 0, align 4
@html_xref.str = internal global i8** null, align 8
@html_xref.sr = internal unnamed_addr global %struct.t_sandr* null, align 8
@.str76 = private unnamed_addr constant [10 x i8] c"links.dat\00", align 1
@.str77 = private unnamed_addr constant [3 x i8] c"sr\00", align 1
@.str78 = private unnamed_addr constant [25 x i8] c"<a href=\22%s.html\22>%s</a>\00", align 1
@.str79 = private unnamed_addr constant [27 x i8] c"\5Csection{\5Cnormindex{%s}}\0A\0A\00", align 1
@.str80 = private unnamed_addr constant [30 x i8] c"\5Cvspace{-2ex}\5Cbegin{tabbing}\0A\00", align 1
@.str81 = private unnamed_addr constant [40 x i8] c"\0A{\5Cnormalsize \5Cbf Files}\5Cnopagebreak\5C\5C\0A\00", align 1
@.str82 = private unnamed_addr constant [86 x i8] c"{\5Ctt ~~~~~~~} \5C= {\5Ctt ~~~~~~~~~~~~~~} \5C= ~~~~~~~~~~~~~~~~~~~~~~ \5C= \5Cnopagebreak\5Ckill\0A\00", align 1
@.str83 = private unnamed_addr constant [69 x i8] c"\5C>{\5Ctt %s} \5C'\5C> {\5Ctt %s} \5C' %s \5C> \5Cparbox[t]{0.55\5Clinewidth}{%s} \5C\5C\0A\00", align 1
@.str84 = private unnamed_addr constant [28 x i8] c"\5Cend{tabbing}\5Cvspace{-4ex}\0A\00", align 1
@.str85 = private unnamed_addr constant [48 x i8] c"\0A{\5Cnormalsize \5Cbf Other options}\5Cnopagebreak\5C\5C\0A\00", align 1
@.str86 = private unnamed_addr constant [66 x i8] c"{\5Ctt ~~~~~~~~~~} \5C= vector \5C= {\5Ctt ~~~~~~~} \5C= \5Cnopagebreak\5Ckill\0A\00", align 1
@.str87 = private unnamed_addr constant [71 x i8] c"\5C> {\5Ctt %s} \5C'\5C> %s \5C'\5C> {\5Ctt %s} \5C' \5Cparbox[t]{0.68\5Clinewidth}{%s}\5C\5C\0A\00", align 1
@argtp = internal unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str92, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str93, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str94, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str95, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str96, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str97, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str98, i32 0, i32 0)], align 16
@.str88 = private unnamed_addr constant [85 x i8] c"\5C> {\5Ctt %s} \5C'\5C> %s \5C'\5C>\5C\5C\0A\5C> \5C'\5C> \5C'\5C> {\5Ctt %s} \5C' \5Cparbox[t]{0.7\5Clinewidth}{%s}\5C\5C\0A\00", align 1
@.str89 = private unnamed_addr constant [17 x i8] c"\5Cbegin{itemize}\0A\00", align 1
@.str90 = private unnamed_addr constant [10 x i8] c"\5Citem %s\0A\00", align 1
@.str91 = private unnamed_addr constant [15 x i8] c"\5Cend{itemize}\0A\00", align 1
@.str92 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str93 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str94 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str95 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str96 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str97 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@.str98 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str99 = private unnamed_addr constant [15 x i8] c".TH %s 1 \22%s\22\0A\00", align 1
@.str100 = private unnamed_addr constant [10 x i8] c".SH NAME\0A\00", align 1
@.str101 = private unnamed_addr constant [7 x i8] c".B %s\0A\00", align 1
@.str102 = private unnamed_addr constant [14 x i8] c".SH SYNOPSIS\0A\00", align 1
@.str103 = private unnamed_addr constant [10 x i8] c"\5Cf3%s\5CfP\0A\00", align 1
@.str104 = private unnamed_addr constant [17 x i8] c".BI \22%s\22 \22 %s \22\0A\00", align 1
@.str105 = private unnamed_addr constant [18 x i8] c".BI \22-[no]%s\22 \22\22\0A\00", align 1
@.str106 = private unnamed_addr constant [17 x i8] c".SH DESCRIPTION\0A\00", align 1
@.str107 = private unnamed_addr constant [11 x i8] c".SH FILES\0A\00", align 1
@.str108 = private unnamed_addr constant [29 x i8] c".BI \22%s\22 \22 %s\22 \0A.B %s\0A %s \0A\0A\00", align 1
@.str109 = private unnamed_addr constant [19 x i8] c".SH OTHER OPTIONS\0A\00", align 1
@.str110 = private unnamed_addr constant [26 x i8] c".BI \22-[no]%s\22  \22%s\22\0A %s\0A\0A\00", align 1
@.str111 = private unnamed_addr constant [29 x i8] c".BI \22%s\22  \22 %s\22 \22 %s\22 \0A %s\0A\0A\00", align 1
@.str112 = private unnamed_addr constant [8 x i8] c"\5C- %s\0A\0A\00", align 1
@mydate.mon = internal unnamed_addr constant [12 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str113, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str114, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str115, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str116, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str117, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str118, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str119, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str120, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str121, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str122, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str123, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str124, i32 0, i32 0)], align 16
@.str113 = private unnamed_addr constant [4 x i8] c"Jan\00", align 1
@.str114 = private unnamed_addr constant [4 x i8] c"Feb\00", align 1
@.str115 = private unnamed_addr constant [4 x i8] c"Mar\00", align 1
@.str116 = private unnamed_addr constant [4 x i8] c"Apr\00", align 1
@.str117 = private unnamed_addr constant [4 x i8] c"May\00", align 1
@.str118 = private unnamed_addr constant [4 x i8] c"Jun\00", align 1
@.str119 = private unnamed_addr constant [4 x i8] c"Jul\00", align 1
@.str120 = private unnamed_addr constant [4 x i8] c"Aug\00", align 1
@.str121 = private unnamed_addr constant [4 x i8] c"Sep\00", align 1
@.str122 = private unnamed_addr constant [4 x i8] c"Oct\00", align 1
@.str123 = private unnamed_addr constant [4 x i8] c"Nov\00", align 1
@.str124 = private unnamed_addr constant [4 x i8] c"Dec\00", align 1
@mydate.day = internal unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str125, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str126, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str127, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str128, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str129, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str130, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str131, i32 0, i32 0)], align 16
@.str125 = private unnamed_addr constant [4 x i8] c"Sun\00", align 1
@.str126 = private unnamed_addr constant [4 x i8] c"Mon\00", align 1
@.str127 = private unnamed_addr constant [4 x i8] c"Tue\00", align 1
@.str128 = private unnamed_addr constant [4 x i8] c"Wed\00", align 1
@.str129 = private unnamed_addr constant [4 x i8] c"Thu\00", align 1
@.str130 = private unnamed_addr constant [4 x i8] c"Fri\00", align 1
@.str131 = private unnamed_addr constant [4 x i8] c"Sat\00", align 1
@mydate.tbuf = internal global [128 x i8] zeroinitializer, align 16
@.str132 = private unnamed_addr constant [12 x i8] c"%s %d %s %d\00", align 1
@.str133 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str134 = private unnamed_addr constant [7 x i8] c"%s\0A%s\0A\00", align 1
@.str135 = private unnamed_addr constant [15 x i8] c"DESCRIPTION:\0A\0A\00", align 1
@.str136 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@.str137 = private unnamed_addr constant [3 x i8] c"* \00", align 1
@.str138 = private unnamed_addr constant [33 x i8] c"<HTML>\0A<HEAD>\0A<TITLE>%s</TITLE>\0A\00", align 1
@.str139 = private unnamed_addr constant [56 x i8] c"<LINK rel=stylesheet href=\22style.css\22 type=\22text/css\22>\0A\00", align 1
@.str140 = private unnamed_addr constant [88 x i8] c"<BODY text=\22#000000\22 bgcolor=\22#FFFFFF\22 link=\22#0000FF\22 vlink=\22#990000\22 alink=\22#FF0000\22>\0A\00", align 1
@.str141 = private unnamed_addr constant [51 x i8] c"<TABLE WIDTH=\2298%%\22 NOBORDER >\0A<TR><TD WIDTH=400>\0A\00", align 1
@.str142 = private unnamed_addr constant [43 x i8] c"<TABLE WIDTH=400 NOBORDER>\0A<TD WIDTH=116>\0A\00", align 1
@.str143 = private unnamed_addr constant [113 x i8] c"<a href=\22http://www.gromacs.org/\22><img SRC=\22../images/gmxlogo_small.jpg\22BORDER=0 height=133 width=116></a></td>\0A\00", align 1
@.str144 = private unnamed_addr constant [52 x i8] c"<td ALIGN=LEFT VALIGN=TOP WIDTH=280><br><h2>%s</h2>\00", align 1
@.str145 = private unnamed_addr constant [77 x i8] c"<font size=-1><A HREF=\22../online.html\22>Main Table of Contents</A></font><br>\00", align 1
@.str146 = private unnamed_addr constant [77 x i8] c"<br></td>\0A</TABLE></TD><TD WIDTH=\22*\22 ALIGN=RIGHT VALIGN=BOTTOM><p><B>%s<br>\0A\00", align 1
@.str147 = private unnamed_addr constant [31 x i8] c"%s</B></td></tr></TABLE>\0A<HR>\0A\00", align 1
@.str148 = private unnamed_addr constant [26 x i8] c"<H3>Description</H3>\0A<p>\0A\00", align 1
@.str149 = private unnamed_addr constant [5 x i8] c"<P>\0A\00", align 1
@.str150 = private unnamed_addr constant [16 x i8] c"<H3>Files</H3>\0A\00", align 1
@.str151 = private unnamed_addr constant [121 x i8] c"<TABLE BORDER=1 CELLSPACING=0 CELLPADDING=2>\0A<TR><TH>option</TH><TH>filename</TH><TH>type</TH><TH>description</TH></TR>\0A\00", align 1
@.str152 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str153 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@.str154 = private unnamed_addr constant [136 x i8] c"<TR><TD ALIGN=RIGHT> <b><tt>%s</tt></b> </TD><TD ALIGN=RIGHT> <tt><a href=\22%s.html\22>%12s</a></tt> </TD><TD> %s </TD><TD> %s </TD></TR>\0A\00", align 1
@.str155 = private unnamed_addr constant [10 x i8] c"</TABLE>\0A\00", align 1
@.str156 = private unnamed_addr constant [24 x i8] c"<H3>Other options</H3>\0A\00", align 1
@.str157 = private unnamed_addr constant [120 x i8] c"<TABLE BORDER=1 CELLSPACING=0 CELLPADDING=2>\0A<TR><TH>option</TH><TH>type</TH><TH>default</TH><TH>description</TH></TR>\0A\00", align 1
@.str158 = private unnamed_addr constant [126 x i8] c"<TR><TD ALIGN=RIGHT> <b><tt>%s%s</tt></b> </TD><TD ALIGN=RIGHT> %s </TD><TD ALIGN=RIGHT> <tt>%s</tt> </TD><TD> %s </TD></TD>\0A\00", align 1
@.str159 = private unnamed_addr constant [6 x i8] c"-[no]\00", align 1
@.str160 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str161 = private unnamed_addr constant [6 x i8] c"<UL>\0A\00", align 1
@.str162 = private unnamed_addr constant [8 x i8] c"<LI>%s\0A\00", align 1
@.str163 = private unnamed_addr constant [7 x i8] c"</UL>\0A\00", align 1
@.str164 = private unnamed_addr constant [24 x i8] c"<hr>\0A<div ALIGN=RIGHT>\0A\00", align 1
@.str165 = private unnamed_addr constant [88 x i8] c"<font size=\22-1\22><a href=\22http://www.gromacs.org\22>http://www.gromacs.org</a></font><br>\0A\00", align 1
@.str166 = private unnamed_addr constant [8 x i8] c"</div>\0A\00", align 1
@.str167 = private unnamed_addr constant [9 x i8] c"</BODY>\0A\00", align 1
@.str168 = private unnamed_addr constant [9 x i8] c"compctl \00", align 1
@.str169 = private unnamed_addr constant [7 x i8] c"-- %s\0A\00", align 1
@.str170 = private unnamed_addr constant [8 x i8] c" \22c/-/(\00", align 1
@.str171 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str172 = private unnamed_addr constant [6 x i8] c" no%s\00", align 1
@.str173 = private unnamed_addr constant [4 x i8] c")/\22\00", align 1
@.str174 = private unnamed_addr constant [78 x i8] c"if (( $COMP_CWORD <= 1 )) || [[ $c == -* ]]; then COMPREPLY=( $(compgen  -W '\00", align 1
@.str175 = private unnamed_addr constant [5 x i8] c" -%s\00", align 1
@.str176 = private unnamed_addr constant [7 x i8] c" -no%s\00", align 1
@.str177 = private unnamed_addr constant [25 x i8] c"' -- $c)); return 0; fi\0A\00", align 1
@.str178 = private unnamed_addr constant [16 x i8] c" -x 's[-]' -s \22\00", align 1
@.str179 = private unnamed_addr constant [3 x i8] c"\22 \00", align 1
@.str180 = private unnamed_addr constant [18 x i8] c"shopt -s extglob\0A\00", align 1
@.str181 = private unnamed_addr constant [25 x i8] c"_%s_compl() {\0Alocal p c\0A\00", align 1
@.str182 = private unnamed_addr constant [72 x i8] c"COMPREPLY=() c=${COMP_WORDS[COMP_CWORD]} p=${COMP_WORDS[COMP_CWORD-1]}\0A\00", align 1
@.str183 = private unnamed_addr constant [14 x i8] c"case \22$p\22 in\0A\00", align 1
@.str184 = private unnamed_addr constant [36 x i8] c"esac; }; \0Acomplete -F _%s_compl %s\0A\00", align 1
@.str185 = private unnamed_addr constant [12 x i8] c"complete %s\00", align 1

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
define i8* @check_tex(i8* %s) #3 {
  %1 = tail call fastcc i8* @repall(i8* %s, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #9
  ret i8* %1
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i8* @repall(i8* %s, i32 %nsr, %struct.t_sandr* nocapture readonly %sa) #3 {
  %1 = icmp sgt i32 %nsr, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = add i32 %nsr, -1
  br label %3

; <label>:3                                       ; preds = %13, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %13 ]
  %buf.02 = phi i8* [ %s, %.lr.ph ], [ %8, %13 ]
  %4 = getelementptr inbounds %struct.t_sandr* %sa, i64 %indvars.iv, i32 0
  %5 = load i8** %4, align 8, !tbaa !14
  %6 = getelementptr inbounds %struct.t_sandr* %sa, i64 %indvars.iv, i32 1
  %7 = load i8** %6, align 8, !tbaa !16
  %8 = tail call i8* @replace(i8* %buf.02, i8* %5, i8* %7) #8
  %9 = trunc i64 %indvars.iv to i32
  %10 = icmp ne i32 %9, 0
  %11 = icmp ne i8* %buf.02, null
  %or.cond = and i1 %11, %10
  br i1 %or.cond, label %12, label %13

; <label>:12                                      ; preds = %3
  tail call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str63, i64 0, i64 0), i32 144, i8* %buf.02) #8
  br label %13

; <label>:13                                      ; preds = %12, %3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %9, %2
  br i1 %exitcond, label %._crit_edge, label %3

._crit_edge:                                      ; preds = %13, %0
  %buf.0.lcssa = phi i8* [ %s, %0 ], [ %8, %13 ]
  ret i8* %buf.0.lcssa
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @check_nroff(i8* %s) #3 {
  %1 = tail call fastcc i8* @repall(i8* %s, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #9
  ret i8* %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @fileopt(i64 %flag) #3 {
  %1 = and i64 %flag, 6
  %2 = icmp eq i64 %1, 6
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str54, i64 0, i64 0), i64 7, i32 1, i1 false)
  br label %13

; <label>:4                                       ; preds = %0
  %5 = and i64 %flag, 2
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %8, label %7

; <label>:7                                       ; preds = %4
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str55, i64 0, i64 0), i64 6, i32 1, i1 false)
  br label %13

; <label>:8                                       ; preds = %4
  %9 = and i64 %flag, 4
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %12, label %11

; <label>:11                                      ; preds = %8
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str56, i64 0, i64 0), i64 7, i32 1, i1 false)
  br label %13

; <label>:12                                      ; preds = %8
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str57, i64 0, i64 0), i64 6, i32 1, i1 false)
  br label %13

; <label>:13                                      ; preds = %7, %12, %11, %3
  %14 = and i64 %flag, 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %24, label %16

; <label>:16                                      ; preds = %13
  %17 = tail call i8* @__strcat_chk(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str58, i64 0, i64 0), i64 32) #8
  %18 = and i64 %flag, 1
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %22, label %20

; <label>:20                                      ; preds = %16
  %21 = tail call i8* @__strcat_chk(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str59, i64 0, i64 0), i64 32) #8
  br label %24

; <label>:22                                      ; preds = %16
  %23 = tail call i8* @__strcat_chk(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str60, i64 0, i64 0), i64 32) #8
  br label %24

; <label>:24                                      ; preds = %13, %20, %22
  %25 = and i64 %flag, 16
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %29, label %27

; <label>:27                                      ; preds = %24
  %28 = tail call i8* @__strcat_chk(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str61, i64 0, i64 0), i64 32) #8
  br label %29

; <label>:29                                      ; preds = %24, %27
  ret i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0)
}

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #4

; Function Attrs: nounwind optsize
declare i8* @__strcat_chk(i8*, i8*, i64) #4

; Function Attrs: nounwind optsize ssp uwtable
define i8* @check_tty(i8* %s) #3 {
  %1 = tail call fastcc i8* @repall(i8* %s, i32 8, %struct.t_sandr* getelementptr inbounds ([8 x %struct.t_sandr]* @sandrTty, i64 0, i64 0)) #9
  ret i8* %1
}

; Function Attrs: nounwind optsize ssp uwtable
define void @print_tty_formatted(%struct.__sFILE* nocapture %out, i32 %nldesc, i8** nocapture readonly %desc) #3 {
  %1 = icmp sgt i32 %nldesc, 0
  br i1 %1, label %.lr.ph5, label %.thread

.thread:                                          ; preds = %0
  %2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str63, i64 0, i64 0), i32 370, i32 0, i32 1) #8
  br label %._crit_edge

.lr.ph5:                                          ; preds = %0
  %3 = add i32 %nldesc, -1
  br label %4

; <label>:4                                       ; preds = %4, %.lr.ph5
  %indvars.iv7 = phi i64 [ 0, %.lr.ph5 ], [ %indvars.iv.next8, %4 ]
  %j.03 = phi i64 [ 0, %.lr.ph5 ], [ %10, %4 ]
  %5 = getelementptr inbounds i8** %desc, i64 %indvars.iv7
  %6 = load i8** %5, align 8, !tbaa !17
  %7 = tail call i64 @strlen(i8* %6) #8
  %8 = and i64 %j.03, 4294967295
  %9 = add nuw nsw i64 %8, 10
  %10 = add i64 %9, %7
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %lftr.wideiv9 = trunc i64 %indvars.iv7 to i32
  %exitcond10 = icmp eq i32 %lftr.wideiv9, %3
  br i1 %exitcond10, label %11, label %4

; <label>:11                                      ; preds = %4
  %12 = trunc i64 %10 to i32
  %13 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str63, i64 0, i64 0), i32 370, i32 %12, i32 1) #8
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %11
  %14 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %13, i1 false)
  %15 = add i32 %nldesc, -1
  br label %16

; <label>:16                                      ; preds = %25, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %25 ]
  %strlenfirst = load i8* %13, align 1
  %17 = icmp eq i8 %strlenfirst, 0
  br i1 %17, label %25, label %18

; <label>:18                                      ; preds = %16
  %19 = tail call i64 @strlen(i8* %13) #8
  %20 = add i64 %19, -1
  %21 = getelementptr inbounds i8* %13, i64 %20
  %22 = load i8* %21, align 1, !tbaa !13
  switch i8 %22, label %23 [
    i8 32, label %25
    i8 10, label %25
  ]

; <label>:23                                      ; preds = %18
  %24 = tail call i8* @__strcat_chk(i8* %13, i8* getelementptr inbounds ([2 x i8]* @.str64, i64 0, i64 0), i64 %14) #8
  br label %25

; <label>:25                                      ; preds = %18, %18, %16, %23
  %26 = getelementptr inbounds i8** %desc, i64 %indvars.iv
  %27 = load i8** %26, align 8, !tbaa !17
  %28 = tail call fastcc i8* @repall(i8* %27, i32 8, %struct.t_sandr* getelementptr inbounds ([8 x %struct.t_sandr]* @sandrTty, i64 0, i64 0)) #8
  %29 = tail call i8* @__strcat_chk(i8* %13, i8* %28, i64 %14) #8
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str65, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str63, i64 0, i64 0), i32 377, i8* %28) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %15
  br i1 %exitcond, label %._crit_edge, label %16

._crit_edge:                                      ; preds = %25, %.thread, %11
  %30 = phi i8* [ %2, %.thread ], [ %13, %11 ], [ %13, %25 ]
  %31 = tail call i8* @wrap_lines(i8* %30, i32 80, i32 0) #8
  %32 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str66, i64 0, i64 0), i8* %31) #8
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str65, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str63, i64 0, i64 0), i32 382, i8* %31) #8
  tail call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str63, i64 0, i64 0), i32 383, i8* %30) #8
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #6

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: optsize
declare i8* @wrap_lines(i8*, i32, i32) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: nounwind optsize ssp uwtable
define i8* @check_html(i8* %s, i8* readonly %program) #3 {
  %buf.i = alloca [256 x i8], align 16
  %1 = tail call fastcc i8* @repall(i8* %s, i32 10, %struct.t_sandr* getelementptr inbounds ([10 x %struct.t_sandr]* @sandrHTML, i64 0, i64 0)) #9
  %2 = getelementptr inbounds [256 x i8]* %buf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %2) #7
  %3 = load %struct.t_sandr** @html_xref.sr, align 8, !tbaa !17
  %4 = icmp eq %struct.t_sandr* %3, null
  br i1 %4, label %5, label %thread-pre-split.i

; <label>:5                                       ; preds = %0
  %6 = tail call i32 @get_file(i8* getelementptr inbounds ([10 x i8]* @.str76, i64 0, i64 0), i8*** @html_xref.str) #8
  store i32 %6, i32* @html_xref.nstr, align 4, !tbaa !18
  %7 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str77, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str63, i64 0, i64 0), i32 187, i32 %6, i32 16) #8
  store i8* %7, i8** bitcast (%struct.t_sandr** @html_xref.sr to i8**), align 8, !tbaa !17
  %8 = load i32* @html_xref.nstr, align 4, !tbaa !18
  %9 = icmp sgt i32 %8, 0
  %10 = bitcast i8* %7 to %struct.t_sandr*
  br i1 %9, label %.lr.ph.i, label %36

.lr.ph.i:                                         ; preds = %5
  %11 = icmp eq i8* %program, null
  br label %12

; <label>:12                                      ; preds = %32, %.lr.ph.i
  %13 = phi i32 [ %8, %.lr.ph.i ], [ %33, %32 ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %32 ]
  %j.01.i = phi i32 [ 0, %.lr.ph.i ], [ %j.1.i, %32 ]
  %.pre.i = load i8*** @html_xref.str, align 8, !tbaa !17
  %.phi.trans.insert = getelementptr inbounds i8** %.pre.i, i64 %indvars.iv.i
  br i1 %11, label %.._crit_edge3.i_crit_edge, label %14

.._crit_edge3.i_crit_edge:                        ; preds = %12
  %.phi.trans.insert1 = bitcast i8** %.phi.trans.insert to i64*
  %.pre = load i64* %.phi.trans.insert1, align 8, !tbaa !17
  br label %._crit_edge3.i

; <label>:14                                      ; preds = %12
  %15 = load i8** %.phi.trans.insert, align 8, !tbaa !17
  %16 = call i32 @strcasecmp(i8* %program, i8* %15) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %32, label %.._crit_edge3.i_crit_edge2

.._crit_edge3.i_crit_edge2:                       ; preds = %14
  %18 = ptrtoint i8* %15 to i64
  br label %._crit_edge3.i

._crit_edge3.i:                                   ; preds = %.._crit_edge3.i_crit_edge2, %.._crit_edge3.i_crit_edge
  %19 = phi i64 [ %.pre, %.._crit_edge3.i_crit_edge ], [ %18, %.._crit_edge3.i_crit_edge2 ]
  %20 = sext i32 %j.01.i to i64
  %21 = load %struct.t_sandr** @html_xref.sr, align 8, !tbaa !17
  %22 = getelementptr inbounds %struct.t_sandr* %21, i64 %20
  %23 = bitcast %struct.t_sandr* %22 to i64*
  store i64 %19, i64* %23, align 8, !tbaa !14
  %24 = load i8*** @html_xref.str, align 8, !tbaa !17
  %25 = getelementptr inbounds i8** %24, i64 %indvars.iv.i
  %26 = load i8** %25, align 8, !tbaa !17
  %27 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %2, i32 0, i64 256, i8* getelementptr inbounds ([25 x i8]* @.str78, i64 0, i64 0), i8* %26, i8* %26) #8
  %28 = call i8* @strdup(i8* %2) #8
  %29 = load %struct.t_sandr** @html_xref.sr, align 8, !tbaa !17
  %30 = getelementptr inbounds %struct.t_sandr* %29, i64 %20, i32 1
  store i8* %28, i8** %30, align 8, !tbaa !16
  %31 = add nsw i32 %j.01.i, 1
  %.pre4.i = load i32* @html_xref.nstr, align 4, !tbaa !18
  br label %32

; <label>:32                                      ; preds = %._crit_edge3.i, %14
  %33 = phi i32 [ %.pre4.i, %._crit_edge3.i ], [ %13, %14 ]
  %j.1.i = phi i32 [ %31, %._crit_edge3.i ], [ %j.01.i, %14 ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %indvars.iv.next.i, %34
  br i1 %35, label %12, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %32
  %.pre5.pre.i = load %struct.t_sandr** @html_xref.sr, align 8, !tbaa !17
  br label %36

; <label>:36                                      ; preds = %._crit_edge.i, %5
  %.pre5.i = phi %struct.t_sandr* [ %.pre5.pre.i, %._crit_edge.i ], [ %10, %5 ]
  %j.0.lcssa.i = phi i32 [ %j.1.i, %._crit_edge.i ], [ 0, %5 ]
  store i32 %j.0.lcssa.i, i32* @html_xref.nstr, align 4, !tbaa !18
  br label %37

thread-pre-split.i:                               ; preds = %0
  %.pr.i = load i32* @html_xref.nstr, align 4, !tbaa !18
  br label %37

; <label>:37                                      ; preds = %thread-pre-split.i, %36
  %38 = phi %struct.t_sandr* [ %3, %thread-pre-split.i ], [ %.pre5.i, %36 ]
  %39 = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %j.0.lcssa.i, %36 ]
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %.lr.ph.i.i, label %html_xref.exit

.lr.ph.i.i:                                       ; preds = %37
  %41 = add i32 %39, -1
  br label %42

; <label>:42                                      ; preds = %52, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %52 ]
  %buf.02.i.i = phi i8* [ %1, %.lr.ph.i.i ], [ %47, %52 ]
  %43 = getelementptr inbounds %struct.t_sandr* %38, i64 %indvars.iv.i.i, i32 0
  %44 = load i8** %43, align 8, !tbaa !14
  %45 = getelementptr inbounds %struct.t_sandr* %38, i64 %indvars.iv.i.i, i32 1
  %46 = load i8** %45, align 8, !tbaa !16
  %47 = call i8* @replaceww(i8* %buf.02.i.i, i8* %44, i8* %46) #8
  %48 = trunc i64 %indvars.iv.i.i to i32
  %49 = icmp ne i32 %48, 0
  %50 = icmp ne i8* %buf.02.i.i, null
  %or.cond.i.i = and i1 %50, %49
  br i1 %or.cond.i.i, label %51, label %52

; <label>:51                                      ; preds = %42
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str63, i64 0, i64 0), i32 160, i8* %buf.02.i.i) #8
  br label %52

; <label>:52                                      ; preds = %51, %42
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond = icmp eq i32 %48, %41
  br i1 %exitcond, label %html_xref.exit, label %42

html_xref.exit:                                   ; preds = %52, %37
  %buf.0.lcssa.i.i = phi i8* [ %1, %37 ], [ %47, %52 ]
  call void @llvm.lifetime.end(i64 256, i8* %2) #7
  ret i8* %buf.0.lcssa.i.i
}

; Function Attrs: nounwind optsize ssp uwtable
define void @write_man(%struct.__sFILE* %out, i8* nocapture readonly %mantp, i8* %program, i32 %nldesc, i8** nocapture readonly %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npargs, %struct.t_pargs* %pa, i32 %nbug, i8** nocapture readonly %bugs, i32 %bHidden) #3 {
  %link.i = alloca [10 x i8], align 1
  %1 = icmp ne i32 %bHidden, 0
  br i1 %1, label %.loopexit, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str63, i64 0, i64 0), i32 633, i32 %npargs, i32 32) #8
  %4 = bitcast i8* %3 to %struct.t_pargs*
  %5 = icmp sgt i32 %npargs, 0
  br i1 %5, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %2
  %6 = add i32 %npargs, -1
  br label %7

; <label>:7                                       ; preds = %17, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %17 ]
  %npar.025 = phi i32 [ 0, %.lr.ph ], [ %npar.1, %17 ]
  %8 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv
  %9 = tail call i32 @is_hidden(%struct.t_pargs* %8) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

; <label>:11                                      ; preds = %7
  %12 = sext i32 %npar.025 to i64
  %13 = getelementptr inbounds %struct.t_pargs* %4, i64 %12
  %14 = bitcast %struct.t_pargs* %13 to i8*
  %15 = bitcast %struct.t_pargs* %8 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 8, i1 false), !tbaa.struct !19
  %16 = add nsw i32 %npar.025, 1
  br label %17

; <label>:17                                      ; preds = %7, %11
  %npar.1 = phi i32 [ %npar.025, %7 ], [ %16, %11 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv52 = trunc i64 %indvars.iv to i32
  %exitcond53 = icmp eq i32 %lftr.wideiv52, %6
  br i1 %exitcond53, label %.loopexit, label %7

.loopexit:                                        ; preds = %17, %2, %0
  %npar.2 = phi i32 [ %npargs, %0 ], [ 0, %2 ], [ %npar.1, %17 ]
  %par.0 = phi %struct.t_pargs* [ %pa, %0 ], [ %4, %2 ], [ %4, %17 ]
  %18 = tail call i8* @strrchr(i8* %program, i32 47) #8
  %19 = icmp eq i8* %18, null
  %20 = getelementptr inbounds i8* %18, i64 1
  %pr.0 = select i1 %19, i8* %program, i8* %20
  %21 = tail call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([4 x i8]* @.str68, i64 0, i64 0)) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %write_texman.exit

; <label>:23                                      ; preds = %.loopexit
  %24 = tail call fastcc i8* @repall(i8* %pr.0, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #8
  %25 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([27 x i8]* @.str79, i64 0, i64 0), i8* %24) #8
  %26 = icmp sgt i32 %nldesc, 0
  br i1 %26, label %.lr.ph11.i, label %.loopexit.i

.lr.ph11.i:                                       ; preds = %23
  %27 = add i32 %nldesc, -1
  br label %28

; <label>:28                                      ; preds = %28, %.lr.ph11.i
  %indvars.iv20.i = phi i64 [ 0, %.lr.ph11.i ], [ %indvars.iv.next21.i, %28 ]
  %29 = getelementptr inbounds i8** %desc, i64 %indvars.iv20.i
  %30 = load i8** %29, align 8, !tbaa !17
  %31 = tail call fastcc i8* @repall(i8* %30, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #8
  %32 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str66, i64 0, i64 0), i8* %31) #8
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1
  %lftr.wideiv50 = trunc i64 %indvars.iv20.i to i32
  %exitcond51 = icmp eq i32 %lftr.wideiv50, %27
  br i1 %exitcond51, label %.loopexit.i, label %28

.loopexit.i:                                      ; preds = %28, %23
  %33 = icmp sgt i32 %nfile, 0
  br i1 %33, label %.lr.ph8.i, label %55

.lr.ph8.i:                                        ; preds = %.loopexit.i
  %34 = tail call i64 @fwrite(i8* getelementptr inbounds ([30 x i8]* @.str80, i64 0, i64 0), i64 29, i64 1, %struct.__sFILE* %out) #7
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([40 x i8]* @.str81, i64 0, i64 0), i64 39, i64 1, %struct.__sFILE* %out) #7
  %36 = tail call i64 @fwrite(i8* getelementptr inbounds ([86 x i8]* @.str82, i64 0, i64 0), i64 85, i64 1, %struct.__sFILE* %out) #7
  %37 = add i32 %nfile, -1
  br label %38

; <label>:38                                      ; preds = %38, %.lr.ph8.i
  %indvars.iv16.i = phi i64 [ 0, %.lr.ph8.i ], [ %indvars.iv.next17.i, %38 ]
  %39 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv16.i, i32 1
  %40 = load i8** %39, align 8, !tbaa !20
  %41 = tail call fastcc i8* @repall(i8* %40, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #8
  %42 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv16.i, i32 2
  %43 = load i8** %42, align 8, !tbaa !23
  %44 = tail call fastcc i8* @repall(i8* %43, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #8
  %45 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv16.i, i32 3
  %46 = load i64* %45, align 8, !tbaa !24
  %47 = tail call i8* @fileopt(i64 %46) #8
  %48 = tail call fastcc i8* @repall(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #8
  %49 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv16.i, i32 0
  %50 = load i32* %49, align 4, !tbaa !25
  %51 = tail call i8* @ftp2desc(i32 %50) #8
  %52 = tail call fastcc i8* @repall(i8* %51, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #8
  %53 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([69 x i8]* @.str83, i64 0, i64 0), i8* %41, i8* %44, i8* %48, i8* %52) #8
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  %lftr.wideiv48 = trunc i64 %indvars.iv16.i to i32
  %exitcond49 = icmp eq i32 %lftr.wideiv48, %37
  br i1 %exitcond49, label %._crit_edge9.i, label %38

._crit_edge9.i:                                   ; preds = %38
  %54 = tail call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str84, i64 0, i64 0), i64 27, i64 1, %struct.__sFILE* %out) #7
  br label %55

; <label>:55                                      ; preds = %._crit_edge9.i, %.loopexit.i
  %56 = icmp sgt i32 %npar.2, 0
  br i1 %56, label %.lr.ph4.i, label %86

.lr.ph4.i:                                        ; preds = %55
  %57 = tail call i64 @fwrite(i8* getelementptr inbounds ([30 x i8]* @.str80, i64 0, i64 0), i64 29, i64 1, %struct.__sFILE* %out) #7
  %58 = tail call i64 @fwrite(i8* getelementptr inbounds ([48 x i8]* @.str85, i64 0, i64 0), i64 47, i64 1, %struct.__sFILE* %out) #7
  %59 = tail call i64 @fwrite(i8* getelementptr inbounds ([66 x i8]* @.str86, i64 0, i64 0), i64 65, i64 1, %struct.__sFILE* %out) #7
  %60 = add i32 %npar.2, -1
  br label %61

; <label>:61                                      ; preds = %84, %.lr.ph4.i
  %indvars.iv12.i = phi i64 [ 0, %.lr.ph4.i ], [ %indvars.iv.next13.i, %84 ]
  %62 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv12.i
  %63 = tail call i8* @pa_val(%struct.t_pargs* %62) #8
  %64 = tail call fastcc i8* @repall(i8* %63, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #8
  %65 = tail call i64 @strlen(i8* %64) #8
  %66 = icmp ult i64 %65, 9
  %67 = getelementptr inbounds %struct.t_pargs* %62, i64 0, i32 0
  %68 = load i8** %67, align 8, !tbaa !26
  %69 = tail call fastcc i8* @repall(i8* %68, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #8
  %70 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv12.i, i32 2
  %71 = load i32* %70, align 4, !tbaa !28
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [7 x i8*]* @argtp, i64 0, i64 %72
  %74 = load i8** %73, align 8, !tbaa !17
  %75 = tail call i8* @pa_val(%struct.t_pargs* %62) #8
  %76 = tail call fastcc i8* @repall(i8* %75, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #8
  %77 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv12.i, i32 4
  %78 = load i8** %77, align 8, !tbaa !29
  %79 = tail call fastcc i8* @repall(i8* %78, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #8
  br i1 %66, label %80, label %82

; <label>:80                                      ; preds = %61
  %81 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([71 x i8]* @.str87, i64 0, i64 0), i8* %69, i8* %74, i8* %76, i8* %79) #8
  br label %84

; <label>:82                                      ; preds = %61
  %83 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([85 x i8]* @.str88, i64 0, i64 0), i8* %69, i8* %74, i8* %76, i8* %79) #8
  br label %84

; <label>:84                                      ; preds = %82, %80
  %indvars.iv.next13.i = add nuw nsw i64 %indvars.iv12.i, 1
  %lftr.wideiv46 = trunc i64 %indvars.iv12.i to i32
  %exitcond47 = icmp eq i32 %lftr.wideiv46, %60
  br i1 %exitcond47, label %._crit_edge5.i, label %61

._crit_edge5.i:                                   ; preds = %84
  %85 = tail call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str84, i64 0, i64 0), i64 27, i64 1, %struct.__sFILE* %out) #7
  br label %86

; <label>:86                                      ; preds = %._crit_edge5.i, %55
  %87 = icmp sgt i32 %nbug, 0
  br i1 %87, label %.lr.ph.i, label %write_texman.exit

.lr.ph.i:                                         ; preds = %86
  %fputc.i = tail call i32 @fputc(i32 10, %struct.__sFILE* %out) #7
  %88 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str89, i64 0, i64 0), i64 16, i64 1, %struct.__sFILE* %out) #7
  %89 = add i32 %nbug, -1
  br label %90

; <label>:90                                      ; preds = %90, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %90 ]
  %91 = getelementptr inbounds i8** %bugs, i64 %indvars.iv.i
  %92 = load i8** %91, align 8, !tbaa !17
  %93 = tail call fastcc i8* @repall(i8* %92, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #8
  %94 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([10 x i8]* @.str90, i64 0, i64 0), i8* %93) #8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %lftr.wideiv44 = trunc i64 %indvars.iv.i to i32
  %exitcond45 = icmp eq i32 %lftr.wideiv44, %89
  br i1 %exitcond45, label %._crit_edge.i, label %90

._crit_edge.i:                                    ; preds = %90
  %95 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str91, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %out) #7
  br label %write_texman.exit

write_texman.exit:                                ; preds = %._crit_edge.i, %86, %.loopexit
  %96 = tail call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([6 x i8]* @.str69, i64 0, i64 0)) #8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %write_nroffman.exit

; <label>:98                                      ; preds = %write_texman.exit
  tail call fastcc void @mydate() #8
  %99 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([15 x i8]* @.str99, i64 0, i64 0), i8* %pr.0, i8* getelementptr inbounds ([128 x i8]* @mydate.tbuf, i64 0, i64 0)) #8
  %100 = tail call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str100, i64 0, i64 0), i64 9, i64 1, %struct.__sFILE* %out) #7
  %101 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str66, i64 0, i64 0), i8* %pr.0) #8
  %102 = tail call i8* @GromacsVersion() #8
  %103 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([7 x i8]* @.str101, i64 0, i64 0), i8* %102) #8
  %104 = tail call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str102, i64 0, i64 0), i64 13, i64 1, %struct.__sFILE* %out) #7
  %105 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([10 x i8]* @.str103, i64 0, i64 0), i8* %pr.0) #8
  %106 = icmp sgt i32 %nfile, 0
  br i1 %106, label %.lr.ph19.i, label %.loopexit8.i

.lr.ph19.i:                                       ; preds = %98
  %107 = add i32 %nfile, -1
  br label %108

; <label>:108                                     ; preds = %108, %.lr.ph19.i
  %indvars.iv36.i = phi i64 [ 0, %.lr.ph19.i ], [ %indvars.iv.next37.i, %108 ]
  %109 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv36.i, i32 1
  %110 = load i8** %109, align 8, !tbaa !20
  %111 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv36.i, i32 2
  %112 = load i8** %111, align 8, !tbaa !23
  %113 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([17 x i8]* @.str104, i64 0, i64 0), i8* %110, i8* %112) #8
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1
  %lftr.wideiv42 = trunc i64 %indvars.iv36.i to i32
  %exitcond43 = icmp eq i32 %lftr.wideiv42, %107
  br i1 %exitcond43, label %.loopexit8.i, label %108

.loopexit8.i:                                     ; preds = %108, %98
  %114 = icmp sgt i32 %npar.2, 0
  br i1 %114, label %.lr.ph17.i, label %.loopexit6.i

.lr.ph17.i:                                       ; preds = %.loopexit8.i
  %115 = add i32 %npar.2, -1
  br label %116

; <label>:116                                     ; preds = %130, %.lr.ph17.i
  %indvars.iv32.i = phi i64 [ 0, %.lr.ph17.i ], [ %indvars.iv.next33.i, %130 ]
  %117 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv32.i, i32 2
  %118 = load i32* %117, align 4, !tbaa !28
  %119 = icmp eq i32 %118, 4
  %120 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv32.i, i32 0
  %121 = load i8** %120, align 8, !tbaa !26
  br i1 %119, label %122, label %125

; <label>:122                                     ; preds = %116
  %123 = getelementptr inbounds i8* %121, i64 1
  %124 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([18 x i8]* @.str105, i64 0, i64 0), i8* %123) #8
  br label %130

; <label>:125                                     ; preds = %116
  %126 = sext i32 %118 to i64
  %127 = getelementptr inbounds [7 x i8*]* @argtp, i64 0, i64 %126
  %128 = load i8** %127, align 8, !tbaa !17
  %129 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([17 x i8]* @.str104, i64 0, i64 0), i8* %121, i8* %128) #8
  br label %130

; <label>:130                                     ; preds = %125, %122
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1
  %lftr.wideiv40 = trunc i64 %indvars.iv32.i to i32
  %exitcond41 = icmp eq i32 %lftr.wideiv40, %115
  br i1 %exitcond41, label %.loopexit6.i, label %116

.loopexit6.i:                                     ; preds = %130, %.loopexit8.i
  %131 = icmp sgt i32 %nldesc, 0
  br i1 %131, label %.lr.ph15.i, label %.loopexit4.i

.lr.ph15.i:                                       ; preds = %.loopexit6.i
  %132 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str106, i64 0, i64 0), i64 16, i64 1, %struct.__sFILE* %out) #7
  %133 = add i32 %nldesc, -1
  br label %134

; <label>:134                                     ; preds = %134, %.lr.ph15.i
  %indvars.iv28.i = phi i64 [ 0, %.lr.ph15.i ], [ %indvars.iv.next29.i, %134 ]
  %135 = getelementptr inbounds i8** %desc, i64 %indvars.iv28.i
  %136 = load i8** %135, align 8, !tbaa !17
  %137 = tail call fastcc i8* @repall(i8* %136, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #8
  %138 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str66, i64 0, i64 0), i8* %137) #8
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1
  %lftr.wideiv38 = trunc i64 %indvars.iv28.i to i32
  %exitcond39 = icmp eq i32 %lftr.wideiv38, %133
  br i1 %exitcond39, label %.loopexit4.i, label %134

.loopexit4.i:                                     ; preds = %134, %.loopexit6.i
  br i1 %106, label %.lr.ph13.i, label %.loopexit3.i

.lr.ph13.i:                                       ; preds = %.loopexit4.i
  %139 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str107, i64 0, i64 0), i64 10, i64 1, %struct.__sFILE* %out) #7
  %140 = add i32 %nfile, -1
  br label %141

; <label>:141                                     ; preds = %141, %.lr.ph13.i
  %indvars.iv24.i = phi i64 [ 0, %.lr.ph13.i ], [ %indvars.iv.next25.i, %141 ]
  %142 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv24.i, i32 1
  %143 = load i8** %142, align 8, !tbaa !20
  %144 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv24.i, i32 2
  %145 = load i8** %144, align 8, !tbaa !23
  %146 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv24.i, i32 3
  %147 = load i64* %146, align 8, !tbaa !24
  %148 = tail call i8* @fileopt(i64 %147) #8
  %149 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv24.i, i32 0
  %150 = load i32* %149, align 4, !tbaa !25
  %151 = tail call i8* @ftp2desc(i32 %150) #8
  %152 = tail call fastcc i8* @repall(i8* %151, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #8
  %153 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([29 x i8]* @.str108, i64 0, i64 0), i8* %143, i8* %145, i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* %152) #8
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1
  %lftr.wideiv36 = trunc i64 %indvars.iv24.i to i32
  %exitcond37 = icmp eq i32 %lftr.wideiv36, %140
  br i1 %exitcond37, label %.loopexit3.i, label %141

.loopexit3.i:                                     ; preds = %141, %.loopexit4.i
  %154 = tail call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str109, i64 0, i64 0), i64 18, i64 1, %struct.__sFILE* %out) #7
  br i1 %114, label %.lr.ph11.i1, label %.loopexit2.i

.lr.ph11.i1:                                      ; preds = %.loopexit3.i
  %155 = add i32 %npar.2, -1
  br label %156

; <label>:156                                     ; preds = %182, %.lr.ph11.i1
  %indvars.iv20.i2 = phi i64 [ 0, %.lr.ph11.i1 ], [ %indvars.iv.next21.i3, %182 ]
  %157 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv20.i2
  %158 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv20.i2, i32 2
  %159 = load i32* %158, align 4, !tbaa !28
  %160 = icmp eq i32 %159, 4
  %161 = getelementptr inbounds %struct.t_pargs* %157, i64 0, i32 0
  %162 = load i8** %161, align 8, !tbaa !26
  br i1 %160, label %163, label %171

; <label>:163                                     ; preds = %156
  %164 = getelementptr inbounds i8* %162, i64 1
  %165 = tail call fastcc i8* @repall(i8* %164, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #8
  %166 = tail call i8* @pa_val(%struct.t_pargs* %157) #8
  %167 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv20.i2, i32 4
  %168 = load i8** %167, align 8, !tbaa !29
  %169 = tail call fastcc i8* @repall(i8* %168, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #8
  %170 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([26 x i8]* @.str110, i64 0, i64 0), i8* %165, i8* %166, i8* %169) #8
  br label %182

; <label>:171                                     ; preds = %156
  %172 = tail call fastcc i8* @repall(i8* %162, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #8
  %173 = load i32* %158, align 4, !tbaa !28
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [7 x i8*]* @argtp, i64 0, i64 %174
  %176 = load i8** %175, align 8, !tbaa !17
  %177 = tail call i8* @pa_val(%struct.t_pargs* %157) #8
  %178 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv20.i2, i32 4
  %179 = load i8** %178, align 8, !tbaa !29
  %180 = tail call fastcc i8* @repall(i8* %179, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #8
  %181 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([29 x i8]* @.str111, i64 0, i64 0), i8* %172, i8* %176, i8* %177, i8* %180) #8
  br label %182

; <label>:182                                     ; preds = %171, %163
  %indvars.iv.next21.i3 = add nuw nsw i64 %indvars.iv20.i2, 1
  %lftr.wideiv34 = trunc i64 %indvars.iv20.i2 to i32
  %exitcond35 = icmp eq i32 %lftr.wideiv34, %155
  br i1 %exitcond35, label %.loopexit2.i, label %156

.loopexit2.i:                                     ; preds = %182, %.loopexit3.i
  %183 = icmp sgt i32 %nbug, 0
  br i1 %183, label %.lr.ph.i6, label %write_nroffman.exit

.lr.ph.i6:                                        ; preds = %.loopexit2.i
  %184 = add i32 %nbug, -1
  br label %185

; <label>:185                                     ; preds = %185, %.lr.ph.i6
  %indvars.iv.i7 = phi i64 [ 0, %.lr.ph.i6 ], [ %indvars.iv.next.i8, %185 ]
  %186 = getelementptr inbounds i8** %bugs, i64 %indvars.iv.i7
  %187 = load i8** %186, align 8, !tbaa !17
  %188 = tail call fastcc i8* @repall(i8* %187, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #8
  %189 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([8 x i8]* @.str112, i64 0, i64 0), i8* %188) #8
  %indvars.iv.next.i8 = add nuw nsw i64 %indvars.iv.i7, 1
  %lftr.wideiv32 = trunc i64 %indvars.iv.i7 to i32
  %exitcond33 = icmp eq i32 %lftr.wideiv32, %184
  br i1 %exitcond33, label %write_nroffman.exit, label %185

write_nroffman.exit:                              ; preds = %185, %.loopexit2.i, %write_texman.exit
  %190 = tail call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([6 x i8]* @.str70, i64 0, i64 0)) #8
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %193

; <label>:192                                     ; preds = %write_nroffman.exit
  tail call fastcc void @write_ttyman(%struct.__sFILE* %out, i8* %pr.0, i32 %nldesc, i8** %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npar.2, %struct.t_pargs* %par.0, i32 %nbug, i8** %bugs, i32 1) #9
  br label %193

; <label>:193                                     ; preds = %192, %write_nroffman.exit
  %194 = tail call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([5 x i8]* @.str71, i64 0, i64 0)) #8
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %197

; <label>:196                                     ; preds = %193
  tail call fastcc void @write_ttyman(%struct.__sFILE* %out, i8* %pr.0, i32 %nldesc, i8** %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npar.2, %struct.t_pargs* %par.0, i32 %nbug, i8** %bugs, i32 0) #9
  br label %197

; <label>:197                                     ; preds = %196, %193
  %198 = tail call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([5 x i8]* @.str72, i64 0, i64 0)) #8
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %287

; <label>:200                                     ; preds = %197
  %201 = getelementptr inbounds [10 x i8]* %link.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 10, i8* %201)
  %202 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([33 x i8]* @.str138, i64 0, i64 0), i8* %pr.0) #8
  %203 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str139, i64 0, i64 0), i64 55, i64 1, %struct.__sFILE* %out) #7
  %204 = tail call i64 @fwrite(i8* getelementptr inbounds ([88 x i8]* @.str140, i64 0, i64 0), i64 87, i64 1, %struct.__sFILE* %out) #7
  %205 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([51 x i8]* @.str141, i64 0, i64 0)) #8
  %206 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str142, i64 0, i64 0), i64 42, i64 1, %struct.__sFILE* %out) #7
  %207 = tail call i64 @fwrite(i8* getelementptr inbounds ([113 x i8]* @.str143, i64 0, i64 0), i64 112, i64 1, %struct.__sFILE* %out) #7
  %208 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([52 x i8]* @.str144, i64 0, i64 0), i8* %pr.0) #8
  %209 = tail call i64 @fwrite(i8* getelementptr inbounds ([77 x i8]* @.str145, i64 0, i64 0), i64 76, i64 1, %struct.__sFILE* %out) #7
  %210 = tail call i8* @GromacsVersion() #8
  %211 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([77 x i8]* @.str146, i64 0, i64 0), i8* %210) #8
  tail call fastcc void @mydate() #8
  %212 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([31 x i8]* @.str147, i64 0, i64 0), i8* getelementptr inbounds ([128 x i8]* @mydate.tbuf, i64 0, i64 0)) #8
  %213 = icmp sgt i32 %nldesc, 0
  br i1 %213, label %.lr.ph12.i, label %.loopexit.i12

.lr.ph12.i:                                       ; preds = %200
  %214 = tail call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str148, i64 0, i64 0), i64 25, i64 1, %struct.__sFILE* %out) #7
  %215 = add i32 %nldesc, -1
  br label %216

; <label>:216                                     ; preds = %216, %.lr.ph12.i
  %indvars.iv21.i = phi i64 [ 0, %.lr.ph12.i ], [ %indvars.iv.next22.i, %216 ]
  %217 = getelementptr inbounds i8** %desc, i64 %indvars.iv21.i
  %218 = load i8** %217, align 8, !tbaa !17
  %219 = tail call i8* @check_html(i8* %218, i8* %pr.0) #8
  %220 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str66, i64 0, i64 0), i8* %219) #8
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1
  %lftr.wideiv30 = trunc i64 %indvars.iv21.i to i32
  %exitcond31 = icmp eq i32 %lftr.wideiv30, %215
  br i1 %exitcond31, label %.loopexit.i12, label %216

.loopexit.i12:                                    ; preds = %216, %200
  %221 = icmp sgt i32 %nfile, 0
  br i1 %221, label %.lr.ph8.i13, label %247

.lr.ph8.i13:                                      ; preds = %.loopexit.i12
  %222 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str149, i64 0, i64 0), i64 4, i64 1, %struct.__sFILE* %out) #7
  %223 = tail call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str150, i64 0, i64 0), i64 15, i64 1, %struct.__sFILE* %out) #7
  %224 = tail call i64 @fwrite(i8* getelementptr inbounds ([121 x i8]* @.str151, i64 0, i64 0), i64 120, i64 1, %struct.__sFILE* %out) #7
  %225 = add i32 %nfile, -1
  br label %226

; <label>:226                                     ; preds = %234, %.lr.ph8.i13
  %indvars.iv17.i = phi i64 [ 0, %.lr.ph8.i13 ], [ %indvars.iv.next18.i, %234 ]
  %227 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv17.i, i32 0
  %228 = load i32* %227, align 4, !tbaa !25
  %229 = call i8* @ftp2ext(i32 %228) #8
  %230 = call i8* @__strcpy_chk(i8* %201, i8* %229, i64 10) #8
  %231 = call i32 @strcmp(i8* %201, i8* getelementptr inbounds ([4 x i8]* @.str152, i64 0, i64 0)) #8
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %234

; <label>:233                                     ; preds = %226
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %201, i8* getelementptr inbounds ([6 x i8]* @.str153, i64 0, i64 0), i64 6, i32 1, i1 false) #7
  br label %234

; <label>:234                                     ; preds = %233, %226
  %235 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv17.i, i32 1
  %236 = load i8** %235, align 8, !tbaa !20
  %237 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv17.i, i32 2
  %238 = load i8** %237, align 8, !tbaa !23
  %239 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv17.i, i32 3
  %240 = load i64* %239, align 8, !tbaa !24
  %241 = call i8* @fileopt(i64 %240) #8
  %242 = load i32* %227, align 4, !tbaa !25
  %243 = call i8* @ftp2desc(i32 %242) #8
  %244 = call i8* @check_html(i8* %243, i8* %pr.0) #8
  %245 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([136 x i8]* @.str154, i64 0, i64 0), i8* %236, i8* %201, i8* %238, i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* %244) #8
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1
  %lftr.wideiv28 = trunc i64 %indvars.iv17.i to i32
  %exitcond29 = icmp eq i32 %lftr.wideiv28, %225
  br i1 %exitcond29, label %._crit_edge9.i14, label %226

._crit_edge9.i14:                                 ; preds = %234
  %246 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str155, i64 0, i64 0), i64 9, i64 1, %struct.__sFILE* %out) #7
  br label %247

; <label>:247                                     ; preds = %._crit_edge9.i14, %.loopexit.i12
  %248 = icmp sgt i32 %npar.2, 0
  br i1 %248, label %.lr.ph4.i15, label %271

.lr.ph4.i15:                                      ; preds = %247
  %249 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str149, i64 0, i64 0), i64 4, i64 1, %struct.__sFILE* %out) #7
  %250 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str156, i64 0, i64 0), i64 23, i64 1, %struct.__sFILE* %out) #7
  %251 = call i64 @fwrite(i8* getelementptr inbounds ([120 x i8]* @.str157, i64 0, i64 0), i64 119, i64 1, %struct.__sFILE* %out) #7
  %252 = add i32 %npar.2, -1
  br label %253

; <label>:253                                     ; preds = %253, %.lr.ph4.i15
  %indvars.iv13.i = phi i64 [ 0, %.lr.ph4.i15 ], [ %indvars.iv.next14.i, %253 ]
  %254 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv13.i
  %255 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv13.i, i32 2
  %256 = load i32* %255, align 4, !tbaa !28
  %257 = icmp eq i32 %256, 4
  %258 = select i1 %257, i8* getelementptr inbounds ([6 x i8]* @.str159, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str160, i64 0, i64 0)
  %259 = getelementptr inbounds %struct.t_pargs* %254, i64 0, i32 0
  %260 = load i8** %259, align 8, !tbaa !26
  %261 = getelementptr inbounds i8* %260, i64 1
  %262 = sext i32 %256 to i64
  %263 = getelementptr inbounds [7 x i8*]* @argtp, i64 0, i64 %262
  %264 = load i8** %263, align 8, !tbaa !17
  %265 = call i8* @pa_val(%struct.t_pargs* %254) #8
  %266 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv13.i, i32 4
  %267 = load i8** %266, align 8, !tbaa !29
  %268 = call i8* @check_html(i8* %267, i8* %pr.0) #8
  %269 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([126 x i8]* @.str158, i64 0, i64 0), i8* %258, i8* %261, i8* %264, i8* %265, i8* %268) #8
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %lftr.wideiv26 = trunc i64 %indvars.iv13.i to i32
  %exitcond27 = icmp eq i32 %lftr.wideiv26, %252
  br i1 %exitcond27, label %._crit_edge5.i16, label %253

._crit_edge5.i16:                                 ; preds = %253
  %270 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str155, i64 0, i64 0), i64 9, i64 1, %struct.__sFILE* %out) #7
  br label %271

; <label>:271                                     ; preds = %._crit_edge5.i16, %247
  %272 = icmp sgt i32 %nbug, 0
  br i1 %272, label %.lr.ph.i17, label %write_htmlman.exit

.lr.ph.i17:                                       ; preds = %271
  %273 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str149, i64 0, i64 0), i64 4, i64 1, %struct.__sFILE* %out) #7
  %274 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8]* @.str161, i64 0, i64 0), i64 5, i64 1, %struct.__sFILE* %out) #7
  %275 = add i32 %nbug, -1
  br label %276

; <label>:276                                     ; preds = %276, %.lr.ph.i17
  %indvars.iv.i18 = phi i64 [ 0, %.lr.ph.i17 ], [ %indvars.iv.next.i19, %276 ]
  %277 = getelementptr inbounds i8** %bugs, i64 %indvars.iv.i18
  %278 = load i8** %277, align 8, !tbaa !17
  %279 = call i8* @check_html(i8* %278, i8* %pr.0) #8
  %280 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([8 x i8]* @.str162, i64 0, i64 0), i8* %279) #8
  %indvars.iv.next.i19 = add nuw nsw i64 %indvars.iv.i18, 1
  %lftr.wideiv = trunc i64 %indvars.iv.i18 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %275
  br i1 %exitcond, label %._crit_edge.i22, label %276

._crit_edge.i22:                                  ; preds = %276
  %281 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8]* @.str163, i64 0, i64 0), i64 6, i64 1, %struct.__sFILE* %out) #7
  br label %write_htmlman.exit

write_htmlman.exit:                               ; preds = %271, %._crit_edge.i22
  %282 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str149, i64 0, i64 0), i64 4, i64 1, %struct.__sFILE* %out) #7
  %283 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str164, i64 0, i64 0), i64 23, i64 1, %struct.__sFILE* %out) #7
  %284 = call i64 @fwrite(i8* getelementptr inbounds ([88 x i8]* @.str165, i64 0, i64 0), i64 87, i64 1, %struct.__sFILE* %out) #7
  %285 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str166, i64 0, i64 0), i64 7, i64 1, %struct.__sFILE* %out) #7
  %286 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str167, i64 0, i64 0), i64 8, i64 1, %struct.__sFILE* %out) #7
  call void @llvm.lifetime.end(i64 10, i8* %201)
  br label %287

; <label>:287                                     ; preds = %write_htmlman.exit, %197
  %288 = call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([15 x i8]* @.str73, i64 0, i64 0)) #8
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %294

; <label>:290                                     ; preds = %287
  %291 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str168, i64 0, i64 0), i64 8, i64 1, %struct.__sFILE* %out) #7
  call fastcc void @pr_opts(%struct.__sFILE* %out, i32 %nfile, %struct.t_filenm* %fnm, i32 %npar.2, %struct.t_pargs* %par.0, i32 2) #8
  call void @pr_enums(%struct.__sFILE* %out, i32 %npar.2, %struct.t_pargs* %par.0, i32 2) #8
  call void @pr_fopts(%struct.__sFILE* %out, i32 %nfile, %struct.t_filenm* %fnm, i32 2) #8
  %292 = call i8* @ShortProgram() #8
  %293 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([7 x i8]* @.str169, i64 0, i64 0), i8* %292) #8
  br label %294

; <label>:294                                     ; preds = %290, %287
  %295 = call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([16 x i8]* @.str74, i64 0, i64 0)) #8
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %306

; <label>:297                                     ; preds = %294
  %298 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8]* @.str180, i64 0, i64 0), i64 17, i64 1, %struct.__sFILE* %out) #7
  %299 = call i8* @ShortProgram() #8
  %300 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([25 x i8]* @.str181, i64 0, i64 0), i8* %299) #8
  %301 = call i64 @fwrite(i8* getelementptr inbounds ([72 x i8]* @.str182, i64 0, i64 0), i64 71, i64 1, %struct.__sFILE* %out) #7
  call fastcc void @pr_opts(%struct.__sFILE* %out, i32 %nfile, %struct.t_filenm* %fnm, i32 %npar.2, %struct.t_pargs* %par.0, i32 1) #8
  %302 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str183, i64 0, i64 0), i64 13, i64 1, %struct.__sFILE* %out) #7
  call void @pr_enums(%struct.__sFILE* %out, i32 %npar.2, %struct.t_pargs* %par.0, i32 1) #8
  call void @pr_fopts(%struct.__sFILE* %out, i32 %nfile, %struct.t_filenm* %fnm, i32 1) #8
  %303 = call i8* @ShortProgram() #8
  %304 = call i8* @ShortProgram() #8
  %305 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([36 x i8]* @.str184, i64 0, i64 0), i8* %303, i8* %304) #8
  br label %306

; <label>:306                                     ; preds = %297, %294
  %307 = call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([15 x i8]* @.str75, i64 0, i64 0)) #8
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %312

; <label>:309                                     ; preds = %306
  %310 = call i8* @ShortProgram() #8
  %311 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([12 x i8]* @.str185, i64 0, i64 0), i8* %310) #8
  call void @pr_enums(%struct.__sFILE* %out, i32 %npar.2, %struct.t_pargs* %par.0, i32 0) #8
  call void @pr_fopts(%struct.__sFILE* %out, i32 %nfile, %struct.t_filenm* %fnm, i32 0) #8
  call fastcc void @pr_opts(%struct.__sFILE* %out, i32 %nfile, %struct.t_filenm* %fnm, i32 %npar.2, %struct.t_pargs* %par.0, i32 0) #8
  %fputc.i23 = call i32 @fputc(i32 10, %struct.__sFILE* %out) #7
  br label %312

; <label>:312                                     ; preds = %309, %306
  br i1 %1, label %315, label %313

; <label>:313                                     ; preds = %312
  %314 = bitcast %struct.t_pargs* %par.0 to i8*
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str63, i64 0, i64 0), i32 664, i8* %314) #8
  br label %315

; <label>:315                                     ; preds = %313, %312
  ret void
}

; Function Attrs: optsize
declare i32 @is_hidden(%struct.t_pargs*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind optsize readonly
declare i8* @strrchr(i8*, i32) #5

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @write_ttyman(%struct.__sFILE* %out, i8* %program, i32 %nldesc, i8** nocapture readonly %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npargs, %struct.t_pargs* %pa, i32 %nbug, i8** nocapture readonly %bugs, i32 %bHeader) #3 {
  %1 = icmp eq i32 %bHeader, 0
  br i1 %1, label %7, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call fastcc i8* @repall(i8* %program, i32 8, %struct.t_sandr* getelementptr inbounds ([8 x %struct.t_sandr]* @sandrTty, i64 0, i64 0)) #8
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([5 x i8]* @.str133, i64 0, i64 0), i8* %3) #8
  %5 = tail call i8* @GromacsVersion() #8
  tail call fastcc void @mydate() #9
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([7 x i8]* @.str134, i64 0, i64 0), i8* %5, i8* getelementptr inbounds ([128 x i8]* @mydate.tbuf, i64 0, i64 0)) #8
  br label %7

; <label>:7                                       ; preds = %0, %2
  %8 = icmp sgt i32 %nldesc, 0
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %7
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str135, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %out)
  tail call void @print_tty_formatted(%struct.__sFILE* %out, i32 %nldesc, i8** %desc) #9
  br label %11

; <label>:11                                      ; preds = %9, %7
  %12 = icmp sgt i32 %nbug, 0
  br i1 %12, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %11
  %fputc3 = tail call i32 @fputc(i32 10, %struct.__sFILE* %out)
  %13 = add i32 %nbug, -1
  br label %14

; <label>:14                                      ; preds = %14, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %14 ]
  %15 = getelementptr inbounds i8** %bugs, i64 %indvars.iv
  %16 = load i8** %15, align 8, !tbaa !17
  %17 = tail call i64 @strlen(i8* %16) #8
  %18 = add i64 %17, 3
  %19 = trunc i64 %18 to i32
  %20 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str136, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str63, i64 0, i64 0), i32 407, i32 %19, i32 1) #8
  %21 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %20, i1 false)
  %22 = tail call i8* @__memcpy_chk(i8* %20, i8* getelementptr inbounds ([3 x i8]* @.str137, i64 0, i64 0), i64 3, i64 %21)
  %23 = getelementptr inbounds i8* %20, i64 2
  %24 = load i8** %15, align 8, !tbaa !17
  %25 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %23, i1 false)
  %26 = tail call i8* @__strcpy_chk(i8* %23, i8* %24, i64 %25) #8
  %27 = tail call i8* @wrap_lines(i8* %20, i32 80, i32 2) #8
  %28 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str66, i64 0, i64 0), i8* %27) #8
  tail call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str136, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str63, i64 0, i64 0), i32 411, i8* %20) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %13
  br i1 %exitcond, label %.loopexit, label %14

.loopexit:                                        ; preds = %14, %11
  %29 = icmp sgt i32 %nfile, 0
  br i1 %29, label %30, label %31

; <label>:30                                      ; preds = %.loopexit
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %out)
  tail call void @pr_fns(%struct.__sFILE* %out, i32 %nfile, %struct.t_filenm* %fnm) #8
  br label %31

; <label>:31                                      ; preds = %30, %.loopexit
  %32 = icmp sgt i32 %npargs, 0
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %31
  tail call void @print_pargs(%struct.__sFILE* %out, i32 %npargs, %struct.t_pargs* %pa) #8
  br label %34

; <label>:34                                      ; preds = %33, %31
  ret void
}

; Function Attrs: optsize
declare i8* @replace(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: optsize
declare i32 @get_file(i8*, i8***) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcasecmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #1

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: optsize
declare i8* @replaceww(i8*, i8*, i8*) #1

; Function Attrs: optsize
declare i8* @ftp2desc(i32) #1

; Function Attrs: optsize
declare i8* @pa_val(%struct.t_pargs*) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @mydate() #3 {
  %now = alloca i64, align 8
  %1 = call i64 @time(i64* %now) #8
  %2 = call %struct.tm* @localtime(i64* %now) #8
  %3 = getelementptr inbounds %struct.tm* %2, i64 0, i32 6
  %4 = load i32* %3, align 4, !tbaa !30
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [7 x i8*]* @mydate.day, i64 0, i64 %5
  %7 = load i8** %6, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.tm* %2, i64 0, i32 3
  %9 = load i32* %8, align 4, !tbaa !32
  %10 = getelementptr inbounds %struct.tm* %2, i64 0, i32 4
  %11 = load i32* %10, align 4, !tbaa !33
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [12 x i8*]* @mydate.mon, i64 0, i64 %12
  %14 = load i8** %13, align 8, !tbaa !17
  %15 = getelementptr inbounds %struct.tm* %2, i64 0, i32 5
  %16 = load i32* %15, align 4, !tbaa !34
  %17 = add nsw i32 %16, 1900
  %18 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([128 x i8]* @mydate.tbuf, i64 0, i64 0), i32 0, i64 128, i8* getelementptr inbounds ([12 x i8]* @.str132, i64 0, i64 0), i8* %7, i32 %9, i8* %14, i32 %17) #8
  ret void
}

; Function Attrs: optsize
declare i8* @GromacsVersion() #1

; Function Attrs: optsize
declare i64 @time(i64*) #1

; Function Attrs: optsize
declare %struct.tm* @localtime(i64*) #1

; Function Attrs: optsize
declare void @pr_fns(%struct.__sFILE*, i32, %struct.t_filenm*) #1

; Function Attrs: optsize
declare void @print_pargs(%struct.__sFILE*, i32, %struct.t_pargs*) #1

; Function Attrs: optsize
declare i8* @ftp2ext(i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @pr_opts(%struct.__sFILE* nocapture %fp, i32 %nfile, %struct.t_filenm* nocapture readonly %fnm, i32 %npargs, %struct.t_pargs* nocapture readonly %pa, i32 %shell) #3 {
  switch i32 %shell, label %103 [
    i32 0, label %1
    i32 1, label %35
    i32 2, label %69
  ]

; <label>:1                                       ; preds = %0
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str170, i64 0, i64 0), i64 7, i64 1, %struct.__sFILE* %fp)
  %3 = icmp sgt i32 %nfile, 0
  br i1 %3, label %.lr.ph6, label %.preheader

.lr.ph6:                                          ; preds = %1
  %4 = add i32 %nfile, -1
  br label %7

.preheader:                                       ; preds = %7, %1
  %5 = icmp sgt i32 %npargs, 0
  br i1 %5, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %6 = add i32 %npargs, -1
  br label %12

; <label>:7                                       ; preds = %7, %.lr.ph6
  %indvars.iv19 = phi i64 [ 0, %.lr.ph6 ], [ %indvars.iv.next20, %7 ]
  %8 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv19, i32 1
  %9 = load i8** %8, align 8, !tbaa !20
  %10 = getelementptr inbounds i8* %9, i64 1
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str171, i64 0, i64 0), i8* %10) #8
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %lftr.wideiv21 = trunc i64 %indvars.iv19 to i32
  %exitcond22 = icmp eq i32 %lftr.wideiv21, %4
  br i1 %exitcond22, label %.preheader, label %7

; <label>:12                                      ; preds = %33, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %33 ]
  %13 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv
  %14 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 2
  %15 = load i32* %14, align 4, !tbaa !28
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %17, label %28

; <label>:17                                      ; preds = %12
  %18 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 3
  %19 = bitcast %union.anon* %18 to i32**
  %20 = load i32** %19, align 8, !tbaa !17
  %21 = load i32* %20, align 4, !tbaa !18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

; <label>:23                                      ; preds = %17
  %24 = getelementptr inbounds %struct.t_pargs* %13, i64 0, i32 0
  %25 = load i8** %24, align 8, !tbaa !26
  %26 = getelementptr inbounds i8* %25, i64 1
  %27 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str172, i64 0, i64 0), i8* %26) #8
  br label %33

; <label>:28                                      ; preds = %17, %12
  %29 = getelementptr inbounds %struct.t_pargs* %13, i64 0, i32 0
  %30 = load i8** %29, align 8, !tbaa !26
  %31 = getelementptr inbounds i8* %30, i64 1
  %32 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str171, i64 0, i64 0), i8* %31) #8
  br label %33

; <label>:33                                      ; preds = %23, %28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %6
  br i1 %exitcond, label %._crit_edge, label %12

._crit_edge:                                      ; preds = %33, %.preheader
  %34 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str173, i64 0, i64 0), i64 3, i64 1, %struct.__sFILE* %fp)
  br label %103

; <label>:35                                      ; preds = %0
  %36 = tail call i64 @fwrite(i8* getelementptr inbounds ([78 x i8]* @.str174, i64 0, i64 0), i64 77, i64 1, %struct.__sFILE* %fp)
  %37 = icmp sgt i32 %nfile, 0
  br i1 %37, label %.lr.ph12, label %.preheader1

.lr.ph12:                                         ; preds = %35
  %38 = add i32 %nfile, -1
  br label %41

.preheader1:                                      ; preds = %41, %35
  %39 = icmp sgt i32 %npargs, 0
  br i1 %39, label %.lr.ph8, label %._crit_edge9

.lr.ph8:                                          ; preds = %.preheader1
  %40 = add i32 %npargs, -1
  br label %46

; <label>:41                                      ; preds = %41, %.lr.ph12
  %indvars.iv27 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next28, %41 ]
  %42 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv27, i32 1
  %43 = load i8** %42, align 8, !tbaa !20
  %44 = getelementptr inbounds i8* %43, i64 1
  %45 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str175, i64 0, i64 0), i8* %44) #8
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %lftr.wideiv29 = trunc i64 %indvars.iv27 to i32
  %exitcond30 = icmp eq i32 %lftr.wideiv29, %38
  br i1 %exitcond30, label %.preheader1, label %41

; <label>:46                                      ; preds = %67, %.lr.ph8
  %indvars.iv23 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next24, %67 ]
  %47 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv23
  %48 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv23, i32 2
  %49 = load i32* %48, align 4, !tbaa !28
  %50 = icmp eq i32 %49, 4
  br i1 %50, label %51, label %62

; <label>:51                                      ; preds = %46
  %52 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv23, i32 3
  %53 = bitcast %union.anon* %52 to i32**
  %54 = load i32** %53, align 8, !tbaa !17
  %55 = load i32* %54, align 4, !tbaa !18
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

; <label>:57                                      ; preds = %51
  %58 = getelementptr inbounds %struct.t_pargs* %47, i64 0, i32 0
  %59 = load i8** %58, align 8, !tbaa !26
  %60 = getelementptr inbounds i8* %59, i64 1
  %61 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str176, i64 0, i64 0), i8* %60) #8
  br label %67

; <label>:62                                      ; preds = %51, %46
  %63 = getelementptr inbounds %struct.t_pargs* %47, i64 0, i32 0
  %64 = load i8** %63, align 8, !tbaa !26
  %65 = getelementptr inbounds i8* %64, i64 1
  %66 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str175, i64 0, i64 0), i8* %65) #8
  br label %67

; <label>:67                                      ; preds = %57, %62
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %lftr.wideiv25 = trunc i64 %indvars.iv23 to i32
  %exitcond26 = icmp eq i32 %lftr.wideiv25, %40
  br i1 %exitcond26, label %._crit_edge9, label %46

._crit_edge9:                                     ; preds = %67, %.preheader1
  %68 = tail call i64 @fwrite(i8* getelementptr inbounds ([25 x i8]* @.str177, i64 0, i64 0), i64 24, i64 1, %struct.__sFILE* %fp)
  br label %103

; <label>:69                                      ; preds = %0
  %70 = tail call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str178, i64 0, i64 0), i64 15, i64 1, %struct.__sFILE* %fp)
  %71 = icmp sgt i32 %nfile, 0
  br i1 %71, label %.lr.ph18, label %.preheader2

.lr.ph18:                                         ; preds = %69
  %72 = add i32 %nfile, -1
  br label %75

.preheader2:                                      ; preds = %75, %69
  %73 = icmp sgt i32 %npargs, 0
  br i1 %73, label %.lr.ph14, label %._crit_edge15

.lr.ph14:                                         ; preds = %.preheader2
  %74 = add i32 %npargs, -1
  br label %80

; <label>:75                                      ; preds = %75, %.lr.ph18
  %indvars.iv35 = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next36, %75 ]
  %76 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv35, i32 1
  %77 = load i8** %76, align 8, !tbaa !20
  %78 = getelementptr inbounds i8* %77, i64 1
  %79 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str171, i64 0, i64 0), i8* %78) #8
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %lftr.wideiv37 = trunc i64 %indvars.iv35 to i32
  %exitcond38 = icmp eq i32 %lftr.wideiv37, %72
  br i1 %exitcond38, label %.preheader2, label %75

; <label>:80                                      ; preds = %101, %.lr.ph14
  %indvars.iv31 = phi i64 [ 0, %.lr.ph14 ], [ %indvars.iv.next32, %101 ]
  %81 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv31
  %82 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv31, i32 2
  %83 = load i32* %82, align 4, !tbaa !28
  %84 = icmp eq i32 %83, 4
  br i1 %84, label %85, label %96

; <label>:85                                      ; preds = %80
  %86 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv31, i32 3
  %87 = bitcast %union.anon* %86 to i32**
  %88 = load i32** %87, align 8, !tbaa !17
  %89 = load i32* %88, align 4, !tbaa !18
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %96, label %91

; <label>:91                                      ; preds = %85
  %92 = getelementptr inbounds %struct.t_pargs* %81, i64 0, i32 0
  %93 = load i8** %92, align 8, !tbaa !26
  %94 = getelementptr inbounds i8* %93, i64 1
  %95 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str172, i64 0, i64 0), i8* %94) #8
  br label %101

; <label>:96                                      ; preds = %85, %80
  %97 = getelementptr inbounds %struct.t_pargs* %81, i64 0, i32 0
  %98 = load i8** %97, align 8, !tbaa !26
  %99 = getelementptr inbounds i8* %98, i64 1
  %100 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str171, i64 0, i64 0), i8* %99) #8
  br label %101

; <label>:101                                     ; preds = %91, %96
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %lftr.wideiv33 = trunc i64 %indvars.iv31 to i32
  %exitcond34 = icmp eq i32 %lftr.wideiv33, %74
  br i1 %exitcond34, label %._crit_edge15, label %80

._crit_edge15:                                    ; preds = %101, %.preheader2
  %102 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str179, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %fp)
  br label %103

; <label>:103                                     ; preds = %0, %._crit_edge15, %._crit_edge9, %._crit_edge
  ret void
}

; Function Attrs: optsize
declare void @pr_enums(%struct.__sFILE*, i32, %struct.t_pargs*, i32) #1

; Function Attrs: optsize
declare void @pr_fopts(%struct.__sFILE*, i32, %struct.t_filenm*, i32) #1

; Function Attrs: optsize
declare i8* @ShortProgram() #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #7

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #7

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #7

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
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
!14 = !{!15, !4, i64 0}
!15 = !{!"", !4, i64 0, !4, i64 8}
!16 = !{!15, !4, i64 8}
!17 = !{!4, !4, i64 0}
!18 = !{!7, !7, i64 0}
!19 = !{i64 0, i64 8, !17, i64 8, i64 4, !18, i64 12, i64 4, !18, i64 16, i64 8, !17, i64 16, i64 8, !17, i64 16, i64 8, !17, i64 16, i64 8, !17, i64 16, i64 8, !17, i64 16, i64 8, !17, i64 24, i64 8, !17}
!20 = !{!21, !4, i64 8}
!21 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16, !22, i64 24}
!22 = !{!"long", !5, i64 0}
!23 = !{!21, !4, i64 16}
!24 = !{!21, !22, i64 24}
!25 = !{!21, !7, i64 0}
!26 = !{!27, !4, i64 0}
!27 = !{!"", !4, i64 0, !7, i64 8, !7, i64 12, !5, i64 16, !4, i64 24}
!28 = !{!27, !7, i64 12}
!29 = !{!27, !4, i64 24}
!30 = !{!31, !7, i64 24}
!31 = !{!"tm", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !22, i64 40, !4, i64 48}
!32 = !{!31, !7, i64 12}
!33 = !{!31, !7, i64 16}
!34 = !{!31, !7, i64 20}

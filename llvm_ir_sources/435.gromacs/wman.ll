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
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !91, metadata !384), !dbg !385
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !92, metadata !384), !dbg !386
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !387
  %2 = load i32* %1, align 4, !dbg !389, !tbaa !390
  %3 = add nsw i32 %2, -1, !dbg !389
  store i32 %3, i32* %1, align 4, !dbg !389, !tbaa !390
  %4 = icmp sgt i32 %2, 0, !dbg !399
  br i1 %4, label %._crit_edge, label %5, !dbg !400

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !401
  br label %10, !dbg !400

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !402
  %7 = load i32* %6, align 4, !dbg !402, !tbaa !403
  %8 = icmp sle i32 %2, %7, !dbg !404
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !405
  %or.cond = or i1 %9, %8, !dbg !406
  br i1 %or.cond, label %15, label %10, !dbg !406

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !401
  %11 = trunc i32 %_c to i8, !dbg !407
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !408
  %13 = load i8** %12, align 8, !dbg !409, !tbaa !410
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !409
  store i8* %14, i8** %12, align 8, !dbg !409, !tbaa !410
  store i8 %11, i8* %13, align 1, !dbg !411, !tbaa !412
  br label %17, !dbg !413

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #8, !dbg !414
  br label %17, !dbg !415

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !416
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !98, metadata !384), !dbg !417
  %1 = icmp sgt i32 %__signo, 32, !dbg !418
  br i1 %1, label %5, label %2, !dbg !419

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !420
  %4 = shl i32 1, %3, !dbg !421
  br label %5, !dbg !419

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !419
  ret i32 %6, !dbg !422
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @check_tex(i8* %s) #4 {
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !103, metadata !384), !dbg !423
  %1 = tail call fastcc i8* @repall(i8* %s, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #9, !dbg !424
  ret i8* %1, !dbg !425
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i8* @repall(i8* %s, i32 %nsr, %struct.t_sandr* nocapture readonly %sa) #4 {
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !199, metadata !384), !dbg !426
  tail call void @llvm.dbg.value(metadata i32 %nsr, i64 0, metadata !200, metadata !384), !dbg !427
  tail call void @llvm.dbg.value(metadata %struct.t_sandr* %sa, i64 0, metadata !201, metadata !384), !dbg !428
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !203, metadata !384), !dbg !429
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !202, metadata !384), !dbg !430
  %1 = icmp sgt i32 %nsr, 0, !dbg !431
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !434

.lr.ph:                                           ; preds = %0
  %2 = add i32 %nsr, -1, !dbg !434
  br label %3, !dbg !434

; <label>:3                                       ; preds = %13, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %13 ]
  %buf.02 = phi i8* [ %s, %.lr.ph ], [ %8, %13 ]
  %4 = getelementptr inbounds %struct.t_sandr* %sa, i64 %indvars.iv, i32 0, !dbg !435
  %5 = load i8** %4, align 8, !dbg !435, !tbaa !437
  %6 = getelementptr inbounds %struct.t_sandr* %sa, i64 %indvars.iv, i32 1, !dbg !439
  %7 = load i8** %6, align 8, !dbg !439, !tbaa !440
  %8 = tail call i8* @replace(i8* %buf.02, i8* %5, i8* %7) #8, !dbg !441
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !204, metadata !384), !dbg !442
  %9 = trunc i64 %indvars.iv to i32, !dbg !443
  %10 = icmp ne i32 %9, 0, !dbg !443
  %11 = icmp ne i8* %buf.02, null, !dbg !445
  %or.cond = and i1 %11, %10, !dbg !446
  br i1 %or.cond, label %12, label %13, !dbg !446

; <label>:12                                      ; preds = %3
  tail call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str63, i64 0, i64 0), i32 144, i8* %buf.02) #8, !dbg !447
  br label %13, !dbg !447

; <label>:13                                      ; preds = %12, %3
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !203, metadata !384), !dbg !429
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !434
  %exitcond = icmp eq i32 %9, %2, !dbg !434
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !434

._crit_edge:                                      ; preds = %13, %0
  %buf.0.lcssa = phi i8* [ %s, %0 ], [ %8, %13 ]
  ret i8* %buf.0.lcssa, !dbg !448
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @check_nroff(i8* %s) #4 {
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !106, metadata !384), !dbg !449
  %1 = tail call fastcc i8* @repall(i8* %s, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #9, !dbg !450
  ret i8* %1, !dbg !451
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @fileopt(i64 %flag) #4 {
  tail call void @llvm.dbg.value(metadata i64 %flag, i64 0, metadata !112, metadata !384), !dbg !452
  %1 = and i64 %flag, 6, !dbg !453
  %2 = icmp eq i64 %1, 6, !dbg !455
  br i1 %2, label %3, label %4, !dbg !456

; <label>:3                                       ; preds = %0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str54, i64 0, i64 0), i64 7, i32 1, i1 false), !dbg !457
  br label %13, !dbg !457

; <label>:4                                       ; preds = %0
  %5 = and i64 %flag, 2, !dbg !458
  %6 = icmp eq i64 %5, 0, !dbg !460
  br i1 %6, label %8, label %7, !dbg !461

; <label>:7                                       ; preds = %4
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str55, i64 0, i64 0), i64 6, i32 1, i1 false), !dbg !462
  br label %13, !dbg !462

; <label>:8                                       ; preds = %4
  %9 = and i64 %flag, 4, !dbg !463
  %10 = icmp eq i64 %9, 0, !dbg !465
  br i1 %10, label %12, label %11, !dbg !466

; <label>:11                                      ; preds = %8
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str56, i64 0, i64 0), i64 7, i32 1, i1 false), !dbg !467
  br label %13, !dbg !467

; <label>:12                                      ; preds = %8
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str57, i64 0, i64 0), i64 6, i32 1, i1 false), !dbg !468
  br label %13

; <label>:13                                      ; preds = %7, %12, %11, %3
  %14 = and i64 %flag, 8, !dbg !469
  %15 = icmp eq i64 %14, 0, !dbg !471
  br i1 %15, label %24, label %16, !dbg !472

; <label>:16                                      ; preds = %13
  %17 = tail call i8* @__strcat_chk(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str58, i64 0, i64 0), i64 32) #8, !dbg !473
  %18 = and i64 %flag, 1, !dbg !475
  %19 = icmp eq i64 %18, 0, !dbg !477
  br i1 %19, label %22, label %20, !dbg !478

; <label>:20                                      ; preds = %16
  %21 = tail call i8* @__strcat_chk(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str59, i64 0, i64 0), i64 32) #8, !dbg !479
  br label %24, !dbg !479

; <label>:22                                      ; preds = %16
  %23 = tail call i8* @__strcat_chk(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str60, i64 0, i64 0), i64 32) #8, !dbg !480
  br label %24

; <label>:24                                      ; preds = %13, %20, %22
  %25 = and i64 %flag, 16, !dbg !481
  %26 = icmp eq i64 %25, 0, !dbg !483
  br i1 %26, label %29, label %27, !dbg !484

; <label>:27                                      ; preds = %24
  %28 = tail call i8* @__strcat_chk(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str61, i64 0, i64 0), i64 32) #8, !dbg !485
  br label %29, !dbg !485

; <label>:29                                      ; preds = %24, %27
  ret i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), !dbg !486
}

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #5

; Function Attrs: nounwind optsize
declare i8* @__strcat_chk(i8*, i8*, i64) #5

; Function Attrs: nounwind optsize ssp uwtable
define i8* @check_tty(i8* %s) #4 {
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !115, metadata !384), !dbg !487
  %1 = tail call fastcc i8* @repall(i8* %s, i32 8, %struct.t_sandr* getelementptr inbounds ([8 x %struct.t_sandr]* @sandrTty, i64 0, i64 0)) #9, !dbg !488
  ret i8* %1, !dbg !489
}

; Function Attrs: nounwind optsize ssp uwtable
define void @print_tty_formatted(%struct.__sFILE* nocapture %out, i32 %nldesc, i8** nocapture readonly %desc) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !121, metadata !384), !dbg !490
  tail call void @llvm.dbg.value(metadata i32 %nldesc, i64 0, metadata !122, metadata !384), !dbg !491
  tail call void @llvm.dbg.value(metadata i8** %desc, i64 0, metadata !123, metadata !384), !dbg !492
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !127, metadata !384), !dbg !493
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !126, metadata !384), !dbg !494
  %1 = icmp sgt i32 %nldesc, 0, !dbg !495
  br i1 %1, label %.lr.ph5, label %.thread, !dbg !498

.thread:                                          ; preds = %0
  %2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str63, i64 0, i64 0), i32 370, i32 0, i32 1) #8, !dbg !499
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !124, metadata !384), !dbg !500
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !126, metadata !384), !dbg !494
  br label %._crit_edge, !dbg !501

.lr.ph5:                                          ; preds = %0
  %3 = add i32 %nldesc, -1, !dbg !498
  br label %4, !dbg !498

; <label>:4                                       ; preds = %4, %.lr.ph5
  %indvars.iv7 = phi i64 [ 0, %.lr.ph5 ], [ %indvars.iv.next8, %4 ]
  %j.03 = phi i64 [ 0, %.lr.ph5 ], [ %10, %4 ]
  %5 = getelementptr inbounds i8** %desc, i64 %indvars.iv7, !dbg !503
  %6 = load i8** %5, align 8, !dbg !503, !tbaa !504
  %7 = tail call i64 @strlen(i8* %6) #8, !dbg !505
  %8 = and i64 %j.03, 4294967295, !dbg !506
  %9 = add nuw nsw i64 %8, 10, !dbg !507
  %10 = add i64 %9, %7, !dbg !506
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !127, metadata !384), !dbg !493
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1, !dbg !498
  %lftr.wideiv9 = trunc i64 %indvars.iv7 to i32, !dbg !498
  %exitcond10 = icmp eq i32 %lftr.wideiv9, %3, !dbg !498
  br i1 %exitcond10, label %11, label %4, !dbg !498

; <label>:11                                      ; preds = %4
  %12 = trunc i64 %10 to i32, !dbg !506
  %13 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str63, i64 0, i64 0), i32 370, i32 %12, i32 1) #8, !dbg !499
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !124, metadata !384), !dbg !500
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !126, metadata !384), !dbg !494
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !501

.lr.ph:                                           ; preds = %11
  %14 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %13, i1 false), !dbg !508
  %15 = add i32 %nldesc, -1, !dbg !501
  br label %16, !dbg !501

; <label>:16                                      ; preds = %25, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %25 ]
  %strlenfirst = load i8* %13, align 1, !dbg !511
  %17 = icmp eq i8 %strlenfirst, 0, !dbg !513
  br i1 %17, label %25, label %18, !dbg !514

; <label>:18                                      ; preds = %16
  %19 = tail call i64 @strlen(i8* %13) #8, !dbg !515
  %20 = add i64 %19, -1, !dbg !516
  %21 = getelementptr inbounds i8* %13, i64 %20, !dbg !517
  %22 = load i8* %21, align 1, !dbg !517, !tbaa !412
  switch i8 %22, label %23 [
    i8 32, label %25
    i8 10, label %25
  ], !dbg !518

; <label>:23                                      ; preds = %18
  %24 = tail call i8* @__strcat_chk(i8* %13, i8* getelementptr inbounds ([2 x i8]* @.str64, i64 0, i64 0), i64 %14) #8, !dbg !519
  br label %25, !dbg !519

; <label>:25                                      ; preds = %18, %18, %16, %23
  %26 = getelementptr inbounds i8** %desc, i64 %indvars.iv, !dbg !520
  %27 = load i8** %26, align 8, !dbg !520, !tbaa !504
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !115, metadata !384) #7, !dbg !521
  %28 = tail call fastcc i8* @repall(i8* %27, i32 8, %struct.t_sandr* getelementptr inbounds ([8 x %struct.t_sandr]* @sandrTty, i64 0, i64 0)) #8, !dbg !523
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !125, metadata !384), !dbg !524
  %29 = tail call i8* @__strcat_chk(i8* %13, i8* %28, i64 %14) #8, !dbg !508
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str65, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str63, i64 0, i64 0), i32 377, i8* %28) #8, !dbg !525
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !501
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !501
  %exitcond = icmp eq i32 %lftr.wideiv, %15, !dbg !501
  br i1 %exitcond, label %._crit_edge, label %16, !dbg !501

._crit_edge:                                      ; preds = %25, %.thread, %11
  %30 = phi i8* [ %2, %.thread ], [ %13, %11 ], [ %13, %25 ]
  %31 = tail call i8* @wrap_lines(i8* %30, i32 80, i32 0) #8, !dbg !526
  tail call void @llvm.dbg.value(metadata i8* %31, i64 0, metadata !125, metadata !384), !dbg !524
  %32 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str66, i64 0, i64 0), i8* %31) #8, !dbg !527
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str65, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str63, i64 0, i64 0), i32 382, i8* %31) #8, !dbg !528
  tail call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str63, i64 0, i64 0), i32 383, i8* %30) #8, !dbg !529
  ret void, !dbg !530
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: optsize
declare i8* @wrap_lines(i8*, i32, i32) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize ssp uwtable
define i8* @check_html(i8* %s, i8* readonly %program) #4 {
  %buf.i = alloca [256 x i8], align 16
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !132, metadata !384), !dbg !531
  tail call void @llvm.dbg.value(metadata i8* %program, i64 0, metadata !133, metadata !384), !dbg !532
  %1 = tail call fastcc i8* @repall(i8* %s, i32 10, %struct.t_sandr* getelementptr inbounds ([10 x %struct.t_sandr]* @sandrHTML, i64 0, i64 0)) #9, !dbg !533
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !134, metadata !384), !dbg !534
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !207, metadata !384) #7, !dbg !535
  tail call void @llvm.dbg.value(metadata i8* %program, i64 0, metadata !208, metadata !384) #7, !dbg !537
  %2 = getelementptr inbounds [256 x i8]* %buf.i, i64 0, i64 0, !dbg !538
  call void @llvm.lifetime.start(i64 256, i8* %2) #7, !dbg !538
  %3 = load %struct.t_sandr** @html_xref.sr, align 8, !dbg !539, !tbaa !504
  %4 = icmp eq %struct.t_sandr* %3, null, !dbg !541
  br i1 %4, label %5, label %thread-pre-split.i, !dbg !542

; <label>:5                                       ; preds = %0
  %6 = tail call i32 @get_file(i8* getelementptr inbounds ([10 x i8]* @.str76, i64 0, i64 0), i8*** @html_xref.str) #8, !dbg !543
  store i32 %6, i32* @html_xref.nstr, align 4, !dbg !545, !tbaa !546
  %7 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str77, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str63, i64 0, i64 0), i32 187, i32 %6, i32 16) #8, !dbg !547
  store i8* %7, i8** bitcast (%struct.t_sandr** @html_xref.sr to i8**), align 8, !dbg !547, !tbaa !504
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !214, metadata !384) #7, !dbg !548
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !213, metadata !384) #7, !dbg !549
  %8 = load i32* @html_xref.nstr, align 4, !dbg !550, !tbaa !546
  %9 = icmp sgt i32 %8, 0, !dbg !553
  %10 = bitcast i8* %7 to %struct.t_sandr*, !dbg !554
  br i1 %9, label %.lr.ph.i, label %36, !dbg !555

.lr.ph.i:                                         ; preds = %5
  %11 = icmp eq i8* %program, null, !dbg !556
  br label %12, !dbg !555

; <label>:12                                      ; preds = %32, %.lr.ph.i
  %13 = phi i32 [ %8, %.lr.ph.i ], [ %33, %32 ], !dbg !554
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %32 ], !dbg !554
  %j.01.i = phi i32 [ 0, %.lr.ph.i ], [ %j.1.i, %32 ], !dbg !554
  %.pre.i = load i8*** @html_xref.str, align 8, !dbg !559, !tbaa !504
  %.phi.trans.insert = getelementptr inbounds i8** %.pre.i, i64 %indvars.iv.i
  br i1 %11, label %.._crit_edge3.i_crit_edge, label %14, !dbg !561

.._crit_edge3.i_crit_edge:                        ; preds = %12
  %.phi.trans.insert1 = bitcast i8** %.phi.trans.insert to i64*
  %.pre = load i64* %.phi.trans.insert1, align 8, !dbg !559, !tbaa !504
  br label %._crit_edge3.i, !dbg !561

; <label>:14                                      ; preds = %12
  %15 = load i8** %.phi.trans.insert, align 8, !dbg !562, !tbaa !504
  %16 = call i32 @strcasecmp(i8* %program, i8* %15) #8, !dbg !563
  %17 = icmp eq i32 %16, 0, !dbg !564
  br i1 %17, label %32, label %.._crit_edge3.i_crit_edge2, !dbg !565

.._crit_edge3.i_crit_edge2:                       ; preds = %14
  %18 = ptrtoint i8* %15 to i64
  br label %._crit_edge3.i, !dbg !565

._crit_edge3.i:                                   ; preds = %.._crit_edge3.i_crit_edge2, %.._crit_edge3.i_crit_edge
  %19 = phi i64 [ %.pre, %.._crit_edge3.i_crit_edge ], [ %18, %.._crit_edge3.i_crit_edge2 ]
  %20 = sext i32 %j.01.i to i64, !dbg !566
  %21 = load %struct.t_sandr** @html_xref.sr, align 8, !dbg !566, !tbaa !504
  %22 = getelementptr inbounds %struct.t_sandr* %21, i64 %20, !dbg !566
  %23 = bitcast %struct.t_sandr* %22 to i64*, !dbg !567
  store i64 %19, i64* %23, align 8, !dbg !567, !tbaa !437
  %24 = load i8*** @html_xref.str, align 8, !dbg !568, !tbaa !504
  %25 = getelementptr inbounds i8** %24, i64 %indvars.iv.i, !dbg !568
  %26 = load i8** %25, align 8, !dbg !568, !tbaa !504
  %27 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %2, i32 0, i64 256, i8* getelementptr inbounds ([25 x i8]* @.str78, i64 0, i64 0), i8* %26, i8* %26) #8, !dbg !568
  %28 = call i8* @strdup(i8* %2) #8, !dbg !569
  %29 = load %struct.t_sandr** @html_xref.sr, align 8, !dbg !570, !tbaa !504
  %30 = getelementptr inbounds %struct.t_sandr* %29, i64 %20, i32 1, !dbg !571
  store i8* %28, i8** %30, align 8, !dbg !572, !tbaa !440
  %31 = add nsw i32 %j.01.i, 1, !dbg !573
  call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !214, metadata !384) #7, !dbg !548
  %.pre4.i = load i32* @html_xref.nstr, align 4, !dbg !550, !tbaa !546
  br label %32, !dbg !574

; <label>:32                                      ; preds = %._crit_edge3.i, %14
  %33 = phi i32 [ %.pre4.i, %._crit_edge3.i ], [ %13, %14 ], !dbg !555
  %j.1.i = phi i32 [ %31, %._crit_edge3.i ], [ %j.01.i, %14 ], !dbg !554
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !555
  %34 = sext i32 %33 to i64, !dbg !553
  %35 = icmp slt i64 %indvars.iv.next.i, %34, !dbg !553
  br i1 %35, label %12, label %._crit_edge.i, !dbg !555

._crit_edge.i:                                    ; preds = %32
  %.pre5.pre.i = load %struct.t_sandr** @html_xref.sr, align 8, !dbg !575, !tbaa !504
  br label %36, !dbg !555

; <label>:36                                      ; preds = %._crit_edge.i, %5
  %.pre5.i = phi %struct.t_sandr* [ %.pre5.pre.i, %._crit_edge.i ], [ %10, %5 ], !dbg !554
  %j.0.lcssa.i = phi i32 [ %j.1.i, %._crit_edge.i ], [ 0, %5 ], !dbg !554
  store i32 %j.0.lcssa.i, i32* @html_xref.nstr, align 4, !dbg !576, !tbaa !546
  br label %37, !dbg !577

thread-pre-split.i:                               ; preds = %0
  %.pr.i = load i32* @html_xref.nstr, align 4, !dbg !578, !tbaa !546
  br label %37, !dbg !554

; <label>:37                                      ; preds = %thread-pre-split.i, %36
  %38 = phi %struct.t_sandr* [ %3, %thread-pre-split.i ], [ %.pre5.i, %36 ], !dbg !554
  %39 = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %j.0.lcssa.i, %36 ], !dbg !578
  call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !217, metadata !384) #7, !dbg !579
  call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !218, metadata !384) #7, !dbg !581
  call void @llvm.dbg.value(metadata %struct.t_sandr* %38, i64 0, metadata !219, metadata !384) #7, !dbg !582
  call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !221, metadata !384) #7, !dbg !583
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !220, metadata !384) #7, !dbg !584
  %40 = icmp sgt i32 %39, 0, !dbg !585
  br i1 %40, label %.lr.ph.i.i, label %html_xref.exit, !dbg !588

.lr.ph.i.i:                                       ; preds = %37
  %41 = add i32 %39, -1, !dbg !588
  br label %42, !dbg !588

; <label>:42                                      ; preds = %52, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %52 ], !dbg !589
  %buf.02.i.i = phi i8* [ %1, %.lr.ph.i.i ], [ %47, %52 ], !dbg !589
  %43 = getelementptr inbounds %struct.t_sandr* %38, i64 %indvars.iv.i.i, i32 0, !dbg !590
  %44 = load i8** %43, align 8, !dbg !590, !tbaa !437
  %45 = getelementptr inbounds %struct.t_sandr* %38, i64 %indvars.iv.i.i, i32 1, !dbg !592
  %46 = load i8** %45, align 8, !dbg !592, !tbaa !440
  %47 = call i8* @replaceww(i8* %buf.02.i.i, i8* %44, i8* %46) #8, !dbg !593
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !222, metadata !384) #7, !dbg !594
  %48 = trunc i64 %indvars.iv.i.i to i32, !dbg !595
  %49 = icmp ne i32 %48, 0, !dbg !595
  %50 = icmp ne i8* %buf.02.i.i, null, !dbg !597
  %or.cond.i.i = and i1 %50, %49, !dbg !598
  br i1 %or.cond.i.i, label %51, label %52, !dbg !598

; <label>:51                                      ; preds = %42
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str63, i64 0, i64 0), i32 160, i8* %buf.02.i.i) #8, !dbg !599
  br label %52, !dbg !599

; <label>:52                                      ; preds = %51, %42
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !221, metadata !384) #7, !dbg !583
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !588
  %exitcond = icmp eq i32 %48, %41, !dbg !588
  br i1 %exitcond, label %html_xref.exit, label %42, !dbg !588

html_xref.exit:                                   ; preds = %52, %37
  %buf.0.lcssa.i.i = phi i8* [ %1, %37 ], [ %47, %52 ], !dbg !589
  call void @llvm.lifetime.end(i64 256, i8* %2) #7, !dbg !600
  call void @llvm.dbg.value(metadata i8* %buf.0.lcssa.i.i, i64 0, metadata !134, metadata !384), !dbg !534
  call void @llvm.dbg.declare(metadata [256 x i8]* %buf.i, metadata !209, metadata !384), !dbg !601
  ret i8* %buf.0.lcssa.i.i, !dbg !602
}

; Function Attrs: nounwind optsize ssp uwtable
define void @write_man(%struct.__sFILE* %out, i8* nocapture readonly %mantp, i8* %program, i32 %nldesc, i8** nocapture readonly %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npargs, %struct.t_pargs* %pa, i32 %nbug, i8** nocapture readonly %bugs, i32 %bHidden) #4 {
  %link.i = alloca [10 x i8], align 1
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !173, metadata !384), !dbg !603
  tail call void @llvm.dbg.value(metadata i8* %mantp, i64 0, metadata !174, metadata !384), !dbg !604
  tail call void @llvm.dbg.value(metadata i8* %program, i64 0, metadata !175, metadata !384), !dbg !605
  tail call void @llvm.dbg.value(metadata i32 %nldesc, i64 0, metadata !176, metadata !384), !dbg !606
  tail call void @llvm.dbg.value(metadata i8** %desc, i64 0, metadata !177, metadata !384), !dbg !607
  tail call void @llvm.dbg.value(metadata i32 %nfile, i64 0, metadata !178, metadata !384), !dbg !608
  tail call void @llvm.dbg.value(metadata %struct.t_filenm* %fnm, i64 0, metadata !179, metadata !384), !dbg !609
  tail call void @llvm.dbg.value(metadata i32 %npargs, i64 0, metadata !180, metadata !384), !dbg !610
  tail call void @llvm.dbg.value(metadata %struct.t_pargs* %pa, i64 0, metadata !181, metadata !384), !dbg !611
  tail call void @llvm.dbg.value(metadata i32 %nbug, i64 0, metadata !182, metadata !384), !dbg !612
  tail call void @llvm.dbg.value(metadata i8** %bugs, i64 0, metadata !183, metadata !384), !dbg !613
  tail call void @llvm.dbg.value(metadata i32 %bHidden, i64 0, metadata !184, metadata !384), !dbg !614
  %1 = icmp ne i32 %bHidden, 0, !dbg !615
  tail call void @llvm.dbg.declare(metadata [10 x i8]* %link.i, metadata !306, metadata !384), !dbg !617
  br i1 %1, label %.loopexit, label %2, !dbg !620

; <label>:2                                       ; preds = %0
  %3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str63, i64 0, i64 0), i32 633, i32 %npargs, i32 32) #8, !dbg !621
  %4 = bitcast i8* %3 to %struct.t_pargs*, !dbg !621
  tail call void @llvm.dbg.value(metadata %struct.t_pargs* %4, i64 0, metadata !188, metadata !384), !dbg !623
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !187, metadata !384), !dbg !624
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !186, metadata !384), !dbg !625
  %5 = icmp sgt i32 %npargs, 0, !dbg !626
  br i1 %5, label %.lr.ph, label %.loopexit, !dbg !629

.lr.ph:                                           ; preds = %2
  %6 = add i32 %npargs, -1, !dbg !629
  br label %7, !dbg !629

; <label>:7                                       ; preds = %17, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %17 ]
  %npar.025 = phi i32 [ 0, %.lr.ph ], [ %npar.1, %17 ]
  %8 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, !dbg !630
  %9 = tail call i32 @is_hidden(%struct.t_pargs* %8) #8, !dbg !632
  %10 = icmp eq i32 %9, 0, !dbg !632
  br i1 %10, label %11, label %17, !dbg !633

; <label>:11                                      ; preds = %7
  %12 = sext i32 %npar.025 to i64, !dbg !634
  %13 = getelementptr inbounds %struct.t_pargs* %4, i64 %12, !dbg !634
  %14 = bitcast %struct.t_pargs* %13 to i8*, !dbg !636
  %15 = bitcast %struct.t_pargs* %8 to i8*, !dbg !636
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 8, i1 false), !dbg !636, !tbaa.struct !637
  %16 = add nsw i32 %npar.025, 1, !dbg !638
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !187, metadata !384), !dbg !624
  br label %17, !dbg !639

; <label>:17                                      ; preds = %7, %11
  %npar.1 = phi i32 [ %npar.025, %7 ], [ %16, %11 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !629
  %lftr.wideiv52 = trunc i64 %indvars.iv to i32, !dbg !629
  %exitcond53 = icmp eq i32 %lftr.wideiv52, %6, !dbg !629
  br i1 %exitcond53, label %.loopexit, label %7, !dbg !629

.loopexit:                                        ; preds = %17, %2, %0
  %npar.2 = phi i32 [ %npargs, %0 ], [ 0, %2 ], [ %npar.1, %17 ]
  %par.0 = phi %struct.t_pargs* [ %pa, %0 ], [ %4, %2 ], [ %4, %17 ]
  %18 = tail call i8* @strrchr(i8* %program, i32 47) #8, !dbg !640
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !185, metadata !384), !dbg !642
  %19 = icmp eq i8* %18, null, !dbg !643
  %20 = getelementptr inbounds i8* %18, i64 1, !dbg !644
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !185, metadata !384), !dbg !642
  %pr.0 = select i1 %19, i8* %program, i8* %20, !dbg !645
  %21 = tail call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([4 x i8]* @.str68, i64 0, i64 0)) #8, !dbg !646
  %22 = icmp eq i32 %21, 0, !dbg !648
  br i1 %22, label %23, label %write_texman.exit, !dbg !649

; <label>:23                                      ; preds = %.loopexit
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !227, metadata !384) #7, !dbg !650
  tail call void @llvm.dbg.value(metadata i8* %pr.0, i64 0, metadata !228, metadata !384) #7, !dbg !652
  tail call void @llvm.dbg.value(metadata i32 %nldesc, i64 0, metadata !229, metadata !384) #7, !dbg !653
  tail call void @llvm.dbg.value(metadata i8** %desc, i64 0, metadata !230, metadata !384) #7, !dbg !654
  tail call void @llvm.dbg.value(metadata i32 %nfile, i64 0, metadata !231, metadata !384) #7, !dbg !655
  tail call void @llvm.dbg.value(metadata %struct.t_filenm* %fnm, i64 0, metadata !232, metadata !384) #7, !dbg !656
  tail call void @llvm.dbg.value(metadata i32 %npar.2, i64 0, metadata !233, metadata !384) #7, !dbg !657
  tail call void @llvm.dbg.value(metadata %struct.t_pargs* %par.0, i64 0, metadata !234, metadata !384) #7, !dbg !658
  tail call void @llvm.dbg.value(metadata i32 %nbug, i64 0, metadata !235, metadata !384) #7, !dbg !659
  tail call void @llvm.dbg.value(metadata i8** %bugs, i64 0, metadata !236, metadata !384) #7, !dbg !660
  tail call void @llvm.dbg.value(metadata i8* %pr.0, i64 0, metadata !103, metadata !384) #7, !dbg !661
  %24 = tail call fastcc i8* @repall(i8* %pr.0, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #8, !dbg !663
  %25 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([27 x i8]* @.str79, i64 0, i64 0), i8* %24) #8, !dbg !664
  %26 = icmp sgt i32 %nldesc, 0, !dbg !665
  br i1 %26, label %.lr.ph11.i, label %.loopexit.i, !dbg !667

.lr.ph11.i:                                       ; preds = %23
  %27 = add i32 %nldesc, -1, !dbg !668
  br label %28, !dbg !668

; <label>:28                                      ; preds = %28, %.lr.ph11.i
  %indvars.iv20.i = phi i64 [ 0, %.lr.ph11.i ], [ %indvars.iv.next21.i, %28 ], !dbg !670
  %29 = getelementptr inbounds i8** %desc, i64 %indvars.iv20.i, !dbg !671
  %30 = load i8** %29, align 8, !dbg !671, !tbaa !504
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !103, metadata !384) #7, !dbg !673
  %31 = tail call fastcc i8* @repall(i8* %30, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #8, !dbg !675
  %32 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str66, i64 0, i64 0), i8* %31) #8, !dbg !676
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1, !dbg !668
  %lftr.wideiv50 = trunc i64 %indvars.iv20.i to i32, !dbg !668
  %exitcond51 = icmp eq i32 %lftr.wideiv50, %27, !dbg !668
  br i1 %exitcond51, label %.loopexit.i, label %28, !dbg !668

.loopexit.i:                                      ; preds = %28, %23
  %33 = icmp sgt i32 %nfile, 0, !dbg !677
  br i1 %33, label %.lr.ph8.i, label %55, !dbg !679

.lr.ph8.i:                                        ; preds = %.loopexit.i
  %34 = tail call i64 @fwrite(i8* getelementptr inbounds ([30 x i8]* @.str80, i64 0, i64 0), i64 29, i64 1, %struct.__sFILE* %out) #7, !dbg !680
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([40 x i8]* @.str81, i64 0, i64 0), i64 39, i64 1, %struct.__sFILE* %out) #7, !dbg !682
  %36 = tail call i64 @fwrite(i8* getelementptr inbounds ([86 x i8]* @.str82, i64 0, i64 0), i64 85, i64 1, %struct.__sFILE* %out) #7, !dbg !683
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !237, metadata !384) #7, !dbg !684
  %37 = add i32 %nfile, -1, !dbg !685
  br label %38, !dbg !685

; <label>:38                                      ; preds = %38, %.lr.ph8.i
  %indvars.iv16.i = phi i64 [ 0, %.lr.ph8.i ], [ %indvars.iv.next17.i, %38 ], !dbg !670
  %39 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv16.i, i32 1, !dbg !687
  %40 = load i8** %39, align 8, !dbg !687, !tbaa !689
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !103, metadata !384) #7, !dbg !692
  %41 = tail call fastcc i8* @repall(i8* %40, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #8, !dbg !694
  %42 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv16.i, i32 2, !dbg !695
  %43 = load i8** %42, align 8, !dbg !695, !tbaa !696
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !103, metadata !384) #7, !dbg !697
  %44 = tail call fastcc i8* @repall(i8* %43, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #8, !dbg !699
  %45 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv16.i, i32 3, !dbg !700
  %46 = load i64* %45, align 8, !dbg !700, !tbaa !701
  %47 = tail call i8* @fileopt(i64 %46) #8, !dbg !702
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i64 0, metadata !103, metadata !384) #7, !dbg !703
  %48 = tail call fastcc i8* @repall(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #8, !dbg !705
  %49 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv16.i, i32 0, !dbg !706
  %50 = load i32* %49, align 4, !dbg !706, !tbaa !707
  %51 = tail call i8* @ftp2desc(i32 %50) #8, !dbg !708
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !103, metadata !384) #7, !dbg !709
  %52 = tail call fastcc i8* @repall(i8* %51, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #8, !dbg !711
  %53 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([69 x i8]* @.str83, i64 0, i64 0), i8* %41, i8* %44, i8* %48, i8* %52) #8, !dbg !712
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1, !dbg !685
  %lftr.wideiv48 = trunc i64 %indvars.iv16.i to i32, !dbg !685
  %exitcond49 = icmp eq i32 %lftr.wideiv48, %37, !dbg !685
  br i1 %exitcond49, label %._crit_edge9.i, label %38, !dbg !685

._crit_edge9.i:                                   ; preds = %38
  %54 = tail call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str84, i64 0, i64 0), i64 27, i64 1, %struct.__sFILE* %out) #7, !dbg !713
  br label %55, !dbg !714

; <label>:55                                      ; preds = %._crit_edge9.i, %.loopexit.i
  %56 = icmp sgt i32 %npar.2, 0, !dbg !715
  br i1 %56, label %.lr.ph4.i, label %86, !dbg !717

.lr.ph4.i:                                        ; preds = %55
  %57 = tail call i64 @fwrite(i8* getelementptr inbounds ([30 x i8]* @.str80, i64 0, i64 0), i64 29, i64 1, %struct.__sFILE* %out) #7, !dbg !718
  %58 = tail call i64 @fwrite(i8* getelementptr inbounds ([48 x i8]* @.str85, i64 0, i64 0), i64 47, i64 1, %struct.__sFILE* %out) #7, !dbg !720
  %59 = tail call i64 @fwrite(i8* getelementptr inbounds ([66 x i8]* @.str86, i64 0, i64 0), i64 65, i64 1, %struct.__sFILE* %out) #7, !dbg !721
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !237, metadata !384) #7, !dbg !684
  %60 = add i32 %npar.2, -1, !dbg !722
  br label %61, !dbg !722

; <label>:61                                      ; preds = %84, %.lr.ph4.i
  %indvars.iv12.i = phi i64 [ 0, %.lr.ph4.i ], [ %indvars.iv.next13.i, %84 ], !dbg !670
  %62 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv12.i, !dbg !724
  %63 = tail call i8* @pa_val(%struct.t_pargs* %62) #8, !dbg !728
  tail call void @llvm.dbg.value(metadata i8* %63, i64 0, metadata !103, metadata !384) #7, !dbg !729
  %64 = tail call fastcc i8* @repall(i8* %63, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #8, !dbg !731
  %65 = tail call i64 @strlen(i8* %64) #8, !dbg !732
  %66 = icmp ult i64 %65, 9, !dbg !733
  %67 = getelementptr inbounds %struct.t_pargs* %62, i64 0, i32 0, !dbg !734
  %68 = load i8** %67, align 8, !dbg !734, !tbaa !735
  tail call void @llvm.dbg.value(metadata i8* %68, i64 0, metadata !103, metadata !384) #7, !dbg !737
  %69 = tail call fastcc i8* @repall(i8* %68, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #8, !dbg !739
  %70 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv12.i, i32 2, !dbg !740
  %71 = load i32* %70, align 4, !dbg !740, !tbaa !741
  %72 = sext i32 %71 to i64, !dbg !742
  %73 = getelementptr inbounds [7 x i8*]* @argtp, i64 0, i64 %72, !dbg !742
  %74 = load i8** %73, align 8, !dbg !742, !tbaa !504
  %75 = tail call i8* @pa_val(%struct.t_pargs* %62) #8, !dbg !743
  tail call void @llvm.dbg.value(metadata i8* %75, i64 0, metadata !103, metadata !384) #7, !dbg !744
  %76 = tail call fastcc i8* @repall(i8* %75, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #8, !dbg !746
  %77 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv12.i, i32 4, !dbg !747
  %78 = load i8** %77, align 8, !dbg !747, !tbaa !748
  tail call void @llvm.dbg.value(metadata i8* %78, i64 0, metadata !103, metadata !384) #7, !dbg !749
  %79 = tail call fastcc i8* @repall(i8* %78, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #8, !dbg !751
  br i1 %66, label %80, label %82, !dbg !752

; <label>:80                                      ; preds = %61
  %81 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([71 x i8]* @.str87, i64 0, i64 0), i8* %69, i8* %74, i8* %76, i8* %79) #8, !dbg !753
  br label %84, !dbg !753

; <label>:82                                      ; preds = %61
  %83 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([85 x i8]* @.str88, i64 0, i64 0), i8* %69, i8* %74, i8* %76, i8* %79) #8, !dbg !754
  br label %84, !dbg !670

; <label>:84                                      ; preds = %82, %80
  %indvars.iv.next13.i = add nuw nsw i64 %indvars.iv12.i, 1, !dbg !722
  %lftr.wideiv46 = trunc i64 %indvars.iv12.i to i32, !dbg !722
  %exitcond47 = icmp eq i32 %lftr.wideiv46, %60, !dbg !722
  br i1 %exitcond47, label %._crit_edge5.i, label %61, !dbg !722

._crit_edge5.i:                                   ; preds = %84
  %85 = tail call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str84, i64 0, i64 0), i64 27, i64 1, %struct.__sFILE* %out) #7, !dbg !755
  br label %86, !dbg !756

; <label>:86                                      ; preds = %._crit_edge5.i, %55
  %87 = icmp sgt i32 %nbug, 0, !dbg !757
  br i1 %87, label %.lr.ph.i, label %write_texman.exit, !dbg !759

.lr.ph.i:                                         ; preds = %86
  %fputc.i = tail call i32 @fputc(i32 10, %struct.__sFILE* %out) #7, !dbg !760
  %88 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str89, i64 0, i64 0), i64 16, i64 1, %struct.__sFILE* %out) #7, !dbg !762
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !237, metadata !384) #7, !dbg !684
  %89 = add i32 %nbug, -1, !dbg !763
  br label %90, !dbg !763

; <label>:90                                      ; preds = %90, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %90 ], !dbg !670
  %91 = getelementptr inbounds i8** %bugs, i64 %indvars.iv.i, !dbg !765
  %92 = load i8** %91, align 8, !dbg !765, !tbaa !504
  tail call void @llvm.dbg.value(metadata i8* %92, i64 0, metadata !103, metadata !384) #7, !dbg !767
  %93 = tail call fastcc i8* @repall(i8* %92, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #8, !dbg !769
  %94 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([10 x i8]* @.str90, i64 0, i64 0), i8* %93) #8, !dbg !770
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !763
  %lftr.wideiv44 = trunc i64 %indvars.iv.i to i32, !dbg !763
  %exitcond45 = icmp eq i32 %lftr.wideiv44, %89, !dbg !763
  br i1 %exitcond45, label %._crit_edge.i, label %90, !dbg !763

._crit_edge.i:                                    ; preds = %90
  %95 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str91, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %out) #7, !dbg !771
  br label %write_texman.exit, !dbg !772

write_texman.exit:                                ; preds = %._crit_edge.i, %86, %.loopexit
  %96 = tail call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([6 x i8]* @.str69, i64 0, i64 0)) #8, !dbg !773
  %97 = icmp eq i32 %96, 0, !dbg !775
  br i1 %97, label %98, label %write_nroffman.exit, !dbg !776

; <label>:98                                      ; preds = %write_texman.exit
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !240, metadata !384) #7, !dbg !777
  tail call void @llvm.dbg.value(metadata i8* %pr.0, i64 0, metadata !241, metadata !384) #7, !dbg !779
  tail call void @llvm.dbg.value(metadata i32 %nldesc, i64 0, metadata !242, metadata !384) #7, !dbg !780
  tail call void @llvm.dbg.value(metadata i8** %desc, i64 0, metadata !243, metadata !384) #7, !dbg !781
  tail call void @llvm.dbg.value(metadata i32 %nfile, i64 0, metadata !244, metadata !384) #7, !dbg !782
  tail call void @llvm.dbg.value(metadata %struct.t_filenm* %fnm, i64 0, metadata !245, metadata !384) #7, !dbg !783
  tail call void @llvm.dbg.value(metadata i32 %npar.2, i64 0, metadata !246, metadata !384) #7, !dbg !784
  tail call void @llvm.dbg.value(metadata %struct.t_pargs* %par.0, i64 0, metadata !247, metadata !384) #7, !dbg !785
  tail call void @llvm.dbg.value(metadata i32 %nbug, i64 0, metadata !248, metadata !384) #7, !dbg !786
  tail call void @llvm.dbg.value(metadata i8** %bugs, i64 0, metadata !249, metadata !384) #7, !dbg !787
  tail call fastcc void @mydate() #8, !dbg !788
  %99 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([15 x i8]* @.str99, i64 0, i64 0), i8* %pr.0, i8* getelementptr inbounds ([128 x i8]* @mydate.tbuf, i64 0, i64 0)) #8, !dbg !789
  %100 = tail call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str100, i64 0, i64 0), i64 9, i64 1, %struct.__sFILE* %out) #7, !dbg !790
  %101 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str66, i64 0, i64 0), i8* %pr.0) #8, !dbg !791
  %102 = tail call i8* @GromacsVersion() #8, !dbg !792
  %103 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([7 x i8]* @.str101, i64 0, i64 0), i8* %102) #8, !dbg !793
  %104 = tail call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str102, i64 0, i64 0), i64 13, i64 1, %struct.__sFILE* %out) #7, !dbg !794
  %105 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([10 x i8]* @.str103, i64 0, i64 0), i8* %pr.0) #8, !dbg !795
  %106 = icmp sgt i32 %nfile, 0, !dbg !796
  br i1 %106, label %.lr.ph19.i, label %.loopexit8.i, !dbg !798

.lr.ph19.i:                                       ; preds = %98
  %107 = add i32 %nfile, -1, !dbg !799
  br label %108, !dbg !799

; <label>:108                                     ; preds = %108, %.lr.ph19.i
  %indvars.iv36.i = phi i64 [ 0, %.lr.ph19.i ], [ %indvars.iv.next37.i, %108 ], !dbg !802
  %109 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv36.i, i32 1, !dbg !803
  %110 = load i8** %109, align 8, !dbg !803, !tbaa !689
  %111 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv36.i, i32 2, !dbg !805
  %112 = load i8** %111, align 8, !dbg !805, !tbaa !696
  %113 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([17 x i8]* @.str104, i64 0, i64 0), i8* %110, i8* %112) #8, !dbg !806
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1, !dbg !799
  %lftr.wideiv42 = trunc i64 %indvars.iv36.i to i32, !dbg !799
  %exitcond43 = icmp eq i32 %lftr.wideiv42, %107, !dbg !799
  br i1 %exitcond43, label %.loopexit8.i, label %108, !dbg !799

.loopexit8.i:                                     ; preds = %108, %98
  %114 = icmp sgt i32 %npar.2, 0, !dbg !807
  br i1 %114, label %.lr.ph17.i, label %.loopexit6.i, !dbg !809

.lr.ph17.i:                                       ; preds = %.loopexit8.i
  %115 = add i32 %npar.2, -1, !dbg !810
  br label %116, !dbg !810

; <label>:116                                     ; preds = %130, %.lr.ph17.i
  %indvars.iv32.i = phi i64 [ 0, %.lr.ph17.i ], [ %indvars.iv.next33.i, %130 ], !dbg !802
  %117 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv32.i, i32 2, !dbg !813
  %118 = load i32* %117, align 4, !dbg !813, !tbaa !741
  %119 = icmp eq i32 %118, 4, !dbg !816
  %120 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv32.i, i32 0, !dbg !817
  %121 = load i8** %120, align 8, !dbg !817, !tbaa !735
  br i1 %119, label %122, label %125, !dbg !818

; <label>:122                                     ; preds = %116
  %123 = getelementptr inbounds i8* %121, i64 1, !dbg !819
  %124 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([18 x i8]* @.str105, i64 0, i64 0), i8* %123) #8, !dbg !820
  br label %130, !dbg !820

; <label>:125                                     ; preds = %116
  %126 = sext i32 %118 to i64, !dbg !821
  %127 = getelementptr inbounds [7 x i8*]* @argtp, i64 0, i64 %126, !dbg !821
  %128 = load i8** %127, align 8, !dbg !821, !tbaa !504
  %129 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([17 x i8]* @.str104, i64 0, i64 0), i8* %121, i8* %128) #8, !dbg !822
  br label %130, !dbg !802

; <label>:130                                     ; preds = %125, %122
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1, !dbg !810
  %lftr.wideiv40 = trunc i64 %indvars.iv32.i to i32, !dbg !810
  %exitcond41 = icmp eq i32 %lftr.wideiv40, %115, !dbg !810
  br i1 %exitcond41, label %.loopexit6.i, label %116, !dbg !810

.loopexit6.i:                                     ; preds = %130, %.loopexit8.i
  %131 = icmp sgt i32 %nldesc, 0, !dbg !823
  br i1 %131, label %.lr.ph15.i, label %.loopexit4.i, !dbg !825

.lr.ph15.i:                                       ; preds = %.loopexit6.i
  %132 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str106, i64 0, i64 0), i64 16, i64 1, %struct.__sFILE* %out) #7, !dbg !826
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !250, metadata !384) #7, !dbg !828
  %133 = add i32 %nldesc, -1, !dbg !829
  br label %134, !dbg !829

; <label>:134                                     ; preds = %134, %.lr.ph15.i
  %indvars.iv28.i = phi i64 [ 0, %.lr.ph15.i ], [ %indvars.iv.next29.i, %134 ], !dbg !802
  %135 = getelementptr inbounds i8** %desc, i64 %indvars.iv28.i, !dbg !831
  %136 = load i8** %135, align 8, !dbg !831, !tbaa !504
  tail call void @llvm.dbg.value(metadata i8* %136, i64 0, metadata !106, metadata !384) #7, !dbg !833
  %137 = tail call fastcc i8* @repall(i8* %136, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #8, !dbg !835
  %138 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str66, i64 0, i64 0), i8* %137) #8, !dbg !836
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1, !dbg !829
  %lftr.wideiv38 = trunc i64 %indvars.iv28.i to i32, !dbg !829
  %exitcond39 = icmp eq i32 %lftr.wideiv38, %133, !dbg !829
  br i1 %exitcond39, label %.loopexit4.i, label %134, !dbg !829

.loopexit4.i:                                     ; preds = %134, %.loopexit6.i
  br i1 %106, label %.lr.ph13.i, label %.loopexit3.i, !dbg !837

.lr.ph13.i:                                       ; preds = %.loopexit4.i
  %139 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str107, i64 0, i64 0), i64 10, i64 1, %struct.__sFILE* %out) #7, !dbg !838
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !250, metadata !384) #7, !dbg !828
  %140 = add i32 %nfile, -1, !dbg !841
  br label %141, !dbg !841

; <label>:141                                     ; preds = %141, %.lr.ph13.i
  %indvars.iv24.i = phi i64 [ 0, %.lr.ph13.i ], [ %indvars.iv.next25.i, %141 ], !dbg !802
  %142 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv24.i, i32 1, !dbg !843
  %143 = load i8** %142, align 8, !dbg !843, !tbaa !689
  %144 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv24.i, i32 2, !dbg !845
  %145 = load i8** %144, align 8, !dbg !845, !tbaa !696
  %146 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv24.i, i32 3, !dbg !846
  %147 = load i64* %146, align 8, !dbg !846, !tbaa !701
  %148 = tail call i8* @fileopt(i64 %147) #8, !dbg !847
  %149 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv24.i, i32 0, !dbg !848
  %150 = load i32* %149, align 4, !dbg !848, !tbaa !707
  %151 = tail call i8* @ftp2desc(i32 %150) #8, !dbg !849
  tail call void @llvm.dbg.value(metadata i8* %151, i64 0, metadata !106, metadata !384) #7, !dbg !850
  %152 = tail call fastcc i8* @repall(i8* %151, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #8, !dbg !852
  %153 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([29 x i8]* @.str108, i64 0, i64 0), i8* %143, i8* %145, i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* %152) #8, !dbg !853
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1, !dbg !841
  %lftr.wideiv36 = trunc i64 %indvars.iv24.i to i32, !dbg !841
  %exitcond37 = icmp eq i32 %lftr.wideiv36, %140, !dbg !841
  br i1 %exitcond37, label %.loopexit3.i, label %141, !dbg !841

.loopexit3.i:                                     ; preds = %141, %.loopexit4.i
  %154 = tail call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str109, i64 0, i64 0), i64 18, i64 1, %struct.__sFILE* %out) #7, !dbg !854
  br i1 %114, label %.lr.ph11.i1, label %.loopexit2.i, !dbg !855

.lr.ph11.i1:                                      ; preds = %.loopexit3.i
  %155 = add i32 %npar.2, -1, !dbg !856
  br label %156, !dbg !856

; <label>:156                                     ; preds = %182, %.lr.ph11.i1
  %indvars.iv20.i2 = phi i64 [ 0, %.lr.ph11.i1 ], [ %indvars.iv.next21.i3, %182 ], !dbg !802
  %157 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv20.i2, !dbg !860
  %158 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv20.i2, i32 2, !dbg !864
  %159 = load i32* %158, align 4, !dbg !864, !tbaa !741
  %160 = icmp eq i32 %159, 4, !dbg !865
  %161 = getelementptr inbounds %struct.t_pargs* %157, i64 0, i32 0, !dbg !866
  %162 = load i8** %161, align 8, !dbg !866, !tbaa !735
  br i1 %160, label %163, label %171, !dbg !867

; <label>:163                                     ; preds = %156
  %164 = getelementptr inbounds i8* %162, i64 1, !dbg !868
  tail call void @llvm.dbg.value(metadata i8* %164, i64 0, metadata !106, metadata !384) #7, !dbg !869
  %165 = tail call fastcc i8* @repall(i8* %164, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #8, !dbg !871
  %166 = tail call i8* @pa_val(%struct.t_pargs* %157) #8, !dbg !872
  %167 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv20.i2, i32 4, !dbg !873
  %168 = load i8** %167, align 8, !dbg !873, !tbaa !748
  tail call void @llvm.dbg.value(metadata i8* %168, i64 0, metadata !106, metadata !384) #7, !dbg !874
  %169 = tail call fastcc i8* @repall(i8* %168, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #8, !dbg !876
  %170 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([26 x i8]* @.str110, i64 0, i64 0), i8* %165, i8* %166, i8* %169) #8, !dbg !877
  br label %182, !dbg !877

; <label>:171                                     ; preds = %156
  tail call void @llvm.dbg.value(metadata i8* %162, i64 0, metadata !106, metadata !384) #7, !dbg !878
  %172 = tail call fastcc i8* @repall(i8* %162, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #8, !dbg !880
  %173 = load i32* %158, align 4, !dbg !881, !tbaa !741
  %174 = sext i32 %173 to i64, !dbg !882
  %175 = getelementptr inbounds [7 x i8*]* @argtp, i64 0, i64 %174, !dbg !882
  %176 = load i8** %175, align 8, !dbg !882, !tbaa !504
  %177 = tail call i8* @pa_val(%struct.t_pargs* %157) #8, !dbg !883
  %178 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv20.i2, i32 4, !dbg !884
  %179 = load i8** %178, align 8, !dbg !884, !tbaa !748
  tail call void @llvm.dbg.value(metadata i8* %179, i64 0, metadata !106, metadata !384) #7, !dbg !885
  %180 = tail call fastcc i8* @repall(i8* %179, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #8, !dbg !887
  %181 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([29 x i8]* @.str111, i64 0, i64 0), i8* %172, i8* %176, i8* %177, i8* %180) #8, !dbg !888
  br label %182, !dbg !802

; <label>:182                                     ; preds = %171, %163
  %indvars.iv.next21.i3 = add nuw nsw i64 %indvars.iv20.i2, 1, !dbg !856
  %lftr.wideiv34 = trunc i64 %indvars.iv20.i2 to i32, !dbg !856
  %exitcond35 = icmp eq i32 %lftr.wideiv34, %155, !dbg !856
  br i1 %exitcond35, label %.loopexit2.i, label %156, !dbg !856

.loopexit2.i:                                     ; preds = %182, %.loopexit3.i
  %183 = icmp sgt i32 %nbug, 0, !dbg !889
  br i1 %183, label %.lr.ph.i6, label %write_nroffman.exit, !dbg !891

.lr.ph.i6:                                        ; preds = %.loopexit2.i
  %184 = add i32 %nbug, -1, !dbg !892
  br label %185, !dbg !892

; <label>:185                                     ; preds = %185, %.lr.ph.i6
  %indvars.iv.i7 = phi i64 [ 0, %.lr.ph.i6 ], [ %indvars.iv.next.i8, %185 ], !dbg !802
  %186 = getelementptr inbounds i8** %bugs, i64 %indvars.iv.i7, !dbg !895
  %187 = load i8** %186, align 8, !dbg !895, !tbaa !504
  tail call void @llvm.dbg.value(metadata i8* %187, i64 0, metadata !106, metadata !384) #7, !dbg !897
  %188 = tail call fastcc i8* @repall(i8* %187, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #8, !dbg !899
  %189 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([8 x i8]* @.str112, i64 0, i64 0), i8* %188) #8, !dbg !900
  %indvars.iv.next.i8 = add nuw nsw i64 %indvars.iv.i7, 1, !dbg !892
  %lftr.wideiv32 = trunc i64 %indvars.iv.i7 to i32, !dbg !892
  %exitcond33 = icmp eq i32 %lftr.wideiv32, %184, !dbg !892
  br i1 %exitcond33, label %write_nroffman.exit, label %185, !dbg !892

write_nroffman.exit:                              ; preds = %185, %.loopexit2.i, %write_texman.exit
  %190 = tail call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([6 x i8]* @.str70, i64 0, i64 0)) #8, !dbg !901
  %191 = icmp eq i32 %190, 0, !dbg !903
  br i1 %191, label %192, label %193, !dbg !904

; <label>:192                                     ; preds = %write_nroffman.exit
  tail call fastcc void @write_ttyman(%struct.__sFILE* %out, i8* %pr.0, i32 %nldesc, i8** %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npar.2, %struct.t_pargs* %par.0, i32 %nbug, i8** %bugs, i32 1) #9, !dbg !905
  br label %193, !dbg !905

; <label>:193                                     ; preds = %192, %write_nroffman.exit
  %194 = tail call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([5 x i8]* @.str71, i64 0, i64 0)) #8, !dbg !906
  %195 = icmp eq i32 %194, 0, !dbg !908
  br i1 %195, label %196, label %197, !dbg !909

; <label>:196                                     ; preds = %193
  tail call fastcc void @write_ttyman(%struct.__sFILE* %out, i8* %pr.0, i32 %nldesc, i8** %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npar.2, %struct.t_pargs* %par.0, i32 %nbug, i8** %bugs, i32 0) #9, !dbg !910
  br label %197, !dbg !910

; <label>:197                                     ; preds = %196, %193
  %198 = tail call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([5 x i8]* @.str72, i64 0, i64 0)) #8, !dbg !911
  %199 = icmp eq i32 %198, 0, !dbg !912
  br i1 %199, label %200, label %287, !dbg !913

; <label>:200                                     ; preds = %197
  %201 = getelementptr inbounds [10 x i8]* %link.i, i64 0, i64 0, !dbg !914
  call void @llvm.lifetime.start(i64 10, i8* %201), !dbg !914
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !295, metadata !384) #7, !dbg !914
  tail call void @llvm.dbg.value(metadata i8* %pr.0, i64 0, metadata !296, metadata !384) #7, !dbg !915
  tail call void @llvm.dbg.value(metadata i32 %nldesc, i64 0, metadata !297, metadata !384) #7, !dbg !916
  tail call void @llvm.dbg.value(metadata i8** %desc, i64 0, metadata !298, metadata !384) #7, !dbg !917
  tail call void @llvm.dbg.value(metadata i32 %nfile, i64 0, metadata !299, metadata !384) #7, !dbg !918
  tail call void @llvm.dbg.value(metadata %struct.t_filenm* %fnm, i64 0, metadata !300, metadata !384) #7, !dbg !919
  tail call void @llvm.dbg.value(metadata i32 %npar.2, i64 0, metadata !301, metadata !384) #7, !dbg !920
  tail call void @llvm.dbg.value(metadata %struct.t_pargs* %par.0, i64 0, metadata !302, metadata !384) #7, !dbg !921
  tail call void @llvm.dbg.value(metadata i32 %nbug, i64 0, metadata !303, metadata !384) #7, !dbg !922
  tail call void @llvm.dbg.value(metadata i8** %bugs, i64 0, metadata !304, metadata !384) #7, !dbg !923
  %202 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([33 x i8]* @.str138, i64 0, i64 0), i8* %pr.0) #8, !dbg !924
  %203 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str139, i64 0, i64 0), i64 55, i64 1, %struct.__sFILE* %out) #7, !dbg !925
  %204 = tail call i64 @fwrite(i8* getelementptr inbounds ([88 x i8]* @.str140, i64 0, i64 0), i64 87, i64 1, %struct.__sFILE* %out) #7, !dbg !926
  %205 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([51 x i8]* @.str141, i64 0, i64 0)) #8, !dbg !927
  %206 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str142, i64 0, i64 0), i64 42, i64 1, %struct.__sFILE* %out) #7, !dbg !928
  %207 = tail call i64 @fwrite(i8* getelementptr inbounds ([113 x i8]* @.str143, i64 0, i64 0), i64 112, i64 1, %struct.__sFILE* %out) #7, !dbg !929
  %208 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([52 x i8]* @.str144, i64 0, i64 0), i8* %pr.0) #8, !dbg !930
  %209 = tail call i64 @fwrite(i8* getelementptr inbounds ([77 x i8]* @.str145, i64 0, i64 0), i64 76, i64 1, %struct.__sFILE* %out) #7, !dbg !931
  %210 = tail call i8* @GromacsVersion() #8, !dbg !932
  %211 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([77 x i8]* @.str146, i64 0, i64 0), i8* %210) #8, !dbg !933
  tail call fastcc void @mydate() #8, !dbg !934
  %212 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([31 x i8]* @.str147, i64 0, i64 0), i8* getelementptr inbounds ([128 x i8]* @mydate.tbuf, i64 0, i64 0)) #8, !dbg !935
  %213 = icmp sgt i32 %nldesc, 0, !dbg !936
  br i1 %213, label %.lr.ph12.i, label %.loopexit.i12, !dbg !938

.lr.ph12.i:                                       ; preds = %200
  %214 = tail call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str148, i64 0, i64 0), i64 25, i64 1, %struct.__sFILE* %out) #7, !dbg !939
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !305, metadata !384) #7, !dbg !941
  %215 = add i32 %nldesc, -1, !dbg !942
  br label %216, !dbg !942

; <label>:216                                     ; preds = %216, %.lr.ph12.i
  %indvars.iv21.i = phi i64 [ 0, %.lr.ph12.i ], [ %indvars.iv.next22.i, %216 ], !dbg !944
  %217 = getelementptr inbounds i8** %desc, i64 %indvars.iv21.i, !dbg !945
  %218 = load i8** %217, align 8, !dbg !945, !tbaa !504
  %219 = tail call i8* @check_html(i8* %218, i8* %pr.0) #8, !dbg !945
  %220 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str66, i64 0, i64 0), i8* %219) #8, !dbg !947
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1, !dbg !942
  %lftr.wideiv30 = trunc i64 %indvars.iv21.i to i32, !dbg !942
  %exitcond31 = icmp eq i32 %lftr.wideiv30, %215, !dbg !942
  br i1 %exitcond31, label %.loopexit.i12, label %216, !dbg !942

.loopexit.i12:                                    ; preds = %216, %200
  %221 = icmp sgt i32 %nfile, 0, !dbg !948
  br i1 %221, label %.lr.ph8.i13, label %247, !dbg !950

.lr.ph8.i13:                                      ; preds = %.loopexit.i12
  %222 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str149, i64 0, i64 0), i64 4, i64 1, %struct.__sFILE* %out) #7, !dbg !951
  %223 = tail call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str150, i64 0, i64 0), i64 15, i64 1, %struct.__sFILE* %out) #7, !dbg !953
  %224 = tail call i64 @fwrite(i8* getelementptr inbounds ([121 x i8]* @.str151, i64 0, i64 0), i64 120, i64 1, %struct.__sFILE* %out) #7, !dbg !954
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !305, metadata !384) #7, !dbg !941
  %225 = add i32 %nfile, -1, !dbg !955
  br label %226, !dbg !955

; <label>:226                                     ; preds = %234, %.lr.ph8.i13
  %indvars.iv17.i = phi i64 [ 0, %.lr.ph8.i13 ], [ %indvars.iv.next18.i, %234 ], !dbg !944
  %227 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv17.i, i32 0, !dbg !957
  %228 = load i32* %227, align 4, !dbg !957, !tbaa !707
  %229 = call i8* @ftp2ext(i32 %228) #8, !dbg !957
  %230 = call i8* @__strcpy_chk(i8* %201, i8* %229, i64 10) #8, !dbg !957
  %231 = call i32 @strcmp(i8* %201, i8* getelementptr inbounds ([4 x i8]* @.str152, i64 0, i64 0)) #8, !dbg !960
  %232 = icmp eq i32 %231, 0, !dbg !962
  br i1 %232, label %233, label %234, !dbg !963

; <label>:233                                     ; preds = %226
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %201, i8* getelementptr inbounds ([6 x i8]* @.str153, i64 0, i64 0), i64 6, i32 1, i1 false) #7, !dbg !964
  br label %234, !dbg !964

; <label>:234                                     ; preds = %233, %226
  %235 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv17.i, i32 1, !dbg !965
  %236 = load i8** %235, align 8, !dbg !965, !tbaa !689
  %237 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv17.i, i32 2, !dbg !966
  %238 = load i8** %237, align 8, !dbg !966, !tbaa !696
  %239 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv17.i, i32 3, !dbg !967
  %240 = load i64* %239, align 8, !dbg !967, !tbaa !701
  %241 = call i8* @fileopt(i64 %240) #8, !dbg !968
  %242 = load i32* %227, align 4, !dbg !969, !tbaa !707
  %243 = call i8* @ftp2desc(i32 %242) #8, !dbg !969
  %244 = call i8* @check_html(i8* %243, i8* %pr.0) #8, !dbg !969
  %245 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([136 x i8]* @.str154, i64 0, i64 0), i8* %236, i8* %201, i8* %238, i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* %244) #8, !dbg !970
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1, !dbg !955
  %lftr.wideiv28 = trunc i64 %indvars.iv17.i to i32, !dbg !955
  %exitcond29 = icmp eq i32 %lftr.wideiv28, %225, !dbg !955
  br i1 %exitcond29, label %._crit_edge9.i14, label %226, !dbg !955

._crit_edge9.i14:                                 ; preds = %234
  %246 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str155, i64 0, i64 0), i64 9, i64 1, %struct.__sFILE* %out) #7, !dbg !971
  br label %247, !dbg !972

; <label>:247                                     ; preds = %._crit_edge9.i14, %.loopexit.i12
  %248 = icmp sgt i32 %npar.2, 0, !dbg !973
  br i1 %248, label %.lr.ph4.i15, label %271, !dbg !975

.lr.ph4.i15:                                      ; preds = %247
  %249 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str149, i64 0, i64 0), i64 4, i64 1, %struct.__sFILE* %out) #7, !dbg !976
  %250 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str156, i64 0, i64 0), i64 23, i64 1, %struct.__sFILE* %out) #7, !dbg !978
  %251 = call i64 @fwrite(i8* getelementptr inbounds ([120 x i8]* @.str157, i64 0, i64 0), i64 119, i64 1, %struct.__sFILE* %out) #7, !dbg !979
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !305, metadata !384) #7, !dbg !941
  %252 = add i32 %npar.2, -1, !dbg !980
  br label %253, !dbg !980

; <label>:253                                     ; preds = %253, %.lr.ph4.i15
  %indvars.iv13.i = phi i64 [ 0, %.lr.ph4.i15 ], [ %indvars.iv.next14.i, %253 ], !dbg !944
  %254 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv13.i, !dbg !982
  %255 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv13.i, i32 2, !dbg !984
  %256 = load i32* %255, align 4, !dbg !984, !tbaa !741
  %257 = icmp eq i32 %256, 4, !dbg !985
  %258 = select i1 %257, i8* getelementptr inbounds ([6 x i8]* @.str159, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str160, i64 0, i64 0), !dbg !986
  %259 = getelementptr inbounds %struct.t_pargs* %254, i64 0, i32 0, !dbg !987
  %260 = load i8** %259, align 8, !dbg !987, !tbaa !735
  %261 = getelementptr inbounds i8* %260, i64 1, !dbg !988
  %262 = sext i32 %256 to i64, !dbg !989
  %263 = getelementptr inbounds [7 x i8*]* @argtp, i64 0, i64 %262, !dbg !989
  %264 = load i8** %263, align 8, !dbg !989, !tbaa !504
  %265 = call i8* @pa_val(%struct.t_pargs* %254) #8, !dbg !990
  %266 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv13.i, i32 4, !dbg !991
  %267 = load i8** %266, align 8, !dbg !991, !tbaa !748
  %268 = call i8* @check_html(i8* %267, i8* %pr.0) #8, !dbg !991
  %269 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([126 x i8]* @.str158, i64 0, i64 0), i8* %258, i8* %261, i8* %264, i8* %265, i8* %268) #8, !dbg !992
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1, !dbg !980
  %lftr.wideiv26 = trunc i64 %indvars.iv13.i to i32, !dbg !980
  %exitcond27 = icmp eq i32 %lftr.wideiv26, %252, !dbg !980
  br i1 %exitcond27, label %._crit_edge5.i16, label %253, !dbg !980

._crit_edge5.i16:                                 ; preds = %253
  %270 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str155, i64 0, i64 0), i64 9, i64 1, %struct.__sFILE* %out) #7, !dbg !993
  br label %271, !dbg !994

; <label>:271                                     ; preds = %._crit_edge5.i16, %247
  %272 = icmp sgt i32 %nbug, 0, !dbg !995
  br i1 %272, label %.lr.ph.i17, label %write_htmlman.exit, !dbg !997

.lr.ph.i17:                                       ; preds = %271
  %273 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str149, i64 0, i64 0), i64 4, i64 1, %struct.__sFILE* %out) #7, !dbg !998
  %274 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8]* @.str161, i64 0, i64 0), i64 5, i64 1, %struct.__sFILE* %out) #7, !dbg !1000
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !305, metadata !384) #7, !dbg !941
  %275 = add i32 %nbug, -1, !dbg !1001
  br label %276, !dbg !1001

; <label>:276                                     ; preds = %276, %.lr.ph.i17
  %indvars.iv.i18 = phi i64 [ 0, %.lr.ph.i17 ], [ %indvars.iv.next.i19, %276 ], !dbg !944
  %277 = getelementptr inbounds i8** %bugs, i64 %indvars.iv.i18, !dbg !1003
  %278 = load i8** %277, align 8, !dbg !1003, !tbaa !504
  %279 = call i8* @check_html(i8* %278, i8* %pr.0) #8, !dbg !1003
  %280 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([8 x i8]* @.str162, i64 0, i64 0), i8* %279) #8, !dbg !1005
  %indvars.iv.next.i19 = add nuw nsw i64 %indvars.iv.i18, 1, !dbg !1001
  %lftr.wideiv = trunc i64 %indvars.iv.i18 to i32, !dbg !1001
  %exitcond = icmp eq i32 %lftr.wideiv, %275, !dbg !1001
  br i1 %exitcond, label %._crit_edge.i22, label %276, !dbg !1001

._crit_edge.i22:                                  ; preds = %276
  %281 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8]* @.str163, i64 0, i64 0), i64 6, i64 1, %struct.__sFILE* %out) #7, !dbg !1006
  br label %write_htmlman.exit, !dbg !1007

write_htmlman.exit:                               ; preds = %271, %._crit_edge.i22
  %282 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str149, i64 0, i64 0), i64 4, i64 1, %struct.__sFILE* %out) #7, !dbg !1008
  %283 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str164, i64 0, i64 0), i64 23, i64 1, %struct.__sFILE* %out) #7, !dbg !1009
  %284 = call i64 @fwrite(i8* getelementptr inbounds ([88 x i8]* @.str165, i64 0, i64 0), i64 87, i64 1, %struct.__sFILE* %out) #7, !dbg !1010
  %285 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str166, i64 0, i64 0), i64 7, i64 1, %struct.__sFILE* %out) #7, !dbg !1011
  %286 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str167, i64 0, i64 0), i64 8, i64 1, %struct.__sFILE* %out) #7, !dbg !1012
  call void @llvm.lifetime.end(i64 10, i8* %201), !dbg !1013
  br label %287, !dbg !944

; <label>:287                                     ; preds = %write_htmlman.exit, %197
  %288 = call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([15 x i8]* @.str73, i64 0, i64 0)) #8, !dbg !1014
  %289 = icmp eq i32 %288, 0, !dbg !1016
  br i1 %289, label %290, label %294, !dbg !1017

; <label>:290                                     ; preds = %287
  call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !314, metadata !384) #7, !dbg !1018
  call void @llvm.dbg.value(metadata i32 %nfile, i64 0, metadata !315, metadata !384) #7, !dbg !1020
  call void @llvm.dbg.value(metadata %struct.t_filenm* %fnm, i64 0, metadata !316, metadata !384) #7, !dbg !1021
  call void @llvm.dbg.value(metadata i32 %npar.2, i64 0, metadata !317, metadata !384) #7, !dbg !1022
  call void @llvm.dbg.value(metadata %struct.t_pargs* %par.0, i64 0, metadata !318, metadata !384) #7, !dbg !1023
  %291 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str168, i64 0, i64 0), i64 8, i64 1, %struct.__sFILE* %out) #7, !dbg !1024
  call fastcc void @pr_opts(%struct.__sFILE* %out, i32 %nfile, %struct.t_filenm* %fnm, i32 %npar.2, %struct.t_pargs* %par.0, i32 2) #8, !dbg !1025
  call void @pr_enums(%struct.__sFILE* %out, i32 %npar.2, %struct.t_pargs* %par.0, i32 2) #8, !dbg !1026
  call void @pr_fopts(%struct.__sFILE* %out, i32 %nfile, %struct.t_filenm* %fnm, i32 2) #8, !dbg !1027
  %292 = call i8* @ShortProgram() #8, !dbg !1028
  %293 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([7 x i8]* @.str169, i64 0, i64 0), i8* %292) #8, !dbg !1029
  br label %294, !dbg !1030

; <label>:294                                     ; preds = %290, %287
  %295 = call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([16 x i8]* @.str74, i64 0, i64 0)) #8, !dbg !1031
  %296 = icmp eq i32 %295, 0, !dbg !1033
  br i1 %296, label %297, label %306, !dbg !1034

; <label>:297                                     ; preds = %294
  call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !332, metadata !384) #7, !dbg !1035
  call void @llvm.dbg.value(metadata i32 %nfile, i64 0, metadata !333, metadata !384) #7, !dbg !1037
  call void @llvm.dbg.value(metadata %struct.t_filenm* %fnm, i64 0, metadata !334, metadata !384) #7, !dbg !1038
  call void @llvm.dbg.value(metadata i32 %npar.2, i64 0, metadata !335, metadata !384) #7, !dbg !1039
  call void @llvm.dbg.value(metadata %struct.t_pargs* %par.0, i64 0, metadata !336, metadata !384) #7, !dbg !1040
  %298 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8]* @.str180, i64 0, i64 0), i64 17, i64 1, %struct.__sFILE* %out) #7, !dbg !1041
  %299 = call i8* @ShortProgram() #8, !dbg !1042
  %300 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([25 x i8]* @.str181, i64 0, i64 0), i8* %299) #8, !dbg !1043
  %301 = call i64 @fwrite(i8* getelementptr inbounds ([72 x i8]* @.str182, i64 0, i64 0), i64 71, i64 1, %struct.__sFILE* %out) #7, !dbg !1044
  call fastcc void @pr_opts(%struct.__sFILE* %out, i32 %nfile, %struct.t_filenm* %fnm, i32 %npar.2, %struct.t_pargs* %par.0, i32 1) #8, !dbg !1045
  %302 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str183, i64 0, i64 0), i64 13, i64 1, %struct.__sFILE* %out) #7, !dbg !1046
  call void @pr_enums(%struct.__sFILE* %out, i32 %npar.2, %struct.t_pargs* %par.0, i32 1) #8, !dbg !1047
  call void @pr_fopts(%struct.__sFILE* %out, i32 %nfile, %struct.t_filenm* %fnm, i32 1) #8, !dbg !1048
  %303 = call i8* @ShortProgram() #8, !dbg !1049
  %304 = call i8* @ShortProgram() #8, !dbg !1050
  %305 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([36 x i8]* @.str184, i64 0, i64 0), i8* %303, i8* %304) #8, !dbg !1051
  br label %306, !dbg !1052

; <label>:306                                     ; preds = %297, %294
  %307 = call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([15 x i8]* @.str75, i64 0, i64 0)) #8, !dbg !1053
  %308 = icmp eq i32 %307, 0, !dbg !1055
  br i1 %308, label %309, label %312, !dbg !1056

; <label>:309                                     ; preds = %306
  call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !339, metadata !384) #7, !dbg !1057
  call void @llvm.dbg.value(metadata i32 %nfile, i64 0, metadata !340, metadata !384) #7, !dbg !1059
  call void @llvm.dbg.value(metadata %struct.t_filenm* %fnm, i64 0, metadata !341, metadata !384) #7, !dbg !1060
  call void @llvm.dbg.value(metadata i32 %npar.2, i64 0, metadata !342, metadata !384) #7, !dbg !1061
  call void @llvm.dbg.value(metadata %struct.t_pargs* %par.0, i64 0, metadata !343, metadata !384) #7, !dbg !1062
  %310 = call i8* @ShortProgram() #8, !dbg !1063
  %311 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([12 x i8]* @.str185, i64 0, i64 0), i8* %310) #8, !dbg !1064
  call void @pr_enums(%struct.__sFILE* %out, i32 %npar.2, %struct.t_pargs* %par.0, i32 0) #8, !dbg !1065
  call void @pr_fopts(%struct.__sFILE* %out, i32 %nfile, %struct.t_filenm* %fnm, i32 0) #8, !dbg !1066
  call fastcc void @pr_opts(%struct.__sFILE* %out, i32 %nfile, %struct.t_filenm* %fnm, i32 %npar.2, %struct.t_pargs* %par.0, i32 0) #8, !dbg !1067
  %fputc.i23 = call i32 @fputc(i32 10, %struct.__sFILE* %out) #7, !dbg !1068
  br label %312, !dbg !1069

; <label>:312                                     ; preds = %309, %306
  br i1 %1, label %315, label %313, !dbg !1070

; <label>:313                                     ; preds = %312
  %314 = bitcast %struct.t_pargs* %par.0 to i8*, !dbg !1071
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str63, i64 0, i64 0), i32 664, i8* %314) #8, !dbg !1071
  br label %315, !dbg !1071

; <label>:315                                     ; preds = %313, %312
  ret void, !dbg !1073
}

; Function Attrs: optsize
declare i32 @is_hidden(%struct.t_pargs*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind optsize readonly
declare i8* @strrchr(i8*, i32) #6

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #6

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @write_ttyman(%struct.__sFILE* %out, i8* %program, i32 %nldesc, i8** nocapture readonly %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npargs, %struct.t_pargs* %pa, i32 %nbug, i8** nocapture readonly %bugs, i32 %bHeader) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !280, metadata !384), !dbg !1074
  tail call void @llvm.dbg.value(metadata i8* %program, i64 0, metadata !281, metadata !384), !dbg !1075
  tail call void @llvm.dbg.value(metadata i32 %nldesc, i64 0, metadata !282, metadata !384), !dbg !1076
  tail call void @llvm.dbg.value(metadata i8** %desc, i64 0, metadata !283, metadata !384), !dbg !1077
  tail call void @llvm.dbg.value(metadata i32 %nfile, i64 0, metadata !284, metadata !384), !dbg !1078
  tail call void @llvm.dbg.value(metadata %struct.t_filenm* %fnm, i64 0, metadata !285, metadata !384), !dbg !1079
  tail call void @llvm.dbg.value(metadata i32 %npargs, i64 0, metadata !286, metadata !384), !dbg !1080
  tail call void @llvm.dbg.value(metadata %struct.t_pargs* %pa, i64 0, metadata !287, metadata !384), !dbg !1081
  tail call void @llvm.dbg.value(metadata i32 %nbug, i64 0, metadata !288, metadata !384), !dbg !1082
  tail call void @llvm.dbg.value(metadata i8** %bugs, i64 0, metadata !289, metadata !384), !dbg !1083
  tail call void @llvm.dbg.value(metadata i32 %bHeader, i64 0, metadata !290, metadata !384), !dbg !1084
  %1 = icmp eq i32 %bHeader, 0, !dbg !1085
  br i1 %1, label %7, label %2, !dbg !1087

; <label>:2                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i8* %program, i64 0, metadata !115, metadata !384) #7, !dbg !1088
  %3 = tail call fastcc i8* @repall(i8* %program, i32 8, %struct.t_sandr* getelementptr inbounds ([8 x %struct.t_sandr]* @sandrTty, i64 0, i64 0)) #8, !dbg !1091
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([5 x i8]* @.str133, i64 0, i64 0), i8* %3) #8, !dbg !1092
  %5 = tail call i8* @GromacsVersion() #8, !dbg !1093
  tail call fastcc void @mydate() #9, !dbg !1094
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([7 x i8]* @.str134, i64 0, i64 0), i8* %5, i8* getelementptr inbounds ([128 x i8]* @mydate.tbuf, i64 0, i64 0)) #8, !dbg !1095
  br label %7, !dbg !1096

; <label>:7                                       ; preds = %0, %2
  %8 = icmp sgt i32 %nldesc, 0, !dbg !1097
  br i1 %8, label %9, label %11, !dbg !1099

; <label>:9                                       ; preds = %7
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str135, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %out), !dbg !1100
  tail call void @print_tty_formatted(%struct.__sFILE* %out, i32 %nldesc, i8** %desc) #9, !dbg !1102
  br label %11, !dbg !1103

; <label>:11                                      ; preds = %9, %7
  %12 = icmp sgt i32 %nbug, 0, !dbg !1104
  br i1 %12, label %.lr.ph, label %.loopexit, !dbg !1106

.lr.ph:                                           ; preds = %11
  %fputc3 = tail call i32 @fputc(i32 10, %struct.__sFILE* %out), !dbg !1107
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !291, metadata !384), !dbg !1109
  %13 = add i32 %nbug, -1, !dbg !1110
  br label %14, !dbg !1110

; <label>:14                                      ; preds = %14, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %14 ]
  %15 = getelementptr inbounds i8** %bugs, i64 %indvars.iv, !dbg !1112
  %16 = load i8** %15, align 8, !dbg !1112, !tbaa !504
  %17 = tail call i64 @strlen(i8* %16) #8, !dbg !1112
  %18 = add i64 %17, 3, !dbg !1112
  %19 = trunc i64 %18 to i32, !dbg !1112
  %20 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str136, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str63, i64 0, i64 0), i32 407, i32 %19, i32 1) #8, !dbg !1112
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !292, metadata !384), !dbg !1115
  %21 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %20, i1 false), !dbg !1116
  %22 = tail call i8* @__memcpy_chk(i8* %20, i8* getelementptr inbounds ([3 x i8]* @.str137, i64 0, i64 0), i64 3, i64 %21), !dbg !1116
  %23 = getelementptr inbounds i8* %20, i64 2, !dbg !1117
  %24 = load i8** %15, align 8, !dbg !1117, !tbaa !504
  %25 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %23, i1 false), !dbg !1117
  %26 = tail call i8* @__strcpy_chk(i8* %23, i8* %24, i64 %25) #8, !dbg !1117
  %27 = tail call i8* @wrap_lines(i8* %20, i32 80, i32 2) #8, !dbg !1118
  %28 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str66, i64 0, i64 0), i8* %27) #8, !dbg !1119
  tail call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str136, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str63, i64 0, i64 0), i32 411, i8* %20) #8, !dbg !1120
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1110
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !1110
  %exitcond = icmp eq i32 %lftr.wideiv, %13, !dbg !1110
  br i1 %exitcond, label %.loopexit, label %14, !dbg !1110

.loopexit:                                        ; preds = %14, %11
  %29 = icmp sgt i32 %nfile, 0, !dbg !1121
  br i1 %29, label %30, label %31, !dbg !1123

; <label>:30                                      ; preds = %.loopexit
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %out), !dbg !1124
  tail call void @pr_fns(%struct.__sFILE* %out, i32 %nfile, %struct.t_filenm* %fnm) #8, !dbg !1126
  br label %31, !dbg !1127

; <label>:31                                      ; preds = %30, %.loopexit
  %32 = icmp sgt i32 %npargs, 0, !dbg !1128
  br i1 %32, label %33, label %34, !dbg !1130

; <label>:33                                      ; preds = %31
  tail call void @print_pargs(%struct.__sFILE* %out, i32 %npargs, %struct.t_pargs* %pa) #8, !dbg !1131
  br label %34, !dbg !1133

; <label>:34                                      ; preds = %33, %31
  ret void, !dbg !1134
}

; Function Attrs: optsize
declare i8* @replace(i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: optsize
declare i32 @get_file(i8*, i8***) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcasecmp(i8* nocapture, i8* nocapture) #6

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #2

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: optsize
declare i8* @replaceww(i8*, i8*, i8*) #2

; Function Attrs: optsize
declare i8* @ftp2desc(i32) #2

; Function Attrs: optsize
declare i8* @pa_val(%struct.t_pargs*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @mydate() #4 {
  %now = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i64* %now, i64 0, metadata !255, metadata !384), !dbg !1135
  %1 = call i64 @time(i64* %now) #8, !dbg !1136
  call void @llvm.dbg.value(metadata i64* %now, i64 0, metadata !255, metadata !384), !dbg !1135
  %2 = call %struct.tm* @localtime(i64* %now) #8, !dbg !1137
  call void @llvm.dbg.value(metadata %struct.tm* %2, i64 0, metadata !260, metadata !384), !dbg !1138
  %3 = getelementptr inbounds %struct.tm* %2, i64 0, i32 6, !dbg !1139
  %4 = load i32* %3, align 4, !dbg !1139, !tbaa !1140
  %5 = sext i32 %4 to i64, !dbg !1139
  %6 = getelementptr inbounds [7 x i8*]* @mydate.day, i64 0, i64 %5, !dbg !1139
  %7 = load i8** %6, align 8, !dbg !1139, !tbaa !504
  %8 = getelementptr inbounds %struct.tm* %2, i64 0, i32 3, !dbg !1139
  %9 = load i32* %8, align 4, !dbg !1139, !tbaa !1142
  %10 = getelementptr inbounds %struct.tm* %2, i64 0, i32 4, !dbg !1139
  %11 = load i32* %10, align 4, !dbg !1139, !tbaa !1143
  %12 = sext i32 %11 to i64, !dbg !1139
  %13 = getelementptr inbounds [12 x i8*]* @mydate.mon, i64 0, i64 %12, !dbg !1139
  %14 = load i8** %13, align 8, !dbg !1139, !tbaa !504
  %15 = getelementptr inbounds %struct.tm* %2, i64 0, i32 5, !dbg !1139
  %16 = load i32* %15, align 4, !dbg !1139, !tbaa !1144
  %17 = add nsw i32 %16, 1900, !dbg !1139
  %18 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([128 x i8]* @mydate.tbuf, i64 0, i64 0), i32 0, i64 128, i8* getelementptr inbounds ([12 x i8]* @.str132, i64 0, i64 0), i8* %7, i32 %9, i8* %14, i32 %17) #8, !dbg !1139
  ret void
}

; Function Attrs: optsize
declare i8* @GromacsVersion() #2

; Function Attrs: optsize
declare i64 @time(i64*) #2

; Function Attrs: optsize
declare %struct.tm* @localtime(i64*) #2

; Function Attrs: optsize
declare void @pr_fns(%struct.__sFILE*, i32, %struct.t_filenm*) #2

; Function Attrs: optsize
declare void @print_pargs(%struct.__sFILE*, i32, %struct.t_pargs*) #2

; Function Attrs: optsize
declare i8* @ftp2ext(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @pr_opts(%struct.__sFILE* nocapture %fp, i32 %nfile, %struct.t_filenm* nocapture readonly %fnm, i32 %npargs, %struct.t_pargs* nocapture readonly %pa, i32 %shell) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !323, metadata !384), !dbg !1145
  tail call void @llvm.dbg.value(metadata i32 %nfile, i64 0, metadata !324, metadata !384), !dbg !1146
  tail call void @llvm.dbg.value(metadata %struct.t_filenm* %fnm, i64 0, metadata !325, metadata !384), !dbg !1147
  tail call void @llvm.dbg.value(metadata i32 %npargs, i64 0, metadata !326, metadata !384), !dbg !1148
  tail call void @llvm.dbg.value(metadata %struct.t_pargs* %pa, i64 0, metadata !327, metadata !384), !dbg !1149
  tail call void @llvm.dbg.value(metadata i32 %shell, i64 0, metadata !328, metadata !384), !dbg !1150
  switch i32 %shell, label %103 [
    i32 0, label %1
    i32 1, label %35
    i32 2, label %69
  ], !dbg !1151

; <label>:1                                       ; preds = %0
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str170, i64 0, i64 0), i64 7, i64 1, %struct.__sFILE* %fp), !dbg !1152
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !329, metadata !384), !dbg !1154
  %3 = icmp sgt i32 %nfile, 0, !dbg !1155
  br i1 %3, label %.lr.ph6, label %.preheader, !dbg !1158

.lr.ph6:                                          ; preds = %1
  %4 = add i32 %nfile, -1, !dbg !1158
  br label %7, !dbg !1158

.preheader:                                       ; preds = %7, %1
  %5 = icmp sgt i32 %npargs, 0, !dbg !1159
  br i1 %5, label %.lr.ph, label %._crit_edge, !dbg !1162

.lr.ph:                                           ; preds = %.preheader
  %6 = add i32 %npargs, -1, !dbg !1162
  br label %12, !dbg !1162

; <label>:7                                       ; preds = %7, %.lr.ph6
  %indvars.iv19 = phi i64 [ 0, %.lr.ph6 ], [ %indvars.iv.next20, %7 ]
  %8 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv19, i32 1, !dbg !1163
  %9 = load i8** %8, align 8, !dbg !1163, !tbaa !689
  %10 = getelementptr inbounds i8* %9, i64 1, !dbg !1164
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str171, i64 0, i64 0), i8* %10) #8, !dbg !1165
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1, !dbg !1158
  %lftr.wideiv21 = trunc i64 %indvars.iv19 to i32, !dbg !1158
  %exitcond22 = icmp eq i32 %lftr.wideiv21, %4, !dbg !1158
  br i1 %exitcond22, label %.preheader, label %7, !dbg !1158

; <label>:12                                      ; preds = %33, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %33 ]
  %13 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, !dbg !1166
  %14 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 2, !dbg !1168
  %15 = load i32* %14, align 4, !dbg !1168, !tbaa !741
  %16 = icmp eq i32 %15, 4, !dbg !1169
  br i1 %16, label %17, label %28, !dbg !1170

; <label>:17                                      ; preds = %12
  %18 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 3, !dbg !1171
  %19 = bitcast %union.anon* %18 to i32**, !dbg !1172
  %20 = load i32** %19, align 8, !dbg !1172, !tbaa !504
  %21 = load i32* %20, align 4, !dbg !1173, !tbaa !546
  %22 = icmp eq i32 %21, 0, !dbg !1173
  br i1 %22, label %28, label %23, !dbg !1174

; <label>:23                                      ; preds = %17
  %24 = getelementptr inbounds %struct.t_pargs* %13, i64 0, i32 0, !dbg !1175
  %25 = load i8** %24, align 8, !dbg !1175, !tbaa !735
  %26 = getelementptr inbounds i8* %25, i64 1, !dbg !1176
  %27 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str172, i64 0, i64 0), i8* %26) #8, !dbg !1177
  br label %33, !dbg !1177

; <label>:28                                      ; preds = %17, %12
  %29 = getelementptr inbounds %struct.t_pargs* %13, i64 0, i32 0, !dbg !1178
  %30 = load i8** %29, align 8, !dbg !1178, !tbaa !735
  %31 = getelementptr inbounds i8* %30, i64 1, !dbg !1179
  %32 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str171, i64 0, i64 0), i8* %31) #8, !dbg !1180
  br label %33

; <label>:33                                      ; preds = %23, %28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1162
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !1162
  %exitcond = icmp eq i32 %lftr.wideiv, %6, !dbg !1162
  br i1 %exitcond, label %._crit_edge, label %12, !dbg !1162

._crit_edge:                                      ; preds = %33, %.preheader
  %34 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str173, i64 0, i64 0), i64 3, i64 1, %struct.__sFILE* %fp), !dbg !1181
  br label %103, !dbg !1182

; <label>:35                                      ; preds = %0
  %36 = tail call i64 @fwrite(i8* getelementptr inbounds ([78 x i8]* @.str174, i64 0, i64 0), i64 77, i64 1, %struct.__sFILE* %fp), !dbg !1183
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !329, metadata !384), !dbg !1154
  %37 = icmp sgt i32 %nfile, 0, !dbg !1184
  br i1 %37, label %.lr.ph12, label %.preheader1, !dbg !1187

.lr.ph12:                                         ; preds = %35
  %38 = add i32 %nfile, -1, !dbg !1187
  br label %41, !dbg !1187

.preheader1:                                      ; preds = %41, %35
  %39 = icmp sgt i32 %npargs, 0, !dbg !1188
  br i1 %39, label %.lr.ph8, label %._crit_edge9, !dbg !1191

.lr.ph8:                                          ; preds = %.preheader1
  %40 = add i32 %npargs, -1, !dbg !1191
  br label %46, !dbg !1191

; <label>:41                                      ; preds = %41, %.lr.ph12
  %indvars.iv27 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next28, %41 ]
  %42 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv27, i32 1, !dbg !1192
  %43 = load i8** %42, align 8, !dbg !1192, !tbaa !689
  %44 = getelementptr inbounds i8* %43, i64 1, !dbg !1193
  %45 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str175, i64 0, i64 0), i8* %44) #8, !dbg !1194
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1, !dbg !1187
  %lftr.wideiv29 = trunc i64 %indvars.iv27 to i32, !dbg !1187
  %exitcond30 = icmp eq i32 %lftr.wideiv29, %38, !dbg !1187
  br i1 %exitcond30, label %.preheader1, label %41, !dbg !1187

; <label>:46                                      ; preds = %67, %.lr.ph8
  %indvars.iv23 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next24, %67 ]
  %47 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv23, !dbg !1195
  %48 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv23, i32 2, !dbg !1197
  %49 = load i32* %48, align 4, !dbg !1197, !tbaa !741
  %50 = icmp eq i32 %49, 4, !dbg !1198
  br i1 %50, label %51, label %62, !dbg !1199

; <label>:51                                      ; preds = %46
  %52 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv23, i32 3, !dbg !1200
  %53 = bitcast %union.anon* %52 to i32**, !dbg !1201
  %54 = load i32** %53, align 8, !dbg !1201, !tbaa !504
  %55 = load i32* %54, align 4, !dbg !1202, !tbaa !546
  %56 = icmp eq i32 %55, 0, !dbg !1202
  br i1 %56, label %62, label %57, !dbg !1203

; <label>:57                                      ; preds = %51
  %58 = getelementptr inbounds %struct.t_pargs* %47, i64 0, i32 0, !dbg !1204
  %59 = load i8** %58, align 8, !dbg !1204, !tbaa !735
  %60 = getelementptr inbounds i8* %59, i64 1, !dbg !1205
  %61 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str176, i64 0, i64 0), i8* %60) #8, !dbg !1206
  br label %67, !dbg !1206

; <label>:62                                      ; preds = %51, %46
  %63 = getelementptr inbounds %struct.t_pargs* %47, i64 0, i32 0, !dbg !1207
  %64 = load i8** %63, align 8, !dbg !1207, !tbaa !735
  %65 = getelementptr inbounds i8* %64, i64 1, !dbg !1208
  %66 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str175, i64 0, i64 0), i8* %65) #8, !dbg !1209
  br label %67

; <label>:67                                      ; preds = %57, %62
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1, !dbg !1191
  %lftr.wideiv25 = trunc i64 %indvars.iv23 to i32, !dbg !1191
  %exitcond26 = icmp eq i32 %lftr.wideiv25, %40, !dbg !1191
  br i1 %exitcond26, label %._crit_edge9, label %46, !dbg !1191

._crit_edge9:                                     ; preds = %67, %.preheader1
  %68 = tail call i64 @fwrite(i8* getelementptr inbounds ([25 x i8]* @.str177, i64 0, i64 0), i64 24, i64 1, %struct.__sFILE* %fp), !dbg !1210
  br label %103, !dbg !1211

; <label>:69                                      ; preds = %0
  %70 = tail call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str178, i64 0, i64 0), i64 15, i64 1, %struct.__sFILE* %fp), !dbg !1212
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !329, metadata !384), !dbg !1154
  %71 = icmp sgt i32 %nfile, 0, !dbg !1213
  br i1 %71, label %.lr.ph18, label %.preheader2, !dbg !1216

.lr.ph18:                                         ; preds = %69
  %72 = add i32 %nfile, -1, !dbg !1216
  br label %75, !dbg !1216

.preheader2:                                      ; preds = %75, %69
  %73 = icmp sgt i32 %npargs, 0, !dbg !1217
  br i1 %73, label %.lr.ph14, label %._crit_edge15, !dbg !1220

.lr.ph14:                                         ; preds = %.preheader2
  %74 = add i32 %npargs, -1, !dbg !1220
  br label %80, !dbg !1220

; <label>:75                                      ; preds = %75, %.lr.ph18
  %indvars.iv35 = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next36, %75 ]
  %76 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv35, i32 1, !dbg !1221
  %77 = load i8** %76, align 8, !dbg !1221, !tbaa !689
  %78 = getelementptr inbounds i8* %77, i64 1, !dbg !1222
  %79 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str171, i64 0, i64 0), i8* %78) #8, !dbg !1223
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1, !dbg !1216
  %lftr.wideiv37 = trunc i64 %indvars.iv35 to i32, !dbg !1216
  %exitcond38 = icmp eq i32 %lftr.wideiv37, %72, !dbg !1216
  br i1 %exitcond38, label %.preheader2, label %75, !dbg !1216

; <label>:80                                      ; preds = %101, %.lr.ph14
  %indvars.iv31 = phi i64 [ 0, %.lr.ph14 ], [ %indvars.iv.next32, %101 ]
  %81 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv31, !dbg !1224
  %82 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv31, i32 2, !dbg !1226
  %83 = load i32* %82, align 4, !dbg !1226, !tbaa !741
  %84 = icmp eq i32 %83, 4, !dbg !1227
  br i1 %84, label %85, label %96, !dbg !1228

; <label>:85                                      ; preds = %80
  %86 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv31, i32 3, !dbg !1229
  %87 = bitcast %union.anon* %86 to i32**, !dbg !1230
  %88 = load i32** %87, align 8, !dbg !1230, !tbaa !504
  %89 = load i32* %88, align 4, !dbg !1231, !tbaa !546
  %90 = icmp eq i32 %89, 0, !dbg !1231
  br i1 %90, label %96, label %91, !dbg !1232

; <label>:91                                      ; preds = %85
  %92 = getelementptr inbounds %struct.t_pargs* %81, i64 0, i32 0, !dbg !1233
  %93 = load i8** %92, align 8, !dbg !1233, !tbaa !735
  %94 = getelementptr inbounds i8* %93, i64 1, !dbg !1234
  %95 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str172, i64 0, i64 0), i8* %94) #8, !dbg !1235
  br label %101, !dbg !1235

; <label>:96                                      ; preds = %85, %80
  %97 = getelementptr inbounds %struct.t_pargs* %81, i64 0, i32 0, !dbg !1236
  %98 = load i8** %97, align 8, !dbg !1236, !tbaa !735
  %99 = getelementptr inbounds i8* %98, i64 1, !dbg !1237
  %100 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str171, i64 0, i64 0), i8* %99) #8, !dbg !1238
  br label %101

; <label>:101                                     ; preds = %91, %96
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1, !dbg !1220
  %lftr.wideiv33 = trunc i64 %indvars.iv31 to i32, !dbg !1220
  %exitcond34 = icmp eq i32 %lftr.wideiv33, %74, !dbg !1220
  br i1 %exitcond34, label %._crit_edge15, label %80, !dbg !1220

._crit_edge15:                                    ; preds = %101, %.preheader2
  %102 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str179, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %fp), !dbg !1239
  br label %103, !dbg !1240

; <label>:103                                     ; preds = %0, %._crit_edge15, %._crit_edge9, %._crit_edge
  ret void, !dbg !1241
}

; Function Attrs: optsize
declare void @pr_enums(%struct.__sFILE*, i32, %struct.t_pargs*, i32) #2

; Function Attrs: optsize
declare void @pr_fopts(%struct.__sFILE*, i32, %struct.t_filenm*, i32) #2

; Function Attrs: optsize
declare i8* @ShortProgram() #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #7

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #7

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #7

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!380, !381, !382}
!llvm.ident = !{!383}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !21, subprograms: !24, globals: !344, imports: !379)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/wman.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3, !14}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 83, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/readinp.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13}
!6 = !DIEnumerator(name: "etINT", value: 0)
!7 = !DIEnumerator(name: "etREAL", value: 1)
!8 = !DIEnumerator(name: "etTIME", value: 2)
!9 = !DIEnumerator(name: "etSTR", value: 3)
!10 = !DIEnumerator(name: "etBOOL", value: 4)
!11 = !DIEnumerator(name: "etRVEC", value: 5)
!12 = !DIEnumerator(name: "etENUM", value: 6)
!13 = !DIEnumerator(name: "etNR", value: 7)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 121, size: 32, align: 32, elements: !16)
!15 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/enums.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!16 = !{!17, !18, !19, !20}
!17 = !DIEnumerator(name: "eshellCSH", value: 0)
!18 = !DIEnumerator(name: "eshellBASH", value: 1)
!19 = !DIEnumerator(name: "eshellZSH", value: 2)
!20 = !DIEnumerator(name: "eshellNR", value: 3)
!21 = !{!22, !23}
!22 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!24 = !{!25, !93, !99, !104, !107, !113, !116, !128, !135, !189, !205, !215, !223, !238, !251, !276, !293, !310, !319, !330, !337}
!25 = !DISubprogram(name: "__sputc", scope: !26, file: !26, line: 348, type: !27, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !90)
!26 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!27 = !DISubroutineType(types: !28)
!28 = !{!29, !29, !30}
!29 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !26, line: 153, baseType: !32)
!32 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !26, line: 122, size: 1216, align: 64, elements: !33)
!33 = !{!34, !37, !38, !39, !41, !42, !47, !48, !49, !53, !58, !68, !74, !75, !78, !79, !83, !87, !88, !89}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !32, file: !26, line: 123, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !32, file: !26, line: 124, baseType: !29, size: 32, align: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !32, file: !26, line: 125, baseType: !29, size: 32, align: 32, offset: 96)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !32, file: !26, line: 126, baseType: !40, size: 16, align: 16, offset: 128)
!40 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !32, file: !26, line: 127, baseType: !40, size: 16, align: 16, offset: 144)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !32, file: !26, line: 128, baseType: !43, size: 128, align: 64, offset: 192)
!43 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !26, line: 88, size: 128, align: 64, elements: !44)
!44 = !{!45, !46}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !43, file: !26, line: 89, baseType: !35, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !43, file: !26, line: 90, baseType: !29, size: 32, align: 32, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !32, file: !26, line: 129, baseType: !29, size: 32, align: 32, offset: 320)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !32, file: !26, line: 132, baseType: !23, size: 64, align: 64, offset: 384)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !32, file: !26, line: 133, baseType: !50, size: 64, align: 64, offset: 448)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{!29, !23}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !32, file: !26, line: 134, baseType: !54, size: 64, align: 64, offset: 512)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!29, !23, !57, !29}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !32, file: !26, line: 135, baseType: !59, size: 64, align: 64, offset: 576)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!62, !23, !62, !29}
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !26, line: 77, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !64, line: 71, baseType: !65)
!64 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !66, line: 46, baseType: !67)
!66 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!67 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !32, file: !26, line: 136, baseType: !69, size: 64, align: 64, offset: 640)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!29, !23, !72, !29}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !32, file: !26, line: 139, baseType: !43, size: 128, align: 64, offset: 704)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !32, file: !26, line: 140, baseType: !76, size: 64, align: 64, offset: 832)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !26, line: 94, flags: DIFlagFwdDecl)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !32, file: !26, line: 141, baseType: !29, size: 32, align: 32, offset: 896)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !32, file: !26, line: 144, baseType: !80, size: 24, align: 8, offset: 928)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 24, align: 8, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 3)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !32, file: !26, line: 145, baseType: !84, size: 8, align: 8, offset: 952)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 8, align: 8, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 1)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !32, file: !26, line: 148, baseType: !43, size: 128, align: 64, offset: 960)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !32, file: !26, line: 151, baseType: !29, size: 32, align: 32, offset: 1088)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !32, file: !26, line: 152, baseType: !62, size: 64, align: 64, offset: 1152)
!90 = !{!91, !92}
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !25, file: !26, line: 348, type: !29)
!92 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !25, file: !26, line: 348, type: !30)
!93 = !DISubprogram(name: "__sigbits", scope: !94, file: !94, line: 114, type: !95, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !97)
!94 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!95 = !DISubroutineType(types: !96)
!96 = !{!29, !29}
!97 = !{!98}
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !93, file: !94, line: 114, type: !29)
!99 = !DISubprogram(name: "check_tex", scope: !1, file: !1, line: 167, type: !100, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*)* @check_tex, variables: !102)
!100 = !DISubroutineType(types: !101)
!101 = !{!57, !57}
!102 = !{!103}
!103 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !99, file: !1, line: 167, type: !57)
!104 = !DISubprogram(name: "check_nroff", scope: !1, file: !1, line: 172, type: !100, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*)* @check_nroff, variables: !105)
!105 = !{!106}
!106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !104, file: !1, line: 172, type: !57)
!107 = !DISubprogram(name: "fileopt", scope: !1, file: !1, line: 201, type: !108, isLocal: false, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i64)* @fileopt, variables: !111)
!108 = !DISubroutineType(types: !109)
!109 = !{!57, !110}
!110 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!111 = !{!112}
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flag", arg: 1, scope: !107, file: !1, line: 201, type: !110)
!113 = !DISubprogram(name: "check_tty", scope: !1, file: !1, line: 356, type: !100, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*)* @check_tty, variables: !114)
!114 = !{!115}
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !113, file: !1, line: 356, type: !57)
!116 = !DISubprogram(name: "print_tty_formatted", scope: !1, file: !1, line: 361, type: !117, isLocal: false, isDefinition: true, scopeLine: 362, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i32, i8**)* @print_tty_formatted, variables: !120)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !30, !29, !119}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!120 = !{!121, !122, !123, !124, !125, !126, !127}
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !116, file: !1, line: 361, type: !30)
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nldesc", arg: 2, scope: !116, file: !1, line: 361, type: !29)
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "desc", arg: 3, scope: !116, file: !1, line: 361, type: !119)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !116, file: !1, line: 363, type: !57)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !116, file: !1, line: 363, type: !57)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !116, file: !1, line: 364, type: !29)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !116, file: !1, line: 364, type: !29)
!128 = !DISubprogram(name: "check_html", scope: !1, file: !1, line: 423, type: !129, isLocal: false, isDefinition: true, scopeLine: 424, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i8*)* @check_html, variables: !131)
!129 = !DISubroutineType(types: !130)
!130 = !{!57, !57, !57}
!131 = !{!132, !133, !134}
!132 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !128, file: !1, line: 423, type: !57)
!133 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "program", arg: 2, scope: !128, file: !1, line: 423, type: !57)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !128, file: !1, line: 425, type: !57)
!135 = !DISubprogram(name: "write_man", scope: !1, file: !1, line: 613, type: !136, isLocal: false, isDefinition: true, scopeLine: 619, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i8*, i8*, i32, i8**, i32, %struct.t_filenm*, i32, %struct.t_pargs*, i32, i8**, i32)* @write_man, variables: !172)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !30, !57, !57, !29, !119, !29, !138, !29, !147, !29, !119, !29}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_filenm", file: !140, line: 62, baseType: !141)
!140 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/filenm.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!141 = !DICompositeType(tag: DW_TAG_structure_type, file: !140, line: 57, size: 256, align: 64, elements: !142)
!142 = !{!143, !144, !145, !146}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "ftp", scope: !141, file: !140, line: 58, baseType: !29, size: 32, align: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !141, file: !140, line: 59, baseType: !57, size: 64, align: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !141, file: !140, line: 60, baseType: !57, size: 64, align: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !141, file: !140, line: 61, baseType: !110, size: 64, align: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_pargs", file: !4, line: 105, baseType: !149)
!149 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 91, size: 256, align: 64, elements: !150)
!150 = !{!151, !152, !153, !154, !171}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "option", scope: !149, file: !4, line: 92, baseType: !57, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "bSet", scope: !149, file: !4, line: 93, baseType: !29, size: 32, align: 32, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !149, file: !4, line: 94, baseType: !29, size: 32, align: 32, offset: 96)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !149, file: !4, line: 103, baseType: !155, size: 64, align: 64, offset: 128)
!155 = !DICompositeType(tag: DW_TAG_union_type, scope: !149, file: !4, line: 95, size: 64, align: 64, elements: !156)
!156 = !{!157, !158, !160, !165, !166, !167}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !155, file: !4, line: 96, baseType: !23, size: 64, align: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !155, file: !4, line: 97, baseType: !159, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !155, file: !4, line: 98, baseType: !161, size: 64, align: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !163, line: 87, baseType: !164)
!163 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!164 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !155, file: !4, line: 99, baseType: !119, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !155, file: !4, line: 101, baseType: !159, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !155, file: !4, line: 102, baseType: !168, size: 64, align: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !163, line: 101, baseType: !170)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 96, align: 32, elements: !81)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !149, file: !4, line: 104, baseType: !57, size: 64, align: 64, offset: 192)
!172 = !{!173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188}
!173 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !135, file: !1, line: 613, type: !30)
!174 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mantp", arg: 2, scope: !135, file: !1, line: 613, type: !57)
!175 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "program", arg: 3, scope: !135, file: !1, line: 614, type: !57)
!176 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nldesc", arg: 4, scope: !135, file: !1, line: 615, type: !29)
!177 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "desc", arg: 5, scope: !135, file: !1, line: 615, type: !119)
!178 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nfile", arg: 6, scope: !135, file: !1, line: 616, type: !29)
!179 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fnm", arg: 7, scope: !135, file: !1, line: 616, type: !138)
!180 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "npargs", arg: 8, scope: !135, file: !1, line: 617, type: !29)
!181 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pa", arg: 9, scope: !135, file: !1, line: 617, type: !147)
!182 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nbug", arg: 10, scope: !135, file: !1, line: 618, type: !29)
!183 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bugs", arg: 11, scope: !135, file: !1, line: 618, type: !119)
!184 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bHidden", arg: 12, scope: !135, file: !1, line: 618, type: !29)
!185 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pr", scope: !135, file: !1, line: 620, type: !57)
!186 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !135, file: !1, line: 621, type: !29)
!187 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "npar", scope: !135, file: !1, line: 621, type: !29)
!188 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "par", scope: !135, file: !1, line: 622, type: !147)
!189 = !DISubprogram(name: "repall", scope: !1, file: !1, line: 135, type: !190, isLocal: true, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i32, %struct.t_sandr*)* @repall, variables: !198)
!190 = !DISubroutineType(types: !191)
!191 = !{!57, !57, !29, !192}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_sandr", file: !1, line: 48, baseType: !194)
!194 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 46, size: 128, align: 64, elements: !195)
!195 = !{!196, !197}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !194, file: !1, line: 47, baseType: !57, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "replace", scope: !194, file: !1, line: 47, baseType: !57, size: 64, align: 64, offset: 64)
!198 = !{!199, !200, !201, !202, !203, !204}
!199 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !189, file: !1, line: 135, type: !57)
!200 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nsr", arg: 2, scope: !189, file: !1, line: 135, type: !29)
!201 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sa", arg: 3, scope: !189, file: !1, line: 135, type: !192)
!202 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !189, file: !1, line: 137, type: !29)
!203 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !189, file: !1, line: 138, type: !57)
!204 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf2", scope: !189, file: !1, line: 138, type: !57)
!205 = !DISubprogram(name: "html_xref", scope: !1, file: !1, line: 177, type: !129, isLocal: true, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true, variables: !206)
!206 = !{!207, !208, !209, !213, !214}
!207 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !205, file: !1, line: 177, type: !57)
!208 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "program", arg: 2, scope: !205, file: !1, line: 177, type: !57)
!209 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !205, file: !1, line: 182, type: !210)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, align: 8, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 256)
!213 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !205, file: !1, line: 183, type: !29)
!214 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !205, file: !1, line: 183, type: !29)
!215 = !DISubprogram(name: "repallww", scope: !1, file: !1, line: 151, type: !190, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, variables: !216)
!216 = !{!217, !218, !219, !220, !221, !222}
!217 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !215, file: !1, line: 151, type: !57)
!218 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nsr", arg: 2, scope: !215, file: !1, line: 151, type: !29)
!219 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sa", arg: 3, scope: !215, file: !1, line: 151, type: !192)
!220 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !215, file: !1, line: 153, type: !29)
!221 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !215, file: !1, line: 154, type: !57)
!222 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf2", scope: !215, file: !1, line: 154, type: !57)
!223 = !DISubprogram(name: "write_texman", scope: !1, file: !1, line: 226, type: !224, isLocal: true, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, variables: !226)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !30, !57, !29, !119, !29, !138, !29, !147, !29, !119}
!226 = !{!227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237}
!227 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !223, file: !1, line: 226, type: !30)
!228 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "program", arg: 2, scope: !223, file: !1, line: 226, type: !57)
!229 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nldesc", arg: 3, scope: !223, file: !1, line: 227, type: !29)
!230 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "desc", arg: 4, scope: !223, file: !1, line: 227, type: !119)
!231 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nfile", arg: 5, scope: !223, file: !1, line: 228, type: !29)
!232 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fnm", arg: 6, scope: !223, file: !1, line: 228, type: !138)
!233 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "npargs", arg: 7, scope: !223, file: !1, line: 229, type: !29)
!234 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pa", arg: 8, scope: !223, file: !1, line: 229, type: !147)
!235 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nbug", arg: 9, scope: !223, file: !1, line: 230, type: !29)
!236 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bugs", arg: 10, scope: !223, file: !1, line: 230, type: !119)
!237 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !223, file: !1, line: 232, type: !29)
!238 = !DISubprogram(name: "write_nroffman", scope: !1, file: !1, line: 285, type: !224, isLocal: true, isDefinition: true, scopeLine: 292, flags: DIFlagPrototyped, isOptimized: true, variables: !239)
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250}
!240 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !238, file: !1, line: 285, type: !30)
!241 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "program", arg: 2, scope: !238, file: !1, line: 286, type: !57)
!242 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nldesc", arg: 3, scope: !238, file: !1, line: 287, type: !29)
!243 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "desc", arg: 4, scope: !238, file: !1, line: 287, type: !119)
!244 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nfile", arg: 5, scope: !238, file: !1, line: 288, type: !29)
!245 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fnm", arg: 6, scope: !238, file: !1, line: 288, type: !138)
!246 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "npargs", arg: 7, scope: !238, file: !1, line: 289, type: !29)
!247 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pa", arg: 8, scope: !238, file: !1, line: 289, type: !147)
!248 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nbug", arg: 9, scope: !238, file: !1, line: 290, type: !29)
!249 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bugs", arg: 10, scope: !238, file: !1, line: 290, type: !119)
!250 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !238, file: !1, line: 293, type: !29)
!251 = !DISubprogram(name: "mydate", scope: !1, file: !1, line: 118, type: !252, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @mydate, variables: !254)
!252 = !DISubroutineType(types: !253)
!253 = !{!57}
!254 = !{!255, !260}
!255 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "now", scope: !251, file: !1, line: 123, type: !256)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !257, line: 30, baseType: !258)
!257 = !DIFile(filename: "/usr/include/sys/_types/_time_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !66, line: 120, baseType: !259)
!259 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!260 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tm", scope: !251, file: !1, line: 125, type: !261)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!262 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !263, line: 73, size: 448, align: 64, elements: !264)
!263 = !DIFile(filename: "/usr/include/time.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!264 = !{!265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !262, file: !263, line: 74, baseType: !29, size: 32, align: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !262, file: !263, line: 75, baseType: !29, size: 32, align: 32, offset: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !262, file: !263, line: 76, baseType: !29, size: 32, align: 32, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !262, file: !263, line: 77, baseType: !29, size: 32, align: 32, offset: 96)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !262, file: !263, line: 78, baseType: !29, size: 32, align: 32, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !262, file: !263, line: 79, baseType: !29, size: 32, align: 32, offset: 160)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !262, file: !263, line: 80, baseType: !29, size: 32, align: 32, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !262, file: !263, line: 81, baseType: !29, size: 32, align: 32, offset: 224)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !262, file: !263, line: 82, baseType: !29, size: 32, align: 32, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !262, file: !263, line: 83, baseType: !259, size: 64, align: 64, offset: 320)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !262, file: !263, line: 84, baseType: !57, size: 64, align: 64, offset: 384)
!276 = !DISubprogram(name: "write_ttyman", scope: !1, file: !1, line: 386, type: !277, isLocal: true, isDefinition: true, scopeLine: 392, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i8*, i32, i8**, i32, %struct.t_filenm*, i32, %struct.t_pargs*, i32, i8**, i32)* @write_ttyman, variables: !279)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !30, !57, !29, !119, !29, !138, !29, !147, !29, !119, !29}
!279 = !{!280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292}
!280 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !276, file: !1, line: 386, type: !30)
!281 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "program", arg: 2, scope: !276, file: !1, line: 387, type: !57)
!282 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nldesc", arg: 3, scope: !276, file: !1, line: 388, type: !29)
!283 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "desc", arg: 4, scope: !276, file: !1, line: 388, type: !119)
!284 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nfile", arg: 5, scope: !276, file: !1, line: 389, type: !29)
!285 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fnm", arg: 6, scope: !276, file: !1, line: 389, type: !138)
!286 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "npargs", arg: 7, scope: !276, file: !1, line: 390, type: !29)
!287 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pa", arg: 8, scope: !276, file: !1, line: 390, type: !147)
!288 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nbug", arg: 9, scope: !276, file: !1, line: 391, type: !29)
!289 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bugs", arg: 10, scope: !276, file: !1, line: 391, type: !119)
!290 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bHeader", arg: 11, scope: !276, file: !1, line: 391, type: !29)
!291 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !276, file: !1, line: 393, type: !29)
!292 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !276, file: !1, line: 394, type: !57)
!293 = !DISubprogram(name: "write_htmlman", scope: !1, file: !1, line: 433, type: !224, isLocal: true, isDefinition: true, scopeLine: 439, flags: DIFlagPrototyped, isOptimized: true, variables: !294)
!294 = !{!295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306}
!295 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !293, file: !1, line: 433, type: !30)
!296 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "program", arg: 2, scope: !293, file: !1, line: 434, type: !57)
!297 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nldesc", arg: 3, scope: !293, file: !1, line: 435, type: !29)
!298 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "desc", arg: 4, scope: !293, file: !1, line: 435, type: !119)
!299 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nfile", arg: 5, scope: !293, file: !1, line: 436, type: !29)
!300 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fnm", arg: 6, scope: !293, file: !1, line: 436, type: !138)
!301 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "npargs", arg: 7, scope: !293, file: !1, line: 437, type: !29)
!302 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pa", arg: 8, scope: !293, file: !1, line: 437, type: !147)
!303 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nbug", arg: 9, scope: !293, file: !1, line: 438, type: !29)
!304 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bugs", arg: 10, scope: !293, file: !1, line: 438, type: !119)
!305 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !293, file: !1, line: 440, type: !29)
!306 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "link", scope: !293, file: !1, line: 441, type: !307)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 80, align: 8, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 10)
!310 = !DISubprogram(name: "write_zshcompl", scope: !1, file: !1, line: 583, type: !311, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, variables: !313)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !30, !29, !138, !29, !147}
!313 = !{!314, !315, !316, !317, !318}
!314 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !310, file: !1, line: 583, type: !30)
!315 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nfile", arg: 2, scope: !310, file: !1, line: 584, type: !29)
!316 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fnm", arg: 3, scope: !310, file: !1, line: 584, type: !138)
!317 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "npargs", arg: 4, scope: !310, file: !1, line: 585, type: !29)
!318 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pa", arg: 5, scope: !310, file: !1, line: 585, type: !147)
!319 = !DISubprogram(name: "pr_opts", scope: !1, file: !1, line: 529, type: !320, isLocal: true, isDefinition: true, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i32, %struct.t_filenm*, i32, %struct.t_pargs*, i32)* @pr_opts, variables: !322)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !30, !29, !138, !29, !147, !29}
!322 = !{!323, !324, !325, !326, !327, !328, !329}
!323 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !319, file: !1, line: 529, type: !30)
!324 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nfile", arg: 2, scope: !319, file: !1, line: 530, type: !29)
!325 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fnm", arg: 3, scope: !319, file: !1, line: 530, type: !138)
!326 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "npargs", arg: 4, scope: !319, file: !1, line: 531, type: !29)
!327 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pa", arg: 5, scope: !319, file: !1, line: 531, type: !147)
!328 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "shell", arg: 6, scope: !319, file: !1, line: 531, type: !29)
!329 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !319, file: !1, line: 533, type: !29)
!330 = !DISubprogram(name: "write_bashcompl", scope: !1, file: !1, line: 596, type: !311, isLocal: true, isDefinition: true, scopeLine: 599, flags: DIFlagPrototyped, isOptimized: true, variables: !331)
!331 = !{!332, !333, !334, !335, !336}
!332 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !330, file: !1, line: 596, type: !30)
!333 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nfile", arg: 2, scope: !330, file: !1, line: 597, type: !29)
!334 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fnm", arg: 3, scope: !330, file: !1, line: 597, type: !138)
!335 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "npargs", arg: 4, scope: !330, file: !1, line: 598, type: !29)
!336 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pa", arg: 5, scope: !330, file: !1, line: 598, type: !147)
!337 = !DISubprogram(name: "write_cshcompl", scope: !1, file: !1, line: 572, type: !311, isLocal: true, isDefinition: true, scopeLine: 575, flags: DIFlagPrototyped, isOptimized: true, variables: !338)
!338 = !{!339, !340, !341, !342, !343}
!339 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !337, file: !1, line: 572, type: !30)
!340 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nfile", arg: 2, scope: !337, file: !1, line: 573, type: !29)
!341 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fnm", arg: 3, scope: !337, file: !1, line: 573, type: !138)
!342 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "npargs", arg: 4, scope: !337, file: !1, line: 574, type: !29)
!343 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pa", arg: 5, scope: !337, file: !1, line: 574, type: !147)
!344 = !{!345, !349, !353, !357, !359, !363, !364, !365, !366, !370, !374, !375}
!345 = !DIGlobalVariable(name: "sandrTeX", scope: !0, file: !1, line: 50, type: !346, isLocal: false, isDefinition: true, variable: [21 x %struct.t_sandr]* @sandrTeX)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 2688, align: 64, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 21)
!349 = !DIGlobalVariable(name: "sandrTty", scope: !0, file: !1, line: 75, type: !350, isLocal: false, isDefinition: true, variable: [8 x %struct.t_sandr]* @sandrTty)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 1024, align: 64, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 8)
!353 = !DIGlobalVariable(name: "sandrNROFF", scope: !0, file: !1, line: 87, type: !354, isLocal: false, isDefinition: true, variable: [13 x %struct.t_sandr]* @sandrNROFF)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 1664, align: 64, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 13)
!357 = !DIGlobalVariable(name: "sandrHTML", scope: !0, file: !1, line: 104, type: !358, isLocal: false, isDefinition: true, variable: [10 x %struct.t_sandr]* @sandrHTML)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 1280, align: 64, elements: !308)
!359 = !DIGlobalVariable(name: "buf", scope: !107, file: !1, line: 203, type: !360, isLocal: true, isDefinition: true, variable: [32 x i8]* @fileopt.buf)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 256, align: 8, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 32)
!363 = !DIGlobalVariable(name: "nstr", scope: !205, file: !1, line: 179, type: !29, isLocal: true, isDefinition: true, variable: i32* @html_xref.nstr)
!364 = !DIGlobalVariable(name: "str", scope: !205, file: !1, line: 180, type: !119, isLocal: true, isDefinition: true, variable: i8*** @html_xref.str)
!365 = !DIGlobalVariable(name: "sr", scope: !205, file: !1, line: 181, type: !192, isLocal: true, isDefinition: true, variable: %struct.t_sandr** @html_xref.sr)
!366 = !DIGlobalVariable(name: "argtp", scope: !0, file: !4, line: 87, type: !367, isLocal: true, isDefinition: true, variable: [7 x i8*]* @argtp)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 448, align: 64, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 7)
!370 = !DIGlobalVariable(name: "mon", scope: !251, file: !1, line: 120, type: !371, isLocal: true, isDefinition: true, variable: [12 x i8*]* @mydate.mon)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 768, align: 64, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 12)
!374 = !DIGlobalVariable(name: "day", scope: !251, file: !1, line: 122, type: !367, isLocal: true, isDefinition: true, variable: [7 x i8*]* @mydate.day)
!375 = !DIGlobalVariable(name: "tbuf", scope: !251, file: !1, line: 124, type: !376, isLocal: true, isDefinition: true, variable: [128 x i8]* @mydate.tbuf)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 1024, align: 8, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 128)
!379 = !{}
!380 = !{i32 2, !"Dwarf Version", i32 2}
!381 = !{i32 2, !"Debug Info Version", i32 700000003}
!382 = !{i32 1, !"PIC Level", i32 2}
!383 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!384 = !DIExpression()
!385 = !DILocation(line: 348, column: 40, scope: !25)
!386 = !DILocation(line: 348, column: 50, scope: !25)
!387 = !DILocation(line: 349, column: 12, scope: !388)
!388 = distinct !DILexicalBlock(scope: !25, file: !26, line: 349, column: 6)
!389 = !DILocation(line: 349, column: 6, scope: !388)
!390 = !{!391, !395, i64 12}
!391 = !{!"__sFILE", !392, i64 0, !395, i64 8, !395, i64 12, !396, i64 16, !396, i64 18, !397, i64 24, !395, i64 40, !392, i64 48, !392, i64 56, !392, i64 64, !392, i64 72, !392, i64 80, !397, i64 88, !392, i64 104, !395, i64 112, !393, i64 116, !393, i64 119, !397, i64 120, !395, i64 136, !398, i64 144}
!392 = !{!"any pointer", !393, i64 0}
!393 = !{!"omnipotent char", !394, i64 0}
!394 = !{!"Simple C/C++ TBAA"}
!395 = !{!"int", !393, i64 0}
!396 = !{!"short", !393, i64 0}
!397 = !{!"__sbuf", !392, i64 0, !395, i64 8}
!398 = !{!"long long", !393, i64 0}
!399 = !DILocation(line: 349, column: 15, scope: !388)
!400 = !DILocation(line: 349, column: 20, scope: !388)
!401 = !DILocation(line: 350, column: 10, scope: !388)
!402 = !DILocation(line: 349, column: 38, scope: !388)
!403 = !{!391, !395, i64 40}
!404 = !DILocation(line: 349, column: 31, scope: !388)
!405 = !DILocation(line: 349, column: 59, scope: !388)
!406 = !DILocation(line: 349, column: 47, scope: !388)
!407 = !DILocation(line: 350, column: 23, scope: !388)
!408 = !DILocation(line: 350, column: 16, scope: !388)
!409 = !DILocation(line: 350, column: 18, scope: !388)
!410 = !{!391, !392, i64 0}
!411 = !DILocation(line: 350, column: 21, scope: !388)
!412 = !{!393, !393, i64 0}
!413 = !DILocation(line: 350, column: 3, scope: !388)
!414 = !DILocation(line: 352, column: 11, scope: !388)
!415 = !DILocation(line: 352, column: 3, scope: !388)
!416 = !DILocation(line: 353, column: 1, scope: !25)
!417 = !DILocation(line: 114, column: 15, scope: !93)
!418 = !DILocation(line: 116, column: 20, scope: !93)
!419 = !DILocation(line: 116, column: 12, scope: !93)
!420 = !DILocation(line: 116, column: 57, scope: !93)
!421 = !DILocation(line: 116, column: 45, scope: !93)
!422 = !DILocation(line: 116, column: 5, scope: !93)
!423 = !DILocation(line: 167, column: 23, scope: !99)
!424 = !DILocation(line: 169, column: 10, scope: !99)
!425 = !DILocation(line: 169, column: 3, scope: !99)
!426 = !DILocation(line: 135, column: 27, scope: !189)
!427 = !DILocation(line: 135, column: 33, scope: !189)
!428 = !DILocation(line: 135, column: 45, scope: !189)
!429 = !DILocation(line: 138, column: 9, scope: !189)
!430 = !DILocation(line: 137, column: 8, scope: !189)
!431 = !DILocation(line: 141, column: 14, scope: !432)
!432 = distinct !DILexicalBlock(scope: !433, file: !1, line: 141, column: 3)
!433 = distinct !DILexicalBlock(scope: !189, file: !1, line: 141, column: 3)
!434 = !DILocation(line: 141, column: 3, scope: !433)
!435 = !DILocation(line: 142, column: 28, scope: !436)
!436 = distinct !DILexicalBlock(scope: !432, file: !1, line: 141, column: 26)
!437 = !{!438, !392, i64 0}
!438 = !{!"", !392, i64 0, !392, i64 8}
!439 = !DILocation(line: 142, column: 41, scope: !436)
!440 = !{!438, !392, i64 8}
!441 = !DILocation(line: 142, column: 10, scope: !436)
!442 = !DILocation(line: 138, column: 14, scope: !189)
!443 = !DILocation(line: 143, column: 9, scope: !444)
!444 = distinct !DILexicalBlock(scope: !436, file: !1, line: 143, column: 9)
!445 = !DILocation(line: 143, column: 14, scope: !444)
!446 = !DILocation(line: 143, column: 11, scope: !444)
!447 = !DILocation(line: 144, column: 7, scope: !444)
!448 = !DILocation(line: 148, column: 3, scope: !189)
!449 = !DILocation(line: 172, column: 25, scope: !104)
!450 = !DILocation(line: 174, column: 10, scope: !104)
!451 = !DILocation(line: 174, column: 3, scope: !104)
!452 = !DILocation(line: 201, column: 29, scope: !107)
!453 = !DILocation(line: 205, column: 13, scope: !454)
!454 = distinct !DILexicalBlock(scope: !107, file: !1, line: 205, column: 7)
!455 = !DILocation(line: 205, column: 21, scope: !454)
!456 = !DILocation(line: 205, column: 7, scope: !107)
!457 = !DILocation(line: 206, column: 5, scope: !454)
!458 = !DILocation(line: 207, column: 18, scope: !459)
!459 = distinct !DILexicalBlock(scope: !454, file: !1, line: 207, column: 12)
!460 = !DILocation(line: 207, column: 28, scope: !459)
!461 = !DILocation(line: 207, column: 12, scope: !454)
!462 = !DILocation(line: 208, column: 5, scope: !459)
!463 = !DILocation(line: 209, column: 18, scope: !464)
!464 = distinct !DILexicalBlock(scope: !459, file: !1, line: 209, column: 12)
!465 = !DILocation(line: 209, column: 29, scope: !464)
!466 = !DILocation(line: 209, column: 12, scope: !459)
!467 = !DILocation(line: 210, column: 5, scope: !464)
!468 = !DILocation(line: 212, column: 5, scope: !464)
!469 = !DILocation(line: 213, column: 13, scope: !470)
!470 = distinct !DILexicalBlock(scope: !107, file: !1, line: 213, column: 7)
!471 = !DILocation(line: 213, column: 22, scope: !470)
!472 = !DILocation(line: 213, column: 7, scope: !107)
!473 = !DILocation(line: 214, column: 5, scope: !474)
!474 = distinct !DILexicalBlock(scope: !470, file: !1, line: 213, column: 32)
!475 = !DILocation(line: 215, column: 15, scope: !476)
!476 = distinct !DILexicalBlock(scope: !474, file: !1, line: 215, column: 9)
!477 = !DILocation(line: 215, column: 24, scope: !476)
!478 = !DILocation(line: 215, column: 9, scope: !474)
!479 = !DILocation(line: 216, column: 7, scope: !476)
!480 = !DILocation(line: 218, column: 7, scope: !476)
!481 = !DILocation(line: 220, column: 13, scope: !482)
!482 = distinct !DILexicalBlock(scope: !107, file: !1, line: 220, column: 7)
!483 = !DILocation(line: 220, column: 22, scope: !482)
!484 = !DILocation(line: 220, column: 7, scope: !107)
!485 = !DILocation(line: 221, column: 5, scope: !482)
!486 = !DILocation(line: 223, column: 3, scope: !107)
!487 = !DILocation(line: 356, column: 23, scope: !113)
!488 = !DILocation(line: 358, column: 10, scope: !113)
!489 = !DILocation(line: 358, column: 3, scope: !113)
!490 = !DILocation(line: 361, column: 32, scope: !116)
!491 = !DILocation(line: 361, column: 41, scope: !116)
!492 = !DILocation(line: 361, column: 56, scope: !116)
!493 = !DILocation(line: 364, column: 9, scope: !116)
!494 = !DILocation(line: 364, column: 7, scope: !116)
!495 = !DILocation(line: 368, column: 14, scope: !496)
!496 = distinct !DILexicalBlock(scope: !497, file: !1, line: 368, column: 3)
!497 = distinct !DILexicalBlock(scope: !116, file: !1, line: 368, column: 3)
!498 = !DILocation(line: 368, column: 3, scope: !497)
!499 = !DILocation(line: 370, column: 3, scope: !116)
!500 = !DILocation(line: 363, column: 9, scope: !116)
!501 = !DILocation(line: 371, column: 3, scope: !502)
!502 = distinct !DILexicalBlock(scope: !116, file: !1, line: 371, column: 3)
!503 = !DILocation(line: 369, column: 15, scope: !496)
!504 = !{!392, !392, i64 0}
!505 = !DILocation(line: 369, column: 8, scope: !496)
!506 = !DILocation(line: 369, column: 6, scope: !496)
!507 = !DILocation(line: 369, column: 23, scope: !496)
!508 = !DILocation(line: 376, column: 5, scope: !509)
!509 = distinct !DILexicalBlock(scope: !510, file: !1, line: 371, column: 29)
!510 = distinct !DILexicalBlock(scope: !502, file: !1, line: 371, column: 3)
!511 = !DILocation(line: 372, column: 10, scope: !512)
!512 = distinct !DILexicalBlock(scope: !509, file: !1, line: 372, column: 9)
!513 = !DILocation(line: 372, column: 21, scope: !512)
!514 = !DILocation(line: 372, column: 25, scope: !512)
!515 = !DILocation(line: 373, column: 7, scope: !512)
!516 = !DILocation(line: 373, column: 18, scope: !512)
!517 = !DILocation(line: 373, column: 3, scope: !512)
!518 = !DILocation(line: 373, column: 29, scope: !512)
!519 = !DILocation(line: 374, column: 7, scope: !512)
!520 = !DILocation(line: 375, column: 20, scope: !509)
!521 = !DILocation(line: 356, column: 23, scope: !113, inlinedAt: !522)
!522 = distinct !DILocation(line: 375, column: 10, scope: !509)
!523 = !DILocation(line: 358, column: 10, scope: !113, inlinedAt: !522)
!524 = !DILocation(line: 363, column: 14, scope: !116)
!525 = !DILocation(line: 377, column: 5, scope: !509)
!526 = !DILocation(line: 380, column: 10, scope: !116)
!527 = !DILocation(line: 381, column: 3, scope: !116)
!528 = !DILocation(line: 382, column: 3, scope: !116)
!529 = !DILocation(line: 383, column: 3, scope: !116)
!530 = !DILocation(line: 384, column: 1, scope: !116)
!531 = !DILocation(line: 423, column: 24, scope: !128)
!532 = !DILocation(line: 423, column: 32, scope: !128)
!533 = !DILocation(line: 427, column: 7, scope: !128)
!534 = !DILocation(line: 425, column: 9, scope: !128)
!535 = !DILocation(line: 177, column: 30, scope: !205, inlinedAt: !536)
!536 = distinct !DILocation(line: 428, column: 7, scope: !128)
!537 = !DILocation(line: 177, column: 38, scope: !205, inlinedAt: !536)
!538 = !DILocation(line: 182, column: 3, scope: !205, inlinedAt: !536)
!539 = !DILocation(line: 185, column: 7, scope: !540, inlinedAt: !536)
!540 = distinct !DILexicalBlock(scope: !205, file: !1, line: 185, column: 7)
!541 = !DILocation(line: 185, column: 10, scope: !540, inlinedAt: !536)
!542 = !DILocation(line: 185, column: 7, scope: !205, inlinedAt: !536)
!543 = !DILocation(line: 186, column: 10, scope: !544, inlinedAt: !536)
!544 = distinct !DILexicalBlock(scope: !540, file: !1, line: 185, column: 19)
!545 = !DILocation(line: 186, column: 9, scope: !544, inlinedAt: !536)
!546 = !{!395, !395, i64 0}
!547 = !DILocation(line: 187, column: 5, scope: !544, inlinedAt: !536)
!548 = !DILocation(line: 183, column: 12, scope: !205, inlinedAt: !536)
!549 = !DILocation(line: 183, column: 10, scope: !205, inlinedAt: !536)
!550 = !DILocation(line: 188, column: 19, scope: !551, inlinedAt: !536)
!551 = distinct !DILexicalBlock(scope: !552, file: !1, line: 188, column: 5)
!552 = distinct !DILexicalBlock(scope: !544, file: !1, line: 188, column: 5)
!553 = !DILocation(line: 188, column: 18, scope: !551, inlinedAt: !536)
!554 = !DILocation(line: 428, column: 7, scope: !128)
!555 = !DILocation(line: 188, column: 5, scope: !552, inlinedAt: !536)
!556 = !DILocation(line: 189, column: 12, scope: !557, inlinedAt: !536)
!557 = distinct !DILexicalBlock(scope: !558, file: !1, line: 189, column: 11)
!558 = distinct !DILexicalBlock(scope: !551, file: !1, line: 188, column: 31)
!559 = !DILocation(line: 190, column: 15, scope: !560, inlinedAt: !536)
!560 = distinct !DILexicalBlock(scope: !557, file: !1, line: 189, column: 58)
!561 = !DILocation(line: 189, column: 20, scope: !557, inlinedAt: !536)
!562 = !DILocation(line: 189, column: 43, scope: !557, inlinedAt: !536)
!563 = !DILocation(line: 189, column: 24, scope: !557, inlinedAt: !536)
!564 = !DILocation(line: 189, column: 51, scope: !557, inlinedAt: !536)
!565 = !DILocation(line: 189, column: 11, scope: !558, inlinedAt: !536)
!566 = !DILocation(line: 190, column: 2, scope: !560, inlinedAt: !536)
!567 = !DILocation(line: 190, column: 14, scope: !560, inlinedAt: !536)
!568 = !DILocation(line: 191, column: 2, scope: !560, inlinedAt: !536)
!569 = !DILocation(line: 192, column: 16, scope: !560, inlinedAt: !536)
!570 = !DILocation(line: 192, column: 2, scope: !560, inlinedAt: !536)
!571 = !DILocation(line: 192, column: 8, scope: !560, inlinedAt: !536)
!572 = !DILocation(line: 192, column: 15, scope: !560, inlinedAt: !536)
!573 = !DILocation(line: 193, column: 3, scope: !560, inlinedAt: !536)
!574 = !DILocation(line: 194, column: 7, scope: !560, inlinedAt: !536)
!575 = !DILocation(line: 198, column: 26, scope: !205, inlinedAt: !536)
!576 = !DILocation(line: 196, column: 9, scope: !544, inlinedAt: !536)
!577 = !DILocation(line: 197, column: 3, scope: !544, inlinedAt: !536)
!578 = !DILocation(line: 198, column: 21, scope: !205, inlinedAt: !536)
!579 = !DILocation(line: 151, column: 29, scope: !215, inlinedAt: !580)
!580 = distinct !DILocation(line: 198, column: 10, scope: !205, inlinedAt: !536)
!581 = !DILocation(line: 151, column: 35, scope: !215, inlinedAt: !580)
!582 = !DILocation(line: 151, column: 47, scope: !215, inlinedAt: !580)
!583 = !DILocation(line: 154, column: 9, scope: !215, inlinedAt: !580)
!584 = !DILocation(line: 153, column: 8, scope: !215, inlinedAt: !580)
!585 = !DILocation(line: 157, column: 14, scope: !586, inlinedAt: !580)
!586 = distinct !DILexicalBlock(scope: !587, file: !1, line: 157, column: 3)
!587 = distinct !DILexicalBlock(scope: !215, file: !1, line: 157, column: 3)
!588 = !DILocation(line: 157, column: 3, scope: !587, inlinedAt: !580)
!589 = !DILocation(line: 198, column: 10, scope: !205, inlinedAt: !536)
!590 = !DILocation(line: 158, column: 30, scope: !591, inlinedAt: !580)
!591 = distinct !DILexicalBlock(scope: !586, file: !1, line: 157, column: 26)
!592 = !DILocation(line: 158, column: 43, scope: !591, inlinedAt: !580)
!593 = !DILocation(line: 158, column: 10, scope: !591, inlinedAt: !580)
!594 = !DILocation(line: 154, column: 14, scope: !215, inlinedAt: !580)
!595 = !DILocation(line: 159, column: 9, scope: !596, inlinedAt: !580)
!596 = distinct !DILexicalBlock(scope: !591, file: !1, line: 159, column: 9)
!597 = !DILocation(line: 159, column: 14, scope: !596, inlinedAt: !580)
!598 = !DILocation(line: 159, column: 11, scope: !596, inlinedAt: !580)
!599 = !DILocation(line: 160, column: 7, scope: !596, inlinedAt: !580)
!600 = !DILocation(line: 199, column: 1, scope: !205, inlinedAt: !536)
!601 = !DILocation(line: 182, column: 10, scope: !205, inlinedAt: !536)
!602 = !DILocation(line: 430, column: 3, scope: !128)
!603 = !DILocation(line: 613, column: 22, scope: !135)
!604 = !DILocation(line: 613, column: 32, scope: !135)
!605 = !DILocation(line: 614, column: 15, scope: !135)
!606 = !DILocation(line: 615, column: 13, scope: !135)
!607 = !DILocation(line: 615, column: 27, scope: !135)
!608 = !DILocation(line: 616, column: 13, scope: !135)
!609 = !DILocation(line: 616, column: 29, scope: !135)
!610 = !DILocation(line: 617, column: 13, scope: !135)
!611 = !DILocation(line: 617, column: 29, scope: !135)
!612 = !DILocation(line: 618, column: 13, scope: !135)
!613 = !DILocation(line: 618, column: 25, scope: !135)
!614 = !DILocation(line: 618, column: 35, scope: !135)
!615 = !DILocation(line: 628, column: 7, scope: !616)
!616 = distinct !DILexicalBlock(scope: !135, file: !1, line: 628, column: 7)
!617 = !DILocation(line: 441, column: 8, scope: !293, inlinedAt: !618)
!618 = distinct !DILocation(line: 655, column: 5, scope: !619)
!619 = distinct !DILexicalBlock(scope: !135, file: !1, line: 654, column: 7)
!620 = !DILocation(line: 628, column: 7, scope: !135)
!621 = !DILocation(line: 633, column: 5, scope: !622)
!622 = distinct !DILexicalBlock(scope: !616, file: !1, line: 632, column: 8)
!623 = !DILocation(line: 622, column: 12, scope: !135)
!624 = !DILocation(line: 621, column: 13, scope: !135)
!625 = !DILocation(line: 621, column: 11, scope: !135)
!626 = !DILocation(line: 635, column: 14, scope: !627)
!627 = distinct !DILexicalBlock(scope: !628, file: !1, line: 635, column: 5)
!628 = distinct !DILexicalBlock(scope: !622, file: !1, line: 635, column: 5)
!629 = !DILocation(line: 635, column: 5, scope: !628)
!630 = !DILocation(line: 636, column: 23, scope: !631)
!631 = distinct !DILexicalBlock(scope: !627, file: !1, line: 636, column: 11)
!632 = !DILocation(line: 636, column: 12, scope: !631)
!633 = !DILocation(line: 636, column: 11, scope: !627)
!634 = !DILocation(line: 637, column: 2, scope: !635)
!635 = distinct !DILexicalBlock(scope: !631, file: !1, line: 636, column: 31)
!636 = !DILocation(line: 637, column: 12, scope: !635)
!637 = !{i64 0, i64 8, !504, i64 8, i64 4, !546, i64 12, i64 4, !546, i64 16, i64 8, !504, i64 16, i64 8, !504, i64 16, i64 8, !504, i64 16, i64 8, !504, i64 16, i64 8, !504, i64 16, i64 8, !504, i64 24, i64 8, !504}
!638 = !DILocation(line: 638, column: 6, scope: !635)
!639 = !DILocation(line: 639, column: 7, scope: !635)
!640 = !DILocation(line: 642, column: 11, scope: !641)
!641 = distinct !DILexicalBlock(scope: !135, file: !1, line: 642, column: 7)
!642 = !DILocation(line: 620, column: 12, scope: !135)
!643 = !DILocation(line: 642, column: 33, scope: !641)
!644 = !DILocation(line: 645, column: 7, scope: !641)
!645 = !DILocation(line: 642, column: 7, scope: !135)
!646 = !DILocation(line: 646, column: 7, scope: !647)
!647 = distinct !DILexicalBlock(scope: !135, file: !1, line: 646, column: 7)
!648 = !DILocation(line: 646, column: 26, scope: !647)
!649 = !DILocation(line: 646, column: 7, scope: !135)
!650 = !DILocation(line: 226, column: 32, scope: !223, inlinedAt: !651)
!651 = distinct !DILocation(line: 647, column: 5, scope: !647)
!652 = !DILocation(line: 226, column: 42, scope: !223, inlinedAt: !651)
!653 = !DILocation(line: 227, column: 9, scope: !223, inlinedAt: !651)
!654 = !DILocation(line: 227, column: 23, scope: !223, inlinedAt: !651)
!655 = !DILocation(line: 228, column: 9, scope: !223, inlinedAt: !651)
!656 = !DILocation(line: 228, column: 25, scope: !223, inlinedAt: !651)
!657 = !DILocation(line: 229, column: 9, scope: !223, inlinedAt: !651)
!658 = !DILocation(line: 229, column: 25, scope: !223, inlinedAt: !651)
!659 = !DILocation(line: 230, column: 9, scope: !223, inlinedAt: !651)
!660 = !DILocation(line: 230, column: 21, scope: !223, inlinedAt: !651)
!661 = !DILocation(line: 167, column: 23, scope: !99, inlinedAt: !662)
!662 = distinct !DILocation(line: 234, column: 48, scope: !223, inlinedAt: !651)
!663 = !DILocation(line: 169, column: 10, scope: !99, inlinedAt: !662)
!664 = !DILocation(line: 234, column: 3, scope: !223, inlinedAt: !651)
!665 = !DILocation(line: 236, column: 14, scope: !666, inlinedAt: !651)
!666 = distinct !DILexicalBlock(scope: !223, file: !1, line: 236, column: 7)
!667 = !DILocation(line: 236, column: 7, scope: !223, inlinedAt: !651)
!668 = !DILocation(line: 237, column: 5, scope: !669, inlinedAt: !651)
!669 = distinct !DILexicalBlock(scope: !666, file: !1, line: 237, column: 5)
!670 = !DILocation(line: 647, column: 5, scope: !647)
!671 = !DILocation(line: 238, column: 36, scope: !672, inlinedAt: !651)
!672 = distinct !DILexicalBlock(scope: !669, file: !1, line: 237, column: 5)
!673 = !DILocation(line: 167, column: 23, scope: !99, inlinedAt: !674)
!674 = distinct !DILocation(line: 238, column: 26, scope: !672, inlinedAt: !651)
!675 = !DILocation(line: 169, column: 10, scope: !99, inlinedAt: !674)
!676 = !DILocation(line: 238, column: 7, scope: !672, inlinedAt: !651)
!677 = !DILocation(line: 240, column: 13, scope: !678, inlinedAt: !651)
!678 = distinct !DILexicalBlock(scope: !223, file: !1, line: 240, column: 7)
!679 = !DILocation(line: 240, column: 7, scope: !223, inlinedAt: !651)
!680 = !DILocation(line: 241, column: 5, scope: !681, inlinedAt: !651)
!681 = distinct !DILexicalBlock(scope: !678, file: !1, line: 240, column: 18)
!682 = !DILocation(line: 242, column: 5, scope: !681, inlinedAt: !651)
!683 = !DILocation(line: 243, column: 5, scope: !681, inlinedAt: !651)
!684 = !DILocation(line: 232, column: 7, scope: !223, inlinedAt: !651)
!685 = !DILocation(line: 245, column: 5, scope: !686, inlinedAt: !651)
!686 = distinct !DILexicalBlock(scope: !681, file: !1, line: 245, column: 5)
!687 = !DILocation(line: 248, column: 25, scope: !688, inlinedAt: !651)
!688 = distinct !DILexicalBlock(scope: !686, file: !1, line: 245, column: 5)
!689 = !{!690, !392, i64 8}
!690 = !{!"", !395, i64 0, !392, i64 8, !392, i64 16, !691, i64 24}
!691 = !{!"long", !393, i64 0}
!692 = !DILocation(line: 167, column: 23, scope: !99, inlinedAt: !693)
!693 = distinct !DILocation(line: 248, column: 8, scope: !688, inlinedAt: !651)
!694 = !DILocation(line: 169, column: 10, scope: !99, inlinedAt: !693)
!695 = !DILocation(line: 248, column: 47, scope: !688, inlinedAt: !651)
!696 = !{!690, !392, i64 16}
!697 = !DILocation(line: 167, column: 23, scope: !99, inlinedAt: !698)
!698 = distinct !DILocation(line: 248, column: 30, scope: !688, inlinedAt: !651)
!699 = !DILocation(line: 169, column: 10, scope: !99, inlinedAt: !698)
!700 = !DILocation(line: 249, column: 33, scope: !688, inlinedAt: !651)
!701 = !{!690, !691, i64 24}
!702 = !DILocation(line: 249, column: 18, scope: !688, inlinedAt: !651)
!703 = !DILocation(line: 167, column: 23, scope: !99, inlinedAt: !704)
!704 = distinct !DILocation(line: 249, column: 8, scope: !688, inlinedAt: !651)
!705 = !DILocation(line: 169, column: 10, scope: !99, inlinedAt: !704)
!706 = !DILocation(line: 250, column: 34, scope: !688, inlinedAt: !651)
!707 = !{!690, !395, i64 0}
!708 = !DILocation(line: 250, column: 18, scope: !688, inlinedAt: !651)
!709 = !DILocation(line: 167, column: 23, scope: !99, inlinedAt: !710)
!710 = distinct !DILocation(line: 250, column: 8, scope: !688, inlinedAt: !651)
!711 = !DILocation(line: 169, column: 10, scope: !99, inlinedAt: !710)
!712 = !DILocation(line: 246, column: 7, scope: !688, inlinedAt: !651)
!713 = !DILocation(line: 251, column: 5, scope: !681, inlinedAt: !651)
!714 = !DILocation(line: 252, column: 3, scope: !681, inlinedAt: !651)
!715 = !DILocation(line: 253, column: 14, scope: !716, inlinedAt: !651)
!716 = distinct !DILexicalBlock(scope: !223, file: !1, line: 253, column: 7)
!717 = !DILocation(line: 253, column: 7, scope: !223, inlinedAt: !651)
!718 = !DILocation(line: 254, column: 5, scope: !719, inlinedAt: !651)
!719 = distinct !DILexicalBlock(scope: !716, file: !1, line: 253, column: 19)
!720 = !DILocation(line: 255, column: 5, scope: !719, inlinedAt: !651)
!721 = !DILocation(line: 256, column: 5, scope: !719, inlinedAt: !651)
!722 = !DILocation(line: 258, column: 5, scope: !723, inlinedAt: !651)
!723 = distinct !DILexicalBlock(scope: !719, file: !1, line: 258, column: 5)
!724 = !DILocation(line: 259, column: 37, scope: !725, inlinedAt: !651)
!725 = distinct !DILexicalBlock(scope: !726, file: !1, line: 259, column: 11)
!726 = distinct !DILexicalBlock(scope: !727, file: !1, line: 258, column: 31)
!727 = distinct !DILexicalBlock(scope: !723, file: !1, line: 258, column: 5)
!728 = !DILocation(line: 259, column: 28, scope: !725, inlinedAt: !651)
!729 = !DILocation(line: 167, column: 23, scope: !99, inlinedAt: !730)
!730 = distinct !DILocation(line: 259, column: 18, scope: !725, inlinedAt: !651)
!731 = !DILocation(line: 169, column: 10, scope: !99, inlinedAt: !730)
!732 = !DILocation(line: 259, column: 11, scope: !725, inlinedAt: !651)
!733 = !DILocation(line: 259, column: 47, scope: !725, inlinedAt: !651)
!734 = !DILocation(line: 262, column: 19, scope: !725, inlinedAt: !651)
!735 = !{!736, !392, i64 0}
!736 = !{!"", !392, i64 0, !395, i64 8, !395, i64 12, !393, i64 16, !392, i64 24}
!737 = !DILocation(line: 167, column: 23, scope: !99, inlinedAt: !738)
!738 = distinct !DILocation(line: 262, column: 3, scope: !725, inlinedAt: !651)
!739 = !DILocation(line: 169, column: 10, scope: !99, inlinedAt: !738)
!740 = !DILocation(line: 262, column: 39, scope: !725, inlinedAt: !651)
!741 = !{!736, !395, i64 12}
!742 = !DILocation(line: 262, column: 27, scope: !725, inlinedAt: !651)
!743 = !DILocation(line: 263, column: 13, scope: !725, inlinedAt: !651)
!744 = !DILocation(line: 167, column: 23, scope: !99, inlinedAt: !745)
!745 = distinct !DILocation(line: 263, column: 3, scope: !725, inlinedAt: !651)
!746 = !DILocation(line: 169, column: 10, scope: !99, inlinedAt: !745)
!747 = !DILocation(line: 264, column: 19, scope: !725, inlinedAt: !651)
!748 = !{!736, !392, i64 24}
!749 = !DILocation(line: 167, column: 23, scope: !99, inlinedAt: !750)
!750 = distinct !DILocation(line: 264, column: 3, scope: !725, inlinedAt: !651)
!751 = !DILocation(line: 169, column: 10, scope: !99, inlinedAt: !750)
!752 = !DILocation(line: 259, column: 11, scope: !726, inlinedAt: !651)
!753 = !DILocation(line: 260, column: 2, scope: !725, inlinedAt: !651)
!754 = !DILocation(line: 266, column: 8, scope: !725, inlinedAt: !651)
!755 = !DILocation(line: 273, column: 5, scope: !719, inlinedAt: !651)
!756 = !DILocation(line: 274, column: 3, scope: !719, inlinedAt: !651)
!757 = !DILocation(line: 275, column: 12, scope: !758, inlinedAt: !651)
!758 = distinct !DILexicalBlock(scope: !223, file: !1, line: 275, column: 7)
!759 = !DILocation(line: 275, column: 7, scope: !223, inlinedAt: !651)
!760 = !DILocation(line: 276, column: 5, scope: !761, inlinedAt: !651)
!761 = distinct !DILexicalBlock(scope: !758, file: !1, line: 275, column: 17)
!762 = !DILocation(line: 277, column: 5, scope: !761, inlinedAt: !651)
!763 = !DILocation(line: 278, column: 5, scope: !764, inlinedAt: !651)
!764 = distinct !DILexicalBlock(scope: !761, file: !1, line: 278, column: 5)
!765 = !DILocation(line: 279, column: 43, scope: !766, inlinedAt: !651)
!766 = distinct !DILexicalBlock(scope: !764, file: !1, line: 278, column: 5)
!767 = !DILocation(line: 167, column: 23, scope: !99, inlinedAt: !768)
!768 = distinct !DILocation(line: 279, column: 33, scope: !766, inlinedAt: !651)
!769 = !DILocation(line: 169, column: 10, scope: !99, inlinedAt: !768)
!770 = !DILocation(line: 279, column: 7, scope: !766, inlinedAt: !651)
!771 = !DILocation(line: 280, column: 5, scope: !761, inlinedAt: !651)
!772 = !DILocation(line: 281, column: 3, scope: !761, inlinedAt: !651)
!773 = !DILocation(line: 648, column: 7, scope: !774)
!774 = distinct !DILexicalBlock(scope: !135, file: !1, line: 648, column: 7)
!775 = !DILocation(line: 648, column: 28, scope: !774)
!776 = !DILocation(line: 648, column: 7, scope: !135)
!777 = !DILocation(line: 285, column: 34, scope: !238, inlinedAt: !778)
!778 = distinct !DILocation(line: 649, column: 5, scope: !774)
!779 = !DILocation(line: 286, column: 13, scope: !238, inlinedAt: !778)
!780 = !DILocation(line: 287, column: 11, scope: !238, inlinedAt: !778)
!781 = !DILocation(line: 287, column: 25, scope: !238, inlinedAt: !778)
!782 = !DILocation(line: 288, column: 11, scope: !238, inlinedAt: !778)
!783 = !DILocation(line: 288, column: 27, scope: !238, inlinedAt: !778)
!784 = !DILocation(line: 289, column: 11, scope: !238, inlinedAt: !778)
!785 = !DILocation(line: 289, column: 27, scope: !238, inlinedAt: !778)
!786 = !DILocation(line: 290, column: 11, scope: !238, inlinedAt: !778)
!787 = !DILocation(line: 290, column: 23, scope: !238, inlinedAt: !778)
!788 = !DILocation(line: 295, column: 43, scope: !238, inlinedAt: !778)
!789 = !DILocation(line: 295, column: 3, scope: !238, inlinedAt: !778)
!790 = !DILocation(line: 296, column: 3, scope: !238, inlinedAt: !778)
!791 = !DILocation(line: 297, column: 3, scope: !238, inlinedAt: !778)
!792 = !DILocation(line: 298, column: 25, scope: !238, inlinedAt: !778)
!793 = !DILocation(line: 298, column: 3, scope: !238, inlinedAt: !778)
!794 = !DILocation(line: 300, column: 3, scope: !238, inlinedAt: !778)
!795 = !DILocation(line: 301, column: 3, scope: !238, inlinedAt: !778)
!796 = !DILocation(line: 304, column: 13, scope: !797, inlinedAt: !778)
!797 = distinct !DILexicalBlock(scope: !238, file: !1, line: 304, column: 7)
!798 = !DILocation(line: 304, column: 7, scope: !238, inlinedAt: !778)
!799 = !DILocation(line: 305, column: 5, scope: !800, inlinedAt: !778)
!800 = distinct !DILexicalBlock(scope: !801, file: !1, line: 305, column: 5)
!801 = distinct !DILexicalBlock(scope: !797, file: !1, line: 304, column: 18)
!802 = !DILocation(line: 649, column: 5, scope: !774)
!803 = !DILocation(line: 306, column: 50, scope: !804, inlinedAt: !778)
!804 = distinct !DILexicalBlock(scope: !800, file: !1, line: 305, column: 5)
!805 = !DILocation(line: 307, column: 15, scope: !804, inlinedAt: !778)
!806 = !DILocation(line: 306, column: 7, scope: !804, inlinedAt: !778)
!807 = !DILocation(line: 309, column: 14, scope: !808, inlinedAt: !778)
!808 = distinct !DILexicalBlock(scope: !238, file: !1, line: 309, column: 7)
!809 = !DILocation(line: 309, column: 7, scope: !238, inlinedAt: !778)
!810 = !DILocation(line: 310, column: 5, scope: !811, inlinedAt: !778)
!811 = distinct !DILexicalBlock(scope: !812, file: !1, line: 310, column: 5)
!812 = distinct !DILexicalBlock(scope: !808, file: !1, line: 309, column: 19)
!813 = !DILocation(line: 311, column: 17, scope: !814, inlinedAt: !778)
!814 = distinct !DILexicalBlock(scope: !815, file: !1, line: 311, column: 11)
!815 = distinct !DILexicalBlock(scope: !811, file: !1, line: 310, column: 5)
!816 = !DILocation(line: 311, column: 22, scope: !814, inlinedAt: !778)
!817 = !DILocation(line: 312, column: 45, scope: !814, inlinedAt: !778)
!818 = !DILocation(line: 311, column: 11, scope: !815, inlinedAt: !778)
!819 = !DILocation(line: 312, column: 51, scope: !814, inlinedAt: !778)
!820 = !DILocation(line: 312, column: 2, scope: !814, inlinedAt: !778)
!821 = !DILocation(line: 315, column: 3, scope: !814, inlinedAt: !778)
!822 = !DILocation(line: 314, column: 2, scope: !814, inlinedAt: !778)
!823 = !DILocation(line: 319, column: 14, scope: !824, inlinedAt: !778)
!824 = distinct !DILexicalBlock(scope: !238, file: !1, line: 319, column: 7)
!825 = !DILocation(line: 319, column: 7, scope: !238, inlinedAt: !778)
!826 = !DILocation(line: 320, column: 5, scope: !827, inlinedAt: !778)
!827 = distinct !DILexicalBlock(scope: !824, file: !1, line: 319, column: 19)
!828 = !DILocation(line: 293, column: 7, scope: !238, inlinedAt: !778)
!829 = !DILocation(line: 321, column: 5, scope: !830, inlinedAt: !778)
!830 = distinct !DILexicalBlock(scope: !827, file: !1, line: 321, column: 5)
!831 = !DILocation(line: 322, column: 38, scope: !832, inlinedAt: !778)
!832 = distinct !DILexicalBlock(scope: !830, file: !1, line: 321, column: 5)
!833 = !DILocation(line: 172, column: 25, scope: !104, inlinedAt: !834)
!834 = distinct !DILocation(line: 322, column: 26, scope: !832, inlinedAt: !778)
!835 = !DILocation(line: 174, column: 10, scope: !104, inlinedAt: !834)
!836 = !DILocation(line: 322, column: 7, scope: !832, inlinedAt: !778)
!837 = !DILocation(line: 326, column: 7, scope: !238, inlinedAt: !778)
!838 = !DILocation(line: 327, column: 5, scope: !839, inlinedAt: !778)
!839 = distinct !DILexicalBlock(scope: !840, file: !1, line: 326, column: 18)
!840 = distinct !DILexicalBlock(scope: !238, file: !1, line: 326, column: 7)
!841 = !DILocation(line: 328, column: 5, scope: !842, inlinedAt: !778)
!842 = distinct !DILexicalBlock(scope: !839, file: !1, line: 328, column: 5)
!843 = !DILocation(line: 330, column: 15, scope: !844, inlinedAt: !778)
!844 = distinct !DILexicalBlock(scope: !842, file: !1, line: 328, column: 5)
!845 = !DILocation(line: 330, column: 26, scope: !844, inlinedAt: !778)
!846 = !DILocation(line: 330, column: 44, scope: !844, inlinedAt: !778)
!847 = !DILocation(line: 330, column: 29, scope: !844, inlinedAt: !778)
!848 = !DILocation(line: 331, column: 36, scope: !844, inlinedAt: !778)
!849 = !DILocation(line: 331, column: 20, scope: !844, inlinedAt: !778)
!850 = !DILocation(line: 172, column: 25, scope: !104, inlinedAt: !851)
!851 = distinct !DILocation(line: 331, column: 8, scope: !844, inlinedAt: !778)
!852 = !DILocation(line: 174, column: 10, scope: !104, inlinedAt: !851)
!853 = !DILocation(line: 329, column: 7, scope: !844, inlinedAt: !778)
!854 = !DILocation(line: 335, column: 3, scope: !238, inlinedAt: !778)
!855 = !DILocation(line: 336, column: 8, scope: !238, inlinedAt: !778)
!856 = !DILocation(line: 337, column: 5, scope: !857, inlinedAt: !778)
!857 = distinct !DILexicalBlock(scope: !858, file: !1, line: 337, column: 5)
!858 = distinct !DILexicalBlock(scope: !859, file: !1, line: 336, column: 21)
!859 = distinct !DILexicalBlock(scope: !238, file: !1, line: 336, column: 8)
!860 = !DILocation(line: 338, column: 11, scope: !861, inlinedAt: !778)
!861 = distinct !DILexicalBlock(scope: !862, file: !1, line: 338, column: 11)
!862 = distinct !DILexicalBlock(scope: !863, file: !1, line: 337, column: 31)
!863 = distinct !DILexicalBlock(scope: !857, file: !1, line: 337, column: 5)
!864 = !DILocation(line: 338, column: 17, scope: !861, inlinedAt: !778)
!865 = !DILocation(line: 338, column: 22, scope: !861, inlinedAt: !778)
!866 = !DILocation(line: 340, column: 21, scope: !861, inlinedAt: !778)
!867 = !DILocation(line: 338, column: 11, scope: !862, inlinedAt: !778)
!868 = !DILocation(line: 340, column: 27, scope: !861, inlinedAt: !778)
!869 = !DILocation(line: 172, column: 25, scope: !104, inlinedAt: !870)
!870 = distinct !DILocation(line: 340, column: 3, scope: !861, inlinedAt: !778)
!871 = !DILocation(line: 174, column: 10, scope: !104, inlinedAt: !870)
!872 = !DILocation(line: 341, column: 3, scope: !861, inlinedAt: !778)
!873 = !DILocation(line: 341, column: 38, scope: !861, inlinedAt: !778)
!874 = !DILocation(line: 172, column: 25, scope: !104, inlinedAt: !875)
!875 = distinct !DILocation(line: 341, column: 20, scope: !861, inlinedAt: !778)
!876 = !DILocation(line: 174, column: 10, scope: !104, inlinedAt: !875)
!877 = !DILocation(line: 339, column: 2, scope: !861, inlinedAt: !778)
!878 = !DILocation(line: 172, column: 25, scope: !104, inlinedAt: !879)
!879 = distinct !DILocation(line: 344, column: 3, scope: !861, inlinedAt: !778)
!880 = !DILocation(line: 174, column: 10, scope: !104, inlinedAt: !879)
!881 = !DILocation(line: 344, column: 41, scope: !861, inlinedAt: !778)
!882 = !DILocation(line: 344, column: 29, scope: !861, inlinedAt: !778)
!883 = !DILocation(line: 345, column: 3, scope: !861, inlinedAt: !778)
!884 = !DILocation(line: 345, column: 38, scope: !861, inlinedAt: !778)
!885 = !DILocation(line: 172, column: 25, scope: !104, inlinedAt: !886)
!886 = distinct !DILocation(line: 345, column: 20, scope: !861, inlinedAt: !778)
!887 = !DILocation(line: 174, column: 10, scope: !104, inlinedAt: !886)
!888 = !DILocation(line: 343, column: 2, scope: !861, inlinedAt: !778)
!889 = !DILocation(line: 349, column: 12, scope: !890, inlinedAt: !778)
!890 = distinct !DILexicalBlock(scope: !238, file: !1, line: 349, column: 7)
!891 = !DILocation(line: 349, column: 7, scope: !238, inlinedAt: !778)
!892 = !DILocation(line: 350, column: 5, scope: !893, inlinedAt: !778)
!893 = distinct !DILexicalBlock(scope: !894, file: !1, line: 350, column: 5)
!894 = distinct !DILexicalBlock(scope: !890, file: !1, line: 349, column: 17)
!895 = !DILocation(line: 351, column: 44, scope: !896, inlinedAt: !778)
!896 = distinct !DILexicalBlock(scope: !893, file: !1, line: 350, column: 5)
!897 = !DILocation(line: 172, column: 25, scope: !104, inlinedAt: !898)
!898 = distinct !DILocation(line: 351, column: 32, scope: !896, inlinedAt: !778)
!899 = !DILocation(line: 174, column: 10, scope: !104, inlinedAt: !898)
!900 = !DILocation(line: 351, column: 7, scope: !896, inlinedAt: !778)
!901 = !DILocation(line: 650, column: 7, scope: !902)
!902 = distinct !DILexicalBlock(scope: !135, file: !1, line: 650, column: 7)
!903 = !DILocation(line: 650, column: 28, scope: !902)
!904 = !DILocation(line: 650, column: 7, scope: !135)
!905 = !DILocation(line: 651, column: 5, scope: !902)
!906 = !DILocation(line: 652, column: 7, scope: !907)
!907 = distinct !DILexicalBlock(scope: !135, file: !1, line: 652, column: 7)
!908 = !DILocation(line: 652, column: 27, scope: !907)
!909 = !DILocation(line: 652, column: 7, scope: !135)
!910 = !DILocation(line: 653, column: 5, scope: !907)
!911 = !DILocation(line: 654, column: 7, scope: !619)
!912 = !DILocation(line: 654, column: 27, scope: !619)
!913 = !DILocation(line: 654, column: 7, scope: !135)
!914 = !DILocation(line: 433, column: 33, scope: !293, inlinedAt: !618)
!915 = !DILocation(line: 434, column: 12, scope: !293, inlinedAt: !618)
!916 = !DILocation(line: 435, column: 10, scope: !293, inlinedAt: !618)
!917 = !DILocation(line: 435, column: 24, scope: !293, inlinedAt: !618)
!918 = !DILocation(line: 436, column: 10, scope: !293, inlinedAt: !618)
!919 = !DILocation(line: 436, column: 26, scope: !293, inlinedAt: !618)
!920 = !DILocation(line: 437, column: 10, scope: !293, inlinedAt: !618)
!921 = !DILocation(line: 437, column: 26, scope: !293, inlinedAt: !618)
!922 = !DILocation(line: 438, column: 10, scope: !293, inlinedAt: !618)
!923 = !DILocation(line: 438, column: 22, scope: !293, inlinedAt: !618)
!924 = !DILocation(line: 445, column: 3, scope: !293, inlinedAt: !618)
!925 = !DILocation(line: 446, column: 3, scope: !293, inlinedAt: !618)
!926 = !DILocation(line: 447, column: 3, scope: !293, inlinedAt: !618)
!927 = !DILocation(line: 448, column: 3, scope: !293, inlinedAt: !618)
!928 = !DILocation(line: 449, column: 3, scope: !293, inlinedAt: !618)
!929 = !DILocation(line: 450, column: 3, scope: !293, inlinedAt: !618)
!930 = !DILocation(line: 453, column: 3, scope: !293, inlinedAt: !618)
!931 = !DILocation(line: 455, column: 3, scope: !293, inlinedAt: !618)
!932 = !DILocation(line: 456, column: 98, scope: !293, inlinedAt: !618)
!933 = !DILocation(line: 456, column: 3, scope: !293, inlinedAt: !618)
!934 = !DILocation(line: 457, column: 50, scope: !293, inlinedAt: !618)
!935 = !DILocation(line: 457, column: 3, scope: !293, inlinedAt: !618)
!936 = !DILocation(line: 459, column: 14, scope: !937, inlinedAt: !618)
!937 = distinct !DILexicalBlock(scope: !293, file: !1, line: 459, column: 7)
!938 = !DILocation(line: 459, column: 7, scope: !293, inlinedAt: !618)
!939 = !DILocation(line: 460, column: 5, scope: !940, inlinedAt: !618)
!940 = distinct !DILexicalBlock(scope: !937, file: !1, line: 459, column: 19)
!941 = !DILocation(line: 440, column: 7, scope: !293, inlinedAt: !618)
!942 = !DILocation(line: 461, column: 5, scope: !943, inlinedAt: !618)
!943 = distinct !DILexicalBlock(scope: !940, file: !1, line: 461, column: 5)
!944 = !DILocation(line: 655, column: 5, scope: !619)
!945 = !DILocation(line: 462, column: 26, scope: !946, inlinedAt: !618)
!946 = distinct !DILexicalBlock(scope: !943, file: !1, line: 461, column: 5)
!947 = !DILocation(line: 462, column: 7, scope: !946, inlinedAt: !618)
!948 = !DILocation(line: 464, column: 13, scope: !949, inlinedAt: !618)
!949 = distinct !DILexicalBlock(scope: !293, file: !1, line: 464, column: 7)
!950 = !DILocation(line: 464, column: 7, scope: !293, inlinedAt: !618)
!951 = !DILocation(line: 465, column: 5, scope: !952, inlinedAt: !618)
!952 = distinct !DILexicalBlock(scope: !949, file: !1, line: 464, column: 18)
!953 = !DILocation(line: 466, column: 5, scope: !952, inlinedAt: !618)
!954 = !DILocation(line: 467, column: 5, scope: !952, inlinedAt: !618)
!955 = !DILocation(line: 475, column: 5, scope: !956, inlinedAt: !618)
!956 = distinct !DILexicalBlock(scope: !952, file: !1, line: 475, column: 5)
!957 = !DILocation(line: 476, column: 7, scope: !958, inlinedAt: !618)
!958 = distinct !DILexicalBlock(scope: !959, file: !1, line: 475, column: 30)
!959 = distinct !DILexicalBlock(scope: !956, file: !1, line: 475, column: 5)
!960 = !DILocation(line: 477, column: 11, scope: !961, inlinedAt: !618)
!961 = distinct !DILexicalBlock(scope: !958, file: !1, line: 477, column: 11)
!962 = !DILocation(line: 477, column: 29, scope: !961, inlinedAt: !618)
!963 = !DILocation(line: 477, column: 11, scope: !958, inlinedAt: !618)
!964 = !DILocation(line: 478, column: 2, scope: !961, inlinedAt: !618)
!965 = !DILocation(line: 486, column: 15, scope: !958, inlinedAt: !618)
!966 = !DILocation(line: 486, column: 31, scope: !958, inlinedAt: !618)
!967 = !DILocation(line: 486, column: 49, scope: !958, inlinedAt: !618)
!968 = !DILocation(line: 486, column: 34, scope: !958, inlinedAt: !618)
!969 = !DILocation(line: 487, column: 8, scope: !958, inlinedAt: !618)
!970 = !DILocation(line: 479, column: 7, scope: !958, inlinedAt: !618)
!971 = !DILocation(line: 489, column: 5, scope: !952, inlinedAt: !618)
!972 = !DILocation(line: 490, column: 3, scope: !952, inlinedAt: !618)
!973 = !DILocation(line: 491, column: 14, scope: !974, inlinedAt: !618)
!974 = distinct !DILexicalBlock(scope: !293, file: !1, line: 491, column: 7)
!975 = !DILocation(line: 491, column: 7, scope: !293, inlinedAt: !618)
!976 = !DILocation(line: 492, column: 5, scope: !977, inlinedAt: !618)
!977 = distinct !DILexicalBlock(scope: !974, file: !1, line: 491, column: 19)
!978 = !DILocation(line: 493, column: 5, scope: !977, inlinedAt: !618)
!979 = !DILocation(line: 494, column: 5, scope: !977, inlinedAt: !618)
!980 = !DILocation(line: 502, column: 5, scope: !981, inlinedAt: !618)
!981 = distinct !DILexicalBlock(scope: !977, file: !1, line: 502, column: 5)
!982 = !DILocation(line: 510, column: 9, scope: !983, inlinedAt: !618)
!983 = distinct !DILexicalBlock(scope: !981, file: !1, line: 502, column: 5)
!984 = !DILocation(line: 510, column: 15, scope: !983, inlinedAt: !618)
!985 = !DILocation(line: 510, column: 20, scope: !983, inlinedAt: !618)
!986 = !DILocation(line: 510, column: 8, scope: !983, inlinedAt: !618)
!987 = !DILocation(line: 510, column: 49, scope: !983, inlinedAt: !618)
!988 = !DILocation(line: 510, column: 55, scope: !983, inlinedAt: !618)
!989 = !DILocation(line: 511, column: 8, scope: !983, inlinedAt: !618)
!990 = !DILocation(line: 511, column: 26, scope: !983, inlinedAt: !618)
!991 = !DILocation(line: 511, column: 43, scope: !983, inlinedAt: !618)
!992 = !DILocation(line: 503, column: 7, scope: !983, inlinedAt: !618)
!993 = !DILocation(line: 512, column: 5, scope: !977, inlinedAt: !618)
!994 = !DILocation(line: 513, column: 3, scope: !977, inlinedAt: !618)
!995 = !DILocation(line: 514, column: 12, scope: !996, inlinedAt: !618)
!996 = distinct !DILexicalBlock(scope: !293, file: !1, line: 514, column: 7)
!997 = !DILocation(line: 514, column: 7, scope: !293, inlinedAt: !618)
!998 = !DILocation(line: 515, column: 5, scope: !999, inlinedAt: !618)
!999 = distinct !DILexicalBlock(scope: !996, file: !1, line: 514, column: 17)
!1000 = !DILocation(line: 516, column: 5, scope: !999, inlinedAt: !618)
!1001 = !DILocation(line: 517, column: 5, scope: !1002, inlinedAt: !618)
!1002 = distinct !DILexicalBlock(scope: !999, file: !1, line: 517, column: 5)
!1003 = !DILocation(line: 518, column: 30, scope: !1004, inlinedAt: !618)
!1004 = distinct !DILexicalBlock(scope: !1002, file: !1, line: 517, column: 5)
!1005 = !DILocation(line: 518, column: 7, scope: !1004, inlinedAt: !618)
!1006 = !DILocation(line: 519, column: 5, scope: !999, inlinedAt: !618)
!1007 = !DILocation(line: 520, column: 3, scope: !999, inlinedAt: !618)
!1008 = !DILocation(line: 521, column: 3, scope: !293, inlinedAt: !618)
!1009 = !DILocation(line: 522, column: 3, scope: !293, inlinedAt: !618)
!1010 = !DILocation(line: 523, column: 3, scope: !293, inlinedAt: !618)
!1011 = !DILocation(line: 525, column: 3, scope: !293, inlinedAt: !618)
!1012 = !DILocation(line: 526, column: 3, scope: !293, inlinedAt: !618)
!1013 = !DILocation(line: 527, column: 1, scope: !293, inlinedAt: !618)
!1014 = !DILocation(line: 656, column: 7, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !135, file: !1, line: 656, column: 7)
!1016 = !DILocation(line: 656, column: 37, scope: !1015)
!1017 = !DILocation(line: 656, column: 7, scope: !135)
!1018 = !DILocation(line: 583, column: 34, scope: !310, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 657, column: 5, scope: !1015)
!1020 = !DILocation(line: 584, column: 11, scope: !310, inlinedAt: !1019)
!1021 = !DILocation(line: 584, column: 29, scope: !310, inlinedAt: !1019)
!1022 = !DILocation(line: 585, column: 11, scope: !310, inlinedAt: !1019)
!1023 = !DILocation(line: 585, column: 28, scope: !310, inlinedAt: !1019)
!1024 = !DILocation(line: 587, column: 3, scope: !310, inlinedAt: !1019)
!1025 = !DILocation(line: 590, column: 3, scope: !310, inlinedAt: !1019)
!1026 = !DILocation(line: 591, column: 3, scope: !310, inlinedAt: !1019)
!1027 = !DILocation(line: 592, column: 3, scope: !310, inlinedAt: !1019)
!1028 = !DILocation(line: 593, column: 25, scope: !310, inlinedAt: !1019)
!1029 = !DILocation(line: 593, column: 3, scope: !310, inlinedAt: !1019)
!1030 = !DILocation(line: 657, column: 5, scope: !1015)
!1031 = !DILocation(line: 658, column: 7, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !135, file: !1, line: 658, column: 7)
!1033 = !DILocation(line: 658, column: 38, scope: !1032)
!1034 = !DILocation(line: 658, column: 7, scope: !135)
!1035 = !DILocation(line: 596, column: 35, scope: !330, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 659, column: 5, scope: !1032)
!1037 = !DILocation(line: 597, column: 12, scope: !330, inlinedAt: !1036)
!1038 = !DILocation(line: 597, column: 30, scope: !330, inlinedAt: !1036)
!1039 = !DILocation(line: 598, column: 12, scope: !330, inlinedAt: !1036)
!1040 = !DILocation(line: 598, column: 29, scope: !330, inlinedAt: !1036)
!1041 = !DILocation(line: 603, column: 3, scope: !330, inlinedAt: !1036)
!1042 = !DILocation(line: 604, column: 44, scope: !330, inlinedAt: !1036)
!1043 = !DILocation(line: 604, column: 3, scope: !330, inlinedAt: !1036)
!1044 = !DILocation(line: 605, column: 3, scope: !330, inlinedAt: !1036)
!1045 = !DILocation(line: 606, column: 3, scope: !330, inlinedAt: !1036)
!1046 = !DILocation(line: 607, column: 3, scope: !330, inlinedAt: !1036)
!1047 = !DILocation(line: 608, column: 3, scope: !330, inlinedAt: !1036)
!1048 = !DILocation(line: 609, column: 3, scope: !330, inlinedAt: !1036)
!1049 = !DILocation(line: 610, column: 55, scope: !330, inlinedAt: !1036)
!1050 = !DILocation(line: 610, column: 70, scope: !330, inlinedAt: !1036)
!1051 = !DILocation(line: 610, column: 3, scope: !330, inlinedAt: !1036)
!1052 = !DILocation(line: 659, column: 5, scope: !1032)
!1053 = !DILocation(line: 660, column: 7, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !135, file: !1, line: 660, column: 7)
!1055 = !DILocation(line: 660, column: 37, scope: !1054)
!1056 = !DILocation(line: 660, column: 7, scope: !135)
!1057 = !DILocation(line: 572, column: 34, scope: !337, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 661, column: 5, scope: !1054)
!1059 = !DILocation(line: 573, column: 11, scope: !337, inlinedAt: !1058)
!1060 = !DILocation(line: 573, column: 29, scope: !337, inlinedAt: !1058)
!1061 = !DILocation(line: 574, column: 11, scope: !337, inlinedAt: !1058)
!1062 = !DILocation(line: 574, column: 28, scope: !337, inlinedAt: !1058)
!1063 = !DILocation(line: 576, column: 29, scope: !337, inlinedAt: !1058)
!1064 = !DILocation(line: 576, column: 3, scope: !337, inlinedAt: !1058)
!1065 = !DILocation(line: 577, column: 3, scope: !337, inlinedAt: !1058)
!1066 = !DILocation(line: 578, column: 3, scope: !337, inlinedAt: !1058)
!1067 = !DILocation(line: 579, column: 3, scope: !337, inlinedAt: !1058)
!1068 = !DILocation(line: 580, column: 3, scope: !337, inlinedAt: !1058)
!1069 = !DILocation(line: 661, column: 5, scope: !1054)
!1070 = !DILocation(line: 663, column: 7, scope: !135)
!1071 = !DILocation(line: 664, column: 5, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !135, file: !1, line: 663, column: 7)
!1073 = !DILocation(line: 665, column: 1, scope: !135)
!1074 = !DILocation(line: 386, column: 32, scope: !276)
!1075 = !DILocation(line: 387, column: 11, scope: !276)
!1076 = !DILocation(line: 388, column: 9, scope: !276)
!1077 = !DILocation(line: 388, column: 23, scope: !276)
!1078 = !DILocation(line: 389, column: 9, scope: !276)
!1079 = !DILocation(line: 389, column: 25, scope: !276)
!1080 = !DILocation(line: 390, column: 9, scope: !276)
!1081 = !DILocation(line: 390, column: 25, scope: !276)
!1082 = !DILocation(line: 391, column: 9, scope: !276)
!1083 = !DILocation(line: 391, column: 21, scope: !276)
!1084 = !DILocation(line: 391, column: 31, scope: !276)
!1085 = !DILocation(line: 396, column: 7, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !276, file: !1, line: 396, column: 7)
!1087 = !DILocation(line: 396, column: 7, scope: !276)
!1088 = !DILocation(line: 356, column: 23, scope: !113, inlinedAt: !1089)
!1089 = distinct !DILocation(line: 397, column: 26, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1086, file: !1, line: 396, column: 16)
!1091 = !DILocation(line: 358, column: 10, scope: !113, inlinedAt: !1089)
!1092 = !DILocation(line: 397, column: 5, scope: !1090)
!1093 = !DILocation(line: 398, column: 28, scope: !1090)
!1094 = !DILocation(line: 398, column: 45, scope: !1090)
!1095 = !DILocation(line: 398, column: 5, scope: !1090)
!1096 = !DILocation(line: 399, column: 3, scope: !1090)
!1097 = !DILocation(line: 400, column: 14, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !276, file: !1, line: 400, column: 7)
!1099 = !DILocation(line: 400, column: 7, scope: !276)
!1100 = !DILocation(line: 401, column: 5, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 400, column: 19)
!1102 = !DILocation(line: 402, column: 5, scope: !1101)
!1103 = !DILocation(line: 403, column: 3, scope: !1101)
!1104 = !DILocation(line: 404, column: 12, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !276, file: !1, line: 404, column: 7)
!1106 = !DILocation(line: 404, column: 7, scope: !276)
!1107 = !DILocation(line: 405, column: 5, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1105, file: !1, line: 404, column: 17)
!1109 = !DILocation(line: 393, column: 7, scope: !276)
!1110 = !DILocation(line: 406, column: 5, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1108, file: !1, line: 406, column: 5)
!1112 = !DILocation(line: 407, column: 7, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !1, line: 406, column: 27)
!1114 = distinct !DILexicalBlock(scope: !1111, file: !1, line: 406, column: 5)
!1115 = !DILocation(line: 394, column: 9, scope: !276)
!1116 = !DILocation(line: 408, column: 7, scope: !1113)
!1117 = !DILocation(line: 409, column: 7, scope: !1113)
!1118 = !DILocation(line: 410, column: 26, scope: !1113)
!1119 = !DILocation(line: 410, column: 7, scope: !1113)
!1120 = !DILocation(line: 411, column: 7, scope: !1113)
!1121 = !DILocation(line: 414, column: 13, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !276, file: !1, line: 414, column: 7)
!1123 = !DILocation(line: 414, column: 7, scope: !276)
!1124 = !DILocation(line: 415, column: 5, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 414, column: 18)
!1126 = !DILocation(line: 416, column: 5, scope: !1125)
!1127 = !DILocation(line: 417, column: 3, scope: !1125)
!1128 = !DILocation(line: 418, column: 14, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !276, file: !1, line: 418, column: 7)
!1130 = !DILocation(line: 418, column: 7, scope: !276)
!1131 = !DILocation(line: 419, column: 5, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1129, file: !1, line: 418, column: 19)
!1133 = !DILocation(line: 420, column: 3, scope: !1132)
!1134 = !DILocation(line: 421, column: 1, scope: !276)
!1135 = !DILocation(line: 123, column: 10, scope: !251)
!1136 = !DILocation(line: 127, column: 10, scope: !251)
!1137 = !DILocation(line: 128, column: 8, scope: !251)
!1138 = !DILocation(line: 125, column: 14, scope: !251)
!1139 = !DILocation(line: 129, column: 3, scope: !251)
!1140 = !{!1141, !395, i64 24}
!1141 = !{!"tm", !395, i64 0, !395, i64 4, !395, i64 8, !395, i64 12, !395, i64 16, !395, i64 20, !395, i64 24, !395, i64 28, !395, i64 32, !691, i64 40, !392, i64 48}
!1142 = !{!1141, !395, i64 12}
!1143 = !{!1141, !395, i64 16}
!1144 = !{!1141, !395, i64 20}
!1145 = !DILocation(line: 529, column: 27, scope: !319)
!1146 = !DILocation(line: 530, column: 11, scope: !319)
!1147 = !DILocation(line: 530, column: 29, scope: !319)
!1148 = !DILocation(line: 531, column: 11, scope: !319)
!1149 = !DILocation(line: 531, column: 27, scope: !319)
!1150 = !DILocation(line: 531, column: 37, scope: !319)
!1151 = !DILocation(line: 535, column: 3, scope: !319)
!1152 = !DILocation(line: 537, column: 5, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !319, file: !1, line: 535, column: 18)
!1154 = !DILocation(line: 533, column: 7, scope: !319)
!1155 = !DILocation(line: 538, column: 16, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !1, line: 538, column: 5)
!1157 = distinct !DILexicalBlock(scope: !1153, file: !1, line: 538, column: 5)
!1158 = !DILocation(line: 538, column: 5, scope: !1157)
!1159 = !DILocation(line: 540, column: 16, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !1, line: 540, column: 5)
!1161 = distinct !DILexicalBlock(scope: !1153, file: !1, line: 540, column: 5)
!1162 = !DILocation(line: 540, column: 5, scope: !1161)
!1163 = !DILocation(line: 539, column: 31, scope: !1156)
!1164 = !DILocation(line: 539, column: 34, scope: !1156)
!1165 = !DILocation(line: 539, column: 7, scope: !1156)
!1166 = !DILocation(line: 541, column: 13, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1160, file: !1, line: 541, column: 12)
!1168 = !DILocation(line: 541, column: 19, scope: !1167)
!1169 = !DILocation(line: 541, column: 23, scope: !1167)
!1170 = !DILocation(line: 541, column: 33, scope: !1167)
!1171 = !DILocation(line: 541, column: 44, scope: !1167)
!1172 = !DILocation(line: 541, column: 46, scope: !1167)
!1173 = !DILocation(line: 541, column: 36, scope: !1167)
!1174 = !DILocation(line: 541, column: 12, scope: !1160)
!1175 = !DILocation(line: 542, column: 27, scope: !1167)
!1176 = !DILocation(line: 542, column: 33, scope: !1167)
!1177 = !DILocation(line: 542, column: 2, scope: !1167)
!1178 = !DILocation(line: 544, column: 25, scope: !1167)
!1179 = !DILocation(line: 544, column: 31, scope: !1167)
!1180 = !DILocation(line: 544, column: 2, scope: !1167)
!1181 = !DILocation(line: 545, column: 5, scope: !1153)
!1182 = !DILocation(line: 546, column: 5, scope: !1153)
!1183 = !DILocation(line: 548, column: 5, scope: !1153)
!1184 = !DILocation(line: 549, column: 16, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !1, line: 549, column: 5)
!1186 = distinct !DILexicalBlock(scope: !1153, file: !1, line: 549, column: 5)
!1187 = !DILocation(line: 549, column: 5, scope: !1186)
!1188 = !DILocation(line: 551, column: 16, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !1, line: 551, column: 5)
!1190 = distinct !DILexicalBlock(scope: !1153, file: !1, line: 551, column: 5)
!1191 = !DILocation(line: 551, column: 5, scope: !1190)
!1192 = !DILocation(line: 550, column: 32, scope: !1185)
!1193 = !DILocation(line: 550, column: 35, scope: !1185)
!1194 = !DILocation(line: 550, column: 7, scope: !1185)
!1195 = !DILocation(line: 552, column: 13, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1189, file: !1, line: 552, column: 12)
!1197 = !DILocation(line: 552, column: 19, scope: !1196)
!1198 = !DILocation(line: 552, column: 23, scope: !1196)
!1199 = !DILocation(line: 552, column: 33, scope: !1196)
!1200 = !DILocation(line: 552, column: 44, scope: !1196)
!1201 = !DILocation(line: 552, column: 46, scope: !1196)
!1202 = !DILocation(line: 552, column: 36, scope: !1196)
!1203 = !DILocation(line: 552, column: 12, scope: !1189)
!1204 = !DILocation(line: 553, column: 28, scope: !1196)
!1205 = !DILocation(line: 553, column: 34, scope: !1196)
!1206 = !DILocation(line: 553, column: 2, scope: !1196)
!1207 = !DILocation(line: 555, column: 26, scope: !1196)
!1208 = !DILocation(line: 555, column: 32, scope: !1196)
!1209 = !DILocation(line: 555, column: 2, scope: !1196)
!1210 = !DILocation(line: 556, column: 5, scope: !1153)
!1211 = !DILocation(line: 557, column: 5, scope: !1153)
!1212 = !DILocation(line: 559, column: 5, scope: !1153)
!1213 = !DILocation(line: 560, column: 16, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !1, line: 560, column: 5)
!1215 = distinct !DILexicalBlock(scope: !1153, file: !1, line: 560, column: 5)
!1216 = !DILocation(line: 560, column: 5, scope: !1215)
!1217 = !DILocation(line: 562, column: 16, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !1, line: 562, column: 5)
!1219 = distinct !DILexicalBlock(scope: !1153, file: !1, line: 562, column: 5)
!1220 = !DILocation(line: 562, column: 5, scope: !1219)
!1221 = !DILocation(line: 561, column: 31, scope: !1214)
!1222 = !DILocation(line: 561, column: 34, scope: !1214)
!1223 = !DILocation(line: 561, column: 7, scope: !1214)
!1224 = !DILocation(line: 563, column: 13, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1218, file: !1, line: 563, column: 12)
!1226 = !DILocation(line: 563, column: 19, scope: !1225)
!1227 = !DILocation(line: 563, column: 23, scope: !1225)
!1228 = !DILocation(line: 563, column: 33, scope: !1225)
!1229 = !DILocation(line: 563, column: 44, scope: !1225)
!1230 = !DILocation(line: 563, column: 46, scope: !1225)
!1231 = !DILocation(line: 563, column: 36, scope: !1225)
!1232 = !DILocation(line: 563, column: 12, scope: !1218)
!1233 = !DILocation(line: 564, column: 27, scope: !1225)
!1234 = !DILocation(line: 564, column: 33, scope: !1225)
!1235 = !DILocation(line: 564, column: 2, scope: !1225)
!1236 = !DILocation(line: 566, column: 25, scope: !1225)
!1237 = !DILocation(line: 566, column: 31, scope: !1225)
!1238 = !DILocation(line: 566, column: 2, scope: !1225)
!1239 = !DILocation(line: 567, column: 5, scope: !1153)
!1240 = !DILocation(line: 568, column: 5, scope: !1153)
!1241 = !DILocation(line: 570, column: 1, scope: !319)

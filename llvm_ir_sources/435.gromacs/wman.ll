; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_sandr = type { i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
@.str61 = private unnamed_addr constant [7 x i8] c", Lib.\00", align 1
@.str62 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str63 = private unnamed_addr constant [52 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c\00", align 1
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
@.str76 = private unnamed_addr constant [12 x i8] c"complete %s\00", align 1
@.str77 = private unnamed_addr constant [8 x i8] c" \22c/-/(\00", align 1
@.str78 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str79 = private unnamed_addr constant [6 x i8] c" no%s\00", align 1
@.str80 = private unnamed_addr constant [4 x i8] c")/\22\00", align 1
@.str81 = private unnamed_addr constant [78 x i8] c"if (( $COMP_CWORD <= 1 )) || [[ $c == -* ]]; then COMPREPLY=( $(compgen  -W '\00", align 1
@.str82 = private unnamed_addr constant [5 x i8] c" -%s\00", align 1
@.str83 = private unnamed_addr constant [7 x i8] c" -no%s\00", align 1
@.str84 = private unnamed_addr constant [25 x i8] c"' -- $c)); return 0; fi\0A\00", align 1
@.str85 = private unnamed_addr constant [16 x i8] c" -x 's[-]' -s \22\00", align 1
@.str86 = private unnamed_addr constant [3 x i8] c"\22 \00", align 1
@.str87 = private unnamed_addr constant [18 x i8] c"shopt -s extglob\0A\00", align 1
@.str88 = private unnamed_addr constant [25 x i8] c"_%s_compl() {\0Alocal p c\0A\00", align 1
@.str89 = private unnamed_addr constant [72 x i8] c"COMPREPLY=() c=${COMP_WORDS[COMP_CWORD]} p=${COMP_WORDS[COMP_CWORD-1]}\0A\00", align 1
@.str90 = private unnamed_addr constant [14 x i8] c"case \22$p\22 in\0A\00", align 1
@.str91 = private unnamed_addr constant [36 x i8] c"esac; }; \0Acomplete -F _%s_compl %s\0A\00", align 1
@.str92 = private unnamed_addr constant [9 x i8] c"compctl \00", align 1
@.str93 = private unnamed_addr constant [7 x i8] c"-- %s\0A\00", align 1
@.str94 = private unnamed_addr constant [33 x i8] c"<HTML>\0A<HEAD>\0A<TITLE>%s</TITLE>\0A\00", align 1
@.str95 = private unnamed_addr constant [56 x i8] c"<LINK rel=stylesheet href=\22style.css\22 type=\22text/css\22>\0A\00", align 1
@.str96 = private unnamed_addr constant [88 x i8] c"<BODY text=\22#000000\22 bgcolor=\22#FFFFFF\22 link=\22#0000FF\22 vlink=\22#990000\22 alink=\22#FF0000\22>\0A\00", align 1
@.str97 = private unnamed_addr constant [51 x i8] c"<TABLE WIDTH=\2298%%\22 NOBORDER >\0A<TR><TD WIDTH=400>\0A\00", align 1
@.str98 = private unnamed_addr constant [43 x i8] c"<TABLE WIDTH=400 NOBORDER>\0A<TD WIDTH=116>\0A\00", align 1
@.str99 = private unnamed_addr constant [113 x i8] c"<a href=\22http://www.gromacs.org/\22><img SRC=\22../images/gmxlogo_small.jpg\22BORDER=0 height=133 width=116></a></td>\0A\00", align 1
@.str100 = private unnamed_addr constant [52 x i8] c"<td ALIGN=LEFT VALIGN=TOP WIDTH=280><br><h2>%s</h2>\00", align 1
@.str101 = private unnamed_addr constant [77 x i8] c"<font size=-1><A HREF=\22../online.html\22>Main Table of Contents</A></font><br>\00", align 1
@.str102 = private unnamed_addr constant [77 x i8] c"<br></td>\0A</TABLE></TD><TD WIDTH=\22*\22 ALIGN=RIGHT VALIGN=BOTTOM><p><B>%s<br>\0A\00", align 1
@.str103 = private unnamed_addr constant [31 x i8] c"%s</B></td></tr></TABLE>\0A<HR>\0A\00", align 1
@.str104 = private unnamed_addr constant [26 x i8] c"<H3>Description</H3>\0A<p>\0A\00", align 1
@.str105 = private unnamed_addr constant [5 x i8] c"<P>\0A\00", align 1
@.str106 = private unnamed_addr constant [16 x i8] c"<H3>Files</H3>\0A\00", align 1
@.str107 = private unnamed_addr constant [121 x i8] c"<TABLE BORDER=1 CELLSPACING=0 CELLPADDING=2>\0A<TR><TH>option</TH><TH>filename</TH><TH>type</TH><TH>description</TH></TR>\0A\00", align 1
@.str108 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str109 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@.str110 = private unnamed_addr constant [136 x i8] c"<TR><TD ALIGN=RIGHT> <b><tt>%s</tt></b> </TD><TD ALIGN=RIGHT> <tt><a href=\22%s.html\22>%12s</a></tt> </TD><TD> %s </TD><TD> %s </TD></TR>\0A\00", align 1
@.str111 = private unnamed_addr constant [10 x i8] c"</TABLE>\0A\00", align 1
@.str112 = private unnamed_addr constant [24 x i8] c"<H3>Other options</H3>\0A\00", align 1
@.str113 = private unnamed_addr constant [120 x i8] c"<TABLE BORDER=1 CELLSPACING=0 CELLPADDING=2>\0A<TR><TH>option</TH><TH>type</TH><TH>default</TH><TH>description</TH></TR>\0A\00", align 1
@.str114 = private unnamed_addr constant [126 x i8] c"<TR><TD ALIGN=RIGHT> <b><tt>%s%s</tt></b> </TD><TD ALIGN=RIGHT> %s </TD><TD ALIGN=RIGHT> <tt>%s</tt> </TD><TD> %s </TD></TD>\0A\00", align 1
@.str115 = private unnamed_addr constant [6 x i8] c"-[no]\00", align 1
@.str116 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@argtp = internal unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str124, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str125, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str126, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str127, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str128, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str129, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str130, i32 0, i32 0)], align 16
@.str117 = private unnamed_addr constant [6 x i8] c"<UL>\0A\00", align 1
@.str118 = private unnamed_addr constant [8 x i8] c"<LI>%s\0A\00", align 1
@.str119 = private unnamed_addr constant [7 x i8] c"</UL>\0A\00", align 1
@.str120 = private unnamed_addr constant [24 x i8] c"<hr>\0A<div ALIGN=RIGHT>\0A\00", align 1
@.str121 = private unnamed_addr constant [88 x i8] c"<font size=\22-1\22><a href=\22http://www.gromacs.org\22>http://www.gromacs.org</a></font><br>\0A\00", align 1
@.str122 = private unnamed_addr constant [8 x i8] c"</div>\0A\00", align 1
@.str123 = private unnamed_addr constant [9 x i8] c"</BODY>\0A\00", align 1
@.str124 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str125 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str126 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str127 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str128 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str129 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@.str130 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@mydate.mon = internal unnamed_addr constant [12 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str131, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str132, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str133, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str134, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str135, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str136, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str137, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str138, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str139, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str140, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str141, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str142, i32 0, i32 0)], align 16
@.str131 = private unnamed_addr constant [4 x i8] c"Jan\00", align 1
@.str132 = private unnamed_addr constant [4 x i8] c"Feb\00", align 1
@.str133 = private unnamed_addr constant [4 x i8] c"Mar\00", align 1
@.str134 = private unnamed_addr constant [4 x i8] c"Apr\00", align 1
@.str135 = private unnamed_addr constant [4 x i8] c"May\00", align 1
@.str136 = private unnamed_addr constant [4 x i8] c"Jun\00", align 1
@.str137 = private unnamed_addr constant [4 x i8] c"Jul\00", align 1
@.str138 = private unnamed_addr constant [4 x i8] c"Aug\00", align 1
@.str139 = private unnamed_addr constant [4 x i8] c"Sep\00", align 1
@.str140 = private unnamed_addr constant [4 x i8] c"Oct\00", align 1
@.str141 = private unnamed_addr constant [4 x i8] c"Nov\00", align 1
@.str142 = private unnamed_addr constant [4 x i8] c"Dec\00", align 1
@mydate.day = internal unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str143, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str144, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str145, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str146, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str147, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str148, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str149, i32 0, i32 0)], align 16
@.str143 = private unnamed_addr constant [4 x i8] c"Sun\00", align 1
@.str144 = private unnamed_addr constant [4 x i8] c"Mon\00", align 1
@.str145 = private unnamed_addr constant [4 x i8] c"Tue\00", align 1
@.str146 = private unnamed_addr constant [4 x i8] c"Wed\00", align 1
@.str147 = private unnamed_addr constant [4 x i8] c"Thu\00", align 1
@.str148 = private unnamed_addr constant [4 x i8] c"Fri\00", align 1
@.str149 = private unnamed_addr constant [4 x i8] c"Sat\00", align 1
@mydate.tbuf = internal global [128 x i8] zeroinitializer, align 16
@.str150 = private unnamed_addr constant [12 x i8] c"%s %d %s %d\00", align 1
@.str151 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str152 = private unnamed_addr constant [7 x i8] c"%s\0A%s\0A\00", align 1
@.str153 = private unnamed_addr constant [15 x i8] c"DESCRIPTION:\0A\0A\00", align 1
@.str154 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@.str155 = private unnamed_addr constant [3 x i8] c"* \00", align 1
@.str156 = private unnamed_addr constant [15 x i8] c".TH %s 1 \22%s\22\0A\00", align 1
@.str157 = private unnamed_addr constant [10 x i8] c".SH NAME\0A\00", align 1
@.str158 = private unnamed_addr constant [7 x i8] c".B %s\0A\00", align 1
@.str159 = private unnamed_addr constant [14 x i8] c".SH SYNOPSIS\0A\00", align 1
@.str160 = private unnamed_addr constant [10 x i8] c"\5Cf3%s\5CfP\0A\00", align 1
@.str161 = private unnamed_addr constant [17 x i8] c".BI \22%s\22 \22 %s \22\0A\00", align 1
@.str162 = private unnamed_addr constant [18 x i8] c".BI \22-[no]%s\22 \22\22\0A\00", align 1
@.str163 = private unnamed_addr constant [17 x i8] c".SH DESCRIPTION\0A\00", align 1
@.str164 = private unnamed_addr constant [11 x i8] c".SH FILES\0A\00", align 1
@.str165 = private unnamed_addr constant [29 x i8] c".BI \22%s\22 \22 %s\22 \0A.B %s\0A %s \0A\0A\00", align 1
@.str166 = private unnamed_addr constant [19 x i8] c".SH OTHER OPTIONS\0A\00", align 1
@.str167 = private unnamed_addr constant [26 x i8] c".BI \22-[no]%s\22  \22%s\22\0A %s\0A\0A\00", align 1
@.str168 = private unnamed_addr constant [29 x i8] c".BI \22%s\22  \22 %s\22 \22 %s\22 \0A %s\0A\0A\00", align 1
@.str169 = private unnamed_addr constant [8 x i8] c"\5C- %s\0A\0A\00", align 1
@.str170 = private unnamed_addr constant [27 x i8] c"\5Csection{\5Cnormindex{%s}}\0A\0A\00", align 1
@.str171 = private unnamed_addr constant [30 x i8] c"\5Cvspace{-2ex}\5Cbegin{tabbing}\0A\00", align 1
@.str172 = private unnamed_addr constant [40 x i8] c"\0A{\5Cnormalsize \5Cbf Files}\5Cnopagebreak\5C\5C\0A\00", align 1
@.str173 = private unnamed_addr constant [86 x i8] c"{\5Ctt ~~~~~~~} \5C= {\5Ctt ~~~~~~~~~~~~~~} \5C= ~~~~~~~~~~~~~~~~~~~~~~ \5C= \5Cnopagebreak\5Ckill\0A\00", align 1
@.str174 = private unnamed_addr constant [69 x i8] c"\5C>{\5Ctt %s} \5C'\5C> {\5Ctt %s} \5C' %s \5C> \5Cparbox[t]{0.55\5Clinewidth}{%s} \5C\5C\0A\00", align 1
@.str175 = private unnamed_addr constant [28 x i8] c"\5Cend{tabbing}\5Cvspace{-4ex}\0A\00", align 1
@.str176 = private unnamed_addr constant [48 x i8] c"\0A{\5Cnormalsize \5Cbf Other options}\5Cnopagebreak\5C\5C\0A\00", align 1
@.str177 = private unnamed_addr constant [66 x i8] c"{\5Ctt ~~~~~~~~~~} \5C= vector \5C= {\5Ctt ~~~~~~~} \5C= \5Cnopagebreak\5Ckill\0A\00", align 1
@.str178 = private unnamed_addr constant [71 x i8] c"\5C> {\5Ctt %s} \5C'\5C> %s \5C'\5C> {\5Ctt %s} \5C' \5Cparbox[t]{0.68\5Clinewidth}{%s}\5C\5C\0A\00", align 1
@.str179 = private unnamed_addr constant [85 x i8] c"\5C> {\5Ctt %s} \5C'\5C> %s \5C'\5C>\5C\5C\0A\5C> \5C'\5C> \5C'\5C> {\5Ctt %s} \5C' \5Cparbox[t]{0.7\5Clinewidth}{%s}\5C\5C\0A\00", align 1
@.str180 = private unnamed_addr constant [17 x i8] c"\5Cbegin{itemize}\0A\00", align 1
@.str181 = private unnamed_addr constant [10 x i8] c"\5Citem %s\0A\00", align 1
@.str182 = private unnamed_addr constant [15 x i8] c"\5Cend{itemize}\0A\00", align 1
@html_xref.nstr = internal unnamed_addr global i32 0, align 4
@html_xref.str = internal global i8** null, align 8
@html_xref.sr = internal unnamed_addr global %struct.t_sandr* null, align 8
@.str183 = private unnamed_addr constant [10 x i8] c"links.dat\00", align 1
@.str184 = private unnamed_addr constant [3 x i8] c"sr\00", align 1
@.str185 = private unnamed_addr constant [25 x i8] c"<a href=\22%s.html\22>%s</a>\00", align 1

; Function Attrs: nounwind optsize uwtable
define i8* @check_tex(i8* %s) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !30), !dbg !363
  %call = tail call fastcc i8* @repall(i8* %s, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #6, !dbg !364
  ret i8* %call, !dbg !364
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc i8* @repall(i8* %s, i32 %nsr, %struct.t_sandr* nocapture %sa) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !321), !dbg !365
  tail call void @llvm.dbg.value(metadata !{i32 %nsr}, i64 0, metadata !322), !dbg !365
  tail call void @llvm.dbg.value(metadata !{%struct.t_sandr* %sa}, i64 0, metadata !323), !dbg !365
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !325), !dbg !366
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !324), !dbg !367
  %cmp11 = icmp sgt i32 %nsr, 0, !dbg !367
  br i1 %cmp11, label %for.body, label %for.end, !dbg !367

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %entry ]
  %buf.012 = phi i8* [ %call, %if.end ], [ %s, %entry ]
  %search = getelementptr inbounds %struct.t_sandr* %sa, i64 %indvars.iv, i32 0, !dbg !369
  %0 = load i8** %search, align 8, !dbg !369, !tbaa !371
  %replace = getelementptr inbounds %struct.t_sandr* %sa, i64 %indvars.iv, i32 1, !dbg !369
  %1 = load i8** %replace, align 8, !dbg !369, !tbaa !371
  %call = tail call i8* @replace(i8* %buf.012, i8* %0, i8* %1) #7, !dbg !369
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !326), !dbg !369
  %2 = trunc i64 %indvars.iv to i32, !dbg !374
  %tobool = icmp eq i32 %2, 0, !dbg !374
  %tobool3 = icmp eq i8* %buf.012, null, !dbg !374
  %or.cond = or i1 %tobool, %tobool3, !dbg !374
  br i1 %or.cond, label %if.end, label %if.then, !dbg !374

if.then:                                          ; preds = %for.body
  tail call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str63, i64 0, i64 0), i32 144, i8* %buf.012) #7, !dbg !375
  br label %if.end, !dbg !375

if.end:                                           ; preds = %for.body, %if.then
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !325), !dbg !376
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !367
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !367
  %exitcond = icmp eq i32 %lftr.wideiv, %nsr, !dbg !367
  br i1 %exitcond, label %for.end, label %for.body, !dbg !367

for.end:                                          ; preds = %if.end, %entry
  %buf.0.lcssa = phi i8* [ %s, %entry ], [ %call, %if.end ]
  ret i8* %buf.0.lcssa, !dbg !377
}

; Function Attrs: nounwind optsize uwtable
define i8* @check_nroff(i8* %s) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !33), !dbg !378
  %call = tail call fastcc i8* @repall(i8* %s, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #6, !dbg !379
  ret i8* %call, !dbg !379
}

; Function Attrs: nounwind optsize uwtable
define i8* @fileopt(i64 %flag) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i64 %flag}, i64 0, metadata !39), !dbg !380
  %and = and i64 %flag, 6, !dbg !381
  %cmp = icmp eq i64 %and, 6, !dbg !381
  br i1 %cmp, label %if.then, label %if.else, !dbg !381

if.then:                                          ; preds = %entry
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str54, i64 0, i64 0), i64 7, i32 1, i1 false), !dbg !382
  br label %if.end13, !dbg !382

if.else:                                          ; preds = %entry
  %and1 = and i64 %flag, 2, !dbg !383
  %cmp2 = icmp eq i64 %and1, 0, !dbg !383
  br i1 %cmp2, label %if.else5, label %if.then3, !dbg !383

if.then3:                                         ; preds = %if.else
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str55, i64 0, i64 0), i64 6, i32 1, i1 false), !dbg !384
  br label %if.end13, !dbg !384

if.else5:                                         ; preds = %if.else
  %and6 = and i64 %flag, 4, !dbg !385
  %cmp7 = icmp eq i64 %and6, 0, !dbg !385
  br i1 %cmp7, label %if.else10, label %if.then8, !dbg !385

if.then8:                                         ; preds = %if.else5
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str56, i64 0, i64 0), i64 7, i32 1, i1 false), !dbg !386
  br label %if.end13, !dbg !386

if.else10:                                        ; preds = %if.else5
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str57, i64 0, i64 0), i64 6, i32 1, i1 false), !dbg !387
  br label %if.end13

if.end13:                                         ; preds = %if.then3, %if.else10, %if.then8, %if.then
  %and14 = and i64 %flag, 8, !dbg !388
  %cmp15 = icmp eq i64 %and14, 0, !dbg !388
  br i1 %cmp15, label %if.end25, label %if.then16, !dbg !388

if.then16:                                        ; preds = %if.end13
  %strlen36 = tail call i64 @strlen(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0)), !dbg !389
  %endptr37 = getelementptr [32 x i8]* @fileopt.buf, i64 0, i64 %strlen36, !dbg !389
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %endptr37, i8* getelementptr inbounds ([6 x i8]* @.str58, i64 0, i64 0), i64 6, i32 1, i1 false), !dbg !389
  %and18 = and i64 %flag, 1, !dbg !391
  %cmp19 = icmp eq i64 %and18, 0, !dbg !391
  %strlen38 = tail call i64 @strlen(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0)), !dbg !392
  %endptr39 = getelementptr [32 x i8]* @fileopt.buf, i64 0, i64 %strlen38, !dbg !392
  %0 = bitcast i8* %endptr39 to i16*, !dbg !392
  br i1 %cmp19, label %if.else22, label %if.then20, !dbg !391

if.then20:                                        ; preds = %if.then16
  store i16 33, i16* %0, align 1, !dbg !393
  br label %if.end25, !dbg !393

if.else22:                                        ; preds = %if.then16
  store i16 46, i16* %0, align 1, !dbg !392
  br label %if.end25

if.end25:                                         ; preds = %if.end13, %if.then20, %if.else22
  %and26 = and i64 %flag, 16, !dbg !394
  %cmp27 = icmp eq i64 %and26, 0, !dbg !394
  br i1 %cmp27, label %if.end30, label %if.then28, !dbg !394

if.then28:                                        ; preds = %if.end25
  %strlen = tail call i64 @strlen(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0)), !dbg !395
  %endptr = getelementptr [32 x i8]* @fileopt.buf, i64 0, i64 %strlen, !dbg !395
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %endptr, i8* getelementptr inbounds ([7 x i8]* @.str61, i64 0, i64 0), i64 7, i32 1, i1 false), !dbg !395
  br label %if.end30, !dbg !395

if.end30:                                         ; preds = %if.end25, %if.then28
  ret i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), !dbg !396
}

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i8* @strcat(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i8* @check_tty(i8* %s) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !42), !dbg !397
  %call = tail call fastcc i8* @repall(i8* %s, i32 8, %struct.t_sandr* getelementptr inbounds ([8 x %struct.t_sandr]* @sandrTty, i64 0, i64 0)) #6, !dbg !398
  ret i8* %call, !dbg !398
}

; Function Attrs: nounwind optsize uwtable
define void @print_tty_formatted(%struct._IO_FILE* nocapture %out, i32 %nldesc, i8** nocapture %desc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !103), !dbg !399
  tail call void @llvm.dbg.value(metadata !{i32 %nldesc}, i64 0, metadata !104), !dbg !399
  tail call void @llvm.dbg.value(metadata !{i8** %desc}, i64 0, metadata !105), !dbg !399
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !109), !dbg !400
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !108), !dbg !401
  %cmp54 = icmp sgt i32 %nldesc, 0, !dbg !401
  br i1 %cmp54, label %for.body, label %for.end.thread, !dbg !401

for.end.thread:                                   ; preds = %entry
  %call361 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str63, i64 0, i64 0), i32 370, i32 0, i32 1) #7, !dbg !403
  tail call void @llvm.dbg.value(metadata !{i8* %call362}, i64 0, metadata !106), !dbg !403
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !108), !dbg !404
  br label %for.end30, !dbg !404

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.body ], [ 0, %entry ]
  %j.056 = phi i64 [ %add1, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8** %desc, i64 %indvars.iv57, !dbg !406
  %0 = load i8** %arrayidx, align 8, !dbg !406, !tbaa !371
  %call = tail call i64 @strlen(i8* %0) #8, !dbg !406
  %conv51 = and i64 %j.056, 4294967295, !dbg !406
  %add = add i64 %conv51, 10, !dbg !406
  %add1 = add i64 %add, %call, !dbg !406
  tail call void @llvm.dbg.value(metadata !{i32 %conv2}, i64 0, metadata !109), !dbg !406
  %indvars.iv.next58 = add i64 %indvars.iv57, 1, !dbg !401
  %lftr.wideiv59 = trunc i64 %indvars.iv.next58 to i32, !dbg !401
  %exitcond60 = icmp eq i32 %lftr.wideiv59, %nldesc, !dbg !401
  br i1 %exitcond60, label %for.end, label %for.body, !dbg !401

for.end:                                          ; preds = %for.body
  %conv2 = trunc i64 %add1 to i32, !dbg !406
  %call3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str63, i64 0, i64 0), i32 370, i32 %conv2, i32 1) #7, !dbg !403
  tail call void @llvm.dbg.value(metadata !{i8* %call362}, i64 0, metadata !106), !dbg !403
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !108), !dbg !404
  br i1 %cmp54, label %for.body7, label %for.end30, !dbg !404

for.body7:                                        ; preds = %for.end, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %for.end ]
  %call8 = tail call i64 @strlen(i8* %call3) #8, !dbg !407
  %cmp9 = icmp eq i64 %call8, 0, !dbg !407
  br i1 %cmp9, label %if.end, label %land.lhs.true, !dbg !407

land.lhs.true:                                    ; preds = %for.body7
  %sub = add i64 %call8, -1, !dbg !409
  %arrayidx12 = getelementptr inbounds i8* %call3, i64 %sub, !dbg !409
  %1 = load i8* %arrayidx12, align 1, !dbg !409, !tbaa !372
  switch i8 %1, label %if.then [
    i8 32, label %if.end
    i8 10, label %if.end
  ], !dbg !409

if.then:                                          ; preds = %land.lhs.true
  %strlen = tail call i64 @strlen(i8* %call3), !dbg !410
  %endptr = getelementptr i8* %call3, i64 %strlen, !dbg !410
  %2 = bitcast i8* %endptr to i16*, !dbg !410
  store i16 32, i16* %2, align 1, !dbg !410
  br label %if.end, !dbg !410

if.end:                                           ; preds = %land.lhs.true, %land.lhs.true, %for.body7, %if.then
  %arrayidx25 = getelementptr inbounds i8** %desc, i64 %indvars.iv, !dbg !411
  %3 = load i8** %arrayidx25, align 8, !dbg !411, !tbaa !371
  tail call void @llvm.dbg.value(metadata !{i8* %3}, i64 0, metadata !412) #5, !dbg !413
  %call.i = tail call fastcc i8* @repall(i8* %3, i32 8, %struct.t_sandr* getelementptr inbounds ([8 x %struct.t_sandr]* @sandrTty, i64 0, i64 0)) #7, !dbg !414
  tail call void @llvm.dbg.value(metadata !{i8* %call.i}, i64 0, metadata !107), !dbg !411
  %call27 = tail call i8* @strcat(i8* %call3, i8* %call.i) #7, !dbg !415
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str65, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str63, i64 0, i64 0), i32 377, i8* %call.i) #7, !dbg !416
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !404
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !404
  %exitcond = icmp eq i32 %lftr.wideiv, %nldesc, !dbg !404
  br i1 %exitcond, label %for.end30, label %for.body7, !dbg !404

for.end30:                                        ; preds = %if.end, %for.end.thread, %for.end
  %call362 = phi i8* [ %call361, %for.end.thread ], [ %call3, %for.end ], [ %call3, %if.end ]
  %call31 = tail call i8* @wrap_lines(i8* %call362, i32 80, i32 0) #7, !dbg !417
  tail call void @llvm.dbg.value(metadata !{i8* %call31}, i64 0, metadata !107), !dbg !417
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str66, i64 0, i64 0), i8* %call31) #7, !dbg !418
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str65, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str63, i64 0, i64 0), i32 382, i8* %call31) #7, !dbg !419
  tail call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str63, i64 0, i64 0), i32 383, i8* %call362) #7, !dbg !420
  ret void, !dbg !421
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #4

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #4

; Function Attrs: optsize
declare i8* @wrap_lines(i8*, i32, i32) #4

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define i8* @check_html(i8* %s, i8* %program) #0 {
entry:
  %buf.i = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !114), !dbg !422
  call void @llvm.dbg.value(metadata !{i8* %program}, i64 0, metadata !115), !dbg !422
  %call = call fastcc i8* @repall(i8* %s, i32 10, %struct.t_sandr* getelementptr inbounds ([10 x %struct.t_sandr]* @sandrHTML, i64 0, i64 0)) #6, !dbg !423
  call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !116), !dbg !423
  call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !424) #5, !dbg !426
  call void @llvm.dbg.value(metadata !{i8* %program}, i64 0, metadata !427) #5, !dbg !426
  %0 = getelementptr inbounds [256 x i8]* %buf.i, i64 0, i64 0, !dbg !428
  call void @llvm.lifetime.start(i64 256, i8* %0) #5, !dbg !428
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %buf.i}, metadata !297) #5, !dbg !428
  %1 = load %struct.t_sandr** @html_xref.sr, align 8, !dbg !429, !tbaa !371
  %cmp.i = icmp eq %struct.t_sandr* %1, null, !dbg !429
  br i1 %cmp.i, label %if.then.i, label %if.end20thread-pre-split.i, !dbg !429

if.then.i:                                        ; preds = %entry
  %call.i = call i32 @get_file(i8* getelementptr inbounds ([10 x i8]* @.str183, i64 0, i64 0), i8*** @html_xref.str) #7, !dbg !430
  store i32 %call.i, i32* @html_xref.nstr, align 4, !dbg !430, !tbaa !432
  %call1.i = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str184, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str63, i64 0, i64 0), i32 187, i32 %call.i, i32 16) #7, !dbg !433
  %2 = bitcast i8* %call1.i to %struct.t_sandr*, !dbg !433
  store %struct.t_sandr* %2, %struct.t_sandr** @html_xref.sr, align 8, !dbg !433, !tbaa !371
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !434) #5, !dbg !435
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !437) #5, !dbg !435
  %3 = load i32* @html_xref.nstr, align 4, !dbg !435, !tbaa !432
  %cmp231.i = icmp sgt i32 %3, 0, !dbg !435
  br i1 %cmp231.i, label %for.body.lr.ph.i, label %for.end.i, !dbg !435

for.body.lr.ph.i:                                 ; preds = %if.then.i
  %tobool.i = icmp eq i8* %program, null, !dbg !438
  br label %for.body.i, !dbg !435

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %4 = phi i32 [ %3, %for.body.lr.ph.i ], [ %9, %for.inc.i ]
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %j.032.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %j.1.i, %for.inc.i ]
  %.pre36.i = load i8*** @html_xref.str, align 8, !dbg !440, !tbaa !371
  %arrayidx7.phi.trans.insert.i = getelementptr inbounds i8** %.pre36.i, i64 %indvars.iv.i
  %.pre37.i = load i8** %arrayidx7.phi.trans.insert.i, align 8, !dbg !440, !tbaa !371
  br i1 %tobool.i, label %if.then5.i, label %lor.lhs.false.i, !dbg !438

lor.lhs.false.i:                                  ; preds = %for.body.i
  %call3.i = call i32 @strcasecmp(i8* %program, i8* %.pre37.i) #8, !dbg !438
  %cmp4.i = icmp eq i32 %call3.i, 0, !dbg !438
  br i1 %cmp4.i, label %for.inc.i, label %if.then5.i, !dbg !438

if.then5.i:                                       ; preds = %lor.lhs.false.i, %for.body.i
  %idxprom8.i = sext i32 %j.032.i to i64, !dbg !440
  %5 = load %struct.t_sandr** @html_xref.sr, align 8, !dbg !440, !tbaa !371
  %search.i = getelementptr inbounds %struct.t_sandr* %5, i64 %idxprom8.i, i32 0, !dbg !440
  store i8* %.pre37.i, i8** %search.i, align 8, !dbg !440, !tbaa !371
  %6 = load i8*** @html_xref.str, align 8, !dbg !442, !tbaa !371
  %arrayidx11.i = getelementptr inbounds i8** %6, i64 %indvars.iv.i, !dbg !442
  %7 = load i8** %arrayidx11.i, align 8, !dbg !442, !tbaa !371
  %call14.i = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([25 x i8]* @.str185, i64 0, i64 0), i8* %7, i8* %7) #7, !dbg !442
  %call16.i = call noalias i8* @strdup(i8* %0) #7, !dbg !443
  %8 = load %struct.t_sandr** @html_xref.sr, align 8, !dbg !443, !tbaa !371
  %replace.i = getelementptr inbounds %struct.t_sandr* %8, i64 %idxprom8.i, i32 1, !dbg !443
  store i8* %call16.i, i8** %replace.i, align 8, !dbg !443, !tbaa !371
  %inc.i = add nsw i32 %j.032.i, 1, !dbg !444
  call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !434) #5, !dbg !444
  %.pre.i = load i32* @html_xref.nstr, align 4, !dbg !435, !tbaa !432
  br label %for.inc.i, !dbg !445

for.inc.i:                                        ; preds = %if.then5.i, %lor.lhs.false.i
  %9 = phi i32 [ %.pre.i, %if.then5.i ], [ %4, %lor.lhs.false.i ], !dbg !435
  %j.1.i = phi i32 [ %inc.i, %if.then5.i ], [ %j.032.i, %lor.lhs.false.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !435
  %10 = trunc i64 %indvars.iv.next.i to i32, !dbg !435
  %cmp2.i = icmp slt i32 %10, %9, !dbg !435
  br i1 %cmp2.i, label %for.body.i, label %for.cond.for.end_crit_edge.i, !dbg !435

for.cond.for.end_crit_edge.i:                     ; preds = %for.inc.i
  %.pre34.pre.i = load %struct.t_sandr** @html_xref.sr, align 8, !dbg !446, !tbaa !371
  br label %for.end.i, !dbg !435

for.end.i:                                        ; preds = %for.cond.for.end_crit_edge.i, %if.then.i
  %.pre34.i = phi %struct.t_sandr* [ %.pre34.pre.i, %for.cond.for.end_crit_edge.i ], [ %2, %if.then.i ]
  %j.0.lcssa.i = phi i32 [ %j.1.i, %for.cond.for.end_crit_edge.i ], [ 0, %if.then.i ]
  store i32 %j.0.lcssa.i, i32* @html_xref.nstr, align 4, !dbg !447, !tbaa !432
  br label %if.end20.i, !dbg !448

if.end20thread-pre-split.i:                       ; preds = %entry
  %.pr.i = load i32* @html_xref.nstr, align 4, !dbg !446, !tbaa !432
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end20thread-pre-split.i, %for.end.i
  %11 = phi %struct.t_sandr* [ %1, %if.end20thread-pre-split.i ], [ %.pre34.i, %for.end.i ]
  %12 = phi i32 [ %.pr.i, %if.end20thread-pre-split.i ], [ %j.0.lcssa.i, %for.end.i ], !dbg !446
  call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !449) #5, !dbg !450
  call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !451) #5, !dbg !450
  call void @llvm.dbg.value(metadata !{%struct.t_sandr* %11}, i64 0, metadata !452) #5, !dbg !450
  call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !453) #5, !dbg !454
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !455) #5, !dbg !456
  %cmp11.i.i = icmp sgt i32 %12, 0, !dbg !456
  br i1 %cmp11.i.i, label %for.body.i.i, label %html_xref.exit, !dbg !456

for.body.i.i:                                     ; preds = %if.end20.i, %if.end.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %if.end.i.i ], [ 0, %if.end20.i ]
  %buf.012.i.i = phi i8* [ %call.i.i, %if.end.i.i ], [ %call, %if.end20.i ]
  %search.i.i = getelementptr inbounds %struct.t_sandr* %11, i64 %indvars.iv.i.i, i32 0, !dbg !458
  %13 = load i8** %search.i.i, align 8, !dbg !458, !tbaa !371
  %replace.i.i = getelementptr inbounds %struct.t_sandr* %11, i64 %indvars.iv.i.i, i32 1, !dbg !458
  %14 = load i8** %replace.i.i, align 8, !dbg !458, !tbaa !371
  %call.i.i = call i8* @replaceww(i8* %buf.012.i.i, i8* %13, i8* %14) #7, !dbg !458
  call void @llvm.dbg.value(metadata !{i8* %call.i.i}, i64 0, metadata !460) #5, !dbg !458
  %15 = trunc i64 %indvars.iv.i.i to i32, !dbg !461
  %tobool.i.i = icmp eq i32 %15, 0, !dbg !461
  %tobool3.i.i = icmp eq i8* %buf.012.i.i, null, !dbg !461
  %or.cond.i.i = or i1 %tobool.i.i, %tobool3.i.i, !dbg !461
  br i1 %or.cond.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !461

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str63, i64 0, i64 0), i32 160, i8* %buf.012.i.i) #7, !dbg !462
  br label %if.end.i.i, !dbg !462

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.i
  call void @llvm.dbg.value(metadata !{i8* %call.i.i}, i64 0, metadata !453) #5, !dbg !463
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1, !dbg !456
  %lftr.wideiv = trunc i64 %indvars.iv.next.i.i to i32, !dbg !456
  %exitcond = icmp eq i32 %lftr.wideiv, %12, !dbg !456
  br i1 %exitcond, label %html_xref.exit, label %for.body.i.i, !dbg !456

html_xref.exit:                                   ; preds = %if.end.i.i, %if.end20.i
  %buf.0.lcssa.i.i = phi i8* [ %call, %if.end20.i ], [ %call.i.i, %if.end.i.i ]
  call void @llvm.lifetime.end(i64 256, i8* %0) #5, !dbg !464
  call void @llvm.dbg.value(metadata !{i8* %buf.0.lcssa.i.i}, i64 0, metadata !116), !dbg !425
  ret i8* %buf.0.lcssa.i.i, !dbg !465
}

; Function Attrs: nounwind optsize uwtable
define void @write_man(%struct._IO_FILE* %out, i8* nocapture %mantp, i8* %program, i32 %nldesc, i8** nocapture %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npargs, %struct.t_pargs* %pa, i32 %nbug, i8** nocapture %bugs, i32 %bHidden) #0 {
entry:
  %link.i = alloca [10 x i8], align 1
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !156), !dbg !466
  call void @llvm.dbg.value(metadata !{i8* %mantp}, i64 0, metadata !157), !dbg !466
  call void @llvm.dbg.value(metadata !{i8* %program}, i64 0, metadata !158), !dbg !467
  call void @llvm.dbg.value(metadata !{i32 %nldesc}, i64 0, metadata !159), !dbg !468
  call void @llvm.dbg.value(metadata !{i8** %desc}, i64 0, metadata !160), !dbg !468
  call void @llvm.dbg.value(metadata !{i32 %nfile}, i64 0, metadata !161), !dbg !469
  call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !162), !dbg !469
  call void @llvm.dbg.value(metadata !{i32 %npargs}, i64 0, metadata !163), !dbg !470
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %pa}, i64 0, metadata !164), !dbg !470
  call void @llvm.dbg.value(metadata !{i32 %nbug}, i64 0, metadata !165), !dbg !471
  call void @llvm.dbg.value(metadata !{i8** %bugs}, i64 0, metadata !166), !dbg !471
  call void @llvm.dbg.value(metadata !{i32 %bHidden}, i64 0, metadata !167), !dbg !471
  %tobool = icmp ne i32 %bHidden, 0, !dbg !472
  br i1 %tobool, label %if.end9, label %if.else, !dbg !472

if.else:                                          ; preds = %entry
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str63, i64 0, i64 0), i32 633, i32 %npargs, i32 32) #7, !dbg !473
  %0 = bitcast i8* %call to %struct.t_pargs*, !dbg !473
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %0}, i64 0, metadata !171), !dbg !473
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !170), !dbg !475
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !169), !dbg !476
  %cmp172 = icmp sgt i32 %npargs, 0, !dbg !476
  br i1 %cmp172, label %for.body, label %if.end9, !dbg !476

for.body:                                         ; preds = %if.else, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.else ]
  %npar.0174 = phi i32 [ %npar.1, %for.inc ], [ 0, %if.else ]
  %arrayidx = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, !dbg !478
  %call1 = call i32 @is_hidden(%struct.t_pargs* %arrayidx) #7, !dbg !478
  %tobool2 = icmp eq i32 %call1, 0, !dbg !478
  br i1 %tobool2, label %if.then3, label %for.inc, !dbg !478

if.then3:                                         ; preds = %for.body
  %idxprom4 = sext i32 %npar.0174 to i64, !dbg !479
  %arrayidx5 = getelementptr inbounds %struct.t_pargs* %0, i64 %idxprom4, !dbg !479
  %1 = bitcast %struct.t_pargs* %arrayidx5 to i8*, !dbg !479
  %2 = bitcast %struct.t_pargs* %arrayidx to i8*, !dbg !479
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 32, i32 8, i1 false), !dbg !479, !tbaa.struct !481
  %inc = add nsw i32 %npar.0174, 1, !dbg !482
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !170), !dbg !482
  br label %for.inc, !dbg !483

for.inc:                                          ; preds = %for.body, %if.then3
  %npar.1 = phi i32 [ %npar.0174, %for.body ], [ %inc, %if.then3 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !476
  %lftr.wideiv201 = trunc i64 %indvars.iv.next to i32, !dbg !476
  %exitcond202 = icmp eq i32 %lftr.wideiv201, %npargs, !dbg !476
  br i1 %exitcond202, label %if.end9, label %for.body, !dbg !476

if.end9:                                          ; preds = %if.else, %for.inc, %entry
  %npar.2 = phi i32 [ %npargs, %entry ], [ 0, %if.else ], [ %npar.1, %for.inc ]
  %par.0 = phi %struct.t_pargs* [ %pa, %entry ], [ %0, %if.else ], [ %0, %for.inc ]
  %call10 = call i8* @strrchr(i8* %program, i32 47) #8, !dbg !484
  call void @llvm.dbg.value(metadata !{i8* %call10}, i64 0, metadata !168), !dbg !484
  %cmp11 = icmp eq i8* %call10, null, !dbg !484
  %add.ptr = getelementptr inbounds i8* %call10, i64 1, !dbg !485
  call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !168), !dbg !485
  %pr.0 = select i1 %cmp11, i8* %program, i8* %add.ptr, !dbg !484
  %call15 = call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([4 x i8]* @.str68, i64 0, i64 0)) #8, !dbg !486
  %cmp16 = icmp eq i32 %call15, 0, !dbg !486
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !486

if.then17:                                        ; preds = %if.end9
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !487) #5, !dbg !489
  call void @llvm.dbg.value(metadata !{i8* %pr.0}, i64 0, metadata !490) #5, !dbg !489
  call void @llvm.dbg.value(metadata !{i32 %nldesc}, i64 0, metadata !491) #5, !dbg !492
  call void @llvm.dbg.value(metadata !{i8** %desc}, i64 0, metadata !493) #5, !dbg !492
  call void @llvm.dbg.value(metadata !{i32 %nfile}, i64 0, metadata !494) #5, !dbg !495
  call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !496) #5, !dbg !495
  call void @llvm.dbg.value(metadata !{i32 %npar.2}, i64 0, metadata !497) #5, !dbg !498
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %par.0}, i64 0, metadata !499) #5, !dbg !498
  call void @llvm.dbg.value(metadata !{i32 %nbug}, i64 0, metadata !500) #5, !dbg !501
  call void @llvm.dbg.value(metadata !{i8** %bugs}, i64 0, metadata !502) #5, !dbg !501
  call void @llvm.dbg.value(metadata !{i8* %pr.0}, i64 0, metadata !503) #5, !dbg !505
  %call.i.i = call fastcc i8* @repall(i8* %pr.0, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #7, !dbg !506
  %call1.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([27 x i8]* @.str170, i64 0, i64 0), i8* %call.i.i) #7, !dbg !504
  %cmp.i = icmp sgt i32 %nldesc, 0, !dbg !507
  br i1 %cmp.i, label %for.body.i, label %if.end.i, !dbg !507

for.body.i:                                       ; preds = %if.then17, %for.body.i
  %indvars.iv172.i = phi i64 [ %indvars.iv.next173.i, %for.body.i ], [ 0, %if.then17 ]
  %arrayidx.i = getelementptr inbounds i8** %desc, i64 %indvars.iv172.i, !dbg !508
  %3 = load i8** %arrayidx.i, align 8, !dbg !508, !tbaa !371
  call void @llvm.dbg.value(metadata !{i8* %3}, i64 0, metadata !510) #5, !dbg !511
  %call.i146.i = call fastcc i8* @repall(i8* %3, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #7, !dbg !512
  %call4.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str66, i64 0, i64 0), i8* %call.i146.i) #7, !dbg !508
  %indvars.iv.next173.i = add i64 %indvars.iv172.i, 1, !dbg !513
  %lftr.wideiv199 = trunc i64 %indvars.iv.next173.i to i32, !dbg !513
  %exitcond200 = icmp eq i32 %lftr.wideiv199, %nldesc, !dbg !513
  br i1 %exitcond200, label %if.end.i, label %for.body.i, !dbg !513

if.end.i:                                         ; preds = %for.body.i, %if.then17
  %cmp5.i = icmp sgt i32 %nfile, 0, !dbg !514
  br i1 %cmp5.i, label %for.body12.lr.ph.i, label %if.end32.i, !dbg !514

for.body12.lr.ph.i:                               ; preds = %if.end.i
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([30 x i8]* @.str171, i64 0, i64 0), i64 29, i64 1, %struct._IO_FILE* %out) #5, !dbg !515
  %5 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8]* @.str172, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %out) #5, !dbg !517
  %6 = call i64 @fwrite(i8* getelementptr inbounds ([86 x i8]* @.str173, i64 0, i64 0), i64 85, i64 1, %struct._IO_FILE* %out) #5, !dbg !518
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !519) #5, !dbg !520
  br label %for.body12.i, !dbg !520

for.body12.i:                                     ; preds = %for.body12.i, %for.body12.lr.ph.i
  %indvars.iv168.i = phi i64 [ 0, %for.body12.lr.ph.i ], [ %indvars.iv.next169.i, %for.body12.i ]
  %opt.i = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv168.i, i32 1, !dbg !522
  %7 = load i8** %opt.i, align 8, !dbg !522, !tbaa !371
  call void @llvm.dbg.value(metadata !{i8* %7}, i64 0, metadata !523) #5, !dbg !524
  %call.i147.i = call fastcc i8* @repall(i8* %7, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #7, !dbg !525
  %fn.i = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv168.i, i32 2, !dbg !522
  %8 = load i8** %fn.i, align 8, !dbg !522, !tbaa !371
  call void @llvm.dbg.value(metadata !{i8* %8}, i64 0, metadata !523) #5, !dbg !524
  %call.i148.i = call fastcc i8* @repall(i8* %8, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #7, !dbg !525
  %flag.i = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv168.i, i32 3, !dbg !526
  %9 = load i64* %flag.i, align 8, !dbg !526, !tbaa !527
  %call21.i = call i8* @fileopt(i64 %9) #7, !dbg !526
  call void @llvm.dbg.value(metadata !528, i64 0, metadata !529) #5, !dbg !530
  %call.i149.i = call fastcc i8* @repall(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #7, !dbg !531
  %ftp.i = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv168.i, i32 0, !dbg !532
  %10 = load i32* %ftp.i, align 4, !dbg !532, !tbaa !432
  %call25.i = call i8* @ftp2desc(i32 %10) #7, !dbg !532
  call void @llvm.dbg.value(metadata !{i8* %call25.i}, i64 0, metadata !533) #5, !dbg !534
  %call.i150.i = call fastcc i8* @repall(i8* %call25.i, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #7, !dbg !535
  %call27.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([69 x i8]* @.str174, i64 0, i64 0), i8* %call.i147.i, i8* %call.i148.i, i8* %call.i149.i, i8* %call.i150.i) #7, !dbg !532
  %indvars.iv.next169.i = add i64 %indvars.iv168.i, 1, !dbg !520
  %lftr.wideiv197 = trunc i64 %indvars.iv.next169.i to i32, !dbg !520
  %exitcond198 = icmp eq i32 %lftr.wideiv197, %nfile, !dbg !520
  br i1 %exitcond198, label %for.end30.i, label %for.body12.i, !dbg !520

for.end30.i:                                      ; preds = %for.body12.i
  %11 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str175, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %out) #5, !dbg !536
  br label %if.end32.i, !dbg !537

if.end32.i:                                       ; preds = %for.end30.i, %if.end.i
  %cmp33.i = icmp sgt i32 %npar.2, 0, !dbg !538
  br i1 %cmp33.i, label %for.body40.lr.ph.i, label %if.end87.i, !dbg !538

for.body40.lr.ph.i:                               ; preds = %if.end32.i
  %12 = call i64 @fwrite(i8* getelementptr inbounds ([30 x i8]* @.str171, i64 0, i64 0), i64 29, i64 1, %struct._IO_FILE* %out) #5, !dbg !539
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([48 x i8]* @.str176, i64 0, i64 0), i64 47, i64 1, %struct._IO_FILE* %out) #5, !dbg !541
  %14 = call i64 @fwrite(i8* getelementptr inbounds ([66 x i8]* @.str177, i64 0, i64 0), i64 65, i64 1, %struct._IO_FILE* %out) #5, !dbg !542
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !519) #5, !dbg !543
  br label %for.body40.i, !dbg !543

for.body40.i:                                     ; preds = %for.inc83.i, %for.body40.lr.ph.i
  %indvars.iv164.i = phi i64 [ 0, %for.body40.lr.ph.i ], [ %indvars.iv.next165.i, %for.inc83.i ]
  %arrayidx42.i = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv164.i, !dbg !545
  %call43.i = call i8* @pa_val(%struct.t_pargs* %arrayidx42.i) #7, !dbg !545
  call void @llvm.dbg.value(metadata !{i8* %call43.i}, i64 0, metadata !547) #5, !dbg !548
  %call.i151.i = call fastcc i8* @repall(i8* %call43.i, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #7, !dbg !549
  %call45.i = call i64 @strlen(i8* %call.i151.i) #8, !dbg !545
  %cmp46.i = icmp ult i64 %call45.i, 9, !dbg !545
  %option.i = getelementptr inbounds %struct.t_pargs* %arrayidx42.i, i64 0, i32 0, !dbg !550
  %15 = load i8** %option.i, align 8, !dbg !550, !tbaa !371
  call void @llvm.dbg.value(metadata !{i8* %15}, i64 0, metadata !551) #5, !dbg !552
  %call.i152.i = call fastcc i8* @repall(i8* %15, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #7, !dbg !553
  %type.i = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv164.i, i32 2, !dbg !550
  %16 = load i32* %type.i, align 4, !dbg !550, !tbaa !432
  %idxprom53.i = sext i32 %16 to i64, !dbg !550
  %arrayidx54.i = getelementptr inbounds [7 x i8*]* @argtp, i64 0, i64 %idxprom53.i, !dbg !550
  %17 = load i8** %arrayidx54.i, align 8, !dbg !550, !tbaa !371
  %call57.i = call i8* @pa_val(%struct.t_pargs* %arrayidx42.i) #7, !dbg !554
  call void @llvm.dbg.value(metadata !{i8* %call57.i}, i64 0, metadata !555) #5, !dbg !556
  %call.i153.i = call fastcc i8* @repall(i8* %call57.i, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #7, !dbg !557
  %desc61.i = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv164.i, i32 4, !dbg !558
  %18 = load i8** %desc61.i, align 8, !dbg !558, !tbaa !371
  call void @llvm.dbg.value(metadata !{i8* %18}, i64 0, metadata !559) #5, !dbg !560
  %call.i154.i = call fastcc i8* @repall(i8* %18, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #7, !dbg !561
  br i1 %cmp46.i, label %if.then47.i, label %if.else.i, !dbg !545

if.then47.i:                                      ; preds = %for.body40.i
  %call63.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([71 x i8]* @.str178, i64 0, i64 0), i8* %call.i152.i, i8* %17, i8* %call.i153.i, i8* %call.i154.i) #7, !dbg !558
  br label %for.inc83.i, !dbg !558

if.else.i:                                        ; preds = %for.body40.i
  %call81.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([85 x i8]* @.str179, i64 0, i64 0), i8* %call.i152.i, i8* %17, i8* %call.i153.i, i8* %call.i154.i) #7, !dbg !562
  br label %for.inc83.i

for.inc83.i:                                      ; preds = %if.else.i, %if.then47.i
  %indvars.iv.next165.i = add i64 %indvars.iv164.i, 1, !dbg !543
  %lftr.wideiv195 = trunc i64 %indvars.iv.next165.i to i32, !dbg !543
  %exitcond196 = icmp eq i32 %lftr.wideiv195, %npar.2, !dbg !543
  br i1 %exitcond196, label %for.end85.i, label %for.body40.i, !dbg !543

for.end85.i:                                      ; preds = %for.inc83.i
  %19 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str175, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %out) #5, !dbg !563
  br label %if.end87.i, !dbg !564

if.end87.i:                                       ; preds = %for.end85.i, %if.end32.i
  %cmp88.i = icmp sgt i32 %nbug, 0, !dbg !565
  br i1 %cmp88.i, label %for.body94.lr.ph.i, label %if.end18, !dbg !565

for.body94.lr.ph.i:                               ; preds = %if.end87.i
  %fputc.i = call i32 @fputc(i32 10, %struct._IO_FILE* %out) #5, !dbg !566
  %20 = call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str180, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %out) #5, !dbg !568
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !519) #5, !dbg !569
  br label %for.body94.i, !dbg !569

for.body94.i:                                     ; preds = %for.body94.i, %for.body94.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body94.lr.ph.i ], [ %indvars.iv.next.i, %for.body94.i ]
  %arrayidx96.i = getelementptr inbounds i8** %bugs, i64 %indvars.iv.i, !dbg !571
  %21 = load i8** %arrayidx96.i, align 8, !dbg !571, !tbaa !371
  call void @llvm.dbg.value(metadata !{i8* %21}, i64 0, metadata !572) #5, !dbg !573
  %call.i155.i = call fastcc i8* @repall(i8* %21, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #7, !dbg !574
  %call98.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([10 x i8]* @.str181, i64 0, i64 0), i8* %call.i155.i) #7, !dbg !571
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !569
  %lftr.wideiv193 = trunc i64 %indvars.iv.next.i to i32, !dbg !569
  %exitcond194 = icmp eq i32 %lftr.wideiv193, %nbug, !dbg !569
  br i1 %exitcond194, label %for.end101.i, label %for.body94.i, !dbg !569

for.end101.i:                                     ; preds = %for.body94.i
  %22 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str182, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %out) #5, !dbg !575
  br label %if.end18, !dbg !576

if.end18:                                         ; preds = %for.end101.i, %if.end87.i, %if.end9
  %call19 = call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([6 x i8]* @.str69, i64 0, i64 0)) #8, !dbg !577
  %cmp20 = icmp eq i32 %call19, 0, !dbg !577
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !577

if.then21:                                        ; preds = %if.end18
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !578) #5, !dbg !580
  call void @llvm.dbg.value(metadata !{i8* %pr.0}, i64 0, metadata !581) #5, !dbg !582
  call void @llvm.dbg.value(metadata !{i32 %nldesc}, i64 0, metadata !583) #5, !dbg !584
  call void @llvm.dbg.value(metadata !{i8** %desc}, i64 0, metadata !585) #5, !dbg !584
  call void @llvm.dbg.value(metadata !{i32 %nfile}, i64 0, metadata !586) #5, !dbg !587
  call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !588) #5, !dbg !587
  call void @llvm.dbg.value(metadata !{i32 %npar.2}, i64 0, metadata !589) #5, !dbg !590
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %par.0}, i64 0, metadata !591) #5, !dbg !590
  call void @llvm.dbg.value(metadata !{i32 %nbug}, i64 0, metadata !592) #5, !dbg !593
  call void @llvm.dbg.value(metadata !{i8** %bugs}, i64 0, metadata !594) #5, !dbg !593
  call fastcc void @mydate() #7, !dbg !595
  %call1.i125 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([15 x i8]* @.str156, i64 0, i64 0), i8* %pr.0, i8* getelementptr inbounds ([128 x i8]* @mydate.tbuf, i64 0, i64 0)) #7, !dbg !595
  %23 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str157, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %out) #5, !dbg !596
  %call3.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str66, i64 0, i64 0), i8* %pr.0) #7, !dbg !597
  %call4.i126 = call i8* @GromacsVersion() #7, !dbg !598
  %call5.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([7 x i8]* @.str158, i64 0, i64 0), i8* %call4.i126) #7, !dbg !598
  %24 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str159, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %out) #5, !dbg !599
  %call7.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([10 x i8]* @.str160, i64 0, i64 0), i8* %pr.0) #7, !dbg !600
  %cmp.i127 = icmp sgt i32 %nfile, 0, !dbg !601
  br i1 %cmp.i127, label %for.body.i130, label %if.end.i131, !dbg !601

for.body.i130:                                    ; preds = %if.then21, %for.body.i130
  %indvars.iv237.i = phi i64 [ %indvars.iv.next238.i, %for.body.i130 ], [ 0, %if.then21 ]
  %opt.i128 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv237.i, i32 1, !dbg !602
  %25 = load i8** %opt.i128, align 8, !dbg !602, !tbaa !371
  %fn.i129 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv237.i, i32 2, !dbg !602
  %26 = load i8** %fn.i129, align 8, !dbg !602, !tbaa !371
  %call11.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([17 x i8]* @.str161, i64 0, i64 0), i8* %25, i8* %26) #7, !dbg !602
  %indvars.iv.next238.i = add i64 %indvars.iv237.i, 1, !dbg !605
  %lftr.wideiv191 = trunc i64 %indvars.iv.next238.i to i32, !dbg !605
  %exitcond192 = icmp eq i32 %lftr.wideiv191, %nfile, !dbg !605
  br i1 %exitcond192, label %if.end.i131, label %for.body.i130, !dbg !605

if.end.i131:                                      ; preds = %for.body.i130, %if.then21
  %cmp12.i = icmp sgt i32 %npar.2, 0, !dbg !606
  br i1 %cmp12.i, label %for.body16.i, label %if.end37.i, !dbg !606

for.body16.i:                                     ; preds = %if.end.i131, %for.inc34.i
  %indvars.iv233.i = phi i64 [ %indvars.iv.next234.i, %for.inc34.i ], [ 0, %if.end.i131 ]
  %type.i132 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv233.i, i32 2, !dbg !607
  %27 = load i32* %type.i132, align 4, !dbg !607, !tbaa !432
  %cmp19.i = icmp eq i32 %27, 4, !dbg !607
  %option.i133 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv233.i, i32 0, !dbg !610
  %28 = load i8** %option.i133, align 8, !dbg !610, !tbaa !371
  br i1 %cmp19.i, label %if.then20.i, label %if.else.i134, !dbg !607

if.then20.i:                                      ; preds = %for.body16.i
  %add.ptr.i = getelementptr inbounds i8* %28, i64 1, !dbg !610
  %call23.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([18 x i8]* @.str162, i64 0, i64 0), i8* %add.ptr.i) #7, !dbg !610
  br label %for.inc34.i, !dbg !610

if.else.i134:                                     ; preds = %for.body16.i
  %idxprom30.i = sext i32 %27 to i64, !dbg !611
  %arrayidx31.i = getelementptr inbounds [7 x i8*]* @argtp, i64 0, i64 %idxprom30.i, !dbg !611
  %29 = load i8** %arrayidx31.i, align 8, !dbg !611, !tbaa !371
  %call32.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([17 x i8]* @.str161, i64 0, i64 0), i8* %28, i8* %29) #7, !dbg !611
  br label %for.inc34.i

for.inc34.i:                                      ; preds = %if.else.i134, %if.then20.i
  %indvars.iv.next234.i = add i64 %indvars.iv233.i, 1, !dbg !612
  %lftr.wideiv189 = trunc i64 %indvars.iv.next234.i to i32, !dbg !612
  %exitcond190 = icmp eq i32 %lftr.wideiv189, %npar.2, !dbg !612
  br i1 %exitcond190, label %if.end37.i, label %for.body16.i, !dbg !612

if.end37.i:                                       ; preds = %for.inc34.i, %if.end.i131
  %cmp38.i = icmp sgt i32 %nldesc, 0, !dbg !613
  br i1 %cmp38.i, label %for.body43.lr.ph.i, label %if.end51.i, !dbg !613

for.body43.lr.ph.i:                               ; preds = %if.end37.i
  %30 = call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str163, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %out) #5, !dbg !614
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !616) #5, !dbg !617
  br label %for.body43.i, !dbg !617

for.body43.i:                                     ; preds = %for.body43.i, %for.body43.lr.ph.i
  %indvars.iv229.i = phi i64 [ 0, %for.body43.lr.ph.i ], [ %indvars.iv.next230.i, %for.body43.i ]
  %arrayidx45.i = getelementptr inbounds i8** %desc, i64 %indvars.iv229.i, !dbg !619
  %31 = load i8** %arrayidx45.i, align 8, !dbg !619, !tbaa !371
  call void @llvm.dbg.value(metadata !{i8* %31}, i64 0, metadata !620) #5, !dbg !621
  %call.i.i135 = call fastcc i8* @repall(i8* %31, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #7, !dbg !622
  %call47.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str66, i64 0, i64 0), i8* %call.i.i135) #7, !dbg !619
  %indvars.iv.next230.i = add i64 %indvars.iv229.i, 1, !dbg !617
  %lftr.wideiv187 = trunc i64 %indvars.iv.next230.i to i32, !dbg !617
  %exitcond188 = icmp eq i32 %lftr.wideiv187, %nldesc, !dbg !617
  br i1 %exitcond188, label %if.end51.i, label %for.body43.i, !dbg !617

if.end51.i:                                       ; preds = %for.body43.i, %if.end37.i
  br i1 %cmp.i127, label %for.body57.lr.ph.i, label %if.end75.i, !dbg !623

for.body57.lr.ph.i:                               ; preds = %if.end51.i
  %32 = call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str164, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %out) #5, !dbg !624
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !616) #5, !dbg !626
  br label %for.body57.i, !dbg !626

for.body57.i:                                     ; preds = %for.body57.i, %for.body57.lr.ph.i
  %indvars.iv225.i = phi i64 [ 0, %for.body57.lr.ph.i ], [ %indvars.iv.next226.i, %for.body57.i ]
  %opt60.i = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv225.i, i32 1, !dbg !628
  %33 = load i8** %opt60.i, align 8, !dbg !628, !tbaa !371
  %fn63.i = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv225.i, i32 2, !dbg !628
  %34 = load i8** %fn63.i, align 8, !dbg !628, !tbaa !371
  %flag.i136 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv225.i, i32 3, !dbg !629
  %35 = load i64* %flag.i136, align 8, !dbg !629, !tbaa !527
  %call66.i = call i8* @fileopt(i64 %35) #7, !dbg !629
  %ftp.i137 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv225.i, i32 0, !dbg !630
  %36 = load i32* %ftp.i137, align 4, !dbg !630, !tbaa !432
  %call69.i = call i8* @ftp2desc(i32 %36) #7, !dbg !630
  call void @llvm.dbg.value(metadata !{i8* %call69.i}, i64 0, metadata !631) #5, !dbg !632
  %call.i203.i = call fastcc i8* @repall(i8* %call69.i, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #7, !dbg !633
  %call71.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([29 x i8]* @.str165, i64 0, i64 0), i8* %33, i8* %34, i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* %call.i203.i) #7, !dbg !630
  %indvars.iv.next226.i = add i64 %indvars.iv225.i, 1, !dbg !626
  %lftr.wideiv185 = trunc i64 %indvars.iv.next226.i to i32, !dbg !626
  %exitcond186 = icmp eq i32 %lftr.wideiv185, %nfile, !dbg !626
  br i1 %exitcond186, label %if.end75.i, label %for.body57.i, !dbg !626

if.end75.i:                                       ; preds = %for.body57.i, %if.end51.i
  %37 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str166, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %out) #5, !dbg !634
  br i1 %cmp12.i, label %for.body81.i, label %if.end122.i, !dbg !635

for.body81.i:                                     ; preds = %if.end75.i, %for.inc119.i
  %indvars.iv221.i = phi i64 [ %indvars.iv.next222.i, %for.inc119.i ], [ 0, %if.end75.i ]
  %arrayidx83.i = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv221.i, !dbg !636
  %type84.i = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv221.i, i32 2, !dbg !636
  %38 = load i32* %type84.i, align 4, !dbg !636, !tbaa !432
  %cmp85.i = icmp eq i32 %38, 4, !dbg !636
  %option89.i = getelementptr inbounds %struct.t_pargs* %arrayidx83.i, i64 0, i32 0, !dbg !640
  %39 = load i8** %option89.i, align 8, !dbg !640, !tbaa !371
  br i1 %cmp85.i, label %if.then86.i, label %if.else100.i, !dbg !636

if.then86.i:                                      ; preds = %for.body81.i
  %add.ptr90.i = getelementptr inbounds i8* %39, i64 1, !dbg !640
  call void @llvm.dbg.value(metadata !{i8* %add.ptr90.i}, i64 0, metadata !641) #5, !dbg !642
  %call.i204.i = call fastcc i8* @repall(i8* %add.ptr90.i, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #7, !dbg !643
  %call94.i = call i8* @pa_val(%struct.t_pargs* %arrayidx83.i) #7, !dbg !644
  %desc97.i = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv221.i, i32 4, !dbg !644
  %40 = load i8** %desc97.i, align 8, !dbg !644, !tbaa !371
  call void @llvm.dbg.value(metadata !{i8* %40}, i64 0, metadata !645) #5, !dbg !646
  %call.i205.i = call fastcc i8* @repall(i8* %40, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #7, !dbg !647
  %call99.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([26 x i8]* @.str167, i64 0, i64 0), i8* %call.i204.i, i8* %call94.i, i8* %call.i205.i) #7, !dbg !644
  br label %for.inc119.i, !dbg !644

if.else100.i:                                     ; preds = %for.body81.i
  call void @llvm.dbg.value(metadata !{i8* %39}, i64 0, metadata !648) #5, !dbg !650
  %call.i206.i = call fastcc i8* @repall(i8* %39, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #7, !dbg !651
  %41 = load i32* %type84.i, align 4, !dbg !649, !tbaa !432
  %idxprom108.i = sext i32 %41 to i64, !dbg !649
  %arrayidx109.i = getelementptr inbounds [7 x i8*]* @argtp, i64 0, i64 %idxprom108.i, !dbg !649
  %42 = load i8** %arrayidx109.i, align 8, !dbg !649, !tbaa !371
  %call112.i = call i8* @pa_val(%struct.t_pargs* %arrayidx83.i) #7, !dbg !652
  %desc115.i = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv221.i, i32 4, !dbg !652
  %43 = load i8** %desc115.i, align 8, !dbg !652, !tbaa !371
  call void @llvm.dbg.value(metadata !{i8* %43}, i64 0, metadata !653) #5, !dbg !654
  %call.i207.i = call fastcc i8* @repall(i8* %43, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #7, !dbg !655
  %call117.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([29 x i8]* @.str168, i64 0, i64 0), i8* %call.i206.i, i8* %42, i8* %call112.i, i8* %call.i207.i) #7, !dbg !652
  br label %for.inc119.i

for.inc119.i:                                     ; preds = %if.else100.i, %if.then86.i
  %indvars.iv.next222.i = add i64 %indvars.iv221.i, 1, !dbg !656
  %lftr.wideiv183 = trunc i64 %indvars.iv.next222.i to i32, !dbg !656
  %exitcond184 = icmp eq i32 %lftr.wideiv183, %npar.2, !dbg !656
  br i1 %exitcond184, label %if.end122.i, label %for.body81.i, !dbg !656

if.end122.i:                                      ; preds = %for.inc119.i, %if.end75.i
  %cmp123.i = icmp sgt i32 %nbug, 0, !dbg !657
  br i1 %cmp123.i, label %for.body127.i, label %if.end22, !dbg !657

for.body127.i:                                    ; preds = %if.end122.i, %for.body127.i
  %indvars.iv.i138 = phi i64 [ %indvars.iv.next.i139, %for.body127.i ], [ 0, %if.end122.i ]
  %arrayidx129.i = getelementptr inbounds i8** %bugs, i64 %indvars.iv.i138, !dbg !658
  %44 = load i8** %arrayidx129.i, align 8, !dbg !658, !tbaa !371
  call void @llvm.dbg.value(metadata !{i8* %44}, i64 0, metadata !661) #5, !dbg !662
  %call.i208.i = call fastcc i8* @repall(i8* %44, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #7, !dbg !663
  %call131.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([8 x i8]* @.str169, i64 0, i64 0), i8* %call.i208.i) #7, !dbg !658
  %indvars.iv.next.i139 = add i64 %indvars.iv.i138, 1, !dbg !664
  %lftr.wideiv181 = trunc i64 %indvars.iv.next.i139 to i32, !dbg !664
  %exitcond182 = icmp eq i32 %lftr.wideiv181, %nbug, !dbg !664
  br i1 %exitcond182, label %if.end22, label %for.body127.i, !dbg !664

if.end22:                                         ; preds = %for.body127.i, %if.end122.i, %if.end18
  %call23 = call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([6 x i8]* @.str70, i64 0, i64 0)) #8, !dbg !665
  %cmp24 = icmp eq i32 %call23, 0, !dbg !665
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !665

if.then25:                                        ; preds = %if.end22
  call fastcc void @write_ttyman(%struct._IO_FILE* %out, i8* %pr.0, i32 %nldesc, i8** %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npar.2, %struct.t_pargs* %par.0, i32 %nbug, i8** %bugs, i32 1) #6, !dbg !666
  br label %if.end26, !dbg !666

if.end26:                                         ; preds = %if.then25, %if.end22
  %call27 = call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([5 x i8]* @.str71, i64 0, i64 0)) #8, !dbg !667
  %cmp28 = icmp eq i32 %call27, 0, !dbg !667
  br i1 %cmp28, label %if.then29, label %if.end30, !dbg !667

if.then29:                                        ; preds = %if.end26
  call fastcc void @write_ttyman(%struct._IO_FILE* %out, i8* %pr.0, i32 %nldesc, i8** %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npar.2, %struct.t_pargs* %par.0, i32 %nbug, i8** %bugs, i32 0) #6, !dbg !668
  br label %if.end30, !dbg !668

if.end30:                                         ; preds = %if.then29, %if.end26
  %call31 = call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([5 x i8]* @.str72, i64 0, i64 0)) #8, !dbg !669
  %cmp32 = icmp eq i32 %call31, 0, !dbg !669
  br i1 %cmp32, label %if.then33, label %if.end34, !dbg !669

if.then33:                                        ; preds = %if.end30
  %45 = getelementptr inbounds [10 x i8]* %link.i, i64 0, i64 0, !dbg !670
  call void @llvm.lifetime.start(i64 10, i8* %45) #5, !dbg !670
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !672) #5, !dbg !670
  call void @llvm.dbg.value(metadata !{i8* %pr.0}, i64 0, metadata !673) #5, !dbg !674
  call void @llvm.dbg.value(metadata !{i32 %nldesc}, i64 0, metadata !675) #5, !dbg !676
  call void @llvm.dbg.value(metadata !{i8** %desc}, i64 0, metadata !677) #5, !dbg !676
  call void @llvm.dbg.value(metadata !{i32 %nfile}, i64 0, metadata !678) #5, !dbg !679
  call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !680) #5, !dbg !679
  call void @llvm.dbg.value(metadata !{i32 %npar.2}, i64 0, metadata !681) #5, !dbg !682
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %par.0}, i64 0, metadata !683) #5, !dbg !682
  call void @llvm.dbg.value(metadata !{i32 %nbug}, i64 0, metadata !684) #5, !dbg !685
  call void @llvm.dbg.value(metadata !{i8** %bugs}, i64 0, metadata !686) #5, !dbg !685
  call void @llvm.dbg.declare(metadata !{[10 x i8]* %link.i}, metadata !221) #5, !dbg !687
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([33 x i8]* @.str94, i64 0, i64 0), i8* %pr.0) #7, !dbg !688
  %46 = call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str95, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %out) #5, !dbg !689
  %47 = call i64 @fwrite(i8* getelementptr inbounds ([88 x i8]* @.str96, i64 0, i64 0), i64 87, i64 1, %struct._IO_FILE* %out) #5, !dbg !690
  %call3.i142 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([51 x i8]* @.str97, i64 0, i64 0)) #7, !dbg !691
  %48 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str98, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %out) #5, !dbg !692
  %49 = call i64 @fwrite(i8* getelementptr inbounds ([113 x i8]* @.str99, i64 0, i64 0), i64 112, i64 1, %struct._IO_FILE* %out) #5, !dbg !693
  %call6.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([52 x i8]* @.str100, i64 0, i64 0), i8* %pr.0) #7, !dbg !694
  %50 = call i64 @fwrite(i8* getelementptr inbounds ([77 x i8]* @.str101, i64 0, i64 0), i64 76, i64 1, %struct._IO_FILE* %out) #5, !dbg !695
  %call8.i = call i8* @GromacsVersion() #7, !dbg !696
  %call9.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([77 x i8]* @.str102, i64 0, i64 0), i8* %call8.i) #7, !dbg !696
  call fastcc void @mydate() #7, !dbg !697
  %call11.i143 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([31 x i8]* @.str103, i64 0, i64 0), i8* getelementptr inbounds ([128 x i8]* @mydate.tbuf, i64 0, i64 0)) #7, !dbg !697
  %cmp.i144 = icmp sgt i32 %nldesc, 0, !dbg !698
  br i1 %cmp.i144, label %for.body.lr.ph.i, label %if.end.i147, !dbg !698

for.body.lr.ph.i:                                 ; preds = %if.then33
  %51 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str104, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %out) #5, !dbg !699
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !701) #5, !dbg !702
  br label %for.body.i146, !dbg !702

for.body.i146:                                    ; preds = %for.body.i146, %for.body.lr.ph.i
  %indvars.iv186.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next187.i, %for.body.i146 ]
  %arrayidx.i145 = getelementptr inbounds i8** %desc, i64 %indvars.iv186.i, !dbg !704
  %52 = load i8** %arrayidx.i145, align 8, !dbg !704, !tbaa !371
  %call14.i = call i8* @check_html(i8* %52, i8* %pr.0) #7, !dbg !704
  %call15.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str66, i64 0, i64 0), i8* %call14.i) #7, !dbg !704
  %indvars.iv.next187.i = add i64 %indvars.iv186.i, 1, !dbg !702
  %lftr.wideiv179 = trunc i64 %indvars.iv.next187.i to i32, !dbg !702
  %exitcond180 = icmp eq i32 %lftr.wideiv179, %nldesc, !dbg !702
  br i1 %exitcond180, label %if.end.i147, label %for.body.i146, !dbg !702

if.end.i147:                                      ; preds = %for.body.i146, %if.then33
  %cmp16.i = icmp sgt i32 %nfile, 0, !dbg !705
  br i1 %cmp16.i, label %for.body23.lr.ph.i, label %if.end53.i, !dbg !705

for.body23.lr.ph.i:                               ; preds = %if.end.i147
  %53 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str105, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %out) #5, !dbg !706
  %54 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str106, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %out) #5, !dbg !708
  %55 = call i64 @fwrite(i8* getelementptr inbounds ([121 x i8]* @.str107, i64 0, i64 0), i64 120, i64 1, %struct._IO_FILE* %out) #5, !dbg !709
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !701) #5, !dbg !710
  br label %for.body23.i, !dbg !710

for.body23.i:                                     ; preds = %if.end34.i, %for.body23.lr.ph.i
  %indvars.iv182.i = phi i64 [ 0, %for.body23.lr.ph.i ], [ %indvars.iv.next183.i, %if.end34.i ]
  %ftp.i148 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv182.i, i32 0, !dbg !712
  %56 = load i32* %ftp.i148, align 4, !dbg !712, !tbaa !432
  %call26.i = call i8* @ftp2ext(i32 %56) #7, !dbg !712
  %call27.i149 = call i8* @strcpy(i8* %45, i8* %call26.i) #7, !dbg !712
  %call29.i = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([4 x i8]* @.str108, i64 0, i64 0)) #8, !dbg !714
  %cmp30.i = icmp eq i32 %call29.i, 0, !dbg !714
  br i1 %cmp30.i, label %if.then31.i, label %if.end34.i, !dbg !714

if.then31.i:                                      ; preds = %for.body23.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* getelementptr inbounds ([6 x i8]* @.str109, i64 0, i64 0), i64 6, i32 1, i1 false) #5, !dbg !715
  br label %if.end34.i, !dbg !715

if.end34.i:                                       ; preds = %if.then31.i, %for.body23.i
  %opt.i150 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv182.i, i32 1, !dbg !716
  %57 = load i8** %opt.i150, align 8, !dbg !716, !tbaa !371
  %fn.i151 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv182.i, i32 2, !dbg !716
  %58 = load i8** %fn.i151, align 8, !dbg !716, !tbaa !371
  %flag.i152 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv182.i, i32 3, !dbg !717
  %59 = load i64* %flag.i152, align 8, !dbg !717, !tbaa !527
  %call42.i = call i8* @fileopt(i64 %59) #7, !dbg !717
  %60 = load i32* %ftp.i148, align 4, !dbg !718, !tbaa !432
  %call46.i = call i8* @ftp2desc(i32 %60) #7, !dbg !718
  %call47.i153 = call i8* @check_html(i8* %call46.i, i8* %pr.0) #7, !dbg !718
  %call48.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([136 x i8]* @.str110, i64 0, i64 0), i8* %57, i8* %45, i8* %58, i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* %call47.i153) #7, !dbg !718
  %indvars.iv.next183.i = add i64 %indvars.iv182.i, 1, !dbg !710
  %lftr.wideiv177 = trunc i64 %indvars.iv.next183.i to i32, !dbg !710
  %exitcond178 = icmp eq i32 %lftr.wideiv177, %nfile, !dbg !710
  br i1 %exitcond178, label %for.end51.i, label %for.body23.i, !dbg !710

for.end51.i:                                      ; preds = %if.end34.i
  %61 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str111, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %out) #5, !dbg !719
  br label %if.end53.i, !dbg !720

if.end53.i:                                       ; preds = %for.end51.i, %if.end.i147
  %cmp54.i = icmp sgt i32 %npar.2, 0, !dbg !721
  br i1 %cmp54.i, label %for.body61.lr.ph.i, label %if.end84.i, !dbg !721

for.body61.lr.ph.i:                               ; preds = %if.end53.i
  %62 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str105, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %out) #5, !dbg !722
  %63 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str112, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %out) #5, !dbg !724
  %64 = call i64 @fwrite(i8* getelementptr inbounds ([120 x i8]* @.str113, i64 0, i64 0), i64 119, i64 1, %struct._IO_FILE* %out) #5, !dbg !725
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !701) #5, !dbg !726
  br label %for.body61.i, !dbg !726

for.body61.i:                                     ; preds = %for.body61.i, %for.body61.lr.ph.i
  %indvars.iv178.i = phi i64 [ 0, %for.body61.lr.ph.i ], [ %indvars.iv.next179.i, %for.body61.i ]
  %arrayidx63.i = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv178.i, !dbg !728
  %type.i154 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv178.i, i32 2, !dbg !728
  %65 = load i32* %type.i154, align 4, !dbg !728, !tbaa !432
  %cmp64.i = icmp eq i32 %65, 4, !dbg !728
  %cond.i = select i1 %cmp64.i, i8* getelementptr inbounds ([6 x i8]* @.str115, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str116, i64 0, i64 0), !dbg !728
  %option.i155 = getelementptr inbounds %struct.t_pargs* %arrayidx63.i, i64 0, i32 0, !dbg !728
  %66 = load i8** %option.i155, align 8, !dbg !728, !tbaa !371
  %add.ptr.i156 = getelementptr inbounds i8* %66, i64 1, !dbg !728
  %idxprom70.i = sext i32 %65 to i64, !dbg !728
  %arrayidx71.i = getelementptr inbounds [7 x i8*]* @argtp, i64 0, i64 %idxprom70.i, !dbg !728
  %67 = load i8** %arrayidx71.i, align 8, !dbg !728, !tbaa !371
  %call74.i = call i8* @pa_val(%struct.t_pargs* %arrayidx63.i) #7, !dbg !729
  %desc77.i = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv178.i, i32 4, !dbg !729
  %68 = load i8** %desc77.i, align 8, !dbg !729, !tbaa !371
  %call78.i = call i8* @check_html(i8* %68, i8* %pr.0) #7, !dbg !729
  %call79.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([126 x i8]* @.str114, i64 0, i64 0), i8* %cond.i, i8* %add.ptr.i156, i8* %67, i8* %call74.i, i8* %call78.i) #7, !dbg !729
  %indvars.iv.next179.i = add i64 %indvars.iv178.i, 1, !dbg !726
  %lftr.wideiv175 = trunc i64 %indvars.iv.next179.i to i32, !dbg !726
  %exitcond176 = icmp eq i32 %lftr.wideiv175, %npar.2, !dbg !726
  br i1 %exitcond176, label %for.end82.i, label %for.body61.i, !dbg !726

for.end82.i:                                      ; preds = %for.body61.i
  %69 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str111, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %out) #5, !dbg !730
  br label %if.end84.i, !dbg !731

if.end84.i:                                       ; preds = %for.end82.i, %if.end53.i
  %cmp85.i157 = icmp sgt i32 %nbug, 0, !dbg !732
  br i1 %cmp85.i157, label %for.body91.lr.ph.i, label %write_htmlman.exit, !dbg !732

for.body91.lr.ph.i:                               ; preds = %if.end84.i
  %70 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str105, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %out) #5, !dbg !733
  %71 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8]* @.str117, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %out) #5, !dbg !735
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !701) #5, !dbg !736
  br label %for.body91.i, !dbg !736

for.body91.i:                                     ; preds = %for.body91.i, %for.body91.lr.ph.i
  %indvars.iv.i158 = phi i64 [ 0, %for.body91.lr.ph.i ], [ %indvars.iv.next.i160, %for.body91.i ]
  %arrayidx93.i = getelementptr inbounds i8** %bugs, i64 %indvars.iv.i158, !dbg !738
  %72 = load i8** %arrayidx93.i, align 8, !dbg !738, !tbaa !371
  %call94.i159 = call i8* @check_html(i8* %72, i8* %pr.0) #7, !dbg !738
  %call95.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([8 x i8]* @.str118, i64 0, i64 0), i8* %call94.i159) #7, !dbg !738
  %indvars.iv.next.i160 = add i64 %indvars.iv.i158, 1, !dbg !736
  %lftr.wideiv = trunc i64 %indvars.iv.next.i160 to i32, !dbg !736
  %exitcond = icmp eq i32 %lftr.wideiv, %nbug, !dbg !736
  br i1 %exitcond, label %for.end98.i, label %for.body91.i, !dbg !736

for.end98.i:                                      ; preds = %for.body91.i
  %73 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8]* @.str119, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %out) #5, !dbg !739
  br label %write_htmlman.exit, !dbg !740

write_htmlman.exit:                               ; preds = %if.end84.i, %for.end98.i
  %74 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str105, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %out) #5, !dbg !741
  %75 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str120, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %out) #5, !dbg !742
  %76 = call i64 @fwrite(i8* getelementptr inbounds ([88 x i8]* @.str121, i64 0, i64 0), i64 87, i64 1, %struct._IO_FILE* %out) #5, !dbg !743
  %77 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str122, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %out) #5, !dbg !744
  %78 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str123, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %out) #5, !dbg !745
  call void @llvm.lifetime.end(i64 10, i8* %45) #5, !dbg !746
  br label %if.end34, !dbg !671

if.end34:                                         ; preds = %write_htmlman.exit, %if.end30
  %call35 = call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([15 x i8]* @.str73, i64 0, i64 0)) #8, !dbg !747
  %cmp36 = icmp eq i32 %call35, 0, !dbg !747
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !747

if.then37:                                        ; preds = %if.end34
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !748) #5, !dbg !750
  call void @llvm.dbg.value(metadata !{i32 %nfile}, i64 0, metadata !751) #5, !dbg !752
  call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !753) #5, !dbg !752
  call void @llvm.dbg.value(metadata !{i32 %npar.2}, i64 0, metadata !754) #5, !dbg !755
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %par.0}, i64 0, metadata !756) #5, !dbg !755
  %79 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str92, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %out) #5, !dbg !757
  call fastcc void @pr_opts(%struct._IO_FILE* %out, i32 %nfile, %struct.t_filenm* %fnm, i32 %npar.2, %struct.t_pargs* %par.0, i32 2) #7, !dbg !758
  call void @pr_enums(%struct._IO_FILE* %out, i32 %npar.2, %struct.t_pargs* %par.0, i32 2) #7, !dbg !759
  call void @pr_fopts(%struct._IO_FILE* %out, i32 %nfile, %struct.t_filenm* %fnm, i32 2) #7, !dbg !760
  %call1.i163 = call i8* @ShortProgram() #7, !dbg !761
  %call2.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([7 x i8]* @.str93, i64 0, i64 0), i8* %call1.i163) #7, !dbg !761
  br label %if.end38, !dbg !749

if.end38:                                         ; preds = %if.then37, %if.end34
  %call39 = call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([16 x i8]* @.str74, i64 0, i64 0)) #8, !dbg !762
  %cmp40 = icmp eq i32 %call39, 0, !dbg !762
  br i1 %cmp40, label %if.then41, label %if.end42, !dbg !762

if.then41:                                        ; preds = %if.end38
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !763) #5, !dbg !765
  call void @llvm.dbg.value(metadata !{i32 %nfile}, i64 0, metadata !766) #5, !dbg !767
  call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !768) #5, !dbg !767
  call void @llvm.dbg.value(metadata !{i32 %npar.2}, i64 0, metadata !769) #5, !dbg !770
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %par.0}, i64 0, metadata !771) #5, !dbg !770
  %80 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8]* @.str87, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %out) #5, !dbg !772
  %call1.i164 = call i8* @ShortProgram() #7, !dbg !773
  %call2.i165 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([25 x i8]* @.str88, i64 0, i64 0), i8* %call1.i164) #7, !dbg !773
  %81 = call i64 @fwrite(i8* getelementptr inbounds ([72 x i8]* @.str89, i64 0, i64 0), i64 71, i64 1, %struct._IO_FILE* %out) #5, !dbg !774
  call fastcc void @pr_opts(%struct._IO_FILE* %out, i32 %nfile, %struct.t_filenm* %fnm, i32 %npar.2, %struct.t_pargs* %par.0, i32 1) #7, !dbg !775
  %82 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str90, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %out) #5, !dbg !776
  call void @pr_enums(%struct._IO_FILE* %out, i32 %npar.2, %struct.t_pargs* %par.0, i32 1) #7, !dbg !777
  call void @pr_fopts(%struct._IO_FILE* %out, i32 %nfile, %struct.t_filenm* %fnm, i32 1) #7, !dbg !778
  %call5.i166 = call i8* @ShortProgram() #7, !dbg !779
  %call6.i167 = call i8* @ShortProgram() #7, !dbg !779
  %call7.i168 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([36 x i8]* @.str91, i64 0, i64 0), i8* %call5.i166, i8* %call6.i167) #7, !dbg !779
  br label %if.end42, !dbg !764

if.end42:                                         ; preds = %if.then41, %if.end38
  %call43 = call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([15 x i8]* @.str75, i64 0, i64 0)) #8, !dbg !780
  %cmp44 = icmp eq i32 %call43, 0, !dbg !780
  br i1 %cmp44, label %if.then45, label %if.end46, !dbg !780

if.then45:                                        ; preds = %if.end42
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !781) #5, !dbg !783
  call void @llvm.dbg.value(metadata !{i32 %nfile}, i64 0, metadata !784) #5, !dbg !785
  call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !786) #5, !dbg !785
  call void @llvm.dbg.value(metadata !{i32 %npar.2}, i64 0, metadata !787) #5, !dbg !788
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %par.0}, i64 0, metadata !789) #5, !dbg !788
  %call.i169 = call i8* @ShortProgram() #7, !dbg !790
  %call1.i170 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([12 x i8]* @.str76, i64 0, i64 0), i8* %call.i169) #7, !dbg !790
  call void @pr_enums(%struct._IO_FILE* %out, i32 %npar.2, %struct.t_pargs* %par.0, i32 0) #7, !dbg !791
  call void @pr_fopts(%struct._IO_FILE* %out, i32 %nfile, %struct.t_filenm* %fnm, i32 0) #7, !dbg !792
  call fastcc void @pr_opts(%struct._IO_FILE* %out, i32 %nfile, %struct.t_filenm* %fnm, i32 %npar.2, %struct.t_pargs* %par.0, i32 0) #7, !dbg !793
  %fputc.i171 = call i32 @fputc(i32 10, %struct._IO_FILE* %out) #5, !dbg !794
  br label %if.end46, !dbg !782

if.end46:                                         ; preds = %if.then45, %if.end42
  br i1 %tobool, label %if.end49, label %if.then48, !dbg !795

if.then48:                                        ; preds = %if.end46
  %83 = bitcast %struct.t_pargs* %par.0 to i8*, !dbg !796
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str63, i64 0, i64 0), i32 664, i8* %83) #7, !dbg !796
  br label %if.end49, !dbg !796

if.end49:                                         ; preds = %if.then48, %if.end46
  ret void, !dbg !797
}

; Function Attrs: optsize
declare i32 @is_hidden(%struct.t_pargs*) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #5

; Function Attrs: nounwind optsize readonly
declare i8* @strrchr(i8*, i32) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @write_ttyman(%struct._IO_FILE* %out, i8* %program, i32 %nldesc, i8** nocapture %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npargs, %struct.t_pargs* %pa, i32 %nbug, i8** nocapture %bugs, i32 %bHeader) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !254), !dbg !798
  tail call void @llvm.dbg.value(metadata !{i8* %program}, i64 0, metadata !255), !dbg !799
  tail call void @llvm.dbg.value(metadata !{i32 %nldesc}, i64 0, metadata !256), !dbg !800
  tail call void @llvm.dbg.value(metadata !{i8** %desc}, i64 0, metadata !257), !dbg !800
  tail call void @llvm.dbg.value(metadata !{i32 %nfile}, i64 0, metadata !258), !dbg !801
  tail call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !259), !dbg !801
  tail call void @llvm.dbg.value(metadata !{i32 %npargs}, i64 0, metadata !260), !dbg !802
  tail call void @llvm.dbg.value(metadata !{%struct.t_pargs* %pa}, i64 0, metadata !261), !dbg !802
  tail call void @llvm.dbg.value(metadata !{i32 %nbug}, i64 0, metadata !262), !dbg !803
  tail call void @llvm.dbg.value(metadata !{i8** %bugs}, i64 0, metadata !263), !dbg !803
  tail call void @llvm.dbg.value(metadata !{i32 %bHeader}, i64 0, metadata !264), !dbg !803
  %tobool = icmp eq i32 %bHeader, 0, !dbg !804
  br i1 %tobool, label %if.end, label %if.then, !dbg !804

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{i8* %program}, i64 0, metadata !805) #5, !dbg !808
  %call.i = tail call fastcc i8* @repall(i8* %program, i32 8, %struct.t_sandr* getelementptr inbounds ([8 x %struct.t_sandr]* @sandrTty, i64 0, i64 0)) #7, !dbg !809
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([5 x i8]* @.str151, i64 0, i64 0), i8* %call.i) #7, !dbg !806
  %call2 = tail call i8* @GromacsVersion() #7, !dbg !810
  tail call fastcc void @mydate() #6, !dbg !810
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([7 x i8]* @.str152, i64 0, i64 0), i8* %call2, i8* getelementptr inbounds ([128 x i8]* @mydate.tbuf, i64 0, i64 0)) #7, !dbg !810
  br label %if.end, !dbg !811

if.end:                                           ; preds = %entry, %if.then
  %cmp = icmp sgt i32 %nldesc, 0, !dbg !812
  br i1 %cmp, label %if.then5, label %if.end7, !dbg !812

if.then5:                                         ; preds = %if.end
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str153, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %out), !dbg !813
  tail call void @print_tty_formatted(%struct._IO_FILE* %out, i32 %nldesc, i8** %desc) #6, !dbg !815
  br label %if.end7, !dbg !816

if.end7:                                          ; preds = %if.then5, %if.end
  %cmp8 = icmp sgt i32 %nbug, 0, !dbg !817
  br i1 %cmp8, label %for.body.lr.ph, label %if.end20, !dbg !817

for.body.lr.ph:                                   ; preds = %if.end7
  %fputc51 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out), !dbg !818
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !265), !dbg !820
  br label %for.body, !dbg !820

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i8** %bugs, i64 %indvars.iv, !dbg !822
  %1 = load i8** %arrayidx, align 8, !dbg !822, !tbaa !371
  %call12 = tail call i64 @strlen(i8* %1) #8, !dbg !822
  %add = add i64 %call12, 3, !dbg !822
  %conv = trunc i64 %add to i32, !dbg !822
  %call13 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str154, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str63, i64 0, i64 0), i32 407, i32 %conv, i32 1) #7, !dbg !822
  tail call void @llvm.dbg.value(metadata !{i8* %call13}, i64 0, metadata !266), !dbg !822
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call13, i8* getelementptr inbounds ([3 x i8]* @.str155, i64 0, i64 0), i64 3, i32 1, i1 false), !dbg !824
  %add.ptr = getelementptr inbounds i8* %call13, i64 2, !dbg !825
  %2 = load i8** %arrayidx, align 8, !dbg !825, !tbaa !371
  %call17 = tail call i8* @strcpy(i8* %add.ptr, i8* %2) #7, !dbg !825
  %call18 = tail call i8* @wrap_lines(i8* %call13, i32 80, i32 2) #7, !dbg !826
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str66, i64 0, i64 0), i8* %call18) #7, !dbg !826
  tail call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str154, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str63, i64 0, i64 0), i32 411, i8* %call13) #7, !dbg !827
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !820
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !820
  %exitcond = icmp eq i32 %lftr.wideiv, %nbug, !dbg !820
  br i1 %exitcond, label %if.end20, label %for.body, !dbg !820

if.end20:                                         ; preds = %for.body, %if.end7
  %cmp21 = icmp sgt i32 %nfile, 0, !dbg !828
  br i1 %cmp21, label %if.then23, label %if.end25, !dbg !828

if.then23:                                        ; preds = %if.end20
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out), !dbg !829
  tail call void @pr_fns(%struct._IO_FILE* %out, i32 %nfile, %struct.t_filenm* %fnm) #7, !dbg !831
  br label %if.end25, !dbg !832

if.end25:                                         ; preds = %if.then23, %if.end20
  %cmp26 = icmp sgt i32 %npargs, 0, !dbg !833
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !833

if.then28:                                        ; preds = %if.end25
  tail call void @print_pargs(%struct._IO_FILE* %out, i32 %npargs, %struct.t_pargs* %pa) #7, !dbg !834
  br label %if.end29, !dbg !836

if.end29:                                         ; preds = %if.then28, %if.end25
  ret void, !dbg !837
}

; Function Attrs: optsize
declare i8* @ShortProgram() #4

; Function Attrs: optsize
declare void @pr_enums(%struct._IO_FILE*, i32, %struct.t_pargs*, i32) #4

; Function Attrs: optsize
declare void @pr_fopts(%struct._IO_FILE*, i32, %struct.t_filenm*, i32) #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @pr_opts(%struct._IO_FILE* nocapture %fp, i32 %nfile, %struct.t_filenm* nocapture %fnm, i32 %npargs, %struct.t_pargs* nocapture %pa, i32 %shell) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !185), !dbg !838
  tail call void @llvm.dbg.value(metadata !{i32 %nfile}, i64 0, metadata !186), !dbg !839
  tail call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !187), !dbg !839
  tail call void @llvm.dbg.value(metadata !{i32 %npargs}, i64 0, metadata !188), !dbg !840
  tail call void @llvm.dbg.value(metadata !{%struct.t_pargs* %pa}, i64 0, metadata !189), !dbg !840
  tail call void @llvm.dbg.value(metadata !{i32 %shell}, i64 0, metadata !190), !dbg !840
  switch i32 %shell, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb23
    i32 2, label %sw.bb66
  ], !dbg !841

sw.bb:                                            ; preds = %entry
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str77, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %fp), !dbg !842
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !191), !dbg !844
  %cmp168 = icmp sgt i32 %nfile, 0, !dbg !844
  br i1 %cmp168, label %for.body, label %for.cond2.preheader, !dbg !844

for.cond2.preheader:                              ; preds = %for.body, %sw.bb
  %cmp3166 = icmp sgt i32 %npargs, 0, !dbg !846
  br i1 %cmp3166, label %for.body4, label %for.end21, !dbg !846

for.body:                                         ; preds = %sw.bb, %for.body
  %indvars.iv178 = phi i64 [ %indvars.iv.next179, %for.body ], [ 0, %sw.bb ]
  %opt = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv178, i32 1, !dbg !848
  %1 = load i8** %opt, align 8, !dbg !848, !tbaa !371
  %add.ptr = getelementptr inbounds i8* %1, i64 1, !dbg !848
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str78, i64 0, i64 0), i8* %add.ptr) #7, !dbg !848
  %indvars.iv.next179 = add i64 %indvars.iv178, 1, !dbg !844
  %lftr.wideiv180 = trunc i64 %indvars.iv.next179 to i32, !dbg !844
  %exitcond181 = icmp eq i32 %lftr.wideiv180, %nfile, !dbg !844
  br i1 %exitcond181, label %for.cond2.preheader, label %for.body, !dbg !844

for.body4:                                        ; preds = %for.cond2.preheader, %for.inc19
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc19 ], [ 0, %for.cond2.preheader ]
  %arrayidx6 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, !dbg !849
  %type = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 2, !dbg !849
  %2 = load i32* %type, align 4, !dbg !849, !tbaa !432
  %cmp7 = icmp eq i32 %2, 4, !dbg !849
  br i1 %cmp7, label %land.lhs.true, label %if.else, !dbg !849

land.lhs.true:                                    ; preds = %for.body4
  %u = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 3, !dbg !849
  %b = bitcast %union.anon* %u to i32**, !dbg !849
  %3 = load i32** %b, align 8, !dbg !849, !tbaa !371
  %4 = load i32* %3, align 4, !dbg !849, !tbaa !432
  %tobool = icmp eq i32 %4, 0, !dbg !849
  br i1 %tobool, label %if.else, label %if.then, !dbg !849

if.then:                                          ; preds = %land.lhs.true
  %option = getelementptr inbounds %struct.t_pargs* %arrayidx6, i64 0, i32 0, !dbg !850
  %5 = load i8** %option, align 8, !dbg !850, !tbaa !371
  %add.ptr12 = getelementptr inbounds i8* %5, i64 1, !dbg !850
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str79, i64 0, i64 0), i8* %add.ptr12) #7, !dbg !850
  br label %for.inc19, !dbg !850

if.else:                                          ; preds = %land.lhs.true, %for.body4
  %option16 = getelementptr inbounds %struct.t_pargs* %arrayidx6, i64 0, i32 0, !dbg !851
  %6 = load i8** %option16, align 8, !dbg !851, !tbaa !371
  %add.ptr17 = getelementptr inbounds i8* %6, i64 1, !dbg !851
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str78, i64 0, i64 0), i8* %add.ptr17) #7, !dbg !851
  br label %for.inc19

for.inc19:                                        ; preds = %if.then, %if.else
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !846
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !846
  %exitcond = icmp eq i32 %lftr.wideiv, %npargs, !dbg !846
  br i1 %exitcond, label %for.end21, label %for.body4, !dbg !846

for.end21:                                        ; preds = %for.inc19, %for.cond2.preheader
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str80, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %fp), !dbg !852
  br label %sw.epilog, !dbg !853

sw.bb23:                                          ; preds = %entry
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([78 x i8]* @.str81, i64 0, i64 0), i64 77, i64 1, %struct._IO_FILE* %fp), !dbg !854
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !191), !dbg !855
  %cmp26172 = icmp sgt i32 %nfile, 0, !dbg !855
  br i1 %cmp26172, label %for.body27, label %for.cond36.preheader, !dbg !855

for.cond36.preheader:                             ; preds = %for.body27, %sw.bb23
  %cmp37170 = icmp sgt i32 %npargs, 0, !dbg !857
  br i1 %cmp37170, label %for.body38, label %for.end64, !dbg !857

for.body27:                                       ; preds = %sw.bb23, %for.body27
  %indvars.iv186 = phi i64 [ %indvars.iv.next187, %for.body27 ], [ 0, %sw.bb23 ]
  %opt30 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv186, i32 1, !dbg !859
  %9 = load i8** %opt30, align 8, !dbg !859, !tbaa !371
  %add.ptr31 = getelementptr inbounds i8* %9, i64 1, !dbg !859
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str82, i64 0, i64 0), i8* %add.ptr31) #7, !dbg !859
  %indvars.iv.next187 = add i64 %indvars.iv186, 1, !dbg !855
  %lftr.wideiv188 = trunc i64 %indvars.iv.next187 to i32, !dbg !855
  %exitcond189 = icmp eq i32 %lftr.wideiv188, %nfile, !dbg !855
  br i1 %exitcond189, label %for.cond36.preheader, label %for.body27, !dbg !855

for.body38:                                       ; preds = %for.cond36.preheader, %for.inc62
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %for.inc62 ], [ 0, %for.cond36.preheader ]
  %arrayidx40 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv182, !dbg !860
  %type41 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv182, i32 2, !dbg !860
  %10 = load i32* %type41, align 4, !dbg !860, !tbaa !432
  %cmp42 = icmp eq i32 %10, 4, !dbg !860
  br i1 %cmp42, label %land.lhs.true43, label %if.else55, !dbg !860

land.lhs.true43:                                  ; preds = %for.body38
  %u46 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv182, i32 3, !dbg !860
  %b47 = bitcast %union.anon* %u46 to i32**, !dbg !860
  %11 = load i32** %b47, align 8, !dbg !860, !tbaa !371
  %12 = load i32* %11, align 4, !dbg !860, !tbaa !432
  %tobool48 = icmp eq i32 %12, 0, !dbg !860
  br i1 %tobool48, label %if.else55, label %if.then49, !dbg !860

if.then49:                                        ; preds = %land.lhs.true43
  %option52 = getelementptr inbounds %struct.t_pargs* %arrayidx40, i64 0, i32 0, !dbg !861
  %13 = load i8** %option52, align 8, !dbg !861, !tbaa !371
  %add.ptr53 = getelementptr inbounds i8* %13, i64 1, !dbg !861
  %call54 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str83, i64 0, i64 0), i8* %add.ptr53) #7, !dbg !861
  br label %for.inc62, !dbg !861

if.else55:                                        ; preds = %land.lhs.true43, %for.body38
  %option58 = getelementptr inbounds %struct.t_pargs* %arrayidx40, i64 0, i32 0, !dbg !862
  %14 = load i8** %option58, align 8, !dbg !862, !tbaa !371
  %add.ptr59 = getelementptr inbounds i8* %14, i64 1, !dbg !862
  %call60 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str82, i64 0, i64 0), i8* %add.ptr59) #7, !dbg !862
  br label %for.inc62

for.inc62:                                        ; preds = %if.then49, %if.else55
  %indvars.iv.next183 = add i64 %indvars.iv182, 1, !dbg !857
  %lftr.wideiv184 = trunc i64 %indvars.iv.next183 to i32, !dbg !857
  %exitcond185 = icmp eq i32 %lftr.wideiv184, %npargs, !dbg !857
  br i1 %exitcond185, label %for.end64, label %for.body38, !dbg !857

for.end64:                                        ; preds = %for.inc62, %for.cond36.preheader
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([25 x i8]* @.str84, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %fp), !dbg !863
  br label %sw.epilog, !dbg !864

sw.bb66:                                          ; preds = %entry
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str85, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %fp), !dbg !865
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !191), !dbg !866
  %cmp69176 = icmp sgt i32 %nfile, 0, !dbg !866
  br i1 %cmp69176, label %for.body70, label %for.cond79.preheader, !dbg !866

for.cond79.preheader:                             ; preds = %for.body70, %sw.bb66
  %cmp80174 = icmp sgt i32 %npargs, 0, !dbg !868
  br i1 %cmp80174, label %for.body81, label %for.end107, !dbg !868

for.body70:                                       ; preds = %sw.bb66, %for.body70
  %indvars.iv194 = phi i64 [ %indvars.iv.next195, %for.body70 ], [ 0, %sw.bb66 ]
  %opt73 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv194, i32 1, !dbg !870
  %17 = load i8** %opt73, align 8, !dbg !870, !tbaa !371
  %add.ptr74 = getelementptr inbounds i8* %17, i64 1, !dbg !870
  %call75 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str78, i64 0, i64 0), i8* %add.ptr74) #7, !dbg !870
  %indvars.iv.next195 = add i64 %indvars.iv194, 1, !dbg !866
  %lftr.wideiv196 = trunc i64 %indvars.iv.next195 to i32, !dbg !866
  %exitcond197 = icmp eq i32 %lftr.wideiv196, %nfile, !dbg !866
  br i1 %exitcond197, label %for.cond79.preheader, label %for.body70, !dbg !866

for.body81:                                       ; preds = %for.cond79.preheader, %for.inc105
  %indvars.iv190 = phi i64 [ %indvars.iv.next191, %for.inc105 ], [ 0, %for.cond79.preheader ]
  %arrayidx83 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv190, !dbg !871
  %type84 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv190, i32 2, !dbg !871
  %18 = load i32* %type84, align 4, !dbg !871, !tbaa !432
  %cmp85 = icmp eq i32 %18, 4, !dbg !871
  br i1 %cmp85, label %land.lhs.true86, label %if.else98, !dbg !871

land.lhs.true86:                                  ; preds = %for.body81
  %u89 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv190, i32 3, !dbg !871
  %b90 = bitcast %union.anon* %u89 to i32**, !dbg !871
  %19 = load i32** %b90, align 8, !dbg !871, !tbaa !371
  %20 = load i32* %19, align 4, !dbg !871, !tbaa !432
  %tobool91 = icmp eq i32 %20, 0, !dbg !871
  br i1 %tobool91, label %if.else98, label %if.then92, !dbg !871

if.then92:                                        ; preds = %land.lhs.true86
  %option95 = getelementptr inbounds %struct.t_pargs* %arrayidx83, i64 0, i32 0, !dbg !872
  %21 = load i8** %option95, align 8, !dbg !872, !tbaa !371
  %add.ptr96 = getelementptr inbounds i8* %21, i64 1, !dbg !872
  %call97 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str79, i64 0, i64 0), i8* %add.ptr96) #7, !dbg !872
  br label %for.inc105, !dbg !872

if.else98:                                        ; preds = %land.lhs.true86, %for.body81
  %option101 = getelementptr inbounds %struct.t_pargs* %arrayidx83, i64 0, i32 0, !dbg !873
  %22 = load i8** %option101, align 8, !dbg !873, !tbaa !371
  %add.ptr102 = getelementptr inbounds i8* %22, i64 1, !dbg !873
  %call103 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str78, i64 0, i64 0), i8* %add.ptr102) #7, !dbg !873
  br label %for.inc105

for.inc105:                                       ; preds = %if.then92, %if.else98
  %indvars.iv.next191 = add i64 %indvars.iv190, 1, !dbg !868
  %lftr.wideiv192 = trunc i64 %indvars.iv.next191 to i32, !dbg !868
  %exitcond193 = icmp eq i32 %lftr.wideiv192, %npargs, !dbg !868
  br i1 %exitcond193, label %for.end107, label %for.body81, !dbg !868

for.end107:                                       ; preds = %for.inc105, %for.cond79.preheader
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str86, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp), !dbg !874
  br label %sw.epilog, !dbg !875

sw.epilog:                                        ; preds = %entry, %for.end107, %for.end64, %for.end21
  ret void, !dbg !876
}

; Function Attrs: optsize
declare i8* @GromacsVersion() #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @mydate() #0 {
entry:
  %now = alloca i64, align 8
  call void @llvm.dbg.declare(metadata !{i64* %now}, metadata !229), !dbg !877
  %call = call i64 @time(i64* %now) #7, !dbg !878
  %call1 = call %struct.tm* @localtime(i64* %now) #7, !dbg !879
  call void @llvm.dbg.value(metadata !{%struct.tm* %call1}, i64 0, metadata !232), !dbg !879
  %tm_wday = getelementptr inbounds %struct.tm* %call1, i64 0, i32 6, !dbg !880
  %0 = load i32* %tm_wday, align 4, !dbg !880, !tbaa !432
  %idxprom = sext i32 %0 to i64, !dbg !880
  %arrayidx = getelementptr inbounds [7 x i8*]* @mydate.day, i64 0, i64 %idxprom, !dbg !880
  %1 = load i8** %arrayidx, align 8, !dbg !880, !tbaa !371
  %tm_mday = getelementptr inbounds %struct.tm* %call1, i64 0, i32 3, !dbg !880
  %2 = load i32* %tm_mday, align 4, !dbg !880, !tbaa !432
  %tm_mon = getelementptr inbounds %struct.tm* %call1, i64 0, i32 4, !dbg !880
  %3 = load i32* %tm_mon, align 4, !dbg !880, !tbaa !432
  %idxprom2 = sext i32 %3 to i64, !dbg !880
  %arrayidx3 = getelementptr inbounds [12 x i8*]* @mydate.mon, i64 0, i64 %idxprom2, !dbg !880
  %4 = load i8** %arrayidx3, align 8, !dbg !880, !tbaa !371
  %tm_year = getelementptr inbounds %struct.tm* %call1, i64 0, i32 5, !dbg !880
  %5 = load i32* %tm_year, align 4, !dbg !880, !tbaa !432
  %add = add nsw i32 %5, 1900, !dbg !880
  %call4 = call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([128 x i8]* @mydate.tbuf, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str150, i64 0, i64 0), i8* %1, i32 %2, i8* %4, i32 %add) #7, !dbg !880
  ret void
}

; Function Attrs: optsize
declare i8* @ftp2ext(i32) #4

; Function Attrs: optsize
declare i8* @ftp2desc(i32) #4

; Function Attrs: optsize
declare i8* @pa_val(%struct.t_pargs*) #4

; Function Attrs: nounwind optsize
declare i64 @time(i64*) #2

; Function Attrs: nounwind optsize
declare %struct.tm* @localtime(i64*) #2

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @pr_fns(%struct._IO_FILE*, i32, %struct.t_filenm*) #4

; Function Attrs: optsize
declare void @print_pargs(%struct._IO_FILE*, i32, %struct.t_pargs*) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i32 @get_file(i8*, i8***) #4

; Function Attrs: nounwind optsize readonly
declare i32 @strcasecmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i8* @replaceww(i8*, i8*, i8*) #4

; Function Attrs: optsize
declare i8* @replace(i8*, i8*, i8*) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !21, metadata !22, metadata !327, metadata !21, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !10}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 121, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 121, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/enums.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9}
!6 = metadata !{i32 786472, metadata !"eshellCSH", i64 0} ; [ DW_TAG_enumerator ] [eshellCSH :: 0]
!7 = metadata !{i32 786472, metadata !"eshellBASH", i64 1} ; [ DW_TAG_enumerator ] [eshellBASH :: 1]
!8 = metadata !{i32 786472, metadata !"eshellZSH", i64 2} ; [ DW_TAG_enumerator ] [eshellZSH :: 2]
!9 = metadata !{i32 786472, metadata !"eshellNR", i64 3} ; [ DW_TAG_enumerator ] [eshellNR :: 3]
!10 = metadata !{i32 786436, metadata !11, null, metadata !"", i32 83, i64 32, i64 32, i32 0, i32 0, null, metadata !12, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 83, size 32, align 32, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20}
!13 = metadata !{i32 786472, metadata !"etINT", i64 0} ; [ DW_TAG_enumerator ] [etINT :: 0]
!14 = metadata !{i32 786472, metadata !"etREAL", i64 1} ; [ DW_TAG_enumerator ] [etREAL :: 1]
!15 = metadata !{i32 786472, metadata !"etTIME", i64 2} ; [ DW_TAG_enumerator ] [etTIME :: 2]
!16 = metadata !{i32 786472, metadata !"etSTR", i64 3} ; [ DW_TAG_enumerator ] [etSTR :: 3]
!17 = metadata !{i32 786472, metadata !"etBOOL", i64 4} ; [ DW_TAG_enumerator ] [etBOOL :: 4]
!18 = metadata !{i32 786472, metadata !"etRVEC", i64 5} ; [ DW_TAG_enumerator ] [etRVEC :: 5]
!19 = metadata !{i32 786472, metadata !"etENUM", i64 6} ; [ DW_TAG_enumerator ] [etENUM :: 6]
!20 = metadata !{i32 786472, metadata !"etNR", i64 7} ; [ DW_TAG_enumerator ] [etNR :: 7]
!21 = metadata !{i32 0}
!22 = metadata !{metadata !23, metadata !31, metadata !34, metadata !40, metadata !43, metadata !110, metadata !117, metadata !172, metadata !181, metadata !192, metadata !199, metadata !206, metadata !225, metadata !250, metadata !267, metadata !280, metadata !293, metadata !303, metadata !319}
!23 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"check_tex", metadata !"check_tex", metadata !"", i32 167, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*)* @check_tex, null, null, metadata !29, i32 168} ; [ DW_TAG_subprogram ] [line 167] [def] [scope 168] [check_tex]
!24 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!25 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!26 = metadata !{metadata !27, metadata !27}
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!28 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!29 = metadata !{metadata !30}
!30 = metadata !{i32 786689, metadata !23, metadata !"s", metadata !24, i32 16777383, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 167]
!31 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"check_nroff", metadata !"check_nroff", metadata !"", i32 172, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*)* @check_nroff, null, null, metadata !32, i32 173} ; [ DW_TAG_subprogram ] [line 172] [def] [scope 173] [check_nroff]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786689, metadata !31, metadata !"s", metadata !24, i32 16777388, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 172]
!34 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"fileopt", metadata !"fileopt", metadata !"", i32 201, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i64)* @fileopt, null, null, metadata !38, i32 202} ; [ DW_TAG_subprogram ] [line 201] [def] [scope 202] [fileopt]
!35 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!36 = metadata !{metadata !27, metadata !37}
!37 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!38 = metadata !{metadata !39}
!39 = metadata !{i32 786689, metadata !34, metadata !"flag", metadata !24, i32 16777417, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flag] [line 201]
!40 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"check_tty", metadata !"check_tty", metadata !"", i32 356, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*)* @check_tty, null, null, metadata !41, i32 357} ; [ DW_TAG_subprogram ] [line 356] [def] [scope 357] [check_tty]
!41 = metadata !{metadata !42}
!42 = metadata !{i32 786689, metadata !40, metadata !"s", metadata !24, i32 16777572, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 356]
!43 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"print_tty_formatted", metadata !"print_tty_formatted", metadata !"", i32 361, metadata !44, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, i8**)* @print_tty_formatted, null, null, metadata !102, i32 362} ; [ DW_TAG_subprogram ] [line 361] [def] [scope 362] [print_tty_formatted]
!44 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !45, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!45 = metadata !{null, metadata !46, metadata !52, metadata !101}
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!47 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!48 = metadata !{i32 786451, metadata !49, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !50, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!49 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!50 = metadata !{metadata !51, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !72, metadata !73, metadata !74, metadata !75, metadata !78, metadata !80, metadata !82, metadata !86, metadata !88, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !96, metadata !97}
!51 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !52} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!52 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!53 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!54 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!55 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !27} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!56 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !27} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!57 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !27} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!58 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !27} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!59 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !27} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!60 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !27} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!61 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !27} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!62 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !27} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!63 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !27} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!64 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !65} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!65 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !66} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!66 = metadata !{i32 786451, metadata !49, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !67, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!67 = metadata !{metadata !68, metadata !69, metadata !71}
!68 = metadata !{i32 786445, metadata !49, metadata !66, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !65} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!69 = metadata !{i32 786445, metadata !49, metadata !66, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !70} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!70 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!71 = metadata !{i32 786445, metadata !49, metadata !66, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !52} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!72 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !70} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!73 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !52} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!74 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !52} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!75 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !76} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!76 = metadata !{i32 786454, metadata !49, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!77 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!78 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !79} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!79 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!80 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !81} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!81 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!82 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !83} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!83 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !28, metadata !84, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!84 = metadata !{metadata !85}
!85 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!86 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !87} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!87 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!88 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !89} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!89 = metadata !{i32 786454, metadata !49, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!90 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !87} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!91 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !87} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!92 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !87} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!93 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !87} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!94 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !95} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!95 = metadata !{i32 786454, metadata !49, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!96 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !52} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!97 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !98} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!98 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !28, metadata !99, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!99 = metadata !{metadata !100}
!100 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!101 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!102 = metadata !{metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109}
!103 = metadata !{i32 786689, metadata !43, metadata !"out", metadata !24, i32 16777577, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 361]
!104 = metadata !{i32 786689, metadata !43, metadata !"nldesc", metadata !24, i32 33554793, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nldesc] [line 361]
!105 = metadata !{i32 786689, metadata !43, metadata !"desc", metadata !24, i32 50332009, metadata !101, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [desc] [line 361]
!106 = metadata !{i32 786688, metadata !43, metadata !"buf", metadata !24, i32 363, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 363]
!107 = metadata !{i32 786688, metadata !43, metadata !"temp", metadata !24, i32 363, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 363]
!108 = metadata !{i32 786688, metadata !43, metadata !"i", metadata !24, i32 364, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 364]
!109 = metadata !{i32 786688, metadata !43, metadata !"j", metadata !24, i32 364, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 364]
!110 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"check_html", metadata !"check_html", metadata !"", i32 423, metadata !111, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*)* @check_html, null, null, metadata !113, i32 424} ; [ DW_TAG_subprogram ] [line 423] [def] [scope 424] [check_html]
!111 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!112 = metadata !{metadata !27, metadata !27, metadata !27}
!113 = metadata !{metadata !114, metadata !115, metadata !116}
!114 = metadata !{i32 786689, metadata !110, metadata !"s", metadata !24, i32 16777639, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 423]
!115 = metadata !{i32 786689, metadata !110, metadata !"program", metadata !24, i32 33554855, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [program] [line 423]
!116 = metadata !{i32 786688, metadata !110, metadata !"buf", metadata !24, i32 425, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 425]
!117 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"write_man", metadata !"write_man", metadata !"", i32 613, metadata !118, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*, i8*, i32, i8**, i32, %struct.t_filenm*, i32, %struct.t_pargs*, i32, i8**, i32)* @write_man, null, null, metadata !155, i32 619} ; [ DW_TAG_subprogram ] [line 613] [def] [scope 619] [write_man]
!118 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !119, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!119 = metadata !{null, metadata !46, metadata !27, metadata !27, metadata !52, metadata !101, metadata !52, metadata !120, metadata !52, metadata !129, metadata !52, metadata !101, metadata !52}
!120 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !121} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_filenm]
!121 = metadata !{i32 786454, metadata !1, null, metadata !"t_filenm", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !122} ; [ DW_TAG_typedef ] [t_filenm] [line 62, size 0, align 0, offset 0] [from ]
!122 = metadata !{i32 786451, metadata !123, null, metadata !"", i32 57, i64 256, i64 64, i32 0, i32 0, null, metadata !124, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 57, size 256, align 64, offset 0] [from ]
!123 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/filenm.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!124 = metadata !{metadata !125, metadata !126, metadata !127, metadata !128}
!125 = metadata !{i32 786445, metadata !123, metadata !122, metadata !"ftp", i32 58, i64 32, i64 32, i64 0, i32 0, metadata !52} ; [ DW_TAG_member ] [ftp] [line 58, size 32, align 32, offset 0] [from int]
!126 = metadata !{i32 786445, metadata !123, metadata !122, metadata !"opt", i32 59, i64 64, i64 64, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [opt] [line 59, size 64, align 64, offset 64] [from ]
!127 = metadata !{i32 786445, metadata !123, metadata !122, metadata !"fn", i32 60, i64 64, i64 64, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ] [fn] [line 60, size 64, align 64, offset 128] [from ]
!128 = metadata !{i32 786445, metadata !123, metadata !122, metadata !"flag", i32 61, i64 64, i64 64, i64 192, i32 0, metadata !37} ; [ DW_TAG_member ] [flag] [line 61, size 64, align 64, offset 192] [from long unsigned int]
!129 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !130} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_pargs]
!130 = metadata !{i32 786454, metadata !1, null, metadata !"t_pargs", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !131} ; [ DW_TAG_typedef ] [t_pargs] [line 105, size 0, align 0, offset 0] [from ]
!131 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 91, i64 256, i64 64, i32 0, i32 0, null, metadata !132, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 91, size 256, align 64, offset 0] [from ]
!132 = metadata !{metadata !133, metadata !134, metadata !135, metadata !136, metadata !154}
!133 = metadata !{i32 786445, metadata !11, metadata !131, metadata !"option", i32 92, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [option] [line 92, size 64, align 64, offset 0] [from ]
!134 = metadata !{i32 786445, metadata !11, metadata !131, metadata !"bSet", i32 93, i64 32, i64 32, i64 64, i32 0, metadata !52} ; [ DW_TAG_member ] [bSet] [line 93, size 32, align 32, offset 64] [from int]
!135 = metadata !{i32 786445, metadata !11, metadata !131, metadata !"type", i32 94, i64 32, i64 32, i64 96, i32 0, metadata !52} ; [ DW_TAG_member ] [type] [line 94, size 32, align 32, offset 96] [from int]
!136 = metadata !{i32 786445, metadata !11, metadata !131, metadata !"u", i32 103, i64 64, i64 64, i64 128, i32 0, metadata !137} ; [ DW_TAG_member ] [u] [line 103, size 64, align 64, offset 128] [from ]
!137 = metadata !{i32 786455, metadata !11, metadata !131, metadata !"", i32 95, i64 64, i64 64, i64 0, i32 0, null, metadata !138, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 95, size 64, align 64, offset 0] [from ]
!138 = metadata !{metadata !139, metadata !140, metadata !142, metadata !146, metadata !147, metadata !148}
!139 = metadata !{i32 786445, metadata !11, metadata !137, metadata !"v", i32 96, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_member ] [v] [line 96, size 64, align 64, offset 0] [from ]
!140 = metadata !{i32 786445, metadata !11, metadata !137, metadata !"i", i32 97, i64 64, i64 64, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [i] [line 97, size 64, align 64, offset 0] [from ]
!141 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!142 = metadata !{i32 786445, metadata !11, metadata !137, metadata !"r", i32 98, i64 64, i64 64, i64 0, i32 0, metadata !143} ; [ DW_TAG_member ] [r] [line 98, size 64, align 64, offset 0] [from ]
!143 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !144} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!144 = metadata !{i32 786454, metadata !11, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !145} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!145 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!146 = metadata !{i32 786445, metadata !11, metadata !137, metadata !"c", i32 99, i64 64, i64 64, i64 0, i32 0, metadata !101} ; [ DW_TAG_member ] [c] [line 99, size 64, align 64, offset 0] [from ]
!147 = metadata !{i32 786445, metadata !11, metadata !137, metadata !"b", i32 101, i64 64, i64 64, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [b] [line 101, size 64, align 64, offset 0] [from ]
!148 = metadata !{i32 786445, metadata !11, metadata !137, metadata !"rv", i32 102, i64 64, i64 64, i64 0, i32 0, metadata !149} ; [ DW_TAG_member ] [rv] [line 102, size 64, align 64, offset 0] [from ]
!149 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !150} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!150 = metadata !{i32 786454, metadata !11, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !151} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!151 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !144, metadata !152, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!152 = metadata !{metadata !153}
!153 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!154 = metadata !{i32 786445, metadata !11, metadata !131, metadata !"desc", i32 104, i64 64, i64 64, i64 192, i32 0, metadata !27} ; [ DW_TAG_member ] [desc] [line 104, size 64, align 64, offset 192] [from ]
!155 = metadata !{metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171}
!156 = metadata !{i32 786689, metadata !117, metadata !"out", metadata !24, i32 16777829, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 613]
!157 = metadata !{i32 786689, metadata !117, metadata !"mantp", metadata !24, i32 33555045, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mantp] [line 613]
!158 = metadata !{i32 786689, metadata !117, metadata !"program", metadata !24, i32 50332262, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [program] [line 614]
!159 = metadata !{i32 786689, metadata !117, metadata !"nldesc", metadata !24, i32 67109479, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nldesc] [line 615]
!160 = metadata !{i32 786689, metadata !117, metadata !"desc", metadata !24, i32 83886695, metadata !101, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [desc] [line 615]
!161 = metadata !{i32 786689, metadata !117, metadata !"nfile", metadata !24, i32 100663912, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nfile] [line 616]
!162 = metadata !{i32 786689, metadata !117, metadata !"fnm", metadata !24, i32 117441128, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 616]
!163 = metadata !{i32 786689, metadata !117, metadata !"npargs", metadata !24, i32 134218345, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [npargs] [line 617]
!164 = metadata !{i32 786689, metadata !117, metadata !"pa", metadata !24, i32 150995561, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pa] [line 617]
!165 = metadata !{i32 786689, metadata !117, metadata !"nbug", metadata !24, i32 167772778, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nbug] [line 618]
!166 = metadata !{i32 786689, metadata !117, metadata !"bugs", metadata !24, i32 184549994, metadata !101, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bugs] [line 618]
!167 = metadata !{i32 786689, metadata !117, metadata !"bHidden", metadata !24, i32 201327210, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bHidden] [line 618]
!168 = metadata !{i32 786688, metadata !117, metadata !"pr", metadata !24, i32 620, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pr] [line 620]
!169 = metadata !{i32 786688, metadata !117, metadata !"i", metadata !24, i32 621, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 621]
!170 = metadata !{i32 786688, metadata !117, metadata !"npar", metadata !24, i32 621, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [npar] [line 621]
!171 = metadata !{i32 786688, metadata !117, metadata !"par", metadata !24, i32 622, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [par] [line 622]
!172 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"write_cshcompl", metadata !"write_cshcompl", metadata !"", i32 572, metadata !173, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !175, i32 575} ; [ DW_TAG_subprogram ] [line 572] [local] [def] [scope 575] [write_cshcompl]
!173 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !174, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!174 = metadata !{null, metadata !46, metadata !52, metadata !120, metadata !52, metadata !129}
!175 = metadata !{metadata !176, metadata !177, metadata !178, metadata !179, metadata !180}
!176 = metadata !{i32 786689, metadata !172, metadata !"out", metadata !24, i32 16777788, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 572]
!177 = metadata !{i32 786689, metadata !172, metadata !"nfile", metadata !24, i32 33555005, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nfile] [line 573]
!178 = metadata !{i32 786689, metadata !172, metadata !"fnm", metadata !24, i32 50332221, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 573]
!179 = metadata !{i32 786689, metadata !172, metadata !"npargs", metadata !24, i32 67109438, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [npargs] [line 574]
!180 = metadata !{i32 786689, metadata !172, metadata !"pa", metadata !24, i32 83886654, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pa] [line 574]
!181 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"pr_opts", metadata !"pr_opts", metadata !"", i32 529, metadata !182, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, %struct.t_filenm*, i32, %struct.t_pargs*, i32)* @pr_opts, null, null, metadata !184, i32 532} ; [ DW_TAG_subprogram ] [line 529] [local] [def] [scope 532] [pr_opts]
!182 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !183, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!183 = metadata !{null, metadata !46, metadata !52, metadata !120, metadata !52, metadata !129, metadata !52}
!184 = metadata !{metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191}
!185 = metadata !{i32 786689, metadata !181, metadata !"fp", metadata !24, i32 16777745, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 529]
!186 = metadata !{i32 786689, metadata !181, metadata !"nfile", metadata !24, i32 33554962, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nfile] [line 530]
!187 = metadata !{i32 786689, metadata !181, metadata !"fnm", metadata !24, i32 50332178, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 530]
!188 = metadata !{i32 786689, metadata !181, metadata !"npargs", metadata !24, i32 67109395, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [npargs] [line 531]
!189 = metadata !{i32 786689, metadata !181, metadata !"pa", metadata !24, i32 83886611, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pa] [line 531]
!190 = metadata !{i32 786689, metadata !181, metadata !"shell", metadata !24, i32 100663827, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shell] [line 531]
!191 = metadata !{i32 786688, metadata !181, metadata !"i", metadata !24, i32 533, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 533]
!192 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"write_bashcompl", metadata !"write_bashcompl", metadata !"", i32 596, metadata !173, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !193, i32 599} ; [ DW_TAG_subprogram ] [line 596] [local] [def] [scope 599] [write_bashcompl]
!193 = metadata !{metadata !194, metadata !195, metadata !196, metadata !197, metadata !198}
!194 = metadata !{i32 786689, metadata !192, metadata !"out", metadata !24, i32 16777812, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 596]
!195 = metadata !{i32 786689, metadata !192, metadata !"nfile", metadata !24, i32 33555029, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nfile] [line 597]
!196 = metadata !{i32 786689, metadata !192, metadata !"fnm", metadata !24, i32 50332245, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 597]
!197 = metadata !{i32 786689, metadata !192, metadata !"npargs", metadata !24, i32 67109462, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [npargs] [line 598]
!198 = metadata !{i32 786689, metadata !192, metadata !"pa", metadata !24, i32 83886678, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pa] [line 598]
!199 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"write_zshcompl", metadata !"write_zshcompl", metadata !"", i32 583, metadata !173, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !200, i32 586} ; [ DW_TAG_subprogram ] [line 583] [local] [def] [scope 586] [write_zshcompl]
!200 = metadata !{metadata !201, metadata !202, metadata !203, metadata !204, metadata !205}
!201 = metadata !{i32 786689, metadata !199, metadata !"out", metadata !24, i32 16777799, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 583]
!202 = metadata !{i32 786689, metadata !199, metadata !"nfile", metadata !24, i32 33555016, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nfile] [line 584]
!203 = metadata !{i32 786689, metadata !199, metadata !"fnm", metadata !24, i32 50332232, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 584]
!204 = metadata !{i32 786689, metadata !199, metadata !"npargs", metadata !24, i32 67109449, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [npargs] [line 585]
!205 = metadata !{i32 786689, metadata !199, metadata !"pa", metadata !24, i32 83886665, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pa] [line 585]
!206 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"write_htmlman", metadata !"write_htmlman", metadata !"", i32 433, metadata !207, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !209, i32 439} ; [ DW_TAG_subprogram ] [line 433] [local] [def] [scope 439] [write_htmlman]
!207 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !208, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!208 = metadata !{null, metadata !46, metadata !27, metadata !52, metadata !101, metadata !52, metadata !120, metadata !52, metadata !129, metadata !52, metadata !101}
!209 = metadata !{metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221}
!210 = metadata !{i32 786689, metadata !206, metadata !"out", metadata !24, i32 16777649, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 433]
!211 = metadata !{i32 786689, metadata !206, metadata !"program", metadata !24, i32 33554866, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [program] [line 434]
!212 = metadata !{i32 786689, metadata !206, metadata !"nldesc", metadata !24, i32 50332083, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nldesc] [line 435]
!213 = metadata !{i32 786689, metadata !206, metadata !"desc", metadata !24, i32 67109299, metadata !101, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [desc] [line 435]
!214 = metadata !{i32 786689, metadata !206, metadata !"nfile", metadata !24, i32 83886516, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nfile] [line 436]
!215 = metadata !{i32 786689, metadata !206, metadata !"fnm", metadata !24, i32 100663732, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 436]
!216 = metadata !{i32 786689, metadata !206, metadata !"npargs", metadata !24, i32 117440949, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [npargs] [line 437]
!217 = metadata !{i32 786689, metadata !206, metadata !"pa", metadata !24, i32 134218165, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pa] [line 437]
!218 = metadata !{i32 786689, metadata !206, metadata !"nbug", metadata !24, i32 150995382, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nbug] [line 438]
!219 = metadata !{i32 786689, metadata !206, metadata !"bugs", metadata !24, i32 167772598, metadata !101, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bugs] [line 438]
!220 = metadata !{i32 786688, metadata !206, metadata !"i", metadata !24, i32 440, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 440]
!221 = metadata !{i32 786688, metadata !206, metadata !"link", metadata !24, i32 441, metadata !222, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [link] [line 441]
!222 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 80, i64 8, i32 0, i32 0, metadata !28, metadata !223, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 80, align 8, offset 0] [from char]
!223 = metadata !{metadata !224}
!224 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!225 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"mydate", metadata !"mydate", metadata !"", i32 118, metadata !226, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @mydate, null, null, metadata !228, i32 119} ; [ DW_TAG_subprogram ] [line 118] [local] [def] [scope 119] [mydate]
!226 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !227, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!227 = metadata !{metadata !27}
!228 = metadata !{metadata !229, metadata !232}
!229 = metadata !{i32 786688, metadata !225, metadata !"now", metadata !24, i32 123, metadata !230, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [now] [line 123]
!230 = metadata !{i32 786454, metadata !1, null, metadata !"time_t", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !231} ; [ DW_TAG_typedef ] [time_t] [line 75, size 0, align 0, offset 0] [from __time_t]
!231 = metadata !{i32 786454, metadata !1, null, metadata !"__time_t", i32 139, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ] [__time_t] [line 139, size 0, align 0, offset 0] [from long int]
!232 = metadata !{i32 786688, metadata !225, metadata !"tm", metadata !24, i32 125, metadata !233, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tm] [line 125]
!233 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !234} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from tm]
!234 = metadata !{i32 786451, metadata !235, null, metadata !"tm", i32 133, i64 448, i64 64, i32 0, i32 0, null, metadata !236, i32 0, null, null} ; [ DW_TAG_structure_type ] [tm] [line 133, size 448, align 64, offset 0] [from ]
!235 = metadata !{metadata !"/usr/include/time.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!236 = metadata !{metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247}
!237 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"tm_sec", i32 135, i64 32, i64 32, i64 0, i32 0, metadata !52} ; [ DW_TAG_member ] [tm_sec] [line 135, size 32, align 32, offset 0] [from int]
!238 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"tm_min", i32 136, i64 32, i64 32, i64 32, i32 0, metadata !52} ; [ DW_TAG_member ] [tm_min] [line 136, size 32, align 32, offset 32] [from int]
!239 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"tm_hour", i32 137, i64 32, i64 32, i64 64, i32 0, metadata !52} ; [ DW_TAG_member ] [tm_hour] [line 137, size 32, align 32, offset 64] [from int]
!240 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"tm_mday", i32 138, i64 32, i64 32, i64 96, i32 0, metadata !52} ; [ DW_TAG_member ] [tm_mday] [line 138, size 32, align 32, offset 96] [from int]
!241 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"tm_mon", i32 139, i64 32, i64 32, i64 128, i32 0, metadata !52} ; [ DW_TAG_member ] [tm_mon] [line 139, size 32, align 32, offset 128] [from int]
!242 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"tm_year", i32 140, i64 32, i64 32, i64 160, i32 0, metadata !52} ; [ DW_TAG_member ] [tm_year] [line 140, size 32, align 32, offset 160] [from int]
!243 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"tm_wday", i32 141, i64 32, i64 32, i64 192, i32 0, metadata !52} ; [ DW_TAG_member ] [tm_wday] [line 141, size 32, align 32, offset 192] [from int]
!244 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"tm_yday", i32 142, i64 32, i64 32, i64 224, i32 0, metadata !52} ; [ DW_TAG_member ] [tm_yday] [line 142, size 32, align 32, offset 224] [from int]
!245 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"tm_isdst", i32 143, i64 32, i64 32, i64 256, i32 0, metadata !52} ; [ DW_TAG_member ] [tm_isdst] [line 143, size 32, align 32, offset 256] [from int]
!246 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"tm_gmtoff", i32 146, i64 64, i64 64, i64 320, i32 0, metadata !77} ; [ DW_TAG_member ] [tm_gmtoff] [line 146, size 64, align 64, offset 320] [from long int]
!247 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"tm_zone", i32 147, i64 64, i64 64, i64 384, i32 0, metadata !248} ; [ DW_TAG_member ] [tm_zone] [line 147, size 64, align 64, offset 384] [from ]
!248 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !249} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!249 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!250 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"write_ttyman", metadata !"write_ttyman", metadata !"", i32 386, metadata !251, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*, i32, i8**, i32, %struct.t_filenm*, i32, %struct.t_pargs*, i32, i8**, i32)* @write_ttyman, null, null, metadata !253, i32 392} ; [ DW_TAG_subprogram ] [line 386] [local] [def] [scope 392] [write_ttyman]
!251 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !252, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!252 = metadata !{null, metadata !46, metadata !27, metadata !52, metadata !101, metadata !52, metadata !120, metadata !52, metadata !129, metadata !52, metadata !101, metadata !52}
!253 = metadata !{metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266}
!254 = metadata !{i32 786689, metadata !250, metadata !"out", metadata !24, i32 16777602, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 386]
!255 = metadata !{i32 786689, metadata !250, metadata !"program", metadata !24, i32 33554819, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [program] [line 387]
!256 = metadata !{i32 786689, metadata !250, metadata !"nldesc", metadata !24, i32 50332036, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nldesc] [line 388]
!257 = metadata !{i32 786689, metadata !250, metadata !"desc", metadata !24, i32 67109252, metadata !101, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [desc] [line 388]
!258 = metadata !{i32 786689, metadata !250, metadata !"nfile", metadata !24, i32 83886469, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nfile] [line 389]
!259 = metadata !{i32 786689, metadata !250, metadata !"fnm", metadata !24, i32 100663685, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 389]
!260 = metadata !{i32 786689, metadata !250, metadata !"npargs", metadata !24, i32 117440902, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [npargs] [line 390]
!261 = metadata !{i32 786689, metadata !250, metadata !"pa", metadata !24, i32 134218118, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pa] [line 390]
!262 = metadata !{i32 786689, metadata !250, metadata !"nbug", metadata !24, i32 150995335, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nbug] [line 391]
!263 = metadata !{i32 786689, metadata !250, metadata !"bugs", metadata !24, i32 167772551, metadata !101, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bugs] [line 391]
!264 = metadata !{i32 786689, metadata !250, metadata !"bHeader", metadata !24, i32 184549767, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bHeader] [line 391]
!265 = metadata !{i32 786688, metadata !250, metadata !"i", metadata !24, i32 393, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 393]
!266 = metadata !{i32 786688, metadata !250, metadata !"tmp", metadata !24, i32 394, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 394]
!267 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"write_nroffman", metadata !"write_nroffman", metadata !"", i32 285, metadata !207, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !268, i32 292} ; [ DW_TAG_subprogram ] [line 285] [local] [def] [scope 292] [write_nroffman]
!268 = metadata !{metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279}
!269 = metadata !{i32 786689, metadata !267, metadata !"out", metadata !24, i32 16777501, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 285]
!270 = metadata !{i32 786689, metadata !267, metadata !"program", metadata !24, i32 33554718, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [program] [line 286]
!271 = metadata !{i32 786689, metadata !267, metadata !"nldesc", metadata !24, i32 50331935, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nldesc] [line 287]
!272 = metadata !{i32 786689, metadata !267, metadata !"desc", metadata !24, i32 67109151, metadata !101, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [desc] [line 287]
!273 = metadata !{i32 786689, metadata !267, metadata !"nfile", metadata !24, i32 83886368, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nfile] [line 288]
!274 = metadata !{i32 786689, metadata !267, metadata !"fnm", metadata !24, i32 100663584, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 288]
!275 = metadata !{i32 786689, metadata !267, metadata !"npargs", metadata !24, i32 117440801, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [npargs] [line 289]
!276 = metadata !{i32 786689, metadata !267, metadata !"pa", metadata !24, i32 134218017, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pa] [line 289]
!277 = metadata !{i32 786689, metadata !267, metadata !"nbug", metadata !24, i32 150995234, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nbug] [line 290]
!278 = metadata !{i32 786689, metadata !267, metadata !"bugs", metadata !24, i32 167772450, metadata !101, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bugs] [line 290]
!279 = metadata !{i32 786688, metadata !267, metadata !"i", metadata !24, i32 293, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 293]
!280 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"write_texman", metadata !"write_texman", metadata !"", i32 226, metadata !207, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !281, i32 231} ; [ DW_TAG_subprogram ] [line 226] [local] [def] [scope 231] [write_texman]
!281 = metadata !{metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292}
!282 = metadata !{i32 786689, metadata !280, metadata !"out", metadata !24, i32 16777442, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 226]
!283 = metadata !{i32 786689, metadata !280, metadata !"program", metadata !24, i32 33554658, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [program] [line 226]
!284 = metadata !{i32 786689, metadata !280, metadata !"nldesc", metadata !24, i32 50331875, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nldesc] [line 227]
!285 = metadata !{i32 786689, metadata !280, metadata !"desc", metadata !24, i32 67109091, metadata !101, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [desc] [line 227]
!286 = metadata !{i32 786689, metadata !280, metadata !"nfile", metadata !24, i32 83886308, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nfile] [line 228]
!287 = metadata !{i32 786689, metadata !280, metadata !"fnm", metadata !24, i32 100663524, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 228]
!288 = metadata !{i32 786689, metadata !280, metadata !"npargs", metadata !24, i32 117440741, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [npargs] [line 229]
!289 = metadata !{i32 786689, metadata !280, metadata !"pa", metadata !24, i32 134217957, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pa] [line 229]
!290 = metadata !{i32 786689, metadata !280, metadata !"nbug", metadata !24, i32 150995174, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nbug] [line 230]
!291 = metadata !{i32 786689, metadata !280, metadata !"bugs", metadata !24, i32 167772390, metadata !101, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bugs] [line 230]
!292 = metadata !{i32 786688, metadata !280, metadata !"i", metadata !24, i32 232, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 232]
!293 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"html_xref", metadata !"html_xref", metadata !"", i32 177, metadata !111, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !294, i32 178} ; [ DW_TAG_subprogram ] [line 177] [local] [def] [scope 178] [html_xref]
!294 = metadata !{metadata !295, metadata !296, metadata !297, metadata !301, metadata !302}
!295 = metadata !{i32 786689, metadata !293, metadata !"s", metadata !24, i32 16777393, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 177]
!296 = metadata !{i32 786689, metadata !293, metadata !"program", metadata !24, i32 33554609, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [program] [line 177]
!297 = metadata !{i32 786688, metadata !293, metadata !"buf", metadata !24, i32 182, metadata !298, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 182]
!298 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !28, metadata !299, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!299 = metadata !{metadata !300}
!300 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!301 = metadata !{i32 786688, metadata !293, metadata !"i", metadata !24, i32 183, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 183]
!302 = metadata !{i32 786688, metadata !293, metadata !"j", metadata !24, i32 183, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 183]
!303 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"repallww", metadata !"repallww", metadata !"", i32 151, metadata !304, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !312, i32 152} ; [ DW_TAG_subprogram ] [line 151] [local] [def] [scope 152] [repallww]
!304 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !305, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!305 = metadata !{metadata !27, metadata !27, metadata !52, metadata !306}
!306 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !307} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_sandr]
!307 = metadata !{i32 786454, metadata !1, null, metadata !"t_sandr", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !308} ; [ DW_TAG_typedef ] [t_sandr] [line 48, size 0, align 0, offset 0] [from ]
!308 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 46, i64 128, i64 64, i32 0, i32 0, null, metadata !309, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 46, size 128, align 64, offset 0] [from ]
!309 = metadata !{metadata !310, metadata !311}
!310 = metadata !{i32 786445, metadata !1, metadata !308, metadata !"search", i32 47, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [search] [line 47, size 64, align 64, offset 0] [from ]
!311 = metadata !{i32 786445, metadata !1, metadata !308, metadata !"replace", i32 47, i64 64, i64 64, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [replace] [line 47, size 64, align 64, offset 64] [from ]
!312 = metadata !{metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318}
!313 = metadata !{i32 786689, metadata !303, metadata !"s", metadata !24, i32 16777367, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 151]
!314 = metadata !{i32 786689, metadata !303, metadata !"nsr", metadata !24, i32 33554583, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsr] [line 151]
!315 = metadata !{i32 786689, metadata !303, metadata !"sa", metadata !24, i32 50331799, metadata !306, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sa] [line 151]
!316 = metadata !{i32 786688, metadata !303, metadata !"i", metadata !24, i32 153, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 153]
!317 = metadata !{i32 786688, metadata !303, metadata !"buf", metadata !24, i32 154, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 154]
!318 = metadata !{i32 786688, metadata !303, metadata !"buf2", metadata !24, i32 154, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf2] [line 154]
!319 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"repall", metadata !"repall", metadata !"", i32 135, metadata !304, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, %struct.t_sandr*)* @repall, null, null, metadata !320, i32 136} ; [ DW_TAG_subprogram ] [line 135] [local] [def] [scope 136] [repall]
!320 = metadata !{metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326}
!321 = metadata !{i32 786689, metadata !319, metadata !"s", metadata !24, i32 16777351, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 135]
!322 = metadata !{i32 786689, metadata !319, metadata !"nsr", metadata !24, i32 33554567, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsr] [line 135]
!323 = metadata !{i32 786689, metadata !319, metadata !"sa", metadata !24, i32 50331783, metadata !306, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sa] [line 135]
!324 = metadata !{i32 786688, metadata !319, metadata !"i", metadata !24, i32 137, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 137]
!325 = metadata !{i32 786688, metadata !319, metadata !"buf", metadata !24, i32 138, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 138]
!326 = metadata !{i32 786688, metadata !319, metadata !"buf2", metadata !24, i32 138, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf2] [line 138]
!327 = metadata !{metadata !328, metadata !332, metadata !336, metadata !340, metadata !342, metadata !346, metadata !351, metadata !355, metadata !356, metadata !360, metadata !361, metadata !362}
!328 = metadata !{i32 786484, i32 0, null, metadata !"sandrTeX", metadata !"sandrTeX", metadata !"", metadata !24, i32 50, metadata !329, i32 0, i32 1, [21 x %struct.t_sandr]* @sandrTeX, null} ; [ DW_TAG_variable ] [sandrTeX] [line 50] [def]
!329 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2688, i64 64, i32 0, i32 0, metadata !307, metadata !330, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2688, align 64, offset 0] [from t_sandr]
!330 = metadata !{metadata !331}
!331 = metadata !{i32 786465, i64 0, i64 21}      ; [ DW_TAG_subrange_type ] [0, 20]
!332 = metadata !{i32 786484, i32 0, null, metadata !"sandrTty", metadata !"sandrTty", metadata !"", metadata !24, i32 75, metadata !333, i32 0, i32 1, [8 x %struct.t_sandr]* @sandrTty, null} ; [ DW_TAG_variable ] [sandrTty] [line 75] [def]
!333 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 64, i32 0, i32 0, metadata !307, metadata !334, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 64, offset 0] [from t_sandr]
!334 = metadata !{metadata !335}
!335 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!336 = metadata !{i32 786484, i32 0, null, metadata !"sandrNROFF", metadata !"sandrNROFF", metadata !"", metadata !24, i32 87, metadata !337, i32 0, i32 1, [13 x %struct.t_sandr]* @sandrNROFF, null} ; [ DW_TAG_variable ] [sandrNROFF] [line 87] [def]
!337 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1664, i64 64, i32 0, i32 0, metadata !307, metadata !338, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1664, align 64, offset 0] [from t_sandr]
!338 = metadata !{metadata !339}
!339 = metadata !{i32 786465, i64 0, i64 13}      ; [ DW_TAG_subrange_type ] [0, 12]
!340 = metadata !{i32 786484, i32 0, null, metadata !"sandrHTML", metadata !"sandrHTML", metadata !"", metadata !24, i32 104, metadata !341, i32 0, i32 1, [10 x %struct.t_sandr]* @sandrHTML, null} ; [ DW_TAG_variable ] [sandrHTML] [line 104] [def]
!341 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1280, i64 64, i32 0, i32 0, metadata !307, metadata !223, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1280, align 64, offset 0] [from t_sandr]
!342 = metadata !{i32 786484, i32 0, metadata !34, metadata !"buf", metadata !"buf", metadata !"", metadata !24, i32 203, metadata !343, i32 1, i32 1, [32 x i8]* @fileopt.buf, null} ; [ DW_TAG_variable ] [buf] [line 203] [local] [def]
!343 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 8, i32 0, i32 0, metadata !28, metadata !344, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from char]
!344 = metadata !{metadata !345}
!345 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!346 = metadata !{i32 786484, i32 0, null, metadata !"argtp", metadata !"argtp", metadata !"", metadata !347, i32 87, metadata !348, i32 1, i32 1, [7 x i8*]* @argtp, null} ; [ DW_TAG_variable ] [argtp] [line 87] [local] [def]
!347 = metadata !{i32 786473, metadata !11}       ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.h]
!348 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 448, i64 64, i32 0, i32 0, metadata !27, metadata !349, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 448, align 64, offset 0] [from ]
!349 = metadata !{metadata !350}
!350 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 6]
!351 = metadata !{i32 786484, i32 0, metadata !225, metadata !"mon", metadata !"mon", metadata !"", metadata !24, i32 120, metadata !352, i32 1, i32 1, [12 x i8*]* @mydate.mon, null} ; [ DW_TAG_variable ] [mon] [line 120] [local] [def]
!352 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 768, i64 64, i32 0, i32 0, metadata !27, metadata !353, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 768, align 64, offset 0] [from ]
!353 = metadata !{metadata !354}
!354 = metadata !{i32 786465, i64 0, i64 12}      ; [ DW_TAG_subrange_type ] [0, 11]
!355 = metadata !{i32 786484, i32 0, metadata !225, metadata !"day", metadata !"day", metadata !"", metadata !24, i32 122, metadata !348, i32 1, i32 1, [7 x i8*]* @mydate.day, null} ; [ DW_TAG_variable ] [day] [line 122] [local] [def]
!356 = metadata !{i32 786484, i32 0, metadata !225, metadata !"tbuf", metadata !"tbuf", metadata !"", metadata !24, i32 124, metadata !357, i32 1, i32 1, [128 x i8]* @mydate.tbuf, null} ; [ DW_TAG_variable ] [tbuf] [line 124] [local] [def]
!357 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !28, metadata !358, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 8, offset 0] [from char]
!358 = metadata !{metadata !359}
!359 = metadata !{i32 786465, i64 0, i64 128}     ; [ DW_TAG_subrange_type ] [0, 127]
!360 = metadata !{i32 786484, i32 0, metadata !293, metadata !"nstr", metadata !"nstr", metadata !"", metadata !24, i32 179, metadata !52, i32 1, i32 1, i32* @html_xref.nstr, null} ; [ DW_TAG_variable ] [nstr] [line 179] [local] [def]
!361 = metadata !{i32 786484, i32 0, metadata !293, metadata !"str", metadata !"str", metadata !"", metadata !24, i32 180, metadata !101, i32 1, i32 1, i8*** @html_xref.str, null} ; [ DW_TAG_variable ] [str] [line 180] [local] [def]
!362 = metadata !{i32 786484, i32 0, metadata !293, metadata !"sr", metadata !"sr", metadata !"", metadata !24, i32 181, metadata !306, i32 1, i32 1, %struct.t_sandr** @html_xref.sr, null} ; [ DW_TAG_variable ] [sr] [line 181] [local] [def]
!363 = metadata !{i32 167, i32 0, metadata !23, null}
!364 = metadata !{i32 169, i32 0, metadata !23, null}
!365 = metadata !{i32 135, i32 0, metadata !319, null}
!366 = metadata !{i32 140, i32 0, metadata !319, null}
!367 = metadata !{i32 141, i32 0, metadata !368, null}
!368 = metadata !{i32 786443, metadata !1, metadata !319, i32 141, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!369 = metadata !{i32 142, i32 0, metadata !370, null}
!370 = metadata !{i32 786443, metadata !1, metadata !368, i32 141, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!371 = metadata !{metadata !"any pointer", metadata !372}
!372 = metadata !{metadata !"omnipotent char", metadata !373}
!373 = metadata !{metadata !"Simple C/C++ TBAA"}
!374 = metadata !{i32 143, i32 0, metadata !370, null}
!375 = metadata !{i32 144, i32 0, metadata !370, null}
!376 = metadata !{i32 145, i32 0, metadata !370, null}
!377 = metadata !{i32 148, i32 0, metadata !319, null}
!378 = metadata !{i32 172, i32 0, metadata !31, null}
!379 = metadata !{i32 174, i32 0, metadata !31, null}
!380 = metadata !{i32 201, i32 0, metadata !34, null}
!381 = metadata !{i32 205, i32 0, metadata !34, null}
!382 = metadata !{i32 206, i32 0, metadata !34, null}
!383 = metadata !{i32 207, i32 0, metadata !34, null}
!384 = metadata !{i32 208, i32 0, metadata !34, null}
!385 = metadata !{i32 209, i32 0, metadata !34, null}
!386 = metadata !{i32 210, i32 0, metadata !34, null}
!387 = metadata !{i32 212, i32 0, metadata !34, null}
!388 = metadata !{i32 213, i32 0, metadata !34, null}
!389 = metadata !{i32 214, i32 0, metadata !390, null}
!390 = metadata !{i32 786443, metadata !1, metadata !34, i32 213, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!391 = metadata !{i32 215, i32 0, metadata !390, null}
!392 = metadata !{i32 218, i32 0, metadata !390, null}
!393 = metadata !{i32 216, i32 0, metadata !390, null}
!394 = metadata !{i32 220, i32 0, metadata !34, null}
!395 = metadata !{i32 221, i32 0, metadata !34, null}
!396 = metadata !{i32 223, i32 0, metadata !34, null}
!397 = metadata !{i32 356, i32 0, metadata !40, null}
!398 = metadata !{i32 358, i32 0, metadata !40, null}
!399 = metadata !{i32 361, i32 0, metadata !43, null}
!400 = metadata !{i32 367, i32 0, metadata !43, null}
!401 = metadata !{i32 368, i32 0, metadata !402, null}
!402 = metadata !{i32 786443, metadata !1, metadata !43, i32 368, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!403 = metadata !{i32 370, i32 0, metadata !43, null}
!404 = metadata !{i32 371, i32 0, metadata !405, null}
!405 = metadata !{i32 786443, metadata !1, metadata !43, i32 371, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!406 = metadata !{i32 369, i32 0, metadata !402, null}
!407 = metadata !{i32 372, i32 0, metadata !408, null}
!408 = metadata !{i32 786443, metadata !1, metadata !405, i32 371, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!409 = metadata !{i32 373, i32 0, metadata !408, null}
!410 = metadata !{i32 374, i32 0, metadata !408, null}
!411 = metadata !{i32 375, i32 0, metadata !408, null}
!412 = metadata !{i32 786689, metadata !40, metadata !"s", metadata !24, i32 16777572, metadata !27, i32 0, metadata !411} ; [ DW_TAG_arg_variable ] [s] [line 356]
!413 = metadata !{i32 356, i32 0, metadata !40, metadata !411}
!414 = metadata !{i32 358, i32 0, metadata !40, metadata !411}
!415 = metadata !{i32 376, i32 0, metadata !408, null}
!416 = metadata !{i32 377, i32 0, metadata !408, null}
!417 = metadata !{i32 380, i32 0, metadata !43, null}
!418 = metadata !{i32 381, i32 0, metadata !43, null}
!419 = metadata !{i32 382, i32 0, metadata !43, null}
!420 = metadata !{i32 383, i32 0, metadata !43, null}
!421 = metadata !{i32 384, i32 0, metadata !43, null}
!422 = metadata !{i32 423, i32 0, metadata !110, null}
!423 = metadata !{i32 427, i32 0, metadata !110, null}
!424 = metadata !{i32 786689, metadata !293, metadata !"s", metadata !24, i32 16777393, metadata !27, i32 0, metadata !425} ; [ DW_TAG_arg_variable ] [s] [line 177]
!425 = metadata !{i32 428, i32 0, metadata !110, null}
!426 = metadata !{i32 177, i32 0, metadata !293, metadata !425}
!427 = metadata !{i32 786689, metadata !293, metadata !"program", metadata !24, i32 33554609, metadata !27, i32 0, metadata !425} ; [ DW_TAG_arg_variable ] [program] [line 177]
!428 = metadata !{i32 182, i32 0, metadata !293, metadata !425}
!429 = metadata !{i32 185, i32 0, metadata !293, metadata !425}
!430 = metadata !{i32 186, i32 0, metadata !431, metadata !425}
!431 = metadata !{i32 786443, metadata !1, metadata !293, i32 185, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!432 = metadata !{metadata !"int", metadata !372}
!433 = metadata !{i32 187, i32 0, metadata !431, metadata !425}
!434 = metadata !{i32 786688, metadata !293, metadata !"j", metadata !24, i32 183, metadata !52, i32 0, metadata !425} ; [ DW_TAG_auto_variable ] [j] [line 183]
!435 = metadata !{i32 188, i32 0, metadata !436, metadata !425}
!436 = metadata !{i32 786443, metadata !1, metadata !431, i32 188, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!437 = metadata !{i32 786688, metadata !293, metadata !"i", metadata !24, i32 183, metadata !52, i32 0, metadata !425} ; [ DW_TAG_auto_variable ] [i] [line 183]
!438 = metadata !{i32 189, i32 0, metadata !439, metadata !425}
!439 = metadata !{i32 786443, metadata !1, metadata !436, i32 188, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!440 = metadata !{i32 190, i32 0, metadata !441, metadata !425}
!441 = metadata !{i32 786443, metadata !1, metadata !439, i32 189, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!442 = metadata !{i32 191, i32 0, metadata !441, metadata !425}
!443 = metadata !{i32 192, i32 0, metadata !441, metadata !425}
!444 = metadata !{i32 193, i32 0, metadata !441, metadata !425}
!445 = metadata !{i32 194, i32 0, metadata !441, metadata !425}
!446 = metadata !{i32 198, i32 0, metadata !293, metadata !425}
!447 = metadata !{i32 196, i32 0, metadata !431, metadata !425}
!448 = metadata !{i32 197, i32 0, metadata !431, metadata !425}
!449 = metadata !{i32 786689, metadata !303, metadata !"s", metadata !24, i32 16777367, metadata !27, i32 0, metadata !446} ; [ DW_TAG_arg_variable ] [s] [line 151]
!450 = metadata !{i32 151, i32 0, metadata !303, metadata !446}
!451 = metadata !{i32 786689, metadata !303, metadata !"nsr", metadata !24, i32 33554583, metadata !52, i32 0, metadata !446} ; [ DW_TAG_arg_variable ] [nsr] [line 151]
!452 = metadata !{i32 786689, metadata !303, metadata !"sa", metadata !24, i32 50331799, metadata !306, i32 0, metadata !446} ; [ DW_TAG_arg_variable ] [sa] [line 151]
!453 = metadata !{i32 786688, metadata !303, metadata !"buf", metadata !24, i32 154, metadata !27, i32 0, metadata !446} ; [ DW_TAG_auto_variable ] [buf] [line 154]
!454 = metadata !{i32 156, i32 0, metadata !303, metadata !446}
!455 = metadata !{i32 786688, metadata !303, metadata !"i", metadata !24, i32 153, metadata !52, i32 0, metadata !446} ; [ DW_TAG_auto_variable ] [i] [line 153]
!456 = metadata !{i32 157, i32 0, metadata !457, metadata !446}
!457 = metadata !{i32 786443, metadata !1, metadata !303, i32 157, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!458 = metadata !{i32 158, i32 0, metadata !459, metadata !446}
!459 = metadata !{i32 786443, metadata !1, metadata !457, i32 157, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!460 = metadata !{i32 786688, metadata !303, metadata !"buf2", metadata !24, i32 154, metadata !27, i32 0, metadata !446} ; [ DW_TAG_auto_variable ] [buf2] [line 154]
!461 = metadata !{i32 159, i32 0, metadata !459, metadata !446}
!462 = metadata !{i32 160, i32 0, metadata !459, metadata !446}
!463 = metadata !{i32 161, i32 0, metadata !459, metadata !446}
!464 = metadata !{i32 199, i32 0, metadata !293, metadata !425}
!465 = metadata !{i32 430, i32 0, metadata !110, null}
!466 = metadata !{i32 613, i32 0, metadata !117, null}
!467 = metadata !{i32 614, i32 0, metadata !117, null}
!468 = metadata !{i32 615, i32 0, metadata !117, null}
!469 = metadata !{i32 616, i32 0, metadata !117, null}
!470 = metadata !{i32 617, i32 0, metadata !117, null}
!471 = metadata !{i32 618, i32 0, metadata !117, null}
!472 = metadata !{i32 628, i32 0, metadata !117, null}
!473 = metadata !{i32 633, i32 0, metadata !474, null}
!474 = metadata !{i32 786443, metadata !1, metadata !117, i32 632, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!475 = metadata !{i32 634, i32 0, metadata !474, null}
!476 = metadata !{i32 635, i32 0, metadata !477, null}
!477 = metadata !{i32 786443, metadata !1, metadata !474, i32 635, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!478 = metadata !{i32 636, i32 0, metadata !477, null}
!479 = metadata !{i32 637, i32 0, metadata !480, null}
!480 = metadata !{i32 786443, metadata !1, metadata !477, i32 636, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!481 = metadata !{i64 0, i64 8, metadata !371, i64 8, i64 4, metadata !432, i64 12, i64 4, metadata !432, i64 16, i64 8, metadata !371, i64 16, i64 8, metadata !371, i64 16, i64 8, metadata !371, i64 16, i64 8, metadata !371, i64 16, i64 8, metadata !371, i64 16, i64 8, metadata !371, i64 24, i64 8, metadata !371}
!482 = metadata !{i32 638, i32 0, metadata !480, null}
!483 = metadata !{i32 639, i32 0, metadata !480, null}
!484 = metadata !{i32 642, i32 0, metadata !117, null}
!485 = metadata !{i32 645, i32 0, metadata !117, null}
!486 = metadata !{i32 646, i32 0, metadata !117, null}
!487 = metadata !{i32 786689, metadata !280, metadata !"out", metadata !24, i32 16777442, metadata !46, i32 0, metadata !488} ; [ DW_TAG_arg_variable ] [out] [line 226]
!488 = metadata !{i32 647, i32 0, metadata !117, null}
!489 = metadata !{i32 226, i32 0, metadata !280, metadata !488}
!490 = metadata !{i32 786689, metadata !280, metadata !"program", metadata !24, i32 33554658, metadata !27, i32 0, metadata !488} ; [ DW_TAG_arg_variable ] [program] [line 226]
!491 = metadata !{i32 786689, metadata !280, metadata !"nldesc", metadata !24, i32 50331875, metadata !52, i32 0, metadata !488} ; [ DW_TAG_arg_variable ] [nldesc] [line 227]
!492 = metadata !{i32 227, i32 0, metadata !280, metadata !488}
!493 = metadata !{i32 786689, metadata !280, metadata !"desc", metadata !24, i32 67109091, metadata !101, i32 0, metadata !488} ; [ DW_TAG_arg_variable ] [desc] [line 227]
!494 = metadata !{i32 786689, metadata !280, metadata !"nfile", metadata !24, i32 83886308, metadata !52, i32 0, metadata !488} ; [ DW_TAG_arg_variable ] [nfile] [line 228]
!495 = metadata !{i32 228, i32 0, metadata !280, metadata !488}
!496 = metadata !{i32 786689, metadata !280, metadata !"fnm", metadata !24, i32 100663524, metadata !120, i32 0, metadata !488} ; [ DW_TAG_arg_variable ] [fnm] [line 228]
!497 = metadata !{i32 786689, metadata !280, metadata !"npargs", metadata !24, i32 117440741, metadata !52, i32 0, metadata !488} ; [ DW_TAG_arg_variable ] [npargs] [line 229]
!498 = metadata !{i32 229, i32 0, metadata !280, metadata !488}
!499 = metadata !{i32 786689, metadata !280, metadata !"pa", metadata !24, i32 134217957, metadata !129, i32 0, metadata !488} ; [ DW_TAG_arg_variable ] [pa] [line 229]
!500 = metadata !{i32 786689, metadata !280, metadata !"nbug", metadata !24, i32 150995174, metadata !52, i32 0, metadata !488} ; [ DW_TAG_arg_variable ] [nbug] [line 230]
!501 = metadata !{i32 230, i32 0, metadata !280, metadata !488}
!502 = metadata !{i32 786689, metadata !280, metadata !"bugs", metadata !24, i32 167772390, metadata !101, i32 0, metadata !488} ; [ DW_TAG_arg_variable ] [bugs] [line 230]
!503 = metadata !{i32 786689, metadata !23, metadata !"s", metadata !24, i32 16777383, metadata !27, i32 0, metadata !504} ; [ DW_TAG_arg_variable ] [s] [line 167]
!504 = metadata !{i32 234, i32 0, metadata !280, metadata !488}
!505 = metadata !{i32 167, i32 0, metadata !23, metadata !504}
!506 = metadata !{i32 169, i32 0, metadata !23, metadata !504}
!507 = metadata !{i32 236, i32 0, metadata !280, metadata !488}
!508 = metadata !{i32 238, i32 0, metadata !509, metadata !488}
!509 = metadata !{i32 786443, metadata !1, metadata !280, i32 237, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!510 = metadata !{i32 786689, metadata !23, metadata !"s", metadata !24, i32 16777383, metadata !27, i32 0, metadata !508} ; [ DW_TAG_arg_variable ] [s] [line 167]
!511 = metadata !{i32 167, i32 0, metadata !23, metadata !508}
!512 = metadata !{i32 169, i32 0, metadata !23, metadata !508}
!513 = metadata !{i32 237, i32 0, metadata !509, metadata !488}
!514 = metadata !{i32 240, i32 0, metadata !280, metadata !488}
!515 = metadata !{i32 241, i32 0, metadata !516, metadata !488}
!516 = metadata !{i32 786443, metadata !1, metadata !280, i32 240, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!517 = metadata !{i32 242, i32 0, metadata !516, metadata !488}
!518 = metadata !{i32 243, i32 0, metadata !516, metadata !488}
!519 = metadata !{i32 786688, metadata !280, metadata !"i", metadata !24, i32 232, metadata !52, i32 0, metadata !488} ; [ DW_TAG_auto_variable ] [i] [line 232]
!520 = metadata !{i32 245, i32 0, metadata !521, metadata !488}
!521 = metadata !{i32 786443, metadata !1, metadata !516, i32 245, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!522 = metadata !{i32 248, i32 0, metadata !521, metadata !488}
!523 = metadata !{i32 786689, metadata !23, metadata !"s", metadata !24, i32 16777383, metadata !27, i32 0, metadata !522} ; [ DW_TAG_arg_variable ] [s] [line 167]
!524 = metadata !{i32 167, i32 0, metadata !23, metadata !522}
!525 = metadata !{i32 169, i32 0, metadata !23, metadata !522}
!526 = metadata !{i32 249, i32 0, metadata !521, metadata !488}
!527 = metadata !{metadata !"long", metadata !372}
!528 = metadata !{i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0)}
!529 = metadata !{i32 786689, metadata !23, metadata !"s", metadata !24, i32 16777383, metadata !27, i32 0, metadata !526} ; [ DW_TAG_arg_variable ] [s] [line 167]
!530 = metadata !{i32 167, i32 0, metadata !23, metadata !526}
!531 = metadata !{i32 169, i32 0, metadata !23, metadata !526}
!532 = metadata !{i32 250, i32 0, metadata !521, metadata !488}
!533 = metadata !{i32 786689, metadata !23, metadata !"s", metadata !24, i32 16777383, metadata !27, i32 0, metadata !532} ; [ DW_TAG_arg_variable ] [s] [line 167]
!534 = metadata !{i32 167, i32 0, metadata !23, metadata !532}
!535 = metadata !{i32 169, i32 0, metadata !23, metadata !532}
!536 = metadata !{i32 251, i32 0, metadata !516, metadata !488}
!537 = metadata !{i32 252, i32 0, metadata !516, metadata !488}
!538 = metadata !{i32 253, i32 0, metadata !280, metadata !488}
!539 = metadata !{i32 254, i32 0, metadata !540, metadata !488}
!540 = metadata !{i32 786443, metadata !1, metadata !280, i32 253, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!541 = metadata !{i32 255, i32 0, metadata !540, metadata !488}
!542 = metadata !{i32 256, i32 0, metadata !540, metadata !488}
!543 = metadata !{i32 258, i32 0, metadata !544, metadata !488}
!544 = metadata !{i32 786443, metadata !1, metadata !540, i32 258, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!545 = metadata !{i32 259, i32 0, metadata !546, metadata !488}
!546 = metadata !{i32 786443, metadata !1, metadata !544, i32 258, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!547 = metadata !{i32 786689, metadata !23, metadata !"s", metadata !24, i32 16777383, metadata !27, i32 0, metadata !545} ; [ DW_TAG_arg_variable ] [s] [line 167]
!548 = metadata !{i32 167, i32 0, metadata !23, metadata !545}
!549 = metadata !{i32 169, i32 0, metadata !23, metadata !545}
!550 = metadata !{i32 262, i32 0, metadata !546, metadata !488}
!551 = metadata !{i32 786689, metadata !23, metadata !"s", metadata !24, i32 16777383, metadata !27, i32 0, metadata !550} ; [ DW_TAG_arg_variable ] [s] [line 167]
!552 = metadata !{i32 167, i32 0, metadata !23, metadata !550}
!553 = metadata !{i32 169, i32 0, metadata !23, metadata !550}
!554 = metadata !{i32 263, i32 0, metadata !546, metadata !488}
!555 = metadata !{i32 786689, metadata !23, metadata !"s", metadata !24, i32 16777383, metadata !27, i32 0, metadata !554} ; [ DW_TAG_arg_variable ] [s] [line 167]
!556 = metadata !{i32 167, i32 0, metadata !23, metadata !554}
!557 = metadata !{i32 169, i32 0, metadata !23, metadata !554}
!558 = metadata !{i32 264, i32 0, metadata !546, metadata !488}
!559 = metadata !{i32 786689, metadata !23, metadata !"s", metadata !24, i32 16777383, metadata !27, i32 0, metadata !558} ; [ DW_TAG_arg_variable ] [s] [line 167]
!560 = metadata !{i32 167, i32 0, metadata !23, metadata !558}
!561 = metadata !{i32 169, i32 0, metadata !23, metadata !558}
!562 = metadata !{i32 271, i32 0, metadata !546, metadata !488}
!563 = metadata !{i32 273, i32 0, metadata !540, metadata !488}
!564 = metadata !{i32 274, i32 0, metadata !540, metadata !488}
!565 = metadata !{i32 275, i32 0, metadata !280, metadata !488}
!566 = metadata !{i32 276, i32 0, metadata !567, metadata !488}
!567 = metadata !{i32 786443, metadata !1, metadata !280, i32 275, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!568 = metadata !{i32 277, i32 0, metadata !567, metadata !488}
!569 = metadata !{i32 278, i32 0, metadata !570, metadata !488}
!570 = metadata !{i32 786443, metadata !1, metadata !567, i32 278, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!571 = metadata !{i32 279, i32 0, metadata !570, metadata !488}
!572 = metadata !{i32 786689, metadata !23, metadata !"s", metadata !24, i32 16777383, metadata !27, i32 0, metadata !571} ; [ DW_TAG_arg_variable ] [s] [line 167]
!573 = metadata !{i32 167, i32 0, metadata !23, metadata !571}
!574 = metadata !{i32 169, i32 0, metadata !23, metadata !571}
!575 = metadata !{i32 280, i32 0, metadata !567, metadata !488}
!576 = metadata !{i32 281, i32 0, metadata !567, metadata !488}
!577 = metadata !{i32 648, i32 0, metadata !117, null}
!578 = metadata !{i32 786689, metadata !267, metadata !"out", metadata !24, i32 16777501, metadata !46, i32 0, metadata !579} ; [ DW_TAG_arg_variable ] [out] [line 285]
!579 = metadata !{i32 649, i32 0, metadata !117, null}
!580 = metadata !{i32 285, i32 0, metadata !267, metadata !579}
!581 = metadata !{i32 786689, metadata !267, metadata !"program", metadata !24, i32 33554718, metadata !27, i32 0, metadata !579} ; [ DW_TAG_arg_variable ] [program] [line 286]
!582 = metadata !{i32 286, i32 0, metadata !267, metadata !579}
!583 = metadata !{i32 786689, metadata !267, metadata !"nldesc", metadata !24, i32 50331935, metadata !52, i32 0, metadata !579} ; [ DW_TAG_arg_variable ] [nldesc] [line 287]
!584 = metadata !{i32 287, i32 0, metadata !267, metadata !579}
!585 = metadata !{i32 786689, metadata !267, metadata !"desc", metadata !24, i32 67109151, metadata !101, i32 0, metadata !579} ; [ DW_TAG_arg_variable ] [desc] [line 287]
!586 = metadata !{i32 786689, metadata !267, metadata !"nfile", metadata !24, i32 83886368, metadata !52, i32 0, metadata !579} ; [ DW_TAG_arg_variable ] [nfile] [line 288]
!587 = metadata !{i32 288, i32 0, metadata !267, metadata !579}
!588 = metadata !{i32 786689, metadata !267, metadata !"fnm", metadata !24, i32 100663584, metadata !120, i32 0, metadata !579} ; [ DW_TAG_arg_variable ] [fnm] [line 288]
!589 = metadata !{i32 786689, metadata !267, metadata !"npargs", metadata !24, i32 117440801, metadata !52, i32 0, metadata !579} ; [ DW_TAG_arg_variable ] [npargs] [line 289]
!590 = metadata !{i32 289, i32 0, metadata !267, metadata !579}
!591 = metadata !{i32 786689, metadata !267, metadata !"pa", metadata !24, i32 134218017, metadata !129, i32 0, metadata !579} ; [ DW_TAG_arg_variable ] [pa] [line 289]
!592 = metadata !{i32 786689, metadata !267, metadata !"nbug", metadata !24, i32 150995234, metadata !52, i32 0, metadata !579} ; [ DW_TAG_arg_variable ] [nbug] [line 290]
!593 = metadata !{i32 290, i32 0, metadata !267, metadata !579}
!594 = metadata !{i32 786689, metadata !267, metadata !"bugs", metadata !24, i32 167772450, metadata !101, i32 0, metadata !579} ; [ DW_TAG_arg_variable ] [bugs] [line 290]
!595 = metadata !{i32 295, i32 0, metadata !267, metadata !579}
!596 = metadata !{i32 296, i32 0, metadata !267, metadata !579}
!597 = metadata !{i32 297, i32 0, metadata !267, metadata !579}
!598 = metadata !{i32 298, i32 0, metadata !267, metadata !579}
!599 = metadata !{i32 300, i32 0, metadata !267, metadata !579}
!600 = metadata !{i32 301, i32 0, metadata !267, metadata !579}
!601 = metadata !{i32 304, i32 0, metadata !267, metadata !579}
!602 = metadata !{i32 306, i32 0, metadata !603, metadata !579}
!603 = metadata !{i32 786443, metadata !1, metadata !604, i32 305, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!604 = metadata !{i32 786443, metadata !1, metadata !267, i32 304, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!605 = metadata !{i32 305, i32 0, metadata !603, metadata !579}
!606 = metadata !{i32 309, i32 0, metadata !267, metadata !579}
!607 = metadata !{i32 311, i32 0, metadata !608, metadata !579}
!608 = metadata !{i32 786443, metadata !1, metadata !609, i32 310, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!609 = metadata !{i32 786443, metadata !1, metadata !267, i32 309, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!610 = metadata !{i32 312, i32 0, metadata !608, metadata !579}
!611 = metadata !{i32 314, i32 0, metadata !608, metadata !579}
!612 = metadata !{i32 310, i32 0, metadata !608, metadata !579}
!613 = metadata !{i32 319, i32 0, metadata !267, metadata !579}
!614 = metadata !{i32 320, i32 0, metadata !615, metadata !579}
!615 = metadata !{i32 786443, metadata !1, metadata !267, i32 319, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!616 = metadata !{i32 786688, metadata !267, metadata !"i", metadata !24, i32 293, metadata !52, i32 0, metadata !579} ; [ DW_TAG_auto_variable ] [i] [line 293]
!617 = metadata !{i32 321, i32 0, metadata !618, metadata !579}
!618 = metadata !{i32 786443, metadata !1, metadata !615, i32 321, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!619 = metadata !{i32 322, i32 0, metadata !618, metadata !579}
!620 = metadata !{i32 786689, metadata !31, metadata !"s", metadata !24, i32 16777388, metadata !27, i32 0, metadata !619} ; [ DW_TAG_arg_variable ] [s] [line 172]
!621 = metadata !{i32 172, i32 0, metadata !31, metadata !619}
!622 = metadata !{i32 174, i32 0, metadata !31, metadata !619}
!623 = metadata !{i32 326, i32 0, metadata !267, metadata !579}
!624 = metadata !{i32 327, i32 0, metadata !625, metadata !579}
!625 = metadata !{i32 786443, metadata !1, metadata !267, i32 326, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!626 = metadata !{i32 328, i32 0, metadata !627, metadata !579}
!627 = metadata !{i32 786443, metadata !1, metadata !625, i32 328, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!628 = metadata !{i32 329, i32 0, metadata !627, metadata !579}
!629 = metadata !{i32 330, i32 0, metadata !627, metadata !579}
!630 = metadata !{i32 331, i32 0, metadata !627, metadata !579}
!631 = metadata !{i32 786689, metadata !31, metadata !"s", metadata !24, i32 16777388, metadata !27, i32 0, metadata !630} ; [ DW_TAG_arg_variable ] [s] [line 172]
!632 = metadata !{i32 172, i32 0, metadata !31, metadata !630}
!633 = metadata !{i32 174, i32 0, metadata !31, metadata !630}
!634 = metadata !{i32 335, i32 0, metadata !267, metadata !579}
!635 = metadata !{i32 336, i32 0, metadata !267, metadata !579}
!636 = metadata !{i32 338, i32 0, metadata !637, metadata !579}
!637 = metadata !{i32 786443, metadata !1, metadata !638, i32 337, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!638 = metadata !{i32 786443, metadata !1, metadata !639, i32 337, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!639 = metadata !{i32 786443, metadata !1, metadata !267, i32 336, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!640 = metadata !{i32 340, i32 0, metadata !637, metadata !579}
!641 = metadata !{i32 786689, metadata !31, metadata !"s", metadata !24, i32 16777388, metadata !27, i32 0, metadata !640} ; [ DW_TAG_arg_variable ] [s] [line 172]
!642 = metadata !{i32 172, i32 0, metadata !31, metadata !640}
!643 = metadata !{i32 174, i32 0, metadata !31, metadata !640}
!644 = metadata !{i32 341, i32 0, metadata !637, metadata !579}
!645 = metadata !{i32 786689, metadata !31, metadata !"s", metadata !24, i32 16777388, metadata !27, i32 0, metadata !644} ; [ DW_TAG_arg_variable ] [s] [line 172]
!646 = metadata !{i32 172, i32 0, metadata !31, metadata !644}
!647 = metadata !{i32 174, i32 0, metadata !31, metadata !644}
!648 = metadata !{i32 786689, metadata !31, metadata !"s", metadata !24, i32 16777388, metadata !27, i32 0, metadata !649} ; [ DW_TAG_arg_variable ] [s] [line 172]
!649 = metadata !{i32 344, i32 0, metadata !637, metadata !579}
!650 = metadata !{i32 172, i32 0, metadata !31, metadata !649}
!651 = metadata !{i32 174, i32 0, metadata !31, metadata !649}
!652 = metadata !{i32 345, i32 0, metadata !637, metadata !579}
!653 = metadata !{i32 786689, metadata !31, metadata !"s", metadata !24, i32 16777388, metadata !27, i32 0, metadata !652} ; [ DW_TAG_arg_variable ] [s] [line 172]
!654 = metadata !{i32 172, i32 0, metadata !31, metadata !652}
!655 = metadata !{i32 174, i32 0, metadata !31, metadata !652}
!656 = metadata !{i32 337, i32 0, metadata !638, metadata !579}
!657 = metadata !{i32 349, i32 0, metadata !267, metadata !579}
!658 = metadata !{i32 351, i32 0, metadata !659, metadata !579}
!659 = metadata !{i32 786443, metadata !1, metadata !660, i32 350, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!660 = metadata !{i32 786443, metadata !1, metadata !267, i32 349, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!661 = metadata !{i32 786689, metadata !31, metadata !"s", metadata !24, i32 16777388, metadata !27, i32 0, metadata !658} ; [ DW_TAG_arg_variable ] [s] [line 172]
!662 = metadata !{i32 172, i32 0, metadata !31, metadata !658}
!663 = metadata !{i32 174, i32 0, metadata !31, metadata !658}
!664 = metadata !{i32 350, i32 0, metadata !659, metadata !579}
!665 = metadata !{i32 650, i32 0, metadata !117, null}
!666 = metadata !{i32 651, i32 0, metadata !117, null}
!667 = metadata !{i32 652, i32 0, metadata !117, null}
!668 = metadata !{i32 653, i32 0, metadata !117, null}
!669 = metadata !{i32 654, i32 0, metadata !117, null}
!670 = metadata !{i32 433, i32 0, metadata !206, metadata !671}
!671 = metadata !{i32 655, i32 0, metadata !117, null}
!672 = metadata !{i32 786689, metadata !206, metadata !"out", metadata !24, i32 16777649, metadata !46, i32 0, metadata !671} ; [ DW_TAG_arg_variable ] [out] [line 433]
!673 = metadata !{i32 786689, metadata !206, metadata !"program", metadata !24, i32 33554866, metadata !27, i32 0, metadata !671} ; [ DW_TAG_arg_variable ] [program] [line 434]
!674 = metadata !{i32 434, i32 0, metadata !206, metadata !671}
!675 = metadata !{i32 786689, metadata !206, metadata !"nldesc", metadata !24, i32 50332083, metadata !52, i32 0, metadata !671} ; [ DW_TAG_arg_variable ] [nldesc] [line 435]
!676 = metadata !{i32 435, i32 0, metadata !206, metadata !671}
!677 = metadata !{i32 786689, metadata !206, metadata !"desc", metadata !24, i32 67109299, metadata !101, i32 0, metadata !671} ; [ DW_TAG_arg_variable ] [desc] [line 435]
!678 = metadata !{i32 786689, metadata !206, metadata !"nfile", metadata !24, i32 83886516, metadata !52, i32 0, metadata !671} ; [ DW_TAG_arg_variable ] [nfile] [line 436]
!679 = metadata !{i32 436, i32 0, metadata !206, metadata !671}
!680 = metadata !{i32 786689, metadata !206, metadata !"fnm", metadata !24, i32 100663732, metadata !120, i32 0, metadata !671} ; [ DW_TAG_arg_variable ] [fnm] [line 436]
!681 = metadata !{i32 786689, metadata !206, metadata !"npargs", metadata !24, i32 117440949, metadata !52, i32 0, metadata !671} ; [ DW_TAG_arg_variable ] [npargs] [line 437]
!682 = metadata !{i32 437, i32 0, metadata !206, metadata !671}
!683 = metadata !{i32 786689, metadata !206, metadata !"pa", metadata !24, i32 134218165, metadata !129, i32 0, metadata !671} ; [ DW_TAG_arg_variable ] [pa] [line 437]
!684 = metadata !{i32 786689, metadata !206, metadata !"nbug", metadata !24, i32 150995382, metadata !52, i32 0, metadata !671} ; [ DW_TAG_arg_variable ] [nbug] [line 438]
!685 = metadata !{i32 438, i32 0, metadata !206, metadata !671}
!686 = metadata !{i32 786689, metadata !206, metadata !"bugs", metadata !24, i32 167772598, metadata !101, i32 0, metadata !671} ; [ DW_TAG_arg_variable ] [bugs] [line 438]
!687 = metadata !{i32 441, i32 0, metadata !206, metadata !671}
!688 = metadata !{i32 445, i32 0, metadata !206, metadata !671}
!689 = metadata !{i32 446, i32 0, metadata !206, metadata !671}
!690 = metadata !{i32 447, i32 0, metadata !206, metadata !671}
!691 = metadata !{i32 448, i32 0, metadata !206, metadata !671}
!692 = metadata !{i32 449, i32 0, metadata !206, metadata !671}
!693 = metadata !{i32 450, i32 0, metadata !206, metadata !671}
!694 = metadata !{i32 453, i32 0, metadata !206, metadata !671}
!695 = metadata !{i32 455, i32 0, metadata !206, metadata !671}
!696 = metadata !{i32 456, i32 0, metadata !206, metadata !671}
!697 = metadata !{i32 457, i32 0, metadata !206, metadata !671}
!698 = metadata !{i32 459, i32 0, metadata !206, metadata !671}
!699 = metadata !{i32 460, i32 0, metadata !700, metadata !671}
!700 = metadata !{i32 786443, metadata !1, metadata !206, i32 459, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!701 = metadata !{i32 786688, metadata !206, metadata !"i", metadata !24, i32 440, metadata !52, i32 0, metadata !671} ; [ DW_TAG_auto_variable ] [i] [line 440]
!702 = metadata !{i32 461, i32 0, metadata !703, metadata !671}
!703 = metadata !{i32 786443, metadata !1, metadata !700, i32 461, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!704 = metadata !{i32 462, i32 0, metadata !703, metadata !671}
!705 = metadata !{i32 464, i32 0, metadata !206, metadata !671}
!706 = metadata !{i32 465, i32 0, metadata !707, metadata !671}
!707 = metadata !{i32 786443, metadata !1, metadata !206, i32 464, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!708 = metadata !{i32 466, i32 0, metadata !707, metadata !671}
!709 = metadata !{i32 467, i32 0, metadata !707, metadata !671}
!710 = metadata !{i32 475, i32 0, metadata !711, metadata !671}
!711 = metadata !{i32 786443, metadata !1, metadata !707, i32 475, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!712 = metadata !{i32 476, i32 0, metadata !713, metadata !671}
!713 = metadata !{i32 786443, metadata !1, metadata !711, i32 475, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!714 = metadata !{i32 477, i32 0, metadata !713, metadata !671}
!715 = metadata !{i32 478, i32 0, metadata !713, metadata !671}
!716 = metadata !{i32 479, i32 0, metadata !713, metadata !671}
!717 = metadata !{i32 486, i32 0, metadata !713, metadata !671}
!718 = metadata !{i32 487, i32 0, metadata !713, metadata !671}
!719 = metadata !{i32 489, i32 0, metadata !707, metadata !671}
!720 = metadata !{i32 490, i32 0, metadata !707, metadata !671}
!721 = metadata !{i32 491, i32 0, metadata !206, metadata !671}
!722 = metadata !{i32 492, i32 0, metadata !723, metadata !671}
!723 = metadata !{i32 786443, metadata !1, metadata !206, i32 491, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!724 = metadata !{i32 493, i32 0, metadata !723, metadata !671}
!725 = metadata !{i32 494, i32 0, metadata !723, metadata !671}
!726 = metadata !{i32 502, i32 0, metadata !727, metadata !671}
!727 = metadata !{i32 786443, metadata !1, metadata !723, i32 502, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!728 = metadata !{i32 503, i32 0, metadata !727, metadata !671}
!729 = metadata !{i32 511, i32 0, metadata !727, metadata !671}
!730 = metadata !{i32 512, i32 0, metadata !723, metadata !671}
!731 = metadata !{i32 513, i32 0, metadata !723, metadata !671}
!732 = metadata !{i32 514, i32 0, metadata !206, metadata !671}
!733 = metadata !{i32 515, i32 0, metadata !734, metadata !671}
!734 = metadata !{i32 786443, metadata !1, metadata !206, i32 514, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!735 = metadata !{i32 516, i32 0, metadata !734, metadata !671}
!736 = metadata !{i32 517, i32 0, metadata !737, metadata !671}
!737 = metadata !{i32 786443, metadata !1, metadata !734, i32 517, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!738 = metadata !{i32 518, i32 0, metadata !737, metadata !671}
!739 = metadata !{i32 519, i32 0, metadata !734, metadata !671}
!740 = metadata !{i32 520, i32 0, metadata !734, metadata !671}
!741 = metadata !{i32 521, i32 0, metadata !206, metadata !671}
!742 = metadata !{i32 522, i32 0, metadata !206, metadata !671}
!743 = metadata !{i32 523, i32 0, metadata !206, metadata !671}
!744 = metadata !{i32 525, i32 0, metadata !206, metadata !671}
!745 = metadata !{i32 526, i32 0, metadata !206, metadata !671}
!746 = metadata !{i32 527, i32 0, metadata !206, metadata !671}
!747 = metadata !{i32 656, i32 0, metadata !117, null}
!748 = metadata !{i32 786689, metadata !199, metadata !"out", metadata !24, i32 16777799, metadata !46, i32 0, metadata !749} ; [ DW_TAG_arg_variable ] [out] [line 583]
!749 = metadata !{i32 657, i32 0, metadata !117, null}
!750 = metadata !{i32 583, i32 0, metadata !199, metadata !749}
!751 = metadata !{i32 786689, metadata !199, metadata !"nfile", metadata !24, i32 33555016, metadata !52, i32 0, metadata !749} ; [ DW_TAG_arg_variable ] [nfile] [line 584]
!752 = metadata !{i32 584, i32 0, metadata !199, metadata !749}
!753 = metadata !{i32 786689, metadata !199, metadata !"fnm", metadata !24, i32 50332232, metadata !120, i32 0, metadata !749} ; [ DW_TAG_arg_variable ] [fnm] [line 584]
!754 = metadata !{i32 786689, metadata !199, metadata !"npargs", metadata !24, i32 67109449, metadata !52, i32 0, metadata !749} ; [ DW_TAG_arg_variable ] [npargs] [line 585]
!755 = metadata !{i32 585, i32 0, metadata !199, metadata !749}
!756 = metadata !{i32 786689, metadata !199, metadata !"pa", metadata !24, i32 83886665, metadata !129, i32 0, metadata !749} ; [ DW_TAG_arg_variable ] [pa] [line 585]
!757 = metadata !{i32 587, i32 0, metadata !199, metadata !749}
!758 = metadata !{i32 590, i32 0, metadata !199, metadata !749}
!759 = metadata !{i32 591, i32 0, metadata !199, metadata !749}
!760 = metadata !{i32 592, i32 0, metadata !199, metadata !749}
!761 = metadata !{i32 593, i32 0, metadata !199, metadata !749}
!762 = metadata !{i32 658, i32 0, metadata !117, null}
!763 = metadata !{i32 786689, metadata !192, metadata !"out", metadata !24, i32 16777812, metadata !46, i32 0, metadata !764} ; [ DW_TAG_arg_variable ] [out] [line 596]
!764 = metadata !{i32 659, i32 0, metadata !117, null}
!765 = metadata !{i32 596, i32 0, metadata !192, metadata !764}
!766 = metadata !{i32 786689, metadata !192, metadata !"nfile", metadata !24, i32 33555029, metadata !52, i32 0, metadata !764} ; [ DW_TAG_arg_variable ] [nfile] [line 597]
!767 = metadata !{i32 597, i32 0, metadata !192, metadata !764}
!768 = metadata !{i32 786689, metadata !192, metadata !"fnm", metadata !24, i32 50332245, metadata !120, i32 0, metadata !764} ; [ DW_TAG_arg_variable ] [fnm] [line 597]
!769 = metadata !{i32 786689, metadata !192, metadata !"npargs", metadata !24, i32 67109462, metadata !52, i32 0, metadata !764} ; [ DW_TAG_arg_variable ] [npargs] [line 598]
!770 = metadata !{i32 598, i32 0, metadata !192, metadata !764}
!771 = metadata !{i32 786689, metadata !192, metadata !"pa", metadata !24, i32 83886678, metadata !129, i32 0, metadata !764} ; [ DW_TAG_arg_variable ] [pa] [line 598]
!772 = metadata !{i32 603, i32 0, metadata !192, metadata !764}
!773 = metadata !{i32 604, i32 0, metadata !192, metadata !764}
!774 = metadata !{i32 605, i32 0, metadata !192, metadata !764}
!775 = metadata !{i32 606, i32 0, metadata !192, metadata !764}
!776 = metadata !{i32 607, i32 0, metadata !192, metadata !764}
!777 = metadata !{i32 608, i32 0, metadata !192, metadata !764}
!778 = metadata !{i32 609, i32 0, metadata !192, metadata !764}
!779 = metadata !{i32 610, i32 0, metadata !192, metadata !764}
!780 = metadata !{i32 660, i32 0, metadata !117, null}
!781 = metadata !{i32 786689, metadata !172, metadata !"out", metadata !24, i32 16777788, metadata !46, i32 0, metadata !782} ; [ DW_TAG_arg_variable ] [out] [line 572]
!782 = metadata !{i32 661, i32 0, metadata !117, null}
!783 = metadata !{i32 572, i32 0, metadata !172, metadata !782}
!784 = metadata !{i32 786689, metadata !172, metadata !"nfile", metadata !24, i32 33555005, metadata !52, i32 0, metadata !782} ; [ DW_TAG_arg_variable ] [nfile] [line 573]
!785 = metadata !{i32 573, i32 0, metadata !172, metadata !782}
!786 = metadata !{i32 786689, metadata !172, metadata !"fnm", metadata !24, i32 50332221, metadata !120, i32 0, metadata !782} ; [ DW_TAG_arg_variable ] [fnm] [line 573]
!787 = metadata !{i32 786689, metadata !172, metadata !"npargs", metadata !24, i32 67109438, metadata !52, i32 0, metadata !782} ; [ DW_TAG_arg_variable ] [npargs] [line 574]
!788 = metadata !{i32 574, i32 0, metadata !172, metadata !782}
!789 = metadata !{i32 786689, metadata !172, metadata !"pa", metadata !24, i32 83886654, metadata !129, i32 0, metadata !782} ; [ DW_TAG_arg_variable ] [pa] [line 574]
!790 = metadata !{i32 576, i32 0, metadata !172, metadata !782}
!791 = metadata !{i32 577, i32 0, metadata !172, metadata !782}
!792 = metadata !{i32 578, i32 0, metadata !172, metadata !782}
!793 = metadata !{i32 579, i32 0, metadata !172, metadata !782}
!794 = metadata !{i32 580, i32 0, metadata !172, metadata !782}
!795 = metadata !{i32 663, i32 0, metadata !117, null}
!796 = metadata !{i32 664, i32 0, metadata !117, null}
!797 = metadata !{i32 665, i32 0, metadata !117, null}
!798 = metadata !{i32 386, i32 0, metadata !250, null}
!799 = metadata !{i32 387, i32 0, metadata !250, null}
!800 = metadata !{i32 388, i32 0, metadata !250, null}
!801 = metadata !{i32 389, i32 0, metadata !250, null}
!802 = metadata !{i32 390, i32 0, metadata !250, null}
!803 = metadata !{i32 391, i32 0, metadata !250, null}
!804 = metadata !{i32 396, i32 0, metadata !250, null}
!805 = metadata !{i32 786689, metadata !40, metadata !"s", metadata !24, i32 16777572, metadata !27, i32 0, metadata !806} ; [ DW_TAG_arg_variable ] [s] [line 356]
!806 = metadata !{i32 397, i32 0, metadata !807, null}
!807 = metadata !{i32 786443, metadata !1, metadata !250, i32 396, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!808 = metadata !{i32 356, i32 0, metadata !40, metadata !806}
!809 = metadata !{i32 358, i32 0, metadata !40, metadata !806}
!810 = metadata !{i32 398, i32 0, metadata !807, null}
!811 = metadata !{i32 399, i32 0, metadata !807, null}
!812 = metadata !{i32 400, i32 0, metadata !250, null}
!813 = metadata !{i32 401, i32 0, metadata !814, null}
!814 = metadata !{i32 786443, metadata !1, metadata !250, i32 400, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!815 = metadata !{i32 402, i32 0, metadata !814, null}
!816 = metadata !{i32 403, i32 0, metadata !814, null}
!817 = metadata !{i32 404, i32 0, metadata !250, null}
!818 = metadata !{i32 405, i32 0, metadata !819, null}
!819 = metadata !{i32 786443, metadata !1, metadata !250, i32 404, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!820 = metadata !{i32 406, i32 0, metadata !821, null}
!821 = metadata !{i32 786443, metadata !1, metadata !819, i32 406, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!822 = metadata !{i32 407, i32 0, metadata !823, null}
!823 = metadata !{i32 786443, metadata !1, metadata !821, i32 406, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!824 = metadata !{i32 408, i32 0, metadata !823, null}
!825 = metadata !{i32 409, i32 0, metadata !823, null}
!826 = metadata !{i32 410, i32 0, metadata !823, null}
!827 = metadata !{i32 411, i32 0, metadata !823, null}
!828 = metadata !{i32 414, i32 0, metadata !250, null}
!829 = metadata !{i32 415, i32 0, metadata !830, null}
!830 = metadata !{i32 786443, metadata !1, metadata !250, i32 414, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!831 = metadata !{i32 416, i32 0, metadata !830, null}
!832 = metadata !{i32 417, i32 0, metadata !830, null}
!833 = metadata !{i32 418, i32 0, metadata !250, null}
!834 = metadata !{i32 419, i32 0, metadata !835, null}
!835 = metadata !{i32 786443, metadata !1, metadata !250, i32 418, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!836 = metadata !{i32 420, i32 0, metadata !835, null}
!837 = metadata !{i32 421, i32 0, metadata !250, null}
!838 = metadata !{i32 529, i32 0, metadata !181, null}
!839 = metadata !{i32 530, i32 0, metadata !181, null}
!840 = metadata !{i32 531, i32 0, metadata !181, null}
!841 = metadata !{i32 535, i32 0, metadata !181, null}
!842 = metadata !{i32 537, i32 0, metadata !843, null}
!843 = metadata !{i32 786443, metadata !1, metadata !181, i32 535, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!844 = metadata !{i32 538, i32 0, metadata !845, null}
!845 = metadata !{i32 786443, metadata !1, metadata !843, i32 538, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!846 = metadata !{i32 540, i32 0, metadata !847, null}
!847 = metadata !{i32 786443, metadata !1, metadata !843, i32 540, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!848 = metadata !{i32 539, i32 0, metadata !845, null}
!849 = metadata !{i32 541, i32 0, metadata !847, null}
!850 = metadata !{i32 542, i32 0, metadata !847, null}
!851 = metadata !{i32 544, i32 0, metadata !847, null}
!852 = metadata !{i32 545, i32 0, metadata !843, null}
!853 = metadata !{i32 546, i32 0, metadata !843, null}
!854 = metadata !{i32 548, i32 0, metadata !843, null}
!855 = metadata !{i32 549, i32 0, metadata !856, null}
!856 = metadata !{i32 786443, metadata !1, metadata !843, i32 549, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!857 = metadata !{i32 551, i32 0, metadata !858, null}
!858 = metadata !{i32 786443, metadata !1, metadata !843, i32 551, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!859 = metadata !{i32 550, i32 0, metadata !856, null}
!860 = metadata !{i32 552, i32 0, metadata !858, null}
!861 = metadata !{i32 553, i32 0, metadata !858, null}
!862 = metadata !{i32 555, i32 0, metadata !858, null}
!863 = metadata !{i32 556, i32 0, metadata !843, null}
!864 = metadata !{i32 557, i32 0, metadata !843, null}
!865 = metadata !{i32 559, i32 0, metadata !843, null}
!866 = metadata !{i32 560, i32 0, metadata !867, null}
!867 = metadata !{i32 786443, metadata !1, metadata !843, i32 560, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!868 = metadata !{i32 562, i32 0, metadata !869, null}
!869 = metadata !{i32 786443, metadata !1, metadata !843, i32 562, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wman.c]
!870 = metadata !{i32 561, i32 0, metadata !867, null}
!871 = metadata !{i32 563, i32 0, metadata !869, null}
!872 = metadata !{i32 564, i32 0, metadata !869, null}
!873 = metadata !{i32 566, i32 0, metadata !869, null}
!874 = metadata !{i32 567, i32 0, metadata !843, null}
!875 = metadata !{i32 568, i32 0, metadata !843, null}
!876 = metadata !{i32 570, i32 0, metadata !181, null}
!877 = metadata !{i32 123, i32 0, metadata !225, null}
!878 = metadata !{i32 127, i32 0, metadata !225, null}
!879 = metadata !{i32 128, i32 0, metadata !225, null}
!880 = metadata !{i32 129, i32 0, metadata !225, null}

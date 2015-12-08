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
  %call = tail call fastcc i8* @repall(i8* %s, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #5
  ret i8* %call
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i8* @repall(i8* %s, i32 %nsr, %struct.t_sandr* nocapture %sa) #0 {
entry:
  %cmp11 = icmp sgt i32 %nsr, 0
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %entry ]
  %buf.012 = phi i8* [ %call, %if.end ], [ %s, %entry ]
  %search = getelementptr inbounds %struct.t_sandr* %sa, i64 %indvars.iv, i32 0
  %0 = load i8** %search, align 8, !tbaa !0
  %replace = getelementptr inbounds %struct.t_sandr* %sa, i64 %indvars.iv, i32 1
  %1 = load i8** %replace, align 8, !tbaa !0
  %call = tail call i8* @replace(i8* %buf.012, i8* %0, i8* %1) #6
  %2 = trunc i64 %indvars.iv to i32
  %tobool = icmp eq i32 %2, 0
  %tobool3 = icmp eq i8* %buf.012, null
  %or.cond = or i1 %tobool, %tobool3
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  tail call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str63, i64 0, i64 0), i32 144, i8* %buf.012) #6
  br label %if.end

if.end:                                           ; preds = %for.body, %if.then
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nsr
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %if.end, %entry
  %buf.0.lcssa = phi i8* [ %s, %entry ], [ %call, %if.end ]
  ret i8* %buf.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define i8* @check_nroff(i8* %s) #0 {
entry:
  %call = tail call fastcc i8* @repall(i8* %s, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #5
  ret i8* %call
}

; Function Attrs: nounwind optsize uwtable
define i8* @fileopt(i64 %flag) #0 {
entry:
  %and = and i64 %flag, 6
  %cmp = icmp eq i64 %and, 6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str54, i64 0, i64 0), i64 7, i32 1, i1 false)
  br label %if.end13

if.else:                                          ; preds = %entry
  %and1 = and i64 %flag, 2
  %cmp2 = icmp eq i64 %and1, 0
  br i1 %cmp2, label %if.else5, label %if.then3

if.then3:                                         ; preds = %if.else
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str55, i64 0, i64 0), i64 6, i32 1, i1 false)
  br label %if.end13

if.else5:                                         ; preds = %if.else
  %and6 = and i64 %flag, 4
  %cmp7 = icmp eq i64 %and6, 0
  br i1 %cmp7, label %if.else10, label %if.then8

if.then8:                                         ; preds = %if.else5
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str56, i64 0, i64 0), i64 7, i32 1, i1 false)
  br label %if.end13

if.else10:                                        ; preds = %if.else5
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str57, i64 0, i64 0), i64 6, i32 1, i1 false)
  br label %if.end13

if.end13:                                         ; preds = %if.then3, %if.else10, %if.then8, %if.then
  %and14 = and i64 %flag, 8
  %cmp15 = icmp eq i64 %and14, 0
  br i1 %cmp15, label %if.end25, label %if.then16

if.then16:                                        ; preds = %if.end13
  %strlen36 = tail call i64 @strlen(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0))
  %endptr37 = getelementptr [32 x i8]* @fileopt.buf, i64 0, i64 %strlen36
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %endptr37, i8* getelementptr inbounds ([6 x i8]* @.str58, i64 0, i64 0), i64 6, i32 1, i1 false)
  %and18 = and i64 %flag, 1
  %cmp19 = icmp eq i64 %and18, 0
  %strlen38 = tail call i64 @strlen(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0))
  %endptr39 = getelementptr [32 x i8]* @fileopt.buf, i64 0, i64 %strlen38
  %0 = bitcast i8* %endptr39 to i16*
  br i1 %cmp19, label %if.else22, label %if.then20

if.then20:                                        ; preds = %if.then16
  store i16 33, i16* %0, align 1
  br label %if.end25

if.else22:                                        ; preds = %if.then16
  store i16 46, i16* %0, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.end13, %if.then20, %if.else22
  %and26 = and i64 %flag, 16
  %cmp27 = icmp eq i64 %and26, 0
  br i1 %cmp27, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end25
  %strlen = tail call i64 @strlen(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0))
  %endptr = getelementptr [32 x i8]* @fileopt.buf, i64 0, i64 %strlen
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %endptr, i8* getelementptr inbounds ([7 x i8]* @.str61, i64 0, i64 0), i64 7, i32 1, i1 false)
  br label %if.end30

if.end30:                                         ; preds = %if.end25, %if.then28
  ret i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0)
}

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i8* @strcat(i8*, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i8* @check_tty(i8* %s) #0 {
entry:
  %call = tail call fastcc i8* @repall(i8* %s, i32 8, %struct.t_sandr* getelementptr inbounds ([8 x %struct.t_sandr]* @sandrTty, i64 0, i64 0)) #5
  ret i8* %call
}

; Function Attrs: nounwind optsize uwtable
define void @print_tty_formatted(%struct._IO_FILE* nocapture %out, i32 %nldesc, i8** nocapture %desc) #0 {
entry:
  %cmp54 = icmp sgt i32 %nldesc, 0
  br i1 %cmp54, label %for.body, label %for.end.thread

for.end.thread:                                   ; preds = %entry
  %call361 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str63, i64 0, i64 0), i32 370, i32 0, i32 1) #6
  br label %for.end30

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.body ], [ 0, %entry ]
  %j.056 = phi i64 [ %add1, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8** %desc, i64 %indvars.iv57
  %0 = load i8** %arrayidx, align 8, !tbaa !0
  %call = tail call i64 @strlen(i8* %0) #7
  %conv51 = and i64 %j.056, 4294967295
  %add = add i64 %conv51, 10
  %add1 = add i64 %add, %call
  %indvars.iv.next58 = add i64 %indvars.iv57, 1
  %lftr.wideiv59 = trunc i64 %indvars.iv.next58 to i32
  %exitcond60 = icmp eq i32 %lftr.wideiv59, %nldesc
  br i1 %exitcond60, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %conv2 = trunc i64 %add1 to i32
  %call3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str63, i64 0, i64 0), i32 370, i32 %conv2, i32 1) #6
  br i1 %cmp54, label %for.body7, label %for.end30

for.body7:                                        ; preds = %for.end, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %for.end ]
  %call8 = tail call i64 @strlen(i8* %call3) #7
  %cmp9 = icmp eq i64 %call8, 0
  br i1 %cmp9, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body7
  %sub = add i64 %call8, -1
  %arrayidx12 = getelementptr inbounds i8* %call3, i64 %sub
  %1 = load i8* %arrayidx12, align 1, !tbaa !1
  switch i8 %1, label %if.then [
    i8 32, label %if.end
    i8 10, label %if.end
  ]

if.then:                                          ; preds = %land.lhs.true
  %strlen = tail call i64 @strlen(i8* %call3)
  %endptr = getelementptr i8* %call3, i64 %strlen
  %2 = bitcast i8* %endptr to i16*
  store i16 32, i16* %2, align 1
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %land.lhs.true, %for.body7, %if.then
  %arrayidx25 = getelementptr inbounds i8** %desc, i64 %indvars.iv
  %3 = load i8** %arrayidx25, align 8, !tbaa !0
  %call.i = tail call fastcc i8* @repall(i8* %3, i32 8, %struct.t_sandr* getelementptr inbounds ([8 x %struct.t_sandr]* @sandrTty, i64 0, i64 0)) #6
  %call27 = tail call i8* @strcat(i8* %call3, i8* %call.i) #6
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str65, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str63, i64 0, i64 0), i32 377, i8* %call.i) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nldesc
  br i1 %exitcond, label %for.end30, label %for.body7

for.end30:                                        ; preds = %if.end, %for.end.thread, %for.end
  %call362 = phi i8* [ %call361, %for.end.thread ], [ %call3, %for.end ], [ %call3, %if.end ]
  %call31 = tail call i8* @wrap_lines(i8* %call362, i32 80, i32 0) #6
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str66, i64 0, i64 0), i8* %call31) #6
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str65, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str63, i64 0, i64 0), i32 382, i8* %call31) #6
  tail call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str63, i64 0, i64 0), i32 383, i8* %call362) #6
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #3

; Function Attrs: optsize
declare i8* @wrap_lines(i8*, i32, i32) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize uwtable
define i8* @check_html(i8* %s, i8* %program) #0 {
entry:
  %buf.i = alloca [256 x i8], align 16
  %call = call fastcc i8* @repall(i8* %s, i32 10, %struct.t_sandr* getelementptr inbounds ([10 x %struct.t_sandr]* @sandrHTML, i64 0, i64 0)) #5
  %0 = getelementptr inbounds [256 x i8]* %buf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #4
  %1 = load %struct.t_sandr** @html_xref.sr, align 8, !tbaa !0
  %cmp.i = icmp eq %struct.t_sandr* %1, null
  br i1 %cmp.i, label %if.then.i, label %if.end20thread-pre-split.i

if.then.i:                                        ; preds = %entry
  %call.i = call i32 @get_file(i8* getelementptr inbounds ([10 x i8]* @.str183, i64 0, i64 0), i8*** @html_xref.str) #6
  store i32 %call.i, i32* @html_xref.nstr, align 4, !tbaa !3
  %call1.i = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str184, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str63, i64 0, i64 0), i32 187, i32 %call.i, i32 16) #6
  %2 = bitcast i8* %call1.i to %struct.t_sandr*
  store %struct.t_sandr* %2, %struct.t_sandr** @html_xref.sr, align 8, !tbaa !0
  %3 = load i32* @html_xref.nstr, align 4, !tbaa !3
  %cmp231.i = icmp sgt i32 %3, 0
  br i1 %cmp231.i, label %for.body.lr.ph.i, label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then.i
  %tobool.i = icmp eq i8* %program, null
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %j.032.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %j.1.i, %for.inc.i ]
  br i1 %tobool.i, label %if.then5.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %4 = load i8*** @html_xref.str, align 8, !tbaa !0
  %arrayidx.i = getelementptr inbounds i8** %4, i64 %indvars.iv.i
  %5 = load i8** %arrayidx.i, align 8, !tbaa !0
  %call3.i = call i32 @gmx_strcasecmp(i8* %program, i8* %5) #6
  %cmp4.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.i, label %for.inc.i, label %if.then5.i

if.then5.i:                                       ; preds = %lor.lhs.false.i, %for.body.i
  %6 = load i8*** @html_xref.str, align 8, !tbaa !0
  %arrayidx7.i = getelementptr inbounds i8** %6, i64 %indvars.iv.i
  %7 = load i8** %arrayidx7.i, align 8, !tbaa !0
  %idxprom8.i = sext i32 %j.032.i to i64
  %8 = load %struct.t_sandr** @html_xref.sr, align 8, !tbaa !0
  %search.i = getelementptr inbounds %struct.t_sandr* %8, i64 %idxprom8.i, i32 0
  store i8* %7, i8** %search.i, align 8, !tbaa !0
  %9 = load i8*** @html_xref.str, align 8, !tbaa !0
  %arrayidx11.i = getelementptr inbounds i8** %9, i64 %indvars.iv.i
  %10 = load i8** %arrayidx11.i, align 8, !tbaa !0
  %call14.i = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([25 x i8]* @.str185, i64 0, i64 0), i8* %10, i8* %10) #6
  %call16.i = call i8* @gmx_strdup(i8* %0) #6
  %11 = load %struct.t_sandr** @html_xref.sr, align 8, !tbaa !0
  %replace.i = getelementptr inbounds %struct.t_sandr* %11, i64 %idxprom8.i, i32 1
  store i8* %call16.i, i8** %replace.i, align 8, !tbaa !0
  %inc.i = add nsw i32 %j.032.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then5.i, %lor.lhs.false.i
  %j.1.i = phi i32 [ %inc.i, %if.then5.i ], [ %j.032.i, %lor.lhs.false.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %12 = load i32* @html_xref.nstr, align 4, !tbaa !3
  %13 = trunc i64 %indvars.iv.next.i to i32
  %cmp2.i = icmp slt i32 %13, %12
  br i1 %cmp2.i, label %for.body.i, label %for.cond.for.end_crit_edge.i

for.cond.for.end_crit_edge.i:                     ; preds = %for.inc.i
  %.pre.pre.i = load %struct.t_sandr** @html_xref.sr, align 8, !tbaa !0
  br label %for.end.i

for.end.i:                                        ; preds = %for.cond.for.end_crit_edge.i, %if.then.i
  %.pre.i = phi %struct.t_sandr* [ %.pre.pre.i, %for.cond.for.end_crit_edge.i ], [ %2, %if.then.i ]
  %j.0.lcssa.i = phi i32 [ %j.1.i, %for.cond.for.end_crit_edge.i ], [ 0, %if.then.i ]
  store i32 %j.0.lcssa.i, i32* @html_xref.nstr, align 4, !tbaa !3
  br label %if.end20.i

if.end20thread-pre-split.i:                       ; preds = %entry
  %.pr.i = load i32* @html_xref.nstr, align 4, !tbaa !3
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end20thread-pre-split.i, %for.end.i
  %14 = phi %struct.t_sandr* [ %1, %if.end20thread-pre-split.i ], [ %.pre.i, %for.end.i ]
  %15 = phi i32 [ %.pr.i, %if.end20thread-pre-split.i ], [ %j.0.lcssa.i, %for.end.i ]
  %cmp11.i.i = icmp sgt i32 %15, 0
  br i1 %cmp11.i.i, label %for.body.i.i, label %html_xref.exit

for.body.i.i:                                     ; preds = %if.end20.i, %if.end.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %if.end.i.i ], [ 0, %if.end20.i ]
  %buf.012.i.i = phi i8* [ %call.i.i, %if.end.i.i ], [ %call, %if.end20.i ]
  %search.i.i = getelementptr inbounds %struct.t_sandr* %14, i64 %indvars.iv.i.i, i32 0
  %16 = load i8** %search.i.i, align 8, !tbaa !0
  %replace.i.i = getelementptr inbounds %struct.t_sandr* %14, i64 %indvars.iv.i.i, i32 1
  %17 = load i8** %replace.i.i, align 8, !tbaa !0
  %call.i.i = call i8* @replaceww(i8* %buf.012.i.i, i8* %16, i8* %17) #6
  %18 = trunc i64 %indvars.iv.i.i to i32
  %tobool.i.i = icmp eq i32 %18, 0
  %tobool3.i.i = icmp eq i8* %buf.012.i.i, null
  %or.cond.i.i = or i1 %tobool.i.i, %tobool3.i.i
  br i1 %or.cond.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str63, i64 0, i64 0), i32 160, i8* %buf.012.i.i) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.i
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %15
  br i1 %exitcond, label %html_xref.exit, label %for.body.i.i

html_xref.exit:                                   ; preds = %if.end.i.i, %if.end20.i
  %buf.0.lcssa.i.i = phi i8* [ %call, %if.end20.i ], [ %call.i.i, %if.end.i.i ]
  call void @llvm.lifetime.end(i64 256, i8* %0) #4
  ret i8* %buf.0.lcssa.i.i
}

; Function Attrs: nounwind optsize uwtable
define void @write_man(%struct._IO_FILE* %out, i8* nocapture %mantp, i8* %program, i32 %nldesc, i8** nocapture %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npargs, %struct.t_pargs* %pa, i32 %nbug, i8** nocapture %bugs, i32 %bHidden) #0 {
entry:
  %link.i = alloca [10 x i8], align 1
  %tobool = icmp ne i32 %bHidden, 0
  br i1 %tobool, label %if.end9, label %if.else

if.else:                                          ; preds = %entry
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str63, i64 0, i64 0), i32 633, i32 %npargs, i32 32) #6
  %0 = bitcast i8* %call to %struct.t_pargs*
  %cmp172 = icmp sgt i32 %npargs, 0
  br i1 %cmp172, label %for.body, label %if.end9

for.body:                                         ; preds = %if.else, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.else ]
  %npar.0174 = phi i32 [ %npar.1, %for.inc ], [ 0, %if.else ]
  %arrayidx = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv
  %call1 = call i32 @is_hidden(%struct.t_pargs* %arrayidx) #6
  %tobool2 = icmp eq i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %for.inc

if.then3:                                         ; preds = %for.body
  %idxprom4 = sext i32 %npar.0174 to i64
  %arrayidx5 = getelementptr inbounds %struct.t_pargs* %0, i64 %idxprom4
  %1 = bitcast %struct.t_pargs* %arrayidx5 to i8*
  %2 = bitcast %struct.t_pargs* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 32, i32 8, i1 false), !tbaa.struct !4
  %inc = add nsw i32 %npar.0174, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then3
  %npar.1 = phi i32 [ %npar.0174, %for.body ], [ %inc, %if.then3 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv201 = trunc i64 %indvars.iv.next to i32
  %exitcond202 = icmp eq i32 %lftr.wideiv201, %npargs
  br i1 %exitcond202, label %if.end9, label %for.body

if.end9:                                          ; preds = %if.else, %for.inc, %entry
  %npar.2 = phi i32 [ %npargs, %entry ], [ 0, %if.else ], [ %npar.1, %for.inc ]
  %par.0 = phi %struct.t_pargs* [ %pa, %entry ], [ %0, %if.else ], [ %0, %for.inc ]
  %call10 = call i8* @strrchr(i8* %program, i32 47) #7
  %cmp11 = icmp eq i8* %call10, null
  %add.ptr = getelementptr inbounds i8* %call10, i64 1
  %pr.0 = select i1 %cmp11, i8* %program, i8* %add.ptr
  %call15 = call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([4 x i8]* @.str68, i64 0, i64 0)) #7
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end9
  %call.i.i = call fastcc i8* @repall(i8* %pr.0, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #6
  %call1.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([27 x i8]* @.str170, i64 0, i64 0), i8* %call.i.i) #6
  %cmp.i = icmp sgt i32 %nldesc, 0
  br i1 %cmp.i, label %for.body.i, label %if.end.i

for.body.i:                                       ; preds = %if.then17, %for.body.i
  %indvars.iv172.i = phi i64 [ %indvars.iv.next173.i, %for.body.i ], [ 0, %if.then17 ]
  %arrayidx.i = getelementptr inbounds i8** %desc, i64 %indvars.iv172.i
  %3 = load i8** %arrayidx.i, align 8, !tbaa !0
  %call.i146.i = call fastcc i8* @repall(i8* %3, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #6
  %call4.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str66, i64 0, i64 0), i8* %call.i146.i) #6
  %indvars.iv.next173.i = add i64 %indvars.iv172.i, 1
  %lftr.wideiv199 = trunc i64 %indvars.iv.next173.i to i32
  %exitcond200 = icmp eq i32 %lftr.wideiv199, %nldesc
  br i1 %exitcond200, label %if.end.i, label %for.body.i

if.end.i:                                         ; preds = %for.body.i, %if.then17
  %cmp5.i = icmp sgt i32 %nfile, 0
  br i1 %cmp5.i, label %for.body12.lr.ph.i, label %if.end32.i

for.body12.lr.ph.i:                               ; preds = %if.end.i
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([30 x i8]* @.str171, i64 0, i64 0), i64 29, i64 1, %struct._IO_FILE* %out) #4
  %5 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8]* @.str172, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %out) #4
  %6 = call i64 @fwrite(i8* getelementptr inbounds ([86 x i8]* @.str173, i64 0, i64 0), i64 85, i64 1, %struct._IO_FILE* %out) #4
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.body12.i, %for.body12.lr.ph.i
  %indvars.iv168.i = phi i64 [ 0, %for.body12.lr.ph.i ], [ %indvars.iv.next169.i, %for.body12.i ]
  %opt.i = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv168.i, i32 1
  %7 = load i8** %opt.i, align 8, !tbaa !0
  %call.i147.i = call fastcc i8* @repall(i8* %7, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #6
  %fn.i = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv168.i, i32 2
  %8 = load i8** %fn.i, align 8, !tbaa !0
  %call.i148.i = call fastcc i8* @repall(i8* %8, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #6
  %flag.i = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv168.i, i32 3
  %9 = load i64* %flag.i, align 8, !tbaa !5
  %call21.i = call i8* @fileopt(i64 %9) #6
  %call.i149.i = call fastcc i8* @repall(i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #6
  %ftp.i = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv168.i, i32 0
  %10 = load i32* %ftp.i, align 4, !tbaa !3
  %call25.i = call i8* @ftp2desc(i32 %10) #6
  %call.i150.i = call fastcc i8* @repall(i8* %call25.i, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #6
  %call27.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([69 x i8]* @.str174, i64 0, i64 0), i8* %call.i147.i, i8* %call.i148.i, i8* %call.i149.i, i8* %call.i150.i) #6
  %indvars.iv.next169.i = add i64 %indvars.iv168.i, 1
  %lftr.wideiv197 = trunc i64 %indvars.iv.next169.i to i32
  %exitcond198 = icmp eq i32 %lftr.wideiv197, %nfile
  br i1 %exitcond198, label %for.end30.i, label %for.body12.i

for.end30.i:                                      ; preds = %for.body12.i
  %11 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str175, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %out) #4
  br label %if.end32.i

if.end32.i:                                       ; preds = %for.end30.i, %if.end.i
  %cmp33.i = icmp sgt i32 %npar.2, 0
  br i1 %cmp33.i, label %for.body40.lr.ph.i, label %if.end87.i

for.body40.lr.ph.i:                               ; preds = %if.end32.i
  %12 = call i64 @fwrite(i8* getelementptr inbounds ([30 x i8]* @.str171, i64 0, i64 0), i64 29, i64 1, %struct._IO_FILE* %out) #4
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([48 x i8]* @.str176, i64 0, i64 0), i64 47, i64 1, %struct._IO_FILE* %out) #4
  %14 = call i64 @fwrite(i8* getelementptr inbounds ([66 x i8]* @.str177, i64 0, i64 0), i64 65, i64 1, %struct._IO_FILE* %out) #4
  br label %for.body40.i

for.body40.i:                                     ; preds = %for.inc83.i, %for.body40.lr.ph.i
  %indvars.iv164.i = phi i64 [ 0, %for.body40.lr.ph.i ], [ %indvars.iv.next165.i, %for.inc83.i ]
  %arrayidx42.i = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv164.i
  %call43.i = call i8* @pa_val(%struct.t_pargs* %arrayidx42.i) #6
  %call.i151.i = call fastcc i8* @repall(i8* %call43.i, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #6
  %call45.i = call i64 @strlen(i8* %call.i151.i) #7
  %cmp46.i = icmp ult i64 %call45.i, 9
  %option.i = getelementptr inbounds %struct.t_pargs* %arrayidx42.i, i64 0, i32 0
  %15 = load i8** %option.i, align 8, !tbaa !0
  %call.i152.i = call fastcc i8* @repall(i8* %15, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #6
  %type.i = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv164.i, i32 2
  %16 = load i32* %type.i, align 4, !tbaa !3
  %idxprom53.i = sext i32 %16 to i64
  %arrayidx54.i = getelementptr inbounds [7 x i8*]* @argtp, i64 0, i64 %idxprom53.i
  %17 = load i8** %arrayidx54.i, align 8, !tbaa !0
  %call57.i = call i8* @pa_val(%struct.t_pargs* %arrayidx42.i) #6
  %call.i153.i = call fastcc i8* @repall(i8* %call57.i, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #6
  %desc61.i = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv164.i, i32 4
  %18 = load i8** %desc61.i, align 8, !tbaa !0
  %call.i154.i = call fastcc i8* @repall(i8* %18, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #6
  br i1 %cmp46.i, label %if.then47.i, label %if.else.i

if.then47.i:                                      ; preds = %for.body40.i
  %call63.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([71 x i8]* @.str178, i64 0, i64 0), i8* %call.i152.i, i8* %17, i8* %call.i153.i, i8* %call.i154.i) #6
  br label %for.inc83.i

if.else.i:                                        ; preds = %for.body40.i
  %call81.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([85 x i8]* @.str179, i64 0, i64 0), i8* %call.i152.i, i8* %17, i8* %call.i153.i, i8* %call.i154.i) #6
  br label %for.inc83.i

for.inc83.i:                                      ; preds = %if.else.i, %if.then47.i
  %indvars.iv.next165.i = add i64 %indvars.iv164.i, 1
  %lftr.wideiv195 = trunc i64 %indvars.iv.next165.i to i32
  %exitcond196 = icmp eq i32 %lftr.wideiv195, %npar.2
  br i1 %exitcond196, label %for.end85.i, label %for.body40.i

for.end85.i:                                      ; preds = %for.inc83.i
  %19 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str175, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %out) #4
  br label %if.end87.i

if.end87.i:                                       ; preds = %for.end85.i, %if.end32.i
  %cmp88.i = icmp sgt i32 %nbug, 0
  br i1 %cmp88.i, label %for.body94.lr.ph.i, label %if.end18

for.body94.lr.ph.i:                               ; preds = %if.end87.i
  %fputc.i = call i32 @fputc(i32 10, %struct._IO_FILE* %out) #4
  %20 = call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str180, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %out) #4
  br label %for.body94.i

for.body94.i:                                     ; preds = %for.body94.i, %for.body94.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body94.lr.ph.i ], [ %indvars.iv.next.i, %for.body94.i ]
  %arrayidx96.i = getelementptr inbounds i8** %bugs, i64 %indvars.iv.i
  %21 = load i8** %arrayidx96.i, align 8, !tbaa !0
  %call.i155.i = call fastcc i8* @repall(i8* %21, i32 21, %struct.t_sandr* getelementptr inbounds ([21 x %struct.t_sandr]* @sandrTeX, i64 0, i64 0)) #6
  %call98.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([10 x i8]* @.str181, i64 0, i64 0), i8* %call.i155.i) #6
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv193 = trunc i64 %indvars.iv.next.i to i32
  %exitcond194 = icmp eq i32 %lftr.wideiv193, %nbug
  br i1 %exitcond194, label %for.end101.i, label %for.body94.i

for.end101.i:                                     ; preds = %for.body94.i
  %22 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str182, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %out) #4
  br label %if.end18

if.end18:                                         ; preds = %for.end101.i, %if.end87.i, %if.end9
  %call19 = call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([6 x i8]* @.str69, i64 0, i64 0)) #7
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  call fastcc void @mydate() #6
  %call1.i125 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([15 x i8]* @.str156, i64 0, i64 0), i8* %pr.0, i8* getelementptr inbounds ([128 x i8]* @mydate.tbuf, i64 0, i64 0)) #6
  %23 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str157, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %out) #4
  %call3.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str66, i64 0, i64 0), i8* %pr.0) #6
  %call4.i126 = call i8* @GromacsVersion() #6
  %call5.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([7 x i8]* @.str158, i64 0, i64 0), i8* %call4.i126) #6
  %24 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str159, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %out) #4
  %call7.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([10 x i8]* @.str160, i64 0, i64 0), i8* %pr.0) #6
  %cmp.i127 = icmp sgt i32 %nfile, 0
  br i1 %cmp.i127, label %for.body.i130, label %if.end.i131

for.body.i130:                                    ; preds = %if.then21, %for.body.i130
  %indvars.iv237.i = phi i64 [ %indvars.iv.next238.i, %for.body.i130 ], [ 0, %if.then21 ]
  %opt.i128 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv237.i, i32 1
  %25 = load i8** %opt.i128, align 8, !tbaa !0
  %fn.i129 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv237.i, i32 2
  %26 = load i8** %fn.i129, align 8, !tbaa !0
  %call11.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([17 x i8]* @.str161, i64 0, i64 0), i8* %25, i8* %26) #6
  %indvars.iv.next238.i = add i64 %indvars.iv237.i, 1
  %lftr.wideiv191 = trunc i64 %indvars.iv.next238.i to i32
  %exitcond192 = icmp eq i32 %lftr.wideiv191, %nfile
  br i1 %exitcond192, label %if.end.i131, label %for.body.i130

if.end.i131:                                      ; preds = %for.body.i130, %if.then21
  %cmp12.i = icmp sgt i32 %npar.2, 0
  br i1 %cmp12.i, label %for.body16.i, label %if.end37.i

for.body16.i:                                     ; preds = %if.end.i131, %for.inc34.i
  %indvars.iv233.i = phi i64 [ %indvars.iv.next234.i, %for.inc34.i ], [ 0, %if.end.i131 ]
  %type.i132 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv233.i, i32 2
  %27 = load i32* %type.i132, align 4, !tbaa !3
  %cmp19.i = icmp eq i32 %27, 4
  %option.i133 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv233.i, i32 0
  %28 = load i8** %option.i133, align 8, !tbaa !0
  br i1 %cmp19.i, label %if.then20.i, label %if.else.i134

if.then20.i:                                      ; preds = %for.body16.i
  %add.ptr.i = getelementptr inbounds i8* %28, i64 1
  %call23.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([18 x i8]* @.str162, i64 0, i64 0), i8* %add.ptr.i) #6
  br label %for.inc34.i

if.else.i134:                                     ; preds = %for.body16.i
  %idxprom30.i = sext i32 %27 to i64
  %arrayidx31.i = getelementptr inbounds [7 x i8*]* @argtp, i64 0, i64 %idxprom30.i
  %29 = load i8** %arrayidx31.i, align 8, !tbaa !0
  %call32.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([17 x i8]* @.str161, i64 0, i64 0), i8* %28, i8* %29) #6
  br label %for.inc34.i

for.inc34.i:                                      ; preds = %if.else.i134, %if.then20.i
  %indvars.iv.next234.i = add i64 %indvars.iv233.i, 1
  %lftr.wideiv189 = trunc i64 %indvars.iv.next234.i to i32
  %exitcond190 = icmp eq i32 %lftr.wideiv189, %npar.2
  br i1 %exitcond190, label %if.end37.i, label %for.body16.i

if.end37.i:                                       ; preds = %for.inc34.i, %if.end.i131
  %cmp38.i = icmp sgt i32 %nldesc, 0
  br i1 %cmp38.i, label %for.body43.lr.ph.i, label %if.end51.i

for.body43.lr.ph.i:                               ; preds = %if.end37.i
  %30 = call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str163, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %out) #4
  br label %for.body43.i

for.body43.i:                                     ; preds = %for.body43.i, %for.body43.lr.ph.i
  %indvars.iv229.i = phi i64 [ 0, %for.body43.lr.ph.i ], [ %indvars.iv.next230.i, %for.body43.i ]
  %arrayidx45.i = getelementptr inbounds i8** %desc, i64 %indvars.iv229.i
  %31 = load i8** %arrayidx45.i, align 8, !tbaa !0
  %call.i.i135 = call fastcc i8* @repall(i8* %31, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #6
  %call47.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str66, i64 0, i64 0), i8* %call.i.i135) #6
  %indvars.iv.next230.i = add i64 %indvars.iv229.i, 1
  %lftr.wideiv187 = trunc i64 %indvars.iv.next230.i to i32
  %exitcond188 = icmp eq i32 %lftr.wideiv187, %nldesc
  br i1 %exitcond188, label %if.end51.i, label %for.body43.i

if.end51.i:                                       ; preds = %for.body43.i, %if.end37.i
  br i1 %cmp.i127, label %for.body57.lr.ph.i, label %if.end75.i

for.body57.lr.ph.i:                               ; preds = %if.end51.i
  %32 = call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str164, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %out) #4
  br label %for.body57.i

for.body57.i:                                     ; preds = %for.body57.i, %for.body57.lr.ph.i
  %indvars.iv225.i = phi i64 [ 0, %for.body57.lr.ph.i ], [ %indvars.iv.next226.i, %for.body57.i ]
  %opt60.i = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv225.i, i32 1
  %33 = load i8** %opt60.i, align 8, !tbaa !0
  %fn63.i = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv225.i, i32 2
  %34 = load i8** %fn63.i, align 8, !tbaa !0
  %flag.i136 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv225.i, i32 3
  %35 = load i64* %flag.i136, align 8, !tbaa !5
  %call66.i = call i8* @fileopt(i64 %35) #6
  %ftp.i137 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv225.i, i32 0
  %36 = load i32* %ftp.i137, align 4, !tbaa !3
  %call69.i = call i8* @ftp2desc(i32 %36) #6
  %call.i203.i = call fastcc i8* @repall(i8* %call69.i, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #6
  %call71.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([29 x i8]* @.str165, i64 0, i64 0), i8* %33, i8* %34, i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* %call.i203.i) #6
  %indvars.iv.next226.i = add i64 %indvars.iv225.i, 1
  %lftr.wideiv185 = trunc i64 %indvars.iv.next226.i to i32
  %exitcond186 = icmp eq i32 %lftr.wideiv185, %nfile
  br i1 %exitcond186, label %if.end75.i, label %for.body57.i

if.end75.i:                                       ; preds = %for.body57.i, %if.end51.i
  %37 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str166, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %out) #4
  br i1 %cmp12.i, label %for.body81.i, label %if.end122.i

for.body81.i:                                     ; preds = %if.end75.i, %for.inc119.i
  %indvars.iv221.i = phi i64 [ %indvars.iv.next222.i, %for.inc119.i ], [ 0, %if.end75.i ]
  %arrayidx83.i = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv221.i
  %type84.i = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv221.i, i32 2
  %38 = load i32* %type84.i, align 4, !tbaa !3
  %cmp85.i = icmp eq i32 %38, 4
  %option89.i = getelementptr inbounds %struct.t_pargs* %arrayidx83.i, i64 0, i32 0
  %39 = load i8** %option89.i, align 8, !tbaa !0
  br i1 %cmp85.i, label %if.then86.i, label %if.else100.i

if.then86.i:                                      ; preds = %for.body81.i
  %add.ptr90.i = getelementptr inbounds i8* %39, i64 1
  %call.i204.i = call fastcc i8* @repall(i8* %add.ptr90.i, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #6
  %call94.i = call i8* @pa_val(%struct.t_pargs* %arrayidx83.i) #6
  %desc97.i = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv221.i, i32 4
  %40 = load i8** %desc97.i, align 8, !tbaa !0
  %call.i205.i = call fastcc i8* @repall(i8* %40, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #6
  %call99.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([26 x i8]* @.str167, i64 0, i64 0), i8* %call.i204.i, i8* %call94.i, i8* %call.i205.i) #6
  br label %for.inc119.i

if.else100.i:                                     ; preds = %for.body81.i
  %call.i206.i = call fastcc i8* @repall(i8* %39, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #6
  %41 = load i32* %type84.i, align 4, !tbaa !3
  %idxprom108.i = sext i32 %41 to i64
  %arrayidx109.i = getelementptr inbounds [7 x i8*]* @argtp, i64 0, i64 %idxprom108.i
  %42 = load i8** %arrayidx109.i, align 8, !tbaa !0
  %call112.i = call i8* @pa_val(%struct.t_pargs* %arrayidx83.i) #6
  %desc115.i = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv221.i, i32 4
  %43 = load i8** %desc115.i, align 8, !tbaa !0
  %call.i207.i = call fastcc i8* @repall(i8* %43, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #6
  %call117.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([29 x i8]* @.str168, i64 0, i64 0), i8* %call.i206.i, i8* %42, i8* %call112.i, i8* %call.i207.i) #6
  br label %for.inc119.i

for.inc119.i:                                     ; preds = %if.else100.i, %if.then86.i
  %indvars.iv.next222.i = add i64 %indvars.iv221.i, 1
  %lftr.wideiv183 = trunc i64 %indvars.iv.next222.i to i32
  %exitcond184 = icmp eq i32 %lftr.wideiv183, %npar.2
  br i1 %exitcond184, label %if.end122.i, label %for.body81.i

if.end122.i:                                      ; preds = %for.inc119.i, %if.end75.i
  %cmp123.i = icmp sgt i32 %nbug, 0
  br i1 %cmp123.i, label %for.body127.i, label %if.end22

for.body127.i:                                    ; preds = %if.end122.i, %for.body127.i
  %indvars.iv.i138 = phi i64 [ %indvars.iv.next.i139, %for.body127.i ], [ 0, %if.end122.i ]
  %arrayidx129.i = getelementptr inbounds i8** %bugs, i64 %indvars.iv.i138
  %44 = load i8** %arrayidx129.i, align 8, !tbaa !0
  %call.i208.i = call fastcc i8* @repall(i8* %44, i32 13, %struct.t_sandr* getelementptr inbounds ([13 x %struct.t_sandr]* @sandrNROFF, i64 0, i64 0)) #6
  %call131.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([8 x i8]* @.str169, i64 0, i64 0), i8* %call.i208.i) #6
  %indvars.iv.next.i139 = add i64 %indvars.iv.i138, 1
  %lftr.wideiv181 = trunc i64 %indvars.iv.next.i139 to i32
  %exitcond182 = icmp eq i32 %lftr.wideiv181, %nbug
  br i1 %exitcond182, label %if.end22, label %for.body127.i

if.end22:                                         ; preds = %for.body127.i, %if.end122.i, %if.end18
  %call23 = call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([6 x i8]* @.str70, i64 0, i64 0)) #7
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  call fastcc void @write_ttyman(%struct._IO_FILE* %out, i8* %pr.0, i32 %nldesc, i8** %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npar.2, %struct.t_pargs* %par.0, i32 %nbug, i8** %bugs, i32 1) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22
  %call27 = call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([5 x i8]* @.str71, i64 0, i64 0)) #7
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end26
  call fastcc void @write_ttyman(%struct._IO_FILE* %out, i8* %pr.0, i32 %nldesc, i8** %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npar.2, %struct.t_pargs* %par.0, i32 %nbug, i8** %bugs, i32 0) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end26
  %call31 = call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([5 x i8]* @.str72, i64 0, i64 0)) #7
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end30
  %45 = getelementptr inbounds [10 x i8]* %link.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 10, i8* %45) #4
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([33 x i8]* @.str94, i64 0, i64 0), i8* %pr.0) #6
  %46 = call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str95, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %out) #4
  %47 = call i64 @fwrite(i8* getelementptr inbounds ([88 x i8]* @.str96, i64 0, i64 0), i64 87, i64 1, %struct._IO_FILE* %out) #4
  %call3.i142 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([51 x i8]* @.str97, i64 0, i64 0)) #6
  %48 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str98, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %out) #4
  %49 = call i64 @fwrite(i8* getelementptr inbounds ([113 x i8]* @.str99, i64 0, i64 0), i64 112, i64 1, %struct._IO_FILE* %out) #4
  %call6.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([52 x i8]* @.str100, i64 0, i64 0), i8* %pr.0) #6
  %50 = call i64 @fwrite(i8* getelementptr inbounds ([77 x i8]* @.str101, i64 0, i64 0), i64 76, i64 1, %struct._IO_FILE* %out) #4
  %call8.i = call i8* @GromacsVersion() #6
  %call9.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([77 x i8]* @.str102, i64 0, i64 0), i8* %call8.i) #6
  call fastcc void @mydate() #6
  %call11.i143 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([31 x i8]* @.str103, i64 0, i64 0), i8* getelementptr inbounds ([128 x i8]* @mydate.tbuf, i64 0, i64 0)) #6
  %cmp.i144 = icmp sgt i32 %nldesc, 0
  br i1 %cmp.i144, label %for.body.lr.ph.i, label %if.end.i147

for.body.lr.ph.i:                                 ; preds = %if.then33
  %51 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str104, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %out) #4
  br label %for.body.i146

for.body.i146:                                    ; preds = %for.body.i146, %for.body.lr.ph.i
  %indvars.iv186.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next187.i, %for.body.i146 ]
  %arrayidx.i145 = getelementptr inbounds i8** %desc, i64 %indvars.iv186.i
  %52 = load i8** %arrayidx.i145, align 8, !tbaa !0
  %call14.i = call i8* @check_html(i8* %52, i8* %pr.0) #6
  %call15.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str66, i64 0, i64 0), i8* %call14.i) #6
  %indvars.iv.next187.i = add i64 %indvars.iv186.i, 1
  %lftr.wideiv179 = trunc i64 %indvars.iv.next187.i to i32
  %exitcond180 = icmp eq i32 %lftr.wideiv179, %nldesc
  br i1 %exitcond180, label %if.end.i147, label %for.body.i146

if.end.i147:                                      ; preds = %for.body.i146, %if.then33
  %cmp16.i = icmp sgt i32 %nfile, 0
  br i1 %cmp16.i, label %for.body23.lr.ph.i, label %if.end53.i

for.body23.lr.ph.i:                               ; preds = %if.end.i147
  %53 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str105, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %out) #4
  %54 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str106, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %out) #4
  %55 = call i64 @fwrite(i8* getelementptr inbounds ([121 x i8]* @.str107, i64 0, i64 0), i64 120, i64 1, %struct._IO_FILE* %out) #4
  br label %for.body23.i

for.body23.i:                                     ; preds = %if.end34.i, %for.body23.lr.ph.i
  %indvars.iv182.i = phi i64 [ 0, %for.body23.lr.ph.i ], [ %indvars.iv.next183.i, %if.end34.i ]
  %ftp.i148 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv182.i, i32 0
  %56 = load i32* %ftp.i148, align 4, !tbaa !3
  %call26.i = call i8* @ftp2ext(i32 %56) #6
  %call27.i149 = call i8* @strcpy(i8* %45, i8* %call26.i) #6
  %call29.i = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([4 x i8]* @.str108, i64 0, i64 0)) #7
  %cmp30.i = icmp eq i32 %call29.i, 0
  br i1 %cmp30.i, label %if.then31.i, label %if.end34.i

if.then31.i:                                      ; preds = %for.body23.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* getelementptr inbounds ([6 x i8]* @.str109, i64 0, i64 0), i64 6, i32 1, i1 false) #4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then31.i, %for.body23.i
  %opt.i150 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv182.i, i32 1
  %57 = load i8** %opt.i150, align 8, !tbaa !0
  %fn.i151 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv182.i, i32 2
  %58 = load i8** %fn.i151, align 8, !tbaa !0
  %flag.i152 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv182.i, i32 3
  %59 = load i64* %flag.i152, align 8, !tbaa !5
  %call42.i = call i8* @fileopt(i64 %59) #6
  %60 = load i32* %ftp.i148, align 4, !tbaa !3
  %call46.i = call i8* @ftp2desc(i32 %60) #6
  %call47.i153 = call i8* @check_html(i8* %call46.i, i8* %pr.0) #6
  %call48.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([136 x i8]* @.str110, i64 0, i64 0), i8* %57, i8* %45, i8* %58, i8* getelementptr inbounds ([32 x i8]* @fileopt.buf, i64 0, i64 0), i8* %call47.i153) #6
  %indvars.iv.next183.i = add i64 %indvars.iv182.i, 1
  %lftr.wideiv177 = trunc i64 %indvars.iv.next183.i to i32
  %exitcond178 = icmp eq i32 %lftr.wideiv177, %nfile
  br i1 %exitcond178, label %for.end51.i, label %for.body23.i

for.end51.i:                                      ; preds = %if.end34.i
  %61 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str111, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %out) #4
  br label %if.end53.i

if.end53.i:                                       ; preds = %for.end51.i, %if.end.i147
  %cmp54.i = icmp sgt i32 %npar.2, 0
  br i1 %cmp54.i, label %for.body61.lr.ph.i, label %if.end84.i

for.body61.lr.ph.i:                               ; preds = %if.end53.i
  %62 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str105, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %out) #4
  %63 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str112, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %out) #4
  %64 = call i64 @fwrite(i8* getelementptr inbounds ([120 x i8]* @.str113, i64 0, i64 0), i64 119, i64 1, %struct._IO_FILE* %out) #4
  br label %for.body61.i

for.body61.i:                                     ; preds = %for.body61.i, %for.body61.lr.ph.i
  %indvars.iv178.i = phi i64 [ 0, %for.body61.lr.ph.i ], [ %indvars.iv.next179.i, %for.body61.i ]
  %arrayidx63.i = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv178.i
  %type.i154 = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv178.i, i32 2
  %65 = load i32* %type.i154, align 4, !tbaa !3
  %cmp64.i = icmp eq i32 %65, 4
  %cond.i = select i1 %cmp64.i, i8* getelementptr inbounds ([6 x i8]* @.str115, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str116, i64 0, i64 0)
  %option.i155 = getelementptr inbounds %struct.t_pargs* %arrayidx63.i, i64 0, i32 0
  %66 = load i8** %option.i155, align 8, !tbaa !0
  %add.ptr.i156 = getelementptr inbounds i8* %66, i64 1
  %idxprom70.i = sext i32 %65 to i64
  %arrayidx71.i = getelementptr inbounds [7 x i8*]* @argtp, i64 0, i64 %idxprom70.i
  %67 = load i8** %arrayidx71.i, align 8, !tbaa !0
  %call74.i = call i8* @pa_val(%struct.t_pargs* %arrayidx63.i) #6
  %desc77.i = getelementptr inbounds %struct.t_pargs* %par.0, i64 %indvars.iv178.i, i32 4
  %68 = load i8** %desc77.i, align 8, !tbaa !0
  %call78.i = call i8* @check_html(i8* %68, i8* %pr.0) #6
  %call79.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([126 x i8]* @.str114, i64 0, i64 0), i8* %cond.i, i8* %add.ptr.i156, i8* %67, i8* %call74.i, i8* %call78.i) #6
  %indvars.iv.next179.i = add i64 %indvars.iv178.i, 1
  %lftr.wideiv175 = trunc i64 %indvars.iv.next179.i to i32
  %exitcond176 = icmp eq i32 %lftr.wideiv175, %npar.2
  br i1 %exitcond176, label %for.end82.i, label %for.body61.i

for.end82.i:                                      ; preds = %for.body61.i
  %69 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str111, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %out) #4
  br label %if.end84.i

if.end84.i:                                       ; preds = %for.end82.i, %if.end53.i
  %cmp85.i157 = icmp sgt i32 %nbug, 0
  br i1 %cmp85.i157, label %for.body91.lr.ph.i, label %write_htmlman.exit

for.body91.lr.ph.i:                               ; preds = %if.end84.i
  %70 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str105, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %out) #4
  %71 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8]* @.str117, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %out) #4
  br label %for.body91.i

for.body91.i:                                     ; preds = %for.body91.i, %for.body91.lr.ph.i
  %indvars.iv.i158 = phi i64 [ 0, %for.body91.lr.ph.i ], [ %indvars.iv.next.i160, %for.body91.i ]
  %arrayidx93.i = getelementptr inbounds i8** %bugs, i64 %indvars.iv.i158
  %72 = load i8** %arrayidx93.i, align 8, !tbaa !0
  %call94.i159 = call i8* @check_html(i8* %72, i8* %pr.0) #6
  %call95.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([8 x i8]* @.str118, i64 0, i64 0), i8* %call94.i159) #6
  %indvars.iv.next.i160 = add i64 %indvars.iv.i158, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i160 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nbug
  br i1 %exitcond, label %for.end98.i, label %for.body91.i

for.end98.i:                                      ; preds = %for.body91.i
  %73 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8]* @.str119, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %out) #4
  br label %write_htmlman.exit

write_htmlman.exit:                               ; preds = %if.end84.i, %for.end98.i
  %74 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str105, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %out) #4
  %75 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str120, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %out) #4
  %76 = call i64 @fwrite(i8* getelementptr inbounds ([88 x i8]* @.str121, i64 0, i64 0), i64 87, i64 1, %struct._IO_FILE* %out) #4
  %77 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str122, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %out) #4
  %78 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str123, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %out) #4
  call void @llvm.lifetime.end(i64 10, i8* %45) #4
  br label %if.end34

if.end34:                                         ; preds = %write_htmlman.exit, %if.end30
  %call35 = call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([15 x i8]* @.str73, i64 0, i64 0)) #7
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end34
  %79 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str92, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %out) #4
  call fastcc void @pr_opts(%struct._IO_FILE* %out, i32 %nfile, %struct.t_filenm* %fnm, i32 %npar.2, %struct.t_pargs* %par.0, i32 2) #6
  call void @pr_enums(%struct._IO_FILE* %out, i32 %npar.2, %struct.t_pargs* %par.0, i32 2) #6
  call void @pr_fopts(%struct._IO_FILE* %out, i32 %nfile, %struct.t_filenm* %fnm, i32 2) #6
  %call1.i163 = call i8* @ShortProgram() #6
  %call2.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([7 x i8]* @.str93, i64 0, i64 0), i8* %call1.i163) #6
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end34
  %call39 = call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([16 x i8]* @.str74, i64 0, i64 0)) #7
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end38
  %80 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8]* @.str87, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %out) #4
  %call1.i164 = call i8* @ShortProgram() #6
  %call2.i165 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([25 x i8]* @.str88, i64 0, i64 0), i8* %call1.i164) #6
  %81 = call i64 @fwrite(i8* getelementptr inbounds ([72 x i8]* @.str89, i64 0, i64 0), i64 71, i64 1, %struct._IO_FILE* %out) #4
  call fastcc void @pr_opts(%struct._IO_FILE* %out, i32 %nfile, %struct.t_filenm* %fnm, i32 %npar.2, %struct.t_pargs* %par.0, i32 1) #6
  %82 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str90, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %out) #4
  call void @pr_enums(%struct._IO_FILE* %out, i32 %npar.2, %struct.t_pargs* %par.0, i32 1) #6
  call void @pr_fopts(%struct._IO_FILE* %out, i32 %nfile, %struct.t_filenm* %fnm, i32 1) #6
  %call5.i166 = call i8* @ShortProgram() #6
  %call6.i167 = call i8* @ShortProgram() #6
  %call7.i168 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([36 x i8]* @.str91, i64 0, i64 0), i8* %call5.i166, i8* %call6.i167) #6
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end38
  %call43 = call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([15 x i8]* @.str75, i64 0, i64 0)) #7
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end42
  %call.i169 = call i8* @ShortProgram() #6
  %call1.i170 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([12 x i8]* @.str76, i64 0, i64 0), i8* %call.i169) #6
  call void @pr_enums(%struct._IO_FILE* %out, i32 %npar.2, %struct.t_pargs* %par.0, i32 0) #6
  call void @pr_fopts(%struct._IO_FILE* %out, i32 %nfile, %struct.t_filenm* %fnm, i32 0) #6
  call fastcc void @pr_opts(%struct._IO_FILE* %out, i32 %nfile, %struct.t_filenm* %fnm, i32 %npar.2, %struct.t_pargs* %par.0, i32 0) #6
  %fputc.i171 = call i32 @fputc(i32 10, %struct._IO_FILE* %out) #4
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end42
  br i1 %tobool, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end46
  %83 = bitcast %struct.t_pargs* %par.0 to i8*
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str63, i64 0, i64 0), i32 664, i8* %83) #6
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end46
  ret void
}

; Function Attrs: optsize
declare i32 @is_hidden(%struct.t_pargs*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

; Function Attrs: nounwind optsize readonly
declare i8* @strrchr(i8*, i32) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @write_ttyman(%struct._IO_FILE* %out, i8* %program, i32 %nldesc, i8** nocapture %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npargs, %struct.t_pargs* %pa, i32 %nbug, i8** nocapture %bugs, i32 %bHeader) #0 {
entry:
  %tobool = icmp eq i32 %bHeader, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call fastcc i8* @repall(i8* %program, i32 8, %struct.t_sandr* getelementptr inbounds ([8 x %struct.t_sandr]* @sandrTty, i64 0, i64 0)) #6
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([5 x i8]* @.str151, i64 0, i64 0), i8* %call.i) #6
  %call2 = tail call i8* @GromacsVersion() #6
  tail call fastcc void @mydate() #5
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([7 x i8]* @.str152, i64 0, i64 0), i8* %call2, i8* getelementptr inbounds ([128 x i8]* @mydate.tbuf, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %cmp = icmp sgt i32 %nldesc, 0
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str153, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %out)
  tail call void @print_tty_formatted(%struct._IO_FILE* %out, i32 %nldesc, i8** %desc) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %cmp8 = icmp sgt i32 %nbug, 0
  br i1 %cmp8, label %for.body.lr.ph, label %if.end20

for.body.lr.ph:                                   ; preds = %if.end7
  %fputc51 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out)
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i8** %bugs, i64 %indvars.iv
  %1 = load i8** %arrayidx, align 8, !tbaa !0
  %call12 = tail call i64 @strlen(i8* %1) #7
  %add = add i64 %call12, 3
  %conv = trunc i64 %add to i32
  %call13 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str154, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str63, i64 0, i64 0), i32 407, i32 %conv, i32 1) #6
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call13, i8* getelementptr inbounds ([3 x i8]* @.str155, i64 0, i64 0), i64 3, i32 1, i1 false)
  %add.ptr = getelementptr inbounds i8* %call13, i64 2
  %2 = load i8** %arrayidx, align 8, !tbaa !0
  %call17 = tail call i8* @strcpy(i8* %add.ptr, i8* %2) #6
  %call18 = tail call i8* @wrap_lines(i8* %call13, i32 80, i32 2) #6
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str66, i64 0, i64 0), i8* %call18) #6
  tail call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str154, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str63, i64 0, i64 0), i32 411, i8* %call13) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nbug
  br i1 %exitcond, label %if.end20, label %for.body

if.end20:                                         ; preds = %for.body, %if.end7
  %cmp21 = icmp sgt i32 %nfile, 0
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out)
  tail call void @pr_fns(%struct._IO_FILE* %out, i32 %nfile, %struct.t_filenm* %fnm) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20
  %cmp26 = icmp sgt i32 %npargs, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  tail call void @print_pargs(%struct._IO_FILE* %out, i32 %npargs, %struct.t_pargs* %pa) #6
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end25
  ret void
}

; Function Attrs: optsize
declare i8* @ShortProgram() #3

; Function Attrs: optsize
declare void @pr_enums(%struct._IO_FILE*, i32, %struct.t_pargs*, i32) #3

; Function Attrs: optsize
declare void @pr_fopts(%struct._IO_FILE*, i32, %struct.t_filenm*, i32) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @pr_opts(%struct._IO_FILE* nocapture %fp, i32 %nfile, %struct.t_filenm* nocapture %fnm, i32 %npargs, %struct.t_pargs* nocapture %pa, i32 %shell) #0 {
entry:
  switch i32 %shell, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb23
    i32 2, label %sw.bb66
  ]

sw.bb:                                            ; preds = %entry
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str77, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %fp)
  %cmp168 = icmp sgt i32 %nfile, 0
  br i1 %cmp168, label %for.body, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.body, %sw.bb
  %cmp3166 = icmp sgt i32 %npargs, 0
  br i1 %cmp3166, label %for.body4, label %for.end21

for.body:                                         ; preds = %sw.bb, %for.body
  %indvars.iv178 = phi i64 [ %indvars.iv.next179, %for.body ], [ 0, %sw.bb ]
  %opt = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv178, i32 1
  %1 = load i8** %opt, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %1, i64 1
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str78, i64 0, i64 0), i8* %add.ptr) #6
  %indvars.iv.next179 = add i64 %indvars.iv178, 1
  %lftr.wideiv180 = trunc i64 %indvars.iv.next179 to i32
  %exitcond181 = icmp eq i32 %lftr.wideiv180, %nfile
  br i1 %exitcond181, label %for.cond2.preheader, label %for.body

for.body4:                                        ; preds = %for.cond2.preheader, %for.inc19
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc19 ], [ 0, %for.cond2.preheader ]
  %arrayidx6 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv
  %type = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 2
  %2 = load i32* %type, align 4, !tbaa !3
  %cmp7 = icmp eq i32 %2, 4
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body4
  %u = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 3
  %b = bitcast %union.anon* %u to i32**
  %3 = load i32** %b, align 8, !tbaa !0
  %4 = load i32* %3, align 4, !tbaa !3
  %tobool = icmp eq i32 %4, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %option = getelementptr inbounds %struct.t_pargs* %arrayidx6, i64 0, i32 0
  %5 = load i8** %option, align 8, !tbaa !0
  %add.ptr12 = getelementptr inbounds i8* %5, i64 1
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str79, i64 0, i64 0), i8* %add.ptr12) #6
  br label %for.inc19

if.else:                                          ; preds = %land.lhs.true, %for.body4
  %option16 = getelementptr inbounds %struct.t_pargs* %arrayidx6, i64 0, i32 0
  %6 = load i8** %option16, align 8, !tbaa !0
  %add.ptr17 = getelementptr inbounds i8* %6, i64 1
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str78, i64 0, i64 0), i8* %add.ptr17) #6
  br label %for.inc19

for.inc19:                                        ; preds = %if.then, %if.else
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %npargs
  br i1 %exitcond, label %for.end21, label %for.body4

for.end21:                                        ; preds = %for.inc19, %for.cond2.preheader
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str80, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %fp)
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([78 x i8]* @.str81, i64 0, i64 0), i64 77, i64 1, %struct._IO_FILE* %fp)
  %cmp26172 = icmp sgt i32 %nfile, 0
  br i1 %cmp26172, label %for.body27, label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %for.body27, %sw.bb23
  %cmp37170 = icmp sgt i32 %npargs, 0
  br i1 %cmp37170, label %for.body38, label %for.end64

for.body27:                                       ; preds = %sw.bb23, %for.body27
  %indvars.iv186 = phi i64 [ %indvars.iv.next187, %for.body27 ], [ 0, %sw.bb23 ]
  %opt30 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv186, i32 1
  %9 = load i8** %opt30, align 8, !tbaa !0
  %add.ptr31 = getelementptr inbounds i8* %9, i64 1
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str82, i64 0, i64 0), i8* %add.ptr31) #6
  %indvars.iv.next187 = add i64 %indvars.iv186, 1
  %lftr.wideiv188 = trunc i64 %indvars.iv.next187 to i32
  %exitcond189 = icmp eq i32 %lftr.wideiv188, %nfile
  br i1 %exitcond189, label %for.cond36.preheader, label %for.body27

for.body38:                                       ; preds = %for.cond36.preheader, %for.inc62
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %for.inc62 ], [ 0, %for.cond36.preheader ]
  %arrayidx40 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv182
  %type41 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv182, i32 2
  %10 = load i32* %type41, align 4, !tbaa !3
  %cmp42 = icmp eq i32 %10, 4
  br i1 %cmp42, label %land.lhs.true43, label %if.else55

land.lhs.true43:                                  ; preds = %for.body38
  %u46 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv182, i32 3
  %b47 = bitcast %union.anon* %u46 to i32**
  %11 = load i32** %b47, align 8, !tbaa !0
  %12 = load i32* %11, align 4, !tbaa !3
  %tobool48 = icmp eq i32 %12, 0
  br i1 %tobool48, label %if.else55, label %if.then49

if.then49:                                        ; preds = %land.lhs.true43
  %option52 = getelementptr inbounds %struct.t_pargs* %arrayidx40, i64 0, i32 0
  %13 = load i8** %option52, align 8, !tbaa !0
  %add.ptr53 = getelementptr inbounds i8* %13, i64 1
  %call54 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str83, i64 0, i64 0), i8* %add.ptr53) #6
  br label %for.inc62

if.else55:                                        ; preds = %land.lhs.true43, %for.body38
  %option58 = getelementptr inbounds %struct.t_pargs* %arrayidx40, i64 0, i32 0
  %14 = load i8** %option58, align 8, !tbaa !0
  %add.ptr59 = getelementptr inbounds i8* %14, i64 1
  %call60 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str82, i64 0, i64 0), i8* %add.ptr59) #6
  br label %for.inc62

for.inc62:                                        ; preds = %if.then49, %if.else55
  %indvars.iv.next183 = add i64 %indvars.iv182, 1
  %lftr.wideiv184 = trunc i64 %indvars.iv.next183 to i32
  %exitcond185 = icmp eq i32 %lftr.wideiv184, %npargs
  br i1 %exitcond185, label %for.end64, label %for.body38

for.end64:                                        ; preds = %for.inc62, %for.cond36.preheader
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([25 x i8]* @.str84, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %fp)
  br label %sw.epilog

sw.bb66:                                          ; preds = %entry
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str85, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %fp)
  %cmp69176 = icmp sgt i32 %nfile, 0
  br i1 %cmp69176, label %for.body70, label %for.cond79.preheader

for.cond79.preheader:                             ; preds = %for.body70, %sw.bb66
  %cmp80174 = icmp sgt i32 %npargs, 0
  br i1 %cmp80174, label %for.body81, label %for.end107

for.body70:                                       ; preds = %sw.bb66, %for.body70
  %indvars.iv194 = phi i64 [ %indvars.iv.next195, %for.body70 ], [ 0, %sw.bb66 ]
  %opt73 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv194, i32 1
  %17 = load i8** %opt73, align 8, !tbaa !0
  %add.ptr74 = getelementptr inbounds i8* %17, i64 1
  %call75 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str78, i64 0, i64 0), i8* %add.ptr74) #6
  %indvars.iv.next195 = add i64 %indvars.iv194, 1
  %lftr.wideiv196 = trunc i64 %indvars.iv.next195 to i32
  %exitcond197 = icmp eq i32 %lftr.wideiv196, %nfile
  br i1 %exitcond197, label %for.cond79.preheader, label %for.body70

for.body81:                                       ; preds = %for.cond79.preheader, %for.inc105
  %indvars.iv190 = phi i64 [ %indvars.iv.next191, %for.inc105 ], [ 0, %for.cond79.preheader ]
  %arrayidx83 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv190
  %type84 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv190, i32 2
  %18 = load i32* %type84, align 4, !tbaa !3
  %cmp85 = icmp eq i32 %18, 4
  br i1 %cmp85, label %land.lhs.true86, label %if.else98

land.lhs.true86:                                  ; preds = %for.body81
  %u89 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv190, i32 3
  %b90 = bitcast %union.anon* %u89 to i32**
  %19 = load i32** %b90, align 8, !tbaa !0
  %20 = load i32* %19, align 4, !tbaa !3
  %tobool91 = icmp eq i32 %20, 0
  br i1 %tobool91, label %if.else98, label %if.then92

if.then92:                                        ; preds = %land.lhs.true86
  %option95 = getelementptr inbounds %struct.t_pargs* %arrayidx83, i64 0, i32 0
  %21 = load i8** %option95, align 8, !tbaa !0
  %add.ptr96 = getelementptr inbounds i8* %21, i64 1
  %call97 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str79, i64 0, i64 0), i8* %add.ptr96) #6
  br label %for.inc105

if.else98:                                        ; preds = %land.lhs.true86, %for.body81
  %option101 = getelementptr inbounds %struct.t_pargs* %arrayidx83, i64 0, i32 0
  %22 = load i8** %option101, align 8, !tbaa !0
  %add.ptr102 = getelementptr inbounds i8* %22, i64 1
  %call103 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str78, i64 0, i64 0), i8* %add.ptr102) #6
  br label %for.inc105

for.inc105:                                       ; preds = %if.then92, %if.else98
  %indvars.iv.next191 = add i64 %indvars.iv190, 1
  %lftr.wideiv192 = trunc i64 %indvars.iv.next191 to i32
  %exitcond193 = icmp eq i32 %lftr.wideiv192, %npargs
  br i1 %exitcond193, label %for.end107, label %for.body81

for.end107:                                       ; preds = %for.inc105, %for.cond79.preheader
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str86, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %for.end107, %for.end64, %for.end21
  ret void
}

; Function Attrs: optsize
declare i8* @GromacsVersion() #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @mydate() #0 {
entry:
  %now = alloca i64, align 8
  %call = call i64 @time(i64* %now) #6
  %call1 = call %struct.tm* @localtime(i64* %now) #6
  %tm_wday = getelementptr inbounds %struct.tm* %call1, i64 0, i32 6
  %0 = load i32* %tm_wday, align 4, !tbaa !3
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [7 x i8*]* @mydate.day, i64 0, i64 %idxprom
  %1 = load i8** %arrayidx, align 8, !tbaa !0
  %tm_mday = getelementptr inbounds %struct.tm* %call1, i64 0, i32 3
  %2 = load i32* %tm_mday, align 4, !tbaa !3
  %tm_mon = getelementptr inbounds %struct.tm* %call1, i64 0, i32 4
  %3 = load i32* %tm_mon, align 4, !tbaa !3
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [12 x i8*]* @mydate.mon, i64 0, i64 %idxprom2
  %4 = load i8** %arrayidx3, align 8, !tbaa !0
  %tm_year = getelementptr inbounds %struct.tm* %call1, i64 0, i32 5
  %5 = load i32* %tm_year, align 4, !tbaa !3
  %add = add nsw i32 %5, 1900
  %call4 = call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([128 x i8]* @mydate.tbuf, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str150, i64 0, i64 0), i8* %1, i32 %2, i8* %4, i32 %add) #6
  ret void
}

; Function Attrs: optsize
declare i8* @ftp2ext(i32) #3

; Function Attrs: optsize
declare i8* @ftp2desc(i32) #3

; Function Attrs: optsize
declare i8* @pa_val(%struct.t_pargs*) #3

; Function Attrs: nounwind optsize
declare i64 @time(i64*) #1

; Function Attrs: nounwind optsize
declare %struct.tm* @localtime(i64*) #1

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #1

; Function Attrs: optsize
declare void @pr_fns(%struct._IO_FILE*, i32, %struct.t_filenm*) #3

; Function Attrs: optsize
declare void @print_pargs(%struct._IO_FILE*, i32, %struct.t_pargs*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare i32 @get_file(i8*, i8***) #3

; Function Attrs: optsize
declare i32 @gmx_strcasecmp(i8*, i8*) #3

; Function Attrs: optsize
declare i8* @gmx_strdup(i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: optsize
declare i8* @replaceww(i8*, i8*, i8*) #3

; Function Attrs: optsize
declare i8* @replace(i8*, i8*, i8*) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{i64 0, i64 8, metadata !0, i64 8, i64 4, metadata !3, i64 12, i64 4, metadata !3, i64 16, i64 8, metadata !0, i64 16, i64 8, metadata !0, i64 16, i64 8, metadata !0, i64 16, i64 8, metadata !0, i64 16, i64 8, metadata !0, i64 16, i64 8, metadata !0, i64 24, i64 8, metadata !0}
!5 = metadata !{metadata !"long", metadata !1}

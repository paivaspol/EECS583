; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/statutil.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_pargs = type { i8*, i32, i32, %union.anon.18, i8* }
%union.anon.18 = type { i8* }
%struct.t_topology = type { i8**, %struct.t_idef, %struct.t_atoms, [3 x %struct.t_block], %struct.t_symtab }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%union.t_iparams = type { %struct.anon.5 }
%struct.anon.5 = type { float, float, float, float, float, float }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }
%struct.t_symtab = type { i32, %struct.symbuf* }
%struct.symbuf = type { i32, i8**, %struct.symbuf* }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_filenm = type { i32, i8*, i8*, i64 }

@_DefaultRuneLocale = external global %struct._RuneLocale
@tbegin = global float -1.000000e+00, align 4
@tend = global float -1.000000e+00, align 4
@tdelta = global float -1.000000e+00, align 4
@timefactor = global float -1.234500e+04, align 4
@timelabel = global i8* null, align 8
@timefactors = global [10 x float] [float 0.000000e+00, float 1.000000e+03, float 1.000000e+00, float 0x3F50624DE0000000, float 0x3EB0C6F7A0000000, float 0x3E112E0BE0000000, float 0x3D71979980000000, float 0x3D12C3D700000000, float 0x3CB4041880000000, float 0.000000e+00], align 16
@program = internal unnamed_addr global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"GROMACS\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@debug = external global %struct.__sFILE*
@.str2 = private unnamed_addr constant [38 x i8] c"t=%g, t0=%g, b=%g, e=%g, dt=%g: r=%d\0A\00", align 1
@timestr = internal global [10 x i8*] [i8* null, i8* getelementptr inbounds ([3 x i8]* @.str71, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str72, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str73, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str74, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str75, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str76, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str77, i32 0, i32 0), i8* null], align 16
@time_label.label = internal global [20 x i8] zeroinitializer, align 16
@.str3 = private unnamed_addr constant [10 x i8] c"Time (%s)\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"ps\00", align 1
@xvgr_tlabel.label = internal global [20 x i8] zeroinitializer, align 16
@xvgrtimestr = internal unnamed_addr global [10 x i8*] [i8* null, i8* getelementptr inbounds ([3 x i8]* @.str71, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str72, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str78, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str74, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str75, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str76, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str77, i32 0, i32 0), i8* null], align 16
@.str5 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str6 = private unnamed_addr constant [68 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/statutil.c\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str8 = private unnamed_addr constant [11 x i8] c"an integer\00", align 1
@.str9 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str10 = private unnamed_addr constant [7 x i8] c"a real\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str11 = private unnamed_addr constant [49 x i8] c"Possible missing string argument for option %s\0A\0A\00", align 1
@.str12 = private unnamed_addr constant [9 x i8] c"a string\00", align 1
@bView = internal global i32 0, align 4
@parse_common_args.bHelp = internal global i32 0, align 4
@parse_common_args.bHidden = internal global i32 0, align 4
@parse_common_args.bQuiet = internal global i32 0, align 4
@parse_common_args.manstr = internal global [8 x i8*] [i8* null, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str18, i32 0, i32 0), i8* null], align 16
@.str13 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str14 = private unnamed_addr constant [5 x i8] c"html\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"tex\00", align 1
@.str16 = private unnamed_addr constant [6 x i8] c"nroff\00", align 1
@.str17 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str18 = private unnamed_addr constant [11 x i8] c"completion\00", align 1
@parse_common_args.not_nicestr = internal global [6 x i8*] [i8* null, i8* getelementptr inbounds ([2 x i8]* @.str19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str22, i32 0, i32 0), i8* null], align 16
@.str19 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str20 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str21 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@.str22 = private unnamed_addr constant [3 x i8] c"19\00", align 1
@parse_common_args.nicestr = internal global [6 x i8*] [i8* null, i8* getelementptr inbounds ([3 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str19, i32 0, i32 0), i8* null], align 16
@parse_common_args.nicelevel = internal global i32 0, align 4
@parse_common_args.bGUI = internal global i32 0, align 4
@parse_common_args.bDebug = internal global i32 0, align 4
@parse_common_args.deffnm = internal global i8* null, align 8
@.str27 = private unnamed_addr constant [3 x i8] c"-X\00", align 1
@.str28 = private unnamed_addr constant [48 x i8] c"Use dialog box GUI to edit command line options\00", align 1
@parse_common_args.motif_pa = private unnamed_addr constant %struct.t_pargs { i8* getelementptr inbounds ([3 x i8]* @.str27, i32 0, i32 0), i32 0, i32 4, %union.anon.18 { i8* bitcast (i32* @parse_common_args.bGUI to i8*) }, i8* getelementptr inbounds ([48 x i8]* @.str28, i32 0, i32 0) }, align 8
@.str32 = private unnamed_addr constant [6 x i8] c"-nice\00", align 1
@.str33 = private unnamed_addr constant [18 x i8] c"Set the nicelevel\00", align 1
@parse_common_args.nice_paX = private unnamed_addr constant %struct.t_pargs { i8* getelementptr inbounds ([6 x i8]* @.str32, i32 0, i32 0), i32 0, i32 6, %union.anon.18 { i8* bitcast ([6 x i8*]* @parse_common_args.not_nicestr to i8*) }, i8* getelementptr inbounds ([18 x i8]* @.str33, i32 0, i32 0) }, align 8
@parse_common_args.nice_pa = private unnamed_addr constant %struct.t_pargs { i8* getelementptr inbounds ([6 x i8]* @.str32, i32 0, i32 0), i32 0, i32 0, %union.anon.18 { i8* bitcast (i32* @parse_common_args.nicelevel to i8*) }, i8* getelementptr inbounds ([18 x i8]* @.str33, i32 0, i32 0) }, align 8
@.str34 = private unnamed_addr constant [8 x i8] c"-deffnm\00", align 1
@.str35 = private unnamed_addr constant [46 x i8] c"Set the default filename for all file options\00", align 1
@parse_common_args.deffnm_pa = private unnamed_addr constant %struct.t_pargs { i8* getelementptr inbounds ([8 x i8]* @.str34, i32 0, i32 0), i32 0, i32 3, %union.anon.18 { i8* bitcast (i8** @parse_common_args.deffnm to i8*) }, i8* getelementptr inbounds ([46 x i8]* @.str35, i32 0, i32 0) }, align 8
@.str36 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str37 = private unnamed_addr constant [41 x i8] c"First frame (%t) to read from trajectory\00", align 1
@parse_common_args.begin_pa = private unnamed_addr constant %struct.t_pargs { i8* getelementptr inbounds ([3 x i8]* @.str36, i32 0, i32 0), i32 0, i32 2, %union.anon.18 { i8* bitcast (float* @tbegin to i8*) }, i8* getelementptr inbounds ([41 x i8]* @.str37, i32 0, i32 0) }, align 8
@.str38 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str39 = private unnamed_addr constant [40 x i8] c"Last frame (%t) to read from trajectory\00", align 1
@parse_common_args.end_pa = private unnamed_addr constant %struct.t_pargs { i8* getelementptr inbounds ([3 x i8]* @.str38, i32 0, i32 0), i32 0, i32 2, %union.anon.18 { i8* bitcast (float* @tend to i8*) }, i8* getelementptr inbounds ([40 x i8]* @.str39, i32 0, i32 0) }, align 8
@.str40 = private unnamed_addr constant [4 x i8] c"-dt\00", align 1
@.str41 = private unnamed_addr constant [47 x i8] c"Only use frame when t MOD dt = first time (%t)\00", align 1
@parse_common_args.dt_pa = private unnamed_addr constant %struct.t_pargs { i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0), i32 0, i32 2, %union.anon.18 { i8* bitcast (float* @tdelta to i8*) }, i8* getelementptr inbounds ([47 x i8]* @.str41, i32 0, i32 0) }, align 8
@.str42 = private unnamed_addr constant [3 x i8] c"-w\00", align 1
@.str43 = private unnamed_addr constant [40 x i8] c"View output xvg, xpm, eps and pdb files\00", align 1
@parse_common_args.view_pa = private unnamed_addr constant %struct.t_pargs { i8* getelementptr inbounds ([3 x i8]* @.str42, i32 0, i32 0), i32 0, i32 4, %union.anon.18 { i8* bitcast (i32* @bView to i8*) }, i8* getelementptr inbounds ([40 x i8]* @.str43, i32 0, i32 0) }, align 8
@.str46 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str47 = private unnamed_addr constant [25 x i8] c"Print help info and quit\00", align 1
@.str48 = private unnamed_addr constant [8 x i8] c"-hidden\00", align 1
@.str49 = private unnamed_addr constant [27 x i8] c"HIDDENPrint hidden options\00", align 1
@.str50 = private unnamed_addr constant [7 x i8] c"-quiet\00", align 1
@.str51 = private unnamed_addr constant [29 x i8] c"HIDDENDo not print help info\00", align 1
@.str52 = private unnamed_addr constant [5 x i8] c"-man\00", align 1
@.str53 = private unnamed_addr constant [28 x i8] c"HIDDENWrite manual and quit\00", align 1
@.str54 = private unnamed_addr constant [7 x i8] c"-debug\00", align 1
@.str55 = private unnamed_addr constant [40 x i8] c"HIDDENWrite file with debug information\00", align 1
@parse_common_args.pca_pa = private unnamed_addr constant [5 x %struct.t_pargs] [%struct.t_pargs { i8* getelementptr inbounds ([3 x i8]* @.str46, i32 0, i32 0), i32 0, i32 4, %union.anon.18 { i8* bitcast (i32* @parse_common_args.bHelp to i8*) }, i8* getelementptr inbounds ([25 x i8]* @.str47, i32 0, i32 0) }, %struct.t_pargs { i8* getelementptr inbounds ([8 x i8]* @.str48, i32 0, i32 0), i32 0, i32 4, %union.anon.18 { i8* bitcast (i32* @parse_common_args.bHidden to i8*) }, i8* getelementptr inbounds ([27 x i8]* @.str49, i32 0, i32 0) }, %struct.t_pargs { i8* getelementptr inbounds ([7 x i8]* @.str50, i32 0, i32 0), i32 0, i32 4, %union.anon.18 { i8* bitcast (i32* @parse_common_args.bQuiet to i8*) }, i8* getelementptr inbounds ([29 x i8]* @.str51, i32 0, i32 0) }, %struct.t_pargs { i8* getelementptr inbounds ([5 x i8]* @.str52, i32 0, i32 0), i32 0, i32 6, %union.anon.18 { i8* bitcast ([8 x i8*]* @parse_common_args.manstr to i8*) }, i8* getelementptr inbounds ([28 x i8]* @.str53, i32 0, i32 0) }, %struct.t_pargs { i8* getelementptr inbounds ([7 x i8]* @.str54, i32 0, i32 0), i32 0, i32 4, %union.anon.18 { i8* bitcast (i32* @parse_common_args.bDebug to i8*) }, i8* getelementptr inbounds ([40 x i8]* @.str55, i32 0, i32 0) }], align 16
@.str56 = private unnamed_addr constant [19 x i8] c"PID=%d, argc = %d\0A\00", align 1
@.str57 = private unnamed_addr constant [23 x i8] c"PID=%d, argv[%d] = %s\0A\00", align 1
@uFlags = internal unnamed_addr global i64 0, align 8
@.str58 = private unnamed_addr constant [33 x i8] c"Double command line argument %s\0A\00", align 1
@.str59 = private unnamed_addr constant [7 x i8] c"all_pa\00", align 1
@.str60 = private unnamed_addr constant [9 x i8] c"%s%d.log\00", align 1
@.str61 = private unnamed_addr constant [7 x i8] c"%s.log\00", align 1
@.str62 = private unnamed_addr constant [43 x i8] c"%s (this file) opened in file %s, line %d\0A\00", align 1
@.str63 = private unnamed_addr constant [63 x i8] c"GROMACS compiled without MOTIF support - can't use X interface\00", align 1
@.str64 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str65 = private unnamed_addr constant [15 x i8] c"completion-zsh\00", align 1
@.str66 = private unnamed_addr constant [16 x i8] c"completion-bash\00", align 1
@.str67 = private unnamed_addr constant [15 x i8] c"completion-csh\00", align 1
@.str68 = private unnamed_addr constant [15 x i8] c"all_pa[i].desc\00", align 1
@.str69 = private unnamed_addr constant [22 x i8] c"Unknown argument: %s\0A\00", align 1
@.str70 = private unnamed_addr constant [18 x i8] c"Program %s halted\00", align 1
@.str71 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str72 = private unnamed_addr constant [3 x i8] c"ns\00", align 1
@.str73 = private unnamed_addr constant [3 x i8] c"us\00", align 1
@.str74 = private unnamed_addr constant [3 x i8] c"ms\00", align 1
@.str75 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str76 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str77 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str78 = private unnamed_addr constant [7 x i8] c"\5C8m\5C4s\00", align 1
@.str79 = private unnamed_addr constant [36 x i8] c"Expected %s argument for option %s\0A\00", align 1
@.str80 = private unnamed_addr constant [6 x i8] c"(*pa)\00", align 1
@.str81 = private unnamed_addr constant [7 x i8] c"HIDDEN\00", align 1
@.str82 = private unnamed_addr constant [8 x i8] c"newdesc\00", align 1
@.str83 = private unnamed_addr constant [12 x i8] c"[hidden] %s\00", align 1
@.str84 = private unnamed_addr constant [3 x i8] c"%t\00", align 1
@.str85 = private unnamed_addr constant [6 x i8] c"ndesc\00", align 1
@.str86 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str87 = private unnamed_addr constant [5 x i8] c"[TT]\00", align 1
@.str88 = private unnamed_addr constant [5 x i8] c"[tt]\00", align 1
@.str89 = private unnamed_addr constant [5 x i8] c" or \00", align 1
@.str90 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str91 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str92 = private unnamed_addr constant [7 x i8] c"%s.txt\00", align 1
@.str93 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @isascii(i32 %_c) #0 {
  %1 = icmp ult i32 %_c, 128
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @__istype(i32 %_c, i64 %_f) #1 {
  %isascii = icmp ult i32 %_c, 128
  br i1 %isascii, label %1, label %8

; <label>:1                                       ; preds = %0
  %2 = sext i32 %_c to i64
  %3 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %2
  %4 = load i32* %3, align 4, !tbaa !2
  %5 = zext i32 %4 to i64
  %6 = and i64 %5, %_f
  %7 = icmp ne i64 %6, 0
  br label %11

; <label>:8                                       ; preds = %0
  %9 = tail call i32 @__maskrune(i32 %_c, i64 %_f) #12
  %10 = icmp ne i32 %9, 0
  br label %11

; <label>:11                                      ; preds = %8, %1
  %.sink = phi i1 [ %7, %1 ], [ %10, %8 ]
  %12 = zext i1 %.sink to i32
  ret i32 %12
}

; Function Attrs: optsize
declare i32 @__maskrune(i32, i64) #2

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @__isctype(i32 %_c, i64 %_f) #3 {
  %1 = icmp ugt i32 %_c, 255
  br i1 %1, label %10, label %2

; <label>:2                                       ; preds = %0
  %3 = sext i32 %_c to i64
  %4 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %3
  %5 = load i32* %4, align 4, !tbaa !2
  %6 = zext i32 %5 to i64
  %7 = and i64 %6, %_f
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i32
  br label %10

; <label>:10                                      ; preds = %0, %2
  %11 = phi i32 [ %9, %2 ], [ 0, %0 ]
  ret i32 %11
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @__wcwidth(i32 %_c) #1 {
  %1 = icmp eq i32 %_c, 0
  br i1 %1, label %11, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @__maskrune(i32 %_c, i64 3758358528) #12
  %4 = icmp ult i32 %3, 536870912
  br i1 %4, label %7, label %5

; <label>:5                                       ; preds = %2
  %6 = lshr i32 %3, 30
  br label %11

; <label>:7                                       ; preds = %2
  %8 = lshr i32 %3, 17
  %9 = and i32 %8, 2
  %10 = add nsw i32 %9, -1
  br label %11

; <label>:11                                      ; preds = %0, %7, %5
  %.0 = phi i32 [ %6, %5 ], [ %10, %7 ], [ 0, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isalnum(i32 %_c) #1 {
  %1 = tail call i32 @__istype(i32 %_c, i64 1280) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isalpha(i32 %_c) #1 {
  %1 = tail call i32 @__istype(i32 %_c, i64 256) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isblank(i32 %_c) #1 {
  %1 = tail call i32 @__istype(i32 %_c, i64 131072) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @iscntrl(i32 %_c) #1 {
  %1 = tail call i32 @__istype(i32 %_c, i64 512) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @isdigit(i32 %_c) #3 {
  %1 = icmp ugt i32 %_c, 255
  br i1 %1, label %__isctype.exit, label %2

; <label>:2                                       ; preds = %0
  %3 = sext i32 %_c to i64
  %4 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %3
  %5 = load i32* %4, align 4, !tbaa !2
  %6 = lshr i32 %5, 10
  %.lobit = and i32 %6, 1
  br label %__isctype.exit

__isctype.exit:                                   ; preds = %0, %2
  %7 = phi i32 [ %.lobit, %2 ], [ 0, %0 ]
  ret i32 %7
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isgraph(i32 %_c) #1 {
  %1 = tail call i32 @__istype(i32 %_c, i64 2048) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @islower(i32 %_c) #1 {
  %1 = tail call i32 @__istype(i32 %_c, i64 4096) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isprint(i32 %_c) #1 {
  %1 = tail call i32 @__istype(i32 %_c, i64 262144) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ispunct(i32 %_c) #1 {
  %1 = tail call i32 @__istype(i32 %_c, i64 8192) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isspace(i32 %_c) #1 {
  %1 = tail call i32 @__istype(i32 %_c, i64 16384) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isupper(i32 %_c) #1 {
  %1 = tail call i32 @__istype(i32 %_c, i64 32768) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @isxdigit(i32 %_c) #3 {
  %1 = icmp ugt i32 %_c, 255
  br i1 %1, label %__isctype.exit, label %2

; <label>:2                                       ; preds = %0
  %3 = sext i32 %_c to i64
  %4 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %3
  %5 = load i32* %4, align 4, !tbaa !2
  %6 = lshr i32 %5, 16
  %.lobit = and i32 %6, 1
  br label %__isctype.exit

__isctype.exit:                                   ; preds = %0, %2
  %7 = phi i32 [ %.lobit, %2 ], [ 0, %0 ]
  ret i32 %7
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @toascii(i32 %_c) #0 {
  %1 = and i32 %_c, 127
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @tolower(i32 %_c) #1 {
  %1 = tail call i32 @__tolower(i32 %_c) #12
  ret i32 %1
}

; Function Attrs: optsize
declare i32 @__tolower(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @toupper(i32 %_c) #1 {
  %1 = tail call i32 @__toupper(i32 %_c) #12
  ret i32 %1
}

; Function Attrs: optsize
declare i32 @__toupper(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @digittoint(i32 %_c) #1 {
  %1 = tail call i32 @__maskrune(i32 %_c, i64 15) #12
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ishexnumber(i32 %_c) #1 {
  %1 = tail call i32 @__istype(i32 %_c, i64 65536) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isideogram(i32 %_c) #1 {
  %1 = tail call i32 @__istype(i32 %_c, i64 524288) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isnumber(i32 %_c) #1 {
  %1 = tail call i32 @__istype(i32 %_c, i64 1024) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isphonogram(i32 %_c) #1 {
  %1 = tail call i32 @__istype(i32 %_c, i64 2097152) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isrune(i32 %_c) #1 {
  %1 = tail call i32 @__istype(i32 %_c, i64 4294967280) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isspecial(i32 %_c) #1 {
  %1 = tail call i32 @__istype(i32 %_c, i64 1048576) #13
  ret i32 %1
}

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #4 {
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2
  %2 = load i32* %1, align 4, !tbaa !6
  %3 = add nsw i32 %2, -1
  store i32 %3, i32* %1, align 4, !tbaa !6
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %._crit_edge, label %5

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255
  br label %10

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6
  %7 = load i32* %6, align 4, !tbaa !12
  %8 = icmp sle i32 %2, %7
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10
  %or.cond = or i1 %9, %8
  br i1 %or.cond, label %15, label %10

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ]
  %11 = trunc i32 %_c to i8
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0
  %13 = load i8** %12, align 8, !tbaa !13
  %14 = getelementptr inbounds i8* %13, i64 1
  store i8* %14, i8** %12, align 8, !tbaa !13
  store i8 %11, i8* %13, align 1, !tbaa !14
  br label %17

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #12
  br label %17

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #5 {
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

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #5 {
  %1 = fcmp ord float %__x, 0.000000e+00
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #14
  %4 = fcmp une float %3, 0x7FF0000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #6

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #5 {
  %1 = fcmp ord double %__x, 0.000000e+00
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #14
  %4 = fcmp une double %3, 0x7FF0000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #6

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #5 {
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #14
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #6

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #5 {
  %1 = tail call float @llvm.fabs.f32(float %__x) #14
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #5 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #14
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #5 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #14
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #5 {
  %1 = fcmp uno float %__x, 0.000000e+00
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #5 {
  %1 = fcmp uno double %__x, 0.000000e+00
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #5 {
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #5 {
  %1 = bitcast float %__x to i32
  %2 = lshr i32 %1, 31
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #5 {
  %1 = bitcast double %__x to i64
  %2 = lshr i64 %1, 63
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #5 {
  %1 = bitcast x86_fp80 %__x to i80
  %2 = lshr i80 %1, 79
  %3 = trunc i80 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #5 {
  %1 = fcmp ord float %__x, 0.000000e+00
  %2 = tail call float @llvm.fabs.f32(float %__x) #6
  %3 = fcmp une float %2, 0x7FF0000000000000
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %.critedge

; <label>:4                                       ; preds = %0
  %5 = fcmp oge float %2, 0x3810000000000000
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormald(double %__x) #5 {
  %1 = fcmp ord double %__x, 0.000000e+00
  %2 = tail call double @llvm.fabs.f64(double %__x) #6
  %3 = fcmp une double %2, 0x7FF0000000000000
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %.critedge

; <label>:4                                       ; preds = %0
  %5 = fcmp oge double %2, 0x10000000000000
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormall(x86_fp80 %__x) #5 {
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #6
  %3 = fcmp une x86_fp80 %2, 0xK7FFF8000000000000000
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %.critedge

; <label>:4                                       ; preds = %0
  %5 = fcmp oge x86_fp80 %2, 0xK00018000000000000000
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #4 {
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #12
  %2 = extractelement <2 x float> %1, i32 0
  store float %2, float* %__sinp, align 4, !tbaa !15
  %3 = extractelement <2 x float> %1, i32 1
  store float %3, float* %__cosp, align 4, !tbaa !15
  ret void
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #4 {
  %1 = tail call { double, double } @__sincos_stret(double %__x) #12
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !17
  store double %3, double* %__cosp, align 8, !tbaa !17
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #4 {
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #12
  %2 = extractelement <2 x float> %1, i32 0
  store float %2, float* %__sinp, align 4, !tbaa !15
  %3 = extractelement <2 x float> %1, i32 1
  store float %3, float* %__cosp, align 4, !tbaa !15
  ret void
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #4 {
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #12
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !17
  store double %3, double* %__cosp, align 8, !tbaa !17
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #2

; Function Attrs: nounwind optsize readonly ssp uwtable
define i8* @ShortProgram() #3 {
  %1 = load i8** @program, align 8, !tbaa !19
  %2 = icmp eq i8* %1, null
  br i1 %2, label %7, label %3

; <label>:3                                       ; preds = %0
  %4 = tail call i8* @strrchr(i8* %1, i32 47) #12
  %5 = icmp eq i8* %4, null
  %6 = getelementptr inbounds i8* %4, i64 1
  %. = select i1 %5, i8* %1, i8* %6
  ret i8* %.

; <label>:7                                       ; preds = %0
  ret i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize readonly
declare i8* @strrchr(i8*, i32) #7

; Function Attrs: nounwind optsize readonly ssp uwtable
define i8* @Program() #3 {
  %1 = load i8** @program, align 8, !tbaa !19
  %2 = icmp eq i8* %1, null
  %. = select i1 %2, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* %1
  ret i8* %.
}

; Function Attrs: nounwind optsize ssp uwtable
define void @set_program_name(i8* nocapture readonly %argvzero) #1 {
  %1 = load i8** @program, align 8, !tbaa !19
  %2 = icmp eq i8* %1, null
  br i1 %2, label %3, label %14

; <label>:3                                       ; preds = %0
  %4 = tail call i64 @strlen(i8* %argvzero) #12
  %5 = icmp ugt i64 %4, 3
  br i1 %5, label %6, label %12

; <label>:6                                       ; preds = %3
  %7 = tail call i32 @strncmp(i8* %argvzero, i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i64 3) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

; <label>:9                                       ; preds = %6
  %10 = getelementptr inbounds i8* %argvzero, i64 3
  %11 = tail call i8* @strdup(i8* %10) #12
  store i8* %11, i8** @program, align 8, !tbaa !19
  br label %14

; <label>:12                                      ; preds = %6, %3
  %13 = tail call i8* @strdup(i8* %argvzero) #12
  store i8* %13, i8** @program, align 8, !tbaa !19
  br label %14

; <label>:14                                      ; preds = %9, %12, %0
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #7

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #7

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #8

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @bRmod(double %a, double %b) #0 {
  %1 = fmul double %a, 0x3FF00000A10FAFA0
  %2 = fdiv double %1, %b
  %3 = fptosi double %2 to i32
  %4 = sitofp i32 %3 to double
  %5 = fmul double %4, %b
  %6 = fsub double %a, %5
  %7 = tail call double @fabs(double %6) #15
  %8 = tail call double @fabs(double %a) #15
  %9 = fmul double %8, 6.000000e-07
  %not. = fcmp ole double %7, %9
  %. = zext i1 %not. to i32
  ret i32 %.
}

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #9

; Function Attrs: nounwind optsize ssp uwtable
define i32 @check_times2(float %t, float %t0, float %tp, float %tpp) #1 {
  %1 = fsub float %t, %tp
  %2 = fcmp ogt float %1, 0.000000e+00
  br i1 %2, label %3, label %11

; <label>:3                                       ; preds = %0
  %4 = fsub float %tp, %tpp
  %5 = fcmp ogt float %4, 0.000000e+00
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %3
  %7 = fcmp olt float %1, %4
  %. = select i1 %7, float %1, float %4
  %8 = fpext float %. to double
  %9 = fmul double %8, 1.000000e-01
  %10 = fptrunc double %9 to float
  br label %11

; <label>:11                                      ; preds = %0, %3, %6
  %margin.0 = phi float [ %10, %6 ], [ 0.000000e+00, %3 ], [ 0.000000e+00, %0 ]
  %12 = load float* @tbegin, align 4, !tbaa !15
  %13 = fcmp ult float %12, 0.000000e+00
  %14 = fcmp ugt float %12, %t
  %or.cond = or i1 %13, %14
  br i1 %or.cond, label %15, label %20

; <label>:15                                      ; preds = %11
  %16 = fpext float %12 to double
  %17 = fadd double %16, 1.000000e+00
  %18 = tail call double @fabs(double %17) #15
  %19 = fcmp olt double %18, 1.200000e-38
  br i1 %19, label %20, label %._crit_edge

._crit_edge:                                      ; preds = %15
  %.pre = load float* @tend, align 4, !tbaa !15
  br label %47

; <label>:20                                      ; preds = %11, %15
  %21 = load float* @tend, align 4, !tbaa !15
  %22 = fcmp ult float %21, 0.000000e+00
  %23 = fadd float %margin.0, %21
  %24 = fcmp ult float %23, %t
  %or.cond2 = or i1 %22, %24
  br i1 %or.cond2, label %25, label %30

; <label>:25                                      ; preds = %20
  %26 = fpext float %21 to double
  %27 = fadd double %26, 1.000000e+00
  %28 = tail call double @fabs(double %27) #15
  %29 = fcmp olt double %28, 1.200000e-38
  br i1 %29, label %30, label %47

; <label>:30                                      ; preds = %20, %25
  %31 = load float* @tdelta, align 4, !tbaa !15
  %32 = fcmp ogt float %31, 0.000000e+00
  br i1 %32, label %33, label %46

; <label>:33                                      ; preds = %30
  %34 = fsub float %t, %t0
  %35 = fpext float %34 to double
  %36 = fpext float %31 to double
  %37 = fmul double %35, 0x3FF00000A10FAFA0
  %38 = fdiv double %37, %36
  %39 = fptosi double %38 to i32
  %40 = sitofp i32 %39 to double
  %41 = fmul double %36, %40
  %42 = fsub double %35, %41
  %43 = tail call double @fabs(double %42) #15
  %fabsf = tail call float @fabsf(float %34) #9
  %44 = fpext float %fabsf to double
  %45 = fmul double %44, 6.000000e-07
  %not..i = fcmp ugt double %43, %45
  br i1 %not..i, label %54, label %46

; <label>:46                                      ; preds = %33, %30
  br label %54

; <label>:47                                      ; preds = %._crit_edge, %25
  %48 = phi float [ %.pre, %._crit_edge ], [ %21, %25 ]
  %49 = fpext float %48 to double
  %50 = fadd double %49, 1.000000e+00
  %51 = tail call double @fabs(double %50) #15
  %52 = fcmp ule double %51, 1.200000e-38
  %53 = fcmp ugt float %48, %t
  %or.cond3 = or i1 %53, %52
  %.4 = select i1 %or.cond3, i32 -1, i32 1
  br label %54

; <label>:54                                      ; preds = %33, %47, %46
  %55 = phi float [ %21, %46 ], [ %21, %33 ], [ %48, %47 ]
  %r.0 = phi i32 [ 0, %46 ], [ -1, %33 ], [ %.4, %47 ]
  %56 = load %struct.__sFILE** @debug, align 8, !tbaa !19
  %57 = icmp eq %struct.__sFILE* %56, null
  br i1 %57, label %66, label %58

; <label>:58                                      ; preds = %54
  %59 = fpext float %t to double
  %60 = fpext float %t0 to double
  %61 = fpext float %12 to double
  %62 = fpext float %55 to double
  %63 = load float* @tdelta, align 4, !tbaa !15
  %64 = fpext float %63 to double
  %65 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %56, i8* getelementptr inbounds ([38 x i8]* @.str2, i64 0, i64 0), double %59, double %60, double %61, double %62, double %64, i32 %r.0) #12
  br label %66

; <label>:66                                      ; preds = %54, %58
  ret i32 %r.0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #8

; Function Attrs: nounwind optsize ssp uwtable
define i32 @check_times(float %t) #1 {
  %1 = tail call i32 @check_times2(float %t, float %t, float %t, float %t) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i8* @time_unit() #3 {
  %1 = load i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 0), align 16, !tbaa !19
  ret i8* %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @time_label() #1 {
  %1 = load i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 0), align 16, !tbaa !19
  %2 = icmp ne i8* %1, null
  %3 = select i1 %2, i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0)
  %4 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([20 x i8]* @time_label.label, i64 0, i64 0), i32 0, i64 20, i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i8* %3) #12
  ret i8* getelementptr inbounds ([20 x i8]* @time_label.label, i64 0, i64 0)
}

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define i8* @xvgr_tlabel() #1 {
  %1 = load i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 1), align 8, !tbaa !19
  %2 = icmp eq i8* %1, null
  br i1 %2, label %nenum.exit7, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %0
  %3 = load i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 0), align 16, !tbaa !19
  br label %4

; <label>:4                                       ; preds = %7, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %7 ]
  %5 = phi i8* [ %1, %.lr.ph.i ], [ %9, %7 ]
  %6 = icmp eq i8* %3, %5
  br i1 %6, label %nenum.exit, label %7

; <label>:7                                       ; preds = %4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %8 = getelementptr inbounds [10 x i8*]* @timestr, i64 0, i64 %indvars.iv.next.i
  %9 = load i8** %8, align 8, !tbaa !19
  %10 = icmp eq i8* %9, null
  br i1 %10, label %nenum.exit, label %4

nenum.exit:                                       ; preds = %4, %7
  %indvars.iv.i.sink = phi i64 [ %indvars.iv.next.i, %7 ], [ %indvars.iv.i, %4 ]
  %11 = trunc i64 %indvars.iv.i.sink to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %.lr.ph.i1

.lr.ph.i1:                                        ; preds = %nenum.exit, %15
  %indvars.iv.i2 = phi i64 [ %indvars.iv.next.i3, %15 ], [ 1, %nenum.exit ]
  %13 = phi i8* [ %17, %15 ], [ %1, %nenum.exit ]
  %14 = icmp eq i8* %3, %13
  br i1 %14, label %nenum.exit7, label %15

; <label>:15                                      ; preds = %.lr.ph.i1
  %indvars.iv.next.i3 = add nuw nsw i64 %indvars.iv.i2, 1
  %16 = getelementptr inbounds [10 x i8*]* @timestr, i64 0, i64 %indvars.iv.next.i3
  %17 = load i8** %16, align 8, !tbaa !19
  %18 = icmp eq i8* %17, null
  br i1 %18, label %nenum.exit7, label %.lr.ph.i1

nenum.exit7:                                      ; preds = %15, %.lr.ph.i1, %0
  %i.0.lcssa.i6 = phi i64 [ 1, %0 ], [ %indvars.iv.i2, %.lr.ph.i1 ], [ %indvars.iv.next.i3, %15 ]
  %sext = shl i64 %i.0.lcssa.i6, 32
  %19 = ashr exact i64 %sext, 32
  %20 = getelementptr inbounds [10 x i8*]* @xvgrtimestr, i64 0, i64 %19
  %21 = load i8** %20, align 8, !tbaa !19
  br label %22

; <label>:22                                      ; preds = %nenum.exit, %nenum.exit7
  %23 = phi i8* [ %21, %nenum.exit7 ], [ getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), %nenum.exit ]
  %24 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([20 x i8]* @xvgr_tlabel.label, i64 0, i64 0), i32 0, i64 20, i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i8* %23) #12
  ret i8* getelementptr inbounds ([20 x i8]* @xvgr_tlabel.label, i64 0, i64 0)
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @nenum(i8** nocapture readonly %enumc) #3 {
  %1 = getelementptr inbounds i8** %enumc, i64 1
  %2 = load i8** %1, align 8, !tbaa !19
  %3 = icmp eq i8* %2, null
  br i1 %3, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %0
  %4 = load i8** %enumc, align 8, !tbaa !19
  br label %5

; <label>:5                                       ; preds = %.lr.ph, %8
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %8 ]
  %6 = phi i8* [ %2, %.lr.ph ], [ %10, %8 ]
  %7 = icmp eq i8* %4, %6
  br i1 %7, label %..critedge_crit_edge, label %8

; <label>:8                                       ; preds = %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = getelementptr inbounds i8** %enumc, i64 %indvars.iv.next
  %10 = load i8** %9, align 8, !tbaa !19
  %11 = icmp eq i8* %10, null
  br i1 %11, label %..critedge_crit_edge2, label %5

..critedge_crit_edge:                             ; preds = %5
  %12 = trunc i64 %indvars.iv to i32
  br label %.critedge

..critedge_crit_edge2:                            ; preds = %8
  %13 = trunc i64 %indvars.iv.next to i32
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge2, %..critedge_crit_edge, %0
  %i.0.lcssa = phi i32 [ %12, %..critedge_crit_edge ], [ %13, %..critedge_crit_edge2 ], [ 1, %0 ]
  ret i32 %i.0.lcssa
}

; Function Attrs: nounwind optsize ssp uwtable
define float @time_factor() #1 {
  tail call fastcc void @init_time_factor() #13
  %1 = load float* @timefactor, align 4, !tbaa !15
  ret float %1
}

; Function Attrs: nounwind optsize ssp uwtable
define float @convert_time(float %time) #1 {
  tail call fastcc void @init_time_factor() #13
  %1 = load float* @timefactor, align 4, !tbaa !15
  %2 = fmul float %1, %time
  ret float %2
}

; Function Attrs: nounwind optsize ssp uwtable
define void @convert_times(i32 %n, float* nocapture %time) #1 {
  tail call fastcc void @init_time_factor() #13
  %1 = load float* @timefactor, align 4, !tbaa !15
  %2 = fadd float %1, -1.000000e+00
  %fabsf = tail call float @fabsf(float %2) #9
  %3 = fpext float %fabsf to double
  %4 = fcmp ogt double %3, 1.200000e-38
  %5 = icmp sgt i32 %n, 0
  %or.cond = and i1 %4, %5
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %0
  %6 = add i32 %n, -1
  %7 = load float* %time, align 4, !tbaa !15
  %8 = fmul float %1, %7
  store float %8, float* %time, align 4, !tbaa !15
  %exitcond2 = icmp eq i32 %6, 0
  br i1 %exitcond2, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge
  %indvars.iv3 = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1
  %.pre = load float* @timefactor, align 4, !tbaa !15
  %9 = getelementptr inbounds float* %time, i64 %indvars.iv.next
  %10 = load float* %9, align 4, !tbaa !15
  %11 = fmul float %.pre, %10
  store float %11, float* %9, align 4, !tbaa !15
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %6
  br i1 %exitcond, label %.loopexit, label %._crit_edge

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @default_time() #1 {
  %1 = load i64* bitcast (i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 1) to i64*), align 8, !tbaa !19
  store i64 %1, i64* bitcast ([10 x i8*]* @timestr to i64*), align 16, !tbaa !19
  %2 = load i32* bitcast (float* getelementptr inbounds ([10 x float]* @timefactors, i64 0, i64 1) to i32*), align 4, !tbaa !15
  store i32 %2, i32* bitcast (float* @timefactor to i32*), align 4, !tbaa !15
  %3 = load i64* bitcast (i8** getelementptr inbounds ([10 x i8*]* @xvgrtimestr, i64 0, i64 1) to i64*), align 8, !tbaa !19
  store i64 %3, i64* bitcast ([10 x i8*]* @xvgrtimestr to i64*), align 16, !tbaa !19
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.t_topology* @read_top(i8* %fn) #1 {
  %step = alloca i32, align 4
  %natoms = alloca i32, align 4
  %t = alloca float, align 4
  %lambda = alloca float, align 4
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str6, i64 0, i64 0), i32 264, i32 1, i32 50264) #12
  %2 = bitcast i8* %1 to %struct.t_topology*
  call void @read_tpx(i8* %fn, i32* %step, float* %t, float* %lambda, %struct.t_inputrec* null, [3 x float]* null, i32* %natoms, [3 x float]* null, [3 x float]* null, [3 x float]* null, %struct.t_topology* %2) #12
  ret %struct.t_topology* %2
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare void @read_tpx(i8*, i32*, float*, float*, %struct.t_inputrec*, [3 x float]*, i32*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_topology*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @mk_single_top(%struct.t_topology* nocapture %top) #1 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %indvars.iv3 = phi i64 [ 0, %0 ], [ %indvars.iv.next4, %1 ]
  %2 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv3, i32 0, i64 255
  %3 = load i32* %2, align 4, !tbaa !2
  %4 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv3, i32 0, i64 0
  store i32 %3, i32* %4, align 4, !tbaa !2
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  %exitcond5 = icmp eq i64 %indvars.iv.next4, 3
  br i1 %exitcond5, label %.preheader, label %1

.preheader:                                       ; preds = %1, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %1 ]
  %5 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv, i32 1, i64 255
  %6 = load i32* %5, align 4, !tbaa !2
  %7 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv, i32 1, i64 0
  store i32 %6, i32* %7, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 44
  br i1 %exitcond, label %8, label %.preheader

; <label>:8                                       ; preds = %.preheader
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @iscan(i32 %argc, i8** nocapture readonly %argv, i32* nocapture %i) #1 {
  %var = alloca i32, align 4
  %1 = load i32* %i, align 4, !tbaa !2
  %2 = add nsw i32 %1, 1
  %3 = icmp slt i32 %2, %argc
  br i1 %3, label %4, label %18

; <label>:4                                       ; preds = %0
  store i32 %2, i32* %i, align 4, !tbaa !2
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds i8** %argv, i64 %5
  %7 = load i8** %6, align 8, !tbaa !19
  %8 = call i32 (i8*, i8*, ...)* @sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i32* %var) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %usage.exit

; <label>:10                                      ; preds = %4
  %11 = load i32* %i, align 4, !tbaa !2
  %12 = add nsw i32 %11, -1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8** %argv, i64 %13
  %15 = load i8** %14, align 8, !tbaa !19
  %16 = icmp eq i8* %15, null
  br i1 %16, label %usage.exit, label %17

; <label>:17                                      ; preds = %10
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([36 x i8]* @.str79, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str8, i64 0, i64 0), i8* %15) #12
  br label %usage.exit

; <label>:18                                      ; preds = %0
  %19 = sext i32 %1 to i64
  %20 = getelementptr inbounds i8** %argv, i64 %19
  %21 = load i8** %20, align 8, !tbaa !19
  %22 = icmp eq i8* %21, null
  br i1 %22, label %usage.exit, label %23

; <label>:23                                      ; preds = %18
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([36 x i8]* @.str79, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str8, i64 0, i64 0), i8* %21) #12
  br label %usage.exit

usage.exit:                                       ; preds = %23, %18, %17, %10, %4
  %24 = load i32* %var, align 4, !tbaa !2
  ret i32 %24
}

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #8

; Function Attrs: nounwind optsize ssp uwtable
define double @dscan(i32 %argc, i8** nocapture readonly %argv, i32* nocapture %i) #1 {
  %var = alloca double, align 8
  %1 = load i32* %i, align 4, !tbaa !2
  %2 = add nsw i32 %1, 1
  %3 = icmp slt i32 %2, %argc
  br i1 %3, label %4, label %18

; <label>:4                                       ; preds = %0
  store i32 %2, i32* %i, align 4, !tbaa !2
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds i8** %argv, i64 %5
  %7 = load i8** %6, align 8, !tbaa !19
  %8 = call i32 (i8*, i8*, ...)* @sscanf(i8* %7, i8* getelementptr inbounds ([4 x i8]* @.str9, i64 0, i64 0), double* %var) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %usage.exit

; <label>:10                                      ; preds = %4
  %11 = load i32* %i, align 4, !tbaa !2
  %12 = add nsw i32 %11, -1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8** %argv, i64 %13
  %15 = load i8** %14, align 8, !tbaa !19
  %16 = icmp eq i8* %15, null
  br i1 %16, label %usage.exit, label %17

; <label>:17                                      ; preds = %10
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([36 x i8]* @.str79, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0), i8* %15) #12
  br label %usage.exit

; <label>:18                                      ; preds = %0
  %19 = sext i32 %1 to i64
  %20 = getelementptr inbounds i8** %argv, i64 %19
  %21 = load i8** %20, align 8, !tbaa !19
  %22 = icmp eq i8* %21, null
  br i1 %22, label %usage.exit, label %23

; <label>:23                                      ; preds = %18
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([36 x i8]* @.str79, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0), i8* %21) #12
  br label %usage.exit

usage.exit:                                       ; preds = %23, %18, %17, %10, %4
  %24 = load double* %var, align 8, !tbaa !17
  ret double %24
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @sscan(i32 %argc, i8** nocapture readonly %argv, i32* nocapture %i) #1 {
  %1 = load i32* %i, align 4, !tbaa !2
  %2 = add nsw i32 %1, 1
  %3 = icmp slt i32 %2, %argc
  br i1 %3, label %4, label %25

; <label>:4                                       ; preds = %0
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds i8** %argv, i64 %5
  %7 = load i8** %6, align 8, !tbaa !19
  %8 = load i8* %7, align 1, !tbaa !14
  %9 = icmp eq i8 %8, 45
  br i1 %9, label %10, label %usage.exit

; <label>:10                                      ; preds = %4
  %11 = add nsw i32 %1, 2
  %12 = icmp slt i32 %11, %argc
  br i1 %12, label %13, label %usage.exit

; <label>:13                                      ; preds = %10
  %14 = sext i32 %11 to i64
  %15 = getelementptr inbounds i8** %argv, i64 %14
  %16 = load i8** %15, align 8, !tbaa !19
  %17 = load i8* %16, align 1, !tbaa !14
  %18 = icmp eq i8 %17, 45
  br i1 %18, label %usage.exit, label %19

; <label>:19                                      ; preds = %13
  %20 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !19
  %21 = sext i32 %1 to i64
  %22 = getelementptr inbounds i8** %argv, i64 %21
  %23 = load i8** %22, align 8, !tbaa !19
  %24 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([49 x i8]* @.str11, i64 0, i64 0), i8* %23) #12
  br label %usage.exit

; <label>:25                                      ; preds = %0
  %26 = sext i32 %1 to i64
  %27 = getelementptr inbounds i8** %argv, i64 %26
  %28 = load i8** %27, align 8, !tbaa !19
  %29 = icmp eq i8* %28, null
  br i1 %29, label %usage.exit, label %30

; <label>:30                                      ; preds = %25
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([36 x i8]* @.str79, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* %28) #12
  br label %usage.exit

usage.exit:                                       ; preds = %30, %25, %13, %4, %10, %19
  %31 = load i32* %i, align 4, !tbaa !2
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %i, align 4, !tbaa !2
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8** %argv, i64 %33
  %35 = load i8** %34, align 8, !tbaa !19
  ret i8* %35
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @bDoView() #3 {
  %1 = load i32* @bView, align 4, !tbaa !2
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define void @parse_common_args(i32* %argc, i8** %argv, i64 %Flags, i32 %nfile, %struct.t_filenm* %fnm, i32 %npargs, %struct.t_pargs* %pa, i32 %ndesc, i8** %desc, i32 %nbugs, i8** %bugs) #1 {
  %all_pa = alloca %struct.t_pargs*, align 8
  %motif_pa = alloca %struct.t_pargs, align 8
  %nice_paX = alloca %struct.t_pargs, align 8
  %nice_pa = alloca %struct.t_pargs, align 8
  %deffnm_pa = alloca %struct.t_pargs, align 8
  %begin_pa = alloca %struct.t_pargs, align 8
  %end_pa = alloca %struct.t_pargs, align 8
  %dt_pa = alloca %struct.t_pargs, align 8
  %view_pa = alloca %struct.t_pargs, align 8
  %pca_pa = alloca [5 x %struct.t_pargs], align 16
  %buf = alloca [256 x i8], align 16
  store %struct.t_pargs* null, %struct.t_pargs** %all_pa, align 8, !tbaa !19
  %1 = bitcast %struct.t_pargs* %motif_pa to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.t_pargs* @parse_common_args.motif_pa to i8*), i64 32, i32 8, i1 false)
  %2 = bitcast %struct.t_pargs* %nice_paX to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%struct.t_pargs* @parse_common_args.nice_paX to i8*), i64 32, i32 8, i1 false)
  %3 = bitcast %struct.t_pargs* %nice_pa to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast (%struct.t_pargs* @parse_common_args.nice_pa to i8*), i64 32, i32 8, i1 false)
  %4 = bitcast %struct.t_pargs* %deffnm_pa to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast (%struct.t_pargs* @parse_common_args.deffnm_pa to i8*), i64 32, i32 8, i1 false)
  %5 = bitcast %struct.t_pargs* %begin_pa to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast (%struct.t_pargs* @parse_common_args.begin_pa to i8*), i64 32, i32 8, i1 false)
  %6 = bitcast %struct.t_pargs* %end_pa to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast (%struct.t_pargs* @parse_common_args.end_pa to i8*), i64 32, i32 8, i1 false)
  %7 = bitcast %struct.t_pargs* %dt_pa to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast (%struct.t_pargs* @parse_common_args.dt_pa to i8*), i64 32, i32 8, i1 false)
  %8 = bitcast %struct.t_pargs* %view_pa to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast (%struct.t_pargs* @parse_common_args.view_pa to i8*), i64 32, i32 8, i1 false)
  %9 = bitcast [5 x %struct.t_pargs]* %pca_pa to i8*
  call void @llvm.lifetime.start(i64 160, i8* %9) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast ([5 x %struct.t_pargs]* @parse_common_args.pca_pa to i8*), i64 160, i32 16, i1 false)
  %10 = load %struct.__sFILE** @debug, align 8, !tbaa !19
  %11 = icmp eq %struct.__sFILE* %10, null
  br i1 %11, label %..preheader16_crit_edge, label %12

..preheader16_crit_edge:                          ; preds = %0
  %.pre = load i32* %argc, align 4, !tbaa !2
  br label %.preheader16

; <label>:12                                      ; preds = %0
  %13 = tail call i32 @gmx_node_id() #12
  %14 = load i32* %argc, align 4, !tbaa !2
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([19 x i8]* @.str56, i64 0, i64 0), i32 %13, i32 %14) #12
  %16 = load i32* %argc, align 4, !tbaa !2
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %.lr.ph54, label %._crit_edge51

.preheader16:                                     ; preds = %.lr.ph54, %..preheader16_crit_edge
  %18 = phi i32 [ %.pre, %..preheader16_crit_edge ], [ %26, %.lr.ph54 ]
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %.lr.ph50, label %._crit_edge51

.lr.ph54:                                         ; preds = %12, %.lr.ph54
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %.lr.ph54 ], [ 0, %12 ]
  %20 = load %struct.__sFILE** @debug, align 8, !tbaa !19
  %21 = tail call i32 @gmx_node_id() #12
  %22 = getelementptr inbounds i8** %argv, i64 %indvars.iv99
  %23 = load i8** %22, align 8, !tbaa !19
  %24 = trunc i64 %indvars.iv99 to i32
  %25 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([23 x i8]* @.str57, i64 0, i64 0), i32 %21, i32 %24, i8* %23) #12
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  %26 = load i32* %argc, align 4, !tbaa !2
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %indvars.iv.next100, %27
  br i1 %28, label %.lr.ph54, label %.preheader16

.lr.ph50:                                         ; preds = %.preheader16, %.loopexit
  %29 = phi i32 [ %66, %.loopexit ], [ %18, %.preheader16 ]
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %.loopexit ], [ 1, %.preheader16 ]
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %.loopexit ], [ 2, %.preheader16 ]
  %30 = getelementptr inbounds i8** %argv, i64 %indvars.iv96
  %31 = load i8** %30, align 8, !tbaa !19
  %32 = icmp eq i8* %31, null
  br i1 %32, label %.loopexit, label %33

; <label>:33                                      ; preds = %.lr.ph50
  %34 = tail call i64 @strlen(i8* %31) #12
  %35 = icmp ugt i64 %34, 1
  br i1 %35, label %36, label %.loopexit

; <label>:36                                      ; preds = %33
  %37 = getelementptr inbounds i8* %31, i64 1
  %38 = load i8* %37, align 1, !tbaa !14
  %39 = sext i8 %38 to i32
  %isdigittmp = add nsw i32 %39, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %.loopexit, label %.preheader15

.preheader15:                                     ; preds = %36
  %40 = add nuw nsw i64 %indvars.iv96, 1
  %41 = sext i32 %29 to i64
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %.lr.ph48, label %.loopexit

.lr.ph48:                                         ; preds = %.preheader15
  %43 = trunc i64 %40 to i32
  br label %44

; <label>:44                                      ; preds = %.backedge._crit_edge, %.lr.ph48
  %45 = phi i8* [ %31, %.lr.ph48 ], [ %.pre101, %.backedge._crit_edge ]
  %indvars.iv93 = phi i64 [ %indvars.iv91, %.lr.ph48 ], [ %indvars.iv.next94, %.backedge._crit_edge ]
  %j.047 = phi i32 [ %43, %.lr.ph48 ], [ %j.0, %.backedge._crit_edge ]
  %46 = load i8* %45, align 1, !tbaa !14
  %47 = icmp eq i8 %46, 45
  br i1 %47, label %50, label %.backedge

.backedge:                                        ; preds = %44, %50, %55, %65, %62
  %j.0 = add nuw nsw i32 %j.047, 1
  %48 = load i32* %argc, align 4, !tbaa !2
  %49 = icmp slt i32 %j.0, %48
  br i1 %49, label %.backedge._crit_edge, label %.loopexit

.backedge._crit_edge:                             ; preds = %.backedge
  %indvars.iv.next94 = add nuw i64 %indvars.iv93, 1
  %.pre101 = load i8** %30, align 8, !tbaa !19
  br label %44

; <label>:50                                      ; preds = %44
  %51 = getelementptr inbounds i8** %argv, i64 %indvars.iv93
  %52 = load i8** %51, align 8, !tbaa !19
  %53 = load i8* %52, align 1, !tbaa !14
  %54 = icmp eq i8 %53, 45
  br i1 %54, label %55, label %.backedge

; <label>:55                                      ; preds = %50
  %56 = tail call i32 @strcmp(i8* %45, i8* %52) #12
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %.backedge

; <label>:58                                      ; preds = %55
  %59 = load i64* @uFlags, align 8, !tbaa !20
  %60 = and i64 %59, 2048
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %65, label %62

; <label>:62                                      ; preds = %58
  %63 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !19
  %64 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %63, i8* getelementptr inbounds ([33 x i8]* @.str58, i64 0, i64 0), i8* %45) #12
  br label %.backedge

; <label>:65                                      ; preds = %58
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([33 x i8]* @.str58, i64 0, i64 0), i8* %45) #12
  br label %.backedge

.loopexit:                                        ; preds = %.backedge, %.preheader15, %.lr.ph50, %33, %36
  %66 = phi i32 [ %29, %.lr.ph50 ], [ %29, %33 ], [ %29, %36 ], [ %29, %.preheader15 ], [ %48, %.backedge ]
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  %67 = sext i32 %66 to i64
  %68 = icmp slt i64 %indvars.iv.next97, %67
  %indvars.iv.next92 = add nuw i64 %indvars.iv91, 1
  br i1 %68, label %.lr.ph50, label %._crit_edge51

._crit_edge51:                                    ; preds = %.loopexit, %12, %.preheader16
  store i64 %Flags, i64* @uFlags, align 8, !tbaa !20
  %69 = and i64 %Flags, 512
  store i32 0, i32* @parse_common_args.bGUI, align 4, !tbaa !2
  %70 = load i8** %argv, align 8, !tbaa !19
  tail call void @set_program_name(i8* %70) #13
  %71 = add i32 %npargs, 5
  %72 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str6, i64 0, i64 0), i32 563, i32 %71, i32 32) #12
  %73 = bitcast %struct.t_pargs** %all_pa to i8**
  store i8* %72, i8** %73, align 8, !tbaa !19
  br label %74

; <label>:74                                      ; preds = %74, %._crit_edge51
  %indvars.iv88 = phi i64 [ 0, %._crit_edge51 ], [ %indvars.iv.next89, %74 ]
  %npall.045 = phi i32 [ 0, %._crit_edge51 ], [ %76, %74 ]
  %75 = getelementptr inbounds [5 x %struct.t_pargs]* %pca_pa, i64 0, i64 %indvars.iv88
  %76 = call fastcc i32 @add_parg(i32 %npall.045, %struct.t_pargs** %all_pa, %struct.t_pargs* %75) #13
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  %exitcond90 = icmp eq i64 %indvars.iv.next89, 5
  br i1 %exitcond90, label %77, label %74

; <label>:77                                      ; preds = %74
  %78 = icmp eq i64 %69, 0
  %79 = call fastcc i32 @add_parg(i32 %76, %struct.t_pargs** %all_pa, %struct.t_pargs* %motif_pa) #13
  %80 = load i32* @parse_common_args.bGUI, align 4, !tbaa !2
  %81 = icmp eq i32 %80, 0
  %82 = load i64* @uFlags, align 8, !tbaa !20
  %83 = and i64 %82, 8192
  %84 = icmp ne i64 %83, 0
  br i1 %81, label %91, label %85

; <label>:85                                      ; preds = %77
  br i1 %84, label %86, label %89

; <label>:86                                      ; preds = %85
  %87 = getelementptr inbounds %struct.t_pargs* %nice_paX, i64 0, i32 3
  %88 = bitcast %union.anon.18* %87 to i8***
  store i8** getelementptr inbounds ([6 x i8*]* @parse_common_args.nicestr, i64 0, i64 0), i8*** %88, align 8, !tbaa !19
  br label %89

; <label>:89                                      ; preds = %86, %85
  %90 = call fastcc i32 @add_parg(i32 %79, %struct.t_pargs** %all_pa, %struct.t_pargs* %nice_paX) #13
  br label %95

; <label>:91                                      ; preds = %77
  br i1 %84, label %92, label %93

; <label>:92                                      ; preds = %91
  store i32 19, i32* @parse_common_args.nicelevel, align 4, !tbaa !2
  br label %93

; <label>:93                                      ; preds = %92, %91
  %94 = call fastcc i32 @add_parg(i32 %79, %struct.t_pargs** %all_pa, %struct.t_pargs* %nice_pa) #13
  br label %95

; <label>:95                                      ; preds = %93, %89
  %npall.1 = phi i32 [ %90, %89 ], [ %94, %93 ]
  %96 = load i64* @uFlags, align 8, !tbaa !20
  %97 = and i64 %96, 1024
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %101, label %99

; <label>:99                                      ; preds = %95
  %100 = call fastcc i32 @add_parg(i32 %npall.1, %struct.t_pargs** %all_pa, %struct.t_pargs* %deffnm_pa) #13
  %.pre102 = load i64* @uFlags, align 8, !tbaa !20
  br label %101

; <label>:101                                     ; preds = %95, %99
  %102 = phi i64 [ %.pre102, %99 ], [ %96, %95 ]
  %npall.2 = phi i32 [ %100, %99 ], [ %npall.1, %95 ]
  %103 = and i64 %102, 64
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %107, label %105

; <label>:105                                     ; preds = %101
  %106 = call fastcc i32 @add_parg(i32 %npall.2, %struct.t_pargs** %all_pa, %struct.t_pargs* %begin_pa) #13
  %.pre103 = load i64* @uFlags, align 8, !tbaa !20
  br label %107

; <label>:107                                     ; preds = %101, %105
  %108 = phi i64 [ %.pre103, %105 ], [ %102, %101 ]
  %npall.3 = phi i32 [ %106, %105 ], [ %npall.2, %101 ]
  %109 = and i64 %108, 128
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %113, label %111

; <label>:111                                     ; preds = %107
  %112 = call fastcc i32 @add_parg(i32 %npall.3, %struct.t_pargs** %all_pa, %struct.t_pargs* %end_pa) #13
  %.pre104 = load i64* @uFlags, align 8, !tbaa !20
  br label %113

; <label>:113                                     ; preds = %107, %111
  %114 = phi i64 [ %.pre104, %111 ], [ %108, %107 ]
  %npall.4 = phi i32 [ %112, %111 ], [ %npall.3, %107 ]
  %115 = and i64 %114, 16384
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %119, label %117

; <label>:117                                     ; preds = %113
  %118 = call fastcc i32 @add_parg(i32 %npall.4, %struct.t_pargs** %all_pa, %struct.t_pargs* %dt_pa) #13
  br label %119

; <label>:119                                     ; preds = %113, %117
  %npall.5 = phi i32 [ %118, %117 ], [ %npall.4, %113 ]
  %120 = load i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 1), align 8, !tbaa !19
  %121 = icmp eq i8* %120, null
  br i1 %121, label %.critedge.i, label %.lr.ph5.i

.lr.ph5.i:                                        ; preds = %119, %126
  %indvars.iv20.i = phi i64 [ %indvars.iv.next21.i, %126 ], [ 1, %119 ]
  %122 = phi i8* [ %128, %126 ], [ %120, %119 ]
  %123 = phi i8** [ %127, %126 ], [ getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 1), %119 ]
  %124 = call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0)) #12
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %..critedge_crit_edge.i, label %126

; <label>:126                                     ; preds = %.lr.ph5.i
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1
  %127 = getelementptr inbounds [10 x i8*]* @timestr, i64 0, i64 %indvars.iv.next21.i
  %128 = load i8** %127, align 8, !tbaa !19
  %129 = icmp eq i8* %128, null
  br i1 %129, label %..critedge_crit_edge8.i, label %.lr.ph5.i

..critedge_crit_edge.i:                           ; preds = %.lr.ph5.i
  %130 = trunc i64 %indvars.iv20.i to i32
  br label %.critedge.i

..critedge_crit_edge8.i:                          ; preds = %126
  %131 = trunc i64 %indvars.iv.next21.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %..critedge_crit_edge8.i, %..critedge_crit_edge.i, %119
  %132 = phi i8* [ %122, %..critedge_crit_edge.i ], [ null, %..critedge_crit_edge8.i ], [ null, %119 ]
  %.lcssa1.i = phi i8** [ %123, %..critedge_crit_edge.i ], [ %127, %..critedge_crit_edge8.i ], [ getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 1), %119 ]
  %.lcssa.i = phi i64 [ %indvars.iv20.i, %..critedge_crit_edge.i ], [ %indvars.iv.next21.i, %..critedge_crit_edge8.i ], [ 1, %119 ]
  %i.0.lcssa.i = phi i32 [ %130, %..critedge_crit_edge.i ], [ %131, %..critedge_crit_edge8.i ], [ 1, %119 ]
  %133 = call i32 @strcmp(i8* %132, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0)) #12
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %set_default_time_unit.exit

; <label>:135                                     ; preds = %.critedge.i
  %136 = bitcast i8** %.lcssa1.i to i64*
  %137 = load i64* %136, align 8, !tbaa !19
  store i64 %137, i64* bitcast ([10 x i8*]* @timestr to i64*), align 16, !tbaa !19
  %138 = getelementptr inbounds [10 x float]* @timefactors, i64 0, i64 %.lcssa.i
  %139 = bitcast float* %138 to i32*
  %140 = load i32* %139, align 4, !tbaa !15
  store i32 %140, i32* bitcast ([10 x float]* @timefactors to i32*), align 16, !tbaa !15
  %141 = getelementptr inbounds [10 x i8*]* @xvgrtimestr, i64 0, i64 %.lcssa.i
  %142 = bitcast i8** %141 to i64*
  %143 = load i64* %142, align 8, !tbaa !19
  store i64 %143, i64* bitcast ([10 x i8*]* @xvgrtimestr to i64*), align 16, !tbaa !19
  %144 = icmp sgt i32 %i.0.lcssa.i, 1
  br i1 %144, label %.lr.ph.i, label %163

.lr.ph.i:                                         ; preds = %135
  %145 = sext i32 %i.0.lcssa.i to i64
  br label %146

; <label>:146                                     ; preds = %146, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %145, %.lr.ph.i ], [ %indvars.iv.next.i, %146 ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %147 = getelementptr inbounds [10 x i8*]* @timestr, i64 0, i64 %indvars.iv.next.i
  %148 = bitcast i8** %147 to i64*
  %149 = load i64* %148, align 8, !tbaa !19
  %150 = getelementptr inbounds [10 x i8*]* @timestr, i64 0, i64 %indvars.iv.i
  %151 = bitcast i8** %150 to i64*
  store i64 %149, i64* %151, align 8, !tbaa !19
  %152 = getelementptr inbounds [10 x float]* @timefactors, i64 0, i64 %indvars.iv.next.i
  %153 = bitcast float* %152 to i32*
  %154 = load i32* %153, align 4, !tbaa !15
  %155 = getelementptr inbounds [10 x float]* @timefactors, i64 0, i64 %indvars.iv.i
  %156 = bitcast float* %155 to i32*
  store i32 %154, i32* %156, align 4, !tbaa !15
  %157 = getelementptr inbounds [10 x i8*]* @xvgrtimestr, i64 0, i64 %indvars.iv.next.i
  %158 = bitcast i8** %157 to i64*
  %159 = load i64* %158, align 8, !tbaa !19
  %160 = getelementptr inbounds [10 x i8*]* @xvgrtimestr, i64 0, i64 %indvars.iv.i
  %161 = bitcast i8** %160 to i64*
  store i64 %159, i64* %161, align 8, !tbaa !19
  %162 = icmp sgt i64 %indvars.iv.next.i, 1
  br i1 %162, label %146, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %146
  %.pre.i = load i64* bitcast ([10 x i8*]* @timestr to i64*), align 16, !tbaa !19
  %.pre22.i = load i32* bitcast ([10 x float]* @timefactors to i32*), align 16, !tbaa !15
  %.pre23.i = load i64* bitcast ([10 x i8*]* @xvgrtimestr to i64*), align 16, !tbaa !19
  br label %163

; <label>:163                                     ; preds = %._crit_edge.i, %135
  %164 = phi i64 [ %.pre23.i, %._crit_edge.i ], [ %143, %135 ]
  %165 = phi i32 [ %.pre22.i, %._crit_edge.i ], [ %140, %135 ]
  %166 = phi i64 [ %.pre.i, %._crit_edge.i ], [ %137, %135 ]
  store i64 %166, i64* bitcast (i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 1) to i64*), align 8, !tbaa !19
  store i32 %165, i32* bitcast (float* getelementptr inbounds ([10 x float]* @timefactors, i64 0, i64 1) to i32*), align 4, !tbaa !15
  store i64 %164, i64* bitcast (i8** getelementptr inbounds ([10 x i8*]* @xvgrtimestr, i64 0, i64 1) to i64*), align 8, !tbaa !19
  br label %set_default_time_unit.exit

set_default_time_unit.exit:                       ; preds = %.critedge.i, %163
  %167 = load i64* @uFlags, align 8, !tbaa !20
  %168 = and i64 %167, 32
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %.preheader14, label %170

; <label>:170                                     ; preds = %set_default_time_unit.exit
  %171 = call fastcc i32 @add_parg(i32 %npall.5, %struct.t_pargs** %all_pa, %struct.t_pargs* %view_pa) #13
  br label %.preheader14

.preheader14:                                     ; preds = %set_default_time_unit.exit, %170
  %npall.7.ph = phi i32 [ %171, %170 ], [ %npall.5, %set_default_time_unit.exit ]
  %172 = icmp sgt i32 %npargs, 0
  br i1 %172, label %.lr.ph43, label %.preheader13

.lr.ph43:                                         ; preds = %.preheader14
  %173 = add i32 %npargs, -1
  br label %176

.preheader13:                                     ; preds = %176, %.preheader14
  %npall.7.lcssa = phi i32 [ %npall.7.ph, %.preheader14 ], [ %178, %176 ]
  %174 = icmp sgt i32 %npall.7.lcssa, 0
  br i1 %174, label %.lr.ph39, label %._crit_edge40

.lr.ph39:                                         ; preds = %.preheader13
  %175 = add i32 %npall.7.lcssa, -1
  br label %179

; <label>:176                                     ; preds = %176, %.lr.ph43
  %indvars.iv84 = phi i64 [ 0, %.lr.ph43 ], [ %indvars.iv.next85, %176 ]
  %npall.742 = phi i32 [ %npall.7.ph, %.lr.ph43 ], [ %178, %176 ]
  %177 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv84
  %178 = call fastcc i32 @add_parg(i32 %npall.742, %struct.t_pargs** %all_pa, %struct.t_pargs* %177) #13
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  %lftr.wideiv86 = trunc i64 %indvars.iv84 to i32
  %exitcond87 = icmp eq i32 %lftr.wideiv86, %173
  br i1 %exitcond87, label %.preheader13, label %176

; <label>:179                                     ; preds = %192, %.lr.ph39
  %indvars.iv80 = phi i64 [ 0, %.lr.ph39 ], [ %indvars.iv.next81, %192 ]
  %180 = load %struct.t_pargs** %all_pa, align 8, !tbaa !19
  %181 = getelementptr inbounds %struct.t_pargs* %180, i64 %indvars.iv80, i32 2
  %182 = load i32* %181, align 4, !tbaa !22
  %183 = icmp eq i32 %182, 6
  br i1 %183, label %184, label %192

; <label>:184                                     ; preds = %179
  %185 = getelementptr inbounds %struct.t_pargs* %180, i64 %indvars.iv80, i32 3
  %186 = bitcast %union.anon.18* %185 to i8***
  %187 = load i8*** %186, align 8, !tbaa !19
  %188 = getelementptr inbounds i8** %187, i64 1
  %189 = bitcast i8** %188 to i64*
  %190 = load i64* %189, align 8, !tbaa !19
  %191 = bitcast i8** %187 to i64*
  store i64 %190, i64* %191, align 8, !tbaa !19
  br label %192

; <label>:192                                     ; preds = %179, %184
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  %lftr.wideiv82 = trunc i64 %indvars.iv80 to i32
  %exitcond83 = icmp eq i32 %lftr.wideiv82, %175
  br i1 %exitcond83, label %._crit_edge40, label %179

._crit_edge40:                                    ; preds = %192, %.preheader13
  %193 = load %struct.t_pargs** %all_pa, align 8, !tbaa !19
  %194 = load i64* @uFlags, align 8, !tbaa !20
  %195 = lshr i64 %194, 8
  %.tr = trunc i64 %195 to i32
  %196 = and i32 %.tr, 1
  call void @get_pargs(i32* %argc, i8** %argv, i32 %npall.7.lcssa, %struct.t_pargs* %193, i32 %196) #12
  %197 = load i64* @uFlags, align 8, !tbaa !20
  %198 = and i64 %197, 1024
  %199 = icmp ne i64 %198, 0
  %200 = load i8** @parse_common_args.deffnm, align 8
  %201 = icmp ne i8* %200, null
  %or.cond = and i1 %199, %201
  br i1 %or.cond, label %202, label %203

; <label>:202                                     ; preds = %._crit_edge40
  call void @set_default_file_name(i8* %200) #12
  %.pre105 = load i64* @uFlags, align 8, !tbaa !20
  br label %203

; <label>:203                                     ; preds = %202, %._crit_edge40
  %204 = phi i64 [ %.pre105, %202 ], [ %197, %._crit_edge40 ]
  %205 = lshr i64 %204, 8
  %.tr4 = trunc i64 %205 to i32
  %206 = and i32 %.tr4, 1
  call void @parse_file_args(i32* %argc, i8** %argv, i32 %nfile, %struct.t_filenm* %fnm, i32 %206) #12
  %207 = load i32* @parse_common_args.bDebug, align 4, !tbaa !2
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %228, label %209

; <label>:209                                     ; preds = %203
  %210 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %210) #10
  %211 = call i32 @gmx_node_num() #12
  %212 = icmp sgt i32 %211, 1
  %213 = load i8** @program, align 8, !tbaa !19
  %214 = icmp eq i8* %213, null
  br i1 %214, label %ShortProgram.exit, label %215

; <label>:215                                     ; preds = %209
  %216 = call i8* @strrchr(i8* %213, i32 47) #12
  %217 = icmp eq i8* %216, null
  %218 = getelementptr inbounds i8* %216, i64 1
  %..i = select i1 %217, i8* %213, i8* %218
  br label %ShortProgram.exit

ShortProgram.exit:                                ; preds = %209, %215
  %219 = phi i8* [ %..i, %215 ], [ getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), %209 ]
  br i1 %212, label %220, label %223

; <label>:220                                     ; preds = %ShortProgram.exit
  %221 = call i32 @gmx_node_id() #12
  %222 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %210, i32 0, i64 256, i8* getelementptr inbounds ([9 x i8]* @.str60, i64 0, i64 0), i8* %219, i32 %221) #12
  br label %225

; <label>:223                                     ; preds = %ShortProgram.exit
  %224 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %210, i32 0, i64 256, i8* getelementptr inbounds ([7 x i8]* @.str61, i64 0, i64 0), i8* %219) #12
  br label %225

; <label>:225                                     ; preds = %223, %220
  call void @init_debug(i8* %210) #12
  %226 = load %struct.__sFILE** @debug, align 8, !tbaa !19
  %227 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %226, i8* getelementptr inbounds ([43 x i8]* @.str62, i64 0, i64 0), i8* %210, i8* getelementptr inbounds ([68 x i8]* @.str6, i64 0, i64 0), i32 650) #12
  call void @llvm.lifetime.end(i64 256, i8* %210) #10
  br label %228

; <label>:228                                     ; preds = %203, %225
  %229 = load i32* @parse_common_args.bGUI, align 4, !tbaa !2
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %232, label %231

; <label>:231                                     ; preds = %228
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([63 x i8]* @.str63, i64 0, i64 0)) #12
  br label %232

; <label>:232                                     ; preds = %228, %231
  br i1 %172, label %.lr.ph37, label %.preheader12

.lr.ph37:                                         ; preds = %232
  %233 = sub nsw i32 %npall.7.lcssa, %npargs
  %234 = sext i32 %233 to i64
  %235 = add i32 %npargs, -1
  br label %237

.preheader12:                                     ; preds = %237, %232
  br i1 %174, label %.lr.ph32, label %._crit_edge33

.lr.ph32:                                         ; preds = %.preheader12
  %236 = add i32 %npall.7.lcssa, -1
  br label %245

; <label>:237                                     ; preds = %237, %.lr.ph37
  %indvars.iv76 = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next77, %237 ]
  %indvars.iv74 = phi i64 [ %234, %.lr.ph37 ], [ %indvars.iv.next75, %237 ]
  %238 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv76
  %239 = bitcast %struct.t_pargs* %238 to i8*
  %240 = load %struct.t_pargs** %all_pa, align 8, !tbaa !19
  %241 = getelementptr inbounds %struct.t_pargs* %240, i64 %indvars.iv74
  %242 = bitcast %struct.t_pargs* %241 to i8*
  %243 = call i64 @llvm.objectsize.i64.p0i8(i8* %239, i1 false)
  %244 = call i8* @__memcpy_chk(i8* %239, i8* %242, i64 32, i64 %243) #12
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  %indvars.iv.next75 = add nsw i64 %indvars.iv74, 1
  %lftr.wideiv78 = trunc i64 %indvars.iv76 to i32
  %exitcond79 = icmp eq i32 %lftr.wideiv78, %235
  br i1 %exitcond79, label %.preheader12, label %237

; <label>:245                                     ; preds = %mk_desc.exit, %.lr.ph32
  %indvars.iv70 = phi i64 [ 0, %.lr.ph32 ], [ %indvars.iv.next71, %mk_desc.exit ]
  %246 = load %struct.t_pargs** %all_pa, align 8, !tbaa !19
  %247 = getelementptr inbounds %struct.t_pargs* %246, i64 %indvars.iv70
  %248 = load i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 0), align 16, !tbaa !19
  %249 = getelementptr inbounds %struct.t_pargs* %246, i64 %indvars.iv70, i32 4
  %250 = load i8** %249, align 8, !tbaa !24
  %251 = call i64 @strlen(i8* %250) #12
  %252 = add i64 %251, 1
  %253 = trunc i64 %252 to i32
  %254 = call i8* @strstr(i8* %250, i8* getelementptr inbounds ([7 x i8]* @.str81, i64 0, i64 0)) #12
  %255 = icmp eq i8* %254, null
  %256 = add nsw i32 %253, 4
  %..i5 = select i1 %255, i32 %253, i32 %256
  %257 = getelementptr inbounds %struct.t_pargs* %246, i64 %indvars.iv70, i32 2
  %258 = load i32* %257, align 4, !tbaa !22
  %259 = icmp eq i32 %258, 6
  br i1 %259, label %260, label %.loopexit1.i

; <label>:260                                     ; preds = %245
  %261 = add nsw i32 %..i5, 10
  %262 = getelementptr inbounds %struct.t_pargs* %246, i64 %indvars.iv70, i32 3
  %263 = bitcast %union.anon.18* %262 to i8***
  %264 = load i8*** %263, align 8, !tbaa !19
  %265 = getelementptr inbounds i8** %264, i64 1
  %266 = load i8** %265, align 8, !tbaa !19
  %267 = icmp eq i8* %266, null
  br i1 %267, label %.loopexit1.i, label %.lr.ph8.i

.lr.ph8.i:                                        ; preds = %260, %.lr.ph8.i
  %indvars.iv11.i = phi i64 [ %indvars.iv.next12.i, %.lr.ph8.i ], [ 1, %260 ]
  %268 = phi i8* [ %275, %.lr.ph8.i ], [ %266, %260 ]
  %len.16.i = phi i32 [ %273, %.lr.ph8.i ], [ %261, %260 ]
  %269 = call i64 @strlen(i8* %268) #12
  %270 = zext i32 %len.16.i to i64
  %271 = add nuw nsw i64 %270, 12
  %272 = add i64 %271, %269
  %273 = trunc i64 %272 to i32
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1
  %274 = getelementptr inbounds i8** %264, i64 %indvars.iv.next12.i
  %275 = load i8** %274, align 8, !tbaa !19
  %276 = icmp eq i8* %275, null
  br i1 %276, label %.loopexit1.i, label %.lr.ph8.i

.loopexit1.i:                                     ; preds = %.lr.ph8.i, %260, %245
  %len.2.i = phi i32 [ %..i5, %245 ], [ %261, %260 ], [ %273, %.lr.ph8.i ]
  %277 = call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str82, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str6, i64 0, i64 0), i32 411, i32 %len.2.i, i32 1) #12
  %278 = call i32 @is_hidden(%struct.t_pargs* %247) #12
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %284, label %280

; <label>:280                                     ; preds = %.loopexit1.i
  %281 = call i64 @llvm.objectsize.i64.p0i8(i8* %277, i1 false) #10
  %282 = getelementptr inbounds i8* %254, i64 6
  %283 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %277, i32 0, i64 %281, i8* getelementptr inbounds ([12 x i8]* @.str83, i64 0, i64 0), i8* %282) #12
  br label %288

; <label>:284                                     ; preds = %.loopexit1.i
  %285 = load i8** %249, align 8, !tbaa !24
  %286 = call i64 @llvm.objectsize.i64.p0i8(i8* %277, i1 false) #10
  %287 = call i8* @__strcpy_chk(i8* %277, i8* %285, i64 %286) #12
  br label %288

; <label>:288                                     ; preds = %284, %280
  %289 = load i32* %257, align 4, !tbaa !22
  %290 = icmp eq i32 %289, 2
  br i1 %290, label %.preheader.i, label %thread-pre-split.i

.preheader.i:                                     ; preds = %288
  %291 = call i8* @strstr(i8* %277, i8* getelementptr inbounds ([3 x i8]* @.str84, i64 0, i64 0)) #12
  %292 = icmp eq i8* %291, null
  br i1 %292, label %mk_desc.exit, label %.lr.ph5.i6

.lr.ph5.i6:                                       ; preds = %.preheader.i, %.lr.ph5.i6
  %293 = phi i8* [ %305, %.lr.ph5.i6 ], [ %291, %.preheader.i ]
  %len.34.i = phi i32 [ %299, %.lr.ph5.i6 ], [ %len.2.i, %.preheader.i ]
  %newdesc.03.i = phi i8* [ %300, %.lr.ph5.i6 ], [ %277, %.preheader.i ]
  store i8 0, i8* %293, align 1, !tbaa !14
  %294 = getelementptr inbounds i8* %293, i64 2
  %295 = call i64 @strlen(i8* %248) #12
  %296 = zext i32 %len.34.i to i64
  %297 = add nuw nsw i64 %296, 4294967294
  %298 = add i64 %297, %295
  %299 = trunc i64 %298 to i32
  %300 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str85, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str6, i64 0, i64 0), i32 427, i32 %299, i32 1) #12
  %301 = call i64 @llvm.objectsize.i64.p0i8(i8* %300, i1 false) #10
  %302 = call i8* @__strcpy_chk(i8* %300, i8* %newdesc.03.i, i64 %301) #12
  %303 = call i8* @__strcat_chk(i8* %300, i8* %248, i64 %301) #12
  %304 = call i8* @__strcat_chk(i8* %300, i8* %294, i64 %301) #12
  call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str82, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str6, i64 0, i64 0), i32 431, i8* %newdesc.03.i) #12
  %305 = call i8* @strstr(i8* %300, i8* getelementptr inbounds ([3 x i8]* @.str84, i64 0, i64 0)) #12
  %306 = icmp eq i8* %305, null
  br i1 %306, label %.thread-pre-split_crit_edge.i, label %.lr.ph5.i6

.thread-pre-split_crit_edge.i:                    ; preds = %.lr.ph5.i6
  %.pr.pre.i = load i32* %257, align 4, !tbaa !22
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %.thread-pre-split_crit_edge.i, %288
  %307 = phi i32 [ %289, %288 ], [ %.pr.pre.i, %.thread-pre-split_crit_edge.i ]
  %newdesc.1.i = phi i8* [ %277, %288 ], [ %300, %.thread-pre-split_crit_edge.i ]
  %308 = icmp eq i32 %307, 6
  br i1 %308, label %309, label %mk_desc.exit

; <label>:309                                     ; preds = %thread-pre-split.i
  %310 = call i64 @llvm.objectsize.i64.p0i8(i8* %newdesc.1.i, i1 false) #10
  %311 = call i8* @__strcat_chk(i8* %newdesc.1.i, i8* getelementptr inbounds ([3 x i8]* @.str86, i64 0, i64 0), i64 %310) #12
  %312 = getelementptr inbounds %struct.t_pargs* %246, i64 %indvars.iv70, i32 3
  %313 = bitcast %union.anon.18* %312 to i8***
  %314 = load i8*** %313, align 8, !tbaa !19
  %315 = getelementptr inbounds i8** %314, i64 1
  %316 = load i8** %315, align 8, !tbaa !19
  %317 = icmp eq i8* %316, null
  br i1 %317, label %mk_desc.exit, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %309, %.backedge.i
  %indvars.iv.i7 = phi i64 [ %indvars.iv.next.i8, %.backedge.i ], [ 1, %309 ]
  %318 = call i8* @__strcat_chk(i8* %newdesc.1.i, i8* getelementptr inbounds ([5 x i8]* @.str87, i64 0, i64 0), i64 %310) #12
  %319 = load i8*** %313, align 8, !tbaa !19
  %320 = getelementptr inbounds i8** %319, i64 %indvars.iv.i7
  %321 = load i8** %320, align 8, !tbaa !19
  %322 = call i8* @__strcat_chk(i8* %newdesc.1.i, i8* %321, i64 %310) #12
  %323 = call i8* @__strcat_chk(i8* %newdesc.1.i, i8* getelementptr inbounds ([5 x i8]* @.str88, i64 0, i64 0), i64 %310) #12
  %indvars.iv.next.i8 = add nuw nsw i64 %indvars.iv.i7, 1
  %324 = load i8*** %313, align 8, !tbaa !19
  %325 = getelementptr inbounds i8** %324, i64 %indvars.iv.next.i8
  %326 = load i8** %325, align 8, !tbaa !19
  %327 = icmp eq i8* %326, null
  br i1 %327, label %.backedge.i, label %332

.backedge.i:                                      ; preds = %339, %337, %.lr.ph.i9
  %328 = load i8*** %313, align 8, !tbaa !19
  %329 = getelementptr inbounds i8** %328, i64 %indvars.iv.next.i8
  %330 = load i8** %329, align 8, !tbaa !19
  %331 = icmp eq i8* %330, null
  br i1 %331, label %mk_desc.exit, label %.lr.ph.i9

; <label>:332                                     ; preds = %.lr.ph.i9
  %333 = add nsw i64 %indvars.iv.i7, 2
  %334 = getelementptr inbounds i8** %324, i64 %333
  %335 = load i8** %334, align 8, !tbaa !19
  %336 = icmp eq i8* %335, null
  br i1 %336, label %337, label %339

; <label>:337                                     ; preds = %332
  %338 = call i8* @__strcat_chk(i8* %newdesc.1.i, i8* getelementptr inbounds ([5 x i8]* @.str89, i64 0, i64 0), i64 %310) #12
  br label %.backedge.i

; <label>:339                                     ; preds = %332
  %340 = call i8* @__strcat_chk(i8* %newdesc.1.i, i8* getelementptr inbounds ([3 x i8]* @.str90, i64 0, i64 0), i64 %310) #12
  br label %.backedge.i

mk_desc.exit:                                     ; preds = %.backedge.i, %.preheader.i, %thread-pre-split.i, %309
  %newdesc.114.i = phi i8* [ %newdesc.1.i, %thread-pre-split.i ], [ %newdesc.1.i, %309 ], [ %277, %.preheader.i ], [ %newdesc.1.i, %.backedge.i ]
  %341 = load %struct.t_pargs** %all_pa, align 8, !tbaa !19
  %342 = getelementptr inbounds %struct.t_pargs* %341, i64 %indvars.iv70, i32 4
  store i8* %newdesc.114.i, i8** %342, align 8, !tbaa !24
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  %lftr.wideiv72 = trunc i64 %indvars.iv70 to i32
  %exitcond73 = icmp eq i32 %lftr.wideiv72, %236
  br i1 %exitcond73, label %._crit_edge33, label %245

._crit_edge33:                                    ; preds = %mk_desc.exit, %.preheader12
  %343 = load i32* @parse_common_args.bHelp, align 4, !tbaa !2
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %349

; <label>:345                                     ; preds = %._crit_edge33
  %346 = load i8** getelementptr inbounds ([8 x i8*]* @parse_common_args.manstr, i64 0, i64 0), align 16, !tbaa !19
  %347 = call i32 @strcmp(i8* %346, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0)) #12
  %348 = icmp ne i32 %347, 0
  br label %349

; <label>:349                                     ; preds = %._crit_edge33, %345
  %350 = phi i1 [ true, %._crit_edge33 ], [ %348, %345 ]
  %351 = load i32* @parse_common_args.bGUI, align 4, !tbaa !2
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %363, label %353

; <label>:353                                     ; preds = %349
  %354 = load i64* @uFlags, align 8, !tbaa !20
  %355 = and i64 %354, 8192
  %356 = icmp eq i64 %355, 0
  br i1 %356, label %360, label %357

; <label>:357                                     ; preds = %353
  %358 = load i8** getelementptr inbounds ([6 x i8*]* @parse_common_args.nicestr, i64 0, i64 0), align 16, !tbaa !19
  %359 = call i32 (i8*, i8*, ...)* @sscanf(i8* %358, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i32* @parse_common_args.nicelevel) #12
  br label %363

; <label>:360                                     ; preds = %353
  %361 = load i8** getelementptr inbounds ([6 x i8*]* @parse_common_args.not_nicestr, i64 0, i64 0), align 16, !tbaa !19
  %362 = call i32 (i8*, i8*, ...)* @sscanf(i8* %361, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i32* @parse_common_args.nicelevel) #12
  br label %363

; <label>:363                                     ; preds = %349, %357, %360
  %364 = load i64* @uFlags, align 8, !tbaa !20
  %365 = and i64 %364, 4096
  %366 = icmp ne i64 %365, 0
  %367 = load i32* @parse_common_args.bQuiet, align 4
  %368 = icmp ne i32 %367, 0
  %or.cond3 = or i1 %366, %368
  br i1 %or.cond3, label %382, label %369

; <label>:369                                     ; preds = %363
  %370 = load i32* @parse_common_args.bHelp, align 4, !tbaa !2
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %377, label %372

; <label>:372                                     ; preds = %369
  %373 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !19
  %374 = load i8** @program, align 8, !tbaa !19
  %375 = load %struct.t_pargs** %all_pa, align 8, !tbaa !19
  %376 = load i32* @parse_common_args.bHidden, align 4, !tbaa !2
  call void @write_man(%struct.__sFILE* %373, i8* getelementptr inbounds ([5 x i8]* @.str64, i64 0, i64 0), i8* %374, i32 %ndesc, i8** %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npall.7.lcssa, %struct.t_pargs* %375, i32 %nbugs, i8** %bugs, i32 %376) #12
  br label %382

; <label>:377                                     ; preds = %369
  br i1 %78, label %378, label %382

; <label>:378                                     ; preds = %377
  %379 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !19
  call void @pr_fns(%struct.__sFILE* %379, i32 %nfile, %struct.t_filenm* %fnm) #12
  %380 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !19
  %381 = load %struct.t_pargs** %all_pa, align 8, !tbaa !19
  call void @print_pargs(%struct.__sFILE* %380, i32 %npall.7.lcssa, %struct.t_pargs* %381) #12
  br label %382

; <label>:382                                     ; preds = %372, %378, %377, %363
  %383 = load i8** getelementptr inbounds ([8 x i8*]* @parse_common_args.manstr, i64 0, i64 0), align 16, !tbaa !19
  %384 = call i32 @strcmp(i8* %383, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0)) #12
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %411, label %386

; <label>:386                                     ; preds = %382
  %387 = call i32 @strcmp(i8* %383, i8* getelementptr inbounds ([11 x i8]* @.str18, i64 0, i64 0)) #12
  %388 = icmp eq i32 %387, 0
  %389 = load i8** @program, align 8, !tbaa !19
  br i1 %388, label %390, label %405

; <label>:390                                     ; preds = %386
  %391 = call fastcc %struct.__sFILE* @man_file(i8* %389, i8* getelementptr inbounds ([15 x i8]* @.str65, i64 0, i64 0)) #13
  %392 = load i8** @program, align 8, !tbaa !19
  %393 = load %struct.t_pargs** %all_pa, align 8, !tbaa !19
  %394 = load i32* @parse_common_args.bHidden, align 4, !tbaa !2
  call void @write_man(%struct.__sFILE* %391, i8* getelementptr inbounds ([15 x i8]* @.str65, i64 0, i64 0), i8* %392, i32 %ndesc, i8** %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npall.7.lcssa, %struct.t_pargs* %393, i32 %nbugs, i8** %bugs, i32 %394) #12
  call void @ffclose(%struct.__sFILE* %391) #12
  %395 = load i8** @program, align 8, !tbaa !19
  %396 = call fastcc %struct.__sFILE* @man_file(i8* %395, i8* getelementptr inbounds ([16 x i8]* @.str66, i64 0, i64 0)) #13
  %397 = load i8** @program, align 8, !tbaa !19
  %398 = load %struct.t_pargs** %all_pa, align 8, !tbaa !19
  %399 = load i32* @parse_common_args.bHidden, align 4, !tbaa !2
  call void @write_man(%struct.__sFILE* %396, i8* getelementptr inbounds ([16 x i8]* @.str66, i64 0, i64 0), i8* %397, i32 %ndesc, i8** %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npall.7.lcssa, %struct.t_pargs* %398, i32 %nbugs, i8** %bugs, i32 %399) #12
  call void @ffclose(%struct.__sFILE* %396) #12
  %400 = load i8** @program, align 8, !tbaa !19
  %401 = call fastcc %struct.__sFILE* @man_file(i8* %400, i8* getelementptr inbounds ([15 x i8]* @.str67, i64 0, i64 0)) #13
  %402 = load i8** @program, align 8, !tbaa !19
  %403 = load %struct.t_pargs** %all_pa, align 8, !tbaa !19
  %404 = load i32* @parse_common_args.bHidden, align 4, !tbaa !2
  call void @write_man(%struct.__sFILE* %401, i8* getelementptr inbounds ([15 x i8]* @.str67, i64 0, i64 0), i8* %402, i32 %ndesc, i8** %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npall.7.lcssa, %struct.t_pargs* %403, i32 %nbugs, i8** %bugs, i32 %404) #12
  call void @ffclose(%struct.__sFILE* %401) #12
  br label %411

; <label>:405                                     ; preds = %386
  %406 = call fastcc %struct.__sFILE* @man_file(i8* %389, i8* %383) #13
  %407 = load i8** getelementptr inbounds ([8 x i8*]* @parse_common_args.manstr, i64 0, i64 0), align 16, !tbaa !19
  %408 = load i8** @program, align 8, !tbaa !19
  %409 = load %struct.t_pargs** %all_pa, align 8, !tbaa !19
  %410 = load i32* @parse_common_args.bHidden, align 4, !tbaa !2
  call void @write_man(%struct.__sFILE* %406, i8* %407, i8* %408, i32 %ndesc, i8** %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npall.7.lcssa, %struct.t_pargs* %409, i32 %nbugs, i8** %bugs, i32 %410) #12
  call void @ffclose(%struct.__sFILE* %406) #12
  br label %411

; <label>:411                                     ; preds = %382, %390, %405
  call fastcc void @init_time_factor() #13
  br i1 %174, label %.lr.ph30, label %._crit_edge27

.lr.ph30:                                         ; preds = %411
  %412 = load %struct.t_pargs** %all_pa, align 8, !tbaa !19
  %413 = add i32 %npall.7.lcssa, -1
  br label %415

.preheader11:                                     ; preds = %428
  br i1 %174, label %.lr.ph26, label %._crit_edge27

.lr.ph26:                                         ; preds = %.preheader11
  %414 = add i32 %npall.7.lcssa, -1
  br label %429

; <label>:415                                     ; preds = %428, %.lr.ph30
  %indvars.iv66 = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next67, %428 ]
  %416 = getelementptr inbounds %struct.t_pargs* %412, i64 %indvars.iv66, i32 2
  %417 = load i32* %416, align 4, !tbaa !22
  %418 = icmp eq i32 %417, 2
  br i1 %418, label %419, label %428

; <label>:419                                     ; preds = %415
  %420 = getelementptr inbounds %struct.t_pargs* %412, i64 %indvars.iv66, i32 3
  %421 = bitcast %union.anon.18* %420 to float**
  %422 = load float** %421, align 8, !tbaa !19
  %423 = load float* %422, align 4, !tbaa !15
  %424 = fcmp ult float %423, 0.000000e+00
  br i1 %424, label %428, label %425

; <label>:425                                     ; preds = %419
  %426 = load float* @timefactor, align 4, !tbaa !15
  %427 = fdiv float %423, %426
  store float %427, float* %422, align 4, !tbaa !15
  br label %428

; <label>:428                                     ; preds = %419, %415, %425
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %lftr.wideiv68 = trunc i64 %indvars.iv66 to i32
  %exitcond69 = icmp eq i32 %lftr.wideiv68, %413
  br i1 %exitcond69, label %.preheader11, label %415

; <label>:429                                     ; preds = %429, %.lr.ph26
  %indvars.iv64 = phi i64 [ 0, %.lr.ph26 ], [ %indvars.iv.next65, %429 ]
  %430 = load %struct.t_pargs** %all_pa, align 8, !tbaa !19
  %431 = getelementptr inbounds %struct.t_pargs* %430, i64 %indvars.iv64, i32 4
  %432 = load i8** %431, align 8, !tbaa !24
  call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str68, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str6, i64 0, i64 0), i32 745, i8* %432) #12
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %lftr.wideiv = trunc i64 %indvars.iv64 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %414
  br i1 %exitcond, label %._crit_edge27, label %429

._crit_edge27:                                    ; preds = %429, %411, %.preheader11
  %433 = load i8** %73, align 8, !tbaa !19
  call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str6, i64 0, i64 0), i32 746, i8* %433) #12
  %434 = load i64* @uFlags, align 8, !tbaa !20
  %435 = and i64 %434, 2048
  %436 = icmp eq i64 %435, 0
  br i1 %436, label %437, label %449

; <label>:437                                     ; preds = %._crit_edge27
  %438 = load i32* %argc, align 4, !tbaa !2
  %439 = icmp sgt i32 %438, 1
  br i1 %439, label %.lr.ph, label %449

.lr.ph:                                           ; preds = %437, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %437 ]
  %440 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !19
  %441 = getelementptr inbounds i8** %argv, i64 %indvars.iv
  %442 = load i8** %441, align 8, !tbaa !19
  %443 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %440, i8* getelementptr inbounds ([22 x i8]* @.str69, i64 0, i64 0), i8* %442) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %444 = load i32* %argc, align 4, !tbaa !2
  %445 = sext i32 %444 to i64
  %446 = icmp slt i64 %indvars.iv.next, %445
  br i1 %446, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph
  %447 = load i8** @program, align 8, !tbaa !19
  %448 = icmp eq i8* %447, null
  %..i10 = select i1 %448, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* %447
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([18 x i8]* @.str70, i64 0, i64 0), i8* %..i10) #12
  br label %449

; <label>:449                                     ; preds = %._crit_edge27, %437, %._crit_edge
  br i1 %350, label %450, label %451

; <label>:450                                     ; preds = %449
  call void @exit(i32 0) #16
  unreachable

; <label>:451                                     ; preds = %449
  call void @llvm.lifetime.end(i64 160, i8* %9) #10
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #10

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #10

; Function Attrs: optsize
declare i32 @gmx_node_id() #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #7

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @add_parg(i32 %npargs, %struct.t_pargs** nocapture %pa, %struct.t_pargs* %pa_add) #1 {
  %1 = bitcast %struct.t_pargs** %pa to i8**
  %2 = load i8** %1, align 8, !tbaa !19
  %3 = add nsw i32 %npargs, 1
  %4 = shl i32 %3, 5
  %5 = tail call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str80, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str6, i64 0, i64 0), i32 390, i8* %2, i32 %4) #12
  %6 = bitcast i8* %5 to %struct.t_pargs*
  store i8* %5, i8** %1, align 8, !tbaa !19
  %7 = sext i32 %npargs to i64
  %8 = getelementptr inbounds %struct.t_pargs* %6, i64 %7
  %9 = bitcast %struct.t_pargs* %8 to i8*
  %10 = bitcast %struct.t_pargs* %pa_add to i8*
  %11 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %9, i1 false)
  %12 = tail call i8* @__memcpy_chk(i8* %9, i8* %10, i64 32, i64 %11) #12
  ret i32 %3
}

; Function Attrs: optsize
declare void @get_pargs(i32*, i8**, i32, %struct.t_pargs*, i32) #2

; Function Attrs: optsize
declare void @set_default_file_name(i8*) #2

; Function Attrs: optsize
declare void @parse_file_args(i32*, i8**, i32, %struct.t_filenm*, i32) #2

; Function Attrs: optsize
declare i32 @gmx_node_num() #2

; Function Attrs: optsize
declare void @init_debug(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #10

; Function Attrs: nounwind optsize
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #8

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #6

; Function Attrs: optsize
declare void @write_man(%struct.__sFILE*, i8*, i8*, i32, i8**, i32, %struct.t_filenm*, i32, %struct.t_pargs*, i32, i8**, i32) #2

; Function Attrs: optsize
declare void @pr_fns(%struct.__sFILE*, i32, %struct.t_filenm*) #2

; Function Attrs: optsize
declare void @print_pargs(%struct.__sFILE*, i32, %struct.t_pargs*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc %struct.__sFILE* @man_file(i8* %program, i8* %mantp) #1 {
  %buf = alloca [256 x i8], align 16
  %1 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %1) #10
  %2 = tail call i8* @strrchr(i8* %program, i32 47) #12
  %3 = icmp eq i8* %2, null
  %4 = getelementptr inbounds i8* %2, i64 1
  %pr.0 = select i1 %3, i8* %program, i8* %4
  %5 = tail call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([6 x i8]* @.str17, i64 0, i64 0)) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

; <label>:7                                       ; preds = %0
  %8 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 256, i8* getelementptr inbounds ([6 x i8]* @.str91, i64 0, i64 0), i8* %pr.0, i8* %mantp) #12
  br label %11

; <label>:9                                       ; preds = %0
  %10 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 256, i8* getelementptr inbounds ([7 x i8]* @.str92, i64 0, i64 0), i8* %pr.0) #12
  br label %11

; <label>:11                                      ; preds = %9, %7
  %12 = call %struct.__sFILE* @ffopen(i8* %1, i8* getelementptr inbounds ([2 x i8]* @.str93, i64 0, i64 0)) #12
  call void @llvm.lifetime.end(i64 256, i8* %1) #10
  ret %struct.__sFILE* %12
}

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #2

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: noreturn optsize
declare void @exit(i32) #11

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @init_time_factor() #1 {
  %1 = load float* @timefactor, align 4, !tbaa !15
  %2 = fadd float %1, 1.234500e+04
  %fabsf = tail call float @fabsf(float %2) #9
  %3 = fpext float %fabsf to double
  %4 = fcmp olt double %3, 1.200000e-38
  br i1 %4, label %5, label %20

; <label>:5                                       ; preds = %0
  %6 = load i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 1), align 8, !tbaa !19
  %7 = icmp eq i8* %6, null
  br i1 %7, label %nenum.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %5
  %8 = load i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 0), align 16, !tbaa !19
  br label %9

; <label>:9                                       ; preds = %12, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %12 ]
  %10 = phi i8* [ %6, %.lr.ph.i ], [ %14, %12 ]
  %11 = icmp eq i8* %8, %10
  br i1 %11, label %nenum.exit, label %12

; <label>:12                                      ; preds = %9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %13 = getelementptr inbounds [10 x i8*]* @timestr, i64 0, i64 %indvars.iv.next.i
  %14 = load i8** %13, align 8, !tbaa !19
  %15 = icmp eq i8* %14, null
  br i1 %15, label %nenum.exit, label %9

nenum.exit:                                       ; preds = %12, %9, %5
  %i.0.lcssa.i = phi i64 [ 1, %5 ], [ %indvars.iv.i, %9 ], [ %indvars.iv.next.i, %12 ]
  %sext = shl i64 %i.0.lcssa.i, 32
  %16 = ashr exact i64 %sext, 32
  %17 = getelementptr inbounds [10 x float]* @timefactors, i64 0, i64 %16
  %18 = bitcast float* %17 to i32*
  %19 = load i32* %18, align 4, !tbaa !15
  store i32 %19, i32* bitcast (float* @timefactor to i32*), align 4, !tbaa !15
  br label %20

; <label>:20                                      ; preds = %nenum.exit, %0
  ret void
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #7

; Function Attrs: optsize
declare i32 @is_hidden(%struct.t_pargs*) #2

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #8

; Function Attrs: nounwind optsize
declare i8* @__strcat_chk(i8*, i8*, i64) #8

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #2

declare float @fabsf(float)

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { readnone }
attributes #15 = { nounwind optsize readnone }
attributes #16 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !3, i64 12}
!7 = !{!"__sFILE", !8, i64 0, !3, i64 8, !3, i64 12, !9, i64 16, !9, i64 18, !10, i64 24, !3, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !10, i64 88, !8, i64 104, !3, i64 112, !4, i64 116, !4, i64 119, !10, i64 120, !3, i64 136, !11, i64 144}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"short", !4, i64 0}
!10 = !{!"__sbuf", !8, i64 0, !3, i64 8}
!11 = !{!"long long", !4, i64 0}
!12 = !{!7, !3, i64 40}
!13 = !{!7, !8, i64 0}
!14 = !{!4, !4, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !4, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"double", !4, i64 0}
!19 = !{!8, !8, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !4, i64 0}
!22 = !{!23, !3, i64 12}
!23 = !{!"", !8, i64 0, !3, i64 8, !3, i64 12, !4, i64 16, !8, i64 24}
!24 = !{!23, !8, i64 24}

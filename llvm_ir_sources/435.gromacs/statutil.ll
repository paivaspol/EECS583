; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_pargs = type { i8*, i32, i32, %union.anon, i8* }
%union.anon = type { i8* }
%struct.t_topology = type { i8**, %struct.t_idef, %struct.t_atoms, [3 x %struct.t_block], %struct.t_symtab }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%union.t_iparams = type { %struct.anon.2 }
%struct.anon.2 = type { float, float, float, float, float, float }
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

@tbegin = global float -1.000000e+00, align 4
@tend = global float -1.000000e+00, align 4
@tdelta = global float -1.000000e+00, align 4
@timefactor = global float -1.234500e+04, align 4
@timelabel = global i8* null, align 8
@timefactors = global [10 x float] [float 0.000000e+00, float 1.000000e+03, float 1.000000e+00, float 0x3F50624DE0000000, float 0x3EB0C6F7A0000000, float 0x3E112E0BE0000000, float 0x3D71979980000000, float 0x3D12C3D700000000, float 0x3CB4041880000000, float 0.000000e+00], align 16
@program = internal unnamed_addr global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"GROMACS\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@debug = external global %struct._IO_FILE*
@.str2 = private unnamed_addr constant [38 x i8] c"t=%g, t0=%g, b=%g, e=%g, dt=%g: r=%d\0A\00", align 1
@timestr = internal global [10 x i8*] [i8* null, i8* getelementptr inbounds ([3 x i8]* @.str86, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str87, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str93, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str89, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str90, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str91, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str92, i32 0, i32 0), i8* null], align 16
@time_label.label = internal global [20 x i8] zeroinitializer, align 16
@.str3 = private unnamed_addr constant [10 x i8] c"Time (%s)\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"ps\00", align 1
@xvgr_tlabel.label = internal global [20 x i8] zeroinitializer, align 16
@xvgrtimestr = internal unnamed_addr global [10 x i8*] [i8* null, i8* getelementptr inbounds ([3 x i8]* @.str86, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str87, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str88, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str89, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str90, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str91, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str92, i32 0, i32 0), i8* null], align 16
@.str5 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str6 = private unnamed_addr constant [56 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str8 = private unnamed_addr constant [11 x i8] c"an integer\00", align 1
@.str9 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str10 = private unnamed_addr constant [7 x i8] c"a real\00", align 1
@stderr = external global %struct._IO_FILE*
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
@parse_common_args.motif_pa = private unnamed_addr constant %struct.t_pargs { i8* getelementptr inbounds ([3 x i8]* @.str27, i32 0, i32 0), i32 0, i32 4, %union.anon { i8* bitcast (i32* @parse_common_args.bGUI to i8*) }, i8* getelementptr inbounds ([48 x i8]* @.str28, i32 0, i32 0) }, align 8
@.str32 = private unnamed_addr constant [6 x i8] c"-nice\00", align 1
@.str33 = private unnamed_addr constant [18 x i8] c"Set the nicelevel\00", align 1
@parse_common_args.nice_paX = private unnamed_addr constant %struct.t_pargs { i8* getelementptr inbounds ([6 x i8]* @.str32, i32 0, i32 0), i32 0, i32 6, %union.anon { i8* bitcast ([6 x i8*]* @parse_common_args.not_nicestr to i8*) }, i8* getelementptr inbounds ([18 x i8]* @.str33, i32 0, i32 0) }, align 8
@parse_common_args.nice_pa = private unnamed_addr constant %struct.t_pargs { i8* getelementptr inbounds ([6 x i8]* @.str32, i32 0, i32 0), i32 0, i32 0, %union.anon { i8* bitcast (i32* @parse_common_args.nicelevel to i8*) }, i8* getelementptr inbounds ([18 x i8]* @.str33, i32 0, i32 0) }, align 8
@.str34 = private unnamed_addr constant [8 x i8] c"-deffnm\00", align 1
@.str35 = private unnamed_addr constant [46 x i8] c"Set the default filename for all file options\00", align 1
@parse_common_args.deffnm_pa = private unnamed_addr constant %struct.t_pargs { i8* getelementptr inbounds ([8 x i8]* @.str34, i32 0, i32 0), i32 0, i32 3, %union.anon { i8* bitcast (i8** @parse_common_args.deffnm to i8*) }, i8* getelementptr inbounds ([46 x i8]* @.str35, i32 0, i32 0) }, align 8
@.str36 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str37 = private unnamed_addr constant [41 x i8] c"First frame (%t) to read from trajectory\00", align 1
@parse_common_args.begin_pa = private unnamed_addr constant %struct.t_pargs { i8* getelementptr inbounds ([3 x i8]* @.str36, i32 0, i32 0), i32 0, i32 2, %union.anon { i8* bitcast (float* @tbegin to i8*) }, i8* getelementptr inbounds ([41 x i8]* @.str37, i32 0, i32 0) }, align 8
@.str38 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str39 = private unnamed_addr constant [40 x i8] c"Last frame (%t) to read from trajectory\00", align 1
@parse_common_args.end_pa = private unnamed_addr constant %struct.t_pargs { i8* getelementptr inbounds ([3 x i8]* @.str38, i32 0, i32 0), i32 0, i32 2, %union.anon { i8* bitcast (float* @tend to i8*) }, i8* getelementptr inbounds ([40 x i8]* @.str39, i32 0, i32 0) }, align 8
@.str40 = private unnamed_addr constant [4 x i8] c"-dt\00", align 1
@.str41 = private unnamed_addr constant [47 x i8] c"Only use frame when t MOD dt = first time (%t)\00", align 1
@parse_common_args.dt_pa = private unnamed_addr constant %struct.t_pargs { i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0), i32 0, i32 2, %union.anon { i8* bitcast (float* @tdelta to i8*) }, i8* getelementptr inbounds ([47 x i8]* @.str41, i32 0, i32 0) }, align 8
@.str42 = private unnamed_addr constant [3 x i8] c"-w\00", align 1
@.str43 = private unnamed_addr constant [40 x i8] c"View output xvg, xpm, eps and pdb files\00", align 1
@parse_common_args.view_pa = private unnamed_addr constant %struct.t_pargs { i8* getelementptr inbounds ([3 x i8]* @.str42, i32 0, i32 0), i32 0, i32 4, %union.anon { i8* bitcast (i32* @bView to i8*) }, i8* getelementptr inbounds ([40 x i8]* @.str43, i32 0, i32 0) }, align 8
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
@parse_common_args.pca_pa = private unnamed_addr constant [5 x %struct.t_pargs] [%struct.t_pargs { i8* getelementptr inbounds ([3 x i8]* @.str46, i32 0, i32 0), i32 0, i32 4, %union.anon { i8* bitcast (i32* @parse_common_args.bHelp to i8*) }, i8* getelementptr inbounds ([25 x i8]* @.str47, i32 0, i32 0) }, %struct.t_pargs { i8* getelementptr inbounds ([8 x i8]* @.str48, i32 0, i32 0), i32 0, i32 4, %union.anon { i8* bitcast (i32* @parse_common_args.bHidden to i8*) }, i8* getelementptr inbounds ([27 x i8]* @.str49, i32 0, i32 0) }, %struct.t_pargs { i8* getelementptr inbounds ([7 x i8]* @.str50, i32 0, i32 0), i32 0, i32 4, %union.anon { i8* bitcast (i32* @parse_common_args.bQuiet to i8*) }, i8* getelementptr inbounds ([29 x i8]* @.str51, i32 0, i32 0) }, %struct.t_pargs { i8* getelementptr inbounds ([5 x i8]* @.str52, i32 0, i32 0), i32 0, i32 6, %union.anon { i8* bitcast ([8 x i8*]* @parse_common_args.manstr to i8*) }, i8* getelementptr inbounds ([28 x i8]* @.str53, i32 0, i32 0) }, %struct.t_pargs { i8* getelementptr inbounds ([7 x i8]* @.str54, i32 0, i32 0), i32 0, i32 4, %union.anon { i8* bitcast (i32* @parse_common_args.bDebug to i8*) }, i8* getelementptr inbounds ([40 x i8]* @.str55, i32 0, i32 0) }], align 16
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
@.str71 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str72 = private unnamed_addr constant [7 x i8] c"%s.txt\00", align 1
@.str73 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str74 = private unnamed_addr constant [7 x i8] c"HIDDEN\00", align 1
@.str75 = private unnamed_addr constant [8 x i8] c"newdesc\00", align 1
@.str76 = private unnamed_addr constant [12 x i8] c"[hidden] %s\00", align 1
@.str77 = private unnamed_addr constant [3 x i8] c"%t\00", align 1
@.str78 = private unnamed_addr constant [6 x i8] c"ndesc\00", align 1
@.str79 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str80 = private unnamed_addr constant [5 x i8] c"[TT]\00", align 1
@.str81 = private unnamed_addr constant [5 x i8] c"[tt]\00", align 1
@.str82 = private unnamed_addr constant [5 x i8] c" or \00", align 1
@.str83 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str84 = private unnamed_addr constant [6 x i8] c"(*pa)\00", align 1
@.str85 = private unnamed_addr constant [36 x i8] c"Expected %s argument for option %s\0A\00", align 1
@.str86 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str87 = private unnamed_addr constant [3 x i8] c"ns\00", align 1
@.str88 = private unnamed_addr constant [7 x i8] c"\5C8m\5C4s\00", align 1
@.str89 = private unnamed_addr constant [3 x i8] c"ms\00", align 1
@.str90 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str91 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str92 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str93 = private unnamed_addr constant [3 x i8] c"us\00", align 1

; Function Attrs: nounwind optsize readonly uwtable
define i8* @ShortProgram() #0 {
entry:
  %0 = load i8** @program, align 8, !tbaa !0
  %tobool = icmp eq i8* %0, null
  br i1 %tobool, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @strrchr(i8* %0, i32 47) #9
  %cmp = icmp eq i8* %call, null
  %add.ptr = getelementptr inbounds i8* %call, i64 1
  %.add.ptr = select i1 %cmp, i8* %0, i8* %add.ptr
  ret i8* %.add.ptr

return:                                           ; preds = %entry
  ret i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize readonly
declare i8* @strrchr(i8*, i32) #1

; Function Attrs: nounwind optsize readonly uwtable
define i8* @Program() #0 {
entry:
  %0 = load i8** @program, align 8, !tbaa !0
  %tobool = icmp eq i8* %0, null
  %. = select i1 %tobool, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* %0
  ret i8* %.
}

; Function Attrs: nounwind optsize uwtable
define void @set_program_name(i8* %argvzero) #2 {
entry:
  %0 = load i8** @program, align 8, !tbaa !0
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* %argvzero) #9
  %cmp1 = icmp ugt i64 %call, 3
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %call2 = tail call i32 @strncmp(i8* %argvzero, i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i64 3) #9
  %tobool = icmp eq i32 %call2, 0
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %land.lhs.true
  %add.ptr = getelementptr inbounds i8* %argvzero, i64 3
  %call4 = tail call i8* @gmx_strdup(i8* %add.ptr) #10
  store i8* %call4, i8** @program, align 8, !tbaa !0
  br label %if.end6

if.else:                                          ; preds = %land.lhs.true, %if.then
  %call5 = tail call i8* @gmx_strdup(i8* %argvzero) #10
  store i8* %call5, i8** @program, align 8, !tbaa !0
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.else, %entry
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #1

; Function Attrs: optsize
declare i8* @gmx_strdup(i8*) #3

; Function Attrs: nounwind optsize readnone uwtable
define i32 @bRmod(double %a, double %b) #4 {
entry:
  %mul = fmul double %a, 0x3FF00000A10FAFA0
  %div = fdiv double %mul, %b
  %conv = fptosi double %div to i32
  %conv1 = sitofp i32 %conv to double
  %mul2 = fmul double %conv1, %b
  %sub = fsub double %a, %mul2
  %call = tail call double @fabs(double %sub) #11
  %call3 = tail call double @fabs(double %a) #11
  %mul4 = fmul double %call3, 6.000000e-07
  %not.cmp = fcmp ole double %call, %mul4
  %. = zext i1 %not.cmp to i32
  ret i32 %.
}

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #5

; Function Attrs: nounwind optsize uwtable
define i32 @check_times2(float %t, float %t0, float %tp, float %tpp) #2 {
entry:
  %sub = fsub float %t, %tp
  %cmp = fcmp ogt float %sub, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %sub1 = fsub float %tp, %tpp
  %cmp2 = fcmp ogt float %sub1, 0.000000e+00
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %cmp5 = fcmp olt float %sub, %sub1
  %sub.sub1 = select i1 %cmp5, float %sub, float %sub1
  %conv = fpext float %sub.sub1 to double
  %mul = fmul double %conv, 1.000000e-01
  %conv8 = fptrunc double %mul to float
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %margin.0 = phi float [ %conv8, %if.then ], [ 0.000000e+00, %land.lhs.true ], [ 0.000000e+00, %entry ]
  %0 = load float* @tbegin, align 4, !tbaa !3
  %cmp10 = fcmp ult float %0, 0.000000e+00
  %cmp13 = fcmp ugt float %0, %t
  %or.cond = or i1 %cmp10, %cmp13
  br i1 %or.cond, label %lor.lhs.false, label %land.lhs.true19

lor.lhs.false:                                    ; preds = %if.end
  %conv15 = fpext float %0 to double
  %sub16 = fadd double %conv15, 1.000000e+00
  %call = tail call double @fabs(double %sub16) #11
  %cmp17 = fcmp olt double %call, 1.200000e-38
  br i1 %cmp17, label %land.lhs.true19, label %lor.lhs.false.if.else43_crit_edge

lor.lhs.false.if.else43_crit_edge:                ; preds = %lor.lhs.false
  %.pre = load float* @tend, align 4, !tbaa !3
  br label %if.else43

land.lhs.true19:                                  ; preds = %if.end, %lor.lhs.false
  %1 = load float* @tend, align 4, !tbaa !3
  %cmp21 = fcmp ult float %1, 0.000000e+00
  br i1 %cmp21, label %lor.lhs.false26, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %land.lhs.true19
  %add = fadd float %margin.0, %1
  %cmp24 = fcmp ult float %add, %t
  br i1 %cmp24, label %lor.lhs.false26, label %if.then32

lor.lhs.false26:                                  ; preds = %land.lhs.true23, %land.lhs.true19
  %conv27 = fpext float %1 to double
  %sub28 = fadd double %conv27, 1.000000e+00
  %call29 = tail call double @fabs(double %sub28) #11
  %cmp30 = fcmp olt double %call29, 1.200000e-38
  br i1 %cmp30, label %if.then32, label %if.else43

if.then32:                                        ; preds = %land.lhs.true23, %lor.lhs.false26
  %2 = load float* @tdelta, align 4, !tbaa !3
  %cmp33 = fcmp ogt float %2, 0.000000e+00
  br i1 %cmp33, label %land.lhs.true35, label %if.else41

land.lhs.true35:                                  ; preds = %if.then32
  %sub36 = fsub float %t, %t0
  %conv37 = fpext float %sub36 to double
  %conv38 = fpext float %2 to double
  %mul.i = fmul double %conv37, 0x3FF00000A10FAFA0
  %div.i = fdiv double %mul.i, %conv38
  %conv.i = fptosi double %div.i to i32
  %conv1.i = sitofp i32 %conv.i to double
  %mul2.i = fmul double %conv38, %conv1.i
  %sub.i = fsub double %conv37, %mul2.i
  %call.i = tail call double @fabs(double %sub.i) #11
  %fabsf = tail call float @fabsf(float %sub36) #5
  %3 = fpext float %fabsf to double
  %mul4.i = fmul double %3, 6.000000e-07
  %not.cmp.i = fcmp ugt double %call.i, %mul4.i
  br i1 %not.cmp.i, label %if.end54, label %if.else41

if.else41:                                        ; preds = %land.lhs.true35, %if.then32
  br label %if.end54

if.else43:                                        ; preds = %lor.lhs.false.if.else43_crit_edge, %lor.lhs.false26
  %4 = phi float [ %.pre, %lor.lhs.false.if.else43_crit_edge ], [ %1, %lor.lhs.false26 ]
  %conv44 = fpext float %4 to double
  %sub45 = fadd double %conv44, 1.000000e+00
  %call46 = tail call double @fabs(double %sub45) #11
  %cmp47 = fcmp ule double %call46, 1.200000e-38
  %cmp50 = fcmp ugt float %4, %t
  %or.cond80 = or i1 %cmp47, %cmp50
  %. = select i1 %or.cond80, i32 -1, i32 1
  br label %if.end54

if.end54:                                         ; preds = %land.lhs.true35, %if.else43, %if.else41
  %5 = phi float [ %1, %if.else41 ], [ %1, %land.lhs.true35 ], [ %4, %if.else43 ]
  %r.0 = phi i32 [ 0, %if.else41 ], [ -1, %land.lhs.true35 ], [ %., %if.else43 ]
  %6 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %tobool55 = icmp eq %struct._IO_FILE* %6, null
  br i1 %tobool55, label %if.end63, label %if.then56

if.then56:                                        ; preds = %if.end54
  %conv57 = fpext float %t to double
  %conv58 = fpext float %t0 to double
  %conv59 = fpext float %0 to double
  %conv60 = fpext float %5 to double
  %7 = load float* @tdelta, align 4, !tbaa !3
  %conv61 = fpext float %7 to double
  %call62 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([38 x i8]* @.str2, i64 0, i64 0), double %conv57, double %conv58, double %conv59, double %conv60, double %conv61, i32 %r.0) #10
  br label %if.end63

if.end63:                                         ; preds = %if.end54, %if.then56
  ret i32 %r.0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #6

; Function Attrs: nounwind optsize uwtable
define i32 @check_times(float %t) #2 {
entry:
  %call = tail call i32 @check_times2(float %t, float %t, float %t, float %t) #12
  ret i32 %call
}

; Function Attrs: nounwind optsize readonly uwtable
define i8* @time_unit() #0 {
entry:
  %0 = load i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 0), align 16, !tbaa !0
  ret i8* %0
}

; Function Attrs: nounwind optsize uwtable
define i8* @time_label() #2 {
entry:
  %0 = load i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 0), align 16, !tbaa !0
  %tobool = icmp ne i8* %0, null
  %cond = select i1 %tobool, i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0)
  %call = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([20 x i8]* @time_label.label, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i8* %cond) #10
  ret i8* getelementptr inbounds ([20 x i8]* @time_label.label, i64 0, i64 0)
}

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #6

; Function Attrs: nounwind optsize uwtable
define i8* @xvgr_tlabel() #2 {
entry:
  %0 = load i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 1), align 8, !tbaa !0
  %tobool9.i = icmp eq i8* %0, null
  br i1 %tobool9.i, label %nenum.exit15, label %land.rhs.lr.ph.i

land.rhs.lr.ph.i:                                 ; preds = %entry
  %1 = load i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 0), align 16, !tbaa !0
  br label %land.rhs.i

while.cond.i:                                     ; preds = %land.rhs.i
  %arrayidx.i = getelementptr inbounds [10 x i8*]* @timestr, i64 0, i64 %indvars.iv.next.i
  %2 = load i8** %arrayidx.i, align 8, !tbaa !0
  %tobool.i = icmp eq i8* %2, null
  br i1 %tobool.i, label %nenum.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %while.cond.i, %land.rhs.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %land.rhs.lr.ph.i ], [ %indvars.iv.next.i, %while.cond.i ]
  %3 = phi i8* [ %0, %land.rhs.lr.ph.i ], [ %2, %while.cond.i ]
  %i.010.i = phi i32 [ 1, %land.rhs.lr.ph.i ], [ %inc.i, %while.cond.i ]
  %cmp.i = icmp eq i8* %1, %3
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %inc.i = add nsw i32 %i.010.i, 1
  br i1 %cmp.i, label %nenum.exit, label %while.cond.i

nenum.exit:                                       ; preds = %while.cond.i, %land.rhs.i
  %i.0.lcssa.i = phi i32 [ %i.010.i, %land.rhs.i ], [ %inc.i, %while.cond.i ]
  %tobool = icmp eq i32 %i.0.lcssa.i, 0
  br i1 %tobool, label %cond.end, label %land.rhs.i13

while.cond.i7:                                    ; preds = %land.rhs.i13
  %arrayidx.i5 = getelementptr inbounds [10 x i8*]* @timestr, i64 0, i64 %indvars.iv.next.i11
  %4 = load i8** %arrayidx.i5, align 8, !tbaa !0
  %tobool.i6 = icmp eq i8* %4, null
  br i1 %tobool.i6, label %nenum.exit15, label %land.rhs.i13

land.rhs.i13:                                     ; preds = %nenum.exit, %while.cond.i7
  %indvars.iv.i8 = phi i64 [ %indvars.iv.next.i11, %while.cond.i7 ], [ 1, %nenum.exit ]
  %5 = phi i8* [ %4, %while.cond.i7 ], [ %0, %nenum.exit ]
  %i.010.i9 = phi i32 [ %inc.i12, %while.cond.i7 ], [ 1, %nenum.exit ]
  %cmp.i10 = icmp eq i8* %1, %5
  %indvars.iv.next.i11 = add i64 %indvars.iv.i8, 1
  %inc.i12 = add nsw i32 %i.010.i9, 1
  br i1 %cmp.i10, label %nenum.exit15, label %while.cond.i7

nenum.exit15:                                     ; preds = %while.cond.i7, %land.rhs.i13, %entry
  %i.0.lcssa.i14 = phi i32 [ 1, %entry ], [ %inc.i12, %while.cond.i7 ], [ %i.010.i9, %land.rhs.i13 ]
  %idxprom = sext i32 %i.0.lcssa.i14 to i64
  %arrayidx = getelementptr inbounds [10 x i8*]* @xvgrtimestr, i64 0, i64 %idxprom
  %6 = load i8** %arrayidx, align 8, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %nenum.exit, %nenum.exit15
  %cond = phi i8* [ %6, %nenum.exit15 ], [ getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), %nenum.exit ]
  %call2 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([20 x i8]* @xvgr_tlabel.label, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i8* %cond) #10
  ret i8* getelementptr inbounds ([20 x i8]* @xvgr_tlabel.label, i64 0, i64 0)
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @nenum(i8** nocapture %enumc) #0 {
entry:
  %arrayidx8 = getelementptr inbounds i8** %enumc, i64 1
  %0 = load i8** %arrayidx8, align 8, !tbaa !0
  %tobool9 = icmp eq i8* %0, null
  br i1 %tobool9, label %while.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %1 = load i8** %enumc, align 8, !tbaa !0
  br label %land.rhs

while.cond:                                       ; preds = %land.rhs
  %arrayidx = getelementptr inbounds i8** %enumc, i64 %indvars.iv.next
  %2 = load i8** %arrayidx, align 8, !tbaa !0
  %tobool = icmp eq i8* %2, null
  br i1 %tobool, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.cond
  %indvars.iv = phi i64 [ 1, %land.rhs.lr.ph ], [ %indvars.iv.next, %while.cond ]
  %3 = phi i8* [ %0, %land.rhs.lr.ph ], [ %2, %while.cond ]
  %i.010 = phi i32 [ 1, %land.rhs.lr.ph ], [ %inc, %while.cond ]
  %cmp = icmp eq i8* %1, %3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %i.010, 1
  br i1 %cmp, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond, %land.rhs, %entry
  %i.0.lcssa = phi i32 [ 1, %entry ], [ %i.010, %land.rhs ], [ %inc, %while.cond ]
  ret i32 %i.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define float @time_factor() #2 {
entry:
  tail call fastcc void @init_time_factor() #12
  %0 = load float* @timefactor, align 4, !tbaa !3
  ret float %0
}

; Function Attrs: nounwind optsize uwtable
define float @convert_time(float %time) #2 {
entry:
  tail call fastcc void @init_time_factor() #12
  %0 = load float* @timefactor, align 4, !tbaa !3
  %mul = fmul float %0, %time
  ret float %mul
}

; Function Attrs: nounwind optsize uwtable
define void @convert_times(i32 %n, float* nocapture %time) #2 {
entry:
  tail call fastcc void @init_time_factor() #12
  %0 = load float* @timefactor, align 4, !tbaa !3
  %sub = fadd float %0, -1.000000e+00
  %fabsf = tail call float @fabsf(float %sub) #5
  %1 = fpext float %fabsf to double
  %cmp = fcmp ogt double %1, 1.200000e-38
  %cmp26 = icmp sgt i32 %n, 0
  %or.cond = and i1 %cmp, %cmp26
  br i1 %or.cond, label %for.body, label %if.end

for.body:                                         ; preds = %entry, %for.body.for.body_crit_edge
  %2 = phi float [ %.pre, %for.body.for.body_crit_edge ], [ %0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %time, i64 %indvars.iv
  %3 = load float* %arrayidx, align 4, !tbaa !3
  %mul = fmul float %2, %3
  store float %mul, float* %arrayidx, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %if.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load float* @timefactor, align 4, !tbaa !3
  br label %for.body

if.end:                                           ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @default_time() #2 {
entry:
  %0 = load i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 1), align 8, !tbaa !0
  store i8* %0, i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 0), align 16, !tbaa !0
  %1 = load float* getelementptr inbounds ([10 x float]* @timefactors, i64 0, i64 1), align 4, !tbaa !3
  store float %1, float* @timefactor, align 4, !tbaa !3
  %2 = load i8** getelementptr inbounds ([10 x i8*]* @xvgrtimestr, i64 0, i64 1), align 8, !tbaa !0
  store i8* %2, i8** getelementptr inbounds ([10 x i8*]* @xvgrtimestr, i64 0, i64 0), align 16, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define %struct.t_topology* @read_top(i8* %fn) #2 {
entry:
  %step = alloca i32, align 4
  %natoms = alloca i32, align 4
  %t = alloca float, align 4
  %lambda = alloca float, align 4
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 264, i32 1, i32 50264) #10
  %0 = bitcast i8* %call to %struct.t_topology*
  call void @read_tpx(i8* %fn, i32* %step, float* %t, float* %lambda, %struct.t_inputrec* null, [3 x float]* null, i32* %natoms, [3 x float]* null, [3 x float]* null, [3 x float]* null, %struct.t_topology* %0) #10
  ret %struct.t_topology* %0
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: optsize
declare void @read_tpx(i8*, i32*, float*, float*, %struct.t_inputrec*, [3 x float]*, i32*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_topology*) #3

; Function Attrs: nounwind optsize uwtable
define void @mk_single_top(%struct.t_topology* nocapture %top) #2 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv35 = phi i64 [ 0, %entry ], [ %indvars.iv.next36, %for.body ]
  %arrayidx1 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv35, i32 0, i64 255
  %0 = load i32* %arrayidx1, align 4, !tbaa !4
  %arrayidx6 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv35, i32 0, i64 0
  store i32 %0, i32* %arrayidx6, align 4, !tbaa !4
  %indvars.iv.next36 = add i64 %indvars.iv35, 1
  %lftr.wideiv37 = trunc i64 %indvars.iv.next36 to i32
  %exitcond38 = icmp eq i32 %lftr.wideiv37, 3
  br i1 %exitcond38, label %for.body9, label %for.body

for.body9:                                        ; preds = %for.body, %for.body9
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body9 ], [ 0, %for.body ]
  %arrayidx13 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv, i32 1, i64 255
  %1 = load i32* %arrayidx13, align 4, !tbaa !4
  %arrayidx19 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv, i32 1, i64 0
  store i32 %1, i32* %arrayidx19, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 44
  br i1 %exitcond, label %for.end22, label %for.body9

for.end22:                                        ; preds = %for.body9
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @iscan(i32 %argc, i8** nocapture %argv, i32* nocapture %i) #2 {
entry:
  %var = alloca i32, align 4
  %0 = load i32* %i, align 4, !tbaa !4
  %add = add nsw i32 %0, 1
  %cmp = icmp slt i32 %add, %argc
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 %add, i32* %i, align 4, !tbaa !4
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8** %argv, i64 %idxprom
  %1 = load i8** %arrayidx, align 8, !tbaa !0
  %call = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i32* %var) #10
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.then1, label %if.end6

if.then1:                                         ; preds = %if.then
  %2 = load i32* %i, align 4, !tbaa !4
  %sub = add nsw i32 %2, -1
  %idxprom2 = sext i32 %sub to i64
  %arrayidx3 = getelementptr inbounds i8** %argv, i64 %idxprom2
  %3 = load i8** %arrayidx3, align 8, !tbaa !0
  %cmp.i = icmp eq i8* %3, null
  br i1 %cmp.i, label %if.end6, label %if.then.i

if.then.i:                                        ; preds = %if.then1
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([36 x i8]* @.str85, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str8, i64 0, i64 0), i8* %3) #10
  br label %if.end6

if.else:                                          ; preds = %entry
  %idxprom4 = sext i32 %0 to i64
  %arrayidx5 = getelementptr inbounds i8** %argv, i64 %idxprom4
  %4 = load i8** %arrayidx5, align 8, !tbaa !0
  %cmp.i11 = icmp eq i8* %4, null
  br i1 %cmp.i11, label %if.end6, label %if.then.i12

if.then.i12:                                      ; preds = %if.else
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([36 x i8]* @.str85, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str8, i64 0, i64 0), i8* %4) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then1, %if.then, %if.then.i12, %if.else, %if.then.i
  %5 = load i32* %var, align 4, !tbaa !4
  ret i32 %5
}

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #6

; Function Attrs: nounwind optsize uwtable
define double @dscan(i32 %argc, i8** nocapture %argv, i32* nocapture %i) #2 {
entry:
  %var = alloca double, align 8
  %0 = load i32* %i, align 4, !tbaa !4
  %add = add nsw i32 %0, 1
  %cmp = icmp slt i32 %add, %argc
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 %add, i32* %i, align 4, !tbaa !4
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8** %argv, i64 %idxprom
  %1 = load i8** %arrayidx, align 8, !tbaa !0
  %call = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str9, i64 0, i64 0), double* %var) #10
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.then1, label %if.end6

if.then1:                                         ; preds = %if.then
  %2 = load i32* %i, align 4, !tbaa !4
  %sub = add nsw i32 %2, -1
  %idxprom2 = sext i32 %sub to i64
  %arrayidx3 = getelementptr inbounds i8** %argv, i64 %idxprom2
  %3 = load i8** %arrayidx3, align 8, !tbaa !0
  %cmp.i = icmp eq i8* %3, null
  br i1 %cmp.i, label %if.end6, label %if.then.i

if.then.i:                                        ; preds = %if.then1
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([36 x i8]* @.str85, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0), i8* %3) #10
  br label %if.end6

if.else:                                          ; preds = %entry
  %idxprom4 = sext i32 %0 to i64
  %arrayidx5 = getelementptr inbounds i8** %argv, i64 %idxprom4
  %4 = load i8** %arrayidx5, align 8, !tbaa !0
  %cmp.i11 = icmp eq i8* %4, null
  br i1 %cmp.i11, label %if.end6, label %if.then.i12

if.then.i12:                                      ; preds = %if.else
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([36 x i8]* @.str85, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0), i8* %4) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then1, %if.then, %if.then.i12, %if.else, %if.then.i
  %5 = load double* %var, align 8, !tbaa !5
  ret double %5
}

; Function Attrs: nounwind optsize uwtable
define i8* @sscan(i32 %argc, i8** nocapture %argv, i32* nocapture %i) #2 {
entry:
  %0 = load i32* %i, align 4, !tbaa !4
  %add = add nsw i32 %0, 1
  %cmp = icmp slt i32 %add, %argc
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8** %argv, i64 %idxprom
  %1 = load i8** %arrayidx, align 8, !tbaa !0
  %2 = load i8* %1, align 1, !tbaa !1
  %cmp3 = icmp eq i8 %2, 45
  br i1 %cmp3, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %if.then
  %add5 = add nsw i32 %0, 2
  %cmp6 = icmp slt i32 %add5, %argc
  br i1 %cmp6, label %land.lhs.true8, label %if.end21

land.lhs.true8:                                   ; preds = %land.lhs.true
  %idxprom10 = sext i32 %add5 to i64
  %arrayidx11 = getelementptr inbounds i8** %argv, i64 %idxprom10
  %3 = load i8** %arrayidx11, align 8, !tbaa !0
  %4 = load i8* %3, align 1, !tbaa !1
  %cmp14 = icmp eq i8 %4, 45
  br i1 %cmp14, label %if.end21, label %if.then16

if.then16:                                        ; preds = %land.lhs.true8
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %idxprom17 = sext i32 %0 to i64
  %arrayidx18 = getelementptr inbounds i8** %argv, i64 %idxprom17
  %6 = load i8** %arrayidx18, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([49 x i8]* @.str11, i64 0, i64 0), i8* %6) #10
  br label %if.end21

if.else:                                          ; preds = %entry
  %idxprom19 = sext i32 %0 to i64
  %arrayidx20 = getelementptr inbounds i8** %argv, i64 %idxprom19
  %7 = load i8** %arrayidx20, align 8, !tbaa !0
  %cmp.i = icmp eq i8* %7, null
  br i1 %cmp.i, label %if.end21, label %if.then.i

if.then.i:                                        ; preds = %if.else
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([36 x i8]* @.str85, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* %7) #10
  br label %if.end21

if.end21:                                         ; preds = %if.then.i, %if.else, %land.lhs.true8, %if.then, %land.lhs.true, %if.then16
  %8 = load i32* %i, align 4, !tbaa !4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !4
  %idxprom22 = sext i32 %inc to i64
  %arrayidx23 = getelementptr inbounds i8** %argv, i64 %idxprom22
  %9 = load i8** %arrayidx23, align 8, !tbaa !0
  ret i8* %9
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @bDoView() #0 {
entry:
  %0 = load i32* @bView, align 4, !tbaa !4
  ret i32 %0
}

; Function Attrs: nounwind optsize uwtable
define void @parse_common_args(i32* %argc, i8** %argv, i64 %Flags, i32 %nfile, %struct.t_filenm* %fnm, i32 %npargs, %struct.t_pargs* nocapture %pa, i32 %ndesc, i8** %desc, i32 %nbugs, i8** %bugs) #2 {
entry:
  %buf = alloca [256 x i8], align 16
  %0 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %tobool = icmp eq %struct._IO_FILE* %0, null
  br i1 %tobool, label %entry.for.cond4.preheader_crit_edge, label %if.then

entry.for.cond4.preheader_crit_edge:              ; preds = %entry
  %.pre608 = load i32* %argc, align 4, !tbaa !4
  br label %for.cond4.preheader

if.then:                                          ; preds = %entry
  %call = call i32 @gmx_node_id() #10
  %1 = load i32* %argc, align 4, !tbaa !4
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([19 x i8]* @.str56, i64 0, i64 0), i32 %call, i32 %1) #10
  %2 = load i32* %argc, align 4, !tbaa !4
  %cmp561 = icmp sgt i32 %2, 0
  br i1 %cmp561, label %for.body, label %for.end67

for.cond4.preheader:                              ; preds = %for.body, %entry.for.cond4.preheader_crit_edge
  %3 = phi i32 [ %.pre608, %entry.for.cond4.preheader_crit_edge ], [ %7, %for.body ]
  %cmp5559 = icmp sgt i32 %3, 1
  br i1 %cmp5559, label %for.body6, label %for.end67

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv603 = phi i64 [ %indvars.iv.next604, %for.body ], [ 0, %if.then ]
  %4 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %call2 = call i32 @gmx_node_id() #10
  %arrayidx = getelementptr inbounds i8** %argv, i64 %indvars.iv603
  %5 = load i8** %arrayidx, align 8, !tbaa !0
  %6 = trunc i64 %indvars.iv603 to i32
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([23 x i8]* @.str57, i64 0, i64 0), i32 %call2, i32 %6, i8* %5) #10
  %indvars.iv.next604 = add i64 %indvars.iv603, 1
  %7 = load i32* %argc, align 4, !tbaa !4
  %8 = trunc i64 %indvars.iv.next604 to i32
  %cmp = icmp slt i32 %8, %7
  br i1 %cmp, label %for.body, label %for.cond4.preheader

for.body6:                                        ; preds = %for.cond4.preheader, %for.inc65
  %9 = phi i32 [ %23, %for.inc65 ], [ %3, %for.cond4.preheader ]
  %indvars.iv600 = phi i64 [ %indvars.iv.next601, %for.inc65 ], [ 1, %for.cond4.preheader ]
  %indvars.iv595 = phi i64 [ %indvars.iv.next596, %for.inc65 ], [ 2, %for.cond4.preheader ]
  %i.1560 = phi i32 [ %inc66, %for.inc65 ], [ 1, %for.cond4.preheader ]
  %arrayidx8 = getelementptr inbounds i8** %argv, i64 %indvars.iv600
  %10 = load i8** %arrayidx8, align 8, !tbaa !0
  %tobool9 = icmp eq i8* %10, null
  br i1 %tobool9, label %for.inc65, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body6
  %call12 = call i64 @strlen(i8* %10) #9
  %cmp13 = icmp ugt i64 %call12, 1
  br i1 %cmp13, label %land.lhs.true14, label %for.inc65

land.lhs.true14:                                  ; preds = %land.lhs.true
  %arrayidx17 = getelementptr inbounds i8* %10, i64 1
  %11 = load i8* %arrayidx17, align 1, !tbaa !1
  %idxprom18 = sext i8 %11 to i64
  %call19 = call i16** @__ctype_b_loc() #11
  %12 = load i16** %call19, align 8, !tbaa !0
  %arrayidx20 = getelementptr inbounds i16* %12, i64 %idxprom18
  %13 = load i16* %arrayidx20, align 2, !tbaa !6
  %and = and i16 %13, 2048
  %tobool22 = icmp eq i16 %and, 0
  br i1 %tobool22, label %for.cond24.preheader, label %for.inc65

for.cond24.preheader:                             ; preds = %land.lhs.true14
  %14 = add nsw i64 %indvars.iv600, 1
  %15 = trunc i64 %14 to i32
  %cmp25557 = icmp slt i32 %15, %9
  br i1 %cmp25557, label %for.body27.lr.ph, label %for.inc65

for.body27.lr.ph:                                 ; preds = %for.cond24.preheader
  %j.0556 = add nsw i32 %i.1560, 1
  br label %for.body27

for.body27:                                       ; preds = %for.cond24.backedge.for.body27_crit_edge, %for.body27.lr.ph
  %16 = phi i8* [ %10, %for.body27.lr.ph ], [ %.pre609, %for.cond24.backedge.for.body27_crit_edge ]
  %indvars.iv597 = phi i64 [ %indvars.iv595, %for.body27.lr.ph ], [ %indvars.iv.next598, %for.cond24.backedge.for.body27_crit_edge ]
  %j.0558 = phi i32 [ %j.0556, %for.body27.lr.ph ], [ %j.0, %for.cond24.backedge.for.body27_crit_edge ]
  %17 = load i8* %16, align 1, !tbaa !1
  %cmp32 = icmp eq i8 %17, 45
  br i1 %cmp32, label %land.lhs.true34, label %for.cond24.backedge

for.cond24.backedge:                              ; preds = %for.body27, %land.lhs.true34, %land.lhs.true41, %if.else, %if.then53
  %j.0 = add nsw i32 %j.0558, 1
  %18 = load i32* %argc, align 4, !tbaa !4
  %cmp25 = icmp slt i32 %j.0, %18
  br i1 %cmp25, label %for.cond24.backedge.for.body27_crit_edge, label %for.inc65

for.cond24.backedge.for.body27_crit_edge:         ; preds = %for.cond24.backedge
  %indvars.iv.next598 = add i64 %indvars.iv597, 1
  %.pre609 = load i8** %arrayidx8, align 8, !tbaa !0
  br label %for.body27

land.lhs.true34:                                  ; preds = %for.body27
  %arrayidx36 = getelementptr inbounds i8** %argv, i64 %indvars.iv597
  %19 = load i8** %arrayidx36, align 8, !tbaa !0
  %20 = load i8* %19, align 1, !tbaa !1
  %cmp39 = icmp eq i8 %20, 45
  br i1 %cmp39, label %land.lhs.true41, label %for.cond24.backedge

land.lhs.true41:                                  ; preds = %land.lhs.true34
  %call46 = call i32 @strcmp(i8* %16, i8* %19) #9
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then49, label %for.cond24.backedge

if.then49:                                        ; preds = %land.lhs.true41
  %21 = load i64* @uFlags, align 8, !tbaa !7
  %and50 = and i64 %21, 2048
  %cmp51 = icmp eq i64 %and50, 0
  br i1 %cmp51, label %if.else, label %if.then53

if.then53:                                        ; preds = %if.then49
  %22 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([33 x i8]* @.str58, i64 0, i64 0), i8* %16) #10
  br label %for.cond24.backedge

if.else:                                          ; preds = %if.then49
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([33 x i8]* @.str58, i64 0, i64 0), i8* %16) #10
  br label %for.cond24.backedge

for.inc65:                                        ; preds = %for.cond24.preheader, %for.cond24.backedge, %land.lhs.true14, %for.body6, %land.lhs.true
  %23 = phi i32 [ %9, %land.lhs.true14 ], [ %9, %for.body6 ], [ %9, %land.lhs.true ], [ %9, %for.cond24.preheader ], [ %18, %for.cond24.backedge ]
  %indvars.iv.next601 = add i64 %indvars.iv600, 1
  %inc66 = add nsw i32 %i.1560, 1
  %24 = trunc i64 %indvars.iv.next601 to i32
  %cmp5 = icmp slt i32 %24, %23
  %indvars.iv.next596 = add i64 %indvars.iv595, 1
  br i1 %cmp5, label %for.body6, label %for.end67

for.end67:                                        ; preds = %if.then, %for.inc65, %for.cond4.preheader
  store i64 %Flags, i64* @uFlags, align 8, !tbaa !7
  %and68 = and i64 %Flags, 512
  store i32 0, i32* @parse_common_args.bGUI, align 4, !tbaa !4
  %25 = load i8** %argv, align 8, !tbaa !0
  call void @set_program_name(i8* %25) #12
  %add73 = add i32 %npargs, 5
  %call75 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 563, i32 %add73, i32 32) #10
  %26 = bitcast i8* %call75 to %struct.t_pargs*
  br label %for.body80

for.body80:                                       ; preds = %for.body80, %for.end67
  %indvars.iv590 = phi i64 [ 0, %for.end67 ], [ %indvars.iv.next591, %for.body80 ]
  %27 = phi %struct.t_pargs* [ %26, %for.end67 ], [ %31, %for.body80 ]
  %arrayidx82 = getelementptr inbounds [5 x %struct.t_pargs]* @parse_common_args.pca_pa, i64 0, i64 %indvars.iv590
  %28 = bitcast %struct.t_pargs* %27 to i8*
  %indvars.iv.next591 = add i64 %indvars.iv590, 1
  %29 = shl i64 %indvars.iv.next591, 5
  %30 = trunc i64 %29 to i32
  %call.i = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str84, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 390, i8* %28, i32 %30) #10
  %31 = bitcast i8* %call.i to %struct.t_pargs*
  %arrayidx.i = getelementptr inbounds %struct.t_pargs* %31, i64 %indvars.iv590
  %32 = bitcast %struct.t_pargs* %arrayidx.i to i8*
  %33 = bitcast %struct.t_pargs* %arrayidx82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 32, i32 8, i1 false) #7
  %lftr.wideiv593 = trunc i64 %indvars.iv.next591 to i32
  %exitcond594 = icmp eq i32 %lftr.wideiv593, 5
  br i1 %exitcond594, label %for.end86, label %for.body80

for.end86:                                        ; preds = %for.body80
  %lnot = icmp eq i64 %and68, 0
  %call.i445 = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str84, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 390, i8* %call.i, i32 192) #10
  %arrayidx.i447 = getelementptr inbounds i8* %call.i445, i64 160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx.i447, i8* bitcast (%struct.t_pargs* @parse_common_args.motif_pa to i8*), i64 32, i32 8, i1 false) #7
  %34 = load i32* @parse_common_args.bGUI, align 4, !tbaa !4
  %tobool88 = icmp eq i32 %34, 0
  %35 = load i64* @uFlags, align 8, !tbaa !7
  %and90 = and i64 %35, 8192
  %cmp91 = icmp ne i64 %and90, 0
  br i1 %tobool88, label %if.else96, label %if.then89

if.then89:                                        ; preds = %for.end86
  %nice_paX.sroa.1.16.copyload508534 = select i1 %cmp91, i8* bitcast ([6 x i8*]* @parse_common_args.nicestr to i8*), i8* bitcast ([6 x i8*]* @parse_common_args.not_nicestr to i8*)
  %call.i450 = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str84, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 390, i8* %call.i445, i32 224) #10
  %arrayidx.i452 = getelementptr inbounds i8* %call.i450, i64 192
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx.i452, i8* bitcast (%struct.t_pargs* @parse_common_args.nice_paX to i8*), i64 16, i32 8, i1 false)
  %nice_paX.sroa.1.16.idx507 = getelementptr inbounds i8* %call.i450, i64 208
  %36 = bitcast i8* %nice_paX.sroa.1.16.idx507 to i8**
  store i8* %nice_paX.sroa.1.16.copyload508534, i8** %36, align 8
  %nice_paX.sroa.2.24.idx509 = getelementptr inbounds i8* %call.i450, i64 216
  %37 = bitcast i8* %nice_paX.sroa.2.24.idx509 to i8**
  store i8* getelementptr inbounds ([18 x i8]* @.str33, i64 0, i64 0), i8** %37, align 8
  br label %if.end103

if.else96:                                        ; preds = %for.end86
  br i1 %cmp91, label %if.then100, label %if.end101

if.then100:                                       ; preds = %if.else96
  store i32 19, i32* @parse_common_args.nicelevel, align 4, !tbaa !4
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %if.else96
  %call.i455 = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str84, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 390, i8* %call.i445, i32 224) #10
  %arrayidx.i457 = getelementptr inbounds i8* %call.i455, i64 192
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx.i457, i8* bitcast (%struct.t_pargs* @parse_common_args.nice_pa to i8*), i64 32, i32 8, i1 false) #7
  br label %if.end103

if.end103:                                        ; preds = %if.end101, %if.then89
  %.in = phi i8* [ %call.i450, %if.then89 ], [ %call.i455, %if.end101 ]
  %38 = load i64* @uFlags, align 8, !tbaa !7
  %and104 = and i64 %38, 1024
  %cmp105 = icmp eq i64 %and104, 0
  br i1 %cmp105, label %if.end109, label %if.then107

if.then107:                                       ; preds = %if.end103
  %call.i460 = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str84, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 390, i8* %.in, i32 256) #10
  %arrayidx.i462 = getelementptr inbounds i8* %call.i460, i64 224
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx.i462, i8* bitcast (%struct.t_pargs* @parse_common_args.deffnm_pa to i8*), i64 32, i32 8, i1 false) #7
  %.pre = load i64* @uFlags, align 8, !tbaa !7
  br label %if.end109

if.end109:                                        ; preds = %if.end103, %if.then107
  %39 = phi i64 [ %.pre, %if.then107 ], [ %38, %if.end103 ]
  %.in611 = phi i8* [ %call.i460, %if.then107 ], [ %.in, %if.end103 ]
  %npall.2 = phi i32 [ 8, %if.then107 ], [ 7, %if.end103 ]
  %40 = bitcast i8* %.in611 to %struct.t_pargs*
  %and110 = and i64 %39, 64
  %cmp111 = icmp eq i64 %and110, 0
  br i1 %cmp111, label %if.end115, label %if.then113

if.then113:                                       ; preds = %if.end109
  %add.i463 = add nsw i32 %npall.2, 1
  %mul.i464 = shl nsw i32 %add.i463, 5
  %call.i465 = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str84, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 390, i8* %.in611, i32 %mul.i464) #10
  %41 = bitcast i8* %call.i465 to %struct.t_pargs*
  %idxprom.i466610 = zext i32 %npall.2 to i64
  %arrayidx.i467 = getelementptr inbounds %struct.t_pargs* %41, i64 %idxprom.i466610
  %42 = bitcast %struct.t_pargs* %arrayidx.i467 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* bitcast (%struct.t_pargs* @parse_common_args.begin_pa to i8*), i64 32, i32 8, i1 false) #7
  %.pre605 = load i64* @uFlags, align 8, !tbaa !7
  br label %if.end115

if.end115:                                        ; preds = %if.end109, %if.then113
  %43 = phi i64 [ %.pre605, %if.then113 ], [ %39, %if.end109 ]
  %44 = phi %struct.t_pargs* [ %41, %if.then113 ], [ %40, %if.end109 ]
  %npall.3 = phi i32 [ %add.i463, %if.then113 ], [ %npall.2, %if.end109 ]
  %and116 = and i64 %43, 128
  %cmp117 = icmp eq i64 %and116, 0
  br i1 %cmp117, label %if.end121, label %if.then119

if.then119:                                       ; preds = %if.end115
  %45 = bitcast %struct.t_pargs* %44 to i8*
  %add.i468 = add nsw i32 %npall.3, 1
  %mul.i469 = shl nsw i32 %add.i468, 5
  %call.i470 = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str84, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 390, i8* %45, i32 %mul.i469) #10
  %46 = bitcast i8* %call.i470 to %struct.t_pargs*
  %idxprom.i471 = sext i32 %npall.3 to i64
  %arrayidx.i472 = getelementptr inbounds %struct.t_pargs* %46, i64 %idxprom.i471
  %47 = bitcast %struct.t_pargs* %arrayidx.i472 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* bitcast (%struct.t_pargs* @parse_common_args.end_pa to i8*), i64 32, i32 8, i1 false) #7
  %.pre606 = load i64* @uFlags, align 8, !tbaa !7
  br label %if.end121

if.end121:                                        ; preds = %if.end115, %if.then119
  %48 = phi i64 [ %.pre606, %if.then119 ], [ %43, %if.end115 ]
  %49 = phi %struct.t_pargs* [ %46, %if.then119 ], [ %44, %if.end115 ]
  %npall.4 = phi i32 [ %add.i468, %if.then119 ], [ %npall.3, %if.end115 ]
  %and122 = and i64 %48, 16384
  %cmp123 = icmp eq i64 %and122, 0
  br i1 %cmp123, label %if.end127, label %if.then125

if.then125:                                       ; preds = %if.end121
  %50 = bitcast %struct.t_pargs* %49 to i8*
  %add.i473 = add nsw i32 %npall.4, 1
  %mul.i474 = shl i32 %add.i473, 5
  %call.i475 = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str84, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 390, i8* %50, i32 %mul.i474) #10
  %51 = bitcast i8* %call.i475 to %struct.t_pargs*
  %idxprom.i476 = sext i32 %npall.4 to i64
  %arrayidx.i477 = getelementptr inbounds %struct.t_pargs* %51, i64 %idxprom.i476
  %52 = bitcast %struct.t_pargs* %arrayidx.i477 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* bitcast (%struct.t_pargs* @parse_common_args.dt_pa to i8*), i64 32, i32 8, i1 false) #7
  br label %if.end127

if.end127:                                        ; preds = %if.end121, %if.then125
  %53 = phi %struct.t_pargs* [ %51, %if.then125 ], [ %49, %if.end121 ]
  %npall.5 = phi i32 [ %add.i473, %if.then125 ], [ %npall.4, %if.end121 ]
  %54 = load i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 1), align 8, !tbaa !0
  %tobool3.i = icmp eq i8* %54, null
  br i1 %tobool3.i, label %while.end.i, label %land.rhs.i

while.cond.i:                                     ; preds = %land.rhs.i
  %arrayidx.i478 = getelementptr inbounds [10 x i8*]* @timestr, i64 0, i64 %indvars.iv.next16.i
  %55 = load i8** %arrayidx.i478, align 8, !tbaa !0
  %tobool.i = icmp eq i8* %55, null
  br i1 %tobool.i, label %while.end.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end127, %while.cond.i
  %indvars.iv15.i = phi i64 [ %indvars.iv.next16.i, %while.cond.i ], [ 1, %if.end127 ]
  %56 = phi i8* [ %55, %while.cond.i ], [ %54, %if.end127 ]
  %i.04.i = phi i32 [ %inc.i, %while.cond.i ], [ 1, %if.end127 ]
  %call.i479 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0)) #9
  %cmp.i = icmp eq i32 %call.i479, 0
  %indvars.iv.next16.i = add i64 %indvars.iv15.i, 1
  %inc.i = add nsw i32 %i.04.i, 1
  br i1 %cmp.i, label %while.end.i, label %while.cond.i

while.end.i:                                      ; preds = %land.rhs.i, %while.cond.i, %if.end127
  %57 = phi i8* [ null, %if.end127 ], [ %56, %land.rhs.i ], [ null, %while.cond.i ]
  %idxprom.lcssa.i = phi i64 [ 1, %if.end127 ], [ %indvars.iv15.i, %land.rhs.i ], [ %indvars.iv.next16.i, %while.cond.i ]
  %i.0.lcssa.i = phi i32 [ 1, %if.end127 ], [ %i.04.i, %land.rhs.i ], [ %inc.i, %while.cond.i ]
  %call5.i = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0)) #9
  %cmp6.i = icmp eq i32 %call5.i, 0
  br i1 %cmp6.i, label %if.then.i, label %set_default_time_unit.exit

if.then.i:                                        ; preds = %while.end.i
  store i8* %57, i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 0), align 16, !tbaa !0
  %arrayidx10.i = getelementptr inbounds [10 x float]* @timefactors, i64 0, i64 %idxprom.lcssa.i
  %58 = load float* %arrayidx10.i, align 4, !tbaa !3
  store float %58, float* getelementptr inbounds ([10 x float]* @timefactors, i64 0, i64 0), align 16, !tbaa !3
  %arrayidx12.i = getelementptr inbounds [10 x i8*]* @xvgrtimestr, i64 0, i64 %idxprom.lcssa.i
  %59 = load i8** %arrayidx12.i, align 8, !tbaa !0
  store i8* %59, i8** getelementptr inbounds ([10 x i8*]* @xvgrtimestr, i64 0, i64 0), align 16, !tbaa !0
  %cmp131.i = icmp sgt i32 %i.0.lcssa.i, 1
  br i1 %cmp131.i, label %for.body.lr.ph.i, label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then.i
  %60 = sext i32 %i.0.lcssa.i to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ %60, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1
  %arrayidx15.i = getelementptr inbounds [10 x i8*]* @timestr, i64 0, i64 %indvars.iv.next.i
  %61 = load i8** %arrayidx15.i, align 8, !tbaa !0
  %arrayidx17.i = getelementptr inbounds [10 x i8*]* @timestr, i64 0, i64 %indvars.iv.i
  store i8* %61, i8** %arrayidx17.i, align 8, !tbaa !0
  %arrayidx20.i = getelementptr inbounds [10 x float]* @timefactors, i64 0, i64 %indvars.iv.next.i
  %62 = load float* %arrayidx20.i, align 4, !tbaa !3
  %arrayidx22.i = getelementptr inbounds [10 x float]* @timefactors, i64 0, i64 %indvars.iv.i
  store float %62, float* %arrayidx22.i, align 4, !tbaa !3
  %arrayidx25.i = getelementptr inbounds [10 x i8*]* @xvgrtimestr, i64 0, i64 %indvars.iv.next.i
  %63 = load i8** %arrayidx25.i, align 8, !tbaa !0
  %arrayidx27.i = getelementptr inbounds [10 x i8*]* @xvgrtimestr, i64 0, i64 %indvars.iv.i
  store i8* %63, i8** %arrayidx27.i, align 8, !tbaa !0
  %64 = trunc i64 %indvars.iv.next.i to i32
  %cmp13.i = icmp sgt i32 %64, 1
  br i1 %cmp13.i, label %for.body.i, label %for.cond.for.end_crit_edge.i

for.cond.for.end_crit_edge.i:                     ; preds = %for.body.i
  %.pre.i = load i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 0), align 16, !tbaa !0
  %.pre17.i = load float* getelementptr inbounds ([10 x float]* @timefactors, i64 0, i64 0), align 16, !tbaa !3
  %.pre18.i = load i8** getelementptr inbounds ([10 x i8*]* @xvgrtimestr, i64 0, i64 0), align 16, !tbaa !0
  br label %for.end.i

for.end.i:                                        ; preds = %for.cond.for.end_crit_edge.i, %if.then.i
  %65 = phi i8* [ %.pre18.i, %for.cond.for.end_crit_edge.i ], [ %59, %if.then.i ]
  %66 = phi float [ %.pre17.i, %for.cond.for.end_crit_edge.i ], [ %58, %if.then.i ]
  %67 = phi i8* [ %.pre.i, %for.cond.for.end_crit_edge.i ], [ %57, %if.then.i ]
  store i8* %67, i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 1), align 8, !tbaa !0
  store float %66, float* getelementptr inbounds ([10 x float]* @timefactors, i64 0, i64 1), align 4, !tbaa !3
  store i8* %65, i8** getelementptr inbounds ([10 x i8*]* @xvgrtimestr, i64 0, i64 1), align 8, !tbaa !0
  br label %set_default_time_unit.exit

set_default_time_unit.exit:                       ; preds = %while.end.i, %for.end.i
  %68 = load i64* @uFlags, align 8, !tbaa !7
  %and128 = and i64 %68, 32
  %cmp129 = icmp eq i64 %and128, 0
  br i1 %cmp129, label %for.cond134.preheader, label %if.then131

if.then131:                                       ; preds = %set_default_time_unit.exit
  %69 = bitcast %struct.t_pargs* %53 to i8*
  %add.i480 = add nsw i32 %npall.5, 1
  %mul.i481 = shl i32 %add.i480, 5
  %call.i482 = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str84, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 390, i8* %69, i32 %mul.i481) #10
  %70 = bitcast i8* %call.i482 to %struct.t_pargs*
  %idxprom.i483 = sext i32 %npall.5 to i64
  %arrayidx.i484 = getelementptr inbounds %struct.t_pargs* %70, i64 %idxprom.i483
  %71 = bitcast %struct.t_pargs* %arrayidx.i484 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* bitcast (%struct.t_pargs* @parse_common_args.view_pa to i8*), i64 32, i32 8, i1 false) #7
  br label %for.cond134.preheader

for.cond134.preheader:                            ; preds = %set_default_time_unit.exit, %if.then131
  %.ph = phi %struct.t_pargs* [ %70, %if.then131 ], [ %53, %set_default_time_unit.exit ]
  %npall.7.ph = phi i32 [ %add.i480, %if.then131 ], [ %npall.5, %set_default_time_unit.exit ]
  %cmp135548 = icmp sgt i32 %npargs, 0
  br i1 %cmp135548, label %for.body137.lr.ph, label %for.cond144.preheader

for.body137.lr.ph:                                ; preds = %for.cond134.preheader
  %72 = sext i32 %npall.7.ph to i64
  br label %for.body137

for.cond134.for.cond144.preheader_crit_edge:      ; preds = %for.body137
  %73 = add i32 %npall.7.ph, %npargs
  br label %for.cond144.preheader

for.cond144.preheader:                            ; preds = %for.cond134.for.cond144.preheader_crit_edge, %for.cond134.preheader
  %npall.7.lcssa = phi i32 [ %73, %for.cond134.for.cond144.preheader_crit_edge ], [ %npall.7.ph, %for.cond134.preheader ]
  %.lcssa = phi %struct.t_pargs* [ %77, %for.cond134.for.cond144.preheader_crit_edge ], [ %.ph, %for.cond134.preheader ]
  %cmp145546 = icmp sgt i32 %npall.7.lcssa, 0
  br i1 %cmp145546, label %for.body147, label %for.end166

for.body137:                                      ; preds = %for.body137, %for.body137.lr.ph
  %indvars.iv586 = phi i64 [ 0, %for.body137.lr.ph ], [ %indvars.iv.next587, %for.body137 ]
  %indvars.iv584 = phi i64 [ %72, %for.body137.lr.ph ], [ %indvars.iv.next585, %for.body137 ]
  %74 = phi %struct.t_pargs* [ %.ph, %for.body137.lr.ph ], [ %77, %for.body137 ]
  %arrayidx139 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv586
  %75 = bitcast %struct.t_pargs* %74 to i8*
  %indvars.iv.next585 = add i64 %indvars.iv584, 1
  %76 = trunc i64 %indvars.iv.next585 to i32
  %mul.i486 = shl i32 %76, 5
  %call.i487 = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str84, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 390, i8* %75, i32 %mul.i486) #10
  %77 = bitcast i8* %call.i487 to %struct.t_pargs*
  %arrayidx.i489 = getelementptr inbounds %struct.t_pargs* %77, i64 %indvars.iv584
  %78 = bitcast %struct.t_pargs* %arrayidx.i489 to i8*
  %79 = bitcast %struct.t_pargs* %arrayidx139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %79, i64 32, i32 8, i1 false) #7
  %indvars.iv.next587 = add i64 %indvars.iv586, 1
  %lftr.wideiv588 = trunc i64 %indvars.iv.next587 to i32
  %exitcond589 = icmp eq i32 %lftr.wideiv588, %npargs
  br i1 %exitcond589, label %for.cond134.for.cond144.preheader_crit_edge, label %for.body137

for.body147:                                      ; preds = %for.cond144.preheader, %for.inc164
  %indvars.iv579 = phi i64 [ %indvars.iv.next580, %for.inc164 ], [ 0, %for.cond144.preheader ]
  %type = getelementptr inbounds %struct.t_pargs* %.lcssa, i64 %indvars.iv579, i32 2
  %80 = load i32* %type, align 4, !tbaa !4
  %cmp150 = icmp eq i32 %80, 6
  br i1 %cmp150, label %if.then152, label %for.inc164

if.then152:                                       ; preds = %for.body147
  %u155 = getelementptr inbounds %struct.t_pargs* %.lcssa, i64 %indvars.iv579, i32 3
  %c156 = bitcast %union.anon* %u155 to i8***
  %81 = load i8*** %c156, align 8, !tbaa !0
  %arrayidx157 = getelementptr inbounds i8** %81, i64 1
  %82 = load i8** %arrayidx157, align 8, !tbaa !0
  store i8* %82, i8** %81, align 8, !tbaa !0
  br label %for.inc164

for.inc164:                                       ; preds = %for.body147, %if.then152
  %indvars.iv.next580 = add i64 %indvars.iv579, 1
  %lftr.wideiv581 = trunc i64 %indvars.iv.next580 to i32
  %exitcond582 = icmp eq i32 %lftr.wideiv581, %npall.7.lcssa
  br i1 %exitcond582, label %for.end166, label %for.body147

for.end166:                                       ; preds = %for.inc164, %for.cond144.preheader
  %83 = load i64* @uFlags, align 8, !tbaa !7
  %and167 = lshr i64 %83, 8
  %and167.tr = trunc i64 %and167 to i32
  %conv169 = and i32 %and167.tr, 1
  call void @get_pargs(i32* %argc, i8** %argv, i32 %npall.7.lcssa, %struct.t_pargs* %.lcssa, i32 %conv169) #10
  %84 = load i64* @uFlags, align 8, !tbaa !7
  %and170 = and i64 %84, 1024
  %cmp171 = icmp ne i64 %and170, 0
  %85 = load i8** @parse_common_args.deffnm, align 8, !tbaa !0
  %cmp174 = icmp ne i8* %85, null
  %or.cond = and i1 %cmp171, %cmp174
  br i1 %or.cond, label %if.then176, label %if.end177

if.then176:                                       ; preds = %for.end166
  call void @set_default_file_name(i8* %85) #10
  %.pre607 = load i64* @uFlags, align 8, !tbaa !7
  br label %if.end177

if.end177:                                        ; preds = %if.then176, %for.end166
  %86 = phi i64 [ %.pre607, %if.then176 ], [ %84, %for.end166 ]
  %and178 = lshr i64 %86, 8
  %and178.tr = trunc i64 %and178 to i32
  %conv180 = and i32 %and178.tr, 1
  call void @parse_file_args(i32* %argc, i8** %argv, i32 %nfile, %struct.t_filenm* %fnm, i32 %conv180) #10
  %87 = load i32* @parse_common_args.bDebug, align 4, !tbaa !4
  %tobool181 = icmp eq i32 %87, 0
  br i1 %tobool181, label %if.end198, label %if.then182

if.then182:                                       ; preds = %if.end177
  %88 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %88) #7
  %call183 = call i32 @gmx_node_num() #10
  %cmp184 = icmp sgt i32 %call183, 1
  %89 = load i8** @program, align 8, !tbaa !0
  %tobool.i490 = icmp eq i8* %89, null
  br i1 %tobool.i490, label %ShortProgram.exit, label %if.then.i493

if.then.i493:                                     ; preds = %if.then182
  %call.i491 = call i8* @strrchr(i8* %89, i32 47) #9
  %cmp.i492 = icmp eq i8* %call.i491, null
  %add.ptr.i = getelementptr inbounds i8* %call.i491, i64 1
  %.add.ptr.i = select i1 %cmp.i492, i8* %89, i8* %add.ptr.i
  br label %ShortProgram.exit

ShortProgram.exit:                                ; preds = %if.then182, %if.then.i493
  %call187494 = phi i8* [ %.add.ptr.i, %if.then.i493 ], [ getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), %if.then182 ]
  br i1 %cmp184, label %if.then186, label %if.else190

if.then186:                                       ; preds = %ShortProgram.exit
  %call188 = call i32 @gmx_node_id() #10
  %call189 = call i32 (i8*, i8*, ...)* @sprintf(i8* %88, i8* getelementptr inbounds ([9 x i8]* @.str60, i64 0, i64 0), i8* %call187494, i32 %call188) #10
  br label %if.end194

if.else190:                                       ; preds = %ShortProgram.exit
  %call193 = call i32 (i8*, i8*, ...)* @sprintf(i8* %88, i8* getelementptr inbounds ([7 x i8]* @.str61, i64 0, i64 0), i8* %call187494) #10
  br label %if.end194

if.end194:                                        ; preds = %if.else190, %if.then186
  call void @init_debug(i8* %88) #10
  %90 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %call197 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([43 x i8]* @.str62, i64 0, i64 0), i8* %88, i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 650) #10
  call void @llvm.lifetime.end(i64 256, i8* %88) #7
  br label %if.end198

if.end198:                                        ; preds = %if.end177, %if.end194
  %91 = load i32* @parse_common_args.bGUI, align 4, !tbaa !4
  %tobool199 = icmp eq i32 %91, 0
  br i1 %tobool199, label %if.end201, label %if.then200

if.then200:                                       ; preds = %if.end198
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([63 x i8]* @.str63, i64 0, i64 0)) #10
  br label %if.end201

if.end201:                                        ; preds = %if.end198, %if.then200
  br i1 %cmp135548, label %for.body205.lr.ph, label %for.cond214.preheader

for.body205.lr.ph:                                ; preds = %if.end201
  %sub = sub nsw i32 %npall.7.lcssa, %npargs
  %92 = sext i32 %sub to i64
  br label %for.body205

for.cond214.preheader:                            ; preds = %for.body205, %if.end201
  br i1 %cmp145546, label %for.body217, label %for.end227

for.body205:                                      ; preds = %for.body205, %for.body205.lr.ph
  %indvars.iv575 = phi i64 [ 0, %for.body205.lr.ph ], [ %indvars.iv.next576, %for.body205 ]
  %indvars.iv573 = phi i64 [ %92, %for.body205.lr.ph ], [ %indvars.iv.next574, %for.body205 ]
  %arrayidx207 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv575
  %93 = bitcast %struct.t_pargs* %arrayidx207 to i8*
  %arrayidx209 = getelementptr inbounds %struct.t_pargs* %.lcssa, i64 %indvars.iv573
  %94 = bitcast %struct.t_pargs* %arrayidx209 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %93, i8* %94, i64 32, i32 8, i1 false)
  %indvars.iv.next576 = add i64 %indvars.iv575, 1
  %indvars.iv.next574 = add i64 %indvars.iv573, 1
  %lftr.wideiv577 = trunc i64 %indvars.iv.next576 to i32
  %exitcond578 = icmp eq i32 %lftr.wideiv577, %npargs
  br i1 %exitcond578, label %for.cond214.preheader, label %for.body205

for.body217:                                      ; preds = %for.cond214.preheader, %mk_desc.exit
  %indvars.iv569 = phi i64 [ %indvars.iv.next570, %mk_desc.exit ], [ 0, %for.cond214.preheader ]
  %arrayidx219 = getelementptr inbounds %struct.t_pargs* %.lcssa, i64 %indvars.iv569
  %95 = load i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 0), align 16, !tbaa !0
  %desc.i = getelementptr inbounds %struct.t_pargs* %.lcssa, i64 %indvars.iv569, i32 4
  %96 = load i8** %desc.i, align 8, !tbaa !0
  %call.i495 = call i64 @strlen(i8* %96) #9
  %add.i496 = add i64 %call.i495, 1
  %conv.i = trunc i64 %add.i496 to i32
  %call2.i = call i8* @strstr(i8* %96, i8* getelementptr inbounds ([7 x i8]* @.str74, i64 0, i64 0)) #9
  %cmp.i497 = icmp eq i8* %call2.i, null
  %add4.i = add nsw i32 %conv.i, 4
  %conv.add4.i = select i1 %cmp.i497, i32 %conv.i, i32 %add4.i
  %type.i = getelementptr inbounds %struct.t_pargs* %.lcssa, i64 %indvars.iv569, i32 2
  %97 = load i32* %type.i, align 4, !tbaa !4
  %cmp5.i = icmp eq i32 %97, 6
  br i1 %cmp5.i, label %if.then7.i, label %if.end20.i

if.then7.i:                                       ; preds = %for.body217
  %add8.i = add nsw i32 %conv.add4.i, 10
  %u.i = getelementptr inbounds %struct.t_pargs* %.lcssa, i64 %indvars.iv569, i32 3
  %c.i = bitcast %union.anon* %u.i to i8***
  %98 = load i8*** %c.i, align 8, !tbaa !0
  %arrayidx150.i = getelementptr inbounds i8** %98, i64 1
  %99 = load i8** %arrayidx150.i, align 8, !tbaa !0
  %cmp9151.i = icmp eq i8* %99, null
  br i1 %cmp9151.i, label %if.end20.i, label %for.body.i499

for.body.i499:                                    ; preds = %if.then7.i, %for.body.i499
  %indvars.iv156.i = phi i64 [ %indvars.iv.next157.i, %for.body.i499 ], [ 1, %if.then7.i ]
  %100 = phi i8* [ %101, %for.body.i499 ], [ %99, %if.then7.i ]
  %len.1152.i = phi i32 [ %conv19.i, %for.body.i499 ], [ %add8.i, %if.then7.i ]
  %call15.i = call i64 @strlen(i8* %100) #9
  %conv17140.i = zext i32 %len.1152.i to i64
  %add16.i = add i64 %conv17140.i, 12
  %add18.i = add i64 %add16.i, %call15.i
  %conv19.i = trunc i64 %add18.i to i32
  %indvars.iv.next157.i = add i64 %indvars.iv156.i, 1
  %arrayidx.i498 = getelementptr inbounds i8** %98, i64 %indvars.iv.next157.i
  %101 = load i8** %arrayidx.i498, align 8, !tbaa !0
  %cmp9.i = icmp eq i8* %101, null
  br i1 %cmp9.i, label %if.end20.i, label %for.body.i499

if.end20.i:                                       ; preds = %for.body.i499, %if.then7.i, %for.body217
  %len.2.i = phi i32 [ %conv.add4.i, %for.body217 ], [ %add8.i, %if.then7.i ], [ %conv19.i, %for.body.i499 ]
  %call21.i = call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str75, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 411, i32 %len.2.i, i32 1) #10
  %call22.i = call i32 @is_hidden(%struct.t_pargs* %arrayidx219) #10
  %tobool.i500 = icmp eq i32 %call22.i, 0
  br i1 %tobool.i500, label %if.else.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.end20.i
  %add.ptr.i501 = getelementptr inbounds i8* %call2.i, i64 6
  %call24.i = call i32 (i8*, i8*, ...)* @sprintf(i8* %call21.i, i8* getelementptr inbounds ([12 x i8]* @.str76, i64 0, i64 0), i8* %add.ptr.i501) #10
  br label %if.end27.i

if.else.i:                                        ; preds = %if.end20.i
  %102 = load i8** %desc.i, align 8, !tbaa !0
  %call26.i = call i8* @strcpy(i8* %call21.i, i8* %102) #10
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.else.i, %if.then23.i
  %103 = load i32* %type.i, align 4, !tbaa !4
  %cmp29.i = icmp eq i32 %103, 2
  br i1 %cmp29.i, label %while.cond.preheader.i, label %if.end45.i

while.cond.preheader.i:                           ; preds = %if.end27.i
  %call32145.i = call i8* @strstr(i8* %call21.i, i8* getelementptr inbounds ([3 x i8]* @.str77, i64 0, i64 0)) #9
  %cmp33146.i = icmp eq i8* %call32145.i, null
  br i1 %cmp33146.i, label %mk_desc.exit, label %while.body.i

while.body.i:                                     ; preds = %while.cond.preheader.i, %while.body.i
  %call32149.i = phi i8* [ %call32.i, %while.body.i ], [ %call32145.i, %while.cond.preheader.i ]
  %len.3148.i = phi i32 [ %conv40.i, %while.body.i ], [ %len.2.i, %while.cond.preheader.i ]
  %newdesc.0147.i = phi i8* [ %call41.i, %while.body.i ], [ %call21.i, %while.cond.preheader.i ]
  store i8 0, i8* %call32149.i, align 1, !tbaa !1
  %add.ptr36.i = getelementptr inbounds i8* %call32149.i, i64 2
  %call37.i = call i64 @strlen(i8* %95) #9
  %conv38139.i = zext i32 %len.3148.i to i64
  %sub.i = add i64 %conv38139.i, 4294967294
  %add39.i = add i64 %sub.i, %call37.i
  %conv40.i = trunc i64 %add39.i to i32
  %call41.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str78, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 427, i32 %conv40.i, i32 1) #10
  %call42.i = call i8* @strcpy(i8* %call41.i, i8* %newdesc.0147.i) #10
  %call43.i = call i8* @strcat(i8* %call41.i, i8* %95) #10
  %call44.i = call i8* @strcat(i8* %call41.i, i8* %add.ptr36.i) #10
  call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str75, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 431, i8* %newdesc.0147.i) #10
  %call32.i = call i8* @strstr(i8* %call41.i, i8* getelementptr inbounds ([3 x i8]* @.str77, i64 0, i64 0)) #9
  %cmp33.i = icmp eq i8* %call32.i, null
  br i1 %cmp33.i, label %while.cond.if.end45thread-pre-split_crit_edge.i, label %while.body.i

while.cond.if.end45thread-pre-split_crit_edge.i:  ; preds = %while.body.i
  %.pr.pre.i = load i32* %type.i, align 4, !tbaa !4
  br label %if.end45.i

if.end45.i:                                       ; preds = %while.cond.if.end45thread-pre-split_crit_edge.i, %if.end27.i
  %104 = phi i32 [ %103, %if.end27.i ], [ %.pr.pre.i, %while.cond.if.end45thread-pre-split_crit_edge.i ]
  %newdesc.1.i = phi i8* [ %call21.i, %if.end27.i ], [ %call41.i, %while.cond.if.end45thread-pre-split_crit_edge.i ]
  %cmp47.i = icmp eq i32 %104, 6
  br i1 %cmp47.i, label %if.then49.i, label %mk_desc.exit

if.then49.i:                                      ; preds = %if.end45.i
  %strlen.i = call i64 @strlen(i8* %newdesc.1.i) #7
  %endptr.i = getelementptr i8* %newdesc.1.i, i64 %strlen.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %endptr.i, i8* getelementptr inbounds ([3 x i8]* @.str79, i64 0, i64 0), i64 3, i32 1, i1 false) #7
  %u53.i = getelementptr inbounds %struct.t_pargs* %.lcssa, i64 %indvars.iv569, i32 3
  %c54.i = bitcast %union.anon* %u53.i to i8***
  %105 = load i8*** %c54.i, align 8, !tbaa !0
  %arrayidx55141.i = getelementptr inbounds i8** %105, i64 1
  %106 = load i8** %arrayidx55141.i, align 8, !tbaa !0
  %cmp56142.i = icmp eq i8* %106, null
  br i1 %cmp56142.i, label %mk_desc.exit, label %for.body58.i

for.body58.i:                                     ; preds = %if.then49.i, %for.cond51.backedge.i
  %indvars.iv.i502 = phi i64 [ %indvars.iv.next.i503, %for.cond51.backedge.i ], [ 1, %if.then49.i ]
  %strlen131.i = call i64 @strlen(i8* %newdesc.1.i) #7
  %endptr132.i = getelementptr i8* %newdesc.1.i, i64 %strlen131.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %endptr132.i, i8* getelementptr inbounds ([5 x i8]* @.str80, i64 0, i64 0), i64 5, i32 1, i1 false) #7
  %107 = load i8*** %c54.i, align 8, !tbaa !0
  %arrayidx63.i = getelementptr inbounds i8** %107, i64 %indvars.iv.i502
  %108 = load i8** %arrayidx63.i, align 8, !tbaa !0
  %call64.i = call i8* @strcat(i8* %newdesc.1.i, i8* %108) #10
  %strlen133.i = call i64 @strlen(i8* %newdesc.1.i) #7
  %endptr134.i = getelementptr i8* %newdesc.1.i, i64 %strlen133.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %endptr134.i, i8* getelementptr inbounds ([5 x i8]* @.str81, i64 0, i64 0), i64 5, i32 1, i1 false) #7
  %indvars.iv.next.i503 = add i64 %indvars.iv.i502, 1
  %109 = load i8*** %c54.i, align 8, !tbaa !0
  %arrayidx70.i = getelementptr inbounds i8** %109, i64 %indvars.iv.next.i503
  %110 = load i8** %arrayidx70.i, align 8, !tbaa !0
  %cmp71.i = icmp eq i8* %110, null
  br i1 %cmp71.i, label %for.cond51.backedge.i, label %if.then73.i

for.cond51.backedge.i:                            ; preds = %if.else83.i, %if.then81.i, %for.body58.i
  %111 = load i8*** %c54.i, align 8, !tbaa !0
  %arrayidx55.i = getelementptr inbounds i8** %111, i64 %indvars.iv.next.i503
  %112 = load i8** %arrayidx55.i, align 8, !tbaa !0
  %cmp56.i = icmp eq i8* %112, null
  br i1 %cmp56.i, label %mk_desc.exit, label %for.body58.i

if.then73.i:                                      ; preds = %for.body58.i
  %113 = add nsw i64 %indvars.iv.i502, 2
  %arrayidx78.i = getelementptr inbounds i8** %109, i64 %113
  %114 = load i8** %arrayidx78.i, align 8, !tbaa !0
  %cmp79.i = icmp eq i8* %114, null
  %strlen137.i = call i64 @strlen(i8* %newdesc.1.i) #7
  %endptr138.i = getelementptr i8* %newdesc.1.i, i64 %strlen137.i
  br i1 %cmp79.i, label %if.then81.i, label %if.else83.i

if.then81.i:                                      ; preds = %if.then73.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %endptr138.i, i8* getelementptr inbounds ([5 x i8]* @.str82, i64 0, i64 0), i64 5, i32 1, i1 false) #7
  br label %for.cond51.backedge.i

if.else83.i:                                      ; preds = %if.then73.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %endptr138.i, i8* getelementptr inbounds ([3 x i8]* @.str83, i64 0, i64 0), i64 3, i32 1, i1 false) #7
  br label %for.cond51.backedge.i

mk_desc.exit:                                     ; preds = %for.cond51.backedge.i, %while.cond.preheader.i, %if.end45.i, %if.then49.i
  %newdesc.1160.i = phi i8* [ %newdesc.1.i, %if.end45.i ], [ %newdesc.1.i, %if.then49.i ], [ %call21.i, %while.cond.preheader.i ], [ %newdesc.1.i, %for.cond51.backedge.i ]
  store i8* %newdesc.1160.i, i8** %desc.i, align 8, !tbaa !0
  %indvars.iv.next570 = add i64 %indvars.iv569, 1
  %lftr.wideiv571 = trunc i64 %indvars.iv.next570 to i32
  %exitcond572 = icmp eq i32 %lftr.wideiv571, %npall.7.lcssa
  br i1 %exitcond572, label %for.end227, label %for.body217

for.end227:                                       ; preds = %mk_desc.exit, %for.cond214.preheader
  %115 = load i32* @parse_common_args.bHelp, align 4, !tbaa !4
  %tobool228 = icmp eq i32 %115, 0
  br i1 %tobool228, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %for.end227
  %116 = load i8** getelementptr inbounds ([8 x i8*]* @parse_common_args.manstr, i64 0, i64 0), align 16, !tbaa !0
  %call229 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0)) #9
  %cmp230 = icmp ne i32 %call229, 0
  br label %lor.end

lor.end:                                          ; preds = %for.end227, %lor.rhs
  %117 = phi i1 [ true, %for.end227 ], [ %cmp230, %lor.rhs ]
  %118 = load i64* @uFlags, align 8, !tbaa !7
  %and232 = and i64 %118, 4096
  %cmp233 = icmp ne i64 %and232, 0
  %119 = load i32* @parse_common_args.bQuiet, align 4, !tbaa !4
  %tobool235 = icmp ne i32 %119, 0
  %or.cond316 = or i1 %cmp233, %tobool235
  br i1 %or.cond316, label %if.end244, label %if.then236

if.then236:                                       ; preds = %lor.end
  br i1 %tobool228, label %if.else239, label %if.then238

if.then238:                                       ; preds = %if.then236
  %120 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %121 = load i8** @program, align 8, !tbaa !0
  %122 = load i32* @parse_common_args.bHidden, align 4, !tbaa !4
  call void @write_man(%struct._IO_FILE* %120, i8* getelementptr inbounds ([5 x i8]* @.str64, i64 0, i64 0), i8* %121, i32 %ndesc, i8** %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npall.7.lcssa, %struct.t_pargs* %.lcssa, i32 %nbugs, i8** %bugs, i32 %122) #10
  br label %if.end244

if.else239:                                       ; preds = %if.then236
  br i1 %lnot, label %if.then241, label %if.end244

if.then241:                                       ; preds = %if.else239
  %123 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  call void @pr_fns(%struct._IO_FILE* %123, i32 %nfile, %struct.t_filenm* %fnm) #10
  %124 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  call void @print_pargs(%struct._IO_FILE* %124, i32 %npall.7.lcssa, %struct.t_pargs* %.lcssa) #10
  br label %if.end244

if.end244:                                        ; preds = %if.else239, %lor.end, %if.then238, %if.then241
  %125 = load i8** getelementptr inbounds ([8 x i8*]* @parse_common_args.manstr, i64 0, i64 0), align 16, !tbaa !0
  %call245 = call i32 @strcmp(i8* %125, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0)) #9
  %cmp246 = icmp eq i32 %call245, 0
  br i1 %cmp246, label %if.end258, label %if.then248

if.then248:                                       ; preds = %if.end244
  %call249 = call i32 @strcmp(i8* %125, i8* getelementptr inbounds ([11 x i8]* @.str18, i64 0, i64 0)) #9
  %tobool250 = icmp eq i32 %call249, 0
  %126 = load i8** @program, align 8, !tbaa !0
  br i1 %tobool250, label %if.then251, label %if.else255

if.then251:                                       ; preds = %if.then248
  %call252 = call fastcc %struct._IO_FILE* @man_file(i8* %126, i8* getelementptr inbounds ([15 x i8]* @.str65, i64 0, i64 0)) #12
  %127 = load i8** @program, align 8, !tbaa !0
  %128 = load i32* @parse_common_args.bHidden, align 4, !tbaa !4
  call void @write_man(%struct._IO_FILE* %call252, i8* getelementptr inbounds ([15 x i8]* @.str65, i64 0, i64 0), i8* %127, i32 %ndesc, i8** %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npall.7.lcssa, %struct.t_pargs* %.lcssa, i32 %nbugs, i8** %bugs, i32 %128) #10
  call void @ffclose(%struct._IO_FILE* %call252) #10
  %129 = load i8** @program, align 8, !tbaa !0
  %call253 = call fastcc %struct._IO_FILE* @man_file(i8* %129, i8* getelementptr inbounds ([16 x i8]* @.str66, i64 0, i64 0)) #12
  %130 = load i8** @program, align 8, !tbaa !0
  %131 = load i32* @parse_common_args.bHidden, align 4, !tbaa !4
  call void @write_man(%struct._IO_FILE* %call253, i8* getelementptr inbounds ([16 x i8]* @.str66, i64 0, i64 0), i8* %130, i32 %ndesc, i8** %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npall.7.lcssa, %struct.t_pargs* %.lcssa, i32 %nbugs, i8** %bugs, i32 %131) #10
  call void @ffclose(%struct._IO_FILE* %call253) #10
  %132 = load i8** @program, align 8, !tbaa !0
  %call254 = call fastcc %struct._IO_FILE* @man_file(i8* %132, i8* getelementptr inbounds ([15 x i8]* @.str67, i64 0, i64 0)) #12
  %133 = load i8** @program, align 8, !tbaa !0
  %134 = load i32* @parse_common_args.bHidden, align 4, !tbaa !4
  call void @write_man(%struct._IO_FILE* %call254, i8* getelementptr inbounds ([15 x i8]* @.str67, i64 0, i64 0), i8* %133, i32 %ndesc, i8** %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npall.7.lcssa, %struct.t_pargs* %.lcssa, i32 %nbugs, i8** %bugs, i32 %134) #10
  call void @ffclose(%struct._IO_FILE* %call254) #10
  br label %if.end258

if.else255:                                       ; preds = %if.then248
  %call256 = call fastcc %struct._IO_FILE* @man_file(i8* %126, i8* %125) #12
  %135 = load i8** getelementptr inbounds ([8 x i8*]* @parse_common_args.manstr, i64 0, i64 0), align 16, !tbaa !0
  %136 = load i8** @program, align 8, !tbaa !0
  %137 = load i32* @parse_common_args.bHidden, align 4, !tbaa !4
  call void @write_man(%struct._IO_FILE* %call256, i8* %135, i8* %136, i32 %ndesc, i8** %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npall.7.lcssa, %struct.t_pargs* %.lcssa, i32 %nbugs, i8** %bugs, i32 %137) #10
  call void @ffclose(%struct._IO_FILE* %call256) #10
  br label %if.end258

if.end258:                                        ; preds = %if.end244, %if.then251, %if.else255
  call fastcc void @init_time_factor() #12
  br i1 %cmp145546, label %for.body262, label %for.end292

for.cond283.preheader:                            ; preds = %for.inc280
  br i1 %cmp145546, label %for.body286, label %for.end292

for.body262:                                      ; preds = %if.end258, %for.inc280
  %indvars.iv565 = phi i64 [ %indvars.iv.next566, %for.inc280 ], [ 0, %if.end258 ]
  %type265 = getelementptr inbounds %struct.t_pargs* %.lcssa, i64 %indvars.iv565, i32 2
  %138 = load i32* %type265, align 4, !tbaa !4
  %cmp266 = icmp eq i32 %138, 2
  br i1 %cmp266, label %land.lhs.true268, label %for.inc280

land.lhs.true268:                                 ; preds = %for.body262
  %u271 = getelementptr inbounds %struct.t_pargs* %.lcssa, i64 %indvars.iv565, i32 3
  %r = bitcast %union.anon* %u271 to float**
  %139 = load float** %r, align 8, !tbaa !0
  %140 = load float* %139, align 4, !tbaa !3
  %cmp272 = fcmp ult float %140, 0.000000e+00
  br i1 %cmp272, label %for.inc280, label %if.then274

if.then274:                                       ; preds = %land.lhs.true268
  %141 = load float* @timefactor, align 4, !tbaa !3
  %div = fdiv float %140, %141
  store float %div, float* %139, align 4, !tbaa !3
  br label %for.inc280

for.inc280:                                       ; preds = %land.lhs.true268, %for.body262, %if.then274
  %indvars.iv.next566 = add i64 %indvars.iv565, 1
  %lftr.wideiv567 = trunc i64 %indvars.iv.next566 to i32
  %exitcond568 = icmp eq i32 %lftr.wideiv567, %npall.7.lcssa
  br i1 %exitcond568, label %for.cond283.preheader, label %for.body262

for.body286:                                      ; preds = %for.cond283.preheader, %for.body286
  %indvars.iv563 = phi i64 [ %indvars.iv.next564, %for.body286 ], [ 0, %for.cond283.preheader ]
  %desc289 = getelementptr inbounds %struct.t_pargs* %.lcssa, i64 %indvars.iv563, i32 4
  %142 = load i8** %desc289, align 8, !tbaa !0
  call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str68, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 745, i8* %142) #10
  %indvars.iv.next564 = add i64 %indvars.iv563, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next564 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %npall.7.lcssa
  br i1 %exitcond, label %for.end292, label %for.body286

for.end292:                                       ; preds = %if.end258, %for.body286, %for.cond283.preheader
  %143 = bitcast %struct.t_pargs* %.lcssa to i8*
  call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 746, i8* %143) #10
  %144 = load i64* @uFlags, align 8, !tbaa !7
  %and293 = and i64 %144, 2048
  %cmp294 = icmp eq i64 %and293, 0
  br i1 %cmp294, label %if.then296, label %if.end312

if.then296:                                       ; preds = %for.end292
  %145 = load i32* %argc, align 4, !tbaa !4
  %cmp297 = icmp sgt i32 %145, 1
  br i1 %cmp297, label %for.body303, label %if.end312

for.body303:                                      ; preds = %if.then296, %for.body303
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body303 ], [ 1, %if.then296 ]
  %146 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %arrayidx305 = getelementptr inbounds i8** %argv, i64 %indvars.iv
  %147 = load i8** %arrayidx305, align 8, !tbaa !0
  %call306 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %146, i8* getelementptr inbounds ([22 x i8]* @.str69, i64 0, i64 0), i8* %147) #10
  %indvars.iv.next = add i64 %indvars.iv, 1
  %148 = load i32* %argc, align 4, !tbaa !4
  %149 = trunc i64 %indvars.iv.next to i32
  %cmp301 = icmp slt i32 %149, %148
  br i1 %cmp301, label %for.body303, label %for.end309

for.end309:                                       ; preds = %for.body303
  %150 = load i8** @program, align 8, !tbaa !0
  %tobool.i504 = icmp eq i8* %150, null
  %..i = select i1 %tobool.i504, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* %150
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([18 x i8]* @.str70, i64 0, i64 0), i8* %..i) #10
  br label %if.end312

if.end312:                                        ; preds = %for.end292, %if.then296, %for.end309
  br i1 %117, label %if.then314, label %if.end315

if.then314:                                       ; preds = %if.end312
  call void @exit(i32 0) #13
  unreachable

if.end315:                                        ; preds = %if.end312
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #7

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: optsize
declare i32 @gmx_node_id() #3

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: optsize
declare void @get_pargs(i32*, i8**, i32, %struct.t_pargs*, i32) #3

; Function Attrs: optsize
declare void @set_default_file_name(i8*) #3

; Function Attrs: optsize
declare void @parse_file_args(i32*, i8**, i32, %struct.t_filenm*, i32) #3

; Function Attrs: optsize
declare i32 @gmx_node_num() #3

; Function Attrs: optsize
declare void @init_debug(i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: optsize
declare void @write_man(%struct._IO_FILE*, i8*, i8*, i32, i8**, i32, %struct.t_filenm*, i32, %struct.t_pargs*, i32, i8**, i32) #3

; Function Attrs: optsize
declare void @pr_fns(%struct._IO_FILE*, i32, %struct.t_filenm*) #3

; Function Attrs: optsize
declare void @print_pargs(%struct._IO_FILE*, i32, %struct.t_pargs*) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct._IO_FILE* @man_file(i8* %program, i8* %mantp) #2 {
entry:
  %buf = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #7
  %call = call i8* @strrchr(i8* %program, i32 47) #9
  %cmp = icmp eq i8* %call, null
  %add.ptr = getelementptr inbounds i8* %call, i64 1
  %pr.0 = select i1 %cmp, i8* %program, i8* %add.ptr
  %call1 = call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([6 x i8]* @.str17, i64 0, i64 0)) #9
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.else5, label %if.then3

if.then3:                                         ; preds = %entry
  %call4 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str71, i64 0, i64 0), i8* %pr.0, i8* %mantp) #10
  br label %if.end8

if.else5:                                         ; preds = %entry
  %call7 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str72, i64 0, i64 0), i8* %pr.0) #10
  br label %if.end8

if.end8:                                          ; preds = %if.else5, %if.then3
  %call10 = call %struct._IO_FILE* @ffopen(i8* %0, i8* getelementptr inbounds ([2 x i8]* @.str73, i64 0, i64 0)) #10
  call void @llvm.lifetime.end(i64 256, i8* %0) #7
  ret %struct._IO_FILE* %call10
}

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #3

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #8

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #1

; Function Attrs: optsize
declare i32 @is_hidden(%struct.t_pargs*) #3

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #6

; Function Attrs: nounwind optsize
declare i8* @strcat(i8*, i8* nocapture) #6

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @init_time_factor() #2 {
entry:
  %0 = load float* @timefactor, align 4, !tbaa !3
  %sub = fadd float %0, 1.234500e+04
  %fabsf = tail call float @fabsf(float %sub) #5
  %1 = fpext float %fabsf to double
  %cmp = fcmp olt double %1, 1.200000e-38
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 1), align 8, !tbaa !0
  %tobool9.i = icmp eq i8* %2, null
  br i1 %tobool9.i, label %nenum.exit, label %land.rhs.lr.ph.i

land.rhs.lr.ph.i:                                 ; preds = %if.then
  %3 = load i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 0), align 16, !tbaa !0
  br label %land.rhs.i

while.cond.i:                                     ; preds = %land.rhs.i
  %arrayidx.i = getelementptr inbounds [10 x i8*]* @timestr, i64 0, i64 %indvars.iv.next.i
  %4 = load i8** %arrayidx.i, align 8, !tbaa !0
  %tobool.i = icmp eq i8* %4, null
  br i1 %tobool.i, label %nenum.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %while.cond.i, %land.rhs.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %land.rhs.lr.ph.i ], [ %indvars.iv.next.i, %while.cond.i ]
  %5 = phi i8* [ %2, %land.rhs.lr.ph.i ], [ %4, %while.cond.i ]
  %i.010.i = phi i32 [ 1, %land.rhs.lr.ph.i ], [ %inc.i, %while.cond.i ]
  %cmp.i = icmp eq i8* %3, %5
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %inc.i = add nsw i32 %i.010.i, 1
  br i1 %cmp.i, label %nenum.exit, label %while.cond.i

nenum.exit:                                       ; preds = %while.cond.i, %land.rhs.i, %if.then
  %i.0.lcssa.i = phi i32 [ 1, %if.then ], [ %inc.i, %while.cond.i ], [ %i.010.i, %land.rhs.i ]
  %idxprom = sext i32 %i.0.lcssa.i to i64
  %arrayidx = getelementptr inbounds [10 x float]* @timefactors, i64 0, i64 %idxprom
  %6 = load float* %arrayidx, align 4, !tbaa !3
  store float %6, float* @timefactor, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %nenum.exit, %entry
  ret void
}

declare float @fabsf(float)

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind optsize readonly }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind optsize readnone }
attributes #12 = { optsize }
attributes #13 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
!6 = metadata !{metadata !"short", metadata !1}
!7 = metadata !{metadata !"long", metadata !1}

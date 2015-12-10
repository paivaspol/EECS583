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
  %0 = load i8** @program, align 8, !dbg !635, !tbaa !636
  %tobool = icmp eq i8* %0, null, !dbg !635
  br i1 %tobool, label %return, label %if.then, !dbg !635

if.then:                                          ; preds = %entry
  %call = tail call i8* @strrchr(i8* %0, i32 47) #10, !dbg !639
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !93), !dbg !639
  %cmp = icmp eq i8* %call, null, !dbg !639
  %add.ptr = getelementptr inbounds i8* %call, i64 1, !dbg !641
  %.add.ptr = select i1 %cmp, i8* %0, i8* %add.ptr, !dbg !639
  ret i8* %.add.ptr, !dbg !639

return:                                           ; preds = %entry
  ret i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), !dbg !642
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize readonly
declare i8* @strrchr(i8*, i32) #2

; Function Attrs: nounwind optsize readonly uwtable
define i8* @Program() #0 {
entry:
  %0 = load i8** @program, align 8, !dbg !643, !tbaa !636
  %tobool = icmp eq i8* %0, null, !dbg !643
  %. = select i1 %tobool, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* %0, !dbg !644
  ret i8* %., !dbg !645
}

; Function Attrs: nounwind optsize uwtable
define void @set_program_name(i8* nocapture %argvzero) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %argvzero}, i64 0, metadata !99), !dbg !646
  %0 = load i8** @program, align 8, !dbg !647, !tbaa !636
  %cmp = icmp eq i8* %0, null, !dbg !647
  br i1 %cmp, label %if.then, label %if.end6, !dbg !647

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* %argvzero) #10, !dbg !648
  %cmp1 = icmp ugt i64 %call, 3, !dbg !648
  br i1 %cmp1, label %land.lhs.true, label %if.else, !dbg !648

land.lhs.true:                                    ; preds = %if.then
  %call2 = tail call i32 @strncmp(i8* %argvzero, i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i64 3) #10, !dbg !648
  %tobool = icmp eq i32 %call2, 0, !dbg !648
  br i1 %tobool, label %if.then3, label %if.else, !dbg !648

if.then3:                                         ; preds = %land.lhs.true
  %add.ptr = getelementptr inbounds i8* %argvzero, i64 3, !dbg !650
  %call4 = tail call noalias i8* @strdup(i8* %add.ptr) #11, !dbg !650
  store i8* %call4, i8** @program, align 8, !dbg !650, !tbaa !636
  br label %if.end6, !dbg !650

if.else:                                          ; preds = %land.lhs.true, %if.then
  %call5 = tail call noalias i8* @strdup(i8* %argvzero) #11, !dbg !651
  store i8* %call5, i8** @program, align 8, !dbg !651, !tbaa !636
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.else, %entry
  ret void, !dbg !652
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #2

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture) #4

; Function Attrs: nounwind optsize readnone uwtable
define i32 @bRmod(double %a, double %b) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{double %a}, i64 0, metadata !106), !dbg !653
  tail call void @llvm.dbg.value(metadata !{double %b}, i64 0, metadata !107), !dbg !653
  tail call void @llvm.dbg.value(metadata !654, i64 0, metadata !109), !dbg !655
  %mul = fmul double %a, 0x3FF00000A10FAFA0, !dbg !656
  %div = fdiv double %mul, %b, !dbg !656
  %conv = fptosi double %div to i32, !dbg !656
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !108), !dbg !656
  %conv1 = sitofp i32 %conv to double, !dbg !657
  %mul2 = fmul double %conv1, %b, !dbg !657
  %sub = fsub double %a, %mul2, !dbg !657
  %call = tail call double @fabs(double %sub) #12, !dbg !657
  %call3 = tail call double @fabs(double %a) #12, !dbg !657
  %mul4 = fmul double %call3, 6.000000e-07, !dbg !657
  %not.cmp = fcmp ole double %call, %mul4, !dbg !658
  %. = zext i1 %not.cmp to i32, !dbg !658
  ret i32 %., !dbg !658
}

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #6

; Function Attrs: nounwind optsize uwtable
define i32 @check_times2(float %t, float %t0, float %tp, float %tpp) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %t}, i64 0, metadata !116), !dbg !659
  tail call void @llvm.dbg.value(metadata !{float %t0}, i64 0, metadata !117), !dbg !659
  tail call void @llvm.dbg.value(metadata !{float %tp}, i64 0, metadata !118), !dbg !659
  tail call void @llvm.dbg.value(metadata !{float %tpp}, i64 0, metadata !119), !dbg !659
  %sub = fsub float %t, %tp, !dbg !660
  %cmp = fcmp ogt float %sub, 0.000000e+00, !dbg !660
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !660

land.lhs.true:                                    ; preds = %entry
  %sub1 = fsub float %tp, %tpp, !dbg !660
  %cmp2 = fcmp ogt float %sub1, 0.000000e+00, !dbg !660
  br i1 %cmp2, label %if.then, label %if.end, !dbg !660

if.then:                                          ; preds = %land.lhs.true
  %cmp5 = fcmp olt float %sub, %sub1, !dbg !661
  %sub.sub1 = select i1 %cmp5, float %sub, float %sub1, !dbg !661
  %conv = fpext float %sub.sub1 to double, !dbg !661
  %mul = fmul double %conv, 1.000000e-01, !dbg !661
  %conv8 = fptrunc double %mul to float, !dbg !661
  tail call void @llvm.dbg.value(metadata !{float %conv8}, i64 0, metadata !121), !dbg !661
  br label %if.end, !dbg !661

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %margin.0 = phi float [ %conv8, %if.then ], [ 0.000000e+00, %land.lhs.true ], [ 0.000000e+00, %entry ]
  tail call void @llvm.dbg.value(metadata !662, i64 0, metadata !120), !dbg !663
  %0 = load float* @tbegin, align 4, !dbg !664, !tbaa !665
  %cmp10 = fcmp ult float %0, 0.000000e+00, !dbg !664
  %cmp13 = fcmp ugt float %0, %t, !dbg !664
  %or.cond = or i1 %cmp10, %cmp13, !dbg !664
  br i1 %or.cond, label %lor.lhs.false, label %land.lhs.true19, !dbg !664

lor.lhs.false:                                    ; preds = %if.end
  %conv15 = fpext float %0 to double, !dbg !664
  %sub16 = fadd double %conv15, 1.000000e+00, !dbg !664
  %call = tail call double @fabs(double %sub16) #12, !dbg !664
  %cmp17 = fcmp olt double %call, 1.200000e-38, !dbg !664
  br i1 %cmp17, label %land.lhs.true19, label %lor.lhs.false.if.else43_crit_edge, !dbg !664

lor.lhs.false.if.else43_crit_edge:                ; preds = %lor.lhs.false
  %.pre = load float* @tend, align 4, !dbg !666, !tbaa !665
  br label %if.else43, !dbg !664

land.lhs.true19:                                  ; preds = %if.end, %lor.lhs.false
  %1 = load float* @tend, align 4, !dbg !664, !tbaa !665
  %cmp21 = fcmp ult float %1, 0.000000e+00, !dbg !664
  br i1 %cmp21, label %lor.lhs.false26, label %land.lhs.true23, !dbg !664

land.lhs.true23:                                  ; preds = %land.lhs.true19
  %add = fadd float %margin.0, %1, !dbg !664
  %cmp24 = fcmp ult float %add, %t, !dbg !664
  br i1 %cmp24, label %lor.lhs.false26, label %if.then32, !dbg !664

lor.lhs.false26:                                  ; preds = %land.lhs.true23, %land.lhs.true19
  %conv27 = fpext float %1 to double, !dbg !667
  %sub28 = fadd double %conv27, 1.000000e+00, !dbg !667
  %call29 = tail call double @fabs(double %sub28) #12, !dbg !667
  %cmp30 = fcmp olt double %call29, 1.200000e-38, !dbg !667
  br i1 %cmp30, label %if.then32, label %if.else43, !dbg !667

if.then32:                                        ; preds = %land.lhs.true23, %lor.lhs.false26
  %2 = load float* @tdelta, align 4, !dbg !668, !tbaa !665
  %cmp33 = fcmp ogt float %2, 0.000000e+00, !dbg !668
  br i1 %cmp33, label %land.lhs.true35, label %if.else41, !dbg !668

land.lhs.true35:                                  ; preds = %if.then32
  %sub36 = fsub float %t, %t0, !dbg !668
  %conv37 = fpext float %sub36 to double, !dbg !668
  %conv38 = fpext float %2 to double, !dbg !668
  tail call void @llvm.dbg.value(metadata !{double %conv37}, i64 0, metadata !670) #8, !dbg !671
  tail call void @llvm.dbg.value(metadata !{double %conv38}, i64 0, metadata !672) #8, !dbg !671
  tail call void @llvm.dbg.value(metadata !654, i64 0, metadata !673) #8, !dbg !674
  %mul.i = fmul double %conv37, 0x3FF00000A10FAFA0, !dbg !675
  %div.i = fdiv double %mul.i, %conv38, !dbg !675
  %conv.i = fptosi double %div.i to i32, !dbg !675
  tail call void @llvm.dbg.value(metadata !{i32 %conv.i}, i64 0, metadata !676) #8, !dbg !675
  %conv1.i = sitofp i32 %conv.i to double, !dbg !677
  %mul2.i = fmul double %conv38, %conv1.i, !dbg !677
  %sub.i = fsub double %conv37, %mul2.i, !dbg !677
  %call.i = tail call double @fabs(double %sub.i) #12, !dbg !677
  %fabsf = tail call float @fabsf(float %sub36) #6, !dbg !677
  %3 = fpext float %fabsf to double, !dbg !677
  %mul4.i = fmul double %3, 6.000000e-07, !dbg !677
  %not.cmp.i = fcmp ugt double %call.i, %mul4.i, !dbg !678
  br i1 %not.cmp.i, label %if.end54, label %if.else41, !dbg !668

if.else41:                                        ; preds = %land.lhs.true35, %if.then32
  tail call void @llvm.dbg.value(metadata !84, i64 0, metadata !120), !dbg !679
  br label %if.end54

if.else43:                                        ; preds = %lor.lhs.false.if.else43_crit_edge, %lor.lhs.false26
  %4 = phi float [ %.pre, %lor.lhs.false.if.else43_crit_edge ], [ %1, %lor.lhs.false26 ]
  %conv44 = fpext float %4 to double, !dbg !666
  %sub45 = fadd double %conv44, 1.000000e+00, !dbg !666
  %call46 = tail call double @fabs(double %sub45) #12, !dbg !666
  %cmp47 = fcmp ule double %call46, 1.200000e-38, !dbg !666
  %cmp50 = fcmp ugt float %4, %t, !dbg !666
  %or.cond80 = or i1 %cmp47, %cmp50, !dbg !666
  tail call void @llvm.dbg.value(metadata !680, i64 0, metadata !120), !dbg !681
  %. = select i1 %or.cond80, i32 -1, i32 1, !dbg !666
  br label %if.end54, !dbg !666

if.end54:                                         ; preds = %land.lhs.true35, %if.else43, %if.else41
  %5 = phi float [ %1, %if.else41 ], [ %1, %land.lhs.true35 ], [ %4, %if.else43 ]
  %r.0 = phi i32 [ 0, %if.else41 ], [ -1, %land.lhs.true35 ], [ %., %if.else43 ]
  %6 = load %struct._IO_FILE** @debug, align 8, !dbg !682, !tbaa !636
  %tobool55 = icmp eq %struct._IO_FILE* %6, null, !dbg !682
  br i1 %tobool55, label %if.end63, label %if.then56, !dbg !682

if.then56:                                        ; preds = %if.end54
  %conv57 = fpext float %t to double, !dbg !682
  %conv58 = fpext float %t0 to double, !dbg !682
  %conv59 = fpext float %0 to double, !dbg !682
  %conv60 = fpext float %5 to double, !dbg !682
  %7 = load float* @tdelta, align 4, !dbg !682, !tbaa !665
  %conv61 = fpext float %7 to double, !dbg !682
  %call62 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([38 x i8]* @.str2, i64 0, i64 0), double %conv57, double %conv58, double %conv59, double %conv60, double %conv61, i32 %r.0) #11, !dbg !682
  br label %if.end63, !dbg !682

if.end63:                                         ; preds = %if.end54, %if.then56
  ret i32 %r.0, !dbg !683
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind optsize uwtable
define i32 @check_times(float %t) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %t}, i64 0, metadata !126), !dbg !684
  %call = tail call i32 @check_times2(float %t, float %t, float %t, float %t) #13, !dbg !685
  ret i32 %call, !dbg !685
}

; Function Attrs: nounwind optsize readonly uwtable
define i8* @time_unit() #0 {
entry:
  %0 = load i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 0), align 16, !dbg !686, !tbaa !636
  ret i8* %0, !dbg !686
}

; Function Attrs: nounwind optsize uwtable
define i8* @time_label() #3 {
entry:
  %0 = load i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 0), align 16, !dbg !687, !tbaa !636
  %tobool = icmp ne i8* %0, null, !dbg !687
  %cond = select i1 %tobool, i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), !dbg !687
  %call = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([20 x i8]* @time_label.label, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i8* %cond) #11, !dbg !687
  ret i8* getelementptr inbounds ([20 x i8]* @time_label.label, i64 0, i64 0), !dbg !688
}

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind optsize uwtable
define i8* @xvgr_tlabel() #3 {
entry:
  tail call void @llvm.dbg.value(metadata !689, i64 0, metadata !690), !dbg !692
  tail call void @llvm.dbg.value(metadata !680, i64 0, metadata !693), !dbg !694
  %0 = load i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 1), align 8, !dbg !695, !tbaa !636
  %tobool9.i = icmp eq i8* %0, null, !dbg !695
  br i1 %tobool9.i, label %nenum.exit15, label %land.rhs.lr.ph.i, !dbg !695

land.rhs.lr.ph.i:                                 ; preds = %entry
  %1 = load i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 0), align 16, !dbg !695, !tbaa !636
  br label %land.rhs.i, !dbg !695

while.cond.i:                                     ; preds = %land.rhs.i
  %arrayidx.i = getelementptr inbounds [10 x i8*]* @timestr, i64 0, i64 %indvars.iv.next.i, !dbg !695
  %2 = load i8** %arrayidx.i, align 8, !dbg !695, !tbaa !636
  %tobool.i = icmp eq i8* %2, null, !dbg !695
  br i1 %tobool.i, label %nenum.exit, label %land.rhs.i, !dbg !695

land.rhs.i:                                       ; preds = %while.cond.i, %land.rhs.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %land.rhs.lr.ph.i ], [ %indvars.iv.next.i, %while.cond.i ]
  %3 = phi i8* [ %0, %land.rhs.lr.ph.i ], [ %2, %while.cond.i ]
  %i.010.i = phi i32 [ 1, %land.rhs.lr.ph.i ], [ %inc.i, %while.cond.i ]
  %cmp.i = icmp eq i8* %1, %3, !dbg !695
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !695
  %inc.i = add nsw i32 %i.010.i, 1, !dbg !696
  tail call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !693), !dbg !696
  br i1 %cmp.i, label %nenum.exit, label %while.cond.i

nenum.exit:                                       ; preds = %while.cond.i, %land.rhs.i
  %i.0.lcssa.i = phi i32 [ %i.010.i, %land.rhs.i ], [ %inc.i, %while.cond.i ]
  %tobool = icmp eq i32 %i.0.lcssa.i, 0, !dbg !691
  br i1 %tobool, label %cond.end, label %land.rhs.i13, !dbg !691

while.cond.i7:                                    ; preds = %land.rhs.i13
  %arrayidx.i5 = getelementptr inbounds [10 x i8*]* @timestr, i64 0, i64 %indvars.iv.next.i11, !dbg !695
  %4 = load i8** %arrayidx.i5, align 8, !dbg !695, !tbaa !636
  %tobool.i6 = icmp eq i8* %4, null, !dbg !695
  br i1 %tobool.i6, label %nenum.exit15, label %land.rhs.i13, !dbg !695

land.rhs.i13:                                     ; preds = %nenum.exit, %while.cond.i7
  %indvars.iv.i8 = phi i64 [ %indvars.iv.next.i11, %while.cond.i7 ], [ 1, %nenum.exit ]
  %5 = phi i8* [ %4, %while.cond.i7 ], [ %0, %nenum.exit ]
  %i.010.i9 = phi i32 [ %inc.i12, %while.cond.i7 ], [ 1, %nenum.exit ]
  %cmp.i10 = icmp eq i8* %1, %5, !dbg !695
  %indvars.iv.next.i11 = add i64 %indvars.iv.i8, 1, !dbg !695
  %inc.i12 = add nsw i32 %i.010.i9, 1, !dbg !696
  tail call void @llvm.dbg.value(metadata !{i32 %inc.i12}, i64 0, metadata !693), !dbg !696
  br i1 %cmp.i10, label %nenum.exit15, label %while.cond.i7

nenum.exit15:                                     ; preds = %while.cond.i7, %land.rhs.i13, %entry
  %i.0.lcssa.i14 = phi i32 [ 1, %entry ], [ %inc.i12, %while.cond.i7 ], [ %i.010.i9, %land.rhs.i13 ]
  %idxprom = sext i32 %i.0.lcssa.i14 to i64, !dbg !691
  %arrayidx = getelementptr inbounds [10 x i8*]* @xvgrtimestr, i64 0, i64 %idxprom, !dbg !691
  %6 = load i8** %arrayidx, align 8, !dbg !691, !tbaa !636
  br label %cond.end, !dbg !691

cond.end:                                         ; preds = %nenum.exit, %nenum.exit15
  %cond = phi i8* [ %6, %nenum.exit15 ], [ getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), %nenum.exit ], !dbg !691
  %call2 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([20 x i8]* @xvgr_tlabel.label, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i8* %cond) #11, !dbg !691
  ret i8* getelementptr inbounds ([20 x i8]* @xvgr_tlabel.label, i64 0, i64 0), !dbg !697
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @nenum(i8** nocapture %enumc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %enumc}, i64 0, metadata !425), !dbg !698
  tail call void @llvm.dbg.value(metadata !680, i64 0, metadata !426), !dbg !699
  %arrayidx8 = getelementptr inbounds i8** %enumc, i64 1, !dbg !700
  %0 = load i8** %arrayidx8, align 8, !dbg !700, !tbaa !636
  %tobool9 = icmp eq i8* %0, null, !dbg !700
  br i1 %tobool9, label %while.end, label %land.rhs.lr.ph, !dbg !700

land.rhs.lr.ph:                                   ; preds = %entry
  %1 = load i8** %enumc, align 8, !dbg !700, !tbaa !636
  br label %land.rhs, !dbg !700

while.cond:                                       ; preds = %land.rhs
  %arrayidx = getelementptr inbounds i8** %enumc, i64 %indvars.iv.next, !dbg !700
  %2 = load i8** %arrayidx, align 8, !dbg !700, !tbaa !636
  %tobool = icmp eq i8* %2, null, !dbg !700
  br i1 %tobool, label %while.end, label %land.rhs, !dbg !700

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.cond
  %indvars.iv = phi i64 [ 1, %land.rhs.lr.ph ], [ %indvars.iv.next, %while.cond ]
  %3 = phi i8* [ %0, %land.rhs.lr.ph ], [ %2, %while.cond ]
  %i.010 = phi i32 [ 1, %land.rhs.lr.ph ], [ %inc, %while.cond ]
  %cmp = icmp eq i8* %1, %3, !dbg !700
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !700
  %inc = add nsw i32 %i.010, 1, !dbg !701
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !426), !dbg !701
  br i1 %cmp, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond, %land.rhs, %entry
  %i.0.lcssa = phi i32 [ 1, %entry ], [ %i.010, %land.rhs ], [ %inc, %while.cond ]
  ret i32 %i.0.lcssa, !dbg !702
}

; Function Attrs: nounwind optsize uwtable
define float @time_factor() #3 {
entry:
  tail call fastcc void @init_time_factor() #13, !dbg !703
  %0 = load float* @timefactor, align 4, !dbg !704, !tbaa !665
  ret float %0, !dbg !704
}

; Function Attrs: nounwind optsize uwtable
define float @convert_time(float %time) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %time}, i64 0, metadata !137), !dbg !705
  tail call fastcc void @init_time_factor() #13, !dbg !706
  %0 = load float* @timefactor, align 4, !dbg !707, !tbaa !665
  %mul = fmul float %0, %time, !dbg !707
  ret float %mul, !dbg !707
}

; Function Attrs: nounwind optsize uwtable
define void @convert_times(i32 %n, float* nocapture %time) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !143), !dbg !708
  tail call void @llvm.dbg.value(metadata !{float* %time}, i64 0, metadata !144), !dbg !708
  tail call fastcc void @init_time_factor() #13, !dbg !709
  %0 = load float* @timefactor, align 4, !dbg !710, !tbaa !665
  %sub = fadd float %0, -1.000000e+00, !dbg !710
  %fabsf = tail call float @fabsf(float %sub) #6, !dbg !710
  %1 = fpext float %fabsf to double, !dbg !710
  %cmp = fcmp ogt double %1, 1.200000e-38, !dbg !710
  %cmp26 = icmp sgt i32 %n, 0, !dbg !711
  %or.cond = and i1 %cmp, %cmp26, !dbg !710
  br i1 %or.cond, label %for.body, label %if.end, !dbg !710

for.body:                                         ; preds = %entry, %for.body.for.body_crit_edge
  %2 = phi float [ %.pre, %for.body.for.body_crit_edge ], [ %0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %time, i64 %indvars.iv, !dbg !713
  %3 = load float* %arrayidx, align 4, !dbg !713, !tbaa !665
  %mul = fmul float %2, %3, !dbg !713
  store float %mul, float* %arrayidx, align 4, !dbg !713, !tbaa !665
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !711
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !711
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !711
  br i1 %exitcond, label %if.end, label %for.body.for.body_crit_edge, !dbg !711

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load float* @timefactor, align 4, !dbg !713, !tbaa !665
  br label %for.body, !dbg !711

if.end:                                           ; preds = %for.body, %entry
  ret void, !dbg !714
}

; Function Attrs: nounwind optsize uwtable
define void @default_time() #3 {
entry:
  %0 = load i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 1), align 8, !dbg !715, !tbaa !636
  store i8* %0, i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 0), align 16, !dbg !715, !tbaa !636
  %1 = load float* getelementptr inbounds ([10 x float]* @timefactors, i64 0, i64 1), align 4, !dbg !716, !tbaa !665
  store float %1, float* @timefactor, align 4, !dbg !716, !tbaa !665
  %2 = load i8** getelementptr inbounds ([10 x i8*]* @xvgrtimestr, i64 0, i64 1), align 8, !dbg !717, !tbaa !636
  store i8* %2, i8** getelementptr inbounds ([10 x i8*]* @xvgrtimestr, i64 0, i64 0), align 16, !dbg !717, !tbaa !636
  ret void, !dbg !718
}

; Function Attrs: nounwind optsize uwtable
define %struct.t_topology* @read_top(i8* %fn) #3 {
entry:
  %step = alloca i32, align 4
  %natoms = alloca i32, align 4
  %t = alloca float, align 4
  %lambda = alloca float, align 4
  call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !386), !dbg !719
  call void @llvm.dbg.declare(metadata !{i32* %step}, metadata !387), !dbg !720
  call void @llvm.dbg.declare(metadata !{i32* %natoms}, metadata !388), !dbg !720
  call void @llvm.dbg.declare(metadata !{float* %t}, metadata !389), !dbg !721
  call void @llvm.dbg.declare(metadata !{float* %lambda}, metadata !390), !dbg !721
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 264, i32 1, i32 50264) #11, !dbg !722
  %0 = bitcast i8* %call to %struct.t_topology*, !dbg !722
  call void @llvm.dbg.value(metadata !{%struct.t_topology* %0}, i64 0, metadata !391), !dbg !722
  call void @read_tpx(i8* %fn, i32* %step, float* %t, float* %lambda, %struct.t_inputrec* null, [3 x float]* null, i32* %natoms, [3 x float]* null, [3 x float]* null, [3 x float]* null, %struct.t_topology* %0) #11, !dbg !723
  ret %struct.t_topology* %0, !dbg !724
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #7

; Function Attrs: optsize
declare void @read_tpx(i8*, i32*, float*, float*, %struct.t_inputrec*, [3 x float]*, i32*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_topology*) #7

; Function Attrs: nounwind optsize uwtable
define void @mk_single_top(%struct.t_topology* nocapture %top) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_topology* %top}, i64 0, metadata !396), !dbg !725
  tail call void @llvm.dbg.value(metadata !84, i64 0, metadata !397), !dbg !726
  br label %for.body, !dbg !726

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv35 = phi i64 [ 0, %entry ], [ %indvars.iv.next36, %for.body ]
  %arrayidx1 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv35, i32 0, i64 255, !dbg !728
  %0 = load i32* %arrayidx1, align 4, !dbg !728, !tbaa !729
  %arrayidx6 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv35, i32 0, i64 0, !dbg !728
  store i32 %0, i32* %arrayidx6, align 4, !dbg !728, !tbaa !729
  %indvars.iv.next36 = add i64 %indvars.iv35, 1, !dbg !726
  %lftr.wideiv37 = trunc i64 %indvars.iv.next36 to i32, !dbg !726
  %exitcond38 = icmp eq i32 %lftr.wideiv37, 3, !dbg !726
  br i1 %exitcond38, label %for.body9, label %for.body, !dbg !726

for.body9:                                        ; preds = %for.body, %for.body9
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body9 ], [ 0, %for.body ]
  %arrayidx13 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv, i32 1, i64 255, !dbg !730
  %1 = load i32* %arrayidx13, align 4, !dbg !730, !tbaa !729
  %arrayidx19 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv, i32 1, i64 0, !dbg !730
  store i32 %1, i32* %arrayidx19, align 4, !dbg !730, !tbaa !729
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !732
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !732
  %exitcond = icmp eq i32 %lftr.wideiv, 44, !dbg !732
  br i1 %exitcond, label %for.end22, label %for.body9, !dbg !732

for.end22:                                        ; preds = %for.body9
  ret void, !dbg !733
}

; Function Attrs: nounwind optsize uwtable
define i32 @iscan(i32 %argc, i8** nocapture %argv, i32* nocapture %i) #3 {
entry:
  %var = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32 %argc}, i64 0, metadata !402), !dbg !734
  call void @llvm.dbg.value(metadata !{i8** %argv}, i64 0, metadata !403), !dbg !734
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !404), !dbg !734
  call void @llvm.dbg.declare(metadata !{i32* %var}, metadata !405), !dbg !735
  %0 = load i32* %i, align 4, !dbg !736, !tbaa !729
  %add = add nsw i32 %0, 1, !dbg !736
  %cmp = icmp slt i32 %add, %argc, !dbg !736
  br i1 %cmp, label %if.then, label %if.else, !dbg !736

if.then:                                          ; preds = %entry
  store i32 %add, i32* %i, align 4, !dbg !737, !tbaa !729
  %idxprom = sext i32 %add to i64, !dbg !737
  %arrayidx = getelementptr inbounds i8** %argv, i64 %idxprom, !dbg !737
  %1 = load i8** %arrayidx, align 8, !dbg !737, !tbaa !636
  %call = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i32* %var) #11, !dbg !737
  %tobool = icmp eq i32 %call, 0, !dbg !737
  br i1 %tobool, label %if.then1, label %if.end6, !dbg !737

if.then1:                                         ; preds = %if.then
  %2 = load i32* %i, align 4, !dbg !739, !tbaa !729
  %sub = add nsw i32 %2, -1, !dbg !739
  %idxprom2 = sext i32 %sub to i64, !dbg !739
  %arrayidx3 = getelementptr inbounds i8** %argv, i64 %idxprom2, !dbg !739
  %3 = load i8** %arrayidx3, align 8, !dbg !739, !tbaa !636
  call void @llvm.dbg.value(metadata !740, i64 0, metadata !741) #8, !dbg !742
  call void @llvm.dbg.value(metadata !{i8* %3}, i64 0, metadata !743) #8, !dbg !742
  %cmp.i = icmp eq i8* %3, null, !dbg !744
  br i1 %cmp.i, label %if.end6, label %if.then.i, !dbg !744

if.then.i:                                        ; preds = %if.then1
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([36 x i8]* @.str85, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str8, i64 0, i64 0), i8* %3) #11, !dbg !745
  br label %if.end6, !dbg !745

if.else:                                          ; preds = %entry
  %idxprom4 = sext i32 %0 to i64, !dbg !746
  %arrayidx5 = getelementptr inbounds i8** %argv, i64 %idxprom4, !dbg !746
  %4 = load i8** %arrayidx5, align 8, !dbg !746, !tbaa !636
  call void @llvm.dbg.value(metadata !740, i64 0, metadata !747) #8, !dbg !748
  call void @llvm.dbg.value(metadata !{i8* %4}, i64 0, metadata !749) #8, !dbg !748
  %cmp.i11 = icmp eq i8* %4, null, !dbg !750
  br i1 %cmp.i11, label %if.end6, label %if.then.i12, !dbg !750

if.then.i12:                                      ; preds = %if.else
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([36 x i8]* @.str85, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str8, i64 0, i64 0), i8* %4) #11, !dbg !751
  br label %if.end6, !dbg !751

if.end6:                                          ; preds = %if.then1, %if.then, %if.then.i12, %if.else, %if.then.i
  call void @llvm.dbg.value(metadata !{i32* %var}, i64 0, metadata !405), !dbg !752
  %5 = load i32* %var, align 4, !dbg !752, !tbaa !729
  ret i32 %5, !dbg !752
}

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind optsize uwtable
define double @dscan(i32 %argc, i8** nocapture %argv, i32* nocapture %i) #3 {
entry:
  %var = alloca double, align 8
  call void @llvm.dbg.value(metadata !{i32 %argc}, i64 0, metadata !410), !dbg !753
  call void @llvm.dbg.value(metadata !{i8** %argv}, i64 0, metadata !411), !dbg !753
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !412), !dbg !753
  call void @llvm.dbg.declare(metadata !{double* %var}, metadata !413), !dbg !754
  %0 = load i32* %i, align 4, !dbg !755, !tbaa !729
  %add = add nsw i32 %0, 1, !dbg !755
  %cmp = icmp slt i32 %add, %argc, !dbg !755
  br i1 %cmp, label %if.then, label %if.else, !dbg !755

if.then:                                          ; preds = %entry
  store i32 %add, i32* %i, align 4, !dbg !756, !tbaa !729
  %idxprom = sext i32 %add to i64, !dbg !756
  %arrayidx = getelementptr inbounds i8** %argv, i64 %idxprom, !dbg !756
  %1 = load i8** %arrayidx, align 8, !dbg !756, !tbaa !636
  %call = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str9, i64 0, i64 0), double* %var) #11, !dbg !756
  %tobool = icmp eq i32 %call, 0, !dbg !756
  br i1 %tobool, label %if.then1, label %if.end6, !dbg !756

if.then1:                                         ; preds = %if.then
  %2 = load i32* %i, align 4, !dbg !758, !tbaa !729
  %sub = add nsw i32 %2, -1, !dbg !758
  %idxprom2 = sext i32 %sub to i64, !dbg !758
  %arrayidx3 = getelementptr inbounds i8** %argv, i64 %idxprom2, !dbg !758
  %3 = load i8** %arrayidx3, align 8, !dbg !758, !tbaa !636
  call void @llvm.dbg.value(metadata !759, i64 0, metadata !760) #8, !dbg !761
  call void @llvm.dbg.value(metadata !{i8* %3}, i64 0, metadata !762) #8, !dbg !761
  %cmp.i = icmp eq i8* %3, null, !dbg !763
  br i1 %cmp.i, label %if.end6, label %if.then.i, !dbg !763

if.then.i:                                        ; preds = %if.then1
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([36 x i8]* @.str85, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0), i8* %3) #11, !dbg !764
  br label %if.end6, !dbg !764

if.else:                                          ; preds = %entry
  %idxprom4 = sext i32 %0 to i64, !dbg !765
  %arrayidx5 = getelementptr inbounds i8** %argv, i64 %idxprom4, !dbg !765
  %4 = load i8** %arrayidx5, align 8, !dbg !765, !tbaa !636
  call void @llvm.dbg.value(metadata !759, i64 0, metadata !766) #8, !dbg !767
  call void @llvm.dbg.value(metadata !{i8* %4}, i64 0, metadata !768) #8, !dbg !767
  %cmp.i11 = icmp eq i8* %4, null, !dbg !769
  br i1 %cmp.i11, label %if.end6, label %if.then.i12, !dbg !769

if.then.i12:                                      ; preds = %if.else
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([36 x i8]* @.str85, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0), i8* %4) #11, !dbg !770
  br label %if.end6, !dbg !770

if.end6:                                          ; preds = %if.then1, %if.then, %if.then.i12, %if.else, %if.then.i
  call void @llvm.dbg.value(metadata !{double* %var}, i64 0, metadata !413), !dbg !771
  %5 = load double* %var, align 8, !dbg !771, !tbaa !772
  ret double %5, !dbg !771
}

; Function Attrs: nounwind optsize uwtable
define i8* @sscan(i32 %argc, i8** nocapture %argv, i32* nocapture %i) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %argc}, i64 0, metadata !418), !dbg !773
  tail call void @llvm.dbg.value(metadata !{i8** %argv}, i64 0, metadata !419), !dbg !773
  tail call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !420), !dbg !773
  %0 = load i32* %i, align 4, !dbg !774, !tbaa !729
  %add = add nsw i32 %0, 1, !dbg !774
  %cmp = icmp slt i32 %add, %argc, !dbg !774
  br i1 %cmp, label %if.then, label %if.else, !dbg !774

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %add to i64, !dbg !775
  %arrayidx = getelementptr inbounds i8** %argv, i64 %idxprom, !dbg !775
  %1 = load i8** %arrayidx, align 8, !dbg !775, !tbaa !636
  %2 = load i8* %1, align 1, !dbg !775, !tbaa !637
  %cmp3 = icmp eq i8 %2, 45, !dbg !775
  br i1 %cmp3, label %land.lhs.true, label %if.end21, !dbg !775

land.lhs.true:                                    ; preds = %if.then
  %add5 = add nsw i32 %0, 2, !dbg !775
  %cmp6 = icmp slt i32 %add5, %argc, !dbg !775
  br i1 %cmp6, label %land.lhs.true8, label %if.end21, !dbg !775

land.lhs.true8:                                   ; preds = %land.lhs.true
  %idxprom10 = sext i32 %add5 to i64, !dbg !775
  %arrayidx11 = getelementptr inbounds i8** %argv, i64 %idxprom10, !dbg !775
  %3 = load i8** %arrayidx11, align 8, !dbg !775, !tbaa !636
  %4 = load i8* %3, align 1, !dbg !775, !tbaa !637
  %cmp14 = icmp eq i8 %4, 45, !dbg !775
  br i1 %cmp14, label %if.end21, label %if.then16, !dbg !775

if.then16:                                        ; preds = %land.lhs.true8
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !777, !tbaa !636
  %idxprom17 = sext i32 %0 to i64, !dbg !777
  %arrayidx18 = getelementptr inbounds i8** %argv, i64 %idxprom17, !dbg !777
  %6 = load i8** %arrayidx18, align 8, !dbg !777, !tbaa !636
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([49 x i8]* @.str11, i64 0, i64 0), i8* %6) #11, !dbg !777
  br label %if.end21, !dbg !777

if.else:                                          ; preds = %entry
  %idxprom19 = sext i32 %0 to i64, !dbg !778
  %arrayidx20 = getelementptr inbounds i8** %argv, i64 %idxprom19, !dbg !778
  %7 = load i8** %arrayidx20, align 8, !dbg !778, !tbaa !636
  tail call void @llvm.dbg.value(metadata !779, i64 0, metadata !780) #8, !dbg !781
  tail call void @llvm.dbg.value(metadata !{i8* %7}, i64 0, metadata !782) #8, !dbg !781
  %cmp.i = icmp eq i8* %7, null, !dbg !783
  br i1 %cmp.i, label %if.end21, label %if.then.i, !dbg !783

if.then.i:                                        ; preds = %if.else
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([36 x i8]* @.str85, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* %7) #11, !dbg !784
  br label %if.end21, !dbg !784

if.end21:                                         ; preds = %if.then.i, %if.else, %land.lhs.true8, %if.then, %land.lhs.true, %if.then16
  %8 = load i32* %i, align 4, !dbg !785, !tbaa !729
  %inc = add nsw i32 %8, 1, !dbg !785
  store i32 %inc, i32* %i, align 4, !dbg !785, !tbaa !729
  %idxprom22 = sext i32 %inc to i64, !dbg !785
  %arrayidx23 = getelementptr inbounds i8** %argv, i64 %idxprom22, !dbg !785
  %9 = load i8** %arrayidx23, align 8, !dbg !785, !tbaa !636
  ret i8* %9, !dbg !785
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @bDoView() #0 {
entry:
  %0 = load i32* @bView, align 4, !dbg !786, !tbaa !729
  ret i32 %0, !dbg !786
}

; Function Attrs: nounwind optsize uwtable
define void @parse_common_args(i32* %argc, i8** %argv, i64 %Flags, i32 %nfile, %struct.t_filenm* %fnm, i32 %npargs, %struct.t_pargs* nocapture %pa, i32 %ndesc, i8** %desc, i32 %nbugs, i8** %bugs) #3 {
entry:
  %buf = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata !{i32* %argc}, i64 0, metadata !464), !dbg !787
  call void @llvm.dbg.value(metadata !{i8** %argv}, i64 0, metadata !465), !dbg !787
  call void @llvm.dbg.value(metadata !{i64 %Flags}, i64 0, metadata !466), !dbg !787
  call void @llvm.dbg.value(metadata !{i32 %nfile}, i64 0, metadata !467), !dbg !788
  call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !468), !dbg !788
  call void @llvm.dbg.value(metadata !{i32 %npargs}, i64 0, metadata !469), !dbg !788
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %pa}, i64 0, metadata !470), !dbg !788
  call void @llvm.dbg.value(metadata !{i32 %ndesc}, i64 0, metadata !471), !dbg !789
  call void @llvm.dbg.value(metadata !{i8** %desc}, i64 0, metadata !472), !dbg !789
  call void @llvm.dbg.value(metadata !{i32 %nbugs}, i64 0, metadata !473), !dbg !789
  call void @llvm.dbg.value(metadata !{i8** %bugs}, i64 0, metadata !474), !dbg !789
  call void @llvm.dbg.value(metadata !790, i64 0, metadata !537), !dbg !791
  call void @llvm.dbg.value(metadata !790, i64 0, metadata !792), !dbg !795
  call void @llvm.dbg.value(metadata !790, i64 0, metadata !796), !dbg !798
  call void @llvm.dbg.value(metadata !790, i64 0, metadata !799), !dbg !801
  call void @llvm.dbg.value(metadata !790, i64 0, metadata !802), !dbg !804
  call void @llvm.dbg.value(metadata !790, i64 0, metadata !805), !dbg !807
  call void @llvm.dbg.value(metadata !790, i64 0, metadata !808), !dbg !810
  call void @llvm.dbg.value(metadata !790, i64 0, metadata !811), !dbg !814
  call void @llvm.dbg.value(metadata !790, i64 0, metadata !815), !dbg !818
  call void @llvm.dbg.value(metadata !790, i64 0, metadata !819), !dbg !821
  call void @llvm.dbg.value(metadata !790, i64 0, metadata !822), !dbg !825
  call void @llvm.dbg.value(metadata !790, i64 0, metadata !537), !dbg !826
  call void @llvm.dbg.value(metadata !790, i64 0, metadata !537), !dbg !828
  call void @llvm.dbg.value(metadata !790, i64 0, metadata !537), !dbg !829
  call void @llvm.dbg.value(metadata !790, i64 0, metadata !537), !dbg !831
  call void @llvm.dbg.value(metadata !790, i64 0, metadata !537), !dbg !831
  call void @llvm.dbg.value(metadata !790, i64 0, metadata !537), !dbg !833
  call void @llvm.dbg.value(metadata !790, i64 0, metadata !537), !dbg !835
  call void @llvm.dbg.value(metadata !790, i64 0, metadata !537), !dbg !837
  call void @llvm.dbg.value(metadata !790, i64 0, metadata !537), !dbg !840
  call void @llvm.dbg.value(metadata !790, i64 0, metadata !537), !dbg !841
  call void @llvm.dbg.value(metadata !790, i64 0, metadata !537), !dbg !842
  call void @llvm.dbg.value(metadata !790, i64 0, metadata !537), !dbg !844
  call void @llvm.dbg.value(metadata !790, i64 0, metadata !537), !dbg !847
  call void @llvm.dbg.value(metadata !790, i64 0, metadata !537), !dbg !849
  call void @llvm.dbg.declare(metadata !850, metadata !538), !dbg !851
  call void @llvm.dbg.declare(metadata !852, metadata !539), !dbg !853
  call void @llvm.dbg.declare(metadata !854, metadata !540), !dbg !855
  call void @llvm.dbg.declare(metadata !856, metadata !541), !dbg !857
  call void @llvm.dbg.declare(metadata !858, metadata !542), !dbg !859
  call void @llvm.dbg.declare(metadata !860, metadata !543), !dbg !861
  call void @llvm.dbg.declare(metadata !862, metadata !544), !dbg !863
  call void @llvm.dbg.declare(metadata !864, metadata !545), !dbg !865
  call void @llvm.dbg.declare(metadata !866, metadata !546), !dbg !867
  call void @llvm.dbg.declare(metadata !868, metadata !547), !dbg !869
  call void @llvm.dbg.declare(metadata !870, metadata !548), !dbg !871
  call void @llvm.dbg.declare(metadata !872, metadata !549), !dbg !873
  %0 = load %struct._IO_FILE** @debug, align 8, !dbg !874, !tbaa !636
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !874
  br i1 %tobool, label %entry.for.cond4.preheader_crit_edge, label %if.then, !dbg !874

entry.for.cond4.preheader_crit_edge:              ; preds = %entry
  %.pre619 = load i32* %argc, align 4, !dbg !875, !tbaa !729
  br label %for.cond4.preheader, !dbg !874

if.then:                                          ; preds = %entry
  %call = call i32 @gmx_node_id() #11, !dbg !877
  %1 = load i32* %argc, align 4, !dbg !877, !tbaa !729
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([19 x i8]* @.str56, i64 0, i64 0), i32 %call, i32 %1) #11, !dbg !877
  call void @llvm.dbg.value(metadata !84, i64 0, metadata !530), !dbg !879
  %2 = load i32* %argc, align 4, !dbg !879, !tbaa !729
  %cmp572 = icmp sgt i32 %2, 0, !dbg !879
  br i1 %cmp572, label %for.body, label %for.end67, !dbg !879

for.cond4.preheader:                              ; preds = %for.body, %entry.for.cond4.preheader_crit_edge
  %3 = phi i32 [ %.pre619, %entry.for.cond4.preheader_crit_edge ], [ %7, %for.body ]
  %cmp5570 = icmp sgt i32 %3, 1, !dbg !875
  br i1 %cmp5570, label %for.body6, label %for.end67, !dbg !875

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv614 = phi i64 [ %indvars.iv.next615, %for.body ], [ 0, %if.then ]
  %4 = load %struct._IO_FILE** @debug, align 8, !dbg !881, !tbaa !636
  %call2 = call i32 @gmx_node_id() #11, !dbg !881
  %arrayidx = getelementptr inbounds i8** %argv, i64 %indvars.iv614, !dbg !881
  %5 = load i8** %arrayidx, align 8, !dbg !881, !tbaa !636
  %6 = trunc i64 %indvars.iv614 to i32, !dbg !881
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([23 x i8]* @.str57, i64 0, i64 0), i32 %call2, i32 %6, i8* %5) #11, !dbg !881
  %indvars.iv.next615 = add i64 %indvars.iv614, 1, !dbg !879
  %7 = load i32* %argc, align 4, !dbg !879, !tbaa !729
  %8 = trunc i64 %indvars.iv.next615 to i32, !dbg !879
  %cmp = icmp slt i32 %8, %7, !dbg !879
  br i1 %cmp, label %for.body, label %for.cond4.preheader, !dbg !879

for.body6:                                        ; preds = %for.cond4.preheader, %for.inc65
  %9 = phi i32 [ %23, %for.inc65 ], [ %3, %for.cond4.preheader ]
  %indvars.iv611 = phi i64 [ %indvars.iv.next612, %for.inc65 ], [ 1, %for.cond4.preheader ]
  %indvars.iv606 = phi i64 [ %indvars.iv.next607, %for.inc65 ], [ 2, %for.cond4.preheader ]
  %i.1571 = phi i32 [ %inc66, %for.inc65 ], [ 1, %for.cond4.preheader ]
  %arrayidx8 = getelementptr inbounds i8** %argv, i64 %indvars.iv611, !dbg !882
  %10 = load i8** %arrayidx8, align 8, !dbg !882, !tbaa !636
  %tobool9 = icmp eq i8* %10, null, !dbg !882
  br i1 %tobool9, label %for.inc65, label %land.lhs.true, !dbg !882

land.lhs.true:                                    ; preds = %for.body6
  %call12 = call i64 @strlen(i8* %10) #10, !dbg !882
  %cmp13 = icmp ugt i64 %call12, 1, !dbg !882
  br i1 %cmp13, label %land.lhs.true14, label %for.inc65, !dbg !882

land.lhs.true14:                                  ; preds = %land.lhs.true
  %arrayidx17 = getelementptr inbounds i8* %10, i64 1, !dbg !882
  %11 = load i8* %arrayidx17, align 1, !dbg !882, !tbaa !637
  %idxprom18 = sext i8 %11 to i64, !dbg !882
  %call19 = call i16** @__ctype_b_loc() #12, !dbg !882
  %12 = load i16** %call19, align 8, !dbg !882, !tbaa !636
  %arrayidx20 = getelementptr inbounds i16* %12, i64 %idxprom18, !dbg !882
  %13 = load i16* %arrayidx20, align 2, !dbg !882, !tbaa !884
  %and = and i16 %13, 2048, !dbg !882
  %tobool22 = icmp eq i16 %and, 0, !dbg !882
  br i1 %tobool22, label %for.cond24.preheader, label %for.inc65, !dbg !882

for.cond24.preheader:                             ; preds = %land.lhs.true14
  %14 = add nsw i64 %indvars.iv611, 1, !dbg !885
  %15 = trunc i64 %14 to i32, !dbg !885
  %cmp25568 = icmp slt i32 %15, %9, !dbg !885
  br i1 %cmp25568, label %for.body27.lr.ph, label %for.inc65, !dbg !885

for.body27.lr.ph:                                 ; preds = %for.cond24.preheader
  %j.0567 = add nsw i32 %i.1571, 1, !dbg !885
  br label %for.body27, !dbg !885

for.body27:                                       ; preds = %for.cond24.backedge.for.body27_crit_edge, %for.body27.lr.ph
  %16 = phi i8* [ %10, %for.body27.lr.ph ], [ %.pre620, %for.cond24.backedge.for.body27_crit_edge ], !dbg !888
  %indvars.iv608 = phi i64 [ %indvars.iv606, %for.body27.lr.ph ], [ %indvars.iv.next609, %for.cond24.backedge.for.body27_crit_edge ], !dbg !875
  %j.0569 = phi i32 [ %j.0567, %for.body27.lr.ph ], [ %j.0, %for.cond24.backedge.for.body27_crit_edge ]
  %17 = load i8* %16, align 1, !dbg !888, !tbaa !637
  %cmp32 = icmp eq i8 %17, 45, !dbg !888
  br i1 %cmp32, label %land.lhs.true34, label %for.cond24.backedge, !dbg !888

for.cond24.backedge:                              ; preds = %for.body27, %land.lhs.true34, %land.lhs.true41, %if.else, %if.then53
  %j.0 = add nsw i32 %j.0569, 1, !dbg !885
  %18 = load i32* %argc, align 4, !dbg !885, !tbaa !729
  %cmp25 = icmp slt i32 %j.0, %18, !dbg !885
  br i1 %cmp25, label %for.cond24.backedge.for.body27_crit_edge, label %for.inc65, !dbg !885

for.cond24.backedge.for.body27_crit_edge:         ; preds = %for.cond24.backedge
  %indvars.iv.next609 = add i64 %indvars.iv608, 1, !dbg !885
  %.pre620 = load i8** %arrayidx8, align 8, !dbg !888, !tbaa !636
  br label %for.body27, !dbg !885

land.lhs.true34:                                  ; preds = %for.body27
  %arrayidx36 = getelementptr inbounds i8** %argv, i64 %indvars.iv608, !dbg !888
  %19 = load i8** %arrayidx36, align 8, !dbg !888, !tbaa !636
  %20 = load i8* %19, align 1, !dbg !888, !tbaa !637
  %cmp39 = icmp eq i8 %20, 45, !dbg !888
  br i1 %cmp39, label %land.lhs.true41, label %for.cond24.backedge, !dbg !888

land.lhs.true41:                                  ; preds = %land.lhs.true34
  %call46 = call i32 @strcmp(i8* %16, i8* %19) #10, !dbg !890
  %cmp47 = icmp eq i32 %call46, 0, !dbg !890
  br i1 %cmp47, label %if.then49, label %for.cond24.backedge, !dbg !890

if.then49:                                        ; preds = %land.lhs.true41
  %21 = load i64* @uFlags, align 8, !dbg !891, !tbaa !893
  %and50 = and i64 %21, 2048, !dbg !891
  %cmp51 = icmp eq i64 %and50, 0, !dbg !891
  br i1 %cmp51, label %if.else, label %if.then53, !dbg !891

if.then53:                                        ; preds = %if.then49
  %22 = load %struct._IO_FILE** @stderr, align 8, !dbg !894, !tbaa !636
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([33 x i8]* @.str58, i64 0, i64 0), i8* %16) #11, !dbg !894
  br label %for.cond24.backedge, !dbg !894

if.else:                                          ; preds = %if.then49
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([33 x i8]* @.str58, i64 0, i64 0), i8* %16) #11, !dbg !895
  br label %for.cond24.backedge

for.inc65:                                        ; preds = %for.cond24.preheader, %for.cond24.backedge, %land.lhs.true14, %for.body6, %land.lhs.true
  %23 = phi i32 [ %9, %land.lhs.true14 ], [ %9, %for.body6 ], [ %9, %land.lhs.true ], [ %9, %for.cond24.preheader ], [ %18, %for.cond24.backedge ], !dbg !875
  %indvars.iv.next612 = add i64 %indvars.iv611, 1, !dbg !875
  %inc66 = add nsw i32 %i.1571, 1, !dbg !875
  call void @llvm.dbg.value(metadata !{i32 %inc66}, i64 0, metadata !530), !dbg !875
  %24 = trunc i64 %indvars.iv.next612 to i32, !dbg !875
  %cmp5 = icmp slt i32 %24, %23, !dbg !875
  %indvars.iv.next607 = add i64 %indvars.iv606, 1, !dbg !875
  br i1 %cmp5, label %for.body6, label %for.end67, !dbg !875

for.end67:                                        ; preds = %if.then, %for.inc65, %for.cond4.preheader
  store i64 %Flags, i64* @uFlags, align 8, !dbg !896, !tbaa !893
  %and68 = and i64 %Flags, 512, !dbg !897
  store i32 0, i32* @parse_common_args.bGUI, align 4, !dbg !898, !tbaa !729
  %25 = load i8** %argv, align 8, !dbg !899, !tbaa !636
  call void @set_program_name(i8* %25) #13, !dbg !899
  %add73 = add i32 %npargs, 5, !dbg !900
  %call75 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 563, i32 %add73, i32 32) #11, !dbg !900
  %26 = bitcast i8* %call75 to %struct.t_pargs*, !dbg !900
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %26}, i64 0, metadata !537), !dbg !900
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %26}, i64 0, metadata !792), !dbg !795
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %26}, i64 0, metadata !796), !dbg !798
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %26}, i64 0, metadata !799), !dbg !801
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %26}, i64 0, metadata !802), !dbg !804
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %26}, i64 0, metadata !805), !dbg !807
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %26}, i64 0, metadata !808), !dbg !810
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %26}, i64 0, metadata !811), !dbg !814
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %26}, i64 0, metadata !815), !dbg !818
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %26}, i64 0, metadata !819), !dbg !821
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %26}, i64 0, metadata !822), !dbg !825
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %26}, i64 0, metadata !537), !dbg !826
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %26}, i64 0, metadata !537), !dbg !828
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %26}, i64 0, metadata !537), !dbg !829
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %26}, i64 0, metadata !537), !dbg !831
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %26}, i64 0, metadata !537), !dbg !831
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %26}, i64 0, metadata !537), !dbg !833
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %26}, i64 0, metadata !537), !dbg !835
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %26}, i64 0, metadata !537), !dbg !837
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %26}, i64 0, metadata !537), !dbg !840
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %26}, i64 0, metadata !537), !dbg !841
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %26}, i64 0, metadata !537), !dbg !842
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %26}, i64 0, metadata !537), !dbg !844
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %26}, i64 0, metadata !537), !dbg !847
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %26}, i64 0, metadata !537), !dbg !849
  call void @llvm.dbg.value(metadata !84, i64 0, metadata !533), !dbg !901
  call void @llvm.dbg.value(metadata !84, i64 0, metadata !530), !dbg !901
  br label %for.body80, !dbg !901

for.body80:                                       ; preds = %for.body80, %for.end67
  %indvars.iv601 = phi i64 [ 0, %for.end67 ], [ %indvars.iv.next602, %for.body80 ]
  %27 = phi %struct.t_pargs* [ %26, %for.end67 ], [ %31, %for.body80 ]
  %arrayidx82 = getelementptr inbounds [5 x %struct.t_pargs]* @parse_common_args.pca_pa, i64 0, i64 %indvars.iv601, !dbg !823
  call void @llvm.dbg.value(metadata !902, i64 0, metadata !903) #8, !dbg !825
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %arrayidx82}, i64 0, metadata !904) #8, !dbg !825
  %28 = bitcast %struct.t_pargs* %27 to i8*, !dbg !905
  %indvars.iv.next602 = add i64 %indvars.iv601, 1, !dbg !901
  %29 = shl i64 %indvars.iv.next602, 5, !dbg !905
  %30 = trunc i64 %29 to i32, !dbg !905
  %call.i = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str84, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 390, i8* %28, i32 %30) #11, !dbg !905
  %31 = bitcast i8* %call.i to %struct.t_pargs*, !dbg !905
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %31}, i64 0, metadata !537), !dbg !905
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %31}, i64 0, metadata !792), !dbg !795
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %31}, i64 0, metadata !796), !dbg !798
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %31}, i64 0, metadata !799), !dbg !801
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %31}, i64 0, metadata !802), !dbg !804
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %31}, i64 0, metadata !805), !dbg !807
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %31}, i64 0, metadata !808), !dbg !810
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %31}, i64 0, metadata !811), !dbg !814
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %31}, i64 0, metadata !815), !dbg !818
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %31}, i64 0, metadata !819), !dbg !821
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %31}, i64 0, metadata !822), !dbg !825
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %31}, i64 0, metadata !537), !dbg !826
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %31}, i64 0, metadata !537), !dbg !828
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %31}, i64 0, metadata !537), !dbg !829
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %31}, i64 0, metadata !537), !dbg !831
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %31}, i64 0, metadata !537), !dbg !831
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %31}, i64 0, metadata !537), !dbg !833
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %31}, i64 0, metadata !537), !dbg !835
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %31}, i64 0, metadata !537), !dbg !837
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %31}, i64 0, metadata !537), !dbg !840
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %31}, i64 0, metadata !537), !dbg !841
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %31}, i64 0, metadata !537), !dbg !842
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %31}, i64 0, metadata !537), !dbg !844
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %31}, i64 0, metadata !537), !dbg !847
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %31}, i64 0, metadata !537), !dbg !849
  %arrayidx.i = getelementptr inbounds %struct.t_pargs* %31, i64 %indvars.iv601, !dbg !906
  %32 = bitcast %struct.t_pargs* %arrayidx.i to i8*, !dbg !906
  %33 = bitcast %struct.t_pargs* %arrayidx82 to i8*, !dbg !906
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 32, i32 8, i1 false) #8, !dbg !906
  call void @llvm.dbg.value(metadata !902, i64 0, metadata !533), !dbg !823
  %lftr.wideiv604 = trunc i64 %indvars.iv.next602 to i32, !dbg !901
  %exitcond605 = icmp eq i32 %lftr.wideiv604, 5, !dbg !901
  br i1 %exitcond605, label %for.end86, label %for.body80, !dbg !901

for.end86:                                        ; preds = %for.body80
  %lnot = icmp eq i64 %and68, 0, !dbg !897
  call void @llvm.dbg.value(metadata !902, i64 0, metadata !907) #8, !dbg !821
  call void @llvm.dbg.value(metadata !850, i64 0, metadata !908) #8, !dbg !821
  %call.i456 = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str84, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 390, i8* %call.i, i32 192) #11, !dbg !909
  %arrayidx.i458 = getelementptr inbounds i8* %call.i456, i64 160, !dbg !910
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx.i458, i8* bitcast (%struct.t_pargs* @parse_common_args.motif_pa to i8*), i64 32, i32 8, i1 false) #8, !dbg !910
  call void @llvm.dbg.value(metadata !911, i64 0, metadata !533), !dbg !820
  %34 = load i32* @parse_common_args.bGUI, align 4, !dbg !912, !tbaa !729
  %tobool88 = icmp eq i32 %34, 0, !dbg !912
  %35 = load i64* @uFlags, align 8, !dbg !913, !tbaa !893
  %and90 = and i64 %35, 8192, !dbg !913
  %cmp91 = icmp ne i64 %and90, 0, !dbg !913
  br i1 %tobool88, label %if.else96, label %if.then89, !dbg !912

if.then89:                                        ; preds = %for.end86
  %nice_paX.sroa.1.16.copyload519545 = select i1 %cmp91, i8* bitcast ([6 x i8*]* @parse_common_args.nicestr to i8*), i8* bitcast ([6 x i8*]* @parse_common_args.not_nicestr to i8*), !dbg !913
  call void @llvm.dbg.value(metadata !911, i64 0, metadata !914) #8, !dbg !818
  call void @llvm.dbg.value(metadata !856, i64 0, metadata !915) #8, !dbg !818
  %call.i461 = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str84, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 390, i8* %call.i456, i32 224) #11, !dbg !916
  %arrayidx.i463 = getelementptr inbounds i8* %call.i461, i64 192, !dbg !917
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx.i463, i8* bitcast (%struct.t_pargs* @parse_common_args.nice_paX to i8*), i64 16, i32 8, i1 false), !dbg !917
  %nice_paX.sroa.1.16.idx518 = getelementptr inbounds i8* %call.i461, i64 208, !dbg !917
  %36 = bitcast i8* %nice_paX.sroa.1.16.idx518 to i8**, !dbg !917
  store i8* %nice_paX.sroa.1.16.copyload519545, i8** %36, align 8, !dbg !917
  %nice_paX.sroa.2.24.idx520 = getelementptr inbounds i8* %call.i461, i64 216, !dbg !917
  %37 = bitcast i8* %nice_paX.sroa.2.24.idx520 to i8**, !dbg !917
  store i8* getelementptr inbounds ([18 x i8]* @.str33, i64 0, i64 0), i8** %37, align 8, !dbg !917
  call void @llvm.dbg.value(metadata !918, i64 0, metadata !533), !dbg !816
  br label %if.end103, !dbg !919

if.else96:                                        ; preds = %for.end86
  br i1 %cmp91, label %if.then100, label %if.end101, !dbg !920

if.then100:                                       ; preds = %if.else96
  store i32 19, i32* @parse_common_args.nicelevel, align 4, !dbg !921, !tbaa !729
  br label %if.end101, !dbg !921

if.end101:                                        ; preds = %if.then100, %if.else96
  call void @llvm.dbg.value(metadata !911, i64 0, metadata !922) #8, !dbg !814
  call void @llvm.dbg.value(metadata !858, i64 0, metadata !923) #8, !dbg !814
  %call.i466 = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str84, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 390, i8* %call.i456, i32 224) #11, !dbg !924
  %arrayidx.i468 = getelementptr inbounds i8* %call.i466, i64 192, !dbg !925
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx.i468, i8* bitcast (%struct.t_pargs* @parse_common_args.nice_pa to i8*), i64 32, i32 8, i1 false) #8, !dbg !925
  call void @llvm.dbg.value(metadata !918, i64 0, metadata !533), !dbg !812
  br label %if.end103

if.end103:                                        ; preds = %if.end101, %if.then89
  %.in = phi i8* [ %call.i461, %if.then89 ], [ %call.i466, %if.end101 ]
  %38 = load i64* @uFlags, align 8, !dbg !926, !tbaa !893
  %and104 = and i64 %38, 1024, !dbg !926
  %cmp105 = icmp eq i64 %and104, 0, !dbg !926
  br i1 %cmp105, label %if.end109, label %if.then107, !dbg !926

if.then107:                                       ; preds = %if.end103
  call void @llvm.dbg.value(metadata !918, i64 0, metadata !927) #8, !dbg !810
  call void @llvm.dbg.value(metadata !860, i64 0, metadata !928) #8, !dbg !810
  %call.i471 = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str84, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 390, i8* %.in, i32 256) #11, !dbg !929
  %arrayidx.i473 = getelementptr inbounds i8* %call.i471, i64 224, !dbg !930
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx.i473, i8* bitcast (%struct.t_pargs* @parse_common_args.deffnm_pa to i8*), i64 32, i32 8, i1 false) #8, !dbg !930
  call void @llvm.dbg.value(metadata !931, i64 0, metadata !533), !dbg !809
  %.pre = load i64* @uFlags, align 8, !dbg !932, !tbaa !893
  br label %if.end109, !dbg !809

if.end109:                                        ; preds = %if.end103, %if.then107
  %39 = phi i64 [ %.pre, %if.then107 ], [ %38, %if.end103 ]
  %.in622 = phi i8* [ %call.i471, %if.then107 ], [ %.in, %if.end103 ]
  %npall.2 = phi i32 [ 8, %if.then107 ], [ 7, %if.end103 ]
  %40 = bitcast i8* %.in622 to %struct.t_pargs*, !dbg !929
  %and110 = and i64 %39, 64, !dbg !932
  %cmp111 = icmp eq i64 %and110, 0, !dbg !932
  br i1 %cmp111, label %if.end115, label %if.then113, !dbg !932

if.then113:                                       ; preds = %if.end109
  call void @llvm.dbg.value(metadata !{i32 %npall.2}, i64 0, metadata !933) #8, !dbg !807
  call void @llvm.dbg.value(metadata !862, i64 0, metadata !934) #8, !dbg !807
  %add.i474 = add nsw i32 %npall.2, 1, !dbg !935
  %mul.i475 = shl nsw i32 %add.i474, 5, !dbg !935
  %call.i476 = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str84, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 390, i8* %.in622, i32 %mul.i475) #11, !dbg !935
  %41 = bitcast i8* %call.i476 to %struct.t_pargs*, !dbg !935
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %41}, i64 0, metadata !537), !dbg !935
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %41}, i64 0, metadata !792), !dbg !795
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %41}, i64 0, metadata !796), !dbg !798
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %41}, i64 0, metadata !799), !dbg !801
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %41}, i64 0, metadata !802), !dbg !804
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %41}, i64 0, metadata !805), !dbg !807
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %41}, i64 0, metadata !808), !dbg !810
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %41}, i64 0, metadata !811), !dbg !814
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %41}, i64 0, metadata !815), !dbg !818
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %41}, i64 0, metadata !819), !dbg !821
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %41}, i64 0, metadata !822), !dbg !825
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %41}, i64 0, metadata !537), !dbg !826
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %41}, i64 0, metadata !537), !dbg !828
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %41}, i64 0, metadata !537), !dbg !829
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %41}, i64 0, metadata !537), !dbg !831
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %41}, i64 0, metadata !537), !dbg !831
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %41}, i64 0, metadata !537), !dbg !833
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %41}, i64 0, metadata !537), !dbg !835
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %41}, i64 0, metadata !537), !dbg !837
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %41}, i64 0, metadata !537), !dbg !840
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %41}, i64 0, metadata !537), !dbg !841
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %41}, i64 0, metadata !537), !dbg !842
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %41}, i64 0, metadata !537), !dbg !844
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %41}, i64 0, metadata !537), !dbg !847
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %41}, i64 0, metadata !537), !dbg !849
  %idxprom.i477621 = zext i32 %npall.2 to i64, !dbg !936
  %arrayidx.i478 = getelementptr inbounds %struct.t_pargs* %41, i64 %idxprom.i477621, !dbg !936
  %42 = bitcast %struct.t_pargs* %arrayidx.i478 to i8*, !dbg !936
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* bitcast (%struct.t_pargs* @parse_common_args.begin_pa to i8*), i64 32, i32 8, i1 false) #8, !dbg !936
  call void @llvm.dbg.value(metadata !{i32 %add.i474}, i64 0, metadata !533), !dbg !806
  %.pre616 = load i64* @uFlags, align 8, !dbg !937, !tbaa !893
  br label %if.end115, !dbg !806

if.end115:                                        ; preds = %if.end109, %if.then113
  %43 = phi i64 [ %.pre616, %if.then113 ], [ %39, %if.end109 ]
  %44 = phi %struct.t_pargs* [ %41, %if.then113 ], [ %40, %if.end109 ]
  %npall.3 = phi i32 [ %add.i474, %if.then113 ], [ %npall.2, %if.end109 ]
  %and116 = and i64 %43, 128, !dbg !937
  %cmp117 = icmp eq i64 %and116, 0, !dbg !937
  br i1 %cmp117, label %if.end121, label %if.then119, !dbg !937

if.then119:                                       ; preds = %if.end115
  call void @llvm.dbg.value(metadata !{i32 %npall.3}, i64 0, metadata !938) #8, !dbg !804
  call void @llvm.dbg.value(metadata !864, i64 0, metadata !939) #8, !dbg !804
  %45 = bitcast %struct.t_pargs* %44 to i8*, !dbg !940
  %add.i479 = add nsw i32 %npall.3, 1, !dbg !940
  %mul.i480 = shl nsw i32 %add.i479, 5, !dbg !940
  %call.i481 = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str84, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 390, i8* %45, i32 %mul.i480) #11, !dbg !940
  %46 = bitcast i8* %call.i481 to %struct.t_pargs*, !dbg !940
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %46}, i64 0, metadata !537), !dbg !940
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %46}, i64 0, metadata !792), !dbg !795
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %46}, i64 0, metadata !796), !dbg !798
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %46}, i64 0, metadata !799), !dbg !801
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %46}, i64 0, metadata !802), !dbg !804
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %46}, i64 0, metadata !805), !dbg !807
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %46}, i64 0, metadata !808), !dbg !810
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %46}, i64 0, metadata !811), !dbg !814
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %46}, i64 0, metadata !815), !dbg !818
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %46}, i64 0, metadata !819), !dbg !821
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %46}, i64 0, metadata !822), !dbg !825
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %46}, i64 0, metadata !537), !dbg !826
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %46}, i64 0, metadata !537), !dbg !828
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %46}, i64 0, metadata !537), !dbg !829
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %46}, i64 0, metadata !537), !dbg !831
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %46}, i64 0, metadata !537), !dbg !831
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %46}, i64 0, metadata !537), !dbg !833
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %46}, i64 0, metadata !537), !dbg !835
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %46}, i64 0, metadata !537), !dbg !837
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %46}, i64 0, metadata !537), !dbg !840
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %46}, i64 0, metadata !537), !dbg !841
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %46}, i64 0, metadata !537), !dbg !842
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %46}, i64 0, metadata !537), !dbg !844
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %46}, i64 0, metadata !537), !dbg !847
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %46}, i64 0, metadata !537), !dbg !849
  %idxprom.i482 = sext i32 %npall.3 to i64, !dbg !941
  %arrayidx.i483 = getelementptr inbounds %struct.t_pargs* %46, i64 %idxprom.i482, !dbg !941
  %47 = bitcast %struct.t_pargs* %arrayidx.i483 to i8*, !dbg !941
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* bitcast (%struct.t_pargs* @parse_common_args.end_pa to i8*), i64 32, i32 8, i1 false) #8, !dbg !941
  call void @llvm.dbg.value(metadata !{i32 %add.i479}, i64 0, metadata !533), !dbg !803
  %.pre617 = load i64* @uFlags, align 8, !dbg !942, !tbaa !893
  br label %if.end121, !dbg !803

if.end121:                                        ; preds = %if.end115, %if.then119
  %48 = phi i64 [ %.pre617, %if.then119 ], [ %43, %if.end115 ]
  %49 = phi %struct.t_pargs* [ %46, %if.then119 ], [ %44, %if.end115 ]
  %npall.4 = phi i32 [ %add.i479, %if.then119 ], [ %npall.3, %if.end115 ]
  %and122 = and i64 %48, 16384, !dbg !942
  %cmp123 = icmp eq i64 %and122, 0, !dbg !942
  br i1 %cmp123, label %if.end127, label %if.then125, !dbg !942

if.then125:                                       ; preds = %if.end121
  call void @llvm.dbg.value(metadata !{i32 %npall.4}, i64 0, metadata !943) #8, !dbg !801
  call void @llvm.dbg.value(metadata !866, i64 0, metadata !944) #8, !dbg !801
  %50 = bitcast %struct.t_pargs* %49 to i8*, !dbg !945
  %add.i484 = add nsw i32 %npall.4, 1, !dbg !945
  %mul.i485 = shl i32 %add.i484, 5, !dbg !945
  %call.i486 = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str84, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 390, i8* %50, i32 %mul.i485) #11, !dbg !945
  %51 = bitcast i8* %call.i486 to %struct.t_pargs*, !dbg !945
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %51}, i64 0, metadata !537), !dbg !945
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %51}, i64 0, metadata !792), !dbg !795
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %51}, i64 0, metadata !796), !dbg !798
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %51}, i64 0, metadata !799), !dbg !801
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %51}, i64 0, metadata !802), !dbg !804
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %51}, i64 0, metadata !805), !dbg !807
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %51}, i64 0, metadata !808), !dbg !810
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %51}, i64 0, metadata !811), !dbg !814
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %51}, i64 0, metadata !815), !dbg !818
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %51}, i64 0, metadata !819), !dbg !821
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %51}, i64 0, metadata !822), !dbg !825
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %51}, i64 0, metadata !537), !dbg !826
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %51}, i64 0, metadata !537), !dbg !828
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %51}, i64 0, metadata !537), !dbg !829
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %51}, i64 0, metadata !537), !dbg !831
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %51}, i64 0, metadata !537), !dbg !831
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %51}, i64 0, metadata !537), !dbg !833
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %51}, i64 0, metadata !537), !dbg !835
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %51}, i64 0, metadata !537), !dbg !837
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %51}, i64 0, metadata !537), !dbg !840
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %51}, i64 0, metadata !537), !dbg !841
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %51}, i64 0, metadata !537), !dbg !842
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %51}, i64 0, metadata !537), !dbg !844
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %51}, i64 0, metadata !537), !dbg !847
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %51}, i64 0, metadata !537), !dbg !849
  %idxprom.i487 = sext i32 %npall.4 to i64, !dbg !946
  %arrayidx.i488 = getelementptr inbounds %struct.t_pargs* %51, i64 %idxprom.i487, !dbg !946
  %52 = bitcast %struct.t_pargs* %arrayidx.i488 to i8*, !dbg !946
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* bitcast (%struct.t_pargs* @parse_common_args.dt_pa to i8*), i64 32, i32 8, i1 false) #8, !dbg !946
  call void @llvm.dbg.value(metadata !{i32 %add.i484}, i64 0, metadata !533), !dbg !800
  br label %if.end127, !dbg !800

if.end127:                                        ; preds = %if.end121, %if.then125
  %53 = phi %struct.t_pargs* [ %51, %if.then125 ], [ %49, %if.end121 ]
  %npall.5 = phi i32 [ %add.i484, %if.then125 ], [ %npall.4, %if.end121 ]
  call void @llvm.dbg.value(metadata !947, i64 0, metadata !948) #8, !dbg !950
  call void @llvm.dbg.value(metadata !680, i64 0, metadata !951) #8, !dbg !952
  %54 = load i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 1), align 8, !dbg !953, !tbaa !636
  %tobool3.i = icmp eq i8* %54, null, !dbg !953
  br i1 %tobool3.i, label %while.end.i, label %land.rhs.i, !dbg !953

while.cond.i:                                     ; preds = %land.rhs.i
  %arrayidx.i489 = getelementptr inbounds [10 x i8*]* @timestr, i64 0, i64 %indvars.iv.next16.i, !dbg !953
  %55 = load i8** %arrayidx.i489, align 8, !dbg !953, !tbaa !636
  %tobool.i = icmp eq i8* %55, null, !dbg !953
  br i1 %tobool.i, label %while.end.i, label %land.rhs.i, !dbg !953

land.rhs.i:                                       ; preds = %if.end127, %while.cond.i
  %indvars.iv15.i = phi i64 [ %indvars.iv.next16.i, %while.cond.i ], [ 1, %if.end127 ]
  %56 = phi i8* [ %55, %while.cond.i ], [ %54, %if.end127 ]
  %i.04.i = phi i32 [ %inc.i, %while.cond.i ], [ 1, %if.end127 ]
  %call.i490 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0)) #10, !dbg !953
  %cmp.i = icmp eq i32 %call.i490, 0, !dbg !953
  %indvars.iv.next16.i = add i64 %indvars.iv15.i, 1, !dbg !953
  %inc.i = add nsw i32 %i.04.i, 1, !dbg !954
  call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !951) #8, !dbg !954
  br i1 %cmp.i, label %while.end.i, label %while.cond.i

while.end.i:                                      ; preds = %land.rhs.i, %while.cond.i, %if.end127
  %57 = phi i8* [ null, %if.end127 ], [ %56, %land.rhs.i ], [ null, %while.cond.i ]
  %idxprom.lcssa.i = phi i64 [ 1, %if.end127 ], [ %indvars.iv15.i, %land.rhs.i ], [ %indvars.iv.next16.i, %while.cond.i ]
  %i.0.lcssa.i = phi i32 [ 1, %if.end127 ], [ %i.04.i, %land.rhs.i ], [ %inc.i, %while.cond.i ]
  %call5.i = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0)) #10, !dbg !955
  %cmp6.i = icmp eq i32 %call5.i, 0, !dbg !955
  br i1 %cmp6.i, label %if.then.i, label %set_default_time_unit.exit, !dbg !955

if.then.i:                                        ; preds = %while.end.i
  store i8* %57, i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 0), align 16, !dbg !956, !tbaa !636
  %arrayidx10.i = getelementptr inbounds [10 x float]* @timefactors, i64 0, i64 %idxprom.lcssa.i, !dbg !958
  %58 = load float* %arrayidx10.i, align 4, !dbg !958, !tbaa !665
  store float %58, float* getelementptr inbounds ([10 x float]* @timefactors, i64 0, i64 0), align 16, !dbg !958, !tbaa !665
  %arrayidx12.i = getelementptr inbounds [10 x i8*]* @xvgrtimestr, i64 0, i64 %idxprom.lcssa.i, !dbg !959
  %59 = load i8** %arrayidx12.i, align 8, !dbg !959, !tbaa !636
  store i8* %59, i8** getelementptr inbounds ([10 x i8*]* @xvgrtimestr, i64 0, i64 0), align 16, !dbg !959, !tbaa !636
  call void @llvm.dbg.value(metadata !{i32 %i.0.lcssa.i}, i64 0, metadata !960) #8, !dbg !961
  %cmp131.i = icmp sgt i32 %i.0.lcssa.i, 1, !dbg !961
  br i1 %cmp131.i, label %for.body.lr.ph.i, label %for.end.i, !dbg !961

for.body.lr.ph.i:                                 ; preds = %if.then.i
  %60 = sext i32 %i.0.lcssa.i to i64
  br label %for.body.i, !dbg !961

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ %60, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1, !dbg !961
  %arrayidx15.i = getelementptr inbounds [10 x i8*]* @timestr, i64 0, i64 %indvars.iv.next.i, !dbg !963
  %61 = load i8** %arrayidx15.i, align 8, !dbg !963, !tbaa !636
  %arrayidx17.i = getelementptr inbounds [10 x i8*]* @timestr, i64 0, i64 %indvars.iv.i, !dbg !963
  store i8* %61, i8** %arrayidx17.i, align 8, !dbg !963, !tbaa !636
  %arrayidx20.i = getelementptr inbounds [10 x float]* @timefactors, i64 0, i64 %indvars.iv.next.i, !dbg !965
  %62 = load float* %arrayidx20.i, align 4, !dbg !965, !tbaa !665
  %arrayidx22.i = getelementptr inbounds [10 x float]* @timefactors, i64 0, i64 %indvars.iv.i, !dbg !965
  store float %62, float* %arrayidx22.i, align 4, !dbg !965, !tbaa !665
  %arrayidx25.i = getelementptr inbounds [10 x i8*]* @xvgrtimestr, i64 0, i64 %indvars.iv.next.i, !dbg !966
  %63 = load i8** %arrayidx25.i, align 8, !dbg !966, !tbaa !636
  %arrayidx27.i = getelementptr inbounds [10 x i8*]* @xvgrtimestr, i64 0, i64 %indvars.iv.i, !dbg !966
  store i8* %63, i8** %arrayidx27.i, align 8, !dbg !966, !tbaa !636
  %64 = trunc i64 %indvars.iv.next.i to i32, !dbg !961
  %cmp13.i = icmp sgt i32 %64, 1, !dbg !961
  br i1 %cmp13.i, label %for.body.i, label %for.cond.for.end_crit_edge.i, !dbg !961

for.cond.for.end_crit_edge.i:                     ; preds = %for.body.i
  %.pre.i = load i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 0), align 16, !dbg !967, !tbaa !636
  %.pre17.i = load float* getelementptr inbounds ([10 x float]* @timefactors, i64 0, i64 0), align 16, !dbg !968, !tbaa !665
  %.pre18.i = load i8** getelementptr inbounds ([10 x i8*]* @xvgrtimestr, i64 0, i64 0), align 16, !dbg !969, !tbaa !636
  br label %for.end.i, !dbg !961

for.end.i:                                        ; preds = %for.cond.for.end_crit_edge.i, %if.then.i
  %65 = phi i8* [ %.pre18.i, %for.cond.for.end_crit_edge.i ], [ %59, %if.then.i ]
  %66 = phi float [ %.pre17.i, %for.cond.for.end_crit_edge.i ], [ %58, %if.then.i ]
  %67 = phi i8* [ %.pre.i, %for.cond.for.end_crit_edge.i ], [ %57, %if.then.i ]
  store i8* %67, i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 1), align 8, !dbg !967, !tbaa !636
  store float %66, float* getelementptr inbounds ([10 x float]* @timefactors, i64 0, i64 1), align 4, !dbg !968, !tbaa !665
  store i8* %65, i8** getelementptr inbounds ([10 x i8*]* @xvgrtimestr, i64 0, i64 1), align 8, !dbg !969, !tbaa !636
  br label %set_default_time_unit.exit, !dbg !970

set_default_time_unit.exit:                       ; preds = %while.end.i, %for.end.i
  %68 = load i64* @uFlags, align 8, !dbg !971, !tbaa !893
  %and128 = and i64 %68, 32, !dbg !971
  %cmp129 = icmp eq i64 %and128, 0, !dbg !971
  br i1 %cmp129, label %for.cond134.preheader, label %if.then131, !dbg !971

if.then131:                                       ; preds = %set_default_time_unit.exit
  call void @llvm.dbg.value(metadata !{i32 %npall.5}, i64 0, metadata !972) #8, !dbg !798
  call void @llvm.dbg.value(metadata !868, i64 0, metadata !973) #8, !dbg !798
  %69 = bitcast %struct.t_pargs* %53 to i8*, !dbg !974
  %add.i491 = add nsw i32 %npall.5, 1, !dbg !974
  %mul.i492 = shl i32 %add.i491, 5, !dbg !974
  %call.i493 = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str84, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 390, i8* %69, i32 %mul.i492) #11, !dbg !974
  %70 = bitcast i8* %call.i493 to %struct.t_pargs*, !dbg !974
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %70}, i64 0, metadata !537), !dbg !974
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %70}, i64 0, metadata !792), !dbg !795
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %70}, i64 0, metadata !796), !dbg !798
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %70}, i64 0, metadata !799), !dbg !801
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %70}, i64 0, metadata !802), !dbg !804
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %70}, i64 0, metadata !805), !dbg !807
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %70}, i64 0, metadata !808), !dbg !810
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %70}, i64 0, metadata !811), !dbg !814
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %70}, i64 0, metadata !815), !dbg !818
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %70}, i64 0, metadata !819), !dbg !821
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %70}, i64 0, metadata !822), !dbg !825
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %70}, i64 0, metadata !537), !dbg !826
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %70}, i64 0, metadata !537), !dbg !828
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %70}, i64 0, metadata !537), !dbg !829
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %70}, i64 0, metadata !537), !dbg !831
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %70}, i64 0, metadata !537), !dbg !831
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %70}, i64 0, metadata !537), !dbg !833
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %70}, i64 0, metadata !537), !dbg !835
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %70}, i64 0, metadata !537), !dbg !837
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %70}, i64 0, metadata !537), !dbg !840
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %70}, i64 0, metadata !537), !dbg !841
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %70}, i64 0, metadata !537), !dbg !842
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %70}, i64 0, metadata !537), !dbg !844
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %70}, i64 0, metadata !537), !dbg !847
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %70}, i64 0, metadata !537), !dbg !849
  %idxprom.i494 = sext i32 %npall.5 to i64, !dbg !975
  %arrayidx.i495 = getelementptr inbounds %struct.t_pargs* %70, i64 %idxprom.i494, !dbg !975
  %71 = bitcast %struct.t_pargs* %arrayidx.i495 to i8*, !dbg !975
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* bitcast (%struct.t_pargs* @parse_common_args.view_pa to i8*), i64 32, i32 8, i1 false) #8, !dbg !975
  call void @llvm.dbg.value(metadata !{i32 %add.i491}, i64 0, metadata !533), !dbg !797
  br label %for.cond134.preheader, !dbg !797

for.cond134.preheader:                            ; preds = %set_default_time_unit.exit, %if.then131
  %.ph = phi %struct.t_pargs* [ %70, %if.then131 ], [ %53, %set_default_time_unit.exit ]
  %npall.7.ph = phi i32 [ %add.i491, %if.then131 ], [ %npall.5, %set_default_time_unit.exit ]
  %cmp135559 = icmp sgt i32 %npargs, 0, !dbg !976
  br i1 %cmp135559, label %for.body137.lr.ph, label %for.cond144.preheader, !dbg !976

for.body137.lr.ph:                                ; preds = %for.cond134.preheader
  %72 = sext i32 %npall.7.ph to i64
  br label %for.body137, !dbg !976

for.cond134.for.cond144.preheader_crit_edge:      ; preds = %for.body137
  %73 = add i32 %npall.7.ph, %npargs, !dbg !976
  br label %for.cond144.preheader, !dbg !976

for.cond144.preheader:                            ; preds = %for.cond134.for.cond144.preheader_crit_edge, %for.cond134.preheader
  %npall.7.lcssa = phi i32 [ %73, %for.cond134.for.cond144.preheader_crit_edge ], [ %npall.7.ph, %for.cond134.preheader ]
  %.lcssa = phi %struct.t_pargs* [ %77, %for.cond134.for.cond144.preheader_crit_edge ], [ %.ph, %for.cond134.preheader ]
  %cmp145557 = icmp sgt i32 %npall.7.lcssa, 0, !dbg !977
  br i1 %cmp145557, label %for.body147, label %for.end166, !dbg !977

for.body137:                                      ; preds = %for.body137, %for.body137.lr.ph
  %indvars.iv597 = phi i64 [ 0, %for.body137.lr.ph ], [ %indvars.iv.next598, %for.body137 ], !dbg !976
  %indvars.iv595 = phi i64 [ %72, %for.body137.lr.ph ], [ %indvars.iv.next596, %for.body137 ]
  %74 = phi %struct.t_pargs* [ %.ph, %for.body137.lr.ph ], [ %77, %for.body137 ]
  %arrayidx139 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv597, !dbg !793
  call void @llvm.dbg.value(metadata !{i32 %npall.7.lcssa}, i64 0, metadata !978) #8, !dbg !795
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %arrayidx139}, i64 0, metadata !979) #8, !dbg !795
  %75 = bitcast %struct.t_pargs* %74 to i8*, !dbg !980
  %indvars.iv.next596 = add i64 %indvars.iv595, 1, !dbg !976
  %76 = trunc i64 %indvars.iv.next596 to i32, !dbg !980
  %mul.i497 = shl i32 %76, 5, !dbg !980
  %call.i498 = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str84, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 390, i8* %75, i32 %mul.i497) #11, !dbg !980
  %77 = bitcast i8* %call.i498 to %struct.t_pargs*, !dbg !980
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %77}, i64 0, metadata !537), !dbg !980
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %77}, i64 0, metadata !792), !dbg !795
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %77}, i64 0, metadata !796), !dbg !798
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %77}, i64 0, metadata !799), !dbg !801
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %77}, i64 0, metadata !802), !dbg !804
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %77}, i64 0, metadata !805), !dbg !807
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %77}, i64 0, metadata !808), !dbg !810
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %77}, i64 0, metadata !811), !dbg !814
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %77}, i64 0, metadata !815), !dbg !818
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %77}, i64 0, metadata !819), !dbg !821
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %77}, i64 0, metadata !822), !dbg !825
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %77}, i64 0, metadata !537), !dbg !826
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %77}, i64 0, metadata !537), !dbg !828
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %77}, i64 0, metadata !537), !dbg !829
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %77}, i64 0, metadata !537), !dbg !831
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %77}, i64 0, metadata !537), !dbg !831
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %77}, i64 0, metadata !537), !dbg !833
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %77}, i64 0, metadata !537), !dbg !835
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %77}, i64 0, metadata !537), !dbg !837
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %77}, i64 0, metadata !537), !dbg !840
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %77}, i64 0, metadata !537), !dbg !841
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %77}, i64 0, metadata !537), !dbg !842
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %77}, i64 0, metadata !537), !dbg !844
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %77}, i64 0, metadata !537), !dbg !847
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %77}, i64 0, metadata !537), !dbg !849
  %arrayidx.i500 = getelementptr inbounds %struct.t_pargs* %77, i64 %indvars.iv595, !dbg !981
  %78 = bitcast %struct.t_pargs* %arrayidx.i500 to i8*, !dbg !981
  %79 = bitcast %struct.t_pargs* %arrayidx139 to i8*, !dbg !981
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %79, i64 32, i32 8, i1 false) #8, !dbg !981
  call void @llvm.dbg.value(metadata !{i32 %73}, i64 0, metadata !533), !dbg !793
  %indvars.iv.next598 = add i64 %indvars.iv597, 1, !dbg !976
  %lftr.wideiv599 = trunc i64 %indvars.iv.next598 to i32, !dbg !976
  %exitcond600 = icmp eq i32 %lftr.wideiv599, %npargs, !dbg !976
  br i1 %exitcond600, label %for.cond134.for.cond144.preheader_crit_edge, label %for.body137, !dbg !976

for.body147:                                      ; preds = %for.cond144.preheader, %for.inc164
  %indvars.iv590 = phi i64 [ %indvars.iv.next591, %for.inc164 ], [ 0, %for.cond144.preheader ]
  %type = getelementptr inbounds %struct.t_pargs* %.lcssa, i64 %indvars.iv590, i32 2, !dbg !826
  %80 = load i32* %type, align 4, !dbg !826, !tbaa !729
  %cmp150 = icmp eq i32 %80, 6, !dbg !826
  br i1 %cmp150, label %if.then152, label %for.inc164, !dbg !826

if.then152:                                       ; preds = %for.body147
  %u155 = getelementptr inbounds %struct.t_pargs* %.lcssa, i64 %indvars.iv590, i32 3, !dbg !982
  %c156 = bitcast %union.anon* %u155 to i8***, !dbg !982
  %81 = load i8*** %c156, align 8, !dbg !982, !tbaa !636
  %arrayidx157 = getelementptr inbounds i8** %81, i64 1, !dbg !982
  %82 = load i8** %arrayidx157, align 8, !dbg !982, !tbaa !636
  store i8* %82, i8** %81, align 8, !dbg !982, !tbaa !636
  br label %for.inc164, !dbg !982

for.inc164:                                       ; preds = %for.body147, %if.then152
  %indvars.iv.next591 = add i64 %indvars.iv590, 1, !dbg !977
  %lftr.wideiv592 = trunc i64 %indvars.iv.next591 to i32, !dbg !977
  %exitcond593 = icmp eq i32 %lftr.wideiv592, %npall.7.lcssa, !dbg !977
  br i1 %exitcond593, label %for.end166, label %for.body147, !dbg !977

for.end166:                                       ; preds = %for.inc164, %for.cond144.preheader
  %83 = load i64* @uFlags, align 8, !dbg !828, !tbaa !893
  %and167 = lshr i64 %83, 8, !dbg !828
  %and167.tr = trunc i64 %and167 to i32, !dbg !828
  %conv169 = and i32 %and167.tr, 1, !dbg !828
  call void @get_pargs(i32* %argc, i8** %argv, i32 %npall.7.lcssa, %struct.t_pargs* %.lcssa, i32 %conv169) #11, !dbg !828
  %84 = load i64* @uFlags, align 8, !dbg !983, !tbaa !893
  %and170 = and i64 %84, 1024, !dbg !983
  %cmp171 = icmp ne i64 %and170, 0, !dbg !983
  %85 = load i8** @parse_common_args.deffnm, align 8, !dbg !983, !tbaa !636
  %cmp174 = icmp ne i8* %85, null, !dbg !983
  %or.cond = and i1 %cmp171, %cmp174, !dbg !983
  br i1 %or.cond, label %if.then176, label %if.end177, !dbg !983

if.then176:                                       ; preds = %for.end166
  call void @set_default_file_name(i8* %85) #11, !dbg !984
  %.pre618 = load i64* @uFlags, align 8, !dbg !985, !tbaa !893
  br label %if.end177, !dbg !984

if.end177:                                        ; preds = %if.then176, %for.end166
  %86 = phi i64 [ %.pre618, %if.then176 ], [ %84, %for.end166 ]
  %and178 = lshr i64 %86, 8, !dbg !985
  %and178.tr = trunc i64 %and178 to i32, !dbg !985
  %conv180 = and i32 %and178.tr, 1, !dbg !985
  call void @parse_file_args(i32* %argc, i8** %argv, i32 %nfile, %struct.t_filenm* %fnm, i32 %conv180) #11, !dbg !985
  %87 = load i32* @parse_common_args.bDebug, align 4, !dbg !986, !tbaa !729
  %tobool181 = icmp eq i32 %87, 0, !dbg !986
  br i1 %tobool181, label %if.end198, label %if.then182, !dbg !986

if.then182:                                       ; preds = %if.end177
  %88 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0, !dbg !987
  call void @llvm.lifetime.start(i64 256, i8* %88) #8, !dbg !987
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %buf}, metadata !553), !dbg !987
  %call183 = call i32 @gmx_node_num() #11, !dbg !988
  %cmp184 = icmp sgt i32 %call183, 1, !dbg !988
  %89 = load i8** @program, align 8, !dbg !989, !tbaa !636
  %tobool.i501 = icmp eq i8* %89, null, !dbg !989
  br i1 %tobool.i501, label %ShortProgram.exit, label %if.then.i504, !dbg !989

if.then.i504:                                     ; preds = %if.then182
  %call.i502 = call i8* @strrchr(i8* %89, i32 47) #10, !dbg !991
  call void @llvm.dbg.value(metadata !{i8* %call.i502}, i64 0, metadata !992) #8, !dbg !991
  %cmp.i503 = icmp eq i8* %call.i502, null, !dbg !991
  %add.ptr.i = getelementptr inbounds i8* %call.i502, i64 1, !dbg !993
  %.add.ptr.i = select i1 %cmp.i503, i8* %89, i8* %add.ptr.i, !dbg !991
  br label %ShortProgram.exit, !dbg !991

ShortProgram.exit:                                ; preds = %if.then182, %if.then.i504
  %call187505 = phi i8* [ %.add.ptr.i, %if.then.i504 ], [ getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), %if.then182 ]
  br i1 %cmp184, label %if.then186, label %if.else190, !dbg !988

if.then186:                                       ; preds = %ShortProgram.exit
  %call188 = call i32 @gmx_node_id() #11, !dbg !990
  %call189 = call i32 (i8*, i8*, ...)* @sprintf(i8* %88, i8* getelementptr inbounds ([9 x i8]* @.str60, i64 0, i64 0), i8* %call187505, i32 %call188) #11, !dbg !990
  br label %if.end194, !dbg !990

if.else190:                                       ; preds = %ShortProgram.exit
  %call193 = call i32 (i8*, i8*, ...)* @sprintf(i8* %88, i8* getelementptr inbounds ([7 x i8]* @.str61, i64 0, i64 0), i8* %call187505) #11, !dbg !994
  br label %if.end194

if.end194:                                        ; preds = %if.else190, %if.then186
  call void @init_debug(i8* %88) #11, !dbg !995
  %90 = load %struct._IO_FILE** @debug, align 8, !dbg !996, !tbaa !636
  %call197 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([43 x i8]* @.str62, i64 0, i64 0), i8* %88, i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 650) #11, !dbg !996
  call void @llvm.lifetime.end(i64 256, i8* %88) #8, !dbg !997
  br label %if.end198, !dbg !997

if.end198:                                        ; preds = %if.end177, %if.end194
  %91 = load i32* @parse_common_args.bGUI, align 4, !dbg !998, !tbaa !729
  %tobool199 = icmp eq i32 %91, 0, !dbg !998
  br i1 %tobool199, label %if.end201, label %if.then200, !dbg !998

if.then200:                                       ; preds = %if.end198
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([63 x i8]* @.str63, i64 0, i64 0)) #11, !dbg !999
  br label %if.end201, !dbg !1001

if.end201:                                        ; preds = %if.end198, %if.then200
  call void @llvm.dbg.value(metadata !84, i64 0, metadata !530), !dbg !1002
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !532), !dbg !1002
  br i1 %cmp135559, label %for.body205.lr.ph, label %for.cond214.preheader, !dbg !1002

for.body205.lr.ph:                                ; preds = %if.end201
  %sub = sub nsw i32 %npall.7.lcssa, %npargs, !dbg !1002
  %92 = sext i32 %sub to i64
  br label %for.body205, !dbg !1002

for.cond214.preheader:                            ; preds = %for.body205, %if.end201
  br i1 %cmp145557, label %for.body217, label %for.end227, !dbg !1003

for.body205:                                      ; preds = %for.body205, %for.body205.lr.ph
  %indvars.iv586 = phi i64 [ 0, %for.body205.lr.ph ], [ %indvars.iv.next587, %for.body205 ], !dbg !1002
  %indvars.iv584 = phi i64 [ %92, %for.body205.lr.ph ], [ %indvars.iv.next585, %for.body205 ]
  %arrayidx207 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv586, !dbg !829
  %93 = bitcast %struct.t_pargs* %arrayidx207 to i8*, !dbg !829
  %arrayidx209 = getelementptr inbounds %struct.t_pargs* %.lcssa, i64 %indvars.iv584, !dbg !829
  %94 = bitcast %struct.t_pargs* %arrayidx209 to i8*, !dbg !829
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %93, i8* %94, i64 32, i32 8, i1 false), !dbg !829
  %indvars.iv.next587 = add i64 %indvars.iv586, 1, !dbg !1002
  %indvars.iv.next585 = add i64 %indvars.iv584, 1, !dbg !1002
  %lftr.wideiv588 = trunc i64 %indvars.iv.next587 to i32, !dbg !1002
  %exitcond589 = icmp eq i32 %lftr.wideiv588, %npargs, !dbg !1002
  br i1 %exitcond589, label %for.cond214.preheader, label %for.body205, !dbg !1002

for.body217:                                      ; preds = %for.cond214.preheader, %mk_desc.exit
  %indvars.iv580 = phi i64 [ %indvars.iv.next581, %mk_desc.exit ], [ 0, %for.cond214.preheader ]
  %arrayidx219 = getelementptr inbounds %struct.t_pargs* %.lcssa, i64 %indvars.iv580, !dbg !831
  %95 = load i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 0), align 16, !dbg !1004, !tbaa !636
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %arrayidx219}, i64 0, metadata !1005) #8, !dbg !1006
  call void @llvm.dbg.value(metadata !{i8* %95}, i64 0, metadata !1007) #8, !dbg !1006
  call void @llvm.dbg.value(metadata !1008, i64 0, metadata !1009) #8, !dbg !1010
  call void @llvm.dbg.value(metadata !1008, i64 0, metadata !1011) #8, !dbg !1010
  call void @llvm.dbg.value(metadata !1008, i64 0, metadata !1012) #8, !dbg !1010
  %desc.i = getelementptr inbounds %struct.t_pargs* %.lcssa, i64 %indvars.iv580, i32 4, !dbg !1013
  %96 = load i8** %desc.i, align 8, !dbg !1013, !tbaa !636
  %call.i506 = call i64 @strlen(i8* %96) #10, !dbg !1013
  %add.i507 = add i64 %call.i506, 1, !dbg !1013
  %conv.i = trunc i64 %add.i507 to i32, !dbg !1013
  call void @llvm.dbg.value(metadata !{i32 %conv.i}, i64 0, metadata !1014) #8, !dbg !1013
  %call2.i = call i8* @strstr(i8* %96, i8* getelementptr inbounds ([7 x i8]* @.str74, i64 0, i64 0)) #10, !dbg !1015
  call void @llvm.dbg.value(metadata !{i8* %call2.i}, i64 0, metadata !1012) #8, !dbg !1015
  %cmp.i508 = icmp eq i8* %call2.i, null, !dbg !1015
  %add4.i = add nsw i32 %conv.i, 4, !dbg !1016
  call void @llvm.dbg.value(metadata !{i32 %add4.i}, i64 0, metadata !1014) #8, !dbg !1016
  %conv.add4.i = select i1 %cmp.i508, i32 %conv.i, i32 %add4.i, !dbg !1015
  %type.i = getelementptr inbounds %struct.t_pargs* %.lcssa, i64 %indvars.iv580, i32 2, !dbg !1017
  %97 = load i32* %type.i, align 4, !dbg !1017, !tbaa !729
  %cmp5.i = icmp eq i32 %97, 6, !dbg !1017
  br i1 %cmp5.i, label %if.then7.i, label %if.end20.i, !dbg !1017

if.then7.i:                                       ; preds = %for.body217
  %add8.i = add nsw i32 %conv.add4.i, 10, !dbg !1018
  call void @llvm.dbg.value(metadata !{i32 %add8.i}, i64 0, metadata !1014) #8, !dbg !1018
  call void @llvm.dbg.value(metadata !680, i64 0, metadata !1020) #8, !dbg !1021
  %u.i = getelementptr inbounds %struct.t_pargs* %.lcssa, i64 %indvars.iv580, i32 3, !dbg !1021
  %c.i = bitcast %union.anon* %u.i to i8***, !dbg !1021
  %98 = load i8*** %c.i, align 8, !dbg !1021, !tbaa !636
  %arrayidx150.i = getelementptr inbounds i8** %98, i64 1, !dbg !1021
  %99 = load i8** %arrayidx150.i, align 8, !dbg !1021, !tbaa !636
  %cmp9151.i = icmp eq i8* %99, null, !dbg !1021
  br i1 %cmp9151.i, label %if.end20.i, label %for.body.i510, !dbg !1021

for.body.i510:                                    ; preds = %if.then7.i, %for.body.i510
  %indvars.iv156.i = phi i64 [ %indvars.iv.next157.i, %for.body.i510 ], [ 1, %if.then7.i ]
  %100 = phi i8* [ %101, %for.body.i510 ], [ %99, %if.then7.i ]
  %len.1152.i = phi i32 [ %conv19.i, %for.body.i510 ], [ %add8.i, %if.then7.i ]
  %call15.i = call i64 @strlen(i8* %100) #10, !dbg !1023
  %conv17140.i = zext i32 %len.1152.i to i64, !dbg !1023
  %add16.i = add i64 %conv17140.i, 12, !dbg !1023
  %add18.i = add i64 %add16.i, %call15.i, !dbg !1023
  %conv19.i = trunc i64 %add18.i to i32, !dbg !1023
  call void @llvm.dbg.value(metadata !{i32 %conv19.i}, i64 0, metadata !1014) #8, !dbg !1023
  %indvars.iv.next157.i = add i64 %indvars.iv156.i, 1, !dbg !1021
  %arrayidx.i509 = getelementptr inbounds i8** %98, i64 %indvars.iv.next157.i, !dbg !1021
  %101 = load i8** %arrayidx.i509, align 8, !dbg !1021, !tbaa !636
  %cmp9.i = icmp eq i8* %101, null, !dbg !1021
  br i1 %cmp9.i, label %if.end20.i, label %for.body.i510, !dbg !1021

if.end20.i:                                       ; preds = %for.body.i510, %if.then7.i, %for.body217
  %len.2.i = phi i32 [ %conv.add4.i, %for.body217 ], [ %add8.i, %if.then7.i ], [ %conv19.i, %for.body.i510 ]
  %call21.i = call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str75, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 411, i32 %len.2.i, i32 1) #11, !dbg !1025
  call void @llvm.dbg.value(metadata !{i8* %call21.i}, i64 0, metadata !1009) #8, !dbg !1025
  %call22.i = call i32 @is_hidden(%struct.t_pargs* %arrayidx219) #11, !dbg !1026
  %tobool.i511 = icmp eq i32 %call22.i, 0, !dbg !1026
  br i1 %tobool.i511, label %if.else.i, label %if.then23.i, !dbg !1026

if.then23.i:                                      ; preds = %if.end20.i
  %add.ptr.i512 = getelementptr inbounds i8* %call2.i, i64 6, !dbg !1027
  %call24.i = call i32 (i8*, i8*, ...)* @sprintf(i8* %call21.i, i8* getelementptr inbounds ([12 x i8]* @.str76, i64 0, i64 0), i8* %add.ptr.i512) #11, !dbg !1027
  br label %if.end27.i, !dbg !1027

if.else.i:                                        ; preds = %if.end20.i
  %102 = load i8** %desc.i, align 8, !dbg !1028, !tbaa !636
  %call26.i = call i8* @strcpy(i8* %call21.i, i8* %102) #11, !dbg !1028
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.else.i, %if.then23.i
  %103 = load i32* %type.i, align 4, !dbg !1029, !tbaa !729
  %cmp29.i = icmp eq i32 %103, 2, !dbg !1029
  br i1 %cmp29.i, label %while.cond.preheader.i, label %if.end45.i, !dbg !1029

while.cond.preheader.i:                           ; preds = %if.end27.i
  %call32145.i = call i8* @strstr(i8* %call21.i, i8* getelementptr inbounds ([3 x i8]* @.str77, i64 0, i64 0)) #10, !dbg !1030
  call void @llvm.dbg.value(metadata !{i8* %call32145.i}, i64 0, metadata !1012) #8, !dbg !1030
  %cmp33146.i = icmp eq i8* %call32145.i, null, !dbg !1030
  br i1 %cmp33146.i, label %mk_desc.exit, label %while.body.i, !dbg !1030

while.body.i:                                     ; preds = %while.cond.preheader.i, %while.body.i
  %call32149.i = phi i8* [ %call32.i, %while.body.i ], [ %call32145.i, %while.cond.preheader.i ]
  %len.3148.i = phi i32 [ %conv40.i, %while.body.i ], [ %len.2.i, %while.cond.preheader.i ]
  %newdesc.0147.i = phi i8* [ %call41.i, %while.body.i ], [ %call21.i, %while.cond.preheader.i ]
  store i8 0, i8* %call32149.i, align 1, !dbg !1031, !tbaa !637
  %add.ptr36.i = getelementptr inbounds i8* %call32149.i, i64 2, !dbg !1033
  call void @llvm.dbg.value(metadata !{i8* %add.ptr36.i}, i64 0, metadata !1012) #8, !dbg !1033
  %call37.i = call i64 @strlen(i8* %95) #10, !dbg !1034
  %conv38139.i = zext i32 %len.3148.i to i64, !dbg !1034
  %sub.i = add i64 %conv38139.i, 4294967294, !dbg !1034
  %add39.i = add i64 %sub.i, %call37.i, !dbg !1034
  %conv40.i = trunc i64 %add39.i to i32, !dbg !1034
  call void @llvm.dbg.value(metadata !{i32 %conv40.i}, i64 0, metadata !1014) #8, !dbg !1034
  %call41.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str78, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 427, i32 %conv40.i, i32 1) #11, !dbg !1035
  call void @llvm.dbg.value(metadata !{i8* %call41.i}, i64 0, metadata !1011) #8, !dbg !1035
  %call42.i = call i8* @strcpy(i8* %call41.i, i8* %newdesc.0147.i) #11, !dbg !1036
  %call43.i = call i8* @strcat(i8* %call41.i, i8* %95) #11, !dbg !1037
  %call44.i = call i8* @strcat(i8* %call41.i, i8* %add.ptr36.i) #11, !dbg !1038
  call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str75, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 431, i8* %newdesc.0147.i) #11, !dbg !1039
  call void @llvm.dbg.value(metadata !{i8* %call41.i}, i64 0, metadata !1009) #8, !dbg !1040
  call void @llvm.dbg.value(metadata !1008, i64 0, metadata !1011) #8, !dbg !1041
  %call32.i = call i8* @strstr(i8* %call41.i, i8* getelementptr inbounds ([3 x i8]* @.str77, i64 0, i64 0)) #10, !dbg !1030
  call void @llvm.dbg.value(metadata !{i8* %call32149.i}, i64 0, metadata !1012) #8, !dbg !1030
  %cmp33.i = icmp eq i8* %call32.i, null, !dbg !1030
  br i1 %cmp33.i, label %while.cond.if.end45thread-pre-split_crit_edge.i, label %while.body.i, !dbg !1030

while.cond.if.end45thread-pre-split_crit_edge.i:  ; preds = %while.body.i
  %.pr.pre.i = load i32* %type.i, align 4, !dbg !1042, !tbaa !729
  br label %if.end45.i, !dbg !1030

if.end45.i:                                       ; preds = %while.cond.if.end45thread-pre-split_crit_edge.i, %if.end27.i
  %104 = phi i32 [ %103, %if.end27.i ], [ %.pr.pre.i, %while.cond.if.end45thread-pre-split_crit_edge.i ], !dbg !1042
  %newdesc.1.i = phi i8* [ %call21.i, %if.end27.i ], [ %call41.i, %while.cond.if.end45thread-pre-split_crit_edge.i ]
  %cmp47.i = icmp eq i32 %104, 6, !dbg !1042
  br i1 %cmp47.i, label %if.then49.i, label %mk_desc.exit, !dbg !1042

if.then49.i:                                      ; preds = %if.end45.i
  %strlen.i = call i64 @strlen(i8* %newdesc.1.i) #8, !dbg !1043
  %endptr.i = getelementptr i8* %newdesc.1.i, i64 %strlen.i, !dbg !1043
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %endptr.i, i8* getelementptr inbounds ([3 x i8]* @.str79, i64 0, i64 0), i64 3, i32 1, i1 false) #8, !dbg !1043
  call void @llvm.dbg.value(metadata !680, i64 0, metadata !1020) #8, !dbg !1045
  %u53.i = getelementptr inbounds %struct.t_pargs* %.lcssa, i64 %indvars.iv580, i32 3, !dbg !1045
  %c54.i = bitcast %union.anon* %u53.i to i8***, !dbg !1045
  %105 = load i8*** %c54.i, align 8, !dbg !1045, !tbaa !636
  %arrayidx55141.i = getelementptr inbounds i8** %105, i64 1, !dbg !1045
  %106 = load i8** %arrayidx55141.i, align 8, !dbg !1045, !tbaa !636
  %cmp56142.i = icmp eq i8* %106, null, !dbg !1045
  br i1 %cmp56142.i, label %mk_desc.exit, label %for.body58.i, !dbg !1045

for.body58.i:                                     ; preds = %if.then49.i, %for.cond51.backedge.i
  %indvars.iv.i513 = phi i64 [ %indvars.iv.next.i514, %for.cond51.backedge.i ], [ 1, %if.then49.i ]
  %strlen131.i = call i64 @strlen(i8* %newdesc.1.i) #8, !dbg !1047
  %endptr132.i = getelementptr i8* %newdesc.1.i, i64 %strlen131.i, !dbg !1047
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %endptr132.i, i8* getelementptr inbounds ([5 x i8]* @.str80, i64 0, i64 0), i64 5, i32 1, i1 false) #8, !dbg !1047
  %107 = load i8*** %c54.i, align 8, !dbg !1049, !tbaa !636
  %arrayidx63.i = getelementptr inbounds i8** %107, i64 %indvars.iv.i513, !dbg !1049
  %108 = load i8** %arrayidx63.i, align 8, !dbg !1049, !tbaa !636
  %call64.i = call i8* @strcat(i8* %newdesc.1.i, i8* %108) #11, !dbg !1049
  %strlen133.i = call i64 @strlen(i8* %newdesc.1.i) #8, !dbg !1050
  %endptr134.i = getelementptr i8* %newdesc.1.i, i64 %strlen133.i, !dbg !1050
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %endptr134.i, i8* getelementptr inbounds ([5 x i8]* @.str81, i64 0, i64 0), i64 5, i32 1, i1 false) #8, !dbg !1050
  %indvars.iv.next.i514 = add i64 %indvars.iv.i513, 1, !dbg !1045
  %109 = load i8*** %c54.i, align 8, !dbg !1051, !tbaa !636
  %arrayidx70.i = getelementptr inbounds i8** %109, i64 %indvars.iv.next.i514, !dbg !1051
  %110 = load i8** %arrayidx70.i, align 8, !dbg !1051, !tbaa !636
  %cmp71.i = icmp eq i8* %110, null, !dbg !1051
  br i1 %cmp71.i, label %for.cond51.backedge.i, label %if.then73.i, !dbg !1051

for.cond51.backedge.i:                            ; preds = %if.else83.i, %if.then81.i, %for.body58.i
  %111 = load i8*** %c54.i, align 8, !dbg !1045, !tbaa !636
  %arrayidx55.i = getelementptr inbounds i8** %111, i64 %indvars.iv.next.i514, !dbg !1045
  %112 = load i8** %arrayidx55.i, align 8, !dbg !1045, !tbaa !636
  %cmp56.i = icmp eq i8* %112, null, !dbg !1045
  br i1 %cmp56.i, label %mk_desc.exit, label %for.body58.i, !dbg !1045

if.then73.i:                                      ; preds = %for.body58.i
  %113 = add nsw i64 %indvars.iv.i513, 2, !dbg !1052
  %arrayidx78.i = getelementptr inbounds i8** %109, i64 %113, !dbg !1052
  %114 = load i8** %arrayidx78.i, align 8, !dbg !1052, !tbaa !636
  %cmp79.i = icmp eq i8* %114, null, !dbg !1052
  %strlen137.i = call i64 @strlen(i8* %newdesc.1.i) #8, !dbg !1054
  %endptr138.i = getelementptr i8* %newdesc.1.i, i64 %strlen137.i, !dbg !1054
  br i1 %cmp79.i, label %if.then81.i, label %if.else83.i, !dbg !1052

if.then81.i:                                      ; preds = %if.then73.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %endptr138.i, i8* getelementptr inbounds ([5 x i8]* @.str82, i64 0, i64 0), i64 5, i32 1, i1 false) #8, !dbg !1054
  br label %for.cond51.backedge.i, !dbg !1054

if.else83.i:                                      ; preds = %if.then73.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %endptr138.i, i8* getelementptr inbounds ([3 x i8]* @.str83, i64 0, i64 0), i64 3, i32 1, i1 false) #8, !dbg !1055
  br label %for.cond51.backedge.i

mk_desc.exit:                                     ; preds = %for.cond51.backedge.i, %while.cond.preheader.i, %if.end45.i, %if.then49.i
  %newdesc.1160.i = phi i8* [ %newdesc.1.i, %if.end45.i ], [ %newdesc.1.i, %if.then49.i ], [ %call21.i, %while.cond.preheader.i ], [ %newdesc.1.i, %for.cond51.backedge.i ]
  store i8* %newdesc.1160.i, i8** %desc.i, align 8, !dbg !831, !tbaa !636
  %indvars.iv.next581 = add i64 %indvars.iv580, 1, !dbg !1003
  %lftr.wideiv582 = trunc i64 %indvars.iv.next581 to i32, !dbg !1003
  %exitcond583 = icmp eq i32 %lftr.wideiv582, %npall.7.lcssa, !dbg !1003
  br i1 %exitcond583, label %for.end227, label %for.body217, !dbg !1003

for.end227:                                       ; preds = %mk_desc.exit, %for.cond214.preheader
  %115 = load i32* @parse_common_args.bHelp, align 4, !dbg !1056, !tbaa !729
  %tobool228 = icmp eq i32 %115, 0, !dbg !1056
  br i1 %tobool228, label %lor.rhs, label %lor.end, !dbg !1056

lor.rhs:                                          ; preds = %for.end227
  %116 = load i8** getelementptr inbounds ([8 x i8*]* @parse_common_args.manstr, i64 0, i64 0), align 16, !dbg !1056, !tbaa !636
  %call229 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0)) #10, !dbg !1056
  %cmp230 = icmp ne i32 %call229, 0, !dbg !1056
  br label %lor.end, !dbg !1056

lor.end:                                          ; preds = %for.end227, %lor.rhs
  %117 = phi i1 [ %cmp230, %lor.rhs ], [ true, %for.end227 ]
  %118 = load i32* @parse_common_args.bGUI, align 4, !dbg !1057, !tbaa !729
  %tobool232 = icmp eq i32 %118, 0, !dbg !1057
  br i1 %tobool232, label %if.end242, label %if.then233, !dbg !1057

if.then233:                                       ; preds = %lor.end
  %119 = load i64* @uFlags, align 8, !dbg !1058, !tbaa !893
  %and234 = and i64 %119, 8192, !dbg !1058
  %cmp235 = icmp eq i64 %and234, 0, !dbg !1058
  br i1 %cmp235, label %if.else239, label %if.then237, !dbg !1058

if.then237:                                       ; preds = %if.then233
  %120 = load i8** getelementptr inbounds ([6 x i8*]* @parse_common_args.nicestr, i64 0, i64 0), align 16, !dbg !1060, !tbaa !636
  %call238 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %120, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i32* @parse_common_args.nicelevel) #11, !dbg !1060
  br label %if.end242, !dbg !1060

if.else239:                                       ; preds = %if.then233
  %121 = load i8** getelementptr inbounds ([6 x i8*]* @parse_common_args.not_nicestr, i64 0, i64 0), align 16, !dbg !1061, !tbaa !636
  %call240 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %121, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i32* @parse_common_args.nicelevel) #11, !dbg !1061
  br label %if.end242

if.end242:                                        ; preds = %lor.end, %if.then237, %if.else239
  %122 = load i64* @uFlags, align 8, !dbg !1062, !tbaa !893
  %and243 = and i64 %122, 4096, !dbg !1062
  %cmp244 = icmp ne i64 %and243, 0, !dbg !1062
  %123 = load i32* @parse_common_args.bQuiet, align 4, !dbg !1062, !tbaa !729
  %tobool246 = icmp ne i32 %123, 0, !dbg !1062
  %or.cond327 = or i1 %cmp244, %tobool246, !dbg !1062
  br i1 %or.cond327, label %if.end255, label %if.then247, !dbg !1062

if.then247:                                       ; preds = %if.end242
  %124 = load i32* @parse_common_args.bHelp, align 4, !dbg !1063, !tbaa !729
  %tobool248 = icmp eq i32 %124, 0, !dbg !1063
  br i1 %tobool248, label %if.else250, label %if.then249, !dbg !1063

if.then249:                                       ; preds = %if.then247
  %125 = load %struct._IO_FILE** @stderr, align 8, !dbg !833, !tbaa !636
  %126 = load i8** @program, align 8, !dbg !833, !tbaa !636
  %127 = load i32* @parse_common_args.bHidden, align 4, !dbg !833, !tbaa !729
  call void @write_man(%struct._IO_FILE* %125, i8* getelementptr inbounds ([5 x i8]* @.str64, i64 0, i64 0), i8* %126, i32 %ndesc, i8** %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npall.7.lcssa, %struct.t_pargs* %.lcssa, i32 %nbugs, i8** %bugs, i32 %127) #11, !dbg !833
  br label %if.end255, !dbg !833

if.else250:                                       ; preds = %if.then247
  br i1 %lnot, label %if.then252, label %if.end255, !dbg !1064

if.then252:                                       ; preds = %if.else250
  %128 = load %struct._IO_FILE** @stderr, align 8, !dbg !1065, !tbaa !636
  call void @pr_fns(%struct._IO_FILE* %128, i32 %nfile, %struct.t_filenm* %fnm) #11, !dbg !1065
  %129 = load %struct._IO_FILE** @stderr, align 8, !dbg !835, !tbaa !636
  call void @print_pargs(%struct._IO_FILE* %129, i32 %npall.7.lcssa, %struct.t_pargs* %.lcssa) #11, !dbg !835
  br label %if.end255, !dbg !1066

if.end255:                                        ; preds = %if.else250, %if.end242, %if.then249, %if.then252
  %130 = load i8** getelementptr inbounds ([8 x i8*]* @parse_common_args.manstr, i64 0, i64 0), align 16, !dbg !1067, !tbaa !636
  %call256 = call i32 @strcmp(i8* %130, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0)) #10, !dbg !1067
  %cmp257 = icmp eq i32 %call256, 0, !dbg !1067
  br i1 %cmp257, label %if.end269, label %if.then259, !dbg !1067

if.then259:                                       ; preds = %if.end255
  %call260 = call i32 @strcmp(i8* %130, i8* getelementptr inbounds ([11 x i8]* @.str18, i64 0, i64 0)) #10, !dbg !1068
  %tobool261 = icmp eq i32 %call260, 0, !dbg !1068
  %131 = load i8** @program, align 8, !dbg !1069, !tbaa !636
  br i1 %tobool261, label %if.then262, label %if.else266, !dbg !1068

if.then262:                                       ; preds = %if.then259
  %call263 = call fastcc %struct._IO_FILE* @man_file(i8* %131, i8* getelementptr inbounds ([15 x i8]* @.str65, i64 0, i64 0)) #13, !dbg !1070
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call263}, i64 0, metadata !475), !dbg !1070
  %132 = load i8** @program, align 8, !dbg !837, !tbaa !636
  %133 = load i32* @parse_common_args.bHidden, align 4, !dbg !837, !tbaa !729
  call void @write_man(%struct._IO_FILE* %call263, i8* getelementptr inbounds ([15 x i8]* @.str65, i64 0, i64 0), i8* %132, i32 %ndesc, i8** %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npall.7.lcssa, %struct.t_pargs* %.lcssa, i32 %nbugs, i8** %bugs, i32 %133) #11, !dbg !837
  call void @ffclose(%struct._IO_FILE* %call263) #11, !dbg !1071
  %134 = load i8** @program, align 8, !dbg !1072, !tbaa !636
  %call264 = call fastcc %struct._IO_FILE* @man_file(i8* %134, i8* getelementptr inbounds ([16 x i8]* @.str66, i64 0, i64 0)) #13, !dbg !1072
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call264}, i64 0, metadata !475), !dbg !1072
  %135 = load i8** @program, align 8, !dbg !840, !tbaa !636
  %136 = load i32* @parse_common_args.bHidden, align 4, !dbg !840, !tbaa !729
  call void @write_man(%struct._IO_FILE* %call264, i8* getelementptr inbounds ([16 x i8]* @.str66, i64 0, i64 0), i8* %135, i32 %ndesc, i8** %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npall.7.lcssa, %struct.t_pargs* %.lcssa, i32 %nbugs, i8** %bugs, i32 %136) #11, !dbg !840
  call void @ffclose(%struct._IO_FILE* %call264) #11, !dbg !1073
  %137 = load i8** @program, align 8, !dbg !1074, !tbaa !636
  %call265 = call fastcc %struct._IO_FILE* @man_file(i8* %137, i8* getelementptr inbounds ([15 x i8]* @.str67, i64 0, i64 0)) #13, !dbg !1074
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call265}, i64 0, metadata !475), !dbg !1074
  %138 = load i8** @program, align 8, !dbg !841, !tbaa !636
  %139 = load i32* @parse_common_args.bHidden, align 4, !dbg !841, !tbaa !729
  call void @write_man(%struct._IO_FILE* %call265, i8* getelementptr inbounds ([15 x i8]* @.str67, i64 0, i64 0), i8* %138, i32 %ndesc, i8** %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npall.7.lcssa, %struct.t_pargs* %.lcssa, i32 %nbugs, i8** %bugs, i32 %139) #11, !dbg !841
  call void @ffclose(%struct._IO_FILE* %call265) #11, !dbg !1075
  br label %if.end269, !dbg !1076

if.else266:                                       ; preds = %if.then259
  %call267 = call fastcc %struct._IO_FILE* @man_file(i8* %131, i8* %130) #13, !dbg !1069
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call267}, i64 0, metadata !475), !dbg !1069
  %140 = load i8** getelementptr inbounds ([8 x i8*]* @parse_common_args.manstr, i64 0, i64 0), align 16, !dbg !842, !tbaa !636
  %141 = load i8** @program, align 8, !dbg !842, !tbaa !636
  %142 = load i32* @parse_common_args.bHidden, align 4, !dbg !842, !tbaa !729
  call void @write_man(%struct._IO_FILE* %call267, i8* %140, i8* %141, i32 %ndesc, i8** %desc, i32 %nfile, %struct.t_filenm* %fnm, i32 %npall.7.lcssa, %struct.t_pargs* %.lcssa, i32 %nbugs, i8** %bugs, i32 %142) #11, !dbg !842
  call void @ffclose(%struct._IO_FILE* %call267) #11, !dbg !1077
  br label %if.end269

if.end269:                                        ; preds = %if.end255, %if.then262, %if.else266
  call fastcc void @init_time_factor() #13, !dbg !1078
  call void @llvm.dbg.value(metadata !84, i64 0, metadata !530), !dbg !1079
  br i1 %cmp145557, label %for.body273, label %for.end303, !dbg !1079

for.cond294.preheader:                            ; preds = %for.inc291
  br i1 %cmp145557, label %for.body297, label %for.end303, !dbg !1080

for.body273:                                      ; preds = %if.end269, %for.inc291
  %indvars.iv576 = phi i64 [ %indvars.iv.next577, %for.inc291 ], [ 0, %if.end269 ]
  %type276 = getelementptr inbounds %struct.t_pargs* %.lcssa, i64 %indvars.iv576, i32 2, !dbg !844
  %143 = load i32* %type276, align 4, !dbg !844, !tbaa !729
  %cmp277 = icmp eq i32 %143, 2, !dbg !844
  br i1 %cmp277, label %land.lhs.true279, label %for.inc291, !dbg !844

land.lhs.true279:                                 ; preds = %for.body273
  %u282 = getelementptr inbounds %struct.t_pargs* %.lcssa, i64 %indvars.iv576, i32 3, !dbg !844
  %r = bitcast %union.anon* %u282 to float**, !dbg !844
  %144 = load float** %r, align 8, !dbg !844, !tbaa !636
  %145 = load float* %144, align 4, !dbg !844, !tbaa !665
  %cmp283 = fcmp ult float %145, 0.000000e+00, !dbg !844
  br i1 %cmp283, label %for.inc291, label %if.then285, !dbg !844

if.then285:                                       ; preds = %land.lhs.true279
  %146 = load float* @timefactor, align 4, !dbg !1081, !tbaa !665
  %div = fdiv float %145, %146, !dbg !1081
  store float %div, float* %144, align 4, !dbg !1081, !tbaa !665
  br label %for.inc291, !dbg !1083

for.inc291:                                       ; preds = %land.lhs.true279, %for.body273, %if.then285
  %indvars.iv.next577 = add i64 %indvars.iv576, 1, !dbg !1079
  %lftr.wideiv578 = trunc i64 %indvars.iv.next577 to i32, !dbg !1079
  %exitcond579 = icmp eq i32 %lftr.wideiv578, %npall.7.lcssa, !dbg !1079
  br i1 %exitcond579, label %for.cond294.preheader, label %for.body273, !dbg !1079

for.body297:                                      ; preds = %for.cond294.preheader, %for.body297
  %indvars.iv574 = phi i64 [ %indvars.iv.next575, %for.body297 ], [ 0, %for.cond294.preheader ]
  %desc300 = getelementptr inbounds %struct.t_pargs* %.lcssa, i64 %indvars.iv574, i32 4, !dbg !847
  %147 = load i8** %desc300, align 8, !dbg !847, !tbaa !636
  call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str68, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 745, i8* %147) #11, !dbg !847
  %indvars.iv.next575 = add i64 %indvars.iv574, 1, !dbg !1080
  %lftr.wideiv = trunc i64 %indvars.iv.next575 to i32, !dbg !1080
  %exitcond = icmp eq i32 %lftr.wideiv, %npall.7.lcssa, !dbg !1080
  br i1 %exitcond, label %for.end303, label %for.body297, !dbg !1080

for.end303:                                       ; preds = %if.end269, %for.body297, %for.cond294.preheader
  %148 = bitcast %struct.t_pargs* %.lcssa to i8*, !dbg !849
  call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 746, i8* %148) #11, !dbg !849
  %149 = load i64* @uFlags, align 8, !dbg !1084, !tbaa !893
  %and304 = and i64 %149, 2048, !dbg !1084
  %cmp305 = icmp eq i64 %and304, 0, !dbg !1084
  br i1 %cmp305, label %if.then307, label %if.end323, !dbg !1084

if.then307:                                       ; preds = %for.end303
  %150 = load i32* %argc, align 4, !dbg !1085, !tbaa !729
  %cmp308 = icmp sgt i32 %150, 1, !dbg !1085
  br i1 %cmp308, label %for.body314, label %if.end323, !dbg !1085

for.body314:                                      ; preds = %if.then307, %for.body314
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body314 ], [ 1, %if.then307 ]
  %151 = load %struct._IO_FILE** @stderr, align 8, !dbg !1087, !tbaa !636
  %arrayidx316 = getelementptr inbounds i8** %argv, i64 %indvars.iv, !dbg !1087
  %152 = load i8** %arrayidx316, align 8, !dbg !1087, !tbaa !636
  %call317 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %151, i8* getelementptr inbounds ([22 x i8]* @.str69, i64 0, i64 0), i8* %152) #11, !dbg !1087
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1090
  %153 = load i32* %argc, align 4, !dbg !1090, !tbaa !729
  %154 = trunc i64 %indvars.iv.next to i32, !dbg !1090
  %cmp312 = icmp slt i32 %154, %153, !dbg !1090
  br i1 %cmp312, label %for.body314, label %for.end320, !dbg !1090

for.end320:                                       ; preds = %for.body314
  %155 = load i8** @program, align 8, !dbg !1091, !tbaa !636
  %tobool.i515 = icmp eq i8* %155, null, !dbg !1091
  %..i = select i1 %tobool.i515, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* %155, !dbg !1093
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([18 x i8]* @.str70, i64 0, i64 0), i8* %..i) #11, !dbg !1092
  br label %if.end323, !dbg !1094

if.end323:                                        ; preds = %for.end303, %if.then307, %for.end320
  br i1 %117, label %if.then325, label %if.end326, !dbg !1095

if.then325:                                       ; preds = %if.end323
  call void @exit(i32 0) #14, !dbg !1096
  unreachable, !dbg !1096

if.end326:                                        ; preds = %if.end323
  ret void, !dbg !1098
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #8

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #8

; Function Attrs: optsize
declare i32 @gmx_node_id() #7

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #2

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #7

; Function Attrs: optsize
declare void @get_pargs(i32*, i8**, i32, %struct.t_pargs*, i32) #7

; Function Attrs: optsize
declare void @set_default_file_name(i8*) #7

; Function Attrs: optsize
declare void @parse_file_args(i32*, i8**, i32, %struct.t_filenm*, i32) #7

; Function Attrs: optsize
declare i32 @gmx_node_num() #7

; Function Attrs: optsize
declare void @init_debug(i8*) #7

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #8

; Function Attrs: optsize
declare void @write_man(%struct._IO_FILE*, i8*, i8*, i32, i8**, i32, %struct.t_filenm*, i32, %struct.t_pargs*, i32, i8**, i32) #7

; Function Attrs: optsize
declare void @pr_fns(%struct._IO_FILE*, i32, %struct.t_filenm*) #7

; Function Attrs: optsize
declare void @print_pargs(%struct._IO_FILE*, i32, %struct.t_pargs*) #7

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct._IO_FILE* @man_file(i8* %program, i8* %mantp) #3 {
entry:
  %buf = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %program}, i64 0, metadata !560), !dbg !1099
  call void @llvm.dbg.value(metadata !{i8* %mantp}, i64 0, metadata !561), !dbg !1099
  %0 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0, !dbg !1100
  call void @llvm.lifetime.start(i64 256, i8* %0) #8, !dbg !1100
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %buf}, metadata !563), !dbg !1100
  %call = call i8* @strrchr(i8* %program, i32 47) #10, !dbg !1101
  call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !564), !dbg !1101
  %cmp = icmp eq i8* %call, null, !dbg !1101
  %add.ptr = getelementptr inbounds i8* %call, i64 1, !dbg !1102
  call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !564), !dbg !1102
  %pr.0 = select i1 %cmp, i8* %program, i8* %add.ptr, !dbg !1101
  %call1 = call i32 @strcmp(i8* %mantp, i8* getelementptr inbounds ([6 x i8]* @.str17, i64 0, i64 0)) #10, !dbg !1103
  %cmp2 = icmp eq i32 %call1, 0, !dbg !1103
  br i1 %cmp2, label %if.else5, label %if.then3, !dbg !1103

if.then3:                                         ; preds = %entry
  %call4 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str71, i64 0, i64 0), i8* %pr.0, i8* %mantp) #11, !dbg !1104
  br label %if.end8, !dbg !1104

if.else5:                                         ; preds = %entry
  %call7 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str72, i64 0, i64 0), i8* %pr.0) #11, !dbg !1105
  br label %if.end8

if.end8:                                          ; preds = %if.else5, %if.then3
  %call10 = call %struct._IO_FILE* @ffopen(i8* %0, i8* getelementptr inbounds ([2 x i8]* @.str73, i64 0, i64 0)) #11, !dbg !1106
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call10}, i64 0, metadata !562), !dbg !1106
  call void @llvm.lifetime.end(i64 256, i8* %0) #8, !dbg !1107
  ret %struct._IO_FILE* %call10, !dbg !1107
}

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #7

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #7

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #9

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #7

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #2

; Function Attrs: optsize
declare i32 @is_hidden(%struct.t_pargs*) #7

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i8* @strcat(i8*, i8* nocapture) #4

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #7

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @init_time_factor() #3 {
entry:
  %0 = load float* @timefactor, align 4, !dbg !1108, !tbaa !665
  %sub = fadd float %0, 1.234500e+04, !dbg !1108
  %fabsf = tail call float @fabsf(float %sub) #6, !dbg !1108
  %1 = fpext float %fabsf to double, !dbg !1108
  %cmp = fcmp olt double %1, 1.200000e-38, !dbg !1108
  br i1 %cmp, label %if.then, label %if.end, !dbg !1108

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !689, i64 0, metadata !1109), !dbg !1111
  tail call void @llvm.dbg.value(metadata !680, i64 0, metadata !1112), !dbg !1113
  %2 = load i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 1), align 8, !dbg !1114, !tbaa !636
  %tobool9.i = icmp eq i8* %2, null, !dbg !1114
  br i1 %tobool9.i, label %nenum.exit, label %land.rhs.lr.ph.i, !dbg !1114

land.rhs.lr.ph.i:                                 ; preds = %if.then
  %3 = load i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 0), align 16, !dbg !1114, !tbaa !636
  br label %land.rhs.i, !dbg !1114

while.cond.i:                                     ; preds = %land.rhs.i
  %arrayidx.i = getelementptr inbounds [10 x i8*]* @timestr, i64 0, i64 %indvars.iv.next.i, !dbg !1114
  %4 = load i8** %arrayidx.i, align 8, !dbg !1114, !tbaa !636
  %tobool.i = icmp eq i8* %4, null, !dbg !1114
  br i1 %tobool.i, label %nenum.exit, label %land.rhs.i, !dbg !1114

land.rhs.i:                                       ; preds = %while.cond.i, %land.rhs.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %land.rhs.lr.ph.i ], [ %indvars.iv.next.i, %while.cond.i ]
  %5 = phi i8* [ %2, %land.rhs.lr.ph.i ], [ %4, %while.cond.i ]
  %i.010.i = phi i32 [ 1, %land.rhs.lr.ph.i ], [ %inc.i, %while.cond.i ]
  %cmp.i = icmp eq i8* %3, %5, !dbg !1114
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !1114
  %inc.i = add nsw i32 %i.010.i, 1, !dbg !1115
  tail call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !1112), !dbg !1115
  br i1 %cmp.i, label %nenum.exit, label %while.cond.i

nenum.exit:                                       ; preds = %while.cond.i, %land.rhs.i, %if.then
  %i.0.lcssa.i = phi i32 [ 1, %if.then ], [ %inc.i, %while.cond.i ], [ %i.010.i, %land.rhs.i ]
  %idxprom = sext i32 %i.0.lcssa.i to i64, !dbg !1110
  %arrayidx = getelementptr inbounds [10 x float]* @timefactors, i64 0, i64 %idxprom, !dbg !1110
  %6 = load float* %arrayidx, align 4, !dbg !1110, !tbaa !665
  store float %6, float* @timefactor, align 4, !dbg !1110, !tbaa !665
  br label %if.end, !dbg !1110

if.end:                                           ; preds = %nenum.exit, %entry
  ret void, !dbg !1116
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare float @fabsf(float)

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind optsize readonly }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind optsize readnone }
attributes #13 = { optsize }
attributes #14 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !84, metadata !85, metadata !596, metadata !84, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !10, metadata !58, metadata !73}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 38, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 38, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/enums.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9}
!6 = metadata !{i32 786472, metadata !"ebCGS", i64 0} ; [ DW_TAG_enumerator ] [ebCGS :: 0]
!7 = metadata !{i32 786472, metadata !"ebMOLS", i64 1} ; [ DW_TAG_enumerator ] [ebMOLS :: 1]
!8 = metadata !{i32 786472, metadata !"ebSBLOCKS", i64 2} ; [ DW_TAG_enumerator ] [ebSBLOCKS :: 2]
!9 = metadata !{i32 786472, metadata !"ebNR", i64 3} ; [ DW_TAG_enumerator ] [ebNR :: 3]
!10 = metadata !{i32 786436, metadata !11, null, metadata !"", i32 49, i64 32, i64 32, i32 0, i32 0, null, metadata !12, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 49, size 32, align 32, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/idef.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57}
!13 = metadata !{i32 786472, metadata !"F_BONDS", i64 0} ; [ DW_TAG_enumerator ] [F_BONDS :: 0]
!14 = metadata !{i32 786472, metadata !"F_G96BONDS", i64 1} ; [ DW_TAG_enumerator ] [F_G96BONDS :: 1]
!15 = metadata !{i32 786472, metadata !"F_MORSE", i64 2} ; [ DW_TAG_enumerator ] [F_MORSE :: 2]
!16 = metadata !{i32 786472, metadata !"F_CUBICBONDS", i64 3} ; [ DW_TAG_enumerator ] [F_CUBICBONDS :: 3]
!17 = metadata !{i32 786472, metadata !"F_CONNBONDS", i64 4} ; [ DW_TAG_enumerator ] [F_CONNBONDS :: 4]
!18 = metadata !{i32 786472, metadata !"F_HARMONIC", i64 5} ; [ DW_TAG_enumerator ] [F_HARMONIC :: 5]
!19 = metadata !{i32 786472, metadata !"F_ANGLES", i64 6} ; [ DW_TAG_enumerator ] [F_ANGLES :: 6]
!20 = metadata !{i32 786472, metadata !"F_G96ANGLES", i64 7} ; [ DW_TAG_enumerator ] [F_G96ANGLES :: 7]
!21 = metadata !{i32 786472, metadata !"F_PDIHS", i64 8} ; [ DW_TAG_enumerator ] [F_PDIHS :: 8]
!22 = metadata !{i32 786472, metadata !"F_RBDIHS", i64 9} ; [ DW_TAG_enumerator ] [F_RBDIHS :: 9]
!23 = metadata !{i32 786472, metadata !"F_IDIHS", i64 10} ; [ DW_TAG_enumerator ] [F_IDIHS :: 10]
!24 = metadata !{i32 786472, metadata !"F_LJ14", i64 11} ; [ DW_TAG_enumerator ] [F_LJ14 :: 11]
!25 = metadata !{i32 786472, metadata !"F_COUL14", i64 12} ; [ DW_TAG_enumerator ] [F_COUL14 :: 12]
!26 = metadata !{i32 786472, metadata !"F_LJ", i64 13} ; [ DW_TAG_enumerator ] [F_LJ :: 13]
!27 = metadata !{i32 786472, metadata !"F_BHAM", i64 14} ; [ DW_TAG_enumerator ] [F_BHAM :: 14]
!28 = metadata !{i32 786472, metadata !"F_LJLR", i64 15} ; [ DW_TAG_enumerator ] [F_LJLR :: 15]
!29 = metadata !{i32 786472, metadata !"F_DISPCORR", i64 16} ; [ DW_TAG_enumerator ] [F_DISPCORR :: 16]
!30 = metadata !{i32 786472, metadata !"F_SR", i64 17} ; [ DW_TAG_enumerator ] [F_SR :: 17]
!31 = metadata !{i32 786472, metadata !"F_LR", i64 18} ; [ DW_TAG_enumerator ] [F_LR :: 18]
!32 = metadata !{i32 786472, metadata !"F_WPOL", i64 19} ; [ DW_TAG_enumerator ] [F_WPOL :: 19]
!33 = metadata !{i32 786472, metadata !"F_POSRES", i64 20} ; [ DW_TAG_enumerator ] [F_POSRES :: 20]
!34 = metadata !{i32 786472, metadata !"F_DISRES", i64 21} ; [ DW_TAG_enumerator ] [F_DISRES :: 21]
!35 = metadata !{i32 786472, metadata !"F_DISRESVIOL", i64 22} ; [ DW_TAG_enumerator ] [F_DISRESVIOL :: 22]
!36 = metadata !{i32 786472, metadata !"F_ORIRES", i64 23} ; [ DW_TAG_enumerator ] [F_ORIRES :: 23]
!37 = metadata !{i32 786472, metadata !"F_ORIRESDEV", i64 24} ; [ DW_TAG_enumerator ] [F_ORIRESDEV :: 24]
!38 = metadata !{i32 786472, metadata !"F_ANGRES", i64 25} ; [ DW_TAG_enumerator ] [F_ANGRES :: 25]
!39 = metadata !{i32 786472, metadata !"F_ANGRESZ", i64 26} ; [ DW_TAG_enumerator ] [F_ANGRESZ :: 26]
!40 = metadata !{i32 786472, metadata !"F_SHAKE", i64 27} ; [ DW_TAG_enumerator ] [F_SHAKE :: 27]
!41 = metadata !{i32 786472, metadata !"F_SHAKENC", i64 28} ; [ DW_TAG_enumerator ] [F_SHAKENC :: 28]
!42 = metadata !{i32 786472, metadata !"F_SETTLE", i64 29} ; [ DW_TAG_enumerator ] [F_SETTLE :: 29]
!43 = metadata !{i32 786472, metadata !"F_DUMMY2", i64 30} ; [ DW_TAG_enumerator ] [F_DUMMY2 :: 30]
!44 = metadata !{i32 786472, metadata !"F_DUMMY3", i64 31} ; [ DW_TAG_enumerator ] [F_DUMMY3 :: 31]
!45 = metadata !{i32 786472, metadata !"F_DUMMY3FD", i64 32} ; [ DW_TAG_enumerator ] [F_DUMMY3FD :: 32]
!46 = metadata !{i32 786472, metadata !"F_DUMMY3FAD", i64 33} ; [ DW_TAG_enumerator ] [F_DUMMY3FAD :: 33]
!47 = metadata !{i32 786472, metadata !"F_DUMMY3OUT", i64 34} ; [ DW_TAG_enumerator ] [F_DUMMY3OUT :: 34]
!48 = metadata !{i32 786472, metadata !"F_DUMMY4FD", i64 35} ; [ DW_TAG_enumerator ] [F_DUMMY4FD :: 35]
!49 = metadata !{i32 786472, metadata !"F_EQM", i64 36} ; [ DW_TAG_enumerator ] [F_EQM :: 36]
!50 = metadata !{i32 786472, metadata !"F_EPOT", i64 37} ; [ DW_TAG_enumerator ] [F_EPOT :: 37]
!51 = metadata !{i32 786472, metadata !"F_EKIN", i64 38} ; [ DW_TAG_enumerator ] [F_EKIN :: 38]
!52 = metadata !{i32 786472, metadata !"F_ETOT", i64 39} ; [ DW_TAG_enumerator ] [F_ETOT :: 39]
!53 = metadata !{i32 786472, metadata !"F_TEMP", i64 40} ; [ DW_TAG_enumerator ] [F_TEMP :: 40]
!54 = metadata !{i32 786472, metadata !"F_PRES", i64 41} ; [ DW_TAG_enumerator ] [F_PRES :: 41]
!55 = metadata !{i32 786472, metadata !"F_DVDL", i64 42} ; [ DW_TAG_enumerator ] [F_DVDL :: 42]
!56 = metadata !{i32 786472, metadata !"F_DVDLKIN", i64 43} ; [ DW_TAG_enumerator ] [F_DVDLKIN :: 43]
!57 = metadata !{i32 786472, metadata !"F_NRE", i64 44} ; [ DW_TAG_enumerator ] [F_NRE :: 44]
!58 = metadata !{i32 786436, metadata !59, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [from ]
!59 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!60 = metadata !{metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72}
!61 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!62 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!63 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!64 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!65 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!66 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!67 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!68 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!69 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!70 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!71 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!72 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!73 = metadata !{i32 786436, metadata !74, null, metadata !"", i32 83, i64 32, i64 32, i32 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 83, size 32, align 32, offset 0] [from ]
!74 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!75 = metadata !{metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83}
!76 = metadata !{i32 786472, metadata !"etINT", i64 0} ; [ DW_TAG_enumerator ] [etINT :: 0]
!77 = metadata !{i32 786472, metadata !"etREAL", i64 1} ; [ DW_TAG_enumerator ] [etREAL :: 1]
!78 = metadata !{i32 786472, metadata !"etTIME", i64 2} ; [ DW_TAG_enumerator ] [etTIME :: 2]
!79 = metadata !{i32 786472, metadata !"etSTR", i64 3} ; [ DW_TAG_enumerator ] [etSTR :: 3]
!80 = metadata !{i32 786472, metadata !"etBOOL", i64 4} ; [ DW_TAG_enumerator ] [etBOOL :: 4]
!81 = metadata !{i32 786472, metadata !"etRVEC", i64 5} ; [ DW_TAG_enumerator ] [etRVEC :: 5]
!82 = metadata !{i32 786472, metadata !"etENUM", i64 6} ; [ DW_TAG_enumerator ] [etENUM :: 6]
!83 = metadata !{i32 786472, metadata !"etNR", i64 7} ; [ DW_TAG_enumerator ] [etNR :: 7]
!84 = metadata !{i32 0}
!85 = metadata !{metadata !86, metadata !94, metadata !95, metadata !100, metadata !110, metadata !122, metadata !127, metadata !128, metadata !129, metadata !130, metadata !133, metadata !138, metadata !146, metadata !149, metadata !392, metadata !398, metadata !406, metadata !414, metadata !421, metadata !427, metadata !430, metadata !556, metadata !565, metadata !576, metadata !581, metadata !589, metadata !595}
!86 = metadata !{i32 786478, metadata !1, metadata !87, metadata !"ShortProgram", metadata !"ShortProgram", metadata !"", i32 84, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @ShortProgram, null, null, metadata !92, i32 85} ; [ DW_TAG_subprogram ] [line 84] [def] [scope 85] [ShortProgram]
!87 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!88 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!89 = metadata !{metadata !90}
!90 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !91} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!91 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!92 = metadata !{metadata !93}
!93 = metadata !{i32 786688, metadata !86, metadata !"pr", metadata !87, i32 86, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pr] [line 86]
!94 = metadata !{i32 786478, metadata !1, metadata !87, metadata !"Program", metadata !"Program", metadata !"", i32 98, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @Program, null, null, metadata !84, i32 99} ; [ DW_TAG_subprogram ] [line 98] [def] [scope 99] [Program]
!95 = metadata !{i32 786478, metadata !1, metadata !87, metadata !"set_program_name", metadata !"set_program_name", metadata !"", i32 106, metadata !96, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @set_program_name, null, null, metadata !98, i32 107} ; [ DW_TAG_subprogram ] [line 106] [def] [scope 107] [set_program_name]
!96 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !97, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!97 = metadata !{null, metadata !90}
!98 = metadata !{metadata !99}
!99 = metadata !{i32 786689, metadata !95, metadata !"argvzero", metadata !87, i32 16777322, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argvzero] [line 106]
!100 = metadata !{i32 786478, metadata !1, metadata !87, metadata !"bRmod", metadata !"bRmod", metadata !"", i32 126, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double, double)* @bRmod, null, null, metadata !105, i32 127} ; [ DW_TAG_subprogram ] [line 126] [def] [scope 127] [bRmod]
!101 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !102, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!102 = metadata !{metadata !103, metadata !104, metadata !104}
!103 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!104 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!105 = metadata !{metadata !106, metadata !107, metadata !108, metadata !109}
!106 = metadata !{i32 786689, metadata !100, metadata !"a", metadata !87, i32 16777342, metadata !104, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 126]
!107 = metadata !{i32 786689, metadata !100, metadata !"b", metadata !87, i32 33554558, metadata !104, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 126]
!108 = metadata !{i32 786688, metadata !100, metadata !"iq", metadata !87, i32 128, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iq] [line 128]
!109 = metadata !{i32 786688, metadata !100, metadata !"tol", metadata !87, i32 129, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tol] [line 129]
!110 = metadata !{i32 786478, metadata !1, metadata !87, metadata !"check_times2", metadata !"check_times2", metadata !"", i32 141, metadata !111, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float, float, float, float)* @check_times2, null, null, metadata !115, i32 142} ; [ DW_TAG_subprogram ] [line 141] [def] [scope 142] [check_times2]
!111 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!112 = metadata !{metadata !103, metadata !113, metadata !113, metadata !113, metadata !113}
!113 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !114} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!114 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!115 = metadata !{metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121}
!116 = metadata !{i32 786689, metadata !110, metadata !"t", metadata !87, i32 16777357, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 141]
!117 = metadata !{i32 786689, metadata !110, metadata !"t0", metadata !87, i32 33554573, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t0] [line 141]
!118 = metadata !{i32 786689, metadata !110, metadata !"tp", metadata !87, i32 50331789, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tp] [line 141]
!119 = metadata !{i32 786689, metadata !110, metadata !"tpp", metadata !87, i32 67109005, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tpp] [line 141]
!120 = metadata !{i32 786688, metadata !110, metadata !"r", metadata !87, i32 143, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 143]
!121 = metadata !{i32 786688, metadata !110, metadata !"margin", metadata !87, i32 144, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [margin] [line 144]
!122 = metadata !{i32 786478, metadata !1, metadata !87, metadata !"check_times", metadata !"check_times", metadata !"", i32 166, metadata !123, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float)* @check_times, null, null, metadata !125, i32 167} ; [ DW_TAG_subprogram ] [line 166] [def] [scope 167] [check_times]
!123 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !124, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!124 = metadata !{metadata !103, metadata !113}
!125 = metadata !{metadata !126}
!126 = metadata !{i32 786689, metadata !122, metadata !"t", metadata !87, i32 16777382, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 166]
!127 = metadata !{i32 786478, metadata !1, metadata !87, metadata !"time_unit", metadata !"time_unit", metadata !"", i32 171, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @time_unit, null, null, metadata !84, i32 172} ; [ DW_TAG_subprogram ] [line 171] [def] [scope 172] [time_unit]
!128 = metadata !{i32 786478, metadata !1, metadata !87, metadata !"time_label", metadata !"time_label", metadata !"", i32 176, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @time_label, null, null, metadata !84, i32 177} ; [ DW_TAG_subprogram ] [line 176] [def] [scope 177] [time_label]
!129 = metadata !{i32 786478, metadata !1, metadata !87, metadata !"xvgr_tlabel", metadata !"xvgr_tlabel", metadata !"", i32 185, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @xvgr_tlabel, null, null, metadata !84, i32 186} ; [ DW_TAG_subprogram ] [line 185] [def] [scope 186] [xvgr_tlabel]
!130 = metadata !{i32 786478, metadata !1, metadata !87, metadata !"time_factor", metadata !"time_factor", metadata !"", i32 201, metadata !131, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float ()* @time_factor, null, null, metadata !84, i32 202} ; [ DW_TAG_subprogram ] [line 201] [def] [scope 202] [time_factor]
!131 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !132, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!132 = metadata !{metadata !113}
!133 = metadata !{i32 786478, metadata !1, metadata !87, metadata !"convert_time", metadata !"convert_time", metadata !"", i32 208, metadata !134, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float)* @convert_time, null, null, metadata !136, i32 209} ; [ DW_TAG_subprogram ] [line 208] [def] [scope 209] [convert_time]
!134 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !135, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!135 = metadata !{metadata !113, metadata !113}
!136 = metadata !{metadata !137}
!137 = metadata !{i32 786689, metadata !133, metadata !"time", metadata !87, i32 16777424, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [time] [line 208]
!138 = metadata !{i32 786478, metadata !1, metadata !87, metadata !"convert_times", metadata !"convert_times", metadata !"", i32 216, metadata !139, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, float*)* @convert_times, null, null, metadata !142, i32 217} ; [ DW_TAG_subprogram ] [line 216] [def] [scope 217] [convert_times]
!139 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !140, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!140 = metadata !{null, metadata !103, metadata !141}
!141 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !113} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!142 = metadata !{metadata !143, metadata !144, metadata !145}
!143 = metadata !{i32 786689, metadata !138, metadata !"n", metadata !87, i32 16777432, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 216]
!144 = metadata !{i32 786689, metadata !138, metadata !"time", metadata !87, i32 33554648, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [time] [line 216]
!145 = metadata !{i32 786688, metadata !138, metadata !"i", metadata !87, i32 218, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 218]
!146 = metadata !{i32 786478, metadata !1, metadata !87, metadata !"default_time", metadata !"default_time", metadata !"", i32 227, metadata !147, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @default_time, null, null, metadata !84, i32 228} ; [ DW_TAG_subprogram ] [line 227] [def] [scope 228] [default_time]
!147 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !148, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!148 = metadata !{null}
!149 = metadata !{i32 786478, metadata !1, metadata !87, metadata !"read_top", metadata !"read_top", metadata !"", i32 258, metadata !150, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.t_topology* (i8*)* @read_top, null, null, metadata !385, i32 259} ; [ DW_TAG_subprogram ] [line 258] [def] [scope 259] [read_top]
!150 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !151, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!151 = metadata !{metadata !152, metadata !90}
!152 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !153} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_topology]
!153 = metadata !{i32 786454, metadata !1, null, metadata !"t_topology", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !154} ; [ DW_TAG_typedef ] [t_topology] [line 42, size 0, align 0, offset 0] [from ]
!154 = metadata !{i32 786451, metadata !155, null, metadata !"", i32 36, i64 402112, i64 64, i32 0, i32 0, null, metadata !156, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 402112, align 64, offset 0] [from ]
!155 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/topology.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!156 = metadata !{metadata !157, metadata !159, metadata !300, metadata !368, metadata !370}
!157 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"name", i32 37, i64 64, i64 64, i64 0, i32 0, metadata !158} ; [ DW_TAG_member ] [name] [line 37, size 64, align 64, offset 0] [from ]
!158 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !90} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!159 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"idef", i32 38, i64 366336, i64 64, i64 64, i32 0, metadata !160} ; [ DW_TAG_member ] [idef] [line 38, size 366336, align 64, offset 64] [from t_idef]
!160 = metadata !{i32 786454, metadata !155, null, metadata !"t_idef", i32 188, i64 0, i64 0, i64 0, i32 0, metadata !161} ; [ DW_TAG_typedef ] [t_idef] [line 188, size 0, align 0, offset 0] [from ]
!161 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 179, i64 366336, i64 64, i32 0, i32 0, null, metadata !162, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 179, size 366336, align 64, offset 0] [from ]
!162 = metadata !{metadata !163, metadata !164, metadata !165, metadata !166, metadata !169, metadata !284}
!163 = metadata !{i32 786445, metadata !11, metadata !161, metadata !"ntypes", i32 181, i64 32, i64 32, i64 0, i32 0, metadata !103} ; [ DW_TAG_member ] [ntypes] [line 181, size 32, align 32, offset 0] [from int]
!164 = metadata !{i32 786445, metadata !11, metadata !161, metadata !"nodeid", i32 182, i64 32, i64 32, i64 32, i32 0, metadata !103} ; [ DW_TAG_member ] [nodeid] [line 182, size 32, align 32, offset 32] [from int]
!165 = metadata !{i32 786445, metadata !11, metadata !161, metadata !"atnr", i32 183, i64 32, i64 32, i64 64, i32 0, metadata !103} ; [ DW_TAG_member ] [atnr] [line 183, size 32, align 32, offset 64] [from int]
!166 = metadata !{i32 786445, metadata !11, metadata !161, metadata !"functype", i32 184, i64 64, i64 64, i64 128, i32 0, metadata !167} ; [ DW_TAG_member ] [functype] [line 184, size 64, align 64, offset 128] [from ]
!167 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !168} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_functype]
!168 = metadata !{i32 786454, metadata !11, null, metadata !"t_functype", i32 133, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [t_functype] [line 133, size 0, align 0, offset 0] [from int]
!169 = metadata !{i32 786445, metadata !11, metadata !161, metadata !"iparams", i32 185, i64 64, i64 64, i64 192, i32 0, metadata !170} ; [ DW_TAG_member ] [iparams] [line 185, size 64, align 64, offset 192] [from ]
!170 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !171} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iparams]
!171 = metadata !{i32 786454, metadata !11, null, metadata !"t_iparams", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !172} ; [ DW_TAG_typedef ] [t_iparams] [line 131, size 0, align 0, offset 0] [from ]
!172 = metadata !{i32 786455, metadata !11, null, metadata !"", i32 97, i64 192, i64 32, i64 0, i32 0, null, metadata !173, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 97, size 192, align 32, offset 0] [from ]
!173 = metadata !{metadata !174, metadata !180, metadata !187, metadata !193, metadata !202, metadata !207, metadata !214, metadata !222, metadata !227, metadata !232, metadata !238, metadata !246, metadata !253, metadata !262, metadata !271, metadata !280}
!174 = metadata !{i32 786445, metadata !11, metadata !172, metadata !"bham", i32 105, i64 96, i64 32, i64 0, i32 0, metadata !175} ; [ DW_TAG_member ] [bham] [line 105, size 96, align 32, offset 0] [from ]
!175 = metadata !{i32 786451, metadata !11, metadata !172, metadata !"", i32 105, i64 96, i64 32, i32 0, i32 0, null, metadata !176, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 105, size 96, align 32, offset 0] [from ]
!176 = metadata !{metadata !177, metadata !178, metadata !179}
!177 = metadata !{i32 786445, metadata !11, metadata !175, metadata !"a", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !113} ; [ DW_TAG_member ] [a] [line 105, size 32, align 32, offset 0] [from real]
!178 = metadata !{i32 786445, metadata !11, metadata !175, metadata !"b", i32 105, i64 32, i64 32, i64 32, i32 0, metadata !113} ; [ DW_TAG_member ] [b] [line 105, size 32, align 32, offset 32] [from real]
!179 = metadata !{i32 786445, metadata !11, metadata !175, metadata !"c", i32 105, i64 32, i64 32, i64 64, i32 0, metadata !113} ; [ DW_TAG_member ] [c] [line 105, size 32, align 32, offset 64] [from real]
!180 = metadata !{i32 786445, metadata !11, metadata !172, metadata !"harmonic", i32 106, i64 128, i64 32, i64 0, i32 0, metadata !181} ; [ DW_TAG_member ] [harmonic] [line 106, size 128, align 32, offset 0] [from ]
!181 = metadata !{i32 786451, metadata !11, metadata !172, metadata !"", i32 106, i64 128, i64 32, i32 0, i32 0, null, metadata !182, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 106, size 128, align 32, offset 0] [from ]
!182 = metadata !{metadata !183, metadata !184, metadata !185, metadata !186}
!183 = metadata !{i32 786445, metadata !11, metadata !181, metadata !"rA", i32 106, i64 32, i64 32, i64 0, i32 0, metadata !113} ; [ DW_TAG_member ] [rA] [line 106, size 32, align 32, offset 0] [from real]
!184 = metadata !{i32 786445, metadata !11, metadata !181, metadata !"krA", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !113} ; [ DW_TAG_member ] [krA] [line 106, size 32, align 32, offset 32] [from real]
!185 = metadata !{i32 786445, metadata !11, metadata !181, metadata !"rB", i32 106, i64 32, i64 32, i64 64, i32 0, metadata !113} ; [ DW_TAG_member ] [rB] [line 106, size 32, align 32, offset 64] [from real]
!186 = metadata !{i32 786445, metadata !11, metadata !181, metadata !"krB", i32 106, i64 32, i64 32, i64 96, i32 0, metadata !113} ; [ DW_TAG_member ] [krB] [line 106, size 32, align 32, offset 96] [from real]
!187 = metadata !{i32 786445, metadata !11, metadata !172, metadata !"cubic", i32 108, i64 96, i64 32, i64 0, i32 0, metadata !188} ; [ DW_TAG_member ] [cubic] [line 108, size 96, align 32, offset 0] [from ]
!188 = metadata !{i32 786451, metadata !11, metadata !172, metadata !"", i32 108, i64 96, i64 32, i32 0, i32 0, null, metadata !189, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 108, size 96, align 32, offset 0] [from ]
!189 = metadata !{metadata !190, metadata !191, metadata !192}
!190 = metadata !{i32 786445, metadata !11, metadata !188, metadata !"b0", i32 108, i64 32, i64 32, i64 0, i32 0, metadata !113} ; [ DW_TAG_member ] [b0] [line 108, size 32, align 32, offset 0] [from real]
!191 = metadata !{i32 786445, metadata !11, metadata !188, metadata !"kb", i32 108, i64 32, i64 32, i64 32, i32 0, metadata !113} ; [ DW_TAG_member ] [kb] [line 108, size 32, align 32, offset 32] [from real]
!192 = metadata !{i32 786445, metadata !11, metadata !188, metadata !"kcub", i32 108, i64 32, i64 32, i64 64, i32 0, metadata !113} ; [ DW_TAG_member ] [kcub] [line 108, size 32, align 32, offset 64] [from real]
!193 = metadata !{i32 786445, metadata !11, metadata !172, metadata !"wpol", i32 110, i64 192, i64 32, i64 0, i32 0, metadata !194} ; [ DW_TAG_member ] [wpol] [line 110, size 192, align 32, offset 0] [from ]
!194 = metadata !{i32 786451, metadata !11, metadata !172, metadata !"", i32 110, i64 192, i64 32, i32 0, i32 0, null, metadata !195, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 110, size 192, align 32, offset 0] [from ]
!195 = metadata !{metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201}
!196 = metadata !{i32 786445, metadata !11, metadata !194, metadata !"kx", i32 110, i64 32, i64 32, i64 0, i32 0, metadata !113} ; [ DW_TAG_member ] [kx] [line 110, size 32, align 32, offset 0] [from real]
!197 = metadata !{i32 786445, metadata !11, metadata !194, metadata !"ky", i32 110, i64 32, i64 32, i64 32, i32 0, metadata !113} ; [ DW_TAG_member ] [ky] [line 110, size 32, align 32, offset 32] [from real]
!198 = metadata !{i32 786445, metadata !11, metadata !194, metadata !"kz", i32 110, i64 32, i64 32, i64 64, i32 0, metadata !113} ; [ DW_TAG_member ] [kz] [line 110, size 32, align 32, offset 64] [from real]
!199 = metadata !{i32 786445, metadata !11, metadata !194, metadata !"rOH", i32 110, i64 32, i64 32, i64 96, i32 0, metadata !113} ; [ DW_TAG_member ] [rOH] [line 110, size 32, align 32, offset 96] [from real]
!200 = metadata !{i32 786445, metadata !11, metadata !194, metadata !"rHH", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !113} ; [ DW_TAG_member ] [rHH] [line 110, size 32, align 32, offset 128] [from real]
!201 = metadata !{i32 786445, metadata !11, metadata !194, metadata !"rOD", i32 110, i64 32, i64 32, i64 160, i32 0, metadata !113} ; [ DW_TAG_member ] [rOD] [line 110, size 32, align 32, offset 160] [from real]
!202 = metadata !{i32 786445, metadata !11, metadata !172, metadata !"lj", i32 111, i64 64, i64 32, i64 0, i32 0, metadata !203} ; [ DW_TAG_member ] [lj] [line 111, size 64, align 32, offset 0] [from ]
!203 = metadata !{i32 786451, metadata !11, metadata !172, metadata !"", i32 111, i64 64, i64 32, i32 0, i32 0, null, metadata !204, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 111, size 64, align 32, offset 0] [from ]
!204 = metadata !{metadata !205, metadata !206}
!205 = metadata !{i32 786445, metadata !11, metadata !203, metadata !"c6", i32 111, i64 32, i64 32, i64 0, i32 0, metadata !113} ; [ DW_TAG_member ] [c6] [line 111, size 32, align 32, offset 0] [from real]
!206 = metadata !{i32 786445, metadata !11, metadata !203, metadata !"c12", i32 111, i64 32, i64 32, i64 32, i32 0, metadata !113} ; [ DW_TAG_member ] [c12] [line 111, size 32, align 32, offset 32] [from real]
!207 = metadata !{i32 786445, metadata !11, metadata !172, metadata !"lj14", i32 112, i64 128, i64 32, i64 0, i32 0, metadata !208} ; [ DW_TAG_member ] [lj14] [line 112, size 128, align 32, offset 0] [from ]
!208 = metadata !{i32 786451, metadata !11, metadata !172, metadata !"", i32 112, i64 128, i64 32, i32 0, i32 0, null, metadata !209, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 112, size 128, align 32, offset 0] [from ]
!209 = metadata !{metadata !210, metadata !211, metadata !212, metadata !213}
!210 = metadata !{i32 786445, metadata !11, metadata !208, metadata !"c6A", i32 112, i64 32, i64 32, i64 0, i32 0, metadata !113} ; [ DW_TAG_member ] [c6A] [line 112, size 32, align 32, offset 0] [from real]
!211 = metadata !{i32 786445, metadata !11, metadata !208, metadata !"c12A", i32 112, i64 32, i64 32, i64 32, i32 0, metadata !113} ; [ DW_TAG_member ] [c12A] [line 112, size 32, align 32, offset 32] [from real]
!212 = metadata !{i32 786445, metadata !11, metadata !208, metadata !"c6B", i32 112, i64 32, i64 32, i64 64, i32 0, metadata !113} ; [ DW_TAG_member ] [c6B] [line 112, size 32, align 32, offset 64] [from real]
!213 = metadata !{i32 786445, metadata !11, metadata !208, metadata !"c12B", i32 112, i64 32, i64 32, i64 96, i32 0, metadata !113} ; [ DW_TAG_member ] [c12B] [line 112, size 32, align 32, offset 96] [from real]
!214 = metadata !{i32 786445, metadata !11, metadata !172, metadata !"pdihs", i32 117, i64 160, i64 32, i64 0, i32 0, metadata !215} ; [ DW_TAG_member ] [pdihs] [line 117, size 160, align 32, offset 0] [from ]
!215 = metadata !{i32 786451, metadata !11, metadata !172, metadata !"", i32 117, i64 160, i64 32, i32 0, i32 0, null, metadata !216, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 117, size 160, align 32, offset 0] [from ]
!216 = metadata !{metadata !217, metadata !218, metadata !219, metadata !220, metadata !221}
!217 = metadata !{i32 786445, metadata !11, metadata !215, metadata !"phiA", i32 117, i64 32, i64 32, i64 0, i32 0, metadata !113} ; [ DW_TAG_member ] [phiA] [line 117, size 32, align 32, offset 0] [from real]
!218 = metadata !{i32 786445, metadata !11, metadata !215, metadata !"cpA", i32 117, i64 32, i64 32, i64 32, i32 0, metadata !113} ; [ DW_TAG_member ] [cpA] [line 117, size 32, align 32, offset 32] [from real]
!219 = metadata !{i32 786445, metadata !11, metadata !215, metadata !"mult", i32 117, i64 32, i64 32, i64 64, i32 0, metadata !103} ; [ DW_TAG_member ] [mult] [line 117, size 32, align 32, offset 64] [from int]
!220 = metadata !{i32 786445, metadata !11, metadata !215, metadata !"phiB", i32 117, i64 32, i64 32, i64 96, i32 0, metadata !113} ; [ DW_TAG_member ] [phiB] [line 117, size 32, align 32, offset 96] [from real]
!221 = metadata !{i32 786445, metadata !11, metadata !215, metadata !"cpB", i32 117, i64 32, i64 32, i64 128, i32 0, metadata !113} ; [ DW_TAG_member ] [cpB] [line 117, size 32, align 32, offset 128] [from real]
!222 = metadata !{i32 786445, metadata !11, metadata !172, metadata !"shake", i32 118, i64 64, i64 32, i64 0, i32 0, metadata !223} ; [ DW_TAG_member ] [shake] [line 118, size 64, align 32, offset 0] [from ]
!223 = metadata !{i32 786451, metadata !11, metadata !172, metadata !"", i32 118, i64 64, i64 32, i32 0, i32 0, null, metadata !224, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 118, size 64, align 32, offset 0] [from ]
!224 = metadata !{metadata !225, metadata !226}
!225 = metadata !{i32 786445, metadata !11, metadata !223, metadata !"dA", i32 118, i64 32, i64 32, i64 0, i32 0, metadata !113} ; [ DW_TAG_member ] [dA] [line 118, size 32, align 32, offset 0] [from real]
!226 = metadata !{i32 786445, metadata !11, metadata !223, metadata !"dB", i32 118, i64 32, i64 32, i64 32, i32 0, metadata !113} ; [ DW_TAG_member ] [dB] [line 118, size 32, align 32, offset 32] [from real]
!227 = metadata !{i32 786445, metadata !11, metadata !172, metadata !"settle", i32 123, i64 64, i64 32, i64 0, i32 0, metadata !228} ; [ DW_TAG_member ] [settle] [line 123, size 64, align 32, offset 0] [from ]
!228 = metadata !{i32 786451, metadata !11, metadata !172, metadata !"", i32 123, i64 64, i64 32, i32 0, i32 0, null, metadata !229, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 123, size 64, align 32, offset 0] [from ]
!229 = metadata !{metadata !230, metadata !231}
!230 = metadata !{i32 786445, metadata !11, metadata !228, metadata !"doh", i32 123, i64 32, i64 32, i64 0, i32 0, metadata !113} ; [ DW_TAG_member ] [doh] [line 123, size 32, align 32, offset 0] [from real]
!231 = metadata !{i32 786445, metadata !11, metadata !228, metadata !"dhh", i32 123, i64 32, i64 32, i64 32, i32 0, metadata !113} ; [ DW_TAG_member ] [dhh] [line 123, size 32, align 32, offset 32] [from real]
!232 = metadata !{i32 786445, metadata !11, metadata !172, metadata !"morse", i32 124, i64 96, i64 32, i64 0, i32 0, metadata !233} ; [ DW_TAG_member ] [morse] [line 124, size 96, align 32, offset 0] [from ]
!233 = metadata !{i32 786451, metadata !11, metadata !172, metadata !"", i32 124, i64 96, i64 32, i32 0, i32 0, null, metadata !234, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 124, size 96, align 32, offset 0] [from ]
!234 = metadata !{metadata !235, metadata !236, metadata !237}
!235 = metadata !{i32 786445, metadata !11, metadata !233, metadata !"b0", i32 124, i64 32, i64 32, i64 0, i32 0, metadata !113} ; [ DW_TAG_member ] [b0] [line 124, size 32, align 32, offset 0] [from real]
!236 = metadata !{i32 786445, metadata !11, metadata !233, metadata !"cb", i32 124, i64 32, i64 32, i64 32, i32 0, metadata !113} ; [ DW_TAG_member ] [cb] [line 124, size 32, align 32, offset 32] [from real]
!237 = metadata !{i32 786445, metadata !11, metadata !233, metadata !"beta", i32 124, i64 32, i64 32, i64 64, i32 0, metadata !113} ; [ DW_TAG_member ] [beta] [line 124, size 32, align 32, offset 64] [from real]
!238 = metadata !{i32 786445, metadata !11, metadata !172, metadata !"posres", i32 125, i64 192, i64 32, i64 0, i32 0, metadata !239} ; [ DW_TAG_member ] [posres] [line 125, size 192, align 32, offset 0] [from ]
!239 = metadata !{i32 786451, metadata !11, metadata !172, metadata !"", i32 125, i64 192, i64 32, i32 0, i32 0, null, metadata !240, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 125, size 192, align 32, offset 0] [from ]
!240 = metadata !{metadata !241, metadata !245}
!241 = metadata !{i32 786445, metadata !11, metadata !239, metadata !"pos0", i32 125, i64 96, i64 32, i64 0, i32 0, metadata !242} ; [ DW_TAG_member ] [pos0] [line 125, size 96, align 32, offset 0] [from ]
!242 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !113, metadata !243, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!243 = metadata !{metadata !244}
!244 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!245 = metadata !{i32 786445, metadata !11, metadata !239, metadata !"fc", i32 125, i64 96, i64 32, i64 96, i32 0, metadata !242} ; [ DW_TAG_member ] [fc] [line 125, size 96, align 32, offset 96] [from ]
!246 = metadata !{i32 786445, metadata !11, metadata !172, metadata !"rbdihs", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !247} ; [ DW_TAG_member ] [rbdihs] [line 126, size 192, align 32, offset 0] [from ]
!247 = metadata !{i32 786451, metadata !11, metadata !172, metadata !"", i32 126, i64 192, i64 32, i32 0, i32 0, null, metadata !248, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 126, size 192, align 32, offset 0] [from ]
!248 = metadata !{metadata !249}
!249 = metadata !{i32 786445, metadata !11, metadata !247, metadata !"rbc", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !250} ; [ DW_TAG_member ] [rbc] [line 126, size 192, align 32, offset 0] [from ]
!250 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !113, metadata !251, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from real]
!251 = metadata !{metadata !252}
!252 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!253 = metadata !{i32 786445, metadata !11, metadata !172, metadata !"dummy", i32 127, i64 192, i64 32, i64 0, i32 0, metadata !254} ; [ DW_TAG_member ] [dummy] [line 127, size 192, align 32, offset 0] [from ]
!254 = metadata !{i32 786451, metadata !11, metadata !172, metadata !"", i32 127, i64 192, i64 32, i32 0, i32 0, null, metadata !255, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 127, size 192, align 32, offset 0] [from ]
!255 = metadata !{metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261}
!256 = metadata !{i32 786445, metadata !11, metadata !254, metadata !"a", i32 127, i64 32, i64 32, i64 0, i32 0, metadata !113} ; [ DW_TAG_member ] [a] [line 127, size 32, align 32, offset 0] [from real]
!257 = metadata !{i32 786445, metadata !11, metadata !254, metadata !"b", i32 127, i64 32, i64 32, i64 32, i32 0, metadata !113} ; [ DW_TAG_member ] [b] [line 127, size 32, align 32, offset 32] [from real]
!258 = metadata !{i32 786445, metadata !11, metadata !254, metadata !"c", i32 127, i64 32, i64 32, i64 64, i32 0, metadata !113} ; [ DW_TAG_member ] [c] [line 127, size 32, align 32, offset 64] [from real]
!259 = metadata !{i32 786445, metadata !11, metadata !254, metadata !"d", i32 127, i64 32, i64 32, i64 96, i32 0, metadata !113} ; [ DW_TAG_member ] [d] [line 127, size 32, align 32, offset 96] [from real]
!260 = metadata !{i32 786445, metadata !11, metadata !254, metadata !"e", i32 127, i64 32, i64 32, i64 128, i32 0, metadata !113} ; [ DW_TAG_member ] [e] [line 127, size 32, align 32, offset 128] [from real]
!261 = metadata !{i32 786445, metadata !11, metadata !254, metadata !"f", i32 127, i64 32, i64 32, i64 160, i32 0, metadata !113} ; [ DW_TAG_member ] [f] [line 127, size 32, align 32, offset 160] [from real]
!262 = metadata !{i32 786445, metadata !11, metadata !172, metadata !"disres", i32 128, i64 192, i64 32, i64 0, i32 0, metadata !263} ; [ DW_TAG_member ] [disres] [line 128, size 192, align 32, offset 0] [from ]
!263 = metadata !{i32 786451, metadata !11, metadata !172, metadata !"", i32 128, i64 192, i64 32, i32 0, i32 0, null, metadata !264, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 128, size 192, align 32, offset 0] [from ]
!264 = metadata !{metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270}
!265 = metadata !{i32 786445, metadata !11, metadata !263, metadata !"low", i32 128, i64 32, i64 32, i64 0, i32 0, metadata !113} ; [ DW_TAG_member ] [low] [line 128, size 32, align 32, offset 0] [from real]
!266 = metadata !{i32 786445, metadata !11, metadata !263, metadata !"up1", i32 128, i64 32, i64 32, i64 32, i32 0, metadata !113} ; [ DW_TAG_member ] [up1] [line 128, size 32, align 32, offset 32] [from real]
!267 = metadata !{i32 786445, metadata !11, metadata !263, metadata !"up2", i32 128, i64 32, i64 32, i64 64, i32 0, metadata !113} ; [ DW_TAG_member ] [up2] [line 128, size 32, align 32, offset 64] [from real]
!268 = metadata !{i32 786445, metadata !11, metadata !263, metadata !"kfac", i32 128, i64 32, i64 32, i64 96, i32 0, metadata !113} ; [ DW_TAG_member ] [kfac] [line 128, size 32, align 32, offset 96] [from real]
!269 = metadata !{i32 786445, metadata !11, metadata !263, metadata !"type", i32 128, i64 32, i64 32, i64 128, i32 0, metadata !103} ; [ DW_TAG_member ] [type] [line 128, size 32, align 32, offset 128] [from int]
!270 = metadata !{i32 786445, metadata !11, metadata !263, metadata !"label", i32 128, i64 32, i64 32, i64 160, i32 0, metadata !103} ; [ DW_TAG_member ] [label] [line 128, size 32, align 32, offset 160] [from int]
!271 = metadata !{i32 786445, metadata !11, metadata !172, metadata !"orires", i32 129, i64 192, i64 32, i64 0, i32 0, metadata !272} ; [ DW_TAG_member ] [orires] [line 129, size 192, align 32, offset 0] [from ]
!272 = metadata !{i32 786451, metadata !11, metadata !172, metadata !"", i32 129, i64 192, i64 32, i32 0, i32 0, null, metadata !273, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 129, size 192, align 32, offset 0] [from ]
!273 = metadata !{metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279}
!274 = metadata !{i32 786445, metadata !11, metadata !272, metadata !"ex", i32 129, i64 32, i64 32, i64 0, i32 0, metadata !103} ; [ DW_TAG_member ] [ex] [line 129, size 32, align 32, offset 0] [from int]
!275 = metadata !{i32 786445, metadata !11, metadata !272, metadata !"pow", i32 129, i64 32, i64 32, i64 32, i32 0, metadata !103} ; [ DW_TAG_member ] [pow] [line 129, size 32, align 32, offset 32] [from int]
!276 = metadata !{i32 786445, metadata !11, metadata !272, metadata !"label", i32 129, i64 32, i64 32, i64 64, i32 0, metadata !103} ; [ DW_TAG_member ] [label] [line 129, size 32, align 32, offset 64] [from int]
!277 = metadata !{i32 786445, metadata !11, metadata !272, metadata !"c", i32 129, i64 32, i64 32, i64 96, i32 0, metadata !113} ; [ DW_TAG_member ] [c] [line 129, size 32, align 32, offset 96] [from real]
!278 = metadata !{i32 786445, metadata !11, metadata !272, metadata !"obs", i32 129, i64 32, i64 32, i64 128, i32 0, metadata !113} ; [ DW_TAG_member ] [obs] [line 129, size 32, align 32, offset 128] [from real]
!279 = metadata !{i32 786445, metadata !11, metadata !272, metadata !"kfac", i32 129, i64 32, i64 32, i64 160, i32 0, metadata !113} ; [ DW_TAG_member ] [kfac] [line 129, size 32, align 32, offset 160] [from real]
!280 = metadata !{i32 786445, metadata !11, metadata !172, metadata !"generic", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !281} ; [ DW_TAG_member ] [generic] [line 130, size 192, align 32, offset 0] [from ]
!281 = metadata !{i32 786451, metadata !11, metadata !172, metadata !"", i32 130, i64 192, i64 32, i32 0, i32 0, null, metadata !282, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 130, size 192, align 32, offset 0] [from ]
!282 = metadata !{metadata !283}
!283 = metadata !{i32 786445, metadata !11, metadata !281, metadata !"buf", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !250} ; [ DW_TAG_member ] [buf] [line 130, size 192, align 32, offset 0] [from ]
!284 = metadata !{i32 786445, metadata !11, metadata !161, metadata !"il", i32 187, i64 366080, i64 64, i64 256, i32 0, metadata !285} ; [ DW_TAG_member ] [il] [line 187, size 366080, align 64, offset 256] [from ]
!285 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 366080, i64 64, i32 0, i32 0, metadata !286, metadata !298, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 366080, align 64, offset 0] [from t_ilist]
!286 = metadata !{i32 786454, metadata !11, null, metadata !"t_ilist", i32 140, i64 0, i64 0, i64 0, i32 0, metadata !287} ; [ DW_TAG_typedef ] [t_ilist] [line 140, size 0, align 0, offset 0] [from ]
!287 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 135, i64 8320, i64 64, i32 0, i32 0, null, metadata !288, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 135, size 8320, align 64, offset 0] [from ]
!288 = metadata !{metadata !289, metadata !290, metadata !294}
!289 = metadata !{i32 786445, metadata !11, metadata !287, metadata !"nr", i32 137, i64 32, i64 32, i64 0, i32 0, metadata !103} ; [ DW_TAG_member ] [nr] [line 137, size 32, align 32, offset 0] [from int]
!290 = metadata !{i32 786445, metadata !11, metadata !287, metadata !"multinr", i32 138, i64 8192, i64 32, i64 32, i32 0, metadata !291} ; [ DW_TAG_member ] [multinr] [line 138, size 8192, align 32, offset 32] [from ]
!291 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !103, metadata !292, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!292 = metadata !{metadata !293}
!293 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!294 = metadata !{i32 786445, metadata !11, metadata !287, metadata !"iatoms", i32 139, i64 64, i64 64, i64 8256, i32 0, metadata !295} ; [ DW_TAG_member ] [iatoms] [line 139, size 64, align 64, offset 8256] [from ]
!295 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !296} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iatom]
!296 = metadata !{i32 786454, metadata !11, null, metadata !"t_iatom", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !297} ; [ DW_TAG_typedef ] [t_iatom] [line 45, size 0, align 0, offset 0] [from atom_id]
!297 = metadata !{i32 786454, metadata !11, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!298 = metadata !{metadata !299}
!299 = metadata !{i32 786465, i64 0, i64 44}      ; [ DW_TAG_subrange_type ] [0, 43]
!300 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"atoms", i32 39, i64 10240, i64 64, i64 366400, i32 0, metadata !301} ; [ DW_TAG_member ] [atoms] [line 39, size 10240, align 64, offset 366400] [from t_atoms]
!301 = metadata !{i32 786454, metadata !155, null, metadata !"t_atoms", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !302} ; [ DW_TAG_typedef ] [t_atoms] [line 94, size 0, align 0, offset 0] [from ]
!302 = metadata !{i32 786451, metadata !303, null, metadata !"", i32 75, i64 10240, i64 64, i32 0, i32 0, null, metadata !304, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 75, size 10240, align 64, offset 0] [from ]
!303 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/atoms.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!304 = metadata !{metadata !305, metadata !306, metadata !326, metadata !328, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !345, metadata !353}
!305 = metadata !{i32 786445, metadata !303, metadata !302, metadata !"nr", i32 76, i64 32, i64 32, i64 0, i32 0, metadata !103} ; [ DW_TAG_member ] [nr] [line 76, size 32, align 32, offset 0] [from int]
!306 = metadata !{i32 786445, metadata !303, metadata !302, metadata !"atom", i32 77, i64 64, i64 64, i64 64, i32 0, metadata !307} ; [ DW_TAG_member ] [atom] [line 77, size 64, align 64, offset 64] [from ]
!307 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !308} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atom]
!308 = metadata !{i32 786454, metadata !303, null, metadata !"t_atom", i32 57, i64 0, i64 0, i64 0, i32 0, metadata !309} ; [ DW_TAG_typedef ] [t_atom] [line 57, size 0, align 0, offset 0] [from ]
!309 = metadata !{i32 786451, metadata !303, null, metadata !"", i32 48, i64 320, i64 32, i32 0, i32 0, null, metadata !310, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 320, align 32, offset 0] [from ]
!310 = metadata !{metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !317, metadata !318, metadata !319, metadata !320, metadata !325}
!311 = metadata !{i32 786445, metadata !303, metadata !309, metadata !"m", i32 49, i64 32, i64 32, i64 0, i32 0, metadata !113} ; [ DW_TAG_member ] [m] [line 49, size 32, align 32, offset 0] [from real]
!312 = metadata !{i32 786445, metadata !303, metadata !309, metadata !"q", i32 49, i64 32, i64 32, i64 32, i32 0, metadata !113} ; [ DW_TAG_member ] [q] [line 49, size 32, align 32, offset 32] [from real]
!313 = metadata !{i32 786445, metadata !303, metadata !309, metadata !"mB", i32 50, i64 32, i64 32, i64 64, i32 0, metadata !113} ; [ DW_TAG_member ] [mB] [line 50, size 32, align 32, offset 64] [from real]
!314 = metadata !{i32 786445, metadata !303, metadata !309, metadata !"qB", i32 50, i64 32, i64 32, i64 96, i32 0, metadata !113} ; [ DW_TAG_member ] [qB] [line 50, size 32, align 32, offset 96] [from real]
!315 = metadata !{i32 786445, metadata !303, metadata !309, metadata !"type", i32 51, i64 16, i64 16, i64 128, i32 0, metadata !316} ; [ DW_TAG_member ] [type] [line 51, size 16, align 16, offset 128] [from unsigned short]
!316 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!317 = metadata !{i32 786445, metadata !303, metadata !309, metadata !"typeB", i32 52, i64 16, i64 16, i64 144, i32 0, metadata !316} ; [ DW_TAG_member ] [typeB] [line 52, size 16, align 16, offset 144] [from unsigned short]
!318 = metadata !{i32 786445, metadata !303, metadata !309, metadata !"ptype", i32 53, i64 32, i64 32, i64 160, i32 0, metadata !103} ; [ DW_TAG_member ] [ptype] [line 53, size 32, align 32, offset 160] [from int]
!319 = metadata !{i32 786445, metadata !303, metadata !309, metadata !"resnr", i32 54, i64 32, i64 32, i64 192, i32 0, metadata !103} ; [ DW_TAG_member ] [resnr] [line 54, size 32, align 32, offset 192] [from int]
!320 = metadata !{i32 786445, metadata !303, metadata !309, metadata !"grpnr", i32 55, i64 72, i64 8, i64 224, i32 0, metadata !321} ; [ DW_TAG_member ] [grpnr] [line 55, size 72, align 8, offset 224] [from ]
!321 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 72, i64 8, i32 0, i32 0, metadata !322, metadata !323, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 72, align 8, offset 0] [from unsigned char]
!322 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!323 = metadata !{metadata !324}
!324 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!325 = metadata !{i32 786445, metadata !303, metadata !309, metadata !"chain", i32 56, i64 8, i64 8, i64 296, i32 0, metadata !322} ; [ DW_TAG_member ] [chain] [line 56, size 8, align 8, offset 296] [from unsigned char]
!326 = metadata !{i32 786445, metadata !303, metadata !302, metadata !"atomname", i32 80, i64 64, i64 64, i64 128, i32 0, metadata !327} ; [ DW_TAG_member ] [atomname] [line 80, size 64, align 64, offset 128] [from ]
!327 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !158} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!328 = metadata !{i32 786445, metadata !303, metadata !302, metadata !"atomtype", i32 82, i64 64, i64 64, i64 192, i32 0, metadata !327} ; [ DW_TAG_member ] [atomtype] [line 82, size 64, align 64, offset 192] [from ]
!329 = metadata !{i32 786445, metadata !303, metadata !302, metadata !"atomtypeB", i32 84, i64 64, i64 64, i64 256, i32 0, metadata !327} ; [ DW_TAG_member ] [atomtypeB] [line 84, size 64, align 64, offset 256] [from ]
!330 = metadata !{i32 786445, metadata !303, metadata !302, metadata !"nres", i32 86, i64 32, i64 32, i64 320, i32 0, metadata !103} ; [ DW_TAG_member ] [nres] [line 86, size 32, align 32, offset 320] [from int]
!331 = metadata !{i32 786445, metadata !303, metadata !302, metadata !"resname", i32 87, i64 64, i64 64, i64 384, i32 0, metadata !327} ; [ DW_TAG_member ] [resname] [line 87, size 64, align 64, offset 384] [from ]
!332 = metadata !{i32 786445, metadata !303, metadata !302, metadata !"ngrpname", i32 89, i64 32, i64 32, i64 448, i32 0, metadata !103} ; [ DW_TAG_member ] [ngrpname] [line 89, size 32, align 32, offset 448] [from int]
!333 = metadata !{i32 786445, metadata !303, metadata !302, metadata !"grpname", i32 90, i64 64, i64 64, i64 512, i32 0, metadata !327} ; [ DW_TAG_member ] [grpname] [line 90, size 64, align 64, offset 512] [from ]
!334 = metadata !{i32 786445, metadata !303, metadata !302, metadata !"excl", i32 91, i64 8448, i64 64, i64 576, i32 0, metadata !335} ; [ DW_TAG_member ] [excl] [line 91, size 8448, align 64, offset 576] [from t_block]
!335 = metadata !{i32 786454, metadata !303, null, metadata !"t_block", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !336} ; [ DW_TAG_typedef ] [t_block] [line 52, size 0, align 0, offset 0] [from ]
!336 = metadata !{i32 786451, metadata !337, null, metadata !"", i32 36, i64 8448, i64 64, i32 0, i32 0, null, metadata !338, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 8448, align 64, offset 0] [from ]
!337 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/block.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!338 = metadata !{metadata !339, metadata !340, metadata !341, metadata !343, metadata !344}
!339 = metadata !{i32 786445, metadata !337, metadata !336, metadata !"multinr", i32 37, i64 8192, i64 32, i64 0, i32 0, metadata !291} ; [ DW_TAG_member ] [multinr] [line 37, size 8192, align 32, offset 0] [from ]
!340 = metadata !{i32 786445, metadata !337, metadata !336, metadata !"nr", i32 43, i64 32, i64 32, i64 8192, i32 0, metadata !103} ; [ DW_TAG_member ] [nr] [line 43, size 32, align 32, offset 8192] [from int]
!341 = metadata !{i32 786445, metadata !337, metadata !336, metadata !"index", i32 44, i64 64, i64 64, i64 8256, i32 0, metadata !342} ; [ DW_TAG_member ] [index] [line 44, size 64, align 64, offset 8256] [from ]
!342 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !297} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!343 = metadata !{i32 786445, metadata !337, metadata !336, metadata !"nra", i32 45, i64 32, i64 32, i64 8320, i32 0, metadata !103} ; [ DW_TAG_member ] [nra] [line 45, size 32, align 32, offset 8320] [from int]
!344 = metadata !{i32 786445, metadata !337, metadata !336, metadata !"a", i32 46, i64 64, i64 64, i64 8384, i32 0, metadata !342} ; [ DW_TAG_member ] [a] [line 46, size 64, align 64, offset 8384] [from ]
!345 = metadata !{i32 786445, metadata !303, metadata !302, metadata !"grps", i32 92, i64 1152, i64 64, i64 9024, i32 0, metadata !346} ; [ DW_TAG_member ] [grps] [line 92, size 1152, align 64, offset 9024] [from ]
!346 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 64, i32 0, i32 0, metadata !347, metadata !323, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1152, align 64, offset 0] [from t_grps]
!347 = metadata !{i32 786454, metadata !303, null, metadata !"t_grps", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !348} ; [ DW_TAG_typedef ] [t_grps] [line 73, size 0, align 0, offset 0] [from ]
!348 = metadata !{i32 786451, metadata !303, null, metadata !"", i32 70, i64 128, i64 64, i32 0, i32 0, null, metadata !349, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 70, size 128, align 64, offset 0] [from ]
!349 = metadata !{metadata !350, metadata !351}
!350 = metadata !{i32 786445, metadata !303, metadata !348, metadata !"nr", i32 71, i64 32, i64 32, i64 0, i32 0, metadata !103} ; [ DW_TAG_member ] [nr] [line 71, size 32, align 32, offset 0] [from int]
!351 = metadata !{i32 786445, metadata !303, metadata !348, metadata !"nm_ind", i32 72, i64 64, i64 64, i64 64, i32 0, metadata !352} ; [ DW_TAG_member ] [nm_ind] [line 72, size 64, align 64, offset 64] [from ]
!352 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !103} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!353 = metadata !{i32 786445, metadata !303, metadata !302, metadata !"pdbinfo", i32 93, i64 64, i64 64, i64 10176, i32 0, metadata !354} ; [ DW_TAG_member ] [pdbinfo] [line 93, size 64, align 64, offset 10176] [from ]
!354 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !355} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_pdbinfo]
!355 = metadata !{i32 786454, metadata !303, null, metadata !"t_pdbinfo", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !356} ; [ DW_TAG_typedef ] [t_pdbinfo] [line 68, size 0, align 0, offset 0] [from ]
!356 = metadata !{i32 786451, metadata !303, null, metadata !"", i32 59, i64 416, i64 32, i32 0, i32 0, null, metadata !357, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 59, size 416, align 32, offset 0] [from ]
!357 = metadata !{metadata !358, metadata !359, metadata !360, metadata !361, metadata !363, metadata !364, metadata !365, metadata !366}
!358 = metadata !{i32 786445, metadata !303, metadata !356, metadata !"type", i32 60, i64 32, i64 32, i64 0, i32 0, metadata !103} ; [ DW_TAG_member ] [type] [line 60, size 32, align 32, offset 0] [from int]
!359 = metadata !{i32 786445, metadata !303, metadata !356, metadata !"atomnr", i32 61, i64 32, i64 32, i64 32, i32 0, metadata !103} ; [ DW_TAG_member ] [atomnr] [line 61, size 32, align 32, offset 32] [from int]
!360 = metadata !{i32 786445, metadata !303, metadata !356, metadata !"altloc", i32 62, i64 8, i64 8, i64 64, i32 0, metadata !91} ; [ DW_TAG_member ] [altloc] [line 62, size 8, align 8, offset 64] [from char]
!361 = metadata !{i32 786445, metadata !303, metadata !356, metadata !"pdbresnr", i32 63, i64 48, i64 8, i64 72, i32 0, metadata !362} ; [ DW_TAG_member ] [pdbresnr] [line 63, size 48, align 8, offset 72] [from ]
!362 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 48, i64 8, i32 0, i32 0, metadata !91, metadata !251, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 48, align 8, offset 0] [from char]
!363 = metadata !{i32 786445, metadata !303, metadata !356, metadata !"occup", i32 64, i64 32, i64 32, i64 128, i32 0, metadata !113} ; [ DW_TAG_member ] [occup] [line 64, size 32, align 32, offset 128] [from real]
!364 = metadata !{i32 786445, metadata !303, metadata !356, metadata !"bfac", i32 65, i64 32, i64 32, i64 160, i32 0, metadata !113} ; [ DW_TAG_member ] [bfac] [line 65, size 32, align 32, offset 160] [from real]
!365 = metadata !{i32 786445, metadata !303, metadata !356, metadata !"bAnisotropic", i32 66, i64 32, i64 32, i64 192, i32 0, metadata !103} ; [ DW_TAG_member ] [bAnisotropic] [line 66, size 32, align 32, offset 192] [from int]
!366 = metadata !{i32 786445, metadata !303, metadata !356, metadata !"uij", i32 67, i64 192, i64 32, i64 224, i32 0, metadata !367} ; [ DW_TAG_member ] [uij] [line 67, size 192, align 32, offset 224] [from ]
!367 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !103, metadata !251, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!368 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"blocks", i32 40, i64 25344, i64 64, i64 376640, i32 0, metadata !369} ; [ DW_TAG_member ] [blocks] [line 40, size 25344, align 64, offset 376640] [from ]
!369 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 25344, i64 64, i32 0, i32 0, metadata !335, metadata !243, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 25344, align 64, offset 0] [from t_block]
!370 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"symtab", i32 41, i64 128, i64 64, i64 401984, i32 0, metadata !371} ; [ DW_TAG_member ] [symtab] [line 41, size 128, align 64, offset 401984] [from t_symtab]
!371 = metadata !{i32 786454, metadata !155, null, metadata !"t_symtab", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !372} ; [ DW_TAG_typedef ] [t_symtab] [line 46, size 0, align 0, offset 0] [from ]
!372 = metadata !{i32 786451, metadata !373, null, metadata !"", i32 42, i64 128, i64 64, i32 0, i32 0, null, metadata !374, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 42, size 128, align 64, offset 0] [from ]
!373 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/symtab.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!374 = metadata !{metadata !375, metadata !376}
!375 = metadata !{i32 786445, metadata !373, metadata !372, metadata !"nr", i32 44, i64 32, i64 32, i64 0, i32 0, metadata !103} ; [ DW_TAG_member ] [nr] [line 44, size 32, align 32, offset 0] [from int]
!376 = metadata !{i32 786445, metadata !373, metadata !372, metadata !"symbuf", i32 45, i64 64, i64 64, i64 64, i32 0, metadata !377} ; [ DW_TAG_member ] [symbuf] [line 45, size 64, align 64, offset 64] [from ]
!377 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !378} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_symbuf]
!378 = metadata !{i32 786454, metadata !373, null, metadata !"t_symbuf", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !379} ; [ DW_TAG_typedef ] [t_symbuf] [line 40, size 0, align 0, offset 0] [from symbuf]
!379 = metadata !{i32 786451, metadata !373, null, metadata !"symbuf", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !380, i32 0, null, null} ; [ DW_TAG_structure_type ] [symbuf] [line 36, size 192, align 64, offset 0] [from ]
!380 = metadata !{metadata !381, metadata !382, metadata !383}
!381 = metadata !{i32 786445, metadata !373, metadata !379, metadata !"bufsize", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !103} ; [ DW_TAG_member ] [bufsize] [line 37, size 32, align 32, offset 0] [from int]
!382 = metadata !{i32 786445, metadata !373, metadata !379, metadata !"buf", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !158} ; [ DW_TAG_member ] [buf] [line 38, size 64, align 64, offset 64] [from ]
!383 = metadata !{i32 786445, metadata !373, metadata !379, metadata !"next", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !384} ; [ DW_TAG_member ] [next] [line 39, size 64, align 64, offset 128] [from ]
!384 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !379} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from symbuf]
!385 = metadata !{metadata !386, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391}
!386 = metadata !{i32 786689, metadata !149, metadata !"fn", metadata !87, i32 16777474, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 258]
!387 = metadata !{i32 786688, metadata !149, metadata !"step", metadata !87, i32 260, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [step] [line 260]
!388 = metadata !{i32 786688, metadata !149, metadata !"natoms", metadata !87, i32 260, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [natoms] [line 260]
!389 = metadata !{i32 786688, metadata !149, metadata !"t", metadata !87, i32 261, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 261]
!390 = metadata !{i32 786688, metadata !149, metadata !"lambda", metadata !87, i32 261, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lambda] [line 261]
!391 = metadata !{i32 786688, metadata !149, metadata !"top", metadata !87, i32 262, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [top] [line 262]
!392 = metadata !{i32 786478, metadata !1, metadata !87, metadata !"mk_single_top", metadata !"mk_single_top", metadata !"", i32 271, metadata !393, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_topology*)* @mk_single_top, null, null, metadata !395, i32 272} ; [ DW_TAG_subprogram ] [line 271] [def] [scope 272] [mk_single_top]
!393 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !394, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!394 = metadata !{null, metadata !152}
!395 = metadata !{metadata !396, metadata !397}
!396 = metadata !{i32 786689, metadata !392, metadata !"top", metadata !87, i32 16777487, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [top] [line 271]
!397 = metadata !{i32 786688, metadata !392, metadata !"i", metadata !87, i32 273, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 273]
!398 = metadata !{i32 786478, metadata !1, metadata !87, metadata !"iscan", metadata !"iscan", metadata !"", i32 293, metadata !399, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8**, i32*)* @iscan, null, null, metadata !401, i32 294} ; [ DW_TAG_subprogram ] [line 293] [def] [scope 294] [iscan]
!399 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !400, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!400 = metadata !{metadata !103, metadata !103, metadata !158, metadata !352}
!401 = metadata !{metadata !402, metadata !403, metadata !404, metadata !405}
!402 = metadata !{i32 786689, metadata !398, metadata !"argc", metadata !87, i32 16777509, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 293]
!403 = metadata !{i32 786689, metadata !398, metadata !"argv", metadata !87, i32 33554725, metadata !158, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 293]
!404 = metadata !{i32 786689, metadata !398, metadata !"i", metadata !87, i32 50331941, metadata !352, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 293]
!405 = metadata !{i32 786688, metadata !398, metadata !"var", metadata !87, i32 295, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var] [line 295]
!406 = metadata !{i32 786478, metadata !1, metadata !87, metadata !"dscan", metadata !"dscan", metadata !"", i32 306, metadata !407, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (i32, i8**, i32*)* @dscan, null, null, metadata !409, i32 307} ; [ DW_TAG_subprogram ] [line 306] [def] [scope 307] [dscan]
!407 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !408, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!408 = metadata !{metadata !104, metadata !103, metadata !158, metadata !352}
!409 = metadata !{metadata !410, metadata !411, metadata !412, metadata !413}
!410 = metadata !{i32 786689, metadata !406, metadata !"argc", metadata !87, i32 16777522, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 306]
!411 = metadata !{i32 786689, metadata !406, metadata !"argv", metadata !87, i32 33554738, metadata !158, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 306]
!412 = metadata !{i32 786689, metadata !406, metadata !"i", metadata !87, i32 50331954, metadata !352, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 306]
!413 = metadata !{i32 786688, metadata !406, metadata !"var", metadata !87, i32 308, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var] [line 308]
!414 = metadata !{i32 786478, metadata !1, metadata !87, metadata !"sscan", metadata !"sscan", metadata !"", i32 319, metadata !415, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32, i8**, i32*)* @sscan, null, null, metadata !417, i32 320} ; [ DW_TAG_subprogram ] [line 319] [def] [scope 320] [sscan]
!415 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !416, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!416 = metadata !{metadata !90, metadata !103, metadata !158, metadata !352}
!417 = metadata !{metadata !418, metadata !419, metadata !420}
!418 = metadata !{i32 786689, metadata !414, metadata !"argc", metadata !87, i32 16777535, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 319]
!419 = metadata !{i32 786689, metadata !414, metadata !"argv", metadata !87, i32 33554751, metadata !158, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 319]
!420 = metadata !{i32 786689, metadata !414, metadata !"i", metadata !87, i32 50331967, metadata !352, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 319]
!421 = metadata !{i32 786478, metadata !1, metadata !87, metadata !"nenum", metadata !"nenum", metadata !"", i32 331, metadata !422, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8**)* @nenum, null, null, metadata !424, i32 332} ; [ DW_TAG_subprogram ] [line 331] [def] [scope 332] [nenum]
!422 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !423, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!423 = metadata !{metadata !103, metadata !158}
!424 = metadata !{metadata !425, metadata !426}
!425 = metadata !{i32 786689, metadata !421, metadata !"enumc", metadata !87, i32 16777547, metadata !158, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [enumc] [line 331]
!426 = metadata !{i32 786688, metadata !421, metadata !"i", metadata !87, i32 333, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 333]
!427 = metadata !{i32 786478, metadata !1, metadata !87, metadata !"bDoView", metadata !"bDoView", metadata !"", i32 364, metadata !428, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @bDoView, null, null, metadata !84, i32 365} ; [ DW_TAG_subprogram ] [line 364] [def] [scope 365] [bDoView]
!428 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !429, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!429 = metadata !{metadata !103}
!430 = metadata !{i32 786478, metadata !1, metadata !87, metadata !"parse_common_args", metadata !"parse_common_args", metadata !"", i32 457, metadata !431, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8**, i64, i32, %struct.t_filenm*, i32, %struct.t_pargs*, i32, i8**, i32, i8**)* @parse_common_args, null, null, metadata !463, i32 460} ; [ DW_TAG_subprogram ] [line 457] [def] [scope 460] [parse_common_args]
!431 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !432, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!432 = metadata !{null, metadata !352, metadata !158, metadata !433, metadata !103, metadata !434, metadata !103, metadata !443, metadata !103, metadata !158, metadata !103, metadata !158}
!433 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!434 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !435} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_filenm]
!435 = metadata !{i32 786454, metadata !1, null, metadata !"t_filenm", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !436} ; [ DW_TAG_typedef ] [t_filenm] [line 62, size 0, align 0, offset 0] [from ]
!436 = metadata !{i32 786451, metadata !437, null, metadata !"", i32 57, i64 256, i64 64, i32 0, i32 0, null, metadata !438, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 57, size 256, align 64, offset 0] [from ]
!437 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/filenm.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!438 = metadata !{metadata !439, metadata !440, metadata !441, metadata !442}
!439 = metadata !{i32 786445, metadata !437, metadata !436, metadata !"ftp", i32 58, i64 32, i64 32, i64 0, i32 0, metadata !103} ; [ DW_TAG_member ] [ftp] [line 58, size 32, align 32, offset 0] [from int]
!440 = metadata !{i32 786445, metadata !437, metadata !436, metadata !"opt", i32 59, i64 64, i64 64, i64 64, i32 0, metadata !90} ; [ DW_TAG_member ] [opt] [line 59, size 64, align 64, offset 64] [from ]
!441 = metadata !{i32 786445, metadata !437, metadata !436, metadata !"fn", i32 60, i64 64, i64 64, i64 128, i32 0, metadata !90} ; [ DW_TAG_member ] [fn] [line 60, size 64, align 64, offset 128] [from ]
!442 = metadata !{i32 786445, metadata !437, metadata !436, metadata !"flag", i32 61, i64 64, i64 64, i64 192, i32 0, metadata !433} ; [ DW_TAG_member ] [flag] [line 61, size 64, align 64, offset 192] [from long unsigned int]
!443 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !444} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_pargs]
!444 = metadata !{i32 786454, metadata !1, null, metadata !"t_pargs", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !445} ; [ DW_TAG_typedef ] [t_pargs] [line 105, size 0, align 0, offset 0] [from ]
!445 = metadata !{i32 786451, metadata !74, null, metadata !"", i32 91, i64 256, i64 64, i32 0, i32 0, null, metadata !446, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 91, size 256, align 64, offset 0] [from ]
!446 = metadata !{metadata !447, metadata !448, metadata !449, metadata !450, metadata !462}
!447 = metadata !{i32 786445, metadata !74, metadata !445, metadata !"option", i32 92, i64 64, i64 64, i64 0, i32 0, metadata !90} ; [ DW_TAG_member ] [option] [line 92, size 64, align 64, offset 0] [from ]
!448 = metadata !{i32 786445, metadata !74, metadata !445, metadata !"bSet", i32 93, i64 32, i64 32, i64 64, i32 0, metadata !103} ; [ DW_TAG_member ] [bSet] [line 93, size 32, align 32, offset 64] [from int]
!449 = metadata !{i32 786445, metadata !74, metadata !445, metadata !"type", i32 94, i64 32, i64 32, i64 96, i32 0, metadata !103} ; [ DW_TAG_member ] [type] [line 94, size 32, align 32, offset 96] [from int]
!450 = metadata !{i32 786445, metadata !74, metadata !445, metadata !"u", i32 103, i64 64, i64 64, i64 128, i32 0, metadata !451} ; [ DW_TAG_member ] [u] [line 103, size 64, align 64, offset 128] [from ]
!451 = metadata !{i32 786455, metadata !74, metadata !445, metadata !"", i32 95, i64 64, i64 64, i64 0, i32 0, null, metadata !452, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 95, size 64, align 64, offset 0] [from ]
!452 = metadata !{metadata !453, metadata !455, metadata !456, metadata !457, metadata !458, metadata !459}
!453 = metadata !{i32 786445, metadata !74, metadata !451, metadata !"v", i32 96, i64 64, i64 64, i64 0, i32 0, metadata !454} ; [ DW_TAG_member ] [v] [line 96, size 64, align 64, offset 0] [from ]
!454 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!455 = metadata !{i32 786445, metadata !74, metadata !451, metadata !"i", i32 97, i64 64, i64 64, i64 0, i32 0, metadata !352} ; [ DW_TAG_member ] [i] [line 97, size 64, align 64, offset 0] [from ]
!456 = metadata !{i32 786445, metadata !74, metadata !451, metadata !"r", i32 98, i64 64, i64 64, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [r] [line 98, size 64, align 64, offset 0] [from ]
!457 = metadata !{i32 786445, metadata !74, metadata !451, metadata !"c", i32 99, i64 64, i64 64, i64 0, i32 0, metadata !158} ; [ DW_TAG_member ] [c] [line 99, size 64, align 64, offset 0] [from ]
!458 = metadata !{i32 786445, metadata !74, metadata !451, metadata !"b", i32 101, i64 64, i64 64, i64 0, i32 0, metadata !352} ; [ DW_TAG_member ] [b] [line 101, size 64, align 64, offset 0] [from ]
!459 = metadata !{i32 786445, metadata !74, metadata !451, metadata !"rv", i32 102, i64 64, i64 64, i64 0, i32 0, metadata !460} ; [ DW_TAG_member ] [rv] [line 102, size 64, align 64, offset 0] [from ]
!460 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !461} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!461 = metadata !{i32 786454, metadata !74, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !242} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!462 = metadata !{i32 786445, metadata !74, metadata !445, metadata !"desc", i32 104, i64 64, i64 64, i64 192, i32 0, metadata !90} ; [ DW_TAG_member ] [desc] [line 104, size 64, align 64, offset 192] [from ]
!463 = metadata !{metadata !464, metadata !465, metadata !466, metadata !467, metadata !468, metadata !469, metadata !470, metadata !471, metadata !472, metadata !473, metadata !474, metadata !475, metadata !528, metadata !529, metadata !530, metadata !531, metadata !532, metadata !533, metadata !534, metadata !535, metadata !536, metadata !537, metadata !538, metadata !539, metadata !540, metadata !541, metadata !542, metadata !543, metadata !544, metadata !545, metadata !546, metadata !547, metadata !548, metadata !549, metadata !553}
!464 = metadata !{i32 786689, metadata !430, metadata !"argc", metadata !87, i32 16777673, metadata !352, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 457]
!465 = metadata !{i32 786689, metadata !430, metadata !"argv", metadata !87, i32 33554889, metadata !158, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 457]
!466 = metadata !{i32 786689, metadata !430, metadata !"Flags", metadata !87, i32 50332105, metadata !433, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Flags] [line 457]
!467 = metadata !{i32 786689, metadata !430, metadata !"nfile", metadata !87, i32 67109322, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nfile] [line 458]
!468 = metadata !{i32 786689, metadata !430, metadata !"fnm", metadata !87, i32 83886538, metadata !434, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 458]
!469 = metadata !{i32 786689, metadata !430, metadata !"npargs", metadata !87, i32 100663754, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [npargs] [line 458]
!470 = metadata !{i32 786689, metadata !430, metadata !"pa", metadata !87, i32 117440970, metadata !443, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pa] [line 458]
!471 = metadata !{i32 786689, metadata !430, metadata !"ndesc", metadata !87, i32 134218187, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ndesc] [line 459]
!472 = metadata !{i32 786689, metadata !430, metadata !"desc", metadata !87, i32 150995403, metadata !158, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [desc] [line 459]
!473 = metadata !{i32 786689, metadata !430, metadata !"nbugs", metadata !87, i32 167772619, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nbugs] [line 459]
!474 = metadata !{i32 786689, metadata !430, metadata !"bugs", metadata !87, i32 184549835, metadata !158, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bugs] [line 459]
!475 = metadata !{i32 786688, metadata !430, metadata !"fp", metadata !87, i32 471, metadata !476, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 471]
!476 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !477} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!477 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !478} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!478 = metadata !{i32 786451, metadata !479, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !480, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!479 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!480 = metadata !{metadata !481, metadata !482, metadata !483, metadata !484, metadata !485, metadata !486, metadata !487, metadata !488, metadata !489, metadata !490, metadata !491, metadata !492, metadata !493, metadata !501, metadata !502, metadata !503, metadata !504, metadata !507, metadata !508, metadata !510, metadata !514, metadata !515, metadata !517, metadata !518, metadata !519, metadata !520, metadata !521, metadata !523, metadata !524}
!481 = metadata !{i32 786445, metadata !479, metadata !478, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !103} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!482 = metadata !{i32 786445, metadata !479, metadata !478, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !90} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!483 = metadata !{i32 786445, metadata !479, metadata !478, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !90} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!484 = metadata !{i32 786445, metadata !479, metadata !478, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !90} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!485 = metadata !{i32 786445, metadata !479, metadata !478, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !90} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!486 = metadata !{i32 786445, metadata !479, metadata !478, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !90} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!487 = metadata !{i32 786445, metadata !479, metadata !478, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !90} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!488 = metadata !{i32 786445, metadata !479, metadata !478, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !90} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!489 = metadata !{i32 786445, metadata !479, metadata !478, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !90} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!490 = metadata !{i32 786445, metadata !479, metadata !478, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !90} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!491 = metadata !{i32 786445, metadata !479, metadata !478, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !90} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!492 = metadata !{i32 786445, metadata !479, metadata !478, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !90} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!493 = metadata !{i32 786445, metadata !479, metadata !478, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !494} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!494 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !495} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!495 = metadata !{i32 786451, metadata !479, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !496, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!496 = metadata !{metadata !497, metadata !498, metadata !500}
!497 = metadata !{i32 786445, metadata !479, metadata !495, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !494} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!498 = metadata !{i32 786445, metadata !479, metadata !495, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !499} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!499 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !478} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!500 = metadata !{i32 786445, metadata !479, metadata !495, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !103} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!501 = metadata !{i32 786445, metadata !479, metadata !478, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !499} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!502 = metadata !{i32 786445, metadata !479, metadata !478, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !103} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!503 = metadata !{i32 786445, metadata !479, metadata !478, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !103} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!504 = metadata !{i32 786445, metadata !479, metadata !478, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !505} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!505 = metadata !{i32 786454, metadata !479, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !506} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!506 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!507 = metadata !{i32 786445, metadata !479, metadata !478, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !316} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!508 = metadata !{i32 786445, metadata !479, metadata !478, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !509} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!509 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!510 = metadata !{i32 786445, metadata !479, metadata !478, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !511} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!511 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !91, metadata !512, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!512 = metadata !{metadata !513}
!513 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!514 = metadata !{i32 786445, metadata !479, metadata !478, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !454} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!515 = metadata !{i32 786445, metadata !479, metadata !478, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !516} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!516 = metadata !{i32 786454, metadata !479, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !506} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!517 = metadata !{i32 786445, metadata !479, metadata !478, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !454} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!518 = metadata !{i32 786445, metadata !479, metadata !478, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !454} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!519 = metadata !{i32 786445, metadata !479, metadata !478, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !454} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!520 = metadata !{i32 786445, metadata !479, metadata !478, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !454} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!521 = metadata !{i32 786445, metadata !479, metadata !478, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !522} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!522 = metadata !{i32 786454, metadata !479, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !433} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!523 = metadata !{i32 786445, metadata !479, metadata !478, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !103} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!524 = metadata !{i32 786445, metadata !479, metadata !478, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !525} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!525 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !91, metadata !526, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!526 = metadata !{metadata !527}
!527 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!528 = metadata !{i32 786688, metadata !430, metadata !"bPrint", metadata !87, i32 472, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bPrint] [line 472]
!529 = metadata !{i32 786688, metadata !430, metadata !"bExit", metadata !87, i32 472, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bExit] [line 472]
!530 = metadata !{i32 786688, metadata !430, metadata !"i", metadata !87, i32 473, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 473]
!531 = metadata !{i32 786688, metadata !430, metadata !"j", metadata !87, i32 473, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 473]
!532 = metadata !{i32 786688, metadata !430, metadata !"k", metadata !87, i32 473, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 473]
!533 = metadata !{i32 786688, metadata !430, metadata !"npall", metadata !87, i32 473, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [npall] [line 473]
!534 = metadata !{i32 786688, metadata !430, metadata !"ptr", metadata !87, i32 474, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 474]
!535 = metadata !{i32 786688, metadata !430, metadata !"newdesc", metadata !87, i32 474, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newdesc] [line 474]
!536 = metadata !{i32 786688, metadata !430, metadata !"envstr", metadata !87, i32 475, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [envstr] [line 475]
!537 = metadata !{i32 786688, metadata !430, metadata !"all_pa", metadata !87, i32 477, metadata !443, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [all_pa] [line 477]
!538 = metadata !{i32 786688, metadata !430, metadata !"motif_pa", metadata !87, i32 479, metadata !444, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [motif_pa] [line 479]
!539 = metadata !{i32 786688, metadata !430, metadata !"npri_paX", metadata !87, i32 481, metadata !444, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [npri_paX] [line 481]
!540 = metadata !{i32 786688, metadata !430, metadata !"npri_pa", metadata !87, i32 483, metadata !444, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [npri_pa] [line 483]
!541 = metadata !{i32 786688, metadata !430, metadata !"nice_paX", metadata !87, i32 485, metadata !444, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nice_paX] [line 485]
!542 = metadata !{i32 786688, metadata !430, metadata !"nice_pa", metadata !87, i32 487, metadata !444, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nice_pa] [line 487]
!543 = metadata !{i32 786688, metadata !430, metadata !"deffnm_pa", metadata !87, i32 489, metadata !444, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [deffnm_pa] [line 489]
!544 = metadata !{i32 786688, metadata !430, metadata !"begin_pa", metadata !87, i32 491, metadata !444, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [begin_pa] [line 491]
!545 = metadata !{i32 786688, metadata !430, metadata !"end_pa", metadata !87, i32 493, metadata !444, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end_pa] [line 493]
!546 = metadata !{i32 786688, metadata !430, metadata !"dt_pa", metadata !87, i32 495, metadata !444, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dt_pa] [line 495]
!547 = metadata !{i32 786688, metadata !430, metadata !"view_pa", metadata !87, i32 497, metadata !444, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [view_pa] [line 497]
!548 = metadata !{i32 786688, metadata !430, metadata !"time_pa", metadata !87, i32 499, metadata !444, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [time_pa] [line 499]
!549 = metadata !{i32 786688, metadata !430, metadata !"pca_pa", metadata !87, i32 502, metadata !550, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pca_pa] [line 502]
!550 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1280, i64 64, i32 0, i32 0, metadata !444, metadata !551, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1280, align 64, offset 0] [from t_pargs]
!551 = metadata !{metadata !552}
!552 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!553 = metadata !{i32 786688, metadata !554, metadata !"buf", metadata !87, i32 641, metadata !555, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 641]
!554 = metadata !{i32 786443, metadata !1, metadata !430, i32 640, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!555 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !91, metadata !292, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!556 = metadata !{i32 786478, metadata !1, metadata !87, metadata !"man_file", metadata !"man_file", metadata !"", i32 369, metadata !557, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IO_FILE* (i8*, i8*)* @man_file, null, null, metadata !559, i32 370} ; [ DW_TAG_subprogram ] [line 369] [local] [def] [scope 370] [man_file]
!557 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !558, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!558 = metadata !{metadata !476, metadata !90, metadata !90}
!559 = metadata !{metadata !560, metadata !561, metadata !562, metadata !563, metadata !564}
!560 = metadata !{i32 786689, metadata !556, metadata !"program", metadata !87, i32 16777585, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [program] [line 369]
!561 = metadata !{i32 786689, metadata !556, metadata !"mantp", metadata !87, i32 33554801, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mantp] [line 369]
!562 = metadata !{i32 786688, metadata !556, metadata !"fp", metadata !87, i32 371, metadata !476, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 371]
!563 = metadata !{i32 786688, metadata !556, metadata !"buf", metadata !87, i32 372, metadata !555, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 372]
!564 = metadata !{i32 786688, metadata !556, metadata !"pr", metadata !87, i32 372, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pr] [line 372]
!565 = metadata !{i32 786478, metadata !1, metadata !87, metadata !"mk_desc", metadata !"mk_desc", metadata !"", i32 396, metadata !566, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !568, i32 397} ; [ DW_TAG_subprogram ] [line 396] [local] [def] [scope 397] [mk_desc]
!566 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !567, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!567 = metadata !{metadata !90, metadata !443, metadata !90}
!568 = metadata !{metadata !569, metadata !570, metadata !571, metadata !572, metadata !573, metadata !574, metadata !575}
!569 = metadata !{i32 786689, metadata !565, metadata !"pa", metadata !87, i32 16777612, metadata !443, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pa] [line 396]
!570 = metadata !{i32 786689, metadata !565, metadata !"time_unit_str", metadata !87, i32 33554828, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [time_unit_str] [line 396]
!571 = metadata !{i32 786688, metadata !565, metadata !"newdesc", metadata !87, i32 398, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newdesc] [line 398]
!572 = metadata !{i32 786688, metadata !565, metadata !"ndesc", metadata !87, i32 398, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndesc] [line 398]
!573 = metadata !{i32 786688, metadata !565, metadata !"ptr", metadata !87, i32 398, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 398]
!574 = metadata !{i32 786688, metadata !565, metadata !"len", metadata !87, i32 399, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 399]
!575 = metadata !{i32 786688, metadata !565, metadata !"k", metadata !87, i32 399, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 399]
!576 = metadata !{i32 786478, metadata !1, metadata !87, metadata !"set_default_time_unit", metadata !"set_default_time_unit", metadata !"", i32 234, metadata !96, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !577, i32 235} ; [ DW_TAG_subprogram ] [line 234] [local] [def] [scope 235] [set_default_time_unit]
!577 = metadata !{metadata !578, metadata !579, metadata !580}
!578 = metadata !{i32 786689, metadata !576, metadata !"select", metadata !87, i32 16777450, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [select] [line 234]
!579 = metadata !{i32 786688, metadata !576, metadata !"i", metadata !87, i32 236, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 236]
!580 = metadata !{i32 786688, metadata !576, metadata !"j", metadata !87, i32 236, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 236]
!581 = metadata !{i32 786478, metadata !1, metadata !87, metadata !"add_parg", metadata !"add_parg", metadata !"", i32 388, metadata !582, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !585, i32 389} ; [ DW_TAG_subprogram ] [line 388] [local] [def] [scope 389] [add_parg]
!582 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !583, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!583 = metadata !{metadata !103, metadata !103, metadata !584, metadata !443}
!584 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !443} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!585 = metadata !{metadata !586, metadata !587, metadata !588}
!586 = metadata !{i32 786689, metadata !581, metadata !"npargs", metadata !87, i32 16777604, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [npargs] [line 388]
!587 = metadata !{i32 786689, metadata !581, metadata !"pa", metadata !87, i32 33554820, metadata !584, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pa] [line 388]
!588 = metadata !{i32 786689, metadata !581, metadata !"pa_add", metadata !87, i32 50332036, metadata !443, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pa_add] [line 388]
!589 = metadata !{i32 786478, metadata !1, metadata !87, metadata !"usage", metadata !"usage", metadata !"", i32 287, metadata !590, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !592, i32 288} ; [ DW_TAG_subprogram ] [line 287] [local] [def] [scope 288] [usage]
!590 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !591, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!591 = metadata !{null, metadata !90, metadata !90}
!592 = metadata !{metadata !593, metadata !594}
!593 = metadata !{i32 786689, metadata !589, metadata !"type", metadata !87, i32 16777503, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 287]
!594 = metadata !{i32 786689, metadata !589, metadata !"arg", metadata !87, i32 33554719, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 287]
!595 = metadata !{i32 786478, metadata !1, metadata !87, metadata !"init_time_factor", metadata !"init_time_factor", metadata !"", i32 195, metadata !147, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @init_time_factor, null, null, metadata !84, i32 196} ; [ DW_TAG_subprogram ] [line 195] [local] [def] [scope 196] [init_time_factor]
!596 = metadata !{metadata !597, metadata !598, metadata !599, metadata !600, metadata !601, metadata !602, metadata !606, metadata !607, metadata !608, metadata !609, metadata !610, metadata !611, metadata !615, metadata !617, metadata !618, metadata !622, metadata !623, metadata !624, metadata !625, metadata !626, metadata !627, metadata !628, metadata !629, metadata !630, metadata !631, metadata !633, metadata !634}
!597 = metadata !{i32 786484, i32 0, null, metadata !"tbegin", metadata !"tbegin", metadata !"", metadata !87, i32 67, metadata !113, i32 0, i32 1, float* @tbegin, null} ; [ DW_TAG_variable ] [tbegin] [line 67] [def]
!598 = metadata !{i32 786484, i32 0, null, metadata !"tend", metadata !"tend", metadata !"", metadata !87, i32 68, metadata !113, i32 0, i32 1, float* @tend, null} ; [ DW_TAG_variable ] [tend] [line 68] [def]
!599 = metadata !{i32 786484, i32 0, null, metadata !"tdelta", metadata !"tdelta", metadata !"", metadata !87, i32 69, metadata !113, i32 0, i32 1, float* @tdelta, null} ; [ DW_TAG_variable ] [tdelta] [line 69] [def]
!600 = metadata !{i32 786484, i32 0, null, metadata !"timefactor", metadata !"timefactor", metadata !"", metadata !87, i32 70, metadata !113, i32 0, i32 1, float* @timefactor, null} ; [ DW_TAG_variable ] [timefactor] [line 70] [def]
!601 = metadata !{i32 786484, i32 0, null, metadata !"timelabel", metadata !"timelabel", metadata !"", metadata !87, i32 71, metadata !90, i32 0, i32 1, i8** @timelabel, null} ; [ DW_TAG_variable ] [timelabel] [line 71] [def]
!602 = metadata !{i32 786484, i32 0, null, metadata !"timefactors", metadata !"timefactors", metadata !"", metadata !87, i32 74, metadata !603, i32 0, i32 1, [10 x float]* @timefactors, null} ; [ DW_TAG_variable ] [timefactors] [line 74] [def]
!603 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 320, i64 32, i32 0, i32 0, metadata !113, metadata !604, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 320, align 32, offset 0] [from real]
!604 = metadata !{metadata !605}
!605 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!606 = metadata !{i32 786484, i32 0, metadata !128, metadata !"label", metadata !"label", metadata !"", metadata !87, i32 178, metadata !525, i32 1, i32 1, [20 x i8]* @time_label.label, null} ; [ DW_TAG_variable ] [label] [line 178] [local] [def]
!607 = metadata !{i32 786484, i32 0, metadata !129, metadata !"label", metadata !"label", metadata !"", metadata !87, i32 187, metadata !525, i32 1, i32 1, [20 x i8]* @xvgr_tlabel.label, null} ; [ DW_TAG_variable ] [label] [line 187] [local] [def]
!608 = metadata !{i32 786484, i32 0, metadata !430, metadata !"bHelp", metadata !"bHelp", metadata !"", metadata !87, i32 461, metadata !103, i32 1, i32 1, i32* @parse_common_args.bHelp, null} ; [ DW_TAG_variable ] [bHelp] [line 461] [local] [def]
!609 = metadata !{i32 786484, i32 0, metadata !430, metadata !"bHidden", metadata !"bHidden", metadata !"", metadata !87, i32 461, metadata !103, i32 1, i32 1, i32* @parse_common_args.bHidden, null} ; [ DW_TAG_variable ] [bHidden] [line 461] [local] [def]
!610 = metadata !{i32 786484, i32 0, metadata !430, metadata !"bQuiet", metadata !"bQuiet", metadata !"", metadata !87, i32 461, metadata !103, i32 1, i32 1, i32* @parse_common_args.bQuiet, null} ; [ DW_TAG_variable ] [bQuiet] [line 461] [local] [def]
!611 = metadata !{i32 786484, i32 0, metadata !430, metadata !"manstr", metadata !"manstr", metadata !"", metadata !87, i32 462, metadata !612, i32 1, i32 1, [8 x i8*]* @parse_common_args.manstr, null} ; [ DW_TAG_variable ] [manstr] [line 462] [local] [def]
!612 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !90, metadata !613, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!613 = metadata !{metadata !614}
!614 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!615 = metadata !{i32 786484, i32 0, metadata !430, metadata !"not_nicestr", metadata !"not_nicestr", metadata !"", metadata !87, i32 463, metadata !616, i32 1, i32 1, [6 x i8*]* @parse_common_args.not_nicestr, null} ; [ DW_TAG_variable ] [not_nicestr] [line 463] [local] [def]
!616 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !90, metadata !251, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from ]
!617 = metadata !{i32 786484, i32 0, metadata !430, metadata !"nicestr", metadata !"nicestr", metadata !"", metadata !87, i32 464, metadata !616, i32 1, i32 1, [6 x i8*]* @parse_common_args.nicestr, null} ; [ DW_TAG_variable ] [nicestr] [line 464] [local] [def]
!618 = metadata !{i32 786484, i32 0, metadata !430, metadata !"not_npristr", metadata !"not_npristr", metadata !"", metadata !87, i32 465, metadata !619, i32 1, i32 1, null, null}
!619 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 448, i64 64, i32 0, i32 0, metadata !90, metadata !620, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 448, align 64, offset 0] [from ]
!620 = metadata !{metadata !621}
!621 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 6]
!622 = metadata !{i32 786484, i32 0, metadata !430, metadata !"npristr", metadata !"npristr", metadata !"", metadata !87, i32 466, metadata !619, i32 1, i32 1, null, null}
!623 = metadata !{i32 786484, i32 0, metadata !430, metadata !"nicelevel", metadata !"nicelevel", metadata !"", metadata !87, i32 467, metadata !103, i32 1, i32 1, i32* @parse_common_args.nicelevel, null} ; [ DW_TAG_variable ] [nicelevel] [line 467] [local] [def]
!624 = metadata !{i32 786484, i32 0, metadata !430, metadata !"mantp", metadata !"mantp", metadata !"", metadata !87, i32 467, metadata !103, i32 1, i32 1, null, null}
!625 = metadata !{i32 786484, i32 0, metadata !430, metadata !"npri", metadata !"npri", metadata !"", metadata !87, i32 467, metadata !103, i32 1, i32 1, null, null}
!626 = metadata !{i32 786484, i32 0, metadata !430, metadata !"bGUI", metadata !"bGUI", metadata !"", metadata !87, i32 468, metadata !103, i32 1, i32 1, i32* @parse_common_args.bGUI, null} ; [ DW_TAG_variable ] [bGUI] [line 468] [local] [def]
!627 = metadata !{i32 786484, i32 0, metadata !430, metadata !"bDebug", metadata !"bDebug", metadata !"", metadata !87, i32 468, metadata !103, i32 1, i32 1, i32* @parse_common_args.bDebug, null} ; [ DW_TAG_variable ] [bDebug] [line 468] [local] [def]
!628 = metadata !{i32 786484, i32 0, metadata !430, metadata !"deffnm", metadata !"deffnm", metadata !"", metadata !87, i32 469, metadata !90, i32 1, i32 1, i8** @parse_common_args.deffnm, null} ; [ DW_TAG_variable ] [deffnm] [line 469] [local] [def]
!629 = metadata !{i32 786484, i32 0, null, metadata !"uFlags", metadata !"uFlags", metadata !"", metadata !87, i32 79, metadata !433, i32 1, i32 1, i64* @uFlags, null} ; [ DW_TAG_variable ] [uFlags] [line 79] [local] [def]
!630 = metadata !{i32 786484, i32 0, null, metadata !"bView", metadata !"bView", metadata !"", metadata !87, i32 78, metadata !103, i32 1, i32 1, i32* @bView, null} ; [ DW_TAG_variable ] [bView] [line 78] [local] [def]
!631 = metadata !{i32 786484, i32 0, null, metadata !"xvgrtimestr", metadata !"xvgrtimestr", metadata !"", metadata !87, i32 76, metadata !632, i32 1, i32 1, [10 x i8*]* @xvgrtimestr, null} ; [ DW_TAG_variable ] [xvgrtimestr] [line 76] [local] [def]
!632 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 64, i32 0, i32 0, metadata !90, metadata !604, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 64, offset 0] [from ]
!633 = metadata !{i32 786484, i32 0, null, metadata !"timestr", metadata !"timestr", metadata !"", metadata !87, i32 72, metadata !632, i32 1, i32 1, [10 x i8*]* @timestr, null} ; [ DW_TAG_variable ] [timestr] [line 72] [local] [def]
!634 = metadata !{i32 786484, i32 0, null, metadata !"program", metadata !"program", metadata !"", metadata !87, i32 80, metadata !90, i32 1, i32 1, i8** @program, null} ; [ DW_TAG_variable ] [program] [line 80] [local] [def]
!635 = metadata !{i32 88, i32 0, metadata !86, null}
!636 = metadata !{metadata !"any pointer", metadata !637}
!637 = metadata !{metadata !"omnipotent char", metadata !638}
!638 = metadata !{metadata !"Simple C/C++ TBAA"}
!639 = metadata !{i32 89, i32 0, metadata !640, null}
!640 = metadata !{i32 786443, metadata !1, metadata !86, i32 88, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!641 = metadata !{i32 90, i32 0, metadata !640, null}
!642 = metadata !{i32 96, i32 0, metadata !86, null}
!643 = metadata !{i32 100, i32 0, metadata !94, null}
!644 = metadata !{i32 103, i32 0, metadata !94, null}
!645 = metadata !{i32 104, i32 0, metadata !94, null}
!646 = metadata !{i32 106, i32 0, metadata !95, null}
!647 = metadata !{i32 112, i32 0, metadata !95, null}
!648 = metadata !{i32 113, i32 0, metadata !649, null}
!649 = metadata !{i32 786443, metadata !1, metadata !95, i32 112, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!650 = metadata !{i32 114, i32 0, metadata !649, null}
!651 = metadata !{i32 116, i32 0, metadata !649, null}
!652 = metadata !{i32 118, i32 0, metadata !95, null}
!653 = metadata !{i32 126, i32 0, metadata !100, null}
!654 = metadata !{double 6.000000e-07}
!655 = metadata !{i32 131, i32 0, metadata !100, null}
!656 = metadata !{i32 133, i32 0, metadata !100, null}
!657 = metadata !{i32 135, i32 0, metadata !100, null}
!658 = metadata !{i32 138, i32 0, metadata !100, null}
!659 = metadata !{i32 141, i32 0, metadata !110, null}
!660 = metadata !{i32 146, i32 0, metadata !110, null}
!661 = metadata !{i32 147, i32 0, metadata !110, null}
!662 = metadata !{i32 -1}
!663 = metadata !{i32 151, i32 0, metadata !110, null}
!664 = metadata !{i32 152, i32 0, metadata !110, null}
!665 = metadata !{metadata !"float", metadata !637}
!666 = metadata !{i32 159, i32 0, metadata !110, null}
!667 = metadata !{i32 153, i32 0, metadata !110, null}
!668 = metadata !{i32 154, i32 0, metadata !669, null}
!669 = metadata !{i32 786443, metadata !1, metadata !110, i32 153, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!670 = metadata !{i32 786689, metadata !100, metadata !"a", metadata !87, i32 16777342, metadata !104, i32 0, metadata !668} ; [ DW_TAG_arg_variable ] [a] [line 126]
!671 = metadata !{i32 126, i32 0, metadata !100, metadata !668}
!672 = metadata !{i32 786689, metadata !100, metadata !"b", metadata !87, i32 33554558, metadata !104, i32 0, metadata !668} ; [ DW_TAG_arg_variable ] [b] [line 126]
!673 = metadata !{i32 786688, metadata !100, metadata !"tol", metadata !87, i32 129, metadata !104, i32 0, metadata !668} ; [ DW_TAG_auto_variable ] [tol] [line 129]
!674 = metadata !{i32 131, i32 0, metadata !100, metadata !668}
!675 = metadata !{i32 133, i32 0, metadata !100, metadata !668}
!676 = metadata !{i32 786688, metadata !100, metadata !"iq", metadata !87, i32 128, metadata !103, i32 0, metadata !668} ; [ DW_TAG_auto_variable ] [iq] [line 128]
!677 = metadata !{i32 135, i32 0, metadata !100, metadata !668}
!678 = metadata !{i32 138, i32 0, metadata !100, metadata !668}
!679 = metadata !{i32 157, i32 0, metadata !669, null}
!680 = metadata !{i32 1}
!681 = metadata !{i32 160, i32 0, metadata !110, null}
!682 = metadata !{i32 161, i32 0, metadata !110, null}
!683 = metadata !{i32 163, i32 0, metadata !110, null}
!684 = metadata !{i32 166, i32 0, metadata !122, null}
!685 = metadata !{i32 168, i32 0, metadata !122, null}
!686 = metadata !{i32 173, i32 0, metadata !127, null}
!687 = metadata !{i32 180, i32 0, metadata !128, null}
!688 = metadata !{i32 182, i32 0, metadata !128, null}
!689 = metadata !{i8** getelementptr inbounds ([10 x i8*]* @timestr, i64 0, i64 0)}
!690 = metadata !{i32 786689, metadata !421, metadata !"enumc", metadata !87, i32 16777547, metadata !158, i32 0, metadata !691} ; [ DW_TAG_arg_variable ] [enumc] [line 331]
!691 = metadata !{i32 190, i32 0, metadata !129, null}
!692 = metadata !{i32 331, i32 0, metadata !421, metadata !691}
!693 = metadata !{i32 786688, metadata !421, metadata !"i", metadata !87, i32 333, metadata !103, i32 0, metadata !691} ; [ DW_TAG_auto_variable ] [i] [line 333]
!694 = metadata !{i32 335, i32 0, metadata !421, metadata !691}
!695 = metadata !{i32 337, i32 0, metadata !421, metadata !691}
!696 = metadata !{i32 338, i32 0, metadata !421, metadata !691}
!697 = metadata !{i32 192, i32 0, metadata !129, null}
!698 = metadata !{i32 331, i32 0, metadata !421, null}
!699 = metadata !{i32 335, i32 0, metadata !421, null}
!700 = metadata !{i32 337, i32 0, metadata !421, null}
!701 = metadata !{i32 338, i32 0, metadata !421, null}
!702 = metadata !{i32 340, i32 0, metadata !421, null}
!703 = metadata !{i32 203, i32 0, metadata !130, null}
!704 = metadata !{i32 205, i32 0, metadata !130, null}
!705 = metadata !{i32 208, i32 0, metadata !133, null}
!706 = metadata !{i32 210, i32 0, metadata !133, null}
!707 = metadata !{i32 212, i32 0, metadata !133, null}
!708 = metadata !{i32 216, i32 0, metadata !138, null}
!709 = metadata !{i32 220, i32 0, metadata !138, null}
!710 = metadata !{i32 222, i32 0, metadata !138, null}
!711 = metadata !{i32 223, i32 0, metadata !712, null}
!712 = metadata !{i32 786443, metadata !1, metadata !138, i32 223, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!713 = metadata !{i32 224, i32 0, metadata !712, null}
!714 = metadata !{i32 225, i32 0, metadata !138, null}
!715 = metadata !{i32 229, i32 0, metadata !146, null}
!716 = metadata !{i32 230, i32 0, metadata !146, null}
!717 = metadata !{i32 231, i32 0, metadata !146, null}
!718 = metadata !{i32 232, i32 0, metadata !146, null}
!719 = metadata !{i32 258, i32 0, metadata !149, null}
!720 = metadata !{i32 260, i32 0, metadata !149, null}
!721 = metadata !{i32 261, i32 0, metadata !149, null}
!722 = metadata !{i32 264, i32 0, metadata !149, null}
!723 = metadata !{i32 265, i32 0, metadata !149, null}
!724 = metadata !{i32 268, i32 0, metadata !149, null}
!725 = metadata !{i32 271, i32 0, metadata !392, null}
!726 = metadata !{i32 275, i32 0, metadata !727, null}
!727 = metadata !{i32 786443, metadata !1, metadata !392, i32 275, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!728 = metadata !{i32 276, i32 0, metadata !727, null}
!729 = metadata !{metadata !"int", metadata !637}
!730 = metadata !{i32 278, i32 0, metadata !731, null}
!731 = metadata !{i32 786443, metadata !1, metadata !392, i32 277, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!732 = metadata !{i32 277, i32 0, metadata !731, null}
!733 = metadata !{i32 279, i32 0, metadata !392, null}
!734 = metadata !{i32 293, i32 0, metadata !398, null}
!735 = metadata !{i32 295, i32 0, metadata !398, null}
!736 = metadata !{i32 297, i32 0, metadata !398, null}
!737 = metadata !{i32 298, i32 0, metadata !738, null}
!738 = metadata !{i32 786443, metadata !1, metadata !398, i32 297, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!739 = metadata !{i32 299, i32 0, metadata !738, null}
!740 = metadata !{i8* getelementptr inbounds ([11 x i8]* @.str8, i64 0, i64 0)}
!741 = metadata !{i32 786689, metadata !589, metadata !"type", metadata !87, i32 16777503, metadata !90, i32 0, metadata !739} ; [ DW_TAG_arg_variable ] [type] [line 287]
!742 = metadata !{i32 287, i32 0, metadata !589, metadata !739}
!743 = metadata !{i32 786689, metadata !589, metadata !"arg", metadata !87, i32 33554719, metadata !90, i32 0, metadata !739} ; [ DW_TAG_arg_variable ] [arg] [line 287]
!744 = metadata !{i32 289, i32 0, metadata !589, metadata !739}
!745 = metadata !{i32 290, i32 0, metadata !589, metadata !739}
!746 = metadata !{i32 301, i32 0, metadata !398, null}
!747 = metadata !{i32 786689, metadata !589, metadata !"type", metadata !87, i32 16777503, metadata !90, i32 0, metadata !746} ; [ DW_TAG_arg_variable ] [type] [line 287]
!748 = metadata !{i32 287, i32 0, metadata !589, metadata !746}
!749 = metadata !{i32 786689, metadata !589, metadata !"arg", metadata !87, i32 33554719, metadata !90, i32 0, metadata !746} ; [ DW_TAG_arg_variable ] [arg] [line 287]
!750 = metadata !{i32 289, i32 0, metadata !589, metadata !746}
!751 = metadata !{i32 290, i32 0, metadata !589, metadata !746}
!752 = metadata !{i32 303, i32 0, metadata !398, null}
!753 = metadata !{i32 306, i32 0, metadata !406, null}
!754 = metadata !{i32 308, i32 0, metadata !406, null}
!755 = metadata !{i32 310, i32 0, metadata !406, null}
!756 = metadata !{i32 311, i32 0, metadata !757, null}
!757 = metadata !{i32 786443, metadata !1, metadata !406, i32 310, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!758 = metadata !{i32 312, i32 0, metadata !757, null}
!759 = metadata !{i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0)}
!760 = metadata !{i32 786689, metadata !589, metadata !"type", metadata !87, i32 16777503, metadata !90, i32 0, metadata !758} ; [ DW_TAG_arg_variable ] [type] [line 287]
!761 = metadata !{i32 287, i32 0, metadata !589, metadata !758}
!762 = metadata !{i32 786689, metadata !589, metadata !"arg", metadata !87, i32 33554719, metadata !90, i32 0, metadata !758} ; [ DW_TAG_arg_variable ] [arg] [line 287]
!763 = metadata !{i32 289, i32 0, metadata !589, metadata !758}
!764 = metadata !{i32 290, i32 0, metadata !589, metadata !758}
!765 = metadata !{i32 314, i32 0, metadata !406, null}
!766 = metadata !{i32 786689, metadata !589, metadata !"type", metadata !87, i32 16777503, metadata !90, i32 0, metadata !765} ; [ DW_TAG_arg_variable ] [type] [line 287]
!767 = metadata !{i32 287, i32 0, metadata !589, metadata !765}
!768 = metadata !{i32 786689, metadata !589, metadata !"arg", metadata !87, i32 33554719, metadata !90, i32 0, metadata !765} ; [ DW_TAG_arg_variable ] [arg] [line 287]
!769 = metadata !{i32 289, i32 0, metadata !589, metadata !765}
!770 = metadata !{i32 290, i32 0, metadata !589, metadata !765}
!771 = metadata !{i32 316, i32 0, metadata !406, null}
!772 = metadata !{metadata !"double", metadata !637}
!773 = metadata !{i32 319, i32 0, metadata !414, null}
!774 = metadata !{i32 321, i32 0, metadata !414, null}
!775 = metadata !{i32 322, i32 0, metadata !776, null}
!776 = metadata !{i32 786443, metadata !1, metadata !414, i32 321, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!777 = metadata !{i32 323, i32 0, metadata !776, null}
!778 = metadata !{i32 326, i32 0, metadata !414, null}
!779 = metadata !{i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0)}
!780 = metadata !{i32 786689, metadata !589, metadata !"type", metadata !87, i32 16777503, metadata !90, i32 0, metadata !778} ; [ DW_TAG_arg_variable ] [type] [line 287]
!781 = metadata !{i32 287, i32 0, metadata !589, metadata !778}
!782 = metadata !{i32 786689, metadata !589, metadata !"arg", metadata !87, i32 33554719, metadata !90, i32 0, metadata !778} ; [ DW_TAG_arg_variable ] [arg] [line 287]
!783 = metadata !{i32 289, i32 0, metadata !589, metadata !778}
!784 = metadata !{i32 290, i32 0, metadata !589, metadata !778}
!785 = metadata !{i32 328, i32 0, metadata !414, null}
!786 = metadata !{i32 366, i32 0, metadata !427, null}
!787 = metadata !{i32 457, i32 0, metadata !430, null}
!788 = metadata !{i32 458, i32 0, metadata !430, null}
!789 = metadata !{i32 459, i32 0, metadata !430, null}
!790 = metadata !{%struct.t_pargs* null}
!791 = metadata !{i32 477, i32 0, metadata !430, null}
!792 = metadata !{i32 786689, metadata !581, metadata !"pa", metadata !87, i32 33554820, metadata !584, i32 0, metadata !793} ; [ DW_TAG_arg_variable ] [pa] [line 388]
!793 = metadata !{i32 623, i32 0, metadata !794, null}
!794 = metadata !{i32 786443, metadata !1, metadata !430, i32 622, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!795 = metadata !{i32 388, i32 0, metadata !581, metadata !793}
!796 = metadata !{i32 786689, metadata !581, metadata !"pa", metadata !87, i32 33554820, metadata !584, i32 0, metadata !797} ; [ DW_TAG_arg_variable ] [pa] [line 388]
!797 = metadata !{i32 619, i32 0, metadata !430, null}
!798 = metadata !{i32 388, i32 0, metadata !581, metadata !797}
!799 = metadata !{i32 786689, metadata !581, metadata !"pa", metadata !87, i32 33554820, metadata !584, i32 0, metadata !800} ; [ DW_TAG_arg_variable ] [pa] [line 388]
!800 = metadata !{i32 607, i32 0, metadata !430, null}
!801 = metadata !{i32 388, i32 0, metadata !581, metadata !800}
!802 = metadata !{i32 786689, metadata !581, metadata !"pa", metadata !87, i32 33554820, metadata !584, i32 0, metadata !803} ; [ DW_TAG_arg_variable ] [pa] [line 388]
!803 = metadata !{i32 605, i32 0, metadata !430, null}
!804 = metadata !{i32 388, i32 0, metadata !581, metadata !803}
!805 = metadata !{i32 786689, metadata !581, metadata !"pa", metadata !87, i32 33554820, metadata !584, i32 0, metadata !806} ; [ DW_TAG_arg_variable ] [pa] [line 388]
!806 = metadata !{i32 603, i32 0, metadata !430, null}
!807 = metadata !{i32 388, i32 0, metadata !581, metadata !806}
!808 = metadata !{i32 786689, metadata !581, metadata !"pa", metadata !87, i32 33554820, metadata !584, i32 0, metadata !809} ; [ DW_TAG_arg_variable ] [pa] [line 388]
!809 = metadata !{i32 601, i32 0, metadata !430, null}
!810 = metadata !{i32 388, i32 0, metadata !581, metadata !809}
!811 = metadata !{i32 786689, metadata !581, metadata !"pa", metadata !87, i32 33554820, metadata !584, i32 0, metadata !812} ; [ DW_TAG_arg_variable ] [pa] [line 388]
!812 = metadata !{i32 597, i32 0, metadata !813, null}
!813 = metadata !{i32 786443, metadata !1, metadata !430, i32 594, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!814 = metadata !{i32 388, i32 0, metadata !581, metadata !812}
!815 = metadata !{i32 786689, metadata !581, metadata !"pa", metadata !87, i32 33554820, metadata !584, i32 0, metadata !816} ; [ DW_TAG_arg_variable ] [pa] [line 388]
!816 = metadata !{i32 592, i32 0, metadata !817, null}
!817 = metadata !{i32 786443, metadata !1, metadata !430, i32 588, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!818 = metadata !{i32 388, i32 0, metadata !581, metadata !816}
!819 = metadata !{i32 786689, metadata !581, metadata !"pa", metadata !87, i32 33554820, metadata !584, i32 0, metadata !820} ; [ DW_TAG_arg_variable ] [pa] [line 388]
!820 = metadata !{i32 568, i32 0, metadata !430, null}
!821 = metadata !{i32 388, i32 0, metadata !581, metadata !820}
!822 = metadata !{i32 786689, metadata !581, metadata !"pa", metadata !87, i32 33554820, metadata !584, i32 0, metadata !823} ; [ DW_TAG_arg_variable ] [pa] [line 388]
!823 = metadata !{i32 565, i32 0, metadata !824, null}
!824 = metadata !{i32 786443, metadata !1, metadata !430, i32 564, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!825 = metadata !{i32 388, i32 0, metadata !581, metadata !823}
!826 = metadata !{i32 627, i32 0, metadata !827, null}
!827 = metadata !{i32 786443, metadata !1, metadata !430, i32 626, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!828 = metadata !{i32 631, i32 0, metadata !430, null}
!829 = metadata !{i32 666, i32 0, metadata !830, null}
!830 = metadata !{i32 786443, metadata !1, metadata !430, i32 665, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!831 = metadata !{i32 669, i32 0, metadata !832, null}
!832 = metadata !{i32 786443, metadata !1, metadata !430, i32 668, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!833 = metadata !{i32 708, i32 0, metadata !834, null}
!834 = metadata !{i32 786443, metadata !1, metadata !430, i32 706, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!835 = metadata !{i32 712, i32 0, metadata !836, null}
!836 = metadata !{i32 786443, metadata !1, metadata !834, i32 710, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!837 = metadata !{i32 720, i32 0, metadata !838, null}
!838 = metadata !{i32 786443, metadata !1, metadata !839, i32 717, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!839 = metadata !{i32 786443, metadata !1, metadata !430, i32 716, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!840 = metadata !{i32 723, i32 0, metadata !838, null}
!841 = metadata !{i32 726, i32 0, metadata !838, null}
!842 = metadata !{i32 730, i32 0, metadata !843, null}
!843 = metadata !{i32 786443, metadata !1, metadata !839, i32 728, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!844 = metadata !{i32 738, i32 0, metadata !845, null}
!845 = metadata !{i32 786443, metadata !1, metadata !846, i32 737, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!846 = metadata !{i32 786443, metadata !1, metadata !430, i32 737, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!847 = metadata !{i32 745, i32 0, metadata !848, null}
!848 = metadata !{i32 786443, metadata !1, metadata !430, i32 744, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!849 = metadata !{i32 746, i32 0, metadata !430, null}
!850 = metadata !{%struct.t_pargs* @parse_common_args.motif_pa}
!851 = metadata !{i32 479, i32 0, metadata !430, null}
!852 = metadata !{null}
!853 = metadata !{i32 481, i32 0, metadata !430, null}
!854 = metadata !{null}
!855 = metadata !{i32 483, i32 0, metadata !430, null}
!856 = metadata !{%struct.t_pargs* undef}
!857 = metadata !{i32 485, i32 0, metadata !430, null}
!858 = metadata !{%struct.t_pargs* @parse_common_args.nice_pa}
!859 = metadata !{i32 487, i32 0, metadata !430, null}
!860 = metadata !{%struct.t_pargs* @parse_common_args.deffnm_pa}
!861 = metadata !{i32 489, i32 0, metadata !430, null}
!862 = metadata !{%struct.t_pargs* @parse_common_args.begin_pa}
!863 = metadata !{i32 491, i32 0, metadata !430, null}
!864 = metadata !{%struct.t_pargs* @parse_common_args.end_pa}
!865 = metadata !{i32 493, i32 0, metadata !430, null}
!866 = metadata !{%struct.t_pargs* @parse_common_args.dt_pa}
!867 = metadata !{i32 495, i32 0, metadata !430, null}
!868 = metadata !{%struct.t_pargs* @parse_common_args.view_pa}
!869 = metadata !{i32 497, i32 0, metadata !430, null}
!870 = metadata !{null}
!871 = metadata !{i32 499, i32 0, metadata !430, null}
!872 = metadata !{[5 x %struct.t_pargs]* @parse_common_args.pca_pa}
!873 = metadata !{i32 502, i32 0, metadata !430, null}
!874 = metadata !{i32 517, i32 0, metadata !430, null}
!875 = metadata !{i32 524, i32 0, metadata !876, null}
!876 = metadata !{i32 786443, metadata !1, metadata !430, i32 524, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!877 = metadata !{i32 518, i32 0, metadata !878, null}
!878 = metadata !{i32 786443, metadata !1, metadata !430, i32 517, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!879 = metadata !{i32 519, i32 0, metadata !880, null}
!880 = metadata !{i32 786443, metadata !1, metadata !878, i32 519, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!881 = metadata !{i32 520, i32 0, metadata !880, null}
!882 = metadata !{i32 525, i32 0, metadata !883, null}
!883 = metadata !{i32 786443, metadata !1, metadata !876, i32 524, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!884 = metadata !{metadata !"short", metadata !637}
!885 = metadata !{i32 526, i32 0, metadata !886, null}
!886 = metadata !{i32 786443, metadata !1, metadata !887, i32 526, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!887 = metadata !{i32 786443, metadata !1, metadata !883, i32 525, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!888 = metadata !{i32 527, i32 0, metadata !889, null}
!889 = metadata !{i32 786443, metadata !1, metadata !886, i32 526, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!890 = metadata !{i32 528, i32 0, metadata !889, null}
!891 = metadata !{i32 529, i32 0, metadata !892, null}
!892 = metadata !{i32 786443, metadata !1, metadata !889, i32 528, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!893 = metadata !{metadata !"long", metadata !637}
!894 = metadata !{i32 530, i32 0, metadata !892, null}
!895 = metadata !{i32 532, i32 0, metadata !892, null}
!896 = metadata !{i32 542, i32 0, metadata !430, null}
!897 = metadata !{i32 543, i32 0, metadata !430, null}
!898 = metadata !{i32 557, i32 0, metadata !430, null}
!899 = metadata !{i32 560, i32 0, metadata !430, null}
!900 = metadata !{i32 563, i32 0, metadata !430, null}
!901 = metadata !{i32 564, i32 0, metadata !824, null}
!902 = metadata !{i32 5}
!903 = metadata !{i32 786689, metadata !581, metadata !"npargs", metadata !87, i32 16777604, metadata !103, i32 0, metadata !823} ; [ DW_TAG_arg_variable ] [npargs] [line 388]
!904 = metadata !{i32 786689, metadata !581, metadata !"pa_add", metadata !87, i32 50332036, metadata !443, i32 0, metadata !823} ; [ DW_TAG_arg_variable ] [pa_add] [line 388]
!905 = metadata !{i32 390, i32 0, metadata !581, metadata !823}
!906 = metadata !{i32 391, i32 0, metadata !581, metadata !823}
!907 = metadata !{i32 786689, metadata !581, metadata !"npargs", metadata !87, i32 16777604, metadata !103, i32 0, metadata !820} ; [ DW_TAG_arg_variable ] [npargs] [line 388]
!908 = metadata !{i32 786689, metadata !581, metadata !"pa_add", metadata !87, i32 50332036, metadata !443, i32 0, metadata !820} ; [ DW_TAG_arg_variable ] [pa_add] [line 388]
!909 = metadata !{i32 390, i32 0, metadata !581, metadata !820}
!910 = metadata !{i32 391, i32 0, metadata !581, metadata !820}
!911 = metadata !{i32 6}
!912 = metadata !{i32 588, i32 0, metadata !430, null}
!913 = metadata !{i32 590, i32 0, metadata !817, null}
!914 = metadata !{i32 786689, metadata !581, metadata !"npargs", metadata !87, i32 16777604, metadata !103, i32 0, metadata !816} ; [ DW_TAG_arg_variable ] [npargs] [line 388]
!915 = metadata !{i32 786689, metadata !581, metadata !"pa_add", metadata !87, i32 50332036, metadata !443, i32 0, metadata !816} ; [ DW_TAG_arg_variable ] [pa_add] [line 388]
!916 = metadata !{i32 390, i32 0, metadata !581, metadata !816}
!917 = metadata !{i32 391, i32 0, metadata !581, metadata !816}
!918 = metadata !{i32 7}
!919 = metadata !{i32 593, i32 0, metadata !817, null}
!920 = metadata !{i32 595, i32 0, metadata !813, null}
!921 = metadata !{i32 596, i32 0, metadata !813, null}
!922 = metadata !{i32 786689, metadata !581, metadata !"npargs", metadata !87, i32 16777604, metadata !103, i32 0, metadata !812} ; [ DW_TAG_arg_variable ] [npargs] [line 388]
!923 = metadata !{i32 786689, metadata !581, metadata !"pa_add", metadata !87, i32 50332036, metadata !443, i32 0, metadata !812} ; [ DW_TAG_arg_variable ] [pa_add] [line 388]
!924 = metadata !{i32 390, i32 0, metadata !581, metadata !812}
!925 = metadata !{i32 391, i32 0, metadata !581, metadata !812}
!926 = metadata !{i32 600, i32 0, metadata !430, null}
!927 = metadata !{i32 786689, metadata !581, metadata !"npargs", metadata !87, i32 16777604, metadata !103, i32 0, metadata !809} ; [ DW_TAG_arg_variable ] [npargs] [line 388]
!928 = metadata !{i32 786689, metadata !581, metadata !"pa_add", metadata !87, i32 50332036, metadata !443, i32 0, metadata !809} ; [ DW_TAG_arg_variable ] [pa_add] [line 388]
!929 = metadata !{i32 390, i32 0, metadata !581, metadata !809}
!930 = metadata !{i32 391, i32 0, metadata !581, metadata !809}
!931 = metadata !{i32 8}
!932 = metadata !{i32 602, i32 0, metadata !430, null}
!933 = metadata !{i32 786689, metadata !581, metadata !"npargs", metadata !87, i32 16777604, metadata !103, i32 0, metadata !806} ; [ DW_TAG_arg_variable ] [npargs] [line 388]
!934 = metadata !{i32 786689, metadata !581, metadata !"pa_add", metadata !87, i32 50332036, metadata !443, i32 0, metadata !806} ; [ DW_TAG_arg_variable ] [pa_add] [line 388]
!935 = metadata !{i32 390, i32 0, metadata !581, metadata !806}
!936 = metadata !{i32 391, i32 0, metadata !581, metadata !806}
!937 = metadata !{i32 604, i32 0, metadata !430, null}
!938 = metadata !{i32 786689, metadata !581, metadata !"npargs", metadata !87, i32 16777604, metadata !103, i32 0, metadata !803} ; [ DW_TAG_arg_variable ] [npargs] [line 388]
!939 = metadata !{i32 786689, metadata !581, metadata !"pa_add", metadata !87, i32 50332036, metadata !443, i32 0, metadata !803} ; [ DW_TAG_arg_variable ] [pa_add] [line 388]
!940 = metadata !{i32 390, i32 0, metadata !581, metadata !803}
!941 = metadata !{i32 391, i32 0, metadata !581, metadata !803}
!942 = metadata !{i32 606, i32 0, metadata !430, null}
!943 = metadata !{i32 786689, metadata !581, metadata !"npargs", metadata !87, i32 16777604, metadata !103, i32 0, metadata !800} ; [ DW_TAG_arg_variable ] [npargs] [line 388]
!944 = metadata !{i32 786689, metadata !581, metadata !"pa_add", metadata !87, i32 50332036, metadata !443, i32 0, metadata !800} ; [ DW_TAG_arg_variable ] [pa_add] [line 388]
!945 = metadata !{i32 390, i32 0, metadata !581, metadata !800}
!946 = metadata !{i32 391, i32 0, metadata !581, metadata !800}
!947 = metadata !{i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0)}
!948 = metadata !{i32 786689, metadata !576, metadata !"select", metadata !87, i32 16777450, metadata !90, i32 0, metadata !949} ; [ DW_TAG_arg_variable ] [select] [line 234]
!949 = metadata !{i32 617, i32 0, metadata !430, null}
!950 = metadata !{i32 234, i32 0, metadata !576, metadata !949}
!951 = metadata !{i32 786688, metadata !576, metadata !"i", metadata !87, i32 236, metadata !103, i32 0, metadata !949} ; [ DW_TAG_auto_variable ] [i] [line 236]
!952 = metadata !{i32 238, i32 0, metadata !576, metadata !949}
!953 = metadata !{i32 239, i32 0, metadata !576, metadata !949}
!954 = metadata !{i32 240, i32 0, metadata !576, metadata !949}
!955 = metadata !{i32 241, i32 0, metadata !576, metadata !949}
!956 = metadata !{i32 242, i32 0, metadata !957, metadata !949}
!957 = metadata !{i32 786443, metadata !1, metadata !576, i32 241, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!958 = metadata !{i32 243, i32 0, metadata !957, metadata !949}
!959 = metadata !{i32 244, i32 0, metadata !957, metadata !949}
!960 = metadata !{i32 786688, metadata !576, metadata !"j", metadata !87, i32 236, metadata !103, i32 0, metadata !949} ; [ DW_TAG_auto_variable ] [j] [line 236]
!961 = metadata !{i32 245, i32 0, metadata !962, metadata !949}
!962 = metadata !{i32 786443, metadata !1, metadata !957, i32 245, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!963 = metadata !{i32 246, i32 0, metadata !964, metadata !949}
!964 = metadata !{i32 786443, metadata !1, metadata !962, i32 245, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!965 = metadata !{i32 247, i32 0, metadata !964, metadata !949}
!966 = metadata !{i32 248, i32 0, metadata !964, metadata !949}
!967 = metadata !{i32 250, i32 0, metadata !957, metadata !949}
!968 = metadata !{i32 251, i32 0, metadata !957, metadata !949}
!969 = metadata !{i32 252, i32 0, metadata !957, metadata !949}
!970 = metadata !{i32 253, i32 0, metadata !957, metadata !949}
!971 = metadata !{i32 618, i32 0, metadata !430, null}
!972 = metadata !{i32 786689, metadata !581, metadata !"npargs", metadata !87, i32 16777604, metadata !103, i32 0, metadata !797} ; [ DW_TAG_arg_variable ] [npargs] [line 388]
!973 = metadata !{i32 786689, metadata !581, metadata !"pa_add", metadata !87, i32 50332036, metadata !443, i32 0, metadata !797} ; [ DW_TAG_arg_variable ] [pa_add] [line 388]
!974 = metadata !{i32 390, i32 0, metadata !581, metadata !797}
!975 = metadata !{i32 391, i32 0, metadata !581, metadata !797}
!976 = metadata !{i32 622, i32 0, metadata !794, null}
!977 = metadata !{i32 626, i32 0, metadata !827, null}
!978 = metadata !{i32 786689, metadata !581, metadata !"npargs", metadata !87, i32 16777604, metadata !103, i32 0, metadata !793} ; [ DW_TAG_arg_variable ] [npargs] [line 388]
!979 = metadata !{i32 786689, metadata !581, metadata !"pa_add", metadata !87, i32 50332036, metadata !443, i32 0, metadata !793} ; [ DW_TAG_arg_variable ] [pa_add] [line 388]
!980 = metadata !{i32 390, i32 0, metadata !581, metadata !793}
!981 = metadata !{i32 391, i32 0, metadata !581, metadata !793}
!982 = metadata !{i32 628, i32 0, metadata !827, null}
!983 = metadata !{i32 633, i32 0, metadata !430, null}
!984 = metadata !{i32 634, i32 0, metadata !430, null}
!985 = metadata !{i32 637, i32 0, metadata !430, null}
!986 = metadata !{i32 640, i32 0, metadata !430, null}
!987 = metadata !{i32 641, i32 0, metadata !554, null}
!988 = metadata !{i32 643, i32 0, metadata !554, null}
!989 = metadata !{i32 88, i32 0, metadata !86, metadata !990}
!990 = metadata !{i32 644, i32 0, metadata !554, null}
!991 = metadata !{i32 89, i32 0, metadata !640, metadata !990}
!992 = metadata !{i32 786688, metadata !86, metadata !"pr", metadata !87, i32 86, metadata !90, i32 0, metadata !990} ; [ DW_TAG_auto_variable ] [pr] [line 86]
!993 = metadata !{i32 90, i32 0, metadata !640, metadata !990}
!994 = metadata !{i32 646, i32 0, metadata !554, null}
!995 = metadata !{i32 648, i32 0, metadata !554, null}
!996 = metadata !{i32 649, i32 0, metadata !554, null}
!997 = metadata !{i32 651, i32 0, metadata !554, null}
!998 = metadata !{i32 656, i32 0, metadata !430, null}
!999 = metadata !{i32 660, i32 0, metadata !1000, null}
!1000 = metadata !{i32 786443, metadata !1, metadata !430, i32 656, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!1001 = metadata !{i32 662, i32 0, metadata !1000, null}
!1002 = metadata !{i32 665, i32 0, metadata !830, null}
!1003 = metadata !{i32 668, i32 0, metadata !832, null}
!1004 = metadata !{i32 173, i32 0, metadata !127, metadata !831}
!1005 = metadata !{i32 786689, metadata !565, metadata !"pa", metadata !87, i32 16777612, metadata !443, i32 0, metadata !831} ; [ DW_TAG_arg_variable ] [pa] [line 396]
!1006 = metadata !{i32 396, i32 0, metadata !565, metadata !831}
!1007 = metadata !{i32 786689, metadata !565, metadata !"time_unit_str", metadata !87, i32 33554828, metadata !90, i32 0, metadata !831} ; [ DW_TAG_arg_variable ] [time_unit_str] [line 396]
!1008 = metadata !{i8* null}
!1009 = metadata !{i32 786688, metadata !565, metadata !"newdesc", metadata !87, i32 398, metadata !90, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [newdesc] [line 398]
!1010 = metadata !{i32 398, i32 0, metadata !565, metadata !831}
!1011 = metadata !{i32 786688, metadata !565, metadata !"ndesc", metadata !87, i32 398, metadata !90, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [ndesc] [line 398]
!1012 = metadata !{i32 786688, metadata !565, metadata !"ptr", metadata !87, i32 398, metadata !90, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [ptr] [line 398]
!1013 = metadata !{i32 402, i32 0, metadata !565, metadata !831}
!1014 = metadata !{i32 786688, metadata !565, metadata !"len", metadata !87, i32 399, metadata !103, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [len] [line 399]
!1015 = metadata !{i32 403, i32 0, metadata !565, metadata !831}
!1016 = metadata !{i32 404, i32 0, metadata !565, metadata !831}
!1017 = metadata !{i32 405, i32 0, metadata !565, metadata !831}
!1018 = metadata !{i32 406, i32 0, metadata !1019, metadata !831}
!1019 = metadata !{i32 786443, metadata !1, metadata !565, i32 405, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!1020 = metadata !{i32 786688, metadata !565, metadata !"k", metadata !87, i32 399, metadata !103, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [k] [line 399]
!1021 = metadata !{i32 407, i32 0, metadata !1022, metadata !831}
!1022 = metadata !{i32 786443, metadata !1, metadata !1019, i32 407, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!1023 = metadata !{i32 408, i32 0, metadata !1024, metadata !831}
!1024 = metadata !{i32 786443, metadata !1, metadata !1022, i32 407, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!1025 = metadata !{i32 411, i32 0, metadata !565, metadata !831}
!1026 = metadata !{i32 414, i32 0, metadata !565, metadata !831}
!1027 = metadata !{i32 415, i32 0, metadata !565, metadata !831}
!1028 = metadata !{i32 417, i32 0, metadata !565, metadata !831}
!1029 = metadata !{i32 422, i32 0, metadata !565, metadata !831}
!1030 = metadata !{i32 423, i32 0, metadata !565, metadata !831}
!1031 = metadata !{i32 424, i32 0, metadata !1032, metadata !831}
!1032 = metadata !{i32 786443, metadata !1, metadata !565, i32 423, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!1033 = metadata !{i32 425, i32 0, metadata !1032, metadata !831}
!1034 = metadata !{i32 426, i32 0, metadata !1032, metadata !831}
!1035 = metadata !{i32 427, i32 0, metadata !1032, metadata !831}
!1036 = metadata !{i32 428, i32 0, metadata !1032, metadata !831}
!1037 = metadata !{i32 429, i32 0, metadata !1032, metadata !831}
!1038 = metadata !{i32 430, i32 0, metadata !1032, metadata !831}
!1039 = metadata !{i32 431, i32 0, metadata !1032, metadata !831}
!1040 = metadata !{i32 432, i32 0, metadata !1032, metadata !831}
!1041 = metadata !{i32 433, i32 0, metadata !1032, metadata !831}
!1042 = metadata !{i32 439, i32 0, metadata !565, metadata !831}
!1043 = metadata !{i32 440, i32 0, metadata !1044, metadata !831}
!1044 = metadata !{i32 786443, metadata !1, metadata !565, i32 439, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!1045 = metadata !{i32 441, i32 0, metadata !1046, metadata !831}
!1046 = metadata !{i32 786443, metadata !1, metadata !1044, i32 441, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!1047 = metadata !{i32 442, i32 0, metadata !1048, metadata !831}
!1048 = metadata !{i32 786443, metadata !1, metadata !1046, i32 441, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!1049 = metadata !{i32 443, i32 0, metadata !1048, metadata !831}
!1050 = metadata !{i32 444, i32 0, metadata !1048, metadata !831}
!1051 = metadata !{i32 446, i32 0, metadata !1048, metadata !831}
!1052 = metadata !{i32 447, i32 0, metadata !1053, metadata !831}
!1053 = metadata !{i32 786443, metadata !1, metadata !1048, i32 446, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!1054 = metadata !{i32 448, i32 0, metadata !1053, metadata !831}
!1055 = metadata !{i32 450, i32 0, metadata !1053, metadata !831}
!1056 = metadata !{i32 671, i32 0, metadata !430, null}
!1057 = metadata !{i32 694, i32 0, metadata !430, null}
!1058 = metadata !{i32 695, i32 0, metadata !1059, null}
!1059 = metadata !{i32 786443, metadata !1, metadata !430, i32 694, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!1060 = metadata !{i32 696, i32 0, metadata !1059, null}
!1061 = metadata !{i32 698, i32 0, metadata !1059, null}
!1062 = metadata !{i32 706, i32 0, metadata !430, null}
!1063 = metadata !{i32 707, i32 0, metadata !834, null}
!1064 = metadata !{i32 710, i32 0, metadata !834, null}
!1065 = metadata !{i32 711, i32 0, metadata !836, null}
!1066 = metadata !{i32 713, i32 0, metadata !836, null}
!1067 = metadata !{i32 716, i32 0, metadata !430, null}
!1068 = metadata !{i32 717, i32 0, metadata !839, null}
!1069 = metadata !{i32 729, i32 0, metadata !843, null}
!1070 = metadata !{i32 719, i32 0, metadata !838, null}
!1071 = metadata !{i32 721, i32 0, metadata !838, null}
!1072 = metadata !{i32 722, i32 0, metadata !838, null}
!1073 = metadata !{i32 724, i32 0, metadata !838, null}
!1074 = metadata !{i32 725, i32 0, metadata !838, null}
!1075 = metadata !{i32 727, i32 0, metadata !838, null}
!1076 = metadata !{i32 728, i32 0, metadata !838, null}
!1077 = metadata !{i32 731, i32 0, metadata !843, null}
!1078 = metadata !{i32 736, i32 0, metadata !430, null}
!1079 = metadata !{i32 737, i32 0, metadata !846, null}
!1080 = metadata !{i32 744, i32 0, metadata !848, null}
!1081 = metadata !{i32 739, i32 0, metadata !1082, null}
!1082 = metadata !{i32 786443, metadata !1, metadata !845, i32 738, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!1083 = metadata !{i32 740, i32 0, metadata !1082, null}
!1084 = metadata !{i32 748, i32 0, metadata !430, null}
!1085 = metadata !{i32 749, i32 0, metadata !1086, null}
!1086 = metadata !{i32 786443, metadata !1, metadata !430, i32 748, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!1087 = metadata !{i32 751, i32 0, metadata !1088, null}
!1088 = metadata !{i32 786443, metadata !1, metadata !1089, i32 750, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!1089 = metadata !{i32 786443, metadata !1, metadata !1086, i32 749, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!1090 = metadata !{i32 750, i32 0, metadata !1088, null}
!1091 = metadata !{i32 100, i32 0, metadata !94, metadata !1092}
!1092 = metadata !{i32 752, i32 0, metadata !1089, null}
!1093 = metadata !{i32 103, i32 0, metadata !94, metadata !1092}
!1094 = metadata !{i32 753, i32 0, metadata !1089, null}
!1095 = metadata !{i32 755, i32 0, metadata !430, null}
!1096 = metadata !{i32 760, i32 0, metadata !1097, null}
!1097 = metadata !{i32 786443, metadata !1, metadata !430, i32 755, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/statutil.c]
!1098 = metadata !{i32 762, i32 0, metadata !430, null}
!1099 = metadata !{i32 369, i32 0, metadata !556, null}
!1100 = metadata !{i32 372, i32 0, metadata !556, null}
!1101 = metadata !{i32 374, i32 0, metadata !556, null}
!1102 = metadata !{i32 377, i32 0, metadata !556, null}
!1103 = metadata !{i32 379, i32 0, metadata !556, null}
!1104 = metadata !{i32 380, i32 0, metadata !556, null}
!1105 = metadata !{i32 382, i32 0, metadata !556, null}
!1106 = metadata !{i32 383, i32 0, metadata !556, null}
!1107 = metadata !{i32 386, i32 0, metadata !556, null}
!1108 = metadata !{i32 197, i32 0, metadata !595, null}
!1109 = metadata !{i32 786689, metadata !421, metadata !"enumc", metadata !87, i32 16777547, metadata !158, i32 0, metadata !1110} ; [ DW_TAG_arg_variable ] [enumc] [line 331]
!1110 = metadata !{i32 198, i32 0, metadata !595, null}
!1111 = metadata !{i32 331, i32 0, metadata !421, metadata !1110}
!1112 = metadata !{i32 786688, metadata !421, metadata !"i", metadata !87, i32 333, metadata !103, i32 0, metadata !1110} ; [ DW_TAG_auto_variable ] [i] [line 333]
!1113 = metadata !{i32 335, i32 0, metadata !421, metadata !1110}
!1114 = metadata !{i32 337, i32 0, metadata !421, metadata !1110}
!1115 = metadata !{i32 338, i32 0, metadata !421, metadata !1110}
!1116 = metadata !{i32 199, i32 0, metadata !595, null}

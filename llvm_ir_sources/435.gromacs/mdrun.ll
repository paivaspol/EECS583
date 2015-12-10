; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/mdrun.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_filenm = type { i32, i8*, i8*, i64 }
%struct.t_pargs = type { i8*, i32, i32, %union.anon, i8* }
%union.anon = type { i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_edsamyn = type { i32, i8*, i8* }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }

@main.desc = internal global [63 x i8*] [i8* getelementptr inbounds ([61 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([133 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8]* @.str19, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8]* @.str21, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8]* @.str23, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8]* @.str29, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str30, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8]* @.str31, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str32, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8]* @.str33, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8]* @.str34, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8]* @.str35, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8]* @.str37, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8]* @.str38, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8]* @.str41, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str42, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8]* @.str43, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8]* @.str44, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8]* @.str45, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8]* @.str46, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8]* @.str47, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8]* @.str48, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8]* @.str49, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str50, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8]* @.str51, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8]* @.str52, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8]* @.str53, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8]* @.str54, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8]* @.str55, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8]* @.str56, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8]* @.str57, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8]* @.str58, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8]* @.str59, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8]* @.str60, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8]* @.str61, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8]* @.str62, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [61 x i8] c"The mdrun program is the main computational chemistry engine\00", align 1
@.str1 = private unnamed_addr constant [71 x i8] c"within GROMACS. Obviously, it performs Molecular Dynamics simulations,\00", align 1
@.str2 = private unnamed_addr constant [64 x i8] c"but it can also perform Brownian Dynamics and Langevin Dynamics\00", align 1
@.str3 = private unnamed_addr constant [72 x i8] c"as well as Conjugate Gradient or Steepest Descents energy minimization.\00", align 1
@.str4 = private unnamed_addr constant [59 x i8] c"Normal mode analysis is another option. In this case mdrun\00", align 1
@.str5 = private unnamed_addr constant [50 x i8] c"builds a Hessian matrix from single conformation.\00", align 1
@.str6 = private unnamed_addr constant [57 x i8] c"For usual Normal Modes-like calculations, make sure that\00", align 1
@.str7 = private unnamed_addr constant [53 x i8] c"the structure provided is properly energy-minimised.\00", align 1
@.str8 = private unnamed_addr constant [133 x i8] c"The generated matrix can be diagonalized by g_nmeig.[PAR]The mdrun program reads the run input file ([TT]-s[tt]) and distributes the\00", align 1
@.str9 = private unnamed_addr constant [58 x i8] c"topology over nodes if needed. The coordinates are passed\00", align 1
@.str10 = private unnamed_addr constant [40 x i8] c"around, so that computations can begin.\00", align 1
@.str11 = private unnamed_addr constant [60 x i8] c"First a neighborlist is made, then the forces are computed.\00", align 1
@.str12 = private unnamed_addr constant [55 x i8] c"The forces are globally summed, and the velocities and\00", align 1
@.str13 = private unnamed_addr constant [68 x i8] c"positions are updated. If necessary shake is performed to constrain\00", align 1
@.str14 = private unnamed_addr constant [33 x i8] c"bond lengths and/or bond angles.\00", align 1
@.str15 = private unnamed_addr constant [68 x i8] c"Temperature and Pressure can be controlled using weak coupling to a\00", align 1
@.str16 = private unnamed_addr constant [11 x i8] c"bath.[PAR]\00", align 1
@.str17 = private unnamed_addr constant [61 x i8] c"mdrun produces at least three output file, plus one log file\00", align 1
@.str18 = private unnamed_addr constant [23 x i8] c"([TT]-g[tt]) per node.\00", align 1
@.str19 = private unnamed_addr constant [71 x i8] c"The trajectory file ([TT]-o[tt]), contains coordinates, velocities and\00", align 1
@.str20 = private unnamed_addr constant [19 x i8] c"optionally forces.\00", align 1
@.str21 = private unnamed_addr constant [61 x i8] c"The structure file ([TT]-c[tt]) contains the coordinates and\00", align 1
@.str22 = private unnamed_addr constant [29 x i8] c"velocities of the last step.\00", align 1
@.str23 = private unnamed_addr constant [65 x i8] c"The energy file ([TT]-e[tt]) contains energies, the temperature,\00", align 1
@.str24 = private unnamed_addr constant [70 x i8] c"pressure, etc, a lot of these things are also printed in the log file\00", align 1
@.str25 = private unnamed_addr constant [11 x i8] c"of node 0.\00", align 1
@.str26 = private unnamed_addr constant [70 x i8] c"Optionally coordinates can be written to a compressed trajectory file\00", align 1
@.str27 = private unnamed_addr constant [19 x i8] c"([TT]-x[tt]).[PAR]\00", align 1
@.str28 = private unnamed_addr constant [63 x i8] c"When running in parallel with PVM or an old version of MPI the\00", align 1
@.str29 = private unnamed_addr constant [59 x i8] c"[TT]-np[tt] option must be given to indicate the number of\00", align 1
@.str30 = private unnamed_addr constant [12 x i8] c"nodes.[PAR]\00", align 1
@.str31 = private unnamed_addr constant [71 x i8] c"The option [TT]-dgdl[tt] is only used when free energy perturbation is\00", align 1
@.str32 = private unnamed_addr constant [16 x i8] c"turned on.[PAR]\00", align 1
@.str33 = private unnamed_addr constant [64 x i8] c"With [TT]-rerun[tt] an input trajectory can be given for which \00", align 1
@.str34 = private unnamed_addr constant [71 x i8] c"forces and energies will be (re)calculated. Neighbor searching will be\00", align 1
@.str35 = private unnamed_addr constant [58 x i8] c"performed for every frame, unless [TT]nstlist[tt] is zero\00", align 1
@.str36 = private unnamed_addr constant [34 x i8] c"(see the [TT].mdp[tt] file).[PAR]\00", align 1
@.str37 = private unnamed_addr constant [73 x i8] c"ED (essential dynamics) sampling is switched on by using the [TT]-ei[tt]\00", align 1
@.str38 = private unnamed_addr constant [39 x i8] c"flag followed by an [TT].edi[tt] file.\00", align 1
@.str39 = private unnamed_addr constant [66 x i8] c"The [TT].edi[tt] file can be produced using options in the essdyn\00", align 1
@.str40 = private unnamed_addr constant [69 x i8] c"menu of the WHAT IF program. mdrun produces a [TT].edo[tt] file that\00", align 1
@.str41 = private unnamed_addr constant [71 x i8] c"contains projections of positions, velocities and forces onto selected\00", align 1
@.str42 = private unnamed_addr constant [19 x i8] c"eigenvectors.[PAR]\00", align 1
@.str43 = private unnamed_addr constant [67 x i8] c"The -table option can be used to pass mdrun a formatted table with\00", align 1
@.str44 = private unnamed_addr constant [67 x i8] c"user-defined potential functions. The file is read from either the\00", align 1
@.str45 = private unnamed_addr constant [73 x i8] c"current directory or from the GMXLIB directory. A number of preformatted\00", align 1
@.str46 = private unnamed_addr constant [71 x i8] c"tables are presented in the GMXLIB dir, for 6-8, 6-9, 6-10, 6-11, 6-12\00", align 1
@.str47 = private unnamed_addr constant [51 x i8] c"Lennard Jones potentials with normal Coulomb.[PAR]\00", align 1
@.str48 = private unnamed_addr constant [72 x i8] c"The options [TT]-pi[tt], [TT]-po[tt], [TT]-pd[tt], [TT]-pn[tt] are used\00", align 1
@.str49 = private unnamed_addr constant [64 x i8] c"for potential of mean force calculations and umbrella sampling.\00", align 1
@.str50 = private unnamed_addr constant [17 x i8] c"See manual.[PAR]\00", align 1
@.str51 = private unnamed_addr constant [69 x i8] c"When mdrun receives a TERM signal, it will set nsteps to the current\00", align 1
@.str52 = private unnamed_addr constant [69 x i8] c"step plus one. When mdrun receives a USR1 signal, it will set nsteps\00", align 1
@.str53 = private unnamed_addr constant [56 x i8] c"to the next multiple of nstxout after the current step.\00", align 1
@.str54 = private unnamed_addr constant [60 x i8] c"In both cases all the usual output will be written to file.\00", align 1
@.str55 = private unnamed_addr constant [62 x i8] c"When running with MPI, a signal to one of the mdrun processes\00", align 1
@.str56 = private unnamed_addr constant [59 x i8] c"is sufficient, this signal should not be sent to mpirun or\00", align 1
@.str57 = private unnamed_addr constant [52 x i8] c"the mdrun process that is the parent of the others.\00", align 1
@.str58 = private unnamed_addr constant [60 x i8] c"Finally some experimental algorithms can be tested when the\00", align 1
@.str59 = private unnamed_addr constant [53 x i8] c"appropriate options have been given. Currently under\00", align 1
@.str60 = private unnamed_addr constant [55 x i8] c"investigation are: polarizibility, glass simulations, \00", align 1
@.str61 = private unnamed_addr constant [45 x i8] c"Free energy perturbation, X-Ray bombardments\00", align 1
@.str62 = private unnamed_addr constant [38 x i8] c"and parallel independent simulations.\00", align 1
@main.fnm = internal global [22 x %struct.t_filenm] [%struct.t_filenm { i32 24, i8* null, i8* null, i64 2 }, %struct.t_filenm { i32 3, i8* getelementptr inbounds ([3 x i8]* @.str63, i32 0, i32 0), i8* null, i64 4 }, %struct.t_filenm { i32 6, i8* getelementptr inbounds ([3 x i8]* @.str64, i32 0, i32 0), i8* null, i64 12 }, %struct.t_filenm { i32 12, i8* getelementptr inbounds ([3 x i8]* @.str65, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str66, i32 0, i32 0), i64 4 }, %struct.t_filenm { i32 8, i8* getelementptr inbounds ([3 x i8]* @.str67, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str68, i32 0, i32 0), i64 4 }, %struct.t_filenm { i32 18, i8* getelementptr inbounds ([3 x i8]* @.str69, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str70, i32 0, i32 0), i64 4 }, %struct.t_filenm { i32 19, i8* getelementptr inbounds ([6 x i8]* @.str71, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str72, i32 0, i32 0), i64 12 }, %struct.t_filenm { i32 19, i8* getelementptr inbounds ([7 x i8]* @.str73, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str74, i32 0, i32 0), i64 10 }, %struct.t_filenm { i32 2, i8* getelementptr inbounds ([7 x i8]* @.str75, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str76, i32 0, i32 0), i64 10 }, %struct.t_filenm { i32 40, i8* getelementptr inbounds ([4 x i8]* @.str77, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str78, i32 0, i32 0), i64 10 }, %struct.t_filenm { i32 41, i8* getelementptr inbounds ([4 x i8]* @.str79, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str78, i32 0, i32 0), i64 12 }, %struct.t_filenm { i32 1, i8* getelementptr inbounds ([3 x i8]* @.str80, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str81, i32 0, i32 0), i64 10 }, %struct.t_filenm { i32 1, i8* getelementptr inbounds ([4 x i8]* @.str82, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str83, i32 0, i32 0), i64 10 }, %struct.t_filenm { i32 19, i8* getelementptr inbounds ([7 x i8]* @.str84, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str85, i32 0, i32 0), i64 12 }, %struct.t_filenm { i32 19, i8* getelementptr inbounds ([8 x i8]* @.str86, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str87, i32 0, i32 0), i64 12 }, %struct.t_filenm { i32 19, i8* getelementptr inbounds ([7 x i8]* @.str88, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str89, i32 0, i32 0), i64 12 }, %struct.t_filenm { i32 42, i8* getelementptr inbounds ([4 x i8]* @.str90, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str91, i32 0, i32 0), i64 10 }, %struct.t_filenm { i32 42, i8* getelementptr inbounds ([4 x i8]* @.str92, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str93, i32 0, i32 0), i64 12 }, %struct.t_filenm { i32 43, i8* getelementptr inbounds ([4 x i8]* @.str94, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str91, i32 0, i32 0), i64 12 }, %struct.t_filenm { i32 21, i8* getelementptr inbounds ([4 x i8]* @.str95, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str91, i32 0, i32 0), i64 10 }, %struct.t_filenm { i32 39, i8* getelementptr inbounds ([5 x i8]* @.str96, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str97, i32 0, i32 0), i64 12 }, %struct.t_filenm { i32 20, i8* getelementptr inbounds ([6 x i8]* @.str98, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str99, i32 0, i32 0), i64 4 }], align 16
@.str63 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str64 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@.str65 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str66 = private unnamed_addr constant [8 x i8] c"confout\00", align 1
@.str67 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str68 = private unnamed_addr constant [5 x i8] c"ener\00", align 1
@.str69 = private unnamed_addr constant [3 x i8] c"-g\00", align 1
@.str70 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str71 = private unnamed_addr constant [6 x i8] c"-dgdl\00", align 1
@.str72 = private unnamed_addr constant [5 x i8] c"dgdl\00", align 1
@.str73 = private unnamed_addr constant [7 x i8] c"-table\00", align 1
@.str74 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str75 = private unnamed_addr constant [7 x i8] c"-rerun\00", align 1
@.str76 = private unnamed_addr constant [6 x i8] c"rerun\00", align 1
@.str77 = private unnamed_addr constant [4 x i8] c"-ei\00", align 1
@.str78 = private unnamed_addr constant [4 x i8] c"sam\00", align 1
@.str79 = private unnamed_addr constant [4 x i8] c"-eo\00", align 1
@.str80 = private unnamed_addr constant [3 x i8] c"-j\00", align 1
@.str81 = private unnamed_addr constant [5 x i8] c"wham\00", align 1
@.str82 = private unnamed_addr constant [4 x i8] c"-jo\00", align 1
@.str83 = private unnamed_addr constant [4 x i8] c"bam\00", align 1
@.str84 = private unnamed_addr constant [7 x i8] c"-ffout\00", align 1
@.str85 = private unnamed_addr constant [4 x i8] c"gct\00", align 1
@.str86 = private unnamed_addr constant [8 x i8] c"-devout\00", align 1
@.str87 = private unnamed_addr constant [9 x i8] c"deviatie\00", align 1
@.str88 = private unnamed_addr constant [7 x i8] c"-runav\00", align 1
@.str89 = private unnamed_addr constant [8 x i8] c"runaver\00", align 1
@.str90 = private unnamed_addr constant [4 x i8] c"-pi\00", align 1
@.str91 = private unnamed_addr constant [5 x i8] c"pull\00", align 1
@.str92 = private unnamed_addr constant [4 x i8] c"-po\00", align 1
@.str93 = private unnamed_addr constant [8 x i8] c"pullout\00", align 1
@.str94 = private unnamed_addr constant [4 x i8] c"-pd\00", align 1
@.str95 = private unnamed_addr constant [4 x i8] c"-pn\00", align 1
@.str96 = private unnamed_addr constant [5 x i8] c"-mtx\00", align 1
@.str97 = private unnamed_addr constant [3 x i8] c"nm\00", align 1
@.str98 = private unnamed_addr constant [6 x i8] c"-spec\00", align 1
@.str99 = private unnamed_addr constant [5 x i8] c"spec\00", align 1
@main.bVerbose = internal global i32 0, align 4
@main.bCompact = internal global i32 1, align 4
@main.bSepDVDL = internal global i32 0, align 4
@main.bMultiSim = internal global i32 0, align 4
@main.bGlas = internal global i32 0, align 4
@main.bIonize = internal global i32 0, align 4
@main.nnodes = internal global i32 1, align 4
@main.nstepout = internal global i32 10, align 4
@main.pa = internal global [8 x %struct.t_pargs] [%struct.t_pargs { i8* getelementptr inbounds ([4 x i8]* @.str100, i32 0, i32 0), i32 0, i32 0, %union.anon { i8* bitcast (i32* @main.nnodes to i8*) }, i8* getelementptr inbounds ([53 x i8]* @.str101, i32 0, i32 0) }, %struct.t_pargs { i8* getelementptr inbounds ([3 x i8]* @.str102, i32 0, i32 0), i32 0, i32 4, %union.anon { i8* bitcast (i32* @main.bVerbose to i8*) }, i8* getelementptr inbounds ([18 x i8]* @.str103, i32 0, i32 0) }, %struct.t_pargs { i8* getelementptr inbounds ([9 x i8]* @.str104, i32 0, i32 0), i32 0, i32 4, %union.anon { i8* bitcast (i32* @main.bCompact to i8*) }, i8* getelementptr inbounds ([25 x i8]* @.str105, i32 0, i32 0) }, %struct.t_pargs { i8* getelementptr inbounds ([7 x i8]* @.str106, i32 0, i32 0), i32 0, i32 4, %union.anon { i8* bitcast (i32* @main.bMultiSim to i8*) }, i8* getelementptr inbounds ([56 x i8]* @.str107, i32 0, i32 0) }, %struct.t_pargs { i8* getelementptr inbounds ([6 x i8]* @.str108, i32 0, i32 0), i32 0, i32 4, %union.anon { i8* bitcast (i32* @main.bGlas to i8*) }, i8* getelementptr inbounds ([56 x i8]* @.str109, i32 0, i32 0) }, %struct.t_pargs { i8* getelementptr inbounds ([8 x i8]* @.str110, i32 0, i32 0), i32 0, i32 4, %union.anon { i8* bitcast (i32* @main.bIonize to i8*) }, i8* getelementptr inbounds ([76 x i8]* @.str111, i32 0, i32 0) }, %struct.t_pargs { i8* getelementptr inbounds ([9 x i8]* @.str112, i32 0, i32 0), i32 0, i32 4, %union.anon { i8* bitcast (i32* @main.bSepDVDL to i8*) }, i8* getelementptr inbounds ([86 x i8]* @.str113, i32 0, i32 0) }, %struct.t_pargs { i8* getelementptr inbounds ([9 x i8]* @.str114, i32 0, i32 0), i32 0, i32 0, %union.anon { i8* bitcast (i32* @main.nstepout to i8*) }, i8* getelementptr inbounds ([49 x i8]* @.str115, i32 0, i32 0) }], align 16
@.str100 = private unnamed_addr constant [4 x i8] c"-np\00", align 1
@.str101 = private unnamed_addr constant [53 x i8] c"Number of nodes, must be the same as used for grompp\00", align 1
@.str102 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str103 = private unnamed_addr constant [18 x i8] c"Be loud and noisy\00", align 1
@.str104 = private unnamed_addr constant [9 x i8] c"-compact\00", align 1
@.str105 = private unnamed_addr constant [25 x i8] c"Write a compact log file\00", align 1
@.str106 = private unnamed_addr constant [7 x i8] c"-multi\00", align 1
@.str107 = private unnamed_addr constant [56 x i8] c"Do multiple simulations in parallel (only with -np > 1)\00", align 1
@.str108 = private unnamed_addr constant [6 x i8] c"-glas\00", align 1
@.str109 = private unnamed_addr constant [56 x i8] c"Do glass simulation with special long range corrections\00", align 1
@.str110 = private unnamed_addr constant [8 x i8] c"-ionize\00", align 1
@.str111 = private unnamed_addr constant [76 x i8] c"Do a simulation including the effect of an X-Ray bombardment on your system\00", align 1
@.str112 = private unnamed_addr constant [9 x i8] c"-sepdvdl\00", align 1
@.str113 = private unnamed_addr constant [86 x i8] c"HIDDENWrite separate V and dVdl terms for each interaction and node(!) to log file(s)\00", align 1
@.str114 = private unnamed_addr constant [9 x i8] c"-stepout\00", align 1
@.str115 = private unnamed_addr constant [49 x i8] c"HIDDENFrequency of writing the remaining runtime\00", align 1
@.str116 = private unnamed_addr constant [62 x i8] c"GROMACS compiled without MPI support - can't do parallel runs\00", align 1
@stdlog = external global %struct._IO_FILE*
@.str117 = private unnamed_addr constant [13 x i8] c"Lindahl2001a\00", align 1
@.str118 = private unnamed_addr constant [13 x i8] c"Berendsen95a\00", align 1
@gmx_parallel = external global i32
@stderr = external global %struct._IO_FILE*

; Function Attrs: nounwind optsize uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %edyn = alloca %struct.t_edsamyn, align 8
  call void @llvm.dbg.value(metadata !{i32 %argc}, i64 0, metadata !64), !dbg !147
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !148
  call void @llvm.dbg.declare(metadata !{i32* %argc.addr}, metadata !64), !dbg !147
  call void @llvm.dbg.value(metadata !{i8** %argv}, i64 0, metadata !65), !dbg !147
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !151
  call void @llvm.dbg.declare(metadata !{i8*** %argv.addr}, metadata !65), !dbg !147
  call void @llvm.dbg.declare(metadata !{%struct.t_edsamyn* %edyn}, metadata !79), !dbg !152
  %call = call %struct.t_commrec* @init_par(i32* %argc.addr, i8*** %argv.addr) #4, !dbg !153
  call void @llvm.dbg.value(metadata !{%struct.t_commrec* %call}, i64 0, metadata !66), !dbg !153
  %bEdsam = getelementptr inbounds %struct.t_edsamyn* %edyn, i64 0, i32 0, !dbg !154
  store i32 0, i32* %bEdsam, align 8, !dbg !154, !tbaa !148
  call void @llvm.dbg.value(metadata !155, i64 0, metadata !89), !dbg !156
  %nodeid = getelementptr inbounds %struct.t_commrec* %call, i64 0, i32 0, !dbg !157
  %0 = load i32* %nodeid, align 4, !dbg !157, !tbaa !148
  %cmp = icmp eq i32 %0, 0, !dbg !157
  br i1 %cmp, label %land.lhs.true, label %if.end5, !dbg !157

land.lhs.true:                                    ; preds = %entry
  %threadid = getelementptr inbounds %struct.t_commrec* %call, i64 0, i32 4, !dbg !157
  %1 = load i32* %threadid, align 4, !dbg !157, !tbaa !148
  %cmp1 = icmp eq i32 %1, 0, !dbg !157
  br i1 %cmp1, label %for.cond.preheader, label %if.end5, !dbg !157

for.cond.preheader:                               ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata !{i32* %argc.addr}, i64 0, metadata !64), !dbg !158
  %2 = load i32* %argc.addr, align 4, !dbg !158, !tbaa !148
  %cmp290 = icmp sgt i32 %2, 1, !dbg !158
  br i1 %cmp290, label %for.body.lr.ph, label %if.end5, !dbg !158

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @llvm.dbg.value(metadata !{i8*** %argv.addr}, i64 0, metadata !65), !dbg !161
  %3 = load i8*** %argv.addr, align 8, !dbg !161, !tbaa !151
  call void @llvm.dbg.value(metadata !{i32* %argc.addr}, i64 0, metadata !64), !dbg !158
  br label %for.body, !dbg !158

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %pca_quiet.091 = phi i64 [ 4096, %for.body.lr.ph ], [ %.pca_quiet.0, %for.body ]
  call void @llvm.dbg.value(metadata !{i8*** %argv.addr}, i64 0, metadata !65), !dbg !161
  %arrayidx = getelementptr inbounds i8** %3, i64 %indvars.iv, !dbg !161
  %4 = load i8** %arrayidx, align 8, !dbg !161, !tbaa !151
  %call3 = call i32 @strncmp(i8* getelementptr inbounds ([3 x i8]* @.str102, i64 0, i64 0), i8* %4, i64 2) #5, !dbg !161
  %tobool = icmp eq i32 %call3, 0, !dbg !161
  call void @llvm.dbg.value(metadata !163, i64 0, metadata !89), !dbg !164
  %.pca_quiet.0 = select i1 %tobool, i64 0, i64 %pca_quiet.091, !dbg !161
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !158
  call void @llvm.dbg.value(metadata !{i32* %argc.addr}, i64 0, metadata !64), !dbg !158
  %5 = trunc i64 %indvars.iv.next to i32, !dbg !158
  %cmp2 = icmp slt i32 %5, %2, !dbg !158
  br i1 %cmp2, label %for.body, label %if.end5, !dbg !158

if.end5:                                          ; preds = %for.cond.preheader, %for.body, %land.lhs.true, %entry
  %pca_quiet.2 = phi i64 [ 4096, %entry ], [ 4096, %land.lhs.true ], [ 4096, %for.cond.preheader ], [ %.pca_quiet.0, %for.body ]
  call void @llvm.dbg.value(metadata !{i8*** %argv.addr}, i64 0, metadata !65), !dbg !166
  %6 = load i8*** %argv.addr, align 8, !dbg !166, !tbaa !151
  %or = or i64 %pca_quiet.2, 11520, !dbg !166
  call void @parse_common_args(i32* %argc.addr, i8** %6, i64 %or, i32 22, %struct.t_filenm* getelementptr inbounds ([22 x %struct.t_filenm]* @main.fnm, i64 0, i64 0), i32 8, %struct.t_pargs* getelementptr inbounds ([8 x %struct.t_pargs]* @main.pa, i64 0, i64 0), i32 63, i8** getelementptr inbounds ([63 x i8*]* @main.desc, i64 0, i64 0), i32 0, i8** null) #4, !dbg !166
  %7 = load i32* @main.bVerbose, align 4, !dbg !167, !tbaa !148
  %tobool6 = icmp eq i32 %7, 0, !dbg !167
  br i1 %tobool6, label %land.end12, label %land.rhs, !dbg !167

land.rhs:                                         ; preds = %if.end5
  %8 = load i32* %nodeid, align 4, !dbg !167, !tbaa !148
  %cmp8 = icmp eq i32 %8, 0, !dbg !167
  br i1 %cmp8, label %land.rhs9, label %land.end12, !dbg !167

land.rhs9:                                        ; preds = %land.rhs
  %threadid10 = getelementptr inbounds %struct.t_commrec* %call, i64 0, i32 4, !dbg !167
  %9 = load i32* %threadid10, align 4, !dbg !167, !tbaa !148
  %cmp11 = icmp eq i32 %9, 0, !dbg !167
  br label %land.end12

land.end12:                                       ; preds = %if.end5, %land.rhs, %land.rhs9
  %10 = phi i1 [ false, %if.end5 ], [ false, %land.rhs ], [ %cmp11, %land.rhs9 ]
  %land.ext = zext i1 %10 to i32
  store i32 %land.ext, i32* @main.bVerbose, align 4, !tbaa !148
  %11 = load i32* @main.nnodes, align 4, !dbg !168, !tbaa !148
  %cmp13 = icmp sgt i32 %11, 1, !dbg !168
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !168

if.then14:                                        ; preds = %land.end12
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([62 x i8]* @.str116, i64 0, i64 0)) #4, !dbg !169
  %.pr = load i32* @main.bVerbose, align 4, !dbg !170, !tbaa !148
  br label %if.end15, !dbg !169

if.end15:                                         ; preds = %if.then14, %land.end12
  %12 = phi i32 [ %.pr, %if.then14 ], [ %land.ext, %land.end12 ], !dbg !170
  %tobool16 = icmp eq i32 %12, 0, !dbg !170
  br i1 %tobool16, label %if.end19, label %if.then17, !dbg !170

if.then17:                                        ; preds = %if.end15
  %call18 = call i8* @ftp2fn(i32 18, i32 22, %struct.t_filenm* getelementptr inbounds ([22 x %struct.t_filenm]* @main.fnm, i64 0, i64 0)) #4, !dbg !171
  call void @open_log(i8* %call18, %struct.t_commrec* %call) #4, !dbg !171
  br label %if.end19, !dbg !171

if.end19:                                         ; preds = %if.end15, %if.then17
  %13 = load i32* @main.bMultiSim, align 4, !dbg !172, !tbaa !148
  %tobool20 = icmp eq i32 %13, 0, !dbg !172
  br i1 %tobool20, label %if.end26, label %land.lhs.true21, !dbg !172

land.lhs.true21:                                  ; preds = %if.end19
  %nnodes = getelementptr inbounds %struct.t_commrec* %call, i64 0, i32 1, !dbg !172
  %14 = load i32* %nnodes, align 4, !dbg !172, !tbaa !148
  %cmp22 = icmp sgt i32 %14, 1, !dbg !172
  br i1 %cmp22, label %if.then24, label %lor.lhs.false, !dbg !172

lor.lhs.false:                                    ; preds = %land.lhs.true21
  %nthreads = getelementptr inbounds %struct.t_commrec* %call, i64 0, i32 5, !dbg !172
  %15 = load i32* %nthreads, align 4, !dbg !172, !tbaa !148
  %cmp23 = icmp sgt i32 %15, 1, !dbg !172
  br i1 %cmp23, label %if.then24, label %if.end26, !dbg !172

if.then24:                                        ; preds = %lor.lhs.false, %land.lhs.true21
  %call25 = call %struct.t_commrec* @init_multisystem(%struct.t_commrec* %call, i32 22, %struct.t_filenm* getelementptr inbounds ([22 x %struct.t_filenm]* @main.fnm, i64 0, i64 0)) #4, !dbg !173
  call void @llvm.dbg.value(metadata !{%struct.t_commrec* %call25}, i64 0, metadata !78), !dbg !173
  br label %if.end26, !dbg !173

if.end26:                                         ; preds = %lor.lhs.false, %if.end19, %if.then24
  %mcr.0 = phi %struct.t_commrec* [ %call25, %if.then24 ], [ null, %if.end19 ], [ null, %lor.lhs.false ]
  %16 = load i32* %nodeid, align 4, !dbg !174, !tbaa !148
  %cmp28 = icmp eq i32 %16, 0, !dbg !174
  br i1 %cmp28, label %land.lhs.true29, label %if.end36, !dbg !174

land.lhs.true29:                                  ; preds = %if.end26
  %threadid30 = getelementptr inbounds %struct.t_commrec* %call, i64 0, i32 4, !dbg !174
  %17 = load i32* %threadid30, align 4, !dbg !174, !tbaa !148
  %cmp31 = icmp eq i32 %17, 0, !dbg !174
  %18 = load %struct._IO_FILE** @stdlog, align 8, !dbg !174, !tbaa !151
  %cmp33 = icmp ne %struct._IO_FILE* %18, null, !dbg !174
  %or.cond = and i1 %cmp31, %cmp33, !dbg !174
  br i1 %or.cond, label %if.then34, label %if.end36, !dbg !174

if.then34:                                        ; preds = %land.lhs.true29
  call void @llvm.dbg.value(metadata !{i8*** %argv.addr}, i64 0, metadata !65), !dbg !175
  %19 = load i8*** %argv.addr, align 8, !dbg !175, !tbaa !151
  %20 = load i8** %19, align 8, !dbg !175, !tbaa !151
  call void @CopyRight(%struct._IO_FILE* %18, i8* %20) #4, !dbg !175
  %21 = load %struct._IO_FILE** @stdlog, align 8, !dbg !177, !tbaa !151
  call void @please_cite(%struct._IO_FILE* %21, i8* getelementptr inbounds ([13 x i8]* @.str117, i64 0, i64 0)) #4, !dbg !177
  %22 = load %struct._IO_FILE** @stdlog, align 8, !dbg !178, !tbaa !151
  call void @please_cite(%struct._IO_FILE* %22, i8* getelementptr inbounds ([13 x i8]* @.str118, i64 0, i64 0)) #4, !dbg !178
  br label %if.end36, !dbg !179

if.end36:                                         ; preds = %if.then34, %land.lhs.true29, %if.end26
  %call37 = call i32 @opt2bSet(i8* getelementptr inbounds ([4 x i8]* @.str77, i64 0, i64 0), i32 22, %struct.t_filenm* getelementptr inbounds ([22 x %struct.t_filenm]* @main.fnm, i64 0, i64 0)) #4, !dbg !180
  %tobool38 = icmp eq i32 %call37, 0, !dbg !180
  br i1 %tobool38, label %if.end40, label %if.then39, !dbg !180

if.then39:                                        ; preds = %if.end36
  call void @ed_open(i32 22, %struct.t_filenm* getelementptr inbounds ([22 x %struct.t_filenm]* @main.fnm, i64 0, i64 0), %struct.t_edsamyn* %edyn) #4, !dbg !181
  br label %if.end40, !dbg !181

if.end40:                                         ; preds = %if.end36, %if.then39
  %call41 = call i32 @opt2bSet(i8* getelementptr inbounds ([7 x i8]* @.str75, i64 0, i64 0), i32 22, %struct.t_filenm* getelementptr inbounds ([22 x %struct.t_filenm]* @main.fnm, i64 0, i64 0)) #4, !dbg !182
  %tobool42 = icmp ne i32 %call41, 0, !dbg !182
  %conv = select i1 %tobool42, i64 16, i64 0, !dbg !182
  call void @llvm.dbg.value(metadata !{i64 %conv}, i64 0, metadata !87), !dbg !182
  %23 = load i32* @main.bSepDVDL, align 4, !dbg !183, !tbaa !148
  %tobool43 = icmp ne i32 %23, 0, !dbg !183
  %conv45 = select i1 %tobool43, i64 128, i64 0, !dbg !183
  %or46 = or i64 %conv45, %conv, !dbg !183
  call void @llvm.dbg.value(metadata !{i64 %or46}, i64 0, metadata !87), !dbg !183
  %24 = load i32* @main.bIonize, align 4, !dbg !184, !tbaa !148
  %tobool47 = icmp ne i32 %24, 0, !dbg !184
  %conv49 = select i1 %tobool47, i64 8, i64 0, !dbg !184
  %or50 = or i64 %or46, %conv49, !dbg !184
  %25 = load i32* @main.bMultiSim, align 4, !dbg !184, !tbaa !148
  %tobool51 = icmp ne i32 %25, 0, !dbg !184
  %conv53 = zext i1 %tobool51 to i64, !dbg !184
  %or54 = or i64 %or50, %conv53, !dbg !184
  %26 = load i32* @main.bGlas, align 4, !dbg !184, !tbaa !148
  %tobool55 = icmp ne i32 %26, 0, !dbg !184
  %conv57 = select i1 %tobool55, i64 2, i64 0, !dbg !184
  %or58 = or i64 %or54, %conv57, !dbg !184
  call void @llvm.dbg.value(metadata !{i64 %or58}, i64 0, metadata !87), !dbg !184
  %27 = load i32* @main.bVerbose, align 4, !dbg !185, !tbaa !148
  %28 = load i32* @main.bCompact, align 4, !dbg !185, !tbaa !148
  %29 = load i32* @main.nstepout, align 4, !dbg !185, !tbaa !148
  call void @mdrunner(%struct.t_commrec* %call, %struct.t_commrec* %mcr.0, i32 22, %struct.t_filenm* getelementptr inbounds ([22 x %struct.t_filenm]* @main.fnm, i64 0, i64 0), i32 %27, i32 %28, i32 0, i32 %29, %struct.t_edsamyn* %edyn, i64 %or58) #4, !dbg !185
  %30 = load i32* @gmx_parallel, align 4, !dbg !186, !tbaa !148
  %tobool59 = icmp eq i32 %30, 0, !dbg !186
  br i1 %tobool59, label %if.end61, label %if.then60, !dbg !186

if.then60:                                        ; preds = %if.end40
  call void @gmx_finalize() #4, !dbg !187
  br label %if.end61, !dbg !187

if.end61:                                         ; preds = %if.end40, %if.then60
  %31 = load i32* %nodeid, align 4, !dbg !188, !tbaa !148
  %cmp63 = icmp eq i32 %31, 0, !dbg !188
  br i1 %cmp63, label %land.lhs.true65, label %if.end72, !dbg !188

land.lhs.true65:                                  ; preds = %if.end61
  %threadid66 = getelementptr inbounds %struct.t_commrec* %call, i64 0, i32 4, !dbg !188
  %32 = load i32* %threadid66, align 4, !dbg !188, !tbaa !148
  %cmp67 = icmp eq i32 %32, 0, !dbg !188
  %33 = load i32* @main.bVerbose, align 4, !dbg !188, !tbaa !148
  %tobool70 = icmp ne i32 %33, 0, !dbg !188
  %or.cond73 = and i1 %cmp67, %tobool70, !dbg !188
  br i1 %or.cond73, label %if.then71, label %if.end72, !dbg !188

if.then71:                                        ; preds = %land.lhs.true65
  %34 = load %struct._IO_FILE** @stderr, align 8, !dbg !189, !tbaa !151
  call void @thanx(%struct._IO_FILE* %34) #4, !dbg !189
  br label %if.end72, !dbg !191

if.end72:                                         ; preds = %if.then71, %land.lhs.true65, %if.end61
  ret i32 0, !dbg !192
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare %struct.t_commrec* @init_par(i32*, i8***) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #3

; Function Attrs: optsize
declare void @parse_common_args(i32*, i8**, i64, i32, %struct.t_filenm*, i32, %struct.t_pargs*, i32, i8**, i32, i8**) #2

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: optsize
declare void @open_log(i8*, %struct.t_commrec*) #2

; Function Attrs: optsize
declare i8* @ftp2fn(i32, i32, %struct.t_filenm*) #2

; Function Attrs: optsize
declare %struct.t_commrec* @init_multisystem(%struct.t_commrec*, i32, %struct.t_filenm*) #2

; Function Attrs: optsize
declare void @CopyRight(%struct._IO_FILE*, i8*) #2

; Function Attrs: optsize
declare void @please_cite(%struct._IO_FILE*, i8*) #2

; Function Attrs: optsize
declare i32 @opt2bSet(i8*, i32, %struct.t_filenm*) #2

; Function Attrs: optsize
declare void @ed_open(i32, %struct.t_filenm*, %struct.t_edsamyn*) #2

; Function Attrs: optsize
declare void @mdrunner(%struct.t_commrec*, %struct.t_commrec*, i32, %struct.t_filenm*, i32, i32, i32, i32, %struct.t_edsamyn*, i64) #2

; Function Attrs: optsize
declare void @gmx_finalize() #2

; Function Attrs: optsize
declare void @thanx(%struct._IO_FILE*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !53, metadata !54, metadata !91, metadata !53, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mdrun.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/mdrun.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
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
!54 = metadata !{metadata !55}
!55 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"main", metadata !"main", metadata !"", i32 48, metadata !57, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8**)* @main, null, null, metadata !63, i32 49} ; [ DW_TAG_subprogram ] [line 48] [def] [scope 49] [main]
!56 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mdrun.c]
!57 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!58 = metadata !{metadata !59, metadata !59, metadata !60}
!59 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!60 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!61 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!62 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!63 = metadata !{metadata !64, metadata !65, metadata !66, metadata !78, metadata !79, metadata !87, metadata !89, metadata !90}
!64 = metadata !{i32 786689, metadata !55, metadata !"argc", metadata !56, i32 16777264, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 48]
!65 = metadata !{i32 786689, metadata !55, metadata !"argv", metadata !56, i32 33554480, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 48]
!66 = metadata !{i32 786688, metadata !55, metadata !"cr", metadata !56, i32 116, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cr] [line 116]
!67 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_commrec]
!68 = metadata !{i32 786454, metadata !1, null, metadata !"t_commrec", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_typedef ] [t_commrec] [line 40, size 0, align 0, offset 0] [from ]
!69 = metadata !{i32 786451, metadata !70, null, metadata !"", i32 36, i64 192, i64 32, i32 0, i32 0, null, metadata !71, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 32, offset 0] [from ]
!70 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/commrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!71 = metadata !{metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77}
!72 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"nodeid", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [nodeid] [line 37, size 32, align 32, offset 0] [from int]
!73 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"nnodes", i32 37, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [nnodes] [line 37, size 32, align 32, offset 32] [from int]
!74 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"left", i32 38, i64 32, i64 32, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [left] [line 38, size 32, align 32, offset 64] [from int]
!75 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"right", i32 38, i64 32, i64 32, i64 96, i32 0, metadata !59} ; [ DW_TAG_member ] [right] [line 38, size 32, align 32, offset 96] [from int]
!76 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"threadid", i32 39, i64 32, i64 32, i64 128, i32 0, metadata !59} ; [ DW_TAG_member ] [threadid] [line 39, size 32, align 32, offset 128] [from int]
!77 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"nthreads", i32 39, i64 32, i64 32, i64 160, i32 0, metadata !59} ; [ DW_TAG_member ] [nthreads] [line 39, size 32, align 32, offset 160] [from int]
!78 = metadata !{i32 786688, metadata !55, metadata !"mcr", metadata !56, i32 116, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mcr] [line 116]
!79 = metadata !{i32 786688, metadata !55, metadata !"edyn", metadata !56, i32 172, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [edyn] [line 172]
!80 = metadata !{i32 786454, metadata !1, null, metadata !"t_edsamyn", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [t_edsamyn] [line 40, size 0, align 0, offset 0] [from ]
!81 = metadata !{i32 786451, metadata !82, null, metadata !"", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !83, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 64, offset 0] [from ]
!82 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/edsams.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!83 = metadata !{metadata !84, metadata !85, metadata !86}
!84 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"bEdsam", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [bEdsam] [line 37, size 32, align 32, offset 0] [from int]
!85 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"edinam", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !61} ; [ DW_TAG_member ] [edinam] [line 38, size 64, align 64, offset 64] [from ]
!86 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"edonam", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !61} ; [ DW_TAG_member ] [edonam] [line 39, size 64, align 64, offset 128] [from ]
!87 = metadata !{i32 786688, metadata !55, metadata !"Flags", metadata !56, i32 173, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Flags] [line 173]
!88 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!89 = metadata !{i32 786688, metadata !55, metadata !"pca_quiet", metadata !56, i32 174, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pca_quiet] [line 174]
!90 = metadata !{i32 786688, metadata !55, metadata !"i", metadata !56, i32 175, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 175]
!91 = metadata !{metadata !92, metadata !96, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116}
!92 = metadata !{i32 786484, i32 0, metadata !55, metadata !"desc", metadata !"desc", metadata !"", metadata !56, i32 50, metadata !93, i32 1, i32 1, [63 x i8*]* @main.desc, null} ; [ DW_TAG_variable ] [desc] [line 50] [local] [def]
!93 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4032, i64 64, i32 0, i32 0, metadata !61, metadata !94, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4032, align 64, offset 0] [from ]
!94 = metadata !{metadata !95}
!95 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ] [0, 62]
!96 = metadata !{i32 786484, i32 0, metadata !55, metadata !"fnm", metadata !"fnm", metadata !"", metadata !56, i32 117, metadata !97, i32 1, i32 1, [22 x %struct.t_filenm]* @main.fnm, null} ; [ DW_TAG_variable ] [fnm] [line 117] [local] [def]
!97 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 5632, i64 64, i32 0, i32 0, metadata !98, metadata !105, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 5632, align 64, offset 0] [from t_filenm]
!98 = metadata !{i32 786454, metadata !1, null, metadata !"t_filenm", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !99} ; [ DW_TAG_typedef ] [t_filenm] [line 62, size 0, align 0, offset 0] [from ]
!99 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 57, i64 256, i64 64, i32 0, i32 0, null, metadata !100, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 57, size 256, align 64, offset 0] [from ]
!100 = metadata !{metadata !101, metadata !102, metadata !103, metadata !104}
!101 = metadata !{i32 786445, metadata !4, metadata !99, metadata !"ftp", i32 58, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [ftp] [line 58, size 32, align 32, offset 0] [from int]
!102 = metadata !{i32 786445, metadata !4, metadata !99, metadata !"opt", i32 59, i64 64, i64 64, i64 64, i32 0, metadata !61} ; [ DW_TAG_member ] [opt] [line 59, size 64, align 64, offset 64] [from ]
!103 = metadata !{i32 786445, metadata !4, metadata !99, metadata !"fn", i32 60, i64 64, i64 64, i64 128, i32 0, metadata !61} ; [ DW_TAG_member ] [fn] [line 60, size 64, align 64, offset 128] [from ]
!104 = metadata !{i32 786445, metadata !4, metadata !99, metadata !"flag", i32 61, i64 64, i64 64, i64 192, i32 0, metadata !88} ; [ DW_TAG_member ] [flag] [line 61, size 64, align 64, offset 192] [from long unsigned int]
!105 = metadata !{metadata !106}
!106 = metadata !{i32 786465, i64 0, i64 22}      ; [ DW_TAG_subrange_type ] [0, 21]
!107 = metadata !{i32 786484, i32 0, metadata !55, metadata !"bVerbose", metadata !"bVerbose", metadata !"", metadata !56, i32 144, metadata !59, i32 1, i32 1, i32* @main.bVerbose, null} ; [ DW_TAG_variable ] [bVerbose] [line 144] [local] [def]
!108 = metadata !{i32 786484, i32 0, metadata !55, metadata !"bCompact", metadata !"bCompact", metadata !"", metadata !56, i32 145, metadata !59, i32 1, i32 1, i32* @main.bCompact, null} ; [ DW_TAG_variable ] [bCompact] [line 145] [local] [def]
!109 = metadata !{i32 786484, i32 0, metadata !55, metadata !"bSepDVDL", metadata !"bSepDVDL", metadata !"", metadata !56, i32 146, metadata !59, i32 1, i32 1, i32* @main.bSepDVDL, null} ; [ DW_TAG_variable ] [bSepDVDL] [line 146] [local] [def]
!110 = metadata !{i32 786484, i32 0, metadata !55, metadata !"bMultiSim", metadata !"bMultiSim", metadata !"", metadata !56, i32 147, metadata !59, i32 1, i32 1, i32* @main.bMultiSim, null} ; [ DW_TAG_variable ] [bMultiSim] [line 147] [local] [def]
!111 = metadata !{i32 786484, i32 0, metadata !55, metadata !"bGlas", metadata !"bGlas", metadata !"", metadata !56, i32 148, metadata !59, i32 1, i32 1, i32* @main.bGlas, null} ; [ DW_TAG_variable ] [bGlas] [line 148] [local] [def]
!112 = metadata !{i32 786484, i32 0, metadata !55, metadata !"bIonize", metadata !"bIonize", metadata !"", metadata !56, i32 149, metadata !59, i32 1, i32 1, i32* @main.bIonize, null} ; [ DW_TAG_variable ] [bIonize] [line 149] [local] [def]
!113 = metadata !{i32 786484, i32 0, metadata !55, metadata !"nDLB", metadata !"nDLB", metadata !"", metadata !56, i32 151, metadata !59, i32 1, i32 1, null, null}
!114 = metadata !{i32 786484, i32 0, metadata !55, metadata !"nnodes", metadata !"nnodes", metadata !"", metadata !56, i32 152, metadata !59, i32 1, i32 1, i32* @main.nnodes, null} ; [ DW_TAG_variable ] [nnodes] [line 152] [local] [def]
!115 = metadata !{i32 786484, i32 0, metadata !55, metadata !"nstepout", metadata !"nstepout", metadata !"", metadata !56, i32 153, metadata !59, i32 1, i32 1, i32* @main.nstepout, null} ; [ DW_TAG_variable ] [nstepout] [line 153] [local] [def]
!116 = metadata !{i32 786484, i32 0, metadata !55, metadata !"pa", metadata !"pa", metadata !"", metadata !56, i32 154, metadata !117, i32 1, i32 1, [8 x %struct.t_pargs]* @main.pa, null} ; [ DW_TAG_variable ] [pa] [line 154] [local] [def]
!117 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 64, i32 0, i32 0, metadata !118, metadata !145, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 64, offset 0] [from t_pargs]
!118 = metadata !{i32 786454, metadata !1, null, metadata !"t_pargs", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !119} ; [ DW_TAG_typedef ] [t_pargs] [line 105, size 0, align 0, offset 0] [from ]
!119 = metadata !{i32 786451, metadata !120, null, metadata !"", i32 91, i64 256, i64 64, i32 0, i32 0, null, metadata !121, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 91, size 256, align 64, offset 0] [from ]
!120 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!121 = metadata !{metadata !122, metadata !123, metadata !124, metadata !125, metadata !144}
!122 = metadata !{i32 786445, metadata !120, metadata !119, metadata !"option", i32 92, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_member ] [option] [line 92, size 64, align 64, offset 0] [from ]
!123 = metadata !{i32 786445, metadata !120, metadata !119, metadata !"bSet", i32 93, i64 32, i64 32, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [bSet] [line 93, size 32, align 32, offset 64] [from int]
!124 = metadata !{i32 786445, metadata !120, metadata !119, metadata !"type", i32 94, i64 32, i64 32, i64 96, i32 0, metadata !59} ; [ DW_TAG_member ] [type] [line 94, size 32, align 32, offset 96] [from int]
!125 = metadata !{i32 786445, metadata !120, metadata !119, metadata !"u", i32 103, i64 64, i64 64, i64 128, i32 0, metadata !126} ; [ DW_TAG_member ] [u] [line 103, size 64, align 64, offset 128] [from ]
!126 = metadata !{i32 786455, metadata !120, metadata !119, metadata !"", i32 95, i64 64, i64 64, i64 0, i32 0, null, metadata !127, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 95, size 64, align 64, offset 0] [from ]
!127 = metadata !{metadata !128, metadata !130, metadata !132, metadata !136, metadata !137, metadata !138}
!128 = metadata !{i32 786445, metadata !120, metadata !126, metadata !"v", i32 96, i64 64, i64 64, i64 0, i32 0, metadata !129} ; [ DW_TAG_member ] [v] [line 96, size 64, align 64, offset 0] [from ]
!129 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!130 = metadata !{i32 786445, metadata !120, metadata !126, metadata !"i", i32 97, i64 64, i64 64, i64 0, i32 0, metadata !131} ; [ DW_TAG_member ] [i] [line 97, size 64, align 64, offset 0] [from ]
!131 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!132 = metadata !{i32 786445, metadata !120, metadata !126, metadata !"r", i32 98, i64 64, i64 64, i64 0, i32 0, metadata !133} ; [ DW_TAG_member ] [r] [line 98, size 64, align 64, offset 0] [from ]
!133 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !134} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!134 = metadata !{i32 786454, metadata !120, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !135} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!135 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!136 = metadata !{i32 786445, metadata !120, metadata !126, metadata !"c", i32 99, i64 64, i64 64, i64 0, i32 0, metadata !60} ; [ DW_TAG_member ] [c] [line 99, size 64, align 64, offset 0] [from ]
!137 = metadata !{i32 786445, metadata !120, metadata !126, metadata !"b", i32 101, i64 64, i64 64, i64 0, i32 0, metadata !131} ; [ DW_TAG_member ] [b] [line 101, size 64, align 64, offset 0] [from ]
!138 = metadata !{i32 786445, metadata !120, metadata !126, metadata !"rv", i32 102, i64 64, i64 64, i64 0, i32 0, metadata !139} ; [ DW_TAG_member ] [rv] [line 102, size 64, align 64, offset 0] [from ]
!139 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !140} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!140 = metadata !{i32 786454, metadata !120, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !141} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!141 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !134, metadata !142, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!142 = metadata !{metadata !143}
!143 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!144 = metadata !{i32 786445, metadata !120, metadata !119, metadata !"desc", i32 104, i64 64, i64 64, i64 192, i32 0, metadata !61} ; [ DW_TAG_member ] [desc] [line 104, size 64, align 64, offset 192] [from ]
!145 = metadata !{metadata !146}
!146 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!147 = metadata !{i32 48, i32 0, metadata !55, null}
!148 = metadata !{metadata !"int", metadata !149}
!149 = metadata !{metadata !"omnipotent char", metadata !150}
!150 = metadata !{metadata !"Simple C/C++ TBAA"}
!151 = metadata !{metadata !"any pointer", metadata !149}
!152 = metadata !{i32 172, i32 0, metadata !55, null}
!153 = metadata !{i32 177, i32 0, metadata !55, null}
!154 = metadata !{i32 178, i32 0, metadata !55, null}
!155 = metadata !{i64 4096}
!156 = metadata !{i32 185, i32 0, metadata !55, null}
!157 = metadata !{i32 188, i32 0, metadata !55, null}
!158 = metadata !{i32 190, i32 0, metadata !159, null}
!159 = metadata !{i32 786443, metadata !1, metadata !160, i32 190, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mdrun.c]
!160 = metadata !{i32 786443, metadata !1, metadata !55, i32 189, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mdrun.c]
!161 = metadata !{i32 192, i32 0, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !159, i32 191, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mdrun.c]
!163 = metadata !{i64 0}
!164 = metadata !{i32 194, i32 0, metadata !165, null}
!165 = metadata !{i32 786443, metadata !1, metadata !162, i32 193, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mdrun.c]
!166 = metadata !{i32 199, i32 0, metadata !55, null}
!167 = metadata !{i32 203, i32 0, metadata !55, null}
!168 = metadata !{i32 206, i32 0, metadata !55, null}
!169 = metadata !{i32 207, i32 0, metadata !55, null}
!170 = metadata !{i32 210, i32 0, metadata !55, null}
!171 = metadata !{i32 211, i32 0, metadata !55, null}
!172 = metadata !{i32 213, i32 0, metadata !55, null}
!173 = metadata !{i32 214, i32 0, metadata !55, null}
!174 = metadata !{i32 218, i32 0, metadata !55, null}
!175 = metadata !{i32 219, i32 0, metadata !176, null}
!176 = metadata !{i32 786443, metadata !1, metadata !55, i32 218, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mdrun.c]
!177 = metadata !{i32 220, i32 0, metadata !176, null}
!178 = metadata !{i32 221, i32 0, metadata !176, null}
!179 = metadata !{i32 222, i32 0, metadata !176, null}
!180 = metadata !{i32 224, i32 0, metadata !55, null}
!181 = metadata !{i32 225, i32 0, metadata !55, null}
!182 = metadata !{i32 227, i32 0, metadata !55, null}
!183 = metadata !{i32 228, i32 0, metadata !55, null}
!184 = metadata !{i32 230, i32 0, metadata !55, null}
!185 = metadata !{i32 235, i32 0, metadata !55, null}
!186 = metadata !{i32 237, i32 0, metadata !55, null}
!187 = metadata !{i32 238, i32 0, metadata !55, null}
!188 = metadata !{i32 240, i32 0, metadata !55, null}
!189 = metadata !{i32 242, i32 0, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !55, i32 241, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mdrun.c]
!191 = metadata !{i32 243, i32 0, metadata !190, null}
!192 = metadata !{i32 245, i32 0, metadata !55, null}

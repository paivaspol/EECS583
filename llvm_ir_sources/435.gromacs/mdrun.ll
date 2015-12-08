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
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !0
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !3
  %call = call %struct.t_commrec* @init_par(i32* %argc.addr, i8*** %argv.addr) #3
  %bEdsam = getelementptr inbounds %struct.t_edsamyn* %edyn, i64 0, i32 0
  store i32 0, i32* %bEdsam, align 8, !tbaa !0
  %nodeid = getelementptr inbounds %struct.t_commrec* %call, i64 0, i32 0
  %0 = load i32* %nodeid, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %entry
  %threadid = getelementptr inbounds %struct.t_commrec* %call, i64 0, i32 4
  %1 = load i32* %threadid, align 4, !tbaa !0
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %for.cond.preheader, label %if.end5

for.cond.preheader:                               ; preds = %land.lhs.true
  %2 = load i32* %argc.addr, align 4, !tbaa !0
  %cmp290 = icmp sgt i32 %2, 1
  br i1 %cmp290, label %for.body.lr.ph, label %if.end5

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %3 = load i8*** %argv.addr, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %pca_quiet.091 = phi i64 [ 4096, %for.body.lr.ph ], [ %.pca_quiet.0, %for.body ]
  %arrayidx = getelementptr inbounds i8** %3, i64 %indvars.iv
  %4 = load i8** %arrayidx, align 8, !tbaa !3
  %call3 = call i32 @strncmp(i8* getelementptr inbounds ([3 x i8]* @.str102, i64 0, i64 0), i8* %4, i64 2) #4
  %tobool = icmp eq i32 %call3, 0
  %.pca_quiet.0 = select i1 %tobool, i64 0, i64 %pca_quiet.091
  %indvars.iv.next = add i64 %indvars.iv, 1
  %5 = trunc i64 %indvars.iv.next to i32
  %cmp2 = icmp slt i32 %5, %2
  br i1 %cmp2, label %for.body, label %if.end5

if.end5:                                          ; preds = %for.cond.preheader, %for.body, %land.lhs.true, %entry
  %pca_quiet.2 = phi i64 [ 4096, %entry ], [ 4096, %land.lhs.true ], [ 4096, %for.cond.preheader ], [ %.pca_quiet.0, %for.body ]
  %6 = load i8*** %argv.addr, align 8, !tbaa !3
  %or = or i64 %pca_quiet.2, 11520
  call void @parse_common_args(i32* %argc.addr, i8** %6, i64 %or, i32 22, %struct.t_filenm* getelementptr inbounds ([22 x %struct.t_filenm]* @main.fnm, i64 0, i64 0), i32 8, %struct.t_pargs* getelementptr inbounds ([8 x %struct.t_pargs]* @main.pa, i64 0, i64 0), i32 63, i8** getelementptr inbounds ([63 x i8*]* @main.desc, i64 0, i64 0), i32 0, i8** null) #3
  %7 = load i32* @main.bVerbose, align 4, !tbaa !0
  %tobool6 = icmp eq i32 %7, 0
  br i1 %tobool6, label %land.end12, label %land.rhs

land.rhs:                                         ; preds = %if.end5
  %8 = load i32* %nodeid, align 4, !tbaa !0
  %cmp8 = icmp eq i32 %8, 0
  br i1 %cmp8, label %land.rhs9, label %land.end12

land.rhs9:                                        ; preds = %land.rhs
  %threadid10 = getelementptr inbounds %struct.t_commrec* %call, i64 0, i32 4
  %9 = load i32* %threadid10, align 4, !tbaa !0
  %cmp11 = icmp eq i32 %9, 0
  br label %land.end12

land.end12:                                       ; preds = %if.end5, %land.rhs, %land.rhs9
  %10 = phi i1 [ false, %if.end5 ], [ false, %land.rhs ], [ %cmp11, %land.rhs9 ]
  %land.ext = zext i1 %10 to i32
  store i32 %land.ext, i32* @main.bVerbose, align 4, !tbaa !0
  %11 = load i32* @main.nnodes, align 4, !tbaa !0
  %cmp13 = icmp sgt i32 %11, 1
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.end12
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([62 x i8]* @.str116, i64 0, i64 0)) #3
  %.pr = load i32* @main.bVerbose, align 4, !tbaa !0
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %land.end12
  %12 = phi i32 [ %.pr, %if.then14 ], [ %land.ext, %land.end12 ]
  %tobool16 = icmp eq i32 %12, 0
  br i1 %tobool16, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end15
  %call18 = call i8* @ftp2fn(i32 18, i32 22, %struct.t_filenm* getelementptr inbounds ([22 x %struct.t_filenm]* @main.fnm, i64 0, i64 0)) #3
  call void @open_log(i8* %call18, %struct.t_commrec* %call) #3
  br label %if.end19

if.end19:                                         ; preds = %if.end15, %if.then17
  %13 = load i32* @main.bMultiSim, align 4, !tbaa !0
  %tobool20 = icmp eq i32 %13, 0
  br i1 %tobool20, label %if.end26, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %if.end19
  %nnodes = getelementptr inbounds %struct.t_commrec* %call, i64 0, i32 1
  %14 = load i32* %nnodes, align 4, !tbaa !0
  %cmp22 = icmp sgt i32 %14, 1
  br i1 %cmp22, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true21
  %nthreads = getelementptr inbounds %struct.t_commrec* %call, i64 0, i32 5
  %15 = load i32* %nthreads, align 4, !tbaa !0
  %cmp23 = icmp sgt i32 %15, 1
  br i1 %cmp23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %lor.lhs.false, %land.lhs.true21
  %call25 = call %struct.t_commrec* @init_multisystem(%struct.t_commrec* %call, i32 22, %struct.t_filenm* getelementptr inbounds ([22 x %struct.t_filenm]* @main.fnm, i64 0, i64 0)) #3
  br label %if.end26

if.end26:                                         ; preds = %lor.lhs.false, %if.end19, %if.then24
  %mcr.0 = phi %struct.t_commrec* [ %call25, %if.then24 ], [ null, %if.end19 ], [ null, %lor.lhs.false ]
  %16 = load i32* %nodeid, align 4, !tbaa !0
  %cmp28 = icmp eq i32 %16, 0
  br i1 %cmp28, label %land.lhs.true29, label %if.end36

land.lhs.true29:                                  ; preds = %if.end26
  %threadid30 = getelementptr inbounds %struct.t_commrec* %call, i64 0, i32 4
  %17 = load i32* %threadid30, align 4, !tbaa !0
  %cmp31 = icmp eq i32 %17, 0
  %18 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %cmp33 = icmp ne %struct._IO_FILE* %18, null
  %or.cond = and i1 %cmp31, %cmp33
  br i1 %or.cond, label %if.then34, label %if.end36

if.then34:                                        ; preds = %land.lhs.true29
  %19 = load i8*** %argv.addr, align 8, !tbaa !3
  %20 = load i8** %19, align 8, !tbaa !3
  call void @CopyRight(%struct._IO_FILE* %18, i8* %20) #3
  %21 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  call void @please_cite(%struct._IO_FILE* %21, i8* getelementptr inbounds ([13 x i8]* @.str117, i64 0, i64 0)) #3
  %22 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  call void @please_cite(%struct._IO_FILE* %22, i8* getelementptr inbounds ([13 x i8]* @.str118, i64 0, i64 0)) #3
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %land.lhs.true29, %if.end26
  %call37 = call i32 @opt2bSet(i8* getelementptr inbounds ([4 x i8]* @.str77, i64 0, i64 0), i32 22, %struct.t_filenm* getelementptr inbounds ([22 x %struct.t_filenm]* @main.fnm, i64 0, i64 0)) #3
  %tobool38 = icmp eq i32 %call37, 0
  br i1 %tobool38, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.end36
  call void @ed_open(i32 22, %struct.t_filenm* getelementptr inbounds ([22 x %struct.t_filenm]* @main.fnm, i64 0, i64 0), %struct.t_edsamyn* %edyn) #3
  br label %if.end40

if.end40:                                         ; preds = %if.end36, %if.then39
  %call41 = call i32 @opt2bSet(i8* getelementptr inbounds ([7 x i8]* @.str75, i64 0, i64 0), i32 22, %struct.t_filenm* getelementptr inbounds ([22 x %struct.t_filenm]* @main.fnm, i64 0, i64 0)) #3
  %tobool42 = icmp ne i32 %call41, 0
  %conv = select i1 %tobool42, i64 16, i64 0
  %23 = load i32* @main.bSepDVDL, align 4, !tbaa !0
  %tobool43 = icmp ne i32 %23, 0
  %conv45 = select i1 %tobool43, i64 128, i64 0
  %or46 = or i64 %conv45, %conv
  %24 = load i32* @main.bIonize, align 4, !tbaa !0
  %tobool47 = icmp ne i32 %24, 0
  %conv49 = select i1 %tobool47, i64 8, i64 0
  %or50 = or i64 %or46, %conv49
  %25 = load i32* @main.bMultiSim, align 4, !tbaa !0
  %tobool51 = icmp ne i32 %25, 0
  %conv53 = zext i1 %tobool51 to i64
  %or54 = or i64 %or50, %conv53
  %26 = load i32* @main.bGlas, align 4, !tbaa !0
  %tobool55 = icmp ne i32 %26, 0
  %conv57 = select i1 %tobool55, i64 2, i64 0
  %or58 = or i64 %or54, %conv57
  %27 = load i32* @main.bVerbose, align 4, !tbaa !0
  %28 = load i32* @main.bCompact, align 4, !tbaa !0
  %29 = load i32* @main.nstepout, align 4, !tbaa !0
  call void @mdrunner(%struct.t_commrec* %call, %struct.t_commrec* %mcr.0, i32 22, %struct.t_filenm* getelementptr inbounds ([22 x %struct.t_filenm]* @main.fnm, i64 0, i64 0), i32 %27, i32 %28, i32 0, i32 %29, %struct.t_edsamyn* %edyn, i64 %or58) #3
  %30 = load i32* @gmx_parallel, align 4, !tbaa !0
  %tobool59 = icmp eq i32 %30, 0
  br i1 %tobool59, label %if.end61, label %if.then60

if.then60:                                        ; preds = %if.end40
  call void @gmx_finalize() #3
  br label %if.end61

if.end61:                                         ; preds = %if.end40, %if.then60
  %31 = load i32* %nodeid, align 4, !tbaa !0
  %cmp63 = icmp eq i32 %31, 0
  br i1 %cmp63, label %land.lhs.true65, label %if.end72

land.lhs.true65:                                  ; preds = %if.end61
  %threadid66 = getelementptr inbounds %struct.t_commrec* %call, i64 0, i32 4
  %32 = load i32* %threadid66, align 4, !tbaa !0
  %cmp67 = icmp eq i32 %32, 0
  %33 = load i32* @main.bVerbose, align 4, !tbaa !0
  %tobool70 = icmp ne i32 %33, 0
  %or.cond73 = and i1 %cmp67, %tobool70
  br i1 %or.cond73, label %if.then71, label %if.end72

if.then71:                                        ; preds = %land.lhs.true65
  %34 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  call void @thanx(%struct._IO_FILE* %34) #3
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %land.lhs.true65, %if.end61
  ret i32 0
}

; Function Attrs: optsize
declare %struct.t_commrec* @init_par(i32*, i8***) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #2

; Function Attrs: optsize
declare void @parse_common_args(i32*, i8**, i64, i32, %struct.t_filenm*, i32, %struct.t_pargs*, i32, i8**, i32, i8**) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: optsize
declare void @open_log(i8*, %struct.t_commrec*) #1

; Function Attrs: optsize
declare i8* @ftp2fn(i32, i32, %struct.t_filenm*) #1

; Function Attrs: optsize
declare %struct.t_commrec* @init_multisystem(%struct.t_commrec*, i32, %struct.t_filenm*) #1

; Function Attrs: optsize
declare void @CopyRight(%struct._IO_FILE*, i8*) #1

; Function Attrs: optsize
declare void @please_cite(%struct._IO_FILE*, i8*) #1

; Function Attrs: optsize
declare i32 @opt2bSet(i8*, i32, %struct.t_filenm*) #1

; Function Attrs: optsize
declare void @ed_open(i32, %struct.t_filenm*, %struct.t_edsamyn*) #1

; Function Attrs: optsize
declare void @mdrunner(%struct.t_commrec*, %struct.t_commrec*, i32, %struct.t_filenm*, i32, i32, i32, i32, %struct.t_edsamyn*, i64) #1

; Function Attrs: optsize
declare void @gmx_finalize() #1

; Function Attrs: optsize
declare void @thanx(%struct._IO_FILE*) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }
attributes #4 = { nounwind optsize readonly }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}

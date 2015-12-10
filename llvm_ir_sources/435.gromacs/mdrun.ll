; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/mdrun.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.t_filenm = type { i32, i8*, i8*, i64 }
%struct.t_pargs = type { i8*, i32, i32, %union.anon.2, i8* }
%union.anon.2 = type { i8* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%union.anon = type { float }
%union.anon.0 = type { double }
%union.anon.1 = type { x86_fp80 }
%struct.__float2 = type { float, float }
%struct.__double2 = type { double, double }
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
@main.pa = internal global [8 x %struct.t_pargs] [%struct.t_pargs { i8* getelementptr inbounds ([4 x i8]* @.str100, i32 0, i32 0), i32 0, i32 0, %union.anon.2 { i8* bitcast (i32* @main.nnodes to i8*) }, i8* getelementptr inbounds ([53 x i8]* @.str101, i32 0, i32 0) }, %struct.t_pargs { i8* getelementptr inbounds ([3 x i8]* @.str102, i32 0, i32 0), i32 0, i32 4, %union.anon.2 { i8* bitcast (i32* @main.bVerbose to i8*) }, i8* getelementptr inbounds ([18 x i8]* @.str103, i32 0, i32 0) }, %struct.t_pargs { i8* getelementptr inbounds ([9 x i8]* @.str104, i32 0, i32 0), i32 0, i32 4, %union.anon.2 { i8* bitcast (i32* @main.bCompact to i8*) }, i8* getelementptr inbounds ([25 x i8]* @.str105, i32 0, i32 0) }, %struct.t_pargs { i8* getelementptr inbounds ([7 x i8]* @.str106, i32 0, i32 0), i32 0, i32 4, %union.anon.2 { i8* bitcast (i32* @main.bMultiSim to i8*) }, i8* getelementptr inbounds ([56 x i8]* @.str107, i32 0, i32 0) }, %struct.t_pargs { i8* getelementptr inbounds ([6 x i8]* @.str108, i32 0, i32 0), i32 0, i32 4, %union.anon.2 { i8* bitcast (i32* @main.bGlas to i8*) }, i8* getelementptr inbounds ([56 x i8]* @.str109, i32 0, i32 0) }, %struct.t_pargs { i8* getelementptr inbounds ([8 x i8]* @.str110, i32 0, i32 0), i32 0, i32 4, %union.anon.2 { i8* bitcast (i32* @main.bIonize to i8*) }, i8* getelementptr inbounds ([76 x i8]* @.str111, i32 0, i32 0) }, %struct.t_pargs { i8* getelementptr inbounds ([9 x i8]* @.str112, i32 0, i32 0), i32 0, i32 4, %union.anon.2 { i8* bitcast (i32* @main.bSepDVDL to i8*) }, i8* getelementptr inbounds ([86 x i8]* @.str113, i32 0, i32 0) }, %struct.t_pargs { i8* getelementptr inbounds ([9 x i8]* @.str114, i32 0, i32 0), i32 0, i32 0, %union.anon.2 { i8* bitcast (i32* @main.nstepout to i8*) }, i8* getelementptr inbounds ([49 x i8]* @.str115, i32 0, i32 0) }], align 16
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
@stdlog = external global %struct.__sFILE*
@.str117 = private unnamed_addr constant [13 x i8] c"Lindahl2001a\00", align 1
@.str118 = private unnamed_addr constant [13 x i8] c"Berendsen95a\00", align 1
@gmx_parallel = external global i32
@__stderrp = external global %struct.__sFILE*

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !123, metadata !338), !dbg !339
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !124, metadata !338), !dbg !340
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !341
  %2 = load i32* %1, align 4, !dbg !343, !tbaa !344
  %3 = add nsw i32 %2, -1, !dbg !343
  store i32 %3, i32* %1, align 4, !dbg !343, !tbaa !344
  %4 = icmp sgt i32 %2, 0, !dbg !353
  br i1 %4, label %._crit_edge, label %5, !dbg !354

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !355
  br label %10, !dbg !354

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !356
  %7 = load i32* %6, align 4, !dbg !356, !tbaa !357
  %8 = icmp sle i32 %2, %7, !dbg !358
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !359
  %or.cond = or i1 %9, %8, !dbg !360
  br i1 %or.cond, label %15, label %10, !dbg !360

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !355
  %11 = trunc i32 %_c to i8, !dbg !361
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !362
  %13 = load i8** %12, align 8, !dbg !363, !tbaa !364
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !363
  store i8* %14, i8** %12, align 8, !dbg !363, !tbaa !364
  store i8 %11, i8* %13, align 1, !dbg !365, !tbaa !366
  br label %17, !dbg !367

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #6, !dbg !368
  br label %17, !dbg !369

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !370
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !130, metadata !338), !dbg !371
  %1 = icmp sgt i32 %__signo, 32, !dbg !372
  br i1 %1, label %5, label %2, !dbg !373

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !374
  %4 = shl i32 1, %3, !dbg !375
  br label %5, !dbg !373

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !373
  ret i32 %6, !dbg !376
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !137, metadata !338), !dbg !377
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !378
  br i1 %1, label %2, label %5, !dbg !379

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #7, !dbg !380
  %4 = fcmp une float %3, 0x7FF0000000000000, !dbg !381
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !379
  ret i32 %7, !dbg !382
}

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !143, metadata !338), !dbg !383
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !384
  br i1 %1, label %2, label %5, !dbg !385

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #7, !dbg !386
  %4 = fcmp une double %3, 0x7FF0000000000000, !dbg !387
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !385
  ret i32 %7, !dbg !388
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !149, metadata !338), !dbg !389
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !390
  br i1 %1, label %2, label %5, !dbg !391

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #7, !dbg !392
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000, !dbg !393
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !391
  ret i32 %7, !dbg !394
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !152, metadata !338), !dbg !395
  %1 = tail call float @llvm.fabs.f32(float %__x) #7, !dbg !396
  %2 = fcmp oeq float %1, 0x7FF0000000000000, !dbg !397
  %3 = zext i1 %2 to i32, !dbg !397
  ret i32 %3, !dbg !398
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !155, metadata !338), !dbg !399
  %1 = tail call double @llvm.fabs.f64(double %__x) #7, !dbg !400
  %2 = fcmp oeq double %1, 0x7FF0000000000000, !dbg !401
  %3 = zext i1 %2 to i32, !dbg !401
  ret i32 %3, !dbg !402
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !158, metadata !338), !dbg !403
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #7, !dbg !404
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000, !dbg !405
  %3 = zext i1 %2 to i32, !dbg !405
  ret i32 %3, !dbg !406
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !161, metadata !338), !dbg !407
  %1 = fcmp uno float %__x, 0.000000e+00, !dbg !408
  %2 = zext i1 %1 to i32, !dbg !408
  ret i32 %2, !dbg !409
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !164, metadata !338), !dbg !410
  %1 = fcmp uno double %__x, 0.000000e+00, !dbg !411
  %2 = zext i1 %1 to i32, !dbg !411
  ret i32 %2, !dbg !412
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !167, metadata !338), !dbg !413
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000, !dbg !414
  %2 = zext i1 %1 to i32, !dbg !414
  ret i32 %2, !dbg !415
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !170, metadata !338), !dbg !416
  tail call void @llvm.dbg.declare(metadata %union.anon* undef, metadata !171, metadata !338), !dbg !417
  %1 = bitcast float %__x to i32, !dbg !418
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !171, metadata !338), !dbg !417
  %2 = lshr i32 %1, 31, !dbg !419
  ret i32 %2, !dbg !420
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !179, metadata !338), !dbg !421
  tail call void @llvm.dbg.declare(metadata %union.anon.0* undef, metadata !180, metadata !338), !dbg !422
  %1 = bitcast double %__x to i64, !dbg !423
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !180, metadata !338), !dbg !422
  %2 = lshr i64 %1, 63, !dbg !424
  %3 = trunc i64 %2 to i32, !dbg !425
  ret i32 %3, !dbg !426
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !188, metadata !338), !dbg !427
  tail call void @llvm.dbg.declare(metadata %union.anon.1* undef, metadata !189, metadata !338), !dbg !428
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !189, metadata !338), !dbg !428
  %1 = bitcast x86_fp80 %__x to i80, !dbg !429
  %2 = lshr i80 %1, 79, !dbg !429
  %3 = trunc i80 %2 to i32, !dbg !430
  ret i32 %3, !dbg !431
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !201, metadata !338), !dbg !432
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !137, metadata !338) #8, !dbg !433
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !435
  %2 = tail call float @llvm.fabs.f32(float %__x) #1
  %3 = fcmp une float %2, 0x7FF0000000000000, !dbg !436
  %or.cond = and i1 %1, %3, !dbg !437
  br i1 %or.cond, label %4, label %.critedge, !dbg !437

; <label>:4                                       ; preds = %0
  %5 = fcmp oge float %2, 0x3810000000000000, !dbg !438
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !439
  ret i32 %7, !dbg !440
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormald(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !204, metadata !338), !dbg !441
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !143, metadata !338) #8, !dbg !442
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !444
  %2 = tail call double @llvm.fabs.f64(double %__x) #1
  %3 = fcmp une double %2, 0x7FF0000000000000, !dbg !445
  %or.cond = and i1 %1, %3, !dbg !446
  br i1 %or.cond, label %4, label %.critedge, !dbg !446

; <label>:4                                       ; preds = %0
  %5 = fcmp oge double %2, 0x10000000000000, !dbg !447
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !448
  ret i32 %7, !dbg !449
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormall(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !207, metadata !338), !dbg !450
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !149, metadata !338) #8, !dbg !451
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !453
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #1
  %3 = fcmp une x86_fp80 %2, 0xK7FFF8000000000000000, !dbg !454
  %or.cond = and i1 %1, %3, !dbg !455
  br i1 %or.cond, label %4, label %.critedge, !dbg !455

; <label>:4                                       ; preds = %0
  %5 = fcmp oge x86_fp80 %2, 0xK00018000000000000000, !dbg !456
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !457
  ret i32 %7, !dbg !458
}

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !213, metadata !338), !dbg !459
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !214, metadata !338), !dbg !460
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !215, metadata !338), !dbg !461
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !216, metadata !338), !dbg !462
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #6, !dbg !463
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !216, metadata !338), !dbg !462
  %2 = extractelement <2 x float> %1, i32 0, !dbg !464
  store float %2, float* %__sinp, align 4, !dbg !465, !tbaa !466
  %3 = extractelement <2 x float> %1, i32 1, !dbg !468
  store float %3, float* %__cosp, align 4, !dbg !469, !tbaa !466
  ret void, !dbg !470
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !227, metadata !338), !dbg !471
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !228, metadata !338), !dbg !472
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !229, metadata !338), !dbg !473
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !230, metadata !338), !dbg !474
  %1 = tail call { double, double } @__sincos_stret(double %__x) #6, !dbg !475
  %2 = extractvalue { double, double } %1, 0, !dbg !475
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !230, metadata !476), !dbg !474
  %3 = extractvalue { double, double } %1, 1, !dbg !475
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !230, metadata !477), !dbg !474
  store double %2, double* %__sinp, align 8, !dbg !478, !tbaa !479
  store double %3, double* %__cosp, align 8, !dbg !481, !tbaa !479
  ret void, !dbg !482
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !238, metadata !338), !dbg !483
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !239, metadata !338), !dbg !484
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !240, metadata !338), !dbg !485
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !241, metadata !338), !dbg !486
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #6, !dbg !487
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !241, metadata !338), !dbg !486
  %2 = extractelement <2 x float> %1, i32 0, !dbg !488
  store float %2, float* %__sinp, align 4, !dbg !489, !tbaa !466
  %3 = extractelement <2 x float> %1, i32 1, !dbg !490
  store float %3, float* %__cosp, align 4, !dbg !491, !tbaa !466
  ret void, !dbg !492
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !244, metadata !338), !dbg !493
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !245, metadata !338), !dbg !494
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !246, metadata !338), !dbg !495
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !247, metadata !338), !dbg !496
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #6, !dbg !497
  %2 = extractvalue { double, double } %1, 0, !dbg !497
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !247, metadata !476), !dbg !496
  %3 = extractvalue { double, double } %1, 1, !dbg !497
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !247, metadata !477), !dbg !496
  store double %2, double* %__sinp, align 8, !dbg !498, !tbaa !479
  store double %3, double* %__cosp, align 8, !dbg !499, !tbaa !479
  ret void, !dbg !500
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #4 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %edyn = alloca %struct.t_edsamyn, align 8
  tail call void @llvm.dbg.value(metadata i32 %argc, i64 0, metadata !253, metadata !338), !dbg !501
  store i32 %argc, i32* %1, align 4, !tbaa !502
  tail call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !254, metadata !338), !dbg !503
  store i8** %argv, i8*** %2, align 8, !tbaa !504
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !253, metadata !338), !dbg !501
  tail call void @llvm.dbg.value(metadata i8*** %2, i64 0, metadata !254, metadata !338), !dbg !503
  %3 = call %struct.t_commrec* @init_par(i32* %1, i8*** %2) #6, !dbg !505
  call void @llvm.dbg.value(metadata %struct.t_commrec* %3, i64 0, metadata !255, metadata !338), !dbg !506
  %4 = getelementptr inbounds %struct.t_edsamyn* %edyn, i64 0, i32 0, !dbg !507
  store i32 0, i32* %4, align 8, !dbg !508, !tbaa !509
  call void @llvm.dbg.value(metadata i64 4096, i64 0, metadata !278, metadata !338), !dbg !511
  %5 = getelementptr inbounds %struct.t_commrec* %3, i64 0, i32 0, !dbg !512
  %6 = load i32* %5, align 4, !dbg !512, !tbaa !514
  %7 = icmp eq i32 %6, 0, !dbg !512
  br i1 %7, label %8, label %.loopexit, !dbg !512

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %struct.t_commrec* %3, i64 0, i32 4, !dbg !512
  %10 = load i32* %9, align 4, !dbg !512, !tbaa !516
  %11 = icmp eq i32 %10, 0, !dbg !512
  br i1 %11, label %.preheader, label %.loopexit, !dbg !517

.preheader:                                       ; preds = %8
  call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !253, metadata !338), !dbg !501
  %12 = load i32* %1, align 4, !dbg !518, !tbaa !502
  %13 = icmp sgt i32 %12, 1, !dbg !522
  br i1 %13, label %.lr.ph, label %.loopexit, !dbg !523

.lr.ph:                                           ; preds = %.preheader
  %14 = load i8*** %2, align 8, !dbg !524, !tbaa !504
  %15 = sext i32 %12 to i64, !dbg !523
  br label %16, !dbg !523

; <label>:16                                      ; preds = %.lr.ph, %16
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %16 ]
  %pca_quiet.04 = phi i64 [ 4096, %.lr.ph ], [ %.pca_quiet.0, %16 ]
  call void @llvm.dbg.value(metadata i8*** %2, i64 0, metadata !254, metadata !338), !dbg !503
  %17 = getelementptr inbounds i8** %14, i64 %indvars.iv, !dbg !524
  %18 = load i8** %17, align 8, !dbg !524, !tbaa !504
  %19 = call i32 @strncmp(i8* getelementptr inbounds ([3 x i8]* @.str102, i64 0, i64 0), i8* %18, i64 2) #6, !dbg !527
  %20 = icmp eq i32 %19, 0, !dbg !527
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !278, metadata !338), !dbg !511
  %.pca_quiet.0 = select i1 %20, i64 0, i64 %pca_quiet.04, !dbg !528
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !523
  call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !253, metadata !338), !dbg !501
  %21 = icmp slt i64 %indvars.iv.next, %15, !dbg !522
  br i1 %21, label %16, label %.loopexit.loopexit, !dbg !523

.loopexit.loopexit:                               ; preds = %16
  %phitmp = or i64 %.pca_quiet.0, 11520
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %8, %0
  %pca_quiet.2 = phi i64 [ 15616, %8 ], [ 15616, %0 ], [ 15616, %.preheader ], [ %phitmp, %.loopexit.loopexit ]
  call void @llvm.dbg.value(metadata i8*** %2, i64 0, metadata !254, metadata !338), !dbg !503
  %22 = load i8*** %2, align 8, !dbg !529, !tbaa !504
  call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !253, metadata !338), !dbg !501
  call void @parse_common_args(i32* %1, i8** %22, i64 %pca_quiet.2, i32 22, %struct.t_filenm* getelementptr inbounds ([22 x %struct.t_filenm]* @main.fnm, i64 0, i64 0), i32 8, %struct.t_pargs* getelementptr inbounds ([8 x %struct.t_pargs]* @main.pa, i64 0, i64 0), i32 63, i8** getelementptr inbounds ([63 x i8*]* @main.desc, i64 0, i64 0), i32 0, i8** null) #6, !dbg !530
  %23 = load i32* @main.bVerbose, align 4, !dbg !531, !tbaa !502
  %24 = icmp eq i32 %23, 0, !dbg !531
  br i1 %24, label %32, label %25, !dbg !532

; <label>:25                                      ; preds = %.loopexit
  %26 = load i32* %5, align 4, !dbg !533, !tbaa !514
  %27 = icmp eq i32 %26, 0, !dbg !533
  br i1 %27, label %28, label %32, !dbg !533

; <label>:28                                      ; preds = %25
  %29 = getelementptr inbounds %struct.t_commrec* %3, i64 0, i32 4, !dbg !533
  %30 = load i32* %29, align 4, !dbg !533, !tbaa !516
  %31 = icmp eq i32 %30, 0, !dbg !533
  br label %32

; <label>:32                                      ; preds = %.loopexit, %25, %28
  %33 = phi i1 [ false, %.loopexit ], [ false, %25 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32, !dbg !532
  store i32 %34, i32* @main.bVerbose, align 4, !dbg !534, !tbaa !502
  %35 = load i32* @main.nnodes, align 4, !dbg !535, !tbaa !502
  %36 = icmp sgt i32 %35, 1, !dbg !537
  br i1 %36, label %37, label %38, !dbg !538

; <label>:37                                      ; preds = %32
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([62 x i8]* @.str116, i64 0, i64 0)) #6, !dbg !539
  %.pr = load i32* @main.bVerbose, align 4, !dbg !540, !tbaa !502
  br label %38, !dbg !539

; <label>:38                                      ; preds = %37, %32
  %39 = phi i32 [ %.pr, %37 ], [ %34, %32 ], !dbg !540
  %40 = icmp eq i32 %39, 0, !dbg !540
  br i1 %40, label %43, label %41, !dbg !542

; <label>:41                                      ; preds = %38
  %42 = call i8* @ftp2fn(i32 18, i32 22, %struct.t_filenm* getelementptr inbounds ([22 x %struct.t_filenm]* @main.fnm, i64 0, i64 0)) #6, !dbg !543
  call void @open_log(i8* %42, %struct.t_commrec* %3) #6, !dbg !544
  br label %43, !dbg !544

; <label>:43                                      ; preds = %38, %41
  %44 = load i32* @main.bMultiSim, align 4, !dbg !545, !tbaa !502
  %45 = icmp eq i32 %44, 0, !dbg !545
  br i1 %45, label %56, label %46, !dbg !547

; <label>:46                                      ; preds = %43
  %47 = getelementptr inbounds %struct.t_commrec* %3, i64 0, i32 1, !dbg !548
  %48 = load i32* %47, align 4, !dbg !548, !tbaa !549
  %49 = icmp sgt i32 %48, 1, !dbg !548
  br i1 %49, label %54, label %50, !dbg !548

; <label>:50                                      ; preds = %46
  %51 = getelementptr inbounds %struct.t_commrec* %3, i64 0, i32 5, !dbg !548
  %52 = load i32* %51, align 4, !dbg !548, !tbaa !550
  %53 = icmp sgt i32 %52, 1, !dbg !548
  br i1 %53, label %54, label %56, !dbg !551

; <label>:54                                      ; preds = %50, %46
  %55 = call %struct.t_commrec* @init_multisystem(%struct.t_commrec* %3, i32 22, %struct.t_filenm* getelementptr inbounds ([22 x %struct.t_filenm]* @main.fnm, i64 0, i64 0)) #6, !dbg !552
  call void @llvm.dbg.value(metadata %struct.t_commrec* %55, i64 0, metadata !267, metadata !338), !dbg !553
  br label %56, !dbg !554

; <label>:56                                      ; preds = %50, %43, %54
  %mcr.0 = phi %struct.t_commrec* [ %55, %54 ], [ null, %43 ], [ null, %50 ]
  %57 = load i32* %5, align 4, !dbg !555, !tbaa !514
  %58 = icmp eq i32 %57, 0, !dbg !555
  br i1 %58, label %59, label %70, !dbg !555

; <label>:59                                      ; preds = %56
  %60 = getelementptr inbounds %struct.t_commrec* %3, i64 0, i32 4, !dbg !555
  %61 = load i32* %60, align 4, !dbg !555, !tbaa !516
  %62 = icmp eq i32 %61, 0, !dbg !555
  %63 = load %struct.__sFILE** @stdlog, align 8
  %64 = icmp ne %struct.__sFILE* %63, null, !dbg !557
  %or.cond = and i1 %62, %64, !dbg !558
  br i1 %or.cond, label %65, label %70, !dbg !558

; <label>:65                                      ; preds = %59
  call void @llvm.dbg.value(metadata i8*** %2, i64 0, metadata !254, metadata !338), !dbg !503
  %66 = load i8*** %2, align 8, !dbg !559, !tbaa !504
  %67 = load i8** %66, align 8, !dbg !559, !tbaa !504
  call void @CopyRight(%struct.__sFILE* %63, i8* %67) #6, !dbg !561
  %68 = load %struct.__sFILE** @stdlog, align 8, !dbg !562, !tbaa !504
  call void @please_cite(%struct.__sFILE* %68, i8* getelementptr inbounds ([13 x i8]* @.str117, i64 0, i64 0)) #6, !dbg !563
  %69 = load %struct.__sFILE** @stdlog, align 8, !dbg !564, !tbaa !504
  call void @please_cite(%struct.__sFILE* %69, i8* getelementptr inbounds ([13 x i8]* @.str118, i64 0, i64 0)) #6, !dbg !565
  br label %70, !dbg !566

; <label>:70                                      ; preds = %65, %59, %56
  %71 = call i32 @opt2bSet(i8* getelementptr inbounds ([4 x i8]* @.str77, i64 0, i64 0), i32 22, %struct.t_filenm* getelementptr inbounds ([22 x %struct.t_filenm]* @main.fnm, i64 0, i64 0)) #6, !dbg !567
  %72 = icmp eq i32 %71, 0, !dbg !567
  br i1 %72, label %74, label %73, !dbg !569

; <label>:73                                      ; preds = %70
  call void @llvm.dbg.value(metadata %struct.t_edsamyn* %edyn, i64 0, metadata !268, metadata !338), !dbg !570
  call void @ed_open(i32 22, %struct.t_filenm* getelementptr inbounds ([22 x %struct.t_filenm]* @main.fnm, i64 0, i64 0), %struct.t_edsamyn* %edyn) #6, !dbg !571
  br label %74, !dbg !571

; <label>:74                                      ; preds = %70, %73
  %75 = call i32 @opt2bSet(i8* getelementptr inbounds ([7 x i8]* @.str75, i64 0, i64 0), i32 22, %struct.t_filenm* getelementptr inbounds ([22 x %struct.t_filenm]* @main.fnm, i64 0, i64 0)) #6, !dbg !572
  %76 = icmp ne i32 %75, 0, !dbg !572
  %77 = select i1 %76, i64 16, i64 0, !dbg !572
  call void @llvm.dbg.value(metadata i64 %77, i64 0, metadata !276, metadata !338), !dbg !573
  %78 = load i32* @main.bSepDVDL, align 4, !dbg !574, !tbaa !502
  %79 = icmp ne i32 %78, 0, !dbg !574
  %80 = select i1 %79, i64 128, i64 0, !dbg !575
  %81 = or i64 %80, %77, !dbg !576
  call void @llvm.dbg.value(metadata i64 %81, i64 0, metadata !276, metadata !338), !dbg !573
  %82 = load i32* @main.bIonize, align 4, !dbg !577, !tbaa !502
  %83 = icmp ne i32 %82, 0, !dbg !577
  %84 = select i1 %83, i64 8, i64 0, !dbg !578
  %85 = or i64 %81, %84, !dbg !579
  %86 = load i32* @main.bMultiSim, align 4, !dbg !580, !tbaa !502
  %87 = icmp ne i32 %86, 0, !dbg !580
  %88 = zext i1 %87 to i64, !dbg !581
  %89 = or i64 %85, %88, !dbg !582
  %90 = load i32* @main.bGlas, align 4, !dbg !583, !tbaa !502
  %91 = icmp ne i32 %90, 0, !dbg !583
  %92 = select i1 %91, i64 2, i64 0, !dbg !584
  %93 = or i64 %89, %92, !dbg !585
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !276, metadata !338), !dbg !573
  %94 = load i32* @main.bVerbose, align 4, !dbg !586, !tbaa !502
  %95 = load i32* @main.bCompact, align 4, !dbg !587, !tbaa !502
  %96 = load i32* @main.nstepout, align 4, !dbg !588, !tbaa !502
  call void @llvm.dbg.value(metadata %struct.t_edsamyn* %edyn, i64 0, metadata !268, metadata !338), !dbg !570
  call void @mdrunner(%struct.t_commrec* %3, %struct.t_commrec* %mcr.0, i32 22, %struct.t_filenm* getelementptr inbounds ([22 x %struct.t_filenm]* @main.fnm, i64 0, i64 0), i32 %94, i32 %95, i32 0, i32 %96, %struct.t_edsamyn* %edyn, i64 %93) #6, !dbg !589
  %97 = load i32* @gmx_parallel, align 4, !dbg !590, !tbaa !502
  %98 = icmp eq i32 %97, 0, !dbg !590
  br i1 %98, label %100, label %99, !dbg !592

; <label>:99                                      ; preds = %74
  call void @gmx_finalize() #6, !dbg !593
  br label %100, !dbg !593

; <label>:100                                     ; preds = %74, %99
  %101 = load i32* %5, align 4, !dbg !594, !tbaa !514
  %102 = icmp eq i32 %101, 0, !dbg !594
  br i1 %102, label %103, label %111, !dbg !594

; <label>:103                                     ; preds = %100
  %104 = getelementptr inbounds %struct.t_commrec* %3, i64 0, i32 4, !dbg !594
  %105 = load i32* %104, align 4, !dbg !594, !tbaa !516
  %106 = icmp eq i32 %105, 0, !dbg !594
  %107 = load i32* @main.bVerbose, align 4
  %108 = icmp ne i32 %107, 0, !dbg !596
  %or.cond3 = and i1 %106, %108, !dbg !597
  br i1 %or.cond3, label %109, label %111, !dbg !597

; <label>:109                                     ; preds = %103
  %110 = load %struct.__sFILE** @__stderrp, align 8, !dbg !598, !tbaa !504
  call void @thanx(%struct.__sFILE* %110) #6, !dbg !600
  br label %111, !dbg !601

; <label>:111                                     ; preds = %109, %103, %100
  ret i32 0, !dbg !602
}

; Function Attrs: optsize
declare %struct.t_commrec* @init_par(i32*, i8***) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #5

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
declare void @CopyRight(%struct.__sFILE*, i8*) #2

; Function Attrs: optsize
declare void @please_cite(%struct.__sFILE*, i8*) #2

; Function Attrs: optsize
declare i32 @opt2bSet(i8*, i32, %struct.t_filenm*) #2

; Function Attrs: optsize
declare void @ed_open(i32, %struct.t_filenm*, %struct.t_edsamyn*) #2

; Function Attrs: optsize
declare void @mdrunner(%struct.t_commrec*, %struct.t_commrec*, i32, %struct.t_filenm*, i32, i32, i32, i32, %struct.t_edsamyn*, i64) #2

; Function Attrs: optsize
declare void @gmx_finalize() #2

; Function Attrs: optsize
declare void @thanx(%struct.__sFILE*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { readnone }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!334, !335, !336}
!llvm.ident = !{!337}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !53, subprograms: !57, globals: !280, imports: !333)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/mdrun.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 37, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/filenm.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!6 = !DIEnumerator(name: "efMDP", value: 0)
!7 = !DIEnumerator(name: "efGCT", value: 1)
!8 = !DIEnumerator(name: "efTRX", value: 2)
!9 = !DIEnumerator(name: "efTRN", value: 3)
!10 = !DIEnumerator(name: "efTRR", value: 4)
!11 = !DIEnumerator(name: "efTRJ", value: 5)
!12 = !DIEnumerator(name: "efXTC", value: 6)
!13 = !DIEnumerator(name: "efG87", value: 7)
!14 = !DIEnumerator(name: "efENX", value: 8)
!15 = !DIEnumerator(name: "efEDR", value: 9)
!16 = !DIEnumerator(name: "efENE", value: 10)
!17 = !DIEnumerator(name: "efSTX", value: 11)
!18 = !DIEnumerator(name: "efSTO", value: 12)
!19 = !DIEnumerator(name: "efGRO", value: 13)
!20 = !DIEnumerator(name: "efG96", value: 14)
!21 = !DIEnumerator(name: "efPDB", value: 15)
!22 = !DIEnumerator(name: "efBRK", value: 16)
!23 = !DIEnumerator(name: "efENT", value: 17)
!24 = !DIEnumerator(name: "efLOG", value: 18)
!25 = !DIEnumerator(name: "efXVG", value: 19)
!26 = !DIEnumerator(name: "efOUT", value: 20)
!27 = !DIEnumerator(name: "efNDX", value: 21)
!28 = !DIEnumerator(name: "efTOP", value: 22)
!29 = !DIEnumerator(name: "efITP", value: 23)
!30 = !DIEnumerator(name: "efTPX", value: 24)
!31 = !DIEnumerator(name: "efTPS", value: 25)
!32 = !DIEnumerator(name: "efTPR", value: 26)
!33 = !DIEnumerator(name: "efTPA", value: 27)
!34 = !DIEnumerator(name: "efTPB", value: 28)
!35 = !DIEnumerator(name: "efTEX", value: 29)
!36 = !DIEnumerator(name: "efRTP", value: 30)
!37 = !DIEnumerator(name: "efATP", value: 31)
!38 = !DIEnumerator(name: "efHDB", value: 32)
!39 = !DIEnumerator(name: "efDAT", value: 33)
!40 = !DIEnumerator(name: "efDLG", value: 34)
!41 = !DIEnumerator(name: "efMAP", value: 35)
!42 = !DIEnumerator(name: "efEPS", value: 36)
!43 = !DIEnumerator(name: "efMAT", value: 37)
!44 = !DIEnumerator(name: "efM2P", value: 38)
!45 = !DIEnumerator(name: "efMTX", value: 39)
!46 = !DIEnumerator(name: "efEDI", value: 40)
!47 = !DIEnumerator(name: "efEDO", value: 41)
!48 = !DIEnumerator(name: "efPPA", value: 42)
!49 = !DIEnumerator(name: "efPDO", value: 43)
!50 = !DIEnumerator(name: "efHAT", value: 44)
!51 = !DIEnumerator(name: "efXPM", value: 45)
!52 = !DIEnumerator(name: "efNR", value: 46)
!53 = !{!54, !55, !56}
!54 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!55 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!57 = !{!58, !125, !131, !138, !144, !150, !153, !156, !159, !162, !165, !168, !177, !186, !199, !202, !205, !208, !222, !236, !242, !248}
!58 = !DISubprogram(name: "__sputc", scope: !59, file: !59, line: 348, type: !60, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !122)
!59 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!60 = !DISubroutineType(types: !61)
!61 = !{!55, !55, !62}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !59, line: 153, baseType: !64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !59, line: 122, size: 1216, align: 64, elements: !65)
!65 = !{!66, !69, !70, !71, !73, !74, !79, !80, !81, !85, !90, !100, !106, !107, !110, !111, !115, !119, !120, !121}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !64, file: !59, line: 123, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !64, file: !59, line: 124, baseType: !55, size: 32, align: 32, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !64, file: !59, line: 125, baseType: !55, size: 32, align: 32, offset: 96)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !64, file: !59, line: 126, baseType: !72, size: 16, align: 16, offset: 128)
!72 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !64, file: !59, line: 127, baseType: !72, size: 16, align: 16, offset: 144)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !64, file: !59, line: 128, baseType: !75, size: 128, align: 64, offset: 192)
!75 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !59, line: 88, size: 128, align: 64, elements: !76)
!76 = !{!77, !78}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !75, file: !59, line: 89, baseType: !67, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !75, file: !59, line: 90, baseType: !55, size: 32, align: 32, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !64, file: !59, line: 129, baseType: !55, size: 32, align: 32, offset: 320)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !64, file: !59, line: 132, baseType: !56, size: 64, align: 64, offset: 384)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !64, file: !59, line: 133, baseType: !82, size: 64, align: 64, offset: 448)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{!55, !56}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !64, file: !59, line: 134, baseType: !86, size: 64, align: 64, offset: 512)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{!55, !56, !89, !55}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !64, file: !59, line: 135, baseType: !91, size: 64, align: 64, offset: 576)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{!94, !56, !94, !55}
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !59, line: 77, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !96, line: 71, baseType: !97)
!96 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !98, line: 46, baseType: !99)
!98 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!99 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !64, file: !59, line: 136, baseType: !101, size: 64, align: 64, offset: 640)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{!55, !56, !104, !55}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !64, file: !59, line: 139, baseType: !75, size: 128, align: 64, offset: 704)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !64, file: !59, line: 140, baseType: !108, size: 64, align: 64, offset: 832)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !59, line: 94, flags: DIFlagFwdDecl)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !64, file: !59, line: 141, baseType: !55, size: 32, align: 32, offset: 896)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !64, file: !59, line: 144, baseType: !112, size: 24, align: 8, offset: 928)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 24, align: 8, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 3)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !64, file: !59, line: 145, baseType: !116, size: 8, align: 8, offset: 952)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 8, align: 8, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 1)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !64, file: !59, line: 148, baseType: !75, size: 128, align: 64, offset: 960)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !64, file: !59, line: 151, baseType: !55, size: 32, align: 32, offset: 1088)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !64, file: !59, line: 152, baseType: !94, size: 64, align: 64, offset: 1152)
!122 = !{!123, !124}
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !58, file: !59, line: 348, type: !55)
!124 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !58, file: !59, line: 348, type: !62)
!125 = !DISubprogram(name: "__sigbits", scope: !126, file: !126, line: 114, type: !127, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !129)
!126 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!127 = !DISubroutineType(types: !128)
!128 = !{!55, !55}
!129 = !{!130}
!130 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !125, file: !126, line: 114, type: !55)
!131 = !DISubprogram(name: "__inline_isfinitef", scope: !132, file: !132, line: 204, type: !133, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isfinitef, variables: !136)
!132 = !DIFile(filename: "/usr/include/math.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!133 = !DISubroutineType(types: !134)
!134 = !{!55, !135}
!135 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!136 = !{!137}
!137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !131, file: !132, line: 204, type: !135)
!138 = !DISubprogram(name: "__inline_isfinited", scope: !132, file: !132, line: 207, type: !139, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isfinited, variables: !142)
!139 = !DISubroutineType(types: !140)
!140 = !{!55, !141}
!141 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!142 = !{!143}
!143 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !138, file: !132, line: 207, type: !141)
!144 = !DISubprogram(name: "__inline_isfinitel", scope: !132, file: !132, line: 210, type: !145, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isfinitel, variables: !148)
!145 = !DISubroutineType(types: !146)
!146 = !{!55, !147}
!147 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!148 = !{!149}
!149 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !144, file: !132, line: 210, type: !147)
!150 = !DISubprogram(name: "__inline_isinff", scope: !132, file: !132, line: 213, type: !133, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isinff, variables: !151)
!151 = !{!152}
!152 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !150, file: !132, line: 213, type: !135)
!153 = !DISubprogram(name: "__inline_isinfd", scope: !132, file: !132, line: 216, type: !139, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isinfd, variables: !154)
!154 = !{!155}
!155 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !153, file: !132, line: 216, type: !141)
!156 = !DISubprogram(name: "__inline_isinfl", scope: !132, file: !132, line: 219, type: !145, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isinfl, variables: !157)
!157 = !{!158}
!158 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !156, file: !132, line: 219, type: !147)
!159 = !DISubprogram(name: "__inline_isnanf", scope: !132, file: !132, line: 222, type: !133, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnanf, variables: !160)
!160 = !{!161}
!161 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !159, file: !132, line: 222, type: !135)
!162 = !DISubprogram(name: "__inline_isnand", scope: !132, file: !132, line: 225, type: !139, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnand, variables: !163)
!163 = !{!164}
!164 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !162, file: !132, line: 225, type: !141)
!165 = !DISubprogram(name: "__inline_isnanl", scope: !132, file: !132, line: 228, type: !145, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnanl, variables: !166)
!166 = !{!167}
!167 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !165, file: !132, line: 228, type: !147)
!168 = !DISubprogram(name: "__inline_signbitf", scope: !132, file: !132, line: 231, type: !133, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_signbitf, variables: !169)
!169 = !{!170, !171}
!170 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !168, file: !132, line: 231, type: !135)
!171 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !168, file: !132, line: 232, type: !172)
!172 = !DICompositeType(tag: DW_TAG_union_type, scope: !168, file: !132, line: 232, size: 32, align: 32, elements: !173)
!173 = !{!174, !175}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !172, file: !132, line: 232, baseType: !135, size: 32, align: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !172, file: !132, line: 232, baseType: !176, size: 32, align: 32)
!176 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!177 = !DISubprogram(name: "__inline_signbitd", scope: !132, file: !132, line: 236, type: !139, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_signbitd, variables: !178)
!178 = !{!179, !180}
!179 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !177, file: !132, line: 236, type: !141)
!180 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !177, file: !132, line: 237, type: !181)
!181 = !DICompositeType(tag: DW_TAG_union_type, scope: !177, file: !132, line: 237, size: 64, align: 64, elements: !182)
!182 = !{!183, !184}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !181, file: !132, line: 237, baseType: !141, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !181, file: !132, line: 237, baseType: !185, size: 64, align: 64)
!185 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!186 = !DISubprogram(name: "__inline_signbitl", scope: !132, file: !132, line: 242, type: !145, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_signbitl, variables: !187)
!187 = !{!188, !189}
!188 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !186, file: !132, line: 242, type: !147)
!189 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !186, file: !132, line: 246, type: !190)
!190 = !DICompositeType(tag: DW_TAG_union_type, scope: !186, file: !132, line: 243, size: 128, align: 128, elements: !191)
!191 = !{!192, !193}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "__ld", scope: !190, file: !132, line: 244, baseType: !147, size: 128, align: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "__p", scope: !190, file: !132, line: 245, baseType: !194, size: 128, align: 64)
!194 = !DICompositeType(tag: DW_TAG_structure_type, scope: !190, file: !132, line: 245, size: 128, align: 64, elements: !195)
!195 = !{!196, !197}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "__m", scope: !194, file: !132, line: 245, baseType: !185, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "__sexp", scope: !194, file: !132, line: 245, baseType: !198, size: 16, align: 16, offset: 64)
!198 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!199 = !DISubprogram(name: "__inline_isnormalf", scope: !132, file: !132, line: 257, type: !133, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnormalf, variables: !200)
!200 = !{!201}
!201 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !199, file: !132, line: 257, type: !135)
!202 = !DISubprogram(name: "__inline_isnormald", scope: !132, file: !132, line: 260, type: !139, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnormald, variables: !203)
!203 = !{!204}
!204 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !202, file: !132, line: 260, type: !141)
!205 = !DISubprogram(name: "__inline_isnormall", scope: !132, file: !132, line: 263, type: !145, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnormall, variables: !206)
!206 = !{!207}
!207 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !205, file: !132, line: 263, type: !147)
!208 = !DISubprogram(name: "__sincosf", scope: !132, file: !132, line: 642, type: !209, isLocal: false, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincosf, variables: !212)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !135, !211, !211}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!212 = !{!213, !214, !215, !216}
!213 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !208, file: !132, line: 642, type: !135)
!214 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !208, file: !132, line: 642, type: !211)
!215 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !208, file: !132, line: 642, type: !211)
!216 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !208, file: !132, line: 643, type: !217)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!218 = !DICompositeType(tag: DW_TAG_structure_type, name: "__float2", file: !132, line: 634, size: 64, align: 32, elements: !219)
!219 = !{!220, !221}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !218, file: !132, line: 634, baseType: !135, size: 32, align: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !218, file: !132, line: 634, baseType: !135, size: 32, align: 32, offset: 32)
!222 = !DISubprogram(name: "__sincos", scope: !132, file: !132, line: 647, type: !223, isLocal: false, isDefinition: true, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincos, variables: !226)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !141, !225, !225}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!226 = !{!227, !228, !229, !230}
!227 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !222, file: !132, line: 647, type: !141)
!228 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !222, file: !132, line: 647, type: !225)
!229 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !222, file: !132, line: 647, type: !225)
!230 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !222, file: !132, line: 648, type: !231)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!232 = !DICompositeType(tag: DW_TAG_structure_type, name: "__double2", file: !132, line: 635, size: 128, align: 64, elements: !233)
!233 = !{!234, !235}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !232, file: !132, line: 635, baseType: !141, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !232, file: !132, line: 635, baseType: !141, size: 64, align: 64, offset: 64)
!236 = !DISubprogram(name: "__sincospif", scope: !132, file: !132, line: 652, type: !209, isLocal: false, isDefinition: true, scopeLine: 652, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincospif, variables: !237)
!237 = !{!238, !239, !240, !241}
!238 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !236, file: !132, line: 652, type: !135)
!239 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !236, file: !132, line: 652, type: !211)
!240 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !236, file: !132, line: 652, type: !211)
!241 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !236, file: !132, line: 653, type: !217)
!242 = !DISubprogram(name: "__sincospi", scope: !132, file: !132, line: 657, type: !223, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincospi, variables: !243)
!243 = !{!244, !245, !246, !247}
!244 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !242, file: !132, line: 657, type: !141)
!245 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !242, file: !132, line: 657, type: !225)
!246 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !242, file: !132, line: 657, type: !225)
!247 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !242, file: !132, line: 658, type: !231)
!248 = !DISubprogram(name: "main", scope: !1, file: !1, line: 48, type: !249, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8**)* @main, variables: !252)
!249 = !DISubroutineType(types: !250)
!250 = !{!55, !55, !251}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!252 = !{!253, !254, !255, !267, !268, !276, !278, !279}
!253 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !248, file: !1, line: 48, type: !55)
!254 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !248, file: !1, line: 48, type: !251)
!255 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cr", scope: !248, file: !1, line: 116, type: !256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_commrec", file: !258, line: 40, baseType: !259)
!258 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/commrec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!259 = !DICompositeType(tag: DW_TAG_structure_type, file: !258, line: 36, size: 192, align: 32, elements: !260)
!260 = !{!261, !262, !263, !264, !265, !266}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "nodeid", scope: !259, file: !258, line: 37, baseType: !55, size: 32, align: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "nnodes", scope: !259, file: !258, line: 37, baseType: !55, size: 32, align: 32, offset: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !259, file: !258, line: 38, baseType: !55, size: 32, align: 32, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !259, file: !258, line: 38, baseType: !55, size: 32, align: 32, offset: 96)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "threadid", scope: !259, file: !258, line: 39, baseType: !55, size: 32, align: 32, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "nthreads", scope: !259, file: !258, line: 39, baseType: !55, size: 32, align: 32, offset: 160)
!267 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mcr", scope: !248, file: !1, line: 116, type: !256)
!268 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "edyn", scope: !248, file: !1, line: 172, type: !269)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_edsamyn", file: !270, line: 40, baseType: !271)
!270 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/edsams.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!271 = !DICompositeType(tag: DW_TAG_structure_type, file: !270, line: 36, size: 192, align: 64, elements: !272)
!272 = !{!273, !274, !275}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "bEdsam", scope: !271, file: !270, line: 37, baseType: !55, size: 32, align: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "edinam", scope: !271, file: !270, line: 38, baseType: !89, size: 64, align: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "edonam", scope: !271, file: !270, line: 39, baseType: !89, size: 64, align: 64, offset: 128)
!276 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Flags", scope: !248, file: !1, line: 173, type: !277)
!277 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!278 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pca_quiet", scope: !248, file: !1, line: 174, type: !277)
!279 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !248, file: !1, line: 175, type: !55)
!280 = !{!281, !285, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305}
!281 = !DIGlobalVariable(name: "desc", scope: !248, file: !1, line: 50, type: !282, isLocal: true, isDefinition: true, variable: [63 x i8*]* @main.desc)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 4032, align: 64, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 63)
!285 = !DIGlobalVariable(name: "fnm", scope: !248, file: !1, line: 117, type: !286, isLocal: true, isDefinition: true, variable: [22 x %struct.t_filenm]* @main.fnm)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 5632, align: 64, elements: !294)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_filenm", file: !4, line: 62, baseType: !288)
!288 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 57, size: 256, align: 64, elements: !289)
!289 = !{!290, !291, !292, !293}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ftp", scope: !288, file: !4, line: 58, baseType: !55, size: 32, align: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !288, file: !4, line: 59, baseType: !89, size: 64, align: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !288, file: !4, line: 60, baseType: !89, size: 64, align: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !288, file: !4, line: 61, baseType: !277, size: 64, align: 64, offset: 192)
!294 = !{!295}
!295 = !DISubrange(count: 22)
!296 = !DIGlobalVariable(name: "bVerbose", scope: !248, file: !1, line: 144, type: !55, isLocal: true, isDefinition: true, variable: i32* @main.bVerbose)
!297 = !DIGlobalVariable(name: "bCompact", scope: !248, file: !1, line: 145, type: !55, isLocal: true, isDefinition: true, variable: i32* @main.bCompact)
!298 = !DIGlobalVariable(name: "bSepDVDL", scope: !248, file: !1, line: 146, type: !55, isLocal: true, isDefinition: true, variable: i32* @main.bSepDVDL)
!299 = !DIGlobalVariable(name: "bMultiSim", scope: !248, file: !1, line: 147, type: !55, isLocal: true, isDefinition: true, variable: i32* @main.bMultiSim)
!300 = !DIGlobalVariable(name: "bGlas", scope: !248, file: !1, line: 148, type: !55, isLocal: true, isDefinition: true, variable: i32* @main.bGlas)
!301 = !DIGlobalVariable(name: "bIonize", scope: !248, file: !1, line: 149, type: !55, isLocal: true, isDefinition: true, variable: i32* @main.bIonize)
!302 = !DIGlobalVariable(name: "nDLB", scope: !248, file: !1, line: 151, type: !55, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariable(name: "nnodes", scope: !248, file: !1, line: 152, type: !55, isLocal: true, isDefinition: true, variable: i32* @main.nnodes)
!304 = !DIGlobalVariable(name: "nstepout", scope: !248, file: !1, line: 153, type: !55, isLocal: true, isDefinition: true, variable: i32* @main.nstepout)
!305 = !DIGlobalVariable(name: "pa", scope: !248, file: !1, line: 154, type: !306, isLocal: true, isDefinition: true, variable: [8 x %struct.t_pargs]* @main.pa)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 2048, align: 64, elements: !331)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_pargs", file: !308, line: 105, baseType: !309)
!308 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/readinp.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!309 = !DICompositeType(tag: DW_TAG_structure_type, file: !308, line: 91, size: 256, align: 64, elements: !310)
!310 = !{!311, !312, !313, !314, !330}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "option", scope: !309, file: !308, line: 92, baseType: !89, size: 64, align: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "bSet", scope: !309, file: !308, line: 93, baseType: !55, size: 32, align: 32, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !309, file: !308, line: 94, baseType: !55, size: 32, align: 32, offset: 96)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !309, file: !308, line: 103, baseType: !315, size: 64, align: 64, offset: 128)
!315 = !DICompositeType(tag: DW_TAG_union_type, scope: !309, file: !308, line: 95, size: 64, align: 64, elements: !316)
!316 = !{!317, !318, !320, !324, !325, !326}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !315, file: !308, line: 96, baseType: !56, size: 64, align: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !315, file: !308, line: 97, baseType: !319, size: 64, align: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !315, file: !308, line: 98, baseType: !321, size: 64, align: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64, align: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !323, line: 87, baseType: !135)
!323 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!324 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !315, file: !308, line: 99, baseType: !251, size: 64, align: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !315, file: !308, line: 101, baseType: !319, size: 64, align: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !315, file: !308, line: 102, baseType: !327, size: 64, align: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !323, line: 101, baseType: !329)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 96, align: 32, elements: !113)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !309, file: !308, line: 104, baseType: !89, size: 64, align: 64, offset: 192)
!331 = !{!332}
!332 = !DISubrange(count: 8)
!333 = !{}
!334 = !{i32 2, !"Dwarf Version", i32 2}
!335 = !{i32 2, !"Debug Info Version", i32 700000003}
!336 = !{i32 1, !"PIC Level", i32 2}
!337 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!338 = !DIExpression()
!339 = !DILocation(line: 348, column: 40, scope: !58)
!340 = !DILocation(line: 348, column: 50, scope: !58)
!341 = !DILocation(line: 349, column: 12, scope: !342)
!342 = distinct !DILexicalBlock(scope: !58, file: !59, line: 349, column: 6)
!343 = !DILocation(line: 349, column: 6, scope: !342)
!344 = !{!345, !349, i64 12}
!345 = !{!"__sFILE", !346, i64 0, !349, i64 8, !349, i64 12, !350, i64 16, !350, i64 18, !351, i64 24, !349, i64 40, !346, i64 48, !346, i64 56, !346, i64 64, !346, i64 72, !346, i64 80, !351, i64 88, !346, i64 104, !349, i64 112, !347, i64 116, !347, i64 119, !351, i64 120, !349, i64 136, !352, i64 144}
!346 = !{!"any pointer", !347, i64 0}
!347 = !{!"omnipotent char", !348, i64 0}
!348 = !{!"Simple C/C++ TBAA"}
!349 = !{!"int", !347, i64 0}
!350 = !{!"short", !347, i64 0}
!351 = !{!"__sbuf", !346, i64 0, !349, i64 8}
!352 = !{!"long long", !347, i64 0}
!353 = !DILocation(line: 349, column: 15, scope: !342)
!354 = !DILocation(line: 349, column: 20, scope: !342)
!355 = !DILocation(line: 350, column: 10, scope: !342)
!356 = !DILocation(line: 349, column: 38, scope: !342)
!357 = !{!345, !349, i64 40}
!358 = !DILocation(line: 349, column: 31, scope: !342)
!359 = !DILocation(line: 349, column: 59, scope: !342)
!360 = !DILocation(line: 349, column: 47, scope: !342)
!361 = !DILocation(line: 350, column: 23, scope: !342)
!362 = !DILocation(line: 350, column: 16, scope: !342)
!363 = !DILocation(line: 350, column: 18, scope: !342)
!364 = !{!345, !346, i64 0}
!365 = !DILocation(line: 350, column: 21, scope: !342)
!366 = !{!347, !347, i64 0}
!367 = !DILocation(line: 350, column: 3, scope: !342)
!368 = !DILocation(line: 352, column: 11, scope: !342)
!369 = !DILocation(line: 352, column: 3, scope: !342)
!370 = !DILocation(line: 353, column: 1, scope: !58)
!371 = !DILocation(line: 114, column: 15, scope: !125)
!372 = !DILocation(line: 116, column: 20, scope: !125)
!373 = !DILocation(line: 116, column: 12, scope: !125)
!374 = !DILocation(line: 116, column: 57, scope: !125)
!375 = !DILocation(line: 116, column: 45, scope: !125)
!376 = !DILocation(line: 116, column: 5, scope: !125)
!377 = !DILocation(line: 204, column: 53, scope: !131)
!378 = !DILocation(line: 205, column: 16, scope: !131)
!379 = !DILocation(line: 205, column: 23, scope: !131)
!380 = !DILocation(line: 205, column: 26, scope: !131)
!381 = !DILocation(line: 205, column: 47, scope: !131)
!382 = !DILocation(line: 205, column: 5, scope: !131)
!383 = !DILocation(line: 207, column: 54, scope: !138)
!384 = !DILocation(line: 208, column: 16, scope: !138)
!385 = !DILocation(line: 208, column: 23, scope: !138)
!386 = !DILocation(line: 208, column: 26, scope: !138)
!387 = !DILocation(line: 208, column: 46, scope: !138)
!388 = !DILocation(line: 208, column: 5, scope: !138)
!389 = !DILocation(line: 210, column: 59, scope: !144)
!390 = !DILocation(line: 211, column: 16, scope: !144)
!391 = !DILocation(line: 211, column: 23, scope: !144)
!392 = !DILocation(line: 211, column: 26, scope: !144)
!393 = !DILocation(line: 211, column: 47, scope: !144)
!394 = !DILocation(line: 211, column: 5, scope: !144)
!395 = !DILocation(line: 213, column: 50, scope: !150)
!396 = !DILocation(line: 214, column: 12, scope: !150)
!397 = !DILocation(line: 214, column: 33, scope: !150)
!398 = !DILocation(line: 214, column: 5, scope: !150)
!399 = !DILocation(line: 216, column: 51, scope: !153)
!400 = !DILocation(line: 217, column: 12, scope: !153)
!401 = !DILocation(line: 217, column: 32, scope: !153)
!402 = !DILocation(line: 217, column: 5, scope: !153)
!403 = !DILocation(line: 219, column: 56, scope: !156)
!404 = !DILocation(line: 220, column: 12, scope: !156)
!405 = !DILocation(line: 220, column: 33, scope: !156)
!406 = !DILocation(line: 220, column: 5, scope: !156)
!407 = !DILocation(line: 222, column: 50, scope: !159)
!408 = !DILocation(line: 223, column: 16, scope: !159)
!409 = !DILocation(line: 223, column: 5, scope: !159)
!410 = !DILocation(line: 225, column: 51, scope: !162)
!411 = !DILocation(line: 226, column: 16, scope: !162)
!412 = !DILocation(line: 226, column: 5, scope: !162)
!413 = !DILocation(line: 228, column: 56, scope: !165)
!414 = !DILocation(line: 229, column: 16, scope: !165)
!415 = !DILocation(line: 229, column: 5, scope: !165)
!416 = !DILocation(line: 231, column: 52, scope: !168)
!417 = !DILocation(line: 232, column: 44, scope: !168)
!418 = !DILocation(line: 233, column: 13, scope: !168)
!419 = !DILocation(line: 234, column: 26, scope: !168)
!420 = !DILocation(line: 234, column: 5, scope: !168)
!421 = !DILocation(line: 236, column: 53, scope: !177)
!422 = !DILocation(line: 237, column: 51, scope: !177)
!423 = !DILocation(line: 238, column: 13, scope: !177)
!424 = !DILocation(line: 239, column: 26, scope: !177)
!425 = !DILocation(line: 239, column: 12, scope: !177)
!426 = !DILocation(line: 239, column: 5, scope: !177)
!427 = !DILocation(line: 242, column: 58, scope: !186)
!428 = !DILocation(line: 246, column: 7, scope: !186)
!429 = !DILocation(line: 248, column: 26, scope: !186)
!430 = !DILocation(line: 248, column: 33, scope: !186)
!431 = !DILocation(line: 248, column: 5, scope: !186)
!432 = !DILocation(line: 257, column: 53, scope: !199)
!433 = !DILocation(line: 204, column: 53, scope: !131, inlinedAt: !434)
!434 = distinct !DILocation(line: 258, column: 12, scope: !199)
!435 = !DILocation(line: 205, column: 16, scope: !131, inlinedAt: !434)
!436 = !DILocation(line: 205, column: 47, scope: !131, inlinedAt: !434)
!437 = !DILocation(line: 205, column: 23, scope: !131, inlinedAt: !434)
!438 = !DILocation(line: 258, column: 60, scope: !199)
!439 = !DILocation(line: 258, column: 36, scope: !199)
!440 = !DILocation(line: 258, column: 5, scope: !199)
!441 = !DILocation(line: 260, column: 54, scope: !202)
!442 = !DILocation(line: 207, column: 54, scope: !138, inlinedAt: !443)
!443 = distinct !DILocation(line: 261, column: 12, scope: !202)
!444 = !DILocation(line: 208, column: 16, scope: !138, inlinedAt: !443)
!445 = !DILocation(line: 208, column: 46, scope: !138, inlinedAt: !443)
!446 = !DILocation(line: 208, column: 23, scope: !138, inlinedAt: !443)
!447 = !DILocation(line: 261, column: 59, scope: !202)
!448 = !DILocation(line: 261, column: 36, scope: !202)
!449 = !DILocation(line: 261, column: 5, scope: !202)
!450 = !DILocation(line: 263, column: 59, scope: !205)
!451 = !DILocation(line: 210, column: 59, scope: !144, inlinedAt: !452)
!452 = distinct !DILocation(line: 264, column: 12, scope: !205)
!453 = !DILocation(line: 211, column: 16, scope: !144, inlinedAt: !452)
!454 = !DILocation(line: 211, column: 47, scope: !144, inlinedAt: !452)
!455 = !DILocation(line: 211, column: 23, scope: !144, inlinedAt: !452)
!456 = !DILocation(line: 264, column: 60, scope: !205)
!457 = !DILocation(line: 264, column: 36, scope: !205)
!458 = !DILocation(line: 264, column: 5, scope: !205)
!459 = !DILocation(line: 642, column: 45, scope: !208)
!460 = !DILocation(line: 642, column: 57, scope: !208)
!461 = !DILocation(line: 642, column: 72, scope: !208)
!462 = !DILocation(line: 643, column: 27, scope: !208)
!463 = !DILocation(line: 643, column: 37, scope: !208)
!464 = !DILocation(line: 644, column: 23, scope: !208)
!465 = !DILocation(line: 644, column: 13, scope: !208)
!466 = !{!467, !467, i64 0}
!467 = !{!"float", !347, i64 0}
!468 = !DILocation(line: 644, column: 51, scope: !208)
!469 = !DILocation(line: 644, column: 41, scope: !208)
!470 = !DILocation(line: 645, column: 1, scope: !208)
!471 = !DILocation(line: 647, column: 45, scope: !222)
!472 = !DILocation(line: 647, column: 58, scope: !222)
!473 = !DILocation(line: 647, column: 74, scope: !222)
!474 = !DILocation(line: 648, column: 28, scope: !222)
!475 = !DILocation(line: 648, column: 38, scope: !222)
!476 = !DIExpression(DW_OP_bit_piece, 0, 64)
!477 = !DIExpression(DW_OP_bit_piece, 64, 64)
!478 = !DILocation(line: 649, column: 13, scope: !222)
!479 = !{!480, !480, i64 0}
!480 = !{!"double", !347, i64 0}
!481 = !DILocation(line: 649, column: 41, scope: !222)
!482 = !DILocation(line: 650, column: 1, scope: !222)
!483 = !DILocation(line: 652, column: 47, scope: !236)
!484 = !DILocation(line: 652, column: 59, scope: !236)
!485 = !DILocation(line: 652, column: 74, scope: !236)
!486 = !DILocation(line: 653, column: 27, scope: !236)
!487 = !DILocation(line: 653, column: 37, scope: !236)
!488 = !DILocation(line: 654, column: 23, scope: !236)
!489 = !DILocation(line: 654, column: 13, scope: !236)
!490 = !DILocation(line: 654, column: 51, scope: !236)
!491 = !DILocation(line: 654, column: 41, scope: !236)
!492 = !DILocation(line: 655, column: 1, scope: !236)
!493 = !DILocation(line: 657, column: 47, scope: !242)
!494 = !DILocation(line: 657, column: 60, scope: !242)
!495 = !DILocation(line: 657, column: 76, scope: !242)
!496 = !DILocation(line: 658, column: 28, scope: !242)
!497 = !DILocation(line: 658, column: 38, scope: !242)
!498 = !DILocation(line: 659, column: 13, scope: !242)
!499 = !DILocation(line: 659, column: 41, scope: !242)
!500 = !DILocation(line: 660, column: 1, scope: !242)
!501 = !DILocation(line: 48, column: 14, scope: !248)
!502 = !{!349, !349, i64 0}
!503 = !DILocation(line: 48, column: 25, scope: !248)
!504 = !{!346, !346, i64 0}
!505 = !DILocation(line: 177, column: 8, scope: !248)
!506 = !DILocation(line: 116, column: 17, scope: !248)
!507 = !DILocation(line: 178, column: 8, scope: !248)
!508 = !DILocation(line: 178, column: 14, scope: !248)
!509 = !{!510, !349, i64 0}
!510 = !{!"", !349, i64 0, !346, i64 8, !346, i64 16}
!511 = !DILocation(line: 174, column: 17, scope: !248)
!512 = !DILocation(line: 188, column: 6, scope: !513)
!513 = distinct !DILexicalBlock(scope: !248, file: !1, line: 188, column: 6)
!514 = !{!515, !349, i64 0}
!515 = !{!"", !349, i64 0, !349, i64 4, !349, i64 8, !349, i64 12, !349, i64 16, !349, i64 20}
!516 = !{!515, !349, i64 16}
!517 = !DILocation(line: 188, column: 6, scope: !248)
!518 = !DILocation(line: 190, column: 17, scope: !519)
!519 = distinct !DILexicalBlock(scope: !520, file: !1, line: 190, column: 7)
!520 = distinct !DILexicalBlock(scope: !521, file: !1, line: 190, column: 7)
!521 = distinct !DILexicalBlock(scope: !513, file: !1, line: 189, column: 3)
!522 = !DILocation(line: 190, column: 16, scope: !519)
!523 = !DILocation(line: 190, column: 7, scope: !520)
!524 = !DILocation(line: 192, column: 28, scope: !525)
!525 = distinct !DILexicalBlock(scope: !526, file: !1, line: 192, column: 14)
!526 = distinct !DILexicalBlock(scope: !519, file: !1, line: 191, column: 7)
!527 = !DILocation(line: 192, column: 15, scope: !525)
!528 = !DILocation(line: 192, column: 14, scope: !526)
!529 = !DILocation(line: 199, column: 27, scope: !248)
!530 = !DILocation(line: 199, column: 3, scope: !248)
!531 = !DILocation(line: 203, column: 14, scope: !248)
!532 = !DILocation(line: 203, column: 23, scope: !248)
!533 = !DILocation(line: 203, column: 26, scope: !248)
!534 = !DILocation(line: 203, column: 12, scope: !248)
!535 = !DILocation(line: 206, column: 7, scope: !536)
!536 = distinct !DILexicalBlock(scope: !248, file: !1, line: 206, column: 7)
!537 = !DILocation(line: 206, column: 14, scope: !536)
!538 = !DILocation(line: 206, column: 7, scope: !248)
!539 = !DILocation(line: 207, column: 5, scope: !536)
!540 = !DILocation(line: 210, column: 6, scope: !541)
!541 = distinct !DILexicalBlock(scope: !248, file: !1, line: 210, column: 6)
!542 = !DILocation(line: 210, column: 6, scope: !248)
!543 = !DILocation(line: 211, column: 16, scope: !541)
!544 = !DILocation(line: 211, column: 7, scope: !541)
!545 = !DILocation(line: 213, column: 7, scope: !546)
!546 = distinct !DILexicalBlock(scope: !248, file: !1, line: 213, column: 7)
!547 = !DILocation(line: 213, column: 17, scope: !546)
!548 = !DILocation(line: 213, column: 20, scope: !546)
!549 = !{!515, !349, i64 4}
!550 = !{!515, !349, i64 20}
!551 = !DILocation(line: 213, column: 7, scope: !248)
!552 = !DILocation(line: 214, column: 11, scope: !546)
!553 = !DILocation(line: 116, column: 21, scope: !248)
!554 = !DILocation(line: 214, column: 5, scope: !546)
!555 = !DILocation(line: 218, column: 7, scope: !556)
!556 = distinct !DILexicalBlock(scope: !248, file: !1, line: 218, column: 7)
!557 = !DILocation(line: 218, column: 28, scope: !556)
!558 = !DILocation(line: 218, column: 18, scope: !556)
!559 = !DILocation(line: 219, column: 24, scope: !560)
!560 = distinct !DILexicalBlock(scope: !556, file: !1, line: 218, column: 37)
!561 = !DILocation(line: 219, column: 7, scope: !560)
!562 = !DILocation(line: 220, column: 19, scope: !560)
!563 = !DILocation(line: 220, column: 7, scope: !560)
!564 = !DILocation(line: 221, column: 19, scope: !560)
!565 = !DILocation(line: 221, column: 7, scope: !560)
!566 = !DILocation(line: 222, column: 3, scope: !560)
!567 = !DILocation(line: 224, column: 7, scope: !568)
!568 = distinct !DILexicalBlock(scope: !248, file: !1, line: 224, column: 7)
!569 = !DILocation(line: 224, column: 7, scope: !248)
!570 = !DILocation(line: 172, column: 13, scope: !248)
!571 = !DILocation(line: 225, column: 5, scope: !568)
!572 = !DILocation(line: 227, column: 11, scope: !248)
!573 = !DILocation(line: 173, column: 17, scope: !248)
!574 = !DILocation(line: 228, column: 20, scope: !248)
!575 = !DILocation(line: 228, column: 19, scope: !248)
!576 = !DILocation(line: 228, column: 17, scope: !248)
!577 = !DILocation(line: 231, column: 6, scope: !248)
!578 = !DILocation(line: 231, column: 5, scope: !248)
!579 = !DILocation(line: 230, column: 18, scope: !248)
!580 = !DILocation(line: 232, column: 6, scope: !248)
!581 = !DILocation(line: 232, column: 5, scope: !248)
!582 = !DILocation(line: 231, column: 35, scope: !248)
!583 = !DILocation(line: 233, column: 6, scope: !248)
!584 = !DILocation(line: 233, column: 5, scope: !248)
!585 = !DILocation(line: 232, column: 35, scope: !248)
!586 = !DILocation(line: 235, column: 29, scope: !248)
!587 = !DILocation(line: 235, column: 38, scope: !248)
!588 = !DILocation(line: 235, column: 52, scope: !248)
!589 = !DILocation(line: 235, column: 3, scope: !248)
!590 = !DILocation(line: 237, column: 7, scope: !591)
!591 = distinct !DILexicalBlock(scope: !248, file: !1, line: 237, column: 7)
!592 = !DILocation(line: 237, column: 7, scope: !248)
!593 = !DILocation(line: 238, column: 5, scope: !591)
!594 = !DILocation(line: 240, column: 7, scope: !595)
!595 = distinct !DILexicalBlock(scope: !248, file: !1, line: 240, column: 7)
!596 = !DILocation(line: 240, column: 21, scope: !595)
!597 = !DILocation(line: 240, column: 18, scope: !595)
!598 = !DILocation(line: 242, column: 13, scope: !599)
!599 = distinct !DILexicalBlock(scope: !595, file: !1, line: 241, column: 3)
!600 = !DILocation(line: 242, column: 7, scope: !599)
!601 = !DILocation(line: 243, column: 3, scope: !599)
!602 = !DILocation(line: 245, column: 3, scope: !248)

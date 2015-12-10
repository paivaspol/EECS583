; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/mdrun.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.t_filenm = type { i32, i8*, i8*, i64 }
%struct.t_pargs = type { i8*, i32, i32, %union.anon.2, i8* }
%union.anon.2 = type { i8* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
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
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #6
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

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #2 {
  %1 = fcmp ord float %__x, 0.000000e+00
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #7
  %4 = fcmp une float %3, 0x7FF0000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #3

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #2 {
  %1 = fcmp ord double %__x, 0.000000e+00
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #7
  %4 = fcmp une double %3, 0x7FF0000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #3

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #2 {
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #7
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #3

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #2 {
  %1 = tail call float @llvm.fabs.f32(float %__x) #7
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #2 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #7
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #2 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #7
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #2 {
  %1 = fcmp uno float %__x, 0.000000e+00
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #2 {
  %1 = fcmp uno double %__x, 0.000000e+00
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #2 {
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #2 {
  %1 = bitcast float %__x to i32
  %2 = lshr i32 %1, 31
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #2 {
  %1 = bitcast double %__x to i64
  %2 = lshr i64 %1, 63
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #2 {
  %1 = bitcast x86_fp80 %__x to i80
  %2 = lshr i80 %1, 79
  %3 = trunc i80 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #2 {
  %1 = fcmp ord float %__x, 0.000000e+00
  %2 = tail call float @llvm.fabs.f32(float %__x) #3
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
define i32 @__inline_isnormald(double %__x) #2 {
  %1 = fcmp ord double %__x, 0.000000e+00
  %2 = tail call double @llvm.fabs.f64(double %__x) #3
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
define i32 @__inline_isnormall(x86_fp80 %__x) #2 {
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #3
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
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #6
  %2 = extractelement <2 x float> %1, i32 0
  store float %2, float* %__sinp, align 4, !tbaa !14
  %3 = extractelement <2 x float> %1, i32 1
  store float %3, float* %__cosp, align 4, !tbaa !14
  ret void
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  %1 = tail call { double, double } @__sincos_stret(double %__x) #6
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !16
  store double %3, double* %__cosp, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #6
  %2 = extractelement <2 x float> %1, i32 0
  store float %2, float* %__sinp, align 4, !tbaa !14
  %3 = extractelement <2 x float> %1, i32 1
  store float %3, float* %__cosp, align 4, !tbaa !14
  ret void
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #6
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !16
  store double %3, double* %__cosp, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #4 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %edyn = alloca %struct.t_edsamyn, align 8
  store i32 %argc, i32* %1, align 4, !tbaa !18
  store i8** %argv, i8*** %2, align 8, !tbaa !19
  %3 = call %struct.t_commrec* @init_par(i32* %1, i8*** %2) #6
  %4 = getelementptr inbounds %struct.t_edsamyn* %edyn, i64 0, i32 0
  store i32 0, i32* %4, align 8, !tbaa !20
  %5 = getelementptr inbounds %struct.t_commrec* %3, i64 0, i32 0
  %6 = load i32* %5, align 4, !tbaa !22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %.loopexit

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %struct.t_commrec* %3, i64 0, i32 4
  %10 = load i32* %9, align 4, !tbaa !24
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %8
  %12 = load i32* %1, align 4, !tbaa !18
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %14 = load i8*** %2, align 8, !tbaa !19
  %15 = sext i32 %12 to i64
  br label %16

; <label>:16                                      ; preds = %.lr.ph, %16
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %16 ]
  %pca_quiet.04 = phi i64 [ 4096, %.lr.ph ], [ %.pca_quiet.0, %16 ]
  %17 = getelementptr inbounds i8** %14, i64 %indvars.iv
  %18 = load i8** %17, align 8, !tbaa !19
  %19 = call i32 @strncmp(i8* getelementptr inbounds ([3 x i8]* @.str102, i64 0, i64 0), i8* %18, i64 2) #6
  %20 = icmp eq i32 %19, 0
  %.pca_quiet.0 = select i1 %20, i64 0, i64 %pca_quiet.04
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %21 = icmp slt i64 %indvars.iv.next, %15
  br i1 %21, label %16, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %16
  %phitmp = or i64 %.pca_quiet.0, 11520
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %8, %0
  %pca_quiet.2 = phi i64 [ 15616, %8 ], [ 15616, %0 ], [ 15616, %.preheader ], [ %phitmp, %.loopexit.loopexit ]
  %22 = load i8*** %2, align 8, !tbaa !19
  call void @parse_common_args(i32* %1, i8** %22, i64 %pca_quiet.2, i32 22, %struct.t_filenm* getelementptr inbounds ([22 x %struct.t_filenm]* @main.fnm, i64 0, i64 0), i32 8, %struct.t_pargs* getelementptr inbounds ([8 x %struct.t_pargs]* @main.pa, i64 0, i64 0), i32 63, i8** getelementptr inbounds ([63 x i8*]* @main.desc, i64 0, i64 0), i32 0, i8** null) #6
  %23 = load i32* @main.bVerbose, align 4, !tbaa !18
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

; <label>:25                                      ; preds = %.loopexit
  %26 = load i32* %5, align 4, !tbaa !22
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

; <label>:28                                      ; preds = %25
  %29 = getelementptr inbounds %struct.t_commrec* %3, i64 0, i32 4
  %30 = load i32* %29, align 4, !tbaa !24
  %31 = icmp eq i32 %30, 0
  br label %32

; <label>:32                                      ; preds = %.loopexit, %25, %28
  %33 = phi i1 [ false, %.loopexit ], [ false, %25 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* @main.bVerbose, align 4, !tbaa !18
  %35 = load i32* @main.nnodes, align 4, !tbaa !18
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %32
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([62 x i8]* @.str116, i64 0, i64 0)) #6
  %.pr = load i32* @main.bVerbose, align 4, !tbaa !18
  br label %38

; <label>:38                                      ; preds = %37, %32
  %39 = phi i32 [ %.pr, %37 ], [ %34, %32 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

; <label>:41                                      ; preds = %38
  %42 = call i8* @ftp2fn(i32 18, i32 22, %struct.t_filenm* getelementptr inbounds ([22 x %struct.t_filenm]* @main.fnm, i64 0, i64 0)) #6
  call void @open_log(i8* %42, %struct.t_commrec* %3) #6
  br label %43

; <label>:43                                      ; preds = %38, %41
  %44 = load i32* @main.bMultiSim, align 4, !tbaa !18
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %56, label %46

; <label>:46                                      ; preds = %43
  %47 = getelementptr inbounds %struct.t_commrec* %3, i64 0, i32 1
  %48 = load i32* %47, align 4, !tbaa !25
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %54, label %50

; <label>:50                                      ; preds = %46
  %51 = getelementptr inbounds %struct.t_commrec* %3, i64 0, i32 5
  %52 = load i32* %51, align 4, !tbaa !26
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %56

; <label>:54                                      ; preds = %50, %46
  %55 = call %struct.t_commrec* @init_multisystem(%struct.t_commrec* %3, i32 22, %struct.t_filenm* getelementptr inbounds ([22 x %struct.t_filenm]* @main.fnm, i64 0, i64 0)) #6
  br label %56

; <label>:56                                      ; preds = %50, %43, %54
  %mcr.0 = phi %struct.t_commrec* [ %55, %54 ], [ null, %43 ], [ null, %50 ]
  %57 = load i32* %5, align 4, !tbaa !22
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %70

; <label>:59                                      ; preds = %56
  %60 = getelementptr inbounds %struct.t_commrec* %3, i64 0, i32 4
  %61 = load i32* %60, align 4, !tbaa !24
  %62 = icmp eq i32 %61, 0
  %63 = load %struct.__sFILE** @stdlog, align 8
  %64 = icmp ne %struct.__sFILE* %63, null
  %or.cond = and i1 %62, %64
  br i1 %or.cond, label %65, label %70

; <label>:65                                      ; preds = %59
  %66 = load i8*** %2, align 8, !tbaa !19
  %67 = load i8** %66, align 8, !tbaa !19
  call void @CopyRight(%struct.__sFILE* %63, i8* %67) #6
  %68 = load %struct.__sFILE** @stdlog, align 8, !tbaa !19
  call void @please_cite(%struct.__sFILE* %68, i8* getelementptr inbounds ([13 x i8]* @.str117, i64 0, i64 0)) #6
  %69 = load %struct.__sFILE** @stdlog, align 8, !tbaa !19
  call void @please_cite(%struct.__sFILE* %69, i8* getelementptr inbounds ([13 x i8]* @.str118, i64 0, i64 0)) #6
  br label %70

; <label>:70                                      ; preds = %65, %59, %56
  %71 = call i32 @opt2bSet(i8* getelementptr inbounds ([4 x i8]* @.str77, i64 0, i64 0), i32 22, %struct.t_filenm* getelementptr inbounds ([22 x %struct.t_filenm]* @main.fnm, i64 0, i64 0)) #6
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

; <label>:73                                      ; preds = %70
  call void @ed_open(i32 22, %struct.t_filenm* getelementptr inbounds ([22 x %struct.t_filenm]* @main.fnm, i64 0, i64 0), %struct.t_edsamyn* %edyn) #6
  br label %74

; <label>:74                                      ; preds = %70, %73
  %75 = call i32 @opt2bSet(i8* getelementptr inbounds ([7 x i8]* @.str75, i64 0, i64 0), i32 22, %struct.t_filenm* getelementptr inbounds ([22 x %struct.t_filenm]* @main.fnm, i64 0, i64 0)) #6
  %76 = icmp ne i32 %75, 0
  %77 = select i1 %76, i64 16, i64 0
  %78 = load i32* @main.bSepDVDL, align 4, !tbaa !18
  %79 = icmp ne i32 %78, 0
  %80 = select i1 %79, i64 128, i64 0
  %81 = or i64 %80, %77
  %82 = load i32* @main.bIonize, align 4, !tbaa !18
  %83 = icmp ne i32 %82, 0
  %84 = select i1 %83, i64 8, i64 0
  %85 = or i64 %81, %84
  %86 = load i32* @main.bMultiSim, align 4, !tbaa !18
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = or i64 %85, %88
  %90 = load i32* @main.bGlas, align 4, !tbaa !18
  %91 = icmp ne i32 %90, 0
  %92 = select i1 %91, i64 2, i64 0
  %93 = or i64 %89, %92
  %94 = load i32* @main.bVerbose, align 4, !tbaa !18
  %95 = load i32* @main.bCompact, align 4, !tbaa !18
  %96 = load i32* @main.nstepout, align 4, !tbaa !18
  call void @mdrunner(%struct.t_commrec* %3, %struct.t_commrec* %mcr.0, i32 22, %struct.t_filenm* getelementptr inbounds ([22 x %struct.t_filenm]* @main.fnm, i64 0, i64 0), i32 %94, i32 %95, i32 0, i32 %96, %struct.t_edsamyn* %edyn, i64 %93) #6
  %97 = load i32* @gmx_parallel, align 4, !tbaa !18
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

; <label>:99                                      ; preds = %74
  call void @gmx_finalize() #6
  br label %100

; <label>:100                                     ; preds = %74, %99
  %101 = load i32* %5, align 4, !tbaa !22
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %111

; <label>:103                                     ; preds = %100
  %104 = getelementptr inbounds %struct.t_commrec* %3, i64 0, i32 4
  %105 = load i32* %104, align 4, !tbaa !24
  %106 = icmp eq i32 %105, 0
  %107 = load i32* @main.bVerbose, align 4
  %108 = icmp ne i32 %107, 0
  %or.cond3 = and i1 %106, %108
  br i1 %or.cond3, label %109, label %111

; <label>:109                                     ; preds = %103
  %110 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !19
  call void @thanx(%struct.__sFILE* %110) #6
  br label %111

; <label>:111                                     ; preds = %109, %103, %100
  ret i32 0
}

; Function Attrs: optsize
declare %struct.t_commrec* @init_par(i32*, i8***) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #5

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
declare void @CopyRight(%struct.__sFILE*, i8*) #1

; Function Attrs: optsize
declare void @please_cite(%struct.__sFILE*, i8*) #1

; Function Attrs: optsize
declare i32 @opt2bSet(i8*, i32, %struct.t_filenm*) #1

; Function Attrs: optsize
declare void @ed_open(i32, %struct.t_filenm*, %struct.t_edsamyn*) #1

; Function Attrs: optsize
declare void @mdrunner(%struct.t_commrec*, %struct.t_commrec*, i32, %struct.t_filenm*, i32, i32, i32, i32, %struct.t_edsamyn*, i64) #1

; Function Attrs: optsize
declare void @gmx_finalize() #1

; Function Attrs: optsize
declare void @thanx(%struct.__sFILE*) #1

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { readnone }

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
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !5, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"double", !5, i64 0}
!18 = !{!7, !7, i64 0}
!19 = !{!4, !4, i64 0}
!20 = !{!21, !7, i64 0}
!21 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16}
!22 = !{!23, !7, i64 0}
!23 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!24 = !{!23, !7, i64 16}
!25 = !{!23, !7, i64 4}
!26 = !{!23, !7, i64 20}

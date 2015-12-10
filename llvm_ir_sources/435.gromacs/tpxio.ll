; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/tpxio.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.t_ftupd = type { i32, i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_interaction_function = type { i8*, i8*, i32, i32, i32, i64, i32, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* }
%union.t_iparams = type { %struct.anon.5 }
%struct.anon.5 = type { float, float, float, float, float, float }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_graph = type { i32, i32, i32, i32, i32, i32*, i32**, [3 x i32]* }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_fcdata = type { %struct.t_disresdata, %struct.t_oriresdata }
%struct.t_disresdata = type { i32, i32, float, float, float, float, float, i32, i32, float, float*, float*, float*, float*, float* }
%struct.t_oriresdata = type { float, float, float, float, i32, i32, i32, float, float*, [3 x float]*, [3 x float]*, [3 x [3 x float]], [3 x [3 x float]]*, [5 x float]*, [5 x float]*, [5 x float]*, float*, float*, float*, float, [5 x float]*, float*** }
%union.anon = type { float }
%union.anon.0 = type { double }
%union.anon.1 = type { x86_fp80 }
%struct.__float2 = type { float, float }
%struct.__double2 = type { double, double }
%struct.t_tpxheader = type { i32, i32, i32, i32, i32, i32, i32, i32, float, float }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_topology = type { i8**, %struct.t_idef, %struct.t_atoms, [3 x %struct.t_block], %struct.t_symtab }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }
%struct.t_symtab = type { i32, %struct.symbuf* }
%struct.symbuf = type { i32, i8**, %struct.symbuf* }

@ftupd = global [7 x %struct.t_ftupd] [%struct.t_ftupd { i32 20, i32 3 }, %struct.t_ftupd { i32 20, i32 4 }, %struct.t_ftupd { i32 20, i32 5 }, %struct.t_ftupd { i32 20, i32 36 }, %struct.t_ftupd { i32 22, i32 22 }, %struct.t_ftupd { i32 22, i32 23 }, %struct.t_ftupd { i32 22, i32 24 }], align 16
@do_read = external global i32 (i8*, i32, i32, i8*, i8*, i32)*
@itemstr = external global [7 x i8*]
@.str = private unnamed_addr constant [13 x i8] c"itemstr[key]\00", align 1
@.str1 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/tpxio.c\00", align 1
@do_write = external global i32 (i8*, i32, i32, i8*, i8*, i32)*
@comment_str = external global [7 x i8*]
@.str2 = private unnamed_addr constant [17 x i8] c"comment_str[key]\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str3 = private unnamed_addr constant [32 x i8] c"Looking for section %s (%s, %d)\00", align 1
@.str4 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str6 = private unnamed_addr constant [15 x i8] c" and found it\0A\00", align 1
@interaction_function = external global [44 x %struct.t_interaction_function]
@.str7 = private unnamed_addr constant [16 x i8] c"iparams->bham.a\00", align 1
@.str8 = private unnamed_addr constant [16 x i8] c"iparams->bham.b\00", align 1
@.str9 = private unnamed_addr constant [16 x i8] c"iparams->bham.c\00", align 1
@.str10 = private unnamed_addr constant [18 x i8] c"iparams->morse.b0\00", align 1
@.str11 = private unnamed_addr constant [18 x i8] c"iparams->morse.cb\00", align 1
@.str12 = private unnamed_addr constant [20 x i8] c"iparams->morse.beta\00", align 1
@.str13 = private unnamed_addr constant [18 x i8] c"iparams->cubic.b0\00", align 1
@.str14 = private unnamed_addr constant [18 x i8] c"iparams->cubic.kb\00", align 1
@.str15 = private unnamed_addr constant [20 x i8] c"iparams->cubic.kcub\00", align 1
@.str16 = private unnamed_addr constant [17 x i8] c"iparams->wpol.kx\00", align 1
@.str17 = private unnamed_addr constant [17 x i8] c"iparams->wpol.ky\00", align 1
@.str18 = private unnamed_addr constant [17 x i8] c"iparams->wpol.kz\00", align 1
@.str19 = private unnamed_addr constant [18 x i8] c"iparams->wpol.rOH\00", align 1
@.str20 = private unnamed_addr constant [18 x i8] c"iparams->wpol.rHH\00", align 1
@.str21 = private unnamed_addr constant [18 x i8] c"iparams->wpol.rOD\00", align 1
@.str22 = private unnamed_addr constant [15 x i8] c"iparams->lj.c6\00", align 1
@.str23 = private unnamed_addr constant [16 x i8] c"iparams->lj.c12\00", align 1
@.str24 = private unnamed_addr constant [18 x i8] c"iparams->lj14.c6A\00", align 1
@.str25 = private unnamed_addr constant [19 x i8] c"iparams->lj14.c12A\00", align 1
@.str26 = private unnamed_addr constant [18 x i8] c"iparams->lj14.c6B\00", align 1
@.str27 = private unnamed_addr constant [19 x i8] c"iparams->lj14.c12B\00", align 1
@.str28 = private unnamed_addr constant [20 x i8] c"iparams->pdihs.phiA\00", align 1
@.str29 = private unnamed_addr constant [19 x i8] c"iparams->pdihs.cpA\00", align 1
@.str30 = private unnamed_addr constant [20 x i8] c"iparams->pdihs.phiB\00", align 1
@.str31 = private unnamed_addr constant [19 x i8] c"iparams->pdihs.cpB\00", align 1
@.str32 = private unnamed_addr constant [20 x i8] c"iparams->pdihs.mult\00", align 1
@.str33 = private unnamed_addr constant [22 x i8] c"iparams->disres.label\00", align 1
@.str34 = private unnamed_addr constant [21 x i8] c"iparams->disres.type\00", align 1
@.str35 = private unnamed_addr constant [20 x i8] c"iparams->disres.low\00", align 1
@.str36 = private unnamed_addr constant [20 x i8] c"iparams->disres.up1\00", align 1
@.str37 = private unnamed_addr constant [20 x i8] c"iparams->disres.up2\00", align 1
@.str38 = private unnamed_addr constant [21 x i8] c"iparams->disres.kfac\00", align 1
@.str39 = private unnamed_addr constant [19 x i8] c"iparams->orires.ex\00", align 1
@.str40 = private unnamed_addr constant [22 x i8] c"iparams->orires.label\00", align 1
@.str41 = private unnamed_addr constant [20 x i8] c"iparams->orires.pow\00", align 1
@.str42 = private unnamed_addr constant [18 x i8] c"iparams->orires.c\00", align 1
@.str43 = private unnamed_addr constant [20 x i8] c"iparams->orires.obs\00", align 1
@.str44 = private unnamed_addr constant [21 x i8] c"iparams->orires.kfac\00", align 1
@.str45 = private unnamed_addr constant [21 x i8] c"iparams->posres.pos0\00", align 1
@.str46 = private unnamed_addr constant [19 x i8] c"iparams->posres.fc\00", align 1
@.str47 = private unnamed_addr constant [7 x i8] c"%s[%d]\00", align 1
@.str48 = private unnamed_addr constant [20 x i8] c"iparams->rbdihs.rbc\00", align 1
@.str49 = private unnamed_addr constant [18 x i8] c"iparams->shake.dA\00", align 1
@.str50 = private unnamed_addr constant [18 x i8] c"iparams->shake.dB\00", align 1
@.str51 = private unnamed_addr constant [20 x i8] c"iparams->settle.doh\00", align 1
@.str52 = private unnamed_addr constant [20 x i8] c"iparams->settle.dhh\00", align 1
@.str53 = private unnamed_addr constant [17 x i8] c"iparams->dummy.a\00", align 1
@.str54 = private unnamed_addr constant [17 x i8] c"iparams->dummy.b\00", align 1
@.str55 = private unnamed_addr constant [17 x i8] c"iparams->dummy.c\00", align 1
@.str56 = private unnamed_addr constant [44 x i8] c"unknown function type %d (%s) in %s line %d\00", align 1
@.str57 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str58 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str59 = private unnamed_addr constant [3 x i8] c"*x\00", align 1
@.str60 = private unnamed_addr constant [3 x i8] c"*v\00", align 1
@.str61 = private unnamed_addr constant [21 x i8] c"iparams->harmonic.rA\00", align 1
@.str62 = private unnamed_addr constant [22 x i8] c"iparams->harmonic.krA\00", align 1
@.str63 = private unnamed_addr constant [21 x i8] c"iparams->harmonic.rB\00", align 1
@.str64 = private unnamed_addr constant [22 x i8] c"iparams->harmonic.krB\00", align 1
@.str65 = private unnamed_addr constant [8 x i8] c"VERSION\00", align 1
@.str66 = private unnamed_addr constant [173 x i8] c"Can not read file %s,\0A             this file is from a Gromacs version which is older than 2.0\0A             Make a new one with grompp or use a gro or pdb file, if possible\00", align 1
@.str67 = private unnamed_addr constant [10 x i8] c"precision\00", align 1
@.str68 = private unnamed_addr constant [67 x i8] c"Unknown precision in file %s: real is %d bytes instead of %d or %d\00", align 1
@.str69 = private unnamed_addr constant [17 x i8] c"GromacsVersion()\00", align 1
@file_version = internal global i32 0, align 4
@.str70 = private unnamed_addr constant [13 x i8] c"file_version\00", align 1
@.str71 = private unnamed_addr constant [57 x i8] c"reading tpx file (%s) version %d with version %d program\00", align 1
@.str72 = private unnamed_addr constant [12 x i8] c"tpx->natoms\00", align 1
@.str73 = private unnamed_addr constant [10 x i8] c"tpx->step\00", align 1
@.str74 = private unnamed_addr constant [7 x i8] c"tpx->t\00", align 1
@.str75 = private unnamed_addr constant [12 x i8] c"tpx->lambda\00", align 1
@.str76 = private unnamed_addr constant [9 x i8] c"tpx->bIr\00", align 1
@.str77 = private unnamed_addr constant [10 x i8] c"tpx->bTop\00", align 1
@.str78 = private unnamed_addr constant [8 x i8] c"tpx->bX\00", align 1
@.str79 = private unnamed_addr constant [8 x i8] c"tpx->bV\00", align 1
@.str80 = private unnamed_addr constant [8 x i8] c"tpx->bF\00", align 1
@.str81 = private unnamed_addr constant [10 x i8] c"tpx->bBox\00", align 1
@.str82 = private unnamed_addr constant [12 x i8] c"No %s in %s\00", align 1
@.str83 = private unnamed_addr constant [4 x i8] c"box\00", align 1
@.str84 = private unnamed_addr constant [3 x i8] c"ir\00", align 1
@.str85 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str86 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str87 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str88 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str89 = private unnamed_addr constant [48 x i8] c"Note: tpx file_version %d, software version %d\0A\00", align 1
@.str90 = private unnamed_addr constant [7 x i8] c"ir->eI\00", align 1
@.str91 = private unnamed_addr constant [11 x i8] c"ir->nsteps\00", align 1
@.str92 = private unnamed_addr constant [9 x i8] c"ir->ePBC\00", align 1
@.str93 = private unnamed_addr constant [12 x i8] c"ir->ns_type\00", align 1
@.str94 = private unnamed_addr constant [12 x i8] c"ir->nstlist\00", align 1
@.str95 = private unnamed_addr constant [11 x i8] c"ir->ndelta\00", align 1
@.str96 = private unnamed_addr constant [15 x i8] c"ir->bDomDecomp\00", align 1
@.str97 = private unnamed_addr constant [15 x i8] c"ir->decomp_dir\00", align 1
@.str98 = private unnamed_addr constant [12 x i8] c"ir->nstcomm\00", align 1
@.str99 = private unnamed_addr constant [15 x i8] c"ir->nstcgsteep\00", align 1
@.str100 = private unnamed_addr constant [11 x i8] c"ir->nstlog\00", align 1
@.str101 = private unnamed_addr constant [12 x i8] c"ir->nstxout\00", align 1
@.str102 = private unnamed_addr constant [12 x i8] c"ir->nstvout\00", align 1
@.str103 = private unnamed_addr constant [12 x i8] c"ir->nstfout\00", align 1
@.str104 = private unnamed_addr constant [14 x i8] c"ir->nstenergy\00", align 1
@.str105 = private unnamed_addr constant [14 x i8] c"ir->nstxtcout\00", align 1
@.str106 = private unnamed_addr constant [11 x i8] c"ir->init_t\00", align 1
@.str107 = private unnamed_addr constant [12 x i8] c"ir->delta_t\00", align 1
@.str108 = private unnamed_addr constant [12 x i8] c"ir->xtcprec\00", align 1
@.str109 = private unnamed_addr constant [5 x i8] c"idum\00", align 1
@.str110 = private unnamed_addr constant [10 x i8] c"ir->rlist\00", align 1
@.str111 = private unnamed_addr constant [16 x i8] c"ir->coulombtype\00", align 1
@.str112 = private unnamed_addr constant [20 x i8] c"ir->rcoulomb_switch\00", align 1
@.str113 = private unnamed_addr constant [13 x i8] c"ir->rcoulomb\00", align 1
@.str114 = private unnamed_addr constant [12 x i8] c"ir->vdwtype\00", align 1
@.str115 = private unnamed_addr constant [16 x i8] c"ir->rvdw_switch\00", align 1
@.str116 = private unnamed_addr constant [9 x i8] c"ir->rvdw\00", align 1
@.str117 = private unnamed_addr constant [14 x i8] c"ir->eDispCorr\00", align 1
@.str118 = private unnamed_addr constant [14 x i8] c"ir->epsilon_r\00", align 1
@.str119 = private unnamed_addr constant [8 x i8] c"ir->nkx\00", align 1
@.str120 = private unnamed_addr constant [8 x i8] c"ir->nky\00", align 1
@.str121 = private unnamed_addr constant [8 x i8] c"ir->nkz\00", align 1
@.str122 = private unnamed_addr constant [14 x i8] c"ir->pme_order\00", align 1
@.str123 = private unnamed_addr constant [15 x i8] c"ir->ewald_rtol\00", align 1
@.str124 = private unnamed_addr constant [19 x i8] c"ir->ewald_geometry\00", align 1
@.str125 = private unnamed_addr constant [20 x i8] c"ir->epsilon_surface\00", align 1
@.str126 = private unnamed_addr constant [12 x i8] c"ir->bOptFFT\00", align 1
@.str127 = private unnamed_addr constant [14 x i8] c"ir->bUncStart\00", align 1
@.str128 = private unnamed_addr constant [8 x i8] c"ir->etc\00", align 1
@.str129 = private unnamed_addr constant [9 x i8] c"ir->epct\00", align 1
@.str130 = private unnamed_addr constant [8 x i8] c"ir->epc\00", align 1
@.str131 = private unnamed_addr constant [10 x i8] c"ir->tau_p\00", align 1
@.str132 = private unnamed_addr constant [5 x i8] c"vdum\00", align 1
@.str133 = private unnamed_addr constant [14 x i8] c"ir->ref_p[XX]\00", align 1
@.str134 = private unnamed_addr constant [14 x i8] c"ir->ref_p[YY]\00", align 1
@.str135 = private unnamed_addr constant [14 x i8] c"ir->ref_p[ZZ]\00", align 1
@.str136 = private unnamed_addr constant [17 x i8] c"ir->compress[XX]\00", align 1
@.str137 = private unnamed_addr constant [17 x i8] c"ir->compress[YY]\00", align 1
@.str138 = private unnamed_addr constant [17 x i8] c"ir->compress[ZZ]\00", align 1
@.str139 = private unnamed_addr constant [12 x i8] c"ir->bSimAnn\00", align 1
@.str140 = private unnamed_addr constant [19 x i8] c"ir->zero_temp_time\00", align 1
@.str141 = private unnamed_addr constant [14 x i8] c"ir->shake_tol\00", align 1
@.str142 = private unnamed_addr constant [12 x i8] c"ir->fudgeQQ\00", align 1
@.str143 = private unnamed_addr constant [9 x i8] c"ir->efep\00", align 1
@.str144 = private unnamed_addr constant [16 x i8] c"ir->init_lambda\00", align 1
@.str145 = private unnamed_addr constant [17 x i8] c"ir->delta_lambda\00", align 1
@.str146 = private unnamed_addr constant [13 x i8] c"ir->sc_alpha\00", align 1
@.str147 = private unnamed_addr constant [13 x i8] c"ir->sc_sigma\00", align 1
@.str148 = private unnamed_addr constant [20 x i8] c"ir->eDisreWeighting\00", align 1
@.str149 = private unnamed_addr constant [16 x i8] c"ir->bDisreMixed\00", align 1
@.str150 = private unnamed_addr constant [10 x i8] c"ir->dr_fc\00", align 1
@.str151 = private unnamed_addr constant [11 x i8] c"ir->dr_tau\00", align 1
@.str152 = private unnamed_addr constant [16 x i8] c"ir->nstdisreout\00", align 1
@.str153 = private unnamed_addr constant [14 x i8] c"ir->orires_fc\00", align 1
@.str154 = private unnamed_addr constant [15 x i8] c"ir->orires_tau\00", align 1
@.str155 = private unnamed_addr constant [16 x i8] c"ir->nstorireout\00", align 1
@.str156 = private unnamed_addr constant [16 x i8] c"ir->em_stepsize\00", align 1
@.str157 = private unnamed_addr constant [11 x i8] c"ir->em_tol\00", align 1
@.str158 = private unnamed_addr constant [14 x i8] c"ir->bShakeSOR\00", align 1
@.str159 = private unnamed_addr constant [10 x i8] c"ir->niter\00", align 1
@.str160 = private unnamed_addr constant [53 x i8] c"Note: niter not in run input file, setting it to %d\0A\00", align 1
@.str161 = private unnamed_addr constant [16 x i8] c"ir->fc_stepsize\00", align 1
@.str162 = private unnamed_addr constant [15 x i8] c"ir->eConstrAlg\00", align 1
@.str163 = private unnamed_addr constant [15 x i8] c"ir->nProjOrder\00", align 1
@.str164 = private unnamed_addr constant [19 x i8] c"ir->LincsWarnAngle\00", align 1
@.str165 = private unnamed_addr constant [12 x i8] c"ir->bd_temp\00", align 1
@.str166 = private unnamed_addr constant [12 x i8] c"ir->bd_fric\00", align 1
@.str167 = private unnamed_addr constant [12 x i8] c"ir->ld_seed\00", align 1
@.str168 = private unnamed_addr constant [14 x i8] c"ir->cos_accel\00", align 1
@.str169 = private unnamed_addr constant [13 x i8] c"ir->userint1\00", align 1
@.str170 = private unnamed_addr constant [13 x i8] c"ir->userint2\00", align 1
@.str171 = private unnamed_addr constant [13 x i8] c"ir->userint3\00", align 1
@.str172 = private unnamed_addr constant [13 x i8] c"ir->userint4\00", align 1
@.str173 = private unnamed_addr constant [14 x i8] c"ir->userreal1\00", align 1
@.str174 = private unnamed_addr constant [14 x i8] c"ir->userreal2\00", align 1
@.str175 = private unnamed_addr constant [14 x i8] c"ir->userreal3\00", align 1
@.str176 = private unnamed_addr constant [14 x i8] c"ir->userreal4\00", align 1
@.str177 = private unnamed_addr constant [14 x i8] c"ir->opts.ngtc\00", align 1
@.str178 = private unnamed_addr constant [15 x i8] c"ir->opts.ngacc\00", align 1
@.str179 = private unnamed_addr constant [15 x i8] c"ir->opts.ngfrz\00", align 1
@.str180 = private unnamed_addr constant [16 x i8] c"ir->opts.ngener\00", align 1
@.str181 = private unnamed_addr constant [14 x i8] c"ir->opts.nrdf\00", align 1
@.str182 = private unnamed_addr constant [15 x i8] c"ir->opts.ref_t\00", align 1
@.str183 = private unnamed_addr constant [15 x i8] c"ir->opts.tau_t\00", align 1
@.str184 = private unnamed_addr constant [17 x i8] c"ir->opts.nFreeze\00", align 1
@.str185 = private unnamed_addr constant [13 x i8] c"ir->opts.acc\00", align 1
@.str186 = private unnamed_addr constant [17 x i8] c"ir->opts.eg_excl\00", align 1
@.str187 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@.str188 = private unnamed_addr constant [12 x i8] c"ir->ex[j].n\00", align 1
@.str189 = private unnamed_addr constant [12 x i8] c"ir->et[j].n\00", align 1
@.str190 = private unnamed_addr constant [12 x i8] c"ir->ex[j].a\00", align 1
@.str191 = private unnamed_addr constant [14 x i8] c"ir->ex[j].phi\00", align 1
@.str192 = private unnamed_addr constant [12 x i8] c"ir->et[j].a\00", align 1
@.str193 = private unnamed_addr constant [14 x i8] c"ir->et[j].phi\00", align 1
@.str194 = private unnamed_addr constant [11 x i8] c"symtab->nr\00", align 1
@.str195 = private unnamed_addr constant [15 x i8] c"symtab->symbuf\00", align 1
@.str196 = private unnamed_addr constant [12 x i8] c"symbuf->buf\00", align 1
@.str197 = private unnamed_addr constant [15 x i8] c"symbuf->buf[i]\00", align 1
@.str198 = private unnamed_addr constant [30 x i8] c"nr of symtab strings left: %d\00", align 1
@.str199 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str200 = private unnamed_addr constant [10 x i8] c"atoms->nr\00", align 1
@.str201 = private unnamed_addr constant [12 x i8] c"atoms->nres\00", align 1
@.str202 = private unnamed_addr constant [16 x i8] c"atoms->ngrpname\00", align 1
@.str203 = private unnamed_addr constant [12 x i8] c"atoms->atom\00", align 1
@.str204 = private unnamed_addr constant [16 x i8] c"atoms->atomname\00", align 1
@.str205 = private unnamed_addr constant [16 x i8] c"atoms->atomtype\00", align 1
@.str206 = private unnamed_addr constant [17 x i8] c"atoms->atomtypeB\00", align 1
@.str207 = private unnamed_addr constant [15 x i8] c"atoms->resname\00", align 1
@.str208 = private unnamed_addr constant [15 x i8] c"atoms->grpname\00", align 1
@.str209 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str210 = private unnamed_addr constant [8 x i8] c"atom->m\00", align 1
@.str211 = private unnamed_addr constant [8 x i8] c"atom->q\00", align 1
@.str212 = private unnamed_addr constant [9 x i8] c"atom->mB\00", align 1
@.str213 = private unnamed_addr constant [9 x i8] c"atom->qB\00", align 1
@.str214 = private unnamed_addr constant [11 x i8] c"atom->type\00", align 1
@.str215 = private unnamed_addr constant [12 x i8] c"atom->typeB\00", align 1
@.str216 = private unnamed_addr constant [12 x i8] c"atom->ptype\00", align 1
@.str217 = private unnamed_addr constant [12 x i8] c"atom->resnr\00", align 1
@.str218 = private unnamed_addr constant [12 x i8] c"atom->grpnr\00", align 1
@.str219 = private unnamed_addr constant [15 x i8] c"grps[8].nm_ind\00", align 1
@.str220 = private unnamed_addr constant [11 x i8] c"grps[j].nr\00", align 1
@.str221 = private unnamed_addr constant [15 x i8] c"grps[j].nm_ind\00", align 1
@.str222 = private unnamed_addr constant [11 x i8] c"idef->atnr\00", align 1
@.str223 = private unnamed_addr constant [13 x i8] c"idef->nodeid\00", align 1
@.str224 = private unnamed_addr constant [13 x i8] c"idef->ntypes\00", align 1
@.str225 = private unnamed_addr constant [15 x i8] c"idef->functype\00", align 1
@.str226 = private unnamed_addr constant [14 x i8] c"idef->iparams\00", align 1
@.str227 = private unnamed_addr constant [15 x i8] c"ilist->multinr\00", align 1
@.str228 = private unnamed_addr constant [10 x i8] c"ilist->nr\00", align 1
@.str229 = private unnamed_addr constant [14 x i8] c"ilist->iatoms\00", align 1
@.str230 = private unnamed_addr constant [15 x i8] c"block->multinr\00", align 1
@.str231 = private unnamed_addr constant [10 x i8] c"block->nr\00", align 1
@.str232 = private unnamed_addr constant [11 x i8] c"block->nra\00", align 1
@.str233 = private unnamed_addr constant [13 x i8] c"block->index\00", align 1
@.str234 = private unnamed_addr constant [9 x i8] c"block->a\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !247, metadata !1151), !dbg !1152
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !248, metadata !1151), !dbg !1153
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !1154
  %2 = load i32* %1, align 4, !dbg !1156, !tbaa !1157
  %3 = add nsw i32 %2, -1, !dbg !1156
  store i32 %3, i32* %1, align 4, !dbg !1156, !tbaa !1157
  %4 = icmp sgt i32 %2, 0, !dbg !1166
  br i1 %4, label %._crit_edge, label %5, !dbg !1167

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !1168
  br label %10, !dbg !1167

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !1169
  %7 = load i32* %6, align 4, !dbg !1169, !tbaa !1170
  %8 = icmp sle i32 %2, %7, !dbg !1171
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !1172
  %or.cond = or i1 %9, %8, !dbg !1173
  br i1 %or.cond, label %15, label %10, !dbg !1173

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !1168
  %11 = trunc i32 %_c to i8, !dbg !1174
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !1175
  %13 = load i8** %12, align 8, !dbg !1176, !tbaa !1177
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !1176
  store i8* %14, i8** %12, align 8, !dbg !1176, !tbaa !1177
  store i8 %11, i8* %13, align 1, !dbg !1178, !tbaa !1179
  br label %17, !dbg !1180

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #8, !dbg !1181
  br label %17, !dbg !1182

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !1183
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !254, metadata !1151), !dbg !1184
  %1 = icmp sgt i32 %__signo, 32, !dbg !1185
  br i1 %1, label %5, label %2, !dbg !1186

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !1187
  %4 = shl i32 1, %3, !dbg !1188
  br label %5, !dbg !1186

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !1186
  ret i32 %6, !dbg !1189
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !261, metadata !1151), !dbg !1190
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !1191
  br i1 %1, label %2, label %5, !dbg !1192

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #9, !dbg !1193
  %4 = fcmp une float %3, 0x7FF0000000000000, !dbg !1194
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !1192
  ret i32 %7, !dbg !1195
}

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !267, metadata !1151), !dbg !1196
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !1197
  br i1 %1, label %2, label %5, !dbg !1198

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #9, !dbg !1199
  %4 = fcmp une double %3, 0x7FF0000000000000, !dbg !1200
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !1198
  ret i32 %7, !dbg !1201
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !273, metadata !1151), !dbg !1202
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !1203
  br i1 %1, label %2, label %5, !dbg !1204

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #9, !dbg !1205
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000, !dbg !1206
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !1204
  ret i32 %7, !dbg !1207
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !276, metadata !1151), !dbg !1208
  %1 = tail call float @llvm.fabs.f32(float %__x) #9, !dbg !1209
  %2 = fcmp oeq float %1, 0x7FF0000000000000, !dbg !1210
  %3 = zext i1 %2 to i32, !dbg !1210
  ret i32 %3, !dbg !1211
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !279, metadata !1151), !dbg !1212
  %1 = tail call double @llvm.fabs.f64(double %__x) #9, !dbg !1213
  %2 = fcmp oeq double %1, 0x7FF0000000000000, !dbg !1214
  %3 = zext i1 %2 to i32, !dbg !1214
  ret i32 %3, !dbg !1215
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !282, metadata !1151), !dbg !1216
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #9, !dbg !1217
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000, !dbg !1218
  %3 = zext i1 %2 to i32, !dbg !1218
  ret i32 %3, !dbg !1219
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !285, metadata !1151), !dbg !1220
  %1 = fcmp uno float %__x, 0.000000e+00, !dbg !1221
  %2 = zext i1 %1 to i32, !dbg !1221
  ret i32 %2, !dbg !1222
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !288, metadata !1151), !dbg !1223
  %1 = fcmp uno double %__x, 0.000000e+00, !dbg !1224
  %2 = zext i1 %1 to i32, !dbg !1224
  ret i32 %2, !dbg !1225
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !291, metadata !1151), !dbg !1226
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000, !dbg !1227
  %2 = zext i1 %1 to i32, !dbg !1227
  ret i32 %2, !dbg !1228
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !294, metadata !1151), !dbg !1229
  tail call void @llvm.dbg.declare(metadata %union.anon* undef, metadata !295, metadata !1151), !dbg !1230
  %1 = bitcast float %__x to i32, !dbg !1231
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !295, metadata !1151), !dbg !1230
  %2 = lshr i32 %1, 31, !dbg !1232
  ret i32 %2, !dbg !1233
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !303, metadata !1151), !dbg !1234
  tail call void @llvm.dbg.declare(metadata %union.anon.0* undef, metadata !304, metadata !1151), !dbg !1235
  %1 = bitcast double %__x to i64, !dbg !1236
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !304, metadata !1151), !dbg !1235
  %2 = lshr i64 %1, 63, !dbg !1237
  %3 = trunc i64 %2 to i32, !dbg !1238
  ret i32 %3, !dbg !1239
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !312, metadata !1151), !dbg !1240
  tail call void @llvm.dbg.declare(metadata %union.anon.1* undef, metadata !313, metadata !1151), !dbg !1241
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !313, metadata !1151), !dbg !1241
  %1 = bitcast x86_fp80 %__x to i80, !dbg !1242
  %2 = lshr i80 %1, 79, !dbg !1242
  %3 = trunc i80 %2 to i32, !dbg !1243
  ret i32 %3, !dbg !1244
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !325, metadata !1151), !dbg !1245
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !261, metadata !1151) #5, !dbg !1246
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !1248
  %2 = tail call float @llvm.fabs.f32(float %__x) #1
  %3 = fcmp une float %2, 0x7FF0000000000000, !dbg !1249
  %or.cond = and i1 %1, %3, !dbg !1250
  br i1 %or.cond, label %4, label %.critedge, !dbg !1250

; <label>:4                                       ; preds = %0
  %5 = fcmp oge float %2, 0x3810000000000000, !dbg !1251
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !1252
  ret i32 %7, !dbg !1253
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormald(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !328, metadata !1151), !dbg !1254
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !267, metadata !1151) #5, !dbg !1255
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !1257
  %2 = tail call double @llvm.fabs.f64(double %__x) #1
  %3 = fcmp une double %2, 0x7FF0000000000000, !dbg !1258
  %or.cond = and i1 %1, %3, !dbg !1259
  br i1 %or.cond, label %4, label %.critedge, !dbg !1259

; <label>:4                                       ; preds = %0
  %5 = fcmp oge double %2, 0x10000000000000, !dbg !1260
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !1261
  ret i32 %7, !dbg !1262
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormall(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !331, metadata !1151), !dbg !1263
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !273, metadata !1151) #5, !dbg !1264
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !1266
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #1
  %3 = fcmp une x86_fp80 %2, 0xK7FFF8000000000000000, !dbg !1267
  %or.cond = and i1 %1, %3, !dbg !1268
  br i1 %or.cond, label %4, label %.critedge, !dbg !1268

; <label>:4                                       ; preds = %0
  %5 = fcmp oge x86_fp80 %2, 0xK00018000000000000000, !dbg !1269
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !1270
  ret i32 %7, !dbg !1271
}

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !337, metadata !1151), !dbg !1272
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !338, metadata !1151), !dbg !1273
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !339, metadata !1151), !dbg !1274
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !340, metadata !1151), !dbg !1275
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #8, !dbg !1276
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !340, metadata !1151), !dbg !1275
  %2 = extractelement <2 x float> %1, i32 0, !dbg !1277
  store float %2, float* %__sinp, align 4, !dbg !1278, !tbaa !1279
  %3 = extractelement <2 x float> %1, i32 1, !dbg !1281
  store float %3, float* %__cosp, align 4, !dbg !1282, !tbaa !1279
  ret void, !dbg !1283
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !351, metadata !1151), !dbg !1284
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !352, metadata !1151), !dbg !1285
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !353, metadata !1151), !dbg !1286
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !354, metadata !1151), !dbg !1287
  %1 = tail call { double, double } @__sincos_stret(double %__x) #8, !dbg !1288
  %2 = extractvalue { double, double } %1, 0, !dbg !1288
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !354, metadata !1289), !dbg !1287
  %3 = extractvalue { double, double } %1, 1, !dbg !1288
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !354, metadata !1290), !dbg !1287
  store double %2, double* %__sinp, align 8, !dbg !1291, !tbaa !1292
  store double %3, double* %__cosp, align 8, !dbg !1294, !tbaa !1292
  ret void, !dbg !1295
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !362, metadata !1151), !dbg !1296
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !363, metadata !1151), !dbg !1297
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !364, metadata !1151), !dbg !1298
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !365, metadata !1151), !dbg !1299
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #8, !dbg !1300
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !365, metadata !1151), !dbg !1299
  %2 = extractelement <2 x float> %1, i32 0, !dbg !1301
  store float %2, float* %__sinp, align 4, !dbg !1302, !tbaa !1279
  %3 = extractelement <2 x float> %1, i32 1, !dbg !1303
  store float %3, float* %__cosp, align 4, !dbg !1304, !tbaa !1279
  ret void, !dbg !1305
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !368, metadata !1151), !dbg !1306
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !369, metadata !1151), !dbg !1307
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !370, metadata !1151), !dbg !1308
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !371, metadata !1151), !dbg !1309
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #8, !dbg !1310
  %2 = extractvalue { double, double } %1, 0, !dbg !1310
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !371, metadata !1289), !dbg !1309
  %3 = extractvalue { double, double } %1, 1, !dbg !1310
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !371, metadata !1290), !dbg !1309
  store double %2, double* %__sinp, align 8, !dbg !1311, !tbaa !1292
  store double %3, double* %__cosp, align 8, !dbg !1312, !tbaa !1292
  ret void, !dbg !1313
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @_do_section(i32 %fp, i32 %key, i32 %bRead, i8* %src, i32 %line) #4 {
  %buf = alloca [4096 x i8], align 16
  tail call void @llvm.dbg.value(metadata i32 %fp, i64 0, metadata !376, metadata !1151), !dbg !1314
  tail call void @llvm.dbg.value(metadata i32 %key, i64 0, metadata !377, metadata !1151), !dbg !1315
  tail call void @llvm.dbg.value(metadata i32 %bRead, i64 0, metadata !378, metadata !1151), !dbg !1316
  tail call void @llvm.dbg.value(metadata i8* %src, i64 0, metadata !379, metadata !1151), !dbg !1317
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !380, metadata !1151), !dbg !1318
  %1 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0, !dbg !1319
  call void @llvm.lifetime.start(i64 4096, i8* %1) #5, !dbg !1319
  tail call void @llvm.dbg.declare(metadata [4096 x i8]* %buf, metadata !381, metadata !1151), !dbg !1320
  %2 = tail call i32 @gmx_fio_getftp(i32 %fp) #8, !dbg !1321
  %3 = icmp eq i32 %2, 27, !dbg !1323
  br i1 %3, label %4, label %37, !dbg !1324

; <label>:4                                       ; preds = %0
  %5 = icmp eq i32 %bRead, 0, !dbg !1325
  br i1 %5, label %6, label %17, !dbg !1328

; <label>:6                                       ; preds = %4
  %7 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1329, !tbaa !1331
  %8 = sext i32 %key to i64, !dbg !1329
  %9 = getelementptr inbounds [7 x i8*]* @itemstr, i64 0, i64 %8, !dbg !1329
  %10 = load i8** %9, align 8, !dbg !1329, !tbaa !1331
  %11 = tail call i32 %7(i8* %10, i32 1, i32 7, i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 88) #8, !dbg !1329
  %12 = tail call i32 @gmx_fio_getdebug(i32 %fp) #8, !dbg !1332
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !385, metadata !1151), !dbg !1333
  tail call void @gmx_fio_setdebug(i32 %fp, i32 0) #8, !dbg !1334
  %13 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1335, !tbaa !1331
  %14 = getelementptr inbounds [7 x i8*]* @comment_str, i64 0, i64 %8, !dbg !1335
  %15 = load i8** %14, align 8, !dbg !1335, !tbaa !1331
  %16 = tail call i32 %13(i8* %15, i32 1, i32 7, i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 91) #8, !dbg !1335
  tail call void @gmx_fio_setdebug(i32 %fp, i32 %12) #8, !dbg !1336
  br label %37, !dbg !1337

; <label>:17                                      ; preds = %4
  %18 = tail call i32 @gmx_fio_getdebug(i32 %fp) #8, !dbg !1338
  %19 = icmp eq i32 %18, 0, !dbg !1338
  br i1 %19, label %..preheader_crit_edge, label %20, !dbg !1341

..preheader_crit_edge:                            ; preds = %17
  %.pre1 = sext i32 %key to i64, !dbg !1342
  %.pre2 = getelementptr inbounds [7 x i8*]* @itemstr, i64 0, i64 %.pre1, !dbg !1342
  br label %.preheader, !dbg !1341

; <label>:20                                      ; preds = %17
  %21 = load %struct.__sFILE** @__stderrp, align 8, !dbg !1343, !tbaa !1331
  %22 = sext i32 %key to i64, !dbg !1344
  %23 = getelementptr inbounds [7 x i8*]* @itemstr, i64 0, i64 %22, !dbg !1344
  %24 = load i8** %23, align 8, !dbg !1344, !tbaa !1331
  %25 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([32 x i8]* @.str3, i64 0, i64 0), i8* %24, i8* %src, i32 %line) #8, !dbg !1345
  br label %.preheader, !dbg !1345

.preheader:                                       ; preds = %..preheader_crit_edge, %20
  %.pre-phi3 = phi i8** [ %.pre2, %..preheader_crit_edge ], [ %23, %20 ], !dbg !1342
  br label %26, !dbg !1346

; <label>:26                                      ; preds = %.preheader, %26
  %27 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1346, !tbaa !1331
  %28 = call i32 %27(i8* %1, i32 1, i32 7, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 100) #8, !dbg !1346
  %.pre = load i8** %.pre-phi3, align 8, !dbg !1342, !tbaa !1331
  %29 = call i32 @strcasecmp(i8* %1, i8* %.pre) #8, !dbg !1348
  %30 = icmp eq i32 %29, 0, !dbg !1349
  br i1 %30, label %31, label %26, !dbg !1350

; <label>:31                                      ; preds = %26
  %32 = call i32 @gmx_fio_getdebug(i32 %fp) #8, !dbg !1351
  %33 = icmp eq i32 %32, 0, !dbg !1351
  br i1 %33, label %37, label %34, !dbg !1354

; <label>:34                                      ; preds = %31
  %35 = load %struct.__sFILE** @__stderrp, align 8, !dbg !1355, !tbaa !1331
  %36 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %35), !dbg !1356
  br label %37, !dbg !1356

; <label>:37                                      ; preds = %31, %6, %34, %0
  call void @llvm.lifetime.end(i64 4096, i8* %1) #5, !dbg !1357
  ret void, !dbg !1357
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i32 @gmx_fio_getftp(i32) #2

; Function Attrs: optsize
declare i32 @gmx_fio_getdebug(i32) #2

; Function Attrs: optsize
declare void @gmx_fio_setdebug(i32, i32) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #6

; Function Attrs: nounwind optsize readonly
declare i32 @strcasecmp(i8* nocapture, i8* nocapture) #7

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @do_iparams(i32 %ftype, %union.t_iparams* %iparams, i32 %bRead) #4 {
  %buf = alloca [128 x i8], align 16
  tail call void @llvm.dbg.value(metadata i32 %ftype, i64 0, metadata !505, metadata !1151), !dbg !1358
  tail call void @llvm.dbg.value(metadata %union.t_iparams* %iparams, i64 0, metadata !506, metadata !1151), !dbg !1359
  tail call void @llvm.dbg.value(metadata i32 %bRead, i64 0, metadata !507, metadata !1151), !dbg !1360
  %1 = icmp ne i32 %bRead, 0, !dbg !1361
  br i1 %1, label %6, label %2, !dbg !1363

; <label>:2                                       ; preds = %0
  %3 = sext i32 %ftype to i64, !dbg !1364
  %4 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %3, i32 0, !dbg !1365
  %5 = load i8** %4, align 8, !dbg !1365, !tbaa !1366
  tail call void @set_comment(i8* %5) #8, !dbg !1369
  br label %6, !dbg !1369

; <label>:6                                       ; preds = %2, %0
  switch i32 %ftype, label %479 [
    i32 6, label %9
    i32 7, label %9
    i32 0, label %9
    i32 1, label %9
    i32 5, label %9
    i32 10, label %9
    i32 25, label %9
    i32 26, label %9
    i32 14, label %43
    i32 2, label %68
    i32 3, label %93
    i32 4, label %do_harm.exit
    i32 19, label %118
    i32 13, label %167
    i32 11, label %184
    i32 8, label %217
    i32 21, label %258
    i32 23, label %307
    i32 20, label %356
    i32 9, label %.preheader
    i32 27, label %394
    i32 28, label %394
    i32 29, label %411
    i32 30, label %428
    i32 31, label %437
    i32 32, label %437
    i32 33, label %437
    i32 34, label %454
    i32 35, label %454
  ], !dbg !1370

.preheader:                                       ; preds = %6
  %7 = getelementptr inbounds [128 x i8]* %buf, i64 0, i64 0, !dbg !1371
  %8 = bitcast %union.t_iparams* %iparams to [6 x float]*, !dbg !1371
  br label %373, !dbg !1372

; <label>:9                                       ; preds = %6, %6, %6, %6, %6, %6, %6, %6
  tail call void @llvm.dbg.value(metadata %union.t_iparams* %iparams, i64 0, metadata !876, metadata !1151) #5, !dbg !1373
  tail call void @llvm.dbg.value(metadata i32 %bRead, i64 0, metadata !877, metadata !1151) #5, !dbg !1375
  %10 = icmp eq i32 %bRead, 0, !dbg !1376
  br i1 %10, label %27, label %11, !dbg !1376

; <label>:11                                      ; preds = %9
  %12 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1376, !tbaa !1331
  %13 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1376
  %14 = tail call i32 %12(i8* %13, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 368) #8, !dbg !1376
  %15 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1377, !tbaa !1331
  %16 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1377
  %17 = bitcast float* %16 to i8*, !dbg !1377
  %18 = tail call i32 %15(i8* %17, i32 1, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 369) #8, !dbg !1377
  %19 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1378, !tbaa !1331
  %20 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !1378
  %21 = bitcast float* %20 to i8*, !dbg !1378
  %22 = tail call i32 %19(i8* %21, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str63, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 370) #8, !dbg !1378
  %23 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1379, !tbaa !1331
  %24 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3, !dbg !1379
  %25 = bitcast float* %24 to i8*, !dbg !1379
  %26 = tail call i32 %23(i8* %25, i32 1, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str64, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 371) #8, !dbg !1379
  br label %do_harm.exit, !dbg !1379

; <label>:27                                      ; preds = %9
  %28 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1376, !tbaa !1331
  %29 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1376
  %30 = tail call i32 %28(i8* %29, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 368) #8, !dbg !1376
  %31 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1377, !tbaa !1331
  %32 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1377
  %33 = bitcast float* %32 to i8*, !dbg !1377
  %34 = tail call i32 %31(i8* %33, i32 1, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 369) #8, !dbg !1377
  %35 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1378, !tbaa !1331
  %36 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !1378
  %37 = bitcast float* %36 to i8*, !dbg !1378
  %38 = tail call i32 %35(i8* %37, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str63, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 370) #8, !dbg !1378
  %39 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1379, !tbaa !1331
  %40 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3, !dbg !1379
  %41 = bitcast float* %40 to i8*, !dbg !1379
  %42 = tail call i32 %39(i8* %41, i32 1, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str64, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 371) #8, !dbg !1379
  br label %do_harm.exit, !dbg !1379

; <label>:43                                      ; preds = %6
  br i1 %1, label %44, label %56, !dbg !1380

; <label>:44                                      ; preds = %43
  %45 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1380, !tbaa !1331
  %46 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1380
  %47 = tail call i32 %45(i8* %46, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 393) #8, !dbg !1380
  %48 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1381, !tbaa !1331
  %49 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1381
  %50 = bitcast float* %49 to i8*, !dbg !1381
  %51 = tail call i32 %48(i8* %50, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 394) #8, !dbg !1381
  %52 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1382, !tbaa !1331
  %53 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !1382
  %54 = bitcast float* %53 to i8*, !dbg !1382
  %55 = tail call i32 %52(i8* %54, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 395) #8, !dbg !1382
  br label %do_harm.exit.thread, !dbg !1382

; <label>:56                                      ; preds = %43
  %57 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1380, !tbaa !1331
  %58 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1380
  %59 = tail call i32 %57(i8* %58, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 393) #8, !dbg !1380
  %60 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1381, !tbaa !1331
  %61 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1381
  %62 = bitcast float* %61 to i8*, !dbg !1381
  %63 = tail call i32 %60(i8* %62, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 394) #8, !dbg !1381
  %64 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1382, !tbaa !1331
  %65 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !1382
  %66 = bitcast float* %65 to i8*, !dbg !1382
  %67 = tail call i32 %64(i8* %66, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 395) #8, !dbg !1382
  br label %do_harm.exit.thread2, !dbg !1382

; <label>:68                                      ; preds = %6
  br i1 %1, label %69, label %81, !dbg !1383

; <label>:69                                      ; preds = %68
  %70 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1383, !tbaa !1331
  %71 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1383
  %72 = tail call i32 %70(i8* %71, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 398) #8, !dbg !1383
  %73 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1384, !tbaa !1331
  %74 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1384
  %75 = bitcast float* %74 to i8*, !dbg !1384
  %76 = tail call i32 %73(i8* %75, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 399) #8, !dbg !1384
  %77 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1385, !tbaa !1331
  %78 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !1385
  %79 = bitcast float* %78 to i8*, !dbg !1385
  %80 = tail call i32 %77(i8* %79, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 400) #8, !dbg !1385
  br label %do_harm.exit.thread, !dbg !1385

; <label>:81                                      ; preds = %68
  %82 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1383, !tbaa !1331
  %83 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1383
  %84 = tail call i32 %82(i8* %83, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 398) #8, !dbg !1383
  %85 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1384, !tbaa !1331
  %86 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1384
  %87 = bitcast float* %86 to i8*, !dbg !1384
  %88 = tail call i32 %85(i8* %87, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 399) #8, !dbg !1384
  %89 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1385, !tbaa !1331
  %90 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !1385
  %91 = bitcast float* %90 to i8*, !dbg !1385
  %92 = tail call i32 %89(i8* %91, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 400) #8, !dbg !1385
  br label %do_harm.exit.thread2, !dbg !1385

; <label>:93                                      ; preds = %6
  br i1 %1, label %94, label %106, !dbg !1386

; <label>:94                                      ; preds = %93
  %95 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1386, !tbaa !1331
  %96 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1386
  %97 = tail call i32 %95(i8* %96, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 403) #8, !dbg !1386
  %98 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1387, !tbaa !1331
  %99 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1387
  %100 = bitcast float* %99 to i8*, !dbg !1387
  %101 = tail call i32 %98(i8* %100, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 404) #8, !dbg !1387
  %102 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1388, !tbaa !1331
  %103 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !1388
  %104 = bitcast float* %103 to i8*, !dbg !1388
  %105 = tail call i32 %102(i8* %104, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 405) #8, !dbg !1388
  br label %do_harm.exit.thread, !dbg !1388

; <label>:106                                     ; preds = %93
  %107 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1386, !tbaa !1331
  %108 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1386
  %109 = tail call i32 %107(i8* %108, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 403) #8, !dbg !1386
  %110 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1387, !tbaa !1331
  %111 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1387
  %112 = bitcast float* %111 to i8*, !dbg !1387
  %113 = tail call i32 %110(i8* %112, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 404) #8, !dbg !1387
  %114 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1388, !tbaa !1331
  %115 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !1388
  %116 = bitcast float* %115 to i8*, !dbg !1388
  %117 = tail call i32 %114(i8* %116, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 405) #8, !dbg !1388
  br label %do_harm.exit.thread2, !dbg !1388

; <label>:118                                     ; preds = %6
  br i1 %1, label %119, label %143, !dbg !1389

; <label>:119                                     ; preds = %118
  %120 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1389, !tbaa !1331
  %121 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1389
  %122 = tail call i32 %120(i8* %121, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 410) #8, !dbg !1389
  %123 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1390, !tbaa !1331
  %124 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1390
  %125 = bitcast float* %124 to i8*, !dbg !1390
  %126 = tail call i32 %123(i8* %125, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 411) #8, !dbg !1390
  %127 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1391, !tbaa !1331
  %128 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !1391
  %129 = bitcast float* %128 to i8*, !dbg !1391
  %130 = tail call i32 %127(i8* %129, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 412) #8, !dbg !1391
  %131 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1392, !tbaa !1331
  %132 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3, !dbg !1392
  %133 = bitcast float* %132 to i8*, !dbg !1392
  %134 = tail call i32 %131(i8* %133, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 413) #8, !dbg !1392
  %135 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1393, !tbaa !1331
  %136 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4, !dbg !1393
  %137 = bitcast float* %136 to i8*, !dbg !1393
  %138 = tail call i32 %135(i8* %137, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 414) #8, !dbg !1393
  %139 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1394, !tbaa !1331
  %140 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5, !dbg !1394
  %141 = bitcast float* %140 to i8*, !dbg !1394
  %142 = tail call i32 %139(i8* %141, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 415) #8, !dbg !1394
  br label %do_harm.exit.thread, !dbg !1394

; <label>:143                                     ; preds = %118
  %144 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1389, !tbaa !1331
  %145 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1389
  %146 = tail call i32 %144(i8* %145, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 410) #8, !dbg !1389
  %147 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1390, !tbaa !1331
  %148 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1390
  %149 = bitcast float* %148 to i8*, !dbg !1390
  %150 = tail call i32 %147(i8* %149, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 411) #8, !dbg !1390
  %151 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1391, !tbaa !1331
  %152 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !1391
  %153 = bitcast float* %152 to i8*, !dbg !1391
  %154 = tail call i32 %151(i8* %153, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 412) #8, !dbg !1391
  %155 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1392, !tbaa !1331
  %156 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3, !dbg !1392
  %157 = bitcast float* %156 to i8*, !dbg !1392
  %158 = tail call i32 %155(i8* %157, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 413) #8, !dbg !1392
  %159 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1393, !tbaa !1331
  %160 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4, !dbg !1393
  %161 = bitcast float* %160 to i8*, !dbg !1393
  %162 = tail call i32 %159(i8* %161, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 414) #8, !dbg !1393
  %163 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1394, !tbaa !1331
  %164 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5, !dbg !1394
  %165 = bitcast float* %164 to i8*, !dbg !1394
  %166 = tail call i32 %163(i8* %165, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 415) #8, !dbg !1394
  br label %do_harm.exit.thread2, !dbg !1394

; <label>:167                                     ; preds = %6
  br i1 %1, label %168, label %176, !dbg !1395

; <label>:168                                     ; preds = %167
  %169 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1395, !tbaa !1331
  %170 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1395
  %171 = tail call i32 %169(i8* %170, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 418) #8, !dbg !1395
  %172 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1396, !tbaa !1331
  %173 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1396
  %174 = bitcast float* %173 to i8*, !dbg !1396
  %175 = tail call i32 %172(i8* %174, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 419) #8, !dbg !1396
  br label %do_harm.exit.thread, !dbg !1396

; <label>:176                                     ; preds = %167
  %177 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1395, !tbaa !1331
  %178 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1395
  %179 = tail call i32 %177(i8* %178, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 418) #8, !dbg !1395
  %180 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1396, !tbaa !1331
  %181 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1396
  %182 = bitcast float* %181 to i8*, !dbg !1396
  %183 = tail call i32 %180(i8* %182, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 419) #8, !dbg !1396
  br label %do_harm.exit.thread2, !dbg !1396

; <label>:184                                     ; preds = %6
  br i1 %1, label %185, label %201, !dbg !1397

; <label>:185                                     ; preds = %184
  %186 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1397, !tbaa !1331
  %187 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1397
  %188 = tail call i32 %186(i8* %187, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 422) #8, !dbg !1397
  %189 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1398, !tbaa !1331
  %190 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1398
  %191 = bitcast float* %190 to i8*, !dbg !1398
  %192 = tail call i32 %189(i8* %191, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 423) #8, !dbg !1398
  %193 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1399, !tbaa !1331
  %194 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !1399
  %195 = bitcast float* %194 to i8*, !dbg !1399
  %196 = tail call i32 %193(i8* %195, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 424) #8, !dbg !1399
  %197 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1400, !tbaa !1331
  %198 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3, !dbg !1400
  %199 = bitcast float* %198 to i8*, !dbg !1400
  %200 = tail call i32 %197(i8* %199, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 425) #8, !dbg !1400
  br label %do_harm.exit.thread, !dbg !1400

; <label>:201                                     ; preds = %184
  %202 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1397, !tbaa !1331
  %203 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1397
  %204 = tail call i32 %202(i8* %203, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 422) #8, !dbg !1397
  %205 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1398, !tbaa !1331
  %206 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1398
  %207 = bitcast float* %206 to i8*, !dbg !1398
  %208 = tail call i32 %205(i8* %207, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 423) #8, !dbg !1398
  %209 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1399, !tbaa !1331
  %210 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !1399
  %211 = bitcast float* %210 to i8*, !dbg !1399
  %212 = tail call i32 %209(i8* %211, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 424) #8, !dbg !1399
  %213 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1400, !tbaa !1331
  %214 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3, !dbg !1400
  %215 = bitcast float* %214 to i8*, !dbg !1400
  %216 = tail call i32 %213(i8* %215, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 425) #8, !dbg !1400
  br label %do_harm.exit.thread2, !dbg !1400

; <label>:217                                     ; preds = %6
  br i1 %1, label %218, label %238, !dbg !1401

; <label>:218                                     ; preds = %217
  %219 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1401, !tbaa !1331
  %220 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1401
  %221 = tail call i32 %219(i8* %220, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 428) #8, !dbg !1401
  %222 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1402, !tbaa !1331
  %223 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1402
  %224 = bitcast float* %223 to i8*, !dbg !1402
  %225 = tail call i32 %222(i8* %224, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 429) #8, !dbg !1402
  %226 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1403, !tbaa !1331
  %227 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3, !dbg !1403
  %228 = bitcast float* %227 to i8*, !dbg !1403
  %229 = tail call i32 %226(i8* %228, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 430) #8, !dbg !1403
  %230 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1404, !tbaa !1331
  %231 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4, !dbg !1404
  %232 = bitcast float* %231 to i8*, !dbg !1404
  %233 = tail call i32 %230(i8* %232, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 431) #8, !dbg !1404
  %234 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1405, !tbaa !1331
  %235 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !1405
  %236 = bitcast float* %235 to i8*, !dbg !1405
  %237 = tail call i32 %234(i8* %236, i32 1, i32 1, i8* getelementptr inbounds ([20 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 432) #8, !dbg !1405
  br label %do_harm.exit.thread, !dbg !1405

; <label>:238                                     ; preds = %217
  %239 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1401, !tbaa !1331
  %240 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1401
  %241 = tail call i32 %239(i8* %240, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 428) #8, !dbg !1401
  %242 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1402, !tbaa !1331
  %243 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1402
  %244 = bitcast float* %243 to i8*, !dbg !1402
  %245 = tail call i32 %242(i8* %244, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 429) #8, !dbg !1402
  %246 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1403, !tbaa !1331
  %247 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3, !dbg !1403
  %248 = bitcast float* %247 to i8*, !dbg !1403
  %249 = tail call i32 %246(i8* %248, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 430) #8, !dbg !1403
  %250 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1404, !tbaa !1331
  %251 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4, !dbg !1404
  %252 = bitcast float* %251 to i8*, !dbg !1404
  %253 = tail call i32 %250(i8* %252, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 431) #8, !dbg !1404
  %254 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1405, !tbaa !1331
  %255 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !1405
  %256 = bitcast float* %255 to i8*, !dbg !1405
  %257 = tail call i32 %254(i8* %256, i32 1, i32 1, i8* getelementptr inbounds ([20 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 432) #8, !dbg !1405
  br label %do_harm.exit.thread2, !dbg !1405

; <label>:258                                     ; preds = %6
  br i1 %1, label %259, label %283, !dbg !1406

; <label>:259                                     ; preds = %258
  %260 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1406, !tbaa !1331
  %261 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5, !dbg !1406
  %262 = bitcast float* %261 to i8*, !dbg !1406
  %263 = tail call i32 %260(i8* %262, i32 1, i32 1, i8* getelementptr inbounds ([22 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 435) #8, !dbg !1406
  %264 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1407, !tbaa !1331
  %265 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4, !dbg !1407
  %266 = bitcast float* %265 to i8*, !dbg !1407
  %267 = tail call i32 %264(i8* %266, i32 1, i32 1, i8* getelementptr inbounds ([21 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 436) #8, !dbg !1407
  %268 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1408, !tbaa !1331
  %269 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1408
  %270 = tail call i32 %268(i8* %269, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 437) #8, !dbg !1408
  %271 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1409, !tbaa !1331
  %272 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1409
  %273 = bitcast float* %272 to i8*, !dbg !1409
  %274 = tail call i32 %271(i8* %273, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 438) #8, !dbg !1409
  %275 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1410, !tbaa !1331
  %276 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !1410
  %277 = bitcast float* %276 to i8*, !dbg !1410
  %278 = tail call i32 %275(i8* %277, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 439) #8, !dbg !1410
  %279 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1411, !tbaa !1331
  %280 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3, !dbg !1411
  %281 = bitcast float* %280 to i8*, !dbg !1411
  %282 = tail call i32 %279(i8* %281, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 440) #8, !dbg !1411
  br label %do_harm.exit.thread, !dbg !1411

; <label>:283                                     ; preds = %258
  %284 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1406, !tbaa !1331
  %285 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5, !dbg !1406
  %286 = bitcast float* %285 to i8*, !dbg !1406
  %287 = tail call i32 %284(i8* %286, i32 1, i32 1, i8* getelementptr inbounds ([22 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 435) #8, !dbg !1406
  %288 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1407, !tbaa !1331
  %289 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4, !dbg !1407
  %290 = bitcast float* %289 to i8*, !dbg !1407
  %291 = tail call i32 %288(i8* %290, i32 1, i32 1, i8* getelementptr inbounds ([21 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 436) #8, !dbg !1407
  %292 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1408, !tbaa !1331
  %293 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1408
  %294 = tail call i32 %292(i8* %293, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 437) #8, !dbg !1408
  %295 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1409, !tbaa !1331
  %296 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1409
  %297 = bitcast float* %296 to i8*, !dbg !1409
  %298 = tail call i32 %295(i8* %297, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 438) #8, !dbg !1409
  %299 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1410, !tbaa !1331
  %300 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !1410
  %301 = bitcast float* %300 to i8*, !dbg !1410
  %302 = tail call i32 %299(i8* %301, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 439) #8, !dbg !1410
  %303 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1411, !tbaa !1331
  %304 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3, !dbg !1411
  %305 = bitcast float* %304 to i8*, !dbg !1411
  %306 = tail call i32 %303(i8* %305, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 440) #8, !dbg !1411
  br label %do_harm.exit.thread2, !dbg !1411

; <label>:307                                     ; preds = %6
  br i1 %1, label %308, label %332, !dbg !1412

; <label>:308                                     ; preds = %307
  %309 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1412, !tbaa !1331
  %310 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1412
  %311 = tail call i32 %309(i8* %310, i32 1, i32 1, i8* getelementptr inbounds ([19 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 443) #8, !dbg !1412
  %312 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1413, !tbaa !1331
  %313 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !1413
  %314 = bitcast float* %313 to i8*, !dbg !1413
  %315 = tail call i32 %312(i8* %314, i32 1, i32 1, i8* getelementptr inbounds ([22 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 444) #8, !dbg !1413
  %316 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1414, !tbaa !1331
  %317 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1414
  %318 = bitcast float* %317 to i8*, !dbg !1414
  %319 = tail call i32 %316(i8* %318, i32 1, i32 1, i8* getelementptr inbounds ([20 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 445) #8, !dbg !1414
  %320 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1415, !tbaa !1331
  %321 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3, !dbg !1415
  %322 = bitcast float* %321 to i8*, !dbg !1415
  %323 = tail call i32 %320(i8* %322, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 446) #8, !dbg !1415
  %324 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1416, !tbaa !1331
  %325 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4, !dbg !1416
  %326 = bitcast float* %325 to i8*, !dbg !1416
  %327 = tail call i32 %324(i8* %326, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 447) #8, !dbg !1416
  %328 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1417, !tbaa !1331
  %329 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5, !dbg !1417
  %330 = bitcast float* %329 to i8*, !dbg !1417
  %331 = tail call i32 %328(i8* %330, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 448) #8, !dbg !1417
  br label %do_harm.exit.thread, !dbg !1417

; <label>:332                                     ; preds = %307
  %333 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1412, !tbaa !1331
  %334 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1412
  %335 = tail call i32 %333(i8* %334, i32 1, i32 1, i8* getelementptr inbounds ([19 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 443) #8, !dbg !1412
  %336 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1413, !tbaa !1331
  %337 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !1413
  %338 = bitcast float* %337 to i8*, !dbg !1413
  %339 = tail call i32 %336(i8* %338, i32 1, i32 1, i8* getelementptr inbounds ([22 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 444) #8, !dbg !1413
  %340 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1414, !tbaa !1331
  %341 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1414
  %342 = bitcast float* %341 to i8*, !dbg !1414
  %343 = tail call i32 %340(i8* %342, i32 1, i32 1, i8* getelementptr inbounds ([20 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 445) #8, !dbg !1414
  %344 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1415, !tbaa !1331
  %345 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3, !dbg !1415
  %346 = bitcast float* %345 to i8*, !dbg !1415
  %347 = tail call i32 %344(i8* %346, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 446) #8, !dbg !1415
  %348 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1416, !tbaa !1331
  %349 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4, !dbg !1416
  %350 = bitcast float* %349 to i8*, !dbg !1416
  %351 = tail call i32 %348(i8* %350, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 447) #8, !dbg !1416
  %352 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1417, !tbaa !1331
  %353 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5, !dbg !1417
  %354 = bitcast float* %353 to i8*, !dbg !1417
  %355 = tail call i32 %352(i8* %354, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 448) #8, !dbg !1417
  br label %do_harm.exit.thread2, !dbg !1417

; <label>:356                                     ; preds = %6
  br i1 %1, label %357, label %365, !dbg !1418

; <label>:357                                     ; preds = %356
  %358 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1418, !tbaa !1331
  %359 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1418
  %360 = tail call i32 %358(i8* %359, i32 1, i32 4, i8* getelementptr inbounds ([21 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 451) #8, !dbg !1418
  %361 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1419, !tbaa !1331
  %362 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3, !dbg !1419
  %363 = bitcast float* %362 to i8*, !dbg !1419
  %364 = tail call i32 %361(i8* %363, i32 1, i32 4, i8* getelementptr inbounds ([19 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 452) #8, !dbg !1419
  br label %do_harm.exit.thread, !dbg !1419

; <label>:365                                     ; preds = %356
  %366 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1418, !tbaa !1331
  %367 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1418
  %368 = tail call i32 %366(i8* %367, i32 1, i32 4, i8* getelementptr inbounds ([21 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 451) #8, !dbg !1418
  %369 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1419, !tbaa !1331
  %370 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3, !dbg !1419
  %371 = bitcast float* %370 to i8*, !dbg !1419
  %372 = tail call i32 %369(i8* %371, i32 1, i32 4, i8* getelementptr inbounds ([19 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 452) #8, !dbg !1419
  br label %do_harm.exit.thread2, !dbg !1419

; <label>:373                                     ; preds = %391, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %391 ]
  %bDum.04 = phi i32 [ 1, %.preheader ], [ %393, %391 ]
  call void @llvm.lifetime.start(i64 128, i8* %7) #5, !dbg !1371
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf, metadata !510, metadata !1151), !dbg !1371
  %374 = trunc i64 %indvars.iv to i32, !dbg !1371
  %375 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %7, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str48, i64 0, i64 0), i32 %374) #8, !dbg !1371
  %376 = icmp eq i32 %bDum.04, 0, !dbg !1371
  br i1 %376, label %391, label %377, !dbg !1371

; <label>:377                                     ; preds = %373
  br i1 %1, label %378, label %383, !dbg !1371

; <label>:378                                     ; preds = %377
  %379 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1371, !tbaa !1331
  %380 = getelementptr inbounds [6 x float]* %8, i64 0, i64 %indvars.iv, !dbg !1371
  %381 = bitcast float* %380 to i8*, !dbg !1371
  %382 = call i32 %379(i8* %381, i32 1, i32 0, i8* %7, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 455) #8, !dbg !1371
  br label %388, !dbg !1371

; <label>:383                                     ; preds = %377
  %384 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1371, !tbaa !1331
  %385 = getelementptr inbounds [6 x float]* %8, i64 0, i64 %indvars.iv, !dbg !1371
  %386 = bitcast float* %385 to i8*, !dbg !1371
  %387 = call i32 %384(i8* %386, i32 1, i32 0, i8* %7, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 455) #8, !dbg !1371
  br label %388, !dbg !1371

; <label>:388                                     ; preds = %383, %378
  %389 = phi i32 [ %382, %378 ], [ %387, %383 ], !dbg !1371
  %390 = icmp ne i32 %389, 0, !dbg !1371
  br label %391

; <label>:391                                     ; preds = %373, %388
  %392 = phi i1 [ false, %373 ], [ %390, %388 ]
  %393 = zext i1 %392 to i32, !dbg !1371
  call void @llvm.dbg.value(metadata i32 %393, i64 0, metadata !509, metadata !1151), !dbg !1420
  call void @llvm.lifetime.end(i64 128, i8* %7) #5, !dbg !1421
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1372
  %exitcond = icmp eq i64 %indvars.iv.next, 6, !dbg !1372
  br i1 %exitcond, label %do_harm.exit, label %373, !dbg !1372

; <label>:394                                     ; preds = %6, %6
  br i1 %1, label %395, label %403, !dbg !1422

; <label>:395                                     ; preds = %394
  %396 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1422, !tbaa !1331
  %397 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1422
  %398 = tail call i32 %396(i8* %397, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 459) #8, !dbg !1422
  %399 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1423, !tbaa !1331
  %400 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1423
  %401 = bitcast float* %400 to i8*, !dbg !1423
  %402 = tail call i32 %399(i8* %401, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 460) #8, !dbg !1423
  br label %do_harm.exit.thread, !dbg !1423

; <label>:403                                     ; preds = %394
  %404 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1422, !tbaa !1331
  %405 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1422
  %406 = tail call i32 %404(i8* %405, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 459) #8, !dbg !1422
  %407 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1423, !tbaa !1331
  %408 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1423
  %409 = bitcast float* %408 to i8*, !dbg !1423
  %410 = tail call i32 %407(i8* %409, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 460) #8, !dbg !1423
  br label %do_harm.exit.thread2, !dbg !1423

; <label>:411                                     ; preds = %6
  br i1 %1, label %412, label %420, !dbg !1424

; <label>:412                                     ; preds = %411
  %413 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1424, !tbaa !1331
  %414 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1424
  %415 = tail call i32 %413(i8* %414, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 463) #8, !dbg !1424
  %416 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1425, !tbaa !1331
  %417 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1425
  %418 = bitcast float* %417 to i8*, !dbg !1425
  %419 = tail call i32 %416(i8* %418, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str52, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 464) #8, !dbg !1425
  br label %do_harm.exit.thread, !dbg !1425

; <label>:420                                     ; preds = %411
  %421 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1424, !tbaa !1331
  %422 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1424
  %423 = tail call i32 %421(i8* %422, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 463) #8, !dbg !1424
  %424 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1425, !tbaa !1331
  %425 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1425
  %426 = bitcast float* %425 to i8*, !dbg !1425
  %427 = tail call i32 %424(i8* %426, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str52, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 464) #8, !dbg !1425
  br label %do_harm.exit.thread2, !dbg !1425

; <label>:428                                     ; preds = %6
  br i1 %1, label %429, label %433, !dbg !1426

; <label>:429                                     ; preds = %428
  %430 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1426, !tbaa !1331
  %431 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1426
  %432 = tail call i32 %430(i8* %431, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 467) #8, !dbg !1426
  br label %do_harm.exit.thread, !dbg !1426

; <label>:433                                     ; preds = %428
  %434 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1426, !tbaa !1331
  %435 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1426
  %436 = tail call i32 %434(i8* %435, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 467) #8, !dbg !1426
  br label %do_harm.exit.thread2, !dbg !1426

; <label>:437                                     ; preds = %6, %6, %6
  br i1 %1, label %438, label %446, !dbg !1427

; <label>:438                                     ; preds = %437
  %439 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1427, !tbaa !1331
  %440 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1427
  %441 = tail call i32 %439(i8* %440, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 472) #8, !dbg !1427
  %442 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1428, !tbaa !1331
  %443 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1428
  %444 = bitcast float* %443 to i8*, !dbg !1428
  %445 = tail call i32 %442(i8* %444, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 473) #8, !dbg !1428
  br label %do_harm.exit.thread, !dbg !1428

; <label>:446                                     ; preds = %437
  %447 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1427, !tbaa !1331
  %448 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1427
  %449 = tail call i32 %447(i8* %448, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 472) #8, !dbg !1427
  %450 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1428, !tbaa !1331
  %451 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1428
  %452 = bitcast float* %451 to i8*, !dbg !1428
  %453 = tail call i32 %450(i8* %452, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 473) #8, !dbg !1428
  br label %do_harm.exit.thread2, !dbg !1428

; <label>:454                                     ; preds = %6, %6
  br i1 %1, label %455, label %467, !dbg !1429

; <label>:455                                     ; preds = %454
  %456 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1429, !tbaa !1331
  %457 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1429
  %458 = tail call i32 %456(i8* %457, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 477) #8, !dbg !1429
  %459 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1430, !tbaa !1331
  %460 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1430
  %461 = bitcast float* %460 to i8*, !dbg !1430
  %462 = tail call i32 %459(i8* %461, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 478) #8, !dbg !1430
  %463 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1431, !tbaa !1331
  %464 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !1431
  %465 = bitcast float* %464 to i8*, !dbg !1431
  %466 = tail call i32 %463(i8* %465, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 479) #8, !dbg !1431
  br label %do_harm.exit.thread, !dbg !1431

; <label>:467                                     ; preds = %454
  %468 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1429, !tbaa !1331
  %469 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1429
  %470 = tail call i32 %468(i8* %469, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 477) #8, !dbg !1429
  %471 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1430, !tbaa !1331
  %472 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1430
  %473 = bitcast float* %472 to i8*, !dbg !1430
  %474 = tail call i32 %471(i8* %473, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 478) #8, !dbg !1430
  %475 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1431, !tbaa !1331
  %476 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !1431
  %477 = bitcast float* %476 to i8*, !dbg !1431
  %478 = tail call i32 %475(i8* %477, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 479) #8, !dbg !1431
  br label %do_harm.exit.thread2, !dbg !1431

; <label>:479                                     ; preds = %6
  %480 = sext i32 %ftype to i64, !dbg !1432
  %481 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %480, i32 0, !dbg !1433
  %482 = load i8** %481, align 8, !dbg !1433, !tbaa !1366
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([44 x i8]* @.str56, i64 0, i64 0), i32 %ftype, i8* %482, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 483) #8, !dbg !1434
  br label %do_harm.exit, !dbg !1435

do_harm.exit:                                     ; preds = %391, %27, %11, %479, %6
  br i1 %1, label %do_harm.exit.thread, label %do_harm.exit.thread2, !dbg !1436

do_harm.exit.thread2:                             ; preds = %56, %81, %106, %143, %176, %201, %238, %283, %332, %365, %403, %420, %433, %446, %467, %do_harm.exit
  call void @unset_comment() #8, !dbg !1437
  br label %do_harm.exit.thread, !dbg !1437

do_harm.exit.thread:                              ; preds = %44, %69, %94, %119, %168, %185, %218, %259, %308, %357, %395, %412, %429, %438, %455, %do_harm.exit.thread2, %do_harm.exit
  ret void, !dbg !1439
}

; Function Attrs: optsize
declare void @set_comment(i8*) #2

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #2

; Function Attrs: optsize
declare void @unset_comment() #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @open_tpx(i8* %fn, i8* %mode) #4 {
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !523, metadata !1151), !dbg !1440
  tail call void @llvm.dbg.value(metadata i8* %mode, i64 0, metadata !524, metadata !1151), !dbg !1441
  %1 = tail call i32 @gmx_fio_open(i8* %fn, i8* %mode) #8, !dbg !1442
  ret i32 %1, !dbg !1443
}

; Function Attrs: optsize
declare i32 @gmx_fio_open(i8*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @close_tpx(i32 %fp) #4 {
  tail call void @llvm.dbg.value(metadata i32 %fp, i64 0, metadata !529, metadata !1151), !dbg !1444
  tail call void @gmx_fio_close(i32 %fp) #8, !dbg !1445
  ret void, !dbg !1446
}

; Function Attrs: optsize
declare void @gmx_fio_close(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @read_tpxheader(i8* %fn, %struct.t_tpxheader* %tpx) #4 {
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !549, metadata !1151), !dbg !1447
  tail call void @llvm.dbg.value(metadata %struct.t_tpxheader* %tpx, i64 0, metadata !550, metadata !1151), !dbg !1448
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !523, metadata !1151) #5, !dbg !1449
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8]* @.str57, i64 0, i64 0), i64 0, metadata !524, metadata !1151) #5, !dbg !1451
  %1 = tail call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str57, i64 0, i64 0)) #8, !dbg !1452
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !551, metadata !1151), !dbg !1453
  tail call fastcc void @do_tpxheader(i32 %1, i32 1, %struct.t_tpxheader* %tpx) #10, !dbg !1454
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !529, metadata !1151) #5, !dbg !1455
  tail call void @gmx_fio_close(i32 %1) #8, !dbg !1457
  ret void, !dbg !1458
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @do_tpxheader(i32 %fp, i32 %bRead, %struct.t_tpxheader* %tpx) #4 {
  %buf = alloca [4096 x i8], align 16
  %precision = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32 %fp, i64 0, metadata !882, metadata !1151), !dbg !1459
  tail call void @llvm.dbg.value(metadata i32 %bRead, i64 0, metadata !883, metadata !1151), !dbg !1460
  tail call void @llvm.dbg.value(metadata %struct.t_tpxheader* %tpx, i64 0, metadata !884, metadata !1151), !dbg !1461
  %1 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0, !dbg !1462
  call void @llvm.lifetime.start(i64 4096, i8* %1) #5, !dbg !1462
  tail call void @llvm.dbg.declare(metadata [4096 x i8]* %buf, metadata !885, metadata !1151), !dbg !1463
  tail call void @gmx_fio_select(i32 %fp) #8, !dbg !1464
  %2 = tail call i32 @bDebugMode() #8, !dbg !1465
  tail call void @gmx_fio_setdebug(i32 %fp, i32 %2) #8, !dbg !1466
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !887, metadata !1151), !dbg !1467
  store i32 4, i32* %precision, align 4, !dbg !1468, !tbaa !1469
  %3 = icmp ne i32 %bRead, 0, !dbg !1470
  br i1 %3, label %4, label %24, !dbg !1472

; <label>:4                                       ; preds = %0
  %5 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1473, !tbaa !1331
  %6 = call i32 %5(i8* %1, i32 1, i32 7, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 736) #8, !dbg !1473
  %7 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([8 x i8]* @.str65, i64 0, i64 0), i64 7) #8, !dbg !1475
  %8 = icmp eq i32 %7, 0, !dbg !1475
  br i1 %8, label %11, label %9, !dbg !1477

; <label>:9                                       ; preds = %4
  %10 = call i8* @gmx_fio_getname(i32 %fp) #8, !dbg !1478
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([173 x i8]* @.str66, i64 0, i64 0), i8* %10) #8, !dbg !1479
  br label %11, !dbg !1479

; <label>:11                                      ; preds = %4, %9
  %12 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1480, !tbaa !1331
  %13 = bitcast i32* %precision to i8*, !dbg !1480
  %14 = call i32 %12(i8* %13, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 742) #8, !dbg !1480
  call void @llvm.dbg.value(metadata i32* %precision, i64 0, metadata !887, metadata !1151), !dbg !1467
  %15 = load i32* %precision, align 4, !dbg !1481, !tbaa !1469
  %16 = icmp eq i32 %15, 8, !dbg !1482
  %17 = zext i1 %16 to i32, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !886, metadata !1151), !dbg !1483
  switch i32 %15, label %18 [
    i32 8, label %21
    i32 4, label %21
  ], !dbg !1484

; <label>:18                                      ; preds = %11
  %19 = call i8* @gmx_fio_getname(i32 %fp) #8, !dbg !1486
  call void @llvm.dbg.value(metadata i32* %precision, i64 0, metadata !887, metadata !1151), !dbg !1467
  %20 = load i32* %precision, align 4, !dbg !1487, !tbaa !1469
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([67 x i8]* @.str68, i64 0, i64 0), i8* %19, i32 %20, i64 4, i64 8) #8, !dbg !1488
  br label %21, !dbg !1488

; <label>:21                                      ; preds = %11, %11, %18
  call void @gmx_fio_setprecision(i32 %fp, i32 %17) #8, !dbg !1489
  %22 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1490, !tbaa !1331
  %23 = call i32 %22(i8* bitcast (i32* @file_version to i8*), i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str70, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 763) #8, !dbg !1490
  br label %33, !dbg !1490

; <label>:24                                      ; preds = %0
  %25 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1491, !tbaa !1331
  %26 = tail call i8* @GromacsVersion() #8, !dbg !1491
  %27 = tail call i32 %25(i8* %26, i32 1, i32 7, i8* getelementptr inbounds ([17 x i8]* @.str69, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 755) #8, !dbg !1491
  tail call void @llvm.dbg.value(metadata i32* %precision, i64 0, metadata !887, metadata !1151), !dbg !1467
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !886, metadata !1151), !dbg !1483
  tail call void @gmx_fio_setprecision(i32 %fp, i32 0) #8, !dbg !1493
  %28 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1494, !tbaa !1331
  %29 = bitcast i32* %precision to i8*, !dbg !1494
  %30 = call i32 %28(i8* %29, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 758) #8, !dbg !1494
  store i32 24, i32* @file_version, align 4, !dbg !1495, !tbaa !1469
  %31 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1490, !tbaa !1331
  %32 = call i32 %31(i8* bitcast (i32* @file_version to i8*), i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str70, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 763) #8, !dbg !1490
  br label %33, !dbg !1490

; <label>:33                                      ; preds = %24, %21
  %34 = load i32* @file_version, align 4, !dbg !1496, !tbaa !1469
  %.off = add i32 %34, -10, !dbg !1498
  %35 = icmp ugt i32 %.off, 14, !dbg !1498
  br i1 %35, label %36, label %39, !dbg !1498

; <label>:36                                      ; preds = %33
  %37 = call i8* @gmx_fio_getname(i32 %fp) #8, !dbg !1499
  %38 = load i32* @file_version, align 4, !dbg !1500, !tbaa !1469
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([57 x i8]* @.str71, i64 0, i64 0), i8* %37, i32 %38, i32 24) #8, !dbg !1501
  br label %39, !dbg !1501

; <label>:39                                      ; preds = %33, %36
  call void @_do_section(i32 %fp, i32 0, i32 %bRead, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 769) #10, !dbg !1502
  br i1 %3, label %40, label %80, !dbg !1503

; <label>:40                                      ; preds = %39
  %41 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1503, !tbaa !1331
  %42 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 6, !dbg !1503
  %43 = bitcast i32* %42 to i8*, !dbg !1503
  %44 = call i32 %41(i8* %43, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str72, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 770) #8, !dbg !1503
  %45 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1504, !tbaa !1331
  %46 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 7, !dbg !1504
  %47 = bitcast i32* %46 to i8*, !dbg !1504
  %48 = call i32 %45(i8* %47, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str73, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 771) #8, !dbg !1504
  %49 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1505, !tbaa !1331
  %50 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 8, !dbg !1505
  %51 = bitcast float* %50 to i8*, !dbg !1505
  %52 = call i32 %49(i8* %51, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str74, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 772) #8, !dbg !1505
  %53 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1506, !tbaa !1331
  %54 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 9, !dbg !1506
  %55 = bitcast float* %54 to i8*, !dbg !1506
  %56 = call i32 %53(i8* %55, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str75, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 773) #8, !dbg !1506
  %57 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1507, !tbaa !1331
  %58 = bitcast %struct.t_tpxheader* %tpx to i8*, !dbg !1507
  %59 = call i32 %57(i8* %58, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str76, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 774) #8, !dbg !1507
  %60 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1508, !tbaa !1331
  %61 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 2, !dbg !1508
  %62 = bitcast i32* %61 to i8*, !dbg !1508
  %63 = call i32 %60(i8* %62, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str77, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 775) #8, !dbg !1508
  %64 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1509, !tbaa !1331
  %65 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 3, !dbg !1509
  %66 = bitcast i32* %65 to i8*, !dbg !1509
  %67 = call i32 %64(i8* %66, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str78, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 776) #8, !dbg !1509
  %68 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1510, !tbaa !1331
  %69 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 4, !dbg !1510
  %70 = bitcast i32* %69 to i8*, !dbg !1510
  %71 = call i32 %68(i8* %70, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str79, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 777) #8, !dbg !1510
  %72 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1511, !tbaa !1331
  %73 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 5, !dbg !1511
  %74 = bitcast i32* %73 to i8*, !dbg !1511
  %75 = call i32 %72(i8* %74, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str80, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 778) #8, !dbg !1511
  %76 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1512, !tbaa !1331
  %77 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 1, !dbg !1512
  %78 = bitcast i32* %77 to i8*, !dbg !1512
  %79 = call i32 %76(i8* %78, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str81, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 779) #8, !dbg !1512
  br label %120, !dbg !1512

; <label>:80                                      ; preds = %39
  %81 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1503, !tbaa !1331
  %82 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 6, !dbg !1503
  %83 = bitcast i32* %82 to i8*, !dbg !1503
  %84 = call i32 %81(i8* %83, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str72, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 770) #8, !dbg !1503
  %85 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1504, !tbaa !1331
  %86 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 7, !dbg !1504
  %87 = bitcast i32* %86 to i8*, !dbg !1504
  %88 = call i32 %85(i8* %87, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str73, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 771) #8, !dbg !1504
  %89 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1505, !tbaa !1331
  %90 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 8, !dbg !1505
  %91 = bitcast float* %90 to i8*, !dbg !1505
  %92 = call i32 %89(i8* %91, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str74, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 772) #8, !dbg !1505
  %93 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1506, !tbaa !1331
  %94 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 9, !dbg !1506
  %95 = bitcast float* %94 to i8*, !dbg !1506
  %96 = call i32 %93(i8* %95, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str75, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 773) #8, !dbg !1506
  %97 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1507, !tbaa !1331
  %98 = bitcast %struct.t_tpxheader* %tpx to i8*, !dbg !1507
  %99 = call i32 %97(i8* %98, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str76, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 774) #8, !dbg !1507
  %100 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1508, !tbaa !1331
  %101 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 2, !dbg !1508
  %102 = bitcast i32* %101 to i8*, !dbg !1508
  %103 = call i32 %100(i8* %102, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str77, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 775) #8, !dbg !1508
  %104 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1509, !tbaa !1331
  %105 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 3, !dbg !1509
  %106 = bitcast i32* %105 to i8*, !dbg !1509
  %107 = call i32 %104(i8* %106, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str78, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 776) #8, !dbg !1509
  %108 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1510, !tbaa !1331
  %109 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 4, !dbg !1510
  %110 = bitcast i32* %109 to i8*, !dbg !1510
  %111 = call i32 %108(i8* %110, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str79, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 777) #8, !dbg !1510
  %112 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1511, !tbaa !1331
  %113 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 5, !dbg !1511
  %114 = bitcast i32* %113 to i8*, !dbg !1511
  %115 = call i32 %112(i8* %114, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str80, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 778) #8, !dbg !1511
  %116 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1512, !tbaa !1331
  %117 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 1, !dbg !1512
  %118 = bitcast i32* %117 to i8*, !dbg !1512
  %119 = call i32 %116(i8* %118, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str81, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 779) #8, !dbg !1512
  br label %120, !dbg !1512

; <label>:120                                     ; preds = %80, %40
  call void @llvm.lifetime.end(i64 4096, i8* %1) #5, !dbg !1513
  ret void, !dbg !1513
}

; Function Attrs: nounwind optsize ssp uwtable
define void @write_tpx(i8* %fn, i32 %step, float %t, float %lambda, %struct.t_inputrec* %ir, [3 x float]* %box, i32 %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #4 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !788, metadata !1151), !dbg !1514
  tail call void @llvm.dbg.value(metadata i32 %step, i64 0, metadata !789, metadata !1151), !dbg !1515
  store i32 %step, i32* %1, align 4, !tbaa !1469
  tail call void @llvm.dbg.value(metadata float %t, i64 0, metadata !790, metadata !1151), !dbg !1516
  store float %t, float* %2, align 4, !tbaa !1279
  tail call void @llvm.dbg.value(metadata float %lambda, i64 0, metadata !791, metadata !1151), !dbg !1517
  store float %lambda, float* %3, align 4, !tbaa !1279
  tail call void @llvm.dbg.value(metadata %struct.t_inputrec* %ir, i64 0, metadata !792, metadata !1151), !dbg !1518
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !793, metadata !1151), !dbg !1519
  tail call void @llvm.dbg.value(metadata i32 %natoms, i64 0, metadata !794, metadata !1151), !dbg !1520
  store i32 %natoms, i32* %4, align 4, !tbaa !1469
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !795, metadata !1151), !dbg !1521
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !796, metadata !1151), !dbg !1522
  tail call void @llvm.dbg.value(metadata [3 x float]* %f, i64 0, metadata !797, metadata !1151), !dbg !1523
  tail call void @llvm.dbg.value(metadata %struct.t_topology* %top, i64 0, metadata !798, metadata !1151), !dbg !1524
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !523, metadata !1151) #5, !dbg !1525
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8]* @.str58, i64 0, i64 0), i64 0, metadata !524, metadata !1151) #5, !dbg !1527
  %5 = tail call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str58, i64 0, i64 0)) #8, !dbg !1528
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !799, metadata !1151), !dbg !1529
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !789, metadata !1151), !dbg !1515
  tail call void @llvm.dbg.value(metadata float* %2, i64 0, metadata !790, metadata !1151), !dbg !1516
  tail call void @llvm.dbg.value(metadata float* %3, i64 0, metadata !791, metadata !1151), !dbg !1517
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !794, metadata !1151), !dbg !1520
  call fastcc void @do_tpx(i32 %5, i32 0, i32* %1, float* %2, float* %3, %struct.t_inputrec* %ir, [3 x float]* %box, i32* %4, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #10, !dbg !1530
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !529, metadata !1151) #5, !dbg !1531
  tail call void @gmx_fio_close(i32 %5) #8, !dbg !1533
  ret void, !dbg !1534
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @do_tpx(i32 %fp, i32 %bRead, i32* nocapture %step, float* nocapture %t, float* nocapture %lambda, %struct.t_inputrec* %ir, [3 x float]* %box, i32* nocapture %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #4 {
  %tpx = alloca %struct.t_tpxheader, align 16
  %dum_ir = alloca %struct.t_inputrec, align 8
  %dum_top = alloca %struct.t_topology, align 8
  tail call void @llvm.dbg.value(metadata i32 %fp, i64 0, metadata !892, metadata !1151), !dbg !1535
  tail call void @llvm.dbg.value(metadata i32 %bRead, i64 0, metadata !893, metadata !1151), !dbg !1536
  tail call void @llvm.dbg.value(metadata i32* %step, i64 0, metadata !894, metadata !1151), !dbg !1537
  tail call void @llvm.dbg.value(metadata float* %t, i64 0, metadata !895, metadata !1151), !dbg !1538
  tail call void @llvm.dbg.value(metadata float* %lambda, i64 0, metadata !896, metadata !1151), !dbg !1539
  tail call void @llvm.dbg.value(metadata %struct.t_inputrec* %ir, i64 0, metadata !897, metadata !1151), !dbg !1540
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !898, metadata !1151), !dbg !1541
  tail call void @llvm.dbg.value(metadata i32* %natoms, i64 0, metadata !899, metadata !1151), !dbg !1542
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !900, metadata !1151), !dbg !1543
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !901, metadata !1151), !dbg !1544
  tail call void @llvm.dbg.value(metadata [3 x float]* %f, i64 0, metadata !902, metadata !1151), !dbg !1545
  tail call void @llvm.dbg.value(metadata %struct.t_topology* %top, i64 0, metadata !903, metadata !1151), !dbg !1546
  %1 = bitcast %struct.t_tpxheader* %tpx to i8*, !dbg !1547
  call void @llvm.lifetime.start(i64 40, i8* %1) #5, !dbg !1547
  %2 = bitcast %struct.t_inputrec* %dum_ir to i8*, !dbg !1548
  call void @llvm.lifetime.start(i64 592, i8* %2) #5, !dbg !1548
  %3 = bitcast %struct.t_topology* %dum_top to i8*, !dbg !1549
  call void @llvm.lifetime.start(i64 50264, i8* %3) #5, !dbg !1549
  %4 = icmp ne i32 %bRead, 0, !dbg !1550
  br i1 %4, label %34, label %.thread, !dbg !1552

.thread:                                          ; preds = %0
  %5 = load i32* %natoms, align 4, !dbg !1553, !tbaa !1469
  %6 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 6, !dbg !1555
  store i32 %5, i32* %6, align 8, !dbg !1556, !tbaa !1557
  %7 = load i32* %step, align 4, !dbg !1559, !tbaa !1469
  %8 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 7, !dbg !1560
  store i32 %7, i32* %8, align 4, !dbg !1561, !tbaa !1562
  %9 = bitcast float* %t to i32*, !dbg !1563
  %10 = load i32* %9, align 4, !dbg !1563, !tbaa !1279
  %11 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 8, !dbg !1564
  %12 = bitcast float* %11 to i32*, !dbg !1565
  store i32 %10, i32* %12, align 16, !dbg !1565, !tbaa !1566
  %13 = bitcast float* %lambda to i32*, !dbg !1567
  %14 = load i32* %13, align 4, !dbg !1567, !tbaa !1279
  %15 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 9, !dbg !1568
  %16 = bitcast float* %15 to i32*, !dbg !1569
  store i32 %14, i32* %16, align 4, !dbg !1569, !tbaa !1570
  %17 = icmp ne %struct.t_inputrec* %ir, null, !dbg !1571
  %18 = icmp ne %struct.t_topology* %top, null, !dbg !1572
  %19 = icmp ne [3 x float]* %x, null, !dbg !1573
  %20 = icmp ne [3 x float]* %v, null, !dbg !1574
  %21 = zext i1 %20 to i32, !dbg !1574
  %22 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 4, !dbg !1575
  store i32 %21, i32* %22, align 16, !dbg !1576, !tbaa !1577
  %23 = icmp ne [3 x float]* %f, null, !dbg !1578
  %24 = zext i1 %23 to i32, !dbg !1578
  %25 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 5, !dbg !1579
  store i32 %24, i32* %25, align 4, !dbg !1580, !tbaa !1581
  %26 = icmp ne [3 x float]* %box, null, !dbg !1582
  %27 = insertelement <4 x i1> undef, i1 %17, i32 0, !dbg !1571
  %28 = insertelement <4 x i1> %27, i1 %26, i32 1, !dbg !1571
  %29 = insertelement <4 x i1> %28, i1 %18, i32 2, !dbg !1571
  %30 = insertelement <4 x i1> %29, i1 %19, i32 3, !dbg !1571
  %31 = zext <4 x i1> %30 to <4 x i32>, !dbg !1571
  %32 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 1, !dbg !1583
  %33 = bitcast %struct.t_tpxheader* %tpx to <4 x i32>*, !dbg !1584
  store <4 x i32> %31, <4 x i32>* %33, align 16, !dbg !1584, !tbaa !1469
  tail call void @llvm.dbg.value(metadata %struct.t_tpxheader* %tpx, i64 0, metadata !904, metadata !1151), !dbg !1585
  call fastcc void @do_tpxheader(i32 %fp, i32 0, %struct.t_tpxheader* %tpx) #10, !dbg !1586
  br label %._crit_edge20, !dbg !1587

; <label>:34                                      ; preds = %0
  tail call void @llvm.dbg.value(metadata %struct.t_tpxheader* %tpx, i64 0, metadata !904, metadata !1151), !dbg !1585
  call fastcc void @do_tpxheader(i32 %fp, i32 %bRead, %struct.t_tpxheader* %tpx) #10, !dbg !1586
  %35 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 6, !dbg !1589
  %36 = load i32* %35, align 8, !dbg !1589, !tbaa !1557
  store i32 %36, i32* %natoms, align 4, !dbg !1592, !tbaa !1469
  %37 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 7, !dbg !1593
  %38 = load i32* %37, align 4, !dbg !1593, !tbaa !1562
  store i32 %38, i32* %step, align 4, !dbg !1594, !tbaa !1469
  %39 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 8, !dbg !1595
  %40 = bitcast float* %39 to i32*, !dbg !1595
  %41 = load i32* %40, align 16, !dbg !1595, !tbaa !1566
  %42 = bitcast float* %t to i32*, !dbg !1596
  store i32 %41, i32* %42, align 4, !dbg !1596, !tbaa !1279
  %43 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 9, !dbg !1597
  %44 = bitcast float* %43 to i32*, !dbg !1597
  %45 = load i32* %44, align 4, !dbg !1597, !tbaa !1570
  %46 = bitcast float* %lambda to i32*, !dbg !1598
  store i32 %45, i32* %46, align 4, !dbg !1598, !tbaa !1279
  %47 = icmp ne [3 x float]* %box, null, !dbg !1587
  %.pre = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 1, !dbg !1599
  %48 = load i32* %.pre, align 4
  %49 = icmp eq i32 %48, 0, !dbg !1587
  %or.cond = and i1 %47, %49, !dbg !1587
  br i1 %or.cond, label %50, label %._crit_edge20, !dbg !1587

; <label>:50                                      ; preds = %34
  %51 = call i8* @gmx_fio_getname(i32 %fp) #8, !dbg !1587
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([12 x i8]* @.str82, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str83, i64 0, i64 0), i8* %51) #8, !dbg !1587
  br label %._crit_edge20, !dbg !1587

._crit_edge20:                                    ; preds = %34, %.thread, %50
  %.pre-phi = phi i32* [ %32, %.thread ], [ %.pre, %50 ], [ %.pre, %34 ], !dbg !1599
  call void @_do_section(i32 %fp, i32 2, i32 %bRead, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 815) #10, !dbg !1601
  %52 = load i32* %.pre-phi, align 4, !dbg !1599, !tbaa !1602
  %53 = icmp eq i32 %52, 0, !dbg !1603
  br i1 %53, label %63, label %54, !dbg !1604

; <label>:54                                      ; preds = %._crit_edge20
  br i1 %4, label %55, label %.thread13, !dbg !1605

; <label>:55                                      ; preds = %54
  %56 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1605, !tbaa !1331
  %57 = bitcast [3 x float]* %box to i8*, !dbg !1605
  %58 = call i32 %56(i8* %57, i32 3, i32 5, i8* getelementptr inbounds ([4 x i8]* @.str83, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 816) #8, !dbg !1605
  br label %63, !dbg !1605

.thread13:                                        ; preds = %54
  %59 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1605, !tbaa !1331
  %60 = bitcast [3 x float]* %box to i8*, !dbg !1605
  %61 = call i32 %59(i8* %60, i32 3, i32 5, i8* getelementptr inbounds ([4 x i8]* @.str83, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 816) #8, !dbg !1605
  %62 = icmp ne %struct.t_inputrec* %ir, null, !dbg !1606
  br label %71, !dbg !1606

; <label>:63                                      ; preds = %._crit_edge20, %55
  %64 = icmp ne %struct.t_inputrec* %ir, null, !dbg !1606
  %or.cond3 = and i1 %4, %64, !dbg !1606
  br i1 %or.cond3, label %65, label %71, !dbg !1606

; <label>:65                                      ; preds = %63
  %66 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 0, !dbg !1606
  %67 = load i32* %66, align 16, !dbg !1606, !tbaa !1608
  %68 = icmp eq i32 %67, 0, !dbg !1606
  br i1 %68, label %69, label %71, !dbg !1609

; <label>:69                                      ; preds = %65
  %70 = call i8* @gmx_fio_getname(i32 %fp) #8, !dbg !1606
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([12 x i8]* @.str82, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str84, i64 0, i64 0), i8* %70) #8, !dbg !1606
  br label %71, !dbg !1606

; <label>:71                                      ; preds = %.thread13, %65, %69, %63
  %72 = phi i1 [ %62, %.thread13 ], [ true, %65 ], [ true, %69 ], [ %64, %63 ]
  call void @_do_section(i32 %fp, i32 1, i32 %bRead, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 819) #10, !dbg !1610
  %73 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 0, !dbg !1611
  %74 = load i32* %73, align 16, !dbg !1611, !tbaa !1608
  %75 = icmp eq i32 %74, 0, !dbg !1613
  br i1 %75, label %79, label %76, !dbg !1614

; <label>:76                                      ; preds = %71
  br i1 %72, label %77, label %78, !dbg !1615

; <label>:77                                      ; preds = %76
  call fastcc void @do_inputrec(%struct.t_inputrec* %ir, i32 %bRead) #10, !dbg !1617
  br label %79, !dbg !1617

; <label>:78                                      ; preds = %76
  call void @llvm.dbg.value(metadata %struct.t_inputrec* %dum_ir, i64 0, metadata !905, metadata !1151), !dbg !1619
  call void @init_inputrec(%struct.t_inputrec* %dum_ir) #8, !dbg !1620
  call void @llvm.dbg.value(metadata %struct.t_inputrec* %dum_ir, i64 0, metadata !905, metadata !1151), !dbg !1619
  call fastcc void @do_inputrec(%struct.t_inputrec* %dum_ir, i32 %bRead) #10, !dbg !1622
  call void @llvm.dbg.value(metadata %struct.t_inputrec* %dum_ir, i64 0, metadata !905, metadata !1151), !dbg !1619
  call void @done_inputrec(%struct.t_inputrec* %dum_ir) #8, !dbg !1623
  br label %79

; <label>:79                                      ; preds = %71, %77, %78
  %80 = icmp ne %struct.t_topology* %top, null, !dbg !1624
  %or.cond5 = and i1 %4, %80, !dbg !1624
  %81 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 2, !dbg !1624
  %82 = load i32* %81, align 8
  %83 = icmp eq i32 %82, 0, !dbg !1624
  %or.cond27 = and i1 %or.cond5, %83, !dbg !1624
  br i1 %or.cond27, label %84, label %._crit_edge19, !dbg !1624

; <label>:84                                      ; preds = %79
  %85 = call i8* @gmx_fio_getname(i32 %fp) #8, !dbg !1624
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([12 x i8]* @.str82, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str85, i64 0, i64 0), i8* %85) #8, !dbg !1624
  br label %._crit_edge19, !dbg !1624

._crit_edge19:                                    ; preds = %79, %84
  call void @_do_section(i32 %fp, i32 3, i32 %bRead, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 830) #10, !dbg !1626
  %86 = load i32* %81, align 8, !dbg !1627, !tbaa !1629
  %87 = icmp eq i32 %86, 0, !dbg !1630
  br i1 %87, label %91, label %88, !dbg !1631

; <label>:88                                      ; preds = %._crit_edge19
  br i1 %80, label %89, label %90, !dbg !1632

; <label>:89                                      ; preds = %88
  call fastcc void @do_top(%struct.t_topology* %top, i32 %bRead) #10, !dbg !1634
  br label %91, !dbg !1634

; <label>:90                                      ; preds = %88
  call void @llvm.dbg.value(metadata %struct.t_topology* %dum_top, i64 0, metadata !906, metadata !1151), !dbg !1636
  call fastcc void @do_top(%struct.t_topology* %dum_top, i32 %bRead) #10, !dbg !1637
  call void @llvm.dbg.value(metadata %struct.t_topology* %dum_top, i64 0, metadata !906, metadata !1151), !dbg !1636
  call void @done_top(%struct.t_topology* %dum_top) #8, !dbg !1639
  br label %91

; <label>:91                                      ; preds = %._crit_edge19, %89, %90
  %92 = icmp ne [3 x float]* %x, null, !dbg !1640
  %or.cond7 = and i1 %4, %92, !dbg !1640
  %93 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 3, !dbg !1640
  %94 = load i32* %93, align 4
  %95 = icmp eq i32 %94, 0, !dbg !1640
  %or.cond29 = and i1 %or.cond7, %95, !dbg !1640
  br i1 %or.cond29, label %96, label %._crit_edge, !dbg !1640

; <label>:96                                      ; preds = %91
  %97 = call i8* @gmx_fio_getname(i32 %fp) #8, !dbg !1640
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([12 x i8]* @.str82, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str86, i64 0, i64 0), i8* %97) #8, !dbg !1640
  br label %._crit_edge, !dbg !1640

._crit_edge:                                      ; preds = %91, %96
  call void @_do_section(i32 %fp, i32 4, i32 %bRead, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 840) #10, !dbg !1642
  %98 = load i32* %93, align 4, !dbg !1643, !tbaa !1645
  %99 = icmp eq i32 %98, 0, !dbg !1646
  br i1 %99, label %110, label %100, !dbg !1647

; <label>:100                                     ; preds = %._crit_edge
  br i1 %4, label %101, label %.thread15, !dbg !1648

; <label>:101                                     ; preds = %100
  %102 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1648, !tbaa !1331
  %103 = bitcast [3 x float]* %x to i8*, !dbg !1648
  %104 = load i32* %natoms, align 4, !dbg !1648, !tbaa !1469
  %105 = call i32 %102(i8* %103, i32 %104, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str86, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 841) #8, !dbg !1648
  br label %110, !dbg !1648

.thread15:                                        ; preds = %100
  %106 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1648, !tbaa !1331
  %107 = bitcast [3 x float]* %x to i8*, !dbg !1648
  %108 = load i32* %natoms, align 4, !dbg !1648, !tbaa !1469
  %109 = call i32 %106(i8* %107, i32 %108, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str86, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 841) #8, !dbg !1648
  br label %118, !dbg !1649

; <label>:110                                     ; preds = %._crit_edge, %101
  %111 = icmp ne [3 x float]* %v, null, !dbg !1649
  %or.cond9 = and i1 %4, %111, !dbg !1649
  br i1 %or.cond9, label %112, label %118, !dbg !1649

; <label>:112                                     ; preds = %110
  %113 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 4, !dbg !1649
  %114 = load i32* %113, align 16, !dbg !1649, !tbaa !1577
  %115 = icmp eq i32 %114, 0, !dbg !1649
  br i1 %115, label %116, label %118, !dbg !1651

; <label>:116                                     ; preds = %112
  %117 = call i8* @gmx_fio_getname(i32 %fp) #8, !dbg !1649
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([12 x i8]* @.str82, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str87, i64 0, i64 0), i8* %117) #8, !dbg !1649
  br label %118, !dbg !1649

; <label>:118                                     ; preds = %.thread15, %112, %116, %110
  call void @_do_section(i32 %fp, i32 5, i32 %bRead, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 844) #10, !dbg !1652
  %119 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 4, !dbg !1653
  %120 = load i32* %119, align 16, !dbg !1653, !tbaa !1577
  %121 = icmp eq i32 %120, 0, !dbg !1655
  br i1 %121, label %132, label %122, !dbg !1656

; <label>:122                                     ; preds = %118
  br i1 %4, label %123, label %.thread17, !dbg !1657

; <label>:123                                     ; preds = %122
  %124 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1657, !tbaa !1331
  %125 = bitcast [3 x float]* %v to i8*, !dbg !1657
  %126 = load i32* %natoms, align 4, !dbg !1657, !tbaa !1469
  %127 = call i32 %124(i8* %125, i32 %126, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str87, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 845) #8, !dbg !1657
  br label %132, !dbg !1657

.thread17:                                        ; preds = %122
  %128 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1657, !tbaa !1331
  %129 = bitcast [3 x float]* %v to i8*, !dbg !1657
  %130 = load i32* %natoms, align 4, !dbg !1657, !tbaa !1469
  %131 = call i32 %128(i8* %129, i32 %130, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str87, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 845) #8, !dbg !1657
  br label %140, !dbg !1658

; <label>:132                                     ; preds = %118, %123
  %133 = icmp ne [3 x float]* %f, null, !dbg !1658
  %or.cond11 = and i1 %4, %133, !dbg !1658
  br i1 %or.cond11, label %134, label %140, !dbg !1658

; <label>:134                                     ; preds = %132
  %135 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 5, !dbg !1658
  %136 = load i32* %135, align 4, !dbg !1658, !tbaa !1581
  %137 = icmp eq i32 %136, 0, !dbg !1658
  br i1 %137, label %138, label %140, !dbg !1660

; <label>:138                                     ; preds = %134
  %139 = call i8* @gmx_fio_getname(i32 %fp) #8, !dbg !1658
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([12 x i8]* @.str82, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str88, i64 0, i64 0), i8* %139) #8, !dbg !1658
  br label %140, !dbg !1658

; <label>:140                                     ; preds = %.thread17, %134, %138, %132
  call void @_do_section(i32 %fp, i32 6, i32 %bRead, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 848) #10, !dbg !1661
  %141 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 5, !dbg !1662
  %142 = load i32* %141, align 4, !dbg !1662, !tbaa !1581
  %143 = icmp eq i32 %142, 0, !dbg !1664
  br i1 %143, label %155, label %144, !dbg !1665

; <label>:144                                     ; preds = %140
  br i1 %4, label %145, label %150, !dbg !1666

; <label>:145                                     ; preds = %144
  %146 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1666, !tbaa !1331
  %147 = bitcast [3 x float]* %f to i8*, !dbg !1666
  %148 = load i32* %natoms, align 4, !dbg !1666, !tbaa !1469
  %149 = call i32 %146(i8* %147, i32 %148, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str88, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 849) #8, !dbg !1666
  br label %155, !dbg !1666

; <label>:150                                     ; preds = %144
  %151 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1666, !tbaa !1331
  %152 = bitcast [3 x float]* %f to i8*, !dbg !1666
  %153 = load i32* %natoms, align 4, !dbg !1666, !tbaa !1469
  %154 = call i32 %151(i8* %152, i32 %153, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str88, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 849) #8, !dbg !1666
  br label %155, !dbg !1666

; <label>:155                                     ; preds = %140, %145, %150
  call void @llvm.lifetime.end(i64 50264, i8* %3) #5, !dbg !1667
  call void @llvm.lifetime.end(i64 592, i8* %2) #5, !dbg !1667
  call void @llvm.lifetime.end(i64 40, i8* %1) #5, !dbg !1667
  ret void, !dbg !1667
}

; Function Attrs: nounwind optsize ssp uwtable
define void @read_tpx(i8* %fn, i32* nocapture %step, float* nocapture %t, float* nocapture %lambda, %struct.t_inputrec* %ir, [3 x float]* %box, i32* nocapture %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #4 {
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !804, metadata !1151), !dbg !1668
  tail call void @llvm.dbg.value(metadata i32* %step, i64 0, metadata !805, metadata !1151), !dbg !1669
  tail call void @llvm.dbg.value(metadata float* %t, i64 0, metadata !806, metadata !1151), !dbg !1670
  tail call void @llvm.dbg.value(metadata float* %lambda, i64 0, metadata !807, metadata !1151), !dbg !1671
  tail call void @llvm.dbg.value(metadata %struct.t_inputrec* %ir, i64 0, metadata !808, metadata !1151), !dbg !1672
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !809, metadata !1151), !dbg !1673
  tail call void @llvm.dbg.value(metadata i32* %natoms, i64 0, metadata !810, metadata !1151), !dbg !1674
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !811, metadata !1151), !dbg !1675
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !812, metadata !1151), !dbg !1676
  tail call void @llvm.dbg.value(metadata [3 x float]* %f, i64 0, metadata !813, metadata !1151), !dbg !1677
  tail call void @llvm.dbg.value(metadata %struct.t_topology* %top, i64 0, metadata !814, metadata !1151), !dbg !1678
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !523, metadata !1151) #5, !dbg !1679
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8]* @.str57, i64 0, i64 0), i64 0, metadata !524, metadata !1151) #5, !dbg !1681
  %1 = tail call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str57, i64 0, i64 0)) #8, !dbg !1682
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !815, metadata !1151), !dbg !1683
  tail call fastcc void @do_tpx(i32 %1, i32 1, i32* %step, float* %t, float* %lambda, %struct.t_inputrec* %ir, [3 x float]* %box, i32* %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #10, !dbg !1684
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !529, metadata !1151) #5, !dbg !1685
  tail call void @gmx_fio_close(i32 %1) #8, !dbg !1687
  ret void, !dbg !1688
}

; Function Attrs: nounwind optsize ssp uwtable
define void @fwrite_tpx(i32 %fp, i32 %step, float %t, float %lambda, %struct.t_inputrec* %ir, [3 x float]* %box, i32 %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #4 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32 %fp, i64 0, metadata !820, metadata !1151), !dbg !1689
  tail call void @llvm.dbg.value(metadata i32 %step, i64 0, metadata !821, metadata !1151), !dbg !1690
  store i32 %step, i32* %1, align 4, !tbaa !1469
  tail call void @llvm.dbg.value(metadata float %t, i64 0, metadata !822, metadata !1151), !dbg !1691
  store float %t, float* %2, align 4, !tbaa !1279
  tail call void @llvm.dbg.value(metadata float %lambda, i64 0, metadata !823, metadata !1151), !dbg !1692
  store float %lambda, float* %3, align 4, !tbaa !1279
  tail call void @llvm.dbg.value(metadata %struct.t_inputrec* %ir, i64 0, metadata !824, metadata !1151), !dbg !1693
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !825, metadata !1151), !dbg !1694
  tail call void @llvm.dbg.value(metadata i32 %natoms, i64 0, metadata !826, metadata !1151), !dbg !1695
  store i32 %natoms, i32* %4, align 4, !tbaa !1469
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !827, metadata !1151), !dbg !1696
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !828, metadata !1151), !dbg !1697
  tail call void @llvm.dbg.value(metadata [3 x float]* %f, i64 0, metadata !829, metadata !1151), !dbg !1698
  tail call void @llvm.dbg.value(metadata %struct.t_topology* %top, i64 0, metadata !830, metadata !1151), !dbg !1699
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !821, metadata !1151), !dbg !1690
  tail call void @llvm.dbg.value(metadata float* %2, i64 0, metadata !822, metadata !1151), !dbg !1691
  tail call void @llvm.dbg.value(metadata float* %3, i64 0, metadata !823, metadata !1151), !dbg !1692
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !826, metadata !1151), !dbg !1695
  call fastcc void @do_tpx(i32 %fp, i32 0, i32* %1, float* %2, float* %3, %struct.t_inputrec* %ir, [3 x float]* %box, i32* %4, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #10, !dbg !1700
  ret void, !dbg !1701
}

; Function Attrs: nounwind optsize ssp uwtable
define void @fread_tpx(i32 %fp, i32* nocapture %step, float* nocapture %t, float* nocapture %lambda, %struct.t_inputrec* %ir, [3 x float]* %box, i32* nocapture %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #4 {
  tail call void @llvm.dbg.value(metadata i32 %fp, i64 0, metadata !835, metadata !1151), !dbg !1702
  tail call void @llvm.dbg.value(metadata i32* %step, i64 0, metadata !836, metadata !1151), !dbg !1703
  tail call void @llvm.dbg.value(metadata float* %t, i64 0, metadata !837, metadata !1151), !dbg !1704
  tail call void @llvm.dbg.value(metadata float* %lambda, i64 0, metadata !838, metadata !1151), !dbg !1705
  tail call void @llvm.dbg.value(metadata %struct.t_inputrec* %ir, i64 0, metadata !839, metadata !1151), !dbg !1706
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !840, metadata !1151), !dbg !1707
  tail call void @llvm.dbg.value(metadata i32* %natoms, i64 0, metadata !841, metadata !1151), !dbg !1708
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !842, metadata !1151), !dbg !1709
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !843, metadata !1151), !dbg !1710
  tail call void @llvm.dbg.value(metadata [3 x float]* %f, i64 0, metadata !844, metadata !1151), !dbg !1711
  tail call void @llvm.dbg.value(metadata %struct.t_topology* %top, i64 0, metadata !845, metadata !1151), !dbg !1712
  tail call fastcc void @do_tpx(i32 %fp, i32 1, i32* %step, float* %t, float* %lambda, %struct.t_inputrec* %ir, [3 x float]* %box, i32* %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #10, !dbg !1713
  ret void, !dbg !1714
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @fn2bTPX(i8* %file) #4 {
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !850, metadata !1151), !dbg !1715
  %1 = tail call i32 @fn2ftp(i8* %file) #8, !dbg !1716
  %.off = add i32 %1, -26, !dbg !1717
  %switch = icmp ult i32 %.off, 3, !dbg !1717
  %. = zext i1 %switch to i32, !dbg !1718
  ret i32 %., !dbg !1720
}

; Function Attrs: optsize
declare i32 @fn2ftp(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @read_tps_conf(i8* %infile, i8* %title, %struct.t_topology* %top, [3 x float]** %x, [3 x float]** %v, [3 x float]* %box, i32 %bMass) #4 {
  %header = alloca %struct.t_tpxheader, align 4
  %t = alloca float, align 4
  %lambda = alloca float, align 4
  %natoms = alloca i32, align 4
  %step = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %infile, i64 0, metadata !857, metadata !1151), !dbg !1721
  tail call void @llvm.dbg.value(metadata i8* %title, i64 0, metadata !858, metadata !1151), !dbg !1722
  tail call void @llvm.dbg.value(metadata %struct.t_topology* %top, i64 0, metadata !859, metadata !1151), !dbg !1723
  tail call void @llvm.dbg.value(metadata [3 x float]** %x, i64 0, metadata !860, metadata !1151), !dbg !1724
  tail call void @llvm.dbg.value(metadata [3 x float]** %v, i64 0, metadata !861, metadata !1151), !dbg !1725
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !862, metadata !1151), !dbg !1726
  tail call void @llvm.dbg.value(metadata i32 %bMass, i64 0, metadata !863, metadata !1151), !dbg !1727
  %1 = bitcast %struct.t_tpxheader* %header to i8*, !dbg !1728
  call void @llvm.lifetime.start(i64 40, i8* %1) #5, !dbg !1728
  tail call void @llvm.dbg.value(metadata i8* %infile, i64 0, metadata !850, metadata !1151) #5, !dbg !1729
  %2 = tail call i32 @fn2ftp(i8* %infile) #8, !dbg !1731
  %.off.i = add i32 %2, -26, !dbg !1732
  %switch.i = icmp ult i32 %.off.i, 3, !dbg !1732
  %..i = zext i1 %switch.i to i32, !dbg !1733
  tail call void @llvm.dbg.value(metadata i32 %..i, i64 0, metadata !870, metadata !1151), !dbg !1734
  br i1 %switch.i, label %3, label %33, !dbg !1735

; <label>:3                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata %struct.t_tpxheader* %header, i64 0, metadata !864, metadata !1151), !dbg !1736
  tail call void @llvm.dbg.value(metadata i8* %infile, i64 0, metadata !549, metadata !1151) #5, !dbg !1737
  tail call void @llvm.dbg.value(metadata %struct.t_tpxheader* %header, i64 0, metadata !550, metadata !1151) #5, !dbg !1741
  tail call void @llvm.dbg.value(metadata i8* %infile, i64 0, metadata !523, metadata !1151) #5, !dbg !1742
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8]* @.str57, i64 0, i64 0), i64 0, metadata !524, metadata !1151) #5, !dbg !1744
  %4 = tail call i32 @gmx_fio_open(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str57, i64 0, i64 0)) #8, !dbg !1745
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !551, metadata !1151) #5, !dbg !1746
  call fastcc void @do_tpxheader(i32 %4, i32 1, %struct.t_tpxheader* %header) #8, !dbg !1747
  call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !529, metadata !1151) #5, !dbg !1748
  call void @gmx_fio_close(i32 %4) #8, !dbg !1750
  %5 = icmp eq [3 x float]** %x, null, !dbg !1751
  br i1 %5, label %11, label %6, !dbg !1753

; <label>:6                                       ; preds = %3
  %7 = getelementptr inbounds %struct.t_tpxheader* %header, i64 0, i32 6, !dbg !1754
  %8 = load i32* %7, align 4, !dbg !1754, !tbaa !1557
  %9 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 938, i32 %8, i32 12) #8, !dbg !1754
  %10 = bitcast [3 x float]** %x to i8**, !dbg !1754
  store i8* %9, i8** %10, align 8, !dbg !1754, !tbaa !1331
  br label %11, !dbg !1754

; <label>:11                                      ; preds = %3, %6
  %12 = icmp eq [3 x float]** %v, null, !dbg !1755
  br i1 %12, label %18, label %13, !dbg !1757

; <label>:13                                      ; preds = %11
  %14 = getelementptr inbounds %struct.t_tpxheader* %header, i64 0, i32 6, !dbg !1758
  %15 = load i32* %14, align 4, !dbg !1758, !tbaa !1557
  %16 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str60, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 940, i32 %15, i32 12) #8, !dbg !1758
  %17 = bitcast [3 x float]** %v to i8**, !dbg !1758
  store i8* %16, i8** %17, align 8, !dbg !1758, !tbaa !1331
  br label %18, !dbg !1758

; <label>:18                                      ; preds = %11, %13
  br i1 %5, label %21, label %19, !dbg !1759

; <label>:19                                      ; preds = %18
  %20 = load [3 x float]** %x, align 8, !dbg !1760, !tbaa !1331
  br label %21, !dbg !1759

; <label>:21                                      ; preds = %18, %19
  %22 = phi [3 x float]* [ %20, %19 ], [ null, %18 ], !dbg !1759
  br i1 %12, label %25, label %23, !dbg !1761

; <label>:23                                      ; preds = %21
  %24 = load [3 x float]** %v, align 8, !dbg !1762, !tbaa !1331
  br label %25, !dbg !1761

; <label>:25                                      ; preds = %21, %23
  %26 = phi [3 x float]* [ %24, %23 ], [ null, %21 ], !dbg !1761
  call void @llvm.dbg.value(metadata float* %t, i64 0, metadata !865, metadata !1151), !dbg !1763
  call void @llvm.dbg.value(metadata float* %lambda, i64 0, metadata !866, metadata !1151), !dbg !1764
  call void @llvm.dbg.value(metadata i32* %natoms, i64 0, metadata !867, metadata !1151), !dbg !1765
  call void @llvm.dbg.value(metadata i32* %step, i64 0, metadata !868, metadata !1151), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %infile, i64 0, metadata !804, metadata !1151) #5, !dbg !1767
  call void @llvm.dbg.value(metadata i32* %step, i64 0, metadata !805, metadata !1151) #5, !dbg !1769
  call void @llvm.dbg.value(metadata float* %t, i64 0, metadata !806, metadata !1151) #5, !dbg !1770
  call void @llvm.dbg.value(metadata float* %lambda, i64 0, metadata !807, metadata !1151) #5, !dbg !1771
  call void @llvm.dbg.value(metadata %struct.t_inputrec* null, i64 0, metadata !808, metadata !1151) #5, !dbg !1772
  call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !809, metadata !1151) #5, !dbg !1773
  call void @llvm.dbg.value(metadata i32* %natoms, i64 0, metadata !810, metadata !1151) #5, !dbg !1774
  call void @llvm.dbg.value(metadata [3 x float]* %22, i64 0, metadata !811, metadata !1151) #5, !dbg !1775
  call void @llvm.dbg.value(metadata [3 x float]* %26, i64 0, metadata !812, metadata !1151) #5, !dbg !1776
  call void @llvm.dbg.value(metadata [3 x float]* null, i64 0, metadata !813, metadata !1151) #5, !dbg !1777
  call void @llvm.dbg.value(metadata %struct.t_topology* %top, i64 0, metadata !814, metadata !1151) #5, !dbg !1778
  call void @llvm.dbg.value(metadata i8* %infile, i64 0, metadata !523, metadata !1151) #5, !dbg !1779
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8]* @.str57, i64 0, i64 0), i64 0, metadata !524, metadata !1151) #5, !dbg !1781
  %27 = call i32 @gmx_fio_open(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str57, i64 0, i64 0)) #8, !dbg !1782
  call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !815, metadata !1151) #5, !dbg !1783
  call fastcc void @do_tpx(i32 %27, i32 1, i32* %step, float* %t, float* %lambda, %struct.t_inputrec* null, [3 x float]* %box, i32* %natoms, [3 x float]* %22, [3 x float]* %26, [3 x float]* null, %struct.t_topology* %top) #8, !dbg !1784
  call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !529, metadata !1151) #5, !dbg !1785
  call void @gmx_fio_close(i32 %27) #8, !dbg !1787
  %28 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0, !dbg !1788
  %29 = load i8*** %28, align 8, !dbg !1788, !tbaa !1789
  %30 = load i8** %29, align 8, !dbg !1788, !tbaa !1331
  %31 = call i64 @llvm.objectsize.i64.p0i8(i8* %title, i1 false), !dbg !1788
  %32 = call i8* @__strcpy_chk(i8* %title, i8* %30, i64 %31) #8, !dbg !1788
  br label %73, !dbg !1795

; <label>:33                                      ; preds = %0
  tail call void @llvm.dbg.value(metadata i32* %natoms, i64 0, metadata !867, metadata !1151), !dbg !1765
  call void @get_stx_coordnum(i8* %infile, i32* %natoms) #8, !dbg !1796
  %34 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, !dbg !1798
  call void @llvm.dbg.value(metadata i32* %natoms, i64 0, metadata !867, metadata !1151), !dbg !1765
  %35 = load i32* %natoms, align 4, !dbg !1799, !tbaa !1469
  call void @init_t_atoms(%struct.t_atoms* %34, i32 %35, i32 0) #8, !dbg !1800
  call void @llvm.dbg.value(metadata i32* %natoms, i64 0, metadata !867, metadata !1151), !dbg !1765
  %36 = load i32* %natoms, align 4, !dbg !1801, !tbaa !1469
  %37 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 949, i32 %36, i32 12) #8, !dbg !1801
  %38 = bitcast [3 x float]** %x to i8**, !dbg !1801
  store i8* %37, i8** %38, align 8, !dbg !1801, !tbaa !1331
  %39 = icmp eq [3 x float]** %v, null, !dbg !1802
  %40 = bitcast i8* %37 to [3 x float]*
  br i1 %39, label %.thread, label %41, !dbg !1804

; <label>:41                                      ; preds = %33
  call void @llvm.dbg.value(metadata i32* %natoms, i64 0, metadata !867, metadata !1151), !dbg !1765
  %42 = load i32* %natoms, align 4, !dbg !1805, !tbaa !1469
  %43 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str60, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 951, i32 %42, i32 12) #8, !dbg !1805
  %44 = bitcast [3 x float]** %v to i8**, !dbg !1805
  store i8* %43, i8** %44, align 8, !dbg !1805, !tbaa !1331
  %.cast = bitcast i8* %43 to [3 x float]*, !dbg !1806
  %.pre = load [3 x float]** %x, align 8, !dbg !1807
  br label %.thread, !dbg !1808

.thread:                                          ; preds = %33, %41
  %45 = phi [3 x float]* [ %.pre, %41 ], [ %40, %33 ]
  %46 = phi [3 x float]* [ %.cast, %41 ], [ null, %33 ], !dbg !1808
  call void @read_stx_conf(i8* %infile, i8* %title, %struct.t_atoms* %34, [3 x float]* %45, [3 x float]* %46, [3 x float]* %box) #8, !dbg !1809
  %47 = icmp ne i32 %bMass, 0, !dbg !1810
  %48 = load i32* %natoms, align 4
  %49 = icmp sgt i32 %48, 0, !dbg !1812
  %or.cond = and i1 %47, %49, !dbg !1815
  call void @llvm.dbg.value(metadata i32* %natoms, i64 0, metadata !867, metadata !1151), !dbg !1765
  br i1 %or.cond, label %.lr.ph, label %.loopexit, !dbg !1815

.lr.ph:                                           ; preds = %.thread
  %50 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1, !dbg !1816
  %51 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 6, !dbg !1817
  %52 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 2, !dbg !1818
  %.pre2 = load %struct.t_atom** %50, align 8, !dbg !1816, !tbaa !1819
  br label %53, !dbg !1820

; <label>:53                                      ; preds = %.lr.ph, %53
  %54 = phi %struct.t_atom* [ %.pre2, %.lr.ph ], [ %67, %53 ], !dbg !1816
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %53 ]
  %55 = getelementptr inbounds %struct.t_atom* %54, i64 %indvars.iv, i32 7, !dbg !1821
  %56 = load i32* %55, align 4, !dbg !1821, !tbaa !1822
  %57 = sext i32 %56 to i64, !dbg !1824
  %58 = load i8**** %51, align 8, !dbg !1817, !tbaa !1825
  %59 = getelementptr inbounds i8*** %58, i64 %57, !dbg !1824
  %60 = load i8*** %59, align 8, !dbg !1824, !tbaa !1331
  %61 = load i8** %60, align 8, !dbg !1826, !tbaa !1331
  %62 = load i8**** %52, align 8, !dbg !1818, !tbaa !1827
  %63 = getelementptr inbounds i8*** %62, i64 %indvars.iv, !dbg !1828
  %64 = load i8*** %63, align 8, !dbg !1828, !tbaa !1331
  %65 = load i8** %64, align 8, !dbg !1829, !tbaa !1331
  %66 = call float @get_mass(i8* %61, i8* %65) #8, !dbg !1830
  %67 = load %struct.t_atom** %50, align 8, !dbg !1831, !tbaa !1819
  %68 = getelementptr inbounds %struct.t_atom* %67, i64 %indvars.iv, i32 0, !dbg !1832
  store float %66, float* %68, align 4, !dbg !1833, !tbaa !1834
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1820
  call void @llvm.dbg.value(metadata i32* %natoms, i64 0, metadata !867, metadata !1151), !dbg !1765
  %69 = load i32* %natoms, align 4, !dbg !1835, !tbaa !1469
  %70 = sext i32 %69 to i64, !dbg !1812
  %71 = icmp slt i64 %indvars.iv.next, %70, !dbg !1812
  br i1 %71, label %53, label %.loopexit, !dbg !1820

.loopexit:                                        ; preds = %53, %.thread
  %72 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 0, !dbg !1836
  store i32 -1, i32* %72, align 4, !dbg !1837, !tbaa !1838
  br label %73

; <label>:73                                      ; preds = %.loopexit, %25
  call void @llvm.lifetime.end(i64 40, i8* %1) #5, !dbg !1839
  ret i32 %..i, !dbg !1839
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #6

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: optsize
declare void @get_stx_coordnum(i8*, i32*) #2

; Function Attrs: optsize
declare void @init_t_atoms(%struct.t_atoms*, i32, i32) #2

; Function Attrs: optsize
declare void @read_stx_conf(i8*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, [3 x float]*) #2

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: optsize
declare float @get_mass(i8*, i8*) #2

; Function Attrs: optsize
declare void @gmx_fio_select(i32) #2

; Function Attrs: optsize
declare i32 @bDebugMode() #2

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #7

; Function Attrs: optsize
declare i8* @gmx_fio_getname(i32) #2

; Function Attrs: optsize
declare void @gmx_fio_setprecision(i32, i32) #2

; Function Attrs: optsize
declare i8* @GromacsVersion() #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @do_inputrec(%struct.t_inputrec* %ir, i32 %bRead) #4 {
  %idum = alloca i32, align 4
  %vdum = alloca [3 x float], align 4
  %buf = alloca [128 x i8], align 16
  %buf1 = alloca [128 x i8], align 16
  %buf2 = alloca [128 x i8], align 16
  %buf3 = alloca [128 x i8], align 16
  %buf4 = alloca [128 x i8], align 16
  %buf5 = alloca [128 x i8], align 16
  %buf6 = alloca [128 x i8], align 16
  %buf7 = alloca [128 x i8], align 16
  %buf8 = alloca [128 x i8], align 16
  %buf9 = alloca [128 x i8], align 16
  tail call void @llvm.dbg.value(metadata %struct.t_inputrec* %ir, i64 0, metadata !911, metadata !1151), !dbg !1840
  tail call void @llvm.dbg.value(metadata i32 %bRead, i64 0, metadata !912, metadata !1151), !dbg !1841
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !916, metadata !1151), !dbg !1842
  store i32 0, i32* %idum, align 4, !dbg !1842, !tbaa !1469
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !917, metadata !1151), !dbg !1843
  tail call void @llvm.dbg.declare(metadata [3 x float]* %vdum, metadata !919, metadata !1151), !dbg !1844
  %1 = load i32* @file_version, align 4, !dbg !1845, !tbaa !1469
  %2 = icmp eq i32 %1, 24, !dbg !1847
  br i1 %2, label %.thread, label %3, !dbg !1848

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !1849, !tbaa !1331
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([48 x i8]* @.str89, i64 0, i64 0), i32 %1, i32 24) #8, !dbg !1851
  %.pr = load i32* @file_version, align 4, !dbg !1852, !tbaa !1469
  %6 = icmp sgt i32 %.pr, 0, !dbg !1853
  br i1 %6, label %.thread, label %.loopexit, !dbg !1854

.thread:                                          ; preds = %0, %3
  %7 = icmp ne i32 %bRead, 0, !dbg !1855
  br i1 %7, label %8, label %20, !dbg !1855

; <label>:8                                       ; preds = %.thread
  %9 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1855, !tbaa !1331
  %10 = bitcast %struct.t_inputrec* %ir to i8*, !dbg !1855
  %11 = tail call i32 %9(i8* %10, i32 1, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str90, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 133) #8, !dbg !1855
  %12 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1856, !tbaa !1331
  %13 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 1, !dbg !1856
  %14 = bitcast i32* %13 to i8*, !dbg !1856
  %15 = tail call i32 %12(i8* %14, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str91, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 134) #8, !dbg !1856
  %16 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1857, !tbaa !1331
  %17 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 25, !dbg !1857
  %18 = bitcast i32* %17 to i8*, !dbg !1857
  %19 = tail call i32 %16(i8* %18, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str92, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 135) #8, !dbg !1857
  br label %32, !dbg !1857

; <label>:20                                      ; preds = %.thread
  %21 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1855, !tbaa !1331
  %22 = bitcast %struct.t_inputrec* %ir to i8*, !dbg !1855
  %23 = tail call i32 %21(i8* %22, i32 1, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str90, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 133) #8, !dbg !1855
  %24 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1856, !tbaa !1331
  %25 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 1, !dbg !1856
  %26 = bitcast i32* %25 to i8*, !dbg !1856
  %27 = tail call i32 %24(i8* %26, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str91, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 134) #8, !dbg !1856
  %28 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1857, !tbaa !1331
  %29 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 25, !dbg !1857
  %30 = bitcast i32* %29 to i8*, !dbg !1857
  %31 = tail call i32 %28(i8* %30, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str92, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 135) #8, !dbg !1857
  br label %32, !dbg !1857

; <label>:32                                      ; preds = %20, %8
  %33 = load i32* @file_version, align 4, !dbg !1858, !tbaa !1469
  %34 = icmp slt i32 %33, 16, !dbg !1860
  br i1 %34, label %35, label %40, !dbg !1861

; <label>:35                                      ; preds = %32
  %36 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 25, !dbg !1862
  %37 = load i32* %36, align 4, !dbg !1862, !tbaa !1863
  %38 = icmp eq i32 %37, 2, !dbg !1866
  br i1 %38, label %39, label %40, !dbg !1867

; <label>:39                                      ; preds = %35
  store i32 1, i32* %36, align 4, !dbg !1868, !tbaa !1863
  br label %40, !dbg !1869

; <label>:40                                      ; preds = %39, %35, %32
  br i1 %7, label %41, label %106, !dbg !1870

; <label>:41                                      ; preds = %40
  %42 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1870, !tbaa !1331
  %43 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 2, !dbg !1870
  %44 = bitcast i32* %43 to i8*, !dbg !1870
  %45 = tail call i32 %42(i8* %44, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str93, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 138) #8, !dbg !1870
  %46 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1871, !tbaa !1331
  %47 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 3, !dbg !1871
  %48 = bitcast i32* %47 to i8*, !dbg !1871
  %49 = tail call i32 %46(i8* %48, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str94, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 139) #8, !dbg !1871
  %50 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1872, !tbaa !1331
  %51 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 4, !dbg !1872
  %52 = bitcast i32* %51 to i8*, !dbg !1872
  %53 = tail call i32 %50(i8* %52, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str95, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 140) #8, !dbg !1872
  %54 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1873, !tbaa !1331
  %55 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 5, !dbg !1873
  %56 = bitcast i32* %55 to i8*, !dbg !1873
  %57 = tail call i32 %54(i8* %56, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str96, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 141) #8, !dbg !1873
  %58 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1874, !tbaa !1331
  %59 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 6, !dbg !1874
  %60 = bitcast i32* %59 to i8*, !dbg !1874
  %61 = tail call i32 %58(i8* %60, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str97, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 142) #8, !dbg !1874
  %62 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1875, !tbaa !1331
  %63 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 7, !dbg !1875
  %64 = bitcast i32* %63 to i8*, !dbg !1875
  %65 = tail call i32 %62(i8* %64, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str98, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 143) #8, !dbg !1875
  %66 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1876, !tbaa !1331
  %67 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 63, !dbg !1876
  %68 = bitcast i32* %67 to i8*, !dbg !1876
  %69 = tail call i32 %66(i8* %68, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str99, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 144) #8, !dbg !1876
  %70 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1877, !tbaa !1331
  %71 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 8, !dbg !1877
  %72 = bitcast i32* %71 to i8*, !dbg !1877
  %73 = tail call i32 %70(i8* %72, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str100, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 145) #8, !dbg !1877
  %74 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1878, !tbaa !1331
  %75 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 9, !dbg !1878
  %76 = bitcast i32* %75 to i8*, !dbg !1878
  %77 = tail call i32 %74(i8* %76, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str101, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 146) #8, !dbg !1878
  %78 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1879, !tbaa !1331
  %79 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 10, !dbg !1879
  %80 = bitcast i32* %79 to i8*, !dbg !1879
  %81 = tail call i32 %78(i8* %80, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str102, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 147) #8, !dbg !1879
  %82 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1880, !tbaa !1331
  %83 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 11, !dbg !1880
  %84 = bitcast i32* %83 to i8*, !dbg !1880
  %85 = tail call i32 %82(i8* %84, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str103, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 148) #8, !dbg !1880
  %86 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1881, !tbaa !1331
  %87 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 12, !dbg !1881
  %88 = bitcast i32* %87 to i8*, !dbg !1881
  %89 = tail call i32 %86(i8* %88, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str104, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 149) #8, !dbg !1881
  %90 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1882, !tbaa !1331
  %91 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 13, !dbg !1882
  %92 = bitcast i32* %91 to i8*, !dbg !1882
  %93 = tail call i32 %90(i8* %92, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str105, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 150) #8, !dbg !1882
  %94 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1883, !tbaa !1331
  %95 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 14, !dbg !1883
  %96 = bitcast float* %95 to i8*, !dbg !1883
  %97 = tail call i32 %94(i8* %96, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str106, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 151) #8, !dbg !1883
  %98 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1884, !tbaa !1331
  %99 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15, !dbg !1884
  %100 = bitcast float* %99 to i8*, !dbg !1884
  %101 = tail call i32 %98(i8* %100, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str107, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 152) #8, !dbg !1884
  %102 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1885, !tbaa !1331
  %103 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 16, !dbg !1885
  %104 = bitcast float* %103 to i8*, !dbg !1885
  %105 = tail call i32 %102(i8* %104, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str108, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 153) #8, !dbg !1885
  br label %171, !dbg !1885

; <label>:106                                     ; preds = %40
  %107 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1870, !tbaa !1331
  %108 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 2, !dbg !1870
  %109 = bitcast i32* %108 to i8*, !dbg !1870
  %110 = tail call i32 %107(i8* %109, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str93, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 138) #8, !dbg !1870
  %111 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1871, !tbaa !1331
  %112 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 3, !dbg !1871
  %113 = bitcast i32* %112 to i8*, !dbg !1871
  %114 = tail call i32 %111(i8* %113, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str94, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 139) #8, !dbg !1871
  %115 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1872, !tbaa !1331
  %116 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 4, !dbg !1872
  %117 = bitcast i32* %116 to i8*, !dbg !1872
  %118 = tail call i32 %115(i8* %117, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str95, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 140) #8, !dbg !1872
  %119 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1873, !tbaa !1331
  %120 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 5, !dbg !1873
  %121 = bitcast i32* %120 to i8*, !dbg !1873
  %122 = tail call i32 %119(i8* %121, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str96, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 141) #8, !dbg !1873
  %123 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1874, !tbaa !1331
  %124 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 6, !dbg !1874
  %125 = bitcast i32* %124 to i8*, !dbg !1874
  %126 = tail call i32 %123(i8* %125, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str97, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 142) #8, !dbg !1874
  %127 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1875, !tbaa !1331
  %128 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 7, !dbg !1875
  %129 = bitcast i32* %128 to i8*, !dbg !1875
  %130 = tail call i32 %127(i8* %129, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str98, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 143) #8, !dbg !1875
  %131 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1876, !tbaa !1331
  %132 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 63, !dbg !1876
  %133 = bitcast i32* %132 to i8*, !dbg !1876
  %134 = tail call i32 %131(i8* %133, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str99, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 144) #8, !dbg !1876
  %135 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1877, !tbaa !1331
  %136 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 8, !dbg !1877
  %137 = bitcast i32* %136 to i8*, !dbg !1877
  %138 = tail call i32 %135(i8* %137, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str100, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 145) #8, !dbg !1877
  %139 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1878, !tbaa !1331
  %140 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 9, !dbg !1878
  %141 = bitcast i32* %140 to i8*, !dbg !1878
  %142 = tail call i32 %139(i8* %141, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str101, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 146) #8, !dbg !1878
  %143 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1879, !tbaa !1331
  %144 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 10, !dbg !1879
  %145 = bitcast i32* %144 to i8*, !dbg !1879
  %146 = tail call i32 %143(i8* %145, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str102, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 147) #8, !dbg !1879
  %147 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1880, !tbaa !1331
  %148 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 11, !dbg !1880
  %149 = bitcast i32* %148 to i8*, !dbg !1880
  %150 = tail call i32 %147(i8* %149, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str103, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 148) #8, !dbg !1880
  %151 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1881, !tbaa !1331
  %152 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 12, !dbg !1881
  %153 = bitcast i32* %152 to i8*, !dbg !1881
  %154 = tail call i32 %151(i8* %153, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str104, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 149) #8, !dbg !1881
  %155 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1882, !tbaa !1331
  %156 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 13, !dbg !1882
  %157 = bitcast i32* %156 to i8*, !dbg !1882
  %158 = tail call i32 %155(i8* %157, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str105, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 150) #8, !dbg !1882
  %159 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1883, !tbaa !1331
  %160 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 14, !dbg !1883
  %161 = bitcast float* %160 to i8*, !dbg !1883
  %162 = tail call i32 %159(i8* %161, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str106, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 151) #8, !dbg !1883
  %163 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1884, !tbaa !1331
  %164 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15, !dbg !1884
  %165 = bitcast float* %164 to i8*, !dbg !1884
  %166 = tail call i32 %163(i8* %165, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str107, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 152) #8, !dbg !1884
  %167 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1885, !tbaa !1331
  %168 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 16, !dbg !1885
  %169 = bitcast float* %168 to i8*, !dbg !1885
  %170 = tail call i32 %167(i8* %169, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str108, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 153) #8, !dbg !1885
  br label %171, !dbg !1885

; <label>:171                                     ; preds = %106, %41
  %172 = load i32* @file_version, align 4, !dbg !1886, !tbaa !1469
  %173 = icmp slt i32 %172, 19, !dbg !1888
  br i1 %173, label %174, label %.thread30, !dbg !1889

; <label>:174                                     ; preds = %171
  br i1 %7, label %175, label %181, !dbg !1890

; <label>:175                                     ; preds = %174
  %176 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1890, !tbaa !1331
  %177 = bitcast i32* %idum to i8*, !dbg !1890
  %178 = call i32 %176(i8* %177, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str109, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 155) #8, !dbg !1890
  %179 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1892, !tbaa !1331
  %180 = call i32 %179(i8* %177, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str109, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 156) #8, !dbg !1892
  br label %187, !dbg !1892

; <label>:181                                     ; preds = %174
  %182 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1890, !tbaa !1331
  %183 = bitcast i32* %idum to i8*, !dbg !1890
  %184 = call i32 %182(i8* %183, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str109, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 155) #8, !dbg !1890
  %185 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1892, !tbaa !1331
  %186 = call i32 %185(i8* %183, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str109, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 156) #8, !dbg !1892
  br label %187, !dbg !1892

; <label>:187                                     ; preds = %175, %181
  %.pr29 = load i32* @file_version, align 4, !dbg !1893, !tbaa !1469
  %188 = icmp slt i32 %.pr29, 18, !dbg !1895
  br i1 %188, label %189, label %.thread30, !dbg !1896

; <label>:189                                     ; preds = %187
  br i1 %7, label %.thread31, label %.thread32, !dbg !1897

.thread31:                                        ; preds = %189
  %190 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1897, !tbaa !1331
  %191 = bitcast i32* %idum to i8*, !dbg !1897
  %192 = call i32 %190(i8* %191, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str109, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 159) #8, !dbg !1897
  br label %196, !dbg !1898

.thread32:                                        ; preds = %189
  %193 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1897, !tbaa !1331
  %194 = bitcast i32* %idum to i8*, !dbg !1897
  %195 = call i32 %193(i8* %194, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str109, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 159) #8, !dbg !1897
  br label %253, !dbg !1898

.thread30:                                        ; preds = %171, %187
  br i1 %7, label %196, label %253, !dbg !1898

; <label>:196                                     ; preds = %.thread30, %.thread31
  %197 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1898, !tbaa !1331
  %198 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 35, !dbg !1898
  %199 = bitcast float* %198 to i8*, !dbg !1898
  %200 = call i32 %197(i8* %199, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str110, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 160) #8, !dbg !1898
  %201 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1899, !tbaa !1331
  %202 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 36, !dbg !1899
  %203 = bitcast i32* %202 to i8*, !dbg !1899
  %204 = call i32 %201(i8* %203, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str111, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 161) #8, !dbg !1899
  %205 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1900, !tbaa !1331
  %206 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37, !dbg !1900
  %207 = bitcast float* %206 to i8*, !dbg !1900
  %208 = call i32 %205(i8* %207, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str112, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 162) #8, !dbg !1900
  %209 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1901, !tbaa !1331
  %210 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38, !dbg !1901
  %211 = bitcast float* %210 to i8*, !dbg !1901
  %212 = call i32 %209(i8* %211, i32 1, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str113, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 163) #8, !dbg !1901
  %213 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1902, !tbaa !1331
  %214 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 39, !dbg !1902
  %215 = bitcast i32* %214 to i8*, !dbg !1902
  %216 = call i32 %213(i8* %215, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str114, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 164) #8, !dbg !1902
  %217 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1903, !tbaa !1331
  %218 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 40, !dbg !1903
  %219 = bitcast float* %218 to i8*, !dbg !1903
  %220 = call i32 %217(i8* %219, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str115, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 165) #8, !dbg !1903
  %221 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1904, !tbaa !1331
  %222 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 41, !dbg !1904
  %223 = bitcast float* %222 to i8*, !dbg !1904
  %224 = call i32 %221(i8* %223, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str116, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 166) #8, !dbg !1904
  %225 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1905, !tbaa !1331
  %226 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 43, !dbg !1905
  %227 = bitcast i32* %226 to i8*, !dbg !1905
  %228 = call i32 %225(i8* %227, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str117, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 167) #8, !dbg !1905
  %229 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1906, !tbaa !1331
  %230 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 42, !dbg !1906
  %231 = bitcast float* %230 to i8*, !dbg !1906
  %232 = call i32 %229(i8* %231, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 168) #8, !dbg !1906
  %233 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1907, !tbaa !1331
  %234 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 17, !dbg !1907
  %235 = bitcast i32* %234 to i8*, !dbg !1907
  %236 = call i32 %233(i8* %235, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str119, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 169) #8, !dbg !1907
  %237 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1908, !tbaa !1331
  %238 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 18, !dbg !1908
  %239 = bitcast i32* %238 to i8*, !dbg !1908
  %240 = call i32 %237(i8* %239, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str120, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 170) #8, !dbg !1908
  %241 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1909, !tbaa !1331
  %242 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 19, !dbg !1909
  %243 = bitcast i32* %242 to i8*, !dbg !1909
  %244 = call i32 %241(i8* %243, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str121, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 171) #8, !dbg !1909
  %245 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1910, !tbaa !1331
  %246 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 20, !dbg !1910
  %247 = bitcast i32* %246 to i8*, !dbg !1910
  %248 = call i32 %245(i8* %247, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str122, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 172) #8, !dbg !1910
  %249 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1911, !tbaa !1331
  %250 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 21, !dbg !1911
  %251 = bitcast float* %250 to i8*, !dbg !1911
  %252 = call i32 %249(i8* %251, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str123, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 173) #8, !dbg !1911
  br label %310, !dbg !1911

; <label>:253                                     ; preds = %.thread32, %.thread30
  %254 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1898, !tbaa !1331
  %255 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 35, !dbg !1898
  %256 = bitcast float* %255 to i8*, !dbg !1898
  %257 = call i32 %254(i8* %256, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str110, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 160) #8, !dbg !1898
  %258 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1899, !tbaa !1331
  %259 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 36, !dbg !1899
  %260 = bitcast i32* %259 to i8*, !dbg !1899
  %261 = call i32 %258(i8* %260, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str111, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 161) #8, !dbg !1899
  %262 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1900, !tbaa !1331
  %263 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37, !dbg !1900
  %264 = bitcast float* %263 to i8*, !dbg !1900
  %265 = call i32 %262(i8* %264, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str112, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 162) #8, !dbg !1900
  %266 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1901, !tbaa !1331
  %267 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38, !dbg !1901
  %268 = bitcast float* %267 to i8*, !dbg !1901
  %269 = call i32 %266(i8* %268, i32 1, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str113, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 163) #8, !dbg !1901
  %270 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1902, !tbaa !1331
  %271 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 39, !dbg !1902
  %272 = bitcast i32* %271 to i8*, !dbg !1902
  %273 = call i32 %270(i8* %272, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str114, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 164) #8, !dbg !1902
  %274 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1903, !tbaa !1331
  %275 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 40, !dbg !1903
  %276 = bitcast float* %275 to i8*, !dbg !1903
  %277 = call i32 %274(i8* %276, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str115, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 165) #8, !dbg !1903
  %278 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1904, !tbaa !1331
  %279 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 41, !dbg !1904
  %280 = bitcast float* %279 to i8*, !dbg !1904
  %281 = call i32 %278(i8* %280, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str116, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 166) #8, !dbg !1904
  %282 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1905, !tbaa !1331
  %283 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 43, !dbg !1905
  %284 = bitcast i32* %283 to i8*, !dbg !1905
  %285 = call i32 %282(i8* %284, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str117, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 167) #8, !dbg !1905
  %286 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1906, !tbaa !1331
  %287 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 42, !dbg !1906
  %288 = bitcast float* %287 to i8*, !dbg !1906
  %289 = call i32 %286(i8* %288, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 168) #8, !dbg !1906
  %290 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1907, !tbaa !1331
  %291 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 17, !dbg !1907
  %292 = bitcast i32* %291 to i8*, !dbg !1907
  %293 = call i32 %290(i8* %292, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str119, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 169) #8, !dbg !1907
  %294 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1908, !tbaa !1331
  %295 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 18, !dbg !1908
  %296 = bitcast i32* %295 to i8*, !dbg !1908
  %297 = call i32 %294(i8* %296, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str120, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 170) #8, !dbg !1908
  %298 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1909, !tbaa !1331
  %299 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 19, !dbg !1909
  %300 = bitcast i32* %299 to i8*, !dbg !1909
  %301 = call i32 %298(i8* %300, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str121, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 171) #8, !dbg !1909
  %302 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1910, !tbaa !1331
  %303 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 20, !dbg !1910
  %304 = bitcast i32* %303 to i8*, !dbg !1910
  %305 = call i32 %302(i8* %304, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str122, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 172) #8, !dbg !1910
  %306 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1911, !tbaa !1331
  %307 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 21, !dbg !1911
  %308 = bitcast float* %307 to i8*, !dbg !1911
  %309 = call i32 %306(i8* %308, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str123, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 173) #8, !dbg !1911
  br label %310, !dbg !1911

; <label>:310                                     ; preds = %253, %196
  %311 = load i32* @file_version, align 4, !dbg !1912, !tbaa !1469
  %312 = icmp sgt i32 %311, 23, !dbg !1914
  br i1 %312, label %313, label %324, !dbg !1915

; <label>:313                                     ; preds = %310
  br i1 %7, label %314, label %319, !dbg !1916

; <label>:314                                     ; preds = %313
  %315 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1916, !tbaa !1331
  %316 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 22, !dbg !1916
  %317 = bitcast i32* %316 to i8*, !dbg !1916
  %318 = call i32 %315(i8* %317, i32 1, i32 1, i8* getelementptr inbounds ([19 x i8]* @.str124, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 176) #8, !dbg !1916
  br label %326, !dbg !1916

; <label>:319                                     ; preds = %313
  %320 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1916, !tbaa !1331
  %321 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 22, !dbg !1916
  %322 = bitcast i32* %321 to i8*, !dbg !1916
  %323 = call i32 %320(i8* %322, i32 1, i32 1, i8* getelementptr inbounds ([19 x i8]* @.str124, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 176) #8, !dbg !1916
  br label %326, !dbg !1916

; <label>:324                                     ; preds = %310
  %325 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 22, !dbg !1917
  store i32 0, i32* %325, align 4, !dbg !1918, !tbaa !1919
  br label %326

; <label>:326                                     ; preds = %314, %319, %324
  %327 = load i32* @file_version, align 4, !dbg !1920, !tbaa !1469
  %328 = icmp slt i32 %327, 18, !dbg !1922
  br i1 %328, label %329, label %342, !dbg !1923

; <label>:329                                     ; preds = %326
  %330 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 23, !dbg !1924
  store i32 0, i32* %330, align 4, !dbg !1926, !tbaa !1927
  %331 = load i32* @file_version, align 4, !dbg !1928, !tbaa !1469
  %332 = icmp eq i32 %331, 17, !dbg !1930
  br i1 %332, label %333, label %353, !dbg !1931

; <label>:333                                     ; preds = %329
  br i1 %7, label %334, label %338, !dbg !1932

; <label>:334                                     ; preds = %333
  %335 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1932, !tbaa !1331
  %336 = bitcast i32* %idum to i8*, !dbg !1932
  %337 = call i32 %335(i8* %336, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str109, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 183) #8, !dbg !1932
  br label %.thread46, !dbg !1932

; <label>:338                                     ; preds = %333
  %339 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1932, !tbaa !1331
  %340 = bitcast i32* %idum to i8*, !dbg !1932
  %341 = call i32 %339(i8* %340, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str109, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 183) #8, !dbg !1932
  br label %.thread48, !dbg !1932

; <label>:342                                     ; preds = %326
  br i1 %7, label %343, label %348, !dbg !1933

; <label>:343                                     ; preds = %342
  %344 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1933, !tbaa !1331
  %345 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 23, !dbg !1933
  %346 = bitcast i32* %345 to i8*, !dbg !1933
  %347 = call i32 %344(i8* %346, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str125, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 186) #8, !dbg !1933
  br label %.thread46, !dbg !1933

; <label>:348                                     ; preds = %342
  %349 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1933, !tbaa !1331
  %350 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 23, !dbg !1933
  %351 = bitcast i32* %350 to i8*, !dbg !1933
  %352 = call i32 %349(i8* %351, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str125, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 186) #8, !dbg !1933
  br label %.thread48, !dbg !1933

; <label>:353                                     ; preds = %329
  br i1 %7, label %.thread46, label %.thread48, !dbg !1934

.thread46:                                        ; preds = %334, %343, %353
  %354 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1934, !tbaa !1331
  %355 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 24, !dbg !1934
  %356 = bitcast i32* %355 to i8*, !dbg !1934
  %357 = call i32 %354(i8* %356, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str126, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 188) #8, !dbg !1934
  %358 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1935, !tbaa !1331
  %359 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 26, !dbg !1935
  %360 = bitcast i32* %359 to i8*, !dbg !1935
  %361 = call i32 %358(i8* %360, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str127, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 189) #8, !dbg !1935
  %362 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1936, !tbaa !1331
  %363 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 27, !dbg !1936
  %364 = bitcast i32* %363 to i8*, !dbg !1936
  %365 = call i32 %362(i8* %364, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str128, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 190) #8, !dbg !1936
  br label %378, !dbg !1936

.thread48:                                        ; preds = %338, %348, %353
  %366 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1934, !tbaa !1331
  %367 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 24, !dbg !1934
  %368 = bitcast i32* %367 to i8*, !dbg !1934
  %369 = call i32 %366(i8* %368, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str126, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 188) #8, !dbg !1934
  %370 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1935, !tbaa !1331
  %371 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 26, !dbg !1935
  %372 = bitcast i32* %371 to i8*, !dbg !1935
  %373 = call i32 %370(i8* %372, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str127, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 189) #8, !dbg !1935
  %374 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1936, !tbaa !1331
  %375 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 27, !dbg !1936
  %376 = bitcast i32* %375 to i8*, !dbg !1936
  %377 = call i32 %374(i8* %376, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str128, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 190) #8, !dbg !1936
  br label %378, !dbg !1936

; <label>:378                                     ; preds = %.thread48, %.thread46
  %379 = load i32* @file_version, align 4, !dbg !1937, !tbaa !1469
  %380 = icmp slt i32 %379, 16, !dbg !1939
  br i1 %380, label %381, label %390, !dbg !1940

; <label>:381                                     ; preds = %378
  br i1 %7, label %382, label %386, !dbg !1941

; <label>:382                                     ; preds = %381
  %383 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1941, !tbaa !1331
  %384 = bitcast i32* %idum to i8*, !dbg !1941
  %385 = call i32 %383(i8* %384, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str109, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 196) #8, !dbg !1941
  br label %thread-pre-split, !dbg !1941

; <label>:386                                     ; preds = %381
  %387 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1941, !tbaa !1331
  %388 = bitcast i32* %idum to i8*, !dbg !1941
  %389 = call i32 %387(i8* %388, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str109, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 196) #8, !dbg !1941
  br label %thread-pre-split, !dbg !1941

thread-pre-split:                                 ; preds = %386, %382
  %.pr51 = load i32* @file_version, align 4, !dbg !1942, !tbaa !1469
  br label %390

; <label>:390                                     ; preds = %thread-pre-split, %378
  %391 = phi i32 [ %.pr51, %thread-pre-split ], [ %379, %378 ], !dbg !1942
  %392 = icmp slt i32 %391, 18, !dbg !1944
  br i1 %392, label %393, label %427, !dbg !1945

; <label>:393                                     ; preds = %390
  br i1 %7, label %394, label %399, !dbg !1946

; <label>:394                                     ; preds = %393
  %395 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1946, !tbaa !1331
  %396 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 29, !dbg !1946
  %397 = bitcast i32* %396 to i8*, !dbg !1946
  %398 = call i32 %395(i8* %397, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 198) #8, !dbg !1946
  br label %404, !dbg !1946

; <label>:399                                     ; preds = %393
  %400 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1946, !tbaa !1331
  %401 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 29, !dbg !1946
  %402 = bitcast i32* %401 to i8*, !dbg !1946
  %403 = call i32 %400(i8* %402, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 198) #8, !dbg !1946
  br label %404, !dbg !1946

; <label>:404                                     ; preds = %399, %394
  %405 = load i32* @file_version, align 4, !dbg !1948, !tbaa !1469
  %406 = icmp slt i32 %405, 16, !dbg !1950
  %407 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 29, !dbg !1951
  br i1 %406, label %408, label %._crit_edge183, !dbg !1954

; <label>:408                                     ; preds = %404
  %409 = load i32* %407, align 4, !dbg !1951, !tbaa !1955
  %410 = icmp eq i32 %409, 5, !dbg !1956
  br i1 %410, label %411, label %412, !dbg !1957

; <label>:411                                     ; preds = %408
  store i32 3, i32* %407, align 4, !dbg !1958, !tbaa !1955
  br label %412, !dbg !1959

; <label>:412                                     ; preds = %411, %408
  br i1 %7, label %413, label %417, !dbg !1960

; <label>:413                                     ; preds = %412
  %414 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1960, !tbaa !1331
  %415 = bitcast i32* %idum to i8*, !dbg !1960
  %416 = call i32 %414(i8* %415, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str109, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 202) #8, !dbg !1960
  br label %._crit_edge183, !dbg !1960

; <label>:417                                     ; preds = %412
  %418 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1960, !tbaa !1331
  %419 = bitcast i32* %idum to i8*, !dbg !1960
  %420 = call i32 %418(i8* %419, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str109, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 202) #8, !dbg !1960
  br label %._crit_edge183, !dbg !1960

._crit_edge183:                                   ; preds = %404, %413, %417
  %421 = load i32* %407, align 4, !dbg !1961, !tbaa !1955
  %422 = add nsw i32 %421, -1, !dbg !1961
  store i32 %422, i32* %407, align 4, !dbg !1961, !tbaa !1955
  %423 = icmp eq i32 %421, 0, !dbg !1962
  %424 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 28, !dbg !1964
  br i1 %423, label %425, label %426, !dbg !1966

; <label>:425                                     ; preds = %._crit_edge183
  store i32 0, i32* %424, align 4, !dbg !1967, !tbaa !1968
  store i32 0, i32* %407, align 4, !dbg !1969, !tbaa !1955
  br label %444, !dbg !1970

; <label>:426                                     ; preds = %._crit_edge183
  store i32 1, i32* %424, align 4, !dbg !1971, !tbaa !1968
  br label %444

; <label>:427                                     ; preds = %390
  br i1 %7, label %.thread53, label %.thread54, !dbg !1972

.thread53:                                        ; preds = %427
  %428 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1972, !tbaa !1331
  %429 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 28, !dbg !1972
  %430 = bitcast i32* %429 to i8*, !dbg !1972
  %431 = call i32 %428(i8* %430, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str130, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 214) #8, !dbg !1972
  %432 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1974, !tbaa !1331
  %433 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 29, !dbg !1974
  %434 = bitcast i32* %433 to i8*, !dbg !1974
  %435 = call i32 %432(i8* %434, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 215) #8, !dbg !1974
  br label %445, !dbg !1975

.thread54:                                        ; preds = %427
  %436 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1972, !tbaa !1331
  %437 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 28, !dbg !1972
  %438 = bitcast i32* %437 to i8*, !dbg !1972
  %439 = call i32 %436(i8* %438, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str130, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 214) #8, !dbg !1972
  %440 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1974, !tbaa !1331
  %441 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 29, !dbg !1974
  %442 = bitcast i32* %441 to i8*, !dbg !1974
  %443 = call i32 %440(i8* %442, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 215) #8, !dbg !1974
  br label %450, !dbg !1975

; <label>:444                                     ; preds = %425, %426
  br i1 %7, label %445, label %450, !dbg !1975

; <label>:445                                     ; preds = %.thread53, %444
  %446 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1975, !tbaa !1331
  %447 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 30, !dbg !1975
  %448 = bitcast float* %447 to i8*, !dbg !1975
  %449 = call i32 %446(i8* %448, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str131, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 217) #8, !dbg !1975
  br label %455, !dbg !1975

; <label>:450                                     ; preds = %.thread54, %444
  %451 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1975, !tbaa !1331
  %452 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 30, !dbg !1975
  %453 = bitcast float* %452 to i8*, !dbg !1975
  %454 = call i32 %451(i8* %453, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str131, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 217) #8, !dbg !1975
  br label %455, !dbg !1975

; <label>:455                                     ; preds = %450, %445
  %456 = load i32* @file_version, align 4, !dbg !1976, !tbaa !1469
  %457 = icmp slt i32 %456, 16, !dbg !1978
  br i1 %457, label %458, label %476, !dbg !1979

; <label>:458                                     ; preds = %455
  br i1 %7, label %459, label %463, !dbg !1980

; <label>:459                                     ; preds = %458
  %460 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1980, !tbaa !1331
  %461 = bitcast [3 x float]* %vdum to i8*, !dbg !1980
  %462 = call i32 %460(i8* %461, i32 1, i32 4, i8* getelementptr inbounds ([5 x i8]* @.str132, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 219) #8, !dbg !1980
  br label %467, !dbg !1980

; <label>:463                                     ; preds = %458
  %464 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1980, !tbaa !1331
  %465 = bitcast [3 x float]* %vdum to i8*, !dbg !1980
  %466 = call i32 %464(i8* %465, i32 1, i32 4, i8* getelementptr inbounds ([5 x i8]* @.str132, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 219) #8, !dbg !1980
  br label %467, !dbg !1980

; <label>:467                                     ; preds = %463, %459
  %468 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 0, !dbg !1982
  call void @llvm.dbg.value(metadata [3 x float]* %468, i64 0, metadata !987, metadata !1151) #5, !dbg !1983
  call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !988, metadata !1151) #5, !dbg !1985
  %469 = bitcast [3 x float]* %468 to i8*, !dbg !1986
  call void @llvm.memset.p0i8.i64(i8* %469, i8 0, i64 36, i32 4, i1 false) #5, !dbg !1987
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !913, metadata !1151), !dbg !1988
  br label %470, !dbg !1989

; <label>:470                                     ; preds = %470, %467
  %indvars.iv179 = phi i64 [ 0, %467 ], [ %indvars.iv.next180, %470 ]
  %471 = getelementptr inbounds [3 x float]* %vdum, i64 0, i64 %indvars.iv179, !dbg !1991
  %472 = bitcast float* %471 to i32*, !dbg !1991
  %473 = load i32* %472, align 4, !dbg !1991, !tbaa !1279
  %474 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 %indvars.iv179, i64 %indvars.iv179, !dbg !1993
  %475 = bitcast float* %474 to i32*, !dbg !1994
  store i32 %473, i32* %475, align 4, !dbg !1994, !tbaa !1279
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1, !dbg !1989
  %exitcond181 = icmp eq i64 %indvars.iv.next180, 3, !dbg !1989
  br i1 %exitcond181, label %.loopexit113, label %470, !dbg !1989

; <label>:476                                     ; preds = %455
  br i1 %7, label %477, label %490, !dbg !1995

; <label>:477                                     ; preds = %476
  %478 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1995, !tbaa !1331
  %479 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 0, i64 0, !dbg !1995
  %480 = bitcast float* %479 to i8*, !dbg !1995
  %481 = call i32 %478(i8* %480, i32 1, i32 4, i8* getelementptr inbounds ([14 x i8]* @.str133, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 224) #8, !dbg !1995
  %482 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1997, !tbaa !1331
  %483 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 1, i64 0, !dbg !1997
  %484 = bitcast float* %483 to i8*, !dbg !1997
  %485 = call i32 %482(i8* %484, i32 1, i32 4, i8* getelementptr inbounds ([14 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 225) #8, !dbg !1997
  %486 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1998, !tbaa !1331
  %487 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 2, i64 0, !dbg !1998
  %488 = bitcast float* %487 to i8*, !dbg !1998
  %489 = call i32 %486(i8* %488, i32 1, i32 4, i8* getelementptr inbounds ([14 x i8]* @.str135, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 226) #8, !dbg !1998
  br label %.loopexit113, !dbg !1998

; <label>:490                                     ; preds = %476
  %491 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1995, !tbaa !1331
  %492 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 0, i64 0, !dbg !1995
  %493 = bitcast float* %492 to i8*, !dbg !1995
  %494 = call i32 %491(i8* %493, i32 1, i32 4, i8* getelementptr inbounds ([14 x i8]* @.str133, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 224) #8, !dbg !1995
  %495 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1997, !tbaa !1331
  %496 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 1, i64 0, !dbg !1997
  %497 = bitcast float* %496 to i8*, !dbg !1997
  %498 = call i32 %495(i8* %497, i32 1, i32 4, i8* getelementptr inbounds ([14 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 225) #8, !dbg !1997
  %499 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1998, !tbaa !1331
  %500 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 2, i64 0, !dbg !1998
  %501 = bitcast float* %500 to i8*, !dbg !1998
  %502 = call i32 %499(i8* %501, i32 1, i32 4, i8* getelementptr inbounds ([14 x i8]* @.str135, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 226) #8, !dbg !1998
  br label %.loopexit113, !dbg !1998

.loopexit113:                                     ; preds = %470, %477, %490
  %503 = load i32* @file_version, align 4, !dbg !1999, !tbaa !1469
  %504 = icmp slt i32 %503, 16, !dbg !2001
  br i1 %504, label %505, label %523, !dbg !2002

; <label>:505                                     ; preds = %.loopexit113
  br i1 %7, label %506, label %510, !dbg !2003

; <label>:506                                     ; preds = %505
  %507 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2003, !tbaa !1331
  %508 = bitcast [3 x float]* %vdum to i8*, !dbg !2003
  %509 = call i32 %507(i8* %508, i32 1, i32 4, i8* getelementptr inbounds ([5 x i8]* @.str132, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 229) #8, !dbg !2003
  br label %514, !dbg !2003

; <label>:510                                     ; preds = %505
  %511 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2003, !tbaa !1331
  %512 = bitcast [3 x float]* %vdum to i8*, !dbg !2003
  %513 = call i32 %511(i8* %512, i32 1, i32 4, i8* getelementptr inbounds ([5 x i8]* @.str132, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 229) #8, !dbg !2003
  br label %514, !dbg !2003

; <label>:514                                     ; preds = %510, %506
  %515 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 0, !dbg !2005
  call void @llvm.dbg.value(metadata [3 x float]* %515, i64 0, metadata !987, metadata !1151) #5, !dbg !2006
  call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !988, metadata !1151) #5, !dbg !2008
  %516 = bitcast [3 x float]* %515 to i8*, !dbg !2009
  call void @llvm.memset.p0i8.i64(i8* %516, i8 0, i64 36, i32 4, i1 false) #5, !dbg !2010
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !913, metadata !1151), !dbg !1988
  br label %517, !dbg !2011

; <label>:517                                     ; preds = %517, %514
  %indvars.iv176 = phi i64 [ 0, %514 ], [ %indvars.iv.next177, %517 ]
  %518 = getelementptr inbounds [3 x float]* %vdum, i64 0, i64 %indvars.iv176, !dbg !2013
  %519 = bitcast float* %518 to i32*, !dbg !2013
  %520 = load i32* %519, align 4, !dbg !2013, !tbaa !1279
  %521 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 %indvars.iv176, i64 %indvars.iv176, !dbg !2015
  %522 = bitcast float* %521 to i32*, !dbg !2016
  store i32 %520, i32* %522, align 4, !dbg !2016, !tbaa !1279
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1, !dbg !2011
  %exitcond178 = icmp eq i64 %indvars.iv.next177, 3, !dbg !2011
  br i1 %exitcond178, label %548, label %517, !dbg !2011

; <label>:523                                     ; preds = %.loopexit113
  br i1 %7, label %.thread59, label %.thread60, !dbg !2017

.thread59:                                        ; preds = %523
  %524 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2017, !tbaa !1331
  %525 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 0, i64 0, !dbg !2017
  %526 = bitcast float* %525 to i8*, !dbg !2017
  %527 = call i32 %524(i8* %526, i32 1, i32 4, i8* getelementptr inbounds ([17 x i8]* @.str136, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 235) #8, !dbg !2017
  %528 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2019, !tbaa !1331
  %529 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 1, i64 0, !dbg !2019
  %530 = bitcast float* %529 to i8*, !dbg !2019
  %531 = call i32 %528(i8* %530, i32 1, i32 4, i8* getelementptr inbounds ([17 x i8]* @.str137, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 236) #8, !dbg !2019
  %532 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2020, !tbaa !1331
  %533 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 2, i64 0, !dbg !2020
  %534 = bitcast float* %533 to i8*, !dbg !2020
  %535 = call i32 %532(i8* %534, i32 1, i32 4, i8* getelementptr inbounds ([17 x i8]* @.str138, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 237) #8, !dbg !2020
  br label %549, !dbg !2021

.thread60:                                        ; preds = %523
  %536 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2017, !tbaa !1331
  %537 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 0, i64 0, !dbg !2017
  %538 = bitcast float* %537 to i8*, !dbg !2017
  %539 = call i32 %536(i8* %538, i32 1, i32 4, i8* getelementptr inbounds ([17 x i8]* @.str136, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 235) #8, !dbg !2017
  %540 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2019, !tbaa !1331
  %541 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 1, i64 0, !dbg !2019
  %542 = bitcast float* %541 to i8*, !dbg !2019
  %543 = call i32 %540(i8* %542, i32 1, i32 4, i8* getelementptr inbounds ([17 x i8]* @.str137, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 236) #8, !dbg !2019
  %544 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2020, !tbaa !1331
  %545 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 2, i64 0, !dbg !2020
  %546 = bitcast float* %545 to i8*, !dbg !2020
  %547 = call i32 %544(i8* %546, i32 1, i32 4, i8* getelementptr inbounds ([17 x i8]* @.str138, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 237) #8, !dbg !2020
  br label %574, !dbg !2021

; <label>:548                                     ; preds = %517
  br i1 %7, label %549, label %574, !dbg !2021

; <label>:549                                     ; preds = %548, %.thread59
  %550 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2021, !tbaa !1331
  %551 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 33, !dbg !2021
  %552 = bitcast i32* %551 to i8*, !dbg !2021
  %553 = call i32 %550(i8* %552, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str139, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 239) #8, !dbg !2021
  %554 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2022, !tbaa !1331
  %555 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 34, !dbg !2022
  %556 = bitcast float* %555 to i8*, !dbg !2022
  %557 = call i32 %554(i8* %556, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str140, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 240) #8, !dbg !2022
  %558 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2023, !tbaa !1331
  %559 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 42, !dbg !2023
  %560 = bitcast float* %559 to i8*, !dbg !2023
  %561 = call i32 %558(i8* %560, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 241) #8, !dbg !2023
  %562 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2024, !tbaa !1331
  %563 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 44, !dbg !2024
  %564 = bitcast float* %563 to i8*, !dbg !2024
  %565 = call i32 %562(i8* %564, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str141, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 242) #8, !dbg !2024
  %566 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2025, !tbaa !1331
  %567 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 45, !dbg !2025
  %568 = bitcast float* %567 to i8*, !dbg !2025
  %569 = call i32 %566(i8* %568, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str142, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 243) #8, !dbg !2025
  %570 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2026, !tbaa !1331
  %571 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46, !dbg !2026
  %572 = bitcast i32* %571 to i8*, !dbg !2026
  %573 = call i32 %570(i8* %572, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str143, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 244) #8, !dbg !2026
  br label %599, !dbg !2026

; <label>:574                                     ; preds = %.thread60, %548
  %575 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2021, !tbaa !1331
  %576 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 33, !dbg !2021
  %577 = bitcast i32* %576 to i8*, !dbg !2021
  %578 = call i32 %575(i8* %577, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str139, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 239) #8, !dbg !2021
  %579 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2022, !tbaa !1331
  %580 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 34, !dbg !2022
  %581 = bitcast float* %580 to i8*, !dbg !2022
  %582 = call i32 %579(i8* %581, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str140, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 240) #8, !dbg !2022
  %583 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2023, !tbaa !1331
  %584 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 42, !dbg !2023
  %585 = bitcast float* %584 to i8*, !dbg !2023
  %586 = call i32 %583(i8* %585, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 241) #8, !dbg !2023
  %587 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2024, !tbaa !1331
  %588 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 44, !dbg !2024
  %589 = bitcast float* %588 to i8*, !dbg !2024
  %590 = call i32 %587(i8* %589, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str141, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 242) #8, !dbg !2024
  %591 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2025, !tbaa !1331
  %592 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 45, !dbg !2025
  %593 = bitcast float* %592 to i8*, !dbg !2025
  %594 = call i32 %591(i8* %593, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str142, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 243) #8, !dbg !2025
  %595 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2026, !tbaa !1331
  %596 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46, !dbg !2026
  %597 = bitcast i32* %596 to i8*, !dbg !2026
  %598 = call i32 %595(i8* %597, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str143, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 244) #8, !dbg !2026
  br label %599, !dbg !2026

; <label>:599                                     ; preds = %574, %549
  %600 = load i32* @file_version, align 4, !dbg !2027, !tbaa !1469
  %601 = icmp slt i32 %600, 15, !dbg !2029
  br i1 %601, label %602, label %607, !dbg !2030

; <label>:602                                     ; preds = %599
  %603 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46, !dbg !2031
  %604 = load i32* %603, align 4, !dbg !2031, !tbaa !2032
  %605 = icmp sgt i32 %604, 0, !dbg !2033
  br i1 %605, label %606, label %607, !dbg !2034

; <label>:606                                     ; preds = %602
  store i32 1, i32* %603, align 4, !dbg !2035, !tbaa !2032
  br label %607, !dbg !2036

; <label>:607                                     ; preds = %606, %602, %599
  br i1 %7, label %608, label %617, !dbg !2037

; <label>:608                                     ; preds = %607
  %609 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2037, !tbaa !1331
  %610 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 47, !dbg !2037
  %611 = bitcast float* %610 to i8*, !dbg !2037
  %612 = call i32 %609(i8* %611, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str144, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 247) #8, !dbg !2037
  %613 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2038, !tbaa !1331
  %614 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 48, !dbg !2038
  %615 = bitcast float* %614 to i8*, !dbg !2038
  %616 = call i32 %613(i8* %615, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str145, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 248) #8, !dbg !2038
  br label %626, !dbg !2038

; <label>:617                                     ; preds = %607
  %618 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2037, !tbaa !1331
  %619 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 47, !dbg !2037
  %620 = bitcast float* %619 to i8*, !dbg !2037
  %621 = call i32 %618(i8* %620, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str144, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 247) #8, !dbg !2037
  %622 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2038, !tbaa !1331
  %623 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 48, !dbg !2038
  %624 = bitcast float* %623 to i8*, !dbg !2038
  %625 = call i32 %622(i8* %624, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str145, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 248) #8, !dbg !2038
  br label %626, !dbg !2038

; <label>:626                                     ; preds = %617, %608
  %627 = load i32* @file_version, align 4, !dbg !2039, !tbaa !1469
  %628 = icmp sgt i32 %627, 12, !dbg !2041
  br i1 %628, label %629, label %640, !dbg !2042

; <label>:629                                     ; preds = %626
  br i1 %7, label %630, label %635, !dbg !2043

; <label>:630                                     ; preds = %629
  %631 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2043, !tbaa !1331
  %632 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 49, !dbg !2043
  %633 = bitcast float* %632 to i8*, !dbg !2043
  %634 = call i32 %631(i8* %633, i32 1, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str146, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 250) #8, !dbg !2043
  br label %642, !dbg !2043

; <label>:635                                     ; preds = %629
  %636 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2043, !tbaa !1331
  %637 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 49, !dbg !2043
  %638 = bitcast float* %637 to i8*, !dbg !2043
  %639 = call i32 %636(i8* %638, i32 1, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str146, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 250) #8, !dbg !2043
  br label %642, !dbg !2043

; <label>:640                                     ; preds = %626
  %641 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 49, !dbg !2044
  store float 0.000000e+00, float* %641, align 4, !dbg !2045, !tbaa !2046
  br label %642

; <label>:642                                     ; preds = %630, %635, %640
  %643 = load i32* @file_version, align 4, !dbg !2047, !tbaa !1469
  %644 = icmp sgt i32 %643, 14, !dbg !2049
  br i1 %644, label %645, label %654, !dbg !2050

; <label>:645                                     ; preds = %642
  br i1 %7, label %.thread67, label %.thread68, !dbg !2051

.thread67:                                        ; preds = %645
  %646 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2051, !tbaa !1331
  %647 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 50, !dbg !2051
  %648 = bitcast float* %647 to i8*, !dbg !2051
  %649 = call i32 %646(i8* %648, i32 1, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str147, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 254) #8, !dbg !2051
  br label %656, !dbg !2052

.thread68:                                        ; preds = %645
  %650 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2051, !tbaa !1331
  %651 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 50, !dbg !2051
  %652 = bitcast float* %651 to i8*, !dbg !2051
  %653 = call i32 %650(i8* %652, i32 1, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str147, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 254) #8, !dbg !2051
  br label %661, !dbg !2052

; <label>:654                                     ; preds = %642
  %655 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 50, !dbg !2053
  store float 0x3FD3333340000000, float* %655, align 4, !dbg !2054, !tbaa !2055
  br i1 %7, label %656, label %661, !dbg !2052

; <label>:656                                     ; preds = %.thread67, %654
  %657 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2052, !tbaa !1331
  %658 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 52, !dbg !2052
  %659 = bitcast i32* %658 to i8*, !dbg !2052
  %660 = call i32 %657(i8* %659, i32 1, i32 1, i8* getelementptr inbounds ([20 x i8]* @.str148, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 257) #8, !dbg !2052
  br label %666, !dbg !2052

; <label>:661                                     ; preds = %.thread68, %654
  %662 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2052, !tbaa !1331
  %663 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 52, !dbg !2052
  %664 = bitcast i32* %663 to i8*, !dbg !2052
  %665 = call i32 %662(i8* %664, i32 1, i32 1, i8* getelementptr inbounds ([20 x i8]* @.str148, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 257) #8, !dbg !2052
  br label %666, !dbg !2052

; <label>:666                                     ; preds = %661, %656
  %667 = load i32* @file_version, align 4, !dbg !2056, !tbaa !1469
  %668 = icmp slt i32 %667, 22, !dbg !2058
  br i1 %668, label %669, label %675, !dbg !2059

; <label>:669                                     ; preds = %666
  %670 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 52, !dbg !2060
  %671 = load i32* %670, align 4, !dbg !2060, !tbaa !2063
  %672 = icmp eq i32 %671, 0, !dbg !2064
  br i1 %672, label %673, label %674, !dbg !2065

; <label>:673                                     ; preds = %669
  store i32 1, i32* %670, align 4, !dbg !2066, !tbaa !2063
  br label %675, !dbg !2067

; <label>:674                                     ; preds = %669
  store i32 0, i32* %670, align 4, !dbg !2068, !tbaa !2063
  br label %675

; <label>:675                                     ; preds = %673, %674, %666
  br i1 %7, label %676, label %693, !dbg !2069

; <label>:676                                     ; preds = %675
  %677 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2069, !tbaa !1331
  %678 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 53, !dbg !2069
  %679 = bitcast i32* %678 to i8*, !dbg !2069
  %680 = call i32 %677(i8* %679, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str149, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 264) #8, !dbg !2069
  %681 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2070, !tbaa !1331
  %682 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 51, !dbg !2070
  %683 = bitcast float* %682 to i8*, !dbg !2070
  %684 = call i32 %681(i8* %683, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str150, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 265) #8, !dbg !2070
  %685 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2071, !tbaa !1331
  %686 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 55, !dbg !2071
  %687 = bitcast float* %686 to i8*, !dbg !2071
  %688 = call i32 %685(i8* %687, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str151, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 266) #8, !dbg !2071
  %689 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2072, !tbaa !1331
  %690 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 54, !dbg !2072
  %691 = bitcast i32* %690 to i8*, !dbg !2072
  %692 = call i32 %689(i8* %691, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str152, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 267) #8, !dbg !2072
  br label %710, !dbg !2072

; <label>:693                                     ; preds = %675
  %694 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2069, !tbaa !1331
  %695 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 53, !dbg !2069
  %696 = bitcast i32* %695 to i8*, !dbg !2069
  %697 = call i32 %694(i8* %696, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str149, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 264) #8, !dbg !2069
  %698 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2070, !tbaa !1331
  %699 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 51, !dbg !2070
  %700 = bitcast float* %699 to i8*, !dbg !2070
  %701 = call i32 %698(i8* %700, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str150, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 265) #8, !dbg !2070
  %702 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2071, !tbaa !1331
  %703 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 55, !dbg !2071
  %704 = bitcast float* %703 to i8*, !dbg !2071
  %705 = call i32 %702(i8* %704, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str151, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 266) #8, !dbg !2071
  %706 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2072, !tbaa !1331
  %707 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 54, !dbg !2072
  %708 = bitcast i32* %707 to i8*, !dbg !2072
  %709 = call i32 %706(i8* %708, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str152, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 267) #8, !dbg !2072
  br label %710, !dbg !2072

; <label>:710                                     ; preds = %693, %676
  %711 = load i32* @file_version, align 4, !dbg !2073, !tbaa !1469
  %712 = icmp sgt i32 %711, 21, !dbg !2075
  br i1 %712, label %713, label %738, !dbg !2076

; <label>:713                                     ; preds = %710
  br i1 %7, label %.thread74, label %.thread75, !dbg !2077

.thread74:                                        ; preds = %713
  %714 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2077, !tbaa !1331
  %715 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 56, !dbg !2077
  %716 = bitcast float* %715 to i8*, !dbg !2077
  %717 = call i32 %714(i8* %716, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str153, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 269) #8, !dbg !2077
  %718 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2079, !tbaa !1331
  %719 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 57, !dbg !2079
  %720 = bitcast float* %719 to i8*, !dbg !2079
  %721 = call i32 %718(i8* %720, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str154, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 270) #8, !dbg !2079
  %722 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2080, !tbaa !1331
  %723 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 58, !dbg !2080
  %724 = bitcast i32* %723 to i8*, !dbg !2080
  %725 = call i32 %722(i8* %724, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str155, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 271) #8, !dbg !2080
  br label %742, !dbg !2081

.thread75:                                        ; preds = %713
  %726 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2077, !tbaa !1331
  %727 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 56, !dbg !2077
  %728 = bitcast float* %727 to i8*, !dbg !2077
  %729 = call i32 %726(i8* %728, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str153, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 269) #8, !dbg !2077
  %730 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2079, !tbaa !1331
  %731 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 57, !dbg !2079
  %732 = bitcast float* %731 to i8*, !dbg !2079
  %733 = call i32 %730(i8* %732, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str154, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 270) #8, !dbg !2079
  %734 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2080, !tbaa !1331
  %735 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 58, !dbg !2080
  %736 = bitcast i32* %735 to i8*, !dbg !2080
  %737 = call i32 %734(i8* %736, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str155, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 271) #8, !dbg !2080
  br label %751, !dbg !2081

; <label>:738                                     ; preds = %710
  %739 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 56, !dbg !2082
  store float 0.000000e+00, float* %739, align 4, !dbg !2084, !tbaa !2085
  %740 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 57, !dbg !2086
  store float 0.000000e+00, float* %740, align 4, !dbg !2087, !tbaa !2088
  %741 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 58, !dbg !2089
  store i32 0, i32* %741, align 4, !dbg !2090, !tbaa !2091
  br i1 %7, label %742, label %751, !dbg !2081

; <label>:742                                     ; preds = %738, %.thread74
  %743 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2081, !tbaa !1331
  %744 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 59, !dbg !2081
  %745 = bitcast float* %744 to i8*, !dbg !2081
  %746 = call i32 %743(i8* %745, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str156, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 277) #8, !dbg !2081
  %747 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2092, !tbaa !1331
  %748 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 60, !dbg !2092
  %749 = bitcast float* %748 to i8*, !dbg !2092
  %750 = call i32 %747(i8* %749, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str157, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 278) #8, !dbg !2092
  br label %760, !dbg !2092

; <label>:751                                     ; preds = %.thread75, %738
  %752 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2081, !tbaa !1331
  %753 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 59, !dbg !2081
  %754 = bitcast float* %753 to i8*, !dbg !2081
  %755 = call i32 %752(i8* %754, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str156, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 277) #8, !dbg !2081
  %756 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2092, !tbaa !1331
  %757 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 60, !dbg !2092
  %758 = bitcast float* %757 to i8*, !dbg !2092
  %759 = call i32 %756(i8* %758, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str157, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 278) #8, !dbg !2092
  br label %760, !dbg !2092

; <label>:760                                     ; preds = %751, %742
  %761 = load i32* @file_version, align 4, !dbg !2093, !tbaa !1469
  %762 = icmp sgt i32 %761, 21, !dbg !2095
  br i1 %762, label %763, label %774, !dbg !2096

; <label>:763                                     ; preds = %760
  br i1 %7, label %764, label %769, !dbg !2097

; <label>:764                                     ; preds = %763
  %765 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2097, !tbaa !1331
  %766 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 67, !dbg !2097
  %767 = bitcast i32* %766 to i8*, !dbg !2097
  %768 = call i32 %765(i8* %767, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str158, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 280) #8, !dbg !2097
  br label %777, !dbg !2097

; <label>:769                                     ; preds = %763
  %770 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2097, !tbaa !1331
  %771 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 67, !dbg !2097
  %772 = bitcast i32* %771 to i8*, !dbg !2097
  %773 = call i32 %770(i8* %772, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str158, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 280) #8, !dbg !2097
  br label %777, !dbg !2097

; <label>:774                                     ; preds = %760
  br i1 %7, label %775, label %777, !dbg !2098

; <label>:775                                     ; preds = %774
  %776 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 67, !dbg !2099
  store i32 1, i32* %776, align 4, !dbg !2101, !tbaa !2102
  br label %777, !dbg !2103

; <label>:777                                     ; preds = %774, %775, %764, %769
  %778 = load i32* @file_version, align 4, !dbg !2104, !tbaa !1469
  %779 = icmp sgt i32 %778, 10, !dbg !2106
  br i1 %779, label %780, label %791, !dbg !2107

; <label>:780                                     ; preds = %777
  br i1 %7, label %781, label %786, !dbg !2108

; <label>:781                                     ; preds = %780
  %782 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2108, !tbaa !1331
  %783 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 61, !dbg !2108
  %784 = bitcast i32* %783 to i8*, !dbg !2108
  %785 = call i32 %782(i8* %784, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str159, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 284) #8, !dbg !2108
  br label %796, !dbg !2108

; <label>:786                                     ; preds = %780
  %787 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2108, !tbaa !1331
  %788 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 61, !dbg !2108
  %789 = bitcast i32* %788 to i8*, !dbg !2108
  %790 = call i32 %787(i8* %789, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str159, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 284) #8, !dbg !2108
  br label %796, !dbg !2108

; <label>:791                                     ; preds = %777
  br i1 %7, label %792, label %796, !dbg !2109

; <label>:792                                     ; preds = %791
  %793 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 61, !dbg !2110
  store i32 25, i32* %793, align 4, !dbg !2113, !tbaa !2114
  %794 = load %struct.__sFILE** @__stderrp, align 8, !dbg !2115, !tbaa !1331
  %795 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %794, i8* getelementptr inbounds ([53 x i8]* @.str160, i64 0, i64 0), i32 25) #8, !dbg !2116
  br label %796, !dbg !2117

; <label>:796                                     ; preds = %791, %792, %781, %786
  %797 = load i32* @file_version, align 4, !dbg !2118, !tbaa !1469
  %798 = icmp sgt i32 %797, 20, !dbg !2120
  br i1 %798, label %799, label %808, !dbg !2121

; <label>:799                                     ; preds = %796
  br i1 %7, label %.thread77, label %.thread78, !dbg !2122

.thread77:                                        ; preds = %799
  %800 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2122, !tbaa !1331
  %801 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 62, !dbg !2122
  %802 = bitcast i32* %801 to i8*, !dbg !2122
  %803 = call i32 %800(i8* %802, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str161, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 291) #8, !dbg !2122
  br label %810, !dbg !2123

.thread78:                                        ; preds = %799
  %804 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2122, !tbaa !1331
  %805 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 62, !dbg !2122
  %806 = bitcast i32* %805 to i8*, !dbg !2122
  %807 = call i32 %804(i8* %806, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str161, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 291) #8, !dbg !2122
  br label %823, !dbg !2123

; <label>:808                                     ; preds = %796
  %809 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 62, !dbg !2124
  store i32 0, i32* %809, align 4, !dbg !2125, !tbaa !2126
  br i1 %7, label %810, label %823, !dbg !2123

; <label>:810                                     ; preds = %.thread77, %808
  %811 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2123, !tbaa !1331
  %812 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 64, !dbg !2123
  %813 = bitcast i32* %812 to i8*, !dbg !2123
  %814 = call i32 %811(i8* %813, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str162, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 294) #8, !dbg !2123
  %815 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2127, !tbaa !1331
  %816 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 65, !dbg !2127
  %817 = bitcast i32* %816 to i8*, !dbg !2127
  %818 = call i32 %815(i8* %817, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str163, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 295) #8, !dbg !2127
  %819 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2128, !tbaa !1331
  %820 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 66, !dbg !2128
  %821 = bitcast float* %820 to i8*, !dbg !2128
  %822 = call i32 %819(i8* %821, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str164, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 296) #8, !dbg !2128
  br label %836, !dbg !2128

; <label>:823                                     ; preds = %.thread78, %808
  %824 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2123, !tbaa !1331
  %825 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 64, !dbg !2123
  %826 = bitcast i32* %825 to i8*, !dbg !2123
  %827 = call i32 %824(i8* %826, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str162, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 294) #8, !dbg !2123
  %828 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2127, !tbaa !1331
  %829 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 65, !dbg !2127
  %830 = bitcast i32* %829 to i8*, !dbg !2127
  %831 = call i32 %828(i8* %830, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str163, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 295) #8, !dbg !2127
  %832 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2128, !tbaa !1331
  %833 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 66, !dbg !2128
  %834 = bitcast float* %833 to i8*, !dbg !2128
  %835 = call i32 %832(i8* %834, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str164, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 296) #8, !dbg !2128
  br label %836, !dbg !2128

; <label>:836                                     ; preds = %823, %810
  %837 = load i32* @file_version, align 4, !dbg !2129, !tbaa !1469
  %838 = icmp slt i32 %837, 15, !dbg !2131
  br i1 %838, label %839, label %846, !dbg !2132

; <label>:839                                     ; preds = %836
  br i1 %7, label %.thread81, label %.thread82, !dbg !2133

.thread81:                                        ; preds = %839
  %840 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2133, !tbaa !1331
  %841 = bitcast i32* %idum to i8*, !dbg !2133
  %842 = call i32 %840(i8* %841, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str109, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 298) #8, !dbg !2133
  br label %847, !dbg !2134

.thread82:                                        ; preds = %839
  %843 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2133, !tbaa !1331
  %844 = bitcast i32* %idum to i8*, !dbg !2133
  %845 = call i32 %843(i8* %844, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str109, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 298) #8, !dbg !2133
  br label %860, !dbg !2134

; <label>:846                                     ; preds = %836
  br i1 %7, label %847, label %860, !dbg !2134

; <label>:847                                     ; preds = %.thread81, %846
  %848 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2134, !tbaa !1331
  %849 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 68, !dbg !2134
  %850 = bitcast float* %849 to i8*, !dbg !2134
  %851 = call i32 %848(i8* %850, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str165, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 299) #8, !dbg !2134
  %852 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2135, !tbaa !1331
  %853 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 69, !dbg !2135
  %854 = bitcast float* %853 to i8*, !dbg !2135
  %855 = call i32 %852(i8* %854, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str166, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 300) #8, !dbg !2135
  %856 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2136, !tbaa !1331
  %857 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 70, !dbg !2136
  %858 = bitcast i32* %857 to i8*, !dbg !2136
  %859 = call i32 %856(i8* %858, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str167, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 301) #8, !dbg !2136
  br label %873, !dbg !2136

; <label>:860                                     ; preds = %.thread82, %846
  %861 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2134, !tbaa !1331
  %862 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 68, !dbg !2134
  %863 = bitcast float* %862 to i8*, !dbg !2134
  %864 = call i32 %861(i8* %863, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str165, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 299) #8, !dbg !2134
  %865 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2135, !tbaa !1331
  %866 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 69, !dbg !2135
  %867 = bitcast float* %866 to i8*, !dbg !2135
  %868 = call i32 %865(i8* %867, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str166, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 300) #8, !dbg !2135
  %869 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2136, !tbaa !1331
  %870 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 70, !dbg !2136
  %871 = bitcast i32* %870 to i8*, !dbg !2136
  %872 = call i32 %869(i8* %871, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str167, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 301) #8, !dbg !2136
  br label %873, !dbg !2136

; <label>:873                                     ; preds = %860, %847
  %874 = load i32* @file_version, align 4, !dbg !2137, !tbaa !1469
  %875 = icmp sgt i32 %874, 13, !dbg !2139
  br i1 %875, label %876, label %882, !dbg !2140

; <label>:876                                     ; preds = %873
  br i1 %7, label %877, label %885, !dbg !2141

; <label>:877                                     ; preds = %876
  %878 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2141, !tbaa !1331
  %879 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 71, !dbg !2141
  %880 = bitcast float* %879 to i8*, !dbg !2141
  %881 = call i32 %878(i8* %880, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str168, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 303) #8, !dbg !2141
  br label %939, !dbg !2141

; <label>:882                                     ; preds = %873
  br i1 %7, label %883, label %890, !dbg !2142

; <label>:883                                     ; preds = %882
  %884 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 71, !dbg !2143
  store float 0.000000e+00, float* %884, align 4, !dbg !2145, !tbaa !2146
  br label %939, !dbg !2147

; <label>:885                                     ; preds = %876
  %886 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2141, !tbaa !1331
  %887 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 71, !dbg !2141
  %888 = bitcast float* %887 to i8*, !dbg !2141
  %889 = call i32 %886(i8* %888, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str168, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 303) #8, !dbg !2141
  br label %890

; <label>:890                                     ; preds = %882, %885
  %891 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2148, !tbaa !1331
  %892 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 72, !dbg !2148
  %893 = bitcast i32* %892 to i8*, !dbg !2148
  %894 = call i32 %891(i8* %893, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str169, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 306) #8, !dbg !2148
  %895 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2149, !tbaa !1331
  %896 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 73, !dbg !2149
  %897 = bitcast i32* %896 to i8*, !dbg !2149
  %898 = call i32 %895(i8* %897, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str170, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 307) #8, !dbg !2149
  %899 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2150, !tbaa !1331
  %900 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 74, !dbg !2150
  %901 = bitcast i32* %900 to i8*, !dbg !2150
  %902 = call i32 %899(i8* %901, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str171, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 308) #8, !dbg !2150
  %903 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2151, !tbaa !1331
  %904 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 75, !dbg !2151
  %905 = bitcast i32* %904 to i8*, !dbg !2151
  %906 = call i32 %903(i8* %905, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str172, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 309) #8, !dbg !2151
  %907 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2152, !tbaa !1331
  %908 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 76, !dbg !2152
  %909 = bitcast float* %908 to i8*, !dbg !2152
  %910 = call i32 %907(i8* %909, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str173, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 310) #8, !dbg !2152
  %911 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2153, !tbaa !1331
  %912 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 77, !dbg !2153
  %913 = bitcast float* %912 to i8*, !dbg !2153
  %914 = call i32 %911(i8* %913, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str174, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 311) #8, !dbg !2153
  %915 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2154, !tbaa !1331
  %916 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 78, !dbg !2154
  %917 = bitcast float* %916 to i8*, !dbg !2154
  %918 = call i32 %915(i8* %917, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str175, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 312) #8, !dbg !2154
  %919 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2155, !tbaa !1331
  %920 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 79, !dbg !2155
  %921 = bitcast float* %920 to i8*, !dbg !2155
  %922 = call i32 %919(i8* %921, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str176, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 313) #8, !dbg !2155
  %923 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2156, !tbaa !1331
  %924 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 0, !dbg !2156
  %925 = bitcast i32* %924 to i8*, !dbg !2156
  %926 = call i32 %923(i8* %925, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str177, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 316) #8, !dbg !2156
  %927 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2157, !tbaa !1331
  %928 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 1, !dbg !2157
  %929 = bitcast i32* %928 to i8*, !dbg !2157
  %930 = call i32 %927(i8* %929, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str178, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 317) #8, !dbg !2157
  %931 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2158, !tbaa !1331
  %932 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 2, !dbg !2158
  %933 = bitcast i32* %932 to i8*, !dbg !2158
  %934 = call i32 %931(i8* %933, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str179, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 318) #8, !dbg !2158
  %935 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2159, !tbaa !1331
  %936 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 3, !dbg !2159
  %937 = bitcast i32* %936 to i8*, !dbg !2159
  %938 = call i32 %935(i8* %937, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str180, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 319) #8, !dbg !2159
  br label %1013

; <label>:939                                     ; preds = %883, %877
  %940 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2148, !tbaa !1331
  %941 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 72, !dbg !2148
  %942 = bitcast i32* %941 to i8*, !dbg !2148
  %943 = call i32 %940(i8* %942, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str169, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 306) #8, !dbg !2148
  %944 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2149, !tbaa !1331
  %945 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 73, !dbg !2149
  %946 = bitcast i32* %945 to i8*, !dbg !2149
  %947 = call i32 %944(i8* %946, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str170, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 307) #8, !dbg !2149
  %948 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2150, !tbaa !1331
  %949 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 74, !dbg !2150
  %950 = bitcast i32* %949 to i8*, !dbg !2150
  %951 = call i32 %948(i8* %950, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str171, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 308) #8, !dbg !2150
  %952 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2151, !tbaa !1331
  %953 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 75, !dbg !2151
  %954 = bitcast i32* %953 to i8*, !dbg !2151
  %955 = call i32 %952(i8* %954, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str172, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 309) #8, !dbg !2151
  %956 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2152, !tbaa !1331
  %957 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 76, !dbg !2152
  %958 = bitcast float* %957 to i8*, !dbg !2152
  %959 = call i32 %956(i8* %958, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str173, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 310) #8, !dbg !2152
  %960 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2153, !tbaa !1331
  %961 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 77, !dbg !2153
  %962 = bitcast float* %961 to i8*, !dbg !2153
  %963 = call i32 %960(i8* %962, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str174, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 311) #8, !dbg !2153
  %964 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2154, !tbaa !1331
  %965 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 78, !dbg !2154
  %966 = bitcast float* %965 to i8*, !dbg !2154
  %967 = call i32 %964(i8* %966, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str175, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 312) #8, !dbg !2154
  %968 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2155, !tbaa !1331
  %969 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 79, !dbg !2155
  %970 = bitcast float* %969 to i8*, !dbg !2155
  %971 = call i32 %968(i8* %970, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str176, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 313) #8, !dbg !2155
  %972 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2156, !tbaa !1331
  %973 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 0, !dbg !2156
  %974 = bitcast i32* %973 to i8*, !dbg !2156
  %975 = call i32 %972(i8* %974, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str177, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 316) #8, !dbg !2156
  %976 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2157, !tbaa !1331
  %977 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 1, !dbg !2157
  %978 = bitcast i32* %977 to i8*, !dbg !2157
  %979 = call i32 %976(i8* %978, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str178, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 317) #8, !dbg !2157
  %980 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2158, !tbaa !1331
  %981 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 2, !dbg !2158
  %982 = bitcast i32* %981 to i8*, !dbg !2158
  %983 = call i32 %980(i8* %982, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str179, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 318) #8, !dbg !2158
  %984 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2159, !tbaa !1331
  %985 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 3, !dbg !2159
  %986 = bitcast i32* %985 to i8*, !dbg !2159
  %987 = call i32 %984(i8* %986, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str180, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 319) #8, !dbg !2159
  %988 = load i32* %973, align 4, !dbg !2160, !tbaa !2163
  %989 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str181, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 321, i32 %988, i32 4) #8, !dbg !2160
  %990 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 4, !dbg !2160
  %991 = bitcast float** %990 to i8**, !dbg !2160
  store i8* %989, i8** %991, align 8, !dbg !2160, !tbaa !2164
  %992 = load i32* %973, align 4, !dbg !2165, !tbaa !2163
  %993 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str182, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 322, i32 %992, i32 4) #8, !dbg !2165
  %994 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 5, !dbg !2165
  %995 = bitcast float** %994 to i8**, !dbg !2165
  store i8* %993, i8** %995, align 8, !dbg !2165, !tbaa !2166
  %996 = load i32* %973, align 4, !dbg !2167, !tbaa !2163
  %997 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str183, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 323, i32 %996, i32 4) #8, !dbg !2167
  %998 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 6, !dbg !2167
  %999 = bitcast float** %998 to i8**, !dbg !2167
  store i8* %997, i8** %999, align 8, !dbg !2167, !tbaa !2168
  %1000 = load i32* %981, align 4, !dbg !2169, !tbaa !2170
  %1001 = call i8* @save_calloc(i8* getelementptr inbounds ([17 x i8]* @.str184, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 324, i32 %1000, i32 12) #8, !dbg !2169
  %1002 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 8, !dbg !2169
  %1003 = bitcast [3 x i32]** %1002 to i8**, !dbg !2169
  store i8* %1001, i8** %1003, align 8, !dbg !2169, !tbaa !2171
  %1004 = load i32* %977, align 4, !dbg !2172, !tbaa !2173
  %1005 = call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str185, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 325, i32 %1004, i32 12) #8, !dbg !2172
  %1006 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 7, !dbg !2172
  %1007 = bitcast [3 x float]** %1006 to i8**, !dbg !2172
  store i8* %1005, i8** %1007, align 8, !dbg !2172, !tbaa !2174
  %1008 = load i32* %985, align 4, !dbg !2175, !tbaa !2176
  %1009 = mul nsw i32 %1008, %1008, !dbg !2175
  %1010 = call i8* @save_calloc(i8* getelementptr inbounds ([17 x i8]* @.str186, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 326, i32 %1009, i32 4) #8, !dbg !2175
  %1011 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 9, !dbg !2175
  %1012 = bitcast i32** %1011 to i8**, !dbg !2175
  store i8* %1010, i8** %1012, align 8, !dbg !2175, !tbaa !2177
  br label %1013, !dbg !2178

; <label>:1013                                    ; preds = %890, %939
  %.pre-phi = phi i32* [ %924, %890 ], [ %973, %939 ], !dbg !2179
  %1014 = load i32* %.pre-phi, align 4, !dbg !2179, !tbaa !2163
  %1015 = icmp sgt i32 %1014, 0, !dbg !2180
  br i1 %1015, label %1016, label %.loopexit109, !dbg !2181

; <label>:1016                                    ; preds = %1013
  %1017 = load i32* @file_version, align 4
  %1018 = icmp slt i32 %1017, 13, !dbg !2182
  %or.cond = and i1 %7, %1018, !dbg !2183
  br i1 %or.cond, label %1021, label %.lr.ph151, !dbg !2183

.lr.ph151:                                        ; preds = %1016
  %1019 = getelementptr inbounds [128 x i8]* %buf1, i64 0, i64 0, !dbg !2184
  %1020 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 4, !dbg !2184
  br label %1057, !dbg !2185

; <label>:1021                                    ; preds = %1016
  %1022 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str187, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 330, i32 %1014, i32 4) #8, !dbg !2186
  %1023 = bitcast i8* %1022 to i32*, !dbg !2186
  call void @llvm.dbg.value(metadata i32* %1023, i64 0, metadata !915, metadata !1151), !dbg !2187
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !917, metadata !1151), !dbg !1843
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !913, metadata !1151), !dbg !1988
  %1024 = load i32* %.pre-phi, align 4, !dbg !2188, !tbaa !2163
  %1025 = icmp sgt i32 %1024, 0, !dbg !2188
  br i1 %1025, label %.lr.ph148, label %._crit_edge144, !dbg !2189

.lr.ph148:                                        ; preds = %1021
  %1026 = getelementptr inbounds [128 x i8]* %buf, i64 0, i64 0, !dbg !2190
  br label %1031, !dbg !2189

.preheader111:                                    ; preds = %1041
  %1027 = icmp sgt i32 %1044, 0, !dbg !2191
  br i1 %1027, label %.lr.ph143, label %._crit_edge144, !dbg !2194

.lr.ph143:                                        ; preds = %.preheader111
  %1028 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 4, !dbg !2195
  %1029 = load float** %1028, align 8, !dbg !2195, !tbaa !2164
  %1030 = sext i32 %1044 to i64, !dbg !2194
  br label %1047, !dbg !2194

; <label>:1031                                    ; preds = %.lr.ph148, %1041
  %indvars.iv172 = phi i64 [ 0, %.lr.ph148 ], [ %indvars.iv.next173, %1041 ]
  %bDum.0146 = phi i32 [ 1, %.lr.ph148 ], [ %1043, %1041 ]
  call void @llvm.lifetime.start(i64 128, i8* %1026) #5, !dbg !2190
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf, metadata !920, metadata !1151), !dbg !2190
  %1032 = trunc i64 %indvars.iv172 to i32, !dbg !2190
  %1033 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1026, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str187, i64 0, i64 0), i32 %1032) #8, !dbg !2190
  %1034 = icmp eq i32 %bDum.0146, 0, !dbg !2190
  br i1 %1034, label %1041, label %1035, !dbg !2190

; <label>:1035                                    ; preds = %1031
  %1036 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2190, !tbaa !1331
  %1037 = getelementptr inbounds i32* %1023, i64 %indvars.iv172, !dbg !2190
  %1038 = bitcast i32* %1037 to i8*, !dbg !2190
  %1039 = call i32 %1036(i8* %1038, i32 1, i32 1, i8* %1026, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 331) #8, !dbg !2190
  %1040 = icmp ne i32 %1039, 0, !dbg !2190
  br label %1041

; <label>:1041                                    ; preds = %1031, %1035
  %1042 = phi i1 [ false, %1031 ], [ %1040, %1035 ]
  %1043 = zext i1 %1042 to i32, !dbg !2190
  call void @llvm.dbg.value(metadata i32 %1043, i64 0, metadata !917, metadata !1151), !dbg !1843
  call void @llvm.lifetime.end(i64 128, i8* %1026) #5, !dbg !2188
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1, !dbg !2189
  %1044 = load i32* %.pre-phi, align 4, !dbg !2188, !tbaa !2163
  %1045 = sext i32 %1044 to i64, !dbg !2188
  %1046 = icmp slt i64 %indvars.iv.next173, %1045, !dbg !2188
  br i1 %1046, label %1031, label %.preheader111, !dbg !2189

; <label>:1047                                    ; preds = %.lr.ph143, %1047
  %indvars.iv170 = phi i64 [ 0, %.lr.ph143 ], [ %indvars.iv.next171, %1047 ]
  %1048 = getelementptr inbounds i32* %1023, i64 %indvars.iv170, !dbg !2196
  %1049 = load i32* %1048, align 4, !dbg !2196, !tbaa !1469
  %1050 = sitofp i32 %1049 to float, !dbg !2196
  %1051 = getelementptr inbounds float* %1029, i64 %indvars.iv170, !dbg !2197
  store float %1050, float* %1051, align 4, !dbg !2198, !tbaa !1279
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1, !dbg !2194
  %1052 = icmp slt i64 %indvars.iv.next171, %1030, !dbg !2191
  br i1 %1052, label %1047, label %._crit_edge144, !dbg !2194

._crit_edge144:                                   ; preds = %1047, %1021, %.preheader111
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str187, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 334, i8* %1022) #8, !dbg !2199
  %.pre = load i32* %.pre-phi, align 4, !dbg !2200, !tbaa !2163
  br label %.preheader110, !dbg !2201

.preheader110:                                    ; preds = %1077, %._crit_edge144
  %1053 = phi i32 [ %.pre, %._crit_edge144 ], [ %1080, %1077 ]
  %1054 = icmp sgt i32 %1053, 0, !dbg !2200
  br i1 %1054, label %.lr.ph141, label %.loopexit109, !dbg !2202

.lr.ph141:                                        ; preds = %.preheader110
  %1055 = getelementptr inbounds [128 x i8]* %buf2, i64 0, i64 0, !dbg !2203
  %1056 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 5, !dbg !2203
  br label %1086, !dbg !2202

; <label>:1057                                    ; preds = %.lr.ph151, %1077
  %indvars.iv174 = phi i64 [ 0, %.lr.ph151 ], [ %indvars.iv.next175, %1077 ]
  %bDum.1150 = phi i32 [ 1, %.lr.ph151 ], [ %1079, %1077 ]
  call void @llvm.lifetime.start(i64 128, i8* %1019) #5, !dbg !2184
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf1, metadata !931, metadata !1151), !dbg !2184
  %1058 = trunc i64 %indvars.iv174 to i32, !dbg !2184
  %1059 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1019, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str181, i64 0, i64 0), i32 %1058) #8, !dbg !2184
  %1060 = icmp eq i32 %bDum.1150, 0, !dbg !2184
  br i1 %1060, label %1077, label %1061, !dbg !2184

; <label>:1061                                    ; preds = %1057
  br i1 %7, label %1062, label %1068, !dbg !2184

; <label>:1062                                    ; preds = %1061
  %1063 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2184, !tbaa !1331
  %1064 = load float** %1020, align 8, !dbg !2184, !tbaa !2164
  %1065 = getelementptr inbounds float* %1064, i64 %indvars.iv174, !dbg !2184
  %1066 = bitcast float* %1065 to i8*, !dbg !2184
  %1067 = call i32 %1063(i8* %1066, i32 1, i32 0, i8* %1019, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 336) #8, !dbg !2184
  br label %1074, !dbg !2184

; <label>:1068                                    ; preds = %1061
  %1069 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2184, !tbaa !1331
  %1070 = load float** %1020, align 8, !dbg !2184, !tbaa !2164
  %1071 = getelementptr inbounds float* %1070, i64 %indvars.iv174, !dbg !2184
  %1072 = bitcast float* %1071 to i8*, !dbg !2184
  %1073 = call i32 %1069(i8* %1072, i32 1, i32 0, i8* %1019, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 336) #8, !dbg !2184
  br label %1074, !dbg !2184

; <label>:1074                                    ; preds = %1068, %1062
  %1075 = phi i32 [ %1067, %1062 ], [ %1073, %1068 ], !dbg !2184
  %1076 = icmp ne i32 %1075, 0, !dbg !2184
  br label %1077

; <label>:1077                                    ; preds = %1057, %1074
  %1078 = phi i1 [ false, %1057 ], [ %1076, %1074 ]
  %1079 = zext i1 %1078 to i32, !dbg !2184
  call void @llvm.dbg.value(metadata i32 %1079, i64 0, metadata !917, metadata !1151), !dbg !1843
  call void @llvm.lifetime.end(i64 128, i8* %1019) #5, !dbg !2204
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1, !dbg !2185
  %1080 = load i32* %.pre-phi, align 4, !dbg !2204, !tbaa !2163
  %1081 = sext i32 %1080 to i64, !dbg !2204
  %1082 = icmp slt i64 %indvars.iv.next175, %1081, !dbg !2204
  br i1 %1082, label %1057, label %.preheader110, !dbg !2185

.preheader108:                                    ; preds = %1106
  %1083 = icmp sgt i32 %1109, 0, !dbg !2205
  br i1 %1083, label %.lr.ph138, label %.loopexit109, !dbg !2206

.lr.ph138:                                        ; preds = %.preheader108
  %1084 = getelementptr inbounds [128 x i8]* %buf3, i64 0, i64 0, !dbg !2207
  %1085 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 6, !dbg !2207
  br label %1112, !dbg !2206

; <label>:1086                                    ; preds = %.lr.ph141, %1106
  %indvars.iv168 = phi i64 [ 0, %.lr.ph141 ], [ %indvars.iv.next169, %1106 ]
  %bDum.2140 = phi i32 [ 1, %.lr.ph141 ], [ %1108, %1106 ]
  call void @llvm.lifetime.start(i64 128, i8* %1055) #5, !dbg !2203
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf2, metadata !937, metadata !1151), !dbg !2203
  %1087 = trunc i64 %indvars.iv168 to i32, !dbg !2203
  %1088 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1055, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str182, i64 0, i64 0), i32 %1087) #8, !dbg !2203
  %1089 = icmp eq i32 %bDum.2140, 0, !dbg !2203
  br i1 %1089, label %1106, label %1090, !dbg !2203

; <label>:1090                                    ; preds = %1086
  br i1 %7, label %1091, label %1097, !dbg !2203

; <label>:1091                                    ; preds = %1090
  %1092 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2203, !tbaa !1331
  %1093 = load float** %1056, align 8, !dbg !2203, !tbaa !2166
  %1094 = getelementptr inbounds float* %1093, i64 %indvars.iv168, !dbg !2203
  %1095 = bitcast float* %1094 to i8*, !dbg !2203
  %1096 = call i32 %1092(i8* %1095, i32 1, i32 0, i8* %1055, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 338) #8, !dbg !2203
  br label %1103, !dbg !2203

; <label>:1097                                    ; preds = %1090
  %1098 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2203, !tbaa !1331
  %1099 = load float** %1056, align 8, !dbg !2203, !tbaa !2166
  %1100 = getelementptr inbounds float* %1099, i64 %indvars.iv168, !dbg !2203
  %1101 = bitcast float* %1100 to i8*, !dbg !2203
  %1102 = call i32 %1098(i8* %1101, i32 1, i32 0, i8* %1055, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 338) #8, !dbg !2203
  br label %1103, !dbg !2203

; <label>:1103                                    ; preds = %1097, %1091
  %1104 = phi i32 [ %1096, %1091 ], [ %1102, %1097 ], !dbg !2203
  %1105 = icmp ne i32 %1104, 0, !dbg !2203
  br label %1106

; <label>:1106                                    ; preds = %1086, %1103
  %1107 = phi i1 [ false, %1086 ], [ %1105, %1103 ]
  %1108 = zext i1 %1107 to i32, !dbg !2203
  call void @llvm.dbg.value(metadata i32 %1108, i64 0, metadata !917, metadata !1151), !dbg !1843
  call void @llvm.lifetime.end(i64 128, i8* %1055) #5, !dbg !2200
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1, !dbg !2202
  %1109 = load i32* %.pre-phi, align 4, !dbg !2200, !tbaa !2163
  %1110 = sext i32 %1109 to i64, !dbg !2200
  %1111 = icmp slt i64 %indvars.iv.next169, %1110, !dbg !2200
  br i1 %1111, label %1086, label %.preheader108, !dbg !2202

; <label>:1112                                    ; preds = %.lr.ph138, %1132
  %indvars.iv166 = phi i64 [ 0, %.lr.ph138 ], [ %indvars.iv.next167, %1132 ]
  %bDum.3137 = phi i32 [ 1, %.lr.ph138 ], [ %1134, %1132 ]
  call void @llvm.lifetime.start(i64 128, i8* %1084) #5, !dbg !2207
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf3, metadata !942, metadata !1151), !dbg !2207
  %1113 = trunc i64 %indvars.iv166 to i32, !dbg !2207
  %1114 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1084, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str183, i64 0, i64 0), i32 %1113) #8, !dbg !2207
  %1115 = icmp eq i32 %bDum.3137, 0, !dbg !2207
  br i1 %1115, label %1132, label %1116, !dbg !2207

; <label>:1116                                    ; preds = %1112
  br i1 %7, label %1117, label %1123, !dbg !2207

; <label>:1117                                    ; preds = %1116
  %1118 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2207, !tbaa !1331
  %1119 = load float** %1085, align 8, !dbg !2207, !tbaa !2168
  %1120 = getelementptr inbounds float* %1119, i64 %indvars.iv166, !dbg !2207
  %1121 = bitcast float* %1120 to i8*, !dbg !2207
  %1122 = call i32 %1118(i8* %1121, i32 1, i32 0, i8* %1084, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 339) #8, !dbg !2207
  br label %1129, !dbg !2207

; <label>:1123                                    ; preds = %1116
  %1124 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2207, !tbaa !1331
  %1125 = load float** %1085, align 8, !dbg !2207, !tbaa !2168
  %1126 = getelementptr inbounds float* %1125, i64 %indvars.iv166, !dbg !2207
  %1127 = bitcast float* %1126 to i8*, !dbg !2207
  %1128 = call i32 %1124(i8* %1127, i32 1, i32 0, i8* %1084, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 339) #8, !dbg !2207
  br label %1129, !dbg !2207

; <label>:1129                                    ; preds = %1123, %1117
  %1130 = phi i32 [ %1122, %1117 ], [ %1128, %1123 ], !dbg !2207
  %1131 = icmp ne i32 %1130, 0, !dbg !2207
  br label %1132

; <label>:1132                                    ; preds = %1112, %1129
  %1133 = phi i1 [ false, %1112 ], [ %1131, %1129 ]
  %1134 = zext i1 %1133 to i32, !dbg !2207
  call void @llvm.dbg.value(metadata i32 %1134, i64 0, metadata !917, metadata !1151), !dbg !1843
  call void @llvm.lifetime.end(i64 128, i8* %1084) #5, !dbg !2205
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1, !dbg !2206
  %1135 = load i32* %.pre-phi, align 4, !dbg !2205, !tbaa !2163
  %1136 = sext i32 %1135 to i64, !dbg !2205
  %1137 = icmp slt i64 %indvars.iv.next167, %1136, !dbg !2205
  br i1 %1137, label %1112, label %.loopexit109, !dbg !2206

.loopexit109:                                     ; preds = %1132, %.preheader110, %.preheader108, %1013
  %1138 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 2, !dbg !2208
  %1139 = load i32* %1138, align 4, !dbg !2208, !tbaa !2170
  %1140 = icmp sgt i32 %1139, 0, !dbg !2209
  br i1 %1140, label %.lr.ph135, label %.loopexit107, !dbg !2210

.lr.ph135:                                        ; preds = %.loopexit109
  %1141 = getelementptr inbounds [128 x i8]* %buf4, i64 0, i64 0, !dbg !2211
  %1142 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 8, !dbg !2211
  br label %1143, !dbg !2212

; <label>:1143                                    ; preds = %.lr.ph135, %1163
  %indvars.iv164 = phi i64 [ 0, %.lr.ph135 ], [ %indvars.iv.next165, %1163 ]
  %bDum.4134 = phi i32 [ 1, %.lr.ph135 ], [ %1165, %1163 ]
  call void @llvm.lifetime.start(i64 128, i8* %1141) #5, !dbg !2211
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf4, metadata !947, metadata !1151), !dbg !2211
  %1144 = trunc i64 %indvars.iv164 to i32, !dbg !2211
  %1145 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1141, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str184, i64 0, i64 0), i32 %1144) #8, !dbg !2211
  %1146 = icmp eq i32 %bDum.4134, 0, !dbg !2211
  br i1 %1146, label %1163, label %1147, !dbg !2211

; <label>:1147                                    ; preds = %1143
  br i1 %7, label %1148, label %1154, !dbg !2211

; <label>:1148                                    ; preds = %1147
  %1149 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2211, !tbaa !1331
  %1150 = load [3 x i32]** %1142, align 8, !dbg !2211, !tbaa !2171
  %1151 = getelementptr inbounds [3 x i32]* %1150, i64 %indvars.iv164, i64 0, !dbg !2211
  %1152 = bitcast i32* %1151 to i8*, !dbg !2211
  %1153 = call i32 %1149(i8* %1152, i32 1, i32 6, i8* %1141, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 342) #8, !dbg !2211
  br label %1160, !dbg !2211

; <label>:1154                                    ; preds = %1147
  %1155 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2211, !tbaa !1331
  %1156 = load [3 x i32]** %1142, align 8, !dbg !2211, !tbaa !2171
  %1157 = getelementptr inbounds [3 x i32]* %1156, i64 %indvars.iv164, i64 0, !dbg !2211
  %1158 = bitcast i32* %1157 to i8*, !dbg !2211
  %1159 = call i32 %1155(i8* %1158, i32 1, i32 6, i8* %1141, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 342) #8, !dbg !2211
  br label %1160, !dbg !2211

; <label>:1160                                    ; preds = %1154, %1148
  %1161 = phi i32 [ %1153, %1148 ], [ %1159, %1154 ], !dbg !2211
  %1162 = icmp ne i32 %1161, 0, !dbg !2211
  br label %1163

; <label>:1163                                    ; preds = %1143, %1160
  %1164 = phi i1 [ false, %1143 ], [ %1162, %1160 ]
  %1165 = zext i1 %1164 to i32, !dbg !2211
  call void @llvm.dbg.value(metadata i32 %1165, i64 0, metadata !917, metadata !1151), !dbg !1843
  call void @llvm.lifetime.end(i64 128, i8* %1141) #5, !dbg !2213
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1, !dbg !2212
  %1166 = load i32* %1138, align 4, !dbg !2213, !tbaa !2170
  %1167 = sext i32 %1166 to i64, !dbg !2213
  %1168 = icmp slt i64 %indvars.iv.next165, %1167, !dbg !2213
  br i1 %1168, label %1143, label %.loopexit107, !dbg !2212

.loopexit107:                                     ; preds = %1163, %.loopexit109
  %1169 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 1, !dbg !2214
  %1170 = load i32* %1169, align 4, !dbg !2214, !tbaa !2173
  %1171 = icmp sgt i32 %1170, 0, !dbg !2216
  br i1 %1171, label %1172, label %1185, !dbg !2217

; <label>:1172                                    ; preds = %.loopexit107
  br i1 %7, label %1173, label %1179, !dbg !2218

; <label>:1173                                    ; preds = %1172
  %1174 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2218, !tbaa !1331
  %1175 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 7, !dbg !2218
  %1176 = bitcast [3 x float]** %1175 to i8**, !dbg !2218
  %1177 = load i8** %1176, align 8, !dbg !2218, !tbaa !2174
  %1178 = call i32 %1174(i8* %1177, i32 %1170, i32 5, i8* getelementptr inbounds ([13 x i8]* @.str185, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 344) #8, !dbg !2218
  br label %1185, !dbg !2218

; <label>:1179                                    ; preds = %1172
  %1180 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2218, !tbaa !1331
  %1181 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 7, !dbg !2218
  %1182 = bitcast [3 x float]** %1181 to i8**, !dbg !2218
  %1183 = load i8** %1182, align 8, !dbg !2218, !tbaa !2174
  %1184 = call i32 %1180(i8* %1183, i32 %1170, i32 5, i8* getelementptr inbounds ([13 x i8]* @.str185, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 344) #8, !dbg !2218
  br label %1185, !dbg !2218

; <label>:1185                                    ; preds = %1173, %1179, %.loopexit107
  %1186 = load i32* @file_version, align 4, !dbg !2219, !tbaa !1469
  %1187 = icmp sgt i32 %1186, 11, !dbg !2220
  br i1 %1187, label %.preheader105, label %.preheader104, !dbg !2221

.preheader105:                                    ; preds = %1185
  %1188 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 3, !dbg !2222
  %1189 = load i32* %1188, align 4, !dbg !2222, !tbaa !2176
  %1190 = mul nsw i32 %1189, %1189, !dbg !2222
  %1191 = icmp eq i32 %1190, 0, !dbg !2222
  br i1 %1191, label %.preheader104, label %.lr.ph132, !dbg !2223

.lr.ph132:                                        ; preds = %.preheader105
  %1192 = getelementptr inbounds [128 x i8]* %buf5, i64 0, i64 0, !dbg !2224
  %1193 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 9, !dbg !2224
  br label %1198, !dbg !2223

.preheader104:                                    ; preds = %1218, %.preheader105, %1185
  %1194 = getelementptr inbounds [128 x i8]* %buf9, i64 0, i64 0, !dbg !2225
  %1195 = getelementptr inbounds [128 x i8]* %buf8, i64 0, i64 0, !dbg !2226
  %1196 = getelementptr inbounds [128 x i8]* %buf7, i64 0, i64 0, !dbg !2227
  %1197 = getelementptr inbounds [128 x i8]* %buf6, i64 0, i64 0, !dbg !2228
  br label %1225, !dbg !2229

; <label>:1198                                    ; preds = %.lr.ph132, %1218
  %indvars.iv162 = phi i64 [ 0, %.lr.ph132 ], [ %indvars.iv.next163, %1218 ]
  %bDum.5131 = phi i32 [ 1, %.lr.ph132 ], [ %1220, %1218 ]
  call void @llvm.lifetime.start(i64 128, i8* %1192) #5, !dbg !2224
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf5, metadata !953, metadata !1151), !dbg !2224
  %1199 = trunc i64 %indvars.iv162 to i32, !dbg !2224
  %1200 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1192, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str186, i64 0, i64 0), i32 %1199) #8, !dbg !2224
  %1201 = icmp eq i32 %bDum.5131, 0, !dbg !2224
  br i1 %1201, label %1218, label %1202, !dbg !2224

; <label>:1202                                    ; preds = %1198
  br i1 %7, label %1203, label %1209, !dbg !2224

; <label>:1203                                    ; preds = %1202
  %1204 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2224, !tbaa !1331
  %1205 = load i32** %1193, align 8, !dbg !2224, !tbaa !2177
  %1206 = getelementptr inbounds i32* %1205, i64 %indvars.iv162, !dbg !2224
  %1207 = bitcast i32* %1206 to i8*, !dbg !2224
  %1208 = call i32 %1204(i8* %1207, i32 1, i32 1, i8* %1192, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 346) #8, !dbg !2224
  br label %1215, !dbg !2224

; <label>:1209                                    ; preds = %1202
  %1210 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2224, !tbaa !1331
  %1211 = load i32** %1193, align 8, !dbg !2224, !tbaa !2177
  %1212 = getelementptr inbounds i32* %1211, i64 %indvars.iv162, !dbg !2224
  %1213 = bitcast i32* %1212 to i8*, !dbg !2224
  %1214 = call i32 %1210(i8* %1213, i32 1, i32 1, i8* %1192, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 346) #8, !dbg !2224
  br label %1215, !dbg !2224

; <label>:1215                                    ; preds = %1209, %1203
  %1216 = phi i32 [ %1208, %1203 ], [ %1214, %1209 ], !dbg !2224
  %1217 = icmp ne i32 %1216, 0, !dbg !2224
  br label %1218

; <label>:1218                                    ; preds = %1198, %1215
  %1219 = phi i1 [ false, %1198 ], [ %1217, %1215 ]
  %1220 = zext i1 %1219 to i32, !dbg !2224
  call void @llvm.dbg.value(metadata i32 %1220, i64 0, metadata !917, metadata !1151), !dbg !1843
  call void @llvm.lifetime.end(i64 128, i8* %1192) #5, !dbg !2222
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1, !dbg !2223
  %1221 = load i32* %1188, align 4, !dbg !2222, !tbaa !2176
  %1222 = mul nsw i32 %1221, %1221, !dbg !2222
  %1223 = zext i32 %1222 to i64, !dbg !2222
  %1224 = icmp slt i64 %indvars.iv.next163, %1223, !dbg !2222
  br i1 %1224, label %1198, label %.preheader104, !dbg !2223

; <label>:1225                                    ; preds = %._crit_edge, %.preheader104
  %indvars.iv160 = phi i64 [ 0, %.preheader104 ], [ %indvars.iv.next161, %._crit_edge ]
  br i1 %7, label %1235, label %1226, !dbg !2230

; <label>:1226                                    ; preds = %1225
  %1227 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2230, !tbaa !1331
  %1228 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv160, i32 0, !dbg !2230
  %1229 = bitcast i32* %1228 to i8*, !dbg !2230
  %1230 = call i32 %1227(i8* %1229, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str188, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 350) #8, !dbg !2230
  %1231 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2231, !tbaa !1331
  %1232 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv160, i32 0, !dbg !2231
  %1233 = bitcast i32* %1232 to i8*, !dbg !2231
  %1234 = call i32 %1231(i8* %1233, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str189, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 351) #8, !dbg !2231
  br label %.preheader103

; <label>:1235                                    ; preds = %1225
  %1236 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2230, !tbaa !1331
  %1237 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv160, i32 0, !dbg !2230
  %1238 = bitcast i32* %1237 to i8*, !dbg !2230
  %1239 = call i32 %1236(i8* %1238, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str188, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 350) #8, !dbg !2230
  %1240 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2231, !tbaa !1331
  %1241 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv160, i32 0, !dbg !2231
  %1242 = bitcast i32* %1241 to i8*, !dbg !2231
  %1243 = call i32 %1240(i8* %1242, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str189, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 351) #8, !dbg !2231
  %1244 = load i32* %1237, align 4, !dbg !2232, !tbaa !2235
  %1245 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str190, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 353, i32 %1244, i32 4) #8, !dbg !2232
  %1246 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv160, i32 1, !dbg !2232
  %1247 = bitcast float** %1246 to i8**, !dbg !2232
  store i8* %1245, i8** %1247, align 8, !dbg !2232, !tbaa !2237
  %1248 = load i32* %1237, align 4, !dbg !2238, !tbaa !2235
  %1249 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str191, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 354, i32 %1248, i32 4) #8, !dbg !2238
  %1250 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv160, i32 2, !dbg !2238
  %1251 = bitcast float** %1250 to i8**, !dbg !2238
  store i8* %1249, i8** %1251, align 8, !dbg !2238, !tbaa !2239
  %1252 = load i32* %1241, align 4, !dbg !2240, !tbaa !2235
  %1253 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str192, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 355, i32 %1252, i32 4) #8, !dbg !2240
  %1254 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv160, i32 1, !dbg !2240
  %1255 = bitcast float** %1254 to i8**, !dbg !2240
  store i8* %1253, i8** %1255, align 8, !dbg !2240, !tbaa !2237
  %1256 = load i32* %1241, align 4, !dbg !2241, !tbaa !2235
  %1257 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str193, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 356, i32 %1256, i32 4) #8, !dbg !2241
  %1258 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv160, i32 2, !dbg !2241
  %1259 = bitcast float** %1258 to i8**, !dbg !2241
  store i8* %1257, i8** %1259, align 8, !dbg !2241, !tbaa !2239
  br label %.preheader103, !dbg !2242

.preheader103:                                    ; preds = %1235, %1226
  %.pre-phi182 = phi i32* [ %1237, %1235 ], [ %1228, %1226 ], !dbg !2243
  %1260 = load i32* %.pre-phi182, align 4, !dbg !2243, !tbaa !2235
  %1261 = icmp sgt i32 %1260, 0, !dbg !2243
  br i1 %1261, label %.lr.ph, label %.preheader101, !dbg !2244

.lr.ph:                                           ; preds = %.preheader103
  %1262 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv160, i32 1, !dbg !2228
  br label %1265, !dbg !2244

.preheader102:                                    ; preds = %1285
  %1263 = icmp sgt i32 %1288, 0, !dbg !2245
  br i1 %1263, label %.lr.ph121, label %.preheader101, !dbg !2246

.lr.ph121:                                        ; preds = %.preheader102
  %1264 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv160, i32 2, !dbg !2227
  br label %1295, !dbg !2246

; <label>:1265                                    ; preds = %.lr.ph, %1285
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %1285 ]
  %bDum.6117 = phi i32 [ 1, %.lr.ph ], [ %1287, %1285 ]
  call void @llvm.lifetime.start(i64 128, i8* %1197) #5, !dbg !2228
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf6, metadata !959, metadata !1151), !dbg !2228
  %1266 = trunc i64 %indvars.iv to i32, !dbg !2228
  %1267 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1197, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str190, i64 0, i64 0), i32 %1266) #8, !dbg !2228
  %1268 = icmp eq i32 %bDum.6117, 0, !dbg !2228
  br i1 %1268, label %1285, label %1269, !dbg !2228

; <label>:1269                                    ; preds = %1265
  br i1 %7, label %1270, label %1276, !dbg !2228

; <label>:1270                                    ; preds = %1269
  %1271 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2228, !tbaa !1331
  %1272 = load float** %1262, align 8, !dbg !2228, !tbaa !2237
  %1273 = getelementptr inbounds float* %1272, i64 %indvars.iv, !dbg !2228
  %1274 = bitcast float* %1273 to i8*, !dbg !2228
  %1275 = call i32 %1271(i8* %1274, i32 1, i32 0, i8* %1197, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 358) #8, !dbg !2228
  br label %1282, !dbg !2228

; <label>:1276                                    ; preds = %1269
  %1277 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2228, !tbaa !1331
  %1278 = load float** %1262, align 8, !dbg !2228, !tbaa !2237
  %1279 = getelementptr inbounds float* %1278, i64 %indvars.iv, !dbg !2228
  %1280 = bitcast float* %1279 to i8*, !dbg !2228
  %1281 = call i32 %1277(i8* %1280, i32 1, i32 0, i8* %1197, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 358) #8, !dbg !2228
  br label %1282, !dbg !2228

; <label>:1282                                    ; preds = %1276, %1270
  %1283 = phi i32 [ %1275, %1270 ], [ %1281, %1276 ], !dbg !2228
  %1284 = icmp ne i32 %1283, 0, !dbg !2228
  br label %1285

; <label>:1285                                    ; preds = %1265, %1282
  %1286 = phi i1 [ false, %1265 ], [ %1284, %1282 ]
  %1287 = zext i1 %1286 to i32, !dbg !2228
  call void @llvm.dbg.value(metadata i32 %1287, i64 0, metadata !917, metadata !1151), !dbg !1843
  call void @llvm.lifetime.end(i64 128, i8* %1197) #5, !dbg !2243
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2244
  %1288 = load i32* %.pre-phi182, align 4, !dbg !2243, !tbaa !2235
  %1289 = sext i32 %1288 to i64, !dbg !2243
  %1290 = icmp slt i64 %indvars.iv.next, %1289, !dbg !2243
  br i1 %1290, label %1265, label %.preheader102, !dbg !2244

.preheader101:                                    ; preds = %1315, %.preheader103, %.preheader102
  %1291 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv160, i32 0, !dbg !2247
  %1292 = load i32* %1291, align 4, !dbg !2247, !tbaa !2235
  %1293 = icmp sgt i32 %1292, 0, !dbg !2247
  br i1 %1293, label %.lr.ph124, label %._crit_edge, !dbg !2248

.lr.ph124:                                        ; preds = %.preheader101
  %1294 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv160, i32 1, !dbg !2226
  br label %1323, !dbg !2248

; <label>:1295                                    ; preds = %.lr.ph121, %1315
  %indvars.iv154 = phi i64 [ 0, %.lr.ph121 ], [ %indvars.iv.next155, %1315 ]
  %bDum.7120 = phi i32 [ 1, %.lr.ph121 ], [ %1317, %1315 ]
  call void @llvm.lifetime.start(i64 128, i8* %1196) #5, !dbg !2227
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf7, metadata !967, metadata !1151), !dbg !2227
  %1296 = trunc i64 %indvars.iv154 to i32, !dbg !2227
  %1297 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1196, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str191, i64 0, i64 0), i32 %1296) #8, !dbg !2227
  %1298 = icmp eq i32 %bDum.7120, 0, !dbg !2227
  br i1 %1298, label %1315, label %1299, !dbg !2227

; <label>:1299                                    ; preds = %1295
  br i1 %7, label %1300, label %1306, !dbg !2227

; <label>:1300                                    ; preds = %1299
  %1301 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2227, !tbaa !1331
  %1302 = load float** %1264, align 8, !dbg !2227, !tbaa !2239
  %1303 = getelementptr inbounds float* %1302, i64 %indvars.iv154, !dbg !2227
  %1304 = bitcast float* %1303 to i8*, !dbg !2227
  %1305 = call i32 %1301(i8* %1304, i32 1, i32 0, i8* %1196, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 359) #8, !dbg !2227
  br label %1312, !dbg !2227

; <label>:1306                                    ; preds = %1299
  %1307 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2227, !tbaa !1331
  %1308 = load float** %1264, align 8, !dbg !2227, !tbaa !2239
  %1309 = getelementptr inbounds float* %1308, i64 %indvars.iv154, !dbg !2227
  %1310 = bitcast float* %1309 to i8*, !dbg !2227
  %1311 = call i32 %1307(i8* %1310, i32 1, i32 0, i8* %1196, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 359) #8, !dbg !2227
  br label %1312, !dbg !2227

; <label>:1312                                    ; preds = %1306, %1300
  %1313 = phi i32 [ %1305, %1300 ], [ %1311, %1306 ], !dbg !2227
  %1314 = icmp ne i32 %1313, 0, !dbg !2227
  br label %1315

; <label>:1315                                    ; preds = %1295, %1312
  %1316 = phi i1 [ false, %1295 ], [ %1314, %1312 ]
  %1317 = zext i1 %1316 to i32, !dbg !2227
  call void @llvm.dbg.value(metadata i32 %1317, i64 0, metadata !917, metadata !1151), !dbg !1843
  call void @llvm.lifetime.end(i64 128, i8* %1196) #5, !dbg !2245
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1, !dbg !2246
  %1318 = load i32* %.pre-phi182, align 4, !dbg !2245, !tbaa !2235
  %1319 = sext i32 %1318 to i64, !dbg !2245
  %1320 = icmp slt i64 %indvars.iv.next155, %1319, !dbg !2245
  br i1 %1320, label %1295, label %.preheader101, !dbg !2246

.preheader:                                       ; preds = %1343
  %1321 = icmp sgt i32 %1346, 0, !dbg !2249
  br i1 %1321, label %.lr.ph128, label %._crit_edge, !dbg !2250

.lr.ph128:                                        ; preds = %.preheader
  %1322 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv160, i32 2, !dbg !2225
  br label %1349, !dbg !2250

; <label>:1323                                    ; preds = %.lr.ph124, %1343
  %indvars.iv156 = phi i64 [ 0, %.lr.ph124 ], [ %indvars.iv.next157, %1343 ]
  %bDum.8123 = phi i32 [ 1, %.lr.ph124 ], [ %1345, %1343 ]
  call void @llvm.lifetime.start(i64 128, i8* %1195) #5, !dbg !2226
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf8, metadata !972, metadata !1151), !dbg !2226
  %1324 = trunc i64 %indvars.iv156 to i32, !dbg !2226
  %1325 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1195, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str192, i64 0, i64 0), i32 %1324) #8, !dbg !2226
  %1326 = icmp eq i32 %bDum.8123, 0, !dbg !2226
  br i1 %1326, label %1343, label %1327, !dbg !2226

; <label>:1327                                    ; preds = %1323
  br i1 %7, label %1328, label %1334, !dbg !2226

; <label>:1328                                    ; preds = %1327
  %1329 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2226, !tbaa !1331
  %1330 = load float** %1294, align 8, !dbg !2226, !tbaa !2237
  %1331 = getelementptr inbounds float* %1330, i64 %indvars.iv156, !dbg !2226
  %1332 = bitcast float* %1331 to i8*, !dbg !2226
  %1333 = call i32 %1329(i8* %1332, i32 1, i32 0, i8* %1195, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 360) #8, !dbg !2226
  br label %1340, !dbg !2226

; <label>:1334                                    ; preds = %1327
  %1335 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2226, !tbaa !1331
  %1336 = load float** %1294, align 8, !dbg !2226, !tbaa !2237
  %1337 = getelementptr inbounds float* %1336, i64 %indvars.iv156, !dbg !2226
  %1338 = bitcast float* %1337 to i8*, !dbg !2226
  %1339 = call i32 %1335(i8* %1338, i32 1, i32 0, i8* %1195, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 360) #8, !dbg !2226
  br label %1340, !dbg !2226

; <label>:1340                                    ; preds = %1334, %1328
  %1341 = phi i32 [ %1333, %1328 ], [ %1339, %1334 ], !dbg !2226
  %1342 = icmp ne i32 %1341, 0, !dbg !2226
  br label %1343

; <label>:1343                                    ; preds = %1323, %1340
  %1344 = phi i1 [ false, %1323 ], [ %1342, %1340 ]
  %1345 = zext i1 %1344 to i32, !dbg !2226
  call void @llvm.dbg.value(metadata i32 %1345, i64 0, metadata !917, metadata !1151), !dbg !1843
  call void @llvm.lifetime.end(i64 128, i8* %1195) #5, !dbg !2247
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1, !dbg !2248
  %1346 = load i32* %1291, align 4, !dbg !2247, !tbaa !2235
  %1347 = sext i32 %1346 to i64, !dbg !2247
  %1348 = icmp slt i64 %indvars.iv.next157, %1347, !dbg !2247
  br i1 %1348, label %1323, label %.preheader, !dbg !2248

; <label>:1349                                    ; preds = %.lr.ph128, %1369
  %indvars.iv158 = phi i64 [ 0, %.lr.ph128 ], [ %indvars.iv.next159, %1369 ]
  %bDum.9127 = phi i32 [ 1, %.lr.ph128 ], [ %1371, %1369 ]
  call void @llvm.lifetime.start(i64 128, i8* %1194) #5, !dbg !2225
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf9, metadata !977, metadata !1151), !dbg !2225
  %1350 = trunc i64 %indvars.iv158 to i32, !dbg !2225
  %1351 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1194, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str193, i64 0, i64 0), i32 %1350) #8, !dbg !2225
  %1352 = icmp eq i32 %bDum.9127, 0, !dbg !2225
  br i1 %1352, label %1369, label %1353, !dbg !2225

; <label>:1353                                    ; preds = %1349
  br i1 %7, label %1354, label %1360, !dbg !2225

; <label>:1354                                    ; preds = %1353
  %1355 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2225, !tbaa !1331
  %1356 = load float** %1322, align 8, !dbg !2225, !tbaa !2239
  %1357 = getelementptr inbounds float* %1356, i64 %indvars.iv158, !dbg !2225
  %1358 = bitcast float* %1357 to i8*, !dbg !2225
  %1359 = call i32 %1355(i8* %1358, i32 1, i32 0, i8* %1194, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 361) #8, !dbg !2225
  br label %1366, !dbg !2225

; <label>:1360                                    ; preds = %1353
  %1361 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2225, !tbaa !1331
  %1362 = load float** %1322, align 8, !dbg !2225, !tbaa !2239
  %1363 = getelementptr inbounds float* %1362, i64 %indvars.iv158, !dbg !2225
  %1364 = bitcast float* %1363 to i8*, !dbg !2225
  %1365 = call i32 %1361(i8* %1364, i32 1, i32 0, i8* %1194, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 361) #8, !dbg !2225
  br label %1366, !dbg !2225

; <label>:1366                                    ; preds = %1360, %1354
  %1367 = phi i32 [ %1359, %1354 ], [ %1365, %1360 ], !dbg !2225
  %1368 = icmp ne i32 %1367, 0, !dbg !2225
  br label %1369

; <label>:1369                                    ; preds = %1349, %1366
  %1370 = phi i1 [ false, %1349 ], [ %1368, %1366 ]
  %1371 = zext i1 %1370 to i32, !dbg !2225
  call void @llvm.dbg.value(metadata i32 %1371, i64 0, metadata !917, metadata !1151), !dbg !1843
  call void @llvm.lifetime.end(i64 128, i8* %1194) #5, !dbg !2249
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1, !dbg !2250
  %1372 = load i32* %1291, align 4, !dbg !2249, !tbaa !2235
  %1373 = sext i32 %1372 to i64, !dbg !2249
  %1374 = icmp slt i64 %indvars.iv.next159, %1373, !dbg !2249
  br i1 %1374, label %1349, label %._crit_edge, !dbg !2250

._crit_edge:                                      ; preds = %1369, %.preheader101, %.preheader
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1, !dbg !2229
  %exitcond = icmp eq i64 %indvars.iv.next161, 3, !dbg !2229
  br i1 %exitcond, label %.loopexit, label %1225, !dbg !2229

.loopexit:                                        ; preds = %._crit_edge, %3
  ret void, !dbg !2251
}

; Function Attrs: optsize
declare void @init_inputrec(%struct.t_inputrec*) #2

; Function Attrs: optsize
declare void @done_inputrec(%struct.t_inputrec*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @do_top(%struct.t_topology* %top, i32 %bRead) #4 {
  %buf1.i.i = alloca [128 x i8], align 16
  %buf.i11 = alloca [128 x i8], align 16
  %buf.i.i = alloca [128 x i8], align 16
  %buf.i = alloca [4096 x i8], align 16
  tail call void @llvm.dbg.value(metadata %struct.t_topology* %top, i64 0, metadata !994, metadata !1151), !dbg !2252
  tail call void @llvm.dbg.value(metadata i32 %bRead, i64 0, metadata !995, metadata !1151), !dbg !2253
  %1 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 4, !dbg !2254
  tail call void @llvm.dbg.value(metadata %struct.t_symtab* %1, i64 0, metadata !1002, metadata !1151) #5, !dbg !2255
  tail call void @llvm.dbg.value(metadata i32 %bRead, i64 0, metadata !1003, metadata !1151) #5, !dbg !2257
  %2 = getelementptr inbounds [4096 x i8]* %buf.i, i64 0, i64 0, !dbg !2258
  call void @llvm.lifetime.start(i64 4096, i8* %2) #5, !dbg !2258
  %3 = icmp eq i32 %bRead, 0, !dbg !2259
  tail call void @llvm.dbg.declare(metadata [128 x i8]* %buf.i.i, metadata !1052, metadata !1151), !dbg !2260
  tail call void @llvm.dbg.declare(metadata [128 x i8]* %buf.i.i, metadata !1087, metadata !1151), !dbg !2263
  tail call void @llvm.dbg.declare(metadata [128 x i8]* %buf1.i.i, metadata !1092, metadata !1151), !dbg !2270
  tail call void @llvm.dbg.declare(metadata [128 x i8]* %buf.i11, metadata !1072, metadata !1151), !dbg !2271
  br i1 %3, label %26, label %4, !dbg !2259

; <label>:4                                       ; preds = %0
  %5 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2259, !tbaa !1331
  %6 = bitcast %struct.t_symtab* %1 to i8*, !dbg !2259
  %7 = tail call i32 %5(i8* %6, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str194, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 660) #8, !dbg !2259
  %8 = getelementptr inbounds %struct.t_symtab* %1, i64 0, i32 0, !dbg !2272
  %9 = load i32* %8, align 4, !dbg !2272, !tbaa !2273
  %10 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str195, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 663, i32 1, i32 24) #8, !dbg !2274
  %11 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 4, i32 1, !dbg !2274
  %12 = bitcast %struct.symbuf** %11 to i8**, !dbg !2274
  store i8* %10, i8** %12, align 8, !dbg !2274, !tbaa !2277
  %13 = bitcast i8* %10 to i32*, !dbg !2278
  store i32 %9, i32* %13, align 4, !dbg !2279, !tbaa !2280
  %14 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str196, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 666, i32 %9, i32 8) #8, !dbg !2282
  %15 = getelementptr inbounds i8* %10, i64 8, !dbg !2282
  %16 = bitcast i8* %15 to i8***, !dbg !2282
  %17 = bitcast i8* %15 to i8**, !dbg !2282
  store i8* %14, i8** %17, align 8, !dbg !2282, !tbaa !2283
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1004, metadata !1151) #5, !dbg !2284
  %18 = icmp sgt i32 %9, 0, !dbg !2285
  br i1 %18, label %.lr.ph.i, label %do_symtab.exit, !dbg !2288

.lr.ph.i:                                         ; preds = %4
  %19 = add i32 %9, -1, !dbg !2288
  br label %20, !dbg !2288

; <label>:20                                      ; preds = %20, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %20 ], !dbg !2289
  %21 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2290, !tbaa !1331
  %22 = call i32 %21(i8* %2, i32 1, i32 7, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 668) #8, !dbg !2290
  %23 = call i8* @strdup(i8* %2) #8, !dbg !2292
  %24 = load i8*** %16, align 8, !dbg !2293, !tbaa !2283
  %25 = getelementptr inbounds i8** %24, i64 %indvars.iv.i, !dbg !2294
  store i8* %23, i8** %25, align 8, !dbg !2295, !tbaa !1331
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2288
  %lftr.wideiv52 = trunc i64 %indvars.iv.i to i32, !dbg !2288
  %exitcond53 = icmp eq i32 %lftr.wideiv52, %19, !dbg !2288
  br i1 %exitcond53, label %do_symtab.exit, label %20, !dbg !2288

; <label>:26                                      ; preds = %0
  %27 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2259, !tbaa !1331
  %28 = bitcast %struct.t_symtab* %1 to i8*, !dbg !2259
  %29 = tail call i32 %27(i8* %28, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str194, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 660) #8, !dbg !2259
  %30 = getelementptr inbounds %struct.t_symtab* %1, i64 0, i32 0, !dbg !2272
  %31 = load i32* %30, align 4, !dbg !2272, !tbaa !2273
  %32 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 4, i32 1, !dbg !2296
  %symbuf.05.i = load %struct.symbuf** %32, align 8, !dbg !2296
  %33 = icmp eq %struct.symbuf* %symbuf.05.i, null, !dbg !2298
  br i1 %33, label %._crit_edge.i, label %.preheader.i, !dbg !2299

.preheader.i:                                     ; preds = %26, %.critedge.i
  %symbuf.08.i = phi %struct.symbuf* [ %symbuf.0.i, %.critedge.i ], [ %symbuf.05.i, %26 ], !dbg !2289
  %nr.06.i = phi i32 [ %50, %.critedge.i ], [ %31, %26 ], !dbg !2289
  %34 = getelementptr inbounds %struct.symbuf* %symbuf.08.i, i64 0, i32 0, !dbg !2300
  %35 = load i32* %34, align 4, !dbg !2300, !tbaa !2280
  %36 = icmp sgt i32 %35, 0, !dbg !2304
  %37 = icmp sgt i32 %nr.06.i, 0, !dbg !2305
  %or.cond2.i = and i1 %37, %36, !dbg !2306
  br i1 %or.cond2.i, label %.lr.ph4.i, label %.critedge.i, !dbg !2306

.lr.ph4.i:                                        ; preds = %.preheader.i
  %38 = getelementptr inbounds %struct.symbuf* %symbuf.08.i, i64 0, i32 1, !dbg !2307
  %39 = sext i32 %nr.06.i to i64, !dbg !2306
  br label %40, !dbg !2306

; <label>:40                                      ; preds = %40, %.lr.ph4.i
  %indvars.iv11.i = phi i64 [ 0, %.lr.ph4.i ], [ %indvars.iv.next12.i, %40 ], !dbg !2289
  %41 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2307, !tbaa !1331
  %42 = load i8*** %38, align 8, !dbg !2307, !tbaa !2283
  %43 = getelementptr inbounds i8** %42, i64 %indvars.iv11.i, !dbg !2307
  %44 = load i8** %43, align 8, !dbg !2307, !tbaa !1331
  %45 = tail call i32 %41(i8* %44, i32 1, i32 7, i8* getelementptr inbounds ([15 x i8]* @.str197, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 676) #8, !dbg !2307
  %.pre.i = load i32* %34, align 4, !dbg !2300, !tbaa !2280
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1, !dbg !2306
  %46 = sext i32 %.pre.i to i64, !dbg !2304
  %47 = icmp slt i64 %indvars.iv.next12.i, %46, !dbg !2304
  %48 = icmp sgt i64 %39, %indvars.iv.next12.i, !dbg !2305
  %or.cond.i = and i1 %48, %47, !dbg !2306
  br i1 %or.cond.i, label %40, label %..critedge_crit_edge.i, !dbg !2306

..critedge_crit_edge.i:                           ; preds = %40
  %49 = trunc i64 %indvars.iv.next12.i to i32, !dbg !2306
  br label %.critedge.i, !dbg !2306

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %.preheader.i
  %i.1.lcssa.i = phi i32 [ %49, %..critedge_crit_edge.i ], [ 0, %.preheader.i ], !dbg !2289
  %50 = sub nsw i32 %nr.06.i, %i.1.lcssa.i, !dbg !2308
  tail call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !1005, metadata !1151) #5, !dbg !2309
  %51 = getelementptr inbounds %struct.symbuf* %symbuf.08.i, i64 0, i32 2, !dbg !2310
  %symbuf.0.i = load %struct.symbuf** %51, align 8, !dbg !2296
  %52 = icmp eq %struct.symbuf* %symbuf.0.i, null, !dbg !2298
  br i1 %52, label %._crit_edge.i, label %.preheader.i, !dbg !2299

._crit_edge.i:                                    ; preds = %.critedge.i, %26
  %nr.0.lcssa.i = phi i32 [ %31, %26 ], [ %50, %.critedge.i ], !dbg !2289
  %53 = icmp eq i32 %nr.0.lcssa.i, 0, !dbg !2311
  br i1 %53, label %do_symtab.exit, label %54, !dbg !2313

; <label>:54                                      ; preds = %._crit_edge.i
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([30 x i8]* @.str198, i64 0, i64 0), i32 %nr.0.lcssa.i) #8, !dbg !2314
  br label %do_symtab.exit, !dbg !2314

do_symtab.exit:                                   ; preds = %20, %4, %._crit_edge.i, %54
  call void @llvm.lifetime.end(i64 4096, i8* %2) #5, !dbg !2315
  %55 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0, !dbg !2316
  call fastcc void @do_symstr(i8*** %55, i32 %bRead, %struct.t_symtab* %1) #10, !dbg !2317
  %56 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, !dbg !2318
  call void @llvm.dbg.value(metadata %struct.t_atoms* %56, i64 0, metadata !1021, metadata !1151) #5, !dbg !2319
  call void @llvm.dbg.value(metadata i32 %bRead, i64 0, metadata !1022, metadata !1151) #5, !dbg !2320
  call void @llvm.dbg.value(metadata %struct.t_symtab* %1, i64 0, metadata !1023, metadata !1151) #5, !dbg !2321
  %57 = icmp ne i32 %bRead, 0, !dbg !2322
  br i1 %57, label %70, label %58, !dbg !2322

; <label>:58                                      ; preds = %do_symtab.exit
  %59 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2322, !tbaa !1331
  %60 = bitcast %struct.t_atoms* %56 to i8*, !dbg !2322
  %61 = call i32 %59(i8* %60, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str200, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 622) #8, !dbg !2322
  %62 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2323, !tbaa !1331
  %63 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 5, !dbg !2323
  %64 = bitcast i32* %63 to i8*, !dbg !2323
  %65 = call i32 %62(i8* %64, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str201, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 623) #8, !dbg !2323
  %66 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2324, !tbaa !1331
  %67 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 7, !dbg !2324
  %68 = bitcast i32* %67 to i8*, !dbg !2324
  %69 = call i32 %66(i8* %68, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str202, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 624) #8, !dbg !2324
  %.pre.i1 = getelementptr inbounds %struct.t_atoms* %56, i64 0, i32 0, !dbg !2325
  br label %.preheader31.i, !dbg !2328

; <label>:70                                      ; preds = %do_symtab.exit
  %71 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2322, !tbaa !1331
  %72 = bitcast %struct.t_atoms* %56 to i8*, !dbg !2322
  %73 = call i32 %71(i8* %72, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str200, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 622) #8, !dbg !2322
  %74 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2323, !tbaa !1331
  %75 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 5, !dbg !2323
  %76 = bitcast i32* %75 to i8*, !dbg !2323
  %77 = call i32 %74(i8* %76, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str201, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 623) #8, !dbg !2323
  %78 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2324, !tbaa !1331
  %79 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 7, !dbg !2324
  %80 = bitcast i32* %79 to i8*, !dbg !2324
  %81 = call i32 %78(i8* %80, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str202, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 624) #8, !dbg !2324
  %82 = getelementptr inbounds %struct.t_atoms* %56, i64 0, i32 0, !dbg !2329
  %83 = load i32* %82, align 4, !dbg !2329, !tbaa !2332
  %84 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str203, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 626, i32 %83, i32 40) #8, !dbg !2329
  %85 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1, !dbg !2329
  %86 = bitcast %struct.t_atom** %85 to i8**, !dbg !2329
  store i8* %84, i8** %86, align 8, !dbg !2329, !tbaa !2333
  %87 = load i32* %82, align 4, !dbg !2334, !tbaa !2332
  %88 = call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str204, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 627, i32 %87, i32 8) #8, !dbg !2334
  %89 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 2, !dbg !2334
  %90 = bitcast i8**** %89 to i8**, !dbg !2334
  store i8* %88, i8** %90, align 8, !dbg !2334, !tbaa !2335
  %91 = load i32* %82, align 4, !dbg !2336, !tbaa !2332
  %92 = call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str205, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 628, i32 %91, i32 8) #8, !dbg !2336
  %93 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 3, !dbg !2336
  %94 = bitcast i8**** %93 to i8**, !dbg !2336
  store i8* %92, i8** %94, align 8, !dbg !2336, !tbaa !2337
  %95 = load i32* %82, align 4, !dbg !2338, !tbaa !2332
  %96 = call i8* @save_calloc(i8* getelementptr inbounds ([17 x i8]* @.str206, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 629, i32 %95, i32 8) #8, !dbg !2338
  %97 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 4, !dbg !2338
  %98 = bitcast i8**** %97 to i8**, !dbg !2338
  store i8* %96, i8** %98, align 8, !dbg !2338, !tbaa !2339
  %99 = load i32* %75, align 4, !dbg !2340, !tbaa !2341
  %100 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str207, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 630, i32 %99, i32 8) #8, !dbg !2340
  %101 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 6, !dbg !2340
  %102 = bitcast i8**** %101 to i8**, !dbg !2340
  store i8* %100, i8** %102, align 8, !dbg !2340, !tbaa !2342
  %103 = load i32* %79, align 4, !dbg !2343, !tbaa !2344
  %104 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str208, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 631, i32 %103, i32 8) #8, !dbg !2343
  %105 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 8, !dbg !2343
  %106 = bitcast i8**** %105 to i8**, !dbg !2343
  store i8* %104, i8** %106, align 8, !dbg !2343, !tbaa !2345
  %107 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 11, !dbg !2346
  store %struct.t_pdbinfo* null, %struct.t_pdbinfo** %107, align 8, !dbg !2347, !tbaa !2348
  br label %.preheader31.i, !dbg !2349

.preheader31.i:                                   ; preds = %70, %58
  %.pre-phi.i = phi i32* [ %82, %70 ], [ %.pre.i1, %58 ], !dbg !2325
  %108 = load i32* %.pre-phi.i, align 4, !dbg !2325, !tbaa !2332
  %109 = icmp sgt i32 %108, 0, !dbg !2350
  br i1 %109, label %.lr.ph35.i, label %do_strstr.exit.i, !dbg !2351

.lr.ph35.i:                                       ; preds = %.preheader31.i
  %110 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1, !dbg !2352
  br label %111, !dbg !2351

; <label>:111                                     ; preds = %do_atom.exit.i, %.lr.ph35.i
  %indvars.iv45.i = phi i64 [ 0, %.lr.ph35.i ], [ %indvars.iv.next46.i, %do_atom.exit.i ], !dbg !2328
  %112 = load %struct.t_atom** %110, align 8, !dbg !2352, !tbaa !2333
  %113 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, !dbg !2353
  call void @llvm.dbg.value(metadata i32 9, i64 0, metadata !1030, metadata !1151) #5, !dbg !2354
  br i1 %57, label %114, label %146, !dbg !2356

; <label>:114                                     ; preds = %111
  %115 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2356, !tbaa !1331
  %116 = bitcast %struct.t_atom* %113 to i8*, !dbg !2356
  %117 = call i32 %115(i8* %116, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str210, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 562) #8, !dbg !2356
  %118 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2357, !tbaa !1331
  %119 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 1, !dbg !2357
  %120 = bitcast float* %119 to i8*, !dbg !2357
  %121 = call i32 %118(i8* %120, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str211, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 563) #8, !dbg !2357
  %122 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2358, !tbaa !1331
  %123 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 2, !dbg !2358
  %124 = bitcast float* %123 to i8*, !dbg !2358
  %125 = call i32 %122(i8* %124, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str212, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 564) #8, !dbg !2358
  %126 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2359, !tbaa !1331
  %127 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 3, !dbg !2359
  %128 = bitcast float* %127 to i8*, !dbg !2359
  %129 = call i32 %126(i8* %128, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str213, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 565) #8, !dbg !2359
  %130 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2360, !tbaa !1331
  %131 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 4, !dbg !2360
  %132 = bitcast i16* %131 to i8*, !dbg !2360
  %133 = call i32 %130(i8* %132, i32 1, i32 3, i8* getelementptr inbounds ([11 x i8]* @.str214, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 566) #8, !dbg !2360
  %134 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2361, !tbaa !1331
  %135 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 5, !dbg !2361
  %136 = bitcast i16* %135 to i8*, !dbg !2361
  %137 = call i32 %134(i8* %136, i32 1, i32 3, i8* getelementptr inbounds ([12 x i8]* @.str215, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 567) #8, !dbg !2361
  %138 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2362, !tbaa !1331
  %139 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 6, !dbg !2362
  %140 = bitcast i32* %139 to i8*, !dbg !2362
  %141 = call i32 %138(i8* %140, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str216, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 568) #8, !dbg !2362
  %142 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2363, !tbaa !1331
  %143 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 7, !dbg !2363
  %144 = bitcast i32* %143 to i8*, !dbg !2363
  %145 = call i32 %142(i8* %144, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str217, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 569) #8, !dbg !2363
  br label %178, !dbg !2363

; <label>:146                                     ; preds = %111
  %147 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2356, !tbaa !1331
  %148 = bitcast %struct.t_atom* %113 to i8*, !dbg !2356
  %149 = call i32 %147(i8* %148, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str210, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 562) #8, !dbg !2356
  %150 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2357, !tbaa !1331
  %151 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 1, !dbg !2357
  %152 = bitcast float* %151 to i8*, !dbg !2357
  %153 = call i32 %150(i8* %152, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str211, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 563) #8, !dbg !2357
  %154 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2358, !tbaa !1331
  %155 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 2, !dbg !2358
  %156 = bitcast float* %155 to i8*, !dbg !2358
  %157 = call i32 %154(i8* %156, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str212, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 564) #8, !dbg !2358
  %158 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2359, !tbaa !1331
  %159 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 3, !dbg !2359
  %160 = bitcast float* %159 to i8*, !dbg !2359
  %161 = call i32 %158(i8* %160, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str213, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 565) #8, !dbg !2359
  %162 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2360, !tbaa !1331
  %163 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 4, !dbg !2360
  %164 = bitcast i16* %163 to i8*, !dbg !2360
  %165 = call i32 %162(i8* %164, i32 1, i32 3, i8* getelementptr inbounds ([11 x i8]* @.str214, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 566) #8, !dbg !2360
  %166 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2361, !tbaa !1331
  %167 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 5, !dbg !2361
  %168 = bitcast i16* %167 to i8*, !dbg !2361
  %169 = call i32 %166(i8* %168, i32 1, i32 3, i8* getelementptr inbounds ([12 x i8]* @.str215, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 567) #8, !dbg !2361
  %170 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2362, !tbaa !1331
  %171 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 6, !dbg !2362
  %172 = bitcast i32* %171 to i8*, !dbg !2362
  %173 = call i32 %170(i8* %172, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str216, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 568) #8, !dbg !2362
  %174 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2363, !tbaa !1331
  %175 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 7, !dbg !2363
  %176 = bitcast i32* %175 to i8*, !dbg !2363
  %177 = call i32 %174(i8* %176, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str217, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 569) #8, !dbg !2363
  br label %178, !dbg !2363

; <label>:178                                     ; preds = %146, %114
  %179 = load i32* @file_version, align 4, !dbg !2364, !tbaa !1469
  %180 = icmp slt i32 %179, 23, !dbg !2366
  br i1 %180, label %181, label %183, !dbg !2367

; <label>:181                                     ; preds = %178
  call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !1030, metadata !1151) #5, !dbg !2354
  %182 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 8, i64 8, !dbg !2368
  store i8 0, i8* %182, align 1, !dbg !2370, !tbaa !1179
  br label %183, !dbg !2371

; <label>:183                                     ; preds = %181, %178
  %.0.i.i = phi i32 [ 8, %181 ], [ 9, %178 ], !dbg !2372
  br i1 %57, label %184, label %188, !dbg !2373

; <label>:184                                     ; preds = %183
  %185 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2373, !tbaa !1331
  %186 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 8, i64 0, !dbg !2373
  %187 = call i32 %185(i8* %186, i32 %.0.i.i, i32 2, i8* getelementptr inbounds ([12 x i8]* @.str218, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 574) #8, !dbg !2373
  br label %do_atom.exit.i, !dbg !2373

; <label>:188                                     ; preds = %183
  %189 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2373, !tbaa !1331
  %190 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 8, i64 0, !dbg !2373
  %191 = call i32 %189(i8* %190, i32 %.0.i.i, i32 2, i8* getelementptr inbounds ([12 x i8]* @.str218, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 574) #8, !dbg !2373
  br label %do_atom.exit.i, !dbg !2373

do_atom.exit.i:                                   ; preds = %188, %184
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1, !dbg !2351
  %192 = load i32* %.pre-phi.i, align 4, !dbg !2325, !tbaa !2332
  %193 = sext i32 %192 to i64, !dbg !2350
  %194 = icmp slt i64 %indvars.iv.next46.i, %193, !dbg !2350
  br i1 %194, label %111, label %._crit_edge.i2, !dbg !2351

._crit_edge.i2:                                   ; preds = %do_atom.exit.i
  %195 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 2, !dbg !2374
  %196 = load i8**** %195, align 8, !dbg !2374, !tbaa !2335
  call void @llvm.dbg.value(metadata i32 %192, i64 0, metadata !1036, metadata !1151) #5, !dbg !2375
  call void @llvm.dbg.value(metadata i8*** %196, i64 0, metadata !1037, metadata !1151) #5, !dbg !2377
  call void @llvm.dbg.value(metadata i32 %bRead, i64 0, metadata !1038, metadata !1151) #5, !dbg !2378
  call void @llvm.dbg.value(metadata %struct.t_symtab* %1, i64 0, metadata !1039, metadata !1151) #5, !dbg !2379
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1040, metadata !1151) #5, !dbg !2380
  %197 = icmp sgt i32 %192, 0, !dbg !2381
  br i1 %197, label %.lr.ph.i.i, label %do_strstr.exit.i, !dbg !2384

.lr.ph.i.i:                                       ; preds = %._crit_edge.i2
  %198 = add i32 %192, -1, !dbg !2384
  br label %199, !dbg !2384

; <label>:199                                     ; preds = %199, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %199 ], !dbg !2385
  %200 = getelementptr inbounds i8*** %196, i64 %indvars.iv.i.i, !dbg !2386
  call fastcc void @do_symstr(i8*** %200, i32 %bRead, %struct.t_symtab* %1) #8, !dbg !2387
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !2384
  %lftr.wideiv50 = trunc i64 %indvars.iv.i.i to i32, !dbg !2384
  %exitcond51 = icmp eq i32 %lftr.wideiv50, %198, !dbg !2384
  br i1 %exitcond51, label %do_strstr.exit.ithread-pre-split.loopexit, label %199, !dbg !2384

do_strstr.exit.ithread-pre-split.loopexit:        ; preds = %199
  %.pr.pre = load i32* %.pre-phi.i, align 4, !dbg !2388, !tbaa !2332
  br label %do_strstr.exit.i

do_strstr.exit.i:                                 ; preds = %._crit_edge.i2, %do_strstr.exit.ithread-pre-split.loopexit, %.preheader31.i
  %201 = phi i32 [ %108, %.preheader31.i ], [ %.pr.pre, %do_strstr.exit.ithread-pre-split.loopexit ], [ %192, %._crit_edge.i2 ], !dbg !2388
  %202 = load i32* @file_version, align 4, !dbg !2328
  %203 = icmp slt i32 %202, 21, !dbg !2393
  %or.cond.i3 = and i1 %57, %203, !dbg !2394
  br i1 %or.cond.i3, label %.preheader.i4, label %217, !dbg !2394

.preheader.i4:                                    ; preds = %do_strstr.exit.i
  %204 = icmp sgt i32 %201, 0, !dbg !2395
  br i1 %204, label %.lr.ph.i5, label %do_strstr.exit13.i, !dbg !2396

.lr.ph.i5:                                        ; preds = %.preheader.i4
  %205 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 3, !dbg !2397
  %206 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 4, !dbg !2399
  br label %207, !dbg !2396

; <label>:207                                     ; preds = %207, %.lr.ph.i5
  %indvars.iv.i6 = phi i64 [ 0, %.lr.ph.i5 ], [ %indvars.iv.next.i7, %207 ], !dbg !2328
  %208 = call i8** @put_symtab(%struct.t_symtab* %1, i8* getelementptr inbounds ([2 x i8]* @.str209, i64 0, i64 0)) #8, !dbg !2400
  %209 = load i8**** %205, align 8, !dbg !2397, !tbaa !2337
  %210 = getelementptr inbounds i8*** %209, i64 %indvars.iv.i6, !dbg !2401
  store i8** %208, i8*** %210, align 8, !dbg !2402, !tbaa !1331
  %211 = call i8** @put_symtab(%struct.t_symtab* %1, i8* getelementptr inbounds ([2 x i8]* @.str209, i64 0, i64 0)) #8, !dbg !2403
  %212 = load i8**** %206, align 8, !dbg !2399, !tbaa !2339
  %213 = getelementptr inbounds i8*** %212, i64 %indvars.iv.i6, !dbg !2404
  store i8** %211, i8*** %213, align 8, !dbg !2405, !tbaa !1331
  %indvars.iv.next.i7 = add nuw nsw i64 %indvars.iv.i6, 1, !dbg !2396
  %214 = load i32* %.pre-phi.i, align 4, !dbg !2388, !tbaa !2332
  %215 = sext i32 %214 to i64, !dbg !2395
  %216 = icmp slt i64 %indvars.iv.next.i7, %215, !dbg !2395
  br i1 %216, label %207, label %do_strstr.exit13.i, !dbg !2396

; <label>:217                                     ; preds = %do_strstr.exit.i
  %218 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 3, !dbg !2406
  %219 = load i8**** %218, align 8, !dbg !2406, !tbaa !2337
  call void @llvm.dbg.value(metadata i32 %201, i64 0, metadata !1036, metadata !1151) #5, !dbg !2408
  call void @llvm.dbg.value(metadata i8*** %219, i64 0, metadata !1037, metadata !1151) #5, !dbg !2410
  call void @llvm.dbg.value(metadata i32 %bRead, i64 0, metadata !1038, metadata !1151) #5, !dbg !2411
  call void @llvm.dbg.value(metadata %struct.t_symtab* %1, i64 0, metadata !1039, metadata !1151) #5, !dbg !2412
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1040, metadata !1151) #5, !dbg !2413
  %220 = icmp sgt i32 %201, 0, !dbg !2414
  br i1 %220, label %.lr.ph.i2.i, label %do_strstr.exit13.i, !dbg !2415

.lr.ph.i2.i:                                      ; preds = %217
  %221 = add i32 %201, -1, !dbg !2415
  br label %222, !dbg !2415

; <label>:222                                     ; preds = %222, %.lr.ph.i2.i
  %indvars.iv.i3.i = phi i64 [ 0, %.lr.ph.i2.i ], [ %indvars.iv.next.i4.i, %222 ], !dbg !2416
  %223 = getelementptr inbounds i8*** %219, i64 %indvars.iv.i3.i, !dbg !2417
  call fastcc void @do_symstr(i8*** %223, i32 %bRead, %struct.t_symtab* %1) #8, !dbg !2418
  %indvars.iv.next.i4.i = add nuw nsw i64 %indvars.iv.i3.i, 1, !dbg !2415
  %lftr.wideiv48 = trunc i64 %indvars.iv.i3.i to i32, !dbg !2415
  %exitcond49 = icmp eq i32 %lftr.wideiv48, %221, !dbg !2415
  br i1 %exitcond49, label %do_strstr.exit7.i, label %222, !dbg !2415

do_strstr.exit7.i:                                ; preds = %222
  %.pr.i = load i32* %.pre-phi.i, align 4, !dbg !2419, !tbaa !2332
  %224 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 4, !dbg !2420
  %225 = load i8**** %224, align 8, !dbg !2420, !tbaa !2339
  call void @llvm.dbg.value(metadata i32 %.pr.i, i64 0, metadata !1036, metadata !1151) #5, !dbg !2421
  call void @llvm.dbg.value(metadata i8*** %225, i64 0, metadata !1037, metadata !1151) #5, !dbg !2423
  call void @llvm.dbg.value(metadata i32 %bRead, i64 0, metadata !1038, metadata !1151) #5, !dbg !2424
  call void @llvm.dbg.value(metadata %struct.t_symtab* %1, i64 0, metadata !1039, metadata !1151) #5, !dbg !2425
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1040, metadata !1151) #5, !dbg !2426
  %226 = icmp sgt i32 %.pr.i, 0, !dbg !2427
  br i1 %226, label %.lr.ph.i8.i, label %do_strstr.exit13.i, !dbg !2428

.lr.ph.i8.i:                                      ; preds = %do_strstr.exit7.i
  %227 = add i32 %.pr.i, -1, !dbg !2428
  br label %228, !dbg !2428

; <label>:228                                     ; preds = %228, %.lr.ph.i8.i
  %indvars.iv.i9.i = phi i64 [ 0, %.lr.ph.i8.i ], [ %indvars.iv.next.i10.i, %228 ], !dbg !2429
  %229 = getelementptr inbounds i8*** %225, i64 %indvars.iv.i9.i, !dbg !2430
  call fastcc void @do_symstr(i8*** %229, i32 %bRead, %struct.t_symtab* %1) #8, !dbg !2431
  %indvars.iv.next.i10.i = add nuw nsw i64 %indvars.iv.i9.i, 1, !dbg !2428
  %lftr.wideiv46 = trunc i64 %indvars.iv.i9.i to i32, !dbg !2428
  %exitcond47 = icmp eq i32 %lftr.wideiv46, %227, !dbg !2428
  br i1 %exitcond47, label %do_strstr.exit13.i, label %228, !dbg !2428

do_strstr.exit13.i:                               ; preds = %228, %207, %do_strstr.exit7.i, %217, %.preheader.i4
  %230 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 5, !dbg !2432
  %231 = load i32* %230, align 4, !dbg !2432, !tbaa !2341
  %232 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 6, !dbg !2433
  %233 = load i8**** %232, align 8, !dbg !2433, !tbaa !2342
  call void @llvm.dbg.value(metadata i32 %231, i64 0, metadata !1036, metadata !1151) #5, !dbg !2434
  call void @llvm.dbg.value(metadata i8*** %233, i64 0, metadata !1037, metadata !1151) #5, !dbg !2436
  call void @llvm.dbg.value(metadata i32 %bRead, i64 0, metadata !1038, metadata !1151) #5, !dbg !2437
  call void @llvm.dbg.value(metadata %struct.t_symtab* %1, i64 0, metadata !1039, metadata !1151) #5, !dbg !2438
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1040, metadata !1151) #5, !dbg !2439
  %234 = icmp sgt i32 %231, 0, !dbg !2440
  br i1 %234, label %.lr.ph.i14.i, label %do_strstr.exit19.i, !dbg !2441

.lr.ph.i14.i:                                     ; preds = %do_strstr.exit13.i
  %235 = add i32 %231, -1, !dbg !2441
  br label %236, !dbg !2441

; <label>:236                                     ; preds = %236, %.lr.ph.i14.i
  %indvars.iv.i15.i = phi i64 [ 0, %.lr.ph.i14.i ], [ %indvars.iv.next.i16.i, %236 ], !dbg !2442
  %237 = getelementptr inbounds i8*** %233, i64 %indvars.iv.i15.i, !dbg !2443
  call fastcc void @do_symstr(i8*** %237, i32 %bRead, %struct.t_symtab* %1) #8, !dbg !2444
  %indvars.iv.next.i16.i = add nuw nsw i64 %indvars.iv.i15.i, 1, !dbg !2441
  %lftr.wideiv44 = trunc i64 %indvars.iv.i15.i to i32, !dbg !2441
  %exitcond45 = icmp eq i32 %lftr.wideiv44, %235, !dbg !2441
  br i1 %exitcond45, label %do_strstr.exit19.i, label %236, !dbg !2441

do_strstr.exit19.i:                               ; preds = %236, %do_strstr.exit13.i
  %238 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 7, !dbg !2445
  %239 = load i32* %238, align 4, !dbg !2445, !tbaa !2344
  %240 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 8, !dbg !2446
  %241 = load i8**** %240, align 8, !dbg !2446, !tbaa !2345
  call void @llvm.dbg.value(metadata i32 %239, i64 0, metadata !1036, metadata !1151) #5, !dbg !2447
  call void @llvm.dbg.value(metadata i8*** %241, i64 0, metadata !1037, metadata !1151) #5, !dbg !2449
  call void @llvm.dbg.value(metadata i32 %bRead, i64 0, metadata !1038, metadata !1151) #5, !dbg !2450
  call void @llvm.dbg.value(metadata %struct.t_symtab* %1, i64 0, metadata !1039, metadata !1151) #5, !dbg !2451
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1040, metadata !1151) #5, !dbg !2452
  %242 = icmp sgt i32 %239, 0, !dbg !2453
  br i1 %242, label %.lr.ph.i20.i, label %do_strstr.exit25.i, !dbg !2454

.lr.ph.i20.i:                                     ; preds = %do_strstr.exit19.i
  %243 = add i32 %239, -1, !dbg !2454
  br label %244, !dbg !2454

; <label>:244                                     ; preds = %244, %.lr.ph.i20.i
  %indvars.iv.i21.i = phi i64 [ 0, %.lr.ph.i20.i ], [ %indvars.iv.next.i22.i, %244 ], !dbg !2455
  %245 = getelementptr inbounds i8*** %241, i64 %indvars.iv.i21.i, !dbg !2456
  call fastcc void @do_symstr(i8*** %245, i32 %bRead, %struct.t_symtab* %1) #8, !dbg !2457
  %indvars.iv.next.i22.i = add nuw nsw i64 %indvars.iv.i21.i, 1, !dbg !2454
  %lftr.wideiv = trunc i64 %indvars.iv.i21.i to i32, !dbg !2454
  %exitcond43 = icmp eq i32 %lftr.wideiv, %243, !dbg !2454
  br i1 %exitcond43, label %do_strstr.exit25.i, label %244, !dbg !2454

do_strstr.exit25.i:                               ; preds = %244, %do_strstr.exit19.i
  call void @llvm.dbg.value(metadata i32 9, i64 0, metadata !1046, metadata !1151) #5, !dbg !2458
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1051, metadata !1151) #5, !dbg !2459
  %246 = load i32* @file_version, align 4, !dbg !2460, !tbaa !1469
  %247 = icmp slt i32 %246, 23, !dbg !2462
  br i1 %247, label %248, label %253, !dbg !2463

; <label>:248                                     ; preds = %do_strstr.exit25.i
  call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !1046, metadata !1151) #5, !dbg !2458
  %249 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 8, i32 0, !dbg !2464
  store i32 1, i32* %249, align 4, !dbg !2466, !tbaa !2273
  %250 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str219, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 585, i32 1, i32 4) #8, !dbg !2467
  %251 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 8, i32 1, !dbg !2467
  %252 = bitcast i32** %251 to i8**, !dbg !2467
  store i8* %250, i8** %252, align 8, !dbg !2467, !tbaa !2277
  br label %253, !dbg !2468

; <label>:253                                     ; preds = %248, %do_strstr.exit25.i
  %.0.i26.i = phi i64 [ 8, %248 ], [ 9, %do_strstr.exit25.i ], !dbg !2469
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1050, metadata !1151) #5, !dbg !2470
  %254 = getelementptr inbounds [128 x i8]* %buf.i.i, i64 0, i64 0, !dbg !2260
  br label %255, !dbg !2471

; <label>:255                                     ; preds = %._crit_edge.i.i, %253
  %indvars.iv4.i.i = phi i64 [ 0, %253 ], [ %indvars.iv.next5.i.i, %._crit_edge.i.i ], !dbg !2469
  br i1 %57, label %261, label %256, !dbg !2472

; <label>:256                                     ; preds = %255
  %257 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2472, !tbaa !1331
  %258 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv4.i.i, i32 0, !dbg !2472
  %259 = bitcast i32* %258 to i8*, !dbg !2472
  %260 = call i32 %257(i8* %259, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str220, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 589) #8, !dbg !2472
  br label %.preheader.i.i, !dbg !2469

; <label>:261                                     ; preds = %255
  %262 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2472, !tbaa !1331
  %263 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv4.i.i, i32 0, !dbg !2472
  %264 = bitcast i32* %263 to i8*, !dbg !2472
  %265 = call i32 %262(i8* %264, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str220, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 589) #8, !dbg !2472
  %266 = load i32* %263, align 4, !dbg !2473, !tbaa !2273
  %267 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str221, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 591, i32 %266, i32 4) #8, !dbg !2473
  %268 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv4.i.i, i32 1, !dbg !2473
  %269 = bitcast i32** %268 to i8**, !dbg !2473
  store i8* %267, i8** %269, align 8, !dbg !2473, !tbaa !2277
  br label %.preheader.i.i, !dbg !2473

.preheader.i.i:                                   ; preds = %261, %256
  %.pre-phi.i.i = phi i32* [ %263, %261 ], [ %258, %256 ], !dbg !2475
  %270 = load i32* %.pre-phi.i.i, align 4, !dbg !2475, !tbaa !2273
  %271 = icmp sgt i32 %270, 0, !dbg !2475
  br i1 %271, label %.lr.ph.i27.i, label %._crit_edge.i.i, !dbg !2476

.lr.ph.i27.i:                                     ; preds = %.preheader.i.i
  %272 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv4.i.i, i32 1, !dbg !2260
  br label %273, !dbg !2476

; <label>:273                                     ; preds = %293, %.lr.ph.i27.i
  %indvars.iv.i28.i = phi i64 [ 0, %.lr.ph.i27.i ], [ %indvars.iv.next.i29.i, %293 ], !dbg !2469
  %bDum.02.i.i = phi i32 [ 1, %.lr.ph.i27.i ], [ %295, %293 ], !dbg !2469
  call void @llvm.lifetime.start(i64 128, i8* %254) #5, !dbg !2260
  %274 = trunc i64 %indvars.iv.i28.i to i32, !dbg !2260
  %275 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %254, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str221, i64 0, i64 0), i32 %274) #8, !dbg !2260
  %276 = icmp eq i32 %bDum.02.i.i, 0, !dbg !2260
  br i1 %276, label %293, label %277, !dbg !2260

; <label>:277                                     ; preds = %273
  br i1 %57, label %278, label %284, !dbg !2260

; <label>:278                                     ; preds = %277
  %279 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2260, !tbaa !1331
  %280 = load i32** %272, align 8, !dbg !2260, !tbaa !2277
  %281 = getelementptr inbounds i32* %280, i64 %indvars.iv.i28.i, !dbg !2260
  %282 = bitcast i32* %281 to i8*, !dbg !2260
  %283 = call i32 %279(i8* %282, i32 1, i32 1, i8* %254, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 592) #8, !dbg !2260
  br label %290, !dbg !2260

; <label>:284                                     ; preds = %277
  %285 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2260, !tbaa !1331
  %286 = load i32** %272, align 8, !dbg !2260, !tbaa !2277
  %287 = getelementptr inbounds i32* %286, i64 %indvars.iv.i28.i, !dbg !2260
  %288 = bitcast i32* %287 to i8*, !dbg !2260
  %289 = call i32 %285(i8* %288, i32 1, i32 1, i8* %254, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 592) #8, !dbg !2260
  br label %290, !dbg !2260

; <label>:290                                     ; preds = %284, %278
  %291 = phi i32 [ %283, %278 ], [ %289, %284 ], !dbg !2260
  %292 = icmp ne i32 %291, 0, !dbg !2260
  br label %293, !dbg !2469

; <label>:293                                     ; preds = %290, %273
  %294 = phi i1 [ false, %273 ], [ %292, %290 ], !dbg !2469
  %295 = zext i1 %294 to i32, !dbg !2260
  call void @llvm.dbg.value(metadata i32 %295, i64 0, metadata !1051, metadata !1151) #5, !dbg !2459
  call void @llvm.lifetime.end(i64 128, i8* %254) #5, !dbg !2475
  %indvars.iv.next.i29.i = add nuw nsw i64 %indvars.iv.i28.i, 1, !dbg !2476
  %296 = load i32* %.pre-phi.i.i, align 4, !dbg !2475, !tbaa !2273
  %297 = sext i32 %296 to i64, !dbg !2475
  %298 = icmp slt i64 %indvars.iv.next.i29.i, %297, !dbg !2475
  br i1 %298, label %273, label %._crit_edge.i.i, !dbg !2476

._crit_edge.i.i:                                  ; preds = %293, %.preheader.i.i
  %indvars.iv.next5.i.i = add nuw nsw i64 %indvars.iv4.i.i, 1, !dbg !2471
  %299 = icmp slt i64 %indvars.iv.next5.i.i, %.0.i26.i, !dbg !2477
  br i1 %299, label %255, label %do_atoms.exit, !dbg !2471

do_atoms.exit:                                    ; preds = %._crit_edge.i.i
  %300 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 9, !dbg !2478
  call fastcc void @do_block(%struct.t_block* %300, i32 %bRead) #8, !dbg !2479
  %301 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, !dbg !2480
  call void @llvm.dbg.value(metadata %struct.t_idef* %301, i64 0, metadata !1065, metadata !1151) #5, !dbg !2481
  call void @llvm.dbg.value(metadata i32 %bRead, i64 0, metadata !1066, metadata !1151) #5, !dbg !2482
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1070, metadata !1151) #5, !dbg !2483
  br i1 %57, label %314, label %302, !dbg !2484

; <label>:302                                     ; preds = %do_atoms.exit
  %303 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2484, !tbaa !1331
  %304 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 2, !dbg !2484
  %305 = bitcast i32* %304 to i8*, !dbg !2484
  %306 = call i32 %303(i8* %305, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str222, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 510) #8, !dbg !2484
  %307 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2485, !tbaa !1331
  %308 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 1, !dbg !2485
  %309 = bitcast i32* %308 to i8*, !dbg !2485
  %310 = call i32 %307(i8* %309, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str223, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 511) #8, !dbg !2485
  %311 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2486, !tbaa !1331
  %312 = bitcast %struct.t_idef* %301 to i8*, !dbg !2486
  %313 = call i32 %311(i8* %312, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str224, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 512) #8, !dbg !2486
  %.pre.i12 = getelementptr inbounds %struct.t_idef* %301, i64 0, i32 0, !dbg !2487
  br label %.preheader5.i, !dbg !2488

; <label>:314                                     ; preds = %do_atoms.exit
  %315 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2484, !tbaa !1331
  %316 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 2, !dbg !2484
  %317 = bitcast i32* %316 to i8*, !dbg !2484
  %318 = call i32 %315(i8* %317, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str222, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 510) #8, !dbg !2484
  %319 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2485, !tbaa !1331
  %320 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 1, !dbg !2485
  %321 = bitcast i32* %320 to i8*, !dbg !2485
  %322 = call i32 %319(i8* %321, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str223, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 511) #8, !dbg !2485
  %323 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2486, !tbaa !1331
  %324 = bitcast %struct.t_idef* %301 to i8*, !dbg !2486
  %325 = call i32 %323(i8* %324, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str224, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 512) #8, !dbg !2486
  %326 = getelementptr inbounds %struct.t_idef* %301, i64 0, i32 0, !dbg !2489
  %327 = load i32* %326, align 4, !dbg !2489, !tbaa !2492
  %328 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str225, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 514, i32 %327, i32 4) #8, !dbg !2489
  %329 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 3, !dbg !2489
  %330 = bitcast i32** %329 to i8**, !dbg !2489
  store i8* %328, i8** %330, align 8, !dbg !2489, !tbaa !2493
  %331 = load i32* %326, align 4, !dbg !2494, !tbaa !2492
  %332 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str226, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 515, i32 %331, i32 24) #8, !dbg !2494
  %333 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 4, !dbg !2494
  %334 = bitcast %union.t_iparams** %333 to i8**, !dbg !2494
  store i8* %332, i8** %334, align 8, !dbg !2494, !tbaa !2495
  br label %.preheader5.i, !dbg !2496

.preheader5.i:                                    ; preds = %314, %302
  %.pre-phi.i13 = phi i32* [ %326, %314 ], [ %.pre.i12, %302 ], !dbg !2487
  %335 = load i32* %.pre-phi.i13, align 4, !dbg !2487, !tbaa !2492
  %336 = icmp sgt i32 %335, 0, !dbg !2487
  br i1 %336, label %.lr.ph14.i, label %.preheader2.i, !dbg !2497

.lr.ph14.i:                                       ; preds = %.preheader5.i
  %337 = getelementptr inbounds [128 x i8]* %buf.i11, i64 0, i64 0, !dbg !2271
  %338 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 3, !dbg !2271
  br label %341, !dbg !2497

.preheader4.i:                                    ; preds = %361
  %339 = icmp sgt i32 %364, 0, !dbg !2498
  br i1 %339, label %.lr.ph.i14, label %.preheader2.i, !dbg !2501

.lr.ph.i14:                                       ; preds = %.preheader4.i
  %340 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 4, !dbg !2502
  br label %368, !dbg !2501

; <label>:341                                     ; preds = %361, %.lr.ph14.i
  %indvars.iv27.i = phi i64 [ 0, %.lr.ph14.i ], [ %indvars.iv.next28.i, %361 ], !dbg !2488
  %bDum.013.i = phi i32 [ 1, %.lr.ph14.i ], [ %363, %361 ], !dbg !2488
  call void @llvm.lifetime.start(i64 128, i8* %337) #5, !dbg !2271
  %342 = trunc i64 %indvars.iv27.i to i32, !dbg !2271
  %343 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %337, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str225, i64 0, i64 0), i32 %342) #8, !dbg !2271
  %344 = icmp eq i32 %bDum.013.i, 0, !dbg !2271
  br i1 %344, label %361, label %345, !dbg !2271

; <label>:345                                     ; preds = %341
  br i1 %57, label %346, label %352, !dbg !2271

; <label>:346                                     ; preds = %345
  %347 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2271, !tbaa !1331
  %348 = load i32** %338, align 8, !dbg !2271, !tbaa !2493
  %349 = getelementptr inbounds i32* %348, i64 %indvars.iv27.i, !dbg !2271
  %350 = bitcast i32* %349 to i8*, !dbg !2271
  %351 = call i32 %347(i8* %350, i32 1, i32 1, i8* %337, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 517) #8, !dbg !2271
  br label %358, !dbg !2271

; <label>:352                                     ; preds = %345
  %353 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2271, !tbaa !1331
  %354 = load i32** %338, align 8, !dbg !2271, !tbaa !2493
  %355 = getelementptr inbounds i32* %354, i64 %indvars.iv27.i, !dbg !2271
  %356 = bitcast i32* %355 to i8*, !dbg !2271
  %357 = call i32 %353(i8* %356, i32 1, i32 1, i8* %337, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 517) #8, !dbg !2271
  br label %358, !dbg !2271

; <label>:358                                     ; preds = %352, %346
  %359 = phi i32 [ %351, %346 ], [ %357, %352 ], !dbg !2271
  %360 = icmp ne i32 %359, 0, !dbg !2271
  br label %361, !dbg !2488

; <label>:361                                     ; preds = %358, %341
  %362 = phi i1 [ false, %341 ], [ %360, %358 ], !dbg !2488
  %363 = zext i1 %362 to i32, !dbg !2271
  call void @llvm.dbg.value(metadata i32 %363, i64 0, metadata !1070, metadata !1151) #5, !dbg !2483
  call void @llvm.lifetime.end(i64 128, i8* %337) #5, !dbg !2487
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1, !dbg !2497
  %364 = load i32* %.pre-phi.i13, align 4, !dbg !2487, !tbaa !2492
  %365 = sext i32 %364 to i64, !dbg !2487
  %366 = icmp slt i64 %indvars.iv.next28.i, %365, !dbg !2487
  br i1 %366, label %341, label %.preheader4.i, !dbg !2497

.preheader2.i:                                    ; preds = %.loopexit.i, %.preheader4.i, %.preheader5.i
  %367 = getelementptr inbounds [128 x i8]* %buf1.i.i, i64 0, i64 0, !dbg !2270
  br label %391, !dbg !2504

; <label>:368                                     ; preds = %.loopexit.i, %.lr.ph.i14
  %indvars.iv25.i = phi i64 [ 0, %.lr.ph.i14 ], [ %indvars.iv.next26.i, %.loopexit.i ], !dbg !2488
  br i1 %57, label %.preheader3.i, label %.loopexit.i, !dbg !2505

.preheader3.i:                                    ; preds = %368, %382
  %indvars.iv22.i = phi i64 [ %indvars.iv.next23.i, %382 ], [ 0, %368 ], !dbg !2488
  %369 = load i32* @file_version, align 4, !dbg !2506, !tbaa !1469
  %370 = getelementptr inbounds [7 x %struct.t_ftupd]* @ftupd, i64 0, i64 %indvars.iv22.i, i32 0, !dbg !2511
  %371 = load i32* %370, align 8, !dbg !2511, !tbaa !2512
  %372 = icmp slt i32 %369, %371, !dbg !2514
  br i1 %372, label %373, label %382, !dbg !2515

; <label>:373                                     ; preds = %.preheader3.i
  %374 = load i32** %338, align 8, !dbg !2516, !tbaa !2493
  %375 = getelementptr inbounds i32* %374, i64 %indvars.iv25.i, !dbg !2517
  %376 = load i32* %375, align 4, !dbg !2517, !tbaa !1469
  %377 = getelementptr inbounds [7 x %struct.t_ftupd]* @ftupd, i64 0, i64 %indvars.iv22.i, i32 1, !dbg !2518
  %378 = load i32* %377, align 4, !dbg !2518, !tbaa !2519
  %379 = icmp slt i32 %376, %378, !dbg !2520
  br i1 %379, label %382, label %380, !dbg !2521

; <label>:380                                     ; preds = %373
  %381 = add nsw i32 %376, 1, !dbg !2522
  store i32 %381, i32* %375, align 4, !dbg !2522, !tbaa !1469
  br label %382, !dbg !2523

; <label>:382                                     ; preds = %380, %373, %.preheader3.i
  %indvars.iv.next23.i = add nuw nsw i64 %indvars.iv22.i, 1, !dbg !2524
  %exitcond24.i = icmp eq i64 %indvars.iv.next23.i, 7, !dbg !2524
  br i1 %exitcond24.i, label %.loopexit.i, label %.preheader3.i, !dbg !2524

.loopexit.i:                                      ; preds = %382, %368
  %383 = load i32** %338, align 8, !dbg !2525, !tbaa !2493
  %384 = getelementptr inbounds i32* %383, i64 %indvars.iv25.i, !dbg !2526
  %385 = load i32* %384, align 4, !dbg !2526, !tbaa !1469
  %386 = load %union.t_iparams** %340, align 8, !dbg !2502, !tbaa !2495
  %387 = getelementptr inbounds %union.t_iparams* %386, i64 %indvars.iv25.i, !dbg !2527
  call void @do_iparams(i32 %385, %union.t_iparams* %387, i32 %bRead) #8, !dbg !2528
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1, !dbg !2501
  %388 = load i32* %.pre-phi.i13, align 4, !dbg !2529, !tbaa !2492
  %389 = sext i32 %388 to i64, !dbg !2498
  %390 = icmp slt i64 %indvars.iv.next26.i, %389, !dbg !2498
  br i1 %390, label %368, label %.preheader2.i, !dbg !2501

; <label>:391                                     ; preds = %do_ilist.exit.i, %.preheader2.i
  %indvars.iv19.i = phi i64 [ 0, %.preheader2.i ], [ %indvars.iv.next20.i, %do_ilist.exit.i ], !dbg !2488
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1071, metadata !1151) #5, !dbg !2530
  br i1 %57, label %.preheader.i15, label %409, !dbg !2531

.preheader.i15:                                   ; preds = %391
  %392 = load i32* @file_version, align 4, !dbg !2532, !tbaa !1469
  %393 = trunc i64 %indvars.iv19.i to i32, !dbg !2537
  br label %394, !dbg !2538

; <label>:394                                     ; preds = %402, %.preheader.i15
  %indvars.iv.i16 = phi i64 [ 0, %.preheader.i15 ], [ %indvars.iv.next.i17, %402 ], !dbg !2488
  %bClear.07.i = phi i32 [ 0, %.preheader.i15 ], [ %bClear.1.i, %402 ], !dbg !2488
  %395 = getelementptr inbounds [7 x %struct.t_ftupd]* @ftupd, i64 0, i64 %indvars.iv.i16, i32 0, !dbg !2539
  %396 = load i32* %395, align 8, !dbg !2539, !tbaa !2512
  %397 = icmp slt i32 %392, %396, !dbg !2540
  br i1 %397, label %398, label %402, !dbg !2541

; <label>:398                                     ; preds = %394
  %399 = getelementptr inbounds [7 x %struct.t_ftupd]* @ftupd, i64 0, i64 %indvars.iv.i16, i32 1, !dbg !2542
  %400 = load i32* %399, align 4, !dbg !2542, !tbaa !2519
  %401 = icmp eq i32 %393, %400, !dbg !2537
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1071, metadata !1151) #5, !dbg !2530
  %.bClear.0.i = select i1 %401, i32 1, i32 %bClear.07.i, !dbg !2543
  br label %402, !dbg !2543

; <label>:402                                     ; preds = %398, %394
  %bClear.1.i = phi i32 [ %bClear.07.i, %394 ], [ %.bClear.0.i, %398 ], !dbg !2488
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i16, 1, !dbg !2538
  %exitcond.i18 = icmp eq i64 %indvars.iv.next.i17, 7, !dbg !2538
  br i1 %exitcond.i18, label %403, label %394, !dbg !2538

; <label>:403                                     ; preds = %402
  %404 = icmp eq i32 %bClear.1.i, 0, !dbg !2544
  %405 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv19.i, !dbg !2545
  br i1 %404, label %.preheader2.i.i, label %406, !dbg !2547

; <label>:406                                     ; preds = %403
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1067, metadata !1151) #5, !dbg !2548
  %407 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv19.i, i32 2, !dbg !2549
  store i32* null, i32** %407, align 8, !dbg !2550, !tbaa !2551
  %408 = bitcast %struct.t_ilist* %405 to i8*, !dbg !2553
  call void @llvm.memset.p0i8.i64(i8* %408, i8 0, i64 1028, i32 4, i1 false) #5, !dbg !2554
  br label %do_ilist.exit.i, !dbg !2553

; <label>:409                                     ; preds = %391
  %410 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv19.i, !dbg !2545
  call void @llvm.dbg.value(metadata i32 %bRead, i64 0, metadata !1083, metadata !1151) #5, !dbg !2557
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1086, metadata !1151) #5, !dbg !2558
  %.in.i = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv19.i, i32 0, !dbg !2559
  %411 = load i8** %.in.i, align 8, !dbg !2559
  call void @set_comment(i8* %411) #8, !dbg !2560
  br label %.preheader2.i.i, !dbg !2560

.preheader2.i.i:                                  ; preds = %409, %403
  %412 = phi %struct.t_ilist* [ %410, %409 ], [ %405, %403 ], !dbg !2488
  br label %413, !dbg !2562

; <label>:413                                     ; preds = %431, %.preheader2.i.i
  %indvars.iv7.i.i = phi i64 [ 0, %.preheader2.i.i ], [ %indvars.iv.next8.i.i, %431 ], !dbg !2563
  %bDum.06.i.i = phi i32 [ 1, %.preheader2.i.i ], [ %433, %431 ], !dbg !2563
  call void @llvm.lifetime.start(i64 128, i8* %254) #5, !dbg !2263
  %414 = trunc i64 %indvars.iv7.i.i to i32, !dbg !2263
  %415 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %254, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str227, i64 0, i64 0), i32 %414) #8, !dbg !2263
  %416 = icmp eq i32 %bDum.06.i.i, 0, !dbg !2263
  br i1 %416, label %431, label %417, !dbg !2263

; <label>:417                                     ; preds = %413
  br i1 %57, label %418, label %423, !dbg !2263

; <label>:418                                     ; preds = %417
  %419 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2263, !tbaa !1331
  %420 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv19.i, i32 1, i64 %indvars.iv7.i.i, !dbg !2263
  %421 = bitcast i32* %420 to i8*, !dbg !2263
  %422 = call i32 %419(i8* %421, i32 1, i32 1, i8* %254, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 496) #8, !dbg !2263
  br label %428, !dbg !2263

; <label>:423                                     ; preds = %417
  %424 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2263, !tbaa !1331
  %425 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv19.i, i32 1, i64 %indvars.iv7.i.i, !dbg !2263
  %426 = bitcast i32* %425 to i8*, !dbg !2263
  %427 = call i32 %424(i8* %426, i32 1, i32 1, i8* %254, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 496) #8, !dbg !2263
  br label %428, !dbg !2263

; <label>:428                                     ; preds = %423, %418
  %429 = phi i32 [ %422, %418 ], [ %427, %423 ], !dbg !2263
  %430 = icmp ne i32 %429, 0, !dbg !2263
  br label %431, !dbg !2563

; <label>:431                                     ; preds = %428, %413
  %432 = phi i1 [ false, %413 ], [ %430, %428 ], !dbg !2563
  %433 = zext i1 %432 to i32, !dbg !2263
  call void @llvm.dbg.value(metadata i32 %433, i64 0, metadata !1086, metadata !1151) #5, !dbg !2558
  call void @llvm.lifetime.end(i64 128, i8* %254) #5, !dbg !2564
  %indvars.iv.next8.i.i = add nuw nsw i64 %indvars.iv7.i.i, 1, !dbg !2562
  %exitcond.i.i = icmp eq i64 %indvars.iv.next8.i.i, 256, !dbg !2562
  br i1 %exitcond.i.i, label %434, label %413, !dbg !2562

; <label>:434                                     ; preds = %431
  br i1 %57, label %439, label %435, !dbg !2565

; <label>:435                                     ; preds = %434
  %436 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2565, !tbaa !1331
  %437 = bitcast %struct.t_ilist* %412 to i8*, !dbg !2565
  %438 = call i32 %436(i8* %437, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str228, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 497) #8, !dbg !2565
  %.pre.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv19.i, i32 0, !dbg !2566
  br label %.preheader.i.i20, !dbg !2563

; <label>:439                                     ; preds = %434
  %440 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2565, !tbaa !1331
  %441 = bitcast %struct.t_ilist* %412 to i8*, !dbg !2565
  %442 = call i32 %440(i8* %441, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str228, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 497) #8, !dbg !2565
  %443 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv19.i, i32 0, !dbg !2567
  %444 = load i32* %443, align 4, !dbg !2567, !tbaa !2569
  %445 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str229, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 499, i32 %444, i32 4) #8, !dbg !2567
  %446 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv19.i, i32 2, !dbg !2567
  %447 = bitcast i32** %446 to i8**, !dbg !2567
  store i8* %445, i8** %447, align 8, !dbg !2567, !tbaa !2551
  br label %.preheader.i.i20, !dbg !2567

.preheader.i.i20:                                 ; preds = %439, %435
  %.pre-phi.i.i19 = phi i32* [ %443, %439 ], [ %.pre.i.i, %435 ], !dbg !2566
  %448 = load i32* %.pre-phi.i.i19, align 4, !dbg !2566, !tbaa !2569
  %449 = icmp sgt i32 %448, 0, !dbg !2566
  br i1 %449, label %.lr.ph.i.i21, label %._crit_edge.i.i24, !dbg !2570

.lr.ph.i.i21:                                     ; preds = %.preheader.i.i20
  %450 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv19.i, i32 2, !dbg !2270
  br label %451, !dbg !2570

; <label>:451                                     ; preds = %471, %.lr.ph.i.i21
  %indvars.iv.i.i22 = phi i64 [ 0, %.lr.ph.i.i21 ], [ %indvars.iv.next.i.i23, %471 ], !dbg !2563
  %bDum.14.i.i = phi i32 [ 1, %.lr.ph.i.i21 ], [ %473, %471 ], !dbg !2563
  call void @llvm.lifetime.start(i64 128, i8* %367) #5, !dbg !2270
  %452 = trunc i64 %indvars.iv.i.i22 to i32, !dbg !2270
  %453 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %367, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str229, i64 0, i64 0), i32 %452) #8, !dbg !2270
  %454 = icmp eq i32 %bDum.14.i.i, 0, !dbg !2270
  br i1 %454, label %471, label %455, !dbg !2270

; <label>:455                                     ; preds = %451
  br i1 %57, label %456, label %462, !dbg !2270

; <label>:456                                     ; preds = %455
  %457 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2270, !tbaa !1331
  %458 = load i32** %450, align 8, !dbg !2270, !tbaa !2551
  %459 = getelementptr inbounds i32* %458, i64 %indvars.iv.i.i22, !dbg !2270
  %460 = bitcast i32* %459 to i8*, !dbg !2270
  %461 = call i32 %457(i8* %460, i32 1, i32 1, i8* %367, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 500) #8, !dbg !2270
  br label %468, !dbg !2270

; <label>:462                                     ; preds = %455
  %463 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2270, !tbaa !1331
  %464 = load i32** %450, align 8, !dbg !2270, !tbaa !2551
  %465 = getelementptr inbounds i32* %464, i64 %indvars.iv.i.i22, !dbg !2270
  %466 = bitcast i32* %465 to i8*, !dbg !2270
  %467 = call i32 %463(i8* %466, i32 1, i32 1, i8* %367, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 500) #8, !dbg !2270
  br label %468, !dbg !2270

; <label>:468                                     ; preds = %462, %456
  %469 = phi i32 [ %461, %456 ], [ %467, %462 ], !dbg !2270
  %470 = icmp ne i32 %469, 0, !dbg !2270
  br label %471, !dbg !2563

; <label>:471                                     ; preds = %468, %451
  %472 = phi i1 [ false, %451 ], [ %470, %468 ], !dbg !2563
  %473 = zext i1 %472 to i32, !dbg !2270
  call void @llvm.dbg.value(metadata i32 %473, i64 0, metadata !1086, metadata !1151) #5, !dbg !2558
  call void @llvm.lifetime.end(i64 128, i8* %367) #5, !dbg !2566
  %indvars.iv.next.i.i23 = add nuw nsw i64 %indvars.iv.i.i22, 1, !dbg !2570
  %474 = load i32* %.pre-phi.i.i19, align 4, !dbg !2566, !tbaa !2569
  %475 = sext i32 %474 to i64, !dbg !2566
  %476 = icmp slt i64 %indvars.iv.next.i.i23, %475, !dbg !2566
  br i1 %476, label %451, label %._crit_edge.i.i24, !dbg !2570

._crit_edge.i.i24:                                ; preds = %471, %.preheader.i.i20
  br i1 %57, label %do_ilist.exit.i, label %477, !dbg !2571

; <label>:477                                     ; preds = %._crit_edge.i.i24
  call void @unset_comment() #8, !dbg !2572
  br label %do_ilist.exit.i, !dbg !2572

do_ilist.exit.i:                                  ; preds = %477, %._crit_edge.i.i24, %406
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1, !dbg !2504
  %exitcond21.i = icmp eq i64 %indvars.iv.next20.i, 44, !dbg !2504
  br i1 %exitcond21.i, label %do_idef.exit, label %391, !dbg !2504

do_idef.exit:                                     ; preds = %do_ilist.exit.i, %do_idef.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %do_idef.exit ], [ 0, %do_ilist.exit.i ]
  %478 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv, !dbg !2574
  call fastcc void @do_block(%struct.t_block* %478, i32 %bRead) #10, !dbg !2577
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2578
  %exitcond42 = icmp eq i64 %indvars.iv.next, 3, !dbg !2578
  br i1 %exitcond42, label %479, label %do_idef.exit, !dbg !2578

; <label>:479                                     ; preds = %do_idef.exit
  br i1 %3, label %make_chain_identifiers.exit, label %480, !dbg !2579

; <label>:480                                     ; preds = %479
  call void @close_symtab(%struct.t_symtab* %1) #8, !dbg !2580
  tail call void @llvm.dbg.value(metadata %struct.t_atoms* %56, i64 0, metadata !1125, metadata !1151), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 65, i64 0, metadata !1132, metadata !1151), !dbg !2585
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1127, metadata !1151), !dbg !2586
  %481 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 1, !dbg !2587
  %482 = load i32* %481, align 4, !dbg !2587, !tbaa !2590
  %483 = icmp sgt i32 %482, 0, !dbg !2591
  br i1 %483, label %.lr.ph7.i, label %make_chain_identifiers.exit, !dbg !2592

.lr.ph7.i:                                        ; preds = %480
  %484 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 2, !dbg !2593
  %485 = load i32** %484, align 8, !dbg !2593, !tbaa !2595
  %486 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 4, !dbg !2596
  %487 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1, !dbg !2599
  %.pre.i25 = load i32* %485, align 4, !dbg !2600, !tbaa !1469
  %488 = sext i32 %482 to i64
  %489 = add nsw i64 %488, -1, !dbg !2592
  br label %490, !dbg !2592

.loopexit1.i:                                     ; preds = %503, %490
  %exitcond41 = icmp eq i64 %indvars.iv10.i, %489, !dbg !2592
  br i1 %exitcond41, label %508, label %490, !dbg !2592

; <label>:490                                     ; preds = %.loopexit1.i, %.lr.ph7.i
  %491 = phi i32 [ %.pre.i25, %.lr.ph7.i ], [ %493, %.loopexit1.i ], !dbg !2600
  %indvars.iv10.i = phi i64 [ 0, %.lr.ph7.i ], [ %indvars.iv.next11.i, %.loopexit1.i ], !dbg !2601
  %chain.06.i = phi i8 [ 65, %.lr.ph7.i ], [ %chain.1.i, %.loopexit1.i ], !dbg !2601
  tail call void @llvm.dbg.value(metadata i32 %491, i64 0, metadata !1129, metadata !1151), !dbg !2602
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1, !dbg !2592
  %492 = getelementptr inbounds i32* %485, i64 %indvars.iv.next11.i, !dbg !2603
  %493 = load i32* %492, align 4, !dbg !2603, !tbaa !1469
  tail call void @llvm.dbg.value(metadata i32 %493, i64 0, metadata !1130, metadata !1151), !dbg !2604
  %494 = sub nsw i32 %493, %491, !dbg !2605
  %495 = icmp sgt i32 %494, 14, !dbg !2607
  %496 = icmp slt i8 %chain.06.i, 91, !dbg !2608
  %or.cond.i26 = and i1 %496, %495, !dbg !2609
  %c.0.i = select i1 %or.cond.i26, i8 %chain.06.i, i8 32, !dbg !2609
  %497 = zext i1 %or.cond.i26 to i8, !dbg !2609
  %chain.1.i = add i8 %497, %chain.06.i, !dbg !2609
  %498 = icmp sgt i32 %493, %491, !dbg !2610
  br i1 %498, label %.lr.ph4.i27, label %.loopexit1.i, !dbg !2611

.lr.ph4.i27:                                      ; preds = %490
  %499 = load i32** %486, align 8, !dbg !2596, !tbaa !2612
  %500 = load %struct.t_atom** %487, align 8, !dbg !2599, !tbaa !2333
  %501 = sext i32 %491 to i64, !dbg !2601
  %502 = add i32 %493, -1, !dbg !2611
  br label %503, !dbg !2611

; <label>:503                                     ; preds = %503, %.lr.ph4.i27
  %indvars.iv8.i = phi i64 [ %501, %.lr.ph4.i27 ], [ %indvars.iv.next9.i, %503 ], !dbg !2601
  %504 = getelementptr inbounds i32* %499, i64 %indvars.iv8.i, !dbg !2613
  %505 = load i32* %504, align 4, !dbg !2613, !tbaa !1469
  %506 = sext i32 %505 to i64, !dbg !2614
  %507 = getelementptr inbounds %struct.t_atom* %500, i64 %506, i32 9, !dbg !2615
  store i8 %c.0.i, i8* %507, align 1, !dbg !2616, !tbaa !2617
  %indvars.iv.next9.i = add nsw i64 %indvars.iv8.i, 1, !dbg !2611
  %lftr.wideiv.i28 = trunc i64 %indvars.iv8.i to i32, !dbg !2611
  %exitcond.i29 = icmp eq i32 %lftr.wideiv.i28, %502, !dbg !2611
  br i1 %exitcond.i29, label %.loopexit1.i, label %503, !dbg !2611

; <label>:508                                     ; preds = %.loopexit1.i
  %phitmp.i = icmp eq i8 %chain.1.i, 66, !dbg !2592
  br i1 %phitmp.i, label %.preheader.i30, label %make_chain_identifiers.exit, !dbg !2618

.preheader.i30:                                   ; preds = %508
  %509 = getelementptr inbounds %struct.t_atoms* %56, i64 0, i32 0, !dbg !2619
  %510 = load i32* %509, align 4, !dbg !2619, !tbaa !2332
  %511 = icmp sgt i32 %510, 0, !dbg !2623
  br i1 %511, label %.lr.ph.i31, label %make_chain_identifiers.exit, !dbg !2624

.lr.ph.i31:                                       ; preds = %.preheader.i30
  %512 = load %struct.t_atom** %487, align 8, !dbg !2625, !tbaa !2333
  %513 = sext i32 %510 to i64
  %514 = add nsw i64 %513, -1, !dbg !2624
  br label %515, !dbg !2624

; <label>:515                                     ; preds = %515, %.lr.ph.i31
  %indvars.iv.i32 = phi i64 [ 0, %.lr.ph.i31 ], [ %indvars.iv.next.i33, %515 ], !dbg !2601
  %516 = getelementptr inbounds %struct.t_atom* %512, i64 %indvars.iv.i32, i32 9, !dbg !2626
  store i8 32, i8* %516, align 1, !dbg !2627, !tbaa !2617
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i32, 1, !dbg !2624
  %exitcond = icmp eq i64 %indvars.iv.i32, %514, !dbg !2624
  br i1 %exitcond, label %make_chain_identifiers.exit, label %515, !dbg !2624

make_chain_identifiers.exit:                      ; preds = %515, %.preheader.i30, %508, %480, %479
  ret void, !dbg !2628
}

; Function Attrs: optsize
declare void @done_top(%struct.t_topology*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @do_symstr(i8*** nocapture %nm, i32 %bRead, %struct.t_symtab* %symtab) #4 {
  %ls = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8*** %nm, i64 0, metadata !1012, metadata !1151), !dbg !2629
  tail call void @llvm.dbg.value(metadata i32 %bRead, i64 0, metadata !1013, metadata !1151), !dbg !2630
  tail call void @llvm.dbg.value(metadata %struct.t_symtab* %symtab, i64 0, metadata !1014, metadata !1151), !dbg !2631
  %1 = icmp eq i32 %bRead, 0, !dbg !2632
  br i1 %1, label %8, label %2, !dbg !2634

; <label>:2                                       ; preds = %0
  %3 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2635, !tbaa !1331
  %4 = bitcast i32* %ls to i8*, !dbg !2635
  %5 = call i32 %3(i8* %4, i32 1, i32 1, i8* getelementptr inbounds ([3 x i8]* @.str199, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 601) #8, !dbg !2635
  call void @llvm.dbg.value(metadata i32* %ls, i64 0, metadata !1015, metadata !1151), !dbg !2637
  %6 = load i32* %ls, align 4, !dbg !2638, !tbaa !1469
  %7 = call i8** @get_symtab_handle(%struct.t_symtab* %symtab, i32 %6) #8, !dbg !2639
  store i8** %7, i8*** %nm, align 8, !dbg !2640, !tbaa !1331
  br label %14, !dbg !2641

; <label>:8                                       ; preds = %0
  %9 = load i8*** %nm, align 8, !dbg !2642, !tbaa !1331
  %10 = tail call i32 @lookup_symtab(%struct.t_symtab* %symtab, i8** %9) #8, !dbg !2644
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1015, metadata !1151), !dbg !2637
  store i32 %10, i32* %ls, align 4, !dbg !2645, !tbaa !1469
  %11 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2646, !tbaa !1331
  %12 = bitcast i32* %ls to i8*, !dbg !2646
  %13 = call i32 %11(i8* %12, i32 1, i32 1, i8* getelementptr inbounds ([3 x i8]* @.str199, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 606) #8, !dbg !2646
  br label %14, !dbg !2646

; <label>:14                                      ; preds = %8, %2
  ret void, !dbg !2647
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @do_block(%struct.t_block* %block, i32 %bRead) #4 {
  %buf = alloca [128 x i8], align 16
  %buf1 = alloca [128 x i8], align 16
  %buf2 = alloca [128 x i8], align 16
  tail call void @llvm.dbg.value(metadata %struct.t_block* %block, i64 0, metadata !1102, metadata !1151), !dbg !2648
  tail call void @llvm.dbg.value(metadata i32 %bRead, i64 0, metadata !1103, metadata !1151), !dbg !2649
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1105, metadata !1151), !dbg !2650
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1104, metadata !1151), !dbg !2651
  %1 = getelementptr inbounds [128 x i8]* %buf, i64 0, i64 0, !dbg !2652
  %2 = icmp eq i32 %bRead, 0, !dbg !2652
  br label %3, !dbg !2653

; <label>:3                                       ; preds = %21, %0
  %indvars.iv13 = phi i64 [ 0, %0 ], [ %indvars.iv.next14, %21 ]
  %bDum.010 = phi i32 [ 1, %0 ], [ %23, %21 ]
  call void @llvm.lifetime.start(i64 128, i8* %1) #5, !dbg !2652
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf, metadata !1106, metadata !1151), !dbg !2652
  %4 = trunc i64 %indvars.iv13 to i32, !dbg !2652
  %5 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str230, i64 0, i64 0), i32 %4) #8, !dbg !2652
  %6 = icmp eq i32 %bDum.010, 0, !dbg !2652
  br i1 %6, label %21, label %7, !dbg !2652

; <label>:7                                       ; preds = %3
  br i1 %2, label %13, label %8, !dbg !2652

; <label>:8                                       ; preds = %7
  %9 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2652, !tbaa !1331
  %10 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 0, i64 %indvars.iv13, !dbg !2652
  %11 = bitcast i32* %10 to i8*, !dbg !2652
  %12 = call i32 %9(i8* %11, i32 1, i32 1, i8* %1, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 549) #8, !dbg !2652
  br label %18, !dbg !2652

; <label>:13                                      ; preds = %7
  %14 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2652, !tbaa !1331
  %15 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 0, i64 %indvars.iv13, !dbg !2652
  %16 = bitcast i32* %15 to i8*, !dbg !2652
  %17 = call i32 %14(i8* %16, i32 1, i32 1, i8* %1, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 549) #8, !dbg !2652
  br label %18, !dbg !2652

; <label>:18                                      ; preds = %13, %8
  %19 = phi i32 [ %12, %8 ], [ %17, %13 ], !dbg !2652
  %20 = icmp ne i32 %19, 0, !dbg !2652
  br label %21

; <label>:21                                      ; preds = %3, %18
  %22 = phi i1 [ false, %3 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32, !dbg !2652
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !1105, metadata !1151), !dbg !2650
  call void @llvm.lifetime.end(i64 128, i8* %1) #5, !dbg !2654
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1, !dbg !2653
  %exitcond = icmp eq i64 %indvars.iv.next14, 256, !dbg !2653
  br i1 %exitcond, label %24, label %3, !dbg !2653

; <label>:24                                      ; preds = %21
  %25 = icmp ne i32 %bRead, 0, !dbg !2655
  br i1 %25, label %35, label %26, !dbg !2655

; <label>:26                                      ; preds = %24
  %27 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2655, !tbaa !1331
  %28 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1, !dbg !2655
  %29 = bitcast i32* %28 to i8*, !dbg !2655
  %30 = call i32 %27(i8* %29, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str231, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 550) #8, !dbg !2655
  %31 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2656, !tbaa !1331
  %32 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3, !dbg !2656
  %33 = bitcast i32* %32 to i8*, !dbg !2656
  %34 = call i32 %31(i8* %33, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str232, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 551) #8, !dbg !2656
  br label %.preheader3

; <label>:35                                      ; preds = %24
  %36 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2655, !tbaa !1331
  %37 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1, !dbg !2655
  %38 = bitcast i32* %37 to i8*, !dbg !2655
  %39 = call i32 %36(i8* %38, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str231, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 550) #8, !dbg !2655
  %40 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2656, !tbaa !1331
  %41 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3, !dbg !2656
  %42 = bitcast i32* %41 to i8*, !dbg !2656
  %43 = call i32 %40(i8* %42, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str232, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 551) #8, !dbg !2656
  %44 = load i32* %37, align 4, !dbg !2657, !tbaa !2590
  %45 = add nsw i32 %44, 1, !dbg !2657
  %46 = call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str233, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 553, i32 %45, i32 4) #8, !dbg !2657
  %47 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 2, !dbg !2657
  %48 = bitcast i32** %47 to i8**, !dbg !2657
  store i8* %46, i8** %48, align 8, !dbg !2657, !tbaa !2595
  %49 = load i32* %41, align 4, !dbg !2660, !tbaa !2661
  %50 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str234, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 554, i32 %49, i32 4) #8, !dbg !2660
  %51 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4, !dbg !2660
  %52 = bitcast i32** %51 to i8**, !dbg !2660
  store i8* %50, i8** %52, align 8, !dbg !2660, !tbaa !2612
  br label %.preheader3, !dbg !2662

.preheader3:                                      ; preds = %35, %26
  %.pre-phi = phi i32* [ %37, %35 ], [ %28, %26 ], !dbg !2663
  %53 = load i32* %.pre-phi, align 4, !dbg !2663, !tbaa !2590
  %54 = icmp sgt i32 %53, -1, !dbg !2663
  br i1 %54, label %.lr.ph8, label %.preheader, !dbg !2664

.lr.ph8:                                          ; preds = %.preheader3
  %55 = getelementptr inbounds [128 x i8]* %buf1, i64 0, i64 0, !dbg !2665
  %56 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 2, !dbg !2665
  br label %62, !dbg !2664

.preheader:                                       ; preds = %82, %.preheader3
  %57 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3, !dbg !2666
  %58 = load i32* %57, align 4, !dbg !2666, !tbaa !2661
  %59 = icmp sgt i32 %58, 0, !dbg !2666
  br i1 %59, label %.lr.ph, label %._crit_edge, !dbg !2667

.lr.ph:                                           ; preds = %.preheader
  %60 = getelementptr inbounds [128 x i8]* %buf2, i64 0, i64 0, !dbg !2668
  %61 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4, !dbg !2668
  br label %88, !dbg !2667

; <label>:62                                      ; preds = %.lr.ph8, %82
  %indvars.iv11 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next12, %82 ]
  %bDum.17 = phi i32 [ 1, %.lr.ph8 ], [ %84, %82 ]
  call void @llvm.lifetime.start(i64 128, i8* %55) #5, !dbg !2665
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf1, metadata !1111, metadata !1151), !dbg !2665
  %63 = trunc i64 %indvars.iv11 to i32, !dbg !2665
  %64 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %55, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str233, i64 0, i64 0), i32 %63) #8, !dbg !2665
  %65 = icmp eq i32 %bDum.17, 0, !dbg !2665
  br i1 %65, label %82, label %66, !dbg !2665

; <label>:66                                      ; preds = %62
  br i1 %25, label %67, label %73, !dbg !2665

; <label>:67                                      ; preds = %66
  %68 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2665, !tbaa !1331
  %69 = load i32** %56, align 8, !dbg !2665, !tbaa !2595
  %70 = getelementptr inbounds i32* %69, i64 %indvars.iv11, !dbg !2665
  %71 = bitcast i32* %70 to i8*, !dbg !2665
  %72 = call i32 %68(i8* %71, i32 1, i32 1, i8* %55, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 556) #8, !dbg !2665
  br label %79, !dbg !2665

; <label>:73                                      ; preds = %66
  %74 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2665, !tbaa !1331
  %75 = load i32** %56, align 8, !dbg !2665, !tbaa !2595
  %76 = getelementptr inbounds i32* %75, i64 %indvars.iv11, !dbg !2665
  %77 = bitcast i32* %76 to i8*, !dbg !2665
  %78 = call i32 %74(i8* %77, i32 1, i32 1, i8* %55, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 556) #8, !dbg !2665
  br label %79, !dbg !2665

; <label>:79                                      ; preds = %73, %67
  %80 = phi i32 [ %72, %67 ], [ %78, %73 ], !dbg !2665
  %81 = icmp ne i32 %80, 0, !dbg !2665
  br label %82

; <label>:82                                      ; preds = %62, %79
  %83 = phi i1 [ false, %62 ], [ %81, %79 ]
  %84 = zext i1 %83 to i32, !dbg !2665
  call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !1105, metadata !1151), !dbg !2650
  call void @llvm.lifetime.end(i64 128, i8* %55) #5, !dbg !2663
  %indvars.iv.next12 = add nuw i64 %indvars.iv11, 1, !dbg !2664
  %85 = load i32* %.pre-phi, align 4, !dbg !2663, !tbaa !2590
  %86 = sext i32 %85 to i64, !dbg !2663
  %87 = icmp slt i64 %indvars.iv11, %86, !dbg !2663
  br i1 %87, label %62, label %.preheader, !dbg !2664

; <label>:88                                      ; preds = %.lr.ph, %108
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %108 ]
  %bDum.25 = phi i32 [ 1, %.lr.ph ], [ %110, %108 ]
  call void @llvm.lifetime.start(i64 128, i8* %60) #5, !dbg !2668
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf2, metadata !1116, metadata !1151), !dbg !2668
  %89 = trunc i64 %indvars.iv to i32, !dbg !2668
  %90 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %60, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str234, i64 0, i64 0), i32 %89) #8, !dbg !2668
  %91 = icmp eq i32 %bDum.25, 0, !dbg !2668
  br i1 %91, label %108, label %92, !dbg !2668

; <label>:92                                      ; preds = %88
  br i1 %25, label %93, label %99, !dbg !2668

; <label>:93                                      ; preds = %92
  %94 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !2668, !tbaa !1331
  %95 = load i32** %61, align 8, !dbg !2668, !tbaa !2612
  %96 = getelementptr inbounds i32* %95, i64 %indvars.iv, !dbg !2668
  %97 = bitcast i32* %96 to i8*, !dbg !2668
  %98 = call i32 %94(i8* %97, i32 1, i32 1, i8* %60, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 557) #8, !dbg !2668
  br label %105, !dbg !2668

; <label>:99                                      ; preds = %92
  %100 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !2668, !tbaa !1331
  %101 = load i32** %61, align 8, !dbg !2668, !tbaa !2612
  %102 = getelementptr inbounds i32* %101, i64 %indvars.iv, !dbg !2668
  %103 = bitcast i32* %102 to i8*, !dbg !2668
  %104 = call i32 %100(i8* %103, i32 1, i32 1, i8* %60, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 557) #8, !dbg !2668
  br label %105, !dbg !2668

; <label>:105                                     ; preds = %99, %93
  %106 = phi i32 [ %98, %93 ], [ %104, %99 ], !dbg !2668
  %107 = icmp ne i32 %106, 0, !dbg !2668
  br label %108

; <label>:108                                     ; preds = %88, %105
  %109 = phi i1 [ false, %88 ], [ %107, %105 ]
  %110 = zext i1 %109 to i32, !dbg !2668
  call void @llvm.dbg.value(metadata i32 %110, i64 0, metadata !1105, metadata !1151), !dbg !2650
  call void @llvm.lifetime.end(i64 128, i8* %60) #5, !dbg !2666
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2667
  %111 = load i32* %57, align 4, !dbg !2666, !tbaa !2661
  %112 = sext i32 %111 to i64, !dbg !2666
  %113 = icmp slt i64 %indvars.iv.next, %112, !dbg !2666
  br i1 %113, label %88, label %._crit_edge, !dbg !2667

._crit_edge:                                      ; preds = %108, %.preheader
  ret void, !dbg !2669
}

; Function Attrs: optsize
declare void @close_symtab(%struct.t_symtab*) #2

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #6

; Function Attrs: optsize
declare i8** @get_symtab_handle(%struct.t_symtab*, i32) #2

; Function Attrs: optsize
declare i32 @lookup_symtab(%struct.t_symtab*, i8**) #2

; Function Attrs: optsize
declare i8** @put_symtab(%struct.t_symtab*, i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize }
attributes #9 = { readnone }
attributes #10 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1147, !1148, !1149}
!llvm.ident = !{!1150}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !177, subprograms: !181, globals: !1133, imports: !1146)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/tpxio.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3, !53, !65, !75, !81, !86, !93, !100, !105, !110, !116, !129}
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
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !54, line: 52, size: 32, align: 32, elements: !55)
!54 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/gmxfio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!55 = !{!56, !57, !58, !59, !60, !61, !62, !63, !64}
!56 = !DIEnumerator(name: "eioREAL", value: 0)
!57 = !DIEnumerator(name: "eioINT", value: 1)
!58 = !DIEnumerator(name: "eioNUCHAR", value: 2)
!59 = !DIEnumerator(name: "eioUSHORT", value: 3)
!60 = !DIEnumerator(name: "eioRVEC", value: 4)
!61 = !DIEnumerator(name: "eioNRVEC", value: 5)
!62 = !DIEnumerator(name: "eioIVEC", value: 6)
!63 = !DIEnumerator(name: "eioSTRING", value: 7)
!64 = !DIEnumerator(name: "eioNR", value: 8)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !54, line: 48, size: 32, align: 32, elements: !66)
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74}
!67 = !DIEnumerator(name: "eitemHEADER", value: 0)
!68 = !DIEnumerator(name: "eitemIR", value: 1)
!69 = !DIEnumerator(name: "eitemBOX", value: 2)
!70 = !DIEnumerator(name: "eitemTOP", value: 3)
!71 = !DIEnumerator(name: "eitemX", value: 4)
!72 = !DIEnumerator(name: "eitemV", value: 5)
!73 = !DIEnumerator(name: "eitemF", value: 6)
!74 = !DIEnumerator(name: "eitemNR", value: 7)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !76, line: 42, size: 32, align: 32, elements: !77)
!76 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/enums.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!77 = !{!78, !79, !80}
!78 = !DIEnumerator(name: "epbcXYZ", value: 0)
!79 = !DIEnumerator(name: "epbcNONE", value: 1)
!80 = !DIEnumerator(name: "epbcNR", value: 2)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !76, line: 65, size: 32, align: 32, elements: !82)
!82 = !{!83, !84, !85}
!83 = !DIEnumerator(name: "eewg3D", value: 0)
!84 = !DIEnumerator(name: "eewg3DC", value: 1)
!85 = !DIEnumerator(name: "eewgNR", value: 2)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !76, line: 54, size: 32, align: 32, elements: !87)
!87 = !{!88, !89, !90, !91, !92}
!88 = !DIEnumerator(name: "epctISOTROPIC", value: 0)
!89 = !DIEnumerator(name: "epctSEMIISOTROPIC", value: 1)
!90 = !DIEnumerator(name: "epctANISOTROPIC", value: 2)
!91 = !DIEnumerator(name: "epctSURFACETENSION", value: 3)
!92 = !DIEnumerator(name: "epctNR", value: 4)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !76, line: 50, size: 32, align: 32, elements: !94)
!94 = !{!95, !96, !97, !98, !99}
!95 = !DIEnumerator(name: "epcNO", value: 0)
!96 = !DIEnumerator(name: "epcBERENDSEN", value: 1)
!97 = !DIEnumerator(name: "epcPARRINELLORAHMAN", value: 2)
!98 = !DIEnumerator(name: "epcISOTROPIC", value: 3)
!99 = !DIEnumerator(name: "epcNR", value: 4)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !76, line: 106, size: 32, align: 32, elements: !101)
!101 = !{!102, !103, !104}
!102 = !DIEnumerator(name: "efepNO", value: 0)
!103 = !DIEnumerator(name: "efepYES", value: 1)
!104 = !DIEnumerator(name: "efepNR", value: 2)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !76, line: 91, size: 32, align: 32, elements: !106)
!106 = !{!107, !108, !109}
!107 = !DIEnumerator(name: "edrwConservative", value: 0)
!108 = !DIEnumerator(name: "edrwEqual", value: 1)
!109 = !DIEnumerator(name: "edrwNR", value: 2)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !76, line: 38, size: 32, align: 32, elements: !111)
!111 = !{!112, !113, !114, !115}
!112 = !DIEnumerator(name: "ebCGS", value: 0)
!113 = !DIEnumerator(name: "ebMOLS", value: 1)
!114 = !DIEnumerator(name: "ebSBLOCKS", value: 2)
!115 = !DIEnumerator(name: "ebNR", value: 3)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !117, line: 41, size: 32, align: 32, elements: !118)
!117 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/atoms.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!118 = !{!119, !120, !121, !122, !123, !124, !125, !126, !127, !128}
!119 = !DIEnumerator(name: "egcTC", value: 0)
!120 = !DIEnumerator(name: "egcENER", value: 1)
!121 = !DIEnumerator(name: "egcACC", value: 2)
!122 = !DIEnumerator(name: "egcFREEZE", value: 3)
!123 = !DIEnumerator(name: "egcUser1", value: 4)
!124 = !DIEnumerator(name: "egcUser2", value: 5)
!125 = !DIEnumerator(name: "egcVCM", value: 6)
!126 = !DIEnumerator(name: "egcXTC", value: 7)
!127 = !DIEnumerator(name: "egcORFIT", value: 8)
!128 = !DIEnumerator(name: "egcNR", value: 9)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !130, line: 49, size: 32, align: 32, elements: !131)
!130 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/idef.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176}
!132 = !DIEnumerator(name: "F_BONDS", value: 0)
!133 = !DIEnumerator(name: "F_G96BONDS", value: 1)
!134 = !DIEnumerator(name: "F_MORSE", value: 2)
!135 = !DIEnumerator(name: "F_CUBICBONDS", value: 3)
!136 = !DIEnumerator(name: "F_CONNBONDS", value: 4)
!137 = !DIEnumerator(name: "F_HARMONIC", value: 5)
!138 = !DIEnumerator(name: "F_ANGLES", value: 6)
!139 = !DIEnumerator(name: "F_G96ANGLES", value: 7)
!140 = !DIEnumerator(name: "F_PDIHS", value: 8)
!141 = !DIEnumerator(name: "F_RBDIHS", value: 9)
!142 = !DIEnumerator(name: "F_IDIHS", value: 10)
!143 = !DIEnumerator(name: "F_LJ14", value: 11)
!144 = !DIEnumerator(name: "F_COUL14", value: 12)
!145 = !DIEnumerator(name: "F_LJ", value: 13)
!146 = !DIEnumerator(name: "F_BHAM", value: 14)
!147 = !DIEnumerator(name: "F_LJLR", value: 15)
!148 = !DIEnumerator(name: "F_DISPCORR", value: 16)
!149 = !DIEnumerator(name: "F_SR", value: 17)
!150 = !DIEnumerator(name: "F_LR", value: 18)
!151 = !DIEnumerator(name: "F_WPOL", value: 19)
!152 = !DIEnumerator(name: "F_POSRES", value: 20)
!153 = !DIEnumerator(name: "F_DISRES", value: 21)
!154 = !DIEnumerator(name: "F_DISRESVIOL", value: 22)
!155 = !DIEnumerator(name: "F_ORIRES", value: 23)
!156 = !DIEnumerator(name: "F_ORIRESDEV", value: 24)
!157 = !DIEnumerator(name: "F_ANGRES", value: 25)
!158 = !DIEnumerator(name: "F_ANGRESZ", value: 26)
!159 = !DIEnumerator(name: "F_SHAKE", value: 27)
!160 = !DIEnumerator(name: "F_SHAKENC", value: 28)
!161 = !DIEnumerator(name: "F_SETTLE", value: 29)
!162 = !DIEnumerator(name: "F_DUMMY2", value: 30)
!163 = !DIEnumerator(name: "F_DUMMY3", value: 31)
!164 = !DIEnumerator(name: "F_DUMMY3FD", value: 32)
!165 = !DIEnumerator(name: "F_DUMMY3FAD", value: 33)
!166 = !DIEnumerator(name: "F_DUMMY3OUT", value: 34)
!167 = !DIEnumerator(name: "F_DUMMY4FD", value: 35)
!168 = !DIEnumerator(name: "F_EQM", value: 36)
!169 = !DIEnumerator(name: "F_EPOT", value: 37)
!170 = !DIEnumerator(name: "F_EKIN", value: 38)
!171 = !DIEnumerator(name: "F_ETOT", value: 39)
!172 = !DIEnumerator(name: "F_TEMP", value: 40)
!173 = !DIEnumerator(name: "F_PRES", value: 41)
!174 = !DIEnumerator(name: "F_DVDL", value: 42)
!175 = !DIEnumerator(name: "F_DVDLKIN", value: 43)
!176 = !DIEnumerator(name: "F_NRE", value: 44)
!177 = !{!178, !179, !180}
!178 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!179 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!181 = !{!182, !249, !255, !262, !268, !274, !277, !280, !283, !286, !289, !292, !301, !310, !323, !326, !329, !332, !346, !360, !366, !372, !386, !519, !525, !530, !552, !800, !816, !831, !846, !851, !872, !878, !888, !907, !982, !990, !997, !1008, !1016, !1025, !1032, !1041, !1060, !1077, !1097, !1121}
!182 = !DISubprogram(name: "__sputc", scope: !183, file: !183, line: 348, type: !184, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !246)
!183 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!184 = !DISubroutineType(types: !185)
!185 = !{!179, !179, !186}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !183, line: 153, baseType: !188)
!188 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !183, line: 122, size: 1216, align: 64, elements: !189)
!189 = !{!190, !193, !194, !195, !197, !198, !203, !204, !205, !209, !214, !224, !230, !231, !234, !235, !239, !243, !244, !245}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !188, file: !183, line: 123, baseType: !191, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !188, file: !183, line: 124, baseType: !179, size: 32, align: 32, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !188, file: !183, line: 125, baseType: !179, size: 32, align: 32, offset: 96)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !188, file: !183, line: 126, baseType: !196, size: 16, align: 16, offset: 128)
!196 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !188, file: !183, line: 127, baseType: !196, size: 16, align: 16, offset: 144)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !188, file: !183, line: 128, baseType: !199, size: 128, align: 64, offset: 192)
!199 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !183, line: 88, size: 128, align: 64, elements: !200)
!200 = !{!201, !202}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !199, file: !183, line: 89, baseType: !191, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !199, file: !183, line: 90, baseType: !179, size: 32, align: 32, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !188, file: !183, line: 129, baseType: !179, size: 32, align: 32, offset: 320)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !188, file: !183, line: 132, baseType: !180, size: 64, align: 64, offset: 384)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !188, file: !183, line: 133, baseType: !206, size: 64, align: 64, offset: 448)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!179, !180}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !188, file: !183, line: 134, baseType: !210, size: 64, align: 64, offset: 512)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!179, !180, !213, !179}
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !188, file: !183, line: 135, baseType: !215, size: 64, align: 64, offset: 576)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !180, !218, !179}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !183, line: 77, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !220, line: 71, baseType: !221)
!220 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !222, line: 46, baseType: !223)
!222 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!223 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !188, file: !183, line: 136, baseType: !225, size: 64, align: 64, offset: 640)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!179, !180, !228, !179}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !188, file: !183, line: 139, baseType: !199, size: 128, align: 64, offset: 704)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !188, file: !183, line: 140, baseType: !232, size: 64, align: 64, offset: 832)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !183, line: 94, flags: DIFlagFwdDecl)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !188, file: !183, line: 141, baseType: !179, size: 32, align: 32, offset: 896)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !188, file: !183, line: 144, baseType: !236, size: 24, align: 8, offset: 928)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 24, align: 8, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 3)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !188, file: !183, line: 145, baseType: !240, size: 8, align: 8, offset: 952)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 8, align: 8, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 1)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !188, file: !183, line: 148, baseType: !199, size: 128, align: 64, offset: 960)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !188, file: !183, line: 151, baseType: !179, size: 32, align: 32, offset: 1088)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !188, file: !183, line: 152, baseType: !218, size: 64, align: 64, offset: 1152)
!246 = !{!247, !248}
!247 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !182, file: !183, line: 348, type: !179)
!248 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !182, file: !183, line: 348, type: !186)
!249 = !DISubprogram(name: "__sigbits", scope: !250, file: !250, line: 114, type: !251, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !253)
!250 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!251 = !DISubroutineType(types: !252)
!252 = !{!179, !179}
!253 = !{!254}
!254 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !249, file: !250, line: 114, type: !179)
!255 = !DISubprogram(name: "__inline_isfinitef", scope: !256, file: !256, line: 204, type: !257, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isfinitef, variables: !260)
!256 = !DIFile(filename: "/usr/include/math.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!257 = !DISubroutineType(types: !258)
!258 = !{!179, !259}
!259 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!260 = !{!261}
!261 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !255, file: !256, line: 204, type: !259)
!262 = !DISubprogram(name: "__inline_isfinited", scope: !256, file: !256, line: 207, type: !263, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isfinited, variables: !266)
!263 = !DISubroutineType(types: !264)
!264 = !{!179, !265}
!265 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!266 = !{!267}
!267 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !262, file: !256, line: 207, type: !265)
!268 = !DISubprogram(name: "__inline_isfinitel", scope: !256, file: !256, line: 210, type: !269, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isfinitel, variables: !272)
!269 = !DISubroutineType(types: !270)
!270 = !{!179, !271}
!271 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!272 = !{!273}
!273 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !268, file: !256, line: 210, type: !271)
!274 = !DISubprogram(name: "__inline_isinff", scope: !256, file: !256, line: 213, type: !257, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isinff, variables: !275)
!275 = !{!276}
!276 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !274, file: !256, line: 213, type: !259)
!277 = !DISubprogram(name: "__inline_isinfd", scope: !256, file: !256, line: 216, type: !263, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isinfd, variables: !278)
!278 = !{!279}
!279 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !277, file: !256, line: 216, type: !265)
!280 = !DISubprogram(name: "__inline_isinfl", scope: !256, file: !256, line: 219, type: !269, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isinfl, variables: !281)
!281 = !{!282}
!282 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !280, file: !256, line: 219, type: !271)
!283 = !DISubprogram(name: "__inline_isnanf", scope: !256, file: !256, line: 222, type: !257, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnanf, variables: !284)
!284 = !{!285}
!285 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !283, file: !256, line: 222, type: !259)
!286 = !DISubprogram(name: "__inline_isnand", scope: !256, file: !256, line: 225, type: !263, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnand, variables: !287)
!287 = !{!288}
!288 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !286, file: !256, line: 225, type: !265)
!289 = !DISubprogram(name: "__inline_isnanl", scope: !256, file: !256, line: 228, type: !269, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnanl, variables: !290)
!290 = !{!291}
!291 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !289, file: !256, line: 228, type: !271)
!292 = !DISubprogram(name: "__inline_signbitf", scope: !256, file: !256, line: 231, type: !257, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_signbitf, variables: !293)
!293 = !{!294, !295}
!294 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !292, file: !256, line: 231, type: !259)
!295 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !292, file: !256, line: 232, type: !296)
!296 = !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !256, line: 232, size: 32, align: 32, elements: !297)
!297 = !{!298, !299}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !296, file: !256, line: 232, baseType: !259, size: 32, align: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !296, file: !256, line: 232, baseType: !300, size: 32, align: 32)
!300 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!301 = !DISubprogram(name: "__inline_signbitd", scope: !256, file: !256, line: 236, type: !263, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_signbitd, variables: !302)
!302 = !{!303, !304}
!303 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !301, file: !256, line: 236, type: !265)
!304 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !301, file: !256, line: 237, type: !305)
!305 = !DICompositeType(tag: DW_TAG_union_type, scope: !301, file: !256, line: 237, size: 64, align: 64, elements: !306)
!306 = !{!307, !308}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !305, file: !256, line: 237, baseType: !265, size: 64, align: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !305, file: !256, line: 237, baseType: !309, size: 64, align: 64)
!309 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!310 = !DISubprogram(name: "__inline_signbitl", scope: !256, file: !256, line: 242, type: !269, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_signbitl, variables: !311)
!311 = !{!312, !313}
!312 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !310, file: !256, line: 242, type: !271)
!313 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !310, file: !256, line: 246, type: !314)
!314 = !DICompositeType(tag: DW_TAG_union_type, scope: !310, file: !256, line: 243, size: 128, align: 128, elements: !315)
!315 = !{!316, !317}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "__ld", scope: !314, file: !256, line: 244, baseType: !271, size: 128, align: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "__p", scope: !314, file: !256, line: 245, baseType: !318, size: 128, align: 64)
!318 = !DICompositeType(tag: DW_TAG_structure_type, scope: !314, file: !256, line: 245, size: 128, align: 64, elements: !319)
!319 = !{!320, !321}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "__m", scope: !318, file: !256, line: 245, baseType: !309, size: 64, align: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "__sexp", scope: !318, file: !256, line: 245, baseType: !322, size: 16, align: 16, offset: 64)
!322 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!323 = !DISubprogram(name: "__inline_isnormalf", scope: !256, file: !256, line: 257, type: !257, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnormalf, variables: !324)
!324 = !{!325}
!325 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !323, file: !256, line: 257, type: !259)
!326 = !DISubprogram(name: "__inline_isnormald", scope: !256, file: !256, line: 260, type: !263, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnormald, variables: !327)
!327 = !{!328}
!328 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !326, file: !256, line: 260, type: !265)
!329 = !DISubprogram(name: "__inline_isnormall", scope: !256, file: !256, line: 263, type: !269, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnormall, variables: !330)
!330 = !{!331}
!331 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !329, file: !256, line: 263, type: !271)
!332 = !DISubprogram(name: "__sincosf", scope: !256, file: !256, line: 642, type: !333, isLocal: false, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincosf, variables: !336)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !259, !335, !335}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!336 = !{!337, !338, !339, !340}
!337 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !332, file: !256, line: 642, type: !259)
!338 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !332, file: !256, line: 642, type: !335)
!339 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !332, file: !256, line: 642, type: !335)
!340 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !332, file: !256, line: 643, type: !341)
!341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !342)
!342 = !DICompositeType(tag: DW_TAG_structure_type, name: "__float2", file: !256, line: 634, size: 64, align: 32, elements: !343)
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !342, file: !256, line: 634, baseType: !259, size: 32, align: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !342, file: !256, line: 634, baseType: !259, size: 32, align: 32, offset: 32)
!346 = !DISubprogram(name: "__sincos", scope: !256, file: !256, line: 647, type: !347, isLocal: false, isDefinition: true, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincos, variables: !350)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !265, !349, !349}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!350 = !{!351, !352, !353, !354}
!351 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !346, file: !256, line: 647, type: !265)
!352 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !346, file: !256, line: 647, type: !349)
!353 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !346, file: !256, line: 647, type: !349)
!354 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !346, file: !256, line: 648, type: !355)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!356 = !DICompositeType(tag: DW_TAG_structure_type, name: "__double2", file: !256, line: 635, size: 128, align: 64, elements: !357)
!357 = !{!358, !359}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !356, file: !256, line: 635, baseType: !265, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !356, file: !256, line: 635, baseType: !265, size: 64, align: 64, offset: 64)
!360 = !DISubprogram(name: "__sincospif", scope: !256, file: !256, line: 652, type: !333, isLocal: false, isDefinition: true, scopeLine: 652, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincospif, variables: !361)
!361 = !{!362, !363, !364, !365}
!362 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !360, file: !256, line: 652, type: !259)
!363 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !360, file: !256, line: 652, type: !335)
!364 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !360, file: !256, line: 652, type: !335)
!365 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !360, file: !256, line: 653, type: !341)
!366 = !DISubprogram(name: "__sincospi", scope: !256, file: !256, line: 657, type: !347, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincospi, variables: !367)
!367 = !{!368, !369, !370, !371}
!368 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !366, file: !256, line: 657, type: !265)
!369 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !366, file: !256, line: 657, type: !349)
!370 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !366, file: !256, line: 657, type: !349)
!371 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !366, file: !256, line: 658, type: !355)
!372 = !DISubprogram(name: "_do_section", scope: !1, file: !1, line: 81, type: !373, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, i32, i8*, i32)* @_do_section, variables: !375)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !179, !179, !179, !213, !179}
!375 = !{!376, !377, !378, !379, !380, !381, !385}
!376 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !372, file: !1, line: 81, type: !179)
!377 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !372, file: !1, line: 81, type: !179)
!378 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bRead", arg: 3, scope: !372, file: !1, line: 81, type: !179)
!379 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 4, scope: !372, file: !1, line: 81, type: !213)
!380 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 5, scope: !372, file: !1, line: 81, type: !179)
!381 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !372, file: !1, line: 83, type: !382)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 32768, align: 8, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 4096)
!385 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bDbg", scope: !372, file: !1, line: 84, type: !179)
!386 = !DISubprogram(name: "do_iparams", scope: !1, file: !1, line: 374, type: !387, isLocal: false, isDefinition: true, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, %union.t_iparams*, i32)* @do_iparams, variables: !504)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !389, !390, !179}
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_functype", file: !130, line: 133, baseType: !179)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_iparams", file: !130, line: 131, baseType: !392)
!392 = !DICompositeType(tag: DW_TAG_union_type, file: !130, line: 97, size: 192, align: 32, elements: !393)
!393 = !{!394, !402, !409, !415, !424, !429, !436, !444, !449, !454, !460, !466, !473, !482, !491, !500}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "bham", scope: !392, file: !130, line: 105, baseType: !395, size: 96, align: 32)
!395 = !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !130, line: 105, size: 96, align: 32, elements: !396)
!396 = !{!397, !400, !401}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !395, file: !130, line: 105, baseType: !398, size: 32, align: 32)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !399, line: 87, baseType: !259)
!399 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!400 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !395, file: !130, line: 105, baseType: !398, size: 32, align: 32, offset: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !395, file: !130, line: 105, baseType: !398, size: 32, align: 32, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "harmonic", scope: !392, file: !130, line: 106, baseType: !403, size: 128, align: 32)
!403 = !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !130, line: 106, size: 128, align: 32, elements: !404)
!404 = !{!405, !406, !407, !408}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "rA", scope: !403, file: !130, line: 106, baseType: !398, size: 32, align: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "krA", scope: !403, file: !130, line: 106, baseType: !398, size: 32, align: 32, offset: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "rB", scope: !403, file: !130, line: 106, baseType: !398, size: 32, align: 32, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "krB", scope: !403, file: !130, line: 106, baseType: !398, size: 32, align: 32, offset: 96)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "cubic", scope: !392, file: !130, line: 108, baseType: !410, size: 96, align: 32)
!410 = !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !130, line: 108, size: 96, align: 32, elements: !411)
!411 = !{!412, !413, !414}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "b0", scope: !410, file: !130, line: 108, baseType: !398, size: 32, align: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "kb", scope: !410, file: !130, line: 108, baseType: !398, size: 32, align: 32, offset: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "kcub", scope: !410, file: !130, line: 108, baseType: !398, size: 32, align: 32, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "wpol", scope: !392, file: !130, line: 110, baseType: !416, size: 192, align: 32)
!416 = !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !130, line: 110, size: 192, align: 32, elements: !417)
!417 = !{!418, !419, !420, !421, !422, !423}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "kx", scope: !416, file: !130, line: 110, baseType: !398, size: 32, align: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "ky", scope: !416, file: !130, line: 110, baseType: !398, size: 32, align: 32, offset: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "kz", scope: !416, file: !130, line: 110, baseType: !398, size: 32, align: 32, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "rOH", scope: !416, file: !130, line: 110, baseType: !398, size: 32, align: 32, offset: 96)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "rHH", scope: !416, file: !130, line: 110, baseType: !398, size: 32, align: 32, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "rOD", scope: !416, file: !130, line: 110, baseType: !398, size: 32, align: 32, offset: 160)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "lj", scope: !392, file: !130, line: 111, baseType: !425, size: 64, align: 32)
!425 = !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !130, line: 111, size: 64, align: 32, elements: !426)
!426 = !{!427, !428}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "c6", scope: !425, file: !130, line: 111, baseType: !398, size: 32, align: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "c12", scope: !425, file: !130, line: 111, baseType: !398, size: 32, align: 32, offset: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "lj14", scope: !392, file: !130, line: 112, baseType: !430, size: 128, align: 32)
!430 = !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !130, line: 112, size: 128, align: 32, elements: !431)
!431 = !{!432, !433, !434, !435}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "c6A", scope: !430, file: !130, line: 112, baseType: !398, size: 32, align: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "c12A", scope: !430, file: !130, line: 112, baseType: !398, size: 32, align: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "c6B", scope: !430, file: !130, line: 112, baseType: !398, size: 32, align: 32, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "c12B", scope: !430, file: !130, line: 112, baseType: !398, size: 32, align: 32, offset: 96)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "pdihs", scope: !392, file: !130, line: 117, baseType: !437, size: 160, align: 32)
!437 = !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !130, line: 117, size: 160, align: 32, elements: !438)
!438 = !{!439, !440, !441, !442, !443}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "phiA", scope: !437, file: !130, line: 117, baseType: !398, size: 32, align: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "cpA", scope: !437, file: !130, line: 117, baseType: !398, size: 32, align: 32, offset: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !437, file: !130, line: 117, baseType: !179, size: 32, align: 32, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "phiB", scope: !437, file: !130, line: 117, baseType: !398, size: 32, align: 32, offset: 96)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "cpB", scope: !437, file: !130, line: 117, baseType: !398, size: 32, align: 32, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "shake", scope: !392, file: !130, line: 118, baseType: !445, size: 64, align: 32)
!445 = !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !130, line: 118, size: 64, align: 32, elements: !446)
!446 = !{!447, !448}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "dA", scope: !445, file: !130, line: 118, baseType: !398, size: 32, align: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "dB", scope: !445, file: !130, line: 118, baseType: !398, size: 32, align: 32, offset: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "settle", scope: !392, file: !130, line: 123, baseType: !450, size: 64, align: 32)
!450 = !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !130, line: 123, size: 64, align: 32, elements: !451)
!451 = !{!452, !453}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "doh", scope: !450, file: !130, line: 123, baseType: !398, size: 32, align: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "dhh", scope: !450, file: !130, line: 123, baseType: !398, size: 32, align: 32, offset: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "morse", scope: !392, file: !130, line: 124, baseType: !455, size: 96, align: 32)
!455 = !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !130, line: 124, size: 96, align: 32, elements: !456)
!456 = !{!457, !458, !459}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "b0", scope: !455, file: !130, line: 124, baseType: !398, size: 32, align: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !455, file: !130, line: 124, baseType: !398, size: 32, align: 32, offset: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "beta", scope: !455, file: !130, line: 124, baseType: !398, size: 32, align: 32, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "posres", scope: !392, file: !130, line: 125, baseType: !461, size: 192, align: 32)
!461 = !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !130, line: 125, size: 192, align: 32, elements: !462)
!462 = !{!463, !465}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "pos0", scope: !461, file: !130, line: 125, baseType: !464, size: 96, align: 32)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 96, align: 32, elements: !237)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "fc", scope: !461, file: !130, line: 125, baseType: !464, size: 96, align: 32, offset: 96)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "rbdihs", scope: !392, file: !130, line: 126, baseType: !467, size: 192, align: 32)
!467 = !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !130, line: 126, size: 192, align: 32, elements: !468)
!468 = !{!469}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "rbc", scope: !467, file: !130, line: 126, baseType: !470, size: 192, align: 32)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 192, align: 32, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 6)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !392, file: !130, line: 127, baseType: !474, size: 192, align: 32)
!474 = !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !130, line: 127, size: 192, align: 32, elements: !475)
!475 = !{!476, !477, !478, !479, !480, !481}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !474, file: !130, line: 127, baseType: !398, size: 32, align: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !474, file: !130, line: 127, baseType: !398, size: 32, align: 32, offset: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !474, file: !130, line: 127, baseType: !398, size: 32, align: 32, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !474, file: !130, line: 127, baseType: !398, size: 32, align: 32, offset: 96)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !474, file: !130, line: 127, baseType: !398, size: 32, align: 32, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !474, file: !130, line: 127, baseType: !398, size: 32, align: 32, offset: 160)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "disres", scope: !392, file: !130, line: 128, baseType: !483, size: 192, align: 32)
!483 = !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !130, line: 128, size: 192, align: 32, elements: !484)
!484 = !{!485, !486, !487, !488, !489, !490}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !483, file: !130, line: 128, baseType: !398, size: 32, align: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "up1", scope: !483, file: !130, line: 128, baseType: !398, size: 32, align: 32, offset: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "up2", scope: !483, file: !130, line: 128, baseType: !398, size: 32, align: 32, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "kfac", scope: !483, file: !130, line: 128, baseType: !398, size: 32, align: 32, offset: 96)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !483, file: !130, line: 128, baseType: !179, size: 32, align: 32, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !483, file: !130, line: 128, baseType: !179, size: 32, align: 32, offset: 160)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "orires", scope: !392, file: !130, line: 129, baseType: !492, size: 192, align: 32)
!492 = !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !130, line: 129, size: 192, align: 32, elements: !493)
!493 = !{!494, !495, !496, !497, !498, !499}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ex", scope: !492, file: !130, line: 129, baseType: !179, size: 32, align: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "pow", scope: !492, file: !130, line: 129, baseType: !179, size: 32, align: 32, offset: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !492, file: !130, line: 129, baseType: !179, size: 32, align: 32, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !492, file: !130, line: 129, baseType: !398, size: 32, align: 32, offset: 96)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "obs", scope: !492, file: !130, line: 129, baseType: !398, size: 32, align: 32, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "kfac", scope: !492, file: !130, line: 129, baseType: !398, size: 32, align: 32, offset: 160)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "generic", scope: !392, file: !130, line: 130, baseType: !501, size: 192, align: 32)
!501 = !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !130, line: 130, size: 192, align: 32, elements: !502)
!502 = !{!503}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !501, file: !130, line: 130, baseType: !470, size: 192, align: 32)
!504 = !{!505, !506, !507, !508, !509, !510}
!505 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ftype", arg: 1, scope: !386, file: !1, line: 374, type: !389)
!506 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iparams", arg: 2, scope: !386, file: !1, line: 374, type: !390)
!507 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bRead", arg: 3, scope: !386, file: !1, line: 374, type: !179)
!508 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !386, file: !1, line: 376, type: !179)
!509 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bDum", scope: !386, file: !1, line: 377, type: !179)
!510 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !511, file: !1, line: 455, type: !516)
!511 = distinct !DILexicalBlock(scope: !512, file: !1, line: 455, column: 5)
!512 = distinct !DILexicalBlock(scope: !513, file: !1, line: 455, column: 5)
!513 = distinct !DILexicalBlock(scope: !514, file: !1, line: 455, column: 5)
!514 = distinct !DILexicalBlock(scope: !515, file: !1, line: 455, column: 5)
!515 = distinct !DILexicalBlock(scope: !386, file: !1, line: 381, column: 18)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 1024, align: 8, elements: !517)
!517 = !{!518}
!518 = !DISubrange(count: 128)
!519 = !DISubprogram(name: "open_tpx", scope: !1, file: !1, line: 858, type: !520, isLocal: false, isDefinition: true, scopeLine: 859, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @open_tpx, variables: !522)
!520 = !DISubroutineType(types: !521)
!521 = !{!179, !213, !213}
!522 = !{!523, !524}
!523 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 1, scope: !519, file: !1, line: 858, type: !213)
!524 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 2, scope: !519, file: !1, line: 858, type: !213)
!525 = !DISubprogram(name: "close_tpx", scope: !1, file: !1, line: 863, type: !526, isLocal: false, isDefinition: true, scopeLine: 864, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @close_tpx, variables: !528)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !179}
!528 = !{!529}
!529 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !525, file: !1, line: 863, type: !179)
!530 = !DISubprogram(name: "read_tpxheader", scope: !1, file: !1, line: 868, type: !531, isLocal: false, isDefinition: true, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, %struct.t_tpxheader*)* @read_tpxheader, variables: !548)
!531 = !DISubroutineType(types: !532)
!532 = !{null, !213, !533}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64, align: 64)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_tpxheader", file: !535, line: 68, baseType: !536)
!535 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/tpxio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!536 = !DICompositeType(tag: DW_TAG_structure_type, file: !535, line: 55, size: 320, align: 32, elements: !537)
!537 = !{!538, !539, !540, !541, !542, !543, !544, !545, !546, !547}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "bIr", scope: !536, file: !535, line: 57, baseType: !179, size: 32, align: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "bBox", scope: !536, file: !535, line: 58, baseType: !179, size: 32, align: 32, offset: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "bTop", scope: !536, file: !535, line: 59, baseType: !179, size: 32, align: 32, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "bX", scope: !536, file: !535, line: 60, baseType: !179, size: 32, align: 32, offset: 96)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "bV", scope: !536, file: !535, line: 61, baseType: !179, size: 32, align: 32, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "bF", scope: !536, file: !535, line: 62, baseType: !179, size: 32, align: 32, offset: 160)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "natoms", scope: !536, file: !535, line: 64, baseType: !179, size: 32, align: 32, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !536, file: !535, line: 65, baseType: !179, size: 32, align: 32, offset: 224)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !536, file: !535, line: 66, baseType: !398, size: 32, align: 32, offset: 256)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "lambda", scope: !536, file: !535, line: 67, baseType: !398, size: 32, align: 32, offset: 288)
!548 = !{!549, !550, !551}
!549 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 1, scope: !530, file: !1, line: 868, type: !213)
!550 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tpx", arg: 2, scope: !530, file: !1, line: 868, type: !533)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !530, file: !1, line: 870, type: !179)
!552 = !DISubprogram(name: "write_tpx", scope: !1, file: !1, line: 877, type: !553, isLocal: false, isDefinition: true, scopeLine: 880, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32, float, float, %struct.t_inputrec*, [3 x float]*, i32, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_topology*)* @write_tpx, variables: !787)
!553 = !DISubroutineType(types: !554)
!554 = !{null, !213, !179, !398, !398, !555, !656, !179, !656, !656, !656, !673}
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64, align: 64)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_inputrec", file: !557, line: 143, baseType: !558)
!557 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/inputrec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!558 = !DICompositeType(tag: DW_TAG_structure_type, file: !557, line: 55, size: 4736, align: 64, elements: !559)
!559 = !{!560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !664, !672}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "eI", scope: !558, file: !557, line: 56, baseType: !179, size: 32, align: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "nsteps", scope: !558, file: !557, line: 57, baseType: !179, size: 32, align: 32, offset: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !558, file: !557, line: 58, baseType: !179, size: 32, align: 32, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "nstlist", scope: !558, file: !557, line: 59, baseType: !179, size: 32, align: 32, offset: 96)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "ndelta", scope: !558, file: !557, line: 60, baseType: !179, size: 32, align: 32, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "bDomDecomp", scope: !558, file: !557, line: 61, baseType: !179, size: 32, align: 32, offset: 160)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "decomp_dir", scope: !558, file: !557, line: 62, baseType: !179, size: 32, align: 32, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "nstcomm", scope: !558, file: !557, line: 63, baseType: !179, size: 32, align: 32, offset: 224)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "nstlog", scope: !558, file: !557, line: 65, baseType: !179, size: 32, align: 32, offset: 256)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "nstxout", scope: !558, file: !557, line: 66, baseType: !179, size: 32, align: 32, offset: 288)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "nstvout", scope: !558, file: !557, line: 67, baseType: !179, size: 32, align: 32, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "nstfout", scope: !558, file: !557, line: 68, baseType: !179, size: 32, align: 32, offset: 352)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "nstenergy", scope: !558, file: !557, line: 69, baseType: !179, size: 32, align: 32, offset: 384)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "nstxtcout", scope: !558, file: !557, line: 70, baseType: !179, size: 32, align: 32, offset: 416)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "init_t", scope: !558, file: !557, line: 71, baseType: !398, size: 32, align: 32, offset: 448)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "delta_t", scope: !558, file: !557, line: 72, baseType: !398, size: 32, align: 32, offset: 480)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "xtcprec", scope: !558, file: !557, line: 73, baseType: !398, size: 32, align: 32, offset: 512)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "nkx", scope: !558, file: !557, line: 74, baseType: !179, size: 32, align: 32, offset: 544)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "nky", scope: !558, file: !557, line: 74, baseType: !179, size: 32, align: 32, offset: 576)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "nkz", scope: !558, file: !557, line: 74, baseType: !179, size: 32, align: 32, offset: 608)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "pme_order", scope: !558, file: !557, line: 76, baseType: !179, size: 32, align: 32, offset: 640)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "ewald_rtol", scope: !558, file: !557, line: 77, baseType: !398, size: 32, align: 32, offset: 672)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ewald_geometry", scope: !558, file: !557, line: 79, baseType: !179, size: 32, align: 32, offset: 704)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "epsilon_surface", scope: !558, file: !557, line: 80, baseType: !179, size: 32, align: 32, offset: 736)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "bOptFFT", scope: !558, file: !557, line: 81, baseType: !179, size: 32, align: 32, offset: 768)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "ePBC", scope: !558, file: !557, line: 82, baseType: !179, size: 32, align: 32, offset: 800)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "bUncStart", scope: !558, file: !557, line: 83, baseType: !179, size: 32, align: 32, offset: 832)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "etc", scope: !558, file: !557, line: 84, baseType: !179, size: 32, align: 32, offset: 864)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !558, file: !557, line: 85, baseType: !179, size: 32, align: 32, offset: 896)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "epct", scope: !558, file: !557, line: 86, baseType: !179, size: 32, align: 32, offset: 928)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "tau_p", scope: !558, file: !557, line: 87, baseType: !398, size: 32, align: 32, offset: 960)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ref_p", scope: !558, file: !557, line: 88, baseType: !592, size: 288, align: 32, offset: 992)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "tensor", file: !399, line: 105, baseType: !593)
!593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 288, align: 32, elements: !594)
!594 = !{!238, !238}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !558, file: !557, line: 89, baseType: !592, size: 288, align: 32, offset: 1280)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "bSimAnn", scope: !558, file: !557, line: 90, baseType: !179, size: 32, align: 32, offset: 1568)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "zero_temp_time", scope: !558, file: !557, line: 91, baseType: !398, size: 32, align: 32, offset: 1600)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "rlist", scope: !558, file: !557, line: 92, baseType: !398, size: 32, align: 32, offset: 1632)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "coulombtype", scope: !558, file: !557, line: 93, baseType: !179, size: 32, align: 32, offset: 1664)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "rcoulomb_switch", scope: !558, file: !557, line: 94, baseType: !398, size: 32, align: 32, offset: 1696)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "rcoulomb", scope: !558, file: !557, line: 95, baseType: !398, size: 32, align: 32, offset: 1728)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "vdwtype", scope: !558, file: !557, line: 96, baseType: !179, size: 32, align: 32, offset: 1760)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "rvdw_switch", scope: !558, file: !557, line: 97, baseType: !398, size: 32, align: 32, offset: 1792)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "rvdw", scope: !558, file: !557, line: 98, baseType: !398, size: 32, align: 32, offset: 1824)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "epsilon_r", scope: !558, file: !557, line: 99, baseType: !398, size: 32, align: 32, offset: 1856)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "eDispCorr", scope: !558, file: !557, line: 100, baseType: !179, size: 32, align: 32, offset: 1888)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "shake_tol", scope: !558, file: !557, line: 101, baseType: !398, size: 32, align: 32, offset: 1920)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "fudgeQQ", scope: !558, file: !557, line: 102, baseType: !398, size: 32, align: 32, offset: 1952)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "efep", scope: !558, file: !557, line: 103, baseType: !179, size: 32, align: 32, offset: 1984)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "init_lambda", scope: !558, file: !557, line: 104, baseType: !398, size: 32, align: 32, offset: 2016)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "delta_lambda", scope: !558, file: !557, line: 105, baseType: !398, size: 32, align: 32, offset: 2048)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "sc_alpha", scope: !558, file: !557, line: 106, baseType: !398, size: 32, align: 32, offset: 2080)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "sc_sigma", scope: !558, file: !557, line: 107, baseType: !398, size: 32, align: 32, offset: 2112)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "dr_fc", scope: !558, file: !557, line: 108, baseType: !398, size: 32, align: 32, offset: 2144)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "eDisreWeighting", scope: !558, file: !557, line: 109, baseType: !179, size: 32, align: 32, offset: 2176)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "bDisreMixed", scope: !558, file: !557, line: 110, baseType: !179, size: 32, align: 32, offset: 2208)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "nstdisreout", scope: !558, file: !557, line: 111, baseType: !179, size: 32, align: 32, offset: 2240)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "dr_tau", scope: !558, file: !557, line: 112, baseType: !398, size: 32, align: 32, offset: 2272)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "orires_fc", scope: !558, file: !557, line: 113, baseType: !398, size: 32, align: 32, offset: 2304)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "orires_tau", scope: !558, file: !557, line: 114, baseType: !398, size: 32, align: 32, offset: 2336)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "nstorireout", scope: !558, file: !557, line: 115, baseType: !179, size: 32, align: 32, offset: 2368)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "em_stepsize", scope: !558, file: !557, line: 116, baseType: !398, size: 32, align: 32, offset: 2400)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "em_tol", scope: !558, file: !557, line: 117, baseType: !398, size: 32, align: 32, offset: 2432)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "niter", scope: !558, file: !557, line: 118, baseType: !179, size: 32, align: 32, offset: 2464)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "fc_stepsize", scope: !558, file: !557, line: 120, baseType: !179, size: 32, align: 32, offset: 2496)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "nstcgsteep", scope: !558, file: !557, line: 122, baseType: !179, size: 32, align: 32, offset: 2528)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "eConstrAlg", scope: !558, file: !557, line: 124, baseType: !179, size: 32, align: 32, offset: 2560)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "nProjOrder", scope: !558, file: !557, line: 125, baseType: !179, size: 32, align: 32, offset: 2592)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "LincsWarnAngle", scope: !558, file: !557, line: 126, baseType: !398, size: 32, align: 32, offset: 2624)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "bShakeSOR", scope: !558, file: !557, line: 127, baseType: !179, size: 32, align: 32, offset: 2656)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "bd_temp", scope: !558, file: !557, line: 128, baseType: !398, size: 32, align: 32, offset: 2688)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fric", scope: !558, file: !557, line: 129, baseType: !398, size: 32, align: 32, offset: 2720)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "ld_seed", scope: !558, file: !557, line: 130, baseType: !179, size: 32, align: 32, offset: 2752)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "cos_accel", scope: !558, file: !557, line: 131, baseType: !398, size: 32, align: 32, offset: 2784)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "userint1", scope: !558, file: !557, line: 132, baseType: !179, size: 32, align: 32, offset: 2816)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "userint2", scope: !558, file: !557, line: 133, baseType: !179, size: 32, align: 32, offset: 2848)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "userint3", scope: !558, file: !557, line: 134, baseType: !179, size: 32, align: 32, offset: 2880)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "userint4", scope: !558, file: !557, line: 135, baseType: !179, size: 32, align: 32, offset: 2912)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "userreal1", scope: !558, file: !557, line: 136, baseType: !398, size: 32, align: 32, offset: 2944)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "userreal2", scope: !558, file: !557, line: 137, baseType: !398, size: 32, align: 32, offset: 2976)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "userreal3", scope: !558, file: !557, line: 138, baseType: !398, size: 32, align: 32, offset: 3008)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "userreal4", scope: !558, file: !557, line: 139, baseType: !398, size: 32, align: 32, offset: 3040)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !558, file: !557, line: 140, baseType: !644, size: 512, align: 64, offset: 3072)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_grpopts", file: !557, line: 53, baseType: !645)
!645 = !DICompositeType(tag: DW_TAG_structure_type, file: !557, line: 42, size: 512, align: 64, elements: !646)
!646 = !{!647, !648, !649, !650, !651, !653, !654, !655, !658, !662}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "ngtc", scope: !645, file: !557, line: 43, baseType: !179, size: 32, align: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "ngacc", scope: !645, file: !557, line: 44, baseType: !179, size: 32, align: 32, offset: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "ngfrz", scope: !645, file: !557, line: 45, baseType: !179, size: 32, align: 32, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "ngener", scope: !645, file: !557, line: 46, baseType: !179, size: 32, align: 32, offset: 96)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "nrdf", scope: !645, file: !557, line: 47, baseType: !652, size: 64, align: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "ref_t", scope: !645, file: !557, line: 48, baseType: !652, size: 64, align: 64, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "tau_t", scope: !645, file: !557, line: 49, baseType: !652, size: 64, align: 64, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !645, file: !557, line: 50, baseType: !656, size: 64, align: 64, offset: 320)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64, align: 64)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !399, line: 101, baseType: !464)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "nFreeze", scope: !645, file: !557, line: 51, baseType: !659, size: 64, align: 64, offset: 384)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64, align: 64)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "ivec", file: !399, line: 107, baseType: !661)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 96, align: 32, elements: !237)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "eg_excl", scope: !645, file: !557, line: 52, baseType: !663, size: 64, align: 64, offset: 448)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ex", scope: !558, file: !557, line: 141, baseType: !665, size: 576, align: 64, offset: 3584)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 576, align: 64, elements: !237)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_cosines", file: !557, line: 40, baseType: !667)
!667 = !DICompositeType(tag: DW_TAG_structure_type, file: !557, line: 36, size: 192, align: 64, elements: !668)
!668 = !{!669, !670, !671}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !667, file: !557, line: 37, baseType: !179, size: 32, align: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !667, file: !557, line: 38, baseType: !652, size: 64, align: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "phi", scope: !667, file: !557, line: 39, baseType: !652, size: 64, align: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "et", scope: !558, file: !557, line: 142, baseType: !665, size: 576, align: 64, offset: 4160)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64, align: 64)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_topology", file: !675, line: 42, baseType: !676)
!675 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/topology.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!676 = !DICompositeType(tag: DW_TAG_structure_type, file: !675, line: 36, size: 402112, align: 64, elements: !677)
!677 = !{!678, !680, !706, !770, !772}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !676, file: !675, line: 37, baseType: !679, size: 64, align: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "idef", scope: !676, file: !675, line: 38, baseType: !681, size: 366336, align: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_idef", file: !130, line: 188, baseType: !682)
!682 = !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 179, size: 366336, align: 64, elements: !683)
!683 = !{!684, !685, !686, !687, !689, !690}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "ntypes", scope: !682, file: !130, line: 181, baseType: !179, size: 32, align: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "nodeid", scope: !682, file: !130, line: 182, baseType: !179, size: 32, align: 32, offset: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "atnr", scope: !682, file: !130, line: 183, baseType: !179, size: 32, align: 32, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "functype", scope: !682, file: !130, line: 184, baseType: !688, size: 64, align: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "iparams", scope: !682, file: !130, line: 185, baseType: !390, size: 64, align: 64, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !682, file: !130, line: 187, baseType: !691, size: 366080, align: 64, offset: 256)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !692, size: 366080, align: 64, elements: !704)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_ilist", file: !130, line: 140, baseType: !693)
!693 = !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 135, size: 8320, align: 64, elements: !694)
!694 = !{!695, !696, !700}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !693, file: !130, line: 137, baseType: !179, size: 32, align: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "multinr", scope: !693, file: !130, line: 138, baseType: !697, size: 8192, align: 32, offset: 32)
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 8192, align: 32, elements: !698)
!698 = !{!699}
!699 = !DISubrange(count: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "iatoms", scope: !693, file: !130, line: 139, baseType: !701, size: 64, align: 64, offset: 8256)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64, align: 64)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_iatom", file: !130, line: 45, baseType: !703)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "atom_id", file: !399, line: 73, baseType: !179)
!704 = !{!705}
!705 = !DISubrange(count: 44)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "atoms", scope: !676, file: !675, line: 39, baseType: !707, size: 10240, align: 64, offset: 366400)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_atoms", file: !117, line: 94, baseType: !708)
!708 = !DICompositeType(tag: DW_TAG_structure_type, file: !117, line: 75, size: 10240, align: 64, elements: !709)
!709 = !{!710, !711, !729, !731, !732, !733, !734, !735, !736, !737, !748, !755}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !708, file: !117, line: 76, baseType: !179, size: 32, align: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "atom", scope: !708, file: !117, line: 77, baseType: !712, size: 64, align: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64, align: 64)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_atom", file: !117, line: 57, baseType: !714)
!714 = !DICompositeType(tag: DW_TAG_structure_type, file: !117, line: 48, size: 320, align: 32, elements: !715)
!715 = !{!716, !717, !718, !719, !720, !721, !722, !723, !724, !728}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !714, file: !117, line: 49, baseType: !398, size: 32, align: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !714, file: !117, line: 49, baseType: !398, size: 32, align: 32, offset: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "mB", scope: !714, file: !117, line: 50, baseType: !398, size: 32, align: 32, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "qB", scope: !714, file: !117, line: 50, baseType: !398, size: 32, align: 32, offset: 96)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !714, file: !117, line: 51, baseType: !322, size: 16, align: 16, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "typeB", scope: !714, file: !117, line: 52, baseType: !322, size: 16, align: 16, offset: 144)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "ptype", scope: !714, file: !117, line: 53, baseType: !179, size: 32, align: 32, offset: 160)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "resnr", scope: !714, file: !117, line: 54, baseType: !179, size: 32, align: 32, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "grpnr", scope: !714, file: !117, line: 55, baseType: !725, size: 72, align: 8, offset: 224)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 72, align: 8, elements: !726)
!726 = !{!727}
!727 = !DISubrange(count: 9)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !714, file: !117, line: 56, baseType: !192, size: 8, align: 8, offset: 296)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "atomname", scope: !708, file: !117, line: 80, baseType: !730, size: 64, align: 64, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64, align: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "atomtype", scope: !708, file: !117, line: 82, baseType: !730, size: 64, align: 64, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "atomtypeB", scope: !708, file: !117, line: 84, baseType: !730, size: 64, align: 64, offset: 256)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !708, file: !117, line: 86, baseType: !179, size: 32, align: 32, offset: 320)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "resname", scope: !708, file: !117, line: 87, baseType: !730, size: 64, align: 64, offset: 384)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "ngrpname", scope: !708, file: !117, line: 89, baseType: !179, size: 32, align: 32, offset: 448)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "grpname", scope: !708, file: !117, line: 90, baseType: !730, size: 64, align: 64, offset: 512)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "excl", scope: !708, file: !117, line: 91, baseType: !738, size: 8448, align: 64, offset: 576)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_block", file: !739, line: 52, baseType: !740)
!739 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/block.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!740 = !DICompositeType(tag: DW_TAG_structure_type, file: !739, line: 36, size: 8448, align: 64, elements: !741)
!741 = !{!742, !743, !744, !746, !747}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "multinr", scope: !740, file: !739, line: 37, baseType: !697, size: 8192, align: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !740, file: !739, line: 43, baseType: !179, size: 32, align: 32, offset: 8192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !740, file: !739, line: 44, baseType: !745, size: 64, align: 64, offset: 8256)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64, align: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "nra", scope: !740, file: !739, line: 45, baseType: !179, size: 32, align: 32, offset: 8320)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !740, file: !739, line: 46, baseType: !745, size: 64, align: 64, offset: 8384)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "grps", scope: !708, file: !117, line: 92, baseType: !749, size: 1152, align: 64, offset: 9024)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !750, size: 1152, align: 64, elements: !726)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_grps", file: !117, line: 73, baseType: !751)
!751 = !DICompositeType(tag: DW_TAG_structure_type, file: !117, line: 70, size: 128, align: 64, elements: !752)
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !751, file: !117, line: 71, baseType: !179, size: 32, align: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "nm_ind", scope: !751, file: !117, line: 72, baseType: !663, size: 64, align: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "pdbinfo", scope: !708, file: !117, line: 93, baseType: !756, size: 64, align: 64, offset: 10176)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64, align: 64)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_pdbinfo", file: !117, line: 68, baseType: !758)
!758 = !DICompositeType(tag: DW_TAG_structure_type, file: !117, line: 59, size: 416, align: 32, elements: !759)
!759 = !{!760, !761, !762, !763, !765, !766, !767, !768}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !758, file: !117, line: 60, baseType: !179, size: 32, align: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "atomnr", scope: !758, file: !117, line: 61, baseType: !179, size: 32, align: 32, offset: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "altloc", scope: !758, file: !117, line: 62, baseType: !178, size: 8, align: 8, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "pdbresnr", scope: !758, file: !117, line: 63, baseType: !764, size: 48, align: 8, offset: 72)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 48, align: 8, elements: !471)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "occup", scope: !758, file: !117, line: 64, baseType: !398, size: 32, align: 32, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "bfac", scope: !758, file: !117, line: 65, baseType: !398, size: 32, align: 32, offset: 160)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "bAnisotropic", scope: !758, file: !117, line: 66, baseType: !179, size: 32, align: 32, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "uij", scope: !758, file: !117, line: 67, baseType: !769, size: 192, align: 32, offset: 224)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 192, align: 32, elements: !471)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !676, file: !675, line: 40, baseType: !771, size: 25344, align: 64, offset: 376640)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !738, size: 25344, align: 64, elements: !237)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !676, file: !675, line: 41, baseType: !773, size: 128, align: 64, offset: 401984)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_symtab", file: !774, line: 46, baseType: !775)
!774 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/symtab.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!775 = !DICompositeType(tag: DW_TAG_structure_type, file: !774, line: 42, size: 128, align: 64, elements: !776)
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !775, file: !774, line: 44, baseType: !179, size: 32, align: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "symbuf", scope: !775, file: !774, line: 45, baseType: !779, size: 64, align: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64, align: 64)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_symbuf", file: !774, line: 40, baseType: !781)
!781 = !DICompositeType(tag: DW_TAG_structure_type, name: "symbuf", file: !774, line: 36, size: 192, align: 64, elements: !782)
!782 = !{!783, !784, !785}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !781, file: !774, line: 37, baseType: !179, size: 32, align: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !781, file: !774, line: 38, baseType: !679, size: 64, align: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !781, file: !774, line: 39, baseType: !786, size: 64, align: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64, align: 64)
!787 = !{!788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799}
!788 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 1, scope: !552, file: !1, line: 877, type: !213)
!789 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 2, scope: !552, file: !1, line: 877, type: !179)
!790 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t", arg: 3, scope: !552, file: !1, line: 877, type: !398)
!791 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lambda", arg: 4, scope: !552, file: !1, line: 877, type: !398)
!792 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ir", arg: 5, scope: !552, file: !1, line: 878, type: !555)
!793 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 6, scope: !552, file: !1, line: 878, type: !656)
!794 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 7, scope: !552, file: !1, line: 878, type: !179)
!795 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 8, scope: !552, file: !1, line: 879, type: !656)
!796 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 9, scope: !552, file: !1, line: 879, type: !656)
!797 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 10, scope: !552, file: !1, line: 879, type: !656)
!798 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "top", arg: 11, scope: !552, file: !1, line: 879, type: !673)
!799 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !552, file: !1, line: 881, type: !179)
!800 = !DISubprogram(name: "read_tpx", scope: !1, file: !1, line: 888, type: !801, isLocal: false, isDefinition: true, scopeLine: 891, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32*, float*, float*, %struct.t_inputrec*, [3 x float]*, i32*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_topology*)* @read_tpx, variables: !803)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !213, !663, !652, !652, !555, !656, !663, !656, !656, !656, !673}
!803 = !{!804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815}
!804 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 1, scope: !800, file: !1, line: 888, type: !213)
!805 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 2, scope: !800, file: !1, line: 888, type: !663)
!806 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t", arg: 3, scope: !800, file: !1, line: 888, type: !652)
!807 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lambda", arg: 4, scope: !800, file: !1, line: 888, type: !652)
!808 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ir", arg: 5, scope: !800, file: !1, line: 889, type: !555)
!809 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 6, scope: !800, file: !1, line: 889, type: !656)
!810 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 7, scope: !800, file: !1, line: 889, type: !663)
!811 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 8, scope: !800, file: !1, line: 890, type: !656)
!812 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 9, scope: !800, file: !1, line: 890, type: !656)
!813 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 10, scope: !800, file: !1, line: 890, type: !656)
!814 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "top", arg: 11, scope: !800, file: !1, line: 890, type: !673)
!815 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !800, file: !1, line: 892, type: !179)
!816 = !DISubprogram(name: "fwrite_tpx", scope: !1, file: !1, line: 899, type: !817, isLocal: false, isDefinition: true, scopeLine: 902, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, float, float, %struct.t_inputrec*, [3 x float]*, i32, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_topology*)* @fwrite_tpx, variables: !819)
!817 = !DISubroutineType(types: !818)
!818 = !{null, !179, !179, !398, !398, !555, !656, !179, !656, !656, !656, !673}
!819 = !{!820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830}
!820 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !816, file: !1, line: 899, type: !179)
!821 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 2, scope: !816, file: !1, line: 899, type: !179)
!822 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t", arg: 3, scope: !816, file: !1, line: 899, type: !398)
!823 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lambda", arg: 4, scope: !816, file: !1, line: 899, type: !398)
!824 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ir", arg: 5, scope: !816, file: !1, line: 900, type: !555)
!825 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 6, scope: !816, file: !1, line: 900, type: !656)
!826 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 7, scope: !816, file: !1, line: 900, type: !179)
!827 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 8, scope: !816, file: !1, line: 901, type: !656)
!828 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 9, scope: !816, file: !1, line: 901, type: !656)
!829 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 10, scope: !816, file: !1, line: 901, type: !656)
!830 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "top", arg: 11, scope: !816, file: !1, line: 901, type: !673)
!831 = !DISubprogram(name: "fread_tpx", scope: !1, file: !1, line: 907, type: !832, isLocal: false, isDefinition: true, scopeLine: 910, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32*, float*, float*, %struct.t_inputrec*, [3 x float]*, i32*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_topology*)* @fread_tpx, variables: !834)
!832 = !DISubroutineType(types: !833)
!833 = !{null, !179, !663, !652, !652, !555, !656, !663, !656, !656, !656, !673}
!834 = !{!835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845}
!835 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !831, file: !1, line: 907, type: !179)
!836 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 2, scope: !831, file: !1, line: 907, type: !663)
!837 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t", arg: 3, scope: !831, file: !1, line: 907, type: !652)
!838 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lambda", arg: 4, scope: !831, file: !1, line: 907, type: !652)
!839 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ir", arg: 5, scope: !831, file: !1, line: 908, type: !555)
!840 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 6, scope: !831, file: !1, line: 908, type: !656)
!841 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 7, scope: !831, file: !1, line: 908, type: !663)
!842 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 8, scope: !831, file: !1, line: 909, type: !656)
!843 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 9, scope: !831, file: !1, line: 909, type: !656)
!844 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 10, scope: !831, file: !1, line: 909, type: !656)
!845 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "top", arg: 11, scope: !831, file: !1, line: 909, type: !673)
!846 = !DISubprogram(name: "fn2bTPX", scope: !1, file: !1, line: 914, type: !847, isLocal: false, isDefinition: true, scopeLine: 915, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @fn2bTPX, variables: !849)
!847 = !DISubroutineType(types: !848)
!848 = !{!179, !213}
!849 = !{!850}
!850 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 1, scope: !846, file: !1, line: 914, type: !213)
!851 = !DISubprogram(name: "read_tps_conf", scope: !1, file: !1, line: 926, type: !852, isLocal: false, isDefinition: true, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*, %struct.t_topology*, [3 x float]**, [3 x float]**, [3 x float]*, i32)* @read_tps_conf, variables: !856)
!852 = !DISubroutineType(types: !853)
!853 = !{!179, !213, !213, !673, !854, !854, !855, !179}
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64, align: 64)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, align: 64)
!856 = !{!857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871}
!857 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "infile", arg: 1, scope: !851, file: !1, line: 926, type: !213)
!858 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "title", arg: 2, scope: !851, file: !1, line: 926, type: !213)
!859 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "top", arg: 3, scope: !851, file: !1, line: 926, type: !673)
!860 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 4, scope: !851, file: !1, line: 927, type: !854)
!861 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 5, scope: !851, file: !1, line: 927, type: !854)
!862 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 6, scope: !851, file: !1, line: 927, type: !855)
!863 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bMass", arg: 7, scope: !851, file: !1, line: 927, type: !179)
!864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "header", scope: !851, file: !1, line: 929, type: !534)
!865 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !851, file: !1, line: 930, type: !398)
!866 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lambda", scope: !851, file: !1, line: 930, type: !398)
!867 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "natoms", scope: !851, file: !1, line: 931, type: !179)
!868 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "step", scope: !851, file: !1, line: 931, type: !179)
!869 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !851, file: !1, line: 931, type: !179)
!870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bTop", scope: !851, file: !1, line: 932, type: !179)
!871 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bXNULL", scope: !851, file: !1, line: 932, type: !179)
!872 = !DISubprogram(name: "do_harm", scope: !1, file: !1, line: 366, type: !873, isLocal: true, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: true, variables: !875)
!873 = !DISubroutineType(types: !874)
!874 = !{null, !390, !179}
!875 = !{!876, !877}
!876 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iparams", arg: 1, scope: !872, file: !1, line: 366, type: !390)
!877 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bRead", arg: 2, scope: !872, file: !1, line: 366, type: !179)
!878 = !DISubprogram(name: "do_tpxheader", scope: !1, file: !1, line: 724, type: !879, isLocal: true, isDefinition: true, scopeLine: 725, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, %struct.t_tpxheader*)* @do_tpxheader, variables: !881)
!879 = !DISubroutineType(types: !880)
!880 = !{null, !179, !179, !533}
!881 = !{!882, !883, !884, !885, !886, !887}
!882 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !878, file: !1, line: 724, type: !179)
!883 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bRead", arg: 2, scope: !878, file: !1, line: 724, type: !179)
!884 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tpx", arg: 3, scope: !878, file: !1, line: 724, type: !533)
!885 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !878, file: !1, line: 726, type: !382)
!886 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bDouble", scope: !878, file: !1, line: 727, type: !179)
!887 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "precision", scope: !878, file: !1, line: 728, type: !179)
!888 = !DISubprogram(name: "do_tpx", scope: !1, file: !1, line: 782, type: !889, isLocal: true, isDefinition: true, scopeLine: 785, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, i32*, float*, float*, %struct.t_inputrec*, [3 x float]*, i32*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_topology*)* @do_tpx, variables: !891)
!889 = !DISubroutineType(types: !890)
!890 = !{null, !179, !179, !663, !652, !652, !555, !656, !663, !656, !656, !656, !673}
!891 = !{!892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906}
!892 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !888, file: !1, line: 782, type: !179)
!893 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bRead", arg: 2, scope: !888, file: !1, line: 782, type: !179)
!894 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 3, scope: !888, file: !1, line: 782, type: !663)
!895 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t", arg: 4, scope: !888, file: !1, line: 782, type: !652)
!896 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lambda", arg: 5, scope: !888, file: !1, line: 782, type: !652)
!897 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ir", arg: 6, scope: !888, file: !1, line: 783, type: !555)
!898 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 7, scope: !888, file: !1, line: 783, type: !656)
!899 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 8, scope: !888, file: !1, line: 783, type: !663)
!900 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 9, scope: !888, file: !1, line: 784, type: !656)
!901 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 10, scope: !888, file: !1, line: 784, type: !656)
!902 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 11, scope: !888, file: !1, line: 784, type: !656)
!903 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "top", arg: 12, scope: !888, file: !1, line: 784, type: !673)
!904 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tpx", scope: !888, file: !1, line: 786, type: !534)
!905 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dum_ir", scope: !888, file: !1, line: 787, type: !556)
!906 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dum_top", scope: !888, file: !1, line: 788, type: !674)
!907 = !DISubprogram(name: "do_inputrec", scope: !1, file: !1, line: 118, type: !908, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_inputrec*, i32)* @do_inputrec, variables: !910)
!908 = !DISubroutineType(types: !909)
!909 = !{null, !555, !179}
!910 = !{!911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !931, !937, !942, !947, !953, !959, !967, !972, !977}
!911 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ir", arg: 1, scope: !907, file: !1, line: 118, type: !555)
!912 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bRead", arg: 2, scope: !907, file: !1, line: 118, type: !179)
!913 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !907, file: !1, line: 120, type: !179)
!914 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !907, file: !1, line: 120, type: !179)
!915 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !907, file: !1, line: 120, type: !663)
!916 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idum", scope: !907, file: !1, line: 120, type: !179)
!917 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bDum", scope: !907, file: !1, line: 121, type: !179)
!918 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rdum", scope: !907, file: !1, line: 122, type: !398)
!919 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vdum", scope: !907, file: !1, line: 123, type: !657)
!920 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !921, file: !1, line: 331, type: !516)
!921 = distinct !DILexicalBlock(scope: !922, file: !1, line: 331, column: 2)
!922 = distinct !DILexicalBlock(scope: !923, file: !1, line: 331, column: 2)
!923 = distinct !DILexicalBlock(scope: !924, file: !1, line: 331, column: 2)
!924 = distinct !DILexicalBlock(scope: !925, file: !1, line: 331, column: 2)
!925 = distinct !DILexicalBlock(scope: !926, file: !1, line: 329, column: 37)
!926 = distinct !DILexicalBlock(scope: !927, file: !1, line: 329, column: 11)
!927 = distinct !DILexicalBlock(scope: !928, file: !1, line: 328, column: 28)
!928 = distinct !DILexicalBlock(scope: !929, file: !1, line: 328, column: 9)
!929 = distinct !DILexicalBlock(scope: !930, file: !1, line: 131, column: 26)
!930 = distinct !DILexicalBlock(scope: !907, file: !1, line: 131, column: 7)
!931 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !932, file: !1, line: 336, type: !516)
!932 = distinct !DILexicalBlock(scope: !933, file: !1, line: 336, column: 2)
!933 = distinct !DILexicalBlock(scope: !934, file: !1, line: 336, column: 2)
!934 = distinct !DILexicalBlock(scope: !935, file: !1, line: 336, column: 2)
!935 = distinct !DILexicalBlock(scope: !936, file: !1, line: 336, column: 2)
!936 = distinct !DILexicalBlock(scope: !926, file: !1, line: 335, column: 14)
!937 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !938, file: !1, line: 338, type: !516)
!938 = distinct !DILexicalBlock(scope: !939, file: !1, line: 338, column: 7)
!939 = distinct !DILexicalBlock(scope: !940, file: !1, line: 338, column: 7)
!940 = distinct !DILexicalBlock(scope: !941, file: !1, line: 338, column: 7)
!941 = distinct !DILexicalBlock(scope: !927, file: !1, line: 338, column: 7)
!942 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !943, file: !1, line: 339, type: !516)
!943 = distinct !DILexicalBlock(scope: !944, file: !1, line: 339, column: 7)
!944 = distinct !DILexicalBlock(scope: !945, file: !1, line: 339, column: 7)
!945 = distinct !DILexicalBlock(scope: !946, file: !1, line: 339, column: 7)
!946 = distinct !DILexicalBlock(scope: !927, file: !1, line: 339, column: 7)
!947 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !948, file: !1, line: 342, type: !516)
!948 = distinct !DILexicalBlock(scope: !949, file: !1, line: 342, column: 7)
!949 = distinct !DILexicalBlock(scope: !950, file: !1, line: 342, column: 7)
!950 = distinct !DILexicalBlock(scope: !951, file: !1, line: 342, column: 7)
!951 = distinct !DILexicalBlock(scope: !952, file: !1, line: 342, column: 7)
!952 = distinct !DILexicalBlock(scope: !929, file: !1, line: 341, column: 9)
!953 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !954, file: !1, line: 346, type: !516)
!954 = distinct !DILexicalBlock(scope: !955, file: !1, line: 346, column: 7)
!955 = distinct !DILexicalBlock(scope: !956, file: !1, line: 346, column: 7)
!956 = distinct !DILexicalBlock(scope: !957, file: !1, line: 346, column: 7)
!957 = distinct !DILexicalBlock(scope: !958, file: !1, line: 346, column: 7)
!958 = distinct !DILexicalBlock(scope: !929, file: !1, line: 345, column: 9)
!959 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !960, file: !1, line: 358, type: !516)
!960 = distinct !DILexicalBlock(scope: !961, file: !1, line: 358, column: 7)
!961 = distinct !DILexicalBlock(scope: !962, file: !1, line: 358, column: 7)
!962 = distinct !DILexicalBlock(scope: !963, file: !1, line: 358, column: 7)
!963 = distinct !DILexicalBlock(scope: !964, file: !1, line: 358, column: 7)
!964 = distinct !DILexicalBlock(scope: !965, file: !1, line: 349, column: 28)
!965 = distinct !DILexicalBlock(scope: !966, file: !1, line: 349, column: 5)
!966 = distinct !DILexicalBlock(scope: !929, file: !1, line: 349, column: 5)
!967 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !968, file: !1, line: 359, type: !516)
!968 = distinct !DILexicalBlock(scope: !969, file: !1, line: 359, column: 7)
!969 = distinct !DILexicalBlock(scope: !970, file: !1, line: 359, column: 7)
!970 = distinct !DILexicalBlock(scope: !971, file: !1, line: 359, column: 7)
!971 = distinct !DILexicalBlock(scope: !964, file: !1, line: 359, column: 7)
!972 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !973, file: !1, line: 360, type: !516)
!973 = distinct !DILexicalBlock(scope: !974, file: !1, line: 360, column: 7)
!974 = distinct !DILexicalBlock(scope: !975, file: !1, line: 360, column: 7)
!975 = distinct !DILexicalBlock(scope: !976, file: !1, line: 360, column: 7)
!976 = distinct !DILexicalBlock(scope: !964, file: !1, line: 360, column: 7)
!977 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !978, file: !1, line: 361, type: !516)
!978 = distinct !DILexicalBlock(scope: !979, file: !1, line: 361, column: 7)
!979 = distinct !DILexicalBlock(scope: !980, file: !1, line: 361, column: 7)
!980 = distinct !DILexicalBlock(scope: !981, file: !1, line: 361, column: 7)
!981 = distinct !DILexicalBlock(scope: !964, file: !1, line: 361, column: 7)
!982 = !DISubprogram(name: "clear_mat", scope: !983, file: !983, line: 334, type: !984, isLocal: true, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, variables: !986)
!983 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/vec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!984 = !DISubroutineType(types: !985)
!985 = !{null, !855}
!986 = !{!987, !988}
!987 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !982, file: !983, line: 334, type: !855)
!988 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nul", scope: !982, file: !983, line: 336, type: !989)
!989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!990 = !DISubprogram(name: "do_top", scope: !1, file: !1, line: 708, type: !991, isLocal: true, isDefinition: true, scopeLine: 709, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_topology*, i32)* @do_top, variables: !993)
!991 = !DISubroutineType(types: !992)
!992 = !{null, !673, !179}
!993 = !{!994, !995, !996}
!994 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "top", arg: 1, scope: !990, file: !1, line: 708, type: !673)
!995 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bRead", arg: 2, scope: !990, file: !1, line: 708, type: !179)
!996 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !990, file: !1, line: 710, type: !179)
!997 = !DISubprogram(name: "do_symtab", scope: !1, file: !1, line: 654, type: !998, isLocal: true, isDefinition: true, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: true, variables: !1001)
!998 = !DISubroutineType(types: !999)
!999 = !{null, !1000, !179}
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64, align: 64)
!1001 = !{!1002, !1003, !1004, !1005, !1006, !1007}
!1002 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "symtab", arg: 1, scope: !997, file: !1, line: 654, type: !1000)
!1003 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bRead", arg: 2, scope: !997, file: !1, line: 654, type: !179)
!1004 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !997, file: !1, line: 656, type: !179)
!1005 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nr", scope: !997, file: !1, line: 656, type: !179)
!1006 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symbuf", scope: !997, file: !1, line: 657, type: !779)
!1007 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !997, file: !1, line: 658, type: !382)
!1008 = !DISubprogram(name: "do_symstr", scope: !1, file: !1, line: 596, type: !1009, isLocal: true, isDefinition: true, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: true, function: void (i8***, i32, %struct.t_symtab*)* @do_symstr, variables: !1011)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{null, !730, !179, !1000}
!1011 = !{!1012, !1013, !1014, !1015}
!1012 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nm", arg: 1, scope: !1008, file: !1, line: 596, type: !730)
!1013 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bRead", arg: 2, scope: !1008, file: !1, line: 596, type: !179)
!1014 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "symtab", arg: 3, scope: !1008, file: !1, line: 596, type: !1000)
!1015 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ls", scope: !1008, file: !1, line: 598, type: !179)
!1016 = !DISubprogram(name: "do_atoms", scope: !1, file: !1, line: 618, type: !1017, isLocal: true, isDefinition: true, scopeLine: 619, flags: DIFlagPrototyped, isOptimized: true, variables: !1020)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{null, !1019, !179, !1000}
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64, align: 64)
!1020 = !{!1021, !1022, !1023, !1024}
!1021 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atoms", arg: 1, scope: !1016, file: !1, line: 618, type: !1019)
!1022 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bRead", arg: 2, scope: !1016, file: !1, line: 618, type: !179)
!1023 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "symtab", arg: 3, scope: !1016, file: !1, line: 618, type: !1000)
!1024 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !1016, file: !1, line: 620, type: !179)
!1025 = !DISubprogram(name: "do_atom", scope: !1, file: !1, line: 560, type: !1026, isLocal: true, isDefinition: true, scopeLine: 561, flags: DIFlagPrototyped, isOptimized: true, variables: !1028)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{null, !712, !179, !179}
!1028 = !{!1029, !1030, !1031}
!1029 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atom", arg: 1, scope: !1025, file: !1, line: 560, type: !712)
!1030 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ngrp", arg: 2, scope: !1025, file: !1, line: 560, type: !179)
!1031 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bRead", arg: 3, scope: !1025, file: !1, line: 560, type: !179)
!1032 = !DISubprogram(name: "do_strstr", scope: !1, file: !1, line: 610, type: !1033, isLocal: true, isDefinition: true, scopeLine: 611, flags: DIFlagPrototyped, isOptimized: true, variables: !1035)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{null, !179, !730, !179, !1000}
!1035 = !{!1036, !1037, !1038, !1039, !1040}
!1036 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nstr", arg: 1, scope: !1032, file: !1, line: 610, type: !179)
!1037 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nm", arg: 2, scope: !1032, file: !1, line: 610, type: !730)
!1038 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bRead", arg: 3, scope: !1032, file: !1, line: 610, type: !179)
!1039 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "symtab", arg: 4, scope: !1032, file: !1, line: 610, type: !1000)
!1040 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !1032, file: !1, line: 612, type: !179)
!1041 = !DISubprogram(name: "do_grps", scope: !1, file: !1, line: 577, type: !1042, isLocal: true, isDefinition: true, scopeLine: 578, flags: DIFlagPrototyped, isOptimized: true, variables: !1045)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{null, !179, !1044, !179}
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64, align: 64)
!1045 = !{!1046, !1047, !1048, !1049, !1050, !1051, !1052}
!1046 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ngrp", arg: 1, scope: !1041, file: !1, line: 577, type: !179)
!1047 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "grps", arg: 2, scope: !1041, file: !1, line: 577, type: !1044)
!1048 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bRead", arg: 3, scope: !1041, file: !1, line: 577, type: !179)
!1049 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !1041, file: !1, line: 579, type: !179)
!1050 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !1041, file: !1, line: 579, type: !179)
!1051 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bDum", scope: !1041, file: !1, line: 580, type: !179)
!1052 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !1053, file: !1, line: 592, type: !516)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 592, column: 5)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !1, line: 592, column: 5)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 592, column: 5)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !1, line: 592, column: 5)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !1, line: 588, column: 27)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !1, line: 588, column: 3)
!1059 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 588, column: 3)
!1060 = !DISubprogram(name: "do_idef", scope: !1, file: !1, line: 505, type: !1061, isLocal: true, isDefinition: true, scopeLine: 506, flags: DIFlagPrototyped, isOptimized: true, variables: !1064)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{null, !1063, !179}
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64, align: 64)
!1064 = !{!1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072}
!1065 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "idef", arg: 1, scope: !1060, file: !1, line: 505, type: !1063)
!1066 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bRead", arg: 2, scope: !1060, file: !1, line: 505, type: !179)
!1067 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !1060, file: !1, line: 507, type: !179)
!1068 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !1060, file: !1, line: 507, type: !179)
!1069 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !1060, file: !1, line: 507, type: !179)
!1070 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bDum", scope: !1060, file: !1, line: 508, type: !179)
!1071 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bClear", scope: !1060, file: !1, line: 508, type: !179)
!1072 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !1073, file: !1, line: 517, type: !516)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !1, line: 517, column: 3)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !1, line: 517, column: 3)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !1, line: 517, column: 3)
!1076 = distinct !DILexicalBlock(scope: !1060, file: !1, line: 517, column: 3)
!1077 = !DISubprogram(name: "do_ilist", scope: !1, file: !1, line: 489, type: !1078, isLocal: true, isDefinition: true, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: true, variables: !1081)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{null, !1080, !179, !213}
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64, align: 64)
!1081 = !{!1082, !1083, !1084, !1085, !1086, !1087, !1092}
!1082 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ilist", arg: 1, scope: !1077, file: !1, line: 489, type: !1080)
!1083 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bRead", arg: 2, scope: !1077, file: !1, line: 489, type: !179)
!1084 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 3, scope: !1077, file: !1, line: 489, type: !213)
!1085 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !1077, file: !1, line: 491, type: !179)
!1086 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bDum", scope: !1077, file: !1, line: 492, type: !179)
!1087 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !1088, file: !1, line: 496, type: !516)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !1, line: 496, column: 3)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !1, line: 496, column: 3)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !1, line: 496, column: 3)
!1091 = distinct !DILexicalBlock(scope: !1077, file: !1, line: 496, column: 3)
!1092 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !1093, file: !1, line: 500, type: !516)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !1, line: 500, column: 3)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !1, line: 500, column: 3)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !1, line: 500, column: 3)
!1096 = distinct !DILexicalBlock(scope: !1077, file: !1, line: 500, column: 3)
!1097 = !DISubprogram(name: "do_block", scope: !1, file: !1, line: 544, type: !1098, isLocal: true, isDefinition: true, scopeLine: 545, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_block*, i32)* @do_block, variables: !1101)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{null, !1100, !179}
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64, align: 64)
!1101 = !{!1102, !1103, !1104, !1105, !1106, !1111, !1116}
!1102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "block", arg: 1, scope: !1097, file: !1, line: 544, type: !1100)
!1103 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bRead", arg: 2, scope: !1097, file: !1, line: 544, type: !179)
!1104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !1097, file: !1, line: 546, type: !179)
!1105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bDum", scope: !1097, file: !1, line: 547, type: !179)
!1106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !1107, file: !1, line: 549, type: !516)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !1, line: 549, column: 3)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !1, line: 549, column: 3)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !1, line: 549, column: 3)
!1110 = distinct !DILexicalBlock(scope: !1097, file: !1, line: 549, column: 3)
!1111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !1112, file: !1, line: 556, type: !516)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !1, line: 556, column: 3)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !1, line: 556, column: 3)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !1, line: 556, column: 3)
!1115 = distinct !DILexicalBlock(scope: !1097, file: !1, line: 556, column: 3)
!1116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !1117, file: !1, line: 557, type: !516)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !1, line: 557, column: 3)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !1, line: 557, column: 3)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !1, line: 557, column: 3)
!1120 = distinct !DILexicalBlock(scope: !1097, file: !1, line: 557, column: 3)
!1121 = !DISubprogram(name: "make_chain_identifiers", scope: !1, file: !1, line: 685, type: !1122, isLocal: true, isDefinition: true, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: true, variables: !1124)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{null, !1019, !1100}
!1124 = !{!1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132}
!1125 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atoms", arg: 1, scope: !1121, file: !1, line: 685, type: !1019)
!1126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mols", arg: 2, scope: !1121, file: !1, line: 685, type: !1100)
!1127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !1121, file: !1, line: 687, type: !179)
!1128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !1121, file: !1, line: 687, type: !179)
!1129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a0", scope: !1121, file: !1, line: 687, type: !179)
!1130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !1121, file: !1, line: 687, type: !179)
!1131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !1121, file: !1, line: 688, type: !178)
!1132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "chain", scope: !1121, file: !1, line: 688, type: !178)
!1133 = !{!1134, !1143, !1144, !1145}
!1134 = !DIGlobalVariable(name: "ftupd", scope: !0, file: !1, line: 70, type: !1135, isLocal: false, isDefinition: true, variable: [7 x %struct.t_ftupd]* @ftupd)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1136, size: 448, align: 32, elements: !1141)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_ftupd", file: !1, line: 63, baseType: !1137)
!1137 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 60, size: 64, align: 32, elements: !1138)
!1138 = !{!1139, !1140}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "fvnr", scope: !1137, file: !1, line: 61, baseType: !179, size: 32, align: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "ftype", scope: !1137, file: !1, line: 62, baseType: !179, size: 32, align: 32, offset: 32)
!1141 = !{!1142}
!1142 = !DISubrange(count: 7)
!1143 = !DIGlobalVariable(name: "tpx_version", scope: !0, file: !1, line: 53, type: !179, isLocal: true, isDefinition: true)
!1144 = !DIGlobalVariable(name: "file_version", scope: !0, file: !1, line: 57, type: !179, isLocal: true, isDefinition: true, variable: i32* @file_version)
!1145 = !DIGlobalVariable(name: "tpx_incompatible_version", scope: !0, file: !1, line: 55, type: !179, isLocal: true, isDefinition: true)
!1146 = !{}
!1147 = !{i32 2, !"Dwarf Version", i32 2}
!1148 = !{i32 2, !"Debug Info Version", i32 700000003}
!1149 = !{i32 1, !"PIC Level", i32 2}
!1150 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!1151 = !DIExpression()
!1152 = !DILocation(line: 348, column: 40, scope: !182)
!1153 = !DILocation(line: 348, column: 50, scope: !182)
!1154 = !DILocation(line: 349, column: 12, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !182, file: !183, line: 349, column: 6)
!1156 = !DILocation(line: 349, column: 6, scope: !1155)
!1157 = !{!1158, !1162, i64 12}
!1158 = !{!"__sFILE", !1159, i64 0, !1162, i64 8, !1162, i64 12, !1163, i64 16, !1163, i64 18, !1164, i64 24, !1162, i64 40, !1159, i64 48, !1159, i64 56, !1159, i64 64, !1159, i64 72, !1159, i64 80, !1164, i64 88, !1159, i64 104, !1162, i64 112, !1160, i64 116, !1160, i64 119, !1164, i64 120, !1162, i64 136, !1165, i64 144}
!1159 = !{!"any pointer", !1160, i64 0}
!1160 = !{!"omnipotent char", !1161, i64 0}
!1161 = !{!"Simple C/C++ TBAA"}
!1162 = !{!"int", !1160, i64 0}
!1163 = !{!"short", !1160, i64 0}
!1164 = !{!"__sbuf", !1159, i64 0, !1162, i64 8}
!1165 = !{!"long long", !1160, i64 0}
!1166 = !DILocation(line: 349, column: 15, scope: !1155)
!1167 = !DILocation(line: 349, column: 20, scope: !1155)
!1168 = !DILocation(line: 350, column: 10, scope: !1155)
!1169 = !DILocation(line: 349, column: 38, scope: !1155)
!1170 = !{!1158, !1162, i64 40}
!1171 = !DILocation(line: 349, column: 31, scope: !1155)
!1172 = !DILocation(line: 349, column: 59, scope: !1155)
!1173 = !DILocation(line: 349, column: 47, scope: !1155)
!1174 = !DILocation(line: 350, column: 23, scope: !1155)
!1175 = !DILocation(line: 350, column: 16, scope: !1155)
!1176 = !DILocation(line: 350, column: 18, scope: !1155)
!1177 = !{!1158, !1159, i64 0}
!1178 = !DILocation(line: 350, column: 21, scope: !1155)
!1179 = !{!1160, !1160, i64 0}
!1180 = !DILocation(line: 350, column: 3, scope: !1155)
!1181 = !DILocation(line: 352, column: 11, scope: !1155)
!1182 = !DILocation(line: 352, column: 3, scope: !1155)
!1183 = !DILocation(line: 353, column: 1, scope: !182)
!1184 = !DILocation(line: 114, column: 15, scope: !249)
!1185 = !DILocation(line: 116, column: 20, scope: !249)
!1186 = !DILocation(line: 116, column: 12, scope: !249)
!1187 = !DILocation(line: 116, column: 57, scope: !249)
!1188 = !DILocation(line: 116, column: 45, scope: !249)
!1189 = !DILocation(line: 116, column: 5, scope: !249)
!1190 = !DILocation(line: 204, column: 53, scope: !255)
!1191 = !DILocation(line: 205, column: 16, scope: !255)
!1192 = !DILocation(line: 205, column: 23, scope: !255)
!1193 = !DILocation(line: 205, column: 26, scope: !255)
!1194 = !DILocation(line: 205, column: 47, scope: !255)
!1195 = !DILocation(line: 205, column: 5, scope: !255)
!1196 = !DILocation(line: 207, column: 54, scope: !262)
!1197 = !DILocation(line: 208, column: 16, scope: !262)
!1198 = !DILocation(line: 208, column: 23, scope: !262)
!1199 = !DILocation(line: 208, column: 26, scope: !262)
!1200 = !DILocation(line: 208, column: 46, scope: !262)
!1201 = !DILocation(line: 208, column: 5, scope: !262)
!1202 = !DILocation(line: 210, column: 59, scope: !268)
!1203 = !DILocation(line: 211, column: 16, scope: !268)
!1204 = !DILocation(line: 211, column: 23, scope: !268)
!1205 = !DILocation(line: 211, column: 26, scope: !268)
!1206 = !DILocation(line: 211, column: 47, scope: !268)
!1207 = !DILocation(line: 211, column: 5, scope: !268)
!1208 = !DILocation(line: 213, column: 50, scope: !274)
!1209 = !DILocation(line: 214, column: 12, scope: !274)
!1210 = !DILocation(line: 214, column: 33, scope: !274)
!1211 = !DILocation(line: 214, column: 5, scope: !274)
!1212 = !DILocation(line: 216, column: 51, scope: !277)
!1213 = !DILocation(line: 217, column: 12, scope: !277)
!1214 = !DILocation(line: 217, column: 32, scope: !277)
!1215 = !DILocation(line: 217, column: 5, scope: !277)
!1216 = !DILocation(line: 219, column: 56, scope: !280)
!1217 = !DILocation(line: 220, column: 12, scope: !280)
!1218 = !DILocation(line: 220, column: 33, scope: !280)
!1219 = !DILocation(line: 220, column: 5, scope: !280)
!1220 = !DILocation(line: 222, column: 50, scope: !283)
!1221 = !DILocation(line: 223, column: 16, scope: !283)
!1222 = !DILocation(line: 223, column: 5, scope: !283)
!1223 = !DILocation(line: 225, column: 51, scope: !286)
!1224 = !DILocation(line: 226, column: 16, scope: !286)
!1225 = !DILocation(line: 226, column: 5, scope: !286)
!1226 = !DILocation(line: 228, column: 56, scope: !289)
!1227 = !DILocation(line: 229, column: 16, scope: !289)
!1228 = !DILocation(line: 229, column: 5, scope: !289)
!1229 = !DILocation(line: 231, column: 52, scope: !292)
!1230 = !DILocation(line: 232, column: 44, scope: !292)
!1231 = !DILocation(line: 233, column: 13, scope: !292)
!1232 = !DILocation(line: 234, column: 26, scope: !292)
!1233 = !DILocation(line: 234, column: 5, scope: !292)
!1234 = !DILocation(line: 236, column: 53, scope: !301)
!1235 = !DILocation(line: 237, column: 51, scope: !301)
!1236 = !DILocation(line: 238, column: 13, scope: !301)
!1237 = !DILocation(line: 239, column: 26, scope: !301)
!1238 = !DILocation(line: 239, column: 12, scope: !301)
!1239 = !DILocation(line: 239, column: 5, scope: !301)
!1240 = !DILocation(line: 242, column: 58, scope: !310)
!1241 = !DILocation(line: 246, column: 7, scope: !310)
!1242 = !DILocation(line: 248, column: 26, scope: !310)
!1243 = !DILocation(line: 248, column: 33, scope: !310)
!1244 = !DILocation(line: 248, column: 5, scope: !310)
!1245 = !DILocation(line: 257, column: 53, scope: !323)
!1246 = !DILocation(line: 204, column: 53, scope: !255, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 258, column: 12, scope: !323)
!1248 = !DILocation(line: 205, column: 16, scope: !255, inlinedAt: !1247)
!1249 = !DILocation(line: 205, column: 47, scope: !255, inlinedAt: !1247)
!1250 = !DILocation(line: 205, column: 23, scope: !255, inlinedAt: !1247)
!1251 = !DILocation(line: 258, column: 60, scope: !323)
!1252 = !DILocation(line: 258, column: 36, scope: !323)
!1253 = !DILocation(line: 258, column: 5, scope: !323)
!1254 = !DILocation(line: 260, column: 54, scope: !326)
!1255 = !DILocation(line: 207, column: 54, scope: !262, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 261, column: 12, scope: !326)
!1257 = !DILocation(line: 208, column: 16, scope: !262, inlinedAt: !1256)
!1258 = !DILocation(line: 208, column: 46, scope: !262, inlinedAt: !1256)
!1259 = !DILocation(line: 208, column: 23, scope: !262, inlinedAt: !1256)
!1260 = !DILocation(line: 261, column: 59, scope: !326)
!1261 = !DILocation(line: 261, column: 36, scope: !326)
!1262 = !DILocation(line: 261, column: 5, scope: !326)
!1263 = !DILocation(line: 263, column: 59, scope: !329)
!1264 = !DILocation(line: 210, column: 59, scope: !268, inlinedAt: !1265)
!1265 = distinct !DILocation(line: 264, column: 12, scope: !329)
!1266 = !DILocation(line: 211, column: 16, scope: !268, inlinedAt: !1265)
!1267 = !DILocation(line: 211, column: 47, scope: !268, inlinedAt: !1265)
!1268 = !DILocation(line: 211, column: 23, scope: !268, inlinedAt: !1265)
!1269 = !DILocation(line: 264, column: 60, scope: !329)
!1270 = !DILocation(line: 264, column: 36, scope: !329)
!1271 = !DILocation(line: 264, column: 5, scope: !329)
!1272 = !DILocation(line: 642, column: 45, scope: !332)
!1273 = !DILocation(line: 642, column: 57, scope: !332)
!1274 = !DILocation(line: 642, column: 72, scope: !332)
!1275 = !DILocation(line: 643, column: 27, scope: !332)
!1276 = !DILocation(line: 643, column: 37, scope: !332)
!1277 = !DILocation(line: 644, column: 23, scope: !332)
!1278 = !DILocation(line: 644, column: 13, scope: !332)
!1279 = !{!1280, !1280, i64 0}
!1280 = !{!"float", !1160, i64 0}
!1281 = !DILocation(line: 644, column: 51, scope: !332)
!1282 = !DILocation(line: 644, column: 41, scope: !332)
!1283 = !DILocation(line: 645, column: 1, scope: !332)
!1284 = !DILocation(line: 647, column: 45, scope: !346)
!1285 = !DILocation(line: 647, column: 58, scope: !346)
!1286 = !DILocation(line: 647, column: 74, scope: !346)
!1287 = !DILocation(line: 648, column: 28, scope: !346)
!1288 = !DILocation(line: 648, column: 38, scope: !346)
!1289 = !DIExpression(DW_OP_bit_piece, 0, 64)
!1290 = !DIExpression(DW_OP_bit_piece, 64, 64)
!1291 = !DILocation(line: 649, column: 13, scope: !346)
!1292 = !{!1293, !1293, i64 0}
!1293 = !{!"double", !1160, i64 0}
!1294 = !DILocation(line: 649, column: 41, scope: !346)
!1295 = !DILocation(line: 650, column: 1, scope: !346)
!1296 = !DILocation(line: 652, column: 47, scope: !360)
!1297 = !DILocation(line: 652, column: 59, scope: !360)
!1298 = !DILocation(line: 652, column: 74, scope: !360)
!1299 = !DILocation(line: 653, column: 27, scope: !360)
!1300 = !DILocation(line: 653, column: 37, scope: !360)
!1301 = !DILocation(line: 654, column: 23, scope: !360)
!1302 = !DILocation(line: 654, column: 13, scope: !360)
!1303 = !DILocation(line: 654, column: 51, scope: !360)
!1304 = !DILocation(line: 654, column: 41, scope: !360)
!1305 = !DILocation(line: 655, column: 1, scope: !360)
!1306 = !DILocation(line: 657, column: 47, scope: !366)
!1307 = !DILocation(line: 657, column: 60, scope: !366)
!1308 = !DILocation(line: 657, column: 76, scope: !366)
!1309 = !DILocation(line: 658, column: 28, scope: !366)
!1310 = !DILocation(line: 658, column: 38, scope: !366)
!1311 = !DILocation(line: 659, column: 13, scope: !366)
!1312 = !DILocation(line: 659, column: 41, scope: !366)
!1313 = !DILocation(line: 660, column: 1, scope: !366)
!1314 = !DILocation(line: 81, column: 22, scope: !372)
!1315 = !DILocation(line: 81, column: 29, scope: !372)
!1316 = !DILocation(line: 81, column: 38, scope: !372)
!1317 = !DILocation(line: 81, column: 50, scope: !372)
!1318 = !DILocation(line: 81, column: 58, scope: !372)
!1319 = !DILocation(line: 83, column: 3, scope: !372)
!1320 = !DILocation(line: 83, column: 8, scope: !372)
!1321 = !DILocation(line: 86, column: 7, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !372, file: !1, line: 86, column: 7)
!1323 = !DILocation(line: 86, column: 26, scope: !1322)
!1324 = !DILocation(line: 86, column: 7, scope: !372)
!1325 = !DILocation(line: 87, column: 10, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !1, line: 87, column: 9)
!1327 = distinct !DILexicalBlock(scope: !1322, file: !1, line: 86, column: 36)
!1328 = !DILocation(line: 87, column: 9, scope: !1327)
!1329 = !DILocation(line: 88, column: 7, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1326, file: !1, line: 87, column: 17)
!1331 = !{!1159, !1159, i64 0}
!1332 = !DILocation(line: 89, column: 20, scope: !1330)
!1333 = !DILocation(line: 84, column: 8, scope: !372)
!1334 = !DILocation(line: 90, column: 7, scope: !1330)
!1335 = !DILocation(line: 91, column: 7, scope: !1330)
!1336 = !DILocation(line: 92, column: 7, scope: !1330)
!1337 = !DILocation(line: 93, column: 5, scope: !1330)
!1338 = !DILocation(line: 95, column: 11, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !1, line: 95, column: 11)
!1340 = distinct !DILexicalBlock(scope: !1326, file: !1, line: 94, column: 10)
!1341 = !DILocation(line: 95, column: 11, scope: !1340)
!1342 = !DILocation(line: 101, column: 32, scope: !1340)
!1343 = !DILocation(line: 96, column: 10, scope: !1339)
!1344 = !DILocation(line: 97, column: 3, scope: !1339)
!1345 = !DILocation(line: 96, column: 2, scope: !1339)
!1346 = !DILocation(line: 100, column: 2, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1340, file: !1, line: 99, column: 10)
!1348 = !DILocation(line: 101, column: 17, scope: !1340)
!1349 = !DILocation(line: 101, column: 46, scope: !1340)
!1350 = !DILocation(line: 101, column: 7, scope: !1347)
!1351 = !DILocation(line: 105, column: 16, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !1, line: 105, column: 16)
!1353 = distinct !DILexicalBlock(scope: !1340, file: !1, line: 103, column: 11)
!1354 = !DILocation(line: 105, column: 16, scope: !1353)
!1355 = !DILocation(line: 106, column: 10, scope: !1352)
!1356 = !DILocation(line: 106, column: 2, scope: !1352)
!1357 = !DILocation(line: 109, column: 1, scope: !372)
!1358 = !DILocation(line: 374, column: 28, scope: !386)
!1359 = !DILocation(line: 374, column: 45, scope: !386)
!1360 = !DILocation(line: 374, column: 58, scope: !386)
!1361 = !DILocation(line: 379, column: 8, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !386, file: !1, line: 379, column: 7)
!1363 = !DILocation(line: 379, column: 7, scope: !386)
!1364 = !DILocation(line: 380, column: 17, scope: !1362)
!1365 = !DILocation(line: 380, column: 45, scope: !1362)
!1366 = !{!1367, !1159, i64 0}
!1367 = !{!"", !1159, i64 0, !1159, i64 8, !1162, i64 16, !1162, i64 20, !1162, i64 24, !1368, i64 32, !1162, i64 40, !1159, i64 48}
!1368 = !{!"long", !1160, i64 0}
!1369 = !DILocation(line: 380, column: 5, scope: !1362)
!1370 = !DILocation(line: 381, column: 3, scope: !386)
!1371 = !DILocation(line: 455, column: 5, scope: !511)
!1372 = !DILocation(line: 455, column: 5, scope: !513)
!1373 = !DILocation(line: 366, column: 32, scope: !872, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 390, column: 5, scope: !515)
!1375 = !DILocation(line: 366, column: 45, scope: !872, inlinedAt: !1374)
!1376 = !DILocation(line: 368, column: 3, scope: !872, inlinedAt: !1374)
!1377 = !DILocation(line: 369, column: 3, scope: !872, inlinedAt: !1374)
!1378 = !DILocation(line: 370, column: 3, scope: !872, inlinedAt: !1374)
!1379 = !DILocation(line: 371, column: 3, scope: !872, inlinedAt: !1374)
!1380 = !DILocation(line: 393, column: 5, scope: !515)
!1381 = !DILocation(line: 394, column: 5, scope: !515)
!1382 = !DILocation(line: 395, column: 5, scope: !515)
!1383 = !DILocation(line: 398, column: 5, scope: !515)
!1384 = !DILocation(line: 399, column: 5, scope: !515)
!1385 = !DILocation(line: 400, column: 5, scope: !515)
!1386 = !DILocation(line: 403, column: 5, scope: !515)
!1387 = !DILocation(line: 404, column: 5, scope: !515)
!1388 = !DILocation(line: 405, column: 5, scope: !515)
!1389 = !DILocation(line: 410, column: 5, scope: !515)
!1390 = !DILocation(line: 411, column: 5, scope: !515)
!1391 = !DILocation(line: 412, column: 5, scope: !515)
!1392 = !DILocation(line: 413, column: 5, scope: !515)
!1393 = !DILocation(line: 414, column: 5, scope: !515)
!1394 = !DILocation(line: 415, column: 5, scope: !515)
!1395 = !DILocation(line: 418, column: 5, scope: !515)
!1396 = !DILocation(line: 419, column: 5, scope: !515)
!1397 = !DILocation(line: 422, column: 5, scope: !515)
!1398 = !DILocation(line: 423, column: 5, scope: !515)
!1399 = !DILocation(line: 424, column: 5, scope: !515)
!1400 = !DILocation(line: 425, column: 5, scope: !515)
!1401 = !DILocation(line: 428, column: 5, scope: !515)
!1402 = !DILocation(line: 429, column: 5, scope: !515)
!1403 = !DILocation(line: 430, column: 5, scope: !515)
!1404 = !DILocation(line: 431, column: 5, scope: !515)
!1405 = !DILocation(line: 432, column: 5, scope: !515)
!1406 = !DILocation(line: 435, column: 5, scope: !515)
!1407 = !DILocation(line: 436, column: 5, scope: !515)
!1408 = !DILocation(line: 437, column: 5, scope: !515)
!1409 = !DILocation(line: 438, column: 5, scope: !515)
!1410 = !DILocation(line: 439, column: 5, scope: !515)
!1411 = !DILocation(line: 440, column: 5, scope: !515)
!1412 = !DILocation(line: 443, column: 5, scope: !515)
!1413 = !DILocation(line: 444, column: 5, scope: !515)
!1414 = !DILocation(line: 445, column: 5, scope: !515)
!1415 = !DILocation(line: 446, column: 5, scope: !515)
!1416 = !DILocation(line: 447, column: 5, scope: !515)
!1417 = !DILocation(line: 448, column: 5, scope: !515)
!1418 = !DILocation(line: 451, column: 5, scope: !515)
!1419 = !DILocation(line: 452, column: 5, scope: !515)
!1420 = !DILocation(line: 377, column: 8, scope: !386)
!1421 = !DILocation(line: 455, column: 5, scope: !512)
!1422 = !DILocation(line: 459, column: 5, scope: !515)
!1423 = !DILocation(line: 460, column: 5, scope: !515)
!1424 = !DILocation(line: 463, column: 5, scope: !515)
!1425 = !DILocation(line: 464, column: 5, scope: !515)
!1426 = !DILocation(line: 467, column: 5, scope: !515)
!1427 = !DILocation(line: 472, column: 5, scope: !515)
!1428 = !DILocation(line: 473, column: 5, scope: !515)
!1429 = !DILocation(line: 477, column: 5, scope: !515)
!1430 = !DILocation(line: 478, column: 5, scope: !515)
!1431 = !DILocation(line: 479, column: 5, scope: !515)
!1432 = !DILocation(line: 483, column: 9, scope: !515)
!1433 = !DILocation(line: 483, column: 37, scope: !515)
!1434 = !DILocation(line: 482, column: 5, scope: !515)
!1435 = !DILocation(line: 484, column: 3, scope: !515)
!1436 = !DILocation(line: 485, column: 7, scope: !386)
!1437 = !DILocation(line: 486, column: 5, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !386, file: !1, line: 485, column: 7)
!1439 = !DILocation(line: 487, column: 1, scope: !386)
!1440 = !DILocation(line: 858, column: 20, scope: !519)
!1441 = !DILocation(line: 858, column: 29, scope: !519)
!1442 = !DILocation(line: 860, column: 10, scope: !519)
!1443 = !DILocation(line: 860, column: 3, scope: !519)
!1444 = !DILocation(line: 863, column: 20, scope: !525)
!1445 = !DILocation(line: 865, column: 3, scope: !525)
!1446 = !DILocation(line: 866, column: 1, scope: !525)
!1447 = !DILocation(line: 868, column: 27, scope: !530)
!1448 = !DILocation(line: 868, column: 43, scope: !530)
!1449 = !DILocation(line: 858, column: 20, scope: !519, inlinedAt: !1450)
!1450 = distinct !DILocation(line: 872, column: 8, scope: !530)
!1451 = !DILocation(line: 858, column: 29, scope: !519, inlinedAt: !1450)
!1452 = !DILocation(line: 860, column: 10, scope: !519, inlinedAt: !1450)
!1453 = !DILocation(line: 870, column: 7, scope: !530)
!1454 = !DILocation(line: 873, column: 3, scope: !530)
!1455 = !DILocation(line: 863, column: 20, scope: !525, inlinedAt: !1456)
!1456 = distinct !DILocation(line: 874, column: 3, scope: !530)
!1457 = !DILocation(line: 865, column: 3, scope: !525, inlinedAt: !1456)
!1458 = !DILocation(line: 875, column: 1, scope: !530)
!1459 = !DILocation(line: 724, column: 30, scope: !878)
!1460 = !DILocation(line: 724, column: 38, scope: !878)
!1461 = !DILocation(line: 724, column: 57, scope: !878)
!1462 = !DILocation(line: 726, column: 3, scope: !878)
!1463 = !DILocation(line: 726, column: 9, scope: !878)
!1464 = !DILocation(line: 730, column: 3, scope: !878)
!1465 = !DILocation(line: 731, column: 23, scope: !878)
!1466 = !DILocation(line: 731, column: 3, scope: !878)
!1467 = !DILocation(line: 728, column: 9, scope: !878)
!1468 = !DILocation(line: 734, column: 13, scope: !878)
!1469 = !{!1162, !1162, i64 0}
!1470 = !DILocation(line: 735, column: 7, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !878, file: !1, line: 735, column: 7)
!1472 = !DILocation(line: 735, column: 7, scope: !878)
!1473 = !DILocation(line: 736, column: 5, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1471, file: !1, line: 735, column: 14)
!1475 = !DILocation(line: 737, column: 9, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1474, file: !1, line: 737, column: 9)
!1477 = !DILocation(line: 737, column: 9, scope: !1474)
!1478 = !DILocation(line: 741, column: 5, scope: !1476)
!1479 = !DILocation(line: 738, column: 7, scope: !1476)
!1480 = !DILocation(line: 742, column: 5, scope: !1474)
!1481 = !DILocation(line: 743, column: 16, scope: !1474)
!1482 = !DILocation(line: 743, column: 26, scope: !1474)
!1483 = !DILocation(line: 727, column: 9, scope: !878)
!1484 = !DILocation(line: 744, column: 38, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1474, file: !1, line: 744, column: 9)
!1486 = !DILocation(line: 747, column: 5, scope: !1485)
!1487 = !DILocation(line: 747, column: 25, scope: !1485)
!1488 = !DILocation(line: 745, column: 7, scope: !1485)
!1489 = !DILocation(line: 748, column: 5, scope: !1474)
!1490 = !DILocation(line: 763, column: 3, scope: !878)
!1491 = !DILocation(line: 755, column: 5, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1471, file: !1, line: 754, column: 8)
!1493 = !DILocation(line: 757, column: 5, scope: !1492)
!1494 = !DILocation(line: 758, column: 5, scope: !1492)
!1495 = !DILocation(line: 759, column: 18, scope: !1492)
!1496 = !DILocation(line: 764, column: 8, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !878, file: !1, line: 764, column: 7)
!1498 = !DILocation(line: 764, column: 50, scope: !1497)
!1499 = !DILocation(line: 767, column: 3, scope: !1497)
!1500 = !DILocation(line: 767, column: 23, scope: !1497)
!1501 = !DILocation(line: 766, column: 5, scope: !1497)
!1502 = !DILocation(line: 769, column: 3, scope: !878)
!1503 = !DILocation(line: 770, column: 3, scope: !878)
!1504 = !DILocation(line: 771, column: 3, scope: !878)
!1505 = !DILocation(line: 772, column: 3, scope: !878)
!1506 = !DILocation(line: 773, column: 3, scope: !878)
!1507 = !DILocation(line: 774, column: 3, scope: !878)
!1508 = !DILocation(line: 775, column: 3, scope: !878)
!1509 = !DILocation(line: 776, column: 3, scope: !878)
!1510 = !DILocation(line: 777, column: 3, scope: !878)
!1511 = !DILocation(line: 778, column: 3, scope: !878)
!1512 = !DILocation(line: 779, column: 3, scope: !878)
!1513 = !DILocation(line: 780, column: 1, scope: !878)
!1514 = !DILocation(line: 877, column: 22, scope: !552)
!1515 = !DILocation(line: 877, column: 29, scope: !552)
!1516 = !DILocation(line: 877, column: 39, scope: !552)
!1517 = !DILocation(line: 877, column: 46, scope: !552)
!1518 = !DILocation(line: 878, column: 21, scope: !552)
!1519 = !DILocation(line: 878, column: 30, scope: !552)
!1520 = !DILocation(line: 878, column: 38, scope: !552)
!1521 = !DILocation(line: 879, column: 15, scope: !552)
!1522 = !DILocation(line: 879, column: 23, scope: !552)
!1523 = !DILocation(line: 879, column: 31, scope: !552)
!1524 = !DILocation(line: 879, column: 45, scope: !552)
!1525 = !DILocation(line: 858, column: 20, scope: !519, inlinedAt: !1526)
!1526 = distinct !DILocation(line: 883, column: 8, scope: !552)
!1527 = !DILocation(line: 858, column: 29, scope: !519, inlinedAt: !1526)
!1528 = !DILocation(line: 860, column: 10, scope: !519, inlinedAt: !1526)
!1529 = !DILocation(line: 881, column: 7, scope: !552)
!1530 = !DILocation(line: 884, column: 3, scope: !552)
!1531 = !DILocation(line: 863, column: 20, scope: !525, inlinedAt: !1532)
!1532 = distinct !DILocation(line: 885, column: 3, scope: !552)
!1533 = !DILocation(line: 865, column: 3, scope: !525, inlinedAt: !1532)
!1534 = !DILocation(line: 886, column: 1, scope: !552)
!1535 = !DILocation(line: 782, column: 24, scope: !888)
!1536 = !DILocation(line: 782, column: 32, scope: !888)
!1537 = !DILocation(line: 782, column: 43, scope: !888)
!1538 = !DILocation(line: 782, column: 54, scope: !888)
!1539 = !DILocation(line: 782, column: 62, scope: !888)
!1540 = !DILocation(line: 783, column: 18, scope: !888)
!1541 = !DILocation(line: 783, column: 27, scope: !888)
!1542 = !DILocation(line: 783, column: 36, scope: !888)
!1543 = !DILocation(line: 784, column: 12, scope: !888)
!1544 = !DILocation(line: 784, column: 20, scope: !888)
!1545 = !DILocation(line: 784, column: 28, scope: !888)
!1546 = !DILocation(line: 784, column: 42, scope: !888)
!1547 = !DILocation(line: 786, column: 3, scope: !888)
!1548 = !DILocation(line: 787, column: 3, scope: !888)
!1549 = !DILocation(line: 788, column: 3, scope: !888)
!1550 = !DILocation(line: 790, column: 8, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !888, file: !1, line: 790, column: 7)
!1552 = !DILocation(line: 790, column: 7, scope: !888)
!1553 = !DILocation(line: 791, column: 18, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1551, file: !1, line: 790, column: 15)
!1555 = !DILocation(line: 791, column: 9, scope: !1554)
!1556 = !DILocation(line: 791, column: 16, scope: !1554)
!1557 = !{!1558, !1162, i64 24}
!1558 = !{!"", !1162, i64 0, !1162, i64 4, !1162, i64 8, !1162, i64 12, !1162, i64 16, !1162, i64 20, !1162, i64 24, !1162, i64 28, !1280, i64 32, !1280, i64 36}
!1559 = !DILocation(line: 792, column: 18, scope: !1554)
!1560 = !DILocation(line: 792, column: 9, scope: !1554)
!1561 = !DILocation(line: 792, column: 16, scope: !1554)
!1562 = !{!1558, !1162, i64 28}
!1563 = !DILocation(line: 793, column: 18, scope: !1554)
!1564 = !DILocation(line: 793, column: 9, scope: !1554)
!1565 = !DILocation(line: 793, column: 16, scope: !1554)
!1566 = !{!1558, !1280, i64 32}
!1567 = !DILocation(line: 794, column: 18, scope: !1554)
!1568 = !DILocation(line: 794, column: 9, scope: !1554)
!1569 = !DILocation(line: 794, column: 16, scope: !1554)
!1570 = !{!1558, !1280, i64 36}
!1571 = !DILocation(line: 795, column: 21, scope: !1554)
!1572 = !DILocation(line: 796, column: 21, scope: !1554)
!1573 = !DILocation(line: 797, column: 21, scope: !1554)
!1574 = !DILocation(line: 798, column: 21, scope: !1554)
!1575 = !DILocation(line: 798, column: 9, scope: !1554)
!1576 = !DILocation(line: 798, column: 14, scope: !1554)
!1577 = !{!1558, !1162, i64 16}
!1578 = !DILocation(line: 799, column: 21, scope: !1554)
!1579 = !DILocation(line: 799, column: 9, scope: !1554)
!1580 = !DILocation(line: 799, column: 14, scope: !1554)
!1581 = !{!1558, !1162, i64 20}
!1582 = !DILocation(line: 800, column: 21, scope: !1554)
!1583 = !DILocation(line: 800, column: 9, scope: !1554)
!1584 = !DILocation(line: 795, column: 14, scope: !1554)
!1585 = !DILocation(line: 786, column: 15, scope: !888)
!1586 = !DILocation(line: 803, column: 3, scope: !888)
!1587 = !DILocation(line: 814, column: 3, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !888, file: !1, line: 814, column: 3)
!1589 = !DILocation(line: 806, column: 19, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !1, line: 805, column: 14)
!1591 = distinct !DILexicalBlock(scope: !888, file: !1, line: 805, column: 7)
!1592 = !DILocation(line: 806, column: 13, scope: !1590)
!1593 = !DILocation(line: 807, column: 19, scope: !1590)
!1594 = !DILocation(line: 807, column: 13, scope: !1590)
!1595 = !DILocation(line: 808, column: 19, scope: !1590)
!1596 = !DILocation(line: 808, column: 13, scope: !1590)
!1597 = !DILocation(line: 809, column: 19, scope: !1590)
!1598 = !DILocation(line: 809, column: 13, scope: !1590)
!1599 = !DILocation(line: 816, column: 11, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !888, file: !1, line: 816, column: 7)
!1601 = !DILocation(line: 815, column: 3, scope: !888)
!1602 = !{!1558, !1162, i64 4}
!1603 = !DILocation(line: 816, column: 7, scope: !1600)
!1604 = !DILocation(line: 816, column: 7, scope: !888)
!1605 = !DILocation(line: 816, column: 17, scope: !1600)
!1606 = !DILocation(line: 818, column: 3, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !888, file: !1, line: 818, column: 3)
!1608 = !{!1558, !1162, i64 0}
!1609 = !DILocation(line: 818, column: 3, scope: !888)
!1610 = !DILocation(line: 819, column: 3, scope: !888)
!1611 = !DILocation(line: 820, column: 11, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !888, file: !1, line: 820, column: 7)
!1613 = !DILocation(line: 820, column: 7, scope: !1612)
!1614 = !DILocation(line: 820, column: 7, scope: !888)
!1615 = !DILocation(line: 821, column: 9, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 820, column: 16)
!1617 = !DILocation(line: 822, column: 7, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1616, file: !1, line: 821, column: 9)
!1619 = !DILocation(line: 787, column: 15, scope: !888)
!1620 = !DILocation(line: 824, column: 7, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1618, file: !1, line: 823, column: 10)
!1622 = !DILocation(line: 825, column: 7, scope: !1621)
!1623 = !DILocation(line: 826, column: 7, scope: !1621)
!1624 = !DILocation(line: 829, column: 3, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !888, file: !1, line: 829, column: 3)
!1626 = !DILocation(line: 830, column: 3, scope: !888)
!1627 = !DILocation(line: 831, column: 11, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !888, file: !1, line: 831, column: 7)
!1629 = !{!1558, !1162, i64 8}
!1630 = !DILocation(line: 831, column: 7, scope: !1628)
!1631 = !DILocation(line: 831, column: 7, scope: !888)
!1632 = !DILocation(line: 832, column: 9, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1628, file: !1, line: 831, column: 17)
!1634 = !DILocation(line: 833, column: 7, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1633, file: !1, line: 832, column: 9)
!1636 = !DILocation(line: 788, column: 15, scope: !888)
!1637 = !DILocation(line: 835, column: 7, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1635, file: !1, line: 834, column: 10)
!1639 = !DILocation(line: 836, column: 7, scope: !1638)
!1640 = !DILocation(line: 839, column: 3, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !888, file: !1, line: 839, column: 3)
!1642 = !DILocation(line: 840, column: 3, scope: !888)
!1643 = !DILocation(line: 841, column: 11, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !888, file: !1, line: 841, column: 7)
!1645 = !{!1558, !1162, i64 12}
!1646 = !DILocation(line: 841, column: 7, scope: !1644)
!1647 = !DILocation(line: 841, column: 7, scope: !888)
!1648 = !DILocation(line: 841, column: 15, scope: !1644)
!1649 = !DILocation(line: 843, column: 3, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !888, file: !1, line: 843, column: 3)
!1651 = !DILocation(line: 843, column: 3, scope: !888)
!1652 = !DILocation(line: 844, column: 3, scope: !888)
!1653 = !DILocation(line: 845, column: 11, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !888, file: !1, line: 845, column: 7)
!1655 = !DILocation(line: 845, column: 7, scope: !1654)
!1656 = !DILocation(line: 845, column: 7, scope: !888)
!1657 = !DILocation(line: 845, column: 15, scope: !1654)
!1658 = !DILocation(line: 847, column: 3, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !888, file: !1, line: 847, column: 3)
!1660 = !DILocation(line: 847, column: 3, scope: !888)
!1661 = !DILocation(line: 848, column: 3, scope: !888)
!1662 = !DILocation(line: 849, column: 11, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !888, file: !1, line: 849, column: 7)
!1664 = !DILocation(line: 849, column: 7, scope: !1663)
!1665 = !DILocation(line: 849, column: 7, scope: !888)
!1666 = !DILocation(line: 849, column: 15, scope: !1663)
!1667 = !DILocation(line: 850, column: 1, scope: !888)
!1668 = !DILocation(line: 888, column: 21, scope: !800)
!1669 = !DILocation(line: 888, column: 29, scope: !800)
!1670 = !DILocation(line: 888, column: 40, scope: !800)
!1671 = !DILocation(line: 888, column: 48, scope: !800)
!1672 = !DILocation(line: 889, column: 20, scope: !800)
!1673 = !DILocation(line: 889, column: 29, scope: !800)
!1674 = !DILocation(line: 889, column: 38, scope: !800)
!1675 = !DILocation(line: 890, column: 14, scope: !800)
!1676 = !DILocation(line: 890, column: 22, scope: !800)
!1677 = !DILocation(line: 890, column: 30, scope: !800)
!1678 = !DILocation(line: 890, column: 44, scope: !800)
!1679 = !DILocation(line: 858, column: 20, scope: !519, inlinedAt: !1680)
!1680 = distinct !DILocation(line: 894, column: 8, scope: !800)
!1681 = !DILocation(line: 858, column: 29, scope: !519, inlinedAt: !1680)
!1682 = !DILocation(line: 860, column: 10, scope: !519, inlinedAt: !1680)
!1683 = !DILocation(line: 892, column: 7, scope: !800)
!1684 = !DILocation(line: 895, column: 3, scope: !800)
!1685 = !DILocation(line: 863, column: 20, scope: !525, inlinedAt: !1686)
!1686 = distinct !DILocation(line: 896, column: 3, scope: !800)
!1687 = !DILocation(line: 865, column: 3, scope: !525, inlinedAt: !1686)
!1688 = !DILocation(line: 897, column: 1, scope: !800)
!1689 = !DILocation(line: 899, column: 21, scope: !816)
!1690 = !DILocation(line: 899, column: 28, scope: !816)
!1691 = !DILocation(line: 899, column: 38, scope: !816)
!1692 = !DILocation(line: 899, column: 45, scope: !816)
!1693 = !DILocation(line: 900, column: 15, scope: !816)
!1694 = !DILocation(line: 900, column: 24, scope: !816)
!1695 = !DILocation(line: 900, column: 32, scope: !816)
!1696 = !DILocation(line: 901, column: 9, scope: !816)
!1697 = !DILocation(line: 901, column: 17, scope: !816)
!1698 = !DILocation(line: 901, column: 25, scope: !816)
!1699 = !DILocation(line: 901, column: 39, scope: !816)
!1700 = !DILocation(line: 903, column: 3, scope: !816)
!1701 = !DILocation(line: 904, column: 1, scope: !816)
!1702 = !DILocation(line: 907, column: 20, scope: !831)
!1703 = !DILocation(line: 907, column: 28, scope: !831)
!1704 = !DILocation(line: 907, column: 39, scope: !831)
!1705 = !DILocation(line: 907, column: 47, scope: !831)
!1706 = !DILocation(line: 908, column: 21, scope: !831)
!1707 = !DILocation(line: 908, column: 30, scope: !831)
!1708 = !DILocation(line: 908, column: 39, scope: !831)
!1709 = !DILocation(line: 909, column: 15, scope: !831)
!1710 = !DILocation(line: 909, column: 23, scope: !831)
!1711 = !DILocation(line: 909, column: 31, scope: !831)
!1712 = !DILocation(line: 909, column: 45, scope: !831)
!1713 = !DILocation(line: 911, column: 3, scope: !831)
!1714 = !DILocation(line: 912, column: 1, scope: !831)
!1715 = !DILocation(line: 914, column: 20, scope: !846)
!1716 = !DILocation(line: 916, column: 11, scope: !846)
!1717 = !DILocation(line: 916, column: 3, scope: !846)
!1718 = !DILocation(line: 920, column: 5, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !846, file: !1, line: 916, column: 25)
!1720 = !DILocation(line: 924, column: 1, scope: !846)
!1721 = !DILocation(line: 926, column: 26, scope: !851)
!1722 = !DILocation(line: 926, column: 39, scope: !851)
!1723 = !DILocation(line: 926, column: 57, scope: !851)
!1724 = !DILocation(line: 927, column: 13, scope: !851)
!1725 = !DILocation(line: 927, column: 22, scope: !851)
!1726 = !DILocation(line: 927, column: 31, scope: !851)
!1727 = !DILocation(line: 927, column: 40, scope: !851)
!1728 = !DILocation(line: 929, column: 3, scope: !851)
!1729 = !DILocation(line: 914, column: 20, scope: !846, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 934, column: 8, scope: !851)
!1731 = !DILocation(line: 916, column: 11, scope: !846, inlinedAt: !1730)
!1732 = !DILocation(line: 916, column: 3, scope: !846, inlinedAt: !1730)
!1733 = !DILocation(line: 920, column: 5, scope: !1719, inlinedAt: !1730)
!1734 = !DILocation(line: 932, column: 16, scope: !851)
!1735 = !DILocation(line: 935, column: 7, scope: !851)
!1736 = !DILocation(line: 929, column: 16, scope: !851)
!1737 = !DILocation(line: 868, column: 27, scope: !530, inlinedAt: !1738)
!1738 = distinct !DILocation(line: 936, column: 5, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !1, line: 935, column: 13)
!1740 = distinct !DILexicalBlock(scope: !851, file: !1, line: 935, column: 7)
!1741 = !DILocation(line: 868, column: 43, scope: !530, inlinedAt: !1738)
!1742 = !DILocation(line: 858, column: 20, scope: !519, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 872, column: 8, scope: !530, inlinedAt: !1738)
!1744 = !DILocation(line: 858, column: 29, scope: !519, inlinedAt: !1743)
!1745 = !DILocation(line: 860, column: 10, scope: !519, inlinedAt: !1743)
!1746 = !DILocation(line: 870, column: 7, scope: !530, inlinedAt: !1738)
!1747 = !DILocation(line: 873, column: 3, scope: !530, inlinedAt: !1738)
!1748 = !DILocation(line: 863, column: 20, scope: !525, inlinedAt: !1749)
!1749 = distinct !DILocation(line: 874, column: 3, scope: !530, inlinedAt: !1738)
!1750 = !DILocation(line: 865, column: 3, scope: !525, inlinedAt: !1749)
!1751 = !DILocation(line: 937, column: 9, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1739, file: !1, line: 937, column: 9)
!1753 = !DILocation(line: 937, column: 9, scope: !1739)
!1754 = !DILocation(line: 938, column: 7, scope: !1752)
!1755 = !DILocation(line: 939, column: 9, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1739, file: !1, line: 939, column: 9)
!1757 = !DILocation(line: 939, column: 9, scope: !1739)
!1758 = !DILocation(line: 940, column: 7, scope: !1756)
!1759 = !DILocation(line: 942, column: 7, scope: !1739)
!1760 = !DILocation(line: 942, column: 26, scope: !1739)
!1761 = !DILocation(line: 942, column: 29, scope: !1739)
!1762 = !DILocation(line: 942, column: 48, scope: !1739)
!1763 = !DILocation(line: 930, column: 16, scope: !851)
!1764 = !DILocation(line: 930, column: 18, scope: !851)
!1765 = !DILocation(line: 931, column: 16, scope: !851)
!1766 = !DILocation(line: 931, column: 23, scope: !851)
!1767 = !DILocation(line: 888, column: 21, scope: !800, inlinedAt: !1768)
!1768 = distinct !DILocation(line: 941, column: 5, scope: !1739)
!1769 = !DILocation(line: 888, column: 29, scope: !800, inlinedAt: !1768)
!1770 = !DILocation(line: 888, column: 40, scope: !800, inlinedAt: !1768)
!1771 = !DILocation(line: 888, column: 48, scope: !800, inlinedAt: !1768)
!1772 = !DILocation(line: 889, column: 20, scope: !800, inlinedAt: !1768)
!1773 = !DILocation(line: 889, column: 29, scope: !800, inlinedAt: !1768)
!1774 = !DILocation(line: 889, column: 38, scope: !800, inlinedAt: !1768)
!1775 = !DILocation(line: 890, column: 14, scope: !800, inlinedAt: !1768)
!1776 = !DILocation(line: 890, column: 22, scope: !800, inlinedAt: !1768)
!1777 = !DILocation(line: 890, column: 30, scope: !800, inlinedAt: !1768)
!1778 = !DILocation(line: 890, column: 44, scope: !800, inlinedAt: !1768)
!1779 = !DILocation(line: 858, column: 20, scope: !519, inlinedAt: !1780)
!1780 = distinct !DILocation(line: 894, column: 8, scope: !800, inlinedAt: !1768)
!1781 = !DILocation(line: 858, column: 29, scope: !519, inlinedAt: !1780)
!1782 = !DILocation(line: 860, column: 10, scope: !519, inlinedAt: !1780)
!1783 = !DILocation(line: 892, column: 7, scope: !800, inlinedAt: !1768)
!1784 = !DILocation(line: 895, column: 3, scope: !800, inlinedAt: !1768)
!1785 = !DILocation(line: 863, column: 20, scope: !525, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 896, column: 3, scope: !800, inlinedAt: !1768)
!1787 = !DILocation(line: 865, column: 3, scope: !525, inlinedAt: !1786)
!1788 = !DILocation(line: 943, column: 5, scope: !1739)
!1789 = !{!1790, !1159, i64 0}
!1790 = !{!"", !1159, i64 0, !1791, i64 8, !1792, i64 45800, !1160, i64 47080, !1794, i64 50248}
!1791 = !{!"", !1162, i64 0, !1162, i64 4, !1162, i64 8, !1159, i64 16, !1159, i64 24, !1160, i64 32}
!1792 = !{!"", !1162, i64 0, !1159, i64 8, !1159, i64 16, !1159, i64 24, !1159, i64 32, !1162, i64 40, !1159, i64 48, !1162, i64 56, !1159, i64 64, !1793, i64 72, !1160, i64 1128, !1159, i64 1272}
!1793 = !{!"", !1160, i64 0, !1162, i64 1024, !1159, i64 1032, !1162, i64 1040, !1159, i64 1048}
!1794 = !{!"", !1162, i64 0, !1159, i64 8}
!1795 = !DILocation(line: 944, column: 3, scope: !1739)
!1796 = !DILocation(line: 946, column: 5, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1740, file: !1, line: 945, column: 8)
!1798 = !DILocation(line: 947, column: 24, scope: !1797)
!1799 = !DILocation(line: 947, column: 30, scope: !1797)
!1800 = !DILocation(line: 947, column: 5, scope: !1797)
!1801 = !DILocation(line: 949, column: 5, scope: !1797)
!1802 = !DILocation(line: 950, column: 9, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1797, file: !1, line: 950, column: 9)
!1804 = !DILocation(line: 950, column: 9, scope: !1797)
!1805 = !DILocation(line: 951, column: 7, scope: !1803)
!1806 = !DILocation(line: 952, column: 66, scope: !1797)
!1807 = !DILocation(line: 952, column: 44, scope: !1797)
!1808 = !DILocation(line: 952, column: 47, scope: !1797)
!1809 = !DILocation(line: 952, column: 5, scope: !1797)
!1810 = !DILocation(line: 957, column: 9, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1797, file: !1, line: 957, column: 9)
!1812 = !DILocation(line: 958, column: 17, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !1, line: 958, column: 7)
!1814 = distinct !DILexicalBlock(scope: !1811, file: !1, line: 958, column: 7)
!1815 = !DILocation(line: 957, column: 9, scope: !1797)
!1816 = !DILocation(line: 960, column: 44, scope: !1813)
!1817 = !DILocation(line: 960, column: 25, scope: !1813)
!1818 = !DILocation(line: 961, column: 18, scope: !1813)
!1819 = !{!1790, !1159, i64 45808}
!1820 = !DILocation(line: 958, column: 7, scope: !1814)
!1821 = !DILocation(line: 960, column: 52, scope: !1813)
!1822 = !{!1823, !1162, i64 24}
!1823 = !{!"", !1280, i64 0, !1280, i64 4, !1280, i64 8, !1280, i64 12, !1163, i64 16, !1163, i64 18, !1162, i64 20, !1162, i64 24, !1160, i64 28, !1160, i64 37}
!1824 = !DILocation(line: 960, column: 14, scope: !1813)
!1825 = !{!1790, !1159, i64 45848}
!1826 = !DILocation(line: 960, column: 13, scope: !1813)
!1827 = !{!1790, !1159, i64 45816}
!1828 = !DILocation(line: 961, column: 7, scope: !1813)
!1829 = !DILocation(line: 961, column: 6, scope: !1813)
!1830 = !DILocation(line: 960, column: 4, scope: !1813)
!1831 = !DILocation(line: 959, column: 13, scope: !1813)
!1832 = !DILocation(line: 959, column: 21, scope: !1813)
!1833 = !DILocation(line: 959, column: 23, scope: !1813)
!1834 = !{!1823, !1280, i64 0}
!1835 = !DILocation(line: 958, column: 18, scope: !1813)
!1836 = !DILocation(line: 962, column: 15, scope: !1797)
!1837 = !DILocation(line: 962, column: 21, scope: !1797)
!1838 = !{!1790, !1162, i64 8}
!1839 = !DILocation(line: 966, column: 1, scope: !851)
!1840 = !DILocation(line: 118, column: 37, scope: !907)
!1841 = !DILocation(line: 118, column: 45, scope: !907)
!1842 = !DILocation(line: 120, column: 17, scope: !907)
!1843 = !DILocation(line: 121, column: 8, scope: !907)
!1844 = !DILocation(line: 123, column: 8, scope: !907)
!1845 = !DILocation(line: 125, column: 7, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !907, file: !1, line: 125, column: 7)
!1847 = !DILocation(line: 125, column: 20, scope: !1846)
!1848 = !DILocation(line: 125, column: 7, scope: !907)
!1849 = !DILocation(line: 127, column: 13, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1846, file: !1, line: 125, column: 36)
!1851 = !DILocation(line: 127, column: 5, scope: !1850)
!1852 = !DILocation(line: 131, column: 7, scope: !930)
!1853 = !DILocation(line: 131, column: 20, scope: !930)
!1854 = !DILocation(line: 131, column: 7, scope: !907)
!1855 = !DILocation(line: 133, column: 5, scope: !929)
!1856 = !DILocation(line: 134, column: 5, scope: !929)
!1857 = !DILocation(line: 135, column: 5, scope: !929)
!1858 = !DILocation(line: 136, column: 9, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !929, file: !1, line: 136, column: 9)
!1860 = !DILocation(line: 136, column: 22, scope: !1859)
!1861 = !DILocation(line: 136, column: 28, scope: !1859)
!1862 = !DILocation(line: 136, column: 35, scope: !1859)
!1863 = !{!1864, !1162, i64 100}
!1864 = !{!"", !1162, i64 0, !1162, i64 4, !1162, i64 8, !1162, i64 12, !1162, i64 16, !1162, i64 20, !1162, i64 24, !1162, i64 28, !1162, i64 32, !1162, i64 36, !1162, i64 40, !1162, i64 44, !1162, i64 48, !1162, i64 52, !1280, i64 56, !1280, i64 60, !1280, i64 64, !1162, i64 68, !1162, i64 72, !1162, i64 76, !1162, i64 80, !1280, i64 84, !1162, i64 88, !1162, i64 92, !1162, i64 96, !1162, i64 100, !1162, i64 104, !1162, i64 108, !1162, i64 112, !1162, i64 116, !1280, i64 120, !1160, i64 124, !1160, i64 160, !1162, i64 196, !1280, i64 200, !1280, i64 204, !1162, i64 208, !1280, i64 212, !1280, i64 216, !1162, i64 220, !1280, i64 224, !1280, i64 228, !1280, i64 232, !1162, i64 236, !1280, i64 240, !1280, i64 244, !1162, i64 248, !1280, i64 252, !1280, i64 256, !1280, i64 260, !1280, i64 264, !1280, i64 268, !1162, i64 272, !1162, i64 276, !1162, i64 280, !1280, i64 284, !1280, i64 288, !1280, i64 292, !1162, i64 296, !1280, i64 300, !1280, i64 304, !1162, i64 308, !1162, i64 312, !1162, i64 316, !1162, i64 320, !1162, i64 324, !1280, i64 328, !1162, i64 332, !1280, i64 336, !1280, i64 340, !1162, i64 344, !1280, i64 348, !1162, i64 352, !1162, i64 356, !1162, i64 360, !1162, i64 364, !1280, i64 368, !1280, i64 372, !1280, i64 376, !1280, i64 380, !1865, i64 384, !1160, i64 448, !1160, i64 520}
!1865 = !{!"", !1162, i64 0, !1162, i64 4, !1162, i64 8, !1162, i64 12, !1159, i64 16, !1159, i64 24, !1159, i64 32, !1159, i64 40, !1159, i64 48, !1159, i64 56}
!1866 = !DILocation(line: 136, column: 40, scope: !1859)
!1867 = !DILocation(line: 136, column: 9, scope: !929)
!1868 = !DILocation(line: 137, column: 16, scope: !1859)
!1869 = !DILocation(line: 137, column: 7, scope: !1859)
!1870 = !DILocation(line: 138, column: 5, scope: !929)
!1871 = !DILocation(line: 139, column: 5, scope: !929)
!1872 = !DILocation(line: 140, column: 5, scope: !929)
!1873 = !DILocation(line: 141, column: 5, scope: !929)
!1874 = !DILocation(line: 142, column: 5, scope: !929)
!1875 = !DILocation(line: 143, column: 5, scope: !929)
!1876 = !DILocation(line: 144, column: 5, scope: !929)
!1877 = !DILocation(line: 145, column: 5, scope: !929)
!1878 = !DILocation(line: 146, column: 5, scope: !929)
!1879 = !DILocation(line: 147, column: 5, scope: !929)
!1880 = !DILocation(line: 148, column: 5, scope: !929)
!1881 = !DILocation(line: 149, column: 5, scope: !929)
!1882 = !DILocation(line: 150, column: 5, scope: !929)
!1883 = !DILocation(line: 151, column: 5, scope: !929)
!1884 = !DILocation(line: 152, column: 5, scope: !929)
!1885 = !DILocation(line: 153, column: 5, scope: !929)
!1886 = !DILocation(line: 154, column: 9, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !929, file: !1, line: 154, column: 9)
!1888 = !DILocation(line: 154, column: 22, scope: !1887)
!1889 = !DILocation(line: 154, column: 9, scope: !929)
!1890 = !DILocation(line: 155, column: 7, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1887, file: !1, line: 154, column: 28)
!1892 = !DILocation(line: 156, column: 7, scope: !1891)
!1893 = !DILocation(line: 158, column: 8, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !929, file: !1, line: 158, column: 8)
!1895 = !DILocation(line: 158, column: 21, scope: !1894)
!1896 = !DILocation(line: 158, column: 8, scope: !929)
!1897 = !DILocation(line: 159, column: 7, scope: !1894)
!1898 = !DILocation(line: 160, column: 5, scope: !929)
!1899 = !DILocation(line: 161, column: 5, scope: !929)
!1900 = !DILocation(line: 162, column: 5, scope: !929)
!1901 = !DILocation(line: 163, column: 5, scope: !929)
!1902 = !DILocation(line: 164, column: 5, scope: !929)
!1903 = !DILocation(line: 165, column: 5, scope: !929)
!1904 = !DILocation(line: 166, column: 5, scope: !929)
!1905 = !DILocation(line: 167, column: 5, scope: !929)
!1906 = !DILocation(line: 168, column: 5, scope: !929)
!1907 = !DILocation(line: 169, column: 5, scope: !929)
!1908 = !DILocation(line: 170, column: 5, scope: !929)
!1909 = !DILocation(line: 171, column: 5, scope: !929)
!1910 = !DILocation(line: 172, column: 5, scope: !929)
!1911 = !DILocation(line: 173, column: 5, scope: !929)
!1912 = !DILocation(line: 175, column: 9, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !929, file: !1, line: 175, column: 9)
!1914 = !DILocation(line: 175, column: 22, scope: !1913)
!1915 = !DILocation(line: 175, column: 9, scope: !929)
!1916 = !DILocation(line: 176, column: 7, scope: !1913)
!1917 = !DILocation(line: 178, column: 11, scope: !1913)
!1918 = !DILocation(line: 178, column: 25, scope: !1913)
!1919 = !{!1864, !1162, i64 88}
!1920 = !DILocation(line: 180, column: 9, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !929, file: !1, line: 180, column: 9)
!1922 = !DILocation(line: 180, column: 22, scope: !1921)
!1923 = !DILocation(line: 180, column: 9, scope: !929)
!1924 = !DILocation(line: 181, column: 11, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1921, file: !1, line: 180, column: 28)
!1926 = !DILocation(line: 181, column: 26, scope: !1925)
!1927 = !{!1864, !1162, i64 92}
!1928 = !DILocation(line: 182, column: 11, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1925, file: !1, line: 182, column: 11)
!1930 = !DILocation(line: 182, column: 23, scope: !1929)
!1931 = !DILocation(line: 182, column: 11, scope: !1925)
!1932 = !DILocation(line: 183, column: 2, scope: !1929)
!1933 = !DILocation(line: 186, column: 7, scope: !1921)
!1934 = !DILocation(line: 188, column: 5, scope: !929)
!1935 = !DILocation(line: 189, column: 5, scope: !929)
!1936 = !DILocation(line: 190, column: 5, scope: !929)
!1937 = !DILocation(line: 195, column: 9, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !929, file: !1, line: 195, column: 9)
!1939 = !DILocation(line: 195, column: 22, scope: !1938)
!1940 = !DILocation(line: 195, column: 9, scope: !929)
!1941 = !DILocation(line: 196, column: 7, scope: !1938)
!1942 = !DILocation(line: 197, column: 9, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !929, file: !1, line: 197, column: 9)
!1944 = !DILocation(line: 197, column: 22, scope: !1943)
!1945 = !DILocation(line: 197, column: 9, scope: !929)
!1946 = !DILocation(line: 198, column: 7, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1943, file: !1, line: 197, column: 28)
!1948 = !DILocation(line: 199, column: 11, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1947, file: !1, line: 199, column: 11)
!1950 = !DILocation(line: 199, column: 24, scope: !1949)
!1951 = !DILocation(line: 200, column: 10, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !1, line: 200, column: 6)
!1953 = distinct !DILexicalBlock(scope: !1949, file: !1, line: 199, column: 31)
!1954 = !DILocation(line: 199, column: 11, scope: !1947)
!1955 = !{!1864, !1162, i64 116}
!1956 = !DILocation(line: 200, column: 15, scope: !1952)
!1957 = !DILocation(line: 200, column: 6, scope: !1953)
!1958 = !DILocation(line: 201, column: 13, scope: !1952)
!1959 = !DILocation(line: 201, column: 4, scope: !1952)
!1960 = !DILocation(line: 202, column: 2, scope: !1953)
!1961 = !DILocation(line: 204, column: 16, scope: !1947)
!1962 = !DILocation(line: 206, column: 18, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1947, file: !1, line: 206, column: 10)
!1964 = !DILocation(line: 207, column: 6, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1963, file: !1, line: 206, column: 24)
!1966 = !DILocation(line: 206, column: 10, scope: !1947)
!1967 = !DILocation(line: 207, column: 9, scope: !1965)
!1968 = !{!1864, !1162, i64 112}
!1969 = !DILocation(line: 208, column: 10, scope: !1965)
!1970 = !DILocation(line: 209, column: 7, scope: !1965)
!1971 = !DILocation(line: 211, column: 9, scope: !1963)
!1972 = !DILocation(line: 214, column: 7, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1943, file: !1, line: 213, column: 10)
!1974 = !DILocation(line: 215, column: 7, scope: !1973)
!1975 = !DILocation(line: 217, column: 5, scope: !929)
!1976 = !DILocation(line: 218, column: 9, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !929, file: !1, line: 218, column: 9)
!1978 = !DILocation(line: 218, column: 22, scope: !1977)
!1979 = !DILocation(line: 218, column: 9, scope: !929)
!1980 = !DILocation(line: 219, column: 7, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1977, file: !1, line: 218, column: 29)
!1982 = !DILocation(line: 220, column: 17, scope: !1981)
!1983 = !DILocation(line: 334, column: 37, scope: !982, inlinedAt: !1984)
!1984 = distinct !DILocation(line: 220, column: 7, scope: !1981)
!1985 = !DILocation(line: 336, column: 14, scope: !982, inlinedAt: !1984)
!1986 = !DILocation(line: 341, column: 1, scope: !982, inlinedAt: !1984)
!1987 = !DILocation(line: 338, column: 22, scope: !982, inlinedAt: !1984)
!1988 = !DILocation(line: 120, column: 8, scope: !907)
!1989 = !DILocation(line: 221, column: 7, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1981, file: !1, line: 221, column: 7)
!1991 = !DILocation(line: 222, column: 20, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1990, file: !1, line: 221, column: 7)
!1993 = !DILocation(line: 222, column: 2, scope: !1992)
!1994 = !DILocation(line: 222, column: 18, scope: !1992)
!1995 = !DILocation(line: 224, column: 7, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1977, file: !1, line: 223, column: 12)
!1997 = !DILocation(line: 225, column: 7, scope: !1996)
!1998 = !DILocation(line: 226, column: 7, scope: !1996)
!1999 = !DILocation(line: 228, column: 9, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !929, file: !1, line: 228, column: 9)
!2001 = !DILocation(line: 228, column: 22, scope: !2000)
!2002 = !DILocation(line: 228, column: 9, scope: !929)
!2003 = !DILocation(line: 229, column: 7, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2000, file: !1, line: 228, column: 29)
!2005 = !DILocation(line: 230, column: 17, scope: !2004)
!2006 = !DILocation(line: 334, column: 37, scope: !982, inlinedAt: !2007)
!2007 = distinct !DILocation(line: 230, column: 7, scope: !2004)
!2008 = !DILocation(line: 336, column: 14, scope: !982, inlinedAt: !2007)
!2009 = !DILocation(line: 341, column: 1, scope: !982, inlinedAt: !2007)
!2010 = !DILocation(line: 338, column: 22, scope: !982, inlinedAt: !2007)
!2011 = !DILocation(line: 231, column: 7, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2004, file: !1, line: 231, column: 7)
!2013 = !DILocation(line: 232, column: 23, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2012, file: !1, line: 231, column: 7)
!2015 = !DILocation(line: 232, column: 2, scope: !2014)
!2016 = !DILocation(line: 232, column: 21, scope: !2014)
!2017 = !DILocation(line: 235, column: 7, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2000, file: !1, line: 234, column: 10)
!2019 = !DILocation(line: 236, column: 7, scope: !2018)
!2020 = !DILocation(line: 237, column: 7, scope: !2018)
!2021 = !DILocation(line: 239, column: 5, scope: !929)
!2022 = !DILocation(line: 240, column: 5, scope: !929)
!2023 = !DILocation(line: 241, column: 5, scope: !929)
!2024 = !DILocation(line: 242, column: 5, scope: !929)
!2025 = !DILocation(line: 243, column: 5, scope: !929)
!2026 = !DILocation(line: 244, column: 5, scope: !929)
!2027 = !DILocation(line: 245, column: 9, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !929, file: !1, line: 245, column: 9)
!2029 = !DILocation(line: 245, column: 22, scope: !2028)
!2030 = !DILocation(line: 245, column: 28, scope: !2028)
!2031 = !DILocation(line: 245, column: 35, scope: !2028)
!2032 = !{!1864, !1162, i64 248}
!2033 = !DILocation(line: 245, column: 40, scope: !2028)
!2034 = !DILocation(line: 245, column: 9, scope: !929)
!2035 = !DILocation(line: 246, column: 16, scope: !2028)
!2036 = !DILocation(line: 246, column: 7, scope: !2028)
!2037 = !DILocation(line: 247, column: 5, scope: !929)
!2038 = !DILocation(line: 248, column: 5, scope: !929)
!2039 = !DILocation(line: 249, column: 9, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !929, file: !1, line: 249, column: 9)
!2041 = !DILocation(line: 249, column: 22, scope: !2040)
!2042 = !DILocation(line: 249, column: 9, scope: !929)
!2043 = !DILocation(line: 250, column: 7, scope: !2040)
!2044 = !DILocation(line: 252, column: 11, scope: !2040)
!2045 = !DILocation(line: 252, column: 20, scope: !2040)
!2046 = !{!1864, !1280, i64 260}
!2047 = !DILocation(line: 253, column: 9, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !929, file: !1, line: 253, column: 9)
!2049 = !DILocation(line: 253, column: 22, scope: !2048)
!2050 = !DILocation(line: 253, column: 9, scope: !929)
!2051 = !DILocation(line: 254, column: 7, scope: !2048)
!2052 = !DILocation(line: 257, column: 5, scope: !929)
!2053 = !DILocation(line: 256, column: 11, scope: !2048)
!2054 = !DILocation(line: 256, column: 20, scope: !2048)
!2055 = !{!1864, !1280, i64 264}
!2056 = !DILocation(line: 258, column: 9, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !929, file: !1, line: 258, column: 9)
!2058 = !DILocation(line: 258, column: 22, scope: !2057)
!2059 = !DILocation(line: 258, column: 9, scope: !929)
!2060 = !DILocation(line: 259, column: 15, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !1, line: 259, column: 11)
!2062 = distinct !DILexicalBlock(scope: !2057, file: !1, line: 258, column: 28)
!2063 = !{!1864, !1162, i64 272}
!2064 = !DILocation(line: 259, column: 31, scope: !2061)
!2065 = !DILocation(line: 259, column: 11, scope: !2062)
!2066 = !DILocation(line: 260, column: 22, scope: !2061)
!2067 = !DILocation(line: 260, column: 2, scope: !2061)
!2068 = !DILocation(line: 262, column: 22, scope: !2061)
!2069 = !DILocation(line: 264, column: 5, scope: !929)
!2070 = !DILocation(line: 265, column: 5, scope: !929)
!2071 = !DILocation(line: 266, column: 5, scope: !929)
!2072 = !DILocation(line: 267, column: 5, scope: !929)
!2073 = !DILocation(line: 268, column: 9, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !929, file: !1, line: 268, column: 9)
!2075 = !DILocation(line: 268, column: 22, scope: !2074)
!2076 = !DILocation(line: 268, column: 9, scope: !929)
!2077 = !DILocation(line: 269, column: 7, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2074, file: !1, line: 268, column: 29)
!2079 = !DILocation(line: 270, column: 7, scope: !2078)
!2080 = !DILocation(line: 271, column: 7, scope: !2078)
!2081 = !DILocation(line: 277, column: 5, scope: !929)
!2082 = !DILocation(line: 273, column: 11, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2074, file: !1, line: 272, column: 12)
!2084 = !DILocation(line: 273, column: 21, scope: !2083)
!2085 = !{!1864, !1280, i64 288}
!2086 = !DILocation(line: 274, column: 11, scope: !2083)
!2087 = !DILocation(line: 274, column: 22, scope: !2083)
!2088 = !{!1864, !1280, i64 292}
!2089 = !DILocation(line: 275, column: 11, scope: !2083)
!2090 = !DILocation(line: 275, column: 23, scope: !2083)
!2091 = !{!1864, !1162, i64 296}
!2092 = !DILocation(line: 278, column: 5, scope: !929)
!2093 = !DILocation(line: 279, column: 9, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !929, file: !1, line: 279, column: 9)
!2095 = !DILocation(line: 279, column: 22, scope: !2094)
!2096 = !DILocation(line: 279, column: 9, scope: !929)
!2097 = !DILocation(line: 280, column: 7, scope: !2094)
!2098 = !DILocation(line: 281, column: 14, scope: !2094)
!2099 = !DILocation(line: 282, column: 11, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2094, file: !1, line: 281, column: 14)
!2101 = !DILocation(line: 282, column: 21, scope: !2100)
!2102 = !{!1864, !1162, i64 332}
!2103 = !DILocation(line: 282, column: 7, scope: !2100)
!2104 = !DILocation(line: 283, column: 9, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !929, file: !1, line: 283, column: 9)
!2106 = !DILocation(line: 283, column: 22, scope: !2105)
!2107 = !DILocation(line: 283, column: 9, scope: !929)
!2108 = !DILocation(line: 284, column: 7, scope: !2105)
!2109 = !DILocation(line: 285, column: 14, scope: !2105)
!2110 = !DILocation(line: 286, column: 11, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !1, line: 285, column: 21)
!2112 = distinct !DILexicalBlock(scope: !2105, file: !1, line: 285, column: 14)
!2113 = !DILocation(line: 286, column: 17, scope: !2111)
!2114 = !{!1864, !1162, i64 308}
!2115 = !DILocation(line: 287, column: 15, scope: !2111)
!2116 = !DILocation(line: 287, column: 7, scope: !2111)
!2117 = !DILocation(line: 289, column: 5, scope: !2111)
!2118 = !DILocation(line: 290, column: 9, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !929, file: !1, line: 290, column: 9)
!2120 = !DILocation(line: 290, column: 22, scope: !2119)
!2121 = !DILocation(line: 290, column: 9, scope: !929)
!2122 = !DILocation(line: 291, column: 7, scope: !2119)
!2123 = !DILocation(line: 294, column: 5, scope: !929)
!2124 = !DILocation(line: 293, column: 11, scope: !2119)
!2125 = !DILocation(line: 293, column: 23, scope: !2119)
!2126 = !{!1864, !1162, i64 312}
!2127 = !DILocation(line: 295, column: 5, scope: !929)
!2128 = !DILocation(line: 296, column: 5, scope: !929)
!2129 = !DILocation(line: 297, column: 9, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !929, file: !1, line: 297, column: 9)
!2131 = !DILocation(line: 297, column: 22, scope: !2130)
!2132 = !DILocation(line: 297, column: 9, scope: !929)
!2133 = !DILocation(line: 298, column: 7, scope: !2130)
!2134 = !DILocation(line: 299, column: 5, scope: !929)
!2135 = !DILocation(line: 300, column: 5, scope: !929)
!2136 = !DILocation(line: 301, column: 5, scope: !929)
!2137 = !DILocation(line: 302, column: 9, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !929, file: !1, line: 302, column: 9)
!2139 = !DILocation(line: 302, column: 22, scope: !2138)
!2140 = !DILocation(line: 302, column: 9, scope: !929)
!2141 = !DILocation(line: 303, column: 7, scope: !2138)
!2142 = !DILocation(line: 304, column: 14, scope: !2138)
!2143 = !DILocation(line: 305, column: 11, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2138, file: !1, line: 304, column: 14)
!2145 = !DILocation(line: 305, column: 21, scope: !2144)
!2146 = !{!1864, !1280, i64 348}
!2147 = !DILocation(line: 305, column: 7, scope: !2144)
!2148 = !DILocation(line: 306, column: 5, scope: !929)
!2149 = !DILocation(line: 307, column: 5, scope: !929)
!2150 = !DILocation(line: 308, column: 5, scope: !929)
!2151 = !DILocation(line: 309, column: 5, scope: !929)
!2152 = !DILocation(line: 310, column: 5, scope: !929)
!2153 = !DILocation(line: 311, column: 5, scope: !929)
!2154 = !DILocation(line: 312, column: 5, scope: !929)
!2155 = !DILocation(line: 313, column: 5, scope: !929)
!2156 = !DILocation(line: 316, column: 5, scope: !929)
!2157 = !DILocation(line: 317, column: 5, scope: !929)
!2158 = !DILocation(line: 318, column: 5, scope: !929)
!2159 = !DILocation(line: 319, column: 5, scope: !929)
!2160 = !DILocation(line: 321, column: 7, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !1, line: 320, column: 16)
!2162 = distinct !DILexicalBlock(scope: !929, file: !1, line: 320, column: 9)
!2163 = !{!1864, !1162, i64 384}
!2164 = !{!1864, !1159, i64 400}
!2165 = !DILocation(line: 322, column: 7, scope: !2161)
!2166 = !{!1864, !1159, i64 408}
!2167 = !DILocation(line: 323, column: 7, scope: !2161)
!2168 = !{!1864, !1159, i64 416}
!2169 = !DILocation(line: 324, column: 7, scope: !2161)
!2170 = !{!1864, !1162, i64 392}
!2171 = !{!1864, !1159, i64 432}
!2172 = !DILocation(line: 325, column: 7, scope: !2161)
!2173 = !{!1864, !1162, i64 388}
!2174 = !{!1864, !1159, i64 424}
!2175 = !DILocation(line: 326, column: 7, scope: !2161)
!2176 = !{!1864, !1162, i64 396}
!2177 = !{!1864, !1159, i64 440}
!2178 = !DILocation(line: 327, column: 5, scope: !2161)
!2179 = !DILocation(line: 328, column: 18, scope: !928)
!2180 = !DILocation(line: 328, column: 23, scope: !928)
!2181 = !DILocation(line: 328, column: 9, scope: !929)
!2182 = !DILocation(line: 329, column: 32, scope: !926)
!2183 = !DILocation(line: 329, column: 17, scope: !926)
!2184 = !DILocation(line: 336, column: 2, scope: !932)
!2185 = !DILocation(line: 336, column: 2, scope: !934)
!2186 = !DILocation(line: 330, column: 2, scope: !925)
!2187 = !DILocation(line: 120, column: 13, scope: !907)
!2188 = !DILocation(line: 331, column: 2, scope: !922)
!2189 = !DILocation(line: 331, column: 2, scope: !923)
!2190 = !DILocation(line: 331, column: 2, scope: !921)
!2191 = !DILocation(line: 332, column: 12, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !1, line: 332, column: 2)
!2193 = distinct !DILexicalBlock(scope: !925, file: !1, line: 332, column: 2)
!2194 = !DILocation(line: 332, column: 2, scope: !2193)
!2195 = !DILocation(line: 333, column: 13, scope: !2192)
!2196 = !DILocation(line: 333, column: 23, scope: !2192)
!2197 = !DILocation(line: 333, column: 4, scope: !2192)
!2198 = !DILocation(line: 333, column: 21, scope: !2192)
!2199 = !DILocation(line: 334, column: 2, scope: !925)
!2200 = !DILocation(line: 338, column: 7, scope: !939)
!2201 = !DILocation(line: 335, column: 7, scope: !925)
!2202 = !DILocation(line: 338, column: 7, scope: !940)
!2203 = !DILocation(line: 338, column: 7, scope: !938)
!2204 = !DILocation(line: 336, column: 2, scope: !933)
!2205 = !DILocation(line: 339, column: 7, scope: !944)
!2206 = !DILocation(line: 339, column: 7, scope: !945)
!2207 = !DILocation(line: 339, column: 7, scope: !943)
!2208 = !DILocation(line: 341, column: 18, scope: !952)
!2209 = !DILocation(line: 341, column: 24, scope: !952)
!2210 = !DILocation(line: 341, column: 9, scope: !929)
!2211 = !DILocation(line: 342, column: 7, scope: !948)
!2212 = !DILocation(line: 342, column: 7, scope: !950)
!2213 = !DILocation(line: 342, column: 7, scope: !949)
!2214 = !DILocation(line: 343, column: 18, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !929, file: !1, line: 343, column: 9)
!2216 = !DILocation(line: 343, column: 24, scope: !2215)
!2217 = !DILocation(line: 343, column: 9, scope: !929)
!2218 = !DILocation(line: 344, column: 7, scope: !2215)
!2219 = !DILocation(line: 345, column: 9, scope: !958)
!2220 = !DILocation(line: 345, column: 22, scope: !958)
!2221 = !DILocation(line: 345, column: 9, scope: !929)
!2222 = !DILocation(line: 346, column: 7, scope: !955)
!2223 = !DILocation(line: 346, column: 7, scope: !956)
!2224 = !DILocation(line: 346, column: 7, scope: !954)
!2225 = !DILocation(line: 361, column: 7, scope: !978)
!2226 = !DILocation(line: 360, column: 7, scope: !973)
!2227 = !DILocation(line: 359, column: 7, scope: !968)
!2228 = !DILocation(line: 358, column: 7, scope: !960)
!2229 = !DILocation(line: 349, column: 5, scope: !966)
!2230 = !DILocation(line: 350, column: 7, scope: !964)
!2231 = !DILocation(line: 351, column: 7, scope: !964)
!2232 = !DILocation(line: 353, column: 2, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !1, line: 352, column: 18)
!2234 = distinct !DILexicalBlock(scope: !964, file: !1, line: 352, column: 11)
!2235 = !{!2236, !1162, i64 0}
!2236 = !{!"", !1162, i64 0, !1159, i64 8, !1159, i64 16}
!2237 = !{!2236, !1159, i64 8}
!2238 = !DILocation(line: 354, column: 2, scope: !2233)
!2239 = !{!2236, !1159, i64 16}
!2240 = !DILocation(line: 355, column: 2, scope: !2233)
!2241 = !DILocation(line: 356, column: 2, scope: !2233)
!2242 = !DILocation(line: 357, column: 7, scope: !2233)
!2243 = !DILocation(line: 358, column: 7, scope: !961)
!2244 = !DILocation(line: 358, column: 7, scope: !962)
!2245 = !DILocation(line: 359, column: 7, scope: !969)
!2246 = !DILocation(line: 359, column: 7, scope: !970)
!2247 = !DILocation(line: 360, column: 7, scope: !974)
!2248 = !DILocation(line: 360, column: 7, scope: !975)
!2249 = !DILocation(line: 361, column: 7, scope: !979)
!2250 = !DILocation(line: 361, column: 7, scope: !980)
!2251 = !DILocation(line: 364, column: 1, scope: !907)
!2252 = !DILocation(line: 708, column: 32, scope: !990)
!2253 = !DILocation(line: 708, column: 41, scope: !990)
!2254 = !DILocation(line: 712, column: 20, scope: !990)
!2255 = !DILocation(line: 654, column: 33, scope: !997, inlinedAt: !2256)
!2256 = distinct !DILocation(line: 712, column: 3, scope: !990)
!2257 = !DILocation(line: 654, column: 45, scope: !997, inlinedAt: !2256)
!2258 = !DILocation(line: 658, column: 3, scope: !997, inlinedAt: !2256)
!2259 = !DILocation(line: 660, column: 3, scope: !997, inlinedAt: !2256)
!2260 = !DILocation(line: 592, column: 5, scope: !1053, inlinedAt: !2261)
!2261 = distinct !DILocation(line: 649, column: 3, scope: !1016, inlinedAt: !2262)
!2262 = distinct !DILocation(line: 714, column: 3, scope: !990)
!2263 = !DILocation(line: 496, column: 3, scope: !1088, inlinedAt: !2264)
!2264 = distinct !DILocation(line: 540, column: 7, scope: !2265, inlinedAt: !2269)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !1, line: 534, column: 9)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !1, line: 528, column: 28)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !1, line: 528, column: 3)
!2268 = distinct !DILexicalBlock(scope: !1060, file: !1, line: 528, column: 3)
!2269 = distinct !DILocation(line: 715, column: 3, scope: !990)
!2270 = !DILocation(line: 500, column: 3, scope: !1093, inlinedAt: !2264)
!2271 = !DILocation(line: 517, column: 3, scope: !1073, inlinedAt: !2269)
!2272 = !DILocation(line: 661, column: 20, scope: !997, inlinedAt: !2256)
!2273 = !{!1794, !1162, i64 0}
!2274 = !DILocation(line: 663, column: 5, scope: !2275, inlinedAt: !2256)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !1, line: 662, column: 14)
!2276 = distinct !DILexicalBlock(scope: !997, file: !1, line: 662, column: 7)
!2277 = !{!1794, !1159, i64 8}
!2278 = !DILocation(line: 665, column: 13, scope: !2275, inlinedAt: !2256)
!2279 = !DILocation(line: 665, column: 21, scope: !2275, inlinedAt: !2256)
!2280 = !{!2281, !1162, i64 0}
!2281 = !{!"symbuf", !1162, i64 0, !1159, i64 8, !1159, i64 16}
!2282 = !DILocation(line: 666, column: 5, scope: !2275, inlinedAt: !2256)
!2283 = !{!2281, !1159, i64 8}
!2284 = !DILocation(line: 656, column: 7, scope: !997, inlinedAt: !2256)
!2285 = !DILocation(line: 667, column: 17, scope: !2286, inlinedAt: !2256)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !1, line: 667, column: 5)
!2287 = distinct !DILexicalBlock(scope: !2275, file: !1, line: 667, column: 5)
!2288 = !DILocation(line: 667, column: 5, scope: !2287, inlinedAt: !2256)
!2289 = !DILocation(line: 712, column: 3, scope: !990)
!2290 = !DILocation(line: 668, column: 7, scope: !2291, inlinedAt: !2256)
!2291 = distinct !DILexicalBlock(scope: !2286, file: !1, line: 667, column: 28)
!2292 = !DILocation(line: 669, column: 22, scope: !2291, inlinedAt: !2256)
!2293 = !DILocation(line: 669, column: 15, scope: !2291, inlinedAt: !2256)
!2294 = !DILocation(line: 669, column: 7, scope: !2291, inlinedAt: !2256)
!2295 = !DILocation(line: 669, column: 21, scope: !2291, inlinedAt: !2256)
!2296 = !DILocation(line: 673, column: 22, scope: !2297, inlinedAt: !2256)
!2297 = distinct !DILexicalBlock(scope: !2276, file: !1, line: 672, column: 8)
!2298 = !DILocation(line: 674, column: 18, scope: !2297, inlinedAt: !2256)
!2299 = !DILocation(line: 674, column: 5, scope: !2297, inlinedAt: !2256)
!2300 = !DILocation(line: 675, column: 28, scope: !2301, inlinedAt: !2256)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !1, line: 675, column: 7)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !1, line: 675, column: 7)
!2303 = distinct !DILexicalBlock(scope: !2297, file: !1, line: 674, column: 26)
!2304 = !DILocation(line: 675, column: 19, scope: !2301, inlinedAt: !2256)
!2305 = !DILocation(line: 675, column: 42, scope: !2301, inlinedAt: !2256)
!2306 = !DILocation(line: 675, column: 37, scope: !2301, inlinedAt: !2256)
!2307 = !DILocation(line: 676, column: 2, scope: !2301, inlinedAt: !2256)
!2308 = !DILocation(line: 677, column: 9, scope: !2303, inlinedAt: !2256)
!2309 = !DILocation(line: 656, column: 9, scope: !997, inlinedAt: !2256)
!2310 = !DILocation(line: 678, column: 22, scope: !2303, inlinedAt: !2256)
!2311 = !DILocation(line: 680, column: 12, scope: !2312, inlinedAt: !2256)
!2312 = distinct !DILexicalBlock(scope: !2297, file: !1, line: 680, column: 9)
!2313 = !DILocation(line: 680, column: 9, scope: !2297, inlinedAt: !2256)
!2314 = !DILocation(line: 681, column: 7, scope: !2312, inlinedAt: !2256)
!2315 = !DILocation(line: 683, column: 1, scope: !997, inlinedAt: !2256)
!2316 = !DILocation(line: 713, column: 20, scope: !990)
!2317 = !DILocation(line: 713, column: 3, scope: !990)
!2318 = !DILocation(line: 714, column: 20, scope: !990)
!2319 = !DILocation(line: 618, column: 31, scope: !1016, inlinedAt: !2262)
!2320 = !DILocation(line: 618, column: 42, scope: !1016, inlinedAt: !2262)
!2321 = !DILocation(line: 618, column: 58, scope: !1016, inlinedAt: !2262)
!2322 = !DILocation(line: 622, column: 3, scope: !1016, inlinedAt: !2262)
!2323 = !DILocation(line: 623, column: 3, scope: !1016, inlinedAt: !2262)
!2324 = !DILocation(line: 624, column: 3, scope: !1016, inlinedAt: !2262)
!2325 = !DILocation(line: 634, column: 22, scope: !2326, inlinedAt: !2262)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !1, line: 634, column: 3)
!2327 = distinct !DILexicalBlock(scope: !1016, file: !1, line: 634, column: 3)
!2328 = !DILocation(line: 714, column: 3, scope: !990)
!2329 = !DILocation(line: 626, column: 5, scope: !2330, inlinedAt: !2262)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !1, line: 625, column: 14)
!2331 = distinct !DILexicalBlock(scope: !1016, file: !1, line: 625, column: 7)
!2332 = !{!1792, !1162, i64 0}
!2333 = !{!1792, !1159, i64 8}
!2334 = !DILocation(line: 627, column: 5, scope: !2330, inlinedAt: !2262)
!2335 = !{!1792, !1159, i64 16}
!2336 = !DILocation(line: 628, column: 5, scope: !2330, inlinedAt: !2262)
!2337 = !{!1792, !1159, i64 24}
!2338 = !DILocation(line: 629, column: 5, scope: !2330, inlinedAt: !2262)
!2339 = !{!1792, !1159, i64 32}
!2340 = !DILocation(line: 630, column: 5, scope: !2330, inlinedAt: !2262)
!2341 = !{!1792, !1162, i64 40}
!2342 = !{!1792, !1159, i64 48}
!2343 = !DILocation(line: 631, column: 5, scope: !2330, inlinedAt: !2262)
!2344 = !{!1792, !1162, i64 56}
!2345 = !{!1792, !1159, i64 64}
!2346 = !DILocation(line: 632, column: 12, scope: !2330, inlinedAt: !2262)
!2347 = !DILocation(line: 632, column: 20, scope: !2330, inlinedAt: !2262)
!2348 = !{!1792, !1159, i64 1272}
!2349 = !DILocation(line: 633, column: 3, scope: !2330, inlinedAt: !2262)
!2350 = !DILocation(line: 634, column: 14, scope: !2326, inlinedAt: !2262)
!2351 = !DILocation(line: 634, column: 3, scope: !2327, inlinedAt: !2262)
!2352 = !DILocation(line: 635, column: 21, scope: !2326, inlinedAt: !2262)
!2353 = !DILocation(line: 635, column: 14, scope: !2326, inlinedAt: !2262)
!2354 = !DILocation(line: 560, column: 38, scope: !1025, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 635, column: 5, scope: !2326, inlinedAt: !2262)
!2356 = !DILocation(line: 562, column: 3, scope: !1025, inlinedAt: !2355)
!2357 = !DILocation(line: 563, column: 3, scope: !1025, inlinedAt: !2355)
!2358 = !DILocation(line: 564, column: 3, scope: !1025, inlinedAt: !2355)
!2359 = !DILocation(line: 565, column: 3, scope: !1025, inlinedAt: !2355)
!2360 = !DILocation(line: 566, column: 3, scope: !1025, inlinedAt: !2355)
!2361 = !DILocation(line: 567, column: 3, scope: !1025, inlinedAt: !2355)
!2362 = !DILocation(line: 568, column: 3, scope: !1025, inlinedAt: !2355)
!2363 = !DILocation(line: 569, column: 3, scope: !1025, inlinedAt: !2355)
!2364 = !DILocation(line: 570, column: 7, scope: !2365, inlinedAt: !2355)
!2365 = distinct !DILexicalBlock(scope: !1025, file: !1, line: 570, column: 7)
!2366 = !DILocation(line: 570, column: 20, scope: !2365, inlinedAt: !2355)
!2367 = !DILocation(line: 570, column: 7, scope: !1025, inlinedAt: !2355)
!2368 = !DILocation(line: 572, column: 5, scope: !2369, inlinedAt: !2355)
!2369 = distinct !DILexicalBlock(scope: !2365, file: !1, line: 570, column: 26)
!2370 = !DILocation(line: 572, column: 20, scope: !2369, inlinedAt: !2355)
!2371 = !DILocation(line: 573, column: 3, scope: !2369, inlinedAt: !2355)
!2372 = !DILocation(line: 635, column: 5, scope: !2326, inlinedAt: !2262)
!2373 = !DILocation(line: 574, column: 3, scope: !1025, inlinedAt: !2355)
!2374 = !DILocation(line: 636, column: 30, scope: !1016, inlinedAt: !2262)
!2375 = !DILocation(line: 610, column: 27, scope: !1032, inlinedAt: !2376)
!2376 = distinct !DILocation(line: 636, column: 3, scope: !1016, inlinedAt: !2262)
!2377 = !DILocation(line: 610, column: 40, scope: !1032, inlinedAt: !2376)
!2378 = !DILocation(line: 610, column: 48, scope: !1032, inlinedAt: !2376)
!2379 = !DILocation(line: 610, column: 64, scope: !1032, inlinedAt: !2376)
!2380 = !DILocation(line: 612, column: 8, scope: !1032, inlinedAt: !2376)
!2381 = !DILocation(line: 614, column: 15, scope: !2382, inlinedAt: !2376)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !1, line: 614, column: 3)
!2383 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 614, column: 3)
!2384 = !DILocation(line: 614, column: 3, scope: !2383, inlinedAt: !2376)
!2385 = !DILocation(line: 636, column: 3, scope: !1016, inlinedAt: !2262)
!2386 = !DILocation(line: 615, column: 17, scope: !2382, inlinedAt: !2376)
!2387 = !DILocation(line: 615, column: 5, scope: !2382, inlinedAt: !2376)
!2388 = !DILocation(line: 638, column: 23, scope: !2389, inlinedAt: !2262)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !1, line: 638, column: 5)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !1, line: 638, column: 5)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !1, line: 637, column: 38)
!2392 = distinct !DILexicalBlock(scope: !1016, file: !1, line: 637, column: 7)
!2393 = !DILocation(line: 637, column: 30, scope: !2392, inlinedAt: !2262)
!2394 = !DILocation(line: 637, column: 13, scope: !2392, inlinedAt: !2262)
!2395 = !DILocation(line: 638, column: 15, scope: !2389, inlinedAt: !2262)
!2396 = !DILocation(line: 638, column: 5, scope: !2390, inlinedAt: !2262)
!2397 = !DILocation(line: 639, column: 14, scope: !2398, inlinedAt: !2262)
!2398 = distinct !DILexicalBlock(scope: !2389, file: !1, line: 638, column: 32)
!2399 = !DILocation(line: 640, column: 14, scope: !2398, inlinedAt: !2262)
!2400 = !DILocation(line: 639, column: 29, scope: !2398, inlinedAt: !2262)
!2401 = !DILocation(line: 639, column: 7, scope: !2398, inlinedAt: !2262)
!2402 = !DILocation(line: 639, column: 27, scope: !2398, inlinedAt: !2262)
!2403 = !DILocation(line: 640, column: 29, scope: !2398, inlinedAt: !2262)
!2404 = !DILocation(line: 640, column: 7, scope: !2398, inlinedAt: !2262)
!2405 = !DILocation(line: 640, column: 27, scope: !2398, inlinedAt: !2262)
!2406 = !DILocation(line: 643, column: 32, scope: !2407, inlinedAt: !2262)
!2407 = distinct !DILexicalBlock(scope: !2392, file: !1, line: 642, column: 10)
!2408 = !DILocation(line: 610, column: 27, scope: !1032, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 643, column: 5, scope: !2407, inlinedAt: !2262)
!2410 = !DILocation(line: 610, column: 40, scope: !1032, inlinedAt: !2409)
!2411 = !DILocation(line: 610, column: 48, scope: !1032, inlinedAt: !2409)
!2412 = !DILocation(line: 610, column: 64, scope: !1032, inlinedAt: !2409)
!2413 = !DILocation(line: 612, column: 8, scope: !1032, inlinedAt: !2409)
!2414 = !DILocation(line: 614, column: 15, scope: !2382, inlinedAt: !2409)
!2415 = !DILocation(line: 614, column: 3, scope: !2383, inlinedAt: !2409)
!2416 = !DILocation(line: 643, column: 5, scope: !2407, inlinedAt: !2262)
!2417 = !DILocation(line: 615, column: 17, scope: !2382, inlinedAt: !2409)
!2418 = !DILocation(line: 615, column: 5, scope: !2382, inlinedAt: !2409)
!2419 = !DILocation(line: 644, column: 22, scope: !2407, inlinedAt: !2262)
!2420 = !DILocation(line: 644, column: 32, scope: !2407, inlinedAt: !2262)
!2421 = !DILocation(line: 610, column: 27, scope: !1032, inlinedAt: !2422)
!2422 = distinct !DILocation(line: 644, column: 5, scope: !2407, inlinedAt: !2262)
!2423 = !DILocation(line: 610, column: 40, scope: !1032, inlinedAt: !2422)
!2424 = !DILocation(line: 610, column: 48, scope: !1032, inlinedAt: !2422)
!2425 = !DILocation(line: 610, column: 64, scope: !1032, inlinedAt: !2422)
!2426 = !DILocation(line: 612, column: 8, scope: !1032, inlinedAt: !2422)
!2427 = !DILocation(line: 614, column: 15, scope: !2382, inlinedAt: !2422)
!2428 = !DILocation(line: 614, column: 3, scope: !2383, inlinedAt: !2422)
!2429 = !DILocation(line: 644, column: 5, scope: !2407, inlinedAt: !2262)
!2430 = !DILocation(line: 615, column: 17, scope: !2382, inlinedAt: !2422)
!2431 = !DILocation(line: 615, column: 5, scope: !2382, inlinedAt: !2422)
!2432 = !DILocation(line: 646, column: 20, scope: !1016, inlinedAt: !2262)
!2433 = !DILocation(line: 646, column: 32, scope: !1016, inlinedAt: !2262)
!2434 = !DILocation(line: 610, column: 27, scope: !1032, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 646, column: 3, scope: !1016, inlinedAt: !2262)
!2436 = !DILocation(line: 610, column: 40, scope: !1032, inlinedAt: !2435)
!2437 = !DILocation(line: 610, column: 48, scope: !1032, inlinedAt: !2435)
!2438 = !DILocation(line: 610, column: 64, scope: !1032, inlinedAt: !2435)
!2439 = !DILocation(line: 612, column: 8, scope: !1032, inlinedAt: !2435)
!2440 = !DILocation(line: 614, column: 15, scope: !2382, inlinedAt: !2435)
!2441 = !DILocation(line: 614, column: 3, scope: !2383, inlinedAt: !2435)
!2442 = !DILocation(line: 646, column: 3, scope: !1016, inlinedAt: !2262)
!2443 = !DILocation(line: 615, column: 17, scope: !2382, inlinedAt: !2435)
!2444 = !DILocation(line: 615, column: 5, scope: !2382, inlinedAt: !2435)
!2445 = !DILocation(line: 647, column: 20, scope: !1016, inlinedAt: !2262)
!2446 = !DILocation(line: 647, column: 36, scope: !1016, inlinedAt: !2262)
!2447 = !DILocation(line: 610, column: 27, scope: !1032, inlinedAt: !2448)
!2448 = distinct !DILocation(line: 647, column: 3, scope: !1016, inlinedAt: !2262)
!2449 = !DILocation(line: 610, column: 40, scope: !1032, inlinedAt: !2448)
!2450 = !DILocation(line: 610, column: 48, scope: !1032, inlinedAt: !2448)
!2451 = !DILocation(line: 610, column: 64, scope: !1032, inlinedAt: !2448)
!2452 = !DILocation(line: 612, column: 8, scope: !1032, inlinedAt: !2448)
!2453 = !DILocation(line: 614, column: 15, scope: !2382, inlinedAt: !2448)
!2454 = !DILocation(line: 614, column: 3, scope: !2383, inlinedAt: !2448)
!2455 = !DILocation(line: 647, column: 3, scope: !1016, inlinedAt: !2262)
!2456 = !DILocation(line: 615, column: 17, scope: !2382, inlinedAt: !2448)
!2457 = !DILocation(line: 615, column: 5, scope: !2382, inlinedAt: !2448)
!2458 = !DILocation(line: 577, column: 25, scope: !1041, inlinedAt: !2261)
!2459 = !DILocation(line: 580, column: 8, scope: !1041, inlinedAt: !2261)
!2460 = !DILocation(line: 582, column: 7, scope: !2461, inlinedAt: !2261)
!2461 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 582, column: 7)
!2462 = !DILocation(line: 582, column: 20, scope: !2461, inlinedAt: !2261)
!2463 = !DILocation(line: 582, column: 7, scope: !1041, inlinedAt: !2261)
!2464 = !DILocation(line: 584, column: 13, scope: !2465, inlinedAt: !2261)
!2465 = distinct !DILexicalBlock(scope: !2461, file: !1, line: 582, column: 26)
!2466 = !DILocation(line: 584, column: 16, scope: !2465, inlinedAt: !2261)
!2467 = !DILocation(line: 585, column: 5, scope: !2465, inlinedAt: !2261)
!2468 = !DILocation(line: 586, column: 3, scope: !2465, inlinedAt: !2261)
!2469 = !DILocation(line: 649, column: 3, scope: !1016, inlinedAt: !2262)
!2470 = !DILocation(line: 579, column: 9, scope: !1041, inlinedAt: !2261)
!2471 = !DILocation(line: 588, column: 3, scope: !1059, inlinedAt: !2261)
!2472 = !DILocation(line: 589, column: 5, scope: !1057, inlinedAt: !2261)
!2473 = !DILocation(line: 591, column: 7, scope: !2474, inlinedAt: !2261)
!2474 = distinct !DILexicalBlock(scope: !1057, file: !1, line: 590, column: 9)
!2475 = !DILocation(line: 592, column: 5, scope: !1054, inlinedAt: !2261)
!2476 = !DILocation(line: 592, column: 5, scope: !1055, inlinedAt: !2261)
!2477 = !DILocation(line: 588, column: 14, scope: !1058, inlinedAt: !2261)
!2478 = !DILocation(line: 651, column: 21, scope: !1016, inlinedAt: !2262)
!2479 = !DILocation(line: 651, column: 3, scope: !1016, inlinedAt: !2262)
!2480 = !DILocation(line: 715, column: 20, scope: !990)
!2481 = !DILocation(line: 505, column: 29, scope: !1060, inlinedAt: !2269)
!2482 = !DILocation(line: 505, column: 39, scope: !1060, inlinedAt: !2269)
!2483 = !DILocation(line: 508, column: 8, scope: !1060, inlinedAt: !2269)
!2484 = !DILocation(line: 510, column: 3, scope: !1060, inlinedAt: !2269)
!2485 = !DILocation(line: 511, column: 3, scope: !1060, inlinedAt: !2269)
!2486 = !DILocation(line: 512, column: 3, scope: !1060, inlinedAt: !2269)
!2487 = !DILocation(line: 517, column: 3, scope: !1074, inlinedAt: !2269)
!2488 = !DILocation(line: 715, column: 3, scope: !990)
!2489 = !DILocation(line: 514, column: 5, scope: !2490, inlinedAt: !2269)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !1, line: 513, column: 14)
!2491 = distinct !DILexicalBlock(scope: !1060, file: !1, line: 513, column: 7)
!2492 = !{!1791, !1162, i64 0}
!2493 = !{!1791, !1159, i64 16}
!2494 = !DILocation(line: 515, column: 5, scope: !2490, inlinedAt: !2269)
!2495 = !{!1791, !1159, i64 24}
!2496 = !DILocation(line: 516, column: 3, scope: !2490, inlinedAt: !2269)
!2497 = !DILocation(line: 517, column: 3, scope: !1075, inlinedAt: !2269)
!2498 = !DILocation(line: 519, column: 15, scope: !2499, inlinedAt: !2269)
!2499 = distinct !DILexicalBlock(scope: !2500, file: !1, line: 519, column: 3)
!2500 = distinct !DILexicalBlock(scope: !1060, file: !1, line: 519, column: 3)
!2501 = !DILocation(line: 519, column: 3, scope: !2500, inlinedAt: !2269)
!2502 = !DILocation(line: 525, column: 41, scope: !2503, inlinedAt: !2269)
!2503 = distinct !DILexicalBlock(scope: !2499, file: !1, line: 519, column: 36)
!2504 = !DILocation(line: 528, column: 3, scope: !2268, inlinedAt: !2269)
!2505 = !DILocation(line: 520, column: 9, scope: !2503, inlinedAt: !2269)
!2506 = !DILocation(line: 522, column: 7, scope: !2507, inlinedAt: !2269)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !1, line: 522, column: 6)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !1, line: 521, column: 7)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !1, line: 521, column: 7)
!2510 = distinct !DILexicalBlock(scope: !2503, file: !1, line: 520, column: 9)
!2511 = !DILocation(line: 522, column: 31, scope: !2507, inlinedAt: !2269)
!2512 = !{!2513, !1162, i64 0}
!2513 = !{!"", !1162, i64 0, !1162, i64 4}
!2514 = !DILocation(line: 522, column: 20, scope: !2507, inlinedAt: !2269)
!2515 = !DILocation(line: 522, column: 37, scope: !2507, inlinedAt: !2269)
!2516 = !DILocation(line: 523, column: 13, scope: !2507, inlinedAt: !2269)
!2517 = !DILocation(line: 523, column: 7, scope: !2507, inlinedAt: !2269)
!2518 = !DILocation(line: 523, column: 37, scope: !2507, inlinedAt: !2269)
!2519 = !{!2513, !1162, i64 4}
!2520 = !DILocation(line: 523, column: 25, scope: !2507, inlinedAt: !2269)
!2521 = !DILocation(line: 522, column: 6, scope: !2508, inlinedAt: !2269)
!2522 = !DILocation(line: 524, column: 22, scope: !2507, inlinedAt: !2269)
!2523 = !DILocation(line: 524, column: 4, scope: !2507, inlinedAt: !2269)
!2524 = !DILocation(line: 521, column: 7, scope: !2509, inlinedAt: !2269)
!2525 = !DILocation(line: 525, column: 22, scope: !2503, inlinedAt: !2269)
!2526 = !DILocation(line: 525, column: 16, scope: !2503, inlinedAt: !2269)
!2527 = !DILocation(line: 525, column: 35, scope: !2503, inlinedAt: !2269)
!2528 = !DILocation(line: 525, column: 5, scope: !2503, inlinedAt: !2269)
!2529 = !DILocation(line: 519, column: 22, scope: !2499, inlinedAt: !2269)
!2530 = !DILocation(line: 508, column: 18, scope: !1060, inlinedAt: !2269)
!2531 = !DILocation(line: 530, column: 9, scope: !2266, inlinedAt: !2269)
!2532 = !DILocation(line: 532, column: 7, scope: !2533, inlinedAt: !2269)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !1, line: 532, column: 6)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !1, line: 531, column: 7)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !1, line: 531, column: 7)
!2536 = distinct !DILexicalBlock(scope: !2266, file: !1, line: 530, column: 9)
!2537 = !DILocation(line: 532, column: 43, scope: !2533, inlinedAt: !2269)
!2538 = !DILocation(line: 531, column: 7, scope: !2535, inlinedAt: !2269)
!2539 = !DILocation(line: 532, column: 31, scope: !2533, inlinedAt: !2269)
!2540 = !DILocation(line: 532, column: 20, scope: !2533, inlinedAt: !2269)
!2541 = !DILocation(line: 532, column: 37, scope: !2533, inlinedAt: !2269)
!2542 = !DILocation(line: 532, column: 55, scope: !2533, inlinedAt: !2269)
!2543 = !DILocation(line: 532, column: 6, scope: !2534, inlinedAt: !2269)
!2544 = !DILocation(line: 534, column: 9, scope: !2265, inlinedAt: !2269)
!2545 = !DILocation(line: 535, column: 7, scope: !2546, inlinedAt: !2269)
!2546 = distinct !DILexicalBlock(scope: !2265, file: !1, line: 534, column: 17)
!2547 = !DILocation(line: 534, column: 9, scope: !2266, inlinedAt: !2269)
!2548 = !DILocation(line: 507, column: 7, scope: !1060, inlinedAt: !2269)
!2549 = !DILocation(line: 538, column: 19, scope: !2546, inlinedAt: !2269)
!2550 = !DILocation(line: 538, column: 26, scope: !2546, inlinedAt: !2269)
!2551 = !{!2552, !1159, i64 1032}
!2552 = !{!"", !1162, i64 0, !1160, i64 4, !1159, i64 1032}
!2553 = !DILocation(line: 539, column: 5, scope: !2546, inlinedAt: !2269)
!2554 = !DILocation(line: 537, column: 25, scope: !2555, inlinedAt: !2269)
!2555 = distinct !DILexicalBlock(scope: !2556, file: !1, line: 536, column: 7)
!2556 = distinct !DILexicalBlock(scope: !2546, file: !1, line: 536, column: 7)
!2557 = !DILocation(line: 489, column: 42, scope: !1077, inlinedAt: !2264)
!2558 = !DILocation(line: 492, column: 8, scope: !1077, inlinedAt: !2264)
!2559 = !DILocation(line: 540, column: 59, scope: !2265, inlinedAt: !2269)
!2560 = !DILocation(line: 495, column: 5, scope: !2561, inlinedAt: !2264)
!2561 = distinct !DILexicalBlock(scope: !1077, file: !1, line: 494, column: 7)
!2562 = !DILocation(line: 496, column: 3, scope: !1090, inlinedAt: !2264)
!2563 = !DILocation(line: 540, column: 7, scope: !2265, inlinedAt: !2269)
!2564 = !DILocation(line: 496, column: 3, scope: !1089, inlinedAt: !2264)
!2565 = !DILocation(line: 497, column: 3, scope: !1077, inlinedAt: !2264)
!2566 = !DILocation(line: 500, column: 3, scope: !1094, inlinedAt: !2264)
!2567 = !DILocation(line: 499, column: 5, scope: !2568, inlinedAt: !2264)
!2568 = distinct !DILexicalBlock(scope: !1077, file: !1, line: 498, column: 7)
!2569 = !{!2552, !1162, i64 0}
!2570 = !DILocation(line: 500, column: 3, scope: !1095, inlinedAt: !2264)
!2571 = !DILocation(line: 501, column: 7, scope: !1077, inlinedAt: !2264)
!2572 = !DILocation(line: 502, column: 5, scope: !2573, inlinedAt: !2264)
!2573 = distinct !DILexicalBlock(scope: !1077, file: !1, line: 501, column: 7)
!2574 = !DILocation(line: 717, column: 16, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !1, line: 716, column: 3)
!2576 = distinct !DILexicalBlock(scope: !990, file: !1, line: 716, column: 3)
!2577 = !DILocation(line: 717, column: 5, scope: !2575)
!2578 = !DILocation(line: 716, column: 3, scope: !2576)
!2579 = !DILocation(line: 718, column: 7, scope: !990)
!2580 = !DILocation(line: 719, column: 5, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !1, line: 718, column: 14)
!2582 = distinct !DILexicalBlock(scope: !990, file: !1, line: 718, column: 7)
!2583 = !DILocation(line: 685, column: 45, scope: !1121, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 720, column: 5, scope: !2581)
!2585 = !DILocation(line: 688, column: 10, scope: !1121, inlinedAt: !2584)
!2586 = !DILocation(line: 687, column: 7, scope: !1121, inlinedAt: !2584)
!2587 = !DILocation(line: 692, column: 20, scope: !2588, inlinedAt: !2584)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !1, line: 692, column: 3)
!2589 = distinct !DILexicalBlock(scope: !1121, file: !1, line: 692, column: 3)
!2590 = !{!1793, !1162, i64 1024}
!2591 = !DILocation(line: 692, column: 13, scope: !2588, inlinedAt: !2584)
!2592 = !DILocation(line: 692, column: 3, scope: !2589, inlinedAt: !2584)
!2593 = !DILocation(line: 693, column: 14, scope: !2594, inlinedAt: !2584)
!2594 = distinct !DILexicalBlock(scope: !2588, file: !1, line: 692, column: 29)
!2595 = !{!1793, !1159, i64 1032}
!2596 = !DILocation(line: 701, column: 25, scope: !2597, inlinedAt: !2584)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !1, line: 700, column: 5)
!2598 = distinct !DILexicalBlock(scope: !2594, file: !1, line: 700, column: 5)
!2599 = !DILocation(line: 701, column: 14, scope: !2597, inlinedAt: !2584)
!2600 = !DILocation(line: 693, column: 8, scope: !2594, inlinedAt: !2584)
!2601 = !DILocation(line: 720, column: 5, scope: !2581)
!2602 = !DILocation(line: 687, column: 11, scope: !1121, inlinedAt: !2584)
!2603 = !DILocation(line: 694, column: 8, scope: !2594, inlinedAt: !2584)
!2604 = !DILocation(line: 687, column: 14, scope: !1121, inlinedAt: !2584)
!2605 = !DILocation(line: 695, column: 12, scope: !2606, inlinedAt: !2584)
!2606 = distinct !DILexicalBlock(scope: !2594, file: !1, line: 695, column: 9)
!2607 = !DILocation(line: 695, column: 16, scope: !2606, inlinedAt: !2584)
!2608 = !DILocation(line: 695, column: 46, scope: !2606, inlinedAt: !2584)
!2609 = !DILocation(line: 695, column: 36, scope: !2606, inlinedAt: !2584)
!2610 = !DILocation(line: 700, column: 16, scope: !2597, inlinedAt: !2584)
!2611 = !DILocation(line: 700, column: 5, scope: !2598, inlinedAt: !2584)
!2612 = !{!1793, !1159, i64 1048}
!2613 = !DILocation(line: 701, column: 19, scope: !2597, inlinedAt: !2584)
!2614 = !DILocation(line: 701, column: 7, scope: !2597, inlinedAt: !2584)
!2615 = !DILocation(line: 701, column: 31, scope: !2597, inlinedAt: !2584)
!2616 = !DILocation(line: 701, column: 36, scope: !2597, inlinedAt: !2584)
!2617 = !{!1823, !1160, i64 37}
!2618 = !DILocation(line: 703, column: 7, scope: !1121, inlinedAt: !2584)
!2619 = !DILocation(line: 704, column: 23, scope: !2620, inlinedAt: !2584)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !1, line: 704, column: 5)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !1, line: 704, column: 5)
!2622 = distinct !DILexicalBlock(scope: !1121, file: !1, line: 703, column: 7)
!2623 = !DILocation(line: 704, column: 15, scope: !2620, inlinedAt: !2584)
!2624 = !DILocation(line: 704, column: 5, scope: !2621, inlinedAt: !2584)
!2625 = !DILocation(line: 705, column: 14, scope: !2620, inlinedAt: !2584)
!2626 = !DILocation(line: 705, column: 22, scope: !2620, inlinedAt: !2584)
!2627 = !DILocation(line: 705, column: 27, scope: !2620, inlinedAt: !2584)
!2628 = !DILocation(line: 722, column: 1, scope: !990)
!2629 = !DILocation(line: 596, column: 31, scope: !1008)
!2630 = !DILocation(line: 596, column: 39, scope: !1008)
!2631 = !DILocation(line: 596, column: 55, scope: !1008)
!2632 = !DILocation(line: 600, column: 7, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !1008, file: !1, line: 600, column: 7)
!2634 = !DILocation(line: 600, column: 7, scope: !1008)
!2635 = !DILocation(line: 601, column: 5, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2633, file: !1, line: 600, column: 14)
!2637 = !DILocation(line: 598, column: 7, scope: !1008)
!2638 = !DILocation(line: 602, column: 36, scope: !2636)
!2639 = !DILocation(line: 602, column: 11, scope: !2636)
!2640 = !DILocation(line: 602, column: 9, scope: !2636)
!2641 = !DILocation(line: 603, column: 3, scope: !2636)
!2642 = !DILocation(line: 605, column: 31, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2633, file: !1, line: 604, column: 8)
!2644 = !DILocation(line: 605, column: 10, scope: !2643)
!2645 = !DILocation(line: 605, column: 8, scope: !2643)
!2646 = !DILocation(line: 606, column: 5, scope: !2643)
!2647 = !DILocation(line: 608, column: 1, scope: !1008)
!2648 = !DILocation(line: 544, column: 31, scope: !1097)
!2649 = !DILocation(line: 544, column: 42, scope: !1097)
!2650 = !DILocation(line: 547, column: 8, scope: !1097)
!2651 = !DILocation(line: 546, column: 7, scope: !1097)
!2652 = !DILocation(line: 549, column: 3, scope: !1107)
!2653 = !DILocation(line: 549, column: 3, scope: !1109)
!2654 = !DILocation(line: 549, column: 3, scope: !1108)
!2655 = !DILocation(line: 550, column: 3, scope: !1097)
!2656 = !DILocation(line: 551, column: 3, scope: !1097)
!2657 = !DILocation(line: 553, column: 5, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !1, line: 552, column: 14)
!2659 = distinct !DILexicalBlock(scope: !1097, file: !1, line: 552, column: 7)
!2660 = !DILocation(line: 554, column: 5, scope: !2658)
!2661 = !{!1793, !1162, i64 1040}
!2662 = !DILocation(line: 555, column: 3, scope: !2658)
!2663 = !DILocation(line: 556, column: 3, scope: !1113)
!2664 = !DILocation(line: 556, column: 3, scope: !1114)
!2665 = !DILocation(line: 556, column: 3, scope: !1112)
!2666 = !DILocation(line: 557, column: 3, scope: !1118)
!2667 = !DILocation(line: 557, column: 3, scope: !1119)
!2668 = !DILocation(line: 557, column: 3, scope: !1117)
!2669 = !DILocation(line: 558, column: 1, scope: !1097)

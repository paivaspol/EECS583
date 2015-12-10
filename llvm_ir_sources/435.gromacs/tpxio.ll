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
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #8
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
  %3 = tail call float @llvm.fabs.f32(float %__x) #9
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
  %3 = tail call double @llvm.fabs.f64(double %__x) #9
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
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #9
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
  %1 = tail call float @llvm.fabs.f32(float %__x) #9
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #2 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #9
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #2 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #9
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
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #8
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
  %1 = tail call { double, double } @__sincos_stret(double %__x) #8
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
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #8
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
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #8
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !16
  store double %3, double* %__cosp, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @_do_section(i32 %fp, i32 %key, i32 %bRead, i8* %src, i32 %line) #4 {
  %buf = alloca [4096 x i8], align 16
  %1 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #5
  %2 = tail call i32 @gmx_fio_getftp(i32 %fp) #8
  %3 = icmp eq i32 %2, 27
  br i1 %3, label %4, label %37

; <label>:4                                       ; preds = %0
  %5 = icmp eq i32 %bRead, 0
  br i1 %5, label %6, label %17

; <label>:6                                       ; preds = %4
  %7 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %8 = sext i32 %key to i64
  %9 = getelementptr inbounds [7 x i8*]* @itemstr, i64 0, i64 %8
  %10 = load i8** %9, align 8, !tbaa !18
  %11 = tail call i32 %7(i8* %10, i32 1, i32 7, i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 88) #8
  %12 = tail call i32 @gmx_fio_getdebug(i32 %fp) #8
  tail call void @gmx_fio_setdebug(i32 %fp, i32 0) #8
  %13 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %14 = getelementptr inbounds [7 x i8*]* @comment_str, i64 0, i64 %8
  %15 = load i8** %14, align 8, !tbaa !18
  %16 = tail call i32 %13(i8* %15, i32 1, i32 7, i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 91) #8
  tail call void @gmx_fio_setdebug(i32 %fp, i32 %12) #8
  br label %37

; <label>:17                                      ; preds = %4
  %18 = tail call i32 @gmx_fio_getdebug(i32 %fp) #8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %..preheader_crit_edge, label %20

..preheader_crit_edge:                            ; preds = %17
  %.pre1 = sext i32 %key to i64
  %.pre2 = getelementptr inbounds [7 x i8*]* @itemstr, i64 0, i64 %.pre1
  br label %.preheader

; <label>:20                                      ; preds = %17
  %21 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %22 = sext i32 %key to i64
  %23 = getelementptr inbounds [7 x i8*]* @itemstr, i64 0, i64 %22
  %24 = load i8** %23, align 8, !tbaa !18
  %25 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([32 x i8]* @.str3, i64 0, i64 0), i8* %24, i8* %src, i32 %line) #8
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %20
  %.pre-phi3 = phi i8** [ %.pre2, %..preheader_crit_edge ], [ %23, %20 ]
  br label %26

; <label>:26                                      ; preds = %.preheader, %26
  %27 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %28 = call i32 %27(i8* %1, i32 1, i32 7, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 100) #8
  %.pre = load i8** %.pre-phi3, align 8, !tbaa !18
  %29 = call i32 @strcasecmp(i8* %1, i8* %.pre) #8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %26

; <label>:31                                      ; preds = %26
  %32 = call i32 @gmx_fio_getdebug(i32 %fp) #8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

; <label>:34                                      ; preds = %31
  %35 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %36 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %35)
  br label %37

; <label>:37                                      ; preds = %31, %6, %34, %0
  call void @llvm.lifetime.end(i64 4096, i8* %1) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i32 @gmx_fio_getftp(i32) #1

; Function Attrs: optsize
declare i32 @gmx_fio_getdebug(i32) #1

; Function Attrs: optsize
declare void @gmx_fio_setdebug(i32, i32) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #6

; Function Attrs: nounwind optsize readonly
declare i32 @strcasecmp(i8* nocapture, i8* nocapture) #7

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @do_iparams(i32 %ftype, %union.t_iparams* %iparams, i32 %bRead) #4 {
  %buf = alloca [128 x i8], align 16
  %1 = icmp ne i32 %bRead, 0
  br i1 %1, label %6, label %2

; <label>:2                                       ; preds = %0
  %3 = sext i32 %ftype to i64
  %4 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %3, i32 0
  %5 = load i8** %4, align 8, !tbaa !19
  tail call void @set_comment(i8* %5) #8
  br label %6

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
  ]

.preheader:                                       ; preds = %6
  %7 = getelementptr inbounds [128 x i8]* %buf, i64 0, i64 0
  %8 = bitcast %union.t_iparams* %iparams to [6 x float]*
  br label %373

; <label>:9                                       ; preds = %6, %6, %6, %6, %6, %6, %6, %6
  %10 = icmp eq i32 %bRead, 0
  br i1 %10, label %27, label %11

; <label>:11                                      ; preds = %9
  %12 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %13 = bitcast %union.t_iparams* %iparams to i8*
  %14 = tail call i32 %12(i8* %13, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 368) #8
  %15 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %16 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %17 = bitcast float* %16 to i8*
  %18 = tail call i32 %15(i8* %17, i32 1, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 369) #8
  %19 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %20 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %21 = bitcast float* %20 to i8*
  %22 = tail call i32 %19(i8* %21, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str63, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 370) #8
  %23 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %24 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %25 = bitcast float* %24 to i8*
  %26 = tail call i32 %23(i8* %25, i32 1, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str64, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 371) #8
  br label %do_harm.exit

; <label>:27                                      ; preds = %9
  %28 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %29 = bitcast %union.t_iparams* %iparams to i8*
  %30 = tail call i32 %28(i8* %29, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 368) #8
  %31 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %32 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %33 = bitcast float* %32 to i8*
  %34 = tail call i32 %31(i8* %33, i32 1, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 369) #8
  %35 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %36 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %37 = bitcast float* %36 to i8*
  %38 = tail call i32 %35(i8* %37, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str63, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 370) #8
  %39 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %40 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %41 = bitcast float* %40 to i8*
  %42 = tail call i32 %39(i8* %41, i32 1, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str64, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 371) #8
  br label %do_harm.exit

; <label>:43                                      ; preds = %6
  br i1 %1, label %44, label %56

; <label>:44                                      ; preds = %43
  %45 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %46 = bitcast %union.t_iparams* %iparams to i8*
  %47 = tail call i32 %45(i8* %46, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 393) #8
  %48 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %49 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %50 = bitcast float* %49 to i8*
  %51 = tail call i32 %48(i8* %50, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 394) #8
  %52 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %53 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %54 = bitcast float* %53 to i8*
  %55 = tail call i32 %52(i8* %54, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 395) #8
  br label %do_harm.exit.thread

; <label>:56                                      ; preds = %43
  %57 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %58 = bitcast %union.t_iparams* %iparams to i8*
  %59 = tail call i32 %57(i8* %58, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 393) #8
  %60 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %61 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %62 = bitcast float* %61 to i8*
  %63 = tail call i32 %60(i8* %62, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 394) #8
  %64 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %65 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %66 = bitcast float* %65 to i8*
  %67 = tail call i32 %64(i8* %66, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 395) #8
  br label %do_harm.exit.thread2

; <label>:68                                      ; preds = %6
  br i1 %1, label %69, label %81

; <label>:69                                      ; preds = %68
  %70 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %71 = bitcast %union.t_iparams* %iparams to i8*
  %72 = tail call i32 %70(i8* %71, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 398) #8
  %73 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %74 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %75 = bitcast float* %74 to i8*
  %76 = tail call i32 %73(i8* %75, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 399) #8
  %77 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %78 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %79 = bitcast float* %78 to i8*
  %80 = tail call i32 %77(i8* %79, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 400) #8
  br label %do_harm.exit.thread

; <label>:81                                      ; preds = %68
  %82 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %83 = bitcast %union.t_iparams* %iparams to i8*
  %84 = tail call i32 %82(i8* %83, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 398) #8
  %85 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %86 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %87 = bitcast float* %86 to i8*
  %88 = tail call i32 %85(i8* %87, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 399) #8
  %89 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %90 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %91 = bitcast float* %90 to i8*
  %92 = tail call i32 %89(i8* %91, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 400) #8
  br label %do_harm.exit.thread2

; <label>:93                                      ; preds = %6
  br i1 %1, label %94, label %106

; <label>:94                                      ; preds = %93
  %95 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %96 = bitcast %union.t_iparams* %iparams to i8*
  %97 = tail call i32 %95(i8* %96, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 403) #8
  %98 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %99 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %100 = bitcast float* %99 to i8*
  %101 = tail call i32 %98(i8* %100, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 404) #8
  %102 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %103 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %104 = bitcast float* %103 to i8*
  %105 = tail call i32 %102(i8* %104, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 405) #8
  br label %do_harm.exit.thread

; <label>:106                                     ; preds = %93
  %107 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %108 = bitcast %union.t_iparams* %iparams to i8*
  %109 = tail call i32 %107(i8* %108, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 403) #8
  %110 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %111 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %112 = bitcast float* %111 to i8*
  %113 = tail call i32 %110(i8* %112, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 404) #8
  %114 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %115 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %116 = bitcast float* %115 to i8*
  %117 = tail call i32 %114(i8* %116, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 405) #8
  br label %do_harm.exit.thread2

; <label>:118                                     ; preds = %6
  br i1 %1, label %119, label %143

; <label>:119                                     ; preds = %118
  %120 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %121 = bitcast %union.t_iparams* %iparams to i8*
  %122 = tail call i32 %120(i8* %121, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 410) #8
  %123 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %124 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %125 = bitcast float* %124 to i8*
  %126 = tail call i32 %123(i8* %125, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 411) #8
  %127 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %128 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %129 = bitcast float* %128 to i8*
  %130 = tail call i32 %127(i8* %129, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 412) #8
  %131 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %132 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %133 = bitcast float* %132 to i8*
  %134 = tail call i32 %131(i8* %133, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 413) #8
  %135 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %136 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4
  %137 = bitcast float* %136 to i8*
  %138 = tail call i32 %135(i8* %137, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 414) #8
  %139 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %140 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5
  %141 = bitcast float* %140 to i8*
  %142 = tail call i32 %139(i8* %141, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 415) #8
  br label %do_harm.exit.thread

; <label>:143                                     ; preds = %118
  %144 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %145 = bitcast %union.t_iparams* %iparams to i8*
  %146 = tail call i32 %144(i8* %145, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 410) #8
  %147 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %148 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %149 = bitcast float* %148 to i8*
  %150 = tail call i32 %147(i8* %149, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 411) #8
  %151 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %152 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %153 = bitcast float* %152 to i8*
  %154 = tail call i32 %151(i8* %153, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 412) #8
  %155 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %156 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %157 = bitcast float* %156 to i8*
  %158 = tail call i32 %155(i8* %157, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 413) #8
  %159 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %160 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4
  %161 = bitcast float* %160 to i8*
  %162 = tail call i32 %159(i8* %161, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 414) #8
  %163 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %164 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5
  %165 = bitcast float* %164 to i8*
  %166 = tail call i32 %163(i8* %165, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 415) #8
  br label %do_harm.exit.thread2

; <label>:167                                     ; preds = %6
  br i1 %1, label %168, label %176

; <label>:168                                     ; preds = %167
  %169 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %170 = bitcast %union.t_iparams* %iparams to i8*
  %171 = tail call i32 %169(i8* %170, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 418) #8
  %172 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %173 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %174 = bitcast float* %173 to i8*
  %175 = tail call i32 %172(i8* %174, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 419) #8
  br label %do_harm.exit.thread

; <label>:176                                     ; preds = %167
  %177 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %178 = bitcast %union.t_iparams* %iparams to i8*
  %179 = tail call i32 %177(i8* %178, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 418) #8
  %180 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %181 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %182 = bitcast float* %181 to i8*
  %183 = tail call i32 %180(i8* %182, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 419) #8
  br label %do_harm.exit.thread2

; <label>:184                                     ; preds = %6
  br i1 %1, label %185, label %201

; <label>:185                                     ; preds = %184
  %186 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %187 = bitcast %union.t_iparams* %iparams to i8*
  %188 = tail call i32 %186(i8* %187, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 422) #8
  %189 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %190 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %191 = bitcast float* %190 to i8*
  %192 = tail call i32 %189(i8* %191, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 423) #8
  %193 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %194 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %195 = bitcast float* %194 to i8*
  %196 = tail call i32 %193(i8* %195, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 424) #8
  %197 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %198 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %199 = bitcast float* %198 to i8*
  %200 = tail call i32 %197(i8* %199, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 425) #8
  br label %do_harm.exit.thread

; <label>:201                                     ; preds = %184
  %202 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %203 = bitcast %union.t_iparams* %iparams to i8*
  %204 = tail call i32 %202(i8* %203, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 422) #8
  %205 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %206 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %207 = bitcast float* %206 to i8*
  %208 = tail call i32 %205(i8* %207, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 423) #8
  %209 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %210 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %211 = bitcast float* %210 to i8*
  %212 = tail call i32 %209(i8* %211, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 424) #8
  %213 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %214 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %215 = bitcast float* %214 to i8*
  %216 = tail call i32 %213(i8* %215, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 425) #8
  br label %do_harm.exit.thread2

; <label>:217                                     ; preds = %6
  br i1 %1, label %218, label %238

; <label>:218                                     ; preds = %217
  %219 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %220 = bitcast %union.t_iparams* %iparams to i8*
  %221 = tail call i32 %219(i8* %220, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 428) #8
  %222 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %223 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %224 = bitcast float* %223 to i8*
  %225 = tail call i32 %222(i8* %224, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 429) #8
  %226 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %227 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %228 = bitcast float* %227 to i8*
  %229 = tail call i32 %226(i8* %228, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 430) #8
  %230 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %231 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4
  %232 = bitcast float* %231 to i8*
  %233 = tail call i32 %230(i8* %232, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 431) #8
  %234 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %235 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %236 = bitcast float* %235 to i8*
  %237 = tail call i32 %234(i8* %236, i32 1, i32 1, i8* getelementptr inbounds ([20 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 432) #8
  br label %do_harm.exit.thread

; <label>:238                                     ; preds = %217
  %239 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %240 = bitcast %union.t_iparams* %iparams to i8*
  %241 = tail call i32 %239(i8* %240, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 428) #8
  %242 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %243 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %244 = bitcast float* %243 to i8*
  %245 = tail call i32 %242(i8* %244, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 429) #8
  %246 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %247 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %248 = bitcast float* %247 to i8*
  %249 = tail call i32 %246(i8* %248, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 430) #8
  %250 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %251 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4
  %252 = bitcast float* %251 to i8*
  %253 = tail call i32 %250(i8* %252, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 431) #8
  %254 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %255 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %256 = bitcast float* %255 to i8*
  %257 = tail call i32 %254(i8* %256, i32 1, i32 1, i8* getelementptr inbounds ([20 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 432) #8
  br label %do_harm.exit.thread2

; <label>:258                                     ; preds = %6
  br i1 %1, label %259, label %283

; <label>:259                                     ; preds = %258
  %260 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %261 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5
  %262 = bitcast float* %261 to i8*
  %263 = tail call i32 %260(i8* %262, i32 1, i32 1, i8* getelementptr inbounds ([22 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 435) #8
  %264 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %265 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4
  %266 = bitcast float* %265 to i8*
  %267 = tail call i32 %264(i8* %266, i32 1, i32 1, i8* getelementptr inbounds ([21 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 436) #8
  %268 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %269 = bitcast %union.t_iparams* %iparams to i8*
  %270 = tail call i32 %268(i8* %269, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 437) #8
  %271 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %272 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %273 = bitcast float* %272 to i8*
  %274 = tail call i32 %271(i8* %273, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 438) #8
  %275 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %276 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %277 = bitcast float* %276 to i8*
  %278 = tail call i32 %275(i8* %277, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 439) #8
  %279 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %280 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %281 = bitcast float* %280 to i8*
  %282 = tail call i32 %279(i8* %281, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 440) #8
  br label %do_harm.exit.thread

; <label>:283                                     ; preds = %258
  %284 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %285 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5
  %286 = bitcast float* %285 to i8*
  %287 = tail call i32 %284(i8* %286, i32 1, i32 1, i8* getelementptr inbounds ([22 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 435) #8
  %288 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %289 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4
  %290 = bitcast float* %289 to i8*
  %291 = tail call i32 %288(i8* %290, i32 1, i32 1, i8* getelementptr inbounds ([21 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 436) #8
  %292 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %293 = bitcast %union.t_iparams* %iparams to i8*
  %294 = tail call i32 %292(i8* %293, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 437) #8
  %295 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %296 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %297 = bitcast float* %296 to i8*
  %298 = tail call i32 %295(i8* %297, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 438) #8
  %299 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %300 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %301 = bitcast float* %300 to i8*
  %302 = tail call i32 %299(i8* %301, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 439) #8
  %303 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %304 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %305 = bitcast float* %304 to i8*
  %306 = tail call i32 %303(i8* %305, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 440) #8
  br label %do_harm.exit.thread2

; <label>:307                                     ; preds = %6
  br i1 %1, label %308, label %332

; <label>:308                                     ; preds = %307
  %309 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %310 = bitcast %union.t_iparams* %iparams to i8*
  %311 = tail call i32 %309(i8* %310, i32 1, i32 1, i8* getelementptr inbounds ([19 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 443) #8
  %312 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %313 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %314 = bitcast float* %313 to i8*
  %315 = tail call i32 %312(i8* %314, i32 1, i32 1, i8* getelementptr inbounds ([22 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 444) #8
  %316 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %317 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %318 = bitcast float* %317 to i8*
  %319 = tail call i32 %316(i8* %318, i32 1, i32 1, i8* getelementptr inbounds ([20 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 445) #8
  %320 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %321 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %322 = bitcast float* %321 to i8*
  %323 = tail call i32 %320(i8* %322, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 446) #8
  %324 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %325 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4
  %326 = bitcast float* %325 to i8*
  %327 = tail call i32 %324(i8* %326, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 447) #8
  %328 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %329 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5
  %330 = bitcast float* %329 to i8*
  %331 = tail call i32 %328(i8* %330, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 448) #8
  br label %do_harm.exit.thread

; <label>:332                                     ; preds = %307
  %333 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %334 = bitcast %union.t_iparams* %iparams to i8*
  %335 = tail call i32 %333(i8* %334, i32 1, i32 1, i8* getelementptr inbounds ([19 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 443) #8
  %336 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %337 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %338 = bitcast float* %337 to i8*
  %339 = tail call i32 %336(i8* %338, i32 1, i32 1, i8* getelementptr inbounds ([22 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 444) #8
  %340 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %341 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %342 = bitcast float* %341 to i8*
  %343 = tail call i32 %340(i8* %342, i32 1, i32 1, i8* getelementptr inbounds ([20 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 445) #8
  %344 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %345 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %346 = bitcast float* %345 to i8*
  %347 = tail call i32 %344(i8* %346, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 446) #8
  %348 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %349 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4
  %350 = bitcast float* %349 to i8*
  %351 = tail call i32 %348(i8* %350, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 447) #8
  %352 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %353 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5
  %354 = bitcast float* %353 to i8*
  %355 = tail call i32 %352(i8* %354, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 448) #8
  br label %do_harm.exit.thread2

; <label>:356                                     ; preds = %6
  br i1 %1, label %357, label %365

; <label>:357                                     ; preds = %356
  %358 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %359 = bitcast %union.t_iparams* %iparams to i8*
  %360 = tail call i32 %358(i8* %359, i32 1, i32 4, i8* getelementptr inbounds ([21 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 451) #8
  %361 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %362 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %363 = bitcast float* %362 to i8*
  %364 = tail call i32 %361(i8* %363, i32 1, i32 4, i8* getelementptr inbounds ([19 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 452) #8
  br label %do_harm.exit.thread

; <label>:365                                     ; preds = %356
  %366 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %367 = bitcast %union.t_iparams* %iparams to i8*
  %368 = tail call i32 %366(i8* %367, i32 1, i32 4, i8* getelementptr inbounds ([21 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 451) #8
  %369 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %370 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %371 = bitcast float* %370 to i8*
  %372 = tail call i32 %369(i8* %371, i32 1, i32 4, i8* getelementptr inbounds ([19 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 452) #8
  br label %do_harm.exit.thread2

; <label>:373                                     ; preds = %391, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %391 ]
  %bDum.04 = phi i32 [ 1, %.preheader ], [ %393, %391 ]
  call void @llvm.lifetime.start(i64 128, i8* %7) #5
  %374 = trunc i64 %indvars.iv to i32
  %375 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %7, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str48, i64 0, i64 0), i32 %374) #8
  %376 = icmp eq i32 %bDum.04, 0
  br i1 %376, label %391, label %377

; <label>:377                                     ; preds = %373
  br i1 %1, label %378, label %383

; <label>:378                                     ; preds = %377
  %379 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %380 = getelementptr inbounds [6 x float]* %8, i64 0, i64 %indvars.iv
  %381 = bitcast float* %380 to i8*
  %382 = call i32 %379(i8* %381, i32 1, i32 0, i8* %7, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 455) #8
  br label %388

; <label>:383                                     ; preds = %377
  %384 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %385 = getelementptr inbounds [6 x float]* %8, i64 0, i64 %indvars.iv
  %386 = bitcast float* %385 to i8*
  %387 = call i32 %384(i8* %386, i32 1, i32 0, i8* %7, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 455) #8
  br label %388

; <label>:388                                     ; preds = %383, %378
  %389 = phi i32 [ %382, %378 ], [ %387, %383 ]
  %390 = icmp ne i32 %389, 0
  br label %391

; <label>:391                                     ; preds = %373, %388
  %392 = phi i1 [ false, %373 ], [ %390, %388 ]
  %393 = zext i1 %392 to i32
  call void @llvm.lifetime.end(i64 128, i8* %7) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond, label %do_harm.exit, label %373

; <label>:394                                     ; preds = %6, %6
  br i1 %1, label %395, label %403

; <label>:395                                     ; preds = %394
  %396 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %397 = bitcast %union.t_iparams* %iparams to i8*
  %398 = tail call i32 %396(i8* %397, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 459) #8
  %399 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %400 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %401 = bitcast float* %400 to i8*
  %402 = tail call i32 %399(i8* %401, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 460) #8
  br label %do_harm.exit.thread

; <label>:403                                     ; preds = %394
  %404 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %405 = bitcast %union.t_iparams* %iparams to i8*
  %406 = tail call i32 %404(i8* %405, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 459) #8
  %407 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %408 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %409 = bitcast float* %408 to i8*
  %410 = tail call i32 %407(i8* %409, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 460) #8
  br label %do_harm.exit.thread2

; <label>:411                                     ; preds = %6
  br i1 %1, label %412, label %420

; <label>:412                                     ; preds = %411
  %413 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %414 = bitcast %union.t_iparams* %iparams to i8*
  %415 = tail call i32 %413(i8* %414, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 463) #8
  %416 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %417 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %418 = bitcast float* %417 to i8*
  %419 = tail call i32 %416(i8* %418, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str52, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 464) #8
  br label %do_harm.exit.thread

; <label>:420                                     ; preds = %411
  %421 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %422 = bitcast %union.t_iparams* %iparams to i8*
  %423 = tail call i32 %421(i8* %422, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 463) #8
  %424 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %425 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %426 = bitcast float* %425 to i8*
  %427 = tail call i32 %424(i8* %426, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str52, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 464) #8
  br label %do_harm.exit.thread2

; <label>:428                                     ; preds = %6
  br i1 %1, label %429, label %433

; <label>:429                                     ; preds = %428
  %430 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %431 = bitcast %union.t_iparams* %iparams to i8*
  %432 = tail call i32 %430(i8* %431, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 467) #8
  br label %do_harm.exit.thread

; <label>:433                                     ; preds = %428
  %434 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %435 = bitcast %union.t_iparams* %iparams to i8*
  %436 = tail call i32 %434(i8* %435, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 467) #8
  br label %do_harm.exit.thread2

; <label>:437                                     ; preds = %6, %6, %6
  br i1 %1, label %438, label %446

; <label>:438                                     ; preds = %437
  %439 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %440 = bitcast %union.t_iparams* %iparams to i8*
  %441 = tail call i32 %439(i8* %440, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 472) #8
  %442 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %443 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %444 = bitcast float* %443 to i8*
  %445 = tail call i32 %442(i8* %444, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 473) #8
  br label %do_harm.exit.thread

; <label>:446                                     ; preds = %437
  %447 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %448 = bitcast %union.t_iparams* %iparams to i8*
  %449 = tail call i32 %447(i8* %448, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 472) #8
  %450 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %451 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %452 = bitcast float* %451 to i8*
  %453 = tail call i32 %450(i8* %452, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 473) #8
  br label %do_harm.exit.thread2

; <label>:454                                     ; preds = %6, %6
  br i1 %1, label %455, label %467

; <label>:455                                     ; preds = %454
  %456 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %457 = bitcast %union.t_iparams* %iparams to i8*
  %458 = tail call i32 %456(i8* %457, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 477) #8
  %459 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %460 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %461 = bitcast float* %460 to i8*
  %462 = tail call i32 %459(i8* %461, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 478) #8
  %463 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %464 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %465 = bitcast float* %464 to i8*
  %466 = tail call i32 %463(i8* %465, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 479) #8
  br label %do_harm.exit.thread

; <label>:467                                     ; preds = %454
  %468 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %469 = bitcast %union.t_iparams* %iparams to i8*
  %470 = tail call i32 %468(i8* %469, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 477) #8
  %471 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %472 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %473 = bitcast float* %472 to i8*
  %474 = tail call i32 %471(i8* %473, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 478) #8
  %475 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %476 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %477 = bitcast float* %476 to i8*
  %478 = tail call i32 %475(i8* %477, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 479) #8
  br label %do_harm.exit.thread2

; <label>:479                                     ; preds = %6
  %480 = sext i32 %ftype to i64
  %481 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %480, i32 0
  %482 = load i8** %481, align 8, !tbaa !19
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([44 x i8]* @.str56, i64 0, i64 0), i32 %ftype, i8* %482, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 483) #8
  br label %do_harm.exit

do_harm.exit:                                     ; preds = %391, %27, %11, %479, %6
  br i1 %1, label %do_harm.exit.thread, label %do_harm.exit.thread2

do_harm.exit.thread2:                             ; preds = %56, %81, %106, %143, %176, %201, %238, %283, %332, %365, %403, %420, %433, %446, %467, %do_harm.exit
  call void @unset_comment() #8
  br label %do_harm.exit.thread

do_harm.exit.thread:                              ; preds = %44, %69, %94, %119, %168, %185, %218, %259, %308, %357, %395, %412, %429, %438, %455, %do_harm.exit.thread2, %do_harm.exit
  ret void
}

; Function Attrs: optsize
declare void @set_comment(i8*) #1

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #1

; Function Attrs: optsize
declare void @unset_comment() #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @open_tpx(i8* %fn, i8* %mode) #4 {
  %1 = tail call i32 @gmx_fio_open(i8* %fn, i8* %mode) #8
  ret i32 %1
}

; Function Attrs: optsize
declare i32 @gmx_fio_open(i8*, i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @close_tpx(i32 %fp) #4 {
  tail call void @gmx_fio_close(i32 %fp) #8
  ret void
}

; Function Attrs: optsize
declare void @gmx_fio_close(i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @read_tpxheader(i8* %fn, %struct.t_tpxheader* %tpx) #4 {
  %1 = tail call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str57, i64 0, i64 0)) #8
  tail call fastcc void @do_tpxheader(i32 %1, i32 1, %struct.t_tpxheader* %tpx) #10
  tail call void @gmx_fio_close(i32 %1) #8
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @do_tpxheader(i32 %fp, i32 %bRead, %struct.t_tpxheader* %tpx) #4 {
  %buf = alloca [4096 x i8], align 16
  %precision = alloca i32, align 4
  %1 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #5
  tail call void @gmx_fio_select(i32 %fp) #8
  %2 = tail call i32 @bDebugMode() #8
  tail call void @gmx_fio_setdebug(i32 %fp, i32 %2) #8
  store i32 4, i32* %precision, align 4, !tbaa !22
  %3 = icmp ne i32 %bRead, 0
  br i1 %3, label %4, label %24

; <label>:4                                       ; preds = %0
  %5 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %6 = call i32 %5(i8* %1, i32 1, i32 7, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 736) #8
  %7 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([8 x i8]* @.str65, i64 0, i64 0), i64 7) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

; <label>:9                                       ; preds = %4
  %10 = call i8* @gmx_fio_getname(i32 %fp) #8
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([173 x i8]* @.str66, i64 0, i64 0), i8* %10) #8
  br label %11

; <label>:11                                      ; preds = %4, %9
  %12 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %13 = bitcast i32* %precision to i8*
  %14 = call i32 %12(i8* %13, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 742) #8
  %15 = load i32* %precision, align 4, !tbaa !22
  %16 = icmp eq i32 %15, 8
  %17 = zext i1 %16 to i32
  switch i32 %15, label %18 [
    i32 8, label %21
    i32 4, label %21
  ]

; <label>:18                                      ; preds = %11
  %19 = call i8* @gmx_fio_getname(i32 %fp) #8
  %20 = load i32* %precision, align 4, !tbaa !22
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([67 x i8]* @.str68, i64 0, i64 0), i8* %19, i32 %20, i64 4, i64 8) #8
  br label %21

; <label>:21                                      ; preds = %11, %11, %18
  call void @gmx_fio_setprecision(i32 %fp, i32 %17) #8
  %22 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %23 = call i32 %22(i8* bitcast (i32* @file_version to i8*), i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str70, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 763) #8
  br label %33

; <label>:24                                      ; preds = %0
  %25 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %26 = tail call i8* @GromacsVersion() #8
  %27 = tail call i32 %25(i8* %26, i32 1, i32 7, i8* getelementptr inbounds ([17 x i8]* @.str69, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 755) #8
  tail call void @gmx_fio_setprecision(i32 %fp, i32 0) #8
  %28 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %29 = bitcast i32* %precision to i8*
  %30 = call i32 %28(i8* %29, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 758) #8
  store i32 24, i32* @file_version, align 4, !tbaa !22
  %31 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %32 = call i32 %31(i8* bitcast (i32* @file_version to i8*), i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str70, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 763) #8
  br label %33

; <label>:33                                      ; preds = %24, %21
  %34 = load i32* @file_version, align 4, !tbaa !22
  %.off = add i32 %34, -10
  %35 = icmp ugt i32 %.off, 14
  br i1 %35, label %36, label %39

; <label>:36                                      ; preds = %33
  %37 = call i8* @gmx_fio_getname(i32 %fp) #8
  %38 = load i32* @file_version, align 4, !tbaa !22
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([57 x i8]* @.str71, i64 0, i64 0), i8* %37, i32 %38, i32 24) #8
  br label %39

; <label>:39                                      ; preds = %33, %36
  call void @_do_section(i32 %fp, i32 0, i32 %bRead, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 769) #10
  br i1 %3, label %40, label %80

; <label>:40                                      ; preds = %39
  %41 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %42 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 6
  %43 = bitcast i32* %42 to i8*
  %44 = call i32 %41(i8* %43, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str72, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 770) #8
  %45 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %46 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 7
  %47 = bitcast i32* %46 to i8*
  %48 = call i32 %45(i8* %47, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str73, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 771) #8
  %49 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %50 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 8
  %51 = bitcast float* %50 to i8*
  %52 = call i32 %49(i8* %51, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str74, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 772) #8
  %53 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %54 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 9
  %55 = bitcast float* %54 to i8*
  %56 = call i32 %53(i8* %55, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str75, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 773) #8
  %57 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %58 = bitcast %struct.t_tpxheader* %tpx to i8*
  %59 = call i32 %57(i8* %58, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str76, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 774) #8
  %60 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %61 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 2
  %62 = bitcast i32* %61 to i8*
  %63 = call i32 %60(i8* %62, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str77, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 775) #8
  %64 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %65 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 3
  %66 = bitcast i32* %65 to i8*
  %67 = call i32 %64(i8* %66, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str78, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 776) #8
  %68 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %69 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 4
  %70 = bitcast i32* %69 to i8*
  %71 = call i32 %68(i8* %70, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str79, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 777) #8
  %72 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %73 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 5
  %74 = bitcast i32* %73 to i8*
  %75 = call i32 %72(i8* %74, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str80, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 778) #8
  %76 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %77 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 1
  %78 = bitcast i32* %77 to i8*
  %79 = call i32 %76(i8* %78, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str81, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 779) #8
  br label %120

; <label>:80                                      ; preds = %39
  %81 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %82 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 6
  %83 = bitcast i32* %82 to i8*
  %84 = call i32 %81(i8* %83, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str72, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 770) #8
  %85 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %86 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 7
  %87 = bitcast i32* %86 to i8*
  %88 = call i32 %85(i8* %87, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str73, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 771) #8
  %89 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %90 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 8
  %91 = bitcast float* %90 to i8*
  %92 = call i32 %89(i8* %91, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str74, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 772) #8
  %93 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %94 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 9
  %95 = bitcast float* %94 to i8*
  %96 = call i32 %93(i8* %95, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str75, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 773) #8
  %97 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %98 = bitcast %struct.t_tpxheader* %tpx to i8*
  %99 = call i32 %97(i8* %98, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str76, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 774) #8
  %100 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %101 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 2
  %102 = bitcast i32* %101 to i8*
  %103 = call i32 %100(i8* %102, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str77, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 775) #8
  %104 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %105 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 3
  %106 = bitcast i32* %105 to i8*
  %107 = call i32 %104(i8* %106, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str78, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 776) #8
  %108 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %109 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 4
  %110 = bitcast i32* %109 to i8*
  %111 = call i32 %108(i8* %110, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str79, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 777) #8
  %112 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %113 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 5
  %114 = bitcast i32* %113 to i8*
  %115 = call i32 %112(i8* %114, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str80, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 778) #8
  %116 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %117 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 1
  %118 = bitcast i32* %117 to i8*
  %119 = call i32 %116(i8* %118, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str81, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 779) #8
  br label %120

; <label>:120                                     ; preds = %80, %40
  call void @llvm.lifetime.end(i64 4096, i8* %1) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @write_tpx(i8* %fn, i32 %step, float %t, float %lambda, %struct.t_inputrec* %ir, [3 x float]* %box, i32 %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #4 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  store i32 %step, i32* %1, align 4, !tbaa !22
  store float %t, float* %2, align 4, !tbaa !14
  store float %lambda, float* %3, align 4, !tbaa !14
  store i32 %natoms, i32* %4, align 4, !tbaa !22
  %5 = tail call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str58, i64 0, i64 0)) #8
  call fastcc void @do_tpx(i32 %5, i32 0, i32* %1, float* %2, float* %3, %struct.t_inputrec* %ir, [3 x float]* %box, i32* %4, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #10
  tail call void @gmx_fio_close(i32 %5) #8
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @do_tpx(i32 %fp, i32 %bRead, i32* nocapture %step, float* nocapture %t, float* nocapture %lambda, %struct.t_inputrec* %ir, [3 x float]* %box, i32* nocapture %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #4 {
  %tpx = alloca %struct.t_tpxheader, align 16
  %dum_ir = alloca %struct.t_inputrec, align 8
  %dum_top = alloca %struct.t_topology, align 8
  %1 = bitcast %struct.t_tpxheader* %tpx to i8*
  call void @llvm.lifetime.start(i64 40, i8* %1) #5
  %2 = bitcast %struct.t_inputrec* %dum_ir to i8*
  call void @llvm.lifetime.start(i64 592, i8* %2) #5
  %3 = bitcast %struct.t_topology* %dum_top to i8*
  call void @llvm.lifetime.start(i64 50264, i8* %3) #5
  %4 = icmp ne i32 %bRead, 0
  br i1 %4, label %34, label %.thread

.thread:                                          ; preds = %0
  %5 = load i32* %natoms, align 4, !tbaa !22
  %6 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 6
  store i32 %5, i32* %6, align 8, !tbaa !23
  %7 = load i32* %step, align 4, !tbaa !22
  %8 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 7
  store i32 %7, i32* %8, align 4, !tbaa !25
  %9 = bitcast float* %t to i32*
  %10 = load i32* %9, align 4, !tbaa !14
  %11 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 8
  %12 = bitcast float* %11 to i32*
  store i32 %10, i32* %12, align 16, !tbaa !26
  %13 = bitcast float* %lambda to i32*
  %14 = load i32* %13, align 4, !tbaa !14
  %15 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 9
  %16 = bitcast float* %15 to i32*
  store i32 %14, i32* %16, align 4, !tbaa !27
  %17 = icmp ne %struct.t_inputrec* %ir, null
  %18 = icmp ne %struct.t_topology* %top, null
  %19 = icmp ne [3 x float]* %x, null
  %20 = icmp ne [3 x float]* %v, null
  %21 = zext i1 %20 to i32
  %22 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 4
  store i32 %21, i32* %22, align 16, !tbaa !28
  %23 = icmp ne [3 x float]* %f, null
  %24 = zext i1 %23 to i32
  %25 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 5
  store i32 %24, i32* %25, align 4, !tbaa !29
  %26 = icmp ne [3 x float]* %box, null
  %27 = insertelement <4 x i1> undef, i1 %17, i32 0
  %28 = insertelement <4 x i1> %27, i1 %26, i32 1
  %29 = insertelement <4 x i1> %28, i1 %18, i32 2
  %30 = insertelement <4 x i1> %29, i1 %19, i32 3
  %31 = zext <4 x i1> %30 to <4 x i32>
  %32 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 1
  %33 = bitcast %struct.t_tpxheader* %tpx to <4 x i32>*
  store <4 x i32> %31, <4 x i32>* %33, align 16, !tbaa !22
  call fastcc void @do_tpxheader(i32 %fp, i32 0, %struct.t_tpxheader* %tpx) #10
  br label %._crit_edge20

; <label>:34                                      ; preds = %0
  call fastcc void @do_tpxheader(i32 %fp, i32 %bRead, %struct.t_tpxheader* %tpx) #10
  %35 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 6
  %36 = load i32* %35, align 8, !tbaa !23
  store i32 %36, i32* %natoms, align 4, !tbaa !22
  %37 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 7
  %38 = load i32* %37, align 4, !tbaa !25
  store i32 %38, i32* %step, align 4, !tbaa !22
  %39 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 8
  %40 = bitcast float* %39 to i32*
  %41 = load i32* %40, align 16, !tbaa !26
  %42 = bitcast float* %t to i32*
  store i32 %41, i32* %42, align 4, !tbaa !14
  %43 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 9
  %44 = bitcast float* %43 to i32*
  %45 = load i32* %44, align 4, !tbaa !27
  %46 = bitcast float* %lambda to i32*
  store i32 %45, i32* %46, align 4, !tbaa !14
  %47 = icmp ne [3 x float]* %box, null
  %.pre = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 1
  %48 = load i32* %.pre, align 4
  %49 = icmp eq i32 %48, 0
  %or.cond = and i1 %47, %49
  br i1 %or.cond, label %50, label %._crit_edge20

; <label>:50                                      ; preds = %34
  %51 = call i8* @gmx_fio_getname(i32 %fp) #8
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([12 x i8]* @.str82, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str83, i64 0, i64 0), i8* %51) #8
  br label %._crit_edge20

._crit_edge20:                                    ; preds = %34, %.thread, %50
  %.pre-phi = phi i32* [ %32, %.thread ], [ %.pre, %50 ], [ %.pre, %34 ]
  call void @_do_section(i32 %fp, i32 2, i32 %bRead, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 815) #10
  %52 = load i32* %.pre-phi, align 4, !tbaa !30
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

; <label>:54                                      ; preds = %._crit_edge20
  br i1 %4, label %55, label %.thread13

; <label>:55                                      ; preds = %54
  %56 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %57 = bitcast [3 x float]* %box to i8*
  %58 = call i32 %56(i8* %57, i32 3, i32 5, i8* getelementptr inbounds ([4 x i8]* @.str83, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 816) #8
  br label %63

.thread13:                                        ; preds = %54
  %59 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %60 = bitcast [3 x float]* %box to i8*
  %61 = call i32 %59(i8* %60, i32 3, i32 5, i8* getelementptr inbounds ([4 x i8]* @.str83, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 816) #8
  %62 = icmp ne %struct.t_inputrec* %ir, null
  br label %71

; <label>:63                                      ; preds = %._crit_edge20, %55
  %64 = icmp ne %struct.t_inputrec* %ir, null
  %or.cond3 = and i1 %4, %64
  br i1 %or.cond3, label %65, label %71

; <label>:65                                      ; preds = %63
  %66 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 0
  %67 = load i32* %66, align 16, !tbaa !31
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

; <label>:69                                      ; preds = %65
  %70 = call i8* @gmx_fio_getname(i32 %fp) #8
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([12 x i8]* @.str82, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str84, i64 0, i64 0), i8* %70) #8
  br label %71

; <label>:71                                      ; preds = %.thread13, %65, %69, %63
  %72 = phi i1 [ %62, %.thread13 ], [ true, %65 ], [ true, %69 ], [ %64, %63 ]
  call void @_do_section(i32 %fp, i32 1, i32 %bRead, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 819) #10
  %73 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 0
  %74 = load i32* %73, align 16, !tbaa !31
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

; <label>:76                                      ; preds = %71
  br i1 %72, label %77, label %78

; <label>:77                                      ; preds = %76
  call fastcc void @do_inputrec(%struct.t_inputrec* %ir, i32 %bRead) #10
  br label %79

; <label>:78                                      ; preds = %76
  call void @init_inputrec(%struct.t_inputrec* %dum_ir) #8
  call fastcc void @do_inputrec(%struct.t_inputrec* %dum_ir, i32 %bRead) #10
  call void @done_inputrec(%struct.t_inputrec* %dum_ir) #8
  br label %79

; <label>:79                                      ; preds = %71, %77, %78
  %80 = icmp ne %struct.t_topology* %top, null
  %or.cond5 = and i1 %4, %80
  %81 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 2
  %82 = load i32* %81, align 8
  %83 = icmp eq i32 %82, 0
  %or.cond27 = and i1 %or.cond5, %83
  br i1 %or.cond27, label %84, label %._crit_edge19

; <label>:84                                      ; preds = %79
  %85 = call i8* @gmx_fio_getname(i32 %fp) #8
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([12 x i8]* @.str82, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str85, i64 0, i64 0), i8* %85) #8
  br label %._crit_edge19

._crit_edge19:                                    ; preds = %79, %84
  call void @_do_section(i32 %fp, i32 3, i32 %bRead, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 830) #10
  %86 = load i32* %81, align 8, !tbaa !32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

; <label>:88                                      ; preds = %._crit_edge19
  br i1 %80, label %89, label %90

; <label>:89                                      ; preds = %88
  call fastcc void @do_top(%struct.t_topology* %top, i32 %bRead) #10
  br label %91

; <label>:90                                      ; preds = %88
  call fastcc void @do_top(%struct.t_topology* %dum_top, i32 %bRead) #10
  call void @done_top(%struct.t_topology* %dum_top) #8
  br label %91

; <label>:91                                      ; preds = %._crit_edge19, %89, %90
  %92 = icmp ne [3 x float]* %x, null
  %or.cond7 = and i1 %4, %92
  %93 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 3
  %94 = load i32* %93, align 4
  %95 = icmp eq i32 %94, 0
  %or.cond29 = and i1 %or.cond7, %95
  br i1 %or.cond29, label %96, label %._crit_edge

; <label>:96                                      ; preds = %91
  %97 = call i8* @gmx_fio_getname(i32 %fp) #8
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([12 x i8]* @.str82, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str86, i64 0, i64 0), i8* %97) #8
  br label %._crit_edge

._crit_edge:                                      ; preds = %91, %96
  call void @_do_section(i32 %fp, i32 4, i32 %bRead, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 840) #10
  %98 = load i32* %93, align 4, !tbaa !33
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %110, label %100

; <label>:100                                     ; preds = %._crit_edge
  br i1 %4, label %101, label %.thread15

; <label>:101                                     ; preds = %100
  %102 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %103 = bitcast [3 x float]* %x to i8*
  %104 = load i32* %natoms, align 4, !tbaa !22
  %105 = call i32 %102(i8* %103, i32 %104, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str86, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 841) #8
  br label %110

.thread15:                                        ; preds = %100
  %106 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %107 = bitcast [3 x float]* %x to i8*
  %108 = load i32* %natoms, align 4, !tbaa !22
  %109 = call i32 %106(i8* %107, i32 %108, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str86, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 841) #8
  br label %118

; <label>:110                                     ; preds = %._crit_edge, %101
  %111 = icmp ne [3 x float]* %v, null
  %or.cond9 = and i1 %4, %111
  br i1 %or.cond9, label %112, label %118

; <label>:112                                     ; preds = %110
  %113 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 4
  %114 = load i32* %113, align 16, !tbaa !28
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %118

; <label>:116                                     ; preds = %112
  %117 = call i8* @gmx_fio_getname(i32 %fp) #8
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([12 x i8]* @.str82, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str87, i64 0, i64 0), i8* %117) #8
  br label %118

; <label>:118                                     ; preds = %.thread15, %112, %116, %110
  call void @_do_section(i32 %fp, i32 5, i32 %bRead, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 844) #10
  %119 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 4
  %120 = load i32* %119, align 16, !tbaa !28
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %132, label %122

; <label>:122                                     ; preds = %118
  br i1 %4, label %123, label %.thread17

; <label>:123                                     ; preds = %122
  %124 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %125 = bitcast [3 x float]* %v to i8*
  %126 = load i32* %natoms, align 4, !tbaa !22
  %127 = call i32 %124(i8* %125, i32 %126, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str87, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 845) #8
  br label %132

.thread17:                                        ; preds = %122
  %128 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %129 = bitcast [3 x float]* %v to i8*
  %130 = load i32* %natoms, align 4, !tbaa !22
  %131 = call i32 %128(i8* %129, i32 %130, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str87, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 845) #8
  br label %140

; <label>:132                                     ; preds = %118, %123
  %133 = icmp ne [3 x float]* %f, null
  %or.cond11 = and i1 %4, %133
  br i1 %or.cond11, label %134, label %140

; <label>:134                                     ; preds = %132
  %135 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 5
  %136 = load i32* %135, align 4, !tbaa !29
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %140

; <label>:138                                     ; preds = %134
  %139 = call i8* @gmx_fio_getname(i32 %fp) #8
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([12 x i8]* @.str82, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str88, i64 0, i64 0), i8* %139) #8
  br label %140

; <label>:140                                     ; preds = %.thread17, %134, %138, %132
  call void @_do_section(i32 %fp, i32 6, i32 %bRead, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 848) #10
  %141 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 5
  %142 = load i32* %141, align 4, !tbaa !29
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %155, label %144

; <label>:144                                     ; preds = %140
  br i1 %4, label %145, label %150

; <label>:145                                     ; preds = %144
  %146 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %147 = bitcast [3 x float]* %f to i8*
  %148 = load i32* %natoms, align 4, !tbaa !22
  %149 = call i32 %146(i8* %147, i32 %148, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str88, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 849) #8
  br label %155

; <label>:150                                     ; preds = %144
  %151 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %152 = bitcast [3 x float]* %f to i8*
  %153 = load i32* %natoms, align 4, !tbaa !22
  %154 = call i32 %151(i8* %152, i32 %153, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str88, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 849) #8
  br label %155

; <label>:155                                     ; preds = %140, %145, %150
  call void @llvm.lifetime.end(i64 50264, i8* %3) #5
  call void @llvm.lifetime.end(i64 592, i8* %2) #5
  call void @llvm.lifetime.end(i64 40, i8* %1) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @read_tpx(i8* %fn, i32* nocapture %step, float* nocapture %t, float* nocapture %lambda, %struct.t_inputrec* %ir, [3 x float]* %box, i32* nocapture %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #4 {
  %1 = tail call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str57, i64 0, i64 0)) #8
  tail call fastcc void @do_tpx(i32 %1, i32 1, i32* %step, float* %t, float* %lambda, %struct.t_inputrec* %ir, [3 x float]* %box, i32* %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #10
  tail call void @gmx_fio_close(i32 %1) #8
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @fwrite_tpx(i32 %fp, i32 %step, float %t, float %lambda, %struct.t_inputrec* %ir, [3 x float]* %box, i32 %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #4 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  store i32 %step, i32* %1, align 4, !tbaa !22
  store float %t, float* %2, align 4, !tbaa !14
  store float %lambda, float* %3, align 4, !tbaa !14
  store i32 %natoms, i32* %4, align 4, !tbaa !22
  call fastcc void @do_tpx(i32 %fp, i32 0, i32* %1, float* %2, float* %3, %struct.t_inputrec* %ir, [3 x float]* %box, i32* %4, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #10
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @fread_tpx(i32 %fp, i32* nocapture %step, float* nocapture %t, float* nocapture %lambda, %struct.t_inputrec* %ir, [3 x float]* %box, i32* nocapture %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #4 {
  tail call fastcc void @do_tpx(i32 %fp, i32 1, i32* %step, float* %t, float* %lambda, %struct.t_inputrec* %ir, [3 x float]* %box, i32* %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #10
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @fn2bTPX(i8* %file) #4 {
  %1 = tail call i32 @fn2ftp(i8* %file) #8
  %.off = add i32 %1, -26
  %switch = icmp ult i32 %.off, 3
  %. = zext i1 %switch to i32
  ret i32 %.
}

; Function Attrs: optsize
declare i32 @fn2ftp(i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @read_tps_conf(i8* %infile, i8* %title, %struct.t_topology* %top, [3 x float]** %x, [3 x float]** %v, [3 x float]* %box, i32 %bMass) #4 {
  %header = alloca %struct.t_tpxheader, align 4
  %t = alloca float, align 4
  %lambda = alloca float, align 4
  %natoms = alloca i32, align 4
  %step = alloca i32, align 4
  %1 = bitcast %struct.t_tpxheader* %header to i8*
  call void @llvm.lifetime.start(i64 40, i8* %1) #5
  %2 = tail call i32 @fn2ftp(i8* %infile) #8
  %.off.i = add i32 %2, -26
  %switch.i = icmp ult i32 %.off.i, 3
  %..i = zext i1 %switch.i to i32
  br i1 %switch.i, label %3, label %33

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @gmx_fio_open(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str57, i64 0, i64 0)) #8
  call fastcc void @do_tpxheader(i32 %4, i32 1, %struct.t_tpxheader* %header) #8
  call void @gmx_fio_close(i32 %4) #8
  %5 = icmp eq [3 x float]** %x, null
  br i1 %5, label %11, label %6

; <label>:6                                       ; preds = %3
  %7 = getelementptr inbounds %struct.t_tpxheader* %header, i64 0, i32 6
  %8 = load i32* %7, align 4, !tbaa !23
  %9 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 938, i32 %8, i32 12) #8
  %10 = bitcast [3 x float]** %x to i8**
  store i8* %9, i8** %10, align 8, !tbaa !18
  br label %11

; <label>:11                                      ; preds = %3, %6
  %12 = icmp eq [3 x float]** %v, null
  br i1 %12, label %18, label %13

; <label>:13                                      ; preds = %11
  %14 = getelementptr inbounds %struct.t_tpxheader* %header, i64 0, i32 6
  %15 = load i32* %14, align 4, !tbaa !23
  %16 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str60, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 940, i32 %15, i32 12) #8
  %17 = bitcast [3 x float]** %v to i8**
  store i8* %16, i8** %17, align 8, !tbaa !18
  br label %18

; <label>:18                                      ; preds = %11, %13
  br i1 %5, label %21, label %19

; <label>:19                                      ; preds = %18
  %20 = load [3 x float]** %x, align 8, !tbaa !18
  br label %21

; <label>:21                                      ; preds = %18, %19
  %22 = phi [3 x float]* [ %20, %19 ], [ null, %18 ]
  br i1 %12, label %25, label %23

; <label>:23                                      ; preds = %21
  %24 = load [3 x float]** %v, align 8, !tbaa !18
  br label %25

; <label>:25                                      ; preds = %21, %23
  %26 = phi [3 x float]* [ %24, %23 ], [ null, %21 ]
  %27 = call i32 @gmx_fio_open(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str57, i64 0, i64 0)) #8
  call fastcc void @do_tpx(i32 %27, i32 1, i32* %step, float* %t, float* %lambda, %struct.t_inputrec* null, [3 x float]* %box, i32* %natoms, [3 x float]* %22, [3 x float]* %26, [3 x float]* null, %struct.t_topology* %top) #8
  call void @gmx_fio_close(i32 %27) #8
  %28 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0
  %29 = load i8*** %28, align 8, !tbaa !34
  %30 = load i8** %29, align 8, !tbaa !18
  %31 = call i64 @llvm.objectsize.i64.p0i8(i8* %title, i1 false)
  %32 = call i8* @__strcpy_chk(i8* %title, i8* %30, i64 %31) #8
  br label %73

; <label>:33                                      ; preds = %0
  call void @get_stx_coordnum(i8* %infile, i32* %natoms) #8
  %34 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2
  %35 = load i32* %natoms, align 4, !tbaa !22
  call void @init_t_atoms(%struct.t_atoms* %34, i32 %35, i32 0) #8
  %36 = load i32* %natoms, align 4, !tbaa !22
  %37 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 949, i32 %36, i32 12) #8
  %38 = bitcast [3 x float]** %x to i8**
  store i8* %37, i8** %38, align 8, !tbaa !18
  %39 = icmp eq [3 x float]** %v, null
  %40 = bitcast i8* %37 to [3 x float]*
  br i1 %39, label %.thread, label %41

; <label>:41                                      ; preds = %33
  %42 = load i32* %natoms, align 4, !tbaa !22
  %43 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str60, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 951, i32 %42, i32 12) #8
  %44 = bitcast [3 x float]** %v to i8**
  store i8* %43, i8** %44, align 8, !tbaa !18
  %.cast = bitcast i8* %43 to [3 x float]*
  %.pre = load [3 x float]** %x, align 8
  br label %.thread

.thread:                                          ; preds = %33, %41
  %45 = phi [3 x float]* [ %.pre, %41 ], [ %40, %33 ]
  %46 = phi [3 x float]* [ %.cast, %41 ], [ null, %33 ]
  call void @read_stx_conf(i8* %infile, i8* %title, %struct.t_atoms* %34, [3 x float]* %45, [3 x float]* %46, [3 x float]* %box) #8
  %47 = icmp ne i32 %bMass, 0
  %48 = load i32* %natoms, align 4
  %49 = icmp sgt i32 %48, 0
  %or.cond = and i1 %47, %49
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.thread
  %50 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1
  %51 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 6
  %52 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 2
  %.pre2 = load %struct.t_atom** %50, align 8, !tbaa !40
  br label %53

; <label>:53                                      ; preds = %.lr.ph, %53
  %54 = phi %struct.t_atom* [ %.pre2, %.lr.ph ], [ %67, %53 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %53 ]
  %55 = getelementptr inbounds %struct.t_atom* %54, i64 %indvars.iv, i32 7
  %56 = load i32* %55, align 4, !tbaa !41
  %57 = sext i32 %56 to i64
  %58 = load i8**** %51, align 8, !tbaa !43
  %59 = getelementptr inbounds i8*** %58, i64 %57
  %60 = load i8*** %59, align 8, !tbaa !18
  %61 = load i8** %60, align 8, !tbaa !18
  %62 = load i8**** %52, align 8, !tbaa !44
  %63 = getelementptr inbounds i8*** %62, i64 %indvars.iv
  %64 = load i8*** %63, align 8, !tbaa !18
  %65 = load i8** %64, align 8, !tbaa !18
  %66 = call float @get_mass(i8* %61, i8* %65) #8
  %67 = load %struct.t_atom** %50, align 8, !tbaa !40
  %68 = getelementptr inbounds %struct.t_atom* %67, i64 %indvars.iv, i32 0
  store float %66, float* %68, align 4, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %69 = load i32* %natoms, align 4, !tbaa !22
  %70 = sext i32 %69 to i64
  %71 = icmp slt i64 %indvars.iv.next, %70
  br i1 %71, label %53, label %.loopexit

.loopexit:                                        ; preds = %53, %.thread
  %72 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 0
  store i32 -1, i32* %72, align 4, !tbaa !46
  br label %73

; <label>:73                                      ; preds = %.loopexit, %25
  call void @llvm.lifetime.end(i64 40, i8* %1) #5
  ret i32 %..i
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #6

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #3

; Function Attrs: optsize
declare void @get_stx_coordnum(i8*, i32*) #1

; Function Attrs: optsize
declare void @init_t_atoms(%struct.t_atoms*, i32, i32) #1

; Function Attrs: optsize
declare void @read_stx_conf(i8*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, [3 x float]*) #1

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: optsize
declare float @get_mass(i8*, i8*) #1

; Function Attrs: optsize
declare void @gmx_fio_select(i32) #1

; Function Attrs: optsize
declare i32 @bDebugMode() #1

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #7

; Function Attrs: optsize
declare i8* @gmx_fio_getname(i32) #1

; Function Attrs: optsize
declare void @gmx_fio_setprecision(i32, i32) #1

; Function Attrs: optsize
declare i8* @GromacsVersion() #1

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
  store i32 0, i32* %idum, align 4, !tbaa !22
  %1 = load i32* @file_version, align 4, !tbaa !22
  %2 = icmp eq i32 %1, 24
  br i1 %2, label %.thread, label %3

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([48 x i8]* @.str89, i64 0, i64 0), i32 %1, i32 24) #8
  %.pr = load i32* @file_version, align 4, !tbaa !22
  %6 = icmp sgt i32 %.pr, 0
  br i1 %6, label %.thread, label %.loopexit

.thread:                                          ; preds = %0, %3
  %7 = icmp ne i32 %bRead, 0
  br i1 %7, label %8, label %20

; <label>:8                                       ; preds = %.thread
  %9 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %10 = bitcast %struct.t_inputrec* %ir to i8*
  %11 = tail call i32 %9(i8* %10, i32 1, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str90, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 133) #8
  %12 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %13 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 1
  %14 = bitcast i32* %13 to i8*
  %15 = tail call i32 %12(i8* %14, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str91, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 134) #8
  %16 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %17 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 25
  %18 = bitcast i32* %17 to i8*
  %19 = tail call i32 %16(i8* %18, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str92, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 135) #8
  br label %32

; <label>:20                                      ; preds = %.thread
  %21 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %22 = bitcast %struct.t_inputrec* %ir to i8*
  %23 = tail call i32 %21(i8* %22, i32 1, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str90, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 133) #8
  %24 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %25 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 1
  %26 = bitcast i32* %25 to i8*
  %27 = tail call i32 %24(i8* %26, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str91, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 134) #8
  %28 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %29 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 25
  %30 = bitcast i32* %29 to i8*
  %31 = tail call i32 %28(i8* %30, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str92, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 135) #8
  br label %32

; <label>:32                                      ; preds = %20, %8
  %33 = load i32* @file_version, align 4, !tbaa !22
  %34 = icmp slt i32 %33, 16
  br i1 %34, label %35, label %40

; <label>:35                                      ; preds = %32
  %36 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 25
  %37 = load i32* %36, align 4, !tbaa !47
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %40

; <label>:39                                      ; preds = %35
  store i32 1, i32* %36, align 4, !tbaa !47
  br label %40

; <label>:40                                      ; preds = %39, %35, %32
  br i1 %7, label %41, label %106

; <label>:41                                      ; preds = %40
  %42 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %43 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 2
  %44 = bitcast i32* %43 to i8*
  %45 = tail call i32 %42(i8* %44, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str93, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 138) #8
  %46 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %47 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 3
  %48 = bitcast i32* %47 to i8*
  %49 = tail call i32 %46(i8* %48, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str94, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 139) #8
  %50 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %51 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 4
  %52 = bitcast i32* %51 to i8*
  %53 = tail call i32 %50(i8* %52, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str95, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 140) #8
  %54 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %55 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 5
  %56 = bitcast i32* %55 to i8*
  %57 = tail call i32 %54(i8* %56, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str96, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 141) #8
  %58 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %59 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 6
  %60 = bitcast i32* %59 to i8*
  %61 = tail call i32 %58(i8* %60, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str97, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 142) #8
  %62 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %63 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 7
  %64 = bitcast i32* %63 to i8*
  %65 = tail call i32 %62(i8* %64, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str98, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 143) #8
  %66 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %67 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 63
  %68 = bitcast i32* %67 to i8*
  %69 = tail call i32 %66(i8* %68, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str99, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 144) #8
  %70 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %71 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 8
  %72 = bitcast i32* %71 to i8*
  %73 = tail call i32 %70(i8* %72, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str100, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 145) #8
  %74 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %75 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 9
  %76 = bitcast i32* %75 to i8*
  %77 = tail call i32 %74(i8* %76, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str101, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 146) #8
  %78 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %79 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 10
  %80 = bitcast i32* %79 to i8*
  %81 = tail call i32 %78(i8* %80, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str102, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 147) #8
  %82 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %83 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 11
  %84 = bitcast i32* %83 to i8*
  %85 = tail call i32 %82(i8* %84, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str103, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 148) #8
  %86 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %87 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 12
  %88 = bitcast i32* %87 to i8*
  %89 = tail call i32 %86(i8* %88, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str104, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 149) #8
  %90 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %91 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 13
  %92 = bitcast i32* %91 to i8*
  %93 = tail call i32 %90(i8* %92, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str105, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 150) #8
  %94 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %95 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 14
  %96 = bitcast float* %95 to i8*
  %97 = tail call i32 %94(i8* %96, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str106, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 151) #8
  %98 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %99 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %100 = bitcast float* %99 to i8*
  %101 = tail call i32 %98(i8* %100, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str107, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 152) #8
  %102 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %103 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 16
  %104 = bitcast float* %103 to i8*
  %105 = tail call i32 %102(i8* %104, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str108, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 153) #8
  br label %171

; <label>:106                                     ; preds = %40
  %107 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %108 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 2
  %109 = bitcast i32* %108 to i8*
  %110 = tail call i32 %107(i8* %109, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str93, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 138) #8
  %111 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %112 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 3
  %113 = bitcast i32* %112 to i8*
  %114 = tail call i32 %111(i8* %113, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str94, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 139) #8
  %115 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %116 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 4
  %117 = bitcast i32* %116 to i8*
  %118 = tail call i32 %115(i8* %117, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str95, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 140) #8
  %119 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %120 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 5
  %121 = bitcast i32* %120 to i8*
  %122 = tail call i32 %119(i8* %121, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str96, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 141) #8
  %123 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %124 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 6
  %125 = bitcast i32* %124 to i8*
  %126 = tail call i32 %123(i8* %125, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str97, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 142) #8
  %127 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %128 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 7
  %129 = bitcast i32* %128 to i8*
  %130 = tail call i32 %127(i8* %129, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str98, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 143) #8
  %131 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %132 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 63
  %133 = bitcast i32* %132 to i8*
  %134 = tail call i32 %131(i8* %133, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str99, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 144) #8
  %135 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %136 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 8
  %137 = bitcast i32* %136 to i8*
  %138 = tail call i32 %135(i8* %137, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str100, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 145) #8
  %139 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %140 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 9
  %141 = bitcast i32* %140 to i8*
  %142 = tail call i32 %139(i8* %141, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str101, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 146) #8
  %143 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %144 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 10
  %145 = bitcast i32* %144 to i8*
  %146 = tail call i32 %143(i8* %145, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str102, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 147) #8
  %147 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %148 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 11
  %149 = bitcast i32* %148 to i8*
  %150 = tail call i32 %147(i8* %149, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str103, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 148) #8
  %151 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %152 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 12
  %153 = bitcast i32* %152 to i8*
  %154 = tail call i32 %151(i8* %153, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str104, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 149) #8
  %155 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %156 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 13
  %157 = bitcast i32* %156 to i8*
  %158 = tail call i32 %155(i8* %157, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str105, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 150) #8
  %159 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %160 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 14
  %161 = bitcast float* %160 to i8*
  %162 = tail call i32 %159(i8* %161, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str106, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 151) #8
  %163 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %164 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %165 = bitcast float* %164 to i8*
  %166 = tail call i32 %163(i8* %165, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str107, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 152) #8
  %167 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %168 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 16
  %169 = bitcast float* %168 to i8*
  %170 = tail call i32 %167(i8* %169, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str108, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 153) #8
  br label %171

; <label>:171                                     ; preds = %106, %41
  %172 = load i32* @file_version, align 4, !tbaa !22
  %173 = icmp slt i32 %172, 19
  br i1 %173, label %174, label %.thread30

; <label>:174                                     ; preds = %171
  br i1 %7, label %175, label %181

; <label>:175                                     ; preds = %174
  %176 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %177 = bitcast i32* %idum to i8*
  %178 = call i32 %176(i8* %177, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str109, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 155) #8
  %179 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %180 = call i32 %179(i8* %177, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str109, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 156) #8
  br label %187

; <label>:181                                     ; preds = %174
  %182 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %183 = bitcast i32* %idum to i8*
  %184 = call i32 %182(i8* %183, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str109, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 155) #8
  %185 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %186 = call i32 %185(i8* %183, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str109, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 156) #8
  br label %187

; <label>:187                                     ; preds = %175, %181
  %.pr29 = load i32* @file_version, align 4, !tbaa !22
  %188 = icmp slt i32 %.pr29, 18
  br i1 %188, label %189, label %.thread30

; <label>:189                                     ; preds = %187
  br i1 %7, label %.thread31, label %.thread32

.thread31:                                        ; preds = %189
  %190 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %191 = bitcast i32* %idum to i8*
  %192 = call i32 %190(i8* %191, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str109, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 159) #8
  br label %196

.thread32:                                        ; preds = %189
  %193 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %194 = bitcast i32* %idum to i8*
  %195 = call i32 %193(i8* %194, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str109, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 159) #8
  br label %253

.thread30:                                        ; preds = %171, %187
  br i1 %7, label %196, label %253

; <label>:196                                     ; preds = %.thread30, %.thread31
  %197 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %198 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 35
  %199 = bitcast float* %198 to i8*
  %200 = call i32 %197(i8* %199, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str110, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 160) #8
  %201 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %202 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 36
  %203 = bitcast i32* %202 to i8*
  %204 = call i32 %201(i8* %203, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str111, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 161) #8
  %205 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %206 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37
  %207 = bitcast float* %206 to i8*
  %208 = call i32 %205(i8* %207, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str112, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 162) #8
  %209 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %210 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38
  %211 = bitcast float* %210 to i8*
  %212 = call i32 %209(i8* %211, i32 1, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str113, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 163) #8
  %213 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %214 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 39
  %215 = bitcast i32* %214 to i8*
  %216 = call i32 %213(i8* %215, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str114, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 164) #8
  %217 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %218 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 40
  %219 = bitcast float* %218 to i8*
  %220 = call i32 %217(i8* %219, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str115, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 165) #8
  %221 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %222 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 41
  %223 = bitcast float* %222 to i8*
  %224 = call i32 %221(i8* %223, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str116, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 166) #8
  %225 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %226 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 43
  %227 = bitcast i32* %226 to i8*
  %228 = call i32 %225(i8* %227, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str117, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 167) #8
  %229 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %230 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 42
  %231 = bitcast float* %230 to i8*
  %232 = call i32 %229(i8* %231, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 168) #8
  %233 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %234 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 17
  %235 = bitcast i32* %234 to i8*
  %236 = call i32 %233(i8* %235, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str119, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 169) #8
  %237 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %238 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 18
  %239 = bitcast i32* %238 to i8*
  %240 = call i32 %237(i8* %239, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str120, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 170) #8
  %241 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %242 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 19
  %243 = bitcast i32* %242 to i8*
  %244 = call i32 %241(i8* %243, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str121, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 171) #8
  %245 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %246 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 20
  %247 = bitcast i32* %246 to i8*
  %248 = call i32 %245(i8* %247, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str122, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 172) #8
  %249 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %250 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 21
  %251 = bitcast float* %250 to i8*
  %252 = call i32 %249(i8* %251, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str123, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 173) #8
  br label %310

; <label>:253                                     ; preds = %.thread32, %.thread30
  %254 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %255 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 35
  %256 = bitcast float* %255 to i8*
  %257 = call i32 %254(i8* %256, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str110, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 160) #8
  %258 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %259 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 36
  %260 = bitcast i32* %259 to i8*
  %261 = call i32 %258(i8* %260, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str111, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 161) #8
  %262 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %263 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37
  %264 = bitcast float* %263 to i8*
  %265 = call i32 %262(i8* %264, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str112, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 162) #8
  %266 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %267 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38
  %268 = bitcast float* %267 to i8*
  %269 = call i32 %266(i8* %268, i32 1, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str113, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 163) #8
  %270 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %271 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 39
  %272 = bitcast i32* %271 to i8*
  %273 = call i32 %270(i8* %272, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str114, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 164) #8
  %274 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %275 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 40
  %276 = bitcast float* %275 to i8*
  %277 = call i32 %274(i8* %276, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str115, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 165) #8
  %278 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %279 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 41
  %280 = bitcast float* %279 to i8*
  %281 = call i32 %278(i8* %280, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str116, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 166) #8
  %282 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %283 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 43
  %284 = bitcast i32* %283 to i8*
  %285 = call i32 %282(i8* %284, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str117, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 167) #8
  %286 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %287 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 42
  %288 = bitcast float* %287 to i8*
  %289 = call i32 %286(i8* %288, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 168) #8
  %290 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %291 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 17
  %292 = bitcast i32* %291 to i8*
  %293 = call i32 %290(i8* %292, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str119, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 169) #8
  %294 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %295 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 18
  %296 = bitcast i32* %295 to i8*
  %297 = call i32 %294(i8* %296, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str120, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 170) #8
  %298 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %299 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 19
  %300 = bitcast i32* %299 to i8*
  %301 = call i32 %298(i8* %300, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str121, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 171) #8
  %302 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %303 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 20
  %304 = bitcast i32* %303 to i8*
  %305 = call i32 %302(i8* %304, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str122, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 172) #8
  %306 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %307 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 21
  %308 = bitcast float* %307 to i8*
  %309 = call i32 %306(i8* %308, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str123, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 173) #8
  br label %310

; <label>:310                                     ; preds = %253, %196
  %311 = load i32* @file_version, align 4, !tbaa !22
  %312 = icmp sgt i32 %311, 23
  br i1 %312, label %313, label %324

; <label>:313                                     ; preds = %310
  br i1 %7, label %314, label %319

; <label>:314                                     ; preds = %313
  %315 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %316 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 22
  %317 = bitcast i32* %316 to i8*
  %318 = call i32 %315(i8* %317, i32 1, i32 1, i8* getelementptr inbounds ([19 x i8]* @.str124, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 176) #8
  br label %326

; <label>:319                                     ; preds = %313
  %320 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %321 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 22
  %322 = bitcast i32* %321 to i8*
  %323 = call i32 %320(i8* %322, i32 1, i32 1, i8* getelementptr inbounds ([19 x i8]* @.str124, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 176) #8
  br label %326

; <label>:324                                     ; preds = %310
  %325 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 22
  store i32 0, i32* %325, align 4, !tbaa !50
  br label %326

; <label>:326                                     ; preds = %314, %319, %324
  %327 = load i32* @file_version, align 4, !tbaa !22
  %328 = icmp slt i32 %327, 18
  br i1 %328, label %329, label %342

; <label>:329                                     ; preds = %326
  %330 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 23
  store i32 0, i32* %330, align 4, !tbaa !51
  %331 = load i32* @file_version, align 4, !tbaa !22
  %332 = icmp eq i32 %331, 17
  br i1 %332, label %333, label %353

; <label>:333                                     ; preds = %329
  br i1 %7, label %334, label %338

; <label>:334                                     ; preds = %333
  %335 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %336 = bitcast i32* %idum to i8*
  %337 = call i32 %335(i8* %336, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str109, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 183) #8
  br label %.thread46

; <label>:338                                     ; preds = %333
  %339 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %340 = bitcast i32* %idum to i8*
  %341 = call i32 %339(i8* %340, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str109, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 183) #8
  br label %.thread48

; <label>:342                                     ; preds = %326
  br i1 %7, label %343, label %348

; <label>:343                                     ; preds = %342
  %344 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %345 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 23
  %346 = bitcast i32* %345 to i8*
  %347 = call i32 %344(i8* %346, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str125, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 186) #8
  br label %.thread46

; <label>:348                                     ; preds = %342
  %349 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %350 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 23
  %351 = bitcast i32* %350 to i8*
  %352 = call i32 %349(i8* %351, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str125, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 186) #8
  br label %.thread48

; <label>:353                                     ; preds = %329
  br i1 %7, label %.thread46, label %.thread48

.thread46:                                        ; preds = %334, %343, %353
  %354 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %355 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 24
  %356 = bitcast i32* %355 to i8*
  %357 = call i32 %354(i8* %356, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str126, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 188) #8
  %358 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %359 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 26
  %360 = bitcast i32* %359 to i8*
  %361 = call i32 %358(i8* %360, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str127, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 189) #8
  %362 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %363 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 27
  %364 = bitcast i32* %363 to i8*
  %365 = call i32 %362(i8* %364, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str128, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 190) #8
  br label %378

.thread48:                                        ; preds = %338, %348, %353
  %366 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %367 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 24
  %368 = bitcast i32* %367 to i8*
  %369 = call i32 %366(i8* %368, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str126, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 188) #8
  %370 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %371 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 26
  %372 = bitcast i32* %371 to i8*
  %373 = call i32 %370(i8* %372, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str127, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 189) #8
  %374 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %375 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 27
  %376 = bitcast i32* %375 to i8*
  %377 = call i32 %374(i8* %376, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str128, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 190) #8
  br label %378

; <label>:378                                     ; preds = %.thread48, %.thread46
  %379 = load i32* @file_version, align 4, !tbaa !22
  %380 = icmp slt i32 %379, 16
  br i1 %380, label %381, label %390

; <label>:381                                     ; preds = %378
  br i1 %7, label %382, label %386

; <label>:382                                     ; preds = %381
  %383 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %384 = bitcast i32* %idum to i8*
  %385 = call i32 %383(i8* %384, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str109, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 196) #8
  br label %thread-pre-split

; <label>:386                                     ; preds = %381
  %387 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %388 = bitcast i32* %idum to i8*
  %389 = call i32 %387(i8* %388, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str109, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 196) #8
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %386, %382
  %.pr51 = load i32* @file_version, align 4, !tbaa !22
  br label %390

; <label>:390                                     ; preds = %thread-pre-split, %378
  %391 = phi i32 [ %.pr51, %thread-pre-split ], [ %379, %378 ]
  %392 = icmp slt i32 %391, 18
  br i1 %392, label %393, label %427

; <label>:393                                     ; preds = %390
  br i1 %7, label %394, label %399

; <label>:394                                     ; preds = %393
  %395 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %396 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 29
  %397 = bitcast i32* %396 to i8*
  %398 = call i32 %395(i8* %397, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 198) #8
  br label %404

; <label>:399                                     ; preds = %393
  %400 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %401 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 29
  %402 = bitcast i32* %401 to i8*
  %403 = call i32 %400(i8* %402, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 198) #8
  br label %404

; <label>:404                                     ; preds = %399, %394
  %405 = load i32* @file_version, align 4, !tbaa !22
  %406 = icmp slt i32 %405, 16
  %407 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 29
  br i1 %406, label %408, label %._crit_edge183

; <label>:408                                     ; preds = %404
  %409 = load i32* %407, align 4, !tbaa !52
  %410 = icmp eq i32 %409, 5
  br i1 %410, label %411, label %412

; <label>:411                                     ; preds = %408
  store i32 3, i32* %407, align 4, !tbaa !52
  br label %412

; <label>:412                                     ; preds = %411, %408
  br i1 %7, label %413, label %417

; <label>:413                                     ; preds = %412
  %414 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %415 = bitcast i32* %idum to i8*
  %416 = call i32 %414(i8* %415, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str109, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 202) #8
  br label %._crit_edge183

; <label>:417                                     ; preds = %412
  %418 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %419 = bitcast i32* %idum to i8*
  %420 = call i32 %418(i8* %419, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str109, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 202) #8
  br label %._crit_edge183

._crit_edge183:                                   ; preds = %404, %413, %417
  %421 = load i32* %407, align 4, !tbaa !52
  %422 = add nsw i32 %421, -1
  store i32 %422, i32* %407, align 4, !tbaa !52
  %423 = icmp eq i32 %421, 0
  %424 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 28
  br i1 %423, label %425, label %426

; <label>:425                                     ; preds = %._crit_edge183
  store i32 0, i32* %424, align 4, !tbaa !53
  store i32 0, i32* %407, align 4, !tbaa !52
  br label %444

; <label>:426                                     ; preds = %._crit_edge183
  store i32 1, i32* %424, align 4, !tbaa !53
  br label %444

; <label>:427                                     ; preds = %390
  br i1 %7, label %.thread53, label %.thread54

.thread53:                                        ; preds = %427
  %428 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %429 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 28
  %430 = bitcast i32* %429 to i8*
  %431 = call i32 %428(i8* %430, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str130, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 214) #8
  %432 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %433 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 29
  %434 = bitcast i32* %433 to i8*
  %435 = call i32 %432(i8* %434, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 215) #8
  br label %445

.thread54:                                        ; preds = %427
  %436 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %437 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 28
  %438 = bitcast i32* %437 to i8*
  %439 = call i32 %436(i8* %438, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str130, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 214) #8
  %440 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %441 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 29
  %442 = bitcast i32* %441 to i8*
  %443 = call i32 %440(i8* %442, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 215) #8
  br label %450

; <label>:444                                     ; preds = %425, %426
  br i1 %7, label %445, label %450

; <label>:445                                     ; preds = %.thread53, %444
  %446 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %447 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 30
  %448 = bitcast float* %447 to i8*
  %449 = call i32 %446(i8* %448, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str131, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 217) #8
  br label %455

; <label>:450                                     ; preds = %.thread54, %444
  %451 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %452 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 30
  %453 = bitcast float* %452 to i8*
  %454 = call i32 %451(i8* %453, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str131, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 217) #8
  br label %455

; <label>:455                                     ; preds = %450, %445
  %456 = load i32* @file_version, align 4, !tbaa !22
  %457 = icmp slt i32 %456, 16
  br i1 %457, label %458, label %476

; <label>:458                                     ; preds = %455
  br i1 %7, label %459, label %463

; <label>:459                                     ; preds = %458
  %460 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %461 = bitcast [3 x float]* %vdum to i8*
  %462 = call i32 %460(i8* %461, i32 1, i32 4, i8* getelementptr inbounds ([5 x i8]* @.str132, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 219) #8
  br label %467

; <label>:463                                     ; preds = %458
  %464 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %465 = bitcast [3 x float]* %vdum to i8*
  %466 = call i32 %464(i8* %465, i32 1, i32 4, i8* getelementptr inbounds ([5 x i8]* @.str132, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 219) #8
  br label %467

; <label>:467                                     ; preds = %463, %459
  %468 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 0
  %469 = bitcast [3 x float]* %468 to i8*
  call void @llvm.memset.p0i8.i64(i8* %469, i8 0, i64 36, i32 4, i1 false) #5
  br label %470

; <label>:470                                     ; preds = %470, %467
  %indvars.iv179 = phi i64 [ 0, %467 ], [ %indvars.iv.next180, %470 ]
  %471 = getelementptr inbounds [3 x float]* %vdum, i64 0, i64 %indvars.iv179
  %472 = bitcast float* %471 to i32*
  %473 = load i32* %472, align 4, !tbaa !14
  %474 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 %indvars.iv179, i64 %indvars.iv179
  %475 = bitcast float* %474 to i32*
  store i32 %473, i32* %475, align 4, !tbaa !14
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1
  %exitcond181 = icmp eq i64 %indvars.iv.next180, 3
  br i1 %exitcond181, label %.loopexit113, label %470

; <label>:476                                     ; preds = %455
  br i1 %7, label %477, label %490

; <label>:477                                     ; preds = %476
  %478 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %479 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 0, i64 0
  %480 = bitcast float* %479 to i8*
  %481 = call i32 %478(i8* %480, i32 1, i32 4, i8* getelementptr inbounds ([14 x i8]* @.str133, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 224) #8
  %482 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %483 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 1, i64 0
  %484 = bitcast float* %483 to i8*
  %485 = call i32 %482(i8* %484, i32 1, i32 4, i8* getelementptr inbounds ([14 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 225) #8
  %486 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %487 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 2, i64 0
  %488 = bitcast float* %487 to i8*
  %489 = call i32 %486(i8* %488, i32 1, i32 4, i8* getelementptr inbounds ([14 x i8]* @.str135, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 226) #8
  br label %.loopexit113

; <label>:490                                     ; preds = %476
  %491 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %492 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 0, i64 0
  %493 = bitcast float* %492 to i8*
  %494 = call i32 %491(i8* %493, i32 1, i32 4, i8* getelementptr inbounds ([14 x i8]* @.str133, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 224) #8
  %495 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %496 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 1, i64 0
  %497 = bitcast float* %496 to i8*
  %498 = call i32 %495(i8* %497, i32 1, i32 4, i8* getelementptr inbounds ([14 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 225) #8
  %499 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %500 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 2, i64 0
  %501 = bitcast float* %500 to i8*
  %502 = call i32 %499(i8* %501, i32 1, i32 4, i8* getelementptr inbounds ([14 x i8]* @.str135, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 226) #8
  br label %.loopexit113

.loopexit113:                                     ; preds = %470, %477, %490
  %503 = load i32* @file_version, align 4, !tbaa !22
  %504 = icmp slt i32 %503, 16
  br i1 %504, label %505, label %523

; <label>:505                                     ; preds = %.loopexit113
  br i1 %7, label %506, label %510

; <label>:506                                     ; preds = %505
  %507 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %508 = bitcast [3 x float]* %vdum to i8*
  %509 = call i32 %507(i8* %508, i32 1, i32 4, i8* getelementptr inbounds ([5 x i8]* @.str132, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 229) #8
  br label %514

; <label>:510                                     ; preds = %505
  %511 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %512 = bitcast [3 x float]* %vdum to i8*
  %513 = call i32 %511(i8* %512, i32 1, i32 4, i8* getelementptr inbounds ([5 x i8]* @.str132, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 229) #8
  br label %514

; <label>:514                                     ; preds = %510, %506
  %515 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 0
  %516 = bitcast [3 x float]* %515 to i8*
  call void @llvm.memset.p0i8.i64(i8* %516, i8 0, i64 36, i32 4, i1 false) #5
  br label %517

; <label>:517                                     ; preds = %517, %514
  %indvars.iv176 = phi i64 [ 0, %514 ], [ %indvars.iv.next177, %517 ]
  %518 = getelementptr inbounds [3 x float]* %vdum, i64 0, i64 %indvars.iv176
  %519 = bitcast float* %518 to i32*
  %520 = load i32* %519, align 4, !tbaa !14
  %521 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 %indvars.iv176, i64 %indvars.iv176
  %522 = bitcast float* %521 to i32*
  store i32 %520, i32* %522, align 4, !tbaa !14
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1
  %exitcond178 = icmp eq i64 %indvars.iv.next177, 3
  br i1 %exitcond178, label %548, label %517

; <label>:523                                     ; preds = %.loopexit113
  br i1 %7, label %.thread59, label %.thread60

.thread59:                                        ; preds = %523
  %524 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %525 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 0, i64 0
  %526 = bitcast float* %525 to i8*
  %527 = call i32 %524(i8* %526, i32 1, i32 4, i8* getelementptr inbounds ([17 x i8]* @.str136, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 235) #8
  %528 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %529 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 1, i64 0
  %530 = bitcast float* %529 to i8*
  %531 = call i32 %528(i8* %530, i32 1, i32 4, i8* getelementptr inbounds ([17 x i8]* @.str137, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 236) #8
  %532 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %533 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 2, i64 0
  %534 = bitcast float* %533 to i8*
  %535 = call i32 %532(i8* %534, i32 1, i32 4, i8* getelementptr inbounds ([17 x i8]* @.str138, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 237) #8
  br label %549

.thread60:                                        ; preds = %523
  %536 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %537 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 0, i64 0
  %538 = bitcast float* %537 to i8*
  %539 = call i32 %536(i8* %538, i32 1, i32 4, i8* getelementptr inbounds ([17 x i8]* @.str136, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 235) #8
  %540 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %541 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 1, i64 0
  %542 = bitcast float* %541 to i8*
  %543 = call i32 %540(i8* %542, i32 1, i32 4, i8* getelementptr inbounds ([17 x i8]* @.str137, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 236) #8
  %544 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %545 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 2, i64 0
  %546 = bitcast float* %545 to i8*
  %547 = call i32 %544(i8* %546, i32 1, i32 4, i8* getelementptr inbounds ([17 x i8]* @.str138, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 237) #8
  br label %574

; <label>:548                                     ; preds = %517
  br i1 %7, label %549, label %574

; <label>:549                                     ; preds = %548, %.thread59
  %550 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %551 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 33
  %552 = bitcast i32* %551 to i8*
  %553 = call i32 %550(i8* %552, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str139, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 239) #8
  %554 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %555 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 34
  %556 = bitcast float* %555 to i8*
  %557 = call i32 %554(i8* %556, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str140, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 240) #8
  %558 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %559 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 42
  %560 = bitcast float* %559 to i8*
  %561 = call i32 %558(i8* %560, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 241) #8
  %562 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %563 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 44
  %564 = bitcast float* %563 to i8*
  %565 = call i32 %562(i8* %564, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str141, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 242) #8
  %566 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %567 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 45
  %568 = bitcast float* %567 to i8*
  %569 = call i32 %566(i8* %568, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str142, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 243) #8
  %570 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %571 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46
  %572 = bitcast i32* %571 to i8*
  %573 = call i32 %570(i8* %572, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str143, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 244) #8
  br label %599

; <label>:574                                     ; preds = %.thread60, %548
  %575 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %576 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 33
  %577 = bitcast i32* %576 to i8*
  %578 = call i32 %575(i8* %577, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str139, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 239) #8
  %579 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %580 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 34
  %581 = bitcast float* %580 to i8*
  %582 = call i32 %579(i8* %581, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str140, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 240) #8
  %583 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %584 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 42
  %585 = bitcast float* %584 to i8*
  %586 = call i32 %583(i8* %585, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 241) #8
  %587 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %588 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 44
  %589 = bitcast float* %588 to i8*
  %590 = call i32 %587(i8* %589, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str141, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 242) #8
  %591 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %592 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 45
  %593 = bitcast float* %592 to i8*
  %594 = call i32 %591(i8* %593, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str142, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 243) #8
  %595 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %596 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46
  %597 = bitcast i32* %596 to i8*
  %598 = call i32 %595(i8* %597, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str143, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 244) #8
  br label %599

; <label>:599                                     ; preds = %574, %549
  %600 = load i32* @file_version, align 4, !tbaa !22
  %601 = icmp slt i32 %600, 15
  br i1 %601, label %602, label %607

; <label>:602                                     ; preds = %599
  %603 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46
  %604 = load i32* %603, align 4, !tbaa !54
  %605 = icmp sgt i32 %604, 0
  br i1 %605, label %606, label %607

; <label>:606                                     ; preds = %602
  store i32 1, i32* %603, align 4, !tbaa !54
  br label %607

; <label>:607                                     ; preds = %606, %602, %599
  br i1 %7, label %608, label %617

; <label>:608                                     ; preds = %607
  %609 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %610 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 47
  %611 = bitcast float* %610 to i8*
  %612 = call i32 %609(i8* %611, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str144, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 247) #8
  %613 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %614 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 48
  %615 = bitcast float* %614 to i8*
  %616 = call i32 %613(i8* %615, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str145, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 248) #8
  br label %626

; <label>:617                                     ; preds = %607
  %618 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %619 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 47
  %620 = bitcast float* %619 to i8*
  %621 = call i32 %618(i8* %620, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str144, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 247) #8
  %622 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %623 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 48
  %624 = bitcast float* %623 to i8*
  %625 = call i32 %622(i8* %624, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str145, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 248) #8
  br label %626

; <label>:626                                     ; preds = %617, %608
  %627 = load i32* @file_version, align 4, !tbaa !22
  %628 = icmp sgt i32 %627, 12
  br i1 %628, label %629, label %640

; <label>:629                                     ; preds = %626
  br i1 %7, label %630, label %635

; <label>:630                                     ; preds = %629
  %631 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %632 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 49
  %633 = bitcast float* %632 to i8*
  %634 = call i32 %631(i8* %633, i32 1, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str146, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 250) #8
  br label %642

; <label>:635                                     ; preds = %629
  %636 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %637 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 49
  %638 = bitcast float* %637 to i8*
  %639 = call i32 %636(i8* %638, i32 1, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str146, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 250) #8
  br label %642

; <label>:640                                     ; preds = %626
  %641 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 49
  store float 0.000000e+00, float* %641, align 4, !tbaa !55
  br label %642

; <label>:642                                     ; preds = %630, %635, %640
  %643 = load i32* @file_version, align 4, !tbaa !22
  %644 = icmp sgt i32 %643, 14
  br i1 %644, label %645, label %654

; <label>:645                                     ; preds = %642
  br i1 %7, label %.thread67, label %.thread68

.thread67:                                        ; preds = %645
  %646 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %647 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 50
  %648 = bitcast float* %647 to i8*
  %649 = call i32 %646(i8* %648, i32 1, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str147, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 254) #8
  br label %656

.thread68:                                        ; preds = %645
  %650 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %651 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 50
  %652 = bitcast float* %651 to i8*
  %653 = call i32 %650(i8* %652, i32 1, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str147, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 254) #8
  br label %661

; <label>:654                                     ; preds = %642
  %655 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 50
  store float 0x3FD3333340000000, float* %655, align 4, !tbaa !56
  br i1 %7, label %656, label %661

; <label>:656                                     ; preds = %.thread67, %654
  %657 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %658 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 52
  %659 = bitcast i32* %658 to i8*
  %660 = call i32 %657(i8* %659, i32 1, i32 1, i8* getelementptr inbounds ([20 x i8]* @.str148, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 257) #8
  br label %666

; <label>:661                                     ; preds = %.thread68, %654
  %662 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %663 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 52
  %664 = bitcast i32* %663 to i8*
  %665 = call i32 %662(i8* %664, i32 1, i32 1, i8* getelementptr inbounds ([20 x i8]* @.str148, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 257) #8
  br label %666

; <label>:666                                     ; preds = %661, %656
  %667 = load i32* @file_version, align 4, !tbaa !22
  %668 = icmp slt i32 %667, 22
  br i1 %668, label %669, label %675

; <label>:669                                     ; preds = %666
  %670 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 52
  %671 = load i32* %670, align 4, !tbaa !57
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %673, label %674

; <label>:673                                     ; preds = %669
  store i32 1, i32* %670, align 4, !tbaa !57
  br label %675

; <label>:674                                     ; preds = %669
  store i32 0, i32* %670, align 4, !tbaa !57
  br label %675

; <label>:675                                     ; preds = %673, %674, %666
  br i1 %7, label %676, label %693

; <label>:676                                     ; preds = %675
  %677 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %678 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 53
  %679 = bitcast i32* %678 to i8*
  %680 = call i32 %677(i8* %679, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str149, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 264) #8
  %681 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %682 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 51
  %683 = bitcast float* %682 to i8*
  %684 = call i32 %681(i8* %683, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str150, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 265) #8
  %685 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %686 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 55
  %687 = bitcast float* %686 to i8*
  %688 = call i32 %685(i8* %687, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str151, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 266) #8
  %689 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %690 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 54
  %691 = bitcast i32* %690 to i8*
  %692 = call i32 %689(i8* %691, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str152, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 267) #8
  br label %710

; <label>:693                                     ; preds = %675
  %694 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %695 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 53
  %696 = bitcast i32* %695 to i8*
  %697 = call i32 %694(i8* %696, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str149, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 264) #8
  %698 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %699 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 51
  %700 = bitcast float* %699 to i8*
  %701 = call i32 %698(i8* %700, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str150, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 265) #8
  %702 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %703 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 55
  %704 = bitcast float* %703 to i8*
  %705 = call i32 %702(i8* %704, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str151, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 266) #8
  %706 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %707 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 54
  %708 = bitcast i32* %707 to i8*
  %709 = call i32 %706(i8* %708, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str152, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 267) #8
  br label %710

; <label>:710                                     ; preds = %693, %676
  %711 = load i32* @file_version, align 4, !tbaa !22
  %712 = icmp sgt i32 %711, 21
  br i1 %712, label %713, label %738

; <label>:713                                     ; preds = %710
  br i1 %7, label %.thread74, label %.thread75

.thread74:                                        ; preds = %713
  %714 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %715 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 56
  %716 = bitcast float* %715 to i8*
  %717 = call i32 %714(i8* %716, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str153, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 269) #8
  %718 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %719 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 57
  %720 = bitcast float* %719 to i8*
  %721 = call i32 %718(i8* %720, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str154, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 270) #8
  %722 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %723 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 58
  %724 = bitcast i32* %723 to i8*
  %725 = call i32 %722(i8* %724, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str155, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 271) #8
  br label %742

.thread75:                                        ; preds = %713
  %726 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %727 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 56
  %728 = bitcast float* %727 to i8*
  %729 = call i32 %726(i8* %728, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str153, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 269) #8
  %730 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %731 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 57
  %732 = bitcast float* %731 to i8*
  %733 = call i32 %730(i8* %732, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str154, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 270) #8
  %734 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %735 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 58
  %736 = bitcast i32* %735 to i8*
  %737 = call i32 %734(i8* %736, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str155, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 271) #8
  br label %751

; <label>:738                                     ; preds = %710
  %739 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 56
  store float 0.000000e+00, float* %739, align 4, !tbaa !58
  %740 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 57
  store float 0.000000e+00, float* %740, align 4, !tbaa !59
  %741 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 58
  store i32 0, i32* %741, align 4, !tbaa !60
  br i1 %7, label %742, label %751

; <label>:742                                     ; preds = %738, %.thread74
  %743 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %744 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 59
  %745 = bitcast float* %744 to i8*
  %746 = call i32 %743(i8* %745, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str156, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 277) #8
  %747 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %748 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 60
  %749 = bitcast float* %748 to i8*
  %750 = call i32 %747(i8* %749, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str157, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 278) #8
  br label %760

; <label>:751                                     ; preds = %.thread75, %738
  %752 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %753 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 59
  %754 = bitcast float* %753 to i8*
  %755 = call i32 %752(i8* %754, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str156, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 277) #8
  %756 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %757 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 60
  %758 = bitcast float* %757 to i8*
  %759 = call i32 %756(i8* %758, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str157, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 278) #8
  br label %760

; <label>:760                                     ; preds = %751, %742
  %761 = load i32* @file_version, align 4, !tbaa !22
  %762 = icmp sgt i32 %761, 21
  br i1 %762, label %763, label %774

; <label>:763                                     ; preds = %760
  br i1 %7, label %764, label %769

; <label>:764                                     ; preds = %763
  %765 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %766 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 67
  %767 = bitcast i32* %766 to i8*
  %768 = call i32 %765(i8* %767, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str158, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 280) #8
  br label %777

; <label>:769                                     ; preds = %763
  %770 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %771 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 67
  %772 = bitcast i32* %771 to i8*
  %773 = call i32 %770(i8* %772, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str158, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 280) #8
  br label %777

; <label>:774                                     ; preds = %760
  br i1 %7, label %775, label %777

; <label>:775                                     ; preds = %774
  %776 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 67
  store i32 1, i32* %776, align 4, !tbaa !61
  br label %777

; <label>:777                                     ; preds = %774, %775, %764, %769
  %778 = load i32* @file_version, align 4, !tbaa !22
  %779 = icmp sgt i32 %778, 10
  br i1 %779, label %780, label %791

; <label>:780                                     ; preds = %777
  br i1 %7, label %781, label %786

; <label>:781                                     ; preds = %780
  %782 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %783 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 61
  %784 = bitcast i32* %783 to i8*
  %785 = call i32 %782(i8* %784, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str159, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 284) #8
  br label %796

; <label>:786                                     ; preds = %780
  %787 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %788 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 61
  %789 = bitcast i32* %788 to i8*
  %790 = call i32 %787(i8* %789, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str159, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 284) #8
  br label %796

; <label>:791                                     ; preds = %777
  br i1 %7, label %792, label %796

; <label>:792                                     ; preds = %791
  %793 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 61
  store i32 25, i32* %793, align 4, !tbaa !62
  %794 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %795 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %794, i8* getelementptr inbounds ([53 x i8]* @.str160, i64 0, i64 0), i32 25) #8
  br label %796

; <label>:796                                     ; preds = %791, %792, %781, %786
  %797 = load i32* @file_version, align 4, !tbaa !22
  %798 = icmp sgt i32 %797, 20
  br i1 %798, label %799, label %808

; <label>:799                                     ; preds = %796
  br i1 %7, label %.thread77, label %.thread78

.thread77:                                        ; preds = %799
  %800 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %801 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 62
  %802 = bitcast i32* %801 to i8*
  %803 = call i32 %800(i8* %802, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str161, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 291) #8
  br label %810

.thread78:                                        ; preds = %799
  %804 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %805 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 62
  %806 = bitcast i32* %805 to i8*
  %807 = call i32 %804(i8* %806, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str161, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 291) #8
  br label %823

; <label>:808                                     ; preds = %796
  %809 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 62
  store i32 0, i32* %809, align 4, !tbaa !63
  br i1 %7, label %810, label %823

; <label>:810                                     ; preds = %.thread77, %808
  %811 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %812 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 64
  %813 = bitcast i32* %812 to i8*
  %814 = call i32 %811(i8* %813, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str162, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 294) #8
  %815 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %816 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 65
  %817 = bitcast i32* %816 to i8*
  %818 = call i32 %815(i8* %817, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str163, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 295) #8
  %819 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %820 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 66
  %821 = bitcast float* %820 to i8*
  %822 = call i32 %819(i8* %821, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str164, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 296) #8
  br label %836

; <label>:823                                     ; preds = %.thread78, %808
  %824 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %825 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 64
  %826 = bitcast i32* %825 to i8*
  %827 = call i32 %824(i8* %826, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str162, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 294) #8
  %828 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %829 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 65
  %830 = bitcast i32* %829 to i8*
  %831 = call i32 %828(i8* %830, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str163, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 295) #8
  %832 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %833 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 66
  %834 = bitcast float* %833 to i8*
  %835 = call i32 %832(i8* %834, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str164, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 296) #8
  br label %836

; <label>:836                                     ; preds = %823, %810
  %837 = load i32* @file_version, align 4, !tbaa !22
  %838 = icmp slt i32 %837, 15
  br i1 %838, label %839, label %846

; <label>:839                                     ; preds = %836
  br i1 %7, label %.thread81, label %.thread82

.thread81:                                        ; preds = %839
  %840 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %841 = bitcast i32* %idum to i8*
  %842 = call i32 %840(i8* %841, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str109, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 298) #8
  br label %847

.thread82:                                        ; preds = %839
  %843 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %844 = bitcast i32* %idum to i8*
  %845 = call i32 %843(i8* %844, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str109, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 298) #8
  br label %860

; <label>:846                                     ; preds = %836
  br i1 %7, label %847, label %860

; <label>:847                                     ; preds = %.thread81, %846
  %848 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %849 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 68
  %850 = bitcast float* %849 to i8*
  %851 = call i32 %848(i8* %850, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str165, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 299) #8
  %852 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %853 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 69
  %854 = bitcast float* %853 to i8*
  %855 = call i32 %852(i8* %854, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str166, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 300) #8
  %856 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %857 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 70
  %858 = bitcast i32* %857 to i8*
  %859 = call i32 %856(i8* %858, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str167, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 301) #8
  br label %873

; <label>:860                                     ; preds = %.thread82, %846
  %861 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %862 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 68
  %863 = bitcast float* %862 to i8*
  %864 = call i32 %861(i8* %863, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str165, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 299) #8
  %865 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %866 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 69
  %867 = bitcast float* %866 to i8*
  %868 = call i32 %865(i8* %867, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str166, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 300) #8
  %869 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %870 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 70
  %871 = bitcast i32* %870 to i8*
  %872 = call i32 %869(i8* %871, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str167, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 301) #8
  br label %873

; <label>:873                                     ; preds = %860, %847
  %874 = load i32* @file_version, align 4, !tbaa !22
  %875 = icmp sgt i32 %874, 13
  br i1 %875, label %876, label %882

; <label>:876                                     ; preds = %873
  br i1 %7, label %877, label %885

; <label>:877                                     ; preds = %876
  %878 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %879 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 71
  %880 = bitcast float* %879 to i8*
  %881 = call i32 %878(i8* %880, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str168, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 303) #8
  br label %939

; <label>:882                                     ; preds = %873
  br i1 %7, label %883, label %890

; <label>:883                                     ; preds = %882
  %884 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 71
  store float 0.000000e+00, float* %884, align 4, !tbaa !64
  br label %939

; <label>:885                                     ; preds = %876
  %886 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %887 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 71
  %888 = bitcast float* %887 to i8*
  %889 = call i32 %886(i8* %888, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str168, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 303) #8
  br label %890

; <label>:890                                     ; preds = %882, %885
  %891 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %892 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 72
  %893 = bitcast i32* %892 to i8*
  %894 = call i32 %891(i8* %893, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str169, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 306) #8
  %895 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %896 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 73
  %897 = bitcast i32* %896 to i8*
  %898 = call i32 %895(i8* %897, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str170, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 307) #8
  %899 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %900 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 74
  %901 = bitcast i32* %900 to i8*
  %902 = call i32 %899(i8* %901, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str171, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 308) #8
  %903 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %904 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 75
  %905 = bitcast i32* %904 to i8*
  %906 = call i32 %903(i8* %905, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str172, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 309) #8
  %907 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %908 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 76
  %909 = bitcast float* %908 to i8*
  %910 = call i32 %907(i8* %909, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str173, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 310) #8
  %911 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %912 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 77
  %913 = bitcast float* %912 to i8*
  %914 = call i32 %911(i8* %913, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str174, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 311) #8
  %915 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %916 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 78
  %917 = bitcast float* %916 to i8*
  %918 = call i32 %915(i8* %917, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str175, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 312) #8
  %919 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %920 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 79
  %921 = bitcast float* %920 to i8*
  %922 = call i32 %919(i8* %921, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str176, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 313) #8
  %923 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %924 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 0
  %925 = bitcast i32* %924 to i8*
  %926 = call i32 %923(i8* %925, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str177, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 316) #8
  %927 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %928 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 1
  %929 = bitcast i32* %928 to i8*
  %930 = call i32 %927(i8* %929, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str178, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 317) #8
  %931 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %932 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 2
  %933 = bitcast i32* %932 to i8*
  %934 = call i32 %931(i8* %933, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str179, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 318) #8
  %935 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %936 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 3
  %937 = bitcast i32* %936 to i8*
  %938 = call i32 %935(i8* %937, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str180, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 319) #8
  br label %1013

; <label>:939                                     ; preds = %883, %877
  %940 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %941 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 72
  %942 = bitcast i32* %941 to i8*
  %943 = call i32 %940(i8* %942, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str169, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 306) #8
  %944 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %945 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 73
  %946 = bitcast i32* %945 to i8*
  %947 = call i32 %944(i8* %946, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str170, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 307) #8
  %948 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %949 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 74
  %950 = bitcast i32* %949 to i8*
  %951 = call i32 %948(i8* %950, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str171, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 308) #8
  %952 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %953 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 75
  %954 = bitcast i32* %953 to i8*
  %955 = call i32 %952(i8* %954, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str172, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 309) #8
  %956 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %957 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 76
  %958 = bitcast float* %957 to i8*
  %959 = call i32 %956(i8* %958, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str173, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 310) #8
  %960 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %961 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 77
  %962 = bitcast float* %961 to i8*
  %963 = call i32 %960(i8* %962, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str174, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 311) #8
  %964 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %965 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 78
  %966 = bitcast float* %965 to i8*
  %967 = call i32 %964(i8* %966, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str175, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 312) #8
  %968 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %969 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 79
  %970 = bitcast float* %969 to i8*
  %971 = call i32 %968(i8* %970, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str176, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 313) #8
  %972 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %973 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 0
  %974 = bitcast i32* %973 to i8*
  %975 = call i32 %972(i8* %974, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str177, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 316) #8
  %976 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %977 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 1
  %978 = bitcast i32* %977 to i8*
  %979 = call i32 %976(i8* %978, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str178, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 317) #8
  %980 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %981 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 2
  %982 = bitcast i32* %981 to i8*
  %983 = call i32 %980(i8* %982, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str179, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 318) #8
  %984 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %985 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 3
  %986 = bitcast i32* %985 to i8*
  %987 = call i32 %984(i8* %986, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str180, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 319) #8
  %988 = load i32* %973, align 4, !tbaa !65
  %989 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str181, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 321, i32 %988, i32 4) #8
  %990 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 4
  %991 = bitcast float** %990 to i8**
  store i8* %989, i8** %991, align 8, !tbaa !66
  %992 = load i32* %973, align 4, !tbaa !65
  %993 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str182, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 322, i32 %992, i32 4) #8
  %994 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 5
  %995 = bitcast float** %994 to i8**
  store i8* %993, i8** %995, align 8, !tbaa !67
  %996 = load i32* %973, align 4, !tbaa !65
  %997 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str183, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 323, i32 %996, i32 4) #8
  %998 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 6
  %999 = bitcast float** %998 to i8**
  store i8* %997, i8** %999, align 8, !tbaa !68
  %1000 = load i32* %981, align 4, !tbaa !69
  %1001 = call i8* @save_calloc(i8* getelementptr inbounds ([17 x i8]* @.str184, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 324, i32 %1000, i32 12) #8
  %1002 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 8
  %1003 = bitcast [3 x i32]** %1002 to i8**
  store i8* %1001, i8** %1003, align 8, !tbaa !70
  %1004 = load i32* %977, align 4, !tbaa !71
  %1005 = call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str185, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 325, i32 %1004, i32 12) #8
  %1006 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 7
  %1007 = bitcast [3 x float]** %1006 to i8**
  store i8* %1005, i8** %1007, align 8, !tbaa !72
  %1008 = load i32* %985, align 4, !tbaa !73
  %1009 = mul nsw i32 %1008, %1008
  %1010 = call i8* @save_calloc(i8* getelementptr inbounds ([17 x i8]* @.str186, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 326, i32 %1009, i32 4) #8
  %1011 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 9
  %1012 = bitcast i32** %1011 to i8**
  store i8* %1010, i8** %1012, align 8, !tbaa !74
  br label %1013

; <label>:1013                                    ; preds = %890, %939
  %.pre-phi = phi i32* [ %924, %890 ], [ %973, %939 ]
  %1014 = load i32* %.pre-phi, align 4, !tbaa !65
  %1015 = icmp sgt i32 %1014, 0
  br i1 %1015, label %1016, label %.loopexit109

; <label>:1016                                    ; preds = %1013
  %1017 = load i32* @file_version, align 4
  %1018 = icmp slt i32 %1017, 13
  %or.cond = and i1 %7, %1018
  br i1 %or.cond, label %1021, label %.lr.ph151

.lr.ph151:                                        ; preds = %1016
  %1019 = getelementptr inbounds [128 x i8]* %buf1, i64 0, i64 0
  %1020 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 4
  br label %1057

; <label>:1021                                    ; preds = %1016
  %1022 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str187, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 330, i32 %1014, i32 4) #8
  %1023 = bitcast i8* %1022 to i32*
  %1024 = load i32* %.pre-phi, align 4, !tbaa !65
  %1025 = icmp sgt i32 %1024, 0
  br i1 %1025, label %.lr.ph148, label %._crit_edge144

.lr.ph148:                                        ; preds = %1021
  %1026 = getelementptr inbounds [128 x i8]* %buf, i64 0, i64 0
  br label %1031

.preheader111:                                    ; preds = %1041
  %1027 = icmp sgt i32 %1044, 0
  br i1 %1027, label %.lr.ph143, label %._crit_edge144

.lr.ph143:                                        ; preds = %.preheader111
  %1028 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 4
  %1029 = load float** %1028, align 8, !tbaa !66
  %1030 = sext i32 %1044 to i64
  br label %1047

; <label>:1031                                    ; preds = %.lr.ph148, %1041
  %indvars.iv172 = phi i64 [ 0, %.lr.ph148 ], [ %indvars.iv.next173, %1041 ]
  %bDum.0146 = phi i32 [ 1, %.lr.ph148 ], [ %1043, %1041 ]
  call void @llvm.lifetime.start(i64 128, i8* %1026) #5
  %1032 = trunc i64 %indvars.iv172 to i32
  %1033 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1026, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str187, i64 0, i64 0), i32 %1032) #8
  %1034 = icmp eq i32 %bDum.0146, 0
  br i1 %1034, label %1041, label %1035

; <label>:1035                                    ; preds = %1031
  %1036 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %1037 = getelementptr inbounds i32* %1023, i64 %indvars.iv172
  %1038 = bitcast i32* %1037 to i8*
  %1039 = call i32 %1036(i8* %1038, i32 1, i32 1, i8* %1026, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 331) #8
  %1040 = icmp ne i32 %1039, 0
  br label %1041

; <label>:1041                                    ; preds = %1031, %1035
  %1042 = phi i1 [ false, %1031 ], [ %1040, %1035 ]
  %1043 = zext i1 %1042 to i32
  call void @llvm.lifetime.end(i64 128, i8* %1026) #5
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1
  %1044 = load i32* %.pre-phi, align 4, !tbaa !65
  %1045 = sext i32 %1044 to i64
  %1046 = icmp slt i64 %indvars.iv.next173, %1045
  br i1 %1046, label %1031, label %.preheader111

; <label>:1047                                    ; preds = %.lr.ph143, %1047
  %indvars.iv170 = phi i64 [ 0, %.lr.ph143 ], [ %indvars.iv.next171, %1047 ]
  %1048 = getelementptr inbounds i32* %1023, i64 %indvars.iv170
  %1049 = load i32* %1048, align 4, !tbaa !22
  %1050 = sitofp i32 %1049 to float
  %1051 = getelementptr inbounds float* %1029, i64 %indvars.iv170
  store float %1050, float* %1051, align 4, !tbaa !14
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1
  %1052 = icmp slt i64 %indvars.iv.next171, %1030
  br i1 %1052, label %1047, label %._crit_edge144

._crit_edge144:                                   ; preds = %1047, %1021, %.preheader111
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str187, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 334, i8* %1022) #8
  %.pre = load i32* %.pre-phi, align 4, !tbaa !65
  br label %.preheader110

.preheader110:                                    ; preds = %1077, %._crit_edge144
  %1053 = phi i32 [ %.pre, %._crit_edge144 ], [ %1080, %1077 ]
  %1054 = icmp sgt i32 %1053, 0
  br i1 %1054, label %.lr.ph141, label %.loopexit109

.lr.ph141:                                        ; preds = %.preheader110
  %1055 = getelementptr inbounds [128 x i8]* %buf2, i64 0, i64 0
  %1056 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 5
  br label %1086

; <label>:1057                                    ; preds = %.lr.ph151, %1077
  %indvars.iv174 = phi i64 [ 0, %.lr.ph151 ], [ %indvars.iv.next175, %1077 ]
  %bDum.1150 = phi i32 [ 1, %.lr.ph151 ], [ %1079, %1077 ]
  call void @llvm.lifetime.start(i64 128, i8* %1019) #5
  %1058 = trunc i64 %indvars.iv174 to i32
  %1059 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1019, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str181, i64 0, i64 0), i32 %1058) #8
  %1060 = icmp eq i32 %bDum.1150, 0
  br i1 %1060, label %1077, label %1061

; <label>:1061                                    ; preds = %1057
  br i1 %7, label %1062, label %1068

; <label>:1062                                    ; preds = %1061
  %1063 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %1064 = load float** %1020, align 8, !tbaa !66
  %1065 = getelementptr inbounds float* %1064, i64 %indvars.iv174
  %1066 = bitcast float* %1065 to i8*
  %1067 = call i32 %1063(i8* %1066, i32 1, i32 0, i8* %1019, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 336) #8
  br label %1074

; <label>:1068                                    ; preds = %1061
  %1069 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %1070 = load float** %1020, align 8, !tbaa !66
  %1071 = getelementptr inbounds float* %1070, i64 %indvars.iv174
  %1072 = bitcast float* %1071 to i8*
  %1073 = call i32 %1069(i8* %1072, i32 1, i32 0, i8* %1019, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 336) #8
  br label %1074

; <label>:1074                                    ; preds = %1068, %1062
  %1075 = phi i32 [ %1067, %1062 ], [ %1073, %1068 ]
  %1076 = icmp ne i32 %1075, 0
  br label %1077

; <label>:1077                                    ; preds = %1057, %1074
  %1078 = phi i1 [ false, %1057 ], [ %1076, %1074 ]
  %1079 = zext i1 %1078 to i32
  call void @llvm.lifetime.end(i64 128, i8* %1019) #5
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1
  %1080 = load i32* %.pre-phi, align 4, !tbaa !65
  %1081 = sext i32 %1080 to i64
  %1082 = icmp slt i64 %indvars.iv.next175, %1081
  br i1 %1082, label %1057, label %.preheader110

.preheader108:                                    ; preds = %1106
  %1083 = icmp sgt i32 %1109, 0
  br i1 %1083, label %.lr.ph138, label %.loopexit109

.lr.ph138:                                        ; preds = %.preheader108
  %1084 = getelementptr inbounds [128 x i8]* %buf3, i64 0, i64 0
  %1085 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 6
  br label %1112

; <label>:1086                                    ; preds = %.lr.ph141, %1106
  %indvars.iv168 = phi i64 [ 0, %.lr.ph141 ], [ %indvars.iv.next169, %1106 ]
  %bDum.2140 = phi i32 [ 1, %.lr.ph141 ], [ %1108, %1106 ]
  call void @llvm.lifetime.start(i64 128, i8* %1055) #5
  %1087 = trunc i64 %indvars.iv168 to i32
  %1088 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1055, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str182, i64 0, i64 0), i32 %1087) #8
  %1089 = icmp eq i32 %bDum.2140, 0
  br i1 %1089, label %1106, label %1090

; <label>:1090                                    ; preds = %1086
  br i1 %7, label %1091, label %1097

; <label>:1091                                    ; preds = %1090
  %1092 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %1093 = load float** %1056, align 8, !tbaa !67
  %1094 = getelementptr inbounds float* %1093, i64 %indvars.iv168
  %1095 = bitcast float* %1094 to i8*
  %1096 = call i32 %1092(i8* %1095, i32 1, i32 0, i8* %1055, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 338) #8
  br label %1103

; <label>:1097                                    ; preds = %1090
  %1098 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %1099 = load float** %1056, align 8, !tbaa !67
  %1100 = getelementptr inbounds float* %1099, i64 %indvars.iv168
  %1101 = bitcast float* %1100 to i8*
  %1102 = call i32 %1098(i8* %1101, i32 1, i32 0, i8* %1055, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 338) #8
  br label %1103

; <label>:1103                                    ; preds = %1097, %1091
  %1104 = phi i32 [ %1096, %1091 ], [ %1102, %1097 ]
  %1105 = icmp ne i32 %1104, 0
  br label %1106

; <label>:1106                                    ; preds = %1086, %1103
  %1107 = phi i1 [ false, %1086 ], [ %1105, %1103 ]
  %1108 = zext i1 %1107 to i32
  call void @llvm.lifetime.end(i64 128, i8* %1055) #5
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1
  %1109 = load i32* %.pre-phi, align 4, !tbaa !65
  %1110 = sext i32 %1109 to i64
  %1111 = icmp slt i64 %indvars.iv.next169, %1110
  br i1 %1111, label %1086, label %.preheader108

; <label>:1112                                    ; preds = %.lr.ph138, %1132
  %indvars.iv166 = phi i64 [ 0, %.lr.ph138 ], [ %indvars.iv.next167, %1132 ]
  %bDum.3137 = phi i32 [ 1, %.lr.ph138 ], [ %1134, %1132 ]
  call void @llvm.lifetime.start(i64 128, i8* %1084) #5
  %1113 = trunc i64 %indvars.iv166 to i32
  %1114 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1084, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str183, i64 0, i64 0), i32 %1113) #8
  %1115 = icmp eq i32 %bDum.3137, 0
  br i1 %1115, label %1132, label %1116

; <label>:1116                                    ; preds = %1112
  br i1 %7, label %1117, label %1123

; <label>:1117                                    ; preds = %1116
  %1118 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %1119 = load float** %1085, align 8, !tbaa !68
  %1120 = getelementptr inbounds float* %1119, i64 %indvars.iv166
  %1121 = bitcast float* %1120 to i8*
  %1122 = call i32 %1118(i8* %1121, i32 1, i32 0, i8* %1084, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 339) #8
  br label %1129

; <label>:1123                                    ; preds = %1116
  %1124 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %1125 = load float** %1085, align 8, !tbaa !68
  %1126 = getelementptr inbounds float* %1125, i64 %indvars.iv166
  %1127 = bitcast float* %1126 to i8*
  %1128 = call i32 %1124(i8* %1127, i32 1, i32 0, i8* %1084, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 339) #8
  br label %1129

; <label>:1129                                    ; preds = %1123, %1117
  %1130 = phi i32 [ %1122, %1117 ], [ %1128, %1123 ]
  %1131 = icmp ne i32 %1130, 0
  br label %1132

; <label>:1132                                    ; preds = %1112, %1129
  %1133 = phi i1 [ false, %1112 ], [ %1131, %1129 ]
  %1134 = zext i1 %1133 to i32
  call void @llvm.lifetime.end(i64 128, i8* %1084) #5
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1
  %1135 = load i32* %.pre-phi, align 4, !tbaa !65
  %1136 = sext i32 %1135 to i64
  %1137 = icmp slt i64 %indvars.iv.next167, %1136
  br i1 %1137, label %1112, label %.loopexit109

.loopexit109:                                     ; preds = %1132, %.preheader110, %.preheader108, %1013
  %1138 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 2
  %1139 = load i32* %1138, align 4, !tbaa !69
  %1140 = icmp sgt i32 %1139, 0
  br i1 %1140, label %.lr.ph135, label %.loopexit107

.lr.ph135:                                        ; preds = %.loopexit109
  %1141 = getelementptr inbounds [128 x i8]* %buf4, i64 0, i64 0
  %1142 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 8
  br label %1143

; <label>:1143                                    ; preds = %.lr.ph135, %1163
  %indvars.iv164 = phi i64 [ 0, %.lr.ph135 ], [ %indvars.iv.next165, %1163 ]
  %bDum.4134 = phi i32 [ 1, %.lr.ph135 ], [ %1165, %1163 ]
  call void @llvm.lifetime.start(i64 128, i8* %1141) #5
  %1144 = trunc i64 %indvars.iv164 to i32
  %1145 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1141, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str184, i64 0, i64 0), i32 %1144) #8
  %1146 = icmp eq i32 %bDum.4134, 0
  br i1 %1146, label %1163, label %1147

; <label>:1147                                    ; preds = %1143
  br i1 %7, label %1148, label %1154

; <label>:1148                                    ; preds = %1147
  %1149 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %1150 = load [3 x i32]** %1142, align 8, !tbaa !70
  %1151 = getelementptr inbounds [3 x i32]* %1150, i64 %indvars.iv164, i64 0
  %1152 = bitcast i32* %1151 to i8*
  %1153 = call i32 %1149(i8* %1152, i32 1, i32 6, i8* %1141, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 342) #8
  br label %1160

; <label>:1154                                    ; preds = %1147
  %1155 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %1156 = load [3 x i32]** %1142, align 8, !tbaa !70
  %1157 = getelementptr inbounds [3 x i32]* %1156, i64 %indvars.iv164, i64 0
  %1158 = bitcast i32* %1157 to i8*
  %1159 = call i32 %1155(i8* %1158, i32 1, i32 6, i8* %1141, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 342) #8
  br label %1160

; <label>:1160                                    ; preds = %1154, %1148
  %1161 = phi i32 [ %1153, %1148 ], [ %1159, %1154 ]
  %1162 = icmp ne i32 %1161, 0
  br label %1163

; <label>:1163                                    ; preds = %1143, %1160
  %1164 = phi i1 [ false, %1143 ], [ %1162, %1160 ]
  %1165 = zext i1 %1164 to i32
  call void @llvm.lifetime.end(i64 128, i8* %1141) #5
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1
  %1166 = load i32* %1138, align 4, !tbaa !69
  %1167 = sext i32 %1166 to i64
  %1168 = icmp slt i64 %indvars.iv.next165, %1167
  br i1 %1168, label %1143, label %.loopexit107

.loopexit107:                                     ; preds = %1163, %.loopexit109
  %1169 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 1
  %1170 = load i32* %1169, align 4, !tbaa !71
  %1171 = icmp sgt i32 %1170, 0
  br i1 %1171, label %1172, label %1185

; <label>:1172                                    ; preds = %.loopexit107
  br i1 %7, label %1173, label %1179

; <label>:1173                                    ; preds = %1172
  %1174 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %1175 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 7
  %1176 = bitcast [3 x float]** %1175 to i8**
  %1177 = load i8** %1176, align 8, !tbaa !72
  %1178 = call i32 %1174(i8* %1177, i32 %1170, i32 5, i8* getelementptr inbounds ([13 x i8]* @.str185, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 344) #8
  br label %1185

; <label>:1179                                    ; preds = %1172
  %1180 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %1181 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 7
  %1182 = bitcast [3 x float]** %1181 to i8**
  %1183 = load i8** %1182, align 8, !tbaa !72
  %1184 = call i32 %1180(i8* %1183, i32 %1170, i32 5, i8* getelementptr inbounds ([13 x i8]* @.str185, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 344) #8
  br label %1185

; <label>:1185                                    ; preds = %1173, %1179, %.loopexit107
  %1186 = load i32* @file_version, align 4, !tbaa !22
  %1187 = icmp sgt i32 %1186, 11
  br i1 %1187, label %.preheader105, label %.preheader104

.preheader105:                                    ; preds = %1185
  %1188 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 3
  %1189 = load i32* %1188, align 4, !tbaa !73
  %1190 = mul nsw i32 %1189, %1189
  %1191 = icmp eq i32 %1190, 0
  br i1 %1191, label %.preheader104, label %.lr.ph132

.lr.ph132:                                        ; preds = %.preheader105
  %1192 = getelementptr inbounds [128 x i8]* %buf5, i64 0, i64 0
  %1193 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 9
  br label %1198

.preheader104:                                    ; preds = %1218, %.preheader105, %1185
  %1194 = getelementptr inbounds [128 x i8]* %buf9, i64 0, i64 0
  %1195 = getelementptr inbounds [128 x i8]* %buf8, i64 0, i64 0
  %1196 = getelementptr inbounds [128 x i8]* %buf7, i64 0, i64 0
  %1197 = getelementptr inbounds [128 x i8]* %buf6, i64 0, i64 0
  br label %1225

; <label>:1198                                    ; preds = %.lr.ph132, %1218
  %indvars.iv162 = phi i64 [ 0, %.lr.ph132 ], [ %indvars.iv.next163, %1218 ]
  %bDum.5131 = phi i32 [ 1, %.lr.ph132 ], [ %1220, %1218 ]
  call void @llvm.lifetime.start(i64 128, i8* %1192) #5
  %1199 = trunc i64 %indvars.iv162 to i32
  %1200 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1192, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str186, i64 0, i64 0), i32 %1199) #8
  %1201 = icmp eq i32 %bDum.5131, 0
  br i1 %1201, label %1218, label %1202

; <label>:1202                                    ; preds = %1198
  br i1 %7, label %1203, label %1209

; <label>:1203                                    ; preds = %1202
  %1204 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %1205 = load i32** %1193, align 8, !tbaa !74
  %1206 = getelementptr inbounds i32* %1205, i64 %indvars.iv162
  %1207 = bitcast i32* %1206 to i8*
  %1208 = call i32 %1204(i8* %1207, i32 1, i32 1, i8* %1192, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 346) #8
  br label %1215

; <label>:1209                                    ; preds = %1202
  %1210 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %1211 = load i32** %1193, align 8, !tbaa !74
  %1212 = getelementptr inbounds i32* %1211, i64 %indvars.iv162
  %1213 = bitcast i32* %1212 to i8*
  %1214 = call i32 %1210(i8* %1213, i32 1, i32 1, i8* %1192, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 346) #8
  br label %1215

; <label>:1215                                    ; preds = %1209, %1203
  %1216 = phi i32 [ %1208, %1203 ], [ %1214, %1209 ]
  %1217 = icmp ne i32 %1216, 0
  br label %1218

; <label>:1218                                    ; preds = %1198, %1215
  %1219 = phi i1 [ false, %1198 ], [ %1217, %1215 ]
  %1220 = zext i1 %1219 to i32
  call void @llvm.lifetime.end(i64 128, i8* %1192) #5
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1
  %1221 = load i32* %1188, align 4, !tbaa !73
  %1222 = mul nsw i32 %1221, %1221
  %1223 = zext i32 %1222 to i64
  %1224 = icmp slt i64 %indvars.iv.next163, %1223
  br i1 %1224, label %1198, label %.preheader104

; <label>:1225                                    ; preds = %._crit_edge, %.preheader104
  %indvars.iv160 = phi i64 [ 0, %.preheader104 ], [ %indvars.iv.next161, %._crit_edge ]
  br i1 %7, label %1235, label %1226

; <label>:1226                                    ; preds = %1225
  %1227 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %1228 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv160, i32 0
  %1229 = bitcast i32* %1228 to i8*
  %1230 = call i32 %1227(i8* %1229, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str188, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 350) #8
  %1231 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %1232 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv160, i32 0
  %1233 = bitcast i32* %1232 to i8*
  %1234 = call i32 %1231(i8* %1233, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str189, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 351) #8
  br label %.preheader103

; <label>:1235                                    ; preds = %1225
  %1236 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %1237 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv160, i32 0
  %1238 = bitcast i32* %1237 to i8*
  %1239 = call i32 %1236(i8* %1238, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str188, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 350) #8
  %1240 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %1241 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv160, i32 0
  %1242 = bitcast i32* %1241 to i8*
  %1243 = call i32 %1240(i8* %1242, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str189, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 351) #8
  %1244 = load i32* %1237, align 4, !tbaa !75
  %1245 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str190, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 353, i32 %1244, i32 4) #8
  %1246 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv160, i32 1
  %1247 = bitcast float** %1246 to i8**
  store i8* %1245, i8** %1247, align 8, !tbaa !77
  %1248 = load i32* %1237, align 4, !tbaa !75
  %1249 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str191, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 354, i32 %1248, i32 4) #8
  %1250 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv160, i32 2
  %1251 = bitcast float** %1250 to i8**
  store i8* %1249, i8** %1251, align 8, !tbaa !78
  %1252 = load i32* %1241, align 4, !tbaa !75
  %1253 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str192, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 355, i32 %1252, i32 4) #8
  %1254 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv160, i32 1
  %1255 = bitcast float** %1254 to i8**
  store i8* %1253, i8** %1255, align 8, !tbaa !77
  %1256 = load i32* %1241, align 4, !tbaa !75
  %1257 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str193, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 356, i32 %1256, i32 4) #8
  %1258 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv160, i32 2
  %1259 = bitcast float** %1258 to i8**
  store i8* %1257, i8** %1259, align 8, !tbaa !78
  br label %.preheader103

.preheader103:                                    ; preds = %1235, %1226
  %.pre-phi182 = phi i32* [ %1237, %1235 ], [ %1228, %1226 ]
  %1260 = load i32* %.pre-phi182, align 4, !tbaa !75
  %1261 = icmp sgt i32 %1260, 0
  br i1 %1261, label %.lr.ph, label %.preheader101

.lr.ph:                                           ; preds = %.preheader103
  %1262 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv160, i32 1
  br label %1265

.preheader102:                                    ; preds = %1285
  %1263 = icmp sgt i32 %1288, 0
  br i1 %1263, label %.lr.ph121, label %.preheader101

.lr.ph121:                                        ; preds = %.preheader102
  %1264 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv160, i32 2
  br label %1295

; <label>:1265                                    ; preds = %.lr.ph, %1285
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %1285 ]
  %bDum.6117 = phi i32 [ 1, %.lr.ph ], [ %1287, %1285 ]
  call void @llvm.lifetime.start(i64 128, i8* %1197) #5
  %1266 = trunc i64 %indvars.iv to i32
  %1267 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1197, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str190, i64 0, i64 0), i32 %1266) #8
  %1268 = icmp eq i32 %bDum.6117, 0
  br i1 %1268, label %1285, label %1269

; <label>:1269                                    ; preds = %1265
  br i1 %7, label %1270, label %1276

; <label>:1270                                    ; preds = %1269
  %1271 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %1272 = load float** %1262, align 8, !tbaa !77
  %1273 = getelementptr inbounds float* %1272, i64 %indvars.iv
  %1274 = bitcast float* %1273 to i8*
  %1275 = call i32 %1271(i8* %1274, i32 1, i32 0, i8* %1197, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 358) #8
  br label %1282

; <label>:1276                                    ; preds = %1269
  %1277 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %1278 = load float** %1262, align 8, !tbaa !77
  %1279 = getelementptr inbounds float* %1278, i64 %indvars.iv
  %1280 = bitcast float* %1279 to i8*
  %1281 = call i32 %1277(i8* %1280, i32 1, i32 0, i8* %1197, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 358) #8
  br label %1282

; <label>:1282                                    ; preds = %1276, %1270
  %1283 = phi i32 [ %1275, %1270 ], [ %1281, %1276 ]
  %1284 = icmp ne i32 %1283, 0
  br label %1285

; <label>:1285                                    ; preds = %1265, %1282
  %1286 = phi i1 [ false, %1265 ], [ %1284, %1282 ]
  %1287 = zext i1 %1286 to i32
  call void @llvm.lifetime.end(i64 128, i8* %1197) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1288 = load i32* %.pre-phi182, align 4, !tbaa !75
  %1289 = sext i32 %1288 to i64
  %1290 = icmp slt i64 %indvars.iv.next, %1289
  br i1 %1290, label %1265, label %.preheader102

.preheader101:                                    ; preds = %1315, %.preheader103, %.preheader102
  %1291 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv160, i32 0
  %1292 = load i32* %1291, align 4, !tbaa !75
  %1293 = icmp sgt i32 %1292, 0
  br i1 %1293, label %.lr.ph124, label %._crit_edge

.lr.ph124:                                        ; preds = %.preheader101
  %1294 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv160, i32 1
  br label %1323

; <label>:1295                                    ; preds = %.lr.ph121, %1315
  %indvars.iv154 = phi i64 [ 0, %.lr.ph121 ], [ %indvars.iv.next155, %1315 ]
  %bDum.7120 = phi i32 [ 1, %.lr.ph121 ], [ %1317, %1315 ]
  call void @llvm.lifetime.start(i64 128, i8* %1196) #5
  %1296 = trunc i64 %indvars.iv154 to i32
  %1297 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1196, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str191, i64 0, i64 0), i32 %1296) #8
  %1298 = icmp eq i32 %bDum.7120, 0
  br i1 %1298, label %1315, label %1299

; <label>:1299                                    ; preds = %1295
  br i1 %7, label %1300, label %1306

; <label>:1300                                    ; preds = %1299
  %1301 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %1302 = load float** %1264, align 8, !tbaa !78
  %1303 = getelementptr inbounds float* %1302, i64 %indvars.iv154
  %1304 = bitcast float* %1303 to i8*
  %1305 = call i32 %1301(i8* %1304, i32 1, i32 0, i8* %1196, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 359) #8
  br label %1312

; <label>:1306                                    ; preds = %1299
  %1307 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %1308 = load float** %1264, align 8, !tbaa !78
  %1309 = getelementptr inbounds float* %1308, i64 %indvars.iv154
  %1310 = bitcast float* %1309 to i8*
  %1311 = call i32 %1307(i8* %1310, i32 1, i32 0, i8* %1196, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 359) #8
  br label %1312

; <label>:1312                                    ; preds = %1306, %1300
  %1313 = phi i32 [ %1305, %1300 ], [ %1311, %1306 ]
  %1314 = icmp ne i32 %1313, 0
  br label %1315

; <label>:1315                                    ; preds = %1295, %1312
  %1316 = phi i1 [ false, %1295 ], [ %1314, %1312 ]
  %1317 = zext i1 %1316 to i32
  call void @llvm.lifetime.end(i64 128, i8* %1196) #5
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1
  %1318 = load i32* %.pre-phi182, align 4, !tbaa !75
  %1319 = sext i32 %1318 to i64
  %1320 = icmp slt i64 %indvars.iv.next155, %1319
  br i1 %1320, label %1295, label %.preheader101

.preheader:                                       ; preds = %1343
  %1321 = icmp sgt i32 %1346, 0
  br i1 %1321, label %.lr.ph128, label %._crit_edge

.lr.ph128:                                        ; preds = %.preheader
  %1322 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv160, i32 2
  br label %1349

; <label>:1323                                    ; preds = %.lr.ph124, %1343
  %indvars.iv156 = phi i64 [ 0, %.lr.ph124 ], [ %indvars.iv.next157, %1343 ]
  %bDum.8123 = phi i32 [ 1, %.lr.ph124 ], [ %1345, %1343 ]
  call void @llvm.lifetime.start(i64 128, i8* %1195) #5
  %1324 = trunc i64 %indvars.iv156 to i32
  %1325 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1195, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str192, i64 0, i64 0), i32 %1324) #8
  %1326 = icmp eq i32 %bDum.8123, 0
  br i1 %1326, label %1343, label %1327

; <label>:1327                                    ; preds = %1323
  br i1 %7, label %1328, label %1334

; <label>:1328                                    ; preds = %1327
  %1329 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %1330 = load float** %1294, align 8, !tbaa !77
  %1331 = getelementptr inbounds float* %1330, i64 %indvars.iv156
  %1332 = bitcast float* %1331 to i8*
  %1333 = call i32 %1329(i8* %1332, i32 1, i32 0, i8* %1195, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 360) #8
  br label %1340

; <label>:1334                                    ; preds = %1327
  %1335 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %1336 = load float** %1294, align 8, !tbaa !77
  %1337 = getelementptr inbounds float* %1336, i64 %indvars.iv156
  %1338 = bitcast float* %1337 to i8*
  %1339 = call i32 %1335(i8* %1338, i32 1, i32 0, i8* %1195, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 360) #8
  br label %1340

; <label>:1340                                    ; preds = %1334, %1328
  %1341 = phi i32 [ %1333, %1328 ], [ %1339, %1334 ]
  %1342 = icmp ne i32 %1341, 0
  br label %1343

; <label>:1343                                    ; preds = %1323, %1340
  %1344 = phi i1 [ false, %1323 ], [ %1342, %1340 ]
  %1345 = zext i1 %1344 to i32
  call void @llvm.lifetime.end(i64 128, i8* %1195) #5
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1
  %1346 = load i32* %1291, align 4, !tbaa !75
  %1347 = sext i32 %1346 to i64
  %1348 = icmp slt i64 %indvars.iv.next157, %1347
  br i1 %1348, label %1323, label %.preheader

; <label>:1349                                    ; preds = %.lr.ph128, %1369
  %indvars.iv158 = phi i64 [ 0, %.lr.ph128 ], [ %indvars.iv.next159, %1369 ]
  %bDum.9127 = phi i32 [ 1, %.lr.ph128 ], [ %1371, %1369 ]
  call void @llvm.lifetime.start(i64 128, i8* %1194) #5
  %1350 = trunc i64 %indvars.iv158 to i32
  %1351 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1194, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str193, i64 0, i64 0), i32 %1350) #8
  %1352 = icmp eq i32 %bDum.9127, 0
  br i1 %1352, label %1369, label %1353

; <label>:1353                                    ; preds = %1349
  br i1 %7, label %1354, label %1360

; <label>:1354                                    ; preds = %1353
  %1355 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %1356 = load float** %1322, align 8, !tbaa !78
  %1357 = getelementptr inbounds float* %1356, i64 %indvars.iv158
  %1358 = bitcast float* %1357 to i8*
  %1359 = call i32 %1355(i8* %1358, i32 1, i32 0, i8* %1194, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 361) #8
  br label %1366

; <label>:1360                                    ; preds = %1353
  %1361 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %1362 = load float** %1322, align 8, !tbaa !78
  %1363 = getelementptr inbounds float* %1362, i64 %indvars.iv158
  %1364 = bitcast float* %1363 to i8*
  %1365 = call i32 %1361(i8* %1364, i32 1, i32 0, i8* %1194, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 361) #8
  br label %1366

; <label>:1366                                    ; preds = %1360, %1354
  %1367 = phi i32 [ %1359, %1354 ], [ %1365, %1360 ]
  %1368 = icmp ne i32 %1367, 0
  br label %1369

; <label>:1369                                    ; preds = %1349, %1366
  %1370 = phi i1 [ false, %1349 ], [ %1368, %1366 ]
  %1371 = zext i1 %1370 to i32
  call void @llvm.lifetime.end(i64 128, i8* %1194) #5
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1
  %1372 = load i32* %1291, align 4, !tbaa !75
  %1373 = sext i32 %1372 to i64
  %1374 = icmp slt i64 %indvars.iv.next159, %1373
  br i1 %1374, label %1349, label %._crit_edge

._crit_edge:                                      ; preds = %1369, %.preheader101, %.preheader
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1
  %exitcond = icmp eq i64 %indvars.iv.next161, 3
  br i1 %exitcond, label %.loopexit, label %1225

.loopexit:                                        ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: optsize
declare void @init_inputrec(%struct.t_inputrec*) #1

; Function Attrs: optsize
declare void @done_inputrec(%struct.t_inputrec*) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @do_top(%struct.t_topology* %top, i32 %bRead) #4 {
  %buf1.i.i = alloca [128 x i8], align 16
  %buf.i11 = alloca [128 x i8], align 16
  %buf.i.i = alloca [128 x i8], align 16
  %buf.i = alloca [4096 x i8], align 16
  %1 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 4
  %2 = getelementptr inbounds [4096 x i8]* %buf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %2) #5
  %3 = icmp eq i32 %bRead, 0
  br i1 %3, label %26, label %4

; <label>:4                                       ; preds = %0
  %5 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %6 = bitcast %struct.t_symtab* %1 to i8*
  %7 = tail call i32 %5(i8* %6, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str194, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 660) #8
  %8 = getelementptr inbounds %struct.t_symtab* %1, i64 0, i32 0
  %9 = load i32* %8, align 4, !tbaa !79
  %10 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str195, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 663, i32 1, i32 24) #8
  %11 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 4, i32 1
  %12 = bitcast %struct.symbuf** %11 to i8**
  store i8* %10, i8** %12, align 8, !tbaa !80
  %13 = bitcast i8* %10 to i32*
  store i32 %9, i32* %13, align 4, !tbaa !81
  %14 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str196, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 666, i32 %9, i32 8) #8
  %15 = getelementptr inbounds i8* %10, i64 8
  %16 = bitcast i8* %15 to i8***
  %17 = bitcast i8* %15 to i8**
  store i8* %14, i8** %17, align 8, !tbaa !83
  %18 = icmp sgt i32 %9, 0
  br i1 %18, label %.lr.ph.i, label %do_symtab.exit

.lr.ph.i:                                         ; preds = %4
  %19 = add i32 %9, -1
  br label %20

; <label>:20                                      ; preds = %20, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %20 ]
  %21 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %22 = call i32 %21(i8* %2, i32 1, i32 7, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 668) #8
  %23 = call i8* @strdup(i8* %2) #8
  %24 = load i8*** %16, align 8, !tbaa !83
  %25 = getelementptr inbounds i8** %24, i64 %indvars.iv.i
  store i8* %23, i8** %25, align 8, !tbaa !18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %lftr.wideiv52 = trunc i64 %indvars.iv.i to i32
  %exitcond53 = icmp eq i32 %lftr.wideiv52, %19
  br i1 %exitcond53, label %do_symtab.exit, label %20

; <label>:26                                      ; preds = %0
  %27 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %28 = bitcast %struct.t_symtab* %1 to i8*
  %29 = tail call i32 %27(i8* %28, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str194, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 660) #8
  %30 = getelementptr inbounds %struct.t_symtab* %1, i64 0, i32 0
  %31 = load i32* %30, align 4, !tbaa !79
  %32 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 4, i32 1
  %symbuf.05.i = load %struct.symbuf** %32, align 8
  %33 = icmp eq %struct.symbuf* %symbuf.05.i, null
  br i1 %33, label %._crit_edge.i, label %.preheader.i

.preheader.i:                                     ; preds = %26, %.critedge.i
  %symbuf.08.i = phi %struct.symbuf* [ %symbuf.0.i, %.critedge.i ], [ %symbuf.05.i, %26 ]
  %nr.06.i = phi i32 [ %50, %.critedge.i ], [ %31, %26 ]
  %34 = getelementptr inbounds %struct.symbuf* %symbuf.08.i, i64 0, i32 0
  %35 = load i32* %34, align 4, !tbaa !81
  %36 = icmp sgt i32 %35, 0
  %37 = icmp sgt i32 %nr.06.i, 0
  %or.cond2.i = and i1 %37, %36
  br i1 %or.cond2.i, label %.lr.ph4.i, label %.critedge.i

.lr.ph4.i:                                        ; preds = %.preheader.i
  %38 = getelementptr inbounds %struct.symbuf* %symbuf.08.i, i64 0, i32 1
  %39 = sext i32 %nr.06.i to i64
  br label %40

; <label>:40                                      ; preds = %40, %.lr.ph4.i
  %indvars.iv11.i = phi i64 [ 0, %.lr.ph4.i ], [ %indvars.iv.next12.i, %40 ]
  %41 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %42 = load i8*** %38, align 8, !tbaa !83
  %43 = getelementptr inbounds i8** %42, i64 %indvars.iv11.i
  %44 = load i8** %43, align 8, !tbaa !18
  %45 = tail call i32 %41(i8* %44, i32 1, i32 7, i8* getelementptr inbounds ([15 x i8]* @.str197, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 676) #8
  %.pre.i = load i32* %34, align 4, !tbaa !81
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1
  %46 = sext i32 %.pre.i to i64
  %47 = icmp slt i64 %indvars.iv.next12.i, %46
  %48 = icmp sgt i64 %39, %indvars.iv.next12.i
  %or.cond.i = and i1 %48, %47
  br i1 %or.cond.i, label %40, label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %40
  %49 = trunc i64 %indvars.iv.next12.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %.preheader.i
  %i.1.lcssa.i = phi i32 [ %49, %..critedge_crit_edge.i ], [ 0, %.preheader.i ]
  %50 = sub nsw i32 %nr.06.i, %i.1.lcssa.i
  %51 = getelementptr inbounds %struct.symbuf* %symbuf.08.i, i64 0, i32 2
  %symbuf.0.i = load %struct.symbuf** %51, align 8
  %52 = icmp eq %struct.symbuf* %symbuf.0.i, null
  br i1 %52, label %._crit_edge.i, label %.preheader.i

._crit_edge.i:                                    ; preds = %.critedge.i, %26
  %nr.0.lcssa.i = phi i32 [ %31, %26 ], [ %50, %.critedge.i ]
  %53 = icmp eq i32 %nr.0.lcssa.i, 0
  br i1 %53, label %do_symtab.exit, label %54

; <label>:54                                      ; preds = %._crit_edge.i
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([30 x i8]* @.str198, i64 0, i64 0), i32 %nr.0.lcssa.i) #8
  br label %do_symtab.exit

do_symtab.exit:                                   ; preds = %20, %4, %._crit_edge.i, %54
  call void @llvm.lifetime.end(i64 4096, i8* %2) #5
  %55 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0
  call fastcc void @do_symstr(i8*** %55, i32 %bRead, %struct.t_symtab* %1) #10
  %56 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2
  %57 = icmp ne i32 %bRead, 0
  br i1 %57, label %70, label %58

; <label>:58                                      ; preds = %do_symtab.exit
  %59 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %60 = bitcast %struct.t_atoms* %56 to i8*
  %61 = call i32 %59(i8* %60, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str200, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 622) #8
  %62 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %63 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 5
  %64 = bitcast i32* %63 to i8*
  %65 = call i32 %62(i8* %64, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str201, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 623) #8
  %66 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %67 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 7
  %68 = bitcast i32* %67 to i8*
  %69 = call i32 %66(i8* %68, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str202, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 624) #8
  %.pre.i1 = getelementptr inbounds %struct.t_atoms* %56, i64 0, i32 0
  br label %.preheader31.i

; <label>:70                                      ; preds = %do_symtab.exit
  %71 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %72 = bitcast %struct.t_atoms* %56 to i8*
  %73 = call i32 %71(i8* %72, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str200, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 622) #8
  %74 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %75 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 5
  %76 = bitcast i32* %75 to i8*
  %77 = call i32 %74(i8* %76, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str201, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 623) #8
  %78 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %79 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 7
  %80 = bitcast i32* %79 to i8*
  %81 = call i32 %78(i8* %80, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str202, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 624) #8
  %82 = getelementptr inbounds %struct.t_atoms* %56, i64 0, i32 0
  %83 = load i32* %82, align 4, !tbaa !84
  %84 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str203, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 626, i32 %83, i32 40) #8
  %85 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1
  %86 = bitcast %struct.t_atom** %85 to i8**
  store i8* %84, i8** %86, align 8, !tbaa !85
  %87 = load i32* %82, align 4, !tbaa !84
  %88 = call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str204, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 627, i32 %87, i32 8) #8
  %89 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 2
  %90 = bitcast i8**** %89 to i8**
  store i8* %88, i8** %90, align 8, !tbaa !86
  %91 = load i32* %82, align 4, !tbaa !84
  %92 = call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str205, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 628, i32 %91, i32 8) #8
  %93 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 3
  %94 = bitcast i8**** %93 to i8**
  store i8* %92, i8** %94, align 8, !tbaa !87
  %95 = load i32* %82, align 4, !tbaa !84
  %96 = call i8* @save_calloc(i8* getelementptr inbounds ([17 x i8]* @.str206, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 629, i32 %95, i32 8) #8
  %97 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 4
  %98 = bitcast i8**** %97 to i8**
  store i8* %96, i8** %98, align 8, !tbaa !88
  %99 = load i32* %75, align 4, !tbaa !89
  %100 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str207, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 630, i32 %99, i32 8) #8
  %101 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 6
  %102 = bitcast i8**** %101 to i8**
  store i8* %100, i8** %102, align 8, !tbaa !90
  %103 = load i32* %79, align 4, !tbaa !91
  %104 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str208, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 631, i32 %103, i32 8) #8
  %105 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 8
  %106 = bitcast i8**** %105 to i8**
  store i8* %104, i8** %106, align 8, !tbaa !92
  %107 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 11
  store %struct.t_pdbinfo* null, %struct.t_pdbinfo** %107, align 8, !tbaa !93
  br label %.preheader31.i

.preheader31.i:                                   ; preds = %70, %58
  %.pre-phi.i = phi i32* [ %82, %70 ], [ %.pre.i1, %58 ]
  %108 = load i32* %.pre-phi.i, align 4, !tbaa !84
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %.lr.ph35.i, label %do_strstr.exit.i

.lr.ph35.i:                                       ; preds = %.preheader31.i
  %110 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1
  br label %111

; <label>:111                                     ; preds = %do_atom.exit.i, %.lr.ph35.i
  %indvars.iv45.i = phi i64 [ 0, %.lr.ph35.i ], [ %indvars.iv.next46.i, %do_atom.exit.i ]
  %112 = load %struct.t_atom** %110, align 8, !tbaa !85
  %113 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i
  br i1 %57, label %114, label %146

; <label>:114                                     ; preds = %111
  %115 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %116 = bitcast %struct.t_atom* %113 to i8*
  %117 = call i32 %115(i8* %116, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str210, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 562) #8
  %118 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %119 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 1
  %120 = bitcast float* %119 to i8*
  %121 = call i32 %118(i8* %120, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str211, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 563) #8
  %122 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %123 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 2
  %124 = bitcast float* %123 to i8*
  %125 = call i32 %122(i8* %124, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str212, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 564) #8
  %126 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %127 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 3
  %128 = bitcast float* %127 to i8*
  %129 = call i32 %126(i8* %128, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str213, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 565) #8
  %130 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %131 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 4
  %132 = bitcast i16* %131 to i8*
  %133 = call i32 %130(i8* %132, i32 1, i32 3, i8* getelementptr inbounds ([11 x i8]* @.str214, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 566) #8
  %134 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %135 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 5
  %136 = bitcast i16* %135 to i8*
  %137 = call i32 %134(i8* %136, i32 1, i32 3, i8* getelementptr inbounds ([12 x i8]* @.str215, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 567) #8
  %138 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %139 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 6
  %140 = bitcast i32* %139 to i8*
  %141 = call i32 %138(i8* %140, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str216, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 568) #8
  %142 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %143 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 7
  %144 = bitcast i32* %143 to i8*
  %145 = call i32 %142(i8* %144, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str217, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 569) #8
  br label %178

; <label>:146                                     ; preds = %111
  %147 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %148 = bitcast %struct.t_atom* %113 to i8*
  %149 = call i32 %147(i8* %148, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str210, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 562) #8
  %150 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %151 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 1
  %152 = bitcast float* %151 to i8*
  %153 = call i32 %150(i8* %152, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str211, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 563) #8
  %154 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %155 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 2
  %156 = bitcast float* %155 to i8*
  %157 = call i32 %154(i8* %156, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str212, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 564) #8
  %158 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %159 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 3
  %160 = bitcast float* %159 to i8*
  %161 = call i32 %158(i8* %160, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str213, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 565) #8
  %162 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %163 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 4
  %164 = bitcast i16* %163 to i8*
  %165 = call i32 %162(i8* %164, i32 1, i32 3, i8* getelementptr inbounds ([11 x i8]* @.str214, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 566) #8
  %166 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %167 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 5
  %168 = bitcast i16* %167 to i8*
  %169 = call i32 %166(i8* %168, i32 1, i32 3, i8* getelementptr inbounds ([12 x i8]* @.str215, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 567) #8
  %170 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %171 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 6
  %172 = bitcast i32* %171 to i8*
  %173 = call i32 %170(i8* %172, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str216, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 568) #8
  %174 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %175 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 7
  %176 = bitcast i32* %175 to i8*
  %177 = call i32 %174(i8* %176, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str217, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 569) #8
  br label %178

; <label>:178                                     ; preds = %146, %114
  %179 = load i32* @file_version, align 4, !tbaa !22
  %180 = icmp slt i32 %179, 23
  br i1 %180, label %181, label %183

; <label>:181                                     ; preds = %178
  %182 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 8, i64 8
  store i8 0, i8* %182, align 1, !tbaa !13
  br label %183

; <label>:183                                     ; preds = %181, %178
  %.0.i.i = phi i32 [ 8, %181 ], [ 9, %178 ]
  br i1 %57, label %184, label %188

; <label>:184                                     ; preds = %183
  %185 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %186 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 8, i64 0
  %187 = call i32 %185(i8* %186, i32 %.0.i.i, i32 2, i8* getelementptr inbounds ([12 x i8]* @.str218, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 574) #8
  br label %do_atom.exit.i

; <label>:188                                     ; preds = %183
  %189 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %190 = getelementptr inbounds %struct.t_atom* %112, i64 %indvars.iv45.i, i32 8, i64 0
  %191 = call i32 %189(i8* %190, i32 %.0.i.i, i32 2, i8* getelementptr inbounds ([12 x i8]* @.str218, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 574) #8
  br label %do_atom.exit.i

do_atom.exit.i:                                   ; preds = %188, %184
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1
  %192 = load i32* %.pre-phi.i, align 4, !tbaa !84
  %193 = sext i32 %192 to i64
  %194 = icmp slt i64 %indvars.iv.next46.i, %193
  br i1 %194, label %111, label %._crit_edge.i2

._crit_edge.i2:                                   ; preds = %do_atom.exit.i
  %195 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 2
  %196 = load i8**** %195, align 8, !tbaa !86
  %197 = icmp sgt i32 %192, 0
  br i1 %197, label %.lr.ph.i.i, label %do_strstr.exit.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i2
  %198 = add i32 %192, -1
  br label %199

; <label>:199                                     ; preds = %199, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %199 ]
  %200 = getelementptr inbounds i8*** %196, i64 %indvars.iv.i.i
  call fastcc void @do_symstr(i8*** %200, i32 %bRead, %struct.t_symtab* %1) #8
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %lftr.wideiv50 = trunc i64 %indvars.iv.i.i to i32
  %exitcond51 = icmp eq i32 %lftr.wideiv50, %198
  br i1 %exitcond51, label %do_strstr.exit.ithread-pre-split.loopexit, label %199

do_strstr.exit.ithread-pre-split.loopexit:        ; preds = %199
  %.pr.pre = load i32* %.pre-phi.i, align 4, !tbaa !84
  br label %do_strstr.exit.i

do_strstr.exit.i:                                 ; preds = %._crit_edge.i2, %do_strstr.exit.ithread-pre-split.loopexit, %.preheader31.i
  %201 = phi i32 [ %108, %.preheader31.i ], [ %.pr.pre, %do_strstr.exit.ithread-pre-split.loopexit ], [ %192, %._crit_edge.i2 ]
  %202 = load i32* @file_version, align 4
  %203 = icmp slt i32 %202, 21
  %or.cond.i3 = and i1 %57, %203
  br i1 %or.cond.i3, label %.preheader.i4, label %217

.preheader.i4:                                    ; preds = %do_strstr.exit.i
  %204 = icmp sgt i32 %201, 0
  br i1 %204, label %.lr.ph.i5, label %do_strstr.exit13.i

.lr.ph.i5:                                        ; preds = %.preheader.i4
  %205 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 3
  %206 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 4
  br label %207

; <label>:207                                     ; preds = %207, %.lr.ph.i5
  %indvars.iv.i6 = phi i64 [ 0, %.lr.ph.i5 ], [ %indvars.iv.next.i7, %207 ]
  %208 = call i8** @put_symtab(%struct.t_symtab* %1, i8* getelementptr inbounds ([2 x i8]* @.str209, i64 0, i64 0)) #8
  %209 = load i8**** %205, align 8, !tbaa !87
  %210 = getelementptr inbounds i8*** %209, i64 %indvars.iv.i6
  store i8** %208, i8*** %210, align 8, !tbaa !18
  %211 = call i8** @put_symtab(%struct.t_symtab* %1, i8* getelementptr inbounds ([2 x i8]* @.str209, i64 0, i64 0)) #8
  %212 = load i8**** %206, align 8, !tbaa !88
  %213 = getelementptr inbounds i8*** %212, i64 %indvars.iv.i6
  store i8** %211, i8*** %213, align 8, !tbaa !18
  %indvars.iv.next.i7 = add nuw nsw i64 %indvars.iv.i6, 1
  %214 = load i32* %.pre-phi.i, align 4, !tbaa !84
  %215 = sext i32 %214 to i64
  %216 = icmp slt i64 %indvars.iv.next.i7, %215
  br i1 %216, label %207, label %do_strstr.exit13.i

; <label>:217                                     ; preds = %do_strstr.exit.i
  %218 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 3
  %219 = load i8**** %218, align 8, !tbaa !87
  %220 = icmp sgt i32 %201, 0
  br i1 %220, label %.lr.ph.i2.i, label %do_strstr.exit13.i

.lr.ph.i2.i:                                      ; preds = %217
  %221 = add i32 %201, -1
  br label %222

; <label>:222                                     ; preds = %222, %.lr.ph.i2.i
  %indvars.iv.i3.i = phi i64 [ 0, %.lr.ph.i2.i ], [ %indvars.iv.next.i4.i, %222 ]
  %223 = getelementptr inbounds i8*** %219, i64 %indvars.iv.i3.i
  call fastcc void @do_symstr(i8*** %223, i32 %bRead, %struct.t_symtab* %1) #8
  %indvars.iv.next.i4.i = add nuw nsw i64 %indvars.iv.i3.i, 1
  %lftr.wideiv48 = trunc i64 %indvars.iv.i3.i to i32
  %exitcond49 = icmp eq i32 %lftr.wideiv48, %221
  br i1 %exitcond49, label %do_strstr.exit7.i, label %222

do_strstr.exit7.i:                                ; preds = %222
  %.pr.i = load i32* %.pre-phi.i, align 4, !tbaa !84
  %224 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 4
  %225 = load i8**** %224, align 8, !tbaa !88
  %226 = icmp sgt i32 %.pr.i, 0
  br i1 %226, label %.lr.ph.i8.i, label %do_strstr.exit13.i

.lr.ph.i8.i:                                      ; preds = %do_strstr.exit7.i
  %227 = add i32 %.pr.i, -1
  br label %228

; <label>:228                                     ; preds = %228, %.lr.ph.i8.i
  %indvars.iv.i9.i = phi i64 [ 0, %.lr.ph.i8.i ], [ %indvars.iv.next.i10.i, %228 ]
  %229 = getelementptr inbounds i8*** %225, i64 %indvars.iv.i9.i
  call fastcc void @do_symstr(i8*** %229, i32 %bRead, %struct.t_symtab* %1) #8
  %indvars.iv.next.i10.i = add nuw nsw i64 %indvars.iv.i9.i, 1
  %lftr.wideiv46 = trunc i64 %indvars.iv.i9.i to i32
  %exitcond47 = icmp eq i32 %lftr.wideiv46, %227
  br i1 %exitcond47, label %do_strstr.exit13.i, label %228

do_strstr.exit13.i:                               ; preds = %228, %207, %do_strstr.exit7.i, %217, %.preheader.i4
  %230 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 5
  %231 = load i32* %230, align 4, !tbaa !89
  %232 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 6
  %233 = load i8**** %232, align 8, !tbaa !90
  %234 = icmp sgt i32 %231, 0
  br i1 %234, label %.lr.ph.i14.i, label %do_strstr.exit19.i

.lr.ph.i14.i:                                     ; preds = %do_strstr.exit13.i
  %235 = add i32 %231, -1
  br label %236

; <label>:236                                     ; preds = %236, %.lr.ph.i14.i
  %indvars.iv.i15.i = phi i64 [ 0, %.lr.ph.i14.i ], [ %indvars.iv.next.i16.i, %236 ]
  %237 = getelementptr inbounds i8*** %233, i64 %indvars.iv.i15.i
  call fastcc void @do_symstr(i8*** %237, i32 %bRead, %struct.t_symtab* %1) #8
  %indvars.iv.next.i16.i = add nuw nsw i64 %indvars.iv.i15.i, 1
  %lftr.wideiv44 = trunc i64 %indvars.iv.i15.i to i32
  %exitcond45 = icmp eq i32 %lftr.wideiv44, %235
  br i1 %exitcond45, label %do_strstr.exit19.i, label %236

do_strstr.exit19.i:                               ; preds = %236, %do_strstr.exit13.i
  %238 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 7
  %239 = load i32* %238, align 4, !tbaa !91
  %240 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 8
  %241 = load i8**** %240, align 8, !tbaa !92
  %242 = icmp sgt i32 %239, 0
  br i1 %242, label %.lr.ph.i20.i, label %do_strstr.exit25.i

.lr.ph.i20.i:                                     ; preds = %do_strstr.exit19.i
  %243 = add i32 %239, -1
  br label %244

; <label>:244                                     ; preds = %244, %.lr.ph.i20.i
  %indvars.iv.i21.i = phi i64 [ 0, %.lr.ph.i20.i ], [ %indvars.iv.next.i22.i, %244 ]
  %245 = getelementptr inbounds i8*** %241, i64 %indvars.iv.i21.i
  call fastcc void @do_symstr(i8*** %245, i32 %bRead, %struct.t_symtab* %1) #8
  %indvars.iv.next.i22.i = add nuw nsw i64 %indvars.iv.i21.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.i21.i to i32
  %exitcond43 = icmp eq i32 %lftr.wideiv, %243
  br i1 %exitcond43, label %do_strstr.exit25.i, label %244

do_strstr.exit25.i:                               ; preds = %244, %do_strstr.exit19.i
  %246 = load i32* @file_version, align 4, !tbaa !22
  %247 = icmp slt i32 %246, 23
  br i1 %247, label %248, label %253

; <label>:248                                     ; preds = %do_strstr.exit25.i
  %249 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 8, i32 0
  store i32 1, i32* %249, align 4, !tbaa !79
  %250 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str219, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 585, i32 1, i32 4) #8
  %251 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 8, i32 1
  %252 = bitcast i32** %251 to i8**
  store i8* %250, i8** %252, align 8, !tbaa !80
  br label %253

; <label>:253                                     ; preds = %248, %do_strstr.exit25.i
  %.0.i26.i = phi i64 [ 8, %248 ], [ 9, %do_strstr.exit25.i ]
  %254 = getelementptr inbounds [128 x i8]* %buf.i.i, i64 0, i64 0
  br label %255

; <label>:255                                     ; preds = %._crit_edge.i.i, %253
  %indvars.iv4.i.i = phi i64 [ 0, %253 ], [ %indvars.iv.next5.i.i, %._crit_edge.i.i ]
  br i1 %57, label %261, label %256

; <label>:256                                     ; preds = %255
  %257 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %258 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv4.i.i, i32 0
  %259 = bitcast i32* %258 to i8*
  %260 = call i32 %257(i8* %259, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str220, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 589) #8
  br label %.preheader.i.i

; <label>:261                                     ; preds = %255
  %262 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %263 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv4.i.i, i32 0
  %264 = bitcast i32* %263 to i8*
  %265 = call i32 %262(i8* %264, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str220, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 589) #8
  %266 = load i32* %263, align 4, !tbaa !79
  %267 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str221, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 591, i32 %266, i32 4) #8
  %268 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv4.i.i, i32 1
  %269 = bitcast i32** %268 to i8**
  store i8* %267, i8** %269, align 8, !tbaa !80
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %261, %256
  %.pre-phi.i.i = phi i32* [ %263, %261 ], [ %258, %256 ]
  %270 = load i32* %.pre-phi.i.i, align 4, !tbaa !79
  %271 = icmp sgt i32 %270, 0
  br i1 %271, label %.lr.ph.i27.i, label %._crit_edge.i.i

.lr.ph.i27.i:                                     ; preds = %.preheader.i.i
  %272 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv4.i.i, i32 1
  br label %273

; <label>:273                                     ; preds = %293, %.lr.ph.i27.i
  %indvars.iv.i28.i = phi i64 [ 0, %.lr.ph.i27.i ], [ %indvars.iv.next.i29.i, %293 ]
  %bDum.02.i.i = phi i32 [ 1, %.lr.ph.i27.i ], [ %295, %293 ]
  call void @llvm.lifetime.start(i64 128, i8* %254) #5
  %274 = trunc i64 %indvars.iv.i28.i to i32
  %275 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %254, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str221, i64 0, i64 0), i32 %274) #8
  %276 = icmp eq i32 %bDum.02.i.i, 0
  br i1 %276, label %293, label %277

; <label>:277                                     ; preds = %273
  br i1 %57, label %278, label %284

; <label>:278                                     ; preds = %277
  %279 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %280 = load i32** %272, align 8, !tbaa !80
  %281 = getelementptr inbounds i32* %280, i64 %indvars.iv.i28.i
  %282 = bitcast i32* %281 to i8*
  %283 = call i32 %279(i8* %282, i32 1, i32 1, i8* %254, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 592) #8
  br label %290

; <label>:284                                     ; preds = %277
  %285 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %286 = load i32** %272, align 8, !tbaa !80
  %287 = getelementptr inbounds i32* %286, i64 %indvars.iv.i28.i
  %288 = bitcast i32* %287 to i8*
  %289 = call i32 %285(i8* %288, i32 1, i32 1, i8* %254, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 592) #8
  br label %290

; <label>:290                                     ; preds = %284, %278
  %291 = phi i32 [ %283, %278 ], [ %289, %284 ]
  %292 = icmp ne i32 %291, 0
  br label %293

; <label>:293                                     ; preds = %290, %273
  %294 = phi i1 [ false, %273 ], [ %292, %290 ]
  %295 = zext i1 %294 to i32
  call void @llvm.lifetime.end(i64 128, i8* %254) #5
  %indvars.iv.next.i29.i = add nuw nsw i64 %indvars.iv.i28.i, 1
  %296 = load i32* %.pre-phi.i.i, align 4, !tbaa !79
  %297 = sext i32 %296 to i64
  %298 = icmp slt i64 %indvars.iv.next.i29.i, %297
  br i1 %298, label %273, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %293, %.preheader.i.i
  %indvars.iv.next5.i.i = add nuw nsw i64 %indvars.iv4.i.i, 1
  %299 = icmp slt i64 %indvars.iv.next5.i.i, %.0.i26.i
  br i1 %299, label %255, label %do_atoms.exit

do_atoms.exit:                                    ; preds = %._crit_edge.i.i
  %300 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 9
  call fastcc void @do_block(%struct.t_block* %300, i32 %bRead) #8
  %301 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1
  br i1 %57, label %314, label %302

; <label>:302                                     ; preds = %do_atoms.exit
  %303 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %304 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 2
  %305 = bitcast i32* %304 to i8*
  %306 = call i32 %303(i8* %305, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str222, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 510) #8
  %307 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %308 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 1
  %309 = bitcast i32* %308 to i8*
  %310 = call i32 %307(i8* %309, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str223, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 511) #8
  %311 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %312 = bitcast %struct.t_idef* %301 to i8*
  %313 = call i32 %311(i8* %312, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str224, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 512) #8
  %.pre.i12 = getelementptr inbounds %struct.t_idef* %301, i64 0, i32 0
  br label %.preheader5.i

; <label>:314                                     ; preds = %do_atoms.exit
  %315 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %316 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 2
  %317 = bitcast i32* %316 to i8*
  %318 = call i32 %315(i8* %317, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str222, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 510) #8
  %319 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %320 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 1
  %321 = bitcast i32* %320 to i8*
  %322 = call i32 %319(i8* %321, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str223, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 511) #8
  %323 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %324 = bitcast %struct.t_idef* %301 to i8*
  %325 = call i32 %323(i8* %324, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str224, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 512) #8
  %326 = getelementptr inbounds %struct.t_idef* %301, i64 0, i32 0
  %327 = load i32* %326, align 4, !tbaa !94
  %328 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str225, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 514, i32 %327, i32 4) #8
  %329 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 3
  %330 = bitcast i32** %329 to i8**
  store i8* %328, i8** %330, align 8, !tbaa !95
  %331 = load i32* %326, align 4, !tbaa !94
  %332 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str226, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 515, i32 %331, i32 24) #8
  %333 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 4
  %334 = bitcast %union.t_iparams** %333 to i8**
  store i8* %332, i8** %334, align 8, !tbaa !96
  br label %.preheader5.i

.preheader5.i:                                    ; preds = %314, %302
  %.pre-phi.i13 = phi i32* [ %326, %314 ], [ %.pre.i12, %302 ]
  %335 = load i32* %.pre-phi.i13, align 4, !tbaa !94
  %336 = icmp sgt i32 %335, 0
  br i1 %336, label %.lr.ph14.i, label %.preheader2.i

.lr.ph14.i:                                       ; preds = %.preheader5.i
  %337 = getelementptr inbounds [128 x i8]* %buf.i11, i64 0, i64 0
  %338 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 3
  br label %341

.preheader4.i:                                    ; preds = %361
  %339 = icmp sgt i32 %364, 0
  br i1 %339, label %.lr.ph.i14, label %.preheader2.i

.lr.ph.i14:                                       ; preds = %.preheader4.i
  %340 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 4
  br label %368

; <label>:341                                     ; preds = %361, %.lr.ph14.i
  %indvars.iv27.i = phi i64 [ 0, %.lr.ph14.i ], [ %indvars.iv.next28.i, %361 ]
  %bDum.013.i = phi i32 [ 1, %.lr.ph14.i ], [ %363, %361 ]
  call void @llvm.lifetime.start(i64 128, i8* %337) #5
  %342 = trunc i64 %indvars.iv27.i to i32
  %343 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %337, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str225, i64 0, i64 0), i32 %342) #8
  %344 = icmp eq i32 %bDum.013.i, 0
  br i1 %344, label %361, label %345

; <label>:345                                     ; preds = %341
  br i1 %57, label %346, label %352

; <label>:346                                     ; preds = %345
  %347 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %348 = load i32** %338, align 8, !tbaa !95
  %349 = getelementptr inbounds i32* %348, i64 %indvars.iv27.i
  %350 = bitcast i32* %349 to i8*
  %351 = call i32 %347(i8* %350, i32 1, i32 1, i8* %337, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 517) #8
  br label %358

; <label>:352                                     ; preds = %345
  %353 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %354 = load i32** %338, align 8, !tbaa !95
  %355 = getelementptr inbounds i32* %354, i64 %indvars.iv27.i
  %356 = bitcast i32* %355 to i8*
  %357 = call i32 %353(i8* %356, i32 1, i32 1, i8* %337, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 517) #8
  br label %358

; <label>:358                                     ; preds = %352, %346
  %359 = phi i32 [ %351, %346 ], [ %357, %352 ]
  %360 = icmp ne i32 %359, 0
  br label %361

; <label>:361                                     ; preds = %358, %341
  %362 = phi i1 [ false, %341 ], [ %360, %358 ]
  %363 = zext i1 %362 to i32
  call void @llvm.lifetime.end(i64 128, i8* %337) #5
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1
  %364 = load i32* %.pre-phi.i13, align 4, !tbaa !94
  %365 = sext i32 %364 to i64
  %366 = icmp slt i64 %indvars.iv.next28.i, %365
  br i1 %366, label %341, label %.preheader4.i

.preheader2.i:                                    ; preds = %.loopexit.i, %.preheader4.i, %.preheader5.i
  %367 = getelementptr inbounds [128 x i8]* %buf1.i.i, i64 0, i64 0
  br label %391

; <label>:368                                     ; preds = %.loopexit.i, %.lr.ph.i14
  %indvars.iv25.i = phi i64 [ 0, %.lr.ph.i14 ], [ %indvars.iv.next26.i, %.loopexit.i ]
  br i1 %57, label %.preheader3.i, label %.loopexit.i

.preheader3.i:                                    ; preds = %368, %382
  %indvars.iv22.i = phi i64 [ %indvars.iv.next23.i, %382 ], [ 0, %368 ]
  %369 = load i32* @file_version, align 4, !tbaa !22
  %370 = getelementptr inbounds [7 x %struct.t_ftupd]* @ftupd, i64 0, i64 %indvars.iv22.i, i32 0
  %371 = load i32* %370, align 8, !tbaa !97
  %372 = icmp slt i32 %369, %371
  br i1 %372, label %373, label %382

; <label>:373                                     ; preds = %.preheader3.i
  %374 = load i32** %338, align 8, !tbaa !95
  %375 = getelementptr inbounds i32* %374, i64 %indvars.iv25.i
  %376 = load i32* %375, align 4, !tbaa !22
  %377 = getelementptr inbounds [7 x %struct.t_ftupd]* @ftupd, i64 0, i64 %indvars.iv22.i, i32 1
  %378 = load i32* %377, align 4, !tbaa !99
  %379 = icmp slt i32 %376, %378
  br i1 %379, label %382, label %380

; <label>:380                                     ; preds = %373
  %381 = add nsw i32 %376, 1
  store i32 %381, i32* %375, align 4, !tbaa !22
  br label %382

; <label>:382                                     ; preds = %380, %373, %.preheader3.i
  %indvars.iv.next23.i = add nuw nsw i64 %indvars.iv22.i, 1
  %exitcond24.i = icmp eq i64 %indvars.iv.next23.i, 7
  br i1 %exitcond24.i, label %.loopexit.i, label %.preheader3.i

.loopexit.i:                                      ; preds = %382, %368
  %383 = load i32** %338, align 8, !tbaa !95
  %384 = getelementptr inbounds i32* %383, i64 %indvars.iv25.i
  %385 = load i32* %384, align 4, !tbaa !22
  %386 = load %union.t_iparams** %340, align 8, !tbaa !96
  %387 = getelementptr inbounds %union.t_iparams* %386, i64 %indvars.iv25.i
  call void @do_iparams(i32 %385, %union.t_iparams* %387, i32 %bRead) #8
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  %388 = load i32* %.pre-phi.i13, align 4, !tbaa !94
  %389 = sext i32 %388 to i64
  %390 = icmp slt i64 %indvars.iv.next26.i, %389
  br i1 %390, label %368, label %.preheader2.i

; <label>:391                                     ; preds = %do_ilist.exit.i, %.preheader2.i
  %indvars.iv19.i = phi i64 [ 0, %.preheader2.i ], [ %indvars.iv.next20.i, %do_ilist.exit.i ]
  br i1 %57, label %.preheader.i15, label %409

.preheader.i15:                                   ; preds = %391
  %392 = load i32* @file_version, align 4, !tbaa !22
  %393 = trunc i64 %indvars.iv19.i to i32
  br label %394

; <label>:394                                     ; preds = %402, %.preheader.i15
  %indvars.iv.i16 = phi i64 [ 0, %.preheader.i15 ], [ %indvars.iv.next.i17, %402 ]
  %bClear.07.i = phi i32 [ 0, %.preheader.i15 ], [ %bClear.1.i, %402 ]
  %395 = getelementptr inbounds [7 x %struct.t_ftupd]* @ftupd, i64 0, i64 %indvars.iv.i16, i32 0
  %396 = load i32* %395, align 8, !tbaa !97
  %397 = icmp slt i32 %392, %396
  br i1 %397, label %398, label %402

; <label>:398                                     ; preds = %394
  %399 = getelementptr inbounds [7 x %struct.t_ftupd]* @ftupd, i64 0, i64 %indvars.iv.i16, i32 1
  %400 = load i32* %399, align 4, !tbaa !99
  %401 = icmp eq i32 %393, %400
  %.bClear.0.i = select i1 %401, i32 1, i32 %bClear.07.i
  br label %402

; <label>:402                                     ; preds = %398, %394
  %bClear.1.i = phi i32 [ %bClear.07.i, %394 ], [ %.bClear.0.i, %398 ]
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i16, 1
  %exitcond.i18 = icmp eq i64 %indvars.iv.next.i17, 7
  br i1 %exitcond.i18, label %403, label %394

; <label>:403                                     ; preds = %402
  %404 = icmp eq i32 %bClear.1.i, 0
  %405 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv19.i
  br i1 %404, label %.preheader2.i.i, label %406

; <label>:406                                     ; preds = %403
  %407 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv19.i, i32 2
  store i32* null, i32** %407, align 8, !tbaa !100
  %408 = bitcast %struct.t_ilist* %405 to i8*
  call void @llvm.memset.p0i8.i64(i8* %408, i8 0, i64 1028, i32 4, i1 false) #5
  br label %do_ilist.exit.i

; <label>:409                                     ; preds = %391
  %410 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv19.i
  %.in.i = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv19.i, i32 0
  %411 = load i8** %.in.i, align 8
  call void @set_comment(i8* %411) #8
  br label %.preheader2.i.i

.preheader2.i.i:                                  ; preds = %409, %403
  %412 = phi %struct.t_ilist* [ %410, %409 ], [ %405, %403 ]
  br label %413

; <label>:413                                     ; preds = %431, %.preheader2.i.i
  %indvars.iv7.i.i = phi i64 [ 0, %.preheader2.i.i ], [ %indvars.iv.next8.i.i, %431 ]
  %bDum.06.i.i = phi i32 [ 1, %.preheader2.i.i ], [ %433, %431 ]
  call void @llvm.lifetime.start(i64 128, i8* %254) #5
  %414 = trunc i64 %indvars.iv7.i.i to i32
  %415 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %254, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str227, i64 0, i64 0), i32 %414) #8
  %416 = icmp eq i32 %bDum.06.i.i, 0
  br i1 %416, label %431, label %417

; <label>:417                                     ; preds = %413
  br i1 %57, label %418, label %423

; <label>:418                                     ; preds = %417
  %419 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %420 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv19.i, i32 1, i64 %indvars.iv7.i.i
  %421 = bitcast i32* %420 to i8*
  %422 = call i32 %419(i8* %421, i32 1, i32 1, i8* %254, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 496) #8
  br label %428

; <label>:423                                     ; preds = %417
  %424 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %425 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv19.i, i32 1, i64 %indvars.iv7.i.i
  %426 = bitcast i32* %425 to i8*
  %427 = call i32 %424(i8* %426, i32 1, i32 1, i8* %254, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 496) #8
  br label %428

; <label>:428                                     ; preds = %423, %418
  %429 = phi i32 [ %422, %418 ], [ %427, %423 ]
  %430 = icmp ne i32 %429, 0
  br label %431

; <label>:431                                     ; preds = %428, %413
  %432 = phi i1 [ false, %413 ], [ %430, %428 ]
  %433 = zext i1 %432 to i32
  call void @llvm.lifetime.end(i64 128, i8* %254) #5
  %indvars.iv.next8.i.i = add nuw nsw i64 %indvars.iv7.i.i, 1
  %exitcond.i.i = icmp eq i64 %indvars.iv.next8.i.i, 256
  br i1 %exitcond.i.i, label %434, label %413

; <label>:434                                     ; preds = %431
  br i1 %57, label %439, label %435

; <label>:435                                     ; preds = %434
  %436 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %437 = bitcast %struct.t_ilist* %412 to i8*
  %438 = call i32 %436(i8* %437, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str228, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 497) #8
  %.pre.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv19.i, i32 0
  br label %.preheader.i.i20

; <label>:439                                     ; preds = %434
  %440 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %441 = bitcast %struct.t_ilist* %412 to i8*
  %442 = call i32 %440(i8* %441, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str228, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 497) #8
  %443 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv19.i, i32 0
  %444 = load i32* %443, align 4, !tbaa !102
  %445 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str229, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 499, i32 %444, i32 4) #8
  %446 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv19.i, i32 2
  %447 = bitcast i32** %446 to i8**
  store i8* %445, i8** %447, align 8, !tbaa !100
  br label %.preheader.i.i20

.preheader.i.i20:                                 ; preds = %439, %435
  %.pre-phi.i.i19 = phi i32* [ %443, %439 ], [ %.pre.i.i, %435 ]
  %448 = load i32* %.pre-phi.i.i19, align 4, !tbaa !102
  %449 = icmp sgt i32 %448, 0
  br i1 %449, label %.lr.ph.i.i21, label %._crit_edge.i.i24

.lr.ph.i.i21:                                     ; preds = %.preheader.i.i20
  %450 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv19.i, i32 2
  br label %451

; <label>:451                                     ; preds = %471, %.lr.ph.i.i21
  %indvars.iv.i.i22 = phi i64 [ 0, %.lr.ph.i.i21 ], [ %indvars.iv.next.i.i23, %471 ]
  %bDum.14.i.i = phi i32 [ 1, %.lr.ph.i.i21 ], [ %473, %471 ]
  call void @llvm.lifetime.start(i64 128, i8* %367) #5
  %452 = trunc i64 %indvars.iv.i.i22 to i32
  %453 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %367, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str229, i64 0, i64 0), i32 %452) #8
  %454 = icmp eq i32 %bDum.14.i.i, 0
  br i1 %454, label %471, label %455

; <label>:455                                     ; preds = %451
  br i1 %57, label %456, label %462

; <label>:456                                     ; preds = %455
  %457 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %458 = load i32** %450, align 8, !tbaa !100
  %459 = getelementptr inbounds i32* %458, i64 %indvars.iv.i.i22
  %460 = bitcast i32* %459 to i8*
  %461 = call i32 %457(i8* %460, i32 1, i32 1, i8* %367, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 500) #8
  br label %468

; <label>:462                                     ; preds = %455
  %463 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %464 = load i32** %450, align 8, !tbaa !100
  %465 = getelementptr inbounds i32* %464, i64 %indvars.iv.i.i22
  %466 = bitcast i32* %465 to i8*
  %467 = call i32 %463(i8* %466, i32 1, i32 1, i8* %367, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 500) #8
  br label %468

; <label>:468                                     ; preds = %462, %456
  %469 = phi i32 [ %461, %456 ], [ %467, %462 ]
  %470 = icmp ne i32 %469, 0
  br label %471

; <label>:471                                     ; preds = %468, %451
  %472 = phi i1 [ false, %451 ], [ %470, %468 ]
  %473 = zext i1 %472 to i32
  call void @llvm.lifetime.end(i64 128, i8* %367) #5
  %indvars.iv.next.i.i23 = add nuw nsw i64 %indvars.iv.i.i22, 1
  %474 = load i32* %.pre-phi.i.i19, align 4, !tbaa !102
  %475 = sext i32 %474 to i64
  %476 = icmp slt i64 %indvars.iv.next.i.i23, %475
  br i1 %476, label %451, label %._crit_edge.i.i24

._crit_edge.i.i24:                                ; preds = %471, %.preheader.i.i20
  br i1 %57, label %do_ilist.exit.i, label %477

; <label>:477                                     ; preds = %._crit_edge.i.i24
  call void @unset_comment() #8
  br label %do_ilist.exit.i

do_ilist.exit.i:                                  ; preds = %477, %._crit_edge.i.i24, %406
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1
  %exitcond21.i = icmp eq i64 %indvars.iv.next20.i, 44
  br i1 %exitcond21.i, label %do_idef.exit, label %391

do_idef.exit:                                     ; preds = %do_ilist.exit.i, %do_idef.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %do_idef.exit ], [ 0, %do_ilist.exit.i ]
  %478 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv
  call fastcc void @do_block(%struct.t_block* %478, i32 %bRead) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond42 = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond42, label %479, label %do_idef.exit

; <label>:479                                     ; preds = %do_idef.exit
  br i1 %3, label %make_chain_identifiers.exit, label %480

; <label>:480                                     ; preds = %479
  call void @close_symtab(%struct.t_symtab* %1) #8
  %481 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 1
  %482 = load i32* %481, align 4, !tbaa !103
  %483 = icmp sgt i32 %482, 0
  br i1 %483, label %.lr.ph7.i, label %make_chain_identifiers.exit

.lr.ph7.i:                                        ; preds = %480
  %484 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 2
  %485 = load i32** %484, align 8, !tbaa !104
  %486 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 4
  %487 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1
  %.pre.i25 = load i32* %485, align 4, !tbaa !22
  %488 = sext i32 %482 to i64
  %489 = add nsw i64 %488, -1
  br label %490

.loopexit1.i:                                     ; preds = %503, %490
  %exitcond41 = icmp eq i64 %indvars.iv10.i, %489
  br i1 %exitcond41, label %508, label %490

; <label>:490                                     ; preds = %.loopexit1.i, %.lr.ph7.i
  %491 = phi i32 [ %.pre.i25, %.lr.ph7.i ], [ %493, %.loopexit1.i ]
  %indvars.iv10.i = phi i64 [ 0, %.lr.ph7.i ], [ %indvars.iv.next11.i, %.loopexit1.i ]
  %chain.06.i = phi i8 [ 65, %.lr.ph7.i ], [ %chain.1.i, %.loopexit1.i ]
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %492 = getelementptr inbounds i32* %485, i64 %indvars.iv.next11.i
  %493 = load i32* %492, align 4, !tbaa !22
  %494 = sub nsw i32 %493, %491
  %495 = icmp sgt i32 %494, 14
  %496 = icmp slt i8 %chain.06.i, 91
  %or.cond.i26 = and i1 %496, %495
  %c.0.i = select i1 %or.cond.i26, i8 %chain.06.i, i8 32
  %497 = zext i1 %or.cond.i26 to i8
  %chain.1.i = add i8 %497, %chain.06.i
  %498 = icmp sgt i32 %493, %491
  br i1 %498, label %.lr.ph4.i27, label %.loopexit1.i

.lr.ph4.i27:                                      ; preds = %490
  %499 = load i32** %486, align 8, !tbaa !105
  %500 = load %struct.t_atom** %487, align 8, !tbaa !85
  %501 = sext i32 %491 to i64
  %502 = add i32 %493, -1
  br label %503

; <label>:503                                     ; preds = %503, %.lr.ph4.i27
  %indvars.iv8.i = phi i64 [ %501, %.lr.ph4.i27 ], [ %indvars.iv.next9.i, %503 ]
  %504 = getelementptr inbounds i32* %499, i64 %indvars.iv8.i
  %505 = load i32* %504, align 4, !tbaa !22
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds %struct.t_atom* %500, i64 %506, i32 9
  store i8 %c.0.i, i8* %507, align 1, !tbaa !106
  %indvars.iv.next9.i = add nsw i64 %indvars.iv8.i, 1
  %lftr.wideiv.i28 = trunc i64 %indvars.iv8.i to i32
  %exitcond.i29 = icmp eq i32 %lftr.wideiv.i28, %502
  br i1 %exitcond.i29, label %.loopexit1.i, label %503

; <label>:508                                     ; preds = %.loopexit1.i
  %phitmp.i = icmp eq i8 %chain.1.i, 66
  br i1 %phitmp.i, label %.preheader.i30, label %make_chain_identifiers.exit

.preheader.i30:                                   ; preds = %508
  %509 = getelementptr inbounds %struct.t_atoms* %56, i64 0, i32 0
  %510 = load i32* %509, align 4, !tbaa !84
  %511 = icmp sgt i32 %510, 0
  br i1 %511, label %.lr.ph.i31, label %make_chain_identifiers.exit

.lr.ph.i31:                                       ; preds = %.preheader.i30
  %512 = load %struct.t_atom** %487, align 8, !tbaa !85
  %513 = sext i32 %510 to i64
  %514 = add nsw i64 %513, -1
  br label %515

; <label>:515                                     ; preds = %515, %.lr.ph.i31
  %indvars.iv.i32 = phi i64 [ 0, %.lr.ph.i31 ], [ %indvars.iv.next.i33, %515 ]
  %516 = getelementptr inbounds %struct.t_atom* %512, i64 %indvars.iv.i32, i32 9
  store i8 32, i8* %516, align 1, !tbaa !106
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i32, 1
  %exitcond = icmp eq i64 %indvars.iv.i32, %514
  br i1 %exitcond, label %make_chain_identifiers.exit, label %515

make_chain_identifiers.exit:                      ; preds = %515, %.preheader.i30, %508, %480, %479
  ret void
}

; Function Attrs: optsize
declare void @done_top(%struct.t_topology*) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @do_symstr(i8*** nocapture %nm, i32 %bRead, %struct.t_symtab* %symtab) #4 {
  %ls = alloca i32, align 4
  %1 = icmp eq i32 %bRead, 0
  br i1 %1, label %8, label %2

; <label>:2                                       ; preds = %0
  %3 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %4 = bitcast i32* %ls to i8*
  %5 = call i32 %3(i8* %4, i32 1, i32 1, i8* getelementptr inbounds ([3 x i8]* @.str199, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 601) #8
  %6 = load i32* %ls, align 4, !tbaa !22
  %7 = call i8** @get_symtab_handle(%struct.t_symtab* %symtab, i32 %6) #8
  store i8** %7, i8*** %nm, align 8, !tbaa !18
  br label %14

; <label>:8                                       ; preds = %0
  %9 = load i8*** %nm, align 8, !tbaa !18
  %10 = tail call i32 @lookup_symtab(%struct.t_symtab* %symtab, i8** %9) #8
  store i32 %10, i32* %ls, align 4, !tbaa !22
  %11 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %12 = bitcast i32* %ls to i8*
  %13 = call i32 %11(i8* %12, i32 1, i32 1, i8* getelementptr inbounds ([3 x i8]* @.str199, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 606) #8
  br label %14

; <label>:14                                      ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @do_block(%struct.t_block* %block, i32 %bRead) #4 {
  %buf = alloca [128 x i8], align 16
  %buf1 = alloca [128 x i8], align 16
  %buf2 = alloca [128 x i8], align 16
  %1 = getelementptr inbounds [128 x i8]* %buf, i64 0, i64 0
  %2 = icmp eq i32 %bRead, 0
  br label %3

; <label>:3                                       ; preds = %21, %0
  %indvars.iv13 = phi i64 [ 0, %0 ], [ %indvars.iv.next14, %21 ]
  %bDum.010 = phi i32 [ 1, %0 ], [ %23, %21 ]
  call void @llvm.lifetime.start(i64 128, i8* %1) #5
  %4 = trunc i64 %indvars.iv13 to i32
  %5 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str230, i64 0, i64 0), i32 %4) #8
  %6 = icmp eq i32 %bDum.010, 0
  br i1 %6, label %21, label %7

; <label>:7                                       ; preds = %3
  br i1 %2, label %13, label %8

; <label>:8                                       ; preds = %7
  %9 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %10 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 0, i64 %indvars.iv13
  %11 = bitcast i32* %10 to i8*
  %12 = call i32 %9(i8* %11, i32 1, i32 1, i8* %1, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 549) #8
  br label %18

; <label>:13                                      ; preds = %7
  %14 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %15 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 0, i64 %indvars.iv13
  %16 = bitcast i32* %15 to i8*
  %17 = call i32 %14(i8* %16, i32 1, i32 1, i8* %1, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 549) #8
  br label %18

; <label>:18                                      ; preds = %13, %8
  %19 = phi i32 [ %12, %8 ], [ %17, %13 ]
  %20 = icmp ne i32 %19, 0
  br label %21

; <label>:21                                      ; preds = %3, %18
  %22 = phi i1 [ false, %3 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  call void @llvm.lifetime.end(i64 128, i8* %1) #5
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %exitcond = icmp eq i64 %indvars.iv.next14, 256
  br i1 %exitcond, label %24, label %3

; <label>:24                                      ; preds = %21
  %25 = icmp ne i32 %bRead, 0
  br i1 %25, label %35, label %26

; <label>:26                                      ; preds = %24
  %27 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %28 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1
  %29 = bitcast i32* %28 to i8*
  %30 = call i32 %27(i8* %29, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str231, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 550) #8
  %31 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %32 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3
  %33 = bitcast i32* %32 to i8*
  %34 = call i32 %31(i8* %33, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str232, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 551) #8
  br label %.preheader3

; <label>:35                                      ; preds = %24
  %36 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %37 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1
  %38 = bitcast i32* %37 to i8*
  %39 = call i32 %36(i8* %38, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str231, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 550) #8
  %40 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %41 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3
  %42 = bitcast i32* %41 to i8*
  %43 = call i32 %40(i8* %42, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str232, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 551) #8
  %44 = load i32* %37, align 4, !tbaa !103
  %45 = add nsw i32 %44, 1
  %46 = call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str233, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 553, i32 %45, i32 4) #8
  %47 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 2
  %48 = bitcast i32** %47 to i8**
  store i8* %46, i8** %48, align 8, !tbaa !104
  %49 = load i32* %41, align 4, !tbaa !107
  %50 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str234, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 554, i32 %49, i32 4) #8
  %51 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4
  %52 = bitcast i32** %51 to i8**
  store i8* %50, i8** %52, align 8, !tbaa !105
  br label %.preheader3

.preheader3:                                      ; preds = %35, %26
  %.pre-phi = phi i32* [ %37, %35 ], [ %28, %26 ]
  %53 = load i32* %.pre-phi, align 4, !tbaa !103
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %.lr.ph8, label %.preheader

.lr.ph8:                                          ; preds = %.preheader3
  %55 = getelementptr inbounds [128 x i8]* %buf1, i64 0, i64 0
  %56 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 2
  br label %62

.preheader:                                       ; preds = %82, %.preheader3
  %57 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3
  %58 = load i32* %57, align 4, !tbaa !107
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %60 = getelementptr inbounds [128 x i8]* %buf2, i64 0, i64 0
  %61 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4
  br label %88

; <label>:62                                      ; preds = %.lr.ph8, %82
  %indvars.iv11 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next12, %82 ]
  %bDum.17 = phi i32 [ 1, %.lr.ph8 ], [ %84, %82 ]
  call void @llvm.lifetime.start(i64 128, i8* %55) #5
  %63 = trunc i64 %indvars.iv11 to i32
  %64 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %55, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str233, i64 0, i64 0), i32 %63) #8
  %65 = icmp eq i32 %bDum.17, 0
  br i1 %65, label %82, label %66

; <label>:66                                      ; preds = %62
  br i1 %25, label %67, label %73

; <label>:67                                      ; preds = %66
  %68 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %69 = load i32** %56, align 8, !tbaa !104
  %70 = getelementptr inbounds i32* %69, i64 %indvars.iv11
  %71 = bitcast i32* %70 to i8*
  %72 = call i32 %68(i8* %71, i32 1, i32 1, i8* %55, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 556) #8
  br label %79

; <label>:73                                      ; preds = %66
  %74 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %75 = load i32** %56, align 8, !tbaa !104
  %76 = getelementptr inbounds i32* %75, i64 %indvars.iv11
  %77 = bitcast i32* %76 to i8*
  %78 = call i32 %74(i8* %77, i32 1, i32 1, i8* %55, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 556) #8
  br label %79

; <label>:79                                      ; preds = %73, %67
  %80 = phi i32 [ %72, %67 ], [ %78, %73 ]
  %81 = icmp ne i32 %80, 0
  br label %82

; <label>:82                                      ; preds = %62, %79
  %83 = phi i1 [ false, %62 ], [ %81, %79 ]
  %84 = zext i1 %83 to i32
  call void @llvm.lifetime.end(i64 128, i8* %55) #5
  %indvars.iv.next12 = add nuw i64 %indvars.iv11, 1
  %85 = load i32* %.pre-phi, align 4, !tbaa !103
  %86 = sext i32 %85 to i64
  %87 = icmp slt i64 %indvars.iv11, %86
  br i1 %87, label %62, label %.preheader

; <label>:88                                      ; preds = %.lr.ph, %108
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %108 ]
  %bDum.25 = phi i32 [ 1, %.lr.ph ], [ %110, %108 ]
  call void @llvm.lifetime.start(i64 128, i8* %60) #5
  %89 = trunc i64 %indvars.iv to i32
  %90 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %60, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str234, i64 0, i64 0), i32 %89) #8
  %91 = icmp eq i32 %bDum.25, 0
  br i1 %91, label %108, label %92

; <label>:92                                      ; preds = %88
  br i1 %25, label %93, label %99

; <label>:93                                      ; preds = %92
  %94 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !18
  %95 = load i32** %61, align 8, !tbaa !105
  %96 = getelementptr inbounds i32* %95, i64 %indvars.iv
  %97 = bitcast i32* %96 to i8*
  %98 = call i32 %94(i8* %97, i32 1, i32 1, i8* %60, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 557) #8
  br label %105

; <label>:99                                      ; preds = %92
  %100 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !18
  %101 = load i32** %61, align 8, !tbaa !105
  %102 = getelementptr inbounds i32* %101, i64 %indvars.iv
  %103 = bitcast i32* %102 to i8*
  %104 = call i32 %100(i8* %103, i32 1, i32 1, i8* %60, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 557) #8
  br label %105

; <label>:105                                     ; preds = %99, %93
  %106 = phi i32 [ %98, %93 ], [ %104, %99 ]
  %107 = icmp ne i32 %106, 0
  br label %108

; <label>:108                                     ; preds = %88, %105
  %109 = phi i1 [ false, %88 ], [ %107, %105 ]
  %110 = zext i1 %109 to i32
  call void @llvm.lifetime.end(i64 128, i8* %60) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %111 = load i32* %57, align 4, !tbaa !107
  %112 = sext i32 %111 to i64
  %113 = icmp slt i64 %indvars.iv.next, %112
  br i1 %113, label %88, label %._crit_edge

._crit_edge:                                      ; preds = %108, %.preheader
  ret void
}

; Function Attrs: optsize
declare void @close_symtab(%struct.t_symtab*) #1

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #6

; Function Attrs: optsize
declare i8** @get_symtab_handle(%struct.t_symtab*, i32) #1

; Function Attrs: optsize
declare i32 @lookup_symtab(%struct.t_symtab*, i8**) #1

; Function Attrs: optsize
declare i8** @put_symtab(%struct.t_symtab*, i8*) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize }
attributes #9 = { readnone }
attributes #10 = { optsize }

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
!18 = !{!4, !4, i64 0}
!19 = !{!20, !4, i64 0}
!20 = !{!"", !4, i64 0, !4, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !21, i64 32, !7, i64 40, !4, i64 48}
!21 = !{!"long", !5, i64 0}
!22 = !{!7, !7, i64 0}
!23 = !{!24, !7, i64 24}
!24 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !15, i64 32, !15, i64 36}
!25 = !{!24, !7, i64 28}
!26 = !{!24, !15, i64 32}
!27 = !{!24, !15, i64 36}
!28 = !{!24, !7, i64 16}
!29 = !{!24, !7, i64 20}
!30 = !{!24, !7, i64 4}
!31 = !{!24, !7, i64 0}
!32 = !{!24, !7, i64 8}
!33 = !{!24, !7, i64 12}
!34 = !{!35, !4, i64 0}
!35 = !{!"", !4, i64 0, !36, i64 8, !37, i64 45800, !5, i64 47080, !39, i64 50248}
!36 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !4, i64 16, !4, i64 24, !5, i64 32}
!37 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !7, i64 40, !4, i64 48, !7, i64 56, !4, i64 64, !38, i64 72, !5, i64 1128, !4, i64 1272}
!38 = !{!"", !5, i64 0, !7, i64 1024, !4, i64 1032, !7, i64 1040, !4, i64 1048}
!39 = !{!"", !7, i64 0, !4, i64 8}
!40 = !{!35, !4, i64 45808}
!41 = !{!42, !7, i64 24}
!42 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !8, i64 16, !8, i64 18, !7, i64 20, !7, i64 24, !5, i64 28, !5, i64 37}
!43 = !{!35, !4, i64 45848}
!44 = !{!35, !4, i64 45816}
!45 = !{!42, !15, i64 0}
!46 = !{!35, !7, i64 8}
!47 = !{!48, !7, i64 100}
!48 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !15, i64 56, !15, i64 60, !15, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !15, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !15, i64 120, !5, i64 124, !5, i64 160, !7, i64 196, !15, i64 200, !15, i64 204, !7, i64 208, !15, i64 212, !15, i64 216, !7, i64 220, !15, i64 224, !15, i64 228, !15, i64 232, !7, i64 236, !15, i64 240, !15, i64 244, !7, i64 248, !15, i64 252, !15, i64 256, !15, i64 260, !15, i64 264, !15, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !15, i64 284, !15, i64 288, !15, i64 292, !7, i64 296, !15, i64 300, !15, i64 304, !7, i64 308, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !15, i64 328, !7, i64 332, !15, i64 336, !15, i64 340, !7, i64 344, !15, i64 348, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !15, i64 368, !15, i64 372, !15, i64 376, !15, i64 380, !49, i64 384, !5, i64 448, !5, i64 520}
!49 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56}
!50 = !{!48, !7, i64 88}
!51 = !{!48, !7, i64 92}
!52 = !{!48, !7, i64 116}
!53 = !{!48, !7, i64 112}
!54 = !{!48, !7, i64 248}
!55 = !{!48, !15, i64 260}
!56 = !{!48, !15, i64 264}
!57 = !{!48, !7, i64 272}
!58 = !{!48, !15, i64 288}
!59 = !{!48, !15, i64 292}
!60 = !{!48, !7, i64 296}
!61 = !{!48, !7, i64 332}
!62 = !{!48, !7, i64 308}
!63 = !{!48, !7, i64 312}
!64 = !{!48, !15, i64 348}
!65 = !{!48, !7, i64 384}
!66 = !{!48, !4, i64 400}
!67 = !{!48, !4, i64 408}
!68 = !{!48, !4, i64 416}
!69 = !{!48, !7, i64 392}
!70 = !{!48, !4, i64 432}
!71 = !{!48, !7, i64 388}
!72 = !{!48, !4, i64 424}
!73 = !{!48, !7, i64 396}
!74 = !{!48, !4, i64 440}
!75 = !{!76, !7, i64 0}
!76 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16}
!77 = !{!76, !4, i64 8}
!78 = !{!76, !4, i64 16}
!79 = !{!39, !7, i64 0}
!80 = !{!39, !4, i64 8}
!81 = !{!82, !7, i64 0}
!82 = !{!"symbuf", !7, i64 0, !4, i64 8, !4, i64 16}
!83 = !{!82, !4, i64 8}
!84 = !{!37, !7, i64 0}
!85 = !{!37, !4, i64 8}
!86 = !{!37, !4, i64 16}
!87 = !{!37, !4, i64 24}
!88 = !{!37, !4, i64 32}
!89 = !{!37, !7, i64 40}
!90 = !{!37, !4, i64 48}
!91 = !{!37, !7, i64 56}
!92 = !{!37, !4, i64 64}
!93 = !{!37, !4, i64 1272}
!94 = !{!36, !7, i64 0}
!95 = !{!36, !4, i64 16}
!96 = !{!36, !4, i64 24}
!97 = !{!98, !7, i64 0}
!98 = !{!"", !7, i64 0, !7, i64 4}
!99 = !{!98, !7, i64 4}
!100 = !{!101, !4, i64 1032}
!101 = !{!"", !7, i64 0, !5, i64 4, !4, i64 1032}
!102 = !{!101, !7, i64 0}
!103 = !{!38, !7, i64 1024}
!104 = !{!38, !4, i64 1032}
!105 = !{!38, !4, i64 1048}
!106 = !{!42, !5, i64 37}
!107 = !{!38, !7, i64 1040}

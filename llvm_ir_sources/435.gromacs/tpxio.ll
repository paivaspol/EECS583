; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_ftupd = type { i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_interaction_function = type { i8*, i8*, i32, i32, i32, i64, i32, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* }
%union.t_iparams = type { %struct.anon.2 }
%struct.anon.2 = type { float, float, float, float, float, float }
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
@.str1 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c\00", align 1
@do_write = external global i32 (i8*, i32, i32, i8*, i8*, i32)*
@comment_str = external global [7 x i8*]
@.str2 = private unnamed_addr constant [17 x i8] c"comment_str[key]\00", align 1
@stderr = external global %struct._IO_FILE*
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
@.str61 = private unnamed_addr constant [12 x i8] c"No %s in %s\00", align 1
@.str62 = private unnamed_addr constant [4 x i8] c"box\00", align 1
@.str63 = private unnamed_addr constant [3 x i8] c"ir\00", align 1
@.str64 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str65 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str66 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str67 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str68 = private unnamed_addr constant [15 x i8] c"block->multinr\00", align 1
@.str69 = private unnamed_addr constant [10 x i8] c"block->nr\00", align 1
@.str70 = private unnamed_addr constant [11 x i8] c"block->nra\00", align 1
@.str71 = private unnamed_addr constant [13 x i8] c"block->index\00", align 1
@.str72 = private unnamed_addr constant [9 x i8] c"block->a\00", align 1
@.str73 = private unnamed_addr constant [11 x i8] c"idef->atnr\00", align 1
@.str74 = private unnamed_addr constant [13 x i8] c"idef->nodeid\00", align 1
@.str75 = private unnamed_addr constant [13 x i8] c"idef->ntypes\00", align 1
@.str76 = private unnamed_addr constant [15 x i8] c"idef->functype\00", align 1
@.str77 = private unnamed_addr constant [14 x i8] c"idef->iparams\00", align 1
@file_version = internal global i32 0, align 4
@.str78 = private unnamed_addr constant [15 x i8] c"ilist->multinr\00", align 1
@.str79 = private unnamed_addr constant [10 x i8] c"ilist->nr\00", align 1
@.str80 = private unnamed_addr constant [14 x i8] c"ilist->iatoms\00", align 1
@.str81 = private unnamed_addr constant [10 x i8] c"atoms->nr\00", align 1
@.str82 = private unnamed_addr constant [12 x i8] c"atoms->nres\00", align 1
@.str83 = private unnamed_addr constant [16 x i8] c"atoms->ngrpname\00", align 1
@.str84 = private unnamed_addr constant [12 x i8] c"atoms->atom\00", align 1
@.str85 = private unnamed_addr constant [16 x i8] c"atoms->atomname\00", align 1
@.str86 = private unnamed_addr constant [16 x i8] c"atoms->atomtype\00", align 1
@.str87 = private unnamed_addr constant [17 x i8] c"atoms->atomtypeB\00", align 1
@.str88 = private unnamed_addr constant [15 x i8] c"atoms->resname\00", align 1
@.str89 = private unnamed_addr constant [15 x i8] c"atoms->grpname\00", align 1
@.str90 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str91 = private unnamed_addr constant [15 x i8] c"grps[8].nm_ind\00", align 1
@.str92 = private unnamed_addr constant [11 x i8] c"grps[j].nr\00", align 1
@.str93 = private unnamed_addr constant [15 x i8] c"grps[j].nm_ind\00", align 1
@.str94 = private unnamed_addr constant [8 x i8] c"atom->m\00", align 1
@.str95 = private unnamed_addr constant [8 x i8] c"atom->q\00", align 1
@.str96 = private unnamed_addr constant [9 x i8] c"atom->mB\00", align 1
@.str97 = private unnamed_addr constant [9 x i8] c"atom->qB\00", align 1
@.str98 = private unnamed_addr constant [11 x i8] c"atom->type\00", align 1
@.str99 = private unnamed_addr constant [12 x i8] c"atom->typeB\00", align 1
@.str100 = private unnamed_addr constant [12 x i8] c"atom->ptype\00", align 1
@.str101 = private unnamed_addr constant [12 x i8] c"atom->resnr\00", align 1
@.str102 = private unnamed_addr constant [12 x i8] c"atom->grpnr\00", align 1
@.str103 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str104 = private unnamed_addr constant [11 x i8] c"symtab->nr\00", align 1
@.str105 = private unnamed_addr constant [15 x i8] c"symtab->symbuf\00", align 1
@.str106 = private unnamed_addr constant [12 x i8] c"symbuf->buf\00", align 1
@.str107 = private unnamed_addr constant [15 x i8] c"symbuf->buf[i]\00", align 1
@.str108 = private unnamed_addr constant [30 x i8] c"nr of symtab strings left: %d\00", align 1
@.str109 = private unnamed_addr constant [48 x i8] c"Note: tpx file_version %d, software version %d\0A\00", align 1
@.str110 = private unnamed_addr constant [7 x i8] c"ir->eI\00", align 1
@.str111 = private unnamed_addr constant [11 x i8] c"ir->nsteps\00", align 1
@.str112 = private unnamed_addr constant [9 x i8] c"ir->ePBC\00", align 1
@.str113 = private unnamed_addr constant [12 x i8] c"ir->ns_type\00", align 1
@.str114 = private unnamed_addr constant [12 x i8] c"ir->nstlist\00", align 1
@.str115 = private unnamed_addr constant [11 x i8] c"ir->ndelta\00", align 1
@.str116 = private unnamed_addr constant [15 x i8] c"ir->bDomDecomp\00", align 1
@.str117 = private unnamed_addr constant [15 x i8] c"ir->decomp_dir\00", align 1
@.str118 = private unnamed_addr constant [12 x i8] c"ir->nstcomm\00", align 1
@.str119 = private unnamed_addr constant [15 x i8] c"ir->nstcgsteep\00", align 1
@.str120 = private unnamed_addr constant [11 x i8] c"ir->nstlog\00", align 1
@.str121 = private unnamed_addr constant [12 x i8] c"ir->nstxout\00", align 1
@.str122 = private unnamed_addr constant [12 x i8] c"ir->nstvout\00", align 1
@.str123 = private unnamed_addr constant [12 x i8] c"ir->nstfout\00", align 1
@.str124 = private unnamed_addr constant [14 x i8] c"ir->nstenergy\00", align 1
@.str125 = private unnamed_addr constant [14 x i8] c"ir->nstxtcout\00", align 1
@.str126 = private unnamed_addr constant [11 x i8] c"ir->init_t\00", align 1
@.str127 = private unnamed_addr constant [12 x i8] c"ir->delta_t\00", align 1
@.str128 = private unnamed_addr constant [12 x i8] c"ir->xtcprec\00", align 1
@.str129 = private unnamed_addr constant [5 x i8] c"idum\00", align 1
@.str130 = private unnamed_addr constant [10 x i8] c"ir->rlist\00", align 1
@.str131 = private unnamed_addr constant [16 x i8] c"ir->coulombtype\00", align 1
@.str132 = private unnamed_addr constant [20 x i8] c"ir->rcoulomb_switch\00", align 1
@.str133 = private unnamed_addr constant [13 x i8] c"ir->rcoulomb\00", align 1
@.str134 = private unnamed_addr constant [12 x i8] c"ir->vdwtype\00", align 1
@.str135 = private unnamed_addr constant [16 x i8] c"ir->rvdw_switch\00", align 1
@.str136 = private unnamed_addr constant [9 x i8] c"ir->rvdw\00", align 1
@.str137 = private unnamed_addr constant [14 x i8] c"ir->eDispCorr\00", align 1
@.str138 = private unnamed_addr constant [14 x i8] c"ir->epsilon_r\00", align 1
@.str139 = private unnamed_addr constant [8 x i8] c"ir->nkx\00", align 1
@.str140 = private unnamed_addr constant [8 x i8] c"ir->nky\00", align 1
@.str141 = private unnamed_addr constant [8 x i8] c"ir->nkz\00", align 1
@.str142 = private unnamed_addr constant [14 x i8] c"ir->pme_order\00", align 1
@.str143 = private unnamed_addr constant [15 x i8] c"ir->ewald_rtol\00", align 1
@.str144 = private unnamed_addr constant [19 x i8] c"ir->ewald_geometry\00", align 1
@.str145 = private unnamed_addr constant [20 x i8] c"ir->epsilon_surface\00", align 1
@.str146 = private unnamed_addr constant [12 x i8] c"ir->bOptFFT\00", align 1
@.str147 = private unnamed_addr constant [14 x i8] c"ir->bUncStart\00", align 1
@.str148 = private unnamed_addr constant [8 x i8] c"ir->etc\00", align 1
@.str149 = private unnamed_addr constant [9 x i8] c"ir->epct\00", align 1
@.str150 = private unnamed_addr constant [8 x i8] c"ir->epc\00", align 1
@.str151 = private unnamed_addr constant [10 x i8] c"ir->tau_p\00", align 1
@.str152 = private unnamed_addr constant [5 x i8] c"vdum\00", align 1
@.str153 = private unnamed_addr constant [14 x i8] c"ir->ref_p[XX]\00", align 1
@.str154 = private unnamed_addr constant [14 x i8] c"ir->ref_p[YY]\00", align 1
@.str155 = private unnamed_addr constant [14 x i8] c"ir->ref_p[ZZ]\00", align 1
@.str156 = private unnamed_addr constant [17 x i8] c"ir->compress[XX]\00", align 1
@.str157 = private unnamed_addr constant [17 x i8] c"ir->compress[YY]\00", align 1
@.str158 = private unnamed_addr constant [17 x i8] c"ir->compress[ZZ]\00", align 1
@.str159 = private unnamed_addr constant [12 x i8] c"ir->bSimAnn\00", align 1
@.str160 = private unnamed_addr constant [19 x i8] c"ir->zero_temp_time\00", align 1
@.str161 = private unnamed_addr constant [14 x i8] c"ir->shake_tol\00", align 1
@.str162 = private unnamed_addr constant [12 x i8] c"ir->fudgeQQ\00", align 1
@.str163 = private unnamed_addr constant [9 x i8] c"ir->efep\00", align 1
@.str164 = private unnamed_addr constant [16 x i8] c"ir->init_lambda\00", align 1
@.str165 = private unnamed_addr constant [17 x i8] c"ir->delta_lambda\00", align 1
@.str166 = private unnamed_addr constant [13 x i8] c"ir->sc_alpha\00", align 1
@.str167 = private unnamed_addr constant [13 x i8] c"ir->sc_sigma\00", align 1
@.str168 = private unnamed_addr constant [20 x i8] c"ir->eDisreWeighting\00", align 1
@.str169 = private unnamed_addr constant [16 x i8] c"ir->bDisreMixed\00", align 1
@.str170 = private unnamed_addr constant [10 x i8] c"ir->dr_fc\00", align 1
@.str171 = private unnamed_addr constant [11 x i8] c"ir->dr_tau\00", align 1
@.str172 = private unnamed_addr constant [16 x i8] c"ir->nstdisreout\00", align 1
@.str173 = private unnamed_addr constant [14 x i8] c"ir->orires_fc\00", align 1
@.str174 = private unnamed_addr constant [15 x i8] c"ir->orires_tau\00", align 1
@.str175 = private unnamed_addr constant [16 x i8] c"ir->nstorireout\00", align 1
@.str176 = private unnamed_addr constant [16 x i8] c"ir->em_stepsize\00", align 1
@.str177 = private unnamed_addr constant [11 x i8] c"ir->em_tol\00", align 1
@.str178 = private unnamed_addr constant [14 x i8] c"ir->bShakeSOR\00", align 1
@.str179 = private unnamed_addr constant [10 x i8] c"ir->niter\00", align 1
@.str180 = private unnamed_addr constant [53 x i8] c"Note: niter not in run input file, setting it to %d\0A\00", align 1
@.str181 = private unnamed_addr constant [16 x i8] c"ir->fc_stepsize\00", align 1
@.str182 = private unnamed_addr constant [15 x i8] c"ir->eConstrAlg\00", align 1
@.str183 = private unnamed_addr constant [15 x i8] c"ir->nProjOrder\00", align 1
@.str184 = private unnamed_addr constant [19 x i8] c"ir->LincsWarnAngle\00", align 1
@.str185 = private unnamed_addr constant [12 x i8] c"ir->bd_temp\00", align 1
@.str186 = private unnamed_addr constant [12 x i8] c"ir->bd_fric\00", align 1
@.str187 = private unnamed_addr constant [12 x i8] c"ir->ld_seed\00", align 1
@.str188 = private unnamed_addr constant [14 x i8] c"ir->cos_accel\00", align 1
@.str189 = private unnamed_addr constant [13 x i8] c"ir->userint1\00", align 1
@.str190 = private unnamed_addr constant [13 x i8] c"ir->userint2\00", align 1
@.str191 = private unnamed_addr constant [13 x i8] c"ir->userint3\00", align 1
@.str192 = private unnamed_addr constant [13 x i8] c"ir->userint4\00", align 1
@.str193 = private unnamed_addr constant [14 x i8] c"ir->userreal1\00", align 1
@.str194 = private unnamed_addr constant [14 x i8] c"ir->userreal2\00", align 1
@.str195 = private unnamed_addr constant [14 x i8] c"ir->userreal3\00", align 1
@.str196 = private unnamed_addr constant [14 x i8] c"ir->userreal4\00", align 1
@.str197 = private unnamed_addr constant [14 x i8] c"ir->opts.ngtc\00", align 1
@.str198 = private unnamed_addr constant [15 x i8] c"ir->opts.ngacc\00", align 1
@.str199 = private unnamed_addr constant [15 x i8] c"ir->opts.ngfrz\00", align 1
@.str200 = private unnamed_addr constant [16 x i8] c"ir->opts.ngener\00", align 1
@.str201 = private unnamed_addr constant [14 x i8] c"ir->opts.nrdf\00", align 1
@.str202 = private unnamed_addr constant [15 x i8] c"ir->opts.ref_t\00", align 1
@.str203 = private unnamed_addr constant [15 x i8] c"ir->opts.tau_t\00", align 1
@.str204 = private unnamed_addr constant [17 x i8] c"ir->opts.nFreeze\00", align 1
@.str205 = private unnamed_addr constant [13 x i8] c"ir->opts.acc\00", align 1
@.str206 = private unnamed_addr constant [17 x i8] c"ir->opts.eg_excl\00", align 1
@.str207 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@.str208 = private unnamed_addr constant [12 x i8] c"ir->ex[j].n\00", align 1
@.str209 = private unnamed_addr constant [12 x i8] c"ir->et[j].n\00", align 1
@.str210 = private unnamed_addr constant [12 x i8] c"ir->ex[j].a\00", align 1
@.str211 = private unnamed_addr constant [14 x i8] c"ir->ex[j].phi\00", align 1
@.str212 = private unnamed_addr constant [12 x i8] c"ir->et[j].a\00", align 1
@.str213 = private unnamed_addr constant [14 x i8] c"ir->et[j].phi\00", align 1
@.str214 = private unnamed_addr constant [8 x i8] c"VERSION\00", align 1
@.str215 = private unnamed_addr constant [173 x i8] c"Can not read file %s,\0A             this file is from a Gromacs version which is older than 2.0\0A             Make a new one with grompp or use a gro or pdb file, if possible\00", align 1
@.str216 = private unnamed_addr constant [10 x i8] c"precision\00", align 1
@.str217 = private unnamed_addr constant [67 x i8] c"Unknown precision in file %s: real is %d bytes instead of %d or %d\00", align 1
@.str218 = private unnamed_addr constant [17 x i8] c"GromacsVersion()\00", align 1
@.str219 = private unnamed_addr constant [13 x i8] c"file_version\00", align 1
@.str220 = private unnamed_addr constant [57 x i8] c"reading tpx file (%s) version %d with version %d program\00", align 1
@.str221 = private unnamed_addr constant [12 x i8] c"tpx->natoms\00", align 1
@.str222 = private unnamed_addr constant [10 x i8] c"tpx->step\00", align 1
@.str223 = private unnamed_addr constant [7 x i8] c"tpx->t\00", align 1
@.str224 = private unnamed_addr constant [12 x i8] c"tpx->lambda\00", align 1
@.str225 = private unnamed_addr constant [9 x i8] c"tpx->bIr\00", align 1
@.str226 = private unnamed_addr constant [10 x i8] c"tpx->bTop\00", align 1
@.str227 = private unnamed_addr constant [8 x i8] c"tpx->bX\00", align 1
@.str228 = private unnamed_addr constant [8 x i8] c"tpx->bV\00", align 1
@.str229 = private unnamed_addr constant [8 x i8] c"tpx->bF\00", align 1
@.str230 = private unnamed_addr constant [10 x i8] c"tpx->bBox\00", align 1
@.str231 = private unnamed_addr constant [21 x i8] c"iparams->harmonic.rA\00", align 1
@.str232 = private unnamed_addr constant [22 x i8] c"iparams->harmonic.krA\00", align 1
@.str233 = private unnamed_addr constant [21 x i8] c"iparams->harmonic.rB\00", align 1
@.str234 = private unnamed_addr constant [22 x i8] c"iparams->harmonic.krB\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @_do_section(i32 %fp, i32 %key, i32 %bRead, i8* %src, i32 %line) #0 {
entry:
  %buf = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata !{i32 %fp}, i64 0, metadata !187), !dbg !940
  call void @llvm.dbg.value(metadata !{i32 %key}, i64 0, metadata !188), !dbg !940
  call void @llvm.dbg.value(metadata !{i32 %bRead}, i64 0, metadata !189), !dbg !940
  call void @llvm.dbg.value(metadata !{i8* %src}, i64 0, metadata !190), !dbg !940
  call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !191), !dbg !940
  %0 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0, !dbg !941
  call void @llvm.lifetime.start(i64 4096, i8* %0) #2, !dbg !941
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %buf}, metadata !192), !dbg !941
  %call = call i32 @gmx_fio_getftp(i32 %fp) #6, !dbg !942
  %cmp = icmp eq i32 %call, 27, !dbg !942
  br i1 %cmp, label %if.then, label %if.end54, !dbg !942

if.then:                                          ; preds = %entry
  %tobool = icmp eq i32 %bRead, 0, !dbg !943
  br i1 %tobool, label %cond.false, label %if.else, !dbg !943

cond.false:                                       ; preds = %if.then
  %1 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !945, !tbaa !947
  %idxprom4 = sext i32 %key to i64, !dbg !945
  %arrayidx5 = getelementptr inbounds [7 x i8*]* @itemstr, i64 0, i64 %idxprom4, !dbg !945
  %2 = load i8** %arrayidx5, align 8, !dbg !945, !tbaa !947
  %call6 = call i32 %1(i8* %2, i32 1, i32 7, i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 88) #6, !dbg !945
  %call7 = call i32 @gmx_fio_getdebug(i32 %fp) #6, !dbg !950
  call void @llvm.dbg.value(metadata !{i32 %call7}, i64 0, metadata !196), !dbg !950
  call void @gmx_fio_setdebug(i32 %fp, i32 0) #6, !dbg !951
  %3 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !952, !tbaa !947
  %arrayidx15 = getelementptr inbounds [7 x i8*]* @comment_str, i64 0, i64 %idxprom4, !dbg !952
  %4 = load i8** %arrayidx15, align 8, !dbg !952, !tbaa !947
  %call16 = call i32 %3(i8* %4, i32 1, i32 7, i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 91) #6, !dbg !952
  call void @gmx_fio_setdebug(i32 %fp, i32 %call7) #6, !dbg !953
  br label %if.end54, !dbg !954

if.else:                                          ; preds = %if.then
  %call19 = call i32 @gmx_fio_getdebug(i32 %fp) #6, !dbg !955
  %tobool20 = icmp eq i32 %call19, 0, !dbg !955
  br i1 %tobool20, label %if.else.do.body.preheader_crit_edge, label %if.then21, !dbg !955

if.else.do.body.preheader_crit_edge:              ; preds = %if.else
  %idxprom34.pre = sext i32 %key to i64, !dbg !957
  %arrayidx35.pre = getelementptr inbounds [7 x i8*]* @itemstr, i64 0, i64 %idxprom34.pre, !dbg !957
  br label %do.body.preheader, !dbg !955

if.then21:                                        ; preds = %if.else
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !958, !tbaa !947
  %idxprom22 = sext i32 %key to i64, !dbg !958
  %arrayidx23 = getelementptr inbounds [7 x i8*]* @itemstr, i64 0, i64 %idxprom22, !dbg !958
  %6 = load i8** %arrayidx23, align 8, !dbg !958, !tbaa !947
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([32 x i8]* @.str3, i64 0, i64 0), i8* %6, i8* %src, i32 %line) #6, !dbg !958
  br label %do.body.preheader, !dbg !958

do.body.preheader:                                ; preds = %if.else.do.body.preheader_crit_edge, %if.then21
  %arrayidx35.pre-phi = phi i8** [ %arrayidx35.pre, %if.else.do.body.preheader_crit_edge ], [ %arrayidx23, %if.then21 ], !dbg !957
  br label %do.cond, !dbg !959

do.cond:                                          ; preds = %do.body.preheader, %do.cond
  %7 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !959, !tbaa !947
  %call27 = call i32 %7(i8* %0, i32 1, i32 7, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 100) #6, !dbg !959
  %8 = load i8** %arrayidx35.pre-phi, align 8, !dbg !957, !tbaa !947
  %call36 = call i32 @strcasecmp(i8* %0, i8* %8) #7, !dbg !957
  %cmp37 = icmp eq i32 %call36, 0, !dbg !957
  br i1 %cmp37, label %if.else46, label %do.cond, !dbg !957

if.else46:                                        ; preds = %do.cond
  %call47 = call i32 @gmx_fio_getdebug(i32 %fp) #6, !dbg !961
  %tobool48 = icmp eq i32 %call47, 0, !dbg !961
  br i1 %tobool48, label %if.end54, label %if.then49, !dbg !961

if.then49:                                        ; preds = %if.else46
  %9 = load %struct._IO_FILE** @stderr, align 8, !dbg !962, !tbaa !947
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %9), !dbg !962
  br label %if.end54, !dbg !962

if.end54:                                         ; preds = %if.else46, %cond.false, %if.then49, %entry
  call void @llvm.lifetime.end(i64 4096, i8* %0) #2, !dbg !963
  ret void, !dbg !963
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare i32 @gmx_fio_getftp(i32) #3

; Function Attrs: optsize
declare i32 @gmx_fio_getdebug(i32) #3

; Function Attrs: optsize
declare void @gmx_fio_setdebug(i32, i32) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind optsize readonly
declare i32 @strcasecmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @do_iparams(i32 %ftype, %union.t_iparams* %iparams, i32 %bRead) #0 {
entry:
  %buf = alloca [128 x i8], align 16
  call void @llvm.dbg.value(metadata !{i32 %ftype}, i64 0, metadata !318), !dbg !964
  call void @llvm.dbg.value(metadata !{%union.t_iparams* %iparams}, i64 0, metadata !319), !dbg !964
  call void @llvm.dbg.value(metadata !{i32 %bRead}, i64 0, metadata !320), !dbg !964
  %tobool = icmp ne i32 %bRead, 0, !dbg !965
  br i1 %tobool, label %if.end, label %if.then, !dbg !965

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %ftype to i64, !dbg !966
  %name = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %idxprom, i32 0, !dbg !966
  %0 = load i8** %name, align 8, !dbg !966, !tbaa !947
  call void @set_comment(i8* %0) #6, !dbg !966
  br label %if.end, !dbg !966

if.end:                                           ; preds = %if.then, %entry
  switch i32 %ftype, label %sw.default [
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 5, label %sw.bb
    i32 10, label %sw.bb
    i32 25, label %sw.bb
    i32 26, label %sw.bb
    i32 14, label %sw.bb1
    i32 2, label %sw.bb26
    i32 3, label %sw.bb56
    i32 4, label %sw.epilog
    i32 19, label %sw.bb87
    i32 13, label %sw.bb147
    i32 11, label %sw.bb167
    i32 8, label %sw.bb207
    i32 21, label %sw.bb257
    i32 23, label %sw.bb317
    i32 20, label %sw.bb380
    i32 9, label %for.cond.preheader
    i32 27, label %sw.bb423
    i32 28, label %sw.bb423
    i32 29, label %sw.bb443
    i32 30, label %sw.bb463
    i32 31, label %sw.bb474
    i32 32, label %sw.bb474
    i32 33, label %sw.bb474
    i32 34, label %sw.bb497
    i32 35, label %sw.bb497
  ], !dbg !967

for.cond.preheader:                               ; preds = %if.end
  %1 = getelementptr inbounds [128 x i8]* %buf, i64 0, i64 0, !dbg !968
  %rbc = bitcast %union.t_iparams* %iparams to [6 x float]*, !dbg !968
  br label %for.body, !dbg !969

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  call void @llvm.dbg.value(metadata !{%union.t_iparams* %iparams}, i64 0, metadata !970) #2, !dbg !972
  call void @llvm.dbg.value(metadata !{i32 %bRead}, i64 0, metadata !973) #2, !dbg !972
  %tobool.i = icmp eq i32 %bRead, 0, !dbg !974
  br i1 %tobool.i, label %cond.false28.i, label %cond.true25.i, !dbg !974

cond.true25.i:                                    ; preds = %sw.bb
  %2 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !974, !tbaa !947
  %3 = bitcast %union.t_iparams* %iparams to i8*, !dbg !974
  %call.i = call i32 %2(i8* %3, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str231, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 368) #6, !dbg !974
  %4 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !975, !tbaa !947
  %5 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !975
  %6 = bitcast float* %5 to i8*, !dbg !975
  %call7.i = call i32 %4(i8* %6, i32 1, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str232, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 369) #6, !dbg !975
  %7 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !976, !tbaa !947
  %8 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !976
  %9 = bitcast float* %8 to i8*, !dbg !976
  %call17.i = call i32 %7(i8* %9, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str233, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 370) #6, !dbg !976
  %10 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !977, !tbaa !947
  %11 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3, !dbg !977
  %12 = bitcast float* %11 to i8*, !dbg !977
  %call27.i = call i32 %10(i8* %12, i32 1, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str234, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 371) #6, !dbg !977
  br label %sw.epilog, !dbg !977

cond.false28.i:                                   ; preds = %sw.bb
  %13 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !974, !tbaa !947
  %14 = bitcast %union.t_iparams* %iparams to i8*, !dbg !974
  %call3.i = call i32 %13(i8* %14, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str231, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 368) #6, !dbg !974
  %15 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !975, !tbaa !947
  %16 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !975
  %17 = bitcast float* %16 to i8*, !dbg !975
  %call11.i = call i32 %15(i8* %17, i32 1, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str232, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 369) #6, !dbg !975
  %18 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !976, !tbaa !947
  %19 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !976
  %20 = bitcast float* %19 to i8*, !dbg !976
  %call21.i = call i32 %18(i8* %20, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str233, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 370) #6, !dbg !976
  %21 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !977, !tbaa !947
  %22 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3, !dbg !977
  %23 = bitcast float* %22 to i8*, !dbg !977
  %call31.i = call i32 %21(i8* %23, i32 1, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str234, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 371) #6, !dbg !977
  br label %sw.epilog, !dbg !977

sw.bb1:                                           ; preds = %if.end
  br i1 %tobool, label %cond.true17, label %cond.false20, !dbg !978

cond.true17:                                      ; preds = %sw.bb1
  %24 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !978, !tbaa !947
  %25 = bitcast %union.t_iparams* %iparams to i8*, !dbg !978
  %call = call i32 %24(i8* %25, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 393) #6, !dbg !978
  %26 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !979, !tbaa !947
  %27 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !979
  %28 = bitcast float* %27 to i8*, !dbg !979
  %call9 = call i32 %26(i8* %28, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 394) #6, !dbg !979
  %29 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !980, !tbaa !947
  %30 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !980
  %31 = bitcast float* %30 to i8*, !dbg !980
  %call19 = call i32 %29(i8* %31, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 395) #6, !dbg !980
  br label %if.end536, !dbg !980

cond.false20:                                     ; preds = %sw.bb1
  %32 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !978, !tbaa !947
  %33 = bitcast %union.t_iparams* %iparams to i8*, !dbg !978
  %call5 = call i32 %32(i8* %33, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 393) #6, !dbg !978
  %34 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !979, !tbaa !947
  %35 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !979
  %36 = bitcast float* %35 to i8*, !dbg !979
  %call13 = call i32 %34(i8* %36, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 394) #6, !dbg !979
  %37 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !980, !tbaa !947
  %38 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !980
  %39 = bitcast float* %38 to i8*, !dbg !980
  %call23 = call i32 %37(i8* %39, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 395) #6, !dbg !980
  br label %if.then535, !dbg !980

sw.bb26:                                          ; preds = %if.end
  br i1 %tobool, label %cond.true47, label %cond.false50, !dbg !981

cond.true47:                                      ; preds = %sw.bb26
  %40 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !981, !tbaa !947
  %41 = bitcast %union.t_iparams* %iparams to i8*, !dbg !981
  %call29 = call i32 %40(i8* %41, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 398) #6, !dbg !981
  %42 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !982, !tbaa !947
  %43 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !982
  %44 = bitcast float* %43 to i8*, !dbg !982
  %call39 = call i32 %42(i8* %44, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 399) #6, !dbg !982
  %45 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !983, !tbaa !947
  %46 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !983
  %47 = bitcast float* %46 to i8*, !dbg !983
  %call49 = call i32 %45(i8* %47, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 400) #6, !dbg !983
  br label %if.end536, !dbg !983

cond.false50:                                     ; preds = %sw.bb26
  %48 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !981, !tbaa !947
  %49 = bitcast %union.t_iparams* %iparams to i8*, !dbg !981
  %call33 = call i32 %48(i8* %49, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 398) #6, !dbg !981
  %50 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !982, !tbaa !947
  %51 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !982
  %52 = bitcast float* %51 to i8*, !dbg !982
  %call43 = call i32 %50(i8* %52, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 399) #6, !dbg !982
  %53 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !983, !tbaa !947
  %54 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !983
  %55 = bitcast float* %54 to i8*, !dbg !983
  %call53 = call i32 %53(i8* %55, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 400) #6, !dbg !983
  br label %if.then535, !dbg !983

sw.bb56:                                          ; preds = %if.end
  br i1 %tobool, label %cond.true78, label %cond.false81, !dbg !984

cond.true78:                                      ; preds = %sw.bb56
  %56 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !984, !tbaa !947
  %57 = bitcast %union.t_iparams* %iparams to i8*, !dbg !984
  %call60 = call i32 %56(i8* %57, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 403) #6, !dbg !984
  %58 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !985, !tbaa !947
  %59 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !985
  %60 = bitcast float* %59 to i8*, !dbg !985
  %call70 = call i32 %58(i8* %60, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 404) #6, !dbg !985
  %61 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !986, !tbaa !947
  %62 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !986
  %63 = bitcast float* %62 to i8*, !dbg !986
  %call80 = call i32 %61(i8* %63, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 405) #6, !dbg !986
  br label %if.end536, !dbg !986

cond.false81:                                     ; preds = %sw.bb56
  %64 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !984, !tbaa !947
  %65 = bitcast %union.t_iparams* %iparams to i8*, !dbg !984
  %call64 = call i32 %64(i8* %65, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 403) #6, !dbg !984
  %66 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !985, !tbaa !947
  %67 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !985
  %68 = bitcast float* %67 to i8*, !dbg !985
  %call74 = call i32 %66(i8* %68, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 404) #6, !dbg !985
  %69 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !986, !tbaa !947
  %70 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !986
  %71 = bitcast float* %70 to i8*, !dbg !986
  %call84 = call i32 %69(i8* %71, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 405) #6, !dbg !986
  br label %if.then535, !dbg !986

sw.bb87:                                          ; preds = %if.end
  br i1 %tobool, label %cond.true138, label %cond.false141, !dbg !987

cond.true138:                                     ; preds = %sw.bb87
  %72 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !987, !tbaa !947
  %73 = bitcast %union.t_iparams* %iparams to i8*, !dbg !987
  %call90 = call i32 %72(i8* %73, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 410) #6, !dbg !987
  %74 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !988, !tbaa !947
  %ky = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !988
  %75 = bitcast float* %ky to i8*, !dbg !988
  %call100 = call i32 %74(i8* %75, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 411) #6, !dbg !988
  %76 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !989, !tbaa !947
  %kz = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !989
  %77 = bitcast float* %kz to i8*, !dbg !989
  %call110 = call i32 %76(i8* %77, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 412) #6, !dbg !989
  %78 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !990, !tbaa !947
  %rOH = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3, !dbg !990
  %79 = bitcast float* %rOH to i8*, !dbg !990
  %call120 = call i32 %78(i8* %79, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 413) #6, !dbg !990
  %80 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !991, !tbaa !947
  %rHH = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4, !dbg !991
  %81 = bitcast float* %rHH to i8*, !dbg !991
  %call130 = call i32 %80(i8* %81, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 414) #6, !dbg !991
  %82 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !992, !tbaa !947
  %rOD = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5, !dbg !992
  %83 = bitcast float* %rOD to i8*, !dbg !992
  %call140 = call i32 %82(i8* %83, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 415) #6, !dbg !992
  br label %if.end536, !dbg !992

cond.false141:                                    ; preds = %sw.bb87
  %84 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !987, !tbaa !947
  %85 = bitcast %union.t_iparams* %iparams to i8*, !dbg !987
  %call94 = call i32 %84(i8* %85, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 410) #6, !dbg !987
  %86 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !988, !tbaa !947
  %ky103 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !988
  %87 = bitcast float* %ky103 to i8*, !dbg !988
  %call104 = call i32 %86(i8* %87, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 411) #6, !dbg !988
  %88 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !989, !tbaa !947
  %kz113 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !989
  %89 = bitcast float* %kz113 to i8*, !dbg !989
  %call114 = call i32 %88(i8* %89, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 412) #6, !dbg !989
  %90 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !990, !tbaa !947
  %rOH123 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3, !dbg !990
  %91 = bitcast float* %rOH123 to i8*, !dbg !990
  %call124 = call i32 %90(i8* %91, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 413) #6, !dbg !990
  %92 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !991, !tbaa !947
  %rHH133 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4, !dbg !991
  %93 = bitcast float* %rHH133 to i8*, !dbg !991
  %call134 = call i32 %92(i8* %93, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 414) #6, !dbg !991
  %94 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !992, !tbaa !947
  %rOD143 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5, !dbg !992
  %95 = bitcast float* %rOD143 to i8*, !dbg !992
  %call144 = call i32 %94(i8* %95, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 415) #6, !dbg !992
  br label %if.then535, !dbg !992

sw.bb147:                                         ; preds = %if.end
  br i1 %tobool, label %cond.true158, label %cond.false161, !dbg !993

cond.true158:                                     ; preds = %sw.bb147
  %96 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !993, !tbaa !947
  %97 = bitcast %union.t_iparams* %iparams to i8*, !dbg !993
  %call150 = call i32 %96(i8* %97, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 418) #6, !dbg !993
  %98 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !994, !tbaa !947
  %99 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !994
  %100 = bitcast float* %99 to i8*, !dbg !994
  %call160 = call i32 %98(i8* %100, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 419) #6, !dbg !994
  br label %if.end536, !dbg !994

cond.false161:                                    ; preds = %sw.bb147
  %101 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !993, !tbaa !947
  %102 = bitcast %union.t_iparams* %iparams to i8*, !dbg !993
  %call154 = call i32 %101(i8* %102, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 418) #6, !dbg !993
  %103 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !994, !tbaa !947
  %104 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !994
  %105 = bitcast float* %104 to i8*, !dbg !994
  %call164 = call i32 %103(i8* %105, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 419) #6, !dbg !994
  br label %if.then535, !dbg !994

sw.bb167:                                         ; preds = %if.end
  br i1 %tobool, label %cond.true198, label %cond.false201, !dbg !995

cond.true198:                                     ; preds = %sw.bb167
  %106 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !995, !tbaa !947
  %107 = bitcast %union.t_iparams* %iparams to i8*, !dbg !995
  %call170 = call i32 %106(i8* %107, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 422) #6, !dbg !995
  %108 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !996, !tbaa !947
  %109 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !996
  %110 = bitcast float* %109 to i8*, !dbg !996
  %call180 = call i32 %108(i8* %110, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 423) #6, !dbg !996
  %111 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !997, !tbaa !947
  %112 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !997
  %113 = bitcast float* %112 to i8*, !dbg !997
  %call190 = call i32 %111(i8* %113, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 424) #6, !dbg !997
  %114 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !998, !tbaa !947
  %115 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3, !dbg !998
  %116 = bitcast float* %115 to i8*, !dbg !998
  %call200 = call i32 %114(i8* %116, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 425) #6, !dbg !998
  br label %if.end536, !dbg !998

cond.false201:                                    ; preds = %sw.bb167
  %117 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !995, !tbaa !947
  %118 = bitcast %union.t_iparams* %iparams to i8*, !dbg !995
  %call174 = call i32 %117(i8* %118, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 422) #6, !dbg !995
  %119 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !996, !tbaa !947
  %120 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !996
  %121 = bitcast float* %120 to i8*, !dbg !996
  %call184 = call i32 %119(i8* %121, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 423) #6, !dbg !996
  %122 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !997, !tbaa !947
  %123 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !997
  %124 = bitcast float* %123 to i8*, !dbg !997
  %call194 = call i32 %122(i8* %124, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 424) #6, !dbg !997
  %125 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !998, !tbaa !947
  %126 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3, !dbg !998
  %127 = bitcast float* %126 to i8*, !dbg !998
  %call204 = call i32 %125(i8* %127, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 425) #6, !dbg !998
  br label %if.then535, !dbg !998

sw.bb207:                                         ; preds = %if.end
  br i1 %tobool, label %cond.true248, label %cond.false251, !dbg !999

cond.true248:                                     ; preds = %sw.bb207
  %128 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !999, !tbaa !947
  %129 = bitcast %union.t_iparams* %iparams to i8*, !dbg !999
  %call210 = call i32 %128(i8* %129, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 428) #6, !dbg !999
  %130 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1000, !tbaa !947
  %131 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1000
  %132 = bitcast float* %131 to i8*, !dbg !1000
  %call220 = call i32 %130(i8* %132, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 429) #6, !dbg !1000
  %133 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1001, !tbaa !947
  %134 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3, !dbg !1001
  %135 = bitcast float* %134 to i8*, !dbg !1001
  %call230 = call i32 %133(i8* %135, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 430) #6, !dbg !1001
  %136 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1002, !tbaa !947
  %137 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4, !dbg !1002
  %138 = bitcast float* %137 to i8*, !dbg !1002
  %call240 = call i32 %136(i8* %138, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 431) #6, !dbg !1002
  %139 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1003, !tbaa !947
  %mult = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !1003
  %140 = bitcast float* %mult to i8*, !dbg !1003
  %call250 = call i32 %139(i8* %140, i32 1, i32 1, i8* getelementptr inbounds ([20 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 432) #6, !dbg !1003
  br label %if.end536, !dbg !1003

cond.false251:                                    ; preds = %sw.bb207
  %141 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !999, !tbaa !947
  %142 = bitcast %union.t_iparams* %iparams to i8*, !dbg !999
  %call214 = call i32 %141(i8* %142, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 428) #6, !dbg !999
  %143 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1000, !tbaa !947
  %144 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1000
  %145 = bitcast float* %144 to i8*, !dbg !1000
  %call224 = call i32 %143(i8* %145, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 429) #6, !dbg !1000
  %146 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1001, !tbaa !947
  %147 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3, !dbg !1001
  %148 = bitcast float* %147 to i8*, !dbg !1001
  %call234 = call i32 %146(i8* %148, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 430) #6, !dbg !1001
  %149 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1002, !tbaa !947
  %150 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4, !dbg !1002
  %151 = bitcast float* %150 to i8*, !dbg !1002
  %call244 = call i32 %149(i8* %151, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 431) #6, !dbg !1002
  %152 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1003, !tbaa !947
  %mult253 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !1003
  %153 = bitcast float* %mult253 to i8*, !dbg !1003
  %call254 = call i32 %152(i8* %153, i32 1, i32 1, i8* getelementptr inbounds ([20 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 432) #6, !dbg !1003
  br label %if.then535, !dbg !1003

sw.bb257:                                         ; preds = %if.end
  br i1 %tobool, label %cond.true308, label %cond.false311, !dbg !1004

cond.true308:                                     ; preds = %sw.bb257
  %154 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1004, !tbaa !947
  %label = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5, !dbg !1004
  %155 = bitcast float* %label to i8*, !dbg !1004
  %call260 = call i32 %154(i8* %155, i32 1, i32 1, i8* getelementptr inbounds ([22 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 435) #6, !dbg !1004
  %156 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1005, !tbaa !947
  %type = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4, !dbg !1005
  %157 = bitcast float* %type to i8*, !dbg !1005
  %call270 = call i32 %156(i8* %157, i32 1, i32 1, i8* getelementptr inbounds ([21 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 436) #6, !dbg !1005
  %158 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1006, !tbaa !947
  %159 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1006
  %call280 = call i32 %158(i8* %159, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 437) #6, !dbg !1006
  %160 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1007, !tbaa !947
  %161 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1007
  %162 = bitcast float* %161 to i8*, !dbg !1007
  %call290 = call i32 %160(i8* %162, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 438) #6, !dbg !1007
  %163 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1008, !tbaa !947
  %164 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !1008
  %165 = bitcast float* %164 to i8*, !dbg !1008
  %call300 = call i32 %163(i8* %165, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 439) #6, !dbg !1008
  %166 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1009, !tbaa !947
  %167 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3, !dbg !1009
  %168 = bitcast float* %167 to i8*, !dbg !1009
  %call310 = call i32 %166(i8* %168, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 440) #6, !dbg !1009
  br label %if.end536, !dbg !1009

cond.false311:                                    ; preds = %sw.bb257
  %169 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1004, !tbaa !947
  %label263 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5, !dbg !1004
  %170 = bitcast float* %label263 to i8*, !dbg !1004
  %call264 = call i32 %169(i8* %170, i32 1, i32 1, i8* getelementptr inbounds ([22 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 435) #6, !dbg !1004
  %171 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1005, !tbaa !947
  %type273 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4, !dbg !1005
  %172 = bitcast float* %type273 to i8*, !dbg !1005
  %call274 = call i32 %171(i8* %172, i32 1, i32 1, i8* getelementptr inbounds ([21 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 436) #6, !dbg !1005
  %173 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1006, !tbaa !947
  %174 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1006
  %call284 = call i32 %173(i8* %174, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 437) #6, !dbg !1006
  %175 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1007, !tbaa !947
  %176 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1007
  %177 = bitcast float* %176 to i8*, !dbg !1007
  %call294 = call i32 %175(i8* %177, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 438) #6, !dbg !1007
  %178 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1008, !tbaa !947
  %179 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !1008
  %180 = bitcast float* %179 to i8*, !dbg !1008
  %call304 = call i32 %178(i8* %180, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 439) #6, !dbg !1008
  %181 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1009, !tbaa !947
  %182 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3, !dbg !1009
  %183 = bitcast float* %182 to i8*, !dbg !1009
  %call314 = call i32 %181(i8* %183, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 440) #6, !dbg !1009
  br label %if.then535, !dbg !1009

sw.bb317:                                         ; preds = %if.end
  br i1 %tobool, label %cond.true370, label %cond.false374, !dbg !1010

cond.true370:                                     ; preds = %sw.bb317
  %184 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1010, !tbaa !947
  %185 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1010
  %call320 = call i32 %184(i8* %185, i32 1, i32 1, i8* getelementptr inbounds ([19 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 443) #6, !dbg !1010
  %186 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1011, !tbaa !947
  %label330 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !1011
  %187 = bitcast float* %label330 to i8*, !dbg !1011
  %call331 = call i32 %186(i8* %187, i32 1, i32 1, i8* getelementptr inbounds ([22 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 444) #6, !dbg !1011
  %188 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1012, !tbaa !947
  %pow = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1012
  %189 = bitcast float* %pow to i8*, !dbg !1012
  %call341 = call i32 %188(i8* %189, i32 1, i32 1, i8* getelementptr inbounds ([20 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 445) #6, !dbg !1012
  %190 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1013, !tbaa !947
  %191 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3, !dbg !1013
  %192 = bitcast float* %191 to i8*, !dbg !1013
  %call352 = call i32 %190(i8* %192, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 446) #6, !dbg !1013
  %193 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1014, !tbaa !947
  %194 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4, !dbg !1014
  %195 = bitcast float* %194 to i8*, !dbg !1014
  %call362 = call i32 %193(i8* %195, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 447) #6, !dbg !1014
  %196 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1015, !tbaa !947
  %197 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5, !dbg !1015
  %198 = bitcast float* %197 to i8*, !dbg !1015
  %call373 = call i32 %196(i8* %198, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 448) #6, !dbg !1015
  br label %if.end536, !dbg !1015

cond.false374:                                    ; preds = %sw.bb317
  %199 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1010, !tbaa !947
  %200 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1010
  %call324 = call i32 %199(i8* %200, i32 1, i32 1, i8* getelementptr inbounds ([19 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 443) #6, !dbg !1010
  %201 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1011, !tbaa !947
  %label334 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !1011
  %202 = bitcast float* %label334 to i8*, !dbg !1011
  %call335 = call i32 %201(i8* %202, i32 1, i32 1, i8* getelementptr inbounds ([22 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 444) #6, !dbg !1011
  %203 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1012, !tbaa !947
  %pow344 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1012
  %204 = bitcast float* %pow344 to i8*, !dbg !1012
  %call345 = call i32 %203(i8* %204, i32 1, i32 1, i8* getelementptr inbounds ([20 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 445) #6, !dbg !1012
  %205 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1013, !tbaa !947
  %206 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3, !dbg !1013
  %207 = bitcast float* %206 to i8*, !dbg !1013
  %call356 = call i32 %205(i8* %207, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 446) #6, !dbg !1013
  %208 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1014, !tbaa !947
  %209 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4, !dbg !1014
  %210 = bitcast float* %209 to i8*, !dbg !1014
  %call366 = call i32 %208(i8* %210, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 447) #6, !dbg !1014
  %211 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1015, !tbaa !947
  %212 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5, !dbg !1015
  %213 = bitcast float* %212 to i8*, !dbg !1015
  %call377 = call i32 %211(i8* %213, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 448) #6, !dbg !1015
  br label %if.then535, !dbg !1015

sw.bb380:                                         ; preds = %if.end
  br i1 %tobool, label %cond.true392, label %cond.false396, !dbg !1016

cond.true392:                                     ; preds = %sw.bb380
  %214 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1016, !tbaa !947
  %215 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1016
  %call383 = call i32 %214(i8* %215, i32 1, i32 4, i8* getelementptr inbounds ([21 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 451) #6, !dbg !1016
  %216 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1017, !tbaa !947
  %fc = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3, !dbg !1017
  %217 = bitcast float* %fc to i8*, !dbg !1017
  %call395 = call i32 %216(i8* %217, i32 1, i32 4, i8* getelementptr inbounds ([19 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 452) #6, !dbg !1017
  br label %if.end536, !dbg !1017

cond.false396:                                    ; preds = %sw.bb380
  %218 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1016, !tbaa !947
  %219 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1016
  %call388 = call i32 %218(i8* %219, i32 1, i32 4, i8* getelementptr inbounds ([21 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 451) #6, !dbg !1016
  %220 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1017, !tbaa !947
  %fc398 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3, !dbg !1017
  %221 = bitcast float* %fc398 to i8*, !dbg !1017
  %call400 = call i32 %220(i8* %221, i32 1, i32 4, i8* getelementptr inbounds ([19 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 452) #6, !dbg !1017
  br label %if.then535, !dbg !1017

for.body:                                         ; preds = %land.end, %for.cond.preheader
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %land.end ]
  %bDum.0702 = phi i32 [ 1, %for.cond.preheader ], [ %land.ext, %land.end ]
  call void @llvm.lifetime.start(i64 128, i8* %1) #2, !dbg !968
  call void @llvm.dbg.declare(metadata !{[128 x i8]* %buf}, metadata !323), !dbg !968
  %222 = trunc i64 %indvars.iv to i32, !dbg !968
  %call405 = call i32 (i8*, i8*, ...)* @sprintf(i8* %1, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str48, i64 0, i64 0), i32 %222) #6, !dbg !968
  %tobool406 = icmp eq i32 %bDum.0702, 0, !dbg !968
  br i1 %tobool406, label %land.end, label %land.rhs, !dbg !968

land.rhs:                                         ; preds = %for.body
  br i1 %tobool, label %cond.true408, label %cond.false413, !dbg !968

cond.true408:                                     ; preds = %land.rhs
  %223 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !968, !tbaa !947
  %arrayidx410 = getelementptr inbounds [6 x float]* %rbc, i64 0, i64 %indvars.iv, !dbg !968
  %224 = bitcast float* %arrayidx410 to i8*, !dbg !968
  %call412 = call i32 %223(i8* %224, i32 1, i32 0, i8* %1, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 455) #6, !dbg !968
  br label %cond.end420, !dbg !968

cond.false413:                                    ; preds = %land.rhs
  %225 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !968, !tbaa !947
  %arrayidx417 = getelementptr inbounds [6 x float]* %rbc, i64 0, i64 %indvars.iv, !dbg !968
  %226 = bitcast float* %arrayidx417 to i8*, !dbg !968
  %call419 = call i32 %225(i8* %226, i32 1, i32 0, i8* %1, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 455) #6, !dbg !968
  br label %cond.end420, !dbg !968

cond.end420:                                      ; preds = %cond.false413, %cond.true408
  %cond421 = phi i32 [ %call412, %cond.true408 ], [ %call419, %cond.false413 ], !dbg !968
  %tobool422 = icmp ne i32 %cond421, 0, !dbg !968
  br label %land.end

land.end:                                         ; preds = %for.body, %cond.end420
  %227 = phi i1 [ false, %for.body ], [ %tobool422, %cond.end420 ]
  %land.ext = zext i1 %227 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext}, i64 0, metadata !322), !dbg !1018
  call void @llvm.lifetime.end(i64 128, i8* %1) #2, !dbg !968
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !969
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !969
  %exitcond = icmp eq i32 %lftr.wideiv, 6, !dbg !969
  br i1 %exitcond, label %sw.epilog, label %for.body, !dbg !969

sw.bb423:                                         ; preds = %if.end, %if.end
  br i1 %tobool, label %cond.true434, label %cond.false437, !dbg !1019

cond.true434:                                     ; preds = %sw.bb423
  %228 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1019, !tbaa !947
  %229 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1019
  %call426 = call i32 %228(i8* %229, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 459) #6, !dbg !1019
  %230 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1020, !tbaa !947
  %231 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1020
  %232 = bitcast float* %231 to i8*, !dbg !1020
  %call436 = call i32 %230(i8* %232, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 460) #6, !dbg !1020
  br label %if.end536, !dbg !1020

cond.false437:                                    ; preds = %sw.bb423
  %233 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1019, !tbaa !947
  %234 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1019
  %call430 = call i32 %233(i8* %234, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 459) #6, !dbg !1019
  %235 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1020, !tbaa !947
  %236 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1020
  %237 = bitcast float* %236 to i8*, !dbg !1020
  %call440 = call i32 %235(i8* %237, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 460) #6, !dbg !1020
  br label %if.then535, !dbg !1020

sw.bb443:                                         ; preds = %if.end
  br i1 %tobool, label %cond.true454, label %cond.false457, !dbg !1021

cond.true454:                                     ; preds = %sw.bb443
  %238 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1021, !tbaa !947
  %239 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1021
  %call446 = call i32 %238(i8* %239, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 463) #6, !dbg !1021
  %240 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1022, !tbaa !947
  %241 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1022
  %242 = bitcast float* %241 to i8*, !dbg !1022
  %call456 = call i32 %240(i8* %242, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str52, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 464) #6, !dbg !1022
  br label %if.end536, !dbg !1022

cond.false457:                                    ; preds = %sw.bb443
  %243 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1021, !tbaa !947
  %244 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1021
  %call450 = call i32 %243(i8* %244, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 463) #6, !dbg !1021
  %245 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1022, !tbaa !947
  %246 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1022
  %247 = bitcast float* %246 to i8*, !dbg !1022
  %call460 = call i32 %245(i8* %247, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str52, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 464) #6, !dbg !1022
  br label %if.then535, !dbg !1022

sw.bb463:                                         ; preds = %if.end
  br i1 %tobool, label %cond.true465, label %cond.false468, !dbg !1023

cond.true465:                                     ; preds = %sw.bb463
  %248 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1023, !tbaa !947
  %249 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1023
  %call467 = call i32 %248(i8* %249, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 467) #6, !dbg !1023
  br label %if.end536, !dbg !1023

cond.false468:                                    ; preds = %sw.bb463
  %250 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1023, !tbaa !947
  %251 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1023
  %call471 = call i32 %250(i8* %251, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 467) #6, !dbg !1023
  br label %if.then535, !dbg !1023

sw.bb474:                                         ; preds = %if.end, %if.end, %if.end
  br i1 %tobool, label %cond.true487, label %cond.false491, !dbg !1024

cond.true487:                                     ; preds = %sw.bb474
  %252 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1024, !tbaa !947
  %253 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1024
  %call479 = call i32 %252(i8* %253, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 472) #6, !dbg !1024
  %254 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1025, !tbaa !947
  %255 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1025
  %256 = bitcast float* %255 to i8*, !dbg !1025
  %call490 = call i32 %254(i8* %256, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 473) #6, !dbg !1025
  br label %if.end536, !dbg !1025

cond.false491:                                    ; preds = %sw.bb474
  %257 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1024, !tbaa !947
  %258 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1024
  %call483 = call i32 %257(i8* %258, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 472) #6, !dbg !1024
  %259 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1025, !tbaa !947
  %260 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1025
  %261 = bitcast float* %260 to i8*, !dbg !1025
  %call494 = call i32 %259(i8* %261, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 473) #6, !dbg !1025
  br label %if.then535, !dbg !1025

sw.bb497:                                         ; preds = %if.end, %if.end
  br i1 %tobool, label %cond.true521, label %cond.false525, !dbg !1026

cond.true521:                                     ; preds = %sw.bb497
  %262 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1026, !tbaa !947
  %263 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1026
  %call502 = call i32 %262(i8* %263, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 477) #6, !dbg !1026
  %264 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1027, !tbaa !947
  %265 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1027
  %266 = bitcast float* %265 to i8*, !dbg !1027
  %call513 = call i32 %264(i8* %266, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 478) #6, !dbg !1027
  %267 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1028, !tbaa !947
  %268 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !1028
  %269 = bitcast float* %268 to i8*, !dbg !1028
  %call524 = call i32 %267(i8* %269, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 479) #6, !dbg !1028
  br label %if.end536, !dbg !1028

cond.false525:                                    ; preds = %sw.bb497
  %270 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1026, !tbaa !947
  %271 = bitcast %union.t_iparams* %iparams to i8*, !dbg !1026
  %call506 = call i32 %270(i8* %271, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 477) #6, !dbg !1026
  %272 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1027, !tbaa !947
  %273 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1, !dbg !1027
  %274 = bitcast float* %273 to i8*, !dbg !1027
  %call517 = call i32 %272(i8* %274, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 478) #6, !dbg !1027
  %275 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1028, !tbaa !947
  %276 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2, !dbg !1028
  %277 = bitcast float* %276 to i8*, !dbg !1028
  %call528 = call i32 %275(i8* %277, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 479) #6, !dbg !1028
  br label %if.then535, !dbg !1028

sw.default:                                       ; preds = %if.end
  %idxprom531 = sext i32 %ftype to i64, !dbg !1029
  %name533 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %idxprom531, i32 0, !dbg !1029
  %278 = load i8** %name533, align 8, !dbg !1029, !tbaa !947
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([44 x i8]* @.str56, i64 0, i64 0), i32 %ftype, i8* %278, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 483) #6, !dbg !1029
  br label %sw.epilog, !dbg !1030

sw.epilog:                                        ; preds = %land.end, %cond.false28.i, %cond.true25.i, %sw.default, %if.end
  br i1 %tobool, label %if.end536, label %if.then535, !dbg !1031

if.then535:                                       ; preds = %cond.false20, %cond.false50, %cond.false81, %cond.false141, %cond.false161, %cond.false201, %cond.false251, %cond.false311, %cond.false374, %cond.false396, %cond.false437, %cond.false457, %cond.false468, %cond.false491, %cond.false525, %sw.epilog
  call void @unset_comment() #6, !dbg !1032
  br label %if.end536, !dbg !1032

if.end536:                                        ; preds = %cond.true17, %cond.true47, %cond.true78, %cond.true138, %cond.true158, %cond.true198, %cond.true248, %cond.true308, %cond.true370, %cond.true392, %cond.true434, %cond.true454, %cond.true465, %cond.true487, %cond.true521, %if.then535, %sw.epilog
  ret void, !dbg !1033
}

; Function Attrs: optsize
declare void @set_comment(i8*) #3

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #4

; Function Attrs: optsize
declare void @unset_comment() #3

; Function Attrs: nounwind optsize uwtable
define i32 @open_tpx(i8* %fn, i8* %mode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !335), !dbg !1034
  tail call void @llvm.dbg.value(metadata !{i8* %mode}, i64 0, metadata !336), !dbg !1034
  %call = tail call i32 @gmx_fio_open(i8* %fn, i8* %mode) #6, !dbg !1035
  ret i32 %call, !dbg !1035
}

; Function Attrs: optsize
declare i32 @gmx_fio_open(i8*, i8*) #3

; Function Attrs: nounwind optsize uwtable
define void @close_tpx(i32 %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fp}, i64 0, metadata !341), !dbg !1036
  tail call void @gmx_fio_close(i32 %fp) #6, !dbg !1037
  ret void, !dbg !1038
}

; Function Attrs: optsize
declare void @gmx_fio_close(i32) #3

; Function Attrs: nounwind optsize uwtable
define void @read_tpxheader(i8* %fn, %struct.t_tpxheader* %tpx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !361), !dbg !1039
  tail call void @llvm.dbg.value(metadata !{%struct.t_tpxheader* %tpx}, i64 0, metadata !362), !dbg !1039
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !1040) #2, !dbg !1042
  tail call void @llvm.dbg.value(metadata !1043, i64 0, metadata !1044) #2, !dbg !1042
  %call.i = tail call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str57, i64 0, i64 0)) #6, !dbg !1045
  tail call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !363), !dbg !1041
  tail call fastcc void @do_tpxheader(i32 %call.i, i32 1, %struct.t_tpxheader* %tpx) #8, !dbg !1046
  tail call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !1047) #2, !dbg !1049
  tail call void @gmx_fio_close(i32 %call.i) #6, !dbg !1050
  ret void, !dbg !1051
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @do_tpxheader(i32 %fp, i32 %bRead, %struct.t_tpxheader* %tpx) #0 {
entry:
  %buf = alloca [4096 x i8], align 16
  %precision = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32 %fp}, i64 0, metadata !913), !dbg !1052
  call void @llvm.dbg.value(metadata !{i32 %bRead}, i64 0, metadata !914), !dbg !1052
  call void @llvm.dbg.value(metadata !{%struct.t_tpxheader* %tpx}, i64 0, metadata !915), !dbg !1052
  %0 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0, !dbg !1053
  call void @llvm.lifetime.start(i64 4096, i8* %0) #2, !dbg !1053
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %buf}, metadata !916), !dbg !1053
  call void @llvm.dbg.declare(metadata !{i32* %precision}, metadata !919), !dbg !1054
  call void @gmx_fio_select(i32 %fp) #6, !dbg !1055
  %call = call i32 @bDebugMode() #6, !dbg !1056
  call void @gmx_fio_setdebug(i32 %fp, i32 %call) #6, !dbg !1056
  call void @llvm.dbg.value(metadata !1057, i64 0, metadata !919), !dbg !1058
  store i32 4, i32* %precision, align 4, !dbg !1058, !tbaa !1059
  %tobool = icmp ne i32 %bRead, 0, !dbg !1060
  br i1 %tobool, label %cond.true, label %cond.false48, !dbg !1060

cond.true:                                        ; preds = %entry
  %1 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1061, !tbaa !947
  %call2 = call i32 %1(i8* %0, i32 1, i32 7, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 736) #6, !dbg !1061
  %call6 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([8 x i8]* @.str214, i64 0, i64 0), i64 7) #7, !dbg !1063
  %tobool7 = icmp eq i32 %call6, 0, !dbg !1063
  br i1 %tobool7, label %cond.end15, label %if.then8, !dbg !1063

if.then8:                                         ; preds = %cond.true
  %call9 = call i8* @gmx_fio_getname(i32 %fp) #6, !dbg !1064
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([173 x i8]* @.str215, i64 0, i64 0), i8* %call9) #6, !dbg !1064
  br label %cond.end15, !dbg !1064

cond.end15:                                       ; preds = %if.then8, %cond.true
  %2 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1065, !tbaa !947
  %3 = bitcast i32* %precision to i8*, !dbg !1065
  %call12 = call i32 %2(i8* %3, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str216, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 742) #6, !dbg !1065
  call void @llvm.dbg.value(metadata !{i32* %precision}, i64 0, metadata !919), !dbg !1066
  %4 = load i32* %precision, align 4, !dbg !1066, !tbaa !1059
  %cmp = icmp eq i32 %4, 8, !dbg !1066
  %conv17 = zext i1 %cmp to i32, !dbg !1066
  call void @llvm.dbg.value(metadata !{i32 %conv17}, i64 0, metadata !918), !dbg !1066
  switch i32 %4, label %if.end44 [
    i32 8, label %if.end44.thread182
    i32 4, label %if.end44.thread182
  ], !dbg !1067

if.end44.thread182:                               ; preds = %cond.end15, %cond.end15
  call void @gmx_fio_setprecision(i32 %fp, i32 %conv17) #6, !dbg !1068
  br label %cond.true46, !dbg !1069

if.end44:                                         ; preds = %cond.end15
  %call23 = call i8* @gmx_fio_getname(i32 %fp) #6, !dbg !1070
  call void @llvm.dbg.value(metadata !{i32* %precision}, i64 0, metadata !919), !dbg !1070
  %5 = load i32* %precision, align 4, !dbg !1070, !tbaa !1059
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([67 x i8]* @.str217, i64 0, i64 0), i8* %call23, i32 %5, i64 4, i64 8) #6, !dbg !1070
  call void @gmx_fio_setprecision(i32 %fp, i32 %conv17) #6, !dbg !1068
  br label %cond.true46, !dbg !1069

cond.true46:                                      ; preds = %if.end44, %if.end44.thread182
  %6 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1069, !tbaa !947
  %call47 = call i32 %6(i8* bitcast (i32* @file_version to i8*), i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str219, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 763) #6, !dbg !1069
  br label %cond.end50, !dbg !1069

cond.false48:                                     ; preds = %entry
  %7 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1071, !tbaa !947
  %call30 = call i8* @GromacsVersion() #6, !dbg !1071
  %call31 = call i32 %7(i8* %call30, i32 1, i32 7, i8* getelementptr inbounds ([17 x i8]* @.str218, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 755) #6, !dbg !1071
  call void @llvm.dbg.value(metadata !{i32* %precision}, i64 0, metadata !919), !dbg !1073
  %8 = load i32* %precision, align 4, !dbg !1073, !tbaa !1059
  %cmp35 = icmp eq i32 %8, 8, !dbg !1073
  %conv36 = zext i1 %cmp35 to i32, !dbg !1073
  call void @llvm.dbg.value(metadata !{i32 %conv36}, i64 0, metadata !918), !dbg !1073
  call void @gmx_fio_setprecision(i32 %fp, i32 %conv36) #6, !dbg !1074
  %9 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1075, !tbaa !947
  %10 = bitcast i32* %precision to i8*, !dbg !1075
  %call41 = call i32 %9(i8* %10, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str216, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 758) #6, !dbg !1075
  store i32 24, i32* @file_version, align 4, !dbg !1076, !tbaa !1059
  %11 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1069, !tbaa !947
  %call49 = call i32 %11(i8* bitcast (i32* @file_version to i8*), i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str219, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 763) #6, !dbg !1069
  br label %cond.end50, !dbg !1069

cond.end50:                                       ; preds = %cond.false48, %cond.true46
  %12 = load i32* @file_version, align 4, !dbg !1077, !tbaa !1059
  %.off = add i32 %12, -10, !dbg !1077
  %13 = icmp ugt i32 %.off, 14, !dbg !1077
  br i1 %13, label %if.then56, label %if.end58, !dbg !1077

if.then56:                                        ; preds = %cond.end50
  %call57 = call i8* @gmx_fio_getname(i32 %fp) #6, !dbg !1078
  %14 = load i32* @file_version, align 4, !dbg !1078, !tbaa !1059
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([57 x i8]* @.str220, i64 0, i64 0), i8* %call57, i32 %14, i32 24) #6, !dbg !1078
  br label %if.end58, !dbg !1078

if.end58:                                         ; preds = %cond.end50, %if.then56
  call void @_do_section(i32 %fp, i32 0, i32 %bRead, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 769) #8, !dbg !1079
  br i1 %tobool, label %cond.true132, label %cond.false134, !dbg !1080

cond.true132:                                     ; preds = %if.end58
  %15 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1080, !tbaa !947
  %natoms = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 6, !dbg !1080
  %16 = bitcast i32* %natoms to i8*, !dbg !1080
  %call61 = call i32 %15(i8* %16, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str221, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 770) #6, !dbg !1080
  %17 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1081, !tbaa !947
  %step = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 7, !dbg !1081
  %18 = bitcast i32* %step to i8*, !dbg !1081
  %call69 = call i32 %17(i8* %18, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str222, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 771) #6, !dbg !1081
  %19 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1082, !tbaa !947
  %t = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 8, !dbg !1082
  %20 = bitcast float* %t to i8*, !dbg !1082
  %call77 = call i32 %19(i8* %20, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str223, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 772) #6, !dbg !1082
  %21 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1083, !tbaa !947
  %lambda = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 9, !dbg !1083
  %22 = bitcast float* %lambda to i8*, !dbg !1083
  %call85 = call i32 %21(i8* %22, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str224, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 773) #6, !dbg !1083
  %23 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1084, !tbaa !947
  %24 = bitcast %struct.t_tpxheader* %tpx to i8*, !dbg !1084
  %call93 = call i32 %23(i8* %24, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str225, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 774) #6, !dbg !1084
  %25 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1085, !tbaa !947
  %bTop = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 2, !dbg !1085
  %26 = bitcast i32* %bTop to i8*, !dbg !1085
  %call101 = call i32 %25(i8* %26, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str226, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 775) #6, !dbg !1085
  %27 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1086, !tbaa !947
  %bX = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 3, !dbg !1086
  %28 = bitcast i32* %bX to i8*, !dbg !1086
  %call109 = call i32 %27(i8* %28, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str227, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 776) #6, !dbg !1086
  %29 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1087, !tbaa !947
  %bV = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 4, !dbg !1087
  %30 = bitcast i32* %bV to i8*, !dbg !1087
  %call117 = call i32 %29(i8* %30, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str228, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 777) #6, !dbg !1087
  %31 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1088, !tbaa !947
  %bF = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 5, !dbg !1088
  %32 = bitcast i32* %bF to i8*, !dbg !1088
  %call125 = call i32 %31(i8* %32, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str229, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 778) #6, !dbg !1088
  %33 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1089, !tbaa !947
  %bBox = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 1, !dbg !1089
  %34 = bitcast i32* %bBox to i8*, !dbg !1089
  %call133 = call i32 %33(i8* %34, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str230, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 779) #6, !dbg !1089
  br label %cond.end137, !dbg !1089

cond.false134:                                    ; preds = %if.end58
  %35 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1080, !tbaa !947
  %natoms63 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 6, !dbg !1080
  %36 = bitcast i32* %natoms63 to i8*, !dbg !1080
  %call64 = call i32 %35(i8* %36, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str221, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 770) #6, !dbg !1080
  %37 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1081, !tbaa !947
  %step71 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 7, !dbg !1081
  %38 = bitcast i32* %step71 to i8*, !dbg !1081
  %call72 = call i32 %37(i8* %38, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str222, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 771) #6, !dbg !1081
  %39 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1082, !tbaa !947
  %t79 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 8, !dbg !1082
  %40 = bitcast float* %t79 to i8*, !dbg !1082
  %call80 = call i32 %39(i8* %40, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str223, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 772) #6, !dbg !1082
  %41 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1083, !tbaa !947
  %lambda87 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 9, !dbg !1083
  %42 = bitcast float* %lambda87 to i8*, !dbg !1083
  %call88 = call i32 %41(i8* %42, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str224, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 773) #6, !dbg !1083
  %43 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1084, !tbaa !947
  %44 = bitcast %struct.t_tpxheader* %tpx to i8*, !dbg !1084
  %call96 = call i32 %43(i8* %44, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str225, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 774) #6, !dbg !1084
  %45 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1085, !tbaa !947
  %bTop103 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 2, !dbg !1085
  %46 = bitcast i32* %bTop103 to i8*, !dbg !1085
  %call104 = call i32 %45(i8* %46, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str226, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 775) #6, !dbg !1085
  %47 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1086, !tbaa !947
  %bX111 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 3, !dbg !1086
  %48 = bitcast i32* %bX111 to i8*, !dbg !1086
  %call112 = call i32 %47(i8* %48, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str227, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 776) #6, !dbg !1086
  %49 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1087, !tbaa !947
  %bV119 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 4, !dbg !1087
  %50 = bitcast i32* %bV119 to i8*, !dbg !1087
  %call120 = call i32 %49(i8* %50, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str228, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 777) #6, !dbg !1087
  %51 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1088, !tbaa !947
  %bF127 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 5, !dbg !1088
  %52 = bitcast i32* %bF127 to i8*, !dbg !1088
  %call128 = call i32 %51(i8* %52, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str229, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 778) #6, !dbg !1088
  %53 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1089, !tbaa !947
  %bBox135 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 1, !dbg !1089
  %54 = bitcast i32* %bBox135 to i8*, !dbg !1089
  %call136 = call i32 %53(i8* %54, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str230, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 779) #6, !dbg !1089
  br label %cond.end137, !dbg !1089

cond.end137:                                      ; preds = %cond.false134, %cond.true132
  call void @llvm.lifetime.end(i64 4096, i8* %0) #2, !dbg !1090
  ret void, !dbg !1090
}

; Function Attrs: nounwind optsize uwtable
define void @write_tpx(i8* %fn, i32 %step, float %t, float %lambda, %struct.t_inputrec* %ir, [3 x float]* %box, i32 %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #0 {
entry:
  %step.addr = alloca i32, align 4
  %t.addr = alloca float, align 4
  %lambda.addr = alloca float, align 4
  %natoms.addr = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !602), !dbg !1091
  call void @llvm.dbg.value(metadata !{i32 %step}, i64 0, metadata !603), !dbg !1091
  store i32 %step, i32* %step.addr, align 4, !tbaa !1059
  call void @llvm.dbg.declare(metadata !{i32* %step.addr}, metadata !603), !dbg !1091
  call void @llvm.dbg.value(metadata !{float %t}, i64 0, metadata !604), !dbg !1091
  store float %t, float* %t.addr, align 4, !tbaa !1092
  call void @llvm.dbg.declare(metadata !{float* %t.addr}, metadata !604), !dbg !1091
  call void @llvm.dbg.value(metadata !{float %lambda}, i64 0, metadata !605), !dbg !1091
  store float %lambda, float* %lambda.addr, align 4, !tbaa !1092
  call void @llvm.dbg.declare(metadata !{float* %lambda.addr}, metadata !605), !dbg !1091
  call void @llvm.dbg.value(metadata !{%struct.t_inputrec* %ir}, i64 0, metadata !606), !dbg !1093
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !607), !dbg !1093
  call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !608), !dbg !1093
  store i32 %natoms, i32* %natoms.addr, align 4, !tbaa !1059
  call void @llvm.dbg.declare(metadata !{i32* %natoms.addr}, metadata !608), !dbg !1093
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !609), !dbg !1094
  call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !610), !dbg !1094
  call void @llvm.dbg.value(metadata !{[3 x float]* %f}, i64 0, metadata !611), !dbg !1094
  call void @llvm.dbg.value(metadata !{%struct.t_topology* %top}, i64 0, metadata !612), !dbg !1094
  call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !1095) #2, !dbg !1097
  call void @llvm.dbg.value(metadata !1098, i64 0, metadata !1099) #2, !dbg !1097
  %call.i = call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str58, i64 0, i64 0)) #6, !dbg !1100
  call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !613), !dbg !1096
  call fastcc void @do_tpx(i32 %call.i, i32 0, i32* %step.addr, float* %t.addr, float* %lambda.addr, %struct.t_inputrec* %ir, [3 x float]* %box, i32* %natoms.addr, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #8, !dbg !1101
  call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !1102) #2, !dbg !1104
  call void @gmx_fio_close(i32 %call.i) #6, !dbg !1105
  ret void, !dbg !1106
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @do_tpx(i32 %fp, i32 %bRead, i32* nocapture %step, float* nocapture %t, float* nocapture %lambda, %struct.t_inputrec* %ir, [3 x float]* %box, i32* nocapture %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #0 {
entry:
  %tpx = alloca %struct.t_tpxheader, align 4
  %dum_ir = alloca %struct.t_inputrec, align 8
  %dum_top = alloca %struct.t_topology, align 8
  call void @llvm.dbg.value(metadata !{i32 %fp}, i64 0, metadata !690), !dbg !1107
  call void @llvm.dbg.value(metadata !{i32 %bRead}, i64 0, metadata !691), !dbg !1107
  call void @llvm.dbg.value(metadata !{i32* %step}, i64 0, metadata !692), !dbg !1107
  call void @llvm.dbg.value(metadata !{float* %t}, i64 0, metadata !693), !dbg !1107
  call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !694), !dbg !1107
  call void @llvm.dbg.value(metadata !{%struct.t_inputrec* %ir}, i64 0, metadata !695), !dbg !1108
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !696), !dbg !1108
  call void @llvm.dbg.value(metadata !{i32* %natoms}, i64 0, metadata !697), !dbg !1108
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !698), !dbg !1109
  call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !699), !dbg !1109
  call void @llvm.dbg.value(metadata !{[3 x float]* %f}, i64 0, metadata !700), !dbg !1109
  call void @llvm.dbg.value(metadata !{%struct.t_topology* %top}, i64 0, metadata !701), !dbg !1109
  %0 = bitcast %struct.t_tpxheader* %tpx to i8*, !dbg !1110
  call void @llvm.lifetime.start(i64 40, i8* %0) #2, !dbg !1110
  call void @llvm.dbg.declare(metadata !{%struct.t_tpxheader* %tpx}, metadata !702), !dbg !1110
  %1 = bitcast %struct.t_inputrec* %dum_ir to i8*, !dbg !1111
  call void @llvm.lifetime.start(i64 592, i8* %1) #2, !dbg !1111
  call void @llvm.dbg.declare(metadata !{%struct.t_inputrec* %dum_ir}, metadata !703), !dbg !1111
  %2 = bitcast %struct.t_topology* %dum_top to i8*, !dbg !1112
  call void @llvm.lifetime.start(i64 50264, i8* %2) #2, !dbg !1112
  call void @llvm.dbg.declare(metadata !{%struct.t_topology* %dum_top}, metadata !704), !dbg !1112
  %tobool = icmp ne i32 %bRead, 0, !dbg !1113
  br i1 %tobool, label %if.then16.critedge, label %if.then, !dbg !1113

if.then:                                          ; preds = %entry
  %3 = load i32* %natoms, align 4, !dbg !1114, !tbaa !1059
  %natoms1 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 6, !dbg !1114
  store i32 %3, i32* %natoms1, align 4, !dbg !1114, !tbaa !1059
  %4 = load i32* %step, align 4, !dbg !1116, !tbaa !1059
  %step2 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 7, !dbg !1116
  store i32 %4, i32* %step2, align 4, !dbg !1116, !tbaa !1059
  %5 = load float* %t, align 4, !dbg !1117, !tbaa !1092
  %t3 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 8, !dbg !1117
  store float %5, float* %t3, align 4, !dbg !1117, !tbaa !1092
  %6 = load float* %lambda, align 4, !dbg !1118, !tbaa !1092
  %lambda4 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 9, !dbg !1118
  store float %6, float* %lambda4, align 4, !dbg !1118, !tbaa !1092
  %cmp = icmp ne %struct.t_inputrec* %ir, null, !dbg !1119
  %conv = zext i1 %cmp to i32, !dbg !1119
  %bIr = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 0, !dbg !1119
  store i32 %conv, i32* %bIr, align 4, !dbg !1119, !tbaa !1059
  %cmp5 = icmp ne %struct.t_topology* %top, null, !dbg !1120
  %conv6 = zext i1 %cmp5 to i32, !dbg !1120
  %bTop = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 2, !dbg !1120
  store i32 %conv6, i32* %bTop, align 4, !dbg !1120, !tbaa !1059
  %cmp7 = icmp ne [3 x float]* %x, null, !dbg !1121
  %conv8 = zext i1 %cmp7 to i32, !dbg !1121
  %bX = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 3, !dbg !1121
  store i32 %conv8, i32* %bX, align 4, !dbg !1121, !tbaa !1059
  %cmp9 = icmp ne [3 x float]* %v, null, !dbg !1122
  %conv10 = zext i1 %cmp9 to i32, !dbg !1122
  %bV = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 4, !dbg !1122
  store i32 %conv10, i32* %bV, align 4, !dbg !1122, !tbaa !1059
  %cmp11 = icmp ne [3 x float]* %f, null, !dbg !1123
  %conv12 = zext i1 %cmp11 to i32, !dbg !1123
  %bF = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 5, !dbg !1123
  store i32 %conv12, i32* %bF, align 4, !dbg !1123, !tbaa !1059
  %cmp13 = icmp ne [3 x float]* %box, null, !dbg !1124
  %conv14 = zext i1 %cmp13 to i32, !dbg !1124
  %bBox = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 1, !dbg !1124
  store i32 %conv14, i32* %bBox, align 4, !dbg !1124, !tbaa !1059
  call fastcc void @do_tpxheader(i32 %fp, i32 0, %struct.t_tpxheader* %tpx) #8, !dbg !1125
  br label %if.end29, !dbg !1126

if.then16.critedge:                               ; preds = %entry
  call fastcc void @do_tpxheader(i32 %fp, i32 %bRead, %struct.t_tpxheader* %tpx) #8, !dbg !1125
  %natoms17 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 6, !dbg !1127
  %7 = load i32* %natoms17, align 4, !dbg !1127, !tbaa !1059
  store i32 %7, i32* %natoms, align 4, !dbg !1127, !tbaa !1059
  %step18 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 7, !dbg !1129
  %8 = load i32* %step18, align 4, !dbg !1129, !tbaa !1059
  store i32 %8, i32* %step, align 4, !dbg !1129, !tbaa !1059
  %t19 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 8, !dbg !1130
  %9 = load float* %t19, align 4, !dbg !1130, !tbaa !1092
  store float %9, float* %t, align 4, !dbg !1130, !tbaa !1092
  %lambda20 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 9, !dbg !1131
  %10 = load float* %lambda20, align 4, !dbg !1131, !tbaa !1092
  store float %10, float* %lambda, align 4, !dbg !1131, !tbaa !1092
  %cmp23 = icmp eq [3 x float]* %box, null, !dbg !1132
  %bBox30.pre = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 1, !dbg !1133
  br i1 %cmp23, label %if.end29, label %land.lhs.true25, !dbg !1132

land.lhs.true25:                                  ; preds = %if.then16.critedge
  %11 = load i32* %bBox30.pre, align 4, !dbg !1132, !tbaa !1059
  %tobool27 = icmp eq i32 %11, 0, !dbg !1132
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !1132

if.then28:                                        ; preds = %land.lhs.true25
  %call = call i8* @gmx_fio_getname(i32 %fp) #6, !dbg !1132
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([12 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* %call) #6, !dbg !1132
  br label %if.end29, !dbg !1132

if.end29:                                         ; preds = %if.then16.critedge, %if.then, %land.lhs.true25, %if.then28
  %bBox30.pre-phi = phi i32* [ %bBox, %if.then ], [ %bBox30.pre, %land.lhs.true25 ], [ %bBox30.pre, %if.then28 ], [ %bBox30.pre, %if.then16.critedge ], !dbg !1133
  call void @_do_section(i32 %fp, i32 2, i32 %bRead, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 815) #8, !dbg !1134
  %12 = load i32* %bBox30.pre-phi, align 4, !dbg !1133, !tbaa !1059
  %tobool31 = icmp eq i32 %12, 0, !dbg !1133
  br i1 %tobool31, label %if.end36, label %if.then32, !dbg !1133

if.then32:                                        ; preds = %if.end29
  br i1 %tobool, label %cond.true, label %if.end36.thread, !dbg !1133

cond.true:                                        ; preds = %if.then32
  %13 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1133, !tbaa !947
  %14 = bitcast [3 x float]* %box to i8*, !dbg !1133
  %call34 = call i32 %13(i8* %14, i32 3, i32 5, i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 816) #6, !dbg !1133
  br label %if.end36, !dbg !1133

if.end36.thread:                                  ; preds = %if.then32
  %15 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1133, !tbaa !947
  %16 = bitcast [3 x float]* %box to i8*, !dbg !1133
  %call35 = call i32 %15(i8* %16, i32 3, i32 5, i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 816) #6, !dbg !1133
  %cmp39208 = icmp eq %struct.t_inputrec* %ir, null, !dbg !1135
  br label %if.end46, !dbg !1135

if.end36:                                         ; preds = %if.end29, %cond.true
  %tobool.not197 = xor i1 %tobool, true, !dbg !1135
  %cmp39 = icmp eq %struct.t_inputrec* %ir, null, !dbg !1135
  %or.cond198 = or i1 %cmp39, %tobool.not197, !dbg !1135
  br i1 %or.cond198, label %if.end46, label %land.lhs.true41, !dbg !1135

land.lhs.true41:                                  ; preds = %if.end36
  %bIr42 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 0, !dbg !1135
  %17 = load i32* %bIr42, align 4, !dbg !1135, !tbaa !1059
  %tobool43 = icmp eq i32 %17, 0, !dbg !1135
  br i1 %tobool43, label %if.then44, label %if.end46, !dbg !1135

if.then44:                                        ; preds = %land.lhs.true41
  %call45 = call i8* @gmx_fio_getname(i32 %fp) #6, !dbg !1135
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([12 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str63, i64 0, i64 0), i8* %call45) #6, !dbg !1135
  br label %if.end46, !dbg !1135

if.end46:                                         ; preds = %if.end36.thread, %if.end36, %land.lhs.true41, %if.then44
  %cmp39211 = phi i1 [ %cmp39208, %if.end36.thread ], [ %cmp39, %if.end36 ], [ false, %land.lhs.true41 ], [ false, %if.then44 ]
  %tobool.not197210 = phi i1 [ true, %if.end36.thread ], [ %tobool.not197, %if.end36 ], [ false, %land.lhs.true41 ], [ false, %if.then44 ]
  call void @_do_section(i32 %fp, i32 1, i32 %bRead, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 819) #8, !dbg !1136
  %bIr47 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 0, !dbg !1137
  %18 = load i32* %bIr47, align 4, !dbg !1137, !tbaa !1059
  %tobool48 = icmp eq i32 %18, 0, !dbg !1137
  br i1 %tobool48, label %if.end53, label %if.then49, !dbg !1137

if.then49:                                        ; preds = %if.end46
  br i1 %cmp39211, label %if.else, label %if.then51, !dbg !1138

if.then51:                                        ; preds = %if.then49
  call fastcc void @do_inputrec(%struct.t_inputrec* %ir, i32 %bRead) #8, !dbg !1140
  br label %if.end53, !dbg !1140

if.else:                                          ; preds = %if.then49
  call void @init_inputrec(%struct.t_inputrec* %dum_ir) #6, !dbg !1141
  call fastcc void @do_inputrec(%struct.t_inputrec* %dum_ir, i32 %bRead) #8, !dbg !1143
  call void @done_inputrec(%struct.t_inputrec* %dum_ir) #6, !dbg !1144
  br label %if.end53

if.end53:                                         ; preds = %if.end46, %if.then51, %if.else
  %cmp56 = icmp eq %struct.t_topology* %top, null, !dbg !1145
  %or.cond200 = or i1 %tobool.not197210, %cmp56, !dbg !1145
  %bTop64.pre = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 2, !dbg !1146
  br i1 %or.cond200, label %if.end63, label %land.lhs.true58, !dbg !1145

land.lhs.true58:                                  ; preds = %if.end53
  %19 = load i32* %bTop64.pre, align 4, !dbg !1145, !tbaa !1059
  %tobool60 = icmp eq i32 %19, 0, !dbg !1145
  br i1 %tobool60, label %if.then61, label %if.end63, !dbg !1145

if.then61:                                        ; preds = %land.lhs.true58
  %call62 = call i8* @gmx_fio_getname(i32 %fp) #6, !dbg !1145
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([12 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str64, i64 0, i64 0), i8* %call62) #6, !dbg !1145
  br label %if.end63, !dbg !1145

if.end63:                                         ; preds = %if.end53, %land.lhs.true58, %if.then61
  call void @_do_section(i32 %fp, i32 3, i32 %bRead, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 830) #8, !dbg !1147
  %20 = load i32* %bTop64.pre, align 4, !dbg !1146, !tbaa !1059
  %tobool65 = icmp eq i32 %20, 0, !dbg !1146
  br i1 %tobool65, label %if.end71, label %if.then66, !dbg !1146

if.then66:                                        ; preds = %if.end63
  br i1 %cmp56, label %if.else69, label %if.then68, !dbg !1148

if.then68:                                        ; preds = %if.then66
  call fastcc void @do_top(%struct.t_topology* %top, i32 %bRead) #8, !dbg !1150
  br label %if.end71, !dbg !1150

if.else69:                                        ; preds = %if.then66
  call fastcc void @do_top(%struct.t_topology* %dum_top, i32 %bRead) #8, !dbg !1151
  call void @done_top(%struct.t_topology* %dum_top) #6, !dbg !1153
  br label %if.end71

if.end71:                                         ; preds = %if.end63, %if.then68, %if.else69
  %cmp74 = icmp eq [3 x float]* %x, null, !dbg !1154
  %or.cond202 = or i1 %tobool.not197210, %cmp74, !dbg !1154
  %bX82.pre = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 3, !dbg !1155
  br i1 %or.cond202, label %if.end81, label %land.lhs.true76, !dbg !1154

land.lhs.true76:                                  ; preds = %if.end71
  %21 = load i32* %bX82.pre, align 4, !dbg !1154, !tbaa !1059
  %tobool78 = icmp eq i32 %21, 0, !dbg !1154
  br i1 %tobool78, label %if.then79, label %if.end81, !dbg !1154

if.then79:                                        ; preds = %land.lhs.true76
  %call80 = call i8* @gmx_fio_getname(i32 %fp) #6, !dbg !1154
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([12 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str65, i64 0, i64 0), i8* %call80) #6, !dbg !1154
  br label %if.end81, !dbg !1154

if.end81:                                         ; preds = %if.end71, %land.lhs.true76, %if.then79
  call void @_do_section(i32 %fp, i32 4, i32 %bRead, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 840) #8, !dbg !1156
  %22 = load i32* %bX82.pre, align 4, !dbg !1155, !tbaa !1059
  %tobool83 = icmp eq i32 %22, 0, !dbg !1155
  br i1 %tobool83, label %if.end92, label %if.then84, !dbg !1155

if.then84:                                        ; preds = %if.end81
  br i1 %tobool, label %cond.true86, label %cond.false88, !dbg !1155

cond.true86:                                      ; preds = %if.then84
  %23 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1155, !tbaa !947
  %24 = bitcast [3 x float]* %x to i8*, !dbg !1155
  %25 = load i32* %natoms, align 4, !dbg !1155, !tbaa !1059
  %call87 = call i32 %23(i8* %24, i32 %25, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str65, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 841) #6, !dbg !1155
  br label %if.end92, !dbg !1155

cond.false88:                                     ; preds = %if.then84
  %26 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1155, !tbaa !947
  %27 = bitcast [3 x float]* %x to i8*, !dbg !1155
  %28 = load i32* %natoms, align 4, !dbg !1155, !tbaa !1059
  %call89 = call i32 %26(i8* %27, i32 %28, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str65, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 841) #6, !dbg !1155
  br label %if.end92, !dbg !1155

if.end92:                                         ; preds = %if.end81, %cond.true86, %cond.false88
  %cmp95 = icmp eq [3 x float]* %v, null, !dbg !1157
  %or.cond204 = or i1 %tobool.not197210, %cmp95, !dbg !1157
  %bV103.pre = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 4, !dbg !1158
  br i1 %or.cond204, label %if.end102, label %land.lhs.true97, !dbg !1157

land.lhs.true97:                                  ; preds = %if.end92
  %29 = load i32* %bV103.pre, align 4, !dbg !1157, !tbaa !1059
  %tobool99 = icmp eq i32 %29, 0, !dbg !1157
  br i1 %tobool99, label %if.then100, label %if.end102, !dbg !1157

if.then100:                                       ; preds = %land.lhs.true97
  %call101 = call i8* @gmx_fio_getname(i32 %fp) #6, !dbg !1157
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([12 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str66, i64 0, i64 0), i8* %call101) #6, !dbg !1157
  br label %if.end102, !dbg !1157

if.end102:                                        ; preds = %if.end92, %land.lhs.true97, %if.then100
  call void @_do_section(i32 %fp, i32 5, i32 %bRead, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 844) #8, !dbg !1159
  %30 = load i32* %bV103.pre, align 4, !dbg !1158, !tbaa !1059
  %tobool104 = icmp eq i32 %30, 0, !dbg !1158
  br i1 %tobool104, label %if.end113, label %if.then105, !dbg !1158

if.then105:                                       ; preds = %if.end102
  br i1 %tobool, label %cond.true107, label %cond.false109, !dbg !1158

cond.true107:                                     ; preds = %if.then105
  %31 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1158, !tbaa !947
  %32 = bitcast [3 x float]* %v to i8*, !dbg !1158
  %33 = load i32* %natoms, align 4, !dbg !1158, !tbaa !1059
  %call108 = call i32 %31(i8* %32, i32 %33, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str66, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 845) #6, !dbg !1158
  br label %if.end113, !dbg !1158

cond.false109:                                    ; preds = %if.then105
  %34 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1158, !tbaa !947
  %35 = bitcast [3 x float]* %v to i8*, !dbg !1158
  %36 = load i32* %natoms, align 4, !dbg !1158, !tbaa !1059
  %call110 = call i32 %34(i8* %35, i32 %36, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str66, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 845) #6, !dbg !1158
  br label %if.end113, !dbg !1158

if.end113:                                        ; preds = %if.end102, %cond.true107, %cond.false109
  %cmp116 = icmp eq [3 x float]* %f, null, !dbg !1160
  %or.cond206 = or i1 %tobool.not197210, %cmp116, !dbg !1160
  %bF124.pre = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 5, !dbg !1161
  br i1 %or.cond206, label %if.end123, label %land.lhs.true118, !dbg !1160

land.lhs.true118:                                 ; preds = %if.end113
  %37 = load i32* %bF124.pre, align 4, !dbg !1160, !tbaa !1059
  %tobool120 = icmp eq i32 %37, 0, !dbg !1160
  br i1 %tobool120, label %if.then121, label %if.end123, !dbg !1160

if.then121:                                       ; preds = %land.lhs.true118
  %call122 = call i8* @gmx_fio_getname(i32 %fp) #6, !dbg !1160
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([12 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str67, i64 0, i64 0), i8* %call122) #6, !dbg !1160
  br label %if.end123, !dbg !1160

if.end123:                                        ; preds = %if.end113, %land.lhs.true118, %if.then121
  call void @_do_section(i32 %fp, i32 6, i32 %bRead, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 848) #8, !dbg !1162
  %38 = load i32* %bF124.pre, align 4, !dbg !1161, !tbaa !1059
  %tobool125 = icmp eq i32 %38, 0, !dbg !1161
  br i1 %tobool125, label %if.end134, label %if.then126, !dbg !1161

if.then126:                                       ; preds = %if.end123
  br i1 %tobool, label %cond.true128, label %cond.false130, !dbg !1161

cond.true128:                                     ; preds = %if.then126
  %39 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1161, !tbaa !947
  %40 = bitcast [3 x float]* %f to i8*, !dbg !1161
  %41 = load i32* %natoms, align 4, !dbg !1161, !tbaa !1059
  %call129 = call i32 %39(i8* %40, i32 %41, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 849) #6, !dbg !1161
  br label %if.end134, !dbg !1161

cond.false130:                                    ; preds = %if.then126
  %42 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1161, !tbaa !947
  %43 = bitcast [3 x float]* %f to i8*, !dbg !1161
  %44 = load i32* %natoms, align 4, !dbg !1161, !tbaa !1059
  %call131 = call i32 %42(i8* %43, i32 %44, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 849) #6, !dbg !1161
  br label %if.end134, !dbg !1161

if.end134:                                        ; preds = %if.end123, %cond.true128, %cond.false130
  call void @llvm.lifetime.end(i64 50264, i8* %2) #2, !dbg !1163
  call void @llvm.lifetime.end(i64 592, i8* %1) #2, !dbg !1163
  call void @llvm.lifetime.end(i64 40, i8* %0) #2, !dbg !1163
  ret void, !dbg !1163
}

; Function Attrs: nounwind optsize uwtable
define void @read_tpx(i8* %fn, i32* nocapture %step, float* nocapture %t, float* nocapture %lambda, %struct.t_inputrec* %ir, [3 x float]* %box, i32* nocapture %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !618), !dbg !1164
  tail call void @llvm.dbg.value(metadata !{i32* %step}, i64 0, metadata !619), !dbg !1164
  tail call void @llvm.dbg.value(metadata !{float* %t}, i64 0, metadata !620), !dbg !1164
  tail call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !621), !dbg !1164
  tail call void @llvm.dbg.value(metadata !{%struct.t_inputrec* %ir}, i64 0, metadata !622), !dbg !1165
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !623), !dbg !1165
  tail call void @llvm.dbg.value(metadata !{i32* %natoms}, i64 0, metadata !624), !dbg !1165
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !625), !dbg !1166
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !626), !dbg !1166
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %f}, i64 0, metadata !627), !dbg !1166
  tail call void @llvm.dbg.value(metadata !{%struct.t_topology* %top}, i64 0, metadata !628), !dbg !1166
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !1167) #2, !dbg !1169
  tail call void @llvm.dbg.value(metadata !1043, i64 0, metadata !1170) #2, !dbg !1169
  %call.i = tail call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str57, i64 0, i64 0)) #6, !dbg !1171
  tail call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !629), !dbg !1168
  tail call fastcc void @do_tpx(i32 %call.i, i32 1, i32* %step, float* %t, float* %lambda, %struct.t_inputrec* %ir, [3 x float]* %box, i32* %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #8, !dbg !1172
  tail call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !1173) #2, !dbg !1175
  tail call void @gmx_fio_close(i32 %call.i) #6, !dbg !1176
  ret void, !dbg !1177
}

; Function Attrs: nounwind optsize uwtable
define void @fwrite_tpx(i32 %fp, i32 %step, float %t, float %lambda, %struct.t_inputrec* %ir, [3 x float]* %box, i32 %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #0 {
entry:
  %step.addr = alloca i32, align 4
  %t.addr = alloca float, align 4
  %lambda.addr = alloca float, align 4
  %natoms.addr = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32 %fp}, i64 0, metadata !634), !dbg !1178
  call void @llvm.dbg.value(metadata !{i32 %step}, i64 0, metadata !635), !dbg !1178
  store i32 %step, i32* %step.addr, align 4, !tbaa !1059
  call void @llvm.dbg.declare(metadata !{i32* %step.addr}, metadata !635), !dbg !1178
  call void @llvm.dbg.value(metadata !{float %t}, i64 0, metadata !636), !dbg !1178
  store float %t, float* %t.addr, align 4, !tbaa !1092
  call void @llvm.dbg.declare(metadata !{float* %t.addr}, metadata !636), !dbg !1178
  call void @llvm.dbg.value(metadata !{float %lambda}, i64 0, metadata !637), !dbg !1178
  store float %lambda, float* %lambda.addr, align 4, !tbaa !1092
  call void @llvm.dbg.declare(metadata !{float* %lambda.addr}, metadata !637), !dbg !1178
  call void @llvm.dbg.value(metadata !{%struct.t_inputrec* %ir}, i64 0, metadata !638), !dbg !1179
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !639), !dbg !1179
  call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !640), !dbg !1179
  store i32 %natoms, i32* %natoms.addr, align 4, !tbaa !1059
  call void @llvm.dbg.declare(metadata !{i32* %natoms.addr}, metadata !640), !dbg !1179
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !641), !dbg !1180
  call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !642), !dbg !1180
  call void @llvm.dbg.value(metadata !{[3 x float]* %f}, i64 0, metadata !643), !dbg !1180
  call void @llvm.dbg.value(metadata !{%struct.t_topology* %top}, i64 0, metadata !644), !dbg !1180
  call fastcc void @do_tpx(i32 %fp, i32 0, i32* %step.addr, float* %t.addr, float* %lambda.addr, %struct.t_inputrec* %ir, [3 x float]* %box, i32* %natoms.addr, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #8, !dbg !1181
  ret void, !dbg !1182
}

; Function Attrs: nounwind optsize uwtable
define void @fread_tpx(i32 %fp, i32* nocapture %step, float* nocapture %t, float* nocapture %lambda, %struct.t_inputrec* %ir, [3 x float]* %box, i32* nocapture %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fp}, i64 0, metadata !649), !dbg !1183
  tail call void @llvm.dbg.value(metadata !{i32* %step}, i64 0, metadata !650), !dbg !1183
  tail call void @llvm.dbg.value(metadata !{float* %t}, i64 0, metadata !651), !dbg !1183
  tail call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !652), !dbg !1183
  tail call void @llvm.dbg.value(metadata !{%struct.t_inputrec* %ir}, i64 0, metadata !653), !dbg !1184
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !654), !dbg !1184
  tail call void @llvm.dbg.value(metadata !{i32* %natoms}, i64 0, metadata !655), !dbg !1184
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !656), !dbg !1185
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !657), !dbg !1185
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %f}, i64 0, metadata !658), !dbg !1185
  tail call void @llvm.dbg.value(metadata !{%struct.t_topology* %top}, i64 0, metadata !659), !dbg !1185
  tail call fastcc void @do_tpx(i32 %fp, i32 1, i32* %step, float* %t, float* %lambda, %struct.t_inputrec* %ir, [3 x float]* %box, i32* %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #8, !dbg !1186
  ret void, !dbg !1187
}

; Function Attrs: nounwind optsize uwtable
define i32 @fn2bTPX(i8* %file) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !664), !dbg !1188
  %call = tail call i32 @fn2ftp(i8* %file) #6, !dbg !1189
  %call.off = add i32 %call, -26, !dbg !1189
  %switch = icmp ult i32 %call.off, 3, !dbg !1189
  %. = zext i1 %switch to i32, !dbg !1190
  ret i32 %., !dbg !1192
}

; Function Attrs: optsize
declare i32 @fn2ftp(i8*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @read_tps_conf(i8* %infile, i8* %title, %struct.t_topology* %top, [3 x float]** %x, [3 x float]** %v, [3 x float]* %box, i32 %bMass) #0 {
entry:
  %header = alloca %struct.t_tpxheader, align 4
  %t = alloca float, align 4
  %lambda = alloca float, align 4
  %natoms = alloca i32, align 4
  %step = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i8* %infile}, i64 0, metadata !671), !dbg !1193
  call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !672), !dbg !1193
  call void @llvm.dbg.value(metadata !{%struct.t_topology* %top}, i64 0, metadata !673), !dbg !1193
  call void @llvm.dbg.value(metadata !{[3 x float]** %x}, i64 0, metadata !674), !dbg !1194
  call void @llvm.dbg.value(metadata !{[3 x float]** %v}, i64 0, metadata !675), !dbg !1194
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !676), !dbg !1194
  call void @llvm.dbg.value(metadata !{i32 %bMass}, i64 0, metadata !677), !dbg !1194
  %0 = bitcast %struct.t_tpxheader* %header to i8*, !dbg !1195
  call void @llvm.lifetime.start(i64 40, i8* %0) #2, !dbg !1195
  call void @llvm.dbg.declare(metadata !{%struct.t_tpxheader* %header}, metadata !678), !dbg !1195
  call void @llvm.dbg.declare(metadata !{float* %t}, metadata !679), !dbg !1196
  call void @llvm.dbg.declare(metadata !{float* %lambda}, metadata !680), !dbg !1196
  call void @llvm.dbg.declare(metadata !{i32* %natoms}, metadata !681), !dbg !1197
  call void @llvm.dbg.declare(metadata !{i32* %step}, metadata !682), !dbg !1197
  call void @llvm.dbg.value(metadata !{i8* %infile}, i64 0, metadata !1198) #2, !dbg !1200
  %call.i = call i32 @fn2ftp(i8* %infile) #6, !dbg !1201
  %call.off.i = add i32 %call.i, -26, !dbg !1201
  %switch.i = icmp ult i32 %call.off.i, 3, !dbg !1201
  %..i = zext i1 %switch.i to i32, !dbg !1202
  call void @llvm.dbg.value(metadata !{i32 %..i}, i64 0, metadata !684), !dbg !1199
  br i1 %switch.i, label %if.then, label %if.else, !dbg !1203

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata !{i8* %infile}, i64 0, metadata !1204) #2, !dbg !1207
  call void @llvm.dbg.value(metadata !{%struct.t_tpxheader* %header}, i64 0, metadata !1208) #2, !dbg !1207
  call void @llvm.dbg.value(metadata !{i8* %infile}, i64 0, metadata !1209) #2, !dbg !1211
  call void @llvm.dbg.value(metadata !1043, i64 0, metadata !1212) #2, !dbg !1211
  %call.i.i = call i32 @gmx_fio_open(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str57, i64 0, i64 0)) #6, !dbg !1213
  call void @llvm.dbg.value(metadata !{i32 %call.i.i}, i64 0, metadata !1214) #2, !dbg !1210
  call fastcc void @do_tpxheader(i32 %call.i.i, i32 1, %struct.t_tpxheader* %header) #6, !dbg !1215
  call void @llvm.dbg.value(metadata !{i32 %call.i.i}, i64 0, metadata !1216) #2, !dbg !1218
  call void @gmx_fio_close(i32 %call.i.i) #6, !dbg !1219
  %tobool1 = icmp eq [3 x float]** %x, null, !dbg !1220
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !1220

if.then2:                                         ; preds = %if.then
  %natoms3 = getelementptr inbounds %struct.t_tpxheader* %header, i64 0, i32 6, !dbg !1221
  %1 = load i32* %natoms3, align 4, !dbg !1221, !tbaa !1059
  %call4 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 938, i32 %1, i32 12) #6, !dbg !1221
  %2 = bitcast i8* %call4 to [3 x float]*, !dbg !1221
  store [3 x float]* %2, [3 x float]** %x, align 8, !dbg !1221, !tbaa !947
  br label %if.end, !dbg !1221

if.end:                                           ; preds = %if.then, %if.then2
  %tobool5 = icmp eq [3 x float]** %v, null, !dbg !1222
  br i1 %tobool5, label %if.end9, label %if.then6, !dbg !1222

if.then6:                                         ; preds = %if.end
  %natoms7 = getelementptr inbounds %struct.t_tpxheader* %header, i64 0, i32 6, !dbg !1223
  %3 = load i32* %natoms7, align 4, !dbg !1223, !tbaa !1059
  %call8 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str60, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 940, i32 %3, i32 12) #6, !dbg !1223
  %4 = bitcast i8* %call8 to [3 x float]*, !dbg !1223
  store [3 x float]* %4, [3 x float]** %v, align 8, !dbg !1223, !tbaa !947
  br label %if.end9, !dbg !1223

if.end9:                                          ; preds = %if.end, %if.then6
  br i1 %tobool1, label %cond.end, label %cond.false, !dbg !1224

cond.false:                                       ; preds = %if.end9
  %5 = load [3 x float]** %x, align 8, !dbg !1224, !tbaa !947
  br label %cond.end, !dbg !1224

cond.end:                                         ; preds = %if.end9, %cond.false
  %cond = phi [3 x float]* [ %5, %cond.false ], [ null, %if.end9 ], !dbg !1224
  br i1 %tobool5, label %cond.end13, label %cond.false12, !dbg !1224

cond.false12:                                     ; preds = %cond.end
  %6 = load [3 x float]** %v, align 8, !dbg !1224, !tbaa !947
  br label %cond.end13, !dbg !1224

cond.end13:                                       ; preds = %cond.end, %cond.false12
  %cond14 = phi [3 x float]* [ %6, %cond.false12 ], [ null, %cond.end ], !dbg !1224
  call void @llvm.dbg.value(metadata !{i8* %infile}, i64 0, metadata !1225) #2, !dbg !1226
  call void @llvm.dbg.value(metadata !{i32* %step}, i64 0, metadata !1227) #2, !dbg !1226
  call void @llvm.dbg.value(metadata !{float* %t}, i64 0, metadata !1228) #2, !dbg !1226
  call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !1229) #2, !dbg !1226
  call void @llvm.dbg.value(metadata !1230, i64 0, metadata !1231) #2, !dbg !1232
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !1233) #2, !dbg !1232
  call void @llvm.dbg.value(metadata !{i32* %natoms}, i64 0, metadata !1234) #2, !dbg !1232
  call void @llvm.dbg.value(metadata !{[3 x float]* %cond}, i64 0, metadata !1235) #2, !dbg !1236
  call void @llvm.dbg.value(metadata !{[3 x float]* %cond14}, i64 0, metadata !1237) #2, !dbg !1236
  call void @llvm.dbg.value(metadata !1238, i64 0, metadata !1239) #2, !dbg !1236
  call void @llvm.dbg.value(metadata !{%struct.t_topology* %top}, i64 0, metadata !1240) #2, !dbg !1236
  call void @llvm.dbg.value(metadata !{i8* %infile}, i64 0, metadata !1241) #2, !dbg !1243
  call void @llvm.dbg.value(metadata !1043, i64 0, metadata !1244) #2, !dbg !1243
  %call.i.i82 = call i32 @gmx_fio_open(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str57, i64 0, i64 0)) #6, !dbg !1245
  call void @llvm.dbg.value(metadata !{i32 %call.i.i82}, i64 0, metadata !1246) #2, !dbg !1242
  call fastcc void @do_tpx(i32 %call.i.i82, i32 1, i32* %step, float* %t, float* %lambda, %struct.t_inputrec* null, [3 x float]* %box, i32* %natoms, [3 x float]* %cond, [3 x float]* %cond14, [3 x float]* null, %struct.t_topology* %top) #6, !dbg !1247
  call void @llvm.dbg.value(metadata !{i32 %call.i.i82}, i64 0, metadata !1248) #2, !dbg !1250
  call void @gmx_fio_close(i32 %call.i.i82) #6, !dbg !1251
  %name = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0, !dbg !1252
  %7 = load i8*** %name, align 8, !dbg !1252, !tbaa !947
  %8 = load i8** %7, align 8, !dbg !1252, !tbaa !947
  %call15 = call i8* @strcpy(i8* %title, i8* %8) #6, !dbg !1252
  br label %if.end49, !dbg !1253

if.else:                                          ; preds = %entry
  call void @get_stx_coordnum(i8* %infile, i32* %natoms) #6, !dbg !1254
  %atoms = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, !dbg !1256
  call void @llvm.dbg.value(metadata !{i32* %natoms}, i64 0, metadata !681), !dbg !1256
  %9 = load i32* %natoms, align 4, !dbg !1256, !tbaa !1059
  call void @init_t_atoms(%struct.t_atoms* %atoms, i32 %9, i32 0) #6, !dbg !1256
  call void @llvm.dbg.value(metadata !{i32* %natoms}, i64 0, metadata !681), !dbg !1257
  %10 = load i32* %natoms, align 4, !dbg !1257, !tbaa !1059
  %call17 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 949, i32 %10, i32 12) #6, !dbg !1257
  %11 = bitcast i8* %call17 to [3 x float]*, !dbg !1257
  store [3 x float]* %11, [3 x float]** %x, align 8, !dbg !1257, !tbaa !947
  %tobool18 = icmp eq [3 x float]** %v, null, !dbg !1258
  br i1 %tobool18, label %if.end31, label %cond.false26, !dbg !1258

cond.false26:                                     ; preds = %if.else
  call void @llvm.dbg.value(metadata !{i32* %natoms}, i64 0, metadata !681), !dbg !1259
  %12 = load i32* %natoms, align 4, !dbg !1259, !tbaa !1059
  %call20 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str60, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 951, i32 %12, i32 12) #6, !dbg !1259
  %13 = bitcast i8* %call20 to [3 x float]*, !dbg !1259
  store [3 x float]* %13, [3 x float]** %v, align 8, !dbg !1259, !tbaa !947
  %.pre = load [3 x float]** %x, align 8, !dbg !1260
  br label %if.end31, !dbg !1260

if.end31:                                         ; preds = %cond.false26, %if.else
  %14 = phi [3 x float]* [ %.pre, %cond.false26 ], [ %11, %if.else ]
  %cond28 = phi [3 x float]* [ %13, %cond.false26 ], [ null, %if.else ], !dbg !1260
  call void @read_stx_conf(i8* %infile, i8* %title, %struct.t_atoms* %atoms, [3 x float]* %14, [3 x float]* %cond28, [3 x float]* %box) #6, !dbg !1260
  %tobool32 = icmp eq i32 %bMass, 0, !dbg !1261
  br i1 %tobool32, label %if.end48, label %for.cond.preheader, !dbg !1261

for.cond.preheader:                               ; preds = %if.end31
  call void @llvm.dbg.value(metadata !{i32* %natoms}, i64 0, metadata !681), !dbg !1262
  %15 = load i32* %natoms, align 4, !dbg !1262, !tbaa !1059
  %cmp3483 = icmp sgt i32 %15, 0, !dbg !1262
  br i1 %cmp3483, label %for.body.lr.ph, label %if.end48, !dbg !1262

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %atom = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1, !dbg !1264
  %resname = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 6, !dbg !1264
  %atomname = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 2, !dbg !1264
  %.pre85 = load %struct.t_atom** %atom, align 8, !dbg !1264, !tbaa !947
  br label %for.body, !dbg !1262

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %16 = phi %struct.t_atom* [ %.pre85, %for.body.lr.ph ], [ %24, %for.body ], !dbg !1264
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %resnr = getelementptr inbounds %struct.t_atom* %16, i64 %indvars.iv, i32 7, !dbg !1264
  %17 = load i32* %resnr, align 4, !dbg !1264, !tbaa !1059
  %idxprom37 = sext i32 %17 to i64, !dbg !1264
  %18 = load i8**** %resname, align 8, !dbg !1264, !tbaa !947
  %arrayidx39 = getelementptr inbounds i8*** %18, i64 %idxprom37, !dbg !1264
  %19 = load i8*** %arrayidx39, align 8, !dbg !1264, !tbaa !947
  %20 = load i8** %19, align 8, !dbg !1264, !tbaa !947
  %21 = load i8**** %atomname, align 8, !dbg !1264, !tbaa !947
  %arrayidx42 = getelementptr inbounds i8*** %21, i64 %indvars.iv, !dbg !1264
  %22 = load i8*** %arrayidx42, align 8, !dbg !1264, !tbaa !947
  %23 = load i8** %22, align 8, !dbg !1264, !tbaa !947
  %call43 = call float @get_mass(i8* %20, i8* %23) #6, !dbg !1264
  %24 = load %struct.t_atom** %atom, align 8, !dbg !1264, !tbaa !947
  %m = getelementptr inbounds %struct.t_atom* %24, i64 %indvars.iv, i32 0, !dbg !1264
  store float %call43, float* %m, align 4, !dbg !1264, !tbaa !1092
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1262
  call void @llvm.dbg.value(metadata !{i32* %natoms}, i64 0, metadata !681), !dbg !1262
  %25 = load i32* %natoms, align 4, !dbg !1262, !tbaa !1059
  %26 = trunc i64 %indvars.iv.next to i32, !dbg !1262
  %cmp34 = icmp slt i32 %26, %25, !dbg !1262
  br i1 %cmp34, label %for.body, label %if.end48, !dbg !1262

if.end48:                                         ; preds = %for.cond.preheader, %for.body, %if.end31
  %ntypes = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 0, !dbg !1265
  store i32 -1, i32* %ntypes, align 4, !dbg !1265, !tbaa !1059
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %cond.end13
  call void @llvm.lifetime.end(i64 40, i8* %0) #2, !dbg !1266
  ret i32 %..i, !dbg !1266
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #4

; Function Attrs: optsize
declare void @get_stx_coordnum(i8*, i32*) #3

; Function Attrs: optsize
declare void @init_t_atoms(%struct.t_atoms*, i32, i32) #3

; Function Attrs: optsize
declare void @read_stx_conf(i8*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, [3 x float]*) #3

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #3

; Function Attrs: optsize
declare float @get_mass(i8*, i8*) #3

; Function Attrs: optsize
declare i8* @gmx_fio_getname(i32) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @do_inputrec(%struct.t_inputrec* %ir, i32 %bRead) #0 {
entry:
  %idum = alloca i32, align 4
  %vdum = alloca [3 x float], align 4
  %buf = alloca [128 x i8], align 16
  %buf1060 = alloca [128 x i8], align 16
  %buf1096 = alloca [128 x i8], align 16
  %buf1131 = alloca [128 x i8], align 16
  %buf1172 = alloca [128 x i8], align 16
  %buf1237 = alloca [128 x i8], align 16
  %buf1343 = alloca [128 x i8], align 16
  %buf1384 = alloca [128 x i8], align 16
  %buf1425 = alloca [128 x i8], align 16
  %buf1466 = alloca [128 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct.t_inputrec* %ir}, i64 0, metadata !844), !dbg !1267
  call void @llvm.dbg.value(metadata !{i32 %bRead}, i64 0, metadata !845), !dbg !1267
  call void @llvm.dbg.declare(metadata !{i32* %idum}, metadata !849), !dbg !1268
  call void @llvm.dbg.value(metadata !177, i64 0, metadata !849), !dbg !1268
  store i32 0, i32* %idum, align 4, !dbg !1268, !tbaa !1059
  call void @llvm.dbg.value(metadata !1269, i64 0, metadata !850), !dbg !1270
  call void @llvm.dbg.declare(metadata !{[3 x float]* %vdum}, metadata !852), !dbg !1271
  %0 = load i32* @file_version, align 4, !dbg !1272, !tbaa !1059
  %cmp = icmp eq i32 %0, 24, !dbg !1272
  br i1 %cmp, label %if.then6, label %if.end, !dbg !1272

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !1273, !tbaa !947
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([48 x i8]* @.str109, i64 0, i64 0), i32 %0, i32 24) #6, !dbg !1273
  %.pr = load i32* @file_version, align 4, !dbg !1275, !tbaa !1059
  %cmp5 = icmp sgt i32 %.pr, 0, !dbg !1275
  br i1 %cmp5, label %if.then6, label %if.end1501, !dbg !1275

if.then6:                                         ; preds = %entry, %if.end
  %tobool = icmp ne i32 %bRead, 0, !dbg !1276
  br i1 %tobool, label %cond.true19, label %cond.false21, !dbg !1276

cond.true19:                                      ; preds = %if.then6
  %2 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1276, !tbaa !947
  %3 = bitcast %struct.t_inputrec* %ir to i8*, !dbg !1276
  %call7 = call i32 %2(i8* %3, i32 1, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str110, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 133) #6, !dbg !1276
  %4 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1277, !tbaa !947
  %nsteps = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 1, !dbg !1277
  %5 = bitcast i32* %nsteps to i8*, !dbg !1277
  %call12 = call i32 %4(i8* %5, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str111, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 134) #6, !dbg !1277
  %6 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1278, !tbaa !947
  %ePBC = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 25, !dbg !1278
  %7 = bitcast i32* %ePBC to i8*, !dbg !1278
  %call20 = call i32 %6(i8* %7, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str112, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 135) #6, !dbg !1278
  br label %cond.end24, !dbg !1278

cond.false21:                                     ; preds = %if.then6
  %8 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1276, !tbaa !947
  %9 = bitcast %struct.t_inputrec* %ir to i8*, !dbg !1276
  %call9 = call i32 %8(i8* %9, i32 1, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str110, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 133) #6, !dbg !1276
  %10 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1277, !tbaa !947
  %nsteps14 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 1, !dbg !1277
  %11 = bitcast i32* %nsteps14 to i8*, !dbg !1277
  %call15 = call i32 %10(i8* %11, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str111, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 134) #6, !dbg !1277
  %12 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1278, !tbaa !947
  %ePBC22 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 25, !dbg !1278
  %13 = bitcast i32* %ePBC22 to i8*, !dbg !1278
  %call23 = call i32 %12(i8* %13, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str112, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 135) #6, !dbg !1278
  br label %cond.end24, !dbg !1278

cond.end24:                                       ; preds = %cond.false21, %cond.true19
  %14 = load i32* @file_version, align 4, !dbg !1279, !tbaa !1059
  %cmp26 = icmp slt i32 %14, 16, !dbg !1279
  br i1 %cmp26, label %land.lhs.true, label %if.end31, !dbg !1279

land.lhs.true:                                    ; preds = %cond.end24
  %ePBC27 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 25, !dbg !1279
  %15 = load i32* %ePBC27, align 4, !dbg !1279, !tbaa !1059
  %cmp28 = icmp eq i32 %15, 2, !dbg !1279
  br i1 %cmp28, label %if.then29, label %if.end31, !dbg !1279

if.then29:                                        ; preds = %land.lhs.true
  store i32 1, i32* %ePBC27, align 4, !dbg !1280, !tbaa !1059
  br label %if.end31, !dbg !1280

if.end31:                                         ; preds = %if.then29, %land.lhs.true, %cond.end24
  br i1 %tobool, label %cond.true153, label %cond.false155, !dbg !1281

cond.true153:                                     ; preds = %if.end31
  %16 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1281, !tbaa !947
  %ns_type = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 2, !dbg !1281
  %17 = bitcast i32* %ns_type to i8*, !dbg !1281
  %call34 = call i32 %16(i8* %17, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str113, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 138) #6, !dbg !1281
  %18 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1282, !tbaa !947
  %nstlist = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 3, !dbg !1282
  %19 = bitcast i32* %nstlist to i8*, !dbg !1282
  %call42 = call i32 %18(i8* %19, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str114, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 139) #6, !dbg !1282
  %20 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1283, !tbaa !947
  %ndelta = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 4, !dbg !1283
  %21 = bitcast i32* %ndelta to i8*, !dbg !1283
  %call50 = call i32 %20(i8* %21, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str115, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 140) #6, !dbg !1283
  %22 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1284, !tbaa !947
  %bDomDecomp = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 5, !dbg !1284
  %23 = bitcast i32* %bDomDecomp to i8*, !dbg !1284
  %call58 = call i32 %22(i8* %23, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str116, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 141) #6, !dbg !1284
  %24 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1285, !tbaa !947
  %decomp_dir = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 6, !dbg !1285
  %25 = bitcast i32* %decomp_dir to i8*, !dbg !1285
  %call66 = call i32 %24(i8* %25, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str117, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 142) #6, !dbg !1285
  %26 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1286, !tbaa !947
  %nstcomm = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 7, !dbg !1286
  %27 = bitcast i32* %nstcomm to i8*, !dbg !1286
  %call74 = call i32 %26(i8* %27, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 143) #6, !dbg !1286
  %28 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1287, !tbaa !947
  %nstcgsteep = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 63, !dbg !1287
  %29 = bitcast i32* %nstcgsteep to i8*, !dbg !1287
  %call82 = call i32 %28(i8* %29, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str119, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 144) #6, !dbg !1287
  %30 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1288, !tbaa !947
  %nstlog = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 8, !dbg !1288
  %31 = bitcast i32* %nstlog to i8*, !dbg !1288
  %call90 = call i32 %30(i8* %31, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str120, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 145) #6, !dbg !1288
  %32 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1289, !tbaa !947
  %nstxout = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 9, !dbg !1289
  %33 = bitcast i32* %nstxout to i8*, !dbg !1289
  %call98 = call i32 %32(i8* %33, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str121, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 146) #6, !dbg !1289
  %34 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1290, !tbaa !947
  %nstvout = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 10, !dbg !1290
  %35 = bitcast i32* %nstvout to i8*, !dbg !1290
  %call106 = call i32 %34(i8* %35, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str122, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 147) #6, !dbg !1290
  %36 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1291, !tbaa !947
  %nstfout = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 11, !dbg !1291
  %37 = bitcast i32* %nstfout to i8*, !dbg !1291
  %call114 = call i32 %36(i8* %37, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str123, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 148) #6, !dbg !1291
  %38 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1292, !tbaa !947
  %nstenergy = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 12, !dbg !1292
  %39 = bitcast i32* %nstenergy to i8*, !dbg !1292
  %call122 = call i32 %38(i8* %39, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str124, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 149) #6, !dbg !1292
  %40 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1293, !tbaa !947
  %nstxtcout = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 13, !dbg !1293
  %41 = bitcast i32* %nstxtcout to i8*, !dbg !1293
  %call130 = call i32 %40(i8* %41, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str125, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 150) #6, !dbg !1293
  %42 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1294, !tbaa !947
  %init_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 14, !dbg !1294
  %43 = bitcast float* %init_t to i8*, !dbg !1294
  %call138 = call i32 %42(i8* %43, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str126, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 151) #6, !dbg !1294
  %44 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1295, !tbaa !947
  %delta_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15, !dbg !1295
  %45 = bitcast float* %delta_t to i8*, !dbg !1295
  %call146 = call i32 %44(i8* %45, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str127, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 152) #6, !dbg !1295
  %46 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1296, !tbaa !947
  %xtcprec = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 16, !dbg !1296
  %47 = bitcast float* %xtcprec to i8*, !dbg !1296
  %call154 = call i32 %46(i8* %47, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str128, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 153) #6, !dbg !1296
  br label %cond.end158, !dbg !1296

cond.false155:                                    ; preds = %if.end31
  %48 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1281, !tbaa !947
  %ns_type36 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 2, !dbg !1281
  %49 = bitcast i32* %ns_type36 to i8*, !dbg !1281
  %call37 = call i32 %48(i8* %49, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str113, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 138) #6, !dbg !1281
  %50 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1282, !tbaa !947
  %nstlist44 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 3, !dbg !1282
  %51 = bitcast i32* %nstlist44 to i8*, !dbg !1282
  %call45 = call i32 %50(i8* %51, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str114, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 139) #6, !dbg !1282
  %52 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1283, !tbaa !947
  %ndelta52 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 4, !dbg !1283
  %53 = bitcast i32* %ndelta52 to i8*, !dbg !1283
  %call53 = call i32 %52(i8* %53, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str115, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 140) #6, !dbg !1283
  %54 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1284, !tbaa !947
  %bDomDecomp60 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 5, !dbg !1284
  %55 = bitcast i32* %bDomDecomp60 to i8*, !dbg !1284
  %call61 = call i32 %54(i8* %55, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str116, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 141) #6, !dbg !1284
  %56 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1285, !tbaa !947
  %decomp_dir68 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 6, !dbg !1285
  %57 = bitcast i32* %decomp_dir68 to i8*, !dbg !1285
  %call69 = call i32 %56(i8* %57, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str117, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 142) #6, !dbg !1285
  %58 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1286, !tbaa !947
  %nstcomm76 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 7, !dbg !1286
  %59 = bitcast i32* %nstcomm76 to i8*, !dbg !1286
  %call77 = call i32 %58(i8* %59, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 143) #6, !dbg !1286
  %60 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1287, !tbaa !947
  %nstcgsteep84 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 63, !dbg !1287
  %61 = bitcast i32* %nstcgsteep84 to i8*, !dbg !1287
  %call85 = call i32 %60(i8* %61, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str119, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 144) #6, !dbg !1287
  %62 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1288, !tbaa !947
  %nstlog92 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 8, !dbg !1288
  %63 = bitcast i32* %nstlog92 to i8*, !dbg !1288
  %call93 = call i32 %62(i8* %63, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str120, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 145) #6, !dbg !1288
  %64 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1289, !tbaa !947
  %nstxout100 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 9, !dbg !1289
  %65 = bitcast i32* %nstxout100 to i8*, !dbg !1289
  %call101 = call i32 %64(i8* %65, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str121, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 146) #6, !dbg !1289
  %66 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1290, !tbaa !947
  %nstvout108 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 10, !dbg !1290
  %67 = bitcast i32* %nstvout108 to i8*, !dbg !1290
  %call109 = call i32 %66(i8* %67, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str122, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 147) #6, !dbg !1290
  %68 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1291, !tbaa !947
  %nstfout116 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 11, !dbg !1291
  %69 = bitcast i32* %nstfout116 to i8*, !dbg !1291
  %call117 = call i32 %68(i8* %69, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str123, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 148) #6, !dbg !1291
  %70 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1292, !tbaa !947
  %nstenergy124 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 12, !dbg !1292
  %71 = bitcast i32* %nstenergy124 to i8*, !dbg !1292
  %call125 = call i32 %70(i8* %71, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str124, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 149) #6, !dbg !1292
  %72 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1293, !tbaa !947
  %nstxtcout132 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 13, !dbg !1293
  %73 = bitcast i32* %nstxtcout132 to i8*, !dbg !1293
  %call133 = call i32 %72(i8* %73, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str125, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 150) #6, !dbg !1293
  %74 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1294, !tbaa !947
  %init_t140 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 14, !dbg !1294
  %75 = bitcast float* %init_t140 to i8*, !dbg !1294
  %call141 = call i32 %74(i8* %75, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str126, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 151) #6, !dbg !1294
  %76 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1295, !tbaa !947
  %delta_t148 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15, !dbg !1295
  %77 = bitcast float* %delta_t148 to i8*, !dbg !1295
  %call149 = call i32 %76(i8* %77, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str127, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 152) #6, !dbg !1295
  %78 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1296, !tbaa !947
  %xtcprec156 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 16, !dbg !1296
  %79 = bitcast float* %xtcprec156 to i8*, !dbg !1296
  %call157 = call i32 %78(i8* %79, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str128, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 153) #6, !dbg !1296
  br label %cond.end158, !dbg !1296

cond.end158:                                      ; preds = %cond.false155, %cond.true153
  %80 = load i32* @file_version, align 4, !dbg !1297, !tbaa !1059
  %cmp160 = icmp slt i32 %80, 19, !dbg !1297
  br i1 %cmp160, label %if.then161, label %if.end186, !dbg !1297

if.then161:                                       ; preds = %cond.end158
  br i1 %tobool, label %cond.true170, label %cond.false172, !dbg !1298

cond.true170:                                     ; preds = %if.then161
  %81 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1298, !tbaa !947
  %82 = bitcast i32* %idum to i8*, !dbg !1298
  %call164 = call i32 %81(i8* %82, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 155) #6, !dbg !1298
  %83 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1300, !tbaa !947
  %call171 = call i32 %83(i8* %82, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 156) #6, !dbg !1300
  br label %if.end176, !dbg !1300

cond.false172:                                    ; preds = %if.then161
  %84 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1298, !tbaa !947
  %85 = bitcast i32* %idum to i8*, !dbg !1298
  %call166 = call i32 %84(i8* %85, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 155) #6, !dbg !1298
  %86 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1300, !tbaa !947
  %call173 = call i32 %86(i8* %85, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 156) #6, !dbg !1300
  br label %if.end176, !dbg !1300

if.end176:                                        ; preds = %cond.true170, %cond.false172
  %.pr1985 = load i32* @file_version, align 4, !dbg !1301, !tbaa !1059
  %cmp177 = icmp slt i32 %.pr1985, 18, !dbg !1301
  br i1 %cmp177, label %if.then178, label %if.end186, !dbg !1301

if.then178:                                       ; preds = %if.end176
  br i1 %tobool, label %if.end186.thread, label %if.end186.thread1987, !dbg !1302

if.end186.thread:                                 ; preds = %if.then178
  %87 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1302, !tbaa !947
  %88 = bitcast i32* %idum to i8*, !dbg !1302
  %call181 = call i32 %87(i8* %88, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 159) #6, !dbg !1302
  br label %cond.true188, !dbg !1303

if.end186.thread1987:                             ; preds = %if.then178
  %89 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1302, !tbaa !947
  %90 = bitcast i32* %idum to i8*, !dbg !1302
  %call183 = call i32 %89(i8* %90, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 159) #6, !dbg !1302
  br label %cond.false190, !dbg !1303

if.end186:                                        ; preds = %cond.end158, %if.end176
  br i1 %tobool, label %cond.true188, label %cond.false190, !dbg !1303

cond.true188:                                     ; preds = %if.end186.thread, %if.end186
  %91 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1303, !tbaa !947
  %rlist = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 35, !dbg !1303
  %92 = bitcast float* %rlist to i8*, !dbg !1303
  %call189 = call i32 %91(i8* %92, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str130, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 160) #6, !dbg !1303
  br label %cond.end193, !dbg !1303

cond.false190:                                    ; preds = %if.end186.thread1987, %if.end186
  %93 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1303, !tbaa !947
  %rlist191 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 35, !dbg !1303
  %94 = bitcast float* %rlist191 to i8*, !dbg !1303
  %call192 = call i32 %93(i8* %94, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str130, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 160) #6, !dbg !1303
  br label %cond.end193, !dbg !1303

cond.end193:                                      ; preds = %cond.false190, %cond.true188
  br i1 %tobool, label %cond.true292, label %cond.false294, !dbg !1304

cond.true292:                                     ; preds = %cond.end193
  %95 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1304, !tbaa !947
  %coulombtype = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 36, !dbg !1304
  %96 = bitcast i32* %coulombtype to i8*, !dbg !1304
  %call197 = call i32 %95(i8* %96, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str131, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 161) #6, !dbg !1304
  %97 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1305, !tbaa !947
  %rcoulomb_switch = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37, !dbg !1305
  %98 = bitcast float* %rcoulomb_switch to i8*, !dbg !1305
  %call205 = call i32 %97(i8* %98, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str132, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 162) #6, !dbg !1305
  %99 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1306, !tbaa !947
  %rcoulomb = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38, !dbg !1306
  %100 = bitcast float* %rcoulomb to i8*, !dbg !1306
  %call213 = call i32 %99(i8* %100, i32 1, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str133, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 163) #6, !dbg !1306
  %101 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1307, !tbaa !947
  %vdwtype = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 39, !dbg !1307
  %102 = bitcast i32* %vdwtype to i8*, !dbg !1307
  %call221 = call i32 %101(i8* %102, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 164) #6, !dbg !1307
  %103 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1308, !tbaa !947
  %rvdw_switch = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 40, !dbg !1308
  %104 = bitcast float* %rvdw_switch to i8*, !dbg !1308
  %call229 = call i32 %103(i8* %104, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str135, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 165) #6, !dbg !1308
  %105 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1309, !tbaa !947
  %rvdw = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 41, !dbg !1309
  %106 = bitcast float* %rvdw to i8*, !dbg !1309
  %call237 = call i32 %105(i8* %106, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str136, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 166) #6, !dbg !1309
  %107 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1310, !tbaa !947
  %eDispCorr = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 43, !dbg !1310
  %108 = bitcast i32* %eDispCorr to i8*, !dbg !1310
  %call245 = call i32 %107(i8* %108, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str137, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 167) #6, !dbg !1310
  %109 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1311, !tbaa !947
  %epsilon_r = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 42, !dbg !1311
  %110 = bitcast float* %epsilon_r to i8*, !dbg !1311
  %call253 = call i32 %109(i8* %110, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str138, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 168) #6, !dbg !1311
  %111 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1312, !tbaa !947
  %nkx = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 17, !dbg !1312
  %112 = bitcast i32* %nkx to i8*, !dbg !1312
  %call261 = call i32 %111(i8* %112, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str139, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 169) #6, !dbg !1312
  %113 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1313, !tbaa !947
  %nky = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 18, !dbg !1313
  %114 = bitcast i32* %nky to i8*, !dbg !1313
  %call269 = call i32 %113(i8* %114, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str140, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 170) #6, !dbg !1313
  %115 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1314, !tbaa !947
  %nkz = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 19, !dbg !1314
  %116 = bitcast i32* %nkz to i8*, !dbg !1314
  %call277 = call i32 %115(i8* %116, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str141, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 171) #6, !dbg !1314
  %117 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1315, !tbaa !947
  %pme_order = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 20, !dbg !1315
  %118 = bitcast i32* %pme_order to i8*, !dbg !1315
  %call285 = call i32 %117(i8* %118, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str142, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 172) #6, !dbg !1315
  %119 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1316, !tbaa !947
  %ewald_rtol = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 21, !dbg !1316
  %120 = bitcast float* %ewald_rtol to i8*, !dbg !1316
  %call293 = call i32 %119(i8* %120, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str143, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 173) #6, !dbg !1316
  br label %cond.end297, !dbg !1316

cond.false294:                                    ; preds = %cond.end193
  %121 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1304, !tbaa !947
  %coulombtype199 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 36, !dbg !1304
  %122 = bitcast i32* %coulombtype199 to i8*, !dbg !1304
  %call200 = call i32 %121(i8* %122, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str131, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 161) #6, !dbg !1304
  %123 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1305, !tbaa !947
  %rcoulomb_switch207 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37, !dbg !1305
  %124 = bitcast float* %rcoulomb_switch207 to i8*, !dbg !1305
  %call208 = call i32 %123(i8* %124, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str132, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 162) #6, !dbg !1305
  %125 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1306, !tbaa !947
  %rcoulomb215 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38, !dbg !1306
  %126 = bitcast float* %rcoulomb215 to i8*, !dbg !1306
  %call216 = call i32 %125(i8* %126, i32 1, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str133, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 163) #6, !dbg !1306
  %127 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1307, !tbaa !947
  %vdwtype223 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 39, !dbg !1307
  %128 = bitcast i32* %vdwtype223 to i8*, !dbg !1307
  %call224 = call i32 %127(i8* %128, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 164) #6, !dbg !1307
  %129 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1308, !tbaa !947
  %rvdw_switch231 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 40, !dbg !1308
  %130 = bitcast float* %rvdw_switch231 to i8*, !dbg !1308
  %call232 = call i32 %129(i8* %130, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str135, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 165) #6, !dbg !1308
  %131 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1309, !tbaa !947
  %rvdw239 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 41, !dbg !1309
  %132 = bitcast float* %rvdw239 to i8*, !dbg !1309
  %call240 = call i32 %131(i8* %132, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str136, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 166) #6, !dbg !1309
  %133 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1310, !tbaa !947
  %eDispCorr247 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 43, !dbg !1310
  %134 = bitcast i32* %eDispCorr247 to i8*, !dbg !1310
  %call248 = call i32 %133(i8* %134, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str137, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 167) #6, !dbg !1310
  %135 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1311, !tbaa !947
  %epsilon_r255 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 42, !dbg !1311
  %136 = bitcast float* %epsilon_r255 to i8*, !dbg !1311
  %call256 = call i32 %135(i8* %136, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str138, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 168) #6, !dbg !1311
  %137 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1312, !tbaa !947
  %nkx263 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 17, !dbg !1312
  %138 = bitcast i32* %nkx263 to i8*, !dbg !1312
  %call264 = call i32 %137(i8* %138, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str139, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 169) #6, !dbg !1312
  %139 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1313, !tbaa !947
  %nky271 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 18, !dbg !1313
  %140 = bitcast i32* %nky271 to i8*, !dbg !1313
  %call272 = call i32 %139(i8* %140, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str140, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 170) #6, !dbg !1313
  %141 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1314, !tbaa !947
  %nkz279 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 19, !dbg !1314
  %142 = bitcast i32* %nkz279 to i8*, !dbg !1314
  %call280 = call i32 %141(i8* %142, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str141, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 171) #6, !dbg !1314
  %143 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1315, !tbaa !947
  %pme_order287 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 20, !dbg !1315
  %144 = bitcast i32* %pme_order287 to i8*, !dbg !1315
  %call288 = call i32 %143(i8* %144, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str142, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 172) #6, !dbg !1315
  %145 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1316, !tbaa !947
  %ewald_rtol295 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 21, !dbg !1316
  %146 = bitcast float* %ewald_rtol295 to i8*, !dbg !1316
  %call296 = call i32 %145(i8* %146, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str143, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 173) #6, !dbg !1316
  br label %cond.end297, !dbg !1316

cond.end297:                                      ; preds = %cond.false294, %cond.true292
  %147 = load i32* @file_version, align 4, !dbg !1317, !tbaa !1059
  %cmp299 = icmp sgt i32 %147, 23, !dbg !1317
  br i1 %cmp299, label %if.then300, label %if.else, !dbg !1317

if.then300:                                       ; preds = %cond.end297
  br i1 %tobool, label %cond.true302, label %cond.false304, !dbg !1318

cond.true302:                                     ; preds = %if.then300
  %148 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1318, !tbaa !947
  %ewald_geometry = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 22, !dbg !1318
  %149 = bitcast i32* %ewald_geometry to i8*, !dbg !1318
  %call303 = call i32 %148(i8* %149, i32 1, i32 1, i8* getelementptr inbounds ([19 x i8]* @.str144, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 176) #6, !dbg !1318
  br label %if.end310, !dbg !1318

cond.false304:                                    ; preds = %if.then300
  %150 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1318, !tbaa !947
  %ewald_geometry305 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 22, !dbg !1318
  %151 = bitcast i32* %ewald_geometry305 to i8*, !dbg !1318
  %call306 = call i32 %150(i8* %151, i32 1, i32 1, i8* getelementptr inbounds ([19 x i8]* @.str144, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 176) #6, !dbg !1318
  br label %if.end310, !dbg !1318

if.else:                                          ; preds = %cond.end297
  %ewald_geometry309 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 22, !dbg !1319
  store i32 0, i32* %ewald_geometry309, align 4, !dbg !1319, !tbaa !1059
  br label %if.end310

if.end310:                                        ; preds = %cond.true302, %cond.false304, %if.else
  %152 = load i32* @file_version, align 4, !dbg !1320, !tbaa !1059
  %cmp311 = icmp slt i32 %152, 18, !dbg !1320
  br i1 %cmp311, label %if.then312, label %if.else323, !dbg !1320

if.then312:                                       ; preds = %if.end310
  %epsilon_surface = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 23, !dbg !1321
  store i32 0, i32* %epsilon_surface, align 4, !dbg !1321, !tbaa !1059
  %153 = load i32* @file_version, align 4, !dbg !1323, !tbaa !1059
  %cmp313 = icmp eq i32 %153, 17, !dbg !1323
  br i1 %cmp313, label %if.then314, label %if.end333, !dbg !1323

if.then314:                                       ; preds = %if.then312
  br i1 %tobool, label %cond.true316, label %cond.false318, !dbg !1324

cond.true316:                                     ; preds = %if.then314
  %154 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1324, !tbaa !947
  %155 = bitcast i32* %idum to i8*, !dbg !1324
  %call317 = call i32 %154(i8* %155, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 183) #6, !dbg !1324
  br label %cond.true335, !dbg !1324

cond.false318:                                    ; preds = %if.then314
  %156 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1324, !tbaa !947
  %157 = bitcast i32* %idum to i8*, !dbg !1324
  %call319 = call i32 %156(i8* %157, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 183) #6, !dbg !1324
  br label %cond.false337, !dbg !1324

if.else323:                                       ; preds = %if.end310
  br i1 %tobool, label %cond.true325, label %cond.false328, !dbg !1325

cond.true325:                                     ; preds = %if.else323
  %158 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1325, !tbaa !947
  %epsilon_surface326 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 23, !dbg !1325
  %159 = bitcast i32* %epsilon_surface326 to i8*, !dbg !1325
  %call327 = call i32 %158(i8* %159, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str145, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 186) #6, !dbg !1325
  br label %cond.true335, !dbg !1325

cond.false328:                                    ; preds = %if.else323
  %160 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1325, !tbaa !947
  %epsilon_surface329 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 23, !dbg !1325
  %161 = bitcast i32* %epsilon_surface329 to i8*, !dbg !1325
  %call330 = call i32 %160(i8* %161, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str145, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 186) #6, !dbg !1325
  br label %cond.false337, !dbg !1325

if.end333:                                        ; preds = %if.then312
  br i1 %tobool, label %cond.true335, label %cond.false337, !dbg !1326

cond.true335:                                     ; preds = %cond.true316, %cond.true325, %if.end333
  %162 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1326, !tbaa !947
  %bOptFFT = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 24, !dbg !1326
  %163 = bitcast i32* %bOptFFT to i8*, !dbg !1326
  %call336 = call i32 %162(i8* %163, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str146, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 188) #6, !dbg !1326
  br label %cond.end340, !dbg !1326

cond.false337:                                    ; preds = %cond.false318, %cond.false328, %if.end333
  %164 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1326, !tbaa !947
  %bOptFFT338 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 24, !dbg !1326
  %165 = bitcast i32* %bOptFFT338 to i8*, !dbg !1326
  %call339 = call i32 %164(i8* %165, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str146, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 188) #6, !dbg !1326
  br label %cond.end340, !dbg !1326

cond.end340:                                      ; preds = %cond.false337, %cond.true335
  br i1 %tobool, label %cond.true351, label %cond.false353, !dbg !1327

cond.true351:                                     ; preds = %cond.end340
  %166 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1327, !tbaa !947
  %bUncStart = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 26, !dbg !1327
  %167 = bitcast i32* %bUncStart to i8*, !dbg !1327
  %call344 = call i32 %166(i8* %167, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str147, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 189) #6, !dbg !1327
  %168 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1328, !tbaa !947
  %etc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 27, !dbg !1328
  %169 = bitcast i32* %etc to i8*, !dbg !1328
  %call352 = call i32 %168(i8* %169, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str148, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 190) #6, !dbg !1328
  br label %cond.end356, !dbg !1328

cond.false353:                                    ; preds = %cond.end340
  %170 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1327, !tbaa !947
  %bUncStart346 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 26, !dbg !1327
  %171 = bitcast i32* %bUncStart346 to i8*, !dbg !1327
  %call347 = call i32 %170(i8* %171, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str147, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 189) #6, !dbg !1327
  %172 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1328, !tbaa !947
  %etc354 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 27, !dbg !1328
  %173 = bitcast i32* %etc354 to i8*, !dbg !1328
  %call355 = call i32 %172(i8* %173, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str148, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 190) #6, !dbg !1328
  br label %cond.end356, !dbg !1328

cond.end356:                                      ; preds = %cond.false353, %cond.true351
  %174 = load i32* @file_version, align 4, !dbg !1329, !tbaa !1059
  %cmp358 = icmp slt i32 %174, 16, !dbg !1329
  br i1 %cmp358, label %if.then359, label %if.end367, !dbg !1329

if.then359:                                       ; preds = %cond.end356
  br i1 %tobool, label %cond.true361, label %cond.false363, !dbg !1330

cond.true361:                                     ; preds = %if.then359
  %175 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1330, !tbaa !947
  %176 = bitcast i32* %idum to i8*, !dbg !1330
  %call362 = call i32 %175(i8* %176, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 196) #6, !dbg !1330
  br label %if.end367thread-pre-split, !dbg !1330

cond.false363:                                    ; preds = %if.then359
  %177 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1330, !tbaa !947
  %178 = bitcast i32* %idum to i8*, !dbg !1330
  %call364 = call i32 %177(i8* %178, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 196) #6, !dbg !1330
  br label %if.end367thread-pre-split, !dbg !1330

if.end367thread-pre-split:                        ; preds = %cond.false363, %cond.true361
  %.pr1990 = load i32* @file_version, align 4, !dbg !1331, !tbaa !1059
  br label %if.end367

if.end367:                                        ; preds = %if.end367thread-pre-split, %cond.end356
  %179 = phi i32 [ %.pr1990, %if.end367thread-pre-split ], [ %174, %cond.end356 ], !dbg !1331
  %cmp368 = icmp slt i32 %179, 18, !dbg !1331
  br i1 %cmp368, label %if.then369, label %if.else401, !dbg !1331

if.then369:                                       ; preds = %if.end367
  br i1 %tobool, label %cond.true371, label %cond.false373, !dbg !1332

cond.true371:                                     ; preds = %if.then369
  %180 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1332, !tbaa !947
  %epct = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 29, !dbg !1332
  %181 = bitcast i32* %epct to i8*, !dbg !1332
  %call372 = call i32 %180(i8* %181, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str149, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 198) #6, !dbg !1332
  br label %cond.end376, !dbg !1332

cond.false373:                                    ; preds = %if.then369
  %182 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1332, !tbaa !947
  %epct374 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 29, !dbg !1332
  %183 = bitcast i32* %epct374 to i8*, !dbg !1332
  %call375 = call i32 %182(i8* %183, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str149, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 198) #6, !dbg !1332
  br label %cond.end376, !dbg !1332

cond.end376:                                      ; preds = %cond.false373, %cond.true371
  %184 = load i32* @file_version, align 4, !dbg !1334, !tbaa !1059
  %cmp378 = icmp slt i32 %184, 16, !dbg !1334
  %epct380 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 29, !dbg !1335
  br i1 %cmp378, label %if.then379, label %if.end392, !dbg !1334

if.then379:                                       ; preds = %cond.end376
  %185 = load i32* %epct380, align 4, !dbg !1335, !tbaa !1059
  %cmp381 = icmp eq i32 %185, 5, !dbg !1335
  br i1 %cmp381, label %if.then382, label %if.end384, !dbg !1335

if.then382:                                       ; preds = %if.then379
  store i32 3, i32* %epct380, align 4, !dbg !1337, !tbaa !1059
  br label %if.end384, !dbg !1337

if.end384:                                        ; preds = %if.then382, %if.then379
  br i1 %tobool, label %cond.true386, label %cond.false388, !dbg !1338

cond.true386:                                     ; preds = %if.end384
  %186 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1338, !tbaa !947
  %187 = bitcast i32* %idum to i8*, !dbg !1338
  %call387 = call i32 %186(i8* %187, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 202) #6, !dbg !1338
  br label %if.end392, !dbg !1338

cond.false388:                                    ; preds = %if.end384
  %188 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1338, !tbaa !947
  %189 = bitcast i32* %idum to i8*, !dbg !1338
  %call389 = call i32 %188(i8* %189, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 202) #6, !dbg !1338
  br label %if.end392, !dbg !1338

if.end392:                                        ; preds = %cond.end376, %cond.true386, %cond.false388
  %190 = load i32* %epct380, align 4, !dbg !1339, !tbaa !1059
  %sub = add nsw i32 %190, -1, !dbg !1339
  store i32 %sub, i32* %epct380, align 4, !dbg !1339, !tbaa !1059
  %cmp395 = icmp eq i32 %190, 0, !dbg !1340
  %epc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 28, !dbg !1341
  br i1 %cmp395, label %if.then396, label %if.else398, !dbg !1340

if.then396:                                       ; preds = %if.end392
  store i32 0, i32* %epc, align 4, !dbg !1341, !tbaa !1059
  store i32 0, i32* %epct380, align 4, !dbg !1343, !tbaa !1059
  br label %if.end420, !dbg !1344

if.else398:                                       ; preds = %if.end392
  store i32 1, i32* %epc, align 4, !dbg !1345, !tbaa !1059
  br label %if.end420

if.else401:                                       ; preds = %if.end367
  br i1 %tobool, label %if.end420.thread, label %if.end420.thread1991, !dbg !1346

if.end420.thread:                                 ; preds = %if.else401
  %191 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1346, !tbaa !947
  %epc404 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 28, !dbg !1346
  %192 = bitcast i32* %epc404 to i8*, !dbg !1346
  %call405 = call i32 %191(i8* %192, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str150, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 214) #6, !dbg !1346
  %193 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1348, !tbaa !947
  %epct413 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 29, !dbg !1348
  %194 = bitcast i32* %epct413 to i8*, !dbg !1348
  %call414 = call i32 %193(i8* %194, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str149, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 215) #6, !dbg !1348
  br label %cond.true422, !dbg !1349

if.end420.thread1991:                             ; preds = %if.else401
  %195 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1346, !tbaa !947
  %epc407 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 28, !dbg !1346
  %196 = bitcast i32* %epc407 to i8*, !dbg !1346
  %call408 = call i32 %195(i8* %196, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str150, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 214) #6, !dbg !1346
  %197 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1348, !tbaa !947
  %epct416 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 29, !dbg !1348
  %198 = bitcast i32* %epct416 to i8*, !dbg !1348
  %call417 = call i32 %197(i8* %198, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str149, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 215) #6, !dbg !1348
  br label %cond.false424, !dbg !1349

if.end420:                                        ; preds = %if.then396, %if.else398
  br i1 %tobool, label %cond.true422, label %cond.false424, !dbg !1349

cond.true422:                                     ; preds = %if.end420.thread, %if.end420
  %199 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1349, !tbaa !947
  %tau_p = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 30, !dbg !1349
  %200 = bitcast float* %tau_p to i8*, !dbg !1349
  %call423 = call i32 %199(i8* %200, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str151, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 217) #6, !dbg !1349
  br label %cond.end427, !dbg !1349

cond.false424:                                    ; preds = %if.end420.thread1991, %if.end420
  %201 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1349, !tbaa !947
  %tau_p425 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 30, !dbg !1349
  %202 = bitcast float* %tau_p425 to i8*, !dbg !1349
  %call426 = call i32 %201(i8* %202, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str151, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 217) #6, !dbg !1349
  br label %cond.end427, !dbg !1349

cond.end427:                                      ; preds = %cond.false424, %cond.true422
  %203 = load i32* @file_version, align 4, !dbg !1350, !tbaa !1059
  %cmp429 = icmp slt i32 %203, 16, !dbg !1350
  br i1 %cmp429, label %if.then430, label %if.else446, !dbg !1350

if.then430:                                       ; preds = %cond.end427
  br i1 %tobool, label %cond.true432, label %cond.false434, !dbg !1351

cond.true432:                                     ; preds = %if.then430
  %204 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1351, !tbaa !947
  %205 = bitcast [3 x float]* %vdum to i8*, !dbg !1351
  %call433 = call i32 %204(i8* %205, i32 1, i32 4, i8* getelementptr inbounds ([5 x i8]* @.str152, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 219) #6, !dbg !1351
  br label %cond.end437, !dbg !1351

cond.false434:                                    ; preds = %if.then430
  %206 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1351, !tbaa !947
  %207 = bitcast [3 x float]* %vdum to i8*, !dbg !1351
  %call436 = call i32 %206(i8* %207, i32 1, i32 4, i8* getelementptr inbounds ([5 x i8]* @.str152, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 219) #6, !dbg !1351
  br label %cond.end437, !dbg !1351

cond.end437:                                      ; preds = %cond.false434, %cond.true432
  %arraydecay439 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 0, !dbg !1353
  call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay439}, i64 0, metadata !1354) #2, !dbg !1355
  call void @llvm.dbg.value(metadata !1356, i64 0, metadata !1357) #2, !dbg !1358
  %208 = bitcast [3 x float]* %arraydecay439 to i8*, !dbg !1359
  call void @llvm.memset.p0i8.i64(i8* %208, i8 0, i64 36, i32 4, i1 false) #2, !dbg !1360
  call void @llvm.dbg.value(metadata !177, i64 0, metadata !846), !dbg !1361
  br label %for.body, !dbg !1361

for.body:                                         ; preds = %for.body, %cond.end437
  %indvars.iv2061 = phi i64 [ 0, %cond.end437 ], [ %indvars.iv.next2062, %for.body ]
  %arrayidx = getelementptr inbounds [3 x float]* %vdum, i64 0, i64 %indvars.iv2061, !dbg !1363
  %209 = load float* %arrayidx, align 4, !dbg !1363, !tbaa !1092
  %arrayidx445 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 %indvars.iv2061, i64 %indvars.iv2061, !dbg !1363
  store float %209, float* %arrayidx445, align 4, !dbg !1363, !tbaa !1092
  %indvars.iv.next2062 = add i64 %indvars.iv2061, 1, !dbg !1361
  %lftr.wideiv2063 = trunc i64 %indvars.iv.next2062 to i32, !dbg !1361
  %exitcond2064 = icmp eq i32 %lftr.wideiv2063, 3, !dbg !1361
  br i1 %exitcond2064, label %if.end486, label %for.body, !dbg !1361

if.else446:                                       ; preds = %cond.end427
  br i1 %tobool, label %cond.true474, label %cond.false479, !dbg !1364

cond.true474:                                     ; preds = %if.else446
  %210 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1364, !tbaa !947
  %arraydecay451 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 0, i64 0, !dbg !1364
  %211 = bitcast float* %arraydecay451 to i8*, !dbg !1364
  %call452 = call i32 %210(i8* %211, i32 1, i32 4, i8* getelementptr inbounds ([14 x i8]* @.str153, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 224) #6, !dbg !1364
  %212 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1366, !tbaa !947
  %arraydecay464 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 1, i64 0, !dbg !1366
  %213 = bitcast float* %arraydecay464 to i8*, !dbg !1366
  %call465 = call i32 %212(i8* %213, i32 1, i32 4, i8* getelementptr inbounds ([14 x i8]* @.str154, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 225) #6, !dbg !1366
  %214 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1367, !tbaa !947
  %arraydecay477 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 2, i64 0, !dbg !1367
  %215 = bitcast float* %arraydecay477 to i8*, !dbg !1367
  %call478 = call i32 %214(i8* %215, i32 1, i32 4, i8* getelementptr inbounds ([14 x i8]* @.str155, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 226) #6, !dbg !1367
  br label %if.end486, !dbg !1367

cond.false479:                                    ; preds = %if.else446
  %216 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1364, !tbaa !947
  %arraydecay456 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 0, i64 0, !dbg !1364
  %217 = bitcast float* %arraydecay456 to i8*, !dbg !1364
  %call457 = call i32 %216(i8* %217, i32 1, i32 4, i8* getelementptr inbounds ([14 x i8]* @.str153, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 224) #6, !dbg !1364
  %218 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1366, !tbaa !947
  %arraydecay469 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 1, i64 0, !dbg !1366
  %219 = bitcast float* %arraydecay469 to i8*, !dbg !1366
  %call470 = call i32 %218(i8* %219, i32 1, i32 4, i8* getelementptr inbounds ([14 x i8]* @.str154, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 225) #6, !dbg !1366
  %220 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1367, !tbaa !947
  %arraydecay482 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 2, i64 0, !dbg !1367
  %221 = bitcast float* %arraydecay482 to i8*, !dbg !1367
  %call483 = call i32 %220(i8* %221, i32 1, i32 4, i8* getelementptr inbounds ([14 x i8]* @.str155, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 226) #6, !dbg !1367
  br label %if.end486, !dbg !1367

if.end486:                                        ; preds = %for.body, %cond.true474, %cond.false479
  %222 = load i32* @file_version, align 4, !dbg !1368, !tbaa !1059
  %cmp487 = icmp slt i32 %222, 16, !dbg !1368
  br i1 %cmp487, label %if.then488, label %if.else512, !dbg !1368

if.then488:                                       ; preds = %if.end486
  br i1 %tobool, label %cond.true490, label %cond.false493, !dbg !1369

cond.true490:                                     ; preds = %if.then488
  %223 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1369, !tbaa !947
  %224 = bitcast [3 x float]* %vdum to i8*, !dbg !1369
  %call492 = call i32 %223(i8* %224, i32 1, i32 4, i8* getelementptr inbounds ([5 x i8]* @.str152, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 229) #6, !dbg !1369
  br label %cond.end496, !dbg !1369

cond.false493:                                    ; preds = %if.then488
  %225 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1369, !tbaa !947
  %226 = bitcast [3 x float]* %vdum to i8*, !dbg !1369
  %call495 = call i32 %225(i8* %226, i32 1, i32 4, i8* getelementptr inbounds ([5 x i8]* @.str152, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 229) #6, !dbg !1369
  br label %cond.end496, !dbg !1369

cond.end496:                                      ; preds = %cond.false493, %cond.true490
  %arraydecay498 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 0, !dbg !1371
  call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay498}, i64 0, metadata !1372) #2, !dbg !1373
  call void @llvm.dbg.value(metadata !1356, i64 0, metadata !1374) #2, !dbg !1375
  %227 = bitcast [3 x float]* %arraydecay498 to i8*, !dbg !1376
  call void @llvm.memset.p0i8.i64(i8* %227, i8 0, i64 36, i32 4, i1 false) #2, !dbg !1377
  call void @llvm.dbg.value(metadata !177, i64 0, metadata !846), !dbg !1378
  br label %for.body501, !dbg !1378

for.body501:                                      ; preds = %for.body501, %cond.end496
  %indvars.iv2057 = phi i64 [ 0, %cond.end496 ], [ %indvars.iv.next2058, %for.body501 ]
  %arrayidx503 = getelementptr inbounds [3 x float]* %vdum, i64 0, i64 %indvars.iv2057, !dbg !1380
  %228 = load float* %arrayidx503, align 4, !dbg !1380, !tbaa !1092
  %arrayidx508 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 %indvars.iv2057, i64 %indvars.iv2057, !dbg !1380
  store float %228, float* %arrayidx508, align 4, !dbg !1380, !tbaa !1092
  %indvars.iv.next2058 = add i64 %indvars.iv2057, 1, !dbg !1378
  %lftr.wideiv2059 = trunc i64 %indvars.iv.next2058 to i32, !dbg !1378
  %exitcond2060 = icmp eq i32 %lftr.wideiv2059, 3, !dbg !1378
  br i1 %exitcond2060, label %if.end552, label %for.body501, !dbg !1378

if.else512:                                       ; preds = %if.end486
  br i1 %tobool, label %if.end552.thread, label %if.end552.thread1992, !dbg !1381

if.end552.thread:                                 ; preds = %if.else512
  %229 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1381, !tbaa !947
  %arraydecay517 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 0, i64 0, !dbg !1381
  %230 = bitcast float* %arraydecay517 to i8*, !dbg !1381
  %call518 = call i32 %229(i8* %230, i32 1, i32 4, i8* getelementptr inbounds ([17 x i8]* @.str156, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 235) #6, !dbg !1381
  %231 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1383, !tbaa !947
  %arraydecay530 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 1, i64 0, !dbg !1383
  %232 = bitcast float* %arraydecay530 to i8*, !dbg !1383
  %call531 = call i32 %231(i8* %232, i32 1, i32 4, i8* getelementptr inbounds ([17 x i8]* @.str157, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 236) #6, !dbg !1383
  %233 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1384, !tbaa !947
  %arraydecay543 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 2, i64 0, !dbg !1384
  %234 = bitcast float* %arraydecay543 to i8*, !dbg !1384
  %call544 = call i32 %233(i8* %234, i32 1, i32 4, i8* getelementptr inbounds ([17 x i8]* @.str158, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 237) #6, !dbg !1384
  br label %cond.true554, !dbg !1385

if.end552.thread1992:                             ; preds = %if.else512
  %235 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1381, !tbaa !947
  %arraydecay522 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 0, i64 0, !dbg !1381
  %236 = bitcast float* %arraydecay522 to i8*, !dbg !1381
  %call523 = call i32 %235(i8* %236, i32 1, i32 4, i8* getelementptr inbounds ([17 x i8]* @.str156, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 235) #6, !dbg !1381
  %237 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1383, !tbaa !947
  %arraydecay535 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 1, i64 0, !dbg !1383
  %238 = bitcast float* %arraydecay535 to i8*, !dbg !1383
  %call536 = call i32 %237(i8* %238, i32 1, i32 4, i8* getelementptr inbounds ([17 x i8]* @.str157, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 236) #6, !dbg !1383
  %239 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1384, !tbaa !947
  %arraydecay548 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 2, i64 0, !dbg !1384
  %240 = bitcast float* %arraydecay548 to i8*, !dbg !1384
  %call549 = call i32 %239(i8* %240, i32 1, i32 4, i8* getelementptr inbounds ([17 x i8]* @.str158, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 237) #6, !dbg !1384
  br label %cond.false556, !dbg !1385

if.end552:                                        ; preds = %for.body501
  br i1 %tobool, label %cond.true554, label %cond.false556, !dbg !1385

cond.true554:                                     ; preds = %if.end552.thread, %if.end552
  %241 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1385, !tbaa !947
  %bSimAnn = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 33, !dbg !1385
  %242 = bitcast i32* %bSimAnn to i8*, !dbg !1385
  %call555 = call i32 %241(i8* %242, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str159, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 239) #6, !dbg !1385
  br label %cond.end559, !dbg !1385

cond.false556:                                    ; preds = %if.end552.thread1992, %if.end552
  %243 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1385, !tbaa !947
  %bSimAnn557 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 33, !dbg !1385
  %244 = bitcast i32* %bSimAnn557 to i8*, !dbg !1385
  %call558 = call i32 %243(i8* %244, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str159, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 239) #6, !dbg !1385
  br label %cond.end559, !dbg !1385

cond.end559:                                      ; preds = %cond.false556, %cond.true554
  br i1 %tobool, label %cond.true595, label %cond.false597, !dbg !1386

cond.true595:                                     ; preds = %cond.end559
  %245 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1386, !tbaa !947
  %zero_temp_time = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 34, !dbg !1386
  %246 = bitcast float* %zero_temp_time to i8*, !dbg !1386
  %call563 = call i32 %245(i8* %246, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str160, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 240) #6, !dbg !1386
  %247 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1387, !tbaa !947
  %epsilon_r571 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 42, !dbg !1387
  %248 = bitcast float* %epsilon_r571 to i8*, !dbg !1387
  %call572 = call i32 %247(i8* %248, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str138, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 241) #6, !dbg !1387
  %249 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1388, !tbaa !947
  %shake_tol = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 44, !dbg !1388
  %250 = bitcast float* %shake_tol to i8*, !dbg !1388
  %call580 = call i32 %249(i8* %250, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str161, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 242) #6, !dbg !1388
  %251 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1389, !tbaa !947
  %fudgeQQ = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 45, !dbg !1389
  %252 = bitcast float* %fudgeQQ to i8*, !dbg !1389
  %call588 = call i32 %251(i8* %252, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str162, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 243) #6, !dbg !1389
  %253 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1390, !tbaa !947
  %efep = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46, !dbg !1390
  %254 = bitcast i32* %efep to i8*, !dbg !1390
  %call596 = call i32 %253(i8* %254, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str163, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 244) #6, !dbg !1390
  br label %cond.end600, !dbg !1390

cond.false597:                                    ; preds = %cond.end559
  %255 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1386, !tbaa !947
  %zero_temp_time565 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 34, !dbg !1386
  %256 = bitcast float* %zero_temp_time565 to i8*, !dbg !1386
  %call566 = call i32 %255(i8* %256, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str160, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 240) #6, !dbg !1386
  %257 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1387, !tbaa !947
  %epsilon_r574 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 42, !dbg !1387
  %258 = bitcast float* %epsilon_r574 to i8*, !dbg !1387
  %call575 = call i32 %257(i8* %258, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str138, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 241) #6, !dbg !1387
  %259 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1388, !tbaa !947
  %shake_tol582 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 44, !dbg !1388
  %260 = bitcast float* %shake_tol582 to i8*, !dbg !1388
  %call583 = call i32 %259(i8* %260, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str161, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 242) #6, !dbg !1388
  %261 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1389, !tbaa !947
  %fudgeQQ590 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 45, !dbg !1389
  %262 = bitcast float* %fudgeQQ590 to i8*, !dbg !1389
  %call591 = call i32 %261(i8* %262, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str162, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 243) #6, !dbg !1389
  %263 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1390, !tbaa !947
  %efep598 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46, !dbg !1390
  %264 = bitcast i32* %efep598 to i8*, !dbg !1390
  %call599 = call i32 %263(i8* %264, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str163, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 244) #6, !dbg !1390
  br label %cond.end600, !dbg !1390

cond.end600:                                      ; preds = %cond.false597, %cond.true595
  %265 = load i32* @file_version, align 4, !dbg !1391, !tbaa !1059
  %cmp602 = icmp slt i32 %265, 15, !dbg !1391
  br i1 %cmp602, label %land.lhs.true603, label %if.end608, !dbg !1391

land.lhs.true603:                                 ; preds = %cond.end600
  %efep604 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46, !dbg !1391
  %266 = load i32* %efep604, align 4, !dbg !1391, !tbaa !1059
  %cmp605 = icmp sgt i32 %266, 0, !dbg !1391
  br i1 %cmp605, label %if.then606, label %if.end608, !dbg !1391

if.then606:                                       ; preds = %land.lhs.true603
  store i32 1, i32* %efep604, align 4, !dbg !1392, !tbaa !1059
  br label %if.end608, !dbg !1392

if.end608:                                        ; preds = %if.then606, %land.lhs.true603, %cond.end600
  br i1 %tobool, label %cond.true618, label %cond.false620, !dbg !1393

cond.true618:                                     ; preds = %if.end608
  %267 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1393, !tbaa !947
  %init_lambda = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 47, !dbg !1393
  %268 = bitcast float* %init_lambda to i8*, !dbg !1393
  %call611 = call i32 %267(i8* %268, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str164, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 247) #6, !dbg !1393
  %269 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1394, !tbaa !947
  %delta_lambda = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 48, !dbg !1394
  %270 = bitcast float* %delta_lambda to i8*, !dbg !1394
  %call619 = call i32 %269(i8* %270, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str165, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 248) #6, !dbg !1394
  br label %cond.end623, !dbg !1394

cond.false620:                                    ; preds = %if.end608
  %271 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1393, !tbaa !947
  %init_lambda613 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 47, !dbg !1393
  %272 = bitcast float* %init_lambda613 to i8*, !dbg !1393
  %call614 = call i32 %271(i8* %272, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str164, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 247) #6, !dbg !1393
  %273 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1394, !tbaa !947
  %delta_lambda621 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 48, !dbg !1394
  %274 = bitcast float* %delta_lambda621 to i8*, !dbg !1394
  %call622 = call i32 %273(i8* %274, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str165, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 248) #6, !dbg !1394
  br label %cond.end623, !dbg !1394

cond.end623:                                      ; preds = %cond.false620, %cond.true618
  %275 = load i32* @file_version, align 4, !dbg !1395, !tbaa !1059
  %cmp625 = icmp sgt i32 %275, 12, !dbg !1395
  br i1 %cmp625, label %if.then626, label %if.else635, !dbg !1395

if.then626:                                       ; preds = %cond.end623
  br i1 %tobool, label %cond.true628, label %cond.false630, !dbg !1396

cond.true628:                                     ; preds = %if.then626
  %276 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1396, !tbaa !947
  %sc_alpha = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 49, !dbg !1396
  %277 = bitcast float* %sc_alpha to i8*, !dbg !1396
  %call629 = call i32 %276(i8* %277, i32 1, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str166, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 250) #6, !dbg !1396
  br label %if.end637, !dbg !1396

cond.false630:                                    ; preds = %if.then626
  %278 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1396, !tbaa !947
  %sc_alpha631 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 49, !dbg !1396
  %279 = bitcast float* %sc_alpha631 to i8*, !dbg !1396
  %call632 = call i32 %278(i8* %279, i32 1, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str166, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 250) #6, !dbg !1396
  br label %if.end637, !dbg !1396

if.else635:                                       ; preds = %cond.end623
  %sc_alpha636 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 49, !dbg !1397
  store float 0.000000e+00, float* %sc_alpha636, align 4, !dbg !1397, !tbaa !1092
  br label %if.end637

if.end637:                                        ; preds = %cond.true628, %cond.false630, %if.else635
  %280 = load i32* @file_version, align 4, !dbg !1398, !tbaa !1059
  %cmp638 = icmp sgt i32 %280, 14, !dbg !1398
  br i1 %cmp638, label %if.then639, label %if.end650, !dbg !1398

if.then639:                                       ; preds = %if.end637
  br i1 %tobool, label %if.end650.thread, label %if.end650.thread1993, !dbg !1399

if.end650.thread:                                 ; preds = %if.then639
  %281 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1399, !tbaa !947
  %sc_sigma = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 50, !dbg !1399
  %282 = bitcast float* %sc_sigma to i8*, !dbg !1399
  %call642 = call i32 %281(i8* %282, i32 1, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str167, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 254) #6, !dbg !1399
  br label %cond.true652, !dbg !1400

if.end650.thread1993:                             ; preds = %if.then639
  %283 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1399, !tbaa !947
  %sc_sigma644 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 50, !dbg !1399
  %284 = bitcast float* %sc_sigma644 to i8*, !dbg !1399
  %call645 = call i32 %283(i8* %284, i32 1, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str167, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 254) #6, !dbg !1399
  br label %cond.false654, !dbg !1400

if.end650:                                        ; preds = %if.end637
  %sc_sigma649 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 50, !dbg !1401
  store float 0x3FD3333340000000, float* %sc_sigma649, align 4, !dbg !1401, !tbaa !1092
  br i1 %tobool, label %cond.true652, label %cond.false654, !dbg !1400

cond.true652:                                     ; preds = %if.end650.thread, %if.end650
  %285 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1400, !tbaa !947
  %eDisreWeighting = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 52, !dbg !1400
  %286 = bitcast i32* %eDisreWeighting to i8*, !dbg !1400
  %call653 = call i32 %285(i8* %286, i32 1, i32 1, i8* getelementptr inbounds ([20 x i8]* @.str168, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 257) #6, !dbg !1400
  br label %cond.end657, !dbg !1400

cond.false654:                                    ; preds = %if.end650.thread1993, %if.end650
  %287 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1400, !tbaa !947
  %eDisreWeighting655 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 52, !dbg !1400
  %288 = bitcast i32* %eDisreWeighting655 to i8*, !dbg !1400
  %call656 = call i32 %287(i8* %288, i32 1, i32 1, i8* getelementptr inbounds ([20 x i8]* @.str168, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 257) #6, !dbg !1400
  br label %cond.end657, !dbg !1400

cond.end657:                                      ; preds = %cond.false654, %cond.true652
  %289 = load i32* @file_version, align 4, !dbg !1402, !tbaa !1059
  %cmp659 = icmp slt i32 %289, 22, !dbg !1402
  br i1 %cmp659, label %if.then660, label %if.end668, !dbg !1402

if.then660:                                       ; preds = %cond.end657
  %eDisreWeighting661 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 52, !dbg !1403
  %290 = load i32* %eDisreWeighting661, align 4, !dbg !1403, !tbaa !1059
  %cmp662 = icmp eq i32 %290, 0, !dbg !1403
  br i1 %cmp662, label %if.then663, label %if.else665, !dbg !1403

if.then663:                                       ; preds = %if.then660
  store i32 1, i32* %eDisreWeighting661, align 4, !dbg !1405, !tbaa !1059
  br label %if.end668, !dbg !1405

if.else665:                                       ; preds = %if.then660
  store i32 0, i32* %eDisreWeighting661, align 4, !dbg !1406, !tbaa !1059
  br label %if.end668

if.end668:                                        ; preds = %if.then663, %if.else665, %cond.end657
  br i1 %tobool, label %cond.true694, label %cond.false696, !dbg !1407

cond.true694:                                     ; preds = %if.end668
  %291 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1407, !tbaa !947
  %bDisreMixed = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 53, !dbg !1407
  %292 = bitcast i32* %bDisreMixed to i8*, !dbg !1407
  %call671 = call i32 %291(i8* %292, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str169, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 264) #6, !dbg !1407
  %293 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1408, !tbaa !947
  %dr_fc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 51, !dbg !1408
  %294 = bitcast float* %dr_fc to i8*, !dbg !1408
  %call679 = call i32 %293(i8* %294, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str170, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 265) #6, !dbg !1408
  %295 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1409, !tbaa !947
  %dr_tau = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 55, !dbg !1409
  %296 = bitcast float* %dr_tau to i8*, !dbg !1409
  %call687 = call i32 %295(i8* %296, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str171, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 266) #6, !dbg !1409
  %297 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1410, !tbaa !947
  %nstdisreout = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 54, !dbg !1410
  %298 = bitcast i32* %nstdisreout to i8*, !dbg !1410
  %call695 = call i32 %297(i8* %298, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str172, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 267) #6, !dbg !1410
  br label %cond.end699, !dbg !1410

cond.false696:                                    ; preds = %if.end668
  %299 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1407, !tbaa !947
  %bDisreMixed673 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 53, !dbg !1407
  %300 = bitcast i32* %bDisreMixed673 to i8*, !dbg !1407
  %call674 = call i32 %299(i8* %300, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str169, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 264) #6, !dbg !1407
  %301 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1408, !tbaa !947
  %dr_fc681 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 51, !dbg !1408
  %302 = bitcast float* %dr_fc681 to i8*, !dbg !1408
  %call682 = call i32 %301(i8* %302, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str170, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 265) #6, !dbg !1408
  %303 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1409, !tbaa !947
  %dr_tau689 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 55, !dbg !1409
  %304 = bitcast float* %dr_tau689 to i8*, !dbg !1409
  %call690 = call i32 %303(i8* %304, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str171, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 266) #6, !dbg !1409
  %305 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1410, !tbaa !947
  %nstdisreout697 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 54, !dbg !1410
  %306 = bitcast i32* %nstdisreout697 to i8*, !dbg !1410
  %call698 = call i32 %305(i8* %306, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str172, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 267) #6, !dbg !1410
  br label %cond.end699, !dbg !1410

cond.end699:                                      ; preds = %cond.false696, %cond.true694
  %307 = load i32* @file_version, align 4, !dbg !1411, !tbaa !1059
  %cmp701 = icmp sgt i32 %307, 21, !dbg !1411
  br i1 %cmp701, label %if.then702, label %if.end731, !dbg !1411

if.then702:                                       ; preds = %cond.end699
  br i1 %tobool, label %if.end731.thread, label %if.end731.thread1994, !dbg !1412

if.end731.thread:                                 ; preds = %if.then702
  %308 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1412, !tbaa !947
  %orires_fc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 56, !dbg !1412
  %309 = bitcast float* %orires_fc to i8*, !dbg !1412
  %call705 = call i32 %308(i8* %309, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str173, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 269) #6, !dbg !1412
  %310 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1414, !tbaa !947
  %orires_tau = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 57, !dbg !1414
  %311 = bitcast float* %orires_tau to i8*, !dbg !1414
  %call713 = call i32 %310(i8* %311, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str174, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 270) #6, !dbg !1414
  %312 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1415, !tbaa !947
  %nstorireout = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 58, !dbg !1415
  %313 = bitcast i32* %nstorireout to i8*, !dbg !1415
  %call721 = call i32 %312(i8* %313, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str175, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 271) #6, !dbg !1415
  br label %cond.true733, !dbg !1416

if.end731.thread1994:                             ; preds = %if.then702
  %314 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1412, !tbaa !947
  %orires_fc707 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 56, !dbg !1412
  %315 = bitcast float* %orires_fc707 to i8*, !dbg !1412
  %call708 = call i32 %314(i8* %315, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str173, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 269) #6, !dbg !1412
  %316 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1414, !tbaa !947
  %orires_tau715 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 57, !dbg !1414
  %317 = bitcast float* %orires_tau715 to i8*, !dbg !1414
  %call716 = call i32 %316(i8* %317, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str174, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 270) #6, !dbg !1414
  %318 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1415, !tbaa !947
  %nstorireout723 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 58, !dbg !1415
  %319 = bitcast i32* %nstorireout723 to i8*, !dbg !1415
  %call724 = call i32 %318(i8* %319, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str175, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 271) #6, !dbg !1415
  br label %cond.false735, !dbg !1416

if.end731:                                        ; preds = %cond.end699
  %orires_fc728 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 56, !dbg !1417
  store float 0.000000e+00, float* %orires_fc728, align 4, !dbg !1417, !tbaa !1092
  %orires_tau729 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 57, !dbg !1419
  store float 0.000000e+00, float* %orires_tau729, align 4, !dbg !1419, !tbaa !1092
  %nstorireout730 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 58, !dbg !1420
  store i32 0, i32* %nstorireout730, align 4, !dbg !1420, !tbaa !1059
  br i1 %tobool, label %cond.true733, label %cond.false735, !dbg !1416

cond.true733:                                     ; preds = %if.end731.thread, %if.end731
  %320 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1416, !tbaa !947
  %em_stepsize = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 59, !dbg !1416
  %321 = bitcast float* %em_stepsize to i8*, !dbg !1416
  %call734 = call i32 %320(i8* %321, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str176, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 277) #6, !dbg !1416
  br label %cond.end738, !dbg !1416

cond.false735:                                    ; preds = %if.end731.thread1994, %if.end731
  %322 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1416, !tbaa !947
  %em_stepsize736 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 59, !dbg !1416
  %323 = bitcast float* %em_stepsize736 to i8*, !dbg !1416
  %call737 = call i32 %322(i8* %323, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str176, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 277) #6, !dbg !1416
  br label %cond.end738, !dbg !1416

cond.end738:                                      ; preds = %cond.false735, %cond.true733
  br i1 %tobool, label %cond.true741, label %cond.false743, !dbg !1421

cond.true741:                                     ; preds = %cond.end738
  %324 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1421, !tbaa !947
  %em_tol = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 60, !dbg !1421
  %325 = bitcast float* %em_tol to i8*, !dbg !1421
  %call742 = call i32 %324(i8* %325, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str177, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 278) #6, !dbg !1421
  br label %cond.end746, !dbg !1421

cond.false743:                                    ; preds = %cond.end738
  %326 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1421, !tbaa !947
  %em_tol744 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 60, !dbg !1421
  %327 = bitcast float* %em_tol744 to i8*, !dbg !1421
  %call745 = call i32 %326(i8* %327, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str177, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 278) #6, !dbg !1421
  br label %cond.end746, !dbg !1421

cond.end746:                                      ; preds = %cond.false743, %cond.true741
  %328 = load i32* @file_version, align 4, !dbg !1422, !tbaa !1059
  %cmp748 = icmp sgt i32 %328, 21, !dbg !1422
  br i1 %cmp748, label %if.then749, label %if.else758, !dbg !1422

if.then749:                                       ; preds = %cond.end746
  br i1 %tobool, label %cond.true751, label %cond.false753, !dbg !1423

cond.true751:                                     ; preds = %if.then749
  %329 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1423, !tbaa !947
  %bShakeSOR = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 67, !dbg !1423
  %330 = bitcast i32* %bShakeSOR to i8*, !dbg !1423
  %call752 = call i32 %329(i8* %330, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str178, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 280) #6, !dbg !1423
  br label %if.end763, !dbg !1423

cond.false753:                                    ; preds = %if.then749
  %331 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1423, !tbaa !947
  %bShakeSOR754 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 67, !dbg !1423
  %332 = bitcast i32* %bShakeSOR754 to i8*, !dbg !1423
  %call755 = call i32 %331(i8* %332, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str178, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 280) #6, !dbg !1423
  br label %if.end763, !dbg !1423

if.else758:                                       ; preds = %cond.end746
  br i1 %tobool, label %if.then760, label %if.end763, !dbg !1424

if.then760:                                       ; preds = %if.else758
  %bShakeSOR761 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 67, !dbg !1425
  store i32 1, i32* %bShakeSOR761, align 4, !dbg !1425, !tbaa !1059
  br label %if.end763, !dbg !1425

if.end763:                                        ; preds = %if.else758, %if.then760, %cond.true751, %cond.false753
  %333 = load i32* @file_version, align 4, !dbg !1426, !tbaa !1059
  %cmp764 = icmp sgt i32 %333, 10, !dbg !1426
  br i1 %cmp764, label %if.then765, label %if.else774, !dbg !1426

if.then765:                                       ; preds = %if.end763
  br i1 %tobool, label %cond.true767, label %cond.false769, !dbg !1427

cond.true767:                                     ; preds = %if.then765
  %334 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1427, !tbaa !947
  %niter = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 61, !dbg !1427
  %335 = bitcast i32* %niter to i8*, !dbg !1427
  %call768 = call i32 %334(i8* %335, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str179, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 284) #6, !dbg !1427
  br label %if.end781, !dbg !1427

cond.false769:                                    ; preds = %if.then765
  %336 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1427, !tbaa !947
  %niter770 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 61, !dbg !1427
  %337 = bitcast i32* %niter770 to i8*, !dbg !1427
  %call771 = call i32 %336(i8* %337, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str179, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 284) #6, !dbg !1427
  br label %if.end781, !dbg !1427

if.else774:                                       ; preds = %if.end763
  br i1 %tobool, label %if.then776, label %if.end781, !dbg !1428

if.then776:                                       ; preds = %if.else774
  %niter777 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 61, !dbg !1429
  store i32 25, i32* %niter777, align 4, !dbg !1429, !tbaa !1059
  %338 = load %struct._IO_FILE** @stderr, align 8, !dbg !1431, !tbaa !947
  %call779 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %338, i8* getelementptr inbounds ([53 x i8]* @.str180, i64 0, i64 0), i32 25) #6, !dbg !1431
  br label %if.end781, !dbg !1432

if.end781:                                        ; preds = %if.else774, %if.then776, %cond.true767, %cond.false769
  %339 = load i32* @file_version, align 4, !dbg !1433, !tbaa !1059
  %cmp782 = icmp sgt i32 %339, 20, !dbg !1433
  br i1 %cmp782, label %if.then783, label %if.end794, !dbg !1433

if.then783:                                       ; preds = %if.end781
  br i1 %tobool, label %if.end794.thread, label %if.end794.thread1995, !dbg !1434

if.end794.thread:                                 ; preds = %if.then783
  %340 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1434, !tbaa !947
  %fc_stepsize = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 62, !dbg !1434
  %341 = bitcast i32* %fc_stepsize to i8*, !dbg !1434
  %call786 = call i32 %340(i8* %341, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str181, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 291) #6, !dbg !1434
  br label %cond.true796, !dbg !1435

if.end794.thread1995:                             ; preds = %if.then783
  %342 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1434, !tbaa !947
  %fc_stepsize788 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 62, !dbg !1434
  %343 = bitcast i32* %fc_stepsize788 to i8*, !dbg !1434
  %call789 = call i32 %342(i8* %343, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str181, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 291) #6, !dbg !1434
  br label %cond.false798, !dbg !1435

if.end794:                                        ; preds = %if.end781
  %fc_stepsize793 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 62, !dbg !1436
  store i32 0, i32* %fc_stepsize793, align 4, !dbg !1436, !tbaa !1059
  br i1 %tobool, label %cond.true796, label %cond.false798, !dbg !1435

cond.true796:                                     ; preds = %if.end794.thread, %if.end794
  %344 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1435, !tbaa !947
  %eConstrAlg = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 64, !dbg !1435
  %345 = bitcast i32* %eConstrAlg to i8*, !dbg !1435
  %call797 = call i32 %344(i8* %345, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str182, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 294) #6, !dbg !1435
  br label %cond.end801, !dbg !1435

cond.false798:                                    ; preds = %if.end794.thread1995, %if.end794
  %346 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1435, !tbaa !947
  %eConstrAlg799 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 64, !dbg !1435
  %347 = bitcast i32* %eConstrAlg799 to i8*, !dbg !1435
  %call800 = call i32 %346(i8* %347, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str182, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 294) #6, !dbg !1435
  br label %cond.end801, !dbg !1435

cond.end801:                                      ; preds = %cond.false798, %cond.true796
  br i1 %tobool, label %cond.true812, label %cond.false814, !dbg !1437

cond.true812:                                     ; preds = %cond.end801
  %348 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1437, !tbaa !947
  %nProjOrder = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 65, !dbg !1437
  %349 = bitcast i32* %nProjOrder to i8*, !dbg !1437
  %call805 = call i32 %348(i8* %349, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str183, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 295) #6, !dbg !1437
  %350 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1438, !tbaa !947
  %LincsWarnAngle = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 66, !dbg !1438
  %351 = bitcast float* %LincsWarnAngle to i8*, !dbg !1438
  %call813 = call i32 %350(i8* %351, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str184, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 296) #6, !dbg !1438
  br label %cond.end817, !dbg !1438

cond.false814:                                    ; preds = %cond.end801
  %352 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1437, !tbaa !947
  %nProjOrder807 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 65, !dbg !1437
  %353 = bitcast i32* %nProjOrder807 to i8*, !dbg !1437
  %call808 = call i32 %352(i8* %353, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str183, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 295) #6, !dbg !1437
  %354 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1438, !tbaa !947
  %LincsWarnAngle815 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 66, !dbg !1438
  %355 = bitcast float* %LincsWarnAngle815 to i8*, !dbg !1438
  %call816 = call i32 %354(i8* %355, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str184, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 296) #6, !dbg !1438
  br label %cond.end817, !dbg !1438

cond.end817:                                      ; preds = %cond.false814, %cond.true812
  %356 = load i32* @file_version, align 4, !dbg !1439, !tbaa !1059
  %cmp819 = icmp slt i32 %356, 15, !dbg !1439
  br i1 %cmp819, label %if.then820, label %if.end828, !dbg !1439

if.then820:                                       ; preds = %cond.end817
  br i1 %tobool, label %if.end828.thread, label %if.end828.thread1996, !dbg !1440

if.end828.thread:                                 ; preds = %if.then820
  %357 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1440, !tbaa !947
  %358 = bitcast i32* %idum to i8*, !dbg !1440
  %call823 = call i32 %357(i8* %358, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 298) #6, !dbg !1440
  br label %cond.true830, !dbg !1441

if.end828.thread1996:                             ; preds = %if.then820
  %359 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1440, !tbaa !947
  %360 = bitcast i32* %idum to i8*, !dbg !1440
  %call825 = call i32 %359(i8* %360, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 298) #6, !dbg !1440
  br label %cond.false832, !dbg !1441

if.end828:                                        ; preds = %cond.end817
  br i1 %tobool, label %cond.true830, label %cond.false832, !dbg !1441

cond.true830:                                     ; preds = %if.end828.thread, %if.end828
  %361 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1441, !tbaa !947
  %bd_temp = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 68, !dbg !1441
  %362 = bitcast float* %bd_temp to i8*, !dbg !1441
  %call831 = call i32 %361(i8* %362, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str185, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 299) #6, !dbg !1441
  br label %cond.end835, !dbg !1441

cond.false832:                                    ; preds = %if.end828.thread1996, %if.end828
  %363 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1441, !tbaa !947
  %bd_temp833 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 68, !dbg !1441
  %364 = bitcast float* %bd_temp833 to i8*, !dbg !1441
  %call834 = call i32 %363(i8* %364, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str185, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 299) #6, !dbg !1441
  br label %cond.end835, !dbg !1441

cond.end835:                                      ; preds = %cond.false832, %cond.true830
  br i1 %tobool, label %cond.true846, label %cond.false848, !dbg !1442

cond.true846:                                     ; preds = %cond.end835
  %365 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1442, !tbaa !947
  %bd_fric = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 69, !dbg !1442
  %366 = bitcast float* %bd_fric to i8*, !dbg !1442
  %call839 = call i32 %365(i8* %366, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str186, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 300) #6, !dbg !1442
  %367 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1443, !tbaa !947
  %ld_seed = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 70, !dbg !1443
  %368 = bitcast i32* %ld_seed to i8*, !dbg !1443
  %call847 = call i32 %367(i8* %368, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str187, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 301) #6, !dbg !1443
  br label %cond.end851, !dbg !1443

cond.false848:                                    ; preds = %cond.end835
  %369 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1442, !tbaa !947
  %bd_fric841 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 69, !dbg !1442
  %370 = bitcast float* %bd_fric841 to i8*, !dbg !1442
  %call842 = call i32 %369(i8* %370, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str186, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 300) #6, !dbg !1442
  %371 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1443, !tbaa !947
  %ld_seed849 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 70, !dbg !1443
  %372 = bitcast i32* %ld_seed849 to i8*, !dbg !1443
  %call850 = call i32 %371(i8* %372, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str187, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 301) #6, !dbg !1443
  br label %cond.end851, !dbg !1443

cond.end851:                                      ; preds = %cond.false848, %cond.true846
  %373 = load i32* @file_version, align 4, !dbg !1444, !tbaa !1059
  %cmp853 = icmp sgt i32 %373, 13, !dbg !1444
  br i1 %cmp853, label %if.then854, label %if.else863, !dbg !1444

if.then854:                                       ; preds = %cond.end851
  br i1 %tobool, label %cond.true856, label %if.end868, !dbg !1445

cond.true856:                                     ; preds = %if.then854
  %374 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1445, !tbaa !947
  %cos_accel = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 71, !dbg !1445
  %375 = bitcast float* %cos_accel to i8*, !dbg !1445
  %call857 = call i32 %374(i8* %375, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str188, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 303) #6, !dbg !1445
  br label %if.then973, !dbg !1445

if.else863:                                       ; preds = %cond.end851
  br i1 %tobool, label %if.then865, label %cond.end970, !dbg !1446

if.then865:                                       ; preds = %if.else863
  %cos_accel866 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 71, !dbg !1447
  store float 0.000000e+00, float* %cos_accel866, align 4, !dbg !1447, !tbaa !1092
  br label %if.then973, !dbg !1447

if.end868:                                        ; preds = %if.then854
  %376 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1445, !tbaa !947
  %cos_accel859 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 71, !dbg !1445
  %377 = bitcast float* %cos_accel859 to i8*, !dbg !1445
  %call860 = call i32 %376(i8* %377, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str188, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 303) #6, !dbg !1445
  br label %cond.end970

cond.end970:                                      ; preds = %if.else863, %if.end868
  %378 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1448, !tbaa !947
  %userint1873 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 72, !dbg !1448
  %379 = bitcast i32* %userint1873 to i8*, !dbg !1448
  %call874 = call i32 %378(i8* %379, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str189, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 306) #6, !dbg !1448
  %380 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1449, !tbaa !947
  %userint2881 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 73, !dbg !1449
  %381 = bitcast i32* %userint2881 to i8*, !dbg !1449
  %call882 = call i32 %380(i8* %381, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str190, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 307) #6, !dbg !1449
  %382 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1450, !tbaa !947
  %userint3889 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 74, !dbg !1450
  %383 = bitcast i32* %userint3889 to i8*, !dbg !1450
  %call890 = call i32 %382(i8* %383, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str191, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 308) #6, !dbg !1450
  %384 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1451, !tbaa !947
  %userint4897 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 75, !dbg !1451
  %385 = bitcast i32* %userint4897 to i8*, !dbg !1451
  %call898 = call i32 %384(i8* %385, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str192, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 309) #6, !dbg !1451
  %386 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1452, !tbaa !947
  %userreal1905 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 76, !dbg !1452
  %387 = bitcast float* %userreal1905 to i8*, !dbg !1452
  %call906 = call i32 %386(i8* %387, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str193, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 310) #6, !dbg !1452
  %388 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1453, !tbaa !947
  %userreal2913 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 77, !dbg !1453
  %389 = bitcast float* %userreal2913 to i8*, !dbg !1453
  %call914 = call i32 %388(i8* %389, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str194, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 311) #6, !dbg !1453
  %390 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1454, !tbaa !947
  %userreal3921 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 78, !dbg !1454
  %391 = bitcast float* %userreal3921 to i8*, !dbg !1454
  %call922 = call i32 %390(i8* %391, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str195, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 312) #6, !dbg !1454
  %392 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1455, !tbaa !947
  %userreal4929 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 79, !dbg !1455
  %393 = bitcast float* %userreal4929 to i8*, !dbg !1455
  %call930 = call i32 %392(i8* %393, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str196, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 313) #6, !dbg !1455
  %394 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1456, !tbaa !947
  %ngtc938 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 0, !dbg !1456
  %395 = bitcast i32* %ngtc938 to i8*, !dbg !1456
  %call939 = call i32 %394(i8* %395, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str197, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 316) #6, !dbg !1456
  %396 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1457, !tbaa !947
  %ngacc948 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 1, !dbg !1457
  %397 = bitcast i32* %ngacc948 to i8*, !dbg !1457
  %call949 = call i32 %396(i8* %397, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str198, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 317) #6, !dbg !1457
  %398 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1458, !tbaa !947
  %ngfrz958 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 2, !dbg !1458
  %399 = bitcast i32* %ngfrz958 to i8*, !dbg !1458
  %call959 = call i32 %398(i8* %399, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str199, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 318) #6, !dbg !1458
  %400 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1459, !tbaa !947
  %ngener968 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 3, !dbg !1459
  %401 = bitcast i32* %ngener968 to i8*, !dbg !1459
  %call969 = call i32 %400(i8* %401, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str200, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 319) #6, !dbg !1459
  br label %if.end1000

if.then973:                                       ; preds = %if.then865, %cond.true856
  %402 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1448, !tbaa !947
  %userint1 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 72, !dbg !1448
  %403 = bitcast i32* %userint1 to i8*, !dbg !1448
  %call871 = call i32 %402(i8* %403, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str189, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 306) #6, !dbg !1448
  %404 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1449, !tbaa !947
  %userint2 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 73, !dbg !1449
  %405 = bitcast i32* %userint2 to i8*, !dbg !1449
  %call879 = call i32 %404(i8* %405, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str190, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 307) #6, !dbg !1449
  %406 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1450, !tbaa !947
  %userint3 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 74, !dbg !1450
  %407 = bitcast i32* %userint3 to i8*, !dbg !1450
  %call887 = call i32 %406(i8* %407, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str191, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 308) #6, !dbg !1450
  %408 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1451, !tbaa !947
  %userint4 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 75, !dbg !1451
  %409 = bitcast i32* %userint4 to i8*, !dbg !1451
  %call895 = call i32 %408(i8* %409, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str192, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 309) #6, !dbg !1451
  %410 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1452, !tbaa !947
  %userreal1 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 76, !dbg !1452
  %411 = bitcast float* %userreal1 to i8*, !dbg !1452
  %call903 = call i32 %410(i8* %411, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str193, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 310) #6, !dbg !1452
  %412 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1453, !tbaa !947
  %userreal2 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 77, !dbg !1453
  %413 = bitcast float* %userreal2 to i8*, !dbg !1453
  %call911 = call i32 %412(i8* %413, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str194, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 311) #6, !dbg !1453
  %414 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1454, !tbaa !947
  %userreal3 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 78, !dbg !1454
  %415 = bitcast float* %userreal3 to i8*, !dbg !1454
  %call919 = call i32 %414(i8* %415, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str195, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 312) #6, !dbg !1454
  %416 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1455, !tbaa !947
  %userreal4 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 79, !dbg !1455
  %417 = bitcast float* %userreal4 to i8*, !dbg !1455
  %call927 = call i32 %416(i8* %417, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str196, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 313) #6, !dbg !1455
  %418 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1456, !tbaa !947
  %ngtc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 0, !dbg !1456
  %419 = bitcast i32* %ngtc to i8*, !dbg !1456
  %call935 = call i32 %418(i8* %419, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str197, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 316) #6, !dbg !1456
  %420 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1457, !tbaa !947
  %ngacc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 1, !dbg !1457
  %421 = bitcast i32* %ngacc to i8*, !dbg !1457
  %call945 = call i32 %420(i8* %421, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str198, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 317) #6, !dbg !1457
  %422 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1458, !tbaa !947
  %ngfrz = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 2, !dbg !1458
  %423 = bitcast i32* %ngfrz to i8*, !dbg !1458
  %call955 = call i32 %422(i8* %423, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str199, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 318) #6, !dbg !1458
  %424 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1459, !tbaa !947
  %ngener = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 3, !dbg !1459
  %425 = bitcast i32* %ngener to i8*, !dbg !1459
  %call965 = call i32 %424(i8* %425, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str200, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 319) #6, !dbg !1459
  %426 = load i32* %ngtc, align 4, !dbg !1460, !tbaa !1059
  %call976 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str201, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 321, i32 %426, i32 4) #6, !dbg !1460
  %427 = bitcast i8* %call976 to float*, !dbg !1460
  %nrdf = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 4, !dbg !1460
  store float* %427, float** %nrdf, align 8, !dbg !1460, !tbaa !947
  %428 = load i32* %ngtc, align 4, !dbg !1462, !tbaa !1059
  %call980 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str202, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 322, i32 %428, i32 4) #6, !dbg !1462
  %429 = bitcast i8* %call980 to float*, !dbg !1462
  %ref_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 5, !dbg !1462
  store float* %429, float** %ref_t, align 8, !dbg !1462, !tbaa !947
  %430 = load i32* %ngtc, align 4, !dbg !1463, !tbaa !1059
  %call984 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str203, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 323, i32 %430, i32 4) #6, !dbg !1463
  %431 = bitcast i8* %call984 to float*, !dbg !1463
  %tau_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 6, !dbg !1463
  store float* %431, float** %tau_t, align 8, !dbg !1463, !tbaa !947
  %432 = load i32* %ngfrz, align 4, !dbg !1464, !tbaa !1059
  %call988 = call i8* @save_calloc(i8* getelementptr inbounds ([17 x i8]* @.str204, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 324, i32 %432, i32 12) #6, !dbg !1464
  %433 = bitcast i8* %call988 to [3 x i32]*, !dbg !1464
  %nFreeze = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 8, !dbg !1464
  store [3 x i32]* %433, [3 x i32]** %nFreeze, align 8, !dbg !1464, !tbaa !947
  %434 = load i32* %ngacc, align 4, !dbg !1465, !tbaa !1059
  %call992 = call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str205, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 325, i32 %434, i32 12) #6, !dbg !1465
  %435 = bitcast i8* %call992 to [3 x float]*, !dbg !1465
  %acc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 7, !dbg !1465
  store [3 x float]* %435, [3 x float]** %acc, align 8, !dbg !1465, !tbaa !947
  %436 = load i32* %ngener, align 4, !dbg !1466, !tbaa !1059
  %mul = mul nsw i32 %436, %436, !dbg !1466
  %call998 = call i8* @save_calloc(i8* getelementptr inbounds ([17 x i8]* @.str206, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 326, i32 %mul, i32 4) #6, !dbg !1466
  %437 = bitcast i8* %call998 to i32*, !dbg !1466
  %eg_excl = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 9, !dbg !1466
  store i32* %437, i32** %eg_excl, align 8, !dbg !1466, !tbaa !947
  br label %if.end1000, !dbg !1467

if.end1000:                                       ; preds = %cond.end970, %if.then973
  %ngtc1002 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 0, !dbg !1468
  %438 = load i32* %ngtc1002, align 4, !dbg !1468, !tbaa !1059
  %cmp1003 = icmp sgt i32 %438, 0, !dbg !1468
  br i1 %cmp1003, label %if.then1004, label %if.end1159, !dbg !1468

if.then1004:                                      ; preds = %if.end1000
  %439 = load i32* @file_version, align 4, !dbg !1469, !tbaa !1059
  %cmp1007 = icmp slt i32 %439, 13, !dbg !1469
  %or.cond = and i1 %tobool, %cmp1007, !dbg !1469
  br i1 %or.cond, label %if.then1008, label %for.body1058.lr.ph, !dbg !1469

for.body1058.lr.ph:                               ; preds = %if.then1004
  %440 = getelementptr inbounds [128 x i8]* %buf1060, i64 0, i64 0, !dbg !1470
  %nrdf1069 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 4, !dbg !1470
  br label %for.body1058, !dbg !1471

if.then1008:                                      ; preds = %if.then1004
  %call1011 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str207, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 330, i32 %438, i32 4) #6, !dbg !1472
  %441 = bitcast i8* %call1011 to i32*, !dbg !1472
  call void @llvm.dbg.value(metadata !{i32* %441}, i64 0, metadata !848), !dbg !1472
  call void @llvm.dbg.value(metadata !1269, i64 0, metadata !850), !dbg !1473
  call void @llvm.dbg.value(metadata !177, i64 0, metadata !846), !dbg !1474
  %442 = load i32* %ngtc1002, align 4, !dbg !1474, !tbaa !1059
  %cmp10152027 = icmp sgt i32 %442, 0, !dbg !1474
  br i1 %cmp10152027, label %for.body1016.lr.ph, label %for.end1051, !dbg !1474

for.body1016.lr.ph:                               ; preds = %if.then1008
  %443 = getelementptr inbounds [128 x i8]* %buf, i64 0, i64 0, !dbg !1475
  br label %for.body1016, !dbg !1474

for.cond1038.preheader:                           ; preds = %land.end
  %cmp10412025 = icmp sgt i32 %449, 0, !dbg !1476
  br i1 %cmp10412025, label %for.body1042.lr.ph, label %for.end1051, !dbg !1476

for.body1042.lr.ph:                               ; preds = %for.cond1038.preheader
  %nrdf1047 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 4, !dbg !1478
  %444 = load float** %nrdf1047, align 8, !dbg !1478, !tbaa !947
  br label %for.body1042, !dbg !1476

for.body1016:                                     ; preds = %for.body1016.lr.ph, %land.end
  %indvars.iv2053 = phi i64 [ 0, %for.body1016.lr.ph ], [ %indvars.iv.next2054, %land.end ]
  %bDum.02029 = phi i32 [ 1, %for.body1016.lr.ph ], [ %land.ext, %land.end ]
  call void @llvm.lifetime.start(i64 128, i8* %443) #2, !dbg !1475
  call void @llvm.dbg.declare(metadata !{[128 x i8]* %buf}, metadata !853), !dbg !1475
  %445 = trunc i64 %indvars.iv2053 to i32, !dbg !1475
  %call1019 = call i32 (i8*, i8*, ...)* @sprintf(i8* %443, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str207, i64 0, i64 0), i32 %445) #6, !dbg !1475
  %tobool1020 = icmp eq i32 %bDum.02029, 0, !dbg !1475
  br i1 %tobool1020, label %land.end, label %cond.end1032, !dbg !1475

cond.end1032:                                     ; preds = %for.body1016
  %446 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1475, !tbaa !947
  %arrayidx1024 = getelementptr inbounds i32* %441, i64 %indvars.iv2053, !dbg !1475
  %447 = bitcast i32* %arrayidx1024 to i8*, !dbg !1475
  %call1026 = call i32 %446(i8* %447, i32 1, i32 1, i8* %443, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 331) #6, !dbg !1475
  %phitmp = icmp ne i32 %call1026, 0, !dbg !1475
  br label %land.end

land.end:                                         ; preds = %for.body1016, %cond.end1032
  %448 = phi i1 [ false, %for.body1016 ], [ %phitmp, %cond.end1032 ]
  %land.ext = zext i1 %448 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext}, i64 0, metadata !850), !dbg !1270
  call void @llvm.lifetime.end(i64 128, i8* %443) #2, !dbg !1475
  %indvars.iv.next2054 = add i64 %indvars.iv2053, 1, !dbg !1474
  %449 = load i32* %ngtc1002, align 4, !dbg !1474, !tbaa !1059
  %450 = trunc i64 %indvars.iv.next2054 to i32, !dbg !1474
  %cmp1015 = icmp slt i32 %450, %449, !dbg !1474
  br i1 %cmp1015, label %for.body1016, label %for.cond1038.preheader, !dbg !1474

for.body1042:                                     ; preds = %for.body1042.lr.ph, %for.body1042
  %indvars.iv2051 = phi i64 [ 0, %for.body1042.lr.ph ], [ %indvars.iv.next2052, %for.body1042 ]
  %arrayidx1044 = getelementptr inbounds i32* %441, i64 %indvars.iv2051, !dbg !1478
  %451 = load i32* %arrayidx1044, align 4, !dbg !1478, !tbaa !1059
  %conv = sitofp i32 %451 to float, !dbg !1478
  %arrayidx1048 = getelementptr inbounds float* %444, i64 %indvars.iv2051, !dbg !1478
  store float %conv, float* %arrayidx1048, align 4, !dbg !1478, !tbaa !1092
  %indvars.iv.next2052 = add i64 %indvars.iv2051, 1, !dbg !1476
  %452 = trunc i64 %indvars.iv.next2052 to i32, !dbg !1476
  %cmp1041 = icmp slt i32 %452, %449, !dbg !1476
  br i1 %cmp1041, label %for.body1042, label %for.end1051, !dbg !1476

for.end1051:                                      ; preds = %if.then1008, %for.body1042, %for.cond1038.preheader
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str207, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 334, i8* %call1011) #6, !dbg !1479
  %.pre = load i32* %ngtc1002, align 4, !dbg !1480, !tbaa !1059
  br label %for.cond1089.preheader, !dbg !1481

for.cond1089.preheader:                           ; preds = %land.end1083, %for.end1051
  %453 = phi i32 [ %.pre, %for.end1051 ], [ %463, %land.end1083 ]
  %cmp10922022 = icmp sgt i32 %453, 0, !dbg !1480
  br i1 %cmp10922022, label %for.body1094.lr.ph, label %if.end1159, !dbg !1480

for.body1094.lr.ph:                               ; preds = %for.cond1089.preheader
  %454 = getelementptr inbounds [128 x i8]* %buf1096, i64 0, i64 0, !dbg !1482
  %ref_t1105 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 5, !dbg !1482
  br label %for.body1094, !dbg !1480

for.body1058:                                     ; preds = %for.body1058.lr.ph, %land.end1083
  %indvars.iv2055 = phi i64 [ 0, %for.body1058.lr.ph ], [ %indvars.iv.next2056, %land.end1083 ]
  %bDum.12032 = phi i32 [ 1, %for.body1058.lr.ph ], [ %land.ext1084, %land.end1083 ]
  call void @llvm.lifetime.start(i64 128, i8* %440) #2, !dbg !1470
  call void @llvm.dbg.declare(metadata !{[128 x i8]* %buf1060}, metadata !860), !dbg !1470
  %455 = trunc i64 %indvars.iv2055 to i32, !dbg !1470
  %call1062 = call i32 (i8*, i8*, ...)* @sprintf(i8* %440, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str201, i64 0, i64 0), i32 %455) #6, !dbg !1470
  %tobool1063 = icmp eq i32 %bDum.12032, 0, !dbg !1470
  br i1 %tobool1063, label %land.end1083, label %land.rhs1064, !dbg !1470

land.rhs1064:                                     ; preds = %for.body1058
  br i1 %tobool, label %cond.true1066, label %cond.false1073, !dbg !1470

cond.true1066:                                    ; preds = %land.rhs1064
  %456 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1470, !tbaa !947
  %457 = load float** %nrdf1069, align 8, !dbg !1470, !tbaa !947
  %arrayidx1070 = getelementptr inbounds float* %457, i64 %indvars.iv2055, !dbg !1470
  %458 = bitcast float* %arrayidx1070 to i8*, !dbg !1470
  %call1072 = call i32 %456(i8* %458, i32 1, i32 0, i8* %440, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 336) #6, !dbg !1470
  br label %cond.end1080, !dbg !1470

cond.false1073:                                   ; preds = %land.rhs1064
  %459 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1470, !tbaa !947
  %460 = load float** %nrdf1069, align 8, !dbg !1470, !tbaa !947
  %arrayidx1077 = getelementptr inbounds float* %460, i64 %indvars.iv2055, !dbg !1470
  %461 = bitcast float* %arrayidx1077 to i8*, !dbg !1470
  %call1079 = call i32 %459(i8* %461, i32 1, i32 0, i8* %440, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 336) #6, !dbg !1470
  br label %cond.end1080, !dbg !1470

cond.end1080:                                     ; preds = %cond.false1073, %cond.true1066
  %cond1081 = phi i32 [ %call1072, %cond.true1066 ], [ %call1079, %cond.false1073 ], !dbg !1470
  %tobool1082 = icmp ne i32 %cond1081, 0, !dbg !1470
  br label %land.end1083

land.end1083:                                     ; preds = %for.body1058, %cond.end1080
  %462 = phi i1 [ false, %for.body1058 ], [ %tobool1082, %cond.end1080 ]
  %land.ext1084 = zext i1 %462 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext1084}, i64 0, metadata !850), !dbg !1270
  call void @llvm.lifetime.end(i64 128, i8* %440) #2, !dbg !1470
  %indvars.iv.next2056 = add i64 %indvars.iv2055, 1, !dbg !1471
  %463 = load i32* %ngtc1002, align 4, !dbg !1471, !tbaa !1059
  %464 = trunc i64 %indvars.iv.next2056 to i32, !dbg !1471
  %cmp1056 = icmp slt i32 %464, %463, !dbg !1471
  br i1 %cmp1056, label %for.body1058, label %for.cond1089.preheader, !dbg !1471

for.cond1124.preheader:                           ; preds = %land.end1119
  %cmp11272019 = icmp sgt i32 %474, 0, !dbg !1483
  br i1 %cmp11272019, label %for.body1129.lr.ph, label %if.end1159, !dbg !1483

for.body1129.lr.ph:                               ; preds = %for.cond1124.preheader
  %465 = getelementptr inbounds [128 x i8]* %buf1131, i64 0, i64 0, !dbg !1484
  %tau_t1140 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 6, !dbg !1484
  br label %for.body1129, !dbg !1483

for.body1094:                                     ; preds = %for.body1094.lr.ph, %land.end1119
  %indvars.iv2049 = phi i64 [ 0, %for.body1094.lr.ph ], [ %indvars.iv.next2050, %land.end1119 ]
  %bDum.22024 = phi i32 [ 1, %for.body1094.lr.ph ], [ %land.ext1120, %land.end1119 ]
  call void @llvm.lifetime.start(i64 128, i8* %454) #2, !dbg !1482
  call void @llvm.dbg.declare(metadata !{[128 x i8]* %buf1096}, metadata !865), !dbg !1482
  %466 = trunc i64 %indvars.iv2049 to i32, !dbg !1482
  %call1098 = call i32 (i8*, i8*, ...)* @sprintf(i8* %454, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str202, i64 0, i64 0), i32 %466) #6, !dbg !1482
  %tobool1099 = icmp eq i32 %bDum.22024, 0, !dbg !1482
  br i1 %tobool1099, label %land.end1119, label %land.rhs1100, !dbg !1482

land.rhs1100:                                     ; preds = %for.body1094
  br i1 %tobool, label %cond.true1102, label %cond.false1109, !dbg !1482

cond.true1102:                                    ; preds = %land.rhs1100
  %467 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1482, !tbaa !947
  %468 = load float** %ref_t1105, align 8, !dbg !1482, !tbaa !947
  %arrayidx1106 = getelementptr inbounds float* %468, i64 %indvars.iv2049, !dbg !1482
  %469 = bitcast float* %arrayidx1106 to i8*, !dbg !1482
  %call1108 = call i32 %467(i8* %469, i32 1, i32 0, i8* %454, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 338) #6, !dbg !1482
  br label %cond.end1116, !dbg !1482

cond.false1109:                                   ; preds = %land.rhs1100
  %470 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1482, !tbaa !947
  %471 = load float** %ref_t1105, align 8, !dbg !1482, !tbaa !947
  %arrayidx1113 = getelementptr inbounds float* %471, i64 %indvars.iv2049, !dbg !1482
  %472 = bitcast float* %arrayidx1113 to i8*, !dbg !1482
  %call1115 = call i32 %470(i8* %472, i32 1, i32 0, i8* %454, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 338) #6, !dbg !1482
  br label %cond.end1116, !dbg !1482

cond.end1116:                                     ; preds = %cond.false1109, %cond.true1102
  %cond1117 = phi i32 [ %call1108, %cond.true1102 ], [ %call1115, %cond.false1109 ], !dbg !1482
  %tobool1118 = icmp ne i32 %cond1117, 0, !dbg !1482
  br label %land.end1119

land.end1119:                                     ; preds = %for.body1094, %cond.end1116
  %473 = phi i1 [ false, %for.body1094 ], [ %tobool1118, %cond.end1116 ]
  %land.ext1120 = zext i1 %473 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext1120}, i64 0, metadata !850), !dbg !1270
  call void @llvm.lifetime.end(i64 128, i8* %454) #2, !dbg !1482
  %indvars.iv.next2050 = add i64 %indvars.iv2049, 1, !dbg !1480
  %474 = load i32* %ngtc1002, align 4, !dbg !1480, !tbaa !1059
  %475 = trunc i64 %indvars.iv.next2050 to i32, !dbg !1480
  %cmp1092 = icmp slt i32 %475, %474, !dbg !1480
  br i1 %cmp1092, label %for.body1094, label %for.cond1124.preheader, !dbg !1480

for.body1129:                                     ; preds = %for.body1129.lr.ph, %land.end1154
  %indvars.iv2047 = phi i64 [ 0, %for.body1129.lr.ph ], [ %indvars.iv.next2048, %land.end1154 ]
  %bDum.32021 = phi i32 [ 1, %for.body1129.lr.ph ], [ %land.ext1155, %land.end1154 ]
  call void @llvm.lifetime.start(i64 128, i8* %465) #2, !dbg !1484
  call void @llvm.dbg.declare(metadata !{[128 x i8]* %buf1131}, metadata !869), !dbg !1484
  %476 = trunc i64 %indvars.iv2047 to i32, !dbg !1484
  %call1133 = call i32 (i8*, i8*, ...)* @sprintf(i8* %465, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str203, i64 0, i64 0), i32 %476) #6, !dbg !1484
  %tobool1134 = icmp eq i32 %bDum.32021, 0, !dbg !1484
  br i1 %tobool1134, label %land.end1154, label %land.rhs1135, !dbg !1484

land.rhs1135:                                     ; preds = %for.body1129
  br i1 %tobool, label %cond.true1137, label %cond.false1144, !dbg !1484

cond.true1137:                                    ; preds = %land.rhs1135
  %477 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1484, !tbaa !947
  %478 = load float** %tau_t1140, align 8, !dbg !1484, !tbaa !947
  %arrayidx1141 = getelementptr inbounds float* %478, i64 %indvars.iv2047, !dbg !1484
  %479 = bitcast float* %arrayidx1141 to i8*, !dbg !1484
  %call1143 = call i32 %477(i8* %479, i32 1, i32 0, i8* %465, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 339) #6, !dbg !1484
  br label %cond.end1151, !dbg !1484

cond.false1144:                                   ; preds = %land.rhs1135
  %480 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1484, !tbaa !947
  %481 = load float** %tau_t1140, align 8, !dbg !1484, !tbaa !947
  %arrayidx1148 = getelementptr inbounds float* %481, i64 %indvars.iv2047, !dbg !1484
  %482 = bitcast float* %arrayidx1148 to i8*, !dbg !1484
  %call1150 = call i32 %480(i8* %482, i32 1, i32 0, i8* %465, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 339) #6, !dbg !1484
  br label %cond.end1151, !dbg !1484

cond.end1151:                                     ; preds = %cond.false1144, %cond.true1137
  %cond1152 = phi i32 [ %call1143, %cond.true1137 ], [ %call1150, %cond.false1144 ], !dbg !1484
  %tobool1153 = icmp ne i32 %cond1152, 0, !dbg !1484
  br label %land.end1154

land.end1154:                                     ; preds = %for.body1129, %cond.end1151
  %483 = phi i1 [ false, %for.body1129 ], [ %tobool1153, %cond.end1151 ]
  %land.ext1155 = zext i1 %483 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext1155}, i64 0, metadata !850), !dbg !1270
  call void @llvm.lifetime.end(i64 128, i8* %465) #2, !dbg !1484
  %indvars.iv.next2048 = add i64 %indvars.iv2047, 1, !dbg !1483
  %484 = load i32* %ngtc1002, align 4, !dbg !1483, !tbaa !1059
  %485 = trunc i64 %indvars.iv.next2048 to i32, !dbg !1483
  %cmp1127 = icmp slt i32 %485, %484, !dbg !1483
  br i1 %cmp1127, label %for.body1129, label %if.end1159, !dbg !1483

if.end1159:                                       ; preds = %for.cond1089.preheader, %for.cond1124.preheader, %land.end1154, %if.end1000
  %ngfrz1161 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 2, !dbg !1485
  %486 = load i32* %ngfrz1161, align 4, !dbg !1485, !tbaa !1059
  %cmp1162 = icmp sgt i32 %486, 0, !dbg !1485
  br i1 %cmp1162, label %for.body1170.lr.ph, label %if.end1202, !dbg !1485

for.body1170.lr.ph:                               ; preds = %if.end1159
  %487 = getelementptr inbounds [128 x i8]* %buf1172, i64 0, i64 0, !dbg !1486
  %nFreeze1181 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 8, !dbg !1486
  br label %for.body1170, !dbg !1487

for.body1170:                                     ; preds = %for.body1170.lr.ph, %land.end1197
  %indvars.iv2045 = phi i64 [ 0, %for.body1170.lr.ph ], [ %indvars.iv.next2046, %land.end1197 ]
  %bDum.42018 = phi i32 [ 1, %for.body1170.lr.ph ], [ %land.ext1198, %land.end1197 ]
  call void @llvm.lifetime.start(i64 128, i8* %487) #2, !dbg !1486
  call void @llvm.dbg.declare(metadata !{[128 x i8]* %buf1172}, metadata !873), !dbg !1486
  %488 = trunc i64 %indvars.iv2045 to i32, !dbg !1486
  %call1174 = call i32 (i8*, i8*, ...)* @sprintf(i8* %487, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str204, i64 0, i64 0), i32 %488) #6, !dbg !1486
  %tobool1175 = icmp eq i32 %bDum.42018, 0, !dbg !1486
  br i1 %tobool1175, label %land.end1197, label %land.rhs1176, !dbg !1486

land.rhs1176:                                     ; preds = %for.body1170
  br i1 %tobool, label %cond.true1178, label %cond.false1186, !dbg !1486

cond.true1178:                                    ; preds = %land.rhs1176
  %489 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1486, !tbaa !947
  %490 = load [3 x i32]** %nFreeze1181, align 8, !dbg !1486, !tbaa !947
  %arraydecay1183 = getelementptr inbounds [3 x i32]* %490, i64 %indvars.iv2045, i64 0, !dbg !1486
  %491 = bitcast i32* %arraydecay1183 to i8*, !dbg !1486
  %call1185 = call i32 %489(i8* %491, i32 1, i32 6, i8* %487, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 342) #6, !dbg !1486
  br label %cond.end1194, !dbg !1486

cond.false1186:                                   ; preds = %land.rhs1176
  %492 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1486, !tbaa !947
  %493 = load [3 x i32]** %nFreeze1181, align 8, !dbg !1486, !tbaa !947
  %arraydecay1191 = getelementptr inbounds [3 x i32]* %493, i64 %indvars.iv2045, i64 0, !dbg !1486
  %494 = bitcast i32* %arraydecay1191 to i8*, !dbg !1486
  %call1193 = call i32 %492(i8* %494, i32 1, i32 6, i8* %487, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 342) #6, !dbg !1486
  br label %cond.end1194, !dbg !1486

cond.end1194:                                     ; preds = %cond.false1186, %cond.true1178
  %cond1195 = phi i32 [ %call1185, %cond.true1178 ], [ %call1193, %cond.false1186 ], !dbg !1486
  %tobool1196 = icmp ne i32 %cond1195, 0, !dbg !1486
  br label %land.end1197

land.end1197:                                     ; preds = %for.body1170, %cond.end1194
  %495 = phi i1 [ false, %for.body1170 ], [ %tobool1196, %cond.end1194 ]
  %land.ext1198 = zext i1 %495 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext1198}, i64 0, metadata !850), !dbg !1270
  call void @llvm.lifetime.end(i64 128, i8* %487) #2, !dbg !1486
  %indvars.iv.next2046 = add i64 %indvars.iv2045, 1, !dbg !1487
  %496 = load i32* %ngfrz1161, align 4, !dbg !1487, !tbaa !1059
  %497 = trunc i64 %indvars.iv.next2046 to i32, !dbg !1487
  %cmp1168 = icmp slt i32 %497, %496, !dbg !1487
  br i1 %cmp1168, label %for.body1170, label %if.end1202, !dbg !1487

if.end1202:                                       ; preds = %land.end1197, %if.end1159
  %ngacc1204 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 1, !dbg !1488
  %498 = load i32* %ngacc1204, align 4, !dbg !1488, !tbaa !1059
  %cmp1205 = icmp sgt i32 %498, 0, !dbg !1488
  br i1 %cmp1205, label %if.then1207, label %if.end1223, !dbg !1488

if.then1207:                                      ; preds = %if.end1202
  br i1 %tobool, label %cond.true1209, label %cond.false1215, !dbg !1489

cond.true1209:                                    ; preds = %if.then1207
  %499 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1489, !tbaa !947
  %acc1211 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 7, !dbg !1489
  %500 = load [3 x float]** %acc1211, align 8, !dbg !1489, !tbaa !947
  %501 = bitcast [3 x float]* %500 to i8*, !dbg !1489
  %call1214 = call i32 %499(i8* %501, i32 %498, i32 5, i8* getelementptr inbounds ([13 x i8]* @.str205, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 344) #6, !dbg !1489
  br label %if.end1223, !dbg !1489

cond.false1215:                                   ; preds = %if.then1207
  %502 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1489, !tbaa !947
  %acc1217 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 7, !dbg !1489
  %503 = load [3 x float]** %acc1217, align 8, !dbg !1489, !tbaa !947
  %504 = bitcast [3 x float]* %503 to i8*, !dbg !1489
  %call1220 = call i32 %502(i8* %504, i32 %498, i32 5, i8* getelementptr inbounds ([13 x i8]* @.str205, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 344) #6, !dbg !1489
  br label %if.end1223, !dbg !1489

if.end1223:                                       ; preds = %if.end1202, %cond.true1209, %cond.false1215
  %505 = load i32* @file_version, align 4, !dbg !1490, !tbaa !1059
  %cmp1224 = icmp sgt i32 %505, 11, !dbg !1490
  br i1 %cmp1224, label %for.cond1227.preheader, label %for.cond1266.preheader, !dbg !1490

for.cond1227.preheader:                           ; preds = %if.end1223
  %ngener1229 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 3, !dbg !1491
  %506 = load i32* %ngener1229, align 4, !dbg !1491, !tbaa !1059
  %mul12322012 = mul nsw i32 %506, %506, !dbg !1491
  %cmp12332013 = icmp eq i32 %mul12322012, 0, !dbg !1491
  br i1 %cmp12332013, label %for.cond1266.preheader, label %for.body1235.lr.ph, !dbg !1491

for.body1235.lr.ph:                               ; preds = %for.cond1227.preheader
  %507 = getelementptr inbounds [128 x i8]* %buf1237, i64 0, i64 0, !dbg !1492
  %eg_excl1246 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 9, !dbg !1492
  br label %for.body1235, !dbg !1491

for.cond1266.preheader:                           ; preds = %for.cond1227.preheader, %land.end1260, %if.end1223
  %508 = getelementptr inbounds [128 x i8]* %buf1466, i64 0, i64 0, !dbg !1493
  %509 = getelementptr inbounds [128 x i8]* %buf1425, i64 0, i64 0, !dbg !1494
  %510 = getelementptr inbounds [128 x i8]* %buf1384, i64 0, i64 0, !dbg !1495
  %511 = getelementptr inbounds [128 x i8]* %buf1343, i64 0, i64 0, !dbg !1496
  br label %for.body1269, !dbg !1497

for.body1235:                                     ; preds = %for.body1235.lr.ph, %land.end1260
  %indvars.iv2043 = phi i64 [ 0, %for.body1235.lr.ph ], [ %indvars.iv.next2044, %land.end1260 ]
  %bDum.52015 = phi i32 [ 1, %for.body1235.lr.ph ], [ %land.ext1261, %land.end1260 ]
  call void @llvm.lifetime.start(i64 128, i8* %507) #2, !dbg !1492
  call void @llvm.dbg.declare(metadata !{[128 x i8]* %buf1237}, metadata !877), !dbg !1492
  %512 = trunc i64 %indvars.iv2043 to i32, !dbg !1492
  %call1239 = call i32 (i8*, i8*, ...)* @sprintf(i8* %507, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str206, i64 0, i64 0), i32 %512) #6, !dbg !1492
  %tobool1240 = icmp eq i32 %bDum.52015, 0, !dbg !1492
  br i1 %tobool1240, label %land.end1260, label %land.rhs1241, !dbg !1492

land.rhs1241:                                     ; preds = %for.body1235
  br i1 %tobool, label %cond.true1243, label %cond.false1250, !dbg !1492

cond.true1243:                                    ; preds = %land.rhs1241
  %513 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1492, !tbaa !947
  %514 = load i32** %eg_excl1246, align 8, !dbg !1492, !tbaa !947
  %arrayidx1247 = getelementptr inbounds i32* %514, i64 %indvars.iv2043, !dbg !1492
  %515 = bitcast i32* %arrayidx1247 to i8*, !dbg !1492
  %call1249 = call i32 %513(i8* %515, i32 1, i32 1, i8* %507, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 346) #6, !dbg !1492
  br label %cond.end1257, !dbg !1492

cond.false1250:                                   ; preds = %land.rhs1241
  %516 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1492, !tbaa !947
  %517 = load i32** %eg_excl1246, align 8, !dbg !1492, !tbaa !947
  %arrayidx1254 = getelementptr inbounds i32* %517, i64 %indvars.iv2043, !dbg !1492
  %518 = bitcast i32* %arrayidx1254 to i8*, !dbg !1492
  %call1256 = call i32 %516(i8* %518, i32 1, i32 1, i8* %507, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 346) #6, !dbg !1492
  br label %cond.end1257, !dbg !1492

cond.end1257:                                     ; preds = %cond.false1250, %cond.true1243
  %cond1258 = phi i32 [ %call1249, %cond.true1243 ], [ %call1256, %cond.false1250 ], !dbg !1492
  %tobool1259 = icmp ne i32 %cond1258, 0, !dbg !1492
  br label %land.end1260

land.end1260:                                     ; preds = %for.body1235, %cond.end1257
  %519 = phi i1 [ false, %for.body1235 ], [ %tobool1259, %cond.end1257 ]
  %land.ext1261 = zext i1 %519 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext1261}, i64 0, metadata !850), !dbg !1270
  call void @llvm.lifetime.end(i64 128, i8* %507) #2, !dbg !1492
  %indvars.iv.next2044 = add i64 %indvars.iv2043, 1, !dbg !1491
  %520 = load i32* %ngener1229, align 4, !dbg !1491, !tbaa !1059
  %mul1232 = mul nsw i32 %520, %520, !dbg !1491
  %521 = trunc i64 %indvars.iv.next2044 to i32, !dbg !1491
  %cmp1233 = icmp slt i32 %521, %mul1232, !dbg !1491
  br i1 %cmp1233, label %for.body1235, label %for.cond1266.preheader, !dbg !1491

for.body1269:                                     ; preds = %for.inc1498, %for.cond1266.preheader
  %indvars.iv2041 = phi i64 [ 0, %for.cond1266.preheader ], [ %indvars.iv.next2042, %for.inc1498 ]
  br i1 %tobool, label %if.then1298, label %cond.end1295, !dbg !1498

cond.end1295:                                     ; preds = %for.body1269
  %522 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1498, !tbaa !947
  %n1279 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv2041, i32 0, !dbg !1498
  %523 = bitcast i32* %n1279 to i8*, !dbg !1498
  %call1280 = call i32 %522(i8* %523, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str208, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 350) #6, !dbg !1498
  %524 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1499, !tbaa !947
  %n1293 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv2041, i32 0, !dbg !1499
  %525 = bitcast i32* %n1293 to i8*, !dbg !1499
  %call1294 = call i32 %524(i8* %525, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str209, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 351) #6, !dbg !1499
  br label %for.cond1334.preheader

if.then1298:                                      ; preds = %for.body1269
  %526 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1498, !tbaa !947
  %n = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv2041, i32 0, !dbg !1498
  %527 = bitcast i32* %n to i8*, !dbg !1498
  %call1274 = call i32 %526(i8* %527, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str208, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 350) #6, !dbg !1498
  %528 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1499, !tbaa !947
  %n1287 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv2041, i32 0, !dbg !1499
  %529 = bitcast i32* %n1287 to i8*, !dbg !1499
  %call1288 = call i32 %528(i8* %529, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str209, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 351) #6, !dbg !1499
  %530 = load i32* %n, align 4, !dbg !1500, !tbaa !1059
  %call1303 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str210, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 353, i32 %530, i32 4) #6, !dbg !1500
  %531 = bitcast i8* %call1303 to float*, !dbg !1500
  %a = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv2041, i32 1, !dbg !1500
  store float* %531, float** %a, align 8, !dbg !1500, !tbaa !947
  %532 = load i32* %n, align 4, !dbg !1502, !tbaa !1059
  %call1311 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str211, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 354, i32 %532, i32 4) #6, !dbg !1502
  %533 = bitcast i8* %call1311 to float*, !dbg !1502
  %phi = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv2041, i32 2, !dbg !1502
  store float* %533, float** %phi, align 8, !dbg !1502, !tbaa !947
  %534 = load i32* %n1287, align 4, !dbg !1503, !tbaa !1059
  %call1319 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str212, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 355, i32 %534, i32 4) #6, !dbg !1503
  %535 = bitcast i8* %call1319 to float*, !dbg !1503
  %a1323 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv2041, i32 1, !dbg !1503
  store float* %535, float** %a1323, align 8, !dbg !1503, !tbaa !947
  %536 = load i32* %n1287, align 4, !dbg !1504, !tbaa !1059
  %call1328 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str213, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 356, i32 %536, i32 4) #6, !dbg !1504
  %537 = bitcast i8* %call1328 to float*, !dbg !1504
  %phi1332 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv2041, i32 2, !dbg !1504
  store float* %537, float** %phi1332, align 8, !dbg !1504, !tbaa !947
  br label %for.cond1334.preheader, !dbg !1505

for.cond1334.preheader:                           ; preds = %if.then1298, %cond.end1295
  %n1338 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv2041, i32 0, !dbg !1506
  %538 = load i32* %n1338, align 4, !dbg !1506, !tbaa !1059
  %cmp13391997 = icmp sgt i32 %538, 0, !dbg !1506
  br i1 %cmp13391997, label %for.body1341.lr.ph, label %for.cond1416.loopexit, !dbg !1506

for.body1341.lr.ph:                               ; preds = %for.cond1334.preheader
  %a1354 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv2041, i32 1, !dbg !1496
  br label %for.body1341, !dbg !1506

for.body1341:                                     ; preds = %for.body1341.lr.ph, %land.end1370
  %indvars.iv = phi i64 [ 0, %for.body1341.lr.ph ], [ %indvars.iv.next, %land.end1370 ]
  %bDum.61999 = phi i32 [ 1, %for.body1341.lr.ph ], [ %land.ext1371, %land.end1370 ]
  call void @llvm.lifetime.start(i64 128, i8* %511) #2, !dbg !1496
  call void @llvm.dbg.declare(metadata !{[128 x i8]* %buf1343}, metadata !881), !dbg !1496
  %539 = trunc i64 %indvars.iv to i32, !dbg !1496
  %call1345 = call i32 (i8*, i8*, ...)* @sprintf(i8* %511, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str210, i64 0, i64 0), i32 %539) #6, !dbg !1496
  %tobool1346 = icmp eq i32 %bDum.61999, 0, !dbg !1496
  br i1 %tobool1346, label %land.end1370, label %land.rhs1347, !dbg !1496

land.rhs1347:                                     ; preds = %for.body1341
  br i1 %tobool, label %cond.true1349, label %cond.false1358, !dbg !1496

cond.true1349:                                    ; preds = %land.rhs1347
  %540 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1496, !tbaa !947
  %541 = load float** %a1354, align 8, !dbg !1496, !tbaa !947
  %arrayidx1355 = getelementptr inbounds float* %541, i64 %indvars.iv, !dbg !1496
  %542 = bitcast float* %arrayidx1355 to i8*, !dbg !1496
  %call1357 = call i32 %540(i8* %542, i32 1, i32 0, i8* %511, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 358) #6, !dbg !1496
  br label %cond.end1367, !dbg !1496

cond.false1358:                                   ; preds = %land.rhs1347
  %543 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1496, !tbaa !947
  %544 = load float** %a1354, align 8, !dbg !1496, !tbaa !947
  %arrayidx1364 = getelementptr inbounds float* %544, i64 %indvars.iv, !dbg !1496
  %545 = bitcast float* %arrayidx1364 to i8*, !dbg !1496
  %call1366 = call i32 %543(i8* %545, i32 1, i32 0, i8* %511, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 358) #6, !dbg !1496
  br label %cond.end1367, !dbg !1496

cond.end1367:                                     ; preds = %cond.false1358, %cond.true1349
  %cond1368 = phi i32 [ %call1357, %cond.true1349 ], [ %call1366, %cond.false1358 ], !dbg !1496
  %tobool1369 = icmp ne i32 %cond1368, 0, !dbg !1496
  br label %land.end1370

land.end1370:                                     ; preds = %for.body1341, %cond.end1367
  %546 = phi i1 [ false, %for.body1341 ], [ %tobool1369, %cond.end1367 ]
  %land.ext1371 = zext i1 %546 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext1371}, i64 0, metadata !850), !dbg !1270
  call void @llvm.lifetime.end(i64 128, i8* %511) #2, !dbg !1496
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1506
  %547 = load i32* %n1338, align 4, !dbg !1506, !tbaa !1059
  %548 = trunc i64 %indvars.iv.next to i32, !dbg !1506
  %cmp1339 = icmp slt i32 %548, %547, !dbg !1506
  br i1 %cmp1339, label %for.body1341, label %for.cond1375.loopexit, !dbg !1506

for.cond1375.loopexit:                            ; preds = %land.end1370
  %cmp13802001 = icmp sgt i32 %547, 0, !dbg !1507
  br i1 %cmp13802001, label %for.body1382.lr.ph, label %for.cond1416.loopexit, !dbg !1507

for.body1382.lr.ph:                               ; preds = %for.cond1375.loopexit
  %phi1395 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv2041, i32 2, !dbg !1495
  br label %for.body1382, !dbg !1507

for.body1382:                                     ; preds = %for.body1382.lr.ph, %land.end1411
  %indvars.iv2035 = phi i64 [ 0, %for.body1382.lr.ph ], [ %indvars.iv.next2036, %land.end1411 ]
  %bDum.72003 = phi i32 [ 1, %for.body1382.lr.ph ], [ %land.ext1412, %land.end1411 ]
  call void @llvm.lifetime.start(i64 128, i8* %510) #2, !dbg !1495
  call void @llvm.dbg.declare(metadata !{[128 x i8]* %buf1384}, metadata !887), !dbg !1495
  %549 = trunc i64 %indvars.iv2035 to i32, !dbg !1495
  %call1386 = call i32 (i8*, i8*, ...)* @sprintf(i8* %510, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str211, i64 0, i64 0), i32 %549) #6, !dbg !1495
  %tobool1387 = icmp eq i32 %bDum.72003, 0, !dbg !1495
  br i1 %tobool1387, label %land.end1411, label %land.rhs1388, !dbg !1495

land.rhs1388:                                     ; preds = %for.body1382
  br i1 %tobool, label %cond.true1390, label %cond.false1399, !dbg !1495

cond.true1390:                                    ; preds = %land.rhs1388
  %550 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1495, !tbaa !947
  %551 = load float** %phi1395, align 8, !dbg !1495, !tbaa !947
  %arrayidx1396 = getelementptr inbounds float* %551, i64 %indvars.iv2035, !dbg !1495
  %552 = bitcast float* %arrayidx1396 to i8*, !dbg !1495
  %call1398 = call i32 %550(i8* %552, i32 1, i32 0, i8* %510, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 359) #6, !dbg !1495
  br label %cond.end1408, !dbg !1495

cond.false1399:                                   ; preds = %land.rhs1388
  %553 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1495, !tbaa !947
  %554 = load float** %phi1395, align 8, !dbg !1495, !tbaa !947
  %arrayidx1405 = getelementptr inbounds float* %554, i64 %indvars.iv2035, !dbg !1495
  %555 = bitcast float* %arrayidx1405 to i8*, !dbg !1495
  %call1407 = call i32 %553(i8* %555, i32 1, i32 0, i8* %510, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 359) #6, !dbg !1495
  br label %cond.end1408, !dbg !1495

cond.end1408:                                     ; preds = %cond.false1399, %cond.true1390
  %cond1409 = phi i32 [ %call1398, %cond.true1390 ], [ %call1407, %cond.false1399 ], !dbg !1495
  %tobool1410 = icmp ne i32 %cond1409, 0, !dbg !1495
  br label %land.end1411

land.end1411:                                     ; preds = %for.body1382, %cond.end1408
  %556 = phi i1 [ false, %for.body1382 ], [ %tobool1410, %cond.end1408 ]
  %land.ext1412 = zext i1 %556 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext1412}, i64 0, metadata !850), !dbg !1270
  call void @llvm.lifetime.end(i64 128, i8* %510) #2, !dbg !1495
  %indvars.iv.next2036 = add i64 %indvars.iv2035, 1, !dbg !1507
  %557 = load i32* %n1338, align 4, !dbg !1507, !tbaa !1059
  %558 = trunc i64 %indvars.iv.next2036 to i32, !dbg !1507
  %cmp1380 = icmp slt i32 %558, %557, !dbg !1507
  br i1 %cmp1380, label %for.body1382, label %for.cond1416.loopexit, !dbg !1507

for.cond1416.loopexit:                            ; preds = %for.cond1334.preheader, %land.end1411, %for.cond1375.loopexit
  %n1420 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv2041, i32 0, !dbg !1508
  %559 = load i32* %n1420, align 4, !dbg !1508, !tbaa !1059
  %cmp14212004 = icmp sgt i32 %559, 0, !dbg !1508
  br i1 %cmp14212004, label %for.body1423.lr.ph, label %for.inc1498, !dbg !1508

for.body1423.lr.ph:                               ; preds = %for.cond1416.loopexit
  %a1436 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv2041, i32 1, !dbg !1494
  br label %for.body1423, !dbg !1508

for.body1423:                                     ; preds = %for.body1423.lr.ph, %land.end1452
  %indvars.iv2037 = phi i64 [ 0, %for.body1423.lr.ph ], [ %indvars.iv.next2038, %land.end1452 ]
  %bDum.82006 = phi i32 [ 1, %for.body1423.lr.ph ], [ %land.ext1453, %land.end1452 ]
  call void @llvm.lifetime.start(i64 128, i8* %509) #2, !dbg !1494
  call void @llvm.dbg.declare(metadata !{[128 x i8]* %buf1425}, metadata !891), !dbg !1494
  %560 = trunc i64 %indvars.iv2037 to i32, !dbg !1494
  %call1427 = call i32 (i8*, i8*, ...)* @sprintf(i8* %509, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str212, i64 0, i64 0), i32 %560) #6, !dbg !1494
  %tobool1428 = icmp eq i32 %bDum.82006, 0, !dbg !1494
  br i1 %tobool1428, label %land.end1452, label %land.rhs1429, !dbg !1494

land.rhs1429:                                     ; preds = %for.body1423
  br i1 %tobool, label %cond.true1431, label %cond.false1440, !dbg !1494

cond.true1431:                                    ; preds = %land.rhs1429
  %561 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1494, !tbaa !947
  %562 = load float** %a1436, align 8, !dbg !1494, !tbaa !947
  %arrayidx1437 = getelementptr inbounds float* %562, i64 %indvars.iv2037, !dbg !1494
  %563 = bitcast float* %arrayidx1437 to i8*, !dbg !1494
  %call1439 = call i32 %561(i8* %563, i32 1, i32 0, i8* %509, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 360) #6, !dbg !1494
  br label %cond.end1449, !dbg !1494

cond.false1440:                                   ; preds = %land.rhs1429
  %564 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1494, !tbaa !947
  %565 = load float** %a1436, align 8, !dbg !1494, !tbaa !947
  %arrayidx1446 = getelementptr inbounds float* %565, i64 %indvars.iv2037, !dbg !1494
  %566 = bitcast float* %arrayidx1446 to i8*, !dbg !1494
  %call1448 = call i32 %564(i8* %566, i32 1, i32 0, i8* %509, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 360) #6, !dbg !1494
  br label %cond.end1449, !dbg !1494

cond.end1449:                                     ; preds = %cond.false1440, %cond.true1431
  %cond1450 = phi i32 [ %call1439, %cond.true1431 ], [ %call1448, %cond.false1440 ], !dbg !1494
  %tobool1451 = icmp ne i32 %cond1450, 0, !dbg !1494
  br label %land.end1452

land.end1452:                                     ; preds = %for.body1423, %cond.end1449
  %567 = phi i1 [ false, %for.body1423 ], [ %tobool1451, %cond.end1449 ]
  %land.ext1453 = zext i1 %567 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext1453}, i64 0, metadata !850), !dbg !1270
  call void @llvm.lifetime.end(i64 128, i8* %509) #2, !dbg !1494
  %indvars.iv.next2038 = add i64 %indvars.iv2037, 1, !dbg !1508
  %568 = load i32* %n1420, align 4, !dbg !1508, !tbaa !1059
  %569 = trunc i64 %indvars.iv.next2038 to i32, !dbg !1508
  %cmp1421 = icmp slt i32 %569, %568, !dbg !1508
  br i1 %cmp1421, label %for.body1423, label %for.cond1457.loopexit, !dbg !1508

for.cond1457.loopexit:                            ; preds = %land.end1452
  %cmp14622008 = icmp sgt i32 %568, 0, !dbg !1509
  br i1 %cmp14622008, label %for.body1464.lr.ph, label %for.inc1498, !dbg !1509

for.body1464.lr.ph:                               ; preds = %for.cond1457.loopexit
  %phi1477 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv2041, i32 2, !dbg !1493
  br label %for.body1464, !dbg !1509

for.body1464:                                     ; preds = %for.body1464.lr.ph, %land.end1493
  %indvars.iv2039 = phi i64 [ 0, %for.body1464.lr.ph ], [ %indvars.iv.next2040, %land.end1493 ]
  %bDum.92010 = phi i32 [ 1, %for.body1464.lr.ph ], [ %land.ext1494, %land.end1493 ]
  call void @llvm.lifetime.start(i64 128, i8* %508) #2, !dbg !1493
  call void @llvm.dbg.declare(metadata !{[128 x i8]* %buf1466}, metadata !895), !dbg !1493
  %570 = trunc i64 %indvars.iv2039 to i32, !dbg !1493
  %call1468 = call i32 (i8*, i8*, ...)* @sprintf(i8* %508, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str213, i64 0, i64 0), i32 %570) #6, !dbg !1493
  %tobool1469 = icmp eq i32 %bDum.92010, 0, !dbg !1493
  br i1 %tobool1469, label %land.end1493, label %land.rhs1470, !dbg !1493

land.rhs1470:                                     ; preds = %for.body1464
  br i1 %tobool, label %cond.true1472, label %cond.false1481, !dbg !1493

cond.true1472:                                    ; preds = %land.rhs1470
  %571 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1493, !tbaa !947
  %572 = load float** %phi1477, align 8, !dbg !1493, !tbaa !947
  %arrayidx1478 = getelementptr inbounds float* %572, i64 %indvars.iv2039, !dbg !1493
  %573 = bitcast float* %arrayidx1478 to i8*, !dbg !1493
  %call1480 = call i32 %571(i8* %573, i32 1, i32 0, i8* %508, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 361) #6, !dbg !1493
  br label %cond.end1490, !dbg !1493

cond.false1481:                                   ; preds = %land.rhs1470
  %574 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1493, !tbaa !947
  %575 = load float** %phi1477, align 8, !dbg !1493, !tbaa !947
  %arrayidx1487 = getelementptr inbounds float* %575, i64 %indvars.iv2039, !dbg !1493
  %576 = bitcast float* %arrayidx1487 to i8*, !dbg !1493
  %call1489 = call i32 %574(i8* %576, i32 1, i32 0, i8* %508, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 361) #6, !dbg !1493
  br label %cond.end1490, !dbg !1493

cond.end1490:                                     ; preds = %cond.false1481, %cond.true1472
  %cond1491 = phi i32 [ %call1480, %cond.true1472 ], [ %call1489, %cond.false1481 ], !dbg !1493
  %tobool1492 = icmp ne i32 %cond1491, 0, !dbg !1493
  br label %land.end1493

land.end1493:                                     ; preds = %for.body1464, %cond.end1490
  %577 = phi i1 [ false, %for.body1464 ], [ %tobool1492, %cond.end1490 ]
  %land.ext1494 = zext i1 %577 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext1494}, i64 0, metadata !850), !dbg !1270
  call void @llvm.lifetime.end(i64 128, i8* %508) #2, !dbg !1493
  %indvars.iv.next2040 = add i64 %indvars.iv2039, 1, !dbg !1509
  %578 = load i32* %n1420, align 4, !dbg !1509, !tbaa !1059
  %579 = trunc i64 %indvars.iv.next2040 to i32, !dbg !1509
  %cmp1462 = icmp slt i32 %579, %578, !dbg !1509
  br i1 %cmp1462, label %for.body1464, label %for.inc1498, !dbg !1509

for.inc1498:                                      ; preds = %for.cond1416.loopexit, %land.end1493, %for.cond1457.loopexit
  %indvars.iv.next2042 = add i64 %indvars.iv2041, 1, !dbg !1497
  %lftr.wideiv = trunc i64 %indvars.iv.next2042 to i32, !dbg !1497
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !1497
  br i1 %exitcond, label %if.end1501, label %for.body1269, !dbg !1497

if.end1501:                                       ; preds = %for.inc1498, %if.end
  ret void, !dbg !1510
}

; Function Attrs: optsize
declare void @init_inputrec(%struct.t_inputrec*) #3

; Function Attrs: optsize
declare void @done_inputrec(%struct.t_inputrec*) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @do_top(%struct.t_topology* %top, i32 %bRead) #0 {
entry:
  %buf28.i.i = alloca [128 x i8], align 16
  %buf.i36 = alloca [128 x i8], align 16
  %buf.i.i = alloca [128 x i8], align 16
  %buf.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct.t_topology* %top}, i64 0, metadata !709), !dbg !1511
  call void @llvm.dbg.value(metadata !{i32 %bRead}, i64 0, metadata !710), !dbg !1511
  %symtab = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 4, !dbg !1512
  call void @llvm.dbg.value(metadata !{%struct.t_symtab* %symtab}, i64 0, metadata !1513) #2, !dbg !1514
  call void @llvm.dbg.value(metadata !{i32 %bRead}, i64 0, metadata !1515) #2, !dbg !1514
  %0 = getelementptr inbounds [4096 x i8]* %buf.i, i64 0, i64 0, !dbg !1516
  call void @llvm.lifetime.start(i64 4096, i8* %0) #2, !dbg !1516
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %buf.i}, metadata !839) #2, !dbg !1516
  %tobool.i = icmp eq i32 %bRead, 0, !dbg !1517
  br i1 %tobool.i, label %if.else.i, label %if.then.i, !dbg !1517

if.then.i:                                        ; preds = %entry
  %1 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1517, !tbaa !947
  %2 = bitcast %struct.t_symtab* %symtab to i8*, !dbg !1517
  %call.i = call i32 %1(i8* %2, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str104, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 660) #6, !dbg !1517
  %nr477.i = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 0, !dbg !1518
  %3 = load i32* %nr477.i, align 4, !dbg !1518, !tbaa !1059
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !1519) #2, !dbg !1518
  %call6.i = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str105, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 663, i32 1, i32 24) #6, !dbg !1520
  %4 = bitcast i8* %call6.i to %struct.symbuf*, !dbg !1520
  %symbuf7.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 4, i32 1, !dbg !1520
  store %struct.symbuf* %4, %struct.symbuf** %symbuf7.i, align 8, !dbg !1520, !tbaa !947
  call void @llvm.dbg.value(metadata !{%struct.symbuf* %4}, i64 0, metadata !1522) #2, !dbg !1523
  %bufsize.i = bitcast i8* %call6.i to i32*, !dbg !1524
  store i32 %3, i32* %bufsize.i, align 4, !dbg !1524, !tbaa !1059
  %call9.i = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str106, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 666, i32 %3, i32 8) #6, !dbg !1525
  %5 = bitcast i8* %call9.i to i8**, !dbg !1525
  %buf10.i = getelementptr inbounds i8* %call6.i, i64 8, !dbg !1525
  %6 = bitcast i8* %buf10.i to i8***, !dbg !1525
  store i8** %5, i8*** %6, align 8, !dbg !1525, !tbaa !947
  call void @llvm.dbg.value(metadata !177, i64 0, metadata !1526) #2, !dbg !1527
  %cmp78.i = icmp sgt i32 %3, 0, !dbg !1527
  br i1 %cmp78.i, label %cond.end17.i, label %do_symtab.exit, !dbg !1527

cond.end17.i:                                     ; preds = %if.then.i, %cond.end17.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %cond.end17.i ], [ 0, %if.then.i ]
  %7 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1529, !tbaa !947
  %call13.i = call i32 %7(i8* %0, i32 1, i32 7, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 668) #6, !dbg !1529
  %call20.i = call noalias i8* @strdup(i8* %0) #6, !dbg !1531
  %8 = load i8*** %6, align 8, !dbg !1531, !tbaa !947
  %arrayidx.i = getelementptr inbounds i8** %8, i64 %indvars.iv.i, !dbg !1531
  store i8* %call20.i, i8** %arrayidx.i, align 8, !dbg !1531, !tbaa !947
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !1527
  %lftr.wideiv106 = trunc i64 %indvars.iv.next.i to i32, !dbg !1527
  %exitcond107 = icmp eq i32 %lftr.wideiv106, %3, !dbg !1527
  br i1 %exitcond107, label %do_symtab.exit, label %cond.end17.i, !dbg !1527

if.else.i:                                        ; preds = %entry
  %9 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1517, !tbaa !947
  %10 = bitcast %struct.t_symtab* %symtab to i8*, !dbg !1517
  %call3.i = call i32 %9(i8* %10, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str104, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 660) #6, !dbg !1517
  %nr4.i = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 0, !dbg !1518
  %11 = load i32* %nr4.i, align 4, !dbg !1518, !tbaa !1059
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !1519) #2, !dbg !1518
  %symbuf22.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 4, i32 1, !dbg !1532
  %symbuf.084.i = load %struct.symbuf** %symbuf22.i, align 8, !dbg !1532
  %cmp2385.i = icmp eq %struct.symbuf* %symbuf.084.i, null, !dbg !1534
  br i1 %cmp2385.i, label %while.end.i, label %for.cond24.preheader.i, !dbg !1534

for.cond24.preheader.i:                           ; preds = %if.else.i, %for.end44.i
  %symbuf.088.i = phi %struct.symbuf* [ %symbuf.0.i, %for.end44.i ], [ %symbuf.084.i, %if.else.i ]
  %nr.086.i = phi i32 [ %sub.i, %for.end44.i ], [ %11, %if.else.i ]
  %bufsize25.i = getelementptr inbounds %struct.symbuf* %symbuf.088.i, i64 0, i32 0, !dbg !1535
  %12 = load i32* %bufsize25.i, align 4, !dbg !1535, !tbaa !1059
  %cmp2680.i = icmp sgt i32 %12, 0, !dbg !1535
  %cmp2781.i = icmp sgt i32 %nr.086.i, 0, !dbg !1535
  %or.cond82.i = and i1 %cmp2680.i, %cmp2781.i, !dbg !1535
  br i1 %or.cond82.i, label %for.body28.lr.ph.i, label %for.end44.i, !dbg !1535

for.body28.lr.ph.i:                               ; preds = %for.cond24.preheader.i
  %buf32.i = getelementptr inbounds %struct.symbuf* %symbuf.088.i, i64 0, i32 1, !dbg !1538
  br label %for.inc42.i, !dbg !1535

for.inc42.i:                                      ; preds = %for.inc42.i, %for.body28.lr.ph.i
  %indvars.iv90.i = phi i64 [ 0, %for.body28.lr.ph.i ], [ %indvars.iv.next91.i, %for.inc42.i ]
  %i.183.i = phi i32 [ 0, %for.body28.lr.ph.i ], [ %inc43.i, %for.inc42.i ]
  %13 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1538, !tbaa !947
  %14 = load i8*** %buf32.i, align 8, !dbg !1538, !tbaa !947
  %arrayidx38.i = getelementptr inbounds i8** %14, i64 %indvars.iv90.i, !dbg !1538
  %15 = load i8** %arrayidx38.i, align 8, !dbg !1538, !tbaa !947
  %call39.i = call i32 %13(i8* %15, i32 1, i32 7, i8* getelementptr inbounds ([15 x i8]* @.str107, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 676) #6, !dbg !1538
  %indvars.iv.next91.i = add i64 %indvars.iv90.i, 1, !dbg !1535
  %inc43.i = add nsw i32 %i.183.i, 1, !dbg !1535
  call void @llvm.dbg.value(metadata !{i32 %inc43.i}, i64 0, metadata !1526) #2, !dbg !1535
  %16 = load i32* %bufsize25.i, align 4, !dbg !1535, !tbaa !1059
  %17 = trunc i64 %indvars.iv.next91.i to i32, !dbg !1535
  %cmp26.i = icmp slt i32 %17, %16, !dbg !1535
  %cmp27.i = icmp slt i32 %17, %nr.086.i, !dbg !1535
  %or.cond.i = and i1 %cmp26.i, %cmp27.i, !dbg !1535
  br i1 %or.cond.i, label %for.inc42.i, label %for.end44.i, !dbg !1535

for.end44.i:                                      ; preds = %for.inc42.i, %for.cond24.preheader.i
  %i.1.lcssa.i = phi i32 [ 0, %for.cond24.preheader.i ], [ %inc43.i, %for.inc42.i ]
  %sub.i = sub nsw i32 %nr.086.i, %i.1.lcssa.i, !dbg !1539
  call void @llvm.dbg.value(metadata !{i32 %sub.i}, i64 0, metadata !1519) #2, !dbg !1539
  %next.i = getelementptr inbounds %struct.symbuf* %symbuf.088.i, i64 0, i32 2, !dbg !1540
  %symbuf.0.i = load %struct.symbuf** %next.i, align 8, !dbg !1532
  %cmp23.i = icmp eq %struct.symbuf* %symbuf.0.i, null, !dbg !1534
  br i1 %cmp23.i, label %while.end.i, label %for.cond24.preheader.i, !dbg !1534

while.end.i:                                      ; preds = %for.end44.i, %if.else.i
  %nr.0.lcssa.i = phi i32 [ %11, %if.else.i ], [ %sub.i, %for.end44.i ]
  %cmp45.i = icmp eq i32 %nr.0.lcssa.i, 0, !dbg !1541
  br i1 %cmp45.i, label %do_symtab.exit, label %if.then46.i, !dbg !1541

if.then46.i:                                      ; preds = %while.end.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([30 x i8]* @.str108, i64 0, i64 0), i32 %nr.0.lcssa.i) #6, !dbg !1542
  br label %do_symtab.exit, !dbg !1542

do_symtab.exit:                                   ; preds = %cond.end17.i, %if.then.i, %while.end.i, %if.then46.i
  call void @llvm.lifetime.end(i64 4096, i8* %0) #2, !dbg !1543
  %name = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0, !dbg !1544
  call fastcc void @do_symstr(i8*** %name, i32 %bRead, %struct.t_symtab* %symtab) #8, !dbg !1544
  %atoms = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, !dbg !1545
  call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !1546) #2, !dbg !1547
  call void @llvm.dbg.value(metadata !{i32 %bRead}, i64 0, metadata !1548) #2, !dbg !1547
  call void @llvm.dbg.value(metadata !{%struct.t_symtab* %symtab}, i64 0, metadata !1549) #2, !dbg !1547
  %tobool.i23 = icmp ne i32 %bRead, 0, !dbg !1550
  br i1 %tobool.i23, label %if.then.i27, label %cond.end17.i24, !dbg !1550

cond.end17.i24:                                   ; preds = %do_symtab.exit
  %18 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1550, !tbaa !947
  %19 = bitcast %struct.t_atoms* %atoms to i8*, !dbg !1550
  %call2.i = call i32 %18(i8* %19, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str81, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 622) #6, !dbg !1550
  %20 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1551, !tbaa !947
  %nres7.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 5, !dbg !1551
  %21 = bitcast i32* %nres7.i to i8*, !dbg !1551
  %call8.i = call i32 %20(i8* %21, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str82, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 623) #6, !dbg !1551
  %22 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1552, !tbaa !947
  %ngrpname15.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 7, !dbg !1552
  %23 = bitcast i32* %ngrpname15.i to i8*, !dbg !1552
  %call16.i = call i32 %22(i8* %23, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str83, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 624) #6, !dbg !1552
  %nr32.pre.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !1553
  br label %for.cond.preheader.i

if.then.i27:                                      ; preds = %do_symtab.exit
  %24 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1550, !tbaa !947
  %25 = bitcast %struct.t_atoms* %atoms to i8*, !dbg !1550
  %call.i25 = call i32 %24(i8* %25, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str81, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 622) #6, !dbg !1550
  %26 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1551, !tbaa !947
  %nres.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 5, !dbg !1551
  %27 = bitcast i32* %nres.i to i8*, !dbg !1551
  %call5.i = call i32 %26(i8* %27, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str82, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 623) #6, !dbg !1551
  %28 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1552, !tbaa !947
  %ngrpname.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 7, !dbg !1552
  %29 = bitcast i32* %ngrpname.i to i8*, !dbg !1552
  %call13.i26 = call i32 %28(i8* %29, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str83, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 624) #6, !dbg !1552
  %nr20.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !1555
  %30 = load i32* %nr20.i, align 4, !dbg !1555, !tbaa !1059
  %call21.i = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str84, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 626, i32 %30, i32 40) #6, !dbg !1555
  %31 = bitcast i8* %call21.i to %struct.t_atom*, !dbg !1555
  %atom.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1, !dbg !1555
  store %struct.t_atom* %31, %struct.t_atom** %atom.i, align 8, !dbg !1555, !tbaa !947
  %32 = load i32* %nr20.i, align 4, !dbg !1557, !tbaa !1059
  %call23.i = call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str85, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 627, i32 %32, i32 8) #6, !dbg !1557
  %33 = bitcast i8* %call23.i to i8***, !dbg !1557
  %atomname.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 2, !dbg !1557
  store i8*** %33, i8**** %atomname.i, align 8, !dbg !1557, !tbaa !947
  %34 = load i32* %nr20.i, align 4, !dbg !1558, !tbaa !1059
  %call25.i = call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str86, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 628, i32 %34, i32 8) #6, !dbg !1558
  %35 = bitcast i8* %call25.i to i8***, !dbg !1558
  %atomtype.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 3, !dbg !1558
  store i8*** %35, i8**** %atomtype.i, align 8, !dbg !1558, !tbaa !947
  %36 = load i32* %nr20.i, align 4, !dbg !1559, !tbaa !1059
  %call27.i = call i8* @save_calloc(i8* getelementptr inbounds ([17 x i8]* @.str87, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 629, i32 %36, i32 8) #6, !dbg !1559
  %37 = bitcast i8* %call27.i to i8***, !dbg !1559
  %atomtypeB.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 4, !dbg !1559
  store i8*** %37, i8**** %atomtypeB.i, align 8, !dbg !1559, !tbaa !947
  %38 = load i32* %nres.i, align 4, !dbg !1560, !tbaa !1059
  %call29.i = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str88, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 630, i32 %38, i32 8) #6, !dbg !1560
  %39 = bitcast i8* %call29.i to i8***, !dbg !1560
  %resname.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 6, !dbg !1560
  store i8*** %39, i8**** %resname.i, align 8, !dbg !1560, !tbaa !947
  %40 = load i32* %ngrpname.i, align 4, !dbg !1561, !tbaa !1059
  %call31.i = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str89, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 631, i32 %40, i32 8) #6, !dbg !1561
  %41 = bitcast i8* %call31.i to i8***, !dbg !1561
  %grpname.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 8, !dbg !1561
  store i8*** %41, i8**** %grpname.i, align 8, !dbg !1561, !tbaa !947
  %pdbinfo.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 11, !dbg !1562
  store %struct.t_pdbinfo* null, %struct.t_pdbinfo** %pdbinfo.i, align 8, !dbg !1562, !tbaa !947
  br label %for.cond.preheader.i, !dbg !1563

for.cond.preheader.i:                             ; preds = %if.then.i27, %cond.end17.i24
  %nr32.pre-phi.i = phi i32* [ %nr20.i, %if.then.i27 ], [ %nr32.pre.i, %cond.end17.i24 ], !dbg !1553
  %42 = load i32* %nr32.pre-phi.i, align 4, !dbg !1553, !tbaa !1059
  %cmp170.i = icmp sgt i32 %42, 0, !dbg !1553
  br i1 %cmp170.i, label %for.body.lr.ph.i, label %do_strstr.exit.i, !dbg !1553

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %atom33.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1, !dbg !1564
  br label %for.body.i, !dbg !1553

for.body.i:                                       ; preds = %do_atom.exit.i, %for.body.lr.ph.i
  %indvars.iv182.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next183.i, %do_atom.exit.i ]
  %43 = load %struct.t_atom** %atom33.i, align 8, !dbg !1564, !tbaa !947
  %arrayidx.i28 = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, !dbg !1564
  call void @llvm.dbg.value(metadata !1565, i64 0, metadata !1566) #2, !dbg !1567
  br i1 %tobool.i23, label %cond.true52.i.i, label %cond.false54.i.i, !dbg !1568

cond.true52.i.i:                                  ; preds = %for.body.i
  %44 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1568, !tbaa !947
  %45 = bitcast %struct.t_atom* %arrayidx.i28 to i8*, !dbg !1568
  %call.i.i = call i32 %44(i8* %45, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str94, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 562) #6, !dbg !1568
  %46 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1569, !tbaa !947
  %q.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 1, !dbg !1569
  %47 = bitcast float* %q.i.i to i8*, !dbg !1569
  %call5.i.i = call i32 %46(i8* %47, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str95, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 563) #6, !dbg !1569
  %48 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1570, !tbaa !947
  %mB.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 2, !dbg !1570
  %49 = bitcast float* %mB.i.i to i8*, !dbg !1570
  %call13.i.i = call i32 %48(i8* %49, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str96, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 564) #6, !dbg !1570
  %50 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1571, !tbaa !947
  %qB.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 3, !dbg !1571
  %51 = bitcast float* %qB.i.i to i8*, !dbg !1571
  %call21.i.i = call i32 %50(i8* %51, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str97, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 565) #6, !dbg !1571
  %52 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1572, !tbaa !947
  %type.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 4, !dbg !1572
  %53 = bitcast i16* %type.i.i to i8*, !dbg !1572
  %call29.i.i = call i32 %52(i8* %53, i32 1, i32 3, i8* getelementptr inbounds ([11 x i8]* @.str98, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 566) #6, !dbg !1572
  %54 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1573, !tbaa !947
  %typeB.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 5, !dbg !1573
  %55 = bitcast i16* %typeB.i.i to i8*, !dbg !1573
  %call37.i.i = call i32 %54(i8* %55, i32 1, i32 3, i8* getelementptr inbounds ([12 x i8]* @.str99, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 567) #6, !dbg !1573
  %56 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1574, !tbaa !947
  %ptype.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 6, !dbg !1574
  %57 = bitcast i32* %ptype.i.i to i8*, !dbg !1574
  %call45.i.i = call i32 %56(i8* %57, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str100, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 568) #6, !dbg !1574
  %58 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1575, !tbaa !947
  %resnr.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 7, !dbg !1575
  %59 = bitcast i32* %resnr.i.i to i8*, !dbg !1575
  %call53.i.i = call i32 %58(i8* %59, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str101, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 569) #6, !dbg !1575
  br label %cond.end57.i.i, !dbg !1575

cond.false54.i.i:                                 ; preds = %for.body.i
  %60 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1568, !tbaa !947
  %61 = bitcast %struct.t_atom* %arrayidx.i28 to i8*, !dbg !1568
  %call2.i.i = call i32 %60(i8* %61, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str94, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 562) #6, !dbg !1568
  %62 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1569, !tbaa !947
  %q7.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 1, !dbg !1569
  %63 = bitcast float* %q7.i.i to i8*, !dbg !1569
  %call8.i.i = call i32 %62(i8* %63, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str95, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 563) #6, !dbg !1569
  %64 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1570, !tbaa !947
  %mB15.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 2, !dbg !1570
  %65 = bitcast float* %mB15.i.i to i8*, !dbg !1570
  %call16.i.i = call i32 %64(i8* %65, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str96, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 564) #6, !dbg !1570
  %66 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1571, !tbaa !947
  %qB23.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 3, !dbg !1571
  %67 = bitcast float* %qB23.i.i to i8*, !dbg !1571
  %call24.i.i = call i32 %66(i8* %67, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str97, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 565) #6, !dbg !1571
  %68 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1572, !tbaa !947
  %type31.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 4, !dbg !1572
  %69 = bitcast i16* %type31.i.i to i8*, !dbg !1572
  %call32.i.i = call i32 %68(i8* %69, i32 1, i32 3, i8* getelementptr inbounds ([11 x i8]* @.str98, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 566) #6, !dbg !1572
  %70 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1573, !tbaa !947
  %typeB39.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 5, !dbg !1573
  %71 = bitcast i16* %typeB39.i.i to i8*, !dbg !1573
  %call40.i.i = call i32 %70(i8* %71, i32 1, i32 3, i8* getelementptr inbounds ([12 x i8]* @.str99, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 567) #6, !dbg !1573
  %72 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1574, !tbaa !947
  %ptype47.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 6, !dbg !1574
  %73 = bitcast i32* %ptype47.i.i to i8*, !dbg !1574
  %call48.i.i = call i32 %72(i8* %73, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str100, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 568) #6, !dbg !1574
  %74 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1575, !tbaa !947
  %resnr55.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 7, !dbg !1575
  %75 = bitcast i32* %resnr55.i.i to i8*, !dbg !1575
  %call56.i.i = call i32 %74(i8* %75, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str101, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 569) #6, !dbg !1575
  br label %cond.end57.i.i, !dbg !1575

cond.end57.i.i:                                   ; preds = %cond.false54.i.i, %cond.true52.i.i
  %76 = load i32* @file_version, align 4, !dbg !1576, !tbaa !1059
  %cmp.i.i = icmp slt i32 %76, 23, !dbg !1576
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i, !dbg !1576

if.then.i.i:                                      ; preds = %cond.end57.i.i
  call void @llvm.dbg.value(metadata !1577, i64 0, metadata !1566) #2, !dbg !1578
  %arrayidx.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 8, i64 8, !dbg !1580
  store i8 0, i8* %arrayidx.i.i, align 1, !dbg !1580, !tbaa !948
  br label %if.end.i.i, !dbg !1581

if.end.i.i:                                       ; preds = %if.then.i.i, %cond.end57.i.i
  %ngrp.addr.0.i.i = phi i32 [ 8, %if.then.i.i ], [ 9, %cond.end57.i.i ]
  br i1 %tobool.i23, label %cond.true60.i.i, label %cond.false63.i.i, !dbg !1582

cond.true60.i.i:                                  ; preds = %if.end.i.i
  %77 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1582, !tbaa !947
  %arraydecay.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 8, i64 0, !dbg !1582
  %call62.i.i = call i32 %77(i8* %arraydecay.i.i, i32 %ngrp.addr.0.i.i, i32 2, i8* getelementptr inbounds ([12 x i8]* @.str102, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 574) #6, !dbg !1582
  br label %do_atom.exit.i, !dbg !1582

cond.false63.i.i:                                 ; preds = %if.end.i.i
  %78 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1582, !tbaa !947
  %arraydecay65.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 8, i64 0, !dbg !1582
  %call66.i.i = call i32 %78(i8* %arraydecay65.i.i, i32 %ngrp.addr.0.i.i, i32 2, i8* getelementptr inbounds ([12 x i8]* @.str102, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 574) #6, !dbg !1582
  br label %do_atom.exit.i, !dbg !1582

do_atom.exit.i:                                   ; preds = %cond.false63.i.i, %cond.true60.i.i
  %indvars.iv.next183.i = add i64 %indvars.iv182.i, 1, !dbg !1553
  %79 = load i32* %nr32.pre-phi.i, align 4, !dbg !1553, !tbaa !1059
  %80 = trunc i64 %indvars.iv.next183.i to i32, !dbg !1553
  %cmp.i = icmp slt i32 %80, %79, !dbg !1553
  br i1 %cmp.i, label %for.body.i, label %for.end.i, !dbg !1553

for.end.i:                                        ; preds = %do_atom.exit.i
  %atomname35.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 2, !dbg !1583
  %81 = load i8**** %atomname35.i, align 8, !dbg !1583, !tbaa !947
  call void @llvm.dbg.value(metadata !{i32 %79}, i64 0, metadata !1584) #2, !dbg !1585
  call void @llvm.dbg.value(metadata !{i8*** %81}, i64 0, metadata !1586) #2, !dbg !1585
  call void @llvm.dbg.value(metadata !{i32 %bRead}, i64 0, metadata !1587) #2, !dbg !1585
  call void @llvm.dbg.value(metadata !{%struct.t_symtab* %symtab}, i64 0, metadata !1588) #2, !dbg !1585
  call void @llvm.dbg.value(metadata !177, i64 0, metadata !1589) #2, !dbg !1590
  %cmp3.i.i = icmp sgt i32 %79, 0, !dbg !1590
  br i1 %cmp3.i.i, label %for.body.i.i, label %do_strstr.exit.i, !dbg !1590

for.body.i.i:                                     ; preds = %for.end.i, %for.body.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body.i.i ], [ 0, %for.end.i ]
  %arrayidx.i122.i = getelementptr inbounds i8*** %81, i64 %indvars.iv.i.i, !dbg !1592
  call fastcc void @do_symstr(i8*** %arrayidx.i122.i, i32 %bRead, %struct.t_symtab* %symtab) #6, !dbg !1592
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1, !dbg !1590
  %lftr.wideiv103 = trunc i64 %indvars.iv.next.i.i to i32, !dbg !1590
  %exitcond104 = icmp eq i32 %lftr.wideiv103, %79, !dbg !1590
  br i1 %exitcond104, label %do_strstr.exit.ithread-pre-split.loopexit, label %for.body.i.i, !dbg !1590

do_strstr.exit.ithread-pre-split.loopexit:        ; preds = %for.body.i.i
  %.pr.pre = load i32* %nr32.pre-phi.i, align 4, !dbg !1593, !tbaa !1059
  br label %do_strstr.exit.i

do_strstr.exit.i:                                 ; preds = %for.end.i, %do_strstr.exit.ithread-pre-split.loopexit, %for.cond.preheader.i
  %82 = phi i32 [ %42, %for.cond.preheader.i ], [ %.pr.pre, %do_strstr.exit.ithread-pre-split.loopexit ], [ %79, %for.end.i ], !dbg !1593
  %83 = load i32* @file_version, align 4, !dbg !1596, !tbaa !1059
  %cmp37.i = icmp slt i32 %83, 21, !dbg !1596
  %or.cond.i29 = and i1 %tobool.i23, %cmp37.i, !dbg !1596
  br i1 %or.cond.i29, label %for.cond39.preheader.i, label %if.else.i32, !dbg !1596

for.cond39.preheader.i:                           ; preds = %do_strstr.exit.i
  %cmp41167.i = icmp sgt i32 %82, 0, !dbg !1593
  br i1 %cmp41167.i, label %for.body42.lr.ph.i, label %if.end58.i, !dbg !1593

for.body42.lr.ph.i:                               ; preds = %for.cond39.preheader.i
  %atomtype45.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 3, !dbg !1597
  %atomtypeB49.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 4, !dbg !1599
  br label %for.body42.i, !dbg !1593

for.body42.i:                                     ; preds = %for.body42.i, %for.body42.lr.ph.i
  %indvars.iv.i30 = phi i64 [ 0, %for.body42.lr.ph.i ], [ %indvars.iv.next.i31, %for.body42.i ]
  %call43.i = call i8** @put_symtab(%struct.t_symtab* %symtab, i8* getelementptr inbounds ([2 x i8]* @.str90, i64 0, i64 0)) #6, !dbg !1597
  %84 = load i8**** %atomtype45.i, align 8, !dbg !1597, !tbaa !947
  %arrayidx46.i = getelementptr inbounds i8*** %84, i64 %indvars.iv.i30, !dbg !1597
  store i8** %call43.i, i8*** %arrayidx46.i, align 8, !dbg !1597, !tbaa !947
  %call47.i = call i8** @put_symtab(%struct.t_symtab* %symtab, i8* getelementptr inbounds ([2 x i8]* @.str90, i64 0, i64 0)) #6, !dbg !1599
  %85 = load i8**** %atomtypeB49.i, align 8, !dbg !1599, !tbaa !947
  %arrayidx50.i = getelementptr inbounds i8*** %85, i64 %indvars.iv.i30, !dbg !1599
  store i8** %call47.i, i8*** %arrayidx50.i, align 8, !dbg !1599, !tbaa !947
  %indvars.iv.next.i31 = add i64 %indvars.iv.i30, 1, !dbg !1593
  %86 = load i32* %nr32.pre-phi.i, align 4, !dbg !1593, !tbaa !1059
  %87 = trunc i64 %indvars.iv.next.i31 to i32, !dbg !1593
  %cmp41.i = icmp slt i32 %87, %86, !dbg !1593
  br i1 %cmp41.i, label %for.body42.i, label %if.end58.i, !dbg !1593

if.else.i32:                                      ; preds = %do_strstr.exit.i
  %atomtype55.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 3, !dbg !1600
  %88 = load i8**** %atomtype55.i, align 8, !dbg !1600, !tbaa !947
  call void @llvm.dbg.value(metadata !{i32 %82}, i64 0, metadata !1602) #2, !dbg !1603
  call void @llvm.dbg.value(metadata !{i8*** %88}, i64 0, metadata !1604) #2, !dbg !1603
  call void @llvm.dbg.value(metadata !{i32 %bRead}, i64 0, metadata !1605) #2, !dbg !1603
  call void @llvm.dbg.value(metadata !{%struct.t_symtab* %symtab}, i64 0, metadata !1606) #2, !dbg !1603
  call void @llvm.dbg.value(metadata !177, i64 0, metadata !1607) #2, !dbg !1608
  %cmp3.i123.i = icmp sgt i32 %82, 0, !dbg !1608
  br i1 %cmp3.i123.i, label %for.body.i129.i, label %if.end58.i, !dbg !1608

for.body.i129.i:                                  ; preds = %if.else.i32, %for.body.i129.i
  %indvars.iv.i124.i = phi i64 [ %indvars.iv.next.i126.i, %for.body.i129.i ], [ 0, %if.else.i32 ]
  %arrayidx.i125.i = getelementptr inbounds i8*** %88, i64 %indvars.iv.i124.i, !dbg !1609
  call fastcc void @do_symstr(i8*** %arrayidx.i125.i, i32 %bRead, %struct.t_symtab* %symtab) #6, !dbg !1609
  %indvars.iv.next.i126.i = add i64 %indvars.iv.i124.i, 1, !dbg !1608
  %lftr.wideiv101 = trunc i64 %indvars.iv.next.i126.i to i32, !dbg !1608
  %exitcond102 = icmp eq i32 %lftr.wideiv101, %82, !dbg !1608
  br i1 %exitcond102, label %do_strstr.exit130.i, label %for.body.i129.i, !dbg !1608

do_strstr.exit130.i:                              ; preds = %for.body.i129.i
  %.pr.i = load i32* %nr32.pre-phi.i, align 4, !dbg !1610, !tbaa !1059
  %atomtypeB57.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 4, !dbg !1610
  %89 = load i8**** %atomtypeB57.i, align 8, !dbg !1610, !tbaa !947
  call void @llvm.dbg.value(metadata !{i32 %.pr.i}, i64 0, metadata !1611) #2, !dbg !1612
  call void @llvm.dbg.value(metadata !{i8*** %89}, i64 0, metadata !1613) #2, !dbg !1612
  call void @llvm.dbg.value(metadata !{i32 %bRead}, i64 0, metadata !1614) #2, !dbg !1612
  call void @llvm.dbg.value(metadata !{%struct.t_symtab* %symtab}, i64 0, metadata !1615) #2, !dbg !1612
  call void @llvm.dbg.value(metadata !177, i64 0, metadata !1616) #2, !dbg !1617
  %cmp3.i131.i = icmp sgt i32 %.pr.i, 0, !dbg !1617
  br i1 %cmp3.i131.i, label %for.body.i137.i, label %if.end58.i, !dbg !1617

for.body.i137.i:                                  ; preds = %do_strstr.exit130.i, %for.body.i137.i
  %indvars.iv.i132.i = phi i64 [ %indvars.iv.next.i134.i, %for.body.i137.i ], [ 0, %do_strstr.exit130.i ]
  %arrayidx.i133.i = getelementptr inbounds i8*** %89, i64 %indvars.iv.i132.i, !dbg !1618
  call fastcc void @do_symstr(i8*** %arrayidx.i133.i, i32 %bRead, %struct.t_symtab* %symtab) #6, !dbg !1618
  %indvars.iv.next.i134.i = add i64 %indvars.iv.i132.i, 1, !dbg !1617
  %lftr.wideiv99 = trunc i64 %indvars.iv.next.i134.i to i32, !dbg !1617
  %exitcond100 = icmp eq i32 %lftr.wideiv99, %.pr.i, !dbg !1617
  br i1 %exitcond100, label %if.end58.i, label %for.body.i137.i, !dbg !1617

if.end58.i:                                       ; preds = %for.body.i137.i, %for.body42.i, %do_strstr.exit130.i, %if.else.i32, %for.cond39.preheader.i
  %nres59.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 5, !dbg !1619
  %90 = load i32* %nres59.i, align 4, !dbg !1619, !tbaa !1059
  %resname60.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 6, !dbg !1619
  %91 = load i8**** %resname60.i, align 8, !dbg !1619, !tbaa !947
  call void @llvm.dbg.value(metadata !{i32 %90}, i64 0, metadata !1620) #2, !dbg !1621
  call void @llvm.dbg.value(metadata !{i8*** %91}, i64 0, metadata !1622) #2, !dbg !1621
  call void @llvm.dbg.value(metadata !{i32 %bRead}, i64 0, metadata !1623) #2, !dbg !1621
  call void @llvm.dbg.value(metadata !{%struct.t_symtab* %symtab}, i64 0, metadata !1624) #2, !dbg !1621
  call void @llvm.dbg.value(metadata !177, i64 0, metadata !1625) #2, !dbg !1626
  %cmp3.i139.i = icmp sgt i32 %90, 0, !dbg !1626
  br i1 %cmp3.i139.i, label %for.body.i145.i, label %do_strstr.exit146.i, !dbg !1626

for.body.i145.i:                                  ; preds = %if.end58.i, %for.body.i145.i
  %indvars.iv.i140.i = phi i64 [ %indvars.iv.next.i142.i, %for.body.i145.i ], [ 0, %if.end58.i ]
  %arrayidx.i141.i = getelementptr inbounds i8*** %91, i64 %indvars.iv.i140.i, !dbg !1627
  call fastcc void @do_symstr(i8*** %arrayidx.i141.i, i32 %bRead, %struct.t_symtab* %symtab) #6, !dbg !1627
  %indvars.iv.next.i142.i = add i64 %indvars.iv.i140.i, 1, !dbg !1626
  %lftr.wideiv97 = trunc i64 %indvars.iv.next.i142.i to i32, !dbg !1626
  %exitcond98 = icmp eq i32 %lftr.wideiv97, %90, !dbg !1626
  br i1 %exitcond98, label %do_strstr.exit146.i, label %for.body.i145.i, !dbg !1626

do_strstr.exit146.i:                              ; preds = %for.body.i145.i, %if.end58.i
  %ngrpname61.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 7, !dbg !1628
  %92 = load i32* %ngrpname61.i, align 4, !dbg !1628, !tbaa !1059
  %grpname62.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 8, !dbg !1628
  %93 = load i8**** %grpname62.i, align 8, !dbg !1628, !tbaa !947
  call void @llvm.dbg.value(metadata !{i32 %92}, i64 0, metadata !1629) #2, !dbg !1630
  call void @llvm.dbg.value(metadata !{i8*** %93}, i64 0, metadata !1631) #2, !dbg !1630
  call void @llvm.dbg.value(metadata !{i32 %bRead}, i64 0, metadata !1632) #2, !dbg !1630
  call void @llvm.dbg.value(metadata !{%struct.t_symtab* %symtab}, i64 0, metadata !1633) #2, !dbg !1630
  call void @llvm.dbg.value(metadata !177, i64 0, metadata !1634) #2, !dbg !1635
  %cmp3.i147.i = icmp sgt i32 %92, 0, !dbg !1635
  br i1 %cmp3.i147.i, label %for.body.i153.i, label %do_strstr.exit154.i, !dbg !1635

for.body.i153.i:                                  ; preds = %do_strstr.exit146.i, %for.body.i153.i
  %indvars.iv.i148.i = phi i64 [ %indvars.iv.next.i150.i, %for.body.i153.i ], [ 0, %do_strstr.exit146.i ]
  %arrayidx.i149.i = getelementptr inbounds i8*** %93, i64 %indvars.iv.i148.i, !dbg !1636
  call fastcc void @do_symstr(i8*** %arrayidx.i149.i, i32 %bRead, %struct.t_symtab* %symtab) #6, !dbg !1636
  %indvars.iv.next.i150.i = add i64 %indvars.iv.i148.i, 1, !dbg !1635
  %lftr.wideiv95 = trunc i64 %indvars.iv.next.i150.i to i32, !dbg !1635
  %exitcond96 = icmp eq i32 %lftr.wideiv95, %92, !dbg !1635
  br i1 %exitcond96, label %do_strstr.exit154.i, label %for.body.i153.i, !dbg !1635

do_strstr.exit154.i:                              ; preds = %for.body.i153.i, %do_strstr.exit146.i
  call void @llvm.dbg.value(metadata !1565, i64 0, metadata !1637) #2, !dbg !1639
  call void @llvm.dbg.value(metadata !1269, i64 0, metadata !1640) #2, !dbg !1641
  %94 = load i32* @file_version, align 4, !dbg !1642, !tbaa !1059
  %cmp.i155.i = icmp slt i32 %94, 23, !dbg !1642
  br i1 %cmp.i155.i, label %if.then.i157.i, label %if.end.i160.i, !dbg !1642

if.then.i157.i:                                   ; preds = %do_strstr.exit154.i
  call void @llvm.dbg.value(metadata !1577, i64 0, metadata !1637) #2, !dbg !1643
  %nr.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 8, i32 0, !dbg !1645
  store i32 1, i32* %nr.i.i, align 4, !dbg !1645, !tbaa !1059
  %call.i156.i = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str91, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 585, i32 1, i32 4) #6, !dbg !1646
  %95 = bitcast i8* %call.i156.i to i32*, !dbg !1646
  %nm_ind.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 8, i32 1, !dbg !1646
  store i32* %95, i32** %nm_ind.i.i, align 8, !dbg !1646, !tbaa !947
  br label %if.end.i160.i, !dbg !1647

if.end.i160.i:                                    ; preds = %if.then.i157.i, %do_strstr.exit154.i
  %ngrp.addr.0.i158.i = phi i32 [ 8, %if.then.i157.i ], [ 9, %do_strstr.exit154.i ]
  call void @llvm.dbg.value(metadata !177, i64 0, metadata !1648) #2, !dbg !1649
  %96 = getelementptr inbounds [128 x i8]* %buf.i.i, i64 0, i64 0, !dbg !1650
  br label %for.body.i161.i, !dbg !1649

for.body.i161.i:                                  ; preds = %for.inc48.i.i, %if.end.i160.i
  %indvars.iv5.i.i = phi i64 [ 0, %if.end.i160.i ], [ %indvars.iv.next6.i.i, %for.inc48.i.i ]
  br i1 %tobool.i23, label %if.then11.i.i, label %cond.end.i.i, !dbg !1651

cond.end.i.i:                                     ; preds = %for.body.i161.i
  %97 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1651, !tbaa !947
  %nr8.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv5.i.i, i32 0, !dbg !1651
  %98 = bitcast i32* %nr8.i.i to i8*, !dbg !1651
  %call9.i.i = call i32 %97(i8* %98, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str92, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 589) #6, !dbg !1651
  br label %for.cond20.preheader.i.i

if.then11.i.i:                                    ; preds = %for.body.i161.i
  %99 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1651, !tbaa !947
  %nr4.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv5.i.i, i32 0, !dbg !1651
  %100 = bitcast i32* %nr4.i.i to i8*, !dbg !1651
  %call5.i162.i = call i32 %99(i8* %100, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str92, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 589) #6, !dbg !1651
  %101 = load i32* %nr4.i.i, align 4, !dbg !1652, !tbaa !1059
  %call15.i.i = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str93, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 591, i32 %101, i32 4) #6, !dbg !1652
  %102 = bitcast i8* %call15.i.i to i32*, !dbg !1652
  %nm_ind18.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv5.i.i, i32 1, !dbg !1652
  store i32* %102, i32** %nm_ind18.i.i, align 8, !dbg !1652, !tbaa !947
  br label %for.cond20.preheader.i.i, !dbg !1652

for.cond20.preheader.i.i:                         ; preds = %if.then11.i.i, %cond.end.i.i
  %nr23.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv5.i.i, i32 0, !dbg !1653
  %103 = load i32* %nr23.i.i, align 4, !dbg !1653, !tbaa !1059
  %cmp241.i.i = icmp sgt i32 %103, 0, !dbg !1653
  br i1 %cmp241.i.i, label %for.body25.lr.ph.i.i, label %for.inc48.i.i, !dbg !1653

for.body25.lr.ph.i.i:                             ; preds = %for.cond20.preheader.i.i
  %nm_ind33.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv5.i.i, i32 1, !dbg !1650
  br label %for.body25.i.i, !dbg !1653

for.body25.i.i:                                   ; preds = %land.end.i.i, %for.body25.lr.ph.i.i
  %indvars.iv.i163.i = phi i64 [ 0, %for.body25.lr.ph.i.i ], [ %indvars.iv.next.i164.i, %land.end.i.i ]
  %bDum.03.i.i = phi i32 [ 1, %for.body25.lr.ph.i.i ], [ %land.ext.i.i, %land.end.i.i ]
  call void @llvm.lifetime.start(i64 128, i8* %96) #2, !dbg !1650
  call void @llvm.dbg.declare(metadata !{[128 x i8]* %buf.i.i}, metadata !800) #2, !dbg !1650
  %104 = trunc i64 %indvars.iv.i163.i to i32, !dbg !1650
  %call26.i.i = call i32 (i8*, i8*, ...)* @sprintf(i8* %96, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str93, i64 0, i64 0), i32 %104) #6, !dbg !1650
  %tobool27.i.i = icmp eq i32 %bDum.03.i.i, 0, !dbg !1650
  br i1 %tobool27.i.i, label %land.end.i.i, label %land.rhs.i.i, !dbg !1650

land.rhs.i.i:                                     ; preds = %for.body25.i.i
  br i1 %tobool.i23, label %cond.true29.i.i, label %cond.false37.i.i, !dbg !1650

cond.true29.i.i:                                  ; preds = %land.rhs.i.i
  %105 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1650, !tbaa !947
  %106 = load i32** %nm_ind33.i.i, align 8, !dbg !1650, !tbaa !947
  %arrayidx34.i.i = getelementptr inbounds i32* %106, i64 %indvars.iv.i163.i, !dbg !1650
  %107 = bitcast i32* %arrayidx34.i.i to i8*, !dbg !1650
  %call36.i.i = call i32 %105(i8* %107, i32 1, i32 1, i8* %96, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 592) #6, !dbg !1650
  br label %cond.end45.i.i, !dbg !1650

cond.false37.i.i:                                 ; preds = %land.rhs.i.i
  %108 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1650, !tbaa !947
  %109 = load i32** %nm_ind33.i.i, align 8, !dbg !1650, !tbaa !947
  %arrayidx42.i.i = getelementptr inbounds i32* %109, i64 %indvars.iv.i163.i, !dbg !1650
  %110 = bitcast i32* %arrayidx42.i.i to i8*, !dbg !1650
  %call44.i.i = call i32 %108(i8* %110, i32 1, i32 1, i8* %96, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 592) #6, !dbg !1650
  br label %cond.end45.i.i, !dbg !1650

cond.end45.i.i:                                   ; preds = %cond.false37.i.i, %cond.true29.i.i
  %cond46.i.i = phi i32 [ %call36.i.i, %cond.true29.i.i ], [ %call44.i.i, %cond.false37.i.i ], !dbg !1650
  %tobool47.i.i = icmp ne i32 %cond46.i.i, 0, !dbg !1650
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %cond.end45.i.i, %for.body25.i.i
  %111 = phi i1 [ false, %for.body25.i.i ], [ %tobool47.i.i, %cond.end45.i.i ]
  %land.ext.i.i = zext i1 %111 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext.i.i}, i64 0, metadata !1640) #2, !dbg !1641
  call void @llvm.lifetime.end(i64 128, i8* %96) #2, !dbg !1650
  %indvars.iv.next.i164.i = add i64 %indvars.iv.i163.i, 1, !dbg !1653
  %112 = load i32* %nr23.i.i, align 4, !dbg !1653, !tbaa !1059
  %113 = trunc i64 %indvars.iv.next.i164.i to i32, !dbg !1653
  %cmp24.i.i = icmp slt i32 %113, %112, !dbg !1653
  br i1 %cmp24.i.i, label %for.body25.i.i, label %for.inc48.i.i, !dbg !1653

for.inc48.i.i:                                    ; preds = %land.end.i.i, %for.cond20.preheader.i.i
  %indvars.iv.next6.i.i = add i64 %indvars.iv5.i.i, 1, !dbg !1649
  %114 = trunc i64 %indvars.iv.next6.i.i to i32, !dbg !1649
  %cmp2.i.i = icmp slt i32 %114, %ngrp.addr.0.i158.i, !dbg !1649
  br i1 %cmp2.i.i, label %for.body.i161.i, label %do_atoms.exit, !dbg !1649

do_atoms.exit:                                    ; preds = %for.inc48.i.i
  %excl.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 9, !dbg !1654
  call fastcc void @do_block(%struct.t_block* %excl.i, i32 %bRead) #6, !dbg !1654
  %idef = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, !dbg !1655
  call void @llvm.dbg.value(metadata !{%struct.t_idef* %idef}, i64 0, metadata !1656) #2, !dbg !1657
  call void @llvm.dbg.value(metadata !{i32 %bRead}, i64 0, metadata !1658) #2, !dbg !1657
  call void @llvm.dbg.value(metadata !1269, i64 0, metadata !1659) #2, !dbg !1660
  br i1 %tobool.i23, label %if.then.i47, label %cond.end17.i41, !dbg !1661

cond.end17.i41:                                   ; preds = %do_atoms.exit
  %115 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1661, !tbaa !947
  %atnr1.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 2, !dbg !1661
  %116 = bitcast i32* %atnr1.i to i8*, !dbg !1661
  %call2.i38 = call i32 %115(i8* %116, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str73, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 510) #6, !dbg !1661
  %117 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1662, !tbaa !947
  %nodeid7.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 1, !dbg !1662
  %118 = bitcast i32* %nodeid7.i to i8*, !dbg !1662
  %call8.i39 = call i32 %117(i8* %118, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str74, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 511) #6, !dbg !1662
  %119 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1663, !tbaa !947
  %120 = bitcast %struct.t_idef* %idef to i8*, !dbg !1663
  %call16.i40 = call i32 %119(i8* %120, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str75, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 512) #6, !dbg !1663
  %ntypes24.pre.i = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 0, !dbg !1664
  br label %for.cond.preheader.i48

if.then.i47:                                      ; preds = %do_atoms.exit
  %121 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1661, !tbaa !947
  %atnr.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 2, !dbg !1661
  %122 = bitcast i32* %atnr.i to i8*, !dbg !1661
  %call.i42 = call i32 %121(i8* %122, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str73, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 510) #6, !dbg !1661
  %123 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1662, !tbaa !947
  %nodeid.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 1, !dbg !1662
  %124 = bitcast i32* %nodeid.i to i8*, !dbg !1662
  %call5.i43 = call i32 %123(i8* %124, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str74, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 511) #6, !dbg !1662
  %125 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1663, !tbaa !947
  %126 = bitcast %struct.t_idef* %idef to i8*, !dbg !1663
  %call13.i44 = call i32 %125(i8* %126, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str75, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 512) #6, !dbg !1663
  %ntypes20.i = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 0, !dbg !1665
  %127 = load i32* %ntypes20.i, align 4, !dbg !1665, !tbaa !1059
  %call21.i45 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str76, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 514, i32 %127, i32 4) #6, !dbg !1665
  %128 = bitcast i8* %call21.i45 to i32*, !dbg !1665
  %functype.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 3, !dbg !1665
  store i32* %128, i32** %functype.i, align 8, !dbg !1665, !tbaa !947
  %129 = load i32* %ntypes20.i, align 4, !dbg !1667, !tbaa !1059
  %call23.i46 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str77, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 515, i32 %129, i32 24) #6, !dbg !1667
  %130 = bitcast i8* %call23.i46 to %union.t_iparams*, !dbg !1667
  %iparams.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 4, !dbg !1667
  store %union.t_iparams* %130, %union.t_iparams** %iparams.i, align 8, !dbg !1667, !tbaa !947
  br label %for.cond.preheader.i48, !dbg !1668

for.cond.preheader.i48:                           ; preds = %if.then.i47, %cond.end17.i41
  %ntypes24.pre-phi.i = phi i32* [ %ntypes20.i, %if.then.i47 ], [ %ntypes24.pre.i, %cond.end17.i41 ], !dbg !1664
  %131 = load i32* %ntypes24.pre-phi.i, align 4, !dbg !1664, !tbaa !1059
  %cmp205.i = icmp sgt i32 %131, 0, !dbg !1664
  br i1 %cmp205.i, label %for.body.lr.ph.i49, label %for.cond80.preheader.i, !dbg !1664

for.body.lr.ph.i49:                               ; preds = %for.cond.preheader.i48
  %132 = getelementptr inbounds [128 x i8]* %buf.i36, i64 0, i64 0, !dbg !1669
  %functype29.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 3, !dbg !1669
  br label %for.body.i51, !dbg !1664

for.cond41.preheader.i:                           ; preds = %land.end.i
  %cmp43203.i = icmp sgt i32 %141, 0, !dbg !1670
  br i1 %cmp43203.i, label %for.body44.lr.ph.i, label %for.cond80.preheader.i, !dbg !1670

for.body44.lr.ph.i:                               ; preds = %for.cond41.preheader.i
  %iparams75.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 4, !dbg !1672
  br label %for.body44.i, !dbg !1670

for.body.i51:                                     ; preds = %land.end.i, %for.body.lr.ph.i49
  %indvars.iv225.i = phi i64 [ 0, %for.body.lr.ph.i49 ], [ %indvars.iv.next226.i, %land.end.i ]
  %bDum.0207.i = phi i32 [ 1, %for.body.lr.ph.i49 ], [ %land.ext.i, %land.end.i ]
  call void @llvm.lifetime.start(i64 128, i8* %132) #2, !dbg !1669
  call void @llvm.dbg.declare(metadata !{[128 x i8]* %buf.i36}, metadata !758) #2, !dbg !1669
  %133 = trunc i64 %indvars.iv225.i to i32, !dbg !1669
  %call25.i50 = call i32 (i8*, i8*, ...)* @sprintf(i8* %132, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str76, i64 0, i64 0), i32 %133) #6, !dbg !1669
  %tobool26.i = icmp eq i32 %bDum.0207.i, 0, !dbg !1669
  br i1 %tobool26.i, label %land.end.i, label %land.rhs.i, !dbg !1669

land.rhs.i:                                       ; preds = %for.body.i51
  br i1 %tobool.i23, label %cond.true28.i, label %cond.false32.i, !dbg !1669

cond.true28.i:                                    ; preds = %land.rhs.i
  %134 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1669, !tbaa !947
  %135 = load i32** %functype29.i, align 8, !dbg !1669, !tbaa !947
  %arrayidx.i52 = getelementptr inbounds i32* %135, i64 %indvars.iv225.i, !dbg !1669
  %136 = bitcast i32* %arrayidx.i52 to i8*, !dbg !1669
  %call31.i53 = call i32 %134(i8* %136, i32 1, i32 1, i8* %132, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 517) #6, !dbg !1669
  br label %cond.end38.i, !dbg !1669

cond.false32.i:                                   ; preds = %land.rhs.i
  %137 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1669, !tbaa !947
  %138 = load i32** %functype29.i, align 8, !dbg !1669, !tbaa !947
  %arrayidx35.i = getelementptr inbounds i32* %138, i64 %indvars.iv225.i, !dbg !1669
  %139 = bitcast i32* %arrayidx35.i to i8*, !dbg !1669
  %call37.i = call i32 %137(i8* %139, i32 1, i32 1, i8* %132, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 517) #6, !dbg !1669
  br label %cond.end38.i, !dbg !1669

cond.end38.i:                                     ; preds = %cond.false32.i, %cond.true28.i
  %cond39.i = phi i32 [ %call31.i53, %cond.true28.i ], [ %call37.i, %cond.false32.i ], !dbg !1669
  %tobool40.i = icmp ne i32 %cond39.i, 0, !dbg !1669
  br label %land.end.i

land.end.i:                                       ; preds = %cond.end38.i, %for.body.i51
  %140 = phi i1 [ false, %for.body.i51 ], [ %tobool40.i, %cond.end38.i ]
  %land.ext.i = zext i1 %140 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext.i}, i64 0, metadata !1659) #2, !dbg !1660
  call void @llvm.lifetime.end(i64 128, i8* %132) #2, !dbg !1669
  %indvars.iv.next226.i = add i64 %indvars.iv225.i, 1, !dbg !1664
  %141 = load i32* %ntypes24.pre-phi.i, align 4, !dbg !1664, !tbaa !1059
  %142 = trunc i64 %indvars.iv.next226.i to i32, !dbg !1664
  %cmp.i54 = icmp slt i32 %142, %141, !dbg !1664
  br i1 %cmp.i54, label %for.body.i51, label %for.cond41.preheader.i, !dbg !1664

for.cond80.preheader.i:                           ; preds = %if.end70.i, %for.cond41.preheader.i, %for.cond.preheader.i48
  %143 = getelementptr inbounds [128 x i8]* %buf28.i.i, i64 0, i64 0, !dbg !1674
  br label %for.body83.i, !dbg !1678

for.body44.i:                                     ; preds = %if.end70.i, %for.body44.lr.ph.i
  %indvars.iv223.i = phi i64 [ 0, %for.body44.lr.ph.i ], [ %indvars.iv.next224.i, %if.end70.i ]
  br i1 %tobool.i23, label %for.body50.i, label %if.end70.i, !dbg !1679

for.body50.i:                                     ; preds = %for.inc67.i, %for.body44.i
  %indvars.iv219.i = phi i64 [ 0, %for.body44.i ], [ %indvars.iv.next220.i, %for.inc67.i ]
  %144 = load i32* @file_version, align 4, !dbg !1680, !tbaa !1059
  %fvnr.i = getelementptr inbounds [7 x %struct.t_ftupd]* @ftupd, i64 0, i64 %indvars.iv219.i, i32 0, !dbg !1680
  %145 = load i32* %fvnr.i, align 8, !dbg !1680, !tbaa !1059
  %cmp53.i = icmp slt i32 %144, %145, !dbg !1680
  br i1 %cmp53.i, label %land.lhs.true.i, label %for.inc67.i, !dbg !1680

land.lhs.true.i:                                  ; preds = %for.body50.i
  %146 = load i32** %functype29.i, align 8, !dbg !1680, !tbaa !947
  %arrayidx57.i = getelementptr inbounds i32* %146, i64 %indvars.iv223.i, !dbg !1680
  %147 = load i32* %arrayidx57.i, align 4, !dbg !1680, !tbaa !1059
  %ftype.i = getelementptr inbounds [7 x %struct.t_ftupd]* @ftupd, i64 0, i64 %indvars.iv219.i, i32 1, !dbg !1680
  %148 = load i32* %ftype.i, align 4, !dbg !1680, !tbaa !1059
  %cmp60.i = icmp slt i32 %147, %148, !dbg !1680
  br i1 %cmp60.i, label %for.inc67.i, label %if.then62.i, !dbg !1680

if.then62.i:                                      ; preds = %land.lhs.true.i
  %add.i = add nsw i32 %147, 1, !dbg !1682
  store i32 %add.i, i32* %arrayidx57.i, align 4, !dbg !1682, !tbaa !1059
  br label %for.inc67.i, !dbg !1682

for.inc67.i:                                      ; preds = %if.then62.i, %land.lhs.true.i, %for.body50.i
  %indvars.iv.next220.i = add i64 %indvars.iv219.i, 1, !dbg !1683
  %lftr.wideiv93 = trunc i64 %indvars.iv.next220.i to i32, !dbg !1683
  %exitcond94 = icmp eq i32 %lftr.wideiv93, 7, !dbg !1683
  br i1 %exitcond94, label %if.end70.i, label %for.body50.i, !dbg !1683

if.end70.i:                                       ; preds = %for.inc67.i, %for.body44.i
  %149 = load i32** %functype29.i, align 8, !dbg !1672, !tbaa !947
  %arrayidx73.i = getelementptr inbounds i32* %149, i64 %indvars.iv223.i, !dbg !1672
  %150 = load i32* %arrayidx73.i, align 4, !dbg !1672, !tbaa !1059
  %151 = load %union.t_iparams** %iparams75.i, align 8, !dbg !1672, !tbaa !947
  %arrayidx76.i = getelementptr inbounds %union.t_iparams* %151, i64 %indvars.iv223.i, !dbg !1672
  call void @do_iparams(i32 %150, %union.t_iparams* %arrayidx76.i, i32 %bRead) #6, !dbg !1672
  %indvars.iv.next224.i = add i64 %indvars.iv223.i, 1, !dbg !1670
  %152 = load i32* %ntypes24.pre-phi.i, align 4, !dbg !1670, !tbaa !1059
  %153 = trunc i64 %indvars.iv.next224.i to i32, !dbg !1670
  %cmp43.i = icmp slt i32 %153, %152, !dbg !1670
  br i1 %cmp43.i, label %for.body44.i, label %for.cond80.preheader.i, !dbg !1670

for.body83.i:                                     ; preds = %for.inc133.i, %for.cond80.preheader.i
  %indvars.iv215.i = phi i64 [ 0, %for.cond80.preheader.i ], [ %indvars.iv.next216.i, %for.inc133.i ]
  call void @llvm.dbg.value(metadata !177, i64 0, metadata !1684) #2, !dbg !1685
  br i1 %tobool.i23, label %for.cond86.preheader.i, label %if.then.i.i59, !dbg !1686

for.cond86.preheader.i:                           ; preds = %for.body83.i
  %154 = load i32* @file_version, align 4, !dbg !1687, !tbaa !1059
  %155 = trunc i64 %indvars.iv215.i to i32, !dbg !1687
  br label %for.body90.i, !dbg !1689

for.body90.i:                                     ; preds = %for.inc104.i, %for.cond86.preheader.i
  %indvars.iv.i55 = phi i64 [ 0, %for.cond86.preheader.i ], [ %indvars.iv.next.i56, %for.inc104.i ]
  %bClear.0199.i = phi i32 [ 0, %for.cond86.preheader.i ], [ %bClear.1.i, %for.inc104.i ]
  %fvnr93.i = getelementptr inbounds [7 x %struct.t_ftupd]* @ftupd, i64 0, i64 %indvars.iv.i55, i32 0, !dbg !1687
  %156 = load i32* %fvnr93.i, align 8, !dbg !1687, !tbaa !1059
  %cmp94.i = icmp slt i32 %154, %156, !dbg !1687
  br i1 %cmp94.i, label %land.lhs.true96.i, label %for.inc104.i, !dbg !1687

land.lhs.true96.i:                                ; preds = %for.body90.i
  %ftype99.i = getelementptr inbounds [7 x %struct.t_ftupd]* @ftupd, i64 0, i64 %indvars.iv.i55, i32 1, !dbg !1687
  %157 = load i32* %ftype99.i, align 4, !dbg !1687, !tbaa !1059
  %cmp100.i = icmp eq i32 %155, %157, !dbg !1687
  call void @llvm.dbg.value(metadata !1269, i64 0, metadata !1684) #2, !dbg !1690
  %.bClear.0.i = select i1 %cmp100.i, i32 1, i32 %bClear.0199.i, !dbg !1687
  br label %for.inc104.i, !dbg !1687

for.inc104.i:                                     ; preds = %land.lhs.true96.i, %for.body90.i
  %bClear.1.i = phi i32 [ %bClear.0199.i, %for.body90.i ], [ %.bClear.0.i, %land.lhs.true96.i ]
  %indvars.iv.next.i56 = add i64 %indvars.iv.i55, 1, !dbg !1689
  %lftr.wideiv87 = trunc i64 %indvars.iv.next.i56 to i32, !dbg !1689
  %exitcond88 = icmp eq i32 %lftr.wideiv87, 7, !dbg !1689
  br i1 %exitcond88, label %if.end107.i, label %for.body90.i, !dbg !1689

if.end107.i:                                      ; preds = %for.inc104.i
  %tobool108.i = icmp eq i32 %bClear.1.i, 0, !dbg !1691
  %arrayidx111.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv215.i, !dbg !1692
  br i1 %tobool108.i, label %for.cond.preheader.i.i, label %if.then109.i, !dbg !1691

if.then109.i:                                     ; preds = %if.end107.i
  call void @llvm.dbg.value(metadata !177, i64 0, metadata !1694) #2, !dbg !1695
  %iatoms.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv215.i, i32 2, !dbg !1697
  store i32* null, i32** %iatoms.i, align 8, !dbg !1697, !tbaa !947
  %158 = bitcast %struct.t_ilist* %arrayidx111.i to i8*, !dbg !1698
  call void @llvm.memset.p0i8.i64(i8* %158, i8 0, i64 1028, i32 4, i1 false) #2, !dbg !1699
  br label %for.inc133.i, !dbg !1698

if.then.i.i59:                                    ; preds = %for.body83.i
  %arrayidx111192.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv215.i, !dbg !1692
  call void @llvm.dbg.value(metadata !{i32 %bRead}, i64 0, metadata !1700) #2, !dbg !1701
  call void @llvm.dbg.value(metadata !1269, i64 0, metadata !1702) #2, !dbg !1703
  %.in.i = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv215.i, i32 0, !dbg !1675
  %159 = load i8** %.in.i, align 8, !dbg !1675
  call void @set_comment(i8* %159) #6, !dbg !1704
  br label %for.cond.preheader.i.i, !dbg !1704

for.cond.preheader.i.i:                           ; preds = %if.then.i.i59, %if.end107.i
  %arrayidx111194197.i = phi %struct.t_ilist* [ %arrayidx111192.i, %if.then.i.i59 ], [ %arrayidx111.i, %if.end107.i ]
  br label %for.body.i.i61, !dbg !1705

for.body.i.i61:                                   ; preds = %land.end.i.i67, %for.cond.preheader.i.i
  %indvars.iv85.i.i = phi i64 [ 0, %for.cond.preheader.i.i ], [ %indvars.iv.next86.i.i, %land.end.i.i67 ]
  %bDum.084.i.i = phi i32 [ 1, %for.cond.preheader.i.i ], [ %land.ext.i.i66, %land.end.i.i67 ]
  call void @llvm.lifetime.start(i64 128, i8* %96) #2, !dbg !1706
  call void @llvm.dbg.declare(metadata !{[128 x i8]* %buf.i.i}, metadata !772) #2, !dbg !1706
  %160 = trunc i64 %indvars.iv85.i.i to i32, !dbg !1706
  %call.i.i60 = call i32 (i8*, i8*, ...)* @sprintf(i8* %96, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str78, i64 0, i64 0), i32 %160) #6, !dbg !1706
  %tobool1.i.i = icmp eq i32 %bDum.084.i.i, 0, !dbg !1706
  br i1 %tobool1.i.i, label %land.end.i.i67, label %land.rhs.i.i62, !dbg !1706

land.rhs.i.i62:                                   ; preds = %for.body.i.i61
  br i1 %tobool.i23, label %cond.true.i.i, label %cond.false.i.i, !dbg !1706

cond.true.i.i:                                    ; preds = %land.rhs.i.i62
  %161 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1706, !tbaa !947
  %arrayidx.i.i63 = getelementptr inbounds %struct.t_ilist* %arrayidx111194197.i, i64 0, i32 1, i64 %indvars.iv85.i.i, !dbg !1706
  %162 = bitcast i32* %arrayidx.i.i63 to i8*, !dbg !1706
  %call4.i.i = call i32 %161(i8* %162, i32 1, i32 1, i8* %96, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 496) #6, !dbg !1706
  br label %cond.end.i.i65, !dbg !1706

cond.false.i.i:                                   ; preds = %land.rhs.i.i62
  %163 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1706, !tbaa !947
  %arrayidx7.i.i = getelementptr inbounds %struct.t_ilist* %arrayidx111194197.i, i64 0, i32 1, i64 %indvars.iv85.i.i, !dbg !1706
  %164 = bitcast i32* %arrayidx7.i.i to i8*, !dbg !1706
  %call9.i.i64 = call i32 %163(i8* %164, i32 1, i32 1, i8* %96, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 496) #6, !dbg !1706
  br label %cond.end.i.i65, !dbg !1706

cond.end.i.i65:                                   ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %call4.i.i, %cond.true.i.i ], [ %call9.i.i64, %cond.false.i.i ], !dbg !1706
  %tobool10.i.i = icmp ne i32 %cond.i.i, 0, !dbg !1706
  br label %land.end.i.i67

land.end.i.i67:                                   ; preds = %cond.end.i.i65, %for.body.i.i61
  %165 = phi i1 [ false, %for.body.i.i61 ], [ %tobool10.i.i, %cond.end.i.i65 ]
  %land.ext.i.i66 = zext i1 %165 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext.i.i66}, i64 0, metadata !1702) #2, !dbg !1703
  call void @llvm.lifetime.end(i64 128, i8* %96) #2, !dbg !1706
  %indvars.iv.next86.i.i = add i64 %indvars.iv85.i.i, 1, !dbg !1705
  %lftr.wideiv89 = trunc i64 %indvars.iv.next86.i.i to i32, !dbg !1705
  %exitcond90 = icmp eq i32 %lftr.wideiv89, 256, !dbg !1705
  br i1 %exitcond90, label %for.end.i.i, label %for.body.i.i61, !dbg !1705

for.end.i.i:                                      ; preds = %land.end.i.i67
  br i1 %tobool.i23, label %if.then20.i.i, label %cond.end17.i.i, !dbg !1707

cond.end17.i.i:                                   ; preds = %for.end.i.i
  %166 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1707, !tbaa !947
  %167 = bitcast %struct.t_ilist* %arrayidx111194197.i to i8*, !dbg !1707
  %call16.i.i68 = call i32 %166(i8* %167, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str79, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 497) #6, !dbg !1707
  %nr25.pre.i.i = getelementptr inbounds %struct.t_ilist* %arrayidx111194197.i, i64 0, i32 0, !dbg !1708
  br label %for.cond24.preheader.i.i

if.then20.i.i:                                    ; preds = %for.end.i.i
  %168 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1707, !tbaa !947
  %169 = bitcast %struct.t_ilist* %arrayidx111194197.i to i8*, !dbg !1707
  %call13.i.i69 = call i32 %168(i8* %169, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str79, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 497) #6, !dbg !1707
  %nr21.i.i = getelementptr inbounds %struct.t_ilist* %arrayidx111194197.i, i64 0, i32 0, !dbg !1709
  %170 = load i32* %nr21.i.i, align 4, !dbg !1709, !tbaa !1059
  %call22.i.i = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str80, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 499, i32 %170, i32 4) #6, !dbg !1709
  %171 = bitcast i8* %call22.i.i to i32*, !dbg !1709
  %iatoms.i.i = getelementptr inbounds %struct.t_ilist* %arrayidx111194197.i, i64 0, i32 2, !dbg !1709
  store i32* %171, i32** %iatoms.i.i, align 8, !dbg !1709, !tbaa !947
  br label %for.cond24.preheader.i.i, !dbg !1709

for.cond24.preheader.i.i:                         ; preds = %if.then20.i.i, %cond.end17.i.i
  %nr25.pre-phi.i.i = phi i32* [ %nr21.i.i, %if.then20.i.i ], [ %nr25.pre.i.i, %cond.end17.i.i ], !dbg !1708
  %172 = load i32* %nr25.pre-phi.i.i, align 4, !dbg !1708, !tbaa !1059
  %cmp2680.i.i = icmp sgt i32 %172, 0, !dbg !1708
  br i1 %cmp2680.i.i, label %for.body27.lr.ph.i.i, label %for.end53.i.i, !dbg !1708

for.body27.lr.ph.i.i:                             ; preds = %for.cond24.preheader.i.i
  %iatoms36.i.i = getelementptr inbounds %struct.t_ilist* %arrayidx111194197.i, i64 0, i32 2, !dbg !1674
  br label %for.body27.i.i, !dbg !1708

for.body27.i.i:                                   ; preds = %land.end49.i.i, %for.body27.lr.ph.i.i
  %indvars.iv.i.i70 = phi i64 [ 0, %for.body27.lr.ph.i.i ], [ %indvars.iv.next.i.i72, %land.end49.i.i ]
  %bDum.182.i.i = phi i32 [ 1, %for.body27.lr.ph.i.i ], [ %land.ext50.i.i, %land.end49.i.i ]
  call void @llvm.lifetime.start(i64 128, i8* %143) #2, !dbg !1674
  call void @llvm.dbg.declare(metadata !{[128 x i8]* %buf28.i.i}, metadata !776) #2, !dbg !1674
  %173 = trunc i64 %indvars.iv.i.i70 to i32, !dbg !1674
  %call30.i.i = call i32 (i8*, i8*, ...)* @sprintf(i8* %143, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str80, i64 0, i64 0), i32 %173) #6, !dbg !1674
  %tobool31.i.i = icmp eq i32 %bDum.182.i.i, 0, !dbg !1674
  br i1 %tobool31.i.i, label %land.end49.i.i, label %land.rhs32.i.i, !dbg !1674

land.rhs32.i.i:                                   ; preds = %for.body27.i.i
  br i1 %tobool.i23, label %cond.true34.i.i, label %cond.false40.i.i, !dbg !1674

cond.true34.i.i:                                  ; preds = %land.rhs32.i.i
  %174 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1674, !tbaa !947
  %175 = load i32** %iatoms36.i.i, align 8, !dbg !1674, !tbaa !947
  %arrayidx37.i.i = getelementptr inbounds i32* %175, i64 %indvars.iv.i.i70, !dbg !1674
  %176 = bitcast i32* %arrayidx37.i.i to i8*, !dbg !1674
  %call39.i.i = call i32 %174(i8* %176, i32 1, i32 1, i8* %143, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 500) #6, !dbg !1674
  br label %cond.end46.i.i, !dbg !1674

cond.false40.i.i:                                 ; preds = %land.rhs32.i.i
  %177 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1674, !tbaa !947
  %178 = load i32** %iatoms36.i.i, align 8, !dbg !1674, !tbaa !947
  %arrayidx43.i.i = getelementptr inbounds i32* %178, i64 %indvars.iv.i.i70, !dbg !1674
  %179 = bitcast i32* %arrayidx43.i.i to i8*, !dbg !1674
  %call45.i.i71 = call i32 %177(i8* %179, i32 1, i32 1, i8* %143, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 500) #6, !dbg !1674
  br label %cond.end46.i.i, !dbg !1674

cond.end46.i.i:                                   ; preds = %cond.false40.i.i, %cond.true34.i.i
  %cond47.i.i = phi i32 [ %call39.i.i, %cond.true34.i.i ], [ %call45.i.i71, %cond.false40.i.i ], !dbg !1674
  %tobool48.i.i = icmp ne i32 %cond47.i.i, 0, !dbg !1674
  br label %land.end49.i.i

land.end49.i.i:                                   ; preds = %cond.end46.i.i, %for.body27.i.i
  %180 = phi i1 [ false, %for.body27.i.i ], [ %tobool48.i.i, %cond.end46.i.i ]
  %land.ext50.i.i = zext i1 %180 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext50.i.i}, i64 0, metadata !1702) #2, !dbg !1703
  call void @llvm.lifetime.end(i64 128, i8* %143) #2, !dbg !1674
  %indvars.iv.next.i.i72 = add i64 %indvars.iv.i.i70, 1, !dbg !1708
  %181 = load i32* %nr25.pre-phi.i.i, align 4, !dbg !1708, !tbaa !1059
  %182 = trunc i64 %indvars.iv.next.i.i72 to i32, !dbg !1708
  %cmp26.i.i = icmp slt i32 %182, %181, !dbg !1708
  br i1 %cmp26.i.i, label %for.body27.i.i, label %for.end53.i.i, !dbg !1708

for.end53.i.i:                                    ; preds = %land.end49.i.i, %for.cond24.preheader.i.i
  br i1 %tobool.i23, label %for.inc133.i, label %if.then55.i.i, !dbg !1710

if.then55.i.i:                                    ; preds = %for.end53.i.i
  call void @unset_comment() #6, !dbg !1711
  br label %for.inc133.i, !dbg !1711

for.inc133.i:                                     ; preds = %if.then55.i.i, %for.end53.i.i, %if.then109.i
  %indvars.iv.next216.i = add i64 %indvars.iv215.i, 1, !dbg !1678
  %lftr.wideiv91 = trunc i64 %indvars.iv.next216.i to i32, !dbg !1678
  %exitcond92 = icmp eq i32 %lftr.wideiv91, 44, !dbg !1678
  br i1 %exitcond92, label %for.body, label %for.body83.i, !dbg !1678

for.body:                                         ; preds = %for.inc133.i, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.inc133.i ]
  %arrayidx = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv, !dbg !1712
  call fastcc void @do_block(%struct.t_block* %arrayidx, i32 %bRead) #8, !dbg !1712
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1714
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1714
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !1714
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1714

for.end:                                          ; preds = %for.body
  br i1 %tobool.i, label %if.end, label %if.then, !dbg !1715

if.then:                                          ; preds = %for.end
  call void @close_symtab(%struct.t_symtab* %symtab) #6, !dbg !1716
  tail call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !1718), !dbg !1720
  tail call void @llvm.dbg.value(metadata !1721, i64 0, metadata !1722), !dbg !1723
  tail call void @llvm.dbg.value(metadata !177, i64 0, metadata !1724), !dbg !1725
  %nr.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 1, !dbg !1725
  %183 = load i32* %nr.i, align 4, !dbg !1725, !tbaa !1059
  %cmp60.i73 = icmp sgt i32 %183, 0, !dbg !1725
  br i1 %cmp60.i73, label %for.body.lr.ph.i75, label %if.end, !dbg !1725

for.body.lr.ph.i75:                               ; preds = %if.then
  %index.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 2, !dbg !1727
  %a12.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 4, !dbg !1729
  %atom.i74 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1, !dbg !1729
  br label %for.body.i80, !dbg !1725

for.cond7.for.cond.loopexit_crit_edge.i:          ; preds = %for.body10.i
  %.pre.i = load i32* %nr.i, align 4, !dbg !1725, !tbaa !1059
  br label %for.cond.loopexit.i, !dbg !1731

for.cond.loopexit.i:                              ; preds = %for.body.i80, %for.cond7.for.cond.loopexit_crit_edge.i
  %184 = phi i32 [ %.pre.i, %for.cond7.for.cond.loopexit_crit_edge.i ], [ %186, %for.body.i80 ], !dbg !1725
  %185 = trunc i64 %indvars.iv.next66.i to i32, !dbg !1725
  %cmp.i76 = icmp slt i32 %185, %184, !dbg !1725
  br i1 %cmp.i76, label %for.body.i80, label %for.end20.i, !dbg !1725

for.body.i80:                                     ; preds = %for.cond.loopexit.i, %for.body.lr.ph.i75
  %186 = phi i32 [ %183, %for.body.lr.ph.i75 ], [ %184, %for.cond.loopexit.i ]
  %indvars.iv65.i = phi i64 [ 0, %for.body.lr.ph.i75 ], [ %indvars.iv.next66.i, %for.cond.loopexit.i ]
  %chain.062.i = phi i8 [ 65, %for.body.lr.ph.i75 ], [ %chain.1.i, %for.cond.loopexit.i ]
  %187 = load i32** %index.i, align 8, !dbg !1727, !tbaa !947
  %arrayidx.i77 = getelementptr inbounds i32* %187, i64 %indvars.iv65.i, !dbg !1727
  %188 = load i32* %arrayidx.i77, align 4, !dbg !1727, !tbaa !1059
  tail call void @llvm.dbg.value(metadata !{i32 %188}, i64 0, metadata !1732), !dbg !1727
  %indvars.iv.next66.i = add i64 %indvars.iv65.i, 1, !dbg !1725
  %arrayidx3.i = getelementptr inbounds i32* %187, i64 %indvars.iv.next66.i, !dbg !1733
  %189 = load i32* %arrayidx3.i, align 4, !dbg !1733, !tbaa !1059
  tail call void @llvm.dbg.value(metadata !{i32 %189}, i64 0, metadata !1734), !dbg !1733
  %sub.i78 = sub nsw i32 %189, %188, !dbg !1735
  %cmp4.i = icmp sgt i32 %sub.i78, 14, !dbg !1735
  %cmp5.i = icmp slt i8 %chain.062.i, 91, !dbg !1735
  %or.cond.i79 = and i1 %cmp4.i, %cmp5.i, !dbg !1735
  %c.0.i = select i1 %or.cond.i79, i8 %chain.062.i, i8 32, !dbg !1735
  %inc.i = zext i1 %or.cond.i79 to i8, !dbg !1735
  %chain.1.i = add i8 %inc.i, %chain.062.i, !dbg !1735
  %cmp858.i = icmp slt i32 %188, %189, !dbg !1731
  br i1 %cmp858.i, label %for.body10.lr.ph.i, label %for.cond.loopexit.i, !dbg !1731

for.body10.lr.ph.i:                               ; preds = %for.body.i80
  %190 = sext i32 %188 to i64
  br label %for.body10.i, !dbg !1731

for.body10.i:                                     ; preds = %for.body10.i, %for.body10.lr.ph.i
  %indvars.iv63.i = phi i64 [ %190, %for.body10.lr.ph.i ], [ %indvars.iv.next64.i, %for.body10.i ]
  %191 = load i32** %a12.i, align 8, !dbg !1729, !tbaa !947
  %arrayidx13.i = getelementptr inbounds i32* %191, i64 %indvars.iv63.i, !dbg !1729
  %192 = load i32* %arrayidx13.i, align 4, !dbg !1729, !tbaa !1059
  %idxprom14.i = sext i32 %192 to i64, !dbg !1729
  %193 = load %struct.t_atom** %atom.i74, align 8, !dbg !1729, !tbaa !947
  %chain16.i = getelementptr inbounds %struct.t_atom* %193, i64 %idxprom14.i, i32 9, !dbg !1729
  store i8 %c.0.i, i8* %chain16.i, align 1, !dbg !1729, !tbaa !948
  %indvars.iv.next64.i = add i64 %indvars.iv63.i, 1, !dbg !1731
  %194 = trunc i64 %indvars.iv.next64.i to i32, !dbg !1731
  %cmp8.i = icmp slt i32 %194, %189, !dbg !1731
  br i1 %cmp8.i, label %for.body10.i, label %for.cond7.for.cond.loopexit_crit_edge.i, !dbg !1731

for.end20.i:                                      ; preds = %for.cond.loopexit.i
  %phitmp.i = icmp eq i8 %chain.1.i, 66, !dbg !1725
  br i1 %phitmp.i, label %for.cond25.preheader.i, label %if.end, !dbg !1736

for.cond25.preheader.i:                           ; preds = %for.end20.i
  %nr26.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !1737
  %195 = load i32* %nr26.i, align 4, !dbg !1737, !tbaa !1059
  %cmp2756.i = icmp sgt i32 %195, 0, !dbg !1737
  br i1 %cmp2756.i, label %for.body29.i, label %if.end, !dbg !1737

for.body29.i:                                     ; preds = %for.cond25.preheader.i, %for.body29.i
  %indvars.iv.i81 = phi i64 [ %indvars.iv.next.i82, %for.body29.i ], [ 0, %for.cond25.preheader.i ]
  %196 = load %struct.t_atom** %atom.i74, align 8, !dbg !1739, !tbaa !947
  %chain33.i = getelementptr inbounds %struct.t_atom* %196, i64 %indvars.iv.i81, i32 9, !dbg !1739
  store i8 32, i8* %chain33.i, align 1, !dbg !1739, !tbaa !948
  %indvars.iv.next.i82 = add i64 %indvars.iv.i81, 1, !dbg !1737
  %197 = load i32* %nr26.i, align 4, !dbg !1737, !tbaa !1059
  %198 = trunc i64 %indvars.iv.next.i82 to i32, !dbg !1737
  %cmp27.i83 = icmp slt i32 %198, %197, !dbg !1737
  br i1 %cmp27.i83, label %for.body29.i, label %if.end, !dbg !1737

if.end:                                           ; preds = %for.body29.i, %for.cond25.preheader.i, %for.end20.i, %if.then, %for.end
  ret void, !dbg !1740
}

; Function Attrs: optsize
declare void @done_top(%struct.t_topology*) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @do_symstr(i8*** nocapture %nm, i32 %bRead, %struct.t_symtab* %symtab) #0 {
entry:
  %ls = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i8*** %nm}, i64 0, metadata !826), !dbg !1741
  call void @llvm.dbg.value(metadata !{i32 %bRead}, i64 0, metadata !827), !dbg !1741
  call void @llvm.dbg.value(metadata !{%struct.t_symtab* %symtab}, i64 0, metadata !828), !dbg !1741
  call void @llvm.dbg.declare(metadata !{i32* %ls}, metadata !829), !dbg !1742
  %tobool = icmp eq i32 %bRead, 0, !dbg !1743
  br i1 %tobool, label %if.else, label %cond.true, !dbg !1743

cond.true:                                        ; preds = %entry
  %0 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1744, !tbaa !947
  %1 = bitcast i32* %ls to i8*, !dbg !1744
  %call = call i32 %0(i8* %1, i32 1, i32 1, i8* getelementptr inbounds ([3 x i8]* @.str103, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 601) #6, !dbg !1744
  call void @llvm.dbg.value(metadata !{i32* %ls}, i64 0, metadata !829), !dbg !1746
  %2 = load i32* %ls, align 4, !dbg !1746, !tbaa !1059
  %call3 = call i8** @get_symtab_handle(%struct.t_symtab* %symtab, i32 %2) #6, !dbg !1746
  store i8** %call3, i8*** %nm, align 8, !dbg !1746, !tbaa !947
  br label %if.end, !dbg !1747

if.else:                                          ; preds = %entry
  %3 = load i8*** %nm, align 8, !dbg !1748, !tbaa !947
  %call4 = call i32 @lookup_symtab(%struct.t_symtab* %symtab, i8** %3) #6, !dbg !1748
  call void @llvm.dbg.value(metadata !{i32 %call4}, i64 0, metadata !829), !dbg !1748
  store i32 %call4, i32* %ls, align 4, !dbg !1748, !tbaa !1059
  %4 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1750, !tbaa !947
  %5 = bitcast i32* %ls to i8*, !dbg !1750
  %call9 = call i32 %4(i8* %5, i32 1, i32 1, i8* getelementptr inbounds ([3 x i8]* @.str103, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 606) #6, !dbg !1750
  br label %if.end, !dbg !1750

if.end:                                           ; preds = %if.else, %cond.true
  ret void, !dbg !1751
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @do_block(%struct.t_block* %block, i32 %bRead) #0 {
entry:
  %buf = alloca [128 x i8], align 16
  %buf36 = alloca [128 x i8], align 16
  %buf66 = alloca [128 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct.t_block* %block}, i64 0, metadata !730), !dbg !1752
  call void @llvm.dbg.value(metadata !{i32 %bRead}, i64 0, metadata !731), !dbg !1752
  call void @llvm.dbg.value(metadata !1269, i64 0, metadata !733), !dbg !1753
  call void @llvm.dbg.value(metadata !177, i64 0, metadata !732), !dbg !1754
  %0 = getelementptr inbounds [128 x i8]* %buf, i64 0, i64 0, !dbg !1755
  %tobool1 = icmp eq i32 %bRead, 0, !dbg !1755
  br label %for.body, !dbg !1754

for.body:                                         ; preds = %land.end, %entry
  %indvars.iv139 = phi i64 [ 0, %entry ], [ %indvars.iv.next140, %land.end ]
  %bDum.0136 = phi i32 [ 1, %entry ], [ %land.ext, %land.end ]
  call void @llvm.lifetime.start(i64 128, i8* %0) #2, !dbg !1755
  call void @llvm.dbg.declare(metadata !{[128 x i8]* %buf}, metadata !734), !dbg !1755
  %1 = trunc i64 %indvars.iv139 to i32, !dbg !1755
  %call = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str68, i64 0, i64 0), i32 %1) #6, !dbg !1755
  %tobool = icmp eq i32 %bDum.0136, 0, !dbg !1755
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !1755

land.rhs:                                         ; preds = %for.body
  br i1 %tobool1, label %cond.false, label %cond.true, !dbg !1755

cond.true:                                        ; preds = %land.rhs
  %2 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1755, !tbaa !947
  %arrayidx = getelementptr inbounds %struct.t_block* %block, i64 0, i32 0, i64 %indvars.iv139, !dbg !1755
  %3 = bitcast i32* %arrayidx to i8*, !dbg !1755
  %call3 = call i32 %2(i8* %3, i32 1, i32 1, i8* %0, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 549) #6, !dbg !1755
  br label %cond.end, !dbg !1755

cond.false:                                       ; preds = %land.rhs
  %4 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1755, !tbaa !947
  %arrayidx6 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 0, i64 %indvars.iv139, !dbg !1755
  %5 = bitcast i32* %arrayidx6 to i8*, !dbg !1755
  %call8 = call i32 %4(i8* %5, i32 1, i32 1, i8* %0, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 549) #6, !dbg !1755
  br label %cond.end, !dbg !1755

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call3, %cond.true ], [ %call8, %cond.false ], !dbg !1755
  %tobool9 = icmp ne i32 %cond, 0, !dbg !1755
  br label %land.end

land.end:                                         ; preds = %for.body, %cond.end
  %6 = phi i1 [ false, %for.body ], [ %tobool9, %cond.end ]
  %land.ext = zext i1 %6 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext}, i64 0, metadata !733), !dbg !1753
  call void @llvm.lifetime.end(i64 128, i8* %0) #2, !dbg !1755
  %indvars.iv.next140 = add i64 %indvars.iv139, 1, !dbg !1754
  %lftr.wideiv = trunc i64 %indvars.iv.next140 to i32, !dbg !1754
  %exitcond = icmp eq i32 %lftr.wideiv, 256, !dbg !1754
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1754

for.end:                                          ; preds = %land.end
  %tobool10 = icmp ne i32 %bRead, 0, !dbg !1756
  br i1 %tobool10, label %if.then, label %cond.end24, !dbg !1756

cond.end24:                                       ; preds = %for.end
  %7 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1756, !tbaa !947
  %nr14 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1, !dbg !1756
  %8 = bitcast i32* %nr14 to i8*, !dbg !1756
  %call15 = call i32 %7(i8* %8, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str69, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 550) #6, !dbg !1756
  %9 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1757, !tbaa !947
  %nra22 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3, !dbg !1757
  %10 = bitcast i32* %nra22 to i8*, !dbg !1757
  %call23 = call i32 %9(i8* %10, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str70, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 551) #6, !dbg !1757
  br label %for.cond31.preheader

if.then:                                          ; preds = %for.end
  %11 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1756, !tbaa !947
  %nr = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1, !dbg !1756
  %12 = bitcast i32* %nr to i8*, !dbg !1756
  %call12 = call i32 %11(i8* %12, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str69, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 550) #6, !dbg !1756
  %13 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1757, !tbaa !947
  %nra = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3, !dbg !1757
  %14 = bitcast i32* %nra to i8*, !dbg !1757
  %call20 = call i32 %13(i8* %14, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str70, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 551) #6, !dbg !1757
  %15 = load i32* %nr, align 4, !dbg !1758, !tbaa !1059
  %add = add nsw i32 %15, 1, !dbg !1758
  %call28 = call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str71, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 553, i32 %add, i32 4) #6, !dbg !1758
  %16 = bitcast i8* %call28 to i32*, !dbg !1758
  %index = getelementptr inbounds %struct.t_block* %block, i64 0, i32 2, !dbg !1758
  store i32* %16, i32** %index, align 8, !dbg !1758, !tbaa !947
  %17 = load i32* %nra, align 4, !dbg !1760, !tbaa !1059
  %call30 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str72, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 554, i32 %17, i32 4) #6, !dbg !1760
  %18 = bitcast i8* %call30 to i32*, !dbg !1760
  %a = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4, !dbg !1760
  store i32* %18, i32** %a, align 8, !dbg !1760, !tbaa !947
  br label %for.cond31.preheader, !dbg !1761

for.cond31.preheader:                             ; preds = %if.then, %cond.end24
  %nr32 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1, !dbg !1762
  %19 = load i32* %nr32, align 4, !dbg !1762, !tbaa !1059
  %cmp34132 = icmp sgt i32 %19, -1, !dbg !1762
  br i1 %cmp34132, label %for.body35.lr.ph, label %for.cond62.preheader, !dbg !1762

for.body35.lr.ph:                                 ; preds = %for.cond31.preheader
  %20 = getelementptr inbounds [128 x i8]* %buf36, i64 0, i64 0, !dbg !1763
  %index44 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 2, !dbg !1763
  br label %for.body35, !dbg !1762

for.cond62.preheader:                             ; preds = %land.end57, %for.cond31.preheader
  %nra63 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3, !dbg !1764
  %21 = load i32* %nra63, align 4, !dbg !1764, !tbaa !1059
  %cmp64128 = icmp sgt i32 %21, 0, !dbg !1764
  br i1 %cmp64128, label %for.body65.lr.ph, label %for.end91, !dbg !1764

for.body65.lr.ph:                                 ; preds = %for.cond62.preheader
  %22 = getelementptr inbounds [128 x i8]* %buf66, i64 0, i64 0, !dbg !1765
  %a74 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4, !dbg !1765
  br label %for.body65, !dbg !1764

for.body35:                                       ; preds = %for.body35.lr.ph, %land.end57
  %indvars.iv137 = phi i64 [ 0, %for.body35.lr.ph ], [ %indvars.iv.next138, %land.end57 ]
  %bDum.1134 = phi i32 [ 1, %for.body35.lr.ph ], [ %land.ext58, %land.end57 ]
  call void @llvm.lifetime.start(i64 128, i8* %20) #2, !dbg !1763
  call void @llvm.dbg.declare(metadata !{[128 x i8]* %buf36}, metadata !738), !dbg !1763
  %23 = trunc i64 %indvars.iv137 to i32, !dbg !1763
  %call38 = call i32 (i8*, i8*, ...)* @sprintf(i8* %20, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str71, i64 0, i64 0), i32 %23) #6, !dbg !1763
  %tobool39 = icmp eq i32 %bDum.1134, 0, !dbg !1763
  br i1 %tobool39, label %land.end57, label %land.rhs40, !dbg !1763

land.rhs40:                                       ; preds = %for.body35
  br i1 %tobool10, label %cond.true42, label %cond.false48, !dbg !1763

cond.true42:                                      ; preds = %land.rhs40
  %24 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1763, !tbaa !947
  %25 = load i32** %index44, align 8, !dbg !1763, !tbaa !947
  %arrayidx45 = getelementptr inbounds i32* %25, i64 %indvars.iv137, !dbg !1763
  %26 = bitcast i32* %arrayidx45 to i8*, !dbg !1763
  %call47 = call i32 %24(i8* %26, i32 1, i32 1, i8* %20, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 556) #6, !dbg !1763
  br label %cond.end54, !dbg !1763

cond.false48:                                     ; preds = %land.rhs40
  %27 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1763, !tbaa !947
  %28 = load i32** %index44, align 8, !dbg !1763, !tbaa !947
  %arrayidx51 = getelementptr inbounds i32* %28, i64 %indvars.iv137, !dbg !1763
  %29 = bitcast i32* %arrayidx51 to i8*, !dbg !1763
  %call53 = call i32 %27(i8* %29, i32 1, i32 1, i8* %20, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 556) #6, !dbg !1763
  br label %cond.end54, !dbg !1763

cond.end54:                                       ; preds = %cond.false48, %cond.true42
  %cond55 = phi i32 [ %call47, %cond.true42 ], [ %call53, %cond.false48 ], !dbg !1763
  %tobool56 = icmp ne i32 %cond55, 0, !dbg !1763
  br label %land.end57

land.end57:                                       ; preds = %for.body35, %cond.end54
  %30 = phi i1 [ false, %for.body35 ], [ %tobool56, %cond.end54 ]
  %land.ext58 = zext i1 %30 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext58}, i64 0, metadata !733), !dbg !1753
  call void @llvm.lifetime.end(i64 128, i8* %20) #2, !dbg !1763
  %indvars.iv.next138 = add i64 %indvars.iv137, 1, !dbg !1762
  %31 = load i32* %nr32, align 4, !dbg !1762, !tbaa !1059
  %cmp34 = icmp slt i32 %23, %31, !dbg !1762
  br i1 %cmp34, label %for.body35, label %for.cond62.preheader, !dbg !1762

for.body65:                                       ; preds = %for.body65.lr.ph, %land.end87
  %indvars.iv = phi i64 [ 0, %for.body65.lr.ph ], [ %indvars.iv.next, %land.end87 ]
  %bDum.2130 = phi i32 [ 1, %for.body65.lr.ph ], [ %land.ext88, %land.end87 ]
  call void @llvm.lifetime.start(i64 128, i8* %22) #2, !dbg !1765
  call void @llvm.dbg.declare(metadata !{[128 x i8]* %buf66}, metadata !742), !dbg !1765
  %32 = trunc i64 %indvars.iv to i32, !dbg !1765
  %call68 = call i32 (i8*, i8*, ...)* @sprintf(i8* %22, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str72, i64 0, i64 0), i32 %32) #6, !dbg !1765
  %tobool69 = icmp eq i32 %bDum.2130, 0, !dbg !1765
  br i1 %tobool69, label %land.end87, label %land.rhs70, !dbg !1765

land.rhs70:                                       ; preds = %for.body65
  br i1 %tobool10, label %cond.true72, label %cond.false78, !dbg !1765

cond.true72:                                      ; preds = %land.rhs70
  %33 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !1765, !tbaa !947
  %34 = load i32** %a74, align 8, !dbg !1765, !tbaa !947
  %arrayidx75 = getelementptr inbounds i32* %34, i64 %indvars.iv, !dbg !1765
  %35 = bitcast i32* %arrayidx75 to i8*, !dbg !1765
  %call77 = call i32 %33(i8* %35, i32 1, i32 1, i8* %22, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 557) #6, !dbg !1765
  br label %cond.end84, !dbg !1765

cond.false78:                                     ; preds = %land.rhs70
  %36 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !1765, !tbaa !947
  %37 = load i32** %a74, align 8, !dbg !1765, !tbaa !947
  %arrayidx81 = getelementptr inbounds i32* %37, i64 %indvars.iv, !dbg !1765
  %38 = bitcast i32* %arrayidx81 to i8*, !dbg !1765
  %call83 = call i32 %36(i8* %38, i32 1, i32 1, i8* %22, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 557) #6, !dbg !1765
  br label %cond.end84, !dbg !1765

cond.end84:                                       ; preds = %cond.false78, %cond.true72
  %cond85 = phi i32 [ %call77, %cond.true72 ], [ %call83, %cond.false78 ], !dbg !1765
  %tobool86 = icmp ne i32 %cond85, 0, !dbg !1765
  br label %land.end87

land.end87:                                       ; preds = %for.body65, %cond.end84
  %39 = phi i1 [ false, %for.body65 ], [ %tobool86, %cond.end84 ]
  %land.ext88 = zext i1 %39 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext88}, i64 0, metadata !733), !dbg !1753
  call void @llvm.lifetime.end(i64 128, i8* %22) #2, !dbg !1765
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1764
  %40 = load i32* %nra63, align 4, !dbg !1764, !tbaa !1059
  %41 = trunc i64 %indvars.iv.next to i32, !dbg !1764
  %cmp64 = icmp slt i32 %41, %40, !dbg !1764
  br i1 %cmp64, label %for.body65, label %for.end91, !dbg !1764

for.end91:                                        ; preds = %land.end87, %for.cond62.preheader
  ret void, !dbg !1766
}

; Function Attrs: optsize
declare void @close_symtab(%struct.t_symtab*) #3

; Function Attrs: optsize
declare i8** @put_symtab(%struct.t_symtab*, i8*) #3

; Function Attrs: optsize
declare i8** @get_symtab_handle(%struct.t_symtab*, i32) #3

; Function Attrs: optsize
declare i32 @lookup_symtab(%struct.t_symtab*, i8**) #3

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture) #4

; Function Attrs: optsize
declare void @gmx_fio_select(i32) #3

; Function Attrs: optsize
declare i32 @bDebugMode() #3

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: optsize
declare void @gmx_fio_setprecision(i32, i32) #3

; Function Attrs: optsize
declare i8* @GromacsVersion() #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !177, metadata !178, metadata !926, metadata !177, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !53, metadata !65, metadata !75, metadata !82, metadata !130, metadata !143, metadata !148, metadata !153, metadata !160, metadata !167, metadata !172}
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
!53 = metadata !{i32 786436, metadata !54, null, metadata !"", i32 52, i64 32, i64 32, i32 0, i32 0, null, metadata !55, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 52, size 32, align 32, offset 0] [from ]
!54 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/gmxfio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!55 = metadata !{metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64}
!56 = metadata !{i32 786472, metadata !"eioREAL", i64 0} ; [ DW_TAG_enumerator ] [eioREAL :: 0]
!57 = metadata !{i32 786472, metadata !"eioINT", i64 1} ; [ DW_TAG_enumerator ] [eioINT :: 1]
!58 = metadata !{i32 786472, metadata !"eioNUCHAR", i64 2} ; [ DW_TAG_enumerator ] [eioNUCHAR :: 2]
!59 = metadata !{i32 786472, metadata !"eioUSHORT", i64 3} ; [ DW_TAG_enumerator ] [eioUSHORT :: 3]
!60 = metadata !{i32 786472, metadata !"eioRVEC", i64 4} ; [ DW_TAG_enumerator ] [eioRVEC :: 4]
!61 = metadata !{i32 786472, metadata !"eioNRVEC", i64 5} ; [ DW_TAG_enumerator ] [eioNRVEC :: 5]
!62 = metadata !{i32 786472, metadata !"eioIVEC", i64 6} ; [ DW_TAG_enumerator ] [eioIVEC :: 6]
!63 = metadata !{i32 786472, metadata !"eioSTRING", i64 7} ; [ DW_TAG_enumerator ] [eioSTRING :: 7]
!64 = metadata !{i32 786472, metadata !"eioNR", i64 8} ; [ DW_TAG_enumerator ] [eioNR :: 8]
!65 = metadata !{i32 786436, metadata !54, null, metadata !"", i32 48, i64 32, i64 32, i32 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 48, size 32, align 32, offset 0] [from ]
!66 = metadata !{metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74}
!67 = metadata !{i32 786472, metadata !"eitemHEADER", i64 0} ; [ DW_TAG_enumerator ] [eitemHEADER :: 0]
!68 = metadata !{i32 786472, metadata !"eitemIR", i64 1} ; [ DW_TAG_enumerator ] [eitemIR :: 1]
!69 = metadata !{i32 786472, metadata !"eitemBOX", i64 2} ; [ DW_TAG_enumerator ] [eitemBOX :: 2]
!70 = metadata !{i32 786472, metadata !"eitemTOP", i64 3} ; [ DW_TAG_enumerator ] [eitemTOP :: 3]
!71 = metadata !{i32 786472, metadata !"eitemX", i64 4} ; [ DW_TAG_enumerator ] [eitemX :: 4]
!72 = metadata !{i32 786472, metadata !"eitemV", i64 5} ; [ DW_TAG_enumerator ] [eitemV :: 5]
!73 = metadata !{i32 786472, metadata !"eitemF", i64 6} ; [ DW_TAG_enumerator ] [eitemF :: 6]
!74 = metadata !{i32 786472, metadata !"eitemNR", i64 7} ; [ DW_TAG_enumerator ] [eitemNR :: 7]
!75 = metadata !{i32 786436, metadata !76, null, metadata !"", i32 38, i64 32, i64 32, i32 0, i32 0, null, metadata !77, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 38, size 32, align 32, offset 0] [from ]
!76 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/enums.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!77 = metadata !{metadata !78, metadata !79, metadata !80, metadata !81}
!78 = metadata !{i32 786472, metadata !"ebCGS", i64 0} ; [ DW_TAG_enumerator ] [ebCGS :: 0]
!79 = metadata !{i32 786472, metadata !"ebMOLS", i64 1} ; [ DW_TAG_enumerator ] [ebMOLS :: 1]
!80 = metadata !{i32 786472, metadata !"ebSBLOCKS", i64 2} ; [ DW_TAG_enumerator ] [ebSBLOCKS :: 2]
!81 = metadata !{i32 786472, metadata !"ebNR", i64 3} ; [ DW_TAG_enumerator ] [ebNR :: 3]
!82 = metadata !{i32 786436, metadata !83, null, metadata !"", i32 49, i64 32, i64 32, i32 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 49, size 32, align 32, offset 0] [from ]
!83 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/idef.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!84 = metadata !{metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129}
!85 = metadata !{i32 786472, metadata !"F_BONDS", i64 0} ; [ DW_TAG_enumerator ] [F_BONDS :: 0]
!86 = metadata !{i32 786472, metadata !"F_G96BONDS", i64 1} ; [ DW_TAG_enumerator ] [F_G96BONDS :: 1]
!87 = metadata !{i32 786472, metadata !"F_MORSE", i64 2} ; [ DW_TAG_enumerator ] [F_MORSE :: 2]
!88 = metadata !{i32 786472, metadata !"F_CUBICBONDS", i64 3} ; [ DW_TAG_enumerator ] [F_CUBICBONDS :: 3]
!89 = metadata !{i32 786472, metadata !"F_CONNBONDS", i64 4} ; [ DW_TAG_enumerator ] [F_CONNBONDS :: 4]
!90 = metadata !{i32 786472, metadata !"F_HARMONIC", i64 5} ; [ DW_TAG_enumerator ] [F_HARMONIC :: 5]
!91 = metadata !{i32 786472, metadata !"F_ANGLES", i64 6} ; [ DW_TAG_enumerator ] [F_ANGLES :: 6]
!92 = metadata !{i32 786472, metadata !"F_G96ANGLES", i64 7} ; [ DW_TAG_enumerator ] [F_G96ANGLES :: 7]
!93 = metadata !{i32 786472, metadata !"F_PDIHS", i64 8} ; [ DW_TAG_enumerator ] [F_PDIHS :: 8]
!94 = metadata !{i32 786472, metadata !"F_RBDIHS", i64 9} ; [ DW_TAG_enumerator ] [F_RBDIHS :: 9]
!95 = metadata !{i32 786472, metadata !"F_IDIHS", i64 10} ; [ DW_TAG_enumerator ] [F_IDIHS :: 10]
!96 = metadata !{i32 786472, metadata !"F_LJ14", i64 11} ; [ DW_TAG_enumerator ] [F_LJ14 :: 11]
!97 = metadata !{i32 786472, metadata !"F_COUL14", i64 12} ; [ DW_TAG_enumerator ] [F_COUL14 :: 12]
!98 = metadata !{i32 786472, metadata !"F_LJ", i64 13} ; [ DW_TAG_enumerator ] [F_LJ :: 13]
!99 = metadata !{i32 786472, metadata !"F_BHAM", i64 14} ; [ DW_TAG_enumerator ] [F_BHAM :: 14]
!100 = metadata !{i32 786472, metadata !"F_LJLR", i64 15} ; [ DW_TAG_enumerator ] [F_LJLR :: 15]
!101 = metadata !{i32 786472, metadata !"F_DISPCORR", i64 16} ; [ DW_TAG_enumerator ] [F_DISPCORR :: 16]
!102 = metadata !{i32 786472, metadata !"F_SR", i64 17} ; [ DW_TAG_enumerator ] [F_SR :: 17]
!103 = metadata !{i32 786472, metadata !"F_LR", i64 18} ; [ DW_TAG_enumerator ] [F_LR :: 18]
!104 = metadata !{i32 786472, metadata !"F_WPOL", i64 19} ; [ DW_TAG_enumerator ] [F_WPOL :: 19]
!105 = metadata !{i32 786472, metadata !"F_POSRES", i64 20} ; [ DW_TAG_enumerator ] [F_POSRES :: 20]
!106 = metadata !{i32 786472, metadata !"F_DISRES", i64 21} ; [ DW_TAG_enumerator ] [F_DISRES :: 21]
!107 = metadata !{i32 786472, metadata !"F_DISRESVIOL", i64 22} ; [ DW_TAG_enumerator ] [F_DISRESVIOL :: 22]
!108 = metadata !{i32 786472, metadata !"F_ORIRES", i64 23} ; [ DW_TAG_enumerator ] [F_ORIRES :: 23]
!109 = metadata !{i32 786472, metadata !"F_ORIRESDEV", i64 24} ; [ DW_TAG_enumerator ] [F_ORIRESDEV :: 24]
!110 = metadata !{i32 786472, metadata !"F_ANGRES", i64 25} ; [ DW_TAG_enumerator ] [F_ANGRES :: 25]
!111 = metadata !{i32 786472, metadata !"F_ANGRESZ", i64 26} ; [ DW_TAG_enumerator ] [F_ANGRESZ :: 26]
!112 = metadata !{i32 786472, metadata !"F_SHAKE", i64 27} ; [ DW_TAG_enumerator ] [F_SHAKE :: 27]
!113 = metadata !{i32 786472, metadata !"F_SHAKENC", i64 28} ; [ DW_TAG_enumerator ] [F_SHAKENC :: 28]
!114 = metadata !{i32 786472, metadata !"F_SETTLE", i64 29} ; [ DW_TAG_enumerator ] [F_SETTLE :: 29]
!115 = metadata !{i32 786472, metadata !"F_DUMMY2", i64 30} ; [ DW_TAG_enumerator ] [F_DUMMY2 :: 30]
!116 = metadata !{i32 786472, metadata !"F_DUMMY3", i64 31} ; [ DW_TAG_enumerator ] [F_DUMMY3 :: 31]
!117 = metadata !{i32 786472, metadata !"F_DUMMY3FD", i64 32} ; [ DW_TAG_enumerator ] [F_DUMMY3FD :: 32]
!118 = metadata !{i32 786472, metadata !"F_DUMMY3FAD", i64 33} ; [ DW_TAG_enumerator ] [F_DUMMY3FAD :: 33]
!119 = metadata !{i32 786472, metadata !"F_DUMMY3OUT", i64 34} ; [ DW_TAG_enumerator ] [F_DUMMY3OUT :: 34]
!120 = metadata !{i32 786472, metadata !"F_DUMMY4FD", i64 35} ; [ DW_TAG_enumerator ] [F_DUMMY4FD :: 35]
!121 = metadata !{i32 786472, metadata !"F_EQM", i64 36} ; [ DW_TAG_enumerator ] [F_EQM :: 36]
!122 = metadata !{i32 786472, metadata !"F_EPOT", i64 37} ; [ DW_TAG_enumerator ] [F_EPOT :: 37]
!123 = metadata !{i32 786472, metadata !"F_EKIN", i64 38} ; [ DW_TAG_enumerator ] [F_EKIN :: 38]
!124 = metadata !{i32 786472, metadata !"F_ETOT", i64 39} ; [ DW_TAG_enumerator ] [F_ETOT :: 39]
!125 = metadata !{i32 786472, metadata !"F_TEMP", i64 40} ; [ DW_TAG_enumerator ] [F_TEMP :: 40]
!126 = metadata !{i32 786472, metadata !"F_PRES", i64 41} ; [ DW_TAG_enumerator ] [F_PRES :: 41]
!127 = metadata !{i32 786472, metadata !"F_DVDL", i64 42} ; [ DW_TAG_enumerator ] [F_DVDL :: 42]
!128 = metadata !{i32 786472, metadata !"F_DVDLKIN", i64 43} ; [ DW_TAG_enumerator ] [F_DVDLKIN :: 43]
!129 = metadata !{i32 786472, metadata !"F_NRE", i64 44} ; [ DW_TAG_enumerator ] [F_NRE :: 44]
!130 = metadata !{i32 786436, metadata !131, null, metadata !"", i32 41, i64 32, i64 32, i32 0, i32 0, null, metadata !132, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 41, size 32, align 32, offset 0] [from ]
!131 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/atoms.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!132 = metadata !{metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142}
!133 = metadata !{i32 786472, metadata !"egcTC", i64 0} ; [ DW_TAG_enumerator ] [egcTC :: 0]
!134 = metadata !{i32 786472, metadata !"egcENER", i64 1} ; [ DW_TAG_enumerator ] [egcENER :: 1]
!135 = metadata !{i32 786472, metadata !"egcACC", i64 2} ; [ DW_TAG_enumerator ] [egcACC :: 2]
!136 = metadata !{i32 786472, metadata !"egcFREEZE", i64 3} ; [ DW_TAG_enumerator ] [egcFREEZE :: 3]
!137 = metadata !{i32 786472, metadata !"egcUser1", i64 4} ; [ DW_TAG_enumerator ] [egcUser1 :: 4]
!138 = metadata !{i32 786472, metadata !"egcUser2", i64 5} ; [ DW_TAG_enumerator ] [egcUser2 :: 5]
!139 = metadata !{i32 786472, metadata !"egcVCM", i64 6} ; [ DW_TAG_enumerator ] [egcVCM :: 6]
!140 = metadata !{i32 786472, metadata !"egcXTC", i64 7} ; [ DW_TAG_enumerator ] [egcXTC :: 7]
!141 = metadata !{i32 786472, metadata !"egcORFIT", i64 8} ; [ DW_TAG_enumerator ] [egcORFIT :: 8]
!142 = metadata !{i32 786472, metadata !"egcNR", i64 9} ; [ DW_TAG_enumerator ] [egcNR :: 9]
!143 = metadata !{i32 786436, metadata !76, null, metadata !"", i32 42, i64 32, i64 32, i32 0, i32 0, null, metadata !144, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 42, size 32, align 32, offset 0] [from ]
!144 = metadata !{metadata !145, metadata !146, metadata !147}
!145 = metadata !{i32 786472, metadata !"epbcXYZ", i64 0} ; [ DW_TAG_enumerator ] [epbcXYZ :: 0]
!146 = metadata !{i32 786472, metadata !"epbcNONE", i64 1} ; [ DW_TAG_enumerator ] [epbcNONE :: 1]
!147 = metadata !{i32 786472, metadata !"epbcNR", i64 2} ; [ DW_TAG_enumerator ] [epbcNR :: 2]
!148 = metadata !{i32 786436, metadata !76, null, metadata !"", i32 65, i64 32, i64 32, i32 0, i32 0, null, metadata !149, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 65, size 32, align 32, offset 0] [from ]
!149 = metadata !{metadata !150, metadata !151, metadata !152}
!150 = metadata !{i32 786472, metadata !"eewg3D", i64 0} ; [ DW_TAG_enumerator ] [eewg3D :: 0]
!151 = metadata !{i32 786472, metadata !"eewg3DC", i64 1} ; [ DW_TAG_enumerator ] [eewg3DC :: 1]
!152 = metadata !{i32 786472, metadata !"eewgNR", i64 2} ; [ DW_TAG_enumerator ] [eewgNR :: 2]
!153 = metadata !{i32 786436, metadata !76, null, metadata !"", i32 54, i64 32, i64 32, i32 0, i32 0, null, metadata !154, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 54, size 32, align 32, offset 0] [from ]
!154 = metadata !{metadata !155, metadata !156, metadata !157, metadata !158, metadata !159}
!155 = metadata !{i32 786472, metadata !"epctISOTROPIC", i64 0} ; [ DW_TAG_enumerator ] [epctISOTROPIC :: 0]
!156 = metadata !{i32 786472, metadata !"epctSEMIISOTROPIC", i64 1} ; [ DW_TAG_enumerator ] [epctSEMIISOTROPIC :: 1]
!157 = metadata !{i32 786472, metadata !"epctANISOTROPIC", i64 2} ; [ DW_TAG_enumerator ] [epctANISOTROPIC :: 2]
!158 = metadata !{i32 786472, metadata !"epctSURFACETENSION", i64 3} ; [ DW_TAG_enumerator ] [epctSURFACETENSION :: 3]
!159 = metadata !{i32 786472, metadata !"epctNR", i64 4} ; [ DW_TAG_enumerator ] [epctNR :: 4]
!160 = metadata !{i32 786436, metadata !76, null, metadata !"", i32 50, i64 32, i64 32, i32 0, i32 0, null, metadata !161, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 50, size 32, align 32, offset 0] [from ]
!161 = metadata !{metadata !162, metadata !163, metadata !164, metadata !165, metadata !166}
!162 = metadata !{i32 786472, metadata !"epcNO", i64 0} ; [ DW_TAG_enumerator ] [epcNO :: 0]
!163 = metadata !{i32 786472, metadata !"epcBERENDSEN", i64 1} ; [ DW_TAG_enumerator ] [epcBERENDSEN :: 1]
!164 = metadata !{i32 786472, metadata !"epcPARRINELLORAHMAN", i64 2} ; [ DW_TAG_enumerator ] [epcPARRINELLORAHMAN :: 2]
!165 = metadata !{i32 786472, metadata !"epcISOTROPIC", i64 3} ; [ DW_TAG_enumerator ] [epcISOTROPIC :: 3]
!166 = metadata !{i32 786472, metadata !"epcNR", i64 4} ; [ DW_TAG_enumerator ] [epcNR :: 4]
!167 = metadata !{i32 786436, metadata !76, null, metadata !"", i32 106, i64 32, i64 32, i32 0, i32 0, null, metadata !168, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 106, size 32, align 32, offset 0] [from ]
!168 = metadata !{metadata !169, metadata !170, metadata !171}
!169 = metadata !{i32 786472, metadata !"efepNO", i64 0} ; [ DW_TAG_enumerator ] [efepNO :: 0]
!170 = metadata !{i32 786472, metadata !"efepYES", i64 1} ; [ DW_TAG_enumerator ] [efepYES :: 1]
!171 = metadata !{i32 786472, metadata !"efepNR", i64 2} ; [ DW_TAG_enumerator ] [efepNR :: 2]
!172 = metadata !{i32 786436, metadata !76, null, metadata !"", i32 91, i64 32, i64 32, i32 0, i32 0, null, metadata !173, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 91, size 32, align 32, offset 0] [from ]
!173 = metadata !{metadata !174, metadata !175, metadata !176}
!174 = metadata !{i32 786472, metadata !"edrwConservative", i64 0} ; [ DW_TAG_enumerator ] [edrwConservative :: 0]
!175 = metadata !{i32 786472, metadata !"edrwEqual", i64 1} ; [ DW_TAG_enumerator ] [edrwEqual :: 1]
!176 = metadata !{i32 786472, metadata !"edrwNR", i64 2} ; [ DW_TAG_enumerator ] [edrwNR :: 2]
!177 = metadata !{i32 0}
!178 = metadata !{metadata !179, metadata !197, metadata !331, metadata !337, metadata !342, metadata !364, metadata !614, metadata !630, metadata !645, metadata !660, metadata !665, metadata !686, metadata !705, metadata !712, metadata !726, metadata !746, metadata !762, metadata !780, metadata !789, metadata !806, metadata !815, metadata !822, metadata !830, metadata !840, metadata !899, metadata !909, metadata !920}
!179 = metadata !{i32 786478, metadata !1, metadata !180, metadata !"_do_section", metadata !"_do_section", metadata !"", i32 81, metadata !181, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, i8*, i32)* @_do_section, null, null, metadata !186, i32 82} ; [ DW_TAG_subprogram ] [line 81] [def] [scope 82] [_do_section]
!180 = metadata !{i32 786473, metadata !1}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!181 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !182, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!182 = metadata !{null, metadata !183, metadata !183, metadata !183, metadata !184, metadata !183}
!183 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!184 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !185} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!185 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!186 = metadata !{metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !196}
!187 = metadata !{i32 786689, metadata !179, metadata !"fp", metadata !180, i32 16777297, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 81]
!188 = metadata !{i32 786689, metadata !179, metadata !"key", metadata !180, i32 33554513, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 81]
!189 = metadata !{i32 786689, metadata !179, metadata !"bRead", metadata !180, i32 50331729, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bRead] [line 81]
!190 = metadata !{i32 786689, metadata !179, metadata !"src", metadata !180, i32 67108945, metadata !184, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 81]
!191 = metadata !{i32 786689, metadata !179, metadata !"line", metadata !180, i32 83886161, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 81]
!192 = metadata !{i32 786688, metadata !179, metadata !"buf", metadata !180, i32 83, metadata !193, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 83]
!193 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 8, i32 0, i32 0, metadata !185, metadata !194, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32768, align 8, offset 0] [from char]
!194 = metadata !{metadata !195}
!195 = metadata !{i32 786465, i64 0, i64 4096}    ; [ DW_TAG_subrange_type ] [0, 4095]
!196 = metadata !{i32 786688, metadata !179, metadata !"bDbg", metadata !180, i32 84, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bDbg] [line 84]
!197 = metadata !{i32 786478, metadata !1, metadata !180, metadata !"do_iparams", metadata !"do_iparams", metadata !"", i32 374, metadata !198, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, %union.t_iparams*, i32)* @do_iparams, null, null, metadata !317, i32 375} ; [ DW_TAG_subprogram ] [line 374] [def] [scope 375] [do_iparams]
!198 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !199, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!199 = metadata !{null, metadata !200, metadata !201, metadata !183}
!200 = metadata !{i32 786454, metadata !1, null, metadata !"t_functype", i32 133, i64 0, i64 0, i64 0, i32 0, metadata !183} ; [ DW_TAG_typedef ] [t_functype] [line 133, size 0, align 0, offset 0] [from int]
!201 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !202} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iparams]
!202 = metadata !{i32 786454, metadata !1, null, metadata !"t_iparams", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !203} ; [ DW_TAG_typedef ] [t_iparams] [line 131, size 0, align 0, offset 0] [from ]
!203 = metadata !{i32 786455, metadata !83, null, metadata !"", i32 97, i64 192, i64 32, i64 0, i32 0, null, metadata !204, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 97, size 192, align 32, offset 0] [from ]
!204 = metadata !{metadata !205, metadata !213, metadata !220, metadata !226, metadata !235, metadata !240, metadata !247, metadata !255, metadata !260, metadata !265, metadata !271, metadata !279, metadata !286, metadata !295, metadata !304, metadata !313}
!205 = metadata !{i32 786445, metadata !83, metadata !203, metadata !"bham", i32 105, i64 96, i64 32, i64 0, i32 0, metadata !206} ; [ DW_TAG_member ] [bham] [line 105, size 96, align 32, offset 0] [from ]
!206 = metadata !{i32 786451, metadata !83, metadata !203, metadata !"", i32 105, i64 96, i64 32, i32 0, i32 0, null, metadata !207, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 105, size 96, align 32, offset 0] [from ]
!207 = metadata !{metadata !208, metadata !211, metadata !212}
!208 = metadata !{i32 786445, metadata !83, metadata !206, metadata !"a", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !209} ; [ DW_TAG_member ] [a] [line 105, size 32, align 32, offset 0] [from real]
!209 = metadata !{i32 786454, metadata !83, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !210} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!210 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!211 = metadata !{i32 786445, metadata !83, metadata !206, metadata !"b", i32 105, i64 32, i64 32, i64 32, i32 0, metadata !209} ; [ DW_TAG_member ] [b] [line 105, size 32, align 32, offset 32] [from real]
!212 = metadata !{i32 786445, metadata !83, metadata !206, metadata !"c", i32 105, i64 32, i64 32, i64 64, i32 0, metadata !209} ; [ DW_TAG_member ] [c] [line 105, size 32, align 32, offset 64] [from real]
!213 = metadata !{i32 786445, metadata !83, metadata !203, metadata !"harmonic", i32 106, i64 128, i64 32, i64 0, i32 0, metadata !214} ; [ DW_TAG_member ] [harmonic] [line 106, size 128, align 32, offset 0] [from ]
!214 = metadata !{i32 786451, metadata !83, metadata !203, metadata !"", i32 106, i64 128, i64 32, i32 0, i32 0, null, metadata !215, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 106, size 128, align 32, offset 0] [from ]
!215 = metadata !{metadata !216, metadata !217, metadata !218, metadata !219}
!216 = metadata !{i32 786445, metadata !83, metadata !214, metadata !"rA", i32 106, i64 32, i64 32, i64 0, i32 0, metadata !209} ; [ DW_TAG_member ] [rA] [line 106, size 32, align 32, offset 0] [from real]
!217 = metadata !{i32 786445, metadata !83, metadata !214, metadata !"krA", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !209} ; [ DW_TAG_member ] [krA] [line 106, size 32, align 32, offset 32] [from real]
!218 = metadata !{i32 786445, metadata !83, metadata !214, metadata !"rB", i32 106, i64 32, i64 32, i64 64, i32 0, metadata !209} ; [ DW_TAG_member ] [rB] [line 106, size 32, align 32, offset 64] [from real]
!219 = metadata !{i32 786445, metadata !83, metadata !214, metadata !"krB", i32 106, i64 32, i64 32, i64 96, i32 0, metadata !209} ; [ DW_TAG_member ] [krB] [line 106, size 32, align 32, offset 96] [from real]
!220 = metadata !{i32 786445, metadata !83, metadata !203, metadata !"cubic", i32 108, i64 96, i64 32, i64 0, i32 0, metadata !221} ; [ DW_TAG_member ] [cubic] [line 108, size 96, align 32, offset 0] [from ]
!221 = metadata !{i32 786451, metadata !83, metadata !203, metadata !"", i32 108, i64 96, i64 32, i32 0, i32 0, null, metadata !222, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 108, size 96, align 32, offset 0] [from ]
!222 = metadata !{metadata !223, metadata !224, metadata !225}
!223 = metadata !{i32 786445, metadata !83, metadata !221, metadata !"b0", i32 108, i64 32, i64 32, i64 0, i32 0, metadata !209} ; [ DW_TAG_member ] [b0] [line 108, size 32, align 32, offset 0] [from real]
!224 = metadata !{i32 786445, metadata !83, metadata !221, metadata !"kb", i32 108, i64 32, i64 32, i64 32, i32 0, metadata !209} ; [ DW_TAG_member ] [kb] [line 108, size 32, align 32, offset 32] [from real]
!225 = metadata !{i32 786445, metadata !83, metadata !221, metadata !"kcub", i32 108, i64 32, i64 32, i64 64, i32 0, metadata !209} ; [ DW_TAG_member ] [kcub] [line 108, size 32, align 32, offset 64] [from real]
!226 = metadata !{i32 786445, metadata !83, metadata !203, metadata !"wpol", i32 110, i64 192, i64 32, i64 0, i32 0, metadata !227} ; [ DW_TAG_member ] [wpol] [line 110, size 192, align 32, offset 0] [from ]
!227 = metadata !{i32 786451, metadata !83, metadata !203, metadata !"", i32 110, i64 192, i64 32, i32 0, i32 0, null, metadata !228, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 110, size 192, align 32, offset 0] [from ]
!228 = metadata !{metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234}
!229 = metadata !{i32 786445, metadata !83, metadata !227, metadata !"kx", i32 110, i64 32, i64 32, i64 0, i32 0, metadata !209} ; [ DW_TAG_member ] [kx] [line 110, size 32, align 32, offset 0] [from real]
!230 = metadata !{i32 786445, metadata !83, metadata !227, metadata !"ky", i32 110, i64 32, i64 32, i64 32, i32 0, metadata !209} ; [ DW_TAG_member ] [ky] [line 110, size 32, align 32, offset 32] [from real]
!231 = metadata !{i32 786445, metadata !83, metadata !227, metadata !"kz", i32 110, i64 32, i64 32, i64 64, i32 0, metadata !209} ; [ DW_TAG_member ] [kz] [line 110, size 32, align 32, offset 64] [from real]
!232 = metadata !{i32 786445, metadata !83, metadata !227, metadata !"rOH", i32 110, i64 32, i64 32, i64 96, i32 0, metadata !209} ; [ DW_TAG_member ] [rOH] [line 110, size 32, align 32, offset 96] [from real]
!233 = metadata !{i32 786445, metadata !83, metadata !227, metadata !"rHH", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !209} ; [ DW_TAG_member ] [rHH] [line 110, size 32, align 32, offset 128] [from real]
!234 = metadata !{i32 786445, metadata !83, metadata !227, metadata !"rOD", i32 110, i64 32, i64 32, i64 160, i32 0, metadata !209} ; [ DW_TAG_member ] [rOD] [line 110, size 32, align 32, offset 160] [from real]
!235 = metadata !{i32 786445, metadata !83, metadata !203, metadata !"lj", i32 111, i64 64, i64 32, i64 0, i32 0, metadata !236} ; [ DW_TAG_member ] [lj] [line 111, size 64, align 32, offset 0] [from ]
!236 = metadata !{i32 786451, metadata !83, metadata !203, metadata !"", i32 111, i64 64, i64 32, i32 0, i32 0, null, metadata !237, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 111, size 64, align 32, offset 0] [from ]
!237 = metadata !{metadata !238, metadata !239}
!238 = metadata !{i32 786445, metadata !83, metadata !236, metadata !"c6", i32 111, i64 32, i64 32, i64 0, i32 0, metadata !209} ; [ DW_TAG_member ] [c6] [line 111, size 32, align 32, offset 0] [from real]
!239 = metadata !{i32 786445, metadata !83, metadata !236, metadata !"c12", i32 111, i64 32, i64 32, i64 32, i32 0, metadata !209} ; [ DW_TAG_member ] [c12] [line 111, size 32, align 32, offset 32] [from real]
!240 = metadata !{i32 786445, metadata !83, metadata !203, metadata !"lj14", i32 112, i64 128, i64 32, i64 0, i32 0, metadata !241} ; [ DW_TAG_member ] [lj14] [line 112, size 128, align 32, offset 0] [from ]
!241 = metadata !{i32 786451, metadata !83, metadata !203, metadata !"", i32 112, i64 128, i64 32, i32 0, i32 0, null, metadata !242, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 112, size 128, align 32, offset 0] [from ]
!242 = metadata !{metadata !243, metadata !244, metadata !245, metadata !246}
!243 = metadata !{i32 786445, metadata !83, metadata !241, metadata !"c6A", i32 112, i64 32, i64 32, i64 0, i32 0, metadata !209} ; [ DW_TAG_member ] [c6A] [line 112, size 32, align 32, offset 0] [from real]
!244 = metadata !{i32 786445, metadata !83, metadata !241, metadata !"c12A", i32 112, i64 32, i64 32, i64 32, i32 0, metadata !209} ; [ DW_TAG_member ] [c12A] [line 112, size 32, align 32, offset 32] [from real]
!245 = metadata !{i32 786445, metadata !83, metadata !241, metadata !"c6B", i32 112, i64 32, i64 32, i64 64, i32 0, metadata !209} ; [ DW_TAG_member ] [c6B] [line 112, size 32, align 32, offset 64] [from real]
!246 = metadata !{i32 786445, metadata !83, metadata !241, metadata !"c12B", i32 112, i64 32, i64 32, i64 96, i32 0, metadata !209} ; [ DW_TAG_member ] [c12B] [line 112, size 32, align 32, offset 96] [from real]
!247 = metadata !{i32 786445, metadata !83, metadata !203, metadata !"pdihs", i32 117, i64 160, i64 32, i64 0, i32 0, metadata !248} ; [ DW_TAG_member ] [pdihs] [line 117, size 160, align 32, offset 0] [from ]
!248 = metadata !{i32 786451, metadata !83, metadata !203, metadata !"", i32 117, i64 160, i64 32, i32 0, i32 0, null, metadata !249, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 117, size 160, align 32, offset 0] [from ]
!249 = metadata !{metadata !250, metadata !251, metadata !252, metadata !253, metadata !254}
!250 = metadata !{i32 786445, metadata !83, metadata !248, metadata !"phiA", i32 117, i64 32, i64 32, i64 0, i32 0, metadata !209} ; [ DW_TAG_member ] [phiA] [line 117, size 32, align 32, offset 0] [from real]
!251 = metadata !{i32 786445, metadata !83, metadata !248, metadata !"cpA", i32 117, i64 32, i64 32, i64 32, i32 0, metadata !209} ; [ DW_TAG_member ] [cpA] [line 117, size 32, align 32, offset 32] [from real]
!252 = metadata !{i32 786445, metadata !83, metadata !248, metadata !"mult", i32 117, i64 32, i64 32, i64 64, i32 0, metadata !183} ; [ DW_TAG_member ] [mult] [line 117, size 32, align 32, offset 64] [from int]
!253 = metadata !{i32 786445, metadata !83, metadata !248, metadata !"phiB", i32 117, i64 32, i64 32, i64 96, i32 0, metadata !209} ; [ DW_TAG_member ] [phiB] [line 117, size 32, align 32, offset 96] [from real]
!254 = metadata !{i32 786445, metadata !83, metadata !248, metadata !"cpB", i32 117, i64 32, i64 32, i64 128, i32 0, metadata !209} ; [ DW_TAG_member ] [cpB] [line 117, size 32, align 32, offset 128] [from real]
!255 = metadata !{i32 786445, metadata !83, metadata !203, metadata !"shake", i32 118, i64 64, i64 32, i64 0, i32 0, metadata !256} ; [ DW_TAG_member ] [shake] [line 118, size 64, align 32, offset 0] [from ]
!256 = metadata !{i32 786451, metadata !83, metadata !203, metadata !"", i32 118, i64 64, i64 32, i32 0, i32 0, null, metadata !257, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 118, size 64, align 32, offset 0] [from ]
!257 = metadata !{metadata !258, metadata !259}
!258 = metadata !{i32 786445, metadata !83, metadata !256, metadata !"dA", i32 118, i64 32, i64 32, i64 0, i32 0, metadata !209} ; [ DW_TAG_member ] [dA] [line 118, size 32, align 32, offset 0] [from real]
!259 = metadata !{i32 786445, metadata !83, metadata !256, metadata !"dB", i32 118, i64 32, i64 32, i64 32, i32 0, metadata !209} ; [ DW_TAG_member ] [dB] [line 118, size 32, align 32, offset 32] [from real]
!260 = metadata !{i32 786445, metadata !83, metadata !203, metadata !"settle", i32 123, i64 64, i64 32, i64 0, i32 0, metadata !261} ; [ DW_TAG_member ] [settle] [line 123, size 64, align 32, offset 0] [from ]
!261 = metadata !{i32 786451, metadata !83, metadata !203, metadata !"", i32 123, i64 64, i64 32, i32 0, i32 0, null, metadata !262, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 123, size 64, align 32, offset 0] [from ]
!262 = metadata !{metadata !263, metadata !264}
!263 = metadata !{i32 786445, metadata !83, metadata !261, metadata !"doh", i32 123, i64 32, i64 32, i64 0, i32 0, metadata !209} ; [ DW_TAG_member ] [doh] [line 123, size 32, align 32, offset 0] [from real]
!264 = metadata !{i32 786445, metadata !83, metadata !261, metadata !"dhh", i32 123, i64 32, i64 32, i64 32, i32 0, metadata !209} ; [ DW_TAG_member ] [dhh] [line 123, size 32, align 32, offset 32] [from real]
!265 = metadata !{i32 786445, metadata !83, metadata !203, metadata !"morse", i32 124, i64 96, i64 32, i64 0, i32 0, metadata !266} ; [ DW_TAG_member ] [morse] [line 124, size 96, align 32, offset 0] [from ]
!266 = metadata !{i32 786451, metadata !83, metadata !203, metadata !"", i32 124, i64 96, i64 32, i32 0, i32 0, null, metadata !267, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 124, size 96, align 32, offset 0] [from ]
!267 = metadata !{metadata !268, metadata !269, metadata !270}
!268 = metadata !{i32 786445, metadata !83, metadata !266, metadata !"b0", i32 124, i64 32, i64 32, i64 0, i32 0, metadata !209} ; [ DW_TAG_member ] [b0] [line 124, size 32, align 32, offset 0] [from real]
!269 = metadata !{i32 786445, metadata !83, metadata !266, metadata !"cb", i32 124, i64 32, i64 32, i64 32, i32 0, metadata !209} ; [ DW_TAG_member ] [cb] [line 124, size 32, align 32, offset 32] [from real]
!270 = metadata !{i32 786445, metadata !83, metadata !266, metadata !"beta", i32 124, i64 32, i64 32, i64 64, i32 0, metadata !209} ; [ DW_TAG_member ] [beta] [line 124, size 32, align 32, offset 64] [from real]
!271 = metadata !{i32 786445, metadata !83, metadata !203, metadata !"posres", i32 125, i64 192, i64 32, i64 0, i32 0, metadata !272} ; [ DW_TAG_member ] [posres] [line 125, size 192, align 32, offset 0] [from ]
!272 = metadata !{i32 786451, metadata !83, metadata !203, metadata !"", i32 125, i64 192, i64 32, i32 0, i32 0, null, metadata !273, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 125, size 192, align 32, offset 0] [from ]
!273 = metadata !{metadata !274, metadata !278}
!274 = metadata !{i32 786445, metadata !83, metadata !272, metadata !"pos0", i32 125, i64 96, i64 32, i64 0, i32 0, metadata !275} ; [ DW_TAG_member ] [pos0] [line 125, size 96, align 32, offset 0] [from ]
!275 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !209, metadata !276, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!276 = metadata !{metadata !277}
!277 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!278 = metadata !{i32 786445, metadata !83, metadata !272, metadata !"fc", i32 125, i64 96, i64 32, i64 96, i32 0, metadata !275} ; [ DW_TAG_member ] [fc] [line 125, size 96, align 32, offset 96] [from ]
!279 = metadata !{i32 786445, metadata !83, metadata !203, metadata !"rbdihs", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !280} ; [ DW_TAG_member ] [rbdihs] [line 126, size 192, align 32, offset 0] [from ]
!280 = metadata !{i32 786451, metadata !83, metadata !203, metadata !"", i32 126, i64 192, i64 32, i32 0, i32 0, null, metadata !281, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 126, size 192, align 32, offset 0] [from ]
!281 = metadata !{metadata !282}
!282 = metadata !{i32 786445, metadata !83, metadata !280, metadata !"rbc", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !283} ; [ DW_TAG_member ] [rbc] [line 126, size 192, align 32, offset 0] [from ]
!283 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !209, metadata !284, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from real]
!284 = metadata !{metadata !285}
!285 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!286 = metadata !{i32 786445, metadata !83, metadata !203, metadata !"dummy", i32 127, i64 192, i64 32, i64 0, i32 0, metadata !287} ; [ DW_TAG_member ] [dummy] [line 127, size 192, align 32, offset 0] [from ]
!287 = metadata !{i32 786451, metadata !83, metadata !203, metadata !"", i32 127, i64 192, i64 32, i32 0, i32 0, null, metadata !288, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 127, size 192, align 32, offset 0] [from ]
!288 = metadata !{metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294}
!289 = metadata !{i32 786445, metadata !83, metadata !287, metadata !"a", i32 127, i64 32, i64 32, i64 0, i32 0, metadata !209} ; [ DW_TAG_member ] [a] [line 127, size 32, align 32, offset 0] [from real]
!290 = metadata !{i32 786445, metadata !83, metadata !287, metadata !"b", i32 127, i64 32, i64 32, i64 32, i32 0, metadata !209} ; [ DW_TAG_member ] [b] [line 127, size 32, align 32, offset 32] [from real]
!291 = metadata !{i32 786445, metadata !83, metadata !287, metadata !"c", i32 127, i64 32, i64 32, i64 64, i32 0, metadata !209} ; [ DW_TAG_member ] [c] [line 127, size 32, align 32, offset 64] [from real]
!292 = metadata !{i32 786445, metadata !83, metadata !287, metadata !"d", i32 127, i64 32, i64 32, i64 96, i32 0, metadata !209} ; [ DW_TAG_member ] [d] [line 127, size 32, align 32, offset 96] [from real]
!293 = metadata !{i32 786445, metadata !83, metadata !287, metadata !"e", i32 127, i64 32, i64 32, i64 128, i32 0, metadata !209} ; [ DW_TAG_member ] [e] [line 127, size 32, align 32, offset 128] [from real]
!294 = metadata !{i32 786445, metadata !83, metadata !287, metadata !"f", i32 127, i64 32, i64 32, i64 160, i32 0, metadata !209} ; [ DW_TAG_member ] [f] [line 127, size 32, align 32, offset 160] [from real]
!295 = metadata !{i32 786445, metadata !83, metadata !203, metadata !"disres", i32 128, i64 192, i64 32, i64 0, i32 0, metadata !296} ; [ DW_TAG_member ] [disres] [line 128, size 192, align 32, offset 0] [from ]
!296 = metadata !{i32 786451, metadata !83, metadata !203, metadata !"", i32 128, i64 192, i64 32, i32 0, i32 0, null, metadata !297, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 128, size 192, align 32, offset 0] [from ]
!297 = metadata !{metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303}
!298 = metadata !{i32 786445, metadata !83, metadata !296, metadata !"low", i32 128, i64 32, i64 32, i64 0, i32 0, metadata !209} ; [ DW_TAG_member ] [low] [line 128, size 32, align 32, offset 0] [from real]
!299 = metadata !{i32 786445, metadata !83, metadata !296, metadata !"up1", i32 128, i64 32, i64 32, i64 32, i32 0, metadata !209} ; [ DW_TAG_member ] [up1] [line 128, size 32, align 32, offset 32] [from real]
!300 = metadata !{i32 786445, metadata !83, metadata !296, metadata !"up2", i32 128, i64 32, i64 32, i64 64, i32 0, metadata !209} ; [ DW_TAG_member ] [up2] [line 128, size 32, align 32, offset 64] [from real]
!301 = metadata !{i32 786445, metadata !83, metadata !296, metadata !"kfac", i32 128, i64 32, i64 32, i64 96, i32 0, metadata !209} ; [ DW_TAG_member ] [kfac] [line 128, size 32, align 32, offset 96] [from real]
!302 = metadata !{i32 786445, metadata !83, metadata !296, metadata !"type", i32 128, i64 32, i64 32, i64 128, i32 0, metadata !183} ; [ DW_TAG_member ] [type] [line 128, size 32, align 32, offset 128] [from int]
!303 = metadata !{i32 786445, metadata !83, metadata !296, metadata !"label", i32 128, i64 32, i64 32, i64 160, i32 0, metadata !183} ; [ DW_TAG_member ] [label] [line 128, size 32, align 32, offset 160] [from int]
!304 = metadata !{i32 786445, metadata !83, metadata !203, metadata !"orires", i32 129, i64 192, i64 32, i64 0, i32 0, metadata !305} ; [ DW_TAG_member ] [orires] [line 129, size 192, align 32, offset 0] [from ]
!305 = metadata !{i32 786451, metadata !83, metadata !203, metadata !"", i32 129, i64 192, i64 32, i32 0, i32 0, null, metadata !306, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 129, size 192, align 32, offset 0] [from ]
!306 = metadata !{metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312}
!307 = metadata !{i32 786445, metadata !83, metadata !305, metadata !"ex", i32 129, i64 32, i64 32, i64 0, i32 0, metadata !183} ; [ DW_TAG_member ] [ex] [line 129, size 32, align 32, offset 0] [from int]
!308 = metadata !{i32 786445, metadata !83, metadata !305, metadata !"pow", i32 129, i64 32, i64 32, i64 32, i32 0, metadata !183} ; [ DW_TAG_member ] [pow] [line 129, size 32, align 32, offset 32] [from int]
!309 = metadata !{i32 786445, metadata !83, metadata !305, metadata !"label", i32 129, i64 32, i64 32, i64 64, i32 0, metadata !183} ; [ DW_TAG_member ] [label] [line 129, size 32, align 32, offset 64] [from int]
!310 = metadata !{i32 786445, metadata !83, metadata !305, metadata !"c", i32 129, i64 32, i64 32, i64 96, i32 0, metadata !209} ; [ DW_TAG_member ] [c] [line 129, size 32, align 32, offset 96] [from real]
!311 = metadata !{i32 786445, metadata !83, metadata !305, metadata !"obs", i32 129, i64 32, i64 32, i64 128, i32 0, metadata !209} ; [ DW_TAG_member ] [obs] [line 129, size 32, align 32, offset 128] [from real]
!312 = metadata !{i32 786445, metadata !83, metadata !305, metadata !"kfac", i32 129, i64 32, i64 32, i64 160, i32 0, metadata !209} ; [ DW_TAG_member ] [kfac] [line 129, size 32, align 32, offset 160] [from real]
!313 = metadata !{i32 786445, metadata !83, metadata !203, metadata !"generic", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !314} ; [ DW_TAG_member ] [generic] [line 130, size 192, align 32, offset 0] [from ]
!314 = metadata !{i32 786451, metadata !83, metadata !203, metadata !"", i32 130, i64 192, i64 32, i32 0, i32 0, null, metadata !315, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 130, size 192, align 32, offset 0] [from ]
!315 = metadata !{metadata !316}
!316 = metadata !{i32 786445, metadata !83, metadata !314, metadata !"buf", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !283} ; [ DW_TAG_member ] [buf] [line 130, size 192, align 32, offset 0] [from ]
!317 = metadata !{metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323}
!318 = metadata !{i32 786689, metadata !197, metadata !"ftype", metadata !180, i32 16777590, metadata !200, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ftype] [line 374]
!319 = metadata !{i32 786689, metadata !197, metadata !"iparams", metadata !180, i32 33554806, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iparams] [line 374]
!320 = metadata !{i32 786689, metadata !197, metadata !"bRead", metadata !180, i32 50332022, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bRead] [line 374]
!321 = metadata !{i32 786688, metadata !197, metadata !"i", metadata !180, i32 376, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 376]
!322 = metadata !{i32 786688, metadata !197, metadata !"bDum", metadata !180, i32 377, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bDum] [line 377]
!323 = metadata !{i32 786688, metadata !324, metadata !"buf", metadata !180, i32 455, metadata !328, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 455]
!324 = metadata !{i32 786443, metadata !1, metadata !325, i32 455, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!325 = metadata !{i32 786443, metadata !1, metadata !326, i32 455, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!326 = metadata !{i32 786443, metadata !1, metadata !327, i32 455, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!327 = metadata !{i32 786443, metadata !1, metadata !197, i32 381, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!328 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !185, metadata !329, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 8, offset 0] [from char]
!329 = metadata !{metadata !330}
!330 = metadata !{i32 786465, i64 0, i64 128}     ; [ DW_TAG_subrange_type ] [0, 127]
!331 = metadata !{i32 786478, metadata !1, metadata !180, metadata !"open_tpx", metadata !"open_tpx", metadata !"", i32 858, metadata !332, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @open_tpx, null, null, metadata !334, i32 859} ; [ DW_TAG_subprogram ] [line 858] [def] [scope 859] [open_tpx]
!332 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !333, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!333 = metadata !{metadata !183, metadata !184, metadata !184}
!334 = metadata !{metadata !335, metadata !336}
!335 = metadata !{i32 786689, metadata !331, metadata !"fn", metadata !180, i32 16778074, metadata !184, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 858]
!336 = metadata !{i32 786689, metadata !331, metadata !"mode", metadata !180, i32 33555290, metadata !184, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 858]
!337 = metadata !{i32 786478, metadata !1, metadata !180, metadata !"close_tpx", metadata !"close_tpx", metadata !"", i32 863, metadata !338, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @close_tpx, null, null, metadata !340, i32 864} ; [ DW_TAG_subprogram ] [line 863] [def] [scope 864] [close_tpx]
!338 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !339, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!339 = metadata !{null, metadata !183}
!340 = metadata !{metadata !341}
!341 = metadata !{i32 786689, metadata !337, metadata !"fp", metadata !180, i32 16778079, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 863]
!342 = metadata !{i32 786478, metadata !1, metadata !180, metadata !"read_tpxheader", metadata !"read_tpxheader", metadata !"", i32 868, metadata !343, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, %struct.t_tpxheader*)* @read_tpxheader, null, null, metadata !360, i32 869} ; [ DW_TAG_subprogram ] [line 868] [def] [scope 869] [read_tpxheader]
!343 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !344, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!344 = metadata !{null, metadata !184, metadata !345}
!345 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !346} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_tpxheader]
!346 = metadata !{i32 786454, metadata !1, null, metadata !"t_tpxheader", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !347} ; [ DW_TAG_typedef ] [t_tpxheader] [line 68, size 0, align 0, offset 0] [from ]
!347 = metadata !{i32 786451, metadata !348, null, metadata !"", i32 55, i64 320, i64 32, i32 0, i32 0, null, metadata !349, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 55, size 320, align 32, offset 0] [from ]
!348 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!349 = metadata !{metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !357, metadata !358, metadata !359}
!350 = metadata !{i32 786445, metadata !348, metadata !347, metadata !"bIr", i32 57, i64 32, i64 32, i64 0, i32 0, metadata !183} ; [ DW_TAG_member ] [bIr] [line 57, size 32, align 32, offset 0] [from int]
!351 = metadata !{i32 786445, metadata !348, metadata !347, metadata !"bBox", i32 58, i64 32, i64 32, i64 32, i32 0, metadata !183} ; [ DW_TAG_member ] [bBox] [line 58, size 32, align 32, offset 32] [from int]
!352 = metadata !{i32 786445, metadata !348, metadata !347, metadata !"bTop", i32 59, i64 32, i64 32, i64 64, i32 0, metadata !183} ; [ DW_TAG_member ] [bTop] [line 59, size 32, align 32, offset 64] [from int]
!353 = metadata !{i32 786445, metadata !348, metadata !347, metadata !"bX", i32 60, i64 32, i64 32, i64 96, i32 0, metadata !183} ; [ DW_TAG_member ] [bX] [line 60, size 32, align 32, offset 96] [from int]
!354 = metadata !{i32 786445, metadata !348, metadata !347, metadata !"bV", i32 61, i64 32, i64 32, i64 128, i32 0, metadata !183} ; [ DW_TAG_member ] [bV] [line 61, size 32, align 32, offset 128] [from int]
!355 = metadata !{i32 786445, metadata !348, metadata !347, metadata !"bF", i32 62, i64 32, i64 32, i64 160, i32 0, metadata !183} ; [ DW_TAG_member ] [bF] [line 62, size 32, align 32, offset 160] [from int]
!356 = metadata !{i32 786445, metadata !348, metadata !347, metadata !"natoms", i32 64, i64 32, i64 32, i64 192, i32 0, metadata !183} ; [ DW_TAG_member ] [natoms] [line 64, size 32, align 32, offset 192] [from int]
!357 = metadata !{i32 786445, metadata !348, metadata !347, metadata !"step", i32 65, i64 32, i64 32, i64 224, i32 0, metadata !183} ; [ DW_TAG_member ] [step] [line 65, size 32, align 32, offset 224] [from int]
!358 = metadata !{i32 786445, metadata !348, metadata !347, metadata !"t", i32 66, i64 32, i64 32, i64 256, i32 0, metadata !209} ; [ DW_TAG_member ] [t] [line 66, size 32, align 32, offset 256] [from real]
!359 = metadata !{i32 786445, metadata !348, metadata !347, metadata !"lambda", i32 67, i64 32, i64 32, i64 288, i32 0, metadata !209} ; [ DW_TAG_member ] [lambda] [line 67, size 32, align 32, offset 288] [from real]
!360 = metadata !{metadata !361, metadata !362, metadata !363}
!361 = metadata !{i32 786689, metadata !342, metadata !"fn", metadata !180, i32 16778084, metadata !184, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 868]
!362 = metadata !{i32 786689, metadata !342, metadata !"tpx", metadata !180, i32 33555300, metadata !345, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tpx] [line 868]
!363 = metadata !{i32 786688, metadata !342, metadata !"fp", metadata !180, i32 870, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 870]
!364 = metadata !{i32 786478, metadata !1, metadata !180, metadata !"write_tpx", metadata !"write_tpx", metadata !"", i32 877, metadata !365, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32, float, float, %struct.t_inputrec*, [3 x float]*, i32, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_topology*)* @write_tpx, null, null, metadata !601, i32 880} ; [ DW_TAG_subprogram ] [line 877] [def] [scope 880] [write_tpx]
!365 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !366, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!366 = metadata !{null, metadata !184, metadata !183, metadata !209, metadata !209, metadata !367, metadata !468, metadata !183, metadata !468, metadata !468, metadata !468, metadata !485}
!367 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !368} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_inputrec]
!368 = metadata !{i32 786454, metadata !1, null, metadata !"t_inputrec", i32 143, i64 0, i64 0, i64 0, i32 0, metadata !369} ; [ DW_TAG_typedef ] [t_inputrec] [line 143, size 0, align 0, offset 0] [from ]
!369 = metadata !{i32 786451, metadata !370, null, metadata !"", i32 55, i64 4736, i64 64, i32 0, i32 0, null, metadata !371, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 55, size 4736, align 64, offset 0] [from ]
!370 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/inputrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!371 = metadata !{metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403, metadata !407, metadata !408, metadata !409, metadata !410, metadata !411, metadata !412, metadata !413, metadata !414, metadata !415, metadata !416, metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437, metadata !438, metadata !439, metadata !440, metadata !441, metadata !442, metadata !443, metadata !444, metadata !445, metadata !446, metadata !447, metadata !448, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !454, metadata !455, metadata !476, metadata !484}
!372 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"eI", i32 56, i64 32, i64 32, i64 0, i32 0, metadata !183} ; [ DW_TAG_member ] [eI] [line 56, size 32, align 32, offset 0] [from int]
!373 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"nsteps", i32 57, i64 32, i64 32, i64 32, i32 0, metadata !183} ; [ DW_TAG_member ] [nsteps] [line 57, size 32, align 32, offset 32] [from int]
!374 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"ns_type", i32 58, i64 32, i64 32, i64 64, i32 0, metadata !183} ; [ DW_TAG_member ] [ns_type] [line 58, size 32, align 32, offset 64] [from int]
!375 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"nstlist", i32 59, i64 32, i64 32, i64 96, i32 0, metadata !183} ; [ DW_TAG_member ] [nstlist] [line 59, size 32, align 32, offset 96] [from int]
!376 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"ndelta", i32 60, i64 32, i64 32, i64 128, i32 0, metadata !183} ; [ DW_TAG_member ] [ndelta] [line 60, size 32, align 32, offset 128] [from int]
!377 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"bDomDecomp", i32 61, i64 32, i64 32, i64 160, i32 0, metadata !183} ; [ DW_TAG_member ] [bDomDecomp] [line 61, size 32, align 32, offset 160] [from int]
!378 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"decomp_dir", i32 62, i64 32, i64 32, i64 192, i32 0, metadata !183} ; [ DW_TAG_member ] [decomp_dir] [line 62, size 32, align 32, offset 192] [from int]
!379 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"nstcomm", i32 63, i64 32, i64 32, i64 224, i32 0, metadata !183} ; [ DW_TAG_member ] [nstcomm] [line 63, size 32, align 32, offset 224] [from int]
!380 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"nstlog", i32 65, i64 32, i64 32, i64 256, i32 0, metadata !183} ; [ DW_TAG_member ] [nstlog] [line 65, size 32, align 32, offset 256] [from int]
!381 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"nstxout", i32 66, i64 32, i64 32, i64 288, i32 0, metadata !183} ; [ DW_TAG_member ] [nstxout] [line 66, size 32, align 32, offset 288] [from int]
!382 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"nstvout", i32 67, i64 32, i64 32, i64 320, i32 0, metadata !183} ; [ DW_TAG_member ] [nstvout] [line 67, size 32, align 32, offset 320] [from int]
!383 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"nstfout", i32 68, i64 32, i64 32, i64 352, i32 0, metadata !183} ; [ DW_TAG_member ] [nstfout] [line 68, size 32, align 32, offset 352] [from int]
!384 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"nstenergy", i32 69, i64 32, i64 32, i64 384, i32 0, metadata !183} ; [ DW_TAG_member ] [nstenergy] [line 69, size 32, align 32, offset 384] [from int]
!385 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"nstxtcout", i32 70, i64 32, i64 32, i64 416, i32 0, metadata !183} ; [ DW_TAG_member ] [nstxtcout] [line 70, size 32, align 32, offset 416] [from int]
!386 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"init_t", i32 71, i64 32, i64 32, i64 448, i32 0, metadata !209} ; [ DW_TAG_member ] [init_t] [line 71, size 32, align 32, offset 448] [from real]
!387 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"delta_t", i32 72, i64 32, i64 32, i64 480, i32 0, metadata !209} ; [ DW_TAG_member ] [delta_t] [line 72, size 32, align 32, offset 480] [from real]
!388 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"xtcprec", i32 73, i64 32, i64 32, i64 512, i32 0, metadata !209} ; [ DW_TAG_member ] [xtcprec] [line 73, size 32, align 32, offset 512] [from real]
!389 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"nkx", i32 74, i64 32, i64 32, i64 544, i32 0, metadata !183} ; [ DW_TAG_member ] [nkx] [line 74, size 32, align 32, offset 544] [from int]
!390 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"nky", i32 74, i64 32, i64 32, i64 576, i32 0, metadata !183} ; [ DW_TAG_member ] [nky] [line 74, size 32, align 32, offset 576] [from int]
!391 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"nkz", i32 74, i64 32, i64 32, i64 608, i32 0, metadata !183} ; [ DW_TAG_member ] [nkz] [line 74, size 32, align 32, offset 608] [from int]
!392 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"pme_order", i32 76, i64 32, i64 32, i64 640, i32 0, metadata !183} ; [ DW_TAG_member ] [pme_order] [line 76, size 32, align 32, offset 640] [from int]
!393 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"ewald_rtol", i32 77, i64 32, i64 32, i64 672, i32 0, metadata !209} ; [ DW_TAG_member ] [ewald_rtol] [line 77, size 32, align 32, offset 672] [from real]
!394 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"ewald_geometry", i32 79, i64 32, i64 32, i64 704, i32 0, metadata !183} ; [ DW_TAG_member ] [ewald_geometry] [line 79, size 32, align 32, offset 704] [from int]
!395 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"epsilon_surface", i32 80, i64 32, i64 32, i64 736, i32 0, metadata !183} ; [ DW_TAG_member ] [epsilon_surface] [line 80, size 32, align 32, offset 736] [from int]
!396 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"bOptFFT", i32 81, i64 32, i64 32, i64 768, i32 0, metadata !183} ; [ DW_TAG_member ] [bOptFFT] [line 81, size 32, align 32, offset 768] [from int]
!397 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"ePBC", i32 82, i64 32, i64 32, i64 800, i32 0, metadata !183} ; [ DW_TAG_member ] [ePBC] [line 82, size 32, align 32, offset 800] [from int]
!398 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"bUncStart", i32 83, i64 32, i64 32, i64 832, i32 0, metadata !183} ; [ DW_TAG_member ] [bUncStart] [line 83, size 32, align 32, offset 832] [from int]
!399 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"etc", i32 84, i64 32, i64 32, i64 864, i32 0, metadata !183} ; [ DW_TAG_member ] [etc] [line 84, size 32, align 32, offset 864] [from int]
!400 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"epc", i32 85, i64 32, i64 32, i64 896, i32 0, metadata !183} ; [ DW_TAG_member ] [epc] [line 85, size 32, align 32, offset 896] [from int]
!401 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"epct", i32 86, i64 32, i64 32, i64 928, i32 0, metadata !183} ; [ DW_TAG_member ] [epct] [line 86, size 32, align 32, offset 928] [from int]
!402 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"tau_p", i32 87, i64 32, i64 32, i64 960, i32 0, metadata !209} ; [ DW_TAG_member ] [tau_p] [line 87, size 32, align 32, offset 960] [from real]
!403 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"ref_p", i32 88, i64 288, i64 32, i64 992, i32 0, metadata !404} ; [ DW_TAG_member ] [ref_p] [line 88, size 288, align 32, offset 992] [from tensor]
!404 = metadata !{i32 786454, metadata !370, null, metadata !"tensor", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !405} ; [ DW_TAG_typedef ] [tensor] [line 105, size 0, align 0, offset 0] [from ]
!405 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !209, metadata !406, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from real]
!406 = metadata !{metadata !277, metadata !277}
!407 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"compress", i32 89, i64 288, i64 32, i64 1280, i32 0, metadata !404} ; [ DW_TAG_member ] [compress] [line 89, size 288, align 32, offset 1280] [from tensor]
!408 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"bSimAnn", i32 90, i64 32, i64 32, i64 1568, i32 0, metadata !183} ; [ DW_TAG_member ] [bSimAnn] [line 90, size 32, align 32, offset 1568] [from int]
!409 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"zero_temp_time", i32 91, i64 32, i64 32, i64 1600, i32 0, metadata !209} ; [ DW_TAG_member ] [zero_temp_time] [line 91, size 32, align 32, offset 1600] [from real]
!410 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"rlist", i32 92, i64 32, i64 32, i64 1632, i32 0, metadata !209} ; [ DW_TAG_member ] [rlist] [line 92, size 32, align 32, offset 1632] [from real]
!411 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"coulombtype", i32 93, i64 32, i64 32, i64 1664, i32 0, metadata !183} ; [ DW_TAG_member ] [coulombtype] [line 93, size 32, align 32, offset 1664] [from int]
!412 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"rcoulomb_switch", i32 94, i64 32, i64 32, i64 1696, i32 0, metadata !209} ; [ DW_TAG_member ] [rcoulomb_switch] [line 94, size 32, align 32, offset 1696] [from real]
!413 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"rcoulomb", i32 95, i64 32, i64 32, i64 1728, i32 0, metadata !209} ; [ DW_TAG_member ] [rcoulomb] [line 95, size 32, align 32, offset 1728] [from real]
!414 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"vdwtype", i32 96, i64 32, i64 32, i64 1760, i32 0, metadata !183} ; [ DW_TAG_member ] [vdwtype] [line 96, size 32, align 32, offset 1760] [from int]
!415 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"rvdw_switch", i32 97, i64 32, i64 32, i64 1792, i32 0, metadata !209} ; [ DW_TAG_member ] [rvdw_switch] [line 97, size 32, align 32, offset 1792] [from real]
!416 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"rvdw", i32 98, i64 32, i64 32, i64 1824, i32 0, metadata !209} ; [ DW_TAG_member ] [rvdw] [line 98, size 32, align 32, offset 1824] [from real]
!417 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"epsilon_r", i32 99, i64 32, i64 32, i64 1856, i32 0, metadata !209} ; [ DW_TAG_member ] [epsilon_r] [line 99, size 32, align 32, offset 1856] [from real]
!418 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"eDispCorr", i32 100, i64 32, i64 32, i64 1888, i32 0, metadata !183} ; [ DW_TAG_member ] [eDispCorr] [line 100, size 32, align 32, offset 1888] [from int]
!419 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"shake_tol", i32 101, i64 32, i64 32, i64 1920, i32 0, metadata !209} ; [ DW_TAG_member ] [shake_tol] [line 101, size 32, align 32, offset 1920] [from real]
!420 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"fudgeQQ", i32 102, i64 32, i64 32, i64 1952, i32 0, metadata !209} ; [ DW_TAG_member ] [fudgeQQ] [line 102, size 32, align 32, offset 1952] [from real]
!421 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"efep", i32 103, i64 32, i64 32, i64 1984, i32 0, metadata !183} ; [ DW_TAG_member ] [efep] [line 103, size 32, align 32, offset 1984] [from int]
!422 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"init_lambda", i32 104, i64 32, i64 32, i64 2016, i32 0, metadata !209} ; [ DW_TAG_member ] [init_lambda] [line 104, size 32, align 32, offset 2016] [from real]
!423 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"delta_lambda", i32 105, i64 32, i64 32, i64 2048, i32 0, metadata !209} ; [ DW_TAG_member ] [delta_lambda] [line 105, size 32, align 32, offset 2048] [from real]
!424 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"sc_alpha", i32 106, i64 32, i64 32, i64 2080, i32 0, metadata !209} ; [ DW_TAG_member ] [sc_alpha] [line 106, size 32, align 32, offset 2080] [from real]
!425 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"sc_sigma", i32 107, i64 32, i64 32, i64 2112, i32 0, metadata !209} ; [ DW_TAG_member ] [sc_sigma] [line 107, size 32, align 32, offset 2112] [from real]
!426 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"dr_fc", i32 108, i64 32, i64 32, i64 2144, i32 0, metadata !209} ; [ DW_TAG_member ] [dr_fc] [line 108, size 32, align 32, offset 2144] [from real]
!427 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"eDisreWeighting", i32 109, i64 32, i64 32, i64 2176, i32 0, metadata !183} ; [ DW_TAG_member ] [eDisreWeighting] [line 109, size 32, align 32, offset 2176] [from int]
!428 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"bDisreMixed", i32 110, i64 32, i64 32, i64 2208, i32 0, metadata !183} ; [ DW_TAG_member ] [bDisreMixed] [line 110, size 32, align 32, offset 2208] [from int]
!429 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"nstdisreout", i32 111, i64 32, i64 32, i64 2240, i32 0, metadata !183} ; [ DW_TAG_member ] [nstdisreout] [line 111, size 32, align 32, offset 2240] [from int]
!430 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"dr_tau", i32 112, i64 32, i64 32, i64 2272, i32 0, metadata !209} ; [ DW_TAG_member ] [dr_tau] [line 112, size 32, align 32, offset 2272] [from real]
!431 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"orires_fc", i32 113, i64 32, i64 32, i64 2304, i32 0, metadata !209} ; [ DW_TAG_member ] [orires_fc] [line 113, size 32, align 32, offset 2304] [from real]
!432 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"orires_tau", i32 114, i64 32, i64 32, i64 2336, i32 0, metadata !209} ; [ DW_TAG_member ] [orires_tau] [line 114, size 32, align 32, offset 2336] [from real]
!433 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"nstorireout", i32 115, i64 32, i64 32, i64 2368, i32 0, metadata !183} ; [ DW_TAG_member ] [nstorireout] [line 115, size 32, align 32, offset 2368] [from int]
!434 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"em_stepsize", i32 116, i64 32, i64 32, i64 2400, i32 0, metadata !209} ; [ DW_TAG_member ] [em_stepsize] [line 116, size 32, align 32, offset 2400] [from real]
!435 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"em_tol", i32 117, i64 32, i64 32, i64 2432, i32 0, metadata !209} ; [ DW_TAG_member ] [em_tol] [line 117, size 32, align 32, offset 2432] [from real]
!436 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"niter", i32 118, i64 32, i64 32, i64 2464, i32 0, metadata !183} ; [ DW_TAG_member ] [niter] [line 118, size 32, align 32, offset 2464] [from int]
!437 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"fc_stepsize", i32 120, i64 32, i64 32, i64 2496, i32 0, metadata !183} ; [ DW_TAG_member ] [fc_stepsize] [line 120, size 32, align 32, offset 2496] [from int]
!438 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"nstcgsteep", i32 122, i64 32, i64 32, i64 2528, i32 0, metadata !183} ; [ DW_TAG_member ] [nstcgsteep] [line 122, size 32, align 32, offset 2528] [from int]
!439 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"eConstrAlg", i32 124, i64 32, i64 32, i64 2560, i32 0, metadata !183} ; [ DW_TAG_member ] [eConstrAlg] [line 124, size 32, align 32, offset 2560] [from int]
!440 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"nProjOrder", i32 125, i64 32, i64 32, i64 2592, i32 0, metadata !183} ; [ DW_TAG_member ] [nProjOrder] [line 125, size 32, align 32, offset 2592] [from int]
!441 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"LincsWarnAngle", i32 126, i64 32, i64 32, i64 2624, i32 0, metadata !209} ; [ DW_TAG_member ] [LincsWarnAngle] [line 126, size 32, align 32, offset 2624] [from real]
!442 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"bShakeSOR", i32 127, i64 32, i64 32, i64 2656, i32 0, metadata !183} ; [ DW_TAG_member ] [bShakeSOR] [line 127, size 32, align 32, offset 2656] [from int]
!443 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"bd_temp", i32 128, i64 32, i64 32, i64 2688, i32 0, metadata !209} ; [ DW_TAG_member ] [bd_temp] [line 128, size 32, align 32, offset 2688] [from real]
!444 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"bd_fric", i32 129, i64 32, i64 32, i64 2720, i32 0, metadata !209} ; [ DW_TAG_member ] [bd_fric] [line 129, size 32, align 32, offset 2720] [from real]
!445 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"ld_seed", i32 130, i64 32, i64 32, i64 2752, i32 0, metadata !183} ; [ DW_TAG_member ] [ld_seed] [line 130, size 32, align 32, offset 2752] [from int]
!446 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"cos_accel", i32 131, i64 32, i64 32, i64 2784, i32 0, metadata !209} ; [ DW_TAG_member ] [cos_accel] [line 131, size 32, align 32, offset 2784] [from real]
!447 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"userint1", i32 132, i64 32, i64 32, i64 2816, i32 0, metadata !183} ; [ DW_TAG_member ] [userint1] [line 132, size 32, align 32, offset 2816] [from int]
!448 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"userint2", i32 133, i64 32, i64 32, i64 2848, i32 0, metadata !183} ; [ DW_TAG_member ] [userint2] [line 133, size 32, align 32, offset 2848] [from int]
!449 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"userint3", i32 134, i64 32, i64 32, i64 2880, i32 0, metadata !183} ; [ DW_TAG_member ] [userint3] [line 134, size 32, align 32, offset 2880] [from int]
!450 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"userint4", i32 135, i64 32, i64 32, i64 2912, i32 0, metadata !183} ; [ DW_TAG_member ] [userint4] [line 135, size 32, align 32, offset 2912] [from int]
!451 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"userreal1", i32 136, i64 32, i64 32, i64 2944, i32 0, metadata !209} ; [ DW_TAG_member ] [userreal1] [line 136, size 32, align 32, offset 2944] [from real]
!452 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"userreal2", i32 137, i64 32, i64 32, i64 2976, i32 0, metadata !209} ; [ DW_TAG_member ] [userreal2] [line 137, size 32, align 32, offset 2976] [from real]
!453 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"userreal3", i32 138, i64 32, i64 32, i64 3008, i32 0, metadata !209} ; [ DW_TAG_member ] [userreal3] [line 138, size 32, align 32, offset 3008] [from real]
!454 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"userreal4", i32 139, i64 32, i64 32, i64 3040, i32 0, metadata !209} ; [ DW_TAG_member ] [userreal4] [line 139, size 32, align 32, offset 3040] [from real]
!455 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"opts", i32 140, i64 512, i64 64, i64 3072, i32 0, metadata !456} ; [ DW_TAG_member ] [opts] [line 140, size 512, align 64, offset 3072] [from t_grpopts]
!456 = metadata !{i32 786454, metadata !370, null, metadata !"t_grpopts", i32 53, i64 0, i64 0, i64 0, i32 0, metadata !457} ; [ DW_TAG_typedef ] [t_grpopts] [line 53, size 0, align 0, offset 0] [from ]
!457 = metadata !{i32 786451, metadata !370, null, metadata !"", i32 42, i64 512, i64 64, i32 0, i32 0, null, metadata !458, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 42, size 512, align 64, offset 0] [from ]
!458 = metadata !{metadata !459, metadata !460, metadata !461, metadata !462, metadata !463, metadata !465, metadata !466, metadata !467, metadata !470, metadata !474}
!459 = metadata !{i32 786445, metadata !370, metadata !457, metadata !"ngtc", i32 43, i64 32, i64 32, i64 0, i32 0, metadata !183} ; [ DW_TAG_member ] [ngtc] [line 43, size 32, align 32, offset 0] [from int]
!460 = metadata !{i32 786445, metadata !370, metadata !457, metadata !"ngacc", i32 44, i64 32, i64 32, i64 32, i32 0, metadata !183} ; [ DW_TAG_member ] [ngacc] [line 44, size 32, align 32, offset 32] [from int]
!461 = metadata !{i32 786445, metadata !370, metadata !457, metadata !"ngfrz", i32 45, i64 32, i64 32, i64 64, i32 0, metadata !183} ; [ DW_TAG_member ] [ngfrz] [line 45, size 32, align 32, offset 64] [from int]
!462 = metadata !{i32 786445, metadata !370, metadata !457, metadata !"ngener", i32 46, i64 32, i64 32, i64 96, i32 0, metadata !183} ; [ DW_TAG_member ] [ngener] [line 46, size 32, align 32, offset 96] [from int]
!463 = metadata !{i32 786445, metadata !370, metadata !457, metadata !"nrdf", i32 47, i64 64, i64 64, i64 128, i32 0, metadata !464} ; [ DW_TAG_member ] [nrdf] [line 47, size 64, align 64, offset 128] [from ]
!464 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !209} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!465 = metadata !{i32 786445, metadata !370, metadata !457, metadata !"ref_t", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !464} ; [ DW_TAG_member ] [ref_t] [line 48, size 64, align 64, offset 192] [from ]
!466 = metadata !{i32 786445, metadata !370, metadata !457, metadata !"tau_t", i32 49, i64 64, i64 64, i64 256, i32 0, metadata !464} ; [ DW_TAG_member ] [tau_t] [line 49, size 64, align 64, offset 256] [from ]
!467 = metadata !{i32 786445, metadata !370, metadata !457, metadata !"acc", i32 50, i64 64, i64 64, i64 320, i32 0, metadata !468} ; [ DW_TAG_member ] [acc] [line 50, size 64, align 64, offset 320] [from ]
!468 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !469} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!469 = metadata !{i32 786454, metadata !370, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !275} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!470 = metadata !{i32 786445, metadata !370, metadata !457, metadata !"nFreeze", i32 51, i64 64, i64 64, i64 384, i32 0, metadata !471} ; [ DW_TAG_member ] [nFreeze] [line 51, size 64, align 64, offset 384] [from ]
!471 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !472} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ivec]
!472 = metadata !{i32 786454, metadata !370, null, metadata !"ivec", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !473} ; [ DW_TAG_typedef ] [ivec] [line 107, size 0, align 0, offset 0] [from ]
!473 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !183, metadata !276, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!474 = metadata !{i32 786445, metadata !370, metadata !457, metadata !"eg_excl", i32 52, i64 64, i64 64, i64 448, i32 0, metadata !475} ; [ DW_TAG_member ] [eg_excl] [line 52, size 64, align 64, offset 448] [from ]
!475 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !183} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!476 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"ex", i32 141, i64 576, i64 64, i64 3584, i32 0, metadata !477} ; [ DW_TAG_member ] [ex] [line 141, size 576, align 64, offset 3584] [from ]
!477 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 576, i64 64, i32 0, i32 0, metadata !478, metadata !276, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 576, align 64, offset 0] [from t_cosines]
!478 = metadata !{i32 786454, metadata !370, null, metadata !"t_cosines", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !479} ; [ DW_TAG_typedef ] [t_cosines] [line 40, size 0, align 0, offset 0] [from ]
!479 = metadata !{i32 786451, metadata !370, null, metadata !"", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !480, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 64, offset 0] [from ]
!480 = metadata !{metadata !481, metadata !482, metadata !483}
!481 = metadata !{i32 786445, metadata !370, metadata !479, metadata !"n", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !183} ; [ DW_TAG_member ] [n] [line 37, size 32, align 32, offset 0] [from int]
!482 = metadata !{i32 786445, metadata !370, metadata !479, metadata !"a", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !464} ; [ DW_TAG_member ] [a] [line 38, size 64, align 64, offset 64] [from ]
!483 = metadata !{i32 786445, metadata !370, metadata !479, metadata !"phi", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !464} ; [ DW_TAG_member ] [phi] [line 39, size 64, align 64, offset 128] [from ]
!484 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"et", i32 142, i64 576, i64 64, i64 4160, i32 0, metadata !477} ; [ DW_TAG_member ] [et] [line 142, size 576, align 64, offset 4160] [from ]
!485 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !486} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_topology]
!486 = metadata !{i32 786454, metadata !1, null, metadata !"t_topology", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !487} ; [ DW_TAG_typedef ] [t_topology] [line 42, size 0, align 0, offset 0] [from ]
!487 = metadata !{i32 786451, metadata !488, null, metadata !"", i32 36, i64 402112, i64 64, i32 0, i32 0, null, metadata !489, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 402112, align 64, offset 0] [from ]
!488 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/topology.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!489 = metadata !{metadata !490, metadata !492, metadata !518, metadata !584, metadata !586}
!490 = metadata !{i32 786445, metadata !488, metadata !487, metadata !"name", i32 37, i64 64, i64 64, i64 0, i32 0, metadata !491} ; [ DW_TAG_member ] [name] [line 37, size 64, align 64, offset 0] [from ]
!491 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !184} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!492 = metadata !{i32 786445, metadata !488, metadata !487, metadata !"idef", i32 38, i64 366336, i64 64, i64 64, i32 0, metadata !493} ; [ DW_TAG_member ] [idef] [line 38, size 366336, align 64, offset 64] [from t_idef]
!493 = metadata !{i32 786454, metadata !488, null, metadata !"t_idef", i32 188, i64 0, i64 0, i64 0, i32 0, metadata !494} ; [ DW_TAG_typedef ] [t_idef] [line 188, size 0, align 0, offset 0] [from ]
!494 = metadata !{i32 786451, metadata !83, null, metadata !"", i32 179, i64 366336, i64 64, i32 0, i32 0, null, metadata !495, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 179, size 366336, align 64, offset 0] [from ]
!495 = metadata !{metadata !496, metadata !497, metadata !498, metadata !499, metadata !501, metadata !502}
!496 = metadata !{i32 786445, metadata !83, metadata !494, metadata !"ntypes", i32 181, i64 32, i64 32, i64 0, i32 0, metadata !183} ; [ DW_TAG_member ] [ntypes] [line 181, size 32, align 32, offset 0] [from int]
!497 = metadata !{i32 786445, metadata !83, metadata !494, metadata !"nodeid", i32 182, i64 32, i64 32, i64 32, i32 0, metadata !183} ; [ DW_TAG_member ] [nodeid] [line 182, size 32, align 32, offset 32] [from int]
!498 = metadata !{i32 786445, metadata !83, metadata !494, metadata !"atnr", i32 183, i64 32, i64 32, i64 64, i32 0, metadata !183} ; [ DW_TAG_member ] [atnr] [line 183, size 32, align 32, offset 64] [from int]
!499 = metadata !{i32 786445, metadata !83, metadata !494, metadata !"functype", i32 184, i64 64, i64 64, i64 128, i32 0, metadata !500} ; [ DW_TAG_member ] [functype] [line 184, size 64, align 64, offset 128] [from ]
!500 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !200} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_functype]
!501 = metadata !{i32 786445, metadata !83, metadata !494, metadata !"iparams", i32 185, i64 64, i64 64, i64 192, i32 0, metadata !201} ; [ DW_TAG_member ] [iparams] [line 185, size 64, align 64, offset 192] [from ]
!502 = metadata !{i32 786445, metadata !83, metadata !494, metadata !"il", i32 187, i64 366080, i64 64, i64 256, i32 0, metadata !503} ; [ DW_TAG_member ] [il] [line 187, size 366080, align 64, offset 256] [from ]
!503 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 366080, i64 64, i32 0, i32 0, metadata !504, metadata !516, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 366080, align 64, offset 0] [from t_ilist]
!504 = metadata !{i32 786454, metadata !83, null, metadata !"t_ilist", i32 140, i64 0, i64 0, i64 0, i32 0, metadata !505} ; [ DW_TAG_typedef ] [t_ilist] [line 140, size 0, align 0, offset 0] [from ]
!505 = metadata !{i32 786451, metadata !83, null, metadata !"", i32 135, i64 8320, i64 64, i32 0, i32 0, null, metadata !506, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 135, size 8320, align 64, offset 0] [from ]
!506 = metadata !{metadata !507, metadata !508, metadata !512}
!507 = metadata !{i32 786445, metadata !83, metadata !505, metadata !"nr", i32 137, i64 32, i64 32, i64 0, i32 0, metadata !183} ; [ DW_TAG_member ] [nr] [line 137, size 32, align 32, offset 0] [from int]
!508 = metadata !{i32 786445, metadata !83, metadata !505, metadata !"multinr", i32 138, i64 8192, i64 32, i64 32, i32 0, metadata !509} ; [ DW_TAG_member ] [multinr] [line 138, size 8192, align 32, offset 32] [from ]
!509 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !183, metadata !510, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!510 = metadata !{metadata !511}
!511 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!512 = metadata !{i32 786445, metadata !83, metadata !505, metadata !"iatoms", i32 139, i64 64, i64 64, i64 8256, i32 0, metadata !513} ; [ DW_TAG_member ] [iatoms] [line 139, size 64, align 64, offset 8256] [from ]
!513 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !514} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iatom]
!514 = metadata !{i32 786454, metadata !83, null, metadata !"t_iatom", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !515} ; [ DW_TAG_typedef ] [t_iatom] [line 45, size 0, align 0, offset 0] [from atom_id]
!515 = metadata !{i32 786454, metadata !83, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !183} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!516 = metadata !{metadata !517}
!517 = metadata !{i32 786465, i64 0, i64 44}      ; [ DW_TAG_subrange_type ] [0, 43]
!518 = metadata !{i32 786445, metadata !488, metadata !487, metadata !"atoms", i32 39, i64 10240, i64 64, i64 366400, i32 0, metadata !519} ; [ DW_TAG_member ] [atoms] [line 39, size 10240, align 64, offset 366400] [from t_atoms]
!519 = metadata !{i32 786454, metadata !488, null, metadata !"t_atoms", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !520} ; [ DW_TAG_typedef ] [t_atoms] [line 94, size 0, align 0, offset 0] [from ]
!520 = metadata !{i32 786451, metadata !131, null, metadata !"", i32 75, i64 10240, i64 64, i32 0, i32 0, null, metadata !521, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 75, size 10240, align 64, offset 0] [from ]
!521 = metadata !{metadata !522, metadata !523, metadata !543, metadata !545, metadata !546, metadata !547, metadata !548, metadata !549, metadata !550, metadata !551, metadata !562, metadata !569}
!522 = metadata !{i32 786445, metadata !131, metadata !520, metadata !"nr", i32 76, i64 32, i64 32, i64 0, i32 0, metadata !183} ; [ DW_TAG_member ] [nr] [line 76, size 32, align 32, offset 0] [from int]
!523 = metadata !{i32 786445, metadata !131, metadata !520, metadata !"atom", i32 77, i64 64, i64 64, i64 64, i32 0, metadata !524} ; [ DW_TAG_member ] [atom] [line 77, size 64, align 64, offset 64] [from ]
!524 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !525} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atom]
!525 = metadata !{i32 786454, metadata !131, null, metadata !"t_atom", i32 57, i64 0, i64 0, i64 0, i32 0, metadata !526} ; [ DW_TAG_typedef ] [t_atom] [line 57, size 0, align 0, offset 0] [from ]
!526 = metadata !{i32 786451, metadata !131, null, metadata !"", i32 48, i64 320, i64 32, i32 0, i32 0, null, metadata !527, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 320, align 32, offset 0] [from ]
!527 = metadata !{metadata !528, metadata !529, metadata !530, metadata !531, metadata !532, metadata !534, metadata !535, metadata !536, metadata !537, metadata !542}
!528 = metadata !{i32 786445, metadata !131, metadata !526, metadata !"m", i32 49, i64 32, i64 32, i64 0, i32 0, metadata !209} ; [ DW_TAG_member ] [m] [line 49, size 32, align 32, offset 0] [from real]
!529 = metadata !{i32 786445, metadata !131, metadata !526, metadata !"q", i32 49, i64 32, i64 32, i64 32, i32 0, metadata !209} ; [ DW_TAG_member ] [q] [line 49, size 32, align 32, offset 32] [from real]
!530 = metadata !{i32 786445, metadata !131, metadata !526, metadata !"mB", i32 50, i64 32, i64 32, i64 64, i32 0, metadata !209} ; [ DW_TAG_member ] [mB] [line 50, size 32, align 32, offset 64] [from real]
!531 = metadata !{i32 786445, metadata !131, metadata !526, metadata !"qB", i32 50, i64 32, i64 32, i64 96, i32 0, metadata !209} ; [ DW_TAG_member ] [qB] [line 50, size 32, align 32, offset 96] [from real]
!532 = metadata !{i32 786445, metadata !131, metadata !526, metadata !"type", i32 51, i64 16, i64 16, i64 128, i32 0, metadata !533} ; [ DW_TAG_member ] [type] [line 51, size 16, align 16, offset 128] [from unsigned short]
!533 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!534 = metadata !{i32 786445, metadata !131, metadata !526, metadata !"typeB", i32 52, i64 16, i64 16, i64 144, i32 0, metadata !533} ; [ DW_TAG_member ] [typeB] [line 52, size 16, align 16, offset 144] [from unsigned short]
!535 = metadata !{i32 786445, metadata !131, metadata !526, metadata !"ptype", i32 53, i64 32, i64 32, i64 160, i32 0, metadata !183} ; [ DW_TAG_member ] [ptype] [line 53, size 32, align 32, offset 160] [from int]
!536 = metadata !{i32 786445, metadata !131, metadata !526, metadata !"resnr", i32 54, i64 32, i64 32, i64 192, i32 0, metadata !183} ; [ DW_TAG_member ] [resnr] [line 54, size 32, align 32, offset 192] [from int]
!537 = metadata !{i32 786445, metadata !131, metadata !526, metadata !"grpnr", i32 55, i64 72, i64 8, i64 224, i32 0, metadata !538} ; [ DW_TAG_member ] [grpnr] [line 55, size 72, align 8, offset 224] [from ]
!538 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 72, i64 8, i32 0, i32 0, metadata !539, metadata !540, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 72, align 8, offset 0] [from unsigned char]
!539 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!540 = metadata !{metadata !541}
!541 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!542 = metadata !{i32 786445, metadata !131, metadata !526, metadata !"chain", i32 56, i64 8, i64 8, i64 296, i32 0, metadata !539} ; [ DW_TAG_member ] [chain] [line 56, size 8, align 8, offset 296] [from unsigned char]
!543 = metadata !{i32 786445, metadata !131, metadata !520, metadata !"atomname", i32 80, i64 64, i64 64, i64 128, i32 0, metadata !544} ; [ DW_TAG_member ] [atomname] [line 80, size 64, align 64, offset 128] [from ]
!544 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !491} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!545 = metadata !{i32 786445, metadata !131, metadata !520, metadata !"atomtype", i32 82, i64 64, i64 64, i64 192, i32 0, metadata !544} ; [ DW_TAG_member ] [atomtype] [line 82, size 64, align 64, offset 192] [from ]
!546 = metadata !{i32 786445, metadata !131, metadata !520, metadata !"atomtypeB", i32 84, i64 64, i64 64, i64 256, i32 0, metadata !544} ; [ DW_TAG_member ] [atomtypeB] [line 84, size 64, align 64, offset 256] [from ]
!547 = metadata !{i32 786445, metadata !131, metadata !520, metadata !"nres", i32 86, i64 32, i64 32, i64 320, i32 0, metadata !183} ; [ DW_TAG_member ] [nres] [line 86, size 32, align 32, offset 320] [from int]
!548 = metadata !{i32 786445, metadata !131, metadata !520, metadata !"resname", i32 87, i64 64, i64 64, i64 384, i32 0, metadata !544} ; [ DW_TAG_member ] [resname] [line 87, size 64, align 64, offset 384] [from ]
!549 = metadata !{i32 786445, metadata !131, metadata !520, metadata !"ngrpname", i32 89, i64 32, i64 32, i64 448, i32 0, metadata !183} ; [ DW_TAG_member ] [ngrpname] [line 89, size 32, align 32, offset 448] [from int]
!550 = metadata !{i32 786445, metadata !131, metadata !520, metadata !"grpname", i32 90, i64 64, i64 64, i64 512, i32 0, metadata !544} ; [ DW_TAG_member ] [grpname] [line 90, size 64, align 64, offset 512] [from ]
!551 = metadata !{i32 786445, metadata !131, metadata !520, metadata !"excl", i32 91, i64 8448, i64 64, i64 576, i32 0, metadata !552} ; [ DW_TAG_member ] [excl] [line 91, size 8448, align 64, offset 576] [from t_block]
!552 = metadata !{i32 786454, metadata !131, null, metadata !"t_block", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !553} ; [ DW_TAG_typedef ] [t_block] [line 52, size 0, align 0, offset 0] [from ]
!553 = metadata !{i32 786451, metadata !554, null, metadata !"", i32 36, i64 8448, i64 64, i32 0, i32 0, null, metadata !555, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 8448, align 64, offset 0] [from ]
!554 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/block.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!555 = metadata !{metadata !556, metadata !557, metadata !558, metadata !560, metadata !561}
!556 = metadata !{i32 786445, metadata !554, metadata !553, metadata !"multinr", i32 37, i64 8192, i64 32, i64 0, i32 0, metadata !509} ; [ DW_TAG_member ] [multinr] [line 37, size 8192, align 32, offset 0] [from ]
!557 = metadata !{i32 786445, metadata !554, metadata !553, metadata !"nr", i32 43, i64 32, i64 32, i64 8192, i32 0, metadata !183} ; [ DW_TAG_member ] [nr] [line 43, size 32, align 32, offset 8192] [from int]
!558 = metadata !{i32 786445, metadata !554, metadata !553, metadata !"index", i32 44, i64 64, i64 64, i64 8256, i32 0, metadata !559} ; [ DW_TAG_member ] [index] [line 44, size 64, align 64, offset 8256] [from ]
!559 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !515} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!560 = metadata !{i32 786445, metadata !554, metadata !553, metadata !"nra", i32 45, i64 32, i64 32, i64 8320, i32 0, metadata !183} ; [ DW_TAG_member ] [nra] [line 45, size 32, align 32, offset 8320] [from int]
!561 = metadata !{i32 786445, metadata !554, metadata !553, metadata !"a", i32 46, i64 64, i64 64, i64 8384, i32 0, metadata !559} ; [ DW_TAG_member ] [a] [line 46, size 64, align 64, offset 8384] [from ]
!562 = metadata !{i32 786445, metadata !131, metadata !520, metadata !"grps", i32 92, i64 1152, i64 64, i64 9024, i32 0, metadata !563} ; [ DW_TAG_member ] [grps] [line 92, size 1152, align 64, offset 9024] [from ]
!563 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 64, i32 0, i32 0, metadata !564, metadata !540, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1152, align 64, offset 0] [from t_grps]
!564 = metadata !{i32 786454, metadata !131, null, metadata !"t_grps", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !565} ; [ DW_TAG_typedef ] [t_grps] [line 73, size 0, align 0, offset 0] [from ]
!565 = metadata !{i32 786451, metadata !131, null, metadata !"", i32 70, i64 128, i64 64, i32 0, i32 0, null, metadata !566, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 70, size 128, align 64, offset 0] [from ]
!566 = metadata !{metadata !567, metadata !568}
!567 = metadata !{i32 786445, metadata !131, metadata !565, metadata !"nr", i32 71, i64 32, i64 32, i64 0, i32 0, metadata !183} ; [ DW_TAG_member ] [nr] [line 71, size 32, align 32, offset 0] [from int]
!568 = metadata !{i32 786445, metadata !131, metadata !565, metadata !"nm_ind", i32 72, i64 64, i64 64, i64 64, i32 0, metadata !475} ; [ DW_TAG_member ] [nm_ind] [line 72, size 64, align 64, offset 64] [from ]
!569 = metadata !{i32 786445, metadata !131, metadata !520, metadata !"pdbinfo", i32 93, i64 64, i64 64, i64 10176, i32 0, metadata !570} ; [ DW_TAG_member ] [pdbinfo] [line 93, size 64, align 64, offset 10176] [from ]
!570 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !571} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_pdbinfo]
!571 = metadata !{i32 786454, metadata !131, null, metadata !"t_pdbinfo", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !572} ; [ DW_TAG_typedef ] [t_pdbinfo] [line 68, size 0, align 0, offset 0] [from ]
!572 = metadata !{i32 786451, metadata !131, null, metadata !"", i32 59, i64 416, i64 32, i32 0, i32 0, null, metadata !573, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 59, size 416, align 32, offset 0] [from ]
!573 = metadata !{metadata !574, metadata !575, metadata !576, metadata !577, metadata !579, metadata !580, metadata !581, metadata !582}
!574 = metadata !{i32 786445, metadata !131, metadata !572, metadata !"type", i32 60, i64 32, i64 32, i64 0, i32 0, metadata !183} ; [ DW_TAG_member ] [type] [line 60, size 32, align 32, offset 0] [from int]
!575 = metadata !{i32 786445, metadata !131, metadata !572, metadata !"atomnr", i32 61, i64 32, i64 32, i64 32, i32 0, metadata !183} ; [ DW_TAG_member ] [atomnr] [line 61, size 32, align 32, offset 32] [from int]
!576 = metadata !{i32 786445, metadata !131, metadata !572, metadata !"altloc", i32 62, i64 8, i64 8, i64 64, i32 0, metadata !185} ; [ DW_TAG_member ] [altloc] [line 62, size 8, align 8, offset 64] [from char]
!577 = metadata !{i32 786445, metadata !131, metadata !572, metadata !"pdbresnr", i32 63, i64 48, i64 8, i64 72, i32 0, metadata !578} ; [ DW_TAG_member ] [pdbresnr] [line 63, size 48, align 8, offset 72] [from ]
!578 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 48, i64 8, i32 0, i32 0, metadata !185, metadata !284, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 48, align 8, offset 0] [from char]
!579 = metadata !{i32 786445, metadata !131, metadata !572, metadata !"occup", i32 64, i64 32, i64 32, i64 128, i32 0, metadata !209} ; [ DW_TAG_member ] [occup] [line 64, size 32, align 32, offset 128] [from real]
!580 = metadata !{i32 786445, metadata !131, metadata !572, metadata !"bfac", i32 65, i64 32, i64 32, i64 160, i32 0, metadata !209} ; [ DW_TAG_member ] [bfac] [line 65, size 32, align 32, offset 160] [from real]
!581 = metadata !{i32 786445, metadata !131, metadata !572, metadata !"bAnisotropic", i32 66, i64 32, i64 32, i64 192, i32 0, metadata !183} ; [ DW_TAG_member ] [bAnisotropic] [line 66, size 32, align 32, offset 192] [from int]
!582 = metadata !{i32 786445, metadata !131, metadata !572, metadata !"uij", i32 67, i64 192, i64 32, i64 224, i32 0, metadata !583} ; [ DW_TAG_member ] [uij] [line 67, size 192, align 32, offset 224] [from ]
!583 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !183, metadata !284, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!584 = metadata !{i32 786445, metadata !488, metadata !487, metadata !"blocks", i32 40, i64 25344, i64 64, i64 376640, i32 0, metadata !585} ; [ DW_TAG_member ] [blocks] [line 40, size 25344, align 64, offset 376640] [from ]
!585 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 25344, i64 64, i32 0, i32 0, metadata !552, metadata !276, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 25344, align 64, offset 0] [from t_block]
!586 = metadata !{i32 786445, metadata !488, metadata !487, metadata !"symtab", i32 41, i64 128, i64 64, i64 401984, i32 0, metadata !587} ; [ DW_TAG_member ] [symtab] [line 41, size 128, align 64, offset 401984] [from t_symtab]
!587 = metadata !{i32 786454, metadata !488, null, metadata !"t_symtab", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !588} ; [ DW_TAG_typedef ] [t_symtab] [line 46, size 0, align 0, offset 0] [from ]
!588 = metadata !{i32 786451, metadata !589, null, metadata !"", i32 42, i64 128, i64 64, i32 0, i32 0, null, metadata !590, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 42, size 128, align 64, offset 0] [from ]
!589 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/symtab.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!590 = metadata !{metadata !591, metadata !592}
!591 = metadata !{i32 786445, metadata !589, metadata !588, metadata !"nr", i32 44, i64 32, i64 32, i64 0, i32 0, metadata !183} ; [ DW_TAG_member ] [nr] [line 44, size 32, align 32, offset 0] [from int]
!592 = metadata !{i32 786445, metadata !589, metadata !588, metadata !"symbuf", i32 45, i64 64, i64 64, i64 64, i32 0, metadata !593} ; [ DW_TAG_member ] [symbuf] [line 45, size 64, align 64, offset 64] [from ]
!593 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !594} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_symbuf]
!594 = metadata !{i32 786454, metadata !589, null, metadata !"t_symbuf", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !595} ; [ DW_TAG_typedef ] [t_symbuf] [line 40, size 0, align 0, offset 0] [from symbuf]
!595 = metadata !{i32 786451, metadata !589, null, metadata !"symbuf", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !596, i32 0, null, null} ; [ DW_TAG_structure_type ] [symbuf] [line 36, size 192, align 64, offset 0] [from ]
!596 = metadata !{metadata !597, metadata !598, metadata !599}
!597 = metadata !{i32 786445, metadata !589, metadata !595, metadata !"bufsize", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !183} ; [ DW_TAG_member ] [bufsize] [line 37, size 32, align 32, offset 0] [from int]
!598 = metadata !{i32 786445, metadata !589, metadata !595, metadata !"buf", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !491} ; [ DW_TAG_member ] [buf] [line 38, size 64, align 64, offset 64] [from ]
!599 = metadata !{i32 786445, metadata !589, metadata !595, metadata !"next", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !600} ; [ DW_TAG_member ] [next] [line 39, size 64, align 64, offset 128] [from ]
!600 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !595} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from symbuf]
!601 = metadata !{metadata !602, metadata !603, metadata !604, metadata !605, metadata !606, metadata !607, metadata !608, metadata !609, metadata !610, metadata !611, metadata !612, metadata !613}
!602 = metadata !{i32 786689, metadata !364, metadata !"fn", metadata !180, i32 16778093, metadata !184, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 877]
!603 = metadata !{i32 786689, metadata !364, metadata !"step", metadata !180, i32 33555309, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 877]
!604 = metadata !{i32 786689, metadata !364, metadata !"t", metadata !180, i32 50332525, metadata !209, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 877]
!605 = metadata !{i32 786689, metadata !364, metadata !"lambda", metadata !180, i32 67109741, metadata !209, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 877]
!606 = metadata !{i32 786689, metadata !364, metadata !"ir", metadata !180, i32 83886958, metadata !367, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ir] [line 878]
!607 = metadata !{i32 786689, metadata !364, metadata !"box", metadata !180, i32 100664174, metadata !468, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 878]
!608 = metadata !{i32 786689, metadata !364, metadata !"natoms", metadata !180, i32 117441390, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 878]
!609 = metadata !{i32 786689, metadata !364, metadata !"x", metadata !180, i32 134218607, metadata !468, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 879]
!610 = metadata !{i32 786689, metadata !364, metadata !"v", metadata !180, i32 150995823, metadata !468, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 879]
!611 = metadata !{i32 786689, metadata !364, metadata !"f", metadata !180, i32 167773039, metadata !468, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 879]
!612 = metadata !{i32 786689, metadata !364, metadata !"top", metadata !180, i32 184550255, metadata !485, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [top] [line 879]
!613 = metadata !{i32 786688, metadata !364, metadata !"fp", metadata !180, i32 881, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 881]
!614 = metadata !{i32 786478, metadata !1, metadata !180, metadata !"read_tpx", metadata !"read_tpx", metadata !"", i32 888, metadata !615, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32*, float*, float*, %struct.t_inputrec*, [3 x float]*, i32*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_topology*)* @read_tpx, null, null, metadata !617, i32 891} ; [ DW_TAG_subprogram ] [line 888] [def] [scope 891] [read_tpx]
!615 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !616, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!616 = metadata !{null, metadata !184, metadata !475, metadata !464, metadata !464, metadata !367, metadata !468, metadata !475, metadata !468, metadata !468, metadata !468, metadata !485}
!617 = metadata !{metadata !618, metadata !619, metadata !620, metadata !621, metadata !622, metadata !623, metadata !624, metadata !625, metadata !626, metadata !627, metadata !628, metadata !629}
!618 = metadata !{i32 786689, metadata !614, metadata !"fn", metadata !180, i32 16778104, metadata !184, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 888]
!619 = metadata !{i32 786689, metadata !614, metadata !"step", metadata !180, i32 33555320, metadata !475, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 888]
!620 = metadata !{i32 786689, metadata !614, metadata !"t", metadata !180, i32 50332536, metadata !464, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 888]
!621 = metadata !{i32 786689, metadata !614, metadata !"lambda", metadata !180, i32 67109752, metadata !464, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 888]
!622 = metadata !{i32 786689, metadata !614, metadata !"ir", metadata !180, i32 83886969, metadata !367, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ir] [line 889]
!623 = metadata !{i32 786689, metadata !614, metadata !"box", metadata !180, i32 100664185, metadata !468, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 889]
!624 = metadata !{i32 786689, metadata !614, metadata !"natoms", metadata !180, i32 117441401, metadata !475, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 889]
!625 = metadata !{i32 786689, metadata !614, metadata !"x", metadata !180, i32 134218618, metadata !468, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 890]
!626 = metadata !{i32 786689, metadata !614, metadata !"v", metadata !180, i32 150995834, metadata !468, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 890]
!627 = metadata !{i32 786689, metadata !614, metadata !"f", metadata !180, i32 167773050, metadata !468, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 890]
!628 = metadata !{i32 786689, metadata !614, metadata !"top", metadata !180, i32 184550266, metadata !485, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [top] [line 890]
!629 = metadata !{i32 786688, metadata !614, metadata !"fp", metadata !180, i32 892, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 892]
!630 = metadata !{i32 786478, metadata !1, metadata !180, metadata !"fwrite_tpx", metadata !"fwrite_tpx", metadata !"", i32 899, metadata !631, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, float, float, %struct.t_inputrec*, [3 x float]*, i32, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_topology*)* @fwrite_tpx, null, null, metadata !633, i32 902} ; [ DW_TAG_subprogram ] [line 899] [def] [scope 902] [fwrite_tpx]
!631 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !632, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!632 = metadata !{null, metadata !183, metadata !183, metadata !209, metadata !209, metadata !367, metadata !468, metadata !183, metadata !468, metadata !468, metadata !468, metadata !485}
!633 = metadata !{metadata !634, metadata !635, metadata !636, metadata !637, metadata !638, metadata !639, metadata !640, metadata !641, metadata !642, metadata !643, metadata !644}
!634 = metadata !{i32 786689, metadata !630, metadata !"fp", metadata !180, i32 16778115, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 899]
!635 = metadata !{i32 786689, metadata !630, metadata !"step", metadata !180, i32 33555331, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 899]
!636 = metadata !{i32 786689, metadata !630, metadata !"t", metadata !180, i32 50332547, metadata !209, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 899]
!637 = metadata !{i32 786689, metadata !630, metadata !"lambda", metadata !180, i32 67109763, metadata !209, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 899]
!638 = metadata !{i32 786689, metadata !630, metadata !"ir", metadata !180, i32 83886980, metadata !367, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ir] [line 900]
!639 = metadata !{i32 786689, metadata !630, metadata !"box", metadata !180, i32 100664196, metadata !468, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 900]
!640 = metadata !{i32 786689, metadata !630, metadata !"natoms", metadata !180, i32 117441412, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 900]
!641 = metadata !{i32 786689, metadata !630, metadata !"x", metadata !180, i32 134218629, metadata !468, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 901]
!642 = metadata !{i32 786689, metadata !630, metadata !"v", metadata !180, i32 150995845, metadata !468, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 901]
!643 = metadata !{i32 786689, metadata !630, metadata !"f", metadata !180, i32 167773061, metadata !468, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 901]
!644 = metadata !{i32 786689, metadata !630, metadata !"top", metadata !180, i32 184550277, metadata !485, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [top] [line 901]
!645 = metadata !{i32 786478, metadata !1, metadata !180, metadata !"fread_tpx", metadata !"fread_tpx", metadata !"", i32 907, metadata !646, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32*, float*, float*, %struct.t_inputrec*, [3 x float]*, i32*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_topology*)* @fread_tpx, null, null, metadata !648, i32 910} ; [ DW_TAG_subprogram ] [line 907] [def] [scope 910] [fread_tpx]
!646 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !647, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!647 = metadata !{null, metadata !183, metadata !475, metadata !464, metadata !464, metadata !367, metadata !468, metadata !475, metadata !468, metadata !468, metadata !468, metadata !485}
!648 = metadata !{metadata !649, metadata !650, metadata !651, metadata !652, metadata !653, metadata !654, metadata !655, metadata !656, metadata !657, metadata !658, metadata !659}
!649 = metadata !{i32 786689, metadata !645, metadata !"fp", metadata !180, i32 16778123, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 907]
!650 = metadata !{i32 786689, metadata !645, metadata !"step", metadata !180, i32 33555339, metadata !475, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 907]
!651 = metadata !{i32 786689, metadata !645, metadata !"t", metadata !180, i32 50332555, metadata !464, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 907]
!652 = metadata !{i32 786689, metadata !645, metadata !"lambda", metadata !180, i32 67109771, metadata !464, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 907]
!653 = metadata !{i32 786689, metadata !645, metadata !"ir", metadata !180, i32 83886988, metadata !367, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ir] [line 908]
!654 = metadata !{i32 786689, metadata !645, metadata !"box", metadata !180, i32 100664204, metadata !468, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 908]
!655 = metadata !{i32 786689, metadata !645, metadata !"natoms", metadata !180, i32 117441420, metadata !475, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 908]
!656 = metadata !{i32 786689, metadata !645, metadata !"x", metadata !180, i32 134218637, metadata !468, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 909]
!657 = metadata !{i32 786689, metadata !645, metadata !"v", metadata !180, i32 150995853, metadata !468, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 909]
!658 = metadata !{i32 786689, metadata !645, metadata !"f", metadata !180, i32 167773069, metadata !468, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 909]
!659 = metadata !{i32 786689, metadata !645, metadata !"top", metadata !180, i32 184550285, metadata !485, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [top] [line 909]
!660 = metadata !{i32 786478, metadata !1, metadata !180, metadata !"fn2bTPX", metadata !"fn2bTPX", metadata !"", i32 914, metadata !661, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @fn2bTPX, null, null, metadata !663, i32 915} ; [ DW_TAG_subprogram ] [line 914] [def] [scope 915] [fn2bTPX]
!661 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !662, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!662 = metadata !{metadata !183, metadata !184}
!663 = metadata !{metadata !664}
!664 = metadata !{i32 786689, metadata !660, metadata !"file", metadata !180, i32 16778130, metadata !184, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 914]
!665 = metadata !{i32 786478, metadata !1, metadata !180, metadata !"read_tps_conf", metadata !"read_tps_conf", metadata !"", i32 926, metadata !666, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, %struct.t_topology*, [3 x float]**, [3 x float]**, [3 x float]*, i32)* @read_tps_conf, null, null, metadata !670, i32 928} ; [ DW_TAG_subprogram ] [line 926] [def] [scope 928] [read_tps_conf]
!666 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !667, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!667 = metadata !{metadata !183, metadata !184, metadata !184, metadata !485, metadata !668, metadata !668, metadata !669, metadata !183}
!668 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !468} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!669 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !275} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!670 = metadata !{metadata !671, metadata !672, metadata !673, metadata !674, metadata !675, metadata !676, metadata !677, metadata !678, metadata !679, metadata !680, metadata !681, metadata !682, metadata !683, metadata !684, metadata !685}
!671 = metadata !{i32 786689, metadata !665, metadata !"infile", metadata !180, i32 16778142, metadata !184, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [infile] [line 926]
!672 = metadata !{i32 786689, metadata !665, metadata !"title", metadata !180, i32 33555358, metadata !184, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 926]
!673 = metadata !{i32 786689, metadata !665, metadata !"top", metadata !180, i32 50332574, metadata !485, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [top] [line 926]
!674 = metadata !{i32 786689, metadata !665, metadata !"x", metadata !180, i32 67109791, metadata !668, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 927]
!675 = metadata !{i32 786689, metadata !665, metadata !"v", metadata !180, i32 83887007, metadata !668, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 927]
!676 = metadata !{i32 786689, metadata !665, metadata !"box", metadata !180, i32 100664223, metadata !669, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 927]
!677 = metadata !{i32 786689, metadata !665, metadata !"bMass", metadata !180, i32 117441439, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bMass] [line 927]
!678 = metadata !{i32 786688, metadata !665, metadata !"header", metadata !180, i32 929, metadata !346, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [header] [line 929]
!679 = metadata !{i32 786688, metadata !665, metadata !"t", metadata !180, i32 930, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 930]
!680 = metadata !{i32 786688, metadata !665, metadata !"lambda", metadata !180, i32 930, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lambda] [line 930]
!681 = metadata !{i32 786688, metadata !665, metadata !"natoms", metadata !180, i32 931, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [natoms] [line 931]
!682 = metadata !{i32 786688, metadata !665, metadata !"step", metadata !180, i32 931, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [step] [line 931]
!683 = metadata !{i32 786688, metadata !665, metadata !"i", metadata !180, i32 931, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 931]
!684 = metadata !{i32 786688, metadata !665, metadata !"bTop", metadata !180, i32 932, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bTop] [line 932]
!685 = metadata !{i32 786688, metadata !665, metadata !"bXNULL", metadata !180, i32 932, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bXNULL] [line 932]
!686 = metadata !{i32 786478, metadata !1, metadata !180, metadata !"do_tpx", metadata !"do_tpx", metadata !"", i32 782, metadata !687, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32*, float*, float*, %struct.t_inputrec*, [3 x float]*, i32*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_topology*)* @do_tpx, null, null, metadata !689, i32 785} ; [ DW_TAG_subprogram ] [line 782] [local] [def] [scope 785] [do_tpx]
!687 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !688, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!688 = metadata !{null, metadata !183, metadata !183, metadata !475, metadata !464, metadata !464, metadata !367, metadata !468, metadata !475, metadata !468, metadata !468, metadata !468, metadata !485}
!689 = metadata !{metadata !690, metadata !691, metadata !692, metadata !693, metadata !694, metadata !695, metadata !696, metadata !697, metadata !698, metadata !699, metadata !700, metadata !701, metadata !702, metadata !703, metadata !704}
!690 = metadata !{i32 786689, metadata !686, metadata !"fp", metadata !180, i32 16777998, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 782]
!691 = metadata !{i32 786689, metadata !686, metadata !"bRead", metadata !180, i32 33555214, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bRead] [line 782]
!692 = metadata !{i32 786689, metadata !686, metadata !"step", metadata !180, i32 50332430, metadata !475, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 782]
!693 = metadata !{i32 786689, metadata !686, metadata !"t", metadata !180, i32 67109646, metadata !464, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 782]
!694 = metadata !{i32 786689, metadata !686, metadata !"lambda", metadata !180, i32 83886862, metadata !464, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 782]
!695 = metadata !{i32 786689, metadata !686, metadata !"ir", metadata !180, i32 100664079, metadata !367, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ir] [line 783]
!696 = metadata !{i32 786689, metadata !686, metadata !"box", metadata !180, i32 117441295, metadata !468, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 783]
!697 = metadata !{i32 786689, metadata !686, metadata !"natoms", metadata !180, i32 134218511, metadata !475, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 783]
!698 = metadata !{i32 786689, metadata !686, metadata !"x", metadata !180, i32 150995728, metadata !468, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 784]
!699 = metadata !{i32 786689, metadata !686, metadata !"v", metadata !180, i32 167772944, metadata !468, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 784]
!700 = metadata !{i32 786689, metadata !686, metadata !"f", metadata !180, i32 184550160, metadata !468, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 784]
!701 = metadata !{i32 786689, metadata !686, metadata !"top", metadata !180, i32 201327376, metadata !485, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [top] [line 784]
!702 = metadata !{i32 786688, metadata !686, metadata !"tpx", metadata !180, i32 786, metadata !346, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpx] [line 786]
!703 = metadata !{i32 786688, metadata !686, metadata !"dum_ir", metadata !180, i32 787, metadata !368, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dum_ir] [line 787]
!704 = metadata !{i32 786688, metadata !686, metadata !"dum_top", metadata !180, i32 788, metadata !486, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dum_top] [line 788]
!705 = metadata !{i32 786478, metadata !1, metadata !180, metadata !"do_top", metadata !"do_top", metadata !"", i32 708, metadata !706, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_topology*, i32)* @do_top, null, null, metadata !708, i32 709} ; [ DW_TAG_subprogram ] [line 708] [local] [def] [scope 709] [do_top]
!706 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !707, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!707 = metadata !{null, metadata !485, metadata !183}
!708 = metadata !{metadata !709, metadata !710, metadata !711}
!709 = metadata !{i32 786689, metadata !705, metadata !"top", metadata !180, i32 16777924, metadata !485, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [top] [line 708]
!710 = metadata !{i32 786689, metadata !705, metadata !"bRead", metadata !180, i32 33555140, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bRead] [line 708]
!711 = metadata !{i32 786688, metadata !705, metadata !"i", metadata !180, i32 710, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 710]
!712 = metadata !{i32 786478, metadata !1, metadata !180, metadata !"make_chain_identifiers", metadata !"make_chain_identifiers", metadata !"", i32 685, metadata !713, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !717, i32 686} ; [ DW_TAG_subprogram ] [line 685] [local] [def] [scope 686] [make_chain_identifiers]
!713 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !714, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!714 = metadata !{null, metadata !715, metadata !716}
!715 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !519} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atoms]
!716 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !552} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_block]
!717 = metadata !{metadata !718, metadata !719, metadata !720, metadata !721, metadata !722, metadata !723, metadata !724, metadata !725}
!718 = metadata !{i32 786689, metadata !712, metadata !"atoms", metadata !180, i32 16777901, metadata !715, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 685]
!719 = metadata !{i32 786689, metadata !712, metadata !"mols", metadata !180, i32 33555117, metadata !716, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mols] [line 685]
!720 = metadata !{i32 786688, metadata !712, metadata !"m", metadata !180, i32 687, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 687]
!721 = metadata !{i32 786688, metadata !712, metadata !"a", metadata !180, i32 687, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 687]
!722 = metadata !{i32 786688, metadata !712, metadata !"a0", metadata !180, i32 687, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a0] [line 687]
!723 = metadata !{i32 786688, metadata !712, metadata !"a1", metadata !180, i32 687, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a1] [line 687]
!724 = metadata !{i32 786688, metadata !712, metadata !"c", metadata !180, i32 688, metadata !185, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 688]
!725 = metadata !{i32 786688, metadata !712, metadata !"chain", metadata !180, i32 688, metadata !185, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [chain] [line 688]
!726 = metadata !{i32 786478, metadata !1, metadata !180, metadata !"do_block", metadata !"do_block", metadata !"", i32 544, metadata !727, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_block*, i32)* @do_block, null, null, metadata !729, i32 545} ; [ DW_TAG_subprogram ] [line 544] [local] [def] [scope 545] [do_block]
!727 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !728, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!728 = metadata !{null, metadata !716, metadata !183}
!729 = metadata !{metadata !730, metadata !731, metadata !732, metadata !733, metadata !734, metadata !738, metadata !742}
!730 = metadata !{i32 786689, metadata !726, metadata !"block", metadata !180, i32 16777760, metadata !716, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [block] [line 544]
!731 = metadata !{i32 786689, metadata !726, metadata !"bRead", metadata !180, i32 33554976, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bRead] [line 544]
!732 = metadata !{i32 786688, metadata !726, metadata !"i", metadata !180, i32 546, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 546]
!733 = metadata !{i32 786688, metadata !726, metadata !"bDum", metadata !180, i32 547, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bDum] [line 547]
!734 = metadata !{i32 786688, metadata !735, metadata !"buf", metadata !180, i32 549, metadata !328, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 549]
!735 = metadata !{i32 786443, metadata !1, metadata !736, i32 549, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!736 = metadata !{i32 786443, metadata !1, metadata !737, i32 549, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!737 = metadata !{i32 786443, metadata !1, metadata !726, i32 549, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!738 = metadata !{i32 786688, metadata !739, metadata !"buf", metadata !180, i32 556, metadata !328, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 556]
!739 = metadata !{i32 786443, metadata !1, metadata !740, i32 556, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!740 = metadata !{i32 786443, metadata !1, metadata !741, i32 556, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!741 = metadata !{i32 786443, metadata !1, metadata !726, i32 556, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!742 = metadata !{i32 786688, metadata !743, metadata !"buf", metadata !180, i32 557, metadata !328, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 557]
!743 = metadata !{i32 786443, metadata !1, metadata !744, i32 557, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!744 = metadata !{i32 786443, metadata !1, metadata !745, i32 557, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!745 = metadata !{i32 786443, metadata !1, metadata !726, i32 557, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!746 = metadata !{i32 786478, metadata !1, metadata !180, metadata !"do_idef", metadata !"do_idef", metadata !"", i32 505, metadata !747, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !750, i32 506} ; [ DW_TAG_subprogram ] [line 505] [local] [def] [scope 506] [do_idef]
!747 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !748, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!748 = metadata !{null, metadata !749, metadata !183}
!749 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !493} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_idef]
!750 = metadata !{metadata !751, metadata !752, metadata !753, metadata !754, metadata !755, metadata !756, metadata !757, metadata !758}
!751 = metadata !{i32 786689, metadata !746, metadata !"idef", metadata !180, i32 16777721, metadata !749, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idef] [line 505]
!752 = metadata !{i32 786689, metadata !746, metadata !"bRead", metadata !180, i32 33554937, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bRead] [line 505]
!753 = metadata !{i32 786688, metadata !746, metadata !"i", metadata !180, i32 507, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 507]
!754 = metadata !{i32 786688, metadata !746, metadata !"j", metadata !180, i32 507, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 507]
!755 = metadata !{i32 786688, metadata !746, metadata !"k", metadata !180, i32 507, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 507]
!756 = metadata !{i32 786688, metadata !746, metadata !"bDum", metadata !180, i32 508, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bDum] [line 508]
!757 = metadata !{i32 786688, metadata !746, metadata !"bClear", metadata !180, i32 508, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bClear] [line 508]
!758 = metadata !{i32 786688, metadata !759, metadata !"buf", metadata !180, i32 517, metadata !328, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 517]
!759 = metadata !{i32 786443, metadata !1, metadata !760, i32 517, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!760 = metadata !{i32 786443, metadata !1, metadata !761, i32 517, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!761 = metadata !{i32 786443, metadata !1, metadata !746, i32 517, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!762 = metadata !{i32 786478, metadata !1, metadata !180, metadata !"do_ilist", metadata !"do_ilist", metadata !"", i32 489, metadata !763, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !766, i32 490} ; [ DW_TAG_subprogram ] [line 489] [local] [def] [scope 490] [do_ilist]
!763 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !764, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!764 = metadata !{null, metadata !765, metadata !183, metadata !184}
!765 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !504} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_ilist]
!766 = metadata !{metadata !767, metadata !768, metadata !769, metadata !770, metadata !771, metadata !772, metadata !776}
!767 = metadata !{i32 786689, metadata !762, metadata !"ilist", metadata !180, i32 16777705, metadata !765, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ilist] [line 489]
!768 = metadata !{i32 786689, metadata !762, metadata !"bRead", metadata !180, i32 33554921, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bRead] [line 489]
!769 = metadata !{i32 786689, metadata !762, metadata !"name", metadata !180, i32 50332137, metadata !184, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 489]
!770 = metadata !{i32 786688, metadata !762, metadata !"i", metadata !180, i32 491, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 491]
!771 = metadata !{i32 786688, metadata !762, metadata !"bDum", metadata !180, i32 492, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bDum] [line 492]
!772 = metadata !{i32 786688, metadata !773, metadata !"buf", metadata !180, i32 496, metadata !328, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 496]
!773 = metadata !{i32 786443, metadata !1, metadata !774, i32 496, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!774 = metadata !{i32 786443, metadata !1, metadata !775, i32 496, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!775 = metadata !{i32 786443, metadata !1, metadata !762, i32 496, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!776 = metadata !{i32 786688, metadata !777, metadata !"buf", metadata !180, i32 500, metadata !328, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 500]
!777 = metadata !{i32 786443, metadata !1, metadata !778, i32 500, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!778 = metadata !{i32 786443, metadata !1, metadata !779, i32 500, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!779 = metadata !{i32 786443, metadata !1, metadata !762, i32 500, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!780 = metadata !{i32 786478, metadata !1, metadata !180, metadata !"do_atoms", metadata !"do_atoms", metadata !"", i32 618, metadata !781, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !784, i32 619} ; [ DW_TAG_subprogram ] [line 618] [local] [def] [scope 619] [do_atoms]
!781 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !782, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!782 = metadata !{null, metadata !715, metadata !183, metadata !783}
!783 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !587} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_symtab]
!784 = metadata !{metadata !785, metadata !786, metadata !787, metadata !788}
!785 = metadata !{i32 786689, metadata !780, metadata !"atoms", metadata !180, i32 16777834, metadata !715, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 618]
!786 = metadata !{i32 786689, metadata !780, metadata !"bRead", metadata !180, i32 33555050, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bRead] [line 618]
!787 = metadata !{i32 786689, metadata !780, metadata !"symtab", metadata !180, i32 50332266, metadata !783, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symtab] [line 618]
!788 = metadata !{i32 786688, metadata !780, metadata !"i", metadata !180, i32 620, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 620]
!789 = metadata !{i32 786478, metadata !1, metadata !180, metadata !"do_grps", metadata !"do_grps", metadata !"", i32 577, metadata !790, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !793, i32 578} ; [ DW_TAG_subprogram ] [line 577] [local] [def] [scope 578] [do_grps]
!790 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !791, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!791 = metadata !{null, metadata !183, metadata !792, metadata !183}
!792 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !564} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_grps]
!793 = metadata !{metadata !794, metadata !795, metadata !796, metadata !797, metadata !798, metadata !799, metadata !800}
!794 = metadata !{i32 786689, metadata !789, metadata !"ngrp", metadata !180, i32 16777793, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ngrp] [line 577]
!795 = metadata !{i32 786689, metadata !789, metadata !"grps", metadata !180, i32 33555009, metadata !792, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grps] [line 577]
!796 = metadata !{i32 786689, metadata !789, metadata !"bRead", metadata !180, i32 50332225, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bRead] [line 577]
!797 = metadata !{i32 786688, metadata !789, metadata !"i", metadata !180, i32 579, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 579]
!798 = metadata !{i32 786688, metadata !789, metadata !"j", metadata !180, i32 579, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 579]
!799 = metadata !{i32 786688, metadata !789, metadata !"bDum", metadata !180, i32 580, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bDum] [line 580]
!800 = metadata !{i32 786688, metadata !801, metadata !"buf", metadata !180, i32 592, metadata !328, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 592]
!801 = metadata !{i32 786443, metadata !1, metadata !802, i32 592, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!802 = metadata !{i32 786443, metadata !1, metadata !803, i32 592, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!803 = metadata !{i32 786443, metadata !1, metadata !804, i32 592, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!804 = metadata !{i32 786443, metadata !1, metadata !805, i32 588, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!805 = metadata !{i32 786443, metadata !1, metadata !789, i32 588, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!806 = metadata !{i32 786478, metadata !1, metadata !180, metadata !"do_strstr", metadata !"do_strstr", metadata !"", i32 610, metadata !807, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !809, i32 611} ; [ DW_TAG_subprogram ] [line 610] [local] [def] [scope 611] [do_strstr]
!807 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !808, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!808 = metadata !{null, metadata !183, metadata !544, metadata !183, metadata !783}
!809 = metadata !{metadata !810, metadata !811, metadata !812, metadata !813, metadata !814}
!810 = metadata !{i32 786689, metadata !806, metadata !"nstr", metadata !180, i32 16777826, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nstr] [line 610]
!811 = metadata !{i32 786689, metadata !806, metadata !"nm", metadata !180, i32 33555042, metadata !544, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nm] [line 610]
!812 = metadata !{i32 786689, metadata !806, metadata !"bRead", metadata !180, i32 50332258, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bRead] [line 610]
!813 = metadata !{i32 786689, metadata !806, metadata !"symtab", metadata !180, i32 67109474, metadata !783, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symtab] [line 610]
!814 = metadata !{i32 786688, metadata !806, metadata !"j", metadata !180, i32 612, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 612]
!815 = metadata !{i32 786478, metadata !1, metadata !180, metadata !"do_atom", metadata !"do_atom", metadata !"", i32 560, metadata !816, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !818, i32 561} ; [ DW_TAG_subprogram ] [line 560] [local] [def] [scope 561] [do_atom]
!816 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !817, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!817 = metadata !{null, metadata !524, metadata !183, metadata !183}
!818 = metadata !{metadata !819, metadata !820, metadata !821}
!819 = metadata !{i32 786689, metadata !815, metadata !"atom", metadata !180, i32 16777776, metadata !524, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atom] [line 560]
!820 = metadata !{i32 786689, metadata !815, metadata !"ngrp", metadata !180, i32 33554992, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ngrp] [line 560]
!821 = metadata !{i32 786689, metadata !815, metadata !"bRead", metadata !180, i32 50332208, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bRead] [line 560]
!822 = metadata !{i32 786478, metadata !1, metadata !180, metadata !"do_symstr", metadata !"do_symstr", metadata !"", i32 596, metadata !823, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8***, i32, %struct.t_symtab*)* @do_symstr, null, null, metadata !825, i32 597} ; [ DW_TAG_subprogram ] [line 596] [local] [def] [scope 597] [do_symstr]
!823 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !824, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!824 = metadata !{null, metadata !544, metadata !183, metadata !783}
!825 = metadata !{metadata !826, metadata !827, metadata !828, metadata !829}
!826 = metadata !{i32 786689, metadata !822, metadata !"nm", metadata !180, i32 16777812, metadata !544, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nm] [line 596]
!827 = metadata !{i32 786689, metadata !822, metadata !"bRead", metadata !180, i32 33555028, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bRead] [line 596]
!828 = metadata !{i32 786689, metadata !822, metadata !"symtab", metadata !180, i32 50332244, metadata !783, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symtab] [line 596]
!829 = metadata !{i32 786688, metadata !822, metadata !"ls", metadata !180, i32 598, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ls] [line 598]
!830 = metadata !{i32 786478, metadata !1, metadata !180, metadata !"do_symtab", metadata !"do_symtab", metadata !"", i32 654, metadata !831, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !833, i32 655} ; [ DW_TAG_subprogram ] [line 654] [local] [def] [scope 655] [do_symtab]
!831 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !832, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!832 = metadata !{null, metadata !783, metadata !183}
!833 = metadata !{metadata !834, metadata !835, metadata !836, metadata !837, metadata !838, metadata !839}
!834 = metadata !{i32 786689, metadata !830, metadata !"symtab", metadata !180, i32 16777870, metadata !783, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symtab] [line 654]
!835 = metadata !{i32 786689, metadata !830, metadata !"bRead", metadata !180, i32 33555086, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bRead] [line 654]
!836 = metadata !{i32 786688, metadata !830, metadata !"i", metadata !180, i32 656, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 656]
!837 = metadata !{i32 786688, metadata !830, metadata !"nr", metadata !180, i32 656, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nr] [line 656]
!838 = metadata !{i32 786688, metadata !830, metadata !"symbuf", metadata !180, i32 657, metadata !593, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symbuf] [line 657]
!839 = metadata !{i32 786688, metadata !830, metadata !"buf", metadata !180, i32 658, metadata !193, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 658]
!840 = metadata !{i32 786478, metadata !1, metadata !180, metadata !"do_inputrec", metadata !"do_inputrec", metadata !"", i32 118, metadata !841, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_inputrec*, i32)* @do_inputrec, null, null, metadata !843, i32 119} ; [ DW_TAG_subprogram ] [line 118] [local] [def] [scope 119] [do_inputrec]
!841 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !842, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!842 = metadata !{null, metadata !367, metadata !183}
!843 = metadata !{metadata !844, metadata !845, metadata !846, metadata !847, metadata !848, metadata !849, metadata !850, metadata !851, metadata !852, metadata !853, metadata !860, metadata !865, metadata !869, metadata !873, metadata !877, metadata !881, metadata !887, metadata !891, metadata !895}
!844 = metadata !{i32 786689, metadata !840, metadata !"ir", metadata !180, i32 16777334, metadata !367, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ir] [line 118]
!845 = metadata !{i32 786689, metadata !840, metadata !"bRead", metadata !180, i32 33554550, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bRead] [line 118]
!846 = metadata !{i32 786688, metadata !840, metadata !"i", metadata !180, i32 120, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 120]
!847 = metadata !{i32 786688, metadata !840, metadata !"j", metadata !180, i32 120, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 120]
!848 = metadata !{i32 786688, metadata !840, metadata !"tmp", metadata !180, i32 120, metadata !475, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 120]
!849 = metadata !{i32 786688, metadata !840, metadata !"idum", metadata !180, i32 120, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idum] [line 120]
!850 = metadata !{i32 786688, metadata !840, metadata !"bDum", metadata !180, i32 121, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bDum] [line 121]
!851 = metadata !{i32 786688, metadata !840, metadata !"rdum", metadata !180, i32 122, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rdum] [line 122]
!852 = metadata !{i32 786688, metadata !840, metadata !"vdum", metadata !180, i32 123, metadata !469, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vdum] [line 123]
!853 = metadata !{i32 786688, metadata !854, metadata !"buf", metadata !180, i32 331, metadata !328, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 331]
!854 = metadata !{i32 786443, metadata !1, metadata !855, i32 331, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!855 = metadata !{i32 786443, metadata !1, metadata !856, i32 331, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!856 = metadata !{i32 786443, metadata !1, metadata !857, i32 331, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!857 = metadata !{i32 786443, metadata !1, metadata !858, i32 329, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!858 = metadata !{i32 786443, metadata !1, metadata !859, i32 328, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!859 = metadata !{i32 786443, metadata !1, metadata !840, i32 131, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!860 = metadata !{i32 786688, metadata !861, metadata !"buf", metadata !180, i32 336, metadata !328, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 336]
!861 = metadata !{i32 786443, metadata !1, metadata !862, i32 336, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!862 = metadata !{i32 786443, metadata !1, metadata !863, i32 336, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!863 = metadata !{i32 786443, metadata !1, metadata !864, i32 336, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!864 = metadata !{i32 786443, metadata !1, metadata !858, i32 335, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!865 = metadata !{i32 786688, metadata !866, metadata !"buf", metadata !180, i32 338, metadata !328, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 338]
!866 = metadata !{i32 786443, metadata !1, metadata !867, i32 338, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!867 = metadata !{i32 786443, metadata !1, metadata !868, i32 338, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!868 = metadata !{i32 786443, metadata !1, metadata !858, i32 338, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!869 = metadata !{i32 786688, metadata !870, metadata !"buf", metadata !180, i32 339, metadata !328, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 339]
!870 = metadata !{i32 786443, metadata !1, metadata !871, i32 339, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!871 = metadata !{i32 786443, metadata !1, metadata !872, i32 339, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!872 = metadata !{i32 786443, metadata !1, metadata !858, i32 339, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!873 = metadata !{i32 786688, metadata !874, metadata !"buf", metadata !180, i32 342, metadata !328, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 342]
!874 = metadata !{i32 786443, metadata !1, metadata !875, i32 342, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!875 = metadata !{i32 786443, metadata !1, metadata !876, i32 342, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!876 = metadata !{i32 786443, metadata !1, metadata !859, i32 342, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!877 = metadata !{i32 786688, metadata !878, metadata !"buf", metadata !180, i32 346, metadata !328, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 346]
!878 = metadata !{i32 786443, metadata !1, metadata !879, i32 346, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!879 = metadata !{i32 786443, metadata !1, metadata !880, i32 346, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!880 = metadata !{i32 786443, metadata !1, metadata !859, i32 346, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!881 = metadata !{i32 786688, metadata !882, metadata !"buf", metadata !180, i32 358, metadata !328, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 358]
!882 = metadata !{i32 786443, metadata !1, metadata !883, i32 358, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!883 = metadata !{i32 786443, metadata !1, metadata !884, i32 358, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!884 = metadata !{i32 786443, metadata !1, metadata !885, i32 358, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!885 = metadata !{i32 786443, metadata !1, metadata !886, i32 349, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!886 = metadata !{i32 786443, metadata !1, metadata !859, i32 349, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!887 = metadata !{i32 786688, metadata !888, metadata !"buf", metadata !180, i32 359, metadata !328, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 359]
!888 = metadata !{i32 786443, metadata !1, metadata !889, i32 359, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!889 = metadata !{i32 786443, metadata !1, metadata !890, i32 359, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!890 = metadata !{i32 786443, metadata !1, metadata !885, i32 359, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!891 = metadata !{i32 786688, metadata !892, metadata !"buf", metadata !180, i32 360, metadata !328, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 360]
!892 = metadata !{i32 786443, metadata !1, metadata !893, i32 360, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!893 = metadata !{i32 786443, metadata !1, metadata !894, i32 360, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!894 = metadata !{i32 786443, metadata !1, metadata !885, i32 360, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!895 = metadata !{i32 786688, metadata !896, metadata !"buf", metadata !180, i32 361, metadata !328, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 361]
!896 = metadata !{i32 786443, metadata !1, metadata !897, i32 361, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!897 = metadata !{i32 786443, metadata !1, metadata !898, i32 361, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!898 = metadata !{i32 786443, metadata !1, metadata !885, i32 361, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!899 = metadata !{i32 786478, metadata !900, metadata !901, metadata !"clear_mat", metadata !"clear_mat", metadata !"", i32 334, metadata !902, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !904, i32 335} ; [ DW_TAG_subprogram ] [line 334] [local] [def] [scope 335] [clear_mat]
!900 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!901 = metadata !{i32 786473, metadata !900}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!902 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !903, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!903 = metadata !{null, metadata !669}
!904 = metadata !{metadata !905, metadata !906}
!905 = metadata !{i32 786689, metadata !899, metadata !"a", metadata !901, i32 16777550, metadata !669, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 334]
!906 = metadata !{i32 786688, metadata !907, metadata !"nul", metadata !901, i32 336, metadata !908, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!907 = metadata !{i32 786443, metadata !900, metadata !899} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!908 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !209} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from real]
!909 = metadata !{i32 786478, metadata !1, metadata !180, metadata !"do_tpxheader", metadata !"do_tpxheader", metadata !"", i32 724, metadata !910, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, %struct.t_tpxheader*)* @do_tpxheader, null, null, metadata !912, i32 725} ; [ DW_TAG_subprogram ] [line 724] [local] [def] [scope 725] [do_tpxheader]
!910 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !911, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!911 = metadata !{null, metadata !183, metadata !183, metadata !345}
!912 = metadata !{metadata !913, metadata !914, metadata !915, metadata !916, metadata !918, metadata !919}
!913 = metadata !{i32 786689, metadata !909, metadata !"fp", metadata !180, i32 16777940, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 724]
!914 = metadata !{i32 786689, metadata !909, metadata !"bRead", metadata !180, i32 33555156, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bRead] [line 724]
!915 = metadata !{i32 786689, metadata !909, metadata !"tpx", metadata !180, i32 50332372, metadata !345, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tpx] [line 724]
!916 = metadata !{i32 786688, metadata !917, metadata !"buf", metadata !180, i32 726, metadata !193, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 726]
!917 = metadata !{i32 786443, metadata !1, metadata !909} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!918 = metadata !{i32 786688, metadata !917, metadata !"bDouble", metadata !180, i32 727, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bDouble] [line 727]
!919 = metadata !{i32 786688, metadata !917, metadata !"precision", metadata !180, i32 728, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [precision] [line 728]
!920 = metadata !{i32 786478, metadata !1, metadata !180, metadata !"do_harm", metadata !"do_harm", metadata !"", i32 366, metadata !921, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !923, i32 367} ; [ DW_TAG_subprogram ] [line 366] [local] [def] [scope 367] [do_harm]
!921 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !922, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!922 = metadata !{null, metadata !201, metadata !183}
!923 = metadata !{metadata !924, metadata !925}
!924 = metadata !{i32 786689, metadata !920, metadata !"iparams", metadata !180, i32 16777582, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iparams] [line 366]
!925 = metadata !{i32 786689, metadata !920, metadata !"bRead", metadata !180, i32 33554798, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bRead] [line 366]
!926 = metadata !{metadata !927, metadata !936, metadata !937, metadata !937, metadata !937, metadata !938, metadata !939}
!927 = metadata !{i32 786484, i32 0, null, metadata !"ftupd", metadata !"ftupd", metadata !"", metadata !180, i32 70, metadata !928, i32 0, i32 1, [7 x %struct.t_ftupd]* @ftupd, null} ; [ DW_TAG_variable ] [ftupd] [line 70] [def]
!928 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 448, i64 32, i32 0, i32 0, metadata !929, metadata !934, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 448, align 32, offset 0] [from t_ftupd]
!929 = metadata !{i32 786454, metadata !1, null, metadata !"t_ftupd", i32 63, i64 0, i64 0, i64 0, i32 0, metadata !930} ; [ DW_TAG_typedef ] [t_ftupd] [line 63, size 0, align 0, offset 0] [from ]
!930 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 60, i64 64, i64 32, i32 0, i32 0, null, metadata !931, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 60, size 64, align 32, offset 0] [from ]
!931 = metadata !{metadata !932, metadata !933}
!932 = metadata !{i32 786445, metadata !1, metadata !930, metadata !"fvnr", i32 61, i64 32, i64 32, i64 0, i32 0, metadata !183} ; [ DW_TAG_member ] [fvnr] [line 61, size 32, align 32, offset 0] [from int]
!933 = metadata !{i32 786445, metadata !1, metadata !930, metadata !"ftype", i32 62, i64 32, i64 32, i64 32, i32 0, metadata !183} ; [ DW_TAG_member ] [ftype] [line 62, size 32, align 32, offset 32] [from int]
!934 = metadata !{metadata !935}
!935 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 6]
!936 = metadata !{i32 786484, i32 0, null, metadata !"file_version", metadata !"file_version", metadata !"", metadata !180, i32 57, metadata !183, i32 1, i32 1, i32* @file_version, null} ; [ DW_TAG_variable ] [file_version] [line 57] [local] [def]
!937 = metadata !{i32 786484, i32 0, metadata !901, metadata !"nul", metadata !"nul", metadata !"nul", metadata !901, i32 336, metadata !908, i32 1, i32 1, float 0.000000e+00, null} ; [ DW_TAG_variable ] [nul] [line 336] [local] [def]
!938 = metadata !{i32 786484, i32 0, null, metadata !"tpx_version", metadata !"tpx_version", metadata !"", metadata !180, i32 53, metadata !183, i32 1, i32 1, null, null}
!939 = metadata !{i32 786484, i32 0, null, metadata !"tpx_incompatible_version", metadata !"tpx_incompatible_version", metadata !"", metadata !180, i32 55, metadata !183, i32 1, i32 1, null, null}
!940 = metadata !{i32 81, i32 0, metadata !179, null}
!941 = metadata !{i32 83, i32 0, metadata !179, null}
!942 = metadata !{i32 86, i32 0, metadata !179, null}
!943 = metadata !{i32 87, i32 0, metadata !944, null}
!944 = metadata !{i32 786443, metadata !1, metadata !179, i32 86, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!945 = metadata !{i32 88, i32 0, metadata !946, null}
!946 = metadata !{i32 786443, metadata !1, metadata !944, i32 87, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!947 = metadata !{metadata !"any pointer", metadata !948}
!948 = metadata !{metadata !"omnipotent char", metadata !949}
!949 = metadata !{metadata !"Simple C/C++ TBAA"}
!950 = metadata !{i32 89, i32 0, metadata !946, null}
!951 = metadata !{i32 90, i32 0, metadata !946, null}
!952 = metadata !{i32 91, i32 0, metadata !946, null}
!953 = metadata !{i32 92, i32 0, metadata !946, null}
!954 = metadata !{i32 93, i32 0, metadata !946, null}
!955 = metadata !{i32 95, i32 0, metadata !956, null}
!956 = metadata !{i32 786443, metadata !1, metadata !944, i32 94, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!957 = metadata !{i32 101, i32 0, metadata !956, null}
!958 = metadata !{i32 96, i32 0, metadata !956, null}
!959 = metadata !{i32 100, i32 0, metadata !960, null}
!960 = metadata !{i32 786443, metadata !1, metadata !956, i32 99, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!961 = metadata !{i32 105, i32 0, metadata !956, null}
!962 = metadata !{i32 106, i32 0, metadata !956, null}
!963 = metadata !{i32 109, i32 0, metadata !179, null}
!964 = metadata !{i32 374, i32 0, metadata !197, null}
!965 = metadata !{i32 379, i32 0, metadata !197, null}
!966 = metadata !{i32 380, i32 0, metadata !197, null}
!967 = metadata !{i32 381, i32 0, metadata !197, null}
!968 = metadata !{i32 455, i32 0, metadata !324, null}
!969 = metadata !{i32 455, i32 0, metadata !325, null}
!970 = metadata !{i32 786689, metadata !920, metadata !"iparams", metadata !180, i32 16777582, metadata !201, i32 0, metadata !971} ; [ DW_TAG_arg_variable ] [iparams] [line 366]
!971 = metadata !{i32 390, i32 0, metadata !327, null}
!972 = metadata !{i32 366, i32 0, metadata !920, metadata !971}
!973 = metadata !{i32 786689, metadata !920, metadata !"bRead", metadata !180, i32 33554798, metadata !183, i32 0, metadata !971} ; [ DW_TAG_arg_variable ] [bRead] [line 366]
!974 = metadata !{i32 368, i32 0, metadata !920, metadata !971}
!975 = metadata !{i32 369, i32 0, metadata !920, metadata !971}
!976 = metadata !{i32 370, i32 0, metadata !920, metadata !971}
!977 = metadata !{i32 371, i32 0, metadata !920, metadata !971}
!978 = metadata !{i32 393, i32 0, metadata !327, null}
!979 = metadata !{i32 394, i32 0, metadata !327, null}
!980 = metadata !{i32 395, i32 0, metadata !327, null}
!981 = metadata !{i32 398, i32 0, metadata !327, null}
!982 = metadata !{i32 399, i32 0, metadata !327, null}
!983 = metadata !{i32 400, i32 0, metadata !327, null}
!984 = metadata !{i32 403, i32 0, metadata !327, null}
!985 = metadata !{i32 404, i32 0, metadata !327, null}
!986 = metadata !{i32 405, i32 0, metadata !327, null}
!987 = metadata !{i32 410, i32 0, metadata !327, null}
!988 = metadata !{i32 411, i32 0, metadata !327, null}
!989 = metadata !{i32 412, i32 0, metadata !327, null}
!990 = metadata !{i32 413, i32 0, metadata !327, null}
!991 = metadata !{i32 414, i32 0, metadata !327, null}
!992 = metadata !{i32 415, i32 0, metadata !327, null}
!993 = metadata !{i32 418, i32 0, metadata !327, null}
!994 = metadata !{i32 419, i32 0, metadata !327, null}
!995 = metadata !{i32 422, i32 0, metadata !327, null}
!996 = metadata !{i32 423, i32 0, metadata !327, null}
!997 = metadata !{i32 424, i32 0, metadata !327, null}
!998 = metadata !{i32 425, i32 0, metadata !327, null}
!999 = metadata !{i32 428, i32 0, metadata !327, null}
!1000 = metadata !{i32 429, i32 0, metadata !327, null}
!1001 = metadata !{i32 430, i32 0, metadata !327, null}
!1002 = metadata !{i32 431, i32 0, metadata !327, null}
!1003 = metadata !{i32 432, i32 0, metadata !327, null}
!1004 = metadata !{i32 435, i32 0, metadata !327, null}
!1005 = metadata !{i32 436, i32 0, metadata !327, null}
!1006 = metadata !{i32 437, i32 0, metadata !327, null}
!1007 = metadata !{i32 438, i32 0, metadata !327, null}
!1008 = metadata !{i32 439, i32 0, metadata !327, null}
!1009 = metadata !{i32 440, i32 0, metadata !327, null}
!1010 = metadata !{i32 443, i32 0, metadata !327, null}
!1011 = metadata !{i32 444, i32 0, metadata !327, null}
!1012 = metadata !{i32 445, i32 0, metadata !327, null}
!1013 = metadata !{i32 446, i32 0, metadata !327, null}
!1014 = metadata !{i32 447, i32 0, metadata !327, null}
!1015 = metadata !{i32 448, i32 0, metadata !327, null}
!1016 = metadata !{i32 451, i32 0, metadata !327, null}
!1017 = metadata !{i32 452, i32 0, metadata !327, null}
!1018 = metadata !{i32 377, i32 0, metadata !197, null}
!1019 = metadata !{i32 459, i32 0, metadata !327, null}
!1020 = metadata !{i32 460, i32 0, metadata !327, null}
!1021 = metadata !{i32 463, i32 0, metadata !327, null}
!1022 = metadata !{i32 464, i32 0, metadata !327, null}
!1023 = metadata !{i32 467, i32 0, metadata !327, null}
!1024 = metadata !{i32 472, i32 0, metadata !327, null}
!1025 = metadata !{i32 473, i32 0, metadata !327, null}
!1026 = metadata !{i32 477, i32 0, metadata !327, null}
!1027 = metadata !{i32 478, i32 0, metadata !327, null}
!1028 = metadata !{i32 479, i32 0, metadata !327, null}
!1029 = metadata !{i32 482, i32 0, metadata !327, null}
!1030 = metadata !{i32 484, i32 0, metadata !327, null}
!1031 = metadata !{i32 485, i32 0, metadata !197, null}
!1032 = metadata !{i32 486, i32 0, metadata !197, null}
!1033 = metadata !{i32 487, i32 0, metadata !197, null}
!1034 = metadata !{i32 858, i32 0, metadata !331, null}
!1035 = metadata !{i32 860, i32 0, metadata !331, null}
!1036 = metadata !{i32 863, i32 0, metadata !337, null}
!1037 = metadata !{i32 865, i32 0, metadata !337, null}
!1038 = metadata !{i32 866, i32 0, metadata !337, null}
!1039 = metadata !{i32 868, i32 0, metadata !342, null}
!1040 = metadata !{i32 786689, metadata !331, metadata !"fn", metadata !180, i32 16778074, metadata !184, i32 0, metadata !1041} ; [ DW_TAG_arg_variable ] [fn] [line 858]
!1041 = metadata !{i32 872, i32 0, metadata !342, null}
!1042 = metadata !{i32 858, i32 0, metadata !331, metadata !1041}
!1043 = metadata !{i8* getelementptr inbounds ([2 x i8]* @.str57, i64 0, i64 0)}
!1044 = metadata !{i32 786689, metadata !331, metadata !"mode", metadata !180, i32 33555290, metadata !184, i32 0, metadata !1041} ; [ DW_TAG_arg_variable ] [mode] [line 858]
!1045 = metadata !{i32 860, i32 0, metadata !331, metadata !1041}
!1046 = metadata !{i32 873, i32 0, metadata !342, null}
!1047 = metadata !{i32 786689, metadata !337, metadata !"fp", metadata !180, i32 16778079, metadata !183, i32 0, metadata !1048} ; [ DW_TAG_arg_variable ] [fp] [line 863]
!1048 = metadata !{i32 874, i32 0, metadata !342, null}
!1049 = metadata !{i32 863, i32 0, metadata !337, metadata !1048}
!1050 = metadata !{i32 865, i32 0, metadata !337, metadata !1048}
!1051 = metadata !{i32 875, i32 0, metadata !342, null}
!1052 = metadata !{i32 724, i32 0, metadata !909, null}
!1053 = metadata !{i32 726, i32 0, metadata !917, null}
!1054 = metadata !{i32 728, i32 0, metadata !917, null}
!1055 = metadata !{i32 730, i32 0, metadata !917, null}
!1056 = metadata !{i32 731, i32 0, metadata !917, null}
!1057 = metadata !{i32 4}
!1058 = metadata !{i32 734, i32 0, metadata !917, null}
!1059 = metadata !{metadata !"int", metadata !948}
!1060 = metadata !{i32 735, i32 0, metadata !917, null}
!1061 = metadata !{i32 736, i32 0, metadata !1062, null}
!1062 = metadata !{i32 786443, metadata !1, metadata !917, i32 735, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1063 = metadata !{i32 737, i32 0, metadata !1062, null}
!1064 = metadata !{i32 741, i32 0, metadata !1062, null}
!1065 = metadata !{i32 742, i32 0, metadata !1062, null}
!1066 = metadata !{i32 743, i32 0, metadata !1062, null}
!1067 = metadata !{i32 744, i32 0, metadata !1062, null}
!1068 = metadata !{i32 748, i32 0, metadata !1062, null}
!1069 = metadata !{i32 763, i32 0, metadata !917, null}
!1070 = metadata !{i32 747, i32 0, metadata !1062, null}
!1071 = metadata !{i32 755, i32 0, metadata !1072, null}
!1072 = metadata !{i32 786443, metadata !1, metadata !917, i32 754, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1073 = metadata !{i32 756, i32 0, metadata !1072, null}
!1074 = metadata !{i32 757, i32 0, metadata !1072, null}
!1075 = metadata !{i32 758, i32 0, metadata !1072, null}
!1076 = metadata !{i32 759, i32 0, metadata !1072, null}
!1077 = metadata !{i32 764, i32 0, metadata !917, null}
!1078 = metadata !{i32 767, i32 0, metadata !917, null}
!1079 = metadata !{i32 769, i32 0, metadata !917, null}
!1080 = metadata !{i32 770, i32 0, metadata !917, null}
!1081 = metadata !{i32 771, i32 0, metadata !917, null}
!1082 = metadata !{i32 772, i32 0, metadata !917, null}
!1083 = metadata !{i32 773, i32 0, metadata !917, null}
!1084 = metadata !{i32 774, i32 0, metadata !917, null}
!1085 = metadata !{i32 775, i32 0, metadata !917, null}
!1086 = metadata !{i32 776, i32 0, metadata !917, null}
!1087 = metadata !{i32 777, i32 0, metadata !917, null}
!1088 = metadata !{i32 778, i32 0, metadata !917, null}
!1089 = metadata !{i32 779, i32 0, metadata !917, null}
!1090 = metadata !{i32 780, i32 0, metadata !917, null}
!1091 = metadata !{i32 877, i32 0, metadata !364, null}
!1092 = metadata !{metadata !"float", metadata !948}
!1093 = metadata !{i32 878, i32 0, metadata !364, null}
!1094 = metadata !{i32 879, i32 0, metadata !364, null}
!1095 = metadata !{i32 786689, metadata !331, metadata !"fn", metadata !180, i32 16778074, metadata !184, i32 0, metadata !1096} ; [ DW_TAG_arg_variable ] [fn] [line 858]
!1096 = metadata !{i32 883, i32 0, metadata !364, null}
!1097 = metadata !{i32 858, i32 0, metadata !331, metadata !1096}
!1098 = metadata !{i8* getelementptr inbounds ([2 x i8]* @.str58, i64 0, i64 0)}
!1099 = metadata !{i32 786689, metadata !331, metadata !"mode", metadata !180, i32 33555290, metadata !184, i32 0, metadata !1096} ; [ DW_TAG_arg_variable ] [mode] [line 858]
!1100 = metadata !{i32 860, i32 0, metadata !331, metadata !1096}
!1101 = metadata !{i32 884, i32 0, metadata !364, null}
!1102 = metadata !{i32 786689, metadata !337, metadata !"fp", metadata !180, i32 16778079, metadata !183, i32 0, metadata !1103} ; [ DW_TAG_arg_variable ] [fp] [line 863]
!1103 = metadata !{i32 885, i32 0, metadata !364, null}
!1104 = metadata !{i32 863, i32 0, metadata !337, metadata !1103}
!1105 = metadata !{i32 865, i32 0, metadata !337, metadata !1103}
!1106 = metadata !{i32 886, i32 0, metadata !364, null}
!1107 = metadata !{i32 782, i32 0, metadata !686, null}
!1108 = metadata !{i32 783, i32 0, metadata !686, null}
!1109 = metadata !{i32 784, i32 0, metadata !686, null}
!1110 = metadata !{i32 786, i32 0, metadata !686, null}
!1111 = metadata !{i32 787, i32 0, metadata !686, null}
!1112 = metadata !{i32 788, i32 0, metadata !686, null}
!1113 = metadata !{i32 790, i32 0, metadata !686, null}
!1114 = metadata !{i32 791, i32 0, metadata !1115, null}
!1115 = metadata !{i32 786443, metadata !1, metadata !686, i32 790, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1116 = metadata !{i32 792, i32 0, metadata !1115, null}
!1117 = metadata !{i32 793, i32 0, metadata !1115, null}
!1118 = metadata !{i32 794, i32 0, metadata !1115, null}
!1119 = metadata !{i32 795, i32 0, metadata !1115, null}
!1120 = metadata !{i32 796, i32 0, metadata !1115, null}
!1121 = metadata !{i32 797, i32 0, metadata !1115, null}
!1122 = metadata !{i32 798, i32 0, metadata !1115, null}
!1123 = metadata !{i32 799, i32 0, metadata !1115, null}
!1124 = metadata !{i32 800, i32 0, metadata !1115, null}
!1125 = metadata !{i32 803, i32 0, metadata !686, null}
!1126 = metadata !{i32 805, i32 0, metadata !686, null}
!1127 = metadata !{i32 806, i32 0, metadata !1128, null}
!1128 = metadata !{i32 786443, metadata !1, metadata !686, i32 805, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1129 = metadata !{i32 807, i32 0, metadata !1128, null}
!1130 = metadata !{i32 808, i32 0, metadata !1128, null}
!1131 = metadata !{i32 809, i32 0, metadata !1128, null}
!1132 = metadata !{i32 814, i32 0, metadata !686, null}
!1133 = metadata !{i32 816, i32 0, metadata !686, null}
!1134 = metadata !{i32 815, i32 0, metadata !686, null}
!1135 = metadata !{i32 818, i32 0, metadata !686, null}
!1136 = metadata !{i32 819, i32 0, metadata !686, null}
!1137 = metadata !{i32 820, i32 0, metadata !686, null}
!1138 = metadata !{i32 821, i32 0, metadata !1139, null}
!1139 = metadata !{i32 786443, metadata !1, metadata !686, i32 820, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1140 = metadata !{i32 822, i32 0, metadata !1139, null}
!1141 = metadata !{i32 824, i32 0, metadata !1142, null}
!1142 = metadata !{i32 786443, metadata !1, metadata !1139, i32 823, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1143 = metadata !{i32 825, i32 0, metadata !1142, null}
!1144 = metadata !{i32 826, i32 0, metadata !1142, null}
!1145 = metadata !{i32 829, i32 0, metadata !686, null}
!1146 = metadata !{i32 831, i32 0, metadata !686, null}
!1147 = metadata !{i32 830, i32 0, metadata !686, null}
!1148 = metadata !{i32 832, i32 0, metadata !1149, null}
!1149 = metadata !{i32 786443, metadata !1, metadata !686, i32 831, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1150 = metadata !{i32 833, i32 0, metadata !1149, null}
!1151 = metadata !{i32 835, i32 0, metadata !1152, null}
!1152 = metadata !{i32 786443, metadata !1, metadata !1149, i32 834, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1153 = metadata !{i32 836, i32 0, metadata !1152, null}
!1154 = metadata !{i32 839, i32 0, metadata !686, null}
!1155 = metadata !{i32 841, i32 0, metadata !686, null}
!1156 = metadata !{i32 840, i32 0, metadata !686, null}
!1157 = metadata !{i32 843, i32 0, metadata !686, null}
!1158 = metadata !{i32 845, i32 0, metadata !686, null}
!1159 = metadata !{i32 844, i32 0, metadata !686, null}
!1160 = metadata !{i32 847, i32 0, metadata !686, null}
!1161 = metadata !{i32 849, i32 0, metadata !686, null}
!1162 = metadata !{i32 848, i32 0, metadata !686, null}
!1163 = metadata !{i32 850, i32 0, metadata !686, null}
!1164 = metadata !{i32 888, i32 0, metadata !614, null}
!1165 = metadata !{i32 889, i32 0, metadata !614, null}
!1166 = metadata !{i32 890, i32 0, metadata !614, null}
!1167 = metadata !{i32 786689, metadata !331, metadata !"fn", metadata !180, i32 16778074, metadata !184, i32 0, metadata !1168} ; [ DW_TAG_arg_variable ] [fn] [line 858]
!1168 = metadata !{i32 894, i32 0, metadata !614, null}
!1169 = metadata !{i32 858, i32 0, metadata !331, metadata !1168}
!1170 = metadata !{i32 786689, metadata !331, metadata !"mode", metadata !180, i32 33555290, metadata !184, i32 0, metadata !1168} ; [ DW_TAG_arg_variable ] [mode] [line 858]
!1171 = metadata !{i32 860, i32 0, metadata !331, metadata !1168}
!1172 = metadata !{i32 895, i32 0, metadata !614, null}
!1173 = metadata !{i32 786689, metadata !337, metadata !"fp", metadata !180, i32 16778079, metadata !183, i32 0, metadata !1174} ; [ DW_TAG_arg_variable ] [fp] [line 863]
!1174 = metadata !{i32 896, i32 0, metadata !614, null}
!1175 = metadata !{i32 863, i32 0, metadata !337, metadata !1174}
!1176 = metadata !{i32 865, i32 0, metadata !337, metadata !1174}
!1177 = metadata !{i32 897, i32 0, metadata !614, null}
!1178 = metadata !{i32 899, i32 0, metadata !630, null}
!1179 = metadata !{i32 900, i32 0, metadata !630, null}
!1180 = metadata !{i32 901, i32 0, metadata !630, null}
!1181 = metadata !{i32 903, i32 0, metadata !630, null}
!1182 = metadata !{i32 904, i32 0, metadata !630, null}
!1183 = metadata !{i32 907, i32 0, metadata !645, null}
!1184 = metadata !{i32 908, i32 0, metadata !645, null}
!1185 = metadata !{i32 909, i32 0, metadata !645, null}
!1186 = metadata !{i32 911, i32 0, metadata !645, null}
!1187 = metadata !{i32 912, i32 0, metadata !645, null}
!1188 = metadata !{i32 914, i32 0, metadata !660, null}
!1189 = metadata !{i32 916, i32 0, metadata !660, null}
!1190 = metadata !{i32 920, i32 0, metadata !1191, null}
!1191 = metadata !{i32 786443, metadata !1, metadata !660, i32 916, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1192 = metadata !{i32 922, i32 0, metadata !660, null}
!1193 = metadata !{i32 926, i32 0, metadata !665, null}
!1194 = metadata !{i32 927, i32 0, metadata !665, null}
!1195 = metadata !{i32 929, i32 0, metadata !665, null}
!1196 = metadata !{i32 930, i32 0, metadata !665, null}
!1197 = metadata !{i32 931, i32 0, metadata !665, null}
!1198 = metadata !{i32 786689, metadata !660, metadata !"file", metadata !180, i32 16778130, metadata !184, i32 0, metadata !1199} ; [ DW_TAG_arg_variable ] [file] [line 914]
!1199 = metadata !{i32 934, i32 0, metadata !665, null}
!1200 = metadata !{i32 914, i32 0, metadata !660, metadata !1199}
!1201 = metadata !{i32 916, i32 0, metadata !660, metadata !1199}
!1202 = metadata !{i32 920, i32 0, metadata !1191, metadata !1199}
!1203 = metadata !{i32 935, i32 0, metadata !665, null}
!1204 = metadata !{i32 786689, metadata !342, metadata !"fn", metadata !180, i32 16778084, metadata !184, i32 0, metadata !1205} ; [ DW_TAG_arg_variable ] [fn] [line 868]
!1205 = metadata !{i32 936, i32 0, metadata !1206, null}
!1206 = metadata !{i32 786443, metadata !1, metadata !665, i32 935, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1207 = metadata !{i32 868, i32 0, metadata !342, metadata !1205}
!1208 = metadata !{i32 786689, metadata !342, metadata !"tpx", metadata !180, i32 33555300, metadata !345, i32 0, metadata !1205} ; [ DW_TAG_arg_variable ] [tpx] [line 868]
!1209 = metadata !{i32 786689, metadata !331, metadata !"fn", metadata !180, i32 16778074, metadata !184, i32 0, metadata !1210} ; [ DW_TAG_arg_variable ] [fn] [line 858]
!1210 = metadata !{i32 872, i32 0, metadata !342, metadata !1205}
!1211 = metadata !{i32 858, i32 0, metadata !331, metadata !1210}
!1212 = metadata !{i32 786689, metadata !331, metadata !"mode", metadata !180, i32 33555290, metadata !184, i32 0, metadata !1210} ; [ DW_TAG_arg_variable ] [mode] [line 858]
!1213 = metadata !{i32 860, i32 0, metadata !331, metadata !1210}
!1214 = metadata !{i32 786688, metadata !342, metadata !"fp", metadata !180, i32 870, metadata !183, i32 0, metadata !1205} ; [ DW_TAG_auto_variable ] [fp] [line 870]
!1215 = metadata !{i32 873, i32 0, metadata !342, metadata !1205}
!1216 = metadata !{i32 786689, metadata !337, metadata !"fp", metadata !180, i32 16778079, metadata !183, i32 0, metadata !1217} ; [ DW_TAG_arg_variable ] [fp] [line 863]
!1217 = metadata !{i32 874, i32 0, metadata !342, metadata !1205}
!1218 = metadata !{i32 863, i32 0, metadata !337, metadata !1217}
!1219 = metadata !{i32 865, i32 0, metadata !337, metadata !1217}
!1220 = metadata !{i32 937, i32 0, metadata !1206, null}
!1221 = metadata !{i32 938, i32 0, metadata !1206, null}
!1222 = metadata !{i32 939, i32 0, metadata !1206, null}
!1223 = metadata !{i32 940, i32 0, metadata !1206, null}
!1224 = metadata !{i32 941, i32 0, metadata !1206, null}
!1225 = metadata !{i32 786689, metadata !614, metadata !"fn", metadata !180, i32 16778104, metadata !184, i32 0, metadata !1224} ; [ DW_TAG_arg_variable ] [fn] [line 888]
!1226 = metadata !{i32 888, i32 0, metadata !614, metadata !1224}
!1227 = metadata !{i32 786689, metadata !614, metadata !"step", metadata !180, i32 33555320, metadata !475, i32 0, metadata !1224} ; [ DW_TAG_arg_variable ] [step] [line 888]
!1228 = metadata !{i32 786689, metadata !614, metadata !"t", metadata !180, i32 50332536, metadata !464, i32 0, metadata !1224} ; [ DW_TAG_arg_variable ] [t] [line 888]
!1229 = metadata !{i32 786689, metadata !614, metadata !"lambda", metadata !180, i32 67109752, metadata !464, i32 0, metadata !1224} ; [ DW_TAG_arg_variable ] [lambda] [line 888]
!1230 = metadata !{%struct.t_inputrec* null}
!1231 = metadata !{i32 786689, metadata !614, metadata !"ir", metadata !180, i32 83886969, metadata !367, i32 0, metadata !1224} ; [ DW_TAG_arg_variable ] [ir] [line 889]
!1232 = metadata !{i32 889, i32 0, metadata !614, metadata !1224}
!1233 = metadata !{i32 786689, metadata !614, metadata !"box", metadata !180, i32 100664185, metadata !468, i32 0, metadata !1224} ; [ DW_TAG_arg_variable ] [box] [line 889]
!1234 = metadata !{i32 786689, metadata !614, metadata !"natoms", metadata !180, i32 117441401, metadata !475, i32 0, metadata !1224} ; [ DW_TAG_arg_variable ] [natoms] [line 889]
!1235 = metadata !{i32 786689, metadata !614, metadata !"x", metadata !180, i32 134218618, metadata !468, i32 0, metadata !1224} ; [ DW_TAG_arg_variable ] [x] [line 890]
!1236 = metadata !{i32 890, i32 0, metadata !614, metadata !1224}
!1237 = metadata !{i32 786689, metadata !614, metadata !"v", metadata !180, i32 150995834, metadata !468, i32 0, metadata !1224} ; [ DW_TAG_arg_variable ] [v] [line 890]
!1238 = metadata !{[3 x float]* null}
!1239 = metadata !{i32 786689, metadata !614, metadata !"f", metadata !180, i32 167773050, metadata !468, i32 0, metadata !1224} ; [ DW_TAG_arg_variable ] [f] [line 890]
!1240 = metadata !{i32 786689, metadata !614, metadata !"top", metadata !180, i32 184550266, metadata !485, i32 0, metadata !1224} ; [ DW_TAG_arg_variable ] [top] [line 890]
!1241 = metadata !{i32 786689, metadata !331, metadata !"fn", metadata !180, i32 16778074, metadata !184, i32 0, metadata !1242} ; [ DW_TAG_arg_variable ] [fn] [line 858]
!1242 = metadata !{i32 894, i32 0, metadata !614, metadata !1224}
!1243 = metadata !{i32 858, i32 0, metadata !331, metadata !1242}
!1244 = metadata !{i32 786689, metadata !331, metadata !"mode", metadata !180, i32 33555290, metadata !184, i32 0, metadata !1242} ; [ DW_TAG_arg_variable ] [mode] [line 858]
!1245 = metadata !{i32 860, i32 0, metadata !331, metadata !1242}
!1246 = metadata !{i32 786688, metadata !614, metadata !"fp", metadata !180, i32 892, metadata !183, i32 0, metadata !1224} ; [ DW_TAG_auto_variable ] [fp] [line 892]
!1247 = metadata !{i32 895, i32 0, metadata !614, metadata !1224}
!1248 = metadata !{i32 786689, metadata !337, metadata !"fp", metadata !180, i32 16778079, metadata !183, i32 0, metadata !1249} ; [ DW_TAG_arg_variable ] [fp] [line 863]
!1249 = metadata !{i32 896, i32 0, metadata !614, metadata !1224}
!1250 = metadata !{i32 863, i32 0, metadata !337, metadata !1249}
!1251 = metadata !{i32 865, i32 0, metadata !337, metadata !1249}
!1252 = metadata !{i32 943, i32 0, metadata !1206, null}
!1253 = metadata !{i32 944, i32 0, metadata !1206, null}
!1254 = metadata !{i32 946, i32 0, metadata !1255, null}
!1255 = metadata !{i32 786443, metadata !1, metadata !665, i32 945, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1256 = metadata !{i32 947, i32 0, metadata !1255, null}
!1257 = metadata !{i32 949, i32 0, metadata !1255, null}
!1258 = metadata !{i32 950, i32 0, metadata !1255, null}
!1259 = metadata !{i32 951, i32 0, metadata !1255, null}
!1260 = metadata !{i32 952, i32 0, metadata !1255, null}
!1261 = metadata !{i32 957, i32 0, metadata !1255, null}
!1262 = metadata !{i32 958, i32 0, metadata !1263, null}
!1263 = metadata !{i32 786443, metadata !1, metadata !1255, i32 958, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1264 = metadata !{i32 960, i32 0, metadata !1263, null}
!1265 = metadata !{i32 962, i32 0, metadata !1255, null}
!1266 = metadata !{i32 966, i32 0, metadata !665, null}
!1267 = metadata !{i32 118, i32 0, metadata !840, null}
!1268 = metadata !{i32 120, i32 0, metadata !840, null}
!1269 = metadata !{i32 1}
!1270 = metadata !{i32 121, i32 0, metadata !840, null}
!1271 = metadata !{i32 123, i32 0, metadata !840, null}
!1272 = metadata !{i32 125, i32 0, metadata !840, null}
!1273 = metadata !{i32 127, i32 0, metadata !1274, null}
!1274 = metadata !{i32 786443, metadata !1, metadata !840, i32 125, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1275 = metadata !{i32 131, i32 0, metadata !840, null}
!1276 = metadata !{i32 133, i32 0, metadata !859, null}
!1277 = metadata !{i32 134, i32 0, metadata !859, null}
!1278 = metadata !{i32 135, i32 0, metadata !859, null}
!1279 = metadata !{i32 136, i32 0, metadata !859, null}
!1280 = metadata !{i32 137, i32 0, metadata !859, null}
!1281 = metadata !{i32 138, i32 0, metadata !859, null}
!1282 = metadata !{i32 139, i32 0, metadata !859, null}
!1283 = metadata !{i32 140, i32 0, metadata !859, null}
!1284 = metadata !{i32 141, i32 0, metadata !859, null}
!1285 = metadata !{i32 142, i32 0, metadata !859, null}
!1286 = metadata !{i32 143, i32 0, metadata !859, null}
!1287 = metadata !{i32 144, i32 0, metadata !859, null}
!1288 = metadata !{i32 145, i32 0, metadata !859, null}
!1289 = metadata !{i32 146, i32 0, metadata !859, null}
!1290 = metadata !{i32 147, i32 0, metadata !859, null}
!1291 = metadata !{i32 148, i32 0, metadata !859, null}
!1292 = metadata !{i32 149, i32 0, metadata !859, null}
!1293 = metadata !{i32 150, i32 0, metadata !859, null}
!1294 = metadata !{i32 151, i32 0, metadata !859, null}
!1295 = metadata !{i32 152, i32 0, metadata !859, null}
!1296 = metadata !{i32 153, i32 0, metadata !859, null}
!1297 = metadata !{i32 154, i32 0, metadata !859, null}
!1298 = metadata !{i32 155, i32 0, metadata !1299, null}
!1299 = metadata !{i32 786443, metadata !1, metadata !859, i32 154, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1300 = metadata !{i32 156, i32 0, metadata !1299, null}
!1301 = metadata !{i32 158, i32 0, metadata !859, null}
!1302 = metadata !{i32 159, i32 0, metadata !859, null}
!1303 = metadata !{i32 160, i32 0, metadata !859, null}
!1304 = metadata !{i32 161, i32 0, metadata !859, null}
!1305 = metadata !{i32 162, i32 0, metadata !859, null}
!1306 = metadata !{i32 163, i32 0, metadata !859, null}
!1307 = metadata !{i32 164, i32 0, metadata !859, null}
!1308 = metadata !{i32 165, i32 0, metadata !859, null}
!1309 = metadata !{i32 166, i32 0, metadata !859, null}
!1310 = metadata !{i32 167, i32 0, metadata !859, null}
!1311 = metadata !{i32 168, i32 0, metadata !859, null}
!1312 = metadata !{i32 169, i32 0, metadata !859, null}
!1313 = metadata !{i32 170, i32 0, metadata !859, null}
!1314 = metadata !{i32 171, i32 0, metadata !859, null}
!1315 = metadata !{i32 172, i32 0, metadata !859, null}
!1316 = metadata !{i32 173, i32 0, metadata !859, null}
!1317 = metadata !{i32 175, i32 0, metadata !859, null}
!1318 = metadata !{i32 176, i32 0, metadata !859, null}
!1319 = metadata !{i32 178, i32 0, metadata !859, null}
!1320 = metadata !{i32 180, i32 0, metadata !859, null}
!1321 = metadata !{i32 181, i32 0, metadata !1322, null}
!1322 = metadata !{i32 786443, metadata !1, metadata !859, i32 180, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1323 = metadata !{i32 182, i32 0, metadata !1322, null}
!1324 = metadata !{i32 183, i32 0, metadata !1322, null}
!1325 = metadata !{i32 186, i32 0, metadata !859, null}
!1326 = metadata !{i32 188, i32 0, metadata !859, null}
!1327 = metadata !{i32 189, i32 0, metadata !859, null}
!1328 = metadata !{i32 190, i32 0, metadata !859, null}
!1329 = metadata !{i32 195, i32 0, metadata !859, null}
!1330 = metadata !{i32 196, i32 0, metadata !859, null}
!1331 = metadata !{i32 197, i32 0, metadata !859, null}
!1332 = metadata !{i32 198, i32 0, metadata !1333, null}
!1333 = metadata !{i32 786443, metadata !1, metadata !859, i32 197, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1334 = metadata !{i32 199, i32 0, metadata !1333, null}
!1335 = metadata !{i32 200, i32 0, metadata !1336, null}
!1336 = metadata !{i32 786443, metadata !1, metadata !1333, i32 199, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1337 = metadata !{i32 201, i32 0, metadata !1336, null}
!1338 = metadata !{i32 202, i32 0, metadata !1336, null}
!1339 = metadata !{i32 204, i32 0, metadata !1333, null}
!1340 = metadata !{i32 206, i32 0, metadata !1333, null}
!1341 = metadata !{i32 207, i32 0, metadata !1342, null}
!1342 = metadata !{i32 786443, metadata !1, metadata !1333, i32 206, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1343 = metadata !{i32 208, i32 0, metadata !1342, null}
!1344 = metadata !{i32 209, i32 0, metadata !1342, null}
!1345 = metadata !{i32 211, i32 0, metadata !1333, null}
!1346 = metadata !{i32 214, i32 0, metadata !1347, null}
!1347 = metadata !{i32 786443, metadata !1, metadata !859, i32 213, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1348 = metadata !{i32 215, i32 0, metadata !1347, null}
!1349 = metadata !{i32 217, i32 0, metadata !859, null}
!1350 = metadata !{i32 218, i32 0, metadata !859, null}
!1351 = metadata !{i32 219, i32 0, metadata !1352, null}
!1352 = metadata !{i32 786443, metadata !1, metadata !859, i32 218, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1353 = metadata !{i32 220, i32 0, metadata !1352, null}
!1354 = metadata !{i32 786689, metadata !899, metadata !"a", metadata !901, i32 16777550, metadata !669, i32 0, metadata !1353} ; [ DW_TAG_arg_variable ] [a] [line 334]
!1355 = metadata !{i32 334, i32 0, metadata !899, metadata !1353}
!1356 = metadata !{float 0.000000e+00}
!1357 = metadata !{i32 786688, metadata !907, metadata !"nul", metadata !901, i32 336, metadata !908, i32 0, metadata !1353} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!1358 = metadata !{i32 336, i32 0, metadata !907, metadata !1353}
!1359 = metadata !{i32 341, i32 0, metadata !907, metadata !1353}
!1360 = metadata !{i32 338, i32 0, metadata !907, metadata !1353}
!1361 = metadata !{i32 221, i32 0, metadata !1362, null}
!1362 = metadata !{i32 786443, metadata !1, metadata !1352, i32 221, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1363 = metadata !{i32 222, i32 0, metadata !1362, null}
!1364 = metadata !{i32 224, i32 0, metadata !1365, null}
!1365 = metadata !{i32 786443, metadata !1, metadata !859, i32 223, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1366 = metadata !{i32 225, i32 0, metadata !1365, null}
!1367 = metadata !{i32 226, i32 0, metadata !1365, null}
!1368 = metadata !{i32 228, i32 0, metadata !859, null}
!1369 = metadata !{i32 229, i32 0, metadata !1370, null}
!1370 = metadata !{i32 786443, metadata !1, metadata !859, i32 228, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1371 = metadata !{i32 230, i32 0, metadata !1370, null}
!1372 = metadata !{i32 786689, metadata !899, metadata !"a", metadata !901, i32 16777550, metadata !669, i32 0, metadata !1371} ; [ DW_TAG_arg_variable ] [a] [line 334]
!1373 = metadata !{i32 334, i32 0, metadata !899, metadata !1371}
!1374 = metadata !{i32 786688, metadata !907, metadata !"nul", metadata !901, i32 336, metadata !908, i32 0, metadata !1371} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!1375 = metadata !{i32 336, i32 0, metadata !907, metadata !1371}
!1376 = metadata !{i32 341, i32 0, metadata !907, metadata !1371}
!1377 = metadata !{i32 338, i32 0, metadata !907, metadata !1371}
!1378 = metadata !{i32 231, i32 0, metadata !1379, null}
!1379 = metadata !{i32 786443, metadata !1, metadata !1370, i32 231, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1380 = metadata !{i32 232, i32 0, metadata !1379, null}
!1381 = metadata !{i32 235, i32 0, metadata !1382, null}
!1382 = metadata !{i32 786443, metadata !1, metadata !859, i32 234, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1383 = metadata !{i32 236, i32 0, metadata !1382, null}
!1384 = metadata !{i32 237, i32 0, metadata !1382, null}
!1385 = metadata !{i32 239, i32 0, metadata !859, null}
!1386 = metadata !{i32 240, i32 0, metadata !859, null}
!1387 = metadata !{i32 241, i32 0, metadata !859, null}
!1388 = metadata !{i32 242, i32 0, metadata !859, null}
!1389 = metadata !{i32 243, i32 0, metadata !859, null}
!1390 = metadata !{i32 244, i32 0, metadata !859, null}
!1391 = metadata !{i32 245, i32 0, metadata !859, null}
!1392 = metadata !{i32 246, i32 0, metadata !859, null}
!1393 = metadata !{i32 247, i32 0, metadata !859, null}
!1394 = metadata !{i32 248, i32 0, metadata !859, null}
!1395 = metadata !{i32 249, i32 0, metadata !859, null}
!1396 = metadata !{i32 250, i32 0, metadata !859, null}
!1397 = metadata !{i32 252, i32 0, metadata !859, null}
!1398 = metadata !{i32 253, i32 0, metadata !859, null}
!1399 = metadata !{i32 254, i32 0, metadata !859, null}
!1400 = metadata !{i32 257, i32 0, metadata !859, null}
!1401 = metadata !{i32 256, i32 0, metadata !859, null}
!1402 = metadata !{i32 258, i32 0, metadata !859, null}
!1403 = metadata !{i32 259, i32 0, metadata !1404, null}
!1404 = metadata !{i32 786443, metadata !1, metadata !859, i32 258, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1405 = metadata !{i32 260, i32 0, metadata !1404, null}
!1406 = metadata !{i32 262, i32 0, metadata !1404, null}
!1407 = metadata !{i32 264, i32 0, metadata !859, null}
!1408 = metadata !{i32 265, i32 0, metadata !859, null}
!1409 = metadata !{i32 266, i32 0, metadata !859, null}
!1410 = metadata !{i32 267, i32 0, metadata !859, null}
!1411 = metadata !{i32 268, i32 0, metadata !859, null}
!1412 = metadata !{i32 269, i32 0, metadata !1413, null}
!1413 = metadata !{i32 786443, metadata !1, metadata !859, i32 268, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1414 = metadata !{i32 270, i32 0, metadata !1413, null}
!1415 = metadata !{i32 271, i32 0, metadata !1413, null}
!1416 = metadata !{i32 277, i32 0, metadata !859, null}
!1417 = metadata !{i32 273, i32 0, metadata !1418, null}
!1418 = metadata !{i32 786443, metadata !1, metadata !859, i32 272, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1419 = metadata !{i32 274, i32 0, metadata !1418, null}
!1420 = metadata !{i32 275, i32 0, metadata !1418, null}
!1421 = metadata !{i32 278, i32 0, metadata !859, null}
!1422 = metadata !{i32 279, i32 0, metadata !859, null}
!1423 = metadata !{i32 280, i32 0, metadata !859, null}
!1424 = metadata !{i32 281, i32 0, metadata !859, null}
!1425 = metadata !{i32 282, i32 0, metadata !859, null}
!1426 = metadata !{i32 283, i32 0, metadata !859, null}
!1427 = metadata !{i32 284, i32 0, metadata !859, null}
!1428 = metadata !{i32 285, i32 0, metadata !859, null}
!1429 = metadata !{i32 286, i32 0, metadata !1430, null}
!1430 = metadata !{i32 786443, metadata !1, metadata !859, i32 285, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1431 = metadata !{i32 287, i32 0, metadata !1430, null}
!1432 = metadata !{i32 289, i32 0, metadata !1430, null}
!1433 = metadata !{i32 290, i32 0, metadata !859, null}
!1434 = metadata !{i32 291, i32 0, metadata !859, null}
!1435 = metadata !{i32 294, i32 0, metadata !859, null}
!1436 = metadata !{i32 293, i32 0, metadata !859, null}
!1437 = metadata !{i32 295, i32 0, metadata !859, null}
!1438 = metadata !{i32 296, i32 0, metadata !859, null}
!1439 = metadata !{i32 297, i32 0, metadata !859, null}
!1440 = metadata !{i32 298, i32 0, metadata !859, null}
!1441 = metadata !{i32 299, i32 0, metadata !859, null}
!1442 = metadata !{i32 300, i32 0, metadata !859, null}
!1443 = metadata !{i32 301, i32 0, metadata !859, null}
!1444 = metadata !{i32 302, i32 0, metadata !859, null}
!1445 = metadata !{i32 303, i32 0, metadata !859, null}
!1446 = metadata !{i32 304, i32 0, metadata !859, null}
!1447 = metadata !{i32 305, i32 0, metadata !859, null}
!1448 = metadata !{i32 306, i32 0, metadata !859, null}
!1449 = metadata !{i32 307, i32 0, metadata !859, null}
!1450 = metadata !{i32 308, i32 0, metadata !859, null}
!1451 = metadata !{i32 309, i32 0, metadata !859, null}
!1452 = metadata !{i32 310, i32 0, metadata !859, null}
!1453 = metadata !{i32 311, i32 0, metadata !859, null}
!1454 = metadata !{i32 312, i32 0, metadata !859, null}
!1455 = metadata !{i32 313, i32 0, metadata !859, null}
!1456 = metadata !{i32 316, i32 0, metadata !859, null}
!1457 = metadata !{i32 317, i32 0, metadata !859, null}
!1458 = metadata !{i32 318, i32 0, metadata !859, null}
!1459 = metadata !{i32 319, i32 0, metadata !859, null}
!1460 = metadata !{i32 321, i32 0, metadata !1461, null}
!1461 = metadata !{i32 786443, metadata !1, metadata !859, i32 320, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1462 = metadata !{i32 322, i32 0, metadata !1461, null}
!1463 = metadata !{i32 323, i32 0, metadata !1461, null}
!1464 = metadata !{i32 324, i32 0, metadata !1461, null}
!1465 = metadata !{i32 325, i32 0, metadata !1461, null}
!1466 = metadata !{i32 326, i32 0, metadata !1461, null}
!1467 = metadata !{i32 327, i32 0, metadata !1461, null}
!1468 = metadata !{i32 328, i32 0, metadata !859, null}
!1469 = metadata !{i32 329, i32 0, metadata !858, null}
!1470 = metadata !{i32 336, i32 0, metadata !861, null}
!1471 = metadata !{i32 336, i32 0, metadata !862, null}
!1472 = metadata !{i32 330, i32 0, metadata !857, null}
!1473 = metadata !{i32 331, i32 0, metadata !856, null}
!1474 = metadata !{i32 331, i32 0, metadata !855, null}
!1475 = metadata !{i32 331, i32 0, metadata !854, null}
!1476 = metadata !{i32 332, i32 0, metadata !1477, null}
!1477 = metadata !{i32 786443, metadata !1, metadata !857, i32 332, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1478 = metadata !{i32 333, i32 0, metadata !1477, null}
!1479 = metadata !{i32 334, i32 0, metadata !857, null}
!1480 = metadata !{i32 338, i32 0, metadata !867, null}
!1481 = metadata !{i32 335, i32 0, metadata !857, null}
!1482 = metadata !{i32 338, i32 0, metadata !866, null}
!1483 = metadata !{i32 339, i32 0, metadata !871, null}
!1484 = metadata !{i32 339, i32 0, metadata !870, null}
!1485 = metadata !{i32 341, i32 0, metadata !859, null}
!1486 = metadata !{i32 342, i32 0, metadata !874, null}
!1487 = metadata !{i32 342, i32 0, metadata !875, null}
!1488 = metadata !{i32 343, i32 0, metadata !859, null}
!1489 = metadata !{i32 344, i32 0, metadata !859, null}
!1490 = metadata !{i32 345, i32 0, metadata !859, null}
!1491 = metadata !{i32 346, i32 0, metadata !879, null}
!1492 = metadata !{i32 346, i32 0, metadata !878, null}
!1493 = metadata !{i32 361, i32 0, metadata !896, null}
!1494 = metadata !{i32 360, i32 0, metadata !892, null}
!1495 = metadata !{i32 359, i32 0, metadata !888, null}
!1496 = metadata !{i32 358, i32 0, metadata !882, null}
!1497 = metadata !{i32 349, i32 0, metadata !886, null}
!1498 = metadata !{i32 350, i32 0, metadata !885, null}
!1499 = metadata !{i32 351, i32 0, metadata !885, null}
!1500 = metadata !{i32 353, i32 0, metadata !1501, null}
!1501 = metadata !{i32 786443, metadata !1, metadata !885, i32 352, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1502 = metadata !{i32 354, i32 0, metadata !1501, null}
!1503 = metadata !{i32 355, i32 0, metadata !1501, null}
!1504 = metadata !{i32 356, i32 0, metadata !1501, null}
!1505 = metadata !{i32 357, i32 0, metadata !1501, null}
!1506 = metadata !{i32 358, i32 0, metadata !883, null}
!1507 = metadata !{i32 359, i32 0, metadata !889, null}
!1508 = metadata !{i32 360, i32 0, metadata !893, null}
!1509 = metadata !{i32 361, i32 0, metadata !897, null}
!1510 = metadata !{i32 364, i32 0, metadata !840, null}
!1511 = metadata !{i32 708, i32 0, metadata !705, null}
!1512 = metadata !{i32 712, i32 0, metadata !705, null}
!1513 = metadata !{i32 786689, metadata !830, metadata !"symtab", metadata !180, i32 16777870, metadata !783, i32 0, metadata !1512} ; [ DW_TAG_arg_variable ] [symtab] [line 654]
!1514 = metadata !{i32 654, i32 0, metadata !830, metadata !1512}
!1515 = metadata !{i32 786689, metadata !830, metadata !"bRead", metadata !180, i32 33555086, metadata !183, i32 0, metadata !1512} ; [ DW_TAG_arg_variable ] [bRead] [line 654]
!1516 = metadata !{i32 658, i32 0, metadata !830, metadata !1512}
!1517 = metadata !{i32 660, i32 0, metadata !830, metadata !1512}
!1518 = metadata !{i32 661, i32 0, metadata !830, metadata !1512}
!1519 = metadata !{i32 786688, metadata !830, metadata !"nr", metadata !180, i32 656, metadata !183, i32 0, metadata !1512} ; [ DW_TAG_auto_variable ] [nr] [line 656]
!1520 = metadata !{i32 663, i32 0, metadata !1521, metadata !1512}
!1521 = metadata !{i32 786443, metadata !1, metadata !830, i32 662, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1522 = metadata !{i32 786688, metadata !830, metadata !"symbuf", metadata !180, i32 657, metadata !593, i32 0, metadata !1512} ; [ DW_TAG_auto_variable ] [symbuf] [line 657]
!1523 = metadata !{i32 664, i32 0, metadata !1521, metadata !1512}
!1524 = metadata !{i32 665, i32 0, metadata !1521, metadata !1512}
!1525 = metadata !{i32 666, i32 0, metadata !1521, metadata !1512}
!1526 = metadata !{i32 786688, metadata !830, metadata !"i", metadata !180, i32 656, metadata !183, i32 0, metadata !1512} ; [ DW_TAG_auto_variable ] [i] [line 656]
!1527 = metadata !{i32 667, i32 0, metadata !1528, metadata !1512}
!1528 = metadata !{i32 786443, metadata !1, metadata !1521, i32 667, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1529 = metadata !{i32 668, i32 0, metadata !1530, metadata !1512}
!1530 = metadata !{i32 786443, metadata !1, metadata !1528, i32 667, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1531 = metadata !{i32 669, i32 0, metadata !1530, metadata !1512}
!1532 = metadata !{i32 673, i32 0, metadata !1533, metadata !1512}
!1533 = metadata !{i32 786443, metadata !1, metadata !830, i32 672, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1534 = metadata !{i32 674, i32 0, metadata !1533, metadata !1512}
!1535 = metadata !{i32 675, i32 0, metadata !1536, metadata !1512}
!1536 = metadata !{i32 786443, metadata !1, metadata !1537, i32 675, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1537 = metadata !{i32 786443, metadata !1, metadata !1533, i32 674, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1538 = metadata !{i32 676, i32 0, metadata !1536, metadata !1512}
!1539 = metadata !{i32 677, i32 0, metadata !1537, metadata !1512}
!1540 = metadata !{i32 678, i32 0, metadata !1537, metadata !1512}
!1541 = metadata !{i32 680, i32 0, metadata !1533, metadata !1512}
!1542 = metadata !{i32 681, i32 0, metadata !1533, metadata !1512}
!1543 = metadata !{i32 683, i32 0, metadata !830, metadata !1512}
!1544 = metadata !{i32 713, i32 0, metadata !705, null}
!1545 = metadata !{i32 714, i32 0, metadata !705, null}
!1546 = metadata !{i32 786689, metadata !780, metadata !"atoms", metadata !180, i32 16777834, metadata !715, i32 0, metadata !1545} ; [ DW_TAG_arg_variable ] [atoms] [line 618]
!1547 = metadata !{i32 618, i32 0, metadata !780, metadata !1545}
!1548 = metadata !{i32 786689, metadata !780, metadata !"bRead", metadata !180, i32 33555050, metadata !183, i32 0, metadata !1545} ; [ DW_TAG_arg_variable ] [bRead] [line 618]
!1549 = metadata !{i32 786689, metadata !780, metadata !"symtab", metadata !180, i32 50332266, metadata !783, i32 0, metadata !1545} ; [ DW_TAG_arg_variable ] [symtab] [line 618]
!1550 = metadata !{i32 622, i32 0, metadata !780, metadata !1545}
!1551 = metadata !{i32 623, i32 0, metadata !780, metadata !1545}
!1552 = metadata !{i32 624, i32 0, metadata !780, metadata !1545}
!1553 = metadata !{i32 634, i32 0, metadata !1554, metadata !1545}
!1554 = metadata !{i32 786443, metadata !1, metadata !780, i32 634, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1555 = metadata !{i32 626, i32 0, metadata !1556, metadata !1545}
!1556 = metadata !{i32 786443, metadata !1, metadata !780, i32 625, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1557 = metadata !{i32 627, i32 0, metadata !1556, metadata !1545}
!1558 = metadata !{i32 628, i32 0, metadata !1556, metadata !1545}
!1559 = metadata !{i32 629, i32 0, metadata !1556, metadata !1545}
!1560 = metadata !{i32 630, i32 0, metadata !1556, metadata !1545}
!1561 = metadata !{i32 631, i32 0, metadata !1556, metadata !1545}
!1562 = metadata !{i32 632, i32 0, metadata !1556, metadata !1545}
!1563 = metadata !{i32 633, i32 0, metadata !1556, metadata !1545}
!1564 = metadata !{i32 635, i32 0, metadata !1554, metadata !1545}
!1565 = metadata !{i32 9}
!1566 = metadata !{i32 786689, metadata !815, metadata !"ngrp", metadata !180, i32 33554992, metadata !183, i32 0, metadata !1564} ; [ DW_TAG_arg_variable ] [ngrp] [line 560]
!1567 = metadata !{i32 560, i32 0, metadata !815, metadata !1564}
!1568 = metadata !{i32 562, i32 0, metadata !815, metadata !1564}
!1569 = metadata !{i32 563, i32 0, metadata !815, metadata !1564}
!1570 = metadata !{i32 564, i32 0, metadata !815, metadata !1564}
!1571 = metadata !{i32 565, i32 0, metadata !815, metadata !1564}
!1572 = metadata !{i32 566, i32 0, metadata !815, metadata !1564}
!1573 = metadata !{i32 567, i32 0, metadata !815, metadata !1564}
!1574 = metadata !{i32 568, i32 0, metadata !815, metadata !1564}
!1575 = metadata !{i32 569, i32 0, metadata !815, metadata !1564}
!1576 = metadata !{i32 570, i32 0, metadata !815, metadata !1564}
!1577 = metadata !{i32 8}
!1578 = metadata !{i32 571, i32 0, metadata !1579, metadata !1564}
!1579 = metadata !{i32 786443, metadata !1, metadata !815, i32 570, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1580 = metadata !{i32 572, i32 0, metadata !1579, metadata !1564}
!1581 = metadata !{i32 573, i32 0, metadata !1579, metadata !1564}
!1582 = metadata !{i32 574, i32 0, metadata !815, metadata !1564}
!1583 = metadata !{i32 636, i32 0, metadata !780, metadata !1545}
!1584 = metadata !{i32 786689, metadata !806, metadata !"nstr", metadata !180, i32 16777826, metadata !183, i32 0, metadata !1583} ; [ DW_TAG_arg_variable ] [nstr] [line 610]
!1585 = metadata !{i32 610, i32 0, metadata !806, metadata !1583}
!1586 = metadata !{i32 786689, metadata !806, metadata !"nm", metadata !180, i32 33555042, metadata !544, i32 0, metadata !1583} ; [ DW_TAG_arg_variable ] [nm] [line 610]
!1587 = metadata !{i32 786689, metadata !806, metadata !"bRead", metadata !180, i32 50332258, metadata !183, i32 0, metadata !1583} ; [ DW_TAG_arg_variable ] [bRead] [line 610]
!1588 = metadata !{i32 786689, metadata !806, metadata !"symtab", metadata !180, i32 67109474, metadata !783, i32 0, metadata !1583} ; [ DW_TAG_arg_variable ] [symtab] [line 610]
!1589 = metadata !{i32 786688, metadata !806, metadata !"j", metadata !180, i32 612, metadata !183, i32 0, metadata !1583} ; [ DW_TAG_auto_variable ] [j] [line 612]
!1590 = metadata !{i32 614, i32 0, metadata !1591, metadata !1583}
!1591 = metadata !{i32 786443, metadata !1, metadata !806, i32 614, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1592 = metadata !{i32 615, i32 0, metadata !1591, metadata !1583}
!1593 = metadata !{i32 638, i32 0, metadata !1594, metadata !1545}
!1594 = metadata !{i32 786443, metadata !1, metadata !1595, i32 638, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1595 = metadata !{i32 786443, metadata !1, metadata !780, i32 637, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1596 = metadata !{i32 637, i32 0, metadata !780, metadata !1545}
!1597 = metadata !{i32 639, i32 0, metadata !1598, metadata !1545}
!1598 = metadata !{i32 786443, metadata !1, metadata !1594, i32 638, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1599 = metadata !{i32 640, i32 0, metadata !1598, metadata !1545}
!1600 = metadata !{i32 643, i32 0, metadata !1601, metadata !1545}
!1601 = metadata !{i32 786443, metadata !1, metadata !780, i32 642, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1602 = metadata !{i32 786689, metadata !806, metadata !"nstr", metadata !180, i32 16777826, metadata !183, i32 0, metadata !1600} ; [ DW_TAG_arg_variable ] [nstr] [line 610]
!1603 = metadata !{i32 610, i32 0, metadata !806, metadata !1600}
!1604 = metadata !{i32 786689, metadata !806, metadata !"nm", metadata !180, i32 33555042, metadata !544, i32 0, metadata !1600} ; [ DW_TAG_arg_variable ] [nm] [line 610]
!1605 = metadata !{i32 786689, metadata !806, metadata !"bRead", metadata !180, i32 50332258, metadata !183, i32 0, metadata !1600} ; [ DW_TAG_arg_variable ] [bRead] [line 610]
!1606 = metadata !{i32 786689, metadata !806, metadata !"symtab", metadata !180, i32 67109474, metadata !783, i32 0, metadata !1600} ; [ DW_TAG_arg_variable ] [symtab] [line 610]
!1607 = metadata !{i32 786688, metadata !806, metadata !"j", metadata !180, i32 612, metadata !183, i32 0, metadata !1600} ; [ DW_TAG_auto_variable ] [j] [line 612]
!1608 = metadata !{i32 614, i32 0, metadata !1591, metadata !1600}
!1609 = metadata !{i32 615, i32 0, metadata !1591, metadata !1600}
!1610 = metadata !{i32 644, i32 0, metadata !1601, metadata !1545}
!1611 = metadata !{i32 786689, metadata !806, metadata !"nstr", metadata !180, i32 16777826, metadata !183, i32 0, metadata !1610} ; [ DW_TAG_arg_variable ] [nstr] [line 610]
!1612 = metadata !{i32 610, i32 0, metadata !806, metadata !1610}
!1613 = metadata !{i32 786689, metadata !806, metadata !"nm", metadata !180, i32 33555042, metadata !544, i32 0, metadata !1610} ; [ DW_TAG_arg_variable ] [nm] [line 610]
!1614 = metadata !{i32 786689, metadata !806, metadata !"bRead", metadata !180, i32 50332258, metadata !183, i32 0, metadata !1610} ; [ DW_TAG_arg_variable ] [bRead] [line 610]
!1615 = metadata !{i32 786689, metadata !806, metadata !"symtab", metadata !180, i32 67109474, metadata !783, i32 0, metadata !1610} ; [ DW_TAG_arg_variable ] [symtab] [line 610]
!1616 = metadata !{i32 786688, metadata !806, metadata !"j", metadata !180, i32 612, metadata !183, i32 0, metadata !1610} ; [ DW_TAG_auto_variable ] [j] [line 612]
!1617 = metadata !{i32 614, i32 0, metadata !1591, metadata !1610}
!1618 = metadata !{i32 615, i32 0, metadata !1591, metadata !1610}
!1619 = metadata !{i32 646, i32 0, metadata !780, metadata !1545}
!1620 = metadata !{i32 786689, metadata !806, metadata !"nstr", metadata !180, i32 16777826, metadata !183, i32 0, metadata !1619} ; [ DW_TAG_arg_variable ] [nstr] [line 610]
!1621 = metadata !{i32 610, i32 0, metadata !806, metadata !1619}
!1622 = metadata !{i32 786689, metadata !806, metadata !"nm", metadata !180, i32 33555042, metadata !544, i32 0, metadata !1619} ; [ DW_TAG_arg_variable ] [nm] [line 610]
!1623 = metadata !{i32 786689, metadata !806, metadata !"bRead", metadata !180, i32 50332258, metadata !183, i32 0, metadata !1619} ; [ DW_TAG_arg_variable ] [bRead] [line 610]
!1624 = metadata !{i32 786689, metadata !806, metadata !"symtab", metadata !180, i32 67109474, metadata !783, i32 0, metadata !1619} ; [ DW_TAG_arg_variable ] [symtab] [line 610]
!1625 = metadata !{i32 786688, metadata !806, metadata !"j", metadata !180, i32 612, metadata !183, i32 0, metadata !1619} ; [ DW_TAG_auto_variable ] [j] [line 612]
!1626 = metadata !{i32 614, i32 0, metadata !1591, metadata !1619}
!1627 = metadata !{i32 615, i32 0, metadata !1591, metadata !1619}
!1628 = metadata !{i32 647, i32 0, metadata !780, metadata !1545}
!1629 = metadata !{i32 786689, metadata !806, metadata !"nstr", metadata !180, i32 16777826, metadata !183, i32 0, metadata !1628} ; [ DW_TAG_arg_variable ] [nstr] [line 610]
!1630 = metadata !{i32 610, i32 0, metadata !806, metadata !1628}
!1631 = metadata !{i32 786689, metadata !806, metadata !"nm", metadata !180, i32 33555042, metadata !544, i32 0, metadata !1628} ; [ DW_TAG_arg_variable ] [nm] [line 610]
!1632 = metadata !{i32 786689, metadata !806, metadata !"bRead", metadata !180, i32 50332258, metadata !183, i32 0, metadata !1628} ; [ DW_TAG_arg_variable ] [bRead] [line 610]
!1633 = metadata !{i32 786689, metadata !806, metadata !"symtab", metadata !180, i32 67109474, metadata !783, i32 0, metadata !1628} ; [ DW_TAG_arg_variable ] [symtab] [line 610]
!1634 = metadata !{i32 786688, metadata !806, metadata !"j", metadata !180, i32 612, metadata !183, i32 0, metadata !1628} ; [ DW_TAG_auto_variable ] [j] [line 612]
!1635 = metadata !{i32 614, i32 0, metadata !1591, metadata !1628}
!1636 = metadata !{i32 615, i32 0, metadata !1591, metadata !1628}
!1637 = metadata !{i32 786689, metadata !789, metadata !"ngrp", metadata !180, i32 16777793, metadata !183, i32 0, metadata !1638} ; [ DW_TAG_arg_variable ] [ngrp] [line 577]
!1638 = metadata !{i32 649, i32 0, metadata !780, metadata !1545}
!1639 = metadata !{i32 577, i32 0, metadata !789, metadata !1638}
!1640 = metadata !{i32 786688, metadata !789, metadata !"bDum", metadata !180, i32 580, metadata !183, i32 0, metadata !1638} ; [ DW_TAG_auto_variable ] [bDum] [line 580]
!1641 = metadata !{i32 580, i32 0, metadata !789, metadata !1638}
!1642 = metadata !{i32 582, i32 0, metadata !789, metadata !1638}
!1643 = metadata !{i32 583, i32 0, metadata !1644, metadata !1638}
!1644 = metadata !{i32 786443, metadata !1, metadata !789, i32 582, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1645 = metadata !{i32 584, i32 0, metadata !1644, metadata !1638}
!1646 = metadata !{i32 585, i32 0, metadata !1644, metadata !1638}
!1647 = metadata !{i32 586, i32 0, metadata !1644, metadata !1638}
!1648 = metadata !{i32 786688, metadata !789, metadata !"j", metadata !180, i32 579, metadata !183, i32 0, metadata !1638} ; [ DW_TAG_auto_variable ] [j] [line 579]
!1649 = metadata !{i32 588, i32 0, metadata !805, metadata !1638}
!1650 = metadata !{i32 592, i32 0, metadata !801, metadata !1638}
!1651 = metadata !{i32 589, i32 0, metadata !804, metadata !1638}
!1652 = metadata !{i32 591, i32 0, metadata !804, metadata !1638}
!1653 = metadata !{i32 592, i32 0, metadata !802, metadata !1638}
!1654 = metadata !{i32 651, i32 0, metadata !780, metadata !1545}
!1655 = metadata !{i32 715, i32 0, metadata !705, null}
!1656 = metadata !{i32 786689, metadata !746, metadata !"idef", metadata !180, i32 16777721, metadata !749, i32 0, metadata !1655} ; [ DW_TAG_arg_variable ] [idef] [line 505]
!1657 = metadata !{i32 505, i32 0, metadata !746, metadata !1655}
!1658 = metadata !{i32 786689, metadata !746, metadata !"bRead", metadata !180, i32 33554937, metadata !183, i32 0, metadata !1655} ; [ DW_TAG_arg_variable ] [bRead] [line 505]
!1659 = metadata !{i32 786688, metadata !746, metadata !"bDum", metadata !180, i32 508, metadata !183, i32 0, metadata !1655} ; [ DW_TAG_auto_variable ] [bDum] [line 508]
!1660 = metadata !{i32 508, i32 0, metadata !746, metadata !1655}
!1661 = metadata !{i32 510, i32 0, metadata !746, metadata !1655}
!1662 = metadata !{i32 511, i32 0, metadata !746, metadata !1655}
!1663 = metadata !{i32 512, i32 0, metadata !746, metadata !1655}
!1664 = metadata !{i32 517, i32 0, metadata !760, metadata !1655}
!1665 = metadata !{i32 514, i32 0, metadata !1666, metadata !1655}
!1666 = metadata !{i32 786443, metadata !1, metadata !746, i32 513, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1667 = metadata !{i32 515, i32 0, metadata !1666, metadata !1655}
!1668 = metadata !{i32 516, i32 0, metadata !1666, metadata !1655}
!1669 = metadata !{i32 517, i32 0, metadata !759, metadata !1655}
!1670 = metadata !{i32 519, i32 0, metadata !1671, metadata !1655}
!1671 = metadata !{i32 786443, metadata !1, metadata !746, i32 519, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1672 = metadata !{i32 525, i32 0, metadata !1673, metadata !1655}
!1673 = metadata !{i32 786443, metadata !1, metadata !1671, i32 519, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1674 = metadata !{i32 500, i32 0, metadata !777, metadata !1675}
!1675 = metadata !{i32 540, i32 0, metadata !1676, metadata !1655}
!1676 = metadata !{i32 786443, metadata !1, metadata !1677, i32 528, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1677 = metadata !{i32 786443, metadata !1, metadata !746, i32 528, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1678 = metadata !{i32 528, i32 0, metadata !1677, metadata !1655}
!1679 = metadata !{i32 520, i32 0, metadata !1673, metadata !1655}
!1680 = metadata !{i32 522, i32 0, metadata !1681, metadata !1655}
!1681 = metadata !{i32 786443, metadata !1, metadata !1673, i32 521, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1682 = metadata !{i32 524, i32 0, metadata !1681, metadata !1655}
!1683 = metadata !{i32 521, i32 0, metadata !1681, metadata !1655}
!1684 = metadata !{i32 786688, metadata !746, metadata !"bClear", metadata !180, i32 508, metadata !183, i32 0, metadata !1655} ; [ DW_TAG_auto_variable ] [bClear] [line 508]
!1685 = metadata !{i32 529, i32 0, metadata !1676, metadata !1655}
!1686 = metadata !{i32 530, i32 0, metadata !1676, metadata !1655}
!1687 = metadata !{i32 532, i32 0, metadata !1688, metadata !1655}
!1688 = metadata !{i32 786443, metadata !1, metadata !1676, i32 531, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1689 = metadata !{i32 531, i32 0, metadata !1688, metadata !1655}
!1690 = metadata !{i32 533, i32 0, metadata !1688, metadata !1655}
!1691 = metadata !{i32 534, i32 0, metadata !1676, metadata !1655}
!1692 = metadata !{i32 535, i32 0, metadata !1693, metadata !1655}
!1693 = metadata !{i32 786443, metadata !1, metadata !1676, i32 534, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1694 = metadata !{i32 786688, metadata !746, metadata !"i", metadata !180, i32 507, metadata !183, i32 0, metadata !1655} ; [ DW_TAG_auto_variable ] [i] [line 507]
!1695 = metadata !{i32 536, i32 0, metadata !1696, metadata !1655}
!1696 = metadata !{i32 786443, metadata !1, metadata !1693, i32 536, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1697 = metadata !{i32 538, i32 0, metadata !1693, metadata !1655}
!1698 = metadata !{i32 539, i32 0, metadata !1693, metadata !1655}
!1699 = metadata !{i32 537, i32 0, metadata !1696, metadata !1655}
!1700 = metadata !{i32 786689, metadata !762, metadata !"bRead", metadata !180, i32 33554921, metadata !183, i32 0, metadata !1675} ; [ DW_TAG_arg_variable ] [bRead] [line 489]
!1701 = metadata !{i32 489, i32 0, metadata !762, metadata !1675}
!1702 = metadata !{i32 786688, metadata !762, metadata !"bDum", metadata !180, i32 492, metadata !183, i32 0, metadata !1675} ; [ DW_TAG_auto_variable ] [bDum] [line 492]
!1703 = metadata !{i32 492, i32 0, metadata !762, metadata !1675}
!1704 = metadata !{i32 495, i32 0, metadata !762, metadata !1675}
!1705 = metadata !{i32 496, i32 0, metadata !774, metadata !1675}
!1706 = metadata !{i32 496, i32 0, metadata !773, metadata !1675}
!1707 = metadata !{i32 497, i32 0, metadata !762, metadata !1675}
!1708 = metadata !{i32 500, i32 0, metadata !778, metadata !1675}
!1709 = metadata !{i32 499, i32 0, metadata !762, metadata !1675}
!1710 = metadata !{i32 501, i32 0, metadata !762, metadata !1675}
!1711 = metadata !{i32 502, i32 0, metadata !762, metadata !1675}
!1712 = metadata !{i32 717, i32 0, metadata !1713, null}
!1713 = metadata !{i32 786443, metadata !1, metadata !705, i32 716, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1714 = metadata !{i32 716, i32 0, metadata !1713, null}
!1715 = metadata !{i32 718, i32 0, metadata !705, null}
!1716 = metadata !{i32 719, i32 0, metadata !1717, null}
!1717 = metadata !{i32 786443, metadata !1, metadata !705, i32 718, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1718 = metadata !{i32 786689, metadata !712, metadata !"atoms", metadata !180, i32 16777901, metadata !715, i32 0, metadata !1719} ; [ DW_TAG_arg_variable ] [atoms] [line 685]
!1719 = metadata !{i32 720, i32 0, metadata !1717, null}
!1720 = metadata !{i32 685, i32 0, metadata !712, metadata !1719}
!1721 = metadata !{i8 65}
!1722 = metadata !{i32 786688, metadata !712, metadata !"chain", metadata !180, i32 688, metadata !185, i32 0, metadata !1719} ; [ DW_TAG_auto_variable ] [chain] [line 688]
!1723 = metadata !{i32 691, i32 0, metadata !712, metadata !1719}
!1724 = metadata !{i32 786688, metadata !712, metadata !"m", metadata !180, i32 687, metadata !183, i32 0, metadata !1719} ; [ DW_TAG_auto_variable ] [m] [line 687]
!1725 = metadata !{i32 692, i32 0, metadata !1726, metadata !1719}
!1726 = metadata !{i32 786443, metadata !1, metadata !712, i32 692, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1727 = metadata !{i32 693, i32 0, metadata !1728, metadata !1719}
!1728 = metadata !{i32 786443, metadata !1, metadata !1726, i32 692, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1729 = metadata !{i32 701, i32 0, metadata !1730, metadata !1719}
!1730 = metadata !{i32 786443, metadata !1, metadata !1728, i32 700, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1731 = metadata !{i32 700, i32 0, metadata !1730, metadata !1719}
!1732 = metadata !{i32 786688, metadata !712, metadata !"a0", metadata !180, i32 687, metadata !183, i32 0, metadata !1719} ; [ DW_TAG_auto_variable ] [a0] [line 687]
!1733 = metadata !{i32 694, i32 0, metadata !1728, metadata !1719}
!1734 = metadata !{i32 786688, metadata !712, metadata !"a1", metadata !180, i32 687, metadata !183, i32 0, metadata !1719} ; [ DW_TAG_auto_variable ] [a1] [line 687]
!1735 = metadata !{i32 695, i32 0, metadata !1728, metadata !1719}
!1736 = metadata !{i32 703, i32 0, metadata !712, metadata !1719}
!1737 = metadata !{i32 704, i32 0, metadata !1738, metadata !1719}
!1738 = metadata !{i32 786443, metadata !1, metadata !712, i32 704, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1739 = metadata !{i32 705, i32 0, metadata !1738, metadata !1719}
!1740 = metadata !{i32 722, i32 0, metadata !705, null}
!1741 = metadata !{i32 596, i32 0, metadata !822, null}
!1742 = metadata !{i32 598, i32 0, metadata !822, null}
!1743 = metadata !{i32 600, i32 0, metadata !822, null}
!1744 = metadata !{i32 601, i32 0, metadata !1745, null}
!1745 = metadata !{i32 786443, metadata !1, metadata !822, i32 600, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1746 = metadata !{i32 602, i32 0, metadata !1745, null}
!1747 = metadata !{i32 603, i32 0, metadata !1745, null}
!1748 = metadata !{i32 605, i32 0, metadata !1749, null}
!1749 = metadata !{i32 786443, metadata !1, metadata !822, i32 604, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1750 = metadata !{i32 606, i32 0, metadata !1749, null}
!1751 = metadata !{i32 608, i32 0, metadata !822, null}
!1752 = metadata !{i32 544, i32 0, metadata !726, null}
!1753 = metadata !{i32 547, i32 0, metadata !726, null}
!1754 = metadata !{i32 549, i32 0, metadata !736, null}
!1755 = metadata !{i32 549, i32 0, metadata !735, null}
!1756 = metadata !{i32 550, i32 0, metadata !726, null}
!1757 = metadata !{i32 551, i32 0, metadata !726, null}
!1758 = metadata !{i32 553, i32 0, metadata !1759, null}
!1759 = metadata !{i32 786443, metadata !1, metadata !726, i32 552, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.c]
!1760 = metadata !{i32 554, i32 0, metadata !1759, null}
!1761 = metadata !{i32 555, i32 0, metadata !1759, null}
!1762 = metadata !{i32 556, i32 0, metadata !740, null}
!1763 = metadata !{i32 556, i32 0, metadata !739, null}
!1764 = metadata !{i32 557, i32 0, metadata !744, null}
!1765 = metadata !{i32 557, i32 0, metadata !743, null}
!1766 = metadata !{i32 558, i32 0, metadata !726, null}

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
@.str5 = private unnamed_addr constant [35 x i8] c"\0ACould not find section heading %s\00", align 1
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
  %0 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %0) #1
  %call = call i32 @gmx_fio_getftp(i32 %fp) #5
  %cmp = icmp eq i32 %call, 27
  br i1 %cmp, label %if.then, label %if.end54

if.then:                                          ; preds = %entry
  %tobool = icmp eq i32 %bRead, 0
  br i1 %tobool, label %cond.false, label %if.else

cond.false:                                       ; preds = %if.then
  %1 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %idxprom4 = sext i32 %key to i64
  %arrayidx5 = getelementptr inbounds [7 x i8*]* @itemstr, i64 0, i64 %idxprom4
  %2 = load i8** %arrayidx5, align 8, !tbaa !0
  %call6 = call i32 %1(i8* %2, i32 1, i32 7, i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 88) #5
  %call7 = call i32 @gmx_fio_getdebug(i32 %fp) #5
  call void @gmx_fio_setdebug(i32 %fp, i32 0) #5
  %3 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds [7 x i8*]* @comment_str, i64 0, i64 %idxprom4
  %4 = load i8** %arrayidx15, align 8, !tbaa !0
  %call16 = call i32 %3(i8* %4, i32 1, i32 7, i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 91) #5
  call void @gmx_fio_setdebug(i32 %fp, i32 %call7) #5
  br label %if.end54

if.else:                                          ; preds = %if.then
  %call19 = call i32 @gmx_fio_getdebug(i32 %fp) #5
  %tobool20 = icmp eq i32 %call19, 0
  br i1 %tobool20, label %if.else.do.body.preheader_crit_edge, label %if.then21

if.else.do.body.preheader_crit_edge:              ; preds = %if.else
  %idxprom34.pre = sext i32 %key to i64
  %arrayidx35.pre = getelementptr inbounds [7 x i8*]* @itemstr, i64 0, i64 %idxprom34.pre
  br label %do.body.preheader

if.then21:                                        ; preds = %if.else
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %idxprom22 = sext i32 %key to i64
  %arrayidx23 = getelementptr inbounds [7 x i8*]* @itemstr, i64 0, i64 %idxprom22
  %6 = load i8** %arrayidx23, align 8, !tbaa !0
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([32 x i8]* @.str3, i64 0, i64 0), i8* %6, i8* %src, i32 %line) #5
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.else.do.body.preheader_crit_edge, %if.then21
  %arrayidx35.pre-phi = phi i8** [ %arrayidx35.pre, %if.else.do.body.preheader_crit_edge ], [ %arrayidx23, %if.then21 ]
  br label %do.cond

do.cond:                                          ; preds = %do.body.preheader, %do.cond
  %7 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %call27 = call i32 %7(i8* %0, i32 1, i32 7, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 100) #5
  %8 = load i8** %arrayidx35.pre-phi, align 8, !tbaa !0
  %call36 = call i32 @gmx_strcasecmp(i8* %0, i8* %8) #5
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %do.end, label %do.cond

do.end:                                           ; preds = %do.cond
  %9 = load i8** %arrayidx35.pre-phi, align 8, !tbaa !0
  %call41 = call i32 @gmx_strcasecmp(i8* %0, i8* %9) #5
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.else46, label %if.then43

if.then43:                                        ; preds = %do.end
  %10 = load i8** %arrayidx35.pre-phi, align 8, !tbaa !0
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([35 x i8]* @.str5, i64 0, i64 0), i8* %10) #5
  br label %if.end54

if.else46:                                        ; preds = %do.end
  %call47 = call i32 @gmx_fio_getdebug(i32 %fp) #5
  %tobool48 = icmp eq i32 %call47, 0
  br i1 %tobool48, label %if.end54, label %if.then49

if.then49:                                        ; preds = %if.else46
  %11 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %12 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %11)
  br label %if.end54

if.end54:                                         ; preds = %if.else46, %cond.false, %if.then49, %if.then43, %entry
  call void @llvm.lifetime.end(i64 4096, i8* %0) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: optsize
declare i32 @gmx_fio_getftp(i32) #2

; Function Attrs: optsize
declare i32 @gmx_fio_getdebug(i32) #2

; Function Attrs: optsize
declare void @gmx_fio_setdebug(i32, i32) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare i32 @gmx_strcasecmp(i8*, i8*) #2

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @do_iparams(i32 %ftype, %union.t_iparams* %iparams, i32 %bRead) #0 {
entry:
  %buf = alloca [128 x i8], align 16
  %tobool = icmp ne i32 %bRead, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %ftype to i64
  %name = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %idxprom, i32 0
  %0 = load i8** %name, align 8, !tbaa !0
  call void @set_comment(i8* %0) #5
  br label %if.end

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
  ]

for.cond.preheader:                               ; preds = %if.end
  %1 = getelementptr inbounds [128 x i8]* %buf, i64 0, i64 0
  %rbc = bitcast %union.t_iparams* %iparams to [6 x float]*
  br label %for.body

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %tobool.i = icmp eq i32 %bRead, 0
  br i1 %tobool.i, label %cond.false28.i, label %cond.true25.i

cond.true25.i:                                    ; preds = %sw.bb
  %2 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %3 = bitcast %union.t_iparams* %iparams to i8*
  %call.i = call i32 %2(i8* %3, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str231, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 368) #5
  %4 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %5 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %6 = bitcast float* %5 to i8*
  %call7.i = call i32 %4(i8* %6, i32 1, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str232, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 369) #5
  %7 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %8 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %9 = bitcast float* %8 to i8*
  %call17.i = call i32 %7(i8* %9, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str233, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 370) #5
  %10 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %11 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %12 = bitcast float* %11 to i8*
  %call27.i = call i32 %10(i8* %12, i32 1, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str234, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 371) #5
  br label %sw.epilog

cond.false28.i:                                   ; preds = %sw.bb
  %13 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %14 = bitcast %union.t_iparams* %iparams to i8*
  %call3.i = call i32 %13(i8* %14, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str231, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 368) #5
  %15 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %16 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %17 = bitcast float* %16 to i8*
  %call11.i = call i32 %15(i8* %17, i32 1, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str232, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 369) #5
  %18 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %19 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %20 = bitcast float* %19 to i8*
  %call21.i = call i32 %18(i8* %20, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str233, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 370) #5
  %21 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %22 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %23 = bitcast float* %22 to i8*
  %call31.i = call i32 %21(i8* %23, i32 1, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str234, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 371) #5
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  br i1 %tobool, label %cond.true17, label %cond.false20

cond.true17:                                      ; preds = %sw.bb1
  %24 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %25 = bitcast %union.t_iparams* %iparams to i8*
  %call = call i32 %24(i8* %25, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 393) #5
  %26 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %27 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %28 = bitcast float* %27 to i8*
  %call9 = call i32 %26(i8* %28, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 394) #5
  %29 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %30 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %31 = bitcast float* %30 to i8*
  %call19 = call i32 %29(i8* %31, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 395) #5
  br label %if.end536

cond.false20:                                     ; preds = %sw.bb1
  %32 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %33 = bitcast %union.t_iparams* %iparams to i8*
  %call5 = call i32 %32(i8* %33, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 393) #5
  %34 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %35 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %36 = bitcast float* %35 to i8*
  %call13 = call i32 %34(i8* %36, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 394) #5
  %37 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %38 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %39 = bitcast float* %38 to i8*
  %call23 = call i32 %37(i8* %39, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 395) #5
  br label %if.then535

sw.bb26:                                          ; preds = %if.end
  br i1 %tobool, label %cond.true47, label %cond.false50

cond.true47:                                      ; preds = %sw.bb26
  %40 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %41 = bitcast %union.t_iparams* %iparams to i8*
  %call29 = call i32 %40(i8* %41, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 398) #5
  %42 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %43 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %44 = bitcast float* %43 to i8*
  %call39 = call i32 %42(i8* %44, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 399) #5
  %45 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %46 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %47 = bitcast float* %46 to i8*
  %call49 = call i32 %45(i8* %47, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 400) #5
  br label %if.end536

cond.false50:                                     ; preds = %sw.bb26
  %48 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %49 = bitcast %union.t_iparams* %iparams to i8*
  %call33 = call i32 %48(i8* %49, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 398) #5
  %50 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %51 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %52 = bitcast float* %51 to i8*
  %call43 = call i32 %50(i8* %52, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 399) #5
  %53 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %54 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %55 = bitcast float* %54 to i8*
  %call53 = call i32 %53(i8* %55, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 400) #5
  br label %if.then535

sw.bb56:                                          ; preds = %if.end
  br i1 %tobool, label %cond.true78, label %cond.false81

cond.true78:                                      ; preds = %sw.bb56
  %56 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %57 = bitcast %union.t_iparams* %iparams to i8*
  %call60 = call i32 %56(i8* %57, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 403) #5
  %58 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %59 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %60 = bitcast float* %59 to i8*
  %call70 = call i32 %58(i8* %60, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 404) #5
  %61 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %62 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %63 = bitcast float* %62 to i8*
  %call80 = call i32 %61(i8* %63, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 405) #5
  br label %if.end536

cond.false81:                                     ; preds = %sw.bb56
  %64 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %65 = bitcast %union.t_iparams* %iparams to i8*
  %call64 = call i32 %64(i8* %65, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 403) #5
  %66 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %67 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %68 = bitcast float* %67 to i8*
  %call74 = call i32 %66(i8* %68, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 404) #5
  %69 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %70 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %71 = bitcast float* %70 to i8*
  %call84 = call i32 %69(i8* %71, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 405) #5
  br label %if.then535

sw.bb87:                                          ; preds = %if.end
  br i1 %tobool, label %cond.true138, label %cond.false141

cond.true138:                                     ; preds = %sw.bb87
  %72 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %73 = bitcast %union.t_iparams* %iparams to i8*
  %call90 = call i32 %72(i8* %73, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 410) #5
  %74 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %ky = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %75 = bitcast float* %ky to i8*
  %call100 = call i32 %74(i8* %75, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 411) #5
  %76 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %kz = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %77 = bitcast float* %kz to i8*
  %call110 = call i32 %76(i8* %77, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 412) #5
  %78 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %rOH = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %79 = bitcast float* %rOH to i8*
  %call120 = call i32 %78(i8* %79, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 413) #5
  %80 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %rHH = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4
  %81 = bitcast float* %rHH to i8*
  %call130 = call i32 %80(i8* %81, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 414) #5
  %82 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %rOD = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5
  %83 = bitcast float* %rOD to i8*
  %call140 = call i32 %82(i8* %83, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 415) #5
  br label %if.end536

cond.false141:                                    ; preds = %sw.bb87
  %84 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %85 = bitcast %union.t_iparams* %iparams to i8*
  %call94 = call i32 %84(i8* %85, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 410) #5
  %86 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %ky103 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %87 = bitcast float* %ky103 to i8*
  %call104 = call i32 %86(i8* %87, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 411) #5
  %88 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %kz113 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %89 = bitcast float* %kz113 to i8*
  %call114 = call i32 %88(i8* %89, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 412) #5
  %90 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %rOH123 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %91 = bitcast float* %rOH123 to i8*
  %call124 = call i32 %90(i8* %91, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 413) #5
  %92 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %rHH133 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4
  %93 = bitcast float* %rHH133 to i8*
  %call134 = call i32 %92(i8* %93, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 414) #5
  %94 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %rOD143 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5
  %95 = bitcast float* %rOD143 to i8*
  %call144 = call i32 %94(i8* %95, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 415) #5
  br label %if.then535

sw.bb147:                                         ; preds = %if.end
  br i1 %tobool, label %cond.true158, label %cond.false161

cond.true158:                                     ; preds = %sw.bb147
  %96 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %97 = bitcast %union.t_iparams* %iparams to i8*
  %call150 = call i32 %96(i8* %97, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 418) #5
  %98 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %99 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %100 = bitcast float* %99 to i8*
  %call160 = call i32 %98(i8* %100, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 419) #5
  br label %if.end536

cond.false161:                                    ; preds = %sw.bb147
  %101 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %102 = bitcast %union.t_iparams* %iparams to i8*
  %call154 = call i32 %101(i8* %102, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 418) #5
  %103 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %104 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %105 = bitcast float* %104 to i8*
  %call164 = call i32 %103(i8* %105, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 419) #5
  br label %if.then535

sw.bb167:                                         ; preds = %if.end
  br i1 %tobool, label %cond.true198, label %cond.false201

cond.true198:                                     ; preds = %sw.bb167
  %106 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %107 = bitcast %union.t_iparams* %iparams to i8*
  %call170 = call i32 %106(i8* %107, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 422) #5
  %108 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %109 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %110 = bitcast float* %109 to i8*
  %call180 = call i32 %108(i8* %110, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 423) #5
  %111 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %112 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %113 = bitcast float* %112 to i8*
  %call190 = call i32 %111(i8* %113, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 424) #5
  %114 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %115 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %116 = bitcast float* %115 to i8*
  %call200 = call i32 %114(i8* %116, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 425) #5
  br label %if.end536

cond.false201:                                    ; preds = %sw.bb167
  %117 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %118 = bitcast %union.t_iparams* %iparams to i8*
  %call174 = call i32 %117(i8* %118, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 422) #5
  %119 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %120 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %121 = bitcast float* %120 to i8*
  %call184 = call i32 %119(i8* %121, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 423) #5
  %122 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %123 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %124 = bitcast float* %123 to i8*
  %call194 = call i32 %122(i8* %124, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 424) #5
  %125 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %126 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %127 = bitcast float* %126 to i8*
  %call204 = call i32 %125(i8* %127, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 425) #5
  br label %if.then535

sw.bb207:                                         ; preds = %if.end
  br i1 %tobool, label %cond.true248, label %cond.false251

cond.true248:                                     ; preds = %sw.bb207
  %128 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %129 = bitcast %union.t_iparams* %iparams to i8*
  %call210 = call i32 %128(i8* %129, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 428) #5
  %130 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %131 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %132 = bitcast float* %131 to i8*
  %call220 = call i32 %130(i8* %132, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 429) #5
  %133 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %134 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %135 = bitcast float* %134 to i8*
  %call230 = call i32 %133(i8* %135, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 430) #5
  %136 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %137 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4
  %138 = bitcast float* %137 to i8*
  %call240 = call i32 %136(i8* %138, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 431) #5
  %139 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %mult = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %140 = bitcast float* %mult to i8*
  %call250 = call i32 %139(i8* %140, i32 1, i32 1, i8* getelementptr inbounds ([20 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 432) #5
  br label %if.end536

cond.false251:                                    ; preds = %sw.bb207
  %141 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %142 = bitcast %union.t_iparams* %iparams to i8*
  %call214 = call i32 %141(i8* %142, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 428) #5
  %143 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %144 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %145 = bitcast float* %144 to i8*
  %call224 = call i32 %143(i8* %145, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 429) #5
  %146 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %147 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %148 = bitcast float* %147 to i8*
  %call234 = call i32 %146(i8* %148, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 430) #5
  %149 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %150 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4
  %151 = bitcast float* %150 to i8*
  %call244 = call i32 %149(i8* %151, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 431) #5
  %152 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %mult253 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %153 = bitcast float* %mult253 to i8*
  %call254 = call i32 %152(i8* %153, i32 1, i32 1, i8* getelementptr inbounds ([20 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 432) #5
  br label %if.then535

sw.bb257:                                         ; preds = %if.end
  br i1 %tobool, label %cond.true308, label %cond.false311

cond.true308:                                     ; preds = %sw.bb257
  %154 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %label = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5
  %155 = bitcast float* %label to i8*
  %call260 = call i32 %154(i8* %155, i32 1, i32 1, i8* getelementptr inbounds ([22 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 435) #5
  %156 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %type = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4
  %157 = bitcast float* %type to i8*
  %call270 = call i32 %156(i8* %157, i32 1, i32 1, i8* getelementptr inbounds ([21 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 436) #5
  %158 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %159 = bitcast %union.t_iparams* %iparams to i8*
  %call280 = call i32 %158(i8* %159, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 437) #5
  %160 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %161 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %162 = bitcast float* %161 to i8*
  %call290 = call i32 %160(i8* %162, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 438) #5
  %163 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %164 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %165 = bitcast float* %164 to i8*
  %call300 = call i32 %163(i8* %165, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 439) #5
  %166 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %167 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %168 = bitcast float* %167 to i8*
  %call310 = call i32 %166(i8* %168, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 440) #5
  br label %if.end536

cond.false311:                                    ; preds = %sw.bb257
  %169 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %label263 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5
  %170 = bitcast float* %label263 to i8*
  %call264 = call i32 %169(i8* %170, i32 1, i32 1, i8* getelementptr inbounds ([22 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 435) #5
  %171 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %type273 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4
  %172 = bitcast float* %type273 to i8*
  %call274 = call i32 %171(i8* %172, i32 1, i32 1, i8* getelementptr inbounds ([21 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 436) #5
  %173 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %174 = bitcast %union.t_iparams* %iparams to i8*
  %call284 = call i32 %173(i8* %174, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 437) #5
  %175 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %176 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %177 = bitcast float* %176 to i8*
  %call294 = call i32 %175(i8* %177, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 438) #5
  %178 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %179 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %180 = bitcast float* %179 to i8*
  %call304 = call i32 %178(i8* %180, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 439) #5
  %181 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %182 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %183 = bitcast float* %182 to i8*
  %call314 = call i32 %181(i8* %183, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 440) #5
  br label %if.then535

sw.bb317:                                         ; preds = %if.end
  br i1 %tobool, label %cond.true370, label %cond.false374

cond.true370:                                     ; preds = %sw.bb317
  %184 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %185 = bitcast %union.t_iparams* %iparams to i8*
  %call320 = call i32 %184(i8* %185, i32 1, i32 1, i8* getelementptr inbounds ([19 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 443) #5
  %186 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %label330 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %187 = bitcast float* %label330 to i8*
  %call331 = call i32 %186(i8* %187, i32 1, i32 1, i8* getelementptr inbounds ([22 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 444) #5
  %188 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %pow = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %189 = bitcast float* %pow to i8*
  %call341 = call i32 %188(i8* %189, i32 1, i32 1, i8* getelementptr inbounds ([20 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 445) #5
  %190 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %191 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %192 = bitcast float* %191 to i8*
  %call352 = call i32 %190(i8* %192, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 446) #5
  %193 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %194 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4
  %195 = bitcast float* %194 to i8*
  %call362 = call i32 %193(i8* %195, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 447) #5
  %196 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %197 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5
  %198 = bitcast float* %197 to i8*
  %call373 = call i32 %196(i8* %198, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 448) #5
  br label %if.end536

cond.false374:                                    ; preds = %sw.bb317
  %199 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %200 = bitcast %union.t_iparams* %iparams to i8*
  %call324 = call i32 %199(i8* %200, i32 1, i32 1, i8* getelementptr inbounds ([19 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 443) #5
  %201 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %label334 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %202 = bitcast float* %label334 to i8*
  %call335 = call i32 %201(i8* %202, i32 1, i32 1, i8* getelementptr inbounds ([22 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 444) #5
  %203 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %pow344 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %204 = bitcast float* %pow344 to i8*
  %call345 = call i32 %203(i8* %204, i32 1, i32 1, i8* getelementptr inbounds ([20 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 445) #5
  %205 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %206 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %207 = bitcast float* %206 to i8*
  %call356 = call i32 %205(i8* %207, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 446) #5
  %208 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %209 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4
  %210 = bitcast float* %209 to i8*
  %call366 = call i32 %208(i8* %210, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 447) #5
  %211 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %212 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5
  %213 = bitcast float* %212 to i8*
  %call377 = call i32 %211(i8* %213, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 448) #5
  br label %if.then535

sw.bb380:                                         ; preds = %if.end
  br i1 %tobool, label %cond.true392, label %cond.false396

cond.true392:                                     ; preds = %sw.bb380
  %214 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %215 = bitcast %union.t_iparams* %iparams to i8*
  %call383 = call i32 %214(i8* %215, i32 1, i32 4, i8* getelementptr inbounds ([21 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 451) #5
  %216 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %fc = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %217 = bitcast float* %fc to i8*
  %call395 = call i32 %216(i8* %217, i32 1, i32 4, i8* getelementptr inbounds ([19 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 452) #5
  br label %if.end536

cond.false396:                                    ; preds = %sw.bb380
  %218 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %219 = bitcast %union.t_iparams* %iparams to i8*
  %call388 = call i32 %218(i8* %219, i32 1, i32 4, i8* getelementptr inbounds ([21 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 451) #5
  %220 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %fc398 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %221 = bitcast float* %fc398 to i8*
  %call400 = call i32 %220(i8* %221, i32 1, i32 4, i8* getelementptr inbounds ([19 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 452) #5
  br label %if.then535

for.body:                                         ; preds = %land.end, %for.cond.preheader
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %land.end ]
  %bDum.0702 = phi i32 [ 1, %for.cond.preheader ], [ %land.ext, %land.end ]
  call void @llvm.lifetime.start(i64 128, i8* %1) #1
  %222 = trunc i64 %indvars.iv to i32
  %call405 = call i32 (i8*, i8*, ...)* @sprintf(i8* %1, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str48, i64 0, i64 0), i32 %222) #5
  %tobool406 = icmp eq i32 %bDum.0702, 0
  br i1 %tobool406, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.body
  br i1 %tobool, label %cond.true408, label %cond.false413

cond.true408:                                     ; preds = %land.rhs
  %223 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %arrayidx410 = getelementptr inbounds [6 x float]* %rbc, i64 0, i64 %indvars.iv
  %224 = bitcast float* %arrayidx410 to i8*
  %call412 = call i32 %223(i8* %224, i32 1, i32 0, i8* %1, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 455) #5
  br label %cond.end420

cond.false413:                                    ; preds = %land.rhs
  %225 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %arrayidx417 = getelementptr inbounds [6 x float]* %rbc, i64 0, i64 %indvars.iv
  %226 = bitcast float* %arrayidx417 to i8*
  %call419 = call i32 %225(i8* %226, i32 1, i32 0, i8* %1, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 455) #5
  br label %cond.end420

cond.end420:                                      ; preds = %cond.false413, %cond.true408
  %cond421 = phi i32 [ %call412, %cond.true408 ], [ %call419, %cond.false413 ]
  %tobool422 = icmp ne i32 %cond421, 0
  br label %land.end

land.end:                                         ; preds = %for.body, %cond.end420
  %227 = phi i1 [ false, %for.body ], [ %tobool422, %cond.end420 ]
  %land.ext = zext i1 %227 to i32
  call void @llvm.lifetime.end(i64 128, i8* %1) #1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 6
  br i1 %exitcond, label %sw.epilog, label %for.body

sw.bb423:                                         ; preds = %if.end, %if.end
  br i1 %tobool, label %cond.true434, label %cond.false437

cond.true434:                                     ; preds = %sw.bb423
  %228 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %229 = bitcast %union.t_iparams* %iparams to i8*
  %call426 = call i32 %228(i8* %229, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 459) #5
  %230 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %231 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %232 = bitcast float* %231 to i8*
  %call436 = call i32 %230(i8* %232, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 460) #5
  br label %if.end536

cond.false437:                                    ; preds = %sw.bb423
  %233 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %234 = bitcast %union.t_iparams* %iparams to i8*
  %call430 = call i32 %233(i8* %234, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 459) #5
  %235 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %236 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %237 = bitcast float* %236 to i8*
  %call440 = call i32 %235(i8* %237, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 460) #5
  br label %if.then535

sw.bb443:                                         ; preds = %if.end
  br i1 %tobool, label %cond.true454, label %cond.false457

cond.true454:                                     ; preds = %sw.bb443
  %238 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %239 = bitcast %union.t_iparams* %iparams to i8*
  %call446 = call i32 %238(i8* %239, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 463) #5
  %240 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %241 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %242 = bitcast float* %241 to i8*
  %call456 = call i32 %240(i8* %242, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str52, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 464) #5
  br label %if.end536

cond.false457:                                    ; preds = %sw.bb443
  %243 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %244 = bitcast %union.t_iparams* %iparams to i8*
  %call450 = call i32 %243(i8* %244, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 463) #5
  %245 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %246 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %247 = bitcast float* %246 to i8*
  %call460 = call i32 %245(i8* %247, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str52, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 464) #5
  br label %if.then535

sw.bb463:                                         ; preds = %if.end
  br i1 %tobool, label %cond.true465, label %cond.false468

cond.true465:                                     ; preds = %sw.bb463
  %248 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %249 = bitcast %union.t_iparams* %iparams to i8*
  %call467 = call i32 %248(i8* %249, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 467) #5
  br label %if.end536

cond.false468:                                    ; preds = %sw.bb463
  %250 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %251 = bitcast %union.t_iparams* %iparams to i8*
  %call471 = call i32 %250(i8* %251, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 467) #5
  br label %if.then535

sw.bb474:                                         ; preds = %if.end, %if.end, %if.end
  br i1 %tobool, label %cond.true487, label %cond.false491

cond.true487:                                     ; preds = %sw.bb474
  %252 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %253 = bitcast %union.t_iparams* %iparams to i8*
  %call479 = call i32 %252(i8* %253, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 472) #5
  %254 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %255 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %256 = bitcast float* %255 to i8*
  %call490 = call i32 %254(i8* %256, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 473) #5
  br label %if.end536

cond.false491:                                    ; preds = %sw.bb474
  %257 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %258 = bitcast %union.t_iparams* %iparams to i8*
  %call483 = call i32 %257(i8* %258, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 472) #5
  %259 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %260 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %261 = bitcast float* %260 to i8*
  %call494 = call i32 %259(i8* %261, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 473) #5
  br label %if.then535

sw.bb497:                                         ; preds = %if.end, %if.end
  br i1 %tobool, label %cond.true521, label %cond.false525

cond.true521:                                     ; preds = %sw.bb497
  %262 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %263 = bitcast %union.t_iparams* %iparams to i8*
  %call502 = call i32 %262(i8* %263, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 477) #5
  %264 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %265 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %266 = bitcast float* %265 to i8*
  %call513 = call i32 %264(i8* %266, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 478) #5
  %267 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %268 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %269 = bitcast float* %268 to i8*
  %call524 = call i32 %267(i8* %269, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 479) #5
  br label %if.end536

cond.false525:                                    ; preds = %sw.bb497
  %270 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %271 = bitcast %union.t_iparams* %iparams to i8*
  %call506 = call i32 %270(i8* %271, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 477) #5
  %272 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %273 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %274 = bitcast float* %273 to i8*
  %call517 = call i32 %272(i8* %274, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 478) #5
  %275 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %276 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %277 = bitcast float* %276 to i8*
  %call528 = call i32 %275(i8* %277, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 479) #5
  br label %if.then535

sw.default:                                       ; preds = %if.end
  %idxprom531 = sext i32 %ftype to i64
  %name533 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %idxprom531, i32 0
  %278 = load i8** %name533, align 8, !tbaa !0
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([44 x i8]* @.str56, i64 0, i64 0), i32 %ftype, i8* %278, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 483) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %land.end, %cond.false28.i, %cond.true25.i, %sw.default, %if.end
  br i1 %tobool, label %if.end536, label %if.then535

if.then535:                                       ; preds = %cond.false20, %cond.false50, %cond.false81, %cond.false141, %cond.false161, %cond.false201, %cond.false251, %cond.false311, %cond.false374, %cond.false396, %cond.false437, %cond.false457, %cond.false468, %cond.false491, %cond.false525, %sw.epilog
  call void @unset_comment() #5
  br label %if.end536

if.end536:                                        ; preds = %cond.true17, %cond.true47, %cond.true78, %cond.true138, %cond.true158, %cond.true198, %cond.true248, %cond.true308, %cond.true370, %cond.true392, %cond.true434, %cond.true454, %cond.true465, %cond.true487, %cond.true521, %if.then535, %sw.epilog
  ret void
}

; Function Attrs: optsize
declare void @set_comment(i8*) #2

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @unset_comment() #2

; Function Attrs: nounwind optsize uwtable
define i32 @open_tpx(i8* %fn, i8* %mode) #0 {
entry:
  %call = tail call i32 @gmx_fio_open(i8* %fn, i8* %mode) #5
  ret i32 %call
}

; Function Attrs: optsize
declare i32 @gmx_fio_open(i8*, i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @close_tpx(i32 %fp) #0 {
entry:
  tail call void @gmx_fio_close(i32 %fp) #5
  ret void
}

; Function Attrs: optsize
declare void @gmx_fio_close(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @read_tpxheader(i8* %fn, %struct.t_tpxheader* %tpx) #0 {
entry:
  %call.i = tail call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str57, i64 0, i64 0)) #5
  tail call fastcc void @do_tpxheader(i32 %call.i, i32 1, %struct.t_tpxheader* %tpx) #6
  tail call void @gmx_fio_close(i32 %call.i) #5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @do_tpxheader(i32 %fp, i32 %bRead, %struct.t_tpxheader* %tpx) #0 {
entry:
  %buf = alloca [4096 x i8], align 16
  %precision = alloca i32, align 4
  %0 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %0) #1
  call void @gmx_fio_select(i32 %fp) #5
  %call = call i32 @bDebugMode() #5
  call void @gmx_fio_setdebug(i32 %fp, i32 %call) #5
  store i32 4, i32* %precision, align 4, !tbaa !3
  %tobool = icmp ne i32 %bRead, 0
  br i1 %tobool, label %cond.true, label %cond.false48

cond.true:                                        ; preds = %entry
  %1 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %call2 = call i32 %1(i8* %0, i32 1, i32 7, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 736) #5
  %call6 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([8 x i8]* @.str214, i64 0, i64 0), i64 7) #7
  %tobool7 = icmp eq i32 %call6, 0
  br i1 %tobool7, label %cond.end15, label %if.then8

if.then8:                                         ; preds = %cond.true
  %call9 = call i8* @gmx_fio_getname(i32 %fp) #5
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([173 x i8]* @.str215, i64 0, i64 0), i8* %call9) #5
  br label %cond.end15

cond.end15:                                       ; preds = %if.then8, %cond.true
  %2 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %3 = bitcast i32* %precision to i8*
  %call12 = call i32 %2(i8* %3, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str216, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 742) #5
  %4 = load i32* %precision, align 4, !tbaa !3
  %cmp = icmp eq i32 %4, 8
  %conv17 = zext i1 %cmp to i32
  switch i32 %4, label %if.end44 [
    i32 8, label %if.end44.thread182
    i32 4, label %if.end44.thread182
  ]

if.end44.thread182:                               ; preds = %cond.end15, %cond.end15
  call void @gmx_fio_setprecision(i32 %fp, i32 %conv17) #5
  br label %cond.true46

if.end44:                                         ; preds = %cond.end15
  %call23 = call i8* @gmx_fio_getname(i32 %fp) #5
  %5 = load i32* %precision, align 4, !tbaa !3
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([67 x i8]* @.str217, i64 0, i64 0), i8* %call23, i32 %5, i64 4, i64 8) #5
  call void @gmx_fio_setprecision(i32 %fp, i32 %conv17) #5
  br label %cond.true46

cond.true46:                                      ; preds = %if.end44, %if.end44.thread182
  %6 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %call47 = call i32 %6(i8* bitcast (i32* @file_version to i8*), i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str219, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 763) #5
  br label %cond.end50

cond.false48:                                     ; preds = %entry
  %7 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %call30 = call i8* @GromacsVersion() #5
  %call31 = call i32 %7(i8* %call30, i32 1, i32 7, i8* getelementptr inbounds ([17 x i8]* @.str218, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 755) #5
  %8 = load i32* %precision, align 4, !tbaa !3
  %cmp35 = icmp eq i32 %8, 8
  %conv36 = zext i1 %cmp35 to i32
  call void @gmx_fio_setprecision(i32 %fp, i32 %conv36) #5
  %9 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %10 = bitcast i32* %precision to i8*
  %call41 = call i32 %9(i8* %10, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str216, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 758) #5
  store i32 24, i32* @file_version, align 4, !tbaa !3
  %11 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %call49 = call i32 %11(i8* bitcast (i32* @file_version to i8*), i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str219, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 763) #5
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false48, %cond.true46
  %12 = load i32* @file_version, align 4, !tbaa !3
  %.off = add i32 %12, -10
  %13 = icmp ugt i32 %.off, 14
  br i1 %13, label %if.then56, label %if.end58

if.then56:                                        ; preds = %cond.end50
  %call57 = call i8* @gmx_fio_getname(i32 %fp) #5
  %14 = load i32* @file_version, align 4, !tbaa !3
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([57 x i8]* @.str220, i64 0, i64 0), i8* %call57, i32 %14, i32 24) #5
  br label %if.end58

if.end58:                                         ; preds = %cond.end50, %if.then56
  call void @_do_section(i32 %fp, i32 0, i32 %bRead, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 769) #6
  br i1 %tobool, label %cond.true132, label %cond.false134

cond.true132:                                     ; preds = %if.end58
  %15 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %natoms = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 6
  %16 = bitcast i32* %natoms to i8*
  %call61 = call i32 %15(i8* %16, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str221, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 770) #5
  %17 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %step = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 7
  %18 = bitcast i32* %step to i8*
  %call69 = call i32 %17(i8* %18, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str222, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 771) #5
  %19 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %t = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 8
  %20 = bitcast float* %t to i8*
  %call77 = call i32 %19(i8* %20, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str223, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 772) #5
  %21 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %lambda = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 9
  %22 = bitcast float* %lambda to i8*
  %call85 = call i32 %21(i8* %22, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str224, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 773) #5
  %23 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %24 = bitcast %struct.t_tpxheader* %tpx to i8*
  %call93 = call i32 %23(i8* %24, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str225, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 774) #5
  %25 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %bTop = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 2
  %26 = bitcast i32* %bTop to i8*
  %call101 = call i32 %25(i8* %26, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str226, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 775) #5
  %27 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %bX = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 3
  %28 = bitcast i32* %bX to i8*
  %call109 = call i32 %27(i8* %28, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str227, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 776) #5
  %29 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %bV = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 4
  %30 = bitcast i32* %bV to i8*
  %call117 = call i32 %29(i8* %30, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str228, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 777) #5
  %31 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %bF = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 5
  %32 = bitcast i32* %bF to i8*
  %call125 = call i32 %31(i8* %32, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str229, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 778) #5
  %33 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %bBox = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 1
  %34 = bitcast i32* %bBox to i8*
  %call133 = call i32 %33(i8* %34, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str230, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 779) #5
  br label %cond.end137

cond.false134:                                    ; preds = %if.end58
  %35 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %natoms63 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 6
  %36 = bitcast i32* %natoms63 to i8*
  %call64 = call i32 %35(i8* %36, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str221, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 770) #5
  %37 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %step71 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 7
  %38 = bitcast i32* %step71 to i8*
  %call72 = call i32 %37(i8* %38, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str222, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 771) #5
  %39 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %t79 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 8
  %40 = bitcast float* %t79 to i8*
  %call80 = call i32 %39(i8* %40, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str223, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 772) #5
  %41 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %lambda87 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 9
  %42 = bitcast float* %lambda87 to i8*
  %call88 = call i32 %41(i8* %42, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str224, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 773) #5
  %43 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %44 = bitcast %struct.t_tpxheader* %tpx to i8*
  %call96 = call i32 %43(i8* %44, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str225, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 774) #5
  %45 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %bTop103 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 2
  %46 = bitcast i32* %bTop103 to i8*
  %call104 = call i32 %45(i8* %46, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str226, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 775) #5
  %47 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %bX111 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 3
  %48 = bitcast i32* %bX111 to i8*
  %call112 = call i32 %47(i8* %48, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str227, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 776) #5
  %49 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %bV119 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 4
  %50 = bitcast i32* %bV119 to i8*
  %call120 = call i32 %49(i8* %50, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str228, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 777) #5
  %51 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %bF127 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 5
  %52 = bitcast i32* %bF127 to i8*
  %call128 = call i32 %51(i8* %52, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str229, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 778) #5
  %53 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %bBox135 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 1
  %54 = bitcast i32* %bBox135 to i8*
  %call136 = call i32 %53(i8* %54, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str230, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 779) #5
  br label %cond.end137

cond.end137:                                      ; preds = %cond.false134, %cond.true132
  call void @llvm.lifetime.end(i64 4096, i8* %0) #1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @write_tpx(i8* %fn, i32 %step, float %t, float %lambda, %struct.t_inputrec* %ir, [3 x float]* %box, i32 %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #0 {
entry:
  %step.addr = alloca i32, align 4
  %t.addr = alloca float, align 4
  %lambda.addr = alloca float, align 4
  %natoms.addr = alloca i32, align 4
  store i32 %step, i32* %step.addr, align 4, !tbaa !3
  store float %t, float* %t.addr, align 4, !tbaa !4
  store float %lambda, float* %lambda.addr, align 4, !tbaa !4
  store i32 %natoms, i32* %natoms.addr, align 4, !tbaa !3
  %call.i = call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str58, i64 0, i64 0)) #5
  call fastcc void @do_tpx(i32 %call.i, i32 0, i32* %step.addr, float* %t.addr, float* %lambda.addr, %struct.t_inputrec* %ir, [3 x float]* %box, i32* %natoms.addr, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #6
  call void @gmx_fio_close(i32 %call.i) #5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @do_tpx(i32 %fp, i32 %bRead, i32* nocapture %step, float* nocapture %t, float* nocapture %lambda, %struct.t_inputrec* %ir, [3 x float]* %box, i32* nocapture %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #0 {
entry:
  %tpx = alloca %struct.t_tpxheader, align 4
  %dum_ir = alloca %struct.t_inputrec, align 8
  %dum_top = alloca %struct.t_topology, align 8
  %0 = bitcast %struct.t_tpxheader* %tpx to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #1
  %1 = bitcast %struct.t_inputrec* %dum_ir to i8*
  call void @llvm.lifetime.start(i64 592, i8* %1) #1
  %2 = bitcast %struct.t_topology* %dum_top to i8*
  call void @llvm.lifetime.start(i64 50264, i8* %2) #1
  %tobool = icmp ne i32 %bRead, 0
  br i1 %tobool, label %if.then16.critedge, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i32* %natoms, align 4, !tbaa !3
  %natoms1 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 6
  store i32 %3, i32* %natoms1, align 4, !tbaa !3
  %4 = load i32* %step, align 4, !tbaa !3
  %step2 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 7
  store i32 %4, i32* %step2, align 4, !tbaa !3
  %5 = load float* %t, align 4, !tbaa !4
  %t3 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 8
  store float %5, float* %t3, align 4, !tbaa !4
  %6 = load float* %lambda, align 4, !tbaa !4
  %lambda4 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 9
  store float %6, float* %lambda4, align 4, !tbaa !4
  %cmp = icmp ne %struct.t_inputrec* %ir, null
  %conv = zext i1 %cmp to i32
  %bIr = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 0
  store i32 %conv, i32* %bIr, align 4, !tbaa !3
  %cmp5 = icmp ne %struct.t_topology* %top, null
  %conv6 = zext i1 %cmp5 to i32
  %bTop = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 2
  store i32 %conv6, i32* %bTop, align 4, !tbaa !3
  %cmp7 = icmp ne [3 x float]* %x, null
  %conv8 = zext i1 %cmp7 to i32
  %bX = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 3
  store i32 %conv8, i32* %bX, align 4, !tbaa !3
  %cmp9 = icmp ne [3 x float]* %v, null
  %conv10 = zext i1 %cmp9 to i32
  %bV = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 4
  store i32 %conv10, i32* %bV, align 4, !tbaa !3
  %cmp11 = icmp ne [3 x float]* %f, null
  %conv12 = zext i1 %cmp11 to i32
  %bF = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 5
  store i32 %conv12, i32* %bF, align 4, !tbaa !3
  %cmp13 = icmp ne [3 x float]* %box, null
  %conv14 = zext i1 %cmp13 to i32
  %bBox = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 1
  store i32 %conv14, i32* %bBox, align 4, !tbaa !3
  call fastcc void @do_tpxheader(i32 %fp, i32 0, %struct.t_tpxheader* %tpx) #6
  br label %if.end29

if.then16.critedge:                               ; preds = %entry
  call fastcc void @do_tpxheader(i32 %fp, i32 %bRead, %struct.t_tpxheader* %tpx) #6
  %natoms17 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 6
  %7 = load i32* %natoms17, align 4, !tbaa !3
  store i32 %7, i32* %natoms, align 4, !tbaa !3
  %step18 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 7
  %8 = load i32* %step18, align 4, !tbaa !3
  store i32 %8, i32* %step, align 4, !tbaa !3
  %t19 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 8
  %9 = load float* %t19, align 4, !tbaa !4
  store float %9, float* %t, align 4, !tbaa !4
  %lambda20 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 9
  %10 = load float* %lambda20, align 4, !tbaa !4
  store float %10, float* %lambda, align 4, !tbaa !4
  %cmp23 = icmp eq [3 x float]* %box, null
  %bBox30.pre = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 1
  br i1 %cmp23, label %if.end29, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %if.then16.critedge
  %11 = load i32* %bBox30.pre, align 4, !tbaa !3
  %tobool27 = icmp eq i32 %11, 0
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %land.lhs.true25
  %call = call i8* @gmx_fio_getname(i32 %fp) #5
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([12 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* %call) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then16.critedge, %if.then, %land.lhs.true25, %if.then28
  %bBox30.pre-phi = phi i32* [ %bBox, %if.then ], [ %bBox30.pre, %land.lhs.true25 ], [ %bBox30.pre, %if.then28 ], [ %bBox30.pre, %if.then16.critedge ]
  call void @_do_section(i32 %fp, i32 2, i32 %bRead, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 815) #6
  %12 = load i32* %bBox30.pre-phi, align 4, !tbaa !3
  %tobool31 = icmp eq i32 %12, 0
  br i1 %tobool31, label %if.end36, label %if.then32

if.then32:                                        ; preds = %if.end29
  br i1 %tobool, label %cond.true, label %if.end36.thread

cond.true:                                        ; preds = %if.then32
  %13 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %14 = bitcast [3 x float]* %box to i8*
  %call34 = call i32 %13(i8* %14, i32 3, i32 5, i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 816) #5
  br label %if.end36

if.end36.thread:                                  ; preds = %if.then32
  %15 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %16 = bitcast [3 x float]* %box to i8*
  %call35 = call i32 %15(i8* %16, i32 3, i32 5, i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 816) #5
  %cmp39208 = icmp eq %struct.t_inputrec* %ir, null
  br label %if.end46

if.end36:                                         ; preds = %if.end29, %cond.true
  %tobool.not197 = xor i1 %tobool, true
  %cmp39 = icmp eq %struct.t_inputrec* %ir, null
  %or.cond198 = or i1 %cmp39, %tobool.not197
  br i1 %or.cond198, label %if.end46, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %if.end36
  %bIr42 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 0
  %17 = load i32* %bIr42, align 4, !tbaa !3
  %tobool43 = icmp eq i32 %17, 0
  br i1 %tobool43, label %if.then44, label %if.end46

if.then44:                                        ; preds = %land.lhs.true41
  %call45 = call i8* @gmx_fio_getname(i32 %fp) #5
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([12 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str63, i64 0, i64 0), i8* %call45) #5
  br label %if.end46

if.end46:                                         ; preds = %if.end36.thread, %if.end36, %land.lhs.true41, %if.then44
  %cmp39211 = phi i1 [ %cmp39208, %if.end36.thread ], [ %cmp39, %if.end36 ], [ false, %land.lhs.true41 ], [ false, %if.then44 ]
  %tobool.not197210 = phi i1 [ true, %if.end36.thread ], [ %tobool.not197, %if.end36 ], [ false, %land.lhs.true41 ], [ false, %if.then44 ]
  call void @_do_section(i32 %fp, i32 1, i32 %bRead, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 819) #6
  %bIr47 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 0
  %18 = load i32* %bIr47, align 4, !tbaa !3
  %tobool48 = icmp eq i32 %18, 0
  br i1 %tobool48, label %if.end53, label %if.then49

if.then49:                                        ; preds = %if.end46
  br i1 %cmp39211, label %if.else, label %if.then51

if.then51:                                        ; preds = %if.then49
  call fastcc void @do_inputrec(%struct.t_inputrec* %ir, i32 %bRead) #6
  br label %if.end53

if.else:                                          ; preds = %if.then49
  call void @init_inputrec(%struct.t_inputrec* %dum_ir) #5
  call fastcc void @do_inputrec(%struct.t_inputrec* %dum_ir, i32 %bRead) #6
  call void @done_inputrec(%struct.t_inputrec* %dum_ir) #5
  br label %if.end53

if.end53:                                         ; preds = %if.end46, %if.then51, %if.else
  %cmp56 = icmp eq %struct.t_topology* %top, null
  %or.cond200 = or i1 %tobool.not197210, %cmp56
  %bTop64.pre = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 2
  br i1 %or.cond200, label %if.end63, label %land.lhs.true58

land.lhs.true58:                                  ; preds = %if.end53
  %19 = load i32* %bTop64.pre, align 4, !tbaa !3
  %tobool60 = icmp eq i32 %19, 0
  br i1 %tobool60, label %if.then61, label %if.end63

if.then61:                                        ; preds = %land.lhs.true58
  %call62 = call i8* @gmx_fio_getname(i32 %fp) #5
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([12 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str64, i64 0, i64 0), i8* %call62) #5
  br label %if.end63

if.end63:                                         ; preds = %if.end53, %land.lhs.true58, %if.then61
  call void @_do_section(i32 %fp, i32 3, i32 %bRead, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 830) #6
  %20 = load i32* %bTop64.pre, align 4, !tbaa !3
  %tobool65 = icmp eq i32 %20, 0
  br i1 %tobool65, label %if.end71, label %if.then66

if.then66:                                        ; preds = %if.end63
  br i1 %cmp56, label %if.else69, label %if.then68

if.then68:                                        ; preds = %if.then66
  call fastcc void @do_top(%struct.t_topology* %top, i32 %bRead) #6
  br label %if.end71

if.else69:                                        ; preds = %if.then66
  call fastcc void @do_top(%struct.t_topology* %dum_top, i32 %bRead) #6
  call void @done_top(%struct.t_topology* %dum_top) #5
  br label %if.end71

if.end71:                                         ; preds = %if.end63, %if.then68, %if.else69
  %cmp74 = icmp eq [3 x float]* %x, null
  %or.cond202 = or i1 %tobool.not197210, %cmp74
  %bX82.pre = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 3
  br i1 %or.cond202, label %if.end81, label %land.lhs.true76

land.lhs.true76:                                  ; preds = %if.end71
  %21 = load i32* %bX82.pre, align 4, !tbaa !3
  %tobool78 = icmp eq i32 %21, 0
  br i1 %tobool78, label %if.then79, label %if.end81

if.then79:                                        ; preds = %land.lhs.true76
  %call80 = call i8* @gmx_fio_getname(i32 %fp) #5
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([12 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str65, i64 0, i64 0), i8* %call80) #5
  br label %if.end81

if.end81:                                         ; preds = %if.end71, %land.lhs.true76, %if.then79
  call void @_do_section(i32 %fp, i32 4, i32 %bRead, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 840) #6
  %22 = load i32* %bX82.pre, align 4, !tbaa !3
  %tobool83 = icmp eq i32 %22, 0
  br i1 %tobool83, label %if.end92, label %if.then84

if.then84:                                        ; preds = %if.end81
  br i1 %tobool, label %cond.true86, label %cond.false88

cond.true86:                                      ; preds = %if.then84
  %23 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %24 = bitcast [3 x float]* %x to i8*
  %25 = load i32* %natoms, align 4, !tbaa !3
  %call87 = call i32 %23(i8* %24, i32 %25, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str65, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 841) #5
  br label %if.end92

cond.false88:                                     ; preds = %if.then84
  %26 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %27 = bitcast [3 x float]* %x to i8*
  %28 = load i32* %natoms, align 4, !tbaa !3
  %call89 = call i32 %26(i8* %27, i32 %28, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str65, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 841) #5
  br label %if.end92

if.end92:                                         ; preds = %if.end81, %cond.true86, %cond.false88
  %cmp95 = icmp eq [3 x float]* %v, null
  %or.cond204 = or i1 %tobool.not197210, %cmp95
  %bV103.pre = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 4
  br i1 %or.cond204, label %if.end102, label %land.lhs.true97

land.lhs.true97:                                  ; preds = %if.end92
  %29 = load i32* %bV103.pre, align 4, !tbaa !3
  %tobool99 = icmp eq i32 %29, 0
  br i1 %tobool99, label %if.then100, label %if.end102

if.then100:                                       ; preds = %land.lhs.true97
  %call101 = call i8* @gmx_fio_getname(i32 %fp) #5
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([12 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str66, i64 0, i64 0), i8* %call101) #5
  br label %if.end102

if.end102:                                        ; preds = %if.end92, %land.lhs.true97, %if.then100
  call void @_do_section(i32 %fp, i32 5, i32 %bRead, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 844) #6
  %30 = load i32* %bV103.pre, align 4, !tbaa !3
  %tobool104 = icmp eq i32 %30, 0
  br i1 %tobool104, label %if.end113, label %if.then105

if.then105:                                       ; preds = %if.end102
  br i1 %tobool, label %cond.true107, label %cond.false109

cond.true107:                                     ; preds = %if.then105
  %31 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %32 = bitcast [3 x float]* %v to i8*
  %33 = load i32* %natoms, align 4, !tbaa !3
  %call108 = call i32 %31(i8* %32, i32 %33, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str66, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 845) #5
  br label %if.end113

cond.false109:                                    ; preds = %if.then105
  %34 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %35 = bitcast [3 x float]* %v to i8*
  %36 = load i32* %natoms, align 4, !tbaa !3
  %call110 = call i32 %34(i8* %35, i32 %36, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str66, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 845) #5
  br label %if.end113

if.end113:                                        ; preds = %if.end102, %cond.true107, %cond.false109
  %cmp116 = icmp eq [3 x float]* %f, null
  %or.cond206 = or i1 %tobool.not197210, %cmp116
  %bF124.pre = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 5
  br i1 %or.cond206, label %if.end123, label %land.lhs.true118

land.lhs.true118:                                 ; preds = %if.end113
  %37 = load i32* %bF124.pre, align 4, !tbaa !3
  %tobool120 = icmp eq i32 %37, 0
  br i1 %tobool120, label %if.then121, label %if.end123

if.then121:                                       ; preds = %land.lhs.true118
  %call122 = call i8* @gmx_fio_getname(i32 %fp) #5
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([12 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str67, i64 0, i64 0), i8* %call122) #5
  br label %if.end123

if.end123:                                        ; preds = %if.end113, %land.lhs.true118, %if.then121
  call void @_do_section(i32 %fp, i32 6, i32 %bRead, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 848) #6
  %38 = load i32* %bF124.pre, align 4, !tbaa !3
  %tobool125 = icmp eq i32 %38, 0
  br i1 %tobool125, label %if.end134, label %if.then126

if.then126:                                       ; preds = %if.end123
  br i1 %tobool, label %cond.true128, label %cond.false130

cond.true128:                                     ; preds = %if.then126
  %39 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %40 = bitcast [3 x float]* %f to i8*
  %41 = load i32* %natoms, align 4, !tbaa !3
  %call129 = call i32 %39(i8* %40, i32 %41, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 849) #5
  br label %if.end134

cond.false130:                                    ; preds = %if.then126
  %42 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %43 = bitcast [3 x float]* %f to i8*
  %44 = load i32* %natoms, align 4, !tbaa !3
  %call131 = call i32 %42(i8* %43, i32 %44, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 849) #5
  br label %if.end134

if.end134:                                        ; preds = %if.end123, %cond.true128, %cond.false130
  call void @llvm.lifetime.end(i64 50264, i8* %2) #1
  call void @llvm.lifetime.end(i64 592, i8* %1) #1
  call void @llvm.lifetime.end(i64 40, i8* %0) #1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @read_tpx(i8* %fn, i32* nocapture %step, float* nocapture %t, float* nocapture %lambda, %struct.t_inputrec* %ir, [3 x float]* %box, i32* nocapture %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #0 {
entry:
  %call.i = tail call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str57, i64 0, i64 0)) #5
  tail call fastcc void @do_tpx(i32 %call.i, i32 1, i32* %step, float* %t, float* %lambda, %struct.t_inputrec* %ir, [3 x float]* %box, i32* %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #6
  tail call void @gmx_fio_close(i32 %call.i) #5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @fwrite_tpx(i32 %fp, i32 %step, float %t, float %lambda, %struct.t_inputrec* %ir, [3 x float]* %box, i32 %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #0 {
entry:
  %step.addr = alloca i32, align 4
  %t.addr = alloca float, align 4
  %lambda.addr = alloca float, align 4
  %natoms.addr = alloca i32, align 4
  store i32 %step, i32* %step.addr, align 4, !tbaa !3
  store float %t, float* %t.addr, align 4, !tbaa !4
  store float %lambda, float* %lambda.addr, align 4, !tbaa !4
  store i32 %natoms, i32* %natoms.addr, align 4, !tbaa !3
  call fastcc void @do_tpx(i32 %fp, i32 0, i32* %step.addr, float* %t.addr, float* %lambda.addr, %struct.t_inputrec* %ir, [3 x float]* %box, i32* %natoms.addr, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @fread_tpx(i32 %fp, i32* nocapture %step, float* nocapture %t, float* nocapture %lambda, %struct.t_inputrec* %ir, [3 x float]* %box, i32* nocapture %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #0 {
entry:
  tail call fastcc void @do_tpx(i32 %fp, i32 1, i32* %step, float* %t, float* %lambda, %struct.t_inputrec* %ir, [3 x float]* %box, i32* %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, %struct.t_topology* %top) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @fn2bTPX(i8* %file) #0 {
entry:
  %call = tail call i32 @fn2ftp(i8* %file) #5
  %call.off = add i32 %call, -26
  %switch = icmp ult i32 %call.off, 3
  %. = zext i1 %switch to i32
  ret i32 %.
}

; Function Attrs: optsize
declare i32 @fn2ftp(i8*) #2

; Function Attrs: nounwind optsize uwtable
define i32 @read_tps_conf(i8* %infile, i8* %title, %struct.t_topology* %top, [3 x float]** %x, [3 x float]** %v, [3 x float]* %box, i32 %bMass) #0 {
entry:
  %header = alloca %struct.t_tpxheader, align 4
  %t = alloca float, align 4
  %lambda = alloca float, align 4
  %natoms = alloca i32, align 4
  %step = alloca i32, align 4
  %0 = bitcast %struct.t_tpxheader* %header to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #1
  %call.i = call i32 @fn2ftp(i8* %infile) #5
  %call.off.i = add i32 %call.i, -26
  %switch.i = icmp ult i32 %call.off.i, 3
  %..i = zext i1 %switch.i to i32
  br i1 %switch.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call.i.i = call i32 @gmx_fio_open(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str57, i64 0, i64 0)) #5
  call fastcc void @do_tpxheader(i32 %call.i.i, i32 1, %struct.t_tpxheader* %header) #5
  call void @gmx_fio_close(i32 %call.i.i) #5
  %tobool1 = icmp eq [3 x float]** %x, null
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %natoms3 = getelementptr inbounds %struct.t_tpxheader* %header, i64 0, i32 6
  %1 = load i32* %natoms3, align 4, !tbaa !3
  %call4 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 938, i32 %1, i32 12) #5
  %2 = bitcast i8* %call4 to [3 x float]*
  store [3 x float]* %2, [3 x float]** %x, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then2
  %tobool5 = icmp eq [3 x float]** %v, null
  br i1 %tobool5, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  %natoms7 = getelementptr inbounds %struct.t_tpxheader* %header, i64 0, i32 6
  %3 = load i32* %natoms7, align 4, !tbaa !3
  %call8 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str60, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 940, i32 %3, i32 12) #5
  %4 = bitcast i8* %call8 to [3 x float]*
  store [3 x float]* %4, [3 x float]** %v, align 8, !tbaa !0
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then6
  br i1 %tobool1, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end9
  %5 = load [3 x float]** %x, align 8, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %if.end9, %cond.false
  %cond = phi [3 x float]* [ %5, %cond.false ], [ null, %if.end9 ]
  br i1 %tobool5, label %cond.end13, label %cond.false12

cond.false12:                                     ; preds = %cond.end
  %6 = load [3 x float]** %v, align 8, !tbaa !0
  br label %cond.end13

cond.end13:                                       ; preds = %cond.end, %cond.false12
  %cond14 = phi [3 x float]* [ %6, %cond.false12 ], [ null, %cond.end ]
  %call.i.i82 = call i32 @gmx_fio_open(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str57, i64 0, i64 0)) #5
  call fastcc void @do_tpx(i32 %call.i.i82, i32 1, i32* %step, float* %t, float* %lambda, %struct.t_inputrec* null, [3 x float]* %box, i32* %natoms, [3 x float]* %cond, [3 x float]* %cond14, [3 x float]* null, %struct.t_topology* %top) #5
  call void @gmx_fio_close(i32 %call.i.i82) #5
  %name = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0
  %7 = load i8*** %name, align 8, !tbaa !0
  %8 = load i8** %7, align 8, !tbaa !0
  %call15 = call i8* @strcpy(i8* %title, i8* %8) #5
  br label %if.end49

if.else:                                          ; preds = %entry
  call void @get_stx_coordnum(i8* %infile, i32* %natoms) #5
  %atoms = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2
  %9 = load i32* %natoms, align 4, !tbaa !3
  call void @init_t_atoms(%struct.t_atoms* %atoms, i32 %9, i32 0) #5
  %10 = load i32* %natoms, align 4, !tbaa !3
  %call17 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 949, i32 %10, i32 12) #5
  %11 = bitcast i8* %call17 to [3 x float]*
  store [3 x float]* %11, [3 x float]** %x, align 8, !tbaa !0
  %tobool18 = icmp eq [3 x float]** %v, null
  br i1 %tobool18, label %if.end31, label %cond.false26

cond.false26:                                     ; preds = %if.else
  %12 = load i32* %natoms, align 4, !tbaa !3
  %call20 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str60, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 951, i32 %12, i32 12) #5
  %13 = bitcast i8* %call20 to [3 x float]*
  store [3 x float]* %13, [3 x float]** %v, align 8, !tbaa !0
  %.pre = load [3 x float]** %x, align 8
  br label %if.end31

if.end31:                                         ; preds = %cond.false26, %if.else
  %14 = phi [3 x float]* [ %.pre, %cond.false26 ], [ %11, %if.else ]
  %cond28 = phi [3 x float]* [ %13, %cond.false26 ], [ null, %if.else ]
  call void @read_stx_conf(i8* %infile, i8* %title, %struct.t_atoms* %atoms, [3 x float]* %14, [3 x float]* %cond28, [3 x float]* %box) #5
  %tobool32 = icmp eq i32 %bMass, 0
  br i1 %tobool32, label %if.end48, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end31
  %15 = load i32* %natoms, align 4, !tbaa !3
  %cmp3483 = icmp sgt i32 %15, 0
  br i1 %cmp3483, label %for.body.lr.ph, label %if.end48

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %atom = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1
  %resname = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 6
  %atomname = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 2
  %.pre85 = load %struct.t_atom** %atom, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %16 = phi %struct.t_atom* [ %.pre85, %for.body.lr.ph ], [ %24, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %resnr = getelementptr inbounds %struct.t_atom* %16, i64 %indvars.iv, i32 7
  %17 = load i32* %resnr, align 4, !tbaa !3
  %idxprom37 = sext i32 %17 to i64
  %18 = load i8**** %resname, align 8, !tbaa !0
  %arrayidx39 = getelementptr inbounds i8*** %18, i64 %idxprom37
  %19 = load i8*** %arrayidx39, align 8, !tbaa !0
  %20 = load i8** %19, align 8, !tbaa !0
  %21 = load i8**** %atomname, align 8, !tbaa !0
  %arrayidx42 = getelementptr inbounds i8*** %21, i64 %indvars.iv
  %22 = load i8*** %arrayidx42, align 8, !tbaa !0
  %23 = load i8** %22, align 8, !tbaa !0
  %call43 = call float @get_mass(i8* %20, i8* %23) #5
  %24 = load %struct.t_atom** %atom, align 8, !tbaa !0
  %m = getelementptr inbounds %struct.t_atom* %24, i64 %indvars.iv, i32 0
  store float %call43, float* %m, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %25 = load i32* %natoms, align 4, !tbaa !3
  %26 = trunc i64 %indvars.iv.next to i32
  %cmp34 = icmp slt i32 %26, %25
  br i1 %cmp34, label %for.body, label %if.end48

if.end48:                                         ; preds = %for.cond.preheader, %for.body, %if.end31
  %ntypes = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 0
  store i32 -1, i32* %ntypes, align 4, !tbaa !3
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %cond.end13
  call void @llvm.lifetime.end(i64 40, i8* %0) #1
  ret i32 %..i
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #3

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
declare i8* @gmx_fio_getname(i32) #2

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
  store i32 0, i32* %idum, align 4, !tbaa !3
  %0 = load i32* @file_version, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, 24
  br i1 %cmp, label %if.then6, label %if.end

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([48 x i8]* @.str109, i64 0, i64 0), i32 %0, i32 24) #5
  %.pr = load i32* @file_version, align 4, !tbaa !3
  %cmp5 = icmp sgt i32 %.pr, 0
  br i1 %cmp5, label %if.then6, label %if.end1501

if.then6:                                         ; preds = %entry, %if.end
  %tobool = icmp ne i32 %bRead, 0
  br i1 %tobool, label %cond.true19, label %cond.false21

cond.true19:                                      ; preds = %if.then6
  %2 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %3 = bitcast %struct.t_inputrec* %ir to i8*
  %call7 = call i32 %2(i8* %3, i32 1, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str110, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 133) #5
  %4 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %nsteps = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 1
  %5 = bitcast i32* %nsteps to i8*
  %call12 = call i32 %4(i8* %5, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str111, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 134) #5
  %6 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %ePBC = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 25
  %7 = bitcast i32* %ePBC to i8*
  %call20 = call i32 %6(i8* %7, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str112, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 135) #5
  br label %cond.end24

cond.false21:                                     ; preds = %if.then6
  %8 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %9 = bitcast %struct.t_inputrec* %ir to i8*
  %call9 = call i32 %8(i8* %9, i32 1, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str110, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 133) #5
  %10 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %nsteps14 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 1
  %11 = bitcast i32* %nsteps14 to i8*
  %call15 = call i32 %10(i8* %11, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str111, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 134) #5
  %12 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %ePBC22 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 25
  %13 = bitcast i32* %ePBC22 to i8*
  %call23 = call i32 %12(i8* %13, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str112, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 135) #5
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false21, %cond.true19
  %14 = load i32* @file_version, align 4, !tbaa !3
  %cmp26 = icmp slt i32 %14, 16
  br i1 %cmp26, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %cond.end24
  %ePBC27 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 25
  %15 = load i32* %ePBC27, align 4, !tbaa !3
  %cmp28 = icmp eq i32 %15, 2
  br i1 %cmp28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %land.lhs.true
  store i32 1, i32* %ePBC27, align 4, !tbaa !3
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %land.lhs.true, %cond.end24
  br i1 %tobool, label %cond.true153, label %cond.false155

cond.true153:                                     ; preds = %if.end31
  %16 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %ns_type = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 2
  %17 = bitcast i32* %ns_type to i8*
  %call34 = call i32 %16(i8* %17, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str113, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 138) #5
  %18 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %nstlist = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 3
  %19 = bitcast i32* %nstlist to i8*
  %call42 = call i32 %18(i8* %19, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str114, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 139) #5
  %20 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %ndelta = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 4
  %21 = bitcast i32* %ndelta to i8*
  %call50 = call i32 %20(i8* %21, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str115, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 140) #5
  %22 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %bDomDecomp = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 5
  %23 = bitcast i32* %bDomDecomp to i8*
  %call58 = call i32 %22(i8* %23, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str116, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 141) #5
  %24 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %decomp_dir = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 6
  %25 = bitcast i32* %decomp_dir to i8*
  %call66 = call i32 %24(i8* %25, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str117, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 142) #5
  %26 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %nstcomm = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 7
  %27 = bitcast i32* %nstcomm to i8*
  %call74 = call i32 %26(i8* %27, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 143) #5
  %28 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %nstcgsteep = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 63
  %29 = bitcast i32* %nstcgsteep to i8*
  %call82 = call i32 %28(i8* %29, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str119, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 144) #5
  %30 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %nstlog = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 8
  %31 = bitcast i32* %nstlog to i8*
  %call90 = call i32 %30(i8* %31, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str120, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 145) #5
  %32 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %nstxout = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 9
  %33 = bitcast i32* %nstxout to i8*
  %call98 = call i32 %32(i8* %33, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str121, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 146) #5
  %34 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %nstvout = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 10
  %35 = bitcast i32* %nstvout to i8*
  %call106 = call i32 %34(i8* %35, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str122, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 147) #5
  %36 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %nstfout = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 11
  %37 = bitcast i32* %nstfout to i8*
  %call114 = call i32 %36(i8* %37, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str123, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 148) #5
  %38 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %nstenergy = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 12
  %39 = bitcast i32* %nstenergy to i8*
  %call122 = call i32 %38(i8* %39, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str124, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 149) #5
  %40 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %nstxtcout = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 13
  %41 = bitcast i32* %nstxtcout to i8*
  %call130 = call i32 %40(i8* %41, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str125, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 150) #5
  %42 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %init_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 14
  %43 = bitcast float* %init_t to i8*
  %call138 = call i32 %42(i8* %43, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str126, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 151) #5
  %44 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %delta_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %45 = bitcast float* %delta_t to i8*
  %call146 = call i32 %44(i8* %45, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str127, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 152) #5
  %46 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %xtcprec = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 16
  %47 = bitcast float* %xtcprec to i8*
  %call154 = call i32 %46(i8* %47, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str128, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 153) #5
  br label %cond.end158

cond.false155:                                    ; preds = %if.end31
  %48 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %ns_type36 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 2
  %49 = bitcast i32* %ns_type36 to i8*
  %call37 = call i32 %48(i8* %49, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str113, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 138) #5
  %50 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %nstlist44 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 3
  %51 = bitcast i32* %nstlist44 to i8*
  %call45 = call i32 %50(i8* %51, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str114, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 139) #5
  %52 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %ndelta52 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 4
  %53 = bitcast i32* %ndelta52 to i8*
  %call53 = call i32 %52(i8* %53, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str115, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 140) #5
  %54 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %bDomDecomp60 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 5
  %55 = bitcast i32* %bDomDecomp60 to i8*
  %call61 = call i32 %54(i8* %55, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str116, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 141) #5
  %56 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %decomp_dir68 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 6
  %57 = bitcast i32* %decomp_dir68 to i8*
  %call69 = call i32 %56(i8* %57, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str117, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 142) #5
  %58 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %nstcomm76 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 7
  %59 = bitcast i32* %nstcomm76 to i8*
  %call77 = call i32 %58(i8* %59, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 143) #5
  %60 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %nstcgsteep84 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 63
  %61 = bitcast i32* %nstcgsteep84 to i8*
  %call85 = call i32 %60(i8* %61, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str119, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 144) #5
  %62 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %nstlog92 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 8
  %63 = bitcast i32* %nstlog92 to i8*
  %call93 = call i32 %62(i8* %63, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str120, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 145) #5
  %64 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %nstxout100 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 9
  %65 = bitcast i32* %nstxout100 to i8*
  %call101 = call i32 %64(i8* %65, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str121, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 146) #5
  %66 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %nstvout108 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 10
  %67 = bitcast i32* %nstvout108 to i8*
  %call109 = call i32 %66(i8* %67, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str122, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 147) #5
  %68 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %nstfout116 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 11
  %69 = bitcast i32* %nstfout116 to i8*
  %call117 = call i32 %68(i8* %69, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str123, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 148) #5
  %70 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %nstenergy124 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 12
  %71 = bitcast i32* %nstenergy124 to i8*
  %call125 = call i32 %70(i8* %71, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str124, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 149) #5
  %72 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %nstxtcout132 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 13
  %73 = bitcast i32* %nstxtcout132 to i8*
  %call133 = call i32 %72(i8* %73, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str125, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 150) #5
  %74 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %init_t140 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 14
  %75 = bitcast float* %init_t140 to i8*
  %call141 = call i32 %74(i8* %75, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str126, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 151) #5
  %76 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %delta_t148 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %77 = bitcast float* %delta_t148 to i8*
  %call149 = call i32 %76(i8* %77, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str127, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 152) #5
  %78 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %xtcprec156 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 16
  %79 = bitcast float* %xtcprec156 to i8*
  %call157 = call i32 %78(i8* %79, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str128, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 153) #5
  br label %cond.end158

cond.end158:                                      ; preds = %cond.false155, %cond.true153
  %80 = load i32* @file_version, align 4, !tbaa !3
  %cmp160 = icmp slt i32 %80, 19
  br i1 %cmp160, label %if.then161, label %if.end186

if.then161:                                       ; preds = %cond.end158
  br i1 %tobool, label %cond.true170, label %cond.false172

cond.true170:                                     ; preds = %if.then161
  %81 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %82 = bitcast i32* %idum to i8*
  %call164 = call i32 %81(i8* %82, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 155) #5
  %83 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %call171 = call i32 %83(i8* %82, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 156) #5
  br label %if.end176

cond.false172:                                    ; preds = %if.then161
  %84 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %85 = bitcast i32* %idum to i8*
  %call166 = call i32 %84(i8* %85, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 155) #5
  %86 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %call173 = call i32 %86(i8* %85, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 156) #5
  br label %if.end176

if.end176:                                        ; preds = %cond.true170, %cond.false172
  %.pr1985 = load i32* @file_version, align 4, !tbaa !3
  %cmp177 = icmp slt i32 %.pr1985, 18
  br i1 %cmp177, label %if.then178, label %if.end186

if.then178:                                       ; preds = %if.end176
  br i1 %tobool, label %if.end186.thread, label %if.end186.thread1987

if.end186.thread:                                 ; preds = %if.then178
  %87 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %88 = bitcast i32* %idum to i8*
  %call181 = call i32 %87(i8* %88, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 159) #5
  br label %cond.true188

if.end186.thread1987:                             ; preds = %if.then178
  %89 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %90 = bitcast i32* %idum to i8*
  %call183 = call i32 %89(i8* %90, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 159) #5
  br label %cond.false190

if.end186:                                        ; preds = %cond.end158, %if.end176
  br i1 %tobool, label %cond.true188, label %cond.false190

cond.true188:                                     ; preds = %if.end186.thread, %if.end186
  %91 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %rlist = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 35
  %92 = bitcast float* %rlist to i8*
  %call189 = call i32 %91(i8* %92, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str130, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 160) #5
  br label %cond.end193

cond.false190:                                    ; preds = %if.end186.thread1987, %if.end186
  %93 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %rlist191 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 35
  %94 = bitcast float* %rlist191 to i8*
  %call192 = call i32 %93(i8* %94, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str130, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 160) #5
  br label %cond.end193

cond.end193:                                      ; preds = %cond.false190, %cond.true188
  br i1 %tobool, label %cond.true292, label %cond.false294

cond.true292:                                     ; preds = %cond.end193
  %95 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %coulombtype = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 36
  %96 = bitcast i32* %coulombtype to i8*
  %call197 = call i32 %95(i8* %96, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str131, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 161) #5
  %97 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %rcoulomb_switch = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37
  %98 = bitcast float* %rcoulomb_switch to i8*
  %call205 = call i32 %97(i8* %98, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str132, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 162) #5
  %99 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %rcoulomb = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38
  %100 = bitcast float* %rcoulomb to i8*
  %call213 = call i32 %99(i8* %100, i32 1, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str133, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 163) #5
  %101 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %vdwtype = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 39
  %102 = bitcast i32* %vdwtype to i8*
  %call221 = call i32 %101(i8* %102, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 164) #5
  %103 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %rvdw_switch = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 40
  %104 = bitcast float* %rvdw_switch to i8*
  %call229 = call i32 %103(i8* %104, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str135, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 165) #5
  %105 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %rvdw = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 41
  %106 = bitcast float* %rvdw to i8*
  %call237 = call i32 %105(i8* %106, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str136, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 166) #5
  %107 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %eDispCorr = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 43
  %108 = bitcast i32* %eDispCorr to i8*
  %call245 = call i32 %107(i8* %108, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str137, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 167) #5
  %109 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %epsilon_r = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 42
  %110 = bitcast float* %epsilon_r to i8*
  %call253 = call i32 %109(i8* %110, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str138, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 168) #5
  %111 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %nkx = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 17
  %112 = bitcast i32* %nkx to i8*
  %call261 = call i32 %111(i8* %112, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str139, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 169) #5
  %113 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %nky = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 18
  %114 = bitcast i32* %nky to i8*
  %call269 = call i32 %113(i8* %114, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str140, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 170) #5
  %115 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %nkz = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 19
  %116 = bitcast i32* %nkz to i8*
  %call277 = call i32 %115(i8* %116, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str141, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 171) #5
  %117 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %pme_order = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 20
  %118 = bitcast i32* %pme_order to i8*
  %call285 = call i32 %117(i8* %118, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str142, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 172) #5
  %119 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %ewald_rtol = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 21
  %120 = bitcast float* %ewald_rtol to i8*
  %call293 = call i32 %119(i8* %120, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str143, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 173) #5
  br label %cond.end297

cond.false294:                                    ; preds = %cond.end193
  %121 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %coulombtype199 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 36
  %122 = bitcast i32* %coulombtype199 to i8*
  %call200 = call i32 %121(i8* %122, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str131, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 161) #5
  %123 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %rcoulomb_switch207 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37
  %124 = bitcast float* %rcoulomb_switch207 to i8*
  %call208 = call i32 %123(i8* %124, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str132, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 162) #5
  %125 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %rcoulomb215 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38
  %126 = bitcast float* %rcoulomb215 to i8*
  %call216 = call i32 %125(i8* %126, i32 1, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str133, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 163) #5
  %127 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %vdwtype223 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 39
  %128 = bitcast i32* %vdwtype223 to i8*
  %call224 = call i32 %127(i8* %128, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 164) #5
  %129 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %rvdw_switch231 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 40
  %130 = bitcast float* %rvdw_switch231 to i8*
  %call232 = call i32 %129(i8* %130, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str135, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 165) #5
  %131 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %rvdw239 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 41
  %132 = bitcast float* %rvdw239 to i8*
  %call240 = call i32 %131(i8* %132, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str136, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 166) #5
  %133 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %eDispCorr247 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 43
  %134 = bitcast i32* %eDispCorr247 to i8*
  %call248 = call i32 %133(i8* %134, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str137, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 167) #5
  %135 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %epsilon_r255 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 42
  %136 = bitcast float* %epsilon_r255 to i8*
  %call256 = call i32 %135(i8* %136, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str138, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 168) #5
  %137 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %nkx263 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 17
  %138 = bitcast i32* %nkx263 to i8*
  %call264 = call i32 %137(i8* %138, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str139, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 169) #5
  %139 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %nky271 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 18
  %140 = bitcast i32* %nky271 to i8*
  %call272 = call i32 %139(i8* %140, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str140, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 170) #5
  %141 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %nkz279 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 19
  %142 = bitcast i32* %nkz279 to i8*
  %call280 = call i32 %141(i8* %142, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str141, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 171) #5
  %143 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %pme_order287 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 20
  %144 = bitcast i32* %pme_order287 to i8*
  %call288 = call i32 %143(i8* %144, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str142, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 172) #5
  %145 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %ewald_rtol295 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 21
  %146 = bitcast float* %ewald_rtol295 to i8*
  %call296 = call i32 %145(i8* %146, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str143, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 173) #5
  br label %cond.end297

cond.end297:                                      ; preds = %cond.false294, %cond.true292
  %147 = load i32* @file_version, align 4, !tbaa !3
  %cmp299 = icmp sgt i32 %147, 23
  br i1 %cmp299, label %if.then300, label %if.else

if.then300:                                       ; preds = %cond.end297
  br i1 %tobool, label %cond.true302, label %cond.false304

cond.true302:                                     ; preds = %if.then300
  %148 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %ewald_geometry = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 22
  %149 = bitcast i32* %ewald_geometry to i8*
  %call303 = call i32 %148(i8* %149, i32 1, i32 1, i8* getelementptr inbounds ([19 x i8]* @.str144, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 176) #5
  br label %if.end310

cond.false304:                                    ; preds = %if.then300
  %150 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %ewald_geometry305 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 22
  %151 = bitcast i32* %ewald_geometry305 to i8*
  %call306 = call i32 %150(i8* %151, i32 1, i32 1, i8* getelementptr inbounds ([19 x i8]* @.str144, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 176) #5
  br label %if.end310

if.else:                                          ; preds = %cond.end297
  %ewald_geometry309 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 22
  store i32 0, i32* %ewald_geometry309, align 4, !tbaa !3
  br label %if.end310

if.end310:                                        ; preds = %cond.true302, %cond.false304, %if.else
  %152 = load i32* @file_version, align 4, !tbaa !3
  %cmp311 = icmp slt i32 %152, 18
  br i1 %cmp311, label %if.then312, label %if.else323

if.then312:                                       ; preds = %if.end310
  %epsilon_surface = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 23
  store i32 0, i32* %epsilon_surface, align 4, !tbaa !3
  %153 = load i32* @file_version, align 4, !tbaa !3
  %cmp313 = icmp eq i32 %153, 17
  br i1 %cmp313, label %if.then314, label %if.end333

if.then314:                                       ; preds = %if.then312
  br i1 %tobool, label %cond.true316, label %cond.false318

cond.true316:                                     ; preds = %if.then314
  %154 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %155 = bitcast i32* %idum to i8*
  %call317 = call i32 %154(i8* %155, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 183) #5
  br label %cond.true335

cond.false318:                                    ; preds = %if.then314
  %156 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %157 = bitcast i32* %idum to i8*
  %call319 = call i32 %156(i8* %157, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 183) #5
  br label %cond.false337

if.else323:                                       ; preds = %if.end310
  br i1 %tobool, label %cond.true325, label %cond.false328

cond.true325:                                     ; preds = %if.else323
  %158 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %epsilon_surface326 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 23
  %159 = bitcast i32* %epsilon_surface326 to i8*
  %call327 = call i32 %158(i8* %159, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str145, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 186) #5
  br label %cond.true335

cond.false328:                                    ; preds = %if.else323
  %160 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %epsilon_surface329 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 23
  %161 = bitcast i32* %epsilon_surface329 to i8*
  %call330 = call i32 %160(i8* %161, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str145, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 186) #5
  br label %cond.false337

if.end333:                                        ; preds = %if.then312
  br i1 %tobool, label %cond.true335, label %cond.false337

cond.true335:                                     ; preds = %cond.true316, %cond.true325, %if.end333
  %162 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %bOptFFT = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 24
  %163 = bitcast i32* %bOptFFT to i8*
  %call336 = call i32 %162(i8* %163, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str146, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 188) #5
  br label %cond.end340

cond.false337:                                    ; preds = %cond.false318, %cond.false328, %if.end333
  %164 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %bOptFFT338 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 24
  %165 = bitcast i32* %bOptFFT338 to i8*
  %call339 = call i32 %164(i8* %165, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str146, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 188) #5
  br label %cond.end340

cond.end340:                                      ; preds = %cond.false337, %cond.true335
  br i1 %tobool, label %cond.true351, label %cond.false353

cond.true351:                                     ; preds = %cond.end340
  %166 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %bUncStart = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 26
  %167 = bitcast i32* %bUncStart to i8*
  %call344 = call i32 %166(i8* %167, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str147, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 189) #5
  %168 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %etc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 27
  %169 = bitcast i32* %etc to i8*
  %call352 = call i32 %168(i8* %169, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str148, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 190) #5
  br label %cond.end356

cond.false353:                                    ; preds = %cond.end340
  %170 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %bUncStart346 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 26
  %171 = bitcast i32* %bUncStart346 to i8*
  %call347 = call i32 %170(i8* %171, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str147, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 189) #5
  %172 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %etc354 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 27
  %173 = bitcast i32* %etc354 to i8*
  %call355 = call i32 %172(i8* %173, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str148, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 190) #5
  br label %cond.end356

cond.end356:                                      ; preds = %cond.false353, %cond.true351
  %174 = load i32* @file_version, align 4, !tbaa !3
  %cmp358 = icmp slt i32 %174, 16
  br i1 %cmp358, label %if.then359, label %if.end367

if.then359:                                       ; preds = %cond.end356
  br i1 %tobool, label %cond.true361, label %cond.false363

cond.true361:                                     ; preds = %if.then359
  %175 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %176 = bitcast i32* %idum to i8*
  %call362 = call i32 %175(i8* %176, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 196) #5
  br label %if.end367thread-pre-split

cond.false363:                                    ; preds = %if.then359
  %177 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %178 = bitcast i32* %idum to i8*
  %call364 = call i32 %177(i8* %178, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 196) #5
  br label %if.end367thread-pre-split

if.end367thread-pre-split:                        ; preds = %cond.false363, %cond.true361
  %.pr1990 = load i32* @file_version, align 4, !tbaa !3
  br label %if.end367

if.end367:                                        ; preds = %if.end367thread-pre-split, %cond.end356
  %179 = phi i32 [ %.pr1990, %if.end367thread-pre-split ], [ %174, %cond.end356 ]
  %cmp368 = icmp slt i32 %179, 18
  br i1 %cmp368, label %if.then369, label %if.else401

if.then369:                                       ; preds = %if.end367
  br i1 %tobool, label %cond.true371, label %cond.false373

cond.true371:                                     ; preds = %if.then369
  %180 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %epct = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 29
  %181 = bitcast i32* %epct to i8*
  %call372 = call i32 %180(i8* %181, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str149, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 198) #5
  br label %cond.end376

cond.false373:                                    ; preds = %if.then369
  %182 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %epct374 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 29
  %183 = bitcast i32* %epct374 to i8*
  %call375 = call i32 %182(i8* %183, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str149, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 198) #5
  br label %cond.end376

cond.end376:                                      ; preds = %cond.false373, %cond.true371
  %184 = load i32* @file_version, align 4, !tbaa !3
  %cmp378 = icmp slt i32 %184, 16
  %epct380 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 29
  br i1 %cmp378, label %if.then379, label %if.end392

if.then379:                                       ; preds = %cond.end376
  %185 = load i32* %epct380, align 4, !tbaa !3
  %cmp381 = icmp eq i32 %185, 5
  br i1 %cmp381, label %if.then382, label %if.end384

if.then382:                                       ; preds = %if.then379
  store i32 3, i32* %epct380, align 4, !tbaa !3
  br label %if.end384

if.end384:                                        ; preds = %if.then382, %if.then379
  br i1 %tobool, label %cond.true386, label %cond.false388

cond.true386:                                     ; preds = %if.end384
  %186 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %187 = bitcast i32* %idum to i8*
  %call387 = call i32 %186(i8* %187, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 202) #5
  br label %if.end392

cond.false388:                                    ; preds = %if.end384
  %188 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %189 = bitcast i32* %idum to i8*
  %call389 = call i32 %188(i8* %189, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 202) #5
  br label %if.end392

if.end392:                                        ; preds = %cond.end376, %cond.true386, %cond.false388
  %190 = load i32* %epct380, align 4, !tbaa !3
  %sub = add nsw i32 %190, -1
  store i32 %sub, i32* %epct380, align 4, !tbaa !3
  %cmp395 = icmp eq i32 %190, 0
  %epc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 28
  br i1 %cmp395, label %if.then396, label %if.else398

if.then396:                                       ; preds = %if.end392
  store i32 0, i32* %epc, align 4, !tbaa !3
  store i32 0, i32* %epct380, align 4, !tbaa !3
  br label %if.end420

if.else398:                                       ; preds = %if.end392
  store i32 1, i32* %epc, align 4, !tbaa !3
  br label %if.end420

if.else401:                                       ; preds = %if.end367
  br i1 %tobool, label %if.end420.thread, label %if.end420.thread1991

if.end420.thread:                                 ; preds = %if.else401
  %191 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %epc404 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 28
  %192 = bitcast i32* %epc404 to i8*
  %call405 = call i32 %191(i8* %192, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str150, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 214) #5
  %193 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %epct413 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 29
  %194 = bitcast i32* %epct413 to i8*
  %call414 = call i32 %193(i8* %194, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str149, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 215) #5
  br label %cond.true422

if.end420.thread1991:                             ; preds = %if.else401
  %195 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %epc407 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 28
  %196 = bitcast i32* %epc407 to i8*
  %call408 = call i32 %195(i8* %196, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str150, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 214) #5
  %197 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %epct416 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 29
  %198 = bitcast i32* %epct416 to i8*
  %call417 = call i32 %197(i8* %198, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str149, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 215) #5
  br label %cond.false424

if.end420:                                        ; preds = %if.then396, %if.else398
  br i1 %tobool, label %cond.true422, label %cond.false424

cond.true422:                                     ; preds = %if.end420.thread, %if.end420
  %199 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %tau_p = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 30
  %200 = bitcast float* %tau_p to i8*
  %call423 = call i32 %199(i8* %200, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str151, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 217) #5
  br label %cond.end427

cond.false424:                                    ; preds = %if.end420.thread1991, %if.end420
  %201 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %tau_p425 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 30
  %202 = bitcast float* %tau_p425 to i8*
  %call426 = call i32 %201(i8* %202, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str151, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 217) #5
  br label %cond.end427

cond.end427:                                      ; preds = %cond.false424, %cond.true422
  %203 = load i32* @file_version, align 4, !tbaa !3
  %cmp429 = icmp slt i32 %203, 16
  br i1 %cmp429, label %if.then430, label %if.else446

if.then430:                                       ; preds = %cond.end427
  br i1 %tobool, label %cond.true432, label %cond.false434

cond.true432:                                     ; preds = %if.then430
  %204 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %205 = bitcast [3 x float]* %vdum to i8*
  %call433 = call i32 %204(i8* %205, i32 1, i32 4, i8* getelementptr inbounds ([5 x i8]* @.str152, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 219) #5
  br label %cond.end437

cond.false434:                                    ; preds = %if.then430
  %206 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %207 = bitcast [3 x float]* %vdum to i8*
  %call436 = call i32 %206(i8* %207, i32 1, i32 4, i8* getelementptr inbounds ([5 x i8]* @.str152, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 219) #5
  br label %cond.end437

cond.end437:                                      ; preds = %cond.false434, %cond.true432
  %arraydecay439 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 0
  %208 = bitcast [3 x float]* %arraydecay439 to i8*
  call void @llvm.memset.p0i8.i64(i8* %208, i8 0, i64 36, i32 4, i1 false) #1
  br label %for.body

for.body:                                         ; preds = %for.body, %cond.end437
  %indvars.iv2061 = phi i64 [ 0, %cond.end437 ], [ %indvars.iv.next2062, %for.body ]
  %arrayidx = getelementptr inbounds [3 x float]* %vdum, i64 0, i64 %indvars.iv2061
  %209 = load float* %arrayidx, align 4, !tbaa !4
  %arrayidx445 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 %indvars.iv2061, i64 %indvars.iv2061
  store float %209, float* %arrayidx445, align 4, !tbaa !4
  %indvars.iv.next2062 = add i64 %indvars.iv2061, 1
  %lftr.wideiv2063 = trunc i64 %indvars.iv.next2062 to i32
  %exitcond2064 = icmp eq i32 %lftr.wideiv2063, 3
  br i1 %exitcond2064, label %if.end486, label %for.body

if.else446:                                       ; preds = %cond.end427
  br i1 %tobool, label %cond.true474, label %cond.false479

cond.true474:                                     ; preds = %if.else446
  %210 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %arraydecay451 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 0, i64 0
  %211 = bitcast float* %arraydecay451 to i8*
  %call452 = call i32 %210(i8* %211, i32 1, i32 4, i8* getelementptr inbounds ([14 x i8]* @.str153, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 224) #5
  %212 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %arraydecay464 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 1, i64 0
  %213 = bitcast float* %arraydecay464 to i8*
  %call465 = call i32 %212(i8* %213, i32 1, i32 4, i8* getelementptr inbounds ([14 x i8]* @.str154, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 225) #5
  %214 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %arraydecay477 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 2, i64 0
  %215 = bitcast float* %arraydecay477 to i8*
  %call478 = call i32 %214(i8* %215, i32 1, i32 4, i8* getelementptr inbounds ([14 x i8]* @.str155, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 226) #5
  br label %if.end486

cond.false479:                                    ; preds = %if.else446
  %216 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %arraydecay456 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 0, i64 0
  %217 = bitcast float* %arraydecay456 to i8*
  %call457 = call i32 %216(i8* %217, i32 1, i32 4, i8* getelementptr inbounds ([14 x i8]* @.str153, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 224) #5
  %218 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %arraydecay469 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 1, i64 0
  %219 = bitcast float* %arraydecay469 to i8*
  %call470 = call i32 %218(i8* %219, i32 1, i32 4, i8* getelementptr inbounds ([14 x i8]* @.str154, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 225) #5
  %220 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %arraydecay482 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 2, i64 0
  %221 = bitcast float* %arraydecay482 to i8*
  %call483 = call i32 %220(i8* %221, i32 1, i32 4, i8* getelementptr inbounds ([14 x i8]* @.str155, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 226) #5
  br label %if.end486

if.end486:                                        ; preds = %for.body, %cond.true474, %cond.false479
  %222 = load i32* @file_version, align 4, !tbaa !3
  %cmp487 = icmp slt i32 %222, 16
  br i1 %cmp487, label %if.then488, label %if.else512

if.then488:                                       ; preds = %if.end486
  br i1 %tobool, label %cond.true490, label %cond.false493

cond.true490:                                     ; preds = %if.then488
  %223 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %224 = bitcast [3 x float]* %vdum to i8*
  %call492 = call i32 %223(i8* %224, i32 1, i32 4, i8* getelementptr inbounds ([5 x i8]* @.str152, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 229) #5
  br label %cond.end496

cond.false493:                                    ; preds = %if.then488
  %225 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %226 = bitcast [3 x float]* %vdum to i8*
  %call495 = call i32 %225(i8* %226, i32 1, i32 4, i8* getelementptr inbounds ([5 x i8]* @.str152, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 229) #5
  br label %cond.end496

cond.end496:                                      ; preds = %cond.false493, %cond.true490
  %arraydecay498 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 0
  %227 = bitcast [3 x float]* %arraydecay498 to i8*
  call void @llvm.memset.p0i8.i64(i8* %227, i8 0, i64 36, i32 4, i1 false) #1
  br label %for.body501

for.body501:                                      ; preds = %for.body501, %cond.end496
  %indvars.iv2057 = phi i64 [ 0, %cond.end496 ], [ %indvars.iv.next2058, %for.body501 ]
  %arrayidx503 = getelementptr inbounds [3 x float]* %vdum, i64 0, i64 %indvars.iv2057
  %228 = load float* %arrayidx503, align 4, !tbaa !4
  %arrayidx508 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 %indvars.iv2057, i64 %indvars.iv2057
  store float %228, float* %arrayidx508, align 4, !tbaa !4
  %indvars.iv.next2058 = add i64 %indvars.iv2057, 1
  %lftr.wideiv2059 = trunc i64 %indvars.iv.next2058 to i32
  %exitcond2060 = icmp eq i32 %lftr.wideiv2059, 3
  br i1 %exitcond2060, label %if.end552, label %for.body501

if.else512:                                       ; preds = %if.end486
  br i1 %tobool, label %if.end552.thread, label %if.end552.thread1992

if.end552.thread:                                 ; preds = %if.else512
  %229 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %arraydecay517 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 0, i64 0
  %230 = bitcast float* %arraydecay517 to i8*
  %call518 = call i32 %229(i8* %230, i32 1, i32 4, i8* getelementptr inbounds ([17 x i8]* @.str156, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 235) #5
  %231 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %arraydecay530 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 1, i64 0
  %232 = bitcast float* %arraydecay530 to i8*
  %call531 = call i32 %231(i8* %232, i32 1, i32 4, i8* getelementptr inbounds ([17 x i8]* @.str157, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 236) #5
  %233 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %arraydecay543 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 2, i64 0
  %234 = bitcast float* %arraydecay543 to i8*
  %call544 = call i32 %233(i8* %234, i32 1, i32 4, i8* getelementptr inbounds ([17 x i8]* @.str158, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 237) #5
  br label %cond.true554

if.end552.thread1992:                             ; preds = %if.else512
  %235 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %arraydecay522 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 0, i64 0
  %236 = bitcast float* %arraydecay522 to i8*
  %call523 = call i32 %235(i8* %236, i32 1, i32 4, i8* getelementptr inbounds ([17 x i8]* @.str156, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 235) #5
  %237 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %arraydecay535 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 1, i64 0
  %238 = bitcast float* %arraydecay535 to i8*
  %call536 = call i32 %237(i8* %238, i32 1, i32 4, i8* getelementptr inbounds ([17 x i8]* @.str157, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 236) #5
  %239 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %arraydecay548 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 2, i64 0
  %240 = bitcast float* %arraydecay548 to i8*
  %call549 = call i32 %239(i8* %240, i32 1, i32 4, i8* getelementptr inbounds ([17 x i8]* @.str158, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 237) #5
  br label %cond.false556

if.end552:                                        ; preds = %for.body501
  br i1 %tobool, label %cond.true554, label %cond.false556

cond.true554:                                     ; preds = %if.end552.thread, %if.end552
  %241 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %bSimAnn = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 33
  %242 = bitcast i32* %bSimAnn to i8*
  %call555 = call i32 %241(i8* %242, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str159, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 239) #5
  br label %cond.end559

cond.false556:                                    ; preds = %if.end552.thread1992, %if.end552
  %243 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %bSimAnn557 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 33
  %244 = bitcast i32* %bSimAnn557 to i8*
  %call558 = call i32 %243(i8* %244, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str159, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 239) #5
  br label %cond.end559

cond.end559:                                      ; preds = %cond.false556, %cond.true554
  br i1 %tobool, label %cond.true595, label %cond.false597

cond.true595:                                     ; preds = %cond.end559
  %245 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %zero_temp_time = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 34
  %246 = bitcast float* %zero_temp_time to i8*
  %call563 = call i32 %245(i8* %246, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str160, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 240) #5
  %247 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %epsilon_r571 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 42
  %248 = bitcast float* %epsilon_r571 to i8*
  %call572 = call i32 %247(i8* %248, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str138, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 241) #5
  %249 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %shake_tol = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 44
  %250 = bitcast float* %shake_tol to i8*
  %call580 = call i32 %249(i8* %250, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str161, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 242) #5
  %251 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %fudgeQQ = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 45
  %252 = bitcast float* %fudgeQQ to i8*
  %call588 = call i32 %251(i8* %252, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str162, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 243) #5
  %253 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %efep = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46
  %254 = bitcast i32* %efep to i8*
  %call596 = call i32 %253(i8* %254, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str163, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 244) #5
  br label %cond.end600

cond.false597:                                    ; preds = %cond.end559
  %255 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %zero_temp_time565 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 34
  %256 = bitcast float* %zero_temp_time565 to i8*
  %call566 = call i32 %255(i8* %256, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str160, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 240) #5
  %257 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %epsilon_r574 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 42
  %258 = bitcast float* %epsilon_r574 to i8*
  %call575 = call i32 %257(i8* %258, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str138, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 241) #5
  %259 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %shake_tol582 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 44
  %260 = bitcast float* %shake_tol582 to i8*
  %call583 = call i32 %259(i8* %260, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str161, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 242) #5
  %261 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %fudgeQQ590 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 45
  %262 = bitcast float* %fudgeQQ590 to i8*
  %call591 = call i32 %261(i8* %262, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str162, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 243) #5
  %263 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %efep598 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46
  %264 = bitcast i32* %efep598 to i8*
  %call599 = call i32 %263(i8* %264, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str163, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 244) #5
  br label %cond.end600

cond.end600:                                      ; preds = %cond.false597, %cond.true595
  %265 = load i32* @file_version, align 4, !tbaa !3
  %cmp602 = icmp slt i32 %265, 15
  br i1 %cmp602, label %land.lhs.true603, label %if.end608

land.lhs.true603:                                 ; preds = %cond.end600
  %efep604 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46
  %266 = load i32* %efep604, align 4, !tbaa !3
  %cmp605 = icmp sgt i32 %266, 0
  br i1 %cmp605, label %if.then606, label %if.end608

if.then606:                                       ; preds = %land.lhs.true603
  store i32 1, i32* %efep604, align 4, !tbaa !3
  br label %if.end608

if.end608:                                        ; preds = %if.then606, %land.lhs.true603, %cond.end600
  br i1 %tobool, label %cond.true618, label %cond.false620

cond.true618:                                     ; preds = %if.end608
  %267 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %init_lambda = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 47
  %268 = bitcast float* %init_lambda to i8*
  %call611 = call i32 %267(i8* %268, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str164, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 247) #5
  %269 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %delta_lambda = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 48
  %270 = bitcast float* %delta_lambda to i8*
  %call619 = call i32 %269(i8* %270, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str165, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 248) #5
  br label %cond.end623

cond.false620:                                    ; preds = %if.end608
  %271 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %init_lambda613 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 47
  %272 = bitcast float* %init_lambda613 to i8*
  %call614 = call i32 %271(i8* %272, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str164, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 247) #5
  %273 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %delta_lambda621 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 48
  %274 = bitcast float* %delta_lambda621 to i8*
  %call622 = call i32 %273(i8* %274, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str165, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 248) #5
  br label %cond.end623

cond.end623:                                      ; preds = %cond.false620, %cond.true618
  %275 = load i32* @file_version, align 4, !tbaa !3
  %cmp625 = icmp sgt i32 %275, 12
  br i1 %cmp625, label %if.then626, label %if.else635

if.then626:                                       ; preds = %cond.end623
  br i1 %tobool, label %cond.true628, label %cond.false630

cond.true628:                                     ; preds = %if.then626
  %276 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %sc_alpha = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 49
  %277 = bitcast float* %sc_alpha to i8*
  %call629 = call i32 %276(i8* %277, i32 1, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str166, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 250) #5
  br label %if.end637

cond.false630:                                    ; preds = %if.then626
  %278 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %sc_alpha631 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 49
  %279 = bitcast float* %sc_alpha631 to i8*
  %call632 = call i32 %278(i8* %279, i32 1, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str166, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 250) #5
  br label %if.end637

if.else635:                                       ; preds = %cond.end623
  %sc_alpha636 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 49
  store float 0.000000e+00, float* %sc_alpha636, align 4, !tbaa !4
  br label %if.end637

if.end637:                                        ; preds = %cond.true628, %cond.false630, %if.else635
  %280 = load i32* @file_version, align 4, !tbaa !3
  %cmp638 = icmp sgt i32 %280, 14
  br i1 %cmp638, label %if.then639, label %if.end650

if.then639:                                       ; preds = %if.end637
  br i1 %tobool, label %if.end650.thread, label %if.end650.thread1993

if.end650.thread:                                 ; preds = %if.then639
  %281 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %sc_sigma = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 50
  %282 = bitcast float* %sc_sigma to i8*
  %call642 = call i32 %281(i8* %282, i32 1, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str167, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 254) #5
  br label %cond.true652

if.end650.thread1993:                             ; preds = %if.then639
  %283 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %sc_sigma644 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 50
  %284 = bitcast float* %sc_sigma644 to i8*
  %call645 = call i32 %283(i8* %284, i32 1, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str167, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 254) #5
  br label %cond.false654

if.end650:                                        ; preds = %if.end637
  %sc_sigma649 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 50
  store float 0x3FD3333340000000, float* %sc_sigma649, align 4, !tbaa !4
  br i1 %tobool, label %cond.true652, label %cond.false654

cond.true652:                                     ; preds = %if.end650.thread, %if.end650
  %285 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %eDisreWeighting = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 52
  %286 = bitcast i32* %eDisreWeighting to i8*
  %call653 = call i32 %285(i8* %286, i32 1, i32 1, i8* getelementptr inbounds ([20 x i8]* @.str168, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 257) #5
  br label %cond.end657

cond.false654:                                    ; preds = %if.end650.thread1993, %if.end650
  %287 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %eDisreWeighting655 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 52
  %288 = bitcast i32* %eDisreWeighting655 to i8*
  %call656 = call i32 %287(i8* %288, i32 1, i32 1, i8* getelementptr inbounds ([20 x i8]* @.str168, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 257) #5
  br label %cond.end657

cond.end657:                                      ; preds = %cond.false654, %cond.true652
  %289 = load i32* @file_version, align 4, !tbaa !3
  %cmp659 = icmp slt i32 %289, 22
  br i1 %cmp659, label %if.then660, label %if.end668

if.then660:                                       ; preds = %cond.end657
  %eDisreWeighting661 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 52
  %290 = load i32* %eDisreWeighting661, align 4, !tbaa !3
  %cmp662 = icmp eq i32 %290, 0
  br i1 %cmp662, label %if.then663, label %if.else665

if.then663:                                       ; preds = %if.then660
  store i32 1, i32* %eDisreWeighting661, align 4, !tbaa !3
  br label %if.end668

if.else665:                                       ; preds = %if.then660
  store i32 0, i32* %eDisreWeighting661, align 4, !tbaa !3
  br label %if.end668

if.end668:                                        ; preds = %if.then663, %if.else665, %cond.end657
  br i1 %tobool, label %cond.true694, label %cond.false696

cond.true694:                                     ; preds = %if.end668
  %291 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %bDisreMixed = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 53
  %292 = bitcast i32* %bDisreMixed to i8*
  %call671 = call i32 %291(i8* %292, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str169, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 264) #5
  %293 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %dr_fc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 51
  %294 = bitcast float* %dr_fc to i8*
  %call679 = call i32 %293(i8* %294, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str170, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 265) #5
  %295 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %dr_tau = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 55
  %296 = bitcast float* %dr_tau to i8*
  %call687 = call i32 %295(i8* %296, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str171, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 266) #5
  %297 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %nstdisreout = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 54
  %298 = bitcast i32* %nstdisreout to i8*
  %call695 = call i32 %297(i8* %298, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str172, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 267) #5
  br label %cond.end699

cond.false696:                                    ; preds = %if.end668
  %299 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %bDisreMixed673 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 53
  %300 = bitcast i32* %bDisreMixed673 to i8*
  %call674 = call i32 %299(i8* %300, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str169, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 264) #5
  %301 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %dr_fc681 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 51
  %302 = bitcast float* %dr_fc681 to i8*
  %call682 = call i32 %301(i8* %302, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str170, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 265) #5
  %303 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %dr_tau689 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 55
  %304 = bitcast float* %dr_tau689 to i8*
  %call690 = call i32 %303(i8* %304, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str171, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 266) #5
  %305 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %nstdisreout697 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 54
  %306 = bitcast i32* %nstdisreout697 to i8*
  %call698 = call i32 %305(i8* %306, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str172, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 267) #5
  br label %cond.end699

cond.end699:                                      ; preds = %cond.false696, %cond.true694
  %307 = load i32* @file_version, align 4, !tbaa !3
  %cmp701 = icmp sgt i32 %307, 21
  br i1 %cmp701, label %if.then702, label %if.end731

if.then702:                                       ; preds = %cond.end699
  br i1 %tobool, label %if.end731.thread, label %if.end731.thread1994

if.end731.thread:                                 ; preds = %if.then702
  %308 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %orires_fc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 56
  %309 = bitcast float* %orires_fc to i8*
  %call705 = call i32 %308(i8* %309, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str173, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 269) #5
  %310 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %orires_tau = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 57
  %311 = bitcast float* %orires_tau to i8*
  %call713 = call i32 %310(i8* %311, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str174, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 270) #5
  %312 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %nstorireout = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 58
  %313 = bitcast i32* %nstorireout to i8*
  %call721 = call i32 %312(i8* %313, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str175, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 271) #5
  br label %cond.true733

if.end731.thread1994:                             ; preds = %if.then702
  %314 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %orires_fc707 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 56
  %315 = bitcast float* %orires_fc707 to i8*
  %call708 = call i32 %314(i8* %315, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str173, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 269) #5
  %316 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %orires_tau715 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 57
  %317 = bitcast float* %orires_tau715 to i8*
  %call716 = call i32 %316(i8* %317, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str174, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 270) #5
  %318 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %nstorireout723 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 58
  %319 = bitcast i32* %nstorireout723 to i8*
  %call724 = call i32 %318(i8* %319, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str175, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 271) #5
  br label %cond.false735

if.end731:                                        ; preds = %cond.end699
  %orires_fc728 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 56
  store float 0.000000e+00, float* %orires_fc728, align 4, !tbaa !4
  %orires_tau729 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 57
  store float 0.000000e+00, float* %orires_tau729, align 4, !tbaa !4
  %nstorireout730 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 58
  store i32 0, i32* %nstorireout730, align 4, !tbaa !3
  br i1 %tobool, label %cond.true733, label %cond.false735

cond.true733:                                     ; preds = %if.end731.thread, %if.end731
  %320 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %em_stepsize = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 59
  %321 = bitcast float* %em_stepsize to i8*
  %call734 = call i32 %320(i8* %321, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str176, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 277) #5
  br label %cond.end738

cond.false735:                                    ; preds = %if.end731.thread1994, %if.end731
  %322 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %em_stepsize736 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 59
  %323 = bitcast float* %em_stepsize736 to i8*
  %call737 = call i32 %322(i8* %323, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str176, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 277) #5
  br label %cond.end738

cond.end738:                                      ; preds = %cond.false735, %cond.true733
  br i1 %tobool, label %cond.true741, label %cond.false743

cond.true741:                                     ; preds = %cond.end738
  %324 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %em_tol = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 60
  %325 = bitcast float* %em_tol to i8*
  %call742 = call i32 %324(i8* %325, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str177, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 278) #5
  br label %cond.end746

cond.false743:                                    ; preds = %cond.end738
  %326 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %em_tol744 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 60
  %327 = bitcast float* %em_tol744 to i8*
  %call745 = call i32 %326(i8* %327, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str177, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 278) #5
  br label %cond.end746

cond.end746:                                      ; preds = %cond.false743, %cond.true741
  %328 = load i32* @file_version, align 4, !tbaa !3
  %cmp748 = icmp sgt i32 %328, 21
  br i1 %cmp748, label %if.then749, label %if.else758

if.then749:                                       ; preds = %cond.end746
  br i1 %tobool, label %cond.true751, label %cond.false753

cond.true751:                                     ; preds = %if.then749
  %329 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %bShakeSOR = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 67
  %330 = bitcast i32* %bShakeSOR to i8*
  %call752 = call i32 %329(i8* %330, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str178, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 280) #5
  br label %if.end763

cond.false753:                                    ; preds = %if.then749
  %331 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %bShakeSOR754 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 67
  %332 = bitcast i32* %bShakeSOR754 to i8*
  %call755 = call i32 %331(i8* %332, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str178, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 280) #5
  br label %if.end763

if.else758:                                       ; preds = %cond.end746
  br i1 %tobool, label %if.then760, label %if.end763

if.then760:                                       ; preds = %if.else758
  %bShakeSOR761 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 67
  store i32 1, i32* %bShakeSOR761, align 4, !tbaa !3
  br label %if.end763

if.end763:                                        ; preds = %if.else758, %if.then760, %cond.true751, %cond.false753
  %333 = load i32* @file_version, align 4, !tbaa !3
  %cmp764 = icmp sgt i32 %333, 10
  br i1 %cmp764, label %if.then765, label %if.else774

if.then765:                                       ; preds = %if.end763
  br i1 %tobool, label %cond.true767, label %cond.false769

cond.true767:                                     ; preds = %if.then765
  %334 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %niter = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 61
  %335 = bitcast i32* %niter to i8*
  %call768 = call i32 %334(i8* %335, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str179, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 284) #5
  br label %if.end781

cond.false769:                                    ; preds = %if.then765
  %336 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %niter770 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 61
  %337 = bitcast i32* %niter770 to i8*
  %call771 = call i32 %336(i8* %337, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str179, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 284) #5
  br label %if.end781

if.else774:                                       ; preds = %if.end763
  br i1 %tobool, label %if.then776, label %if.end781

if.then776:                                       ; preds = %if.else774
  %niter777 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 61
  store i32 25, i32* %niter777, align 4, !tbaa !3
  %338 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call779 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %338, i8* getelementptr inbounds ([53 x i8]* @.str180, i64 0, i64 0), i32 25) #5
  br label %if.end781

if.end781:                                        ; preds = %if.else774, %if.then776, %cond.true767, %cond.false769
  %339 = load i32* @file_version, align 4, !tbaa !3
  %cmp782 = icmp sgt i32 %339, 20
  br i1 %cmp782, label %if.then783, label %if.end794

if.then783:                                       ; preds = %if.end781
  br i1 %tobool, label %if.end794.thread, label %if.end794.thread1995

if.end794.thread:                                 ; preds = %if.then783
  %340 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %fc_stepsize = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 62
  %341 = bitcast i32* %fc_stepsize to i8*
  %call786 = call i32 %340(i8* %341, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str181, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 291) #5
  br label %cond.true796

if.end794.thread1995:                             ; preds = %if.then783
  %342 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %fc_stepsize788 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 62
  %343 = bitcast i32* %fc_stepsize788 to i8*
  %call789 = call i32 %342(i8* %343, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str181, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 291) #5
  br label %cond.false798

if.end794:                                        ; preds = %if.end781
  %fc_stepsize793 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 62
  store i32 0, i32* %fc_stepsize793, align 4, !tbaa !3
  br i1 %tobool, label %cond.true796, label %cond.false798

cond.true796:                                     ; preds = %if.end794.thread, %if.end794
  %344 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %eConstrAlg = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 64
  %345 = bitcast i32* %eConstrAlg to i8*
  %call797 = call i32 %344(i8* %345, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str182, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 294) #5
  br label %cond.end801

cond.false798:                                    ; preds = %if.end794.thread1995, %if.end794
  %346 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %eConstrAlg799 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 64
  %347 = bitcast i32* %eConstrAlg799 to i8*
  %call800 = call i32 %346(i8* %347, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str182, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 294) #5
  br label %cond.end801

cond.end801:                                      ; preds = %cond.false798, %cond.true796
  br i1 %tobool, label %cond.true812, label %cond.false814

cond.true812:                                     ; preds = %cond.end801
  %348 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %nProjOrder = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 65
  %349 = bitcast i32* %nProjOrder to i8*
  %call805 = call i32 %348(i8* %349, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str183, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 295) #5
  %350 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %LincsWarnAngle = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 66
  %351 = bitcast float* %LincsWarnAngle to i8*
  %call813 = call i32 %350(i8* %351, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str184, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 296) #5
  br label %cond.end817

cond.false814:                                    ; preds = %cond.end801
  %352 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %nProjOrder807 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 65
  %353 = bitcast i32* %nProjOrder807 to i8*
  %call808 = call i32 %352(i8* %353, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str183, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 295) #5
  %354 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %LincsWarnAngle815 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 66
  %355 = bitcast float* %LincsWarnAngle815 to i8*
  %call816 = call i32 %354(i8* %355, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str184, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 296) #5
  br label %cond.end817

cond.end817:                                      ; preds = %cond.false814, %cond.true812
  %356 = load i32* @file_version, align 4, !tbaa !3
  %cmp819 = icmp slt i32 %356, 15
  br i1 %cmp819, label %if.then820, label %if.end828

if.then820:                                       ; preds = %cond.end817
  br i1 %tobool, label %if.end828.thread, label %if.end828.thread1996

if.end828.thread:                                 ; preds = %if.then820
  %357 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %358 = bitcast i32* %idum to i8*
  %call823 = call i32 %357(i8* %358, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 298) #5
  br label %cond.true830

if.end828.thread1996:                             ; preds = %if.then820
  %359 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %360 = bitcast i32* %idum to i8*
  %call825 = call i32 %359(i8* %360, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str129, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 298) #5
  br label %cond.false832

if.end828:                                        ; preds = %cond.end817
  br i1 %tobool, label %cond.true830, label %cond.false832

cond.true830:                                     ; preds = %if.end828.thread, %if.end828
  %361 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %bd_temp = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 68
  %362 = bitcast float* %bd_temp to i8*
  %call831 = call i32 %361(i8* %362, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str185, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 299) #5
  br label %cond.end835

cond.false832:                                    ; preds = %if.end828.thread1996, %if.end828
  %363 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %bd_temp833 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 68
  %364 = bitcast float* %bd_temp833 to i8*
  %call834 = call i32 %363(i8* %364, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str185, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 299) #5
  br label %cond.end835

cond.end835:                                      ; preds = %cond.false832, %cond.true830
  br i1 %tobool, label %cond.true846, label %cond.false848

cond.true846:                                     ; preds = %cond.end835
  %365 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %bd_fric = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 69
  %366 = bitcast float* %bd_fric to i8*
  %call839 = call i32 %365(i8* %366, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str186, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 300) #5
  %367 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %ld_seed = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 70
  %368 = bitcast i32* %ld_seed to i8*
  %call847 = call i32 %367(i8* %368, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str187, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 301) #5
  br label %cond.end851

cond.false848:                                    ; preds = %cond.end835
  %369 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %bd_fric841 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 69
  %370 = bitcast float* %bd_fric841 to i8*
  %call842 = call i32 %369(i8* %370, i32 1, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str186, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 300) #5
  %371 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %ld_seed849 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 70
  %372 = bitcast i32* %ld_seed849 to i8*
  %call850 = call i32 %371(i8* %372, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str187, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 301) #5
  br label %cond.end851

cond.end851:                                      ; preds = %cond.false848, %cond.true846
  %373 = load i32* @file_version, align 4, !tbaa !3
  %cmp853 = icmp sgt i32 %373, 13
  br i1 %cmp853, label %if.then854, label %if.else863

if.then854:                                       ; preds = %cond.end851
  br i1 %tobool, label %cond.true856, label %if.end868

cond.true856:                                     ; preds = %if.then854
  %374 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %cos_accel = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 71
  %375 = bitcast float* %cos_accel to i8*
  %call857 = call i32 %374(i8* %375, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str188, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 303) #5
  br label %if.then973

if.else863:                                       ; preds = %cond.end851
  br i1 %tobool, label %if.then865, label %cond.end970

if.then865:                                       ; preds = %if.else863
  %cos_accel866 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 71
  store float 0.000000e+00, float* %cos_accel866, align 4, !tbaa !4
  br label %if.then973

if.end868:                                        ; preds = %if.then854
  %376 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %cos_accel859 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 71
  %377 = bitcast float* %cos_accel859 to i8*
  %call860 = call i32 %376(i8* %377, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str188, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 303) #5
  br label %cond.end970

cond.end970:                                      ; preds = %if.else863, %if.end868
  %378 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %userint1873 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 72
  %379 = bitcast i32* %userint1873 to i8*
  %call874 = call i32 %378(i8* %379, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str189, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 306) #5
  %380 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %userint2881 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 73
  %381 = bitcast i32* %userint2881 to i8*
  %call882 = call i32 %380(i8* %381, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str190, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 307) #5
  %382 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %userint3889 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 74
  %383 = bitcast i32* %userint3889 to i8*
  %call890 = call i32 %382(i8* %383, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str191, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 308) #5
  %384 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %userint4897 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 75
  %385 = bitcast i32* %userint4897 to i8*
  %call898 = call i32 %384(i8* %385, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str192, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 309) #5
  %386 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %userreal1905 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 76
  %387 = bitcast float* %userreal1905 to i8*
  %call906 = call i32 %386(i8* %387, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str193, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 310) #5
  %388 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %userreal2913 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 77
  %389 = bitcast float* %userreal2913 to i8*
  %call914 = call i32 %388(i8* %389, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str194, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 311) #5
  %390 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %userreal3921 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 78
  %391 = bitcast float* %userreal3921 to i8*
  %call922 = call i32 %390(i8* %391, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str195, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 312) #5
  %392 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %userreal4929 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 79
  %393 = bitcast float* %userreal4929 to i8*
  %call930 = call i32 %392(i8* %393, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str196, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 313) #5
  %394 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %ngtc938 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 0
  %395 = bitcast i32* %ngtc938 to i8*
  %call939 = call i32 %394(i8* %395, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str197, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 316) #5
  %396 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %ngacc948 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 1
  %397 = bitcast i32* %ngacc948 to i8*
  %call949 = call i32 %396(i8* %397, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str198, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 317) #5
  %398 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %ngfrz958 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 2
  %399 = bitcast i32* %ngfrz958 to i8*
  %call959 = call i32 %398(i8* %399, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str199, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 318) #5
  %400 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %ngener968 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 3
  %401 = bitcast i32* %ngener968 to i8*
  %call969 = call i32 %400(i8* %401, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str200, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 319) #5
  br label %if.end1000

if.then973:                                       ; preds = %if.then865, %cond.true856
  %402 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %userint1 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 72
  %403 = bitcast i32* %userint1 to i8*
  %call871 = call i32 %402(i8* %403, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str189, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 306) #5
  %404 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %userint2 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 73
  %405 = bitcast i32* %userint2 to i8*
  %call879 = call i32 %404(i8* %405, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str190, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 307) #5
  %406 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %userint3 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 74
  %407 = bitcast i32* %userint3 to i8*
  %call887 = call i32 %406(i8* %407, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str191, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 308) #5
  %408 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %userint4 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 75
  %409 = bitcast i32* %userint4 to i8*
  %call895 = call i32 %408(i8* %409, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str192, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 309) #5
  %410 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %userreal1 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 76
  %411 = bitcast float* %userreal1 to i8*
  %call903 = call i32 %410(i8* %411, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str193, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 310) #5
  %412 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %userreal2 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 77
  %413 = bitcast float* %userreal2 to i8*
  %call911 = call i32 %412(i8* %413, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str194, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 311) #5
  %414 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %userreal3 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 78
  %415 = bitcast float* %userreal3 to i8*
  %call919 = call i32 %414(i8* %415, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str195, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 312) #5
  %416 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %userreal4 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 79
  %417 = bitcast float* %userreal4 to i8*
  %call927 = call i32 %416(i8* %417, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str196, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 313) #5
  %418 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %ngtc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 0
  %419 = bitcast i32* %ngtc to i8*
  %call935 = call i32 %418(i8* %419, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str197, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 316) #5
  %420 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %ngacc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 1
  %421 = bitcast i32* %ngacc to i8*
  %call945 = call i32 %420(i8* %421, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str198, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 317) #5
  %422 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %ngfrz = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 2
  %423 = bitcast i32* %ngfrz to i8*
  %call955 = call i32 %422(i8* %423, i32 1, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str199, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 318) #5
  %424 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %ngener = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 3
  %425 = bitcast i32* %ngener to i8*
  %call965 = call i32 %424(i8* %425, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str200, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 319) #5
  %426 = load i32* %ngtc, align 4, !tbaa !3
  %call976 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str201, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 321, i32 %426, i32 4) #5
  %427 = bitcast i8* %call976 to float*
  %nrdf = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 4
  store float* %427, float** %nrdf, align 8, !tbaa !0
  %428 = load i32* %ngtc, align 4, !tbaa !3
  %call980 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str202, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 322, i32 %428, i32 4) #5
  %429 = bitcast i8* %call980 to float*
  %ref_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 5
  store float* %429, float** %ref_t, align 8, !tbaa !0
  %430 = load i32* %ngtc, align 4, !tbaa !3
  %call984 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str203, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 323, i32 %430, i32 4) #5
  %431 = bitcast i8* %call984 to float*
  %tau_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 6
  store float* %431, float** %tau_t, align 8, !tbaa !0
  %432 = load i32* %ngfrz, align 4, !tbaa !3
  %call988 = call i8* @save_calloc(i8* getelementptr inbounds ([17 x i8]* @.str204, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 324, i32 %432, i32 12) #5
  %433 = bitcast i8* %call988 to [3 x i32]*
  %nFreeze = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 8
  store [3 x i32]* %433, [3 x i32]** %nFreeze, align 8, !tbaa !0
  %434 = load i32* %ngacc, align 4, !tbaa !3
  %call992 = call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str205, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 325, i32 %434, i32 12) #5
  %435 = bitcast i8* %call992 to [3 x float]*
  %acc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 7
  store [3 x float]* %435, [3 x float]** %acc, align 8, !tbaa !0
  %436 = load i32* %ngener, align 4, !tbaa !3
  %mul = mul nsw i32 %436, %436
  %call998 = call i8* @save_calloc(i8* getelementptr inbounds ([17 x i8]* @.str206, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 326, i32 %mul, i32 4) #5
  %437 = bitcast i8* %call998 to i32*
  %eg_excl = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 9
  store i32* %437, i32** %eg_excl, align 8, !tbaa !0
  br label %if.end1000

if.end1000:                                       ; preds = %cond.end970, %if.then973
  %ngtc1002 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 0
  %438 = load i32* %ngtc1002, align 4, !tbaa !3
  %cmp1003 = icmp sgt i32 %438, 0
  br i1 %cmp1003, label %if.then1004, label %if.end1159

if.then1004:                                      ; preds = %if.end1000
  %439 = load i32* @file_version, align 4, !tbaa !3
  %cmp1007 = icmp slt i32 %439, 13
  %or.cond = and i1 %tobool, %cmp1007
  br i1 %or.cond, label %if.then1008, label %for.body1058.lr.ph

for.body1058.lr.ph:                               ; preds = %if.then1004
  %440 = getelementptr inbounds [128 x i8]* %buf1060, i64 0, i64 0
  %nrdf1069 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 4
  br label %for.body1058

if.then1008:                                      ; preds = %if.then1004
  %call1011 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str207, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 330, i32 %438, i32 4) #5
  %441 = bitcast i8* %call1011 to i32*
  %442 = load i32* %ngtc1002, align 4, !tbaa !3
  %cmp10152027 = icmp sgt i32 %442, 0
  br i1 %cmp10152027, label %for.body1016.lr.ph, label %for.end1051

for.body1016.lr.ph:                               ; preds = %if.then1008
  %443 = getelementptr inbounds [128 x i8]* %buf, i64 0, i64 0
  br label %for.body1016

for.cond1038.preheader:                           ; preds = %land.end
  %cmp10412025 = icmp sgt i32 %449, 0
  br i1 %cmp10412025, label %for.body1042.lr.ph, label %for.end1051

for.body1042.lr.ph:                               ; preds = %for.cond1038.preheader
  %nrdf1047 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 4
  %444 = load float** %nrdf1047, align 8, !tbaa !0
  br label %for.body1042

for.body1016:                                     ; preds = %for.body1016.lr.ph, %land.end
  %indvars.iv2053 = phi i64 [ 0, %for.body1016.lr.ph ], [ %indvars.iv.next2054, %land.end ]
  %bDum.02029 = phi i32 [ 1, %for.body1016.lr.ph ], [ %land.ext, %land.end ]
  call void @llvm.lifetime.start(i64 128, i8* %443) #1
  %445 = trunc i64 %indvars.iv2053 to i32
  %call1019 = call i32 (i8*, i8*, ...)* @sprintf(i8* %443, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str207, i64 0, i64 0), i32 %445) #5
  %tobool1020 = icmp eq i32 %bDum.02029, 0
  br i1 %tobool1020, label %land.end, label %cond.end1032

cond.end1032:                                     ; preds = %for.body1016
  %446 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %arrayidx1024 = getelementptr inbounds i32* %441, i64 %indvars.iv2053
  %447 = bitcast i32* %arrayidx1024 to i8*
  %call1026 = call i32 %446(i8* %447, i32 1, i32 1, i8* %443, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 331) #5
  %phitmp = icmp ne i32 %call1026, 0
  br label %land.end

land.end:                                         ; preds = %for.body1016, %cond.end1032
  %448 = phi i1 [ false, %for.body1016 ], [ %phitmp, %cond.end1032 ]
  %land.ext = zext i1 %448 to i32
  call void @llvm.lifetime.end(i64 128, i8* %443) #1
  %indvars.iv.next2054 = add i64 %indvars.iv2053, 1
  %449 = load i32* %ngtc1002, align 4, !tbaa !3
  %450 = trunc i64 %indvars.iv.next2054 to i32
  %cmp1015 = icmp slt i32 %450, %449
  br i1 %cmp1015, label %for.body1016, label %for.cond1038.preheader

for.body1042:                                     ; preds = %for.body1042.lr.ph, %for.body1042
  %indvars.iv2051 = phi i64 [ 0, %for.body1042.lr.ph ], [ %indvars.iv.next2052, %for.body1042 ]
  %arrayidx1044 = getelementptr inbounds i32* %441, i64 %indvars.iv2051
  %451 = load i32* %arrayidx1044, align 4, !tbaa !3
  %conv = sitofp i32 %451 to float
  %arrayidx1048 = getelementptr inbounds float* %444, i64 %indvars.iv2051
  store float %conv, float* %arrayidx1048, align 4, !tbaa !4
  %indvars.iv.next2052 = add i64 %indvars.iv2051, 1
  %452 = trunc i64 %indvars.iv.next2052 to i32
  %cmp1041 = icmp slt i32 %452, %449
  br i1 %cmp1041, label %for.body1042, label %for.end1051

for.end1051:                                      ; preds = %if.then1008, %for.body1042, %for.cond1038.preheader
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str207, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 334, i8* %call1011) #5
  %.pre = load i32* %ngtc1002, align 4, !tbaa !3
  br label %for.cond1089.preheader

for.cond1089.preheader:                           ; preds = %land.end1083, %for.end1051
  %453 = phi i32 [ %.pre, %for.end1051 ], [ %463, %land.end1083 ]
  %cmp10922022 = icmp sgt i32 %453, 0
  br i1 %cmp10922022, label %for.body1094.lr.ph, label %if.end1159

for.body1094.lr.ph:                               ; preds = %for.cond1089.preheader
  %454 = getelementptr inbounds [128 x i8]* %buf1096, i64 0, i64 0
  %ref_t1105 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 5
  br label %for.body1094

for.body1058:                                     ; preds = %for.body1058.lr.ph, %land.end1083
  %indvars.iv2055 = phi i64 [ 0, %for.body1058.lr.ph ], [ %indvars.iv.next2056, %land.end1083 ]
  %bDum.12032 = phi i32 [ 1, %for.body1058.lr.ph ], [ %land.ext1084, %land.end1083 ]
  call void @llvm.lifetime.start(i64 128, i8* %440) #1
  %455 = trunc i64 %indvars.iv2055 to i32
  %call1062 = call i32 (i8*, i8*, ...)* @sprintf(i8* %440, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str201, i64 0, i64 0), i32 %455) #5
  %tobool1063 = icmp eq i32 %bDum.12032, 0
  br i1 %tobool1063, label %land.end1083, label %land.rhs1064

land.rhs1064:                                     ; preds = %for.body1058
  br i1 %tobool, label %cond.true1066, label %cond.false1073

cond.true1066:                                    ; preds = %land.rhs1064
  %456 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %457 = load float** %nrdf1069, align 8, !tbaa !0
  %arrayidx1070 = getelementptr inbounds float* %457, i64 %indvars.iv2055
  %458 = bitcast float* %arrayidx1070 to i8*
  %call1072 = call i32 %456(i8* %458, i32 1, i32 0, i8* %440, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 336) #5
  br label %cond.end1080

cond.false1073:                                   ; preds = %land.rhs1064
  %459 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %460 = load float** %nrdf1069, align 8, !tbaa !0
  %arrayidx1077 = getelementptr inbounds float* %460, i64 %indvars.iv2055
  %461 = bitcast float* %arrayidx1077 to i8*
  %call1079 = call i32 %459(i8* %461, i32 1, i32 0, i8* %440, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 336) #5
  br label %cond.end1080

cond.end1080:                                     ; preds = %cond.false1073, %cond.true1066
  %cond1081 = phi i32 [ %call1072, %cond.true1066 ], [ %call1079, %cond.false1073 ]
  %tobool1082 = icmp ne i32 %cond1081, 0
  br label %land.end1083

land.end1083:                                     ; preds = %for.body1058, %cond.end1080
  %462 = phi i1 [ false, %for.body1058 ], [ %tobool1082, %cond.end1080 ]
  %land.ext1084 = zext i1 %462 to i32
  call void @llvm.lifetime.end(i64 128, i8* %440) #1
  %indvars.iv.next2056 = add i64 %indvars.iv2055, 1
  %463 = load i32* %ngtc1002, align 4, !tbaa !3
  %464 = trunc i64 %indvars.iv.next2056 to i32
  %cmp1056 = icmp slt i32 %464, %463
  br i1 %cmp1056, label %for.body1058, label %for.cond1089.preheader

for.cond1124.preheader:                           ; preds = %land.end1119
  %cmp11272019 = icmp sgt i32 %474, 0
  br i1 %cmp11272019, label %for.body1129.lr.ph, label %if.end1159

for.body1129.lr.ph:                               ; preds = %for.cond1124.preheader
  %465 = getelementptr inbounds [128 x i8]* %buf1131, i64 0, i64 0
  %tau_t1140 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 6
  br label %for.body1129

for.body1094:                                     ; preds = %for.body1094.lr.ph, %land.end1119
  %indvars.iv2049 = phi i64 [ 0, %for.body1094.lr.ph ], [ %indvars.iv.next2050, %land.end1119 ]
  %bDum.22024 = phi i32 [ 1, %for.body1094.lr.ph ], [ %land.ext1120, %land.end1119 ]
  call void @llvm.lifetime.start(i64 128, i8* %454) #1
  %466 = trunc i64 %indvars.iv2049 to i32
  %call1098 = call i32 (i8*, i8*, ...)* @sprintf(i8* %454, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str202, i64 0, i64 0), i32 %466) #5
  %tobool1099 = icmp eq i32 %bDum.22024, 0
  br i1 %tobool1099, label %land.end1119, label %land.rhs1100

land.rhs1100:                                     ; preds = %for.body1094
  br i1 %tobool, label %cond.true1102, label %cond.false1109

cond.true1102:                                    ; preds = %land.rhs1100
  %467 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %468 = load float** %ref_t1105, align 8, !tbaa !0
  %arrayidx1106 = getelementptr inbounds float* %468, i64 %indvars.iv2049
  %469 = bitcast float* %arrayidx1106 to i8*
  %call1108 = call i32 %467(i8* %469, i32 1, i32 0, i8* %454, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 338) #5
  br label %cond.end1116

cond.false1109:                                   ; preds = %land.rhs1100
  %470 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %471 = load float** %ref_t1105, align 8, !tbaa !0
  %arrayidx1113 = getelementptr inbounds float* %471, i64 %indvars.iv2049
  %472 = bitcast float* %arrayidx1113 to i8*
  %call1115 = call i32 %470(i8* %472, i32 1, i32 0, i8* %454, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 338) #5
  br label %cond.end1116

cond.end1116:                                     ; preds = %cond.false1109, %cond.true1102
  %cond1117 = phi i32 [ %call1108, %cond.true1102 ], [ %call1115, %cond.false1109 ]
  %tobool1118 = icmp ne i32 %cond1117, 0
  br label %land.end1119

land.end1119:                                     ; preds = %for.body1094, %cond.end1116
  %473 = phi i1 [ false, %for.body1094 ], [ %tobool1118, %cond.end1116 ]
  %land.ext1120 = zext i1 %473 to i32
  call void @llvm.lifetime.end(i64 128, i8* %454) #1
  %indvars.iv.next2050 = add i64 %indvars.iv2049, 1
  %474 = load i32* %ngtc1002, align 4, !tbaa !3
  %475 = trunc i64 %indvars.iv.next2050 to i32
  %cmp1092 = icmp slt i32 %475, %474
  br i1 %cmp1092, label %for.body1094, label %for.cond1124.preheader

for.body1129:                                     ; preds = %for.body1129.lr.ph, %land.end1154
  %indvars.iv2047 = phi i64 [ 0, %for.body1129.lr.ph ], [ %indvars.iv.next2048, %land.end1154 ]
  %bDum.32021 = phi i32 [ 1, %for.body1129.lr.ph ], [ %land.ext1155, %land.end1154 ]
  call void @llvm.lifetime.start(i64 128, i8* %465) #1
  %476 = trunc i64 %indvars.iv2047 to i32
  %call1133 = call i32 (i8*, i8*, ...)* @sprintf(i8* %465, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str203, i64 0, i64 0), i32 %476) #5
  %tobool1134 = icmp eq i32 %bDum.32021, 0
  br i1 %tobool1134, label %land.end1154, label %land.rhs1135

land.rhs1135:                                     ; preds = %for.body1129
  br i1 %tobool, label %cond.true1137, label %cond.false1144

cond.true1137:                                    ; preds = %land.rhs1135
  %477 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %478 = load float** %tau_t1140, align 8, !tbaa !0
  %arrayidx1141 = getelementptr inbounds float* %478, i64 %indvars.iv2047
  %479 = bitcast float* %arrayidx1141 to i8*
  %call1143 = call i32 %477(i8* %479, i32 1, i32 0, i8* %465, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 339) #5
  br label %cond.end1151

cond.false1144:                                   ; preds = %land.rhs1135
  %480 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %481 = load float** %tau_t1140, align 8, !tbaa !0
  %arrayidx1148 = getelementptr inbounds float* %481, i64 %indvars.iv2047
  %482 = bitcast float* %arrayidx1148 to i8*
  %call1150 = call i32 %480(i8* %482, i32 1, i32 0, i8* %465, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 339) #5
  br label %cond.end1151

cond.end1151:                                     ; preds = %cond.false1144, %cond.true1137
  %cond1152 = phi i32 [ %call1143, %cond.true1137 ], [ %call1150, %cond.false1144 ]
  %tobool1153 = icmp ne i32 %cond1152, 0
  br label %land.end1154

land.end1154:                                     ; preds = %for.body1129, %cond.end1151
  %483 = phi i1 [ false, %for.body1129 ], [ %tobool1153, %cond.end1151 ]
  %land.ext1155 = zext i1 %483 to i32
  call void @llvm.lifetime.end(i64 128, i8* %465) #1
  %indvars.iv.next2048 = add i64 %indvars.iv2047, 1
  %484 = load i32* %ngtc1002, align 4, !tbaa !3
  %485 = trunc i64 %indvars.iv.next2048 to i32
  %cmp1127 = icmp slt i32 %485, %484
  br i1 %cmp1127, label %for.body1129, label %if.end1159

if.end1159:                                       ; preds = %for.cond1089.preheader, %for.cond1124.preheader, %land.end1154, %if.end1000
  %ngfrz1161 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 2
  %486 = load i32* %ngfrz1161, align 4, !tbaa !3
  %cmp1162 = icmp sgt i32 %486, 0
  br i1 %cmp1162, label %for.body1170.lr.ph, label %if.end1202

for.body1170.lr.ph:                               ; preds = %if.end1159
  %487 = getelementptr inbounds [128 x i8]* %buf1172, i64 0, i64 0
  %nFreeze1181 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 8
  br label %for.body1170

for.body1170:                                     ; preds = %for.body1170.lr.ph, %land.end1197
  %indvars.iv2045 = phi i64 [ 0, %for.body1170.lr.ph ], [ %indvars.iv.next2046, %land.end1197 ]
  %bDum.42018 = phi i32 [ 1, %for.body1170.lr.ph ], [ %land.ext1198, %land.end1197 ]
  call void @llvm.lifetime.start(i64 128, i8* %487) #1
  %488 = trunc i64 %indvars.iv2045 to i32
  %call1174 = call i32 (i8*, i8*, ...)* @sprintf(i8* %487, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str204, i64 0, i64 0), i32 %488) #5
  %tobool1175 = icmp eq i32 %bDum.42018, 0
  br i1 %tobool1175, label %land.end1197, label %land.rhs1176

land.rhs1176:                                     ; preds = %for.body1170
  br i1 %tobool, label %cond.true1178, label %cond.false1186

cond.true1178:                                    ; preds = %land.rhs1176
  %489 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %490 = load [3 x i32]** %nFreeze1181, align 8, !tbaa !0
  %arraydecay1183 = getelementptr inbounds [3 x i32]* %490, i64 %indvars.iv2045, i64 0
  %491 = bitcast i32* %arraydecay1183 to i8*
  %call1185 = call i32 %489(i8* %491, i32 1, i32 6, i8* %487, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 342) #5
  br label %cond.end1194

cond.false1186:                                   ; preds = %land.rhs1176
  %492 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %493 = load [3 x i32]** %nFreeze1181, align 8, !tbaa !0
  %arraydecay1191 = getelementptr inbounds [3 x i32]* %493, i64 %indvars.iv2045, i64 0
  %494 = bitcast i32* %arraydecay1191 to i8*
  %call1193 = call i32 %492(i8* %494, i32 1, i32 6, i8* %487, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 342) #5
  br label %cond.end1194

cond.end1194:                                     ; preds = %cond.false1186, %cond.true1178
  %cond1195 = phi i32 [ %call1185, %cond.true1178 ], [ %call1193, %cond.false1186 ]
  %tobool1196 = icmp ne i32 %cond1195, 0
  br label %land.end1197

land.end1197:                                     ; preds = %for.body1170, %cond.end1194
  %495 = phi i1 [ false, %for.body1170 ], [ %tobool1196, %cond.end1194 ]
  %land.ext1198 = zext i1 %495 to i32
  call void @llvm.lifetime.end(i64 128, i8* %487) #1
  %indvars.iv.next2046 = add i64 %indvars.iv2045, 1
  %496 = load i32* %ngfrz1161, align 4, !tbaa !3
  %497 = trunc i64 %indvars.iv.next2046 to i32
  %cmp1168 = icmp slt i32 %497, %496
  br i1 %cmp1168, label %for.body1170, label %if.end1202

if.end1202:                                       ; preds = %land.end1197, %if.end1159
  %ngacc1204 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 1
  %498 = load i32* %ngacc1204, align 4, !tbaa !3
  %cmp1205 = icmp sgt i32 %498, 0
  br i1 %cmp1205, label %if.then1207, label %if.end1223

if.then1207:                                      ; preds = %if.end1202
  br i1 %tobool, label %cond.true1209, label %cond.false1215

cond.true1209:                                    ; preds = %if.then1207
  %499 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %acc1211 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 7
  %500 = load [3 x float]** %acc1211, align 8, !tbaa !0
  %501 = bitcast [3 x float]* %500 to i8*
  %call1214 = call i32 %499(i8* %501, i32 %498, i32 5, i8* getelementptr inbounds ([13 x i8]* @.str205, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 344) #5
  br label %if.end1223

cond.false1215:                                   ; preds = %if.then1207
  %502 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %acc1217 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 7
  %503 = load [3 x float]** %acc1217, align 8, !tbaa !0
  %504 = bitcast [3 x float]* %503 to i8*
  %call1220 = call i32 %502(i8* %504, i32 %498, i32 5, i8* getelementptr inbounds ([13 x i8]* @.str205, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 344) #5
  br label %if.end1223

if.end1223:                                       ; preds = %if.end1202, %cond.true1209, %cond.false1215
  %505 = load i32* @file_version, align 4, !tbaa !3
  %cmp1224 = icmp sgt i32 %505, 11
  br i1 %cmp1224, label %for.cond1227.preheader, label %for.cond1266.preheader

for.cond1227.preheader:                           ; preds = %if.end1223
  %ngener1229 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 3
  %506 = load i32* %ngener1229, align 4, !tbaa !3
  %mul12322012 = mul nsw i32 %506, %506
  %cmp12332013 = icmp eq i32 %mul12322012, 0
  br i1 %cmp12332013, label %for.cond1266.preheader, label %for.body1235.lr.ph

for.body1235.lr.ph:                               ; preds = %for.cond1227.preheader
  %507 = getelementptr inbounds [128 x i8]* %buf1237, i64 0, i64 0
  %eg_excl1246 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 9
  br label %for.body1235

for.cond1266.preheader:                           ; preds = %for.cond1227.preheader, %land.end1260, %if.end1223
  %508 = getelementptr inbounds [128 x i8]* %buf1466, i64 0, i64 0
  %509 = getelementptr inbounds [128 x i8]* %buf1425, i64 0, i64 0
  %510 = getelementptr inbounds [128 x i8]* %buf1384, i64 0, i64 0
  %511 = getelementptr inbounds [128 x i8]* %buf1343, i64 0, i64 0
  br label %for.body1269

for.body1235:                                     ; preds = %for.body1235.lr.ph, %land.end1260
  %indvars.iv2043 = phi i64 [ 0, %for.body1235.lr.ph ], [ %indvars.iv.next2044, %land.end1260 ]
  %bDum.52015 = phi i32 [ 1, %for.body1235.lr.ph ], [ %land.ext1261, %land.end1260 ]
  call void @llvm.lifetime.start(i64 128, i8* %507) #1
  %512 = trunc i64 %indvars.iv2043 to i32
  %call1239 = call i32 (i8*, i8*, ...)* @sprintf(i8* %507, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str206, i64 0, i64 0), i32 %512) #5
  %tobool1240 = icmp eq i32 %bDum.52015, 0
  br i1 %tobool1240, label %land.end1260, label %land.rhs1241

land.rhs1241:                                     ; preds = %for.body1235
  br i1 %tobool, label %cond.true1243, label %cond.false1250

cond.true1243:                                    ; preds = %land.rhs1241
  %513 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %514 = load i32** %eg_excl1246, align 8, !tbaa !0
  %arrayidx1247 = getelementptr inbounds i32* %514, i64 %indvars.iv2043
  %515 = bitcast i32* %arrayidx1247 to i8*
  %call1249 = call i32 %513(i8* %515, i32 1, i32 1, i8* %507, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 346) #5
  br label %cond.end1257

cond.false1250:                                   ; preds = %land.rhs1241
  %516 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %517 = load i32** %eg_excl1246, align 8, !tbaa !0
  %arrayidx1254 = getelementptr inbounds i32* %517, i64 %indvars.iv2043
  %518 = bitcast i32* %arrayidx1254 to i8*
  %call1256 = call i32 %516(i8* %518, i32 1, i32 1, i8* %507, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 346) #5
  br label %cond.end1257

cond.end1257:                                     ; preds = %cond.false1250, %cond.true1243
  %cond1258 = phi i32 [ %call1249, %cond.true1243 ], [ %call1256, %cond.false1250 ]
  %tobool1259 = icmp ne i32 %cond1258, 0
  br label %land.end1260

land.end1260:                                     ; preds = %for.body1235, %cond.end1257
  %519 = phi i1 [ false, %for.body1235 ], [ %tobool1259, %cond.end1257 ]
  %land.ext1261 = zext i1 %519 to i32
  call void @llvm.lifetime.end(i64 128, i8* %507) #1
  %indvars.iv.next2044 = add i64 %indvars.iv2043, 1
  %520 = load i32* %ngener1229, align 4, !tbaa !3
  %mul1232 = mul nsw i32 %520, %520
  %521 = trunc i64 %indvars.iv.next2044 to i32
  %cmp1233 = icmp slt i32 %521, %mul1232
  br i1 %cmp1233, label %for.body1235, label %for.cond1266.preheader

for.body1269:                                     ; preds = %for.inc1498, %for.cond1266.preheader
  %indvars.iv2041 = phi i64 [ 0, %for.cond1266.preheader ], [ %indvars.iv.next2042, %for.inc1498 ]
  br i1 %tobool, label %if.then1298, label %cond.end1295

cond.end1295:                                     ; preds = %for.body1269
  %522 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %n1279 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv2041, i32 0
  %523 = bitcast i32* %n1279 to i8*
  %call1280 = call i32 %522(i8* %523, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str208, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 350) #5
  %524 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %n1293 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv2041, i32 0
  %525 = bitcast i32* %n1293 to i8*
  %call1294 = call i32 %524(i8* %525, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str209, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 351) #5
  br label %for.cond1334.preheader

if.then1298:                                      ; preds = %for.body1269
  %526 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %n = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv2041, i32 0
  %527 = bitcast i32* %n to i8*
  %call1274 = call i32 %526(i8* %527, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str208, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 350) #5
  %528 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %n1287 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv2041, i32 0
  %529 = bitcast i32* %n1287 to i8*
  %call1288 = call i32 %528(i8* %529, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str209, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 351) #5
  %530 = load i32* %n, align 4, !tbaa !3
  %call1303 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str210, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 353, i32 %530, i32 4) #5
  %531 = bitcast i8* %call1303 to float*
  %a = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv2041, i32 1
  store float* %531, float** %a, align 8, !tbaa !0
  %532 = load i32* %n, align 4, !tbaa !3
  %call1311 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str211, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 354, i32 %532, i32 4) #5
  %533 = bitcast i8* %call1311 to float*
  %phi = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv2041, i32 2
  store float* %533, float** %phi, align 8, !tbaa !0
  %534 = load i32* %n1287, align 4, !tbaa !3
  %call1319 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str212, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 355, i32 %534, i32 4) #5
  %535 = bitcast i8* %call1319 to float*
  %a1323 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv2041, i32 1
  store float* %535, float** %a1323, align 8, !tbaa !0
  %536 = load i32* %n1287, align 4, !tbaa !3
  %call1328 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str213, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 356, i32 %536, i32 4) #5
  %537 = bitcast i8* %call1328 to float*
  %phi1332 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv2041, i32 2
  store float* %537, float** %phi1332, align 8, !tbaa !0
  br label %for.cond1334.preheader

for.cond1334.preheader:                           ; preds = %if.then1298, %cond.end1295
  %n1338 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv2041, i32 0
  %538 = load i32* %n1338, align 4, !tbaa !3
  %cmp13391997 = icmp sgt i32 %538, 0
  br i1 %cmp13391997, label %for.body1341.lr.ph, label %for.cond1416.loopexit

for.body1341.lr.ph:                               ; preds = %for.cond1334.preheader
  %a1354 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv2041, i32 1
  br label %for.body1341

for.body1341:                                     ; preds = %for.body1341.lr.ph, %land.end1370
  %indvars.iv = phi i64 [ 0, %for.body1341.lr.ph ], [ %indvars.iv.next, %land.end1370 ]
  %bDum.61999 = phi i32 [ 1, %for.body1341.lr.ph ], [ %land.ext1371, %land.end1370 ]
  call void @llvm.lifetime.start(i64 128, i8* %511) #1
  %539 = trunc i64 %indvars.iv to i32
  %call1345 = call i32 (i8*, i8*, ...)* @sprintf(i8* %511, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str210, i64 0, i64 0), i32 %539) #5
  %tobool1346 = icmp eq i32 %bDum.61999, 0
  br i1 %tobool1346, label %land.end1370, label %land.rhs1347

land.rhs1347:                                     ; preds = %for.body1341
  br i1 %tobool, label %cond.true1349, label %cond.false1358

cond.true1349:                                    ; preds = %land.rhs1347
  %540 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %541 = load float** %a1354, align 8, !tbaa !0
  %arrayidx1355 = getelementptr inbounds float* %541, i64 %indvars.iv
  %542 = bitcast float* %arrayidx1355 to i8*
  %call1357 = call i32 %540(i8* %542, i32 1, i32 0, i8* %511, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 358) #5
  br label %cond.end1367

cond.false1358:                                   ; preds = %land.rhs1347
  %543 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %544 = load float** %a1354, align 8, !tbaa !0
  %arrayidx1364 = getelementptr inbounds float* %544, i64 %indvars.iv
  %545 = bitcast float* %arrayidx1364 to i8*
  %call1366 = call i32 %543(i8* %545, i32 1, i32 0, i8* %511, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 358) #5
  br label %cond.end1367

cond.end1367:                                     ; preds = %cond.false1358, %cond.true1349
  %cond1368 = phi i32 [ %call1357, %cond.true1349 ], [ %call1366, %cond.false1358 ]
  %tobool1369 = icmp ne i32 %cond1368, 0
  br label %land.end1370

land.end1370:                                     ; preds = %for.body1341, %cond.end1367
  %546 = phi i1 [ false, %for.body1341 ], [ %tobool1369, %cond.end1367 ]
  %land.ext1371 = zext i1 %546 to i32
  call void @llvm.lifetime.end(i64 128, i8* %511) #1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %547 = load i32* %n1338, align 4, !tbaa !3
  %548 = trunc i64 %indvars.iv.next to i32
  %cmp1339 = icmp slt i32 %548, %547
  br i1 %cmp1339, label %for.body1341, label %for.cond1375.loopexit

for.cond1375.loopexit:                            ; preds = %land.end1370
  %cmp13802001 = icmp sgt i32 %547, 0
  br i1 %cmp13802001, label %for.body1382.lr.ph, label %for.cond1416.loopexit

for.body1382.lr.ph:                               ; preds = %for.cond1375.loopexit
  %phi1395 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv2041, i32 2
  br label %for.body1382

for.body1382:                                     ; preds = %for.body1382.lr.ph, %land.end1411
  %indvars.iv2035 = phi i64 [ 0, %for.body1382.lr.ph ], [ %indvars.iv.next2036, %land.end1411 ]
  %bDum.72003 = phi i32 [ 1, %for.body1382.lr.ph ], [ %land.ext1412, %land.end1411 ]
  call void @llvm.lifetime.start(i64 128, i8* %510) #1
  %549 = trunc i64 %indvars.iv2035 to i32
  %call1386 = call i32 (i8*, i8*, ...)* @sprintf(i8* %510, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str211, i64 0, i64 0), i32 %549) #5
  %tobool1387 = icmp eq i32 %bDum.72003, 0
  br i1 %tobool1387, label %land.end1411, label %land.rhs1388

land.rhs1388:                                     ; preds = %for.body1382
  br i1 %tobool, label %cond.true1390, label %cond.false1399

cond.true1390:                                    ; preds = %land.rhs1388
  %550 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %551 = load float** %phi1395, align 8, !tbaa !0
  %arrayidx1396 = getelementptr inbounds float* %551, i64 %indvars.iv2035
  %552 = bitcast float* %arrayidx1396 to i8*
  %call1398 = call i32 %550(i8* %552, i32 1, i32 0, i8* %510, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 359) #5
  br label %cond.end1408

cond.false1399:                                   ; preds = %land.rhs1388
  %553 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %554 = load float** %phi1395, align 8, !tbaa !0
  %arrayidx1405 = getelementptr inbounds float* %554, i64 %indvars.iv2035
  %555 = bitcast float* %arrayidx1405 to i8*
  %call1407 = call i32 %553(i8* %555, i32 1, i32 0, i8* %510, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 359) #5
  br label %cond.end1408

cond.end1408:                                     ; preds = %cond.false1399, %cond.true1390
  %cond1409 = phi i32 [ %call1398, %cond.true1390 ], [ %call1407, %cond.false1399 ]
  %tobool1410 = icmp ne i32 %cond1409, 0
  br label %land.end1411

land.end1411:                                     ; preds = %for.body1382, %cond.end1408
  %556 = phi i1 [ false, %for.body1382 ], [ %tobool1410, %cond.end1408 ]
  %land.ext1412 = zext i1 %556 to i32
  call void @llvm.lifetime.end(i64 128, i8* %510) #1
  %indvars.iv.next2036 = add i64 %indvars.iv2035, 1
  %557 = load i32* %n1338, align 4, !tbaa !3
  %558 = trunc i64 %indvars.iv.next2036 to i32
  %cmp1380 = icmp slt i32 %558, %557
  br i1 %cmp1380, label %for.body1382, label %for.cond1416.loopexit

for.cond1416.loopexit:                            ; preds = %for.cond1334.preheader, %land.end1411, %for.cond1375.loopexit
  %n1420 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv2041, i32 0
  %559 = load i32* %n1420, align 4, !tbaa !3
  %cmp14212004 = icmp sgt i32 %559, 0
  br i1 %cmp14212004, label %for.body1423.lr.ph, label %for.inc1498

for.body1423.lr.ph:                               ; preds = %for.cond1416.loopexit
  %a1436 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv2041, i32 1
  br label %for.body1423

for.body1423:                                     ; preds = %for.body1423.lr.ph, %land.end1452
  %indvars.iv2037 = phi i64 [ 0, %for.body1423.lr.ph ], [ %indvars.iv.next2038, %land.end1452 ]
  %bDum.82006 = phi i32 [ 1, %for.body1423.lr.ph ], [ %land.ext1453, %land.end1452 ]
  call void @llvm.lifetime.start(i64 128, i8* %509) #1
  %560 = trunc i64 %indvars.iv2037 to i32
  %call1427 = call i32 (i8*, i8*, ...)* @sprintf(i8* %509, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str212, i64 0, i64 0), i32 %560) #5
  %tobool1428 = icmp eq i32 %bDum.82006, 0
  br i1 %tobool1428, label %land.end1452, label %land.rhs1429

land.rhs1429:                                     ; preds = %for.body1423
  br i1 %tobool, label %cond.true1431, label %cond.false1440

cond.true1431:                                    ; preds = %land.rhs1429
  %561 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %562 = load float** %a1436, align 8, !tbaa !0
  %arrayidx1437 = getelementptr inbounds float* %562, i64 %indvars.iv2037
  %563 = bitcast float* %arrayidx1437 to i8*
  %call1439 = call i32 %561(i8* %563, i32 1, i32 0, i8* %509, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 360) #5
  br label %cond.end1449

cond.false1440:                                   ; preds = %land.rhs1429
  %564 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %565 = load float** %a1436, align 8, !tbaa !0
  %arrayidx1446 = getelementptr inbounds float* %565, i64 %indvars.iv2037
  %566 = bitcast float* %arrayidx1446 to i8*
  %call1448 = call i32 %564(i8* %566, i32 1, i32 0, i8* %509, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 360) #5
  br label %cond.end1449

cond.end1449:                                     ; preds = %cond.false1440, %cond.true1431
  %cond1450 = phi i32 [ %call1439, %cond.true1431 ], [ %call1448, %cond.false1440 ]
  %tobool1451 = icmp ne i32 %cond1450, 0
  br label %land.end1452

land.end1452:                                     ; preds = %for.body1423, %cond.end1449
  %567 = phi i1 [ false, %for.body1423 ], [ %tobool1451, %cond.end1449 ]
  %land.ext1453 = zext i1 %567 to i32
  call void @llvm.lifetime.end(i64 128, i8* %509) #1
  %indvars.iv.next2038 = add i64 %indvars.iv2037, 1
  %568 = load i32* %n1420, align 4, !tbaa !3
  %569 = trunc i64 %indvars.iv.next2038 to i32
  %cmp1421 = icmp slt i32 %569, %568
  br i1 %cmp1421, label %for.body1423, label %for.cond1457.loopexit

for.cond1457.loopexit:                            ; preds = %land.end1452
  %cmp14622008 = icmp sgt i32 %568, 0
  br i1 %cmp14622008, label %for.body1464.lr.ph, label %for.inc1498

for.body1464.lr.ph:                               ; preds = %for.cond1457.loopexit
  %phi1477 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv2041, i32 2
  br label %for.body1464

for.body1464:                                     ; preds = %for.body1464.lr.ph, %land.end1493
  %indvars.iv2039 = phi i64 [ 0, %for.body1464.lr.ph ], [ %indvars.iv.next2040, %land.end1493 ]
  %bDum.92010 = phi i32 [ 1, %for.body1464.lr.ph ], [ %land.ext1494, %land.end1493 ]
  call void @llvm.lifetime.start(i64 128, i8* %508) #1
  %570 = trunc i64 %indvars.iv2039 to i32
  %call1468 = call i32 (i8*, i8*, ...)* @sprintf(i8* %508, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str213, i64 0, i64 0), i32 %570) #5
  %tobool1469 = icmp eq i32 %bDum.92010, 0
  br i1 %tobool1469, label %land.end1493, label %land.rhs1470

land.rhs1470:                                     ; preds = %for.body1464
  br i1 %tobool, label %cond.true1472, label %cond.false1481

cond.true1472:                                    ; preds = %land.rhs1470
  %571 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %572 = load float** %phi1477, align 8, !tbaa !0
  %arrayidx1478 = getelementptr inbounds float* %572, i64 %indvars.iv2039
  %573 = bitcast float* %arrayidx1478 to i8*
  %call1480 = call i32 %571(i8* %573, i32 1, i32 0, i8* %508, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 361) #5
  br label %cond.end1490

cond.false1481:                                   ; preds = %land.rhs1470
  %574 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %575 = load float** %phi1477, align 8, !tbaa !0
  %arrayidx1487 = getelementptr inbounds float* %575, i64 %indvars.iv2039
  %576 = bitcast float* %arrayidx1487 to i8*
  %call1489 = call i32 %574(i8* %576, i32 1, i32 0, i8* %508, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 361) #5
  br label %cond.end1490

cond.end1490:                                     ; preds = %cond.false1481, %cond.true1472
  %cond1491 = phi i32 [ %call1480, %cond.true1472 ], [ %call1489, %cond.false1481 ]
  %tobool1492 = icmp ne i32 %cond1491, 0
  br label %land.end1493

land.end1493:                                     ; preds = %for.body1464, %cond.end1490
  %577 = phi i1 [ false, %for.body1464 ], [ %tobool1492, %cond.end1490 ]
  %land.ext1494 = zext i1 %577 to i32
  call void @llvm.lifetime.end(i64 128, i8* %508) #1
  %indvars.iv.next2040 = add i64 %indvars.iv2039, 1
  %578 = load i32* %n1420, align 4, !tbaa !3
  %579 = trunc i64 %indvars.iv.next2040 to i32
  %cmp1462 = icmp slt i32 %579, %578
  br i1 %cmp1462, label %for.body1464, label %for.inc1498

for.inc1498:                                      ; preds = %for.cond1416.loopexit, %land.end1493, %for.cond1457.loopexit
  %indvars.iv.next2042 = add i64 %indvars.iv2041, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next2042 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %if.end1501, label %for.body1269

if.end1501:                                       ; preds = %for.inc1498, %if.end
  ret void
}

; Function Attrs: optsize
declare void @init_inputrec(%struct.t_inputrec*) #2

; Function Attrs: optsize
declare void @done_inputrec(%struct.t_inputrec*) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @do_top(%struct.t_topology* %top, i32 %bRead) #0 {
entry:
  %buf28.i.i = alloca [128 x i8], align 16
  %buf.i36 = alloca [128 x i8], align 16
  %buf.i.i = alloca [128 x i8], align 16
  %buf.i = alloca [4096 x i8], align 16
  %symtab = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 4
  %0 = getelementptr inbounds [4096 x i8]* %buf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %0) #1
  %tobool.i = icmp eq i32 %bRead, 0
  br i1 %tobool.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %1 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %2 = bitcast %struct.t_symtab* %symtab to i8*
  %call.i = call i32 %1(i8* %2, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str104, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 660) #5
  %nr477.i = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 0
  %3 = load i32* %nr477.i, align 4, !tbaa !3
  %call6.i = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str105, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 663, i32 1, i32 24) #5
  %4 = bitcast i8* %call6.i to %struct.symbuf*
  %symbuf7.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 4, i32 1
  store %struct.symbuf* %4, %struct.symbuf** %symbuf7.i, align 8, !tbaa !0
  %bufsize.i = bitcast i8* %call6.i to i32*
  store i32 %3, i32* %bufsize.i, align 4, !tbaa !3
  %call9.i = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str106, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 666, i32 %3, i32 8) #5
  %5 = bitcast i8* %call9.i to i8**
  %buf10.i = getelementptr inbounds i8* %call6.i, i64 8
  %6 = bitcast i8* %buf10.i to i8***
  store i8** %5, i8*** %6, align 8, !tbaa !0
  %cmp78.i = icmp sgt i32 %3, 0
  br i1 %cmp78.i, label %cond.end17.i, label %do_symtab.exit

cond.end17.i:                                     ; preds = %if.then.i, %cond.end17.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %cond.end17.i ], [ 0, %if.then.i ]
  %7 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %call13.i = call i32 %7(i8* %0, i32 1, i32 7, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 668) #5
  %call20.i = call i8* @gmx_strdup(i8* %0) #5
  %8 = load i8*** %6, align 8, !tbaa !0
  %arrayidx.i = getelementptr inbounds i8** %8, i64 %indvars.iv.i
  store i8* %call20.i, i8** %arrayidx.i, align 8, !tbaa !0
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv106 = trunc i64 %indvars.iv.next.i to i32
  %exitcond107 = icmp eq i32 %lftr.wideiv106, %3
  br i1 %exitcond107, label %do_symtab.exit, label %cond.end17.i

if.else.i:                                        ; preds = %entry
  %9 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %10 = bitcast %struct.t_symtab* %symtab to i8*
  %call3.i = call i32 %9(i8* %10, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str104, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 660) #5
  %nr4.i = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 0
  %11 = load i32* %nr4.i, align 4, !tbaa !3
  %symbuf22.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 4, i32 1
  %symbuf.084.i = load %struct.symbuf** %symbuf22.i, align 8
  %cmp2385.i = icmp eq %struct.symbuf* %symbuf.084.i, null
  br i1 %cmp2385.i, label %while.end.i, label %for.cond24.preheader.i

for.cond24.preheader.i:                           ; preds = %if.else.i, %for.end44.i
  %symbuf.088.i = phi %struct.symbuf* [ %symbuf.0.i, %for.end44.i ], [ %symbuf.084.i, %if.else.i ]
  %nr.086.i = phi i32 [ %sub.i, %for.end44.i ], [ %11, %if.else.i ]
  %bufsize25.i = getelementptr inbounds %struct.symbuf* %symbuf.088.i, i64 0, i32 0
  %12 = load i32* %bufsize25.i, align 4, !tbaa !3
  %cmp2680.i = icmp sgt i32 %12, 0
  %cmp2781.i = icmp sgt i32 %nr.086.i, 0
  %or.cond82.i = and i1 %cmp2680.i, %cmp2781.i
  br i1 %or.cond82.i, label %for.body28.lr.ph.i, label %for.end44.i

for.body28.lr.ph.i:                               ; preds = %for.cond24.preheader.i
  %buf32.i = getelementptr inbounds %struct.symbuf* %symbuf.088.i, i64 0, i32 1
  br label %for.inc42.i

for.inc42.i:                                      ; preds = %for.inc42.i, %for.body28.lr.ph.i
  %indvars.iv90.i = phi i64 [ 0, %for.body28.lr.ph.i ], [ %indvars.iv.next91.i, %for.inc42.i ]
  %i.183.i = phi i32 [ 0, %for.body28.lr.ph.i ], [ %inc43.i, %for.inc42.i ]
  %13 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %14 = load i8*** %buf32.i, align 8, !tbaa !0
  %arrayidx38.i = getelementptr inbounds i8** %14, i64 %indvars.iv90.i
  %15 = load i8** %arrayidx38.i, align 8, !tbaa !0
  %call39.i = call i32 %13(i8* %15, i32 1, i32 7, i8* getelementptr inbounds ([15 x i8]* @.str107, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 676) #5
  %indvars.iv.next91.i = add i64 %indvars.iv90.i, 1
  %inc43.i = add nsw i32 %i.183.i, 1
  %16 = load i32* %bufsize25.i, align 4, !tbaa !3
  %17 = trunc i64 %indvars.iv.next91.i to i32
  %cmp26.i = icmp slt i32 %17, %16
  %cmp27.i = icmp slt i32 %17, %nr.086.i
  %or.cond.i = and i1 %cmp26.i, %cmp27.i
  br i1 %or.cond.i, label %for.inc42.i, label %for.end44.i

for.end44.i:                                      ; preds = %for.inc42.i, %for.cond24.preheader.i
  %i.1.lcssa.i = phi i32 [ 0, %for.cond24.preheader.i ], [ %inc43.i, %for.inc42.i ]
  %sub.i = sub nsw i32 %nr.086.i, %i.1.lcssa.i
  %next.i = getelementptr inbounds %struct.symbuf* %symbuf.088.i, i64 0, i32 2
  %symbuf.0.i = load %struct.symbuf** %next.i, align 8
  %cmp23.i = icmp eq %struct.symbuf* %symbuf.0.i, null
  br i1 %cmp23.i, label %while.end.i, label %for.cond24.preheader.i

while.end.i:                                      ; preds = %for.end44.i, %if.else.i
  %nr.0.lcssa.i = phi i32 [ %11, %if.else.i ], [ %sub.i, %for.end44.i ]
  %cmp45.i = icmp eq i32 %nr.0.lcssa.i, 0
  br i1 %cmp45.i, label %do_symtab.exit, label %if.then46.i

if.then46.i:                                      ; preds = %while.end.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([30 x i8]* @.str108, i64 0, i64 0), i32 %nr.0.lcssa.i) #5
  br label %do_symtab.exit

do_symtab.exit:                                   ; preds = %cond.end17.i, %if.then.i, %while.end.i, %if.then46.i
  call void @llvm.lifetime.end(i64 4096, i8* %0) #1
  %name = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0
  call fastcc void @do_symstr(i8*** %name, i32 %bRead, %struct.t_symtab* %symtab) #6
  %atoms = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2
  %tobool.i23 = icmp ne i32 %bRead, 0
  br i1 %tobool.i23, label %if.then.i27, label %cond.end17.i24

cond.end17.i24:                                   ; preds = %do_symtab.exit
  %18 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %19 = bitcast %struct.t_atoms* %atoms to i8*
  %call2.i = call i32 %18(i8* %19, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str81, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 622) #5
  %20 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %nres7.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 5
  %21 = bitcast i32* %nres7.i to i8*
  %call8.i = call i32 %20(i8* %21, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str82, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 623) #5
  %22 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %ngrpname15.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 7
  %23 = bitcast i32* %ngrpname15.i to i8*
  %call16.i = call i32 %22(i8* %23, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str83, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 624) #5
  %nr32.pre.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  br label %for.cond.preheader.i

if.then.i27:                                      ; preds = %do_symtab.exit
  %24 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %25 = bitcast %struct.t_atoms* %atoms to i8*
  %call.i25 = call i32 %24(i8* %25, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str81, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 622) #5
  %26 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %nres.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 5
  %27 = bitcast i32* %nres.i to i8*
  %call5.i = call i32 %26(i8* %27, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str82, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 623) #5
  %28 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %ngrpname.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 7
  %29 = bitcast i32* %ngrpname.i to i8*
  %call13.i26 = call i32 %28(i8* %29, i32 1, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str83, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 624) #5
  %nr20.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %30 = load i32* %nr20.i, align 4, !tbaa !3
  %call21.i = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str84, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 626, i32 %30, i32 40) #5
  %31 = bitcast i8* %call21.i to %struct.t_atom*
  %atom.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1
  store %struct.t_atom* %31, %struct.t_atom** %atom.i, align 8, !tbaa !0
  %32 = load i32* %nr20.i, align 4, !tbaa !3
  %call23.i = call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str85, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 627, i32 %32, i32 8) #5
  %33 = bitcast i8* %call23.i to i8***
  %atomname.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 2
  store i8*** %33, i8**** %atomname.i, align 8, !tbaa !0
  %34 = load i32* %nr20.i, align 4, !tbaa !3
  %call25.i = call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str86, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 628, i32 %34, i32 8) #5
  %35 = bitcast i8* %call25.i to i8***
  %atomtype.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 3
  store i8*** %35, i8**** %atomtype.i, align 8, !tbaa !0
  %36 = load i32* %nr20.i, align 4, !tbaa !3
  %call27.i = call i8* @save_calloc(i8* getelementptr inbounds ([17 x i8]* @.str87, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 629, i32 %36, i32 8) #5
  %37 = bitcast i8* %call27.i to i8***
  %atomtypeB.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 4
  store i8*** %37, i8**** %atomtypeB.i, align 8, !tbaa !0
  %38 = load i32* %nres.i, align 4, !tbaa !3
  %call29.i = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str88, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 630, i32 %38, i32 8) #5
  %39 = bitcast i8* %call29.i to i8***
  %resname.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 6
  store i8*** %39, i8**** %resname.i, align 8, !tbaa !0
  %40 = load i32* %ngrpname.i, align 4, !tbaa !3
  %call31.i = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str89, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 631, i32 %40, i32 8) #5
  %41 = bitcast i8* %call31.i to i8***
  %grpname.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 8
  store i8*** %41, i8**** %grpname.i, align 8, !tbaa !0
  %pdbinfo.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 11
  store %struct.t_pdbinfo* null, %struct.t_pdbinfo** %pdbinfo.i, align 8, !tbaa !0
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then.i27, %cond.end17.i24
  %nr32.pre-phi.i = phi i32* [ %nr20.i, %if.then.i27 ], [ %nr32.pre.i, %cond.end17.i24 ]
  %42 = load i32* %nr32.pre-phi.i, align 4, !tbaa !3
  %cmp170.i = icmp sgt i32 %42, 0
  br i1 %cmp170.i, label %for.body.lr.ph.i, label %do_strstr.exit.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %atom33.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %do_atom.exit.i, %for.body.lr.ph.i
  %indvars.iv182.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next183.i, %do_atom.exit.i ]
  %43 = load %struct.t_atom** %atom33.i, align 8, !tbaa !0
  %arrayidx.i28 = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i
  br i1 %tobool.i23, label %cond.true52.i.i, label %cond.false54.i.i

cond.true52.i.i:                                  ; preds = %for.body.i
  %44 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %45 = bitcast %struct.t_atom* %arrayidx.i28 to i8*
  %call.i.i = call i32 %44(i8* %45, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str94, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 562) #5
  %46 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %q.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 1
  %47 = bitcast float* %q.i.i to i8*
  %call5.i.i = call i32 %46(i8* %47, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str95, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 563) #5
  %48 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %mB.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 2
  %49 = bitcast float* %mB.i.i to i8*
  %call13.i.i = call i32 %48(i8* %49, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str96, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 564) #5
  %50 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %qB.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 3
  %51 = bitcast float* %qB.i.i to i8*
  %call21.i.i = call i32 %50(i8* %51, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str97, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 565) #5
  %52 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %type.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 4
  %53 = bitcast i16* %type.i.i to i8*
  %call29.i.i = call i32 %52(i8* %53, i32 1, i32 3, i8* getelementptr inbounds ([11 x i8]* @.str98, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 566) #5
  %54 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %typeB.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 5
  %55 = bitcast i16* %typeB.i.i to i8*
  %call37.i.i = call i32 %54(i8* %55, i32 1, i32 3, i8* getelementptr inbounds ([12 x i8]* @.str99, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 567) #5
  %56 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %ptype.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 6
  %57 = bitcast i32* %ptype.i.i to i8*
  %call45.i.i = call i32 %56(i8* %57, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str100, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 568) #5
  %58 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %resnr.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 7
  %59 = bitcast i32* %resnr.i.i to i8*
  %call53.i.i = call i32 %58(i8* %59, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str101, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 569) #5
  br label %cond.end57.i.i

cond.false54.i.i:                                 ; preds = %for.body.i
  %60 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %61 = bitcast %struct.t_atom* %arrayidx.i28 to i8*
  %call2.i.i = call i32 %60(i8* %61, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str94, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 562) #5
  %62 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %q7.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 1
  %63 = bitcast float* %q7.i.i to i8*
  %call8.i.i = call i32 %62(i8* %63, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str95, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 563) #5
  %64 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %mB15.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 2
  %65 = bitcast float* %mB15.i.i to i8*
  %call16.i.i = call i32 %64(i8* %65, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str96, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 564) #5
  %66 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %qB23.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 3
  %67 = bitcast float* %qB23.i.i to i8*
  %call24.i.i = call i32 %66(i8* %67, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str97, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 565) #5
  %68 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %type31.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 4
  %69 = bitcast i16* %type31.i.i to i8*
  %call32.i.i = call i32 %68(i8* %69, i32 1, i32 3, i8* getelementptr inbounds ([11 x i8]* @.str98, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 566) #5
  %70 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %typeB39.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 5
  %71 = bitcast i16* %typeB39.i.i to i8*
  %call40.i.i = call i32 %70(i8* %71, i32 1, i32 3, i8* getelementptr inbounds ([12 x i8]* @.str99, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 567) #5
  %72 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %ptype47.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 6
  %73 = bitcast i32* %ptype47.i.i to i8*
  %call48.i.i = call i32 %72(i8* %73, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str100, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 568) #5
  %74 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %resnr55.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 7
  %75 = bitcast i32* %resnr55.i.i to i8*
  %call56.i.i = call i32 %74(i8* %75, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str101, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 569) #5
  br label %cond.end57.i.i

cond.end57.i.i:                                   ; preds = %cond.false54.i.i, %cond.true52.i.i
  %76 = load i32* @file_version, align 4, !tbaa !3
  %cmp.i.i = icmp slt i32 %76, 23
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %cond.end57.i.i
  %arrayidx.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 8, i64 8
  store i8 0, i8* %arrayidx.i.i, align 1, !tbaa !1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %cond.end57.i.i
  %ngrp.addr.0.i.i = phi i32 [ 8, %if.then.i.i ], [ 9, %cond.end57.i.i ]
  br i1 %tobool.i23, label %cond.true60.i.i, label %cond.false63.i.i

cond.true60.i.i:                                  ; preds = %if.end.i.i
  %77 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %arraydecay.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 8, i64 0
  %call62.i.i = call i32 %77(i8* %arraydecay.i.i, i32 %ngrp.addr.0.i.i, i32 2, i8* getelementptr inbounds ([12 x i8]* @.str102, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 574) #5
  br label %do_atom.exit.i

cond.false63.i.i:                                 ; preds = %if.end.i.i
  %78 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %arraydecay65.i.i = getelementptr inbounds %struct.t_atom* %43, i64 %indvars.iv182.i, i32 8, i64 0
  %call66.i.i = call i32 %78(i8* %arraydecay65.i.i, i32 %ngrp.addr.0.i.i, i32 2, i8* getelementptr inbounds ([12 x i8]* @.str102, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 574) #5
  br label %do_atom.exit.i

do_atom.exit.i:                                   ; preds = %cond.false63.i.i, %cond.true60.i.i
  %indvars.iv.next183.i = add i64 %indvars.iv182.i, 1
  %79 = load i32* %nr32.pre-phi.i, align 4, !tbaa !3
  %80 = trunc i64 %indvars.iv.next183.i to i32
  %cmp.i = icmp slt i32 %80, %79
  br i1 %cmp.i, label %for.body.i, label %for.end.i

for.end.i:                                        ; preds = %do_atom.exit.i
  %atomname35.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 2
  %81 = load i8**** %atomname35.i, align 8, !tbaa !0
  %cmp3.i.i = icmp sgt i32 %79, 0
  br i1 %cmp3.i.i, label %for.body.i.i, label %do_strstr.exit.i

for.body.i.i:                                     ; preds = %for.end.i, %for.body.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body.i.i ], [ 0, %for.end.i ]
  %arrayidx.i122.i = getelementptr inbounds i8*** %81, i64 %indvars.iv.i.i
  call fastcc void @do_symstr(i8*** %arrayidx.i122.i, i32 %bRead, %struct.t_symtab* %symtab) #5
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1
  %lftr.wideiv103 = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond104 = icmp eq i32 %lftr.wideiv103, %79
  br i1 %exitcond104, label %do_strstr.exit.ithread-pre-split.loopexit, label %for.body.i.i

do_strstr.exit.ithread-pre-split.loopexit:        ; preds = %for.body.i.i
  %.pr.pre = load i32* %nr32.pre-phi.i, align 4, !tbaa !3
  br label %do_strstr.exit.i

do_strstr.exit.i:                                 ; preds = %for.end.i, %do_strstr.exit.ithread-pre-split.loopexit, %for.cond.preheader.i
  %82 = phi i32 [ %42, %for.cond.preheader.i ], [ %.pr.pre, %do_strstr.exit.ithread-pre-split.loopexit ], [ %79, %for.end.i ]
  %83 = load i32* @file_version, align 4, !tbaa !3
  %cmp37.i = icmp slt i32 %83, 21
  %or.cond.i29 = and i1 %tobool.i23, %cmp37.i
  br i1 %or.cond.i29, label %for.cond39.preheader.i, label %if.else.i32

for.cond39.preheader.i:                           ; preds = %do_strstr.exit.i
  %cmp41167.i = icmp sgt i32 %82, 0
  br i1 %cmp41167.i, label %for.body42.lr.ph.i, label %if.end58.i

for.body42.lr.ph.i:                               ; preds = %for.cond39.preheader.i
  %atomtype45.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 3
  %atomtypeB49.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 4
  br label %for.body42.i

for.body42.i:                                     ; preds = %for.body42.i, %for.body42.lr.ph.i
  %indvars.iv.i30 = phi i64 [ 0, %for.body42.lr.ph.i ], [ %indvars.iv.next.i31, %for.body42.i ]
  %call43.i = call i8** @put_symtab(%struct.t_symtab* %symtab, i8* getelementptr inbounds ([2 x i8]* @.str90, i64 0, i64 0)) #5
  %84 = load i8**** %atomtype45.i, align 8, !tbaa !0
  %arrayidx46.i = getelementptr inbounds i8*** %84, i64 %indvars.iv.i30
  store i8** %call43.i, i8*** %arrayidx46.i, align 8, !tbaa !0
  %call47.i = call i8** @put_symtab(%struct.t_symtab* %symtab, i8* getelementptr inbounds ([2 x i8]* @.str90, i64 0, i64 0)) #5
  %85 = load i8**** %atomtypeB49.i, align 8, !tbaa !0
  %arrayidx50.i = getelementptr inbounds i8*** %85, i64 %indvars.iv.i30
  store i8** %call47.i, i8*** %arrayidx50.i, align 8, !tbaa !0
  %indvars.iv.next.i31 = add i64 %indvars.iv.i30, 1
  %86 = load i32* %nr32.pre-phi.i, align 4, !tbaa !3
  %87 = trunc i64 %indvars.iv.next.i31 to i32
  %cmp41.i = icmp slt i32 %87, %86
  br i1 %cmp41.i, label %for.body42.i, label %if.end58.i

if.else.i32:                                      ; preds = %do_strstr.exit.i
  %atomtype55.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 3
  %88 = load i8**** %atomtype55.i, align 8, !tbaa !0
  %cmp3.i123.i = icmp sgt i32 %82, 0
  br i1 %cmp3.i123.i, label %for.body.i129.i, label %if.end58.i

for.body.i129.i:                                  ; preds = %if.else.i32, %for.body.i129.i
  %indvars.iv.i124.i = phi i64 [ %indvars.iv.next.i126.i, %for.body.i129.i ], [ 0, %if.else.i32 ]
  %arrayidx.i125.i = getelementptr inbounds i8*** %88, i64 %indvars.iv.i124.i
  call fastcc void @do_symstr(i8*** %arrayidx.i125.i, i32 %bRead, %struct.t_symtab* %symtab) #5
  %indvars.iv.next.i126.i = add i64 %indvars.iv.i124.i, 1
  %lftr.wideiv101 = trunc i64 %indvars.iv.next.i126.i to i32
  %exitcond102 = icmp eq i32 %lftr.wideiv101, %82
  br i1 %exitcond102, label %do_strstr.exit130.i, label %for.body.i129.i

do_strstr.exit130.i:                              ; preds = %for.body.i129.i
  %.pr.i = load i32* %nr32.pre-phi.i, align 4, !tbaa !3
  %atomtypeB57.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 4
  %89 = load i8**** %atomtypeB57.i, align 8, !tbaa !0
  %cmp3.i131.i = icmp sgt i32 %.pr.i, 0
  br i1 %cmp3.i131.i, label %for.body.i137.i, label %if.end58.i

for.body.i137.i:                                  ; preds = %do_strstr.exit130.i, %for.body.i137.i
  %indvars.iv.i132.i = phi i64 [ %indvars.iv.next.i134.i, %for.body.i137.i ], [ 0, %do_strstr.exit130.i ]
  %arrayidx.i133.i = getelementptr inbounds i8*** %89, i64 %indvars.iv.i132.i
  call fastcc void @do_symstr(i8*** %arrayidx.i133.i, i32 %bRead, %struct.t_symtab* %symtab) #5
  %indvars.iv.next.i134.i = add i64 %indvars.iv.i132.i, 1
  %lftr.wideiv99 = trunc i64 %indvars.iv.next.i134.i to i32
  %exitcond100 = icmp eq i32 %lftr.wideiv99, %.pr.i
  br i1 %exitcond100, label %if.end58.i, label %for.body.i137.i

if.end58.i:                                       ; preds = %for.body.i137.i, %for.body42.i, %do_strstr.exit130.i, %if.else.i32, %for.cond39.preheader.i
  %nres59.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 5
  %90 = load i32* %nres59.i, align 4, !tbaa !3
  %resname60.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 6
  %91 = load i8**** %resname60.i, align 8, !tbaa !0
  %cmp3.i139.i = icmp sgt i32 %90, 0
  br i1 %cmp3.i139.i, label %for.body.i145.i, label %do_strstr.exit146.i

for.body.i145.i:                                  ; preds = %if.end58.i, %for.body.i145.i
  %indvars.iv.i140.i = phi i64 [ %indvars.iv.next.i142.i, %for.body.i145.i ], [ 0, %if.end58.i ]
  %arrayidx.i141.i = getelementptr inbounds i8*** %91, i64 %indvars.iv.i140.i
  call fastcc void @do_symstr(i8*** %arrayidx.i141.i, i32 %bRead, %struct.t_symtab* %symtab) #5
  %indvars.iv.next.i142.i = add i64 %indvars.iv.i140.i, 1
  %lftr.wideiv97 = trunc i64 %indvars.iv.next.i142.i to i32
  %exitcond98 = icmp eq i32 %lftr.wideiv97, %90
  br i1 %exitcond98, label %do_strstr.exit146.i, label %for.body.i145.i

do_strstr.exit146.i:                              ; preds = %for.body.i145.i, %if.end58.i
  %ngrpname61.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 7
  %92 = load i32* %ngrpname61.i, align 4, !tbaa !3
  %grpname62.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 8
  %93 = load i8**** %grpname62.i, align 8, !tbaa !0
  %cmp3.i147.i = icmp sgt i32 %92, 0
  br i1 %cmp3.i147.i, label %for.body.i153.i, label %do_strstr.exit154.i

for.body.i153.i:                                  ; preds = %do_strstr.exit146.i, %for.body.i153.i
  %indvars.iv.i148.i = phi i64 [ %indvars.iv.next.i150.i, %for.body.i153.i ], [ 0, %do_strstr.exit146.i ]
  %arrayidx.i149.i = getelementptr inbounds i8*** %93, i64 %indvars.iv.i148.i
  call fastcc void @do_symstr(i8*** %arrayidx.i149.i, i32 %bRead, %struct.t_symtab* %symtab) #5
  %indvars.iv.next.i150.i = add i64 %indvars.iv.i148.i, 1
  %lftr.wideiv95 = trunc i64 %indvars.iv.next.i150.i to i32
  %exitcond96 = icmp eq i32 %lftr.wideiv95, %92
  br i1 %exitcond96, label %do_strstr.exit154.i, label %for.body.i153.i

do_strstr.exit154.i:                              ; preds = %for.body.i153.i, %do_strstr.exit146.i
  %94 = load i32* @file_version, align 4, !tbaa !3
  %cmp.i155.i = icmp slt i32 %94, 23
  br i1 %cmp.i155.i, label %if.then.i157.i, label %if.end.i160.i

if.then.i157.i:                                   ; preds = %do_strstr.exit154.i
  %nr.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 8, i32 0
  store i32 1, i32* %nr.i.i, align 4, !tbaa !3
  %call.i156.i = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str91, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 585, i32 1, i32 4) #5
  %95 = bitcast i8* %call.i156.i to i32*
  %nm_ind.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 8, i32 1
  store i32* %95, i32** %nm_ind.i.i, align 8, !tbaa !0
  br label %if.end.i160.i

if.end.i160.i:                                    ; preds = %if.then.i157.i, %do_strstr.exit154.i
  %ngrp.addr.0.i158.i = phi i32 [ 8, %if.then.i157.i ], [ 9, %do_strstr.exit154.i ]
  %96 = getelementptr inbounds [128 x i8]* %buf.i.i, i64 0, i64 0
  br label %for.body.i161.i

for.body.i161.i:                                  ; preds = %for.inc48.i.i, %if.end.i160.i
  %indvars.iv5.i.i = phi i64 [ 0, %if.end.i160.i ], [ %indvars.iv.next6.i.i, %for.inc48.i.i ]
  br i1 %tobool.i23, label %if.then11.i.i, label %cond.end.i.i

cond.end.i.i:                                     ; preds = %for.body.i161.i
  %97 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %nr8.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv5.i.i, i32 0
  %98 = bitcast i32* %nr8.i.i to i8*
  %call9.i.i = call i32 %97(i8* %98, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str92, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 589) #5
  br label %for.cond20.preheader.i.i

if.then11.i.i:                                    ; preds = %for.body.i161.i
  %99 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %nr4.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv5.i.i, i32 0
  %100 = bitcast i32* %nr4.i.i to i8*
  %call5.i162.i = call i32 %99(i8* %100, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str92, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 589) #5
  %101 = load i32* %nr4.i.i, align 4, !tbaa !3
  %call15.i.i = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str93, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 591, i32 %101, i32 4) #5
  %102 = bitcast i8* %call15.i.i to i32*
  %nm_ind18.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv5.i.i, i32 1
  store i32* %102, i32** %nm_ind18.i.i, align 8, !tbaa !0
  br label %for.cond20.preheader.i.i

for.cond20.preheader.i.i:                         ; preds = %if.then11.i.i, %cond.end.i.i
  %nr23.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv5.i.i, i32 0
  %103 = load i32* %nr23.i.i, align 4, !tbaa !3
  %cmp241.i.i = icmp sgt i32 %103, 0
  br i1 %cmp241.i.i, label %for.body25.lr.ph.i.i, label %for.inc48.i.i

for.body25.lr.ph.i.i:                             ; preds = %for.cond20.preheader.i.i
  %nm_ind33.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv5.i.i, i32 1
  br label %for.body25.i.i

for.body25.i.i:                                   ; preds = %land.end.i.i, %for.body25.lr.ph.i.i
  %indvars.iv.i163.i = phi i64 [ 0, %for.body25.lr.ph.i.i ], [ %indvars.iv.next.i164.i, %land.end.i.i ]
  %bDum.03.i.i = phi i32 [ 1, %for.body25.lr.ph.i.i ], [ %land.ext.i.i, %land.end.i.i ]
  call void @llvm.lifetime.start(i64 128, i8* %96) #1
  %104 = trunc i64 %indvars.iv.i163.i to i32
  %call26.i.i = call i32 (i8*, i8*, ...)* @sprintf(i8* %96, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str93, i64 0, i64 0), i32 %104) #5
  %tobool27.i.i = icmp eq i32 %bDum.03.i.i, 0
  br i1 %tobool27.i.i, label %land.end.i.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %for.body25.i.i
  br i1 %tobool.i23, label %cond.true29.i.i, label %cond.false37.i.i

cond.true29.i.i:                                  ; preds = %land.rhs.i.i
  %105 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %106 = load i32** %nm_ind33.i.i, align 8, !tbaa !0
  %arrayidx34.i.i = getelementptr inbounds i32* %106, i64 %indvars.iv.i163.i
  %107 = bitcast i32* %arrayidx34.i.i to i8*
  %call36.i.i = call i32 %105(i8* %107, i32 1, i32 1, i8* %96, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 592) #5
  br label %cond.end45.i.i

cond.false37.i.i:                                 ; preds = %land.rhs.i.i
  %108 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %109 = load i32** %nm_ind33.i.i, align 8, !tbaa !0
  %arrayidx42.i.i = getelementptr inbounds i32* %109, i64 %indvars.iv.i163.i
  %110 = bitcast i32* %arrayidx42.i.i to i8*
  %call44.i.i = call i32 %108(i8* %110, i32 1, i32 1, i8* %96, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 592) #5
  br label %cond.end45.i.i

cond.end45.i.i:                                   ; preds = %cond.false37.i.i, %cond.true29.i.i
  %cond46.i.i = phi i32 [ %call36.i.i, %cond.true29.i.i ], [ %call44.i.i, %cond.false37.i.i ]
  %tobool47.i.i = icmp ne i32 %cond46.i.i, 0
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %cond.end45.i.i, %for.body25.i.i
  %111 = phi i1 [ false, %for.body25.i.i ], [ %tobool47.i.i, %cond.end45.i.i ]
  %land.ext.i.i = zext i1 %111 to i32
  call void @llvm.lifetime.end(i64 128, i8* %96) #1
  %indvars.iv.next.i164.i = add i64 %indvars.iv.i163.i, 1
  %112 = load i32* %nr23.i.i, align 4, !tbaa !3
  %113 = trunc i64 %indvars.iv.next.i164.i to i32
  %cmp24.i.i = icmp slt i32 %113, %112
  br i1 %cmp24.i.i, label %for.body25.i.i, label %for.inc48.i.i

for.inc48.i.i:                                    ; preds = %land.end.i.i, %for.cond20.preheader.i.i
  %indvars.iv.next6.i.i = add i64 %indvars.iv5.i.i, 1
  %114 = trunc i64 %indvars.iv.next6.i.i to i32
  %cmp2.i.i = icmp slt i32 %114, %ngrp.addr.0.i158.i
  br i1 %cmp2.i.i, label %for.body.i161.i, label %do_atoms.exit

do_atoms.exit:                                    ; preds = %for.inc48.i.i
  %excl.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 9
  call fastcc void @do_block(%struct.t_block* %excl.i, i32 %bRead) #5
  %idef = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1
  br i1 %tobool.i23, label %if.then.i47, label %cond.end17.i41

cond.end17.i41:                                   ; preds = %do_atoms.exit
  %115 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %atnr1.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 2
  %116 = bitcast i32* %atnr1.i to i8*
  %call2.i38 = call i32 %115(i8* %116, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str73, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 510) #5
  %117 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %nodeid7.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 1
  %118 = bitcast i32* %nodeid7.i to i8*
  %call8.i39 = call i32 %117(i8* %118, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str74, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 511) #5
  %119 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %120 = bitcast %struct.t_idef* %idef to i8*
  %call16.i40 = call i32 %119(i8* %120, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str75, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 512) #5
  %ntypes24.pre.i = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 0
  br label %for.cond.preheader.i48

if.then.i47:                                      ; preds = %do_atoms.exit
  %121 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %atnr.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 2
  %122 = bitcast i32* %atnr.i to i8*
  %call.i42 = call i32 %121(i8* %122, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str73, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 510) #5
  %123 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %nodeid.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 1
  %124 = bitcast i32* %nodeid.i to i8*
  %call5.i43 = call i32 %123(i8* %124, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str74, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 511) #5
  %125 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %126 = bitcast %struct.t_idef* %idef to i8*
  %call13.i44 = call i32 %125(i8* %126, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str75, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 512) #5
  %ntypes20.i = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 0
  %127 = load i32* %ntypes20.i, align 4, !tbaa !3
  %call21.i45 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str76, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 514, i32 %127, i32 4) #5
  %128 = bitcast i8* %call21.i45 to i32*
  %functype.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 3
  store i32* %128, i32** %functype.i, align 8, !tbaa !0
  %129 = load i32* %ntypes20.i, align 4, !tbaa !3
  %call23.i46 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str77, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 515, i32 %129, i32 24) #5
  %130 = bitcast i8* %call23.i46 to %union.t_iparams*
  %iparams.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 4
  store %union.t_iparams* %130, %union.t_iparams** %iparams.i, align 8, !tbaa !0
  br label %for.cond.preheader.i48

for.cond.preheader.i48:                           ; preds = %if.then.i47, %cond.end17.i41
  %ntypes24.pre-phi.i = phi i32* [ %ntypes20.i, %if.then.i47 ], [ %ntypes24.pre.i, %cond.end17.i41 ]
  %131 = load i32* %ntypes24.pre-phi.i, align 4, !tbaa !3
  %cmp205.i = icmp sgt i32 %131, 0
  br i1 %cmp205.i, label %for.body.lr.ph.i49, label %for.cond80.preheader.i

for.body.lr.ph.i49:                               ; preds = %for.cond.preheader.i48
  %132 = getelementptr inbounds [128 x i8]* %buf.i36, i64 0, i64 0
  %functype29.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 3
  br label %for.body.i51

for.cond41.preheader.i:                           ; preds = %land.end.i
  %cmp43203.i = icmp sgt i32 %141, 0
  br i1 %cmp43203.i, label %for.body44.lr.ph.i, label %for.cond80.preheader.i

for.body44.lr.ph.i:                               ; preds = %for.cond41.preheader.i
  %iparams75.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 4
  br label %for.body44.i

for.body.i51:                                     ; preds = %land.end.i, %for.body.lr.ph.i49
  %indvars.iv225.i = phi i64 [ 0, %for.body.lr.ph.i49 ], [ %indvars.iv.next226.i, %land.end.i ]
  %bDum.0207.i = phi i32 [ 1, %for.body.lr.ph.i49 ], [ %land.ext.i, %land.end.i ]
  call void @llvm.lifetime.start(i64 128, i8* %132) #1
  %133 = trunc i64 %indvars.iv225.i to i32
  %call25.i50 = call i32 (i8*, i8*, ...)* @sprintf(i8* %132, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str76, i64 0, i64 0), i32 %133) #5
  %tobool26.i = icmp eq i32 %bDum.0207.i, 0
  br i1 %tobool26.i, label %land.end.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body.i51
  br i1 %tobool.i23, label %cond.true28.i, label %cond.false32.i

cond.true28.i:                                    ; preds = %land.rhs.i
  %134 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %135 = load i32** %functype29.i, align 8, !tbaa !0
  %arrayidx.i52 = getelementptr inbounds i32* %135, i64 %indvars.iv225.i
  %136 = bitcast i32* %arrayidx.i52 to i8*
  %call31.i53 = call i32 %134(i8* %136, i32 1, i32 1, i8* %132, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 517) #5
  br label %cond.end38.i

cond.false32.i:                                   ; preds = %land.rhs.i
  %137 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %138 = load i32** %functype29.i, align 8, !tbaa !0
  %arrayidx35.i = getelementptr inbounds i32* %138, i64 %indvars.iv225.i
  %139 = bitcast i32* %arrayidx35.i to i8*
  %call37.i = call i32 %137(i8* %139, i32 1, i32 1, i8* %132, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 517) #5
  br label %cond.end38.i

cond.end38.i:                                     ; preds = %cond.false32.i, %cond.true28.i
  %cond39.i = phi i32 [ %call31.i53, %cond.true28.i ], [ %call37.i, %cond.false32.i ]
  %tobool40.i = icmp ne i32 %cond39.i, 0
  br label %land.end.i

land.end.i:                                       ; preds = %cond.end38.i, %for.body.i51
  %140 = phi i1 [ false, %for.body.i51 ], [ %tobool40.i, %cond.end38.i ]
  %land.ext.i = zext i1 %140 to i32
  call void @llvm.lifetime.end(i64 128, i8* %132) #1
  %indvars.iv.next226.i = add i64 %indvars.iv225.i, 1
  %141 = load i32* %ntypes24.pre-phi.i, align 4, !tbaa !3
  %142 = trunc i64 %indvars.iv.next226.i to i32
  %cmp.i54 = icmp slt i32 %142, %141
  br i1 %cmp.i54, label %for.body.i51, label %for.cond41.preheader.i

for.cond80.preheader.i:                           ; preds = %if.end70.i, %for.cond41.preheader.i, %for.cond.preheader.i48
  %143 = getelementptr inbounds [128 x i8]* %buf28.i.i, i64 0, i64 0
  br label %for.body83.i

for.body44.i:                                     ; preds = %if.end70.i, %for.body44.lr.ph.i
  %indvars.iv223.i = phi i64 [ 0, %for.body44.lr.ph.i ], [ %indvars.iv.next224.i, %if.end70.i ]
  br i1 %tobool.i23, label %for.body50.i, label %if.end70.i

for.body50.i:                                     ; preds = %for.inc67.i, %for.body44.i
  %indvars.iv219.i = phi i64 [ 0, %for.body44.i ], [ %indvars.iv.next220.i, %for.inc67.i ]
  %144 = load i32* @file_version, align 4, !tbaa !3
  %fvnr.i = getelementptr inbounds [7 x %struct.t_ftupd]* @ftupd, i64 0, i64 %indvars.iv219.i, i32 0
  %145 = load i32* %fvnr.i, align 8, !tbaa !3
  %cmp53.i = icmp slt i32 %144, %145
  br i1 %cmp53.i, label %land.lhs.true.i, label %for.inc67.i

land.lhs.true.i:                                  ; preds = %for.body50.i
  %146 = load i32** %functype29.i, align 8, !tbaa !0
  %arrayidx57.i = getelementptr inbounds i32* %146, i64 %indvars.iv223.i
  %147 = load i32* %arrayidx57.i, align 4, !tbaa !3
  %ftype.i = getelementptr inbounds [7 x %struct.t_ftupd]* @ftupd, i64 0, i64 %indvars.iv219.i, i32 1
  %148 = load i32* %ftype.i, align 4, !tbaa !3
  %cmp60.i = icmp slt i32 %147, %148
  br i1 %cmp60.i, label %for.inc67.i, label %if.then62.i

if.then62.i:                                      ; preds = %land.lhs.true.i
  %add.i = add nsw i32 %147, 1
  store i32 %add.i, i32* %arrayidx57.i, align 4, !tbaa !3
  br label %for.inc67.i

for.inc67.i:                                      ; preds = %if.then62.i, %land.lhs.true.i, %for.body50.i
  %indvars.iv.next220.i = add i64 %indvars.iv219.i, 1
  %lftr.wideiv93 = trunc i64 %indvars.iv.next220.i to i32
  %exitcond94 = icmp eq i32 %lftr.wideiv93, 7
  br i1 %exitcond94, label %if.end70.i, label %for.body50.i

if.end70.i:                                       ; preds = %for.inc67.i, %for.body44.i
  %149 = load i32** %functype29.i, align 8, !tbaa !0
  %arrayidx73.i = getelementptr inbounds i32* %149, i64 %indvars.iv223.i
  %150 = load i32* %arrayidx73.i, align 4, !tbaa !3
  %151 = load %union.t_iparams** %iparams75.i, align 8, !tbaa !0
  %arrayidx76.i = getelementptr inbounds %union.t_iparams* %151, i64 %indvars.iv223.i
  call void @do_iparams(i32 %150, %union.t_iparams* %arrayidx76.i, i32 %bRead) #5
  %indvars.iv.next224.i = add i64 %indvars.iv223.i, 1
  %152 = load i32* %ntypes24.pre-phi.i, align 4, !tbaa !3
  %153 = trunc i64 %indvars.iv.next224.i to i32
  %cmp43.i = icmp slt i32 %153, %152
  br i1 %cmp43.i, label %for.body44.i, label %for.cond80.preheader.i

for.body83.i:                                     ; preds = %for.inc133.i, %for.cond80.preheader.i
  %indvars.iv215.i = phi i64 [ 0, %for.cond80.preheader.i ], [ %indvars.iv.next216.i, %for.inc133.i ]
  br i1 %tobool.i23, label %for.cond86.preheader.i, label %if.then.i.i59

for.cond86.preheader.i:                           ; preds = %for.body83.i
  %154 = load i32* @file_version, align 4, !tbaa !3
  %155 = trunc i64 %indvars.iv215.i to i32
  br label %for.body90.i

for.body90.i:                                     ; preds = %for.inc104.i, %for.cond86.preheader.i
  %indvars.iv.i55 = phi i64 [ 0, %for.cond86.preheader.i ], [ %indvars.iv.next.i56, %for.inc104.i ]
  %bClear.0199.i = phi i32 [ 0, %for.cond86.preheader.i ], [ %bClear.1.i, %for.inc104.i ]
  %fvnr93.i = getelementptr inbounds [7 x %struct.t_ftupd]* @ftupd, i64 0, i64 %indvars.iv.i55, i32 0
  %156 = load i32* %fvnr93.i, align 8, !tbaa !3
  %cmp94.i = icmp slt i32 %154, %156
  br i1 %cmp94.i, label %land.lhs.true96.i, label %for.inc104.i

land.lhs.true96.i:                                ; preds = %for.body90.i
  %ftype99.i = getelementptr inbounds [7 x %struct.t_ftupd]* @ftupd, i64 0, i64 %indvars.iv.i55, i32 1
  %157 = load i32* %ftype99.i, align 4, !tbaa !3
  %cmp100.i = icmp eq i32 %155, %157
  %.bClear.0.i = select i1 %cmp100.i, i32 1, i32 %bClear.0199.i
  br label %for.inc104.i

for.inc104.i:                                     ; preds = %land.lhs.true96.i, %for.body90.i
  %bClear.1.i = phi i32 [ %bClear.0199.i, %for.body90.i ], [ %.bClear.0.i, %land.lhs.true96.i ]
  %indvars.iv.next.i56 = add i64 %indvars.iv.i55, 1
  %lftr.wideiv87 = trunc i64 %indvars.iv.next.i56 to i32
  %exitcond88 = icmp eq i32 %lftr.wideiv87, 7
  br i1 %exitcond88, label %if.end107.i, label %for.body90.i

if.end107.i:                                      ; preds = %for.inc104.i
  %tobool108.i = icmp eq i32 %bClear.1.i, 0
  %arrayidx111.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv215.i
  br i1 %tobool108.i, label %for.cond.preheader.i.i, label %if.then109.i

if.then109.i:                                     ; preds = %if.end107.i
  %iatoms.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv215.i, i32 2
  store i32* null, i32** %iatoms.i, align 8, !tbaa !0
  %158 = bitcast %struct.t_ilist* %arrayidx111.i to i8*
  call void @llvm.memset.p0i8.i64(i8* %158, i8 0, i64 1028, i32 4, i1 false) #1
  br label %for.inc133.i

if.then.i.i59:                                    ; preds = %for.body83.i
  %arrayidx111192.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv215.i
  %.in.i = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv215.i, i32 0
  %159 = load i8** %.in.i, align 8
  call void @set_comment(i8* %159) #5
  br label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.then.i.i59, %if.end107.i
  %arrayidx111194197.i = phi %struct.t_ilist* [ %arrayidx111192.i, %if.then.i.i59 ], [ %arrayidx111.i, %if.end107.i ]
  br label %for.body.i.i61

for.body.i.i61:                                   ; preds = %land.end.i.i67, %for.cond.preheader.i.i
  %indvars.iv85.i.i = phi i64 [ 0, %for.cond.preheader.i.i ], [ %indvars.iv.next86.i.i, %land.end.i.i67 ]
  %bDum.084.i.i = phi i32 [ 1, %for.cond.preheader.i.i ], [ %land.ext.i.i66, %land.end.i.i67 ]
  call void @llvm.lifetime.start(i64 128, i8* %96) #1
  %160 = trunc i64 %indvars.iv85.i.i to i32
  %call.i.i60 = call i32 (i8*, i8*, ...)* @sprintf(i8* %96, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str78, i64 0, i64 0), i32 %160) #5
  %tobool1.i.i = icmp eq i32 %bDum.084.i.i, 0
  br i1 %tobool1.i.i, label %land.end.i.i67, label %land.rhs.i.i62

land.rhs.i.i62:                                   ; preds = %for.body.i.i61
  br i1 %tobool.i23, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %land.rhs.i.i62
  %161 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %arrayidx.i.i63 = getelementptr inbounds %struct.t_ilist* %arrayidx111194197.i, i64 0, i32 1, i64 %indvars.iv85.i.i
  %162 = bitcast i32* %arrayidx.i.i63 to i8*
  %call4.i.i = call i32 %161(i8* %162, i32 1, i32 1, i8* %96, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 496) #5
  br label %cond.end.i.i65

cond.false.i.i:                                   ; preds = %land.rhs.i.i62
  %163 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %arrayidx7.i.i = getelementptr inbounds %struct.t_ilist* %arrayidx111194197.i, i64 0, i32 1, i64 %indvars.iv85.i.i
  %164 = bitcast i32* %arrayidx7.i.i to i8*
  %call9.i.i64 = call i32 %163(i8* %164, i32 1, i32 1, i8* %96, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 496) #5
  br label %cond.end.i.i65

cond.end.i.i65:                                   ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %call4.i.i, %cond.true.i.i ], [ %call9.i.i64, %cond.false.i.i ]
  %tobool10.i.i = icmp ne i32 %cond.i.i, 0
  br label %land.end.i.i67

land.end.i.i67:                                   ; preds = %cond.end.i.i65, %for.body.i.i61
  %165 = phi i1 [ false, %for.body.i.i61 ], [ %tobool10.i.i, %cond.end.i.i65 ]
  %land.ext.i.i66 = zext i1 %165 to i32
  call void @llvm.lifetime.end(i64 128, i8* %96) #1
  %indvars.iv.next86.i.i = add i64 %indvars.iv85.i.i, 1
  %lftr.wideiv89 = trunc i64 %indvars.iv.next86.i.i to i32
  %exitcond90 = icmp eq i32 %lftr.wideiv89, 256
  br i1 %exitcond90, label %for.end.i.i, label %for.body.i.i61

for.end.i.i:                                      ; preds = %land.end.i.i67
  br i1 %tobool.i23, label %if.then20.i.i, label %cond.end17.i.i

cond.end17.i.i:                                   ; preds = %for.end.i.i
  %166 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %167 = bitcast %struct.t_ilist* %arrayidx111194197.i to i8*
  %call16.i.i68 = call i32 %166(i8* %167, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str79, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 497) #5
  %nr25.pre.i.i = getelementptr inbounds %struct.t_ilist* %arrayidx111194197.i, i64 0, i32 0
  br label %for.cond24.preheader.i.i

if.then20.i.i:                                    ; preds = %for.end.i.i
  %168 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %169 = bitcast %struct.t_ilist* %arrayidx111194197.i to i8*
  %call13.i.i69 = call i32 %168(i8* %169, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str79, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 497) #5
  %nr21.i.i = getelementptr inbounds %struct.t_ilist* %arrayidx111194197.i, i64 0, i32 0
  %170 = load i32* %nr21.i.i, align 4, !tbaa !3
  %call22.i.i = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str80, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 499, i32 %170, i32 4) #5
  %171 = bitcast i8* %call22.i.i to i32*
  %iatoms.i.i = getelementptr inbounds %struct.t_ilist* %arrayidx111194197.i, i64 0, i32 2
  store i32* %171, i32** %iatoms.i.i, align 8, !tbaa !0
  br label %for.cond24.preheader.i.i

for.cond24.preheader.i.i:                         ; preds = %if.then20.i.i, %cond.end17.i.i
  %nr25.pre-phi.i.i = phi i32* [ %nr21.i.i, %if.then20.i.i ], [ %nr25.pre.i.i, %cond.end17.i.i ]
  %172 = load i32* %nr25.pre-phi.i.i, align 4, !tbaa !3
  %cmp2680.i.i = icmp sgt i32 %172, 0
  br i1 %cmp2680.i.i, label %for.body27.lr.ph.i.i, label %for.end53.i.i

for.body27.lr.ph.i.i:                             ; preds = %for.cond24.preheader.i.i
  %iatoms36.i.i = getelementptr inbounds %struct.t_ilist* %arrayidx111194197.i, i64 0, i32 2
  br label %for.body27.i.i

for.body27.i.i:                                   ; preds = %land.end49.i.i, %for.body27.lr.ph.i.i
  %indvars.iv.i.i70 = phi i64 [ 0, %for.body27.lr.ph.i.i ], [ %indvars.iv.next.i.i72, %land.end49.i.i ]
  %bDum.182.i.i = phi i32 [ 1, %for.body27.lr.ph.i.i ], [ %land.ext50.i.i, %land.end49.i.i ]
  call void @llvm.lifetime.start(i64 128, i8* %143) #1
  %173 = trunc i64 %indvars.iv.i.i70 to i32
  %call30.i.i = call i32 (i8*, i8*, ...)* @sprintf(i8* %143, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str80, i64 0, i64 0), i32 %173) #5
  %tobool31.i.i = icmp eq i32 %bDum.182.i.i, 0
  br i1 %tobool31.i.i, label %land.end49.i.i, label %land.rhs32.i.i

land.rhs32.i.i:                                   ; preds = %for.body27.i.i
  br i1 %tobool.i23, label %cond.true34.i.i, label %cond.false40.i.i

cond.true34.i.i:                                  ; preds = %land.rhs32.i.i
  %174 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %175 = load i32** %iatoms36.i.i, align 8, !tbaa !0
  %arrayidx37.i.i = getelementptr inbounds i32* %175, i64 %indvars.iv.i.i70
  %176 = bitcast i32* %arrayidx37.i.i to i8*
  %call39.i.i = call i32 %174(i8* %176, i32 1, i32 1, i8* %143, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 500) #5
  br label %cond.end46.i.i

cond.false40.i.i:                                 ; preds = %land.rhs32.i.i
  %177 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %178 = load i32** %iatoms36.i.i, align 8, !tbaa !0
  %arrayidx43.i.i = getelementptr inbounds i32* %178, i64 %indvars.iv.i.i70
  %179 = bitcast i32* %arrayidx43.i.i to i8*
  %call45.i.i71 = call i32 %177(i8* %179, i32 1, i32 1, i8* %143, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 500) #5
  br label %cond.end46.i.i

cond.end46.i.i:                                   ; preds = %cond.false40.i.i, %cond.true34.i.i
  %cond47.i.i = phi i32 [ %call39.i.i, %cond.true34.i.i ], [ %call45.i.i71, %cond.false40.i.i ]
  %tobool48.i.i = icmp ne i32 %cond47.i.i, 0
  br label %land.end49.i.i

land.end49.i.i:                                   ; preds = %cond.end46.i.i, %for.body27.i.i
  %180 = phi i1 [ false, %for.body27.i.i ], [ %tobool48.i.i, %cond.end46.i.i ]
  %land.ext50.i.i = zext i1 %180 to i32
  call void @llvm.lifetime.end(i64 128, i8* %143) #1
  %indvars.iv.next.i.i72 = add i64 %indvars.iv.i.i70, 1
  %181 = load i32* %nr25.pre-phi.i.i, align 4, !tbaa !3
  %182 = trunc i64 %indvars.iv.next.i.i72 to i32
  %cmp26.i.i = icmp slt i32 %182, %181
  br i1 %cmp26.i.i, label %for.body27.i.i, label %for.end53.i.i

for.end53.i.i:                                    ; preds = %land.end49.i.i, %for.cond24.preheader.i.i
  br i1 %tobool.i23, label %for.inc133.i, label %if.then55.i.i

if.then55.i.i:                                    ; preds = %for.end53.i.i
  call void @unset_comment() #5
  br label %for.inc133.i

for.inc133.i:                                     ; preds = %if.then55.i.i, %for.end53.i.i, %if.then109.i
  %indvars.iv.next216.i = add i64 %indvars.iv215.i, 1
  %lftr.wideiv91 = trunc i64 %indvars.iv.next216.i to i32
  %exitcond92 = icmp eq i32 %lftr.wideiv91, 44
  br i1 %exitcond92, label %for.body, label %for.body83.i

for.body:                                         ; preds = %for.inc133.i, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.inc133.i ]
  %arrayidx = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv
  call fastcc void @do_block(%struct.t_block* %arrayidx, i32 %bRead) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  br i1 %tobool.i, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  call void @close_symtab(%struct.t_symtab* %symtab) #5
  %nr.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 1
  %183 = load i32* %nr.i, align 4, !tbaa !3
  %cmp60.i73 = icmp sgt i32 %183, 0
  br i1 %cmp60.i73, label %for.body.lr.ph.i75, label %if.end

for.body.lr.ph.i75:                               ; preds = %if.then
  %index.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 2
  %a12.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 4
  %atom.i74 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1
  br label %for.body.i80

for.cond7.for.cond.loopexit_crit_edge.i:          ; preds = %for.body10.i
  %.pre.i = load i32* %nr.i, align 4, !tbaa !3
  br label %for.cond.loopexit.i

for.cond.loopexit.i:                              ; preds = %for.body.i80, %for.cond7.for.cond.loopexit_crit_edge.i
  %184 = phi i32 [ %.pre.i, %for.cond7.for.cond.loopexit_crit_edge.i ], [ %186, %for.body.i80 ]
  %185 = trunc i64 %indvars.iv.next66.i to i32
  %cmp.i76 = icmp slt i32 %185, %184
  br i1 %cmp.i76, label %for.body.i80, label %for.end20.i

for.body.i80:                                     ; preds = %for.cond.loopexit.i, %for.body.lr.ph.i75
  %186 = phi i32 [ %183, %for.body.lr.ph.i75 ], [ %184, %for.cond.loopexit.i ]
  %indvars.iv65.i = phi i64 [ 0, %for.body.lr.ph.i75 ], [ %indvars.iv.next66.i, %for.cond.loopexit.i ]
  %chain.062.i = phi i8 [ 65, %for.body.lr.ph.i75 ], [ %chain.1.i, %for.cond.loopexit.i ]
  %187 = load i32** %index.i, align 8, !tbaa !0
  %arrayidx.i77 = getelementptr inbounds i32* %187, i64 %indvars.iv65.i
  %188 = load i32* %arrayidx.i77, align 4, !tbaa !3
  %indvars.iv.next66.i = add i64 %indvars.iv65.i, 1
  %arrayidx3.i = getelementptr inbounds i32* %187, i64 %indvars.iv.next66.i
  %189 = load i32* %arrayidx3.i, align 4, !tbaa !3
  %sub.i78 = sub nsw i32 %189, %188
  %cmp4.i = icmp sgt i32 %sub.i78, 14
  %cmp5.i = icmp slt i8 %chain.062.i, 91
  %or.cond.i79 = and i1 %cmp4.i, %cmp5.i
  %c.0.i = select i1 %or.cond.i79, i8 %chain.062.i, i8 32
  %inc.i = zext i1 %or.cond.i79 to i8
  %chain.1.i = add i8 %inc.i, %chain.062.i
  %cmp858.i = icmp slt i32 %188, %189
  br i1 %cmp858.i, label %for.body10.lr.ph.i, label %for.cond.loopexit.i

for.body10.lr.ph.i:                               ; preds = %for.body.i80
  %190 = sext i32 %188 to i64
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.body10.i, %for.body10.lr.ph.i
  %indvars.iv63.i = phi i64 [ %190, %for.body10.lr.ph.i ], [ %indvars.iv.next64.i, %for.body10.i ]
  %191 = load i32** %a12.i, align 8, !tbaa !0
  %arrayidx13.i = getelementptr inbounds i32* %191, i64 %indvars.iv63.i
  %192 = load i32* %arrayidx13.i, align 4, !tbaa !3
  %idxprom14.i = sext i32 %192 to i64
  %193 = load %struct.t_atom** %atom.i74, align 8, !tbaa !0
  %chain16.i = getelementptr inbounds %struct.t_atom* %193, i64 %idxprom14.i, i32 9
  store i8 %c.0.i, i8* %chain16.i, align 1, !tbaa !1
  %indvars.iv.next64.i = add i64 %indvars.iv63.i, 1
  %194 = trunc i64 %indvars.iv.next64.i to i32
  %cmp8.i = icmp slt i32 %194, %189
  br i1 %cmp8.i, label %for.body10.i, label %for.cond7.for.cond.loopexit_crit_edge.i

for.end20.i:                                      ; preds = %for.cond.loopexit.i
  %phitmp.i = icmp eq i8 %chain.1.i, 66
  br i1 %phitmp.i, label %for.cond25.preheader.i, label %if.end

for.cond25.preheader.i:                           ; preds = %for.end20.i
  %nr26.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %195 = load i32* %nr26.i, align 4, !tbaa !3
  %cmp2756.i = icmp sgt i32 %195, 0
  br i1 %cmp2756.i, label %for.body29.i, label %if.end

for.body29.i:                                     ; preds = %for.cond25.preheader.i, %for.body29.i
  %indvars.iv.i81 = phi i64 [ %indvars.iv.next.i82, %for.body29.i ], [ 0, %for.cond25.preheader.i ]
  %196 = load %struct.t_atom** %atom.i74, align 8, !tbaa !0
  %chain33.i = getelementptr inbounds %struct.t_atom* %196, i64 %indvars.iv.i81, i32 9
  store i8 32, i8* %chain33.i, align 1, !tbaa !1
  %indvars.iv.next.i82 = add i64 %indvars.iv.i81, 1
  %197 = load i32* %nr26.i, align 4, !tbaa !3
  %198 = trunc i64 %indvars.iv.next.i82 to i32
  %cmp27.i83 = icmp slt i32 %198, %197
  br i1 %cmp27.i83, label %for.body29.i, label %if.end

if.end:                                           ; preds = %for.body29.i, %for.cond25.preheader.i, %for.end20.i, %if.then, %for.end
  ret void
}

; Function Attrs: optsize
declare void @done_top(%struct.t_topology*) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @do_symstr(i8*** nocapture %nm, i32 %bRead, %struct.t_symtab* %symtab) #0 {
entry:
  %ls = alloca i32, align 4
  %tobool = icmp eq i32 %bRead, 0
  br i1 %tobool, label %if.else, label %cond.true

cond.true:                                        ; preds = %entry
  %0 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %1 = bitcast i32* %ls to i8*
  %call = call i32 %0(i8* %1, i32 1, i32 1, i8* getelementptr inbounds ([3 x i8]* @.str103, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 601) #5
  %2 = load i32* %ls, align 4, !tbaa !3
  %call3 = call i8** @get_symtab_handle(%struct.t_symtab* %symtab, i32 %2) #5
  store i8** %call3, i8*** %nm, align 8, !tbaa !0
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i8*** %nm, align 8, !tbaa !0
  %call4 = call i32 @lookup_symtab(%struct.t_symtab* %symtab, i8** %3) #5
  store i32 %call4, i32* %ls, align 4, !tbaa !3
  %4 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %5 = bitcast i32* %ls to i8*
  %call9 = call i32 %4(i8* %5, i32 1, i32 1, i8* getelementptr inbounds ([3 x i8]* @.str103, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 606) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.true
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @do_block(%struct.t_block* %block, i32 %bRead) #0 {
entry:
  %buf = alloca [128 x i8], align 16
  %buf36 = alloca [128 x i8], align 16
  %buf66 = alloca [128 x i8], align 16
  %0 = getelementptr inbounds [128 x i8]* %buf, i64 0, i64 0
  %tobool1 = icmp eq i32 %bRead, 0
  br label %for.body

for.body:                                         ; preds = %land.end, %entry
  %indvars.iv139 = phi i64 [ 0, %entry ], [ %indvars.iv.next140, %land.end ]
  %bDum.0136 = phi i32 [ 1, %entry ], [ %land.ext, %land.end ]
  call void @llvm.lifetime.start(i64 128, i8* %0) #1
  %1 = trunc i64 %indvars.iv139 to i32
  %call = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str68, i64 0, i64 0), i32 %1) #5
  %tobool = icmp eq i32 %bDum.0136, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.body
  br i1 %tobool1, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.rhs
  %2 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.t_block* %block, i64 0, i32 0, i64 %indvars.iv139
  %3 = bitcast i32* %arrayidx to i8*
  %call3 = call i32 %2(i8* %3, i32 1, i32 1, i8* %0, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 549) #5
  br label %cond.end

cond.false:                                       ; preds = %land.rhs
  %4 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 0, i64 %indvars.iv139
  %5 = bitcast i32* %arrayidx6 to i8*
  %call8 = call i32 %4(i8* %5, i32 1, i32 1, i8* %0, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 549) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call3, %cond.true ], [ %call8, %cond.false ]
  %tobool9 = icmp ne i32 %cond, 0
  br label %land.end

land.end:                                         ; preds = %for.body, %cond.end
  %6 = phi i1 [ false, %for.body ], [ %tobool9, %cond.end ]
  %land.ext = zext i1 %6 to i32
  call void @llvm.lifetime.end(i64 128, i8* %0) #1
  %indvars.iv.next140 = add i64 %indvars.iv139, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next140 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 256
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %land.end
  %tobool10 = icmp ne i32 %bRead, 0
  br i1 %tobool10, label %if.then, label %cond.end24

cond.end24:                                       ; preds = %for.end
  %7 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %nr14 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1
  %8 = bitcast i32* %nr14 to i8*
  %call15 = call i32 %7(i8* %8, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str69, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 550) #5
  %9 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %nra22 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3
  %10 = bitcast i32* %nra22 to i8*
  %call23 = call i32 %9(i8* %10, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str70, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 551) #5
  br label %for.cond31.preheader

if.then:                                          ; preds = %for.end
  %11 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %nr = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1
  %12 = bitcast i32* %nr to i8*
  %call12 = call i32 %11(i8* %12, i32 1, i32 1, i8* getelementptr inbounds ([10 x i8]* @.str69, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 550) #5
  %13 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %nra = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3
  %14 = bitcast i32* %nra to i8*
  %call20 = call i32 %13(i8* %14, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str70, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 551) #5
  %15 = load i32* %nr, align 4, !tbaa !3
  %add = add nsw i32 %15, 1
  %call28 = call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str71, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 553, i32 %add, i32 4) #5
  %16 = bitcast i8* %call28 to i32*
  %index = getelementptr inbounds %struct.t_block* %block, i64 0, i32 2
  store i32* %16, i32** %index, align 8, !tbaa !0
  %17 = load i32* %nra, align 4, !tbaa !3
  %call30 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str72, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 554, i32 %17, i32 4) #5
  %18 = bitcast i8* %call30 to i32*
  %a = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4
  store i32* %18, i32** %a, align 8, !tbaa !0
  br label %for.cond31.preheader

for.cond31.preheader:                             ; preds = %if.then, %cond.end24
  %nr32 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1
  %19 = load i32* %nr32, align 4, !tbaa !3
  %cmp34132 = icmp sgt i32 %19, -1
  br i1 %cmp34132, label %for.body35.lr.ph, label %for.cond62.preheader

for.body35.lr.ph:                                 ; preds = %for.cond31.preheader
  %20 = getelementptr inbounds [128 x i8]* %buf36, i64 0, i64 0
  %index44 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 2
  br label %for.body35

for.cond62.preheader:                             ; preds = %land.end57, %for.cond31.preheader
  %nra63 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3
  %21 = load i32* %nra63, align 4, !tbaa !3
  %cmp64128 = icmp sgt i32 %21, 0
  br i1 %cmp64128, label %for.body65.lr.ph, label %for.end91

for.body65.lr.ph:                                 ; preds = %for.cond62.preheader
  %22 = getelementptr inbounds [128 x i8]* %buf66, i64 0, i64 0
  %a74 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4
  br label %for.body65

for.body35:                                       ; preds = %for.body35.lr.ph, %land.end57
  %indvars.iv137 = phi i64 [ 0, %for.body35.lr.ph ], [ %indvars.iv.next138, %land.end57 ]
  %bDum.1134 = phi i32 [ 1, %for.body35.lr.ph ], [ %land.ext58, %land.end57 ]
  call void @llvm.lifetime.start(i64 128, i8* %20) #1
  %23 = trunc i64 %indvars.iv137 to i32
  %call38 = call i32 (i8*, i8*, ...)* @sprintf(i8* %20, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str71, i64 0, i64 0), i32 %23) #5
  %tobool39 = icmp eq i32 %bDum.1134, 0
  br i1 %tobool39, label %land.end57, label %land.rhs40

land.rhs40:                                       ; preds = %for.body35
  br i1 %tobool10, label %cond.true42, label %cond.false48

cond.true42:                                      ; preds = %land.rhs40
  %24 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %25 = load i32** %index44, align 8, !tbaa !0
  %arrayidx45 = getelementptr inbounds i32* %25, i64 %indvars.iv137
  %26 = bitcast i32* %arrayidx45 to i8*
  %call47 = call i32 %24(i8* %26, i32 1, i32 1, i8* %20, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 556) #5
  br label %cond.end54

cond.false48:                                     ; preds = %land.rhs40
  %27 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %28 = load i32** %index44, align 8, !tbaa !0
  %arrayidx51 = getelementptr inbounds i32* %28, i64 %indvars.iv137
  %29 = bitcast i32* %arrayidx51 to i8*
  %call53 = call i32 %27(i8* %29, i32 1, i32 1, i8* %20, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 556) #5
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false48, %cond.true42
  %cond55 = phi i32 [ %call47, %cond.true42 ], [ %call53, %cond.false48 ]
  %tobool56 = icmp ne i32 %cond55, 0
  br label %land.end57

land.end57:                                       ; preds = %for.body35, %cond.end54
  %30 = phi i1 [ false, %for.body35 ], [ %tobool56, %cond.end54 ]
  %land.ext58 = zext i1 %30 to i32
  call void @llvm.lifetime.end(i64 128, i8* %20) #1
  %indvars.iv.next138 = add i64 %indvars.iv137, 1
  %31 = load i32* %nr32, align 4, !tbaa !3
  %cmp34 = icmp slt i32 %23, %31
  br i1 %cmp34, label %for.body35, label %for.cond62.preheader

for.body65:                                       ; preds = %for.body65.lr.ph, %land.end87
  %indvars.iv = phi i64 [ 0, %for.body65.lr.ph ], [ %indvars.iv.next, %land.end87 ]
  %bDum.2130 = phi i32 [ 1, %for.body65.lr.ph ], [ %land.ext88, %land.end87 ]
  call void @llvm.lifetime.start(i64 128, i8* %22) #1
  %32 = trunc i64 %indvars.iv to i32
  %call68 = call i32 (i8*, i8*, ...)* @sprintf(i8* %22, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str72, i64 0, i64 0), i32 %32) #5
  %tobool69 = icmp eq i32 %bDum.2130, 0
  br i1 %tobool69, label %land.end87, label %land.rhs70

land.rhs70:                                       ; preds = %for.body65
  br i1 %tobool10, label %cond.true72, label %cond.false78

cond.true72:                                      ; preds = %land.rhs70
  %33 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !0
  %34 = load i32** %a74, align 8, !tbaa !0
  %arrayidx75 = getelementptr inbounds i32* %34, i64 %indvars.iv
  %35 = bitcast i32* %arrayidx75 to i8*
  %call77 = call i32 %33(i8* %35, i32 1, i32 1, i8* %22, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 557) #5
  br label %cond.end84

cond.false78:                                     ; preds = %land.rhs70
  %36 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !0
  %37 = load i32** %a74, align 8, !tbaa !0
  %arrayidx81 = getelementptr inbounds i32* %37, i64 %indvars.iv
  %38 = bitcast i32* %arrayidx81 to i8*
  %call83 = call i32 %36(i8* %38, i32 1, i32 1, i8* %22, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 557) #5
  br label %cond.end84

cond.end84:                                       ; preds = %cond.false78, %cond.true72
  %cond85 = phi i32 [ %call77, %cond.true72 ], [ %call83, %cond.false78 ]
  %tobool86 = icmp ne i32 %cond85, 0
  br label %land.end87

land.end87:                                       ; preds = %for.body65, %cond.end84
  %39 = phi i1 [ false, %for.body65 ], [ %tobool86, %cond.end84 ]
  %land.ext88 = zext i1 %39 to i32
  call void @llvm.lifetime.end(i64 128, i8* %22) #1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %40 = load i32* %nra63, align 4, !tbaa !3
  %41 = trunc i64 %indvars.iv.next to i32
  %cmp64 = icmp slt i32 %41, %40
  br i1 %cmp64, label %for.body65, label %for.end91

for.end91:                                        ; preds = %land.end87, %for.cond62.preheader
  ret void
}

; Function Attrs: optsize
declare void @close_symtab(%struct.t_symtab*) #2

; Function Attrs: optsize
declare i8** @put_symtab(%struct.t_symtab*, i8*) #2

; Function Attrs: optsize
declare i8** @get_symtab_handle(%struct.t_symtab*, i32) #2

; Function Attrs: optsize
declare i32 @lookup_symtab(%struct.t_symtab*, i8**) #2

; Function Attrs: optsize
declare i8* @gmx_strdup(i8*) #2

; Function Attrs: optsize
declare void @gmx_fio_select(i32) #2

; Function Attrs: optsize
declare i32 @bDebugMode() #2

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: optsize
declare void @gmx_fio_setprecision(i32, i32) #2

; Function Attrs: optsize
declare i8* @GromacsVersion() #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize readonly }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}

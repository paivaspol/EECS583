; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/txtdump.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_energy = type { float, double, double, float }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_topology = type { i8**, %struct.t_idef, %struct.t_atoms, [3 x %struct.t_block], %struct.t_symtab }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }
%struct.t_symtab = type { i32, %struct.symbuf* }
%struct.symbuf = type { i32, i8**, %struct.symbuf* }
%struct.t_tpxheader = type { i32, i32, i32, i32, i32, i32, i32, i32, float, float }

@bShowNumbers = internal unnamed_addr global i32 1, align 4
@.str = private unnamed_addr constant [19 x i8] c"not available: %s\0A\00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str3 = private unnamed_addr constant [10 x i8] c"%s (%d):\0A\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"%s (%dx%d):\0A\00", align 1
@.str5 = private unnamed_addr constant [11 x i8] c"%s[%d]=%d\0A\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"%s[%d]={\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str10 = private unnamed_addr constant [15 x i8] c"%s[%d]=%12.5e\0A\00", align 1
@.str11 = private unnamed_addr constant [10 x i8] c"%s[%5d]={\00", align 1
@.str12 = private unnamed_addr constant [7 x i8] c"%12.5e\00", align 1
@.str13 = private unnamed_addr constant [14 x i8] c"} len=%12.5e\0A\00", align 1
@.str15 = private unnamed_addr constant [59 x i8] c"%s[%2d]={e=%10.3e, eav=%10.3e, esum=%10.3e, e2sum=%10.3e}\0A\00", align 1
@.str16 = private unnamed_addr constant [7 x i8] c"nrdf:\09\00", align 1
@.str17 = private unnamed_addr constant [7 x i8] c"  %10g\00", align 1
@.str19 = private unnamed_addr constant [8 x i8] c"ref_t:\09\00", align 1
@.str20 = private unnamed_addr constant [8 x i8] c"tau_t:\09\00", align 1
@.str21 = private unnamed_addr constant [6 x i8] c"acc:\09\00", align 1
@.str22 = private unnamed_addr constant [9 x i8] c"nfreeze:\00", align 1
@.str23 = private unnamed_addr constant [7 x i8] c"  %10s\00", align 1
@.str24 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str25 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str26 = private unnamed_addr constant [21 x i8] c"energygrp_excl[%3d]:\00", align 1
@.str27 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str28 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str29 = private unnamed_addr constant [11 x i8] c"integrator\00", align 1
@.str30 = private unnamed_addr constant [10 x i8] c"UNDEFINED\00", align 1
@ei_names = external global [7 x i8*]
@.str31 = private unnamed_addr constant [7 x i8] c"nsteps\00", align 1
@.str32 = private unnamed_addr constant [8 x i8] c"ns_type\00", align 1
@ens_names = external global [3 x i8*]
@.str33 = private unnamed_addr constant [8 x i8] c"nstlist\00", align 1
@.str34 = private unnamed_addr constant [7 x i8] c"ndelta\00", align 1
@.str35 = private unnamed_addr constant [11 x i8] c"bDomDecomp\00", align 1
@bool_names = external global [3 x i8*]
@.str36 = private unnamed_addr constant [11 x i8] c"decomp_dir\00", align 1
@.str37 = private unnamed_addr constant [8 x i8] c"nstcomm\00", align 1
@.str38 = private unnamed_addr constant [7 x i8] c"nstlog\00", align 1
@.str39 = private unnamed_addr constant [8 x i8] c"nstxout\00", align 1
@.str40 = private unnamed_addr constant [8 x i8] c"nstvout\00", align 1
@.str41 = private unnamed_addr constant [8 x i8] c"nstfout\00", align 1
@.str42 = private unnamed_addr constant [10 x i8] c"nstenergy\00", align 1
@.str43 = private unnamed_addr constant [10 x i8] c"nstxtcout\00", align 1
@.str44 = private unnamed_addr constant [7 x i8] c"init_t\00", align 1
@.str45 = private unnamed_addr constant [8 x i8] c"delta_t\00", align 1
@.str46 = private unnamed_addr constant [8 x i8] c"xtcprec\00", align 1
@.str47 = private unnamed_addr constant [4 x i8] c"nkx\00", align 1
@.str48 = private unnamed_addr constant [4 x i8] c"nky\00", align 1
@.str49 = private unnamed_addr constant [4 x i8] c"nkz\00", align 1
@.str50 = private unnamed_addr constant [10 x i8] c"pme_order\00", align 1
@.str51 = private unnamed_addr constant [11 x i8] c"ewald_rtol\00", align 1
@.str52 = private unnamed_addr constant [15 x i8] c"ewald_geometry\00", align 1
@.str53 = private unnamed_addr constant [16 x i8] c"epsilon_surface\00", align 1
@.str54 = private unnamed_addr constant [13 x i8] c"optimize_fft\00", align 1
@.str55 = private unnamed_addr constant [5 x i8] c"ePBC\00", align 1
@epbc_names = external global [3 x i8*]
@.str56 = private unnamed_addr constant [10 x i8] c"bUncStart\00", align 1
@.str57 = private unnamed_addr constant [10 x i8] c"bShakeSOR\00", align 1
@.str58 = private unnamed_addr constant [4 x i8] c"etc\00", align 1
@etcoupl_names = external global [5 x i8*]
@.str59 = private unnamed_addr constant [4 x i8] c"epc\00", align 1
@epcoupl_names = external global [5 x i8*]
@.str60 = private unnamed_addr constant [8 x i8] c"epctype\00", align 1
@epcoupltype_names = external global [5 x i8*]
@.str61 = private unnamed_addr constant [6 x i8] c"tau_p\00", align 1
@.str62 = private unnamed_addr constant [6 x i8] c"ref_p\00", align 1
@.str63 = private unnamed_addr constant [9 x i8] c"compress\00", align 1
@.str64 = private unnamed_addr constant [8 x i8] c"bSimAnn\00", align 1
@.str65 = private unnamed_addr constant [15 x i8] c"zero_temp_time\00", align 1
@.str66 = private unnamed_addr constant [6 x i8] c"rlist\00", align 1
@.str67 = private unnamed_addr constant [12 x i8] c"coulombtype\00", align 1
@eel_names = external global [11 x i8*]
@.str68 = private unnamed_addr constant [16 x i8] c"rcoulomb_switch\00", align 1
@.str69 = private unnamed_addr constant [9 x i8] c"rcoulomb\00", align 1
@.str70 = private unnamed_addr constant [8 x i8] c"vdwtype\00", align 1
@evdw_names = external global [5 x i8*]
@.str71 = private unnamed_addr constant [12 x i8] c"rvdw_switch\00", align 1
@.str72 = private unnamed_addr constant [5 x i8] c"rvdw\00", align 1
@.str73 = private unnamed_addr constant [10 x i8] c"epsilon_r\00", align 1
@.str74 = private unnamed_addr constant [9 x i8] c"DispCorr\00", align 1
@edispc_names = external global [4 x i8*]
@.str75 = private unnamed_addr constant [8 x i8] c"fudgeQQ\00", align 1
@.str76 = private unnamed_addr constant [12 x i8] c"free_energy\00", align 1
@efep_names = external global [3 x i8*]
@.str77 = private unnamed_addr constant [12 x i8] c"init_lambda\00", align 1
@.str78 = private unnamed_addr constant [9 x i8] c"sc_alpha\00", align 1
@.str79 = private unnamed_addr constant [9 x i8] c"sc_sigma\00", align 1
@.str80 = private unnamed_addr constant [13 x i8] c"delta_lambda\00", align 1
@.str81 = private unnamed_addr constant [16 x i8] c"disre_weighting\00", align 1
@edisreweighting_names = external global [3 x i8*]
@.str82 = private unnamed_addr constant [12 x i8] c"disre_mixed\00", align 1
@.str83 = private unnamed_addr constant [6 x i8] c"dr_fc\00", align 1
@.str84 = private unnamed_addr constant [7 x i8] c"dr_tau\00", align 1
@.str85 = private unnamed_addr constant [12 x i8] c"nstdisreout\00", align 1
@.str86 = private unnamed_addr constant [10 x i8] c"orires_fc\00", align 1
@.str87 = private unnamed_addr constant [11 x i8] c"orires_tau\00", align 1
@.str88 = private unnamed_addr constant [12 x i8] c"nstorireout\00", align 1
@.str89 = private unnamed_addr constant [12 x i8] c"em_stepsize\00", align 1
@.str90 = private unnamed_addr constant [7 x i8] c"em_tol\00", align 1
@.str91 = private unnamed_addr constant [6 x i8] c"niter\00", align 1
@.str92 = private unnamed_addr constant [12 x i8] c"fc_stepsize\00", align 1
@.str93 = private unnamed_addr constant [11 x i8] c"nstcgsteep\00", align 1
@.str94 = private unnamed_addr constant [9 x i8] c"ConstAlg\00", align 1
@eshake_names = external global [3 x i8*]
@.str95 = private unnamed_addr constant [10 x i8] c"shake_tol\00", align 1
@.str96 = private unnamed_addr constant [12 x i8] c"lincs_order\00", align 1
@.str97 = private unnamed_addr constant [16 x i8] c"lincs_warnangle\00", align 1
@.str98 = private unnamed_addr constant [8 x i8] c"bd_temp\00", align 1
@.str99 = private unnamed_addr constant [8 x i8] c"bd_fric\00", align 1
@.str100 = private unnamed_addr constant [8 x i8] c"ld_seed\00", align 1
@.str101 = private unnamed_addr constant [10 x i8] c"cos_accel\00", align 1
@.str102 = private unnamed_addr constant [9 x i8] c"userint1\00", align 1
@.str103 = private unnamed_addr constant [9 x i8] c"userint2\00", align 1
@.str104 = private unnamed_addr constant [9 x i8] c"userint3\00", align 1
@.str105 = private unnamed_addr constant [9 x i8] c"userint4\00", align 1
@.str106 = private unnamed_addr constant [10 x i8] c"userreal1\00", align 1
@.str107 = private unnamed_addr constant [10 x i8] c"userreal2\00", align 1
@.str108 = private unnamed_addr constant [10 x i8] c"userreal3\00", align 1
@.str109 = private unnamed_addr constant [10 x i8] c"userreal4\00", align 1
@.str110 = private unnamed_addr constant [8 x i8] c"grpopts\00", align 1
@.str111 = private unnamed_addr constant [9 x i8] c"efield-x\00", align 1
@.str112 = private unnamed_addr constant [10 x i8] c"efield-xt\00", align 1
@.str113 = private unnamed_addr constant [9 x i8] c"efield-y\00", align 1
@.str114 = private unnamed_addr constant [10 x i8] c"efield-yt\00", align 1
@.str115 = private unnamed_addr constant [9 x i8] c"efield-z\00", align 1
@.str116 = private unnamed_addr constant [10 x i8] c"efield-zt\00", align 1
@.str117 = private unnamed_addr constant [3 x i8] c"th\00", align 1
@.str118 = private unnamed_addr constant [3 x i8] c"ct\00", align 1
@.str119 = private unnamed_addr constant [30 x i8] c"a=%15.8e, b=%15.8e, c=%15.8e\0A\00", align 1
@.str120 = private unnamed_addr constant [3 x i8] c"b0\00", align 1
@.str121 = private unnamed_addr constant [3 x i8] c"cb\00", align 1
@.str122 = private unnamed_addr constant [3 x i8] c"xi\00", align 1
@.str123 = private unnamed_addr constant [3 x i8] c"cx\00", align 1
@.str124 = private unnamed_addr constant [35 x i8] c"b0=%15.8e, cb=%15.8e, beta=%15.8e\0A\00", align 1
@.str125 = private unnamed_addr constant [35 x i8] c"b0=%15.8e, kb=%15.8e, kcub=%15.8e\0A\00", align 1
@.str126 = private unnamed_addr constant [66 x i8] c"kx=%15.8e, ky=%15.8e, kz=%15.8e, rOH=%9.6f, rHH=%9.6f, rOD=%9.6f\0A\00", align 1
@.str127 = private unnamed_addr constant [23 x i8] c"c6=%15.8e, c12=%15.8e\0A\00", align 1
@.str128 = private unnamed_addr constant [50 x i8] c"c6A=%15.8e, c12A=%15.8e, c6B=%15.8e, c12B=%15.8e\0A\00", align 1
@.str129 = private unnamed_addr constant [59 x i8] c"phiA=%15.8e, cpA=%15.8e, phiB=%15.8e, cpB=%15.8e, mult=%d\0A\00", align 1
@.str130 = private unnamed_addr constant [70 x i8] c"label=%4d, type=%1d, low=%15.8e, up1=%15.8e, up2=%15.8e, fac=%15.8e)\0A\00", align 1
@.str131 = private unnamed_addr constant [63 x i8] c"ex=%4d, label=%d, pow=%4d, c=%15.8e, obs=%15.8e, kfac=%15.8e)\0A\00", align 1
@.str132 = private unnamed_addr constant [56 x i8] c"pos0=(%15.8e,%15.8e,%15.8e), fc=(%15.8e,%15.8e,%15.8e)\0A\00", align 1
@.str133 = private unnamed_addr constant [17 x i8] c"%srbc[%d]=%15.8e\00", align 1
@.str134 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str135 = private unnamed_addr constant [22 x i8] c"dA=%15.8e, dB=%15.8e\0A\00", align 1
@.str136 = private unnamed_addr constant [24 x i8] c"doh=%15.8e, dhh=%15.8e\0A\00", align 1
@.str137 = private unnamed_addr constant [10 x i8] c"a=%15.8e\0A\00", align 1
@.str138 = private unnamed_addr constant [20 x i8] c"a=%15.8e, b=%15.8e\0A\00", align 1
@.str139 = private unnamed_addr constant [44 x i8] c"unknown function type %d (%s) in %s line %d\00", align 1
@interaction_function = external global [44 x %struct.t_interaction_function]
@.str140 = private unnamed_addr constant [55 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/txtdump.c\00", align 1
@.str141 = private unnamed_addr constant [9 x i8] c"atnr=%d\0A\00", align 1
@.str142 = private unnamed_addr constant [11 x i8] c"nodeid=%d\0A\00", align 1
@.str143 = private unnamed_addr constant [11 x i8] c"ntypes=%d\0A\00", align 1
@.str144 = private unnamed_addr constant [18 x i8] c"functype[%d]=%s, \00", align 1
@.str145 = private unnamed_addr constant [30 x i8] c"block->index[%d] should be 0\0A\00", align 1
@.str146 = private unnamed_addr constant [17 x i8] c"%s[%d][%d..%d]={\00", align 1
@.str147 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str148 = private unnamed_addr constant [47 x i8] c"tables inconsistent, dumping complete tables:\0A\00", align 1
@.str149 = private unnamed_addr constant [11 x i8] c"name=\22%s\22\0A\00", align 1
@.str150 = private unnamed_addr constant [6 x i8] c"atoms\00", align 1
@.str151 = private unnamed_addr constant [7 x i8] c"blocks\00", align 1
@eblock_names = external global [4 x i8*]
@.str152 = private unnamed_addr constant [5 x i8] c"idef\00", align 1
@.str153 = private unnamed_addr constant [20 x i8] c"bIr    = %spresent\0A\00", align 1
@.str154 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str155 = private unnamed_addr constant [20 x i8] c"bBox   = %spresent\0A\00", align 1
@.str156 = private unnamed_addr constant [20 x i8] c"bTop   = %spresent\0A\00", align 1
@.str157 = private unnamed_addr constant [20 x i8] c"bX     = %spresent\0A\00", align 1
@.str158 = private unnamed_addr constant [20 x i8] c"bV     = %spresent\0A\00", align 1
@.str159 = private unnamed_addr constant [20 x i8] c"bF     = %spresent\0A\00", align 1
@.str160 = private unnamed_addr constant [13 x i8] c"natoms = %d\0A\00", align 1
@.str161 = private unnamed_addr constant [13 x i8] c"step   = %d\0A\00", align 1
@.str162 = private unnamed_addr constant [13 x i8] c"t      = %e\0A\00", align 1
@.str163 = private unnamed_addr constant [13 x i8] c"lambda = %e\0A\00", align 1
@.str164 = private unnamed_addr constant [8 x i8] c"%s%d-%s\00", align 1
@.str166 = private unnamed_addr constant [7 x i8] c"%s[%s]\00", align 1
@.str167 = private unnamed_addr constant [5 x i8] c"atom\00", align 1
@.str168 = private unnamed_addr constant [4 x i8] c"grp\00", align 1
@.str169 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str170 = private unnamed_addr constant [8 x i8] c"residue\00", align 1
@.str171 = private unnamed_addr constant [8 x i8] c"grpname\00", align 1
@.str172 = private unnamed_addr constant [5 x i8] c"excl\00", align 1
@.str173 = private unnamed_addr constant [31 x i8] c"%s[%d]={name=\22%s\22,nameB=\22%s\22}\0A\00", align 1
@.str174 = private unnamed_addr constant [20 x i8] c"%s[%d]={name=\22%s\22}\0A\00", align 1
@.str175 = private unnamed_addr constant [21 x i8] c"%s[%d] nr=%d, name=[\00", align 1
@.str176 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str177 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str178 = private unnamed_addr constant [103 x i8] c"%s[%6d]={type=%3d, typeB=%3d, ptype=%8s, m=%12.5e, q=%12.5e, mB=%12.5e, qB=%12.5e, resnr=%5d} grpnrs=[\00", align 1
@ptype_str = external global [6 x i8*]
@.str179 = private unnamed_addr constant [5 x i8] c" ]}\0A\00", align 1
@.str180 = private unnamed_addr constant [18 x i8] c"%s->index[%d]=%u\0A\00", align 1
@.str181 = private unnamed_addr constant [14 x i8] c"%s->a[%d]=%u\0A\00", align 1
@.str182 = private unnamed_addr constant [35 x i8] c"multinr[division over processors]:\00", align 1
@.str183 = private unnamed_addr constant [7 x i8] c"nr=%d\0A\00", align 1
@.str184 = private unnamed_addr constant [8 x i8] c"nra=%d\0A\00", align 1
@.str185 = private unnamed_addr constant [8 x i8] c"nr: %d\0A\00", align 1
@.str186 = private unnamed_addr constant [9 x i8] c"iatoms:\0A\00", align 1
@.str187 = private unnamed_addr constant [16 x i8] c"%d type=%d (%s)\00", align 1
@.str188 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str189 = private unnamed_addr constant [48 x i8] c"%sA=%12.5e, %sA=%12.5e, %sB=%12.5e, %sB=%12.5e\0A\00", align 1
@.str190 = private unnamed_addr constant [8 x i8] c"n = %d\0A\00", align 1
@.str191 = private unnamed_addr constant [4 x i8] c"a =\00", align 1
@.str192 = private unnamed_addr constant [4 x i8] c" %e\00", align 1
@.str193 = private unnamed_addr constant [6 x i8] c"phi =\00", align 1
@.str194 = private unnamed_addr constant [12 x i8] c"%-20s = %g\0A\00", align 1
@.str195 = private unnamed_addr constant [12 x i8] c"%-20s = %d\0A\00", align 1
@.str196 = private unnamed_addr constant [12 x i8] c"%-20s = %s\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @pr_shownumbers(i32 %bShow) #0 {
entry:
  store i32 %bShow, i32* @bShowNumbers, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @available(%struct._IO_FILE* nocapture %fp, i8* %p, i8* %title) #0 {
entry:
  %tobool = icmp ne i8* %p, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* %title) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %conv = zext i1 %tobool to i32
  ret i32 %conv
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize uwtable
define i32 @pr_indent(%struct._IO_FILE* nocapture %fp, i32 %n) #0 {
entry:
  %cmp3 = icmp sgt i32 %n, 0
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %i.04 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %fputc = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp)
  %inc = add nsw i32 %i.04, 1
  %exitcond = icmp eq i32 %inc, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret i32 %n
}

; Function Attrs: nounwind optsize uwtable
define i32 @pr_title(%struct._IO_FILE* nocapture %fp, i32 %indent, i8* %title) #0 {
entry:
  %cmp3.i = icmp sgt i32 %indent, 0
  br i1 %cmp3.i, label %for.body.i, label %pr_indent.exit

for.body.i:                                       ; preds = %entry, %for.body.i
  %i.04.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %entry ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i = add nsw i32 %i.04.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %indent
  br i1 %exitcond.i, label %pr_indent.exit, label %for.body.i

pr_indent.exit:                                   ; preds = %for.body.i, %entry
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8* %title) #4
  %add = add nsw i32 %indent, 3
  ret i32 %add
}

; Function Attrs: nounwind optsize uwtable
define i32 @pr_title_n(%struct._IO_FILE* nocapture %fp, i32 %indent, i8* %title, i32 %n) #0 {
entry:
  %cmp3.i = icmp sgt i32 %indent, 0
  br i1 %cmp3.i, label %for.body.i, label %pr_indent.exit

for.body.i:                                       ; preds = %entry, %for.body.i
  %i.04.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %entry ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i = add nsw i32 %i.04.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %indent
  br i1 %exitcond.i, label %pr_indent.exit, label %for.body.i

pr_indent.exit:                                   ; preds = %for.body.i, %entry
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i8* %title, i32 %n) #4
  %add = add nsw i32 %indent, 3
  ret i32 %add
}

; Function Attrs: nounwind optsize uwtable
define i32 @pr_title_nxn(%struct._IO_FILE* nocapture %fp, i32 %indent, i8* %title, i32 %n1, i32 %n2) #0 {
entry:
  %cmp3.i = icmp sgt i32 %indent, 0
  br i1 %cmp3.i, label %for.body.i, label %pr_indent.exit

for.body.i:                                       ; preds = %entry, %for.body.i
  %i.04.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %entry ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i = add nsw i32 %i.04.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %indent
  br i1 %exitcond.i, label %pr_indent.exit, label %for.body.i

pr_indent.exit:                                   ; preds = %for.body.i, %entry
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([13 x i8]* @.str4, i64 0, i64 0), i8* %title, i32 %n1, i32 %n2) #4
  %add = add nsw i32 %indent, 3
  ret i32 %add
}

; Function Attrs: nounwind optsize uwtable
define void @pr_ivec(%struct._IO_FILE* nocapture %fp, i32 %indent, i8* %title, i32* %vec, i32 %n) #0 {
entry:
  %tobool.i = icmp eq i32* %vec, null
  br i1 %tobool.i, label %if.then.i, label %if.then

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* %title) #4
  br label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @pr_title_n(%struct._IO_FILE* %fp, i32 %indent, i8* %title, i32 %n) #5
  %cmp16 = icmp sgt i32 %n, 0
  br i1 %cmp16, label %for.body.lr.ph, label %if.end

for.body.lr.ph:                                   ; preds = %if.then
  %cmp3.i = icmp sgt i32 %call1, 0
  br label %for.body

for.body:                                         ; preds = %pr_indent.exit, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %pr_indent.exit ]
  br i1 %cmp3.i, label %for.body.i, label %pr_indent.exit

for.body.i:                                       ; preds = %for.body, %for.body.i
  %i.04.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %for.body ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i = add nsw i32 %i.04.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %call1
  br i1 %exitcond.i, label %pr_indent.exit, label %for.body.i

pr_indent.exit:                                   ; preds = %for.body.i, %for.body
  %0 = load i32* @bShowNumbers, align 4, !tbaa !0
  %tobool3 = icmp ne i32 %0, 0
  %1 = trunc i64 %indvars.iv to i32
  %cond = select i1 %tobool3, i32 %1, i32 -1
  %arrayidx = getelementptr inbounds i32* %vec, i64 %indvars.iv
  %2 = load i32* %arrayidx, align 4, !tbaa !0
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str5, i64 0, i64 0), i8* %title, i32 %cond, i32 %2) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %if.end, label %for.body

if.end:                                           ; preds = %if.then, %pr_indent.exit, %if.then.i
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @pr_ivecs(%struct._IO_FILE* nocapture %fp, i32 %indent, i8* %title, [3 x i32]* %vec, i32 %n) #0 {
entry:
  %tobool.i = icmp eq [3 x i32]* %vec, null
  br i1 %tobool.i, label %if.then.i, label %if.then

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* %title) #4
  br label %if.end18

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @pr_title_nxn(%struct._IO_FILE* %fp, i32 %indent, i8* %title, i32 %n, i32 3) #5
  %cmp37 = icmp sgt i32 %n, 0
  br i1 %cmp37, label %for.body.lr.ph, label %if.end18

for.body.lr.ph:                                   ; preds = %if.then
  %cmp3.i = icmp sgt i32 %call1, 0
  br label %for.body

for.body:                                         ; preds = %for.end, %for.body.lr.ph
  %indvars.iv39 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next40, %for.end ]
  br i1 %cmp3.i, label %for.body.i, label %pr_indent.exit

for.body.i:                                       ; preds = %for.body, %for.body.i
  %i.04.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %for.body ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i = add nsw i32 %i.04.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %call1
  br i1 %exitcond.i, label %pr_indent.exit, label %for.body.i

pr_indent.exit:                                   ; preds = %for.body.i, %for.body
  %0 = load i32* @bShowNumbers, align 4, !tbaa !0
  %tobool3 = icmp ne i32 %0, 0
  %1 = trunc i64 %indvars.iv39 to i32
  %cond = select i1 %tobool3, i32 %1, i32 -1
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* %title, i32 %cond) #4
  br label %for.body7

for.body7:                                        ; preds = %if.end, %pr_indent.exit
  %indvars.iv = phi i64 [ 0, %pr_indent.exit ], [ %indvars.iv.next, %if.end ]
  %2 = trunc i64 %indvars.iv to i32
  %cmp8 = icmp eq i32 %2, 0
  br i1 %cmp8, label %if.end, label %if.then9

if.then9:                                         ; preds = %for.body7
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  br label %if.end

if.end:                                           ; preds = %for.body7, %if.then9
  %arrayidx12 = getelementptr inbounds [3 x i32]* %vec, i64 %indvars.iv39, i64 %indvars.iv
  %4 = load i32* %arrayidx12, align 4, !tbaa !0
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i32 %4) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body7

for.end:                                          ; preds = %if.end
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  %indvars.iv.next40 = add i64 %indvars.iv39, 1
  %lftr.wideiv41 = trunc i64 %indvars.iv.next40 to i32
  %exitcond42 = icmp eq i32 %lftr.wideiv41, %n
  br i1 %exitcond42, label %if.end18, label %for.body

if.end18:                                         ; preds = %if.then, %for.end, %if.then.i
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @pr_rvec(%struct._IO_FILE* nocapture %fp, i32 %indent, i8* %title, float* %vec, i32 %n) #0 {
entry:
  %tobool.i = icmp eq float* %vec, null
  br i1 %tobool.i, label %if.then.i, label %if.then

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* %title) #4
  br label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @pr_title_n(%struct._IO_FILE* %fp, i32 %indent, i8* %title, i32 %n) #5
  %cmp16 = icmp sgt i32 %n, 0
  br i1 %cmp16, label %for.body.lr.ph, label %if.end

for.body.lr.ph:                                   ; preds = %if.then
  %cmp3.i = icmp sgt i32 %call1, 0
  br label %for.body

for.body:                                         ; preds = %pr_indent.exit, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %pr_indent.exit ]
  br i1 %cmp3.i, label %for.body.i, label %pr_indent.exit

for.body.i:                                       ; preds = %for.body, %for.body.i
  %i.04.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %for.body ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i = add nsw i32 %i.04.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %call1
  br i1 %exitcond.i, label %pr_indent.exit, label %for.body.i

pr_indent.exit:                                   ; preds = %for.body.i, %for.body
  %0 = load i32* @bShowNumbers, align 4, !tbaa !0
  %tobool3 = icmp ne i32 %0, 0
  %1 = trunc i64 %indvars.iv to i32
  %cond = select i1 %tobool3, i32 %1, i32 -1
  %arrayidx = getelementptr inbounds float* %vec, i64 %indvars.iv
  %2 = load float* %arrayidx, align 4, !tbaa !3
  %conv = fpext float %2 to double
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([15 x i8]* @.str10, i64 0, i64 0), i8* %title, i32 %cond, double %conv) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %if.end, label %for.body

if.end:                                           ; preds = %if.then, %pr_indent.exit, %if.then.i
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @pr_rvecs_len(%struct._IO_FILE* nocapture %fp, i32 %indent, i8* %title, [3 x float]* %vec, i32 %n) #0 {
entry:
  %tobool.i = icmp eq [3 x float]* %vec, null
  br i1 %tobool.i, label %if.then.i, label %if.then

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* %title) #4
  br label %if.end21

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @pr_title_nxn(%struct._IO_FILE* %fp, i32 %indent, i8* %title, i32 %n, i32 3) #5
  %cmp42 = icmp sgt i32 %n, 0
  br i1 %cmp42, label %for.body.lr.ph, label %if.end21

for.body.lr.ph:                                   ; preds = %if.then
  %cmp3.i = icmp sgt i32 %call1, 0
  br label %for.body

for.body:                                         ; preds = %for.end, %for.body.lr.ph
  %indvars.iv44 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next45, %for.end ]
  br i1 %cmp3.i, label %for.body.i, label %pr_indent.exit

for.body.i:                                       ; preds = %for.body, %for.body.i
  %i.04.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %for.body ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i = add nsw i32 %i.04.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %call1
  br i1 %exitcond.i, label %pr_indent.exit, label %for.body.i

pr_indent.exit:                                   ; preds = %for.body.i, %for.body
  %0 = trunc i64 %indvars.iv44 to i32
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str11, i64 0, i64 0), i8* %title, i32 %0) #4
  br label %for.body6

for.body6:                                        ; preds = %if.end, %pr_indent.exit
  %indvars.iv = phi i64 [ 0, %pr_indent.exit ], [ %indvars.iv.next, %if.end ]
  %1 = trunc i64 %indvars.iv to i32
  %cmp7 = icmp eq i32 %1, 0
  br i1 %cmp7, label %if.end, label %if.then8

if.then8:                                         ; preds = %for.body6
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  br label %if.end

if.end:                                           ; preds = %for.body6, %if.then8
  %arrayidx11 = getelementptr inbounds [3 x float]* %vec, i64 %indvars.iv44, i64 %indvars.iv
  %3 = load float* %arrayidx11, align 4, !tbaa !3
  %conv = fpext float %3 to double
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str12, i64 0, i64 0), double %conv) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body6

for.end:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [3 x float]* %vec, i64 %indvars.iv44, i64 0
  %4 = load float* %arraydecay, align 4, !tbaa !3
  %mul.i = fmul float %4, %4
  %arrayidx2.i = getelementptr inbounds [3 x float]* %vec, i64 %indvars.iv44, i64 1
  %5 = load float* %arrayidx2.i, align 4, !tbaa !3
  %mul4.i = fmul float %5, %5
  %add.i = fadd float %mul.i, %mul4.i
  %arrayidx5.i = getelementptr inbounds [3 x float]* %vec, i64 %indvars.iv44, i64 2
  %6 = load float* %arrayidx5.i, align 4, !tbaa !3
  %mul7.i = fmul float %6, %6
  %add8.i = fadd float %add.i, %mul7.i
  %conv9.i = tail call float @sqrtf(float %add8.i) #1
  %conv16 = fpext float %conv9.i to double
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0), double %conv16) #4
  %indvars.iv.next45 = add i64 %indvars.iv44, 1
  %lftr.wideiv46 = trunc i64 %indvars.iv.next45 to i32
  %exitcond47 = icmp eq i32 %lftr.wideiv46, %n
  br i1 %exitcond47, label %if.end21, label %for.body

if.end21:                                         ; preds = %if.then, %for.end, %if.then.i
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @pr_rvecs(%struct._IO_FILE* nocapture %fp, i32 %indent, i8* %title, [3 x float]* %vec, i32 %n) #0 {
entry:
  %tobool.i = icmp eq [3 x float]* %vec, null
  br i1 %tobool.i, label %if.then.i, label %if.then

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* %title) #4
  br label %if.end17

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @pr_title_nxn(%struct._IO_FILE* %fp, i32 %indent, i8* %title, i32 %n, i32 3) #5
  %cmp36 = icmp sgt i32 %n, 0
  br i1 %cmp36, label %for.body.lr.ph, label %if.end17

for.body.lr.ph:                                   ; preds = %if.then
  %cmp3.i = icmp sgt i32 %call1, 0
  br label %for.body

for.body:                                         ; preds = %for.end, %for.body.lr.ph
  %indvars.iv38 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next39, %for.end ]
  br i1 %cmp3.i, label %for.body.i, label %pr_indent.exit

for.body.i:                                       ; preds = %for.body, %for.body.i
  %i.04.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %for.body ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i = add nsw i32 %i.04.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %call1
  br i1 %exitcond.i, label %pr_indent.exit, label %for.body.i

pr_indent.exit:                                   ; preds = %for.body.i, %for.body
  %0 = trunc i64 %indvars.iv38 to i32
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str11, i64 0, i64 0), i8* %title, i32 %0) #4
  br label %for.body6

for.body6:                                        ; preds = %if.end, %pr_indent.exit
  %indvars.iv = phi i64 [ 0, %pr_indent.exit ], [ %indvars.iv.next, %if.end ]
  %1 = trunc i64 %indvars.iv to i32
  %cmp7 = icmp eq i32 %1, 0
  br i1 %cmp7, label %if.end, label %if.then8

if.then8:                                         ; preds = %for.body6
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  br label %if.end

if.end:                                           ; preds = %for.body6, %if.then8
  %arrayidx11 = getelementptr inbounds [3 x float]* %vec, i64 %indvars.iv38, i64 %indvars.iv
  %3 = load float* %arrayidx11, align 4, !tbaa !3
  %conv = fpext float %3 to double
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str12, i64 0, i64 0), double %conv) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body6

for.end:                                          ; preds = %if.end
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  %indvars.iv.next39 = add i64 %indvars.iv38, 1
  %lftr.wideiv40 = trunc i64 %indvars.iv.next39 to i32
  %exitcond41 = icmp eq i32 %lftr.wideiv40, %n
  br i1 %exitcond41, label %if.end17, label %for.body

if.end17:                                         ; preds = %if.then, %for.end, %if.then.i
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @pr_energies(%struct._IO_FILE* nocapture %fp, i32 %indent, i8* %title, %struct.t_energy* %e, i32 %n) #0 {
entry:
  %tobool.i = icmp eq %struct.t_energy* %e, null
  br i1 %tobool.i, label %if.then.i, label %if.then

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* %title) #4
  br label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @pr_title_n(%struct._IO_FILE* %fp, i32 %indent, i8* %title, i32 %n) #5
  %cmp29 = icmp sgt i32 %n, 0
  br i1 %cmp29, label %for.body.lr.ph, label %if.end

for.body.lr.ph:                                   ; preds = %if.then
  %cmp3.i = icmp sgt i32 %call1, 0
  br label %for.body

for.body:                                         ; preds = %pr_indent.exit, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %pr_indent.exit ]
  br i1 %cmp3.i, label %for.body.i, label %pr_indent.exit

for.body.i:                                       ; preds = %for.body, %for.body.i
  %i.04.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %for.body ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i = add nsw i32 %i.04.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %call1
  br i1 %exitcond.i, label %pr_indent.exit, label %for.body.i

pr_indent.exit:                                   ; preds = %for.body.i, %for.body
  %e3 = getelementptr inbounds %struct.t_energy* %e, i64 %indvars.iv, i32 0
  %0 = load float* %e3, align 4, !tbaa !3
  %conv = fpext float %0 to double
  %eav = getelementptr inbounds %struct.t_energy* %e, i64 %indvars.iv, i32 1
  %1 = load double* %eav, align 8, !tbaa !4
  %esum = getelementptr inbounds %struct.t_energy* %e, i64 %indvars.iv, i32 2
  %2 = load double* %esum, align 8, !tbaa !4
  %e2sum = getelementptr inbounds %struct.t_energy* %e, i64 %indvars.iv, i32 3
  %3 = load float* %e2sum, align 4, !tbaa !3
  %conv10 = fpext float %3 to double
  %4 = trunc i64 %indvars.iv to i32
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([59 x i8]* @.str15, i64 0, i64 0), i8* %title, i32 %4, double %conv, double %1, double %2, double %conv10) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %if.end, label %for.body

if.end:                                           ; preds = %if.then, %pr_indent.exit, %if.then.i
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @pr_grp_opts(%struct._IO_FILE* %out, i32 %indent, i8* %title, %struct.t_grpopts* nocapture %opts) #0 {
entry:
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8* %title) #4
  %cmp3.i = icmp sgt i32 %indent, 0
  br i1 %cmp3.i, label %for.body.i, label %pr_indent.exit

for.body.i:                                       ; preds = %entry, %for.body.i
  %i.04.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %entry ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct._IO_FILE* %out) #3
  %inc.i = add nsw i32 %i.04.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %indent
  br i1 %exitcond.i, label %pr_indent.exit, label %for.body.i

pr_indent.exit:                                   ; preds = %for.body.i, %entry
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([7 x i8]* @.str16, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %out)
  %ngtc = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0
  %1 = load i32* %ngtc, align 4, !tbaa !0
  %cmp231 = icmp sgt i32 %1, 0
  br i1 %cmp231, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %pr_indent.exit
  %nrdf = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv245 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next246, %for.body ]
  %2 = load float** %nrdf, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds float* %2, i64 %indvars.iv245
  %3 = load float* %arrayidx, align 4, !tbaa !3
  %conv = fpext float %3 to double
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([7 x i8]* @.str17, i64 0, i64 0), double %conv) #4
  %indvars.iv.next246 = add i64 %indvars.iv245, 1
  %4 = load i32* %ngtc, align 4, !tbaa !0
  %5 = trunc i64 %indvars.iv.next246 to i32
  %cmp = icmp slt i32 %5, %4
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %pr_indent.exit
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out)
  br i1 %cmp3.i, label %for.body.i187, label %pr_indent.exit188

for.body.i187:                                    ; preds = %for.end, %for.body.i187
  %i.04.i183 = phi i32 [ %inc.i185, %for.body.i187 ], [ 0, %for.end ]
  %fputc.i184 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %out) #3
  %inc.i185 = add nsw i32 %i.04.i183, 1
  %exitcond.i186 = icmp eq i32 %inc.i185, %indent
  br i1 %exitcond.i186, label %pr_indent.exit188, label %for.body.i187

pr_indent.exit188:                                ; preds = %for.body.i187, %for.end
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str19, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %out)
  %7 = load i32* %ngtc, align 4, !tbaa !0
  %cmp9229 = icmp sgt i32 %7, 0
  br i1 %cmp9229, label %for.body11.lr.ph, label %for.end18

for.body11.lr.ph:                                 ; preds = %pr_indent.exit188
  %ref_t = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 5
  br label %for.body11

for.body11:                                       ; preds = %for.body11.lr.ph, %for.body11
  %indvars.iv243 = phi i64 [ 0, %for.body11.lr.ph ], [ %indvars.iv.next244, %for.body11 ]
  %8 = load float** %ref_t, align 8, !tbaa !5
  %arrayidx13 = getelementptr inbounds float* %8, i64 %indvars.iv243
  %9 = load float* %arrayidx13, align 4, !tbaa !3
  %conv14 = fpext float %9 to double
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([7 x i8]* @.str17, i64 0, i64 0), double %conv14) #4
  %indvars.iv.next244 = add i64 %indvars.iv243, 1
  %10 = load i32* %ngtc, align 4, !tbaa !0
  %11 = trunc i64 %indvars.iv.next244 to i32
  %cmp9 = icmp slt i32 %11, %10
  br i1 %cmp9, label %for.body11, label %for.end18

for.end18:                                        ; preds = %for.body11, %pr_indent.exit188
  %fputc169 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out)
  br i1 %cmp3.i, label %for.body.i194, label %pr_indent.exit195

for.body.i194:                                    ; preds = %for.end18, %for.body.i194
  %i.04.i190 = phi i32 [ %inc.i192, %for.body.i194 ], [ 0, %for.end18 ]
  %fputc.i191 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %out) #3
  %inc.i192 = add nsw i32 %i.04.i190, 1
  %exitcond.i193 = icmp eq i32 %inc.i192, %indent
  br i1 %exitcond.i193, label %pr_indent.exit195, label %for.body.i194

pr_indent.exit195:                                ; preds = %for.body.i194, %for.end18
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str20, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %out)
  %13 = load i32* %ngtc, align 4, !tbaa !0
  %cmp24227 = icmp sgt i32 %13, 0
  br i1 %cmp24227, label %for.body26.lr.ph, label %for.end33

for.body26.lr.ph:                                 ; preds = %pr_indent.exit195
  %tau_t = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 6
  br label %for.body26

for.body26:                                       ; preds = %for.body26.lr.ph, %for.body26
  %indvars.iv241 = phi i64 [ 0, %for.body26.lr.ph ], [ %indvars.iv.next242, %for.body26 ]
  %14 = load float** %tau_t, align 8, !tbaa !5
  %arrayidx28 = getelementptr inbounds float* %14, i64 %indvars.iv241
  %15 = load float* %arrayidx28, align 4, !tbaa !3
  %conv29 = fpext float %15 to double
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([7 x i8]* @.str17, i64 0, i64 0), double %conv29) #4
  %indvars.iv.next242 = add i64 %indvars.iv241, 1
  %16 = load i32* %ngtc, align 4, !tbaa !0
  %17 = trunc i64 %indvars.iv.next242 to i32
  %cmp24 = icmp slt i32 %17, %16
  br i1 %cmp24, label %for.body26, label %for.end33

for.end33:                                        ; preds = %for.body26, %pr_indent.exit195
  %fputc172 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out)
  br i1 %cmp3.i, label %for.body.i201, label %pr_indent.exit202

for.body.i201:                                    ; preds = %for.end33, %for.body.i201
  %i.04.i197 = phi i32 [ %inc.i199, %for.body.i201 ], [ 0, %for.end33 ]
  %fputc.i198 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %out) #3
  %inc.i199 = add nsw i32 %i.04.i197, 1
  %exitcond.i200 = icmp eq i32 %inc.i199, %indent
  br i1 %exitcond.i200, label %pr_indent.exit202, label %for.body.i201

pr_indent.exit202:                                ; preds = %for.body.i201, %for.end33
  %18 = tail call i64 @fwrite(i8* getelementptr inbounds ([6 x i8]* @.str21, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %out)
  %ngacc = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 1
  %19 = load i32* %ngacc, align 4, !tbaa !0
  %cmp38225 = icmp sgt i32 %19, 0
  br i1 %cmp38225, label %for.cond41.preheader.lr.ph, label %for.end56

for.cond41.preheader.lr.ph:                       ; preds = %pr_indent.exit202
  %acc = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 7
  br label %for.cond41.preheader

for.cond41.preheader:                             ; preds = %for.cond41.preheader.lr.ph, %for.inc54
  %indvars.iv239 = phi i64 [ 0, %for.cond41.preheader.lr.ph ], [ %indvars.iv.next240, %for.inc54 ]
  br label %for.body44

for.body44:                                       ; preds = %for.body44, %for.cond41.preheader
  %indvars.iv235 = phi i64 [ 0, %for.cond41.preheader ], [ %indvars.iv.next236, %for.body44 ]
  %20 = load [3 x float]** %acc, align 8, !tbaa !5
  %arrayidx48 = getelementptr inbounds [3 x float]* %20, i64 %indvars.iv239, i64 %indvars.iv235
  %21 = load float* %arrayidx48, align 4, !tbaa !3
  %conv49 = fpext float %21 to double
  %call50 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([7 x i8]* @.str17, i64 0, i64 0), double %conv49) #4
  %indvars.iv.next236 = add i64 %indvars.iv235, 1
  %lftr.wideiv237 = trunc i64 %indvars.iv.next236 to i32
  %exitcond238 = icmp eq i32 %lftr.wideiv237, 3
  br i1 %exitcond238, label %for.inc54, label %for.body44

for.inc54:                                        ; preds = %for.body44
  %indvars.iv.next240 = add i64 %indvars.iv239, 1
  %22 = load i32* %ngacc, align 4, !tbaa !0
  %23 = trunc i64 %indvars.iv.next240 to i32
  %cmp38 = icmp slt i32 %23, %22
  br i1 %cmp38, label %for.cond41.preheader, label %for.end56

for.end56:                                        ; preds = %for.inc54, %pr_indent.exit202
  %fputc175 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out)
  br i1 %cmp3.i, label %for.body.i208, label %pr_indent.exit209

for.body.i208:                                    ; preds = %for.end56, %for.body.i208
  %i.04.i204 = phi i32 [ %inc.i206, %for.body.i208 ], [ 0, %for.end56 ]
  %fputc.i205 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %out) #3
  %inc.i206 = add nsw i32 %i.04.i204, 1
  %exitcond.i207 = icmp eq i32 %inc.i206, %indent
  br i1 %exitcond.i207, label %pr_indent.exit209, label %for.body.i208

pr_indent.exit209:                                ; preds = %for.body.i208, %for.end56
  %24 = tail call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str22, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %out)
  %ngfrz = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 2
  %25 = load i32* %ngfrz, align 4, !tbaa !0
  %cmp61222 = icmp sgt i32 %25, 0
  br i1 %cmp61222, label %for.cond64.preheader.lr.ph, label %for.end78

for.cond64.preheader.lr.ph:                       ; preds = %pr_indent.exit209
  %nFreeze = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 8
  br label %for.cond64.preheader

for.cond64.preheader:                             ; preds = %for.cond64.preheader.lr.ph, %for.inc76
  %indvars.iv233 = phi i64 [ 0, %for.cond64.preheader.lr.ph ], [ %indvars.iv.next234, %for.inc76 ]
  br label %for.body67

for.body67:                                       ; preds = %for.body67, %for.cond64.preheader
  %indvars.iv = phi i64 [ 0, %for.cond64.preheader ], [ %indvars.iv.next, %for.body67 ]
  %26 = load [3 x i32]** %nFreeze, align 8, !tbaa !5
  %arrayidx71 = getelementptr inbounds [3 x i32]* %26, i64 %indvars.iv233, i64 %indvars.iv
  %27 = load i32* %arrayidx71, align 4, !tbaa !0
  %tobool = icmp ne i32 %27, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([2 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str25, i64 0, i64 0)
  %call72 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([7 x i8]* @.str23, i64 0, i64 0), i8* %cond) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc76, label %for.body67

for.inc76:                                        ; preds = %for.body67
  %indvars.iv.next234 = add i64 %indvars.iv233, 1
  %28 = load i32* %ngfrz, align 4, !tbaa !0
  %29 = trunc i64 %indvars.iv.next234 to i32
  %cmp61 = icmp slt i32 %29, %28
  br i1 %cmp61, label %for.cond64.preheader, label %for.end78

for.end78:                                        ; preds = %for.inc76, %pr_indent.exit209
  %fputc178 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out)
  %ngener = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 3
  %30 = load i32* %ngener, align 4, !tbaa !0
  %cmp81219 = icmp sgt i32 %30, 0
  br i1 %cmp81219, label %for.body83.lr.ph, label %for.end101

for.body83.lr.ph:                                 ; preds = %for.end78
  %eg_excl = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 9
  br label %for.body83

for.body83:                                       ; preds = %for.body83.lr.ph, %for.end97
  %i.5220 = phi i32 [ 0, %for.body83.lr.ph ], [ %inc100, %for.end97 ]
  br i1 %cmp3.i, label %for.body.i215, label %pr_indent.exit216

for.body.i215:                                    ; preds = %for.body83, %for.body.i215
  %i.04.i211 = phi i32 [ %inc.i213, %for.body.i215 ], [ 0, %for.body83 ]
  %fputc.i212 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %out) #3
  %inc.i213 = add nsw i32 %i.04.i211, 1
  %exitcond.i214 = icmp eq i32 %inc.i213, %indent
  br i1 %exitcond.i214, label %pr_indent.exit216, label %for.body.i215

pr_indent.exit216:                                ; preds = %for.body.i215, %for.body83
  %call85 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([21 x i8]* @.str26, i64 0, i64 0), i32 %i.5220) #4
  %31 = load i32* %ngener, align 4, !tbaa !0
  %cmp88217 = icmp sgt i32 %31, 0
  br i1 %cmp88217, label %for.body90, label %for.end97

for.body90:                                       ; preds = %pr_indent.exit216, %for.body90
  %32 = phi i32 [ %35, %for.body90 ], [ %31, %pr_indent.exit216 ]
  %m.2218 = phi i32 [ %inc96, %for.body90 ], [ 0, %pr_indent.exit216 ]
  %mul = mul nsw i32 %32, %i.5220
  %add = add nsw i32 %mul, %m.2218
  %idxprom92 = sext i32 %add to i64
  %33 = load i32** %eg_excl, align 8, !tbaa !5
  %arrayidx93 = getelementptr inbounds i32* %33, i64 %idxprom92
  %34 = load i32* %arrayidx93, align 4, !tbaa !0
  %call94 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str27, i64 0, i64 0), i32 %34) #4
  %inc96 = add nsw i32 %m.2218, 1
  %35 = load i32* %ngener, align 4, !tbaa !0
  %cmp88 = icmp slt i32 %inc96, %35
  br i1 %cmp88, label %for.body90, label %for.end97

for.end97:                                        ; preds = %for.body90, %pr_indent.exit216
  %fputc181 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out)
  %inc100 = add nsw i32 %i.5220, 1
  %36 = load i32* %ngener, align 4, !tbaa !0
  %cmp81 = icmp slt i32 %inc100, %36
  br i1 %cmp81, label %for.body83, label %for.end101

for.end101:                                       ; preds = %for.end97, %for.end78
  %call102 = tail call i32 @fflush(%struct._IO_FILE* %out) #4
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @pr_inputrec(%struct._IO_FILE* %fp, i32 %indent, i8* %title, %struct.t_inputrec* %ir) #0 {
entry:
  %tobool.i = icmp eq %struct.t_inputrec* %ir, null
  br i1 %tobool.i, label %if.then.i, label %if.then

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* %title) #4
  br label %if.end243

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @pr_title(%struct._IO_FILE* %fp, i32 %indent, i8* %title) #5
  %eI = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 0
  %0 = load i32* %eI, align 4, !tbaa !0
  %1 = icmp ugt i32 %0, 5
  br i1 %1, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.then
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [7 x i8*]* @ei_names, i64 0, i64 %idxprom
  %2 = load i8** %arrayidx, align 8, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %if.then, %cond.false
  %cond = phi i8* [ %2, %cond.false ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %if.then ]
  tail call fastcc void @pr_str(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([11 x i8]* @.str29, i64 0, i64 0), i8* %cond) #5
  %nsteps = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 1
  %3 = load i32* %nsteps, align 4, !tbaa !0
  tail call fastcc void @pr_int(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([7 x i8]* @.str31, i64 0, i64 0), i32 %3) #5
  %ns_type = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 2
  %4 = load i32* %ns_type, align 4, !tbaa !0
  %5 = icmp ugt i32 %4, 1
  br i1 %5, label %cond.end14, label %cond.false10

cond.false10:                                     ; preds = %cond.end
  %idxprom12 = sext i32 %4 to i64
  %arrayidx13 = getelementptr inbounds [3 x i8*]* @ens_names, i64 0, i64 %idxprom12
  %6 = load i8** %arrayidx13, align 8, !tbaa !5
  br label %cond.end14

cond.end14:                                       ; preds = %cond.end, %cond.false10
  %cond15 = phi i8* [ %6, %cond.false10 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %cond.end ]
  tail call fastcc void @pr_str(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([8 x i8]* @.str32, i64 0, i64 0), i8* %cond15) #5
  %nstlist = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 3
  %7 = load i32* %nstlist, align 4, !tbaa !0
  tail call fastcc void @pr_int(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([8 x i8]* @.str33, i64 0, i64 0), i32 %7) #5
  %ndelta = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 4
  %8 = load i32* %ndelta, align 4, !tbaa !0
  tail call fastcc void @pr_int(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([7 x i8]* @.str34, i64 0, i64 0), i32 %8) #5
  %bDomDecomp = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 5
  %9 = load i32* %bDomDecomp, align 4, !tbaa !0
  %10 = icmp ugt i32 %9, 1
  br i1 %10, label %cond.end25, label %cond.false21

cond.false21:                                     ; preds = %cond.end14
  %idxprom23 = sext i32 %9 to i64
  %arrayidx24 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %idxprom23
  %11 = load i8** %arrayidx24, align 8, !tbaa !5
  br label %cond.end25

cond.end25:                                       ; preds = %cond.end14, %cond.false21
  %cond26 = phi i8* [ %11, %cond.false21 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %cond.end14 ]
  tail call fastcc void @pr_str(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([11 x i8]* @.str35, i64 0, i64 0), i8* %cond26) #5
  %decomp_dir = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 6
  %12 = load i32* %decomp_dir, align 4, !tbaa !0
  tail call fastcc void @pr_int(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([11 x i8]* @.str36, i64 0, i64 0), i32 %12) #5
  %nstcomm = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 7
  %13 = load i32* %nstcomm, align 4, !tbaa !0
  tail call fastcc void @pr_int(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([8 x i8]* @.str37, i64 0, i64 0), i32 %13) #5
  %nstlog = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 8
  %14 = load i32* %nstlog, align 4, !tbaa !0
  tail call fastcc void @pr_int(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([7 x i8]* @.str38, i64 0, i64 0), i32 %14) #5
  %nstxout = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 9
  %15 = load i32* %nstxout, align 4, !tbaa !0
  tail call fastcc void @pr_int(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([8 x i8]* @.str39, i64 0, i64 0), i32 %15) #5
  %nstvout = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 10
  %16 = load i32* %nstvout, align 4, !tbaa !0
  tail call fastcc void @pr_int(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([8 x i8]* @.str40, i64 0, i64 0), i32 %16) #5
  %nstfout = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 11
  %17 = load i32* %nstfout, align 4, !tbaa !0
  tail call fastcc void @pr_int(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([8 x i8]* @.str41, i64 0, i64 0), i32 %17) #5
  %nstenergy = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 12
  %18 = load i32* %nstenergy, align 4, !tbaa !0
  tail call fastcc void @pr_int(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([10 x i8]* @.str42, i64 0, i64 0), i32 %18) #5
  %nstxtcout = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 13
  %19 = load i32* %nstxtcout, align 4, !tbaa !0
  tail call fastcc void @pr_int(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([10 x i8]* @.str43, i64 0, i64 0), i32 %19) #5
  %init_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 14
  %20 = load float* %init_t, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([7 x i8]* @.str44, i64 0, i64 0), float %20) #5
  %delta_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %21 = load float* %delta_t, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([8 x i8]* @.str45, i64 0, i64 0), float %21) #5
  %xtcprec = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 16
  %22 = load float* %xtcprec, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([8 x i8]* @.str46, i64 0, i64 0), float %22) #5
  %nkx = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 17
  %23 = load i32* %nkx, align 4, !tbaa !0
  tail call fastcc void @pr_int(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([4 x i8]* @.str47, i64 0, i64 0), i32 %23) #5
  %nky = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 18
  %24 = load i32* %nky, align 4, !tbaa !0
  tail call fastcc void @pr_int(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([4 x i8]* @.str48, i64 0, i64 0), i32 %24) #5
  %nkz = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 19
  %25 = load i32* %nkz, align 4, !tbaa !0
  tail call fastcc void @pr_int(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([4 x i8]* @.str49, i64 0, i64 0), i32 %25) #5
  %pme_order = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 20
  %26 = load i32* %pme_order, align 4, !tbaa !0
  tail call fastcc void @pr_int(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([10 x i8]* @.str50, i64 0, i64 0), i32 %26) #5
  %ewald_rtol = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 21
  %27 = load float* %ewald_rtol, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([11 x i8]* @.str51, i64 0, i64 0), float %27) #5
  %ewald_geometry = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 22
  %28 = load i32* %ewald_geometry, align 4, !tbaa !0
  %conv = sitofp i32 %28 to float
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([15 x i8]* @.str52, i64 0, i64 0), float %conv) #5
  %epsilon_surface = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 23
  %29 = load i32* %epsilon_surface, align 4, !tbaa !0
  %conv27 = sitofp i32 %29 to float
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([16 x i8]* @.str53, i64 0, i64 0), float %conv27) #5
  %bOptFFT = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 24
  %30 = load i32* %bOptFFT, align 4, !tbaa !0
  %31 = icmp ugt i32 %30, 1
  br i1 %31, label %cond.end39, label %cond.false35

cond.false35:                                     ; preds = %cond.end25
  %idxprom37 = sext i32 %30 to i64
  %arrayidx38 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %idxprom37
  %32 = load i8** %arrayidx38, align 8, !tbaa !5
  br label %cond.end39

cond.end39:                                       ; preds = %cond.end25, %cond.false35
  %cond40 = phi i8* [ %32, %cond.false35 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %cond.end25 ]
  tail call fastcc void @pr_str(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([13 x i8]* @.str54, i64 0, i64 0), i8* %cond40) #5
  %ePBC = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 25
  %33 = load i32* %ePBC, align 4, !tbaa !0
  %34 = icmp ugt i32 %33, 1
  br i1 %34, label %cond.end52, label %cond.false48

cond.false48:                                     ; preds = %cond.end39
  %idxprom50 = sext i32 %33 to i64
  %arrayidx51 = getelementptr inbounds [3 x i8*]* @epbc_names, i64 0, i64 %idxprom50
  %35 = load i8** %arrayidx51, align 8, !tbaa !5
  br label %cond.end52

cond.end52:                                       ; preds = %cond.end39, %cond.false48
  %cond53 = phi i8* [ %35, %cond.false48 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %cond.end39 ]
  tail call fastcc void @pr_str(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([5 x i8]* @.str55, i64 0, i64 0), i8* %cond53) #5
  %bUncStart = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 26
  %36 = load i32* %bUncStart, align 4, !tbaa !0
  %37 = icmp ugt i32 %36, 1
  br i1 %37, label %cond.end65, label %cond.false61

cond.false61:                                     ; preds = %cond.end52
  %idxprom63 = sext i32 %36 to i64
  %arrayidx64 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %idxprom63
  %38 = load i8** %arrayidx64, align 8, !tbaa !5
  br label %cond.end65

cond.end65:                                       ; preds = %cond.end52, %cond.false61
  %cond66 = phi i8* [ %38, %cond.false61 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %cond.end52 ]
  tail call fastcc void @pr_str(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([10 x i8]* @.str56, i64 0, i64 0), i8* %cond66) #5
  %bShakeSOR = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 67
  %39 = load i32* %bShakeSOR, align 4, !tbaa !0
  %40 = icmp ugt i32 %39, 1
  br i1 %40, label %cond.end78, label %cond.false74

cond.false74:                                     ; preds = %cond.end65
  %idxprom76 = sext i32 %39 to i64
  %arrayidx77 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %idxprom76
  %41 = load i8** %arrayidx77, align 8, !tbaa !5
  br label %cond.end78

cond.end78:                                       ; preds = %cond.end65, %cond.false74
  %cond79 = phi i8* [ %41, %cond.false74 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %cond.end65 ]
  tail call fastcc void @pr_str(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([10 x i8]* @.str57, i64 0, i64 0), i8* %cond79) #5
  %etc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 27
  %42 = load i32* %etc, align 4, !tbaa !0
  %43 = icmp ugt i32 %42, 3
  br i1 %43, label %cond.end91, label %cond.false87

cond.false87:                                     ; preds = %cond.end78
  %idxprom89 = sext i32 %42 to i64
  %arrayidx90 = getelementptr inbounds [5 x i8*]* @etcoupl_names, i64 0, i64 %idxprom89
  %44 = load i8** %arrayidx90, align 8, !tbaa !5
  br label %cond.end91

cond.end91:                                       ; preds = %cond.end78, %cond.false87
  %cond92 = phi i8* [ %44, %cond.false87 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %cond.end78 ]
  tail call fastcc void @pr_str(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([4 x i8]* @.str58, i64 0, i64 0), i8* %cond92) #5
  %epc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 28
  %45 = load i32* %epc, align 4, !tbaa !0
  %46 = icmp ugt i32 %45, 3
  br i1 %46, label %cond.end104, label %cond.false100

cond.false100:                                    ; preds = %cond.end91
  %idxprom102 = sext i32 %45 to i64
  %arrayidx103 = getelementptr inbounds [5 x i8*]* @epcoupl_names, i64 0, i64 %idxprom102
  %47 = load i8** %arrayidx103, align 8, !tbaa !5
  br label %cond.end104

cond.end104:                                      ; preds = %cond.end91, %cond.false100
  %cond105 = phi i8* [ %47, %cond.false100 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %cond.end91 ]
  tail call fastcc void @pr_str(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([4 x i8]* @.str59, i64 0, i64 0), i8* %cond105) #5
  %epct = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 29
  %48 = load i32* %epct, align 4, !tbaa !0
  %49 = icmp ugt i32 %48, 3
  br i1 %49, label %cond.end117, label %cond.false113

cond.false113:                                    ; preds = %cond.end104
  %idxprom115 = sext i32 %48 to i64
  %arrayidx116 = getelementptr inbounds [5 x i8*]* @epcoupltype_names, i64 0, i64 %idxprom115
  %50 = load i8** %arrayidx116, align 8, !tbaa !5
  br label %cond.end117

cond.end117:                                      ; preds = %cond.end104, %cond.false113
  %cond118 = phi i8* [ %50, %cond.false113 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %cond.end104 ]
  tail call fastcc void @pr_str(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([8 x i8]* @.str60, i64 0, i64 0), i8* %cond118) #5
  %tau_p = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 30
  %51 = load float* %tau_p, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([6 x i8]* @.str61, i64 0, i64 0), float %51) #5
  %arraydecay = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 0
  tail call void @pr_rvecs(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([6 x i8]* @.str62, i64 0, i64 0), [3 x float]* %arraydecay, i32 3) #5
  %arraydecay119 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 0
  tail call void @pr_rvecs(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([9 x i8]* @.str63, i64 0, i64 0), [3 x float]* %arraydecay119, i32 3) #5
  %bSimAnn = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 33
  %52 = load i32* %bSimAnn, align 4, !tbaa !0
  %53 = icmp ugt i32 %52, 1
  br i1 %53, label %cond.end131, label %cond.false127

cond.false127:                                    ; preds = %cond.end117
  %idxprom129 = sext i32 %52 to i64
  %arrayidx130 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %idxprom129
  %54 = load i8** %arrayidx130, align 8, !tbaa !5
  br label %cond.end131

cond.end131:                                      ; preds = %cond.end117, %cond.false127
  %cond132 = phi i8* [ %54, %cond.false127 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %cond.end117 ]
  tail call fastcc void @pr_str(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([8 x i8]* @.str64, i64 0, i64 0), i8* %cond132) #5
  %zero_temp_time = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 34
  %55 = load float* %zero_temp_time, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([15 x i8]* @.str65, i64 0, i64 0), float %55) #5
  %rlist = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 35
  %56 = load float* %rlist, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([6 x i8]* @.str66, i64 0, i64 0), float %56) #5
  %coulombtype = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 36
  %57 = load i32* %coulombtype, align 4, !tbaa !0
  %58 = icmp ugt i32 %57, 9
  br i1 %58, label %cond.end144, label %cond.false140

cond.false140:                                    ; preds = %cond.end131
  %idxprom142 = sext i32 %57 to i64
  %arrayidx143 = getelementptr inbounds [11 x i8*]* @eel_names, i64 0, i64 %idxprom142
  %59 = load i8** %arrayidx143, align 8, !tbaa !5
  br label %cond.end144

cond.end144:                                      ; preds = %cond.end131, %cond.false140
  %cond145 = phi i8* [ %59, %cond.false140 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %cond.end131 ]
  tail call fastcc void @pr_str(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([12 x i8]* @.str67, i64 0, i64 0), i8* %cond145) #5
  %rcoulomb_switch = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37
  %60 = load float* %rcoulomb_switch, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([16 x i8]* @.str68, i64 0, i64 0), float %60) #5
  %rcoulomb = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38
  %61 = load float* %rcoulomb, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([9 x i8]* @.str69, i64 0, i64 0), float %61) #5
  %vdwtype = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 39
  %62 = load i32* %vdwtype, align 4, !tbaa !0
  %63 = icmp ugt i32 %62, 3
  br i1 %63, label %cond.end157, label %cond.false153

cond.false153:                                    ; preds = %cond.end144
  %idxprom155 = sext i32 %62 to i64
  %arrayidx156 = getelementptr inbounds [5 x i8*]* @evdw_names, i64 0, i64 %idxprom155
  %64 = load i8** %arrayidx156, align 8, !tbaa !5
  br label %cond.end157

cond.end157:                                      ; preds = %cond.end144, %cond.false153
  %cond158 = phi i8* [ %64, %cond.false153 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %cond.end144 ]
  tail call fastcc void @pr_str(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([8 x i8]* @.str70, i64 0, i64 0), i8* %cond158) #5
  %rvdw_switch = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 40
  %65 = load float* %rvdw_switch, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([12 x i8]* @.str71, i64 0, i64 0), float %65) #5
  %rvdw = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 41
  %66 = load float* %rvdw, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([5 x i8]* @.str72, i64 0, i64 0), float %66) #5
  %epsilon_r = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 42
  %67 = load float* %epsilon_r, align 4, !tbaa !3
  %fabsf = tail call float @fabsf(float %67) #6
  %68 = fpext float %fabsf to double
  %cmp161 = fcmp ogt double %68, 1.200000e-38
  br i1 %cmp161, label %if.then163, label %if.else

if.then163:                                       ; preds = %cond.end157
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([10 x i8]* @.str73, i64 0, i64 0), float %67) #5
  br label %if.end

if.else:                                          ; preds = %cond.end157
  tail call fastcc void @pr_str(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([10 x i8]* @.str73, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str28, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then163
  %eDispCorr = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 43
  %69 = load i32* %eDispCorr, align 4, !tbaa !0
  %70 = icmp ugt i32 %69, 2
  br i1 %70, label %cond.end176, label %cond.false172

cond.false172:                                    ; preds = %if.end
  %idxprom174 = sext i32 %69 to i64
  %arrayidx175 = getelementptr inbounds [4 x i8*]* @edispc_names, i64 0, i64 %idxprom174
  %71 = load i8** %arrayidx175, align 8, !tbaa !5
  br label %cond.end176

cond.end176:                                      ; preds = %if.end, %cond.false172
  %cond177 = phi i8* [ %71, %cond.false172 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %if.end ]
  tail call fastcc void @pr_str(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([9 x i8]* @.str74, i64 0, i64 0), i8* %cond177) #5
  %fudgeQQ = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 45
  %72 = load float* %fudgeQQ, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([8 x i8]* @.str75, i64 0, i64 0), float %72) #5
  %efep = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46
  %73 = load i32* %efep, align 4, !tbaa !0
  %74 = icmp ugt i32 %73, 1
  br i1 %74, label %cond.end189, label %cond.false185

cond.false185:                                    ; preds = %cond.end176
  %idxprom187 = sext i32 %73 to i64
  %arrayidx188 = getelementptr inbounds [3 x i8*]* @efep_names, i64 0, i64 %idxprom187
  %75 = load i8** %arrayidx188, align 8, !tbaa !5
  br label %cond.end189

cond.end189:                                      ; preds = %cond.end176, %cond.false185
  %cond190 = phi i8* [ %75, %cond.false185 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %cond.end176 ]
  tail call fastcc void @pr_str(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([12 x i8]* @.str76, i64 0, i64 0), i8* %cond190) #5
  %init_lambda = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 47
  %76 = load float* %init_lambda, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([12 x i8]* @.str77, i64 0, i64 0), float %76) #5
  %sc_alpha = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 49
  %77 = load float* %sc_alpha, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([9 x i8]* @.str78, i64 0, i64 0), float %77) #5
  %sc_sigma = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 50
  %78 = load float* %sc_sigma, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([9 x i8]* @.str79, i64 0, i64 0), float %78) #5
  %delta_lambda = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 48
  %79 = load float* %delta_lambda, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([13 x i8]* @.str80, i64 0, i64 0), float %79) #5
  %eDisreWeighting = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 52
  %80 = load i32* %eDisreWeighting, align 4, !tbaa !0
  %81 = icmp ugt i32 %80, 1
  br i1 %81, label %cond.end202, label %cond.false198

cond.false198:                                    ; preds = %cond.end189
  %idxprom200 = sext i32 %80 to i64
  %arrayidx201 = getelementptr inbounds [3 x i8*]* @edisreweighting_names, i64 0, i64 %idxprom200
  %82 = load i8** %arrayidx201, align 8, !tbaa !5
  br label %cond.end202

cond.end202:                                      ; preds = %cond.end189, %cond.false198
  %cond203 = phi i8* [ %82, %cond.false198 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %cond.end189 ]
  tail call fastcc void @pr_str(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([16 x i8]* @.str81, i64 0, i64 0), i8* %cond203) #5
  %bDisreMixed = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 53
  %83 = load i32* %bDisreMixed, align 4, !tbaa !0
  %84 = icmp ugt i32 %83, 1
  br i1 %84, label %cond.end215, label %cond.false211

cond.false211:                                    ; preds = %cond.end202
  %idxprom213 = sext i32 %83 to i64
  %arrayidx214 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %idxprom213
  %85 = load i8** %arrayidx214, align 8, !tbaa !5
  br label %cond.end215

cond.end215:                                      ; preds = %cond.end202, %cond.false211
  %cond216 = phi i8* [ %85, %cond.false211 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %cond.end202 ]
  tail call fastcc void @pr_str(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([12 x i8]* @.str82, i64 0, i64 0), i8* %cond216) #5
  %dr_fc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 51
  %86 = load float* %dr_fc, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([6 x i8]* @.str83, i64 0, i64 0), float %86) #5
  %dr_tau = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 55
  %87 = load float* %dr_tau, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([7 x i8]* @.str84, i64 0, i64 0), float %87) #5
  %nstdisreout = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 54
  %88 = load i32* %nstdisreout, align 4, !tbaa !0
  %conv217 = sitofp i32 %88 to float
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([12 x i8]* @.str85, i64 0, i64 0), float %conv217) #5
  %orires_fc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 56
  %89 = load float* %orires_fc, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([10 x i8]* @.str86, i64 0, i64 0), float %89) #5
  %orires_tau = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 57
  %90 = load float* %orires_tau, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([11 x i8]* @.str87, i64 0, i64 0), float %90) #5
  %nstorireout = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 58
  %91 = load i32* %nstorireout, align 4, !tbaa !0
  %conv218 = sitofp i32 %91 to float
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([12 x i8]* @.str88, i64 0, i64 0), float %conv218) #5
  %em_stepsize = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 59
  %92 = load float* %em_stepsize, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([12 x i8]* @.str89, i64 0, i64 0), float %92) #5
  %em_tol = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 60
  %93 = load float* %em_tol, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([7 x i8]* @.str90, i64 0, i64 0), float %93) #5
  %niter = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 61
  %94 = load i32* %niter, align 4, !tbaa !0
  tail call fastcc void @pr_int(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([6 x i8]* @.str91, i64 0, i64 0), i32 %94) #5
  %fc_stepsize = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 62
  %95 = load i32* %fc_stepsize, align 4, !tbaa !0
  %conv219 = sitofp i32 %95 to float
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([12 x i8]* @.str92, i64 0, i64 0), float %conv219) #5
  %nstcgsteep = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 63
  %96 = load i32* %nstcgsteep, align 4, !tbaa !0
  tail call fastcc void @pr_int(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([11 x i8]* @.str93, i64 0, i64 0), i32 %96) #5
  %eConstrAlg = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 64
  %97 = load i32* %eConstrAlg, align 4, !tbaa !0
  %98 = icmp ugt i32 %97, 1
  br i1 %98, label %cond.end231, label %cond.false227

cond.false227:                                    ; preds = %cond.end215
  %idxprom229 = sext i32 %97 to i64
  %arrayidx230 = getelementptr inbounds [3 x i8*]* @eshake_names, i64 0, i64 %idxprom229
  %99 = load i8** %arrayidx230, align 8, !tbaa !5
  br label %cond.end231

cond.end231:                                      ; preds = %cond.end215, %cond.false227
  %cond232 = phi i8* [ %99, %cond.false227 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %cond.end215 ]
  tail call fastcc void @pr_str(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([9 x i8]* @.str94, i64 0, i64 0), i8* %cond232) #5
  %shake_tol = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 44
  %100 = load float* %shake_tol, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([10 x i8]* @.str95, i64 0, i64 0), float %100) #5
  %nProjOrder = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 65
  %101 = load i32* %nProjOrder, align 4, !tbaa !0
  tail call fastcc void @pr_int(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([12 x i8]* @.str96, i64 0, i64 0), i32 %101) #5
  %LincsWarnAngle = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 66
  %102 = load float* %LincsWarnAngle, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([16 x i8]* @.str97, i64 0, i64 0), float %102) #5
  %bd_temp = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 68
  %103 = load float* %bd_temp, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([8 x i8]* @.str98, i64 0, i64 0), float %103) #5
  %bd_fric = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 69
  %104 = load float* %bd_fric, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([8 x i8]* @.str99, i64 0, i64 0), float %104) #5
  %ld_seed = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 70
  %105 = load i32* %ld_seed, align 4, !tbaa !0
  tail call fastcc void @pr_int(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([8 x i8]* @.str100, i64 0, i64 0), i32 %105) #5
  %cos_accel = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 71
  %106 = load float* %cos_accel, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([10 x i8]* @.str101, i64 0, i64 0), float %106) #5
  %userint1 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 72
  %107 = load i32* %userint1, align 4, !tbaa !0
  tail call fastcc void @pr_int(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([9 x i8]* @.str102, i64 0, i64 0), i32 %107) #5
  %userint2 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 73
  %108 = load i32* %userint2, align 4, !tbaa !0
  tail call fastcc void @pr_int(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([9 x i8]* @.str103, i64 0, i64 0), i32 %108) #5
  %userint3 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 74
  %109 = load i32* %userint3, align 4, !tbaa !0
  tail call fastcc void @pr_int(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([9 x i8]* @.str104, i64 0, i64 0), i32 %109) #5
  %userint4 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 75
  %110 = load i32* %userint4, align 4, !tbaa !0
  tail call fastcc void @pr_int(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([9 x i8]* @.str105, i64 0, i64 0), i32 %110) #5
  %userreal1 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 76
  %111 = load float* %userreal1, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([10 x i8]* @.str106, i64 0, i64 0), float %111) #5
  %userreal2 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 77
  %112 = load float* %userreal2, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([10 x i8]* @.str107, i64 0, i64 0), float %112) #5
  %userreal3 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 78
  %113 = load float* %userreal3, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([10 x i8]* @.str108, i64 0, i64 0), float %113) #5
  %userreal4 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 79
  %114 = load float* %userreal4, align 4, !tbaa !3
  tail call fastcc void @pr_real(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([10 x i8]* @.str109, i64 0, i64 0), float %114) #5
  %opts = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80
  tail call void @pr_grp_opts(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([8 x i8]* @.str110, i64 0, i64 0), %struct.t_grpopts* %opts) #5
  %arrayidx233 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 0
  tail call fastcc void @pr_cosine(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([9 x i8]* @.str111, i64 0, i64 0), %struct.t_cosines* %arrayidx233) #5
  %arrayidx234 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 0
  tail call fastcc void @pr_cosine(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([10 x i8]* @.str112, i64 0, i64 0), %struct.t_cosines* %arrayidx234) #5
  %arrayidx236 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 1
  tail call fastcc void @pr_cosine(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([9 x i8]* @.str113, i64 0, i64 0), %struct.t_cosines* %arrayidx236) #5
  %arrayidx238 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 1
  tail call fastcc void @pr_cosine(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([10 x i8]* @.str114, i64 0, i64 0), %struct.t_cosines* %arrayidx238) #5
  %arrayidx240 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 2
  tail call fastcc void @pr_cosine(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([9 x i8]* @.str115, i64 0, i64 0), %struct.t_cosines* %arrayidx240) #5
  %arrayidx242 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 2
  tail call fastcc void @pr_cosine(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([10 x i8]* @.str116, i64 0, i64 0), %struct.t_cosines* %arrayidx242) #5
  br label %if.end243

if.end243:                                        ; preds = %if.then.i, %cond.end231
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @pr_str(%struct._IO_FILE* nocapture %fp, i32 %indent, i8* %title, i8* %s) #0 {
entry:
  %cmp3.i = icmp sgt i32 %indent, 0
  br i1 %cmp3.i, label %for.body.i, label %pr_indent.exit

for.body.i:                                       ; preds = %entry, %for.body.i
  %i.04.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %entry ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i = add nsw i32 %i.04.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %indent
  br i1 %exitcond.i, label %pr_indent.exit, label %for.body.i

pr_indent.exit:                                   ; preds = %for.body.i, %entry
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([12 x i8]* @.str196, i64 0, i64 0), i8* %title, i8* %s) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @pr_int(%struct._IO_FILE* nocapture %fp, i32 %indent, i8* %title, i32 %i) #0 {
entry:
  %cmp3.i = icmp sgt i32 %indent, 0
  br i1 %cmp3.i, label %for.body.i, label %pr_indent.exit

for.body.i:                                       ; preds = %entry, %for.body.i
  %i.04.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %entry ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i = add nsw i32 %i.04.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %indent
  br i1 %exitcond.i, label %pr_indent.exit, label %for.body.i

pr_indent.exit:                                   ; preds = %for.body.i, %entry
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([12 x i8]* @.str195, i64 0, i64 0), i8* %title, i32 %i) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @pr_real(%struct._IO_FILE* nocapture %fp, i32 %indent, i8* %title, float %r) #0 {
entry:
  %cmp3.i = icmp sgt i32 %indent, 0
  br i1 %cmp3.i, label %for.body.i, label %pr_indent.exit

for.body.i:                                       ; preds = %entry, %for.body.i
  %i.04.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %entry ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i = add nsw i32 %i.04.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %indent
  br i1 %exitcond.i, label %pr_indent.exit, label %for.body.i

pr_indent.exit:                                   ; preds = %for.body.i, %entry
  %conv = fpext float %r to double
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([12 x i8]* @.str194, i64 0, i64 0), i8* %title, double %conv) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @pr_cosine(%struct._IO_FILE* nocapture %fp, i32 %indent, i8* %title, %struct.t_cosines* nocapture %cos) #0 {
entry:
  %call = tail call i32 @pr_title(%struct._IO_FILE* %fp, i32 %indent, i8* %title) #5
  %cmp3.i = icmp sgt i32 %call, 0
  br i1 %cmp3.i, label %for.body.i, label %pr_indent.exit

for.body.i:                                       ; preds = %entry, %for.body.i
  %i.04.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %entry ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i = add nsw i32 %i.04.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %call
  br i1 %exitcond.i, label %pr_indent.exit, label %for.body.i

pr_indent.exit:                                   ; preds = %for.body.i, %entry
  %n = getelementptr inbounds %struct.t_cosines* %cos, i64 0, i32 0
  %0 = load i32* %n, align 4, !tbaa !0
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str190, i64 0, i64 0), i32 %0) #4
  %1 = load i32* %n, align 4, !tbaa !0
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %pr_indent.exit
  %add = add nsw i32 %call, 2
  %cmp3.i50 = icmp sgt i32 %add, 0
  br i1 %cmp3.i50, label %for.body.i55, label %pr_indent.exit56

for.body.i55:                                     ; preds = %if.then, %for.body.i55
  %i.04.i51 = phi i32 [ %inc.i53, %for.body.i55 ], [ 0, %if.then ]
  %fputc.i52 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i53 = add nsw i32 %i.04.i51, 1
  %exitcond.i54 = icmp eq i32 %inc.i53, %add
  br i1 %exitcond.i54, label %pr_indent.exit56, label %for.body.i55

pr_indent.exit56:                                 ; preds = %for.body.i55, %if.then
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str191, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %fp)
  %3 = load i32* %n, align 4, !tbaa !0
  %cmp766 = icmp sgt i32 %3, 0
  br i1 %cmp766, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %pr_indent.exit56
  %a = getelementptr inbounds %struct.t_cosines* %cos, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv68 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next69, %for.body ]
  %4 = load float** %a, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds float* %4, i64 %indvars.iv68
  %5 = load float* %arrayidx, align 4, !tbaa !3
  %conv = fpext float %5 to double
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str192, i64 0, i64 0), double %conv) #4
  %indvars.iv.next69 = add i64 %indvars.iv68, 1
  %6 = load i32* %n, align 4, !tbaa !0
  %7 = trunc i64 %indvars.iv.next69 to i32
  %cmp7 = icmp slt i32 %7, %6
  br i1 %cmp7, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %pr_indent.exit56
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  br i1 %cmp3.i50, label %for.body.i62, label %pr_indent.exit63

for.body.i62:                                     ; preds = %for.end, %for.body.i62
  %i.04.i58 = phi i32 [ %inc.i60, %for.body.i62 ], [ 0, %for.end ]
  %fputc.i59 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i60 = add nsw i32 %i.04.i58, 1
  %exitcond.i61 = icmp eq i32 %inc.i60, %add
  br i1 %exitcond.i61, label %pr_indent.exit63, label %for.body.i62

pr_indent.exit63:                                 ; preds = %for.body.i62, %for.end
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([6 x i8]* @.str193, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %fp)
  %9 = load i32* %n, align 4, !tbaa !0
  %cmp1564 = icmp sgt i32 %9, 0
  br i1 %cmp1564, label %for.body17.lr.ph, label %for.end24

for.body17.lr.ph:                                 ; preds = %pr_indent.exit63
  %phi = getelementptr inbounds %struct.t_cosines* %cos, i64 0, i32 2
  br label %for.body17

for.body17:                                       ; preds = %for.body17.lr.ph, %for.body17
  %indvars.iv = phi i64 [ 0, %for.body17.lr.ph ], [ %indvars.iv.next, %for.body17 ]
  %10 = load float** %phi, align 8, !tbaa !5
  %arrayidx19 = getelementptr inbounds float* %10, i64 %indvars.iv
  %11 = load float* %arrayidx19, align 4, !tbaa !3
  %conv20 = fpext float %11 to double
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str192, i64 0, i64 0), double %conv20) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %12 = load i32* %n, align 4, !tbaa !0
  %13 = trunc i64 %indvars.iv.next to i32
  %cmp15 = icmp slt i32 %13, %12
  br i1 %cmp15, label %for.body17, label %for.end24

for.end24:                                        ; preds = %for.body17, %pr_indent.exit63
  %fputc49 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  br label %if.end

if.end:                                           ; preds = %for.end24, %pr_indent.exit
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @pr_iparams(%struct._IO_FILE* %fp, i32 %ftype, %union.t_iparams* %iparams) #0 {
entry:
  switch i32 %ftype, label %sw.default [
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 14, label %sw.bb1
    i32 0, label %sw.bb6
    i32 1, label %sw.bb6
    i32 5, label %sw.bb6
    i32 10, label %sw.bb7
    i32 2, label %sw.bb8
    i32 3, label %sw.bb15
    i32 4, label %sw.bb23
    i32 19, label %sw.bb25
    i32 13, label %sw.bb38
    i32 11, label %sw.bb43
    i32 8, label %sw.bb52
    i32 25, label %sw.bb52
    i32 26, label %sw.bb52
    i32 21, label %sw.bb62
    i32 23, label %sw.bb73
    i32 20, label %sw.bb86
    i32 9, label %for.cond.preheader
    i32 27, label %sw.bb116
    i32 28, label %sw.bb116
    i32 29, label %sw.bb121
    i32 30, label %sw.bb126
    i32 31, label %sw.bb130
    i32 32, label %sw.bb130
    i32 33, label %sw.bb130
    i32 34, label %sw.bb138
    i32 35, label %sw.bb138
  ]

for.cond.preheader:                               ; preds = %entry
  %rbc = bitcast %union.t_iparams* %iparams to [6 x float]*
  br label %for.body

sw.bb:                                            ; preds = %entry, %entry
  %rA.i = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %0 = load float* %rA.i, align 4, !tbaa !3
  %conv.i = fpext float %0 to double
  %1 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %2 = load float* %1, align 4, !tbaa !3
  %conv2.i = fpext float %2 to double
  %3 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %4 = load float* %3, align 4, !tbaa !3
  %conv4.i = fpext float %4 to double
  %5 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %6 = load float* %5, align 4, !tbaa !3
  %conv6.i = fpext float %6 to double
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([48 x i8]* @.str189, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str117, i64 0, i64 0), double %conv.i, i8* getelementptr inbounds ([3 x i8]* @.str118, i64 0, i64 0), double %conv2.i, i8* getelementptr inbounds ([3 x i8]* @.str117, i64 0, i64 0), double %conv4.i, i8* getelementptr inbounds ([3 x i8]* @.str118, i64 0, i64 0), double %conv6.i) #4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %a = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %7 = load float* %a, align 4, !tbaa !3
  %conv = fpext float %7 to double
  %8 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %9 = load float* %8, align 4, !tbaa !3
  %conv3 = fpext float %9 to double
  %10 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %11 = load float* %10, align 4, !tbaa !3
  %conv5 = fpext float %11 to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([30 x i8]* @.str119, i64 0, i64 0), double %conv, double %conv3, double %conv5) #4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry, %entry, %entry
  %rA.i236 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %12 = load float* %rA.i236, align 4, !tbaa !3
  %conv.i237 = fpext float %12 to double
  %13 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %14 = load float* %13, align 4, !tbaa !3
  %conv2.i238 = fpext float %14 to double
  %15 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %16 = load float* %15, align 4, !tbaa !3
  %conv4.i239 = fpext float %16 to double
  %17 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %18 = load float* %17, align 4, !tbaa !3
  %conv6.i240 = fpext float %18 to double
  %call.i241 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([48 x i8]* @.str189, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str120, i64 0, i64 0), double %conv.i237, i8* getelementptr inbounds ([3 x i8]* @.str121, i64 0, i64 0), double %conv2.i238, i8* getelementptr inbounds ([3 x i8]* @.str120, i64 0, i64 0), double %conv4.i239, i8* getelementptr inbounds ([3 x i8]* @.str121, i64 0, i64 0), double %conv6.i240) #4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %rA.i242 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %19 = load float* %rA.i242, align 4, !tbaa !3
  %conv.i243 = fpext float %19 to double
  %20 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %21 = load float* %20, align 4, !tbaa !3
  %conv2.i244 = fpext float %21 to double
  %22 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %23 = load float* %22, align 4, !tbaa !3
  %conv4.i245 = fpext float %23 to double
  %24 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %25 = load float* %24, align 4, !tbaa !3
  %conv6.i246 = fpext float %25 to double
  %call.i247 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([48 x i8]* @.str189, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str122, i64 0, i64 0), double %conv.i243, i8* getelementptr inbounds ([3 x i8]* @.str123, i64 0, i64 0), double %conv2.i244, i8* getelementptr inbounds ([3 x i8]* @.str122, i64 0, i64 0), double %conv4.i245, i8* getelementptr inbounds ([3 x i8]* @.str123, i64 0, i64 0), double %conv6.i246) #4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %b0 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %26 = load float* %b0, align 4, !tbaa !3
  %conv9 = fpext float %26 to double
  %27 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %28 = load float* %27, align 4, !tbaa !3
  %conv11 = fpext float %28 to double
  %29 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %30 = load float* %29, align 4, !tbaa !3
  %conv13 = fpext float %30 to double
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str124, i64 0, i64 0), double %conv9, double %conv11, double %conv13) #4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %b016 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %31 = load float* %b016, align 4, !tbaa !3
  %conv17 = fpext float %31 to double
  %32 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %33 = load float* %32, align 4, !tbaa !3
  %conv19 = fpext float %33 to double
  %34 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %35 = load float* %34, align 4, !tbaa !3
  %conv21 = fpext float %35 to double
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str125, i64 0, i64 0), double %conv17, double %conv19, double %conv21) #4
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %fputc235 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  %kx = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %36 = load float* %kx, align 4, !tbaa !3
  %conv26 = fpext float %36 to double
  %ky = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %37 = load float* %ky, align 4, !tbaa !3
  %conv28 = fpext float %37 to double
  %kz = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %38 = load float* %kz, align 4, !tbaa !3
  %conv30 = fpext float %38 to double
  %rOH = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %39 = load float* %rOH, align 4, !tbaa !3
  %conv32 = fpext float %39 to double
  %rHH = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4
  %40 = load float* %rHH, align 4, !tbaa !3
  %conv34 = fpext float %40 to double
  %rOD = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5
  %41 = load float* %rOD, align 4, !tbaa !3
  %conv36 = fpext float %41 to double
  %call37 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([66 x i8]* @.str126, i64 0, i64 0), double %conv26, double %conv28, double %conv30, double %conv32, double %conv34, double %conv36) #4
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry
  %c6 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %42 = load float* %c6, align 4, !tbaa !3
  %conv39 = fpext float %42 to double
  %43 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %44 = load float* %43, align 4, !tbaa !3
  %conv41 = fpext float %44 to double
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([23 x i8]* @.str127, i64 0, i64 0), double %conv39, double %conv41) #4
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  %c6A = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %45 = load float* %c6A, align 4, !tbaa !3
  %conv44 = fpext float %45 to double
  %46 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %47 = load float* %46, align 4, !tbaa !3
  %conv46 = fpext float %47 to double
  %48 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %49 = load float* %48, align 4, !tbaa !3
  %conv48 = fpext float %49 to double
  %50 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %51 = load float* %50, align 4, !tbaa !3
  %conv50 = fpext float %51 to double
  %call51 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([50 x i8]* @.str128, i64 0, i64 0), double %conv44, double %conv46, double %conv48, double %conv50) #4
  br label %sw.epilog

sw.bb52:                                          ; preds = %entry, %entry, %entry
  %phiA = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %52 = load float* %phiA, align 4, !tbaa !3
  %conv53 = fpext float %52 to double
  %53 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %54 = load float* %53, align 4, !tbaa !3
  %conv55 = fpext float %54 to double
  %55 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %56 = load float* %55, align 4, !tbaa !3
  %conv57 = fpext float %56 to double
  %57 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4
  %58 = load float* %57, align 4, !tbaa !3
  %conv59 = fpext float %58 to double
  %mult = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %59 = bitcast float* %mult to i32*
  %60 = load i32* %59, align 4, !tbaa !0
  %call61 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([59 x i8]* @.str129, i64 0, i64 0), double %conv53, double %conv55, double %conv57, double %conv59, i32 %60) #4
  br label %sw.epilog

sw.bb62:                                          ; preds = %entry
  %label = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5
  %61 = bitcast float* %label to i32*
  %62 = load i32* %61, align 4, !tbaa !0
  %type = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4
  %63 = bitcast float* %type to i32*
  %64 = load i32* %63, align 4, !tbaa !0
  %low = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %65 = load float* %low, align 4, !tbaa !3
  %conv65 = fpext float %65 to double
  %66 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %67 = load float* %66, align 4, !tbaa !3
  %conv67 = fpext float %67 to double
  %68 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %69 = load float* %68, align 4, !tbaa !3
  %conv69 = fpext float %69 to double
  %70 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %71 = load float* %70, align 4, !tbaa !3
  %conv71 = fpext float %71 to double
  %call72 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([70 x i8]* @.str130, i64 0, i64 0), i32 %62, i32 %64, double %conv65, double %conv67, double %conv69, double %conv71) #4
  br label %sw.epilog

sw.bb73:                                          ; preds = %entry
  %ex = bitcast %union.t_iparams* %iparams to i32*
  %72 = load i32* %ex, align 4, !tbaa !0
  %label75 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %73 = bitcast float* %label75 to i32*
  %74 = load i32* %73, align 4, !tbaa !0
  %pow = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %75 = bitcast float* %pow to i32*
  %76 = load i32* %75, align 4, !tbaa !0
  %77 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %78 = load float* %77, align 4, !tbaa !3
  %conv79 = fpext float %78 to double
  %79 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4
  %80 = load float* %79, align 4, !tbaa !3
  %conv81 = fpext float %80 to double
  %81 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5
  %82 = load float* %81, align 4, !tbaa !3
  %conv84 = fpext float %82 to double
  %call85 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([63 x i8]* @.str131, i64 0, i64 0), i32 %72, i32 %74, i32 %76, double %conv79, double %conv81, double %conv84) #4
  br label %sw.epilog

sw.bb86:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %83 = load float* %arrayidx, align 4, !tbaa !3
  %conv87 = fpext float %83 to double
  %84 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %85 = load float* %84, align 4, !tbaa !3
  %conv91 = fpext float %85 to double
  %86 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %87 = load float* %86, align 4, !tbaa !3
  %conv95 = fpext float %87 to double
  %fc = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %88 = load float* %fc, align 4, !tbaa !3
  %conv98 = fpext float %88 to double
  %arrayidx101 = getelementptr inbounds float* %fc, i64 1
  %89 = load float* %arrayidx101, align 4, !tbaa !3
  %conv102 = fpext float %89 to double
  %arrayidx105 = getelementptr inbounds float* %fc, i64 2
  %90 = load float* %arrayidx105, align 4, !tbaa !3
  %conv106 = fpext float %90 to double
  %call107 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([56 x i8]* @.str132, i64 0, i64 0), double %conv87, double %conv91, double %conv95, double %conv98, double %conv102, double %conv106) #4
  br label %sw.epilog

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.body ]
  %91 = trunc i64 %indvars.iv to i32
  %cmp110 = icmp eq i32 %91, 0
  %cond = select i1 %cmp110, i8* getelementptr inbounds ([1 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0)
  %arrayidx112 = getelementptr inbounds [6 x float]* %rbc, i64 0, i64 %indvars.iv
  %92 = load float* %arrayidx112, align 4, !tbaa !3
  %conv113 = fpext float %92 to double
  %call114 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str133, i64 0, i64 0), i8* %cond, i32 %91, double %conv113) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 6
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  br label %sw.epilog

sw.bb116:                                         ; preds = %entry, %entry
  %dA = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %93 = load float* %dA, align 4, !tbaa !3
  %conv117 = fpext float %93 to double
  %94 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %95 = load float* %94, align 4, !tbaa !3
  %conv119 = fpext float %95 to double
  %call120 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str135, i64 0, i64 0), double %conv117, double %conv119) #4
  br label %sw.epilog

sw.bb121:                                         ; preds = %entry
  %doh = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %96 = load float* %doh, align 4, !tbaa !3
  %conv122 = fpext float %96 to double
  %97 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %98 = load float* %97, align 4, !tbaa !3
  %conv124 = fpext float %98 to double
  %call125 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str136, i64 0, i64 0), double %conv122, double %conv124) #4
  br label %sw.epilog

sw.bb126:                                         ; preds = %entry
  %a127 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %99 = load float* %a127, align 4, !tbaa !3
  %conv128 = fpext float %99 to double
  %call129 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str137, i64 0, i64 0), double %conv128) #4
  br label %sw.epilog

sw.bb130:                                         ; preds = %entry, %entry, %entry
  %a132 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %100 = load float* %a132, align 4, !tbaa !3
  %conv133 = fpext float %100 to double
  %101 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %102 = load float* %101, align 4, !tbaa !3
  %conv136 = fpext float %102 to double
  %call137 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str138, i64 0, i64 0), double %conv133, double %conv136) #4
  br label %sw.epilog

sw.bb138:                                         ; preds = %entry, %entry
  %a140 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %103 = load float* %a140, align 4, !tbaa !3
  %conv141 = fpext float %103 to double
  %104 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %105 = load float* %104, align 4, !tbaa !3
  %conv144 = fpext float %105 to double
  %106 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %107 = load float* %106, align 4, !tbaa !3
  %conv147 = fpext float %107 to double
  %call148 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([30 x i8]* @.str119, i64 0, i64 0), double %conv141, double %conv144, double %conv147) #4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %idxprom149 = sext i32 %ftype to i64
  %name = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %idxprom149, i32 0
  %108 = load i8** %name, align 8, !tbaa !5
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([44 x i8]* @.str139, i64 0, i64 0), i32 %ftype, i8* %108, i8* getelementptr inbounds ([55 x i8]* @.str140, i64 0, i64 0), i32 510) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb138, %sw.bb130, %sw.bb126, %sw.bb121, %sw.bb116, %for.end, %sw.bb86, %sw.bb73, %sw.bb62, %sw.bb52, %sw.bb43, %sw.bb38, %sw.bb25, %sw.bb23, %sw.bb15, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @pr_idef(%struct._IO_FILE* %fp, i32 %indent, i8* %title, %struct.t_idef* %idef) #0 {
entry:
  %tobool.i = icmp eq %struct.t_idef* %idef, null
  br i1 %tobool.i, label %if.then.i, label %if.then

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* %title) #4
  br label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @pr_title(%struct._IO_FILE* %fp, i32 %indent, i8* %title) #5
  %cmp3.i = icmp sgt i32 %call1, 0
  br i1 %cmp3.i, label %for.body.i, label %pr_indent.exit69.thread

for.body.i:                                       ; preds = %if.then, %for.body.i
  %i.04.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %if.then ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i = add nsw i32 %i.04.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %call1
  br i1 %exitcond.i, label %for.body.i68.preheader, label %for.body.i

for.body.i68.preheader:                           ; preds = %for.body.i
  %atnr = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 2
  %0 = load i32* %atnr, align 4, !tbaa !0
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str141, i64 0, i64 0), i32 %0) #4
  br label %for.body.i68

for.body.i68:                                     ; preds = %for.body.i68.preheader, %for.body.i68
  %i.04.i64 = phi i32 [ %inc.i66, %for.body.i68 ], [ 0, %for.body.i68.preheader ]
  %fputc.i65 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i66 = add nsw i32 %i.04.i64, 1
  %exitcond.i67 = icmp eq i32 %inc.i66, %call1
  br i1 %exitcond.i67, label %for.body.i75.preheader, label %for.body.i68

pr_indent.exit69.thread:                          ; preds = %if.then
  %atnr87 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 2
  %1 = load i32* %atnr87, align 4, !tbaa !0
  %call388 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str141, i64 0, i64 0), i32 %1) #4
  %nodeid89 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 1
  %2 = load i32* %nodeid89, align 4, !tbaa !0
  %call590 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str142, i64 0, i64 0), i32 %2) #4
  br label %pr_indent.exit76

for.body.i75.preheader:                           ; preds = %for.body.i68
  %nodeid = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 1
  %3 = load i32* %nodeid, align 4, !tbaa !0
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str142, i64 0, i64 0), i32 %3) #4
  br label %for.body.i75

for.body.i75:                                     ; preds = %for.body.i75.preheader, %for.body.i75
  %i.04.i71 = phi i32 [ %inc.i73, %for.body.i75 ], [ 0, %for.body.i75.preheader ]
  %fputc.i72 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i73 = add nsw i32 %i.04.i71, 1
  %exitcond.i74 = icmp eq i32 %inc.i73, %call1
  br i1 %exitcond.i74, label %pr_indent.exit76, label %for.body.i75

pr_indent.exit76:                                 ; preds = %for.body.i75, %pr_indent.exit69.thread
  %ntypes = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 0
  %4 = load i32* %ntypes, align 4, !tbaa !0
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str143, i64 0, i64 0), i32 %4) #4
  %5 = load i32* %ntypes, align 4, !tbaa !0
  %cmp92 = icmp sgt i32 %5, 0
  br i1 %cmp92, label %for.body.lr.ph, label %pr_indent.exit76.for.cond19.preheader_crit_edge

pr_indent.exit76.for.cond19.preheader_crit_edge:  ; preds = %pr_indent.exit76
  %functype.i.pre = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 3
  br label %for.cond19.preheader

for.body.lr.ph:                                   ; preds = %pr_indent.exit76
  %add = add nsw i32 %call1, 3
  %cmp3.i77 = icmp sgt i32 %add, 0
  %functype = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 3
  %iparams = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4
  br label %for.body

for.cond19.preheader:                             ; preds = %pr_indent.exit83, %pr_indent.exit76.for.cond19.preheader_crit_edge
  %functype.i.pre-phi = phi i32** [ %functype.i.pre, %pr_indent.exit76.for.cond19.preheader_crit_edge ], [ %functype, %pr_indent.exit83 ]
  br label %for.body21

for.body:                                         ; preds = %for.body.lr.ph, %pr_indent.exit83
  %indvars.iv94 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next95, %pr_indent.exit83 ]
  br i1 %cmp3.i77, label %for.body.i82, label %pr_indent.exit83

for.body.i82:                                     ; preds = %for.body, %for.body.i82
  %i.04.i78 = phi i32 [ %inc.i80, %for.body.i82 ], [ 0, %for.body ]
  %fputc.i79 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i80 = add nsw i32 %i.04.i78, 1
  %exitcond.i81 = icmp eq i32 %inc.i80, %add
  br i1 %exitcond.i81, label %pr_indent.exit83, label %for.body.i82

pr_indent.exit83:                                 ; preds = %for.body.i82, %for.body
  %6 = load i32* @bShowNumbers, align 4, !tbaa !0
  %tobool10 = icmp ne i32 %6, 0
  %7 = trunc i64 %indvars.iv94 to i32
  %cond = select i1 %tobool10, i32 %7, i32 -1
  %8 = load i32** %functype, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i32* %8, i64 %indvars.iv94
  %9 = load i32* %arrayidx, align 4, !tbaa !0
  %idxprom11 = sext i32 %9 to i64
  %name = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %idxprom11, i32 0
  %10 = load i8** %name, align 8, !tbaa !5
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str144, i64 0, i64 0), i32 %cond, i8* %10) #4
  %11 = load i32** %functype, align 8, !tbaa !5
  %arrayidx16 = getelementptr inbounds i32* %11, i64 %indvars.iv94
  %12 = load i32* %arrayidx16, align 4, !tbaa !0
  %13 = load %union.t_iparams** %iparams, align 8, !tbaa !5
  %arrayidx18 = getelementptr inbounds %union.t_iparams* %13, i64 %indvars.iv94
  tail call void @pr_iparams(%struct._IO_FILE* %fp, i32 %12, %union.t_iparams* %arrayidx18) #5
  %indvars.iv.next95 = add i64 %indvars.iv94, 1
  %14 = load i32* %ntypes, align 4, !tbaa !0
  %15 = trunc i64 %indvars.iv.next95 to i32
  %cmp = icmp slt i32 %15, %14
  br i1 %cmp, label %for.body, label %for.cond19.preheader

for.body21:                                       ; preds = %pr_ilist.exit, %for.cond19.preheader
  %indvars.iv = phi i64 [ 0, %for.cond19.preheader ], [ %indvars.iv.next, %pr_ilist.exit ]
  %longname = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv, i32 1
  %16 = load i8** %longname, align 8, !tbaa !5
  %call1.i = tail call i32 @pr_title(%struct._IO_FILE* %fp, i32 %call1, i8* %16) #4
  %cmp3.i.i = icmp sgt i32 %call1.i, 0
  br i1 %cmp3.i.i, label %for.body.i.i, label %pr_indent.exit.i

for.body.i.i:                                     ; preds = %for.body21, %for.body.i.i
  %i.04.i.i = phi i32 [ %inc.i.i, %for.body.i.i ], [ 0, %for.body21 ]
  %fputc.i.i = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i.i = add nsw i32 %i.04.i.i, 1
  %exitcond.i.i = icmp eq i32 %inc.i.i, %call1.i
  br i1 %exitcond.i.i, label %pr_indent.exit.i, label %for.body.i.i

pr_indent.exit.i:                                 ; preds = %for.body.i.i, %for.body21
  %nr.i = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv, i32 0
  %17 = load i32* %nr.i, align 4, !tbaa !0
  %call3.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str185, i64 0, i64 0), i32 %17) #4
  %18 = load i32* %nr.i, align 4, !tbaa !0
  %cmp.i = icmp sgt i32 %18, 0
  br i1 %cmp.i, label %if.then5.i, label %pr_ilist.exit

if.then5.i:                                       ; preds = %pr_indent.exit.i
  br i1 %cmp3.i.i, label %for.body.i94.i, label %pr_indent.exit95.i

for.body.i94.i:                                   ; preds = %if.then5.i, %for.body.i94.i
  %i.04.i90.i = phi i32 [ %inc.i92.i, %for.body.i94.i ], [ 0, %if.then5.i ]
  %fputc.i91.i = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i92.i = add nsw i32 %i.04.i90.i, 1
  %exitcond.i93.i = icmp eq i32 %inc.i92.i, %call1.i
  br i1 %exitcond.i93.i, label %pr_indent.exit95.i, label %for.body.i94.i

pr_indent.exit95.i:                               ; preds = %for.body.i94.i, %if.then5.i
  %19 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str182, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %fp) #3
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body.i85, %pr_indent.exit95.i
  %indvars.iv.i = phi i64 [ 0, %pr_indent.exit95.i ], [ %indvars.iv.next.i, %for.body.i85 ]
  %arrayidx.i = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv, i32 1, i64 %indvars.iv.i
  %20 = load i32* %arrayidx.i, align 4, !tbaa !0
  %cmp9.i = icmp sgt i32 %20, 0
  br i1 %cmp9.i, label %for.body.i85, label %for.end.i

for.body.i85:                                     ; preds = %land.rhs.i
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str27, i64 0, i64 0), i32 %20) #4
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %21 = trunc i64 %indvars.iv.next.i to i32
  %cmp8.i = icmp slt i32 %21, 256
  br i1 %cmp8.i, label %land.rhs.i, label %for.end.i

for.end.i:                                        ; preds = %for.body.i85, %land.rhs.i
  %fputc.i86 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp) #3
  br i1 %cmp3.i.i, label %for.body.i101.i, label %pr_indent.exit102.i

for.body.i101.i:                                  ; preds = %for.end.i, %for.body.i101.i
  %i.04.i97.i = phi i32 [ %inc.i99.i, %for.body.i101.i ], [ 0, %for.end.i ]
  %fputc.i98.i = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i99.i = add nsw i32 %i.04.i97.i, 1
  %exitcond.i100.i = icmp eq i32 %inc.i99.i, %call1.i
  br i1 %exitcond.i100.i, label %pr_indent.exit102.i, label %for.body.i101.i

pr_indent.exit102.i:                              ; preds = %for.body.i101.i, %for.end.i
  %22 = tail call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str186, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %fp) #3
  %23 = load i32* %nr.i, align 4, !tbaa !0
  %cmp20115.i = icmp sgt i32 %23, 0
  br i1 %cmp20115.i, label %for.body21.lr.ph.i, label %pr_ilist.exit

for.body21.lr.ph.i:                               ; preds = %pr_indent.exit102.i
  %iatoms17.i = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv, i32 2
  %24 = load i32** %iatoms17.i, align 8, !tbaa !5
  %add.i = add nsw i32 %call1.i, 3
  %cmp3.i103.i = icmp sgt i32 %add.i, 0
  br label %for.body21.i

for.body21.i:                                     ; preds = %for.end44.i, %for.body21.lr.ph.i
  %iatoms.0118.i = phi i32* [ %24, %for.body21.lr.ph.i ], [ %iatoms.1.lcssa.i, %for.end44.i ]
  %i.1117.i = phi i32 [ 0, %for.body21.lr.ph.i ], [ %add50.i, %for.end44.i ]
  %j.0116.i = phi i32 [ 0, %for.body21.lr.ph.i ], [ %inc34.i, %for.end44.i ]
  br i1 %cmp3.i103.i, label %for.body.i108.i, label %pr_indent.exit109.i

for.body.i108.i:                                  ; preds = %for.body21.i, %for.body.i108.i
  %i.04.i104.i = phi i32 [ %inc.i106.i, %for.body.i108.i ], [ 0, %for.body21.i ]
  %fputc.i105.i = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i106.i = add nsw i32 %i.04.i104.i, 1
  %exitcond.i107.i = icmp eq i32 %inc.i106.i, %add.i
  br i1 %exitcond.i107.i, label %pr_indent.exit109.i, label %for.body.i108.i

pr_indent.exit109.i:                              ; preds = %for.body.i108.i, %for.body21.i
  %25 = load i32* %iatoms.0118.i, align 4, !tbaa !0
  %idxprom23.i = sext i32 %25 to i64
  %26 = load i32** %functype.i.pre-phi, align 8, !tbaa !5
  %arrayidx24.i = getelementptr inbounds i32* %26, i64 %idxprom23.i
  %27 = load i32* %arrayidx24.i, align 4, !tbaa !0
  %28 = load i32* @bShowNumbers, align 4, !tbaa !0
  %tobool25.i = icmp ne i32 %28, 0
  %cond.i = select i1 %tobool25.i, i32 %j.0116.i, i32 -1
  %cond30.i = select i1 %tobool25.i, i32 %25, i32 -1
  %idxprom31.i = sext i32 %27 to i64
  %name.i = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %idxprom31.i, i32 0
  %29 = load i8** %name.i, align 8, !tbaa !5
  %call33.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str187, i64 0, i64 0), i32 %cond.i, i32 %cond30.i, i8* %29) #4
  %inc34.i = add nsw i32 %j.0116.i, 1
  %iatoms.1110.i = getelementptr inbounds i32* %iatoms.0118.i, i64 1
  %nratoms.i = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %idxprom31.i, i32 2
  %30 = load i32* %nratoms.i, align 8, !tbaa !0
  %cmp38111.i = icmp sgt i32 %30, 0
  br i1 %cmp38111.i, label %for.body39.i, label %for.end44.i

for.body39.i:                                     ; preds = %pr_indent.exit109.i, %for.body39.i
  %iatoms.1113.i = phi i32* [ %iatoms.1.i, %for.body39.i ], [ %iatoms.1110.i, %pr_indent.exit109.i ]
  %k.0112.i = phi i32 [ %inc43.i, %for.body39.i ], [ 0, %pr_indent.exit109.i ]
  %31 = load i32* %iatoms.1113.i, align 4, !tbaa !0
  %call41.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str188, i64 0, i64 0), i32 %31) #4
  %inc43.i = add nsw i32 %k.0112.i, 1
  %iatoms.1.i = getelementptr inbounds i32* %iatoms.1113.i, i64 1
  %32 = load i32* %nratoms.i, align 8, !tbaa !0
  %cmp38.i = icmp slt i32 %inc43.i, %32
  br i1 %cmp38.i, label %for.body39.i, label %for.end44.i

for.end44.i:                                      ; preds = %for.body39.i, %pr_indent.exit109.i
  %iatoms.1.lcssa.i = phi i32* [ %iatoms.1110.i, %pr_indent.exit109.i ], [ %iatoms.1.i, %for.body39.i ]
  %fputc88.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp) #3
  %33 = load i32* %nratoms.i, align 8, !tbaa !0
  %add49.i = add i32 %i.1117.i, 1
  %add50.i = add i32 %add49.i, %33
  %34 = load i32* %nr.i, align 4, !tbaa !0
  %cmp20.i = icmp slt i32 %add50.i, %34
  br i1 %cmp20.i, label %for.body21.i, label %pr_ilist.exit

pr_ilist.exit:                                    ; preds = %for.end44.i, %pr_indent.exit.i, %pr_indent.exit102.i
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 44
  br i1 %exitcond, label %if.end, label %for.body21

if.end:                                           ; preds = %pr_ilist.exit, %if.then.i
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @pr_block(%struct._IO_FILE* nocapture %fp, i32 %indent, i8* %title, %struct.t_block* %block) #0 {
entry:
  %tobool.i = icmp eq %struct.t_block* %block, null
  br i1 %tobool.i, label %if.then.i, label %if.then

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* %title) #4
  br label %if.end64

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @pr_block_title(%struct._IO_FILE* %fp, i32 %indent, i8* %title, %struct.t_block* %block) #5
  %index = getelementptr inbounds %struct.t_block* %block, i64 0, i32 2
  %0 = load i32** %index, align 8, !tbaa !5
  %1 = load i32* %0, align 4, !tbaa !0
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %for.cond.preheader, label %if.end56.thread

for.cond.preheader:                               ; preds = %if.then
  %nr = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1
  %2 = load i32* %nr, align 4, !tbaa !0
  %cmp6137 = icmp sgt i32 %2, 0
  br i1 %cmp6137, label %for.body.lr.ph, label %if.end56

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cmp3.i = icmp sgt i32 %call1, 0
  %add45 = add nsw i32 %call1, 3
  %cmp3.i112 = icmp sgt i32 %add45, 0
  %a = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4
  br label %for.body

if.end56.thread:                                  ; preds = %if.then
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([30 x i8]* @.str145, i64 0, i64 0), i32 0) #4
  %nra128 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3
  br label %if.then60

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %3 = phi i32* [ %0, %for.body.lr.ph ], [ %.pre, %for.end.for.body_crit_edge ]
  %indvars.iv140 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next141, %for.end.for.body_crit_edge ]
  %start.0139 = phi i32 [ 0, %for.body.lr.ph ], [ %4, %for.end.for.body_crit_edge ]
  %indvars.iv.next141 = add i64 %indvars.iv140, 1
  %arrayidx10 = getelementptr inbounds i32* %3, i64 %indvars.iv.next141
  %4 = load i32* %arrayidx10, align 4, !tbaa !0
  br i1 %cmp3.i, label %for.body.i, label %pr_indent.exit

for.body.i:                                       ; preds = %for.body, %for.body.i
  %i.04.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %for.body ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i = add nsw i32 %i.04.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %call1
  br i1 %exitcond.i, label %pr_indent.exit, label %for.body.i

pr_indent.exit:                                   ; preds = %for.body.i, %for.body
  %cmp12 = icmp sgt i32 %4, %start.0139
  br i1 %cmp12, label %for.body34.lr.ph, label %if.end.thread143

if.end.thread143:                                 ; preds = %pr_indent.exit
  %5 = trunc i64 %indvars.iv140 to i32
  %call15144 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* %title, i32 %5) #4
  br label %for.end

for.body34.lr.ph:                                 ; preds = %pr_indent.exit
  %6 = load i32* @bShowNumbers, align 4, !tbaa !0
  %tobool18 = icmp ne i32 %6, 0
  %7 = trunc i64 %indvars.iv140 to i32
  %cond = select i1 %tobool18, i32 %7, i32 -1
  %cond23 = select i1 %tobool18, i32 %start.0139, i32 -1
  %sub = add nsw i32 %4, -1
  %sub. = select i1 %tobool18, i32 %sub, i32 -1
  %call29 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str146, i64 0, i64 0), i8* %title, i32 %cond, i32 %cond23, i32 %sub.) #4
  %size.0 = add nsw i32 %call29, %call1
  %8 = sext i32 %start.0139 to i64
  br label %for.body34

for.body34:                                       ; preds = %for.body34.lr.ph, %if.end47
  %indvars.iv = phi i64 [ %8, %for.body34.lr.ph ], [ %indvars.iv.next, %if.end47 ]
  %size.1136 = phi i32 [ %size.0, %for.body34.lr.ph ], [ %add51, %if.end47 ]
  %9 = trunc i64 %indvars.iv to i32
  %cmp35 = icmp sgt i32 %9, %start.0139
  br i1 %cmp35, label %if.then37, label %if.end40

if.then37:                                        ; preds = %for.body34
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0)) #4
  %add39 = add nsw i32 %call38, %size.1136
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %for.body34
  %size.2 = phi i32 [ %add39, %if.then37 ], [ %size.1136, %for.body34 ]
  %cmp41 = icmp sgt i32 %size.2, 70
  br i1 %cmp41, label %if.then43, label %if.end47

if.then43:                                        ; preds = %if.end40
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  br i1 %cmp3.i112, label %for.body.i117, label %if.end47

for.body.i117:                                    ; preds = %if.then43, %for.body.i117
  %i.04.i113 = phi i32 [ %inc.i115, %for.body.i117 ], [ 0, %if.then43 ]
  %fputc.i114 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i115 = add nsw i32 %i.04.i113, 1
  %exitcond.i116 = icmp eq i32 %inc.i115, %add45
  br i1 %exitcond.i116, label %if.end47, label %for.body.i117

if.end47:                                         ; preds = %for.body.i117, %if.then43, %if.end40
  %size.3 = phi i32 [ %size.2, %if.end40 ], [ %add45, %if.then43 ], [ %add45, %for.body.i117 ]
  %10 = load i32** %a, align 8, !tbaa !5
  %arrayidx49 = getelementptr inbounds i32* %10, i64 %indvars.iv
  %11 = load i32* %arrayidx49, align 4, !tbaa !0
  %call50 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([3 x i8]* @.str147, i64 0, i64 0), i32 %11) #4
  %add51 = add nsw i32 %call50, %size.3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %12 = trunc i64 %indvars.iv.next to i32
  %cmp32 = icmp slt i32 %12, %4
  br i1 %cmp32, label %for.body34, label %for.end

for.end:                                          ; preds = %if.end47, %if.end.thread143
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  %14 = load i32* %nr, align 4, !tbaa !0
  %15 = trunc i64 %indvars.iv.next141 to i32
  %cmp6 = icmp slt i32 %15, %14
  br i1 %cmp6, label %for.end.for.body_crit_edge, label %if.end56

for.end.for.body_crit_edge:                       ; preds = %for.end
  %.pre = load i32** %index, align 8, !tbaa !5
  br label %for.body

if.end56:                                         ; preds = %for.end, %for.cond.preheader
  %start.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %4, %for.end ]
  %nra = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3
  %16 = load i32* %nra, align 4, !tbaa !0
  %cmp57.not = icmp eq i32 %start.0.lcssa, %16
  br i1 %cmp57.not, label %if.end64, label %if.then60

if.then60:                                        ; preds = %if.end56, %if.end56.thread
  %nra133 = phi i32* [ %nra128, %if.end56.thread ], [ %nra, %if.end56 ]
  %cmp3.i119 = icmp sgt i32 %call1, 0
  br i1 %cmp3.i119, label %for.body.i124, label %if.then.i126

for.body.i124:                                    ; preds = %if.then60, %for.body.i124
  %i.04.i120 = phi i32 [ %inc.i122, %for.body.i124 ], [ 0, %if.then60 ]
  %fputc.i121 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i122 = add nsw i32 %i.04.i120, 1
  %exitcond.i123 = icmp eq i32 %inc.i122, %call1
  br i1 %exitcond.i123, label %if.then.i126, label %for.body.i124

if.then.i126:                                     ; preds = %if.then60, %for.body.i124
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([47 x i8]* @.str148, i64 0, i64 0), i64 46, i64 1, %struct._IO_FILE* %fp)
  %call1.i = tail call fastcc i32 @pr_block_title(%struct._IO_FILE* %fp, i32 %call1, i8* %title, %struct.t_block* %block) #4
  %nr.i = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1
  %18 = load i32* %nr.i, align 4, !tbaa !0
  %cmp52.i = icmp slt i32 %18, 0
  br i1 %cmp52.i, label %for.cond5.preheader.i, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.then.i126
  %add.i = add nsw i32 %call1.i, 3
  %cmp3.i.i = icmp sgt i32 %add.i, 0
  br label %for.body.i127

for.cond5.preheader.i:                            ; preds = %pr_indent.exit.i, %if.then.i126
  %19 = load i32* %nra133, align 4, !tbaa !0
  %cmp650.i = icmp sgt i32 %19, 0
  br i1 %cmp650.i, label %for.body7.lr.ph.i, label %if.end64

for.body7.lr.ph.i:                                ; preds = %for.cond5.preheader.i
  %add8.i = add nsw i32 %call1.i, 3
  %cmp3.i43.i = icmp sgt i32 %add8.i, 0
  %a.i = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4
  br label %for.body7.i

for.body.i127:                                    ; preds = %pr_indent.exit.i, %for.body.lr.ph.i
  %indvars.iv54.i = phi i64 [ %indvars.iv.next55.i, %pr_indent.exit.i ], [ 0, %for.body.lr.ph.i ]
  br i1 %cmp3.i.i, label %for.body.i.i, label %pr_indent.exit.i

for.body.i.i:                                     ; preds = %for.body.i127, %for.body.i.i
  %i.04.i.i = phi i32 [ %inc.i.i, %for.body.i.i ], [ 0, %for.body.i127 ]
  %fputc.i.i = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i.i = add nsw i32 %i.04.i.i, 1
  %exitcond.i.i = icmp eq i32 %inc.i.i, %add.i
  br i1 %exitcond.i.i, label %pr_indent.exit.i, label %for.body.i.i

pr_indent.exit.i:                                 ; preds = %for.body.i.i, %for.body.i127
  %20 = load i32* @bShowNumbers, align 4, !tbaa !0
  %tobool3.i = icmp ne i32 %20, 0
  %21 = trunc i64 %indvars.iv54.i to i32
  %cond.i = select i1 %tobool3.i, i32 %21, i32 -1
  %22 = load i32** %index, align 8, !tbaa !5
  %arrayidx.i = getelementptr inbounds i32* %22, i64 %indvars.iv54.i
  %23 = load i32* %arrayidx.i, align 4, !tbaa !0
  %call4.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str180, i64 0, i64 0), i8* %title, i32 %cond.i, i32 %23) #4
  %indvars.iv.next55.i = add i64 %indvars.iv54.i, 1
  %24 = load i32* %nr.i, align 4, !tbaa !0
  %cmp.i = icmp slt i32 %21, %24
  br i1 %cmp.i, label %for.body.i127, label %for.cond5.preheader.i

for.body7.i:                                      ; preds = %pr_indent.exit49.i, %for.body7.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body7.lr.ph.i ], [ %indvars.iv.next.i, %pr_indent.exit49.i ]
  br i1 %cmp3.i43.i, label %for.body.i48.i, label %pr_indent.exit49.i

for.body.i48.i:                                   ; preds = %for.body7.i, %for.body.i48.i
  %i.04.i44.i = phi i32 [ %inc.i46.i, %for.body.i48.i ], [ 0, %for.body7.i ]
  %fputc.i45.i = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i46.i = add nsw i32 %i.04.i44.i, 1
  %exitcond.i47.i = icmp eq i32 %inc.i46.i, %add8.i
  br i1 %exitcond.i47.i, label %pr_indent.exit49.i, label %for.body.i48.i

pr_indent.exit49.i:                               ; preds = %for.body.i48.i, %for.body7.i
  %25 = load i32* @bShowNumbers, align 4, !tbaa !0
  %tobool10.i = icmp ne i32 %25, 0
  %26 = trunc i64 %indvars.iv.i to i32
  %cond14.i = select i1 %tobool10.i, i32 %26, i32 -1
  %27 = load i32** %a.i, align 8, !tbaa !5
  %arrayidx16.i = getelementptr inbounds i32* %27, i64 %indvars.iv.i
  %28 = load i32* %arrayidx16.i, align 4, !tbaa !0
  %call17.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([14 x i8]* @.str181, i64 0, i64 0), i8* %title, i32 %cond14.i, i32 %28) #4
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %29 = load i32* %nra133, align 4, !tbaa !0
  %30 = trunc i64 %indvars.iv.next.i to i32
  %cmp6.i = icmp slt i32 %30, %29
  br i1 %cmp6.i, label %for.body7.i, label %if.end64

if.end64:                                         ; preds = %pr_indent.exit49.i, %if.end56, %if.then.i, %for.cond5.preheader.i
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @pr_block_title(%struct._IO_FILE* nocapture %fp, i32 %indent, i8* %title, %struct.t_block* %block) #0 {
entry:
  %tobool.i = icmp eq %struct.t_block* %block, null
  br i1 %tobool.i, label %if.then.i, label %if.then

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* %title) #4
  br label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @pr_title(%struct._IO_FILE* %fp, i32 %indent, i8* %title) #5
  %cmp3.i = icmp sgt i32 %call1, 0
  br i1 %cmp3.i, label %for.body.i, label %pr_indent.exit

for.body.i:                                       ; preds = %if.then, %for.body.i
  %i.04.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %if.then ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i = add nsw i32 %i.04.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %call1
  br i1 %exitcond.i, label %pr_indent.exit, label %for.body.i

pr_indent.exit:                                   ; preds = %for.body.i, %if.then
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str182, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %fp)
  br label %for.body

for.body:                                         ; preds = %for.body, %pr_indent.exit
  %indvars.iv = phi i64 [ 0, %pr_indent.exit ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds %struct.t_block* %block, i64 0, i32 0, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !0
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str27, i64 0, i64 0), i32 %1) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 256
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  br i1 %cmp3.i, label %for.body.i33, label %pr_indent.exit34.thread

pr_indent.exit34.thread:                          ; preds = %for.end
  %nr42 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1
  %2 = load i32* %nr42, align 4, !tbaa !0
  %call743 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str183, i64 0, i64 0), i32 %2) #4
  br label %pr_indent.exit41

for.body.i33:                                     ; preds = %for.end, %for.body.i33
  %i.04.i29 = phi i32 [ %inc.i31, %for.body.i33 ], [ 0, %for.end ]
  %fputc.i30 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i31 = add nsw i32 %i.04.i29, 1
  %exitcond.i32 = icmp eq i32 %inc.i31, %call1
  br i1 %exitcond.i32, label %for.body.i40.preheader, label %for.body.i33

for.body.i40.preheader:                           ; preds = %for.body.i33
  %nr = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1
  %3 = load i32* %nr, align 4, !tbaa !0
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str183, i64 0, i64 0), i32 %3) #4
  br label %for.body.i40

for.body.i40:                                     ; preds = %for.body.i40.preheader, %for.body.i40
  %i.04.i36 = phi i32 [ %inc.i38, %for.body.i40 ], [ 0, %for.body.i40.preheader ]
  %fputc.i37 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i38 = add nsw i32 %i.04.i36, 1
  %exitcond.i39 = icmp eq i32 %inc.i38, %call1
  br i1 %exitcond.i39, label %pr_indent.exit41, label %for.body.i40

pr_indent.exit41:                                 ; preds = %for.body.i40, %pr_indent.exit34.thread
  %nra = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3
  %4 = load i32* %nra, align 4, !tbaa !0
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str184, i64 0, i64 0), i32 %4) #4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %pr_indent.exit41
  %indent.addr.0 = phi i32 [ %call1, %pr_indent.exit41 ], [ %indent, %if.then.i ]
  ret i32 %indent.addr.0
}

; Function Attrs: nounwind optsize uwtable
define void @pr_top(%struct._IO_FILE* %fp, i32 %indent, i8* %title, %struct.t_topology* %top) #0 {
entry:
  %s.i = alloca [4096 x i8], align 16
  %tobool.i = icmp eq %struct.t_topology* %top, null
  br i1 %tobool.i, label %if.then.i, label %if.then

if.then.i:                                        ; preds = %entry
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* %title) #4
  br label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @pr_title(%struct._IO_FILE* %fp, i32 %indent, i8* %title) #5
  %cmp3.i = icmp sgt i32 %call1, 0
  br i1 %cmp3.i, label %for.body.i, label %pr_indent.exit

for.body.i:                                       ; preds = %if.then, %for.body.i
  %i.04.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %if.then ]
  %fputc.i = call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i = add nsw i32 %i.04.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %call1
  br i1 %exitcond.i, label %pr_indent.exit, label %for.body.i

pr_indent.exit:                                   ; preds = %for.body.i, %if.then
  %name = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0
  %0 = load i8*** %name, align 8, !tbaa !5
  %1 = load i8** %0, align 8, !tbaa !5
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str149, i64 0, i64 0), i8* %1) #4
  %call1.i = call i32 @pr_title(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([6 x i8]* @.str150, i64 0, i64 0)) #4
  %atom.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1
  %2 = load %struct.t_atom** %atom.i, align 8, !tbaa !5
  %nr.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 0
  %3 = load i32* %nr.i, align 4, !tbaa !0
  %tobool.i.i.i = icmp eq %struct.t_atom* %2, null
  br i1 %tobool.i.i.i, label %if.then.i.i.i, label %if.then.i1.i

if.then.i.i.i:                                    ; preds = %pr_indent.exit
  %call.i.i.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str167, i64 0, i64 0)) #4
  br label %pr_atom.exit.i

if.then.i1.i:                                     ; preds = %pr_indent.exit
  %call1.i.i = call i32 @pr_title_n(%struct._IO_FILE* %fp, i32 %call1.i, i8* getelementptr inbounds ([5 x i8]* @.str167, i64 0, i64 0), i32 %3) #4
  %cmp2.i.i = icmp sgt i32 %3, 0
  br i1 %cmp2.i.i, label %for.body.lr.ph.i.i, label %pr_atom.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i1.i
  %cmp3.i.i.i = icmp sgt i32 %call1.i.i, 0
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.end.i.i, %for.body.lr.ph.i.i
  %indvars.iv4.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next5.i.i, %for.end.i.i ]
  br i1 %cmp3.i.i.i, label %for.body.i.i.i, label %pr_indent.exit.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i, %for.body.i.i.i
  %i.04.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i ], [ 0, %for.body.i.i ]
  %fputc.i.i.i = call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i.i.i = add nsw i32 %i.04.i.i.i, 1
  %exitcond.i.i.i = icmp eq i32 %inc.i.i.i, %call1.i.i
  br i1 %exitcond.i.i.i, label %pr_indent.exit.i.i, label %for.body.i.i.i

pr_indent.exit.i.i:                               ; preds = %for.body.i.i.i, %for.body.i.i
  %type.i.i = getelementptr inbounds %struct.t_atom* %2, i64 %indvars.iv4.i.i, i32 4
  %4 = load i16* %type.i.i, align 2, !tbaa !6
  %conv.i2.i = zext i16 %4 to i32
  %typeB.i.i = getelementptr inbounds %struct.t_atom* %2, i64 %indvars.iv4.i.i, i32 5
  %5 = load i16* %typeB.i.i, align 2, !tbaa !6
  %conv5.i.i = zext i16 %5 to i32
  %ptype.i.i = getelementptr inbounds %struct.t_atom* %2, i64 %indvars.iv4.i.i, i32 6
  %6 = load i32* %ptype.i.i, align 4, !tbaa !0
  %idxprom8.i.i = sext i32 %6 to i64
  %arrayidx9.i.i = getelementptr inbounds [6 x i8*]* @ptype_str, i64 0, i64 %idxprom8.i.i
  %7 = load i8** %arrayidx9.i.i, align 8, !tbaa !5
  %m.i.i = getelementptr inbounds %struct.t_atom* %2, i64 %indvars.iv4.i.i, i32 0
  %8 = load float* %m.i.i, align 4, !tbaa !3
  %conv12.i.i = fpext float %8 to double
  %q.i.i = getelementptr inbounds %struct.t_atom* %2, i64 %indvars.iv4.i.i, i32 1
  %9 = load float* %q.i.i, align 4, !tbaa !3
  %conv15.i.i = fpext float %9 to double
  %mB.i.i = getelementptr inbounds %struct.t_atom* %2, i64 %indvars.iv4.i.i, i32 2
  %10 = load float* %mB.i.i, align 4, !tbaa !3
  %conv18.i.i = fpext float %10 to double
  %qB.i.i = getelementptr inbounds %struct.t_atom* %2, i64 %indvars.iv4.i.i, i32 3
  %11 = load float* %qB.i.i, align 4, !tbaa !3
  %conv21.i.i = fpext float %11 to double
  %resnr.i.i = getelementptr inbounds %struct.t_atom* %2, i64 %indvars.iv4.i.i, i32 7
  %12 = load i32* %resnr.i.i, align 4, !tbaa !0
  %13 = trunc i64 %indvars.iv4.i.i to i32
  %call24.i.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([103 x i8]* @.str178, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str167, i64 0, i64 0), i32 %13, i32 %conv.i2.i, i32 %conv5.i.i, i8* %7, double %conv12.i.i, double %conv15.i.i, double %conv18.i.i, double %conv21.i.i, i32 %12) #4
  br label %for.body28.i.i

for.body28.i.i:                                   ; preds = %for.body28.i.i, %pr_indent.exit.i.i
  %indvars.iv.i.i = phi i64 [ 0, %pr_indent.exit.i.i ], [ %indvars.iv.next.i.i, %for.body28.i.i ]
  %arrayidx32.i.i = getelementptr inbounds %struct.t_atom* %2, i64 %indvars.iv4.i.i, i32 8, i64 %indvars.iv.i.i
  %14 = load i8* %arrayidx32.i.i, align 1, !tbaa !1
  %conv33.i.i = zext i8 %14 to i32
  %call34.i.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str27, i64 0, i64 0), i32 %conv33.i.i) #4
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1
  %lftr.wideiv30 = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond31 = icmp eq i32 %lftr.wideiv30, 9
  br i1 %exitcond31, label %for.end.i.i, label %for.body28.i.i

for.end.i.i:                                      ; preds = %for.body28.i.i
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str179, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %fp) #3
  %indvars.iv.next5.i.i = add i64 %indvars.iv4.i.i, 1
  %lftr.wideiv32 = trunc i64 %indvars.iv.next5.i.i to i32
  %exitcond33 = icmp eq i32 %lftr.wideiv32, %3
  br i1 %exitcond33, label %pr_atom.exit.i, label %for.body.i.i

pr_atom.exit.i:                                   ; preds = %for.end.i.i, %if.then.i1.i, %if.then.i.i.i
  %grpname.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 8
  %16 = load i8**** %grpname.i, align 8, !tbaa !5
  br label %for.body.i6.i

for.body.i6.i:                                    ; preds = %for.end.i12.i, %pr_atom.exit.i
  %indvars.iv4.i3.i = phi i64 [ 0, %pr_atom.exit.i ], [ %indvars.iv.next5.i9.i, %for.end.i12.i ]
  %17 = load i32* @bShowNumbers, align 4, !tbaa !0
  %tobool.i4.i = icmp ne i32 %17, 0
  %18 = trunc i64 %indvars.iv4.i3.i to i32
  %cond.i.i = select i1 %tobool.i4.i, i32 %18, i32 -1
  %nr.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv4.i3.i, i32 0
  %19 = load i32* %nr.i.i, align 4, !tbaa !0
  %call.i5.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([21 x i8]* @.str175, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str168, i64 0, i64 0), i32 %cond.i.i, i32 %19) #4
  %20 = load i32* %nr.i.i, align 4, !tbaa !0
  %cmp51.i.i = icmp sgt i32 %20, 0
  br i1 %cmp51.i.i, label %for.body6.lr.ph.i.i, label %for.end.i12.i

for.body6.lr.ph.i.i:                              ; preds = %for.body.i6.i
  %nm_ind.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv4.i3.i, i32 1
  br label %for.body6.i.i

for.body6.i.i:                                    ; preds = %for.body6.i.i, %for.body6.lr.ph.i.i
  %indvars.iv.i7.i = phi i64 [ 0, %for.body6.lr.ph.i.i ], [ %indvars.iv.next.i8.i, %for.body6.i.i ]
  %21 = load i32** %nm_ind.i.i, align 8, !tbaa !5
  %arrayidx10.i.i = getelementptr inbounds i32* %21, i64 %indvars.iv.i7.i
  %22 = load i32* %arrayidx10.i.i, align 4, !tbaa !0
  %idxprom11.i.i = sext i32 %22 to i64
  %arrayidx12.i.i = getelementptr inbounds i8*** %16, i64 %idxprom11.i.i
  %23 = load i8*** %arrayidx12.i.i, align 8, !tbaa !5
  %24 = load i8** %23, align 8, !tbaa !5
  %call13.i.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str176, i64 0, i64 0), i8* %24) #4
  %indvars.iv.next.i8.i = add i64 %indvars.iv.i7.i, 1
  %25 = load i32* %nr.i.i, align 4, !tbaa !0
  %26 = trunc i64 %indvars.iv.next.i8.i to i32
  %cmp5.i.i = icmp slt i32 %26, %25
  br i1 %cmp5.i.i, label %for.body6.i.i, label %for.end.i12.i

for.end.i12.i:                                    ; preds = %for.body6.i.i, %for.body.i6.i
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str177, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp) #3
  %indvars.iv.next5.i9.i = add i64 %indvars.iv4.i3.i, 1
  %lftr.wideiv28 = trunc i64 %indvars.iv.next5.i9.i to i32
  %exitcond29 = icmp eq i32 %lftr.wideiv28, 9
  br i1 %exitcond29, label %pr_grps.exit.i, label %for.body.i6.i

pr_grps.exit.i:                                   ; preds = %for.end.i12.i
  %atomname.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 2
  %28 = load i8**** %atomname.i, align 8, !tbaa !5
  %29 = load i32* %nr.i, align 4, !tbaa !0
  call fastcc void @pr_strings(%struct._IO_FILE* %fp, i32 %call1.i, i8* getelementptr inbounds ([5 x i8]* @.str167, i64 0, i64 0), i8*** %28, i32 %29) #4
  %atomtype.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 3
  %30 = load i8**** %atomtype.i, align 8, !tbaa !5
  %atomtypeB.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 4
  %31 = load i8**** %atomtypeB.i, align 8, !tbaa !5
  %32 = load i32* %nr.i, align 4, !tbaa !0
  %tobool.i.i13.i = icmp eq i8*** %30, null
  br i1 %tobool.i.i13.i, label %if.then.i.i15.i, label %if.then.i17.i

if.then.i.i15.i:                                  ; preds = %pr_grps.exit.i
  %call.i.i14.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str169, i64 0, i64 0)) #4
  br label %pr_atoms.exit

if.then.i17.i:                                    ; preds = %pr_grps.exit.i
  %call1.i16.i = call i32 @pr_title_n(%struct._IO_FILE* %fp, i32 %call1.i, i8* getelementptr inbounds ([5 x i8]* @.str169, i64 0, i64 0), i32 %32) #4
  %cmp1.i.i = icmp sgt i32 %32, 0
  br i1 %cmp1.i.i, label %for.body.lr.ph.i19.i, label %pr_atoms.exit

for.body.lr.ph.i19.i:                             ; preds = %if.then.i17.i
  %cmp3.i.i18.i = icmp sgt i32 %call1.i16.i, 0
  br label %for.body.i21.i

for.body.i21.i:                                   ; preds = %pr_indent.exit.i31.i, %for.body.lr.ph.i19.i
  %indvars.iv.i20.i = phi i64 [ 0, %for.body.lr.ph.i19.i ], [ %indvars.iv.next.i28.i, %pr_indent.exit.i31.i ]
  br i1 %cmp3.i.i18.i, label %for.body.i.i26.i, label %pr_indent.exit.i31.i

for.body.i.i26.i:                                 ; preds = %for.body.i21.i, %for.body.i.i26.i
  %i.04.i.i22.i = phi i32 [ %inc.i.i24.i, %for.body.i.i26.i ], [ 0, %for.body.i21.i ]
  %fputc.i.i23.i = call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i.i24.i = add nsw i32 %i.04.i.i22.i, 1
  %exitcond.i.i25.i = icmp eq i32 %inc.i.i24.i, %call1.i16.i
  br i1 %exitcond.i.i25.i, label %pr_indent.exit.i31.i, label %for.body.i.i26.i

pr_indent.exit.i31.i:                             ; preds = %for.body.i.i26.i, %for.body.i21.i
  %33 = load i32* @bShowNumbers, align 4, !tbaa !0
  %tobool3.i.i = icmp ne i32 %33, 0
  %34 = trunc i64 %indvars.iv.i20.i to i32
  %cond.i27.i = select i1 %tobool3.i.i, i32 %34, i32 -1
  %arrayidx.i.i = getelementptr inbounds i8*** %30, i64 %indvars.iv.i20.i
  %35 = load i8*** %arrayidx.i.i, align 8, !tbaa !5
  %36 = load i8** %35, align 8, !tbaa !5
  %arrayidx5.i.i = getelementptr inbounds i8*** %31, i64 %indvars.iv.i20.i
  %37 = load i8*** %arrayidx5.i.i, align 8, !tbaa !5
  %38 = load i8** %37, align 8, !tbaa !5
  %call6.i.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([31 x i8]* @.str173, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str169, i64 0, i64 0), i32 %cond.i27.i, i8* %36, i8* %38) #4
  %indvars.iv.next.i28.i = add i64 %indvars.iv.i20.i, 1
  %lftr.wideiv26 = trunc i64 %indvars.iv.next.i28.i to i32
  %exitcond27 = icmp eq i32 %lftr.wideiv26, %32
  br i1 %exitcond27, label %pr_atoms.exit, label %for.body.i21.i

pr_atoms.exit:                                    ; preds = %pr_indent.exit.i31.i, %if.then.i.i15.i, %if.then.i17.i
  %resname.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 6
  %39 = load i8**** %resname.i, align 8, !tbaa !5
  %nres.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 5
  %40 = load i32* %nres.i, align 4, !tbaa !0
  call fastcc void @pr_strings(%struct._IO_FILE* %fp, i32 %call1.i, i8* getelementptr inbounds ([8 x i8]* @.str170, i64 0, i64 0), i8*** %39, i32 %40) #4
  %41 = load i8**** %grpname.i, align 8, !tbaa !5
  %ngrpname.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 7
  %42 = load i32* %ngrpname.i, align 4, !tbaa !0
  call fastcc void @pr_strings(%struct._IO_FILE* %fp, i32 %call1.i, i8* getelementptr inbounds ([8 x i8]* @.str171, i64 0, i64 0), i8*** %41, i32 %42) #4
  %excl.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 9
  call void @pr_block(%struct._IO_FILE* %fp, i32 %call1.i, i8* getelementptr inbounds ([5 x i8]* @.str172, i64 0, i64 0), %struct.t_block* %excl.i) #4
  %43 = getelementptr inbounds [4096 x i8]* %s.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %43) #3
  %call1.i21 = call i32 @pr_title_n(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([7 x i8]* @.str151, i64 0, i64 0), i32 3) #4
  br label %for.body.i25

for.body.i25:                                     ; preds = %for.body.i25, %pr_atoms.exit
  %indvars.iv.i = phi i64 [ 0, %pr_atoms.exit ], [ %indvars.iv.next.i, %for.body.i25 ]
  %arrayidx.i = getelementptr inbounds [4 x i8*]* @eblock_names, i64 0, i64 %indvars.iv.i
  %44 = load i8** %arrayidx.i, align 8, !tbaa !5
  %call6.i = call i32 (i8*, i8*, ...)* @sprintf(i8* %43, i8* getelementptr inbounds ([7 x i8]* @.str166, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str151, i64 0, i64 0), i8* %44) #4
  %arrayidx9.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv.i
  call void @pr_block(%struct._IO_FILE* %fp, i32 %call1.i21, i8* %43, %struct.t_block* %arrayidx9.i) #4
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %pr_blocks.exit, label %for.body.i25

pr_blocks.exit:                                   ; preds = %for.body.i25
  call void @llvm.lifetime.end(i64 4096, i8* %43) #3
  %idef = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1
  call void @pr_idef(%struct._IO_FILE* %fp, i32 %call1, i8* getelementptr inbounds ([5 x i8]* @.str152, i64 0, i64 0), %struct.t_idef* %idef) #5
  br label %if.end

if.end:                                           ; preds = %if.then.i, %pr_blocks.exit
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @pr_header(%struct._IO_FILE* %fp, i32 %indent, i8* %title, %struct.t_tpxheader* %sh) #0 {
entry:
  %tobool.i = icmp eq %struct.t_tpxheader* %sh, null
  br i1 %tobool.i, label %if.then.i, label %if.then

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* %title) #4
  br label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @pr_title(%struct._IO_FILE* %fp, i32 %indent, i8* %title) #5
  %cmp3.i = icmp sgt i32 %call1, 0
  br i1 %cmp3.i, label %for.body.i, label %pr_indent.exit82.critedge

for.body.i:                                       ; preds = %if.then, %for.body.i
  %i.04.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %if.then ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i = add nsw i32 %i.04.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %call1
  br i1 %exitcond.i, label %for.body.i81.preheader, label %for.body.i

for.body.i81.preheader:                           ; preds = %for.body.i
  %bIr = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 0
  %0 = load i32* %bIr, align 4, !tbaa !0
  %tobool3 = icmp ne i32 %0, 0
  %cond = select i1 %tobool3, i8* getelementptr inbounds ([1 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str154, i64 0, i64 0)
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str153, i64 0, i64 0), i8* %cond) #4
  br label %for.body.i81

for.body.i81:                                     ; preds = %for.body.i81.preheader, %for.body.i81
  %i.04.i77 = phi i32 [ %inc.i79, %for.body.i81 ], [ 0, %for.body.i81.preheader ]
  %fputc.i78 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i79 = add nsw i32 %i.04.i77, 1
  %exitcond.i80 = icmp eq i32 %inc.i79, %call1
  br i1 %exitcond.i80, label %pr_indent.exit82, label %for.body.i81

pr_indent.exit82.critedge:                        ; preds = %if.then
  %bIr.c = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 0
  %1 = load i32* %bIr.c, align 4, !tbaa !0
  %tobool3.c = icmp ne i32 %1, 0
  %cond.c = select i1 %tobool3.c, i8* getelementptr inbounds ([1 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str154, i64 0, i64 0)
  %call4.c = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str153, i64 0, i64 0), i8* %cond.c) #4
  br label %pr_indent.exit82

pr_indent.exit82:                                 ; preds = %for.body.i81, %pr_indent.exit82.critedge
  %bBox = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 1
  %2 = load i32* %bBox, align 4, !tbaa !0
  %tobool6 = icmp ne i32 %2, 0
  %cond7 = select i1 %tobool6, i8* getelementptr inbounds ([1 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str154, i64 0, i64 0)
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str155, i64 0, i64 0), i8* %cond7) #4
  br i1 %cmp3.i, label %for.body.i88, label %pr_indent.exit96.critedge

for.body.i88:                                     ; preds = %pr_indent.exit82, %for.body.i88
  %i.04.i84 = phi i32 [ %inc.i86, %for.body.i88 ], [ 0, %pr_indent.exit82 ]
  %fputc.i85 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i86 = add nsw i32 %i.04.i84, 1
  %exitcond.i87 = icmp eq i32 %inc.i86, %call1
  br i1 %exitcond.i87, label %pr_indent.exit89, label %for.body.i88

pr_indent.exit89:                                 ; preds = %for.body.i88
  %bTop = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 2
  %3 = load i32* %bTop, align 4, !tbaa !0
  %tobool10 = icmp ne i32 %3, 0
  %cond11 = select i1 %tobool10, i8* getelementptr inbounds ([1 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str154, i64 0, i64 0)
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str156, i64 0, i64 0), i8* %cond11) #4
  br i1 %cmp3.i, label %for.body.i95, label %pr_indent.exit103.critedge

for.body.i95:                                     ; preds = %pr_indent.exit89, %for.body.i95
  %i.04.i91 = phi i32 [ %inc.i93, %for.body.i95 ], [ 0, %pr_indent.exit89 ]
  %fputc.i92 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i93 = add nsw i32 %i.04.i91, 1
  %exitcond.i94 = icmp eq i32 %inc.i93, %call1
  br i1 %exitcond.i94, label %pr_indent.exit96, label %for.body.i95

pr_indent.exit96.critedge:                        ; preds = %pr_indent.exit82
  %bTop.c = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 2
  %4 = load i32* %bTop.c, align 4, !tbaa !0
  %tobool10.c = icmp ne i32 %4, 0
  %cond11.c = select i1 %tobool10.c, i8* getelementptr inbounds ([1 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str154, i64 0, i64 0)
  %call12.c = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str156, i64 0, i64 0), i8* %cond11.c) #4
  br label %pr_indent.exit96

pr_indent.exit96:                                 ; preds = %for.body.i95, %pr_indent.exit96.critedge
  %bX = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 3
  %5 = load i32* %bX, align 4, !tbaa !0
  %tobool14 = icmp ne i32 %5, 0
  %cond15 = select i1 %tobool14, i8* getelementptr inbounds ([1 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str154, i64 0, i64 0)
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str157, i64 0, i64 0), i8* %cond15) #4
  br i1 %cmp3.i, label %for.body.i102, label %pr_indent.exit110.critedge

for.body.i102:                                    ; preds = %pr_indent.exit96, %for.body.i102
  %i.04.i98 = phi i32 [ %inc.i100, %for.body.i102 ], [ 0, %pr_indent.exit96 ]
  %fputc.i99 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i100 = add nsw i32 %i.04.i98, 1
  %exitcond.i101 = icmp eq i32 %inc.i100, %call1
  br i1 %exitcond.i101, label %pr_indent.exit103, label %for.body.i102

pr_indent.exit103.critedge:                       ; preds = %pr_indent.exit89
  %bX.c = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 3
  %6 = load i32* %bX.c, align 4, !tbaa !0
  %tobool14.c = icmp ne i32 %6, 0
  %cond15.c = select i1 %tobool14.c, i8* getelementptr inbounds ([1 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str154, i64 0, i64 0)
  %call16.c = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str157, i64 0, i64 0), i8* %cond15.c) #4
  br label %pr_indent.exit103

pr_indent.exit103:                                ; preds = %for.body.i102, %pr_indent.exit103.critedge
  %bV = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 4
  %7 = load i32* %bV, align 4, !tbaa !0
  %tobool18 = icmp ne i32 %7, 0
  %cond19 = select i1 %tobool18, i8* getelementptr inbounds ([1 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str154, i64 0, i64 0)
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str158, i64 0, i64 0), i8* %cond19) #4
  br i1 %cmp3.i, label %for.body.i109, label %pr_indent.exit117.thread.critedge

for.body.i109:                                    ; preds = %pr_indent.exit103, %for.body.i109
  %i.04.i105 = phi i32 [ %inc.i107, %for.body.i109 ], [ 0, %pr_indent.exit103 ]
  %fputc.i106 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i107 = add nsw i32 %i.04.i105, 1
  %exitcond.i108 = icmp eq i32 %inc.i107, %call1
  br i1 %exitcond.i108, label %pr_indent.exit110, label %for.body.i109

pr_indent.exit110.critedge:                       ; preds = %pr_indent.exit96
  %bV.c = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 4
  %8 = load i32* %bV.c, align 4, !tbaa !0
  %tobool18.c = icmp ne i32 %8, 0
  %cond19.c = select i1 %tobool18.c, i8* getelementptr inbounds ([1 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str154, i64 0, i64 0)
  %call20.c = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str158, i64 0, i64 0), i8* %cond19.c) #4
  br label %pr_indent.exit110

pr_indent.exit110:                                ; preds = %for.body.i109, %pr_indent.exit110.critedge
  %bF = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 5
  %9 = load i32* %bF, align 4, !tbaa !0
  %tobool22 = icmp ne i32 %9, 0
  %cond23 = select i1 %tobool22, i8* getelementptr inbounds ([1 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str154, i64 0, i64 0)
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str159, i64 0, i64 0), i8* %cond23) #4
  br i1 %cmp3.i, label %for.body.i116, label %pr_indent.exit124.thread

pr_indent.exit117.thread.critedge:                ; preds = %pr_indent.exit103
  %bF.c = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 5
  %10 = load i32* %bF.c, align 4, !tbaa !0
  %tobool22.c = icmp ne i32 %10, 0
  %cond23.c = select i1 %tobool22.c, i8* getelementptr inbounds ([1 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str154, i64 0, i64 0)
  %call24.c = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str159, i64 0, i64 0), i8* %cond23.c) #4
  br label %pr_indent.exit124.thread

for.body.i116:                                    ; preds = %pr_indent.exit110, %for.body.i116
  %i.04.i112 = phi i32 [ %inc.i114, %for.body.i116 ], [ 0, %pr_indent.exit110 ]
  %fputc.i113 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i114 = add nsw i32 %i.04.i112, 1
  %exitcond.i115 = icmp eq i32 %inc.i114, %call1
  br i1 %exitcond.i115, label %for.body.i123.preheader, label %for.body.i116

for.body.i123.preheader:                          ; preds = %for.body.i116
  %natoms = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 6
  %11 = load i32* %natoms, align 4, !tbaa !0
  %call26 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([13 x i8]* @.str160, i64 0, i64 0), i32 %11) #4
  br label %for.body.i123

for.body.i123:                                    ; preds = %for.body.i123.preheader, %for.body.i123
  %i.04.i119 = phi i32 [ %inc.i121, %for.body.i123 ], [ 0, %for.body.i123.preheader ]
  %fputc.i120 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i121 = add nsw i32 %i.04.i119, 1
  %exitcond.i122 = icmp eq i32 %inc.i121, %call1
  br i1 %exitcond.i122, label %for.body.i130.preheader, label %for.body.i123

pr_indent.exit124.thread:                         ; preds = %pr_indent.exit110, %pr_indent.exit117.thread.critedge
  %natoms139 = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 6
  %12 = load i32* %natoms139, align 4, !tbaa !0
  %call26140 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([13 x i8]* @.str160, i64 0, i64 0), i32 %12) #4
  %step141 = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 7
  %13 = load i32* %step141, align 4, !tbaa !0
  %call28142 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([13 x i8]* @.str161, i64 0, i64 0), i32 %13) #4
  br label %pr_indent.exit131

for.body.i130.preheader:                          ; preds = %for.body.i123
  %step = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 7
  %14 = load i32* %step, align 4, !tbaa !0
  %call28 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([13 x i8]* @.str161, i64 0, i64 0), i32 %14) #4
  br label %for.body.i130

for.body.i130:                                    ; preds = %for.body.i130.preheader, %for.body.i130
  %i.04.i126 = phi i32 [ %inc.i128, %for.body.i130 ], [ 0, %for.body.i130.preheader ]
  %fputc.i127 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i128 = add nsw i32 %i.04.i126, 1
  %exitcond.i129 = icmp eq i32 %inc.i128, %call1
  br i1 %exitcond.i129, label %pr_indent.exit131, label %for.body.i130

pr_indent.exit131:                                ; preds = %for.body.i130, %pr_indent.exit124.thread
  %t = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 8
  %15 = load float* %t, align 4, !tbaa !3
  %conv = fpext float %15 to double
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([13 x i8]* @.str162, i64 0, i64 0), double %conv) #4
  br i1 %cmp3.i, label %for.body.i137, label %pr_indent.exit138

for.body.i137:                                    ; preds = %pr_indent.exit131, %for.body.i137
  %i.04.i133 = phi i32 [ %inc.i135, %for.body.i137 ], [ 0, %pr_indent.exit131 ]
  %fputc.i134 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i135 = add nsw i32 %i.04.i133, 1
  %exitcond.i136 = icmp eq i32 %inc.i135, %call1
  br i1 %exitcond.i136, label %pr_indent.exit138, label %for.body.i137

pr_indent.exit138:                                ; preds = %for.body.i137, %pr_indent.exit131
  %lambda = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 9
  %16 = load float* %lambda, align 4, !tbaa !3
  %conv32 = fpext float %16 to double
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([13 x i8]* @.str163, i64 0, i64 0), double %conv32) #4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %pr_indent.exit138
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i8* @atomname(%struct.t_atoms* nocapture %a, i32 %i) #0 {
entry:
  %buf = alloca [32 x i8], align 16
  %idxprom = sext i32 %i to i64
  %atom = getelementptr inbounds %struct.t_atoms* %a, i64 0, i32 1
  %0 = load %struct.t_atom** %atom, align 8, !tbaa !5
  %resnr1 = getelementptr inbounds %struct.t_atom* %0, i64 %idxprom, i32 7
  %1 = load i32* %resnr1, align 4, !tbaa !0
  %arraydecay = getelementptr inbounds [32 x i8]* %buf, i64 0, i64 0
  %idxprom2 = sext i32 %1 to i64
  %resname = getelementptr inbounds %struct.t_atoms* %a, i64 0, i32 6
  %2 = load i8**** %resname, align 8, !tbaa !5
  %arrayidx3 = getelementptr inbounds i8*** %2, i64 %idxprom2
  %3 = load i8*** %arrayidx3, align 8, !tbaa !5
  %4 = load i8** %3, align 8, !tbaa !5
  %add = add nsw i32 %1, 1
  %atomname = getelementptr inbounds %struct.t_atoms* %a, i64 0, i32 2
  %5 = load i8**** %atomname, align 8, !tbaa !5
  %arrayidx5 = getelementptr inbounds i8*** %5, i64 %idxprom
  %6 = load i8*** %arrayidx5, align 8, !tbaa !5
  %7 = load i8** %6, align 8, !tbaa !5
  %call = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8]* @.str164, i64 0, i64 0), i8* %4, i32 %add, i8* %7) #4
  %call7 = call i8* @gmx_strdup(i8* %arraydecay) #4
  ret i8* %call7
}

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #1

; Function Attrs: optsize
declare i8* @gmx_strdup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @pr_strings(%struct._IO_FILE* nocapture %fp, i32 %indent, i8* %title, i8*** %nm, i32 %n) #0 {
entry:
  %tobool.i = icmp eq i8*** %nm, null
  br i1 %tobool.i, label %if.then.i, label %if.then

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* %title) #4
  br label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @pr_title_n(%struct._IO_FILE* %fp, i32 %indent, i8* %title, i32 %n) #5
  %cmp16 = icmp sgt i32 %n, 0
  br i1 %cmp16, label %for.body.lr.ph, label %if.end

for.body.lr.ph:                                   ; preds = %if.then
  %cmp3.i = icmp sgt i32 %call1, 0
  br label %for.body

for.body:                                         ; preds = %pr_indent.exit, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %pr_indent.exit ]
  br i1 %cmp3.i, label %for.body.i, label %pr_indent.exit

for.body.i:                                       ; preds = %for.body, %for.body.i
  %i.04.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %for.body ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #3
  %inc.i = add nsw i32 %i.04.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %call1
  br i1 %exitcond.i, label %pr_indent.exit, label %for.body.i

pr_indent.exit:                                   ; preds = %for.body.i, %for.body
  %0 = load i32* @bShowNumbers, align 4, !tbaa !0
  %tobool3 = icmp ne i32 %0, 0
  %1 = trunc i64 %indvars.iv to i32
  %cond = select i1 %tobool3, i32 %1, i32 -1
  %arrayidx = getelementptr inbounds i8*** %nm, i64 %indvars.iv
  %2 = load i8*** %arrayidx, align 8, !tbaa !5
  %3 = load i8** %2, align 8, !tbaa !5
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str174, i64 0, i64 0), i8* %title, i32 %cond, i8* %3) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %if.end, label %for.body

if.end:                                           ; preds = %if.then, %pr_indent.exit, %if.then.i
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #1

declare float @fabsf(float)

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
!5 = metadata !{metadata !"any pointer", metadata !1}
!6 = metadata !{metadata !"short", metadata !1}

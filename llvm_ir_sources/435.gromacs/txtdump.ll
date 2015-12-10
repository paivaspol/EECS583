; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/txtdump.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

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
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
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
@.str140 = private unnamed_addr constant [67 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/txtdump.c\00", align 1
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
@.str165 = private unnamed_addr constant [12 x i8] c"%-20s = %s\0A\00", align 1
@.str166 = private unnamed_addr constant [12 x i8] c"%-20s = %d\0A\00", align 1
@.str167 = private unnamed_addr constant [12 x i8] c"%-20s = %g\0A\00", align 1
@.str168 = private unnamed_addr constant [8 x i8] c"n = %d\0A\00", align 1
@.str169 = private unnamed_addr constant [4 x i8] c"a =\00", align 1
@.str170 = private unnamed_addr constant [4 x i8] c" %e\00", align 1
@.str171 = private unnamed_addr constant [6 x i8] c"phi =\00", align 1
@.str172 = private unnamed_addr constant [48 x i8] c"%sA=%12.5e, %sA=%12.5e, %sB=%12.5e, %sB=%12.5e\0A\00", align 1
@.str173 = private unnamed_addr constant [8 x i8] c"nr: %d\0A\00", align 1
@.str174 = private unnamed_addr constant [35 x i8] c"multinr[division over processors]:\00", align 1
@.str175 = private unnamed_addr constant [9 x i8] c"iatoms:\0A\00", align 1
@.str176 = private unnamed_addr constant [16 x i8] c"%d type=%d (%s)\00", align 1
@.str177 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str178 = private unnamed_addr constant [7 x i8] c"nr=%d\0A\00", align 1
@.str179 = private unnamed_addr constant [8 x i8] c"nra=%d\0A\00", align 1
@.str180 = private unnamed_addr constant [18 x i8] c"%s->index[%d]=%u\0A\00", align 1
@.str181 = private unnamed_addr constant [14 x i8] c"%s->a[%d]=%u\0A\00", align 1
@.str182 = private unnamed_addr constant [5 x i8] c"atom\00", align 1
@.str183 = private unnamed_addr constant [4 x i8] c"grp\00", align 1
@.str184 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str185 = private unnamed_addr constant [8 x i8] c"residue\00", align 1
@.str186 = private unnamed_addr constant [8 x i8] c"grpname\00", align 1
@.str187 = private unnamed_addr constant [5 x i8] c"excl\00", align 1
@.str188 = private unnamed_addr constant [103 x i8] c"%s[%6d]={type=%3d, typeB=%3d, ptype=%8s, m=%12.5e, q=%12.5e, mB=%12.5e, qB=%12.5e, resnr=%5d} grpnrs=[\00", align 1
@ptype_str = external global [6 x i8*]
@.str189 = private unnamed_addr constant [5 x i8] c" ]}\0A\00", align 1
@.str190 = private unnamed_addr constant [21 x i8] c"%s[%d] nr=%d, name=[\00", align 1
@.str191 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str192 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str193 = private unnamed_addr constant [20 x i8] c"%s[%d]={name=\22%s\22}\0A\00", align 1
@.str194 = private unnamed_addr constant [31 x i8] c"%s[%d]={name=\22%s\22,nameB=\22%s\22}\0A\00", align 1
@.str196 = private unnamed_addr constant [7 x i8] c"%s[%s]\00", align 1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
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
define i32 @__inline_isfinitef(float %__x) #0 {
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
declare float @llvm.fabs.f32(float) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #0 {
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
declare double @llvm.fabs.f64(double) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #0 {
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
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #0 {
  %1 = tail call float @llvm.fabs.f32(float %__x) #7
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #0 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #7
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #0 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #7
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #0 {
  %1 = fcmp uno float %__x, 0.000000e+00
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #0 {
  %1 = fcmp uno double %__x, 0.000000e+00
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #0 {
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #0 {
  %1 = bitcast float %__x to i32
  %2 = lshr i32 %1, 31
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #0 {
  %1 = bitcast double %__x to i64
  %2 = lshr i64 %1, 63
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #0 {
  %1 = bitcast x86_fp80 %__x to i80
  %2 = lshr i80 %1, 79
  %3 = trunc i80 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #0 {
  %1 = fcmp ord float %__x, 0.000000e+00
  %2 = tail call float @llvm.fabs.f32(float %__x) #1
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
define i32 @__inline_isnormald(double %__x) #0 {
  %1 = fcmp ord double %__x, 0.000000e+00
  %2 = tail call double @llvm.fabs.f64(double %__x) #1
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
define i32 @__inline_isnormall(x86_fp80 %__x) #0 {
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #1
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
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #2 {
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #8
  %2 = extractelement <2 x float> %1, i32 0
  store float %2, float* %__sinp, align 4, !tbaa !2
  %3 = extractelement <2 x float> %1, i32 1
  store float %3, float* %__cosp, align 4, !tbaa !2
  ret void
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #2 {
  %1 = tail call { double, double } @__sincos_stret(double %__x) #8
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !6
  store double %3, double* %__cosp, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #2 {
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #8
  %2 = extractelement <2 x float> %1, i32 0
  store float %2, float* %__sinp, align 4, !tbaa !2
  %3 = extractelement <2 x float> %1, i32 1
  store float %3, float* %__cosp, align 4, !tbaa !2
  ret void
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #2 {
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #8
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !6
  store double %3, double* %__cosp, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_shownumbers(i32 %bShow) #4 {
  store i32 %bShow, i32* @bShowNumbers, align 4, !tbaa !8
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @available(%struct.__sFILE* nocapture %fp, i8* readnone %p, i8* %title) #4 {
  %1 = icmp ne i8* %p, null
  br i1 %1, label %4, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* %title) #8
  br label %4

; <label>:4                                       ; preds = %2, %0
  %5 = zext i1 %1 to i32
  ret i32 %5
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize ssp uwtable
define i32 @pr_indent(%struct.__sFILE* nocapture %fp, i32 %n) #4 {
  %1 = icmp sgt i32 %n, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n, -1
  br label %3

; <label>:3                                       ; preds = %3, %.lr.ph
  %i.01 = phi i32 [ 0, %.lr.ph ], [ %4, %3 ]
  %fputc = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp)
  %4 = add nuw nsw i32 %i.01, 1
  %exitcond = icmp eq i32 %i.01, %2
  br i1 %exitcond, label %._crit_edge, label %3

._crit_edge:                                      ; preds = %3, %0
  ret i32 %n
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @pr_title(%struct.__sFILE* nocapture %fp, i32 %indent, i8* %title) #4 {
  %1 = icmp sgt i32 %indent, 0
  br i1 %1, label %.lr.ph.i, label %pr_indent.exit

.lr.ph.i:                                         ; preds = %0
  %2 = add i32 %indent, -1
  br label %3

; <label>:3                                       ; preds = %3, %.lr.ph.i
  %i.01.i = phi i32 [ 0, %.lr.ph.i ], [ %4, %3 ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %4 = add nuw nsw i32 %i.01.i, 1
  %exitcond.i = icmp eq i32 %i.01.i, %2
  br i1 %exitcond.i, label %pr_indent.exit, label %3

pr_indent.exit:                                   ; preds = %3, %0
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8* %title) #8
  %6 = add nsw i32 %indent, 3
  ret i32 %6
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @pr_title_n(%struct.__sFILE* nocapture %fp, i32 %indent, i8* %title, i32 %n) #4 {
  %1 = icmp sgt i32 %indent, 0
  br i1 %1, label %.lr.ph.i, label %pr_indent.exit

.lr.ph.i:                                         ; preds = %0
  %2 = add i32 %indent, -1
  br label %3

; <label>:3                                       ; preds = %3, %.lr.ph.i
  %i.01.i = phi i32 [ 0, %.lr.ph.i ], [ %4, %3 ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %4 = add nuw nsw i32 %i.01.i, 1
  %exitcond.i = icmp eq i32 %i.01.i, %2
  br i1 %exitcond.i, label %pr_indent.exit, label %3

pr_indent.exit:                                   ; preds = %3, %0
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i8* %title, i32 %n) #8
  %6 = add nsw i32 %indent, 3
  ret i32 %6
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @pr_title_nxn(%struct.__sFILE* nocapture %fp, i32 %indent, i8* %title, i32 %n1, i32 %n2) #4 {
  %1 = icmp sgt i32 %indent, 0
  br i1 %1, label %.lr.ph.i, label %pr_indent.exit

.lr.ph.i:                                         ; preds = %0
  %2 = add i32 %indent, -1
  br label %3

; <label>:3                                       ; preds = %3, %.lr.ph.i
  %i.01.i = phi i32 [ 0, %.lr.ph.i ], [ %4, %3 ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %4 = add nuw nsw i32 %i.01.i, 1
  %exitcond.i = icmp eq i32 %i.01.i, %2
  br i1 %exitcond.i, label %pr_indent.exit, label %3

pr_indent.exit:                                   ; preds = %3, %0
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([13 x i8]* @.str4, i64 0, i64 0), i8* %title, i32 %n1, i32 %n2) #8
  %6 = add nsw i32 %indent, 3
  ret i32 %6
}

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_ivec(%struct.__sFILE* nocapture %fp, i32 %indent, i8* %title, i32* readonly %vec, i32 %n) #4 {
  %1 = icmp eq i32* %vec, null
  br i1 %1, label %available.exit, label %.critedge

available.exit:                                   ; preds = %0
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* %title) #8
  br label %.loopexit

.critedge:                                        ; preds = %0
  %3 = tail call i32 @pr_title_n(%struct.__sFILE* %fp, i32 %indent, i8* %title, i32 %n) #9
  %4 = icmp sgt i32 %n, 0
  br i1 %4, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.critedge
  %5 = icmp sgt i32 %3, 0
  %6 = add i32 %3, -1
  %7 = add i32 %n, -1
  br label %8

; <label>:8                                       ; preds = %pr_indent.exit, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %pr_indent.exit ]
  br i1 %5, label %.lr.ph.i, label %pr_indent.exit

.lr.ph.i:                                         ; preds = %8, %.lr.ph.i
  %i.01.i = phi i32 [ %9, %.lr.ph.i ], [ 0, %8 ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %9 = add nuw nsw i32 %i.01.i, 1
  %exitcond.i = icmp eq i32 %i.01.i, %6
  br i1 %exitcond.i, label %pr_indent.exit, label %.lr.ph.i

pr_indent.exit:                                   ; preds = %.lr.ph.i, %8
  %10 = load i32* @bShowNumbers, align 4, !tbaa !8
  %11 = icmp ne i32 %10, 0
  %12 = trunc i64 %indvars.iv to i32
  %13 = select i1 %11, i32 %12, i32 -1
  %14 = getelementptr inbounds i32* %vec, i64 %indvars.iv
  %15 = load i32* %14, align 4, !tbaa !8
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str5, i64 0, i64 0), i8* %title, i32 %13, i32 %15) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %12, %7
  br i1 %exitcond, label %.loopexit, label %8

.loopexit:                                        ; preds = %pr_indent.exit, %.critedge, %available.exit
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_ivecs(%struct.__sFILE* nocapture %fp, i32 %indent, i8* %title, [3 x i32]* readonly %vec, i32 %n) #4 {
  %1 = icmp eq [3 x i32]* %vec, null
  br i1 %1, label %available.exit, label %.critedge

available.exit:                                   ; preds = %0
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* %title) #8
  br label %.loopexit

.critedge:                                        ; preds = %0
  %3 = tail call i32 @pr_title_nxn(%struct.__sFILE* %fp, i32 %indent, i8* %title, i32 %n, i32 3) #9
  %4 = icmp sgt i32 %n, 0
  br i1 %4, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.critedge
  %5 = icmp sgt i32 %3, 0
  %6 = add i32 %3, -1
  %7 = add i32 %n, -1
  br label %8

; <label>:8                                       ; preds = %24, %.lr.ph
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next4, %24 ]
  br i1 %5, label %.lr.ph.i, label %pr_indent.exit

.lr.ph.i:                                         ; preds = %8, %.lr.ph.i
  %i.01.i = phi i32 [ %9, %.lr.ph.i ], [ 0, %8 ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %9 = add nuw nsw i32 %i.01.i, 1
  %exitcond.i = icmp eq i32 %i.01.i, %6
  br i1 %exitcond.i, label %pr_indent.exit, label %.lr.ph.i

pr_indent.exit:                                   ; preds = %.lr.ph.i, %8
  %10 = load i32* @bShowNumbers, align 4, !tbaa !8
  %11 = icmp ne i32 %10, 0
  %12 = trunc i64 %indvars.iv3 to i32
  %13 = select i1 %11, i32 %12, i32 -1
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* %title, i32 %13) #8
  br label %15

; <label>:15                                      ; preds = %20, %pr_indent.exit
  %indvars.iv = phi i64 [ 0, %pr_indent.exit ], [ %indvars.iv.next, %20 ]
  %16 = trunc i64 %indvars.iv to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

; <label>:18                                      ; preds = %15
  %19 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %fp)
  br label %20

; <label>:20                                      ; preds = %15, %18
  %21 = getelementptr inbounds [3 x i32]* %vec, i64 %indvars.iv3, i64 %indvars.iv
  %22 = load i32* %21, align 4, !tbaa !8
  %23 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i32 %22) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %24, label %15

; <label>:24                                      ; preds = %20
  %25 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %fp)
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  %exitcond5 = icmp eq i32 %12, %7
  br i1 %exitcond5, label %.loopexit, label %8

.loopexit:                                        ; preds = %24, %.critedge, %available.exit
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_rvec(%struct.__sFILE* nocapture %fp, i32 %indent, i8* %title, float* readonly %vec, i32 %n) #4 {
  %1 = icmp eq float* %vec, null
  br i1 %1, label %available.exit, label %.critedge

available.exit:                                   ; preds = %0
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* %title) #8
  br label %.loopexit

.critedge:                                        ; preds = %0
  %3 = tail call i32 @pr_title_n(%struct.__sFILE* %fp, i32 %indent, i8* %title, i32 %n) #9
  %4 = icmp sgt i32 %n, 0
  br i1 %4, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.critedge
  %5 = icmp sgt i32 %3, 0
  %6 = add i32 %3, -1
  %7 = add i32 %n, -1
  br label %8

; <label>:8                                       ; preds = %pr_indent.exit, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %pr_indent.exit ]
  br i1 %5, label %.lr.ph.i, label %pr_indent.exit

.lr.ph.i:                                         ; preds = %8, %.lr.ph.i
  %i.01.i = phi i32 [ %9, %.lr.ph.i ], [ 0, %8 ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %9 = add nuw nsw i32 %i.01.i, 1
  %exitcond.i = icmp eq i32 %i.01.i, %6
  br i1 %exitcond.i, label %pr_indent.exit, label %.lr.ph.i

pr_indent.exit:                                   ; preds = %.lr.ph.i, %8
  %10 = load i32* @bShowNumbers, align 4, !tbaa !8
  %11 = icmp ne i32 %10, 0
  %12 = trunc i64 %indvars.iv to i32
  %13 = select i1 %11, i32 %12, i32 -1
  %14 = getelementptr inbounds float* %vec, i64 %indvars.iv
  %15 = load float* %14, align 4, !tbaa !2
  %16 = fpext float %15 to double
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([15 x i8]* @.str10, i64 0, i64 0), i8* %title, i32 %13, double %16) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %12, %7
  br i1 %exitcond, label %.loopexit, label %8

.loopexit:                                        ; preds = %pr_indent.exit, %.critedge, %available.exit
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_rvecs_len(%struct.__sFILE* nocapture %fp, i32 %indent, i8* %title, [3 x float]* readonly %vec, i32 %n) #4 {
  %1 = icmp eq [3 x float]* %vec, null
  br i1 %1, label %available.exit, label %.critedge

available.exit:                                   ; preds = %0
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* %title) #8
  br label %.loopexit

.critedge:                                        ; preds = %0
  %3 = tail call i32 @pr_title_nxn(%struct.__sFILE* %fp, i32 %indent, i8* %title, i32 %n, i32 3) #9
  %4 = icmp sgt i32 %n, 0
  br i1 %4, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.critedge
  %5 = icmp sgt i32 %3, 0
  %6 = add i32 %3, -1
  %7 = add i32 %n, -1
  br label %8

; <label>:8                                       ; preds = %22, %.lr.ph
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next4, %22 ]
  br i1 %5, label %.lr.ph.i, label %pr_indent.exit

.lr.ph.i:                                         ; preds = %8, %.lr.ph.i
  %i.01.i = phi i32 [ %9, %.lr.ph.i ], [ 0, %8 ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %9 = add nuw nsw i32 %i.01.i, 1
  %exitcond.i = icmp eq i32 %i.01.i, %6
  br i1 %exitcond.i, label %pr_indent.exit, label %.lr.ph.i

pr_indent.exit:                                   ; preds = %.lr.ph.i, %8
  %10 = trunc i64 %indvars.iv3 to i32
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str11, i64 0, i64 0), i8* %title, i32 %10) #8
  br label %12

; <label>:12                                      ; preds = %17, %pr_indent.exit
  %indvars.iv = phi i64 [ 0, %pr_indent.exit ], [ %indvars.iv.next, %17 ]
  %13 = trunc i64 %indvars.iv to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

; <label>:15                                      ; preds = %12
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %fp)
  br label %17

; <label>:17                                      ; preds = %12, %15
  %18 = getelementptr inbounds [3 x float]* %vec, i64 %indvars.iv3, i64 %indvars.iv
  %19 = load float* %18, align 4, !tbaa !2
  %20 = fpext float %19 to double
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str12, i64 0, i64 0), double %20) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %22, label %12

; <label>:22                                      ; preds = %17
  %23 = getelementptr inbounds [3 x float]* %vec, i64 %indvars.iv3, i64 0
  %24 = load float* %23, align 4, !tbaa !2
  %25 = fmul float %24, %24
  %26 = getelementptr inbounds [3 x float]* %vec, i64 %indvars.iv3, i64 1
  %27 = load float* %26, align 4, !tbaa !2
  %28 = fmul float %27, %27
  %29 = fadd float %25, %28
  %30 = getelementptr inbounds [3 x float]* %vec, i64 %indvars.iv3, i64 2
  %31 = load float* %30, align 4, !tbaa !2
  %32 = fmul float %31, %31
  %33 = fadd float %29, %32
  %sqrtf.i = tail call float @sqrtf(float %33) #10
  %34 = fpext float %sqrtf.i to double
  %35 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0), double %34) #8
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  %exitcond5 = icmp eq i32 %10, %7
  br i1 %exitcond5, label %.loopexit, label %8

.loopexit:                                        ; preds = %22, %.critedge, %available.exit
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_rvecs(%struct.__sFILE* nocapture %fp, i32 %indent, i8* %title, [3 x float]* readonly %vec, i32 %n) #4 {
  %1 = icmp eq [3 x float]* %vec, null
  br i1 %1, label %available.exit, label %.critedge

available.exit:                                   ; preds = %0
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* %title) #8
  br label %.loopexit

.critedge:                                        ; preds = %0
  %3 = tail call i32 @pr_title_nxn(%struct.__sFILE* %fp, i32 %indent, i8* %title, i32 %n, i32 3) #9
  %4 = icmp sgt i32 %n, 0
  br i1 %4, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.critedge
  %5 = icmp sgt i32 %3, 0
  %6 = add i32 %3, -1
  %7 = add i32 %n, -1
  br label %8

; <label>:8                                       ; preds = %22, %.lr.ph
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next4, %22 ]
  br i1 %5, label %.lr.ph.i, label %pr_indent.exit

.lr.ph.i:                                         ; preds = %8, %.lr.ph.i
  %i.01.i = phi i32 [ %9, %.lr.ph.i ], [ 0, %8 ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %9 = add nuw nsw i32 %i.01.i, 1
  %exitcond.i = icmp eq i32 %i.01.i, %6
  br i1 %exitcond.i, label %pr_indent.exit, label %.lr.ph.i

pr_indent.exit:                                   ; preds = %.lr.ph.i, %8
  %10 = trunc i64 %indvars.iv3 to i32
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str11, i64 0, i64 0), i8* %title, i32 %10) #8
  br label %12

; <label>:12                                      ; preds = %17, %pr_indent.exit
  %indvars.iv = phi i64 [ 0, %pr_indent.exit ], [ %indvars.iv.next, %17 ]
  %13 = trunc i64 %indvars.iv to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

; <label>:15                                      ; preds = %12
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %fp)
  br label %17

; <label>:17                                      ; preds = %12, %15
  %18 = getelementptr inbounds [3 x float]* %vec, i64 %indvars.iv3, i64 %indvars.iv
  %19 = load float* %18, align 4, !tbaa !2
  %20 = fpext float %19 to double
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str12, i64 0, i64 0), double %20) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %22, label %12

; <label>:22                                      ; preds = %17
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %fp)
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  %exitcond5 = icmp eq i32 %10, %7
  br i1 %exitcond5, label %.loopexit, label %8

.loopexit:                                        ; preds = %22, %.critedge, %available.exit
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_energies(%struct.__sFILE* nocapture %fp, i32 %indent, i8* %title, %struct.t_energy* readonly %e, i32 %n) #4 {
  %1 = icmp eq %struct.t_energy* %e, null
  br i1 %1, label %available.exit, label %.critedge

available.exit:                                   ; preds = %0
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* %title) #8
  br label %.loopexit

.critedge:                                        ; preds = %0
  %3 = tail call i32 @pr_title_n(%struct.__sFILE* %fp, i32 %indent, i8* %title, i32 %n) #9
  %4 = icmp sgt i32 %n, 0
  br i1 %4, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.critedge
  %5 = icmp sgt i32 %3, 0
  %6 = add i32 %3, -1
  %7 = add i32 %n, -1
  br label %8

; <label>:8                                       ; preds = %pr_indent.exit, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %pr_indent.exit ]
  br i1 %5, label %.lr.ph.i, label %pr_indent.exit

.lr.ph.i:                                         ; preds = %8, %.lr.ph.i
  %i.01.i = phi i32 [ %9, %.lr.ph.i ], [ 0, %8 ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %9 = add nuw nsw i32 %i.01.i, 1
  %exitcond.i = icmp eq i32 %i.01.i, %6
  br i1 %exitcond.i, label %pr_indent.exit, label %.lr.ph.i

pr_indent.exit:                                   ; preds = %.lr.ph.i, %8
  %10 = getelementptr inbounds %struct.t_energy* %e, i64 %indvars.iv, i32 0
  %11 = load float* %10, align 4, !tbaa !10
  %12 = fpext float %11 to double
  %13 = getelementptr inbounds %struct.t_energy* %e, i64 %indvars.iv, i32 1
  %14 = load double* %13, align 8, !tbaa !12
  %15 = getelementptr inbounds %struct.t_energy* %e, i64 %indvars.iv, i32 2
  %16 = load double* %15, align 8, !tbaa !13
  %17 = getelementptr inbounds %struct.t_energy* %e, i64 %indvars.iv, i32 3
  %18 = load float* %17, align 4, !tbaa !14
  %19 = fpext float %18 to double
  %20 = trunc i64 %indvars.iv to i32
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([59 x i8]* @.str15, i64 0, i64 0), i8* %title, i32 %20, double %12, double %14, double %16, double %19) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %20, %7
  br i1 %exitcond, label %.loopexit, label %8

.loopexit:                                        ; preds = %pr_indent.exit, %.critedge, %available.exit
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_grp_opts(%struct.__sFILE* %out, i32 %indent, i8* %title, %struct.t_grpopts* nocapture readonly %opts) #4 {
  %1 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8* %title) #8
  %2 = icmp sgt i32 %indent, 0
  br i1 %2, label %.lr.ph.i, label %pr_indent.exit

.lr.ph.i:                                         ; preds = %0
  %3 = add i32 %indent, -1
  br label %4

; <label>:4                                       ; preds = %4, %.lr.ph.i
  %i.01.i = phi i32 [ 0, %.lr.ph.i ], [ %5, %4 ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct.__sFILE* %out) #6
  %5 = add nuw nsw i32 %i.01.i, 1
  %exitcond.i = icmp eq i32 %i.01.i, %3
  br i1 %exitcond.i, label %pr_indent.exit, label %4

pr_indent.exit:                                   ; preds = %4, %0
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([7 x i8]* @.str16, i64 0, i64 0), i64 6, i64 1, %struct.__sFILE* %out)
  %7 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0
  %8 = load i32* %7, align 4, !tbaa !15
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %pr_indent.exit
  %10 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 4
  br label %11

; <label>:11                                      ; preds = %.lr.ph61, %11
  %indvars.iv74 = phi i64 [ 0, %.lr.ph61 ], [ %indvars.iv.next75, %11 ]
  %12 = load float** %10, align 8, !tbaa !18
  %13 = getelementptr inbounds float* %12, i64 %indvars.iv74
  %14 = load float* %13, align 4, !tbaa !2
  %15 = fpext float %14 to double
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([7 x i8]* @.str17, i64 0, i64 0), double %15) #8
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %17 = load i32* %7, align 4, !tbaa !15
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %indvars.iv.next75, %18
  br i1 %19, label %11, label %._crit_edge62

._crit_edge62:                                    ; preds = %11, %pr_indent.exit
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %out)
  br i1 %2, label %.lr.ph.i16, label %pr_indent.exit20

.lr.ph.i16:                                       ; preds = %._crit_edge62
  %20 = add i32 %indent, -1
  br label %21

; <label>:21                                      ; preds = %21, %.lr.ph.i16
  %i.01.i17 = phi i32 [ 0, %.lr.ph.i16 ], [ %22, %21 ]
  %fputc.i18 = tail call i32 @fputc(i32 32, %struct.__sFILE* %out) #6
  %22 = add nuw nsw i32 %i.01.i17, 1
  %exitcond.i19 = icmp eq i32 %i.01.i17, %20
  br i1 %exitcond.i19, label %pr_indent.exit20, label %21

pr_indent.exit20:                                 ; preds = %21, %._crit_edge62
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str19, i64 0, i64 0), i64 7, i64 1, %struct.__sFILE* %out)
  %24 = load i32* %7, align 4, !tbaa !15
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %pr_indent.exit20
  %26 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 5
  br label %27

; <label>:27                                      ; preds = %.lr.ph58, %27
  %indvars.iv72 = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next73, %27 ]
  %28 = load float** %26, align 8, !tbaa !19
  %29 = getelementptr inbounds float* %28, i64 %indvars.iv72
  %30 = load float* %29, align 4, !tbaa !2
  %31 = fpext float %30 to double
  %32 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([7 x i8]* @.str17, i64 0, i64 0), double %31) #8
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  %33 = load i32* %7, align 4, !tbaa !15
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %indvars.iv.next73, %34
  br i1 %35, label %27, label %._crit_edge59

._crit_edge59:                                    ; preds = %27, %pr_indent.exit20
  %fputc3 = tail call i32 @fputc(i32 10, %struct.__sFILE* %out)
  br i1 %2, label %.lr.ph.i21, label %pr_indent.exit25

.lr.ph.i21:                                       ; preds = %._crit_edge59
  %36 = add i32 %indent, -1
  br label %37

; <label>:37                                      ; preds = %37, %.lr.ph.i21
  %i.01.i22 = phi i32 [ 0, %.lr.ph.i21 ], [ %38, %37 ]
  %fputc.i23 = tail call i32 @fputc(i32 32, %struct.__sFILE* %out) #6
  %38 = add nuw nsw i32 %i.01.i22, 1
  %exitcond.i24 = icmp eq i32 %i.01.i22, %36
  br i1 %exitcond.i24, label %pr_indent.exit25, label %37

pr_indent.exit25:                                 ; preds = %37, %._crit_edge59
  %39 = tail call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str20, i64 0, i64 0), i64 7, i64 1, %struct.__sFILE* %out)
  %40 = load i32* %7, align 4, !tbaa !15
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %.lr.ph55, label %._crit_edge56

.lr.ph55:                                         ; preds = %pr_indent.exit25
  %42 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 6
  br label %43

; <label>:43                                      ; preds = %.lr.ph55, %43
  %indvars.iv70 = phi i64 [ 0, %.lr.ph55 ], [ %indvars.iv.next71, %43 ]
  %44 = load float** %42, align 8, !tbaa !20
  %45 = getelementptr inbounds float* %44, i64 %indvars.iv70
  %46 = load float* %45, align 4, !tbaa !2
  %47 = fpext float %46 to double
  %48 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([7 x i8]* @.str17, i64 0, i64 0), double %47) #8
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  %49 = load i32* %7, align 4, !tbaa !15
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %indvars.iv.next71, %50
  br i1 %51, label %43, label %._crit_edge56

._crit_edge56:                                    ; preds = %43, %pr_indent.exit25
  %fputc6 = tail call i32 @fputc(i32 10, %struct.__sFILE* %out)
  br i1 %2, label %.lr.ph.i26, label %pr_indent.exit30

.lr.ph.i26:                                       ; preds = %._crit_edge56
  %52 = add i32 %indent, -1
  br label %53

; <label>:53                                      ; preds = %53, %.lr.ph.i26
  %i.01.i27 = phi i32 [ 0, %.lr.ph.i26 ], [ %54, %53 ]
  %fputc.i28 = tail call i32 @fputc(i32 32, %struct.__sFILE* %out) #6
  %54 = add nuw nsw i32 %i.01.i27, 1
  %exitcond.i29 = icmp eq i32 %i.01.i27, %52
  br i1 %exitcond.i29, label %pr_indent.exit30, label %53

pr_indent.exit30:                                 ; preds = %53, %._crit_edge56
  %55 = tail call i64 @fwrite(i8* getelementptr inbounds ([6 x i8]* @.str21, i64 0, i64 0), i64 5, i64 1, %struct.__sFILE* %out)
  %56 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 1
  %57 = load i32* %56, align 4, !tbaa !21
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %.preheader41.lr.ph, label %._crit_edge53

.preheader41.lr.ph:                               ; preds = %pr_indent.exit30
  %59 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 7
  br label %.preheader41

.preheader41:                                     ; preds = %.preheader41.lr.ph, %66
  %indvars.iv68 = phi i64 [ 0, %.preheader41.lr.ph ], [ %indvars.iv.next69, %66 ]
  br label %60

; <label>:60                                      ; preds = %60, %.preheader41
  %indvars.iv65 = phi i64 [ 0, %.preheader41 ], [ %indvars.iv.next66, %60 ]
  %61 = load [3 x float]** %59, align 8, !tbaa !22
  %62 = getelementptr inbounds [3 x float]* %61, i64 %indvars.iv68, i64 %indvars.iv65
  %63 = load float* %62, align 4, !tbaa !2
  %64 = fpext float %63 to double
  %65 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([7 x i8]* @.str17, i64 0, i64 0), double %64) #8
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  %exitcond67 = icmp eq i64 %indvars.iv.next66, 3
  br i1 %exitcond67, label %66, label %60

; <label>:66                                      ; preds = %60
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  %67 = load i32* %56, align 4, !tbaa !21
  %68 = sext i32 %67 to i64
  %69 = icmp slt i64 %indvars.iv.next69, %68
  br i1 %69, label %.preheader41, label %._crit_edge53

._crit_edge53:                                    ; preds = %66, %pr_indent.exit30
  %fputc9 = tail call i32 @fputc(i32 10, %struct.__sFILE* %out)
  br i1 %2, label %.lr.ph.i31, label %pr_indent.exit35

.lr.ph.i31:                                       ; preds = %._crit_edge53
  %70 = add i32 %indent, -1
  br label %71

; <label>:71                                      ; preds = %71, %.lr.ph.i31
  %i.01.i32 = phi i32 [ 0, %.lr.ph.i31 ], [ %72, %71 ]
  %fputc.i33 = tail call i32 @fputc(i32 32, %struct.__sFILE* %out) #6
  %72 = add nuw nsw i32 %i.01.i32, 1
  %exitcond.i34 = icmp eq i32 %i.01.i32, %70
  br i1 %exitcond.i34, label %pr_indent.exit35, label %71

pr_indent.exit35:                                 ; preds = %71, %._crit_edge53
  %73 = tail call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str22, i64 0, i64 0), i64 8, i64 1, %struct.__sFILE* %out)
  %74 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 2
  %75 = load i32* %74, align 4, !tbaa !23
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %.preheader.lr.ph, label %._crit_edge50

.preheader.lr.ph:                                 ; preds = %pr_indent.exit35
  %77 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %85
  %indvars.iv63 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next64, %85 ]
  br label %78

; <label>:78                                      ; preds = %78, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %78 ]
  %79 = load [3 x i32]** %77, align 8, !tbaa !24
  %80 = getelementptr inbounds [3 x i32]* %79, i64 %indvars.iv63, i64 %indvars.iv
  %81 = load i32* %80, align 4, !tbaa !8
  %82 = icmp ne i32 %81, 0
  %83 = select i1 %82, i8* getelementptr inbounds ([2 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str25, i64 0, i64 0)
  %84 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([7 x i8]* @.str23, i64 0, i64 0), i8* %83) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %85, label %78

; <label>:85                                      ; preds = %78
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  %86 = load i32* %74, align 4, !tbaa !23
  %87 = sext i32 %86 to i64
  %88 = icmp slt i64 %indvars.iv.next64, %87
  br i1 %88, label %.preheader, label %._crit_edge50

._crit_edge50:                                    ; preds = %85, %pr_indent.exit35
  %fputc12 = tail call i32 @fputc(i32 10, %struct.__sFILE* %out)
  %89 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 3
  %90 = load i32* %89, align 4, !tbaa !25
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %.lr.ph46, label %._crit_edge47

.lr.ph46:                                         ; preds = %._crit_edge50
  %92 = add i32 %indent, -1
  %93 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 9
  br label %94

; <label>:94                                      ; preds = %.lr.ph46, %._crit_edge
  %i.543 = phi i32 [ 0, %.lr.ph46 ], [ %110, %._crit_edge ]
  br i1 %2, label %.lr.ph.i36, label %pr_indent.exit40

.lr.ph.i36:                                       ; preds = %94, %.lr.ph.i36
  %i.01.i37 = phi i32 [ %95, %.lr.ph.i36 ], [ 0, %94 ]
  %fputc.i38 = tail call i32 @fputc(i32 32, %struct.__sFILE* %out) #6
  %95 = add nuw nsw i32 %i.01.i37, 1
  %exitcond.i39 = icmp eq i32 %i.01.i37, %92
  br i1 %exitcond.i39, label %pr_indent.exit40, label %.lr.ph.i36

pr_indent.exit40:                                 ; preds = %.lr.ph.i36, %94
  %96 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([21 x i8]* @.str26, i64 0, i64 0), i32 %i.543) #8
  %97 = load i32* %89, align 4, !tbaa !25
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %pr_indent.exit40, %.lr.ph
  %99 = phi i32 [ %108, %.lr.ph ], [ %97, %pr_indent.exit40 ]
  %m.242 = phi i32 [ %107, %.lr.ph ], [ 0, %pr_indent.exit40 ]
  %100 = mul nsw i32 %99, %i.543
  %101 = add nsw i32 %100, %m.242
  %102 = sext i32 %101 to i64
  %103 = load i32** %93, align 8, !tbaa !26
  %104 = getelementptr inbounds i32* %103, i64 %102
  %105 = load i32* %104, align 4, !tbaa !8
  %106 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str27, i64 0, i64 0), i32 %105) #8
  %107 = add nuw nsw i32 %m.242, 1
  %108 = load i32* %89, align 4, !tbaa !25
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %pr_indent.exit40
  %fputc15 = tail call i32 @fputc(i32 10, %struct.__sFILE* %out)
  %110 = add nuw nsw i32 %i.543, 1
  %111 = load i32* %89, align 4, !tbaa !25
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %94, label %._crit_edge47

._crit_edge47:                                    ; preds = %._crit_edge, %._crit_edge50
  %113 = tail call i32 @fflush(%struct.__sFILE* %out) #8
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_inputrec(%struct.__sFILE* %fp, i32 %indent, i8* %title, %struct.t_inputrec* %ir) #4 {
  %1 = icmp eq %struct.t_inputrec* %ir, null
  br i1 %1, label %available.exit, label %.critedge

available.exit:                                   ; preds = %0
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* %title) #8
  br label %305

.critedge:                                        ; preds = %0
  %3 = tail call i32 @pr_title(%struct.__sFILE* %fp, i32 %indent, i8* %title) #9
  %4 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 0
  %5 = load i32* %4, align 4, !tbaa !27
  %6 = icmp ugt i32 %5, 5
  br i1 %6, label %11, label %7

; <label>:7                                       ; preds = %.critedge
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds [7 x i8*]* @ei_names, i64 0, i64 %8
  %10 = load i8** %9, align 8, !tbaa !29
  br label %11

; <label>:11                                      ; preds = %.critedge, %7
  %12 = phi i8* [ %10, %7 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %.critedge ]
  tail call fastcc void @pr_str(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([11 x i8]* @.str29, i64 0, i64 0), i8* %12) #9
  %13 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 1
  %14 = load i32* %13, align 4, !tbaa !30
  tail call fastcc void @pr_int(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([7 x i8]* @.str31, i64 0, i64 0), i32 %14) #9
  %15 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 2
  %16 = load i32* %15, align 4, !tbaa !31
  %17 = icmp ugt i32 %16, 1
  br i1 %17, label %22, label %18

; <label>:18                                      ; preds = %11
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds [3 x i8*]* @ens_names, i64 0, i64 %19
  %21 = load i8** %20, align 8, !tbaa !29
  br label %22

; <label>:22                                      ; preds = %11, %18
  %23 = phi i8* [ %21, %18 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %11 ]
  tail call fastcc void @pr_str(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([8 x i8]* @.str32, i64 0, i64 0), i8* %23) #9
  %24 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 3
  %25 = load i32* %24, align 4, !tbaa !32
  tail call fastcc void @pr_int(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([8 x i8]* @.str33, i64 0, i64 0), i32 %25) #9
  %26 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 4
  %27 = load i32* %26, align 4, !tbaa !33
  tail call fastcc void @pr_int(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([7 x i8]* @.str34, i64 0, i64 0), i32 %27) #9
  %28 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 5
  %29 = load i32* %28, align 4, !tbaa !34
  %30 = icmp ugt i32 %29, 1
  br i1 %30, label %35, label %31

; <label>:31                                      ; preds = %22
  %32 = sext i32 %29 to i64
  %33 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %32
  %34 = load i8** %33, align 8, !tbaa !29
  br label %35

; <label>:35                                      ; preds = %22, %31
  %36 = phi i8* [ %34, %31 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %22 ]
  tail call fastcc void @pr_str(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([11 x i8]* @.str35, i64 0, i64 0), i8* %36) #9
  %37 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 6
  %38 = load i32* %37, align 4, !tbaa !35
  tail call fastcc void @pr_int(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([11 x i8]* @.str36, i64 0, i64 0), i32 %38) #9
  %39 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 7
  %40 = load i32* %39, align 4, !tbaa !36
  tail call fastcc void @pr_int(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([8 x i8]* @.str37, i64 0, i64 0), i32 %40) #9
  %41 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 8
  %42 = load i32* %41, align 4, !tbaa !37
  tail call fastcc void @pr_int(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([7 x i8]* @.str38, i64 0, i64 0), i32 %42) #9
  %43 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 9
  %44 = load i32* %43, align 4, !tbaa !38
  tail call fastcc void @pr_int(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([8 x i8]* @.str39, i64 0, i64 0), i32 %44) #9
  %45 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 10
  %46 = load i32* %45, align 4, !tbaa !39
  tail call fastcc void @pr_int(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([8 x i8]* @.str40, i64 0, i64 0), i32 %46) #9
  %47 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 11
  %48 = load i32* %47, align 4, !tbaa !40
  tail call fastcc void @pr_int(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([8 x i8]* @.str41, i64 0, i64 0), i32 %48) #9
  %49 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 12
  %50 = load i32* %49, align 4, !tbaa !41
  tail call fastcc void @pr_int(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([10 x i8]* @.str42, i64 0, i64 0), i32 %50) #9
  %51 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 13
  %52 = load i32* %51, align 4, !tbaa !42
  tail call fastcc void @pr_int(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([10 x i8]* @.str43, i64 0, i64 0), i32 %52) #9
  %53 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 14
  %54 = load float* %53, align 4, !tbaa !43
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([7 x i8]* @.str44, i64 0, i64 0), float %54) #9
  %55 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %56 = load float* %55, align 4, !tbaa !44
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([8 x i8]* @.str45, i64 0, i64 0), float %56) #9
  %57 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 16
  %58 = load float* %57, align 4, !tbaa !45
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([8 x i8]* @.str46, i64 0, i64 0), float %58) #9
  %59 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 17
  %60 = load i32* %59, align 4, !tbaa !46
  tail call fastcc void @pr_int(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([4 x i8]* @.str47, i64 0, i64 0), i32 %60) #9
  %61 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 18
  %62 = load i32* %61, align 4, !tbaa !47
  tail call fastcc void @pr_int(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([4 x i8]* @.str48, i64 0, i64 0), i32 %62) #9
  %63 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 19
  %64 = load i32* %63, align 4, !tbaa !48
  tail call fastcc void @pr_int(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([4 x i8]* @.str49, i64 0, i64 0), i32 %64) #9
  %65 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 20
  %66 = load i32* %65, align 4, !tbaa !49
  tail call fastcc void @pr_int(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([10 x i8]* @.str50, i64 0, i64 0), i32 %66) #9
  %67 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 21
  %68 = load float* %67, align 4, !tbaa !50
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([11 x i8]* @.str51, i64 0, i64 0), float %68) #9
  %69 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 22
  %70 = load i32* %69, align 4, !tbaa !51
  %71 = sitofp i32 %70 to float
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([15 x i8]* @.str52, i64 0, i64 0), float %71) #9
  %72 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 23
  %73 = load i32* %72, align 4, !tbaa !52
  %74 = sitofp i32 %73 to float
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([16 x i8]* @.str53, i64 0, i64 0), float %74) #9
  %75 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 24
  %76 = load i32* %75, align 4, !tbaa !53
  %77 = icmp ugt i32 %76, 1
  br i1 %77, label %82, label %78

; <label>:78                                      ; preds = %35
  %79 = sext i32 %76 to i64
  %80 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %79
  %81 = load i8** %80, align 8, !tbaa !29
  br label %82

; <label>:82                                      ; preds = %35, %78
  %83 = phi i8* [ %81, %78 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %35 ]
  tail call fastcc void @pr_str(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([13 x i8]* @.str54, i64 0, i64 0), i8* %83) #9
  %84 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 25
  %85 = load i32* %84, align 4, !tbaa !54
  %86 = icmp ugt i32 %85, 1
  br i1 %86, label %91, label %87

; <label>:87                                      ; preds = %82
  %88 = sext i32 %85 to i64
  %89 = getelementptr inbounds [3 x i8*]* @epbc_names, i64 0, i64 %88
  %90 = load i8** %89, align 8, !tbaa !29
  br label %91

; <label>:91                                      ; preds = %82, %87
  %92 = phi i8* [ %90, %87 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %82 ]
  tail call fastcc void @pr_str(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([5 x i8]* @.str55, i64 0, i64 0), i8* %92) #9
  %93 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 26
  %94 = load i32* %93, align 4, !tbaa !55
  %95 = icmp ugt i32 %94, 1
  br i1 %95, label %100, label %96

; <label>:96                                      ; preds = %91
  %97 = sext i32 %94 to i64
  %98 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %97
  %99 = load i8** %98, align 8, !tbaa !29
  br label %100

; <label>:100                                     ; preds = %91, %96
  %101 = phi i8* [ %99, %96 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %91 ]
  tail call fastcc void @pr_str(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([10 x i8]* @.str56, i64 0, i64 0), i8* %101) #9
  %102 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 67
  %103 = load i32* %102, align 4, !tbaa !56
  %104 = icmp ugt i32 %103, 1
  br i1 %104, label %109, label %105

; <label>:105                                     ; preds = %100
  %106 = sext i32 %103 to i64
  %107 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %106
  %108 = load i8** %107, align 8, !tbaa !29
  br label %109

; <label>:109                                     ; preds = %100, %105
  %110 = phi i8* [ %108, %105 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %100 ]
  tail call fastcc void @pr_str(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([10 x i8]* @.str57, i64 0, i64 0), i8* %110) #9
  %111 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 27
  %112 = load i32* %111, align 4, !tbaa !57
  %113 = icmp ugt i32 %112, 3
  br i1 %113, label %118, label %114

; <label>:114                                     ; preds = %109
  %115 = sext i32 %112 to i64
  %116 = getelementptr inbounds [5 x i8*]* @etcoupl_names, i64 0, i64 %115
  %117 = load i8** %116, align 8, !tbaa !29
  br label %118

; <label>:118                                     ; preds = %109, %114
  %119 = phi i8* [ %117, %114 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %109 ]
  tail call fastcc void @pr_str(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([4 x i8]* @.str58, i64 0, i64 0), i8* %119) #9
  %120 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 28
  %121 = load i32* %120, align 4, !tbaa !58
  %122 = icmp ugt i32 %121, 3
  br i1 %122, label %127, label %123

; <label>:123                                     ; preds = %118
  %124 = sext i32 %121 to i64
  %125 = getelementptr inbounds [5 x i8*]* @epcoupl_names, i64 0, i64 %124
  %126 = load i8** %125, align 8, !tbaa !29
  br label %127

; <label>:127                                     ; preds = %118, %123
  %128 = phi i8* [ %126, %123 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %118 ]
  tail call fastcc void @pr_str(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([4 x i8]* @.str59, i64 0, i64 0), i8* %128) #9
  %129 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 29
  %130 = load i32* %129, align 4, !tbaa !59
  %131 = icmp ugt i32 %130, 3
  br i1 %131, label %136, label %132

; <label>:132                                     ; preds = %127
  %133 = sext i32 %130 to i64
  %134 = getelementptr inbounds [5 x i8*]* @epcoupltype_names, i64 0, i64 %133
  %135 = load i8** %134, align 8, !tbaa !29
  br label %136

; <label>:136                                     ; preds = %127, %132
  %137 = phi i8* [ %135, %132 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %127 ]
  tail call fastcc void @pr_str(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([8 x i8]* @.str60, i64 0, i64 0), i8* %137) #9
  %138 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 30
  %139 = load float* %138, align 4, !tbaa !60
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([6 x i8]* @.str61, i64 0, i64 0), float %139) #9
  %140 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 0
  tail call void @pr_rvecs(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([6 x i8]* @.str62, i64 0, i64 0), [3 x float]* %140, i32 3) #9
  %141 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 0
  tail call void @pr_rvecs(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([9 x i8]* @.str63, i64 0, i64 0), [3 x float]* %141, i32 3) #9
  %142 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 33
  %143 = load i32* %142, align 4, !tbaa !61
  %144 = icmp ugt i32 %143, 1
  br i1 %144, label %149, label %145

; <label>:145                                     ; preds = %136
  %146 = sext i32 %143 to i64
  %147 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %146
  %148 = load i8** %147, align 8, !tbaa !29
  br label %149

; <label>:149                                     ; preds = %136, %145
  %150 = phi i8* [ %148, %145 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %136 ]
  tail call fastcc void @pr_str(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([8 x i8]* @.str64, i64 0, i64 0), i8* %150) #9
  %151 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 34
  %152 = load float* %151, align 4, !tbaa !62
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([15 x i8]* @.str65, i64 0, i64 0), float %152) #9
  %153 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 35
  %154 = load float* %153, align 4, !tbaa !63
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([6 x i8]* @.str66, i64 0, i64 0), float %154) #9
  %155 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 36
  %156 = load i32* %155, align 4, !tbaa !64
  %157 = icmp ugt i32 %156, 9
  br i1 %157, label %162, label %158

; <label>:158                                     ; preds = %149
  %159 = sext i32 %156 to i64
  %160 = getelementptr inbounds [11 x i8*]* @eel_names, i64 0, i64 %159
  %161 = load i8** %160, align 8, !tbaa !29
  br label %162

; <label>:162                                     ; preds = %149, %158
  %163 = phi i8* [ %161, %158 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %149 ]
  tail call fastcc void @pr_str(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([12 x i8]* @.str67, i64 0, i64 0), i8* %163) #9
  %164 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37
  %165 = load float* %164, align 4, !tbaa !65
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([16 x i8]* @.str68, i64 0, i64 0), float %165) #9
  %166 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38
  %167 = load float* %166, align 4, !tbaa !66
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([9 x i8]* @.str69, i64 0, i64 0), float %167) #9
  %168 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 39
  %169 = load i32* %168, align 4, !tbaa !67
  %170 = icmp ugt i32 %169, 3
  br i1 %170, label %175, label %171

; <label>:171                                     ; preds = %162
  %172 = sext i32 %169 to i64
  %173 = getelementptr inbounds [5 x i8*]* @evdw_names, i64 0, i64 %172
  %174 = load i8** %173, align 8, !tbaa !29
  br label %175

; <label>:175                                     ; preds = %162, %171
  %176 = phi i8* [ %174, %171 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %162 ]
  tail call fastcc void @pr_str(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([8 x i8]* @.str70, i64 0, i64 0), i8* %176) #9
  %177 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 40
  %178 = load float* %177, align 4, !tbaa !68
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([12 x i8]* @.str71, i64 0, i64 0), float %178) #9
  %179 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 41
  %180 = load float* %179, align 4, !tbaa !69
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([5 x i8]* @.str72, i64 0, i64 0), float %180) #9
  %181 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 42
  %182 = load float* %181, align 4, !tbaa !70
  %fabsf = tail call float @fabsf(float %182) #10
  %183 = fpext float %fabsf to double
  %184 = fcmp ogt double %183, 1.200000e-38
  br i1 %184, label %185, label %186

; <label>:185                                     ; preds = %175
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([10 x i8]* @.str73, i64 0, i64 0), float %182) #9
  br label %187

; <label>:186                                     ; preds = %175
  tail call fastcc void @pr_str(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([10 x i8]* @.str73, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str28, i64 0, i64 0)) #9
  br label %187

; <label>:187                                     ; preds = %186, %185
  %188 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 43
  %189 = load i32* %188, align 4, !tbaa !71
  %190 = icmp ugt i32 %189, 2
  br i1 %190, label %195, label %191

; <label>:191                                     ; preds = %187
  %192 = sext i32 %189 to i64
  %193 = getelementptr inbounds [4 x i8*]* @edispc_names, i64 0, i64 %192
  %194 = load i8** %193, align 8, !tbaa !29
  br label %195

; <label>:195                                     ; preds = %187, %191
  %196 = phi i8* [ %194, %191 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %187 ]
  tail call fastcc void @pr_str(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([9 x i8]* @.str74, i64 0, i64 0), i8* %196) #9
  %197 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 45
  %198 = load float* %197, align 4, !tbaa !72
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([8 x i8]* @.str75, i64 0, i64 0), float %198) #9
  %199 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46
  %200 = load i32* %199, align 4, !tbaa !73
  %201 = icmp ugt i32 %200, 1
  br i1 %201, label %206, label %202

; <label>:202                                     ; preds = %195
  %203 = sext i32 %200 to i64
  %204 = getelementptr inbounds [3 x i8*]* @efep_names, i64 0, i64 %203
  %205 = load i8** %204, align 8, !tbaa !29
  br label %206

; <label>:206                                     ; preds = %195, %202
  %207 = phi i8* [ %205, %202 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %195 ]
  tail call fastcc void @pr_str(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([12 x i8]* @.str76, i64 0, i64 0), i8* %207) #9
  %208 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 47
  %209 = load float* %208, align 4, !tbaa !74
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([12 x i8]* @.str77, i64 0, i64 0), float %209) #9
  %210 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 49
  %211 = load float* %210, align 4, !tbaa !75
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([9 x i8]* @.str78, i64 0, i64 0), float %211) #9
  %212 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 50
  %213 = load float* %212, align 4, !tbaa !76
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([9 x i8]* @.str79, i64 0, i64 0), float %213) #9
  %214 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 48
  %215 = load float* %214, align 4, !tbaa !77
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([13 x i8]* @.str80, i64 0, i64 0), float %215) #9
  %216 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 52
  %217 = load i32* %216, align 4, !tbaa !78
  %218 = icmp ugt i32 %217, 1
  br i1 %218, label %223, label %219

; <label>:219                                     ; preds = %206
  %220 = sext i32 %217 to i64
  %221 = getelementptr inbounds [3 x i8*]* @edisreweighting_names, i64 0, i64 %220
  %222 = load i8** %221, align 8, !tbaa !29
  br label %223

; <label>:223                                     ; preds = %206, %219
  %224 = phi i8* [ %222, %219 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %206 ]
  tail call fastcc void @pr_str(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([16 x i8]* @.str81, i64 0, i64 0), i8* %224) #9
  %225 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 53
  %226 = load i32* %225, align 4, !tbaa !79
  %227 = icmp ugt i32 %226, 1
  br i1 %227, label %232, label %228

; <label>:228                                     ; preds = %223
  %229 = sext i32 %226 to i64
  %230 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %229
  %231 = load i8** %230, align 8, !tbaa !29
  br label %232

; <label>:232                                     ; preds = %223, %228
  %233 = phi i8* [ %231, %228 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %223 ]
  tail call fastcc void @pr_str(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([12 x i8]* @.str82, i64 0, i64 0), i8* %233) #9
  %234 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 51
  %235 = load float* %234, align 4, !tbaa !80
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([6 x i8]* @.str83, i64 0, i64 0), float %235) #9
  %236 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 55
  %237 = load float* %236, align 4, !tbaa !81
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([7 x i8]* @.str84, i64 0, i64 0), float %237) #9
  %238 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 54
  %239 = load i32* %238, align 4, !tbaa !82
  %240 = sitofp i32 %239 to float
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([12 x i8]* @.str85, i64 0, i64 0), float %240) #9
  %241 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 56
  %242 = load float* %241, align 4, !tbaa !83
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([10 x i8]* @.str86, i64 0, i64 0), float %242) #9
  %243 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 57
  %244 = load float* %243, align 4, !tbaa !84
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([11 x i8]* @.str87, i64 0, i64 0), float %244) #9
  %245 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 58
  %246 = load i32* %245, align 4, !tbaa !85
  %247 = sitofp i32 %246 to float
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([12 x i8]* @.str88, i64 0, i64 0), float %247) #9
  %248 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 59
  %249 = load float* %248, align 4, !tbaa !86
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([12 x i8]* @.str89, i64 0, i64 0), float %249) #9
  %250 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 60
  %251 = load float* %250, align 4, !tbaa !87
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([7 x i8]* @.str90, i64 0, i64 0), float %251) #9
  %252 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 61
  %253 = load i32* %252, align 4, !tbaa !88
  tail call fastcc void @pr_int(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([6 x i8]* @.str91, i64 0, i64 0), i32 %253) #9
  %254 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 62
  %255 = load i32* %254, align 4, !tbaa !89
  %256 = sitofp i32 %255 to float
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([12 x i8]* @.str92, i64 0, i64 0), float %256) #9
  %257 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 63
  %258 = load i32* %257, align 4, !tbaa !90
  tail call fastcc void @pr_int(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([11 x i8]* @.str93, i64 0, i64 0), i32 %258) #9
  %259 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 64
  %260 = load i32* %259, align 4, !tbaa !91
  %261 = icmp ugt i32 %260, 1
  br i1 %261, label %266, label %262

; <label>:262                                     ; preds = %232
  %263 = sext i32 %260 to i64
  %264 = getelementptr inbounds [3 x i8*]* @eshake_names, i64 0, i64 %263
  %265 = load i8** %264, align 8, !tbaa !29
  br label %266

; <label>:266                                     ; preds = %232, %262
  %267 = phi i8* [ %265, %262 ], [ getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), %232 ]
  tail call fastcc void @pr_str(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([9 x i8]* @.str94, i64 0, i64 0), i8* %267) #9
  %268 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 44
  %269 = load float* %268, align 4, !tbaa !92
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([10 x i8]* @.str95, i64 0, i64 0), float %269) #9
  %270 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 65
  %271 = load i32* %270, align 4, !tbaa !93
  tail call fastcc void @pr_int(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([12 x i8]* @.str96, i64 0, i64 0), i32 %271) #9
  %272 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 66
  %273 = load float* %272, align 4, !tbaa !94
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([16 x i8]* @.str97, i64 0, i64 0), float %273) #9
  %274 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 68
  %275 = load float* %274, align 4, !tbaa !95
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([8 x i8]* @.str98, i64 0, i64 0), float %275) #9
  %276 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 69
  %277 = load float* %276, align 4, !tbaa !96
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([8 x i8]* @.str99, i64 0, i64 0), float %277) #9
  %278 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 70
  %279 = load i32* %278, align 4, !tbaa !97
  tail call fastcc void @pr_int(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([8 x i8]* @.str100, i64 0, i64 0), i32 %279) #9
  %280 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 71
  %281 = load float* %280, align 4, !tbaa !98
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([10 x i8]* @.str101, i64 0, i64 0), float %281) #9
  %282 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 72
  %283 = load i32* %282, align 4, !tbaa !99
  tail call fastcc void @pr_int(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([9 x i8]* @.str102, i64 0, i64 0), i32 %283) #9
  %284 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 73
  %285 = load i32* %284, align 4, !tbaa !100
  tail call fastcc void @pr_int(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([9 x i8]* @.str103, i64 0, i64 0), i32 %285) #9
  %286 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 74
  %287 = load i32* %286, align 4, !tbaa !101
  tail call fastcc void @pr_int(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([9 x i8]* @.str104, i64 0, i64 0), i32 %287) #9
  %288 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 75
  %289 = load i32* %288, align 4, !tbaa !102
  tail call fastcc void @pr_int(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([9 x i8]* @.str105, i64 0, i64 0), i32 %289) #9
  %290 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 76
  %291 = load float* %290, align 4, !tbaa !103
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([10 x i8]* @.str106, i64 0, i64 0), float %291) #9
  %292 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 77
  %293 = load float* %292, align 4, !tbaa !104
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([10 x i8]* @.str107, i64 0, i64 0), float %293) #9
  %294 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 78
  %295 = load float* %294, align 4, !tbaa !105
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([10 x i8]* @.str108, i64 0, i64 0), float %295) #9
  %296 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 79
  %297 = load float* %296, align 4, !tbaa !106
  tail call fastcc void @pr_real(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([10 x i8]* @.str109, i64 0, i64 0), float %297) #9
  %298 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80
  tail call void @pr_grp_opts(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([8 x i8]* @.str110, i64 0, i64 0), %struct.t_grpopts* %298) #9
  %299 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 0
  tail call fastcc void @pr_cosine(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([9 x i8]* @.str111, i64 0, i64 0), %struct.t_cosines* %299) #9
  %300 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 0
  tail call fastcc void @pr_cosine(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([10 x i8]* @.str112, i64 0, i64 0), %struct.t_cosines* %300) #9
  %301 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 1
  tail call fastcc void @pr_cosine(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([9 x i8]* @.str113, i64 0, i64 0), %struct.t_cosines* %301) #9
  %302 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 1
  tail call fastcc void @pr_cosine(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([10 x i8]* @.str114, i64 0, i64 0), %struct.t_cosines* %302) #9
  %303 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 2
  tail call fastcc void @pr_cosine(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([9 x i8]* @.str115, i64 0, i64 0), %struct.t_cosines* %303) #9
  %304 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 2
  tail call fastcc void @pr_cosine(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([10 x i8]* @.str116, i64 0, i64 0), %struct.t_cosines* %304) #9
  br label %305

; <label>:305                                     ; preds = %available.exit, %266
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @pr_str(%struct.__sFILE* nocapture %fp, i32 %indent, i8* %title, i8* %s) #4 {
  %1 = icmp sgt i32 %indent, 0
  br i1 %1, label %.lr.ph.i, label %pr_indent.exit

.lr.ph.i:                                         ; preds = %0
  %2 = add i32 %indent, -1
  br label %3

; <label>:3                                       ; preds = %3, %.lr.ph.i
  %i.01.i = phi i32 [ 0, %.lr.ph.i ], [ %4, %3 ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %4 = add nuw nsw i32 %i.01.i, 1
  %exitcond.i = icmp eq i32 %i.01.i, %2
  br i1 %exitcond.i, label %pr_indent.exit, label %3

pr_indent.exit:                                   ; preds = %3, %0
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([12 x i8]* @.str165, i64 0, i64 0), i8* %title, i8* %s) #8
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @pr_int(%struct.__sFILE* nocapture %fp, i32 %indent, i8* %title, i32 %i) #4 {
  %1 = icmp sgt i32 %indent, 0
  br i1 %1, label %.lr.ph.i, label %pr_indent.exit

.lr.ph.i:                                         ; preds = %0
  %2 = add i32 %indent, -1
  br label %3

; <label>:3                                       ; preds = %3, %.lr.ph.i
  %i.01.i = phi i32 [ 0, %.lr.ph.i ], [ %4, %3 ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %4 = add nuw nsw i32 %i.01.i, 1
  %exitcond.i = icmp eq i32 %i.01.i, %2
  br i1 %exitcond.i, label %pr_indent.exit, label %3

pr_indent.exit:                                   ; preds = %3, %0
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([12 x i8]* @.str166, i64 0, i64 0), i8* %title, i32 %i) #8
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @pr_real(%struct.__sFILE* nocapture %fp, i32 %indent, i8* %title, float %r) #4 {
  %1 = icmp sgt i32 %indent, 0
  br i1 %1, label %.lr.ph.i, label %pr_indent.exit

.lr.ph.i:                                         ; preds = %0
  %2 = add i32 %indent, -1
  br label %3

; <label>:3                                       ; preds = %3, %.lr.ph.i
  %i.01.i = phi i32 [ 0, %.lr.ph.i ], [ %4, %3 ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %4 = add nuw nsw i32 %i.01.i, 1
  %exitcond.i = icmp eq i32 %i.01.i, %2
  br i1 %exitcond.i, label %pr_indent.exit, label %3

pr_indent.exit:                                   ; preds = %3, %0
  %5 = fpext float %r to double
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([12 x i8]* @.str167, i64 0, i64 0), i8* %title, double %5) #8
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @pr_cosine(%struct.__sFILE* nocapture %fp, i32 %indent, i8* %title, %struct.t_cosines* nocapture readonly %cos) #4 {
  %1 = tail call i32 @pr_title(%struct.__sFILE* %fp, i32 %indent, i8* %title) #9
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %.lr.ph.i, label %pr_indent.exit

.lr.ph.i:                                         ; preds = %0
  %3 = add i32 %1, -1
  br label %4

; <label>:4                                       ; preds = %4, %.lr.ph.i
  %i.01.i = phi i32 [ 0, %.lr.ph.i ], [ %5, %4 ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %5 = add nuw nsw i32 %i.01.i, 1
  %exitcond.i = icmp eq i32 %i.01.i, %3
  br i1 %exitcond.i, label %pr_indent.exit, label %4

pr_indent.exit:                                   ; preds = %4, %0
  %6 = getelementptr inbounds %struct.t_cosines* %cos, i64 0, i32 0
  %7 = load i32* %6, align 4, !tbaa !107
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str168, i64 0, i64 0), i32 %7) #8
  %9 = load i32* %6, align 4, !tbaa !107
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %45

; <label>:11                                      ; preds = %pr_indent.exit
  %12 = icmp sgt i32 %1, -2
  br i1 %12, label %.lr.ph.i4, label %pr_indent.exit8

.lr.ph.i4:                                        ; preds = %11
  %13 = add i32 %1, 1
  br label %14

; <label>:14                                      ; preds = %14, %.lr.ph.i4
  %i.01.i5 = phi i32 [ 0, %.lr.ph.i4 ], [ %15, %14 ]
  %fputc.i6 = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %15 = add nuw nsw i32 %i.01.i5, 1
  %exitcond.i7 = icmp eq i32 %i.01.i5, %13
  br i1 %exitcond.i7, label %pr_indent.exit8, label %14

pr_indent.exit8:                                  ; preds = %14, %11
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str169, i64 0, i64 0), i64 3, i64 1, %struct.__sFILE* %fp)
  %17 = load i32* %6, align 4, !tbaa !107
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %.lr.ph16, label %._crit_edge17

.lr.ph16:                                         ; preds = %pr_indent.exit8
  %19 = getelementptr inbounds %struct.t_cosines* %cos, i64 0, i32 1
  br label %20

; <label>:20                                      ; preds = %.lr.ph16, %20
  %indvars.iv18 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next19, %20 ]
  %21 = load float** %19, align 8, !tbaa !109
  %22 = getelementptr inbounds float* %21, i64 %indvars.iv18
  %23 = load float* %22, align 4, !tbaa !2
  %24 = fpext float %23 to double
  %25 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str170, i64 0, i64 0), double %24) #8
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %26 = load i32* %6, align 4, !tbaa !107
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %indvars.iv.next19, %27
  br i1 %28, label %20, label %._crit_edge17

._crit_edge17:                                    ; preds = %20, %pr_indent.exit8
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp)
  br i1 %12, label %.lr.ph.i9, label %pr_indent.exit13

.lr.ph.i9:                                        ; preds = %._crit_edge17
  %29 = add i32 %1, 1
  br label %30

; <label>:30                                      ; preds = %30, %.lr.ph.i9
  %i.01.i10 = phi i32 [ 0, %.lr.ph.i9 ], [ %31, %30 ]
  %fputc.i11 = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %31 = add nuw nsw i32 %i.01.i10, 1
  %exitcond.i12 = icmp eq i32 %i.01.i10, %29
  br i1 %exitcond.i12, label %pr_indent.exit13, label %30

pr_indent.exit13:                                 ; preds = %30, %._crit_edge17
  %32 = tail call i64 @fwrite(i8* getelementptr inbounds ([6 x i8]* @.str171, i64 0, i64 0), i64 5, i64 1, %struct.__sFILE* %fp)
  %33 = load i32* %6, align 4, !tbaa !107
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %pr_indent.exit13
  %35 = getelementptr inbounds %struct.t_cosines* %cos, i64 0, i32 2
  br label %36

; <label>:36                                      ; preds = %.lr.ph, %36
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %36 ]
  %37 = load float** %35, align 8, !tbaa !110
  %38 = getelementptr inbounds float* %37, i64 %indvars.iv
  %39 = load float* %38, align 4, !tbaa !2
  %40 = fpext float %39 to double
  %41 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str170, i64 0, i64 0), double %40) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %42 = load i32* %6, align 4, !tbaa !107
  %43 = sext i32 %42 to i64
  %44 = icmp slt i64 %indvars.iv.next, %43
  br i1 %44, label %36, label %._crit_edge

._crit_edge:                                      ; preds = %36, %pr_indent.exit13
  %fputc3 = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp)
  br label %45

; <label>:45                                      ; preds = %._crit_edge, %pr_indent.exit
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_iparams(%struct.__sFILE* %fp, i32 %ftype, %union.t_iparams* %iparams) #4 {
  switch i32 %ftype, label %245 [
    i32 6, label %2
    i32 7, label %2
    i32 14, label %16
    i32 0, label %27
    i32 1, label %27
    i32 5, label %27
    i32 10, label %41
    i32 2, label %55
    i32 3, label %66
    i32 4, label %77
    i32 19, label %78
    i32 13, label %98
    i32 11, label %106
    i32 8, label %120
    i32 25, label %120
    i32 26, label %120
    i32 21, label %137
    i32 23, label %157
    i32 20, label %176
    i32 9, label %.preheader
    i32 27, label %205
    i32 28, label %205
    i32 29, label %213
    i32 30, label %221
    i32 31, label %226
    i32 32, label %226
    i32 33, label %226
    i32 34, label %234
    i32 35, label %234
  ]

.preheader:                                       ; preds = %0
  %1 = bitcast %union.t_iparams* %iparams to [6 x float]*
  br label %196

; <label>:2                                       ; preds = %0, %0
  %3 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %4 = load float* %3, align 4, !tbaa !111
  %5 = fpext float %4 to double
  %6 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %7 = load float* %6, align 4, !tbaa !113
  %8 = fpext float %7 to double
  %9 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %10 = load float* %9, align 4, !tbaa !114
  %11 = fpext float %10 to double
  %12 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %13 = load float* %12, align 4, !tbaa !115
  %14 = fpext float %13 to double
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([48 x i8]* @.str172, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str117, i64 0, i64 0), double %5, i8* getelementptr inbounds ([3 x i8]* @.str118, i64 0, i64 0), double %8, i8* getelementptr inbounds ([3 x i8]* @.str117, i64 0, i64 0), double %11, i8* getelementptr inbounds ([3 x i8]* @.str118, i64 0, i64 0), double %14) #8
  br label %249

; <label>:16                                      ; preds = %0
  %17 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %18 = load float* %17, align 4, !tbaa !116
  %19 = fpext float %18 to double
  %20 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %21 = load float* %20, align 4, !tbaa !118
  %22 = fpext float %21 to double
  %23 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %24 = load float* %23, align 4, !tbaa !119
  %25 = fpext float %24 to double
  %26 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([30 x i8]* @.str119, i64 0, i64 0), double %19, double %22, double %25) #8
  br label %249

; <label>:27                                      ; preds = %0, %0, %0
  %28 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %29 = load float* %28, align 4, !tbaa !111
  %30 = fpext float %29 to double
  %31 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %32 = load float* %31, align 4, !tbaa !113
  %33 = fpext float %32 to double
  %34 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %35 = load float* %34, align 4, !tbaa !114
  %36 = fpext float %35 to double
  %37 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %38 = load float* %37, align 4, !tbaa !115
  %39 = fpext float %38 to double
  %40 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([48 x i8]* @.str172, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str120, i64 0, i64 0), double %30, i8* getelementptr inbounds ([3 x i8]* @.str121, i64 0, i64 0), double %33, i8* getelementptr inbounds ([3 x i8]* @.str120, i64 0, i64 0), double %36, i8* getelementptr inbounds ([3 x i8]* @.str121, i64 0, i64 0), double %39) #8
  br label %249

; <label>:41                                      ; preds = %0
  %42 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %43 = load float* %42, align 4, !tbaa !111
  %44 = fpext float %43 to double
  %45 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %46 = load float* %45, align 4, !tbaa !113
  %47 = fpext float %46 to double
  %48 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %49 = load float* %48, align 4, !tbaa !114
  %50 = fpext float %49 to double
  %51 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %52 = load float* %51, align 4, !tbaa !115
  %53 = fpext float %52 to double
  %54 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([48 x i8]* @.str172, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str122, i64 0, i64 0), double %44, i8* getelementptr inbounds ([3 x i8]* @.str123, i64 0, i64 0), double %47, i8* getelementptr inbounds ([3 x i8]* @.str122, i64 0, i64 0), double %50, i8* getelementptr inbounds ([3 x i8]* @.str123, i64 0, i64 0), double %53) #8
  br label %249

; <label>:55                                      ; preds = %0
  %56 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %57 = load float* %56, align 4, !tbaa !116
  %58 = fpext float %57 to double
  %59 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %60 = load float* %59, align 4, !tbaa !118
  %61 = fpext float %60 to double
  %62 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %63 = load float* %62, align 4, !tbaa !119
  %64 = fpext float %63 to double
  %65 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str124, i64 0, i64 0), double %58, double %61, double %64) #8
  br label %249

; <label>:66                                      ; preds = %0
  %67 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %68 = load float* %67, align 4, !tbaa !116
  %69 = fpext float %68 to double
  %70 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %71 = load float* %70, align 4, !tbaa !118
  %72 = fpext float %71 to double
  %73 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %74 = load float* %73, align 4, !tbaa !119
  %75 = fpext float %74 to double
  %76 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str125, i64 0, i64 0), double %69, double %72, double %75) #8
  br label %249

; <label>:77                                      ; preds = %0
  %fputc3 = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp)
  br label %249

; <label>:78                                      ; preds = %0
  %79 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %80 = load float* %79, align 4, !tbaa !120
  %81 = fpext float %80 to double
  %82 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %83 = load float* %82, align 4, !tbaa !122
  %84 = fpext float %83 to double
  %85 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %86 = load float* %85, align 4, !tbaa !123
  %87 = fpext float %86 to double
  %88 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %89 = load float* %88, align 4, !tbaa !124
  %90 = fpext float %89 to double
  %91 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4
  %92 = load float* %91, align 4, !tbaa !125
  %93 = fpext float %92 to double
  %94 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5
  %95 = load float* %94, align 4, !tbaa !126
  %96 = fpext float %95 to double
  %97 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([66 x i8]* @.str126, i64 0, i64 0), double %81, double %84, double %87, double %90, double %93, double %96) #8
  br label %249

; <label>:98                                      ; preds = %0
  %99 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %100 = load float* %99, align 4, !tbaa !127
  %101 = fpext float %100 to double
  %102 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %103 = load float* %102, align 4, !tbaa !129
  %104 = fpext float %103 to double
  %105 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([23 x i8]* @.str127, i64 0, i64 0), double %101, double %104) #8
  br label %249

; <label>:106                                     ; preds = %0
  %107 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %108 = load float* %107, align 4, !tbaa !111
  %109 = fpext float %108 to double
  %110 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %111 = load float* %110, align 4, !tbaa !113
  %112 = fpext float %111 to double
  %113 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %114 = load float* %113, align 4, !tbaa !114
  %115 = fpext float %114 to double
  %116 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %117 = load float* %116, align 4, !tbaa !115
  %118 = fpext float %117 to double
  %119 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([50 x i8]* @.str128, i64 0, i64 0), double %109, double %112, double %115, double %118) #8
  br label %249

; <label>:120                                     ; preds = %0, %0, %0
  %121 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %122 = load float* %121, align 4, !tbaa !130
  %123 = fpext float %122 to double
  %124 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %125 = load float* %124, align 4, !tbaa !132
  %126 = fpext float %125 to double
  %127 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %128 = load float* %127, align 4, !tbaa !133
  %129 = fpext float %128 to double
  %130 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4
  %131 = load float* %130, align 4, !tbaa !134
  %132 = fpext float %131 to double
  %133 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %134 = bitcast float* %133 to i32*
  %135 = load i32* %134, align 4, !tbaa !135
  %136 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([59 x i8]* @.str129, i64 0, i64 0), double %123, double %126, double %129, double %132, i32 %135) #8
  br label %249

; <label>:137                                     ; preds = %0
  %138 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5
  %139 = bitcast float* %138 to i32*
  %140 = load i32* %139, align 4, !tbaa !136
  %141 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4
  %142 = bitcast float* %141 to i32*
  %143 = load i32* %142, align 4, !tbaa !138
  %144 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %145 = load float* %144, align 4, !tbaa !139
  %146 = fpext float %145 to double
  %147 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %148 = load float* %147, align 4, !tbaa !140
  %149 = fpext float %148 to double
  %150 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %151 = load float* %150, align 4, !tbaa !141
  %152 = fpext float %151 to double
  %153 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %154 = load float* %153, align 4, !tbaa !142
  %155 = fpext float %154 to double
  %156 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([70 x i8]* @.str130, i64 0, i64 0), i32 %140, i32 %143, double %146, double %149, double %152, double %155) #8
  br label %249

; <label>:157                                     ; preds = %0
  %158 = bitcast %union.t_iparams* %iparams to i32*
  %159 = load i32* %158, align 4, !tbaa !143
  %160 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %161 = bitcast float* %160 to i32*
  %162 = load i32* %161, align 4, !tbaa !145
  %163 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %164 = bitcast float* %163 to i32*
  %165 = load i32* %164, align 4, !tbaa !146
  %166 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %167 = load float* %166, align 4, !tbaa !147
  %168 = fpext float %167 to double
  %169 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 4
  %170 = load float* %169, align 4, !tbaa !148
  %171 = fpext float %170 to double
  %172 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 5
  %173 = load float* %172, align 4, !tbaa !149
  %174 = fpext float %173 to double
  %175 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([63 x i8]* @.str131, i64 0, i64 0), i32 %159, i32 %162, i32 %165, double %168, double %171, double %174) #8
  br label %249

; <label>:176                                     ; preds = %0
  %177 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %178 = load float* %177, align 4, !tbaa !2
  %179 = fpext float %178 to double
  %180 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %181 = load float* %180, align 4, !tbaa !2
  %182 = fpext float %181 to double
  %183 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %184 = load float* %183, align 4, !tbaa !2
  %185 = fpext float %184 to double
  %186 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 3
  %187 = load float* %186, align 4, !tbaa !2
  %188 = fpext float %187 to double
  %189 = getelementptr inbounds float* %186, i64 1
  %190 = load float* %189, align 4, !tbaa !2
  %191 = fpext float %190 to double
  %192 = getelementptr inbounds float* %186, i64 2
  %193 = load float* %192, align 4, !tbaa !2
  %194 = fpext float %193 to double
  %195 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([56 x i8]* @.str132, i64 0, i64 0), double %179, double %182, double %185, double %188, double %191, double %194) #8
  br label %249

; <label>:196                                     ; preds = %196, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %196 ]
  %197 = trunc i64 %indvars.iv to i32
  %198 = icmp eq i32 %197, 0
  %199 = select i1 %198, i8* getelementptr inbounds ([1 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0)
  %200 = getelementptr inbounds [6 x float]* %1, i64 0, i64 %indvars.iv
  %201 = load float* %200, align 4, !tbaa !2
  %202 = fpext float %201 to double
  %203 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str133, i64 0, i64 0), i8* %199, i32 %197, double %202) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond, label %204, label %196

; <label>:204                                     ; preds = %196
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp)
  br label %249

; <label>:205                                     ; preds = %0, %0
  %206 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %207 = load float* %206, align 4, !tbaa !127
  %208 = fpext float %207 to double
  %209 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %210 = load float* %209, align 4, !tbaa !129
  %211 = fpext float %210 to double
  %212 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str135, i64 0, i64 0), double %208, double %211) #8
  br label %249

; <label>:213                                     ; preds = %0
  %214 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %215 = load float* %214, align 4, !tbaa !127
  %216 = fpext float %215 to double
  %217 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %218 = load float* %217, align 4, !tbaa !129
  %219 = fpext float %218 to double
  %220 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str136, i64 0, i64 0), double %216, double %219) #8
  br label %249

; <label>:221                                     ; preds = %0
  %222 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %223 = load float* %222, align 4, !tbaa !120
  %224 = fpext float %223 to double
  %225 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str137, i64 0, i64 0), double %224) #8
  br label %249

; <label>:226                                     ; preds = %0, %0, %0
  %227 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %228 = load float* %227, align 4, !tbaa !120
  %229 = fpext float %228 to double
  %230 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %231 = load float* %230, align 4, !tbaa !122
  %232 = fpext float %231 to double
  %233 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str138, i64 0, i64 0), double %229, double %232) #8
  br label %249

; <label>:234                                     ; preds = %0, %0
  %235 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 0
  %236 = load float* %235, align 4, !tbaa !120
  %237 = fpext float %236 to double
  %238 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 1
  %239 = load float* %238, align 4, !tbaa !122
  %240 = fpext float %239 to double
  %241 = getelementptr inbounds %union.t_iparams* %iparams, i64 0, i32 0, i32 2
  %242 = load float* %241, align 4, !tbaa !123
  %243 = fpext float %242 to double
  %244 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([30 x i8]* @.str119, i64 0, i64 0), double %237, double %240, double %243) #8
  br label %249

; <label>:245                                     ; preds = %0
  %246 = sext i32 %ftype to i64
  %247 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %246, i32 0
  %248 = load i8** %247, align 8, !tbaa !150
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([44 x i8]* @.str139, i64 0, i64 0), i32 %ftype, i8* %248, i8* getelementptr inbounds ([67 x i8]* @.str140, i64 0, i64 0), i32 510) #8
  br label %249

; <label>:249                                     ; preds = %245, %234, %226, %221, %213, %205, %204, %176, %157, %137, %120, %106, %98, %78, %77, %66, %55, %41, %27, %16, %2
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_idef(%struct.__sFILE* %fp, i32 %indent, i8* %title, %struct.t_idef* readonly %idef) #4 {
  %1 = icmp eq %struct.t_idef* %idef, null
  br i1 %1, label %available.exit, label %.critedge

available.exit:                                   ; preds = %0
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* %title) #8
  br label %.loopexit

.critedge:                                        ; preds = %0
  %3 = tail call i32 @pr_title(%struct.__sFILE* %fp, i32 %indent, i8* %title) #9
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %.lr.ph.i, label %pr_indent.exit5.thread

.lr.ph.i:                                         ; preds = %.critedge
  %5 = add i32 %3, -1
  br label %6

; <label>:6                                       ; preds = %6, %.lr.ph.i
  %i.01.i = phi i32 [ 0, %.lr.ph.i ], [ %7, %6 ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %7 = add nuw nsw i32 %i.01.i, 1
  %exitcond.i = icmp eq i32 %i.01.i, %5
  br i1 %exitcond.i, label %.lr.ph.i1, label %6

.lr.ph.i1:                                        ; preds = %6
  %8 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 2
  %9 = load i32* %8, align 4, !tbaa !153
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str141, i64 0, i64 0), i32 %9) #8
  br label %11

; <label>:11                                      ; preds = %11, %.lr.ph.i1
  %i.01.i2 = phi i32 [ 0, %.lr.ph.i1 ], [ %12, %11 ]
  %fputc.i3 = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %12 = add nuw nsw i32 %i.01.i2, 1
  %exitcond.i4 = icmp eq i32 %i.01.i2, %5
  br i1 %exitcond.i4, label %.lr.ph.i6, label %11

pr_indent.exit5.thread:                           ; preds = %.critedge
  %13 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 2
  %14 = load i32* %13, align 4, !tbaa !153
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str141, i64 0, i64 0), i32 %14) #8
  %16 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 1
  %17 = load i32* %16, align 4, !tbaa !155
  %18 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str142, i64 0, i64 0), i32 %17) #8
  br label %pr_indent.exit10

.lr.ph.i6:                                        ; preds = %11
  %19 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 1
  %20 = load i32* %19, align 4, !tbaa !155
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str142, i64 0, i64 0), i32 %20) #8
  br label %22

; <label>:22                                      ; preds = %22, %.lr.ph.i6
  %i.01.i7 = phi i32 [ 0, %.lr.ph.i6 ], [ %23, %22 ]
  %fputc.i8 = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %23 = add nuw nsw i32 %i.01.i7, 1
  %exitcond.i9 = icmp eq i32 %i.01.i7, %5
  br i1 %exitcond.i9, label %pr_indent.exit10, label %22

pr_indent.exit10:                                 ; preds = %22, %pr_indent.exit5.thread
  %24 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 0
  %25 = load i32* %24, align 4, !tbaa !156
  %26 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str143, i64 0, i64 0), i32 %25) #8
  %27 = load i32* %24, align 4, !tbaa !156
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %.lr.ph, label %pr_indent.exit10..preheader_crit_edge

pr_indent.exit10..preheader_crit_edge:            ; preds = %pr_indent.exit10
  %.pre = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 3
  br label %.preheader

.lr.ph:                                           ; preds = %pr_indent.exit10
  %29 = icmp sgt i32 %3, -3
  %30 = add i32 %3, 2
  %31 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 3
  %32 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4
  br label %33

.preheader:                                       ; preds = %pr_indent.exit15, %pr_indent.exit10..preheader_crit_edge
  %.pre-phi = phi i32** [ %.pre, %pr_indent.exit10..preheader_crit_edge ], [ %31, %pr_indent.exit15 ]
  br label %54

; <label>:33                                      ; preds = %.lr.ph, %pr_indent.exit15
  %indvars.iv20 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next21, %pr_indent.exit15 ]
  br i1 %29, label %.lr.ph.i11, label %pr_indent.exit15

.lr.ph.i11:                                       ; preds = %33, %.lr.ph.i11
  %i.01.i12 = phi i32 [ %34, %.lr.ph.i11 ], [ 0, %33 ]
  %fputc.i13 = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %34 = add nuw nsw i32 %i.01.i12, 1
  %exitcond.i14 = icmp eq i32 %i.01.i12, %30
  br i1 %exitcond.i14, label %pr_indent.exit15, label %.lr.ph.i11

pr_indent.exit15:                                 ; preds = %.lr.ph.i11, %33
  %35 = load i32* @bShowNumbers, align 4, !tbaa !8
  %36 = icmp ne i32 %35, 0
  %37 = trunc i64 %indvars.iv20 to i32
  %38 = select i1 %36, i32 %37, i32 -1
  %39 = load i32** %31, align 8, !tbaa !157
  %40 = getelementptr inbounds i32* %39, i64 %indvars.iv20
  %41 = load i32* %40, align 4, !tbaa !8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %42, i32 0
  %44 = load i8** %43, align 8, !tbaa !150
  %45 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str144, i64 0, i64 0), i32 %38, i8* %44) #8
  %46 = load i32** %31, align 8, !tbaa !157
  %47 = getelementptr inbounds i32* %46, i64 %indvars.iv20
  %48 = load i32* %47, align 4, !tbaa !8
  %49 = load %union.t_iparams** %32, align 8, !tbaa !158
  %50 = getelementptr inbounds %union.t_iparams* %49, i64 %indvars.iv20
  tail call void @pr_iparams(%struct.__sFILE* %fp, i32 %48, %union.t_iparams* %50) #9
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %51 = load i32* %24, align 4, !tbaa !156
  %52 = sext i32 %51 to i64
  %53 = icmp slt i64 %indvars.iv.next21, %52
  br i1 %53, label %33, label %.preheader

; <label>:54                                      ; preds = %pr_ilist.exit, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %pr_ilist.exit ]
  %55 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv, i32 1
  %56 = load i8** %55, align 8, !tbaa !159
  %57 = tail call i32 @pr_title(%struct.__sFILE* %fp, i32 %3, i8* %56) #8
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %.lr.ph.i.i, label %pr_indent.exit.i

.lr.ph.i.i:                                       ; preds = %54
  %59 = add i32 %57, -1
  br label %60

; <label>:60                                      ; preds = %60, %.lr.ph.i.i
  %i.01.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %61, %60 ]
  %fputc.i.i = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %61 = add nuw nsw i32 %i.01.i.i, 1
  %exitcond.i.i = icmp eq i32 %i.01.i.i, %59
  br i1 %exitcond.i.i, label %pr_indent.exit.i, label %60

pr_indent.exit.i:                                 ; preds = %60, %54
  %62 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv, i32 0
  %63 = load i32* %62, align 4, !tbaa !160
  %64 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str173, i64 0, i64 0), i32 %63) #8
  %65 = load i32* %62, align 4, !tbaa !160
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %pr_ilist.exit

; <label>:67                                      ; preds = %pr_indent.exit.i
  br i1 %58, label %.lr.ph.i4.i, label %pr_indent.exit8.i

.lr.ph.i4.i:                                      ; preds = %67
  %68 = add i32 %57, -1
  br label %69

; <label>:69                                      ; preds = %69, %.lr.ph.i4.i
  %i.01.i5.i = phi i32 [ 0, %.lr.ph.i4.i ], [ %70, %69 ]
  %fputc.i6.i = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %70 = add nuw nsw i32 %i.01.i5.i, 1
  %exitcond.i7.i = icmp eq i32 %i.01.i5.i, %68
  br i1 %exitcond.i7.i, label %pr_indent.exit8.i, label %69

pr_indent.exit8.i:                                ; preds = %69, %67
  %71 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str174, i64 0, i64 0), i64 34, i64 1, %struct.__sFILE* %fp) #6
  br label %72

; <label>:72                                      ; preds = %76, %pr_indent.exit8.i
  %indvars.iv.i = phi i64 [ 0, %pr_indent.exit8.i ], [ %indvars.iv.next.i, %76 ]
  %73 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv, i32 1, i64 %indvars.iv.i
  %74 = load i32* %73, align 4, !tbaa !8
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %.critedge.i

; <label>:76                                      ; preds = %72
  %77 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str27, i64 0, i64 0), i32 %74) #8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %78 = icmp slt i64 %indvars.iv.next.i, 256
  br i1 %78, label %72, label %.critedge.i

.critedge.i:                                      ; preds = %76, %72
  %fputc.i16 = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp) #6
  br i1 %58, label %.lr.ph.i9.i, label %pr_indent.exit13.i

.lr.ph.i9.i:                                      ; preds = %.critedge.i
  %79 = add i32 %57, -1
  br label %80

; <label>:80                                      ; preds = %80, %.lr.ph.i9.i
  %i.01.i10.i = phi i32 [ 0, %.lr.ph.i9.i ], [ %81, %80 ]
  %fputc.i11.i = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %81 = add nuw nsw i32 %i.01.i10.i, 1
  %exitcond.i12.i = icmp eq i32 %i.01.i10.i, %79
  br i1 %exitcond.i12.i, label %pr_indent.exit13.i, label %80

pr_indent.exit13.i:                               ; preds = %80, %.critedge.i
  %82 = tail call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str175, i64 0, i64 0), i64 8, i64 1, %struct.__sFILE* %fp) #6
  %83 = load i32* %62, align 4, !tbaa !160
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %.lr.ph27.i, label %pr_ilist.exit

.lr.ph27.i:                                       ; preds = %pr_indent.exit13.i
  %85 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv, i32 2
  %86 = load i32** %85, align 8, !tbaa !162
  %87 = icmp sgt i32 %57, -3
  %88 = add i32 %57, 2
  br label %89

; <label>:89                                      ; preds = %._crit_edge.i, %.lr.ph27.i
  %iatoms.026.i = phi i32* [ %86, %.lr.ph27.i ], [ %iatoms.1.lcssa.i, %._crit_edge.i ]
  %i.125.i = phi i32 [ 0, %.lr.ph27.i ], [ %116, %._crit_edge.i ]
  %j.024.i = phi i32 [ 0, %.lr.ph27.i ], [ %104, %._crit_edge.i ]
  br i1 %87, label %.lr.ph.i14.i, label %pr_indent.exit18.i

.lr.ph.i14.i:                                     ; preds = %89, %.lr.ph.i14.i
  %i.01.i15.i = phi i32 [ %90, %.lr.ph.i14.i ], [ 0, %89 ]
  %fputc.i16.i = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %90 = add nuw nsw i32 %i.01.i15.i, 1
  %exitcond.i17.i = icmp eq i32 %i.01.i15.i, %88
  br i1 %exitcond.i17.i, label %pr_indent.exit18.i, label %.lr.ph.i14.i

pr_indent.exit18.i:                               ; preds = %.lr.ph.i14.i, %89
  %91 = load i32* %iatoms.026.i, align 4, !tbaa !8
  %92 = sext i32 %91 to i64
  %93 = load i32** %.pre-phi, align 8, !tbaa !157
  %94 = getelementptr inbounds i32* %93, i64 %92
  %95 = load i32* %94, align 4, !tbaa !8
  %96 = load i32* @bShowNumbers, align 4, !tbaa !8
  %97 = icmp ne i32 %96, 0
  %98 = select i1 %97, i32 %j.024.i, i32 -1
  %99 = select i1 %97, i32 %91, i32 -1
  %100 = sext i32 %95 to i64
  %101 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %100, i32 0
  %102 = load i8** %101, align 8, !tbaa !150
  %103 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str176, i64 0, i64 0), i32 %98, i32 %99, i8* %102) #8
  %104 = add nuw nsw i32 %j.024.i, 1
  %iatoms.120.i = getelementptr inbounds i32* %iatoms.026.i, i64 1
  %105 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %100, i32 2
  %106 = load i32* %105, align 8, !tbaa !163
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %.lr.ph.i17, label %._crit_edge.i

.lr.ph.i17:                                       ; preds = %pr_indent.exit18.i, %.lr.ph.i17
  %108 = phi i32* [ %iatoms.122.i, %.lr.ph.i17 ], [ %iatoms.026.i, %pr_indent.exit18.i ]
  %iatoms.122.i = phi i32* [ %iatoms.1.i, %.lr.ph.i17 ], [ %iatoms.120.i, %pr_indent.exit18.i ]
  %k.021.i = phi i32 [ %111, %.lr.ph.i17 ], [ 0, %pr_indent.exit18.i ]
  %109 = load i32* %iatoms.122.i, align 4, !tbaa !8
  %110 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str177, i64 0, i64 0), i32 %109) #8
  %111 = add nuw nsw i32 %k.021.i, 1
  %iatoms.1.i = getelementptr inbounds i32* %108, i64 2
  %112 = load i32* %105, align 8, !tbaa !163
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %.lr.ph.i17, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i17, %pr_indent.exit18.i
  %iatoms.1.lcssa.i = phi i32* [ %iatoms.120.i, %pr_indent.exit18.i ], [ %iatoms.1.i, %.lr.ph.i17 ]
  %fputc3.i = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp) #6
  %114 = load i32* %105, align 8, !tbaa !163
  %115 = add i32 %i.125.i, 1
  %116 = add i32 %115, %114
  %117 = load i32* %62, align 4, !tbaa !160
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %89, label %pr_ilist.exit

pr_ilist.exit:                                    ; preds = %._crit_edge.i, %pr_indent.exit.i, %pr_indent.exit13.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 44
  br i1 %exitcond, label %.loopexit, label %54

.loopexit:                                        ; preds = %pr_ilist.exit, %available.exit
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_block(%struct.__sFILE* nocapture %fp, i32 %indent, i8* %title, %struct.t_block* %block) #4 {
  %1 = icmp eq %struct.t_block* %block, null
  br i1 %1, label %available.exit, label %.critedge

available.exit:                                   ; preds = %0
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* %title) #8
  br label %low_pr_block.exit

.critedge:                                        ; preds = %0
  %3 = tail call fastcc i32 @pr_block_title(%struct.__sFILE* %fp, i32 %indent, i8* %title, %struct.t_block* %block) #9
  %4 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 2
  %5 = load i32** %4, align 8, !tbaa !164
  %6 = load i32* %5, align 4, !tbaa !8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %.preheader, label %.thread

.preheader:                                       ; preds = %.critedge
  %8 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1
  %9 = load i32* %8, align 4, !tbaa !166
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %.lr.ph18, label %._crit_edge19

.lr.ph18:                                         ; preds = %.preheader
  %11 = icmp sgt i32 %3, 0
  %12 = add i32 %3, -1
  %13 = add nsw i32 %3, 3
  %14 = icmp sgt i32 %3, -3
  %15 = add i32 %3, 2
  %16 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4
  br label %19

.thread:                                          ; preds = %.critedge
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([30 x i8]* @.str145, i64 0, i64 0), i32 0) #8
  %18 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3
  br label %57

; <label>:19                                      ; preds = %._crit_edge22, %.lr.ph18
  %20 = phi i32* [ %5, %.lr.ph18 ], [ %.pre, %._crit_edge22 ]
  %indvars.iv20 = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next21, %._crit_edge22 ]
  %start.017 = phi i32 [ 0, %.lr.ph18 ], [ %22, %._crit_edge22 ]
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %21 = getelementptr inbounds i32* %20, i64 %indvars.iv.next21
  %22 = load i32* %21, align 4, !tbaa !8
  br i1 %11, label %.lr.ph.i, label %pr_indent.exit

.lr.ph.i:                                         ; preds = %19, %.lr.ph.i
  %i.01.i = phi i32 [ %23, %.lr.ph.i ], [ 0, %19 ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %23 = add nuw nsw i32 %i.01.i, 1
  %exitcond.i = icmp eq i32 %i.01.i, %12
  br i1 %exitcond.i, label %pr_indent.exit, label %.lr.ph.i

pr_indent.exit:                                   ; preds = %.lr.ph.i, %19
  %24 = icmp sgt i32 %22, %start.017
  br i1 %24, label %.lr.ph, label %.thread25

.thread25:                                        ; preds = %pr_indent.exit
  %25 = trunc i64 %indvars.iv20 to i32
  %26 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* %title, i32 %25) #8
  br label %._crit_edge

.lr.ph:                                           ; preds = %pr_indent.exit
  %27 = load i32* @bShowNumbers, align 4, !tbaa !8
  %28 = icmp ne i32 %27, 0
  %29 = trunc i64 %indvars.iv20 to i32
  %30 = select i1 %28, i32 %29, i32 -1
  %31 = select i1 %28, i32 %start.017, i32 -1
  %32 = add nsw i32 %22, -1
  %. = select i1 %28, i32 %32, i32 -1
  %33 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str146, i64 0, i64 0), i8* %title, i32 %30, i32 %31, i32 %.) #8
  %size.0 = add nsw i32 %33, %3
  %34 = sext i32 %start.017 to i64
  %35 = add i32 %22, -1
  br label %36

; <label>:36                                      ; preds = %pr_indent.exit6, %.lr.ph
  %indvars.iv = phi i64 [ %34, %.lr.ph ], [ %indvars.iv.next, %pr_indent.exit6 ]
  %size.115 = phi i32 [ %size.0, %.lr.ph ], [ %49, %pr_indent.exit6 ]
  %37 = icmp sgt i64 %indvars.iv, %34
  br i1 %37, label %38, label %41

; <label>:38                                      ; preds = %36
  %39 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0)) #8
  %40 = add nsw i32 %39, %size.115
  br label %41

; <label>:41                                      ; preds = %38, %36
  %size.2 = phi i32 [ %40, %38 ], [ %size.115, %36 ]
  %42 = icmp sgt i32 %size.2, 70
  br i1 %42, label %43, label %pr_indent.exit6

; <label>:43                                      ; preds = %41
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp)
  br i1 %14, label %.lr.ph.i2, label %pr_indent.exit6

.lr.ph.i2:                                        ; preds = %43, %.lr.ph.i2
  %i.01.i3 = phi i32 [ %44, %.lr.ph.i2 ], [ 0, %43 ]
  %fputc.i4 = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %44 = add nuw nsw i32 %i.01.i3, 1
  %exitcond.i5 = icmp eq i32 %i.01.i3, %15
  br i1 %exitcond.i5, label %pr_indent.exit6, label %.lr.ph.i2

pr_indent.exit6:                                  ; preds = %.lr.ph.i2, %43, %41
  %size.3 = phi i32 [ %size.2, %41 ], [ %13, %43 ], [ %13, %.lr.ph.i2 ]
  %45 = load i32** %16, align 8, !tbaa !167
  %46 = getelementptr inbounds i32* %45, i64 %indvars.iv
  %47 = load i32* %46, align 4, !tbaa !8
  %48 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([3 x i8]* @.str147, i64 0, i64 0), i32 %47) #8
  %49 = add nsw i32 %48, %size.3
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %35
  br i1 %exitcond, label %._crit_edge, label %36

._crit_edge:                                      ; preds = %pr_indent.exit6, %.thread25
  %50 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %fp)
  %51 = load i32* %8, align 4, !tbaa !166
  %52 = sext i32 %51 to i64
  %53 = icmp slt i64 %indvars.iv.next21, %52
  br i1 %53, label %._crit_edge22, label %._crit_edge19

._crit_edge22:                                    ; preds = %._crit_edge
  %.pre = load i32** %4, align 8, !tbaa !164
  br label %19

._crit_edge19:                                    ; preds = %._crit_edge, %.preheader
  %start.0.lcssa = phi i32 [ 0, %.preheader ], [ %22, %._crit_edge ]
  %54 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3
  %55 = load i32* %54, align 4, !tbaa !168
  %56 = icmp eq i32 %start.0.lcssa, %55
  br i1 %56, label %low_pr_block.exit, label %57

; <label>:57                                      ; preds = %.thread, %._crit_edge19
  %58 = phi i32* [ %18, %.thread ], [ %54, %._crit_edge19 ]
  %59 = icmp sgt i32 %3, 0
  br i1 %59, label %.lr.ph.i7, label %pr_indent.exit11.thread

pr_indent.exit11.thread:                          ; preds = %57
  %60 = tail call i64 @fwrite(i8* getelementptr inbounds ([47 x i8]* @.str148, i64 0, i64 0), i64 46, i64 1, %struct.__sFILE* %fp)
  br label %.critedge.i

.lr.ph.i7:                                        ; preds = %57
  %61 = add i32 %3, -1
  br label %62

; <label>:62                                      ; preds = %62, %.lr.ph.i7
  %i.01.i8 = phi i32 [ 0, %.lr.ph.i7 ], [ %63, %62 ]
  %fputc.i9 = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %63 = add nuw nsw i32 %i.01.i8, 1
  %exitcond.i10 = icmp eq i32 %i.01.i8, %61
  br i1 %exitcond.i10, label %pr_indent.exit11, label %62

pr_indent.exit11:                                 ; preds = %62
  %64 = tail call i64 @fwrite(i8* getelementptr inbounds ([47 x i8]* @.str148, i64 0, i64 0), i64 46, i64 1, %struct.__sFILE* %fp)
  br label %.critedge.i

.critedge.i:                                      ; preds = %pr_indent.exit11, %pr_indent.exit11.thread
  %65 = tail call fastcc i32 @pr_block_title(%struct.__sFILE* %fp, i32 %3, i8* %title, %struct.t_block* %block) #8
  %66 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1
  %67 = load i32* %66, align 4, !tbaa !166
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %.preheader.i, label %.lr.ph8.i

.lr.ph8.i:                                        ; preds = %.critedge.i
  %69 = icmp sgt i32 %65, -3
  %70 = add i32 %65, 2
  br label %76

.preheader.i:                                     ; preds = %pr_indent.exit.i, %.critedge.i
  %71 = load i32* %58, align 4, !tbaa !168
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %.lr.ph.i12, label %low_pr_block.exit

.lr.ph.i12:                                       ; preds = %.preheader.i
  %73 = icmp sgt i32 %65, -3
  %74 = add i32 %65, 2
  %75 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4
  br label %89

; <label>:76                                      ; preds = %pr_indent.exit.i, %.lr.ph8.i
  %indvars.iv9.i = phi i64 [ %indvars.iv.next10.i, %pr_indent.exit.i ], [ 0, %.lr.ph8.i ]
  br i1 %69, label %.lr.ph.i.i, label %pr_indent.exit.i

.lr.ph.i.i:                                       ; preds = %76, %.lr.ph.i.i
  %i.01.i.i = phi i32 [ %77, %.lr.ph.i.i ], [ 0, %76 ]
  %fputc.i.i = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %77 = add nuw nsw i32 %i.01.i.i, 1
  %exitcond.i.i = icmp eq i32 %i.01.i.i, %70
  br i1 %exitcond.i.i, label %pr_indent.exit.i, label %.lr.ph.i.i

pr_indent.exit.i:                                 ; preds = %.lr.ph.i.i, %76
  %78 = load i32* @bShowNumbers, align 4, !tbaa !8
  %79 = icmp ne i32 %78, 0
  %80 = trunc i64 %indvars.iv9.i to i32
  %81 = select i1 %79, i32 %80, i32 -1
  %82 = load i32** %4, align 8, !tbaa !164
  %83 = getelementptr inbounds i32* %82, i64 %indvars.iv9.i
  %84 = load i32* %83, align 4, !tbaa !8
  %85 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str180, i64 0, i64 0), i8* %title, i32 %81, i32 %84) #8
  %indvars.iv.next10.i = add nuw i64 %indvars.iv9.i, 1
  %86 = load i32* %66, align 4, !tbaa !166
  %87 = sext i32 %86 to i64
  %88 = icmp slt i64 %indvars.iv9.i, %87
  br i1 %88, label %76, label %.preheader.i

; <label>:89                                      ; preds = %pr_indent.exit5.i, %.lr.ph.i12
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i12 ], [ %indvars.iv.next.i, %pr_indent.exit5.i ]
  br i1 %73, label %.lr.ph.i1.i, label %pr_indent.exit5.i

.lr.ph.i1.i:                                      ; preds = %89, %.lr.ph.i1.i
  %i.01.i2.i = phi i32 [ %90, %.lr.ph.i1.i ], [ 0, %89 ]
  %fputc.i3.i = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %90 = add nuw nsw i32 %i.01.i2.i, 1
  %exitcond.i4.i = icmp eq i32 %i.01.i2.i, %74
  br i1 %exitcond.i4.i, label %pr_indent.exit5.i, label %.lr.ph.i1.i

pr_indent.exit5.i:                                ; preds = %.lr.ph.i1.i, %89
  %91 = load i32* @bShowNumbers, align 4, !tbaa !8
  %92 = icmp ne i32 %91, 0
  %93 = trunc i64 %indvars.iv.i to i32
  %94 = select i1 %92, i32 %93, i32 -1
  %95 = load i32** %75, align 8, !tbaa !167
  %96 = getelementptr inbounds i32* %95, i64 %indvars.iv.i
  %97 = load i32* %96, align 4, !tbaa !8
  %98 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([14 x i8]* @.str181, i64 0, i64 0), i8* %title, i32 %94, i32 %97) #8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %99 = load i32* %58, align 4, !tbaa !168
  %100 = sext i32 %99 to i64
  %101 = icmp slt i64 %indvars.iv.next.i, %100
  br i1 %101, label %89, label %low_pr_block.exit

low_pr_block.exit:                                ; preds = %pr_indent.exit5.i, %available.exit, %.preheader.i, %._crit_edge19
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @pr_block_title(%struct.__sFILE* nocapture %fp, i32 %indent, i8* %title, %struct.t_block* readonly %block) #4 {
  %1 = icmp eq %struct.t_block* %block, null
  br i1 %1, label %available.exit, label %.critedge

available.exit:                                   ; preds = %0
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* %title) #8
  br label %28

.critedge:                                        ; preds = %0
  %3 = tail call i32 @pr_title(%struct.__sFILE* %fp, i32 %indent, i8* %title) #9
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %.lr.ph.i, label %pr_indent.exit

.lr.ph.i:                                         ; preds = %.critedge
  %5 = add i32 %3, -1
  br label %6

; <label>:6                                       ; preds = %6, %.lr.ph.i
  %i.01.i = phi i32 [ 0, %.lr.ph.i ], [ %7, %6 ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %7 = add nuw nsw i32 %i.01.i, 1
  %exitcond.i = icmp eq i32 %i.01.i, %5
  br i1 %exitcond.i, label %pr_indent.exit, label %6

pr_indent.exit:                                   ; preds = %6, %.critedge
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str174, i64 0, i64 0), i64 34, i64 1, %struct.__sFILE* %fp)
  br label %9

; <label>:9                                       ; preds = %9, %pr_indent.exit
  %indvars.iv = phi i64 [ 0, %pr_indent.exit ], [ %indvars.iv.next, %9 ]
  %10 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 0, i64 %indvars.iv
  %11 = load i32* %10, align 4, !tbaa !8
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str27, i64 0, i64 0), i32 %11) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond, label %13, label %9

; <label>:13                                      ; preds = %9
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp)
  br i1 %4, label %.lr.ph.i1, label %pr_indent.exit5.thread

pr_indent.exit5.thread:                           ; preds = %13
  %14 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1
  %15 = load i32* %14, align 4, !tbaa !166
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str178, i64 0, i64 0), i32 %15) #8
  br label %pr_indent.exit10

.lr.ph.i1:                                        ; preds = %13
  %17 = add i32 %3, -1
  br label %18

; <label>:18                                      ; preds = %18, %.lr.ph.i1
  %i.01.i2 = phi i32 [ 0, %.lr.ph.i1 ], [ %19, %18 ]
  %fputc.i3 = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %19 = add nuw nsw i32 %i.01.i2, 1
  %exitcond.i4 = icmp eq i32 %i.01.i2, %17
  br i1 %exitcond.i4, label %.lr.ph.i6, label %18

.lr.ph.i6:                                        ; preds = %18
  %20 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1
  %21 = load i32* %20, align 4, !tbaa !166
  %22 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str178, i64 0, i64 0), i32 %21) #8
  br label %23

; <label>:23                                      ; preds = %23, %.lr.ph.i6
  %i.01.i7 = phi i32 [ 0, %.lr.ph.i6 ], [ %24, %23 ]
  %fputc.i8 = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %24 = add nuw nsw i32 %i.01.i7, 1
  %exitcond.i9 = icmp eq i32 %i.01.i7, %17
  br i1 %exitcond.i9, label %pr_indent.exit10, label %23

pr_indent.exit10:                                 ; preds = %23, %pr_indent.exit5.thread
  %25 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3
  %26 = load i32* %25, align 4, !tbaa !168
  %27 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str179, i64 0, i64 0), i32 %26) #8
  br label %28

; <label>:28                                      ; preds = %available.exit, %pr_indent.exit10
  %.0 = phi i32 [ %3, %pr_indent.exit10 ], [ %indent, %available.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_top(%struct.__sFILE* %fp, i32 %indent, i8* %title, %struct.t_topology* %top) #4 {
  %s.i = alloca [4096 x i8], align 16
  %1 = icmp eq %struct.t_topology* %top, null
  br i1 %1, label %available.exit, label %.critedge

available.exit:                                   ; preds = %0
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* %title) #8
  br label %130

.critedge:                                        ; preds = %0
  %3 = tail call i32 @pr_title(%struct.__sFILE* %fp, i32 %indent, i8* %title) #9
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %.lr.ph.i, label %pr_indent.exit

.lr.ph.i:                                         ; preds = %.critedge
  %5 = add i32 %3, -1
  br label %6

; <label>:6                                       ; preds = %6, %.lr.ph.i
  %i.01.i = phi i32 [ 0, %.lr.ph.i ], [ %7, %6 ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %7 = add nuw nsw i32 %i.01.i, 1
  %exitcond.i = icmp eq i32 %i.01.i, %5
  br i1 %exitcond.i, label %pr_indent.exit, label %6

pr_indent.exit:                                   ; preds = %6, %.critedge
  %8 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0
  %9 = load i8*** %8, align 8, !tbaa !169
  %10 = load i8** %9, align 8, !tbaa !29
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str149, i64 0, i64 0), i8* %10) #8
  %12 = tail call i32 @pr_title(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([6 x i8]* @.str150, i64 0, i64 0)) #8
  %13 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1
  %14 = load %struct.t_atom** %13, align 8, !tbaa !173
  %15 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 0
  %16 = load i32* %15, align 4, !tbaa !174
  %17 = icmp eq %struct.t_atom* %14, null
  br i1 %17, label %available.exit.i.i, label %.critedge.i.i

available.exit.i.i:                               ; preds = %pr_indent.exit
  %18 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str182, i64 0, i64 0)) #8
  br label %pr_atom.exit.i

.critedge.i.i:                                    ; preds = %pr_indent.exit
  %19 = tail call i32 @pr_title_n(%struct.__sFILE* %fp, i32 %12, i8* getelementptr inbounds ([5 x i8]* @.str182, i64 0, i64 0), i32 %16) #8
  %20 = icmp sgt i32 %16, 0
  br i1 %20, label %.lr.ph.i.i, label %pr_atom.exit.i

.lr.ph.i.i:                                       ; preds = %.critedge.i.i
  %21 = icmp sgt i32 %19, 0
  %22 = add i32 %19, -1
  %23 = add i32 %16, -1
  br label %24

; <label>:24                                      ; preds = %58, %.lr.ph.i.i
  %indvars.iv3.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next4.i.i, %58 ]
  br i1 %21, label %.lr.ph.i.i.i, label %pr_indent.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %24, %.lr.ph.i.i.i
  %i.01.i.i.i = phi i32 [ %25, %.lr.ph.i.i.i ], [ 0, %24 ]
  %fputc.i.i.i = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %25 = add nuw nsw i32 %i.01.i.i.i, 1
  %exitcond.i.i.i = icmp eq i32 %i.01.i.i.i, %22
  br i1 %exitcond.i.i.i, label %pr_indent.exit.i.i, label %.lr.ph.i.i.i

pr_indent.exit.i.i:                               ; preds = %.lr.ph.i.i.i, %24
  %26 = getelementptr inbounds %struct.t_atom* %14, i64 %indvars.iv3.i.i, i32 4
  %27 = load i16* %26, align 2, !tbaa !175
  %28 = zext i16 %27 to i32
  %29 = getelementptr inbounds %struct.t_atom* %14, i64 %indvars.iv3.i.i, i32 5
  %30 = load i16* %29, align 2, !tbaa !178
  %31 = zext i16 %30 to i32
  %32 = getelementptr inbounds %struct.t_atom* %14, i64 %indvars.iv3.i.i, i32 6
  %33 = load i32* %32, align 4, !tbaa !179
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [6 x i8*]* @ptype_str, i64 0, i64 %34
  %36 = load i8** %35, align 8, !tbaa !29
  %37 = getelementptr inbounds %struct.t_atom* %14, i64 %indvars.iv3.i.i, i32 0
  %38 = load float* %37, align 4, !tbaa !180
  %39 = fpext float %38 to double
  %40 = getelementptr inbounds %struct.t_atom* %14, i64 %indvars.iv3.i.i, i32 1
  %41 = load float* %40, align 4, !tbaa !181
  %42 = fpext float %41 to double
  %43 = getelementptr inbounds %struct.t_atom* %14, i64 %indvars.iv3.i.i, i32 2
  %44 = load float* %43, align 4, !tbaa !182
  %45 = fpext float %44 to double
  %46 = getelementptr inbounds %struct.t_atom* %14, i64 %indvars.iv3.i.i, i32 3
  %47 = load float* %46, align 4, !tbaa !183
  %48 = fpext float %47 to double
  %49 = getelementptr inbounds %struct.t_atom* %14, i64 %indvars.iv3.i.i, i32 7
  %50 = load i32* %49, align 4, !tbaa !184
  %51 = trunc i64 %indvars.iv3.i.i to i32
  %52 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([103 x i8]* @.str188, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str182, i64 0, i64 0), i32 %51, i32 %28, i32 %31, i8* %36, double %39, double %42, double %45, double %48, i32 %50) #8
  br label %53

; <label>:53                                      ; preds = %53, %pr_indent.exit.i.i
  %indvars.iv.i.i = phi i64 [ 0, %pr_indent.exit.i.i ], [ %indvars.iv.next.i.i, %53 ]
  %54 = getelementptr inbounds %struct.t_atom* %14, i64 %indvars.iv3.i.i, i32 8, i64 %indvars.iv.i.i
  %55 = load i8* %54, align 1, !tbaa !185
  %56 = zext i8 %55 to i32
  %57 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str27, i64 0, i64 0), i32 %56) #8
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i, 9
  br i1 %exitcond.i.i, label %58, label %53

; <label>:58                                      ; preds = %53
  %59 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str189, i64 0, i64 0), i64 4, i64 1, %struct.__sFILE* %fp) #6
  %indvars.iv.next4.i.i = add nuw nsw i64 %indvars.iv3.i.i, 1
  %exitcond4 = icmp eq i32 %51, %23
  br i1 %exitcond4, label %pr_atom.exit.i, label %24

pr_atom.exit.i:                                   ; preds = %58, %.critedge.i.i, %available.exit.i.i
  %60 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 8
  %61 = load i8**** %60, align 8, !tbaa !186
  br label %62

; <label>:62                                      ; preds = %._crit_edge.i.i, %pr_atom.exit.i
  %indvars.iv3.i1.i = phi i64 [ 0, %pr_atom.exit.i ], [ %indvars.iv.next4.i5.i, %._crit_edge.i.i ]
  %63 = load i32* @bShowNumbers, align 4, !tbaa !8
  %64 = icmp ne i32 %63, 0
  %65 = trunc i64 %indvars.iv3.i1.i to i32
  %66 = select i1 %64, i32 %65, i32 -1
  %67 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv3.i1.i, i32 0
  %68 = load i32* %67, align 4, !tbaa !187
  %69 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([21 x i8]* @.str190, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str183, i64 0, i64 0), i32 %66, i32 %68) #8
  %70 = load i32* %67, align 4, !tbaa !187
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %.lr.ph.i2.i, label %._crit_edge.i.i

.lr.ph.i2.i:                                      ; preds = %62
  %72 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv3.i1.i, i32 1
  br label %73

; <label>:73                                      ; preds = %73, %.lr.ph.i2.i
  %indvars.iv.i3.i = phi i64 [ 0, %.lr.ph.i2.i ], [ %indvars.iv.next.i4.i, %73 ]
  %74 = load i32** %72, align 8, !tbaa !188
  %75 = getelementptr inbounds i32* %74, i64 %indvars.iv.i3.i
  %76 = load i32* %75, align 4, !tbaa !8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*** %61, i64 %77
  %79 = load i8*** %78, align 8, !tbaa !29
  %80 = load i8** %79, align 8, !tbaa !29
  %81 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str191, i64 0, i64 0), i8* %80) #8
  %indvars.iv.next.i4.i = add nuw nsw i64 %indvars.iv.i3.i, 1
  %82 = load i32* %67, align 4, !tbaa !187
  %83 = sext i32 %82 to i64
  %84 = icmp slt i64 %indvars.iv.next.i4.i, %83
  br i1 %84, label %73, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %73, %62
  %85 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str192, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %fp) #6
  %indvars.iv.next4.i5.i = add nuw nsw i64 %indvars.iv3.i1.i, 1
  %exitcond.i6.i = icmp eq i64 %indvars.iv.next4.i5.i, 9
  br i1 %exitcond.i6.i, label %pr_grps.exit.i, label %62

pr_grps.exit.i:                                   ; preds = %._crit_edge.i.i
  %86 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 2
  %87 = load i8**** %86, align 8, !tbaa !189
  %88 = load i32* %15, align 4, !tbaa !174
  tail call fastcc void @pr_strings(%struct.__sFILE* %fp, i32 %12, i8* getelementptr inbounds ([5 x i8]* @.str182, i64 0, i64 0), i8*** %87, i32 %88) #8
  %89 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 3
  %90 = load i8**** %89, align 8, !tbaa !190
  %91 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 4
  %92 = load i8**** %91, align 8, !tbaa !191
  %93 = load i32* %15, align 4, !tbaa !174
  %94 = icmp eq i8*** %90, null
  br i1 %94, label %available.exit.i7.i, label %.critedge.i8.i

available.exit.i7.i:                              ; preds = %pr_grps.exit.i
  %95 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str184, i64 0, i64 0)) #8
  br label %pr_atoms.exit

.critedge.i8.i:                                   ; preds = %pr_grps.exit.i
  %96 = tail call i32 @pr_title_n(%struct.__sFILE* %fp, i32 %12, i8* getelementptr inbounds ([5 x i8]* @.str184, i64 0, i64 0), i32 %93) #8
  %97 = icmp sgt i32 %93, 0
  br i1 %97, label %.lr.ph.i9.i, label %pr_atoms.exit

.lr.ph.i9.i:                                      ; preds = %.critedge.i8.i
  %98 = icmp sgt i32 %96, 0
  %99 = add i32 %96, -1
  %100 = add i32 %93, -1
  br label %101

; <label>:101                                     ; preds = %pr_indent.exit.i17.i, %.lr.ph.i9.i
  %indvars.iv.i10.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %indvars.iv.next.i15.i, %pr_indent.exit.i17.i ]
  br i1 %98, label %.lr.ph.i.i14.i, label %pr_indent.exit.i17.i

.lr.ph.i.i14.i:                                   ; preds = %101, %.lr.ph.i.i14.i
  %i.01.i.i11.i = phi i32 [ %102, %.lr.ph.i.i14.i ], [ 0, %101 ]
  %fputc.i.i12.i = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %102 = add nuw nsw i32 %i.01.i.i11.i, 1
  %exitcond.i.i13.i = icmp eq i32 %i.01.i.i11.i, %99
  br i1 %exitcond.i.i13.i, label %pr_indent.exit.i17.i, label %.lr.ph.i.i14.i

pr_indent.exit.i17.i:                             ; preds = %.lr.ph.i.i14.i, %101
  %103 = load i32* @bShowNumbers, align 4, !tbaa !8
  %104 = icmp ne i32 %103, 0
  %105 = trunc i64 %indvars.iv.i10.i to i32
  %106 = select i1 %104, i32 %105, i32 -1
  %107 = getelementptr inbounds i8*** %90, i64 %indvars.iv.i10.i
  %108 = load i8*** %107, align 8, !tbaa !29
  %109 = load i8** %108, align 8, !tbaa !29
  %110 = getelementptr inbounds i8*** %92, i64 %indvars.iv.i10.i
  %111 = load i8*** %110, align 8, !tbaa !29
  %112 = load i8** %111, align 8, !tbaa !29
  %113 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([31 x i8]* @.str194, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str184, i64 0, i64 0), i32 %106, i8* %109, i8* %112) #8
  %indvars.iv.next.i15.i = add nuw nsw i64 %indvars.iv.i10.i, 1
  %exitcond = icmp eq i32 %105, %100
  br i1 %exitcond, label %pr_atoms.exit, label %101

pr_atoms.exit:                                    ; preds = %pr_indent.exit.i17.i, %available.exit.i7.i, %.critedge.i8.i
  %114 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 6
  %115 = load i8**** %114, align 8, !tbaa !192
  %116 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 5
  %117 = load i32* %116, align 4, !tbaa !193
  tail call fastcc void @pr_strings(%struct.__sFILE* %fp, i32 %12, i8* getelementptr inbounds ([8 x i8]* @.str185, i64 0, i64 0), i8*** %115, i32 %117) #8
  %118 = load i8**** %60, align 8, !tbaa !186
  %119 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 7
  %120 = load i32* %119, align 4, !tbaa !194
  tail call fastcc void @pr_strings(%struct.__sFILE* %fp, i32 %12, i8* getelementptr inbounds ([8 x i8]* @.str186, i64 0, i64 0), i8*** %118, i32 %120) #8
  %121 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 9
  tail call void @pr_block(%struct.__sFILE* %fp, i32 %12, i8* getelementptr inbounds ([5 x i8]* @.str187, i64 0, i64 0), %struct.t_block* %121) #8
  %122 = getelementptr inbounds [4096 x i8]* %s.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %122) #6
  %123 = tail call i32 @pr_title_n(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([7 x i8]* @.str151, i64 0, i64 0), i32 3) #8
  br label %124

; <label>:124                                     ; preds = %124, %pr_atoms.exit
  %indvars.iv.i = phi i64 [ 0, %pr_atoms.exit ], [ %indvars.iv.next.i, %124 ]
  %125 = getelementptr inbounds [4 x i8*]* @eblock_names, i64 0, i64 %indvars.iv.i
  %126 = load i8** %125, align 8, !tbaa !29
  %127 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %122, i32 0, i64 4096, i8* getelementptr inbounds ([7 x i8]* @.str196, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str151, i64 0, i64 0), i8* %126) #8
  %128 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv.i
  call void @pr_block(%struct.__sFILE* %fp, i32 %123, i8* %122, %struct.t_block* %128) #8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.i2 = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.i2, label %pr_blocks.exit, label %124

pr_blocks.exit:                                   ; preds = %124
  call void @llvm.lifetime.end(i64 4096, i8* %122) #6
  %129 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1
  call void @pr_idef(%struct.__sFILE* %fp, i32 %3, i8* getelementptr inbounds ([5 x i8]* @.str152, i64 0, i64 0), %struct.t_idef* %129) #9
  br label %130

; <label>:130                                     ; preds = %available.exit, %pr_blocks.exit
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_header(%struct.__sFILE* %fp, i32 %indent, i8* %title, %struct.t_tpxheader* readonly %sh) #4 {
  %1 = icmp eq %struct.t_tpxheader* %sh, null
  br i1 %1, label %available.exit, label %.critedge

available.exit:                                   ; preds = %0
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* %title) #8
  br label %105

.critedge:                                        ; preds = %0
  %3 = tail call i32 @pr_title(%struct.__sFILE* %fp, i32 %indent, i8* %title) #9
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %.lr.ph.i, label %pr_indent.exit5.critedge

.lr.ph.i:                                         ; preds = %.critedge
  %5 = add i32 %3, -1
  br label %6

; <label>:6                                       ; preds = %6, %.lr.ph.i
  %i.01.i = phi i32 [ 0, %.lr.ph.i ], [ %7, %6 ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %7 = add nuw nsw i32 %i.01.i, 1
  %exitcond.i = icmp eq i32 %i.01.i, %5
  br i1 %exitcond.i, label %.lr.ph.i1, label %6

.lr.ph.i1:                                        ; preds = %6
  %8 = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 0
  %9 = load i32* %8, align 4, !tbaa !195
  %10 = icmp ne i32 %9, 0
  %11 = select i1 %10, i8* getelementptr inbounds ([1 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str154, i64 0, i64 0)
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str153, i64 0, i64 0), i8* %11) #8
  br label %13

; <label>:13                                      ; preds = %13, %.lr.ph.i1
  %i.01.i2 = phi i32 [ 0, %.lr.ph.i1 ], [ %14, %13 ]
  %fputc.i3 = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %14 = add nuw nsw i32 %i.01.i2, 1
  %exitcond.i4 = icmp eq i32 %i.01.i2, %5
  br i1 %exitcond.i4, label %pr_indent.exit5, label %13

pr_indent.exit5.critedge:                         ; preds = %.critedge
  %15 = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 0
  %16 = load i32* %15, align 4, !tbaa !195
  %17 = icmp ne i32 %16, 0
  %18 = select i1 %17, i8* getelementptr inbounds ([1 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str154, i64 0, i64 0)
  %19 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str153, i64 0, i64 0), i8* %18) #8
  br label %pr_indent.exit5

pr_indent.exit5:                                  ; preds = %13, %pr_indent.exit5.critedge
  %20 = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 1
  %21 = load i32* %20, align 4, !tbaa !197
  %22 = icmp ne i32 %21, 0
  %23 = select i1 %22, i8* getelementptr inbounds ([1 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str154, i64 0, i64 0)
  %24 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str155, i64 0, i64 0), i8* %23) #8
  br i1 %4, label %.lr.ph.i6, label %pr_indent.exit15.critedge

.lr.ph.i6:                                        ; preds = %pr_indent.exit5
  %25 = add i32 %3, -1
  br label %26

; <label>:26                                      ; preds = %26, %.lr.ph.i6
  %i.01.i7 = phi i32 [ 0, %.lr.ph.i6 ], [ %27, %26 ]
  %fputc.i8 = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %27 = add nuw nsw i32 %i.01.i7, 1
  %exitcond.i9 = icmp eq i32 %i.01.i7, %25
  br i1 %exitcond.i9, label %pr_indent.exit10, label %26

pr_indent.exit10:                                 ; preds = %26
  %.phi.trans.insert = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 2
  %.pre = load i32* %.phi.trans.insert, align 4, !tbaa !198
  %28 = icmp ne i32 %.pre, 0
  %29 = select i1 %28, i8* getelementptr inbounds ([1 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str154, i64 0, i64 0)
  %30 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str156, i64 0, i64 0), i8* %29) #8
  br i1 %4, label %.lr.ph.i11, label %pr_indent.exit20.critedge

.lr.ph.i11:                                       ; preds = %pr_indent.exit10
  %31 = add i32 %3, -1
  br label %32

; <label>:32                                      ; preds = %32, %.lr.ph.i11
  %i.01.i12 = phi i32 [ 0, %.lr.ph.i11 ], [ %33, %32 ]
  %fputc.i13 = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %33 = add nuw nsw i32 %i.01.i12, 1
  %exitcond.i14 = icmp eq i32 %i.01.i12, %31
  br i1 %exitcond.i14, label %pr_indent.exit15, label %32

pr_indent.exit15.critedge:                        ; preds = %pr_indent.exit5
  %34 = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 2
  %35 = load i32* %34, align 4, !tbaa !198
  %36 = icmp ne i32 %35, 0
  %37 = select i1 %36, i8* getelementptr inbounds ([1 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str154, i64 0, i64 0)
  %38 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str156, i64 0, i64 0), i8* %37) #8
  br label %pr_indent.exit15

pr_indent.exit15:                                 ; preds = %32, %pr_indent.exit15.critedge
  %39 = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 3
  %40 = load i32* %39, align 4, !tbaa !199
  %41 = icmp ne i32 %40, 0
  %42 = select i1 %41, i8* getelementptr inbounds ([1 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str154, i64 0, i64 0)
  %43 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str157, i64 0, i64 0), i8* %42) #8
  br i1 %4, label %.lr.ph.i16, label %pr_indent.exit25.critedge

.lr.ph.i16:                                       ; preds = %pr_indent.exit15
  %44 = add i32 %3, -1
  br label %45

; <label>:45                                      ; preds = %45, %.lr.ph.i16
  %i.01.i17 = phi i32 [ 0, %.lr.ph.i16 ], [ %46, %45 ]
  %fputc.i18 = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %46 = add nuw nsw i32 %i.01.i17, 1
  %exitcond.i19 = icmp eq i32 %i.01.i17, %44
  br i1 %exitcond.i19, label %pr_indent.exit20, label %45

pr_indent.exit20.critedge:                        ; preds = %pr_indent.exit10
  %47 = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 3
  %48 = load i32* %47, align 4, !tbaa !199
  %49 = icmp ne i32 %48, 0
  %50 = select i1 %49, i8* getelementptr inbounds ([1 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str154, i64 0, i64 0)
  %51 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str157, i64 0, i64 0), i8* %50) #8
  br label %pr_indent.exit20

pr_indent.exit20:                                 ; preds = %45, %pr_indent.exit20.critedge
  %52 = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 4
  %53 = load i32* %52, align 4, !tbaa !200
  %54 = icmp ne i32 %53, 0
  %55 = select i1 %54, i8* getelementptr inbounds ([1 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str154, i64 0, i64 0)
  %56 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str158, i64 0, i64 0), i8* %55) #8
  br i1 %4, label %.lr.ph.i21, label %pr_indent.exit30.thread.critedge

.lr.ph.i21:                                       ; preds = %pr_indent.exit20
  %57 = add i32 %3, -1
  br label %58

; <label>:58                                      ; preds = %58, %.lr.ph.i21
  %i.01.i22 = phi i32 [ 0, %.lr.ph.i21 ], [ %59, %58 ]
  %fputc.i23 = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %59 = add nuw nsw i32 %i.01.i22, 1
  %exitcond.i24 = icmp eq i32 %i.01.i22, %57
  br i1 %exitcond.i24, label %pr_indent.exit25, label %58

pr_indent.exit25.critedge:                        ; preds = %pr_indent.exit15
  %60 = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 4
  %61 = load i32* %60, align 4, !tbaa !200
  %62 = icmp ne i32 %61, 0
  %63 = select i1 %62, i8* getelementptr inbounds ([1 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str154, i64 0, i64 0)
  %64 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str158, i64 0, i64 0), i8* %63) #8
  br label %pr_indent.exit25

pr_indent.exit25:                                 ; preds = %58, %pr_indent.exit25.critedge
  %65 = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 5
  %66 = load i32* %65, align 4, !tbaa !201
  %67 = icmp ne i32 %66, 0
  %68 = select i1 %67, i8* getelementptr inbounds ([1 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str154, i64 0, i64 0)
  %69 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str159, i64 0, i64 0), i8* %68) #8
  br i1 %4, label %.lr.ph.i26, label %pr_indent.exit35.thread

pr_indent.exit30.thread.critedge:                 ; preds = %pr_indent.exit20
  %70 = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 5
  %71 = load i32* %70, align 4, !tbaa !201
  %72 = icmp ne i32 %71, 0
  %73 = select i1 %72, i8* getelementptr inbounds ([1 x i8]* @.str134, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str154, i64 0, i64 0)
  %74 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str159, i64 0, i64 0), i8* %73) #8
  br label %pr_indent.exit35.thread

.lr.ph.i26:                                       ; preds = %pr_indent.exit25
  %75 = add i32 %3, -1
  br label %76

; <label>:76                                      ; preds = %76, %.lr.ph.i26
  %i.01.i27 = phi i32 [ 0, %.lr.ph.i26 ], [ %77, %76 ]
  %fputc.i28 = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %77 = add nuw nsw i32 %i.01.i27, 1
  %exitcond.i29 = icmp eq i32 %i.01.i27, %75
  br i1 %exitcond.i29, label %.lr.ph.i31, label %76

.lr.ph.i31:                                       ; preds = %76
  %78 = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 6
  %79 = load i32* %78, align 4, !tbaa !202
  %80 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([13 x i8]* @.str160, i64 0, i64 0), i32 %79) #8
  br label %81

; <label>:81                                      ; preds = %81, %.lr.ph.i31
  %i.01.i32 = phi i32 [ 0, %.lr.ph.i31 ], [ %82, %81 ]
  %fputc.i33 = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %82 = add nuw nsw i32 %i.01.i32, 1
  %exitcond.i34 = icmp eq i32 %i.01.i32, %75
  br i1 %exitcond.i34, label %.lr.ph.i36, label %81

pr_indent.exit35.thread:                          ; preds = %pr_indent.exit25, %pr_indent.exit30.thread.critedge
  %83 = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 6
  %84 = load i32* %83, align 4, !tbaa !202
  %85 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([13 x i8]* @.str160, i64 0, i64 0), i32 %84) #8
  %86 = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 7
  %87 = load i32* %86, align 4, !tbaa !203
  %88 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([13 x i8]* @.str161, i64 0, i64 0), i32 %87) #8
  br label %pr_indent.exit40

.lr.ph.i36:                                       ; preds = %81
  %89 = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 7
  %90 = load i32* %89, align 4, !tbaa !203
  %91 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([13 x i8]* @.str161, i64 0, i64 0), i32 %90) #8
  br label %92

; <label>:92                                      ; preds = %92, %.lr.ph.i36
  %i.01.i37 = phi i32 [ 0, %.lr.ph.i36 ], [ %93, %92 ]
  %fputc.i38 = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %93 = add nuw nsw i32 %i.01.i37, 1
  %exitcond.i39 = icmp eq i32 %i.01.i37, %75
  br i1 %exitcond.i39, label %pr_indent.exit40, label %92

pr_indent.exit40:                                 ; preds = %92, %pr_indent.exit35.thread
  %94 = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 8
  %95 = load float* %94, align 4, !tbaa !204
  %96 = fpext float %95 to double
  %97 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([13 x i8]* @.str162, i64 0, i64 0), double %96) #8
  br i1 %4, label %.lr.ph.i41, label %pr_indent.exit45

.lr.ph.i41:                                       ; preds = %pr_indent.exit40
  %98 = add i32 %3, -1
  br label %99

; <label>:99                                      ; preds = %99, %.lr.ph.i41
  %i.01.i42 = phi i32 [ 0, %.lr.ph.i41 ], [ %100, %99 ]
  %fputc.i43 = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %100 = add nuw nsw i32 %i.01.i42, 1
  %exitcond.i44 = icmp eq i32 %i.01.i42, %98
  br i1 %exitcond.i44, label %pr_indent.exit45, label %99

pr_indent.exit45:                                 ; preds = %99, %pr_indent.exit40
  %101 = getelementptr inbounds %struct.t_tpxheader* %sh, i64 0, i32 9
  %102 = load float* %101, align 4, !tbaa !205
  %103 = fpext float %102 to double
  %104 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([13 x i8]* @.str163, i64 0, i64 0), double %103) #8
  br label %105

; <label>:105                                     ; preds = %available.exit, %pr_indent.exit45
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define noalias i8* @atomname(%struct.t_atoms* nocapture readonly %a, i32 %i) #4 {
  %buf = alloca [32 x i8], align 16
  %1 = sext i32 %i to i64
  %2 = getelementptr inbounds %struct.t_atoms* %a, i64 0, i32 1
  %3 = load %struct.t_atom** %2, align 8, !tbaa !173
  %4 = getelementptr inbounds %struct.t_atom* %3, i64 %1, i32 7
  %5 = load i32* %4, align 4, !tbaa !184
  %6 = getelementptr inbounds [32 x i8]* %buf, i64 0, i64 0
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds %struct.t_atoms* %a, i64 0, i32 6
  %9 = load i8**** %8, align 8, !tbaa !192
  %10 = getelementptr inbounds i8*** %9, i64 %7
  %11 = load i8*** %10, align 8, !tbaa !29
  %12 = load i8** %11, align 8, !tbaa !29
  %13 = add nsw i32 %5, 1
  %14 = getelementptr inbounds %struct.t_atoms* %a, i64 0, i32 2
  %15 = load i8**** %14, align 8, !tbaa !189
  %16 = getelementptr inbounds i8*** %15, i64 %1
  %17 = load i8*** %16, align 8, !tbaa !29
  %18 = load i8** %17, align 8, !tbaa !29
  %19 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %6, i32 0, i64 32, i8* getelementptr inbounds ([8 x i8]* @.str164, i64 0, i64 0), i8* %12, i32 %13, i8* %18) #8
  %20 = call i8* @strdup(i8* %6) #8
  ret i8* %20
}

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #3

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #5

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @pr_strings(%struct.__sFILE* nocapture %fp, i32 %indent, i8* %title, i8*** readonly %nm, i32 %n) #4 {
  %1 = icmp eq i8*** %nm, null
  br i1 %1, label %available.exit, label %.critedge

available.exit:                                   ; preds = %0
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* %title) #8
  br label %.loopexit

.critedge:                                        ; preds = %0
  %3 = tail call i32 @pr_title_n(%struct.__sFILE* %fp, i32 %indent, i8* %title, i32 %n) #9
  %4 = icmp sgt i32 %n, 0
  br i1 %4, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.critedge
  %5 = icmp sgt i32 %3, 0
  %6 = add i32 %3, -1
  %7 = add i32 %n, -1
  br label %8

; <label>:8                                       ; preds = %pr_indent.exit, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %pr_indent.exit ]
  br i1 %5, label %.lr.ph.i, label %pr_indent.exit

.lr.ph.i:                                         ; preds = %8, %.lr.ph.i
  %i.01.i = phi i32 [ %9, %.lr.ph.i ], [ 0, %8 ]
  %fputc.i = tail call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6
  %9 = add nuw nsw i32 %i.01.i, 1
  %exitcond.i = icmp eq i32 %i.01.i, %6
  br i1 %exitcond.i, label %pr_indent.exit, label %.lr.ph.i

pr_indent.exit:                                   ; preds = %.lr.ph.i, %8
  %10 = load i32* @bShowNumbers, align 4, !tbaa !8
  %11 = icmp ne i32 %10, 0
  %12 = trunc i64 %indvars.iv to i32
  %13 = select i1 %11, i32 %12, i32 -1
  %14 = getelementptr inbounds i8*** %nm, i64 %indvars.iv
  %15 = load i8*** %14, align 8, !tbaa !29
  %16 = load i8** %15, align 8, !tbaa !29
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str193, i64 0, i64 0), i8* %title, i32 %13, i8* %16) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %12, %7
  br i1 %exitcond, label %.loopexit, label %8

.loopexit:                                        ; preds = %pr_indent.exit, %.critedge, %available.exit
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #6

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #6

declare float @sqrtf(float)

declare float @fabsf(float)

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { readnone }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"float", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"double", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !4, i64 0}
!10 = !{!11, !3, i64 0}
!11 = !{!"", !3, i64 0, !7, i64 8, !7, i64 16, !3, i64 24}
!12 = !{!11, !7, i64 8}
!13 = !{!11, !7, i64 16}
!14 = !{!11, !3, i64 24}
!15 = !{!16, !9, i64 0}
!16 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56}
!17 = !{!"any pointer", !4, i64 0}
!18 = !{!16, !17, i64 16}
!19 = !{!16, !17, i64 24}
!20 = !{!16, !17, i64 32}
!21 = !{!16, !9, i64 4}
!22 = !{!16, !17, i64 40}
!23 = !{!16, !9, i64 8}
!24 = !{!16, !17, i64 48}
!25 = !{!16, !9, i64 12}
!26 = !{!16, !17, i64 56}
!27 = !{!28, !9, i64 0}
!28 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !3, i64 56, !3, i64 60, !3, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !3, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !3, i64 120, !4, i64 124, !4, i64 160, !9, i64 196, !3, i64 200, !3, i64 204, !9, i64 208, !3, i64 212, !3, i64 216, !9, i64 220, !3, i64 224, !3, i64 228, !3, i64 232, !9, i64 236, !3, i64 240, !3, i64 244, !9, i64 248, !3, i64 252, !3, i64 256, !3, i64 260, !3, i64 264, !3, i64 268, !9, i64 272, !9, i64 276, !9, i64 280, !3, i64 284, !3, i64 288, !3, i64 292, !9, i64 296, !3, i64 300, !3, i64 304, !9, i64 308, !9, i64 312, !9, i64 316, !9, i64 320, !9, i64 324, !3, i64 328, !9, i64 332, !3, i64 336, !3, i64 340, !9, i64 344, !3, i64 348, !9, i64 352, !9, i64 356, !9, i64 360, !9, i64 364, !3, i64 368, !3, i64 372, !3, i64 376, !3, i64 380, !16, i64 384, !4, i64 448, !4, i64 520}
!29 = !{!17, !17, i64 0}
!30 = !{!28, !9, i64 4}
!31 = !{!28, !9, i64 8}
!32 = !{!28, !9, i64 12}
!33 = !{!28, !9, i64 16}
!34 = !{!28, !9, i64 20}
!35 = !{!28, !9, i64 24}
!36 = !{!28, !9, i64 28}
!37 = !{!28, !9, i64 32}
!38 = !{!28, !9, i64 36}
!39 = !{!28, !9, i64 40}
!40 = !{!28, !9, i64 44}
!41 = !{!28, !9, i64 48}
!42 = !{!28, !9, i64 52}
!43 = !{!28, !3, i64 56}
!44 = !{!28, !3, i64 60}
!45 = !{!28, !3, i64 64}
!46 = !{!28, !9, i64 68}
!47 = !{!28, !9, i64 72}
!48 = !{!28, !9, i64 76}
!49 = !{!28, !9, i64 80}
!50 = !{!28, !3, i64 84}
!51 = !{!28, !9, i64 88}
!52 = !{!28, !9, i64 92}
!53 = !{!28, !9, i64 96}
!54 = !{!28, !9, i64 100}
!55 = !{!28, !9, i64 104}
!56 = !{!28, !9, i64 332}
!57 = !{!28, !9, i64 108}
!58 = !{!28, !9, i64 112}
!59 = !{!28, !9, i64 116}
!60 = !{!28, !3, i64 120}
!61 = !{!28, !9, i64 196}
!62 = !{!28, !3, i64 200}
!63 = !{!28, !3, i64 204}
!64 = !{!28, !9, i64 208}
!65 = !{!28, !3, i64 212}
!66 = !{!28, !3, i64 216}
!67 = !{!28, !9, i64 220}
!68 = !{!28, !3, i64 224}
!69 = !{!28, !3, i64 228}
!70 = !{!28, !3, i64 232}
!71 = !{!28, !9, i64 236}
!72 = !{!28, !3, i64 244}
!73 = !{!28, !9, i64 248}
!74 = !{!28, !3, i64 252}
!75 = !{!28, !3, i64 260}
!76 = !{!28, !3, i64 264}
!77 = !{!28, !3, i64 256}
!78 = !{!28, !9, i64 272}
!79 = !{!28, !9, i64 276}
!80 = !{!28, !3, i64 268}
!81 = !{!28, !3, i64 284}
!82 = !{!28, !9, i64 280}
!83 = !{!28, !3, i64 288}
!84 = !{!28, !3, i64 292}
!85 = !{!28, !9, i64 296}
!86 = !{!28, !3, i64 300}
!87 = !{!28, !3, i64 304}
!88 = !{!28, !9, i64 308}
!89 = !{!28, !9, i64 312}
!90 = !{!28, !9, i64 316}
!91 = !{!28, !9, i64 320}
!92 = !{!28, !3, i64 240}
!93 = !{!28, !9, i64 324}
!94 = !{!28, !3, i64 328}
!95 = !{!28, !3, i64 336}
!96 = !{!28, !3, i64 340}
!97 = !{!28, !9, i64 344}
!98 = !{!28, !3, i64 348}
!99 = !{!28, !9, i64 352}
!100 = !{!28, !9, i64 356}
!101 = !{!28, !9, i64 360}
!102 = !{!28, !9, i64 364}
!103 = !{!28, !3, i64 368}
!104 = !{!28, !3, i64 372}
!105 = !{!28, !3, i64 376}
!106 = !{!28, !3, i64 380}
!107 = !{!108, !9, i64 0}
!108 = !{!"", !9, i64 0, !17, i64 8, !17, i64 16}
!109 = !{!108, !17, i64 8}
!110 = !{!108, !17, i64 16}
!111 = !{!112, !3, i64 0}
!112 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12}
!113 = !{!112, !3, i64 4}
!114 = !{!112, !3, i64 8}
!115 = !{!112, !3, i64 12}
!116 = !{!117, !3, i64 0}
!117 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8}
!118 = !{!117, !3, i64 4}
!119 = !{!117, !3, i64 8}
!120 = !{!121, !3, i64 0}
!121 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !3, i64 20}
!122 = !{!121, !3, i64 4}
!123 = !{!121, !3, i64 8}
!124 = !{!121, !3, i64 12}
!125 = !{!121, !3, i64 16}
!126 = !{!121, !3, i64 20}
!127 = !{!128, !3, i64 0}
!128 = !{!"", !3, i64 0, !3, i64 4}
!129 = !{!128, !3, i64 4}
!130 = !{!131, !3, i64 0}
!131 = !{!"", !3, i64 0, !3, i64 4, !9, i64 8, !3, i64 12, !3, i64 16}
!132 = !{!131, !3, i64 4}
!133 = !{!131, !3, i64 12}
!134 = !{!131, !3, i64 16}
!135 = !{!131, !9, i64 8}
!136 = !{!137, !9, i64 20}
!137 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !9, i64 16, !9, i64 20}
!138 = !{!137, !9, i64 16}
!139 = !{!137, !3, i64 0}
!140 = !{!137, !3, i64 4}
!141 = !{!137, !3, i64 8}
!142 = !{!137, !3, i64 12}
!143 = !{!144, !9, i64 0}
!144 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !3, i64 12, !3, i64 16, !3, i64 20}
!145 = !{!144, !9, i64 8}
!146 = !{!144, !9, i64 4}
!147 = !{!144, !3, i64 12}
!148 = !{!144, !3, i64 16}
!149 = !{!144, !3, i64 20}
!150 = !{!151, !17, i64 0}
!151 = !{!"", !17, i64 0, !17, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !152, i64 32, !9, i64 40, !17, i64 48}
!152 = !{!"long", !4, i64 0}
!153 = !{!154, !9, i64 8}
!154 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !17, i64 16, !17, i64 24, !4, i64 32}
!155 = !{!154, !9, i64 4}
!156 = !{!154, !9, i64 0}
!157 = !{!154, !17, i64 16}
!158 = !{!154, !17, i64 24}
!159 = !{!151, !17, i64 8}
!160 = !{!161, !9, i64 0}
!161 = !{!"", !9, i64 0, !4, i64 4, !17, i64 1032}
!162 = !{!161, !17, i64 1032}
!163 = !{!151, !9, i64 16}
!164 = !{!165, !17, i64 1032}
!165 = !{!"", !4, i64 0, !9, i64 1024, !17, i64 1032, !9, i64 1040, !17, i64 1048}
!166 = !{!165, !9, i64 1024}
!167 = !{!165, !17, i64 1048}
!168 = !{!165, !9, i64 1040}
!169 = !{!170, !17, i64 0}
!170 = !{!"", !17, i64 0, !154, i64 8, !171, i64 45800, !4, i64 47080, !172, i64 50248}
!171 = !{!"", !9, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !9, i64 40, !17, i64 48, !9, i64 56, !17, i64 64, !165, i64 72, !4, i64 1128, !17, i64 1272}
!172 = !{!"", !9, i64 0, !17, i64 8}
!173 = !{!171, !17, i64 8}
!174 = !{!171, !9, i64 0}
!175 = !{!176, !177, i64 16}
!176 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !177, i64 16, !177, i64 18, !9, i64 20, !9, i64 24, !4, i64 28, !4, i64 37}
!177 = !{!"short", !4, i64 0}
!178 = !{!176, !177, i64 18}
!179 = !{!176, !9, i64 20}
!180 = !{!176, !3, i64 0}
!181 = !{!176, !3, i64 4}
!182 = !{!176, !3, i64 8}
!183 = !{!176, !3, i64 12}
!184 = !{!176, !9, i64 24}
!185 = !{!4, !4, i64 0}
!186 = !{!171, !17, i64 64}
!187 = !{!172, !9, i64 0}
!188 = !{!172, !17, i64 8}
!189 = !{!171, !17, i64 16}
!190 = !{!171, !17, i64 24}
!191 = !{!171, !17, i64 32}
!192 = !{!171, !17, i64 48}
!193 = !{!171, !9, i64 40}
!194 = !{!171, !9, i64 56}
!195 = !{!196, !9, i64 0}
!196 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !3, i64 32, !3, i64 36}
!197 = !{!196, !9, i64 4}
!198 = !{!196, !9, i64 8}
!199 = !{!196, !9, i64 12}
!200 = !{!196, !9, i64 16}
!201 = !{!196, !9, i64 20}
!202 = !{!196, !9, i64 24}
!203 = !{!196, !9, i64 28}
!204 = !{!196, !3, i64 32}
!205 = !{!196, !3, i64 36}

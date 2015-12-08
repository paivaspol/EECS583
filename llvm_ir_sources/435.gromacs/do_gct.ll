; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/do_gct.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.t_coupl_rec = type { [14 x float], [14 x float], [14 x float], [14 x i32], i32, i32, i32, i32, %struct.t_coupl_LJ*, %struct.t_coupl_BU*, %struct.t_coupl_Q*, %struct.t_coupl_iparams*, i32, i32, i32 }
%struct.t_coupl_LJ = type { i32, i32, i32, i32, float, float, float, float }
%struct.t_coupl_BU = type { i32, i32, i32, i32, float, float, float, float, float, float }
%struct.t_coupl_Q = type { i32, i32, i32, float, float }
%struct.t_coupl_iparams = type { i32, i32, %union.t_iparams, %union.t_iparams }
%struct.t_filenm = type { i32, i8*, i8*, i64 }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }

@.str = private unnamed_addr constant [4 x i8] c"tcr\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/do_gct.c\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"-j\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"-jo\00", align 1
@gprod.nbuf = internal unnamed_addr global i32 0, align 4
@gprod.buf = internal unnamed_addr global [2 x float*] zeroinitializer, align 16
@.str4 = private unnamed_addr constant [9 x i8] c"buf[cur]\00", align 1
@.str5 = private unnamed_addr constant [10 x i8] c"buf[next]\00", align 1
@do_coupling.f6 = internal unnamed_addr global float* null, align 8
@do_coupling.f12 = internal unnamed_addr global float* null, align 8
@do_coupling.fa = internal unnamed_addr global float* null, align 8
@do_coupling.fb = internal unnamed_addr global float* null, align 8
@do_coupling.fc = internal unnamed_addr global float* null, align 8
@do_coupling.fq = internal unnamed_addr global float* null, align 8
@do_coupling.bFirst = internal unnamed_addr global i1 false
@.str6 = private unnamed_addr constant [23 x i8] c"GCT: this is parallel\0A\00", align 1
@.str7 = private unnamed_addr constant [27 x i8] c"GCT: this is not parallel\0A\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"f6\00", align 1
@.str9 = private unnamed_addr constant [4 x i8] c"f12\00", align 1
@.str10 = private unnamed_addr constant [3 x i8] c"fa\00", align 1
@.str11 = private unnamed_addr constant [3 x i8] c"fb\00", align 1
@.str12 = private unnamed_addr constant [3 x i8] c"fc\00", align 1
@.str13 = private unnamed_addr constant [3 x i8] c"fq\00", align 1
@.str14 = private unnamed_addr constant [48 x i8] c"GCT: TTT = %g, nrdf = %d, vir0 = %g,  Vol = %g\0A\00", align 1
@.str15 = private unnamed_addr constant [58 x i8] c"GCT: mu_aver = %g(D), mu_ind = %g(D), Epol = %g (kJ/mol)\0A\00", align 1
@debug = external global %struct._IO_FILE*
@.str16 = private unnamed_addr constant [38 x i8] c"mu_ind: %g (%g D) mu_aver: %g (%g D)\0A\00", align 1
@.str17 = private unnamed_addr constant [35 x i8] c"Eref %g Epol %g Erunav %g Eact %g\0A\00", align 1
@.str18 = private unnamed_addr constant [34 x i8] c"Hack code for this to work again \00", align 1
@.str19 = private unnamed_addr constant [47 x i8] c"Have computed derivatives: xiH = %g, xiS = %g\0A\00", align 1
@.str20 = private unnamed_addr constant [42 x i8] c"No H, no Shell, edit code at %s, line %d\0A\00", align 1
@.str21 = private unnamed_addr constant [52 x i8] c"tcr->tcLJ[%d].xi_6 = %g, xi_12 = %g deviation = %g\0A\00", align 1
@.str22 = private unnamed_addr constant [29 x i8] c"buck (type=%d) = %e, %e, %e\0A\00", align 1
@.str23 = private unnamed_addr constant [27 x i8] c"Coupling type %d not found\00", align 1
@pr_dev.fp = internal unnamed_addr global %struct._IO_FILE* null, align 8
@.str24 = private unnamed_addr constant [8 x i8] c"-devout\00", align 1
@.str25 = private unnamed_addr constant [29 x i8] c"Deviations from target value\00", align 1
@.str26 = private unnamed_addr constant [10 x i8] c"Time (ps)\00", align 1
@.str27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str28 = private unnamed_addr constant [4 x i8] c"ptr\00", align 1
@eoNames = external global [17 x i8*]
@.str29 = private unnamed_addr constant [7 x i8] c"%10.3f\00", align 1
@.str30 = private unnamed_addr constant [9 x i8] c"  %10.3e\00", align 1
@pr_ff.prop = internal unnamed_addr global %struct._IO_FILE* null, align 8
@pr_ff.out = internal unnamed_addr global %struct._IO_FILE** null, align 8
@pr_ff.qq = internal unnamed_addr global %struct._IO_FILE** null, align 8
@pr_ff.ip = internal unnamed_addr global %struct._IO_FILE** null, align 8
@.str32 = private unnamed_addr constant [4 x i8] c"C12\00", align 1
@.str33 = private unnamed_addr constant [3 x i8] c"C6\00", align 1
@pr_ff.leg = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str32, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str33, i32 0, i32 0)], align 16
@.str34 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str35 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str36 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@pr_ff.bleg = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([2 x i8]* @.str34, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str35, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str36, i32 0, i32 0)], align 16
@.str37 = private unnamed_addr constant [7 x i8] c"-runav\00", align 1
@.str38 = private unnamed_addr constant [32 x i8] c"Properties and Running Averages\00", align 1
@.str39 = private unnamed_addr constant [6 x i8] c"raleg\00", align 1
@.str40 = private unnamed_addr constant [6 x i8] c"RA-%s\00", align 1
@.str41 = private unnamed_addr constant [9 x i8] c"raleg[i]\00", align 1
@.str42 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str43 = private unnamed_addr constant [7 x i8] c"-ffout\00", align 1
@.str44 = private unnamed_addr constant [31 x i8] c"General Coupling Lennard Jones\00", align 1
@.str45 = private unnamed_addr constant [23 x i8] c"Force constant (units)\00", align 1
@.str46 = private unnamed_addr constant [50 x i8] c"@ subtitle \22Interaction between types %d and %d\22\0A\00", align 1
@.str47 = private unnamed_addr constant [28 x i8] c"General Coupling Buckingham\00", align 1
@.str48 = private unnamed_addr constant [3 x i8] c"qq\00", align 1
@.str49 = private unnamed_addr constant [24 x i8] c"General Coupling Charge\00", align 1
@.str50 = private unnamed_addr constant [11 x i8] c"Charge (e)\00", align 1
@.str51 = private unnamed_addr constant [22 x i8] c"@ subtitle \22Type %d\22\0A\00", align 1
@.str52 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@.str53 = private unnamed_addr constant [8 x i8] c"gctIP%d\00", align 1
@.str54 = private unnamed_addr constant [25 x i8] c"General Coupling iparams\00", align 1
@.str55 = private unnamed_addr constant [6 x i8] c"ip ()\00", align 1
@.str56 = private unnamed_addr constant [29 x i8] c"@ subtitle \22Coupling to %s\22\0A\00", align 1
@interaction_function = external global [44 x %struct.t_interaction_function]
@.str57 = private unnamed_addr constant [17 x i8] c"  %10.3e  %10.3e\00", align 1
@.str58 = private unnamed_addr constant [24 x i8] c"%14.7e  %14.7e  %14.7e\0A\00", align 1
@.str59 = private unnamed_addr constant [32 x i8] c"%14.7e  %14.7e  %14.7e  %14.7e\0A\00", align 1
@.str60 = private unnamed_addr constant [16 x i8] c"%14.7e  %14.7e\0A\00", align 1
@.str61 = private unnamed_addr constant [7 x i8] c"%10g  \00", align 1
@.str62 = private unnamed_addr constant [12 x i8] c"%10g  %10g\0A\00", align 1
@mk_gct_nm.buf = internal global [256 x i8] zeroinitializer, align 16
@.str63 = private unnamed_addr constant [6 x i8] c"%d.%s\00", align 1
@.str64 = private unnamed_addr constant [9 x i8] c"%d_%d.%s\00", align 1
@calc_dist.bFirst = internal unnamed_addr global i1 false

; Function Attrs: nounwind optsize uwtable
define %struct.t_coupl_rec* @init_coupling(%struct._IO_FILE* %log, i32 %nfile, %struct.t_filenm* %fnm, %struct.t_commrec* %cr, %struct.t_forcerec* %fr, %struct.t_mdatoms* %md, %struct.t_idef* %idef) #0 {
entry:
  %tcr = alloca %struct.t_coupl_rec*, align 8
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 61, i32 1, i32 288) #6
  %0 = bitcast i8* %call to %struct.t_coupl_rec*
  store %struct.t_coupl_rec* %0, %struct.t_coupl_rec** %tcr, align 8, !tbaa !0
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %1 = load i32* %nodeid, align 4, !tbaa !3
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %threadid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %2 = load i32* %threadid, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call2 = call i8* @opt2fn(i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #6
  %3 = load %struct.t_coupl_rec** %tcr, align 8, !tbaa !0
  call void @read_gct(i8* %call2, %struct.t_coupl_rec* %3) #6
  %call3 = call i8* @opt2fn(i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #6
  %4 = load %struct.t_coupl_rec** %tcr, align 8, !tbaa !0
  call void @write_gct(i8* %call3, %struct.t_coupl_rec* %4, %struct.t_idef* %idef) #6
  %.pre = load %struct.t_coupl_rec** %tcr, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = phi %struct.t_coupl_rec* [ %.pre, %if.then ], [ %0, %land.lhs.true ], [ %0, %entry ]
  call void @copy_ff(%struct.t_coupl_rec* %5, %struct.t_forcerec* %fr, %struct.t_mdatoms* %md, %struct.t_idef* %idef) #6
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %6 = load i32* %nnodes, align 4, !tbaa !3
  %cmp4 = icmp sgt i32 %6, 1
  br i1 %cmp4, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %7 = load i32* %nthreads, align 4, !tbaa !3
  %cmp5 = icmp sgt i32 %7, 1
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  call void @comm_tcr(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_coupl_rec** %tcr) #6
  %.pre15 = load %struct.t_coupl_rec** %tcr, align 8, !tbaa !0
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %lor.lhs.false
  %8 = phi %struct.t_coupl_rec* [ %.pre15, %if.then6 ], [ %5, %lor.lhs.false ]
  ret %struct.t_coupl_rec* %8
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @read_gct(i8*, %struct.t_coupl_rec*) #1

; Function Attrs: optsize
declare i8* @opt2fn(i8*, i32, %struct.t_filenm*) #1

; Function Attrs: optsize
declare void @write_gct(i8*, %struct.t_coupl_rec*, %struct.t_idef*) #1

; Function Attrs: optsize
declare void @copy_ff(%struct.t_coupl_rec*, %struct.t_forcerec*, %struct.t_mdatoms*, %struct.t_idef*) #1

; Function Attrs: optsize
declare void @comm_tcr(%struct._IO_FILE*, %struct.t_commrec*, %struct.t_coupl_rec**) #1

; Function Attrs: nounwind optsize uwtable
define void @gprod(%struct.t_commrec* nocapture %cr, i32 %n, float* nocapture %f) #0 {
entry:
  %0 = load i32* @gprod.nbuf, align 4, !tbaa !3
  %cmp = icmp slt i32 %0, %n
  br i1 %cmp, label %if.then, label %for.cond.preheader

if.then:                                          ; preds = %entry
  store i32 %n, i32* @gprod.nbuf, align 4, !tbaa !3
  %1 = load float** getelementptr inbounds ([2 x float*]* @gprod.buf, i64 0, i64 0), align 16, !tbaa !0
  %2 = bitcast float* %1 to i8*
  %mul = shl i32 %n, 2
  %call = tail call i8* @save_realloc(i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 292, i8* %2, i32 %mul) #6
  %3 = bitcast i8* %call to float*
  store float* %3, float** getelementptr inbounds ([2 x float*]* @gprod.buf, i64 0, i64 0), align 16, !tbaa !0
  %4 = load float** getelementptr inbounds ([2 x float*]* @gprod.buf, i64 0, i64 1), align 8, !tbaa !0
  %5 = bitcast float* %4 to i8*
  %6 = load i32* @gprod.nbuf, align 4, !tbaa !3
  %mul7 = shl i32 %6, 2
  %call9 = tail call i8* @save_realloc(i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 293, i8* %5, i32 %mul7) #6
  %7 = bitcast i8* %call9 to float*
  store float* %7, float** getelementptr inbounds ([2 x float*]* @gprod.buf, i64 0, i64 1), align 8, !tbaa !0
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry
  %cmp1390 = icmp sgt i32 %n, 0
  br i1 %cmp1390, label %for.body.lr.ph, label %for.cond21.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %8 = load float** getelementptr inbounds ([2 x float*]* @gprod.buf, i64 0, i64 0), align 16, !tbaa !0
  br label %for.body

for.cond21.preheader:                             ; preds = %for.body, %for.cond.preheader
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %9 = load i32* %nnodes, align 4, !tbaa !3
  %sub2286 = add nsw i32 %9, -1
  %cmp2387 = icmp sgt i32 %sub2286, 0
  br i1 %cmp2387, label %for.body25.lr.ph, label %for.end57

for.body25.lr.ph:                                 ; preds = %for.cond21.preheader
  %left = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %mul29 = shl i32 %n, 2
  %right = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  br label %for.body25

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv92 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next93, %for.body ]
  %arrayidx16 = getelementptr inbounds float* %f, i64 %indvars.iv92
  %10 = load float* %arrayidx16, align 4, !tbaa !4
  %arrayidx20 = getelementptr inbounds float* %8, i64 %indvars.iv92
  store float %10, float* %arrayidx20, align 4, !tbaa !4
  %indvars.iv.next93 = add i64 %indvars.iv92, 1
  %lftr.wideiv94 = trunc i64 %indvars.iv.next93 to i32
  %exitcond95 = icmp eq i32 %lftr.wideiv94, %n
  br i1 %exitcond95, label %for.cond21.preheader, label %for.body

for.body25:                                       ; preds = %for.end53.for.body25_crit_edge, %for.body25.lr.ph
  %cur.089 = phi i32 [ 0, %for.body25.lr.ph ], [ %sub31, %for.end53.for.body25_crit_edge ]
  %i.088 = phi i32 [ 1, %for.body25.lr.ph ], [ %phitmp, %for.end53.for.body25_crit_edge ]
  %11 = load i32* %left, align 4, !tbaa !3
  %idxprom26 = sext i32 %cur.089 to i64
  %arrayidx27 = getelementptr inbounds [2 x float*]* @gprod.buf, i64 0, i64 %idxprom26
  %12 = load float** %arrayidx27, align 8, !tbaa !0
  %13 = bitcast float* %12 to i8*
  tail call void @gmx_tx(i32 %11, i8* %13, i32 %mul29) #6
  %14 = load i32* %right, align 4, !tbaa !3
  %sub31 = sub nsw i32 1, %cur.089
  %idxprom32 = sext i32 %sub31 to i64
  %arrayidx33 = getelementptr inbounds [2 x float*]* @gprod.buf, i64 0, i64 %idxprom32
  %15 = load float** %arrayidx33, align 8, !tbaa !0
  %16 = bitcast float* %15 to i8*
  tail call void @gmx_rx(i32 %14, i8* %16, i32 %mul29) #6
  %17 = load i32* %left, align 4, !tbaa !3
  %18 = load i32* %right, align 4, !tbaa !3
  tail call void @gmx_wait(i32 %17, i32 %18) #6
  br i1 %cmp1390, label %for.body42.lr.ph, label %for.end53

for.body42.lr.ph:                                 ; preds = %for.body25
  %19 = load float** %arrayidx33, align 8, !tbaa !0
  br label %for.body42

for.body42:                                       ; preds = %for.body42, %for.body42.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body42.lr.ph ], [ %indvars.iv.next, %for.body42 ]
  %arrayidx47 = getelementptr inbounds float* %19, i64 %indvars.iv
  %20 = load float* %arrayidx47, align 4, !tbaa !4
  %arrayidx49 = getelementptr inbounds float* %f, i64 %indvars.iv
  %21 = load float* %arrayidx49, align 4, !tbaa !4
  %mul50 = fmul float %20, %21
  store float %mul50, float* %arrayidx49, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end53, label %for.body42

for.end53:                                        ; preds = %for.body42, %for.body25
  %22 = load i32* %nnodes, align 4, !tbaa !3
  %sub22 = add nsw i32 %22, -1
  %cmp23 = icmp slt i32 %i.088, %sub22
  br i1 %cmp23, label %for.end53.for.body25_crit_edge, label %for.end57

for.end53.for.body25_crit_edge:                   ; preds = %for.end53
  %phitmp = add i32 %i.088, 1
  br label %for.body25

for.end57:                                        ; preds = %for.end53, %for.cond21.preheader
  ret void
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: optsize
declare void @gmx_tx(i32, i8*, i32) #1

; Function Attrs: optsize
declare void @gmx_rx(i32, i8*, i32) #1

; Function Attrs: optsize
declare void @gmx_wait(i32, i32) #1

; Function Attrs: nounwind optsize readnone uwtable
define float @run_aver(float %old, float %cur, i32 %step, i32 %nmem) #2 {
entry:
  %cmp = icmp slt i32 %nmem, 1
  %cond = select i1 %cmp, i32 1, i32 %nmem
  %sub = add nsw i32 %cond, -1
  %conv = sitofp i32 %sub to float
  %mul = fmul float %conv, %old
  %add = fadd float %mul, %cur
  %conv1 = sitofp i32 %cond to float
  %div = fdiv float %add, %conv1
  ret float %div
}

; Function Attrs: nounwind optsize uwtable
define void @do_coupling(%struct._IO_FILE* nocapture %log, i32 %nfile, %struct.t_filenm* %fnm, %struct.t_coupl_rec* %tcr, float %t, i32 %step, float* nocapture %ener, %struct.t_forcerec* nocapture %fr, %struct.t_inputrec* nocapture %ir, i32 %bMaster, %struct.t_mdatoms* nocapture %md, %struct.t_idef* nocapture %idef, float %mu_aver, i32 %nmols, %struct.t_commrec* nocapture %cr, [3 x float]* nocapture %box, [3 x float]* nocapture %virial, [3 x float]* nocapture %pres, float* nocapture %mu_tot, [3 x float]* nocapture %x, [3 x float]* nocapture %f, i32 %bDoIt) #0 {
entry:
  %buf.i = alloca [256 x i8], align 16
  %leg.i = alloca [2 x i8*], align 16
  %bleg.i = alloca [3 x i8*], align 16
  %deviation = alloca [14 x float], align 16
  %prdev = alloca [14 x float], align 16
  %0 = bitcast [14 x float]* %deviation to i8*
  call void @llvm.lifetime.start(i64 56, i8* %0) #3
  %1 = bitcast [14 x float]* %prdev to i8*
  call void @llvm.lifetime.start(i64 56, i8* %1) #3
  %atnr = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 2
  %2 = load i32* %atnr, align 4, !tbaa !3
  %mul = mul nsw i32 %2, %2
  %.b = load i1* @do_coupling.bFirst, align 1
  br i1 %.b, label %if.end50, label %if.then

if.then:                                          ; preds = %entry
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %3 = load i32* %nnodes, align 4, !tbaa !3
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %4 = load i32* %nthreads, align 4, !tbaa !3
  %cmp2 = icmp sgt i32 %4, 1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  %5 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str6, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %log)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %6 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str7, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %log)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %call5 = call i32 @fflush(%struct._IO_FILE* %log) #6
  %call6 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 458, i32 %mul, i32 4) #6
  %7 = bitcast i8* %call6 to float*
  store float* %7, float** @do_coupling.f6, align 8, !tbaa !0
  %call7 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 459, i32 %mul, i32 4) #6
  %8 = bitcast i8* %call7 to float*
  store float* %8, float** @do_coupling.f12, align 8, !tbaa !0
  %call8 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 460, i32 %mul, i32 4) #6
  %9 = bitcast i8* %call8 to float*
  store float* %9, float** @do_coupling.fa, align 8, !tbaa !0
  %call9 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 461, i32 %mul, i32 4) #6
  %10 = bitcast i8* %call9 to float*
  store float* %10, float** @do_coupling.fb, align 8, !tbaa !0
  %call10 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 462, i32 %mul, i32 4) #6
  %11 = bitcast i8* %call10 to float*
  store float* %11, float** @do_coupling.fc, align 8, !tbaa !0
  %12 = load i32* %atnr, align 4, !tbaa !3
  %call12 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 463, i32 %12, i32 4) #6
  %13 = bitcast i8* %call12 to float*
  store float* %13, float** @do_coupling.fq, align 8, !tbaa !0
  %bVirial = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 14
  %14 = load i32* %bVirial, align 4, !tbaa !3
  %tobool13 = icmp eq i32 %14, 0
  br i1 %tobool13, label %if.end49, label %if.then14

if.then14:                                        ; preds = %if.end
  %arrayidx1.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %15 = load float* %arrayidx1.i, align 4, !tbaa !4
  %arrayidx3.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %16 = load float* %arrayidx3.i, align 4, !tbaa !4
  %arrayidx5.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %17 = load float* %arrayidx5.i, align 4, !tbaa !4
  %mul.i = fmul float %16, %17
  %arrayidx7.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %18 = load float* %arrayidx7.i, align 4, !tbaa !4
  %arrayidx9.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %19 = load float* %arrayidx9.i, align 4, !tbaa !4
  %mul10.i = fmul float %18, %19
  %sub.i = fsub float %mul.i, %mul10.i
  %mul11.i = fmul float %15, %sub.i
  %arrayidx13.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %20 = load float* %arrayidx13.i, align 4, !tbaa !4
  %arrayidx15.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %21 = load float* %arrayidx15.i, align 4, !tbaa !4
  %mul18.i = fmul float %17, %21
  %arrayidx22.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  %22 = load float* %arrayidx22.i, align 4, !tbaa !4
  %mul23.i = fmul float %18, %22
  %sub24.i = fsub float %mul18.i, %mul23.i
  %mul25.i = fmul float %20, %sub24.i
  %sub26.i = fsub float %mul11.i, %mul25.i
  %arrayidx28.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %23 = load float* %arrayidx28.i, align 4, !tbaa !4
  %mul33.i = fmul float %19, %21
  %mul38.i = fmul float %16, %22
  %sub39.i = fsub float %mul33.i, %mul38.i
  %mul40.i = fmul float %23, %sub39.i
  %add.i = fadd float %mul40.i, %sub26.i
  %ngtc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 0
  %24 = load i32* %ngtc, align 4, !tbaa !3
  %cmp161116 = icmp sgt i32 %24, 0
  br i1 %cmp161116, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.then14
  %nrdf18 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 4
  %25 = load float** %nrdf18, align 8, !tbaa !0
  %ref_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 5
  %26 = load float** %ref_t, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv1170 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next1171, %for.body ]
  %TTT.01118 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %add28, %for.body ]
  %nrdf.01117 = phi i32 [ 0, %for.body.lr.ph ], [ %conv19, %for.body ]
  %arrayidx = getelementptr inbounds float* %25, i64 %indvars.iv1170
  %27 = load float* %arrayidx, align 4, !tbaa !4
  %conv = sitofp i32 %nrdf.01117 to float
  %add = fadd float %conv, %27
  %conv19 = fptosi float %add to i32
  %arrayidx26 = getelementptr inbounds float* %26, i64 %indvars.iv1170
  %28 = load float* %arrayidx26, align 4, !tbaa !4
  %mul27 = fmul float %27, %28
  %add28 = fadd float %TTT.01118, %mul27
  %indvars.iv.next1171 = add i64 %indvars.iv1170, 1
  %29 = trunc i64 %indvars.iv.next1171 to i32
  %cmp16 = icmp slt i32 %29, %24
  br i1 %cmp16, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.then14
  %TTT.0.lcssa = phi float [ 0.000000e+00, %if.then14 ], [ %add28, %for.body ]
  %nrdf.0.lcssa = phi i32 [ 0, %if.then14 ], [ %conv19, %for.body ]
  %conv29 = sitofp i32 %nrdf.0.lcssa to float
  %div = fdiv float %TTT.0.lcssa, %conv29
  %conv30 = sitofp i32 %nrdf.0.lcssa to double
  %mul31 = fmul double %conv30, 0x3F710732CDE67DC4
  %conv32 = fpext float %div to double
  %mul33 = fmul double %mul31, %conv32
  %conv34 = fpext float %add.i to double
  %mul35 = fmul double %conv34, 1.500000e+00
  %arrayidx36 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 0
  %30 = load float* %arrayidx36, align 4, !tbaa !4
  %conv37 = fpext float %30 to double
  %mul38 = fmul double %mul35, %conv37
  %sub = fsub double %mul33, %mul38
  %conv39 = fptrunc double %sub to float
  %arrayidx41 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 2
  store float %conv39, float* %arrayidx41, align 4, !tbaa !4
  %conv45 = fpext float %conv39 to double
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([48 x i8]* @.str14, i64 0, i64 0), double %conv32, i32 %nrdf.0.lcssa, double %conv45, double %conv34) #6
  %call48 = call i32 @fflush(%struct._IO_FILE* %log) #6
  br label %if.end49

if.end49:                                         ; preds = %if.end, %for.end
  store i1 true, i1* @do_coupling.bFirst, align 1
  br label %if.end50

if.end50:                                         ; preds = %entry, %if.end49
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %31 = load i32* %nodeid, align 4, !tbaa !3
  %cmp51 = icmp eq i32 %31, 0
  br i1 %cmp51, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.end50
  %threadid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %32 = load i32* %threadid, align 4, !tbaa !3
  %cmp53 = icmp eq i32 %32, 0
  br i1 %cmp53, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %nstlog = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 8
  %33 = load i32* %nstlog, align 4, !tbaa !3
  %call55 = call i32 @do_per_step(i32 %step, i32 %33) #6
  %tobool56 = icmp ne i32 %call55, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.end50
  %34 = phi i1 [ false, %land.lhs.true ], [ false, %if.end50 ], [ %tobool56, %land.rhs ]
  %delta_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %35 = load float* %delta_t, align 4, !tbaa !4
  %cmp57 = icmp eq i32 %step, 0
  br i1 %cmp57, label %for.body63, label %if.end104

for.body63:                                       ; preds = %land.end, %for.body63
  %indvars.iv1165 = phi i64 [ %indvars.iv.next1166, %for.body63 ], [ 0, %land.end ]
  %arrayidx66 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 %indvars.iv1165
  %36 = load float* %arrayidx66, align 4, !tbaa !4
  %arrayidx68 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 %indvars.iv1165
  store float %36, float* %arrayidx68, align 4, !tbaa !4
  %indvars.iv.next1166 = add i64 %indvars.iv1165, 1
  %lftr.wideiv1167 = trunc i64 %indvars.iv.next1166 to i32
  %exitcond1168 = icmp eq i32 %lftr.wideiv1167, 14
  br i1 %exitcond1168, label %for.end71, label %for.body63

for.end71:                                        ; preds = %for.body63
  %arrayidx73 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 13
  %37 = load float* %arrayidx73, align 4, !tbaa !4
  %fabsf915 = call float @fabsf(float %37) #7
  %38 = fpext float %fabsf915 to double
  %cmp76 = fcmp ogt double %38, 1.200000e-38
  br i1 %cmp76, label %if.then78, label %if.end104

if.then78:                                        ; preds = %for.end71
  %conv74 = fpext float %37 to double
  %conv79 = fpext float %mu_aver to double
  %div83 = fdiv double %conv74, 4.803210e+01
  %sub84 = fsub double %conv79, %div83
  %conv85 = fptrunc double %sub84 to float
  %mul86 = fmul float %conv85, %conv85
  %conv87 = fpext float %mul86 to double
  %arrayidx89 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 12
  %39 = load float* %arrayidx89, align 4, !tbaa !4
  %conv90 = fpext float %39 to double
  %mul91 = fmul double %conv90, 1.439520e-02
  %div92 = fdiv double %conv87, %mul91
  %conv93 = fptrunc double %div92 to float
  %arrayidx95 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 1
  %40 = load float* %arrayidx95, align 4, !tbaa !4
  %sub96 = fsub float %40, %conv93
  store float %sub96, float* %arrayidx95, align 4, !tbaa !4
  %mul98 = fmul double %conv79, 4.803210e+01
  %conv99 = fpext float %conv85 to double
  %mul100 = fmul double %conv99, 4.803210e+01
  %conv101 = fpext float %conv93 to double
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([58 x i8]* @.str15, i64 0, i64 0), double %mul98, double %mul100, double %conv101) #6
  br label %if.end104

if.end104:                                        ; preds = %for.end71, %if.then78, %land.end
  %.b.i = load i1* @calc_dist.bFirst, align 1
  br i1 %.b.i, label %calc_dist.exit, label %if.end8.i

if.end8.i:                                        ; preds = %if.end104
  store i1 true, i1* @calc_dist.bFirst, align 1
  br label %calc_dist.exit

calc_dist.exit:                                   ; preds = %if.end104, %if.end8.i
  %41 = load float* %mu_tot, align 4, !tbaa !4
  %mul.i920 = fmul float %41, %41
  %arrayidx2.i = getelementptr inbounds float* %mu_tot, i64 1
  %42 = load float* %arrayidx2.i, align 4, !tbaa !4
  %mul4.i921 = fmul float %42, %42
  %add.i922 = fadd float %mul.i920, %mul4.i921
  %arrayidx5.i923 = getelementptr inbounds float* %mu_tot, i64 2
  %43 = load float* %arrayidx5.i923, align 4, !tbaa !4
  %mul7.i = fmul float %43, %43
  %add8.i = fadd float %add.i922, %mul7.i
  %conv9.i = call float @sqrtf(float %add8.i) #4
  %bInter.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 13
  %44 = load i32* %bInter.i, align 4, !tbaa !3
  %tobool.i = icmp eq i32 %44, 0
  br i1 %tobool.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %calc_dist.exit
  %arrayidx.i924 = getelementptr inbounds float* %ener, i64 17
  %45 = load float* %arrayidx.i924, align 4, !tbaa !4
  %arrayidx1.i925 = getelementptr inbounds float* %ener, i64 13
  %46 = load float* %arrayidx1.i925, align 4, !tbaa !4
  %add.i926 = fadd float %45, %46
  %arrayidx2.i927 = getelementptr inbounds float* %ener, i64 18
  %47 = load float* %arrayidx2.i927, align 4, !tbaa !4
  %add3.i = fadd float %add.i926, %47
  %arrayidx4.i = getelementptr inbounds float* %ener, i64 15
  %48 = load float* %arrayidx4.i, align 4, !tbaa !4
  %add5.i928 = fadd float %add3.i, %48
  br label %Ecouple.exit

if.else.i:                                        ; preds = %calc_dist.exit
  %arrayidx6.i = getelementptr inbounds float* %ener, i64 37
  %49 = load float* %arrayidx6.i, align 4, !tbaa !4
  br label %Ecouple.exit

Ecouple.exit:                                     ; preds = %if.then.i, %if.else.i
  %retval.0.i = phi float [ %add5.i928, %if.then.i ], [ %49, %if.else.i ]
  %conv108 = sitofp i32 %nmols to float
  %div109 = fdiv float %retval.0.i, %conv108
  %arrayidx111 = getelementptr inbounds [3 x float]* %virial, i64 0, i64 0
  %50 = load float* %arrayidx111, align 4, !tbaa !4
  %arrayidx113 = getelementptr inbounds [3 x float]* %virial, i64 1, i64 1
  %51 = load float* %arrayidx113, align 4, !tbaa !4
  %add114 = fadd float %50, %51
  %arrayidx116 = getelementptr inbounds [3 x float]* %virial, i64 2, i64 2
  %52 = load float* %arrayidx116, align 4, !tbaa !4
  %add117 = fadd float %add114, %52
  %arrayidx119 = getelementptr inbounds float* %ener, i64 41
  %53 = load float* %arrayidx119, align 4, !tbaa !4
  %arrayidx.i931 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 0, i64 0
  store float %53, float* %arrayidx.i931, align 4, !tbaa !4
  %arrayidx2.i932 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 0
  %54 = load float* %arrayidx2.i932, align 4, !tbaa !4
  %nmemory.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 12
  %55 = load i32* %nmemory.i, align 4, !tbaa !3
  %cmp.i.i = icmp slt i32 %55, 1
  %cond.i.i = select i1 %cmp.i.i, i32 1, i32 %55
  %sub.i.i = add nsw i32 %cond.i.i, -1
  %conv.i.i = sitofp i32 %sub.i.i to float
  %mul.i.i = fmul float %54, %conv.i.i
  %add.i.i = fadd float %53, %mul.i.i
  %conv1.i.i = sitofp i32 %cond.i.i to float
  %div.i.i = fdiv float %add.i.i, %conv1.i.i
  store float %div.i.i, float* %arrayidx2.i932, align 4, !tbaa !4
  %arrayidx.i933 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 0, i64 1
  store float %div109, float* %arrayidx.i933, align 4, !tbaa !4
  %arrayidx2.i934 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 1
  %56 = load float* %arrayidx2.i934, align 4, !tbaa !4
  %mul.i.i940 = fmul float %56, %conv.i.i
  %add.i.i941 = fadd float %div109, %mul.i.i940
  %div.i.i943 = fdiv float %add.i.i941, %conv1.i.i
  store float %div.i.i943, float* %arrayidx2.i934, align 4, !tbaa !4
  %arrayidx.i944 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 0, i64 2
  store float %add117, float* %arrayidx.i944, align 4, !tbaa !4
  %arrayidx2.i945 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 2
  %57 = load float* %arrayidx2.i945, align 4, !tbaa !4
  %mul.i.i951 = fmul float %57, %conv.i.i
  %add.i.i952 = fadd float %add117, %mul.i.i951
  %div.i.i954 = fdiv float %add.i.i952, %conv1.i.i
  store float %div.i.i954, float* %arrayidx2.i945, align 4, !tbaa !4
  %arrayidx.i955 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 0, i64 3
  store float 0.000000e+00, float* %arrayidx.i955, align 4, !tbaa !4
  %arrayidx2.i956 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 3
  %58 = load float* %arrayidx2.i956, align 4, !tbaa !4
  %mul.i.i962 = fmul float %58, %conv.i.i
  %add.i.i963 = fadd float %mul.i.i962, 0.000000e+00
  %div.i.i965 = fdiv float %add.i.i963, %conv1.i.i
  store float %div.i.i965, float* %arrayidx2.i956, align 4, !tbaa !4
  %arrayidx.i979 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 0, i64 4
  store float %conv9.i, float* %arrayidx.i979, align 4, !tbaa !4
  %arrayidx2.i980 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 4
  %59 = load float* %arrayidx2.i980, align 4, !tbaa !4
  %mul.i.i986 = fmul float %59, %conv.i.i
  %add.i.i987 = fadd float %conv9.i, %mul.i.i986
  %div.i.i989 = fdiv float %add.i.i987, %conv1.i.i
  store float %div.i.i989, float* %arrayidx2.i980, align 4, !tbaa !4
  %arrayidx.i990 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 0, i64 6
  store float 0.000000e+00, float* %arrayidx.i990, align 4, !tbaa !4
  %arrayidx2.i991 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 6
  %60 = load float* %arrayidx2.i991, align 4, !tbaa !4
  %mul.i.i997 = fmul float %60, %conv.i.i
  %add.i.i998 = fadd float %mul.i.i997, 0.000000e+00
  %div.i.i1000 = fdiv float %add.i.i998, %conv1.i.i
  store float %div.i.i1000, float* %arrayidx2.i991, align 4, !tbaa !4
  %arrayidx.i1001 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 0, i64 7
  store float 0.000000e+00, float* %arrayidx.i1001, align 4, !tbaa !4
  %arrayidx2.i1002 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 7
  %61 = load float* %arrayidx2.i1002, align 4, !tbaa !4
  %mul.i.i1008 = fmul float %61, %conv.i.i
  %add.i.i1009 = fadd float %mul.i.i1008, 0.000000e+00
  %div.i.i1011 = fdiv float %add.i.i1009, %conv1.i.i
  store float %div.i.i1011, float* %arrayidx2.i1002, align 4, !tbaa !4
  %arrayidx.i1012 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 0, i64 8
  store float 0.000000e+00, float* %arrayidx.i1012, align 4, !tbaa !4
  %arrayidx2.i1013 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 8
  %62 = load float* %arrayidx2.i1013, align 4, !tbaa !4
  %mul.i.i1019 = fmul float %62, %conv.i.i
  %add.i.i1020 = fadd float %mul.i.i1019, 0.000000e+00
  %div.i.i1022 = fdiv float %add.i.i1020, %conv1.i.i
  store float %div.i.i1022, float* %arrayidx2.i1013, align 4, !tbaa !4
  %arrayidx127 = getelementptr inbounds [3 x float]* %pres, i64 0, i64 0
  %63 = load float* %arrayidx127, align 4, !tbaa !4
  %arrayidx.i1023 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 0, i64 9
  store float %63, float* %arrayidx.i1023, align 4, !tbaa !4
  %arrayidx2.i1024 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 9
  %64 = load float* %arrayidx2.i1024, align 4, !tbaa !4
  %mul.i.i1030 = fmul float %64, %conv.i.i
  %add.i.i1031 = fadd float %63, %mul.i.i1030
  %div.i.i1033 = fdiv float %add.i.i1031, %conv1.i.i
  store float %div.i.i1033, float* %arrayidx2.i1024, align 4, !tbaa !4
  %arrayidx129 = getelementptr inbounds [3 x float]* %pres, i64 1, i64 1
  %65 = load float* %arrayidx129, align 4, !tbaa !4
  %arrayidx.i1034 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 0, i64 10
  store float %65, float* %arrayidx.i1034, align 4, !tbaa !4
  %arrayidx2.i1035 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 10
  %66 = load float* %arrayidx2.i1035, align 4, !tbaa !4
  %mul.i.i1041 = fmul float %66, %conv.i.i
  %add.i.i1042 = fadd float %65, %mul.i.i1041
  %div.i.i1044 = fdiv float %add.i.i1042, %conv1.i.i
  store float %div.i.i1044, float* %arrayidx2.i1035, align 4, !tbaa !4
  %arrayidx131 = getelementptr inbounds [3 x float]* %pres, i64 2, i64 2
  %67 = load float* %arrayidx131, align 4, !tbaa !4
  %arrayidx.i1054 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 0, i64 11
  store float %67, float* %arrayidx.i1054, align 4, !tbaa !4
  %arrayidx2.i1055 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 11
  %68 = load float* %arrayidx2.i1055, align 4, !tbaa !4
  %mul.i.i1061 = fmul float %68, %conv.i.i
  %add.i.i1062 = fadd float %67, %mul.i.i1061
  %div.i.i1064 = fdiv float %add.i.i1062, %conv1.i.i
  store float %div.i.i1064, float* %arrayidx2.i1055, align 4, !tbaa !4
  %arrayidx133 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 1
  %69 = load float* %arrayidx133, align 4, !tbaa !4
  %arrayidx135 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 13
  %70 = load float* %arrayidx135, align 4, !tbaa !4
  %fabsf = call float @fabsf(float %70) #7
  %71 = fpext float %fabsf to double
  %cmp138 = fcmp ogt double %71, 1.200000e-38
  br i1 %cmp138, label %if.then140, label %if.end177

if.then140:                                       ; preds = %Ecouple.exit
  %conv136 = fpext float %70 to double
  %conv141 = fpext float %mu_aver to double
  %div145 = fdiv double %conv136, 4.803210e+01
  %sub146 = fsub double %conv141, %div145
  %conv147 = fptrunc double %sub146 to float
  %mul148 = fmul float %conv147, %conv147
  %conv149 = fpext float %mul148 to double
  %arrayidx151 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 12
  %72 = load float* %arrayidx151, align 4, !tbaa !4
  %conv152 = fpext float %72 to double
  %mul153 = fmul double %conv152, 1.439520e-02
  %div154 = fdiv double %conv149, %mul153
  %conv155 = fptrunc double %div154 to float
  %sub156 = fsub float %69, %conv155
  %73 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %tobool157 = icmp eq %struct._IO_FILE* %73, null
  br i1 %tobool157, label %if.end177, label %if.then158

if.then158:                                       ; preds = %if.then140
  %conv159 = fpext float %conv147 to double
  %mul161 = fmul double %conv159, 4.803210e+01
  %mul164 = fmul double %conv141, 4.803210e+01
  %call165 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([38 x i8]* @.str16, i64 0, i64 0), double %conv159, double %mul161, double %conv141, double %mul164) #6
  %74 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %75 = load float* %arrayidx133, align 4, !tbaa !4
  %conv168 = fpext float %75 to double
  %conv169 = fpext float %conv155 to double
  %76 = load float* %arrayidx2.i934, align 4, !tbaa !4
  %conv172 = fpext float %76 to double
  %77 = load float* %arrayidx.i933, align 4, !tbaa !4
  %conv174 = fpext float %77 to double
  %call175 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([35 x i8]* @.str17, i64 0, i64 0), double %conv168, double %conv169, double %conv172, double %conv174) #6
  br label %if.end177

if.end177:                                        ; preds = %if.then140, %if.then158, %Ecouple.exit
  %epot0.0 = phi float [ %sub156, %if.then158 ], [ %sub156, %if.then140 ], [ %69, %Ecouple.exit ]
  br i1 %34, label %if.then179, label %for.body184

if.then179:                                       ; preds = %if.end177
  %78 = bitcast [2 x i8*]* %leg.i to i8*
  call void @llvm.lifetime.start(i64 16, i8* %78) #3
  %79 = bitcast [3 x i8*]* %bleg.i to i8*
  call void @llvm.lifetime.start(i64 24, i8* %79) #3
  %80 = getelementptr inbounds [256 x i8]* %buf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %80) #3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* bitcast ([2 x i8*]* @pr_ff.leg to i8*), i64 16, i32 16, i1 false) #3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* bitcast ([3 x i8*]* @pr_ff.bleg to i8*), i64 24, i32 16, i1 false) #3
  %81 = load %struct._IO_FILE** @pr_ff.prop, align 8, !tbaa !0
  %cmp.i = icmp eq %struct._IO_FILE* %81, null
  %82 = load %struct._IO_FILE*** @pr_ff.out, align 8, !tbaa !0
  %cmp1.i = icmp eq %struct._IO_FILE** %82, null
  %or.cond.i = and i1 %cmp.i, %cmp1.i
  %83 = load %struct._IO_FILE*** @pr_ff.qq, align 8, !tbaa !0
  %cmp3.i = icmp eq %struct._IO_FILE** %83, null
  %or.cond305.i = and i1 %or.cond.i, %cmp3.i
  %84 = load %struct._IO_FILE*** @pr_ff.ip, align 8, !tbaa !0
  %cmp5.i1065 = icmp eq %struct._IO_FILE** %84, null
  %or.cond306.i = and i1 %or.cond305.i, %cmp5.i1065
  br i1 %or.cond306.i, label %if.then.i1067, label %if.end171.i

if.then.i1067:                                    ; preds = %if.then179
  %call.i1066 = call i8* @opt2fn(i8* getelementptr inbounds ([7 x i8]* @.str37, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #6
  %call6.i = call %struct._IO_FILE* @xvgropen(i8* %call.i1066, i8* getelementptr inbounds ([32 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str27, i64 0, i64 0)) #6
  store %struct._IO_FILE* %call6.i, %struct._IO_FILE** @pr_ff.prop, align 8, !tbaa !0
  %call7.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 114, i32 28, i32 8) #6
  %85 = bitcast i8* %call7.i to i8**
  br label %for.body.i1070

for.body.i1070:                                   ; preds = %for.inc.i1074, %if.then.i1067
  %indvars.iv43.i = phi i64 [ 0, %if.then.i1067 ], [ %indvars.iv.next44.i, %for.inc.i1074 ]
  %j.022.i = phi i32 [ 0, %if.then.i1067 ], [ %j.1.i1073, %for.inc.i1074 ]
  %arrayidx.i1068 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 3, i64 %indvars.iv43.i
  %86 = load i32* %arrayidx.i1068, align 4, !tbaa !3
  %tobool.i1069 = icmp eq i32 %86, 0
  br i1 %tobool.i1069, label %for.inc.i1074, label %if.then9.i

if.then9.i:                                       ; preds = %for.body.i1070
  %arrayidx11.i = getelementptr inbounds [17 x i8*]* @eoNames, i64 0, i64 %indvars.iv43.i
  %87 = load i8** %arrayidx11.i, align 8, !tbaa !0
  %call12.i = call i8* @gmx_strdup(i8* %87) #6
  %inc.i1071 = add nsw i32 %j.022.i, 1
  %idxprom13.i = sext i32 %j.022.i to i64
  %arrayidx14.i = getelementptr inbounds i8** %85, i64 %idxprom13.i
  store i8* %call12.i, i8** %arrayidx14.i, align 8, !tbaa !0
  %88 = load i8** %arrayidx11.i, align 8, !tbaa !0
  %call17.i = call i32 (i8*, i8*, ...)* @sprintf(i8* %80, i8* getelementptr inbounds ([6 x i8]* @.str40, i64 0, i64 0), i8* %88) #6
  %call19.i = call i8* @gmx_strdup(i8* %80) #6
  %inc20.i = add nsw i32 %j.022.i, 2
  %idxprom21.i = sext i32 %inc.i1071 to i64
  %arrayidx22.i1072 = getelementptr inbounds i8** %85, i64 %idxprom21.i
  store i8* %call19.i, i8** %arrayidx22.i1072, align 8, !tbaa !0
  br label %for.inc.i1074

for.inc.i1074:                                    ; preds = %if.then9.i, %for.body.i1070
  %j.1.i1073 = phi i32 [ %inc20.i, %if.then9.i ], [ %j.022.i, %for.body.i1070 ]
  %indvars.iv.next44.i = add i64 %indvars.iv43.i, 1
  %lftr.wideiv1163 = trunc i64 %indvars.iv.next44.i to i32
  %exitcond1164 = icmp eq i32 %lftr.wideiv1163, 14
  br i1 %exitcond1164, label %for.end.i1075, label %for.body.i1070

for.end.i1075:                                    ; preds = %for.inc.i1074
  %89 = load %struct._IO_FILE** @pr_ff.prop, align 8, !tbaa !0
  call void @xvgr_legend(%struct._IO_FILE* %89, i32 %j.1.i1073, i8** %85) #6
  %cmp2519.i = icmp sgt i32 %j.1.i1073, 0
  br i1 %cmp2519.i, label %for.body26.i, label %for.end31.i

for.body26.i:                                     ; preds = %for.end.i1075, %for.body26.i
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %for.body26.i ], [ 0, %for.end.i1075 ]
  %arrayidx28.i1076 = getelementptr inbounds i8** %85, i64 %indvars.iv39.i
  %90 = load i8** %arrayidx28.i1076, align 8, !tbaa !0
  call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 124, i8* %90) #6
  %indvars.iv.next40.i = add i64 %indvars.iv39.i, 1
  %lftr.wideiv1161 = trunc i64 %indvars.iv.next40.i to i32
  %exitcond1162 = icmp eq i32 %lftr.wideiv1161, %j.1.i1073
  br i1 %exitcond1162, label %for.end31.i, label %for.body26.i

for.end31.i:                                      ; preds = %for.body26.i, %for.end.i1075
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 125, i8* %call7.i) #6
  %nLJ.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 4
  %91 = load i32* %nLJ.i, align 4, !tbaa !3
  %tobool32.i = icmp eq i32 %91, 0
  br i1 %tobool32.i, label %if.else.i1077, label %if.then33.i

if.then33.i:                                      ; preds = %for.end31.i
  %call35.i = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 128, i32 %91, i32 8) #6
  %92 = bitcast i8* %call35.i to %struct._IO_FILE**
  store %struct._IO_FILE** %92, %struct._IO_FILE*** @pr_ff.out, align 8, !tbaa !0
  %93 = load i32* %nLJ.i, align 4, !tbaa !3
  %cmp3817.i = icmp sgt i32 %93, 0
  br i1 %cmp3817.i, label %for.body39.lr.ph.i, label %if.end106.i

for.body39.lr.ph.i:                               ; preds = %if.then33.i
  %tcLJ.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 8
  %arraydecay59.i = getelementptr inbounds [2 x i8*]* %leg.i, i64 0, i64 0
  br label %for.body39.i

for.body39.i:                                     ; preds = %for.inc64.i, %for.body39.lr.ph.i
  %94 = phi i32 [ %93, %for.body39.lr.ph.i ], [ %108, %for.inc64.i ]
  %indvars.iv37.i = phi i64 [ 0, %for.body39.lr.ph.i ], [ %indvars.iv.next38.i, %for.inc64.i ]
  %95 = load %struct.t_coupl_LJ** %tcLJ.i, align 8, !tbaa !0
  %bPrint.i = getelementptr inbounds %struct.t_coupl_LJ* %95, i64 %indvars.iv37.i, i32 3
  %96 = load i32* %bPrint.i, align 4, !tbaa !3
  %tobool42.i = icmp eq i32 %96, 0
  br i1 %tobool42.i, label %for.inc64.i, label %if.then43.i

if.then43.i:                                      ; preds = %for.body39.i
  %call47.i = call i8* @opt2fn(i8* getelementptr inbounds ([7 x i8]* @.str43, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #6
  %at_i.i = getelementptr inbounds %struct.t_coupl_LJ* %95, i64 %indvars.iv37.i, i32 0
  %97 = load i32* %at_i.i, align 4, !tbaa !3
  %at_j.i = getelementptr inbounds %struct.t_coupl_LJ* %95, i64 %indvars.iv37.i, i32 1
  %98 = load i32* %at_j.i, align 4, !tbaa !3
  call fastcc void @mk_gct_nm(i8* %call47.i, i32 %97, i32 %98) #6
  %call49.i = call %struct._IO_FILE* @xvgropen(i8* getelementptr inbounds ([256 x i8]* @mk_gct_nm.buf, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8]* @.str45, i64 0, i64 0)) #6
  %99 = load %struct._IO_FILE*** @pr_ff.out, align 8, !tbaa !0
  %arrayidx51.i = getelementptr inbounds %struct._IO_FILE** %99, i64 %indvars.iv37.i
  store %struct._IO_FILE* %call49.i, %struct._IO_FILE** %arrayidx51.i, align 8, !tbaa !0
  %100 = load %struct._IO_FILE*** @pr_ff.out, align 8, !tbaa !0
  %arrayidx53.i = getelementptr inbounds %struct._IO_FILE** %100, i64 %indvars.iv37.i
  %101 = load %struct._IO_FILE** %arrayidx53.i, align 8, !tbaa !0
  %102 = load i32* %at_i.i, align 4, !tbaa !3
  %103 = load i32* %at_j.i, align 4, !tbaa !3
  %call56.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([50 x i8]* @.str46, i64 0, i64 0), i32 %102, i32 %103) #6
  %104 = load %struct._IO_FILE*** @pr_ff.out, align 8, !tbaa !0
  %arrayidx58.i = getelementptr inbounds %struct._IO_FILE** %104, i64 %indvars.iv37.i
  %105 = load %struct._IO_FILE** %arrayidx58.i, align 8, !tbaa !0
  call void @xvgr_legend(%struct._IO_FILE* %105, i32 2, i8** %arraydecay59.i) #6
  %106 = load %struct._IO_FILE*** @pr_ff.out, align 8, !tbaa !0
  %arrayidx61.i = getelementptr inbounds %struct._IO_FILE** %106, i64 %indvars.iv37.i
  %107 = load %struct._IO_FILE** %arrayidx61.i, align 8, !tbaa !0
  %call62.i = call i32 @fflush(%struct._IO_FILE* %107) #6
  %.pre48.i = load i32* %nLJ.i, align 4, !tbaa !3
  br label %for.inc64.i

for.inc64.i:                                      ; preds = %if.then43.i, %for.body39.i
  %108 = phi i32 [ %94, %for.body39.i ], [ %.pre48.i, %if.then43.i ]
  %indvars.iv.next38.i = add i64 %indvars.iv37.i, 1
  %109 = trunc i64 %indvars.iv.next38.i to i32
  %cmp38.i = icmp slt i32 %109, %108
  br i1 %cmp38.i, label %for.body39.i, label %if.end106.i

if.else.i1077:                                    ; preds = %for.end31.i
  %nBU.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 5
  %110 = load i32* %nBU.i, align 4, !tbaa !3
  %tobool67.i = icmp eq i32 %110, 0
  br i1 %tobool67.i, label %if.end106.i, label %if.then68.i

if.then68.i:                                      ; preds = %if.else.i1077
  %call70.i = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 145, i32 %110, i32 8) #6
  %111 = bitcast i8* %call70.i to %struct._IO_FILE**
  store %struct._IO_FILE** %111, %struct._IO_FILE*** @pr_ff.out, align 8, !tbaa !0
  %112 = load i32* %nBU.i, align 4, !tbaa !3
  %cmp7314.i = icmp sgt i32 %112, 0
  br i1 %cmp7314.i, label %for.body74.lr.ph.i, label %if.end106.i

for.body74.lr.ph.i:                               ; preds = %if.then68.i
  %tcBU.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 9
  %arraydecay97.i = getelementptr inbounds [3 x i8*]* %bleg.i, i64 0, i64 0
  br label %for.body74.i

for.body74.i:                                     ; preds = %for.inc102.i, %for.body74.lr.ph.i
  %113 = phi i32 [ %112, %for.body74.lr.ph.i ], [ %127, %for.inc102.i ]
  %indvars.iv35.i = phi i64 [ 0, %for.body74.lr.ph.i ], [ %indvars.iv.next36.i, %for.inc102.i ]
  %114 = load %struct.t_coupl_BU** %tcBU.i, align 8, !tbaa !0
  %bPrint77.i = getelementptr inbounds %struct.t_coupl_BU* %114, i64 %indvars.iv35.i, i32 3
  %115 = load i32* %bPrint77.i, align 4, !tbaa !3
  %tobool78.i = icmp eq i32 %115, 0
  br i1 %tobool78.i, label %for.inc102.i, label %if.then79.i

if.then79.i:                                      ; preds = %for.body74.i
  %call83.i = call i8* @opt2fn(i8* getelementptr inbounds ([7 x i8]* @.str43, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #6
  %at_i84.i = getelementptr inbounds %struct.t_coupl_BU* %114, i64 %indvars.iv35.i, i32 0
  %116 = load i32* %at_i84.i, align 4, !tbaa !3
  %at_j85.i = getelementptr inbounds %struct.t_coupl_BU* %114, i64 %indvars.iv35.i, i32 1
  %117 = load i32* %at_j85.i, align 4, !tbaa !3
  call fastcc void @mk_gct_nm(i8* %call83.i, i32 %116, i32 %117) #6
  %call87.i = call %struct._IO_FILE* @xvgropen(i8* getelementptr inbounds ([256 x i8]* @mk_gct_nm.buf, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8]* @.str45, i64 0, i64 0)) #6
  %118 = load %struct._IO_FILE*** @pr_ff.out, align 8, !tbaa !0
  %arrayidx89.i = getelementptr inbounds %struct._IO_FILE** %118, i64 %indvars.iv35.i
  store %struct._IO_FILE* %call87.i, %struct._IO_FILE** %arrayidx89.i, align 8, !tbaa !0
  %119 = load %struct._IO_FILE*** @pr_ff.out, align 8, !tbaa !0
  %arrayidx91.i = getelementptr inbounds %struct._IO_FILE** %119, i64 %indvars.iv35.i
  %120 = load %struct._IO_FILE** %arrayidx91.i, align 8, !tbaa !0
  %121 = load i32* %at_i84.i, align 4, !tbaa !3
  %122 = load i32* %at_j85.i, align 4, !tbaa !3
  %call94.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %120, i8* getelementptr inbounds ([50 x i8]* @.str46, i64 0, i64 0), i32 %121, i32 %122) #6
  %123 = load %struct._IO_FILE*** @pr_ff.out, align 8, !tbaa !0
  %arrayidx96.i = getelementptr inbounds %struct._IO_FILE** %123, i64 %indvars.iv35.i
  %124 = load %struct._IO_FILE** %arrayidx96.i, align 8, !tbaa !0
  call void @xvgr_legend(%struct._IO_FILE* %124, i32 3, i8** %arraydecay97.i) #6
  %125 = load %struct._IO_FILE*** @pr_ff.out, align 8, !tbaa !0
  %arrayidx99.i = getelementptr inbounds %struct._IO_FILE** %125, i64 %indvars.iv35.i
  %126 = load %struct._IO_FILE** %arrayidx99.i, align 8, !tbaa !0
  %call100.i = call i32 @fflush(%struct._IO_FILE* %126) #6
  %.pre.i1078 = load i32* %nBU.i, align 4, !tbaa !3
  br label %for.inc102.i

for.inc102.i:                                     ; preds = %if.then79.i, %for.body74.i
  %127 = phi i32 [ %113, %for.body74.i ], [ %.pre.i1078, %if.then79.i ]
  %indvars.iv.next36.i = add i64 %indvars.iv35.i, 1
  %128 = trunc i64 %indvars.iv.next36.i to i32
  %cmp73.i = icmp slt i32 %128, %127
  br i1 %cmp73.i, label %for.body74.i, label %if.end106.i

if.end106.i:                                      ; preds = %for.inc64.i, %for.inc102.i, %if.then68.i, %if.else.i1077, %if.then33.i
  %nQ.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 6
  %129 = load i32* %nQ.i, align 4, !tbaa !3
  %call107.i = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str48, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 161, i32 %129, i32 8) #6
  %130 = bitcast i8* %call107.i to %struct._IO_FILE**
  store %struct._IO_FILE** %130, %struct._IO_FILE*** @pr_ff.qq, align 8, !tbaa !0
  %131 = load i32* %nQ.i, align 4, !tbaa !3
  %cmp11012.i = icmp sgt i32 %131, 0
  br i1 %cmp11012.i, label %for.body111.lr.ph.i, label %for.end139.i

for.body111.lr.ph.i:                              ; preds = %if.end106.i
  %tcQ.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 10
  br label %for.body111.i

for.body111.i:                                    ; preds = %for.inc137.i, %for.body111.lr.ph.i
  %132 = phi i32 [ %131, %for.body111.lr.ph.i ], [ %144, %for.inc137.i ]
  %indvars.iv33.i = phi i64 [ 0, %for.body111.lr.ph.i ], [ %indvars.iv.next34.i, %for.inc137.i ]
  %133 = load %struct.t_coupl_Q** %tcQ.i, align 8, !tbaa !0
  %bPrint114.i = getelementptr inbounds %struct.t_coupl_Q* %133, i64 %indvars.iv33.i, i32 2
  %134 = load i32* %bPrint114.i, align 4, !tbaa !3
  %tobool115.i = icmp eq i32 %134, 0
  br i1 %tobool115.i, label %for.inc137.i, label %if.then116.i

if.then116.i:                                     ; preds = %for.body111.i
  %call117.i = call i8* @opt2fn(i8* getelementptr inbounds ([7 x i8]* @.str43, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #6
  %135 = load %struct.t_coupl_Q** %tcQ.i, align 8, !tbaa !0
  %at_i121.i = getelementptr inbounds %struct.t_coupl_Q* %135, i64 %indvars.iv33.i, i32 0
  %136 = load i32* %at_i121.i, align 4, !tbaa !3
  call fastcc void @mk_gct_nm(i8* %call117.i, i32 %136, i32 -1) #6
  %call123.i = call %struct._IO_FILE* @xvgropen(i8* getelementptr inbounds ([256 x i8]* @mk_gct_nm.buf, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str50, i64 0, i64 0)) #6
  %137 = load %struct._IO_FILE*** @pr_ff.qq, align 8, !tbaa !0
  %arrayidx125.i = getelementptr inbounds %struct._IO_FILE** %137, i64 %indvars.iv33.i
  store %struct._IO_FILE* %call123.i, %struct._IO_FILE** %arrayidx125.i, align 8, !tbaa !0
  %138 = load %struct._IO_FILE*** @pr_ff.qq, align 8, !tbaa !0
  %arrayidx127.i = getelementptr inbounds %struct._IO_FILE** %138, i64 %indvars.iv33.i
  %139 = load %struct._IO_FILE** %arrayidx127.i, align 8, !tbaa !0
  %140 = load %struct.t_coupl_Q** %tcQ.i, align 8, !tbaa !0
  %at_i131.i = getelementptr inbounds %struct.t_coupl_Q* %140, i64 %indvars.iv33.i, i32 0
  %141 = load i32* %at_i131.i, align 4, !tbaa !3
  %call132.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %139, i8* getelementptr inbounds ([22 x i8]* @.str51, i64 0, i64 0), i32 %141) #6
  %142 = load %struct._IO_FILE*** @pr_ff.qq, align 8, !tbaa !0
  %arrayidx134.i = getelementptr inbounds %struct._IO_FILE** %142, i64 %indvars.iv33.i
  %143 = load %struct._IO_FILE** %arrayidx134.i, align 8, !tbaa !0
  %call135.i = call i32 @fflush(%struct._IO_FILE* %143) #6
  %.pre47.i = load i32* %nQ.i, align 4, !tbaa !3
  br label %for.inc137.i

for.inc137.i:                                     ; preds = %if.then116.i, %for.body111.i
  %144 = phi i32 [ %132, %for.body111.i ], [ %.pre47.i, %if.then116.i ]
  %indvars.iv.next34.i = add i64 %indvars.iv33.i, 1
  %145 = trunc i64 %indvars.iv.next34.i to i32
  %cmp110.i = icmp slt i32 %145, %144
  br i1 %cmp110.i, label %for.body111.i, label %for.end139.i

for.end139.i:                                     ; preds = %for.inc137.i, %if.end106.i
  %nIP.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 7
  %146 = load i32* %nIP.i, align 4, !tbaa !3
  %call140.i = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str52, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 171, i32 %146, i32 8) #6
  %147 = bitcast i8* %call140.i to %struct._IO_FILE**
  store %struct._IO_FILE** %147, %struct._IO_FILE*** @pr_ff.ip, align 8, !tbaa !0
  %148 = load i32* %nIP.i, align 4, !tbaa !3
  %cmp14310.i = icmp sgt i32 %148, 0
  br i1 %cmp14310.i, label %for.body144.lr.ph.i, label %if.end171.loopexit.i

for.body144.lr.ph.i:                              ; preds = %for.end139.i
  %tIP.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 11
  %functype.i = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 3
  br label %for.body144.i

for.body144.i:                                    ; preds = %for.body144.i, %for.body144.lr.ph.i
  %indvars.iv31.i = phi i64 [ 0, %for.body144.lr.ph.i ], [ %indvars.iv.next32.i, %for.body144.i ]
  %149 = load %struct.t_coupl_iparams** %tIP.i, align 8, !tbaa !0
  %type.i = getelementptr inbounds %struct.t_coupl_iparams* %149, i64 %indvars.iv31.i, i32 0
  %150 = load i32* %type.i, align 4, !tbaa !3
  %call148.i = call i32 (i8*, i8*, ...)* @sprintf(i8* %80, i8* getelementptr inbounds ([8 x i8]* @.str53, i64 0, i64 0), i32 %150) #6
  %call149.i = call i8* @opt2fn(i8* getelementptr inbounds ([7 x i8]* @.str43, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #6
  call fastcc void @mk_gct_nm(i8* %call149.i, i32 0, i32 -1) #6
  %call151.i = call %struct._IO_FILE* @xvgropen(i8* getelementptr inbounds ([256 x i8]* @mk_gct_nm.buf, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str55, i64 0, i64 0)) #6
  %151 = load %struct._IO_FILE*** @pr_ff.ip, align 8, !tbaa !0
  %arrayidx153.i = getelementptr inbounds %struct._IO_FILE** %151, i64 %indvars.iv31.i
  store %struct._IO_FILE* %call151.i, %struct._IO_FILE** %arrayidx153.i, align 8, !tbaa !0
  %152 = load %struct.t_coupl_iparams** %tIP.i, align 8, !tbaa !0
  %type157.i = getelementptr inbounds %struct.t_coupl_iparams* %152, i64 %indvars.iv31.i, i32 0
  %153 = load i32* %type157.i, align 4, !tbaa !3
  %154 = load %struct._IO_FILE*** @pr_ff.ip, align 8, !tbaa !0
  %arrayidx159.i = getelementptr inbounds %struct._IO_FILE** %154, i64 %indvars.iv31.i
  %155 = load %struct._IO_FILE** %arrayidx159.i, align 8, !tbaa !0
  %idxprom160.i = sext i32 %153 to i64
  %156 = load i32** %functype.i, align 8, !tbaa !0
  %arrayidx161.i = getelementptr inbounds i32* %156, i64 %idxprom160.i
  %157 = load i32* %arrayidx161.i, align 4, !tbaa !3
  %idxprom162.i = sext i32 %157 to i64
  %longname.i = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %idxprom162.i, i32 1
  %158 = load i8** %longname.i, align 8, !tbaa !0
  %call164.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %155, i8* getelementptr inbounds ([29 x i8]* @.str56, i64 0, i64 0), i8* %158) #6
  %159 = load %struct._IO_FILE*** @pr_ff.ip, align 8, !tbaa !0
  %arrayidx166.i = getelementptr inbounds %struct._IO_FILE** %159, i64 %indvars.iv31.i
  %160 = load %struct._IO_FILE** %arrayidx166.i, align 8, !tbaa !0
  %call167.i = call i32 @fflush(%struct._IO_FILE* %160) #6
  %indvars.iv.next32.i = add i64 %indvars.iv31.i, 1
  %161 = load i32* %nIP.i, align 4, !tbaa !3
  %162 = trunc i64 %indvars.iv.next32.i to i32
  %cmp143.i = icmp slt i32 %162, %161
  br i1 %cmp143.i, label %for.body144.i, label %if.end171.loopexit.i

if.end171.loopexit.i:                             ; preds = %for.body144.i, %for.end139.i
  %.pre49.i = load %struct._IO_FILE** @pr_ff.prop, align 8, !tbaa !0
  br label %if.end171.i

if.end171.i:                                      ; preds = %if.end171.loopexit.i, %if.then179
  %163 = phi %struct._IO_FILE* [ %.pre49.i, %if.end171.loopexit.i ], [ %81, %if.then179 ]
  %conv.i1079 = fpext float %t to double
  %call172.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %163, i8* getelementptr inbounds ([7 x i8]* @.str29, i64 0, i64 0), double %conv.i1079) #6
  br label %for.body176.i

for.body176.i:                                    ; preds = %for.inc190.i, %if.end171.i
  %indvars.iv29.i = phi i64 [ 0, %if.end171.i ], [ %indvars.iv.next30.i, %for.inc190.i ]
  %arrayidx179.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 3, i64 %indvars.iv29.i
  %164 = load i32* %arrayidx179.i, align 4, !tbaa !3
  %tobool180.i = icmp eq i32 %164, 0
  br i1 %tobool180.i, label %for.inc190.i, label %if.then181.i

if.then181.i:                                     ; preds = %for.body176.i
  %165 = load %struct._IO_FILE** @pr_ff.prop, align 8, !tbaa !0
  %arrayidx183.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 0, i64 %indvars.iv29.i
  %166 = load float* %arrayidx183.i, align 4, !tbaa !4
  %conv184.i = fpext float %166 to double
  %arrayidx186.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 %indvars.iv29.i
  %167 = load float* %arrayidx186.i, align 4, !tbaa !4
  %conv187.i = fpext float %167 to double
  %call188.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %165, i8* getelementptr inbounds ([17 x i8]* @.str57, i64 0, i64 0), double %conv184.i, double %conv187.i) #6
  br label %for.inc190.i

for.inc190.i:                                     ; preds = %if.then181.i, %for.body176.i
  %indvars.iv.next30.i = add i64 %indvars.iv29.i, 1
  %lftr.wideiv1159 = trunc i64 %indvars.iv.next30.i to i32
  %exitcond1160 = icmp eq i32 %lftr.wideiv1159, 14
  br i1 %exitcond1160, label %for.end192.i, label %for.body176.i

for.end192.i:                                     ; preds = %for.inc190.i
  %168 = load %struct._IO_FILE** @pr_ff.prop, align 8, !tbaa !0
  %fputc.i1082 = call i32 @fputc(i32 10, %struct._IO_FILE* %168) #3
  %169 = load %struct._IO_FILE** @pr_ff.prop, align 8, !tbaa !0
  %call194.i = call i32 @fflush(%struct._IO_FILE* %169) #6
  %nLJ196.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 4
  %170 = load i32* %nLJ196.i, align 4, !tbaa !3
  %cmp1977.i = icmp sgt i32 %170, 0
  br i1 %cmp1977.i, label %for.body199.lr.ph.i, label %for.cond219.preheader.i

for.body199.lr.ph.i:                              ; preds = %for.end192.i
  %tcLJ201.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 8
  br label %for.body199.i

for.cond219.preheader.i:                          ; preds = %for.inc216.i, %for.end192.i
  %nBU220.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 5
  %171 = load i32* %nBU220.i, align 4, !tbaa !3
  %cmp2215.i = icmp sgt i32 %171, 0
  br i1 %cmp2215.i, label %for.body223.lr.ph.i, label %for.cond244.preheader.i

for.body223.lr.ph.i:                              ; preds = %for.cond219.preheader.i
  %tcBU225.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 9
  br label %for.body223.i

for.body199.i:                                    ; preds = %for.inc216.i, %for.body199.lr.ph.i
  %172 = phi i32 [ %170, %for.body199.lr.ph.i ], [ %181, %for.inc216.i ]
  %indvars.iv27.i = phi i64 [ 0, %for.body199.lr.ph.i ], [ %indvars.iv.next28.i, %for.inc216.i ]
  %173 = load %struct.t_coupl_LJ** %tcLJ201.i, align 8, !tbaa !0
  %bPrint203.i = getelementptr inbounds %struct.t_coupl_LJ* %173, i64 %indvars.iv27.i, i32 3
  %174 = load i32* %bPrint203.i, align 4, !tbaa !3
  %tobool204.i = icmp eq i32 %174, 0
  br i1 %tobool204.i, label %for.inc216.i, label %if.then205.i

if.then205.i:                                     ; preds = %for.body199.i
  %175 = load %struct._IO_FILE*** @pr_ff.out, align 8, !tbaa !0
  %arrayidx207.i = getelementptr inbounds %struct._IO_FILE** %175, i64 %indvars.iv27.i
  %176 = load %struct._IO_FILE** %arrayidx207.i, align 8, !tbaa !0
  %c12.i = getelementptr inbounds %struct.t_coupl_LJ* %173, i64 %indvars.iv27.i, i32 5
  %177 = load float* %c12.i, align 4, !tbaa !4
  %conv209.i = fpext float %177 to double
  %c6.i = getelementptr inbounds %struct.t_coupl_LJ* %173, i64 %indvars.iv27.i, i32 4
  %178 = load float* %c6.i, align 4, !tbaa !4
  %conv210.i = fpext float %178 to double
  %call211.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %176, i8* getelementptr inbounds ([24 x i8]* @.str58, i64 0, i64 0), double %conv.i1079, double %conv209.i, double %conv210.i) #6
  %179 = load %struct._IO_FILE*** @pr_ff.out, align 8, !tbaa !0
  %arrayidx213.i = getelementptr inbounds %struct._IO_FILE** %179, i64 %indvars.iv27.i
  %180 = load %struct._IO_FILE** %arrayidx213.i, align 8, !tbaa !0
  %call214.i = call i32 @fflush(%struct._IO_FILE* %180) #6
  %.pre52.i = load i32* %nLJ196.i, align 4, !tbaa !3
  br label %for.inc216.i

for.inc216.i:                                     ; preds = %if.then205.i, %for.body199.i
  %181 = phi i32 [ %172, %for.body199.i ], [ %.pre52.i, %if.then205.i ]
  %indvars.iv.next28.i = add i64 %indvars.iv27.i, 1
  %182 = trunc i64 %indvars.iv.next28.i to i32
  %cmp197.i = icmp slt i32 %182, %181
  br i1 %cmp197.i, label %for.body199.i, label %for.cond219.preheader.i

for.cond244.preheader.i:                          ; preds = %for.inc241.i, %for.cond219.preheader.i
  %nQ245.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 6
  %183 = load i32* %nQ245.i, align 4, !tbaa !3
  %cmp2463.i = icmp sgt i32 %183, 0
  br i1 %cmp2463.i, label %for.body248.lr.ph.i, label %for.cond270.preheader.i

for.body248.lr.ph.i:                              ; preds = %for.cond244.preheader.i
  %tcQ250.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 10
  br label %for.body248.i

for.body223.i:                                    ; preds = %for.inc241.i, %for.body223.lr.ph.i
  %184 = phi i32 [ %171, %for.body223.lr.ph.i ], [ %194, %for.inc241.i ]
  %indvars.iv25.i = phi i64 [ 0, %for.body223.lr.ph.i ], [ %indvars.iv.next26.i, %for.inc241.i ]
  %185 = load %struct.t_coupl_BU** %tcBU225.i, align 8, !tbaa !0
  %bPrint227.i = getelementptr inbounds %struct.t_coupl_BU* %185, i64 %indvars.iv25.i, i32 3
  %186 = load i32* %bPrint227.i, align 4, !tbaa !3
  %tobool228.i = icmp eq i32 %186, 0
  br i1 %tobool228.i, label %for.inc241.i, label %if.then229.i

if.then229.i:                                     ; preds = %for.body223.i
  %187 = load %struct._IO_FILE*** @pr_ff.out, align 8, !tbaa !0
  %arrayidx231.i = getelementptr inbounds %struct._IO_FILE** %187, i64 %indvars.iv25.i
  %188 = load %struct._IO_FILE** %arrayidx231.i, align 8, !tbaa !0
  %a.i = getelementptr inbounds %struct.t_coupl_BU* %185, i64 %indvars.iv25.i, i32 4
  %189 = load float* %a.i, align 4, !tbaa !4
  %conv233.i = fpext float %189 to double
  %b.i = getelementptr inbounds %struct.t_coupl_BU* %185, i64 %indvars.iv25.i, i32 5
  %190 = load float* %b.i, align 4, !tbaa !4
  %conv234.i = fpext float %190 to double
  %c.i = getelementptr inbounds %struct.t_coupl_BU* %185, i64 %indvars.iv25.i, i32 6
  %191 = load float* %c.i, align 4, !tbaa !4
  %conv235.i = fpext float %191 to double
  %call236.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %188, i8* getelementptr inbounds ([32 x i8]* @.str59, i64 0, i64 0), double %conv.i1079, double %conv233.i, double %conv234.i, double %conv235.i) #6
  %192 = load %struct._IO_FILE*** @pr_ff.out, align 8, !tbaa !0
  %arrayidx238.i = getelementptr inbounds %struct._IO_FILE** %192, i64 %indvars.iv25.i
  %193 = load %struct._IO_FILE** %arrayidx238.i, align 8, !tbaa !0
  %call239.i = call i32 @fflush(%struct._IO_FILE* %193) #6
  %.pre51.i = load i32* %nBU220.i, align 4, !tbaa !3
  br label %for.inc241.i

for.inc241.i:                                     ; preds = %if.then229.i, %for.body223.i
  %194 = phi i32 [ %184, %for.body223.i ], [ %.pre51.i, %if.then229.i ]
  %indvars.iv.next26.i = add i64 %indvars.iv25.i, 1
  %195 = trunc i64 %indvars.iv.next26.i to i32
  %cmp221.i = icmp slt i32 %195, %194
  br i1 %cmp221.i, label %for.body223.i, label %for.cond244.preheader.i

for.cond270.preheader.i:                          ; preds = %for.inc267.i, %for.cond244.preheader.i
  %nIP271.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 7
  %196 = load i32* %nIP271.i, align 4, !tbaa !3
  %cmp2721.i = icmp sgt i32 %196, 0
  br i1 %cmp2721.i, label %for.body274.lr.ph.i, label %for.body184

for.body274.lr.ph.i:                              ; preds = %for.cond270.preheader.i
  %tIP280.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 11
  %functype284.i = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 3
  br label %for.body274.i

for.body248.i:                                    ; preds = %for.inc267.i, %for.body248.lr.ph.i
  %197 = phi i32 [ %183, %for.body248.lr.ph.i ], [ %205, %for.inc267.i ]
  %indvars.iv23.i = phi i64 [ 0, %for.body248.lr.ph.i ], [ %indvars.iv.next24.i, %for.inc267.i ]
  %198 = load %struct.t_coupl_Q** %tcQ250.i, align 8, !tbaa !0
  %bPrint252.i = getelementptr inbounds %struct.t_coupl_Q* %198, i64 %indvars.iv23.i, i32 2
  %199 = load i32* %bPrint252.i, align 4, !tbaa !3
  %tobool253.i = icmp eq i32 %199, 0
  br i1 %tobool253.i, label %for.inc267.i, label %if.then254.i

if.then254.i:                                     ; preds = %for.body248.i
  %200 = load %struct._IO_FILE*** @pr_ff.qq, align 8, !tbaa !0
  %arrayidx256.i = getelementptr inbounds %struct._IO_FILE** %200, i64 %indvars.iv23.i
  %201 = load %struct._IO_FILE** %arrayidx256.i, align 8, !tbaa !0
  %Q.i = getelementptr inbounds %struct.t_coupl_Q* %198, i64 %indvars.iv23.i, i32 3
  %202 = load float* %Q.i, align 4, !tbaa !4
  %conv261.i = fpext float %202 to double
  %call262.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %201, i8* getelementptr inbounds ([16 x i8]* @.str60, i64 0, i64 0), double %conv.i1079, double %conv261.i) #6
  %203 = load %struct._IO_FILE*** @pr_ff.qq, align 8, !tbaa !0
  %arrayidx264.i = getelementptr inbounds %struct._IO_FILE** %203, i64 %indvars.iv23.i
  %204 = load %struct._IO_FILE** %arrayidx264.i, align 8, !tbaa !0
  %call265.i = call i32 @fflush(%struct._IO_FILE* %204) #6
  %.pre50.i = load i32* %nQ245.i, align 4, !tbaa !3
  br label %for.inc267.i

for.inc267.i:                                     ; preds = %if.then254.i, %for.body248.i
  %205 = phi i32 [ %197, %for.body248.i ], [ %.pre50.i, %if.then254.i ]
  %indvars.iv.next24.i = add i64 %indvars.iv23.i, 1
  %206 = trunc i64 %indvars.iv.next24.i to i32
  %cmp246.i = icmp slt i32 %206, %205
  br i1 %cmp246.i, label %for.body248.i, label %for.cond270.preheader.i

for.body274.i:                                    ; preds = %sw.epilog.i, %for.body274.lr.ph.i
  %indvars.iv.i1083 = phi i64 [ 0, %for.body274.lr.ph.i ], [ %indvars.iv.next.i1084, %sw.epilog.i ]
  %207 = load %struct._IO_FILE*** @pr_ff.ip, align 8, !tbaa !0
  %arrayidx276.i = getelementptr inbounds %struct._IO_FILE** %207, i64 %indvars.iv.i1083
  %208 = load %struct._IO_FILE** %arrayidx276.i, align 8, !tbaa !0
  %call278.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %208, i8* getelementptr inbounds ([7 x i8]* @.str61, i64 0, i64 0), double %conv.i1079) #6
  %209 = load %struct.t_coupl_iparams** %tIP280.i, align 8, !tbaa !0
  %type282.i = getelementptr inbounds %struct.t_coupl_iparams* %209, i64 %indvars.iv.i1083, i32 0
  %210 = load i32* %type282.i, align 4, !tbaa !3
  %idxprom283.i = sext i32 %210 to i64
  %211 = load i32** %functype284.i, align 8, !tbaa !0
  %arrayidx285.i = getelementptr inbounds i32* %211, i64 %idxprom283.i
  %212 = load i32* %arrayidx285.i, align 4, !tbaa !3
  %cond.i = icmp eq i32 %212, 0
  br i1 %cond.i, label %sw.bb.i, label %sw.epilog.i

sw.bb.i:                                          ; preds = %for.body274.i
  %213 = load %struct._IO_FILE*** @pr_ff.ip, align 8, !tbaa !0
  %arrayidx287.i = getelementptr inbounds %struct._IO_FILE** %213, i64 %indvars.iv.i1083
  %214 = load %struct._IO_FILE** %arrayidx287.i, align 8, !tbaa !0
  %215 = getelementptr inbounds %struct.t_coupl_iparams* %209, i64 %indvars.iv.i1083, i32 3, i32 0, i32 1
  %216 = load float* %215, align 4, !tbaa !4
  %conv291.i = fpext float %216 to double
  %rA.i = getelementptr inbounds %struct.t_coupl_iparams* %209, i64 %indvars.iv.i1083, i32 3, i32 0, i32 0
  %217 = load float* %rA.i, align 4, !tbaa !4
  %conv297.i = fpext float %217 to double
  %call298.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %214, i8* getelementptr inbounds ([12 x i8]* @.str62, i64 0, i64 0), double %conv291.i, double %conv297.i) #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %for.body274.i
  %218 = load %struct._IO_FILE*** @pr_ff.ip, align 8, !tbaa !0
  %arrayidx300.i = getelementptr inbounds %struct._IO_FILE** %218, i64 %indvars.iv.i1083
  %219 = load %struct._IO_FILE** %arrayidx300.i, align 8, !tbaa !0
  %call301.i = call i32 @fflush(%struct._IO_FILE* %219) #6
  %indvars.iv.next.i1084 = add i64 %indvars.iv.i1083, 1
  %220 = load i32* %nIP271.i, align 4, !tbaa !3
  %221 = trunc i64 %indvars.iv.next.i1084 to i32
  %cmp272.i = icmp slt i32 %221, %220
  br i1 %cmp272.i, label %for.body274.i, label %for.body184

for.body184:                                      ; preds = %for.body184, %for.cond270.preheader.i, %if.end177, %sw.epilog.i
  %indvars.iv1155 = phi i64 [ 0, %sw.epilog.i ], [ 0, %if.end177 ], [ 0, %for.cond270.preheader.i ], [ %indvars.iv.next1156, %for.body184 ]
  %arrayidx187 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 %indvars.iv1155
  %222 = load float* %arrayidx187, align 4, !tbaa !4
  %arrayidx190 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 0, i64 %indvars.iv1155
  %arrayidx193 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 %indvars.iv1155
  %223 = load float* %arrayidx193, align 4, !tbaa !4
  %sub.i1085 = fsub float %223, %222
  %arrayidx196 = getelementptr inbounds [14 x float]* %deviation, i64 0, i64 %indvars.iv1155
  store float %sub.i1085, float* %arrayidx196, align 4, !tbaa !4
  %224 = load float* %arrayidx190, align 4, !tbaa !4
  %sub203 = fsub float %223, %224
  %arrayidx205 = getelementptr inbounds [14 x float]* %prdev, i64 0, i64 %indvars.iv1155
  store float %sub203, float* %arrayidx205, align 4, !tbaa !4
  %indvars.iv.next1156 = add i64 %indvars.iv1155, 1
  %lftr.wideiv1157 = trunc i64 %indvars.iv.next1156 to i32
  %exitcond1158 = icmp eq i32 %lftr.wideiv1157, 14
  br i1 %exitcond1158, label %for.end208, label %for.body184

for.end208:                                       ; preds = %for.body184
  %225 = load float* %arrayidx2.i934, align 4, !tbaa !4
  %sub.i1086 = fsub float %epot0.0, %225
  %arrayidx214 = getelementptr inbounds [14 x float]* %deviation, i64 0, i64 1
  store float %sub.i1086, float* %arrayidx214, align 4, !tbaa !4
  %226 = load float* %arrayidx.i933, align 4, !tbaa !4
  %sub217 = fsub float %epot0.0, %226
  %arrayidx218 = getelementptr inbounds [14 x float]* %prdev, i64 0, i64 1
  store float %sub217, float* %arrayidx218, align 4, !tbaa !4
  br i1 %34, label %if.then220, label %for.cond223.preheader

if.then220:                                       ; preds = %for.end208
  %227 = load %struct._IO_FILE** @pr_dev.fp, align 8, !tbaa !0
  %tobool.i1045 = icmp eq %struct._IO_FILE* %227, null
  br i1 %tobool.i1045, label %if.then.i1046, label %if.end10.i

if.then.i1046:                                    ; preds = %if.then220
  %call.i = call i8* @opt2fn(i8* getelementptr inbounds ([8 x i8]* @.str24, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #6
  %call1.i = call %struct._IO_FILE* @xvgropen(i8* %call.i, i8* getelementptr inbounds ([29 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str27, i64 0, i64 0)) #6
  store %struct._IO_FILE* %call1.i, %struct._IO_FILE** @pr_dev.fp, align 8, !tbaa !0
  %call2.i = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 237, i32 14, i32 8) #6
  %228 = bitcast i8* %call2.i to i8**
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %if.then.i1046
  %indvars.iv4.i = phi i64 [ 0, %if.then.i1046 ], [ %indvars.iv.next5.i, %for.inc.i ]
  %j.03.i = phi i32 [ 0, %if.then.i1046 ], [ %j.1.i, %for.inc.i ]
  %arrayidx.i1047 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 3, i64 %indvars.iv4.i
  %229 = load i32* %arrayidx.i1047, align 4, !tbaa !3
  %tobool3.i = icmp eq i32 %229, 0
  br i1 %tobool3.i, label %for.inc.i, label %if.then4.i

if.then4.i:                                       ; preds = %for.body.i
  %arrayidx6.i1048 = getelementptr inbounds [17 x i8*]* @eoNames, i64 0, i64 %indvars.iv4.i
  %230 = load i8** %arrayidx6.i1048, align 8, !tbaa !0
  %inc.i = add nsw i32 %j.03.i, 1
  %idxprom7.i = sext i32 %j.03.i to i64
  %arrayidx8.i = getelementptr inbounds i8** %228, i64 %idxprom7.i
  store i8* %230, i8** %arrayidx8.i, align 8, !tbaa !0
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then4.i, %for.body.i
  %j.1.i = phi i32 [ %inc.i, %if.then4.i ], [ %j.03.i, %for.body.i ]
  %indvars.iv.next5.i = add i64 %indvars.iv4.i, 1
  %lftr.wideiv1153 = trunc i64 %indvars.iv.next5.i to i32
  %exitcond1154 = icmp eq i32 %lftr.wideiv1153, 14
  br i1 %exitcond1154, label %for.end.i, label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %231 = load %struct._IO_FILE** @pr_dev.fp, align 8, !tbaa !0
  call void @xvgr_legend(%struct._IO_FILE* %231, i32 %j.1.i, i8** %228) #6
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 242, i8* %call2.i) #6
  %.pre.i = load %struct._IO_FILE** @pr_dev.fp, align 8, !tbaa !0
  br label %if.end10.i

if.end10.i:                                       ; preds = %for.end.i, %if.then220
  %232 = phi %struct._IO_FILE* [ %227, %if.then220 ], [ %.pre.i, %for.end.i ]
  %conv.i = fpext float %t to double
  %call11.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %232, i8* getelementptr inbounds ([7 x i8]* @.str29, i64 0, i64 0), double %conv.i) #6
  br label %for.body15.i

for.body15.i:                                     ; preds = %for.inc26.i, %if.end10.i
  %indvars.iv.i1049 = phi i64 [ 0, %if.end10.i ], [ %indvars.iv.next.i1051, %for.inc26.i ]
  %arrayidx18.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 3, i64 %indvars.iv.i1049
  %233 = load i32* %arrayidx18.i, align 4, !tbaa !3
  %tobool19.i = icmp eq i32 %233, 0
  br i1 %tobool19.i, label %for.inc26.i, label %if.then20.i

if.then20.i:                                      ; preds = %for.body15.i
  %234 = load %struct._IO_FILE** @pr_dev.fp, align 8, !tbaa !0
  %arrayidx22.i1050 = getelementptr inbounds [14 x float]* %prdev, i64 0, i64 %indvars.iv.i1049
  %235 = load float* %arrayidx22.i1050, align 4, !tbaa !4
  %conv23.i = fpext float %235 to double
  %call24.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %234, i8* getelementptr inbounds ([9 x i8]* @.str30, i64 0, i64 0), double %conv23.i) #6
  br label %for.inc26.i

for.inc26.i:                                      ; preds = %if.then20.i, %for.body15.i
  %indvars.iv.next.i1051 = add i64 %indvars.iv.i1049, 1
  %lftr.wideiv1151 = trunc i64 %indvars.iv.next.i1051 to i32
  %exitcond1152 = icmp eq i32 %lftr.wideiv1151, 14
  br i1 %exitcond1152, label %pr_dev.exit, label %for.body15.i

pr_dev.exit:                                      ; preds = %for.inc26.i
  %236 = load %struct._IO_FILE** @pr_dev.fp, align 8, !tbaa !0
  %fputc.i = call i32 @fputc(i32 10, %struct._IO_FILE* %236) #3
  %237 = load %struct._IO_FILE** @pr_dev.fp, align 8, !tbaa !0
  %call30.i = call i32 @fflush(%struct._IO_FILE* %237) #6
  br label %for.cond223.preheader

for.cond223.preheader:                            ; preds = %pr_dev.exit, %for.end208
  %cmp2241111 = icmp eq i32 %mul, 0
  br i1 %cmp2241111, label %for.cond240.preheader, label %for.body226.lr.ph

for.body226.lr.ph:                                ; preds = %for.cond223.preheader
  %238 = load float** @do_coupling.fc, align 8, !tbaa !0
  %239 = load float** @do_coupling.fb, align 8, !tbaa !0
  %240 = load float** @do_coupling.fa, align 8, !tbaa !0
  %241 = load float** @do_coupling.f12, align 8, !tbaa !0
  %242 = load float** @do_coupling.f6, align 8, !tbaa !0
  br label %for.body226

for.cond240.preheader:                            ; preds = %for.body226, %for.cond223.preheader
  %243 = load i32* %atnr, align 4, !tbaa !3
  %cmp2421109 = icmp sgt i32 %243, 0
  br i1 %cmp2421109, label %for.body244.lr.ph, label %for.end249

for.body244.lr.ph:                                ; preds = %for.cond240.preheader
  %244 = load float** @do_coupling.fq, align 8, !tbaa !0
  br label %for.body244

for.body226:                                      ; preds = %for.body226.lr.ph, %for.body226
  %indvars.iv1149 = phi i64 [ 0, %for.body226.lr.ph ], [ %indvars.iv.next1150, %for.body226 ]
  %arrayidx228 = getelementptr inbounds float* %238, i64 %indvars.iv1149
  store float 1.000000e+00, float* %arrayidx228, align 4, !tbaa !4
  %arrayidx230 = getelementptr inbounds float* %239, i64 %indvars.iv1149
  store float 1.000000e+00, float* %arrayidx230, align 4, !tbaa !4
  %arrayidx232 = getelementptr inbounds float* %240, i64 %indvars.iv1149
  store float 1.000000e+00, float* %arrayidx232, align 4, !tbaa !4
  %arrayidx234 = getelementptr inbounds float* %241, i64 %indvars.iv1149
  store float 1.000000e+00, float* %arrayidx234, align 4, !tbaa !4
  %arrayidx236 = getelementptr inbounds float* %242, i64 %indvars.iv1149
  store float 1.000000e+00, float* %arrayidx236, align 4, !tbaa !4
  %indvars.iv.next1150 = add i64 %indvars.iv1149, 1
  %245 = trunc i64 %indvars.iv.next1150 to i32
  %cmp224 = icmp slt i32 %245, %mul
  br i1 %cmp224, label %for.body226, label %for.cond240.preheader

for.body244:                                      ; preds = %for.body244.lr.ph, %for.body244
  %indvars.iv1147 = phi i64 [ 0, %for.body244.lr.ph ], [ %indvars.iv.next1148, %for.body244 ]
  %arrayidx246 = getelementptr inbounds float* %244, i64 %indvars.iv1147
  store float 1.000000e+00, float* %arrayidx246, align 4, !tbaa !4
  %indvars.iv.next1148 = add i64 %indvars.iv1147, 1
  %246 = trunc i64 %indvars.iv.next1148 to i32
  %cmp242 = icmp slt i32 %246, %243
  br i1 %cmp242, label %for.body244, label %for.end249

for.end249:                                       ; preds = %for.body244, %for.cond240.preheader
  %bBHAM = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 64
  %247 = load i32* %bBHAM, align 4, !tbaa !3
  %tobool250 = icmp eq i32 %247, 0
  %tobool362 = icmp ne i32 %bDoIt, 0
  br i1 %tobool250, label %if.then251, label %if.else361

if.then251:                                       ; preds = %for.end249
  br i1 %tobool362, label %for.cond254.preheader, label %if.end319

for.cond254.preheader:                            ; preds = %if.then251
  %nLJ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 4
  %248 = load i32* %nLJ, align 4, !tbaa !3
  %cmp2551102 = icmp sgt i32 %248, 0
  br i1 %cmp2551102, label %for.body257.lr.ph, label %if.end319

for.body257.lr.ph:                                ; preds = %for.cond254.preheader
  %tcLJ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 8
  br label %for.body257

for.body257:                                      ; preds = %for.inc316, %for.body257.lr.ph
  %indvars.iv1137 = phi i64 [ 0, %for.body257.lr.ph ], [ %indvars.iv.next1138, %for.inc316 ]
  %249 = load %struct.t_coupl_LJ** %tcLJ, align 8, !tbaa !0
  %at_i = getelementptr inbounds %struct.t_coupl_LJ* %249, i64 %indvars.iv1137, i32 0
  %250 = load i32* %at_i, align 4, !tbaa !3
  %at_j = getelementptr inbounds %struct.t_coupl_LJ* %249, i64 %indvars.iv1137, i32 1
  %251 = load i32* %at_j, align 4, !tbaa !3
  %eObs = getelementptr inbounds %struct.t_coupl_LJ* %249, i64 %indvars.iv1137, i32 2
  %252 = load i32* %eObs, align 4, !tbaa !3
  %cmp260 = icmp eq i32 %252, 5
  br i1 %cmp260, label %if.then262, label %if.else297

if.then262:                                       ; preds = %for.body257
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str18, i64 0, i64 0)) #6
  %253 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %tobool263 = icmp eq %struct._IO_FILE* %253, null
  br i1 %tobool263, label %if.end268, label %if.then264

if.then264:                                       ; preds = %if.then262
  %call267 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %253, i8* getelementptr inbounds ([47 x i8]* @.str19, i64 0, i64 0), double -1.000000e+00, double -1.000000e+00) #6
  br label %if.end268

if.end268:                                        ; preds = %if.then262, %if.then264
  %.off = add i32 %250, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then283, label %if.else278

if.else278:                                       ; preds = %if.end268
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([42 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 599) #6
  br label %if.then283

if.then283:                                       ; preds = %if.end268, %if.else278
  %ff12.0 = phi float [ 1.000000e+00, %if.else278 ], [ 0.000000e+00, %if.end268 ]
  %254 = load i32* %atnr, align 4, !tbaa !3
  %255 = load float** @do_coupling.f6, align 8, !tbaa !0
  call fastcc void @set_factor_matrix(i32 %254, float* %255, float 1.000000e+00, i32 %250, i32 %251) #8
  %cmp289 = fcmp ogt float %ff12.0, 0.000000e+00
  br i1 %cmp289, label %if.then291, label %for.inc316

if.then291:                                       ; preds = %if.then283
  %256 = load i32* %atnr, align 4, !tbaa !3
  %257 = load float** @do_coupling.f12, align 8, !tbaa !0
  %conv295 = call float @sqrtf(float %ff12.0) #4
  call fastcc void @set_factor_matrix(i32 %256, float* %257, float %conv295, i32 %250, i32 %251) #8
  br label %for.inc316

if.else297:                                       ; preds = %for.body257
  %258 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %tobool298 = icmp eq %struct._IO_FILE* %258, null
  %xi_6312.pre = getelementptr inbounds %struct.t_coupl_LJ* %249, i64 %indvars.iv1137, i32 6
  br i1 %tobool298, label %if.else297.if.end307_crit_edge, label %if.then299

if.else297.if.end307_crit_edge:                   ; preds = %if.else297
  %xi_12314.pre = getelementptr inbounds %struct.t_coupl_LJ* %249, i64 %indvars.iv1137, i32 7
  br label %if.end307

if.then299:                                       ; preds = %if.else297
  %259 = load float* %xi_6312.pre, align 4, !tbaa !4
  %conv300 = fpext float %259 to double
  %xi_12 = getelementptr inbounds %struct.t_coupl_LJ* %249, i64 %indvars.iv1137, i32 7
  %260 = load float* %xi_12, align 4, !tbaa !4
  %conv301 = fpext float %260 to double
  %idxprom303 = sext i32 %252 to i64
  %arrayidx304 = getelementptr inbounds [14 x float]* %deviation, i64 0, i64 %idxprom303
  %261 = load float* %arrayidx304, align 4, !tbaa !4
  %conv305 = fpext float %261 to double
  %262 = trunc i64 %indvars.iv1137 to i32
  %call306 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %258, i8* getelementptr inbounds ([52 x i8]* @.str21, i64 0, i64 0), i32 %262, double %conv300, double %conv301, double %conv305) #6
  %.pre = load i32* %eObs, align 4, !tbaa !3
  br label %if.end307

if.end307:                                        ; preds = %if.else297.if.end307_crit_edge, %if.then299
  %xi_12314.pre-phi = phi float* [ %xi_12314.pre, %if.else297.if.end307_crit_edge ], [ %xi_12, %if.then299 ]
  %263 = phi i32 [ %252, %if.else297.if.end307_crit_edge ], [ %.pre, %if.then299 ]
  %idxprom309 = sext i32 %263 to i64
  %arrayidx310 = getelementptr inbounds [14 x float]* %deviation, i64 0, i64 %idxprom309
  %264 = load float* %arrayidx310, align 4, !tbaa !4
  %265 = load i32* %atnr, align 4, !tbaa !3
  %266 = load float* %xi_6312.pre, align 4, !tbaa !4
  %267 = load float** @do_coupling.f6, align 8, !tbaa !0
  call fastcc void @upd_f_value(i32 %265, float %266, float %35, float %264, float* %267, i32 %250, i32 %251) #8
  %268 = load i32* %atnr, align 4, !tbaa !3
  %269 = load float* %xi_12314.pre-phi, align 4, !tbaa !4
  %270 = load float** @do_coupling.f12, align 8, !tbaa !0
  call fastcc void @upd_f_value(i32 %268, float %269, float %35, float %264, float* %270, i32 %250, i32 %251) #8
  br label %for.inc316

for.inc316:                                       ; preds = %if.end307, %if.then291, %if.then283
  %indvars.iv.next1138 = add i64 %indvars.iv1137, 1
  %271 = load i32* %nLJ, align 4, !tbaa !3
  %272 = trunc i64 %indvars.iv.next1138 to i32
  %cmp255 = icmp slt i32 %272, %271
  br i1 %cmp255, label %for.body257, label %if.end319

if.end319:                                        ; preds = %for.cond254.preheader, %for.inc316, %if.then251
  %nnodes320 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %273 = load i32* %nnodes320, align 4, !tbaa !3
  %cmp321 = icmp sgt i32 %273, 1
  br i1 %cmp321, label %if.then327, label %lor.lhs.false323

lor.lhs.false323:                                 ; preds = %if.end319
  %nthreads324 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %274 = load i32* %nthreads324, align 4, !tbaa !3
  %cmp325 = icmp sgt i32 %274, 1
  br i1 %cmp325, label %if.then327, label %if.end328

if.then327:                                       ; preds = %lor.lhs.false323, %if.end319
  %275 = load float** @do_coupling.f6, align 8, !tbaa !0
  call void @gprod(%struct.t_commrec* %cr, i32 %mul, float* %275) #8
  %276 = load float** @do_coupling.f12, align 8, !tbaa !0
  call void @gprod(%struct.t_commrec* %cr, i32 %mul, float* %276) #8
  br label %if.end328

if.end328:                                        ; preds = %lor.lhs.false323, %if.then327
  %nbfp = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 65
  %277 = load float** %nbfp, align 8, !tbaa !0
  %278 = load i32* %atnr, align 4, !tbaa !3
  %279 = load float** @do_coupling.f6, align 8, !tbaa !0
  %280 = load float** @do_coupling.f12, align 8, !tbaa !0
  %cmp5.i = icmp sgt i32 %278, 0
  br i1 %cmp5.i, label %for.body3.lr.ph.i967, label %for.cond330.preheader

for.body3.lr.ph.i967:                             ; preds = %if.end328, %for.inc18.i
  %indvars.iv11.i = phi i64 [ %indvars.iv.next12.i, %for.inc18.i ], [ 0, %if.end328 ]
  %k.07.i = phi i32 [ %290, %for.inc18.i ], [ 0, %if.end328 ]
  %281 = trunc i64 %indvars.iv11.i to i32
  %mul.i966 = mul nsw i32 %281, %278
  %282 = sext i32 %k.07.i to i64
  %283 = zext i32 %mul.i966 to i64
  br label %for.body3.i978

for.body3.i978:                                   ; preds = %for.body3.i978, %for.body3.lr.ph.i967
  %indvars.iv8.i = phi i64 [ 0, %for.body3.lr.ph.i967 ], [ %indvars.iv.next9.i, %for.body3.i978 ]
  %indvars.iv.i968 = phi i64 [ %282, %for.body3.lr.ph.i967 ], [ %indvars.iv.next.i975, %for.body3.i978 ]
  %arrayidx.i969 = getelementptr inbounds float* %279, i64 %indvars.iv.i968
  %284 = load float* %arrayidx.i969, align 4, !tbaa !4
  %285 = add nsw i64 %indvars.iv8.i, %283
  %286 = trunc i64 %285 to i32
  %mul4.i970 = shl nsw i32 %286, 1
  %idxprom5.i = sext i32 %mul4.i970 to i64
  %arrayidx6.i971 = getelementptr inbounds float* %277, i64 %idxprom5.i
  %287 = load float* %arrayidx6.i971, align 4, !tbaa !4
  %mul7.i972 = fmul float %284, %287
  store float %mul7.i972, float* %arrayidx6.i971, align 4, !tbaa !4
  %arrayidx9.i973 = getelementptr inbounds float* %280, i64 %indvars.iv.i968
  %288 = load float* %arrayidx9.i973, align 4, !tbaa !4
  %add131.i = or i32 %mul4.i970, 1
  %idxprom14.i = sext i32 %add131.i to i64
  %arrayidx15.i974 = getelementptr inbounds float* %277, i64 %idxprom14.i
  %289 = load float* %arrayidx15.i974, align 4, !tbaa !4
  %mul16.i = fmul float %288, %289
  store float %mul16.i, float* %arrayidx15.i974, align 4, !tbaa !4
  %indvars.iv.next9.i = add i64 %indvars.iv8.i, 1
  %indvars.iv.next.i975 = add i64 %indvars.iv.i968, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next9.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %278
  br i1 %exitcond, label %for.inc18.i, label %for.body3.i978

for.inc18.i:                                      ; preds = %for.body3.i978
  %290 = add i32 %k.07.i, %278
  %indvars.iv.next12.i = add i64 %indvars.iv11.i, 1
  %lftr.wideiv1135 = trunc i64 %indvars.iv.next12.i to i32
  %exitcond1136 = icmp eq i32 %lftr.wideiv1135, %278
  br i1 %exitcond1136, label %for.cond330.preheader, label %for.body3.lr.ph.i967

for.cond330.preheader:                            ; preds = %for.inc18.i, %if.end328
  %nLJ331 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 4
  %291 = load i32* %nLJ331, align 4, !tbaa !3
  %cmp3321100 = icmp sgt i32 %291, 0
  br i1 %cmp3321100, label %for.body334.lr.ph, label %if.end444

for.body334.lr.ph:                                ; preds = %for.cond330.preheader
  %tcLJ336 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 8
  %292 = load %struct.t_coupl_LJ** %tcLJ336, align 8, !tbaa !0
  %ntype = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63
  %293 = load i32* %ntype, align 4, !tbaa !3
  br label %for.body334

for.body334:                                      ; preds = %for.body334.lr.ph, %for.body334
  %indvars.iv1133 = phi i64 [ 0, %for.body334.lr.ph ], [ %indvars.iv.next1134, %for.body334 ]
  %at_i338 = getelementptr inbounds %struct.t_coupl_LJ* %292, i64 %indvars.iv1133, i32 0
  %294 = load i32* %at_i338, align 4, !tbaa !3
  %at_j339 = getelementptr inbounds %struct.t_coupl_LJ* %292, i64 %indvars.iv1133, i32 1
  %295 = load i32* %at_j339, align 4, !tbaa !3
  %cmp340 = icmp eq i32 %295, -1
  %. = select i1 %cmp340, i32 %294, i32 %295
  %mul344 = mul nsw i32 %293, %294
  %add345 = add nsw i32 %mul344, %.
  %mul346 = shl nsw i32 %add345, 1
  %idxprom347 = sext i32 %mul346 to i64
  %arrayidx349 = getelementptr inbounds float* %277, i64 %idxprom347
  %296 = load float* %arrayidx349, align 4, !tbaa !4
  %c6 = getelementptr inbounds %struct.t_coupl_LJ* %292, i64 %indvars.iv1133, i32 4
  store float %296, float* %c6, align 4, !tbaa !4
  %add354914 = or i32 %mul346, 1
  %idxprom355 = sext i32 %add354914 to i64
  %arrayidx357 = getelementptr inbounds float* %277, i64 %idxprom355
  %297 = load float* %arrayidx357, align 4, !tbaa !4
  %c12 = getelementptr inbounds %struct.t_coupl_LJ* %292, i64 %indvars.iv1133, i32 5
  store float %297, float* %c12, align 4, !tbaa !4
  %indvars.iv.next1134 = add i64 %indvars.iv1133, 1
  %298 = trunc i64 %indvars.iv.next1134 to i32
  %cmp332 = icmp slt i32 %298, %291
  br i1 %cmp332, label %for.body334, label %if.end444

if.else361:                                       ; preds = %for.end249
  br i1 %tobool362, label %for.cond364.preheader, label %if.end381

for.cond364.preheader:                            ; preds = %if.else361
  %nBU = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 5
  %299 = load i32* %nBU, align 4, !tbaa !3
  %cmp3651107 = icmp sgt i32 %299, 0
  br i1 %cmp3651107, label %for.body367.lr.ph, label %if.end381

for.body367.lr.ph:                                ; preds = %for.cond364.preheader
  %tcBU = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 9
  br label %for.body367

for.body367:                                      ; preds = %for.body367.for.body367_crit_edge, %for.body367.lr.ph
  %300 = phi i32 [ %243, %for.body367.lr.ph ], [ %.pre1176, %for.body367.for.body367_crit_edge ]
  %indvars.iv1145 = phi i64 [ 0, %for.body367.lr.ph ], [ %indvars.iv.next1146, %for.body367.for.body367_crit_edge ]
  %301 = load %struct.t_coupl_BU** %tcBU, align 8, !tbaa !0
  %eObs370 = getelementptr inbounds %struct.t_coupl_BU* %301, i64 %indvars.iv1145, i32 2
  %302 = load i32* %eObs370, align 4, !tbaa !3
  %idxprom371 = sext i32 %302 to i64
  %arrayidx372 = getelementptr inbounds [14 x float]* %deviation, i64 0, i64 %idxprom371
  %303 = load float* %arrayidx372, align 4, !tbaa !4
  %at_i373 = getelementptr inbounds %struct.t_coupl_BU* %301, i64 %indvars.iv1145, i32 0
  %304 = load i32* %at_i373, align 4, !tbaa !3
  %at_j374 = getelementptr inbounds %struct.t_coupl_BU* %301, i64 %indvars.iv1145, i32 1
  %305 = load i32* %at_j374, align 4, !tbaa !3
  %xi_a = getelementptr inbounds %struct.t_coupl_BU* %301, i64 %indvars.iv1145, i32 7
  %306 = load float* %xi_a, align 4, !tbaa !4
  %307 = load float** @do_coupling.fa, align 8, !tbaa !0
  call fastcc void @upd_f_value(i32 %300, float %306, float %35, float %303, float* %307, i32 %304, i32 %305) #8
  %308 = load i32* %atnr, align 4, !tbaa !3
  %xi_b = getelementptr inbounds %struct.t_coupl_BU* %301, i64 %indvars.iv1145, i32 8
  %309 = load float* %xi_b, align 4, !tbaa !4
  %310 = load float** @do_coupling.fb, align 8, !tbaa !0
  call fastcc void @upd_f_value(i32 %308, float %309, float %35, float %303, float* %310, i32 %304, i32 %305) #8
  %311 = load i32* %atnr, align 4, !tbaa !3
  %xi_c = getelementptr inbounds %struct.t_coupl_BU* %301, i64 %indvars.iv1145, i32 9
  %312 = load float* %xi_c, align 4, !tbaa !4
  %313 = load float** @do_coupling.fc, align 8, !tbaa !0
  call fastcc void @upd_f_value(i32 %311, float %312, float %35, float %303, float* %313, i32 %304, i32 %305) #8
  %indvars.iv.next1146 = add i64 %indvars.iv1145, 1
  %314 = load i32* %nBU, align 4, !tbaa !3
  %315 = trunc i64 %indvars.iv.next1146 to i32
  %cmp365 = icmp slt i32 %315, %314
  br i1 %cmp365, label %for.body367.for.body367_crit_edge, label %if.end381

for.body367.for.body367_crit_edge:                ; preds = %for.body367
  %.pre1176 = load i32* %atnr, align 4, !tbaa !3
  br label %for.body367

if.end381:                                        ; preds = %for.cond364.preheader, %for.body367, %if.else361
  %nnodes382 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %316 = load i32* %nnodes382, align 4, !tbaa !3
  %cmp383 = icmp sgt i32 %316, 1
  br i1 %cmp383, label %if.then389, label %lor.lhs.false385

lor.lhs.false385:                                 ; preds = %if.end381
  %nthreads386 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %317 = load i32* %nthreads386, align 4, !tbaa !3
  %cmp387 = icmp sgt i32 %317, 1
  br i1 %cmp387, label %if.then389, label %if.end390

if.then389:                                       ; preds = %lor.lhs.false385, %if.end381
  %318 = load float** @do_coupling.fa, align 8, !tbaa !0
  call void @gprod(%struct.t_commrec* %cr, i32 %mul, float* %318) #8
  %319 = load float** @do_coupling.fb, align 8, !tbaa !0
  call void @gprod(%struct.t_commrec* %cr, i32 %mul, float* %319) #8
  %320 = load float** @do_coupling.fc, align 8, !tbaa !0
  call void @gprod(%struct.t_commrec* %cr, i32 %mul, float* %320) #8
  br label %if.end390

if.end390:                                        ; preds = %lor.lhs.false385, %if.then389
  %nbfp391 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 65
  %321 = load float** %nbfp391, align 8, !tbaa !0
  %322 = load i32* %atnr, align 4, !tbaa !3
  %323 = load float** @do_coupling.fa, align 8, !tbaa !0
  %324 = load float** @do_coupling.fb, align 8, !tbaa !0
  %325 = load float** @do_coupling.fc, align 8, !tbaa !0
  %cmp4.i = icmp sgt i32 %322, 0
  br i1 %cmp4.i, label %for.body3.lr.ph.i, label %for.cond393.preheader

for.body3.lr.ph.i:                                ; preds = %if.end390, %for.inc27.i
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %for.inc27.i ], [ 0, %if.end390 ]
  %k.06.i = phi i32 [ %337, %for.inc27.i ], [ 0, %if.end390 ]
  %326 = trunc i64 %indvars.iv10.i to i32
  %mul.i917 = mul nsw i32 %326, %322
  %327 = sext i32 %k.06.i to i64
  %328 = zext i32 %mul.i917 to i64
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.body3.lr.ph.i
  %indvars.iv7.i = phi i64 [ 0, %for.body3.lr.ph.i ], [ %indvars.iv.next8.i, %for.body3.i ]
  %indvars.iv.i = phi i64 [ %327, %for.body3.lr.ph.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %arrayidx.i = getelementptr inbounds float* %323, i64 %indvars.iv.i
  %329 = load float* %arrayidx.i, align 4, !tbaa !4
  %330 = add nsw i64 %indvars.iv7.i, %328
  %331 = trunc i64 %330 to i32
  %mul4.i = mul nsw i32 %331, 3
  %add5.i = add nsw i32 %mul4.i, 1
  %idxprom6.i = sext i32 %add5.i to i64
  %arrayidx7.i918 = getelementptr inbounds float* %321, i64 %idxprom6.i
  %332 = load float* %arrayidx7.i918, align 4, !tbaa !4
  %mul8.i = fmul float %329, %332
  store float %mul8.i, float* %arrayidx7.i918, align 4, !tbaa !4
  %arrayidx10.i = getelementptr inbounds float* %324, i64 %indvars.iv.i
  %333 = load float* %arrayidx10.i, align 4, !tbaa !4
  %add14.i = add nsw i32 %mul4.i, 2
  %idxprom15.i = sext i32 %add14.i to i64
  %arrayidx16.i = getelementptr inbounds float* %321, i64 %idxprom15.i
  %334 = load float* %arrayidx16.i, align 4, !tbaa !4
  %mul17.i = fmul float %333, %334
  store float %mul17.i, float* %arrayidx16.i, align 4, !tbaa !4
  %arrayidx19.i = getelementptr inbounds float* %325, i64 %indvars.iv.i
  %335 = load float* %arrayidx19.i, align 4, !tbaa !4
  %idxprom23.i = sext i32 %mul4.i to i64
  %arrayidx24.i = getelementptr inbounds float* %321, i64 %idxprom23.i
  %336 = load float* %arrayidx24.i, align 4, !tbaa !4
  %mul25.i919 = fmul float %335, %336
  store float %mul25.i919, float* %arrayidx24.i, align 4, !tbaa !4
  %indvars.iv.next8.i = add i64 %indvars.iv7.i, 1
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv1141 = trunc i64 %indvars.iv.next8.i to i32
  %exitcond1142 = icmp eq i32 %lftr.wideiv1141, %322
  br i1 %exitcond1142, label %for.inc27.i, label %for.body3.i

for.inc27.i:                                      ; preds = %for.body3.i
  %337 = add i32 %k.06.i, %322
  %indvars.iv.next11.i = add i64 %indvars.iv10.i, 1
  %lftr.wideiv1143 = trunc i64 %indvars.iv.next11.i to i32
  %exitcond1144 = icmp eq i32 %lftr.wideiv1143, %322
  br i1 %exitcond1144, label %for.cond393.preheader, label %for.body3.lr.ph.i

for.cond393.preheader:                            ; preds = %for.inc27.i, %if.end390
  %nBU394 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 5
  %338 = load i32* %nBU394, align 4, !tbaa !3
  %cmp3951105 = icmp sgt i32 %338, 0
  br i1 %cmp3951105, label %for.body397.lr.ph, label %if.end444

for.body397.lr.ph:                                ; preds = %for.cond393.preheader
  %tcBU399 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 9
  %ntype407 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63
  br label %for.body397

for.body397:                                      ; preds = %for.inc441.for.body397_crit_edge, %for.body397.lr.ph
  %339 = phi float* [ %321, %for.body397.lr.ph ], [ %.pre1175, %for.inc441.for.body397_crit_edge ]
  %340 = phi i32 [ %338, %for.body397.lr.ph ], [ %349, %for.inc441.for.body397_crit_edge ]
  %indvars.iv1139 = phi i64 [ 0, %for.body397.lr.ph ], [ %indvars.iv.next1140, %for.inc441.for.body397_crit_edge ]
  %341 = load %struct.t_coupl_BU** %tcBU399, align 8, !tbaa !0
  %at_i401 = getelementptr inbounds %struct.t_coupl_BU* %341, i64 %indvars.iv1139, i32 0
  %342 = load i32* %at_i401, align 4, !tbaa !3
  %at_j402 = getelementptr inbounds %struct.t_coupl_BU* %341, i64 %indvars.iv1139, i32 1
  %343 = load i32* %at_j402, align 4, !tbaa !3
  %cmp403 = icmp eq i32 %343, -1
  %.916 = select i1 %cmp403, i32 %342, i32 %343
  %344 = load i32* %ntype407, align 4, !tbaa !3
  %mul408 = mul nsw i32 %344, %342
  %add409 = add nsw i32 %mul408, %.916
  %mul410 = mul nsw i32 %add409, 3
  %add411 = add nsw i32 %mul410, 1
  %idxprom412 = sext i32 %add411 to i64
  %arrayidx414 = getelementptr inbounds float* %339, i64 %idxprom412
  %345 = load float* %arrayidx414, align 4, !tbaa !4
  %a = getelementptr inbounds %struct.t_coupl_BU* %341, i64 %indvars.iv1139, i32 4
  store float %345, float* %a, align 4, !tbaa !4
  %add419 = add nsw i32 %mul410, 2
  %idxprom420 = sext i32 %add419 to i64
  %arrayidx422 = getelementptr inbounds float* %339, i64 %idxprom420
  %346 = load float* %arrayidx422, align 4, !tbaa !4
  %b = getelementptr inbounds %struct.t_coupl_BU* %341, i64 %indvars.iv1139, i32 5
  store float %346, float* %b, align 4, !tbaa !4
  %idxprom427 = sext i32 %mul410 to i64
  %arrayidx429 = getelementptr inbounds float* %339, i64 %idxprom427
  %347 = load float* %arrayidx429, align 4, !tbaa !4
  %c = getelementptr inbounds %struct.t_coupl_BU* %341, i64 %indvars.iv1139, i32 6
  store float %347, float* %c, align 4, !tbaa !4
  %348 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %tobool430 = icmp eq %struct._IO_FILE* %348, null
  br i1 %tobool430, label %for.inc441, label %if.then431

if.then431:                                       ; preds = %for.body397
  %conv434 = fpext float %345 to double
  %conv436 = fpext float %346 to double
  %conv438 = fpext float %347 to double
  %call439 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %348, i8* getelementptr inbounds ([29 x i8]* @.str22, i64 0, i64 0), i32 %342, double %conv434, double %conv436, double %conv438) #6
  %.pre1173 = load i32* %nBU394, align 4, !tbaa !3
  br label %for.inc441

for.inc441:                                       ; preds = %for.body397, %if.then431
  %349 = phi i32 [ %340, %for.body397 ], [ %.pre1173, %if.then431 ]
  %indvars.iv.next1140 = add i64 %indvars.iv1139, 1
  %350 = trunc i64 %indvars.iv.next1140 to i32
  %cmp395 = icmp slt i32 %350, %349
  br i1 %cmp395, label %for.inc441.for.body397_crit_edge, label %if.end444

for.inc441.for.body397_crit_edge:                 ; preds = %for.inc441
  %.pre1175 = load float** %nbfp391, align 8, !tbaa !0
  br label %for.body397

if.end444:                                        ; preds = %for.cond393.preheader, %for.inc441, %for.cond330.preheader, %for.body334
  br i1 %tobool362, label %for.cond447.preheader, label %if.end476

for.cond447.preheader:                            ; preds = %if.end444
  %nQ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 6
  %351 = load i32* %nQ, align 4, !tbaa !3
  %cmp4481098 = icmp sgt i32 %351, 0
  br i1 %cmp4481098, label %for.body450.lr.ph, label %if.end476

for.body450.lr.ph:                                ; preds = %for.cond447.preheader
  %tcQ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 10
  %352 = load %struct.t_coupl_Q** %tcQ, align 8, !tbaa !0
  %353 = load float** @do_coupling.fq, align 8, !tbaa !0
  br label %for.body450

for.body450:                                      ; preds = %for.body450.lr.ph, %if.end468
  %indvars.iv1131 = phi i64 [ 0, %for.body450.lr.ph ], [ %indvars.iv.next1132, %if.end468 ]
  %xi_Q = getelementptr inbounds %struct.t_coupl_Q* %352, i64 %indvars.iv1131, i32 4
  %354 = load float* %xi_Q, align 4, !tbaa !4
  %fabsf913 = call float @fabsf(float %354) #7
  %355 = fpext float %fabsf913 to double
  %cmp455 = fcmp ogt double %355, 1.200000e-38
  br i1 %cmp455, label %if.then457, label %if.end468

if.then457:                                       ; preds = %for.body450
  %div459 = fdiv float %35, %354
  %eObs460 = getelementptr inbounds %struct.t_coupl_Q* %352, i64 %indvars.iv1131, i32 1
  %356 = load i32* %eObs460, align 4, !tbaa !3
  %idxprom461 = sext i32 %356 to i64
  %arrayidx462 = getelementptr inbounds [14 x float]* %deviation, i64 0, i64 %idxprom461
  %357 = load float* %arrayidx462, align 4, !tbaa !4
  %mul463 = fmul float %div459, %357
  %conv466 = fadd float %mul463, 1.000000e+00
  br label %if.end468

if.end468:                                        ; preds = %for.body450, %if.then457
  %ffq.0 = phi float [ %conv466, %if.then457 ], [ 1.000000e+00, %for.body450 ]
  %at_i469 = getelementptr inbounds %struct.t_coupl_Q* %352, i64 %indvars.iv1131, i32 0
  %358 = load i32* %at_i469, align 4, !tbaa !3
  %idxprom470 = sext i32 %358 to i64
  %arrayidx471 = getelementptr inbounds float* %353, i64 %idxprom470
  %359 = load float* %arrayidx471, align 4, !tbaa !4
  %mul472 = fmul float %ffq.0, %359
  store float %mul472, float* %arrayidx471, align 4, !tbaa !4
  %indvars.iv.next1132 = add i64 %indvars.iv1131, 1
  %360 = trunc i64 %indvars.iv.next1132 to i32
  %cmp448 = icmp slt i32 %360, %351
  br i1 %cmp448, label %for.body450, label %if.end476

if.end476:                                        ; preds = %for.cond447.preheader, %if.end468, %if.end444
  %nnodes477 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %361 = load i32* %nnodes477, align 4, !tbaa !3
  %cmp478 = icmp sgt i32 %361, 1
  br i1 %cmp478, label %if.then484, label %lor.lhs.false480

lor.lhs.false480:                                 ; preds = %if.end476
  %nthreads481 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %362 = load i32* %nthreads481, align 4, !tbaa !3
  %cmp482 = icmp sgt i32 %362, 1
  br i1 %cmp482, label %if.then484, label %for.cond487.preheader

if.then484:                                       ; preds = %lor.lhs.false480, %if.end476
  %363 = load i32* %atnr, align 4, !tbaa !3
  %364 = load float** @do_coupling.fq, align 8, !tbaa !0
  call void @gprod(%struct.t_commrec* %cr, i32 %363, float* %364) #8
  br label %for.cond487.preheader

for.cond487.preheader:                            ; preds = %if.then484, %lor.lhs.false480
  %nr = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1
  %365 = load i32* %nr, align 4, !tbaa !3
  %cmp4881095 = icmp sgt i32 %365, 0
  br i1 %cmp4881095, label %for.body490.lr.ph, label %for.cond501.preheader

for.body490.lr.ph:                                ; preds = %for.cond487.preheader
  %typeA = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 11
  %366 = load i32** %typeA, align 8, !tbaa !0
  %367 = load float** @do_coupling.fq, align 8, !tbaa !0
  %chargeA = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 6
  %368 = load float** %chargeA, align 8, !tbaa !0
  br label %for.body490

for.cond501.preheader:                            ; preds = %for.body490, %for.cond487.preheader
  %nQ502 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 6
  %369 = load i32* %nQ502, align 4, !tbaa !3
  %cmp5031093 = icmp sgt i32 %369, 0
  br i1 %cmp5031093, label %for.body505.lr.ph, label %for.cond537.preheader

for.body505.lr.ph:                                ; preds = %for.cond501.preheader
  %tcQ507 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 10
  %typeA515 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 11
  %chargeA522 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 6
  br label %for.body505

for.body490:                                      ; preds = %for.body490.lr.ph, %for.body490
  %indvars.iv1129 = phi i64 [ 0, %for.body490.lr.ph ], [ %indvars.iv.next1130, %for.body490 ]
  %arrayidx492 = getelementptr inbounds i32* %366, i64 %indvars.iv1129
  %370 = load i32* %arrayidx492, align 4, !tbaa !3
  %idxprom493 = sext i32 %370 to i64
  %arrayidx494 = getelementptr inbounds float* %367, i64 %idxprom493
  %371 = load float* %arrayidx494, align 4, !tbaa !4
  %arrayidx496 = getelementptr inbounds float* %368, i64 %indvars.iv1129
  %372 = load float* %arrayidx496, align 4, !tbaa !4
  %mul497 = fmul float %371, %372
  store float %mul497, float* %arrayidx496, align 4, !tbaa !4
  %indvars.iv.next1130 = add i64 %indvars.iv1129, 1
  %373 = trunc i64 %indvars.iv.next1130 to i32
  %cmp488 = icmp slt i32 %373, %365
  br i1 %cmp488, label %for.body490, label %for.cond501.preheader

for.cond537.preheader:                            ; preds = %for.inc534, %for.cond501.preheader
  %nIP = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 7
  %374 = load i32* %nIP, align 4, !tbaa !3
  %cmp5381087 = icmp sgt i32 %374, 0
  br i1 %cmp5381087, label %for.body540.lr.ph, label %for.end590

for.body540.lr.ph:                                ; preds = %for.cond537.preheader
  %tIP = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 11
  %functype = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 3
  %iparams = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4
  br label %for.body540

for.body505:                                      ; preds = %for.inc534.for.body505_crit_edge, %for.body505.lr.ph
  %375 = phi i32 [ %365, %for.body505.lr.ph ], [ %.pre1174, %for.inc534.for.body505_crit_edge ]
  %376 = phi i32 [ %369, %for.body505.lr.ph ], [ %385, %for.inc534.for.body505_crit_edge ]
  %indvars.iv1127 = phi i64 [ 0, %for.body505.lr.ph ], [ %indvars.iv.next1128, %for.inc534.for.body505_crit_edge ]
  %377 = load %struct.t_coupl_Q** %tcQ507, align 8, !tbaa !0
  %arrayidx508 = getelementptr inbounds %struct.t_coupl_Q* %377, i64 %indvars.iv1127
  %cmp5111091 = icmp sgt i32 %375, 0
  br i1 %cmp5111091, label %for.body513.lr.ph, label %for.end527

for.body513.lr.ph:                                ; preds = %for.body505
  %378 = load i32** %typeA515, align 8, !tbaa !0
  %at_i517 = getelementptr inbounds %struct.t_coupl_Q* %arrayidx508, i64 0, i32 0
  %379 = load i32* %at_i517, align 4, !tbaa !3
  br label %for.body513

for.cond509:                                      ; preds = %for.body513
  %380 = trunc i64 %indvars.iv.next1126 to i32
  %cmp511 = icmp slt i32 %380, %375
  br i1 %cmp511, label %for.body513, label %for.end527

for.body513:                                      ; preds = %for.body513.lr.ph, %for.cond509
  %indvars.iv1125 = phi i64 [ 0, %for.body513.lr.ph ], [ %indvars.iv.next1126, %for.cond509 ]
  %j.11092 = phi i32 [ 0, %for.body513.lr.ph ], [ %inc526, %for.cond509 ]
  %arrayidx516 = getelementptr inbounds i32* %378, i64 %indvars.iv1125
  %381 = load i32* %arrayidx516, align 4, !tbaa !3
  %cmp518 = icmp eq i32 %381, %379
  %indvars.iv.next1126 = add i64 %indvars.iv1125, 1
  %inc526 = add nsw i32 %j.11092, 1
  br i1 %cmp518, label %if.then520, label %for.cond509

if.then520:                                       ; preds = %for.body513
  %382 = load float** %chargeA522, align 8, !tbaa !0
  %arrayidx523 = getelementptr inbounds float* %382, i64 %indvars.iv1125
  %383 = load float* %arrayidx523, align 4, !tbaa !4
  %Q = getelementptr inbounds %struct.t_coupl_Q* %377, i64 %indvars.iv1127, i32 3
  store float %383, float* %Q, align 4, !tbaa !4
  br label %for.end527

for.end527:                                       ; preds = %for.body505, %for.cond509, %if.then520
  %j.11090 = phi i32 [ %j.11092, %if.then520 ], [ 0, %for.body505 ], [ %inc526, %for.cond509 ]
  %cmp529 = icmp eq i32 %j.11090, %375
  br i1 %cmp529, label %if.then531, label %for.inc534

if.then531:                                       ; preds = %for.end527
  %at_i532 = getelementptr inbounds %struct.t_coupl_Q* %arrayidx508, i64 0, i32 0
  %384 = load i32* %at_i532, align 4, !tbaa !3
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str23, i64 0, i64 0), i32 %384) #6
  %.pre1172 = load i32* %nQ502, align 4, !tbaa !3
  br label %for.inc534

for.inc534:                                       ; preds = %for.end527, %if.then531
  %385 = phi i32 [ %376, %for.end527 ], [ %.pre1172, %if.then531 ]
  %indvars.iv.next1128 = add i64 %indvars.iv1127, 1
  %386 = trunc i64 %indvars.iv.next1128 to i32
  %cmp503 = icmp slt i32 %386, %385
  br i1 %cmp503, label %for.inc534.for.body505_crit_edge, label %for.cond537.preheader

for.inc534.for.body505_crit_edge:                 ; preds = %for.inc534
  %.pre1174 = load i32* %nr, align 4, !tbaa !3
  br label %for.body505

for.body540:                                      ; preds = %for.body540.lr.ph, %sw.epilog
  %indvars.iv = phi i64 [ 0, %for.body540.lr.ph ], [ %indvars.iv.next, %sw.epilog ]
  %387 = load %struct.t_coupl_iparams** %tIP, align 8, !tbaa !0
  %type543 = getelementptr inbounds %struct.t_coupl_iparams* %387, i64 %indvars.iv, i32 0
  %388 = load i32* %type543, align 4, !tbaa !3
  %idxprom544 = sext i32 %388 to i64
  %389 = load i32** %functype, align 8, !tbaa !0
  %arrayidx545 = getelementptr inbounds i32* %389, i64 %idxprom544
  %390 = load i32* %arrayidx545, align 4, !tbaa !3
  %eObs546 = getelementptr inbounds %struct.t_coupl_iparams* %387, i64 %indvars.iv, i32 1
  %391 = load i32* %eObs546, align 4, !tbaa !3
  %idxprom547 = sext i32 %391 to i64
  %arrayidx548 = getelementptr inbounds [14 x float]* %deviation, i64 0, i64 %idxprom547
  %392 = load float* %arrayidx548, align 4, !tbaa !4
  %mul549 = fmul float %35, %392
  %cond = icmp eq i32 %390, 0
  br i1 %cond, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %for.body540
  %393 = getelementptr inbounds %struct.t_coupl_iparams* %387, i64 %indvars.iv, i32 2, i32 0, i32 1
  %394 = load float* %393, align 4, !tbaa !4
  %fabsf911 = call float @fabsf(float %394) #7
  %395 = fpext float %fabsf911 to double
  %cmp552 = fcmp ogt double %395, 1.200000e-38
  br i1 %cmp552, label %if.then554, label %if.end565

if.then554:                                       ; preds = %sw.bb
  %div558 = fdiv float %mul549, %394
  %add559 = fadd float %div558, 1.000000e+00
  %396 = load %union.t_iparams** %iparams, align 8, !tbaa !0
  %397 = getelementptr inbounds %union.t_iparams* %396, i64 %idxprom544, i32 0, i32 1
  %398 = load float* %397, align 4, !tbaa !4
  %mul564 = fmul float %add559, %398
  store float %mul564, float* %397, align 4, !tbaa !4
  br label %if.end565

if.end565:                                        ; preds = %if.then554, %sw.bb
  %rA = getelementptr inbounds %struct.t_coupl_iparams* %387, i64 %indvars.iv, i32 2, i32 0, i32 0
  %399 = load float* %rA, align 4, !tbaa !4
  %fabsf912 = call float @fabsf(float %399) #7
  %400 = fpext float %fabsf912 to double
  %cmp570 = fcmp ogt double %400, 1.200000e-38
  br i1 %cmp570, label %if.then572, label %sw.epilog

if.then572:                                       ; preds = %if.end565
  %div576 = fdiv float %mul549, %399
  %add577 = fadd float %div576, 1.000000e+00
  %401 = load %union.t_iparams** %iparams, align 8, !tbaa !0
  %rA582 = getelementptr inbounds %union.t_iparams* %401, i64 %idxprom544, i32 0, i32 0
  %402 = load float* %rA582, align 4, !tbaa !4
  %mul583 = fmul float %add577, %402
  store float %mul583, float* %rA582, align 4, !tbaa !4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end565, %for.body540, %if.then572
  %iprint = getelementptr inbounds %struct.t_coupl_iparams* %387, i64 %indvars.iv, i32 3
  %403 = load %union.t_iparams** %iparams, align 8, !tbaa !0
  %arrayidx587 = getelementptr inbounds %union.t_iparams* %403, i64 %idxprom544
  %404 = bitcast %union.t_iparams* %iprint to i8*
  %405 = bitcast %union.t_iparams* %arrayidx587 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %404, i8* %405, i64 24, i32 4, i1 false), !tbaa.struct !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %406 = load i32* %nIP, align 4, !tbaa !3
  %407 = trunc i64 %indvars.iv.next to i32
  %cmp538 = icmp slt i32 %407, %406
  br i1 %cmp538, label %for.body540, label %for.end590

for.end590:                                       ; preds = %sw.epilog, %for.cond537.preheader
  call void @llvm.lifetime.end(i64 56, i8* %1) #3
  call void @llvm.lifetime.end(i64 56, i8* %0) #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #4

; Function Attrs: optsize
declare i32 @do_per_step(i32, i32) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @set_factor_matrix(i32 %ntypes, float* nocapture %f, float %fmult, i32 %ati, i32 %atj) #0 {
entry:
  %conv = fpext float %fmult to double
  %cmp = fcmp olt double %conv, 9.500000e-01
  br i1 %cmp, label %cond.end15, label %cond.false

cond.false:                                       ; preds = %entry
  %phitmp = fcmp ogt double %conv, 1.050000e+00
  %.mux.fmult = select i1 %phitmp, float 0x3FF0CCCCC0000000, float %fmult
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false, %entry
  %cond16 = phi float [ 0x3FEE666660000000, %entry ], [ %.mux.fmult, %cond.false ]
  %cmp18 = icmp eq i32 %atj, -1
  br i1 %cmp18, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %cond.end15
  %cmp2661 = icmp sgt i32 %ntypes, 0
  br i1 %cmp2661, label %for.body.lr.ph, label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mul28 = mul nsw i32 %ati, %ntypes
  %0 = sext i32 %mul28 to i64
  br label %for.body

if.then:                                          ; preds = %cond.end15
  %mul = mul nsw i32 %ati, %ntypes
  %add = add nsw i32 %mul, %atj
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds float* %f, i64 %idxprom
  %1 = load float* %arrayidx, align 4, !tbaa !4
  %mul20 = fmul float %cond16, %1
  store float %mul20, float* %arrayidx, align 4, !tbaa !4
  %mul21 = mul nsw i32 %atj, %ntypes
  %add22 = add nsw i32 %mul21, %ati
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds float* %f, i64 %idxprom23
  %2 = load float* %arrayidx24, align 4, !tbaa !4
  %mul25 = fmul float %cond16, %2
  store float %mul25, float* %arrayidx24, align 4, !tbaa !4
  br label %if.end

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %3 = add nsw i64 %indvars.iv, %0
  %arrayidx31 = getelementptr inbounds float* %f, i64 %3
  %4 = load float* %arrayidx31, align 4, !tbaa !4
  %mul32 = fmul float %cond16, %4
  store float %mul32, float* %arrayidx31, align 4, !tbaa !4
  %5 = trunc i64 %indvars.iv to i32
  %mul33 = mul nsw i32 %5, %ntypes
  %add34 = add nsw i32 %mul33, %ati
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds float* %f, i64 %idxprom35
  %6 = load float* %arrayidx36, align 4, !tbaa !4
  %mul37 = fmul float %cond16, %6
  store float %mul37, float* %arrayidx36, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %ntypes
  br i1 %exitcond, label %if.end, label %for.body

if.end:                                           ; preds = %for.cond.preheader, %for.body, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @upd_f_value(i32 %atnr, float %xi, float %dt, float %factor, float* nocapture %ff, i32 %ati, i32 %atj) #0 {
entry:
  %fabsf = tail call float @fabsf(float %xi) #7
  %0 = fpext float %fabsf to double
  %cmp = fcmp ogt double %0, 1.200000e-38
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %div = fdiv float %dt, %xi
  %mul = fmul float %div, %factor
  %add = fadd float %mul, 1.000000e+00
  %cmp2 = fcmp ogt float %add, 0.000000e+00
  br i1 %cmp2, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.then
  %conv7 = tail call float @sqrtf(float %add) #4
  tail call fastcc void @set_factor_matrix(i32 %atnr, float* %ff, float %conv7, i32 %ati, i32 %atj) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then, %if.then4, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: optsize
declare %struct._IO_FILE* @xvgropen(i8*, i8*, i8*, i8*) #1

; Function Attrs: optsize
declare void @xvgr_legend(%struct._IO_FILE*, i32, i8**) #1

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: optsize
declare i8* @gmx_strdup(i8*) #1

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @mk_gct_nm(i8* nocapture %fn, i32 %ati, i32 %atj) #0 {
entry:
  %call = tail call i8* @strcpy(i8* getelementptr inbounds ([256 x i8]* @mk_gct_nm.buf, i64 0, i64 0), i8* %fn) #6
  %cmp = icmp eq i32 %atj, -1
  %call1 = tail call i64 @strlen(i8* %fn) #9
  %add.ptr.sum = add i64 %call1, -4
  %add.ptr2 = getelementptr inbounds [256 x i8]* @mk_gct_nm.buf, i64 0, i64 %add.ptr.sum
  %call3 = tail call i8* @ftp2ext(i32 19) #6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call4 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %add.ptr2, i8* getelementptr inbounds ([6 x i8]* @.str63, i64 0, i64 0), i32 %ati, i8* %call3) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %call9 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %add.ptr2, i8* getelementptr inbounds ([9 x i8]* @.str64, i64 0, i64 0), i32 %ati, i32 %atj, i8* %call3) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: optsize
declare i8* @ftp2ext(i32) #1

declare float @fabsf(float)

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize readonly }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
!5 = metadata !{i64 0, i64 4, metadata !4, i64 4, i64 4, metadata !4, i64 8, i64 4, metadata !4, i64 0, i64 4, metadata !4, i64 4, i64 4, metadata !4, i64 8, i64 4, metadata !4, i64 12, i64 4, metadata !4, i64 0, i64 4, metadata !4, i64 4, i64 4, metadata !4, i64 8, i64 4, metadata !4, i64 0, i64 4, metadata !4, i64 4, i64 4, metadata !4, i64 8, i64 4, metadata !4, i64 12, i64 4, metadata !4, i64 16, i64 4, metadata !4, i64 20, i64 4, metadata !4, i64 0, i64 4, metadata !4, i64 4, i64 4, metadata !4, i64 0, i64 4, metadata !4, i64 4, i64 4, metadata !4, i64 8, i64 4, metadata !4, i64 12, i64 4, metadata !4, i64 0, i64 4, metadata !4, i64 4, i64 4, metadata !4, i64 8, i64 4, metadata !3, i64 12, i64 4, metadata !4, i64 16, i64 4, metadata !4, i64 0, i64 4, metadata !4, i64 4, i64 4, metadata !4, i64 0, i64 4, metadata !4, i64 4, i64 4, metadata !4, i64 0, i64 4, metadata !4, i64 4, i64 4, metadata !4, i64 8, i64 4, metadata !4, i64 0, i64 12, metadata !1, i64 12, i64 12, metadata !1, i64 0, i64 24, metadata !1, i64 0, i64 4, metadata !4, i64 4, i64 4, metadata !4, i64 8, i64 4, metadata !4, i64 12, i64 4, metadata !4, i64 16, i64 4, metadata !4, i64 20, i64 4, metadata !4, i64 0, i64 4, metadata !4, i64 4, i64 4, metadata !4, i64 8, i64 4, metadata !4, i64 12, i64 4, metadata !4, i64 16, i64 4, metadata !3, i64 20, i64 4, metadata !3, i64 0, i64 4, metadata !3, i64 4, i64 4, metadata !3, i64 8, i64 4, metadata !3, i64 12, i64 4, metadata !4, i64 16, i64 4, metadata !4, i64 20, i64 4, metadata !4, i64 0, i64 24, metadata !1}

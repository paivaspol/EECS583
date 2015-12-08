; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/sim_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_parm = type { %struct.t_inputrec, [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]] }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.t_nrnb = type { [129 x double] }
%struct.t_topology = type { i8**, %struct.t_idef, %struct.t_atoms, [3 x %struct.t_block], %struct.t_symtab }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%union.t_iparams = type { %struct.anon.2 }
%struct.anon.2 = type { float, float, float, float, float, float }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }
%struct.t_symtab = type { i32, %struct.symbuf* }
%struct.symbuf = type { i32, i8**, %struct.symbuf* }
%struct.t_groups = type { %struct.t_grp_ener, %struct.t_grp_tcstat*, %struct.t_grp_acc*, %struct.t_cos_acc }
%struct.t_grp_ener = type { i32, [7 x float*] }
%struct.t_grp_tcstat = type { float, float, [3 x [3 x float]], float, float }
%struct.t_grp_acc = type { i32, i32*, float, [3 x float], [3 x float], [3 x float] }
%struct.t_cos_acc = type { float, float, float }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_fcdata = type { %struct.t_disresdata, %struct.t_oriresdata }
%struct.t_disresdata = type { i32, i32, float, float, float, float, float, i32, i32, float, float*, float*, float*, float*, float* }
%struct.t_oriresdata = type { float, float, float, float, i32, i32, i32, float, float*, [3 x float]*, [3 x float]*, [3 x [3 x float]], [3 x [3 x float]]*, [5 x float]*, [5 x float]*, [5 x float]*, float*, float*, float*, float, [5 x float]*, float*** }
%struct.t_graph = type { i32, i32, i32, i32, i32, i32*, i32**, [3 x i32]* }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_edsamyn = type { i32, i8*, i8* }
%struct.t_pull = type { %struct.t_pullgrps, %struct.t_pullgrps, %struct.t_pullgrps, i32, i32, [3 x float], [3 x float], float, float, [3 x i32], float, float, i32, float, float, float, i32, i32, i32, %struct._IO_FILE*, float, float, float, i32, i32, i32 }
%struct.t_pullgrps = type { i32, i32**, float**, i32*, i8**, float*, [3 x float]**, [3 x float]**, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, float*, [3 x float]*, [3 x float]** }
%struct.t_filenm = type { i32, i8*, i8*, i64 }
%struct.t_mdebin = type { %struct.t_ebin*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.t_ebin = type { i32, i8**, %struct.t_energy* }
%struct.t_energy = type { float, double, double, float }
%struct.t_vcm = type { i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x [3 x float]]*, float*, i8**, i16* }

@print_time.time_per_step = internal unnamed_addr global float 0.000000e+00, align 4
@print_time.end = internal unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"\0Dstep %d\00", align 1
@.str2 = private unnamed_addr constant [20 x i8] c", will finish at %s\00", align 1
@.str3 = private unnamed_addr constant [42 x i8] c", remaining runtime: %5d s               \00", align 1
@.str4 = private unnamed_addr constant [18 x i8] c"%s on node %d %s\0A\00", align 1
@do_force.box_size = internal global [3 x float] zeroinitializer, align 4
@do_force.dvdl_lr = internal global float 0.000000e+00, align 4
@do_force.mu_and_q = internal global [4 x float] zeroinitializer, align 16
@debug = external global %struct._IO_FILE*
@.str5 = private unnamed_addr constant [5 x i8] c"cgcm\00", align 1
@.str6 = private unnamed_addr constant [11 x i8] c"vir_shifts\00", align 1
@.str7 = private unnamed_addr constant [8 x i8] c"virtest\00", align 1
@.str8 = private unnamed_addr constant [8 x i8] c"pme_vir\00", align 1
@.str9 = private unnamed_addr constant [9 x i8] c"vir_part\00", align 1
@cprev = internal unnamed_addr global i64 0, align 8
@runtime = internal unnamed_addr global double 0.000000e+00, align 8
@.str10 = private unnamed_addr constant [34 x i8] c"vcm: start=%d, homenr=%d, end=%d\0A\00", align 1
@.str11 = private unnamed_addr constant [50 x i8] c"\0AConstraining the starting coordinates (step %d)\0A\00", align 1
@.str12 = private unnamed_addr constant [50 x i8] c"\0AConstraining the coordinates at t0-dt (step %d)\0A\00", align 1
@.str13 = private unnamed_addr constant [47 x i8] c"vcm: %8.3f  %8.3f  %8.3f, total mass = %12.5e\0A\00", align 1
@calc_dispcorr.bFirst = internal unnamed_addr global i1 false
@.str14 = private unnamed_addr constant [35 x i8] c"Long Range LJ corr. to Epot: %10g\0A\00", align 1
@.str15 = private unnamed_addr constant [58 x i8] c"Long Range LJ corr. to Epot: %10g, Pres: %10g, Vir: %10g\0A\00", align 1
@.str16 = private unnamed_addr constant [25 x i8] c"Removing pbc first time\0A\00", align 1
@.str18 = private unnamed_addr constant [12 x i8] c"Done rmpbc\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str19 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@stdlog = external global %struct._IO_FILE*
@.str20 = private unnamed_addr constant [4 x i8] c"fsr\00", align 1
@.str21 = private unnamed_addr constant [4 x i8] c"flr\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @print_time(%struct._IO_FILE* %out, i64 %start, i32 %step, %struct.t_inputrec* nocapture %ir) #0 {
entry:
  %finish = alloca i64, align 8
  %buf = alloca [48 x i8], align 16
  %0 = getelementptr inbounds [48 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 48, i8* %0) #1
  %tobool = icmp ne %struct._IO_FILE* %out, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), i32 %step) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %nstlist = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 3
  %1 = load i32* %nstlist, align 4, !tbaa !0
  %cmp = icmp sgt i32 %1, %step
  br i1 %cmp, label %if.end36, label %if.then1

if.then1:                                         ; preds = %if.end
  %cmp3 = icmp eq i32 %1, 0
  br i1 %cmp3, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then1
  %rem = srem i32 %step, %1
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then6, label %lor.lhs.false.if.end11_crit_edge

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  %.pre = load float* @print_time.time_per_step, align 4, !tbaa !3
  br label %if.end11

if.then6:                                         ; preds = %lor.lhs.false, %if.then1
  %call7 = call i64 @time(i64* null) #6
  store i64 %call7, i64* @print_time.end, align 8, !tbaa !4
  %conv = sitofp i64 %call7 to double
  %conv8 = sitofp i64 %start to double
  %sub = fsub double %conv, %conv8
  %add = add nsw i32 %step, 1
  %conv9 = sitofp i32 %add to double
  %div = fdiv double %sub, %conv9
  %conv10 = fptrunc double %div to float
  store float %conv10, float* @print_time.time_per_step, align 4, !tbaa !3
  br label %if.end11

if.end11:                                         ; preds = %lor.lhs.false.if.end11_crit_edge, %if.then6
  %2 = phi float [ %.pre, %lor.lhs.false.if.end11_crit_edge ], [ %conv10, %if.then6 ]
  %nsteps = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 1
  %3 = load i32* %nsteps, align 4, !tbaa !0
  %sub12 = sub nsw i32 %3, %step
  %conv13 = sitofp i32 %sub12 to float
  %mul = fmul float %2, %conv13
  %cmp15 = fcmp ult float %mul, 3.000000e+02
  br i1 %cmp15, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end11
  %4 = load i64* @print_time.end, align 8, !tbaa !4
  %conv18 = fptosi float %mul to i64
  %add19 = add nsw i64 %4, %conv18
  store i64 %add19, i64* %finish, align 8, !tbaa !4
  %call20 = call i8* @ctime(i64* %finish) #6
  %strlen = call i64 @strlen(i8* %call20)
  %leninc = add i64 %strlen, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %call20, i64 %leninc, i32 1, i1 false)
  %call23 = call i64 @strlen(i8* %0) #7
  %sub24 = add i64 %call23, -1
  %arrayidx = getelementptr inbounds [48 x i8]* %buf, i64 0, i64 %sub24
  store i8 0, i8* %arrayidx, align 1, !tbaa !1
  br i1 %tobool, label %if.then26, label %if.end36

if.then26:                                        ; preds = %if.then17
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([20 x i8]* @.str2, i64 0, i64 0), i8* %0) #6
  br label %if.end36

if.else:                                          ; preds = %if.end11
  br i1 %tobool, label %if.then31, label %if.end36

if.then31:                                        ; preds = %if.else
  %conv32 = fptosi float %mul to i32
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([42 x i8]* @.str3, i64 0, i64 0), i32 %conv32) #6
  br label %if.end36

if.end36:                                         ; preds = %if.end, %if.then26, %if.then17, %if.then31, %if.else
  %call37 = call i32 @fflush(%struct._IO_FILE* %out) #6
  call void @llvm.lifetime.end(i64 48, i8* %0) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare i64 @time(i64*) #2

; Function Attrs: nounwind optsize
declare i8* @ctime(i64*) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i64 @print_date_and_time(%struct._IO_FILE* %log, i32 %nodeid, i8* %title) #0 {
entry:
  %time_string = alloca [4096 x i8], align 16
  %now = alloca i64, align 8
  %0 = getelementptr inbounds [4096 x i8]* %time_string, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %0) #1
  %call = call i64 @time(i64* null) #6
  store i64 %call, i64* %now, align 8, !tbaa !4
  %call1 = call i8* @ctime(i64* %now) #6
  %1 = load i8* %call1, align 1, !tbaa !1
  %cmp15 = icmp sgt i8 %1, 31
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx618 = phi i8* [ %arrayidx6, %for.body ], [ %0, %entry ]
  %2 = phi i8 [ %3, %for.body ], [ %1, %entry ]
  store i8 %2, i8* %arrayidx618, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds i8* %call1, i64 %indvars.iv.next
  %3 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp = icmp sgt i8 %3, 31
  %arrayidx6 = getelementptr inbounds [4096 x i8]* %time_string, i64 0, i64 %indvars.iv.next
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %arrayidx6.lcssa = phi i8* [ %0, %entry ], [ %arrayidx6, %for.body ]
  store i8 0, i8* %arrayidx6.lcssa, align 1, !tbaa !1
  %tobool = icmp eq %struct._IO_FILE* %log, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([18 x i8]* @.str4, i64 0, i64 0), i8* %title, i32 %nodeid, i8* %0) #6
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %4 = load i64* %now, align 8, !tbaa !4
  call void @llvm.lifetime.end(i64 4096, i8* %0) #1
  ret i64 %4
}

; Function Attrs: nounwind optsize uwtable
define void @do_force(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, [3 x float]* %vir_part, [3 x float]* %pme_vir, i32 %step, %struct.t_nrnb* %nrnb, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %x, [3 x float]* nocapture %v, [3 x float]* %f, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, float* %ener, %struct.t_fcdata* %fcd, i32 %bVerbose, float %lambda, %struct.t_graph* %graph, i32 %bNS, i32 %bNBFonly, %struct.t_forcerec* %fr, float* %mu_tot, i32 %bGatherOnly) #0 {
entry:
  %nodeid = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %0 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom
  %1 = load i32* %arrayidx, align 4, !tbaa !0
  %arrayidx4 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom
  %2 = load i32* %arrayidx4, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %sub = add nsw i32 %0, -1
  %idxprom7 = sext i32 %sub to i64
  %arrayidx8 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 %idxprom7
  %3 = load i32* %arrayidx8, align 4, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %3, %cond.false ], [ 0, %entry ]
  %arrayidx12 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 %idxprom
  %4 = load i32* %arrayidx12, align 4, !tbaa !0
  %arraydecay = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  tail call void @update_forcerec(%struct._IO_FILE* %log, %struct.t_forcerec* %fr, [3 x float]* %arraydecay) #6
  %chargeT = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 8
  %5 = load float** %chargeT, align 8, !tbaa !5
  tail call void @calc_mu_and_q(%struct.t_nsborder* %nsb, [3 x float]* %x, float* %5, float* getelementptr inbounds ([4 x float]* @do_force.mu_and_q, i64 0, i64 0), float* getelementptr inbounds ([4 x float]* @do_force.mu_and_q, i64 0, i64 3)) #6
  %ePBC = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 0
  %6 = load i32* %ePBC, align 4, !tbaa !0
  %cmp13 = icmp eq i32 %6, 1
  br i1 %cmp13, label %if.else35, label %if.then

if.then:                                          ; preds = %cond.end
  %epc = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 28
  %7 = load i32* %epc, align 4, !tbaa !0
  %cmp14 = icmp eq i32 %7, 0
  br i1 %cmp14, label %if.end, label %if.then15

if.then15:                                        ; preds = %if.then
  %shift_vec = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 48
  %8 = load [3 x float]** %shift_vec, align 8, !tbaa !5
  tail call void @calc_shifts([3 x float]* %arraydecay, float* getelementptr inbounds ([3 x float]* @do_force.box_size, i64 0, i64 0), [3 x float]* %8) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then15
  %tobool = icmp eq i32 %bNS, 0
  br i1 %tobool, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end
  %arrayidx21 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0
  %cg_cm = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 47
  %9 = load [3 x float]** %cg_cm, align 8, !tbaa !5
  tail call void @put_charge_groups_in_box(%struct._IO_FILE* %log, i32 %cond, i32 %4, [3 x float]* %arraydecay, float* getelementptr inbounds ([3 x float]* @do_force.box_size, i64 0, i64 0), %struct.t_block* %arrayidx21, [3 x float]* %x, [3 x float]* %9) #6
  %conv = sitofp i32 %2 to double
  %arrayidx22 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 88
  %10 = load double* %arrayidx22, align 8, !tbaa !6
  %add = fadd double %conv, %10
  store double %add, double* %arrayidx22, align 8, !tbaa !6
  br label %if.end42

if.else:                                          ; preds = %if.end
  %eI = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 0
  %11 = load i32* %eI, align 4, !tbaa !0
  %.off = add i32 %11, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then30, label %if.end63

if.then30:                                        ; preds = %if.else
  tail call void @unshift_self(%struct.t_graph* %graph, [3 x float]* %arraydecay, [3 x float]* %x) #6
  br label %if.end63

if.else35:                                        ; preds = %cond.end
  %tobool36 = icmp eq i32 %bNS, 0
  br i1 %tobool36, label %if.end63, label %if.then37

if.then37:                                        ; preds = %if.else35
  %arrayidx39 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0
  %cg_cm40 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 47
  %12 = load [3 x float]** %cg_cm40, align 8, !tbaa !5
  tail call void @calc_cgcm(%struct._IO_FILE* %log, i32 %cond, i32 %4, %struct.t_block* %arrayidx39, [3 x float]* %x, [3 x float]* %12) #6
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %if.then18
  %tobool43 = icmp eq i32 %bNS, 0
  br i1 %tobool43, label %if.end63, label %if.then44

if.then44:                                        ; preds = %if.end42
  %sub45 = sub nsw i32 %4, %cond
  %conv46 = sitofp i32 %sub45 to double
  %arrayidx48 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 90
  %13 = load double* %arrayidx48, align 8, !tbaa !6
  %add49 = fadd double %conv46, %13
  store double %add49, double* %arrayidx48, align 8, !tbaa !6
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %14 = load i32* %nnodes, align 4, !tbaa !0
  %cmp50 = icmp sgt i32 %14, 1
  br i1 %cmp50, label %if.then55, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %if.then44
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %15 = load i32* %nthreads, align 4, !tbaa !0
  %cmp53 = icmp sgt i32 %15, 1
  br i1 %cmp53, label %if.then55, label %if.end58

if.then55:                                        ; preds = %lor.lhs.false52, %if.then44
  %cg_cm56 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 47
  %16 = load [3 x float]** %cg_cm56, align 8, !tbaa !5
  %arraydecay57 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 0
  tail call void @move_cgcm(%struct._IO_FILE* %log, %struct.t_commrec* %cr, [3 x float]* %16, i32* %arraydecay57) #6
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %lor.lhs.false52
  %17 = load %struct._IO_FILE** @debug, align 8, !tbaa !5
  %tobool59 = icmp eq %struct._IO_FILE* %17, null
  br i1 %tobool59, label %if.end63, label %if.then60

if.then60:                                        ; preds = %if.end58
  %cg_cm61 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 47
  %18 = load [3 x float]** %cg_cm61, align 8, !tbaa !5
  %cgtotal = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 2
  %19 = load i32* %cgtotal, align 4, !tbaa !0
  tail call void @pr_rvecs(%struct._IO_FILE* %17, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), [3 x float]* %18, i32 %19) #6
  br label %if.end63

if.end63:                                         ; preds = %if.end58, %if.end42, %if.else35, %if.else, %if.then30, %if.then60
  %tobool43375 = phi i1 [ true, %if.then60 ], [ false, %if.then30 ], [ false, %if.else ], [ false, %if.else35 ], [ false, %if.end42 ], [ true, %if.end58 ]
  %nnodes64 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %20 = load i32* %nnodes64, align 4, !tbaa !0
  %cmp65 = icmp sgt i32 %20, 1
  br i1 %cmp65, label %if.then71, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %if.end63
  %nthreads68 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %21 = load i32* %nthreads68, align 4, !tbaa !0
  %cmp69 = icmp sgt i32 %21, 1
  br i1 %cmp69, label %if.then71, label %for.body

if.then71:                                        ; preds = %lor.lhs.false67, %if.end63
  %left = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %22 = load i32* %left, align 4, !tbaa !0
  %right = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %23 = load i32* %right, align 4, !tbaa !0
  tail call void @move_x(%struct._IO_FILE* %log, i32 %22, i32 %23, [3 x float]* %x, %struct.t_nsborder* %nsb, %struct.t_nrnb* %nrnb) #6
  tail call void @gmx_sumf(i32 4, float* getelementptr inbounds ([4 x float]* @do_force.mu_and_q, i64 0, i64 0), %struct.t_commrec* %cr) #6
  br label %for.body

for.body:                                         ; preds = %lor.lhs.false67, %if.then71, %for.body
  %indvars.iv399 = phi i64 [ %indvars.iv.next400, %for.body ], [ 0, %if.then71 ], [ 0, %lor.lhs.false67 ]
  %arrayidx76 = getelementptr inbounds [4 x float]* @do_force.mu_and_q, i64 0, i64 %indvars.iv399
  %24 = load float* %arrayidx76, align 4, !tbaa !3
  %arrayidx78 = getelementptr inbounds float* %mu_tot, i64 %indvars.iv399
  store float %24, float* %arrayidx78, align 4, !tbaa !3
  %indvars.iv.next400 = add i64 %indvars.iv399, 1
  %lftr.wideiv401 = trunc i64 %indvars.iv.next400 to i32
  %exitcond402 = icmp eq i32 %lftr.wideiv401, 3
  br i1 %exitcond402, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %25 = load float* getelementptr inbounds ([4 x float]* @do_force.mu_and_q, i64 0, i64 3), align 4, !tbaa !3
  %ir79 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0
  %bTwinRange.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 51
  %nn.i = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc14.i, %for.end
  %indvars.iv.i = phi i64 [ 0, %for.end ], [ %indvars.iv.next.i, %for.inc14.i ]
  %26 = add i64 %indvars.iv.i, 4294967293
  %27 = trunc i64 %26 to i32
  %28 = icmp ugt i32 %27, 1
  br i1 %28, label %for.cond8.preheader.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %29 = load i32* %bTwinRange.i, align 4, !tbaa !0
  %tobool.i = icmp eq i32 %29, 0
  %brmerge.i = or i1 %tobool.i, %tobool43375
  br i1 %brmerge.i, label %for.cond8.preheader.i, label %for.inc14.i

for.cond8.preheader.i:                            ; preds = %lor.lhs.false.i, %for.body.i
  %30 = load i32* %nn.i, align 4, !tbaa !0
  %cmp92.i = icmp sgt i32 %30, 0
  br i1 %cmp92.i, label %for.body10.lr.ph.i, label %for.inc14.i

for.body10.lr.ph.i:                               ; preds = %for.cond8.preheader.i
  %arrayidx.i = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 %indvars.iv.i
  %31 = load float** %arrayidx.i, align 8, !tbaa !5
  %32 = bitcast float* %31 to i8*
  %33 = icmp sgt i32 %30, 1
  %.op.i = add i32 %30, -1
  %34 = zext i32 %.op.i to i64
  %.op7.i = shl nuw nsw i64 %34, 2
  %.op7.op.i = add i64 %.op7.i, 4
  %35 = select i1 %33, i64 %.op7.op.i, i64 4
  tail call void @llvm.memset.p0i8.i64(i8* %32, i8 0, i64 %35, i32 4, i1 false) #1
  br label %for.inc14.i

for.inc14.i:                                      ; preds = %for.body10.lr.ph.i, %for.cond8.preheader.i, %lor.lhs.false.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv397 = trunc i64 %indvars.iv.next.i to i32
  %exitcond398 = icmp eq i32 %lftr.wideiv397, 7
  br i1 %exitcond398, label %reset_energies.exit, label %for.body.i

reset_energies.exit:                              ; preds = %for.inc14.i
  %opts = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80
  %epot5.i = bitcast float* %ener to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %epot5.i, i8 0, i64 152, i32 4, i1 false) #1
  %arrayidx25.i = getelementptr inbounds float* %ener, i64 42
  store float 0.000000e+00, float* %arrayidx25.i, align 4, !tbaa !3
  %arrayidx26.i = getelementptr inbounds float* %ener, i64 43
  store float 0.000000e+00, float* %arrayidx26.i, align 4, !tbaa !3
  br i1 %tobool43375, label %if.then81, label %if.end96

if.then81:                                        ; preds = %reset_energies.exit
  %36 = load i32* %ePBC, align 4, !tbaa !0
  %cmp83 = icmp eq i32 %36, 1
  br i1 %cmp83, label %if.end88, label %if.then85

if.then85:                                        ; preds = %if.then81
  tail call void @mk_mshift(%struct._IO_FILE* %log, %struct.t_graph* %graph, [3 x float]* %arraydecay, [3 x float]* %x) #6
  br label %if.end88

if.end88:                                         ; preds = %if.then81, %if.then85
  %37 = load i32* %bTwinRange.i, align 4, !tbaa !0
  %tobool89 = icmp eq i32 %37, 0
  br i1 %tobool89, label %if.end91, label %if.then90

if.then90:                                        ; preds = %if.end88
  %natoms = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  %38 = load i32* %natoms, align 4, !tbaa !0
  %f_twin = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 53
  %39 = load [3 x float]** %f_twin, align 8, !tbaa !5
  %cmp3.i364 = icmp sgt i32 %38, 0
  br i1 %cmp3.i364, label %for.body.i372, label %clear_rvecs.exit373

for.body.i372:                                    ; preds = %if.then90, %for.body.i372
  %indvars.iv.i365 = phi i64 [ %indvars.iv.next.i369, %for.body.i372 ], [ 0, %if.then90 ]
  %arraydecay.i366 = getelementptr inbounds [3 x float]* %39, i64 %indvars.iv.i365, i64 0
  store float 0.000000e+00, float* %arraydecay.i366, align 4, !tbaa !3
  %arrayidx1.i.i367 = getelementptr inbounds [3 x float]* %39, i64 %indvars.iv.i365, i64 1
  store float 0.000000e+00, float* %arrayidx1.i.i367, align 4, !tbaa !3
  %arrayidx2.i.i368 = getelementptr inbounds [3 x float]* %39, i64 %indvars.iv.i365, i64 2
  store float 0.000000e+00, float* %arrayidx2.i.i368, align 4, !tbaa !3
  %indvars.iv.next.i369 = add i64 %indvars.iv.i365, 1
  %lftr.wideiv395 = trunc i64 %indvars.iv.next.i369 to i32
  %exitcond396 = icmp eq i32 %lftr.wideiv395, %38
  br i1 %exitcond396, label %clear_rvecs.exit373, label %for.body.i372

clear_rvecs.exit373:                              ; preds = %for.body.i372, %if.then90
  %fshift_twin = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 54
  %40 = load [3 x float]** %fshift_twin, align 8, !tbaa !5
  br label %for.body.i362

for.body.i362:                                    ; preds = %for.body.i362, %clear_rvecs.exit373
  %indvars.iv.i355 = phi i64 [ %indvars.iv.next.i359, %for.body.i362 ], [ 0, %clear_rvecs.exit373 ]
  %arraydecay.i356 = getelementptr inbounds [3 x float]* %40, i64 %indvars.iv.i355, i64 0
  store float 0.000000e+00, float* %arraydecay.i356, align 4, !tbaa !3
  %arrayidx1.i.i357 = getelementptr inbounds [3 x float]* %40, i64 %indvars.iv.i355, i64 1
  store float 0.000000e+00, float* %arrayidx1.i.i357, align 4, !tbaa !3
  %arrayidx2.i.i358 = getelementptr inbounds [3 x float]* %40, i64 %indvars.iv.i355, i64 2
  store float 0.000000e+00, float* %arrayidx2.i.i358, align 4, !tbaa !3
  %indvars.iv.next.i359 = add i64 %indvars.iv.i355, 1
  %lftr.wideiv393 = trunc i64 %indvars.iv.next.i359 to i32
  %exitcond394 = icmp eq i32 %lftr.wideiv393, 27
  br i1 %exitcond394, label %if.end91, label %for.body.i362

if.end91:                                         ; preds = %for.body.i362, %if.end88
  store float 0.000000e+00, float* @do_force.dvdl_lr, align 4, !tbaa !3
  tail call void @ns(%struct._IO_FILE* %log, %struct.t_forcerec* %fr, [3 x float]* %x, [3 x float]* %f, [3 x float]* %arraydecay, %struct.t_groups* %grps, %struct.t_grpopts* %opts, %struct.t_topology* %top, %struct.t_mdatoms* %mdatoms, %struct.t_commrec* %cr, %struct.t_nrnb* %nrnb, %struct.t_nsborder* %nsb, i32 %step, float %lambda, float* @do_force.dvdl_lr) #6
  br label %if.end96

if.end96:                                         ; preds = %if.end91, %reset_energies.exit
  %eeltype = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 33
  %41 = load i32* %eeltype, align 4, !tbaa !0
  %.off319 = add i32 %41, -3
  %switch320 = icmp ult i32 %.off319, 4
  br i1 %switch320, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.end96
  %f_pme = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55
  %42 = load [3 x float]** %f_pme, align 8, !tbaa !5
  %idx.ext = sext i32 %1 to i64
  %cmp3.i345 = icmp sgt i32 %2, 0
  br i1 %cmp3.i345, label %for.body.i353, label %if.end112

for.body.i353:                                    ; preds = %if.then111, %for.body.i353
  %indvars.iv.i346 = phi i64 [ %indvars.iv.next.i350, %for.body.i353 ], [ 0, %if.then111 ]
  %add.ptr.sum = add i64 %indvars.iv.i346, %idx.ext
  %arraydecay.i347 = getelementptr inbounds [3 x float]* %42, i64 %add.ptr.sum, i64 0
  store float 0.000000e+00, float* %arraydecay.i347, align 4, !tbaa !3
  %arrayidx1.i.i348 = getelementptr inbounds [3 x float]* %42, i64 %add.ptr.sum, i64 1
  store float 0.000000e+00, float* %arrayidx1.i.i348, align 4, !tbaa !3
  %arrayidx2.i.i349 = getelementptr inbounds [3 x float]* %42, i64 %add.ptr.sum, i64 2
  store float 0.000000e+00, float* %arrayidx2.i.i349, align 4, !tbaa !3
  %indvars.iv.next.i350 = add i64 %indvars.iv.i346, 1
  %lftr.wideiv391 = trunc i64 %indvars.iv.next.i350 to i32
  %exitcond392 = icmp eq i32 %lftr.wideiv391, %2
  br i1 %exitcond392, label %if.end112, label %for.body.i353

if.end112:                                        ; preds = %for.body.i353, %if.then111, %if.end96
  %43 = load i32* %bTwinRange.i, align 4, !tbaa !0
  %tobool114 = icmp eq i32 %43, 0
  %natoms146 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  %44 = load i32* %natoms146, align 4, !tbaa !0
  %cmp3.i = icmp sgt i32 %44, 0
  br i1 %tobool114, label %if.else145, label %for.cond116.preheader

for.cond116.preheader:                            ; preds = %if.end112
  br i1 %cmp3.i, label %for.body120.lr.ph, label %for.cond131.preheader

for.body120.lr.ph:                                ; preds = %for.cond116.preheader
  %f_twin122 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 53
  %45 = load [3 x float]** %f_twin122, align 8, !tbaa !5
  br label %for.body120

for.cond131.preheader:                            ; preds = %for.body120, %for.cond116.preheader
  %fshift_twin136 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 54
  %46 = load [3 x float]** %fshift_twin136, align 8, !tbaa !5
  %fshift = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %47 = load [3 x float]** %fshift, align 8, !tbaa !5
  br label %for.body134

for.body120:                                      ; preds = %for.body120.lr.ph, %for.body120
  %indvars.iv389 = phi i64 [ 0, %for.body120.lr.ph ], [ %indvars.iv.next390, %for.body120 ]
  %arraydecay124 = getelementptr inbounds [3 x float]* %45, i64 %indvars.iv389, i64 0
  %arraydecay127 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv389, i64 0
  %48 = load float* %arraydecay124, align 4, !tbaa !3
  store float %48, float* %arraydecay127, align 4, !tbaa !3
  %arrayidx2.i341 = getelementptr inbounds [3 x float]* %45, i64 %indvars.iv389, i64 1
  %49 = load float* %arrayidx2.i341, align 4, !tbaa !3
  %arrayidx3.i342 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv389, i64 1
  store float %49, float* %arrayidx3.i342, align 4, !tbaa !3
  %arrayidx4.i343 = getelementptr inbounds [3 x float]* %45, i64 %indvars.iv389, i64 2
  %50 = load float* %arrayidx4.i343, align 4, !tbaa !3
  %arrayidx5.i344 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv389, i64 2
  store float %50, float* %arrayidx5.i344, align 4, !tbaa !3
  %indvars.iv.next390 = add i64 %indvars.iv389, 1
  %51 = trunc i64 %indvars.iv.next390 to i32
  %cmp118 = icmp slt i32 %51, %44
  br i1 %cmp118, label %for.body120, label %for.cond131.preheader

for.body134:                                      ; preds = %for.body134, %for.cond131.preheader
  %indvars.iv = phi i64 [ 0, %for.cond131.preheader ], [ %indvars.iv.next, %for.body134 ]
  %arraydecay138 = getelementptr inbounds [3 x float]* %46, i64 %indvars.iv, i64 0
  %arraydecay141 = getelementptr inbounds [3 x float]* %47, i64 %indvars.iv, i64 0
  %52 = load float* %arraydecay138, align 4, !tbaa !3
  store float %52, float* %arraydecay141, align 4, !tbaa !3
  %arrayidx2.i = getelementptr inbounds [3 x float]* %46, i64 %indvars.iv, i64 1
  %53 = load float* %arrayidx2.i, align 4, !tbaa !3
  %arrayidx3.i = getelementptr inbounds [3 x float]* %47, i64 %indvars.iv, i64 1
  store float %53, float* %arrayidx3.i, align 4, !tbaa !3
  %arrayidx4.i = getelementptr inbounds [3 x float]* %46, i64 %indvars.iv, i64 2
  %54 = load float* %arrayidx4.i, align 4, !tbaa !3
  %arrayidx5.i = getelementptr inbounds [3 x float]* %47, i64 %indvars.iv, i64 2
  store float %54, float* %arrayidx5.i, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv387 = trunc i64 %indvars.iv.next to i32
  %exitcond388 = icmp eq i32 %lftr.wideiv387, 27
  br i1 %exitcond388, label %if.end148, label %for.body134

if.else145:                                       ; preds = %if.end112
  br i1 %cmp3.i, label %for.body.i339, label %clear_rvecs.exit340

for.body.i339:                                    ; preds = %if.else145, %for.body.i339
  %indvars.iv.i332 = phi i64 [ %indvars.iv.next.i336, %for.body.i339 ], [ 0, %if.else145 ]
  %arraydecay.i333 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv.i332, i64 0
  store float 0.000000e+00, float* %arraydecay.i333, align 4, !tbaa !3
  %arrayidx1.i.i334 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv.i332, i64 1
  store float 0.000000e+00, float* %arrayidx1.i.i334, align 4, !tbaa !3
  %arrayidx2.i.i335 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv.i332, i64 2
  store float 0.000000e+00, float* %arrayidx2.i.i335, align 4, !tbaa !3
  %indvars.iv.next.i336 = add i64 %indvars.iv.i332, 1
  %lftr.wideiv385 = trunc i64 %indvars.iv.next.i336 to i32
  %exitcond386 = icmp eq i32 %lftr.wideiv385, %44
  br i1 %exitcond386, label %clear_rvecs.exit340, label %for.body.i339

clear_rvecs.exit340:                              ; preds = %for.body.i339, %if.else145
  %fshift147 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %55 = load [3 x float]** %fshift147, align 8, !tbaa !5
  br label %for.body.i331

for.body.i331:                                    ; preds = %for.body.i331, %clear_rvecs.exit340
  %indvars.iv.i327 = phi i64 [ %indvars.iv.next.i328, %for.body.i331 ], [ 0, %clear_rvecs.exit340 ]
  %arraydecay.i = getelementptr inbounds [3 x float]* %55, i64 %indvars.iv.i327, i64 0
  store float 0.000000e+00, float* %arraydecay.i, align 4, !tbaa !3
  %arrayidx1.i.i = getelementptr inbounds [3 x float]* %55, i64 %indvars.iv.i327, i64 1
  store float 0.000000e+00, float* %arrayidx1.i.i, align 4, !tbaa !3
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %55, i64 %indvars.iv.i327, i64 2
  store float 0.000000e+00, float* %arrayidx2.i.i, align 4, !tbaa !3
  %indvars.iv.next.i328 = add i64 %indvars.iv.i327, 1
  %lftr.wideiv383 = trunc i64 %indvars.iv.next.i328 to i32
  %exitcond384 = icmp eq i32 %lftr.wideiv383, 27
  br i1 %exitcond384, label %if.end148, label %for.body.i331

if.end148:                                        ; preds = %for.body134, %for.body.i331
  %idef = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1
  %nr = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 1, i32 0
  %56 = load i32* %nr, align 4, !tbaa !0
  %excl = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 9
  tail call void @force(%struct._IO_FILE* %log, i32 %step, %struct.t_forcerec* %fr, %struct.t_inputrec* %ir79, %struct.t_idef* %idef, %struct.t_nsborder* %nsb, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_nrnb* %nrnb, %struct.t_groups* %grps, %struct.t_mdatoms* %mdatoms, i32 %56, %struct.t_grpopts* %opts, [3 x float]* %x, [3 x float]* %f, float* %ener, %struct.t_fcdata* %fcd, i32 %bVerbose, [3 x float]* %arraydecay, float %lambda, %struct.t_graph* %graph, %struct.t_block* %excl, i32 %bNBFonly, [3 x float]* %pme_vir, float* %mu_tot, float %25, i32 %bGatherOnly) #6
  %57 = load float* @do_force.dvdl_lr, align 4, !tbaa !3
  %58 = load float* %arrayidx25.i, align 4, !tbaa !3
  %add158 = fadd float %57, %58
  store float %add158, float* %arrayidx25.i, align 4, !tbaa !3
  %59 = bitcast [3 x float]* %vir_part to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %59, i8 0, i64 36, i32 4, i1 false) #1
  %shift_vec159 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 48
  %60 = load [3 x float]** %shift_vec159, align 8, !tbaa !5
  %fshift160 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %61 = load [3 x float]** %fshift160, align 8, !tbaa !5
  tail call void @calc_vir(%struct._IO_FILE* %log, i32 27, [3 x float]* %60, [3 x float]* %61, [3 x float]* %vir_part) #6
  %arrayidx162 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 107
  %62 = load double* %arrayidx162, align 8, !tbaa !6
  %add163 = fadd double %62, 2.700000e+01
  store double %add163, double* %arrayidx162, align 8, !tbaa !6
  %63 = load %struct._IO_FILE** @debug, align 8, !tbaa !5
  %tobool164 = icmp eq %struct._IO_FILE* %63, null
  br i1 %tobool164, label %if.end166, label %if.then165

if.then165:                                       ; preds = %if.end148
  tail call void @pr_rvecs(%struct._IO_FILE* %63, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str6, i64 0, i64 0), [3 x float]* %vir_part, i32 3) #6
  br label %if.end166

if.end166:                                        ; preds = %if.end148, %if.then165
  %64 = load float** %chargeT, align 8, !tbaa !5
  %add.i = add nsw i32 %2, %1
  %cmp61.i = icmp sgt i32 %2, 0
  %65 = sext i32 %1 to i64
  br label %for.body.i322

for.body.i322:                                    ; preds = %for.inc17.i, %if.end166
  %indvars.iv4.i = phi i64 [ 0, %if.end166 ], [ %indvars.iv.next5.i, %for.inc17.i ]
  %n.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 81, i64 %indvars.iv4.i, i32 0
  %66 = load i32* %n.i, align 4, !tbaa !0
  %tobool.i321 = icmp eq i32 %66, 0
  br i1 %tobool.i321, label %for.inc17.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i322
  %a.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 81, i64 %indvars.iv4.i, i32 1
  %67 = load float** %a.i, align 8, !tbaa !5
  %68 = load float* %67, align 4, !tbaa !3
  %conv.i = fpext float %68 to double
  %mul.i = fmul double %conv.i, 0x40581F0F4D6F1034
  %conv4.i = fptrunc double %mul.i to float
  br i1 %cmp61.i, label %for.body8.i, label %for.inc17.i

for.body8.i:                                      ; preds = %if.then.i, %for.body8.i
  %indvars.iv.i323 = phi i64 [ %indvars.iv.next.i324, %for.body8.i ], [ %65, %if.then.i ]
  %arrayidx10.i = getelementptr inbounds float* %64, i64 %indvars.iv.i323
  %69 = load float* %arrayidx10.i, align 4, !tbaa !3
  %mul11.i = fmul float %conv4.i, %69
  %arrayidx15.i = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv.i323, i64 %indvars.iv4.i
  %70 = load float* %arrayidx15.i, align 4, !tbaa !3
  %add16.i = fadd float %70, %mul11.i
  store float %add16.i, float* %arrayidx15.i, align 4, !tbaa !3
  %indvars.iv.next.i324 = add i64 %indvars.iv.i323, 1
  %71 = trunc i64 %indvars.iv.next.i324 to i32
  %cmp6.i = icmp slt i32 %71, %add.i
  br i1 %cmp6.i, label %for.body8.i, label %for.inc17.i

for.inc17.i:                                      ; preds = %for.body8.i, %if.then.i, %for.body.i322
  %indvars.iv.next5.i = add i64 %indvars.iv4.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next5.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %calc_f_el.exit, label %for.body.i322

calc_f_el.exit:                                   ; preds = %for.inc17.i
  %72 = load i32* %nnodes64, align 4, !tbaa !0
  %cmp171 = icmp sgt i32 %72, 1
  br i1 %cmp171, label %if.then177, label %lor.lhs.false173

lor.lhs.false173:                                 ; preds = %calc_f_el.exit
  %nthreads174 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %73 = load i32* %nthreads174, align 4, !tbaa !0
  %cmp175 = icmp sgt i32 %73, 1
  br i1 %cmp175, label %if.then177, label %if.end180

if.then177:                                       ; preds = %lor.lhs.false173, %calc_f_el.exit
  %left178 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %74 = load i32* %left178, align 4, !tbaa !0
  %right179 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %75 = load i32* %right179, align 4, !tbaa !0
  tail call void @move_f(%struct._IO_FILE* %log, i32 %74, i32 %75, [3 x float]* %f, [3 x float]* %buf, %struct.t_nsborder* %nsb, %struct.t_nrnb* %nrnb) #6
  br label %if.end180

if.end180:                                        ; preds = %if.then177, %lor.lhs.false173
  ret void
}

; Function Attrs: optsize
declare void @update_forcerec(%struct._IO_FILE*, %struct.t_forcerec*, [3 x float]*) #4

; Function Attrs: optsize
declare void @calc_mu_and_q(%struct.t_nsborder*, [3 x float]*, float*, float*, float*) #4

; Function Attrs: optsize
declare void @calc_shifts([3 x float]*, float*, [3 x float]*) #4

; Function Attrs: optsize
declare void @put_charge_groups_in_box(%struct._IO_FILE*, i32, i32, [3 x float]*, float*, %struct.t_block*, [3 x float]*, [3 x float]*) #4

; Function Attrs: optsize
declare void @unshift_self(%struct.t_graph*, [3 x float]*, [3 x float]*) #4

; Function Attrs: optsize
declare void @calc_cgcm(%struct._IO_FILE*, i32, i32, %struct.t_block*, [3 x float]*, [3 x float]*) #4

; Function Attrs: optsize
declare void @move_cgcm(%struct._IO_FILE*, %struct.t_commrec*, [3 x float]*, i32*) #4

; Function Attrs: optsize
declare void @pr_rvecs(%struct._IO_FILE*, i32, i8*, [3 x float]*, i32) #4

; Function Attrs: optsize
declare void @move_x(%struct._IO_FILE*, i32, i32, [3 x float]*, %struct.t_nsborder*, %struct.t_nrnb*) #4

; Function Attrs: optsize
declare void @gmx_sumf(i32, float*, %struct.t_commrec*) #4

; Function Attrs: optsize
declare void @mk_mshift(%struct._IO_FILE*, %struct.t_graph*, [3 x float]*, [3 x float]*) #4

; Function Attrs: optsize
declare void @ns(%struct._IO_FILE*, %struct.t_forcerec*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_groups*, %struct.t_grpopts*, %struct.t_topology*, %struct.t_mdatoms*, %struct.t_commrec*, %struct.t_nrnb*, %struct.t_nsborder*, i32, float, float*) #4

; Function Attrs: optsize
declare void @force(%struct._IO_FILE*, i32, %struct.t_forcerec*, %struct.t_inputrec*, %struct.t_idef*, %struct.t_nsborder*, %struct.t_commrec*, %struct.t_commrec*, %struct.t_nrnb*, %struct.t_groups*, %struct.t_mdatoms*, i32, %struct.t_grpopts*, [3 x float]*, [3 x float]*, float*, %struct.t_fcdata*, i32, [3 x float]*, float, %struct.t_graph*, %struct.t_block*, i32, [3 x float]*, float*, float, i32) #4

; Function Attrs: optsize
declare void @calc_vir(%struct._IO_FILE*, i32, [3 x float]*, [3 x float]*, [3 x float]*) #4

; Function Attrs: optsize
declare void @move_f(%struct._IO_FILE*, i32, i32, [3 x float]*, [3 x float]*, %struct.t_nsborder*, %struct.t_nrnb*) #4

; Function Attrs: nounwind optsize uwtable
define void @sum_lrforces([3 x float]* %f, %struct.t_forcerec* nocapture %fr, i32 %start, i32 %homenr) #0 {
entry:
  %eeltype = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 33
  %0 = load i32* %eeltype, align 4, !tbaa !0
  %.off = add i32 %0, -3
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %add = add nsw i32 %homenr, %start
  %f_pme = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55
  %1 = load [3 x float]** %f_pme, align 8, !tbaa !5
  %2 = load %struct._IO_FILE** @debug, align 8, !tbaa !5
  %tobool.i = icmp eq %struct._IO_FILE* %2, null
  br i1 %tobool.i, label %for.cond.preheader.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %idx.ext.i = sext i32 %start to i64
  %add.ptr.i = getelementptr inbounds [3 x float]* %f, i64 %idx.ext.i
  tail call void @pr_rvecs(%struct._IO_FILE* %2, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str20, i64 0, i64 0), [3 x float]* %add.ptr.i, i32 %homenr) #6
  %3 = load %struct._IO_FILE** @debug, align 8, !tbaa !5
  %add.ptr2.i = getelementptr inbounds [3 x float]* %1, i64 %idx.ext.i
  tail call void @pr_rvecs(%struct._IO_FILE* %3, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0), [3 x float]* %add.ptr2.i, i32 %homenr) #6
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then.i, %if.then
  %cmp18.i = icmp sgt i32 %homenr, 0
  br i1 %cmp18.i, label %for.body.lr.ph.i, label %if.end

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %4 = sext i32 %start to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ %4, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  %arraydecay.i = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv.i, i64 0
  %arraydecay6.i = getelementptr inbounds [3 x float]* %1, i64 %indvars.iv.i, i64 0
  %5 = load float* %arraydecay.i, align 4, !tbaa !3
  %6 = load float* %arraydecay6.i, align 4, !tbaa !3
  %add.i.i = fadd float %5, %6
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv.i, i64 1
  %7 = load float* %arrayidx2.i.i, align 4, !tbaa !3
  %arrayidx3.i.i = getelementptr inbounds [3 x float]* %1, i64 %indvars.iv.i, i64 1
  %8 = load float* %arrayidx3.i.i, align 4, !tbaa !3
  %add4.i.i = fadd float %7, %8
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv.i, i64 2
  %9 = load float* %arrayidx5.i.i, align 4, !tbaa !3
  %arrayidx6.i.i = getelementptr inbounds [3 x float]* %1, i64 %indvars.iv.i, i64 2
  %10 = load float* %arrayidx6.i.i, align 4, !tbaa !3
  %add7.i.i = fadd float %9, %10
  store float %add.i.i, float* %arraydecay.i, align 4, !tbaa !3
  store float %add4.i.i, float* %arrayidx2.i.i, align 4, !tbaa !3
  store float %add7.i.i, float* %arrayidx5.i.i, align 4, !tbaa !3
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %11 = trunc i64 %indvars.iv.next.i to i32
  %cmp.i = icmp slt i32 %11, %add
  br i1 %cmp.i, label %for.body.i, label %if.end

if.end:                                           ; preds = %for.body.i, %for.cond.preheader.i, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @calc_virial(%struct._IO_FILE* %log, i32 %start, i32 %homenr, [3 x float]* %x, [3 x float]* %f, [3 x float]* %vir_part, [3 x float]* %pme_vir, %struct.t_graph* %graph, [3 x float]* %box, %struct.t_nrnb* nocapture %nrnb, %struct.t_forcerec* nocapture %fr, i32 %bTweak) #0 {
entry:
  %virtest = alloca [3 x [3 x float]], align 16
  %0 = bitcast [3 x [3 x float]]* %virtest to i8*
  call void @llvm.lifetime.start(i64 36, i8* %0) #1
  %add = add nsw i32 %homenr, %start
  call void @f_calc_vir(%struct._IO_FILE* %log, i32 %start, i32 %add, [3 x float]* %x, [3 x float]* %f, [3 x float]* %vir_part, %struct.t_graph* %graph, [3 x float]* %box) #6
  %conv = sitofp i32 %homenr to double
  %arrayidx = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 107
  %1 = load double* %arrayidx, align 8, !tbaa !6
  %add1 = fadd double %conv, %1
  store double %add1, double* %arrayidx, align 8, !tbaa !6
  %eeltype = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 33
  %2 = load i32* %eeltype, align 4, !tbaa !0
  %.off = add i32 %2, -3
  %switch = icmp ugt i32 %.off, 3
  %cmp15 = icmp eq i32 %2, 5
  %or.cond71 = or i1 %switch, %cmp15
  br i1 %or.cond71, label %if.end43, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE** @debug, align 8, !tbaa !5
  %tobool = icmp eq %struct._IO_FILE* %3, null
  %tobool18 = icmp eq i32 %bTweak, 0
  %or.cond = or i1 %tobool, %tobool18
  br i1 %or.cond, label %if.end, label %if.then19

if.then19:                                        ; preds = %if.then
  %arraydecay = getelementptr inbounds [3 x [3 x float]]* %virtest, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 36, i32 16, i1 false) #1
  %f_pme = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55
  %4 = load [3 x float]** %f_pme, align 8, !tbaa !5
  call void @f_calc_vir(%struct._IO_FILE* %log, i32 %start, i32 %add, [3 x float]* %x, [3 x float]* %4, [3 x float]* %arraydecay, %struct.t_graph* %graph, [3 x float]* %box) #6
  %5 = load %struct._IO_FILE** @debug, align 8, !tbaa !5
  call void @pr_rvecs(%struct._IO_FILE* %5, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str7, i64 0, i64 0), [3 x float]* %arraydecay, i32 3) #6
  %6 = load %struct._IO_FILE** @debug, align 8, !tbaa !5
  call void @pr_rvecs(%struct._IO_FILE* %6, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0), [3 x float]* %pme_vir, i32 3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then19
  br i1 %tobool18, label %for.cond27.preheader, label %if.end43

for.cond27.preheader:                             ; preds = %if.end, %for.inc39
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %for.inc39 ], [ 0, %if.end ]
  br label %for.body30

for.body30:                                       ; preds = %for.body30, %for.cond27.preheader
  %indvars.iv = phi i64 [ 0, %for.cond27.preheader ], [ %indvars.iv.next, %for.body30 ]
  %arrayidx33 = getelementptr inbounds [3 x float]* %pme_vir, i64 %indvars.iv74, i64 %indvars.iv
  %7 = load float* %arrayidx33, align 4, !tbaa !3
  %arrayidx37 = getelementptr inbounds [3 x float]* %vir_part, i64 %indvars.iv74, i64 %indvars.iv
  %8 = load float* %arrayidx37, align 4, !tbaa !3
  %add38 = fadd float %7, %8
  store float %add38, float* %arrayidx37, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc39, label %for.body30

for.inc39:                                        ; preds = %for.body30
  %indvars.iv.next75 = add i64 %indvars.iv74, 1
  %lftr.wideiv76 = trunc i64 %indvars.iv.next75 to i32
  %exitcond77 = icmp eq i32 %lftr.wideiv76, 3
  br i1 %exitcond77, label %if.end43, label %for.cond27.preheader

if.end43:                                         ; preds = %for.inc39, %if.end, %entry
  %9 = load %struct._IO_FILE** @debug, align 8, !tbaa !5
  %tobool44 = icmp eq %struct._IO_FILE* %9, null
  br i1 %tobool44, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.end43
  call void @pr_rvecs(%struct._IO_FILE* %9, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str9, i64 0, i64 0), [3 x float]* %vir_part, i32 3) #6
  br label %if.end46

if.end46:                                         ; preds = %if.end43, %if.then45
  call void @llvm.lifetime.end(i64 36, i8* %0) #1
  ret void
}

; Function Attrs: optsize
declare void @f_calc_vir(%struct._IO_FILE*, i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_graph*, [3 x float]*) #4

; Function Attrs: nounwind optsize uwtable
define void @start_time() #0 {
entry:
  %call = tail call i64 @clock() #6
  store i64 %call, i64* @cprev, align 8, !tbaa !4
  store double 0.000000e+00, double* @runtime, align 8, !tbaa !6
  ret void
}

; Function Attrs: nounwind optsize
declare i64 @clock() #2

; Function Attrs: nounwind optsize uwtable
define void @update_time() #0 {
entry:
  %call = tail call i64 @clock() #6
  %0 = load i64* @cprev, align 8, !tbaa !4
  %sub = sub nsw i64 %call, %0
  %conv = sitofp i64 %sub to double
  %div = fdiv double %conv, 1.000000e+06
  %1 = load double* @runtime, align 8, !tbaa !6
  %add = fadd double %div, %1
  store double %add, double* @runtime, align 8, !tbaa !6
  store i64 %call, i64* @cprev, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize readonly uwtable
define double @node_time() #5 {
entry:
  %0 = load double* @runtime, align 8, !tbaa !6
  ret double %0
}

; Function Attrs: nounwind optsize uwtable
define void @do_shakefirst(%struct._IO_FILE* %log, i32 %bTYZ, float %lambda, float* %ener, %struct.t_parm* %parm, %struct.t_nsborder* nocapture %nsb, %struct.t_mdatoms* %md, [3 x float]* %x, [3 x float]* %vold, [3 x float]* %buf, [3 x float]* %f, [3 x float]* nocapture %v, %struct.t_graph* %graph, %struct.t_commrec* %cr, %struct.t_nrnb* %nrnb, %struct.t_groups* %grps, %struct.t_forcerec* nocapture %fr, %struct.t_topology* %top, %struct.t_edsamyn* %edyn, %struct.t_pull* %pulldata) #0 {
entry:
  %shake_vir = alloca [3 x [3 x float]], align 16
  %vcm = alloca [4 x double], align 16
  %vcm278 = bitcast [4 x double]* %vcm to i8*
  %0 = bitcast [3 x [3 x float]]* %shake_vir to i8*
  call void @llvm.lifetime.start(i64 36, i8* %0) #1
  %delta_t = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15
  %1 = load float* %delta_t, align 4, !tbaa !3
  %call = call i32 @count_constraints(%struct.t_topology* %top, %struct.t_commrec* %cr) #6
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end155, label %if.then

if.then:                                          ; preds = %entry
  %nodeid = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %2 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom
  %3 = load i32* %arrayidx, align 4, !tbaa !0
  %arrayidx4 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom
  %4 = load i32* %arrayidx4, align 4, !tbaa !0
  %add = add nsw i32 %4, %3
  %5 = load %struct._IO_FILE** @debug, align 8, !tbaa !5
  %tobool5 = icmp eq %struct._IO_FILE* %5, null
  br i1 %tobool5, label %if.end, label %if.then6

if.then6:                                         ; preds = %if.then
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([34 x i8]* @.str10, i64 0, i64 0), i32 %3, i32 %4, i32 %add) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then6
  %tobool8 = icmp ne %struct._IO_FILE* %log, null
  br i1 %tobool8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([50 x i8]* @.str11, i64 0, i64 0), i32 -2) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end
  %arraydecay = getelementptr inbounds [3 x [3 x float]]* %shake_vir, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 36, i32 16, i1 false) #1
  %natoms = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  %6 = load i32* %natoms, align 4, !tbaa !0
  %arrayidx12 = getelementptr inbounds float* %ener, i64 42
  call void @update(i32 %6, i32 %3, i32 %4, i32 -2, float %lambda, float* %arrayidx12, %struct.t_parm* %parm, float 1.000000e+00, %struct.t_mdatoms* %md, [3 x float]* %x, %struct.t_graph* %graph, [3 x float]* null, [3 x float]* null, [3 x float]* %vold, [3 x float]* null, [3 x float]* %x, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %arraydecay, %struct.t_commrec* %cr, %struct.t_nrnb* %nrnb, i32 %bTYZ, i32 0, %struct.t_edsamyn* %edyn, %struct.t_pull* %pulldata, i32 0) #6
  %cmp260 = icmp sgt i32 %4, 0
  br i1 %cmp260, label %for.cond14.preheader.lr.ph, label %for.end39

for.cond14.preheader.lr.ph:                       ; preds = %if.end11
  %7 = sext i32 %3 to i64
  br label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond14.preheader.lr.ph, %for.inc37
  %indvars.iv284 = phi i64 [ %7, %for.cond14.preheader.lr.ph ], [ %indvars.iv.next285, %for.inc37 ]
  br label %for.body16

for.body16:                                       ; preds = %for.body16, %for.cond14.preheader
  %indvars.iv279 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next280, %for.body16 ]
  %arrayidx20 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv284, i64 %indvars.iv279
  %8 = load float* %arrayidx20, align 4, !tbaa !3
  %arrayidx24 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv284, i64 %indvars.iv279
  store float %8, float* %arrayidx24, align 4, !tbaa !3
  %9 = load float* %arrayidx20, align 4, !tbaa !3
  %arrayidx32 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv284, i64 %indvars.iv279
  %10 = load float* %arrayidx32, align 4, !tbaa !3
  %mul = fmul float %1, %10
  %sub = fsub float %9, %mul
  %arrayidx36 = getelementptr inbounds [3 x float]* %buf, i64 %indvars.iv284, i64 %indvars.iv279
  store float %sub, float* %arrayidx36, align 4, !tbaa !3
  %indvars.iv.next280 = add i64 %indvars.iv279, 1
  %lftr.wideiv281 = trunc i64 %indvars.iv.next280 to i32
  %exitcond282 = icmp eq i32 %lftr.wideiv281, 3
  br i1 %exitcond282, label %for.inc37, label %for.body16

for.inc37:                                        ; preds = %for.body16
  %indvars.iv.next285 = add i64 %indvars.iv284, 1
  %11 = trunc i64 %indvars.iv.next285 to i32
  %cmp = icmp slt i32 %11, %add
  br i1 %cmp, label %for.cond14.preheader, label %for.end39

for.end39:                                        ; preds = %for.inc37, %if.end11
  br i1 %tobool8, label %if.then41, label %if.end43

if.then41:                                        ; preds = %for.end39
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([50 x i8]* @.str12, i64 0, i64 0), i32 -1) #6
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %for.end39
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 36, i32 16, i1 false) #1
  %12 = load i32* %natoms, align 4, !tbaa !0
  call void @update(i32 %12, i32 %3, i32 %4, i32 -1, float %lambda, float* %arrayidx12, %struct.t_parm* %parm, float 1.000000e+00, %struct.t_mdatoms* %md, [3 x float]* %f, %struct.t_graph* %graph, [3 x float]* null, [3 x float]* null, [3 x float]* %vold, [3 x float]* null, [3 x float]* %buf, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %arraydecay, %struct.t_commrec* %cr, %struct.t_nrnb* %nrnb, i32 %bTYZ, i32 0, %struct.t_edsamyn* %edyn, %struct.t_pull* %pulldata, i32 0) #6
  call void @llvm.memset.p0i8.i64(i8* %vcm278, i8 0, i64 32, i32 16, i1 false)
  %conv56 = fdiv float 1.000000e+00, %1
  br i1 %cmp260, label %for.body60.lr.ph, label %for.end98

for.body60.lr.ph:                                 ; preds = %if.end43
  %massA = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 2
  %13 = load float** %massA, align 8, !tbaa !5
  %arrayidx94 = getelementptr inbounds [4 x double]* %vcm, i64 0, i64 3
  %14 = sext i32 %3 to i64
  br label %for.body60

for.body60:                                       ; preds = %for.body60.lr.ph, %for.end93
  %indvars.iv272 = phi i64 [ %14, %for.body60.lr.ph ], [ %indvars.iv.next273, %for.end93 ]
  %arrayidx62 = getelementptr inbounds float* %13, i64 %indvars.iv272
  %15 = load float* %arrayidx62, align 4, !tbaa !3
  %conv63 = fpext float %15 to double
  br label %for.body67

for.body67:                                       ; preds = %for.body67, %for.body60
  %indvars.iv268 = phi i64 [ 0, %for.body60 ], [ %indvars.iv.next269, %for.body67 ]
  %arrayidx71 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv272, i64 %indvars.iv268
  %16 = load float* %arrayidx71, align 4, !tbaa !3
  %arrayidx75 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv272, i64 %indvars.iv268
  %17 = load float* %arrayidx75, align 4, !tbaa !3
  %sub76 = fsub float %16, %17
  %mul77 = fmul float %conv56, %sub76
  %arrayidx81 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv272, i64 %indvars.iv268
  store float %mul77, float* %arrayidx81, align 4, !tbaa !3
  %conv86 = fpext float %mul77 to double
  %mul87 = fmul double %conv63, %conv86
  %arrayidx89 = getelementptr inbounds [4 x double]* %vcm, i64 0, i64 %indvars.iv268
  %18 = load double* %arrayidx89, align 8, !tbaa !6
  %add90 = fadd double %18, %mul87
  store double %add90, double* %arrayidx89, align 8, !tbaa !6
  %indvars.iv.next269 = add i64 %indvars.iv268, 1
  %lftr.wideiv270 = trunc i64 %indvars.iv.next269 to i32
  %exitcond271 = icmp eq i32 %lftr.wideiv270, 3
  br i1 %exitcond271, label %for.end93, label %for.body67

for.end93:                                        ; preds = %for.body67
  %19 = load double* %arrayidx94, align 8, !tbaa !6
  %add95 = fadd double %conv63, %19
  store double %add95, double* %arrayidx94, align 8, !tbaa !6
  %indvars.iv.next273 = add i64 %indvars.iv272, 1
  %20 = trunc i64 %indvars.iv.next273 to i32
  %cmp58 = icmp slt i32 %20, %add
  br i1 %cmp58, label %for.body60, label %for.end98

for.end98:                                        ; preds = %for.end93, %if.end43
  %21 = phi double [ 0.000000e+00, %if.end43 ], [ %add95, %for.end93 ]
  %22 = load %struct._IO_FILE** @debug, align 8, !tbaa !5
  %tobool99 = icmp eq %struct._IO_FILE* %22, null
  br i1 %tobool99, label %if.end106, label %if.then100

if.then100:                                       ; preds = %for.end98
  %arrayidx101 = getelementptr inbounds [4 x double]* %vcm, i64 0, i64 0
  %23 = load double* %arrayidx101, align 16, !tbaa !6
  %arrayidx102 = getelementptr inbounds [4 x double]* %vcm, i64 0, i64 1
  %24 = load double* %arrayidx102, align 8, !tbaa !6
  %arrayidx103 = getelementptr inbounds [4 x double]* %vcm, i64 0, i64 2
  %25 = load double* %arrayidx103, align 16, !tbaa !6
  %call105 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([47 x i8]* @.str13, i64 0, i64 0), double %23, double %24, double %25, double %21) #6
  br label %if.end106

if.end106:                                        ; preds = %for.end98, %if.then100
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %26 = load i32* %nnodes, align 4, !tbaa !0
  %cmp107 = icmp sgt i32 %26, 1
  br i1 %cmp107, label %if.then111, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end106
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %27 = load i32* %nthreads, align 4, !tbaa !0
  %cmp109 = icmp sgt i32 %27, 1
  br i1 %cmp109, label %if.then111, label %if.end113

if.then111:                                       ; preds = %lor.lhs.false, %if.end106
  %arraydecay112 = getelementptr inbounds [4 x double]* %vcm, i64 0, i64 0
  call void @gmx_sumd(i32 4, double* %arraydecay112, %struct.t_commrec* %cr) #6
  br label %if.end113

if.end113:                                        ; preds = %lor.lhs.false, %if.then111
  %arrayidx114 = getelementptr inbounds [4 x double]* %vcm, i64 0, i64 3
  %28 = load double* %arrayidx114, align 8, !tbaa !6
  br label %for.body118

for.body118:                                      ; preds = %for.body118, %if.end113
  %indvars.iv264 = phi i64 [ 0, %if.end113 ], [ %indvars.iv.next265, %for.body118 ]
  %arrayidx120 = getelementptr inbounds [4 x double]* %vcm, i64 0, i64 %indvars.iv264
  %29 = load double* %arrayidx120, align 8, !tbaa !6
  %div121 = fdiv double %29, %28
  store double %div121, double* %arrayidx120, align 8, !tbaa !6
  %indvars.iv.next265 = add i64 %indvars.iv264, 1
  %lftr.wideiv266 = trunc i64 %indvars.iv.next265 to i32
  %exitcond267 = icmp eq i32 %lftr.wideiv266, 3
  br i1 %exitcond267, label %for.end124, label %for.body118

for.end124:                                       ; preds = %for.body118
  %30 = load %struct._IO_FILE** @debug, align 8, !tbaa !5
  %tobool125 = icmp eq %struct._IO_FILE* %30, null
  br i1 %tobool125, label %for.cond132.preheader, label %if.then126

if.then126:                                       ; preds = %for.end124
  %arrayidx127 = getelementptr inbounds [4 x double]* %vcm, i64 0, i64 0
  %31 = load double* %arrayidx127, align 16, !tbaa !6
  %arrayidx128 = getelementptr inbounds [4 x double]* %vcm, i64 0, i64 1
  %32 = load double* %arrayidx128, align 8, !tbaa !6
  %arrayidx129 = getelementptr inbounds [4 x double]* %vcm, i64 0, i64 2
  %33 = load double* %arrayidx129, align 16, !tbaa !6
  %call130 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([47 x i8]* @.str13, i64 0, i64 0), double %31, double %32, double %33, double %28) #6
  br label %for.cond132.preheader

for.cond132.preheader:                            ; preds = %for.end124, %if.then126
  br i1 %cmp260, label %for.cond136.preheader.lr.ph, label %if.end155

for.cond136.preheader.lr.ph:                      ; preds = %for.cond132.preheader
  %34 = sext i32 %3 to i64
  br label %for.cond136.preheader

for.cond136.preheader:                            ; preds = %for.cond136.preheader.lr.ph, %for.inc152
  %indvars.iv262 = phi i64 [ %34, %for.cond136.preheader.lr.ph ], [ %indvars.iv.next263, %for.inc152 ]
  br label %for.body139

for.body139:                                      ; preds = %for.body139, %for.cond136.preheader
  %indvars.iv = phi i64 [ 0, %for.cond136.preheader ], [ %indvars.iv.next, %for.body139 ]
  %arrayidx141 = getelementptr inbounds [4 x double]* %vcm, i64 0, i64 %indvars.iv
  %35 = load double* %arrayidx141, align 8, !tbaa !6
  %arrayidx145 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv262, i64 %indvars.iv
  %36 = load float* %arrayidx145, align 4, !tbaa !3
  %conv146 = fpext float %36 to double
  %sub147 = fsub double %conv146, %35
  %conv148 = fptrunc double %sub147 to float
  store float %conv148, float* %arrayidx145, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc152, label %for.body139

for.inc152:                                       ; preds = %for.body139
  %indvars.iv.next263 = add i64 %indvars.iv262, 1
  %37 = trunc i64 %indvars.iv.next263 to i32
  %cmp133 = icmp slt i32 %37, %add
  br i1 %cmp133, label %for.cond136.preheader, label %if.end155

if.end155:                                        ; preds = %for.cond132.preheader, %for.inc152, %entry
  call void @llvm.lifetime.end(i64 36, i8* %0) #1
  ret void
}

; Function Attrs: optsize
declare i32 @count_constraints(%struct.t_topology*, %struct.t_commrec*) #4

; Function Attrs: optsize
declare void @update(i32, i32, i32, i32, float, float*, %struct.t_parm*, float, %struct.t_mdatoms*, [3 x float]*, %struct.t_graph*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_topology*, %struct.t_groups*, [3 x float]*, %struct.t_commrec*, %struct.t_nrnb*, i32, i32, %struct.t_edsamyn*, %struct.t_pull*, i32) #4

; Function Attrs: optsize
declare void @gmx_sumd(i32, double*, %struct.t_commrec*) #4

; Function Attrs: nounwind optsize uwtable
define void @calc_dispcorr(%struct._IO_FILE* %log, i32 %eDispCorr, %struct.t_forcerec* nocapture %fr, i32 %natoms, [3 x float]* nocapture %box, [3 x float]* nocapture %pres, [3 x float]* nocapture %virial, float* nocapture %ener) #0 {
entry:
  %arrayidx = getelementptr inbounds float* %ener, i64 16
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !3
  %arrayidx1.i = getelementptr inbounds [3 x float]* %pres, i64 0, i64 0
  %0 = load float* %arrayidx1.i, align 4, !tbaa !3
  %arrayidx3.i = getelementptr inbounds [3 x float]* %pres, i64 1, i64 1
  %1 = load float* %arrayidx3.i, align 4, !tbaa !3
  %add.i = fadd float %0, %1
  %arrayidx5.i = getelementptr inbounds [3 x float]* %pres, i64 2, i64 2
  %2 = load float* %arrayidx5.i, align 4, !tbaa !3
  %add6.i = fadd float %add.i, %2
  %conv1 = fdiv float %add6.i, 3.000000e+00
  %arrayidx2 = getelementptr inbounds float* %ener, i64 41
  store float %conv1, float* %arrayidx2, align 4, !tbaa !3
  %cmp = icmp eq i32 %eDispCorr, 0
  br i1 %cmp, label %if.end70, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx1.i107 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %3 = load float* %arrayidx1.i107, align 4, !tbaa !3
  %arrayidx3.i108 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %4 = load float* %arrayidx3.i108, align 4, !tbaa !3
  %arrayidx5.i109 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %5 = load float* %arrayidx5.i109, align 4, !tbaa !3
  %mul.i = fmul float %4, %5
  %arrayidx7.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %6 = load float* %arrayidx7.i, align 4, !tbaa !3
  %arrayidx9.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %7 = load float* %arrayidx9.i, align 4, !tbaa !3
  %mul10.i = fmul float %6, %7
  %sub.i = fsub float %mul.i, %mul10.i
  %mul11.i = fmul float %3, %sub.i
  %arrayidx13.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %8 = load float* %arrayidx13.i, align 4, !tbaa !3
  %arrayidx15.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %9 = load float* %arrayidx15.i, align 4, !tbaa !3
  %mul18.i = fmul float %5, %9
  %arrayidx22.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  %10 = load float* %arrayidx22.i, align 4, !tbaa !3
  %mul23.i = fmul float %6, %10
  %sub24.i = fsub float %mul18.i, %mul23.i
  %mul25.i = fmul float %8, %sub24.i
  %sub26.i = fsub float %mul11.i, %mul25.i
  %arrayidx28.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %11 = load float* %arrayidx28.i, align 4, !tbaa !3
  %mul33.i = fmul float %7, %9
  %mul38.i = fmul float %4, %10
  %sub39.i = fsub float %mul33.i, %mul38.i
  %mul40.i = fmul float %11, %sub39.i
  %add.i110 = fadd float %mul40.i, %sub26.i
  %rvdw = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 26
  %12 = load float* %rvdw, align 4, !tbaa !3
  %mul = fmul float %12, %12
  %mul7 = fmul float %12, %mul
  %conv8 = sitofp i32 %natoms to double
  %mul9 = fmul double %conv8, -2.000000e+00
  %mul11 = fmul double %conv8, %mul9
  %mul12 = fmul double %mul11, 0x400921FB54442D18
  %avcsix = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 11
  %13 = load float* %avcsix, align 4, !tbaa !3
  %conv13 = fpext float %13 to double
  %mul14 = fmul double %mul12, %conv13
  %conv15 = fpext float %add.i110 to double
  %mul16 = fmul double %conv15, 3.000000e+00
  %conv17 = fpext float %mul7 to double
  %mul18 = fmul double %conv17, %mul16
  %div19 = fdiv double %mul14, %mul18
  %conv20 = fptrunc double %div19 to float
  store float %conv20, float* %arrayidx, align 4, !tbaa !3
  %cmp22 = icmp eq i32 %eDispCorr, 1
  br i1 %cmp22, label %if.then24, label %if.end

if.then24:                                        ; preds = %if.then
  %conv26 = fpext float %conv20 to double
  %mul27 = fmul double %conv26, 2.000000e+00
  %mul28 = fmul double %mul27, 1.660540e+01
  %div30 = fdiv double %mul28, %conv15
  %conv31 = fptrunc double %div30 to float
  %conv35 = fmul float %conv20, -6.000000e+00
  %add = fadd float %conv1, %conv31
  store float %add, float* %arrayidx2, align 4, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body, %if.then24
  %indvars.iv = phi i64 [ 0, %if.then24 ], [ %indvars.iv.next, %for.body ]
  %arrayidx41 = getelementptr inbounds [3 x float]* %pres, i64 %indvars.iv, i64 %indvars.iv
  %14 = load float* %arrayidx41, align 4, !tbaa !3
  %add42 = fadd float %conv31, %14
  store float %add42, float* %arrayidx41, align 4, !tbaa !3
  %arrayidx46 = getelementptr inbounds [3 x float]* %virial, i64 %indvars.iv, i64 %indvars.iv
  %15 = load float* %arrayidx46, align 4, !tbaa !3
  %add47 = fadd float %conv35, %15
  store float %add47, float* %arrayidx46, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %if.end.loopexit, label %for.body

if.end.loopexit:                                  ; preds = %for.body
  %phitmp = fpext float %conv31 to double
  %phitmp112 = fpext float %conv35 to double
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit, %if.then
  %spres.0 = phi double [ 0.000000e+00, %if.then ], [ %phitmp, %if.end.loopexit ]
  %svir.0 = phi double [ 0.000000e+00, %if.then ], [ %phitmp112, %if.end.loopexit ]
  %.b = load i1* @calc_dispcorr.bFirst, align 1
  br i1 %.b, label %if.end70, label %if.then48

if.then48:                                        ; preds = %if.end
  store i1 true, i1* @calc_dispcorr.bFirst, align 1
  %tobool49 = icmp eq %struct._IO_FILE* %log, null
  br i1 %tobool49, label %if.end70, label %if.then50

if.then50:                                        ; preds = %if.then48
  %cmp51 = icmp eq i32 %eDispCorr, 2
  br i1 %cmp51, label %if.then53, label %if.else57

if.then53:                                        ; preds = %if.then50
  %16 = load float* %arrayidx, align 4, !tbaa !3
  %conv55 = fpext float %16 to double
  %call56 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([35 x i8]* @.str14, i64 0, i64 0), double %conv55) #6
  br label %if.end70

if.else57:                                        ; preds = %if.then50
  br i1 %cmp22, label %if.then60, label %if.end70

if.then60:                                        ; preds = %if.else57
  %17 = load float* %arrayidx, align 4, !tbaa !3
  %conv62 = fpext float %17 to double
  %call65 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([58 x i8]* @.str15, i64 0, i64 0), double %conv62, double %spres.0, double %svir.0) #6
  br label %if.end70

if.end70:                                         ; preds = %if.else57, %if.then48, %if.end, %entry, %if.then53, %if.then60
  %18 = load float* %arrayidx, align 4, !tbaa !3
  %arrayidx72 = getelementptr inbounds float* %ener, i64 37
  %19 = load float* %arrayidx72, align 4, !tbaa !3
  %add73 = fadd float %18, %19
  store float %add73, float* %arrayidx72, align 4, !tbaa !3
  %arrayidx75 = getelementptr inbounds float* %ener, i64 39
  %20 = load float* %arrayidx75, align 4, !tbaa !3
  %add76 = fadd float %18, %20
  store float %add76, float* %arrayidx75, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @do_pbc_first(%struct._IO_FILE* %log, %struct.t_parm* %parm, float* %box_size, %struct.t_forcerec* nocapture %fr, %struct.t_graph* %graph, [3 x float]* %x) #0 {
entry:
  %tobool = icmp eq %struct._IO_FILE* %log, null
  br i1 %tobool, label %if.end14.critedge, label %if.then

if.then:                                          ; preds = %entry
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([25 x i8]* @.str16, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %log)
  %arraydecay = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %shift_vec = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 48
  %1 = load [3 x float]** %shift_vec, align 8, !tbaa !5
  tail call void @calc_shifts([3 x float]* %arraydecay, float* %box_size, [3 x float]* %1) #6
  tail call void @mk_mshift(%struct._IO_FILE* %log, %struct.t_graph* %graph, [3 x float]* %arraydecay, [3 x float]* %x) #6
  tail call void @shift_self(%struct.t_graph* %graph, [3 x float]* %arraydecay, [3 x float]* %x) #6
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str18, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %log)
  br label %if.end14

if.end14.critedge:                                ; preds = %entry
  %arraydecay.c = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %shift_vec.c = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 48
  %3 = load [3 x float]** %shift_vec.c, align 8, !tbaa !5
  tail call void @calc_shifts([3 x float]* %arraydecay.c, float* %box_size, [3 x float]* %3) #6
  tail call void @mk_mshift(%struct._IO_FILE* null, %struct.t_graph* %graph, [3 x float]* %arraydecay.c, [3 x float]* %x) #6
  tail call void @shift_self(%struct.t_graph* %graph, [3 x float]* %arraydecay.c, [3 x float]* %x) #6
  br label %if.end14

if.end14:                                         ; preds = %if.end14.critedge, %if.then
  ret void
}

; Function Attrs: optsize
declare void @shift_self(%struct.t_graph*, [3 x float]*, [3 x float]*) #4

; Function Attrs: nounwind optsize uwtable
define void @set_pot_bools(%struct.t_inputrec* nocapture %ir, %struct.t_topology* nocapture %top, i32* nocapture %bLR, i32* nocapture %bLJLR, i32* nocapture %bBHAM, i32* nocapture %b14) #0 {
entry:
  %rcoulomb = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38
  %0 = load float* %rcoulomb, align 4, !tbaa !3
  %rlist = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 35
  %1 = load float* %rlist, align 4, !tbaa !3
  %cmp = fcmp ogt float %0, %1
  br i1 %cmp, label %lor.end10, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %coulombtype = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 36
  %2 = load i32* %coulombtype, align 4, !tbaa !0
  %switch.tableidx = add i32 %2, -3
  %3 = icmp ult i32 %switch.tableidx, 4
  br label %lor.end10

lor.end10:                                        ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %3, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  store i32 %lor.ext, i32* %bLR, align 4, !tbaa !0
  %rvdw = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 41
  %5 = load float* %rvdw, align 4, !tbaa !3
  %cmp12 = fcmp ogt float %5, %1
  %conv = zext i1 %cmp12 to i32
  store i32 %conv, i32* %bLJLR, align 4, !tbaa !0
  %functype = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 3
  %6 = load i32** %functype, align 8, !tbaa !5
  %7 = load i32* %6, align 4, !tbaa !0
  %cmp13 = icmp eq i32 %7, 14
  %conv14 = zext i1 %cmp13 to i32
  store i32 %conv14, i32* %bBHAM, align 4, !tbaa !0
  %nr = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 11, i32 0
  %8 = load i32* %nr, align 4, !tbaa !0
  %cmp17 = icmp sgt i32 %8, 0
  %conv18 = zext i1 %cmp17 to i32
  store i32 %conv18, i32* %b14, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @finish_run(%struct._IO_FILE* %log, %struct.t_commrec* nocapture %cr, i8* nocapture %confout, %struct.t_nsborder* nocapture %nsb, %struct.t_topology* nocapture %top, %struct.t_parm* nocapture %parm, %struct.t_nrnb* %nrnb, double %nodetime, double %realtime, i32 %step, i32 %bWriteStat) #0 {
entry:
  %ntot = alloca %struct.t_nrnb, align 8
  %0 = bitcast %struct.t_nrnb* %ntot to i8*
  call void @llvm.lifetime.start(i64 1032, i8* %0) #1
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 1032, i32 8, i1 false)
  %nnodes = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1
  %1 = load i32* %nnodes, align 4, !tbaa !0
  %cmp273 = icmp sgt i32 %1, 0
  br i1 %cmp273, label %for.cond4.preheader, label %for.end20

for.cond4.preheader:                              ; preds = %entry, %for.inc18
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %for.inc18 ], [ 0, %entry ]
  br label %for.body6

for.body6:                                        ; preds = %for.body6, %for.cond4.preheader
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.body6 ]
  %arrayidx11 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv76, i32 0, i64 %indvars.iv
  %2 = load double* %arrayidx11, align 8, !tbaa !6
  %arrayidx14 = getelementptr inbounds %struct.t_nrnb* %ntot, i64 0, i32 0, i64 %indvars.iv
  %3 = load double* %arrayidx14, align 8, !tbaa !6
  %add = fadd double %2, %3
  store double %add, double* %arrayidx14, align 8, !tbaa !6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 129
  br i1 %exitcond, label %for.inc18, label %for.body6

for.inc18:                                        ; preds = %for.body6
  %indvars.iv.next77 = add i64 %indvars.iv76, 1
  %4 = trunc i64 %indvars.iv.next77 to i32
  %cmp2 = icmp slt i32 %4, %1
  br i1 %cmp2, label %for.cond4.preheader, label %for.end20

for.end20:                                        ; preds = %for.inc18, %entry
  %tobool = icmp eq i32 %bWriteStat, 0
  br i1 %tobool, label %for.end20.if.end31_crit_edge, label %if.then

for.end20.if.end31_crit_edge:                     ; preds = %for.end20
  %nodeid32.pre = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  br label %if.end31

if.then:                                          ; preds = %for.end20
  %nsteps = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 1
  %5 = load i32* %nsteps, align 4, !tbaa !0
  %conv = sitofp i32 %5 to float
  %delta_t = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15
  %6 = load float* %delta_t, align 4, !tbaa !3
  %mul = fmul float %conv, %6
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %7 = load i32* %nodeid, align 4, !tbaa !0
  %cmp22 = icmp eq i32 %7, 0
  br i1 %cmp22, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %threadid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %8 = load i32* %threadid, align 4, !tbaa !0
  %cmp24 = icmp eq i32 %8, 0
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %land.lhs.true
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str19, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %9)
  %11 = load %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %12 = load i32* %nnodes, align 4, !tbaa !0
  call void @print_perf(%struct._IO_FILE* %11, double %nodetime, double %realtime, float %mul, %struct.t_nrnb* %ntot, i32 %12) #6
  br label %if.end31

if.else:                                          ; preds = %land.lhs.true, %if.then
  %nodeid28 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %13 = load i32* %nodeid28, align 4, !tbaa !0
  %idxprom29 = sext i32 %13 to i64
  %arrayidx30 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %idxprom29
  call void @print_nrnb(%struct._IO_FILE* %log, %struct.t_nrnb* %arrayidx30) #6
  br label %if.end31

if.end31:                                         ; preds = %for.end20.if.end31_crit_edge, %if.then26, %if.else
  %nodeid32.pre-phi = phi i32* [ %nodeid32.pre, %for.end20.if.end31_crit_edge ], [ %nodeid, %if.then26 ], [ %nodeid, %if.else ]
  %runtime.0 = phi float [ 0.000000e+00, %for.end20.if.end31_crit_edge ], [ %mul, %if.then26 ], [ %mul, %if.else ]
  %14 = load i32* %nodeid32.pre-phi, align 4, !tbaa !0
  %cmp33 = icmp eq i32 %14, 0
  br i1 %cmp33, label %land.lhs.true35, label %if.end47

land.lhs.true35:                                  ; preds = %if.end31
  %threadid36 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %15 = load i32* %threadid36, align 4, !tbaa !0
  %cmp37 = icmp eq i32 %15, 0
  br i1 %cmp37, label %if.then39, label %if.end47

if.then39:                                        ; preds = %land.lhs.true35
  %16 = load i32* %nnodes, align 4, !tbaa !0
  call void @print_perf(%struct._IO_FILE* %log, double %nodetime, double %realtime, float %runtime.0, %struct.t_nrnb* %ntot, i32 %16) #6
  %17 = load i32* %nnodes, align 4, !tbaa !0
  %cmp42 = icmp sgt i32 %17, 1
  br i1 %cmp42, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.then39
  call void @pr_load(%struct._IO_FILE* %log, i32 %17, %struct.t_nrnb* %nrnb) #6
  br label %if.end47

if.end47:                                         ; preds = %if.then39, %if.then44, %land.lhs.true35, %if.end31
  call void @llvm.lifetime.end(i64 1032, i8* %0) #1
  ret void
}

; Function Attrs: optsize
declare void @print_perf(%struct._IO_FILE*, double, double, float, %struct.t_nrnb*, i32) #4

; Function Attrs: optsize
declare void @print_nrnb(%struct._IO_FILE*, %struct.t_nrnb*) #4

; Function Attrs: optsize
declare void @pr_load(%struct._IO_FILE*, i32, %struct.t_nrnb*) #4

; Function Attrs: nounwind optsize uwtable
define void @init_md(%struct.t_commrec* %cr, %struct.t_inputrec* %ir, [3 x float]* nocapture %box, float* nocapture %t, float* nocapture %t0, float* nocapture %lambda, float* nocapture %lam0, float* nocapture %SAfactor, %struct.t_nrnb* %mynrnb, i32* nocapture %bTYZ, %struct.t_topology* %top, i32 %nfile, %struct.t_filenm* %fnm, i8** nocapture %traj, i8** nocapture %xtc_traj, i32* nocapture %fp_ene, %struct._IO_FILE** nocapture %fp_dgdl, %struct.t_mdebin** nocapture %mdebin, %struct.t_groups* %grps, [3 x float]* nocapture %force_vir, [3 x float]* nocapture %pme_vir, [3 x float]* nocapture %shake_vir, %struct.t_mdatoms* %mdatoms, float* nocapture %mu_tot, i32* nocapture %bNEMD, %struct.t_vcm** nocapture %vcm, %struct.t_nsborder* nocapture %nsb) #0 {
entry:
  %init_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 14
  %0 = load float* %init_t, align 4, !tbaa !3
  store float %0, float* %t0, align 4, !tbaa !3
  store float %0, float* %t, align 4, !tbaa !3
  %efep = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46
  %1 = load i32* %efep, align 4, !tbaa !0
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %init_lambda = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 47
  %2 = load float* %init_lambda, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %storemerge127 = phi float [ %2, %if.then ], [ 0.000000e+00, %entry ]
  store float %storemerge127, float* %lam0, align 4, !tbaa !3
  store float %storemerge127, float* %lambda, align 4, !tbaa !3
  %bSimAnn = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 33
  %3 = load i32* %bSimAnn, align 4, !tbaa !0
  %tobool = icmp eq i32 %3, 0
  br i1 %tobool, label %if.else7, label %if.then1

if.then1:                                         ; preds = %if.end
  %4 = load float* %t0, align 4, !tbaa !3
  %zero_temp_time = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 34
  %5 = load float* %zero_temp_time, align 4, !tbaa !3
  %div = fdiv float %4, %5
  %conv2 = fsub float 1.000000e+00, %div
  store float %conv2, float* %SAfactor, align 4, !tbaa !3
  %cmp3 = fcmp olt float %conv2, 0.000000e+00
  br i1 %cmp3, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.then1
  store float 0.000000e+00, float* %SAfactor, align 4, !tbaa !3
  br label %if.end8

if.else7:                                         ; preds = %if.end
  store float 1.000000e+00, float* %SAfactor, align 4, !tbaa !3
  br label %if.end8

if.end8:                                          ; preds = %if.then1, %if.then5, %if.else7
  tail call void @init_nrnb(%struct.t_nrnb* %mynrnb) #6
  store i32 0, i32* %bTYZ, align 4, !tbaa !0
  %rcoulomb.i = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38
  %6 = load float* %rcoulomb.i, align 4, !tbaa !3
  %rlist.i = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 35
  %7 = load float* %rlist.i, align 4, !tbaa !3
  %cmp.i = fcmp ogt float %6, %7
  br i1 %cmp.i, label %set_pot_bools.exit, label %lor.rhs.i

lor.rhs.i:                                        ; preds = %if.end8
  %coulombtype.i = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 36
  %8 = load i32* %coulombtype.i, align 4, !tbaa !0
  %switch.tableidx.i = add i32 %8, -3
  %9 = icmp ult i32 %switch.tableidx.i, 4
  br label %set_pot_bools.exit

set_pot_bools.exit:                               ; preds = %if.end8, %lor.rhs.i
  %10 = phi i1 [ true, %if.end8 ], [ %9, %lor.rhs.i ]
  %lor.ext.i = zext i1 %10 to i32
  %rvdw.i = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 41
  %11 = load float* %rvdw.i, align 4, !tbaa !3
  %cmp12.i = fcmp ogt float %11, %7
  %conv.i = zext i1 %cmp12.i to i32
  %functype.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 3
  %12 = load i32** %functype.i, align 8, !tbaa !5
  %13 = load i32* %12, align 4, !tbaa !0
  %cmp13.i = icmp eq i32 %13, 14
  %conv14.i = zext i1 %cmp13.i to i32
  %nr.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 11, i32 0
  %14 = load i32* %nr.i, align 4, !tbaa !0
  %cmp17.i = icmp sgt i32 %14, 0
  %conv18.i = zext i1 %cmp17.i to i32
  %cmp9 = icmp eq i32 %nfile, -1
  br i1 %cmp9, label %if.end60, label %if.then11

if.then11:                                        ; preds = %set_pot_bools.exit
  %call = tail call i8* @ftp2fn(i32 3, i32 %nfile, %struct.t_filenm* %fnm) #6
  store i8* %call, i8** %traj, align 8, !tbaa !5
  %call12 = tail call i8* @ftp2fn(i32 6, i32 %nfile, %struct.t_filenm* %fnm) #6
  store i8* %call12, i8** %xtc_traj, align 8, !tbaa !5
  store i32 -1, i32* %fp_ene, align 4, !tbaa !0
  %atoms = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2
  %idef = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1
  %15 = load i32* %efep, align 4, !tbaa !0
  %cmp14 = icmp ne i32 %15, 0
  %conv15 = zext i1 %cmp14 to i32
  %epc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 28
  %16 = load i32* %epc, align 4, !tbaa !0
  %eDispCorr = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 43
  %17 = load i32* %eDispCorr, align 4, !tbaa !0
  %arrayidx16 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 1, i64 0
  %18 = load float* %arrayidx16, align 4, !tbaa !3
  %fabsf = tail call float @fabsf(float %18) #8
  %19 = fpext float %fabsf to double
  %cmp19 = fcmp ogt double %19, 1.200000e-38
  br i1 %cmp19, label %lor.end56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then11
  %arrayidx23 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 2, i64 0
  %20 = load float* %arrayidx23, align 4, !tbaa !3
  %fabsf122 = tail call float @fabsf(float %20) #8
  %21 = fpext float %fabsf122 to double
  %cmp26 = fcmp ogt double %21, 1.200000e-38
  br i1 %cmp26, label %lor.end56, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %arrayidx31 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 2, i64 1
  %22 = load float* %arrayidx31, align 4, !tbaa !3
  %fabsf123 = tail call float @fabsf(float %22) #8
  %23 = fpext float %fabsf123 to double
  %cmp34 = fcmp ogt double %23, 1.200000e-38
  br i1 %cmp34, label %lor.end56, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false28
  %arrayidx37 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %24 = load float* %arrayidx37, align 4, !tbaa !3
  %fabsf124 = tail call float @fabsf(float %24) #8
  %25 = fpext float %fabsf124 to double
  %cmp40 = fcmp ogt double %25, 1.200000e-38
  br i1 %cmp40, label %lor.end56, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.rhs
  %arrayidx44 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %26 = load float* %arrayidx44, align 4, !tbaa !3
  %fabsf125 = tail call float @fabsf(float %26) #8
  %27 = fpext float %fabsf125 to double
  %cmp47 = fcmp ogt double %27, 1.200000e-38
  br i1 %cmp47, label %lor.end56, label %lor.rhs49

lor.rhs49:                                        ; preds = %lor.lhs.false42
  %arrayidx51 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %28 = load float* %arrayidx51, align 4, !tbaa !3
  %fabsf126 = tail call float @fabsf(float %28) #8
  %29 = fpext float %fabsf126 to double
  %cmp54 = fcmp ogt double %29, 1.200000e-38
  br label %lor.end56

lor.end56:                                        ; preds = %lor.rhs, %lor.lhs.false42, %lor.rhs49, %lor.lhs.false28, %lor.lhs.false, %if.then11
  %30 = phi i1 [ true, %lor.lhs.false28 ], [ true, %lor.lhs.false ], [ true, %if.then11 ], [ true, %lor.lhs.false42 ], [ true, %lor.rhs ], [ %cmp54, %lor.rhs49 ]
  %lor.ext = zext i1 %30 to i32
  %etc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 27
  %31 = load i32* %etc, align 4, !tbaa !0
  %cmp57 = icmp eq i32 %31, 2
  %conv58 = zext i1 %cmp57 to i32
  %call59 = tail call %struct.t_mdebin* @init_mdebin(i32 -1, %struct.t_groups* %grps, %struct.t_atoms* %atoms, %struct.t_idef* %idef, i32 %lor.ext.i, i32 %conv.i, i32 %conv14.i, i32 %conv18.i, i32 %conv15, i32 %16, i32 %17, i32 %lor.ext, i32 %conv58, %struct.t_commrec* %cr) #6
  store %struct.t_mdebin* %call59, %struct.t_mdebin** %mdebin, align 8, !tbaa !5
  br label %if.end60

if.end60:                                         ; preds = %set_pot_bools.exit, %lor.end56
  %32 = bitcast [3 x float]* %force_vir to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %32, i8 0, i64 36, i32 4, i1 false) #1
  %33 = bitcast [3 x float]* %pme_vir to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %33, i8 0, i64 36, i32 4, i1 false) #1
  %34 = bitcast [3 x float]* %shake_vir to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %34, i8 0, i64 36, i32 4, i1 false) #1
  store float 0.000000e+00, float* %mu_tot, align 4, !tbaa !3
  %arrayidx1.i = getelementptr inbounds float* %mu_tot, i64 1
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !tbaa !3
  %arrayidx2.i128 = getelementptr inbounds float* %mu_tot, i64 2
  store float 0.000000e+00, float* %arrayidx2.i128, align 4, !tbaa !3
  %35 = load float* %lambda, align 4, !tbaa !3
  tail call void @init_mdatoms(%struct.t_mdatoms* %mdatoms, float %35, i32 1) #6
  %36 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !5
  %nodeid = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %37 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom = sext i32 %37 to i64
  %arrayidx61 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom
  %38 = load i32* %arrayidx61, align 4, !tbaa !0
  %arrayidx64 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom
  %39 = load i32* %arrayidx64, align 4, !tbaa !0
  %nstcomm = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 7
  %40 = load i32* %nstcomm, align 4, !tbaa !0
  %call65 = tail call %struct.t_vcm* @init_vcm(%struct._IO_FILE* %36, %struct.t_topology* %top, %struct.t_commrec* %cr, %struct.t_mdatoms* %mdatoms, i32 %38, i32 %39, i32 %40) #6
  store %struct.t_vcm* %call65, %struct.t_vcm** %vcm, align 8, !tbaa !5
  %ngacc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 1
  %41 = load i32* %ngacc, align 4, !tbaa !0
  %cmp66 = icmp sgt i32 %41, 1
  br i1 %cmp66, label %lor.end74, label %lor.rhs68

lor.rhs68:                                        ; preds = %if.end60
  %acc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 7
  %42 = load [3 x float]** %acc, align 8, !tbaa !5
  %arraydecay = getelementptr inbounds [3 x float]* %42, i64 0, i64 0
  %43 = load float* %arraydecay, align 4, !tbaa !3
  %mul.i = fmul float %43, %43
  %arrayidx2.i = getelementptr inbounds [3 x float]* %42, i64 0, i64 1
  %44 = load float* %arrayidx2.i, align 4, !tbaa !3
  %mul4.i = fmul float %44, %44
  %add.i = fadd float %mul.i, %mul4.i
  %arrayidx5.i = getelementptr inbounds [3 x float]* %42, i64 0, i64 2
  %45 = load float* %arrayidx5.i, align 4, !tbaa !3
  %mul7.i = fmul float %45, %45
  %add8.i = fadd float %add.i, %mul7.i
  %conv9.i = tail call float @sqrtf(float %add8.i) #2
  %cmp72 = fcmp ogt float %conv9.i, 0.000000e+00
  br label %lor.end74

lor.end74:                                        ; preds = %lor.rhs68, %if.end60
  %46 = phi i1 [ true, %if.end60 ], [ %cmp72, %lor.rhs68 ]
  %lor.ext75 = zext i1 %46 to i32
  store i32 %lor.ext75, i32* %bNEMD, align 4, !tbaa !0
  %eI = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 0
  %47 = load i32* %eI, align 4, !tbaa !0
  %cmp76 = icmp eq i32 %47, 4
  br i1 %cmp76, label %if.then78, label %if.end81

if.then78:                                        ; preds = %lor.end74
  %ngtc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 0
  %48 = load i32* %ngtc, align 4, !tbaa !0
  %tau_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 6
  %49 = load float** %tau_t, align 8, !tbaa !5
  %delta_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %50 = load float* %delta_t, align 4, !tbaa !3
  tail call void @init_sd_consts(i32 %48, float* %49, float %50) #6
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %lor.end74
  ret void
}

; Function Attrs: optsize
declare void @init_nrnb(%struct.t_nrnb*) #4

; Function Attrs: optsize
declare i8* @ftp2fn(i32, i32, %struct.t_filenm*) #4

; Function Attrs: optsize
declare %struct.t_mdebin* @init_mdebin(i32, %struct.t_groups*, %struct.t_atoms*, %struct.t_idef*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.t_commrec*) #4

; Function Attrs: optsize
declare void @init_mdatoms(%struct.t_mdatoms*, float, i32) #4

; Function Attrs: optsize
declare %struct.t_vcm* @init_vcm(%struct._IO_FILE*, %struct.t_topology*, %struct.t_commrec*, %struct.t_mdatoms*, i32, i32, i32) #4

; Function Attrs: optsize
declare void @init_sd_consts(i32, float*, float) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

declare float @fabsf(float)

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
!5 = metadata !{metadata !"any pointer", metadata !1}
!6 = metadata !{metadata !"double", metadata !1}

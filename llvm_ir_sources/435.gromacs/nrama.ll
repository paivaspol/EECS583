; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/nrama.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.t_interaction_function = type { i8*, i8*, i32, i32, i32, i64, i32, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_graph = type { i32, i32, i32, i32, i32, i32*, i32**, [3 x i32]* }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_fcdata = type { %struct.t_disresdata, %struct.t_oriresdata }
%struct.t_disresdata = type { i32, i32, float, float, float, float, float, i32, i32, float, float*, float*, float*, float*, float* }
%struct.t_oriresdata = type { float, float, float, float, i32, i32, i32, float, float*, [3 x float]*, [3 x float]*, [3 x [3 x float]], [3 x [3 x float]]*, [5 x float]*, [5 x float]*, [5 x float]*, float*, float*, float*, float, [5 x float]*, float*** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_xrama = type { i32, %struct.t_dih*, i32, %struct.t_phipsi*, i32, i32, i32, i32, float, [3 x float]*, [3 x [3 x float]], %struct.t_idef* }
%struct.t_dih = type { [4 x i32], i32, float, float }
%struct.t_phipsi = type { i32, i8*, i32, i32 }

@init_rama.top = internal unnamed_addr global %struct.t_topology* null, align 8
@interaction_function = external global [44 x %struct.t_interaction_function]
@.str = private unnamed_addr constant [44 x i8] c"Dihedral around %d,%d not found in topology\00", align 1
@pp_pat = internal unnamed_addr constant [5 x i8*] [i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0)], align 16
@stderr = external global %struct._IO_FILE*
@.str1 = private unnamed_addr constant [31 x i8] c"Found %d phi-psi combinations\0A\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"xr->dih\00", align 1
@.str3 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/nrama.c\00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c"xr->pp\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str7 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"CA\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @new_data(%struct.t_xrama* %xr) #0 {
entry:
  %traj = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 4
  %0 = load i32* %traj, align 4, !tbaa !0
  %t = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 8
  %natoms = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 5
  %1 = load i32* %natoms, align 4, !tbaa !0
  %x = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 9
  %2 = load [3 x float]** %x, align 8, !tbaa !3
  %arraydecay = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 10, i64 0
  %call = tail call i32 @read_next_x(i32 %0, float* %t, i32 %1, [3 x float]* %2, [3 x float]* %arraydecay) #6
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @calc_dihs(%struct.t_xrama* %xr) #7
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @read_next_x(i32, float*, i32, [3 x float]*, [3 x float]*) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @calc_dihs(%struct.t_xrama* %xr) #0 {
entry:
  %r_ij = alloca [3 x float], align 4
  %r_kj = alloca [3 x float], align 4
  %r_kl = alloca [3 x float], align 4
  %m = alloca [3 x float], align 4
  %n = alloca [3 x float], align 4
  %cos_phi = alloca float, align 4
  %sign = alloca float, align 4
  %idef = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 11
  %0 = load %struct.t_idef** %idef, align 8, !tbaa !3
  %natoms = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 5
  %1 = load i32* %natoms, align 4, !tbaa !0
  %arraydecay = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 10, i64 0
  %x = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 9
  %2 = load [3 x float]** %x, align 8, !tbaa !3
  call void @rm_pbc(%struct.t_idef* %0, i32 %1, [3 x float]* %arraydecay, [3 x float]* %2, [3 x float]* %2) #6
  %ndih = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 0
  %3 = load i32* %ndih, align 4, !tbaa !0
  %cmp49 = icmp sgt i32 %3, 0
  br i1 %cmp49, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dih = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 1
  %arraydecay27 = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 0
  %arraydecay28 = getelementptr inbounds [3 x float]* %r_kj, i64 0, i64 0
  %arraydecay29 = getelementptr inbounds [3 x float]* %r_kl, i64 0, i64 0
  %arraydecay30 = getelementptr inbounds [3 x float]* %m, i64 0, i64 0
  %arraydecay31 = getelementptr inbounds [3 x float]* %n, i64 0, i64 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %4 = load %struct.t_dih** %dih, align 8, !tbaa !3
  %arrayidx4 = getelementptr inbounds %struct.t_dih* %4, i64 %indvars.iv, i32 0, i64 0
  %5 = load i32* %arrayidx4, align 4, !tbaa !0
  %idxprom5 = sext i32 %5 to i64
  %6 = load [3 x float]** %x, align 8, !tbaa !3
  %arraydecay8 = getelementptr inbounds [3 x float]* %6, i64 %idxprom5, i64 0
  %arrayidx10 = getelementptr inbounds %struct.t_dih* %4, i64 %indvars.iv, i32 0, i64 1
  %7 = load i32* %arrayidx10, align 4, !tbaa !0
  %idxprom11 = sext i32 %7 to i64
  %arraydecay14 = getelementptr inbounds [3 x float]* %6, i64 %idxprom11, i64 0
  %arrayidx16 = getelementptr inbounds %struct.t_dih* %4, i64 %indvars.iv, i32 0, i64 2
  %8 = load i32* %arrayidx16, align 4, !tbaa !0
  %idxprom17 = sext i32 %8 to i64
  %arraydecay20 = getelementptr inbounds [3 x float]* %6, i64 %idxprom17, i64 0
  %arrayidx22 = getelementptr inbounds %struct.t_dih* %4, i64 %indvars.iv, i32 0, i64 3
  %9 = load i32* %arrayidx22, align 4, !tbaa !0
  %idxprom23 = sext i32 %9 to i64
  %arraydecay26 = getelementptr inbounds [3 x float]* %6, i64 %idxprom23, i64 0
  %call = call float @dih_angle([3 x float]* %arraydecay, float* %arraydecay8, float* %arraydecay14, float* %arraydecay20, float* %arraydecay26, float* %arraydecay27, float* %arraydecay28, float* %arraydecay29, float* %arraydecay30, float* %arraydecay31, float* %cos_phi, float* %sign) #6
  %ang = getelementptr inbounds %struct.t_dih* %4, i64 %indvars.iv, i32 3
  store float %call, float* %ang, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %10 = load i32* %ndih, align 4, !tbaa !0
  %11 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %11, %10
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @init_rama(i8* %infile, i8* %topfile, %struct.t_xrama* %xr) #0 {
entry:
  %key.i = alloca %struct.t_dih, align 4
  %buf.i.i = alloca [12 x i8], align 1
  %ff.i = alloca [5 x i32], align 16
  %t = alloca float, align 4
  %call = call %struct.t_topology* @read_top(i8* %topfile) #6
  store %struct.t_topology* %call, %struct.t_topology** @init_rama.top, align 8, !tbaa !3
  %0 = bitcast [5 x i32]* %ff.i to i8*
  call void @llvm.lifetime.start(i64 20, i8* %0) #5
  %nr.i = getelementptr inbounds %struct.t_topology* %call, i64 0, i32 2, i32 0
  %1 = load i32* %nr.i, align 4, !tbaa !0
  %cmp50.i = icmp sgt i32 %1, 0
  br i1 %cmp50.i, label %for.cond1.preheader.lr.ph.i, label %entry.for.end19_crit_edge.i

entry.for.end19_crit_edge.i:                      ; preds = %entry
  %npp.pre.i = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 2
  br label %get_dih.exit

for.cond1.preheader.lr.ph.i:                      ; preds = %entry
  %atomname.i = getelementptr inbounds %struct.t_topology* %call, i64 0, i32 2, i32 2
  %arraydecay.i = getelementptr inbounds [5 x i32]* %ff.i, i64 0, i64 0
  %2 = getelementptr inbounds [12 x i8]* %buf.i.i, i64 0, i64 0
  %dih.i.i = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 1
  %ndih.i.i = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 0
  %pp.i.i = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 3
  %npp.i.i = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 2
  %arrayidx51.i.i = getelementptr inbounds [5 x i32]* %ff.i, i64 0, i64 1
  %atom.i.i = getelementptr inbounds %struct.t_topology* %call, i64 0, i32 2, i32 1
  %resname.i.i = getelementptr inbounds %struct.t_topology* %call, i64 0, i32 2, i32 6
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %add_xr.exit.i, %for.cond1.preheader.lr.ph.i
  %3 = phi i32 [ %1, %for.cond1.preheader.lr.ph.i ], [ %40, %add_xr.exit.i ]
  %i.051.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %add18.i, %add_xr.exit.i ]
  %4 = load i8**** %atomname.i, align 8, !tbaa !3
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %if.end.i ]
  %j.048.i = phi i32 [ 0, %for.cond1.preheader.i ], [ %inc.i, %if.end.i ]
  %found.047.i = phi i32 [ %i.051.i, %for.cond1.preheader.i ], [ %add.i, %if.end.i ]
  %arrayidx.i = getelementptr inbounds [5 x i8*]* @pp_pat, i64 0, i64 %indvars.iv.i
  %5 = load i8** %arrayidx.i, align 8, !tbaa !3
  %cmp4.i.i = icmp slt i32 %found.047.i, %3
  br i1 %cmp4.i.i, label %for.body.lr.ph.i.i, label %find_atom.exit.thread.i

for.body.lr.ph.i.i:                               ; preds = %for.body4.i
  %6 = sext i32 %found.047.i to i64
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nsw i32 %i.05.i.i, 1
  %7 = trunc i64 %indvars.iv.next.i.i to i32
  %cmp.i.i = icmp slt i32 %7, %3
  br i1 %cmp.i.i, label %for.body.i.i, label %find_atom.exit.thread.i

for.body.i.i:                                     ; preds = %for.cond.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %6, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.cond.i.i ]
  %i.05.i.i = phi i32 [ %found.047.i, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i ]
  %arrayidx.i.i = getelementptr inbounds i8*** %4, i64 %indvars.iv.i.i
  %8 = load i8*** %arrayidx.i.i, align 8, !tbaa !3
  %9 = load i8** %8, align 8, !tbaa !3
  %call.i.i = call i32 @strcmp(i8* %5, i8* %9) #8
  %cmp1.i.i = icmp eq i32 %call.i.i, 0
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1
  br i1 %cmp1.i.i, label %find_atom.exit.i, label %for.cond.i.i

find_atom.exit.thread.i:                          ; preds = %for.body4.i, %for.cond.i.i
  %arrayidx736.i = getelementptr inbounds [5 x i32]* %ff.i, i64 0, i64 %indvars.iv.i
  store i32 -1, i32* %arrayidx736.i, align 4, !tbaa !0
  br label %for.end.i

find_atom.exit.i:                                 ; preds = %for.body.i.i
  %arrayidx7.i = getelementptr inbounds [5 x i32]* %ff.i, i64 0, i64 %indvars.iv.i
  store i32 %i.05.i.i, i32* %arrayidx7.i, align 4, !tbaa !0
  %cmp8.i = icmp eq i32 %i.05.i.i, -1
  br i1 %cmp8.i, label %for.end.i, label %if.end.i

if.end.i:                                         ; preds = %find_atom.exit.i
  %add.i = add nsw i32 %i.05.i.i, 1
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %inc.i = add nsw i32 %j.048.i, 1
  %10 = trunc i64 %indvars.iv.next.i to i32
  %cmp2.i = icmp ult i32 %10, 5
  br i1 %cmp2.i, label %for.body4.i, label %for.end.i

for.end.i:                                        ; preds = %if.end.i, %find_atom.exit.i, %find_atom.exit.thread.i
  %j.042.i = phi i32 [ %j.048.i, %find_atom.exit.thread.i ], [ %inc.i, %if.end.i ], [ %j.048.i, %find_atom.exit.i ]
  %cmp13.i = icmp eq i32 %j.042.i, 5
  br i1 %cmp13.i, label %if.end16.i, label %get_dih.exit

if.end16.i:                                       ; preds = %for.end.i
  call void @llvm.lifetime.start(i64 12, i8* %2) #5
  %11 = load %struct.t_dih** %dih.i.i, align 8, !tbaa !3
  %12 = bitcast %struct.t_dih* %11 to i8*
  %13 = load i32* %ndih.i.i, align 4, !tbaa !0
  %14 = mul i32 %13, 28
  %mul.i.i = add i32 %14, 56
  %call.i31.i = call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 109, i8* %12, i32 %mul.i.i) #6
  %15 = bitcast i8* %call.i31.i to %struct.t_dih*
  store %struct.t_dih* %15, %struct.t_dih** %dih.i.i, align 8, !tbaa !3
  br label %for.body.i33.i

for.body.i33.i:                                   ; preds = %for.body.i33.i, %if.end16.i
  %indvars.iv106.i.i = phi i64 [ 0, %if.end16.i ], [ %indvars.iv.next107.i.i, %for.body.i33.i ]
  %arrayidx.i32.i = getelementptr inbounds [5 x i32]* %ff.i, i64 0, i64 %indvars.iv106.i.i
  %16 = load i32* %arrayidx.i32.i, align 4, !tbaa !0
  %17 = load i32* %ndih.i.i, align 4, !tbaa !0
  %idxprom6.i.i = sext i32 %17 to i64
  %arrayidx9.i.i = getelementptr inbounds %struct.t_dih* %15, i64 %idxprom6.i.i, i32 0, i64 %indvars.iv106.i.i
  store i32 %16, i32* %arrayidx9.i.i, align 4, !tbaa !0
  %indvars.iv.next107.i.i = add i64 %indvars.iv106.i.i, 1
  %lftr.wideiv51 = trunc i64 %indvars.iv.next107.i.i to i32
  %exitcond52 = icmp eq i32 %lftr.wideiv51, 4
  br i1 %exitcond52, label %for.body13.i.i, label %for.body.i33.i

for.body13.i.i:                                   ; preds = %for.body.i33.i, %for.body13.i.i
  %indvars.iv.i34.i = phi i64 [ %indvars.iv.next.i35.i, %for.body13.i.i ], [ 0, %for.body.i33.i ]
  %indvars.iv.next.i35.i = add i64 %indvars.iv.i34.i, 1
  %arrayidx16.i.i = getelementptr inbounds [5 x i32]* %ff.i, i64 0, i64 %indvars.iv.next.i35.i
  %18 = load i32* %arrayidx16.i.i, align 4, !tbaa !0
  %19 = load i32* %ndih.i.i, align 4, !tbaa !0
  %add19.i.i = add nsw i32 %19, 1
  %idxprom20.i.i = sext i32 %add19.i.i to i64
  %arrayidx24.i.i = getelementptr inbounds %struct.t_dih* %15, i64 %idxprom20.i.i, i32 0, i64 %indvars.iv.i34.i
  store i32 %18, i32* %arrayidx24.i.i, align 4, !tbaa !0
  %lftr.wideiv53 = trunc i64 %indvars.iv.next.i35.i to i32
  %exitcond54 = icmp eq i32 %lftr.wideiv53, 4
  br i1 %exitcond54, label %add_xr.exit.i, label %for.body13.i.i

add_xr.exit.i:                                    ; preds = %for.body13.i.i
  %20 = load i32* %ndih.i.i, align 4, !tbaa !0
  %add29.i.i = add nsw i32 %20, 2
  store i32 %add29.i.i, i32* %ndih.i.i, align 4, !tbaa !0
  %21 = load %struct.t_phipsi** %pp.i.i, align 8, !tbaa !3
  %22 = bitcast %struct.t_phipsi* %21 to i8*
  %23 = load i32* %npp.i.i, align 4, !tbaa !0
  %24 = mul i32 %23, 24
  %mul32.i.i = add i32 %24, 24
  %call34.i.i = call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 116, i8* %22, i32 %mul32.i.i) #6
  %25 = bitcast i8* %call34.i.i to %struct.t_phipsi*
  store %struct.t_phipsi* %25, %struct.t_phipsi** %pp.i.i, align 8, !tbaa !3
  %26 = load i32* %ndih.i.i, align 4, !tbaa !0
  %sub.i.i = add nsw i32 %26, -2
  %27 = load i32* %npp.i.i, align 4, !tbaa !0
  %idxprom38.i.i = sext i32 %27 to i64
  %iphi.i.i = getelementptr inbounds %struct.t_phipsi* %25, i64 %idxprom38.i.i, i32 2
  store i32 %sub.i.i, i32* %iphi.i.i, align 4, !tbaa !0
  %28 = load i32* %ndih.i.i, align 4, !tbaa !0
  %sub42.i.i = add nsw i32 %28, -1
  %29 = load i32* %npp.i.i, align 4, !tbaa !0
  %idxprom44.i.i = sext i32 %29 to i64
  %ipsi.i.i = getelementptr inbounds %struct.t_phipsi* %25, i64 %idxprom44.i.i, i32 3
  store i32 %sub42.i.i, i32* %ipsi.i.i, align 4, !tbaa !0
  %30 = load i32* %npp.i.i, align 4, !tbaa !0
  %idxprom48.i.i = sext i32 %30 to i64
  %bShow.i.i = getelementptr inbounds %struct.t_phipsi* %25, i64 %idxprom48.i.i, i32 0
  store i32 0, i32* %bShow.i.i, align 4, !tbaa !0
  %31 = load i32* %arrayidx51.i.i, align 4, !tbaa !0
  %idxprom52.i.i = sext i32 %31 to i64
  %32 = load %struct.t_atom** %atom.i.i, align 8, !tbaa !3
  %resnr.i.i = getelementptr inbounds %struct.t_atom* %32, i64 %idxprom52.i.i, i32 7
  %33 = load i32* %resnr.i.i, align 4, !tbaa !0
  %idxprom54.i.i = sext i32 %33 to i64
  %34 = load i8**** %resname.i.i, align 8, !tbaa !3
  %arrayidx55.i.i = getelementptr inbounds i8*** %34, i64 %idxprom54.i.i
  %35 = load i8*** %arrayidx55.i.i, align 8, !tbaa !3
  %36 = load i8** %35, align 8, !tbaa !3
  %add61.i.i = add nsw i32 %33, 1
  %call62.i.i = call i32 (i8*, i8*, ...)* @sprintf(i8* %2, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* %36, i32 %add61.i.i) #6
  %call64.i.i = call i8* @gmx_strdup(i8* %2) #6
  %37 = load i32* %npp.i.i, align 4, !tbaa !0
  %idxprom66.i.i = sext i32 %37 to i64
  %38 = load %struct.t_phipsi** %pp.i.i, align 8, !tbaa !3
  %label.i.i = getelementptr inbounds %struct.t_phipsi* %38, i64 %idxprom66.i.i, i32 1
  store i8* %call64.i.i, i8** %label.i.i, align 8, !tbaa !3
  %inc70.i.i = add nsw i32 %37, 1
  store i32 %inc70.i.i, i32* %npp.i.i, align 4, !tbaa !0
  call void @llvm.lifetime.end(i64 12, i8* %2) #5
  %39 = load i32* %arraydecay.i, align 16, !tbaa !0
  %add18.i = add nsw i32 %39, 1
  %40 = load i32* %nr.i, align 4, !tbaa !0
  %cmp.i = icmp slt i32 %add18.i, %40
  br i1 %cmp.i, label %for.cond1.preheader.i, label %get_dih.exit

get_dih.exit:                                     ; preds = %for.end.i, %add_xr.exit.i, %entry.for.end19_crit_edge.i
  %npp.pre-phi.i = phi i32* [ %npp.pre.i, %entry.for.end19_crit_edge.i ], [ %npp.i.i, %add_xr.exit.i ], [ %npp.i.i, %for.end.i ]
  %41 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %42 = load i32* %npp.pre-phi.i, align 4, !tbaa !0
  %call20.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([31 x i8]* @.str1, i64 0, i64 0), i32 %42) #6
  call void @llvm.lifetime.end(i64 20, i8* %0) #5
  %43 = load %struct.t_topology** @init_rama.top, align 8, !tbaa !3
  %44 = bitcast %struct.t_dih* %key.i to i8*
  call void @llvm.lifetime.start(i64 28, i8* %44) #5
  %nr.i12 = getelementptr inbounds %struct.t_topology* %43, i64 0, i32 1, i32 5, i64 8, i32 0
  %45 = load i32* %nr.i12, align 4, !tbaa !0
  %cmp71.i = icmp sgt i32 %45, 0
  br i1 %cmp71.i, label %for.body.lr.ph.i, label %entry.for.cond23.preheader_crit_edge.i

entry.for.cond23.preheader_crit_edge.i:           ; preds = %get_dih.exit
  %ndih24.pre.i = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 0
  br label %for.cond23.preheader.i

for.body.lr.ph.i:                                 ; preds = %get_dih.exit
  %iatoms.i = getelementptr inbounds %struct.t_topology* %43, i64 0, i32 1, i32 5, i64 8, i32 2
  %46 = load i32** %iatoms.i, align 8, !tbaa !3
  %functype.i = getelementptr inbounds %struct.t_topology* %43, i64 0, i32 1, i32 3
  %arrayidx8.i = getelementptr inbounds %struct.t_dih* %key.i, i64 0, i32 0, i64 1
  %arrayidx11.i = getelementptr inbounds %struct.t_dih* %key.i, i64 0, i32 0, i64 2
  %dih.i = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 1
  %ndih.i = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 0
  %iparams.i = getelementptr inbounds %struct.t_topology* %43, i64 0, i32 1, i32 4
  br label %for.body.i

for.cond23.preheader.i:                           ; preds = %if.end.i16, %entry.for.cond23.preheader_crit_edge.i
  %ndih24.pre-phi.i = phi i32* [ %ndih24.pre.i, %entry.for.cond23.preheader_crit_edge.i ], [ %ndih.i, %if.end.i16 ]
  %47 = load i32* %ndih24.pre-phi.i, align 4, !tbaa !0
  %cmp2569.i = icmp sgt i32 %47, 0
  br i1 %cmp2569.i, label %for.body27.lr.ph.i, label %get_dih_props.exit

for.body27.lr.ph.i:                               ; preds = %for.cond23.preheader.i
  %dih29.i = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 1
  br label %for.body27.i

for.body.i:                                       ; preds = %if.end.i16, %for.body.lr.ph.i
  %i.073.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add21.i, %if.end.i16 ]
  %ia.072.i = phi i32* [ %46, %for.body.lr.ph.i ], [ %add.ptr.i, %if.end.i16 ]
  %48 = load i32* %ia.072.i, align 4, !tbaa !0
  %idxprom.i = sext i32 %48 to i64
  %49 = load i32** %functype.i, align 8, !tbaa !3
  %arrayidx4.i = getelementptr inbounds i32* %49, i64 %idxprom.i
  %50 = load i32* %arrayidx4.i, align 4, !tbaa !0
  %idxprom5.i = sext i32 %50 to i64
  %nratoms.i = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %idxprom5.i, i32 2
  %51 = load i32* %nratoms.i, align 8, !tbaa !0
  %arrayidx7.i13 = getelementptr inbounds i32* %ia.072.i, i64 2
  %52 = load i32* %arrayidx7.i13, align 4, !tbaa !0
  store i32 %52, i32* %arrayidx8.i, align 4, !tbaa !0
  %arrayidx9.i = getelementptr inbounds i32* %ia.072.i, i64 3
  %53 = load i32* %arrayidx9.i, align 4, !tbaa !0
  store i32 %53, i32* %arrayidx11.i, align 4, !tbaa !0
  %54 = load %struct.t_dih** %dih.i, align 8, !tbaa !3
  %55 = bitcast %struct.t_dih* %54 to i8*
  %56 = load i32* %ndih.i, align 4, !tbaa !0
  %conv.i = sext i32 %56 to i64
  %call.i = call i8* @bsearch(i8* %44, i8* %55, i64 %conv.i, i64 28, i32 (i8*, i8*)* @d_comp) #6
  %cmp12.i = icmp eq i8* %call.i, null
  br i1 %cmp12.i, label %if.end.i16, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %57 = load %union.t_iparams** %iparams.i, align 8, !tbaa !3
  %mult.i = getelementptr inbounds %union.t_iparams* %57, i64 %idxprom.i, i32 0, i32 2
  %58 = bitcast float* %mult.i to i32*
  %59 = load i32* %58, align 4, !tbaa !0
  %mult16.i = getelementptr inbounds i8* %call.i, i64 16
  %60 = bitcast i8* %mult16.i to i32*
  store i32 %59, i32* %60, align 4, !tbaa !0
  %phiA.i = getelementptr inbounds %union.t_iparams* %57, i64 %idxprom.i, i32 0, i32 0
  %61 = load float* %phiA.i, align 4, !tbaa !4
  %phi0.i = getelementptr inbounds i8* %call.i, i64 20
  %62 = bitcast i8* %phi0.i to float*
  store float %61, float* %62, align 4, !tbaa !4
  br label %if.end.i16

if.end.i16:                                       ; preds = %if.then.i, %for.body.i
  %add.i14 = add nsw i32 %51, 1
  %add21.i = add nsw i32 %add.i14, %i.073.i
  %idx.ext.i = sext i32 %add.i14 to i64
  %add.ptr.i = getelementptr inbounds i32* %ia.072.i, i64 %idx.ext.i
  %63 = load i32* %nr.i12, align 4, !tbaa !0
  %cmp.i15 = icmp slt i32 %add21.i, %63
  br i1 %cmp.i15, label %for.body.i, label %for.cond23.preheader.i

for.body27.i:                                     ; preds = %for.inc.i, %for.body27.lr.ph.i
  %64 = phi i32 [ %47, %for.body27.lr.ph.i ], [ %69, %for.inc.i ]
  %indvars.iv.i17 = phi i64 [ 0, %for.body27.lr.ph.i ], [ %indvars.iv.next.i18, %for.inc.i ]
  %65 = load %struct.t_dih** %dih29.i, align 8, !tbaa !3
  %mult31.i = getelementptr inbounds %struct.t_dih* %65, i64 %indvars.iv.i17, i32 1
  %66 = load i32* %mult31.i, align 4, !tbaa !0
  %cmp32.i = icmp eq i32 %66, 0
  br i1 %cmp32.i, label %if.then34.i, label %for.inc.i

if.then34.i:                                      ; preds = %for.body27.i
  %arrayidx39.i = getelementptr inbounds %struct.t_dih* %65, i64 %indvars.iv.i17, i32 0, i64 1
  %67 = load i32* %arrayidx39.i, align 4, !tbaa !0
  %arrayidx44.i = getelementptr inbounds %struct.t_dih* %65, i64 %indvars.iv.i17, i32 0, i64 2
  %68 = load i32* %arrayidx44.i, align 4, !tbaa !0
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([44 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68) #6
  %.pre.i = load i32* %ndih24.pre-phi.i, align 4, !tbaa !0
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then34.i, %for.body27.i
  %69 = phi i32 [ %64, %for.body27.i ], [ %.pre.i, %if.then34.i ]
  %indvars.iv.next.i18 = add i64 %indvars.iv.i17, 1
  %70 = trunc i64 %indvars.iv.next.i18 to i32
  %cmp25.i = icmp slt i32 %70, %69
  br i1 %cmp25.i, label %for.body27.i, label %get_dih_props.exit

get_dih_props.exit:                               ; preds = %for.inc.i, %for.cond23.preheader.i
  call void @llvm.lifetime.end(i64 28, i8* %44) #5
  %traj = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 4
  %x = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 9
  %arraydecay = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 10, i64 0
  %call1 = call i32 @read_first_x(i32* %traj, i8* %infile, float* %t, [3 x float]** %x, [3 x float]* %arraydecay) #6
  %natoms = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 5
  store i32 %call1, i32* %natoms, align 4, !tbaa !0
  %71 = load %struct.t_topology** @init_rama.top, align 8, !tbaa !3
  %idef2 = getelementptr inbounds %struct.t_topology* %71, i64 0, i32 1
  %idef3 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 11
  store %struct.t_idef* %idef2, %struct.t_idef** %idef3, align 8, !tbaa !3
  %amin.i = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 6
  store i32 %call1, i32* %amin.i, align 4, !tbaa !0
  %amax.i = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 7
  store i32 0, i32* %amax.i, align 4, !tbaa !0
  %ndih.i19 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 0
  %72 = load i32* %ndih.i19, align 4, !tbaa !0
  %cmp32.i20 = icmp sgt i32 %72, 0
  br i1 %cmp32.i20, label %for.cond1.preheader.lr.ph.i22, label %min_max.exit

for.cond1.preheader.lr.ph.i22:                    ; preds = %get_dih_props.exit
  %dih.i21 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 1
  %73 = load %struct.t_dih** %dih.i21, align 8, !tbaa !3
  br label %for.cond1.preheader.i23

for.cond1.preheader.i23:                          ; preds = %for.inc15.i, %for.cond1.preheader.lr.ph.i22
  %74 = phi i32 [ 0, %for.cond1.preheader.lr.ph.i22 ], [ %79, %for.inc15.i ]
  %75 = phi i32 [ %call1, %for.cond1.preheader.lr.ph.i22 ], [ %80, %for.inc15.i ]
  %indvars.iv34.i = phi i64 [ 0, %for.cond1.preheader.lr.ph.i22 ], [ %indvars.iv.next35.i, %for.inc15.i ]
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc.i30, %for.cond1.preheader.i23
  %76 = phi i32 [ %74, %for.cond1.preheader.i23 ], [ %79, %for.inc.i30 ]
  %77 = phi i32 [ %75, %for.cond1.preheader.i23 ], [ %80, %for.inc.i30 ]
  %indvars.iv.i24 = phi i64 [ 0, %for.cond1.preheader.i23 ], [ %indvars.iv.next.i27, %for.inc.i30 ]
  %arrayidx6.i = getelementptr inbounds %struct.t_dih* %73, i64 %indvars.iv34.i, i32 0, i64 %indvars.iv.i24
  %78 = load i32* %arrayidx6.i, align 4, !tbaa !0
  %cmp8.i25 = icmp slt i32 %78, %77
  br i1 %cmp8.i25, label %if.then.i26, label %if.else.i

if.then.i26:                                      ; preds = %for.body3.i
  store i32 %78, i32* %amin.i, align 4, !tbaa !0
  br label %for.inc.i30

if.else.i:                                        ; preds = %for.body3.i
  %cmp11.i = icmp sgt i32 %78, %76
  br i1 %cmp11.i, label %if.then12.i, label %for.inc.i30

if.then12.i:                                      ; preds = %if.else.i
  store i32 %78, i32* %amax.i, align 4, !tbaa !0
  br label %for.inc.i30

for.inc.i30:                                      ; preds = %if.then12.i, %if.else.i, %if.then.i26
  %79 = phi i32 [ %76, %if.then.i26 ], [ %78, %if.then12.i ], [ %76, %if.else.i ]
  %80 = phi i32 [ %78, %if.then.i26 ], [ %77, %if.then12.i ], [ %77, %if.else.i ]
  %indvars.iv.next.i27 = add i64 %indvars.iv.i24, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i27 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc15.i, label %for.body3.i

for.inc15.i:                                      ; preds = %for.inc.i30
  %indvars.iv.next35.i = add i64 %indvars.iv34.i, 1
  %lftr.wideiv42 = trunc i64 %indvars.iv.next35.i to i32
  %exitcond43 = icmp eq i32 %lftr.wideiv42, %72
  br i1 %exitcond43, label %min_max.exit, label %for.cond1.preheader.i23

min_max.exit:                                     ; preds = %for.inc15.i, %get_dih_props.exit
  call fastcc void @calc_dihs(%struct.t_xrama* %xr) #7
  ret void
}

; Function Attrs: optsize
declare %struct.t_topology* @read_top(i8*) #1

; Function Attrs: optsize
declare i32 @read_first_x(i32*, i8*, float*, [3 x float]**, [3 x float]*) #1

; Function Attrs: optsize
declare i8* @bsearch(i8*, i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind optsize readonly uwtable
define internal i32 @d_comp(i8* nocapture %a, i8* nocapture %b) #2 {
entry:
  %arrayidx = getelementptr inbounds i8* %a, i64 4
  %0 = bitcast i8* %arrayidx to i32*
  %1 = load i32* %0, align 4, !tbaa !0
  %arrayidx2 = getelementptr inbounds i8* %b, i64 4
  %2 = bitcast i8* %arrayidx2 to i32*
  %3 = load i32* %2, align 4, !tbaa !0
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %cmp7 = icmp eq i32 %1, %3
  br i1 %cmp7, label %if.then8, label %return

if.then8:                                         ; preds = %if.else
  %arrayidx10 = getelementptr inbounds i8* %a, i64 8
  %4 = bitcast i8* %arrayidx10 to i32*
  %5 = load i32* %4, align 4, !tbaa !0
  %arrayidx12 = getelementptr inbounds i8* %b, i64 8
  %6 = bitcast i8* %arrayidx12 to i32*
  %7 = load i32* %6, align 4, !tbaa !0
  %sub = sub nsw i32 %5, %7
  br label %return

return:                                           ; preds = %if.else, %entry, %if.then8
  %retval.0 = phi i32 [ %sub, %if.then8 ], [ -1, %entry ], [ 1, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare i8* @gmx_strdup(i8*) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: optsize
declare void @rm_pbc(%struct.t_idef*, i32, [3 x float]*, [3 x float]*, [3 x float]*) #1

; Function Attrs: optsize
declare float @dih_angle([3 x float]*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize readonly }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}

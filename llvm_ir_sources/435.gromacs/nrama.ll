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
  tail call void @llvm.dbg.value(metadata !{%struct.t_xrama* %xr}, i64 0, metadata !245), !dbg !429
  %traj = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 4, !dbg !430
  %0 = load i32* %traj, align 4, !dbg !430, !tbaa !431
  %t = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 8, !dbg !430
  %natoms = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 5, !dbg !430
  %1 = load i32* %natoms, align 4, !dbg !430, !tbaa !431
  %x = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 9, !dbg !430
  %2 = load [3 x float]** %x, align 8, !dbg !430, !tbaa !434
  %arraydecay = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 10, i64 0, !dbg !430
  %call = tail call i32 @read_next_x(i32 %0, float* %t, i32 %1, [3 x float]* %2, [3 x float]* %arraydecay) #7, !dbg !430
  %tobool = icmp eq i32 %call, 0, !dbg !430
  br i1 %tobool, label %return, label %if.end, !dbg !430

if.end:                                           ; preds = %entry
  tail call fastcc void @calc_dihs(%struct.t_xrama* %xr) #8, !dbg !435
  br label %return, !dbg !436

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !436
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i32 @read_next_x(i32, float*, i32, [3 x float]*, [3 x float]*) #2

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
  call void @llvm.dbg.value(metadata !{%struct.t_xrama* %xr}, i64 0, metadata !391), !dbg !437
  call void @llvm.dbg.declare(metadata !{[3 x float]* %r_ij}, metadata !393), !dbg !438
  call void @llvm.dbg.declare(metadata !{[3 x float]* %r_kj}, metadata !394), !dbg !438
  call void @llvm.dbg.declare(metadata !{[3 x float]* %r_kl}, metadata !395), !dbg !438
  call void @llvm.dbg.declare(metadata !{[3 x float]* %m}, metadata !396), !dbg !438
  call void @llvm.dbg.declare(metadata !{[3 x float]* %n}, metadata !397), !dbg !438
  call void @llvm.dbg.declare(metadata !{float* %cos_phi}, metadata !398), !dbg !439
  call void @llvm.dbg.declare(metadata !{float* %sign}, metadata !399), !dbg !439
  %idef = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 11, !dbg !440
  %0 = load %struct.t_idef** %idef, align 8, !dbg !440, !tbaa !434
  %natoms = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 5, !dbg !440
  %1 = load i32* %natoms, align 4, !dbg !440, !tbaa !431
  %arraydecay = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 10, i64 0, !dbg !440
  %x = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 9, !dbg !440
  %2 = load [3 x float]** %x, align 8, !dbg !440, !tbaa !434
  call void @rm_pbc(%struct.t_idef* %0, i32 %1, [3 x float]* %arraydecay, [3 x float]* %2, [3 x float]* %2) #7, !dbg !440
  call void @llvm.dbg.value(metadata !51, i64 0, metadata !392), !dbg !441
  %ndih = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 0, !dbg !441
  %3 = load i32* %ndih, align 4, !dbg !441, !tbaa !431
  %cmp49 = icmp sgt i32 %3, 0, !dbg !441
  br i1 %cmp49, label %for.body.lr.ph, label %for.end, !dbg !441

for.body.lr.ph:                                   ; preds = %entry
  %dih = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 1, !dbg !443
  %arraydecay27 = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 0, !dbg !445
  %arraydecay28 = getelementptr inbounds [3 x float]* %r_kj, i64 0, i64 0, !dbg !445
  %arraydecay29 = getelementptr inbounds [3 x float]* %r_kl, i64 0, i64 0, !dbg !445
  %arraydecay30 = getelementptr inbounds [3 x float]* %m, i64 0, i64 0, !dbg !445
  %arraydecay31 = getelementptr inbounds [3 x float]* %n, i64 0, i64 0, !dbg !445
  br label %for.body, !dbg !441

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %4 = load %struct.t_dih** %dih, align 8, !dbg !443, !tbaa !434
  %arrayidx4 = getelementptr inbounds %struct.t_dih* %4, i64 %indvars.iv, i32 0, i64 0, !dbg !445
  %5 = load i32* %arrayidx4, align 4, !dbg !445, !tbaa !431
  %idxprom5 = sext i32 %5 to i64, !dbg !445
  %6 = load [3 x float]** %x, align 8, !dbg !445, !tbaa !434
  %arraydecay8 = getelementptr inbounds [3 x float]* %6, i64 %idxprom5, i64 0, !dbg !445
  %arrayidx10 = getelementptr inbounds %struct.t_dih* %4, i64 %indvars.iv, i32 0, i64 1, !dbg !445
  %7 = load i32* %arrayidx10, align 4, !dbg !445, !tbaa !431
  %idxprom11 = sext i32 %7 to i64, !dbg !445
  %arraydecay14 = getelementptr inbounds [3 x float]* %6, i64 %idxprom11, i64 0, !dbg !445
  %arrayidx16 = getelementptr inbounds %struct.t_dih* %4, i64 %indvars.iv, i32 0, i64 2, !dbg !445
  %8 = load i32* %arrayidx16, align 4, !dbg !445, !tbaa !431
  %idxprom17 = sext i32 %8 to i64, !dbg !445
  %arraydecay20 = getelementptr inbounds [3 x float]* %6, i64 %idxprom17, i64 0, !dbg !445
  %arrayidx22 = getelementptr inbounds %struct.t_dih* %4, i64 %indvars.iv, i32 0, i64 3, !dbg !445
  %9 = load i32* %arrayidx22, align 4, !dbg !445, !tbaa !431
  %idxprom23 = sext i32 %9 to i64, !dbg !445
  %arraydecay26 = getelementptr inbounds [3 x float]* %6, i64 %idxprom23, i64 0, !dbg !445
  %call = call float @dih_angle([3 x float]* %arraydecay, float* %arraydecay8, float* %arraydecay14, float* %arraydecay20, float* %arraydecay26, float* %arraydecay27, float* %arraydecay28, float* %arraydecay29, float* %arraydecay30, float* %arraydecay31, float* %cos_phi, float* %sign) #7, !dbg !445
  %ang = getelementptr inbounds %struct.t_dih* %4, i64 %indvars.iv, i32 3, !dbg !445
  store float %call, float* %ang, align 4, !dbg !445, !tbaa !446
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !441
  %10 = load i32* %ndih, align 4, !dbg !441, !tbaa !431
  %11 = trunc i64 %indvars.iv.next to i32, !dbg !441
  %cmp = icmp slt i32 %11, %10, !dbg !441
  br i1 %cmp, label %for.body, label %for.end, !dbg !441

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !447
}

; Function Attrs: nounwind optsize uwtable
define void @init_rama(i8* %infile, i8* %topfile, %struct.t_xrama* %xr) #0 {
entry:
  %key.i = alloca %struct.t_dih, align 4
  %buf.i.i = alloca [12 x i8], align 1
  %ff.i = alloca [5 x i32], align 16
  %t = alloca float, align 4
  call void @llvm.dbg.value(metadata !{i8* %infile}, i64 0, metadata !250), !dbg !448
  call void @llvm.dbg.value(metadata !{i8* %topfile}, i64 0, metadata !251), !dbg !448
  call void @llvm.dbg.value(metadata !{%struct.t_xrama* %xr}, i64 0, metadata !252), !dbg !448
  call void @llvm.dbg.declare(metadata !{float* %t}, metadata !253), !dbg !449
  %call = call %struct.t_topology* @read_top(i8* %topfile) #7, !dbg !450
  store %struct.t_topology* %call, %struct.t_topology** @init_rama.top, align 8, !dbg !450, !tbaa !434
  %0 = bitcast [5 x i32]* %ff.i to i8*, !dbg !451
  call void @llvm.lifetime.start(i64 20, i8* %0) #6, !dbg !451
  call void @llvm.dbg.value(metadata !{%struct.t_xrama* %xr}, i64 0, metadata !453) #6, !dbg !451
  call void @llvm.dbg.declare(metadata !{[5 x i32]* %ff.i}, metadata !362) #6, !dbg !454
  call void @llvm.dbg.value(metadata !51, i64 0, metadata !455) #6, !dbg !456
  %nr.i = getelementptr inbounds %struct.t_topology* %call, i64 0, i32 2, i32 0, !dbg !456
  %1 = load i32* %nr.i, align 4, !dbg !456, !tbaa !431
  %cmp50.i = icmp sgt i32 %1, 0, !dbg !456
  br i1 %cmp50.i, label %for.cond1.preheader.lr.ph.i, label %entry.for.end19_crit_edge.i, !dbg !456

entry.for.end19_crit_edge.i:                      ; preds = %entry
  %npp.pre.i = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 2, !dbg !458
  br label %get_dih.exit, !dbg !456

for.cond1.preheader.lr.ph.i:                      ; preds = %entry
  %atomname.i = getelementptr inbounds %struct.t_topology* %call, i64 0, i32 2, i32 2, !dbg !459
  %arraydecay.i = getelementptr inbounds [5 x i32]* %ff.i, i64 0, i64 0, !dbg !463
  %2 = getelementptr inbounds [12 x i8]* %buf.i.i, i64 0, i64 0, !dbg !464
  %dih.i.i = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 1, !dbg !465
  %ndih.i.i = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 0, !dbg !465
  %pp.i.i = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 3, !dbg !466
  %npp.i.i = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 2, !dbg !466
  %arrayidx51.i.i = getelementptr inbounds [5 x i32]* %ff.i, i64 0, i64 1, !dbg !467
  %atom.i.i = getelementptr inbounds %struct.t_topology* %call, i64 0, i32 2, i32 1, !dbg !467
  %resname.i.i = getelementptr inbounds %struct.t_topology* %call, i64 0, i32 2, i32 6, !dbg !467
  br label %for.cond1.preheader.i, !dbg !456

for.cond1.preheader.i:                            ; preds = %add_xr.exit.i, %for.cond1.preheader.lr.ph.i
  %3 = phi i32 [ %1, %for.cond1.preheader.lr.ph.i ], [ %40, %add_xr.exit.i ]
  %i.051.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %add18.i, %add_xr.exit.i ]
  %4 = load i8**** %atomname.i, align 8, !dbg !459, !tbaa !434
  br label %for.body4.i, !dbg !468

for.body4.i:                                      ; preds = %if.end.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %if.end.i ]
  %j.048.i = phi i32 [ 0, %for.cond1.preheader.i ], [ %inc.i, %if.end.i ]
  %found.047.i = phi i32 [ %i.051.i, %for.cond1.preheader.i ], [ %add.i, %if.end.i ]
  %arrayidx.i = getelementptr inbounds [5 x i8*]* @pp_pat, i64 0, i64 %indvars.iv.i, !dbg !459
  %5 = load i8** %arrayidx.i, align 8, !dbg !459, !tbaa !434
  call void @llvm.dbg.value(metadata !{i8* %5}, i64 0, metadata !469) #6, !dbg !470
  call void @llvm.dbg.value(metadata !{i8*** %4}, i64 0, metadata !471) #6, !dbg !470
  call void @llvm.dbg.value(metadata !{i32 %found.047.i}, i64 0, metadata !472) #6, !dbg !470
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !473) #6, !dbg !470
  call void @llvm.dbg.value(metadata !{i32 %found.047.i}, i64 0, metadata !474) #6, !dbg !475
  %cmp4.i.i = icmp slt i32 %found.047.i, %3, !dbg !475
  br i1 %cmp4.i.i, label %for.body.lr.ph.i.i, label %find_atom.exit.thread.i, !dbg !475

for.body.lr.ph.i.i:                               ; preds = %for.body4.i
  %6 = sext i32 %found.047.i to i64
  br label %for.body.i.i, !dbg !475

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nsw i32 %i.05.i.i, 1, !dbg !475
  %7 = trunc i64 %indvars.iv.next.i.i to i32, !dbg !475
  %cmp.i.i = icmp slt i32 %7, %3, !dbg !475
  br i1 %cmp.i.i, label %for.body.i.i, label %find_atom.exit.thread.i, !dbg !475

for.body.i.i:                                     ; preds = %for.cond.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %6, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.cond.i.i ]
  %i.05.i.i = phi i32 [ %found.047.i, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i ]
  %arrayidx.i.i = getelementptr inbounds i8*** %4, i64 %indvars.iv.i.i, !dbg !477
  %8 = load i8*** %arrayidx.i.i, align 8, !dbg !477, !tbaa !434
  %9 = load i8** %8, align 8, !dbg !477, !tbaa !434
  %call.i.i = call i32 @strcmp(i8* %5, i8* %9) #9, !dbg !477
  %cmp1.i.i = icmp eq i32 %call.i.i, 0, !dbg !477
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1, !dbg !475
  br i1 %cmp1.i.i, label %find_atom.exit.i, label %for.cond.i.i, !dbg !477

find_atom.exit.thread.i:                          ; preds = %for.body4.i, %for.cond.i.i
  %arrayidx736.i = getelementptr inbounds [5 x i32]* %ff.i, i64 0, i64 %indvars.iv.i, !dbg !459
  store i32 -1, i32* %arrayidx736.i, align 4, !dbg !459, !tbaa !431
  br label %for.end.i, !dbg !459

find_atom.exit.i:                                 ; preds = %for.body.i.i
  %arrayidx7.i = getelementptr inbounds [5 x i32]* %ff.i, i64 0, i64 %indvars.iv.i, !dbg !459
  store i32 %i.05.i.i, i32* %arrayidx7.i, align 4, !dbg !459, !tbaa !431
  %cmp8.i = icmp eq i32 %i.05.i.i, -1, !dbg !459
  br i1 %cmp8.i, label %for.end.i, label %if.end.i, !dbg !459

if.end.i:                                         ; preds = %find_atom.exit.i
  %add.i = add nsw i32 %i.05.i.i, 1, !dbg !478
  call void @llvm.dbg.value(metadata !{i32 %add.i}, i64 0, metadata !479) #6, !dbg !478
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !468
  %inc.i = add nsw i32 %j.048.i, 1, !dbg !468
  call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !480) #6, !dbg !468
  %10 = trunc i64 %indvars.iv.next.i to i32, !dbg !468
  %cmp2.i = icmp ult i32 %10, 5, !dbg !468
  br i1 %cmp2.i, label %for.body4.i, label %for.end.i, !dbg !468

for.end.i:                                        ; preds = %if.end.i, %find_atom.exit.i, %find_atom.exit.thread.i
  %j.042.i = phi i32 [ %j.048.i, %find_atom.exit.thread.i ], [ %inc.i, %if.end.i ], [ %j.048.i, %find_atom.exit.i ]
  %cmp13.i = icmp eq i32 %j.042.i, 5, !dbg !481
  br i1 %cmp13.i, label %if.end16.i, label %get_dih.exit, !dbg !481

if.end16.i:                                       ; preds = %for.end.i
  call void @llvm.lifetime.start(i64 12, i8* %2) #6, !dbg !464
  call void @llvm.dbg.value(metadata !{%struct.t_xrama* %xr}, i64 0, metadata !482) #6, !dbg !464
  call void @llvm.dbg.value(metadata !{i32* %arraydecay.i}, i64 0, metadata !483) #6, !dbg !464
  call void @llvm.dbg.declare(metadata !{[12 x i8]* %buf.i.i}, metadata !375) #6, !dbg !484
  %11 = load %struct.t_dih** %dih.i.i, align 8, !dbg !465, !tbaa !434
  %12 = bitcast %struct.t_dih* %11 to i8*, !dbg !465
  %13 = load i32* %ndih.i.i, align 4, !dbg !465, !tbaa !431
  %14 = mul i32 %13, 28, !dbg !465
  %mul.i.i = add i32 %14, 56, !dbg !465
  %call.i31.i = call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 109, i8* %12, i32 %mul.i.i) #7, !dbg !465
  %15 = bitcast i8* %call.i31.i to %struct.t_dih*, !dbg !465
  store %struct.t_dih* %15, %struct.t_dih** %dih.i.i, align 8, !dbg !465, !tbaa !434
  call void @llvm.dbg.value(metadata !51, i64 0, metadata !485) #6, !dbg !486
  br label %for.body.i33.i, !dbg !486

for.body.i33.i:                                   ; preds = %for.body.i33.i, %if.end16.i
  %indvars.iv106.i.i = phi i64 [ 0, %if.end16.i ], [ %indvars.iv.next107.i.i, %for.body.i33.i ]
  %arrayidx.i32.i = getelementptr inbounds [5 x i32]* %ff.i, i64 0, i64 %indvars.iv106.i.i, !dbg !488
  %16 = load i32* %arrayidx.i32.i, align 4, !dbg !488, !tbaa !431
  %17 = load i32* %ndih.i.i, align 4, !dbg !488, !tbaa !431
  %idxprom6.i.i = sext i32 %17 to i64, !dbg !488
  %arrayidx9.i.i = getelementptr inbounds %struct.t_dih* %15, i64 %idxprom6.i.i, i32 0, i64 %indvars.iv106.i.i, !dbg !488
  store i32 %16, i32* %arrayidx9.i.i, align 4, !dbg !488, !tbaa !431
  %indvars.iv.next107.i.i = add i64 %indvars.iv106.i.i, 1, !dbg !486
  %lftr.wideiv51 = trunc i64 %indvars.iv.next107.i.i to i32, !dbg !486
  %exitcond52 = icmp eq i32 %lftr.wideiv51, 4, !dbg !486
  br i1 %exitcond52, label %for.body13.i.i, label %for.body.i33.i, !dbg !486

for.body13.i.i:                                   ; preds = %for.body.i33.i, %for.body13.i.i
  %indvars.iv.i34.i = phi i64 [ %indvars.iv.next.i35.i, %for.body13.i.i ], [ 0, %for.body.i33.i ]
  %indvars.iv.next.i35.i = add i64 %indvars.iv.i34.i, 1, !dbg !489
  %arrayidx16.i.i = getelementptr inbounds [5 x i32]* %ff.i, i64 0, i64 %indvars.iv.next.i35.i, !dbg !491
  %18 = load i32* %arrayidx16.i.i, align 4, !dbg !491, !tbaa !431
  %19 = load i32* %ndih.i.i, align 4, !dbg !491, !tbaa !431
  %add19.i.i = add nsw i32 %19, 1, !dbg !491
  %idxprom20.i.i = sext i32 %add19.i.i to i64, !dbg !491
  %arrayidx24.i.i = getelementptr inbounds %struct.t_dih* %15, i64 %idxprom20.i.i, i32 0, i64 %indvars.iv.i34.i, !dbg !491
  store i32 %18, i32* %arrayidx24.i.i, align 4, !dbg !491, !tbaa !431
  %lftr.wideiv53 = trunc i64 %indvars.iv.next.i35.i to i32, !dbg !489
  %exitcond54 = icmp eq i32 %lftr.wideiv53, 4, !dbg !489
  br i1 %exitcond54, label %add_xr.exit.i, label %for.body13.i.i, !dbg !489

add_xr.exit.i:                                    ; preds = %for.body13.i.i
  %20 = load i32* %ndih.i.i, align 4, !dbg !492, !tbaa !431
  %add29.i.i = add nsw i32 %20, 2, !dbg !492
  store i32 %add29.i.i, i32* %ndih.i.i, align 4, !dbg !492, !tbaa !431
  %21 = load %struct.t_phipsi** %pp.i.i, align 8, !dbg !466, !tbaa !434
  %22 = bitcast %struct.t_phipsi* %21 to i8*, !dbg !466
  %23 = load i32* %npp.i.i, align 4, !dbg !466, !tbaa !431
  %24 = mul i32 %23, 24, !dbg !466
  %mul32.i.i = add i32 %24, 24, !dbg !466
  %call34.i.i = call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 116, i8* %22, i32 %mul32.i.i) #7, !dbg !466
  %25 = bitcast i8* %call34.i.i to %struct.t_phipsi*, !dbg !466
  store %struct.t_phipsi* %25, %struct.t_phipsi** %pp.i.i, align 8, !dbg !466, !tbaa !434
  %26 = load i32* %ndih.i.i, align 4, !dbg !493, !tbaa !431
  %sub.i.i = add nsw i32 %26, -2, !dbg !493
  %27 = load i32* %npp.i.i, align 4, !dbg !493, !tbaa !431
  %idxprom38.i.i = sext i32 %27 to i64, !dbg !493
  %iphi.i.i = getelementptr inbounds %struct.t_phipsi* %25, i64 %idxprom38.i.i, i32 2, !dbg !493
  store i32 %sub.i.i, i32* %iphi.i.i, align 4, !dbg !493, !tbaa !431
  %28 = load i32* %ndih.i.i, align 4, !dbg !494, !tbaa !431
  %sub42.i.i = add nsw i32 %28, -1, !dbg !494
  %29 = load i32* %npp.i.i, align 4, !dbg !494, !tbaa !431
  %idxprom44.i.i = sext i32 %29 to i64, !dbg !494
  %ipsi.i.i = getelementptr inbounds %struct.t_phipsi* %25, i64 %idxprom44.i.i, i32 3, !dbg !494
  store i32 %sub42.i.i, i32* %ipsi.i.i, align 4, !dbg !494, !tbaa !431
  %30 = load i32* %npp.i.i, align 4, !dbg !495, !tbaa !431
  %idxprom48.i.i = sext i32 %30 to i64, !dbg !495
  %bShow.i.i = getelementptr inbounds %struct.t_phipsi* %25, i64 %idxprom48.i.i, i32 0, !dbg !495
  store i32 0, i32* %bShow.i.i, align 4, !dbg !495, !tbaa !431
  %31 = load i32* %arrayidx51.i.i, align 4, !dbg !467, !tbaa !431
  %idxprom52.i.i = sext i32 %31 to i64, !dbg !467
  %32 = load %struct.t_atom** %atom.i.i, align 8, !dbg !467, !tbaa !434
  %resnr.i.i = getelementptr inbounds %struct.t_atom* %32, i64 %idxprom52.i.i, i32 7, !dbg !467
  %33 = load i32* %resnr.i.i, align 4, !dbg !467, !tbaa !431
  %idxprom54.i.i = sext i32 %33 to i64, !dbg !467
  %34 = load i8**** %resname.i.i, align 8, !dbg !467, !tbaa !434
  %arrayidx55.i.i = getelementptr inbounds i8*** %34, i64 %idxprom54.i.i, !dbg !467
  %35 = load i8*** %arrayidx55.i.i, align 8, !dbg !467, !tbaa !434
  %36 = load i8** %35, align 8, !dbg !467, !tbaa !434
  %add61.i.i = add nsw i32 %33, 1, !dbg !467
  %call62.i.i = call i32 (i8*, i8*, ...)* @sprintf(i8* %2, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* %36, i32 %add61.i.i) #7, !dbg !467
  %call64.i.i = call noalias i8* @strdup(i8* %2) #7, !dbg !496
  %37 = load i32* %npp.i.i, align 4, !dbg !496, !tbaa !431
  %idxprom66.i.i = sext i32 %37 to i64, !dbg !496
  %38 = load %struct.t_phipsi** %pp.i.i, align 8, !dbg !496, !tbaa !434
  %label.i.i = getelementptr inbounds %struct.t_phipsi* %38, i64 %idxprom66.i.i, i32 1, !dbg !496
  store i8* %call64.i.i, i8** %label.i.i, align 8, !dbg !496, !tbaa !434
  %inc70.i.i = add nsw i32 %37, 1, !dbg !497
  store i32 %inc70.i.i, i32* %npp.i.i, align 4, !dbg !497, !tbaa !431
  call void @llvm.lifetime.end(i64 12, i8* %2) #6, !dbg !498
  %39 = load i32* %arraydecay.i, align 16, !dbg !499, !tbaa !431
  %add18.i = add nsw i32 %39, 1, !dbg !499
  call void @llvm.dbg.value(metadata !{i32 %add18.i}, i64 0, metadata !455) #6, !dbg !499
  %40 = load i32* %nr.i, align 4, !dbg !456, !tbaa !431
  %cmp.i = icmp slt i32 %add18.i, %40, !dbg !456
  br i1 %cmp.i, label %for.cond1.preheader.i, label %get_dih.exit, !dbg !456

get_dih.exit:                                     ; preds = %for.end.i, %add_xr.exit.i, %entry.for.end19_crit_edge.i
  %npp.pre-phi.i = phi i32* [ %npp.pre.i, %entry.for.end19_crit_edge.i ], [ %npp.i.i, %add_xr.exit.i ], [ %npp.i.i, %for.end.i ], !dbg !458
  %41 = load %struct._IO_FILE** @stderr, align 8, !dbg !458, !tbaa !434
  %42 = load i32* %npp.pre-phi.i, align 4, !dbg !458, !tbaa !431
  %call20.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([31 x i8]* @.str1, i64 0, i64 0), i32 %42) #7, !dbg !458
  call void @llvm.lifetime.end(i64 20, i8* %0) #6, !dbg !500
  %43 = load %struct.t_topology** @init_rama.top, align 8, !dbg !501, !tbaa !434
  %44 = bitcast %struct.t_dih* %key.i to i8*, !dbg !502
  call void @llvm.lifetime.start(i64 28, i8* %44) #6, !dbg !502
  call void @llvm.dbg.value(metadata !{%struct.t_xrama* %xr}, i64 0, metadata !503) #6, !dbg !502
  call void @llvm.dbg.declare(metadata !{%struct.t_dih* %key.i}, metadata !274) #6, !dbg !504
  call void @llvm.dbg.value(metadata !51, i64 0, metadata !505) #6, !dbg !506
  %nr.i12 = getelementptr inbounds %struct.t_topology* %43, i64 0, i32 1, i32 5, i64 8, i32 0, !dbg !506
  %45 = load i32* %nr.i12, align 4, !dbg !506, !tbaa !431
  %cmp71.i = icmp sgt i32 %45, 0, !dbg !506
  br i1 %cmp71.i, label %for.body.lr.ph.i, label %entry.for.cond23.preheader_crit_edge.i, !dbg !506

entry.for.cond23.preheader_crit_edge.i:           ; preds = %get_dih.exit
  %ndih24.pre.i = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 0, !dbg !508
  br label %for.cond23.preheader.i, !dbg !506

for.body.lr.ph.i:                                 ; preds = %get_dih.exit
  %iatoms.i = getelementptr inbounds %struct.t_topology* %43, i64 0, i32 1, i32 5, i64 8, i32 2, !dbg !510
  %46 = load i32** %iatoms.i, align 8, !dbg !510, !tbaa !434
  %functype.i = getelementptr inbounds %struct.t_topology* %43, i64 0, i32 1, i32 3, !dbg !511
  %arrayidx8.i = getelementptr inbounds %struct.t_dih* %key.i, i64 0, i32 0, i64 1, !dbg !513
  %arrayidx11.i = getelementptr inbounds %struct.t_dih* %key.i, i64 0, i32 0, i64 2, !dbg !514
  %dih.i = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 1, !dbg !515
  %ndih.i = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 0, !dbg !515
  %iparams.i = getelementptr inbounds %struct.t_topology* %43, i64 0, i32 1, i32 4, !dbg !516
  br label %for.body.i, !dbg !506

for.cond23.preheader.i:                           ; preds = %if.end.i16, %entry.for.cond23.preheader_crit_edge.i
  %ndih24.pre-phi.i = phi i32* [ %ndih24.pre.i, %entry.for.cond23.preheader_crit_edge.i ], [ %ndih.i, %if.end.i16 ], !dbg !508
  %47 = load i32* %ndih24.pre-phi.i, align 4, !dbg !508, !tbaa !431
  %cmp2569.i = icmp sgt i32 %47, 0, !dbg !508
  br i1 %cmp2569.i, label %for.body27.lr.ph.i, label %get_dih_props.exit, !dbg !508

for.body27.lr.ph.i:                               ; preds = %for.cond23.preheader.i
  %dih29.i = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 1, !dbg !518
  br label %for.body27.i, !dbg !508

for.body.i:                                       ; preds = %if.end.i16, %for.body.lr.ph.i
  %i.073.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add21.i, %if.end.i16 ]
  %ia.072.i = phi i32* [ %46, %for.body.lr.ph.i ], [ %add.ptr.i, %if.end.i16 ]
  %48 = load i32* %ia.072.i, align 4, !dbg !519, !tbaa !431
  call void @llvm.dbg.value(metadata !{i32 %48}, i64 0, metadata !520) #6, !dbg !519
  %idxprom.i = sext i32 %48 to i64, !dbg !511
  %49 = load i32** %functype.i, align 8, !dbg !511, !tbaa !434
  %arrayidx4.i = getelementptr inbounds i32* %49, i64 %idxprom.i, !dbg !511
  %50 = load i32* %arrayidx4.i, align 4, !dbg !511, !tbaa !431
  call void @llvm.dbg.value(metadata !{i32 %50}, i64 0, metadata !521) #6, !dbg !511
  %idxprom5.i = sext i32 %50 to i64, !dbg !522
  %nratoms.i = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %idxprom5.i, i32 2, !dbg !522
  %51 = load i32* %nratoms.i, align 8, !dbg !522, !tbaa !431
  call void @llvm.dbg.value(metadata !{i32 %51}, i64 0, metadata !523) #6, !dbg !522
  %arrayidx7.i13 = getelementptr inbounds i32* %ia.072.i, i64 2, !dbg !513
  %52 = load i32* %arrayidx7.i13, align 4, !dbg !513, !tbaa !431
  store i32 %52, i32* %arrayidx8.i, align 4, !dbg !513, !tbaa !431
  %arrayidx9.i = getelementptr inbounds i32* %ia.072.i, i64 3, !dbg !514
  %53 = load i32* %arrayidx9.i, align 4, !dbg !514, !tbaa !431
  store i32 %53, i32* %arrayidx11.i, align 4, !dbg !514, !tbaa !431
  %54 = load %struct.t_dih** %dih.i, align 8, !dbg !515, !tbaa !434
  %55 = bitcast %struct.t_dih* %54 to i8*, !dbg !515
  %56 = load i32* %ndih.i, align 4, !dbg !515, !tbaa !431
  %conv.i = sext i32 %56 to i64, !dbg !515
  %call.i = call i8* @bsearch(i8* %44, i8* %55, i64 %conv.i, i64 28, i32 (i8*, i8*)* @d_comp) #7, !dbg !515
  %cmp12.i = icmp eq i8* %call.i, null, !dbg !515
  br i1 %cmp12.i, label %if.end.i16, label %if.then.i, !dbg !515

if.then.i:                                        ; preds = %for.body.i
  %57 = load %union.t_iparams** %iparams.i, align 8, !dbg !516, !tbaa !434
  %mult.i = getelementptr inbounds %union.t_iparams* %57, i64 %idxprom.i, i32 0, i32 2, !dbg !516
  %58 = bitcast float* %mult.i to i32*, !dbg !516
  %59 = load i32* %58, align 4, !dbg !516, !tbaa !431
  %mult16.i = getelementptr inbounds i8* %call.i, i64 16, !dbg !516
  %60 = bitcast i8* %mult16.i to i32*, !dbg !516
  store i32 %59, i32* %60, align 4, !dbg !516, !tbaa !431
  %phiA.i = getelementptr inbounds %union.t_iparams* %57, i64 %idxprom.i, i32 0, i32 0, !dbg !524
  %61 = load float* %phiA.i, align 4, !dbg !524, !tbaa !446
  %phi0.i = getelementptr inbounds i8* %call.i, i64 20, !dbg !524
  %62 = bitcast i8* %phi0.i to float*, !dbg !524
  store float %61, float* %62, align 4, !dbg !524, !tbaa !446
  br label %if.end.i16, !dbg !525

if.end.i16:                                       ; preds = %if.then.i, %for.body.i
  %add.i14 = add nsw i32 %51, 1, !dbg !526
  %add21.i = add nsw i32 %add.i14, %i.073.i, !dbg !526
  call void @llvm.dbg.value(metadata !{i32 %add21.i}, i64 0, metadata !505) #6, !dbg !526
  %idx.ext.i = sext i32 %add.i14 to i64, !dbg !527
  %add.ptr.i = getelementptr inbounds i32* %ia.072.i, i64 %idx.ext.i, !dbg !527
  call void @llvm.dbg.value(metadata !{i32* %add.ptr.i}, i64 0, metadata !528) #6, !dbg !527
  %63 = load i32* %nr.i12, align 4, !dbg !506, !tbaa !431
  %cmp.i15 = icmp slt i32 %add21.i, %63, !dbg !506
  br i1 %cmp.i15, label %for.body.i, label %for.cond23.preheader.i, !dbg !506

for.body27.i:                                     ; preds = %for.inc.i, %for.body27.lr.ph.i
  %64 = phi i32 [ %47, %for.body27.lr.ph.i ], [ %69, %for.inc.i ]
  %indvars.iv.i17 = phi i64 [ 0, %for.body27.lr.ph.i ], [ %indvars.iv.next.i18, %for.inc.i ]
  %65 = load %struct.t_dih** %dih29.i, align 8, !dbg !518, !tbaa !434
  %mult31.i = getelementptr inbounds %struct.t_dih* %65, i64 %indvars.iv.i17, i32 1, !dbg !518
  %66 = load i32* %mult31.i, align 4, !dbg !518, !tbaa !431
  %cmp32.i = icmp eq i32 %66, 0, !dbg !518
  br i1 %cmp32.i, label %if.then34.i, label %for.inc.i, !dbg !518

if.then34.i:                                      ; preds = %for.body27.i
  %arrayidx39.i = getelementptr inbounds %struct.t_dih* %65, i64 %indvars.iv.i17, i32 0, i64 1, !dbg !529
  %67 = load i32* %arrayidx39.i, align 4, !dbg !529, !tbaa !431
  %arrayidx44.i = getelementptr inbounds %struct.t_dih* %65, i64 %indvars.iv.i17, i32 0, i64 2, !dbg !529
  %68 = load i32* %arrayidx44.i, align 4, !dbg !529, !tbaa !431
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([44 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68) #7, !dbg !529
  %.pre.i = load i32* %ndih24.pre-phi.i, align 4, !dbg !508, !tbaa !431
  br label %for.inc.i, !dbg !529

for.inc.i:                                        ; preds = %if.then34.i, %for.body27.i
  %69 = phi i32 [ %64, %for.body27.i ], [ %.pre.i, %if.then34.i ], !dbg !508
  %indvars.iv.next.i18 = add i64 %indvars.iv.i17, 1, !dbg !508
  %70 = trunc i64 %indvars.iv.next.i18 to i32, !dbg !508
  %cmp25.i = icmp slt i32 %70, %69, !dbg !508
  br i1 %cmp25.i, label %for.body27.i, label %get_dih_props.exit, !dbg !508

get_dih_props.exit:                               ; preds = %for.inc.i, %for.cond23.preheader.i
  call void @llvm.lifetime.end(i64 28, i8* %44) #6, !dbg !530
  %traj = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 4, !dbg !531
  %x = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 9, !dbg !531
  %arraydecay = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 10, i64 0, !dbg !531
  %call1 = call i32 @read_first_x(i32* %traj, i8* %infile, float* %t, [3 x float]** %x, [3 x float]* %arraydecay) #7, !dbg !531
  %natoms = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 5, !dbg !531
  store i32 %call1, i32* %natoms, align 4, !dbg !531, !tbaa !431
  %71 = load %struct.t_topology** @init_rama.top, align 8, !dbg !532, !tbaa !434
  %idef2 = getelementptr inbounds %struct.t_topology* %71, i64 0, i32 1, !dbg !532
  %idef3 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 11, !dbg !532
  store %struct.t_idef* %idef2, %struct.t_idef** %idef3, align 8, !dbg !532, !tbaa !434
  tail call void @llvm.dbg.value(metadata !{%struct.t_xrama* %xr}, i64 0, metadata !533), !dbg !535
  %amin.i = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 6, !dbg !536
  store i32 %call1, i32* %amin.i, align 4, !dbg !536, !tbaa !431
  %amax.i = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 7, !dbg !537
  store i32 0, i32* %amax.i, align 4, !dbg !537, !tbaa !431
  tail call void @llvm.dbg.value(metadata !51, i64 0, metadata !538), !dbg !539
  %ndih.i19 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 0, !dbg !539
  %72 = load i32* %ndih.i19, align 4, !dbg !539, !tbaa !431
  %cmp32.i20 = icmp sgt i32 %72, 0, !dbg !539
  br i1 %cmp32.i20, label %for.cond1.preheader.lr.ph.i22, label %min_max.exit, !dbg !539

for.cond1.preheader.lr.ph.i22:                    ; preds = %get_dih_props.exit
  %dih.i21 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 1, !dbg !541
  %73 = load %struct.t_dih** %dih.i21, align 8, !dbg !541, !tbaa !434
  br label %for.cond1.preheader.i23, !dbg !539

for.cond1.preheader.i23:                          ; preds = %for.inc15.i, %for.cond1.preheader.lr.ph.i22
  %74 = phi i32 [ 0, %for.cond1.preheader.lr.ph.i22 ], [ %79, %for.inc15.i ]
  %75 = phi i32 [ %call1, %for.cond1.preheader.lr.ph.i22 ], [ %80, %for.inc15.i ]
  %indvars.iv34.i = phi i64 [ 0, %for.cond1.preheader.lr.ph.i22 ], [ %indvars.iv.next35.i, %for.inc15.i ]
  br label %for.body3.i, !dbg !544

for.body3.i:                                      ; preds = %for.inc.i30, %for.cond1.preheader.i23
  %76 = phi i32 [ %74, %for.cond1.preheader.i23 ], [ %79, %for.inc.i30 ]
  %77 = phi i32 [ %75, %for.cond1.preheader.i23 ], [ %80, %for.inc.i30 ], !dbg !541
  %indvars.iv.i24 = phi i64 [ 0, %for.cond1.preheader.i23 ], [ %indvars.iv.next.i27, %for.inc.i30 ]
  %arrayidx6.i = getelementptr inbounds %struct.t_dih* %73, i64 %indvars.iv34.i, i32 0, i64 %indvars.iv.i24, !dbg !541
  %78 = load i32* %arrayidx6.i, align 4, !dbg !541, !tbaa !431
  tail call void @llvm.dbg.value(metadata !{i32 %78}, i64 0, metadata !545), !dbg !541
  %cmp8.i25 = icmp slt i32 %78, %77, !dbg !546
  br i1 %cmp8.i25, label %if.then.i26, label %if.else.i, !dbg !546

if.then.i26:                                      ; preds = %for.body3.i
  store i32 %78, i32* %amin.i, align 4, !dbg !547, !tbaa !431
  br label %for.inc.i30, !dbg !547

if.else.i:                                        ; preds = %for.body3.i
  %cmp11.i = icmp sgt i32 %78, %76, !dbg !548
  br i1 %cmp11.i, label %if.then12.i, label %for.inc.i30, !dbg !548

if.then12.i:                                      ; preds = %if.else.i
  store i32 %78, i32* %amax.i, align 4, !dbg !549, !tbaa !431
  br label %for.inc.i30, !dbg !549

for.inc.i30:                                      ; preds = %if.then12.i, %if.else.i, %if.then.i26
  %79 = phi i32 [ %76, %if.then.i26 ], [ %78, %if.then12.i ], [ %76, %if.else.i ]
  %80 = phi i32 [ %78, %if.then.i26 ], [ %77, %if.then12.i ], [ %77, %if.else.i ]
  %indvars.iv.next.i27 = add i64 %indvars.iv.i24, 1, !dbg !544
  %lftr.wideiv = trunc i64 %indvars.iv.next.i27 to i32, !dbg !544
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !544
  br i1 %exitcond, label %for.inc15.i, label %for.body3.i, !dbg !544

for.inc15.i:                                      ; preds = %for.inc.i30
  %indvars.iv.next35.i = add i64 %indvars.iv34.i, 1, !dbg !539
  %lftr.wideiv42 = trunc i64 %indvars.iv.next35.i to i32, !dbg !539
  %exitcond43 = icmp eq i32 %lftr.wideiv42, %72, !dbg !539
  br i1 %exitcond43, label %min_max.exit, label %for.cond1.preheader.i23, !dbg !539

min_max.exit:                                     ; preds = %for.inc15.i, %get_dih_props.exit
  call fastcc void @calc_dihs(%struct.t_xrama* %xr) #8, !dbg !550
  ret void, !dbg !551
}

; Function Attrs: optsize
declare %struct.t_topology* @read_top(i8*) #2

; Function Attrs: optsize
declare i32 @read_first_x(i32*, i8*, float*, [3 x float]**, [3 x float]*) #2

; Function Attrs: optsize
declare i8* @bsearch(i8*, i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind optsize readonly uwtable
define internal i32 @d_comp(i8* nocapture %a, i8* nocapture %b) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %a}, i64 0, metadata !281), !dbg !552
  tail call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !282), !dbg !552
  %arrayidx = getelementptr inbounds i8* %a, i64 4, !dbg !553
  %0 = bitcast i8* %arrayidx to i32*, !dbg !553
  %1 = load i32* %0, align 4, !dbg !553, !tbaa !431
  %arrayidx2 = getelementptr inbounds i8* %b, i64 4, !dbg !553
  %2 = bitcast i8* %arrayidx2 to i32*, !dbg !553
  %3 = load i32* %2, align 4, !dbg !553, !tbaa !431
  %cmp = icmp slt i32 %1, %3, !dbg !553
  br i1 %cmp, label %return, label %if.else, !dbg !553

if.else:                                          ; preds = %entry
  %cmp7 = icmp eq i32 %1, %3, !dbg !554
  br i1 %cmp7, label %if.then8, label %return, !dbg !554

if.then8:                                         ; preds = %if.else
  %arrayidx10 = getelementptr inbounds i8* %a, i64 8, !dbg !555
  %4 = bitcast i8* %arrayidx10 to i32*, !dbg !555
  %5 = load i32* %4, align 4, !dbg !555, !tbaa !431
  %arrayidx12 = getelementptr inbounds i8* %b, i64 8, !dbg !555
  %6 = bitcast i8* %arrayidx12 to i32*, !dbg !555
  %7 = load i32* %6, align 4, !dbg !555, !tbaa !431
  %sub = sub nsw i32 %5, %7, !dbg !555
  br label %return, !dbg !555

return:                                           ; preds = %if.else, %entry, %if.then8
  %retval.0 = phi i32 [ %sub, %if.then8 ], [ -1, %entry ], [ 1, %if.else ]
  ret i32 %retval.0, !dbg !556
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #4

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: optsize
declare void @rm_pbc(%struct.t_idef*, i32, [3 x float]*, [3 x float]*, [3 x float]*) #2

; Function Attrs: optsize
declare float @dih_angle([3 x float]*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !51, metadata !52, metadata !401, metadata !51, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrama.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/nrama.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 49, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 49, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/idef.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50}
!6 = metadata !{i32 786472, metadata !"F_BONDS", i64 0} ; [ DW_TAG_enumerator ] [F_BONDS :: 0]
!7 = metadata !{i32 786472, metadata !"F_G96BONDS", i64 1} ; [ DW_TAG_enumerator ] [F_G96BONDS :: 1]
!8 = metadata !{i32 786472, metadata !"F_MORSE", i64 2} ; [ DW_TAG_enumerator ] [F_MORSE :: 2]
!9 = metadata !{i32 786472, metadata !"F_CUBICBONDS", i64 3} ; [ DW_TAG_enumerator ] [F_CUBICBONDS :: 3]
!10 = metadata !{i32 786472, metadata !"F_CONNBONDS", i64 4} ; [ DW_TAG_enumerator ] [F_CONNBONDS :: 4]
!11 = metadata !{i32 786472, metadata !"F_HARMONIC", i64 5} ; [ DW_TAG_enumerator ] [F_HARMONIC :: 5]
!12 = metadata !{i32 786472, metadata !"F_ANGLES", i64 6} ; [ DW_TAG_enumerator ] [F_ANGLES :: 6]
!13 = metadata !{i32 786472, metadata !"F_G96ANGLES", i64 7} ; [ DW_TAG_enumerator ] [F_G96ANGLES :: 7]
!14 = metadata !{i32 786472, metadata !"F_PDIHS", i64 8} ; [ DW_TAG_enumerator ] [F_PDIHS :: 8]
!15 = metadata !{i32 786472, metadata !"F_RBDIHS", i64 9} ; [ DW_TAG_enumerator ] [F_RBDIHS :: 9]
!16 = metadata !{i32 786472, metadata !"F_IDIHS", i64 10} ; [ DW_TAG_enumerator ] [F_IDIHS :: 10]
!17 = metadata !{i32 786472, metadata !"F_LJ14", i64 11} ; [ DW_TAG_enumerator ] [F_LJ14 :: 11]
!18 = metadata !{i32 786472, metadata !"F_COUL14", i64 12} ; [ DW_TAG_enumerator ] [F_COUL14 :: 12]
!19 = metadata !{i32 786472, metadata !"F_LJ", i64 13} ; [ DW_TAG_enumerator ] [F_LJ :: 13]
!20 = metadata !{i32 786472, metadata !"F_BHAM", i64 14} ; [ DW_TAG_enumerator ] [F_BHAM :: 14]
!21 = metadata !{i32 786472, metadata !"F_LJLR", i64 15} ; [ DW_TAG_enumerator ] [F_LJLR :: 15]
!22 = metadata !{i32 786472, metadata !"F_DISPCORR", i64 16} ; [ DW_TAG_enumerator ] [F_DISPCORR :: 16]
!23 = metadata !{i32 786472, metadata !"F_SR", i64 17} ; [ DW_TAG_enumerator ] [F_SR :: 17]
!24 = metadata !{i32 786472, metadata !"F_LR", i64 18} ; [ DW_TAG_enumerator ] [F_LR :: 18]
!25 = metadata !{i32 786472, metadata !"F_WPOL", i64 19} ; [ DW_TAG_enumerator ] [F_WPOL :: 19]
!26 = metadata !{i32 786472, metadata !"F_POSRES", i64 20} ; [ DW_TAG_enumerator ] [F_POSRES :: 20]
!27 = metadata !{i32 786472, metadata !"F_DISRES", i64 21} ; [ DW_TAG_enumerator ] [F_DISRES :: 21]
!28 = metadata !{i32 786472, metadata !"F_DISRESVIOL", i64 22} ; [ DW_TAG_enumerator ] [F_DISRESVIOL :: 22]
!29 = metadata !{i32 786472, metadata !"F_ORIRES", i64 23} ; [ DW_TAG_enumerator ] [F_ORIRES :: 23]
!30 = metadata !{i32 786472, metadata !"F_ORIRESDEV", i64 24} ; [ DW_TAG_enumerator ] [F_ORIRESDEV :: 24]
!31 = metadata !{i32 786472, metadata !"F_ANGRES", i64 25} ; [ DW_TAG_enumerator ] [F_ANGRES :: 25]
!32 = metadata !{i32 786472, metadata !"F_ANGRESZ", i64 26} ; [ DW_TAG_enumerator ] [F_ANGRESZ :: 26]
!33 = metadata !{i32 786472, metadata !"F_SHAKE", i64 27} ; [ DW_TAG_enumerator ] [F_SHAKE :: 27]
!34 = metadata !{i32 786472, metadata !"F_SHAKENC", i64 28} ; [ DW_TAG_enumerator ] [F_SHAKENC :: 28]
!35 = metadata !{i32 786472, metadata !"F_SETTLE", i64 29} ; [ DW_TAG_enumerator ] [F_SETTLE :: 29]
!36 = metadata !{i32 786472, metadata !"F_DUMMY2", i64 30} ; [ DW_TAG_enumerator ] [F_DUMMY2 :: 30]
!37 = metadata !{i32 786472, metadata !"F_DUMMY3", i64 31} ; [ DW_TAG_enumerator ] [F_DUMMY3 :: 31]
!38 = metadata !{i32 786472, metadata !"F_DUMMY3FD", i64 32} ; [ DW_TAG_enumerator ] [F_DUMMY3FD :: 32]
!39 = metadata !{i32 786472, metadata !"F_DUMMY3FAD", i64 33} ; [ DW_TAG_enumerator ] [F_DUMMY3FAD :: 33]
!40 = metadata !{i32 786472, metadata !"F_DUMMY3OUT", i64 34} ; [ DW_TAG_enumerator ] [F_DUMMY3OUT :: 34]
!41 = metadata !{i32 786472, metadata !"F_DUMMY4FD", i64 35} ; [ DW_TAG_enumerator ] [F_DUMMY4FD :: 35]
!42 = metadata !{i32 786472, metadata !"F_EQM", i64 36} ; [ DW_TAG_enumerator ] [F_EQM :: 36]
!43 = metadata !{i32 786472, metadata !"F_EPOT", i64 37} ; [ DW_TAG_enumerator ] [F_EPOT :: 37]
!44 = metadata !{i32 786472, metadata !"F_EKIN", i64 38} ; [ DW_TAG_enumerator ] [F_EKIN :: 38]
!45 = metadata !{i32 786472, metadata !"F_ETOT", i64 39} ; [ DW_TAG_enumerator ] [F_ETOT :: 39]
!46 = metadata !{i32 786472, metadata !"F_TEMP", i64 40} ; [ DW_TAG_enumerator ] [F_TEMP :: 40]
!47 = metadata !{i32 786472, metadata !"F_PRES", i64 41} ; [ DW_TAG_enumerator ] [F_PRES :: 41]
!48 = metadata !{i32 786472, metadata !"F_DVDL", i64 42} ; [ DW_TAG_enumerator ] [F_DVDL :: 42]
!49 = metadata !{i32 786472, metadata !"F_DVDLKIN", i64 43} ; [ DW_TAG_enumerator ] [F_DVDLKIN :: 43]
!50 = metadata !{i32 786472, metadata !"F_NRE", i64 44} ; [ DW_TAG_enumerator ] [F_NRE :: 44]
!51 = metadata !{i32 0}
!52 = metadata !{metadata !53, metadata !246, metadata !254, metadata !262, metadata !275, metadata !285, metadata !368, metadata !380, metadata !389}
!53 = metadata !{i32 786478, metadata !1, metadata !54, metadata !"new_data", metadata !"new_data", metadata !"", i32 84, metadata !55, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.t_xrama*)* @new_data, null, null, metadata !244, i32 85} ; [ DW_TAG_subprogram ] [line 84] [def] [scope 85] [new_data]
!54 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrama.c]
!55 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!56 = metadata !{metadata !57, metadata !58}
!57 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!58 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_xrama]
!59 = metadata !{i32 786454, metadata !1, null, metadata !"t_xrama", i32 70, i64 0, i64 0, i64 0, i32 0, metadata !60} ; [ DW_TAG_typedef ] [t_xrama] [line 70, size 0, align 0, offset 0] [from ]
!60 = metadata !{i32 786451, metadata !61, null, metadata !"", i32 58, i64 896, i64 64, i32 0, i32 0, null, metadata !62, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 58, size 896, align 64, offset 0] [from ]
!61 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/nrama.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!62 = metadata !{metadata !63, metadata !64, metadata !79, metadata !80, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !102, metadata !106}
!63 = metadata !{i32 786445, metadata !61, metadata !60, metadata !"ndih", i32 59, i64 32, i64 32, i64 0, i32 0, metadata !57} ; [ DW_TAG_member ] [ndih] [line 59, size 32, align 32, offset 0] [from int]
!64 = metadata !{i32 786445, metadata !61, metadata !60, metadata !"dih", i32 60, i64 64, i64 64, i64 64, i32 0, metadata !65} ; [ DW_TAG_member ] [dih] [line 60, size 64, align 64, offset 64] [from ]
!65 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !66} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_dih]
!66 = metadata !{i32 786454, metadata !61, null, metadata !"t_dih", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_typedef ] [t_dih] [line 56, size 0, align 0, offset 0] [from ]
!67 = metadata !{i32 786451, metadata !61, null, metadata !"", i32 51, i64 224, i64 32, i32 0, i32 0, null, metadata !68, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 51, size 224, align 32, offset 0] [from ]
!68 = metadata !{metadata !69, metadata !74, metadata !75, metadata !78}
!69 = metadata !{i32 786445, metadata !61, metadata !67, metadata !"ai", i32 52, i64 128, i64 32, i64 0, i32 0, metadata !70} ; [ DW_TAG_member ] [ai] [line 52, size 128, align 32, offset 0] [from ]
!70 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !71, metadata !72, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from atom_id]
!71 = metadata !{i32 786454, metadata !61, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!72 = metadata !{metadata !73}
!73 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ] [0, 3]
!74 = metadata !{i32 786445, metadata !61, metadata !67, metadata !"mult", i32 53, i64 32, i64 32, i64 128, i32 0, metadata !57} ; [ DW_TAG_member ] [mult] [line 53, size 32, align 32, offset 128] [from int]
!75 = metadata !{i32 786445, metadata !61, metadata !67, metadata !"phi0", i32 54, i64 32, i64 32, i64 160, i32 0, metadata !76} ; [ DW_TAG_member ] [phi0] [line 54, size 32, align 32, offset 160] [from real]
!76 = metadata !{i32 786454, metadata !61, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!77 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!78 = metadata !{i32 786445, metadata !61, metadata !67, metadata !"ang", i32 55, i64 32, i64 32, i64 192, i32 0, metadata !76} ; [ DW_TAG_member ] [ang] [line 55, size 32, align 32, offset 192] [from real]
!79 = metadata !{i32 786445, metadata !61, metadata !60, metadata !"npp", i32 61, i64 32, i64 32, i64 128, i32 0, metadata !57} ; [ DW_TAG_member ] [npp] [line 61, size 32, align 32, offset 128] [from int]
!80 = metadata !{i32 786445, metadata !61, metadata !60, metadata !"pp", i32 62, i64 64, i64 64, i64 192, i32 0, metadata !81} ; [ DW_TAG_member ] [pp] [line 62, size 64, align 64, offset 192] [from ]
!81 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !82} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_phipsi]
!82 = metadata !{i32 786454, metadata !61, null, metadata !"t_phipsi", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !83} ; [ DW_TAG_typedef ] [t_phipsi] [line 49, size 0, align 0, offset 0] [from ]
!83 = metadata !{i32 786451, metadata !61, null, metadata !"", i32 45, i64 192, i64 64, i32 0, i32 0, null, metadata !84, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 45, size 192, align 64, offset 0] [from ]
!84 = metadata !{metadata !85, metadata !86, metadata !89, metadata !90}
!85 = metadata !{i32 786445, metadata !61, metadata !83, metadata !"bShow", i32 46, i64 32, i64 32, i64 0, i32 0, metadata !57} ; [ DW_TAG_member ] [bShow] [line 46, size 32, align 32, offset 0] [from int]
!86 = metadata !{i32 786445, metadata !61, metadata !83, metadata !"label", i32 47, i64 64, i64 64, i64 64, i32 0, metadata !87} ; [ DW_TAG_member ] [label] [line 47, size 64, align 64, offset 64] [from ]
!87 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!88 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!89 = metadata !{i32 786445, metadata !61, metadata !83, metadata !"iphi", i32 48, i64 32, i64 32, i64 128, i32 0, metadata !57} ; [ DW_TAG_member ] [iphi] [line 48, size 32, align 32, offset 128] [from int]
!90 = metadata !{i32 786445, metadata !61, metadata !83, metadata !"ipsi", i32 48, i64 32, i64 32, i64 160, i32 0, metadata !57} ; [ DW_TAG_member ] [ipsi] [line 48, size 32, align 32, offset 160] [from int]
!91 = metadata !{i32 786445, metadata !61, metadata !60, metadata !"traj", i32 63, i64 32, i64 32, i64 256, i32 0, metadata !57} ; [ DW_TAG_member ] [traj] [line 63, size 32, align 32, offset 256] [from int]
!92 = metadata !{i32 786445, metadata !61, metadata !60, metadata !"natoms", i32 64, i64 32, i64 32, i64 288, i32 0, metadata !57} ; [ DW_TAG_member ] [natoms] [line 64, size 32, align 32, offset 288] [from int]
!93 = metadata !{i32 786445, metadata !61, metadata !60, metadata !"amin", i32 65, i64 32, i64 32, i64 320, i32 0, metadata !57} ; [ DW_TAG_member ] [amin] [line 65, size 32, align 32, offset 320] [from int]
!94 = metadata !{i32 786445, metadata !61, metadata !60, metadata !"amax", i32 65, i64 32, i64 32, i64 352, i32 0, metadata !57} ; [ DW_TAG_member ] [amax] [line 65, size 32, align 32, offset 352] [from int]
!95 = metadata !{i32 786445, metadata !61, metadata !60, metadata !"t", i32 66, i64 32, i64 32, i64 384, i32 0, metadata !76} ; [ DW_TAG_member ] [t] [line 66, size 32, align 32, offset 384] [from real]
!96 = metadata !{i32 786445, metadata !61, metadata !60, metadata !"x", i32 67, i64 64, i64 64, i64 448, i32 0, metadata !97} ; [ DW_TAG_member ] [x] [line 67, size 64, align 64, offset 448] [from ]
!97 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !98} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!98 = metadata !{i32 786454, metadata !61, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !99} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!99 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !76, metadata !100, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!100 = metadata !{metadata !101}
!101 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!102 = metadata !{i32 786445, metadata !61, metadata !60, metadata !"box", i32 68, i64 288, i64 32, i64 512, i32 0, metadata !103} ; [ DW_TAG_member ] [box] [line 68, size 288, align 32, offset 512] [from matrix]
!103 = metadata !{i32 786454, metadata !61, null, metadata !"matrix", i32 103, i64 0, i64 0, i64 0, i32 0, metadata !104} ; [ DW_TAG_typedef ] [matrix] [line 103, size 0, align 0, offset 0] [from ]
!104 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !76, metadata !105, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from real]
!105 = metadata !{metadata !101, metadata !101}
!106 = metadata !{i32 786445, metadata !61, metadata !60, metadata !"idef", i32 69, i64 64, i64 64, i64 832, i32 0, metadata !107} ; [ DW_TAG_member ] [idef] [line 69, size 64, align 64, offset 832] [from ]
!107 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_idef]
!108 = metadata !{i32 786454, metadata !61, null, metadata !"t_idef", i32 188, i64 0, i64 0, i64 0, i32 0, metadata !109} ; [ DW_TAG_typedef ] [t_idef] [line 188, size 0, align 0, offset 0] [from ]
!109 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 179, i64 366336, i64 64, i32 0, i32 0, null, metadata !110, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 179, size 366336, align 64, offset 0] [from ]
!110 = metadata !{metadata !111, metadata !112, metadata !113, metadata !114, metadata !117, metadata !229}
!111 = metadata !{i32 786445, metadata !4, metadata !109, metadata !"ntypes", i32 181, i64 32, i64 32, i64 0, i32 0, metadata !57} ; [ DW_TAG_member ] [ntypes] [line 181, size 32, align 32, offset 0] [from int]
!112 = metadata !{i32 786445, metadata !4, metadata !109, metadata !"nodeid", i32 182, i64 32, i64 32, i64 32, i32 0, metadata !57} ; [ DW_TAG_member ] [nodeid] [line 182, size 32, align 32, offset 32] [from int]
!113 = metadata !{i32 786445, metadata !4, metadata !109, metadata !"atnr", i32 183, i64 32, i64 32, i64 64, i32 0, metadata !57} ; [ DW_TAG_member ] [atnr] [line 183, size 32, align 32, offset 64] [from int]
!114 = metadata !{i32 786445, metadata !4, metadata !109, metadata !"functype", i32 184, i64 64, i64 64, i64 128, i32 0, metadata !115} ; [ DW_TAG_member ] [functype] [line 184, size 64, align 64, offset 128] [from ]
!115 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !116} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_functype]
!116 = metadata !{i32 786454, metadata !4, null, metadata !"t_functype", i32 133, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [t_functype] [line 133, size 0, align 0, offset 0] [from int]
!117 = metadata !{i32 786445, metadata !4, metadata !109, metadata !"iparams", i32 185, i64 64, i64 64, i64 192, i32 0, metadata !118} ; [ DW_TAG_member ] [iparams] [line 185, size 64, align 64, offset 192] [from ]
!118 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !119} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iparams]
!119 = metadata !{i32 786454, metadata !4, null, metadata !"t_iparams", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !120} ; [ DW_TAG_typedef ] [t_iparams] [line 131, size 0, align 0, offset 0] [from ]
!120 = metadata !{i32 786455, metadata !4, null, metadata !"", i32 97, i64 192, i64 32, i64 0, i32 0, null, metadata !121, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 97, size 192, align 32, offset 0] [from ]
!121 = metadata !{metadata !122, metadata !128, metadata !135, metadata !141, metadata !150, metadata !155, metadata !162, metadata !170, metadata !175, metadata !180, metadata !186, metadata !191, metadata !198, metadata !207, metadata !216, metadata !225}
!122 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"bham", i32 105, i64 96, i64 32, i64 0, i32 0, metadata !123} ; [ DW_TAG_member ] [bham] [line 105, size 96, align 32, offset 0] [from ]
!123 = metadata !{i32 786451, metadata !4, metadata !120, metadata !"", i32 105, i64 96, i64 32, i32 0, i32 0, null, metadata !124, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 105, size 96, align 32, offset 0] [from ]
!124 = metadata !{metadata !125, metadata !126, metadata !127}
!125 = metadata !{i32 786445, metadata !4, metadata !123, metadata !"a", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !76} ; [ DW_TAG_member ] [a] [line 105, size 32, align 32, offset 0] [from real]
!126 = metadata !{i32 786445, metadata !4, metadata !123, metadata !"b", i32 105, i64 32, i64 32, i64 32, i32 0, metadata !76} ; [ DW_TAG_member ] [b] [line 105, size 32, align 32, offset 32] [from real]
!127 = metadata !{i32 786445, metadata !4, metadata !123, metadata !"c", i32 105, i64 32, i64 32, i64 64, i32 0, metadata !76} ; [ DW_TAG_member ] [c] [line 105, size 32, align 32, offset 64] [from real]
!128 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"harmonic", i32 106, i64 128, i64 32, i64 0, i32 0, metadata !129} ; [ DW_TAG_member ] [harmonic] [line 106, size 128, align 32, offset 0] [from ]
!129 = metadata !{i32 786451, metadata !4, metadata !120, metadata !"", i32 106, i64 128, i64 32, i32 0, i32 0, null, metadata !130, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 106, size 128, align 32, offset 0] [from ]
!130 = metadata !{metadata !131, metadata !132, metadata !133, metadata !134}
!131 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"rA", i32 106, i64 32, i64 32, i64 0, i32 0, metadata !76} ; [ DW_TAG_member ] [rA] [line 106, size 32, align 32, offset 0] [from real]
!132 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"krA", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !76} ; [ DW_TAG_member ] [krA] [line 106, size 32, align 32, offset 32] [from real]
!133 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"rB", i32 106, i64 32, i64 32, i64 64, i32 0, metadata !76} ; [ DW_TAG_member ] [rB] [line 106, size 32, align 32, offset 64] [from real]
!134 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"krB", i32 106, i64 32, i64 32, i64 96, i32 0, metadata !76} ; [ DW_TAG_member ] [krB] [line 106, size 32, align 32, offset 96] [from real]
!135 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"cubic", i32 108, i64 96, i64 32, i64 0, i32 0, metadata !136} ; [ DW_TAG_member ] [cubic] [line 108, size 96, align 32, offset 0] [from ]
!136 = metadata !{i32 786451, metadata !4, metadata !120, metadata !"", i32 108, i64 96, i64 32, i32 0, i32 0, null, metadata !137, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 108, size 96, align 32, offset 0] [from ]
!137 = metadata !{metadata !138, metadata !139, metadata !140}
!138 = metadata !{i32 786445, metadata !4, metadata !136, metadata !"b0", i32 108, i64 32, i64 32, i64 0, i32 0, metadata !76} ; [ DW_TAG_member ] [b0] [line 108, size 32, align 32, offset 0] [from real]
!139 = metadata !{i32 786445, metadata !4, metadata !136, metadata !"kb", i32 108, i64 32, i64 32, i64 32, i32 0, metadata !76} ; [ DW_TAG_member ] [kb] [line 108, size 32, align 32, offset 32] [from real]
!140 = metadata !{i32 786445, metadata !4, metadata !136, metadata !"kcub", i32 108, i64 32, i64 32, i64 64, i32 0, metadata !76} ; [ DW_TAG_member ] [kcub] [line 108, size 32, align 32, offset 64] [from real]
!141 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"wpol", i32 110, i64 192, i64 32, i64 0, i32 0, metadata !142} ; [ DW_TAG_member ] [wpol] [line 110, size 192, align 32, offset 0] [from ]
!142 = metadata !{i32 786451, metadata !4, metadata !120, metadata !"", i32 110, i64 192, i64 32, i32 0, i32 0, null, metadata !143, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 110, size 192, align 32, offset 0] [from ]
!143 = metadata !{metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149}
!144 = metadata !{i32 786445, metadata !4, metadata !142, metadata !"kx", i32 110, i64 32, i64 32, i64 0, i32 0, metadata !76} ; [ DW_TAG_member ] [kx] [line 110, size 32, align 32, offset 0] [from real]
!145 = metadata !{i32 786445, metadata !4, metadata !142, metadata !"ky", i32 110, i64 32, i64 32, i64 32, i32 0, metadata !76} ; [ DW_TAG_member ] [ky] [line 110, size 32, align 32, offset 32] [from real]
!146 = metadata !{i32 786445, metadata !4, metadata !142, metadata !"kz", i32 110, i64 32, i64 32, i64 64, i32 0, metadata !76} ; [ DW_TAG_member ] [kz] [line 110, size 32, align 32, offset 64] [from real]
!147 = metadata !{i32 786445, metadata !4, metadata !142, metadata !"rOH", i32 110, i64 32, i64 32, i64 96, i32 0, metadata !76} ; [ DW_TAG_member ] [rOH] [line 110, size 32, align 32, offset 96] [from real]
!148 = metadata !{i32 786445, metadata !4, metadata !142, metadata !"rHH", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !76} ; [ DW_TAG_member ] [rHH] [line 110, size 32, align 32, offset 128] [from real]
!149 = metadata !{i32 786445, metadata !4, metadata !142, metadata !"rOD", i32 110, i64 32, i64 32, i64 160, i32 0, metadata !76} ; [ DW_TAG_member ] [rOD] [line 110, size 32, align 32, offset 160] [from real]
!150 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"lj", i32 111, i64 64, i64 32, i64 0, i32 0, metadata !151} ; [ DW_TAG_member ] [lj] [line 111, size 64, align 32, offset 0] [from ]
!151 = metadata !{i32 786451, metadata !4, metadata !120, metadata !"", i32 111, i64 64, i64 32, i32 0, i32 0, null, metadata !152, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 111, size 64, align 32, offset 0] [from ]
!152 = metadata !{metadata !153, metadata !154}
!153 = metadata !{i32 786445, metadata !4, metadata !151, metadata !"c6", i32 111, i64 32, i64 32, i64 0, i32 0, metadata !76} ; [ DW_TAG_member ] [c6] [line 111, size 32, align 32, offset 0] [from real]
!154 = metadata !{i32 786445, metadata !4, metadata !151, metadata !"c12", i32 111, i64 32, i64 32, i64 32, i32 0, metadata !76} ; [ DW_TAG_member ] [c12] [line 111, size 32, align 32, offset 32] [from real]
!155 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"lj14", i32 112, i64 128, i64 32, i64 0, i32 0, metadata !156} ; [ DW_TAG_member ] [lj14] [line 112, size 128, align 32, offset 0] [from ]
!156 = metadata !{i32 786451, metadata !4, metadata !120, metadata !"", i32 112, i64 128, i64 32, i32 0, i32 0, null, metadata !157, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 112, size 128, align 32, offset 0] [from ]
!157 = metadata !{metadata !158, metadata !159, metadata !160, metadata !161}
!158 = metadata !{i32 786445, metadata !4, metadata !156, metadata !"c6A", i32 112, i64 32, i64 32, i64 0, i32 0, metadata !76} ; [ DW_TAG_member ] [c6A] [line 112, size 32, align 32, offset 0] [from real]
!159 = metadata !{i32 786445, metadata !4, metadata !156, metadata !"c12A", i32 112, i64 32, i64 32, i64 32, i32 0, metadata !76} ; [ DW_TAG_member ] [c12A] [line 112, size 32, align 32, offset 32] [from real]
!160 = metadata !{i32 786445, metadata !4, metadata !156, metadata !"c6B", i32 112, i64 32, i64 32, i64 64, i32 0, metadata !76} ; [ DW_TAG_member ] [c6B] [line 112, size 32, align 32, offset 64] [from real]
!161 = metadata !{i32 786445, metadata !4, metadata !156, metadata !"c12B", i32 112, i64 32, i64 32, i64 96, i32 0, metadata !76} ; [ DW_TAG_member ] [c12B] [line 112, size 32, align 32, offset 96] [from real]
!162 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"pdihs", i32 117, i64 160, i64 32, i64 0, i32 0, metadata !163} ; [ DW_TAG_member ] [pdihs] [line 117, size 160, align 32, offset 0] [from ]
!163 = metadata !{i32 786451, metadata !4, metadata !120, metadata !"", i32 117, i64 160, i64 32, i32 0, i32 0, null, metadata !164, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 117, size 160, align 32, offset 0] [from ]
!164 = metadata !{metadata !165, metadata !166, metadata !167, metadata !168, metadata !169}
!165 = metadata !{i32 786445, metadata !4, metadata !163, metadata !"phiA", i32 117, i64 32, i64 32, i64 0, i32 0, metadata !76} ; [ DW_TAG_member ] [phiA] [line 117, size 32, align 32, offset 0] [from real]
!166 = metadata !{i32 786445, metadata !4, metadata !163, metadata !"cpA", i32 117, i64 32, i64 32, i64 32, i32 0, metadata !76} ; [ DW_TAG_member ] [cpA] [line 117, size 32, align 32, offset 32] [from real]
!167 = metadata !{i32 786445, metadata !4, metadata !163, metadata !"mult", i32 117, i64 32, i64 32, i64 64, i32 0, metadata !57} ; [ DW_TAG_member ] [mult] [line 117, size 32, align 32, offset 64] [from int]
!168 = metadata !{i32 786445, metadata !4, metadata !163, metadata !"phiB", i32 117, i64 32, i64 32, i64 96, i32 0, metadata !76} ; [ DW_TAG_member ] [phiB] [line 117, size 32, align 32, offset 96] [from real]
!169 = metadata !{i32 786445, metadata !4, metadata !163, metadata !"cpB", i32 117, i64 32, i64 32, i64 128, i32 0, metadata !76} ; [ DW_TAG_member ] [cpB] [line 117, size 32, align 32, offset 128] [from real]
!170 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"shake", i32 118, i64 64, i64 32, i64 0, i32 0, metadata !171} ; [ DW_TAG_member ] [shake] [line 118, size 64, align 32, offset 0] [from ]
!171 = metadata !{i32 786451, metadata !4, metadata !120, metadata !"", i32 118, i64 64, i64 32, i32 0, i32 0, null, metadata !172, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 118, size 64, align 32, offset 0] [from ]
!172 = metadata !{metadata !173, metadata !174}
!173 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"dA", i32 118, i64 32, i64 32, i64 0, i32 0, metadata !76} ; [ DW_TAG_member ] [dA] [line 118, size 32, align 32, offset 0] [from real]
!174 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"dB", i32 118, i64 32, i64 32, i64 32, i32 0, metadata !76} ; [ DW_TAG_member ] [dB] [line 118, size 32, align 32, offset 32] [from real]
!175 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"settle", i32 123, i64 64, i64 32, i64 0, i32 0, metadata !176} ; [ DW_TAG_member ] [settle] [line 123, size 64, align 32, offset 0] [from ]
!176 = metadata !{i32 786451, metadata !4, metadata !120, metadata !"", i32 123, i64 64, i64 32, i32 0, i32 0, null, metadata !177, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 123, size 64, align 32, offset 0] [from ]
!177 = metadata !{metadata !178, metadata !179}
!178 = metadata !{i32 786445, metadata !4, metadata !176, metadata !"doh", i32 123, i64 32, i64 32, i64 0, i32 0, metadata !76} ; [ DW_TAG_member ] [doh] [line 123, size 32, align 32, offset 0] [from real]
!179 = metadata !{i32 786445, metadata !4, metadata !176, metadata !"dhh", i32 123, i64 32, i64 32, i64 32, i32 0, metadata !76} ; [ DW_TAG_member ] [dhh] [line 123, size 32, align 32, offset 32] [from real]
!180 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"morse", i32 124, i64 96, i64 32, i64 0, i32 0, metadata !181} ; [ DW_TAG_member ] [morse] [line 124, size 96, align 32, offset 0] [from ]
!181 = metadata !{i32 786451, metadata !4, metadata !120, metadata !"", i32 124, i64 96, i64 32, i32 0, i32 0, null, metadata !182, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 124, size 96, align 32, offset 0] [from ]
!182 = metadata !{metadata !183, metadata !184, metadata !185}
!183 = metadata !{i32 786445, metadata !4, metadata !181, metadata !"b0", i32 124, i64 32, i64 32, i64 0, i32 0, metadata !76} ; [ DW_TAG_member ] [b0] [line 124, size 32, align 32, offset 0] [from real]
!184 = metadata !{i32 786445, metadata !4, metadata !181, metadata !"cb", i32 124, i64 32, i64 32, i64 32, i32 0, metadata !76} ; [ DW_TAG_member ] [cb] [line 124, size 32, align 32, offset 32] [from real]
!185 = metadata !{i32 786445, metadata !4, metadata !181, metadata !"beta", i32 124, i64 32, i64 32, i64 64, i32 0, metadata !76} ; [ DW_TAG_member ] [beta] [line 124, size 32, align 32, offset 64] [from real]
!186 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"posres", i32 125, i64 192, i64 32, i64 0, i32 0, metadata !187} ; [ DW_TAG_member ] [posres] [line 125, size 192, align 32, offset 0] [from ]
!187 = metadata !{i32 786451, metadata !4, metadata !120, metadata !"", i32 125, i64 192, i64 32, i32 0, i32 0, null, metadata !188, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 125, size 192, align 32, offset 0] [from ]
!188 = metadata !{metadata !189, metadata !190}
!189 = metadata !{i32 786445, metadata !4, metadata !187, metadata !"pos0", i32 125, i64 96, i64 32, i64 0, i32 0, metadata !99} ; [ DW_TAG_member ] [pos0] [line 125, size 96, align 32, offset 0] [from ]
!190 = metadata !{i32 786445, metadata !4, metadata !187, metadata !"fc", i32 125, i64 96, i64 32, i64 96, i32 0, metadata !99} ; [ DW_TAG_member ] [fc] [line 125, size 96, align 32, offset 96] [from ]
!191 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"rbdihs", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !192} ; [ DW_TAG_member ] [rbdihs] [line 126, size 192, align 32, offset 0] [from ]
!192 = metadata !{i32 786451, metadata !4, metadata !120, metadata !"", i32 126, i64 192, i64 32, i32 0, i32 0, null, metadata !193, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 126, size 192, align 32, offset 0] [from ]
!193 = metadata !{metadata !194}
!194 = metadata !{i32 786445, metadata !4, metadata !192, metadata !"rbc", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !195} ; [ DW_TAG_member ] [rbc] [line 126, size 192, align 32, offset 0] [from ]
!195 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !76, metadata !196, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from real]
!196 = metadata !{metadata !197}
!197 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!198 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"dummy", i32 127, i64 192, i64 32, i64 0, i32 0, metadata !199} ; [ DW_TAG_member ] [dummy] [line 127, size 192, align 32, offset 0] [from ]
!199 = metadata !{i32 786451, metadata !4, metadata !120, metadata !"", i32 127, i64 192, i64 32, i32 0, i32 0, null, metadata !200, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 127, size 192, align 32, offset 0] [from ]
!200 = metadata !{metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206}
!201 = metadata !{i32 786445, metadata !4, metadata !199, metadata !"a", i32 127, i64 32, i64 32, i64 0, i32 0, metadata !76} ; [ DW_TAG_member ] [a] [line 127, size 32, align 32, offset 0] [from real]
!202 = metadata !{i32 786445, metadata !4, metadata !199, metadata !"b", i32 127, i64 32, i64 32, i64 32, i32 0, metadata !76} ; [ DW_TAG_member ] [b] [line 127, size 32, align 32, offset 32] [from real]
!203 = metadata !{i32 786445, metadata !4, metadata !199, metadata !"c", i32 127, i64 32, i64 32, i64 64, i32 0, metadata !76} ; [ DW_TAG_member ] [c] [line 127, size 32, align 32, offset 64] [from real]
!204 = metadata !{i32 786445, metadata !4, metadata !199, metadata !"d", i32 127, i64 32, i64 32, i64 96, i32 0, metadata !76} ; [ DW_TAG_member ] [d] [line 127, size 32, align 32, offset 96] [from real]
!205 = metadata !{i32 786445, metadata !4, metadata !199, metadata !"e", i32 127, i64 32, i64 32, i64 128, i32 0, metadata !76} ; [ DW_TAG_member ] [e] [line 127, size 32, align 32, offset 128] [from real]
!206 = metadata !{i32 786445, metadata !4, metadata !199, metadata !"f", i32 127, i64 32, i64 32, i64 160, i32 0, metadata !76} ; [ DW_TAG_member ] [f] [line 127, size 32, align 32, offset 160] [from real]
!207 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"disres", i32 128, i64 192, i64 32, i64 0, i32 0, metadata !208} ; [ DW_TAG_member ] [disres] [line 128, size 192, align 32, offset 0] [from ]
!208 = metadata !{i32 786451, metadata !4, metadata !120, metadata !"", i32 128, i64 192, i64 32, i32 0, i32 0, null, metadata !209, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 128, size 192, align 32, offset 0] [from ]
!209 = metadata !{metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215}
!210 = metadata !{i32 786445, metadata !4, metadata !208, metadata !"low", i32 128, i64 32, i64 32, i64 0, i32 0, metadata !76} ; [ DW_TAG_member ] [low] [line 128, size 32, align 32, offset 0] [from real]
!211 = metadata !{i32 786445, metadata !4, metadata !208, metadata !"up1", i32 128, i64 32, i64 32, i64 32, i32 0, metadata !76} ; [ DW_TAG_member ] [up1] [line 128, size 32, align 32, offset 32] [from real]
!212 = metadata !{i32 786445, metadata !4, metadata !208, metadata !"up2", i32 128, i64 32, i64 32, i64 64, i32 0, metadata !76} ; [ DW_TAG_member ] [up2] [line 128, size 32, align 32, offset 64] [from real]
!213 = metadata !{i32 786445, metadata !4, metadata !208, metadata !"kfac", i32 128, i64 32, i64 32, i64 96, i32 0, metadata !76} ; [ DW_TAG_member ] [kfac] [line 128, size 32, align 32, offset 96] [from real]
!214 = metadata !{i32 786445, metadata !4, metadata !208, metadata !"type", i32 128, i64 32, i64 32, i64 128, i32 0, metadata !57} ; [ DW_TAG_member ] [type] [line 128, size 32, align 32, offset 128] [from int]
!215 = metadata !{i32 786445, metadata !4, metadata !208, metadata !"label", i32 128, i64 32, i64 32, i64 160, i32 0, metadata !57} ; [ DW_TAG_member ] [label] [line 128, size 32, align 32, offset 160] [from int]
!216 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"orires", i32 129, i64 192, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_member ] [orires] [line 129, size 192, align 32, offset 0] [from ]
!217 = metadata !{i32 786451, metadata !4, metadata !120, metadata !"", i32 129, i64 192, i64 32, i32 0, i32 0, null, metadata !218, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 129, size 192, align 32, offset 0] [from ]
!218 = metadata !{metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224}
!219 = metadata !{i32 786445, metadata !4, metadata !217, metadata !"ex", i32 129, i64 32, i64 32, i64 0, i32 0, metadata !57} ; [ DW_TAG_member ] [ex] [line 129, size 32, align 32, offset 0] [from int]
!220 = metadata !{i32 786445, metadata !4, metadata !217, metadata !"pow", i32 129, i64 32, i64 32, i64 32, i32 0, metadata !57} ; [ DW_TAG_member ] [pow] [line 129, size 32, align 32, offset 32] [from int]
!221 = metadata !{i32 786445, metadata !4, metadata !217, metadata !"label", i32 129, i64 32, i64 32, i64 64, i32 0, metadata !57} ; [ DW_TAG_member ] [label] [line 129, size 32, align 32, offset 64] [from int]
!222 = metadata !{i32 786445, metadata !4, metadata !217, metadata !"c", i32 129, i64 32, i64 32, i64 96, i32 0, metadata !76} ; [ DW_TAG_member ] [c] [line 129, size 32, align 32, offset 96] [from real]
!223 = metadata !{i32 786445, metadata !4, metadata !217, metadata !"obs", i32 129, i64 32, i64 32, i64 128, i32 0, metadata !76} ; [ DW_TAG_member ] [obs] [line 129, size 32, align 32, offset 128] [from real]
!224 = metadata !{i32 786445, metadata !4, metadata !217, metadata !"kfac", i32 129, i64 32, i64 32, i64 160, i32 0, metadata !76} ; [ DW_TAG_member ] [kfac] [line 129, size 32, align 32, offset 160] [from real]
!225 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"generic", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !226} ; [ DW_TAG_member ] [generic] [line 130, size 192, align 32, offset 0] [from ]
!226 = metadata !{i32 786451, metadata !4, metadata !120, metadata !"", i32 130, i64 192, i64 32, i32 0, i32 0, null, metadata !227, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 130, size 192, align 32, offset 0] [from ]
!227 = metadata !{metadata !228}
!228 = metadata !{i32 786445, metadata !4, metadata !226, metadata !"buf", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !195} ; [ DW_TAG_member ] [buf] [line 130, size 192, align 32, offset 0] [from ]
!229 = metadata !{i32 786445, metadata !4, metadata !109, metadata !"il", i32 187, i64 366080, i64 64, i64 256, i32 0, metadata !230} ; [ DW_TAG_member ] [il] [line 187, size 366080, align 64, offset 256] [from ]
!230 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 366080, i64 64, i32 0, i32 0, metadata !231, metadata !242, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 366080, align 64, offset 0] [from t_ilist]
!231 = metadata !{i32 786454, metadata !4, null, metadata !"t_ilist", i32 140, i64 0, i64 0, i64 0, i32 0, metadata !232} ; [ DW_TAG_typedef ] [t_ilist] [line 140, size 0, align 0, offset 0] [from ]
!232 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 135, i64 8320, i64 64, i32 0, i32 0, null, metadata !233, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 135, size 8320, align 64, offset 0] [from ]
!233 = metadata !{metadata !234, metadata !235, metadata !239}
!234 = metadata !{i32 786445, metadata !4, metadata !232, metadata !"nr", i32 137, i64 32, i64 32, i64 0, i32 0, metadata !57} ; [ DW_TAG_member ] [nr] [line 137, size 32, align 32, offset 0] [from int]
!235 = metadata !{i32 786445, metadata !4, metadata !232, metadata !"multinr", i32 138, i64 8192, i64 32, i64 32, i32 0, metadata !236} ; [ DW_TAG_member ] [multinr] [line 138, size 8192, align 32, offset 32] [from ]
!236 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !57, metadata !237, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!237 = metadata !{metadata !238}
!238 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!239 = metadata !{i32 786445, metadata !4, metadata !232, metadata !"iatoms", i32 139, i64 64, i64 64, i64 8256, i32 0, metadata !240} ; [ DW_TAG_member ] [iatoms] [line 139, size 64, align 64, offset 8256] [from ]
!240 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !241} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iatom]
!241 = metadata !{i32 786454, metadata !4, null, metadata !"t_iatom", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [t_iatom] [line 45, size 0, align 0, offset 0] [from atom_id]
!242 = metadata !{metadata !243}
!243 = metadata !{i32 786465, i64 0, i64 44}      ; [ DW_TAG_subrange_type ] [0, 43]
!244 = metadata !{metadata !245}
!245 = metadata !{i32 786689, metadata !53, metadata !"xr", metadata !54, i32 16777300, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xr] [line 84]
!246 = metadata !{i32 786478, metadata !1, metadata !54, metadata !"init_rama", metadata !"init_rama", metadata !"", i32 291, metadata !247, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*, %struct.t_xrama*)* @init_rama, null, null, metadata !249, i32 292} ; [ DW_TAG_subprogram ] [line 291] [def] [scope 292] [init_rama]
!247 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !248, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!248 = metadata !{null, metadata !87, metadata !87, metadata !58}
!249 = metadata !{metadata !250, metadata !251, metadata !252, metadata !253}
!250 = metadata !{i32 786689, metadata !246, metadata !"infile", metadata !54, i32 16777507, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [infile] [line 291]
!251 = metadata !{i32 786689, metadata !246, metadata !"topfile", metadata !54, i32 33554723, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [topfile] [line 291]
!252 = metadata !{i32 786689, metadata !246, metadata !"xr", metadata !54, i32 50331939, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xr] [line 291]
!253 = metadata !{i32 786688, metadata !246, metadata !"t", metadata !54, i32 294, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 294]
!254 = metadata !{i32 786478, metadata !1, metadata !54, metadata !"min_max", metadata !"min_max", metadata !"", i32 243, metadata !255, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !257, i32 244} ; [ DW_TAG_subprogram ] [line 243] [local] [def] [scope 244] [min_max]
!255 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !256, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!256 = metadata !{null, metadata !58}
!257 = metadata !{metadata !258, metadata !259, metadata !260, metadata !261}
!258 = metadata !{i32 786689, metadata !254, metadata !"xr", metadata !54, i32 16777459, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xr] [line 243]
!259 = metadata !{i32 786688, metadata !254, metadata !"ai", metadata !54, i32 245, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai] [line 245]
!260 = metadata !{i32 786688, metadata !254, metadata !"i", metadata !54, i32 245, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 245]
!261 = metadata !{i32 786688, metadata !254, metadata !"j", metadata !54, i32 245, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 245]
!262 = metadata !{i32 786478, metadata !1, metadata !54, metadata !"get_dih_props", metadata !"get_dih_props", metadata !"", i32 259, metadata !263, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !265, i32 260} ; [ DW_TAG_subprogram ] [line 259] [local] [def] [scope 260] [get_dih_props]
!263 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !264, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!264 = metadata !{null, metadata !58, metadata !107}
!265 = metadata !{metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274}
!266 = metadata !{i32 786689, metadata !262, metadata !"xr", metadata !54, i32 16777475, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xr] [line 259]
!267 = metadata !{i32 786689, metadata !262, metadata !"idef", metadata !54, i32 33554691, metadata !107, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idef] [line 259]
!268 = metadata !{i32 786688, metadata !262, metadata !"i", metadata !54, i32 261, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 261]
!269 = metadata !{i32 786688, metadata !262, metadata !"ft", metadata !54, i32 261, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ft] [line 261]
!270 = metadata !{i32 786688, metadata !262, metadata !"ftype", metadata !54, i32 261, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ftype] [line 261]
!271 = metadata !{i32 786688, metadata !262, metadata !"nra", metadata !54, i32 261, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nra] [line 261]
!272 = metadata !{i32 786688, metadata !262, metadata !"ia", metadata !54, i32 262, metadata !240, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ia] [line 262]
!273 = metadata !{i32 786688, metadata !262, metadata !"dd", metadata !54, i32 263, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dd] [line 263]
!274 = metadata !{i32 786688, metadata !262, metadata !"key", metadata !54, i32 263, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key] [line 263]
!275 = metadata !{i32 786478, metadata !1, metadata !54, metadata !"d_comp", metadata !"d_comp", metadata !"", i32 50, metadata !276, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @d_comp, null, null, metadata !280, i32 51} ; [ DW_TAG_subprogram ] [line 50] [local] [def] [scope 51] [d_comp]
!276 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !277, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!277 = metadata !{metadata !57, metadata !278, metadata !278}
!278 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !279} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!279 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!280 = metadata !{metadata !281, metadata !282, metadata !283, metadata !284}
!281 = metadata !{i32 786689, metadata !275, metadata !"a", metadata !54, i32 16777266, metadata !278, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 50]
!282 = metadata !{i32 786689, metadata !275, metadata !"b", metadata !54, i32 33554482, metadata !278, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 50]
!283 = metadata !{i32 786688, metadata !275, metadata !"da", metadata !54, i32 52, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [da] [line 52]
!284 = metadata !{i32 786688, metadata !275, metadata !"db", metadata !54, i32 52, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [db] [line 52]
!285 = metadata !{i32 786478, metadata !1, metadata !54, metadata !"get_dih", metadata !"get_dih", metadata !"", i32 126, metadata !286, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !358, i32 127} ; [ DW_TAG_subprogram ] [line 126] [local] [def] [scope 127] [get_dih]
!286 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !287, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!287 = metadata !{null, metadata !58, metadata !288}
!288 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !289} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atoms]
!289 = metadata !{i32 786454, metadata !290, null, metadata !"t_atoms", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !291} ; [ DW_TAG_typedef ] [t_atoms] [line 94, size 0, align 0, offset 0] [from ]
!290 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/topology.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!291 = metadata !{i32 786451, metadata !292, null, metadata !"", i32 75, i64 10240, i64 64, i32 0, i32 0, null, metadata !293, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 75, size 10240, align 64, offset 0] [from ]
!292 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/atoms.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!293 = metadata !{metadata !294, metadata !295, metadata !315, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !335, metadata !343}
!294 = metadata !{i32 786445, metadata !292, metadata !291, metadata !"nr", i32 76, i64 32, i64 32, i64 0, i32 0, metadata !57} ; [ DW_TAG_member ] [nr] [line 76, size 32, align 32, offset 0] [from int]
!295 = metadata !{i32 786445, metadata !292, metadata !291, metadata !"atom", i32 77, i64 64, i64 64, i64 64, i32 0, metadata !296} ; [ DW_TAG_member ] [atom] [line 77, size 64, align 64, offset 64] [from ]
!296 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !297} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atom]
!297 = metadata !{i32 786454, metadata !292, null, metadata !"t_atom", i32 57, i64 0, i64 0, i64 0, i32 0, metadata !298} ; [ DW_TAG_typedef ] [t_atom] [line 57, size 0, align 0, offset 0] [from ]
!298 = metadata !{i32 786451, metadata !292, null, metadata !"", i32 48, i64 320, i64 32, i32 0, i32 0, null, metadata !299, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 320, align 32, offset 0] [from ]
!299 = metadata !{metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !306, metadata !307, metadata !308, metadata !309, metadata !314}
!300 = metadata !{i32 786445, metadata !292, metadata !298, metadata !"m", i32 49, i64 32, i64 32, i64 0, i32 0, metadata !76} ; [ DW_TAG_member ] [m] [line 49, size 32, align 32, offset 0] [from real]
!301 = metadata !{i32 786445, metadata !292, metadata !298, metadata !"q", i32 49, i64 32, i64 32, i64 32, i32 0, metadata !76} ; [ DW_TAG_member ] [q] [line 49, size 32, align 32, offset 32] [from real]
!302 = metadata !{i32 786445, metadata !292, metadata !298, metadata !"mB", i32 50, i64 32, i64 32, i64 64, i32 0, metadata !76} ; [ DW_TAG_member ] [mB] [line 50, size 32, align 32, offset 64] [from real]
!303 = metadata !{i32 786445, metadata !292, metadata !298, metadata !"qB", i32 50, i64 32, i64 32, i64 96, i32 0, metadata !76} ; [ DW_TAG_member ] [qB] [line 50, size 32, align 32, offset 96] [from real]
!304 = metadata !{i32 786445, metadata !292, metadata !298, metadata !"type", i32 51, i64 16, i64 16, i64 128, i32 0, metadata !305} ; [ DW_TAG_member ] [type] [line 51, size 16, align 16, offset 128] [from unsigned short]
!305 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!306 = metadata !{i32 786445, metadata !292, metadata !298, metadata !"typeB", i32 52, i64 16, i64 16, i64 144, i32 0, metadata !305} ; [ DW_TAG_member ] [typeB] [line 52, size 16, align 16, offset 144] [from unsigned short]
!307 = metadata !{i32 786445, metadata !292, metadata !298, metadata !"ptype", i32 53, i64 32, i64 32, i64 160, i32 0, metadata !57} ; [ DW_TAG_member ] [ptype] [line 53, size 32, align 32, offset 160] [from int]
!308 = metadata !{i32 786445, metadata !292, metadata !298, metadata !"resnr", i32 54, i64 32, i64 32, i64 192, i32 0, metadata !57} ; [ DW_TAG_member ] [resnr] [line 54, size 32, align 32, offset 192] [from int]
!309 = metadata !{i32 786445, metadata !292, metadata !298, metadata !"grpnr", i32 55, i64 72, i64 8, i64 224, i32 0, metadata !310} ; [ DW_TAG_member ] [grpnr] [line 55, size 72, align 8, offset 224] [from ]
!310 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 72, i64 8, i32 0, i32 0, metadata !311, metadata !312, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 72, align 8, offset 0] [from unsigned char]
!311 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!312 = metadata !{metadata !313}
!313 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!314 = metadata !{i32 786445, metadata !292, metadata !298, metadata !"chain", i32 56, i64 8, i64 8, i64 296, i32 0, metadata !311} ; [ DW_TAG_member ] [chain] [line 56, size 8, align 8, offset 296] [from unsigned char]
!315 = metadata !{i32 786445, metadata !292, metadata !291, metadata !"atomname", i32 80, i64 64, i64 64, i64 128, i32 0, metadata !316} ; [ DW_TAG_member ] [atomname] [line 80, size 64, align 64, offset 128] [from ]
!316 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !317} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!317 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!318 = metadata !{i32 786445, metadata !292, metadata !291, metadata !"atomtype", i32 82, i64 64, i64 64, i64 192, i32 0, metadata !316} ; [ DW_TAG_member ] [atomtype] [line 82, size 64, align 64, offset 192] [from ]
!319 = metadata !{i32 786445, metadata !292, metadata !291, metadata !"atomtypeB", i32 84, i64 64, i64 64, i64 256, i32 0, metadata !316} ; [ DW_TAG_member ] [atomtypeB] [line 84, size 64, align 64, offset 256] [from ]
!320 = metadata !{i32 786445, metadata !292, metadata !291, metadata !"nres", i32 86, i64 32, i64 32, i64 320, i32 0, metadata !57} ; [ DW_TAG_member ] [nres] [line 86, size 32, align 32, offset 320] [from int]
!321 = metadata !{i32 786445, metadata !292, metadata !291, metadata !"resname", i32 87, i64 64, i64 64, i64 384, i32 0, metadata !316} ; [ DW_TAG_member ] [resname] [line 87, size 64, align 64, offset 384] [from ]
!322 = metadata !{i32 786445, metadata !292, metadata !291, metadata !"ngrpname", i32 89, i64 32, i64 32, i64 448, i32 0, metadata !57} ; [ DW_TAG_member ] [ngrpname] [line 89, size 32, align 32, offset 448] [from int]
!323 = metadata !{i32 786445, metadata !292, metadata !291, metadata !"grpname", i32 90, i64 64, i64 64, i64 512, i32 0, metadata !316} ; [ DW_TAG_member ] [grpname] [line 90, size 64, align 64, offset 512] [from ]
!324 = metadata !{i32 786445, metadata !292, metadata !291, metadata !"excl", i32 91, i64 8448, i64 64, i64 576, i32 0, metadata !325} ; [ DW_TAG_member ] [excl] [line 91, size 8448, align 64, offset 576] [from t_block]
!325 = metadata !{i32 786454, metadata !292, null, metadata !"t_block", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !326} ; [ DW_TAG_typedef ] [t_block] [line 52, size 0, align 0, offset 0] [from ]
!326 = metadata !{i32 786451, metadata !327, null, metadata !"", i32 36, i64 8448, i64 64, i32 0, i32 0, null, metadata !328, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 8448, align 64, offset 0] [from ]
!327 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/block.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!328 = metadata !{metadata !329, metadata !330, metadata !331, metadata !333, metadata !334}
!329 = metadata !{i32 786445, metadata !327, metadata !326, metadata !"multinr", i32 37, i64 8192, i64 32, i64 0, i32 0, metadata !236} ; [ DW_TAG_member ] [multinr] [line 37, size 8192, align 32, offset 0] [from ]
!330 = metadata !{i32 786445, metadata !327, metadata !326, metadata !"nr", i32 43, i64 32, i64 32, i64 8192, i32 0, metadata !57} ; [ DW_TAG_member ] [nr] [line 43, size 32, align 32, offset 8192] [from int]
!331 = metadata !{i32 786445, metadata !327, metadata !326, metadata !"index", i32 44, i64 64, i64 64, i64 8256, i32 0, metadata !332} ; [ DW_TAG_member ] [index] [line 44, size 64, align 64, offset 8256] [from ]
!332 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !71} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!333 = metadata !{i32 786445, metadata !327, metadata !326, metadata !"nra", i32 45, i64 32, i64 32, i64 8320, i32 0, metadata !57} ; [ DW_TAG_member ] [nra] [line 45, size 32, align 32, offset 8320] [from int]
!334 = metadata !{i32 786445, metadata !327, metadata !326, metadata !"a", i32 46, i64 64, i64 64, i64 8384, i32 0, metadata !332} ; [ DW_TAG_member ] [a] [line 46, size 64, align 64, offset 8384] [from ]
!335 = metadata !{i32 786445, metadata !292, metadata !291, metadata !"grps", i32 92, i64 1152, i64 64, i64 9024, i32 0, metadata !336} ; [ DW_TAG_member ] [grps] [line 92, size 1152, align 64, offset 9024] [from ]
!336 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 64, i32 0, i32 0, metadata !337, metadata !312, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1152, align 64, offset 0] [from t_grps]
!337 = metadata !{i32 786454, metadata !292, null, metadata !"t_grps", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !338} ; [ DW_TAG_typedef ] [t_grps] [line 73, size 0, align 0, offset 0] [from ]
!338 = metadata !{i32 786451, metadata !292, null, metadata !"", i32 70, i64 128, i64 64, i32 0, i32 0, null, metadata !339, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 70, size 128, align 64, offset 0] [from ]
!339 = metadata !{metadata !340, metadata !341}
!340 = metadata !{i32 786445, metadata !292, metadata !338, metadata !"nr", i32 71, i64 32, i64 32, i64 0, i32 0, metadata !57} ; [ DW_TAG_member ] [nr] [line 71, size 32, align 32, offset 0] [from int]
!341 = metadata !{i32 786445, metadata !292, metadata !338, metadata !"nm_ind", i32 72, i64 64, i64 64, i64 64, i32 0, metadata !342} ; [ DW_TAG_member ] [nm_ind] [line 72, size 64, align 64, offset 64] [from ]
!342 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !57} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!343 = metadata !{i32 786445, metadata !292, metadata !291, metadata !"pdbinfo", i32 93, i64 64, i64 64, i64 10176, i32 0, metadata !344} ; [ DW_TAG_member ] [pdbinfo] [line 93, size 64, align 64, offset 10176] [from ]
!344 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !345} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_pdbinfo]
!345 = metadata !{i32 786454, metadata !292, null, metadata !"t_pdbinfo", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !346} ; [ DW_TAG_typedef ] [t_pdbinfo] [line 68, size 0, align 0, offset 0] [from ]
!346 = metadata !{i32 786451, metadata !292, null, metadata !"", i32 59, i64 416, i64 32, i32 0, i32 0, null, metadata !347, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 59, size 416, align 32, offset 0] [from ]
!347 = metadata !{metadata !348, metadata !349, metadata !350, metadata !351, metadata !353, metadata !354, metadata !355, metadata !356}
!348 = metadata !{i32 786445, metadata !292, metadata !346, metadata !"type", i32 60, i64 32, i64 32, i64 0, i32 0, metadata !57} ; [ DW_TAG_member ] [type] [line 60, size 32, align 32, offset 0] [from int]
!349 = metadata !{i32 786445, metadata !292, metadata !346, metadata !"atomnr", i32 61, i64 32, i64 32, i64 32, i32 0, metadata !57} ; [ DW_TAG_member ] [atomnr] [line 61, size 32, align 32, offset 32] [from int]
!350 = metadata !{i32 786445, metadata !292, metadata !346, metadata !"altloc", i32 62, i64 8, i64 8, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [altloc] [line 62, size 8, align 8, offset 64] [from char]
!351 = metadata !{i32 786445, metadata !292, metadata !346, metadata !"pdbresnr", i32 63, i64 48, i64 8, i64 72, i32 0, metadata !352} ; [ DW_TAG_member ] [pdbresnr] [line 63, size 48, align 8, offset 72] [from ]
!352 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 48, i64 8, i32 0, i32 0, metadata !88, metadata !196, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 48, align 8, offset 0] [from char]
!353 = metadata !{i32 786445, metadata !292, metadata !346, metadata !"occup", i32 64, i64 32, i64 32, i64 128, i32 0, metadata !76} ; [ DW_TAG_member ] [occup] [line 64, size 32, align 32, offset 128] [from real]
!354 = metadata !{i32 786445, metadata !292, metadata !346, metadata !"bfac", i32 65, i64 32, i64 32, i64 160, i32 0, metadata !76} ; [ DW_TAG_member ] [bfac] [line 65, size 32, align 32, offset 160] [from real]
!355 = metadata !{i32 786445, metadata !292, metadata !346, metadata !"bAnisotropic", i32 66, i64 32, i64 32, i64 192, i32 0, metadata !57} ; [ DW_TAG_member ] [bAnisotropic] [line 66, size 32, align 32, offset 192] [from int]
!356 = metadata !{i32 786445, metadata !292, metadata !346, metadata !"uij", i32 67, i64 192, i64 32, i64 224, i32 0, metadata !357} ; [ DW_TAG_member ] [uij] [line 67, size 192, align 32, offset 224] [from ]
!357 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !57, metadata !196, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!358 = metadata !{metadata !359, metadata !360, metadata !361, metadata !362, metadata !366, metadata !367}
!359 = metadata !{i32 786689, metadata !285, metadata !"xr", metadata !54, i32 16777342, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xr] [line 126]
!360 = metadata !{i32 786689, metadata !285, metadata !"atoms", metadata !54, i32 33554558, metadata !288, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 126]
!361 = metadata !{i32 786688, metadata !285, metadata !"found", metadata !54, i32 128, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [found] [line 128]
!362 = metadata !{i32 786688, metadata !285, metadata !"ff", metadata !54, i32 128, metadata !363, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ff] [line 128]
!363 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 32, i32 0, i32 0, metadata !57, metadata !364, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 32, offset 0] [from int]
!364 = metadata !{metadata !365}
!365 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!366 = metadata !{i32 786688, metadata !285, metadata !"i", metadata !54, i32 129, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 129]
!367 = metadata !{i32 786688, metadata !285, metadata !"j", metadata !54, i32 129, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 129]
!368 = metadata !{i32 786478, metadata !1, metadata !54, metadata !"add_xr", metadata !"add_xr", metadata !"", i32 104, metadata !369, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !371, i32 105} ; [ DW_TAG_subprogram ] [line 104] [local] [def] [scope 105] [add_xr]
!369 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !370, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!370 = metadata !{null, metadata !58, metadata !342, metadata !288}
!371 = metadata !{metadata !372, metadata !373, metadata !374, metadata !375, metadata !379}
!372 = metadata !{i32 786689, metadata !368, metadata !"xr", metadata !54, i32 16777320, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xr] [line 104]
!373 = metadata !{i32 786689, metadata !368, metadata !"ff", metadata !54, i32 33554536, metadata !342, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ff] [line 104]
!374 = metadata !{i32 786689, metadata !368, metadata !"atoms", metadata !54, i32 50331752, metadata !288, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 104]
!375 = metadata !{i32 786688, metadata !368, metadata !"buf", metadata !54, i32 106, metadata !376, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 106]
!376 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 8, i32 0, i32 0, metadata !88, metadata !377, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 8, offset 0] [from char]
!377 = metadata !{metadata !378}
!378 = metadata !{i32 786465, i64 0, i64 12}      ; [ DW_TAG_subrange_type ] [0, 11]
!379 = metadata !{i32 786688, metadata !368, metadata !"i", metadata !54, i32 107, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 107]
!380 = metadata !{i32 786478, metadata !1, metadata !54, metadata !"find_atom", metadata !"find_atom", metadata !"", i32 94, metadata !381, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !383, i32 95} ; [ DW_TAG_subprogram ] [line 94] [local] [def] [scope 95] [find_atom]
!381 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !382, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!382 = metadata !{metadata !57, metadata !87, metadata !316, metadata !57, metadata !57}
!383 = metadata !{metadata !384, metadata !385, metadata !386, metadata !387, metadata !388}
!384 = metadata !{i32 786689, metadata !380, metadata !"find", metadata !54, i32 16777310, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [find] [line 94]
!385 = metadata !{i32 786689, metadata !380, metadata !"names", metadata !54, i32 33554526, metadata !316, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [names] [line 94]
!386 = metadata !{i32 786689, metadata !380, metadata !"start", metadata !54, i32 50331742, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 94]
!387 = metadata !{i32 786689, metadata !380, metadata !"nr", metadata !54, i32 67108958, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nr] [line 94]
!388 = metadata !{i32 786688, metadata !380, metadata !"i", metadata !54, i32 96, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 96]
!389 = metadata !{i32 786478, metadata !1, metadata !54, metadata !"calc_dihs", metadata !"calc_dihs", metadata !"", i32 66, metadata !255, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_xrama*)* @calc_dihs, null, null, metadata !390, i32 67} ; [ DW_TAG_subprogram ] [line 66] [local] [def] [scope 67] [calc_dihs]
!390 = metadata !{metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400}
!391 = metadata !{i32 786689, metadata !389, metadata !"xr", metadata !54, i32 16777282, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xr] [line 66]
!392 = metadata !{i32 786688, metadata !389, metadata !"i", metadata !54, i32 68, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 68]
!393 = metadata !{i32 786688, metadata !389, metadata !"r_ij", metadata !54, i32 69, metadata !98, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r_ij] [line 69]
!394 = metadata !{i32 786688, metadata !389, metadata !"r_kj", metadata !54, i32 69, metadata !98, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r_kj] [line 69]
!395 = metadata !{i32 786688, metadata !389, metadata !"r_kl", metadata !54, i32 69, metadata !98, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r_kl] [line 69]
!396 = metadata !{i32 786688, metadata !389, metadata !"m", metadata !54, i32 69, metadata !98, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 69]
!397 = metadata !{i32 786688, metadata !389, metadata !"n", metadata !54, i32 69, metadata !98, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 69]
!398 = metadata !{i32 786688, metadata !389, metadata !"cos_phi", metadata !54, i32 70, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cos_phi] [line 70]
!399 = metadata !{i32 786688, metadata !389, metadata !"sign", metadata !54, i32 70, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sign] [line 70]
!400 = metadata !{i32 786688, metadata !389, metadata !"dd", metadata !54, i32 71, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dd] [line 71]
!401 = metadata !{metadata !402, metadata !427}
!402 = metadata !{i32 786484, i32 0, metadata !246, metadata !"top", metadata !"top", metadata !"", metadata !54, i32 293, metadata !403, i32 1, i32 1, %struct.t_topology** @init_rama.top, null} ; [ DW_TAG_variable ] [top] [line 293] [local] [def]
!403 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !404} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_topology]
!404 = metadata !{i32 786454, metadata !1, null, metadata !"t_topology", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !405} ; [ DW_TAG_typedef ] [t_topology] [line 42, size 0, align 0, offset 0] [from ]
!405 = metadata !{i32 786451, metadata !290, null, metadata !"", i32 36, i64 402112, i64 64, i32 0, i32 0, null, metadata !406, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 402112, align 64, offset 0] [from ]
!406 = metadata !{metadata !407, metadata !408, metadata !409, metadata !410, metadata !412}
!407 = metadata !{i32 786445, metadata !290, metadata !405, metadata !"name", i32 37, i64 64, i64 64, i64 0, i32 0, metadata !317} ; [ DW_TAG_member ] [name] [line 37, size 64, align 64, offset 0] [from ]
!408 = metadata !{i32 786445, metadata !290, metadata !405, metadata !"idef", i32 38, i64 366336, i64 64, i64 64, i32 0, metadata !108} ; [ DW_TAG_member ] [idef] [line 38, size 366336, align 64, offset 64] [from t_idef]
!409 = metadata !{i32 786445, metadata !290, metadata !405, metadata !"atoms", i32 39, i64 10240, i64 64, i64 366400, i32 0, metadata !289} ; [ DW_TAG_member ] [atoms] [line 39, size 10240, align 64, offset 366400] [from t_atoms]
!410 = metadata !{i32 786445, metadata !290, metadata !405, metadata !"blocks", i32 40, i64 25344, i64 64, i64 376640, i32 0, metadata !411} ; [ DW_TAG_member ] [blocks] [line 40, size 25344, align 64, offset 376640] [from ]
!411 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 25344, i64 64, i32 0, i32 0, metadata !325, metadata !100, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 25344, align 64, offset 0] [from t_block]
!412 = metadata !{i32 786445, metadata !290, metadata !405, metadata !"symtab", i32 41, i64 128, i64 64, i64 401984, i32 0, metadata !413} ; [ DW_TAG_member ] [symtab] [line 41, size 128, align 64, offset 401984] [from t_symtab]
!413 = metadata !{i32 786454, metadata !290, null, metadata !"t_symtab", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !414} ; [ DW_TAG_typedef ] [t_symtab] [line 46, size 0, align 0, offset 0] [from ]
!414 = metadata !{i32 786451, metadata !415, null, metadata !"", i32 42, i64 128, i64 64, i32 0, i32 0, null, metadata !416, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 42, size 128, align 64, offset 0] [from ]
!415 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/symtab.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!416 = metadata !{metadata !417, metadata !418}
!417 = metadata !{i32 786445, metadata !415, metadata !414, metadata !"nr", i32 44, i64 32, i64 32, i64 0, i32 0, metadata !57} ; [ DW_TAG_member ] [nr] [line 44, size 32, align 32, offset 0] [from int]
!418 = metadata !{i32 786445, metadata !415, metadata !414, metadata !"symbuf", i32 45, i64 64, i64 64, i64 64, i32 0, metadata !419} ; [ DW_TAG_member ] [symbuf] [line 45, size 64, align 64, offset 64] [from ]
!419 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !420} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_symbuf]
!420 = metadata !{i32 786454, metadata !415, null, metadata !"t_symbuf", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !421} ; [ DW_TAG_typedef ] [t_symbuf] [line 40, size 0, align 0, offset 0] [from symbuf]
!421 = metadata !{i32 786451, metadata !415, null, metadata !"symbuf", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !422, i32 0, null, null} ; [ DW_TAG_structure_type ] [symbuf] [line 36, size 192, align 64, offset 0] [from ]
!422 = metadata !{metadata !423, metadata !424, metadata !425}
!423 = metadata !{i32 786445, metadata !415, metadata !421, metadata !"bufsize", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !57} ; [ DW_TAG_member ] [bufsize] [line 37, size 32, align 32, offset 0] [from int]
!424 = metadata !{i32 786445, metadata !415, metadata !421, metadata !"buf", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !317} ; [ DW_TAG_member ] [buf] [line 38, size 64, align 64, offset 64] [from ]
!425 = metadata !{i32 786445, metadata !415, metadata !421, metadata !"next", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !426} ; [ DW_TAG_member ] [next] [line 39, size 64, align 64, offset 128] [from ]
!426 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !421} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from symbuf]
!427 = metadata !{i32 786484, i32 0, null, metadata !"pp_pat", metadata !"pp_pat", metadata !"", metadata !54, i32 47, metadata !428, i32 1, i32 1, [5 x i8*]* @pp_pat, null} ; [ DW_TAG_variable ] [pp_pat] [line 47] [local] [def]
!428 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 320, i64 64, i32 0, i32 0, metadata !87, metadata !364, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 320, align 64, offset 0] [from ]
!429 = metadata !{i32 84, i32 0, metadata !53, null}
!430 = metadata !{i32 86, i32 0, metadata !53, null}
!431 = metadata !{metadata !"int", metadata !432}
!432 = metadata !{metadata !"omnipotent char", metadata !433}
!433 = metadata !{metadata !"Simple C/C++ TBAA"}
!434 = metadata !{metadata !"any pointer", metadata !432}
!435 = metadata !{i32 89, i32 0, metadata !53, null}
!436 = metadata !{i32 91, i32 0, metadata !53, null}
!437 = metadata !{i32 66, i32 0, metadata !389, null}
!438 = metadata !{i32 69, i32 0, metadata !389, null}
!439 = metadata !{i32 70, i32 0, metadata !389, null}
!440 = metadata !{i32 73, i32 0, metadata !389, null}
!441 = metadata !{i32 75, i32 0, metadata !442, null}
!442 = metadata !{i32 786443, metadata !1, metadata !389, i32 75, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrama.c]
!443 = metadata !{i32 76, i32 0, metadata !444, null}
!444 = metadata !{i32 786443, metadata !1, metadata !442, i32 75, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrama.c]
!445 = metadata !{i32 77, i32 0, metadata !444, null}
!446 = metadata !{metadata !"float", metadata !432}
!447 = metadata !{i32 82, i32 0, metadata !389, null}
!448 = metadata !{i32 291, i32 0, metadata !246, null}
!449 = metadata !{i32 294, i32 0, metadata !246, null}
!450 = metadata !{i32 296, i32 0, metadata !246, null}
!451 = metadata !{i32 126, i32 0, metadata !285, metadata !452}
!452 = metadata !{i32 299, i32 0, metadata !246, null}
!453 = metadata !{i32 786689, metadata !285, metadata !"xr", metadata !54, i32 16777342, metadata !58, i32 0, metadata !452} ; [ DW_TAG_arg_variable ] [xr] [line 126]
!454 = metadata !{i32 128, i32 0, metadata !285, metadata !452}
!455 = metadata !{i32 786688, metadata !285, metadata !"i", metadata !54, i32 129, metadata !57, i32 0, metadata !452} ; [ DW_TAG_auto_variable ] [i] [line 129]
!456 = metadata !{i32 131, i32 0, metadata !457, metadata !452}
!457 = metadata !{i32 786443, metadata !1, metadata !285, i32 131, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrama.c]
!458 = metadata !{i32 143, i32 0, metadata !285, metadata !452}
!459 = metadata !{i32 134, i32 0, metadata !460, metadata !452}
!460 = metadata !{i32 786443, metadata !1, metadata !461, i32 133, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrama.c]
!461 = metadata !{i32 786443, metadata !1, metadata !462, i32 133, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrama.c]
!462 = metadata !{i32 786443, metadata !1, metadata !457, i32 131, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrama.c]
!463 = metadata !{i32 140, i32 0, metadata !462, metadata !452}
!464 = metadata !{i32 104, i32 0, metadata !368, metadata !463}
!465 = metadata !{i32 109, i32 0, metadata !368, metadata !463}
!466 = metadata !{i32 116, i32 0, metadata !368, metadata !463}
!467 = metadata !{i32 120, i32 0, metadata !368, metadata !463}
!468 = metadata !{i32 133, i32 0, metadata !461, metadata !452}
!469 = metadata !{i32 786689, metadata !380, metadata !"find", metadata !54, i32 16777310, metadata !87, i32 0, metadata !459} ; [ DW_TAG_arg_variable ] [find] [line 94]
!470 = metadata !{i32 94, i32 0, metadata !380, metadata !459}
!471 = metadata !{i32 786689, metadata !380, metadata !"names", metadata !54, i32 33554526, metadata !316, i32 0, metadata !459} ; [ DW_TAG_arg_variable ] [names] [line 94]
!472 = metadata !{i32 786689, metadata !380, metadata !"start", metadata !54, i32 50331742, metadata !57, i32 0, metadata !459} ; [ DW_TAG_arg_variable ] [start] [line 94]
!473 = metadata !{i32 786689, metadata !380, metadata !"nr", metadata !54, i32 67108958, metadata !57, i32 0, metadata !459} ; [ DW_TAG_arg_variable ] [nr] [line 94]
!474 = metadata !{i32 786688, metadata !380, metadata !"i", metadata !54, i32 96, metadata !57, i32 0, metadata !459} ; [ DW_TAG_auto_variable ] [i] [line 96]
!475 = metadata !{i32 98, i32 0, metadata !476, metadata !459}
!476 = metadata !{i32 786443, metadata !1, metadata !380, i32 98, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrama.c]
!477 = metadata !{i32 99, i32 0, metadata !476, metadata !459}
!478 = metadata !{i32 136, i32 0, metadata !460, metadata !452}
!479 = metadata !{i32 786688, metadata !285, metadata !"found", metadata !54, i32 128, metadata !57, i32 0, metadata !452} ; [ DW_TAG_auto_variable ] [found] [line 128]
!480 = metadata !{i32 786688, metadata !285, metadata !"j", metadata !54, i32 129, metadata !57, i32 0, metadata !452} ; [ DW_TAG_auto_variable ] [j] [line 129]
!481 = metadata !{i32 138, i32 0, metadata !462, metadata !452}
!482 = metadata !{i32 786689, metadata !368, metadata !"xr", metadata !54, i32 16777320, metadata !58, i32 0, metadata !463} ; [ DW_TAG_arg_variable ] [xr] [line 104]
!483 = metadata !{i32 786689, metadata !368, metadata !"ff", metadata !54, i32 33554536, metadata !342, i32 0, metadata !463} ; [ DW_TAG_arg_variable ] [ff] [line 104]
!484 = metadata !{i32 106, i32 0, metadata !368, metadata !463}
!485 = metadata !{i32 786688, metadata !368, metadata !"i", metadata !54, i32 107, metadata !57, i32 0, metadata !463} ; [ DW_TAG_auto_variable ] [i] [line 107]
!486 = metadata !{i32 110, i32 0, metadata !487, metadata !463}
!487 = metadata !{i32 786443, metadata !1, metadata !368, i32 110, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrama.c]
!488 = metadata !{i32 111, i32 0, metadata !487, metadata !463}
!489 = metadata !{i32 112, i32 0, metadata !490, metadata !463}
!490 = metadata !{i32 786443, metadata !1, metadata !368, i32 112, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrama.c]
!491 = metadata !{i32 113, i32 0, metadata !490, metadata !463}
!492 = metadata !{i32 114, i32 0, metadata !368, metadata !463}
!493 = metadata !{i32 117, i32 0, metadata !368, metadata !463}
!494 = metadata !{i32 118, i32 0, metadata !368, metadata !463}
!495 = metadata !{i32 119, i32 0, metadata !368, metadata !463}
!496 = metadata !{i32 122, i32 0, metadata !368, metadata !463}
!497 = metadata !{i32 123, i32 0, metadata !368, metadata !463}
!498 = metadata !{i32 124, i32 0, metadata !368, metadata !463}
!499 = metadata !{i32 141, i32 0, metadata !462, metadata !452}
!500 = metadata !{i32 144, i32 0, metadata !285, metadata !452}
!501 = metadata !{i32 300, i32 0, metadata !246, null}
!502 = metadata !{i32 259, i32 0, metadata !262, metadata !501}
!503 = metadata !{i32 786689, metadata !262, metadata !"xr", metadata !54, i32 16777475, metadata !58, i32 0, metadata !501} ; [ DW_TAG_arg_variable ] [xr] [line 259]
!504 = metadata !{i32 263, i32 0, metadata !262, metadata !501}
!505 = metadata !{i32 786688, metadata !262, metadata !"i", metadata !54, i32 261, metadata !57, i32 0, metadata !501} ; [ DW_TAG_auto_variable ] [i] [line 261]
!506 = metadata !{i32 266, i32 0, metadata !507, metadata !501}
!507 = metadata !{i32 786443, metadata !1, metadata !262, i32 266, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrama.c]
!508 = metadata !{i32 285, i32 0, metadata !509, metadata !501}
!509 = metadata !{i32 786443, metadata !1, metadata !262, i32 285, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrama.c]
!510 = metadata !{i32 265, i32 0, metadata !262, metadata !501}
!511 = metadata !{i32 268, i32 0, metadata !512, metadata !501}
!512 = metadata !{i32 786443, metadata !1, metadata !507, i32 266, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrama.c]
!513 = metadata !{i32 273, i32 0, metadata !512, metadata !501}
!514 = metadata !{i32 274, i32 0, metadata !512, metadata !501}
!515 = metadata !{i32 275, i32 0, metadata !512, metadata !501}
!516 = metadata !{i32 277, i32 0, metadata !517, metadata !501}
!517 = metadata !{i32 786443, metadata !1, metadata !512, i32 276, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrama.c]
!518 = metadata !{i32 286, i32 0, metadata !509, metadata !501}
!519 = metadata !{i32 267, i32 0, metadata !512, metadata !501}
!520 = metadata !{i32 786688, metadata !262, metadata !"ft", metadata !54, i32 261, metadata !57, i32 0, metadata !501} ; [ DW_TAG_auto_variable ] [ft] [line 261]
!521 = metadata !{i32 786688, metadata !262, metadata !"ftype", metadata !54, i32 261, metadata !57, i32 0, metadata !501} ; [ DW_TAG_auto_variable ] [ftype] [line 261]
!522 = metadata !{i32 269, i32 0, metadata !512, metadata !501}
!523 = metadata !{i32 786688, metadata !262, metadata !"nra", metadata !54, i32 261, metadata !57, i32 0, metadata !501} ; [ DW_TAG_auto_variable ] [nra] [line 261]
!524 = metadata !{i32 278, i32 0, metadata !517, metadata !501}
!525 = metadata !{i32 279, i32 0, metadata !517, metadata !501}
!526 = metadata !{i32 281, i32 0, metadata !512, metadata !501}
!527 = metadata !{i32 282, i32 0, metadata !512, metadata !501}
!528 = metadata !{i32 786688, metadata !262, metadata !"ia", metadata !54, i32 262, metadata !240, i32 0, metadata !501} ; [ DW_TAG_auto_variable ] [ia] [line 262]
!529 = metadata !{i32 287, i32 0, metadata !509, metadata !501}
!530 = metadata !{i32 289, i32 0, metadata !262, metadata !501}
!531 = metadata !{i32 301, i32 0, metadata !246, null}
!532 = metadata !{i32 302, i32 0, metadata !246, null}
!533 = metadata !{i32 786689, metadata !254, metadata !"xr", metadata !54, i32 16777459, metadata !58, i32 0, metadata !534} ; [ DW_TAG_arg_variable ] [xr] [line 243]
!534 = metadata !{i32 304, i32 0, metadata !246, null}
!535 = metadata !{i32 243, i32 0, metadata !254, metadata !534}
!536 = metadata !{i32 247, i32 0, metadata !254, metadata !534}
!537 = metadata !{i32 248, i32 0, metadata !254, metadata !534}
!538 = metadata !{i32 786688, metadata !254, metadata !"i", metadata !54, i32 245, metadata !57, i32 0, metadata !534} ; [ DW_TAG_auto_variable ] [i] [line 245]
!539 = metadata !{i32 249, i32 0, metadata !540, metadata !534}
!540 = metadata !{i32 786443, metadata !1, metadata !254, i32 249, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrama.c]
!541 = metadata !{i32 251, i32 0, metadata !542, metadata !534}
!542 = metadata !{i32 786443, metadata !1, metadata !543, i32 250, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrama.c]
!543 = metadata !{i32 786443, metadata !1, metadata !540, i32 250, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrama.c]
!544 = metadata !{i32 250, i32 0, metadata !543, metadata !534}
!545 = metadata !{i32 786688, metadata !254, metadata !"ai", metadata !54, i32 245, metadata !57, i32 0, metadata !534} ; [ DW_TAG_auto_variable ] [ai] [line 245]
!546 = metadata !{i32 252, i32 0, metadata !542, metadata !534}
!547 = metadata !{i32 253, i32 0, metadata !542, metadata !534}
!548 = metadata !{i32 254, i32 0, metadata !542, metadata !534}
!549 = metadata !{i32 255, i32 0, metadata !542, metadata !534}
!550 = metadata !{i32 305, i32 0, metadata !246, null}
!551 = metadata !{i32 306, i32 0, metadata !246, null}
!552 = metadata !{i32 50, i32 0, metadata !275, null}
!553 = metadata !{i32 57, i32 0, metadata !275, null}
!554 = metadata !{i32 59, i32 0, metadata !275, null}
!555 = metadata !{i32 60, i32 0, metadata !275, null}
!556 = metadata !{i32 63, i32 0, metadata !275, null}

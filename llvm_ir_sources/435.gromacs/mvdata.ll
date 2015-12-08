; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/mvdata.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_parm = type { %struct.t_inputrec, [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]] }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
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

@debug = external global %struct._IO_FILE*
@stdlog = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [14 x i8] c"after ld_parm\00", align 1
@.str1 = private unnamed_addr constant [13 x i8] c"after ld_nsb\00", align 1
@.str2 = private unnamed_addr constant [16 x i8] c"after ld_symtab\00", align 1
@.str3 = private unnamed_addr constant [14 x i8] c"after ld_name\00", align 1
@.str4 = private unnamed_addr constant [15 x i8] c"after ld_atoms\00", align 1
@.str5 = private unnamed_addr constant [14 x i8] c"after ld_idef\00", align 1
@.str6 = private unnamed_addr constant [15 x i8] c"after ld_block\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"*x\00", align 1
@.str8 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/mvdata.c\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"*v\00", align 1
@.str10 = private unnamed_addr constant [17 x i8] c"after ld_vectors\00", align 1
@.str11 = private unnamed_addr constant [7 x i8] c"handle\00", align 1
@.str12 = private unnamed_addr constant [15 x i8] c"idef->functype\00", align 1
@.str13 = private unnamed_addr constant [14 x i8] c"idef->iparams\00", align 1
@.str14 = private unnamed_addr constant [14 x i8] c"ilist->iatoms\00", align 1
@.str15 = private unnamed_addr constant [12 x i8] c"atoms->atom\00", align 1
@.str16 = private unnamed_addr constant [15 x i8] c"grps[i].nm_ind\00", align 1
@.str17 = private unnamed_addr constant [4 x i8] c"*nm\00", align 1
@.str18 = private unnamed_addr constant [15 x i8] c"symtab->symbuf\00", align 1
@.str19 = private unnamed_addr constant [20 x i8] c"symtab->symbuf->buf\00", align 1
@.str20 = private unnamed_addr constant [23 x i8] c"symtab->symbuf->buf[i]\00", align 1
@.str21 = private unnamed_addr constant [6 x i8] c"cs->a\00", align 1
@.str22 = private unnamed_addr constant [8 x i8] c"cs->phi\00", align 1
@.str23 = private unnamed_addr constant [8 x i8] c"g->nrdf\00", align 1
@.str24 = private unnamed_addr constant [9 x i8] c"g->tau_t\00", align 1
@.str25 = private unnamed_addr constant [9 x i8] c"g->ref_t\00", align 1
@.str26 = private unnamed_addr constant [7 x i8] c"g->acc\00", align 1
@.str27 = private unnamed_addr constant [11 x i8] c"g->nFreeze\00", align 1
@.str28 = private unnamed_addr constant [11 x i8] c"g->eg_excl\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @ld_data(i32 %left, i32 %right, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, %struct.t_topology* %top, [3 x float]** nocapture %x, [3 x float]** nocapture %v) #0 {
entry:
  %natoms.i80 = alloca i32, align 4
  %name.i = alloca i32, align 4
  %len.i = alloca i32, align 4
  %0 = bitcast %struct.t_parm* %parm to i8*
  call void @_blockrx(i32 %left, i32 1, i32 776, i8* %0) #4
  %opts.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80
  %ngtc.i.i = getelementptr inbounds %struct.t_grpopts* %opts.i, i64 0, i32 0
  %1 = bitcast %struct.t_grpopts* %opts.i to i8*
  call void @_blockrx(i32 %left, i32 1, i32 4, i8* %1) #4
  %ngacc.i.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 1
  %2 = bitcast i32* %ngacc.i.i to i8*
  call void @_blockrx(i32 %left, i32 1, i32 4, i8* %2) #4
  %ngfrz.i.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 2
  %3 = bitcast i32* %ngfrz.i.i to i8*
  call void @_blockrx(i32 %left, i32 1, i32 4, i8* %3) #4
  %ngener.i.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 3
  %4 = bitcast i32* %ngener.i.i to i8*
  call void @_blockrx(i32 %left, i32 1, i32 4, i8* %4) #4
  %5 = load i32* %ngtc.i.i, align 4, !tbaa !0
  %call.i.i = call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str8, i64 0, i64 0), i32 172, i32 %5, i32 4) #4
  %6 = bitcast i8* %call.i.i to float*
  %nrdf.i.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 4
  store float* %6, float** %nrdf.i.i, align 8, !tbaa !3
  %7 = load i32* %ngtc.i.i, align 4, !tbaa !0
  %call3.i.i = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str8, i64 0, i64 0), i32 173, i32 %7, i32 4) #4
  %8 = bitcast i8* %call3.i.i to float*
  %tau_t.i.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 6
  store float* %8, float** %tau_t.i.i, align 8, !tbaa !3
  %9 = load i32* %ngtc.i.i, align 4, !tbaa !0
  %call5.i.i = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str8, i64 0, i64 0), i32 174, i32 %9, i32 4) #4
  %10 = bitcast i8* %call5.i.i to float*
  %ref_t.i.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 5
  store float* %10, float** %ref_t.i.i, align 8, !tbaa !3
  %11 = load i32* %ngacc.i.i, align 4, !tbaa !0
  %call7.i.i = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str8, i64 0, i64 0), i32 175, i32 %11, i32 12) #4
  %12 = bitcast i8* %call7.i.i to [3 x float]*
  %acc.i.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 7
  store [3 x float]* %12, [3 x float]** %acc.i.i, align 8, !tbaa !3
  %13 = load i32* %ngfrz.i.i, align 4, !tbaa !0
  %call9.i.i = call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str8, i64 0, i64 0), i32 176, i32 %13, i32 12) #4
  %14 = bitcast i8* %call9.i.i to [3 x i32]*
  %nFreeze.i.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 8
  store [3 x i32]* %14, [3 x i32]** %nFreeze.i.i, align 8, !tbaa !3
  %15 = load i32* %ngener.i.i, align 4, !tbaa !0
  %mul.i.i = mul nsw i32 %15, %15
  %call12.i.i = call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str8, i64 0, i64 0), i32 177, i32 %mul.i.i, i32 4) #4
  %16 = bitcast i8* %call12.i.i to i32*
  %eg_excl.i.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 9
  store i32* %16, i32** %eg_excl.i.i, align 8, !tbaa !3
  %17 = load i32* %ngtc.i.i, align 4, !tbaa !0
  %mul14.i.i = shl i32 %17, 2
  %18 = load float** %nrdf.i.i, align 8, !tbaa !3
  %19 = bitcast float* %18 to i8*
  call void @_blockrx(i32 %left, i32 1, i32 %mul14.i.i, i8* %19) #4
  %20 = load i32* %ngtc.i.i, align 4, !tbaa !0
  %mul19.i.i = shl i32 %20, 2
  %21 = load float** %tau_t.i.i, align 8, !tbaa !3
  %22 = bitcast float* %21 to i8*
  call void @_blockrx(i32 %left, i32 1, i32 %mul19.i.i, i8* %22) #4
  %23 = load i32* %ngtc.i.i, align 4, !tbaa !0
  %mul24.i.i = shl i32 %23, 2
  %24 = load float** %ref_t.i.i, align 8, !tbaa !3
  %25 = bitcast float* %24 to i8*
  call void @_blockrx(i32 %left, i32 1, i32 %mul24.i.i, i8* %25) #4
  %26 = load i32* %ngacc.i.i, align 4, !tbaa !0
  %mul29.i.i = mul i32 %26, 12
  %27 = load [3 x float]** %acc.i.i, align 8, !tbaa !3
  %28 = bitcast [3 x float]* %27 to i8*
  call void @_blockrx(i32 %left, i32 1, i32 %mul29.i.i, i8* %28) #4
  %29 = load i32* %ngfrz.i.i, align 4, !tbaa !0
  %mul34.i.i = mul i32 %29, 12
  %30 = load [3 x i32]** %nFreeze.i.i, align 8, !tbaa !3
  %31 = bitcast [3 x i32]* %30 to i8*
  call void @_blockrx(i32 %left, i32 1, i32 %mul34.i.i, i8* %31) #4
  %32 = load i32* %ngener.i.i, align 4, !tbaa !0
  %mul39.i.i = shl i32 %32, 2
  %mul41.i.i = mul i32 %mul39.i.i, %32
  %33 = load i32** %eg_excl.i.i, align 8, !tbaa !3
  %34 = bitcast i32* %33 to i8*
  call void @_blockrx(i32 %left, i32 1, i32 %mul41.i.i, i8* %34) #4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 81, i64 %indvars.iv.i
  call fastcc void @ld_cosines(i32 %left, %struct.t_cosines* %arrayidx.i) #4
  %arrayidx4.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 82, i64 %indvars.iv.i
  call fastcc void @ld_cosines(i32 %left, %struct.t_cosines* %arrayidx4.i) #4
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv89 = trunc i64 %indvars.iv.next.i to i32
  %exitcond90 = icmp eq i32 %lftr.wideiv89, 3
  br i1 %exitcond90, label %ld_parm.exit, label %for.body.i

ld_parm.exit:                                     ; preds = %for.body.i
  %35 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool = icmp eq %struct._IO_FILE* %35, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %ld_parm.exit
  %36 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %37 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %36)
  br label %if.end

if.end:                                           ; preds = %ld_parm.exit, %if.then
  %nnodes.i = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1
  %38 = bitcast i32* %nnodes.i to i8*
  call void @_blockrx(i32 %left, i32 1, i32 4, i8* %38) #4
  %shift.i = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 5
  %39 = bitcast i32* %shift.i to i8*
  call void @_blockrx(i32 %left, i32 1, i32 4, i8* %39) #4
  %bshift.i = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 6
  %40 = bitcast i32* %bshift.i to i8*
  call void @_blockrx(i32 %left, i32 1, i32 4, i8* %40) #4
  %nstDlb.i = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 4
  %41 = bitcast i32* %nstDlb.i to i8*
  call void @_blockrx(i32 %left, i32 1, i32 4, i8* %41) #4
  %cgtotal.i = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 2
  %42 = bitcast i32* %cgtotal.i to i8*
  call void @_blockrx(i32 %left, i32 1, i32 4, i8* %42) #4
  %natoms.i = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  %43 = bitcast i32* %natoms.i to i8*
  call void @_blockrx(i32 %left, i32 1, i32 4, i8* %43) #4
  %arraydecay.i = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 0
  %44 = bitcast i32* %arraydecay.i to i8*
  call void @_blockrx(i32 %left, i32 1, i32 1024, i8* %44) #4
  %arraydecay1.i = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 0
  %45 = bitcast i32* %arraydecay1.i to i8*
  call void @_blockrx(i32 %left, i32 1, i32 1024, i8* %45) #4
  %arraydecay2.i = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 0
  %46 = bitcast i32* %arraydecay2.i to i8*
  call void @_blockrx(i32 %left, i32 1, i32 1024, i8* %46) #4
  %arraydecay3.i = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 0
  %47 = bitcast i32* %arraydecay3.i to i8*
  call void @_blockrx(i32 %left, i32 1, i32 1024, i8* %47) #4
  %48 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._IO_FILE* %48, null
  br i1 %tobool1, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %49 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %50 = call i64 @fwrite(i8* getelementptr inbounds ([13 x i8]* @.str1, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %49)
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then2
  %symtab = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 4
  %51 = bitcast i32* %len.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #3
  %nr1.i = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 0
  %52 = bitcast %struct.t_symtab* %symtab to i8*
  call void @_blockrx(i32 %left, i32 1, i32 4, i8* %52) #4
  %53 = load i32* %nr1.i, align 4, !tbaa !0
  %call.i = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str8, i64 0, i64 0), i32 94, i32 1, i32 24) #4
  %54 = bitcast i8* %call.i to %struct.symbuf*
  %symbuf.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 4, i32 1
  store %struct.symbuf* %54, %struct.symbuf** %symbuf.i, align 8, !tbaa !3
  %bufsize.i = bitcast i8* %call.i to i32*
  store i32 %53, i32* %bufsize.i, align 4, !tbaa !0
  %call4.i = call i8* @save_calloc(i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str8, i64 0, i64 0), i32 96, i32 %53, i32 8) #4
  %55 = bitcast i8* %call4.i to i8**
  %56 = load %struct.symbuf** %symbuf.i, align 8, !tbaa !3
  %buf.i = getelementptr inbounds %struct.symbuf* %56, i64 0, i32 1
  store i8** %55, i8*** %buf.i, align 8, !tbaa !3
  %cmp27.i = icmp sgt i32 %53, 0
  br i1 %cmp27.i, label %for.body.i61, label %ld_symtab.exit

for.body.i61:                                     ; preds = %if.end4, %for.body.i61
  %indvars.iv.i56 = phi i64 [ %indvars.iv.next.i58, %for.body.i61 ], [ 0, %if.end4 ]
  call void @_blockrx(i32 %left, i32 1, i32 4, i8* %51) #4
  %57 = load i32* %len.i, align 4, !tbaa !0
  %call6.i = call i8* @save_calloc(i8* getelementptr inbounds ([23 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str8, i64 0, i64 0), i32 100, i32 %57, i32 1) #4
  %58 = load %struct.symbuf** %symbuf.i, align 8, !tbaa !3
  %buf8.i = getelementptr inbounds %struct.symbuf* %58, i64 0, i32 1
  %59 = load i8*** %buf8.i, align 8, !tbaa !3
  %arrayidx.i57 = getelementptr inbounds i8** %59, i64 %indvars.iv.i56
  store i8* %call6.i, i8** %arrayidx.i57, align 8, !tbaa !3
  %60 = load i32* %len.i, align 4, !tbaa !0
  %61 = load %struct.symbuf** %symbuf.i, align 8, !tbaa !3
  %buf12.i = getelementptr inbounds %struct.symbuf* %61, i64 0, i32 1
  %62 = load i8*** %buf12.i, align 8, !tbaa !3
  %arrayidx13.i = getelementptr inbounds i8** %62, i64 %indvars.iv.i56
  %63 = load i8** %arrayidx13.i, align 8, !tbaa !3
  call void @_blockrx(i32 %left, i32 1, i32 %60, i8* %63) #4
  %indvars.iv.next.i58 = add i64 %indvars.iv.i56, 1
  %lftr.wideiv87 = trunc i64 %indvars.iv.next.i58 to i32
  %exitcond88 = icmp eq i32 %lftr.wideiv87, %53
  br i1 %exitcond88, label %ld_symtab.exit, label %for.body.i61

ld_symtab.exit:                                   ; preds = %for.body.i61, %if.end4
  call void @llvm.lifetime.end(i64 4, i8* %51) #3
  %64 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool5 = icmp eq %struct._IO_FILE* %64, null
  br i1 %tobool5, label %if.end8, label %if.then6

if.then6:                                         ; preds = %ld_symtab.exit
  %65 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %66 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %65)
  br label %if.end8

if.end8:                                          ; preds = %ld_symtab.exit, %if.then6
  %67 = bitcast i32* %name.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #3
  call void @_blockrx(i32 %left, i32 1, i32 4, i8* %67) #4
  %68 = load i32* %name.i, align 4, !tbaa !0
  %call.i62 = call i8** @get_symtab_handle(%struct.t_symtab* %symtab, i32 %68) #4
  call void @llvm.lifetime.end(i64 4, i8* %67) #3
  %name = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0
  store i8** %call.i62, i8*** %name, align 8, !tbaa !3
  %69 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool11 = icmp eq %struct._IO_FILE* %69, null
  br i1 %tobool11, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end8
  %70 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %71 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %70)
  br label %if.end14

if.end14:                                         ; preds = %if.end8, %if.then12
  %atoms = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2
  %nr.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %72 = bitcast %struct.t_atoms* %atoms to i8*
  call void @_blockrx(i32 %left, i32 1, i32 4, i8* %72) #4
  %73 = load i32* %nr.i, align 4, !tbaa !0
  %call.i63 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str8, i64 0, i64 0), i32 125, i32 %73, i32 40) #4
  %74 = bitcast i8* %call.i63 to %struct.t_atom*
  %atom.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1
  store %struct.t_atom* %74, %struct.t_atom** %atom.i, align 8, !tbaa !3
  %75 = load i32* %nr.i, align 4, !tbaa !0
  %mul.i = mul i32 %75, 40
  call void @_blockrx(i32 %left, i32 1, i32 %mul.i, i8* %call.i63) #4
  %atomname.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 2
  %call5.i = call fastcc i32 @ld_strings(i32 %left, %struct.t_symtab* %symtab, i8**** %atomname.i) #4
  %resname.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 6
  %call6.i64 = call fastcc i32 @ld_strings(i32 %left, %struct.t_symtab* %symtab, i8**** %resname.i) #4
  %nres.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 5
  store i32 %call6.i64, i32* %nres.i, align 4, !tbaa !0
  %grpname.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 8
  %call7.i = call fastcc i32 @ld_strings(i32 %left, %struct.t_symtab* %symtab, i8**** %grpname.i) #4
  %ngrpname.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 7
  store i32 %call7.i, i32* %ngrpname.i, align 4, !tbaa !0
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %if.end14
  %indvars.iv48.i.i = phi i64 [ 0, %if.end14 ], [ %indvars.iv.next49.i.i, %for.body.i.i ]
  %arrayidx.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv48.i.i
  %nr.i.i = getelementptr inbounds %struct.t_grps* %arrayidx.i.i, i64 0, i32 0
  %76 = bitcast %struct.t_grps* %arrayidx.i.i to i8*
  call void @_blockrx(i32 %left, i32 1, i32 4, i8* %76) #4
  %77 = load i32* %nr.i.i, align 4, !tbaa !0
  %call.i.i65 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str8, i64 0, i64 0), i32 111, i32 %77, i32 4) #4
  %78 = bitcast i8* %call.i.i65 to i32*
  %nm_ind.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv48.i.i, i32 1
  store i32* %78, i32** %nm_ind.i.i, align 8, !tbaa !3
  %79 = load i32* %nr.i.i, align 4, !tbaa !0
  %mul.i.i66 = shl i32 %79, 2
  call void @_blockrx(i32 %left, i32 1, i32 %mul.i.i66, i8* %call.i.i65) #4
  %indvars.iv.next49.i.i = add i64 %indvars.iv48.i.i, 1
  %lftr.wideiv85 = trunc i64 %indvars.iv.next49.i.i to i32
  %exitcond86 = icmp eq i32 %lftr.wideiv85, 9
  br i1 %exitcond86, label %ld_atoms.exit, label %for.body.i.i

ld_atoms.exit:                                    ; preds = %for.body.i.i
  %excl.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 9
  call void @ld_block(i32 %left, %struct.t_block* %excl.i) #4
  %80 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool16 = icmp eq %struct._IO_FILE* %80, null
  br i1 %tobool16, label %if.end19, label %if.then17

if.then17:                                        ; preds = %ld_atoms.exit
  %81 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %82 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str4, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %81)
  br label %if.end19

if.end19:                                         ; preds = %ld_atoms.exit, %if.then17
  %idef = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1
  %ntypes.i = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 0
  %83 = bitcast %struct.t_idef* %idef to i8*
  call void @_blockrx(i32 %left, i32 1, i32 4, i8* %83) #4
  %atnr.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 2
  %84 = bitcast i32* %atnr.i to i8*
  call void @_blockrx(i32 %left, i32 1, i32 4, i8* %84) #4
  %85 = load i32* %ntypes.i, align 4, !tbaa !0
  %call.i69 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str8, i64 0, i64 0), i32 158, i32 %85, i32 4) #4
  %86 = bitcast i8* %call.i69 to i32*
  %functype.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 3
  store i32* %86, i32** %functype.i, align 8, !tbaa !3
  %87 = load i32* %ntypes.i, align 4, !tbaa !0
  %call3.i = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str8, i64 0, i64 0), i32 159, i32 %87, i32 24) #4
  %88 = bitcast i8* %call3.i to %union.t_iparams*
  %iparams.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 4
  store %union.t_iparams* %88, %union.t_iparams** %iparams.i, align 8, !tbaa !3
  %89 = load i32* %ntypes.i, align 4, !tbaa !0
  %mul.i70 = shl i32 %89, 2
  %90 = load i32** %functype.i, align 8, !tbaa !3
  %91 = bitcast i32* %90 to i8*
  call void @_blockrx(i32 %left, i32 1, i32 %mul.i70, i8* %91) #4
  %92 = load i32* %ntypes.i, align 4, !tbaa !0
  %mul9.i = mul i32 %92, 24
  %93 = load %union.t_iparams** %iparams.i, align 8, !tbaa !3
  %94 = bitcast %union.t_iparams* %93 to i8*
  call void @_blockrx(i32 %left, i32 1, i32 %mul9.i, i8* %94) #4
  br label %for.body.i79

for.body.i79:                                     ; preds = %for.body.i79, %if.end19
  %indvars.iv.i71 = phi i64 [ 0, %if.end19 ], [ %indvars.iv.next.i76, %for.body.i79 ]
  %arrayidx.i72 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv.i71
  %nr.i.i73 = getelementptr inbounds %struct.t_ilist* %arrayidx.i72, i64 0, i32 0
  %95 = bitcast %struct.t_ilist* %arrayidx.i72 to i8*
  call void @_blockrx(i32 %left, i32 1, i32 4, i8* %95) #4
  %arraydecay.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv.i71, i32 1, i64 0
  %96 = bitcast i32* %arraydecay.i.i to i8*
  call void @_blockrx(i32 %left, i32 1, i32 1024, i8* %96) #4
  %97 = load i32* %nr.i.i73, align 4, !tbaa !0
  %call.i.i74 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str8, i64 0, i64 0), i32 148, i32 %97, i32 4) #4
  %98 = bitcast i8* %call.i.i74 to i32*
  %iatoms.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv.i71, i32 2
  store i32* %98, i32** %iatoms.i.i, align 8, !tbaa !3
  %99 = load i32* %nr.i.i73, align 4, !tbaa !0
  %mul.i.i75 = shl i32 %99, 2
  call void @_blockrx(i32 %left, i32 1, i32 %mul.i.i75, i8* %call.i.i74) #4
  %indvars.iv.next.i76 = add i64 %indvars.iv.i71, 1
  %lftr.wideiv83 = trunc i64 %indvars.iv.next.i76 to i32
  %exitcond84 = icmp eq i32 %lftr.wideiv83, 44
  br i1 %exitcond84, label %ld_idef.exit, label %for.body.i79

ld_idef.exit:                                     ; preds = %for.body.i79
  %100 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool20 = icmp eq %struct._IO_FILE* %100, null
  br i1 %tobool20, label %for.body, label %if.then21

if.then21:                                        ; preds = %ld_idef.exit
  %101 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %102 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %101)
  br label %for.body

for.body:                                         ; preds = %if.then21, %ld_idef.exit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %ld_idef.exit ], [ 0, %if.then21 ]
  %arrayidx = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv
  call void @ld_block(i32 %left, %struct.t_block* %arrayidx) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %103 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool24 = icmp eq %struct._IO_FILE* %103, null
  br i1 %tobool24, label %if.end27, label %if.then25

if.then25:                                        ; preds = %for.end
  %104 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %105 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %104)
  br label %if.end27

if.end27:                                         ; preds = %for.end, %if.then25
  %106 = load i32* %nr.i, align 4, !tbaa !0
  %call29 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str8, i64 0, i64 0), i32 229, i32 %106, i32 12) #4
  %107 = bitcast i8* %call29 to [3 x float]*
  store [3 x float]* %107, [3 x float]** %x, align 8, !tbaa !3
  %108 = load i32* %nr.i, align 4, !tbaa !0
  %call32 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str8, i64 0, i64 0), i32 230, i32 %108, i32 12) #4
  %109 = bitcast i8* %call32 to [3 x float]*
  store [3 x float]* %109, [3 x float]** %v, align 8, !tbaa !3
  %110 = load [3 x float]** %x, align 8, !tbaa !3
  %111 = bitcast i32* %natoms.i80 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %111) #3
  call void @_blockrx(i32 %left, i32 1, i32 4, i8* %111) #4
  %112 = load i32* %natoms.i80, align 4, !tbaa !0
  %mul.i81 = mul i32 %112, 12
  %113 = bitcast [3 x float]* %110 to i8*
  call void @_blockrx(i32 %left, i32 1, i32 %mul.i81, i8* %113) #4
  %114 = load i32* %natoms.i80, align 4, !tbaa !0
  %mul3.i = mul i32 %114, 12
  call void @_blockrx(i32 %left, i32 1, i32 %mul3.i, i8* %call32) #4
  call void @llvm.lifetime.end(i64 4, i8* %111) #3
  %115 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool33 = icmp eq %struct._IO_FILE* %115, null
  br i1 %tobool33, label %if.end36, label %if.then34

if.then34:                                        ; preds = %if.end27
  %116 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %117 = call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str10, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %116)
  br label %if.end36

if.end36:                                         ; preds = %if.end27, %if.then34
  ret void
}

; Function Attrs: optsize
declare void @ld_block(i32, %struct.t_block*) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @mv_data(i32 %left, i32 %right, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, %struct.t_topology* %top, [3 x float]* %x, [3 x float]* %v) #0 {
entry:
  %natoms.addr.i = alloca i32, align 4
  %nr.i = alloca i32, align 4
  %handle.i = alloca i32, align 4
  %len.i = alloca i32, align 4
  %0 = bitcast %struct.t_parm* %parm to i8*
  call void @_blocktx(i32 %right, i32 1, i32 776, i8* %0) #4
  %opts.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80
  %ngtc.i.i = getelementptr inbounds %struct.t_grpopts* %opts.i, i64 0, i32 0
  %1 = bitcast %struct.t_grpopts* %opts.i to i8*
  call void @_blocktx(i32 %right, i32 1, i32 4, i8* %1) #4
  %ngacc.i.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 1
  %2 = bitcast i32* %ngacc.i.i to i8*
  call void @_blocktx(i32 %right, i32 1, i32 4, i8* %2) #4
  %ngfrz.i.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 2
  %3 = bitcast i32* %ngfrz.i.i to i8*
  call void @_blocktx(i32 %right, i32 1, i32 4, i8* %3) #4
  %ngener.i.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 3
  %4 = bitcast i32* %ngener.i.i to i8*
  call void @_blocktx(i32 %right, i32 1, i32 4, i8* %4) #4
  %5 = load i32* %ngtc.i.i, align 4, !tbaa !0
  %mul.i.i = shl i32 %5, 2
  %nrdf.i.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 4
  %6 = load float** %nrdf.i.i, align 8, !tbaa !3
  %7 = bitcast float* %6 to i8*
  call void @_blocktx(i32 %right, i32 1, i32 %mul.i.i, i8* %7) #4
  %8 = load i32* %ngtc.i.i, align 4, !tbaa !0
  %mul5.i.i = shl i32 %8, 2
  %tau_t.i.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 6
  %9 = load float** %tau_t.i.i, align 8, !tbaa !3
  %10 = bitcast float* %9 to i8*
  call void @_blocktx(i32 %right, i32 1, i32 %mul5.i.i, i8* %10) #4
  %11 = load i32* %ngtc.i.i, align 4, !tbaa !0
  %mul9.i.i = shl i32 %11, 2
  %ref_t.i.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 5
  %12 = load float** %ref_t.i.i, align 8, !tbaa !3
  %13 = bitcast float* %12 to i8*
  call void @_blocktx(i32 %right, i32 1, i32 %mul9.i.i, i8* %13) #4
  %14 = load i32* %ngacc.i.i, align 4, !tbaa !0
  %mul13.i.i = mul i32 %14, 12
  %acc.i.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 7
  %15 = load [3 x float]** %acc.i.i, align 8, !tbaa !3
  %16 = bitcast [3 x float]* %15 to i8*
  call void @_blocktx(i32 %right, i32 1, i32 %mul13.i.i, i8* %16) #4
  %17 = load i32* %ngfrz.i.i, align 4, !tbaa !0
  %mul17.i.i = mul i32 %17, 12
  %nFreeze.i.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 8
  %18 = load [3 x i32]** %nFreeze.i.i, align 8, !tbaa !3
  %19 = bitcast [3 x i32]* %18 to i8*
  call void @_blocktx(i32 %right, i32 1, i32 %mul17.i.i, i8* %19) #4
  %20 = load i32* %ngener.i.i, align 4, !tbaa !0
  %mul21.i.i = shl i32 %20, 2
  %mul23.i.i = mul i32 %mul21.i.i, %20
  %eg_excl.i.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 9
  %21 = load i32** %eg_excl.i.i, align 8, !tbaa !3
  %22 = bitcast i32* %21 to i8*
  call void @_blocktx(i32 %right, i32 1, i32 %mul23.i.i, i8* %22) #4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 81, i64 %indvars.iv.i
  call fastcc void @mv_cosines(i32 %right, %struct.t_cosines* %arrayidx.i) #4
  %arrayidx4.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 82, i64 %indvars.iv.i
  call fastcc void @mv_cosines(i32 %right, %struct.t_cosines* %arrayidx4.i) #4
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv44 = trunc i64 %indvars.iv.next.i to i32
  %exitcond45 = icmp eq i32 %lftr.wideiv44, 3
  br i1 %exitcond45, label %mv_parm.exit, label %for.body.i

mv_parm.exit:                                     ; preds = %for.body.i
  %nnodes.i = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1
  %23 = bitcast i32* %nnodes.i to i8*
  call void @_blocktx(i32 %right, i32 1, i32 4, i8* %23) #4
  %shift.i = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 5
  %24 = bitcast i32* %shift.i to i8*
  call void @_blocktx(i32 %right, i32 1, i32 4, i8* %24) #4
  %bshift.i = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 6
  %25 = bitcast i32* %bshift.i to i8*
  call void @_blocktx(i32 %right, i32 1, i32 4, i8* %25) #4
  %nstDlb.i = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 4
  %26 = bitcast i32* %nstDlb.i to i8*
  call void @_blocktx(i32 %right, i32 1, i32 4, i8* %26) #4
  %cgtotal.i = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 2
  %27 = bitcast i32* %cgtotal.i to i8*
  call void @_blocktx(i32 %right, i32 1, i32 4, i8* %27) #4
  %natoms.i = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  %28 = bitcast i32* %natoms.i to i8*
  call void @_blocktx(i32 %right, i32 1, i32 4, i8* %28) #4
  %arraydecay.i = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 0
  %29 = bitcast i32* %arraydecay.i to i8*
  call void @_blocktx(i32 %right, i32 1, i32 1024, i8* %29) #4
  %arraydecay1.i = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 0
  %30 = bitcast i32* %arraydecay1.i to i8*
  call void @_blocktx(i32 %right, i32 1, i32 1024, i8* %30) #4
  %arraydecay2.i = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 0
  %31 = bitcast i32* %arraydecay2.i to i8*
  call void @_blocktx(i32 %right, i32 1, i32 1024, i8* %31) #4
  %arraydecay3.i = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 0
  %32 = bitcast i32* %arraydecay3.i to i8*
  call void @_blocktx(i32 %right, i32 1, i32 1024, i8* %32) #4
  %symtab = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 4
  %33 = bitcast i32* %len.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #3
  %34 = bitcast %struct.t_symtab* %symtab to i8*
  call void @_blocktx(i32 %right, i32 1, i32 4, i8* %34) #4
  %symbuf3.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 4, i32 1
  %symbuf.028.i = load %struct.symbuf** %symbuf3.i, align 8
  %cmp29.i = icmp eq %struct.symbuf* %symbuf.028.i, null
  br i1 %cmp29.i, label %mv_symtab.exit, label %for.cond.preheader.lr.ph.i

for.cond.preheader.lr.ph.i:                       ; preds = %mv_parm.exit
  %nr1.i = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 0
  %35 = load i32* %nr1.i, align 4, !tbaa !0
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %for.end.i, %for.cond.preheader.lr.ph.i
  %symbuf.031.i = phi %struct.symbuf* [ %symbuf.028.i, %for.cond.preheader.lr.ph.i ], [ %symbuf.0.i, %for.end.i ]
  %nr.030.i = phi i32 [ %35, %for.cond.preheader.lr.ph.i ], [ %sub.i, %for.end.i ]
  %bufsize.i = getelementptr inbounds %struct.symbuf* %symbuf.031.i, i64 0, i32 0
  %36 = load i32* %bufsize.i, align 4, !tbaa !0
  %cmp424.i = icmp sgt i32 %36, 0
  %cmp525.i = icmp sgt i32 %nr.030.i, 0
  %cmp5.26.i = and i1 %cmp424.i, %cmp525.i
  br i1 %cmp5.26.i, label %for.body.lr.ph.i, label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %buf.i = getelementptr inbounds %struct.symbuf* %symbuf.031.i, i64 0, i32 1
  br label %for.body.i22

for.body.i22:                                     ; preds = %for.body.i22, %for.body.lr.ph.i
  %indvars.iv.i19 = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i21, %for.body.i22 ]
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i22 ]
  %37 = load i8*** %buf.i, align 8, !tbaa !3
  %arrayidx.i20 = getelementptr inbounds i8** %37, i64 %indvars.iv.i19
  %38 = load i8** %arrayidx.i20, align 8, !tbaa !3
  %call.i = call i64 @strlen(i8* %38) #5
  %add.i = add i64 %call.i, 1
  %conv.i = trunc i64 %add.i to i32
  store i32 %conv.i, i32* %len.i, align 4, !tbaa !0
  call void @_blocktx(i32 %right, i32 1, i32 4, i8* %33) #4
  %39 = load i32* %len.i, align 4, !tbaa !0
  %40 = load i8*** %buf.i, align 8, !tbaa !3
  %arrayidx10.i = getelementptr inbounds i8** %40, i64 %indvars.iv.i19
  %41 = load i8** %arrayidx10.i, align 8, !tbaa !3
  call void @_blocktx(i32 %right, i32 1, i32 %39, i8* %41) #4
  %indvars.iv.next.i21 = add i64 %indvars.iv.i19, 1
  %inc.i = add nsw i32 %i.027.i, 1
  %42 = load i32* %bufsize.i, align 4, !tbaa !0
  %43 = trunc i64 %indvars.iv.next.i21 to i32
  %cmp4.i = icmp slt i32 %43, %42
  %cmp5.i = icmp slt i32 %43, %nr.030.i
  %cmp5..i = and i1 %cmp4.i, %cmp5.i
  br i1 %cmp5..i, label %for.body.i22, label %for.end.i

for.end.i:                                        ; preds = %for.body.i22, %for.cond.preheader.i
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.body.i22 ]
  %sub.i = sub nsw i32 %nr.030.i, %i.0.lcssa.i
  %next.i = getelementptr inbounds %struct.symbuf* %symbuf.031.i, i64 0, i32 2
  %symbuf.0.i = load %struct.symbuf** %next.i, align 8
  %cmp.i = icmp eq %struct.symbuf* %symbuf.0.i, null
  br i1 %cmp.i, label %mv_symtab.exit, label %for.cond.preheader.i

mv_symtab.exit:                                   ; preds = %for.end.i, %mv_parm.exit
  call void @llvm.lifetime.end(i64 4, i8* %33) #3
  %name = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0
  %44 = load i8*** %name, align 8, !tbaa !3
  %45 = bitcast i32* %handle.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #3
  %call.i23 = call i32 @lookup_symtab(%struct.t_symtab* %symtab, i8** %44) #4
  store i32 %call.i23, i32* %handle.i, align 4, !tbaa !0
  call void @_blocktx(i32 %right, i32 1, i32 4, i8* %45) #4
  call void @llvm.lifetime.end(i64 4, i8* %45) #3
  %46 = bitcast i32* %nr.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #3
  %nr1.i24 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 0
  %47 = load i32* %nr1.i24, align 4, !tbaa !0
  store i32 %47, i32* %nr.i, align 4, !tbaa !0
  call void @_blocktx(i32 %right, i32 1, i32 4, i8* %46) #4
  %48 = load i32* %nr.i, align 4, !tbaa !0
  %mul.i = mul i32 %48, 40
  %atom.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1
  %49 = load %struct.t_atom** %atom.i, align 8, !tbaa !3
  %50 = bitcast %struct.t_atom* %49 to i8*
  call void @_blocktx(i32 %right, i32 1, i32 %mul.i, i8* %50) #4
  %51 = load i32* %nr1.i24, align 4, !tbaa !0
  %atomname.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 2
  %52 = load i8**** %atomname.i, align 8, !tbaa !3
  call fastcc void @mv_strings(i32 %right, %struct.t_symtab* %symtab, i32 %51, i8*** %52) #4
  %nres.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 5
  %53 = load i32* %nres.i, align 4, !tbaa !0
  %resname.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 6
  %54 = load i8**** %resname.i, align 8, !tbaa !3
  call fastcc void @mv_strings(i32 %right, %struct.t_symtab* %symtab, i32 %53, i8*** %54) #4
  %ngrpname.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 7
  %55 = load i32* %ngrpname.i, align 4, !tbaa !0
  %grpname.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 8
  %56 = load i8**** %grpname.i, align 8, !tbaa !3
  call fastcc void @mv_strings(i32 %right, %struct.t_symtab* %symtab, i32 %55, i8*** %56) #4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %mv_symtab.exit
  %indvars.iv.i.i = phi i64 [ 0, %mv_symtab.exit ], [ %indvars.iv.next.i.i, %for.body.i.i ]
  %arrayidx.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv.i.i
  %nr.i.i = getelementptr inbounds %struct.t_grps* %arrayidx.i.i, i64 0, i32 0
  %57 = bitcast %struct.t_grps* %arrayidx.i.i to i8*
  call void @_blocktx(i32 %right, i32 1, i32 4, i8* %57) #4
  %58 = load i32* %nr.i.i, align 4, !tbaa !0
  %mul.i.i25 = shl i32 %58, 2
  %nm_ind.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv.i.i, i32 1
  %59 = load i32** %nm_ind.i.i, align 8, !tbaa !3
  %60 = bitcast i32* %59 to i8*
  call void @_blocktx(i32 %right, i32 1, i32 %mul.i.i25, i8* %60) #4
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1
  %lftr.wideiv42 = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond43 = icmp eq i32 %lftr.wideiv42, 9
  br i1 %exitcond43, label %mv_atoms.exit, label %for.body.i.i

mv_atoms.exit:                                    ; preds = %for.body.i.i
  %excl.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 9
  call void @mv_block(i32 %right, %struct.t_block* %excl.i) #4
  call void @llvm.lifetime.end(i64 4, i8* %46) #3
  %idef = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1
  %ntypes.i = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 0
  %61 = bitcast %struct.t_idef* %idef to i8*
  call void @_blocktx(i32 %right, i32 1, i32 4, i8* %61) #4
  %atnr.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 2
  %62 = bitcast i32* %atnr.i to i8*
  call void @_blocktx(i32 %right, i32 1, i32 4, i8* %62) #4
  %63 = load i32* %ntypes.i, align 4, !tbaa !0
  %mul.i28 = shl i32 %63, 2
  %functype.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 3
  %64 = load i32** %functype.i, align 8, !tbaa !3
  %65 = bitcast i32* %64 to i8*
  call void @_blocktx(i32 %right, i32 1, i32 %mul.i28, i8* %65) #4
  %66 = load i32* %ntypes.i, align 4, !tbaa !0
  %mul5.i = mul i32 %66, 24
  %iparams.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 4
  %67 = load %union.t_iparams** %iparams.i, align 8, !tbaa !3
  %68 = bitcast %union.t_iparams* %67 to i8*
  call void @_blocktx(i32 %right, i32 1, i32 %mul5.i, i8* %68) #4
  br label %for.body.i36

for.body.i36:                                     ; preds = %for.body.i36, %mv_atoms.exit
  %indvars.iv.i29 = phi i64 [ 0, %mv_atoms.exit ], [ %indvars.iv.next.i33, %for.body.i36 ]
  %arrayidx.i30 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv.i29
  %nr.i.i31 = getelementptr inbounds %struct.t_ilist* %arrayidx.i30, i64 0, i32 0
  %69 = bitcast %struct.t_ilist* %arrayidx.i30 to i8*
  call void @_blocktx(i32 %right, i32 1, i32 4, i8* %69) #4
  %arraydecay.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv.i29, i32 1, i64 0
  %70 = bitcast i32* %arraydecay.i.i to i8*
  call void @_blocktx(i32 %right, i32 1, i32 1024, i8* %70) #4
  %71 = load i32* %nr.i.i31, align 4, !tbaa !0
  %mul.i.i32 = shl i32 %71, 2
  %iatoms.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv.i29, i32 2
  %72 = load i32** %iatoms.i.i, align 8, !tbaa !3
  %73 = bitcast i32* %72 to i8*
  call void @_blocktx(i32 %right, i32 1, i32 %mul.i.i32, i8* %73) #4
  %indvars.iv.next.i33 = add i64 %indvars.iv.i29, 1
  %lftr.wideiv40 = trunc i64 %indvars.iv.next.i33 to i32
  %exitcond41 = icmp eq i32 %lftr.wideiv40, 44
  br i1 %exitcond41, label %for.body, label %for.body.i36

for.body:                                         ; preds = %for.body.i36, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.body.i36 ]
  %arrayidx = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv
  call void @mv_block(i32 %right, %struct.t_block* %arrayidx) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %74 = load i32* %nr1.i24, align 4, !tbaa !0
  %75 = bitcast i32* %natoms.addr.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #3
  store i32 %74, i32* %natoms.addr.i, align 4, !tbaa !0
  call void @_blocktx(i32 %right, i32 1, i32 4, i8* %75) #4
  %76 = load i32* %natoms.addr.i, align 4, !tbaa !0
  %mul.i38 = mul i32 %76, 12
  %77 = bitcast [3 x float]* %x to i8*
  call void @_blocktx(i32 %right, i32 1, i32 %mul.i38, i8* %77) #4
  %78 = load i32* %natoms.addr.i, align 4, !tbaa !0
  %mul3.i = mul i32 %78, 12
  %79 = bitcast [3 x float]* %v to i8*
  call void @_blocktx(i32 %right, i32 1, i32 %mul3.i, i8* %79) #4
  call void @llvm.lifetime.end(i64 4, i8* %75) #3
  ret void
}

; Function Attrs: optsize
declare void @mv_block(i32, %struct.t_block*) #1

; Function Attrs: optsize
declare void @_blocktx(i32, i32, i32, i8*) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @mv_strings(i32 %dest, %struct.t_symtab* %symtab, i32 %nr, i8*** nocapture %nm) #0 {
entry:
  %nr.addr = alloca i32, align 4
  store i32 %nr, i32* %nr.addr, align 4, !tbaa !0
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str8, i64 0, i64 0), i32 298, i32 %nr, i32 4) #4
  %0 = bitcast i8* %call to i32*
  %cmp11 = icmp sgt i32 %nr, 0
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8*** %nm, i64 %indvars.iv
  %1 = load i8*** %arrayidx, align 8, !tbaa !3
  %call1 = call i32 @lookup_symtab(%struct.t_symtab* %symtab, i8** %1) #4
  %arrayidx3 = getelementptr inbounds i32* %0, i64 %indvars.iv
  store i32 %call1, i32* %arrayidx3, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %2 = load i32* %nr.addr, align 4, !tbaa !0
  %3 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %3, %2
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %4 = bitcast i32* %nr.addr to i8*
  call void @_blocktx(i32 %dest, i32 1, i32 4, i8* %4) #4
  %5 = load i32* %nr.addr, align 4, !tbaa !0
  %mul = shl i32 %5, 2
  call void @_blocktx(i32 %dest, i32 1, i32 %mul, i8* %call) #4
  call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str8, i64 0, i64 0), i32 303, i8* %call) #4
  ret void
}

; Function Attrs: optsize
declare i32 @lookup_symtab(%struct.t_symtab*, i8**) #1

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @mv_cosines(i32 %dest, %struct.t_cosines* %cs) #0 {
entry:
  %n = getelementptr inbounds %struct.t_cosines* %cs, i64 0, i32 0
  %0 = bitcast %struct.t_cosines* %cs to i8*
  tail call void @_blocktx(i32 %dest, i32 1, i32 4, i8* %0) #4
  %1 = load i32* %n, align 4, !tbaa !0
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %mul = shl i32 %1, 2
  %a = getelementptr inbounds %struct.t_cosines* %cs, i64 0, i32 1
  %2 = load float** %a, align 8, !tbaa !3
  %3 = bitcast float* %2 to i8*
  tail call void @_blocktx(i32 %dest, i32 1, i32 %mul, i8* %3) #4
  %4 = load i32* %n, align 4, !tbaa !0
  %mul6 = shl i32 %4, 2
  %phi = getelementptr inbounds %struct.t_cosines* %cs, i64 0, i32 2
  %5 = load float** %phi, align 8, !tbaa !3
  %6 = bitcast float* %5 to i8*
  tail call void @_blocktx(i32 %dest, i32 1, i32 %mul6, i8* %6) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: optsize
declare void @_blockrx(i32, i32, i32, i8*) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @ld_strings(i32 %src, %struct.t_symtab* %symtab, i8**** nocapture %nm) #0 {
entry:
  %nr = alloca i32, align 4
  %0 = bitcast i32* %nr to i8*
  call void @_blockrx(i32 %src, i32 1, i32 4, i8* %0) #4
  %1 = load i32* %nr, align 4, !tbaa !0
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str8, i64 0, i64 0), i32 76, i32 %1, i32 4) #4
  %2 = bitcast i8* %call to i32*
  %3 = load i32* %nr, align 4, !tbaa !0
  %mul = shl i32 %3, 2
  call void @_blockrx(i32 %src, i32 1, i32 %mul, i8* %call) #4
  %4 = load i32* %nr, align 4, !tbaa !0
  %call2 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str8, i64 0, i64 0), i32 79, i32 %4, i32 8) #4
  %5 = bitcast i8* %call2 to i8***
  store i8*** %5, i8**** %nm, align 8, !tbaa !3
  %6 = load i32* %nr, align 4, !tbaa !0
  %cmp14 = icmp sgt i32 %6, 0
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %2, i64 %indvars.iv
  %7 = load i32* %arrayidx, align 4, !tbaa !0
  %call4 = call i8** @get_symtab_handle(%struct.t_symtab* %symtab, i32 %7) #4
  %arrayidx6 = getelementptr inbounds i8*** %5, i64 %indvars.iv
  store i8** %call4, i8*** %arrayidx6, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %8 = load i32* %nr, align 4, !tbaa !0
  %9 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %9, %8
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str8, i64 0, i64 0), i32 83, i8* %call) #4
  %10 = load i32* %nr, align 4, !tbaa !0
  ret i32 %10
}

; Function Attrs: optsize
declare i8** @get_symtab_handle(%struct.t_symtab*, i32) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ld_cosines(i32 %src, %struct.t_cosines* %cs) #0 {
entry:
  %n = getelementptr inbounds %struct.t_cosines* %cs, i64 0, i32 0
  %0 = bitcast %struct.t_cosines* %cs to i8*
  tail call void @_blockrx(i32 %src, i32 1, i32 4, i8* %0) #4
  %1 = load i32* %n, align 4, !tbaa !0
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str8, i64 0, i64 0), i32 189, i32 %1, i32 4) #4
  %2 = bitcast i8* %call to float*
  %a = getelementptr inbounds %struct.t_cosines* %cs, i64 0, i32 1
  store float* %2, float** %a, align 8, !tbaa !3
  %3 = load i32* %n, align 4, !tbaa !0
  %call3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str8, i64 0, i64 0), i32 190, i32 %3, i32 4) #4
  %4 = bitcast i8* %call3 to float*
  %phi = getelementptr inbounds %struct.t_cosines* %cs, i64 0, i32 2
  store float* %4, float** %phi, align 8, !tbaa !3
  %5 = load i32* %n, align 4, !tbaa !0
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %mul = shl i32 %5, 2
  %6 = load float** %a, align 8, !tbaa !3
  %7 = bitcast float* %6 to i8*
  tail call void @_blockrx(i32 %src, i32 1, i32 %mul, i8* %7) #4
  %8 = load i32* %n, align 4, !tbaa !0
  %mul10 = shl i32 %8, 2
  %9 = load float** %phi, align 8, !tbaa !3
  %10 = bitcast float* %9 to i8*
  tail call void @_blockrx(i32 %src, i32 1, i32 %mul10, i8* %10) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize readonly }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}

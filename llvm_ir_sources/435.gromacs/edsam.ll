; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_filenm = type { i32, i8*, i8*, i64 }
%struct.t_edsamyn = type { i32, i8*, i8* }
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
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_edpar = type { i32, i32, i32, i32, i32, i32, i32, %struct.t_edx, %struct.t_edx, %struct.t_edvecs, float, %struct.t_edx, %struct.t_edx, i32, i32*, float*, float, i32, i32*, %struct._IO_FILE* }
%struct.t_edx = type { i32, i32*, [3 x float]*, [3 x [3 x float]] }
%struct.t_edvecs = type { %struct.t_eigvec, %struct.t_eigvec, %struct.t_eigvec, %struct.t_eigvec, %struct.t_eigvec, %struct.t_eigvec }
%struct.t_eigvec = type { i32, i32*, float*, [3 x float]**, float*, float*, float*, float*, float }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [32 x i8] c"ED sampling will be performed!\0A\00", align 1
@.str1 = private unnamed_addr constant [27 x i8] c"Initialising ED sampling\0A\0A\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"edi->mass\00", align 1
@.str3 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c\00", align 1
@.str4 = private unnamed_addr constant [12 x i8] c"edi->masnrs\00", align 1
@.str5 = private unnamed_addr constant [10 x i8] c"refmasnrs\00", align 1
@.str6 = private unnamed_addr constant [3 x i8] c"CA\00", align 1
@.str7 = private unnamed_addr constant [19 x i8] c"%d CA atoms found\0A\00", align 1
@.str8 = private unnamed_addr constant [12 x i8] c"edi->fitnrs\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"xdum\00", align 1
@.str10 = private unnamed_addr constant [39 x i8] c"Counted %d, should be %d in init_edsam\00", align 1
@.str11 = private unnamed_addr constant [12 x i8] c"edi->sref.x\00", align 1
@.str12 = private unnamed_addr constant [9 x i8] c"transvec\00", align 1
@.str13 = private unnamed_addr constant [52 x i8] c"Initial RMSD from reference structure = %10.5f nm\0A\0A\00", align 1
@.str14 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str15 = private unnamed_addr constant [22 x i8] c"Initial projections:\0A\00", align 1
@.str16 = private unnamed_addr constant [35 x i8] c"Initial fixed increment radius=%f\0A\00", align 1
@.str17 = private unnamed_addr constant [35 x i8] c"Initial   acceptance    radius=%f\0A\00", align 1
@.str18 = private unnamed_addr constant [35 x i8] c"Initial   contracting   radius=%f\0A\00", align 1
@.str19 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str20 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str21 = private unnamed_addr constant [25 x i8] c"Wrong magic number in %s\00", align 1
@.str22 = private unnamed_addr constant [58 x i8] c"Nr of atoms in %s (%d) does not match nr of md atoms (%d)\00", align 1
@.str23 = private unnamed_addr constant [15 x i8] c"edi->sref.anrs\00", align 1
@.str24 = private unnamed_addr constant [14 x i8] c"edi->sav.anrs\00", align 1
@.str25 = private unnamed_addr constant [11 x i8] c"edi->sav.x\00", align 1
@.str26 = private unnamed_addr constant [15 x i8] c"edi->star.anrs\00", align 1
@.str27 = private unnamed_addr constant [12 x i8] c"edi->star.x\00", align 1
@.str28 = private unnamed_addr constant [15 x i8] c"edi->sori.anrs\00", align 1
@.str29 = private unnamed_addr constant [12 x i8] c"edi->sori.x\00", align 1
@.str30 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str31 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str32 = private unnamed_addr constant [12 x i8] c"%d%lf%lf%lf\00", align 1
@.str33 = private unnamed_addr constant [11 x i8] c"tvec->ieig\00", align 1
@.str34 = private unnamed_addr constant [12 x i8] c"tvec->stpsz\00", align 1
@.str35 = private unnamed_addr constant [10 x i8] c"tvec->vec\00", align 1
@.str36 = private unnamed_addr constant [12 x i8] c"tvec->xproj\00", align 1
@.str37 = private unnamed_addr constant [12 x i8] c"tvec->vproj\00", align 1
@.str38 = private unnamed_addr constant [12 x i8] c"tvec->fproj\00", align 1
@.str39 = private unnamed_addr constant [14 x i8] c"tvec->refproj\00", align 1
@.str40 = private unnamed_addr constant [6 x i8] c"%d%lf\00", align 1
@.str41 = private unnamed_addr constant [13 x i8] c"tvec->vec[i]\00", align 1
@.str42 = private unnamed_addr constant [10 x i8] c"%le%le%le\00", align 1
@.str43 = private unnamed_addr constant [6 x i8] c"omega\00", align 1
@.str44 = private unnamed_addr constant [3 x i8] c"om\00", align 1
@.str45 = private unnamed_addr constant [9 x i8] c"omega[i]\00", align 1
@.str46 = private unnamed_addr constant [6 x i8] c"om[i]\00", align 1
@.str47 = private unnamed_addr constant [8 x i8] c"IROT=0\0A\00", align 1
@.str48 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str49 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@do_edsam.oldrad = internal unnamed_addr global float 0.000000e+00, align 4
@do_edsam.bFirst = internal unnamed_addr global i1 false
@.str50 = private unnamed_addr constant [5 x i8] c"vdum\00", align 1
@.str51 = private unnamed_addr constant [5 x i8] c"fdum\00", align 1
@.str52 = private unnamed_addr constant [34 x i8] c"ED sampling information, step %d\0A\00", align 1
@.str53 = private unnamed_addr constant [24 x i8] c"acceptance radius = %f\0A\00", align 1
@.str54 = private unnamed_addr constant [29 x i8] c"fixed increment radius = %f\0A\00", align 1
@.str55 = private unnamed_addr constant [25 x i8] c"contracting radius = %f\0A\00", align 1
@.str56 = private unnamed_addr constant [5 x i8] c"proj\00", align 1
@.str57 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str58 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str59 = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str61 = private unnamed_addr constant [21 x i8] c"monitor eigenvectors\00", align 1
@.str62 = private unnamed_addr constant [9 x i8] c" %d: %f;\00", align 1
@.str63 = private unnamed_addr constant [21 x i8] c"linfix  eigenvectors\00", align 1
@.str64 = private unnamed_addr constant [21 x i8] c"linacc  eigenvectors\00", align 1
@.str65 = private unnamed_addr constant [21 x i8] c"radfix  eigenvectors\00", align 1
@.str66 = private unnamed_addr constant [21 x i8] c"radacc  eigenvectors\00", align 1
@.str67 = private unnamed_addr constant [21 x i8] c"radcon  eigenvectors\00", align 1
@.str68 = private unnamed_addr constant [17 x i8] c"Determinant = %f\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @ed_open(i32 %nfile, %struct.t_filenm* %fnm, %struct.t_edsamyn* nocapture %edyn) #0 {
entry:
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %0)
  %bEdsam = getelementptr inbounds %struct.t_edsamyn* %edyn, i64 0, i32 0
  store i32 1, i32* %bEdsam, align 4, !tbaa !3
  %call1 = tail call i8* @ftp2fn(i32 40, i32 %nfile, %struct.t_filenm* %fnm) #6
  %edinam = getelementptr inbounds %struct.t_edsamyn* %edyn, i64 0, i32 1
  store i8* %call1, i8** %edinam, align 8, !tbaa !0
  %call2 = tail call i8* @ftp2fn(i32 41, i32 %nfile, %struct.t_filenm* %fnm) #6
  %edonam = getelementptr inbounds %struct.t_edsamyn* %edyn, i64 0, i32 2
  store i8* %call2, i8** %edonam, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: optsize
declare i8* @ftp2fn(i32, i32, %struct.t_filenm*) #2

; Function Attrs: nounwind optsize uwtable
define void @init_edsam(%struct._IO_FILE* nocapture %log, %struct.t_topology* %top, %struct.t_mdatoms* nocapture %md, i32 %start, i32 %homenr, [3 x float]* %x, [3 x float]* %box, %struct.t_edsamyn* nocapture %edyn, %struct.t_edpar* %edi) #0 {
entry:
  %rotmat = alloca [3 x [3 x float]], align 16
  %0 = bitcast [3 x [3 x float]]* %rotmat to i8*
  call void @llvm.lifetime.start(i64 36, i8* %0) #3
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str1, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %log)
  %nr = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 0
  %2 = load i32* %nr, align 4, !tbaa !3
  call void @read_edi(%struct.t_edsamyn* %edyn, %struct.t_edpar* %edi, i32 %2) #7
  %ned1 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 2
  %3 = load i32* %ned1, align 4, !tbaa !3
  %tmass = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 16
  store float 0.000000e+00, float* %tmass, align 4, !tbaa !4
  %selmas = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 3
  %4 = load i32* %selmas, align 4, !tbaa !3
  %tobool = icmp eq i32 %4, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %npro = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 1
  %5 = load i32* %npro, align 4, !tbaa !3
  %nmass = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 13
  store i32 %5, i32* %nmass, align 4, !tbaa !3
  %call3 = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 85, i32 %5, i32 4) #6
  %6 = bitcast i8* %call3 to float*
  %mass = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 15
  store float* %6, float** %mass, align 8, !tbaa !0
  %7 = load i32* %nmass, align 4, !tbaa !3
  %call5 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 86, i32 %7, i32 4) #6
  %8 = bitcast i8* %call5 to i32*
  %masnrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 14
  store i32* %8, i32** %masnrs, align 8, !tbaa !0
  %9 = load i32* %nmass, align 4, !tbaa !3
  %call7 = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 87, i32 %9, i32 4) #6
  %10 = bitcast i8* %call7 to i32*
  %11 = load i32* %nmass, align 4, !tbaa !3
  %cmp465 = icmp sgt i32 %11, 0
  br i1 %cmp465, label %for.body.lr.ph, label %if.end76

for.body.lr.ph:                                   ; preds = %if.then
  %anrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 1
  %12 = load i32** %anrs, align 8, !tbaa !0
  %atom = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1
  %13 = load %struct.t_atom** %atom, align 8, !tbaa !0
  %14 = load float** %mass, align 8, !tbaa !0
  %15 = load i32** %masnrs, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv481 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next482, %for.body ]
  %arrayidx = getelementptr inbounds i32* %12, i64 %indvars.iv481
  %16 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom9 = sext i32 %16 to i64
  %m = getelementptr inbounds %struct.t_atom* %13, i64 %idxprom9, i32 0
  %17 = load float* %m, align 4, !tbaa !4
  %arrayidx14 = getelementptr inbounds float* %14, i64 %indvars.iv481
  store float %17, float* %arrayidx14, align 4, !tbaa !4
  %arrayidx17 = getelementptr inbounds i32* %15, i64 %indvars.iv481
  %18 = trunc i64 %indvars.iv481 to i32
  store i32 %18, i32* %arrayidx17, align 4, !tbaa !3
  %arrayidx19 = getelementptr inbounds i32* %10, i64 %indvars.iv481
  store i32 %18, i32* %arrayidx19, align 4, !tbaa !3
  %19 = load float* %tmass, align 4, !tbaa !4
  %add = fadd float %17, %19
  store float %add, float* %tmass, align 4, !tbaa !4
  %indvars.iv.next482 = add i64 %indvars.iv481, 1
  %20 = load i32* %nmass, align 4, !tbaa !3
  %21 = trunc i64 %indvars.iv.next482 to i32
  %cmp = icmp slt i32 %21, %20
  br i1 %cmp, label %for.body, label %if.end76

if.else:                                          ; preds = %entry
  %nr24 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0
  %22 = load i32* %nr24, align 4, !tbaa !3
  %nmass25 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 13
  store i32 %22, i32* %nmass25, align 4, !tbaa !3
  %call27 = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 97, i32 %22, i32 4) #6
  %23 = bitcast i8* %call27 to float*
  %mass28 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 15
  store float* %23, float** %mass28, align 8, !tbaa !0
  %24 = load i32* %nmass25, align 4, !tbaa !3
  %call30 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 98, i32 %24, i32 4) #6
  %25 = bitcast i8* %call30 to i32*
  %masnrs31 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 14
  store i32* %25, i32** %masnrs31, align 8, !tbaa !0
  %26 = load i32* %nmass25, align 4, !tbaa !3
  %call33 = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 99, i32 %26, i32 4) #6
  %27 = bitcast i8* %call33 to i32*
  %28 = load i32* %nmass25, align 4, !tbaa !3
  %cmp36462 = icmp sgt i32 %28, 0
  br i1 %cmp36462, label %for.body37.lr.ph, label %if.end76

for.body37.lr.ph:                                 ; preds = %if.else
  %29 = load float** %mass28, align 8, !tbaa !0
  %anrs43 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  %30 = load i32** %anrs43, align 8, !tbaa !0
  %31 = load i32** %masnrs31, align 8, !tbaa !0
  %nr50 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 0
  %anrs55 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 1
  br label %for.body37

for.body37:                                       ; preds = %for.body37.lr.ph, %for.end67
  %indvars.iv479 = phi i64 [ 0, %for.body37.lr.ph ], [ %indvars.iv.next480, %for.end67 ]
  %arrayidx40 = getelementptr inbounds float* %29, i64 %indvars.iv479
  store float 1.000000e+00, float* %arrayidx40, align 4, !tbaa !4
  %arrayidx44 = getelementptr inbounds i32* %30, i64 %indvars.iv479
  %32 = load i32* %arrayidx44, align 4, !tbaa !3
  %arrayidx47 = getelementptr inbounds i32* %31, i64 %indvars.iv479
  store i32 %32, i32* %arrayidx47, align 4, !tbaa !3
  %33 = load i32* %nr50, align 4, !tbaa !3
  %cmp51460 = icmp sgt i32 %33, 0
  br i1 %cmp51460, label %for.body52.lr.ph, label %for.end67

for.body52.lr.ph:                                 ; preds = %for.body37
  %34 = load i32** %anrs55, align 8, !tbaa !0
  %arrayidx64 = getelementptr inbounds i32* %27, i64 %indvars.iv479
  br label %for.body52

for.body52:                                       ; preds = %for.inc65, %for.body52.lr.ph
  %35 = phi i32 [ %33, %for.body52.lr.ph ], [ %39, %for.inc65 ]
  %indvars.iv477 = phi i64 [ 0, %for.body52.lr.ph ], [ %indvars.iv.next478, %for.inc65 ]
  %arrayidx56 = getelementptr inbounds i32* %34, i64 %indvars.iv477
  %36 = load i32* %arrayidx56, align 4, !tbaa !3
  %37 = load i32* %arrayidx44, align 4, !tbaa !3
  %cmp61 = icmp eq i32 %36, %37
  br i1 %cmp61, label %if.then62, label %for.inc65

if.then62:                                        ; preds = %for.body52
  %38 = trunc i64 %indvars.iv477 to i32
  store i32 %38, i32* %arrayidx64, align 4, !tbaa !3
  %.pre = load i32* %nr50, align 4, !tbaa !3
  br label %for.inc65

for.inc65:                                        ; preds = %for.body52, %if.then62
  %39 = phi i32 [ %35, %for.body52 ], [ %.pre, %if.then62 ]
  %indvars.iv.next478 = add i64 %indvars.iv477, 1
  %40 = trunc i64 %indvars.iv.next478 to i32
  %cmp51 = icmp slt i32 %40, %39
  br i1 %cmp51, label %for.body52, label %for.end67

for.end67:                                        ; preds = %for.inc65, %for.body37
  %41 = load float* %tmass, align 4, !tbaa !4
  %add72 = fadd float %41, 1.000000e+00
  store float %add72, float* %tmass, align 4, !tbaa !4
  %indvars.iv.next480 = add i64 %indvars.iv479, 1
  %42 = load i32* %nmass25, align 4, !tbaa !3
  %43 = trunc i64 %indvars.iv.next480 to i32
  %cmp36 = icmp slt i32 %43, %42
  br i1 %cmp36, label %for.body37, label %if.end76

if.end76:                                         ; preds = %if.then, %for.body, %if.else, %for.end67
  %refmasnrs.0 = phi i32* [ %27, %for.end67 ], [ %27, %if.else ], [ %10, %for.body ], [ %10, %if.then ]
  %nfit = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 17
  store i32 0, i32* %nfit, align 4, !tbaa !3
  %cmp78458 = icmp sgt i32 %3, 0
  br i1 %cmp78458, label %for.body79.lr.ph, label %for.end91

for.body79.lr.ph:                                 ; preds = %if.end76
  %atomname = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 2
  %.pre485 = load i8**** %atomname, align 8, !tbaa !0
  br label %for.body79

for.body79:                                       ; preds = %for.inc89, %for.body79.lr.ph
  %44 = phi i32 [ 0, %for.body79.lr.ph ], [ %47, %for.inc89 ]
  %indvars.iv473 = phi i64 [ 0, %for.body79.lr.ph ], [ %indvars.iv.next474, %for.inc89 ]
  %arrayidx82 = getelementptr inbounds i8*** %.pre485, i64 %indvars.iv473
  %45 = load i8*** %arrayidx82, align 8, !tbaa !0
  %46 = load i8** %45, align 8, !tbaa !0
  %call83 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0)) #8
  %cmp84 = icmp eq i32 %call83, 0
  br i1 %cmp84, label %if.then85, label %for.inc89

if.then85:                                        ; preds = %for.body79
  %inc87 = add nsw i32 %44, 1
  store i32 %inc87, i32* %nfit, align 4, !tbaa !3
  br label %for.inc89

for.inc89:                                        ; preds = %for.body79, %if.then85
  %47 = phi i32 [ %44, %for.body79 ], [ %inc87, %if.then85 ]
  %indvars.iv.next474 = add i64 %indvars.iv473, 1
  %lftr.wideiv475 = trunc i64 %indvars.iv.next474 to i32
  %exitcond476 = icmp eq i32 %lftr.wideiv475, %3
  br i1 %exitcond476, label %for.end91, label %for.body79

for.end91:                                        ; preds = %for.inc89, %if.end76
  %48 = phi i32 [ 0, %if.end76 ], [ %47, %for.inc89 ]
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([19 x i8]* @.str7, i64 0, i64 0), i32 %48) #6
  %49 = load i32* %nfit, align 4, !tbaa !3
  %cmp95 = icmp eq i32 %49, 0
  br i1 %cmp95, label %if.then96, label %if.else116

if.then96:                                        ; preds = %for.end91
  %nr98 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0
  %50 = load i32* %nr98, align 4, !tbaa !3
  store i32 %50, i32* %nfit, align 4, !tbaa !3
  %call101 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 120, i32 %50, i32 4) #6
  %51 = bitcast i8* %call101 to i32*
  %fitnrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 18
  store i32* %51, i32** %fitnrs, align 8, !tbaa !0
  %52 = load i32* %nfit, align 4, !tbaa !3
  %cmp104452 = icmp sgt i32 %52, 0
  br i1 %cmp104452, label %for.body105.lr.ph, label %if.end138

for.body105.lr.ph:                                ; preds = %if.then96
  %anrs108 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  %53 = load i32** %anrs108, align 8, !tbaa !0
  br label %for.body105

for.body105:                                      ; preds = %for.body105.lr.ph, %for.body105
  %indvars.iv469 = phi i64 [ 0, %for.body105.lr.ph ], [ %indvars.iv.next470, %for.body105 ]
  %arrayidx109 = getelementptr inbounds i32* %53, i64 %indvars.iv469
  %54 = load i32* %arrayidx109, align 4, !tbaa !3
  %arrayidx112 = getelementptr inbounds i32* %51, i64 %indvars.iv469
  store i32 %54, i32* %arrayidx112, align 4, !tbaa !3
  %indvars.iv.next470 = add i64 %indvars.iv469, 1
  %55 = load i32* %nfit, align 4, !tbaa !3
  %56 = trunc i64 %indvars.iv.next470 to i32
  %cmp104 = icmp slt i32 %56, %55
  br i1 %cmp104, label %for.body105, label %if.end138

if.else116:                                       ; preds = %for.end91
  %call118 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 126, i32 %49, i32 4) #6
  %57 = bitcast i8* %call118 to i32*
  %fitnrs119 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 18
  store i32* %57, i32** %fitnrs119, align 8, !tbaa !0
  br i1 %cmp78458, label %for.body122.lr.ph, label %if.end138

for.body122.lr.ph:                                ; preds = %if.else116
  %atomname125 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 2
  %.pre484 = load i8**** %atomname125, align 8, !tbaa !0
  br label %for.body122

for.body122:                                      ; preds = %for.inc135, %for.body122.lr.ph
  %indvars.iv471 = phi i64 [ 0, %for.body122.lr.ph ], [ %indvars.iv.next472, %for.inc135 ]
  %j.1456 = phi i32 [ 0, %for.body122.lr.ph ], [ %j.2, %for.inc135 ]
  %arrayidx126 = getelementptr inbounds i8*** %.pre484, i64 %indvars.iv471
  %58 = load i8*** %arrayidx126, align 8, !tbaa !0
  %59 = load i8** %58, align 8, !tbaa !0
  %call127 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0)) #8
  %cmp128 = icmp eq i32 %call127, 0
  br i1 %cmp128, label %if.then129, label %for.inc135

if.then129:                                       ; preds = %for.body122
  %idxprom130 = sext i32 %j.1456 to i64
  %arrayidx132 = getelementptr inbounds i32* %57, i64 %idxprom130
  %60 = trunc i64 %indvars.iv471 to i32
  store i32 %60, i32* %arrayidx132, align 4, !tbaa !3
  %inc133 = add nsw i32 %j.1456, 1
  br label %for.inc135

for.inc135:                                       ; preds = %for.body122, %if.then129
  %j.2 = phi i32 [ %inc133, %if.then129 ], [ %j.1456, %for.body122 ]
  %indvars.iv.next472 = add i64 %indvars.iv471, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next472 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %3
  br i1 %exitcond, label %if.end138, label %for.body122

if.end138:                                        ; preds = %if.else116, %for.inc135, %if.then96, %for.body105
  %nr140 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 0
  %61 = load i32* %nr140, align 4, !tbaa !3
  %x142 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 2
  %62 = load [3 x float]** %x142, align 8, !tbaa !0
  %nmass143 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 13
  %63 = load i32* %nmass143, align 4, !tbaa !3
  %mass144 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 15
  %64 = load float** %mass144, align 8, !tbaa !0
  %65 = load float* %tmass, align 4, !tbaa !4
  call void @put_in_origin(i32 %61, [3 x float]* %62, i32 %63, i32* %refmasnrs.0, float* %64, float %65) #7
  %66 = load i32* %nfit, align 4, !tbaa !3
  %call147 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 142, i32 %66, i32 12) #6
  %67 = bitcast i8* %call147 to [3 x float]*
  %68 = load i32* %nr140, align 4, !tbaa !3
  %cmp151448 = icmp sgt i32 %68, 0
  %69 = load i32* %nfit, align 4, !tbaa !3
  br i1 %cmp151448, label %for.body152.lr.ph, label %for.end177

for.body152.lr.ph:                                ; preds = %if.end138
  %anrs158 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 1
  %fitnrs161 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 18
  br label %for.body152

for.body152:                                      ; preds = %for.body152.lr.ph, %for.inc175
  %indvars.iv467 = phi i64 [ 0, %for.body152.lr.ph ], [ %indvars.iv.next468, %for.inc175 ]
  %j.3449 = phi i32 [ 0, %for.body152.lr.ph ], [ %j.4, %for.inc175 ]
  %cmp154 = icmp slt i32 %j.3449, %69
  br i1 %cmp154, label %if.then155, label %for.inc175

if.then155:                                       ; preds = %for.body152
  %70 = load i32** %anrs158, align 8, !tbaa !0
  %arrayidx159 = getelementptr inbounds i32* %70, i64 %indvars.iv467
  %71 = load i32* %arrayidx159, align 4, !tbaa !3
  %idxprom160 = sext i32 %j.3449 to i64
  %72 = load i32** %fitnrs161, align 8, !tbaa !0
  %arrayidx162 = getelementptr inbounds i32* %72, i64 %idxprom160
  %73 = load i32* %arrayidx162, align 4, !tbaa !3
  %cmp163 = icmp eq i32 %71, %73
  br i1 %cmp163, label %if.then164, label %for.inc175

if.then164:                                       ; preds = %if.then155
  %74 = load [3 x float]** %x142, align 8, !tbaa !0
  %arraydecay = getelementptr inbounds [3 x float]* %74, i64 %indvars.iv467, i64 0
  %arraydecay171 = getelementptr inbounds [3 x float]* %67, i64 %idxprom160, i64 0
  %75 = load float* %arraydecay, align 4, !tbaa !4
  store float %75, float* %arraydecay171, align 4, !tbaa !4
  %arrayidx2.i = getelementptr inbounds [3 x float]* %74, i64 %indvars.iv467, i64 1
  %76 = load float* %arrayidx2.i, align 4, !tbaa !4
  %arrayidx3.i = getelementptr inbounds [3 x float]* %67, i64 %idxprom160, i64 1
  store float %76, float* %arrayidx3.i, align 4, !tbaa !4
  %arrayidx4.i = getelementptr inbounds [3 x float]* %74, i64 %indvars.iv467, i64 2
  %77 = load float* %arrayidx4.i, align 4, !tbaa !4
  %arrayidx5.i = getelementptr inbounds [3 x float]* %67, i64 %idxprom160, i64 2
  store float %77, float* %arrayidx5.i, align 4, !tbaa !4
  %inc172 = add nsw i32 %j.3449, 1
  br label %for.inc175

for.inc175:                                       ; preds = %for.body152, %if.then164, %if.then155
  %j.4 = phi i32 [ %inc172, %if.then164 ], [ %j.3449, %if.then155 ], [ %j.3449, %for.body152 ]
  %indvars.iv.next468 = add i64 %indvars.iv467, 1
  %78 = trunc i64 %indvars.iv.next468 to i32
  %cmp151 = icmp slt i32 %78, %68
  br i1 %cmp151, label %for.body152, label %for.end177

for.end177:                                       ; preds = %for.inc175, %if.end138
  %j.3.lcssa = phi i32 [ 0, %if.end138 ], [ %j.4, %for.inc175 ]
  %cmp179 = icmp eq i32 %j.3.lcssa, %69
  br i1 %cmp179, label %if.end182, label %if.then180

if.then180:                                       ; preds = %for.end177
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([39 x i8]* @.str10, i64 0, i64 0), i32 %j.3.lcssa, i32 %69) #6
  %.pre483 = load i32* %nfit, align 4, !tbaa !3
  br label %if.end182

if.end182:                                        ; preds = %for.end177, %if.then180
  %79 = phi i32 [ %.pre483, %if.then180 ], [ %69, %for.end177 ]
  store i32 %79, i32* %nr140, align 4, !tbaa !3
  %80 = load [3 x float]** %x142, align 8, !tbaa !0
  %81 = bitcast [3 x float]* %80 to i8*
  call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 155, i8* %81) #6
  %82 = load i32* %nfit, align 4, !tbaa !3
  %call189 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 156, i32 %82, i32 12) #6
  %83 = bitcast i8* %call189 to [3 x float]*
  store [3 x float]* %83, [3 x float]** %x142, align 8, !tbaa !0
  %84 = load i32* %nfit, align 4, !tbaa !3
  %cmp194446 = icmp sgt i32 %84, 0
  br i1 %cmp194446, label %for.body195, label %for.end206

for.body195:                                      ; preds = %if.end182, %for.body195
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body195 ], [ 0, %if.end182 ]
  %arraydecay198 = getelementptr inbounds [3 x float]* %67, i64 %indvars.iv, i64 0
  %arraydecay203 = getelementptr inbounds [3 x float]* %83, i64 %indvars.iv, i64 0
  %85 = load float* %arraydecay198, align 4, !tbaa !4
  store float %85, float* %arraydecay203, align 4, !tbaa !4
  %arrayidx2.i442 = getelementptr inbounds [3 x float]* %67, i64 %indvars.iv, i64 1
  %86 = load float* %arrayidx2.i442, align 4, !tbaa !4
  %arrayidx3.i443 = getelementptr inbounds [3 x float]* %83, i64 %indvars.iv, i64 1
  store float %86, float* %arrayidx3.i443, align 4, !tbaa !4
  %arrayidx4.i444 = getelementptr inbounds [3 x float]* %67, i64 %indvars.iv, i64 2
  %87 = load float* %arrayidx4.i444, align 4, !tbaa !4
  %arrayidx5.i445 = getelementptr inbounds [3 x float]* %83, i64 %indvars.iv, i64 2
  store float %87, float* %arrayidx5.i445, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %88 = trunc i64 %indvars.iv.next to i32
  %cmp194 = icmp slt i32 %88, %84
  br i1 %cmp194, label %for.body195, label %for.end206

for.end206:                                       ; preds = %for.body195, %if.end182
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 159, i8* %call147) #6
  %89 = load i32* %nr, align 4, !tbaa !3
  %call209 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 162, i32 %89, i32 12) #6
  %90 = bitcast i8* %call209 to [3 x float]*
  %idef = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1
  %91 = load i32* %nr, align 4, !tbaa !3
  call void @rm_pbc(%struct.t_idef* %idef, i32 %91, [3 x float]* %box, [3 x float]* %x, [3 x float]* %90) #6
  %call212 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 166, i32 %3, i32 12) #6
  %92 = bitcast i8* %call212 to [3 x float]*
  %arraydecay213 = getelementptr inbounds [3 x [3 x float]]* %rotmat, i64 0, i64 0
  %call214 = call float @fitit(i32 %3, [3 x float]* %90, %struct.t_edpar* %edi, [3 x float]* %92, [3 x float]* %arraydecay213) #7
  %conv = fpext float %call214 to double
  %call215 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([52 x i8]* @.str13, i64 0, i64 0), double %conv) #6
  call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 169, i8* %call212) #6
  call void @project([3 x float]* %90, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #7
  %93 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str15, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %log)
  call void @write_edidx(%struct._IO_FILE* %log, %struct.t_edpar* %edi) #7
  %nr217 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 11, i32 0
  %94 = load i32* %nr217, align 4, !tbaa !3
  %cmp218 = icmp sgt i32 %94, 0
  br i1 %cmp218, label %if.then220, label %if.end227

if.then220:                                       ; preds = %for.end206
  %x222 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 11, i32 2
  %95 = load [3 x float]** %x222, align 8, !tbaa !0
  %call224 = call float @fitit(i32 %3, [3 x float]* %95, %struct.t_edpar* %edi, [3 x float]* %92, [3 x float]* %arraydecay213) #7
  %96 = load [3 x float]** %x222, align 8, !tbaa !0
  %radcon = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5
  call void @projectx(%struct.t_edpar* %edi, [3 x float]* %96, %struct.t_eigvec* %radcon) #7
  br label %if.end227

if.end227:                                        ; preds = %if.then220, %for.end206
  %nr228 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 12, i32 0
  %97 = load i32* %nr228, align 4, !tbaa !3
  %cmp229 = icmp sgt i32 %97, 0
  br i1 %cmp229, label %if.then231, label %if.else242

if.then231:                                       ; preds = %if.end227
  %x233 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 12, i32 2
  %98 = load [3 x float]** %x233, align 8, !tbaa !0
  %call235 = call float @fitit(i32 %3, [3 x float]* %98, %struct.t_edpar* %edi, [3 x float]* %92, [3 x float]* %arraydecay213) #7
  %99 = load [3 x float]** %x233, align 8, !tbaa !0
  %radacc = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4
  call void @projectx(%struct.t_edpar* %edi, [3 x float]* %99, %struct.t_eigvec* %radacc) #7
  %100 = load [3 x float]** %x233, align 8, !tbaa !0
  %radfix = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3
  call void @projectx(%struct.t_edpar* %edi, [3 x float]* %100, %struct.t_eigvec* %radfix) #7
  br label %if.end247

if.else242:                                       ; preds = %if.end227
  %radacc244 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4
  call void @projectx(%struct.t_edpar* %edi, [3 x float]* %90, %struct.t_eigvec* %radacc244) #7
  %radfix246 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3
  call void @projectx(%struct.t_edpar* %edi, [3 x float]* %90, %struct.t_eigvec* %radfix246) #7
  br label %if.end247

if.end247:                                        ; preds = %if.else242, %if.then231
  %linacc = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2
  call void @projectx(%struct.t_edpar* %edi, [3 x float]* %90, %struct.t_eigvec* %linacc) #7
  %linfix = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1
  call void @projectx(%struct.t_edpar* %edi, [3 x float]* %90, %struct.t_eigvec* %linfix) #7
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 196, i8* %call209) #6
  %radius = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 8
  %101 = load float* %radius, align 4, !tbaa !4
  %conv252 = fpext float %101 to double
  %call253 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([35 x i8]* @.str16, i64 0, i64 0), double %conv252) #6
  %radius256 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 8
  %102 = load float* %radius256, align 4, !tbaa !4
  %conv257 = fpext float %102 to double
  %call258 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([35 x i8]* @.str17, i64 0, i64 0), double %conv257) #6
  %radius261 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 8
  %103 = load float* %radius261, align 4, !tbaa !4
  %conv262 = fpext float %103 to double
  %call263 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([35 x i8]* @.str18, i64 0, i64 0), double %conv262) #6
  %call264 = call i32 @fflush(%struct._IO_FILE* %log) #6
  %edonam = getelementptr inbounds %struct.t_edsamyn* %edyn, i64 0, i32 2
  %104 = load i8** %edonam, align 8, !tbaa !0
  %call265 = call %struct._IO_FILE* @ffopen(i8* %104, i8* getelementptr inbounds ([2 x i8]* @.str19, i64 0, i64 0)) #6
  %edo = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 19
  store %struct._IO_FILE* %call265, %struct._IO_FILE** %edo, align 8, !tbaa !0
  call void @write_edidx(%struct._IO_FILE* %call265, %struct.t_edpar* %edi) #7
  call void @llvm.lifetime.end(i64 36, i8* %0) #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @read_edi(%struct.t_edsamyn* nocapture %edyn, %struct.t_edpar* %edi, i32 %nr_mdatoms) #0 {
entry:
  %edinam = getelementptr inbounds %struct.t_edsamyn* %edyn, i64 0, i32 1
  %0 = load i8** %edinam, align 8, !tbaa !0
  %call = tail call %struct._IO_FILE* @ffopen(i8* %0, i8* getelementptr inbounds ([2 x i8]* @.str20, i64 0, i64 0)) #6
  %call1 = tail call i32 @read_edint(%struct._IO_FILE* %call) #7
  %cmp = icmp eq i32 %call1, 666
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8** %edinam, align 8, !tbaa !0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([25 x i8]* @.str21, i64 0, i64 0), i8* %1) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call3 = tail call i32 @read_edint(%struct._IO_FILE* %call) #7
  %nini = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 0
  store i32 %call3, i32* %nini, align 4, !tbaa !3
  %cmp5 = icmp eq i32 %call3, %nr_mdatoms
  br i1 %cmp5, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  %2 = load i8** %edinam, align 8, !tbaa !0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([58 x i8]* @.str22, i64 0, i64 0), i8* %2, i32 %call3, i32 %nr_mdatoms) #6
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then6
  %call10 = tail call i32 @read_edint(%struct._IO_FILE* %call) #7
  %npro = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 1
  store i32 %call10, i32* %npro, align 4, !tbaa !3
  %call11 = tail call i32 @read_edint(%struct._IO_FILE* %call) #7
  %selmas = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 3
  %not.cmp12 = icmp ne i32 %call11, 0
  %. = zext i1 %not.cmp12 to i32
  store i32 %., i32* %selmas, align 4, !tbaa !3
  %call16 = tail call i32 @read_edint(%struct._IO_FILE* %call) #7
  %outfrq = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 4
  store i32 %call16, i32* %outfrq, align 4, !tbaa !3
  %call17 = tail call i32 @read_edint(%struct._IO_FILE* %call) #7
  %logfrq = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 5
  store i32 %call17, i32* %logfrq, align 4, !tbaa !3
  %call18 = tail call i32 @read_edint(%struct._IO_FILE* %call) #7
  %maxedsteps = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 6
  store i32 %call18, i32* %maxedsteps, align 4, !tbaa !3
  %call19 = tail call float @read_edreal(%struct._IO_FILE* %call) #7
  %slope = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 10
  store float %call19, float* %slope, align 4, !tbaa !4
  %call20 = tail call i32 @read_edint(%struct._IO_FILE* %call) #7
  %nr = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 0
  store i32 %call20, i32* %nr, align 4, !tbaa !3
  %call23 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 242, i32 %call20, i32 4) #6
  %3 = bitcast i8* %call23 to i32*
  %anrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 1
  store i32* %3, i32** %anrs, align 8, !tbaa !0
  %4 = load i32* %nr, align 4, !tbaa !3
  %call27 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 243, i32 %4, i32 12) #6
  %5 = bitcast i8* %call27 to [3 x float]*
  %x = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 2
  store [3 x float]* %5, [3 x float]** %x, align 8, !tbaa !0
  %6 = load i32* %nr, align 4, !tbaa !3
  %7 = load i32** %anrs, align 8, !tbaa !0
  tail call void @read_edx(%struct._IO_FILE* %call, i32 %6, i32* %7, [3 x float]* %5) #7
  %call35 = tail call i32 @read_edint(%struct._IO_FILE* %call) #7
  %nr36 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0
  store i32 %call35, i32* %nr36, align 4, !tbaa !3
  %call39 = tail call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 248, i32 %call35, i32 4) #6
  %8 = bitcast i8* %call39 to i32*
  %anrs41 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  store i32* %8, i32** %anrs41, align 8, !tbaa !0
  %9 = load i32* %nr36, align 4, !tbaa !3
  %call44 = tail call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 249, i32 %9, i32 12) #6
  %10 = bitcast i8* %call44 to [3 x float]*
  %x46 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 2
  store [3 x float]* %10, [3 x float]** %x46, align 8, !tbaa !0
  %11 = load i32* %nr36, align 4, !tbaa !3
  %12 = load i32** %anrs41, align 8, !tbaa !0
  tail call void @read_edx(%struct._IO_FILE* %call, i32 %11, i32* %12, [3 x float]* %10) #7
  %call53 = tail call i32 @read_edint(%struct._IO_FILE* %call) #7
  %ned = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 2
  store i32 %call53, i32* %ned, align 4, !tbaa !3
  %13 = load i32* %nr36, align 4, !tbaa !3
  %vecs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9
  tail call void @read_edvecs(%struct._IO_FILE* %call, i32 %13, %struct.t_edvecs* %vecs) #7
  %call56 = tail call i32 @read_edint(%struct._IO_FILE* %call) #7
  %nr57 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 11, i32 0
  store i32 %call56, i32* %nr57, align 4, !tbaa !3
  %cmp60 = icmp sgt i32 %call56, 0
  br i1 %cmp60, label %if.then61, label %if.end93

if.then61:                                        ; preds = %if.end9
  %call64 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 261, i32 %call56, i32 4) #6
  %14 = bitcast i8* %call64 to i32*
  %anrs66 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 11, i32 1
  store i32* %14, i32** %anrs66, align 8, !tbaa !0
  %15 = load i32* %nr57, align 4, !tbaa !3
  %call69 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 262, i32 %15, i32 12) #6
  %16 = bitcast i8* %call69 to [3 x float]*
  %17 = load i32* %nr57, align 4, !tbaa !3
  %18 = load i32** %anrs66, align 8, !tbaa !0
  tail call void @read_edx(%struct._IO_FILE* %call, i32 %17, i32* %18, [3 x float]* %16) #7
  %19 = load i32* %ned, align 4, !tbaa !3
  %call75 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 264, i32 %19, i32 12) #6
  %20 = bitcast i8* %call75 to [3 x float]*
  %x77 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 11, i32 2
  store [3 x float]* %20, [3 x float]** %x77, align 8, !tbaa !0
  %21 = load i32* %ned, align 4, !tbaa !3
  %cmp79236 = icmp sgt i32 %21, 0
  br i1 %cmp79236, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.then61
  %22 = load i32** %anrs66, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv239 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next240, %for.inc ]
  %j.0237 = phi i32 [ 0, %for.body.lr.ph ], [ %j.1, %for.inc ]
  %idxprom = sext i32 %j.0237 to i64
  %arrayidx = getelementptr inbounds i32* %22, i64 %idxprom
  %23 = load i32* %arrayidx, align 4, !tbaa !3
  %24 = trunc i64 %indvars.iv239 to i32
  %cmp82 = icmp eq i32 %23, %24
  br i1 %cmp82, label %if.then83, label %for.inc

if.then83:                                        ; preds = %for.body
  %arraydecay = getelementptr inbounds [3 x float]* %16, i64 %idxprom, i64 0
  %arraydecay90 = getelementptr inbounds [3 x float]* %20, i64 %indvars.iv239, i64 0
  %25 = load float* %arraydecay, align 4, !tbaa !4
  store float %25, float* %arraydecay90, align 4, !tbaa !4
  %arrayidx2.i = getelementptr inbounds [3 x float]* %16, i64 %idxprom, i64 1
  %26 = load float* %arrayidx2.i, align 4, !tbaa !4
  %arrayidx3.i = getelementptr inbounds [3 x float]* %20, i64 %indvars.iv239, i64 1
  store float %26, float* %arrayidx3.i, align 4, !tbaa !4
  %arrayidx4.i = getelementptr inbounds [3 x float]* %16, i64 %idxprom, i64 2
  %27 = load float* %arrayidx4.i, align 4, !tbaa !4
  %arrayidx5.i = getelementptr inbounds [3 x float]* %20, i64 %indvars.iv239, i64 2
  store float %27, float* %arrayidx5.i, align 4, !tbaa !4
  %inc = add nsw i32 %j.0237, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then83
  %j.1 = phi i32 [ %inc, %if.then83 ], [ %j.0237, %for.body ]
  %indvars.iv.next240 = add i64 %indvars.iv239, 1
  %28 = trunc i64 %indvars.iv.next240 to i32
  %cmp79 = icmp slt i32 %28, %21
  br i1 %cmp79, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.then61
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 272, i8* %call69) #6
  br label %if.end93

if.end93:                                         ; preds = %for.end, %if.end9
  %call94 = tail call i32 @read_edint(%struct._IO_FILE* %call) #7
  %nr95 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 12, i32 0
  store i32 %call94, i32* %nr95, align 4, !tbaa !3
  %cmp98 = icmp sgt i32 %call94, 0
  br i1 %cmp98, label %if.then99, label %if.end139

if.then99:                                        ; preds = %if.end93
  %call102 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 278, i32 %call94, i32 4) #6
  %29 = bitcast i8* %call102 to i32*
  %anrs104 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 12, i32 1
  store i32* %29, i32** %anrs104, align 8, !tbaa !0
  %30 = load i32* %nr95, align 4, !tbaa !3
  %call107 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 279, i32 %30, i32 12) #6
  %31 = bitcast i8* %call107 to [3 x float]*
  %32 = load i32* %nr95, align 4, !tbaa !3
  %33 = load i32** %anrs104, align 8, !tbaa !0
  tail call void @read_edx(%struct._IO_FILE* %call, i32 %32, i32* %33, [3 x float]* %31) #7
  %34 = load i32* %ned, align 4, !tbaa !3
  %call113 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 281, i32 %34, i32 12) #6
  %35 = bitcast i8* %call113 to [3 x float]*
  %x115 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 12, i32 2
  store [3 x float]* %35, [3 x float]** %x115, align 8, !tbaa !0
  %36 = load i32* %ned, align 4, !tbaa !3
  %cmp118233 = icmp sgt i32 %36, 0
  br i1 %cmp118233, label %for.body119.lr.ph, label %for.end138

for.body119.lr.ph:                                ; preds = %if.then99
  %37 = load i32** %anrs104, align 8, !tbaa !0
  br label %for.body119

for.body119:                                      ; preds = %for.body119.lr.ph, %for.inc136
  %indvars.iv = phi i64 [ 0, %for.body119.lr.ph ], [ %indvars.iv.next, %for.inc136 ]
  %j.2234 = phi i32 [ 0, %for.body119.lr.ph ], [ %j.3, %for.inc136 ]
  %idxprom120 = sext i32 %j.2234 to i64
  %arrayidx123 = getelementptr inbounds i32* %37, i64 %idxprom120
  %38 = load i32* %arrayidx123, align 4, !tbaa !3
  %39 = trunc i64 %indvars.iv to i32
  %cmp124 = icmp eq i32 %38, %39
  br i1 %cmp124, label %if.then125, label %for.inc136

if.then125:                                       ; preds = %for.body119
  %arraydecay128 = getelementptr inbounds [3 x float]* %31, i64 %idxprom120, i64 0
  %arraydecay133 = getelementptr inbounds [3 x float]* %35, i64 %indvars.iv, i64 0
  %40 = load float* %arraydecay128, align 4, !tbaa !4
  store float %40, float* %arraydecay133, align 4, !tbaa !4
  %arrayidx2.i229 = getelementptr inbounds [3 x float]* %31, i64 %idxprom120, i64 1
  %41 = load float* %arrayidx2.i229, align 4, !tbaa !4
  %arrayidx3.i230 = getelementptr inbounds [3 x float]* %35, i64 %indvars.iv, i64 1
  store float %41, float* %arrayidx3.i230, align 4, !tbaa !4
  %arrayidx4.i231 = getelementptr inbounds [3 x float]* %31, i64 %idxprom120, i64 2
  %42 = load float* %arrayidx4.i231, align 4, !tbaa !4
  %arrayidx5.i232 = getelementptr inbounds [3 x float]* %35, i64 %indvars.iv, i64 2
  store float %42, float* %arrayidx5.i232, align 4, !tbaa !4
  %inc134 = add nsw i32 %j.2234, 1
  br label %for.inc136

for.inc136:                                       ; preds = %for.body119, %if.then125
  %j.3 = phi i32 [ %inc134, %if.then125 ], [ %j.2234, %for.body119 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %43 = trunc i64 %indvars.iv.next to i32
  %cmp118 = icmp slt i32 %43, %36
  br i1 %cmp118, label %for.body119, label %for.end138

for.end138:                                       ; preds = %for.inc136, %if.then99
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 289, i8* %call107) #6
  br label %if.end139

if.end139:                                        ; preds = %for.end138, %if.end93
  tail call void @ffclose(%struct._IO_FILE* %call) #6
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define void @put_in_origin(i32 %nr, [3 x float]* nocapture %x, i32 %nmass, i32* nocapture %masnrs, float* nocapture %mass, float %tmass) #0 {
entry:
  %cm = alloca [3 x float], align 4
  %cm79 = bitcast [3 x float]* %cm to i8*
  call void @llvm.memset.p0i8.i64(i8* %cm79, i8 0, i64 12, i32 4, i1 false)
  %cmp260 = icmp sgt i32 %nmass, 0
  br i1 %cmp260, label %for.cond4.preheader, label %for.body25

for.cond4.preheader:                              ; preds = %entry, %for.inc20
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.inc20 ], [ 0, %entry ]
  %arrayidx9 = getelementptr inbounds i32* %masnrs, i64 %indvars.iv71
  %0 = load i32* %arrayidx9, align 4, !tbaa !3
  %idxprom10 = sext i32 %0 to i64
  %arrayidx14 = getelementptr inbounds float* %mass, i64 %indvars.iv71
  %1 = load float* %arrayidx14, align 4, !tbaa !4
  br label %for.body6

for.body6:                                        ; preds = %for.body6, %for.cond4.preheader
  %indvars.iv67 = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next68, %for.body6 ]
  %arrayidx12 = getelementptr inbounds [3 x float]* %x, i64 %idxprom10, i64 %indvars.iv67
  %2 = load float* %arrayidx12, align 4, !tbaa !4
  %mul = fmul float %2, %1
  %arrayidx16 = getelementptr inbounds [3 x float]* %cm, i64 0, i64 %indvars.iv67
  %3 = load float* %arrayidx16, align 4, !tbaa !4
  %add = fadd float %3, %mul
  store float %add, float* %arrayidx16, align 4, !tbaa !4
  %indvars.iv.next68 = add i64 %indvars.iv67, 1
  %lftr.wideiv69 = trunc i64 %indvars.iv.next68 to i32
  %exitcond70 = icmp eq i32 %lftr.wideiv69, 3
  br i1 %exitcond70, label %for.inc20, label %for.body6

for.inc20:                                        ; preds = %for.body6
  %indvars.iv.next72 = add i64 %indvars.iv71, 1
  %lftr.wideiv73 = trunc i64 %indvars.iv.next72 to i32
  %exitcond74 = icmp eq i32 %lftr.wideiv73, %nmass
  br i1 %exitcond74, label %for.body25, label %for.cond4.preheader

for.cond31.preheader:                             ; preds = %for.body25
  %cmp3256 = icmp sgt i32 %nr, 0
  br i1 %cmp3256, label %for.body33.lr.ph, label %for.end39

for.body33.lr.ph:                                 ; preds = %for.cond31.preheader
  %arraydecay36 = getelementptr inbounds [3 x float]* %cm, i64 0, i64 0
  %4 = load float* %arraydecay36, align 4, !tbaa !4
  %arrayidx3.i = getelementptr inbounds [3 x float]* %cm, i64 0, i64 1
  %5 = load float* %arrayidx3.i, align 4, !tbaa !4
  %arrayidx6.i = getelementptr inbounds [3 x float]* %cm, i64 0, i64 2
  %6 = load float* %arrayidx6.i, align 4, !tbaa !4
  br label %for.body33

for.body25:                                       ; preds = %for.body25, %entry, %for.inc20
  %indvars.iv63 = phi i64 [ 0, %for.inc20 ], [ 0, %entry ], [ %indvars.iv.next64, %for.body25 ]
  %arrayidx27 = getelementptr inbounds [3 x float]* %cm, i64 0, i64 %indvars.iv63
  %7 = load float* %arrayidx27, align 4, !tbaa !4
  %div = fdiv float %7, %tmass
  store float %div, float* %arrayidx27, align 4, !tbaa !4
  %indvars.iv.next64 = add i64 %indvars.iv63, 1
  %lftr.wideiv65 = trunc i64 %indvars.iv.next64 to i32
  %exitcond66 = icmp eq i32 %lftr.wideiv65, 3
  br i1 %exitcond66, label %for.cond31.preheader, label %for.body25

for.body33:                                       ; preds = %for.body33, %for.body33.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body33.lr.ph ], [ %indvars.iv.next, %for.body33 ]
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %8 = load float* %arraydecay, align 4, !tbaa !4
  %sub.i = fsub float %8, %4
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  %9 = load float* %arrayidx2.i, align 4, !tbaa !4
  %sub4.i = fsub float %9, %5
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  %10 = load float* %arrayidx5.i, align 4, !tbaa !4
  %sub7.i = fsub float %10, %6
  store float %sub.i, float* %arraydecay, align 4, !tbaa !4
  store float %sub4.i, float* %arrayidx2.i, align 4, !tbaa !4
  store float %sub7.i, float* %arrayidx5.i, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nr
  br i1 %exitcond, label %for.end39, label %for.body33

for.end39:                                        ; preds = %for.body33, %for.cond31.preheader
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: optsize
declare void @rm_pbc(%struct.t_idef*, i32, [3 x float]*, [3 x float]*, [3 x float]*) #2

; Function Attrs: nounwind optsize uwtable
define float @fitit(i32 %nr, [3 x float]* nocapture %x, %struct.t_edpar* nocapture %edi, [3 x float]* nocapture %transvec, [3 x float]* nocapture %rmat) #0 {
entry:
  %x_old = alloca [3 x float], align 4
  %x_old215 = bitcast [3 x float]* %x_old to i8*
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 400, i32 %nr, i32 12) #6
  %0 = bitcast i8* %call to [3 x float]*
  %cmp207 = icmp sgt i32 %nr, 0
  br i1 %cmp207, label %for.body, label %for.end18.critedge

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv237 = phi i64 [ %indvars.iv.next238, %for.body ], [ 0, %entry ]
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv237, i64 0
  %arraydecay3 = getelementptr inbounds [3 x float]* %0, i64 %indvars.iv237, i64 0
  %1 = load float* %arraydecay, align 4, !tbaa !4
  store float %1, float* %arraydecay3, align 4, !tbaa !4
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv237, i64 1
  %2 = load float* %arrayidx2.i, align 4, !tbaa !4
  %arrayidx3.i = getelementptr inbounds [3 x float]* %0, i64 %indvars.iv237, i64 1
  store float %2, float* %arrayidx3.i, align 4, !tbaa !4
  %arrayidx4.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv237, i64 2
  %3 = load float* %arrayidx4.i, align 4, !tbaa !4
  %arrayidx5.i = getelementptr inbounds [3 x float]* %0, i64 %indvars.iv237, i64 2
  store float %3, float* %arrayidx5.i, align 4, !tbaa !4
  %indvars.iv.next238 = add i64 %indvars.iv237, 1
  %lftr.wideiv239 = trunc i64 %indvars.iv.next238 to i32
  %exitcond240 = icmp eq i32 %lftr.wideiv239, %nr
  br i1 %exitcond240, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %nmass = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 13
  %4 = load i32* %nmass, align 4, !tbaa !3
  %masnrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 14
  %5 = load i32** %masnrs, align 8, !tbaa !0
  %mass = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 15
  %6 = load float** %mass, align 8, !tbaa !0
  %tmass = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 16
  %7 = load float* %tmass, align 4, !tbaa !4
  call void @put_in_origin(i32 %nr, [3 x float]* %x, i32 %4, i32* %5, float* %6, float %7) #7
  br i1 %cmp207, label %for.body6, label %for.end18

for.body6:                                        ; preds = %for.end, %for.body6
  %indvars.iv233 = phi i64 [ %indvars.iv.next234, %for.body6 ], [ 0, %for.end ]
  %arraydecay9 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv233, i64 0
  %arraydecay12 = getelementptr inbounds [3 x float]* %0, i64 %indvars.iv233, i64 0
  %arraydecay15 = getelementptr inbounds [3 x float]* %transvec, i64 %indvars.iv233, i64 0
  %8 = load float* %arraydecay9, align 4, !tbaa !4
  %9 = load float* %arraydecay12, align 4, !tbaa !4
  %sub.i = fsub float %8, %9
  %arrayidx2.i183 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv233, i64 1
  %10 = load float* %arrayidx2.i183, align 4, !tbaa !4
  %arrayidx3.i184 = getelementptr inbounds [3 x float]* %0, i64 %indvars.iv233, i64 1
  %11 = load float* %arrayidx3.i184, align 4, !tbaa !4
  %sub4.i = fsub float %10, %11
  %arrayidx5.i185 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv233, i64 2
  %12 = load float* %arrayidx5.i185, align 4, !tbaa !4
  %arrayidx6.i = getelementptr inbounds [3 x float]* %0, i64 %indvars.iv233, i64 2
  %13 = load float* %arrayidx6.i, align 4, !tbaa !4
  %sub7.i = fsub float %12, %13
  store float %sub.i, float* %arraydecay15, align 4, !tbaa !4
  %arrayidx9.i = getelementptr inbounds [3 x float]* %transvec, i64 %indvars.iv233, i64 1
  store float %sub4.i, float* %arrayidx9.i, align 4, !tbaa !4
  %arrayidx10.i = getelementptr inbounds [3 x float]* %transvec, i64 %indvars.iv233, i64 2
  store float %sub7.i, float* %arrayidx10.i, align 4, !tbaa !4
  %indvars.iv.next234 = add i64 %indvars.iv233, 1
  %lftr.wideiv235 = trunc i64 %indvars.iv.next234 to i32
  %exitcond236 = icmp eq i32 %lftr.wideiv235, %nr
  br i1 %exitcond236, label %for.end18, label %for.body6

for.end18.critedge:                               ; preds = %entry
  %nmass.c = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 13
  %14 = load i32* %nmass.c, align 4, !tbaa !3
  %masnrs.c = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 14
  %15 = load i32** %masnrs.c, align 8, !tbaa !0
  %mass.c = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 15
  %16 = load float** %mass.c, align 8, !tbaa !0
  %tmass.c = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 16
  %17 = load float* %tmass.c, align 4, !tbaa !4
  call void @put_in_origin(i32 %nr, [3 x float]* %x, i32 %14, i32* %15, float* %16, float %17) #7
  br label %for.end18

for.end18:                                        ; preds = %for.end18.critedge, %for.body6, %for.end
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 408, i8* %call) #6
  %nfit = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 17
  %18 = load i32* %nfit, align 4, !tbaa !3
  %call19 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 411, i32 %18, i32 12) #6
  %19 = bitcast i8* %call19 to [3 x float]*
  %20 = load i32* %nfit, align 4, !tbaa !3
  %cmp22202 = icmp sgt i32 %20, 0
  br i1 %cmp22202, label %for.body23.lr.ph, label %for.end34

for.body23.lr.ph:                                 ; preds = %for.end18
  %fitnrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 18
  %21 = load i32** %fitnrs, align 8, !tbaa !0
  br label %for.body23

for.body23:                                       ; preds = %for.body23.lr.ph, %for.body23
  %indvars.iv231 = phi i64 [ 0, %for.body23.lr.ph ], [ %indvars.iv.next232, %for.body23 ]
  %arrayidx25 = getelementptr inbounds i32* %21, i64 %indvars.iv231
  %22 = load i32* %arrayidx25, align 4, !tbaa !3
  %idxprom26 = sext i32 %22 to i64
  %arraydecay28 = getelementptr inbounds [3 x float]* %x, i64 %idxprom26, i64 0
  %arraydecay31 = getelementptr inbounds [3 x float]* %19, i64 %indvars.iv231, i64 0
  %23 = load float* %arraydecay28, align 4, !tbaa !4
  store float %23, float* %arraydecay31, align 4, !tbaa !4
  %arrayidx2.i186 = getelementptr inbounds [3 x float]* %x, i64 %idxprom26, i64 1
  %24 = load float* %arrayidx2.i186, align 4, !tbaa !4
  %arrayidx3.i187 = getelementptr inbounds [3 x float]* %19, i64 %indvars.iv231, i64 1
  store float %24, float* %arrayidx3.i187, align 4, !tbaa !4
  %arrayidx4.i188 = getelementptr inbounds [3 x float]* %x, i64 %idxprom26, i64 2
  %25 = load float* %arrayidx4.i188, align 4, !tbaa !4
  %arrayidx5.i189 = getelementptr inbounds [3 x float]* %19, i64 %indvars.iv231, i64 2
  store float %25, float* %arrayidx5.i189, align 4, !tbaa !4
  %indvars.iv.next232 = add i64 %indvars.iv231, 1
  %26 = trunc i64 %indvars.iv.next232 to i32
  %cmp22 = icmp slt i32 %26, %20
  br i1 %cmp22, label %for.body23, label %for.end34

for.end34:                                        ; preds = %for.body23, %for.end18
  %x36 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 2
  %27 = load [3 x float]** %x36, align 8, !tbaa !0
  call void @do_edfit(i32 %20, [3 x float]* %27, [3 x float]* %19, [3 x float]* %rmat) #7
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 415, i8* %call19) #6
  br i1 %cmp207, label %for.cond40.preheader, label %for.cond81.preheader

for.cond40.preheader:                             ; preds = %for.end34, %for.inc78
  %indvars.iv227 = phi i64 [ %indvars.iv.next228, %for.inc78 ], [ 0, %for.end34 ]
  %scevgep = getelementptr [3 x float]* %x, i64 %indvars.iv227, i64 0
  %scevgep216 = bitcast float* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %x_old215, i8* %scevgep216, i64 12, i32 4, i1 false)
  br label %for.body54

for.cond81.preheader:                             ; preds = %for.inc78, %for.end34
  %28 = load i32* %nfit, align 4, !tbaa !3
  %cmp83192 = icmp sgt i32 %28, 0
  br i1 %cmp83192, label %for.cond85.preheader.lr.ph, label %for.end110

for.cond85.preheader.lr.ph:                       ; preds = %for.cond81.preheader
  %29 = load [3 x float]** %x36, align 8, !tbaa !0
  %fitnrs96 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 18
  %30 = load i32** %fitnrs96, align 8, !tbaa !0
  br label %for.cond85.preheader

for.body54:                                       ; preds = %for.inc75, %for.cond40.preheader
  %indvars.iv221 = phi i64 [ 0, %for.cond40.preheader ], [ %indvars.iv.next222, %for.inc75 ]
  %arrayidx58 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv227, i64 %indvars.iv221
  store float 0.000000e+00, float* %arrayidx58, align 4, !tbaa !4
  br label %for.body61

for.body61:                                       ; preds = %for.body61, %for.body54
  %31 = phi float [ 0.000000e+00, %for.body54 ], [ %add, %for.body61 ]
  %indvars.iv217 = phi i64 [ 0, %for.body54 ], [ %indvars.iv.next218, %for.body61 ]
  %arrayidx65 = getelementptr inbounds [3 x float]* %rmat, i64 %indvars.iv217, i64 %indvars.iv221
  %32 = load float* %arrayidx65, align 4, !tbaa !4
  %arrayidx67 = getelementptr inbounds [3 x float]* %x_old, i64 0, i64 %indvars.iv217
  %33 = load float* %arrayidx67, align 4, !tbaa !4
  %mul = fmul float %32, %33
  %add = fadd float %31, %mul
  store float %add, float* %arrayidx58, align 4, !tbaa !4
  %indvars.iv.next218 = add i64 %indvars.iv217, 1
  %lftr.wideiv219 = trunc i64 %indvars.iv.next218 to i32
  %exitcond220 = icmp eq i32 %lftr.wideiv219, 3
  br i1 %exitcond220, label %for.inc75, label %for.body61

for.inc75:                                        ; preds = %for.body61
  %indvars.iv.next222 = add i64 %indvars.iv221, 1
  %lftr.wideiv223 = trunc i64 %indvars.iv.next222 to i32
  %exitcond224 = icmp eq i32 %lftr.wideiv223, 3
  br i1 %exitcond224, label %for.inc78, label %for.body54

for.inc78:                                        ; preds = %for.inc75
  %indvars.iv.next228 = add i64 %indvars.iv227, 1
  %lftr.wideiv229 = trunc i64 %indvars.iv.next228 to i32
  %exitcond230 = icmp eq i32 %lftr.wideiv229, %nr
  br i1 %exitcond230, label %for.cond81.preheader, label %for.cond40.preheader

for.cond85.preheader:                             ; preds = %for.cond85.preheader.lr.ph, %for.inc108
  %indvars.iv209 = phi i64 [ 0, %for.cond85.preheader.lr.ph ], [ %indvars.iv.next210, %for.inc108 ]
  %rmsd.0194 = phi float [ 0.000000e+00, %for.cond85.preheader.lr.ph ], [ %conv104, %for.inc108 ]
  %arrayidx97 = getelementptr inbounds i32* %30, i64 %indvars.iv209
  %34 = load i32* %arrayidx97, align 4, !tbaa !3
  %idxprom98 = sext i32 %34 to i64
  br label %for.body87

for.body87:                                       ; preds = %for.body87, %for.cond85.preheader
  %indvars.iv = phi i64 [ 0, %for.cond85.preheader ], [ %indvars.iv.next, %for.body87 ]
  %rmsd.1191 = phi float [ %rmsd.0194, %for.cond85.preheader ], [ %conv104, %for.body87 ]
  %arrayidx93 = getelementptr inbounds [3 x float]* %29, i64 %indvars.iv209, i64 %indvars.iv
  %35 = load float* %arrayidx93, align 4, !tbaa !4
  %arrayidx100 = getelementptr inbounds [3 x float]* %x, i64 %idxprom98, i64 %indvars.iv
  %36 = load float* %arrayidx100, align 4, !tbaa !4
  %sub = fsub float %35, %36
  %conv = fpext float %sub to double
  %pow2 = fmul double %conv, %conv
  %conv102 = fpext float %rmsd.1191 to double
  %add103 = fadd double %conv102, %pow2
  %conv104 = fptrunc double %add103 to float
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc108, label %for.body87

for.inc108:                                       ; preds = %for.body87
  %indvars.iv.next210 = add i64 %indvars.iv209, 1
  %37 = trunc i64 %indvars.iv.next210 to i32
  %cmp83 = icmp slt i32 %37, %28
  br i1 %cmp83, label %for.cond85.preheader, label %for.end110

for.end110:                                       ; preds = %for.inc108, %for.cond81.preheader
  %rmsd.0.lcssa = phi float [ 0.000000e+00, %for.cond81.preheader ], [ %conv104, %for.inc108 ]
  %conv112 = sitofp i32 %28 to float
  %div = fdiv float %rmsd.0.lcssa, %conv112
  %conv115 = call float @sqrtf(float %div) #1
  ret float %conv115
}

; Function Attrs: nounwind optsize uwtable
define void @project([3 x float]* nocapture %x, %struct.t_edpar* nocapture %edi, i8* nocapture %mode) #0 {
entry:
  %call = tail call i32 @strcmp(i8* %mode, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #8
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %for.cond.preheader, label %if.end

for.cond.preheader:                               ; preds = %entry
  %nr = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0
  %0 = load i32* %nr, align 4, !tbaa !3
  %cmp183 = icmp sgt i32 %0, 0
  br i1 %cmp183, label %for.body.lr.ph, label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %anrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  %1 = load i32** %anrs, align 8, !tbaa !0
  %x7 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 2
  %2 = load [3 x float]** %x7, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv85 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next86, %for.body ]
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv85
  %3 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom3 = sext i32 %3 to i64
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %idxprom3, i64 0
  %arraydecay9 = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv85, i64 0
  %4 = load float* %arraydecay, align 4, !tbaa !4
  %5 = load float* %arraydecay9, align 4, !tbaa !4
  %sub.i = fsub float %4, %5
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom3, i64 1
  %6 = load float* %arrayidx2.i, align 4, !tbaa !4
  %arrayidx3.i = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv85, i64 1
  %7 = load float* %arrayidx3.i, align 4, !tbaa !4
  %sub4.i = fsub float %6, %7
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom3, i64 2
  %8 = load float* %arrayidx5.i, align 4, !tbaa !4
  %arrayidx6.i = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv85, i64 2
  %9 = load float* %arrayidx6.i, align 4, !tbaa !4
  %sub7.i = fsub float %8, %9
  store float %sub.i, float* %arraydecay, align 4, !tbaa !4
  store float %sub4.i, float* %arrayidx2.i, align 4, !tbaa !4
  store float %sub7.i, float* %arrayidx5.i, align 4, !tbaa !4
  %indvars.iv.next86 = add i64 %indvars.iv85, 1
  %10 = trunc i64 %indvars.iv.next86 to i32
  %cmp1 = icmp slt i32 %10, %0
  br i1 %cmp1, label %for.body, label %if.end

if.end:                                           ; preds = %for.cond.preheader, %for.body, %entry
  %mon = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 0
  tail call void @do_project([3 x float]* %x, %struct.t_eigvec* %mon, %struct.t_edpar* %edi, i8* %mode) #7
  %linfix = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1
  tail call void @do_project([3 x float]* %x, %struct.t_eigvec* %linfix, %struct.t_edpar* %edi, i8* %mode) #7
  %linacc = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2
  tail call void @do_project([3 x float]* %x, %struct.t_eigvec* %linacc, %struct.t_edpar* %edi, i8* %mode) #7
  %radfix = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3
  tail call void @do_project([3 x float]* %x, %struct.t_eigvec* %radfix, %struct.t_edpar* %edi, i8* %mode) #7
  %radacc = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4
  tail call void @do_project([3 x float]* %x, %struct.t_eigvec* %radacc, %struct.t_edpar* %edi, i8* %mode) #7
  %radcon = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5
  tail call void @do_project([3 x float]* %x, %struct.t_eigvec* %radcon, %struct.t_edpar* %edi, i8* %mode) #7
  %call15 = tail call i32 @strcmp(i8* %mode, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #8
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %for.cond18.preheader, label %if.end38

for.cond18.preheader:                             ; preds = %if.end
  %nr20 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0
  %11 = load i32* %nr20, align 4, !tbaa !3
  %cmp2181 = icmp sgt i32 %11, 0
  br i1 %cmp2181, label %for.body22.lr.ph, label %if.end38

for.body22.lr.ph:                                 ; preds = %for.cond18.preheader
  %anrs25 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  %12 = load i32** %anrs25, align 8, !tbaa !0
  %x32 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 2
  %13 = load [3 x float]** %x32, align 8, !tbaa !0
  br label %for.body22

for.body22:                                       ; preds = %for.body22.lr.ph, %for.body22
  %indvars.iv = phi i64 [ 0, %for.body22.lr.ph ], [ %indvars.iv.next, %for.body22 ]
  %arrayidx26 = getelementptr inbounds i32* %12, i64 %indvars.iv
  %14 = load i32* %arrayidx26, align 4, !tbaa !3
  %idxprom27 = sext i32 %14 to i64
  %arraydecay29 = getelementptr inbounds [3 x float]* %x, i64 %idxprom27, i64 0
  %arraydecay34 = getelementptr inbounds [3 x float]* %13, i64 %indvars.iv, i64 0
  %15 = load float* %arraydecay29, align 4, !tbaa !4
  %16 = load float* %arraydecay34, align 4, !tbaa !4
  %add.i = fadd float %15, %16
  %arrayidx2.i77 = getelementptr inbounds [3 x float]* %x, i64 %idxprom27, i64 1
  %17 = load float* %arrayidx2.i77, align 4, !tbaa !4
  %arrayidx3.i78 = getelementptr inbounds [3 x float]* %13, i64 %indvars.iv, i64 1
  %18 = load float* %arrayidx3.i78, align 4, !tbaa !4
  %add4.i = fadd float %17, %18
  %arrayidx5.i79 = getelementptr inbounds [3 x float]* %x, i64 %idxprom27, i64 2
  %19 = load float* %arrayidx5.i79, align 4, !tbaa !4
  %arrayidx6.i80 = getelementptr inbounds [3 x float]* %13, i64 %indvars.iv, i64 2
  %20 = load float* %arrayidx6.i80, align 4, !tbaa !4
  %add7.i = fadd float %19, %20
  store float %add.i, float* %arraydecay29, align 4, !tbaa !4
  store float %add4.i, float* %arrayidx2.i77, align 4, !tbaa !4
  store float %add7.i, float* %arrayidx5.i79, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %21 = trunc i64 %indvars.iv.next to i32
  %cmp21 = icmp slt i32 %21, %11
  br i1 %cmp21, label %for.body22, label %if.end38

if.end38:                                         ; preds = %for.cond18.preheader, %for.body22, %if.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @write_edidx(%struct._IO_FILE* nocapture %out, %struct.t_edpar* nocapture %edi) #0 {
entry:
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str61, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %out)
  %neig = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 0, i32 0
  %1 = load i32* %neig, align 4, !tbaa !3
  %cmp200 = icmp sgt i32 %1, 0
  br i1 %cmp200, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ieig = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 0, i32 1
  %xproj = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv210 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next211, %for.body ]
  %2 = load i32** %ieig, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %2, i64 %indvars.iv210
  %3 = load i32* %arrayidx, align 4, !tbaa !3
  %4 = load float** %xproj, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds float* %4, i64 %indvars.iv210
  %5 = load float* %arrayidx6, align 4, !tbaa !4
  %conv = fpext float %5 to double
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([9 x i8]* @.str62, i64 0, i64 0), i32 %3, double %conv) #6
  %indvars.iv.next211 = add i64 %indvars.iv210, 1
  %6 = load i32* %neig, align 4, !tbaa !3
  %7 = trunc i64 %indvars.iv.next211 to i32
  %cmp = icmp slt i32 %7, %6
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out)
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str63, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %out)
  %neig12 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1, i32 0
  %9 = load i32* %neig12, align 4, !tbaa !3
  %cmp13198 = icmp sgt i32 %9, 0
  br i1 %cmp13198, label %for.body15.lr.ph, label %for.end30

for.body15.lr.ph:                                 ; preds = %for.end
  %ieig19 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1, i32 1
  %xproj24 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1, i32 4
  br label %for.body15

for.body15:                                       ; preds = %for.body15.lr.ph, %for.body15
  %indvars.iv208 = phi i64 [ 0, %for.body15.lr.ph ], [ %indvars.iv.next209, %for.body15 ]
  %10 = load i32** %ieig19, align 8, !tbaa !0
  %arrayidx20 = getelementptr inbounds i32* %10, i64 %indvars.iv208
  %11 = load i32* %arrayidx20, align 4, !tbaa !3
  %12 = load float** %xproj24, align 8, !tbaa !0
  %arrayidx25 = getelementptr inbounds float* %12, i64 %indvars.iv208
  %13 = load float* %arrayidx25, align 4, !tbaa !4
  %conv26 = fpext float %13 to double
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([9 x i8]* @.str62, i64 0, i64 0), i32 %11, double %conv26) #6
  %indvars.iv.next209 = add i64 %indvars.iv208, 1
  %14 = load i32* %neig12, align 4, !tbaa !3
  %15 = trunc i64 %indvars.iv.next209 to i32
  %cmp13 = icmp slt i32 %15, %14
  br i1 %cmp13, label %for.body15, label %for.end30

for.end30:                                        ; preds = %for.body15, %for.end
  %fputc177 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out)
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str64, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %out)
  %neig35 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2, i32 0
  %17 = load i32* %neig35, align 4, !tbaa !3
  %cmp36196 = icmp sgt i32 %17, 0
  br i1 %cmp36196, label %for.body38.lr.ph, label %for.end53

for.body38.lr.ph:                                 ; preds = %for.end30
  %ieig42 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2, i32 1
  %xproj47 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2, i32 4
  br label %for.body38

for.body38:                                       ; preds = %for.body38.lr.ph, %for.body38
  %indvars.iv206 = phi i64 [ 0, %for.body38.lr.ph ], [ %indvars.iv.next207, %for.body38 ]
  %18 = load i32** %ieig42, align 8, !tbaa !0
  %arrayidx43 = getelementptr inbounds i32* %18, i64 %indvars.iv206
  %19 = load i32* %arrayidx43, align 4, !tbaa !3
  %20 = load float** %xproj47, align 8, !tbaa !0
  %arrayidx48 = getelementptr inbounds float* %20, i64 %indvars.iv206
  %21 = load float* %arrayidx48, align 4, !tbaa !4
  %conv49 = fpext float %21 to double
  %call50 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([9 x i8]* @.str62, i64 0, i64 0), i32 %19, double %conv49) #6
  %indvars.iv.next207 = add i64 %indvars.iv206, 1
  %22 = load i32* %neig35, align 4, !tbaa !3
  %23 = trunc i64 %indvars.iv.next207 to i32
  %cmp36 = icmp slt i32 %23, %22
  br i1 %cmp36, label %for.body38, label %for.end53

for.end53:                                        ; preds = %for.body38, %for.end30
  %fputc180 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out)
  %24 = tail call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str65, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %out)
  %neig58 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 0
  %25 = load i32* %neig58, align 4, !tbaa !3
  %cmp59194 = icmp sgt i32 %25, 0
  br i1 %cmp59194, label %for.body61.lr.ph, label %for.end76

for.body61.lr.ph:                                 ; preds = %for.end53
  %ieig65 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 1
  %xproj70 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 4
  br label %for.body61

for.body61:                                       ; preds = %for.body61.lr.ph, %for.body61
  %indvars.iv204 = phi i64 [ 0, %for.body61.lr.ph ], [ %indvars.iv.next205, %for.body61 ]
  %26 = load i32** %ieig65, align 8, !tbaa !0
  %arrayidx66 = getelementptr inbounds i32* %26, i64 %indvars.iv204
  %27 = load i32* %arrayidx66, align 4, !tbaa !3
  %28 = load float** %xproj70, align 8, !tbaa !0
  %arrayidx71 = getelementptr inbounds float* %28, i64 %indvars.iv204
  %29 = load float* %arrayidx71, align 4, !tbaa !4
  %conv72 = fpext float %29 to double
  %call73 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([9 x i8]* @.str62, i64 0, i64 0), i32 %27, double %conv72) #6
  %indvars.iv.next205 = add i64 %indvars.iv204, 1
  %30 = load i32* %neig58, align 4, !tbaa !3
  %31 = trunc i64 %indvars.iv.next205 to i32
  %cmp59 = icmp slt i32 %31, %30
  br i1 %cmp59, label %for.body61, label %for.end76

for.end76:                                        ; preds = %for.body61, %for.end53
  %fputc183 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out)
  %32 = tail call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str66, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %out)
  %neig81 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 0
  %33 = load i32* %neig81, align 4, !tbaa !3
  %cmp82192 = icmp sgt i32 %33, 0
  br i1 %cmp82192, label %for.body84.lr.ph, label %for.end99

for.body84.lr.ph:                                 ; preds = %for.end76
  %ieig88 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 1
  %xproj93 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 4
  br label %for.body84

for.body84:                                       ; preds = %for.body84.lr.ph, %for.body84
  %indvars.iv202 = phi i64 [ 0, %for.body84.lr.ph ], [ %indvars.iv.next203, %for.body84 ]
  %34 = load i32** %ieig88, align 8, !tbaa !0
  %arrayidx89 = getelementptr inbounds i32* %34, i64 %indvars.iv202
  %35 = load i32* %arrayidx89, align 4, !tbaa !3
  %36 = load float** %xproj93, align 8, !tbaa !0
  %arrayidx94 = getelementptr inbounds float* %36, i64 %indvars.iv202
  %37 = load float* %arrayidx94, align 4, !tbaa !4
  %conv95 = fpext float %37 to double
  %call96 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([9 x i8]* @.str62, i64 0, i64 0), i32 %35, double %conv95) #6
  %indvars.iv.next203 = add i64 %indvars.iv202, 1
  %38 = load i32* %neig81, align 4, !tbaa !3
  %39 = trunc i64 %indvars.iv.next203 to i32
  %cmp82 = icmp slt i32 %39, %38
  br i1 %cmp82, label %for.body84, label %for.end99

for.end99:                                        ; preds = %for.body84, %for.end76
  %fputc186 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out)
  %40 = tail call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str67, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %out)
  %neig104 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 0
  %41 = load i32* %neig104, align 4, !tbaa !3
  %cmp105190 = icmp sgt i32 %41, 0
  br i1 %cmp105190, label %for.body107.lr.ph, label %for.end122

for.body107.lr.ph:                                ; preds = %for.end99
  %ieig111 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 1
  %xproj116 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 4
  br label %for.body107

for.body107:                                      ; preds = %for.body107.lr.ph, %for.body107
  %indvars.iv = phi i64 [ 0, %for.body107.lr.ph ], [ %indvars.iv.next, %for.body107 ]
  %42 = load i32** %ieig111, align 8, !tbaa !0
  %arrayidx112 = getelementptr inbounds i32* %42, i64 %indvars.iv
  %43 = load i32* %arrayidx112, align 4, !tbaa !3
  %44 = load float** %xproj116, align 8, !tbaa !0
  %arrayidx117 = getelementptr inbounds float* %44, i64 %indvars.iv
  %45 = load float* %arrayidx117, align 4, !tbaa !4
  %conv118 = fpext float %45 to double
  %call119 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([9 x i8]* @.str62, i64 0, i64 0), i32 %43, double %conv118) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %46 = load i32* %neig104, align 4, !tbaa !3
  %47 = trunc i64 %indvars.iv.next to i32
  %cmp105 = icmp slt i32 %47, %46
  br i1 %cmp105, label %for.body107, label %for.end122

for.end122:                                       ; preds = %for.body107, %for.end99
  %fputc189 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @projectx(%struct.t_edpar* nocapture %edi, [3 x float]* nocapture %x, %struct.t_eigvec* nocapture %vec) #0 {
entry:
  %nr = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0
  %0 = load i32* %nr, align 4, !tbaa !3
  %cmp129 = icmp sgt i32 %0, 0
  br i1 %cmp129, label %for.body.lr.ph, label %for.cond9.preheader

for.body.lr.ph:                                   ; preds = %entry
  %anrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  %1 = load i32** %anrs, align 8, !tbaa !0
  %x6 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 2
  %2 = load [3 x float]** %x6, align 8, !tbaa !0
  br label %for.body

for.cond9.preheader:                              ; preds = %for.body, %entry
  %neig = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 0
  %3 = load i32* %neig, align 4, !tbaa !3
  %cmp10126 = icmp sgt i32 %3, 0
  br i1 %cmp10126, label %for.body11.lr.ph, label %for.end56

for.body11.lr.ph:                                 ; preds = %for.cond9.preheader
  %refproj = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 7
  %4 = load float** %refproj, align 8, !tbaa !0
  %xproj = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 4
  %5 = load float** %xproj, align 8, !tbaa !0
  %vec25 = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 3
  %anrs32 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  br label %for.body11

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv138 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next139, %for.body ]
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv138
  %6 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom2 = sext i32 %6 to i64
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %idxprom2, i64 0
  %arraydecay8 = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv138, i64 0
  %7 = load float* %arraydecay, align 4, !tbaa !4
  %8 = load float* %arraydecay8, align 4, !tbaa !4
  %sub.i = fsub float %7, %8
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom2, i64 1
  %9 = load float* %arrayidx2.i, align 4, !tbaa !4
  %arrayidx3.i = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv138, i64 1
  %10 = load float* %arrayidx3.i, align 4, !tbaa !4
  %sub4.i = fsub float %9, %10
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom2, i64 2
  %11 = load float* %arrayidx5.i, align 4, !tbaa !4
  %arrayidx6.i = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv138, i64 2
  %12 = load float* %arrayidx6.i, align 4, !tbaa !4
  %sub7.i = fsub float %11, %12
  store float %sub.i, float* %arraydecay, align 4, !tbaa !4
  store float %sub4.i, float* %arrayidx2.i, align 4, !tbaa !4
  store float %sub7.i, float* %arrayidx5.i, align 4, !tbaa !4
  %indvars.iv.next139 = add i64 %indvars.iv138, 1
  %13 = trunc i64 %indvars.iv.next139 to i32
  %cmp = icmp slt i32 %13, %0
  br i1 %cmp, label %for.body, label %for.cond9.preheader

for.body11:                                       ; preds = %for.body11.lr.ph, %for.end45
  %indvars.iv136 = phi i64 [ 0, %for.body11.lr.ph ], [ %indvars.iv.next137, %for.end45 ]
  %rad.0128 = phi double [ 0.000000e+00, %for.body11.lr.ph ], [ %phitmp, %for.end45 ]
  %arrayidx13 = getelementptr inbounds float* %4, i64 %indvars.iv136
  store float 0.000000e+00, float* %arrayidx13, align 4, !tbaa !4
  br i1 %cmp129, label %for.cond19.preheader.lr.ph, label %for.end45

for.cond19.preheader.lr.ph:                       ; preds = %for.body11
  %14 = load [3 x float]*** %vec25, align 8, !tbaa !0
  %arrayidx26 = getelementptr inbounds [3 x float]** %14, i64 %indvars.iv136
  %15 = load [3 x float]** %arrayidx26, align 8, !tbaa !0
  %16 = load i32** %anrs32, align 8, !tbaa !0
  br label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.cond19.preheader.lr.ph, %for.inc43
  %.pre140 = phi float [ 0.000000e+00, %for.cond19.preheader.lr.ph ], [ %add, %for.inc43 ]
  %indvars.iv134 = phi i64 [ 0, %for.cond19.preheader.lr.ph ], [ %indvars.iv.next135, %for.inc43 ]
  %arrayidx33 = getelementptr inbounds i32* %16, i64 %indvars.iv134
  %17 = load i32* %arrayidx33, align 4, !tbaa !3
  %idxprom34 = sext i32 %17 to i64
  br label %for.body21

for.body21:                                       ; preds = %for.body21, %for.cond19.preheader
  %18 = phi float [ %.pre140, %for.cond19.preheader ], [ %add, %for.body21 ]
  %indvars.iv132 = phi i64 [ 0, %for.cond19.preheader ], [ %indvars.iv.next133, %for.body21 ]
  %arrayidx28 = getelementptr inbounds [3 x float]* %15, i64 %indvars.iv134, i64 %indvars.iv132
  %19 = load float* %arrayidx28, align 4, !tbaa !4
  %arrayidx36 = getelementptr inbounds [3 x float]* %x, i64 %idxprom34, i64 %indvars.iv132
  %20 = load float* %arrayidx36, align 4, !tbaa !4
  %mul = fmul float %19, %20
  %add = fadd float %mul, %18
  store float %add, float* %arrayidx13, align 4, !tbaa !4
  %indvars.iv.next133 = add i64 %indvars.iv132, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next133 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc43, label %for.body21

for.inc43:                                        ; preds = %for.body21
  %indvars.iv.next135 = add i64 %indvars.iv134, 1
  %21 = trunc i64 %indvars.iv.next135 to i32
  %cmp17 = icmp slt i32 %21, %0
  br i1 %cmp17, label %for.cond19.preheader, label %for.end45

for.end45:                                        ; preds = %for.inc43, %for.body11
  %22 = phi float [ 0.000000e+00, %for.body11 ], [ %add, %for.inc43 ]
  %arrayidx50 = getelementptr inbounds float* %5, i64 %indvars.iv136
  %23 = load float* %arrayidx50, align 4, !tbaa !4
  %sub = fsub float %22, %23
  %conv = fpext float %sub to double
  %pow2 = fmul double %conv, %conv
  %add52 = fadd double %rad.0128, %pow2
  %conv53 = fptrunc double %add52 to float
  %indvars.iv.next137 = add i64 %indvars.iv136, 1
  %phitmp = fpext float %conv53 to double
  %24 = trunc i64 %indvars.iv.next137 to i32
  %cmp10 = icmp slt i32 %24, %3
  br i1 %cmp10, label %for.body11, label %for.end56

for.end56:                                        ; preds = %for.end45, %for.cond9.preheader
  %rad.0.lcssa = phi double [ 0.000000e+00, %for.cond9.preheader ], [ %phitmp, %for.end45 ]
  %call58 = tail call double @sqrt(double %rad.0.lcssa) #6
  %conv59 = fptrunc double %call58 to float
  %radius = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 8
  store float %conv59, float* %radius, align 4, !tbaa !4
  %25 = load i32* %nr, align 4, !tbaa !3
  %cmp63121 = icmp sgt i32 %25, 0
  br i1 %cmp63121, label %for.body65.lr.ph, label %for.end80

for.body65.lr.ph:                                 ; preds = %for.end56
  %anrs68 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  %26 = load i32** %anrs68, align 8, !tbaa !0
  %x75 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 2
  %27 = load [3 x float]** %x75, align 8, !tbaa !0
  br label %for.body65

for.body65:                                       ; preds = %for.body65.lr.ph, %for.body65
  %indvars.iv = phi i64 [ 0, %for.body65.lr.ph ], [ %indvars.iv.next, %for.body65 ]
  %arrayidx69 = getelementptr inbounds i32* %26, i64 %indvars.iv
  %28 = load i32* %arrayidx69, align 4, !tbaa !3
  %idxprom70 = sext i32 %28 to i64
  %arraydecay72 = getelementptr inbounds [3 x float]* %x, i64 %idxprom70, i64 0
  %arraydecay77 = getelementptr inbounds [3 x float]* %27, i64 %indvars.iv, i64 0
  %29 = load float* %arraydecay72, align 4, !tbaa !4
  %30 = load float* %arraydecay77, align 4, !tbaa !4
  %add.i = fadd float %29, %30
  %arrayidx2.i117 = getelementptr inbounds [3 x float]* %x, i64 %idxprom70, i64 1
  %31 = load float* %arrayidx2.i117, align 4, !tbaa !4
  %arrayidx3.i118 = getelementptr inbounds [3 x float]* %27, i64 %indvars.iv, i64 1
  %32 = load float* %arrayidx3.i118, align 4, !tbaa !4
  %add4.i = fadd float %31, %32
  %arrayidx5.i119 = getelementptr inbounds [3 x float]* %x, i64 %idxprom70, i64 2
  %33 = load float* %arrayidx5.i119, align 4, !tbaa !4
  %arrayidx6.i120 = getelementptr inbounds [3 x float]* %27, i64 %indvars.iv, i64 2
  %34 = load float* %arrayidx6.i120, align 4, !tbaa !4
  %add7.i = fadd float %33, %34
  store float %add.i, float* %arraydecay72, align 4, !tbaa !4
  store float %add4.i, float* %arrayidx2.i117, align 4, !tbaa !4
  store float %add7.i, float* %arrayidx5.i119, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %35 = trunc i64 %indvars.iv.next to i32
  %cmp63 = icmp slt i32 %35, %25
  br i1 %cmp63, label %for.body65, label %for.end80

for.end80:                                        ; preds = %for.body65, %for.end56
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define i32 @read_edint(%struct._IO_FILE* %file) #0 {
entry:
  %line = alloca [4097 x i8], align 16
  %idum = alloca i32, align 4
  %0 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4097, i8* %0) #3
  %call = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %file) #6
  %call2 = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %file) #6
  %call4 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str30, i64 0, i64 0), i32* %idum) #6
  %1 = load i32* %idum, align 4, !tbaa !3
  call void @llvm.lifetime.end(i64 4097, i8* %0) #3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define float @read_edreal(%struct._IO_FILE* %file) #0 {
entry:
  %line = alloca [4097 x i8], align 16
  %rdum = alloca double, align 8
  %0 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4097, i8* %0) #3
  %call = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %file) #6
  %call2 = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %file) #6
  %call4 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str31, i64 0, i64 0), double* %rdum) #6
  %1 = load double* %rdum, align 8, !tbaa !5
  %conv = fptrunc double %1 to float
  call void @llvm.lifetime.end(i64 4097, i8* %0) #3
  ret float %conv
}

; Function Attrs: nounwind optsize uwtable
define void @read_edx(%struct._IO_FILE* %file, i32 %number, i32* %anrs, [3 x float]* nocapture %x) #0 {
entry:
  %line = alloca [4097 x i8], align 16
  %d = alloca [3 x double], align 16
  %0 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4097, i8* %0) #3
  %cmp29 = icmp sgt i32 %number, 0
  br i1 %cmp29, label %for.body.lr.ph, label %for.end19

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx2 = getelementptr inbounds [3 x double]* %d, i64 0, i64 0
  %arrayidx3 = getelementptr inbounds [3 x double]* %d, i64 0, i64 1
  %arrayidx4 = getelementptr inbounds [3 x double]* %d, i64 0, i64 2
  br label %for.body

for.body:                                         ; preds = %for.inc17, %for.body.lr.ph
  %indvars.iv31 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next32, %for.inc17 ]
  %call = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %file) #6
  %arrayidx = getelementptr inbounds i32* %anrs, i64 %indvars.iv31
  %call5 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([12 x i8]* @.str32, i64 0, i64 0), i32* %arrayidx, double* %arrayidx2, double* %arrayidx3, double* %arrayidx4) #6
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %arrayidx, align 4, !tbaa !3
  br label %for.body10

for.body10:                                       ; preds = %for.body10, %for.body
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.body10 ]
  %arrayidx12 = getelementptr inbounds [3 x double]* %d, i64 0, i64 %indvars.iv
  %2 = load double* %arrayidx12, align 8, !tbaa !5
  %conv = fptrunc double %2 to float
  %arrayidx16 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv31, i64 %indvars.iv
  store float %conv, float* %arrayidx16, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc17, label %for.body10

for.inc17:                                        ; preds = %for.body10
  %indvars.iv.next32 = add i64 %indvars.iv31, 1
  %lftr.wideiv33 = trunc i64 %indvars.iv.next32 to i32
  %exitcond34 = icmp eq i32 %lftr.wideiv33, %number
  br i1 %exitcond34, label %for.end19, label %for.body

for.end19:                                        ; preds = %for.inc17, %entry
  call void @llvm.lifetime.end(i64 4097, i8* %0) #3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @read_edvecs(%struct._IO_FILE* %in, i32 %nr, %struct.t_edvecs* nocapture %vecs) #0 {
entry:
  %mon = getelementptr inbounds %struct.t_edvecs* %vecs, i64 0, i32 0
  tail call void @read_edvec(%struct._IO_FILE* %in, i32 %nr, %struct.t_eigvec* %mon) #7
  %linfix = getelementptr inbounds %struct.t_edvecs* %vecs, i64 0, i32 1
  tail call void @read_edvec(%struct._IO_FILE* %in, i32 %nr, %struct.t_eigvec* %linfix) #7
  %linacc = getelementptr inbounds %struct.t_edvecs* %vecs, i64 0, i32 2
  tail call void @read_edvec(%struct._IO_FILE* %in, i32 %nr, %struct.t_eigvec* %linacc) #7
  %radfix = getelementptr inbounds %struct.t_edvecs* %vecs, i64 0, i32 3
  tail call void @read_edvec(%struct._IO_FILE* %in, i32 %nr, %struct.t_eigvec* %radfix) #7
  %radacc = getelementptr inbounds %struct.t_edvecs* %vecs, i64 0, i32 4
  tail call void @read_edvec(%struct._IO_FILE* %in, i32 %nr, %struct.t_eigvec* %radacc) #7
  %radcon = getelementptr inbounds %struct.t_edvecs* %vecs, i64 0, i32 5
  tail call void @read_edvec(%struct._IO_FILE* %in, i32 %nr, %struct.t_eigvec* %radcon) #7
  ret void
}

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #2

; Function Attrs: optsize
declare i8* @fgets2(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize uwtable
define i32 @read_edint2(%struct._IO_FILE* %file) #0 {
entry:
  %line = alloca [4097 x i8], align 16
  %idum = alloca i32, align 4
  %0 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4097, i8* %0) #3
  %call = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %file) #6
  %call2 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str30, i64 0, i64 0), i32* %idum) #6
  %1 = load i32* %idum, align 4, !tbaa !3
  call void @llvm.lifetime.end(i64 4097, i8* %0) #3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define void @read_edvec(%struct._IO_FILE* %in, i32 %nr, %struct.t_eigvec* nocapture %tvec) #0 {
entry:
  %idum = alloca i32, align 4
  %rdum = alloca double, align 8
  %line = alloca [4097 x i8], align 16
  %0 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4097, i8* %0) #3
  %call = call i32 @read_edint(%struct._IO_FILE* %in) #7
  %neig = getelementptr inbounds %struct.t_eigvec* %tvec, i64 0, i32 0
  store i32 %call, i32* %neig, align 4, !tbaa !3
  %call2 = call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 360, i32 %call, i32 4) #6
  %1 = bitcast i8* %call2 to i32*
  %ieig = getelementptr inbounds %struct.t_eigvec* %tvec, i64 0, i32 1
  store i32* %1, i32** %ieig, align 8, !tbaa !0
  %2 = load i32* %neig, align 4, !tbaa !3
  %call4 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 361, i32 %2, i32 4) #6
  %3 = bitcast i8* %call4 to float*
  %stpsz = getelementptr inbounds %struct.t_eigvec* %tvec, i64 0, i32 2
  store float* %3, float** %stpsz, align 8, !tbaa !0
  %4 = load i32* %neig, align 4, !tbaa !3
  %call6 = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 362, i32 %4, i32 8) #6
  %5 = bitcast i8* %call6 to [3 x float]**
  %vec = getelementptr inbounds %struct.t_eigvec* %tvec, i64 0, i32 3
  store [3 x float]** %5, [3 x float]*** %vec, align 8, !tbaa !0
  %6 = load i32* %neig, align 4, !tbaa !3
  %call8 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 363, i32 %6, i32 4) #6
  %7 = bitcast i8* %call8 to float*
  %xproj = getelementptr inbounds %struct.t_eigvec* %tvec, i64 0, i32 4
  store float* %7, float** %xproj, align 8, !tbaa !0
  %8 = load i32* %neig, align 4, !tbaa !3
  %call10 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 364, i32 %8, i32 4) #6
  %9 = bitcast i8* %call10 to float*
  %vproj = getelementptr inbounds %struct.t_eigvec* %tvec, i64 0, i32 5
  store float* %9, float** %vproj, align 8, !tbaa !0
  %10 = load i32* %neig, align 4, !tbaa !3
  %call12 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 365, i32 %10, i32 4) #6
  %11 = bitcast i8* %call12 to float*
  %fproj = getelementptr inbounds %struct.t_eigvec* %tvec, i64 0, i32 6
  store float* %11, float** %fproj, align 8, !tbaa !0
  %12 = load i32* %neig, align 4, !tbaa !3
  %call14 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 366, i32 %12, i32 4) #6
  %13 = bitcast i8* %call14 to float*
  %refproj = getelementptr inbounds %struct.t_eigvec* %tvec, i64 0, i32 7
  store float* %13, float** %refproj, align 8, !tbaa !0
  %14 = load i32* %neig, align 4, !tbaa !3
  %cmp70 = icmp sgt i32 %14, 0
  br i1 %cmp70, label %for.body, label %for.end37

for.cond23.preheader:                             ; preds = %for.body
  %cmp2568 = icmp sgt i32 %19, 0
  br i1 %cmp2568, label %for.body27, label %for.end37

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.body ], [ 0, %entry ]
  %call16 = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %in) #6
  %call18 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str40, i64 0, i64 0), i32* %idum, double* %rdum) #6
  %15 = load i32* %idum, align 4, !tbaa !3
  %16 = load i32** %ieig, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %16, i64 %indvars.iv72
  store i32 %15, i32* %arrayidx, align 4, !tbaa !3
  %17 = load double* %rdum, align 8, !tbaa !5
  %conv = fptrunc double %17 to float
  %18 = load float** %stpsz, align 8, !tbaa !0
  %arrayidx22 = getelementptr inbounds float* %18, i64 %indvars.iv72
  store float %conv, float* %arrayidx22, align 4, !tbaa !4
  %indvars.iv.next73 = add i64 %indvars.iv72, 1
  %19 = load i32* %neig, align 4, !tbaa !3
  %20 = trunc i64 %indvars.iv.next73 to i32
  %cmp = icmp slt i32 %20, %19
  br i1 %cmp, label %for.body, label %for.cond23.preheader

for.body27:                                       ; preds = %for.cond23.preheader, %for.body27
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body27 ], [ 0, %for.cond23.preheader ]
  %call28 = call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 374, i32 %nr, i32 12) #6
  %21 = bitcast i8* %call28 to [3 x float]*
  %22 = load [3 x float]*** %vec, align 8, !tbaa !0
  %arrayidx31 = getelementptr inbounds [3 x float]** %22, i64 %indvars.iv
  store [3 x float]* %21, [3 x float]** %arrayidx31, align 8, !tbaa !0
  %23 = load [3 x float]*** %vec, align 8, !tbaa !0
  %arrayidx34 = getelementptr inbounds [3 x float]** %23, i64 %indvars.iv
  %24 = load [3 x float]** %arrayidx34, align 8, !tbaa !0
  call void @scan_edvec(%struct._IO_FILE* %in, i32 %nr, [3 x float]* %24) #7
  %indvars.iv.next = add i64 %indvars.iv, 1
  %25 = load i32* %neig, align 4, !tbaa !3
  %26 = trunc i64 %indvars.iv.next to i32
  %cmp25 = icmp slt i32 %26, %25
  br i1 %cmp25, label %for.body27, label %for.end37

for.end37:                                        ; preds = %entry, %for.body27, %for.cond23.preheader
  call void @llvm.lifetime.end(i64 4097, i8* %0) #3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @scan_edvec(%struct._IO_FILE* %in, i32 %nr, [3 x float]* nocapture %vec) #0 {
entry:
  %line = alloca [4097 x i8], align 16
  %x = alloca double, align 8
  %y = alloca double, align 8
  %z = alloca double, align 8
  %0 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4097, i8* %0) #3
  %cmp18 = icmp sgt i32 %nr, 0
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %call = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %in) #6
  %call2 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([10 x i8]* @.str42, i64 0, i64 0), double* %x, double* %y, double* %z) #6
  %1 = load double* %x, align 8, !tbaa !5
  %conv = fptrunc double %1 to float
  %arrayidx3 = getelementptr inbounds [3 x float]* %vec, i64 %indvars.iv, i64 0
  store float %conv, float* %arrayidx3, align 4, !tbaa !4
  %2 = load double* %y, align 8, !tbaa !5
  %conv4 = fptrunc double %2 to float
  %arrayidx7 = getelementptr inbounds [3 x float]* %vec, i64 %indvars.iv, i64 1
  store float %conv4, float* %arrayidx7, align 4, !tbaa !4
  %3 = load double* %z, align 8, !tbaa !5
  %conv8 = fptrunc double %3 to float
  %arrayidx11 = getelementptr inbounds [3 x float]* %vec, i64 %indvars.iv, i64 2
  store float %conv8, float* %arrayidx11, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nr
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  call void @llvm.lifetime.end(i64 4097, i8* %0) #3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @do_edfit(i32 %natoms, [3 x float]* nocapture %xp, [3 x float]* nocapture %x, [3 x float]* nocapture %R) #0 {
entry:
  %irot = alloca i32, align 4
  %d = alloca [6 x double], align 16
  %0 = bitcast [6 x double]* %d to i8*
  %vh = alloca [3 x [3 x float]], align 16
  %vk = alloca [3 x [3 x float]], align 16
  %u = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start(i64 48, i8* %0) #3
  %1 = bitcast [3 x [3 x float]]* %vh to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #3
  %2 = bitcast [3 x [3 x float]]* %vk to i8*
  call void @llvm.lifetime.start(i64 36, i8* %2) #3
  %3 = bitcast [3 x [3 x float]]* %u to i8*
  call void @llvm.lifetime.start(i64 36, i8* %3) #3
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 453, i32 6, i32 8) #6
  %4 = bitcast i8* %call to double**
  %call1 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 454, i32 6, i32 8) #6
  %5 = bitcast i8* %call1 to double**
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv425 = phi i64 [ 0, %entry ], [ %indvars.iv.next426, %for.body ]
  %call3 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 456, i32 6, i32 8) #6
  %6 = bitcast i8* %call3 to double*
  %arrayidx = getelementptr inbounds double** %4, i64 %indvars.iv425
  store double* %6, double** %arrayidx, align 8, !tbaa !0
  %call4 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 457, i32 6, i32 8) #6
  %7 = bitcast i8* %call4 to double*
  %arrayidx6 = getelementptr inbounds double** %5, i64 %indvars.iv425
  store double* %7, double** %arrayidx6, align 8, !tbaa !0
  %indvars.iv.next426 = add i64 %indvars.iv425, 1
  %lftr.wideiv427 = trunc i64 %indvars.iv.next426 to i32
  %exitcond428 = icmp eq i32 %lftr.wideiv427, 6
  br i1 %exitcond428, label %for.body9, label %for.body

for.body9:                                        ; preds = %for.body, %for.inc26
  %indvars.iv421 = phi i64 [ %indvars.iv.next422, %for.inc26 ], [ 0, %for.body ]
  %arrayidx11 = getelementptr inbounds [6 x double]* %d, i64 0, i64 %indvars.iv421
  store double 0.000000e+00, double* %arrayidx11, align 8, !tbaa !5
  %arrayidx17 = getelementptr inbounds double** %4, i64 %indvars.iv421
  %8 = load double** %arrayidx17, align 8, !tbaa !0
  %arrayidx21 = getelementptr inbounds double** %5, i64 %indvars.iv421
  %9 = load double** %arrayidx21, align 8, !tbaa !0
  br label %for.body14

for.body14:                                       ; preds = %for.body14, %for.body9
  %indvars.iv417 = phi i64 [ 0, %for.body9 ], [ %indvars.iv.next418, %for.body14 ]
  %arrayidx18 = getelementptr inbounds double* %8, i64 %indvars.iv417
  store double 0.000000e+00, double* %arrayidx18, align 8, !tbaa !5
  %arrayidx22 = getelementptr inbounds double* %9, i64 %indvars.iv417
  store double 0.000000e+00, double* %arrayidx22, align 8, !tbaa !5
  %indvars.iv.next418 = add i64 %indvars.iv417, 1
  %lftr.wideiv419 = trunc i64 %indvars.iv.next418 to i32
  %exitcond420 = icmp eq i32 %lftr.wideiv419, 6
  br i1 %exitcond420, label %for.inc26, label %for.body14

for.inc26:                                        ; preds = %for.body14
  %indvars.iv.next422 = add i64 %indvars.iv421, 1
  %lftr.wideiv423 = trunc i64 %indvars.iv.next422 to i32
  %exitcond424 = icmp eq i32 %lftr.wideiv423, 6
  br i1 %exitcond424, label %for.end28, label %for.body9

for.end28:                                        ; preds = %for.inc26
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 36, i32 16, i1 false) #3
  %cmp30364 = icmp sgt i32 %natoms, 0
  br i1 %cmp30364, label %for.cond32.preheader, label %for.body70.lr.ph

for.cond32.preheader:                             ; preds = %for.end28, %for.inc60
  %indvars.iv413 = phi i64 [ %indvars.iv.next414, %for.inc60 ], [ 0, %for.end28 ]
  br label %for.body34

for.body34:                                       ; preds = %for.inc57, %for.cond32.preheader
  %indvars.iv409 = phi i64 [ 0, %for.cond32.preheader ], [ %indvars.iv.next410, %for.inc57 ]
  %arrayidx38 = getelementptr inbounds [3 x float]* %xp, i64 %indvars.iv413, i64 %indvars.iv409
  %10 = load float* %arrayidx38, align 4, !tbaa !4
  %conv = fpext float %10 to double
  br label %for.body42

for.body42:                                       ; preds = %for.body42, %for.body34
  %indvars.iv405 = phi i64 [ 0, %for.body34 ], [ %indvars.iv.next406, %for.body42 ]
  %arrayidx46 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv413, i64 %indvars.iv405
  %11 = load float* %arrayidx46, align 4, !tbaa !4
  %conv47 = fpext float %11 to double
  %mul = fmul double %conv, %conv47
  %arrayidx51 = getelementptr inbounds [3 x [3 x float]]* %u, i64 0, i64 %indvars.iv409, i64 %indvars.iv405
  %12 = load float* %arrayidx51, align 4, !tbaa !4
  %conv52 = fpext float %12 to double
  %add = fadd double %conv52, %mul
  %conv53 = fptrunc double %add to float
  store float %conv53, float* %arrayidx51, align 4, !tbaa !4
  %indvars.iv.next406 = add i64 %indvars.iv405, 1
  %lftr.wideiv407 = trunc i64 %indvars.iv.next406 to i32
  %exitcond408 = icmp eq i32 %lftr.wideiv407, 3
  br i1 %exitcond408, label %for.inc57, label %for.body42

for.inc57:                                        ; preds = %for.body42
  %indvars.iv.next410 = add i64 %indvars.iv409, 1
  %lftr.wideiv411 = trunc i64 %indvars.iv.next410 to i32
  %exitcond412 = icmp eq i32 %lftr.wideiv411, 3
  br i1 %exitcond412, label %for.inc60, label %for.body34

for.inc60:                                        ; preds = %for.inc57
  %indvars.iv.next414 = add i64 %indvars.iv413, 1
  %lftr.wideiv415 = trunc i64 %indvars.iv.next414 to i32
  %exitcond416 = icmp eq i32 %lftr.wideiv415, %natoms
  br i1 %exitcond416, label %for.body70.lr.ph, label %for.cond32.preheader

for.body70.lr.ph:                                 ; preds = %for.inc107, %for.inc60, %for.end28
  %indvars.iv400 = phi i64 [ %indvars.iv.next401, %for.inc107 ], [ 0, %for.inc60 ], [ 0, %for.end28 ]
  %indvars.iv396 = phi i32 [ %indvars.iv.next397, %for.inc107 ], [ 1, %for.inc60 ], [ 1, %for.end28 ]
  %13 = trunc i64 %indvars.iv400 to i32
  %cmp71 = icmp sgt i32 %13, 2
  %14 = add nsw i64 %indvars.iv400, -3
  %arrayidx83 = getelementptr inbounds double** %4, i64 %indvars.iv400
  br label %for.body70

for.body70:                                       ; preds = %for.inc104, %for.body70.lr.ph
  %indvars.iv394 = phi i64 [ %indvars.iv.next395, %for.inc104 ], [ 0, %for.body70.lr.ph ]
  %15 = trunc i64 %indvars.iv394 to i32
  %cmp73 = icmp slt i32 %15, 3
  %or.cond = and i1 %cmp71, %cmp73
  br i1 %or.cond, label %if.then75, label %if.else

if.then75:                                        ; preds = %for.body70
  %arrayidx79 = getelementptr inbounds [3 x [3 x float]]* %u, i64 0, i64 %14, i64 %indvars.iv394
  %16 = load float* %arrayidx79, align 4, !tbaa !4
  %conv80 = fpext float %16 to double
  %17 = load double** %arrayidx83, align 8, !tbaa !0
  %arrayidx84 = getelementptr inbounds double* %17, i64 %indvars.iv394
  store double %conv80, double* %arrayidx84, align 8, !tbaa !5
  %arrayidx93 = getelementptr inbounds double** %4, i64 %indvars.iv394
  %18 = load double** %arrayidx93, align 8, !tbaa !0
  %arrayidx94 = getelementptr inbounds double* %18, i64 %indvars.iv400
  store double %conv80, double* %arrayidx94, align 8, !tbaa !5
  br label %for.inc104

if.else:                                          ; preds = %for.body70
  %19 = load double** %arrayidx83, align 8, !tbaa !0
  %arrayidx98 = getelementptr inbounds double* %19, i64 %indvars.iv394
  store double 0.000000e+00, double* %arrayidx98, align 8, !tbaa !5
  %arrayidx101 = getelementptr inbounds double** %4, i64 %indvars.iv394
  %20 = load double** %arrayidx101, align 8, !tbaa !0
  %arrayidx102 = getelementptr inbounds double* %20, i64 %indvars.iv400
  store double 0.000000e+00, double* %arrayidx102, align 8, !tbaa !5
  br label %for.inc104

for.inc104:                                       ; preds = %if.then75, %if.else
  %indvars.iv.next395 = add i64 %indvars.iv394, 1
  %lftr.wideiv398 = trunc i64 %indvars.iv.next395 to i32
  %exitcond399 = icmp eq i32 %lftr.wideiv398, %indvars.iv396
  br i1 %exitcond399, label %for.inc107, label %for.body70

for.inc107:                                       ; preds = %for.inc104
  %indvars.iv.next401 = add i64 %indvars.iv400, 1
  %indvars.iv.next397 = add i32 %indvars.iv396, 1
  %lftr.wideiv403 = trunc i64 %indvars.iv.next401 to i32
  %exitcond404 = icmp eq i32 %lftr.wideiv403, 6
  br i1 %exitcond404, label %for.end109, label %for.body70.lr.ph

for.end109:                                       ; preds = %for.inc107
  %arraydecay110 = getelementptr inbounds [6 x double]* %d, i64 0, i64 0
  call void @jacobi(double** %4, i32 6, double* %arraydecay110, double** %5, i32* %irot) #6
  %21 = load i32* %irot, align 4, !tbaa !3
  %cmp111 = icmp eq i32 %21, 0
  br i1 %cmp111, label %if.then113, label %for.cond120.preheader

if.then113:                                       ; preds = %for.end109
  %22 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %23 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str47, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %22)
  br label %for.cond120.preheader

for.cond120.preheader:                            ; preds = %for.end109, %if.then113, %for.inc167
  %indvars.iv390 = phi i64 [ %indvars.iv.next391, %for.inc167 ], [ 0, %if.then113 ], [ 0, %for.end109 ]
  %index.0358 = phi i32 [ %index.2, %for.inc167 ], [ 0, %if.then113 ], [ 0, %for.end109 ]
  br label %for.body123

for.body123:                                      ; preds = %for.inc134, %for.cond120.preheader
  %indvars.iv381 = phi i64 [ 0, %for.cond120.preheader ], [ %indvars.iv.next382, %for.inc134 ]
  %max_d.0355 = phi float [ -1.000000e+03, %for.cond120.preheader ], [ %max_d.1, %for.inc134 ]
  %index.1354 = phi i32 [ %index.0358, %for.cond120.preheader ], [ %index.2, %for.inc134 ]
  %arrayidx125 = getelementptr inbounds [6 x double]* %d, i64 0, i64 %indvars.iv381
  %24 = load double* %arrayidx125, align 8, !tbaa !5
  %conv126 = fpext float %max_d.0355 to double
  %cmp127 = fcmp ogt double %24, %conv126
  br i1 %cmp127, label %if.then129, label %for.inc134

if.then129:                                       ; preds = %for.body123
  %conv132 = fptrunc double %24 to float
  %25 = trunc i64 %indvars.iv381 to i32
  br label %for.inc134

for.inc134:                                       ; preds = %for.body123, %if.then129
  %index.2 = phi i32 [ %25, %if.then129 ], [ %index.1354, %for.body123 ]
  %max_d.1 = phi float [ %conv132, %if.then129 ], [ %max_d.0355, %for.body123 ]
  %indvars.iv.next382 = add i64 %indvars.iv381, 1
  %lftr.wideiv383 = trunc i64 %indvars.iv.next382 to i32
  %exitcond384 = icmp eq i32 %lftr.wideiv383, 6
  br i1 %exitcond384, label %for.end136, label %for.body123

for.end136:                                       ; preds = %for.inc134
  %idxprom137 = sext i32 %index.2 to i64
  %arrayidx138 = getelementptr inbounds [6 x double]* %d, i64 0, i64 %idxprom137
  store double -1.000000e+04, double* %arrayidx138, align 8, !tbaa !5
  br label %for.body142

for.body142:                                      ; preds = %for.body142, %for.end136
  %indvars.iv385 = phi i64 [ 0, %for.end136 ], [ %indvars.iv.next386, %for.body142 ]
  %arrayidx145 = getelementptr inbounds double** %5, i64 %indvars.iv385
  %26 = load double** %arrayidx145, align 8, !tbaa !0
  %arrayidx146 = getelementptr inbounds double* %26, i64 %idxprom137
  %27 = load double* %arrayidx146, align 8, !tbaa !5
  %mul147 = fmul double %27, 0x3FF6A09E667F3BCD
  %conv148 = fptrunc double %mul147 to float
  %arrayidx152 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 %indvars.iv390, i64 %indvars.iv385
  store float %conv148, float* %arrayidx152, align 4, !tbaa !4
  %28 = add nsw i64 %indvars.iv385, 3
  %arrayidx156 = getelementptr inbounds double** %5, i64 %28
  %29 = load double** %arrayidx156, align 8, !tbaa !0
  %arrayidx157 = getelementptr inbounds double* %29, i64 %idxprom137
  %30 = load double* %arrayidx157, align 8, !tbaa !5
  %mul158 = fmul double %30, 0x3FF6A09E667F3BCD
  %conv159 = fptrunc double %mul158 to float
  %arrayidx163 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 %indvars.iv390, i64 %indvars.iv385
  store float %conv159, float* %arrayidx163, align 4, !tbaa !4
  %indvars.iv.next386 = add i64 %indvars.iv385, 1
  %lftr.wideiv388 = trunc i64 %indvars.iv.next386 to i32
  %exitcond389 = icmp eq i32 %lftr.wideiv388, 3
  br i1 %exitcond389, label %for.inc167, label %for.body142

for.inc167:                                       ; preds = %for.body142
  %indvars.iv.next391 = add i64 %indvars.iv390, 1
  %lftr.wideiv392 = trunc i64 %indvars.iv.next391 to i32
  %exitcond393 = icmp eq i32 %lftr.wideiv392, 3
  br i1 %exitcond393, label %for.cond174.preheader, label %for.cond120.preheader

for.cond174.preheader:                            ; preds = %for.inc167, %for.inc208
  %indvars.iv377 = phi i64 [ %indvars.iv.next378, %for.inc208 ], [ 0, %for.inc167 ]
  %arrayidx183 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 0, i64 %indvars.iv377
  %31 = load float* %arrayidx183, align 4, !tbaa !4
  %arrayidx190 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 1, i64 %indvars.iv377
  %32 = load float* %arrayidx190, align 4, !tbaa !4
  %arrayidx198 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 2, i64 %indvars.iv377
  %33 = load float* %arrayidx198, align 4, !tbaa !4
  br label %for.body177

for.body177:                                      ; preds = %for.body177, %for.cond174.preheader
  %indvars.iv373 = phi i64 [ 0, %for.cond174.preheader ], [ %indvars.iv.next374, %for.body177 ]
  %arrayidx180 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 0, i64 %indvars.iv373
  %34 = load float* %arrayidx180, align 4, !tbaa !4
  %mul184 = fmul float %34, %31
  %arrayidx187 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 1, i64 %indvars.iv373
  %35 = load float* %arrayidx187, align 4, !tbaa !4
  %mul191 = fmul float %35, %32
  %add192 = fadd float %mul184, %mul191
  %arrayidx195 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 2, i64 %indvars.iv373
  %36 = load float* %arrayidx195, align 4, !tbaa !4
  %mul199 = fmul float %36, %33
  %add200 = fadd float %add192, %mul199
  %arrayidx204 = getelementptr inbounds [3 x float]* %R, i64 %indvars.iv377, i64 %indvars.iv373
  store float %add200, float* %arrayidx204, align 4, !tbaa !4
  %indvars.iv.next374 = add i64 %indvars.iv373, 1
  %lftr.wideiv375 = trunc i64 %indvars.iv.next374 to i32
  %exitcond376 = icmp eq i32 %lftr.wideiv375, 3
  br i1 %exitcond376, label %for.inc208, label %for.body177

for.inc208:                                       ; preds = %for.body177
  %indvars.iv.next378 = add i64 %indvars.iv377, 1
  %lftr.wideiv379 = trunc i64 %indvars.iv.next378 to i32
  %exitcond380 = icmp eq i32 %lftr.wideiv379, 3
  br i1 %exitcond380, label %for.end210, label %for.cond174.preheader

for.end210:                                       ; preds = %for.inc208
  %arrayidx1.i = getelementptr inbounds [3 x float]* %R, i64 0, i64 0
  %37 = load float* %arrayidx1.i, align 4, !tbaa !4
  %arrayidx3.i = getelementptr inbounds [3 x float]* %R, i64 1, i64 1
  %38 = load float* %arrayidx3.i, align 4, !tbaa !4
  %arrayidx5.i = getelementptr inbounds [3 x float]* %R, i64 2, i64 2
  %39 = load float* %arrayidx5.i, align 4, !tbaa !4
  %mul.i = fmul float %38, %39
  %arrayidx7.i = getelementptr inbounds [3 x float]* %R, i64 2, i64 1
  %40 = load float* %arrayidx7.i, align 4, !tbaa !4
  %arrayidx9.i = getelementptr inbounds [3 x float]* %R, i64 1, i64 2
  %41 = load float* %arrayidx9.i, align 4, !tbaa !4
  %mul10.i = fmul float %40, %41
  %sub.i = fsub float %mul.i, %mul10.i
  %mul11.i = fmul float %37, %sub.i
  %arrayidx13.i = getelementptr inbounds [3 x float]* %R, i64 1, i64 0
  %42 = load float* %arrayidx13.i, align 4, !tbaa !4
  %arrayidx15.i = getelementptr inbounds [3 x float]* %R, i64 0, i64 1
  %43 = load float* %arrayidx15.i, align 4, !tbaa !4
  %mul18.i = fmul float %39, %43
  %arrayidx22.i = getelementptr inbounds [3 x float]* %R, i64 0, i64 2
  %44 = load float* %arrayidx22.i, align 4, !tbaa !4
  %mul23.i = fmul float %40, %44
  %sub24.i = fsub float %mul18.i, %mul23.i
  %mul25.i = fmul float %42, %sub24.i
  %sub26.i = fsub float %mul11.i, %mul25.i
  %arrayidx28.i = getelementptr inbounds [3 x float]* %R, i64 2, i64 0
  %45 = load float* %arrayidx28.i, align 4, !tbaa !4
  %mul33.i = fmul float %41, %43
  %mul38.i = fmul float %38, %44
  %sub39.i = fsub float %mul33.i, %mul38.i
  %mul40.i = fmul float %45, %sub39.i
  %add.i = fadd float %mul40.i, %sub26.i
  %cmp212 = fcmp olt float %add.i, 0.000000e+00
  br i1 %cmp212, label %for.cond219.preheader, label %if.end256

for.cond219.preheader:                            ; preds = %for.end210, %for.inc253
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %for.inc253 ], [ 0, %for.end210 ]
  %arrayidx228 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 0, i64 %indvars.iv369
  %46 = load float* %arrayidx228, align 4, !tbaa !4
  %arrayidx235 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 1, i64 %indvars.iv369
  %47 = load float* %arrayidx235, align 4, !tbaa !4
  %arrayidx243 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 2, i64 %indvars.iv369
  %48 = load float* %arrayidx243, align 4, !tbaa !4
  br label %for.body222

for.body222:                                      ; preds = %for.body222, %for.cond219.preheader
  %indvars.iv = phi i64 [ 0, %for.cond219.preheader ], [ %indvars.iv.next, %for.body222 ]
  %arrayidx225 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 0, i64 %indvars.iv
  %49 = load float* %arrayidx225, align 4, !tbaa !4
  %mul229 = fmul float %49, %46
  %arrayidx232 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 1, i64 %indvars.iv
  %50 = load float* %arrayidx232, align 4, !tbaa !4
  %mul236 = fmul float %50, %47
  %add237 = fadd float %mul229, %mul236
  %arrayidx240 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 2, i64 %indvars.iv
  %51 = load float* %arrayidx240, align 4, !tbaa !4
  %mul244 = fmul float %51, %48
  %sub245 = fsub float %add237, %mul244
  %arrayidx249 = getelementptr inbounds [3 x float]* %R, i64 %indvars.iv369, i64 %indvars.iv
  store float %sub245, float* %arrayidx249, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc253, label %for.body222

for.inc253:                                       ; preds = %for.body222
  %indvars.iv.next370 = add i64 %indvars.iv369, 1
  %lftr.wideiv371 = trunc i64 %indvars.iv.next370 to i32
  %exitcond372 = icmp eq i32 %lftr.wideiv371, 3
  br i1 %exitcond372, label %if.end256, label %for.cond219.preheader

if.end256:                                        ; preds = %for.inc253, %for.end210
  call void @llvm.lifetime.end(i64 36, i8* %3) #3
  call void @llvm.lifetime.end(i64 36, i8* %2) #3
  call void @llvm.lifetime.end(i64 36, i8* %1) #3
  call void @llvm.lifetime.end(i64 48, i8* %0) #3
  ret void
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #1

; Function Attrs: optsize
declare void @jacobi(double**, i32, double*, double**, i32*) #2

; Function Attrs: nounwind optsize uwtable
define void @do_project([3 x float]* nocapture %x, %struct.t_eigvec* nocapture %vec, %struct.t_edpar* nocapture %edi, i8* nocapture %mode) #0 {
entry:
  %neig = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 0
  %0 = load i32* %neig, align 4, !tbaa !3
  %cmp67 = icmp sgt i32 %0, 0
  br i1 %cmp67, label %for.cond1.preheader.lr.ph, label %for.end40

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %nr = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0
  %xproj = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 4
  %vproj = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 5
  %fproj = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 6
  %vec9 = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 3
  %anrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  %.pre = load i32* %nr, align 4, !tbaa !3
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc38
  %indvars.iv71 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next72, %for.inc38 ]
  %cmp264 = icmp sgt i32 %.pre, 0
  br i1 %cmp264, label %for.cond4.preheader.lr.ph, label %for.end21

for.cond4.preheader.lr.ph:                        ; preds = %for.cond1.preheader
  %1 = load [3 x float]*** %vec9, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds [3 x float]** %1, i64 %indvars.iv71
  %2 = load [3 x float]** %arrayidx, align 8, !tbaa !0
  %3 = load i32** %anrs, align 8, !tbaa !0
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond4.preheader.lr.ph, %for.inc19
  %indvars.iv69 = phi i64 [ 0, %for.cond4.preheader.lr.ph ], [ %indvars.iv.next70, %for.inc19 ]
  %proj.066 = phi float [ 0.000000e+00, %for.cond4.preheader.lr.ph ], [ %add, %for.inc19 ]
  %arrayidx15 = getelementptr inbounds i32* %3, i64 %indvars.iv69
  %4 = load i32* %arrayidx15, align 4, !tbaa !3
  %idxprom16 = sext i32 %4 to i64
  br label %for.body6

for.body6:                                        ; preds = %for.body6, %for.cond4.preheader
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.body6 ]
  %proj.163 = phi float [ %proj.066, %for.cond4.preheader ], [ %add, %for.body6 ]
  %arrayidx11 = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv69, i64 %indvars.iv
  %5 = load float* %arrayidx11, align 4, !tbaa !4
  %arrayidx18 = getelementptr inbounds [3 x float]* %x, i64 %idxprom16, i64 %indvars.iv
  %6 = load float* %arrayidx18, align 4, !tbaa !4
  %mul = fmul float %5, %6
  %add = fadd float %proj.163, %mul
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc19, label %for.body6

for.inc19:                                        ; preds = %for.body6
  %indvars.iv.next70 = add i64 %indvars.iv69, 1
  %7 = trunc i64 %indvars.iv.next70 to i32
  %cmp2 = icmp slt i32 %7, %.pre
  br i1 %cmp2, label %for.cond4.preheader, label %for.end21

for.end21:                                        ; preds = %for.inc19, %for.cond1.preheader
  %proj.0.lcssa = phi float [ 0.000000e+00, %for.cond1.preheader ], [ %add, %for.inc19 ]
  %call = tail call i32 @strcmp(i8* %mode, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #8
  %cmp22 = icmp eq i32 %call, 0
  br i1 %cmp22, label %if.then, label %if.else

if.then:                                          ; preds = %for.end21
  %8 = load float** %xproj, align 8, !tbaa !0
  %arrayidx24 = getelementptr inbounds float* %8, i64 %indvars.iv71
  store float %proj.0.lcssa, float* %arrayidx24, align 4, !tbaa !4
  br label %for.inc38

if.else:                                          ; preds = %for.end21
  %call25 = tail call i32 @strcmp(i8* %mode, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #8
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.else30

if.then27:                                        ; preds = %if.else
  %9 = load float** %vproj, align 8, !tbaa !0
  %arrayidx29 = getelementptr inbounds float* %9, i64 %indvars.iv71
  store float %proj.0.lcssa, float* %arrayidx29, align 4, !tbaa !4
  br label %for.inc38

if.else30:                                        ; preds = %if.else
  %call31 = tail call i32 @strcmp(i8* %mode, i8* getelementptr inbounds ([2 x i8]* @.str49, i64 0, i64 0)) #8
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %for.inc38

if.then33:                                        ; preds = %if.else30
  %10 = load float** %fproj, align 8, !tbaa !0
  %arrayidx35 = getelementptr inbounds float* %10, i64 %indvars.iv71
  store float %proj.0.lcssa, float* %arrayidx35, align 4, !tbaa !4
  br label %for.inc38

for.inc38:                                        ; preds = %if.then, %if.else30, %if.then33, %if.then27
  %indvars.iv.next72 = add i64 %indvars.iv71, 1
  %11 = trunc i64 %indvars.iv.next72 to i32
  %cmp = icmp slt i32 %11, %0
  br i1 %cmp, label %for.cond1.preheader, label %for.end40

for.end40:                                        ; preds = %for.inc38, %entry
  ret void
}

; Function Attrs: nounwind optsize readonly uwtable
define float @do_projectx(%struct.t_edpar* nocapture %edi, [3 x float]* nocapture %x, [3 x float]* nocapture %vec) #5 {
entry:
  %nr = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0
  %0 = load i32* %nr, align 4, !tbaa !3
  %cmp26 = icmp sgt i32 %0, 0
  br i1 %cmp26, label %for.cond1.preheader.lr.ph, label %for.end15

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %anrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  %1 = load i32** %anrs, align 8, !tbaa !0
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc13
  %indvars.iv29 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next30, %for.inc13 ]
  %proj.028 = phi float [ 0.000000e+00, %for.cond1.preheader.lr.ph ], [ %add, %for.inc13 ]
  %arrayidx9 = getelementptr inbounds i32* %1, i64 %indvars.iv29
  %2 = load i32* %arrayidx9, align 4, !tbaa !3
  %idxprom10 = sext i32 %2 to i64
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %proj.125 = phi float [ %proj.028, %for.cond1.preheader ], [ %add, %for.body3 ]
  %arrayidx5 = getelementptr inbounds [3 x float]* %vec, i64 %indvars.iv29, i64 %indvars.iv
  %3 = load float* %arrayidx5, align 4, !tbaa !4
  %arrayidx12 = getelementptr inbounds [3 x float]* %x, i64 %idxprom10, i64 %indvars.iv
  %4 = load float* %arrayidx12, align 4, !tbaa !4
  %mul = fmul float %3, %4
  %add = fadd float %proj.125, %mul
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc13, label %for.body3

for.inc13:                                        ; preds = %for.body3
  %indvars.iv.next30 = add i64 %indvars.iv29, 1
  %5 = trunc i64 %indvars.iv.next30 to i32
  %cmp = icmp slt i32 %5, %0
  br i1 %cmp, label %for.cond1.preheader, label %for.end15

for.end15:                                        ; preds = %for.inc13, %entry
  %proj.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add, %for.inc13 ]
  ret float %proj.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define float @calc_radius(%struct.t_eigvec* nocapture %vec) #0 {
entry:
  %radius = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 8
  store float 0.000000e+00, float* %radius, align 4, !tbaa !4
  %neig = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 0
  %0 = load i32* %neig, align 4, !tbaa !3
  %cmp20 = icmp sgt i32 %0, 0
  br i1 %cmp20, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %refproj = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 7
  %1 = load float** %refproj, align 8, !tbaa !0
  %xproj = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 4
  %2 = load float** %xproj, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %3 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %conv5, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds float* %1, i64 %indvars.iv
  %4 = load float* %arrayidx, align 4, !tbaa !4
  %arrayidx2 = getelementptr inbounds float* %2, i64 %indvars.iv
  %5 = load float* %arrayidx2, align 4, !tbaa !4
  %sub = fsub float %4, %5
  %conv = fpext float %sub to double
  %pow2 = fmul double %conv, %conv
  %conv4 = fpext float %3 to double
  %add = fadd double %conv4, %pow2
  %conv5 = fptrunc double %add to float
  store float %conv5, float* %radius, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %6 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %6, %0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %7 = phi float [ 0.000000e+00, %entry ], [ %conv5, %for.body ]
  %conv9 = tail call float @sqrtf(float %7) #1
  store float %conv9, float* %radius, align 4, !tbaa !4
  ret float %conv9
}

; Function Attrs: nounwind optsize uwtable
define void @do_edsam(%struct._IO_FILE* nocapture %log, %struct.t_topology* nocapture %top, %struct.t_inputrec* nocapture %ir, i32 %step, %struct.t_mdatoms* nocapture %md, i32 %start, i32 %homenr, [3 x float]* nocapture %x, [3 x float]* nocapture %xold, [3 x float]* nocapture %x_unc, [3 x float]* nocapture %force, [3 x float]* nocapture %box, %struct.t_edsamyn* nocapture %edyn, %struct.t_edpar* %edi, i32 %bHave_force) #0 {
entry:
  %rotmat = alloca [3 x [3 x float]], align 16
  %ned1 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 2
  %0 = load i32* %ned1, align 4, !tbaa !3
  %1 = bitcast [3 x [3 x float]]* %rotmat to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #3
  %delta_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %2 = load float* %delta_t, align 4, !tbaa !4
  %conv2 = fdiv float 1.000000e+00, %2
  %mul = fmul float %2, %2
  %conv5 = fdiv float 1.000000e+00, %mul
  %.b = load i1* @do_edsam.bFirst, align 1
  br i1 %.b, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %radacc = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4
  %call = call float @calc_radius(%struct.t_eigvec* %radacc) #7
  store float %call, float* @do_edsam.oldrad, align 4, !tbaa !4
  store i1 true, i1* @do_edsam.bFirst, align 1
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %outfrq = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 4
  %3 = load i32* %outfrq, align 4, !tbaa !3
  %call6 = call i32 @do_per_step(i32 %step, i32 %3) #6
  %tobool7 = icmp eq i32 %call6, 0
  %tobool8 = icmp eq i32 %bHave_force, 0
  %or.cond233 = or i1 %tobool7, %tobool8
  br i1 %or.cond233, label %if.end66, label %if.then9

if.then9:                                         ; preds = %if.end
  %call10 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 666, i32 %0, i32 12) #6
  %4 = bitcast i8* %call10 to [3 x float]*
  %cmp239 = icmp sgt i32 %0, 0
  br i1 %cmp239, label %for.cond12.preheader, label %for.end29.thread

for.end29.thread:                                 ; preds = %if.then9
  %call30253 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 671, i32 %0, i32 12) #6
  %5 = bitcast i8* %call30253 to [3 x float]*
  br label %if.end66

for.cond12.preheader:                             ; preds = %if.then9, %for.inc27
  %indvars.iv249 = phi i64 [ %indvars.iv.next250, %for.inc27 ], [ 0, %if.then9 ]
  br label %for.body15

for.body15:                                       ; preds = %for.body15, %for.cond12.preheader
  %indvars.iv245 = phi i64 [ 0, %for.cond12.preheader ], [ %indvars.iv.next246, %for.body15 ]
  %arrayidx17 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv249, i64 %indvars.iv245
  %6 = load float* %arrayidx17, align 4, !tbaa !4
  %arrayidx21 = getelementptr inbounds [3 x float]* %xold, i64 %indvars.iv249, i64 %indvars.iv245
  %7 = load float* %arrayidx21, align 4, !tbaa !4
  %sub = fsub float %6, %7
  %mul22 = fmul float %conv2, %sub
  %arrayidx26 = getelementptr inbounds [3 x float]* %4, i64 %indvars.iv249, i64 %indvars.iv245
  store float %mul22, float* %arrayidx26, align 4, !tbaa !4
  %indvars.iv.next246 = add i64 %indvars.iv245, 1
  %lftr.wideiv247 = trunc i64 %indvars.iv.next246 to i32
  %exitcond248 = icmp eq i32 %lftr.wideiv247, 3
  br i1 %exitcond248, label %for.inc27, label %for.body15

for.inc27:                                        ; preds = %for.body15
  %indvars.iv.next250 = add i64 %indvars.iv249, 1
  %lftr.wideiv251 = trunc i64 %indvars.iv.next250 to i32
  %exitcond252 = icmp eq i32 %lftr.wideiv251, %0
  br i1 %exitcond252, label %for.end29, label %for.cond12.preheader

for.end29:                                        ; preds = %for.inc27
  %call30 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 671, i32 %0, i32 12) #6
  %8 = bitcast i8* %call30 to [3 x float]*
  br i1 %cmp239, label %for.body34.lr.ph, label %if.end66

for.body34.lr.ph:                                 ; preds = %for.end29
  %atom = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1
  %9 = load %struct.t_atom** %atom, align 8, !tbaa !0
  br label %for.body34

for.body34:                                       ; preds = %for.inc63, %for.body34.lr.ph
  %indvars.iv241 = phi i64 [ 0, %for.body34.lr.ph ], [ %indvars.iv.next242, %for.inc63 ]
  %m = getelementptr inbounds %struct.t_atom* %9, i64 %indvars.iv241, i32 0
  %10 = load float* %m, align 4, !tbaa !4
  br label %for.body40

for.body40:                                       ; preds = %for.body40, %for.body34
  %indvars.iv = phi i64 [ 0, %for.body34 ], [ %indvars.iv.next, %for.body40 ]
  %arrayidx44 = getelementptr inbounds [3 x float]* %force, i64 %indvars.iv241, i64 %indvars.iv
  %11 = load float* %arrayidx44, align 4, !tbaa !4
  %arrayidx48 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv241, i64 %indvars.iv
  %12 = load float* %arrayidx48, align 4, !tbaa !4
  %arrayidx52 = getelementptr inbounds [3 x float]* %x_unc, i64 %indvars.iv241, i64 %indvars.iv
  %13 = load float* %arrayidx52, align 4, !tbaa !4
  %sub53 = fsub float %12, %13
  %mul54 = fmul float %conv5, %sub53
  %mul55 = fmul float %10, %mul54
  %add = fadd float %11, %mul55
  %arrayidx59 = getelementptr inbounds [3 x float]* %8, i64 %indvars.iv241, i64 %indvars.iv
  store float %add, float* %arrayidx59, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc63, label %for.body40

for.inc63:                                        ; preds = %for.body40
  %indvars.iv.next242 = add i64 %indvars.iv241, 1
  %lftr.wideiv243 = trunc i64 %indvars.iv.next242 to i32
  %exitcond244 = icmp eq i32 %lftr.wideiv243, %0
  br i1 %exitcond244, label %if.end66, label %for.body34

if.end66:                                         ; preds = %for.end29, %for.end29.thread, %for.inc63, %if.end
  %fdum.0 = phi [3 x float]* [ null, %if.end ], [ %5, %for.end29.thread ], [ %8, %for.end29 ], [ %8, %for.inc63 ]
  %vdum.0 = phi [3 x float]* [ null, %if.end ], [ %4, %for.end29.thread ], [ %4, %for.end29 ], [ %4, %for.inc63 ]
  %call67 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 680, i32 %0, i32 12) #6
  %14 = bitcast i8* %call67 to [3 x float]*
  %arraydecay = getelementptr inbounds [3 x [3 x float]]* %rotmat, i64 0, i64 0
  %call68 = call float @fitit(i32 %0, [3 x float]* %x, %struct.t_edpar* %edi, [3 x float]* %14, [3 x float]* %arraydecay) #7
  %maxedsteps = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 6
  %15 = load i32* %maxedsteps, align 4, !tbaa !3
  %call69 = call i32 @do_per_step(i32 %step, i32 %15) #6
  %tobool70 = icmp ne i32 %call69, 0
  %cmp72 = icmp sgt i32 %step, 0
  %or.cond = and i1 %tobool70, %cmp72
  br i1 %or.cond, label %if.then74, label %if.end78

if.then74:                                        ; preds = %if.end66
  call void @project([3 x float]* %x, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #7
  %radacc76 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4
  call void @projectx(%struct.t_edpar* %edi, [3 x float]* %x, %struct.t_eigvec* %radacc76) #7
  %radfix = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3
  call void @projectx(%struct.t_edpar* %edi, [3 x float]* %x, %struct.t_eigvec* %radfix) #7
  store float -1.000000e+05, float* @do_edsam.oldrad, align 4, !tbaa !4
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %if.end66
  %call79 = call i32 @do_per_step(i32 %step, i32 500) #6
  %tobool80 = icmp ne i32 %call79, 0
  %or.cond135 = and i1 %tobool80, %cmp72
  br i1 %or.cond135, label %if.then84, label %if.end95

if.then84:                                        ; preds = %if.end78
  %radacc86 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4
  %call87 = call float @calc_radius(%struct.t_eigvec* %radacc86) #7
  %16 = load float* @do_edsam.oldrad, align 4, !tbaa !4
  %sub88 = fsub float %call87, %16
  %slope = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 10
  %17 = load float* %slope, align 4, !tbaa !4
  %cmp89 = fcmp olt float %sub88, %17
  br i1 %cmp89, label %if.then91, label %if.else

if.then91:                                        ; preds = %if.then84
  call void @project([3 x float]* %x, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #7
  call void @projectx(%struct.t_edpar* %edi, [3 x float]* %x, %struct.t_eigvec* %radacc86) #7
  store float 0.000000e+00, float* @do_edsam.oldrad, align 4, !tbaa !4
  br label %if.end95

if.else:                                          ; preds = %if.then84
  store float %call87, float* @do_edsam.oldrad, align 4, !tbaa !4
  br label %if.end95

if.end95:                                         ; preds = %if.then91, %if.else, %if.end78
  call void @ed_cons([3 x float]* %x, %struct.t_edpar* %edi, i32 %step) #7
  %18 = load i32* %outfrq, align 4, !tbaa !3
  %call97 = call i32 @do_per_step(i32 %step, i32 %18) #6
  %tobool98 = icmp eq i32 %call97, 0
  %or.cond234 = or i1 %tobool98, %tobool8
  br i1 %or.cond234, label %if.end105, label %if.then101

if.then101:                                       ; preds = %if.end95
  call void @rotate_vec(i32 %0, [3 x float]* %vdum.0, [3 x float]* %arraydecay) #7
  call void @rotate_vec(i32 %0, [3 x float]* %fdum.0, [3 x float]* %arraydecay) #7
  call void @project([3 x float]* %vdum.0, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #7
  call void @project([3 x float]* %fdum.0, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str49, i64 0, i64 0)) #7
  call void @project([3 x float]* %x, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #7
  %19 = bitcast [3 x float]* %vdum.0 to i8*
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 714, i8* %19) #6
  %20 = bitcast [3 x float]* %fdum.0 to i8*
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 715, i8* %20) #6
  call void @write_edo(%struct.t_edpar* %edi, i32 %step, float %call68) #7
  %edo = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 19
  %21 = load %struct._IO_FILE** %edo, align 8, !tbaa !0
  %call104 = call i32 @fflush(%struct._IO_FILE* %21) #6
  br label %if.end105

if.end105:                                        ; preds = %if.end95, %if.then101
  br i1 %cmp72, label %land.lhs.true108, label %if.end128

land.lhs.true108:                                 ; preds = %if.end105
  %logfrq = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 5
  %22 = load i32* %logfrq, align 4, !tbaa !3
  %call109 = call i32 @do_per_step(i32 %step, i32 %22) #6
  %tobool110 = icmp eq i32 %call109, 0
  br i1 %tobool110, label %if.end128, label %if.then111

if.then111:                                       ; preds = %land.lhs.true108
  %call112 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([34 x i8]* @.str52, i64 0, i64 0), i32 %step) #6
  call void @project([3 x float]* %x, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #7
  call void @write_edidx(%struct._IO_FILE* %log, %struct.t_edpar* %edi) #7
  %radacc114 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4
  %call115 = call float @calc_radius(%struct.t_eigvec* %radacc114) #7
  %conv116 = fpext float %call115 to double
  %call117 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([24 x i8]* @.str53, i64 0, i64 0), double %conv116) #6
  %radfix119 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3
  %call120 = call float @calc_radius(%struct.t_eigvec* %radfix119) #7
  %conv121 = fpext float %call120 to double
  %call122 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([29 x i8]* @.str54, i64 0, i64 0), double %conv121) #6
  %radcon = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5
  %call124 = call float @calc_radius(%struct.t_eigvec* %radcon) #7
  %conv125 = fpext float %call124 to double
  %call126 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([25 x i8]* @.str55, i64 0, i64 0), double %conv125) #6
  %call127 = call i32 @fflush(%struct._IO_FILE* %log) #6
  br label %if.end128

if.end128:                                        ; preds = %land.lhs.true108, %if.then111, %if.end105
  call void @rmfit(i32 %0, [3 x float]* %x, [3 x float]* %14, [3 x float]* %arraydecay) #7
  %nsteps = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 1
  %23 = load i32* %nsteps, align 4, !tbaa !3
  %cmp130 = icmp eq i32 %23, %step
  br i1 %cmp130, label %if.then132, label %if.end134

if.then132:                                       ; preds = %if.end128
  %edo133 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 19
  %24 = load %struct._IO_FILE** %edo133, align 8, !tbaa !0
  call void @ffclose(%struct._IO_FILE* %24) #6
  br label %if.end134

if.end134:                                        ; preds = %if.then132, %if.end128
  call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 738, i8* %call67) #6
  call void @llvm.lifetime.end(i64 36, i8* %1) #3
  ret void
}

; Function Attrs: optsize
declare i32 @do_per_step(i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @ed_cons([3 x float]* nocapture %x, %struct.t_edpar* nocapture %edi, i32 %step) #0 {
entry:
  %nr = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0
  %0 = load i32* %nr, align 4, !tbaa !3
  %cmp65 = icmp sgt i32 %0, 0
  br i1 %cmp65, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %anrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  %1 = load i32** %anrs, align 8, !tbaa !0
  %x6 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 2
  %2 = load [3 x float]** %x6, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv67 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next68, %for.body ]
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv67
  %3 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom2 = sext i32 %3 to i64
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %idxprom2, i64 0
  %arraydecay8 = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv67, i64 0
  %4 = load float* %arraydecay, align 4, !tbaa !4
  %5 = load float* %arraydecay8, align 4, !tbaa !4
  %sub.i = fsub float %4, %5
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom2, i64 1
  %6 = load float* %arrayidx2.i, align 4, !tbaa !4
  %arrayidx3.i = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv67, i64 1
  %7 = load float* %arrayidx3.i, align 4, !tbaa !4
  %sub4.i = fsub float %6, %7
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom2, i64 2
  %8 = load float* %arrayidx5.i, align 4, !tbaa !4
  %arrayidx6.i = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv67, i64 2
  %9 = load float* %arrayidx6.i, align 4, !tbaa !4
  %sub7.i = fsub float %8, %9
  store float %sub.i, float* %arraydecay, align 4, !tbaa !4
  store float %sub4.i, float* %arrayidx2.i, align 4, !tbaa !4
  store float %sub7.i, float* %arrayidx5.i, align 4, !tbaa !4
  %indvars.iv.next68 = add i64 %indvars.iv67, 1
  %10 = trunc i64 %indvars.iv.next68 to i32
  %cmp = icmp slt i32 %10, %0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %cmp9 = icmp sgt i32 %step, -1
  br i1 %cmp9, label %if.then, label %if.end12.critedge

if.then:                                          ; preds = %for.end
  tail call void @do_linfix([3 x float]* %x, %struct.t_edpar* %edi, i32 %step) #7
  tail call void @do_linacc([3 x float]* %x, %struct.t_edpar* %edi) #7
  tail call void @do_radfix([3 x float]* %x, %struct.t_edpar* %edi, i32 undef) #7
  br label %if.end12

if.end12.critedge:                                ; preds = %for.end
  tail call void @do_linacc([3 x float]* %x, %struct.t_edpar* %edi) #7
  br label %if.end12

if.end12:                                         ; preds = %if.end12.critedge, %if.then
  tail call void @do_radacc([3 x float]* %x, %struct.t_edpar* %edi) #7
  tail call void @do_radcon([3 x float]* %x, %struct.t_edpar* %edi) #7
  %11 = load i32* %nr, align 4, !tbaa !3
  %cmp1663 = icmp sgt i32 %11, 0
  br i1 %cmp1663, label %for.body17.lr.ph, label %for.end32

for.body17.lr.ph:                                 ; preds = %if.end12
  %anrs20 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  %12 = load i32** %anrs20, align 8, !tbaa !0
  %x27 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 2
  %13 = load [3 x float]** %x27, align 8, !tbaa !0
  br label %for.body17

for.body17:                                       ; preds = %for.body17.lr.ph, %for.body17
  %indvars.iv = phi i64 [ 0, %for.body17.lr.ph ], [ %indvars.iv.next, %for.body17 ]
  %arrayidx21 = getelementptr inbounds i32* %12, i64 %indvars.iv
  %14 = load i32* %arrayidx21, align 4, !tbaa !3
  %idxprom22 = sext i32 %14 to i64
  %arraydecay24 = getelementptr inbounds [3 x float]* %x, i64 %idxprom22, i64 0
  %arraydecay29 = getelementptr inbounds [3 x float]* %13, i64 %indvars.iv, i64 0
  %15 = load float* %arraydecay24, align 4, !tbaa !4
  %16 = load float* %arraydecay29, align 4, !tbaa !4
  %add.i = fadd float %15, %16
  %arrayidx2.i59 = getelementptr inbounds [3 x float]* %x, i64 %idxprom22, i64 1
  %17 = load float* %arrayidx2.i59, align 4, !tbaa !4
  %arrayidx3.i60 = getelementptr inbounds [3 x float]* %13, i64 %indvars.iv, i64 1
  %18 = load float* %arrayidx3.i60, align 4, !tbaa !4
  %add4.i = fadd float %17, %18
  %arrayidx5.i61 = getelementptr inbounds [3 x float]* %x, i64 %idxprom22, i64 2
  %19 = load float* %arrayidx5.i61, align 4, !tbaa !4
  %arrayidx6.i62 = getelementptr inbounds [3 x float]* %13, i64 %indvars.iv, i64 2
  %20 = load float* %arrayidx6.i62, align 4, !tbaa !4
  %add7.i = fadd float %19, %20
  store float %add.i, float* %arraydecay24, align 4, !tbaa !4
  store float %add4.i, float* %arrayidx2.i59, align 4, !tbaa !4
  store float %add7.i, float* %arrayidx5.i61, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %21 = trunc i64 %indvars.iv.next to i32
  %cmp16 = icmp slt i32 %21, %11
  br i1 %cmp16, label %for.body17, label %for.end32

for.end32:                                        ; preds = %for.body17, %if.end12
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @rotate_vec(i32 %nr, [3 x float]* nocapture %x, [3 x float]* nocapture %rotmat) #0 {
entry:
  %xdum = alloca [3 x float], align 4
  %xdum58 = bitcast [3 x float]* %xdum to i8*
  %cmp56 = icmp sgt i32 %nr, 0
  br i1 %cmp56, label %for.cond1.preheader, label %for.end36

for.cond1.preheader:                              ; preds = %entry, %for.inc34
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %for.inc34 ], [ 0, %entry ]
  %scevgep = getelementptr [3 x float]* %x, i64 %indvars.iv66, i64 0
  %scevgep59 = bitcast float* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %xdum58, i8* %scevgep59, i64 12, i32 4, i1 false)
  br label %for.body10

for.body10:                                       ; preds = %for.inc31, %for.cond1.preheader
  %indvars.iv60 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next61, %for.inc31 ]
  %arrayidx14 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv66, i64 %indvars.iv60
  store float 0.000000e+00, float* %arrayidx14, align 4, !tbaa !4
  br label %for.body17

for.body17:                                       ; preds = %for.body17, %for.body10
  %0 = phi float [ 0.000000e+00, %for.body10 ], [ %add, %for.body17 ]
  %indvars.iv = phi i64 [ 0, %for.body10 ], [ %indvars.iv.next, %for.body17 ]
  %arrayidx21 = getelementptr inbounds [3 x float]* %rotmat, i64 %indvars.iv, i64 %indvars.iv60
  %1 = load float* %arrayidx21, align 4, !tbaa !4
  %arrayidx23 = getelementptr inbounds [3 x float]* %xdum, i64 0, i64 %indvars.iv
  %2 = load float* %arrayidx23, align 4, !tbaa !4
  %mul = fmul float %1, %2
  %add = fadd float %0, %mul
  store float %add, float* %arrayidx14, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc31, label %for.body17

for.inc31:                                        ; preds = %for.body17
  %indvars.iv.next61 = add i64 %indvars.iv60, 1
  %lftr.wideiv62 = trunc i64 %indvars.iv.next61 to i32
  %exitcond63 = icmp eq i32 %lftr.wideiv62, 3
  br i1 %exitcond63, label %for.inc34, label %for.body10

for.inc34:                                        ; preds = %for.inc31
  %indvars.iv.next67 = add i64 %indvars.iv66, 1
  %lftr.wideiv68 = trunc i64 %indvars.iv.next67 to i32
  %exitcond69 = icmp eq i32 %lftr.wideiv68, %nr
  br i1 %exitcond69, label %for.end36, label %for.cond1.preheader

for.end36:                                        ; preds = %for.inc34, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @write_edo(%struct.t_edpar* nocapture %edi, i32 %step, float %rmsd) #0 {
entry:
  %edo = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 19
  %0 = load %struct._IO_FILE** %edo, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8]* @.str57, i64 0, i64 0), i32 %step) #6
  %1 = load %struct._IO_FILE** %edo, align 8, !tbaa !0
  %conv = fpext float %rmsd to double
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8]* @.str58, i64 0, i64 0), double %conv) #6
  %2 = load %struct._IO_FILE** %edo, align 8, !tbaa !0
  tail call void @write_proj(%struct._IO_FILE* %2, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #7
  %3 = load %struct._IO_FILE** %edo, align 8, !tbaa !0
  tail call void @write_proj(%struct._IO_FILE* %3, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #7
  %4 = load %struct._IO_FILE** %edo, align 8, !tbaa !0
  tail call void @write_proj(%struct._IO_FILE* %4, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str49, i64 0, i64 0)) #7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @rmfit(i32 %ned, [3 x float]* nocapture %x, [3 x float]* nocapture %transvec, [3 x float]* nocapture %rotmat) #0 {
entry:
  %r_inv = alloca [3 x [3 x float]], align 16
  %xdum = alloca [3 x float], align 4
  %xdum83 = bitcast [3 x float]* %xdum to i8*
  %0 = bitcast [3 x [3 x float]]* %r_inv to i8*
  call void @llvm.lifetime.start(i64 36, i8* %0) #3
  %arrayidx1.i.i = getelementptr inbounds [3 x float]* %rotmat, i64 0, i64 0
  %1 = load float* %arrayidx1.i.i, align 4, !tbaa !4
  %arrayidx3.i.i = getelementptr inbounds [3 x float]* %rotmat, i64 1, i64 1
  %2 = load float* %arrayidx3.i.i, align 4, !tbaa !4
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %rotmat, i64 2, i64 2
  %3 = load float* %arrayidx5.i.i, align 4, !tbaa !4
  %mul.i.i = fmul float %2, %3
  %arrayidx7.i.i = getelementptr inbounds [3 x float]* %rotmat, i64 2, i64 1
  %4 = load float* %arrayidx7.i.i, align 4, !tbaa !4
  %arrayidx9.i.i = getelementptr inbounds [3 x float]* %rotmat, i64 1, i64 2
  %5 = load float* %arrayidx9.i.i, align 4, !tbaa !4
  %mul10.i.i = fmul float %4, %5
  %sub.i.i = fsub float %mul.i.i, %mul10.i.i
  %mul11.i.i = fmul float %1, %sub.i.i
  %arrayidx13.i.i = getelementptr inbounds [3 x float]* %rotmat, i64 1, i64 0
  %6 = load float* %arrayidx13.i.i, align 4, !tbaa !4
  %arrayidx15.i.i = getelementptr inbounds [3 x float]* %rotmat, i64 0, i64 1
  %7 = load float* %arrayidx15.i.i, align 4, !tbaa !4
  %mul18.i.i = fmul float %3, %7
  %arrayidx22.i.i = getelementptr inbounds [3 x float]* %rotmat, i64 0, i64 2
  %8 = load float* %arrayidx22.i.i, align 4, !tbaa !4
  %mul23.i.i = fmul float %4, %8
  %sub24.i.i = fsub float %mul18.i.i, %mul23.i.i
  %mul25.i.i = fmul float %6, %sub24.i.i
  %sub26.i.i = fsub float %mul11.i.i, %mul25.i.i
  %arrayidx28.i.i = getelementptr inbounds [3 x float]* %rotmat, i64 2, i64 0
  %9 = load float* %arrayidx28.i.i, align 4, !tbaa !4
  %mul33.i.i = fmul float %5, %7
  %mul38.i.i = fmul float %2, %8
  %sub39.i.i = fsub float %mul33.i.i, %mul38.i.i
  %mul40.i.i = fmul float %9, %sub39.i.i
  %add.i.i = fadd float %mul40.i.i, %sub26.i.i
  %conv1.i = fdiv float 1.000000e+00, %add.i.i
  %fabsf.i = call float @fabsf(float %conv1.i) #9
  %cmp.i = fcmp ole float %fabsf.i, 0x3C32725DE0000000
  %cmp6.i = fcmp oge float %fabsf.i, 0x43ABC16D60000000
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %m_inv.exit

if.then.i:                                        ; preds = %entry
  %conv2.i = fpext float %conv1.i to double
  %div9.i = fdiv double 1.000000e+00, %conv2.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([17 x i8]* @.str68, i64 0, i64 0), double %div9.i) #6
  %.pre.i = load float* %arrayidx3.i.i, align 4, !tbaa !4
  %.pre192.i = load float* %arrayidx5.i.i, align 4, !tbaa !4
  %.pre193.i = load float* %arrayidx7.i.i, align 4, !tbaa !4
  %.pre194.i = load float* %arrayidx9.i.i, align 4, !tbaa !4
  %.pre = load float* %arrayidx15.i.i, align 4, !tbaa !4
  %.pre99 = load float* %arrayidx22.i.i, align 4, !tbaa !4
  %.pre100 = load float* %arrayidx13.i.i, align 4, !tbaa !4
  %.pre101 = load float* %arrayidx28.i.i, align 4, !tbaa !4
  %.pre102 = load float* %arrayidx1.i.i, align 4, !tbaa !4
  br label %m_inv.exit

m_inv.exit:                                       ; preds = %entry, %if.then.i
  %10 = phi float [ %1, %entry ], [ %.pre102, %if.then.i ]
  %11 = phi float [ %9, %entry ], [ %.pre101, %if.then.i ]
  %12 = phi float [ %6, %entry ], [ %.pre100, %if.then.i ]
  %13 = phi float [ %8, %entry ], [ %.pre99, %if.then.i ]
  %14 = phi float [ %7, %entry ], [ %.pre, %if.then.i ]
  %15 = phi float [ %5, %entry ], [ %.pre194.i, %if.then.i ]
  %16 = phi float [ %4, %entry ], [ %.pre193.i, %if.then.i ]
  %17 = phi float [ %3, %entry ], [ %.pre192.i, %if.then.i ]
  %18 = phi float [ %2, %entry ], [ %.pre.i, %if.then.i ]
  %mul.i = fmul float %17, %18
  %mul17.i = fmul float %15, %16
  %sub.i = fsub float %mul.i, %mul17.i
  %mul18.i = fmul float %conv1.i, %sub.i
  %arrayidx20.i = getelementptr inbounds [3 x [3 x float]]* %r_inv, i64 0, i64 0, i64 0
  store float %mul18.i, float* %arrayidx20.i, align 16, !tbaa !4
  %sub21.i = fsub float -0.000000e+00, %conv1.i
  %mul26.i = fmul float %14, %17
  %mul31.i = fmul float %16, %13
  %sub32.i = fsub float %mul26.i, %mul31.i
  %mul33.i = fmul float %sub32.i, %sub21.i
  %arrayidx35.i = getelementptr inbounds [3 x [3 x float]]* %r_inv, i64 0, i64 0, i64 1
  store float %mul33.i, float* %arrayidx35.i, align 4, !tbaa !4
  %mul40.i = fmul float %14, %15
  %mul45.i = fmul float %18, %13
  %sub46.i = fsub float %mul40.i, %mul45.i
  %mul47.i = fmul float %conv1.i, %sub46.i
  %arrayidx49.i = getelementptr inbounds [3 x [3 x float]]* %r_inv, i64 0, i64 0, i64 2
  store float %mul47.i, float* %arrayidx49.i, align 8, !tbaa !4
  %mul55.i = fmul float %12, %17
  %mul60.i = fmul float %11, %15
  %sub61.i = fsub float %mul55.i, %mul60.i
  %mul62.i = fmul float %sub61.i, %sub21.i
  %arrayidx64.i = getelementptr inbounds [3 x [3 x float]]* %r_inv, i64 0, i64 1, i64 0
  store float %mul62.i, float* %arrayidx64.i, align 4, !tbaa !4
  %mul69.i = fmul float %10, %17
  %mul74.i = fmul float %11, %13
  %sub75.i = fsub float %mul69.i, %mul74.i
  %mul76.i = fmul float %conv1.i, %sub75.i
  %arrayidx78.i = getelementptr inbounds [3 x [3 x float]]* %r_inv, i64 0, i64 1, i64 1
  store float %mul76.i, float* %arrayidx78.i, align 4, !tbaa !4
  %mul84.i = fmul float %10, %15
  %mul89.i = fmul float %12, %13
  %sub90.i = fsub float %mul84.i, %mul89.i
  %mul91.i = fmul float %sub90.i, %sub21.i
  %arrayidx93.i = getelementptr inbounds [3 x [3 x float]]* %r_inv, i64 0, i64 1, i64 2
  store float %mul91.i, float* %arrayidx93.i, align 4, !tbaa !4
  %mul98.i = fmul float %12, %16
  %mul103.i = fmul float %11, %18
  %sub104.i = fsub float %mul98.i, %mul103.i
  %mul105.i = fmul float %conv1.i, %sub104.i
  %arrayidx107.i = getelementptr inbounds [3 x [3 x float]]* %r_inv, i64 0, i64 2, i64 0
  store float %mul105.i, float* %arrayidx107.i, align 8, !tbaa !4
  %mul113.i = fmul float %10, %16
  %mul118.i = fmul float %11, %14
  %sub119.i = fsub float %mul113.i, %mul118.i
  %mul120.i = fmul float %sub119.i, %sub21.i
  %arrayidx122.i = getelementptr inbounds [3 x [3 x float]]* %r_inv, i64 0, i64 2, i64 1
  store float %mul120.i, float* %arrayidx122.i, align 4, !tbaa !4
  %mul127.i = fmul float %10, %18
  %mul132.i = fmul float %12, %14
  %sub133.i = fsub float %mul127.i, %mul132.i
  %mul134.i = fmul float %conv1.i, %sub133.i
  %arrayidx136.i = getelementptr inbounds [3 x [3 x float]]* %r_inv, i64 0, i64 2, i64 2
  store float %mul134.i, float* %arrayidx136.i, align 8, !tbaa !4
  %cmp77 = icmp sgt i32 %ned, 0
  br i1 %cmp77, label %for.cond1.preheader, label %for.end48

for.cond1.preheader:                              ; preds = %m_inv.exit, %for.inc34
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %for.inc34 ], [ 0, %m_inv.exit ]
  %scevgep = getelementptr [3 x float]* %x, i64 %indvars.iv95, i64 0
  %scevgep84 = bitcast float* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %xdum83, i8* %scevgep84, i64 12, i32 4, i1 false)
  br label %for.body10

for.cond37.preheader:                             ; preds = %for.inc34
  br i1 %cmp77, label %for.body39, label %for.end48

for.body10:                                       ; preds = %for.inc31, %for.cond1.preheader
  %indvars.iv89 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next90, %for.inc31 ]
  %arrayidx14 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv95, i64 %indvars.iv89
  store float 0.000000e+00, float* %arrayidx14, align 4, !tbaa !4
  br label %for.body17

for.body17:                                       ; preds = %for.body17, %for.body10
  %indvars.iv85 = phi i64 [ 0, %for.body10 ], [ %indvars.iv.next86, %for.body17 ]
  %19 = phi float [ 0.000000e+00, %for.body10 ], [ %add, %for.body17 ]
  %arrayidx21 = getelementptr inbounds [3 x [3 x float]]* %r_inv, i64 0, i64 %indvars.iv85, i64 %indvars.iv89
  %20 = load float* %arrayidx21, align 4, !tbaa !4
  %arrayidx23 = getelementptr inbounds [3 x float]* %xdum, i64 0, i64 %indvars.iv85
  %21 = load float* %arrayidx23, align 4, !tbaa !4
  %mul = fmul float %20, %21
  %add = fadd float %19, %mul
  %indvars.iv.next86 = add i64 %indvars.iv85, 1
  %lftr.wideiv87 = trunc i64 %indvars.iv.next86 to i32
  %exitcond88 = icmp eq i32 %lftr.wideiv87, 3
  br i1 %exitcond88, label %for.inc31, label %for.body17

for.inc31:                                        ; preds = %for.body17
  store float %add, float* %arrayidx14, align 4, !tbaa !4
  %indvars.iv.next90 = add i64 %indvars.iv89, 1
  %lftr.wideiv91 = trunc i64 %indvars.iv.next90 to i32
  %exitcond92 = icmp eq i32 %lftr.wideiv91, 3
  br i1 %exitcond92, label %for.inc34, label %for.body10

for.inc34:                                        ; preds = %for.inc31
  %indvars.iv.next96 = add i64 %indvars.iv95, 1
  %lftr.wideiv97 = trunc i64 %indvars.iv.next96 to i32
  %exitcond98 = icmp eq i32 %lftr.wideiv97, %ned
  br i1 %exitcond98, label %for.cond37.preheader, label %for.cond1.preheader

for.body39:                                       ; preds = %for.cond37.preheader, %for.body39
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body39 ], [ 0, %for.cond37.preheader ]
  %arraydecay42 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %arraydecay45 = getelementptr inbounds [3 x float]* %transvec, i64 %indvars.iv, i64 0
  %22 = load float* %arraydecay42, align 4, !tbaa !4
  %23 = load float* %arraydecay45, align 4, !tbaa !4
  %sub.i71 = fsub float %22, %23
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  %24 = load float* %arrayidx2.i, align 4, !tbaa !4
  %arrayidx3.i = getelementptr inbounds [3 x float]* %transvec, i64 %indvars.iv, i64 1
  %25 = load float* %arrayidx3.i, align 4, !tbaa !4
  %sub4.i = fsub float %24, %25
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  %26 = load float* %arrayidx5.i, align 4, !tbaa !4
  %arrayidx6.i = getelementptr inbounds [3 x float]* %transvec, i64 %indvars.iv, i64 2
  %27 = load float* %arrayidx6.i, align 4, !tbaa !4
  %sub7.i = fsub float %26, %27
  store float %sub.i71, float* %arraydecay42, align 4, !tbaa !4
  store float %sub4.i, float* %arrayidx2.i, align 4, !tbaa !4
  store float %sub7.i, float* %arrayidx5.i, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %ned
  br i1 %exitcond, label %for.end48, label %for.body39

for.end48:                                        ; preds = %m_inv.exit, %for.body39, %for.cond37.preheader
  call void @llvm.lifetime.end(i64 36, i8* %0) #3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @do_linfix([3 x float]* nocapture %x, %struct.t_edpar* nocapture %edi, i32 %step) #0 {
entry:
  %neig = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1, i32 0
  %0 = load i32* %neig, align 4, !tbaa !3
  %cmp66 = icmp sgt i32 %0, 0
  br i1 %cmp66, label %for.body.lr.ph, label %for.end43

for.body.lr.ph:                                   ; preds = %entry
  %vec = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1, i32 3
  %refproj = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1, i32 7
  %conv = sitofp i32 %step to float
  %stpsz = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1, i32 2
  %nr = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0
  %anrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  %.pre = load [3 x float]*** %vec, align 8, !tbaa !0
  %.pre72 = load float** %refproj, align 8, !tbaa !0
  %.pre73 = load float** %stpsz, align 8, !tbaa !0
  %.pre74 = load i32* %nr, align 4, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc41
  %indvars.iv70 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next71, %for.inc41 ]
  %arrayidx = getelementptr inbounds [3 x float]** %.pre, i64 %indvars.iv70
  %1 = load [3 x float]** %arrayidx, align 8, !tbaa !0
  %call = tail call float @do_projectx(%struct.t_edpar* %edi, [3 x float]* %x, [3 x float]* %1) #7
  %arrayidx6 = getelementptr inbounds float* %.pre72, i64 %indvars.iv70
  %2 = load float* %arrayidx6, align 4, !tbaa !4
  %arrayidx10 = getelementptr inbounds float* %.pre73, i64 %indvars.iv70
  %3 = load float* %arrayidx10, align 4, !tbaa !4
  %mul = fmul float %conv, %3
  %add11 = fadd float %2, %mul
  %sub = fsub float %add11, %call
  %cmp1364 = icmp sgt i32 %.pre74, 0
  br i1 %cmp1364, label %for.cond16.preheader.lr.ph, label %for.inc41

for.cond16.preheader.lr.ph:                       ; preds = %for.body
  %4 = load i32** %anrs, align 8, !tbaa !0
  br label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.cond16.preheader.lr.ph, %for.inc38
  %indvars.iv68 = phi i64 [ 0, %for.cond16.preheader.lr.ph ], [ %indvars.iv.next69, %for.inc38 ]
  %arrayidx33 = getelementptr inbounds i32* %4, i64 %indvars.iv68
  %5 = load i32* %arrayidx33, align 4, !tbaa !3
  %idxprom34 = sext i32 %5 to i64
  br label %for.body19

for.body19:                                       ; preds = %for.body19, %for.cond16.preheader
  %indvars.iv = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next, %for.body19 ]
  %arrayidx28 = getelementptr inbounds [3 x float]* %1, i64 %indvars.iv68, i64 %indvars.iv
  %6 = load float* %arrayidx28, align 4, !tbaa !4
  %mul29 = fmul float %sub, %6
  %arrayidx36 = getelementptr inbounds [3 x float]* %x, i64 %idxprom34, i64 %indvars.iv
  %7 = load float* %arrayidx36, align 4, !tbaa !4
  %add37 = fadd float %mul29, %7
  store float %add37, float* %arrayidx36, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc38, label %for.body19

for.inc38:                                        ; preds = %for.body19
  %indvars.iv.next69 = add i64 %indvars.iv68, 1
  %8 = trunc i64 %indvars.iv.next69 to i32
  %cmp13 = icmp slt i32 %8, %.pre74
  br i1 %cmp13, label %for.cond16.preheader, label %for.inc41

for.inc41:                                        ; preds = %for.inc38, %for.body
  %indvars.iv.next71 = add i64 %indvars.iv70, 1
  %9 = trunc i64 %indvars.iv.next71 to i32
  %cmp = icmp slt i32 %9, %0
  br i1 %cmp, label %for.body, label %for.end43

for.end43:                                        ; preds = %for.inc41, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @do_linacc([3 x float]* nocapture %x, %struct.t_edpar* nocapture %edi) #0 {
entry:
  %neig = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2, i32 0
  %0 = load i32* %neig, align 4, !tbaa !3
  %cmp125 = icmp sgt i32 %0, 0
  br i1 %cmp125, label %for.body.lr.ph, label %for.end87

for.body.lr.ph:                                   ; preds = %entry
  %vec = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2, i32 3
  %stpsz = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2, i32 2
  %refproj = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2, i32 7
  %nr = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0
  %anrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  %.pre = load [3 x float]*** %vec, align 8, !tbaa !0
  %.pre131 = load float** %stpsz, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.end78
  %indvars.iv129 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next130, %for.end78 ]
  %arrayidx = getelementptr inbounds [3 x float]** %.pre, i64 %indvars.iv129
  %1 = load [3 x float]** %arrayidx, align 8, !tbaa !0
  %call = tail call float @do_projectx(%struct.t_edpar* %edi, [3 x float]* %x, [3 x float]* %1) #7
  %arrayidx6 = getelementptr inbounds float* %.pre131, i64 %indvars.iv129
  %2 = load float* %arrayidx6, align 4, !tbaa !4
  %cmp7 = fcmp ogt float %2, 0.000000e+00
  br i1 %cmp7, label %if.then, label %if.end23

if.then:                                          ; preds = %for.body
  %3 = load float** %refproj, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds float* %3, i64 %indvars.iv129
  %4 = load float* %arrayidx12, align 4, !tbaa !4
  %sub = fsub float %call, %4
  %cmp14 = fcmp olt float %sub, 0.000000e+00
  br i1 %cmp14, label %if.then16, label %if.end23

if.then16:                                        ; preds = %if.then
  %sub22 = fsub float %4, %call
  br label %if.end23

if.end23:                                         ; preds = %if.then, %if.then16, %for.body
  %add.0 = phi float [ %sub22, %if.then16 ], [ 0.000000e+00, %if.then ], [ 0.000000e+00, %for.body ]
  %cmp30 = fcmp olt float %2, 0.000000e+00
  br i1 %cmp30, label %if.then32, label %if.end50

if.then32:                                        ; preds = %if.end23
  %5 = load float** %refproj, align 8, !tbaa !0
  %arrayidx37 = getelementptr inbounds float* %5, i64 %indvars.iv129
  %6 = load float* %arrayidx37, align 4, !tbaa !4
  %sub38 = fsub float %call, %6
  %cmp40 = fcmp ogt float %sub38, 0.000000e+00
  br i1 %cmp40, label %if.then42, label %if.end50

if.then42:                                        ; preds = %if.then32
  %sub48 = fsub float %6, %call
  br label %if.end50

if.end50:                                         ; preds = %if.then32, %if.end23, %if.then42
  %add.1 = phi float [ %sub48, %if.then42 ], [ %add.0, %if.end23 ], [ %add.0, %if.then32 ]
  %7 = load i32* %nr, align 4, !tbaa !3
  %cmp52123 = icmp sgt i32 %7, 0
  br i1 %cmp52123, label %for.cond55.preheader.lr.ph, label %for.end78

for.cond55.preheader.lr.ph:                       ; preds = %if.end50
  %8 = load i32** %anrs, align 8, !tbaa !0
  br label %for.cond55.preheader

for.cond55.preheader:                             ; preds = %for.cond55.preheader.lr.ph, %for.inc76
  %indvars.iv127 = phi i64 [ 0, %for.cond55.preheader.lr.ph ], [ %indvars.iv.next128, %for.inc76 ]
  %arrayidx71 = getelementptr inbounds i32* %8, i64 %indvars.iv127
  %9 = load i32* %arrayidx71, align 4, !tbaa !3
  %idxprom72 = sext i32 %9 to i64
  br label %for.body58

for.body58:                                       ; preds = %for.body58, %for.cond55.preheader
  %indvars.iv = phi i64 [ 0, %for.cond55.preheader ], [ %indvars.iv.next, %for.body58 ]
  %arrayidx67 = getelementptr inbounds [3 x float]* %1, i64 %indvars.iv127, i64 %indvars.iv
  %10 = load float* %arrayidx67, align 4, !tbaa !4
  %mul = fmul float %add.1, %10
  %arrayidx74 = getelementptr inbounds [3 x float]* %x, i64 %idxprom72, i64 %indvars.iv
  %11 = load float* %arrayidx74, align 4, !tbaa !4
  %add75 = fadd float %mul, %11
  store float %add75, float* %arrayidx74, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc76, label %for.body58

for.inc76:                                        ; preds = %for.body58
  %indvars.iv.next128 = add i64 %indvars.iv127, 1
  %12 = trunc i64 %indvars.iv.next128 to i32
  %cmp52 = icmp slt i32 %12, %7
  br i1 %cmp52, label %for.cond55.preheader, label %for.end78

for.end78:                                        ; preds = %for.inc76, %if.end50
  %add79 = fadd float %call, %add.1
  %13 = load float** %refproj, align 8, !tbaa !0
  %arrayidx84 = getelementptr inbounds float* %13, i64 %indvars.iv129
  store float %add79, float* %arrayidx84, align 4, !tbaa !4
  %indvars.iv.next130 = add i64 %indvars.iv129, 1
  %14 = trunc i64 %indvars.iv.next130 to i32
  %cmp = icmp slt i32 %14, %0
  br i1 %cmp, label %for.body, label %for.end87

for.end87:                                        ; preds = %for.end78, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @do_radfix([3 x float]* nocapture %x, %struct.t_edpar* nocapture %edi, i32 %step) #0 {
entry:
  %neig = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 0
  %0 = load i32* %neig, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 856, i32 %0, i32 4) #6
  %1 = bitcast i8* %call to float*
  %2 = load i32* %neig, align 4, !tbaa !3
  %cmp7137 = icmp sgt i32 %2, 0
  br i1 %cmp7137, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %vec = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 3
  %refproj = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 7
  %.pre = load [3 x float]*** %vec, align 8, !tbaa !0
  %.pre146 = load float** %refproj, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv144 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next145, %for.body ]
  %rad.0138 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %phitmp, %for.body ]
  %arrayidx = getelementptr inbounds [3 x float]** %.pre, i64 %indvars.iv144
  %3 = load [3 x float]** %arrayidx, align 8, !tbaa !0
  %call10 = tail call float @do_projectx(%struct.t_edpar* %edi, [3 x float]* %x, [3 x float]* %3) #7
  %arrayidx12 = getelementptr inbounds float* %1, i64 %indvars.iv144
  store float %call10, float* %arrayidx12, align 4, !tbaa !4
  %arrayidx18 = getelementptr inbounds float* %.pre146, i64 %indvars.iv144
  %4 = load float* %arrayidx18, align 4, !tbaa !4
  %sub = fsub float %call10, %4
  %conv = fpext float %sub to double
  %pow2 = fmul double %conv, %conv
  %add = fadd double %rad.0138, %pow2
  %conv21 = fptrunc double %add to float
  %indvars.iv.next145 = add i64 %indvars.iv144, 1
  %phitmp = fpext float %conv21 to double
  %5 = trunc i64 %indvars.iv.next145 to i32
  %cmp7 = icmp slt i32 %5, %2
  br i1 %cmp7, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end
  %rad.0.lcssa = phi double [ 0.000000e+00, %if.end ], [ %phitmp, %for.body ]
  %call23 = tail call double @sqrt(double %rad.0.lcssa) #6
  %conv24 = fptrunc double %call23 to float
  %stpsz = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 2
  %6 = load float** %stpsz, align 8, !tbaa !0
  %7 = load float* %6, align 4, !tbaa !4
  %radius = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 8
  %8 = load float* %radius, align 4, !tbaa !4
  %add30 = fadd float %7, %8
  %div = fdiv float %add30, %conv24
  %conv33 = fadd float %div, -1.000000e+00
  store float %add30, float* %radius, align 4, !tbaa !4
  %9 = load i32* %neig, align 4, !tbaa !3
  %cmp46135 = icmp sgt i32 %9, 0
  br i1 %cmp46135, label %for.body48.lr.ph, label %for.end93

for.body48.lr.ph:                                 ; preds = %for.end
  %refproj52 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 7
  %10 = load float** %refproj52, align 8, !tbaa !0
  %nr = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0
  %11 = load i32* %nr, align 4, !tbaa !3
  %cmp58133 = icmp sgt i32 %11, 0
  %vec72 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 3
  %anrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  br label %for.body48

for.body48:                                       ; preds = %for.body48.lr.ph, %for.inc91
  %indvars.iv142 = phi i64 [ 0, %for.body48.lr.ph ], [ %indvars.iv.next143, %for.inc91 ]
  %arrayidx53 = getelementptr inbounds float* %10, i64 %indvars.iv142
  %12 = load float* %arrayidx53, align 4, !tbaa !4
  %arrayidx55 = getelementptr inbounds float* %1, i64 %indvars.iv142
  %13 = load float* %arrayidx55, align 4, !tbaa !4
  %sub56 = fsub float %13, %12
  store float %sub56, float* %arrayidx55, align 4, !tbaa !4
  br i1 %cmp58133, label %for.cond61.preheader.lr.ph, label %for.inc91

for.cond61.preheader.lr.ph:                       ; preds = %for.body48
  %14 = load [3 x float]*** %vec72, align 8, !tbaa !0
  %arrayidx73 = getelementptr inbounds [3 x float]** %14, i64 %indvars.iv142
  %15 = load [3 x float]** %arrayidx73, align 8, !tbaa !0
  %16 = load i32** %anrs, align 8, !tbaa !0
  br label %for.cond61.preheader

for.cond61.preheader:                             ; preds = %for.cond61.preheader.lr.ph, %for.inc88
  %indvars.iv140 = phi i64 [ 0, %for.cond61.preheader.lr.ph ], [ %indvars.iv.next141, %for.inc88 ]
  %arrayidx80 = getelementptr inbounds i32* %16, i64 %indvars.iv140
  %17 = load i32* %arrayidx80, align 4, !tbaa !3
  %idxprom81 = sext i32 %17 to i64
  br label %for.body64

for.body64:                                       ; preds = %for.body64, %for.cond61.preheader
  %indvars.iv = phi i64 [ 0, %for.cond61.preheader ], [ %indvars.iv.next, %for.body64 ]
  %18 = load float* %arrayidx55, align 4, !tbaa !4
  %mul = fmul float %conv33, %18
  %arrayidx75 = getelementptr inbounds [3 x float]* %15, i64 %indvars.iv140, i64 %indvars.iv
  %19 = load float* %arrayidx75, align 4, !tbaa !4
  %mul76 = fmul float %mul, %19
  %arrayidx83 = getelementptr inbounds [3 x float]* %x, i64 %idxprom81, i64 %indvars.iv
  %20 = load float* %arrayidx83, align 4, !tbaa !4
  %add84 = fadd float %mul76, %20
  store float %add84, float* %arrayidx83, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc88, label %for.body64

for.inc88:                                        ; preds = %for.body64
  %indvars.iv.next141 = add i64 %indvars.iv140, 1
  %21 = trunc i64 %indvars.iv.next141 to i32
  %cmp58 = icmp slt i32 %21, %11
  br i1 %cmp58, label %for.cond61.preheader, label %for.inc91

for.inc91:                                        ; preds = %for.inc88, %for.body48
  %indvars.iv.next143 = add i64 %indvars.iv142, 1
  %22 = trunc i64 %indvars.iv.next143 to i32
  %cmp46 = icmp slt i32 %22, %9
  br i1 %cmp46, label %for.body48, label %for.end93

for.end93:                                        ; preds = %for.inc91, %for.end
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 876, i8* %call) #6
  br label %return

return:                                           ; preds = %entry, %for.end93
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @do_radacc([3 x float]* nocapture %x, %struct.t_edpar* nocapture %edi) #0 {
entry:
  %neig = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 0
  %0 = load i32* %neig, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 885, i32 %0, i32 4) #6
  %1 = bitcast i8* %call to float*
  %2 = load i32* %neig, align 4, !tbaa !3
  %cmp7140 = icmp sgt i32 %2, 0
  br i1 %cmp7140, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %vec = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 3
  %refproj = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 7
  %.pre = load [3 x float]*** %vec, align 8, !tbaa !0
  %.pre149 = load float** %refproj, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv147 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next148, %for.body ]
  %rad.0142 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %phitmp, %for.body ]
  %arrayidx = getelementptr inbounds [3 x float]** %.pre, i64 %indvars.iv147
  %3 = load [3 x float]** %arrayidx, align 8, !tbaa !0
  %call10 = tail call float @do_projectx(%struct.t_edpar* %edi, [3 x float]* %x, [3 x float]* %3) #7
  %arrayidx12 = getelementptr inbounds float* %1, i64 %indvars.iv147
  store float %call10, float* %arrayidx12, align 4, !tbaa !4
  %arrayidx18 = getelementptr inbounds float* %.pre149, i64 %indvars.iv147
  %4 = load float* %arrayidx18, align 4, !tbaa !4
  %sub = fsub float %call10, %4
  %conv = fpext float %sub to double
  %pow2 = fmul double %conv, %conv
  %add = fadd double %rad.0142, %pow2
  %conv21 = fptrunc double %add to float
  %indvars.iv.next148 = add i64 %indvars.iv147, 1
  %phitmp = fpext float %conv21 to double
  %5 = trunc i64 %indvars.iv.next148 to i32
  %cmp7 = icmp slt i32 %5, %2
  br i1 %cmp7, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end
  %rad.0.lcssa = phi double [ 0.000000e+00, %if.end ], [ %phitmp, %for.body ]
  %call23 = tail call double @sqrt(double %rad.0.lcssa) #6
  %conv24 = fptrunc double %call23 to float
  %radius = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 8
  %6 = load float* %radius, align 4, !tbaa !4
  %cmp27 = fcmp olt float %conv24, %6
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %for.end
  %div = fdiv float %6, %conv24
  %conv35 = fadd float %div, -1.000000e+00
  br label %if.end42

if.else:                                          ; preds = %for.end
  store float %conv24, float* %radius, align 4, !tbaa !4
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then29
  %ratio.0 = phi float [ %conv35, %if.then29 ], [ 0.000000e+00, %if.else ]
  %7 = load i32* %neig, align 4, !tbaa !3
  %cmp47138 = icmp sgt i32 %7, 0
  br i1 %cmp47138, label %for.body49.lr.ph, label %for.end94

for.body49.lr.ph:                                 ; preds = %if.end42
  %refproj53 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 7
  %8 = load float** %refproj53, align 8, !tbaa !0
  %nr = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0
  %9 = load i32* %nr, align 4, !tbaa !3
  %cmp59136 = icmp sgt i32 %9, 0
  %vec73 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 3
  %anrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  br label %for.body49

for.body49:                                       ; preds = %for.body49.lr.ph, %for.inc92
  %indvars.iv145 = phi i64 [ 0, %for.body49.lr.ph ], [ %indvars.iv.next146, %for.inc92 ]
  %arrayidx54 = getelementptr inbounds float* %8, i64 %indvars.iv145
  %10 = load float* %arrayidx54, align 4, !tbaa !4
  %arrayidx56 = getelementptr inbounds float* %1, i64 %indvars.iv145
  %11 = load float* %arrayidx56, align 4, !tbaa !4
  %sub57 = fsub float %11, %10
  store float %sub57, float* %arrayidx56, align 4, !tbaa !4
  br i1 %cmp59136, label %for.cond62.preheader.lr.ph, label %for.inc92

for.cond62.preheader.lr.ph:                       ; preds = %for.body49
  %12 = load [3 x float]*** %vec73, align 8, !tbaa !0
  %arrayidx74 = getelementptr inbounds [3 x float]** %12, i64 %indvars.iv145
  %13 = load [3 x float]** %arrayidx74, align 8, !tbaa !0
  %14 = load i32** %anrs, align 8, !tbaa !0
  br label %for.cond62.preheader

for.cond62.preheader:                             ; preds = %for.cond62.preheader.lr.ph, %for.inc89
  %indvars.iv143 = phi i64 [ 0, %for.cond62.preheader.lr.ph ], [ %indvars.iv.next144, %for.inc89 ]
  %arrayidx81 = getelementptr inbounds i32* %14, i64 %indvars.iv143
  %15 = load i32* %arrayidx81, align 4, !tbaa !3
  %idxprom82 = sext i32 %15 to i64
  br label %for.body65

for.body65:                                       ; preds = %for.body65, %for.cond62.preheader
  %indvars.iv = phi i64 [ 0, %for.cond62.preheader ], [ %indvars.iv.next, %for.body65 ]
  %16 = load float* %arrayidx56, align 4, !tbaa !4
  %mul = fmul float %ratio.0, %16
  %arrayidx76 = getelementptr inbounds [3 x float]* %13, i64 %indvars.iv143, i64 %indvars.iv
  %17 = load float* %arrayidx76, align 4, !tbaa !4
  %mul77 = fmul float %mul, %17
  %arrayidx84 = getelementptr inbounds [3 x float]* %x, i64 %idxprom82, i64 %indvars.iv
  %18 = load float* %arrayidx84, align 4, !tbaa !4
  %add85 = fadd float %mul77, %18
  store float %add85, float* %arrayidx84, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc89, label %for.body65

for.inc89:                                        ; preds = %for.body65
  %indvars.iv.next144 = add i64 %indvars.iv143, 1
  %19 = trunc i64 %indvars.iv.next144 to i32
  %cmp59 = icmp slt i32 %19, %9
  br i1 %cmp59, label %for.cond62.preheader, label %for.inc92

for.inc92:                                        ; preds = %for.inc89, %for.body49
  %indvars.iv.next146 = add i64 %indvars.iv145, 1
  %20 = trunc i64 %indvars.iv.next146 to i32
  %cmp47 = icmp slt i32 %20, %7
  br i1 %cmp47, label %for.body49, label %for.end94

for.end94:                                        ; preds = %for.inc92, %if.end42
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 913, i8* %call) #6
  br label %return

return:                                           ; preds = %entry, %for.end94
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @do_radcon([3 x float]* nocapture %x, %struct.t_edpar* nocapture %edi) #0 {
entry:
  %neig = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 0
  %0 = load i32* %neig, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 922, i32 %0, i32 4) #6
  %1 = bitcast i8* %call to float*
  %2 = load i32* %neig, align 4, !tbaa !3
  %cmp7140 = icmp sgt i32 %2, 0
  br i1 %cmp7140, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %vec = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 3
  %refproj = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 7
  %.pre = load [3 x float]*** %vec, align 8, !tbaa !0
  %.pre149 = load float** %refproj, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv147 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next148, %for.body ]
  %rad.0142 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %phitmp, %for.body ]
  %arrayidx = getelementptr inbounds [3 x float]** %.pre, i64 %indvars.iv147
  %3 = load [3 x float]** %arrayidx, align 8, !tbaa !0
  %call10 = tail call float @do_projectx(%struct.t_edpar* %edi, [3 x float]* %x, [3 x float]* %3) #7
  %arrayidx12 = getelementptr inbounds float* %1, i64 %indvars.iv147
  store float %call10, float* %arrayidx12, align 4, !tbaa !4
  %arrayidx18 = getelementptr inbounds float* %.pre149, i64 %indvars.iv147
  %4 = load float* %arrayidx18, align 4, !tbaa !4
  %sub = fsub float %call10, %4
  %conv = fpext float %sub to double
  %pow2 = fmul double %conv, %conv
  %add = fadd double %rad.0142, %pow2
  %conv21 = fptrunc double %add to float
  %indvars.iv.next148 = add i64 %indvars.iv147, 1
  %phitmp = fpext float %conv21 to double
  %5 = trunc i64 %indvars.iv.next148 to i32
  %cmp7 = icmp slt i32 %5, %2
  br i1 %cmp7, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end
  %rad.0.lcssa = phi double [ 0.000000e+00, %if.end ], [ %phitmp, %for.body ]
  %call23 = tail call double @sqrt(double %rad.0.lcssa) #6
  %conv24 = fptrunc double %call23 to float
  %radius = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 8
  %6 = load float* %radius, align 4, !tbaa !4
  %cmp27 = fcmp ogt float %conv24, %6
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %for.end
  %div = fdiv float %6, %conv24
  %conv35 = fadd float %div, -1.000000e+00
  br label %if.end42

if.else:                                          ; preds = %for.end
  store float %conv24, float* %radius, align 4, !tbaa !4
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then29
  %ratio.0 = phi float [ %conv35, %if.then29 ], [ 0.000000e+00, %if.else ]
  %7 = load i32* %neig, align 4, !tbaa !3
  %cmp47138 = icmp sgt i32 %7, 0
  br i1 %cmp47138, label %for.body49.lr.ph, label %for.end94

for.body49.lr.ph:                                 ; preds = %if.end42
  %refproj53 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 7
  %8 = load float** %refproj53, align 8, !tbaa !0
  %nr = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0
  %9 = load i32* %nr, align 4, !tbaa !3
  %cmp59136 = icmp sgt i32 %9, 0
  %vec73 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 3
  %anrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  br label %for.body49

for.body49:                                       ; preds = %for.body49.lr.ph, %for.inc92
  %indvars.iv145 = phi i64 [ 0, %for.body49.lr.ph ], [ %indvars.iv.next146, %for.inc92 ]
  %arrayidx54 = getelementptr inbounds float* %8, i64 %indvars.iv145
  %10 = load float* %arrayidx54, align 4, !tbaa !4
  %arrayidx56 = getelementptr inbounds float* %1, i64 %indvars.iv145
  %11 = load float* %arrayidx56, align 4, !tbaa !4
  %sub57 = fsub float %11, %10
  store float %sub57, float* %arrayidx56, align 4, !tbaa !4
  br i1 %cmp59136, label %for.cond62.preheader.lr.ph, label %for.inc92

for.cond62.preheader.lr.ph:                       ; preds = %for.body49
  %12 = load [3 x float]*** %vec73, align 8, !tbaa !0
  %arrayidx74 = getelementptr inbounds [3 x float]** %12, i64 %indvars.iv145
  %13 = load [3 x float]** %arrayidx74, align 8, !tbaa !0
  %14 = load i32** %anrs, align 8, !tbaa !0
  br label %for.cond62.preheader

for.cond62.preheader:                             ; preds = %for.cond62.preheader.lr.ph, %for.inc89
  %indvars.iv143 = phi i64 [ 0, %for.cond62.preheader.lr.ph ], [ %indvars.iv.next144, %for.inc89 ]
  %arrayidx81 = getelementptr inbounds i32* %14, i64 %indvars.iv143
  %15 = load i32* %arrayidx81, align 4, !tbaa !3
  %idxprom82 = sext i32 %15 to i64
  br label %for.body65

for.body65:                                       ; preds = %for.body65, %for.cond62.preheader
  %indvars.iv = phi i64 [ 0, %for.cond62.preheader ], [ %indvars.iv.next, %for.body65 ]
  %16 = load float* %arrayidx56, align 4, !tbaa !4
  %mul = fmul float %ratio.0, %16
  %arrayidx76 = getelementptr inbounds [3 x float]* %13, i64 %indvars.iv143, i64 %indvars.iv
  %17 = load float* %arrayidx76, align 4, !tbaa !4
  %mul77 = fmul float %mul, %17
  %arrayidx84 = getelementptr inbounds [3 x float]* %x, i64 %idxprom82, i64 %indvars.iv
  %18 = load float* %arrayidx84, align 4, !tbaa !4
  %add85 = fadd float %mul77, %18
  store float %add85, float* %arrayidx84, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc89, label %for.body65

for.inc89:                                        ; preds = %for.body65
  %indvars.iv.next144 = add i64 %indvars.iv143, 1
  %19 = trunc i64 %indvars.iv.next144 to i32
  %cmp59 = icmp slt i32 %19, %9
  br i1 %cmp59, label %for.cond62.preheader, label %for.inc92

for.inc92:                                        ; preds = %for.inc89, %for.body49
  %indvars.iv.next146 = add i64 %indvars.iv145, 1
  %20 = trunc i64 %indvars.iv.next146 to i32
  %cmp47 = icmp slt i32 %20, %7
  br i1 %cmp47, label %for.body49, label %for.end94

for.end94:                                        ; preds = %for.inc92, %if.end42
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 948, i8* %call) #6
  br label %return

return:                                           ; preds = %entry, %for.end94
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @write_proj(%struct._IO_FILE* nocapture %out, %struct.t_edpar* nocapture %edi, i8* nocapture %mode) #0 {
entry:
  %mon = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 0
  tail call void @do_write_proj(%struct._IO_FILE* %out, %struct.t_eigvec* %mon, i8* %mode) #7
  %linfix = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1
  tail call void @do_write_proj(%struct._IO_FILE* %out, %struct.t_eigvec* %linfix, i8* %mode) #7
  %linacc = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2
  tail call void @do_write_proj(%struct._IO_FILE* %out, %struct.t_eigvec* %linacc, i8* %mode) #7
  %radfix = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3
  tail call void @do_write_proj(%struct._IO_FILE* %out, %struct.t_eigvec* %radfix, i8* %mode) #7
  %radacc = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4
  tail call void @do_write_proj(%struct._IO_FILE* %out, %struct.t_eigvec* %radacc, i8* %mode) #7
  %radcon = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5
  tail call void @do_write_proj(%struct._IO_FILE* %out, %struct.t_eigvec* %radcon, i8* %mode) #7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @do_write_proj(%struct._IO_FILE* nocapture %out, %struct.t_eigvec* nocapture %vec, i8* nocapture %mode) #0 {
entry:
  %neig = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 0
  %0 = load i32* %neig, align 4, !tbaa !3
  %cmp41 = icmp sgt i32 %0, 0
  br i1 %cmp41, label %for.body.lr.ph, label %if.end27

for.body.lr.ph:                                   ; preds = %entry
  %xproj = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 4
  %vproj = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 5
  %fproj = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %call = tail call i32 @strcmp(i8* %mode, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #8
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %1 = load float** %xproj, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds float* %1, i64 %indvars.iv
  %2 = load float* %arrayidx, align 4, !tbaa !4
  %conv = fpext float %2 to double
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str59, i64 0, i64 0), double %conv) #6
  br label %for.inc

if.else:                                          ; preds = %for.body
  %call3 = tail call i32 @strcmp(i8* %mode, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #8
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then6, label %if.else11

if.then6:                                         ; preds = %if.else
  %3 = load float** %vproj, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds float* %3, i64 %indvars.iv
  %4 = load float* %arrayidx8, align 4, !tbaa !4
  %conv9 = fpext float %4 to double
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str59, i64 0, i64 0), double %conv9) #6
  br label %for.inc

if.else11:                                        ; preds = %if.else
  %call12 = tail call i32 @strcmp(i8* %mode, i8* getelementptr inbounds ([2 x i8]* @.str49, i64 0, i64 0)) #8
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %for.inc

if.then15:                                        ; preds = %if.else11
  %5 = load float** %fproj, align 8, !tbaa !0
  %arrayidx17 = getelementptr inbounds float* %5, i64 %indvars.iv
  %6 = load float* %arrayidx17, align 4, !tbaa !4
  %conv18 = fpext float %6 to double
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str59, i64 0, i64 0), double %conv18) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else11, %if.then15, %if.then6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %7 = load i32* %neig, align 4, !tbaa !3
  %8 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %8, %7
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc
  %cmp23 = icmp sgt i32 %7, 0
  br i1 %cmp23, label %if.then25, label %if.end27

if.then25:                                        ; preds = %for.end
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out)
  br label %if.end27

if.end27:                                         ; preds = %entry, %if.then25, %for.end
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #1

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

declare float @fabsf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}

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
  tail call void @llvm.dbg.value(metadata !{i32 %nfile}, i64 0, metadata !80), !dbg !988
  tail call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !81), !dbg !988
  tail call void @llvm.dbg.value(metadata !{%struct.t_edsamyn* %edyn}, i64 0, metadata !82), !dbg !988
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !989, !tbaa !990
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %0), !dbg !989
  %bEdsam = getelementptr inbounds %struct.t_edsamyn* %edyn, i64 0, i32 0, !dbg !993
  store i32 1, i32* %bEdsam, align 4, !dbg !993, !tbaa !994
  %call1 = tail call i8* @ftp2fn(i32 40, i32 %nfile, %struct.t_filenm* %fnm) #7, !dbg !995
  %edinam = getelementptr inbounds %struct.t_edsamyn* %edyn, i64 0, i32 1, !dbg !995
  store i8* %call1, i8** %edinam, align 8, !dbg !995, !tbaa !990
  %call2 = tail call i8* @ftp2fn(i32 41, i32 %nfile, %struct.t_filenm* %fnm) #7, !dbg !996
  %edonam = getelementptr inbounds %struct.t_edsamyn* %edyn, i64 0, i32 2, !dbg !996
  store i8* %call2, i8** %edonam, align 8, !dbg !996, !tbaa !990
  ret void, !dbg !997
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare i8* @ftp2fn(i32, i32, %struct.t_filenm*) #3

; Function Attrs: nounwind optsize uwtable
define void @init_edsam(%struct._IO_FILE* nocapture %log, %struct.t_topology* %top, %struct.t_mdatoms* nocapture %md, i32 %start, i32 %homenr, [3 x float]* %x, [3 x float]* %box, %struct.t_edsamyn* nocapture %edyn, %struct.t_edpar* %edi) #0 {
entry:
  %rotmat = alloca [3 x [3 x float]], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !465), !dbg !998
  call void @llvm.dbg.value(metadata !{%struct.t_topology* %top}, i64 0, metadata !466), !dbg !998
  call void @llvm.dbg.value(metadata !{%struct.t_mdatoms* %md}, i64 0, metadata !467), !dbg !999
  call void @llvm.dbg.value(metadata !{i32 %start}, i64 0, metadata !468), !dbg !999
  call void @llvm.dbg.value(metadata !{i32 %homenr}, i64 0, metadata !469), !dbg !999
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !470), !dbg !1000
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !471), !dbg !1000
  call void @llvm.dbg.value(metadata !{%struct.t_edsamyn* %edyn}, i64 0, metadata !472), !dbg !1001
  call void @llvm.dbg.value(metadata !{%struct.t_edpar* %edi}, i64 0, metadata !473), !dbg !1001
  %0 = bitcast [3 x [3 x float]]* %rotmat to i8*, !dbg !1002
  call void @llvm.lifetime.start(i64 36, i8* %0) #4, !dbg !1002
  call void @llvm.dbg.declare(metadata !{[3 x [3 x float]]* %rotmat}, metadata !481), !dbg !1002
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str1, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %log), !dbg !1003
  %nr = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 0, !dbg !1004
  %2 = load i32* %nr, align 4, !dbg !1004, !tbaa !994
  call void @read_edi(%struct.t_edsamyn* %edyn, %struct.t_edpar* %edi, i32 %2) #8, !dbg !1004
  %ned1 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 2, !dbg !1005
  %3 = load i32* %ned1, align 4, !dbg !1005, !tbaa !994
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !476), !dbg !1005
  %tmass = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 16, !dbg !1006
  store float 0.000000e+00, float* %tmass, align 4, !dbg !1006, !tbaa !1007
  %selmas = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 3, !dbg !1008
  %4 = load i32* %selmas, align 4, !dbg !1008, !tbaa !994
  %tobool = icmp eq i32 %4, 0, !dbg !1008
  br i1 %tobool, label %if.else, label %if.then, !dbg !1008

if.then:                                          ; preds = %entry
  %npro = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 1, !dbg !1009
  %5 = load i32* %npro, align 4, !dbg !1009, !tbaa !994
  %nmass = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 13, !dbg !1009
  store i32 %5, i32* %nmass, align 4, !dbg !1009, !tbaa !994
  %call3 = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 85, i32 %5, i32 4) #7, !dbg !1011
  %6 = bitcast i8* %call3 to float*, !dbg !1011
  %mass = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 15, !dbg !1011
  store float* %6, float** %mass, align 8, !dbg !1011, !tbaa !990
  %7 = load i32* %nmass, align 4, !dbg !1012, !tbaa !994
  %call5 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 86, i32 %7, i32 4) #7, !dbg !1012
  %8 = bitcast i8* %call5 to i32*, !dbg !1012
  %masnrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 14, !dbg !1012
  store i32* %8, i32** %masnrs, align 8, !dbg !1012, !tbaa !990
  %9 = load i32* %nmass, align 4, !dbg !1013, !tbaa !994
  %call7 = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 87, i32 %9, i32 4) #7, !dbg !1013
  %10 = bitcast i8* %call7 to i32*, !dbg !1013
  call void @llvm.dbg.value(metadata !{i32* %10}, i64 0, metadata !477), !dbg !1013
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !474), !dbg !1014
  %11 = load i32* %nmass, align 4, !dbg !1014, !tbaa !994
  %cmp465 = icmp sgt i32 %11, 0, !dbg !1014
  br i1 %cmp465, label %for.body.lr.ph, label %if.end76, !dbg !1014

for.body.lr.ph:                                   ; preds = %if.then
  %anrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 1, !dbg !1016
  %12 = load i32** %anrs, align 8, !dbg !1016, !tbaa !990
  %atom = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1, !dbg !1016
  %13 = load %struct.t_atom** %atom, align 8, !dbg !1016, !tbaa !990
  %14 = load float** %mass, align 8, !dbg !1016, !tbaa !990
  %15 = load i32** %masnrs, align 8, !dbg !1018, !tbaa !990
  br label %for.body, !dbg !1014

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv481 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next482, %for.body ]
  %arrayidx = getelementptr inbounds i32* %12, i64 %indvars.iv481, !dbg !1016
  %16 = load i32* %arrayidx, align 4, !dbg !1016, !tbaa !994
  %idxprom9 = sext i32 %16 to i64, !dbg !1016
  %m = getelementptr inbounds %struct.t_atom* %13, i64 %idxprom9, i32 0, !dbg !1016
  %17 = load float* %m, align 4, !dbg !1016, !tbaa !1007
  %arrayidx14 = getelementptr inbounds float* %14, i64 %indvars.iv481, !dbg !1016
  store float %17, float* %arrayidx14, align 4, !dbg !1016, !tbaa !1007
  %arrayidx17 = getelementptr inbounds i32* %15, i64 %indvars.iv481, !dbg !1018
  %18 = trunc i64 %indvars.iv481 to i32, !dbg !1018
  store i32 %18, i32* %arrayidx17, align 4, !dbg !1018, !tbaa !994
  %arrayidx19 = getelementptr inbounds i32* %10, i64 %indvars.iv481, !dbg !1019
  store i32 %18, i32* %arrayidx19, align 4, !dbg !1019, !tbaa !994
  %19 = load float* %tmass, align 4, !dbg !1020, !tbaa !1007
  %add = fadd float %17, %19, !dbg !1020
  store float %add, float* %tmass, align 4, !dbg !1020, !tbaa !1007
  %indvars.iv.next482 = add i64 %indvars.iv481, 1, !dbg !1014
  %20 = load i32* %nmass, align 4, !dbg !1014, !tbaa !994
  %21 = trunc i64 %indvars.iv.next482 to i32, !dbg !1014
  %cmp = icmp slt i32 %21, %20, !dbg !1014
  br i1 %cmp, label %for.body, label %if.end76, !dbg !1014

if.else:                                          ; preds = %entry
  %nr24 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0, !dbg !1021
  %22 = load i32* %nr24, align 4, !dbg !1021, !tbaa !994
  %nmass25 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 13, !dbg !1021
  store i32 %22, i32* %nmass25, align 4, !dbg !1021, !tbaa !994
  %call27 = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 97, i32 %22, i32 4) #7, !dbg !1023
  %23 = bitcast i8* %call27 to float*, !dbg !1023
  %mass28 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 15, !dbg !1023
  store float* %23, float** %mass28, align 8, !dbg !1023, !tbaa !990
  %24 = load i32* %nmass25, align 4, !dbg !1024, !tbaa !994
  %call30 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 98, i32 %24, i32 4) #7, !dbg !1024
  %25 = bitcast i8* %call30 to i32*, !dbg !1024
  %masnrs31 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 14, !dbg !1024
  store i32* %25, i32** %masnrs31, align 8, !dbg !1024, !tbaa !990
  %26 = load i32* %nmass25, align 4, !dbg !1025, !tbaa !994
  %call33 = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 99, i32 %26, i32 4) #7, !dbg !1025
  %27 = bitcast i8* %call33 to i32*, !dbg !1025
  call void @llvm.dbg.value(metadata !{i32* %27}, i64 0, metadata !477), !dbg !1025
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !474), !dbg !1026
  %28 = load i32* %nmass25, align 4, !dbg !1026, !tbaa !994
  %cmp36462 = icmp sgt i32 %28, 0, !dbg !1026
  br i1 %cmp36462, label %for.body37.lr.ph, label %if.end76, !dbg !1026

for.body37.lr.ph:                                 ; preds = %if.else
  %29 = load float** %mass28, align 8, !dbg !1028, !tbaa !990
  %anrs43 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1, !dbg !1030
  %30 = load i32** %anrs43, align 8, !dbg !1030, !tbaa !990
  %31 = load i32** %masnrs31, align 8, !dbg !1030, !tbaa !990
  %nr50 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 0, !dbg !1031
  %anrs55 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 1, !dbg !1033
  br label %for.body37, !dbg !1026

for.body37:                                       ; preds = %for.body37.lr.ph, %for.end67
  %indvars.iv479 = phi i64 [ 0, %for.body37.lr.ph ], [ %indvars.iv.next480, %for.end67 ]
  %arrayidx40 = getelementptr inbounds float* %29, i64 %indvars.iv479, !dbg !1028
  store float 1.000000e+00, float* %arrayidx40, align 4, !dbg !1028, !tbaa !1007
  %arrayidx44 = getelementptr inbounds i32* %30, i64 %indvars.iv479, !dbg !1030
  %32 = load i32* %arrayidx44, align 4, !dbg !1030, !tbaa !994
  %arrayidx47 = getelementptr inbounds i32* %31, i64 %indvars.iv479, !dbg !1030
  store i32 %32, i32* %arrayidx47, align 4, !dbg !1030, !tbaa !994
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !475), !dbg !1031
  %33 = load i32* %nr50, align 4, !dbg !1031, !tbaa !994
  %cmp51460 = icmp sgt i32 %33, 0, !dbg !1031
  br i1 %cmp51460, label %for.body52.lr.ph, label %for.end67, !dbg !1031

for.body52.lr.ph:                                 ; preds = %for.body37
  %34 = load i32** %anrs55, align 8, !dbg !1033, !tbaa !990
  %arrayidx64 = getelementptr inbounds i32* %27, i64 %indvars.iv479, !dbg !1035
  br label %for.body52, !dbg !1031

for.body52:                                       ; preds = %for.inc65, %for.body52.lr.ph
  %35 = phi i32 [ %33, %for.body52.lr.ph ], [ %39, %for.inc65 ]
  %indvars.iv477 = phi i64 [ 0, %for.body52.lr.ph ], [ %indvars.iv.next478, %for.inc65 ]
  %arrayidx56 = getelementptr inbounds i32* %34, i64 %indvars.iv477, !dbg !1033
  %36 = load i32* %arrayidx56, align 4, !dbg !1033, !tbaa !994
  %37 = load i32* %arrayidx44, align 4, !dbg !1033, !tbaa !994
  %cmp61 = icmp eq i32 %36, %37, !dbg !1033
  br i1 %cmp61, label %if.then62, label %for.inc65, !dbg !1033

if.then62:                                        ; preds = %for.body52
  %38 = trunc i64 %indvars.iv477 to i32, !dbg !1035
  store i32 %38, i32* %arrayidx64, align 4, !dbg !1035, !tbaa !994
  %.pre = load i32* %nr50, align 4, !dbg !1031, !tbaa !994
  br label %for.inc65, !dbg !1035

for.inc65:                                        ; preds = %for.body52, %if.then62
  %39 = phi i32 [ %35, %for.body52 ], [ %.pre, %if.then62 ], !dbg !1031
  %indvars.iv.next478 = add i64 %indvars.iv477, 1, !dbg !1031
  %40 = trunc i64 %indvars.iv.next478 to i32, !dbg !1031
  %cmp51 = icmp slt i32 %40, %39, !dbg !1031
  br i1 %cmp51, label %for.body52, label %for.end67, !dbg !1031

for.end67:                                        ; preds = %for.inc65, %for.body37
  %41 = load float* %tmass, align 4, !dbg !1036, !tbaa !1007
  %add72 = fadd float %41, 1.000000e+00, !dbg !1036
  store float %add72, float* %tmass, align 4, !dbg !1036, !tbaa !1007
  %indvars.iv.next480 = add i64 %indvars.iv479, 1, !dbg !1026
  %42 = load i32* %nmass25, align 4, !dbg !1026, !tbaa !994
  %43 = trunc i64 %indvars.iv.next480 to i32, !dbg !1026
  %cmp36 = icmp slt i32 %43, %42, !dbg !1026
  br i1 %cmp36, label %for.body37, label %if.end76, !dbg !1026

if.end76:                                         ; preds = %if.then, %for.body, %if.else, %for.end67
  %refmasnrs.0 = phi i32* [ %27, %for.end67 ], [ %27, %if.else ], [ %10, %for.body ], [ %10, %if.then ]
  %nfit = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 17, !dbg !1037
  store i32 0, i32* %nfit, align 4, !dbg !1037, !tbaa !994
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !474), !dbg !1038
  %cmp78458 = icmp sgt i32 %3, 0, !dbg !1038
  br i1 %cmp78458, label %for.body79.lr.ph, label %for.end91, !dbg !1038

for.body79.lr.ph:                                 ; preds = %if.end76
  %atomname = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 2, !dbg !1040
  %.pre485 = load i8**** %atomname, align 8, !dbg !1040, !tbaa !990
  br label %for.body79, !dbg !1038

for.body79:                                       ; preds = %for.inc89, %for.body79.lr.ph
  %44 = phi i32 [ 0, %for.body79.lr.ph ], [ %47, %for.inc89 ]
  %indvars.iv473 = phi i64 [ 0, %for.body79.lr.ph ], [ %indvars.iv.next474, %for.inc89 ]
  %arrayidx82 = getelementptr inbounds i8*** %.pre485, i64 %indvars.iv473, !dbg !1040
  %45 = load i8*** %arrayidx82, align 8, !dbg !1040, !tbaa !990
  %46 = load i8** %45, align 8, !dbg !1040, !tbaa !990
  %call83 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0)) #9, !dbg !1040
  %cmp84 = icmp eq i32 %call83, 0, !dbg !1040
  br i1 %cmp84, label %if.then85, label %for.inc89, !dbg !1040

if.then85:                                        ; preds = %for.body79
  %inc87 = add nsw i32 %44, 1, !dbg !1042
  store i32 %inc87, i32* %nfit, align 4, !dbg !1042, !tbaa !994
  br label %for.inc89, !dbg !1042

for.inc89:                                        ; preds = %for.body79, %if.then85
  %47 = phi i32 [ %44, %for.body79 ], [ %inc87, %if.then85 ]
  %indvars.iv.next474 = add i64 %indvars.iv473, 1, !dbg !1038
  %lftr.wideiv475 = trunc i64 %indvars.iv.next474 to i32, !dbg !1038
  %exitcond476 = icmp eq i32 %lftr.wideiv475, %3, !dbg !1038
  br i1 %exitcond476, label %for.end91, label %for.body79, !dbg !1038

for.end91:                                        ; preds = %for.inc89, %if.end76
  %48 = phi i32 [ 0, %if.end76 ], [ %47, %for.inc89 ]
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([19 x i8]* @.str7, i64 0, i64 0), i32 %48) #7, !dbg !1043
  %49 = load i32* %nfit, align 4, !dbg !1044, !tbaa !994
  %cmp95 = icmp eq i32 %49, 0, !dbg !1044
  br i1 %cmp95, label %if.then96, label %if.else116, !dbg !1044

if.then96:                                        ; preds = %for.end91
  %nr98 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0, !dbg !1045
  %50 = load i32* %nr98, align 4, !dbg !1045, !tbaa !994
  store i32 %50, i32* %nfit, align 4, !dbg !1045, !tbaa !994
  %call101 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 120, i32 %50, i32 4) #7, !dbg !1047
  %51 = bitcast i8* %call101 to i32*, !dbg !1047
  %fitnrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 18, !dbg !1047
  store i32* %51, i32** %fitnrs, align 8, !dbg !1047, !tbaa !990
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !474), !dbg !1048
  %52 = load i32* %nfit, align 4, !dbg !1048, !tbaa !994
  %cmp104452 = icmp sgt i32 %52, 0, !dbg !1048
  br i1 %cmp104452, label %for.body105.lr.ph, label %if.end138, !dbg !1048

for.body105.lr.ph:                                ; preds = %if.then96
  %anrs108 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1, !dbg !1050
  %53 = load i32** %anrs108, align 8, !dbg !1050, !tbaa !990
  br label %for.body105, !dbg !1048

for.body105:                                      ; preds = %for.body105.lr.ph, %for.body105
  %indvars.iv469 = phi i64 [ 0, %for.body105.lr.ph ], [ %indvars.iv.next470, %for.body105 ]
  %arrayidx109 = getelementptr inbounds i32* %53, i64 %indvars.iv469, !dbg !1050
  %54 = load i32* %arrayidx109, align 4, !dbg !1050, !tbaa !994
  %arrayidx112 = getelementptr inbounds i32* %51, i64 %indvars.iv469, !dbg !1050
  store i32 %54, i32* %arrayidx112, align 4, !dbg !1050, !tbaa !994
  %indvars.iv.next470 = add i64 %indvars.iv469, 1, !dbg !1048
  %55 = load i32* %nfit, align 4, !dbg !1048, !tbaa !994
  %56 = trunc i64 %indvars.iv.next470 to i32, !dbg !1048
  %cmp104 = icmp slt i32 %56, %55, !dbg !1048
  br i1 %cmp104, label %for.body105, label %if.end138, !dbg !1048

if.else116:                                       ; preds = %for.end91
  %call118 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 126, i32 %49, i32 4) #7, !dbg !1052
  %57 = bitcast i8* %call118 to i32*, !dbg !1052
  %fitnrs119 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 18, !dbg !1052
  store i32* %57, i32** %fitnrs119, align 8, !dbg !1052, !tbaa !990
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !475), !dbg !1054
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !474), !dbg !1055
  br i1 %cmp78458, label %for.body122.lr.ph, label %if.end138, !dbg !1055

for.body122.lr.ph:                                ; preds = %if.else116
  %atomname125 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 2, !dbg !1057
  %.pre484 = load i8**** %atomname125, align 8, !dbg !1057, !tbaa !990
  br label %for.body122, !dbg !1055

for.body122:                                      ; preds = %for.inc135, %for.body122.lr.ph
  %indvars.iv471 = phi i64 [ 0, %for.body122.lr.ph ], [ %indvars.iv.next472, %for.inc135 ]
  %j.1456 = phi i32 [ 0, %for.body122.lr.ph ], [ %j.2, %for.inc135 ]
  %arrayidx126 = getelementptr inbounds i8*** %.pre484, i64 %indvars.iv471, !dbg !1057
  %58 = load i8*** %arrayidx126, align 8, !dbg !1057, !tbaa !990
  %59 = load i8** %58, align 8, !dbg !1057, !tbaa !990
  %call127 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0)) #9, !dbg !1057
  %cmp128 = icmp eq i32 %call127, 0, !dbg !1057
  br i1 %cmp128, label %if.then129, label %for.inc135, !dbg !1057

if.then129:                                       ; preds = %for.body122
  %idxprom130 = sext i32 %j.1456 to i64, !dbg !1059
  %arrayidx132 = getelementptr inbounds i32* %57, i64 %idxprom130, !dbg !1059
  %60 = trunc i64 %indvars.iv471 to i32, !dbg !1059
  store i32 %60, i32* %arrayidx132, align 4, !dbg !1059, !tbaa !994
  %inc133 = add nsw i32 %j.1456, 1, !dbg !1061
  call void @llvm.dbg.value(metadata !{i32 %inc133}, i64 0, metadata !475), !dbg !1061
  br label %for.inc135, !dbg !1062

for.inc135:                                       ; preds = %for.body122, %if.then129
  %j.2 = phi i32 [ %inc133, %if.then129 ], [ %j.1456, %for.body122 ]
  %indvars.iv.next472 = add i64 %indvars.iv471, 1, !dbg !1055
  %lftr.wideiv = trunc i64 %indvars.iv.next472 to i32, !dbg !1055
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !dbg !1055
  br i1 %exitcond, label %if.end138, label %for.body122, !dbg !1055

if.end138:                                        ; preds = %if.else116, %for.inc135, %if.then96, %for.body105
  %nr140 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 0, !dbg !1063
  %61 = load i32* %nr140, align 4, !dbg !1063, !tbaa !994
  %x142 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 2, !dbg !1063
  %62 = load [3 x float]** %x142, align 8, !dbg !1063, !tbaa !990
  %nmass143 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 13, !dbg !1063
  %63 = load i32* %nmass143, align 4, !dbg !1063, !tbaa !994
  %mass144 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 15, !dbg !1063
  %64 = load float** %mass144, align 8, !dbg !1063, !tbaa !990
  %65 = load float* %tmass, align 4, !dbg !1063, !tbaa !1007
  call void @put_in_origin(i32 %61, [3 x float]* %62, i32 %63, i32* %refmasnrs.0, float* %64, float %65) #8, !dbg !1063
  %66 = load i32* %nfit, align 4, !dbg !1064, !tbaa !994
  %call147 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 142, i32 %66, i32 12) #7, !dbg !1064
  %67 = bitcast i8* %call147 to [3 x float]*, !dbg !1064
  call void @llvm.dbg.value(metadata !{[3 x float]* %67}, i64 0, metadata !478), !dbg !1064
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !475), !dbg !1065
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !474), !dbg !1066
  %68 = load i32* %nr140, align 4, !dbg !1066, !tbaa !994
  %cmp151448 = icmp sgt i32 %68, 0, !dbg !1066
  %69 = load i32* %nfit, align 4, !dbg !1068, !tbaa !994
  br i1 %cmp151448, label %for.body152.lr.ph, label %for.end177, !dbg !1066

for.body152.lr.ph:                                ; preds = %if.end138
  %anrs158 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 1, !dbg !1070
  %fitnrs161 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 18, !dbg !1070
  br label %for.body152, !dbg !1066

for.body152:                                      ; preds = %for.body152.lr.ph, %for.inc175
  %indvars.iv467 = phi i64 [ 0, %for.body152.lr.ph ], [ %indvars.iv.next468, %for.inc175 ]
  %j.3449 = phi i32 [ 0, %for.body152.lr.ph ], [ %j.4, %for.inc175 ]
  %cmp154 = icmp slt i32 %j.3449, %69, !dbg !1068
  br i1 %cmp154, label %if.then155, label %for.inc175, !dbg !1068

if.then155:                                       ; preds = %for.body152
  %70 = load i32** %anrs158, align 8, !dbg !1070, !tbaa !990
  %arrayidx159 = getelementptr inbounds i32* %70, i64 %indvars.iv467, !dbg !1070
  %71 = load i32* %arrayidx159, align 4, !dbg !1070, !tbaa !994
  %idxprom160 = sext i32 %j.3449 to i64, !dbg !1070
  %72 = load i32** %fitnrs161, align 8, !dbg !1070, !tbaa !990
  %arrayidx162 = getelementptr inbounds i32* %72, i64 %idxprom160, !dbg !1070
  %73 = load i32* %arrayidx162, align 4, !dbg !1070, !tbaa !994
  %cmp163 = icmp eq i32 %71, %73, !dbg !1070
  br i1 %cmp163, label %if.then164, label %for.inc175, !dbg !1070

if.then164:                                       ; preds = %if.then155
  %74 = load [3 x float]** %x142, align 8, !dbg !1072, !tbaa !990
  %arraydecay = getelementptr inbounds [3 x float]* %74, i64 %indvars.iv467, i64 0, !dbg !1072
  %arraydecay171 = getelementptr inbounds [3 x float]* %67, i64 %idxprom160, i64 0, !dbg !1072
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !1074), !dbg !1075
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay171}, i64 0, metadata !1076), !dbg !1075
  %75 = load float* %arraydecay, align 4, !dbg !1077, !tbaa !1007
  store float %75, float* %arraydecay171, align 4, !dbg !1077, !tbaa !1007
  %arrayidx2.i = getelementptr inbounds [3 x float]* %74, i64 %indvars.iv467, i64 1, !dbg !1078
  %76 = load float* %arrayidx2.i, align 4, !dbg !1078, !tbaa !1007
  %arrayidx3.i = getelementptr inbounds [3 x float]* %67, i64 %idxprom160, i64 1, !dbg !1078
  store float %76, float* %arrayidx3.i, align 4, !dbg !1078, !tbaa !1007
  %arrayidx4.i = getelementptr inbounds [3 x float]* %74, i64 %indvars.iv467, i64 2, !dbg !1079
  %77 = load float* %arrayidx4.i, align 4, !dbg !1079, !tbaa !1007
  %arrayidx5.i = getelementptr inbounds [3 x float]* %67, i64 %idxprom160, i64 2, !dbg !1079
  store float %77, float* %arrayidx5.i, align 4, !dbg !1079, !tbaa !1007
  %inc172 = add nsw i32 %j.3449, 1, !dbg !1080
  call void @llvm.dbg.value(metadata !{i32 %inc172}, i64 0, metadata !475), !dbg !1080
  br label %for.inc175, !dbg !1081

for.inc175:                                       ; preds = %for.body152, %if.then164, %if.then155
  %j.4 = phi i32 [ %inc172, %if.then164 ], [ %j.3449, %if.then155 ], [ %j.3449, %for.body152 ]
  %indvars.iv.next468 = add i64 %indvars.iv467, 1, !dbg !1066
  %78 = trunc i64 %indvars.iv.next468 to i32, !dbg !1066
  %cmp151 = icmp slt i32 %78, %68, !dbg !1066
  br i1 %cmp151, label %for.body152, label %for.end177, !dbg !1066

for.end177:                                       ; preds = %for.inc175, %if.end138
  %j.3.lcssa = phi i32 [ 0, %if.end138 ], [ %j.4, %for.inc175 ]
  %cmp179 = icmp eq i32 %j.3.lcssa, %69, !dbg !1082
  br i1 %cmp179, label %if.end182, label %if.then180, !dbg !1082

if.then180:                                       ; preds = %for.end177
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([39 x i8]* @.str10, i64 0, i64 0), i32 %j.3.lcssa, i32 %69) #7, !dbg !1082
  %.pre483 = load i32* %nfit, align 4, !dbg !1083, !tbaa !994
  br label %if.end182, !dbg !1082

if.end182:                                        ; preds = %for.end177, %if.then180
  %79 = phi i32 [ %.pre483, %if.then180 ], [ %69, %for.end177 ]
  store i32 %79, i32* %nr140, align 4, !dbg !1083, !tbaa !994
  %80 = load [3 x float]** %x142, align 8, !dbg !1084, !tbaa !990
  %81 = bitcast [3 x float]* %80 to i8*, !dbg !1084
  call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 155, i8* %81) #7, !dbg !1084
  %82 = load i32* %nfit, align 4, !dbg !1085, !tbaa !994
  %call189 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 156, i32 %82, i32 12) #7, !dbg !1085
  %83 = bitcast i8* %call189 to [3 x float]*, !dbg !1085
  store [3 x float]* %83, [3 x float]** %x142, align 8, !dbg !1085, !tbaa !990
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !474), !dbg !1086
  %84 = load i32* %nfit, align 4, !dbg !1086, !tbaa !994
  %cmp194446 = icmp sgt i32 %84, 0, !dbg !1086
  br i1 %cmp194446, label %for.body195, label %for.end206, !dbg !1086

for.body195:                                      ; preds = %if.end182, %for.body195
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body195 ], [ 0, %if.end182 ]
  %arraydecay198 = getelementptr inbounds [3 x float]* %67, i64 %indvars.iv, i64 0, !dbg !1088
  %arraydecay203 = getelementptr inbounds [3 x float]* %83, i64 %indvars.iv, i64 0, !dbg !1088
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay198}, i64 0, metadata !1089), !dbg !1090
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay203}, i64 0, metadata !1091), !dbg !1090
  %85 = load float* %arraydecay198, align 4, !dbg !1092, !tbaa !1007
  store float %85, float* %arraydecay203, align 4, !dbg !1092, !tbaa !1007
  %arrayidx2.i442 = getelementptr inbounds [3 x float]* %67, i64 %indvars.iv, i64 1, !dbg !1093
  %86 = load float* %arrayidx2.i442, align 4, !dbg !1093, !tbaa !1007
  %arrayidx3.i443 = getelementptr inbounds [3 x float]* %83, i64 %indvars.iv, i64 1, !dbg !1093
  store float %86, float* %arrayidx3.i443, align 4, !dbg !1093, !tbaa !1007
  %arrayidx4.i444 = getelementptr inbounds [3 x float]* %67, i64 %indvars.iv, i64 2, !dbg !1094
  %87 = load float* %arrayidx4.i444, align 4, !dbg !1094, !tbaa !1007
  %arrayidx5.i445 = getelementptr inbounds [3 x float]* %83, i64 %indvars.iv, i64 2, !dbg !1094
  store float %87, float* %arrayidx5.i445, align 4, !dbg !1094, !tbaa !1007
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1086
  %88 = trunc i64 %indvars.iv.next to i32, !dbg !1086
  %cmp194 = icmp slt i32 %88, %84, !dbg !1086
  br i1 %cmp194, label %for.body195, label %for.end206, !dbg !1086

for.end206:                                       ; preds = %for.body195, %if.end182
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 159, i8* %call147) #7, !dbg !1095
  %89 = load i32* %nr, align 4, !dbg !1096, !tbaa !994
  %call209 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 162, i32 %89, i32 12) #7, !dbg !1096
  %90 = bitcast i8* %call209 to [3 x float]*, !dbg !1096
  call void @llvm.dbg.value(metadata !{[3 x float]* %90}, i64 0, metadata !478), !dbg !1096
  %idef = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, !dbg !1097
  %91 = load i32* %nr, align 4, !dbg !1097, !tbaa !994
  call void @rm_pbc(%struct.t_idef* %idef, i32 %91, [3 x float]* %box, [3 x float]* %x, [3 x float]* %90) #7, !dbg !1097
  %call212 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 166, i32 %3, i32 12) #7, !dbg !1098
  %92 = bitcast i8* %call212 to [3 x float]*, !dbg !1098
  call void @llvm.dbg.value(metadata !{[3 x float]* %92}, i64 0, metadata !479), !dbg !1098
  %arraydecay213 = getelementptr inbounds [3 x [3 x float]]* %rotmat, i64 0, i64 0, !dbg !1099
  %call214 = call float @fitit(i32 %3, [3 x float]* %90, %struct.t_edpar* %edi, [3 x float]* %92, [3 x float]* %arraydecay213) #8, !dbg !1099
  call void @llvm.dbg.value(metadata !{float %call214}, i64 0, metadata !480), !dbg !1099
  %conv = fpext float %call214 to double, !dbg !1100
  %call215 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([52 x i8]* @.str13, i64 0, i64 0), double %conv) #7, !dbg !1100
  call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 169, i8* %call212) #7, !dbg !1101
  call void @project([3 x float]* %90, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #8, !dbg !1102
  %93 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str15, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %log), !dbg !1103
  call void @write_edidx(%struct._IO_FILE* %log, %struct.t_edpar* %edi) #8, !dbg !1104
  %nr217 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 11, i32 0, !dbg !1105
  %94 = load i32* %nr217, align 4, !dbg !1105, !tbaa !994
  %cmp218 = icmp sgt i32 %94, 0, !dbg !1105
  br i1 %cmp218, label %if.then220, label %if.end227, !dbg !1105

if.then220:                                       ; preds = %for.end206
  %x222 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 11, i32 2, !dbg !1106
  %95 = load [3 x float]** %x222, align 8, !dbg !1106, !tbaa !990
  %call224 = call float @fitit(i32 %3, [3 x float]* %95, %struct.t_edpar* %edi, [3 x float]* %92, [3 x float]* %arraydecay213) #8, !dbg !1106
  call void @llvm.dbg.value(metadata !{float %call224}, i64 0, metadata !480), !dbg !1106
  %96 = load [3 x float]** %x222, align 8, !dbg !1108, !tbaa !990
  %radcon = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, !dbg !1108
  call void @projectx(%struct.t_edpar* %edi, [3 x float]* %96, %struct.t_eigvec* %radcon) #8, !dbg !1108
  br label %if.end227, !dbg !1109

if.end227:                                        ; preds = %if.then220, %for.end206
  %nr228 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 12, i32 0, !dbg !1110
  %97 = load i32* %nr228, align 4, !dbg !1110, !tbaa !994
  %cmp229 = icmp sgt i32 %97, 0, !dbg !1110
  br i1 %cmp229, label %if.then231, label %if.else242, !dbg !1110

if.then231:                                       ; preds = %if.end227
  %x233 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 12, i32 2, !dbg !1111
  %98 = load [3 x float]** %x233, align 8, !dbg !1111, !tbaa !990
  %call235 = call float @fitit(i32 %3, [3 x float]* %98, %struct.t_edpar* %edi, [3 x float]* %92, [3 x float]* %arraydecay213) #8, !dbg !1111
  call void @llvm.dbg.value(metadata !{float %call235}, i64 0, metadata !480), !dbg !1111
  %99 = load [3 x float]** %x233, align 8, !dbg !1113, !tbaa !990
  %radacc = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, !dbg !1113
  call void @projectx(%struct.t_edpar* %edi, [3 x float]* %99, %struct.t_eigvec* %radacc) #8, !dbg !1113
  %100 = load [3 x float]** %x233, align 8, !dbg !1114, !tbaa !990
  %radfix = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, !dbg !1114
  call void @projectx(%struct.t_edpar* %edi, [3 x float]* %100, %struct.t_eigvec* %radfix) #8, !dbg !1114
  br label %if.end247, !dbg !1115

if.else242:                                       ; preds = %if.end227
  %radacc244 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, !dbg !1116
  call void @projectx(%struct.t_edpar* %edi, [3 x float]* %90, %struct.t_eigvec* %radacc244) #8, !dbg !1116
  %radfix246 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, !dbg !1118
  call void @projectx(%struct.t_edpar* %edi, [3 x float]* %90, %struct.t_eigvec* %radfix246) #8, !dbg !1118
  br label %if.end247

if.end247:                                        ; preds = %if.else242, %if.then231
  %linacc = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2, !dbg !1119
  call void @projectx(%struct.t_edpar* %edi, [3 x float]* %90, %struct.t_eigvec* %linacc) #8, !dbg !1119
  %linfix = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1, !dbg !1120
  call void @projectx(%struct.t_edpar* %edi, [3 x float]* %90, %struct.t_eigvec* %linfix) #8, !dbg !1120
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 196, i8* %call209) #7, !dbg !1121
  %radius = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 8, !dbg !1122
  %101 = load float* %radius, align 4, !dbg !1122, !tbaa !1007
  %conv252 = fpext float %101 to double, !dbg !1122
  %call253 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([35 x i8]* @.str16, i64 0, i64 0), double %conv252) #7, !dbg !1122
  %radius256 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 8, !dbg !1123
  %102 = load float* %radius256, align 4, !dbg !1123, !tbaa !1007
  %conv257 = fpext float %102 to double, !dbg !1123
  %call258 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([35 x i8]* @.str17, i64 0, i64 0), double %conv257) #7, !dbg !1123
  %radius261 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 8, !dbg !1124
  %103 = load float* %radius261, align 4, !dbg !1124, !tbaa !1007
  %conv262 = fpext float %103 to double, !dbg !1124
  %call263 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([35 x i8]* @.str18, i64 0, i64 0), double %conv262) #7, !dbg !1124
  %call264 = call i32 @fflush(%struct._IO_FILE* %log) #7, !dbg !1125
  %edonam = getelementptr inbounds %struct.t_edsamyn* %edyn, i64 0, i32 2, !dbg !1126
  %104 = load i8** %edonam, align 8, !dbg !1126, !tbaa !990
  %call265 = call %struct._IO_FILE* @ffopen(i8* %104, i8* getelementptr inbounds ([2 x i8]* @.str19, i64 0, i64 0)) #7, !dbg !1126
  %edo = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 19, !dbg !1126
  store %struct._IO_FILE* %call265, %struct._IO_FILE** %edo, align 8, !dbg !1126, !tbaa !990
  call void @write_edidx(%struct._IO_FILE* %call265, %struct.t_edpar* %edi) #8, !dbg !1127
  call void @llvm.lifetime.end(i64 36, i8* %0) #4, !dbg !1128
  ret void, !dbg !1128
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define void @read_edi(%struct.t_edsamyn* nocapture %edyn, %struct.t_edpar* %edi, i32 %nr_mdatoms) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_edsamyn* %edyn}, i64 0, metadata !486), !dbg !1129
  tail call void @llvm.dbg.value(metadata !{%struct.t_edpar* %edi}, i64 0, metadata !487), !dbg !1129
  tail call void @llvm.dbg.value(metadata !{i32 %nr_mdatoms}, i64 0, metadata !488), !dbg !1129
  tail call void @llvm.dbg.value(metadata !1130, i64 0, metadata !493), !dbg !1131
  %edinam = getelementptr inbounds %struct.t_edsamyn* %edyn, i64 0, i32 1, !dbg !1132
  %0 = load i8** %edinam, align 8, !dbg !1132, !tbaa !990
  %call = tail call %struct._IO_FILE* @ffopen(i8* %0, i8* getelementptr inbounds ([2 x i8]* @.str20, i64 0, i64 0)) #7, !dbg !1132
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !489), !dbg !1132
  %call1 = tail call i32 @read_edint(%struct._IO_FILE* %call) #8, !dbg !1133
  tail call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !494), !dbg !1133
  %cmp = icmp eq i32 %call1, 666, !dbg !1134
  br i1 %cmp, label %if.end, label %if.then, !dbg !1134

if.then:                                          ; preds = %entry
  %1 = load i8** %edinam, align 8, !dbg !1135, !tbaa !990
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([25 x i8]* @.str21, i64 0, i64 0), i8* %1) #7, !dbg !1135
  br label %if.end, !dbg !1135

if.end:                                           ; preds = %entry, %if.then
  %call3 = tail call i32 @read_edint(%struct._IO_FILE* %call) #8, !dbg !1136
  %nini = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 0, !dbg !1136
  store i32 %call3, i32* %nini, align 4, !dbg !1136, !tbaa !994
  %cmp5 = icmp eq i32 %call3, %nr_mdatoms, !dbg !1137
  br i1 %cmp5, label %if.end9, label %if.then6, !dbg !1137

if.then6:                                         ; preds = %if.end
  %2 = load i8** %edinam, align 8, !dbg !1138, !tbaa !990
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([58 x i8]* @.str22, i64 0, i64 0), i8* %2, i32 %call3, i32 %nr_mdatoms) #7, !dbg !1138
  br label %if.end9, !dbg !1138

if.end9:                                          ; preds = %if.end, %if.then6
  %call10 = tail call i32 @read_edint(%struct._IO_FILE* %call) #8, !dbg !1139
  %npro = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 1, !dbg !1139
  store i32 %call10, i32* %npro, align 4, !dbg !1139, !tbaa !994
  %call11 = tail call i32 @read_edint(%struct._IO_FILE* %call) #8, !dbg !1140
  tail call void @llvm.dbg.value(metadata !{i32 %call11}, i64 0, metadata !492), !dbg !1140
  %selmas = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 3, !dbg !1141
  %not.cmp12 = icmp ne i32 %call11, 0, !dbg !1141
  %. = zext i1 %not.cmp12 to i32, !dbg !1141
  store i32 %., i32* %selmas, align 4, !dbg !1141, !tbaa !994
  %call16 = tail call i32 @read_edint(%struct._IO_FILE* %call) #8, !dbg !1142
  %outfrq = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 4, !dbg !1142
  store i32 %call16, i32* %outfrq, align 4, !dbg !1142, !tbaa !994
  %call17 = tail call i32 @read_edint(%struct._IO_FILE* %call) #8, !dbg !1143
  %logfrq = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 5, !dbg !1143
  store i32 %call17, i32* %logfrq, align 4, !dbg !1143, !tbaa !994
  %call18 = tail call i32 @read_edint(%struct._IO_FILE* %call) #8, !dbg !1144
  %maxedsteps = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 6, !dbg !1144
  store i32 %call18, i32* %maxedsteps, align 4, !dbg !1144, !tbaa !994
  %call19 = tail call float @read_edreal(%struct._IO_FILE* %call) #8, !dbg !1145
  %slope = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 10, !dbg !1145
  store float %call19, float* %slope, align 4, !dbg !1145, !tbaa !1007
  %call20 = tail call i32 @read_edint(%struct._IO_FILE* %call) #8, !dbg !1146
  %nr = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 0, !dbg !1146
  store i32 %call20, i32* %nr, align 4, !dbg !1146, !tbaa !994
  %call23 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 242, i32 %call20, i32 4) #7, !dbg !1147
  %3 = bitcast i8* %call23 to i32*, !dbg !1147
  %anrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 1, !dbg !1147
  store i32* %3, i32** %anrs, align 8, !dbg !1147, !tbaa !990
  %4 = load i32* %nr, align 4, !dbg !1148, !tbaa !994
  %call27 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 243, i32 %4, i32 12) #7, !dbg !1148
  %5 = bitcast i8* %call27 to [3 x float]*, !dbg !1148
  %x = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 2, !dbg !1148
  store [3 x float]* %5, [3 x float]** %x, align 8, !dbg !1148, !tbaa !990
  %6 = load i32* %nr, align 4, !dbg !1149, !tbaa !994
  %7 = load i32** %anrs, align 8, !dbg !1149, !tbaa !990
  tail call void @read_edx(%struct._IO_FILE* %call, i32 %6, i32* %7, [3 x float]* %5) #8, !dbg !1149
  %call35 = tail call i32 @read_edint(%struct._IO_FILE* %call) #8, !dbg !1150
  %nr36 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0, !dbg !1150
  store i32 %call35, i32* %nr36, align 4, !dbg !1150, !tbaa !994
  %call39 = tail call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 248, i32 %call35, i32 4) #7, !dbg !1151
  %8 = bitcast i8* %call39 to i32*, !dbg !1151
  %anrs41 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1, !dbg !1151
  store i32* %8, i32** %anrs41, align 8, !dbg !1151, !tbaa !990
  %9 = load i32* %nr36, align 4, !dbg !1152, !tbaa !994
  %call44 = tail call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 249, i32 %9, i32 12) #7, !dbg !1152
  %10 = bitcast i8* %call44 to [3 x float]*, !dbg !1152
  %x46 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 2, !dbg !1152
  store [3 x float]* %10, [3 x float]** %x46, align 8, !dbg !1152, !tbaa !990
  %11 = load i32* %nr36, align 4, !dbg !1153, !tbaa !994
  %12 = load i32** %anrs41, align 8, !dbg !1153, !tbaa !990
  tail call void @read_edx(%struct._IO_FILE* %call, i32 %11, i32* %12, [3 x float]* %10) #8, !dbg !1153
  %call53 = tail call i32 @read_edint(%struct._IO_FILE* %call) #8, !dbg !1154
  %ned = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 2, !dbg !1154
  store i32 %call53, i32* %ned, align 4, !dbg !1154, !tbaa !994
  %13 = load i32* %nr36, align 4, !dbg !1155, !tbaa !994
  %vecs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, !dbg !1155
  tail call void @read_edvecs(%struct._IO_FILE* %call, i32 %13, %struct.t_edvecs* %vecs) #8, !dbg !1155
  %call56 = tail call i32 @read_edint(%struct._IO_FILE* %call) #8, !dbg !1156
  %nr57 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 11, i32 0, !dbg !1156
  store i32 %call56, i32* %nr57, align 4, !dbg !1156, !tbaa !994
  %cmp60 = icmp sgt i32 %call56, 0, !dbg !1157
  br i1 %cmp60, label %if.then61, label %if.end93, !dbg !1157

if.then61:                                        ; preds = %if.end9
  %call64 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 261, i32 %call56, i32 4) #7, !dbg !1158
  %14 = bitcast i8* %call64 to i32*, !dbg !1158
  %anrs66 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 11, i32 1, !dbg !1158
  store i32* %14, i32** %anrs66, align 8, !dbg !1158, !tbaa !990
  %15 = load i32* %nr57, align 4, !dbg !1160, !tbaa !994
  %call69 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 262, i32 %15, i32 12) #7, !dbg !1160
  %16 = bitcast i8* %call69 to [3 x float]*, !dbg !1160
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %16}, i64 0, metadata !495), !dbg !1160
  %17 = load i32* %nr57, align 4, !dbg !1161, !tbaa !994
  %18 = load i32** %anrs66, align 8, !dbg !1161, !tbaa !990
  tail call void @read_edx(%struct._IO_FILE* %call, i32 %17, i32* %18, [3 x float]* %16) #8, !dbg !1161
  %19 = load i32* %ned, align 4, !dbg !1162, !tbaa !994
  %call75 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 264, i32 %19, i32 12) #7, !dbg !1162
  %20 = bitcast i8* %call75 to [3 x float]*, !dbg !1162
  %x77 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 11, i32 2, !dbg !1162
  store [3 x float]* %20, [3 x float]** %x77, align 8, !dbg !1162, !tbaa !990
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !491), !dbg !1163
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !490), !dbg !1164
  %21 = load i32* %ned, align 4, !dbg !1164, !tbaa !994
  %cmp79236 = icmp sgt i32 %21, 0, !dbg !1164
  br i1 %cmp79236, label %for.body.lr.ph, label %for.end, !dbg !1164

for.body.lr.ph:                                   ; preds = %if.then61
  %22 = load i32** %anrs66, align 8, !dbg !1166, !tbaa !990
  br label %for.body, !dbg !1164

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv239 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next240, %for.inc ]
  %j.0237 = phi i32 [ 0, %for.body.lr.ph ], [ %j.1, %for.inc ]
  %idxprom = sext i32 %j.0237 to i64, !dbg !1166
  %arrayidx = getelementptr inbounds i32* %22, i64 %idxprom, !dbg !1166
  %23 = load i32* %arrayidx, align 4, !dbg !1166, !tbaa !994
  %24 = trunc i64 %indvars.iv239 to i32, !dbg !1166
  %cmp82 = icmp eq i32 %23, %24, !dbg !1166
  br i1 %cmp82, label %if.then83, label %for.inc, !dbg !1166

if.then83:                                        ; preds = %for.body
  %arraydecay = getelementptr inbounds [3 x float]* %16, i64 %idxprom, i64 0, !dbg !1168
  %arraydecay90 = getelementptr inbounds [3 x float]* %20, i64 %indvars.iv239, i64 0, !dbg !1168
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !1170), !dbg !1171
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay90}, i64 0, metadata !1172), !dbg !1171
  %25 = load float* %arraydecay, align 4, !dbg !1173, !tbaa !1007
  store float %25, float* %arraydecay90, align 4, !dbg !1173, !tbaa !1007
  %arrayidx2.i = getelementptr inbounds [3 x float]* %16, i64 %idxprom, i64 1, !dbg !1174
  %26 = load float* %arrayidx2.i, align 4, !dbg !1174, !tbaa !1007
  %arrayidx3.i = getelementptr inbounds [3 x float]* %20, i64 %indvars.iv239, i64 1, !dbg !1174
  store float %26, float* %arrayidx3.i, align 4, !dbg !1174, !tbaa !1007
  %arrayidx4.i = getelementptr inbounds [3 x float]* %16, i64 %idxprom, i64 2, !dbg !1175
  %27 = load float* %arrayidx4.i, align 4, !dbg !1175, !tbaa !1007
  %arrayidx5.i = getelementptr inbounds [3 x float]* %20, i64 %indvars.iv239, i64 2, !dbg !1175
  store float %27, float* %arrayidx5.i, align 4, !dbg !1175, !tbaa !1007
  %inc = add nsw i32 %j.0237, 1, !dbg !1176
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !491), !dbg !1176
  br label %for.inc, !dbg !1177

for.inc:                                          ; preds = %for.body, %if.then83
  %j.1 = phi i32 [ %inc, %if.then83 ], [ %j.0237, %for.body ]
  %indvars.iv.next240 = add i64 %indvars.iv239, 1, !dbg !1164
  %28 = trunc i64 %indvars.iv.next240 to i32, !dbg !1164
  %cmp79 = icmp slt i32 %28, %21, !dbg !1164
  br i1 %cmp79, label %for.body, label %for.end, !dbg !1164

for.end:                                          ; preds = %for.inc, %if.then61
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 272, i8* %call69) #7, !dbg !1178
  br label %if.end93, !dbg !1179

if.end93:                                         ; preds = %for.end, %if.end9
  %call94 = tail call i32 @read_edint(%struct._IO_FILE* %call) #8, !dbg !1180
  %nr95 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 12, i32 0, !dbg !1180
  store i32 %call94, i32* %nr95, align 4, !dbg !1180, !tbaa !994
  %cmp98 = icmp sgt i32 %call94, 0, !dbg !1181
  br i1 %cmp98, label %if.then99, label %if.end139, !dbg !1181

if.then99:                                        ; preds = %if.end93
  %call102 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 278, i32 %call94, i32 4) #7, !dbg !1182
  %29 = bitcast i8* %call102 to i32*, !dbg !1182
  %anrs104 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 12, i32 1, !dbg !1182
  store i32* %29, i32** %anrs104, align 8, !dbg !1182, !tbaa !990
  %30 = load i32* %nr95, align 4, !dbg !1184, !tbaa !994
  %call107 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 279, i32 %30, i32 12) #7, !dbg !1184
  %31 = bitcast i8* %call107 to [3 x float]*, !dbg !1184
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %31}, i64 0, metadata !495), !dbg !1184
  %32 = load i32* %nr95, align 4, !dbg !1185, !tbaa !994
  %33 = load i32** %anrs104, align 8, !dbg !1185, !tbaa !990
  tail call void @read_edx(%struct._IO_FILE* %call, i32 %32, i32* %33, [3 x float]* %31) #8, !dbg !1185
  %34 = load i32* %ned, align 4, !dbg !1186, !tbaa !994
  %call113 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 281, i32 %34, i32 12) #7, !dbg !1186
  %35 = bitcast i8* %call113 to [3 x float]*, !dbg !1186
  %x115 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 12, i32 2, !dbg !1186
  store [3 x float]* %35, [3 x float]** %x115, align 8, !dbg !1186, !tbaa !990
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !491), !dbg !1187
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !490), !dbg !1188
  %36 = load i32* %ned, align 4, !dbg !1188, !tbaa !994
  %cmp118233 = icmp sgt i32 %36, 0, !dbg !1188
  br i1 %cmp118233, label %for.body119.lr.ph, label %for.end138, !dbg !1188

for.body119.lr.ph:                                ; preds = %if.then99
  %37 = load i32** %anrs104, align 8, !dbg !1190, !tbaa !990
  br label %for.body119, !dbg !1188

for.body119:                                      ; preds = %for.body119.lr.ph, %for.inc136
  %indvars.iv = phi i64 [ 0, %for.body119.lr.ph ], [ %indvars.iv.next, %for.inc136 ]
  %j.2234 = phi i32 [ 0, %for.body119.lr.ph ], [ %j.3, %for.inc136 ]
  %idxprom120 = sext i32 %j.2234 to i64, !dbg !1190
  %arrayidx123 = getelementptr inbounds i32* %37, i64 %idxprom120, !dbg !1190
  %38 = load i32* %arrayidx123, align 4, !dbg !1190, !tbaa !994
  %39 = trunc i64 %indvars.iv to i32, !dbg !1190
  %cmp124 = icmp eq i32 %38, %39, !dbg !1190
  br i1 %cmp124, label %if.then125, label %for.inc136, !dbg !1190

if.then125:                                       ; preds = %for.body119
  %arraydecay128 = getelementptr inbounds [3 x float]* %31, i64 %idxprom120, i64 0, !dbg !1192
  %arraydecay133 = getelementptr inbounds [3 x float]* %35, i64 %indvars.iv, i64 0, !dbg !1192
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay128}, i64 0, metadata !1194), !dbg !1195
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay133}, i64 0, metadata !1196), !dbg !1195
  %40 = load float* %arraydecay128, align 4, !dbg !1197, !tbaa !1007
  store float %40, float* %arraydecay133, align 4, !dbg !1197, !tbaa !1007
  %arrayidx2.i229 = getelementptr inbounds [3 x float]* %31, i64 %idxprom120, i64 1, !dbg !1198
  %41 = load float* %arrayidx2.i229, align 4, !dbg !1198, !tbaa !1007
  %arrayidx3.i230 = getelementptr inbounds [3 x float]* %35, i64 %indvars.iv, i64 1, !dbg !1198
  store float %41, float* %arrayidx3.i230, align 4, !dbg !1198, !tbaa !1007
  %arrayidx4.i231 = getelementptr inbounds [3 x float]* %31, i64 %idxprom120, i64 2, !dbg !1199
  %42 = load float* %arrayidx4.i231, align 4, !dbg !1199, !tbaa !1007
  %arrayidx5.i232 = getelementptr inbounds [3 x float]* %35, i64 %indvars.iv, i64 2, !dbg !1199
  store float %42, float* %arrayidx5.i232, align 4, !dbg !1199, !tbaa !1007
  %inc134 = add nsw i32 %j.2234, 1, !dbg !1200
  tail call void @llvm.dbg.value(metadata !{i32 %inc134}, i64 0, metadata !491), !dbg !1200
  br label %for.inc136, !dbg !1201

for.inc136:                                       ; preds = %for.body119, %if.then125
  %j.3 = phi i32 [ %inc134, %if.then125 ], [ %j.2234, %for.body119 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1188
  %43 = trunc i64 %indvars.iv.next to i32, !dbg !1188
  %cmp118 = icmp slt i32 %43, %36, !dbg !1188
  br i1 %cmp118, label %for.body119, label %for.end138, !dbg !1188

for.end138:                                       ; preds = %for.inc136, %if.then99
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 289, i8* %call107) #7, !dbg !1202
  br label %if.end139, !dbg !1203

if.end139:                                        ; preds = %for.end138, %if.end93
  tail call void @ffclose(%struct._IO_FILE* %call) #7, !dbg !1204
  ret void, !dbg !1205
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define void @put_in_origin(i32 %nr, [3 x float]* nocapture %x, i32 %nmass, i32* nocapture %masnrs, float* nocapture %mass, float %tmass) #0 {
entry:
  %cm = alloca [3 x float], align 4
  %cm79 = bitcast [3 x float]* %cm to i8*
  call void @llvm.dbg.value(metadata !{i32 %nr}, i64 0, metadata !610), !dbg !1206
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !611), !dbg !1206
  call void @llvm.dbg.value(metadata !{i32 %nmass}, i64 0, metadata !612), !dbg !1206
  call void @llvm.dbg.value(metadata !{i32* %masnrs}, i64 0, metadata !613), !dbg !1206
  call void @llvm.dbg.value(metadata !{float* %mass}, i64 0, metadata !614), !dbg !1206
  call void @llvm.dbg.value(metadata !{float %tmass}, i64 0, metadata !615), !dbg !1206
  call void @llvm.dbg.declare(metadata !{[3 x float]* %cm}, metadata !618), !dbg !1207
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !616), !dbg !1208
  call void @llvm.memset.p0i8.i64(i8* %cm79, i8 0, i64 12, i32 4, i1 false), !dbg !1210
  %cmp260 = icmp sgt i32 %nmass, 0, !dbg !1211
  br i1 %cmp260, label %for.cond4.preheader, label %for.body25, !dbg !1211

for.cond4.preheader:                              ; preds = %entry, %for.inc20
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.inc20 ], [ 0, %entry ]
  %arrayidx9 = getelementptr inbounds i32* %masnrs, i64 %indvars.iv71, !dbg !1213
  %0 = load i32* %arrayidx9, align 4, !dbg !1213, !tbaa !994
  %idxprom10 = sext i32 %0 to i64, !dbg !1213
  %arrayidx14 = getelementptr inbounds float* %mass, i64 %indvars.iv71, !dbg !1213
  %1 = load float* %arrayidx14, align 4, !dbg !1213, !tbaa !1007
  br label %for.body6, !dbg !1216

for.body6:                                        ; preds = %for.body6, %for.cond4.preheader
  %indvars.iv67 = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next68, %for.body6 ]
  %arrayidx12 = getelementptr inbounds [3 x float]* %x, i64 %idxprom10, i64 %indvars.iv67, !dbg !1213
  %2 = load float* %arrayidx12, align 4, !dbg !1213, !tbaa !1007
  %mul = fmul float %2, %1, !dbg !1213
  %arrayidx16 = getelementptr inbounds [3 x float]* %cm, i64 0, i64 %indvars.iv67, !dbg !1213
  %3 = load float* %arrayidx16, align 4, !dbg !1213, !tbaa !1007
  %add = fadd float %3, %mul, !dbg !1213
  store float %add, float* %arrayidx16, align 4, !dbg !1213, !tbaa !1007
  %indvars.iv.next68 = add i64 %indvars.iv67, 1, !dbg !1216
  %lftr.wideiv69 = trunc i64 %indvars.iv.next68 to i32, !dbg !1216
  %exitcond70 = icmp eq i32 %lftr.wideiv69, 3, !dbg !1216
  br i1 %exitcond70, label %for.inc20, label %for.body6, !dbg !1216

for.inc20:                                        ; preds = %for.body6
  %indvars.iv.next72 = add i64 %indvars.iv71, 1, !dbg !1211
  %lftr.wideiv73 = trunc i64 %indvars.iv.next72 to i32, !dbg !1211
  %exitcond74 = icmp eq i32 %lftr.wideiv73, %nmass, !dbg !1211
  br i1 %exitcond74, label %for.body25, label %for.cond4.preheader, !dbg !1211

for.cond31.preheader:                             ; preds = %for.body25
  %cmp3256 = icmp sgt i32 %nr, 0, !dbg !1217
  br i1 %cmp3256, label %for.body33.lr.ph, label %for.end39, !dbg !1217

for.body33.lr.ph:                                 ; preds = %for.cond31.preheader
  %arraydecay36 = getelementptr inbounds [3 x float]* %cm, i64 0, i64 0, !dbg !1219
  %4 = load float* %arraydecay36, align 4, !dbg !1220, !tbaa !1007
  %arrayidx3.i = getelementptr inbounds [3 x float]* %cm, i64 0, i64 1, !dbg !1221
  %5 = load float* %arrayidx3.i, align 4, !dbg !1221, !tbaa !1007
  %arrayidx6.i = getelementptr inbounds [3 x float]* %cm, i64 0, i64 2, !dbg !1222
  %6 = load float* %arrayidx6.i, align 4, !dbg !1222, !tbaa !1007
  br label %for.body33, !dbg !1217

for.body25:                                       ; preds = %for.body25, %entry, %for.inc20
  %indvars.iv63 = phi i64 [ 0, %for.inc20 ], [ 0, %entry ], [ %indvars.iv.next64, %for.body25 ]
  %arrayidx27 = getelementptr inbounds [3 x float]* %cm, i64 0, i64 %indvars.iv63, !dbg !1223
  %7 = load float* %arrayidx27, align 4, !dbg !1223, !tbaa !1007
  %div = fdiv float %7, %tmass, !dbg !1223
  store float %div, float* %arrayidx27, align 4, !dbg !1223, !tbaa !1007
  %indvars.iv.next64 = add i64 %indvars.iv63, 1, !dbg !1225
  %lftr.wideiv65 = trunc i64 %indvars.iv.next64 to i32, !dbg !1225
  %exitcond66 = icmp eq i32 %lftr.wideiv65, 3, !dbg !1225
  br i1 %exitcond66, label %for.cond31.preheader, label %for.body25, !dbg !1225

for.body33:                                       ; preds = %for.body33, %for.body33.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body33.lr.ph ], [ %indvars.iv.next, %for.body33 ]
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0, !dbg !1219
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !1226), !dbg !1227
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay36}, i64 0, metadata !1228), !dbg !1227
  %8 = load float* %arraydecay, align 4, !dbg !1220, !tbaa !1007
  %sub.i = fsub float %8, %4, !dbg !1220
  tail call void @llvm.dbg.value(metadata !{float %sub.i}, i64 0, metadata !1229), !dbg !1220
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1, !dbg !1221
  %9 = load float* %arrayidx2.i, align 4, !dbg !1221, !tbaa !1007
  %sub4.i = fsub float %9, %5, !dbg !1221
  tail call void @llvm.dbg.value(metadata !{float %sub4.i}, i64 0, metadata !1230), !dbg !1221
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2, !dbg !1222
  %10 = load float* %arrayidx5.i, align 4, !dbg !1222, !tbaa !1007
  %sub7.i = fsub float %10, %6, !dbg !1222
  tail call void @llvm.dbg.value(metadata !{float %sub7.i}, i64 0, metadata !1231), !dbg !1222
  store float %sub.i, float* %arraydecay, align 4, !dbg !1232, !tbaa !1007
  store float %sub4.i, float* %arrayidx2.i, align 4, !dbg !1233, !tbaa !1007
  store float %sub7.i, float* %arrayidx5.i, align 4, !dbg !1234, !tbaa !1007
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1217
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1217
  %exitcond = icmp eq i32 %lftr.wideiv, %nr, !dbg !1217
  br i1 %exitcond, label %for.end39, label %for.body33, !dbg !1217

for.end39:                                        ; preds = %for.body33, %for.cond31.preheader
  ret void, !dbg !1235
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #3

; Function Attrs: optsize
declare void @rm_pbc(%struct.t_idef*, i32, [3 x float]*, [3 x float]*, [3 x float]*) #3

; Function Attrs: nounwind optsize uwtable
define float @fitit(i32 %nr, [3 x float]* nocapture %x, %struct.t_edpar* nocapture %edi, [3 x float]* nocapture %transvec, [3 x float]* nocapture %rmat) #0 {
entry:
  %x_old = alloca [3 x float], align 4
  %x_old215 = bitcast [3 x float]* %x_old to i8*
  call void @llvm.dbg.value(metadata !{i32 %nr}, i64 0, metadata !568), !dbg !1236
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !569), !dbg !1236
  call void @llvm.dbg.value(metadata !{%struct.t_edpar* %edi}, i64 0, metadata !570), !dbg !1236
  call void @llvm.dbg.value(metadata !{[3 x float]* %transvec}, i64 0, metadata !571), !dbg !1236
  call void @llvm.dbg.value(metadata !{[3 x float]* %rmat}, i64 0, metadata !572), !dbg !1236
  call void @llvm.dbg.declare(metadata !{[3 x float]* %x_old}, metadata !574), !dbg !1237
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 400, i32 %nr, i32 12) #7, !dbg !1238
  %0 = bitcast i8* %call to [3 x float]*, !dbg !1238
  call void @llvm.dbg.value(metadata !{[3 x float]* %0}, i64 0, metadata !573), !dbg !1238
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !575), !dbg !1239
  %cmp207 = icmp sgt i32 %nr, 0, !dbg !1239
  br i1 %cmp207, label %for.body, label %for.end18.critedge, !dbg !1239

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv237 = phi i64 [ %indvars.iv.next238, %for.body ], [ 0, %entry ]
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv237, i64 0, !dbg !1241
  %arraydecay3 = getelementptr inbounds [3 x float]* %0, i64 %indvars.iv237, i64 0, !dbg !1241
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !1242), !dbg !1243
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay3}, i64 0, metadata !1244), !dbg !1243
  %1 = load float* %arraydecay, align 4, !dbg !1245, !tbaa !1007
  store float %1, float* %arraydecay3, align 4, !dbg !1245, !tbaa !1007
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv237, i64 1, !dbg !1246
  %2 = load float* %arrayidx2.i, align 4, !dbg !1246, !tbaa !1007
  %arrayidx3.i = getelementptr inbounds [3 x float]* %0, i64 %indvars.iv237, i64 1, !dbg !1246
  store float %2, float* %arrayidx3.i, align 4, !dbg !1246, !tbaa !1007
  %arrayidx4.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv237, i64 2, !dbg !1247
  %3 = load float* %arrayidx4.i, align 4, !dbg !1247, !tbaa !1007
  %arrayidx5.i = getelementptr inbounds [3 x float]* %0, i64 %indvars.iv237, i64 2, !dbg !1247
  store float %3, float* %arrayidx5.i, align 4, !dbg !1247, !tbaa !1007
  %indvars.iv.next238 = add i64 %indvars.iv237, 1, !dbg !1239
  %lftr.wideiv239 = trunc i64 %indvars.iv.next238 to i32, !dbg !1239
  %exitcond240 = icmp eq i32 %lftr.wideiv239, %nr, !dbg !1239
  br i1 %exitcond240, label %for.end, label %for.body, !dbg !1239

for.end:                                          ; preds = %for.body
  %nmass = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 13, !dbg !1248
  %4 = load i32* %nmass, align 4, !dbg !1248, !tbaa !994
  %masnrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 14, !dbg !1248
  %5 = load i32** %masnrs, align 8, !dbg !1248, !tbaa !990
  %mass = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 15, !dbg !1248
  %6 = load float** %mass, align 8, !dbg !1248, !tbaa !990
  %tmass = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 16, !dbg !1248
  %7 = load float* %tmass, align 4, !dbg !1248, !tbaa !1007
  call void @put_in_origin(i32 %nr, [3 x float]* %x, i32 %4, i32* %5, float* %6, float %7) #8, !dbg !1248
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !575), !dbg !1249
  br i1 %cmp207, label %for.body6, label %for.end18, !dbg !1249

for.body6:                                        ; preds = %for.end, %for.body6
  %indvars.iv233 = phi i64 [ %indvars.iv.next234, %for.body6 ], [ 0, %for.end ]
  %arraydecay9 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv233, i64 0, !dbg !1251
  %arraydecay12 = getelementptr inbounds [3 x float]* %0, i64 %indvars.iv233, i64 0, !dbg !1251
  %arraydecay15 = getelementptr inbounds [3 x float]* %transvec, i64 %indvars.iv233, i64 0, !dbg !1251
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay9}, i64 0, metadata !1252), !dbg !1253
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay12}, i64 0, metadata !1254), !dbg !1253
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay15}, i64 0, metadata !1255), !dbg !1253
  %8 = load float* %arraydecay9, align 4, !dbg !1256, !tbaa !1007
  %9 = load float* %arraydecay12, align 4, !dbg !1256, !tbaa !1007
  %sub.i = fsub float %8, %9, !dbg !1256
  tail call void @llvm.dbg.value(metadata !{float %sub.i}, i64 0, metadata !1257), !dbg !1256
  %arrayidx2.i183 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv233, i64 1, !dbg !1258
  %10 = load float* %arrayidx2.i183, align 4, !dbg !1258, !tbaa !1007
  %arrayidx3.i184 = getelementptr inbounds [3 x float]* %0, i64 %indvars.iv233, i64 1, !dbg !1258
  %11 = load float* %arrayidx3.i184, align 4, !dbg !1258, !tbaa !1007
  %sub4.i = fsub float %10, %11, !dbg !1258
  tail call void @llvm.dbg.value(metadata !{float %sub4.i}, i64 0, metadata !1259), !dbg !1258
  %arrayidx5.i185 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv233, i64 2, !dbg !1260
  %12 = load float* %arrayidx5.i185, align 4, !dbg !1260, !tbaa !1007
  %arrayidx6.i = getelementptr inbounds [3 x float]* %0, i64 %indvars.iv233, i64 2, !dbg !1260
  %13 = load float* %arrayidx6.i, align 4, !dbg !1260, !tbaa !1007
  %sub7.i = fsub float %12, %13, !dbg !1260
  tail call void @llvm.dbg.value(metadata !{float %sub7.i}, i64 0, metadata !1261), !dbg !1260
  store float %sub.i, float* %arraydecay15, align 4, !dbg !1262, !tbaa !1007
  %arrayidx9.i = getelementptr inbounds [3 x float]* %transvec, i64 %indvars.iv233, i64 1, !dbg !1263
  store float %sub4.i, float* %arrayidx9.i, align 4, !dbg !1263, !tbaa !1007
  %arrayidx10.i = getelementptr inbounds [3 x float]* %transvec, i64 %indvars.iv233, i64 2, !dbg !1264
  store float %sub7.i, float* %arrayidx10.i, align 4, !dbg !1264, !tbaa !1007
  %indvars.iv.next234 = add i64 %indvars.iv233, 1, !dbg !1249
  %lftr.wideiv235 = trunc i64 %indvars.iv.next234 to i32, !dbg !1249
  %exitcond236 = icmp eq i32 %lftr.wideiv235, %nr, !dbg !1249
  br i1 %exitcond236, label %for.end18, label %for.body6, !dbg !1249

for.end18.critedge:                               ; preds = %entry
  %nmass.c = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 13, !dbg !1248
  %14 = load i32* %nmass.c, align 4, !dbg !1248, !tbaa !994
  %masnrs.c = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 14, !dbg !1248
  %15 = load i32** %masnrs.c, align 8, !dbg !1248, !tbaa !990
  %mass.c = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 15, !dbg !1248
  %16 = load float** %mass.c, align 8, !dbg !1248, !tbaa !990
  %tmass.c = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 16, !dbg !1248
  %17 = load float* %tmass.c, align 4, !dbg !1248, !tbaa !1007
  call void @put_in_origin(i32 %nr, [3 x float]* %x, i32 %14, i32* %15, float* %16, float %17) #8, !dbg !1248
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !575), !dbg !1249
  br label %for.end18

for.end18:                                        ; preds = %for.end18.critedge, %for.body6, %for.end
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 408, i8* %call) #7, !dbg !1265
  %nfit = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 17, !dbg !1266
  %18 = load i32* %nfit, align 4, !dbg !1266, !tbaa !994
  %call19 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 411, i32 %18, i32 12) #7, !dbg !1266
  %19 = bitcast i8* %call19 to [3 x float]*, !dbg !1266
  call void @llvm.dbg.value(metadata !{[3 x float]* %19}, i64 0, metadata !573), !dbg !1266
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !575), !dbg !1267
  %20 = load i32* %nfit, align 4, !dbg !1267, !tbaa !994
  %cmp22202 = icmp sgt i32 %20, 0, !dbg !1267
  br i1 %cmp22202, label %for.body23.lr.ph, label %for.end34, !dbg !1267

for.body23.lr.ph:                                 ; preds = %for.end18
  %fitnrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 18, !dbg !1269
  %21 = load i32** %fitnrs, align 8, !dbg !1269, !tbaa !990
  br label %for.body23, !dbg !1267

for.body23:                                       ; preds = %for.body23.lr.ph, %for.body23
  %indvars.iv231 = phi i64 [ 0, %for.body23.lr.ph ], [ %indvars.iv.next232, %for.body23 ]
  %arrayidx25 = getelementptr inbounds i32* %21, i64 %indvars.iv231, !dbg !1269
  %22 = load i32* %arrayidx25, align 4, !dbg !1269, !tbaa !994
  %idxprom26 = sext i32 %22 to i64, !dbg !1269
  %arraydecay28 = getelementptr inbounds [3 x float]* %x, i64 %idxprom26, i64 0, !dbg !1269
  %arraydecay31 = getelementptr inbounds [3 x float]* %19, i64 %indvars.iv231, i64 0, !dbg !1269
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay28}, i64 0, metadata !1270), !dbg !1271
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay31}, i64 0, metadata !1272), !dbg !1271
  %23 = load float* %arraydecay28, align 4, !dbg !1273, !tbaa !1007
  store float %23, float* %arraydecay31, align 4, !dbg !1273, !tbaa !1007
  %arrayidx2.i186 = getelementptr inbounds [3 x float]* %x, i64 %idxprom26, i64 1, !dbg !1274
  %24 = load float* %arrayidx2.i186, align 4, !dbg !1274, !tbaa !1007
  %arrayidx3.i187 = getelementptr inbounds [3 x float]* %19, i64 %indvars.iv231, i64 1, !dbg !1274
  store float %24, float* %arrayidx3.i187, align 4, !dbg !1274, !tbaa !1007
  %arrayidx4.i188 = getelementptr inbounds [3 x float]* %x, i64 %idxprom26, i64 2, !dbg !1275
  %25 = load float* %arrayidx4.i188, align 4, !dbg !1275, !tbaa !1007
  %arrayidx5.i189 = getelementptr inbounds [3 x float]* %19, i64 %indvars.iv231, i64 2, !dbg !1275
  store float %25, float* %arrayidx5.i189, align 4, !dbg !1275, !tbaa !1007
  %indvars.iv.next232 = add i64 %indvars.iv231, 1, !dbg !1267
  %26 = trunc i64 %indvars.iv.next232 to i32, !dbg !1267
  %cmp22 = icmp slt i32 %26, %20, !dbg !1267
  br i1 %cmp22, label %for.body23, label %for.end34, !dbg !1267

for.end34:                                        ; preds = %for.body23, %for.end18
  %x36 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 2, !dbg !1276
  %27 = load [3 x float]** %x36, align 8, !dbg !1276, !tbaa !990
  call void @do_edfit(i32 %20, [3 x float]* %27, [3 x float]* %19, [3 x float]* %rmat) #8, !dbg !1276
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 415, i8* %call19) #7, !dbg !1277
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !575), !dbg !1278
  br i1 %cmp207, label %for.cond40.preheader, label %for.cond81.preheader, !dbg !1278

for.cond40.preheader:                             ; preds = %for.end34, %for.inc78
  %indvars.iv227 = phi i64 [ %indvars.iv.next228, %for.inc78 ], [ 0, %for.end34 ]
  %scevgep = getelementptr [3 x float]* %x, i64 %indvars.iv227, i64 0
  %scevgep216 = bitcast float* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %x_old215, i8* %scevgep216, i64 12, i32 4, i1 false), !dbg !1280
  br label %for.body54, !dbg !1283

for.cond81.preheader:                             ; preds = %for.inc78, %for.end34
  %28 = load i32* %nfit, align 4, !dbg !1285, !tbaa !994
  %cmp83192 = icmp sgt i32 %28, 0, !dbg !1285
  br i1 %cmp83192, label %for.cond85.preheader.lr.ph, label %for.end110, !dbg !1285

for.cond85.preheader.lr.ph:                       ; preds = %for.cond81.preheader
  %29 = load [3 x float]** %x36, align 8, !dbg !1287, !tbaa !990
  %fitnrs96 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 18, !dbg !1287
  %30 = load i32** %fitnrs96, align 8, !dbg !1287, !tbaa !990
  br label %for.cond85.preheader, !dbg !1285

for.body54:                                       ; preds = %for.inc75, %for.cond40.preheader
  %indvars.iv221 = phi i64 [ 0, %for.cond40.preheader ], [ %indvars.iv.next222, %for.inc75 ]
  %arrayidx58 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv227, i64 %indvars.iv221, !dbg !1290
  store float 0.000000e+00, float* %arrayidx58, align 4, !dbg !1290, !tbaa !1007
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !577), !dbg !1292
  br label %for.body61, !dbg !1292

for.body61:                                       ; preds = %for.body61, %for.body54
  %31 = phi float [ 0.000000e+00, %for.body54 ], [ %add, %for.body61 ], !dbg !1294
  %indvars.iv217 = phi i64 [ 0, %for.body54 ], [ %indvars.iv.next218, %for.body61 ]
  %arrayidx65 = getelementptr inbounds [3 x float]* %rmat, i64 %indvars.iv217, i64 %indvars.iv221, !dbg !1294
  %32 = load float* %arrayidx65, align 4, !dbg !1294, !tbaa !1007
  %arrayidx67 = getelementptr inbounds [3 x float]* %x_old, i64 0, i64 %indvars.iv217, !dbg !1294
  %33 = load float* %arrayidx67, align 4, !dbg !1294, !tbaa !1007
  %mul = fmul float %32, %33, !dbg !1294
  %add = fadd float %31, %mul, !dbg !1294
  store float %add, float* %arrayidx58, align 4, !dbg !1294, !tbaa !1007
  %indvars.iv.next218 = add i64 %indvars.iv217, 1, !dbg !1292
  %lftr.wideiv219 = trunc i64 %indvars.iv.next218 to i32, !dbg !1292
  %exitcond220 = icmp eq i32 %lftr.wideiv219, 3, !dbg !1292
  br i1 %exitcond220, label %for.inc75, label %for.body61, !dbg !1292

for.inc75:                                        ; preds = %for.body61
  %indvars.iv.next222 = add i64 %indvars.iv221, 1, !dbg !1283
  %lftr.wideiv223 = trunc i64 %indvars.iv.next222 to i32, !dbg !1283
  %exitcond224 = icmp eq i32 %lftr.wideiv223, 3, !dbg !1283
  br i1 %exitcond224, label %for.inc78, label %for.body54, !dbg !1283

for.inc78:                                        ; preds = %for.inc75
  %indvars.iv.next228 = add i64 %indvars.iv227, 1, !dbg !1278
  %lftr.wideiv229 = trunc i64 %indvars.iv.next228 to i32, !dbg !1278
  %exitcond230 = icmp eq i32 %lftr.wideiv229, %nr, !dbg !1278
  br i1 %exitcond230, label %for.cond81.preheader, label %for.cond40.preheader, !dbg !1278

for.cond85.preheader:                             ; preds = %for.cond85.preheader.lr.ph, %for.inc108
  %indvars.iv209 = phi i64 [ 0, %for.cond85.preheader.lr.ph ], [ %indvars.iv.next210, %for.inc108 ]
  %rmsd.0194 = phi float [ 0.000000e+00, %for.cond85.preheader.lr.ph ], [ %conv104, %for.inc108 ]
  %arrayidx97 = getelementptr inbounds i32* %30, i64 %indvars.iv209, !dbg !1287
  %34 = load i32* %arrayidx97, align 4, !dbg !1287, !tbaa !994
  %idxprom98 = sext i32 %34 to i64, !dbg !1287
  br label %for.body87, !dbg !1295

for.body87:                                       ; preds = %for.body87, %for.cond85.preheader
  %indvars.iv = phi i64 [ 0, %for.cond85.preheader ], [ %indvars.iv.next, %for.body87 ]
  %rmsd.1191 = phi float [ %rmsd.0194, %for.cond85.preheader ], [ %conv104, %for.body87 ]
  %arrayidx93 = getelementptr inbounds [3 x float]* %29, i64 %indvars.iv209, i64 %indvars.iv, !dbg !1287
  %35 = load float* %arrayidx93, align 4, !dbg !1287, !tbaa !1007
  %arrayidx100 = getelementptr inbounds [3 x float]* %x, i64 %idxprom98, i64 %indvars.iv, !dbg !1287
  %36 = load float* %arrayidx100, align 4, !dbg !1287, !tbaa !1007
  %sub = fsub float %35, %36, !dbg !1287
  %conv = fpext float %sub to double, !dbg !1287
  %pow2 = fmul double %conv, %conv, !dbg !1287
  %conv102 = fpext float %rmsd.1191 to double, !dbg !1287
  %add103 = fadd double %conv102, %pow2, !dbg !1287
  %conv104 = fptrunc double %add103 to float, !dbg !1287
  call void @llvm.dbg.value(metadata !{float %conv104}, i64 0, metadata !578), !dbg !1287
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1295
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1295
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !1295
  br i1 %exitcond, label %for.inc108, label %for.body87, !dbg !1295

for.inc108:                                       ; preds = %for.body87
  %indvars.iv.next210 = add i64 %indvars.iv209, 1, !dbg !1285
  %37 = trunc i64 %indvars.iv.next210 to i32, !dbg !1285
  %cmp83 = icmp slt i32 %37, %28, !dbg !1285
  br i1 %cmp83, label %for.cond85.preheader, label %for.end110, !dbg !1285

for.end110:                                       ; preds = %for.inc108, %for.cond81.preheader
  %rmsd.0.lcssa = phi float [ 0.000000e+00, %for.cond81.preheader ], [ %conv104, %for.inc108 ]
  %conv112 = sitofp i32 %28 to float, !dbg !1296
  %div = fdiv float %rmsd.0.lcssa, %conv112, !dbg !1296
  call void @llvm.dbg.value(metadata !{float %div}, i64 0, metadata !578), !dbg !1296
  %conv115 = call float @sqrtf(float %div) #2, !dbg !1297
  call void @llvm.dbg.value(metadata !{float %conv115}, i64 0, metadata !578), !dbg !1297
  ret float %conv115, !dbg !1298
}

; Function Attrs: nounwind optsize uwtable
define void @project([3 x float]* nocapture %x, %struct.t_edpar* nocapture %edi, i8* nocapture %mode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !623), !dbg !1299
  tail call void @llvm.dbg.value(metadata !{%struct.t_edpar* %edi}, i64 0, metadata !624), !dbg !1299
  tail call void @llvm.dbg.value(metadata !{i8* %mode}, i64 0, metadata !625), !dbg !1299
  %call = tail call i32 @strcmp(i8* %mode, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #9, !dbg !1300
  %cmp = icmp eq i32 %call, 0, !dbg !1300
  br i1 %cmp, label %for.cond.preheader, label %if.end, !dbg !1300

for.cond.preheader:                               ; preds = %entry
  %nr = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0, !dbg !1301
  %0 = load i32* %nr, align 4, !dbg !1301, !tbaa !994
  %cmp183 = icmp sgt i32 %0, 0, !dbg !1301
  br i1 %cmp183, label %for.body.lr.ph, label %if.end, !dbg !1301

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %anrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1, !dbg !1304
  %1 = load i32** %anrs, align 8, !dbg !1304, !tbaa !990
  %x7 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 2, !dbg !1304
  %2 = load [3 x float]** %x7, align 8, !dbg !1304, !tbaa !990
  br label %for.body, !dbg !1301

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv85 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next86, %for.body ]
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv85, !dbg !1304
  %3 = load i32* %arrayidx, align 4, !dbg !1304, !tbaa !994
  %idxprom3 = sext i32 %3 to i64, !dbg !1304
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %idxprom3, i64 0, !dbg !1304
  %arraydecay9 = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv85, i64 0, !dbg !1304
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !1305), !dbg !1306
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay9}, i64 0, metadata !1307), !dbg !1306
  %4 = load float* %arraydecay, align 4, !dbg !1308, !tbaa !1007
  %5 = load float* %arraydecay9, align 4, !dbg !1308, !tbaa !1007
  %sub.i = fsub float %4, %5, !dbg !1308
  tail call void @llvm.dbg.value(metadata !{float %sub.i}, i64 0, metadata !1309), !dbg !1308
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom3, i64 1, !dbg !1310
  %6 = load float* %arrayidx2.i, align 4, !dbg !1310, !tbaa !1007
  %arrayidx3.i = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv85, i64 1, !dbg !1310
  %7 = load float* %arrayidx3.i, align 4, !dbg !1310, !tbaa !1007
  %sub4.i = fsub float %6, %7, !dbg !1310
  tail call void @llvm.dbg.value(metadata !{float %sub4.i}, i64 0, metadata !1311), !dbg !1310
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom3, i64 2, !dbg !1312
  %8 = load float* %arrayidx5.i, align 4, !dbg !1312, !tbaa !1007
  %arrayidx6.i = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv85, i64 2, !dbg !1312
  %9 = load float* %arrayidx6.i, align 4, !dbg !1312, !tbaa !1007
  %sub7.i = fsub float %8, %9, !dbg !1312
  tail call void @llvm.dbg.value(metadata !{float %sub7.i}, i64 0, metadata !1313), !dbg !1312
  store float %sub.i, float* %arraydecay, align 4, !dbg !1314, !tbaa !1007
  store float %sub4.i, float* %arrayidx2.i, align 4, !dbg !1315, !tbaa !1007
  store float %sub7.i, float* %arrayidx5.i, align 4, !dbg !1316, !tbaa !1007
  %indvars.iv.next86 = add i64 %indvars.iv85, 1, !dbg !1301
  %10 = trunc i64 %indvars.iv.next86 to i32, !dbg !1301
  %cmp1 = icmp slt i32 %10, %0, !dbg !1301
  br i1 %cmp1, label %for.body, label %if.end, !dbg !1301

if.end:                                           ; preds = %for.cond.preheader, %for.body, %entry
  %mon = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 0, !dbg !1317
  tail call void @do_project([3 x float]* %x, %struct.t_eigvec* %mon, %struct.t_edpar* %edi, i8* %mode) #8, !dbg !1317
  %linfix = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1, !dbg !1318
  tail call void @do_project([3 x float]* %x, %struct.t_eigvec* %linfix, %struct.t_edpar* %edi, i8* %mode) #8, !dbg !1318
  %linacc = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2, !dbg !1319
  tail call void @do_project([3 x float]* %x, %struct.t_eigvec* %linacc, %struct.t_edpar* %edi, i8* %mode) #8, !dbg !1319
  %radfix = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, !dbg !1320
  tail call void @do_project([3 x float]* %x, %struct.t_eigvec* %radfix, %struct.t_edpar* %edi, i8* %mode) #8, !dbg !1320
  %radacc = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, !dbg !1321
  tail call void @do_project([3 x float]* %x, %struct.t_eigvec* %radacc, %struct.t_edpar* %edi, i8* %mode) #8, !dbg !1321
  %radcon = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, !dbg !1322
  tail call void @do_project([3 x float]* %x, %struct.t_eigvec* %radcon, %struct.t_edpar* %edi, i8* %mode) #8, !dbg !1322
  %call15 = tail call i32 @strcmp(i8* %mode, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #9, !dbg !1323
  %cmp16 = icmp eq i32 %call15, 0, !dbg !1323
  br i1 %cmp16, label %for.cond18.preheader, label %if.end38, !dbg !1323

for.cond18.preheader:                             ; preds = %if.end
  %nr20 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0, !dbg !1324
  %11 = load i32* %nr20, align 4, !dbg !1324, !tbaa !994
  %cmp2181 = icmp sgt i32 %11, 0, !dbg !1324
  br i1 %cmp2181, label %for.body22.lr.ph, label %if.end38, !dbg !1324

for.body22.lr.ph:                                 ; preds = %for.cond18.preheader
  %anrs25 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1, !dbg !1327
  %12 = load i32** %anrs25, align 8, !dbg !1327, !tbaa !990
  %x32 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 2, !dbg !1327
  %13 = load [3 x float]** %x32, align 8, !dbg !1327, !tbaa !990
  br label %for.body22, !dbg !1324

for.body22:                                       ; preds = %for.body22.lr.ph, %for.body22
  %indvars.iv = phi i64 [ 0, %for.body22.lr.ph ], [ %indvars.iv.next, %for.body22 ]
  %arrayidx26 = getelementptr inbounds i32* %12, i64 %indvars.iv, !dbg !1327
  %14 = load i32* %arrayidx26, align 4, !dbg !1327, !tbaa !994
  %idxprom27 = sext i32 %14 to i64, !dbg !1327
  %arraydecay29 = getelementptr inbounds [3 x float]* %x, i64 %idxprom27, i64 0, !dbg !1327
  %arraydecay34 = getelementptr inbounds [3 x float]* %13, i64 %indvars.iv, i64 0, !dbg !1327
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay29}, i64 0, metadata !1328), !dbg !1329
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay34}, i64 0, metadata !1330), !dbg !1329
  %15 = load float* %arraydecay29, align 4, !dbg !1331, !tbaa !1007
  %16 = load float* %arraydecay34, align 4, !dbg !1331, !tbaa !1007
  %add.i = fadd float %15, %16, !dbg !1331
  tail call void @llvm.dbg.value(metadata !{float %add.i}, i64 0, metadata !1332), !dbg !1331
  %arrayidx2.i77 = getelementptr inbounds [3 x float]* %x, i64 %idxprom27, i64 1, !dbg !1333
  %17 = load float* %arrayidx2.i77, align 4, !dbg !1333, !tbaa !1007
  %arrayidx3.i78 = getelementptr inbounds [3 x float]* %13, i64 %indvars.iv, i64 1, !dbg !1333
  %18 = load float* %arrayidx3.i78, align 4, !dbg !1333, !tbaa !1007
  %add4.i = fadd float %17, %18, !dbg !1333
  tail call void @llvm.dbg.value(metadata !{float %add4.i}, i64 0, metadata !1334), !dbg !1333
  %arrayidx5.i79 = getelementptr inbounds [3 x float]* %x, i64 %idxprom27, i64 2, !dbg !1335
  %19 = load float* %arrayidx5.i79, align 4, !dbg !1335, !tbaa !1007
  %arrayidx6.i80 = getelementptr inbounds [3 x float]* %13, i64 %indvars.iv, i64 2, !dbg !1335
  %20 = load float* %arrayidx6.i80, align 4, !dbg !1335, !tbaa !1007
  %add7.i = fadd float %19, %20, !dbg !1335
  tail call void @llvm.dbg.value(metadata !{float %add7.i}, i64 0, metadata !1336), !dbg !1335
  store float %add.i, float* %arraydecay29, align 4, !dbg !1337, !tbaa !1007
  store float %add4.i, float* %arrayidx2.i77, align 4, !dbg !1338, !tbaa !1007
  store float %add7.i, float* %arrayidx5.i79, align 4, !dbg !1339, !tbaa !1007
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1324
  %21 = trunc i64 %indvars.iv.next to i32, !dbg !1324
  %cmp21 = icmp slt i32 %21, %11, !dbg !1324
  br i1 %cmp21, label %for.body22, label %if.end38, !dbg !1324

if.end38:                                         ; preds = %for.cond18.preheader, %for.body22, %if.end
  ret void, !dbg !1340
}

; Function Attrs: nounwind optsize uwtable
define void @write_edidx(%struct._IO_FILE* nocapture %out, %struct.t_edpar* nocapture %edi) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !920), !dbg !1341
  tail call void @llvm.dbg.value(metadata !{%struct.t_edpar* %edi}, i64 0, metadata !921), !dbg !1341
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str61, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %out), !dbg !1342
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !922), !dbg !1343
  %neig = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 0, i32 0, !dbg !1343
  %1 = load i32* %neig, align 4, !dbg !1343, !tbaa !994
  %cmp200 = icmp sgt i32 %1, 0, !dbg !1343
  br i1 %cmp200, label %for.body.lr.ph, label %for.end, !dbg !1343

for.body.lr.ph:                                   ; preds = %entry
  %ieig = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 0, i32 1, !dbg !1345
  %xproj = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 0, i32 4, !dbg !1345
  br label %for.body, !dbg !1343

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv210 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next211, %for.body ]
  %2 = load i32** %ieig, align 8, !dbg !1345, !tbaa !990
  %arrayidx = getelementptr inbounds i32* %2, i64 %indvars.iv210, !dbg !1345
  %3 = load i32* %arrayidx, align 4, !dbg !1345, !tbaa !994
  %4 = load float** %xproj, align 8, !dbg !1345, !tbaa !990
  %arrayidx6 = getelementptr inbounds float* %4, i64 %indvars.iv210, !dbg !1345
  %5 = load float* %arrayidx6, align 4, !dbg !1345, !tbaa !1007
  %conv = fpext float %5 to double, !dbg !1345
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([9 x i8]* @.str62, i64 0, i64 0), i32 %3, double %conv) #7, !dbg !1345
  %indvars.iv.next211 = add i64 %indvars.iv210, 1, !dbg !1343
  %6 = load i32* %neig, align 4, !dbg !1343, !tbaa !994
  %7 = trunc i64 %indvars.iv.next211 to i32, !dbg !1343
  %cmp = icmp slt i32 %7, %6, !dbg !1343
  br i1 %cmp, label %for.body, label %for.end, !dbg !1343

for.end:                                          ; preds = %for.body, %entry
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out), !dbg !1346
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str63, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %out), !dbg !1347
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !922), !dbg !1348
  %neig12 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1, i32 0, !dbg !1348
  %9 = load i32* %neig12, align 4, !dbg !1348, !tbaa !994
  %cmp13198 = icmp sgt i32 %9, 0, !dbg !1348
  br i1 %cmp13198, label %for.body15.lr.ph, label %for.end30, !dbg !1348

for.body15.lr.ph:                                 ; preds = %for.end
  %ieig19 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1, i32 1, !dbg !1350
  %xproj24 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1, i32 4, !dbg !1350
  br label %for.body15, !dbg !1348

for.body15:                                       ; preds = %for.body15.lr.ph, %for.body15
  %indvars.iv208 = phi i64 [ 0, %for.body15.lr.ph ], [ %indvars.iv.next209, %for.body15 ]
  %10 = load i32** %ieig19, align 8, !dbg !1350, !tbaa !990
  %arrayidx20 = getelementptr inbounds i32* %10, i64 %indvars.iv208, !dbg !1350
  %11 = load i32* %arrayidx20, align 4, !dbg !1350, !tbaa !994
  %12 = load float** %xproj24, align 8, !dbg !1350, !tbaa !990
  %arrayidx25 = getelementptr inbounds float* %12, i64 %indvars.iv208, !dbg !1350
  %13 = load float* %arrayidx25, align 4, !dbg !1350, !tbaa !1007
  %conv26 = fpext float %13 to double, !dbg !1350
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([9 x i8]* @.str62, i64 0, i64 0), i32 %11, double %conv26) #7, !dbg !1350
  %indvars.iv.next209 = add i64 %indvars.iv208, 1, !dbg !1348
  %14 = load i32* %neig12, align 4, !dbg !1348, !tbaa !994
  %15 = trunc i64 %indvars.iv.next209 to i32, !dbg !1348
  %cmp13 = icmp slt i32 %15, %14, !dbg !1348
  br i1 %cmp13, label %for.body15, label %for.end30, !dbg !1348

for.end30:                                        ; preds = %for.body15, %for.end
  %fputc177 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out), !dbg !1351
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str64, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %out), !dbg !1352
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !922), !dbg !1353
  %neig35 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2, i32 0, !dbg !1353
  %17 = load i32* %neig35, align 4, !dbg !1353, !tbaa !994
  %cmp36196 = icmp sgt i32 %17, 0, !dbg !1353
  br i1 %cmp36196, label %for.body38.lr.ph, label %for.end53, !dbg !1353

for.body38.lr.ph:                                 ; preds = %for.end30
  %ieig42 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2, i32 1, !dbg !1355
  %xproj47 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2, i32 4, !dbg !1355
  br label %for.body38, !dbg !1353

for.body38:                                       ; preds = %for.body38.lr.ph, %for.body38
  %indvars.iv206 = phi i64 [ 0, %for.body38.lr.ph ], [ %indvars.iv.next207, %for.body38 ]
  %18 = load i32** %ieig42, align 8, !dbg !1355, !tbaa !990
  %arrayidx43 = getelementptr inbounds i32* %18, i64 %indvars.iv206, !dbg !1355
  %19 = load i32* %arrayidx43, align 4, !dbg !1355, !tbaa !994
  %20 = load float** %xproj47, align 8, !dbg !1355, !tbaa !990
  %arrayidx48 = getelementptr inbounds float* %20, i64 %indvars.iv206, !dbg !1355
  %21 = load float* %arrayidx48, align 4, !dbg !1355, !tbaa !1007
  %conv49 = fpext float %21 to double, !dbg !1355
  %call50 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([9 x i8]* @.str62, i64 0, i64 0), i32 %19, double %conv49) #7, !dbg !1355
  %indvars.iv.next207 = add i64 %indvars.iv206, 1, !dbg !1353
  %22 = load i32* %neig35, align 4, !dbg !1353, !tbaa !994
  %23 = trunc i64 %indvars.iv.next207 to i32, !dbg !1353
  %cmp36 = icmp slt i32 %23, %22, !dbg !1353
  br i1 %cmp36, label %for.body38, label %for.end53, !dbg !1353

for.end53:                                        ; preds = %for.body38, %for.end30
  %fputc180 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out), !dbg !1356
  %24 = tail call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str65, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %out), !dbg !1357
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !922), !dbg !1358
  %neig58 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 0, !dbg !1358
  %25 = load i32* %neig58, align 4, !dbg !1358, !tbaa !994
  %cmp59194 = icmp sgt i32 %25, 0, !dbg !1358
  br i1 %cmp59194, label %for.body61.lr.ph, label %for.end76, !dbg !1358

for.body61.lr.ph:                                 ; preds = %for.end53
  %ieig65 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 1, !dbg !1360
  %xproj70 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 4, !dbg !1360
  br label %for.body61, !dbg !1358

for.body61:                                       ; preds = %for.body61.lr.ph, %for.body61
  %indvars.iv204 = phi i64 [ 0, %for.body61.lr.ph ], [ %indvars.iv.next205, %for.body61 ]
  %26 = load i32** %ieig65, align 8, !dbg !1360, !tbaa !990
  %arrayidx66 = getelementptr inbounds i32* %26, i64 %indvars.iv204, !dbg !1360
  %27 = load i32* %arrayidx66, align 4, !dbg !1360, !tbaa !994
  %28 = load float** %xproj70, align 8, !dbg !1360, !tbaa !990
  %arrayidx71 = getelementptr inbounds float* %28, i64 %indvars.iv204, !dbg !1360
  %29 = load float* %arrayidx71, align 4, !dbg !1360, !tbaa !1007
  %conv72 = fpext float %29 to double, !dbg !1360
  %call73 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([9 x i8]* @.str62, i64 0, i64 0), i32 %27, double %conv72) #7, !dbg !1360
  %indvars.iv.next205 = add i64 %indvars.iv204, 1, !dbg !1358
  %30 = load i32* %neig58, align 4, !dbg !1358, !tbaa !994
  %31 = trunc i64 %indvars.iv.next205 to i32, !dbg !1358
  %cmp59 = icmp slt i32 %31, %30, !dbg !1358
  br i1 %cmp59, label %for.body61, label %for.end76, !dbg !1358

for.end76:                                        ; preds = %for.body61, %for.end53
  %fputc183 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out), !dbg !1361
  %32 = tail call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str66, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %out), !dbg !1362
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !922), !dbg !1363
  %neig81 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 0, !dbg !1363
  %33 = load i32* %neig81, align 4, !dbg !1363, !tbaa !994
  %cmp82192 = icmp sgt i32 %33, 0, !dbg !1363
  br i1 %cmp82192, label %for.body84.lr.ph, label %for.end99, !dbg !1363

for.body84.lr.ph:                                 ; preds = %for.end76
  %ieig88 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 1, !dbg !1365
  %xproj93 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 4, !dbg !1365
  br label %for.body84, !dbg !1363

for.body84:                                       ; preds = %for.body84.lr.ph, %for.body84
  %indvars.iv202 = phi i64 [ 0, %for.body84.lr.ph ], [ %indvars.iv.next203, %for.body84 ]
  %34 = load i32** %ieig88, align 8, !dbg !1365, !tbaa !990
  %arrayidx89 = getelementptr inbounds i32* %34, i64 %indvars.iv202, !dbg !1365
  %35 = load i32* %arrayidx89, align 4, !dbg !1365, !tbaa !994
  %36 = load float** %xproj93, align 8, !dbg !1365, !tbaa !990
  %arrayidx94 = getelementptr inbounds float* %36, i64 %indvars.iv202, !dbg !1365
  %37 = load float* %arrayidx94, align 4, !dbg !1365, !tbaa !1007
  %conv95 = fpext float %37 to double, !dbg !1365
  %call96 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([9 x i8]* @.str62, i64 0, i64 0), i32 %35, double %conv95) #7, !dbg !1365
  %indvars.iv.next203 = add i64 %indvars.iv202, 1, !dbg !1363
  %38 = load i32* %neig81, align 4, !dbg !1363, !tbaa !994
  %39 = trunc i64 %indvars.iv.next203 to i32, !dbg !1363
  %cmp82 = icmp slt i32 %39, %38, !dbg !1363
  br i1 %cmp82, label %for.body84, label %for.end99, !dbg !1363

for.end99:                                        ; preds = %for.body84, %for.end76
  %fputc186 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out), !dbg !1366
  %40 = tail call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str67, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %out), !dbg !1367
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !922), !dbg !1368
  %neig104 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 0, !dbg !1368
  %41 = load i32* %neig104, align 4, !dbg !1368, !tbaa !994
  %cmp105190 = icmp sgt i32 %41, 0, !dbg !1368
  br i1 %cmp105190, label %for.body107.lr.ph, label %for.end122, !dbg !1368

for.body107.lr.ph:                                ; preds = %for.end99
  %ieig111 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 1, !dbg !1370
  %xproj116 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 4, !dbg !1370
  br label %for.body107, !dbg !1368

for.body107:                                      ; preds = %for.body107.lr.ph, %for.body107
  %indvars.iv = phi i64 [ 0, %for.body107.lr.ph ], [ %indvars.iv.next, %for.body107 ]
  %42 = load i32** %ieig111, align 8, !dbg !1370, !tbaa !990
  %arrayidx112 = getelementptr inbounds i32* %42, i64 %indvars.iv, !dbg !1370
  %43 = load i32* %arrayidx112, align 4, !dbg !1370, !tbaa !994
  %44 = load float** %xproj116, align 8, !dbg !1370, !tbaa !990
  %arrayidx117 = getelementptr inbounds float* %44, i64 %indvars.iv, !dbg !1370
  %45 = load float* %arrayidx117, align 4, !dbg !1370, !tbaa !1007
  %conv118 = fpext float %45 to double, !dbg !1370
  %call119 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([9 x i8]* @.str62, i64 0, i64 0), i32 %43, double %conv118) #7, !dbg !1370
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1368
  %46 = load i32* %neig104, align 4, !dbg !1368, !tbaa !994
  %47 = trunc i64 %indvars.iv.next to i32, !dbg !1368
  %cmp105 = icmp slt i32 %47, %46, !dbg !1368
  br i1 %cmp105, label %for.body107, label %for.end122, !dbg !1368

for.end122:                                       ; preds = %for.body107, %for.end99
  %fputc189 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out), !dbg !1371
  ret void, !dbg !1372
}

; Function Attrs: nounwind optsize uwtable
define void @projectx(%struct.t_edpar* nocapture %edi, [3 x float]* nocapture %x, %struct.t_eigvec* nocapture %vec) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_edpar* %edi}, i64 0, metadata !643), !dbg !1373
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !644), !dbg !1373
  tail call void @llvm.dbg.value(metadata !{%struct.t_eigvec* %vec}, i64 0, metadata !645), !dbg !1373
  tail call void @llvm.dbg.value(metadata !1374, i64 0, metadata !649), !dbg !1375
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !646), !dbg !1376
  %nr = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0, !dbg !1376
  %0 = load i32* %nr, align 4, !dbg !1376, !tbaa !994
  %cmp129 = icmp sgt i32 %0, 0, !dbg !1376
  br i1 %cmp129, label %for.body.lr.ph, label %for.cond9.preheader, !dbg !1376

for.body.lr.ph:                                   ; preds = %entry
  %anrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1, !dbg !1378
  %1 = load i32** %anrs, align 8, !dbg !1378, !tbaa !990
  %x6 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 2, !dbg !1378
  %2 = load [3 x float]** %x6, align 8, !dbg !1378, !tbaa !990
  br label %for.body, !dbg !1376

for.cond9.preheader:                              ; preds = %for.body, %entry
  %neig = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 0, !dbg !1379
  %3 = load i32* %neig, align 4, !dbg !1379, !tbaa !994
  %cmp10126 = icmp sgt i32 %3, 0, !dbg !1379
  br i1 %cmp10126, label %for.body11.lr.ph, label %for.end56, !dbg !1379

for.body11.lr.ph:                                 ; preds = %for.cond9.preheader
  %refproj = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 7, !dbg !1381
  %4 = load float** %refproj, align 8, !dbg !1381, !tbaa !990
  %xproj = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 4, !dbg !1383
  %5 = load float** %xproj, align 8, !dbg !1383, !tbaa !990
  %vec25 = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 3, !dbg !1384
  %anrs32 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1, !dbg !1384
  br label %for.body11, !dbg !1379

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv138 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next139, %for.body ]
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv138, !dbg !1378
  %6 = load i32* %arrayidx, align 4, !dbg !1378, !tbaa !994
  %idxprom2 = sext i32 %6 to i64, !dbg !1378
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %idxprom2, i64 0, !dbg !1378
  %arraydecay8 = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv138, i64 0, !dbg !1378
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !1388), !dbg !1389
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay8}, i64 0, metadata !1390), !dbg !1389
  %7 = load float* %arraydecay, align 4, !dbg !1391, !tbaa !1007
  %8 = load float* %arraydecay8, align 4, !dbg !1391, !tbaa !1007
  %sub.i = fsub float %7, %8, !dbg !1391
  tail call void @llvm.dbg.value(metadata !{float %sub.i}, i64 0, metadata !1392), !dbg !1391
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom2, i64 1, !dbg !1393
  %9 = load float* %arrayidx2.i, align 4, !dbg !1393, !tbaa !1007
  %arrayidx3.i = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv138, i64 1, !dbg !1393
  %10 = load float* %arrayidx3.i, align 4, !dbg !1393, !tbaa !1007
  %sub4.i = fsub float %9, %10, !dbg !1393
  tail call void @llvm.dbg.value(metadata !{float %sub4.i}, i64 0, metadata !1394), !dbg !1393
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom2, i64 2, !dbg !1395
  %11 = load float* %arrayidx5.i, align 4, !dbg !1395, !tbaa !1007
  %arrayidx6.i = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv138, i64 2, !dbg !1395
  %12 = load float* %arrayidx6.i, align 4, !dbg !1395, !tbaa !1007
  %sub7.i = fsub float %11, %12, !dbg !1395
  tail call void @llvm.dbg.value(metadata !{float %sub7.i}, i64 0, metadata !1396), !dbg !1395
  store float %sub.i, float* %arraydecay, align 4, !dbg !1397, !tbaa !1007
  store float %sub4.i, float* %arrayidx2.i, align 4, !dbg !1398, !tbaa !1007
  store float %sub7.i, float* %arrayidx5.i, align 4, !dbg !1399, !tbaa !1007
  %indvars.iv.next139 = add i64 %indvars.iv138, 1, !dbg !1376
  %13 = trunc i64 %indvars.iv.next139 to i32, !dbg !1376
  %cmp = icmp slt i32 %13, %0, !dbg !1376
  br i1 %cmp, label %for.body, label %for.cond9.preheader, !dbg !1376

for.body11:                                       ; preds = %for.body11.lr.ph, %for.end45
  %indvars.iv136 = phi i64 [ 0, %for.body11.lr.ph ], [ %indvars.iv.next137, %for.end45 ]
  %rad.0128 = phi double [ 0.000000e+00, %for.body11.lr.ph ], [ %phitmp, %for.end45 ]
  %arrayidx13 = getelementptr inbounds float* %4, i64 %indvars.iv136, !dbg !1381
  store float 0.000000e+00, float* %arrayidx13, align 4, !dbg !1381, !tbaa !1007
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !647), !dbg !1400
  br i1 %cmp129, label %for.cond19.preheader.lr.ph, label %for.end45, !dbg !1400

for.cond19.preheader.lr.ph:                       ; preds = %for.body11
  %14 = load [3 x float]*** %vec25, align 8, !dbg !1384, !tbaa !990
  %arrayidx26 = getelementptr inbounds [3 x float]** %14, i64 %indvars.iv136, !dbg !1384
  %15 = load [3 x float]** %arrayidx26, align 8, !dbg !1384, !tbaa !990
  %16 = load i32** %anrs32, align 8, !dbg !1384, !tbaa !990
  br label %for.cond19.preheader, !dbg !1400

for.cond19.preheader:                             ; preds = %for.cond19.preheader.lr.ph, %for.inc43
  %.pre140 = phi float [ 0.000000e+00, %for.cond19.preheader.lr.ph ], [ %add, %for.inc43 ]
  %indvars.iv134 = phi i64 [ 0, %for.cond19.preheader.lr.ph ], [ %indvars.iv.next135, %for.inc43 ]
  %arrayidx33 = getelementptr inbounds i32* %16, i64 %indvars.iv134, !dbg !1384
  %17 = load i32* %arrayidx33, align 4, !dbg !1384, !tbaa !994
  %idxprom34 = sext i32 %17 to i64, !dbg !1384
  br label %for.body21, !dbg !1401

for.body21:                                       ; preds = %for.body21, %for.cond19.preheader
  %18 = phi float [ %.pre140, %for.cond19.preheader ], [ %add, %for.body21 ], !dbg !1384
  %indvars.iv132 = phi i64 [ 0, %for.cond19.preheader ], [ %indvars.iv.next133, %for.body21 ]
  %arrayidx28 = getelementptr inbounds [3 x float]* %15, i64 %indvars.iv134, i64 %indvars.iv132, !dbg !1384
  %19 = load float* %arrayidx28, align 4, !dbg !1384, !tbaa !1007
  %arrayidx36 = getelementptr inbounds [3 x float]* %x, i64 %idxprom34, i64 %indvars.iv132, !dbg !1384
  %20 = load float* %arrayidx36, align 4, !dbg !1384, !tbaa !1007
  %mul = fmul float %19, %20, !dbg !1384
  %add = fadd float %mul, %18, !dbg !1384
  store float %add, float* %arrayidx13, align 4, !dbg !1384, !tbaa !1007
  %indvars.iv.next133 = add i64 %indvars.iv132, 1, !dbg !1401
  %lftr.wideiv = trunc i64 %indvars.iv.next133 to i32, !dbg !1401
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !1401
  br i1 %exitcond, label %for.inc43, label %for.body21, !dbg !1401

for.inc43:                                        ; preds = %for.body21
  %indvars.iv.next135 = add i64 %indvars.iv134, 1, !dbg !1400
  %21 = trunc i64 %indvars.iv.next135 to i32, !dbg !1400
  %cmp17 = icmp slt i32 %21, %0, !dbg !1400
  br i1 %cmp17, label %for.cond19.preheader, label %for.end45, !dbg !1400

for.end45:                                        ; preds = %for.inc43, %for.body11
  %22 = phi float [ 0.000000e+00, %for.body11 ], [ %add, %for.inc43 ]
  %arrayidx50 = getelementptr inbounds float* %5, i64 %indvars.iv136, !dbg !1383
  %23 = load float* %arrayidx50, align 4, !dbg !1383, !tbaa !1007
  %sub = fsub float %22, %23, !dbg !1383
  %conv = fpext float %sub to double, !dbg !1383
  %pow2 = fmul double %conv, %conv, !dbg !1383
  %add52 = fadd double %rad.0128, %pow2, !dbg !1383
  %conv53 = fptrunc double %add52 to float, !dbg !1383
  tail call void @llvm.dbg.value(metadata !{float %conv53}, i64 0, metadata !649), !dbg !1383
  %indvars.iv.next137 = add i64 %indvars.iv136, 1, !dbg !1379
  %phitmp = fpext float %conv53 to double, !dbg !1379
  %24 = trunc i64 %indvars.iv.next137 to i32, !dbg !1379
  %cmp10 = icmp slt i32 %24, %3, !dbg !1379
  br i1 %cmp10, label %for.body11, label %for.end56, !dbg !1379

for.end56:                                        ; preds = %for.end45, %for.cond9.preheader
  %rad.0.lcssa = phi double [ 0.000000e+00, %for.cond9.preheader ], [ %phitmp, %for.end45 ]
  %call58 = tail call double @sqrt(double %rad.0.lcssa) #7, !dbg !1402
  %conv59 = fptrunc double %call58 to float, !dbg !1402
  %radius = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 8, !dbg !1402
  store float %conv59, float* %radius, align 4, !dbg !1402, !tbaa !1007
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !646), !dbg !1403
  %25 = load i32* %nr, align 4, !dbg !1403, !tbaa !994
  %cmp63121 = icmp sgt i32 %25, 0, !dbg !1403
  br i1 %cmp63121, label %for.body65.lr.ph, label %for.end80, !dbg !1403

for.body65.lr.ph:                                 ; preds = %for.end56
  %anrs68 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1, !dbg !1405
  %26 = load i32** %anrs68, align 8, !dbg !1405, !tbaa !990
  %x75 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 2, !dbg !1405
  %27 = load [3 x float]** %x75, align 8, !dbg !1405, !tbaa !990
  br label %for.body65, !dbg !1403

for.body65:                                       ; preds = %for.body65.lr.ph, %for.body65
  %indvars.iv = phi i64 [ 0, %for.body65.lr.ph ], [ %indvars.iv.next, %for.body65 ]
  %arrayidx69 = getelementptr inbounds i32* %26, i64 %indvars.iv, !dbg !1405
  %28 = load i32* %arrayidx69, align 4, !dbg !1405, !tbaa !994
  %idxprom70 = sext i32 %28 to i64, !dbg !1405
  %arraydecay72 = getelementptr inbounds [3 x float]* %x, i64 %idxprom70, i64 0, !dbg !1405
  %arraydecay77 = getelementptr inbounds [3 x float]* %27, i64 %indvars.iv, i64 0, !dbg !1405
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay72}, i64 0, metadata !1406), !dbg !1407
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay77}, i64 0, metadata !1408), !dbg !1407
  %29 = load float* %arraydecay72, align 4, !dbg !1409, !tbaa !1007
  %30 = load float* %arraydecay77, align 4, !dbg !1409, !tbaa !1007
  %add.i = fadd float %29, %30, !dbg !1409
  tail call void @llvm.dbg.value(metadata !{float %add.i}, i64 0, metadata !1410), !dbg !1409
  %arrayidx2.i117 = getelementptr inbounds [3 x float]* %x, i64 %idxprom70, i64 1, !dbg !1411
  %31 = load float* %arrayidx2.i117, align 4, !dbg !1411, !tbaa !1007
  %arrayidx3.i118 = getelementptr inbounds [3 x float]* %27, i64 %indvars.iv, i64 1, !dbg !1411
  %32 = load float* %arrayidx3.i118, align 4, !dbg !1411, !tbaa !1007
  %add4.i = fadd float %31, %32, !dbg !1411
  tail call void @llvm.dbg.value(metadata !{float %add4.i}, i64 0, metadata !1412), !dbg !1411
  %arrayidx5.i119 = getelementptr inbounds [3 x float]* %x, i64 %idxprom70, i64 2, !dbg !1413
  %33 = load float* %arrayidx5.i119, align 4, !dbg !1413, !tbaa !1007
  %arrayidx6.i120 = getelementptr inbounds [3 x float]* %27, i64 %indvars.iv, i64 2, !dbg !1413
  %34 = load float* %arrayidx6.i120, align 4, !dbg !1413, !tbaa !1007
  %add7.i = fadd float %33, %34, !dbg !1413
  tail call void @llvm.dbg.value(metadata !{float %add7.i}, i64 0, metadata !1414), !dbg !1413
  store float %add.i, float* %arraydecay72, align 4, !dbg !1415, !tbaa !1007
  store float %add4.i, float* %arrayidx2.i117, align 4, !dbg !1416, !tbaa !1007
  store float %add7.i, float* %arrayidx5.i119, align 4, !dbg !1417, !tbaa !1007
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1403
  %35 = trunc i64 %indvars.iv.next to i32, !dbg !1403
  %cmp63 = icmp slt i32 %35, %25, !dbg !1403
  br i1 %cmp63, label %for.body65, label %for.end80, !dbg !1403

for.end80:                                        ; preds = %for.body65, %for.end56
  ret void, !dbg !1418
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @read_edint(%struct._IO_FILE* %file) #0 {
entry:
  %line = alloca [4097 x i8], align 16
  %idum = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %file}, i64 0, metadata !500), !dbg !1419
  %0 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 0, !dbg !1420
  call void @llvm.lifetime.start(i64 4097, i8* %0) #4, !dbg !1420
  call void @llvm.dbg.declare(metadata !{[4097 x i8]* %line}, metadata !501), !dbg !1420
  call void @llvm.dbg.declare(metadata !{i32* %idum}, metadata !505), !dbg !1421
  %call = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %file) #7, !dbg !1422
  %call2 = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %file) #7, !dbg !1423
  %call4 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str30, i64 0, i64 0), i32* %idum) #7, !dbg !1424
  call void @llvm.dbg.value(metadata !{i32* %idum}, i64 0, metadata !505), !dbg !1425
  %1 = load i32* %idum, align 4, !dbg !1425, !tbaa !994
  call void @llvm.lifetime.end(i64 4097, i8* %0) #4, !dbg !1426
  ret i32 %1, !dbg !1426
}

; Function Attrs: nounwind optsize uwtable
define float @read_edreal(%struct._IO_FILE* %file) #0 {
entry:
  %line = alloca [4097 x i8], align 16
  %rdum = alloca double, align 8
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %file}, i64 0, metadata !510), !dbg !1427
  %0 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 0, !dbg !1428
  call void @llvm.lifetime.start(i64 4097, i8* %0) #4, !dbg !1428
  call void @llvm.dbg.declare(metadata !{[4097 x i8]* %line}, metadata !511), !dbg !1428
  call void @llvm.dbg.declare(metadata !{double* %rdum}, metadata !512), !dbg !1429
  %call = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %file) #7, !dbg !1430
  %call2 = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %file) #7, !dbg !1431
  %call4 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str31, i64 0, i64 0), double* %rdum) #7, !dbg !1432
  call void @llvm.dbg.value(metadata !{double* %rdum}, i64 0, metadata !512), !dbg !1433
  %1 = load double* %rdum, align 8, !dbg !1433, !tbaa !1434
  %conv = fptrunc double %1 to float, !dbg !1433
  call void @llvm.lifetime.end(i64 4097, i8* %0) #4, !dbg !1435
  ret float %conv, !dbg !1435
}

; Function Attrs: nounwind optsize uwtable
define void @read_edx(%struct._IO_FILE* %file, i32 %number, i32* %anrs, [3 x float]* nocapture %x) #0 {
entry:
  %line = alloca [4097 x i8], align 16
  %d = alloca [3 x double], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %file}, i64 0, metadata !523), !dbg !1436
  call void @llvm.dbg.value(metadata !{i32 %number}, i64 0, metadata !524), !dbg !1436
  call void @llvm.dbg.value(metadata !{i32* %anrs}, i64 0, metadata !525), !dbg !1436
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !526), !dbg !1436
  %0 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 0, !dbg !1437
  call void @llvm.lifetime.start(i64 4097, i8* %0) #4, !dbg !1437
  call void @llvm.dbg.declare(metadata !{[4097 x i8]* %line}, metadata !529), !dbg !1437
  call void @llvm.dbg.declare(metadata !{[3 x double]* %d}, metadata !530), !dbg !1438
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !527), !dbg !1439
  %cmp29 = icmp sgt i32 %number, 0, !dbg !1439
  br i1 %cmp29, label %for.body.lr.ph, label %for.end19, !dbg !1439

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx2 = getelementptr inbounds [3 x double]* %d, i64 0, i64 0, !dbg !1441
  %arrayidx3 = getelementptr inbounds [3 x double]* %d, i64 0, i64 1, !dbg !1441
  %arrayidx4 = getelementptr inbounds [3 x double]* %d, i64 0, i64 2, !dbg !1441
  br label %for.body, !dbg !1439

for.body:                                         ; preds = %for.inc17, %for.body.lr.ph
  %indvars.iv31 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next32, %for.inc17 ]
  %call = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %file) #7, !dbg !1443
  %arrayidx = getelementptr inbounds i32* %anrs, i64 %indvars.iv31, !dbg !1441
  %call5 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([12 x i8]* @.str32, i64 0, i64 0), i32* %arrayidx, double* %arrayidx2, double* %arrayidx3, double* %arrayidx4) #7, !dbg !1441
  %1 = load i32* %arrayidx, align 4, !dbg !1444, !tbaa !994
  %dec = add nsw i32 %1, -1, !dbg !1444
  store i32 %dec, i32* %arrayidx, align 4, !dbg !1444, !tbaa !994
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !528), !dbg !1445
  br label %for.body10, !dbg !1445

for.body10:                                       ; preds = %for.body10, %for.body
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.body10 ]
  %arrayidx12 = getelementptr inbounds [3 x double]* %d, i64 0, i64 %indvars.iv, !dbg !1447
  %2 = load double* %arrayidx12, align 8, !dbg !1447, !tbaa !1434
  %conv = fptrunc double %2 to float, !dbg !1447
  %arrayidx16 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv31, i64 %indvars.iv, !dbg !1447
  store float %conv, float* %arrayidx16, align 4, !dbg !1447, !tbaa !1007
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1445
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1445
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !1445
  br i1 %exitcond, label %for.inc17, label %for.body10, !dbg !1445

for.inc17:                                        ; preds = %for.body10
  %indvars.iv.next32 = add i64 %indvars.iv31, 1, !dbg !1439
  %lftr.wideiv33 = trunc i64 %indvars.iv.next32 to i32, !dbg !1439
  %exitcond34 = icmp eq i32 %lftr.wideiv33, %number, !dbg !1439
  br i1 %exitcond34, label %for.end19, label %for.body, !dbg !1439

for.end19:                                        ; preds = %for.inc17, %entry
  call void @llvm.lifetime.end(i64 4097, i8* %0) #4, !dbg !1448
  ret void, !dbg !1448
}

; Function Attrs: nounwind optsize uwtable
define void @read_edvecs(%struct._IO_FILE* %in, i32 %nr, %struct.t_edvecs* nocapture %vecs) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %in}, i64 0, metadata !537), !dbg !1449
  tail call void @llvm.dbg.value(metadata !{i32 %nr}, i64 0, metadata !538), !dbg !1449
  tail call void @llvm.dbg.value(metadata !{%struct.t_edvecs* %vecs}, i64 0, metadata !539), !dbg !1449
  %mon = getelementptr inbounds %struct.t_edvecs* %vecs, i64 0, i32 0, !dbg !1450
  tail call void @read_edvec(%struct._IO_FILE* %in, i32 %nr, %struct.t_eigvec* %mon) #8, !dbg !1450
  %linfix = getelementptr inbounds %struct.t_edvecs* %vecs, i64 0, i32 1, !dbg !1451
  tail call void @read_edvec(%struct._IO_FILE* %in, i32 %nr, %struct.t_eigvec* %linfix) #8, !dbg !1451
  %linacc = getelementptr inbounds %struct.t_edvecs* %vecs, i64 0, i32 2, !dbg !1452
  tail call void @read_edvec(%struct._IO_FILE* %in, i32 %nr, %struct.t_eigvec* %linacc) #8, !dbg !1452
  %radfix = getelementptr inbounds %struct.t_edvecs* %vecs, i64 0, i32 3, !dbg !1453
  tail call void @read_edvec(%struct._IO_FILE* %in, i32 %nr, %struct.t_eigvec* %radfix) #8, !dbg !1453
  %radacc = getelementptr inbounds %struct.t_edvecs* %vecs, i64 0, i32 4, !dbg !1454
  tail call void @read_edvec(%struct._IO_FILE* %in, i32 %nr, %struct.t_eigvec* %radacc) #8, !dbg !1454
  %radcon = getelementptr inbounds %struct.t_edvecs* %vecs, i64 0, i32 5, !dbg !1455
  tail call void @read_edvec(%struct._IO_FILE* %in, i32 %nr, %struct.t_eigvec* %radcon) #8, !dbg !1455
  ret void, !dbg !1456
}

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #3

; Function Attrs: optsize
declare i8* @fgets2(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define i32 @read_edint2(%struct._IO_FILE* %file) #0 {
entry:
  %line = alloca [4097 x i8], align 16
  %idum = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %file}, i64 0, metadata !516), !dbg !1457
  %0 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 0, !dbg !1458
  call void @llvm.lifetime.start(i64 4097, i8* %0) #4, !dbg !1458
  call void @llvm.dbg.declare(metadata !{[4097 x i8]* %line}, metadata !517), !dbg !1458
  call void @llvm.dbg.declare(metadata !{i32* %idum}, metadata !518), !dbg !1459
  %call = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %file) #7, !dbg !1460
  %call2 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str30, i64 0, i64 0), i32* %idum) #7, !dbg !1461
  call void @llvm.dbg.value(metadata !{i32* %idum}, i64 0, metadata !518), !dbg !1462
  %1 = load i32* %idum, align 4, !dbg !1462, !tbaa !994
  call void @llvm.lifetime.end(i64 4097, i8* %0) #4, !dbg !1463
  ret i32 %1, !dbg !1463
}

; Function Attrs: nounwind optsize uwtable
define void @read_edvec(%struct._IO_FILE* %in, i32 %nr, %struct.t_eigvec* nocapture %tvec) #0 {
entry:
  %idum = alloca i32, align 4
  %rdum = alloca double, align 8
  %line = alloca [4097 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %in}, i64 0, metadata !545), !dbg !1464
  call void @llvm.dbg.value(metadata !{i32 %nr}, i64 0, metadata !546), !dbg !1464
  call void @llvm.dbg.value(metadata !{%struct.t_eigvec* %tvec}, i64 0, metadata !547), !dbg !1464
  call void @llvm.dbg.declare(metadata !{i32* %idum}, metadata !549), !dbg !1465
  call void @llvm.dbg.declare(metadata !{double* %rdum}, metadata !550), !dbg !1466
  %0 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 0, !dbg !1467
  call void @llvm.lifetime.start(i64 4097, i8* %0) #4, !dbg !1467
  call void @llvm.dbg.declare(metadata !{[4097 x i8]* %line}, metadata !551), !dbg !1467
  %call = call i32 @read_edint(%struct._IO_FILE* %in) #8, !dbg !1468
  %neig = getelementptr inbounds %struct.t_eigvec* %tvec, i64 0, i32 0, !dbg !1468
  store i32 %call, i32* %neig, align 4, !dbg !1468, !tbaa !994
  %call2 = call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 360, i32 %call, i32 4) #7, !dbg !1469
  %1 = bitcast i8* %call2 to i32*, !dbg !1469
  %ieig = getelementptr inbounds %struct.t_eigvec* %tvec, i64 0, i32 1, !dbg !1469
  store i32* %1, i32** %ieig, align 8, !dbg !1469, !tbaa !990
  %2 = load i32* %neig, align 4, !dbg !1470, !tbaa !994
  %call4 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 361, i32 %2, i32 4) #7, !dbg !1470
  %3 = bitcast i8* %call4 to float*, !dbg !1470
  %stpsz = getelementptr inbounds %struct.t_eigvec* %tvec, i64 0, i32 2, !dbg !1470
  store float* %3, float** %stpsz, align 8, !dbg !1470, !tbaa !990
  %4 = load i32* %neig, align 4, !dbg !1471, !tbaa !994
  %call6 = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 362, i32 %4, i32 8) #7, !dbg !1471
  %5 = bitcast i8* %call6 to [3 x float]**, !dbg !1471
  %vec = getelementptr inbounds %struct.t_eigvec* %tvec, i64 0, i32 3, !dbg !1471
  store [3 x float]** %5, [3 x float]*** %vec, align 8, !dbg !1471, !tbaa !990
  %6 = load i32* %neig, align 4, !dbg !1472, !tbaa !994
  %call8 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 363, i32 %6, i32 4) #7, !dbg !1472
  %7 = bitcast i8* %call8 to float*, !dbg !1472
  %xproj = getelementptr inbounds %struct.t_eigvec* %tvec, i64 0, i32 4, !dbg !1472
  store float* %7, float** %xproj, align 8, !dbg !1472, !tbaa !990
  %8 = load i32* %neig, align 4, !dbg !1473, !tbaa !994
  %call10 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 364, i32 %8, i32 4) #7, !dbg !1473
  %9 = bitcast i8* %call10 to float*, !dbg !1473
  %vproj = getelementptr inbounds %struct.t_eigvec* %tvec, i64 0, i32 5, !dbg !1473
  store float* %9, float** %vproj, align 8, !dbg !1473, !tbaa !990
  %10 = load i32* %neig, align 4, !dbg !1474, !tbaa !994
  %call12 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 365, i32 %10, i32 4) #7, !dbg !1474
  %11 = bitcast i8* %call12 to float*, !dbg !1474
  %fproj = getelementptr inbounds %struct.t_eigvec* %tvec, i64 0, i32 6, !dbg !1474
  store float* %11, float** %fproj, align 8, !dbg !1474, !tbaa !990
  %12 = load i32* %neig, align 4, !dbg !1475, !tbaa !994
  %call14 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 366, i32 %12, i32 4) #7, !dbg !1475
  %13 = bitcast i8* %call14 to float*, !dbg !1475
  %refproj = getelementptr inbounds %struct.t_eigvec* %tvec, i64 0, i32 7, !dbg !1475
  store float* %13, float** %refproj, align 8, !dbg !1475, !tbaa !990
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !548), !dbg !1476
  %14 = load i32* %neig, align 4, !dbg !1476, !tbaa !994
  %cmp70 = icmp sgt i32 %14, 0, !dbg !1476
  br i1 %cmp70, label %for.body, label %for.end37, !dbg !1476

for.cond23.preheader:                             ; preds = %for.body
  %cmp2568 = icmp sgt i32 %19, 0, !dbg !1478
  br i1 %cmp2568, label %for.body27, label %for.end37, !dbg !1478

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.body ], [ 0, %entry ]
  %call16 = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %in) #7, !dbg !1480
  %call18 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str40, i64 0, i64 0), i32* %idum, double* %rdum) #7, !dbg !1482
  call void @llvm.dbg.value(metadata !{i32* %idum}, i64 0, metadata !549), !dbg !1483
  %15 = load i32* %idum, align 4, !dbg !1483, !tbaa !994
  %16 = load i32** %ieig, align 8, !dbg !1483, !tbaa !990
  %arrayidx = getelementptr inbounds i32* %16, i64 %indvars.iv72, !dbg !1483
  store i32 %15, i32* %arrayidx, align 4, !dbg !1483, !tbaa !994
  call void @llvm.dbg.value(metadata !{double* %rdum}, i64 0, metadata !550), !dbg !1484
  %17 = load double* %rdum, align 8, !dbg !1484, !tbaa !1434
  %conv = fptrunc double %17 to float, !dbg !1484
  %18 = load float** %stpsz, align 8, !dbg !1484, !tbaa !990
  %arrayidx22 = getelementptr inbounds float* %18, i64 %indvars.iv72, !dbg !1484
  store float %conv, float* %arrayidx22, align 4, !dbg !1484, !tbaa !1007
  %indvars.iv.next73 = add i64 %indvars.iv72, 1, !dbg !1476
  %19 = load i32* %neig, align 4, !dbg !1476, !tbaa !994
  %20 = trunc i64 %indvars.iv.next73 to i32, !dbg !1476
  %cmp = icmp slt i32 %20, %19, !dbg !1476
  br i1 %cmp, label %for.body, label %for.cond23.preheader, !dbg !1476

for.body27:                                       ; preds = %for.cond23.preheader, %for.body27
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body27 ], [ 0, %for.cond23.preheader ]
  %call28 = call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 374, i32 %nr, i32 12) #7, !dbg !1485
  %21 = bitcast i8* %call28 to [3 x float]*, !dbg !1485
  %22 = load [3 x float]*** %vec, align 8, !dbg !1485, !tbaa !990
  %arrayidx31 = getelementptr inbounds [3 x float]** %22, i64 %indvars.iv, !dbg !1485
  store [3 x float]* %21, [3 x float]** %arrayidx31, align 8, !dbg !1485, !tbaa !990
  %23 = load [3 x float]*** %vec, align 8, !dbg !1487, !tbaa !990
  %arrayidx34 = getelementptr inbounds [3 x float]** %23, i64 %indvars.iv, !dbg !1487
  %24 = load [3 x float]** %arrayidx34, align 8, !dbg !1487, !tbaa !990
  call void @scan_edvec(%struct._IO_FILE* %in, i32 %nr, [3 x float]* %24) #8, !dbg !1487
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1478
  %25 = load i32* %neig, align 4, !dbg !1478, !tbaa !994
  %26 = trunc i64 %indvars.iv.next to i32, !dbg !1478
  %cmp25 = icmp slt i32 %26, %25, !dbg !1478
  br i1 %cmp25, label %for.body27, label %for.end37, !dbg !1478

for.end37:                                        ; preds = %entry, %for.body27, %for.cond23.preheader
  call void @llvm.lifetime.end(i64 4097, i8* %0) #4, !dbg !1488
  ret void, !dbg !1488
}

; Function Attrs: nounwind optsize uwtable
define void @scan_edvec(%struct._IO_FILE* %in, i32 %nr, [3 x float]* nocapture %vec) #0 {
entry:
  %line = alloca [4097 x i8], align 16
  %x = alloca double, align 8
  %y = alloca double, align 8
  %z = alloca double, align 8
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %in}, i64 0, metadata !556), !dbg !1489
  call void @llvm.dbg.value(metadata !{i32 %nr}, i64 0, metadata !557), !dbg !1489
  call void @llvm.dbg.value(metadata !{[3 x float]* %vec}, i64 0, metadata !558), !dbg !1489
  %0 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 0, !dbg !1490
  call void @llvm.lifetime.start(i64 4097, i8* %0) #4, !dbg !1490
  call void @llvm.dbg.declare(metadata !{[4097 x i8]* %line}, metadata !559), !dbg !1490
  call void @llvm.dbg.declare(metadata !{double* %x}, metadata !561), !dbg !1491
  call void @llvm.dbg.declare(metadata !{double* %y}, metadata !562), !dbg !1491
  call void @llvm.dbg.declare(metadata !{double* %z}, metadata !563), !dbg !1491
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !560), !dbg !1492
  %cmp18 = icmp sgt i32 %nr, 0, !dbg !1492
  br i1 %cmp18, label %for.body, label %for.end, !dbg !1492

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %call = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %in) #7, !dbg !1494
  %call2 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([10 x i8]* @.str42, i64 0, i64 0), double* %x, double* %y, double* %z) #7, !dbg !1496
  call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !561), !dbg !1497
  %1 = load double* %x, align 8, !dbg !1497, !tbaa !1434
  %conv = fptrunc double %1 to float, !dbg !1497
  %arrayidx3 = getelementptr inbounds [3 x float]* %vec, i64 %indvars.iv, i64 0, !dbg !1497
  store float %conv, float* %arrayidx3, align 4, !dbg !1497, !tbaa !1007
  call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !562), !dbg !1498
  %2 = load double* %y, align 8, !dbg !1498, !tbaa !1434
  %conv4 = fptrunc double %2 to float, !dbg !1498
  %arrayidx7 = getelementptr inbounds [3 x float]* %vec, i64 %indvars.iv, i64 1, !dbg !1498
  store float %conv4, float* %arrayidx7, align 4, !dbg !1498, !tbaa !1007
  call void @llvm.dbg.value(metadata !{double* %z}, i64 0, metadata !563), !dbg !1499
  %3 = load double* %z, align 8, !dbg !1499, !tbaa !1434
  %conv8 = fptrunc double %3 to float, !dbg !1499
  %arrayidx11 = getelementptr inbounds [3 x float]* %vec, i64 %indvars.iv, i64 2, !dbg !1499
  store float %conv8, float* %arrayidx11, align 4, !dbg !1499, !tbaa !1007
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1492
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1492
  %exitcond = icmp eq i32 %lftr.wideiv, %nr, !dbg !1492
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1492

for.end:                                          ; preds = %for.body, %entry
  call void @llvm.lifetime.end(i64 4097, i8* %0) #4, !dbg !1500
  ret void, !dbg !1500
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
  call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !583), !dbg !1501
  call void @llvm.dbg.value(metadata !{[3 x float]* %xp}, i64 0, metadata !584), !dbg !1501
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !585), !dbg !1501
  call void @llvm.dbg.value(metadata !{[3 x float]* %R}, i64 0, metadata !586), !dbg !1501
  call void @llvm.dbg.declare(metadata !{i32* %irot}, metadata !592), !dbg !1502
  call void @llvm.dbg.value(metadata !1503, i64 0, metadata !593), !dbg !1504
  call void @llvm.dbg.value(metadata !1503, i64 0, metadata !596), !dbg !1504
  call void @llvm.lifetime.start(i64 48, i8* %0) #4, !dbg !1504
  call void @llvm.dbg.declare(metadata !{[6 x double]* %d}, metadata !597), !dbg !1504
  %1 = bitcast [3 x [3 x float]]* %vh to i8*, !dbg !1505
  call void @llvm.lifetime.start(i64 36, i8* %1) #4, !dbg !1505
  call void @llvm.dbg.declare(metadata !{[3 x [3 x float]]* %vh}, metadata !601), !dbg !1505
  %2 = bitcast [3 x [3 x float]]* %vk to i8*, !dbg !1505
  call void @llvm.lifetime.start(i64 36, i8* %2) #4, !dbg !1505
  call void @llvm.dbg.declare(metadata !{[3 x [3 x float]]* %vk}, metadata !602), !dbg !1505
  %3 = bitcast [3 x [3 x float]]* %u to i8*, !dbg !1505
  call void @llvm.lifetime.start(i64 36, i8* %3) #4, !dbg !1505
  call void @llvm.dbg.declare(metadata !{[3 x [3 x float]]* %u}, metadata !603), !dbg !1505
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 453, i32 6, i32 8) #7, !dbg !1506
  %4 = bitcast i8* %call to double**, !dbg !1506
  call void @llvm.dbg.value(metadata !{double** %4}, i64 0, metadata !593), !dbg !1506
  %call1 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 454, i32 6, i32 8) #7, !dbg !1508
  %5 = bitcast i8* %call1 to double**, !dbg !1508
  call void @llvm.dbg.value(metadata !{double** %5}, i64 0, metadata !596), !dbg !1508
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !591), !dbg !1509
  br label %for.body, !dbg !1509

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv425 = phi i64 [ 0, %entry ], [ %indvars.iv.next426, %for.body ]
  %call3 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 456, i32 6, i32 8) #7, !dbg !1511
  %6 = bitcast i8* %call3 to double*, !dbg !1511
  %arrayidx = getelementptr inbounds double** %4, i64 %indvars.iv425, !dbg !1511
  store double* %6, double** %arrayidx, align 8, !dbg !1511, !tbaa !990
  %call4 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 457, i32 6, i32 8) #7, !dbg !1513
  %7 = bitcast i8* %call4 to double*, !dbg !1513
  %arrayidx6 = getelementptr inbounds double** %5, i64 %indvars.iv425, !dbg !1513
  store double* %7, double** %arrayidx6, align 8, !dbg !1513, !tbaa !990
  %indvars.iv.next426 = add i64 %indvars.iv425, 1, !dbg !1509
  %lftr.wideiv427 = trunc i64 %indvars.iv.next426 to i32, !dbg !1509
  %exitcond428 = icmp eq i32 %lftr.wideiv427, 6, !dbg !1509
  br i1 %exitcond428, label %for.body9, label %for.body, !dbg !1509

for.body9:                                        ; preds = %for.body, %for.inc26
  %indvars.iv421 = phi i64 [ %indvars.iv.next422, %for.inc26 ], [ 0, %for.body ]
  %arrayidx11 = getelementptr inbounds [6 x double]* %d, i64 0, i64 %indvars.iv421, !dbg !1514
  store double 0.000000e+00, double* %arrayidx11, align 8, !dbg !1514, !tbaa !1434
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !590), !dbg !1517
  %arrayidx17 = getelementptr inbounds double** %4, i64 %indvars.iv421, !dbg !1519
  %8 = load double** %arrayidx17, align 8, !dbg !1519, !tbaa !990
  %arrayidx21 = getelementptr inbounds double** %5, i64 %indvars.iv421, !dbg !1521
  %9 = load double** %arrayidx21, align 8, !dbg !1521, !tbaa !990
  br label %for.body14, !dbg !1517

for.body14:                                       ; preds = %for.body14, %for.body9
  %indvars.iv417 = phi i64 [ 0, %for.body9 ], [ %indvars.iv.next418, %for.body14 ]
  %arrayidx18 = getelementptr inbounds double* %8, i64 %indvars.iv417, !dbg !1519
  store double 0.000000e+00, double* %arrayidx18, align 8, !dbg !1519, !tbaa !1434
  %arrayidx22 = getelementptr inbounds double* %9, i64 %indvars.iv417, !dbg !1521
  store double 0.000000e+00, double* %arrayidx22, align 8, !dbg !1521, !tbaa !1434
  %indvars.iv.next418 = add i64 %indvars.iv417, 1, !dbg !1517
  %lftr.wideiv419 = trunc i64 %indvars.iv.next418 to i32, !dbg !1517
  %exitcond420 = icmp eq i32 %lftr.wideiv419, 6, !dbg !1517
  br i1 %exitcond420, label %for.inc26, label %for.body14, !dbg !1517

for.inc26:                                        ; preds = %for.body14
  %indvars.iv.next422 = add i64 %indvars.iv421, 1, !dbg !1522
  %lftr.wideiv423 = trunc i64 %indvars.iv.next422 to i32, !dbg !1522
  %exitcond424 = icmp eq i32 %lftr.wideiv423, 6, !dbg !1522
  br i1 %exitcond424, label %for.end28, label %for.body9, !dbg !1522

for.end28:                                        ; preds = %for.inc26
  call void @llvm.dbg.value(metadata !1374, i64 0, metadata !1523) #4, !dbg !1525
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 36, i32 16, i1 false) #4, !dbg !1526
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !589), !dbg !1527
  %cmp30364 = icmp sgt i32 %natoms, 0, !dbg !1527
  br i1 %cmp30364, label %for.cond32.preheader, label %for.body70.lr.ph, !dbg !1527

for.cond32.preheader:                             ; preds = %for.end28, %for.inc60
  %indvars.iv413 = phi i64 [ %indvars.iv.next414, %for.inc60 ], [ 0, %for.end28 ]
  br label %for.body34, !dbg !1529

for.body34:                                       ; preds = %for.inc57, %for.cond32.preheader
  %indvars.iv409 = phi i64 [ 0, %for.cond32.preheader ], [ %indvars.iv.next410, %for.inc57 ]
  %arrayidx38 = getelementptr inbounds [3 x float]* %xp, i64 %indvars.iv413, i64 %indvars.iv409, !dbg !1532
  %10 = load float* %arrayidx38, align 4, !dbg !1532, !tbaa !1007
  %conv = fpext float %10 to double, !dbg !1532
  call void @llvm.dbg.value(metadata !{double %conv}, i64 0, metadata !600), !dbg !1532
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !588), !dbg !1534
  br label %for.body42, !dbg !1534

for.body42:                                       ; preds = %for.body42, %for.body34
  %indvars.iv405 = phi i64 [ 0, %for.body34 ], [ %indvars.iv.next406, %for.body42 ]
  %arrayidx46 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv413, i64 %indvars.iv405, !dbg !1536
  %11 = load float* %arrayidx46, align 4, !dbg !1536, !tbaa !1007
  %conv47 = fpext float %11 to double, !dbg !1536
  call void @llvm.dbg.value(metadata !{double %conv47}, i64 0, metadata !599), !dbg !1536
  %mul = fmul double %conv, %conv47, !dbg !1538
  %arrayidx51 = getelementptr inbounds [3 x [3 x float]]* %u, i64 0, i64 %indvars.iv409, i64 %indvars.iv405, !dbg !1538
  %12 = load float* %arrayidx51, align 4, !dbg !1538, !tbaa !1007
  %conv52 = fpext float %12 to double, !dbg !1538
  %add = fadd double %conv52, %mul, !dbg !1538
  %conv53 = fptrunc double %add to float, !dbg !1538
  store float %conv53, float* %arrayidx51, align 4, !dbg !1538, !tbaa !1007
  %indvars.iv.next406 = add i64 %indvars.iv405, 1, !dbg !1534
  %lftr.wideiv407 = trunc i64 %indvars.iv.next406 to i32, !dbg !1534
  %exitcond408 = icmp eq i32 %lftr.wideiv407, 3, !dbg !1534
  br i1 %exitcond408, label %for.inc57, label %for.body42, !dbg !1534

for.inc57:                                        ; preds = %for.body42
  %indvars.iv.next410 = add i64 %indvars.iv409, 1, !dbg !1529
  %lftr.wideiv411 = trunc i64 %indvars.iv.next410 to i32, !dbg !1529
  %exitcond412 = icmp eq i32 %lftr.wideiv411, 3, !dbg !1529
  br i1 %exitcond412, label %for.inc60, label %for.body34, !dbg !1529

for.inc60:                                        ; preds = %for.inc57
  %indvars.iv.next414 = add i64 %indvars.iv413, 1, !dbg !1527
  %lftr.wideiv415 = trunc i64 %indvars.iv.next414 to i32, !dbg !1527
  %exitcond416 = icmp eq i32 %lftr.wideiv415, %natoms, !dbg !1527
  br i1 %exitcond416, label %for.body70.lr.ph, label %for.cond32.preheader, !dbg !1527

for.body70.lr.ph:                                 ; preds = %for.inc107, %for.inc60, %for.end28
  %indvars.iv400 = phi i64 [ %indvars.iv.next401, %for.inc107 ], [ 0, %for.inc60 ], [ 0, %for.end28 ]
  %indvars.iv396 = phi i32 [ %indvars.iv.next397, %for.inc107 ], [ 1, %for.inc60 ], [ 1, %for.end28 ], !dbg !1539
  %13 = trunc i64 %indvars.iv400 to i32, !dbg !1542
  %cmp71 = icmp sgt i32 %13, 2, !dbg !1542
  %14 = add nsw i64 %indvars.iv400, -3, !dbg !1543
  %arrayidx83 = getelementptr inbounds double** %4, i64 %indvars.iv400, !dbg !1543
  br label %for.body70, !dbg !1539

for.body70:                                       ; preds = %for.inc104, %for.body70.lr.ph
  %indvars.iv394 = phi i64 [ %indvars.iv.next395, %for.inc104 ], [ 0, %for.body70.lr.ph ]
  %15 = trunc i64 %indvars.iv394 to i32, !dbg !1542
  %cmp73 = icmp slt i32 %15, 3, !dbg !1542
  %or.cond = and i1 %cmp71, %cmp73, !dbg !1542
  br i1 %or.cond, label %if.then75, label %if.else, !dbg !1542

if.then75:                                        ; preds = %for.body70
  %arrayidx79 = getelementptr inbounds [3 x [3 x float]]* %u, i64 0, i64 %14, i64 %indvars.iv394, !dbg !1543
  %16 = load float* %arrayidx79, align 4, !dbg !1543, !tbaa !1007
  %conv80 = fpext float %16 to double, !dbg !1543
  %17 = load double** %arrayidx83, align 8, !dbg !1543, !tbaa !990
  %arrayidx84 = getelementptr inbounds double* %17, i64 %indvars.iv394, !dbg !1543
  store double %conv80, double* %arrayidx84, align 8, !dbg !1543, !tbaa !1434
  %arrayidx93 = getelementptr inbounds double** %4, i64 %indvars.iv394, !dbg !1545
  %18 = load double** %arrayidx93, align 8, !dbg !1545, !tbaa !990
  %arrayidx94 = getelementptr inbounds double* %18, i64 %indvars.iv400, !dbg !1545
  store double %conv80, double* %arrayidx94, align 8, !dbg !1545, !tbaa !1434
  br label %for.inc104, !dbg !1546

if.else:                                          ; preds = %for.body70
  %19 = load double** %arrayidx83, align 8, !dbg !1547, !tbaa !990
  %arrayidx98 = getelementptr inbounds double* %19, i64 %indvars.iv394, !dbg !1547
  store double 0.000000e+00, double* %arrayidx98, align 8, !dbg !1547, !tbaa !1434
  %arrayidx101 = getelementptr inbounds double** %4, i64 %indvars.iv394, !dbg !1549
  %20 = load double** %arrayidx101, align 8, !dbg !1549, !tbaa !990
  %arrayidx102 = getelementptr inbounds double* %20, i64 %indvars.iv400, !dbg !1549
  store double 0.000000e+00, double* %arrayidx102, align 8, !dbg !1549, !tbaa !1434
  br label %for.inc104

for.inc104:                                       ; preds = %if.then75, %if.else
  %indvars.iv.next395 = add i64 %indvars.iv394, 1, !dbg !1539
  %lftr.wideiv398 = trunc i64 %indvars.iv.next395 to i32, !dbg !1539
  %exitcond399 = icmp eq i32 %lftr.wideiv398, %indvars.iv396, !dbg !1539
  br i1 %exitcond399, label %for.inc107, label %for.body70, !dbg !1539

for.inc107:                                       ; preds = %for.inc104
  %indvars.iv.next401 = add i64 %indvars.iv400, 1, !dbg !1550
  %indvars.iv.next397 = add i32 %indvars.iv396, 1, !dbg !1550
  %lftr.wideiv403 = trunc i64 %indvars.iv.next401 to i32, !dbg !1550
  %exitcond404 = icmp eq i32 %lftr.wideiv403, 6, !dbg !1550
  br i1 %exitcond404, label %for.end109, label %for.body70.lr.ph, !dbg !1550

for.end109:                                       ; preds = %for.inc107
  %arraydecay110 = getelementptr inbounds [6 x double]* %d, i64 0, i64 0, !dbg !1551
  call void @jacobi(double** %4, i32 6, double* %arraydecay110, double** %5, i32* %irot) #7, !dbg !1551
  call void @llvm.dbg.value(metadata !{i32* %irot}, i64 0, metadata !592), !dbg !1552
  %21 = load i32* %irot, align 4, !dbg !1552, !tbaa !994
  %cmp111 = icmp eq i32 %21, 0, !dbg !1552
  br i1 %cmp111, label %if.then113, label %for.cond120.preheader, !dbg !1552

if.then113:                                       ; preds = %for.end109
  %22 = load %struct._IO_FILE** @stderr, align 8, !dbg !1553, !tbaa !990
  %23 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str47, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %22), !dbg !1553
  br label %for.cond120.preheader, !dbg !1555

for.cond120.preheader:                            ; preds = %for.end109, %if.then113, %for.inc167
  %indvars.iv390 = phi i64 [ %indvars.iv.next391, %for.inc167 ], [ 0, %if.then113 ], [ 0, %for.end109 ]
  %index.0358 = phi i32 [ %index.2, %for.inc167 ], [ 0, %if.then113 ], [ 0, %for.end109 ]
  br label %for.body123, !dbg !1556

for.body123:                                      ; preds = %for.inc134, %for.cond120.preheader
  %indvars.iv381 = phi i64 [ 0, %for.cond120.preheader ], [ %indvars.iv.next382, %for.inc134 ]
  %max_d.0355 = phi float [ -1.000000e+03, %for.cond120.preheader ], [ %max_d.1, %for.inc134 ]
  %index.1354 = phi i32 [ %index.0358, %for.cond120.preheader ], [ %index.2, %for.inc134 ]
  %arrayidx125 = getelementptr inbounds [6 x double]* %d, i64 0, i64 %indvars.iv381, !dbg !1560
  %24 = load double* %arrayidx125, align 8, !dbg !1560, !tbaa !1434
  %conv126 = fpext float %max_d.0355 to double, !dbg !1560
  %cmp127 = fcmp ogt double %24, %conv126, !dbg !1560
  br i1 %cmp127, label %if.then129, label %for.inc134, !dbg !1560

if.then129:                                       ; preds = %for.body123
  %conv132 = fptrunc double %24 to float, !dbg !1561
  call void @llvm.dbg.value(metadata !{float %conv132}, i64 0, metadata !605), !dbg !1561
  call void @llvm.dbg.value(metadata !1563, i64 0, metadata !604), !dbg !1564
  %25 = trunc i64 %indvars.iv381 to i32, !dbg !1565
  br label %for.inc134, !dbg !1565

for.inc134:                                       ; preds = %for.body123, %if.then129
  %index.2 = phi i32 [ %25, %if.then129 ], [ %index.1354, %for.body123 ]
  %max_d.1 = phi float [ %conv132, %if.then129 ], [ %max_d.0355, %for.body123 ]
  %indvars.iv.next382 = add i64 %indvars.iv381, 1, !dbg !1556
  %lftr.wideiv383 = trunc i64 %indvars.iv.next382 to i32, !dbg !1556
  %exitcond384 = icmp eq i32 %lftr.wideiv383, 6, !dbg !1556
  br i1 %exitcond384, label %for.end136, label %for.body123, !dbg !1556

for.end136:                                       ; preds = %for.inc134
  %idxprom137 = sext i32 %index.2 to i64, !dbg !1566
  %arrayidx138 = getelementptr inbounds [6 x double]* %d, i64 0, i64 %idxprom137, !dbg !1566
  store double -1.000000e+04, double* %arrayidx138, align 8, !dbg !1566, !tbaa !1434
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !591), !dbg !1567
  br label %for.body142, !dbg !1567

for.body142:                                      ; preds = %for.body142, %for.end136
  %indvars.iv385 = phi i64 [ 0, %for.end136 ], [ %indvars.iv.next386, %for.body142 ]
  %arrayidx145 = getelementptr inbounds double** %5, i64 %indvars.iv385, !dbg !1569
  %26 = load double** %arrayidx145, align 8, !dbg !1569, !tbaa !990
  %arrayidx146 = getelementptr inbounds double* %26, i64 %idxprom137, !dbg !1569
  %27 = load double* %arrayidx146, align 8, !dbg !1569, !tbaa !1434
  %mul147 = fmul double %27, 0x3FF6A09E667F3BCD, !dbg !1569
  %conv148 = fptrunc double %mul147 to float, !dbg !1569
  %arrayidx152 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 %indvars.iv390, i64 %indvars.iv385, !dbg !1569
  store float %conv148, float* %arrayidx152, align 4, !dbg !1569, !tbaa !1007
  %28 = add nsw i64 %indvars.iv385, 3, !dbg !1571
  %arrayidx156 = getelementptr inbounds double** %5, i64 %28, !dbg !1571
  %29 = load double** %arrayidx156, align 8, !dbg !1571, !tbaa !990
  %arrayidx157 = getelementptr inbounds double* %29, i64 %idxprom137, !dbg !1571
  %30 = load double* %arrayidx157, align 8, !dbg !1571, !tbaa !1434
  %mul158 = fmul double %30, 0x3FF6A09E667F3BCD, !dbg !1571
  %conv159 = fptrunc double %mul158 to float, !dbg !1571
  %arrayidx163 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 %indvars.iv390, i64 %indvars.iv385, !dbg !1571
  store float %conv159, float* %arrayidx163, align 4, !dbg !1571, !tbaa !1007
  %indvars.iv.next386 = add i64 %indvars.iv385, 1, !dbg !1567
  %lftr.wideiv388 = trunc i64 %indvars.iv.next386 to i32, !dbg !1567
  %exitcond389 = icmp eq i32 %lftr.wideiv388, 3, !dbg !1567
  br i1 %exitcond389, label %for.inc167, label %for.body142, !dbg !1567

for.inc167:                                       ; preds = %for.body142
  %indvars.iv.next391 = add i64 %indvars.iv390, 1, !dbg !1572
  %lftr.wideiv392 = trunc i64 %indvars.iv.next391 to i32, !dbg !1572
  %exitcond393 = icmp eq i32 %lftr.wideiv392, 3, !dbg !1572
  br i1 %exitcond393, label %for.cond174.preheader, label %for.cond120.preheader, !dbg !1572

for.cond174.preheader:                            ; preds = %for.inc167, %for.inc208
  %indvars.iv377 = phi i64 [ %indvars.iv.next378, %for.inc208 ], [ 0, %for.inc167 ]
  %arrayidx183 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 0, i64 %indvars.iv377, !dbg !1573
  %31 = load float* %arrayidx183, align 4, !dbg !1573, !tbaa !1007
  %arrayidx190 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 1, i64 %indvars.iv377, !dbg !1573
  %32 = load float* %arrayidx190, align 4, !dbg !1573, !tbaa !1007
  %arrayidx198 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 2, i64 %indvars.iv377, !dbg !1573
  %33 = load float* %arrayidx198, align 4, !dbg !1573, !tbaa !1007
  br label %for.body177, !dbg !1576

for.body177:                                      ; preds = %for.body177, %for.cond174.preheader
  %indvars.iv373 = phi i64 [ 0, %for.cond174.preheader ], [ %indvars.iv.next374, %for.body177 ]
  %arrayidx180 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 0, i64 %indvars.iv373, !dbg !1573
  %34 = load float* %arrayidx180, align 4, !dbg !1573, !tbaa !1007
  %mul184 = fmul float %34, %31, !dbg !1573
  %arrayidx187 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 1, i64 %indvars.iv373, !dbg !1573
  %35 = load float* %arrayidx187, align 4, !dbg !1573, !tbaa !1007
  %mul191 = fmul float %35, %32, !dbg !1573
  %add192 = fadd float %mul184, %mul191, !dbg !1573
  %arrayidx195 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 2, i64 %indvars.iv373, !dbg !1573
  %36 = load float* %arrayidx195, align 4, !dbg !1573, !tbaa !1007
  %mul199 = fmul float %36, %33, !dbg !1573
  %add200 = fadd float %add192, %mul199, !dbg !1573
  %arrayidx204 = getelementptr inbounds [3 x float]* %R, i64 %indvars.iv377, i64 %indvars.iv373, !dbg !1573
  store float %add200, float* %arrayidx204, align 4, !dbg !1573, !tbaa !1007
  %indvars.iv.next374 = add i64 %indvars.iv373, 1, !dbg !1576
  %lftr.wideiv375 = trunc i64 %indvars.iv.next374 to i32, !dbg !1576
  %exitcond376 = icmp eq i32 %lftr.wideiv375, 3, !dbg !1576
  br i1 %exitcond376, label %for.inc208, label %for.body177, !dbg !1576

for.inc208:                                       ; preds = %for.body177
  %indvars.iv.next378 = add i64 %indvars.iv377, 1, !dbg !1577
  %lftr.wideiv379 = trunc i64 %indvars.iv.next378 to i32, !dbg !1577
  %exitcond380 = icmp eq i32 %lftr.wideiv379, 3, !dbg !1577
  br i1 %exitcond380, label %for.end210, label %for.cond174.preheader, !dbg !1577

for.end210:                                       ; preds = %for.inc208
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %R}, i64 0, metadata !1578), !dbg !1580
  %arrayidx1.i = getelementptr inbounds [3 x float]* %R, i64 0, i64 0, !dbg !1581
  %37 = load float* %arrayidx1.i, align 4, !dbg !1581, !tbaa !1007
  %arrayidx3.i = getelementptr inbounds [3 x float]* %R, i64 1, i64 1, !dbg !1581
  %38 = load float* %arrayidx3.i, align 4, !dbg !1581, !tbaa !1007
  %arrayidx5.i = getelementptr inbounds [3 x float]* %R, i64 2, i64 2, !dbg !1581
  %39 = load float* %arrayidx5.i, align 4, !dbg !1581, !tbaa !1007
  %mul.i = fmul float %38, %39, !dbg !1581
  %arrayidx7.i = getelementptr inbounds [3 x float]* %R, i64 2, i64 1, !dbg !1581
  %40 = load float* %arrayidx7.i, align 4, !dbg !1581, !tbaa !1007
  %arrayidx9.i = getelementptr inbounds [3 x float]* %R, i64 1, i64 2, !dbg !1581
  %41 = load float* %arrayidx9.i, align 4, !dbg !1581, !tbaa !1007
  %mul10.i = fmul float %40, %41, !dbg !1581
  %sub.i = fsub float %mul.i, %mul10.i, !dbg !1581
  %mul11.i = fmul float %37, %sub.i, !dbg !1581
  %arrayidx13.i = getelementptr inbounds [3 x float]* %R, i64 1, i64 0, !dbg !1581
  %42 = load float* %arrayidx13.i, align 4, !dbg !1581, !tbaa !1007
  %arrayidx15.i = getelementptr inbounds [3 x float]* %R, i64 0, i64 1, !dbg !1581
  %43 = load float* %arrayidx15.i, align 4, !dbg !1581, !tbaa !1007
  %mul18.i = fmul float %39, %43, !dbg !1581
  %arrayidx22.i = getelementptr inbounds [3 x float]* %R, i64 0, i64 2, !dbg !1581
  %44 = load float* %arrayidx22.i, align 4, !dbg !1581, !tbaa !1007
  %mul23.i = fmul float %40, %44, !dbg !1581
  %sub24.i = fsub float %mul18.i, %mul23.i, !dbg !1581
  %mul25.i = fmul float %42, %sub24.i, !dbg !1581
  %sub26.i = fsub float %mul11.i, %mul25.i, !dbg !1581
  %arrayidx28.i = getelementptr inbounds [3 x float]* %R, i64 2, i64 0, !dbg !1581
  %45 = load float* %arrayidx28.i, align 4, !dbg !1581, !tbaa !1007
  %mul33.i = fmul float %41, %43, !dbg !1581
  %mul38.i = fmul float %38, %44, !dbg !1581
  %sub39.i = fsub float %mul33.i, %mul38.i, !dbg !1581
  %mul40.i = fmul float %45, %sub39.i, !dbg !1581
  %add.i = fadd float %mul40.i, %sub26.i, !dbg !1581
  %cmp212 = fcmp olt float %add.i, 0.000000e+00, !dbg !1579
  br i1 %cmp212, label %for.cond219.preheader, label %if.end256, !dbg !1579

for.cond219.preheader:                            ; preds = %for.end210, %for.inc253
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %for.inc253 ], [ 0, %for.end210 ]
  %arrayidx228 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 0, i64 %indvars.iv369, !dbg !1582
  %46 = load float* %arrayidx228, align 4, !dbg !1582, !tbaa !1007
  %arrayidx235 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 1, i64 %indvars.iv369, !dbg !1582
  %47 = load float* %arrayidx235, align 4, !dbg !1582, !tbaa !1007
  %arrayidx243 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 2, i64 %indvars.iv369, !dbg !1582
  %48 = load float* %arrayidx243, align 4, !dbg !1582, !tbaa !1007
  br label %for.body222, !dbg !1585

for.body222:                                      ; preds = %for.body222, %for.cond219.preheader
  %indvars.iv = phi i64 [ 0, %for.cond219.preheader ], [ %indvars.iv.next, %for.body222 ]
  %arrayidx225 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 0, i64 %indvars.iv, !dbg !1582
  %49 = load float* %arrayidx225, align 4, !dbg !1582, !tbaa !1007
  %mul229 = fmul float %49, %46, !dbg !1582
  %arrayidx232 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 1, i64 %indvars.iv, !dbg !1582
  %50 = load float* %arrayidx232, align 4, !dbg !1582, !tbaa !1007
  %mul236 = fmul float %50, %47, !dbg !1582
  %add237 = fadd float %mul229, %mul236, !dbg !1582
  %arrayidx240 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 2, i64 %indvars.iv, !dbg !1582
  %51 = load float* %arrayidx240, align 4, !dbg !1582, !tbaa !1007
  %mul244 = fmul float %51, %48, !dbg !1582
  %sub245 = fsub float %add237, %mul244, !dbg !1582
  %arrayidx249 = getelementptr inbounds [3 x float]* %R, i64 %indvars.iv369, i64 %indvars.iv, !dbg !1582
  store float %sub245, float* %arrayidx249, align 4, !dbg !1582, !tbaa !1007
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1585
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1585
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !1585
  br i1 %exitcond, label %for.inc253, label %for.body222, !dbg !1585

for.inc253:                                       ; preds = %for.body222
  %indvars.iv.next370 = add i64 %indvars.iv369, 1, !dbg !1586
  %lftr.wideiv371 = trunc i64 %indvars.iv.next370 to i32, !dbg !1586
  %exitcond372 = icmp eq i32 %lftr.wideiv371, 3, !dbg !1586
  br i1 %exitcond372, label %if.end256, label %for.cond219.preheader, !dbg !1586

if.end256:                                        ; preds = %for.inc253, %for.end210
  call void @llvm.lifetime.end(i64 36, i8* %3) #4, !dbg !1587
  call void @llvm.lifetime.end(i64 36, i8* %2) #4, !dbg !1587
  call void @llvm.lifetime.end(i64 36, i8* %1) #4, !dbg !1587
  call void @llvm.lifetime.end(i64 48, i8* %0) #4, !dbg !1587
  ret void, !dbg !1587
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #2

; Function Attrs: optsize
declare void @jacobi(double**, i32, double*, double**, i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @do_project([3 x float]* nocapture %x, %struct.t_eigvec* nocapture %vec, %struct.t_edpar* nocapture %edi, i8* nocapture %mode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !631), !dbg !1588
  tail call void @llvm.dbg.value(metadata !{%struct.t_eigvec* %vec}, i64 0, metadata !632), !dbg !1588
  tail call void @llvm.dbg.value(metadata !{%struct.t_edpar* %edi}, i64 0, metadata !633), !dbg !1588
  tail call void @llvm.dbg.value(metadata !{i8* %mode}, i64 0, metadata !634), !dbg !1588
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !635), !dbg !1589
  %neig = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 0, !dbg !1589
  %0 = load i32* %neig, align 4, !dbg !1589, !tbaa !994
  %cmp67 = icmp sgt i32 %0, 0, !dbg !1589
  br i1 %cmp67, label %for.cond1.preheader.lr.ph, label %for.end40, !dbg !1589

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %nr = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0, !dbg !1591
  %xproj = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 4, !dbg !1594
  %vproj = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 5, !dbg !1595
  %fproj = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 6, !dbg !1596
  %vec9 = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 3, !dbg !1597
  %anrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1, !dbg !1597
  %.pre = load i32* %nr, align 4, !dbg !1591, !tbaa !994
  br label %for.cond1.preheader, !dbg !1589

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc38
  %indvars.iv71 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next72, %for.inc38 ]
  %cmp264 = icmp sgt i32 %.pre, 0, !dbg !1591
  br i1 %cmp264, label %for.cond4.preheader.lr.ph, label %for.end21, !dbg !1591

for.cond4.preheader.lr.ph:                        ; preds = %for.cond1.preheader
  %1 = load [3 x float]*** %vec9, align 8, !dbg !1597, !tbaa !990
  %arrayidx = getelementptr inbounds [3 x float]** %1, i64 %indvars.iv71, !dbg !1597
  %2 = load [3 x float]** %arrayidx, align 8, !dbg !1597, !tbaa !990
  %3 = load i32** %anrs, align 8, !dbg !1597, !tbaa !990
  br label %for.cond4.preheader, !dbg !1591

for.cond4.preheader:                              ; preds = %for.cond4.preheader.lr.ph, %for.inc19
  %indvars.iv69 = phi i64 [ 0, %for.cond4.preheader.lr.ph ], [ %indvars.iv.next70, %for.inc19 ]
  %proj.066 = phi float [ 0.000000e+00, %for.cond4.preheader.lr.ph ], [ %add, %for.inc19 ]
  %arrayidx15 = getelementptr inbounds i32* %3, i64 %indvars.iv69, !dbg !1597
  %4 = load i32* %arrayidx15, align 4, !dbg !1597, !tbaa !994
  %idxprom16 = sext i32 %4 to i64, !dbg !1597
  br label %for.body6, !dbg !1600

for.body6:                                        ; preds = %for.body6, %for.cond4.preheader
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.body6 ]
  %proj.163 = phi float [ %proj.066, %for.cond4.preheader ], [ %add, %for.body6 ]
  %arrayidx11 = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv69, i64 %indvars.iv, !dbg !1597
  %5 = load float* %arrayidx11, align 4, !dbg !1597, !tbaa !1007
  %arrayidx18 = getelementptr inbounds [3 x float]* %x, i64 %idxprom16, i64 %indvars.iv, !dbg !1597
  %6 = load float* %arrayidx18, align 4, !dbg !1597, !tbaa !1007
  %mul = fmul float %5, %6, !dbg !1597
  %add = fadd float %proj.163, %mul, !dbg !1597
  tail call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !638), !dbg !1597
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1600
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1600
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !1600
  br i1 %exitcond, label %for.inc19, label %for.body6, !dbg !1600

for.inc19:                                        ; preds = %for.body6
  %indvars.iv.next70 = add i64 %indvars.iv69, 1, !dbg !1591
  %7 = trunc i64 %indvars.iv.next70 to i32, !dbg !1591
  %cmp2 = icmp slt i32 %7, %.pre, !dbg !1591
  br i1 %cmp2, label %for.cond4.preheader, label %for.end21, !dbg !1591

for.end21:                                        ; preds = %for.inc19, %for.cond1.preheader
  %proj.0.lcssa = phi float [ 0.000000e+00, %for.cond1.preheader ], [ %add, %for.inc19 ]
  %call = tail call i32 @strcmp(i8* %mode, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #9, !dbg !1594
  %cmp22 = icmp eq i32 %call, 0, !dbg !1594
  br i1 %cmp22, label %if.then, label %if.else, !dbg !1594

if.then:                                          ; preds = %for.end21
  %8 = load float** %xproj, align 8, !dbg !1594, !tbaa !990
  %arrayidx24 = getelementptr inbounds float* %8, i64 %indvars.iv71, !dbg !1594
  store float %proj.0.lcssa, float* %arrayidx24, align 4, !dbg !1594, !tbaa !1007
  br label %for.inc38, !dbg !1594

if.else:                                          ; preds = %for.end21
  %call25 = tail call i32 @strcmp(i8* %mode, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #9, !dbg !1595
  %cmp26 = icmp eq i32 %call25, 0, !dbg !1595
  br i1 %cmp26, label %if.then27, label %if.else30, !dbg !1595

if.then27:                                        ; preds = %if.else
  %9 = load float** %vproj, align 8, !dbg !1595, !tbaa !990
  %arrayidx29 = getelementptr inbounds float* %9, i64 %indvars.iv71, !dbg !1595
  store float %proj.0.lcssa, float* %arrayidx29, align 4, !dbg !1595, !tbaa !1007
  br label %for.inc38, !dbg !1595

if.else30:                                        ; preds = %if.else
  %call31 = tail call i32 @strcmp(i8* %mode, i8* getelementptr inbounds ([2 x i8]* @.str49, i64 0, i64 0)) #9, !dbg !1596
  %cmp32 = icmp eq i32 %call31, 0, !dbg !1596
  br i1 %cmp32, label %if.then33, label %for.inc38, !dbg !1596

if.then33:                                        ; preds = %if.else30
  %10 = load float** %fproj, align 8, !dbg !1596, !tbaa !990
  %arrayidx35 = getelementptr inbounds float* %10, i64 %indvars.iv71, !dbg !1596
  store float %proj.0.lcssa, float* %arrayidx35, align 4, !dbg !1596, !tbaa !1007
  br label %for.inc38, !dbg !1596

for.inc38:                                        ; preds = %if.then, %if.else30, %if.then33, %if.then27
  %indvars.iv.next72 = add i64 %indvars.iv71, 1, !dbg !1589
  %11 = trunc i64 %indvars.iv.next72 to i32, !dbg !1589
  %cmp = icmp slt i32 %11, %0, !dbg !1589
  br i1 %cmp, label %for.cond1.preheader, label %for.end40, !dbg !1589

for.end40:                                        ; preds = %for.inc38, %entry
  ret void, !dbg !1601
}

; Function Attrs: nounwind optsize readonly uwtable
define float @do_projectx(%struct.t_edpar* nocapture %edi, [3 x float]* nocapture %x, [3 x float]* nocapture %vec) #6 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_edpar* %edi}, i64 0, metadata !654), !dbg !1602
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !655), !dbg !1602
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %vec}, i64 0, metadata !656), !dbg !1602
  tail call void @llvm.dbg.value(metadata !1374, i64 0, metadata !659), !dbg !1603
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !657), !dbg !1604
  %nr = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0, !dbg !1604
  %0 = load i32* %nr, align 4, !dbg !1604, !tbaa !994
  %cmp26 = icmp sgt i32 %0, 0, !dbg !1604
  br i1 %cmp26, label %for.cond1.preheader.lr.ph, label %for.end15, !dbg !1604

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %anrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1, !dbg !1606
  %1 = load i32** %anrs, align 8, !dbg !1606, !tbaa !990
  br label %for.cond1.preheader, !dbg !1604

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc13
  %indvars.iv29 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next30, %for.inc13 ]
  %proj.028 = phi float [ 0.000000e+00, %for.cond1.preheader.lr.ph ], [ %add, %for.inc13 ]
  %arrayidx9 = getelementptr inbounds i32* %1, i64 %indvars.iv29, !dbg !1606
  %2 = load i32* %arrayidx9, align 4, !dbg !1606, !tbaa !994
  %idxprom10 = sext i32 %2 to i64, !dbg !1606
  br label %for.body3, !dbg !1608

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %proj.125 = phi float [ %proj.028, %for.cond1.preheader ], [ %add, %for.body3 ]
  %arrayidx5 = getelementptr inbounds [3 x float]* %vec, i64 %indvars.iv29, i64 %indvars.iv, !dbg !1606
  %3 = load float* %arrayidx5, align 4, !dbg !1606, !tbaa !1007
  %arrayidx12 = getelementptr inbounds [3 x float]* %x, i64 %idxprom10, i64 %indvars.iv, !dbg !1606
  %4 = load float* %arrayidx12, align 4, !dbg !1606, !tbaa !1007
  %mul = fmul float %3, %4, !dbg !1606
  %add = fadd float %proj.125, %mul, !dbg !1606
  tail call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !659), !dbg !1606
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1608
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1608
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !1608
  br i1 %exitcond, label %for.inc13, label %for.body3, !dbg !1608

for.inc13:                                        ; preds = %for.body3
  %indvars.iv.next30 = add i64 %indvars.iv29, 1, !dbg !1604
  %5 = trunc i64 %indvars.iv.next30 to i32, !dbg !1604
  %cmp = icmp slt i32 %5, %0, !dbg !1604
  br i1 %cmp, label %for.cond1.preheader, label %for.end15, !dbg !1604

for.end15:                                        ; preds = %for.inc13, %entry
  %proj.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add, %for.inc13 ]
  ret float %proj.0.lcssa, !dbg !1609
}

; Function Attrs: nounwind optsize uwtable
define float @calc_radius(%struct.t_eigvec* nocapture %vec) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_eigvec* %vec}, i64 0, metadata !664), !dbg !1610
  %radius = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 8, !dbg !1611
  store float 0.000000e+00, float* %radius, align 4, !dbg !1611, !tbaa !1007
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !665), !dbg !1612
  %neig = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 0, !dbg !1612
  %0 = load i32* %neig, align 4, !dbg !1612, !tbaa !994
  %cmp20 = icmp sgt i32 %0, 0, !dbg !1612
  br i1 %cmp20, label %for.body.lr.ph, label %for.end, !dbg !1612

for.body.lr.ph:                                   ; preds = %entry
  %refproj = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 7, !dbg !1614
  %1 = load float** %refproj, align 8, !dbg !1614, !tbaa !990
  %xproj = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 4, !dbg !1614
  %2 = load float** %xproj, align 8, !dbg !1614, !tbaa !990
  br label %for.body, !dbg !1612

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %3 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %conv5, %for.body ], !dbg !1614
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds float* %1, i64 %indvars.iv, !dbg !1614
  %4 = load float* %arrayidx, align 4, !dbg !1614, !tbaa !1007
  %arrayidx2 = getelementptr inbounds float* %2, i64 %indvars.iv, !dbg !1614
  %5 = load float* %arrayidx2, align 4, !dbg !1614, !tbaa !1007
  %sub = fsub float %4, %5, !dbg !1614
  %conv = fpext float %sub to double, !dbg !1614
  %pow2 = fmul double %conv, %conv, !dbg !1614
  %conv4 = fpext float %3 to double, !dbg !1614
  %add = fadd double %conv4, %pow2, !dbg !1614
  %conv5 = fptrunc double %add to float, !dbg !1614
  store float %conv5, float* %radius, align 4, !dbg !1614, !tbaa !1007
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1612
  %6 = trunc i64 %indvars.iv.next to i32, !dbg !1612
  %cmp = icmp slt i32 %6, %0, !dbg !1612
  br i1 %cmp, label %for.body, label %for.end, !dbg !1612

for.end:                                          ; preds = %for.body, %entry
  %7 = phi float [ 0.000000e+00, %entry ], [ %conv5, %for.body ]
  %conv9 = tail call float @sqrtf(float %7) #2, !dbg !1615
  store float %conv9, float* %radius, align 4, !dbg !1615, !tbaa !1007
  ret float %conv9, !dbg !1615
}

; Function Attrs: nounwind optsize uwtable
define void @do_edsam(%struct._IO_FILE* nocapture %log, %struct.t_topology* nocapture %top, %struct.t_inputrec* nocapture %ir, i32 %step, %struct.t_mdatoms* nocapture %md, i32 %start, i32 %homenr, [3 x float]* nocapture %x, [3 x float]* nocapture %xold, [3 x float]* nocapture %x_unc, [3 x float]* nocapture %force, [3 x float]* nocapture %box, %struct.t_edsamyn* nocapture %edyn, %struct.t_edpar* %edi, i32 %bHave_force) #0 {
entry:
  %rotmat = alloca [3 x [3 x float]], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !782), !dbg !1616
  call void @llvm.dbg.value(metadata !{%struct.t_topology* %top}, i64 0, metadata !783), !dbg !1616
  call void @llvm.dbg.value(metadata !{%struct.t_inputrec* %ir}, i64 0, metadata !784), !dbg !1616
  call void @llvm.dbg.value(metadata !{i32 %step}, i64 0, metadata !785), !dbg !1616
  call void @llvm.dbg.value(metadata !{%struct.t_mdatoms* %md}, i64 0, metadata !786), !dbg !1617
  call void @llvm.dbg.value(metadata !{i32 %start}, i64 0, metadata !787), !dbg !1617
  call void @llvm.dbg.value(metadata !{i32 %homenr}, i64 0, metadata !788), !dbg !1617
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !789), !dbg !1618
  call void @llvm.dbg.value(metadata !{[3 x float]* %xold}, i64 0, metadata !790), !dbg !1618
  call void @llvm.dbg.value(metadata !{[3 x float]* %x_unc}, i64 0, metadata !791), !dbg !1618
  call void @llvm.dbg.value(metadata !{[3 x float]* %force}, i64 0, metadata !792), !dbg !1618
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !793), !dbg !1618
  call void @llvm.dbg.value(metadata !{%struct.t_edsamyn* %edyn}, i64 0, metadata !794), !dbg !1619
  call void @llvm.dbg.value(metadata !{%struct.t_edpar* %edi}, i64 0, metadata !795), !dbg !1619
  call void @llvm.dbg.value(metadata !{i32 %bHave_force}, i64 0, metadata !796), !dbg !1619
  %ned1 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 2, !dbg !1620
  %0 = load i32* %ned1, align 4, !dbg !1620, !tbaa !994
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !799), !dbg !1620
  call void @llvm.dbg.value(metadata !{i32 %step}, i64 0, metadata !800), !dbg !1620
  call void @llvm.dbg.value(metadata !1621, i64 0, metadata !801), !dbg !1620
  call void @llvm.dbg.value(metadata !1622, i64 0, metadata !803), !dbg !1623
  call void @llvm.dbg.value(metadata !1622, i64 0, metadata !804), !dbg !1623
  %1 = bitcast [3 x [3 x float]]* %rotmat to i8*, !dbg !1624
  call void @llvm.lifetime.start(i64 36, i8* %1) #4, !dbg !1624
  call void @llvm.dbg.declare(metadata !{[3 x [3 x float]]* %rotmat}, metadata !805), !dbg !1624
  %delta_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15, !dbg !1625
  %2 = load float* %delta_t, align 4, !dbg !1625, !tbaa !1007
  call void @llvm.dbg.value(metadata !{float %2}, i64 0, metadata !809), !dbg !1625
  %conv2 = fdiv float 1.000000e+00, %2, !dbg !1626
  call void @llvm.dbg.value(metadata !{float %conv2}, i64 0, metadata !810), !dbg !1626
  %mul = fmul float %2, %2, !dbg !1627
  %conv5 = fdiv float 1.000000e+00, %mul, !dbg !1627
  call void @llvm.dbg.value(metadata !{float %conv5}, i64 0, metadata !811), !dbg !1627
  %.b = load i1* @do_edsam.bFirst, align 1
  br i1 %.b, label %if.end, label %if.then, !dbg !1628

if.then:                                          ; preds = %entry
  %radacc = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, !dbg !1629
  %call = call float @calc_radius(%struct.t_eigvec* %radacc) #8, !dbg !1629
  store float %call, float* @do_edsam.oldrad, align 4, !dbg !1629, !tbaa !1007
  store i1 true, i1* @do_edsam.bFirst, align 1
  br label %if.end, !dbg !1631

if.end:                                           ; preds = %entry, %if.then
  %outfrq = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 4, !dbg !1632
  %3 = load i32* %outfrq, align 4, !dbg !1632, !tbaa !994
  %call6 = call i32 @do_per_step(i32 %step, i32 %3) #7, !dbg !1632
  %tobool7 = icmp eq i32 %call6, 0, !dbg !1632
  %tobool8 = icmp eq i32 %bHave_force, 0, !dbg !1632
  %or.cond233 = or i1 %tobool7, %tobool8, !dbg !1632
  br i1 %or.cond233, label %if.end66, label %if.then9, !dbg !1632

if.then9:                                         ; preds = %if.end
  %call10 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 666, i32 %0, i32 12) #7, !dbg !1633
  %4 = bitcast i8* %call10 to [3 x float]*, !dbg !1633
  call void @llvm.dbg.value(metadata !{[3 x float]* %4}, i64 0, metadata !803), !dbg !1633
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !797), !dbg !1635
  %cmp239 = icmp sgt i32 %0, 0, !dbg !1635
  br i1 %cmp239, label %for.cond12.preheader, label %for.end29.thread, !dbg !1635

for.end29.thread:                                 ; preds = %if.then9
  %call30253 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 671, i32 %0, i32 12) #7, !dbg !1637
  %5 = bitcast i8* %call30253 to [3 x float]*, !dbg !1637
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !797), !dbg !1638
  br label %if.end66, !dbg !1638

for.cond12.preheader:                             ; preds = %if.then9, %for.inc27
  %indvars.iv249 = phi i64 [ %indvars.iv.next250, %for.inc27 ], [ 0, %if.then9 ]
  br label %for.body15, !dbg !1640

for.body15:                                       ; preds = %for.body15, %for.cond12.preheader
  %indvars.iv245 = phi i64 [ 0, %for.cond12.preheader ], [ %indvars.iv.next246, %for.body15 ]
  %arrayidx17 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv249, i64 %indvars.iv245, !dbg !1643
  %6 = load float* %arrayidx17, align 4, !dbg !1643, !tbaa !1007
  %arrayidx21 = getelementptr inbounds [3 x float]* %xold, i64 %indvars.iv249, i64 %indvars.iv245, !dbg !1643
  %7 = load float* %arrayidx21, align 4, !dbg !1643, !tbaa !1007
  %sub = fsub float %6, %7, !dbg !1643
  %mul22 = fmul float %conv2, %sub, !dbg !1643
  %arrayidx26 = getelementptr inbounds [3 x float]* %4, i64 %indvars.iv249, i64 %indvars.iv245, !dbg !1643
  store float %mul22, float* %arrayidx26, align 4, !dbg !1643, !tbaa !1007
  %indvars.iv.next246 = add i64 %indvars.iv245, 1, !dbg !1640
  %lftr.wideiv247 = trunc i64 %indvars.iv.next246 to i32, !dbg !1640
  %exitcond248 = icmp eq i32 %lftr.wideiv247, 3, !dbg !1640
  br i1 %exitcond248, label %for.inc27, label %for.body15, !dbg !1640

for.inc27:                                        ; preds = %for.body15
  %indvars.iv.next250 = add i64 %indvars.iv249, 1, !dbg !1635
  %lftr.wideiv251 = trunc i64 %indvars.iv.next250 to i32, !dbg !1635
  %exitcond252 = icmp eq i32 %lftr.wideiv251, %0, !dbg !1635
  br i1 %exitcond252, label %for.end29, label %for.cond12.preheader, !dbg !1635

for.end29:                                        ; preds = %for.inc27
  %call30 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 671, i32 %0, i32 12) #7, !dbg !1637
  %8 = bitcast i8* %call30 to [3 x float]*, !dbg !1637
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !797), !dbg !1638
  br i1 %cmp239, label %for.body34.lr.ph, label %if.end66, !dbg !1638

for.body34.lr.ph:                                 ; preds = %for.end29
  %atom = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1, !dbg !1644
  %9 = load %struct.t_atom** %atom, align 8, !dbg !1644, !tbaa !990
  br label %for.body34, !dbg !1638

for.body34:                                       ; preds = %for.inc63, %for.body34.lr.ph
  %indvars.iv241 = phi i64 [ 0, %for.body34.lr.ph ], [ %indvars.iv.next242, %for.inc63 ]
  %m = getelementptr inbounds %struct.t_atom* %9, i64 %indvars.iv241, i32 0, !dbg !1644
  %10 = load float* %m, align 4, !dbg !1644, !tbaa !1007
  call void @llvm.dbg.value(metadata !{float %10}, i64 0, metadata !807), !dbg !1644
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !798), !dbg !1646
  br label %for.body40, !dbg !1646

for.body40:                                       ; preds = %for.body40, %for.body34
  %indvars.iv = phi i64 [ 0, %for.body34 ], [ %indvars.iv.next, %for.body40 ]
  %arrayidx44 = getelementptr inbounds [3 x float]* %force, i64 %indvars.iv241, i64 %indvars.iv, !dbg !1648
  %11 = load float* %arrayidx44, align 4, !dbg !1648, !tbaa !1007
  %arrayidx48 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv241, i64 %indvars.iv, !dbg !1648
  %12 = load float* %arrayidx48, align 4, !dbg !1648, !tbaa !1007
  %arrayidx52 = getelementptr inbounds [3 x float]* %x_unc, i64 %indvars.iv241, i64 %indvars.iv, !dbg !1648
  %13 = load float* %arrayidx52, align 4, !dbg !1648, !tbaa !1007
  %sub53 = fsub float %12, %13, !dbg !1648
  %mul54 = fmul float %conv5, %sub53, !dbg !1648
  %mul55 = fmul float %10, %mul54, !dbg !1648
  %add = fadd float %11, %mul55, !dbg !1648
  %arrayidx59 = getelementptr inbounds [3 x float]* %8, i64 %indvars.iv241, i64 %indvars.iv, !dbg !1648
  store float %add, float* %arrayidx59, align 4, !dbg !1648, !tbaa !1007
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1646
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1646
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !1646
  br i1 %exitcond, label %for.inc63, label %for.body40, !dbg !1646

for.inc63:                                        ; preds = %for.body40
  %indvars.iv.next242 = add i64 %indvars.iv241, 1, !dbg !1638
  %lftr.wideiv243 = trunc i64 %indvars.iv.next242 to i32, !dbg !1638
  %exitcond244 = icmp eq i32 %lftr.wideiv243, %0, !dbg !1638
  br i1 %exitcond244, label %if.end66, label %for.body34, !dbg !1638

if.end66:                                         ; preds = %for.end29, %for.end29.thread, %for.inc63, %if.end
  %fdum.0 = phi [3 x float]* [ null, %if.end ], [ %5, %for.end29.thread ], [ %8, %for.end29 ], [ %8, %for.inc63 ]
  %vdum.0 = phi [3 x float]* [ null, %if.end ], [ %4, %for.end29.thread ], [ %4, %for.end29 ], [ %4, %for.inc63 ]
  %call67 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 680, i32 %0, i32 12) #7, !dbg !1649
  %14 = bitcast i8* %call67 to [3 x float]*, !dbg !1649
  call void @llvm.dbg.value(metadata !{[3 x float]* %14}, i64 0, metadata !802), !dbg !1649
  %arraydecay = getelementptr inbounds [3 x [3 x float]]* %rotmat, i64 0, i64 0, !dbg !1650
  %call68 = call float @fitit(i32 %0, [3 x float]* %x, %struct.t_edpar* %edi, [3 x float]* %14, [3 x float]* %arraydecay) #8, !dbg !1650
  call void @llvm.dbg.value(metadata !{float %call68}, i64 0, metadata !806), !dbg !1650
  %maxedsteps = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 6, !dbg !1651
  %15 = load i32* %maxedsteps, align 4, !dbg !1651, !tbaa !994
  %call69 = call i32 @do_per_step(i32 %step, i32 %15) #7, !dbg !1651
  %tobool70 = icmp ne i32 %call69, 0, !dbg !1651
  %cmp72 = icmp sgt i32 %step, 0, !dbg !1651
  %or.cond = and i1 %tobool70, %cmp72, !dbg !1651
  br i1 %or.cond, label %if.then74, label %if.end78, !dbg !1651

if.then74:                                        ; preds = %if.end66
  call void @project([3 x float]* %x, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #8, !dbg !1652
  %radacc76 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, !dbg !1654
  call void @projectx(%struct.t_edpar* %edi, [3 x float]* %x, %struct.t_eigvec* %radacc76) #8, !dbg !1654
  %radfix = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, !dbg !1655
  call void @projectx(%struct.t_edpar* %edi, [3 x float]* %x, %struct.t_eigvec* %radfix) #8, !dbg !1655
  store float -1.000000e+05, float* @do_edsam.oldrad, align 4, !dbg !1656, !tbaa !1007
  br label %if.end78, !dbg !1657

if.end78:                                         ; preds = %if.then74, %if.end66
  %call79 = call i32 @do_per_step(i32 %step, i32 500) #7, !dbg !1658
  %tobool80 = icmp ne i32 %call79, 0, !dbg !1658
  %or.cond135 = and i1 %tobool80, %cmp72, !dbg !1658
  br i1 %or.cond135, label %if.then84, label %if.end95, !dbg !1658

if.then84:                                        ; preds = %if.end78
  %radacc86 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, !dbg !1659
  %call87 = call float @calc_radius(%struct.t_eigvec* %radacc86) #8, !dbg !1659
  call void @llvm.dbg.value(metadata !{float %call87}, i64 0, metadata !808), !dbg !1659
  %16 = load float* @do_edsam.oldrad, align 4, !dbg !1661, !tbaa !1007
  %sub88 = fsub float %call87, %16, !dbg !1661
  %slope = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 10, !dbg !1661
  %17 = load float* %slope, align 4, !dbg !1661, !tbaa !1007
  %cmp89 = fcmp olt float %sub88, %17, !dbg !1661
  br i1 %cmp89, label %if.then91, label %if.else, !dbg !1661

if.then91:                                        ; preds = %if.then84
  call void @project([3 x float]* %x, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #8, !dbg !1662
  call void @projectx(%struct.t_edpar* %edi, [3 x float]* %x, %struct.t_eigvec* %radacc86) #8, !dbg !1664
  store float 0.000000e+00, float* @do_edsam.oldrad, align 4, !dbg !1665, !tbaa !1007
  br label %if.end95, !dbg !1666

if.else:                                          ; preds = %if.then84
  store float %call87, float* @do_edsam.oldrad, align 4, !dbg !1667, !tbaa !1007
  br label %if.end95

if.end95:                                         ; preds = %if.then91, %if.else, %if.end78
  call void @ed_cons([3 x float]* %x, %struct.t_edpar* %edi, i32 %step) #8, !dbg !1668
  %18 = load i32* %outfrq, align 4, !dbg !1669, !tbaa !994
  %call97 = call i32 @do_per_step(i32 %step, i32 %18) #7, !dbg !1669
  %tobool98 = icmp eq i32 %call97, 0, !dbg !1669
  %or.cond234 = or i1 %tobool98, %tobool8, !dbg !1669
  br i1 %or.cond234, label %if.end105, label %if.then101, !dbg !1669

if.then101:                                       ; preds = %if.end95
  call void @rotate_vec(i32 %0, [3 x float]* %vdum.0, [3 x float]* %arraydecay) #8, !dbg !1670
  call void @rotate_vec(i32 %0, [3 x float]* %fdum.0, [3 x float]* %arraydecay) #8, !dbg !1672
  call void @project([3 x float]* %vdum.0, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #8, !dbg !1673
  call void @project([3 x float]* %fdum.0, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str49, i64 0, i64 0)) #8, !dbg !1674
  call void @project([3 x float]* %x, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #8, !dbg !1675
  %19 = bitcast [3 x float]* %vdum.0 to i8*, !dbg !1676
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 714, i8* %19) #7, !dbg !1676
  %20 = bitcast [3 x float]* %fdum.0 to i8*, !dbg !1677
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 715, i8* %20) #7, !dbg !1677
  call void @write_edo(%struct.t_edpar* %edi, i32 %step, float %call68) #8, !dbg !1678
  %edo = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 19, !dbg !1679
  %21 = load %struct._IO_FILE** %edo, align 8, !dbg !1679, !tbaa !990
  %call104 = call i32 @fflush(%struct._IO_FILE* %21) #7, !dbg !1679
  br label %if.end105, !dbg !1680

if.end105:                                        ; preds = %if.end95, %if.then101
  br i1 %cmp72, label %land.lhs.true108, label %if.end128, !dbg !1681

land.lhs.true108:                                 ; preds = %if.end105
  %logfrq = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 5, !dbg !1681
  %22 = load i32* %logfrq, align 4, !dbg !1681, !tbaa !994
  %call109 = call i32 @do_per_step(i32 %step, i32 %22) #7, !dbg !1681
  %tobool110 = icmp eq i32 %call109, 0, !dbg !1681
  br i1 %tobool110, label %if.end128, label %if.then111, !dbg !1681

if.then111:                                       ; preds = %land.lhs.true108
  %call112 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([34 x i8]* @.str52, i64 0, i64 0), i32 %step) #7, !dbg !1682
  call void @project([3 x float]* %x, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #8, !dbg !1684
  call void @write_edidx(%struct._IO_FILE* %log, %struct.t_edpar* %edi) #8, !dbg !1685
  %radacc114 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, !dbg !1686
  %call115 = call float @calc_radius(%struct.t_eigvec* %radacc114) #8, !dbg !1686
  %conv116 = fpext float %call115 to double, !dbg !1686
  %call117 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([24 x i8]* @.str53, i64 0, i64 0), double %conv116) #7, !dbg !1686
  %radfix119 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, !dbg !1687
  %call120 = call float @calc_radius(%struct.t_eigvec* %radfix119) #8, !dbg !1687
  %conv121 = fpext float %call120 to double, !dbg !1687
  %call122 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([29 x i8]* @.str54, i64 0, i64 0), double %conv121) #7, !dbg !1687
  %radcon = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, !dbg !1688
  %call124 = call float @calc_radius(%struct.t_eigvec* %radcon) #8, !dbg !1688
  %conv125 = fpext float %call124 to double, !dbg !1688
  %call126 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([25 x i8]* @.str55, i64 0, i64 0), double %conv125) #7, !dbg !1688
  %call127 = call i32 @fflush(%struct._IO_FILE* %log) #7, !dbg !1689
  br label %if.end128, !dbg !1690

if.end128:                                        ; preds = %land.lhs.true108, %if.then111, %if.end105
  call void @rmfit(i32 %0, [3 x float]* %x, [3 x float]* %14, [3 x float]* %arraydecay) #8, !dbg !1691
  %nsteps = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 1, !dbg !1692
  %23 = load i32* %nsteps, align 4, !dbg !1692, !tbaa !994
  %cmp130 = icmp eq i32 %23, %step, !dbg !1692
  br i1 %cmp130, label %if.then132, label %if.end134, !dbg !1692

if.then132:                                       ; preds = %if.end128
  %edo133 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 19, !dbg !1692
  %24 = load %struct._IO_FILE** %edo133, align 8, !dbg !1692, !tbaa !990
  call void @ffclose(%struct._IO_FILE* %24) #7, !dbg !1692
  br label %if.end134, !dbg !1692

if.end134:                                        ; preds = %if.then132, %if.end128
  call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 738, i8* %call67) #7, !dbg !1693
  call void @llvm.lifetime.end(i64 36, i8* %1) #4, !dbg !1694
  ret void, !dbg !1694
}

; Function Attrs: optsize
declare i32 @do_per_step(i32, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @ed_cons([3 x float]* nocapture %x, %struct.t_edpar* nocapture %edi, i32 %step) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !838), !dbg !1695
  tail call void @llvm.dbg.value(metadata !{%struct.t_edpar* %edi}, i64 0, metadata !839), !dbg !1695
  tail call void @llvm.dbg.value(metadata !{i32 %step}, i64 0, metadata !840), !dbg !1695
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !841), !dbg !1696
  %nr = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0, !dbg !1696
  %0 = load i32* %nr, align 4, !dbg !1696, !tbaa !994
  %cmp65 = icmp sgt i32 %0, 0, !dbg !1696
  br i1 %cmp65, label %for.body.lr.ph, label %for.end, !dbg !1696

for.body.lr.ph:                                   ; preds = %entry
  %anrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1, !dbg !1698
  %1 = load i32** %anrs, align 8, !dbg !1698, !tbaa !990
  %x6 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 2, !dbg !1698
  %2 = load [3 x float]** %x6, align 8, !dbg !1698, !tbaa !990
  br label %for.body, !dbg !1696

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv67 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next68, %for.body ]
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv67, !dbg !1698
  %3 = load i32* %arrayidx, align 4, !dbg !1698, !tbaa !994
  %idxprom2 = sext i32 %3 to i64, !dbg !1698
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %idxprom2, i64 0, !dbg !1698
  %arraydecay8 = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv67, i64 0, !dbg !1698
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !1699), !dbg !1700
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay8}, i64 0, metadata !1701), !dbg !1700
  %4 = load float* %arraydecay, align 4, !dbg !1702, !tbaa !1007
  %5 = load float* %arraydecay8, align 4, !dbg !1702, !tbaa !1007
  %sub.i = fsub float %4, %5, !dbg !1702
  tail call void @llvm.dbg.value(metadata !{float %sub.i}, i64 0, metadata !1703), !dbg !1702
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom2, i64 1, !dbg !1704
  %6 = load float* %arrayidx2.i, align 4, !dbg !1704, !tbaa !1007
  %arrayidx3.i = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv67, i64 1, !dbg !1704
  %7 = load float* %arrayidx3.i, align 4, !dbg !1704, !tbaa !1007
  %sub4.i = fsub float %6, %7, !dbg !1704
  tail call void @llvm.dbg.value(metadata !{float %sub4.i}, i64 0, metadata !1705), !dbg !1704
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom2, i64 2, !dbg !1706
  %8 = load float* %arrayidx5.i, align 4, !dbg !1706, !tbaa !1007
  %arrayidx6.i = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv67, i64 2, !dbg !1706
  %9 = load float* %arrayidx6.i, align 4, !dbg !1706, !tbaa !1007
  %sub7.i = fsub float %8, %9, !dbg !1706
  tail call void @llvm.dbg.value(metadata !{float %sub7.i}, i64 0, metadata !1707), !dbg !1706
  store float %sub.i, float* %arraydecay, align 4, !dbg !1708, !tbaa !1007
  store float %sub4.i, float* %arrayidx2.i, align 4, !dbg !1709, !tbaa !1007
  store float %sub7.i, float* %arrayidx5.i, align 4, !dbg !1710, !tbaa !1007
  %indvars.iv.next68 = add i64 %indvars.iv67, 1, !dbg !1696
  %10 = trunc i64 %indvars.iv.next68 to i32, !dbg !1696
  %cmp = icmp slt i32 %10, %0, !dbg !1696
  br i1 %cmp, label %for.body, label %for.end, !dbg !1696

for.end:                                          ; preds = %for.body, %entry
  %cmp9 = icmp sgt i32 %step, -1, !dbg !1711
  br i1 %cmp9, label %if.then, label %if.end12.critedge, !dbg !1711

if.then:                                          ; preds = %for.end
  tail call void @do_linfix([3 x float]* %x, %struct.t_edpar* %edi, i32 %step) #8, !dbg !1711
  tail call void @do_linacc([3 x float]* %x, %struct.t_edpar* %edi) #8, !dbg !1712
  tail call void @do_radfix([3 x float]* %x, %struct.t_edpar* %edi, i32 undef) #8, !dbg !1713
  br label %if.end12, !dbg !1713

if.end12.critedge:                                ; preds = %for.end
  tail call void @do_linacc([3 x float]* %x, %struct.t_edpar* %edi) #8, !dbg !1712
  br label %if.end12

if.end12:                                         ; preds = %if.end12.critedge, %if.then
  tail call void @do_radacc([3 x float]* %x, %struct.t_edpar* %edi) #8, !dbg !1714
  tail call void @do_radcon([3 x float]* %x, %struct.t_edpar* %edi) #8, !dbg !1715
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !841), !dbg !1716
  %11 = load i32* %nr, align 4, !dbg !1716, !tbaa !994
  %cmp1663 = icmp sgt i32 %11, 0, !dbg !1716
  br i1 %cmp1663, label %for.body17.lr.ph, label %for.end32, !dbg !1716

for.body17.lr.ph:                                 ; preds = %if.end12
  %anrs20 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1, !dbg !1718
  %12 = load i32** %anrs20, align 8, !dbg !1718, !tbaa !990
  %x27 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 2, !dbg !1718
  %13 = load [3 x float]** %x27, align 8, !dbg !1718, !tbaa !990
  br label %for.body17, !dbg !1716

for.body17:                                       ; preds = %for.body17.lr.ph, %for.body17
  %indvars.iv = phi i64 [ 0, %for.body17.lr.ph ], [ %indvars.iv.next, %for.body17 ]
  %arrayidx21 = getelementptr inbounds i32* %12, i64 %indvars.iv, !dbg !1718
  %14 = load i32* %arrayidx21, align 4, !dbg !1718, !tbaa !994
  %idxprom22 = sext i32 %14 to i64, !dbg !1718
  %arraydecay24 = getelementptr inbounds [3 x float]* %x, i64 %idxprom22, i64 0, !dbg !1718
  %arraydecay29 = getelementptr inbounds [3 x float]* %13, i64 %indvars.iv, i64 0, !dbg !1718
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay24}, i64 0, metadata !1719), !dbg !1720
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay29}, i64 0, metadata !1721), !dbg !1720
  %15 = load float* %arraydecay24, align 4, !dbg !1722, !tbaa !1007
  %16 = load float* %arraydecay29, align 4, !dbg !1722, !tbaa !1007
  %add.i = fadd float %15, %16, !dbg !1722
  tail call void @llvm.dbg.value(metadata !{float %add.i}, i64 0, metadata !1723), !dbg !1722
  %arrayidx2.i59 = getelementptr inbounds [3 x float]* %x, i64 %idxprom22, i64 1, !dbg !1724
  %17 = load float* %arrayidx2.i59, align 4, !dbg !1724, !tbaa !1007
  %arrayidx3.i60 = getelementptr inbounds [3 x float]* %13, i64 %indvars.iv, i64 1, !dbg !1724
  %18 = load float* %arrayidx3.i60, align 4, !dbg !1724, !tbaa !1007
  %add4.i = fadd float %17, %18, !dbg !1724
  tail call void @llvm.dbg.value(metadata !{float %add4.i}, i64 0, metadata !1725), !dbg !1724
  %arrayidx5.i61 = getelementptr inbounds [3 x float]* %x, i64 %idxprom22, i64 2, !dbg !1726
  %19 = load float* %arrayidx5.i61, align 4, !dbg !1726, !tbaa !1007
  %arrayidx6.i62 = getelementptr inbounds [3 x float]* %13, i64 %indvars.iv, i64 2, !dbg !1726
  %20 = load float* %arrayidx6.i62, align 4, !dbg !1726, !tbaa !1007
  %add7.i = fadd float %19, %20, !dbg !1726
  tail call void @llvm.dbg.value(metadata !{float %add7.i}, i64 0, metadata !1727), !dbg !1726
  store float %add.i, float* %arraydecay24, align 4, !dbg !1728, !tbaa !1007
  store float %add4.i, float* %arrayidx2.i59, align 4, !dbg !1729, !tbaa !1007
  store float %add7.i, float* %arrayidx5.i61, align 4, !dbg !1730, !tbaa !1007
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1716
  %21 = trunc i64 %indvars.iv.next to i32, !dbg !1716
  %cmp16 = icmp slt i32 %21, %11, !dbg !1716
  br i1 %cmp16, label %for.body17, label %for.end32, !dbg !1716

for.end32:                                        ; preds = %for.body17, %if.end12
  ret void, !dbg !1731
}

; Function Attrs: nounwind optsize uwtable
define void @rotate_vec(i32 %nr, [3 x float]* nocapture %x, [3 x float]* nocapture %rotmat) #0 {
entry:
  %xdum = alloca [3 x float], align 4
  %xdum58 = bitcast [3 x float]* %xdum to i8*
  call void @llvm.dbg.value(metadata !{i32 %nr}, i64 0, metadata !827), !dbg !1732
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !828), !dbg !1732
  call void @llvm.dbg.value(metadata !{[3 x float]* %rotmat}, i64 0, metadata !829), !dbg !1732
  call void @llvm.dbg.declare(metadata !{[3 x float]* %xdum}, metadata !833), !dbg !1733
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !830), !dbg !1734
  %cmp56 = icmp sgt i32 %nr, 0, !dbg !1734
  br i1 %cmp56, label %for.cond1.preheader, label %for.end36, !dbg !1734

for.cond1.preheader:                              ; preds = %entry, %for.inc34
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %for.inc34 ], [ 0, %entry ]
  %scevgep = getelementptr [3 x float]* %x, i64 %indvars.iv66, i64 0
  %scevgep59 = bitcast float* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %xdum58, i8* %scevgep59, i64 12, i32 4, i1 false), !dbg !1736
  br label %for.body10, !dbg !1739

for.body10:                                       ; preds = %for.inc31, %for.cond1.preheader
  %indvars.iv60 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next61, %for.inc31 ]
  %arrayidx14 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv66, i64 %indvars.iv60, !dbg !1741
  store float 0.000000e+00, float* %arrayidx14, align 4, !dbg !1741, !tbaa !1007
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !832), !dbg !1743
  br label %for.body17, !dbg !1743

for.body17:                                       ; preds = %for.body17, %for.body10
  %0 = phi float [ 0.000000e+00, %for.body10 ], [ %add, %for.body17 ], !dbg !1745
  %indvars.iv = phi i64 [ 0, %for.body10 ], [ %indvars.iv.next, %for.body17 ]
  %arrayidx21 = getelementptr inbounds [3 x float]* %rotmat, i64 %indvars.iv, i64 %indvars.iv60, !dbg !1745
  %1 = load float* %arrayidx21, align 4, !dbg !1745, !tbaa !1007
  %arrayidx23 = getelementptr inbounds [3 x float]* %xdum, i64 0, i64 %indvars.iv, !dbg !1745
  %2 = load float* %arrayidx23, align 4, !dbg !1745, !tbaa !1007
  %mul = fmul float %1, %2, !dbg !1745
  %add = fadd float %0, %mul, !dbg !1745
  store float %add, float* %arrayidx14, align 4, !dbg !1745, !tbaa !1007
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1743
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1743
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !1743
  br i1 %exitcond, label %for.inc31, label %for.body17, !dbg !1743

for.inc31:                                        ; preds = %for.body17
  %indvars.iv.next61 = add i64 %indvars.iv60, 1, !dbg !1739
  %lftr.wideiv62 = trunc i64 %indvars.iv.next61 to i32, !dbg !1739
  %exitcond63 = icmp eq i32 %lftr.wideiv62, 3, !dbg !1739
  br i1 %exitcond63, label %for.inc34, label %for.body10, !dbg !1739

for.inc34:                                        ; preds = %for.inc31
  %indvars.iv.next67 = add i64 %indvars.iv66, 1, !dbg !1734
  %lftr.wideiv68 = trunc i64 %indvars.iv.next67 to i32, !dbg !1734
  %exitcond69 = icmp eq i32 %lftr.wideiv68, %nr, !dbg !1734
  br i1 %exitcond69, label %for.end36, label %for.cond1.preheader, !dbg !1734

for.end36:                                        ; preds = %for.inc34, %entry
  ret void, !dbg !1746
}

; Function Attrs: nounwind optsize uwtable
define void @write_edo(%struct.t_edpar* nocapture %edi, i32 %step, float %rmsd) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_edpar* %edi}, i64 0, metadata !898), !dbg !1747
  tail call void @llvm.dbg.value(metadata !{i32 %step}, i64 0, metadata !899), !dbg !1747
  tail call void @llvm.dbg.value(metadata !{float %rmsd}, i64 0, metadata !900), !dbg !1747
  %edo = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 19, !dbg !1748
  %0 = load %struct._IO_FILE** %edo, align 8, !dbg !1748, !tbaa !990
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8]* @.str57, i64 0, i64 0), i32 %step) #7, !dbg !1748
  %1 = load %struct._IO_FILE** %edo, align 8, !dbg !1749, !tbaa !990
  %conv = fpext float %rmsd to double, !dbg !1749
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8]* @.str58, i64 0, i64 0), double %conv) #7, !dbg !1749
  %2 = load %struct._IO_FILE** %edo, align 8, !dbg !1750, !tbaa !990
  tail call void @write_proj(%struct._IO_FILE* %2, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #8, !dbg !1750
  %3 = load %struct._IO_FILE** %edo, align 8, !dbg !1751, !tbaa !990
  tail call void @write_proj(%struct._IO_FILE* %3, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #8, !dbg !1751
  %4 = load %struct._IO_FILE** %edo, align 8, !dbg !1752, !tbaa !990
  tail call void @write_proj(%struct._IO_FILE* %4, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str49, i64 0, i64 0)) #8, !dbg !1752
  ret void, !dbg !1753
}

; Function Attrs: nounwind optsize uwtable
define void @rmfit(i32 %ned, [3 x float]* nocapture %x, [3 x float]* nocapture %transvec, [3 x float]* nocapture %rotmat) #0 {
entry:
  %r_inv = alloca [3 x [3 x float]], align 16
  %xdum = alloca [3 x float], align 4
  %xdum83 = bitcast [3 x float]* %xdum to i8*
  call void @llvm.dbg.value(metadata !{i32 %ned}, i64 0, metadata !814), !dbg !1754
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !815), !dbg !1754
  call void @llvm.dbg.value(metadata !{[3 x float]* %transvec}, i64 0, metadata !816), !dbg !1754
  call void @llvm.dbg.value(metadata !{[3 x float]* %rotmat}, i64 0, metadata !817), !dbg !1754
  %0 = bitcast [3 x [3 x float]]* %r_inv to i8*, !dbg !1755
  call void @llvm.lifetime.start(i64 36, i8* %0) #4, !dbg !1755
  call void @llvm.dbg.declare(metadata !{[3 x [3 x float]]* %r_inv}, metadata !821), !dbg !1755
  call void @llvm.dbg.declare(metadata !{[3 x float]* %xdum}, metadata !822), !dbg !1756
  call void @llvm.dbg.value(metadata !{[3 x float]* %rotmat}, i64 0, metadata !1757) #4, !dbg !1759
  call void @llvm.dbg.value(metadata !1760, i64 0, metadata !1761) #4, !dbg !1762
  call void @llvm.dbg.value(metadata !1763, i64 0, metadata !1764) #4, !dbg !1765
  call void @llvm.dbg.value(metadata !{[3 x float]* %rotmat}, i64 0, metadata !1766) #4, !dbg !1768
  %arrayidx1.i.i = getelementptr inbounds [3 x float]* %rotmat, i64 0, i64 0, !dbg !1769
  %1 = load float* %arrayidx1.i.i, align 4, !dbg !1769, !tbaa !1007
  %arrayidx3.i.i = getelementptr inbounds [3 x float]* %rotmat, i64 1, i64 1, !dbg !1769
  %2 = load float* %arrayidx3.i.i, align 4, !dbg !1769, !tbaa !1007
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %rotmat, i64 2, i64 2, !dbg !1769
  %3 = load float* %arrayidx5.i.i, align 4, !dbg !1769, !tbaa !1007
  %mul.i.i = fmul float %2, %3, !dbg !1769
  %arrayidx7.i.i = getelementptr inbounds [3 x float]* %rotmat, i64 2, i64 1, !dbg !1769
  %4 = load float* %arrayidx7.i.i, align 4, !dbg !1769, !tbaa !1007
  %arrayidx9.i.i = getelementptr inbounds [3 x float]* %rotmat, i64 1, i64 2, !dbg !1769
  %5 = load float* %arrayidx9.i.i, align 4, !dbg !1769, !tbaa !1007
  %mul10.i.i = fmul float %4, %5, !dbg !1769
  %sub.i.i = fsub float %mul.i.i, %mul10.i.i, !dbg !1769
  %mul11.i.i = fmul float %1, %sub.i.i, !dbg !1769
  %arrayidx13.i.i = getelementptr inbounds [3 x float]* %rotmat, i64 1, i64 0, !dbg !1769
  %6 = load float* %arrayidx13.i.i, align 4, !dbg !1769, !tbaa !1007
  %arrayidx15.i.i = getelementptr inbounds [3 x float]* %rotmat, i64 0, i64 1, !dbg !1769
  %7 = load float* %arrayidx15.i.i, align 4, !dbg !1769, !tbaa !1007
  %mul18.i.i = fmul float %3, %7, !dbg !1769
  %arrayidx22.i.i = getelementptr inbounds [3 x float]* %rotmat, i64 0, i64 2, !dbg !1769
  %8 = load float* %arrayidx22.i.i, align 4, !dbg !1769, !tbaa !1007
  %mul23.i.i = fmul float %4, %8, !dbg !1769
  %sub24.i.i = fsub float %mul18.i.i, %mul23.i.i, !dbg !1769
  %mul25.i.i = fmul float %6, %sub24.i.i, !dbg !1769
  %sub26.i.i = fsub float %mul11.i.i, %mul25.i.i, !dbg !1769
  %arrayidx28.i.i = getelementptr inbounds [3 x float]* %rotmat, i64 2, i64 0, !dbg !1769
  %9 = load float* %arrayidx28.i.i, align 4, !dbg !1769, !tbaa !1007
  %mul33.i.i = fmul float %5, %7, !dbg !1769
  %mul38.i.i = fmul float %2, %8, !dbg !1769
  %sub39.i.i = fsub float %mul33.i.i, %mul38.i.i, !dbg !1769
  %mul40.i.i = fmul float %9, %sub39.i.i, !dbg !1769
  %add.i.i = fadd float %mul40.i.i, %sub26.i.i, !dbg !1769
  call void @llvm.dbg.value(metadata !{float %add.i.i}, i64 0, metadata !1770) #4, !dbg !1767
  %conv1.i = fdiv float 1.000000e+00, %add.i.i, !dbg !1771
  call void @llvm.dbg.value(metadata !{float %conv1.i}, i64 0, metadata !1772) #4, !dbg !1771
  %fabsf.i = call float @fabsf(float %conv1.i) #10, !dbg !1773
  call void @llvm.dbg.value(metadata !{float %fabsf.i}, i64 0, metadata !1774) #4, !dbg !1773
  %cmp.i = fcmp ole float %fabsf.i, 0x3C32725DE0000000, !dbg !1775
  %cmp6.i = fcmp oge float %fabsf.i, 0x43ABC16D60000000, !dbg !1775
  %or.cond.i = or i1 %cmp.i, %cmp6.i, !dbg !1775
  br i1 %or.cond.i, label %if.then.i, label %m_inv.exit, !dbg !1775

if.then.i:                                        ; preds = %entry
  %conv2.i = fpext float %conv1.i to double, !dbg !1773
  %div9.i = fdiv double 1.000000e+00, %conv2.i, !dbg !1776
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([17 x i8]* @.str68, i64 0, i64 0), double %div9.i) #7, !dbg !1776
  %.pre.i = load float* %arrayidx3.i.i, align 4, !dbg !1777, !tbaa !1007
  %.pre192.i = load float* %arrayidx5.i.i, align 4, !dbg !1777, !tbaa !1007
  %.pre193.i = load float* %arrayidx7.i.i, align 4, !dbg !1777, !tbaa !1007
  %.pre194.i = load float* %arrayidx9.i.i, align 4, !dbg !1777, !tbaa !1007
  %.pre = load float* %arrayidx15.i.i, align 4, !dbg !1778, !tbaa !1007
  %.pre99 = load float* %arrayidx22.i.i, align 4, !dbg !1778, !tbaa !1007
  %.pre100 = load float* %arrayidx13.i.i, align 4, !dbg !1779, !tbaa !1007
  %.pre101 = load float* %arrayidx28.i.i, align 4, !dbg !1779, !tbaa !1007
  %.pre102 = load float* %arrayidx1.i.i, align 4, !dbg !1780, !tbaa !1007
  br label %m_inv.exit, !dbg !1776

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
  %mul.i = fmul float %17, %18, !dbg !1777
  %mul17.i = fmul float %15, %16, !dbg !1777
  %sub.i = fsub float %mul.i, %mul17.i, !dbg !1777
  %mul18.i = fmul float %conv1.i, %sub.i, !dbg !1777
  %arrayidx20.i = getelementptr inbounds [3 x [3 x float]]* %r_inv, i64 0, i64 0, i64 0, !dbg !1777
  store float %mul18.i, float* %arrayidx20.i, align 16, !dbg !1777, !tbaa !1007
  %sub21.i = fsub float -0.000000e+00, %conv1.i, !dbg !1778
  %mul26.i = fmul float %14, %17, !dbg !1778
  %mul31.i = fmul float %16, %13, !dbg !1778
  %sub32.i = fsub float %mul26.i, %mul31.i, !dbg !1778
  %mul33.i = fmul float %sub32.i, %sub21.i, !dbg !1778
  %arrayidx35.i = getelementptr inbounds [3 x [3 x float]]* %r_inv, i64 0, i64 0, i64 1, !dbg !1778
  store float %mul33.i, float* %arrayidx35.i, align 4, !dbg !1778, !tbaa !1007
  %mul40.i = fmul float %14, %15, !dbg !1781
  %mul45.i = fmul float %18, %13, !dbg !1781
  %sub46.i = fsub float %mul40.i, %mul45.i, !dbg !1781
  %mul47.i = fmul float %conv1.i, %sub46.i, !dbg !1781
  %arrayidx49.i = getelementptr inbounds [3 x [3 x float]]* %r_inv, i64 0, i64 0, i64 2, !dbg !1781
  store float %mul47.i, float* %arrayidx49.i, align 8, !dbg !1781, !tbaa !1007
  %mul55.i = fmul float %12, %17, !dbg !1779
  %mul60.i = fmul float %11, %15, !dbg !1779
  %sub61.i = fsub float %mul55.i, %mul60.i, !dbg !1779
  %mul62.i = fmul float %sub61.i, %sub21.i, !dbg !1779
  %arrayidx64.i = getelementptr inbounds [3 x [3 x float]]* %r_inv, i64 0, i64 1, i64 0, !dbg !1779
  store float %mul62.i, float* %arrayidx64.i, align 4, !dbg !1779, !tbaa !1007
  %mul69.i = fmul float %10, %17, !dbg !1780
  %mul74.i = fmul float %11, %13, !dbg !1780
  %sub75.i = fsub float %mul69.i, %mul74.i, !dbg !1780
  %mul76.i = fmul float %conv1.i, %sub75.i, !dbg !1780
  %arrayidx78.i = getelementptr inbounds [3 x [3 x float]]* %r_inv, i64 0, i64 1, i64 1, !dbg !1780
  store float %mul76.i, float* %arrayidx78.i, align 4, !dbg !1780, !tbaa !1007
  %mul84.i = fmul float %10, %15, !dbg !1782
  %mul89.i = fmul float %12, %13, !dbg !1782
  %sub90.i = fsub float %mul84.i, %mul89.i, !dbg !1782
  %mul91.i = fmul float %sub90.i, %sub21.i, !dbg !1782
  %arrayidx93.i = getelementptr inbounds [3 x [3 x float]]* %r_inv, i64 0, i64 1, i64 2, !dbg !1782
  store float %mul91.i, float* %arrayidx93.i, align 4, !dbg !1782, !tbaa !1007
  %mul98.i = fmul float %12, %16, !dbg !1783
  %mul103.i = fmul float %11, %18, !dbg !1783
  %sub104.i = fsub float %mul98.i, %mul103.i, !dbg !1783
  %mul105.i = fmul float %conv1.i, %sub104.i, !dbg !1783
  %arrayidx107.i = getelementptr inbounds [3 x [3 x float]]* %r_inv, i64 0, i64 2, i64 0, !dbg !1783
  store float %mul105.i, float* %arrayidx107.i, align 8, !dbg !1783, !tbaa !1007
  %mul113.i = fmul float %10, %16, !dbg !1784
  %mul118.i = fmul float %11, %14, !dbg !1784
  %sub119.i = fsub float %mul113.i, %mul118.i, !dbg !1784
  %mul120.i = fmul float %sub119.i, %sub21.i, !dbg !1784
  %arrayidx122.i = getelementptr inbounds [3 x [3 x float]]* %r_inv, i64 0, i64 2, i64 1, !dbg !1784
  store float %mul120.i, float* %arrayidx122.i, align 4, !dbg !1784, !tbaa !1007
  %mul127.i = fmul float %10, %18, !dbg !1785
  %mul132.i = fmul float %12, %14, !dbg !1785
  %sub133.i = fsub float %mul127.i, %mul132.i, !dbg !1785
  %mul134.i = fmul float %conv1.i, %sub133.i, !dbg !1785
  %arrayidx136.i = getelementptr inbounds [3 x [3 x float]]* %r_inv, i64 0, i64 2, i64 2, !dbg !1785
  store float %mul134.i, float* %arrayidx136.i, align 8, !dbg !1785, !tbaa !1007
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !818), !dbg !1786
  %cmp77 = icmp sgt i32 %ned, 0, !dbg !1786
  br i1 %cmp77, label %for.cond1.preheader, label %for.end48, !dbg !1786

for.cond1.preheader:                              ; preds = %m_inv.exit, %for.inc34
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %for.inc34 ], [ 0, %m_inv.exit ]
  %scevgep = getelementptr [3 x float]* %x, i64 %indvars.iv95, i64 0
  %scevgep84 = bitcast float* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %xdum83, i8* %scevgep84, i64 12, i32 4, i1 false), !dbg !1788
  br label %for.body10, !dbg !1791

for.cond37.preheader:                             ; preds = %for.inc34
  br i1 %cmp77, label %for.body39, label %for.end48, !dbg !1793

for.body10:                                       ; preds = %for.inc31, %for.cond1.preheader
  %indvars.iv89 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next90, %for.inc31 ]
  %arrayidx14 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv95, i64 %indvars.iv89, !dbg !1795
  store float 0.000000e+00, float* %arrayidx14, align 4, !dbg !1795, !tbaa !1007
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !820), !dbg !1797
  br label %for.body17, !dbg !1797

for.body17:                                       ; preds = %for.body17, %for.body10
  %indvars.iv85 = phi i64 [ 0, %for.body10 ], [ %indvars.iv.next86, %for.body17 ]
  %19 = phi float [ 0.000000e+00, %for.body10 ], [ %add, %for.body17 ], !dbg !1799
  %arrayidx21 = getelementptr inbounds [3 x [3 x float]]* %r_inv, i64 0, i64 %indvars.iv85, i64 %indvars.iv89, !dbg !1799
  %20 = load float* %arrayidx21, align 4, !dbg !1799, !tbaa !1007
  %arrayidx23 = getelementptr inbounds [3 x float]* %xdum, i64 0, i64 %indvars.iv85, !dbg !1799
  %21 = load float* %arrayidx23, align 4, !dbg !1799, !tbaa !1007
  %mul = fmul float %20, %21, !dbg !1799
  %add = fadd float %19, %mul, !dbg !1799
  %indvars.iv.next86 = add i64 %indvars.iv85, 1, !dbg !1797
  %lftr.wideiv87 = trunc i64 %indvars.iv.next86 to i32, !dbg !1797
  %exitcond88 = icmp eq i32 %lftr.wideiv87, 3, !dbg !1797
  br i1 %exitcond88, label %for.inc31, label %for.body17, !dbg !1797

for.inc31:                                        ; preds = %for.body17
  store float %add, float* %arrayidx14, align 4, !dbg !1799, !tbaa !1007
  %indvars.iv.next90 = add i64 %indvars.iv89, 1, !dbg !1791
  %lftr.wideiv91 = trunc i64 %indvars.iv.next90 to i32, !dbg !1791
  %exitcond92 = icmp eq i32 %lftr.wideiv91, 3, !dbg !1791
  br i1 %exitcond92, label %for.inc34, label %for.body10, !dbg !1791

for.inc34:                                        ; preds = %for.inc31
  %indvars.iv.next96 = add i64 %indvars.iv95, 1, !dbg !1786
  %lftr.wideiv97 = trunc i64 %indvars.iv.next96 to i32, !dbg !1786
  %exitcond98 = icmp eq i32 %lftr.wideiv97, %ned, !dbg !1786
  br i1 %exitcond98, label %for.cond37.preheader, label %for.cond1.preheader, !dbg !1786

for.body39:                                       ; preds = %for.cond37.preheader, %for.body39
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body39 ], [ 0, %for.cond37.preheader ]
  %arraydecay42 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0, !dbg !1800
  %arraydecay45 = getelementptr inbounds [3 x float]* %transvec, i64 %indvars.iv, i64 0, !dbg !1800
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay42}, i64 0, metadata !1801), !dbg !1802
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay45}, i64 0, metadata !1803), !dbg !1802
  %22 = load float* %arraydecay42, align 4, !dbg !1804, !tbaa !1007
  %23 = load float* %arraydecay45, align 4, !dbg !1804, !tbaa !1007
  %sub.i71 = fsub float %22, %23, !dbg !1804
  tail call void @llvm.dbg.value(metadata !{float %sub.i71}, i64 0, metadata !1805), !dbg !1804
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1, !dbg !1806
  %24 = load float* %arrayidx2.i, align 4, !dbg !1806, !tbaa !1007
  %arrayidx3.i = getelementptr inbounds [3 x float]* %transvec, i64 %indvars.iv, i64 1, !dbg !1806
  %25 = load float* %arrayidx3.i, align 4, !dbg !1806, !tbaa !1007
  %sub4.i = fsub float %24, %25, !dbg !1806
  tail call void @llvm.dbg.value(metadata !{float %sub4.i}, i64 0, metadata !1807), !dbg !1806
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2, !dbg !1808
  %26 = load float* %arrayidx5.i, align 4, !dbg !1808, !tbaa !1007
  %arrayidx6.i = getelementptr inbounds [3 x float]* %transvec, i64 %indvars.iv, i64 2, !dbg !1808
  %27 = load float* %arrayidx6.i, align 4, !dbg !1808, !tbaa !1007
  %sub7.i = fsub float %26, %27, !dbg !1808
  tail call void @llvm.dbg.value(metadata !{float %sub7.i}, i64 0, metadata !1809), !dbg !1808
  store float %sub.i71, float* %arraydecay42, align 4, !dbg !1810, !tbaa !1007
  store float %sub4.i, float* %arrayidx2.i, align 4, !dbg !1811, !tbaa !1007
  store float %sub7.i, float* %arrayidx5.i, align 4, !dbg !1812, !tbaa !1007
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1793
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1793
  %exitcond = icmp eq i32 %lftr.wideiv, %ned, !dbg !1793
  br i1 %exitcond, label %for.end48, label %for.body39, !dbg !1793

for.end48:                                        ; preds = %m_inv.exit, %for.body39, %for.cond37.preheader
  call void @llvm.lifetime.end(i64 36, i8* %0) #4, !dbg !1813
  ret void, !dbg !1813
}

; Function Attrs: nounwind optsize uwtable
define void @do_linfix([3 x float]* nocapture %x, %struct.t_edpar* nocapture %edi, i32 %step) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !844), !dbg !1814
  tail call void @llvm.dbg.value(metadata !{%struct.t_edpar* %edi}, i64 0, metadata !845), !dbg !1814
  tail call void @llvm.dbg.value(metadata !{i32 %step}, i64 0, metadata !846), !dbg !1814
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !847), !dbg !1815
  %neig = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1, i32 0, !dbg !1815
  %0 = load i32* %neig, align 4, !dbg !1815, !tbaa !994
  %cmp66 = icmp sgt i32 %0, 0, !dbg !1815
  br i1 %cmp66, label %for.body.lr.ph, label %for.end43, !dbg !1815

for.body.lr.ph:                                   ; preds = %entry
  %vec = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1, i32 3, !dbg !1817
  %refproj = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1, i32 7, !dbg !1819
  %conv = sitofp i32 %step to float, !dbg !1819
  %stpsz = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1, i32 2, !dbg !1819
  %nr = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0, !dbg !1820
  %anrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1, !dbg !1822
  %.pre = load [3 x float]*** %vec, align 8, !dbg !1817, !tbaa !990
  %.pre72 = load float** %refproj, align 8, !dbg !1819, !tbaa !990
  %.pre73 = load float** %stpsz, align 8, !dbg !1819, !tbaa !990
  %.pre74 = load i32* %nr, align 4, !dbg !1820, !tbaa !994
  br label %for.body, !dbg !1815

for.body:                                         ; preds = %for.body.lr.ph, %for.inc41
  %indvars.iv70 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next71, %for.inc41 ]
  %arrayidx = getelementptr inbounds [3 x float]** %.pre, i64 %indvars.iv70, !dbg !1817
  %1 = load [3 x float]** %arrayidx, align 8, !dbg !1817, !tbaa !990
  %call = tail call float @do_projectx(%struct.t_edpar* %edi, [3 x float]* %x, [3 x float]* %1) #8, !dbg !1817
  tail call void @llvm.dbg.value(metadata !{float %call}, i64 0, metadata !850), !dbg !1817
  %arrayidx6 = getelementptr inbounds float* %.pre72, i64 %indvars.iv70, !dbg !1819
  %2 = load float* %arrayidx6, align 4, !dbg !1819, !tbaa !1007
  %arrayidx10 = getelementptr inbounds float* %.pre73, i64 %indvars.iv70, !dbg !1819
  %3 = load float* %arrayidx10, align 4, !dbg !1819, !tbaa !1007
  %mul = fmul float %conv, %3, !dbg !1819
  %add11 = fadd float %2, %mul, !dbg !1819
  %sub = fsub float %add11, %call, !dbg !1819
  tail call void @llvm.dbg.value(metadata !{float %sub}, i64 0, metadata !851), !dbg !1819
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !848), !dbg !1820
  %cmp1364 = icmp sgt i32 %.pre74, 0, !dbg !1820
  br i1 %cmp1364, label %for.cond16.preheader.lr.ph, label %for.inc41, !dbg !1820

for.cond16.preheader.lr.ph:                       ; preds = %for.body
  %4 = load i32** %anrs, align 8, !dbg !1822, !tbaa !990
  br label %for.cond16.preheader, !dbg !1820

for.cond16.preheader:                             ; preds = %for.cond16.preheader.lr.ph, %for.inc38
  %indvars.iv68 = phi i64 [ 0, %for.cond16.preheader.lr.ph ], [ %indvars.iv.next69, %for.inc38 ]
  %arrayidx33 = getelementptr inbounds i32* %4, i64 %indvars.iv68, !dbg !1822
  %5 = load i32* %arrayidx33, align 4, !dbg !1822, !tbaa !994
  %idxprom34 = sext i32 %5 to i64, !dbg !1822
  br label %for.body19, !dbg !1825

for.body19:                                       ; preds = %for.body19, %for.cond16.preheader
  %indvars.iv = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next, %for.body19 ]
  %arrayidx28 = getelementptr inbounds [3 x float]* %1, i64 %indvars.iv68, i64 %indvars.iv, !dbg !1822
  %6 = load float* %arrayidx28, align 4, !dbg !1822, !tbaa !1007
  %mul29 = fmul float %sub, %6, !dbg !1822
  %arrayidx36 = getelementptr inbounds [3 x float]* %x, i64 %idxprom34, i64 %indvars.iv, !dbg !1822
  %7 = load float* %arrayidx36, align 4, !dbg !1822, !tbaa !1007
  %add37 = fadd float %mul29, %7, !dbg !1822
  store float %add37, float* %arrayidx36, align 4, !dbg !1822, !tbaa !1007
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1825
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1825
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !1825
  br i1 %exitcond, label %for.inc38, label %for.body19, !dbg !1825

for.inc38:                                        ; preds = %for.body19
  %indvars.iv.next69 = add i64 %indvars.iv68, 1, !dbg !1820
  %8 = trunc i64 %indvars.iv.next69 to i32, !dbg !1820
  %cmp13 = icmp slt i32 %8, %.pre74, !dbg !1820
  br i1 %cmp13, label %for.cond16.preheader, label %for.inc41, !dbg !1820

for.inc41:                                        ; preds = %for.inc38, %for.body
  %indvars.iv.next71 = add i64 %indvars.iv70, 1, !dbg !1815
  %9 = trunc i64 %indvars.iv.next71 to i32, !dbg !1815
  %cmp = icmp slt i32 %9, %0, !dbg !1815
  br i1 %cmp, label %for.body, label %for.end43, !dbg !1815

for.end43:                                        ; preds = %for.inc41, %entry
  ret void, !dbg !1826
}

; Function Attrs: nounwind optsize uwtable
define void @do_linacc([3 x float]* nocapture %x, %struct.t_edpar* nocapture %edi) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !856), !dbg !1827
  tail call void @llvm.dbg.value(metadata !{%struct.t_edpar* %edi}, i64 0, metadata !857), !dbg !1827
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !858), !dbg !1828
  %neig = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2, i32 0, !dbg !1828
  %0 = load i32* %neig, align 4, !dbg !1828, !tbaa !994
  %cmp125 = icmp sgt i32 %0, 0, !dbg !1828
  br i1 %cmp125, label %for.body.lr.ph, label %for.end87, !dbg !1828

for.body.lr.ph:                                   ; preds = %entry
  %vec = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2, i32 3, !dbg !1830
  %stpsz = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2, i32 2, !dbg !1832
  %refproj = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2, i32 7, !dbg !1833
  %nr = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0, !dbg !1835
  %anrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1, !dbg !1837
  %.pre = load [3 x float]*** %vec, align 8, !dbg !1830, !tbaa !990
  %.pre131 = load float** %stpsz, align 8, !dbg !1832, !tbaa !990
  br label %for.body, !dbg !1828

for.body:                                         ; preds = %for.body.lr.ph, %for.end78
  %indvars.iv129 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next130, %for.end78 ]
  %arrayidx = getelementptr inbounds [3 x float]** %.pre, i64 %indvars.iv129, !dbg !1830
  %1 = load [3 x float]** %arrayidx, align 8, !dbg !1830, !tbaa !990
  %call = tail call float @do_projectx(%struct.t_edpar* %edi, [3 x float]* %x, [3 x float]* %1) #8, !dbg !1830
  tail call void @llvm.dbg.value(metadata !{float %call}, i64 0, metadata !861), !dbg !1830
  tail call void @llvm.dbg.value(metadata !1374, i64 0, metadata !862), !dbg !1840
  %arrayidx6 = getelementptr inbounds float* %.pre131, i64 %indvars.iv129, !dbg !1832
  %2 = load float* %arrayidx6, align 4, !dbg !1832, !tbaa !1007
  %cmp7 = fcmp ogt float %2, 0.000000e+00, !dbg !1832
  br i1 %cmp7, label %if.then, label %if.end23, !dbg !1832

if.then:                                          ; preds = %for.body
  %3 = load float** %refproj, align 8, !dbg !1833, !tbaa !990
  %arrayidx12 = getelementptr inbounds float* %3, i64 %indvars.iv129, !dbg !1833
  %4 = load float* %arrayidx12, align 4, !dbg !1833, !tbaa !1007
  %sub = fsub float %call, %4, !dbg !1833
  %cmp14 = fcmp olt float %sub, 0.000000e+00, !dbg !1833
  br i1 %cmp14, label %if.then16, label %if.end23, !dbg !1833

if.then16:                                        ; preds = %if.then
  %sub22 = fsub float %4, %call, !dbg !1841
  tail call void @llvm.dbg.value(metadata !{float %sub22}, i64 0, metadata !862), !dbg !1841
  br label %if.end23, !dbg !1841

if.end23:                                         ; preds = %if.then, %if.then16, %for.body
  %add.0 = phi float [ %sub22, %if.then16 ], [ 0.000000e+00, %if.then ], [ 0.000000e+00, %for.body ]
  %cmp30 = fcmp olt float %2, 0.000000e+00, !dbg !1842
  br i1 %cmp30, label %if.then32, label %if.end50, !dbg !1842

if.then32:                                        ; preds = %if.end23
  %5 = load float** %refproj, align 8, !dbg !1843, !tbaa !990
  %arrayidx37 = getelementptr inbounds float* %5, i64 %indvars.iv129, !dbg !1843
  %6 = load float* %arrayidx37, align 4, !dbg !1843, !tbaa !1007
  %sub38 = fsub float %call, %6, !dbg !1843
  %cmp40 = fcmp ogt float %sub38, 0.000000e+00, !dbg !1843
  br i1 %cmp40, label %if.then42, label %if.end50, !dbg !1843

if.then42:                                        ; preds = %if.then32
  %sub48 = fsub float %6, %call, !dbg !1845
  tail call void @llvm.dbg.value(metadata !{float %sub48}, i64 0, metadata !862), !dbg !1845
  br label %if.end50, !dbg !1845

if.end50:                                         ; preds = %if.then32, %if.end23, %if.then42
  %add.1 = phi float [ %sub48, %if.then42 ], [ %add.0, %if.end23 ], [ %add.0, %if.then32 ]
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !859), !dbg !1835
  %7 = load i32* %nr, align 4, !dbg !1835, !tbaa !994
  %cmp52123 = icmp sgt i32 %7, 0, !dbg !1835
  br i1 %cmp52123, label %for.cond55.preheader.lr.ph, label %for.end78, !dbg !1835

for.cond55.preheader.lr.ph:                       ; preds = %if.end50
  %8 = load i32** %anrs, align 8, !dbg !1837, !tbaa !990
  br label %for.cond55.preheader, !dbg !1835

for.cond55.preheader:                             ; preds = %for.cond55.preheader.lr.ph, %for.inc76
  %indvars.iv127 = phi i64 [ 0, %for.cond55.preheader.lr.ph ], [ %indvars.iv.next128, %for.inc76 ]
  %arrayidx71 = getelementptr inbounds i32* %8, i64 %indvars.iv127, !dbg !1837
  %9 = load i32* %arrayidx71, align 4, !dbg !1837, !tbaa !994
  %idxprom72 = sext i32 %9 to i64, !dbg !1837
  br label %for.body58, !dbg !1846

for.body58:                                       ; preds = %for.body58, %for.cond55.preheader
  %indvars.iv = phi i64 [ 0, %for.cond55.preheader ], [ %indvars.iv.next, %for.body58 ]
  %arrayidx67 = getelementptr inbounds [3 x float]* %1, i64 %indvars.iv127, i64 %indvars.iv, !dbg !1837
  %10 = load float* %arrayidx67, align 4, !dbg !1837, !tbaa !1007
  %mul = fmul float %add.1, %10, !dbg !1837
  %arrayidx74 = getelementptr inbounds [3 x float]* %x, i64 %idxprom72, i64 %indvars.iv, !dbg !1837
  %11 = load float* %arrayidx74, align 4, !dbg !1837, !tbaa !1007
  %add75 = fadd float %mul, %11, !dbg !1837
  store float %add75, float* %arrayidx74, align 4, !dbg !1837, !tbaa !1007
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1846
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1846
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !1846
  br i1 %exitcond, label %for.inc76, label %for.body58, !dbg !1846

for.inc76:                                        ; preds = %for.body58
  %indvars.iv.next128 = add i64 %indvars.iv127, 1, !dbg !1835
  %12 = trunc i64 %indvars.iv.next128 to i32, !dbg !1835
  %cmp52 = icmp slt i32 %12, %7, !dbg !1835
  br i1 %cmp52, label %for.cond55.preheader, label %for.end78, !dbg !1835

for.end78:                                        ; preds = %for.inc76, %if.end50
  %add79 = fadd float %call, %add.1, !dbg !1847
  %13 = load float** %refproj, align 8, !dbg !1847, !tbaa !990
  %arrayidx84 = getelementptr inbounds float* %13, i64 %indvars.iv129, !dbg !1847
  store float %add79, float* %arrayidx84, align 4, !dbg !1847, !tbaa !1007
  %indvars.iv.next130 = add i64 %indvars.iv129, 1, !dbg !1828
  %14 = trunc i64 %indvars.iv.next130 to i32, !dbg !1828
  %cmp = icmp slt i32 %14, %0, !dbg !1828
  br i1 %cmp, label %for.body, label %for.end87, !dbg !1828

for.end87:                                        ; preds = %for.end78, %entry
  ret void, !dbg !1848
}

; Function Attrs: nounwind optsize uwtable
define void @do_radfix([3 x float]* nocapture %x, %struct.t_edpar* nocapture %edi, i32 %step) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !865), !dbg !1849
  tail call void @llvm.dbg.value(metadata !{%struct.t_edpar* %edi}, i64 0, metadata !866), !dbg !1849
  tail call void @llvm.dbg.value(metadata !{i32 %step}, i64 0, metadata !867), !dbg !1849
  tail call void @llvm.dbg.value(metadata !1374, i64 0, metadata !872), !dbg !1850
  %neig = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 0, !dbg !1851
  %0 = load i32* %neig, align 4, !dbg !1851, !tbaa !994
  %cmp = icmp eq i32 %0, 0, !dbg !1851
  br i1 %cmp, label %return, label %if.end, !dbg !1851

if.end:                                           ; preds = %entry
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 856, i32 %0, i32 4) #7, !dbg !1852
  %1 = bitcast i8* %call to float*, !dbg !1852
  tail call void @llvm.dbg.value(metadata !{float* %1}, i64 0, metadata !871), !dbg !1852
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !868), !dbg !1853
  %2 = load i32* %neig, align 4, !dbg !1853, !tbaa !994
  %cmp7137 = icmp sgt i32 %2, 0, !dbg !1853
  br i1 %cmp7137, label %for.body.lr.ph, label %for.end, !dbg !1853

for.body.lr.ph:                                   ; preds = %if.end
  %vec = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 3, !dbg !1855
  %refproj = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 7, !dbg !1857
  %.pre = load [3 x float]*** %vec, align 8, !dbg !1855, !tbaa !990
  %.pre146 = load float** %refproj, align 8, !dbg !1857, !tbaa !990
  br label %for.body, !dbg !1853

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv144 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next145, %for.body ]
  %rad.0138 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %phitmp, %for.body ]
  %arrayidx = getelementptr inbounds [3 x float]** %.pre, i64 %indvars.iv144, !dbg !1855
  %3 = load [3 x float]** %arrayidx, align 8, !dbg !1855, !tbaa !990
  %call10 = tail call float @do_projectx(%struct.t_edpar* %edi, [3 x float]* %x, [3 x float]* %3) #8, !dbg !1855
  %arrayidx12 = getelementptr inbounds float* %1, i64 %indvars.iv144, !dbg !1855
  store float %call10, float* %arrayidx12, align 4, !dbg !1855, !tbaa !1007
  %arrayidx18 = getelementptr inbounds float* %.pre146, i64 %indvars.iv144, !dbg !1857
  %4 = load float* %arrayidx18, align 4, !dbg !1857, !tbaa !1007
  %sub = fsub float %call10, %4, !dbg !1857
  %conv = fpext float %sub to double, !dbg !1857
  %pow2 = fmul double %conv, %conv, !dbg !1857
  %add = fadd double %rad.0138, %pow2, !dbg !1857
  %conv21 = fptrunc double %add to float, !dbg !1857
  tail call void @llvm.dbg.value(metadata !{float %conv21}, i64 0, metadata !872), !dbg !1857
  %indvars.iv.next145 = add i64 %indvars.iv144, 1, !dbg !1853
  %phitmp = fpext float %conv21 to double, !dbg !1853
  %5 = trunc i64 %indvars.iv.next145 to i32, !dbg !1853
  %cmp7 = icmp slt i32 %5, %2, !dbg !1853
  br i1 %cmp7, label %for.body, label %for.end, !dbg !1853

for.end:                                          ; preds = %for.body, %if.end
  %rad.0.lcssa = phi double [ 0.000000e+00, %if.end ], [ %phitmp, %for.body ]
  %call23 = tail call double @sqrt(double %rad.0.lcssa) #7, !dbg !1858
  %conv24 = fptrunc double %call23 to float, !dbg !1858
  tail call void @llvm.dbg.value(metadata !{float %conv24}, i64 0, metadata !872), !dbg !1858
  %stpsz = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 2, !dbg !1859
  %6 = load float** %stpsz, align 8, !dbg !1859, !tbaa !990
  %7 = load float* %6, align 4, !dbg !1859, !tbaa !1007
  %radius = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 8, !dbg !1859
  %8 = load float* %radius, align 4, !dbg !1859, !tbaa !1007
  %add30 = fadd float %7, %8, !dbg !1859
  %div = fdiv float %add30, %conv24, !dbg !1859
  %conv33 = fadd float %div, -1.000000e+00, !dbg !1859
  tail call void @llvm.dbg.value(metadata !{float %conv33}, i64 0, metadata !873), !dbg !1859
  store float %add30, float* %radius, align 4, !dbg !1860, !tbaa !1007
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !868), !dbg !1861
  %9 = load i32* %neig, align 4, !dbg !1861, !tbaa !994
  %cmp46135 = icmp sgt i32 %9, 0, !dbg !1861
  br i1 %cmp46135, label %for.body48.lr.ph, label %for.end93, !dbg !1861

for.body48.lr.ph:                                 ; preds = %for.end
  %refproj52 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 7, !dbg !1863
  %10 = load float** %refproj52, align 8, !dbg !1863, !tbaa !990
  %nr = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0, !dbg !1865
  %11 = load i32* %nr, align 4, !dbg !1865, !tbaa !994
  %cmp58133 = icmp sgt i32 %11, 0, !dbg !1865
  %vec72 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 3, !dbg !1867
  %anrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1, !dbg !1867
  br label %for.body48, !dbg !1861

for.body48:                                       ; preds = %for.body48.lr.ph, %for.inc91
  %indvars.iv142 = phi i64 [ 0, %for.body48.lr.ph ], [ %indvars.iv.next143, %for.inc91 ]
  %arrayidx53 = getelementptr inbounds float* %10, i64 %indvars.iv142, !dbg !1863
  %12 = load float* %arrayidx53, align 4, !dbg !1863, !tbaa !1007
  %arrayidx55 = getelementptr inbounds float* %1, i64 %indvars.iv142, !dbg !1863
  %13 = load float* %arrayidx55, align 4, !dbg !1863, !tbaa !1007
  %sub56 = fsub float %13, %12, !dbg !1863
  store float %sub56, float* %arrayidx55, align 4, !dbg !1863, !tbaa !1007
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !869), !dbg !1865
  br i1 %cmp58133, label %for.cond61.preheader.lr.ph, label %for.inc91, !dbg !1865

for.cond61.preheader.lr.ph:                       ; preds = %for.body48
  %14 = load [3 x float]*** %vec72, align 8, !dbg !1867, !tbaa !990
  %arrayidx73 = getelementptr inbounds [3 x float]** %14, i64 %indvars.iv142, !dbg !1867
  %15 = load [3 x float]** %arrayidx73, align 8, !dbg !1867, !tbaa !990
  %16 = load i32** %anrs, align 8, !dbg !1867, !tbaa !990
  br label %for.cond61.preheader, !dbg !1865

for.cond61.preheader:                             ; preds = %for.cond61.preheader.lr.ph, %for.inc88
  %indvars.iv140 = phi i64 [ 0, %for.cond61.preheader.lr.ph ], [ %indvars.iv.next141, %for.inc88 ]
  %arrayidx80 = getelementptr inbounds i32* %16, i64 %indvars.iv140, !dbg !1867
  %17 = load i32* %arrayidx80, align 4, !dbg !1867, !tbaa !994
  %idxprom81 = sext i32 %17 to i64, !dbg !1867
  br label %for.body64, !dbg !1870

for.body64:                                       ; preds = %for.body64, %for.cond61.preheader
  %indvars.iv = phi i64 [ 0, %for.cond61.preheader ], [ %indvars.iv.next, %for.body64 ]
  %18 = load float* %arrayidx55, align 4, !dbg !1867, !tbaa !1007
  %mul = fmul float %conv33, %18, !dbg !1867
  %arrayidx75 = getelementptr inbounds [3 x float]* %15, i64 %indvars.iv140, i64 %indvars.iv, !dbg !1867
  %19 = load float* %arrayidx75, align 4, !dbg !1867, !tbaa !1007
  %mul76 = fmul float %mul, %19, !dbg !1867
  %arrayidx83 = getelementptr inbounds [3 x float]* %x, i64 %idxprom81, i64 %indvars.iv, !dbg !1867
  %20 = load float* %arrayidx83, align 4, !dbg !1867, !tbaa !1007
  %add84 = fadd float %mul76, %20, !dbg !1867
  store float %add84, float* %arrayidx83, align 4, !dbg !1867, !tbaa !1007
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1870
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1870
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !1870
  br i1 %exitcond, label %for.inc88, label %for.body64, !dbg !1870

for.inc88:                                        ; preds = %for.body64
  %indvars.iv.next141 = add i64 %indvars.iv140, 1, !dbg !1865
  %21 = trunc i64 %indvars.iv.next141 to i32, !dbg !1865
  %cmp58 = icmp slt i32 %21, %11, !dbg !1865
  br i1 %cmp58, label %for.cond61.preheader, label %for.inc91, !dbg !1865

for.inc91:                                        ; preds = %for.inc88, %for.body48
  %indvars.iv.next143 = add i64 %indvars.iv142, 1, !dbg !1861
  %22 = trunc i64 %indvars.iv.next143 to i32, !dbg !1861
  %cmp46 = icmp slt i32 %22, %9, !dbg !1861
  br i1 %cmp46, label %for.body48, label %for.end93, !dbg !1861

for.end93:                                        ; preds = %for.inc91, %for.end
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 876, i8* %call) #7, !dbg !1871
  br label %return, !dbg !1871

return:                                           ; preds = %entry, %for.end93
  ret void, !dbg !1871
}

; Function Attrs: nounwind optsize uwtable
define void @do_radacc([3 x float]* nocapture %x, %struct.t_edpar* nocapture %edi) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !876), !dbg !1872
  tail call void @llvm.dbg.value(metadata !{%struct.t_edpar* %edi}, i64 0, metadata !877), !dbg !1872
  tail call void @llvm.dbg.value(metadata !1374, i64 0, metadata !882), !dbg !1873
  tail call void @llvm.dbg.value(metadata !1374, i64 0, metadata !883), !dbg !1873
  %neig = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 0, !dbg !1874
  %0 = load i32* %neig, align 4, !dbg !1874, !tbaa !994
  %cmp = icmp eq i32 %0, 0, !dbg !1874
  br i1 %cmp, label %return, label %if.end, !dbg !1874

if.end:                                           ; preds = %entry
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 885, i32 %0, i32 4) #7, !dbg !1875
  %1 = bitcast i8* %call to float*, !dbg !1875
  tail call void @llvm.dbg.value(metadata !{float* %1}, i64 0, metadata !881), !dbg !1875
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !878), !dbg !1876
  %2 = load i32* %neig, align 4, !dbg !1876, !tbaa !994
  %cmp7140 = icmp sgt i32 %2, 0, !dbg !1876
  br i1 %cmp7140, label %for.body.lr.ph, label %for.end, !dbg !1876

for.body.lr.ph:                                   ; preds = %if.end
  %vec = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 3, !dbg !1878
  %refproj = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 7, !dbg !1880
  %.pre = load [3 x float]*** %vec, align 8, !dbg !1878, !tbaa !990
  %.pre149 = load float** %refproj, align 8, !dbg !1880, !tbaa !990
  br label %for.body, !dbg !1876

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv147 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next148, %for.body ]
  %rad.0142 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %phitmp, %for.body ]
  %arrayidx = getelementptr inbounds [3 x float]** %.pre, i64 %indvars.iv147, !dbg !1878
  %3 = load [3 x float]** %arrayidx, align 8, !dbg !1878, !tbaa !990
  %call10 = tail call float @do_projectx(%struct.t_edpar* %edi, [3 x float]* %x, [3 x float]* %3) #8, !dbg !1878
  %arrayidx12 = getelementptr inbounds float* %1, i64 %indvars.iv147, !dbg !1878
  store float %call10, float* %arrayidx12, align 4, !dbg !1878, !tbaa !1007
  %arrayidx18 = getelementptr inbounds float* %.pre149, i64 %indvars.iv147, !dbg !1880
  %4 = load float* %arrayidx18, align 4, !dbg !1880, !tbaa !1007
  %sub = fsub float %call10, %4, !dbg !1880
  %conv = fpext float %sub to double, !dbg !1880
  %pow2 = fmul double %conv, %conv, !dbg !1880
  %add = fadd double %rad.0142, %pow2, !dbg !1880
  %conv21 = fptrunc double %add to float, !dbg !1880
  tail call void @llvm.dbg.value(metadata !{float %conv21}, i64 0, metadata !882), !dbg !1880
  %indvars.iv.next148 = add i64 %indvars.iv147, 1, !dbg !1876
  %phitmp = fpext float %conv21 to double, !dbg !1876
  %5 = trunc i64 %indvars.iv.next148 to i32, !dbg !1876
  %cmp7 = icmp slt i32 %5, %2, !dbg !1876
  br i1 %cmp7, label %for.body, label %for.end, !dbg !1876

for.end:                                          ; preds = %for.body, %if.end
  %rad.0.lcssa = phi double [ 0.000000e+00, %if.end ], [ %phitmp, %for.body ]
  %call23 = tail call double @sqrt(double %rad.0.lcssa) #7, !dbg !1881
  %conv24 = fptrunc double %call23 to float, !dbg !1881
  tail call void @llvm.dbg.value(metadata !{float %conv24}, i64 0, metadata !882), !dbg !1881
  %radius = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 8, !dbg !1882
  %6 = load float* %radius, align 4, !dbg !1882, !tbaa !1007
  %cmp27 = fcmp olt float %conv24, %6, !dbg !1882
  br i1 %cmp27, label %if.then29, label %if.else, !dbg !1882

if.then29:                                        ; preds = %for.end
  %div = fdiv float %6, %conv24, !dbg !1883
  %conv35 = fadd float %div, -1.000000e+00, !dbg !1883
  tail call void @llvm.dbg.value(metadata !{float %conv35}, i64 0, metadata !883), !dbg !1883
  br label %if.end42, !dbg !1885

if.else:                                          ; preds = %for.end
  store float %conv24, float* %radius, align 4, !dbg !1886, !tbaa !1007
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then29
  %ratio.0 = phi float [ %conv35, %if.then29 ], [ 0.000000e+00, %if.else ]
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !878), !dbg !1887
  %7 = load i32* %neig, align 4, !dbg !1887, !tbaa !994
  %cmp47138 = icmp sgt i32 %7, 0, !dbg !1887
  br i1 %cmp47138, label %for.body49.lr.ph, label %for.end94, !dbg !1887

for.body49.lr.ph:                                 ; preds = %if.end42
  %refproj53 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 7, !dbg !1889
  %8 = load float** %refproj53, align 8, !dbg !1889, !tbaa !990
  %nr = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0, !dbg !1891
  %9 = load i32* %nr, align 4, !dbg !1891, !tbaa !994
  %cmp59136 = icmp sgt i32 %9, 0, !dbg !1891
  %vec73 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 3, !dbg !1893
  %anrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1, !dbg !1893
  br label %for.body49, !dbg !1887

for.body49:                                       ; preds = %for.body49.lr.ph, %for.inc92
  %indvars.iv145 = phi i64 [ 0, %for.body49.lr.ph ], [ %indvars.iv.next146, %for.inc92 ]
  %arrayidx54 = getelementptr inbounds float* %8, i64 %indvars.iv145, !dbg !1889
  %10 = load float* %arrayidx54, align 4, !dbg !1889, !tbaa !1007
  %arrayidx56 = getelementptr inbounds float* %1, i64 %indvars.iv145, !dbg !1889
  %11 = load float* %arrayidx56, align 4, !dbg !1889, !tbaa !1007
  %sub57 = fsub float %11, %10, !dbg !1889
  store float %sub57, float* %arrayidx56, align 4, !dbg !1889, !tbaa !1007
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !879), !dbg !1891
  br i1 %cmp59136, label %for.cond62.preheader.lr.ph, label %for.inc92, !dbg !1891

for.cond62.preheader.lr.ph:                       ; preds = %for.body49
  %12 = load [3 x float]*** %vec73, align 8, !dbg !1893, !tbaa !990
  %arrayidx74 = getelementptr inbounds [3 x float]** %12, i64 %indvars.iv145, !dbg !1893
  %13 = load [3 x float]** %arrayidx74, align 8, !dbg !1893, !tbaa !990
  %14 = load i32** %anrs, align 8, !dbg !1893, !tbaa !990
  br label %for.cond62.preheader, !dbg !1891

for.cond62.preheader:                             ; preds = %for.cond62.preheader.lr.ph, %for.inc89
  %indvars.iv143 = phi i64 [ 0, %for.cond62.preheader.lr.ph ], [ %indvars.iv.next144, %for.inc89 ]
  %arrayidx81 = getelementptr inbounds i32* %14, i64 %indvars.iv143, !dbg !1893
  %15 = load i32* %arrayidx81, align 4, !dbg !1893, !tbaa !994
  %idxprom82 = sext i32 %15 to i64, !dbg !1893
  br label %for.body65, !dbg !1896

for.body65:                                       ; preds = %for.body65, %for.cond62.preheader
  %indvars.iv = phi i64 [ 0, %for.cond62.preheader ], [ %indvars.iv.next, %for.body65 ]
  %16 = load float* %arrayidx56, align 4, !dbg !1893, !tbaa !1007
  %mul = fmul float %ratio.0, %16, !dbg !1893
  %arrayidx76 = getelementptr inbounds [3 x float]* %13, i64 %indvars.iv143, i64 %indvars.iv, !dbg !1893
  %17 = load float* %arrayidx76, align 4, !dbg !1893, !tbaa !1007
  %mul77 = fmul float %mul, %17, !dbg !1893
  %arrayidx84 = getelementptr inbounds [3 x float]* %x, i64 %idxprom82, i64 %indvars.iv, !dbg !1893
  %18 = load float* %arrayidx84, align 4, !dbg !1893, !tbaa !1007
  %add85 = fadd float %mul77, %18, !dbg !1893
  store float %add85, float* %arrayidx84, align 4, !dbg !1893, !tbaa !1007
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1896
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1896
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !1896
  br i1 %exitcond, label %for.inc89, label %for.body65, !dbg !1896

for.inc89:                                        ; preds = %for.body65
  %indvars.iv.next144 = add i64 %indvars.iv143, 1, !dbg !1891
  %19 = trunc i64 %indvars.iv.next144 to i32, !dbg !1891
  %cmp59 = icmp slt i32 %19, %9, !dbg !1891
  br i1 %cmp59, label %for.cond62.preheader, label %for.inc92, !dbg !1891

for.inc92:                                        ; preds = %for.inc89, %for.body49
  %indvars.iv.next146 = add i64 %indvars.iv145, 1, !dbg !1887
  %20 = trunc i64 %indvars.iv.next146 to i32, !dbg !1887
  %cmp47 = icmp slt i32 %20, %7, !dbg !1887
  br i1 %cmp47, label %for.body49, label %for.end94, !dbg !1887

for.end94:                                        ; preds = %for.inc92, %if.end42
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 913, i8* %call) #7, !dbg !1897
  br label %return, !dbg !1897

return:                                           ; preds = %entry, %for.end94
  ret void, !dbg !1897
}

; Function Attrs: nounwind optsize uwtable
define void @do_radcon([3 x float]* nocapture %x, %struct.t_edpar* nocapture %edi) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !886), !dbg !1898
  tail call void @llvm.dbg.value(metadata !{%struct.t_edpar* %edi}, i64 0, metadata !887), !dbg !1898
  tail call void @llvm.dbg.value(metadata !1374, i64 0, metadata !892), !dbg !1899
  tail call void @llvm.dbg.value(metadata !1374, i64 0, metadata !893), !dbg !1899
  %neig = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 0, !dbg !1900
  %0 = load i32* %neig, align 4, !dbg !1900, !tbaa !994
  %cmp = icmp eq i32 %0, 0, !dbg !1900
  br i1 %cmp, label %return, label %if.end, !dbg !1900

if.end:                                           ; preds = %entry
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 922, i32 %0, i32 4) #7, !dbg !1901
  %1 = bitcast i8* %call to float*, !dbg !1901
  tail call void @llvm.dbg.value(metadata !{float* %1}, i64 0, metadata !891), !dbg !1901
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !888), !dbg !1902
  %2 = load i32* %neig, align 4, !dbg !1902, !tbaa !994
  %cmp7140 = icmp sgt i32 %2, 0, !dbg !1902
  br i1 %cmp7140, label %for.body.lr.ph, label %for.end, !dbg !1902

for.body.lr.ph:                                   ; preds = %if.end
  %vec = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 3, !dbg !1904
  %refproj = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 7, !dbg !1906
  %.pre = load [3 x float]*** %vec, align 8, !dbg !1904, !tbaa !990
  %.pre149 = load float** %refproj, align 8, !dbg !1906, !tbaa !990
  br label %for.body, !dbg !1902

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv147 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next148, %for.body ]
  %rad.0142 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %phitmp, %for.body ]
  %arrayidx = getelementptr inbounds [3 x float]** %.pre, i64 %indvars.iv147, !dbg !1904
  %3 = load [3 x float]** %arrayidx, align 8, !dbg !1904, !tbaa !990
  %call10 = tail call float @do_projectx(%struct.t_edpar* %edi, [3 x float]* %x, [3 x float]* %3) #8, !dbg !1904
  %arrayidx12 = getelementptr inbounds float* %1, i64 %indvars.iv147, !dbg !1904
  store float %call10, float* %arrayidx12, align 4, !dbg !1904, !tbaa !1007
  %arrayidx18 = getelementptr inbounds float* %.pre149, i64 %indvars.iv147, !dbg !1906
  %4 = load float* %arrayidx18, align 4, !dbg !1906, !tbaa !1007
  %sub = fsub float %call10, %4, !dbg !1906
  %conv = fpext float %sub to double, !dbg !1906
  %pow2 = fmul double %conv, %conv, !dbg !1906
  %add = fadd double %rad.0142, %pow2, !dbg !1906
  %conv21 = fptrunc double %add to float, !dbg !1906
  tail call void @llvm.dbg.value(metadata !{float %conv21}, i64 0, metadata !892), !dbg !1906
  %indvars.iv.next148 = add i64 %indvars.iv147, 1, !dbg !1902
  %phitmp = fpext float %conv21 to double, !dbg !1902
  %5 = trunc i64 %indvars.iv.next148 to i32, !dbg !1902
  %cmp7 = icmp slt i32 %5, %2, !dbg !1902
  br i1 %cmp7, label %for.body, label %for.end, !dbg !1902

for.end:                                          ; preds = %for.body, %if.end
  %rad.0.lcssa = phi double [ 0.000000e+00, %if.end ], [ %phitmp, %for.body ]
  %call23 = tail call double @sqrt(double %rad.0.lcssa) #7, !dbg !1907
  %conv24 = fptrunc double %call23 to float, !dbg !1907
  tail call void @llvm.dbg.value(metadata !{float %conv24}, i64 0, metadata !892), !dbg !1907
  %radius = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 8, !dbg !1908
  %6 = load float* %radius, align 4, !dbg !1908, !tbaa !1007
  %cmp27 = fcmp ogt float %conv24, %6, !dbg !1908
  br i1 %cmp27, label %if.then29, label %if.else, !dbg !1908

if.then29:                                        ; preds = %for.end
  %div = fdiv float %6, %conv24, !dbg !1909
  %conv35 = fadd float %div, -1.000000e+00, !dbg !1909
  tail call void @llvm.dbg.value(metadata !{float %conv35}, i64 0, metadata !893), !dbg !1909
  br label %if.end42, !dbg !1911

if.else:                                          ; preds = %for.end
  store float %conv24, float* %radius, align 4, !dbg !1912, !tbaa !1007
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then29
  %ratio.0 = phi float [ %conv35, %if.then29 ], [ 0.000000e+00, %if.else ]
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !888), !dbg !1913
  %7 = load i32* %neig, align 4, !dbg !1913, !tbaa !994
  %cmp47138 = icmp sgt i32 %7, 0, !dbg !1913
  br i1 %cmp47138, label %for.body49.lr.ph, label %for.end94, !dbg !1913

for.body49.lr.ph:                                 ; preds = %if.end42
  %refproj53 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 7, !dbg !1915
  %8 = load float** %refproj53, align 8, !dbg !1915, !tbaa !990
  %nr = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0, !dbg !1917
  %9 = load i32* %nr, align 4, !dbg !1917, !tbaa !994
  %cmp59136 = icmp sgt i32 %9, 0, !dbg !1917
  %vec73 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 3, !dbg !1919
  %anrs = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1, !dbg !1919
  br label %for.body49, !dbg !1913

for.body49:                                       ; preds = %for.body49.lr.ph, %for.inc92
  %indvars.iv145 = phi i64 [ 0, %for.body49.lr.ph ], [ %indvars.iv.next146, %for.inc92 ]
  %arrayidx54 = getelementptr inbounds float* %8, i64 %indvars.iv145, !dbg !1915
  %10 = load float* %arrayidx54, align 4, !dbg !1915, !tbaa !1007
  %arrayidx56 = getelementptr inbounds float* %1, i64 %indvars.iv145, !dbg !1915
  %11 = load float* %arrayidx56, align 4, !dbg !1915, !tbaa !1007
  %sub57 = fsub float %11, %10, !dbg !1915
  store float %sub57, float* %arrayidx56, align 4, !dbg !1915, !tbaa !1007
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !889), !dbg !1917
  br i1 %cmp59136, label %for.cond62.preheader.lr.ph, label %for.inc92, !dbg !1917

for.cond62.preheader.lr.ph:                       ; preds = %for.body49
  %12 = load [3 x float]*** %vec73, align 8, !dbg !1919, !tbaa !990
  %arrayidx74 = getelementptr inbounds [3 x float]** %12, i64 %indvars.iv145, !dbg !1919
  %13 = load [3 x float]** %arrayidx74, align 8, !dbg !1919, !tbaa !990
  %14 = load i32** %anrs, align 8, !dbg !1919, !tbaa !990
  br label %for.cond62.preheader, !dbg !1917

for.cond62.preheader:                             ; preds = %for.cond62.preheader.lr.ph, %for.inc89
  %indvars.iv143 = phi i64 [ 0, %for.cond62.preheader.lr.ph ], [ %indvars.iv.next144, %for.inc89 ]
  %arrayidx81 = getelementptr inbounds i32* %14, i64 %indvars.iv143, !dbg !1919
  %15 = load i32* %arrayidx81, align 4, !dbg !1919, !tbaa !994
  %idxprom82 = sext i32 %15 to i64, !dbg !1919
  br label %for.body65, !dbg !1922

for.body65:                                       ; preds = %for.body65, %for.cond62.preheader
  %indvars.iv = phi i64 [ 0, %for.cond62.preheader ], [ %indvars.iv.next, %for.body65 ]
  %16 = load float* %arrayidx56, align 4, !dbg !1919, !tbaa !1007
  %mul = fmul float %ratio.0, %16, !dbg !1919
  %arrayidx76 = getelementptr inbounds [3 x float]* %13, i64 %indvars.iv143, i64 %indvars.iv, !dbg !1919
  %17 = load float* %arrayidx76, align 4, !dbg !1919, !tbaa !1007
  %mul77 = fmul float %mul, %17, !dbg !1919
  %arrayidx84 = getelementptr inbounds [3 x float]* %x, i64 %idxprom82, i64 %indvars.iv, !dbg !1919
  %18 = load float* %arrayidx84, align 4, !dbg !1919, !tbaa !1007
  %add85 = fadd float %mul77, %18, !dbg !1919
  store float %add85, float* %arrayidx84, align 4, !dbg !1919, !tbaa !1007
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1922
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1922
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !1922
  br i1 %exitcond, label %for.inc89, label %for.body65, !dbg !1922

for.inc89:                                        ; preds = %for.body65
  %indvars.iv.next144 = add i64 %indvars.iv143, 1, !dbg !1917
  %19 = trunc i64 %indvars.iv.next144 to i32, !dbg !1917
  %cmp59 = icmp slt i32 %19, %9, !dbg !1917
  br i1 %cmp59, label %for.cond62.preheader, label %for.inc92, !dbg !1917

for.inc92:                                        ; preds = %for.inc89, %for.body49
  %indvars.iv.next146 = add i64 %indvars.iv145, 1, !dbg !1913
  %20 = trunc i64 %indvars.iv.next146 to i32, !dbg !1913
  %cmp47 = icmp slt i32 %20, %7, !dbg !1913
  br i1 %cmp47, label %for.body49, label %for.end94, !dbg !1913

for.end94:                                        ; preds = %for.inc92, %if.end42
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 948, i8* %call) #7, !dbg !1923
  br label %return, !dbg !1923

return:                                           ; preds = %entry, %for.end94
  ret void, !dbg !1923
}

; Function Attrs: nounwind optsize uwtable
define void @write_proj(%struct._IO_FILE* nocapture %out, %struct.t_edpar* nocapture %edi, i8* nocapture %mode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !905), !dbg !1924
  tail call void @llvm.dbg.value(metadata !{%struct.t_edpar* %edi}, i64 0, metadata !906), !dbg !1924
  tail call void @llvm.dbg.value(metadata !{i8* %mode}, i64 0, metadata !907), !dbg !1924
  %mon = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 0, !dbg !1925
  tail call void @do_write_proj(%struct._IO_FILE* %out, %struct.t_eigvec* %mon, i8* %mode) #8, !dbg !1925
  %linfix = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1, !dbg !1926
  tail call void @do_write_proj(%struct._IO_FILE* %out, %struct.t_eigvec* %linfix, i8* %mode) #8, !dbg !1926
  %linacc = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2, !dbg !1927
  tail call void @do_write_proj(%struct._IO_FILE* %out, %struct.t_eigvec* %linacc, i8* %mode) #8, !dbg !1927
  %radfix = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, !dbg !1928
  tail call void @do_write_proj(%struct._IO_FILE* %out, %struct.t_eigvec* %radfix, i8* %mode) #8, !dbg !1928
  %radacc = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, !dbg !1929
  tail call void @do_write_proj(%struct._IO_FILE* %out, %struct.t_eigvec* %radacc, i8* %mode) #8, !dbg !1929
  %radcon = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, !dbg !1930
  tail call void @do_write_proj(%struct._IO_FILE* %out, %struct.t_eigvec* %radcon, i8* %mode) #8, !dbg !1930
  ret void, !dbg !1931
}

; Function Attrs: nounwind optsize uwtable
define void @do_write_proj(%struct._IO_FILE* nocapture %out, %struct.t_eigvec* nocapture %vec, i8* nocapture %mode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !912), !dbg !1932
  tail call void @llvm.dbg.value(metadata !{%struct.t_eigvec* %vec}, i64 0, metadata !913), !dbg !1932
  tail call void @llvm.dbg.value(metadata !{i8* %mode}, i64 0, metadata !914), !dbg !1932
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !915), !dbg !1933
  %neig = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 0, !dbg !1933
  %0 = load i32* %neig, align 4, !dbg !1933, !tbaa !994
  %cmp41 = icmp sgt i32 %0, 0, !dbg !1933
  br i1 %cmp41, label %for.body.lr.ph, label %if.end27, !dbg !1933

for.body.lr.ph:                                   ; preds = %entry
  %xproj = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 4, !dbg !1935
  %vproj = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 5, !dbg !1937
  %fproj = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 6, !dbg !1938
  br label %for.body, !dbg !1933

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %call = tail call i32 @strcmp(i8* %mode, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #9, !dbg !1939
  %cmp1 = icmp eq i32 %call, 0, !dbg !1939
  br i1 %cmp1, label %if.then, label %if.else, !dbg !1939

if.then:                                          ; preds = %for.body
  %1 = load float** %xproj, align 8, !dbg !1935, !tbaa !990
  %arrayidx = getelementptr inbounds float* %1, i64 %indvars.iv, !dbg !1935
  %2 = load float* %arrayidx, align 4, !dbg !1935, !tbaa !1007
  %conv = fpext float %2 to double, !dbg !1935
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str59, i64 0, i64 0), double %conv) #7, !dbg !1935
  br label %for.inc, !dbg !1935

if.else:                                          ; preds = %for.body
  %call3 = tail call i32 @strcmp(i8* %mode, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #9, !dbg !1940
  %cmp4 = icmp eq i32 %call3, 0, !dbg !1940
  br i1 %cmp4, label %if.then6, label %if.else11, !dbg !1940

if.then6:                                         ; preds = %if.else
  %3 = load float** %vproj, align 8, !dbg !1937, !tbaa !990
  %arrayidx8 = getelementptr inbounds float* %3, i64 %indvars.iv, !dbg !1937
  %4 = load float* %arrayidx8, align 4, !dbg !1937, !tbaa !1007
  %conv9 = fpext float %4 to double, !dbg !1937
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str59, i64 0, i64 0), double %conv9) #7, !dbg !1937
  br label %for.inc, !dbg !1937

if.else11:                                        ; preds = %if.else
  %call12 = tail call i32 @strcmp(i8* %mode, i8* getelementptr inbounds ([2 x i8]* @.str49, i64 0, i64 0)) #9, !dbg !1941
  %cmp13 = icmp eq i32 %call12, 0, !dbg !1941
  br i1 %cmp13, label %if.then15, label %for.inc, !dbg !1941

if.then15:                                        ; preds = %if.else11
  %5 = load float** %fproj, align 8, !dbg !1938, !tbaa !990
  %arrayidx17 = getelementptr inbounds float* %5, i64 %indvars.iv, !dbg !1938
  %6 = load float* %arrayidx17, align 4, !dbg !1938, !tbaa !1007
  %conv18 = fpext float %6 to double, !dbg !1938
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str59, i64 0, i64 0), double %conv18) #7, !dbg !1938
  br label %for.inc, !dbg !1938

for.inc:                                          ; preds = %if.then, %if.else11, %if.then15, %if.then6
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1933
  %7 = load i32* %neig, align 4, !dbg !1933, !tbaa !994
  %8 = trunc i64 %indvars.iv.next to i32, !dbg !1933
  %cmp = icmp slt i32 %8, %7, !dbg !1933
  br i1 %cmp, label %for.body, label %for.end, !dbg !1933

for.end:                                          ; preds = %for.inc
  %cmp23 = icmp sgt i32 %7, 0, !dbg !1942
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !1942

if.then25:                                        ; preds = %for.end
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out), !dbg !1942
  br label %if.end27, !dbg !1942

if.end27:                                         ; preds = %entry, %if.then25, %for.end
  ret void, !dbg !1943
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #2

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #4

declare float @fabsf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize readonly }
attributes #10 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !53, metadata !54, metadata !982, metadata !53, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
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
!53 = metadata !{i32 0}
!54 = metadata !{metadata !55, metadata !83, metadata !482, metadata !496, metadata !506, metadata !514, metadata !519, metadata !532, metadata !540, metadata !552, metadata !564, metadata !579, metadata !606, metadata !619, metadata !627, metadata !639, metadata !650, metadata !660, metadata !666, metadata !812, metadata !823, metadata !834, metadata !842, metadata !852, metadata !863, metadata !874, metadata !884, metadata !894, metadata !901, metadata !908, metadata !916, metadata !923, metadata !938, metadata !947, metadata !954, metadata !959, metadata !965, metadata !976}
!55 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"ed_open", metadata !"ed_open", metadata !"", i32 55, metadata !57, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, %struct.t_filenm*, %struct.t_edsamyn*)* @ed_open, null, null, metadata !79, i32 56} ; [ DW_TAG_subprogram ] [line 55] [def] [scope 56] [ed_open]
!56 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!57 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!58 = metadata !{null, metadata !59, metadata !60, metadata !71}
!59 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!60 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_filenm]
!61 = metadata !{i32 786454, metadata !1, null, metadata !"t_filenm", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [t_filenm] [line 62, size 0, align 0, offset 0] [from ]
!62 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 57, i64 256, i64 64, i32 0, i32 0, null, metadata !63, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 57, size 256, align 64, offset 0] [from ]
!63 = metadata !{metadata !64, metadata !65, metadata !68, metadata !69}
!64 = metadata !{i32 786445, metadata !4, metadata !62, metadata !"ftp", i32 58, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [ftp] [line 58, size 32, align 32, offset 0] [from int]
!65 = metadata !{i32 786445, metadata !4, metadata !62, metadata !"opt", i32 59, i64 64, i64 64, i64 64, i32 0, metadata !66} ; [ DW_TAG_member ] [opt] [line 59, size 64, align 64, offset 64] [from ]
!66 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !67} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!67 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!68 = metadata !{i32 786445, metadata !4, metadata !62, metadata !"fn", i32 60, i64 64, i64 64, i64 128, i32 0, metadata !66} ; [ DW_TAG_member ] [fn] [line 60, size 64, align 64, offset 128] [from ]
!69 = metadata !{i32 786445, metadata !4, metadata !62, metadata !"flag", i32 61, i64 64, i64 64, i64 192, i32 0, metadata !70} ; [ DW_TAG_member ] [flag] [line 61, size 64, align 64, offset 192] [from long unsigned int]
!70 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!71 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !72} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_edsamyn]
!72 = metadata !{i32 786454, metadata !1, null, metadata !"t_edsamyn", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_typedef ] [t_edsamyn] [line 40, size 0, align 0, offset 0] [from ]
!73 = metadata !{i32 786451, metadata !74, null, metadata !"", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !75, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 64, offset 0] [from ]
!74 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/edsams.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!75 = metadata !{metadata !76, metadata !77, metadata !78}
!76 = metadata !{i32 786445, metadata !74, metadata !73, metadata !"bEdsam", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [bEdsam] [line 37, size 32, align 32, offset 0] [from int]
!77 = metadata !{i32 786445, metadata !74, metadata !73, metadata !"edinam", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !66} ; [ DW_TAG_member ] [edinam] [line 38, size 64, align 64, offset 64] [from ]
!78 = metadata !{i32 786445, metadata !74, metadata !73, metadata !"edonam", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !66} ; [ DW_TAG_member ] [edonam] [line 39, size 64, align 64, offset 128] [from ]
!79 = metadata !{metadata !80, metadata !81, metadata !82}
!80 = metadata !{i32 786689, metadata !55, metadata !"nfile", metadata !56, i32 16777271, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nfile] [line 55]
!81 = metadata !{i32 786689, metadata !55, metadata !"fnm", metadata !56, i32 33554487, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 55]
!82 = metadata !{i32 786689, metadata !55, metadata !"edyn", metadata !56, i32 50331703, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [edyn] [line 55]
!83 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"init_edsam", metadata !"init_edsam", metadata !"", i32 63, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_topology*, %struct.t_mdatoms*, i32, i32, [3 x float]*, [3 x float]*, %struct.t_edsamyn*, %struct.t_edpar*)* @init_edsam, null, null, metadata !464, i32 67} ; [ DW_TAG_subprogram ] [line 63] [def] [scope 67] [init_edsam]
!84 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !85, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!85 = metadata !{null, metadata !86, metadata !140, metadata !375, metadata !59, metadata !59, metadata !405, metadata !407, metadata !71, metadata !408}
!86 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!87 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!88 = metadata !{i32 786451, metadata !89, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !90, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!89 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!90 = metadata !{metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !111, metadata !112, metadata !113, metadata !114, metadata !117, metadata !119, metadata !121, metadata !125, metadata !127, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !135, metadata !136}
!91 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!92 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !66} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!93 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !66} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!94 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !66} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!95 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !66} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!96 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !66} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!97 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !66} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!98 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !66} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!99 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !66} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!100 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !66} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!101 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !66} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!102 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !66} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!103 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !104} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!104 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !105} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!105 = metadata !{i32 786451, metadata !89, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !106, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!106 = metadata !{metadata !107, metadata !108, metadata !110}
!107 = metadata !{i32 786445, metadata !89, metadata !105, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !104} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!108 = metadata !{i32 786445, metadata !89, metadata !105, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !109} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!109 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!110 = metadata !{i32 786445, metadata !89, metadata !105, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !59} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!111 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !109} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!112 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !59} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!113 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !59} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!114 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !115} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!115 = metadata !{i32 786454, metadata !89, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !116} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!116 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!117 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !118} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!118 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!119 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !120} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!120 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!121 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !122} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!122 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !67, metadata !123, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!123 = metadata !{metadata !124}
!124 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!125 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !126} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!126 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!127 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !128} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!128 = metadata !{i32 786454, metadata !89, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !116} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!129 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !126} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!130 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !126} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!131 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !126} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!132 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !126} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!133 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !134} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!134 = metadata !{i32 786454, metadata !89, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!135 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !59} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!136 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !137} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!137 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !67, metadata !138, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!138 = metadata !{metadata !139}
!139 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!140 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !141} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_topology]
!141 = metadata !{i32 786454, metadata !1, null, metadata !"t_topology", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !142} ; [ DW_TAG_typedef ] [t_topology] [line 42, size 0, align 0, offset 0] [from ]
!142 = metadata !{i32 786451, metadata !143, null, metadata !"", i32 36, i64 402112, i64 64, i32 0, i32 0, null, metadata !144, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 402112, align 64, offset 0] [from ]
!143 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/topology.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!144 = metadata !{metadata !145, metadata !147, metadata !291, metadata !358, metadata !360}
!145 = metadata !{i32 786445, metadata !143, metadata !142, metadata !"name", i32 37, i64 64, i64 64, i64 0, i32 0, metadata !146} ; [ DW_TAG_member ] [name] [line 37, size 64, align 64, offset 0] [from ]
!146 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !66} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!147 = metadata !{i32 786445, metadata !143, metadata !142, metadata !"idef", i32 38, i64 366336, i64 64, i64 64, i32 0, metadata !148} ; [ DW_TAG_member ] [idef] [line 38, size 366336, align 64, offset 64] [from t_idef]
!148 = metadata !{i32 786454, metadata !143, null, metadata !"t_idef", i32 188, i64 0, i64 0, i64 0, i32 0, metadata !149} ; [ DW_TAG_typedef ] [t_idef] [line 188, size 0, align 0, offset 0] [from ]
!149 = metadata !{i32 786451, metadata !150, null, metadata !"", i32 179, i64 366336, i64 64, i32 0, i32 0, null, metadata !151, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 179, size 366336, align 64, offset 0] [from ]
!150 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/idef.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!151 = metadata !{metadata !152, metadata !153, metadata !154, metadata !155, metadata !158, metadata !275}
!152 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"ntypes", i32 181, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [ntypes] [line 181, size 32, align 32, offset 0] [from int]
!153 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"nodeid", i32 182, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [nodeid] [line 182, size 32, align 32, offset 32] [from int]
!154 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"atnr", i32 183, i64 32, i64 32, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [atnr] [line 183, size 32, align 32, offset 64] [from int]
!155 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"functype", i32 184, i64 64, i64 64, i64 128, i32 0, metadata !156} ; [ DW_TAG_member ] [functype] [line 184, size 64, align 64, offset 128] [from ]
!156 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !157} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_functype]
!157 = metadata !{i32 786454, metadata !150, null, metadata !"t_functype", i32 133, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [t_functype] [line 133, size 0, align 0, offset 0] [from int]
!158 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"iparams", i32 185, i64 64, i64 64, i64 192, i32 0, metadata !159} ; [ DW_TAG_member ] [iparams] [line 185, size 64, align 64, offset 192] [from ]
!159 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !160} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iparams]
!160 = metadata !{i32 786454, metadata !150, null, metadata !"t_iparams", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !161} ; [ DW_TAG_typedef ] [t_iparams] [line 131, size 0, align 0, offset 0] [from ]
!161 = metadata !{i32 786455, metadata !150, null, metadata !"", i32 97, i64 192, i64 32, i64 0, i32 0, null, metadata !162, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 97, size 192, align 32, offset 0] [from ]
!162 = metadata !{metadata !163, metadata !171, metadata !178, metadata !184, metadata !193, metadata !198, metadata !205, metadata !213, metadata !218, metadata !223, metadata !229, metadata !237, metadata !244, metadata !253, metadata !262, metadata !271}
!163 = metadata !{i32 786445, metadata !150, metadata !161, metadata !"bham", i32 105, i64 96, i64 32, i64 0, i32 0, metadata !164} ; [ DW_TAG_member ] [bham] [line 105, size 96, align 32, offset 0] [from ]
!164 = metadata !{i32 786451, metadata !150, metadata !161, metadata !"", i32 105, i64 96, i64 32, i32 0, i32 0, null, metadata !165, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 105, size 96, align 32, offset 0] [from ]
!165 = metadata !{metadata !166, metadata !169, metadata !170}
!166 = metadata !{i32 786445, metadata !150, metadata !164, metadata !"a", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !167} ; [ DW_TAG_member ] [a] [line 105, size 32, align 32, offset 0] [from real]
!167 = metadata !{i32 786454, metadata !150, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !168} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!168 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!169 = metadata !{i32 786445, metadata !150, metadata !164, metadata !"b", i32 105, i64 32, i64 32, i64 32, i32 0, metadata !167} ; [ DW_TAG_member ] [b] [line 105, size 32, align 32, offset 32] [from real]
!170 = metadata !{i32 786445, metadata !150, metadata !164, metadata !"c", i32 105, i64 32, i64 32, i64 64, i32 0, metadata !167} ; [ DW_TAG_member ] [c] [line 105, size 32, align 32, offset 64] [from real]
!171 = metadata !{i32 786445, metadata !150, metadata !161, metadata !"harmonic", i32 106, i64 128, i64 32, i64 0, i32 0, metadata !172} ; [ DW_TAG_member ] [harmonic] [line 106, size 128, align 32, offset 0] [from ]
!172 = metadata !{i32 786451, metadata !150, metadata !161, metadata !"", i32 106, i64 128, i64 32, i32 0, i32 0, null, metadata !173, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 106, size 128, align 32, offset 0] [from ]
!173 = metadata !{metadata !174, metadata !175, metadata !176, metadata !177}
!174 = metadata !{i32 786445, metadata !150, metadata !172, metadata !"rA", i32 106, i64 32, i64 32, i64 0, i32 0, metadata !167} ; [ DW_TAG_member ] [rA] [line 106, size 32, align 32, offset 0] [from real]
!175 = metadata !{i32 786445, metadata !150, metadata !172, metadata !"krA", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !167} ; [ DW_TAG_member ] [krA] [line 106, size 32, align 32, offset 32] [from real]
!176 = metadata !{i32 786445, metadata !150, metadata !172, metadata !"rB", i32 106, i64 32, i64 32, i64 64, i32 0, metadata !167} ; [ DW_TAG_member ] [rB] [line 106, size 32, align 32, offset 64] [from real]
!177 = metadata !{i32 786445, metadata !150, metadata !172, metadata !"krB", i32 106, i64 32, i64 32, i64 96, i32 0, metadata !167} ; [ DW_TAG_member ] [krB] [line 106, size 32, align 32, offset 96] [from real]
!178 = metadata !{i32 786445, metadata !150, metadata !161, metadata !"cubic", i32 108, i64 96, i64 32, i64 0, i32 0, metadata !179} ; [ DW_TAG_member ] [cubic] [line 108, size 96, align 32, offset 0] [from ]
!179 = metadata !{i32 786451, metadata !150, metadata !161, metadata !"", i32 108, i64 96, i64 32, i32 0, i32 0, null, metadata !180, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 108, size 96, align 32, offset 0] [from ]
!180 = metadata !{metadata !181, metadata !182, metadata !183}
!181 = metadata !{i32 786445, metadata !150, metadata !179, metadata !"b0", i32 108, i64 32, i64 32, i64 0, i32 0, metadata !167} ; [ DW_TAG_member ] [b0] [line 108, size 32, align 32, offset 0] [from real]
!182 = metadata !{i32 786445, metadata !150, metadata !179, metadata !"kb", i32 108, i64 32, i64 32, i64 32, i32 0, metadata !167} ; [ DW_TAG_member ] [kb] [line 108, size 32, align 32, offset 32] [from real]
!183 = metadata !{i32 786445, metadata !150, metadata !179, metadata !"kcub", i32 108, i64 32, i64 32, i64 64, i32 0, metadata !167} ; [ DW_TAG_member ] [kcub] [line 108, size 32, align 32, offset 64] [from real]
!184 = metadata !{i32 786445, metadata !150, metadata !161, metadata !"wpol", i32 110, i64 192, i64 32, i64 0, i32 0, metadata !185} ; [ DW_TAG_member ] [wpol] [line 110, size 192, align 32, offset 0] [from ]
!185 = metadata !{i32 786451, metadata !150, metadata !161, metadata !"", i32 110, i64 192, i64 32, i32 0, i32 0, null, metadata !186, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 110, size 192, align 32, offset 0] [from ]
!186 = metadata !{metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192}
!187 = metadata !{i32 786445, metadata !150, metadata !185, metadata !"kx", i32 110, i64 32, i64 32, i64 0, i32 0, metadata !167} ; [ DW_TAG_member ] [kx] [line 110, size 32, align 32, offset 0] [from real]
!188 = metadata !{i32 786445, metadata !150, metadata !185, metadata !"ky", i32 110, i64 32, i64 32, i64 32, i32 0, metadata !167} ; [ DW_TAG_member ] [ky] [line 110, size 32, align 32, offset 32] [from real]
!189 = metadata !{i32 786445, metadata !150, metadata !185, metadata !"kz", i32 110, i64 32, i64 32, i64 64, i32 0, metadata !167} ; [ DW_TAG_member ] [kz] [line 110, size 32, align 32, offset 64] [from real]
!190 = metadata !{i32 786445, metadata !150, metadata !185, metadata !"rOH", i32 110, i64 32, i64 32, i64 96, i32 0, metadata !167} ; [ DW_TAG_member ] [rOH] [line 110, size 32, align 32, offset 96] [from real]
!191 = metadata !{i32 786445, metadata !150, metadata !185, metadata !"rHH", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !167} ; [ DW_TAG_member ] [rHH] [line 110, size 32, align 32, offset 128] [from real]
!192 = metadata !{i32 786445, metadata !150, metadata !185, metadata !"rOD", i32 110, i64 32, i64 32, i64 160, i32 0, metadata !167} ; [ DW_TAG_member ] [rOD] [line 110, size 32, align 32, offset 160] [from real]
!193 = metadata !{i32 786445, metadata !150, metadata !161, metadata !"lj", i32 111, i64 64, i64 32, i64 0, i32 0, metadata !194} ; [ DW_TAG_member ] [lj] [line 111, size 64, align 32, offset 0] [from ]
!194 = metadata !{i32 786451, metadata !150, metadata !161, metadata !"", i32 111, i64 64, i64 32, i32 0, i32 0, null, metadata !195, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 111, size 64, align 32, offset 0] [from ]
!195 = metadata !{metadata !196, metadata !197}
!196 = metadata !{i32 786445, metadata !150, metadata !194, metadata !"c6", i32 111, i64 32, i64 32, i64 0, i32 0, metadata !167} ; [ DW_TAG_member ] [c6] [line 111, size 32, align 32, offset 0] [from real]
!197 = metadata !{i32 786445, metadata !150, metadata !194, metadata !"c12", i32 111, i64 32, i64 32, i64 32, i32 0, metadata !167} ; [ DW_TAG_member ] [c12] [line 111, size 32, align 32, offset 32] [from real]
!198 = metadata !{i32 786445, metadata !150, metadata !161, metadata !"lj14", i32 112, i64 128, i64 32, i64 0, i32 0, metadata !199} ; [ DW_TAG_member ] [lj14] [line 112, size 128, align 32, offset 0] [from ]
!199 = metadata !{i32 786451, metadata !150, metadata !161, metadata !"", i32 112, i64 128, i64 32, i32 0, i32 0, null, metadata !200, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 112, size 128, align 32, offset 0] [from ]
!200 = metadata !{metadata !201, metadata !202, metadata !203, metadata !204}
!201 = metadata !{i32 786445, metadata !150, metadata !199, metadata !"c6A", i32 112, i64 32, i64 32, i64 0, i32 0, metadata !167} ; [ DW_TAG_member ] [c6A] [line 112, size 32, align 32, offset 0] [from real]
!202 = metadata !{i32 786445, metadata !150, metadata !199, metadata !"c12A", i32 112, i64 32, i64 32, i64 32, i32 0, metadata !167} ; [ DW_TAG_member ] [c12A] [line 112, size 32, align 32, offset 32] [from real]
!203 = metadata !{i32 786445, metadata !150, metadata !199, metadata !"c6B", i32 112, i64 32, i64 32, i64 64, i32 0, metadata !167} ; [ DW_TAG_member ] [c6B] [line 112, size 32, align 32, offset 64] [from real]
!204 = metadata !{i32 786445, metadata !150, metadata !199, metadata !"c12B", i32 112, i64 32, i64 32, i64 96, i32 0, metadata !167} ; [ DW_TAG_member ] [c12B] [line 112, size 32, align 32, offset 96] [from real]
!205 = metadata !{i32 786445, metadata !150, metadata !161, metadata !"pdihs", i32 117, i64 160, i64 32, i64 0, i32 0, metadata !206} ; [ DW_TAG_member ] [pdihs] [line 117, size 160, align 32, offset 0] [from ]
!206 = metadata !{i32 786451, metadata !150, metadata !161, metadata !"", i32 117, i64 160, i64 32, i32 0, i32 0, null, metadata !207, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 117, size 160, align 32, offset 0] [from ]
!207 = metadata !{metadata !208, metadata !209, metadata !210, metadata !211, metadata !212}
!208 = metadata !{i32 786445, metadata !150, metadata !206, metadata !"phiA", i32 117, i64 32, i64 32, i64 0, i32 0, metadata !167} ; [ DW_TAG_member ] [phiA] [line 117, size 32, align 32, offset 0] [from real]
!209 = metadata !{i32 786445, metadata !150, metadata !206, metadata !"cpA", i32 117, i64 32, i64 32, i64 32, i32 0, metadata !167} ; [ DW_TAG_member ] [cpA] [line 117, size 32, align 32, offset 32] [from real]
!210 = metadata !{i32 786445, metadata !150, metadata !206, metadata !"mult", i32 117, i64 32, i64 32, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [mult] [line 117, size 32, align 32, offset 64] [from int]
!211 = metadata !{i32 786445, metadata !150, metadata !206, metadata !"phiB", i32 117, i64 32, i64 32, i64 96, i32 0, metadata !167} ; [ DW_TAG_member ] [phiB] [line 117, size 32, align 32, offset 96] [from real]
!212 = metadata !{i32 786445, metadata !150, metadata !206, metadata !"cpB", i32 117, i64 32, i64 32, i64 128, i32 0, metadata !167} ; [ DW_TAG_member ] [cpB] [line 117, size 32, align 32, offset 128] [from real]
!213 = metadata !{i32 786445, metadata !150, metadata !161, metadata !"shake", i32 118, i64 64, i64 32, i64 0, i32 0, metadata !214} ; [ DW_TAG_member ] [shake] [line 118, size 64, align 32, offset 0] [from ]
!214 = metadata !{i32 786451, metadata !150, metadata !161, metadata !"", i32 118, i64 64, i64 32, i32 0, i32 0, null, metadata !215, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 118, size 64, align 32, offset 0] [from ]
!215 = metadata !{metadata !216, metadata !217}
!216 = metadata !{i32 786445, metadata !150, metadata !214, metadata !"dA", i32 118, i64 32, i64 32, i64 0, i32 0, metadata !167} ; [ DW_TAG_member ] [dA] [line 118, size 32, align 32, offset 0] [from real]
!217 = metadata !{i32 786445, metadata !150, metadata !214, metadata !"dB", i32 118, i64 32, i64 32, i64 32, i32 0, metadata !167} ; [ DW_TAG_member ] [dB] [line 118, size 32, align 32, offset 32] [from real]
!218 = metadata !{i32 786445, metadata !150, metadata !161, metadata !"settle", i32 123, i64 64, i64 32, i64 0, i32 0, metadata !219} ; [ DW_TAG_member ] [settle] [line 123, size 64, align 32, offset 0] [from ]
!219 = metadata !{i32 786451, metadata !150, metadata !161, metadata !"", i32 123, i64 64, i64 32, i32 0, i32 0, null, metadata !220, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 123, size 64, align 32, offset 0] [from ]
!220 = metadata !{metadata !221, metadata !222}
!221 = metadata !{i32 786445, metadata !150, metadata !219, metadata !"doh", i32 123, i64 32, i64 32, i64 0, i32 0, metadata !167} ; [ DW_TAG_member ] [doh] [line 123, size 32, align 32, offset 0] [from real]
!222 = metadata !{i32 786445, metadata !150, metadata !219, metadata !"dhh", i32 123, i64 32, i64 32, i64 32, i32 0, metadata !167} ; [ DW_TAG_member ] [dhh] [line 123, size 32, align 32, offset 32] [from real]
!223 = metadata !{i32 786445, metadata !150, metadata !161, metadata !"morse", i32 124, i64 96, i64 32, i64 0, i32 0, metadata !224} ; [ DW_TAG_member ] [morse] [line 124, size 96, align 32, offset 0] [from ]
!224 = metadata !{i32 786451, metadata !150, metadata !161, metadata !"", i32 124, i64 96, i64 32, i32 0, i32 0, null, metadata !225, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 124, size 96, align 32, offset 0] [from ]
!225 = metadata !{metadata !226, metadata !227, metadata !228}
!226 = metadata !{i32 786445, metadata !150, metadata !224, metadata !"b0", i32 124, i64 32, i64 32, i64 0, i32 0, metadata !167} ; [ DW_TAG_member ] [b0] [line 124, size 32, align 32, offset 0] [from real]
!227 = metadata !{i32 786445, metadata !150, metadata !224, metadata !"cb", i32 124, i64 32, i64 32, i64 32, i32 0, metadata !167} ; [ DW_TAG_member ] [cb] [line 124, size 32, align 32, offset 32] [from real]
!228 = metadata !{i32 786445, metadata !150, metadata !224, metadata !"beta", i32 124, i64 32, i64 32, i64 64, i32 0, metadata !167} ; [ DW_TAG_member ] [beta] [line 124, size 32, align 32, offset 64] [from real]
!229 = metadata !{i32 786445, metadata !150, metadata !161, metadata !"posres", i32 125, i64 192, i64 32, i64 0, i32 0, metadata !230} ; [ DW_TAG_member ] [posres] [line 125, size 192, align 32, offset 0] [from ]
!230 = metadata !{i32 786451, metadata !150, metadata !161, metadata !"", i32 125, i64 192, i64 32, i32 0, i32 0, null, metadata !231, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 125, size 192, align 32, offset 0] [from ]
!231 = metadata !{metadata !232, metadata !236}
!232 = metadata !{i32 786445, metadata !150, metadata !230, metadata !"pos0", i32 125, i64 96, i64 32, i64 0, i32 0, metadata !233} ; [ DW_TAG_member ] [pos0] [line 125, size 96, align 32, offset 0] [from ]
!233 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !167, metadata !234, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!234 = metadata !{metadata !235}
!235 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!236 = metadata !{i32 786445, metadata !150, metadata !230, metadata !"fc", i32 125, i64 96, i64 32, i64 96, i32 0, metadata !233} ; [ DW_TAG_member ] [fc] [line 125, size 96, align 32, offset 96] [from ]
!237 = metadata !{i32 786445, metadata !150, metadata !161, metadata !"rbdihs", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !238} ; [ DW_TAG_member ] [rbdihs] [line 126, size 192, align 32, offset 0] [from ]
!238 = metadata !{i32 786451, metadata !150, metadata !161, metadata !"", i32 126, i64 192, i64 32, i32 0, i32 0, null, metadata !239, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 126, size 192, align 32, offset 0] [from ]
!239 = metadata !{metadata !240}
!240 = metadata !{i32 786445, metadata !150, metadata !238, metadata !"rbc", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !241} ; [ DW_TAG_member ] [rbc] [line 126, size 192, align 32, offset 0] [from ]
!241 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !167, metadata !242, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from real]
!242 = metadata !{metadata !243}
!243 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!244 = metadata !{i32 786445, metadata !150, metadata !161, metadata !"dummy", i32 127, i64 192, i64 32, i64 0, i32 0, metadata !245} ; [ DW_TAG_member ] [dummy] [line 127, size 192, align 32, offset 0] [from ]
!245 = metadata !{i32 786451, metadata !150, metadata !161, metadata !"", i32 127, i64 192, i64 32, i32 0, i32 0, null, metadata !246, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 127, size 192, align 32, offset 0] [from ]
!246 = metadata !{metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252}
!247 = metadata !{i32 786445, metadata !150, metadata !245, metadata !"a", i32 127, i64 32, i64 32, i64 0, i32 0, metadata !167} ; [ DW_TAG_member ] [a] [line 127, size 32, align 32, offset 0] [from real]
!248 = metadata !{i32 786445, metadata !150, metadata !245, metadata !"b", i32 127, i64 32, i64 32, i64 32, i32 0, metadata !167} ; [ DW_TAG_member ] [b] [line 127, size 32, align 32, offset 32] [from real]
!249 = metadata !{i32 786445, metadata !150, metadata !245, metadata !"c", i32 127, i64 32, i64 32, i64 64, i32 0, metadata !167} ; [ DW_TAG_member ] [c] [line 127, size 32, align 32, offset 64] [from real]
!250 = metadata !{i32 786445, metadata !150, metadata !245, metadata !"d", i32 127, i64 32, i64 32, i64 96, i32 0, metadata !167} ; [ DW_TAG_member ] [d] [line 127, size 32, align 32, offset 96] [from real]
!251 = metadata !{i32 786445, metadata !150, metadata !245, metadata !"e", i32 127, i64 32, i64 32, i64 128, i32 0, metadata !167} ; [ DW_TAG_member ] [e] [line 127, size 32, align 32, offset 128] [from real]
!252 = metadata !{i32 786445, metadata !150, metadata !245, metadata !"f", i32 127, i64 32, i64 32, i64 160, i32 0, metadata !167} ; [ DW_TAG_member ] [f] [line 127, size 32, align 32, offset 160] [from real]
!253 = metadata !{i32 786445, metadata !150, metadata !161, metadata !"disres", i32 128, i64 192, i64 32, i64 0, i32 0, metadata !254} ; [ DW_TAG_member ] [disres] [line 128, size 192, align 32, offset 0] [from ]
!254 = metadata !{i32 786451, metadata !150, metadata !161, metadata !"", i32 128, i64 192, i64 32, i32 0, i32 0, null, metadata !255, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 128, size 192, align 32, offset 0] [from ]
!255 = metadata !{metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261}
!256 = metadata !{i32 786445, metadata !150, metadata !254, metadata !"low", i32 128, i64 32, i64 32, i64 0, i32 0, metadata !167} ; [ DW_TAG_member ] [low] [line 128, size 32, align 32, offset 0] [from real]
!257 = metadata !{i32 786445, metadata !150, metadata !254, metadata !"up1", i32 128, i64 32, i64 32, i64 32, i32 0, metadata !167} ; [ DW_TAG_member ] [up1] [line 128, size 32, align 32, offset 32] [from real]
!258 = metadata !{i32 786445, metadata !150, metadata !254, metadata !"up2", i32 128, i64 32, i64 32, i64 64, i32 0, metadata !167} ; [ DW_TAG_member ] [up2] [line 128, size 32, align 32, offset 64] [from real]
!259 = metadata !{i32 786445, metadata !150, metadata !254, metadata !"kfac", i32 128, i64 32, i64 32, i64 96, i32 0, metadata !167} ; [ DW_TAG_member ] [kfac] [line 128, size 32, align 32, offset 96] [from real]
!260 = metadata !{i32 786445, metadata !150, metadata !254, metadata !"type", i32 128, i64 32, i64 32, i64 128, i32 0, metadata !59} ; [ DW_TAG_member ] [type] [line 128, size 32, align 32, offset 128] [from int]
!261 = metadata !{i32 786445, metadata !150, metadata !254, metadata !"label", i32 128, i64 32, i64 32, i64 160, i32 0, metadata !59} ; [ DW_TAG_member ] [label] [line 128, size 32, align 32, offset 160] [from int]
!262 = metadata !{i32 786445, metadata !150, metadata !161, metadata !"orires", i32 129, i64 192, i64 32, i64 0, i32 0, metadata !263} ; [ DW_TAG_member ] [orires] [line 129, size 192, align 32, offset 0] [from ]
!263 = metadata !{i32 786451, metadata !150, metadata !161, metadata !"", i32 129, i64 192, i64 32, i32 0, i32 0, null, metadata !264, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 129, size 192, align 32, offset 0] [from ]
!264 = metadata !{metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270}
!265 = metadata !{i32 786445, metadata !150, metadata !263, metadata !"ex", i32 129, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [ex] [line 129, size 32, align 32, offset 0] [from int]
!266 = metadata !{i32 786445, metadata !150, metadata !263, metadata !"pow", i32 129, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [pow] [line 129, size 32, align 32, offset 32] [from int]
!267 = metadata !{i32 786445, metadata !150, metadata !263, metadata !"label", i32 129, i64 32, i64 32, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [label] [line 129, size 32, align 32, offset 64] [from int]
!268 = metadata !{i32 786445, metadata !150, metadata !263, metadata !"c", i32 129, i64 32, i64 32, i64 96, i32 0, metadata !167} ; [ DW_TAG_member ] [c] [line 129, size 32, align 32, offset 96] [from real]
!269 = metadata !{i32 786445, metadata !150, metadata !263, metadata !"obs", i32 129, i64 32, i64 32, i64 128, i32 0, metadata !167} ; [ DW_TAG_member ] [obs] [line 129, size 32, align 32, offset 128] [from real]
!270 = metadata !{i32 786445, metadata !150, metadata !263, metadata !"kfac", i32 129, i64 32, i64 32, i64 160, i32 0, metadata !167} ; [ DW_TAG_member ] [kfac] [line 129, size 32, align 32, offset 160] [from real]
!271 = metadata !{i32 786445, metadata !150, metadata !161, metadata !"generic", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !272} ; [ DW_TAG_member ] [generic] [line 130, size 192, align 32, offset 0] [from ]
!272 = metadata !{i32 786451, metadata !150, metadata !161, metadata !"", i32 130, i64 192, i64 32, i32 0, i32 0, null, metadata !273, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 130, size 192, align 32, offset 0] [from ]
!273 = metadata !{metadata !274}
!274 = metadata !{i32 786445, metadata !150, metadata !272, metadata !"buf", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !241} ; [ DW_TAG_member ] [buf] [line 130, size 192, align 32, offset 0] [from ]
!275 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"il", i32 187, i64 366080, i64 64, i64 256, i32 0, metadata !276} ; [ DW_TAG_member ] [il] [line 187, size 366080, align 64, offset 256] [from ]
!276 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 366080, i64 64, i32 0, i32 0, metadata !277, metadata !289, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 366080, align 64, offset 0] [from t_ilist]
!277 = metadata !{i32 786454, metadata !150, null, metadata !"t_ilist", i32 140, i64 0, i64 0, i64 0, i32 0, metadata !278} ; [ DW_TAG_typedef ] [t_ilist] [line 140, size 0, align 0, offset 0] [from ]
!278 = metadata !{i32 786451, metadata !150, null, metadata !"", i32 135, i64 8320, i64 64, i32 0, i32 0, null, metadata !279, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 135, size 8320, align 64, offset 0] [from ]
!279 = metadata !{metadata !280, metadata !281, metadata !285}
!280 = metadata !{i32 786445, metadata !150, metadata !278, metadata !"nr", i32 137, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [nr] [line 137, size 32, align 32, offset 0] [from int]
!281 = metadata !{i32 786445, metadata !150, metadata !278, metadata !"multinr", i32 138, i64 8192, i64 32, i64 32, i32 0, metadata !282} ; [ DW_TAG_member ] [multinr] [line 138, size 8192, align 32, offset 32] [from ]
!282 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !59, metadata !283, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!283 = metadata !{metadata !284}
!284 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!285 = metadata !{i32 786445, metadata !150, metadata !278, metadata !"iatoms", i32 139, i64 64, i64 64, i64 8256, i32 0, metadata !286} ; [ DW_TAG_member ] [iatoms] [line 139, size 64, align 64, offset 8256] [from ]
!286 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !287} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iatom]
!287 = metadata !{i32 786454, metadata !150, null, metadata !"t_iatom", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !288} ; [ DW_TAG_typedef ] [t_iatom] [line 45, size 0, align 0, offset 0] [from atom_id]
!288 = metadata !{i32 786454, metadata !150, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!289 = metadata !{metadata !290}
!290 = metadata !{i32 786465, i64 0, i64 44}      ; [ DW_TAG_subrange_type ] [0, 43]
!291 = metadata !{i32 786445, metadata !143, metadata !142, metadata !"atoms", i32 39, i64 10240, i64 64, i64 366400, i32 0, metadata !292} ; [ DW_TAG_member ] [atoms] [line 39, size 10240, align 64, offset 366400] [from t_atoms]
!292 = metadata !{i32 786454, metadata !143, null, metadata !"t_atoms", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !293} ; [ DW_TAG_typedef ] [t_atoms] [line 94, size 0, align 0, offset 0] [from ]
!293 = metadata !{i32 786451, metadata !294, null, metadata !"", i32 75, i64 10240, i64 64, i32 0, i32 0, null, metadata !295, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 75, size 10240, align 64, offset 0] [from ]
!294 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/atoms.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!295 = metadata !{metadata !296, metadata !297, metadata !316, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !335, metadata !343}
!296 = metadata !{i32 786445, metadata !294, metadata !293, metadata !"nr", i32 76, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [nr] [line 76, size 32, align 32, offset 0] [from int]
!297 = metadata !{i32 786445, metadata !294, metadata !293, metadata !"atom", i32 77, i64 64, i64 64, i64 64, i32 0, metadata !298} ; [ DW_TAG_member ] [atom] [line 77, size 64, align 64, offset 64] [from ]
!298 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !299} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atom]
!299 = metadata !{i32 786454, metadata !294, null, metadata !"t_atom", i32 57, i64 0, i64 0, i64 0, i32 0, metadata !300} ; [ DW_TAG_typedef ] [t_atom] [line 57, size 0, align 0, offset 0] [from ]
!300 = metadata !{i32 786451, metadata !294, null, metadata !"", i32 48, i64 320, i64 32, i32 0, i32 0, null, metadata !301, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 320, align 32, offset 0] [from ]
!301 = metadata !{metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !315}
!302 = metadata !{i32 786445, metadata !294, metadata !300, metadata !"m", i32 49, i64 32, i64 32, i64 0, i32 0, metadata !167} ; [ DW_TAG_member ] [m] [line 49, size 32, align 32, offset 0] [from real]
!303 = metadata !{i32 786445, metadata !294, metadata !300, metadata !"q", i32 49, i64 32, i64 32, i64 32, i32 0, metadata !167} ; [ DW_TAG_member ] [q] [line 49, size 32, align 32, offset 32] [from real]
!304 = metadata !{i32 786445, metadata !294, metadata !300, metadata !"mB", i32 50, i64 32, i64 32, i64 64, i32 0, metadata !167} ; [ DW_TAG_member ] [mB] [line 50, size 32, align 32, offset 64] [from real]
!305 = metadata !{i32 786445, metadata !294, metadata !300, metadata !"qB", i32 50, i64 32, i64 32, i64 96, i32 0, metadata !167} ; [ DW_TAG_member ] [qB] [line 50, size 32, align 32, offset 96] [from real]
!306 = metadata !{i32 786445, metadata !294, metadata !300, metadata !"type", i32 51, i64 16, i64 16, i64 128, i32 0, metadata !118} ; [ DW_TAG_member ] [type] [line 51, size 16, align 16, offset 128] [from unsigned short]
!307 = metadata !{i32 786445, metadata !294, metadata !300, metadata !"typeB", i32 52, i64 16, i64 16, i64 144, i32 0, metadata !118} ; [ DW_TAG_member ] [typeB] [line 52, size 16, align 16, offset 144] [from unsigned short]
!308 = metadata !{i32 786445, metadata !294, metadata !300, metadata !"ptype", i32 53, i64 32, i64 32, i64 160, i32 0, metadata !59} ; [ DW_TAG_member ] [ptype] [line 53, size 32, align 32, offset 160] [from int]
!309 = metadata !{i32 786445, metadata !294, metadata !300, metadata !"resnr", i32 54, i64 32, i64 32, i64 192, i32 0, metadata !59} ; [ DW_TAG_member ] [resnr] [line 54, size 32, align 32, offset 192] [from int]
!310 = metadata !{i32 786445, metadata !294, metadata !300, metadata !"grpnr", i32 55, i64 72, i64 8, i64 224, i32 0, metadata !311} ; [ DW_TAG_member ] [grpnr] [line 55, size 72, align 8, offset 224] [from ]
!311 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 72, i64 8, i32 0, i32 0, metadata !312, metadata !313, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 72, align 8, offset 0] [from unsigned char]
!312 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!313 = metadata !{metadata !314}
!314 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!315 = metadata !{i32 786445, metadata !294, metadata !300, metadata !"chain", i32 56, i64 8, i64 8, i64 296, i32 0, metadata !312} ; [ DW_TAG_member ] [chain] [line 56, size 8, align 8, offset 296] [from unsigned char]
!316 = metadata !{i32 786445, metadata !294, metadata !293, metadata !"atomname", i32 80, i64 64, i64 64, i64 128, i32 0, metadata !317} ; [ DW_TAG_member ] [atomname] [line 80, size 64, align 64, offset 128] [from ]
!317 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !146} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!318 = metadata !{i32 786445, metadata !294, metadata !293, metadata !"atomtype", i32 82, i64 64, i64 64, i64 192, i32 0, metadata !317} ; [ DW_TAG_member ] [atomtype] [line 82, size 64, align 64, offset 192] [from ]
!319 = metadata !{i32 786445, metadata !294, metadata !293, metadata !"atomtypeB", i32 84, i64 64, i64 64, i64 256, i32 0, metadata !317} ; [ DW_TAG_member ] [atomtypeB] [line 84, size 64, align 64, offset 256] [from ]
!320 = metadata !{i32 786445, metadata !294, metadata !293, metadata !"nres", i32 86, i64 32, i64 32, i64 320, i32 0, metadata !59} ; [ DW_TAG_member ] [nres] [line 86, size 32, align 32, offset 320] [from int]
!321 = metadata !{i32 786445, metadata !294, metadata !293, metadata !"resname", i32 87, i64 64, i64 64, i64 384, i32 0, metadata !317} ; [ DW_TAG_member ] [resname] [line 87, size 64, align 64, offset 384] [from ]
!322 = metadata !{i32 786445, metadata !294, metadata !293, metadata !"ngrpname", i32 89, i64 32, i64 32, i64 448, i32 0, metadata !59} ; [ DW_TAG_member ] [ngrpname] [line 89, size 32, align 32, offset 448] [from int]
!323 = metadata !{i32 786445, metadata !294, metadata !293, metadata !"grpname", i32 90, i64 64, i64 64, i64 512, i32 0, metadata !317} ; [ DW_TAG_member ] [grpname] [line 90, size 64, align 64, offset 512] [from ]
!324 = metadata !{i32 786445, metadata !294, metadata !293, metadata !"excl", i32 91, i64 8448, i64 64, i64 576, i32 0, metadata !325} ; [ DW_TAG_member ] [excl] [line 91, size 8448, align 64, offset 576] [from t_block]
!325 = metadata !{i32 786454, metadata !294, null, metadata !"t_block", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !326} ; [ DW_TAG_typedef ] [t_block] [line 52, size 0, align 0, offset 0] [from ]
!326 = metadata !{i32 786451, metadata !327, null, metadata !"", i32 36, i64 8448, i64 64, i32 0, i32 0, null, metadata !328, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 8448, align 64, offset 0] [from ]
!327 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/block.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!328 = metadata !{metadata !329, metadata !330, metadata !331, metadata !333, metadata !334}
!329 = metadata !{i32 786445, metadata !327, metadata !326, metadata !"multinr", i32 37, i64 8192, i64 32, i64 0, i32 0, metadata !282} ; [ DW_TAG_member ] [multinr] [line 37, size 8192, align 32, offset 0] [from ]
!330 = metadata !{i32 786445, metadata !327, metadata !326, metadata !"nr", i32 43, i64 32, i64 32, i64 8192, i32 0, metadata !59} ; [ DW_TAG_member ] [nr] [line 43, size 32, align 32, offset 8192] [from int]
!331 = metadata !{i32 786445, metadata !327, metadata !326, metadata !"index", i32 44, i64 64, i64 64, i64 8256, i32 0, metadata !332} ; [ DW_TAG_member ] [index] [line 44, size 64, align 64, offset 8256] [from ]
!332 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !288} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!333 = metadata !{i32 786445, metadata !327, metadata !326, metadata !"nra", i32 45, i64 32, i64 32, i64 8320, i32 0, metadata !59} ; [ DW_TAG_member ] [nra] [line 45, size 32, align 32, offset 8320] [from int]
!334 = metadata !{i32 786445, metadata !327, metadata !326, metadata !"a", i32 46, i64 64, i64 64, i64 8384, i32 0, metadata !332} ; [ DW_TAG_member ] [a] [line 46, size 64, align 64, offset 8384] [from ]
!335 = metadata !{i32 786445, metadata !294, metadata !293, metadata !"grps", i32 92, i64 1152, i64 64, i64 9024, i32 0, metadata !336} ; [ DW_TAG_member ] [grps] [line 92, size 1152, align 64, offset 9024] [from ]
!336 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 64, i32 0, i32 0, metadata !337, metadata !313, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1152, align 64, offset 0] [from t_grps]
!337 = metadata !{i32 786454, metadata !294, null, metadata !"t_grps", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !338} ; [ DW_TAG_typedef ] [t_grps] [line 73, size 0, align 0, offset 0] [from ]
!338 = metadata !{i32 786451, metadata !294, null, metadata !"", i32 70, i64 128, i64 64, i32 0, i32 0, null, metadata !339, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 70, size 128, align 64, offset 0] [from ]
!339 = metadata !{metadata !340, metadata !341}
!340 = metadata !{i32 786445, metadata !294, metadata !338, metadata !"nr", i32 71, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [nr] [line 71, size 32, align 32, offset 0] [from int]
!341 = metadata !{i32 786445, metadata !294, metadata !338, metadata !"nm_ind", i32 72, i64 64, i64 64, i64 64, i32 0, metadata !342} ; [ DW_TAG_member ] [nm_ind] [line 72, size 64, align 64, offset 64] [from ]
!342 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!343 = metadata !{i32 786445, metadata !294, metadata !293, metadata !"pdbinfo", i32 93, i64 64, i64 64, i64 10176, i32 0, metadata !344} ; [ DW_TAG_member ] [pdbinfo] [line 93, size 64, align 64, offset 10176] [from ]
!344 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !345} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_pdbinfo]
!345 = metadata !{i32 786454, metadata !294, null, metadata !"t_pdbinfo", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !346} ; [ DW_TAG_typedef ] [t_pdbinfo] [line 68, size 0, align 0, offset 0] [from ]
!346 = metadata !{i32 786451, metadata !294, null, metadata !"", i32 59, i64 416, i64 32, i32 0, i32 0, null, metadata !347, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 59, size 416, align 32, offset 0] [from ]
!347 = metadata !{metadata !348, metadata !349, metadata !350, metadata !351, metadata !353, metadata !354, metadata !355, metadata !356}
!348 = metadata !{i32 786445, metadata !294, metadata !346, metadata !"type", i32 60, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [type] [line 60, size 32, align 32, offset 0] [from int]
!349 = metadata !{i32 786445, metadata !294, metadata !346, metadata !"atomnr", i32 61, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [atomnr] [line 61, size 32, align 32, offset 32] [from int]
!350 = metadata !{i32 786445, metadata !294, metadata !346, metadata !"altloc", i32 62, i64 8, i64 8, i64 64, i32 0, metadata !67} ; [ DW_TAG_member ] [altloc] [line 62, size 8, align 8, offset 64] [from char]
!351 = metadata !{i32 786445, metadata !294, metadata !346, metadata !"pdbresnr", i32 63, i64 48, i64 8, i64 72, i32 0, metadata !352} ; [ DW_TAG_member ] [pdbresnr] [line 63, size 48, align 8, offset 72] [from ]
!352 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 48, i64 8, i32 0, i32 0, metadata !67, metadata !242, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 48, align 8, offset 0] [from char]
!353 = metadata !{i32 786445, metadata !294, metadata !346, metadata !"occup", i32 64, i64 32, i64 32, i64 128, i32 0, metadata !167} ; [ DW_TAG_member ] [occup] [line 64, size 32, align 32, offset 128] [from real]
!354 = metadata !{i32 786445, metadata !294, metadata !346, metadata !"bfac", i32 65, i64 32, i64 32, i64 160, i32 0, metadata !167} ; [ DW_TAG_member ] [bfac] [line 65, size 32, align 32, offset 160] [from real]
!355 = metadata !{i32 786445, metadata !294, metadata !346, metadata !"bAnisotropic", i32 66, i64 32, i64 32, i64 192, i32 0, metadata !59} ; [ DW_TAG_member ] [bAnisotropic] [line 66, size 32, align 32, offset 192] [from int]
!356 = metadata !{i32 786445, metadata !294, metadata !346, metadata !"uij", i32 67, i64 192, i64 32, i64 224, i32 0, metadata !357} ; [ DW_TAG_member ] [uij] [line 67, size 192, align 32, offset 224] [from ]
!357 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !59, metadata !242, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!358 = metadata !{i32 786445, metadata !143, metadata !142, metadata !"blocks", i32 40, i64 25344, i64 64, i64 376640, i32 0, metadata !359} ; [ DW_TAG_member ] [blocks] [line 40, size 25344, align 64, offset 376640] [from ]
!359 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 25344, i64 64, i32 0, i32 0, metadata !325, metadata !234, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 25344, align 64, offset 0] [from t_block]
!360 = metadata !{i32 786445, metadata !143, metadata !142, metadata !"symtab", i32 41, i64 128, i64 64, i64 401984, i32 0, metadata !361} ; [ DW_TAG_member ] [symtab] [line 41, size 128, align 64, offset 401984] [from t_symtab]
!361 = metadata !{i32 786454, metadata !143, null, metadata !"t_symtab", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !362} ; [ DW_TAG_typedef ] [t_symtab] [line 46, size 0, align 0, offset 0] [from ]
!362 = metadata !{i32 786451, metadata !363, null, metadata !"", i32 42, i64 128, i64 64, i32 0, i32 0, null, metadata !364, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 42, size 128, align 64, offset 0] [from ]
!363 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/symtab.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!364 = metadata !{metadata !365, metadata !366}
!365 = metadata !{i32 786445, metadata !363, metadata !362, metadata !"nr", i32 44, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [nr] [line 44, size 32, align 32, offset 0] [from int]
!366 = metadata !{i32 786445, metadata !363, metadata !362, metadata !"symbuf", i32 45, i64 64, i64 64, i64 64, i32 0, metadata !367} ; [ DW_TAG_member ] [symbuf] [line 45, size 64, align 64, offset 64] [from ]
!367 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !368} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_symbuf]
!368 = metadata !{i32 786454, metadata !363, null, metadata !"t_symbuf", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !369} ; [ DW_TAG_typedef ] [t_symbuf] [line 40, size 0, align 0, offset 0] [from symbuf]
!369 = metadata !{i32 786451, metadata !363, null, metadata !"symbuf", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !370, i32 0, null, null} ; [ DW_TAG_structure_type ] [symbuf] [line 36, size 192, align 64, offset 0] [from ]
!370 = metadata !{metadata !371, metadata !372, metadata !373}
!371 = metadata !{i32 786445, metadata !363, metadata !369, metadata !"bufsize", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [bufsize] [line 37, size 32, align 32, offset 0] [from int]
!372 = metadata !{i32 786445, metadata !363, metadata !369, metadata !"buf", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !146} ; [ DW_TAG_member ] [buf] [line 38, size 64, align 64, offset 64] [from ]
!373 = metadata !{i32 786445, metadata !363, metadata !369, metadata !"next", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !374} ; [ DW_TAG_member ] [next] [line 39, size 64, align 64, offset 128] [from ]
!374 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !369} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from symbuf]
!375 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !376} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_mdatoms]
!376 = metadata !{i32 786454, metadata !1, null, metadata !"t_mdatoms", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !377} ; [ DW_TAG_typedef ] [t_mdatoms] [line 51, size 0, align 0, offset 0] [from ]
!377 = metadata !{i32 786451, metadata !378, null, metadata !"", i32 40, i64 1408, i64 64, i32 0, i32 0, null, metadata !379, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 40, size 1408, align 64, offset 0] [from ]
!378 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/mdatom.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!379 = metadata !{metadata !380, metadata !381, metadata !382, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403, metadata !404}
!380 = metadata !{i32 786445, metadata !378, metadata !377, metadata !"tmass", i32 41, i64 32, i64 32, i64 0, i32 0, metadata !167} ; [ DW_TAG_member ] [tmass] [line 41, size 32, align 32, offset 0] [from real]
!381 = metadata !{i32 786445, metadata !378, metadata !377, metadata !"nr", i32 42, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [nr] [line 42, size 32, align 32, offset 32] [from int]
!382 = metadata !{i32 786445, metadata !378, metadata !377, metadata !"massA", i32 43, i64 64, i64 64, i64 64, i32 0, metadata !383} ; [ DW_TAG_member ] [massA] [line 43, size 64, align 64, offset 64] [from ]
!383 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !167} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!384 = metadata !{i32 786445, metadata !378, metadata !377, metadata !"massB", i32 43, i64 64, i64 64, i64 128, i32 0, metadata !383} ; [ DW_TAG_member ] [massB] [line 43, size 64, align 64, offset 128] [from ]
!385 = metadata !{i32 786445, metadata !378, metadata !377, metadata !"massT", i32 43, i64 64, i64 64, i64 192, i32 0, metadata !383} ; [ DW_TAG_member ] [massT] [line 43, size 64, align 64, offset 192] [from ]
!386 = metadata !{i32 786445, metadata !378, metadata !377, metadata !"invmass", i32 43, i64 64, i64 64, i64 256, i32 0, metadata !383} ; [ DW_TAG_member ] [invmass] [line 43, size 64, align 64, offset 256] [from ]
!387 = metadata !{i32 786445, metadata !378, metadata !377, metadata !"chargeA", i32 44, i64 64, i64 64, i64 320, i32 0, metadata !383} ; [ DW_TAG_member ] [chargeA] [line 44, size 64, align 64, offset 320] [from ]
!388 = metadata !{i32 786445, metadata !378, metadata !377, metadata !"chargeB", i32 44, i64 64, i64 64, i64 384, i32 0, metadata !383} ; [ DW_TAG_member ] [chargeB] [line 44, size 64, align 64, offset 384] [from ]
!389 = metadata !{i32 786445, metadata !378, metadata !377, metadata !"chargeT", i32 44, i64 64, i64 64, i64 448, i32 0, metadata !383} ; [ DW_TAG_member ] [chargeT] [line 44, size 64, align 64, offset 448] [from ]
!390 = metadata !{i32 786445, metadata !378, metadata !377, metadata !"bPerturbed", i32 45, i64 64, i64 64, i64 512, i32 0, metadata !342} ; [ DW_TAG_member ] [bPerturbed] [line 45, size 64, align 64, offset 512] [from ]
!391 = metadata !{i32 786445, metadata !378, metadata !377, metadata !"resnr", i32 46, i64 64, i64 64, i64 576, i32 0, metadata !342} ; [ DW_TAG_member ] [resnr] [line 46, size 64, align 64, offset 576] [from ]
!392 = metadata !{i32 786445, metadata !378, metadata !377, metadata !"typeA", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !342} ; [ DW_TAG_member ] [typeA] [line 47, size 64, align 64, offset 640] [from ]
!393 = metadata !{i32 786445, metadata !378, metadata !377, metadata !"typeB", i32 47, i64 64, i64 64, i64 704, i32 0, metadata !342} ; [ DW_TAG_member ] [typeB] [line 47, size 64, align 64, offset 704] [from ]
!394 = metadata !{i32 786445, metadata !378, metadata !377, metadata !"ptype", i32 48, i64 64, i64 64, i64 768, i32 0, metadata !395} ; [ DW_TAG_member ] [ptype] [line 48, size 64, align 64, offset 768] [from ]
!395 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !118} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!396 = metadata !{i32 786445, metadata !378, metadata !377, metadata !"cTC", i32 49, i64 64, i64 64, i64 832, i32 0, metadata !395} ; [ DW_TAG_member ] [cTC] [line 49, size 64, align 64, offset 832] [from ]
!397 = metadata !{i32 786445, metadata !378, metadata !377, metadata !"cENER", i32 49, i64 64, i64 64, i64 896, i32 0, metadata !395} ; [ DW_TAG_member ] [cENER] [line 49, size 64, align 64, offset 896] [from ]
!398 = metadata !{i32 786445, metadata !378, metadata !377, metadata !"cACC", i32 49, i64 64, i64 64, i64 960, i32 0, metadata !395} ; [ DW_TAG_member ] [cACC] [line 49, size 64, align 64, offset 960] [from ]
!399 = metadata !{i32 786445, metadata !378, metadata !377, metadata !"cFREEZE", i32 49, i64 64, i64 64, i64 1024, i32 0, metadata !395} ; [ DW_TAG_member ] [cFREEZE] [line 49, size 64, align 64, offset 1024] [from ]
!400 = metadata !{i32 786445, metadata !378, metadata !377, metadata !"cXTC", i32 49, i64 64, i64 64, i64 1088, i32 0, metadata !395} ; [ DW_TAG_member ] [cXTC] [line 49, size 64, align 64, offset 1088] [from ]
!401 = metadata !{i32 786445, metadata !378, metadata !377, metadata !"cVCM", i32 49, i64 64, i64 64, i64 1152, i32 0, metadata !395} ; [ DW_TAG_member ] [cVCM] [line 49, size 64, align 64, offset 1152] [from ]
!402 = metadata !{i32 786445, metadata !378, metadata !377, metadata !"cU1", i32 50, i64 64, i64 64, i64 1216, i32 0, metadata !395} ; [ DW_TAG_member ] [cU1] [line 50, size 64, align 64, offset 1216] [from ]
!403 = metadata !{i32 786445, metadata !378, metadata !377, metadata !"cU2", i32 50, i64 64, i64 64, i64 1280, i32 0, metadata !395} ; [ DW_TAG_member ] [cU2] [line 50, size 64, align 64, offset 1280] [from ]
!404 = metadata !{i32 786445, metadata !378, metadata !377, metadata !"cORF", i32 50, i64 64, i64 64, i64 1344, i32 0, metadata !395} ; [ DW_TAG_member ] [cORF] [line 50, size 64, align 64, offset 1344] [from ]
!405 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !406} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!406 = metadata !{i32 786454, metadata !1, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !233} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!407 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !233} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!408 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !409} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_edpar]
!409 = metadata !{i32 786454, metadata !1, null, metadata !"t_edpar", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !410} ; [ DW_TAG_typedef ] [t_edpar] [line 92, size 0, align 0, offset 0] [from ]
!410 = metadata !{i32 786451, metadata !74, null, metadata !"", i32 71, i64 6208, i64 64, i32 0, i32 0, null, metadata !411, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 71, size 6208, align 64, offset 0] [from ]
!411 = metadata !{metadata !412, metadata !413, metadata !414, metadata !415, metadata !416, metadata !417, metadata !418, metadata !419, metadata !430, metadata !431, metadata !454, metadata !455, metadata !456, metadata !457, metadata !458, metadata !459, metadata !460, metadata !461, metadata !462, metadata !463}
!412 = metadata !{i32 786445, metadata !74, metadata !410, metadata !"nini", i32 72, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [nini] [line 72, size 32, align 32, offset 0] [from int]
!413 = metadata !{i32 786445, metadata !74, metadata !410, metadata !"npro", i32 73, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [npro] [line 73, size 32, align 32, offset 32] [from int]
!414 = metadata !{i32 786445, metadata !74, metadata !410, metadata !"ned", i32 74, i64 32, i64 32, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [ned] [line 74, size 32, align 32, offset 64] [from int]
!415 = metadata !{i32 786445, metadata !74, metadata !410, metadata !"selmas", i32 75, i64 32, i64 32, i64 96, i32 0, metadata !59} ; [ DW_TAG_member ] [selmas] [line 75, size 32, align 32, offset 96] [from int]
!416 = metadata !{i32 786445, metadata !74, metadata !410, metadata !"outfrq", i32 76, i64 32, i64 32, i64 128, i32 0, metadata !59} ; [ DW_TAG_member ] [outfrq] [line 76, size 32, align 32, offset 128] [from int]
!417 = metadata !{i32 786445, metadata !74, metadata !410, metadata !"logfrq", i32 77, i64 32, i64 32, i64 160, i32 0, metadata !59} ; [ DW_TAG_member ] [logfrq] [line 77, size 32, align 32, offset 160] [from int]
!418 = metadata !{i32 786445, metadata !74, metadata !410, metadata !"maxedsteps", i32 78, i64 32, i64 32, i64 192, i32 0, metadata !59} ; [ DW_TAG_member ] [maxedsteps] [line 78, size 32, align 32, offset 192] [from int]
!419 = metadata !{i32 786445, metadata !74, metadata !410, metadata !"sref", i32 79, i64 512, i64 64, i64 256, i32 0, metadata !420} ; [ DW_TAG_member ] [sref] [line 79, size 512, align 64, offset 256] [from t_edx]
!420 = metadata !{i32 786454, metadata !74, null, metadata !"t_edx", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !421} ; [ DW_TAG_typedef ] [t_edx] [line 68, size 0, align 0, offset 0] [from ]
!421 = metadata !{i32 786451, metadata !74, null, metadata !"", i32 63, i64 512, i64 64, i32 0, i32 0, null, metadata !422, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 63, size 512, align 64, offset 0] [from ]
!422 = metadata !{metadata !423, metadata !424, metadata !425, metadata !426}
!423 = metadata !{i32 786445, metadata !74, metadata !421, metadata !"nr", i32 64, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [nr] [line 64, size 32, align 32, offset 0] [from int]
!424 = metadata !{i32 786445, metadata !74, metadata !421, metadata !"anrs", i32 65, i64 64, i64 64, i64 64, i32 0, metadata !342} ; [ DW_TAG_member ] [anrs] [line 65, size 64, align 64, offset 64] [from ]
!425 = metadata !{i32 786445, metadata !74, metadata !421, metadata !"x", i32 66, i64 64, i64 64, i64 128, i32 0, metadata !405} ; [ DW_TAG_member ] [x] [line 66, size 64, align 64, offset 128] [from ]
!426 = metadata !{i32 786445, metadata !74, metadata !421, metadata !"box", i32 67, i64 288, i64 32, i64 192, i32 0, metadata !427} ; [ DW_TAG_member ] [box] [line 67, size 288, align 32, offset 192] [from matrix]
!427 = metadata !{i32 786454, metadata !74, null, metadata !"matrix", i32 103, i64 0, i64 0, i64 0, i32 0, metadata !428} ; [ DW_TAG_typedef ] [matrix] [line 103, size 0, align 0, offset 0] [from ]
!428 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !167, metadata !429, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from real]
!429 = metadata !{metadata !235, metadata !235}
!430 = metadata !{i32 786445, metadata !74, metadata !410, metadata !"sav", i32 80, i64 512, i64 64, i64 768, i32 0, metadata !420} ; [ DW_TAG_member ] [sav] [line 80, size 512, align 64, offset 768] [from t_edx]
!431 = metadata !{i32 786445, metadata !74, metadata !410, metadata !"vecs", i32 81, i64 3456, i64 64, i64 1280, i32 0, metadata !432} ; [ DW_TAG_member ] [vecs] [line 81, size 3456, align 64, offset 1280] [from t_edvecs]
!432 = metadata !{i32 786454, metadata !74, null, metadata !"t_edvecs", i32 61, i64 0, i64 0, i64 0, i32 0, metadata !433} ; [ DW_TAG_typedef ] [t_edvecs] [line 61, size 0, align 0, offset 0] [from ]
!433 = metadata !{i32 786451, metadata !74, null, metadata !"", i32 54, i64 3456, i64 64, i32 0, i32 0, null, metadata !434, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 54, size 3456, align 64, offset 0] [from ]
!434 = metadata !{metadata !435, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453}
!435 = metadata !{i32 786445, metadata !74, metadata !433, metadata !"mon", i32 55, i64 576, i64 64, i64 0, i32 0, metadata !436} ; [ DW_TAG_member ] [mon] [line 55, size 576, align 64, offset 0] [from t_eigvec]
!436 = metadata !{i32 786454, metadata !74, null, metadata !"t_eigvec", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !437} ; [ DW_TAG_typedef ] [t_eigvec] [line 52, size 0, align 0, offset 0] [from ]
!437 = metadata !{i32 786451, metadata !74, null, metadata !"", i32 42, i64 576, i64 64, i32 0, i32 0, null, metadata !438, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 42, size 576, align 64, offset 0] [from ]
!438 = metadata !{metadata !439, metadata !440, metadata !441, metadata !442, metadata !444, metadata !445, metadata !446, metadata !447, metadata !448}
!439 = metadata !{i32 786445, metadata !74, metadata !437, metadata !"neig", i32 43, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [neig] [line 43, size 32, align 32, offset 0] [from int]
!440 = metadata !{i32 786445, metadata !74, metadata !437, metadata !"ieig", i32 44, i64 64, i64 64, i64 64, i32 0, metadata !342} ; [ DW_TAG_member ] [ieig] [line 44, size 64, align 64, offset 64] [from ]
!441 = metadata !{i32 786445, metadata !74, metadata !437, metadata !"stpsz", i32 45, i64 64, i64 64, i64 128, i32 0, metadata !383} ; [ DW_TAG_member ] [stpsz] [line 45, size 64, align 64, offset 128] [from ]
!442 = metadata !{i32 786445, metadata !74, metadata !437, metadata !"vec", i32 46, i64 64, i64 64, i64 192, i32 0, metadata !443} ; [ DW_TAG_member ] [vec] [line 46, size 64, align 64, offset 192] [from ]
!443 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !405} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!444 = metadata !{i32 786445, metadata !74, metadata !437, metadata !"xproj", i32 47, i64 64, i64 64, i64 256, i32 0, metadata !383} ; [ DW_TAG_member ] [xproj] [line 47, size 64, align 64, offset 256] [from ]
!445 = metadata !{i32 786445, metadata !74, metadata !437, metadata !"vproj", i32 48, i64 64, i64 64, i64 320, i32 0, metadata !383} ; [ DW_TAG_member ] [vproj] [line 48, size 64, align 64, offset 320] [from ]
!446 = metadata !{i32 786445, metadata !74, metadata !437, metadata !"fproj", i32 49, i64 64, i64 64, i64 384, i32 0, metadata !383} ; [ DW_TAG_member ] [fproj] [line 49, size 64, align 64, offset 384] [from ]
!447 = metadata !{i32 786445, metadata !74, metadata !437, metadata !"refproj", i32 50, i64 64, i64 64, i64 448, i32 0, metadata !383} ; [ DW_TAG_member ] [refproj] [line 50, size 64, align 64, offset 448] [from ]
!448 = metadata !{i32 786445, metadata !74, metadata !437, metadata !"radius", i32 51, i64 32, i64 32, i64 512, i32 0, metadata !167} ; [ DW_TAG_member ] [radius] [line 51, size 32, align 32, offset 512] [from real]
!449 = metadata !{i32 786445, metadata !74, metadata !433, metadata !"linfix", i32 56, i64 576, i64 64, i64 576, i32 0, metadata !436} ; [ DW_TAG_member ] [linfix] [line 56, size 576, align 64, offset 576] [from t_eigvec]
!450 = metadata !{i32 786445, metadata !74, metadata !433, metadata !"linacc", i32 57, i64 576, i64 64, i64 1152, i32 0, metadata !436} ; [ DW_TAG_member ] [linacc] [line 57, size 576, align 64, offset 1152] [from t_eigvec]
!451 = metadata !{i32 786445, metadata !74, metadata !433, metadata !"radfix", i32 58, i64 576, i64 64, i64 1728, i32 0, metadata !436} ; [ DW_TAG_member ] [radfix] [line 58, size 576, align 64, offset 1728] [from t_eigvec]
!452 = metadata !{i32 786445, metadata !74, metadata !433, metadata !"radacc", i32 59, i64 576, i64 64, i64 2304, i32 0, metadata !436} ; [ DW_TAG_member ] [radacc] [line 59, size 576, align 64, offset 2304] [from t_eigvec]
!453 = metadata !{i32 786445, metadata !74, metadata !433, metadata !"radcon", i32 60, i64 576, i64 64, i64 2880, i32 0, metadata !436} ; [ DW_TAG_member ] [radcon] [line 60, size 576, align 64, offset 2880] [from t_eigvec]
!454 = metadata !{i32 786445, metadata !74, metadata !410, metadata !"slope", i32 82, i64 32, i64 32, i64 4736, i32 0, metadata !167} ; [ DW_TAG_member ] [slope] [line 82, size 32, align 32, offset 4736] [from real]
!455 = metadata !{i32 786445, metadata !74, metadata !410, metadata !"star", i32 83, i64 512, i64 64, i64 4800, i32 0, metadata !420} ; [ DW_TAG_member ] [star] [line 83, size 512, align 64, offset 4800] [from t_edx]
!456 = metadata !{i32 786445, metadata !74, metadata !410, metadata !"sori", i32 84, i64 512, i64 64, i64 5312, i32 0, metadata !420} ; [ DW_TAG_member ] [sori] [line 84, size 512, align 64, offset 5312] [from t_edx]
!457 = metadata !{i32 786445, metadata !74, metadata !410, metadata !"nmass", i32 85, i64 32, i64 32, i64 5824, i32 0, metadata !59} ; [ DW_TAG_member ] [nmass] [line 85, size 32, align 32, offset 5824] [from int]
!458 = metadata !{i32 786445, metadata !74, metadata !410, metadata !"masnrs", i32 86, i64 64, i64 64, i64 5888, i32 0, metadata !342} ; [ DW_TAG_member ] [masnrs] [line 86, size 64, align 64, offset 5888] [from ]
!459 = metadata !{i32 786445, metadata !74, metadata !410, metadata !"mass", i32 87, i64 64, i64 64, i64 5952, i32 0, metadata !383} ; [ DW_TAG_member ] [mass] [line 87, size 64, align 64, offset 5952] [from ]
!460 = metadata !{i32 786445, metadata !74, metadata !410, metadata !"tmass", i32 88, i64 32, i64 32, i64 6016, i32 0, metadata !167} ; [ DW_TAG_member ] [tmass] [line 88, size 32, align 32, offset 6016] [from real]
!461 = metadata !{i32 786445, metadata !74, metadata !410, metadata !"nfit", i32 89, i64 32, i64 32, i64 6048, i32 0, metadata !59} ; [ DW_TAG_member ] [nfit] [line 89, size 32, align 32, offset 6048] [from int]
!462 = metadata !{i32 786445, metadata !74, metadata !410, metadata !"fitnrs", i32 90, i64 64, i64 64, i64 6080, i32 0, metadata !342} ; [ DW_TAG_member ] [fitnrs] [line 90, size 64, align 64, offset 6080] [from ]
!463 = metadata !{i32 786445, metadata !74, metadata !410, metadata !"edo", i32 91, i64 64, i64 64, i64 6144, i32 0, metadata !86} ; [ DW_TAG_member ] [edo] [line 91, size 64, align 64, offset 6144] [from ]
!464 = metadata !{metadata !465, metadata !466, metadata !467, metadata !468, metadata !469, metadata !470, metadata !471, metadata !472, metadata !473, metadata !474, metadata !475, metadata !476, metadata !477, metadata !478, metadata !479, metadata !480, metadata !481}
!465 = metadata !{i32 786689, metadata !83, metadata !"log", metadata !56, i32 16777279, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 63]
!466 = metadata !{i32 786689, metadata !83, metadata !"top", metadata !56, i32 33554495, metadata !140, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [top] [line 63]
!467 = metadata !{i32 786689, metadata !83, metadata !"md", metadata !56, i32 50331712, metadata !375, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [md] [line 64]
!468 = metadata !{i32 786689, metadata !83, metadata !"start", metadata !56, i32 67108928, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 64]
!469 = metadata !{i32 786689, metadata !83, metadata !"homenr", metadata !56, i32 83886144, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [homenr] [line 64]
!470 = metadata !{i32 786689, metadata !83, metadata !"x", metadata !56, i32 100663361, metadata !405, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 65]
!471 = metadata !{i32 786689, metadata !83, metadata !"box", metadata !56, i32 117440577, metadata !407, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 65]
!472 = metadata !{i32 786689, metadata !83, metadata !"edyn", metadata !56, i32 134217794, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [edyn] [line 66]
!473 = metadata !{i32 786689, metadata !83, metadata !"edi", metadata !56, i32 150995010, metadata !408, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [edi] [line 66]
!474 = metadata !{i32 786688, metadata !83, metadata !"i", metadata !56, i32 68, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 68]
!475 = metadata !{i32 786688, metadata !83, metadata !"j", metadata !56, i32 68, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 68]
!476 = metadata !{i32 786688, metadata !83, metadata !"ned", metadata !56, i32 68, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ned] [line 68]
!477 = metadata !{i32 786688, metadata !83, metadata !"refmasnrs", metadata !56, i32 68, metadata !342, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [refmasnrs] [line 68]
!478 = metadata !{i32 786688, metadata !83, metadata !"xdum", metadata !56, i32 69, metadata !405, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xdum] [line 69]
!479 = metadata !{i32 786688, metadata !83, metadata !"transvec", metadata !56, i32 69, metadata !405, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [transvec] [line 69]
!480 = metadata !{i32 786688, metadata !83, metadata !"rmsd", metadata !56, i32 70, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rmsd] [line 70]
!481 = metadata !{i32 786688, metadata !83, metadata !"rotmat", metadata !56, i32 71, metadata !427, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rotmat] [line 71]
!482 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"read_edi", metadata !"read_edi", metadata !"", i32 209, metadata !483, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_edsamyn*, %struct.t_edpar*, i32)* @read_edi, null, null, metadata !485, i32 210} ; [ DW_TAG_subprogram ] [line 209] [def] [scope 210] [read_edi]
!483 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !484, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!484 = metadata !{null, metadata !71, metadata !408, metadata !59}
!485 = metadata !{metadata !486, metadata !487, metadata !488, metadata !489, metadata !490, metadata !491, metadata !492, metadata !493, metadata !494, metadata !495}
!486 = metadata !{i32 786689, metadata !482, metadata !"edyn", metadata !56, i32 16777425, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [edyn] [line 209]
!487 = metadata !{i32 786689, metadata !482, metadata !"edi", metadata !56, i32 33554641, metadata !408, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [edi] [line 209]
!488 = metadata !{i32 786689, metadata !482, metadata !"nr_mdatoms", metadata !56, i32 50331857, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nr_mdatoms] [line 209]
!489 = metadata !{i32 786688, metadata !482, metadata !"in", metadata !56, i32 211, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in] [line 211]
!490 = metadata !{i32 786688, metadata !482, metadata !"i", metadata !56, i32 212, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 212]
!491 = metadata !{i32 786688, metadata !482, metadata !"j", metadata !56, i32 212, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 212]
!492 = metadata !{i32 786688, metadata !482, metadata !"idum", metadata !56, i32 212, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idum] [line 212]
!493 = metadata !{i32 786688, metadata !482, metadata !"magic", metadata !56, i32 212, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [magic] [line 212]
!494 = metadata !{i32 786688, metadata !482, metadata !"readmagic", metadata !56, i32 212, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [readmagic] [line 212]
!495 = metadata !{i32 786688, metadata !482, metadata !"xdum", metadata !56, i32 213, metadata !405, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xdum] [line 213]
!496 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"read_edint", metadata !"read_edint", metadata !"", i32 296, metadata !497, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*)* @read_edint, null, null, metadata !499, i32 297} ; [ DW_TAG_subprogram ] [line 296] [def] [scope 297] [read_edint]
!497 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !498, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!498 = metadata !{metadata !59, metadata !86}
!499 = metadata !{metadata !500, metadata !501, metadata !505}
!500 = metadata !{i32 786689, metadata !496, metadata !"file", metadata !56, i32 16777512, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 296]
!501 = metadata !{i32 786688, metadata !496, metadata !"line", metadata !56, i32 298, metadata !502, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 298]
!502 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32776, i64 8, i32 0, i32 0, metadata !67, metadata !503, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32776, align 8, offset 0] [from char]
!503 = metadata !{metadata !504}
!504 = metadata !{i32 786465, i64 0, i64 4097}    ; [ DW_TAG_subrange_type ] [0, 4096]
!505 = metadata !{i32 786688, metadata !496, metadata !"idum", metadata !56, i32 299, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idum] [line 299]
!506 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"read_edreal", metadata !"read_edreal", metadata !"", i32 307, metadata !507, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct._IO_FILE*)* @read_edreal, null, null, metadata !509, i32 308} ; [ DW_TAG_subprogram ] [line 307] [def] [scope 308] [read_edreal]
!507 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !508, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!508 = metadata !{metadata !167, metadata !86}
!509 = metadata !{metadata !510, metadata !511, metadata !512}
!510 = metadata !{i32 786689, metadata !506, metadata !"file", metadata !56, i32 16777523, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 307]
!511 = metadata !{i32 786688, metadata !506, metadata !"line", metadata !56, i32 309, metadata !502, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 309]
!512 = metadata !{i32 786688, metadata !506, metadata !"rdum", metadata !56, i32 310, metadata !513, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rdum] [line 310]
!513 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!514 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"read_edint2", metadata !"read_edint2", metadata !"", i32 318, metadata !497, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*)* @read_edint2, null, null, metadata !515, i32 319} ; [ DW_TAG_subprogram ] [line 318] [def] [scope 319] [read_edint2]
!515 = metadata !{metadata !516, metadata !517, metadata !518}
!516 = metadata !{i32 786689, metadata !514, metadata !"file", metadata !56, i32 16777534, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 318]
!517 = metadata !{i32 786688, metadata !514, metadata !"line", metadata !56, i32 320, metadata !502, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 320]
!518 = metadata !{i32 786688, metadata !514, metadata !"idum", metadata !56, i32 321, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idum] [line 321]
!519 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"read_edx", metadata !"read_edx", metadata !"", i32 328, metadata !520, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, i32*, [3 x float]*)* @read_edx, null, null, metadata !522, i32 329} ; [ DW_TAG_subprogram ] [line 328] [def] [scope 329] [read_edx]
!520 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !521, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!521 = metadata !{null, metadata !86, metadata !59, metadata !342, metadata !405}
!522 = metadata !{metadata !523, metadata !524, metadata !525, metadata !526, metadata !527, metadata !528, metadata !529, metadata !530}
!523 = metadata !{i32 786689, metadata !519, metadata !"file", metadata !56, i32 16777544, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 328]
!524 = metadata !{i32 786689, metadata !519, metadata !"number", metadata !56, i32 33554760, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [number] [line 328]
!525 = metadata !{i32 786689, metadata !519, metadata !"anrs", metadata !56, i32 50331976, metadata !342, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [anrs] [line 328]
!526 = metadata !{i32 786689, metadata !519, metadata !"x", metadata !56, i32 67109192, metadata !405, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 328]
!527 = metadata !{i32 786688, metadata !519, metadata !"i", metadata !56, i32 330, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 330]
!528 = metadata !{i32 786688, metadata !519, metadata !"j", metadata !56, i32 330, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 330]
!529 = metadata !{i32 786688, metadata !519, metadata !"line", metadata !56, i32 331, metadata !502, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 331]
!530 = metadata !{i32 786688, metadata !519, metadata !"d", metadata !56, i32 332, metadata !531, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 332]
!531 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !513, metadata !234, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from double]
!532 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"read_edvecs", metadata !"read_edvecs", metadata !"", i32 343, metadata !533, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, %struct.t_edvecs*)* @read_edvecs, null, null, metadata !536, i32 344} ; [ DW_TAG_subprogram ] [line 343] [def] [scope 344] [read_edvecs]
!533 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !534, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!534 = metadata !{null, metadata !86, metadata !59, metadata !535}
!535 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !432} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_edvecs]
!536 = metadata !{metadata !537, metadata !538, metadata !539}
!537 = metadata !{i32 786689, metadata !532, metadata !"in", metadata !56, i32 16777559, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in] [line 343]
!538 = metadata !{i32 786689, metadata !532, metadata !"nr", metadata !56, i32 33554775, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nr] [line 343]
!539 = metadata !{i32 786689, metadata !532, metadata !"vecs", metadata !56, i32 50331991, metadata !535, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vecs] [line 343]
!540 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"read_edvec", metadata !"read_edvec", metadata !"", i32 353, metadata !541, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, %struct.t_eigvec*)* @read_edvec, null, null, metadata !544, i32 354} ; [ DW_TAG_subprogram ] [line 353] [def] [scope 354] [read_edvec]
!541 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !542, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!542 = metadata !{null, metadata !86, metadata !59, metadata !543}
!543 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !436} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_eigvec]
!544 = metadata !{metadata !545, metadata !546, metadata !547, metadata !548, metadata !549, metadata !550, metadata !551}
!545 = metadata !{i32 786689, metadata !540, metadata !"in", metadata !56, i32 16777569, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in] [line 353]
!546 = metadata !{i32 786689, metadata !540, metadata !"nr", metadata !56, i32 33554785, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nr] [line 353]
!547 = metadata !{i32 786689, metadata !540, metadata !"tvec", metadata !56, i32 50332001, metadata !543, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tvec] [line 353]
!548 = metadata !{i32 786688, metadata !540, metadata !"i", metadata !56, i32 355, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 355]
!549 = metadata !{i32 786688, metadata !540, metadata !"idum", metadata !56, i32 355, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idum] [line 355]
!550 = metadata !{i32 786688, metadata !540, metadata !"rdum", metadata !56, i32 356, metadata !513, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rdum] [line 356]
!551 = metadata !{i32 786688, metadata !540, metadata !"line", metadata !56, i32 357, metadata !502, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 357]
!552 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"scan_edvec", metadata !"scan_edvec", metadata !"", i32 379, metadata !553, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, [3 x float]*)* @scan_edvec, null, null, metadata !555, i32 380} ; [ DW_TAG_subprogram ] [line 379] [def] [scope 380] [scan_edvec]
!553 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !554, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!554 = metadata !{null, metadata !86, metadata !59, metadata !405}
!555 = metadata !{metadata !556, metadata !557, metadata !558, metadata !559, metadata !560, metadata !561, metadata !562, metadata !563}
!556 = metadata !{i32 786689, metadata !552, metadata !"in", metadata !56, i32 16777595, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in] [line 379]
!557 = metadata !{i32 786689, metadata !552, metadata !"nr", metadata !56, i32 33554811, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nr] [line 379]
!558 = metadata !{i32 786689, metadata !552, metadata !"vec", metadata !56, i32 50332027, metadata !405, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 379]
!559 = metadata !{i32 786688, metadata !552, metadata !"line", metadata !56, i32 381, metadata !502, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 381]
!560 = metadata !{i32 786688, metadata !552, metadata !"i", metadata !56, i32 382, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 382]
!561 = metadata !{i32 786688, metadata !552, metadata !"x", metadata !56, i32 383, metadata !513, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 383]
!562 = metadata !{i32 786688, metadata !552, metadata !"y", metadata !56, i32 383, metadata !513, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 383]
!563 = metadata !{i32 786688, metadata !552, metadata !"z", metadata !56, i32 383, metadata !513, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 383]
!564 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"fitit", metadata !"fitit", metadata !"", i32 394, metadata !565, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i32, [3 x float]*, %struct.t_edpar*, [3 x float]*, [3 x float]*)* @fitit, null, null, metadata !567, i32 395} ; [ DW_TAG_subprogram ] [line 394] [def] [scope 395] [fitit]
!565 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !566, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!566 = metadata !{metadata !167, metadata !59, metadata !405, metadata !408, metadata !405, metadata !407}
!567 = metadata !{metadata !568, metadata !569, metadata !570, metadata !571, metadata !572, metadata !573, metadata !574, metadata !575, metadata !576, metadata !577, metadata !578}
!568 = metadata !{i32 786689, metadata !564, metadata !"nr", metadata !56, i32 16777610, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nr] [line 394]
!569 = metadata !{i32 786689, metadata !564, metadata !"x", metadata !56, i32 33554826, metadata !405, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 394]
!570 = metadata !{i32 786689, metadata !564, metadata !"edi", metadata !56, i32 50332042, metadata !408, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [edi] [line 394]
!571 = metadata !{i32 786689, metadata !564, metadata !"transvec", metadata !56, i32 67109258, metadata !405, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [transvec] [line 394]
!572 = metadata !{i32 786689, metadata !564, metadata !"rmat", metadata !56, i32 83886474, metadata !407, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rmat] [line 394]
!573 = metadata !{i32 786688, metadata !564, metadata !"xdum", metadata !56, i32 396, metadata !405, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xdum] [line 396]
!574 = metadata !{i32 786688, metadata !564, metadata !"x_old", metadata !56, i32 396, metadata !406, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_old] [line 396]
!575 = metadata !{i32 786688, metadata !564, metadata !"i", metadata !56, i32 397, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 397]
!576 = metadata !{i32 786688, metadata !564, metadata !"j", metadata !56, i32 397, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 397]
!577 = metadata !{i32 786688, metadata !564, metadata !"k", metadata !56, i32 397, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 397]
!578 = metadata !{i32 786688, metadata !564, metadata !"rmsd", metadata !56, i32 398, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rmsd] [line 398]
!579 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"do_edfit", metadata !"do_edfit", metadata !"", i32 440, metadata !580, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, [3 x float]*, [3 x float]*, [3 x float]*)* @do_edfit, null, null, metadata !582, i32 441} ; [ DW_TAG_subprogram ] [line 440] [def] [scope 441] [do_edfit]
!580 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !581, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!581 = metadata !{null, metadata !59, metadata !405, metadata !405, metadata !407}
!582 = metadata !{metadata !583, metadata !584, metadata !585, metadata !586, metadata !587, metadata !588, metadata !589, metadata !590, metadata !591, metadata !592, metadata !593, metadata !596, metadata !597, metadata !599, metadata !600, metadata !601, metadata !602, metadata !603, metadata !604, metadata !605}
!583 = metadata !{i32 786689, metadata !579, metadata !"natoms", metadata !56, i32 16777656, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 440]
!584 = metadata !{i32 786689, metadata !579, metadata !"xp", metadata !56, i32 33554872, metadata !405, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xp] [line 440]
!585 = metadata !{i32 786689, metadata !579, metadata !"x", metadata !56, i32 50332088, metadata !405, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 440]
!586 = metadata !{i32 786689, metadata !579, metadata !"R", metadata !56, i32 67109304, metadata !407, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [R] [line 440]
!587 = metadata !{i32 786688, metadata !579, metadata !"c", metadata !56, i32 443, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 443]
!588 = metadata !{i32 786688, metadata !579, metadata !"r", metadata !56, i32 443, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 443]
!589 = metadata !{i32 786688, metadata !579, metadata !"n", metadata !56, i32 443, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 443]
!590 = metadata !{i32 786688, metadata !579, metadata !"j", metadata !56, i32 443, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 443]
!591 = metadata !{i32 786688, metadata !579, metadata !"i", metadata !56, i32 443, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 443]
!592 = metadata !{i32 786688, metadata !579, metadata !"irot", metadata !56, i32 443, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irot] [line 443]
!593 = metadata !{i32 786688, metadata !579, metadata !"omega", metadata !56, i32 444, metadata !594, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [omega] [line 444]
!594 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !595} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!595 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !513} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!596 = metadata !{i32 786688, metadata !579, metadata !"om", metadata !56, i32 444, metadata !594, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [om] [line 444]
!597 = metadata !{i32 786688, metadata !579, metadata !"d", metadata !56, i32 444, metadata !598, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 444]
!598 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !513, metadata !242, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from double]
!599 = metadata !{i32 786688, metadata !579, metadata !"xnr", metadata !56, i32 444, metadata !513, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xnr] [line 444]
!600 = metadata !{i32 786688, metadata !579, metadata !"xpc", metadata !56, i32 444, metadata !513, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xpc] [line 444]
!601 = metadata !{i32 786688, metadata !579, metadata !"vh", metadata !56, i32 445, metadata !427, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vh] [line 445]
!602 = metadata !{i32 786688, metadata !579, metadata !"vk", metadata !56, i32 445, metadata !427, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vk] [line 445]
!603 = metadata !{i32 786688, metadata !579, metadata !"u", metadata !56, i32 445, metadata !427, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 445]
!604 = metadata !{i32 786688, metadata !579, metadata !"index", metadata !56, i32 449, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 449]
!605 = metadata !{i32 786688, metadata !579, metadata !"max_d", metadata !56, i32 450, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max_d] [line 450]
!606 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"put_in_origin", metadata !"put_in_origin", metadata !"", i32 531, metadata !607, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, [3 x float]*, i32, i32*, float*, float)* @put_in_origin, null, null, metadata !609, i32 532} ; [ DW_TAG_subprogram ] [line 531] [def] [scope 532] [put_in_origin]
!607 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !608, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!608 = metadata !{null, metadata !59, metadata !405, metadata !59, metadata !342, metadata !383, metadata !167}
!609 = metadata !{metadata !610, metadata !611, metadata !612, metadata !613, metadata !614, metadata !615, metadata !616, metadata !617, metadata !618}
!610 = metadata !{i32 786689, metadata !606, metadata !"nr", metadata !56, i32 16777747, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nr] [line 531]
!611 = metadata !{i32 786689, metadata !606, metadata !"x", metadata !56, i32 33554963, metadata !405, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 531]
!612 = metadata !{i32 786689, metadata !606, metadata !"nmass", metadata !56, i32 50332179, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nmass] [line 531]
!613 = metadata !{i32 786689, metadata !606, metadata !"masnrs", metadata !56, i32 67109395, metadata !342, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [masnrs] [line 531]
!614 = metadata !{i32 786689, metadata !606, metadata !"mass", metadata !56, i32 83886611, metadata !383, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mass] [line 531]
!615 = metadata !{i32 786689, metadata !606, metadata !"tmass", metadata !56, i32 100663827, metadata !167, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tmass] [line 531]
!616 = metadata !{i32 786688, metadata !606, metadata !"i", metadata !56, i32 533, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 533]
!617 = metadata !{i32 786688, metadata !606, metadata !"j", metadata !56, i32 533, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 533]
!618 = metadata !{i32 786688, metadata !606, metadata !"cm", metadata !56, i32 534, metadata !406, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cm] [line 534]
!619 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"project", metadata !"project", metadata !"", i32 552, metadata !620, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ([3 x float]*, %struct.t_edpar*, i8*)* @project, null, null, metadata !622, i32 553} ; [ DW_TAG_subprogram ] [line 552] [def] [scope 553] [project]
!620 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !621, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!621 = metadata !{null, metadata !405, metadata !408, metadata !66}
!622 = metadata !{metadata !623, metadata !624, metadata !625, metadata !626}
!623 = metadata !{i32 786689, metadata !619, metadata !"x", metadata !56, i32 16777768, metadata !405, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 552]
!624 = metadata !{i32 786689, metadata !619, metadata !"edi", metadata !56, i32 33554984, metadata !408, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [edi] [line 552]
!625 = metadata !{i32 786689, metadata !619, metadata !"mode", metadata !56, i32 50332200, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 552]
!626 = metadata !{i32 786688, metadata !619, metadata !"i", metadata !56, i32 554, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 554]
!627 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"do_project", metadata !"do_project", metadata !"", i32 577, metadata !628, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ([3 x float]*, %struct.t_eigvec*, %struct.t_edpar*, i8*)* @do_project, null, null, metadata !630, i32 578} ; [ DW_TAG_subprogram ] [line 577] [def] [scope 578] [do_project]
!628 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !629, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!629 = metadata !{null, metadata !405, metadata !543, metadata !408, metadata !66}
!630 = metadata !{metadata !631, metadata !632, metadata !633, metadata !634, metadata !635, metadata !636, metadata !637, metadata !638}
!631 = metadata !{i32 786689, metadata !627, metadata !"x", metadata !56, i32 16777793, metadata !405, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 577]
!632 = metadata !{i32 786689, metadata !627, metadata !"vec", metadata !56, i32 33555009, metadata !543, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 577]
!633 = metadata !{i32 786689, metadata !627, metadata !"edi", metadata !56, i32 50332225, metadata !408, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [edi] [line 577]
!634 = metadata !{i32 786689, metadata !627, metadata !"mode", metadata !56, i32 67109441, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 577]
!635 = metadata !{i32 786688, metadata !627, metadata !"i", metadata !56, i32 579, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 579]
!636 = metadata !{i32 786688, metadata !627, metadata !"j", metadata !56, i32 579, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 579]
!637 = metadata !{i32 786688, metadata !627, metadata !"k", metadata !56, i32 579, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 579]
!638 = metadata !{i32 786688, metadata !627, metadata !"proj", metadata !56, i32 580, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [proj] [line 580]
!639 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"projectx", metadata !"projectx", metadata !"", i32 595, metadata !640, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_edpar*, [3 x float]*, %struct.t_eigvec*)* @projectx, null, null, metadata !642, i32 596} ; [ DW_TAG_subprogram ] [line 595] [def] [scope 596] [projectx]
!640 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !641, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!641 = metadata !{null, metadata !408, metadata !405, metadata !543}
!642 = metadata !{metadata !643, metadata !644, metadata !645, metadata !646, metadata !647, metadata !648, metadata !649}
!643 = metadata !{i32 786689, metadata !639, metadata !"edi", metadata !56, i32 16777811, metadata !408, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [edi] [line 595]
!644 = metadata !{i32 786689, metadata !639, metadata !"x", metadata !56, i32 33555027, metadata !405, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 595]
!645 = metadata !{i32 786689, metadata !639, metadata !"vec", metadata !56, i32 50332243, metadata !543, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 595]
!646 = metadata !{i32 786688, metadata !639, metadata !"i", metadata !56, i32 597, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 597]
!647 = metadata !{i32 786688, metadata !639, metadata !"j", metadata !56, i32 597, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 597]
!648 = metadata !{i32 786688, metadata !639, metadata !"k", metadata !56, i32 597, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 597]
!649 = metadata !{i32 786688, metadata !639, metadata !"rad", metadata !56, i32 598, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rad] [line 598]
!650 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"do_projectx", metadata !"do_projectx", metadata !"", i32 620, metadata !651, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct.t_edpar*, [3 x float]*, [3 x float]*)* @do_projectx, null, null, metadata !653, i32 621} ; [ DW_TAG_subprogram ] [line 620] [def] [scope 621] [do_projectx]
!651 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !652, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!652 = metadata !{metadata !167, metadata !408, metadata !405, metadata !405}
!653 = metadata !{metadata !654, metadata !655, metadata !656, metadata !657, metadata !658, metadata !659}
!654 = metadata !{i32 786689, metadata !650, metadata !"edi", metadata !56, i32 16777836, metadata !408, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [edi] [line 620]
!655 = metadata !{i32 786689, metadata !650, metadata !"x", metadata !56, i32 33555052, metadata !405, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 620]
!656 = metadata !{i32 786689, metadata !650, metadata !"vec", metadata !56, i32 50332268, metadata !405, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 620]
!657 = metadata !{i32 786688, metadata !650, metadata !"i", metadata !56, i32 622, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 622]
!658 = metadata !{i32 786688, metadata !650, metadata !"j", metadata !56, i32 622, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 622]
!659 = metadata !{i32 786688, metadata !650, metadata !"proj", metadata !56, i32 623, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [proj] [line 623]
!660 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"calc_radius", metadata !"calc_radius", metadata !"", i32 632, metadata !661, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct.t_eigvec*)* @calc_radius, null, null, metadata !663, i32 633} ; [ DW_TAG_subprogram ] [line 632] [def] [scope 633] [calc_radius]
!661 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !662, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!662 = metadata !{metadata !167, metadata !543}
!663 = metadata !{metadata !664, metadata !665}
!664 = metadata !{i32 786689, metadata !660, metadata !"vec", metadata !56, i32 16777848, metadata !543, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 632]
!665 = metadata !{i32 786688, metadata !660, metadata !"i", metadata !56, i32 634, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 634]
!666 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"do_edsam", metadata !"do_edsam", metadata !"", i32 643, metadata !667, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_topology*, %struct.t_inputrec*, i32, %struct.t_mdatoms*, i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_edsamyn*, %struct.t_edpar*, i32)* @do_edsam, null, null, metadata !781, i32 647} ; [ DW_TAG_subprogram ] [line 643] [def] [scope 647] [do_edsam]
!667 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !668, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!668 = metadata !{null, metadata !86, metadata !140, metadata !669, metadata !59, metadata !375, metadata !59, metadata !59, metadata !405, metadata !405, metadata !405, metadata !405, metadata !407, metadata !71, metadata !408, metadata !59}
!669 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !670} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_inputrec]
!670 = metadata !{i32 786454, metadata !1, null, metadata !"t_inputrec", i32 143, i64 0, i64 0, i64 0, i32 0, metadata !671} ; [ DW_TAG_typedef ] [t_inputrec] [line 143, size 0, align 0, offset 0] [from ]
!671 = metadata !{i32 786451, metadata !672, null, metadata !"", i32 55, i64 4736, i64 64, i32 0, i32 0, null, metadata !673, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 55, size 4736, align 64, offset 0] [from ]
!672 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/inputrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!673 = metadata !{metadata !674, metadata !675, metadata !676, metadata !677, metadata !678, metadata !679, metadata !680, metadata !681, metadata !682, metadata !683, metadata !684, metadata !685, metadata !686, metadata !687, metadata !688, metadata !689, metadata !690, metadata !691, metadata !692, metadata !693, metadata !694, metadata !695, metadata !696, metadata !697, metadata !698, metadata !699, metadata !700, metadata !701, metadata !702, metadata !703, metadata !704, metadata !705, metadata !707, metadata !708, metadata !709, metadata !710, metadata !711, metadata !712, metadata !713, metadata !714, metadata !715, metadata !716, metadata !717, metadata !718, metadata !719, metadata !720, metadata !721, metadata !722, metadata !723, metadata !724, metadata !725, metadata !726, metadata !727, metadata !728, metadata !729, metadata !730, metadata !731, metadata !732, metadata !733, metadata !734, metadata !735, metadata !736, metadata !737, metadata !738, metadata !739, metadata !740, metadata !741, metadata !742, metadata !743, metadata !744, metadata !745, metadata !746, metadata !747, metadata !748, metadata !749, metadata !750, metadata !751, metadata !752, metadata !753, metadata !754, metadata !755, metadata !772, metadata !780}
!674 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"eI", i32 56, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [eI] [line 56, size 32, align 32, offset 0] [from int]
!675 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"nsteps", i32 57, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [nsteps] [line 57, size 32, align 32, offset 32] [from int]
!676 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"ns_type", i32 58, i64 32, i64 32, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [ns_type] [line 58, size 32, align 32, offset 64] [from int]
!677 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"nstlist", i32 59, i64 32, i64 32, i64 96, i32 0, metadata !59} ; [ DW_TAG_member ] [nstlist] [line 59, size 32, align 32, offset 96] [from int]
!678 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"ndelta", i32 60, i64 32, i64 32, i64 128, i32 0, metadata !59} ; [ DW_TAG_member ] [ndelta] [line 60, size 32, align 32, offset 128] [from int]
!679 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"bDomDecomp", i32 61, i64 32, i64 32, i64 160, i32 0, metadata !59} ; [ DW_TAG_member ] [bDomDecomp] [line 61, size 32, align 32, offset 160] [from int]
!680 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"decomp_dir", i32 62, i64 32, i64 32, i64 192, i32 0, metadata !59} ; [ DW_TAG_member ] [decomp_dir] [line 62, size 32, align 32, offset 192] [from int]
!681 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"nstcomm", i32 63, i64 32, i64 32, i64 224, i32 0, metadata !59} ; [ DW_TAG_member ] [nstcomm] [line 63, size 32, align 32, offset 224] [from int]
!682 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"nstlog", i32 65, i64 32, i64 32, i64 256, i32 0, metadata !59} ; [ DW_TAG_member ] [nstlog] [line 65, size 32, align 32, offset 256] [from int]
!683 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"nstxout", i32 66, i64 32, i64 32, i64 288, i32 0, metadata !59} ; [ DW_TAG_member ] [nstxout] [line 66, size 32, align 32, offset 288] [from int]
!684 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"nstvout", i32 67, i64 32, i64 32, i64 320, i32 0, metadata !59} ; [ DW_TAG_member ] [nstvout] [line 67, size 32, align 32, offset 320] [from int]
!685 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"nstfout", i32 68, i64 32, i64 32, i64 352, i32 0, metadata !59} ; [ DW_TAG_member ] [nstfout] [line 68, size 32, align 32, offset 352] [from int]
!686 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"nstenergy", i32 69, i64 32, i64 32, i64 384, i32 0, metadata !59} ; [ DW_TAG_member ] [nstenergy] [line 69, size 32, align 32, offset 384] [from int]
!687 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"nstxtcout", i32 70, i64 32, i64 32, i64 416, i32 0, metadata !59} ; [ DW_TAG_member ] [nstxtcout] [line 70, size 32, align 32, offset 416] [from int]
!688 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"init_t", i32 71, i64 32, i64 32, i64 448, i32 0, metadata !167} ; [ DW_TAG_member ] [init_t] [line 71, size 32, align 32, offset 448] [from real]
!689 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"delta_t", i32 72, i64 32, i64 32, i64 480, i32 0, metadata !167} ; [ DW_TAG_member ] [delta_t] [line 72, size 32, align 32, offset 480] [from real]
!690 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"xtcprec", i32 73, i64 32, i64 32, i64 512, i32 0, metadata !167} ; [ DW_TAG_member ] [xtcprec] [line 73, size 32, align 32, offset 512] [from real]
!691 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"nkx", i32 74, i64 32, i64 32, i64 544, i32 0, metadata !59} ; [ DW_TAG_member ] [nkx] [line 74, size 32, align 32, offset 544] [from int]
!692 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"nky", i32 74, i64 32, i64 32, i64 576, i32 0, metadata !59} ; [ DW_TAG_member ] [nky] [line 74, size 32, align 32, offset 576] [from int]
!693 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"nkz", i32 74, i64 32, i64 32, i64 608, i32 0, metadata !59} ; [ DW_TAG_member ] [nkz] [line 74, size 32, align 32, offset 608] [from int]
!694 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"pme_order", i32 76, i64 32, i64 32, i64 640, i32 0, metadata !59} ; [ DW_TAG_member ] [pme_order] [line 76, size 32, align 32, offset 640] [from int]
!695 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"ewald_rtol", i32 77, i64 32, i64 32, i64 672, i32 0, metadata !167} ; [ DW_TAG_member ] [ewald_rtol] [line 77, size 32, align 32, offset 672] [from real]
!696 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"ewald_geometry", i32 79, i64 32, i64 32, i64 704, i32 0, metadata !59} ; [ DW_TAG_member ] [ewald_geometry] [line 79, size 32, align 32, offset 704] [from int]
!697 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"epsilon_surface", i32 80, i64 32, i64 32, i64 736, i32 0, metadata !59} ; [ DW_TAG_member ] [epsilon_surface] [line 80, size 32, align 32, offset 736] [from int]
!698 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"bOptFFT", i32 81, i64 32, i64 32, i64 768, i32 0, metadata !59} ; [ DW_TAG_member ] [bOptFFT] [line 81, size 32, align 32, offset 768] [from int]
!699 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"ePBC", i32 82, i64 32, i64 32, i64 800, i32 0, metadata !59} ; [ DW_TAG_member ] [ePBC] [line 82, size 32, align 32, offset 800] [from int]
!700 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"bUncStart", i32 83, i64 32, i64 32, i64 832, i32 0, metadata !59} ; [ DW_TAG_member ] [bUncStart] [line 83, size 32, align 32, offset 832] [from int]
!701 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"etc", i32 84, i64 32, i64 32, i64 864, i32 0, metadata !59} ; [ DW_TAG_member ] [etc] [line 84, size 32, align 32, offset 864] [from int]
!702 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"epc", i32 85, i64 32, i64 32, i64 896, i32 0, metadata !59} ; [ DW_TAG_member ] [epc] [line 85, size 32, align 32, offset 896] [from int]
!703 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"epct", i32 86, i64 32, i64 32, i64 928, i32 0, metadata !59} ; [ DW_TAG_member ] [epct] [line 86, size 32, align 32, offset 928] [from int]
!704 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"tau_p", i32 87, i64 32, i64 32, i64 960, i32 0, metadata !167} ; [ DW_TAG_member ] [tau_p] [line 87, size 32, align 32, offset 960] [from real]
!705 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"ref_p", i32 88, i64 288, i64 32, i64 992, i32 0, metadata !706} ; [ DW_TAG_member ] [ref_p] [line 88, size 288, align 32, offset 992] [from tensor]
!706 = metadata !{i32 786454, metadata !672, null, metadata !"tensor", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !428} ; [ DW_TAG_typedef ] [tensor] [line 105, size 0, align 0, offset 0] [from ]
!707 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"compress", i32 89, i64 288, i64 32, i64 1280, i32 0, metadata !706} ; [ DW_TAG_member ] [compress] [line 89, size 288, align 32, offset 1280] [from tensor]
!708 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"bSimAnn", i32 90, i64 32, i64 32, i64 1568, i32 0, metadata !59} ; [ DW_TAG_member ] [bSimAnn] [line 90, size 32, align 32, offset 1568] [from int]
!709 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"zero_temp_time", i32 91, i64 32, i64 32, i64 1600, i32 0, metadata !167} ; [ DW_TAG_member ] [zero_temp_time] [line 91, size 32, align 32, offset 1600] [from real]
!710 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"rlist", i32 92, i64 32, i64 32, i64 1632, i32 0, metadata !167} ; [ DW_TAG_member ] [rlist] [line 92, size 32, align 32, offset 1632] [from real]
!711 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"coulombtype", i32 93, i64 32, i64 32, i64 1664, i32 0, metadata !59} ; [ DW_TAG_member ] [coulombtype] [line 93, size 32, align 32, offset 1664] [from int]
!712 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"rcoulomb_switch", i32 94, i64 32, i64 32, i64 1696, i32 0, metadata !167} ; [ DW_TAG_member ] [rcoulomb_switch] [line 94, size 32, align 32, offset 1696] [from real]
!713 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"rcoulomb", i32 95, i64 32, i64 32, i64 1728, i32 0, metadata !167} ; [ DW_TAG_member ] [rcoulomb] [line 95, size 32, align 32, offset 1728] [from real]
!714 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"vdwtype", i32 96, i64 32, i64 32, i64 1760, i32 0, metadata !59} ; [ DW_TAG_member ] [vdwtype] [line 96, size 32, align 32, offset 1760] [from int]
!715 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"rvdw_switch", i32 97, i64 32, i64 32, i64 1792, i32 0, metadata !167} ; [ DW_TAG_member ] [rvdw_switch] [line 97, size 32, align 32, offset 1792] [from real]
!716 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"rvdw", i32 98, i64 32, i64 32, i64 1824, i32 0, metadata !167} ; [ DW_TAG_member ] [rvdw] [line 98, size 32, align 32, offset 1824] [from real]
!717 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"epsilon_r", i32 99, i64 32, i64 32, i64 1856, i32 0, metadata !167} ; [ DW_TAG_member ] [epsilon_r] [line 99, size 32, align 32, offset 1856] [from real]
!718 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"eDispCorr", i32 100, i64 32, i64 32, i64 1888, i32 0, metadata !59} ; [ DW_TAG_member ] [eDispCorr] [line 100, size 32, align 32, offset 1888] [from int]
!719 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"shake_tol", i32 101, i64 32, i64 32, i64 1920, i32 0, metadata !167} ; [ DW_TAG_member ] [shake_tol] [line 101, size 32, align 32, offset 1920] [from real]
!720 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"fudgeQQ", i32 102, i64 32, i64 32, i64 1952, i32 0, metadata !167} ; [ DW_TAG_member ] [fudgeQQ] [line 102, size 32, align 32, offset 1952] [from real]
!721 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"efep", i32 103, i64 32, i64 32, i64 1984, i32 0, metadata !59} ; [ DW_TAG_member ] [efep] [line 103, size 32, align 32, offset 1984] [from int]
!722 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"init_lambda", i32 104, i64 32, i64 32, i64 2016, i32 0, metadata !167} ; [ DW_TAG_member ] [init_lambda] [line 104, size 32, align 32, offset 2016] [from real]
!723 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"delta_lambda", i32 105, i64 32, i64 32, i64 2048, i32 0, metadata !167} ; [ DW_TAG_member ] [delta_lambda] [line 105, size 32, align 32, offset 2048] [from real]
!724 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"sc_alpha", i32 106, i64 32, i64 32, i64 2080, i32 0, metadata !167} ; [ DW_TAG_member ] [sc_alpha] [line 106, size 32, align 32, offset 2080] [from real]
!725 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"sc_sigma", i32 107, i64 32, i64 32, i64 2112, i32 0, metadata !167} ; [ DW_TAG_member ] [sc_sigma] [line 107, size 32, align 32, offset 2112] [from real]
!726 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"dr_fc", i32 108, i64 32, i64 32, i64 2144, i32 0, metadata !167} ; [ DW_TAG_member ] [dr_fc] [line 108, size 32, align 32, offset 2144] [from real]
!727 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"eDisreWeighting", i32 109, i64 32, i64 32, i64 2176, i32 0, metadata !59} ; [ DW_TAG_member ] [eDisreWeighting] [line 109, size 32, align 32, offset 2176] [from int]
!728 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"bDisreMixed", i32 110, i64 32, i64 32, i64 2208, i32 0, metadata !59} ; [ DW_TAG_member ] [bDisreMixed] [line 110, size 32, align 32, offset 2208] [from int]
!729 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"nstdisreout", i32 111, i64 32, i64 32, i64 2240, i32 0, metadata !59} ; [ DW_TAG_member ] [nstdisreout] [line 111, size 32, align 32, offset 2240] [from int]
!730 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"dr_tau", i32 112, i64 32, i64 32, i64 2272, i32 0, metadata !167} ; [ DW_TAG_member ] [dr_tau] [line 112, size 32, align 32, offset 2272] [from real]
!731 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"orires_fc", i32 113, i64 32, i64 32, i64 2304, i32 0, metadata !167} ; [ DW_TAG_member ] [orires_fc] [line 113, size 32, align 32, offset 2304] [from real]
!732 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"orires_tau", i32 114, i64 32, i64 32, i64 2336, i32 0, metadata !167} ; [ DW_TAG_member ] [orires_tau] [line 114, size 32, align 32, offset 2336] [from real]
!733 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"nstorireout", i32 115, i64 32, i64 32, i64 2368, i32 0, metadata !59} ; [ DW_TAG_member ] [nstorireout] [line 115, size 32, align 32, offset 2368] [from int]
!734 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"em_stepsize", i32 116, i64 32, i64 32, i64 2400, i32 0, metadata !167} ; [ DW_TAG_member ] [em_stepsize] [line 116, size 32, align 32, offset 2400] [from real]
!735 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"em_tol", i32 117, i64 32, i64 32, i64 2432, i32 0, metadata !167} ; [ DW_TAG_member ] [em_tol] [line 117, size 32, align 32, offset 2432] [from real]
!736 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"niter", i32 118, i64 32, i64 32, i64 2464, i32 0, metadata !59} ; [ DW_TAG_member ] [niter] [line 118, size 32, align 32, offset 2464] [from int]
!737 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"fc_stepsize", i32 120, i64 32, i64 32, i64 2496, i32 0, metadata !59} ; [ DW_TAG_member ] [fc_stepsize] [line 120, size 32, align 32, offset 2496] [from int]
!738 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"nstcgsteep", i32 122, i64 32, i64 32, i64 2528, i32 0, metadata !59} ; [ DW_TAG_member ] [nstcgsteep] [line 122, size 32, align 32, offset 2528] [from int]
!739 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"eConstrAlg", i32 124, i64 32, i64 32, i64 2560, i32 0, metadata !59} ; [ DW_TAG_member ] [eConstrAlg] [line 124, size 32, align 32, offset 2560] [from int]
!740 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"nProjOrder", i32 125, i64 32, i64 32, i64 2592, i32 0, metadata !59} ; [ DW_TAG_member ] [nProjOrder] [line 125, size 32, align 32, offset 2592] [from int]
!741 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"LincsWarnAngle", i32 126, i64 32, i64 32, i64 2624, i32 0, metadata !167} ; [ DW_TAG_member ] [LincsWarnAngle] [line 126, size 32, align 32, offset 2624] [from real]
!742 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"bShakeSOR", i32 127, i64 32, i64 32, i64 2656, i32 0, metadata !59} ; [ DW_TAG_member ] [bShakeSOR] [line 127, size 32, align 32, offset 2656] [from int]
!743 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"bd_temp", i32 128, i64 32, i64 32, i64 2688, i32 0, metadata !167} ; [ DW_TAG_member ] [bd_temp] [line 128, size 32, align 32, offset 2688] [from real]
!744 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"bd_fric", i32 129, i64 32, i64 32, i64 2720, i32 0, metadata !167} ; [ DW_TAG_member ] [bd_fric] [line 129, size 32, align 32, offset 2720] [from real]
!745 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"ld_seed", i32 130, i64 32, i64 32, i64 2752, i32 0, metadata !59} ; [ DW_TAG_member ] [ld_seed] [line 130, size 32, align 32, offset 2752] [from int]
!746 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"cos_accel", i32 131, i64 32, i64 32, i64 2784, i32 0, metadata !167} ; [ DW_TAG_member ] [cos_accel] [line 131, size 32, align 32, offset 2784] [from real]
!747 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"userint1", i32 132, i64 32, i64 32, i64 2816, i32 0, metadata !59} ; [ DW_TAG_member ] [userint1] [line 132, size 32, align 32, offset 2816] [from int]
!748 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"userint2", i32 133, i64 32, i64 32, i64 2848, i32 0, metadata !59} ; [ DW_TAG_member ] [userint2] [line 133, size 32, align 32, offset 2848] [from int]
!749 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"userint3", i32 134, i64 32, i64 32, i64 2880, i32 0, metadata !59} ; [ DW_TAG_member ] [userint3] [line 134, size 32, align 32, offset 2880] [from int]
!750 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"userint4", i32 135, i64 32, i64 32, i64 2912, i32 0, metadata !59} ; [ DW_TAG_member ] [userint4] [line 135, size 32, align 32, offset 2912] [from int]
!751 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"userreal1", i32 136, i64 32, i64 32, i64 2944, i32 0, metadata !167} ; [ DW_TAG_member ] [userreal1] [line 136, size 32, align 32, offset 2944] [from real]
!752 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"userreal2", i32 137, i64 32, i64 32, i64 2976, i32 0, metadata !167} ; [ DW_TAG_member ] [userreal2] [line 137, size 32, align 32, offset 2976] [from real]
!753 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"userreal3", i32 138, i64 32, i64 32, i64 3008, i32 0, metadata !167} ; [ DW_TAG_member ] [userreal3] [line 138, size 32, align 32, offset 3008] [from real]
!754 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"userreal4", i32 139, i64 32, i64 32, i64 3040, i32 0, metadata !167} ; [ DW_TAG_member ] [userreal4] [line 139, size 32, align 32, offset 3040] [from real]
!755 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"opts", i32 140, i64 512, i64 64, i64 3072, i32 0, metadata !756} ; [ DW_TAG_member ] [opts] [line 140, size 512, align 64, offset 3072] [from t_grpopts]
!756 = metadata !{i32 786454, metadata !672, null, metadata !"t_grpopts", i32 53, i64 0, i64 0, i64 0, i32 0, metadata !757} ; [ DW_TAG_typedef ] [t_grpopts] [line 53, size 0, align 0, offset 0] [from ]
!757 = metadata !{i32 786451, metadata !672, null, metadata !"", i32 42, i64 512, i64 64, i32 0, i32 0, null, metadata !758, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 42, size 512, align 64, offset 0] [from ]
!758 = metadata !{metadata !759, metadata !760, metadata !761, metadata !762, metadata !763, metadata !764, metadata !765, metadata !766, metadata !767, metadata !771}
!759 = metadata !{i32 786445, metadata !672, metadata !757, metadata !"ngtc", i32 43, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [ngtc] [line 43, size 32, align 32, offset 0] [from int]
!760 = metadata !{i32 786445, metadata !672, metadata !757, metadata !"ngacc", i32 44, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [ngacc] [line 44, size 32, align 32, offset 32] [from int]
!761 = metadata !{i32 786445, metadata !672, metadata !757, metadata !"ngfrz", i32 45, i64 32, i64 32, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [ngfrz] [line 45, size 32, align 32, offset 64] [from int]
!762 = metadata !{i32 786445, metadata !672, metadata !757, metadata !"ngener", i32 46, i64 32, i64 32, i64 96, i32 0, metadata !59} ; [ DW_TAG_member ] [ngener] [line 46, size 32, align 32, offset 96] [from int]
!763 = metadata !{i32 786445, metadata !672, metadata !757, metadata !"nrdf", i32 47, i64 64, i64 64, i64 128, i32 0, metadata !383} ; [ DW_TAG_member ] [nrdf] [line 47, size 64, align 64, offset 128] [from ]
!764 = metadata !{i32 786445, metadata !672, metadata !757, metadata !"ref_t", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !383} ; [ DW_TAG_member ] [ref_t] [line 48, size 64, align 64, offset 192] [from ]
!765 = metadata !{i32 786445, metadata !672, metadata !757, metadata !"tau_t", i32 49, i64 64, i64 64, i64 256, i32 0, metadata !383} ; [ DW_TAG_member ] [tau_t] [line 49, size 64, align 64, offset 256] [from ]
!766 = metadata !{i32 786445, metadata !672, metadata !757, metadata !"acc", i32 50, i64 64, i64 64, i64 320, i32 0, metadata !405} ; [ DW_TAG_member ] [acc] [line 50, size 64, align 64, offset 320] [from ]
!767 = metadata !{i32 786445, metadata !672, metadata !757, metadata !"nFreeze", i32 51, i64 64, i64 64, i64 384, i32 0, metadata !768} ; [ DW_TAG_member ] [nFreeze] [line 51, size 64, align 64, offset 384] [from ]
!768 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !769} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ivec]
!769 = metadata !{i32 786454, metadata !672, null, metadata !"ivec", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !770} ; [ DW_TAG_typedef ] [ivec] [line 107, size 0, align 0, offset 0] [from ]
!770 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !59, metadata !234, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!771 = metadata !{i32 786445, metadata !672, metadata !757, metadata !"eg_excl", i32 52, i64 64, i64 64, i64 448, i32 0, metadata !342} ; [ DW_TAG_member ] [eg_excl] [line 52, size 64, align 64, offset 448] [from ]
!772 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"ex", i32 141, i64 576, i64 64, i64 3584, i32 0, metadata !773} ; [ DW_TAG_member ] [ex] [line 141, size 576, align 64, offset 3584] [from ]
!773 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 576, i64 64, i32 0, i32 0, metadata !774, metadata !234, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 576, align 64, offset 0] [from t_cosines]
!774 = metadata !{i32 786454, metadata !672, null, metadata !"t_cosines", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !775} ; [ DW_TAG_typedef ] [t_cosines] [line 40, size 0, align 0, offset 0] [from ]
!775 = metadata !{i32 786451, metadata !672, null, metadata !"", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !776, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 64, offset 0] [from ]
!776 = metadata !{metadata !777, metadata !778, metadata !779}
!777 = metadata !{i32 786445, metadata !672, metadata !775, metadata !"n", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [n] [line 37, size 32, align 32, offset 0] [from int]
!778 = metadata !{i32 786445, metadata !672, metadata !775, metadata !"a", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !383} ; [ DW_TAG_member ] [a] [line 38, size 64, align 64, offset 64] [from ]
!779 = metadata !{i32 786445, metadata !672, metadata !775, metadata !"phi", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !383} ; [ DW_TAG_member ] [phi] [line 39, size 64, align 64, offset 128] [from ]
!780 = metadata !{i32 786445, metadata !672, metadata !671, metadata !"et", i32 142, i64 576, i64 64, i64 4160, i32 0, metadata !773} ; [ DW_TAG_member ] [et] [line 142, size 576, align 64, offset 4160] [from ]
!781 = metadata !{metadata !782, metadata !783, metadata !784, metadata !785, metadata !786, metadata !787, metadata !788, metadata !789, metadata !790, metadata !791, metadata !792, metadata !793, metadata !794, metadata !795, metadata !796, metadata !797, metadata !798, metadata !799, metadata !800, metadata !801, metadata !802, metadata !803, metadata !804, metadata !805, metadata !806, metadata !807, metadata !808, metadata !809, metadata !810, metadata !811}
!782 = metadata !{i32 786689, metadata !666, metadata !"log", metadata !56, i32 16777859, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 643]
!783 = metadata !{i32 786689, metadata !666, metadata !"top", metadata !56, i32 33555075, metadata !140, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [top] [line 643]
!784 = metadata !{i32 786689, metadata !666, metadata !"ir", metadata !56, i32 50332291, metadata !669, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ir] [line 643]
!785 = metadata !{i32 786689, metadata !666, metadata !"step", metadata !56, i32 67109507, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 643]
!786 = metadata !{i32 786689, metadata !666, metadata !"md", metadata !56, i32 83886724, metadata !375, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [md] [line 644]
!787 = metadata !{i32 786689, metadata !666, metadata !"start", metadata !56, i32 100663940, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 644]
!788 = metadata !{i32 786689, metadata !666, metadata !"homenr", metadata !56, i32 117441156, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [homenr] [line 644]
!789 = metadata !{i32 786689, metadata !666, metadata !"x", metadata !56, i32 134218373, metadata !405, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 645]
!790 = metadata !{i32 786689, metadata !666, metadata !"xold", metadata !56, i32 150995589, metadata !405, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xold] [line 645]
!791 = metadata !{i32 786689, metadata !666, metadata !"x_unc", metadata !56, i32 167772805, metadata !405, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x_unc] [line 645]
!792 = metadata !{i32 786689, metadata !666, metadata !"force", metadata !56, i32 184550021, metadata !405, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [force] [line 645]
!793 = metadata !{i32 786689, metadata !666, metadata !"box", metadata !56, i32 201327237, metadata !407, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 645]
!794 = metadata !{i32 786689, metadata !666, metadata !"edyn", metadata !56, i32 218104454, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [edyn] [line 646]
!795 = metadata !{i32 786689, metadata !666, metadata !"edi", metadata !56, i32 234881670, metadata !408, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [edi] [line 646]
!796 = metadata !{i32 786689, metadata !666, metadata !"bHave_force", metadata !56, i32 251658886, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bHave_force] [line 646]
!797 = metadata !{i32 786688, metadata !666, metadata !"i", metadata !56, i32 648, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 648]
!798 = metadata !{i32 786688, metadata !666, metadata !"j", metadata !56, i32 648, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 648]
!799 = metadata !{i32 786688, metadata !666, metadata !"ned", metadata !56, i32 648, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ned] [line 648]
!800 = metadata !{i32 786688, metadata !666, metadata !"edstep", metadata !56, i32 648, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [edstep] [line 648]
!801 = metadata !{i32 786688, metadata !666, metadata !"iupdate", metadata !56, i32 648, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iupdate] [line 648]
!802 = metadata !{i32 786688, metadata !666, metadata !"transvec", metadata !56, i32 649, metadata !405, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [transvec] [line 649]
!803 = metadata !{i32 786688, metadata !666, metadata !"vdum", metadata !56, i32 649, metadata !405, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vdum] [line 649]
!804 = metadata !{i32 786688, metadata !666, metadata !"fdum", metadata !56, i32 649, metadata !405, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fdum] [line 649]
!805 = metadata !{i32 786688, metadata !666, metadata !"rotmat", metadata !56, i32 650, metadata !427, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rotmat] [line 650]
!806 = metadata !{i32 786688, metadata !666, metadata !"rmsd", metadata !56, i32 651, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rmsd] [line 651]
!807 = metadata !{i32 786688, metadata !666, metadata !"mas", metadata !56, i32 651, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mas] [line 651]
!808 = metadata !{i32 786688, metadata !666, metadata !"rad", metadata !56, i32 651, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rad] [line 651]
!809 = metadata !{i32 786688, metadata !666, metadata !"dt", metadata !56, i32 654, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dt] [line 654]
!810 = metadata !{i32 786688, metadata !666, metadata !"dt_1", metadata !56, i32 655, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dt_1] [line 655]
!811 = metadata !{i32 786688, metadata !666, metadata !"dt_2", metadata !56, i32 656, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dt_2] [line 656]
!812 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"rmfit", metadata !"rmfit", metadata !"", i32 741, metadata !580, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, [3 x float]*, [3 x float]*, [3 x float]*)* @rmfit, null, null, metadata !813, i32 742} ; [ DW_TAG_subprogram ] [line 741] [def] [scope 742] [rmfit]
!813 = metadata !{metadata !814, metadata !815, metadata !816, metadata !817, metadata !818, metadata !819, metadata !820, metadata !821, metadata !822}
!814 = metadata !{i32 786689, metadata !812, metadata !"ned", metadata !56, i32 16777957, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ned] [line 741]
!815 = metadata !{i32 786689, metadata !812, metadata !"x", metadata !56, i32 33555173, metadata !405, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 741]
!816 = metadata !{i32 786689, metadata !812, metadata !"transvec", metadata !56, i32 50332389, metadata !405, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [transvec] [line 741]
!817 = metadata !{i32 786689, metadata !812, metadata !"rotmat", metadata !56, i32 67109605, metadata !407, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rotmat] [line 741]
!818 = metadata !{i32 786688, metadata !812, metadata !"i", metadata !56, i32 743, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 743]
!819 = metadata !{i32 786688, metadata !812, metadata !"j", metadata !56, i32 743, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 743]
!820 = metadata !{i32 786688, metadata !812, metadata !"k", metadata !56, i32 743, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 743]
!821 = metadata !{i32 786688, metadata !812, metadata !"r_inv", metadata !56, i32 744, metadata !427, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r_inv] [line 744]
!822 = metadata !{i32 786688, metadata !812, metadata !"xdum", metadata !56, i32 745, metadata !406, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xdum] [line 745]
!823 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"rotate_vec", metadata !"rotate_vec", metadata !"", i32 764, metadata !824, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, [3 x float]*, [3 x float]*)* @rotate_vec, null, null, metadata !826, i32 765} ; [ DW_TAG_subprogram ] [line 764] [def] [scope 765] [rotate_vec]
!824 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !825, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!825 = metadata !{null, metadata !59, metadata !405, metadata !407}
!826 = metadata !{metadata !827, metadata !828, metadata !829, metadata !830, metadata !831, metadata !832, metadata !833}
!827 = metadata !{i32 786689, metadata !823, metadata !"nr", metadata !56, i32 16777980, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nr] [line 764]
!828 = metadata !{i32 786689, metadata !823, metadata !"x", metadata !56, i32 33555196, metadata !405, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 764]
!829 = metadata !{i32 786689, metadata !823, metadata !"rotmat", metadata !56, i32 50332412, metadata !407, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rotmat] [line 764]
!830 = metadata !{i32 786688, metadata !823, metadata !"i", metadata !56, i32 766, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 766]
!831 = metadata !{i32 786688, metadata !823, metadata !"j", metadata !56, i32 766, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 766]
!832 = metadata !{i32 786688, metadata !823, metadata !"k", metadata !56, i32 766, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 766]
!833 = metadata !{i32 786688, metadata !823, metadata !"xdum", metadata !56, i32 767, metadata !406, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xdum] [line 767]
!834 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"ed_cons", metadata !"ed_cons", metadata !"", i32 781, metadata !835, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ([3 x float]*, %struct.t_edpar*, i32)* @ed_cons, null, null, metadata !837, i32 782} ; [ DW_TAG_subprogram ] [line 781] [def] [scope 782] [ed_cons]
!835 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !836, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!836 = metadata !{null, metadata !405, metadata !408, metadata !59}
!837 = metadata !{metadata !838, metadata !839, metadata !840, metadata !841}
!838 = metadata !{i32 786689, metadata !834, metadata !"x", metadata !56, i32 16777997, metadata !405, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 781]
!839 = metadata !{i32 786689, metadata !834, metadata !"edi", metadata !56, i32 33555213, metadata !408, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [edi] [line 781]
!840 = metadata !{i32 786689, metadata !834, metadata !"step", metadata !56, i32 50332429, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 781]
!841 = metadata !{i32 786688, metadata !834, metadata !"i", metadata !56, i32 783, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 783]
!842 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"do_linfix", metadata !"do_linfix", metadata !"", i32 801, metadata !835, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ([3 x float]*, %struct.t_edpar*, i32)* @do_linfix, null, null, metadata !843, i32 802} ; [ DW_TAG_subprogram ] [line 801] [def] [scope 802] [do_linfix]
!843 = metadata !{metadata !844, metadata !845, metadata !846, metadata !847, metadata !848, metadata !849, metadata !850, metadata !851}
!844 = metadata !{i32 786689, metadata !842, metadata !"x", metadata !56, i32 16778017, metadata !405, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 801]
!845 = metadata !{i32 786689, metadata !842, metadata !"edi", metadata !56, i32 33555233, metadata !408, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [edi] [line 801]
!846 = metadata !{i32 786689, metadata !842, metadata !"step", metadata !56, i32 50332449, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 801]
!847 = metadata !{i32 786688, metadata !842, metadata !"i", metadata !56, i32 803, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 803]
!848 = metadata !{i32 786688, metadata !842, metadata !"j", metadata !56, i32 803, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 803]
!849 = metadata !{i32 786688, metadata !842, metadata !"k", metadata !56, i32 803, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 803]
!850 = metadata !{i32 786688, metadata !842, metadata !"proj", metadata !56, i32 804, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [proj] [line 804]
!851 = metadata !{i32 786688, metadata !842, metadata !"add", metadata !56, i32 804, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [add] [line 804]
!852 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"do_linacc", metadata !"do_linacc", metadata !"", i32 821, metadata !853, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ([3 x float]*, %struct.t_edpar*)* @do_linacc, null, null, metadata !855, i32 822} ; [ DW_TAG_subprogram ] [line 821] [def] [scope 822] [do_linacc]
!853 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !854, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!854 = metadata !{null, metadata !405, metadata !408}
!855 = metadata !{metadata !856, metadata !857, metadata !858, metadata !859, metadata !860, metadata !861, metadata !862}
!856 = metadata !{i32 786689, metadata !852, metadata !"x", metadata !56, i32 16778037, metadata !405, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 821]
!857 = metadata !{i32 786689, metadata !852, metadata !"edi", metadata !56, i32 33555253, metadata !408, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [edi] [line 821]
!858 = metadata !{i32 786688, metadata !852, metadata !"i", metadata !56, i32 823, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 823]
!859 = metadata !{i32 786688, metadata !852, metadata !"j", metadata !56, i32 823, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 823]
!860 = metadata !{i32 786688, metadata !852, metadata !"k", metadata !56, i32 823, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 823]
!861 = metadata !{i32 786688, metadata !852, metadata !"proj", metadata !56, i32 824, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [proj] [line 824]
!862 = metadata !{i32 786688, metadata !852, metadata !"add", metadata !56, i32 824, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [add] [line 824]
!863 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"do_radfix", metadata !"do_radfix", metadata !"", i32 850, metadata !835, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ([3 x float]*, %struct.t_edpar*, i32)* @do_radfix, null, null, metadata !864, i32 851} ; [ DW_TAG_subprogram ] [line 850] [def] [scope 851] [do_radfix]
!864 = metadata !{metadata !865, metadata !866, metadata !867, metadata !868, metadata !869, metadata !870, metadata !871, metadata !872, metadata !873}
!865 = metadata !{i32 786689, metadata !863, metadata !"x", metadata !56, i32 16778066, metadata !405, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 850]
!866 = metadata !{i32 786689, metadata !863, metadata !"edi", metadata !56, i32 33555282, metadata !408, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [edi] [line 850]
!867 = metadata !{i32 786689, metadata !863, metadata !"step", metadata !56, i32 50332498, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 850]
!868 = metadata !{i32 786688, metadata !863, metadata !"i", metadata !56, i32 852, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 852]
!869 = metadata !{i32 786688, metadata !863, metadata !"j", metadata !56, i32 852, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 852]
!870 = metadata !{i32 786688, metadata !863, metadata !"k", metadata !56, i32 852, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 852]
!871 = metadata !{i32 786688, metadata !863, metadata !"proj", metadata !56, i32 853, metadata !383, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [proj] [line 853]
!872 = metadata !{i32 786688, metadata !863, metadata !"rad", metadata !56, i32 853, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rad] [line 853]
!873 = metadata !{i32 786688, metadata !863, metadata !"ratio", metadata !56, i32 853, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ratio] [line 853]
!874 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"do_radacc", metadata !"do_radacc", metadata !"", i32 879, metadata !853, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ([3 x float]*, %struct.t_edpar*)* @do_radacc, null, null, metadata !875, i32 880} ; [ DW_TAG_subprogram ] [line 879] [def] [scope 880] [do_radacc]
!875 = metadata !{metadata !876, metadata !877, metadata !878, metadata !879, metadata !880, metadata !881, metadata !882, metadata !883}
!876 = metadata !{i32 786689, metadata !874, metadata !"x", metadata !56, i32 16778095, metadata !405, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 879]
!877 = metadata !{i32 786689, metadata !874, metadata !"edi", metadata !56, i32 33555311, metadata !408, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [edi] [line 879]
!878 = metadata !{i32 786688, metadata !874, metadata !"i", metadata !56, i32 881, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 881]
!879 = metadata !{i32 786688, metadata !874, metadata !"j", metadata !56, i32 881, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 881]
!880 = metadata !{i32 786688, metadata !874, metadata !"k", metadata !56, i32 881, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 881]
!881 = metadata !{i32 786688, metadata !874, metadata !"proj", metadata !56, i32 882, metadata !383, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [proj] [line 882]
!882 = metadata !{i32 786688, metadata !874, metadata !"rad", metadata !56, i32 882, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rad] [line 882]
!883 = metadata !{i32 786688, metadata !874, metadata !"ratio", metadata !56, i32 882, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ratio] [line 882]
!884 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"do_radcon", metadata !"do_radcon", metadata !"", i32 916, metadata !853, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ([3 x float]*, %struct.t_edpar*)* @do_radcon, null, null, metadata !885, i32 917} ; [ DW_TAG_subprogram ] [line 916] [def] [scope 917] [do_radcon]
!885 = metadata !{metadata !886, metadata !887, metadata !888, metadata !889, metadata !890, metadata !891, metadata !892, metadata !893}
!886 = metadata !{i32 786689, metadata !884, metadata !"x", metadata !56, i32 16778132, metadata !405, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 916]
!887 = metadata !{i32 786689, metadata !884, metadata !"edi", metadata !56, i32 33555348, metadata !408, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [edi] [line 916]
!888 = metadata !{i32 786688, metadata !884, metadata !"i", metadata !56, i32 918, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 918]
!889 = metadata !{i32 786688, metadata !884, metadata !"j", metadata !56, i32 918, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 918]
!890 = metadata !{i32 786688, metadata !884, metadata !"k", metadata !56, i32 918, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 918]
!891 = metadata !{i32 786688, metadata !884, metadata !"proj", metadata !56, i32 919, metadata !383, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [proj] [line 919]
!892 = metadata !{i32 786688, metadata !884, metadata !"rad", metadata !56, i32 919, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rad] [line 919]
!893 = metadata !{i32 786688, metadata !884, metadata !"ratio", metadata !56, i32 919, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ratio] [line 919]
!894 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"write_edo", metadata !"write_edo", metadata !"", i32 951, metadata !895, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_edpar*, i32, float)* @write_edo, null, null, metadata !897, i32 952} ; [ DW_TAG_subprogram ] [line 951] [def] [scope 952] [write_edo]
!895 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !896, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!896 = metadata !{null, metadata !408, metadata !59, metadata !167}
!897 = metadata !{metadata !898, metadata !899, metadata !900}
!898 = metadata !{i32 786689, metadata !894, metadata !"edi", metadata !56, i32 16778167, metadata !408, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [edi] [line 951]
!899 = metadata !{i32 786689, metadata !894, metadata !"step", metadata !56, i32 33555383, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 951]
!900 = metadata !{i32 786689, metadata !894, metadata !"rmsd", metadata !56, i32 50332599, metadata !167, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rmsd] [line 951]
!901 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"write_proj", metadata !"write_proj", metadata !"", i32 960, metadata !902, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_edpar*, i8*)* @write_proj, null, null, metadata !904, i32 961} ; [ DW_TAG_subprogram ] [line 960] [def] [scope 961] [write_proj]
!902 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !903, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!903 = metadata !{null, metadata !86, metadata !408, metadata !66}
!904 = metadata !{metadata !905, metadata !906, metadata !907}
!905 = metadata !{i32 786689, metadata !901, metadata !"out", metadata !56, i32 16778176, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 960]
!906 = metadata !{i32 786689, metadata !901, metadata !"edi", metadata !56, i32 33555392, metadata !408, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [edi] [line 960]
!907 = metadata !{i32 786689, metadata !901, metadata !"mode", metadata !56, i32 50332608, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 960]
!908 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"do_write_proj", metadata !"do_write_proj", metadata !"", i32 970, metadata !909, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_eigvec*, i8*)* @do_write_proj, null, null, metadata !911, i32 971} ; [ DW_TAG_subprogram ] [line 970] [def] [scope 971] [do_write_proj]
!909 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !910, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!910 = metadata !{null, metadata !86, metadata !543, metadata !66}
!911 = metadata !{metadata !912, metadata !913, metadata !914, metadata !915}
!912 = metadata !{i32 786689, metadata !908, metadata !"out", metadata !56, i32 16778186, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 970]
!913 = metadata !{i32 786689, metadata !908, metadata !"vec", metadata !56, i32 33555402, metadata !543, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 970]
!914 = metadata !{i32 786689, metadata !908, metadata !"mode", metadata !56, i32 50332618, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 970]
!915 = metadata !{i32 786688, metadata !908, metadata !"i", metadata !56, i32 972, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 972]
!916 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"write_edidx", metadata !"write_edidx", metadata !"", i32 985, metadata !917, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_edpar*)* @write_edidx, null, null, metadata !919, i32 986} ; [ DW_TAG_subprogram ] [line 985] [def] [scope 986] [write_edidx]
!917 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !918, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!918 = metadata !{null, metadata !86, metadata !408}
!919 = metadata !{metadata !920, metadata !921, metadata !922}
!920 = metadata !{i32 786689, metadata !916, metadata !"out", metadata !56, i32 16778201, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 985]
!921 = metadata !{i32 786689, metadata !916, metadata !"edi", metadata !56, i32 33555417, metadata !408, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [edi] [line 985]
!922 = metadata !{i32 786688, metadata !916, metadata !"i", metadata !56, i32 987, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 987]
!923 = metadata !{i32 786478, metadata !924, metadata !925, metadata !"m_inv", metadata !"m_inv", metadata !"", i32 524, metadata !926, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !928, i32 525} ; [ DW_TAG_subprogram ] [line 524] [local] [def] [scope 525] [m_inv]
!924 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!925 = metadata !{i32 786473, metadata !924}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!926 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !927, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!927 = metadata !{null, metadata !407, metadata !407}
!928 = metadata !{metadata !929, metadata !930, metadata !931, metadata !934, metadata !935, metadata !936, metadata !937}
!929 = metadata !{i32 786689, metadata !923, metadata !"src", metadata !925, i32 16777740, metadata !407, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 524]
!930 = metadata !{i32 786689, metadata !923, metadata !"dest", metadata !925, i32 33554956, metadata !407, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dest] [line 524]
!931 = metadata !{i32 786688, metadata !932, metadata !"smallreal", metadata !925, i32 526, metadata !933, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [smallreal] [line 526]
!932 = metadata !{i32 786443, metadata !924, metadata !923} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!933 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !167} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from real]
!934 = metadata !{i32 786688, metadata !932, metadata !"largereal", metadata !925, i32 527, metadata !933, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [largereal] [line 527]
!935 = metadata !{i32 786688, metadata !932, metadata !"deter", metadata !925, i32 528, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [deter] [line 528]
!936 = metadata !{i32 786688, metadata !932, metadata !"c", metadata !925, i32 528, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 528]
!937 = metadata !{i32 786688, metadata !932, metadata !"fc", metadata !925, i32 528, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fc] [line 528]
!938 = metadata !{i32 786478, metadata !924, metadata !925, metadata !"rvec_inc", metadata !"rvec_inc", metadata !"", i32 231, metadata !939, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !941, i32 232} ; [ DW_TAG_subprogram ] [line 231] [local] [def] [scope 232] [rvec_inc]
!939 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !940, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!940 = metadata !{null, metadata !383, metadata !383}
!941 = metadata !{metadata !942, metadata !943, metadata !944, metadata !945, metadata !946}
!942 = metadata !{i32 786689, metadata !938, metadata !"a", metadata !925, i32 16777447, metadata !383, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 231]
!943 = metadata !{i32 786689, metadata !938, metadata !"b", metadata !925, i32 33554663, metadata !383, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 231]
!944 = metadata !{i32 786688, metadata !938, metadata !"x", metadata !925, i32 233, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 233]
!945 = metadata !{i32 786688, metadata !938, metadata !"y", metadata !925, i32 233, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 233]
!946 = metadata !{i32 786688, metadata !938, metadata !"z", metadata !925, i32 233, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 233]
!947 = metadata !{i32 786478, metadata !924, metadata !925, metadata !"rvec_dec", metadata !"rvec_dec", metadata !"", i32 257, metadata !939, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !948, i32 258} ; [ DW_TAG_subprogram ] [line 257] [local] [def] [scope 258] [rvec_dec]
!948 = metadata !{metadata !949, metadata !950, metadata !951, metadata !952, metadata !953}
!949 = metadata !{i32 786689, metadata !947, metadata !"a", metadata !925, i32 16777473, metadata !383, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 257]
!950 = metadata !{i32 786689, metadata !947, metadata !"b", metadata !925, i32 33554689, metadata !383, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 257]
!951 = metadata !{i32 786688, metadata !947, metadata !"x", metadata !925, i32 259, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 259]
!952 = metadata !{i32 786688, metadata !947, metadata !"y", metadata !925, i32 259, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 259]
!953 = metadata !{i32 786688, metadata !947, metadata !"z", metadata !925, i32 259, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 259]
!954 = metadata !{i32 786478, metadata !924, metadata !925, metadata !"det", metadata !"det", metadata !"", i32 478, metadata !955, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !957, i32 479} ; [ DW_TAG_subprogram ] [line 478] [local] [def] [scope 479] [det]
!955 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !956, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!956 = metadata !{metadata !167, metadata !407}
!957 = metadata !{metadata !958}
!958 = metadata !{i32 786689, metadata !954, metadata !"a", metadata !925, i32 16777694, metadata !407, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 478]
!959 = metadata !{i32 786478, metadata !924, metadata !925, metadata !"clear_mat", metadata !"clear_mat", metadata !"", i32 334, metadata !960, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !962, i32 335} ; [ DW_TAG_subprogram ] [line 334] [local] [def] [scope 335] [clear_mat]
!960 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !961, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!961 = metadata !{null, metadata !407}
!962 = metadata !{metadata !963, metadata !964}
!963 = metadata !{i32 786689, metadata !959, metadata !"a", metadata !925, i32 16777550, metadata !407, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 334]
!964 = metadata !{i32 786688, metadata !959, metadata !"nul", metadata !925, i32 336, metadata !933, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!965 = metadata !{i32 786478, metadata !924, metadata !925, metadata !"rvec_sub", metadata !"rvec_sub", metadata !"", i32 244, metadata !966, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !969, i32 245} ; [ DW_TAG_subprogram ] [line 244] [local] [def] [scope 245] [rvec_sub]
!966 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !967, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!967 = metadata !{null, metadata !968, metadata !968, metadata !383}
!968 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !933} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!969 = metadata !{metadata !970, metadata !971, metadata !972, metadata !973, metadata !974, metadata !975}
!970 = metadata !{i32 786689, metadata !965, metadata !"a", metadata !925, i32 16777460, metadata !968, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 244]
!971 = metadata !{i32 786689, metadata !965, metadata !"b", metadata !925, i32 33554676, metadata !968, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 244]
!972 = metadata !{i32 786689, metadata !965, metadata !"c", metadata !925, i32 50331892, metadata !383, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 244]
!973 = metadata !{i32 786688, metadata !965, metadata !"x", metadata !925, i32 246, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 246]
!974 = metadata !{i32 786688, metadata !965, metadata !"y", metadata !925, i32 246, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 246]
!975 = metadata !{i32 786688, metadata !965, metadata !"z", metadata !925, i32 246, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 246]
!976 = metadata !{i32 786478, metadata !924, metadata !925, metadata !"copy_rvec", metadata !"copy_rvec", metadata !"", i32 270, metadata !977, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !979, i32 271} ; [ DW_TAG_subprogram ] [line 270] [local] [def] [scope 271] [copy_rvec]
!977 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !978, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!978 = metadata !{null, metadata !968, metadata !383}
!979 = metadata !{metadata !980, metadata !981}
!980 = metadata !{i32 786689, metadata !976, metadata !"a", metadata !925, i32 16777486, metadata !968, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 270]
!981 = metadata !{i32 786689, metadata !976, metadata !"b", metadata !925, i32 33554702, metadata !383, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 270]
!982 = metadata !{metadata !983, metadata !984, metadata !985, metadata !986, metadata !987, metadata !987, metadata !987}
!983 = metadata !{i32 786484, i32 0, metadata !666, metadata !"oldrad", metadata !"oldrad", metadata !"", metadata !56, i32 652, metadata !167, i32 1, i32 1, float* @do_edsam.oldrad, null} ; [ DW_TAG_variable ] [oldrad] [line 652] [local] [def]
!984 = metadata !{i32 786484, i32 0, metadata !666, metadata !"bFirst", metadata !"bFirst", metadata !"", metadata !56, i32 653, metadata !59, i32 1, i32 1, null, null}
!985 = metadata !{i32 786484, i32 0, metadata !925, metadata !"smallreal", metadata !"smallreal", metadata !"smallreal", metadata !925, i32 526, metadata !933, i32 1, i32 1, float 0x3C32725DE0000000, null} ; [ DW_TAG_variable ] [smallreal] [line 526] [local] [def]
!986 = metadata !{i32 786484, i32 0, metadata !925, metadata !"largereal", metadata !"largereal", metadata !"largereal", metadata !925, i32 527, metadata !933, i32 1, i32 1, float 0x43ABC16D60000000, null} ; [ DW_TAG_variable ] [largereal] [line 527] [local] [def]
!987 = metadata !{i32 786484, i32 0, metadata !925, metadata !"nul", metadata !"nul", metadata !"nul", metadata !925, i32 336, metadata !933, i32 1, i32 1, float 0.000000e+00, null} ; [ DW_TAG_variable ] [nul] [line 336] [local] [def]
!988 = metadata !{i32 55, i32 0, metadata !55, null}
!989 = metadata !{i32 57, i32 0, metadata !55, null}
!990 = metadata !{metadata !"any pointer", metadata !991}
!991 = metadata !{metadata !"omnipotent char", metadata !992}
!992 = metadata !{metadata !"Simple C/C++ TBAA"}
!993 = metadata !{i32 58, i32 0, metadata !55, null} ; [ DW_TAG_imported_module ]
!994 = metadata !{metadata !"int", metadata !991}
!995 = metadata !{i32 59, i32 0, metadata !55, null}
!996 = metadata !{i32 60, i32 0, metadata !55, null}
!997 = metadata !{i32 61, i32 0, metadata !55, null}
!998 = metadata !{i32 63, i32 0, metadata !83, null}
!999 = metadata !{i32 64, i32 0, metadata !83, null}
!1000 = metadata !{i32 65, i32 0, metadata !83, null}
!1001 = metadata !{i32 66, i32 0, metadata !83, null}
!1002 = metadata !{i32 71, i32 0, metadata !83, null}
!1003 = metadata !{i32 73, i32 0, metadata !83, null}
!1004 = metadata !{i32 76, i32 0, metadata !83, null}
!1005 = metadata !{i32 81, i32 0, metadata !83, null}
!1006 = metadata !{i32 82, i32 0, metadata !83, null}
!1007 = metadata !{metadata !"float", metadata !991}
!1008 = metadata !{i32 83, i32 0, metadata !83, null}
!1009 = metadata !{i32 84, i32 0, metadata !1010, null}
!1010 = metadata !{i32 786443, metadata !1, metadata !83, i32 83, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1011 = metadata !{i32 85, i32 0, metadata !1010, null}
!1012 = metadata !{i32 86, i32 0, metadata !1010, null}
!1013 = metadata !{i32 87, i32 0, metadata !1010, null}
!1014 = metadata !{i32 88, i32 0, metadata !1015, null}
!1015 = metadata !{i32 786443, metadata !1, metadata !1010, i32 88, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1016 = metadata !{i32 89, i32 0, metadata !1017, null}
!1017 = metadata !{i32 786443, metadata !1, metadata !1015, i32 88, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1018 = metadata !{i32 90, i32 0, metadata !1017, null}
!1019 = metadata !{i32 91, i32 0, metadata !1017, null}
!1020 = metadata !{i32 92, i32 0, metadata !1017, null}
!1021 = metadata !{i32 96, i32 0, metadata !1022, null}
!1022 = metadata !{i32 786443, metadata !1, metadata !83, i32 95, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1023 = metadata !{i32 97, i32 0, metadata !1022, null}
!1024 = metadata !{i32 98, i32 0, metadata !1022, null}
!1025 = metadata !{i32 99, i32 0, metadata !1022, null}
!1026 = metadata !{i32 100, i32 0, metadata !1027, null}
!1027 = metadata !{i32 786443, metadata !1, metadata !1022, i32 100, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1028 = metadata !{i32 101, i32 0, metadata !1029, null}
!1029 = metadata !{i32 786443, metadata !1, metadata !1027, i32 100, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1030 = metadata !{i32 102, i32 0, metadata !1029, null}
!1031 = metadata !{i32 103, i32 0, metadata !1032, null}
!1032 = metadata !{i32 786443, metadata !1, metadata !1029, i32 103, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1033 = metadata !{i32 104, i32 0, metadata !1034, null}
!1034 = metadata !{i32 786443, metadata !1, metadata !1032, i32 103, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1035 = metadata !{i32 105, i32 0, metadata !1034, null}
!1036 = metadata !{i32 107, i32 0, metadata !1029, null}
!1037 = metadata !{i32 112, i32 0, metadata !83, null}
!1038 = metadata !{i32 113, i32 0, metadata !1039, null}
!1039 = metadata !{i32 786443, metadata !1, metadata !83, i32 113, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1040 = metadata !{i32 114, i32 0, metadata !1041, null}
!1041 = metadata !{i32 786443, metadata !1, metadata !1039, i32 113, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1042 = metadata !{i32 115, i32 0, metadata !1041, null}
!1043 = metadata !{i32 117, i32 0, metadata !83, null}
!1044 = metadata !{i32 118, i32 0, metadata !83, null}
!1045 = metadata !{i32 119, i32 0, metadata !1046, null}
!1046 = metadata !{i32 786443, metadata !1, metadata !83, i32 118, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1047 = metadata !{i32 120, i32 0, metadata !1046, null}
!1048 = metadata !{i32 121, i32 0, metadata !1049, null}
!1049 = metadata !{i32 786443, metadata !1, metadata !1046, i32 121, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1050 = metadata !{i32 122, i32 0, metadata !1051, null}
!1051 = metadata !{i32 786443, metadata !1, metadata !1049, i32 121, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1052 = metadata !{i32 126, i32 0, metadata !1053, null}
!1053 = metadata !{i32 786443, metadata !1, metadata !83, i32 125, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1054 = metadata !{i32 127, i32 0, metadata !1053, null}
!1055 = metadata !{i32 128, i32 0, metadata !1056, null}
!1056 = metadata !{i32 786443, metadata !1, metadata !1053, i32 128, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1057 = metadata !{i32 129, i32 0, metadata !1058, null}
!1058 = metadata !{i32 786443, metadata !1, metadata !1056, i32 128, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1059 = metadata !{i32 130, i32 0, metadata !1060, null}
!1060 = metadata !{i32 786443, metadata !1, metadata !1058, i32 129, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1061 = metadata !{i32 132, i32 0, metadata !1060, null}
!1062 = metadata !{i32 133, i32 0, metadata !1060, null}
!1063 = metadata !{i32 138, i32 0, metadata !83, null}
!1064 = metadata !{i32 142, i32 0, metadata !83, null}
!1065 = metadata !{i32 143, i32 0, metadata !83, null}
!1066 = metadata !{i32 144, i32 0, metadata !1067, null}
!1067 = metadata !{i32 786443, metadata !1, metadata !83, i32 144, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1068 = metadata !{i32 145, i32 0, metadata !1069, null}
!1069 = metadata !{i32 786443, metadata !1, metadata !1067, i32 144, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1070 = metadata !{i32 146, i32 0, metadata !1071, null}
!1071 = metadata !{i32 786443, metadata !1, metadata !1069, i32 145, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1072 = metadata !{i32 147, i32 0, metadata !1073, null}
!1073 = metadata !{i32 786443, metadata !1, metadata !1071, i32 146, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1074 = metadata !{i32 786689, metadata !976, metadata !"a", metadata !925, i32 16777486, metadata !968, i32 0, metadata !1072} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1075 = metadata !{i32 270, i32 0, metadata !976, metadata !1072}
!1076 = metadata !{i32 786689, metadata !976, metadata !"b", metadata !925, i32 33554702, metadata !383, i32 0, metadata !1072} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1077 = metadata !{i32 272, i32 0, metadata !976, metadata !1072}
!1078 = metadata !{i32 273, i32 0, metadata !976, metadata !1072}
!1079 = metadata !{i32 274, i32 0, metadata !976, metadata !1072}
!1080 = metadata !{i32 148, i32 0, metadata !1073, null}
!1081 = metadata !{i32 149, i32 0, metadata !1073, null}
!1082 = metadata !{i32 152, i32 0, metadata !83, null}
!1083 = metadata !{i32 154, i32 0, metadata !83, null}
!1084 = metadata !{i32 155, i32 0, metadata !83, null}
!1085 = metadata !{i32 156, i32 0, metadata !83, null}
!1086 = metadata !{i32 157, i32 0, metadata !1087, null}
!1087 = metadata !{i32 786443, metadata !1, metadata !83, i32 157, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1088 = metadata !{i32 158, i32 0, metadata !1087, null}
!1089 = metadata !{i32 786689, metadata !976, metadata !"a", metadata !925, i32 16777486, metadata !968, i32 0, metadata !1088} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1090 = metadata !{i32 270, i32 0, metadata !976, metadata !1088}
!1091 = metadata !{i32 786689, metadata !976, metadata !"b", metadata !925, i32 33554702, metadata !383, i32 0, metadata !1088} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1092 = metadata !{i32 272, i32 0, metadata !976, metadata !1088}
!1093 = metadata !{i32 273, i32 0, metadata !976, metadata !1088}
!1094 = metadata !{i32 274, i32 0, metadata !976, metadata !1088}
!1095 = metadata !{i32 159, i32 0, metadata !83, null}
!1096 = metadata !{i32 162, i32 0, metadata !83, null}
!1097 = metadata !{i32 163, i32 0, metadata !83, null}
!1098 = metadata !{i32 166, i32 0, metadata !83, null}
!1099 = metadata !{i32 167, i32 0, metadata !83, null}
!1100 = metadata !{i32 168, i32 0, metadata !83, null}
!1101 = metadata !{i32 169, i32 0, metadata !83, null}
!1102 = metadata !{i32 172, i32 0, metadata !83, null}
!1103 = metadata !{i32 173, i32 0, metadata !83, null}
!1104 = metadata !{i32 174, i32 0, metadata !83, null}
!1105 = metadata !{i32 177, i32 0, metadata !83, null}
!1106 = metadata !{i32 178, i32 0, metadata !1107, null}
!1107 = metadata !{i32 786443, metadata !1, metadata !83, i32 177, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1108 = metadata !{i32 179, i32 0, metadata !1107, null}
!1109 = metadata !{i32 180, i32 0, metadata !1107, null}
!1110 = metadata !{i32 183, i32 0, metadata !83, null}
!1111 = metadata !{i32 184, i32 0, metadata !1112, null}
!1112 = metadata !{i32 786443, metadata !1, metadata !83, i32 183, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1113 = metadata !{i32 185, i32 0, metadata !1112, null}
!1114 = metadata !{i32 186, i32 0, metadata !1112, null}
!1115 = metadata !{i32 187, i32 0, metadata !1112, null}
!1116 = metadata !{i32 189, i32 0, metadata !1117, null}
!1117 = metadata !{i32 786443, metadata !1, metadata !83, i32 188, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1118 = metadata !{i32 190, i32 0, metadata !1117, null}
!1119 = metadata !{i32 194, i32 0, metadata !83, null}
!1120 = metadata !{i32 195, i32 0, metadata !83, null}
!1121 = metadata !{i32 196, i32 0, metadata !83, null}
!1122 = metadata !{i32 199, i32 0, metadata !83, null}
!1123 = metadata !{i32 200, i32 0, metadata !83, null}
!1124 = metadata !{i32 201, i32 0, metadata !83, null}
!1125 = metadata !{i32 202, i32 0, metadata !83, null}
!1126 = metadata !{i32 205, i32 0, metadata !83, null}
!1127 = metadata !{i32 206, i32 0, metadata !83, null}
!1128 = metadata !{i32 207, i32 0, metadata !83, null}
!1129 = metadata !{i32 209, i32 0, metadata !482, null}
!1130 = metadata !{i32 666}
!1131 = metadata !{i32 212, i32 0, metadata !482, null}
!1132 = metadata !{i32 217, i32 0, metadata !482, null}
!1133 = metadata !{i32 220, i32 0, metadata !482, null}
!1134 = metadata !{i32 221, i32 0, metadata !482, null}
!1135 = metadata !{i32 222, i32 0, metadata !482, null}
!1136 = metadata !{i32 225, i32 0, metadata !482, null}
!1137 = metadata !{i32 226, i32 0, metadata !482, null}
!1138 = metadata !{i32 227, i32 0, metadata !482, null}
!1139 = metadata !{i32 231, i32 0, metadata !482, null}
!1140 = metadata !{i32 232, i32 0, metadata !482, null}
!1141 = metadata !{i32 233, i32 0, metadata !482, null}
!1142 = metadata !{i32 235, i32 0, metadata !482, null}
!1143 = metadata !{i32 236, i32 0, metadata !482, null}
!1144 = metadata !{i32 237, i32 0, metadata !482, null}
!1145 = metadata !{i32 238, i32 0, metadata !482, null}
!1146 = metadata !{i32 239, i32 0, metadata !482, null}
!1147 = metadata !{i32 242, i32 0, metadata !482, null}
!1148 = metadata !{i32 243, i32 0, metadata !482, null}
!1149 = metadata !{i32 244, i32 0, metadata !482, null}
!1150 = metadata !{i32 247, i32 0, metadata !482, null}
!1151 = metadata !{i32 248, i32 0, metadata !482, null}
!1152 = metadata !{i32 249, i32 0, metadata !482, null}
!1153 = metadata !{i32 250, i32 0, metadata !482, null}
!1154 = metadata !{i32 253, i32 0, metadata !482, null}
!1155 = metadata !{i32 256, i32 0, metadata !482, null}
!1156 = metadata !{i32 259, i32 0, metadata !482, null}
!1157 = metadata !{i32 260, i32 0, metadata !482, null}
!1158 = metadata !{i32 261, i32 0, metadata !1159, null}
!1159 = metadata !{i32 786443, metadata !1, metadata !482, i32 260, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1160 = metadata !{i32 262, i32 0, metadata !1159, null}
!1161 = metadata !{i32 263, i32 0, metadata !1159, null}
!1162 = metadata !{i32 264, i32 0, metadata !1159, null}
!1163 = metadata !{i32 265, i32 0, metadata !1159, null}
!1164 = metadata !{i32 266, i32 0, metadata !1165, null}
!1165 = metadata !{i32 786443, metadata !1, metadata !1159, i32 266, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1166 = metadata !{i32 267, i32 0, metadata !1167, null}
!1167 = metadata !{i32 786443, metadata !1, metadata !1165, i32 266, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1168 = metadata !{i32 268, i32 0, metadata !1169, null}
!1169 = metadata !{i32 786443, metadata !1, metadata !1167, i32 267, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1170 = metadata !{i32 786689, metadata !976, metadata !"a", metadata !925, i32 16777486, metadata !968, i32 0, metadata !1168} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1171 = metadata !{i32 270, i32 0, metadata !976, metadata !1168}
!1172 = metadata !{i32 786689, metadata !976, metadata !"b", metadata !925, i32 33554702, metadata !383, i32 0, metadata !1168} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1173 = metadata !{i32 272, i32 0, metadata !976, metadata !1168}
!1174 = metadata !{i32 273, i32 0, metadata !976, metadata !1168}
!1175 = metadata !{i32 274, i32 0, metadata !976, metadata !1168}
!1176 = metadata !{i32 269, i32 0, metadata !1169, null}
!1177 = metadata !{i32 270, i32 0, metadata !1169, null}
!1178 = metadata !{i32 272, i32 0, metadata !1159, null}
!1179 = metadata !{i32 273, i32 0, metadata !1159, null}
!1180 = metadata !{i32 276, i32 0, metadata !482, null}
!1181 = metadata !{i32 277, i32 0, metadata !482, null}
!1182 = metadata !{i32 278, i32 0, metadata !1183, null}
!1183 = metadata !{i32 786443, metadata !1, metadata !482, i32 277, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1184 = metadata !{i32 279, i32 0, metadata !1183, null}
!1185 = metadata !{i32 280, i32 0, metadata !1183, null}
!1186 = metadata !{i32 281, i32 0, metadata !1183, null}
!1187 = metadata !{i32 282, i32 0, metadata !1183, null}
!1188 = metadata !{i32 283, i32 0, metadata !1189, null}
!1189 = metadata !{i32 786443, metadata !1, metadata !1183, i32 283, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1190 = metadata !{i32 284, i32 0, metadata !1191, null}
!1191 = metadata !{i32 786443, metadata !1, metadata !1189, i32 283, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1192 = metadata !{i32 285, i32 0, metadata !1193, null}
!1193 = metadata !{i32 786443, metadata !1, metadata !1191, i32 284, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1194 = metadata !{i32 786689, metadata !976, metadata !"a", metadata !925, i32 16777486, metadata !968, i32 0, metadata !1192} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1195 = metadata !{i32 270, i32 0, metadata !976, metadata !1192}
!1196 = metadata !{i32 786689, metadata !976, metadata !"b", metadata !925, i32 33554702, metadata !383, i32 0, metadata !1192} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1197 = metadata !{i32 272, i32 0, metadata !976, metadata !1192}
!1198 = metadata !{i32 273, i32 0, metadata !976, metadata !1192}
!1199 = metadata !{i32 274, i32 0, metadata !976, metadata !1192}
!1200 = metadata !{i32 286, i32 0, metadata !1193, null}
!1201 = metadata !{i32 287, i32 0, metadata !1193, null}
!1202 = metadata !{i32 289, i32 0, metadata !1183, null}
!1203 = metadata !{i32 290, i32 0, metadata !1183, null}
!1204 = metadata !{i32 293, i32 0, metadata !482, null}
!1205 = metadata !{i32 294, i32 0, metadata !482, null}
!1206 = metadata !{i32 531, i32 0, metadata !606, null}
!1207 = metadata !{i32 534, i32 0, metadata !606, null}
!1208 = metadata !{i32 537, i32 0, metadata !1209, null}
!1209 = metadata !{i32 786443, metadata !1, metadata !606, i32 537, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1210 = metadata !{i32 538, i32 0, metadata !1209, null}
!1211 = metadata !{i32 539, i32 0, metadata !1212, null}
!1212 = metadata !{i32 786443, metadata !1, metadata !606, i32 539, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1213 = metadata !{i32 541, i32 0, metadata !1214, null}
!1214 = metadata !{i32 786443, metadata !1, metadata !1215, i32 540, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1215 = metadata !{i32 786443, metadata !1, metadata !1212, i32 539, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1216 = metadata !{i32 540, i32 0, metadata !1214, null}
!1217 = metadata !{i32 548, i32 0, metadata !1218, null}
!1218 = metadata !{i32 786443, metadata !1, metadata !606, i32 548, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1219 = metadata !{i32 549, i32 0, metadata !1218, null}
!1220 = metadata !{i32 261, i32 0, metadata !947, metadata !1219}
!1221 = metadata !{i32 262, i32 0, metadata !947, metadata !1219}
!1222 = metadata !{i32 263, i32 0, metadata !947, metadata !1219}
!1223 = metadata !{i32 545, i32 0, metadata !1224, null}
!1224 = metadata !{i32 786443, metadata !1, metadata !606, i32 544, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1225 = metadata !{i32 544, i32 0, metadata !1224, null}
!1226 = metadata !{i32 786689, metadata !947, metadata !"a", metadata !925, i32 16777473, metadata !383, i32 0, metadata !1219} ; [ DW_TAG_arg_variable ] [a] [line 257]
!1227 = metadata !{i32 257, i32 0, metadata !947, metadata !1219}
!1228 = metadata !{i32 786689, metadata !947, metadata !"b", metadata !925, i32 33554689, metadata !383, i32 0, metadata !1219} ; [ DW_TAG_arg_variable ] [b] [line 257]
!1229 = metadata !{i32 786688, metadata !947, metadata !"x", metadata !925, i32 259, metadata !167, i32 0, metadata !1219} ; [ DW_TAG_auto_variable ] [x] [line 259]
!1230 = metadata !{i32 786688, metadata !947, metadata !"y", metadata !925, i32 259, metadata !167, i32 0, metadata !1219} ; [ DW_TAG_auto_variable ] [y] [line 259]
!1231 = metadata !{i32 786688, metadata !947, metadata !"z", metadata !925, i32 259, metadata !167, i32 0, metadata !1219} ; [ DW_TAG_auto_variable ] [z] [line 259]
!1232 = metadata !{i32 265, i32 0, metadata !947, metadata !1219}
!1233 = metadata !{i32 266, i32 0, metadata !947, metadata !1219}
!1234 = metadata !{i32 267, i32 0, metadata !947, metadata !1219}
!1235 = metadata !{i32 550, i32 0, metadata !606, null}
!1236 = metadata !{i32 394, i32 0, metadata !564, null}
!1237 = metadata !{i32 396, i32 0, metadata !564, null}
!1238 = metadata !{i32 400, i32 0, metadata !564, null}
!1239 = metadata !{i32 401, i32 0, metadata !1240, null}
!1240 = metadata !{i32 786443, metadata !1, metadata !564, i32 401, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1241 = metadata !{i32 402, i32 0, metadata !1240, null}
!1242 = metadata !{i32 786689, metadata !976, metadata !"a", metadata !925, i32 16777486, metadata !968, i32 0, metadata !1241} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1243 = metadata !{i32 270, i32 0, metadata !976, metadata !1241}
!1244 = metadata !{i32 786689, metadata !976, metadata !"b", metadata !925, i32 33554702, metadata !383, i32 0, metadata !1241} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1245 = metadata !{i32 272, i32 0, metadata !976, metadata !1241}
!1246 = metadata !{i32 273, i32 0, metadata !976, metadata !1241}
!1247 = metadata !{i32 274, i32 0, metadata !976, metadata !1241}
!1248 = metadata !{i32 405, i32 0, metadata !564, null}
!1249 = metadata !{i32 406, i32 0, metadata !1250, null}
!1250 = metadata !{i32 786443, metadata !1, metadata !564, i32 406, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1251 = metadata !{i32 407, i32 0, metadata !1250, null}
!1252 = metadata !{i32 786689, metadata !965, metadata !"a", metadata !925, i32 16777460, metadata !968, i32 0, metadata !1251} ; [ DW_TAG_arg_variable ] [a] [line 244]
!1253 = metadata !{i32 244, i32 0, metadata !965, metadata !1251}
!1254 = metadata !{i32 786689, metadata !965, metadata !"b", metadata !925, i32 33554676, metadata !968, i32 0, metadata !1251} ; [ DW_TAG_arg_variable ] [b] [line 244]
!1255 = metadata !{i32 786689, metadata !965, metadata !"c", metadata !925, i32 50331892, metadata !383, i32 0, metadata !1251} ; [ DW_TAG_arg_variable ] [c] [line 244]
!1256 = metadata !{i32 248, i32 0, metadata !965, metadata !1251}
!1257 = metadata !{i32 786688, metadata !965, metadata !"x", metadata !925, i32 246, metadata !167, i32 0, metadata !1251} ; [ DW_TAG_auto_variable ] [x] [line 246]
!1258 = metadata !{i32 249, i32 0, metadata !965, metadata !1251}
!1259 = metadata !{i32 786688, metadata !965, metadata !"y", metadata !925, i32 246, metadata !167, i32 0, metadata !1251} ; [ DW_TAG_auto_variable ] [y] [line 246]
!1260 = metadata !{i32 250, i32 0, metadata !965, metadata !1251}
!1261 = metadata !{i32 786688, metadata !965, metadata !"z", metadata !925, i32 246, metadata !167, i32 0, metadata !1251} ; [ DW_TAG_auto_variable ] [z] [line 246]
!1262 = metadata !{i32 252, i32 0, metadata !965, metadata !1251}
!1263 = metadata !{i32 253, i32 0, metadata !965, metadata !1251}
!1264 = metadata !{i32 254, i32 0, metadata !965, metadata !1251}
!1265 = metadata !{i32 408, i32 0, metadata !564, null}
!1266 = metadata !{i32 411, i32 0, metadata !564, null}
!1267 = metadata !{i32 412, i32 0, metadata !1268, null}
!1268 = metadata !{i32 786443, metadata !1, metadata !564, i32 412, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1269 = metadata !{i32 413, i32 0, metadata !1268, null}
!1270 = metadata !{i32 786689, metadata !976, metadata !"a", metadata !925, i32 16777486, metadata !968, i32 0, metadata !1269} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1271 = metadata !{i32 270, i32 0, metadata !976, metadata !1269}
!1272 = metadata !{i32 786689, metadata !976, metadata !"b", metadata !925, i32 33554702, metadata !383, i32 0, metadata !1269} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1273 = metadata !{i32 272, i32 0, metadata !976, metadata !1269}
!1274 = metadata !{i32 273, i32 0, metadata !976, metadata !1269}
!1275 = metadata !{i32 274, i32 0, metadata !976, metadata !1269}
!1276 = metadata !{i32 414, i32 0, metadata !564, null}
!1277 = metadata !{i32 415, i32 0, metadata !564, null}
!1278 = metadata !{i32 418, i32 0, metadata !1279, null}
!1279 = metadata !{i32 786443, metadata !1, metadata !564, i32 418, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1280 = metadata !{i32 420, i32 0, metadata !1281, null}
!1281 = metadata !{i32 786443, metadata !1, metadata !1282, i32 419, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1282 = metadata !{i32 786443, metadata !1, metadata !1279, i32 418, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1283 = metadata !{i32 421, i32 0, metadata !1284, null}
!1284 = metadata !{i32 786443, metadata !1, metadata !1282, i32 421, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1285 = metadata !{i32 430, i32 0, metadata !1286, null}
!1286 = metadata !{i32 786443, metadata !1, metadata !564, i32 430, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1287 = metadata !{i32 432, i32 0, metadata !1288, null}
!1288 = metadata !{i32 786443, metadata !1, metadata !1289, i32 431, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1289 = metadata !{i32 786443, metadata !1, metadata !1286, i32 430, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1290 = metadata !{i32 422, i32 0, metadata !1291, null}
!1291 = metadata !{i32 786443, metadata !1, metadata !1284, i32 421, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1292 = metadata !{i32 423, i32 0, metadata !1293, null}
!1293 = metadata !{i32 786443, metadata !1, metadata !1291, i32 423, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1294 = metadata !{i32 424, i32 0, metadata !1293, null}
!1295 = metadata !{i32 431, i32 0, metadata !1288, null}
!1296 = metadata !{i32 434, i32 0, metadata !564, null}
!1297 = metadata !{i32 435, i32 0, metadata !564, null}
!1298 = metadata !{i32 437, i32 0, metadata !564, null}
!1299 = metadata !{i32 552, i32 0, metadata !619, null}
!1300 = metadata !{i32 557, i32 0, metadata !619, null}
!1301 = metadata !{i32 558, i32 0, metadata !1302, null}
!1302 = metadata !{i32 786443, metadata !1, metadata !1303, i32 558, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1303 = metadata !{i32 786443, metadata !1, metadata !619, i32 557, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1304 = metadata !{i32 559, i32 0, metadata !1302, null}
!1305 = metadata !{i32 786689, metadata !947, metadata !"a", metadata !925, i32 16777473, metadata !383, i32 0, metadata !1304} ; [ DW_TAG_arg_variable ] [a] [line 257]
!1306 = metadata !{i32 257, i32 0, metadata !947, metadata !1304}
!1307 = metadata !{i32 786689, metadata !947, metadata !"b", metadata !925, i32 33554689, metadata !383, i32 0, metadata !1304} ; [ DW_TAG_arg_variable ] [b] [line 257]
!1308 = metadata !{i32 261, i32 0, metadata !947, metadata !1304}
!1309 = metadata !{i32 786688, metadata !947, metadata !"x", metadata !925, i32 259, metadata !167, i32 0, metadata !1304} ; [ DW_TAG_auto_variable ] [x] [line 259]
!1310 = metadata !{i32 262, i32 0, metadata !947, metadata !1304}
!1311 = metadata !{i32 786688, metadata !947, metadata !"y", metadata !925, i32 259, metadata !167, i32 0, metadata !1304} ; [ DW_TAG_auto_variable ] [y] [line 259]
!1312 = metadata !{i32 263, i32 0, metadata !947, metadata !1304}
!1313 = metadata !{i32 786688, metadata !947, metadata !"z", metadata !925, i32 259, metadata !167, i32 0, metadata !1304} ; [ DW_TAG_auto_variable ] [z] [line 259]
!1314 = metadata !{i32 265, i32 0, metadata !947, metadata !1304}
!1315 = metadata !{i32 266, i32 0, metadata !947, metadata !1304}
!1316 = metadata !{i32 267, i32 0, metadata !947, metadata !1304}
!1317 = metadata !{i32 563, i32 0, metadata !619, null}
!1318 = metadata !{i32 564, i32 0, metadata !619, null}
!1319 = metadata !{i32 565, i32 0, metadata !619, null}
!1320 = metadata !{i32 566, i32 0, metadata !619, null}
!1321 = metadata !{i32 567, i32 0, metadata !619, null}
!1322 = metadata !{i32 568, i32 0, metadata !619, null}
!1323 = metadata !{i32 571, i32 0, metadata !619, null}
!1324 = metadata !{i32 572, i32 0, metadata !1325, null}
!1325 = metadata !{i32 786443, metadata !1, metadata !1326, i32 572, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1326 = metadata !{i32 786443, metadata !1, metadata !619, i32 571, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1327 = metadata !{i32 573, i32 0, metadata !1325, null}
!1328 = metadata !{i32 786689, metadata !938, metadata !"a", metadata !925, i32 16777447, metadata !383, i32 0, metadata !1327} ; [ DW_TAG_arg_variable ] [a] [line 231]
!1329 = metadata !{i32 231, i32 0, metadata !938, metadata !1327}
!1330 = metadata !{i32 786689, metadata !938, metadata !"b", metadata !925, i32 33554663, metadata !383, i32 0, metadata !1327} ; [ DW_TAG_arg_variable ] [b] [line 231]
!1331 = metadata !{i32 235, i32 0, metadata !938, metadata !1327}
!1332 = metadata !{i32 786688, metadata !938, metadata !"x", metadata !925, i32 233, metadata !167, i32 0, metadata !1327} ; [ DW_TAG_auto_variable ] [x] [line 233]
!1333 = metadata !{i32 236, i32 0, metadata !938, metadata !1327}
!1334 = metadata !{i32 786688, metadata !938, metadata !"y", metadata !925, i32 233, metadata !167, i32 0, metadata !1327} ; [ DW_TAG_auto_variable ] [y] [line 233]
!1335 = metadata !{i32 237, i32 0, metadata !938, metadata !1327}
!1336 = metadata !{i32 786688, metadata !938, metadata !"z", metadata !925, i32 233, metadata !167, i32 0, metadata !1327} ; [ DW_TAG_auto_variable ] [z] [line 233]
!1337 = metadata !{i32 239, i32 0, metadata !938, metadata !1327}
!1338 = metadata !{i32 240, i32 0, metadata !938, metadata !1327}
!1339 = metadata !{i32 241, i32 0, metadata !938, metadata !1327}
!1340 = metadata !{i32 575, i32 0, metadata !619, null}
!1341 = metadata !{i32 985, i32 0, metadata !916, null}
!1342 = metadata !{i32 989, i32 0, metadata !916, null}
!1343 = metadata !{i32 990, i32 0, metadata !1344, null}
!1344 = metadata !{i32 786443, metadata !1, metadata !916, i32 990, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1345 = metadata !{i32 991, i32 0, metadata !1344, null}
!1346 = metadata !{i32 992, i32 0, metadata !916, null}
!1347 = metadata !{i32 993, i32 0, metadata !916, null}
!1348 = metadata !{i32 994, i32 0, metadata !1349, null}
!1349 = metadata !{i32 786443, metadata !1, metadata !916, i32 994, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1350 = metadata !{i32 995, i32 0, metadata !1349, null}
!1351 = metadata !{i32 996, i32 0, metadata !916, null}
!1352 = metadata !{i32 997, i32 0, metadata !916, null}
!1353 = metadata !{i32 998, i32 0, metadata !1354, null}
!1354 = metadata !{i32 786443, metadata !1, metadata !916, i32 998, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1355 = metadata !{i32 999, i32 0, metadata !1354, null}
!1356 = metadata !{i32 1000, i32 0, metadata !916, null}
!1357 = metadata !{i32 1001, i32 0, metadata !916, null}
!1358 = metadata !{i32 1002, i32 0, metadata !1359, null}
!1359 = metadata !{i32 786443, metadata !1, metadata !916, i32 1002, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1360 = metadata !{i32 1003, i32 0, metadata !1359, null}
!1361 = metadata !{i32 1004, i32 0, metadata !916, null}
!1362 = metadata !{i32 1005, i32 0, metadata !916, null}
!1363 = metadata !{i32 1006, i32 0, metadata !1364, null}
!1364 = metadata !{i32 786443, metadata !1, metadata !916, i32 1006, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1365 = metadata !{i32 1007, i32 0, metadata !1364, null}
!1366 = metadata !{i32 1008, i32 0, metadata !916, null}
!1367 = metadata !{i32 1009, i32 0, metadata !916, null}
!1368 = metadata !{i32 1010, i32 0, metadata !1369, null}
!1369 = metadata !{i32 786443, metadata !1, metadata !916, i32 1010, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1370 = metadata !{i32 1011, i32 0, metadata !1369, null}
!1371 = metadata !{i32 1012, i32 0, metadata !916, null}
!1372 = metadata !{i32 1013, i32 0, metadata !916, null}
!1373 = metadata !{i32 595, i32 0, metadata !639, null}
!1374 = metadata !{float 0.000000e+00}
!1375 = metadata !{i32 598, i32 0, metadata !639, null}
!1376 = metadata !{i32 601, i32 0, metadata !1377, null}
!1377 = metadata !{i32 786443, metadata !1, metadata !639, i32 601, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1378 = metadata !{i32 602, i32 0, metadata !1377, null}
!1379 = metadata !{i32 604, i32 0, metadata !1380, null}
!1380 = metadata !{i32 786443, metadata !1, metadata !639, i32 604, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1381 = metadata !{i32 605, i32 0, metadata !1382, null}
!1382 = metadata !{i32 786443, metadata !1, metadata !1380, i32 604, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1383 = metadata !{i32 610, i32 0, metadata !1382, null}
!1384 = metadata !{i32 608, i32 0, metadata !1385, null}
!1385 = metadata !{i32 786443, metadata !1, metadata !1386, i32 607, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1386 = metadata !{i32 786443, metadata !1, metadata !1387, i32 606, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1387 = metadata !{i32 786443, metadata !1, metadata !1382, i32 606, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1388 = metadata !{i32 786689, metadata !947, metadata !"a", metadata !925, i32 16777473, metadata !383, i32 0, metadata !1378} ; [ DW_TAG_arg_variable ] [a] [line 257]
!1389 = metadata !{i32 257, i32 0, metadata !947, metadata !1378}
!1390 = metadata !{i32 786689, metadata !947, metadata !"b", metadata !925, i32 33554689, metadata !383, i32 0, metadata !1378} ; [ DW_TAG_arg_variable ] [b] [line 257]
!1391 = metadata !{i32 261, i32 0, metadata !947, metadata !1378}
!1392 = metadata !{i32 786688, metadata !947, metadata !"x", metadata !925, i32 259, metadata !167, i32 0, metadata !1378} ; [ DW_TAG_auto_variable ] [x] [line 259]
!1393 = metadata !{i32 262, i32 0, metadata !947, metadata !1378}
!1394 = metadata !{i32 786688, metadata !947, metadata !"y", metadata !925, i32 259, metadata !167, i32 0, metadata !1378} ; [ DW_TAG_auto_variable ] [y] [line 259]
!1395 = metadata !{i32 263, i32 0, metadata !947, metadata !1378}
!1396 = metadata !{i32 786688, metadata !947, metadata !"z", metadata !925, i32 259, metadata !167, i32 0, metadata !1378} ; [ DW_TAG_auto_variable ] [z] [line 259]
!1397 = metadata !{i32 265, i32 0, metadata !947, metadata !1378}
!1398 = metadata !{i32 266, i32 0, metadata !947, metadata !1378}
!1399 = metadata !{i32 267, i32 0, metadata !947, metadata !1378}
!1400 = metadata !{i32 606, i32 0, metadata !1387, null}
!1401 = metadata !{i32 607, i32 0, metadata !1385, null}
!1402 = metadata !{i32 613, i32 0, metadata !639, null}
!1403 = metadata !{i32 616, i32 0, metadata !1404, null}
!1404 = metadata !{i32 786443, metadata !1, metadata !639, i32 616, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1405 = metadata !{i32 617, i32 0, metadata !1404, null}
!1406 = metadata !{i32 786689, metadata !938, metadata !"a", metadata !925, i32 16777447, metadata !383, i32 0, metadata !1405} ; [ DW_TAG_arg_variable ] [a] [line 231]
!1407 = metadata !{i32 231, i32 0, metadata !938, metadata !1405}
!1408 = metadata !{i32 786689, metadata !938, metadata !"b", metadata !925, i32 33554663, metadata !383, i32 0, metadata !1405} ; [ DW_TAG_arg_variable ] [b] [line 231]
!1409 = metadata !{i32 235, i32 0, metadata !938, metadata !1405}
!1410 = metadata !{i32 786688, metadata !938, metadata !"x", metadata !925, i32 233, metadata !167, i32 0, metadata !1405} ; [ DW_TAG_auto_variable ] [x] [line 233]
!1411 = metadata !{i32 236, i32 0, metadata !938, metadata !1405}
!1412 = metadata !{i32 786688, metadata !938, metadata !"y", metadata !925, i32 233, metadata !167, i32 0, metadata !1405} ; [ DW_TAG_auto_variable ] [y] [line 233]
!1413 = metadata !{i32 237, i32 0, metadata !938, metadata !1405}
!1414 = metadata !{i32 786688, metadata !938, metadata !"z", metadata !925, i32 233, metadata !167, i32 0, metadata !1405} ; [ DW_TAG_auto_variable ] [z] [line 233]
!1415 = metadata !{i32 239, i32 0, metadata !938, metadata !1405}
!1416 = metadata !{i32 240, i32 0, metadata !938, metadata !1405}
!1417 = metadata !{i32 241, i32 0, metadata !938, metadata !1405}
!1418 = metadata !{i32 618, i32 0, metadata !639, null}
!1419 = metadata !{i32 296, i32 0, metadata !496, null}
!1420 = metadata !{i32 298, i32 0, metadata !496, null}
!1421 = metadata !{i32 299, i32 0, metadata !496, null}
!1422 = metadata !{i32 301, i32 0, metadata !496, null}
!1423 = metadata !{i32 302, i32 0, metadata !496, null}
!1424 = metadata !{i32 303, i32 0, metadata !496, null}
!1425 = metadata !{i32 304, i32 0, metadata !496, null}
!1426 = metadata !{i32 305, i32 0, metadata !496, null}
!1427 = metadata !{i32 307, i32 0, metadata !506, null}
!1428 = metadata !{i32 309, i32 0, metadata !506, null}
!1429 = metadata !{i32 310, i32 0, metadata !506, null}
!1430 = metadata !{i32 312, i32 0, metadata !506, null}
!1431 = metadata !{i32 313, i32 0, metadata !506, null}
!1432 = metadata !{i32 314, i32 0, metadata !506, null}
!1433 = metadata !{i32 315, i32 0, metadata !506, null}
!1434 = metadata !{metadata !"double", metadata !991}
!1435 = metadata !{i32 316, i32 0, metadata !506, null}
!1436 = metadata !{i32 328, i32 0, metadata !519, null}
!1437 = metadata !{i32 331, i32 0, metadata !519, null}
!1438 = metadata !{i32 332, i32 0, metadata !519, null}
!1439 = metadata !{i32 334, i32 0, metadata !1440, null}
!1440 = metadata !{i32 786443, metadata !1, metadata !519, i32 334, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1441 = metadata !{i32 336, i32 0, metadata !1442, null}
!1442 = metadata !{i32 786443, metadata !1, metadata !1440, i32 334, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1443 = metadata !{i32 335, i32 0, metadata !1442, null}
!1444 = metadata !{i32 337, i32 0, metadata !1442, null}
!1445 = metadata !{i32 338, i32 0, metadata !1446, null}
!1446 = metadata !{i32 786443, metadata !1, metadata !1442, i32 338, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1447 = metadata !{i32 339, i32 0, metadata !1446, null}
!1448 = metadata !{i32 341, i32 0, metadata !519, null}
!1449 = metadata !{i32 343, i32 0, metadata !532, null}
!1450 = metadata !{i32 345, i32 0, metadata !532, null}
!1451 = metadata !{i32 346, i32 0, metadata !532, null}
!1452 = metadata !{i32 347, i32 0, metadata !532, null}
!1453 = metadata !{i32 348, i32 0, metadata !532, null}
!1454 = metadata !{i32 349, i32 0, metadata !532, null}
!1455 = metadata !{i32 350, i32 0, metadata !532, null}
!1456 = metadata !{i32 351, i32 0, metadata !532, null}
!1457 = metadata !{i32 318, i32 0, metadata !514, null}
!1458 = metadata !{i32 320, i32 0, metadata !514, null}
!1459 = metadata !{i32 321, i32 0, metadata !514, null}
!1460 = metadata !{i32 323, i32 0, metadata !514, null}
!1461 = metadata !{i32 324, i32 0, metadata !514, null}
!1462 = metadata !{i32 325, i32 0, metadata !514, null}
!1463 = metadata !{i32 326, i32 0, metadata !514, null}
!1464 = metadata !{i32 353, i32 0, metadata !540, null}
!1465 = metadata !{i32 355, i32 0, metadata !540, null}
!1466 = metadata !{i32 356, i32 0, metadata !540, null}
!1467 = metadata !{i32 357, i32 0, metadata !540, null}
!1468 = metadata !{i32 359, i32 0, metadata !540, null}
!1469 = metadata !{i32 360, i32 0, metadata !540, null}
!1470 = metadata !{i32 361, i32 0, metadata !540, null}
!1471 = metadata !{i32 362, i32 0, metadata !540, null}
!1472 = metadata !{i32 363, i32 0, metadata !540, null}
!1473 = metadata !{i32 364, i32 0, metadata !540, null}
!1474 = metadata !{i32 365, i32 0, metadata !540, null}
!1475 = metadata !{i32 366, i32 0, metadata !540, null}
!1476 = metadata !{i32 367, i32 0, metadata !1477, null}
!1477 = metadata !{i32 786443, metadata !1, metadata !540, i32 367, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1478 = metadata !{i32 373, i32 0, metadata !1479, null}
!1479 = metadata !{i32 786443, metadata !1, metadata !540, i32 373, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1480 = metadata !{i32 368, i32 0, metadata !1481, null}
!1481 = metadata !{i32 786443, metadata !1, metadata !1477, i32 367, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1482 = metadata !{i32 369, i32 0, metadata !1481, null}
!1483 = metadata !{i32 370, i32 0, metadata !1481, null}
!1484 = metadata !{i32 371, i32 0, metadata !1481, null}
!1485 = metadata !{i32 374, i32 0, metadata !1486, null}
!1486 = metadata !{i32 786443, metadata !1, metadata !1479, i32 373, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1487 = metadata !{i32 375, i32 0, metadata !1486, null}
!1488 = metadata !{i32 377, i32 0, metadata !540, null}
!1489 = metadata !{i32 379, i32 0, metadata !552, null}
!1490 = metadata !{i32 381, i32 0, metadata !552, null}
!1491 = metadata !{i32 383, i32 0, metadata !552, null}
!1492 = metadata !{i32 385, i32 0, metadata !1493, null}
!1493 = metadata !{i32 786443, metadata !1, metadata !552, i32 385, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1494 = metadata !{i32 386, i32 0, metadata !1495, null}
!1495 = metadata !{i32 786443, metadata !1, metadata !1493, i32 385, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1496 = metadata !{i32 387, i32 0, metadata !1495, null}
!1497 = metadata !{i32 388, i32 0, metadata !1495, null}
!1498 = metadata !{i32 389, i32 0, metadata !1495, null}
!1499 = metadata !{i32 390, i32 0, metadata !1495, null}
!1500 = metadata !{i32 392, i32 0, metadata !552, null}
!1501 = metadata !{i32 440, i32 0, metadata !579, null}
!1502 = metadata !{i32 443, i32 0, metadata !579, null}
!1503 = metadata !{double** null}
!1504 = metadata !{i32 444, i32 0, metadata !579, null}
!1505 = metadata !{i32 445, i32 0, metadata !579, null}
!1506 = metadata !{i32 453, i32 0, metadata !1507, null}
!1507 = metadata !{i32 786443, metadata !1, metadata !579, i32 452, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1508 = metadata !{i32 454, i32 0, metadata !1507, null}
!1509 = metadata !{i32 455, i32 0, metadata !1510, null}
!1510 = metadata !{i32 786443, metadata !1, metadata !1507, i32 455, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1511 = metadata !{i32 456, i32 0, metadata !1512, null}
!1512 = metadata !{i32 786443, metadata !1, metadata !1510, i32 455, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1513 = metadata !{i32 457, i32 0, metadata !1512, null}
!1514 = metadata !{i32 462, i32 0, metadata !1515, null}
!1515 = metadata !{i32 786443, metadata !1, metadata !1516, i32 461, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1516 = metadata !{i32 786443, metadata !1, metadata !579, i32 461, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1517 = metadata !{i32 463, i32 0, metadata !1518, null}
!1518 = metadata !{i32 786443, metadata !1, metadata !1515, i32 463, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1519 = metadata !{i32 464, i32 0, metadata !1520, null}
!1520 = metadata !{i32 786443, metadata !1, metadata !1518, i32 463, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1521 = metadata !{i32 465, i32 0, metadata !1520, null}
!1522 = metadata !{i32 461, i32 0, metadata !1516, null}
!1523 = metadata !{i32 786688, metadata !959, metadata !"nul", metadata !925, i32 336, metadata !933, i32 0, metadata !1524} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!1524 = metadata !{i32 470, i32 0, metadata !579, null}
!1525 = metadata !{i32 336, i32 0, metadata !959, metadata !1524}
!1526 = metadata !{i32 338, i32 0, metadata !959, metadata !1524}
!1527 = metadata !{i32 471, i32 0, metadata !1528, null}
!1528 = metadata !{i32 786443, metadata !1, metadata !579, i32 471, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1529 = metadata !{i32 472, i32 0, metadata !1530, null}
!1530 = metadata !{i32 786443, metadata !1, metadata !1531, i32 472, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1531 = metadata !{i32 786443, metadata !1, metadata !1528, i32 471, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1532 = metadata !{i32 473, i32 0, metadata !1533, null}
!1533 = metadata !{i32 786443, metadata !1, metadata !1530, i32 472, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1534 = metadata !{i32 474, i32 0, metadata !1535, null}
!1535 = metadata !{i32 786443, metadata !1, metadata !1533, i32 474, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1536 = metadata !{i32 475, i32 0, metadata !1537, null}
!1537 = metadata !{i32 786443, metadata !1, metadata !1535, i32 474, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1538 = metadata !{i32 476, i32 0, metadata !1537, null}
!1539 = metadata !{i32 484, i32 0, metadata !1540, null}
!1540 = metadata !{i32 786443, metadata !1, metadata !1541, i32 484, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1541 = metadata !{i32 786443, metadata !1, metadata !579, i32 483, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1542 = metadata !{i32 485, i32 0, metadata !1540, null}
!1543 = metadata !{i32 486, i32 0, metadata !1544, null}
!1544 = metadata !{i32 786443, metadata !1, metadata !1540, i32 485, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1545 = metadata !{i32 487, i32 0, metadata !1544, null}
!1546 = metadata !{i32 488, i32 0, metadata !1544, null}
!1547 = metadata !{i32 490, i32 0, metadata !1548, null}
!1548 = metadata !{i32 786443, metadata !1, metadata !1540, i32 489, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1549 = metadata !{i32 491, i32 0, metadata !1548, null}
!1550 = metadata !{i32 483, i32 0, metadata !1541, null}
!1551 = metadata !{i32 495, i32 0, metadata !579, null}
!1552 = metadata !{i32 497, i32 0, metadata !579, null}
!1553 = metadata !{i32 498, i32 0, metadata !1554, null}
!1554 = metadata !{i32 786443, metadata !1, metadata !579, i32 497, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1555 = metadata !{i32 499, i32 0, metadata !1554, null}
!1556 = metadata !{i32 505, i32 0, metadata !1557, null}
!1557 = metadata !{i32 786443, metadata !1, metadata !1558, i32 505, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1558 = metadata !{i32 786443, metadata !1, metadata !1559, i32 503, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1559 = metadata !{i32 786443, metadata !1, metadata !579, i32 503, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1560 = metadata !{i32 506, i32 0, metadata !1557, null}
!1561 = metadata !{i32 507, i32 0, metadata !1562, null}
!1562 = metadata !{i32 786443, metadata !1, metadata !1557, i32 506, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1563 = metadata !{i32 undef}
!1564 = metadata !{i32 508, i32 0, metadata !1562, null}
!1565 = metadata !{i32 509, i32 0, metadata !1562, null}
!1566 = metadata !{i32 510, i32 0, metadata !1558, null}
!1567 = metadata !{i32 511, i32 0, metadata !1568, null}
!1568 = metadata !{i32 786443, metadata !1, metadata !1558, i32 511, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1569 = metadata !{i32 512, i32 0, metadata !1570, null}
!1570 = metadata !{i32 786443, metadata !1, metadata !1568, i32 511, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1571 = metadata !{i32 513, i32 0, metadata !1570, null}
!1572 = metadata !{i32 503, i32 0, metadata !1559, null}
!1573 = metadata !{i32 520, i32 0, metadata !1574, null}
!1574 = metadata !{i32 786443, metadata !1, metadata !1575, i32 519, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1575 = metadata !{i32 786443, metadata !1, metadata !579, i32 518, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1576 = metadata !{i32 519, i32 0, metadata !1574, null}
!1577 = metadata !{i32 518, i32 0, metadata !1575, null}
!1578 = metadata !{i32 786689, metadata !954, metadata !"a", metadata !925, i32 16777694, metadata !407, i32 0, metadata !1579} ; [ DW_TAG_arg_variable ] [a] [line 478]
!1579 = metadata !{i32 523, i32 0, metadata !579, null}
!1580 = metadata !{i32 478, i32 0, metadata !954, metadata !1579}
!1581 = metadata !{i32 480, i32 0, metadata !954, metadata !1579}
!1582 = metadata !{i32 526, i32 0, metadata !1583, null}
!1583 = metadata !{i32 786443, metadata !1, metadata !1584, i32 525, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1584 = metadata !{i32 786443, metadata !1, metadata !579, i32 524, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1585 = metadata !{i32 525, i32 0, metadata !1583, null}
!1586 = metadata !{i32 524, i32 0, metadata !1584, null}
!1587 = metadata !{i32 529, i32 0, metadata !579, null}
!1588 = metadata !{i32 577, i32 0, metadata !627, null}
!1589 = metadata !{i32 582, i32 0, metadata !1590, null}
!1590 = metadata !{i32 786443, metadata !1, metadata !627, i32 582, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1591 = metadata !{i32 584, i32 0, metadata !1592, null}
!1592 = metadata !{i32 786443, metadata !1, metadata !1593, i32 584, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1593 = metadata !{i32 786443, metadata !1, metadata !1590, i32 582, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1594 = metadata !{i32 589, i32 0, metadata !1593, null}
!1595 = metadata !{i32 590, i32 0, metadata !1593, null}
!1596 = metadata !{i32 591, i32 0, metadata !1593, null}
!1597 = metadata !{i32 586, i32 0, metadata !1598, null}
!1598 = metadata !{i32 786443, metadata !1, metadata !1599, i32 585, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1599 = metadata !{i32 786443, metadata !1, metadata !1592, i32 584, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1600 = metadata !{i32 585, i32 0, metadata !1598, null}
!1601 = metadata !{i32 593, i32 0, metadata !627, null}
!1602 = metadata !{i32 620, i32 0, metadata !650, null}
!1603 = metadata !{i32 623, i32 0, metadata !650, null}
!1604 = metadata !{i32 625, i32 0, metadata !1605, null}
!1605 = metadata !{i32 786443, metadata !1, metadata !650, i32 625, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1606 = metadata !{i32 627, i32 0, metadata !1607, null}
!1607 = metadata !{i32 786443, metadata !1, metadata !1605, i32 626, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1608 = metadata !{i32 626, i32 0, metadata !1607, null}
!1609 = metadata !{i32 629, i32 0, metadata !650, null}
!1610 = metadata !{i32 632, i32 0, metadata !660, null}
!1611 = metadata !{i32 636, i32 0, metadata !660, null}
!1612 = metadata !{i32 637, i32 0, metadata !1613, null}
!1613 = metadata !{i32 786443, metadata !1, metadata !660, i32 637, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1614 = metadata !{i32 638, i32 0, metadata !1613, null}
!1615 = metadata !{i32 639, i32 0, metadata !660, null}
!1616 = metadata !{i32 643, i32 0, metadata !666, null}
!1617 = metadata !{i32 644, i32 0, metadata !666, null}
!1618 = metadata !{i32 645, i32 0, metadata !666, null}
!1619 = metadata !{i32 646, i32 0, metadata !666, null}
!1620 = metadata !{i32 648, i32 0, metadata !666, null}
!1621 = metadata !{i32 500}
!1622 = metadata !{[3 x float]* null}
!1623 = metadata !{i32 649, i32 0, metadata !666, null}
!1624 = metadata !{i32 650, i32 0, metadata !666, null}
!1625 = metadata !{i32 654, i32 0, metadata !666, null}
!1626 = metadata !{i32 655, i32 0, metadata !666, null}
!1627 = metadata !{i32 656, i32 0, metadata !666, null}
!1628 = metadata !{i32 659, i32 0, metadata !666, null}
!1629 = metadata !{i32 660, i32 0, metadata !1630, null}
!1630 = metadata !{i32 786443, metadata !1, metadata !666, i32 659, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1631 = metadata !{i32 662, i32 0, metadata !1630, null}
!1632 = metadata !{i32 665, i32 0, metadata !666, null}
!1633 = metadata !{i32 666, i32 0, metadata !1634, null}
!1634 = metadata !{i32 786443, metadata !1, metadata !666, i32 665, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1635 = metadata !{i32 667, i32 0, metadata !1636, null}
!1636 = metadata !{i32 786443, metadata !1, metadata !1634, i32 667, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1637 = metadata !{i32 671, i32 0, metadata !1634, null}
!1638 = metadata !{i32 672, i32 0, metadata !1639, null}
!1639 = metadata !{i32 786443, metadata !1, metadata !1634, i32 672, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1640 = metadata !{i32 668, i32 0, metadata !1641, null}
!1641 = metadata !{i32 786443, metadata !1, metadata !1642, i32 668, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1642 = metadata !{i32 786443, metadata !1, metadata !1636, i32 667, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1643 = metadata !{i32 669, i32 0, metadata !1641, null}
!1644 = metadata !{i32 673, i32 0, metadata !1645, null}
!1645 = metadata !{i32 786443, metadata !1, metadata !1639, i32 672, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1646 = metadata !{i32 674, i32 0, metadata !1647, null}
!1647 = metadata !{i32 786443, metadata !1, metadata !1645, i32 674, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1648 = metadata !{i32 675, i32 0, metadata !1647, null}
!1649 = metadata !{i32 680, i32 0, metadata !666, null}
!1650 = metadata !{i32 681, i32 0, metadata !666, null}
!1651 = metadata !{i32 684, i32 0, metadata !666, null}
!1652 = metadata !{i32 685, i32 0, metadata !1653, null}
!1653 = metadata !{i32 786443, metadata !1, metadata !666, i32 684, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1654 = metadata !{i32 686, i32 0, metadata !1653, null}
!1655 = metadata !{i32 687, i32 0, metadata !1653, null}
!1656 = metadata !{i32 688, i32 0, metadata !1653, null}
!1657 = metadata !{i32 689, i32 0, metadata !1653, null}
!1658 = metadata !{i32 692, i32 0, metadata !666, null}
!1659 = metadata !{i32 693, i32 0, metadata !1660, null}
!1660 = metadata !{i32 786443, metadata !1, metadata !666, i32 692, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1661 = metadata !{i32 694, i32 0, metadata !1660, null}
!1662 = metadata !{i32 695, i32 0, metadata !1663, null}
!1663 = metadata !{i32 786443, metadata !1, metadata !1660, i32 694, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1664 = metadata !{i32 696, i32 0, metadata !1663, null}
!1665 = metadata !{i32 697, i32 0, metadata !1663, null}
!1666 = metadata !{i32 698, i32 0, metadata !1663, null}
!1667 = metadata !{i32 700, i32 0, metadata !1660, null}
!1668 = metadata !{i32 704, i32 0, metadata !666, null}
!1669 = metadata !{i32 707, i32 0, metadata !666, null}
!1670 = metadata !{i32 709, i32 0, metadata !1671, null}
!1671 = metadata !{i32 786443, metadata !1, metadata !666, i32 707, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1672 = metadata !{i32 710, i32 0, metadata !1671, null}
!1673 = metadata !{i32 711, i32 0, metadata !1671, null}
!1674 = metadata !{i32 712, i32 0, metadata !1671, null}
!1675 = metadata !{i32 713, i32 0, metadata !1671, null}
!1676 = metadata !{i32 714, i32 0, metadata !1671, null}
!1677 = metadata !{i32 715, i32 0, metadata !1671, null}
!1678 = metadata !{i32 716, i32 0, metadata !1671, null}
!1679 = metadata !{i32 717, i32 0, metadata !1671, null}
!1680 = metadata !{i32 718, i32 0, metadata !1671, null}
!1681 = metadata !{i32 721, i32 0, metadata !666, null}
!1682 = metadata !{i32 722, i32 0, metadata !1683, null}
!1683 = metadata !{i32 786443, metadata !1, metadata !666, i32 721, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1684 = metadata !{i32 723, i32 0, metadata !1683, null}
!1685 = metadata !{i32 724, i32 0, metadata !1683, null}
!1686 = metadata !{i32 726, i32 0, metadata !1683, null}
!1687 = metadata !{i32 728, i32 0, metadata !1683, null}
!1688 = metadata !{i32 730, i32 0, metadata !1683, null}
!1689 = metadata !{i32 731, i32 0, metadata !1683, null}
!1690 = metadata !{i32 732, i32 0, metadata !1683, null}
!1691 = metadata !{i32 735, i32 0, metadata !666, null}
!1692 = metadata !{i32 737, i32 0, metadata !666, null}
!1693 = metadata !{i32 738, i32 0, metadata !666, null}
!1694 = metadata !{i32 739, i32 0, metadata !666, null}
!1695 = metadata !{i32 781, i32 0, metadata !834, null}
!1696 = metadata !{i32 786, i32 0, metadata !1697, null}
!1697 = metadata !{i32 786443, metadata !1, metadata !834, i32 786, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1698 = metadata !{i32 787, i32 0, metadata !1697, null}
!1699 = metadata !{i32 786689, metadata !947, metadata !"a", metadata !925, i32 16777473, metadata !383, i32 0, metadata !1698} ; [ DW_TAG_arg_variable ] [a] [line 257]
!1700 = metadata !{i32 257, i32 0, metadata !947, metadata !1698}
!1701 = metadata !{i32 786689, metadata !947, metadata !"b", metadata !925, i32 33554689, metadata !383, i32 0, metadata !1698} ; [ DW_TAG_arg_variable ] [b] [line 257]
!1702 = metadata !{i32 261, i32 0, metadata !947, metadata !1698}
!1703 = metadata !{i32 786688, metadata !947, metadata !"x", metadata !925, i32 259, metadata !167, i32 0, metadata !1698} ; [ DW_TAG_auto_variable ] [x] [line 259]
!1704 = metadata !{i32 262, i32 0, metadata !947, metadata !1698}
!1705 = metadata !{i32 786688, metadata !947, metadata !"y", metadata !925, i32 259, metadata !167, i32 0, metadata !1698} ; [ DW_TAG_auto_variable ] [y] [line 259]
!1706 = metadata !{i32 263, i32 0, metadata !947, metadata !1698}
!1707 = metadata !{i32 786688, metadata !947, metadata !"z", metadata !925, i32 259, metadata !167, i32 0, metadata !1698} ; [ DW_TAG_auto_variable ] [z] [line 259]
!1708 = metadata !{i32 265, i32 0, metadata !947, metadata !1698}
!1709 = metadata !{i32 266, i32 0, metadata !947, metadata !1698}
!1710 = metadata !{i32 267, i32 0, metadata !947, metadata !1698}
!1711 = metadata !{i32 790, i32 0, metadata !834, null}
!1712 = metadata !{i32 791, i32 0, metadata !834, null}
!1713 = metadata !{i32 792, i32 0, metadata !834, null}
!1714 = metadata !{i32 793, i32 0, metadata !834, null}
!1715 = metadata !{i32 794, i32 0, metadata !834, null}
!1716 = metadata !{i32 797, i32 0, metadata !1717, null}
!1717 = metadata !{i32 786443, metadata !1, metadata !834, i32 797, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1718 = metadata !{i32 798, i32 0, metadata !1717, null}
!1719 = metadata !{i32 786689, metadata !938, metadata !"a", metadata !925, i32 16777447, metadata !383, i32 0, metadata !1718} ; [ DW_TAG_arg_variable ] [a] [line 231]
!1720 = metadata !{i32 231, i32 0, metadata !938, metadata !1718}
!1721 = metadata !{i32 786689, metadata !938, metadata !"b", metadata !925, i32 33554663, metadata !383, i32 0, metadata !1718} ; [ DW_TAG_arg_variable ] [b] [line 231]
!1722 = metadata !{i32 235, i32 0, metadata !938, metadata !1718}
!1723 = metadata !{i32 786688, metadata !938, metadata !"x", metadata !925, i32 233, metadata !167, i32 0, metadata !1718} ; [ DW_TAG_auto_variable ] [x] [line 233]
!1724 = metadata !{i32 236, i32 0, metadata !938, metadata !1718}
!1725 = metadata !{i32 786688, metadata !938, metadata !"y", metadata !925, i32 233, metadata !167, i32 0, metadata !1718} ; [ DW_TAG_auto_variable ] [y] [line 233]
!1726 = metadata !{i32 237, i32 0, metadata !938, metadata !1718}
!1727 = metadata !{i32 786688, metadata !938, metadata !"z", metadata !925, i32 233, metadata !167, i32 0, metadata !1718} ; [ DW_TAG_auto_variable ] [z] [line 233]
!1728 = metadata !{i32 239, i32 0, metadata !938, metadata !1718}
!1729 = metadata !{i32 240, i32 0, metadata !938, metadata !1718}
!1730 = metadata !{i32 241, i32 0, metadata !938, metadata !1718}
!1731 = metadata !{i32 799, i32 0, metadata !834, null}
!1732 = metadata !{i32 764, i32 0, metadata !823, null}
!1733 = metadata !{i32 767, i32 0, metadata !823, null}
!1734 = metadata !{i32 770, i32 0, metadata !1735, null}
!1735 = metadata !{i32 786443, metadata !1, metadata !823, i32 770, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1736 = metadata !{i32 772, i32 0, metadata !1737, null}
!1737 = metadata !{i32 786443, metadata !1, metadata !1738, i32 771, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1738 = metadata !{i32 786443, metadata !1, metadata !1735, i32 770, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1739 = metadata !{i32 773, i32 0, metadata !1740, null}
!1740 = metadata !{i32 786443, metadata !1, metadata !1738, i32 773, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1741 = metadata !{i32 774, i32 0, metadata !1742, null}
!1742 = metadata !{i32 786443, metadata !1, metadata !1740, i32 773, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1743 = metadata !{i32 775, i32 0, metadata !1744, null}
!1744 = metadata !{i32 786443, metadata !1, metadata !1742, i32 775, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1745 = metadata !{i32 776, i32 0, metadata !1744, null}
!1746 = metadata !{i32 779, i32 0, metadata !823, null}
!1747 = metadata !{i32 951, i32 0, metadata !894, null}
!1748 = metadata !{i32 953, i32 0, metadata !894, null}
!1749 = metadata !{i32 954, i32 0, metadata !894, null}
!1750 = metadata !{i32 955, i32 0, metadata !894, null}
!1751 = metadata !{i32 956, i32 0, metadata !894, null}
!1752 = metadata !{i32 957, i32 0, metadata !894, null}
!1753 = metadata !{i32 958, i32 0, metadata !894, null}
!1754 = metadata !{i32 741, i32 0, metadata !812, null}
!1755 = metadata !{i32 744, i32 0, metadata !812, null}
!1756 = metadata !{i32 745, i32 0, metadata !812, null}
!1757 = metadata !{i32 786689, metadata !923, metadata !"src", metadata !925, i32 16777740, metadata !407, i32 0, metadata !1758} ; [ DW_TAG_arg_variable ] [src] [line 524]
!1758 = metadata !{i32 748, i32 0, metadata !812, null}
!1759 = metadata !{i32 524, i32 0, metadata !923, metadata !1758}
!1760 = metadata !{float 0x3C32725DE0000000}
!1761 = metadata !{i32 786688, metadata !932, metadata !"smallreal", metadata !925, i32 526, metadata !933, i32 0, metadata !1758} ; [ DW_TAG_auto_variable ] [smallreal] [line 526]
!1762 = metadata !{i32 526, i32 0, metadata !932, metadata !1758}
!1763 = metadata !{float 0x43ABC16D60000000}
!1764 = metadata !{i32 786688, metadata !932, metadata !"largereal", metadata !925, i32 527, metadata !933, i32 0, metadata !1758} ; [ DW_TAG_auto_variable ] [largereal] [line 527]
!1765 = metadata !{i32 527, i32 0, metadata !932, metadata !1758}
!1766 = metadata !{i32 786689, metadata !954, metadata !"a", metadata !925, i32 16777694, metadata !407, i32 0, metadata !1767} ; [ DW_TAG_arg_variable ] [a] [line 478]
!1767 = metadata !{i32 530, i32 0, metadata !932, metadata !1758}
!1768 = metadata !{i32 478, i32 0, metadata !954, metadata !1767}
!1769 = metadata !{i32 480, i32 0, metadata !954, metadata !1767}
!1770 = metadata !{i32 786688, metadata !932, metadata !"deter", metadata !925, i32 528, metadata !167, i32 0, metadata !1758} ; [ DW_TAG_auto_variable ] [deter] [line 528]
!1771 = metadata !{i32 531, i32 0, metadata !932, metadata !1758}
!1772 = metadata !{i32 786688, metadata !932, metadata !"c", metadata !925, i32 528, metadata !167, i32 0, metadata !1758} ; [ DW_TAG_auto_variable ] [c] [line 528]
!1773 = metadata !{i32 532, i32 0, metadata !932, metadata !1758}
!1774 = metadata !{i32 786688, metadata !932, metadata !"fc", metadata !925, i32 528, metadata !167, i32 0, metadata !1758} ; [ DW_TAG_auto_variable ] [fc] [line 528]
!1775 = metadata !{i32 534, i32 0, metadata !932, metadata !1758}
!1776 = metadata !{i32 535, i32 0, metadata !932, metadata !1758}
!1777 = metadata !{i32 537, i32 0, metadata !932, metadata !1758}
!1778 = metadata !{i32 538, i32 0, metadata !932, metadata !1758}
!1779 = metadata !{i32 540, i32 0, metadata !932, metadata !1758}
!1780 = metadata !{i32 541, i32 0, metadata !932, metadata !1758}
!1781 = metadata !{i32 539, i32 0, metadata !932, metadata !1758}
!1782 = metadata !{i32 542, i32 0, metadata !932, metadata !1758}
!1783 = metadata !{i32 543, i32 0, metadata !932, metadata !1758}
!1784 = metadata !{i32 544, i32 0, metadata !932, metadata !1758}
!1785 = metadata !{i32 545, i32 0, metadata !932, metadata !1758}
!1786 = metadata !{i32 749, i32 0, metadata !1787, null}
!1787 = metadata !{i32 786443, metadata !1, metadata !812, i32 749, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1788 = metadata !{i32 751, i32 0, metadata !1789, null}
!1789 = metadata !{i32 786443, metadata !1, metadata !1790, i32 750, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1790 = metadata !{i32 786443, metadata !1, metadata !1787, i32 749, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1791 = metadata !{i32 752, i32 0, metadata !1792, null}
!1792 = metadata !{i32 786443, metadata !1, metadata !1790, i32 752, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1793 = metadata !{i32 760, i32 0, metadata !1794, null}
!1794 = metadata !{i32 786443, metadata !1, metadata !812, i32 760, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1795 = metadata !{i32 753, i32 0, metadata !1796, null}
!1796 = metadata !{i32 786443, metadata !1, metadata !1792, i32 752, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1797 = metadata !{i32 754, i32 0, metadata !1798, null}
!1798 = metadata !{i32 786443, metadata !1, metadata !1796, i32 754, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1799 = metadata !{i32 755, i32 0, metadata !1798, null}
!1800 = metadata !{i32 761, i32 0, metadata !1794, null}
!1801 = metadata !{i32 786689, metadata !947, metadata !"a", metadata !925, i32 16777473, metadata !383, i32 0, metadata !1800} ; [ DW_TAG_arg_variable ] [a] [line 257]
!1802 = metadata !{i32 257, i32 0, metadata !947, metadata !1800}
!1803 = metadata !{i32 786689, metadata !947, metadata !"b", metadata !925, i32 33554689, metadata !383, i32 0, metadata !1800} ; [ DW_TAG_arg_variable ] [b] [line 257]
!1804 = metadata !{i32 261, i32 0, metadata !947, metadata !1800}
!1805 = metadata !{i32 786688, metadata !947, metadata !"x", metadata !925, i32 259, metadata !167, i32 0, metadata !1800} ; [ DW_TAG_auto_variable ] [x] [line 259]
!1806 = metadata !{i32 262, i32 0, metadata !947, metadata !1800}
!1807 = metadata !{i32 786688, metadata !947, metadata !"y", metadata !925, i32 259, metadata !167, i32 0, metadata !1800} ; [ DW_TAG_auto_variable ] [y] [line 259]
!1808 = metadata !{i32 263, i32 0, metadata !947, metadata !1800}
!1809 = metadata !{i32 786688, metadata !947, metadata !"z", metadata !925, i32 259, metadata !167, i32 0, metadata !1800} ; [ DW_TAG_auto_variable ] [z] [line 259]
!1810 = metadata !{i32 265, i32 0, metadata !947, metadata !1800}
!1811 = metadata !{i32 266, i32 0, metadata !947, metadata !1800}
!1812 = metadata !{i32 267, i32 0, metadata !947, metadata !1800}
!1813 = metadata !{i32 762, i32 0, metadata !812, null}
!1814 = metadata !{i32 801, i32 0, metadata !842, null}
!1815 = metadata !{i32 807, i32 0, metadata !1816, null}
!1816 = metadata !{i32 786443, metadata !1, metadata !842, i32 807, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1817 = metadata !{i32 809, i32 0, metadata !1818, null}
!1818 = metadata !{i32 786443, metadata !1, metadata !1816, i32 807, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1819 = metadata !{i32 812, i32 0, metadata !1818, null}
!1820 = metadata !{i32 814, i32 0, metadata !1821, null}
!1821 = metadata !{i32 786443, metadata !1, metadata !1818, i32 814, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1822 = metadata !{i32 816, i32 0, metadata !1823, null}
!1823 = metadata !{i32 786443, metadata !1, metadata !1824, i32 815, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1824 = metadata !{i32 786443, metadata !1, metadata !1821, i32 814, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1825 = metadata !{i32 815, i32 0, metadata !1823, null}
!1826 = metadata !{i32 819, i32 0, metadata !842, null}
!1827 = metadata !{i32 821, i32 0, metadata !852, null}
!1828 = metadata !{i32 827, i32 0, metadata !1829, null}
!1829 = metadata !{i32 786443, metadata !1, metadata !852, i32 827, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1830 = metadata !{i32 829, i32 0, metadata !1831, null}
!1831 = metadata !{i32 786443, metadata !1, metadata !1829, i32 827, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1832 = metadata !{i32 832, i32 0, metadata !1831, null}
!1833 = metadata !{i32 833, i32 0, metadata !1834, null}
!1834 = metadata !{i32 786443, metadata !1, metadata !1831, i32 832, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1835 = metadata !{i32 841, i32 0, metadata !1836, null}
!1836 = metadata !{i32 786443, metadata !1, metadata !1831, i32 841, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1837 = metadata !{i32 843, i32 0, metadata !1838, null}
!1838 = metadata !{i32 786443, metadata !1, metadata !1839, i32 842, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1839 = metadata !{i32 786443, metadata !1, metadata !1836, i32 841, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1840 = metadata !{i32 831, i32 0, metadata !1831, null}
!1841 = metadata !{i32 834, i32 0, metadata !1834, null}
!1842 = metadata !{i32 836, i32 0, metadata !1831, null}
!1843 = metadata !{i32 837, i32 0, metadata !1844, null}
!1844 = metadata !{i32 786443, metadata !1, metadata !1831, i32 836, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1845 = metadata !{i32 838, i32 0, metadata !1844, null}
!1846 = metadata !{i32 842, i32 0, metadata !1838, null}
!1847 = metadata !{i32 846, i32 0, metadata !1831, null}
!1848 = metadata !{i32 848, i32 0, metadata !852, null}
!1849 = metadata !{i32 850, i32 0, metadata !863, null}
!1850 = metadata !{i32 853, i32 0, metadata !863, null}
!1851 = metadata !{i32 855, i32 0, metadata !863, null}
!1852 = metadata !{i32 856, i32 0, metadata !863, null}
!1853 = metadata !{i32 858, i32 0, metadata !1854, null}
!1854 = metadata !{i32 786443, metadata !1, metadata !863, i32 858, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1855 = metadata !{i32 860, i32 0, metadata !1856, null}
!1856 = metadata !{i32 786443, metadata !1, metadata !1854, i32 858, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1857 = metadata !{i32 861, i32 0, metadata !1856, null}
!1858 = metadata !{i32 863, i32 0, metadata !863, null}
!1859 = metadata !{i32 864, i32 0, metadata !863, null}
!1860 = metadata !{i32 865, i32 0, metadata !863, null}
!1861 = metadata !{i32 868, i32 0, metadata !1862, null}
!1862 = metadata !{i32 786443, metadata !1, metadata !863, i32 868, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1863 = metadata !{i32 869, i32 0, metadata !1864, null}
!1864 = metadata !{i32 786443, metadata !1, metadata !1862, i32 868, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1865 = metadata !{i32 871, i32 0, metadata !1866, null}
!1866 = metadata !{i32 786443, metadata !1, metadata !1864, i32 871, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1867 = metadata !{i32 873, i32 0, metadata !1868, null}
!1868 = metadata !{i32 786443, metadata !1, metadata !1869, i32 872, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1869 = metadata !{i32 786443, metadata !1, metadata !1866, i32 871, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1870 = metadata !{i32 872, i32 0, metadata !1868, null}
!1871 = metadata !{i32 876, i32 0, metadata !863, null}
!1872 = metadata !{i32 879, i32 0, metadata !874, null}
!1873 = metadata !{i32 882, i32 0, metadata !874, null}
!1874 = metadata !{i32 884, i32 0, metadata !874, null}
!1875 = metadata !{i32 885, i32 0, metadata !874, null}
!1876 = metadata !{i32 887, i32 0, metadata !1877, null}
!1877 = metadata !{i32 786443, metadata !1, metadata !874, i32 887, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1878 = metadata !{i32 889, i32 0, metadata !1879, null}
!1879 = metadata !{i32 786443, metadata !1, metadata !1877, i32 887, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1880 = metadata !{i32 891, i32 0, metadata !1879, null}
!1881 = metadata !{i32 893, i32 0, metadata !874, null}
!1882 = metadata !{i32 897, i32 0, metadata !874, null}
!1883 = metadata !{i32 898, i32 0, metadata !1884, null}
!1884 = metadata !{i32 786443, metadata !1, metadata !874, i32 897, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1885 = metadata !{i32 900, i32 0, metadata !1884, null}
!1886 = metadata !{i32 902, i32 0, metadata !874, null}
!1887 = metadata !{i32 905, i32 0, metadata !1888, null}
!1888 = metadata !{i32 786443, metadata !1, metadata !874, i32 905, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1889 = metadata !{i32 906, i32 0, metadata !1890, null}
!1890 = metadata !{i32 786443, metadata !1, metadata !1888, i32 905, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1891 = metadata !{i32 908, i32 0, metadata !1892, null}
!1892 = metadata !{i32 786443, metadata !1, metadata !1890, i32 908, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1893 = metadata !{i32 910, i32 0, metadata !1894, null}
!1894 = metadata !{i32 786443, metadata !1, metadata !1895, i32 909, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1895 = metadata !{i32 786443, metadata !1, metadata !1892, i32 908, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1896 = metadata !{i32 909, i32 0, metadata !1894, null}
!1897 = metadata !{i32 913, i32 0, metadata !874, null}
!1898 = metadata !{i32 916, i32 0, metadata !884, null}
!1899 = metadata !{i32 919, i32 0, metadata !884, null}
!1900 = metadata !{i32 921, i32 0, metadata !884, null}
!1901 = metadata !{i32 922, i32 0, metadata !884, null}
!1902 = metadata !{i32 924, i32 0, metadata !1903, null}
!1903 = metadata !{i32 786443, metadata !1, metadata !884, i32 924, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1904 = metadata !{i32 926, i32 0, metadata !1905, null}
!1905 = metadata !{i32 786443, metadata !1, metadata !1903, i32 924, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1906 = metadata !{i32 927, i32 0, metadata !1905, null}
!1907 = metadata !{i32 929, i32 0, metadata !884, null}
!1908 = metadata !{i32 932, i32 0, metadata !884, null}
!1909 = metadata !{i32 933, i32 0, metadata !1910, null}
!1910 = metadata !{i32 786443, metadata !1, metadata !884, i32 932, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1911 = metadata !{i32 935, i32 0, metadata !1910, null}
!1912 = metadata !{i32 937, i32 0, metadata !884, null}
!1913 = metadata !{i32 940, i32 0, metadata !1914, null}
!1914 = metadata !{i32 786443, metadata !1, metadata !884, i32 940, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1915 = metadata !{i32 941, i32 0, metadata !1916, null}
!1916 = metadata !{i32 786443, metadata !1, metadata !1914, i32 940, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1917 = metadata !{i32 943, i32 0, metadata !1918, null}
!1918 = metadata !{i32 786443, metadata !1, metadata !1916, i32 943, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1919 = metadata !{i32 945, i32 0, metadata !1920, null}
!1920 = metadata !{i32 786443, metadata !1, metadata !1921, i32 944, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1921 = metadata !{i32 786443, metadata !1, metadata !1918, i32 943, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1922 = metadata !{i32 944, i32 0, metadata !1920, null}
!1923 = metadata !{i32 948, i32 0, metadata !884, null}
!1924 = metadata !{i32 960, i32 0, metadata !901, null}
!1925 = metadata !{i32 962, i32 0, metadata !901, null}
!1926 = metadata !{i32 963, i32 0, metadata !901, null}
!1927 = metadata !{i32 964, i32 0, metadata !901, null}
!1928 = metadata !{i32 965, i32 0, metadata !901, null}
!1929 = metadata !{i32 966, i32 0, metadata !901, null}
!1930 = metadata !{i32 967, i32 0, metadata !901, null}
!1931 = metadata !{i32 968, i32 0, metadata !901, null}
!1932 = metadata !{i32 970, i32 0, metadata !908, null}
!1933 = metadata !{i32 974, i32 0, metadata !1934, null}
!1934 = metadata !{i32 786443, metadata !1, metadata !908, i32 974, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1935 = metadata !{i32 976, i32 0, metadata !1936, null}
!1936 = metadata !{i32 786443, metadata !1, metadata !1934, i32 974, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/edsam.c]
!1937 = metadata !{i32 978, i32 0, metadata !1936, null}
!1938 = metadata !{i32 980, i32 0, metadata !1936, null}
!1939 = metadata !{i32 975, i32 0, metadata !1936, null}
!1940 = metadata !{i32 977, i32 0, metadata !1936, null}
!1941 = metadata !{i32 979, i32 0, metadata !1936, null}
!1942 = metadata !{i32 982, i32 0, metadata !908, null}
!1943 = metadata !{i32 983, i32 0, metadata !908, null}

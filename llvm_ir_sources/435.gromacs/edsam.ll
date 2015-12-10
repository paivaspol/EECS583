; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/edsam.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_filenm = type { i32, i8*, i8*, i64 }
%struct.t_edsamyn = type { i32, i8*, i8* }
%struct.t_topology = type { i8**, %struct.t_idef, %struct.t_atoms, [3 x %struct.t_block], %struct.t_symtab }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%union.t_iparams = type { %struct.anon.5 }
%struct.anon.5 = type { float, float, float, float, float, float }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }
%struct.t_symtab = type { i32, %struct.symbuf* }
%struct.symbuf = type { i32, i8**, %struct.symbuf* }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_edpar = type { i32, i32, i32, i32, i32, i32, i32, %struct.t_edx, %struct.t_edx, %struct.t_edvecs, float, %struct.t_edx, %struct.t_edx, i32, i32*, float*, float, i32, i32*, %struct.__sFILE* }
%struct.t_edvecs = type { %struct.t_eigvec, %struct.t_eigvec, %struct.t_eigvec, %struct.t_eigvec, %struct.t_eigvec, %struct.t_eigvec }
%struct.t_eigvec = type { i32, i32*, float*, [3 x float]**, float*, float*, float*, float*, float }
%struct.t_edx = type { i32, i32*, [3 x float]*, [3 x [3 x float]] }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [32 x i8] c"ED sampling will be performed!\0A\00", align 1
@.str1 = private unnamed_addr constant [27 x i8] c"Initialising ED sampling\0A\0A\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"edi->mass\00", align 1
@.str3 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/edsam.c\00", align 1
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
  %3 = tail call float @llvm.fabs.f32(float %__x) #10
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
  %3 = tail call double @llvm.fabs.f64(double %__x) #10
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
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #10
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
  %1 = tail call float @llvm.fabs.f32(float %__x) #10
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #0 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #10
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #0 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #10
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
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #11
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
  %1 = tail call { double, double } @__sincos_stret(double %__x) #11
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
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #11
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
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #11
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !6
  store double %3, double* %__cosp, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @ed_open(i32 %nfile, %struct.t_filenm* %fnm, %struct.t_edsamyn* nocapture %edyn) #4 {
  %1 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !8
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str, i64 0, i64 0), i64 31, i64 1, %struct.__sFILE* %1)
  %3 = getelementptr inbounds %struct.t_edsamyn* %edyn, i64 0, i32 0
  store i32 1, i32* %3, align 4, !tbaa !10
  %4 = tail call i8* @ftp2fn(i32 40, i32 %nfile, %struct.t_filenm* %fnm) #11
  %5 = getelementptr inbounds %struct.t_edsamyn* %edyn, i64 0, i32 1
  store i8* %4, i8** %5, align 8, !tbaa !13
  %6 = tail call i8* @ftp2fn(i32 41, i32 %nfile, %struct.t_filenm* %fnm) #11
  %7 = getelementptr inbounds %struct.t_edsamyn* %edyn, i64 0, i32 2
  store i8* %6, i8** %7, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: optsize
declare i8* @ftp2fn(i32, i32, %struct.t_filenm*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @init_edsam(%struct.__sFILE* nocapture %log, %struct.t_topology* %top, %struct.t_mdatoms* nocapture readnone %md, i32 %start, i32 %homenr, [3 x float]* %x, [3 x float]* %box, %struct.t_edsamyn* nocapture readonly %edyn, %struct.t_edpar* %edi) #4 {
  %rotmat = alloca [3 x [3 x float]], align 16
  %1 = bitcast [3 x [3 x float]]* %rotmat to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #6
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str1, i64 0, i64 0), i64 26, i64 1, %struct.__sFILE* %log)
  %3 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 0
  %4 = load i32* %3, align 4, !tbaa !15
  tail call void @read_edi(%struct.t_edsamyn* %edyn, %struct.t_edpar* %edi, i32 %4) #12
  %5 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 2
  %6 = load i32* %5, align 4, !tbaa !21
  %7 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 16
  store float 0.000000e+00, float* %7, align 4, !tbaa !26
  %8 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 3
  %9 = load i32* %8, align 4, !tbaa !27
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %51, label %11

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 1
  %13 = load i32* %12, align 4, !tbaa !28
  %14 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 13
  store i32 %13, i32* %14, align 4, !tbaa !29
  %15 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 85, i32 %13, i32 4) #11
  %16 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 15
  %17 = bitcast float** %16 to i8**
  store i8* %15, i8** %17, align 8, !tbaa !30
  %18 = load i32* %14, align 4, !tbaa !29
  %19 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 86, i32 %18, i32 4) #11
  %20 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 14
  %21 = bitcast i32** %20 to i8**
  store i8* %19, i8** %21, align 8, !tbaa !31
  %22 = load i32* %14, align 4, !tbaa !29
  %23 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 87, i32 %22, i32 4) #11
  %24 = bitcast i8* %23 to i32*
  %25 = load i32* %14, align 4, !tbaa !29
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %.lr.ph31, label %.loopexit2

.lr.ph31:                                         ; preds = %11
  %27 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 1
  %28 = load i32** %27, align 8, !tbaa !32
  %29 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1
  %30 = load %struct.t_atom** %29, align 8, !tbaa !33
  %31 = load float** %16, align 8, !tbaa !30
  %32 = load i32** %20, align 8, !tbaa !31
  br label %33

; <label>:33                                      ; preds = %.lr.ph31, %33
  %indvars.iv46 = phi i64 [ 0, %.lr.ph31 ], [ %indvars.iv.next47, %33 ]
  %34 = getelementptr inbounds i32* %28, i64 %indvars.iv46
  %35 = load i32* %34, align 4, !tbaa !34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.t_atom* %30, i64 %36, i32 0
  %38 = bitcast float* %37 to i32*
  %39 = load i32* %38, align 4, !tbaa !35
  %40 = getelementptr inbounds float* %31, i64 %indvars.iv46
  %41 = bitcast float* %40 to i32*
  store i32 %39, i32* %41, align 4, !tbaa !2
  %42 = getelementptr inbounds i32* %32, i64 %indvars.iv46
  %43 = trunc i64 %indvars.iv46 to i32
  store i32 %43, i32* %42, align 4, !tbaa !34
  %44 = getelementptr inbounds i32* %24, i64 %indvars.iv46
  store i32 %43, i32* %44, align 4, !tbaa !34
  %45 = bitcast i32 %39 to float
  %46 = load float* %7, align 4, !tbaa !26
  %47 = fadd float %45, %46
  store float %47, float* %7, align 4, !tbaa !26
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %48 = load i32* %14, align 4, !tbaa !29
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %indvars.iv.next47, %49
  br i1 %50, label %33, label %.loopexit2

; <label>:51                                      ; preds = %0
  %52 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0
  %53 = load i32* %52, align 4, !tbaa !38
  %54 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 13
  store i32 %53, i32* %54, align 4, !tbaa !29
  %55 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 97, i32 %53, i32 4) #11
  %56 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 15
  %57 = bitcast float** %56 to i8**
  store i8* %55, i8** %57, align 8, !tbaa !30
  %58 = load i32* %54, align 4, !tbaa !29
  %59 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 98, i32 %58, i32 4) #11
  %60 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 14
  %61 = bitcast i32** %60 to i8**
  store i8* %59, i8** %61, align 8, !tbaa !31
  %62 = load i32* %54, align 4, !tbaa !29
  %63 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 99, i32 %62, i32 4) #11
  %64 = bitcast i8* %63 to i32*
  %65 = load i32* %54, align 4, !tbaa !29
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %.lr.ph28, label %.loopexit2

.lr.ph28:                                         ; preds = %51
  %67 = load float** %56, align 8, !tbaa !30
  %68 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  %69 = load i32** %68, align 8, !tbaa !39
  %70 = load i32** %60, align 8, !tbaa !31
  %71 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 0
  %72 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 1
  br label %73

; <label>:73                                      ; preds = %.lr.ph28, %._crit_edge25
  %indvars.iv44 = phi i64 [ 0, %.lr.ph28 ], [ %indvars.iv.next45, %._crit_edge25 ]
  %74 = getelementptr inbounds float* %67, i64 %indvars.iv44
  store float 1.000000e+00, float* %74, align 4, !tbaa !2
  %75 = getelementptr inbounds i32* %69, i64 %indvars.iv44
  %76 = load i32* %75, align 4, !tbaa !34
  %77 = getelementptr inbounds i32* %70, i64 %indvars.iv44
  store i32 %76, i32* %77, align 4, !tbaa !34
  %78 = load i32* %71, align 4, !tbaa !40
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %.lr.ph24, label %._crit_edge25

.lr.ph24:                                         ; preds = %73
  %80 = load i32** %72, align 8, !tbaa !32
  %81 = getelementptr inbounds i32* %64, i64 %indvars.iv44
  br label %82

; <label>:82                                      ; preds = %.lr.ph24, %90
  %83 = phi i32 [ %78, %.lr.ph24 ], [ %91, %90 ]
  %indvars.iv42 = phi i64 [ 0, %.lr.ph24 ], [ %indvars.iv.next43, %90 ]
  %84 = getelementptr inbounds i32* %80, i64 %indvars.iv42
  %85 = load i32* %84, align 4, !tbaa !34
  %86 = load i32* %75, align 4, !tbaa !34
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %90

; <label>:88                                      ; preds = %82
  %89 = trunc i64 %indvars.iv42 to i32
  store i32 %89, i32* %81, align 4, !tbaa !34
  %.pre = load i32* %71, align 4, !tbaa !40
  br label %90

; <label>:90                                      ; preds = %82, %88
  %91 = phi i32 [ %83, %82 ], [ %.pre, %88 ]
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %92 = sext i32 %91 to i64
  %93 = icmp slt i64 %indvars.iv.next43, %92
  br i1 %93, label %82, label %._crit_edge25

._crit_edge25:                                    ; preds = %90, %73
  %94 = load float* %7, align 4, !tbaa !26
  %95 = fadd float %94, 1.000000e+00
  store float %95, float* %7, align 4, !tbaa !26
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %96 = load i32* %54, align 4, !tbaa !29
  %97 = sext i32 %96 to i64
  %98 = icmp slt i64 %indvars.iv.next45, %97
  br i1 %98, label %73, label %.loopexit2

.loopexit2:                                       ; preds = %33, %._crit_edge25, %11, %51
  %refmasnrs.0 = phi i32* [ %64, %51 ], [ %24, %11 ], [ %64, %._crit_edge25 ], [ %24, %33 ]
  %99 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 17
  store i32 0, i32* %99, align 4, !tbaa !41
  %100 = icmp sgt i32 %6, 0
  br i1 %100, label %.lr.ph20, label %._crit_edge21

.lr.ph20:                                         ; preds = %.loopexit2
  %101 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 2
  %102 = add i32 %6, -1
  %.pre48 = load i8**** %101, align 8, !tbaa !42
  br label %103

; <label>:103                                     ; preds = %112, %.lr.ph20
  %104 = phi i32 [ 0, %.lr.ph20 ], [ %113, %112 ]
  %indvars.iv38 = phi i64 [ 0, %.lr.ph20 ], [ %indvars.iv.next39, %112 ]
  %105 = getelementptr inbounds i8*** %.pre48, i64 %indvars.iv38
  %106 = load i8*** %105, align 8, !tbaa !8
  %107 = load i8** %106, align 8, !tbaa !8
  %108 = tail call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0)) #11
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

; <label>:110                                     ; preds = %103
  %111 = add nsw i32 %104, 1
  store i32 %111, i32* %99, align 4, !tbaa !41
  br label %112

; <label>:112                                     ; preds = %103, %110
  %113 = phi i32 [ %104, %103 ], [ %111, %110 ]
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %lftr.wideiv40 = trunc i64 %indvars.iv38 to i32
  %exitcond41 = icmp eq i32 %lftr.wideiv40, %102
  br i1 %exitcond41, label %._crit_edge21, label %103

._crit_edge21:                                    ; preds = %112, %.loopexit2
  %114 = phi i32 [ 0, %.loopexit2 ], [ %113, %112 ]
  %115 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([19 x i8]* @.str7, i64 0, i64 0), i32 %114) #11
  %116 = load i32* %99, align 4, !tbaa !41
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %136

; <label>:118                                     ; preds = %._crit_edge21
  %119 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0
  %120 = load i32* %119, align 4, !tbaa !38
  store i32 %120, i32* %99, align 4, !tbaa !41
  %121 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 120, i32 %120, i32 4) #11
  %122 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 18
  %123 = bitcast i32** %122 to i8**
  store i8* %121, i8** %123, align 8, !tbaa !43
  %124 = load i32* %99, align 4, !tbaa !41
  %125 = icmp sgt i32 %124, 0
  %126 = bitcast i8* %121 to i32*
  br i1 %125, label %.lr.ph13, label %.loopexit

.lr.ph13:                                         ; preds = %118
  %127 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  %128 = load i32** %127, align 8, !tbaa !39
  br label %129

; <label>:129                                     ; preds = %.lr.ph13, %129
  %indvars.iv34 = phi i64 [ 0, %.lr.ph13 ], [ %indvars.iv.next35, %129 ]
  %130 = getelementptr inbounds i32* %128, i64 %indvars.iv34
  %131 = load i32* %130, align 4, !tbaa !34
  %132 = getelementptr inbounds i32* %126, i64 %indvars.iv34
  store i32 %131, i32* %132, align 4, !tbaa !34
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %133 = load i32* %99, align 4, !tbaa !41
  %134 = sext i32 %133 to i64
  %135 = icmp slt i64 %indvars.iv.next35, %134
  br i1 %135, label %129, label %.loopexit

; <label>:136                                     ; preds = %._crit_edge21
  %137 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 126, i32 %116, i32 4) #11
  %138 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 18
  %139 = bitcast i32** %138 to i8**
  store i8* %137, i8** %139, align 8, !tbaa !43
  %140 = bitcast i8* %137 to i32*
  br i1 %100, label %.lr.ph17, label %.loopexit

.lr.ph17:                                         ; preds = %136
  %141 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 2
  %142 = add i32 %6, -1
  %.pre49 = load i8**** %141, align 8, !tbaa !42
  br label %143

; <label>:143                                     ; preds = %154, %.lr.ph17
  %indvars.iv36 = phi i64 [ 0, %.lr.ph17 ], [ %indvars.iv.next37, %154 ]
  %j.114 = phi i32 [ 0, %.lr.ph17 ], [ %j.2, %154 ]
  %144 = getelementptr inbounds i8*** %.pre49, i64 %indvars.iv36
  %145 = load i8*** %144, align 8, !tbaa !8
  %146 = load i8** %145, align 8, !tbaa !8
  %147 = tail call i32 @strcmp(i8* %146, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0)) #11
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %._crit_edge51

._crit_edge51:                                    ; preds = %143
  %.pre52 = trunc i64 %indvars.iv36 to i32
  br label %154

; <label>:149                                     ; preds = %143
  %150 = sext i32 %j.114 to i64
  %151 = getelementptr inbounds i32* %140, i64 %150
  %152 = trunc i64 %indvars.iv36 to i32
  store i32 %152, i32* %151, align 4, !tbaa !34
  %153 = add nsw i32 %j.114, 1
  br label %154

; <label>:154                                     ; preds = %._crit_edge51, %149
  %lftr.wideiv.pre-phi = phi i32 [ %.pre52, %._crit_edge51 ], [ %152, %149 ]
  %j.2 = phi i32 [ %j.114, %._crit_edge51 ], [ %153, %149 ]
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %exitcond = icmp eq i32 %lftr.wideiv.pre-phi, %142
  br i1 %exitcond, label %.loopexit, label %143

.loopexit:                                        ; preds = %154, %129, %136, %118
  %155 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 0
  %156 = load i32* %155, align 4, !tbaa !40
  %157 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 2
  %158 = load [3 x float]** %157, align 8, !tbaa !44
  %159 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 13
  %160 = load i32* %159, align 4, !tbaa !29
  %161 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 15
  %162 = load float** %161, align 8, !tbaa !30
  %163 = load float* %7, align 4, !tbaa !26
  tail call void @put_in_origin(i32 %156, [3 x float]* %158, i32 %160, i32* %refmasnrs.0, float* %162, float %163) #12
  %164 = load i32* %99, align 4, !tbaa !41
  %165 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 142, i32 %164, i32 12) #11
  %166 = bitcast i8* %165 to [3 x float]*
  %167 = load i32* %155, align 4, !tbaa !40
  %168 = icmp sgt i32 %167, 0
  %169 = load i32* %99, align 4, !tbaa !41
  br i1 %168, label %.lr.ph8, label %._crit_edge9

.lr.ph8:                                          ; preds = %.loopexit
  %170 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 1
  %171 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 18
  %172 = sext i32 %167 to i64
  br label %173

; <label>:173                                     ; preds = %.lr.ph8, %202
  %indvars.iv32 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next33, %202 ]
  %j.35 = phi i32 [ 0, %.lr.ph8 ], [ %j.4, %202 ]
  %174 = icmp slt i32 %j.35, %169
  br i1 %174, label %175, label %202

; <label>:175                                     ; preds = %173
  %176 = load i32** %170, align 8, !tbaa !32
  %177 = getelementptr inbounds i32* %176, i64 %indvars.iv32
  %178 = load i32* %177, align 4, !tbaa !34
  %179 = sext i32 %j.35 to i64
  %180 = load i32** %171, align 8, !tbaa !43
  %181 = getelementptr inbounds i32* %180, i64 %179
  %182 = load i32* %181, align 4, !tbaa !34
  %183 = icmp eq i32 %178, %182
  br i1 %183, label %184, label %202

; <label>:184                                     ; preds = %175
  %185 = load [3 x float]** %157, align 8, !tbaa !44
  %186 = getelementptr inbounds [3 x float]* %185, i64 %indvars.iv32, i64 0
  %187 = getelementptr inbounds [3 x float]* %166, i64 %179, i64 0
  %188 = bitcast float* %186 to i32*
  %189 = load i32* %188, align 4, !tbaa !2
  %190 = bitcast float* %187 to i32*
  store i32 %189, i32* %190, align 4, !tbaa !2
  %191 = getelementptr inbounds [3 x float]* %185, i64 %indvars.iv32, i64 1
  %192 = bitcast float* %191 to i32*
  %193 = load i32* %192, align 4, !tbaa !2
  %194 = getelementptr inbounds [3 x float]* %166, i64 %179, i64 1
  %195 = bitcast float* %194 to i32*
  store i32 %193, i32* %195, align 4, !tbaa !2
  %196 = getelementptr inbounds [3 x float]* %185, i64 %indvars.iv32, i64 2
  %197 = bitcast float* %196 to i32*
  %198 = load i32* %197, align 4, !tbaa !2
  %199 = getelementptr inbounds [3 x float]* %166, i64 %179, i64 2
  %200 = bitcast float* %199 to i32*
  store i32 %198, i32* %200, align 4, !tbaa !2
  %201 = add nsw i32 %j.35, 1
  br label %202

; <label>:202                                     ; preds = %173, %184, %175
  %j.4 = phi i32 [ %201, %184 ], [ %j.35, %175 ], [ %j.35, %173 ]
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %203 = icmp slt i64 %indvars.iv.next33, %172
  br i1 %203, label %173, label %._crit_edge9

._crit_edge9:                                     ; preds = %202, %.loopexit
  %j.3.lcssa = phi i32 [ 0, %.loopexit ], [ %j.4, %202 ]
  %204 = icmp eq i32 %j.3.lcssa, %169
  br i1 %204, label %206, label %205

; <label>:205                                     ; preds = %._crit_edge9
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([39 x i8]* @.str10, i64 0, i64 0), i32 %j.3.lcssa, i32 %169) #11
  %.pre50 = load i32* %99, align 4, !tbaa !41
  br label %206

; <label>:206                                     ; preds = %._crit_edge9, %205
  %207 = phi i32 [ %169, %._crit_edge9 ], [ %.pre50, %205 ]
  store i32 %207, i32* %155, align 4, !tbaa !40
  %208 = bitcast [3 x float]** %157 to i8**
  %209 = load i8** %208, align 8, !tbaa !44
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 155, i8* %209) #11
  %210 = load i32* %99, align 4, !tbaa !41
  %211 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 156, i32 %210, i32 12) #11
  store i8* %211, i8** %208, align 8, !tbaa !44
  %212 = load i32* %99, align 4, !tbaa !41
  %213 = icmp sgt i32 %212, 0
  %214 = bitcast i8* %211 to [3 x float]*
  br i1 %213, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %206
  %215 = sext i32 %212 to i64
  br label %216

; <label>:216                                     ; preds = %.lr.ph, %216
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %216 ]
  %217 = getelementptr inbounds [3 x float]* %166, i64 %indvars.iv, i64 0
  %218 = getelementptr inbounds [3 x float]* %214, i64 %indvars.iv, i64 0
  %219 = bitcast float* %217 to i32*
  %220 = load i32* %219, align 4, !tbaa !2
  %221 = bitcast float* %218 to i32*
  store i32 %220, i32* %221, align 4, !tbaa !2
  %222 = getelementptr inbounds [3 x float]* %166, i64 %indvars.iv, i64 1
  %223 = bitcast float* %222 to i32*
  %224 = load i32* %223, align 4, !tbaa !2
  %225 = getelementptr inbounds [3 x float]* %214, i64 %indvars.iv, i64 1
  %226 = bitcast float* %225 to i32*
  store i32 %224, i32* %226, align 4, !tbaa !2
  %227 = getelementptr inbounds [3 x float]* %166, i64 %indvars.iv, i64 2
  %228 = bitcast float* %227 to i32*
  %229 = load i32* %228, align 4, !tbaa !2
  %230 = getelementptr inbounds [3 x float]* %214, i64 %indvars.iv, i64 2
  %231 = bitcast float* %230 to i32*
  store i32 %229, i32* %231, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %232 = icmp slt i64 %indvars.iv.next, %215
  br i1 %232, label %216, label %._crit_edge

._crit_edge:                                      ; preds = %216, %206
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 159, i8* %165) #11
  %233 = load i32* %3, align 4, !tbaa !15
  %234 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 162, i32 %233, i32 12) #11
  %235 = bitcast i8* %234 to [3 x float]*
  %236 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1
  %237 = load i32* %3, align 4, !tbaa !15
  tail call void @rm_pbc(%struct.t_idef* %236, i32 %237, [3 x float]* %box, [3 x float]* %x, [3 x float]* %235) #11
  %238 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 166, i32 %6, i32 12) #11
  %239 = bitcast i8* %238 to [3 x float]*
  %240 = getelementptr inbounds [3 x [3 x float]]* %rotmat, i64 0, i64 0
  %241 = call float @fitit(i32 %6, [3 x float]* %235, %struct.t_edpar* %edi, [3 x float]* %239, [3 x float]* %240) #12
  %242 = fpext float %241 to double
  %243 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([52 x i8]* @.str13, i64 0, i64 0), double %242) #11
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 169, i8* %238) #11
  tail call void @project([3 x float]* %235, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #12
  %244 = tail call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str15, i64 0, i64 0), i64 21, i64 1, %struct.__sFILE* %log)
  tail call void @write_edidx(%struct.__sFILE* %log, %struct.t_edpar* %edi) #12
  %245 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 11, i32 0
  %246 = load i32* %245, align 4, !tbaa !45
  %247 = icmp sgt i32 %246, 0
  br i1 %247, label %248, label %254

; <label>:248                                     ; preds = %._crit_edge
  %249 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 11, i32 2
  %250 = load [3 x float]** %249, align 8, !tbaa !46
  %251 = call float @fitit(i32 %6, [3 x float]* %250, %struct.t_edpar* %edi, [3 x float]* %239, [3 x float]* %240) #12
  %252 = load [3 x float]** %249, align 8, !tbaa !46
  %253 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5
  tail call void @projectx(%struct.t_edpar* %edi, [3 x float]* %252, %struct.t_eigvec* %253) #12
  br label %254

; <label>:254                                     ; preds = %248, %._crit_edge
  %255 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 12, i32 0
  %256 = load i32* %255, align 4, !tbaa !47
  %257 = icmp sgt i32 %256, 0
  br i1 %257, label %258, label %266

; <label>:258                                     ; preds = %254
  %259 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 12, i32 2
  %260 = load [3 x float]** %259, align 8, !tbaa !48
  %261 = call float @fitit(i32 %6, [3 x float]* %260, %struct.t_edpar* %edi, [3 x float]* %239, [3 x float]* %240) #12
  %262 = load [3 x float]** %259, align 8, !tbaa !48
  %263 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4
  tail call void @projectx(%struct.t_edpar* %edi, [3 x float]* %262, %struct.t_eigvec* %263) #12
  %264 = load [3 x float]** %259, align 8, !tbaa !48
  %265 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3
  tail call void @projectx(%struct.t_edpar* %edi, [3 x float]* %264, %struct.t_eigvec* %265) #12
  br label %269

; <label>:266                                     ; preds = %254
  %267 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4
  tail call void @projectx(%struct.t_edpar* %edi, [3 x float]* %235, %struct.t_eigvec* %267) #12
  %268 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3
  tail call void @projectx(%struct.t_edpar* %edi, [3 x float]* %235, %struct.t_eigvec* %268) #12
  br label %269

; <label>:269                                     ; preds = %266, %258
  %270 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2
  tail call void @projectx(%struct.t_edpar* %edi, [3 x float]* %235, %struct.t_eigvec* %270) #12
  %271 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1
  tail call void @projectx(%struct.t_edpar* %edi, [3 x float]* %235, %struct.t_eigvec* %271) #12
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 196, i8* %234) #11
  %272 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 8
  %273 = load float* %272, align 4, !tbaa !49
  %274 = fpext float %273 to double
  %275 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([35 x i8]* @.str16, i64 0, i64 0), double %274) #11
  %276 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 8
  %277 = load float* %276, align 4, !tbaa !50
  %278 = fpext float %277 to double
  %279 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([35 x i8]* @.str17, i64 0, i64 0), double %278) #11
  %280 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 8
  %281 = load float* %280, align 4, !tbaa !51
  %282 = fpext float %281 to double
  %283 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([35 x i8]* @.str18, i64 0, i64 0), double %282) #11
  %284 = tail call i32 @fflush(%struct.__sFILE* %log) #11
  %285 = getelementptr inbounds %struct.t_edsamyn* %edyn, i64 0, i32 2
  %286 = load i8** %285, align 8, !tbaa !14
  %287 = tail call %struct.__sFILE* @ffopen(i8* %286, i8* getelementptr inbounds ([2 x i8]* @.str19, i64 0, i64 0)) #11
  %288 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 19
  store %struct.__sFILE* %287, %struct.__sFILE** %288, align 8, !tbaa !52
  tail call void @write_edidx(%struct.__sFILE* %287, %struct.t_edpar* %edi) #12
  call void @llvm.lifetime.end(i64 36, i8* %1) #6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize ssp uwtable
define void @read_edi(%struct.t_edsamyn* nocapture readonly %edyn, %struct.t_edpar* %edi, i32 %nr_mdatoms) #4 {
  %1 = getelementptr inbounds %struct.t_edsamyn* %edyn, i64 0, i32 1
  %2 = load i8** %1, align 8, !tbaa !13
  %3 = tail call %struct.__sFILE* @ffopen(i8* %2, i8* getelementptr inbounds ([2 x i8]* @.str20, i64 0, i64 0)) #11
  %4 = tail call i32 @read_edint(%struct.__sFILE* %3) #12
  %5 = icmp eq i32 %4, 666
  br i1 %5, label %8, label %6

; <label>:6                                       ; preds = %0
  %7 = load i8** %1, align 8, !tbaa !13
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([25 x i8]* @.str21, i64 0, i64 0), i8* %7) #11
  br label %8

; <label>:8                                       ; preds = %0, %6
  %9 = tail call i32 @read_edint(%struct.__sFILE* %3) #12
  %10 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 0
  store i32 %9, i32* %10, align 4, !tbaa !53
  %11 = icmp eq i32 %9, %nr_mdatoms
  br i1 %11, label %14, label %12

; <label>:12                                      ; preds = %8
  %13 = load i8** %1, align 8, !tbaa !13
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([58 x i8]* @.str22, i64 0, i64 0), i8* %13, i32 %9, i32 %nr_mdatoms) #11
  br label %14

; <label>:14                                      ; preds = %8, %12
  %15 = tail call i32 @read_edint(%struct.__sFILE* %3) #12
  %16 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 1
  store i32 %15, i32* %16, align 4, !tbaa !28
  %17 = tail call i32 @read_edint(%struct.__sFILE* %3) #12
  %18 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 3
  %not. = icmp ne i32 %17, 0
  %. = zext i1 %not. to i32
  store i32 %., i32* %18, align 4, !tbaa !27
  %19 = tail call i32 @read_edint(%struct.__sFILE* %3) #12
  %20 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 4
  store i32 %19, i32* %20, align 4, !tbaa !54
  %21 = tail call i32 @read_edint(%struct.__sFILE* %3) #12
  %22 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 5
  store i32 %21, i32* %22, align 4, !tbaa !55
  %23 = tail call i32 @read_edint(%struct.__sFILE* %3) #12
  %24 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 6
  store i32 %23, i32* %24, align 4, !tbaa !56
  %25 = tail call float @read_edreal(%struct.__sFILE* %3) #12
  %26 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 10
  store float %25, float* %26, align 4, !tbaa !57
  %27 = tail call i32 @read_edint(%struct.__sFILE* %3) #12
  %28 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 0
  store i32 %27, i32* %28, align 4, !tbaa !40
  %29 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 242, i32 %27, i32 4) #11
  %30 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 1
  %31 = bitcast i32** %30 to i8**
  store i8* %29, i8** %31, align 8, !tbaa !32
  %32 = load i32* %28, align 4, !tbaa !40
  %33 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 243, i32 %32, i32 12) #11
  %34 = bitcast i8* %33 to [3 x float]*
  %35 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 2
  %36 = bitcast [3 x float]** %35 to i8**
  store i8* %33, i8** %36, align 8, !tbaa !44
  %37 = load i32* %28, align 4, !tbaa !40
  %38 = load i32** %30, align 8, !tbaa !32
  tail call void @read_edx(%struct.__sFILE* %3, i32 %37, i32* %38, [3 x float]* %34) #12
  %39 = tail call i32 @read_edint(%struct.__sFILE* %3) #12
  %40 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0
  store i32 %39, i32* %40, align 4, !tbaa !38
  %41 = tail call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 248, i32 %39, i32 4) #11
  %42 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  %43 = bitcast i32** %42 to i8**
  store i8* %41, i8** %43, align 8, !tbaa !39
  %44 = load i32* %40, align 4, !tbaa !38
  %45 = tail call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 249, i32 %44, i32 12) #11
  %46 = bitcast i8* %45 to [3 x float]*
  %47 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 2
  %48 = bitcast [3 x float]** %47 to i8**
  store i8* %45, i8** %48, align 8, !tbaa !58
  %49 = load i32* %40, align 4, !tbaa !38
  %50 = load i32** %42, align 8, !tbaa !39
  tail call void @read_edx(%struct.__sFILE* %3, i32 %49, i32* %50, [3 x float]* %46) #12
  %51 = tail call i32 @read_edint(%struct.__sFILE* %3) #12
  %52 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 2
  store i32 %51, i32* %52, align 4, !tbaa !21
  %53 = load i32* %40, align 4, !tbaa !38
  %54 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9
  tail call void @read_edvecs(%struct.__sFILE* %3, i32 %53, %struct.t_edvecs* %54) #12
  %55 = tail call i32 @read_edint(%struct.__sFILE* %3) #12
  %56 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 11, i32 0
  store i32 %55, i32* %56, align 4, !tbaa !45
  %57 = icmp sgt i32 %55, 0
  br i1 %57, label %58, label %101

; <label>:58                                      ; preds = %14
  %59 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 261, i32 %55, i32 4) #11
  %60 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 11, i32 1
  %61 = bitcast i32** %60 to i8**
  store i8* %59, i8** %61, align 8, !tbaa !59
  %62 = load i32* %56, align 4, !tbaa !45
  %63 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 262, i32 %62, i32 12) #11
  %64 = bitcast i8* %63 to [3 x float]*
  %65 = load i32* %56, align 4, !tbaa !45
  %66 = load i32** %60, align 8, !tbaa !59
  tail call void @read_edx(%struct.__sFILE* %3, i32 %65, i32* %66, [3 x float]* %64) #12
  %67 = load i32* %52, align 4, !tbaa !21
  %68 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 264, i32 %67, i32 12) #11
  %69 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 11, i32 2
  %70 = bitcast [3 x float]** %69 to i8**
  store i8* %68, i8** %70, align 8, !tbaa !46
  %71 = load i32* %52, align 4, !tbaa !21
  %72 = icmp sgt i32 %71, 0
  %73 = bitcast i8* %68 to [3 x float]*
  br i1 %72, label %.lr.ph6, label %._crit_edge7

.lr.ph6:                                          ; preds = %58
  %74 = load i32** %60, align 8, !tbaa !59
  %75 = sext i32 %71 to i64
  br label %76

; <label>:76                                      ; preds = %.lr.ph6, %99
  %indvars.iv8 = phi i64 [ 0, %.lr.ph6 ], [ %indvars.iv.next9, %99 ]
  %j.03 = phi i32 [ 0, %.lr.ph6 ], [ %j.1, %99 ]
  %77 = sext i32 %j.03 to i64
  %78 = getelementptr inbounds i32* %74, i64 %77
  %79 = load i32* %78, align 4, !tbaa !34
  %80 = trunc i64 %indvars.iv8 to i32
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %99

; <label>:82                                      ; preds = %76
  %83 = getelementptr inbounds [3 x float]* %64, i64 %77, i64 0
  %84 = getelementptr inbounds [3 x float]* %73, i64 %indvars.iv8, i64 0
  %85 = bitcast float* %83 to i32*
  %86 = load i32* %85, align 4, !tbaa !2
  %87 = bitcast float* %84 to i32*
  store i32 %86, i32* %87, align 4, !tbaa !2
  %88 = getelementptr inbounds [3 x float]* %64, i64 %77, i64 1
  %89 = bitcast float* %88 to i32*
  %90 = load i32* %89, align 4, !tbaa !2
  %91 = getelementptr inbounds [3 x float]* %73, i64 %indvars.iv8, i64 1
  %92 = bitcast float* %91 to i32*
  store i32 %90, i32* %92, align 4, !tbaa !2
  %93 = getelementptr inbounds [3 x float]* %64, i64 %77, i64 2
  %94 = bitcast float* %93 to i32*
  %95 = load i32* %94, align 4, !tbaa !2
  %96 = getelementptr inbounds [3 x float]* %73, i64 %indvars.iv8, i64 2
  %97 = bitcast float* %96 to i32*
  store i32 %95, i32* %97, align 4, !tbaa !2
  %98 = add nsw i32 %j.03, 1
  br label %99

; <label>:99                                      ; preds = %76, %82
  %j.1 = phi i32 [ %98, %82 ], [ %j.03, %76 ]
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  %100 = icmp slt i64 %indvars.iv.next9, %75
  br i1 %100, label %76, label %._crit_edge7

._crit_edge7:                                     ; preds = %99, %58
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 272, i8* %63) #11
  br label %101

; <label>:101                                     ; preds = %._crit_edge7, %14
  %102 = tail call i32 @read_edint(%struct.__sFILE* %3) #12
  %103 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 12, i32 0
  store i32 %102, i32* %103, align 4, !tbaa !47
  %104 = icmp sgt i32 %102, 0
  br i1 %104, label %105, label %148

; <label>:105                                     ; preds = %101
  %106 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 278, i32 %102, i32 4) #11
  %107 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 12, i32 1
  %108 = bitcast i32** %107 to i8**
  store i8* %106, i8** %108, align 8, !tbaa !60
  %109 = load i32* %103, align 4, !tbaa !47
  %110 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 279, i32 %109, i32 12) #11
  %111 = bitcast i8* %110 to [3 x float]*
  %112 = load i32* %103, align 4, !tbaa !47
  %113 = load i32** %107, align 8, !tbaa !60
  tail call void @read_edx(%struct.__sFILE* %3, i32 %112, i32* %113, [3 x float]* %111) #12
  %114 = load i32* %52, align 4, !tbaa !21
  %115 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 281, i32 %114, i32 12) #11
  %116 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 12, i32 2
  %117 = bitcast [3 x float]** %116 to i8**
  store i8* %115, i8** %117, align 8, !tbaa !48
  %118 = load i32* %52, align 4, !tbaa !21
  %119 = icmp sgt i32 %118, 0
  %120 = bitcast i8* %115 to [3 x float]*
  br i1 %119, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %105
  %121 = load i32** %107, align 8, !tbaa !60
  %122 = sext i32 %118 to i64
  br label %123

; <label>:123                                     ; preds = %.lr.ph, %146
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %146 ]
  %j.21 = phi i32 [ 0, %.lr.ph ], [ %j.3, %146 ]
  %124 = sext i32 %j.21 to i64
  %125 = getelementptr inbounds i32* %121, i64 %124
  %126 = load i32* %125, align 4, !tbaa !34
  %127 = trunc i64 %indvars.iv to i32
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %146

; <label>:129                                     ; preds = %123
  %130 = getelementptr inbounds [3 x float]* %111, i64 %124, i64 0
  %131 = getelementptr inbounds [3 x float]* %120, i64 %indvars.iv, i64 0
  %132 = bitcast float* %130 to i32*
  %133 = load i32* %132, align 4, !tbaa !2
  %134 = bitcast float* %131 to i32*
  store i32 %133, i32* %134, align 4, !tbaa !2
  %135 = getelementptr inbounds [3 x float]* %111, i64 %124, i64 1
  %136 = bitcast float* %135 to i32*
  %137 = load i32* %136, align 4, !tbaa !2
  %138 = getelementptr inbounds [3 x float]* %120, i64 %indvars.iv, i64 1
  %139 = bitcast float* %138 to i32*
  store i32 %137, i32* %139, align 4, !tbaa !2
  %140 = getelementptr inbounds [3 x float]* %111, i64 %124, i64 2
  %141 = bitcast float* %140 to i32*
  %142 = load i32* %141, align 4, !tbaa !2
  %143 = getelementptr inbounds [3 x float]* %120, i64 %indvars.iv, i64 2
  %144 = bitcast float* %143 to i32*
  store i32 %142, i32* %144, align 4, !tbaa !2
  %145 = add nsw i32 %j.21, 1
  br label %146

; <label>:146                                     ; preds = %123, %129
  %j.3 = phi i32 [ %145, %129 ], [ %j.21, %123 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %147 = icmp slt i64 %indvars.iv.next, %122
  br i1 %147, label %123, label %._crit_edge

._crit_edge:                                      ; preds = %146, %105
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 289, i8* %110) #11
  br label %148

; <label>:148                                     ; preds = %._crit_edge, %101
  tail call void @ffclose(%struct.__sFILE* %3) #11
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #7

; Function Attrs: nounwind optsize ssp uwtable
define void @put_in_origin(i32 %nr, [3 x float]* nocapture %x, i32 %nmass, i32* nocapture readonly %masnrs, float* nocapture readonly %mass, float %tmass) #4 {
.preheader3:
  %cm = alloca [3 x float], align 4
  %cm22 = bitcast [3 x float]* %cm to i8*
  call void @llvm.memset.p0i8.i64(i8* %cm22, i8 0, i64 12, i32 4, i1 false)
  %0 = icmp sgt i32 %nmass, 0
  br i1 %0, label %.preheader2.lr.ph, label %.preheader1

.preheader2.lr.ph:                                ; preds = %.preheader3
  %1 = add i32 %nmass, -1
  br label %.preheader2

.preheader2:                                      ; preds = %14, %.preheader2.lr.ph
  %indvars.iv15 = phi i64 [ 0, %.preheader2.lr.ph ], [ %indvars.iv.next16, %14 ]
  %2 = getelementptr inbounds i32* %masnrs, i64 %indvars.iv15
  %3 = load i32* %2, align 4, !tbaa !34
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds float* %mass, i64 %indvars.iv15
  %6 = load float* %5, align 4, !tbaa !2
  br label %7

; <label>:7                                       ; preds = %7, %.preheader2
  %indvars.iv12 = phi i64 [ 0, %.preheader2 ], [ %indvars.iv.next13, %7 ]
  %8 = getelementptr inbounds [3 x float]* %x, i64 %4, i64 %indvars.iv12
  %9 = load float* %8, align 4, !tbaa !2
  %10 = fmul float %9, %6
  %11 = getelementptr inbounds [3 x float]* %cm, i64 0, i64 %indvars.iv12
  %12 = load float* %11, align 4, !tbaa !2
  %13 = fadd float %12, %10
  store float %13, float* %11, align 4, !tbaa !2
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %exitcond14 = icmp eq i64 %indvars.iv.next13, 3
  br i1 %exitcond14, label %14, label %7

; <label>:14                                      ; preds = %7
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %lftr.wideiv17 = trunc i64 %indvars.iv15 to i32
  %exitcond18 = icmp eq i32 %lftr.wideiv17, %1
  br i1 %exitcond18, label %.preheader1, label %.preheader2

.preheader:                                       ; preds = %.preheader1
  %15 = icmp sgt i32 %nr, 0
  br i1 %15, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %16 = getelementptr inbounds [3 x float]* %cm, i64 0, i64 0
  %17 = load float* %16, align 4, !tbaa !2
  %18 = getelementptr inbounds [3 x float]* %cm, i64 0, i64 1
  %19 = load float* %18, align 4, !tbaa !2
  %20 = getelementptr inbounds [3 x float]* %cm, i64 0, i64 2
  %21 = load float* %20, align 4, !tbaa !2
  %22 = add i32 %nr, -1
  br label %26

.preheader1:                                      ; preds = %.preheader3, %14, %.preheader1
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %.preheader1 ], [ 0, %14 ], [ 0, %.preheader3 ]
  %23 = getelementptr inbounds [3 x float]* %cm, i64 0, i64 %indvars.iv9
  %24 = load float* %23, align 4, !tbaa !2
  %25 = fdiv float %24, %tmass
  store float %25, float* %23, align 4, !tbaa !2
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  %exitcond11 = icmp eq i64 %indvars.iv.next10, 3
  br i1 %exitcond11, label %.preheader, label %.preheader1

; <label>:26                                      ; preds = %26, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %26 ]
  %27 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %28 = load float* %27, align 4, !tbaa !2
  %29 = fsub float %28, %17
  %30 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  %31 = load float* %30, align 4, !tbaa !2
  %32 = fsub float %31, %19
  %33 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  %34 = load float* %33, align 4, !tbaa !2
  %35 = fsub float %34, %21
  store float %29, float* %27, align 4, !tbaa !2
  store float %32, float* %30, align 4, !tbaa !2
  store float %35, float* %33, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %22
  br i1 %exitcond, label %._crit_edge, label %26

._crit_edge:                                      ; preds = %26, %.preheader
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #3

; Function Attrs: optsize
declare void @rm_pbc(%struct.t_idef*, i32, [3 x float]*, [3 x float]*, [3 x float]*) #3

; Function Attrs: nounwind optsize ssp uwtable
define float @fitit(i32 %nr, [3 x float]* nocapture %x, %struct.t_edpar* nocapture readonly %edi, [3 x float]* nocapture %transvec, [3 x float]* nocapture %rmat) #4 {
  %x_old = alloca [3 x float], align 4
  %x_old32 = bitcast [3 x float]* %x_old to i8*
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 400, i32 %nr, i32 12) #11
  %2 = bitcast i8* %1 to [3 x float]*
  %3 = icmp sgt i32 %nr, 0
  br i1 %3, label %.lr.ph24, label %._crit_edge21.critedge

.lr.ph24:                                         ; preds = %0
  %4 = add i32 %nr, -1
  br label %5

; <label>:5                                       ; preds = %5, %.lr.ph24
  %indvars.iv51 = phi i64 [ 0, %.lr.ph24 ], [ %indvars.iv.next52, %5 ]
  %6 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv51, i64 0
  %7 = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv51, i64 0
  %8 = bitcast float* %6 to i32*
  %9 = load i32* %8, align 4, !tbaa !2
  %10 = bitcast float* %7 to i32*
  store i32 %9, i32* %10, align 4, !tbaa !2
  %11 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv51, i64 1
  %12 = bitcast float* %11 to i32*
  %13 = load i32* %12, align 4, !tbaa !2
  %14 = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv51, i64 1
  %15 = bitcast float* %14 to i32*
  store i32 %13, i32* %15, align 4, !tbaa !2
  %16 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv51, i64 2
  %17 = bitcast float* %16 to i32*
  %18 = load i32* %17, align 4, !tbaa !2
  %19 = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv51, i64 2
  %20 = bitcast float* %19 to i32*
  store i32 %18, i32* %20, align 4, !tbaa !2
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %lftr.wideiv53 = trunc i64 %indvars.iv51 to i32
  %exitcond54 = icmp eq i32 %lftr.wideiv53, %4
  br i1 %exitcond54, label %._crit_edge25, label %5

._crit_edge25:                                    ; preds = %5
  %21 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 13
  %22 = load i32* %21, align 4, !tbaa !29
  %23 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 14
  %24 = load i32** %23, align 8, !tbaa !31
  %25 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 15
  %26 = load float** %25, align 8, !tbaa !30
  %27 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 16
  %28 = load float* %27, align 4, !tbaa !26
  tail call void @put_in_origin(i32 %nr, [3 x float]* %x, i32 %22, i32* %24, float* %26, float %28) #12
  br i1 %3, label %.lr.ph20, label %._crit_edge21

.lr.ph20:                                         ; preds = %._crit_edge25
  %29 = add i32 %nr, -1
  br label %30

; <label>:30                                      ; preds = %30, %.lr.ph20
  %indvars.iv47 = phi i64 [ 0, %.lr.ph20 ], [ %indvars.iv.next48, %30 ]
  %31 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv47, i64 0
  %32 = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv47, i64 0
  %33 = getelementptr inbounds [3 x float]* %transvec, i64 %indvars.iv47, i64 0
  %34 = load float* %31, align 4, !tbaa !2
  %35 = load float* %32, align 4, !tbaa !2
  %36 = fsub float %34, %35
  %37 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv47, i64 1
  %38 = load float* %37, align 4, !tbaa !2
  %39 = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv47, i64 1
  %40 = load float* %39, align 4, !tbaa !2
  %41 = fsub float %38, %40
  %42 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv47, i64 2
  %43 = load float* %42, align 4, !tbaa !2
  %44 = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv47, i64 2
  %45 = load float* %44, align 4, !tbaa !2
  %46 = fsub float %43, %45
  store float %36, float* %33, align 4, !tbaa !2
  %47 = getelementptr inbounds [3 x float]* %transvec, i64 %indvars.iv47, i64 1
  store float %41, float* %47, align 4, !tbaa !2
  %48 = getelementptr inbounds [3 x float]* %transvec, i64 %indvars.iv47, i64 2
  store float %46, float* %48, align 4, !tbaa !2
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %lftr.wideiv49 = trunc i64 %indvars.iv47 to i32
  %exitcond50 = icmp eq i32 %lftr.wideiv49, %29
  br i1 %exitcond50, label %._crit_edge21, label %30

._crit_edge21.critedge:                           ; preds = %0
  %49 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 13
  %50 = load i32* %49, align 4, !tbaa !29
  %51 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 14
  %52 = load i32** %51, align 8, !tbaa !31
  %53 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 15
  %54 = load float** %53, align 8, !tbaa !30
  %55 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 16
  %56 = load float* %55, align 4, !tbaa !26
  tail call void @put_in_origin(i32 %nr, [3 x float]* %x, i32 %50, i32* %52, float* %54, float %56) #12
  br label %._crit_edge21

._crit_edge21:                                    ; preds = %30, %._crit_edge21.critedge, %._crit_edge25
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 408, i8* %1) #11
  %57 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 17
  %58 = load i32* %57, align 4, !tbaa !41
  %59 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 411, i32 %58, i32 12) #11
  %60 = bitcast i8* %59 to [3 x float]*
  %61 = load i32* %57, align 4, !tbaa !41
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %.lr.ph, label %._crit_edge16

.lr.ph:                                           ; preds = %._crit_edge21
  %63 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 18
  %64 = load i32** %63, align 8, !tbaa !43
  %65 = sext i32 %61 to i64
  br label %66

; <label>:66                                      ; preds = %.lr.ph, %66
  %indvars.iv45 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next46, %66 ]
  %67 = getelementptr inbounds i32* %64, i64 %indvars.iv45
  %68 = load i32* %67, align 4, !tbaa !34
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [3 x float]* %x, i64 %69, i64 0
  %71 = getelementptr inbounds [3 x float]* %60, i64 %indvars.iv45, i64 0
  %72 = bitcast float* %70 to i32*
  %73 = load i32* %72, align 4, !tbaa !2
  %74 = bitcast float* %71 to i32*
  store i32 %73, i32* %74, align 4, !tbaa !2
  %75 = getelementptr inbounds [3 x float]* %x, i64 %69, i64 1
  %76 = bitcast float* %75 to i32*
  %77 = load i32* %76, align 4, !tbaa !2
  %78 = getelementptr inbounds [3 x float]* %60, i64 %indvars.iv45, i64 1
  %79 = bitcast float* %78 to i32*
  store i32 %77, i32* %79, align 4, !tbaa !2
  %80 = getelementptr inbounds [3 x float]* %x, i64 %69, i64 2
  %81 = bitcast float* %80 to i32*
  %82 = load i32* %81, align 4, !tbaa !2
  %83 = getelementptr inbounds [3 x float]* %60, i64 %indvars.iv45, i64 2
  %84 = bitcast float* %83 to i32*
  store i32 %82, i32* %84, align 4, !tbaa !2
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %85 = icmp slt i64 %indvars.iv.next46, %65
  br i1 %85, label %66, label %._crit_edge16

._crit_edge16:                                    ; preds = %66, %._crit_edge21
  %86 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 7, i32 2
  %87 = load [3 x float]** %86, align 8, !tbaa !44
  tail call void @do_edfit(i32 %61, [3 x float]* %87, [3 x float]* %60, [3 x float]* %rmat) #12
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 415, i8* %59) #11
  br i1 %3, label %.preheader3.lr.ph, label %.preheader1

.preheader3.lr.ph:                                ; preds = %._crit_edge16
  %88 = add i32 %nr, -1
  br label %.preheader3

.preheader3:                                      ; preds = %106, %.preheader3.lr.ph
  %indvars.iv42 = phi i64 [ 0, %.preheader3.lr.ph ], [ %indvars.iv.next43, %106 ]
  %scevgep = getelementptr [3 x float]* %x, i64 %indvars.iv42, i64 0
  %scevgep33 = bitcast float* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %x_old32, i8* %scevgep33, i64 12, i32 4, i1 false)
  br label %95

.preheader1:                                      ; preds = %106, %._crit_edge16
  %89 = load i32* %57, align 4, !tbaa !41
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %.preheader1
  %91 = load [3 x float]** %86, align 8, !tbaa !44
  %92 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 18
  %93 = load i32** %92, align 8, !tbaa !43
  %94 = sext i32 %89 to i64
  br label %.preheader

; <label>:95                                      ; preds = %105, %.preheader3
  %indvars.iv37 = phi i64 [ 0, %.preheader3 ], [ %indvars.iv.next38, %105 ]
  %96 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv42, i64 %indvars.iv37
  store float 0.000000e+00, float* %96, align 4, !tbaa !2
  br label %97

; <label>:97                                      ; preds = %97, %95
  %98 = phi float [ 0.000000e+00, %95 ], [ %104, %97 ]
  %indvars.iv34 = phi i64 [ 0, %95 ], [ %indvars.iv.next35, %97 ]
  %99 = getelementptr inbounds [3 x float]* %rmat, i64 %indvars.iv34, i64 %indvars.iv37
  %100 = load float* %99, align 4, !tbaa !2
  %101 = getelementptr inbounds [3 x float]* %x_old, i64 0, i64 %indvars.iv34
  %102 = load float* %101, align 4, !tbaa !2
  %103 = fmul float %100, %102
  %104 = fadd float %98, %103
  store float %104, float* %96, align 4, !tbaa !2
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %exitcond36 = icmp eq i64 %indvars.iv.next35, 3
  br i1 %exitcond36, label %105, label %97

; <label>:105                                     ; preds = %97
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %exitcond39 = icmp eq i64 %indvars.iv.next38, 3
  br i1 %exitcond39, label %106, label %95

; <label>:106                                     ; preds = %105
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %lftr.wideiv = trunc i64 %indvars.iv42 to i32
  %exitcond44 = icmp eq i32 %lftr.wideiv, %88
  br i1 %exitcond44, label %.preheader1, label %.preheader3

.preheader:                                       ; preds = %.preheader.lr.ph, %120
  %indvars.iv27 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next28, %120 ]
  %rmsd.08 = phi float [ 0.000000e+00, %.preheader.lr.ph ], [ %119, %120 ]
  %107 = getelementptr inbounds i32* %93, i64 %indvars.iv27
  %108 = load i32* %107, align 4, !tbaa !34
  %109 = sext i32 %108 to i64
  br label %110

; <label>:110                                     ; preds = %110, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %110 ]
  %rmsd.16 = phi float [ %rmsd.08, %.preheader ], [ %119, %110 ]
  %111 = getelementptr inbounds [3 x float]* %91, i64 %indvars.iv27, i64 %indvars.iv
  %112 = load float* %111, align 4, !tbaa !2
  %113 = getelementptr inbounds [3 x float]* %x, i64 %109, i64 %indvars.iv
  %114 = load float* %113, align 4, !tbaa !2
  %115 = fsub float %112, %114
  %116 = fpext float %115 to double
  %pow2 = fmul double %116, %116
  %117 = fpext float %rmsd.16 to double
  %118 = fadd double %117, %pow2
  %119 = fptrunc double %118 to float
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %120, label %110

; <label>:120                                     ; preds = %110
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %121 = icmp slt i64 %indvars.iv.next28, %94
  br i1 %121, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %120, %.preheader1
  %rmsd.0.lcssa = phi float [ 0.000000e+00, %.preheader1 ], [ %119, %120 ]
  %122 = sitofp i32 %89 to float
  %123 = fdiv float %rmsd.0.lcssa, %122
  %sqrtf = tail call float @sqrtf(float %123) #8
  ret float %sqrtf
}

; Function Attrs: nounwind optsize ssp uwtable
define void @project([3 x float]* nocapture %x, %struct.t_edpar* nocapture readonly %edi, i8* nocapture readonly %mode) #4 {
  %1 = tail call i32 @strcmp(i8* %mode, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #11
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %.preheader1, label %.loopexit2

.preheader1:                                      ; preds = %0
  %3 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0
  %4 = load i32* %3, align 4, !tbaa !38
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %.lr.ph5, label %.loopexit2

.lr.ph5:                                          ; preds = %.preheader1
  %6 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  %7 = load i32** %6, align 8, !tbaa !39
  %8 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 2
  %9 = load [3 x float]** %8, align 8, !tbaa !58
  %10 = sext i32 %4 to i64
  br label %11

; <label>:11                                      ; preds = %.lr.ph5, %11
  %indvars.iv6 = phi i64 [ 0, %.lr.ph5 ], [ %indvars.iv.next7, %11 ]
  %12 = getelementptr inbounds i32* %7, i64 %indvars.iv6
  %13 = load i32* %12, align 4, !tbaa !34
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [3 x float]* %x, i64 %14, i64 0
  %16 = getelementptr inbounds [3 x float]* %9, i64 %indvars.iv6, i64 0
  %17 = load float* %15, align 4, !tbaa !2
  %18 = load float* %16, align 4, !tbaa !2
  %19 = fsub float %17, %18
  %20 = getelementptr inbounds [3 x float]* %x, i64 %14, i64 1
  %21 = load float* %20, align 4, !tbaa !2
  %22 = getelementptr inbounds [3 x float]* %9, i64 %indvars.iv6, i64 1
  %23 = load float* %22, align 4, !tbaa !2
  %24 = fsub float %21, %23
  %25 = getelementptr inbounds [3 x float]* %x, i64 %14, i64 2
  %26 = load float* %25, align 4, !tbaa !2
  %27 = getelementptr inbounds [3 x float]* %9, i64 %indvars.iv6, i64 2
  %28 = load float* %27, align 4, !tbaa !2
  %29 = fsub float %26, %28
  store float %19, float* %15, align 4, !tbaa !2
  store float %24, float* %20, align 4, !tbaa !2
  store float %29, float* %25, align 4, !tbaa !2
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %30 = icmp slt i64 %indvars.iv.next7, %10
  br i1 %30, label %11, label %.loopexit2

.loopexit2:                                       ; preds = %11, %.preheader1, %0
  %31 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 0
  tail call void @do_project([3 x float]* %x, %struct.t_eigvec* %31, %struct.t_edpar* %edi, i8* %mode) #12
  %32 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1
  tail call void @do_project([3 x float]* %x, %struct.t_eigvec* %32, %struct.t_edpar* %edi, i8* %mode) #12
  %33 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2
  tail call void @do_project([3 x float]* %x, %struct.t_eigvec* %33, %struct.t_edpar* %edi, i8* %mode) #12
  %34 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3
  tail call void @do_project([3 x float]* %x, %struct.t_eigvec* %34, %struct.t_edpar* %edi, i8* %mode) #12
  %35 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4
  tail call void @do_project([3 x float]* %x, %struct.t_eigvec* %35, %struct.t_edpar* %edi, i8* %mode) #12
  %36 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5
  tail call void @do_project([3 x float]* %x, %struct.t_eigvec* %36, %struct.t_edpar* %edi, i8* %mode) #12
  %37 = tail call i32 @strcmp(i8* %mode, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #11
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit2
  %39 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0
  %40 = load i32* %39, align 4, !tbaa !38
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %42 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  %43 = load i32** %42, align 8, !tbaa !39
  %44 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 2
  %45 = load [3 x float]** %44, align 8, !tbaa !58
  %46 = sext i32 %40 to i64
  br label %47

; <label>:47                                      ; preds = %.lr.ph, %47
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %47 ]
  %48 = getelementptr inbounds i32* %43, i64 %indvars.iv
  %49 = load i32* %48, align 4, !tbaa !34
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x float]* %x, i64 %50, i64 0
  %52 = getelementptr inbounds [3 x float]* %45, i64 %indvars.iv, i64 0
  %53 = load float* %51, align 4, !tbaa !2
  %54 = load float* %52, align 4, !tbaa !2
  %55 = fadd float %53, %54
  %56 = getelementptr inbounds [3 x float]* %x, i64 %50, i64 1
  %57 = load float* %56, align 4, !tbaa !2
  %58 = getelementptr inbounds [3 x float]* %45, i64 %indvars.iv, i64 1
  %59 = load float* %58, align 4, !tbaa !2
  %60 = fadd float %57, %59
  %61 = getelementptr inbounds [3 x float]* %x, i64 %50, i64 2
  %62 = load float* %61, align 4, !tbaa !2
  %63 = getelementptr inbounds [3 x float]* %45, i64 %indvars.iv, i64 2
  %64 = load float* %63, align 4, !tbaa !2
  %65 = fadd float %62, %64
  store float %55, float* %51, align 4, !tbaa !2
  store float %60, float* %56, align 4, !tbaa !2
  store float %65, float* %61, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %66 = icmp slt i64 %indvars.iv.next, %46
  br i1 %66, label %47, label %.loopexit

.loopexit:                                        ; preds = %47, %.preheader, %.loopexit2
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @write_edidx(%struct.__sFILE* nocapture %out, %struct.t_edpar* nocapture readonly %edi) #4 {
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str61, i64 0, i64 0), i64 20, i64 1, %struct.__sFILE* %out)
  %2 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 0, i32 0
  %3 = load i32* %2, align 4, !tbaa !61
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %.lr.ph35, label %._crit_edge36

.lr.ph35:                                         ; preds = %0
  %5 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 0, i32 1
  %6 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 0, i32 4
  br label %7

; <label>:7                                       ; preds = %.lr.ph35, %7
  %indvars.iv45 = phi i64 [ 0, %.lr.ph35 ], [ %indvars.iv.next46, %7 ]
  %8 = load i32** %5, align 8, !tbaa !62
  %9 = getelementptr inbounds i32* %8, i64 %indvars.iv45
  %10 = load i32* %9, align 4, !tbaa !34
  %11 = load float** %6, align 8, !tbaa !63
  %12 = getelementptr inbounds float* %11, i64 %indvars.iv45
  %13 = load float* %12, align 4, !tbaa !2
  %14 = fpext float %13 to double
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([9 x i8]* @.str62, i64 0, i64 0), i32 %10, double %14) #11
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %16 = load i32* %2, align 4, !tbaa !61
  %17 = sext i32 %16 to i64
  %18 = icmp slt i64 %indvars.iv.next46, %17
  br i1 %18, label %7, label %._crit_edge36

._crit_edge36:                                    ; preds = %7, %0
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %out)
  %19 = tail call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str63, i64 0, i64 0), i64 20, i64 1, %struct.__sFILE* %out)
  %20 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1, i32 0
  %21 = load i32* %20, align 4, !tbaa !64
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %.lr.ph31, label %._crit_edge32

.lr.ph31:                                         ; preds = %._crit_edge36
  %23 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1, i32 1
  %24 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1, i32 4
  br label %25

; <label>:25                                      ; preds = %.lr.ph31, %25
  %indvars.iv43 = phi i64 [ 0, %.lr.ph31 ], [ %indvars.iv.next44, %25 ]
  %26 = load i32** %23, align 8, !tbaa !65
  %27 = getelementptr inbounds i32* %26, i64 %indvars.iv43
  %28 = load i32* %27, align 4, !tbaa !34
  %29 = load float** %24, align 8, !tbaa !66
  %30 = getelementptr inbounds float* %29, i64 %indvars.iv43
  %31 = load float* %30, align 4, !tbaa !2
  %32 = fpext float %31 to double
  %33 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([9 x i8]* @.str62, i64 0, i64 0), i32 %28, double %32) #11
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %34 = load i32* %20, align 4, !tbaa !64
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %indvars.iv.next44, %35
  br i1 %36, label %25, label %._crit_edge32

._crit_edge32:                                    ; preds = %25, %._crit_edge36
  %fputc3 = tail call i32 @fputc(i32 10, %struct.__sFILE* %out)
  %37 = tail call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str64, i64 0, i64 0), i64 20, i64 1, %struct.__sFILE* %out)
  %38 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2, i32 0
  %39 = load i32* %38, align 4, !tbaa !67
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %.lr.ph27, label %._crit_edge28

.lr.ph27:                                         ; preds = %._crit_edge32
  %41 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2, i32 1
  %42 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2, i32 4
  br label %43

; <label>:43                                      ; preds = %.lr.ph27, %43
  %indvars.iv41 = phi i64 [ 0, %.lr.ph27 ], [ %indvars.iv.next42, %43 ]
  %44 = load i32** %41, align 8, !tbaa !68
  %45 = getelementptr inbounds i32* %44, i64 %indvars.iv41
  %46 = load i32* %45, align 4, !tbaa !34
  %47 = load float** %42, align 8, !tbaa !69
  %48 = getelementptr inbounds float* %47, i64 %indvars.iv41
  %49 = load float* %48, align 4, !tbaa !2
  %50 = fpext float %49 to double
  %51 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([9 x i8]* @.str62, i64 0, i64 0), i32 %46, double %50) #11
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %52 = load i32* %38, align 4, !tbaa !67
  %53 = sext i32 %52 to i64
  %54 = icmp slt i64 %indvars.iv.next42, %53
  br i1 %54, label %43, label %._crit_edge28

._crit_edge28:                                    ; preds = %43, %._crit_edge32
  %fputc6 = tail call i32 @fputc(i32 10, %struct.__sFILE* %out)
  %55 = tail call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str65, i64 0, i64 0), i64 20, i64 1, %struct.__sFILE* %out)
  %56 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 0
  %57 = load i32* %56, align 4, !tbaa !70
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %.lr.ph23, label %._crit_edge24

.lr.ph23:                                         ; preds = %._crit_edge28
  %59 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 1
  %60 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 4
  br label %61

; <label>:61                                      ; preds = %.lr.ph23, %61
  %indvars.iv39 = phi i64 [ 0, %.lr.ph23 ], [ %indvars.iv.next40, %61 ]
  %62 = load i32** %59, align 8, !tbaa !71
  %63 = getelementptr inbounds i32* %62, i64 %indvars.iv39
  %64 = load i32* %63, align 4, !tbaa !34
  %65 = load float** %60, align 8, !tbaa !72
  %66 = getelementptr inbounds float* %65, i64 %indvars.iv39
  %67 = load float* %66, align 4, !tbaa !2
  %68 = fpext float %67 to double
  %69 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([9 x i8]* @.str62, i64 0, i64 0), i32 %64, double %68) #11
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %70 = load i32* %56, align 4, !tbaa !70
  %71 = sext i32 %70 to i64
  %72 = icmp slt i64 %indvars.iv.next40, %71
  br i1 %72, label %61, label %._crit_edge24

._crit_edge24:                                    ; preds = %61, %._crit_edge28
  %fputc9 = tail call i32 @fputc(i32 10, %struct.__sFILE* %out)
  %73 = tail call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str66, i64 0, i64 0), i64 20, i64 1, %struct.__sFILE* %out)
  %74 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 0
  %75 = load i32* %74, align 4, !tbaa !73
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %.lr.ph19, label %._crit_edge20

.lr.ph19:                                         ; preds = %._crit_edge24
  %77 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 1
  %78 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 4
  br label %79

; <label>:79                                      ; preds = %.lr.ph19, %79
  %indvars.iv37 = phi i64 [ 0, %.lr.ph19 ], [ %indvars.iv.next38, %79 ]
  %80 = load i32** %77, align 8, !tbaa !74
  %81 = getelementptr inbounds i32* %80, i64 %indvars.iv37
  %82 = load i32* %81, align 4, !tbaa !34
  %83 = load float** %78, align 8, !tbaa !75
  %84 = getelementptr inbounds float* %83, i64 %indvars.iv37
  %85 = load float* %84, align 4, !tbaa !2
  %86 = fpext float %85 to double
  %87 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([9 x i8]* @.str62, i64 0, i64 0), i32 %82, double %86) #11
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %88 = load i32* %74, align 4, !tbaa !73
  %89 = sext i32 %88 to i64
  %90 = icmp slt i64 %indvars.iv.next38, %89
  br i1 %90, label %79, label %._crit_edge20

._crit_edge20:                                    ; preds = %79, %._crit_edge24
  %fputc12 = tail call i32 @fputc(i32 10, %struct.__sFILE* %out)
  %91 = tail call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str67, i64 0, i64 0), i64 20, i64 1, %struct.__sFILE* %out)
  %92 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 0
  %93 = load i32* %92, align 4, !tbaa !76
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge20
  %95 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 1
  %96 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 4
  br label %97

; <label>:97                                      ; preds = %.lr.ph, %97
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %97 ]
  %98 = load i32** %95, align 8, !tbaa !77
  %99 = getelementptr inbounds i32* %98, i64 %indvars.iv
  %100 = load i32* %99, align 4, !tbaa !34
  %101 = load float** %96, align 8, !tbaa !78
  %102 = getelementptr inbounds float* %101, i64 %indvars.iv
  %103 = load float* %102, align 4, !tbaa !2
  %104 = fpext float %103 to double
  %105 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([9 x i8]* @.str62, i64 0, i64 0), i32 %100, double %104) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %106 = load i32* %92, align 4, !tbaa !76
  %107 = sext i32 %106 to i64
  %108 = icmp slt i64 %indvars.iv.next, %107
  br i1 %108, label %97, label %._crit_edge

._crit_edge:                                      ; preds = %97, %._crit_edge20
  %fputc15 = tail call i32 @fputc(i32 10, %struct.__sFILE* %out)
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @projectx(%struct.t_edpar* nocapture readonly %edi, [3 x float]* nocapture %x, %struct.t_eigvec* nocapture %vec) #4 {
  %1 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0
  %2 = load i32* %1, align 4, !tbaa !38
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph12, label %.preheader1

.lr.ph12:                                         ; preds = %0
  %4 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  %5 = load i32** %4, align 8, !tbaa !39
  %6 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 2
  %7 = load [3 x float]** %6, align 8, !tbaa !58
  %8 = sext i32 %2 to i64
  br label %19

.preheader1:                                      ; preds = %19, %0
  %9 = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 0
  %10 = load i32* %9, align 4, !tbaa !79
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %.lr.ph8, label %._crit_edge9

.lr.ph8:                                          ; preds = %.preheader1
  %12 = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 7
  %13 = load float** %12, align 8, !tbaa !80
  %14 = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 4
  %15 = load float** %14, align 8, !tbaa !81
  %16 = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 3
  %17 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  %18 = sext i32 %10 to i64
  br label %39

; <label>:19                                      ; preds = %.lr.ph12, %19
  %indvars.iv20 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next21, %19 ]
  %20 = getelementptr inbounds i32* %5, i64 %indvars.iv20
  %21 = load i32* %20, align 4, !tbaa !34
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [3 x float]* %x, i64 %22, i64 0
  %24 = getelementptr inbounds [3 x float]* %7, i64 %indvars.iv20, i64 0
  %25 = load float* %23, align 4, !tbaa !2
  %26 = load float* %24, align 4, !tbaa !2
  %27 = fsub float %25, %26
  %28 = getelementptr inbounds [3 x float]* %x, i64 %22, i64 1
  %29 = load float* %28, align 4, !tbaa !2
  %30 = getelementptr inbounds [3 x float]* %7, i64 %indvars.iv20, i64 1
  %31 = load float* %30, align 4, !tbaa !2
  %32 = fsub float %29, %31
  %33 = getelementptr inbounds [3 x float]* %x, i64 %22, i64 2
  %34 = load float* %33, align 4, !tbaa !2
  %35 = getelementptr inbounds [3 x float]* %7, i64 %indvars.iv20, i64 2
  %36 = load float* %35, align 4, !tbaa !2
  %37 = fsub float %34, %36
  store float %27, float* %23, align 4, !tbaa !2
  store float %32, float* %28, align 4, !tbaa !2
  store float %37, float* %33, align 4, !tbaa !2
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %38 = icmp slt i64 %indvars.iv.next21, %8
  br i1 %38, label %19, label %.preheader1

; <label>:39                                      ; preds = %.lr.ph8, %._crit_edge5
  %indvars.iv18 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next19, %._crit_edge5 ]
  %rad.07 = phi double [ 0.000000e+00, %.lr.ph8 ], [ %phitmp, %._crit_edge5 ]
  %40 = getelementptr inbounds float* %13, i64 %indvars.iv18
  store float 0.000000e+00, float* %40, align 4, !tbaa !2
  br i1 %3, label %.preheader.lr.ph, label %._crit_edge5

.preheader.lr.ph:                                 ; preds = %39
  %41 = load [3 x float]*** %16, align 8, !tbaa !82
  %42 = getelementptr inbounds [3 x float]** %41, i64 %indvars.iv18
  %43 = load [3 x float]** %42, align 8, !tbaa !8
  %44 = load i32** %17, align 8, !tbaa !39
  %45 = sext i32 %2 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %57
  %.pre = phi float [ 0.000000e+00, %.preheader.lr.ph ], [ %56, %57 ]
  %indvars.iv16 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next17, %57 ]
  %46 = getelementptr inbounds i32* %44, i64 %indvars.iv16
  %47 = load i32* %46, align 4, !tbaa !34
  %48 = sext i32 %47 to i64
  br label %49

; <label>:49                                      ; preds = %49, %.preheader
  %50 = phi float [ %.pre, %.preheader ], [ %56, %49 ]
  %indvars.iv14 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next15, %49 ]
  %51 = getelementptr inbounds [3 x float]* %43, i64 %indvars.iv16, i64 %indvars.iv14
  %52 = load float* %51, align 4, !tbaa !2
  %53 = getelementptr inbounds [3 x float]* %x, i64 %48, i64 %indvars.iv14
  %54 = load float* %53, align 4, !tbaa !2
  %55 = fmul float %52, %54
  %56 = fadd float %55, %50
  store float %56, float* %40, align 4, !tbaa !2
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %exitcond = icmp eq i64 %indvars.iv.next15, 3
  br i1 %exitcond, label %57, label %49

; <label>:57                                      ; preds = %49
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %58 = icmp slt i64 %indvars.iv.next17, %45
  br i1 %58, label %.preheader, label %._crit_edge5

._crit_edge5:                                     ; preds = %57, %39
  %59 = phi float [ 0.000000e+00, %39 ], [ %56, %57 ]
  %60 = getelementptr inbounds float* %15, i64 %indvars.iv18
  %61 = load float* %60, align 4, !tbaa !2
  %62 = fsub float %59, %61
  %63 = fpext float %62 to double
  %pow2 = fmul double %63, %63
  %64 = fadd double %rad.07, %pow2
  %65 = fptrunc double %64 to float
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %phitmp = fpext float %65 to double
  %66 = icmp slt i64 %indvars.iv.next19, %18
  br i1 %66, label %39, label %._crit_edge9

._crit_edge9:                                     ; preds = %._crit_edge5, %.preheader1
  %rad.0.lcssa = phi double [ 0.000000e+00, %.preheader1 ], [ %phitmp, %._crit_edge5 ]
  %67 = tail call double @sqrt(double %rad.0.lcssa) #13
  %68 = fptrunc double %67 to float
  %69 = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 8
  store float %68, float* %69, align 4, !tbaa !83
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge9
  %70 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  %71 = load i32** %70, align 8, !tbaa !39
  %72 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 2
  %73 = load [3 x float]** %72, align 8, !tbaa !58
  %74 = sext i32 %2 to i64
  br label %75

; <label>:75                                      ; preds = %.lr.ph, %75
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %75 ]
  %76 = getelementptr inbounds i32* %71, i64 %indvars.iv
  %77 = load i32* %76, align 4, !tbaa !34
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [3 x float]* %x, i64 %78, i64 0
  %80 = getelementptr inbounds [3 x float]* %73, i64 %indvars.iv, i64 0
  %81 = load float* %79, align 4, !tbaa !2
  %82 = load float* %80, align 4, !tbaa !2
  %83 = fadd float %81, %82
  %84 = getelementptr inbounds [3 x float]* %x, i64 %78, i64 1
  %85 = load float* %84, align 4, !tbaa !2
  %86 = getelementptr inbounds [3 x float]* %73, i64 %indvars.iv, i64 1
  %87 = load float* %86, align 4, !tbaa !2
  %88 = fadd float %85, %87
  %89 = getelementptr inbounds [3 x float]* %x, i64 %78, i64 2
  %90 = load float* %89, align 4, !tbaa !2
  %91 = getelementptr inbounds [3 x float]* %73, i64 %indvars.iv, i64 2
  %92 = load float* %91, align 4, !tbaa !2
  %93 = fadd float %90, %92
  store float %83, float* %79, align 4, !tbaa !2
  store float %88, float* %84, align 4, !tbaa !2
  store float %93, float* %89, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %94 = icmp slt i64 %indvars.iv.next, %74
  br i1 %94, label %75, label %._crit_edge

._crit_edge:                                      ; preds = %75, %._crit_edge9
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #5

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize ssp uwtable
define i32 @read_edint(%struct.__sFILE* %file) #4 {
  %line = alloca [4097 x i8], align 16
  %idum = alloca i32, align 4
  %1 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4097, i8* %1) #6
  %2 = call i8* @fgets2(i8* %1, i32 4096, %struct.__sFILE* %file) #11
  %3 = call i8* @fgets2(i8* %1, i32 4096, %struct.__sFILE* %file) #11
  %4 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str30, i64 0, i64 0), i32* %idum) #11
  %5 = load i32* %idum, align 4, !tbaa !34
  call void @llvm.lifetime.end(i64 4097, i8* %1) #6
  ret i32 %5
}

; Function Attrs: nounwind optsize ssp uwtable
define float @read_edreal(%struct.__sFILE* %file) #4 {
  %line = alloca [4097 x i8], align 16
  %rdum = alloca double, align 8
  %1 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4097, i8* %1) #6
  %2 = call i8* @fgets2(i8* %1, i32 4096, %struct.__sFILE* %file) #11
  %3 = call i8* @fgets2(i8* %1, i32 4096, %struct.__sFILE* %file) #11
  %4 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str31, i64 0, i64 0), double* %rdum) #11
  %5 = load double* %rdum, align 8, !tbaa !6
  %6 = fptrunc double %5 to float
  call void @llvm.lifetime.end(i64 4097, i8* %1) #6
  ret float %6
}

; Function Attrs: nounwind optsize ssp uwtable
define void @read_edx(%struct.__sFILE* %file, i32 %number, i32* %anrs, [3 x float]* nocapture %x) #4 {
  %line = alloca [4097 x i8], align 16
  %d = alloca [3 x double], align 16
  %1 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4097, i8* %1) #6
  %2 = icmp sgt i32 %number, 0
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %3 = getelementptr inbounds [3 x double]* %d, i64 0, i64 0
  %4 = getelementptr inbounds [3 x double]* %d, i64 0, i64 1
  %5 = getelementptr inbounds [3 x double]* %d, i64 0, i64 2
  %6 = add i32 %number, -1
  br label %7

; <label>:7                                       ; preds = %18, %.lr.ph
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next4, %18 ]
  %8 = call i8* @fgets2(i8* %1, i32 4096, %struct.__sFILE* %file) #11
  %9 = getelementptr inbounds i32* %anrs, i64 %indvars.iv3
  %10 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([12 x i8]* @.str32, i64 0, i64 0), i32* %9, double* %3, double* %4, double* %5) #11
  %11 = load i32* %9, align 4, !tbaa !34
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %9, align 4, !tbaa !34
  br label %13

; <label>:13                                      ; preds = %13, %7
  %indvars.iv = phi i64 [ 0, %7 ], [ %indvars.iv.next, %13 ]
  %14 = getelementptr inbounds [3 x double]* %d, i64 0, i64 %indvars.iv
  %15 = load double* %14, align 8, !tbaa !6
  %16 = fptrunc double %15 to float
  %17 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv3, i64 %indvars.iv
  store float %16, float* %17, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %18, label %13

; <label>:18                                      ; preds = %13
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  %lftr.wideiv = trunc i64 %indvars.iv3 to i32
  %exitcond5 = icmp eq i32 %lftr.wideiv, %6
  br i1 %exitcond5, label %._crit_edge, label %7

._crit_edge:                                      ; preds = %18, %0
  call void @llvm.lifetime.end(i64 4097, i8* %1) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @read_edvecs(%struct.__sFILE* %in, i32 %nr, %struct.t_edvecs* nocapture %vecs) #4 {
  %1 = getelementptr inbounds %struct.t_edvecs* %vecs, i64 0, i32 0
  tail call void @read_edvec(%struct.__sFILE* %in, i32 %nr, %struct.t_eigvec* %1) #12
  %2 = getelementptr inbounds %struct.t_edvecs* %vecs, i64 0, i32 1
  tail call void @read_edvec(%struct.__sFILE* %in, i32 %nr, %struct.t_eigvec* %2) #12
  %3 = getelementptr inbounds %struct.t_edvecs* %vecs, i64 0, i32 2
  tail call void @read_edvec(%struct.__sFILE* %in, i32 %nr, %struct.t_eigvec* %3) #12
  %4 = getelementptr inbounds %struct.t_edvecs* %vecs, i64 0, i32 3
  tail call void @read_edvec(%struct.__sFILE* %in, i32 %nr, %struct.t_eigvec* %4) #12
  %5 = getelementptr inbounds %struct.t_edvecs* %vecs, i64 0, i32 4
  tail call void @read_edvec(%struct.__sFILE* %in, i32 %nr, %struct.t_eigvec* %5) #12
  %6 = getelementptr inbounds %struct.t_edvecs* %vecs, i64 0, i32 5
  tail call void @read_edvec(%struct.__sFILE* %in, i32 %nr, %struct.t_eigvec* %6) #12
  ret void
}

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #3

; Function Attrs: optsize
declare i8* @fgets2(i8*, i32, %struct.__sFILE*) #3

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize ssp uwtable
define i32 @read_edint2(%struct.__sFILE* %file) #4 {
  %line = alloca [4097 x i8], align 16
  %idum = alloca i32, align 4
  %1 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4097, i8* %1) #6
  %2 = call i8* @fgets2(i8* %1, i32 4096, %struct.__sFILE* %file) #11
  %3 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str30, i64 0, i64 0), i32* %idum) #11
  %4 = load i32* %idum, align 4, !tbaa !34
  call void @llvm.lifetime.end(i64 4097, i8* %1) #6
  ret i32 %4
}

; Function Attrs: nounwind optsize ssp uwtable
define void @read_edvec(%struct.__sFILE* %in, i32 %nr, %struct.t_eigvec* nocapture %tvec) #4 {
  %idum = alloca i32, align 4
  %rdum = alloca double, align 8
  %line = alloca [4097 x i8], align 16
  %1 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4097, i8* %1) #6
  %2 = tail call i32 @read_edint(%struct.__sFILE* %in) #12
  %3 = getelementptr inbounds %struct.t_eigvec* %tvec, i64 0, i32 0
  store i32 %2, i32* %3, align 4, !tbaa !79
  %4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 360, i32 %2, i32 4) #11
  %5 = getelementptr inbounds %struct.t_eigvec* %tvec, i64 0, i32 1
  %6 = bitcast i32** %5 to i8**
  store i8* %4, i8** %6, align 8, !tbaa !84
  %7 = load i32* %3, align 4, !tbaa !79
  %8 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 361, i32 %7, i32 4) #11
  %9 = getelementptr inbounds %struct.t_eigvec* %tvec, i64 0, i32 2
  %10 = bitcast float** %9 to i8**
  store i8* %8, i8** %10, align 8, !tbaa !85
  %11 = load i32* %3, align 4, !tbaa !79
  %12 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 362, i32 %11, i32 8) #11
  %13 = getelementptr inbounds %struct.t_eigvec* %tvec, i64 0, i32 3
  %14 = bitcast [3 x float]*** %13 to i8**
  store i8* %12, i8** %14, align 8, !tbaa !82
  %15 = load i32* %3, align 4, !tbaa !79
  %16 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 363, i32 %15, i32 4) #11
  %17 = getelementptr inbounds %struct.t_eigvec* %tvec, i64 0, i32 4
  %18 = bitcast float** %17 to i8**
  store i8* %16, i8** %18, align 8, !tbaa !81
  %19 = load i32* %3, align 4, !tbaa !79
  %20 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 364, i32 %19, i32 4) #11
  %21 = getelementptr inbounds %struct.t_eigvec* %tvec, i64 0, i32 5
  %22 = bitcast float** %21 to i8**
  store i8* %20, i8** %22, align 8, !tbaa !86
  %23 = load i32* %3, align 4, !tbaa !79
  %24 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 365, i32 %23, i32 4) #11
  %25 = getelementptr inbounds %struct.t_eigvec* %tvec, i64 0, i32 6
  %26 = bitcast float** %25 to i8**
  store i8* %24, i8** %26, align 8, !tbaa !87
  %27 = load i32* %3, align 4, !tbaa !79
  %28 = tail call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 366, i32 %27, i32 4) #11
  %29 = getelementptr inbounds %struct.t_eigvec* %tvec, i64 0, i32 7
  %30 = bitcast float** %29 to i8**
  store i8* %28, i8** %30, align 8, !tbaa !80
  %31 = load i32* %3, align 4, !tbaa !79
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %.lr.ph4, label %._crit_edge

.preheader:                                       ; preds = %.lr.ph4
  %33 = icmp sgt i32 %43, 0
  br i1 %33, label %.lr.ph, label %._crit_edge

.lr.ph4:                                          ; preds = %0, %.lr.ph4
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %.lr.ph4 ], [ 0, %0 ]
  %34 = call i8* @fgets2(i8* %1, i32 4096, %struct.__sFILE* %in) #11
  %35 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([6 x i8]* @.str40, i64 0, i64 0), i32* %idum, double* %rdum) #11
  %36 = load i32* %idum, align 4, !tbaa !34
  %37 = load i32** %5, align 8, !tbaa !84
  %38 = getelementptr inbounds i32* %37, i64 %indvars.iv5
  store i32 %36, i32* %38, align 4, !tbaa !34
  %39 = load double* %rdum, align 8, !tbaa !6
  %40 = fptrunc double %39 to float
  %41 = load float** %9, align 8, !tbaa !85
  %42 = getelementptr inbounds float* %41, i64 %indvars.iv5
  store float %40, float* %42, align 4, !tbaa !2
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %43 = load i32* %3, align 4, !tbaa !79
  %44 = sext i32 %43 to i64
  %45 = icmp slt i64 %indvars.iv.next6, %44
  br i1 %45, label %.lr.ph4, label %.preheader

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ]
  %46 = call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 374, i32 %nr, i32 12) #11
  %47 = load [3 x float]*** %13, align 8, !tbaa !82
  %48 = getelementptr inbounds [3 x float]** %47, i64 %indvars.iv
  %49 = bitcast [3 x float]** %48 to i8**
  store i8* %46, i8** %49, align 8, !tbaa !8
  %50 = load [3 x float]*** %13, align 8, !tbaa !82
  %51 = getelementptr inbounds [3 x float]** %50, i64 %indvars.iv
  %52 = load [3 x float]** %51, align 8, !tbaa !8
  call void @scan_edvec(%struct.__sFILE* %in, i32 %nr, [3 x float]* %52) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %53 = load i32* %3, align 4, !tbaa !79
  %54 = sext i32 %53 to i64
  %55 = icmp slt i64 %indvars.iv.next, %54
  br i1 %55, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %0, %.preheader
  call void @llvm.lifetime.end(i64 4097, i8* %1) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @scan_edvec(%struct.__sFILE* %in, i32 %nr, [3 x float]* nocapture %vec) #4 {
  %line = alloca [4097 x i8], align 16
  %x = alloca double, align 8
  %y = alloca double, align 8
  %z = alloca double, align 8
  %1 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4097, i8* %1) #6
  %2 = icmp sgt i32 %nr, 0
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %3 = add i32 %nr, -1
  br label %4

; <label>:4                                       ; preds = %4, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %4 ]
  %5 = call i8* @fgets2(i8* %1, i32 4096, %struct.__sFILE* %in) #11
  %6 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([10 x i8]* @.str42, i64 0, i64 0), double* %x, double* %y, double* %z) #11
  %7 = load double* %x, align 8, !tbaa !6
  %8 = fptrunc double %7 to float
  %9 = getelementptr inbounds [3 x float]* %vec, i64 %indvars.iv, i64 0
  store float %8, float* %9, align 4, !tbaa !2
  %10 = load double* %y, align 8, !tbaa !6
  %11 = fptrunc double %10 to float
  %12 = getelementptr inbounds [3 x float]* %vec, i64 %indvars.iv, i64 1
  store float %11, float* %12, align 4, !tbaa !2
  %13 = load double* %z, align 8, !tbaa !6
  %14 = fptrunc double %13 to float
  %15 = getelementptr inbounds [3 x float]* %vec, i64 %indvars.iv, i64 2
  store float %14, float* %15, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %3
  br i1 %exitcond, label %._crit_edge, label %4

._crit_edge:                                      ; preds = %4, %0
  call void @llvm.lifetime.end(i64 4097, i8* %1) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @do_edfit(i32 %natoms, [3 x float]* nocapture readonly %xp, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %R) #4 {
  %irot = alloca i32, align 4
  %d = alloca [6 x double], align 16
  %1 = bitcast [6 x double]* %d to i8*
  %vh = alloca [3 x [3 x float]], align 16
  %vk = alloca [3 x [3 x float]], align 16
  %u = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start(i64 48, i8* %1) #6
  %2 = bitcast [3 x [3 x float]]* %vh to i8*
  call void @llvm.lifetime.start(i64 36, i8* %2) #6
  %3 = bitcast [3 x [3 x float]]* %vk to i8*
  call void @llvm.lifetime.start(i64 36, i8* %3) #6
  %4 = bitcast [3 x [3 x float]]* %u to i8*
  call void @llvm.lifetime.start(i64 36, i8* %4) #6
  %5 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 453, i32 6, i32 8) #11
  %6 = bitcast i8* %5 to double**
  %7 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 454, i32 6, i32 8) #11
  %8 = bitcast i8* %7 to double**
  br label %9

; <label>:9                                       ; preds = %9, %0
  %indvars.iv71 = phi i64 [ 0, %0 ], [ %indvars.iv.next72, %9 ]
  %10 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 456, i32 6, i32 8) #11
  %11 = getelementptr inbounds double** %6, i64 %indvars.iv71
  %12 = bitcast double** %11 to i8**
  store i8* %10, i8** %12, align 8, !tbaa !8
  %13 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 457, i32 6, i32 8) #11
  %14 = getelementptr inbounds double** %8, i64 %indvars.iv71
  %15 = bitcast double** %14 to i8**
  store i8* %13, i8** %15, align 8, !tbaa !8
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond73 = icmp eq i64 %indvars.iv.next72, 6
  br i1 %exitcond73, label %.preheader10, label %9

.preheader10:                                     ; preds = %9, %24
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %24 ], [ 0, %9 ]
  %16 = getelementptr inbounds [6 x double]* %d, i64 0, i64 %indvars.iv68
  store double 0.000000e+00, double* %16, align 8, !tbaa !6
  %17 = getelementptr inbounds double** %6, i64 %indvars.iv68
  %18 = load double** %17, align 8, !tbaa !8
  %19 = getelementptr inbounds double** %8, i64 %indvars.iv68
  %20 = load double** %19, align 8, !tbaa !8
  br label %21

; <label>:21                                      ; preds = %21, %.preheader10
  %indvars.iv65 = phi i64 [ 0, %.preheader10 ], [ %indvars.iv.next66, %21 ]
  %22 = getelementptr inbounds double* %18, i64 %indvars.iv65
  store double 0.000000e+00, double* %22, align 8, !tbaa !6
  %23 = getelementptr inbounds double* %20, i64 %indvars.iv65
  store double 0.000000e+00, double* %23, align 8, !tbaa !6
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  %exitcond67 = icmp eq i64 %indvars.iv.next66, 6
  br i1 %exitcond67, label %24, label %21

; <label>:24                                      ; preds = %21
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  %exitcond70 = icmp eq i64 %indvars.iv.next69, 6
  br i1 %exitcond70, label %25, label %.preheader10

; <label>:25                                      ; preds = %24
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 36, i32 16, i1 false) #6
  %26 = icmp sgt i32 %natoms, 0
  br i1 %26, label %.preheader9.lr.ph, label %.lr.ph

.preheader9.lr.ph:                                ; preds = %25
  %27 = add i32 %natoms, -1
  br label %.preheader9

.preheader9:                                      ; preds = %43, %.preheader9.lr.ph
  %indvars.iv61 = phi i64 [ 0, %.preheader9.lr.ph ], [ %indvars.iv.next62, %43 ]
  br label %28

; <label>:28                                      ; preds = %42, %.preheader9
  %indvars.iv58 = phi i64 [ 0, %.preheader9 ], [ %indvars.iv.next59, %42 ]
  %29 = getelementptr inbounds [3 x float]* %xp, i64 %indvars.iv61, i64 %indvars.iv58
  %30 = load float* %29, align 4, !tbaa !2
  %31 = fpext float %30 to double
  br label %32

; <label>:32                                      ; preds = %32, %28
  %indvars.iv55 = phi i64 [ 0, %28 ], [ %indvars.iv.next56, %32 ]
  %33 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv61, i64 %indvars.iv55
  %34 = load float* %33, align 4, !tbaa !2
  %35 = fpext float %34 to double
  %36 = fmul double %31, %35
  %37 = getelementptr inbounds [3 x [3 x float]]* %u, i64 0, i64 %indvars.iv58, i64 %indvars.iv55
  %38 = load float* %37, align 4, !tbaa !2
  %39 = fpext float %38 to double
  %40 = fadd double %39, %36
  %41 = fptrunc double %40 to float
  store float %41, float* %37, align 4, !tbaa !2
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %exitcond57 = icmp eq i64 %indvars.iv.next56, 3
  br i1 %exitcond57, label %42, label %32

; <label>:42                                      ; preds = %32
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  %exitcond60 = icmp eq i64 %indvars.iv.next59, 3
  br i1 %exitcond60, label %43, label %28

; <label>:43                                      ; preds = %42
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %lftr.wideiv63 = trunc i64 %indvars.iv61 to i32
  %exitcond64 = icmp eq i32 %lftr.wideiv63, %27
  br i1 %exitcond64, label %.lr.ph, label %.preheader9

.lr.ph:                                           ; preds = %25, %43, %._crit_edge
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %._crit_edge ], [ 0, %43 ], [ 0, %25 ]
  %indvars.iv49 = phi i32 [ %indvars.iv.next50, %._crit_edge ], [ 1, %43 ], [ 1, %25 ]
  %44 = icmp sgt i64 %indvars.iv52, 2
  %45 = add nsw i64 %indvars.iv52, -3
  %46 = getelementptr inbounds double** %6, i64 %indvars.iv52
  br label %47

; <label>:47                                      ; preds = %64, %.lr.ph
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %64 ], [ 0, %.lr.ph ]
  %48 = icmp slt i64 %indvars.iv47, 3
  %or.cond = and i1 %44, %48
  br i1 %or.cond, label %49, label %58

; <label>:49                                      ; preds = %47
  %50 = getelementptr inbounds [3 x [3 x float]]* %u, i64 0, i64 %45, i64 %indvars.iv47
  %51 = load float* %50, align 4, !tbaa !2
  %52 = fpext float %51 to double
  %53 = load double** %46, align 8, !tbaa !8
  %54 = getelementptr inbounds double* %53, i64 %indvars.iv47
  store double %52, double* %54, align 8, !tbaa !6
  %55 = getelementptr inbounds double** %6, i64 %indvars.iv47
  %56 = load double** %55, align 8, !tbaa !8
  %57 = getelementptr inbounds double* %56, i64 %indvars.iv52
  store double %52, double* %57, align 8, !tbaa !6
  br label %64

; <label>:58                                      ; preds = %47
  %59 = load double** %46, align 8, !tbaa !8
  %60 = getelementptr inbounds double* %59, i64 %indvars.iv47
  store double 0.000000e+00, double* %60, align 8, !tbaa !6
  %61 = getelementptr inbounds double** %6, i64 %indvars.iv47
  %62 = load double** %61, align 8, !tbaa !8
  %63 = getelementptr inbounds double* %62, i64 %indvars.iv52
  store double 0.000000e+00, double* %63, align 8, !tbaa !6
  br label %64

; <label>:64                                      ; preds = %49, %58
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next48 to i32
  %exitcond51 = icmp eq i32 %lftr.wideiv, %indvars.iv49
  br i1 %exitcond51, label %._crit_edge, label %47

._crit_edge:                                      ; preds = %64
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %indvars.iv.next50 = add nuw nsw i32 %indvars.iv49, 1
  %exitcond54 = icmp eq i64 %indvars.iv.next53, 6
  br i1 %exitcond54, label %65, label %.lr.ph

; <label>:65                                      ; preds = %._crit_edge
  %66 = getelementptr inbounds [6 x double]* %d, i64 0, i64 0
  call void @jacobi(double** %6, i32 6, double* %66, double** %8, i32* %irot) #11
  %67 = load i32* %irot, align 4, !tbaa !34
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %.preheader5

; <label>:69                                      ; preds = %65
  %70 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !8
  %71 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str47, i64 0, i64 0), i64 7, i64 1, %struct.__sFILE* %70)
  br label %.preheader5

.preheader5:                                      ; preds = %65, %69, %100
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %100 ], [ 0, %69 ], [ 0, %65 ]
  %index.020 = phi i32 [ %index.2, %100 ], [ 0, %69 ], [ 0, %65 ]
  br label %72

; <label>:72                                      ; preds = %80, %.preheader5
  %indvars.iv38 = phi i64 [ 0, %.preheader5 ], [ %indvars.iv.next39, %80 ]
  %max_d.017 = phi float [ -1.000000e+03, %.preheader5 ], [ %max_d.1, %80 ]
  %index.116 = phi i32 [ %index.020, %.preheader5 ], [ %index.2, %80 ]
  %73 = getelementptr inbounds [6 x double]* %d, i64 0, i64 %indvars.iv38
  %74 = load double* %73, align 8, !tbaa !6
  %75 = fpext float %max_d.017 to double
  %76 = fcmp ogt double %74, %75
  br i1 %76, label %77, label %80

; <label>:77                                      ; preds = %72
  %78 = fptrunc double %74 to float
  %79 = trunc i64 %indvars.iv38 to i32
  br label %80

; <label>:80                                      ; preds = %72, %77
  %index.2 = phi i32 [ %79, %77 ], [ %index.116, %72 ]
  %max_d.1 = phi float [ %78, %77 ], [ %max_d.017, %72 ]
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %exitcond40 = icmp eq i64 %indvars.iv.next39, 6
  br i1 %exitcond40, label %81, label %72

; <label>:81                                      ; preds = %80
  %82 = sext i32 %index.2 to i64
  %83 = getelementptr inbounds [6 x double]* %d, i64 0, i64 %82
  store double -1.000000e+04, double* %83, align 8, !tbaa !6
  br label %84

; <label>:84                                      ; preds = %84, %81
  %indvars.iv41 = phi i64 [ 0, %81 ], [ %indvars.iv.next42, %84 ]
  %85 = getelementptr inbounds double** %8, i64 %indvars.iv41
  %86 = load double** %85, align 8, !tbaa !8
  %87 = getelementptr inbounds double* %86, i64 %82
  %88 = load double* %87, align 8, !tbaa !6
  %89 = fmul double %88, 0x3FF6A09E667F3BCD
  %90 = fptrunc double %89 to float
  %91 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 %indvars.iv44, i64 %indvars.iv41
  store float %90, float* %91, align 4, !tbaa !2
  %92 = add nuw nsw i64 %indvars.iv41, 3
  %93 = getelementptr inbounds double** %8, i64 %92
  %94 = load double** %93, align 8, !tbaa !8
  %95 = getelementptr inbounds double* %94, i64 %82
  %96 = load double* %95, align 8, !tbaa !6
  %97 = fmul double %96, 0x3FF6A09E667F3BCD
  %98 = fptrunc double %97 to float
  %99 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 %indvars.iv44, i64 %indvars.iv41
  store float %98, float* %99, align 4, !tbaa !2
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %exitcond43 = icmp eq i64 %indvars.iv.next42, 3
  br i1 %exitcond43, label %100, label %84

; <label>:100                                     ; preds = %84
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %exitcond46 = icmp eq i64 %indvars.iv.next45, 3
  br i1 %exitcond46, label %.preheader3, label %.preheader5

.preheader3:                                      ; preds = %100, %120
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %120 ], [ 0, %100 ]
  %101 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 0, i64 %indvars.iv35
  %102 = load float* %101, align 4, !tbaa !2
  %103 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 1, i64 %indvars.iv35
  %104 = load float* %103, align 4, !tbaa !2
  %105 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 2, i64 %indvars.iv35
  %106 = load float* %105, align 4, !tbaa !2
  br label %107

; <label>:107                                     ; preds = %107, %.preheader3
  %indvars.iv32 = phi i64 [ 0, %.preheader3 ], [ %indvars.iv.next33, %107 ]
  %108 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 0, i64 %indvars.iv32
  %109 = load float* %108, align 4, !tbaa !2
  %110 = fmul float %109, %102
  %111 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 1, i64 %indvars.iv32
  %112 = load float* %111, align 4, !tbaa !2
  %113 = fmul float %112, %104
  %114 = fadd float %110, %113
  %115 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 2, i64 %indvars.iv32
  %116 = load float* %115, align 4, !tbaa !2
  %117 = fmul float %116, %106
  %118 = fadd float %114, %117
  %119 = getelementptr inbounds [3 x float]* %R, i64 %indvars.iv35, i64 %indvars.iv32
  store float %118, float* %119, align 4, !tbaa !2
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %exitcond34 = icmp eq i64 %indvars.iv.next33, 3
  br i1 %exitcond34, label %120, label %107

; <label>:120                                     ; preds = %107
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %exitcond37 = icmp eq i64 %indvars.iv.next36, 3
  br i1 %exitcond37, label %121, label %.preheader3

; <label>:121                                     ; preds = %120
  %122 = getelementptr inbounds [3 x float]* %R, i64 0, i64 0
  %123 = load float* %122, align 4, !tbaa !2
  %124 = getelementptr inbounds [3 x float]* %R, i64 1, i64 1
  %125 = load float* %124, align 4, !tbaa !2
  %126 = getelementptr inbounds [3 x float]* %R, i64 2, i64 2
  %127 = load float* %126, align 4, !tbaa !2
  %128 = fmul float %125, %127
  %129 = getelementptr inbounds [3 x float]* %R, i64 2, i64 1
  %130 = load float* %129, align 4, !tbaa !2
  %131 = getelementptr inbounds [3 x float]* %R, i64 1, i64 2
  %132 = load float* %131, align 4, !tbaa !2
  %133 = fmul float %130, %132
  %134 = fsub float %128, %133
  %135 = fmul float %123, %134
  %136 = getelementptr inbounds [3 x float]* %R, i64 1, i64 0
  %137 = load float* %136, align 4, !tbaa !2
  %138 = getelementptr inbounds [3 x float]* %R, i64 0, i64 1
  %139 = load float* %138, align 4, !tbaa !2
  %140 = fmul float %127, %139
  %141 = getelementptr inbounds [3 x float]* %R, i64 0, i64 2
  %142 = load float* %141, align 4, !tbaa !2
  %143 = fmul float %130, %142
  %144 = fsub float %140, %143
  %145 = fmul float %137, %144
  %146 = fsub float %135, %145
  %147 = getelementptr inbounds [3 x float]* %R, i64 2, i64 0
  %148 = load float* %147, align 4, !tbaa !2
  %149 = fmul float %132, %139
  %150 = fmul float %125, %142
  %151 = fsub float %149, %150
  %152 = fmul float %148, %151
  %153 = fadd float %152, %146
  %154 = fcmp olt float %153, 0.000000e+00
  br i1 %154, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %121, %174
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %174 ], [ 0, %121 ]
  %155 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 0, i64 %indvars.iv29
  %156 = load float* %155, align 4, !tbaa !2
  %157 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 1, i64 %indvars.iv29
  %158 = load float* %157, align 4, !tbaa !2
  %159 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 2, i64 %indvars.iv29
  %160 = load float* %159, align 4, !tbaa !2
  br label %161

; <label>:161                                     ; preds = %161, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %161 ]
  %162 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 0, i64 %indvars.iv
  %163 = load float* %162, align 4, !tbaa !2
  %164 = fmul float %163, %156
  %165 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 1, i64 %indvars.iv
  %166 = load float* %165, align 4, !tbaa !2
  %167 = fmul float %166, %158
  %168 = fadd float %164, %167
  %169 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 2, i64 %indvars.iv
  %170 = load float* %169, align 4, !tbaa !2
  %171 = fmul float %170, %160
  %172 = fsub float %168, %171
  %173 = getelementptr inbounds [3 x float]* %R, i64 %indvars.iv29, i64 %indvars.iv
  store float %172, float* %173, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %174, label %161

; <label>:174                                     ; preds = %161
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %exitcond31 = icmp eq i64 %indvars.iv.next30, 3
  br i1 %exitcond31, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %174, %121
  call void @llvm.lifetime.end(i64 36, i8* %4) #6
  call void @llvm.lifetime.end(i64 36, i8* %3) #6
  call void @llvm.lifetime.end(i64 36, i8* %2) #6
  call void @llvm.lifetime.end(i64 48, i8* %1) #6
  ret void
}

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #8

; Function Attrs: optsize
declare void @jacobi(double**, i32, double*, double**, i32*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @do_project([3 x float]* nocapture readonly %x, %struct.t_eigvec* nocapture readonly %vec, %struct.t_edpar* nocapture readonly %edi, i8* nocapture readonly %mode) #4 {
  %1 = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !79
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.preheader1.lr.ph, label %._crit_edge7

.preheader1.lr.ph:                                ; preds = %0
  %4 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0
  %5 = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 4
  %6 = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 5
  %7 = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 6
  %8 = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 3
  %9 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  %.pre = load i32* %4, align 4, !tbaa !38
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.lr.ph, %45
  %indvars.iv10 = phi i64 [ 0, %.preheader1.lr.ph ], [ %indvars.iv.next11, %45 ]
  %10 = icmp sgt i32 %.pre, 0
  br i1 %10, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %.preheader1
  %11 = load [3 x float]*** %8, align 8, !tbaa !82
  %12 = getelementptr inbounds [3 x float]** %11, i64 %indvars.iv10
  %13 = load [3 x float]** %12, align 8, !tbaa !8
  %14 = load i32** %9, align 8, !tbaa !39
  %15 = sext i32 %.pre to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %26
  %indvars.iv8 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next9, %26 ]
  %proj.05 = phi float [ 0.000000e+00, %.preheader.lr.ph ], [ %25, %26 ]
  %16 = getelementptr inbounds i32* %14, i64 %indvars.iv8
  %17 = load i32* %16, align 4, !tbaa !34
  %18 = sext i32 %17 to i64
  br label %19

; <label>:19                                      ; preds = %19, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %19 ]
  %proj.13 = phi float [ %proj.05, %.preheader ], [ %25, %19 ]
  %20 = getelementptr inbounds [3 x float]* %13, i64 %indvars.iv8, i64 %indvars.iv
  %21 = load float* %20, align 4, !tbaa !2
  %22 = getelementptr inbounds [3 x float]* %x, i64 %18, i64 %indvars.iv
  %23 = load float* %22, align 4, !tbaa !2
  %24 = fmul float %21, %23
  %25 = fadd float %proj.13, %24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %26, label %19

; <label>:26                                      ; preds = %19
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  %27 = icmp slt i64 %indvars.iv.next9, %15
  br i1 %27, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %26, %.preheader1
  %proj.0.lcssa = phi float [ 0.000000e+00, %.preheader1 ], [ %25, %26 ]
  %28 = tail call i32 @strcmp(i8* %mode, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

; <label>:30                                      ; preds = %._crit_edge
  %31 = load float** %5, align 8, !tbaa !81
  %32 = getelementptr inbounds float* %31, i64 %indvars.iv10
  store float %proj.0.lcssa, float* %32, align 4, !tbaa !2
  br label %45

; <label>:33                                      ; preds = %._crit_edge
  %34 = tail call i32 @strcmp(i8* %mode, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

; <label>:36                                      ; preds = %33
  %37 = load float** %6, align 8, !tbaa !86
  %38 = getelementptr inbounds float* %37, i64 %indvars.iv10
  store float %proj.0.lcssa, float* %38, align 4, !tbaa !2
  br label %45

; <label>:39                                      ; preds = %33
  %40 = tail call i32 @strcmp(i8* %mode, i8* getelementptr inbounds ([2 x i8]* @.str49, i64 0, i64 0)) #11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

; <label>:42                                      ; preds = %39
  %43 = load float** %7, align 8, !tbaa !87
  %44 = getelementptr inbounds float* %43, i64 %indvars.iv10
  store float %proj.0.lcssa, float* %44, align 4, !tbaa !2
  br label %45

; <label>:45                                      ; preds = %30, %39, %42, %36
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %46 = sext i32 %2 to i64
  %47 = icmp slt i64 %indvars.iv.next11, %46
  br i1 %47, label %.preheader1, label %._crit_edge7

._crit_edge7:                                     ; preds = %45, %0
  ret void
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @do_projectx(%struct.t_edpar* nocapture readonly %edi, [3 x float]* nocapture readonly %x, [3 x float]* nocapture readonly %vec) #9 {
  %1 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0
  %2 = load i32* %1, align 4, !tbaa !38
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %0
  %4 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  %5 = load i32** %4, align 8, !tbaa !39
  %6 = sext i32 %2 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %17
  %indvars.iv5 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next6, %17 ]
  %proj.04 = phi float [ 0.000000e+00, %.preheader.lr.ph ], [ %16, %17 ]
  %7 = getelementptr inbounds i32* %5, i64 %indvars.iv5
  %8 = load i32* %7, align 4, !tbaa !34
  %9 = sext i32 %8 to i64
  br label %10

; <label>:10                                      ; preds = %10, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %10 ]
  %proj.12 = phi float [ %proj.04, %.preheader ], [ %16, %10 ]
  %11 = getelementptr inbounds [3 x float]* %vec, i64 %indvars.iv5, i64 %indvars.iv
  %12 = load float* %11, align 4, !tbaa !2
  %13 = getelementptr inbounds [3 x float]* %x, i64 %9, i64 %indvars.iv
  %14 = load float* %13, align 4, !tbaa !2
  %15 = fmul float %12, %14
  %16 = fadd float %proj.12, %15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %17, label %10

; <label>:17                                      ; preds = %10
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %18 = icmp slt i64 %indvars.iv.next6, %6
  br i1 %18, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %17, %0
  %proj.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %16, %17 ]
  ret float %proj.0.lcssa
}

; Function Attrs: nounwind optsize ssp uwtable
define float @calc_radius(%struct.t_eigvec* nocapture %vec) #4 {
  %1 = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 8
  store float 0.000000e+00, float* %1, align 4, !tbaa !83
  %2 = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 0
  %3 = load i32* %2, align 4, !tbaa !79
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %5 = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 7
  %6 = load float** %5, align 8, !tbaa !80
  %7 = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 4
  %8 = load float** %7, align 8, !tbaa !81
  %9 = sext i32 %3 to i64
  br label %10

; <label>:10                                      ; preds = %.lr.ph, %10
  %11 = phi float [ 0.000000e+00, %.lr.ph ], [ %20, %10 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %10 ]
  %12 = getelementptr inbounds float* %6, i64 %indvars.iv
  %13 = load float* %12, align 4, !tbaa !2
  %14 = getelementptr inbounds float* %8, i64 %indvars.iv
  %15 = load float* %14, align 4, !tbaa !2
  %16 = fsub float %13, %15
  %17 = fpext float %16 to double
  %pow2 = fmul double %17, %17
  %18 = fpext float %11 to double
  %19 = fadd double %18, %pow2
  %20 = fptrunc double %19 to float
  store float %20, float* %1, align 4, !tbaa !83
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %21 = icmp slt i64 %indvars.iv.next, %9
  br i1 %21, label %10, label %._crit_edge

._crit_edge:                                      ; preds = %10, %0
  %22 = phi float [ 0.000000e+00, %0 ], [ %20, %10 ]
  %sqrtf = tail call float @sqrtf(float %22) #8
  store float %sqrtf, float* %1, align 4, !tbaa !83
  ret float %sqrtf
}

; Function Attrs: nounwind optsize ssp uwtable
define void @do_edsam(%struct.__sFILE* nocapture %log, %struct.t_topology* nocapture readonly %top, %struct.t_inputrec* nocapture readonly %ir, i32 %step, %struct.t_mdatoms* nocapture readnone %md, i32 %start, i32 %homenr, [3 x float]* nocapture %x, [3 x float]* nocapture readonly %xold, [3 x float]* nocapture readonly %x_unc, [3 x float]* nocapture readonly %force, [3 x float]* nocapture readnone %box, %struct.t_edsamyn* nocapture readnone %edyn, %struct.t_edpar* %edi, i32 %bHave_force) #4 {
  %rotmat = alloca [3 x [3 x float]], align 16
  %1 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 2
  %2 = load i32* %1, align 4, !tbaa !21
  %3 = bitcast [3 x [3 x float]]* %rotmat to i8*
  call void @llvm.lifetime.start(i64 36, i8* %3) #6
  %4 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %5 = load float* %4, align 4, !tbaa !88
  %6 = fdiv float 1.000000e+00, %5
  %7 = fmul float %5, %5
  %8 = fdiv float 1.000000e+00, %7
  %.b = load i1* @do_edsam.bFirst, align 1
  br i1 %.b, label %12, label %9

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4
  %11 = tail call float @calc_radius(%struct.t_eigvec* %10) #12
  store float %11, float* @do_edsam.oldrad, align 4, !tbaa !2
  store i1 true, i1* @do_edsam.bFirst, align 1
  br label %12

; <label>:12                                      ; preds = %0, %9
  %13 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 4
  %14 = load i32* %13, align 4, !tbaa !54
  %15 = tail call i32 @do_per_step(i32 %step, i32 %14) #11
  %16 = icmp ne i32 %15, 0
  %17 = icmp ne i32 %bHave_force, 0
  %or.cond = and i1 %17, %16
  br i1 %or.cond, label %18, label %.loopexit

; <label>:18                                      ; preds = %12
  %19 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 666, i32 %2, i32 12) #11
  %20 = bitcast i8* %19 to [3 x float]*
  %21 = icmp sgt i32 %2, 0
  br i1 %21, label %.preheader.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %18
  %22 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 671, i32 %2, i32 12) #11
  %23 = bitcast i8* %22 to [3 x float]*
  br label %.loopexit

.preheader.lr.ph:                                 ; preds = %18
  %24 = add i32 %2, -1
  br label %.preheader

.preheader:                                       ; preds = %33, %.preheader.lr.ph
  %indvars.iv18 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next19, %33 ]
  br label %25

; <label>:25                                      ; preds = %25, %.preheader
  %indvars.iv15 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next16, %25 ]
  %26 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv18, i64 %indvars.iv15
  %27 = load float* %26, align 4, !tbaa !2
  %28 = getelementptr inbounds [3 x float]* %xold, i64 %indvars.iv18, i64 %indvars.iv15
  %29 = load float* %28, align 4, !tbaa !2
  %30 = fsub float %27, %29
  %31 = fmul float %6, %30
  %32 = getelementptr inbounds [3 x float]* %20, i64 %indvars.iv18, i64 %indvars.iv15
  store float %31, float* %32, align 4, !tbaa !2
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %exitcond17 = icmp eq i64 %indvars.iv.next16, 3
  br i1 %exitcond17, label %33, label %25

; <label>:33                                      ; preds = %25
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %lftr.wideiv20 = trunc i64 %indvars.iv18 to i32
  %exitcond21 = icmp eq i32 %lftr.wideiv20, %24
  br i1 %exitcond21, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %33
  %34 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 671, i32 %2, i32 12) #11
  %35 = bitcast i8* %34 to [3 x float]*
  br i1 %21, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %._crit_edge
  %36 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1
  %37 = load %struct.t_atom** %36, align 8, !tbaa !33
  %38 = add i32 %2, -1
  br label %39

; <label>:39                                      ; preds = %54, %.lr.ph
  %indvars.iv12 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next13, %54 ]
  %40 = getelementptr inbounds %struct.t_atom* %37, i64 %indvars.iv12, i32 0
  %41 = load float* %40, align 4, !tbaa !35
  br label %42

; <label>:42                                      ; preds = %42, %39
  %indvars.iv = phi i64 [ 0, %39 ], [ %indvars.iv.next, %42 ]
  %43 = getelementptr inbounds [3 x float]* %force, i64 %indvars.iv12, i64 %indvars.iv
  %44 = load float* %43, align 4, !tbaa !2
  %45 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv12, i64 %indvars.iv
  %46 = load float* %45, align 4, !tbaa !2
  %47 = getelementptr inbounds [3 x float]* %x_unc, i64 %indvars.iv12, i64 %indvars.iv
  %48 = load float* %47, align 4, !tbaa !2
  %49 = fsub float %46, %48
  %50 = fmul float %8, %49
  %51 = fmul float %41, %50
  %52 = fadd float %44, %51
  %53 = getelementptr inbounds [3 x float]* %35, i64 %indvars.iv12, i64 %indvars.iv
  store float %52, float* %53, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %54, label %42

; <label>:54                                      ; preds = %42
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %lftr.wideiv = trunc i64 %indvars.iv12 to i32
  %exitcond14 = icmp eq i32 %lftr.wideiv, %38
  br i1 %exitcond14, label %.loopexit, label %39

.loopexit:                                        ; preds = %54, %._crit_edge, %._crit_edge.thread, %12
  %fdum.0 = phi [3 x float]* [ null, %12 ], [ %23, %._crit_edge.thread ], [ %35, %._crit_edge ], [ %35, %54 ]
  %vdum.0 = phi [3 x float]* [ null, %12 ], [ %20, %._crit_edge.thread ], [ %20, %._crit_edge ], [ %20, %54 ]
  %55 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 680, i32 %2, i32 12) #11
  %56 = bitcast i8* %55 to [3 x float]*
  %57 = getelementptr inbounds [3 x [3 x float]]* %rotmat, i64 0, i64 0
  %58 = call float @fitit(i32 %2, [3 x float]* %x, %struct.t_edpar* %edi, [3 x float]* %56, [3 x float]* %57) #12
  %59 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 6
  %60 = load i32* %59, align 4, !tbaa !56
  %61 = tail call i32 @do_per_step(i32 %step, i32 %60) #11
  %62 = icmp ne i32 %61, 0
  %63 = icmp sgt i32 %step, 0
  %or.cond3 = and i1 %63, %62
  br i1 %or.cond3, label %64, label %67

; <label>:64                                      ; preds = %.loopexit
  tail call void @project([3 x float]* %x, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #12
  %65 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4
  tail call void @projectx(%struct.t_edpar* %edi, [3 x float]* %x, %struct.t_eigvec* %65) #12
  %66 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3
  tail call void @projectx(%struct.t_edpar* %edi, [3 x float]* %x, %struct.t_eigvec* %66) #12
  store float -1.000000e+05, float* @do_edsam.oldrad, align 4, !tbaa !2
  br label %67

; <label>:67                                      ; preds = %64, %.loopexit
  %68 = tail call i32 @do_per_step(i32 %step, i32 500) #11
  %69 = icmp ne i32 %68, 0
  %or.cond5 = and i1 %63, %69
  br i1 %or.cond5, label %70, label %80

; <label>:70                                      ; preds = %67
  %71 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4
  %72 = tail call float @calc_radius(%struct.t_eigvec* %71) #12
  %73 = load float* @do_edsam.oldrad, align 4, !tbaa !2
  %74 = fsub float %72, %73
  %75 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 10
  %76 = load float* %75, align 4, !tbaa !57
  %77 = fcmp olt float %74, %76
  br i1 %77, label %78, label %79

; <label>:78                                      ; preds = %70
  tail call void @project([3 x float]* %x, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #12
  tail call void @projectx(%struct.t_edpar* %edi, [3 x float]* %x, %struct.t_eigvec* %71) #12
  store float 0.000000e+00, float* @do_edsam.oldrad, align 4, !tbaa !2
  br label %80

; <label>:79                                      ; preds = %70
  store float %72, float* @do_edsam.oldrad, align 4, !tbaa !2
  br label %80

; <label>:80                                      ; preds = %78, %79, %67
  tail call void @ed_cons([3 x float]* %x, %struct.t_edpar* %edi, i32 %step) #12
  %81 = load i32* %13, align 4, !tbaa !54
  %82 = tail call i32 @do_per_step(i32 %step, i32 %81) #11
  %83 = icmp ne i32 %82, 0
  %or.cond7 = and i1 %17, %83
  br i1 %or.cond7, label %84, label %90

; <label>:84                                      ; preds = %80
  call void @rotate_vec(i32 %2, [3 x float]* %vdum.0, [3 x float]* %57) #12
  call void @rotate_vec(i32 %2, [3 x float]* %fdum.0, [3 x float]* %57) #12
  tail call void @project([3 x float]* %vdum.0, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #12
  tail call void @project([3 x float]* %fdum.0, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str49, i64 0, i64 0)) #12
  tail call void @project([3 x float]* %x, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #12
  %85 = bitcast [3 x float]* %vdum.0 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 714, i8* %85) #11
  %86 = bitcast [3 x float]* %fdum.0 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 715, i8* %86) #11
  tail call void @write_edo(%struct.t_edpar* %edi, i32 %step, float %58) #12
  %87 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 19
  %88 = load %struct.__sFILE** %87, align 8, !tbaa !52
  %89 = tail call i32 @fflush(%struct.__sFILE* %88) #11
  br label %90

; <label>:90                                      ; preds = %84, %80
  br i1 %63, label %91, label %111

; <label>:91                                      ; preds = %90
  %92 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 5
  %93 = load i32* %92, align 4, !tbaa !55
  %94 = tail call i32 @do_per_step(i32 %step, i32 %93) #11
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %111, label %96

; <label>:96                                      ; preds = %91
  %97 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([34 x i8]* @.str52, i64 0, i64 0), i32 %step) #11
  tail call void @project([3 x float]* %x, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #12
  tail call void @write_edidx(%struct.__sFILE* %log, %struct.t_edpar* %edi) #12
  %98 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4
  %99 = tail call float @calc_radius(%struct.t_eigvec* %98) #12
  %100 = fpext float %99 to double
  %101 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([24 x i8]* @.str53, i64 0, i64 0), double %100) #11
  %102 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3
  %103 = tail call float @calc_radius(%struct.t_eigvec* %102) #12
  %104 = fpext float %103 to double
  %105 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([29 x i8]* @.str54, i64 0, i64 0), double %104) #11
  %106 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5
  %107 = tail call float @calc_radius(%struct.t_eigvec* %106) #12
  %108 = fpext float %107 to double
  %109 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([25 x i8]* @.str55, i64 0, i64 0), double %108) #11
  %110 = tail call i32 @fflush(%struct.__sFILE* %log) #11
  br label %111

; <label>:111                                     ; preds = %91, %96, %90
  call void @rmfit(i32 %2, [3 x float]* %x, [3 x float]* %56, [3 x float]* %57) #12
  %112 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 1
  %113 = load i32* %112, align 4, !tbaa !91
  %114 = icmp eq i32 %113, %step
  br i1 %114, label %115, label %118

; <label>:115                                     ; preds = %111
  %116 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 19
  %117 = load %struct.__sFILE** %116, align 8, !tbaa !52
  tail call void @ffclose(%struct.__sFILE* %117) #11
  br label %118

; <label>:118                                     ; preds = %115, %111
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 738, i8* %55) #11
  call void @llvm.lifetime.end(i64 36, i8* %3) #6
  ret void
}

; Function Attrs: optsize
declare i32 @do_per_step(i32, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @ed_cons([3 x float]* nocapture %x, %struct.t_edpar* nocapture %edi, i32 %step) #4 {
  %1 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0
  %2 = load i32* %1, align 4, !tbaa !38
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph4, label %._crit_edge5

.lr.ph4:                                          ; preds = %0
  %4 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  %5 = load i32** %4, align 8, !tbaa !39
  %6 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 2
  %7 = load [3 x float]** %6, align 8, !tbaa !58
  %8 = sext i32 %2 to i64
  br label %9

; <label>:9                                       ; preds = %.lr.ph4, %9
  %indvars.iv6 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next7, %9 ]
  %10 = getelementptr inbounds i32* %5, i64 %indvars.iv6
  %11 = load i32* %10, align 4, !tbaa !34
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [3 x float]* %x, i64 %12, i64 0
  %14 = getelementptr inbounds [3 x float]* %7, i64 %indvars.iv6, i64 0
  %15 = load float* %13, align 4, !tbaa !2
  %16 = load float* %14, align 4, !tbaa !2
  %17 = fsub float %15, %16
  %18 = getelementptr inbounds [3 x float]* %x, i64 %12, i64 1
  %19 = load float* %18, align 4, !tbaa !2
  %20 = getelementptr inbounds [3 x float]* %7, i64 %indvars.iv6, i64 1
  %21 = load float* %20, align 4, !tbaa !2
  %22 = fsub float %19, %21
  %23 = getelementptr inbounds [3 x float]* %x, i64 %12, i64 2
  %24 = load float* %23, align 4, !tbaa !2
  %25 = getelementptr inbounds [3 x float]* %7, i64 %indvars.iv6, i64 2
  %26 = load float* %25, align 4, !tbaa !2
  %27 = fsub float %24, %26
  store float %17, float* %13, align 4, !tbaa !2
  store float %22, float* %18, align 4, !tbaa !2
  store float %27, float* %23, align 4, !tbaa !2
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %28 = icmp slt i64 %indvars.iv.next7, %8
  br i1 %28, label %9, label %._crit_edge5

._crit_edge5:                                     ; preds = %9, %0
  %29 = icmp sgt i32 %step, -1
  br i1 %29, label %30, label %.critedge

; <label>:30                                      ; preds = %._crit_edge5
  tail call void @do_linfix([3 x float]* %x, %struct.t_edpar* %edi, i32 %step) #12
  tail call void @do_linacc([3 x float]* %x, %struct.t_edpar* %edi) #12
  tail call void @do_radfix([3 x float]* %x, %struct.t_edpar* %edi, i32 undef) #12
  br label %31

.critedge:                                        ; preds = %._crit_edge5
  tail call void @do_linacc([3 x float]* %x, %struct.t_edpar* %edi) #12
  br label %31

; <label>:31                                      ; preds = %.critedge, %30
  tail call void @do_radacc([3 x float]* %x, %struct.t_edpar* %edi) #12
  tail call void @do_radcon([3 x float]* %x, %struct.t_edpar* %edi) #12
  %32 = load i32* %1, align 4, !tbaa !38
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %31
  %34 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  %35 = load i32** %34, align 8, !tbaa !39
  %36 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 2
  %37 = load [3 x float]** %36, align 8, !tbaa !58
  %38 = sext i32 %32 to i64
  br label %39

; <label>:39                                      ; preds = %.lr.ph, %39
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %39 ]
  %40 = getelementptr inbounds i32* %35, i64 %indvars.iv
  %41 = load i32* %40, align 4, !tbaa !34
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x float]* %x, i64 %42, i64 0
  %44 = getelementptr inbounds [3 x float]* %37, i64 %indvars.iv, i64 0
  %45 = load float* %43, align 4, !tbaa !2
  %46 = load float* %44, align 4, !tbaa !2
  %47 = fadd float %45, %46
  %48 = getelementptr inbounds [3 x float]* %x, i64 %42, i64 1
  %49 = load float* %48, align 4, !tbaa !2
  %50 = getelementptr inbounds [3 x float]* %37, i64 %indvars.iv, i64 1
  %51 = load float* %50, align 4, !tbaa !2
  %52 = fadd float %49, %51
  %53 = getelementptr inbounds [3 x float]* %x, i64 %42, i64 2
  %54 = load float* %53, align 4, !tbaa !2
  %55 = getelementptr inbounds [3 x float]* %37, i64 %indvars.iv, i64 2
  %56 = load float* %55, align 4, !tbaa !2
  %57 = fadd float %54, %56
  store float %47, float* %43, align 4, !tbaa !2
  store float %52, float* %48, align 4, !tbaa !2
  store float %57, float* %53, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %58 = icmp slt i64 %indvars.iv.next, %38
  br i1 %58, label %39, label %._crit_edge

._crit_edge:                                      ; preds = %39, %31
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @rotate_vec(i32 %nr, [3 x float]* nocapture %x, [3 x float]* nocapture readonly %rotmat) #4 {
  %xdum = alloca [3 x float], align 4
  %xdum6 = bitcast [3 x float]* %xdum to i8*
  %1 = icmp sgt i32 %nr, 0
  br i1 %1, label %.preheader1.lr.ph, label %._crit_edge

.preheader1.lr.ph:                                ; preds = %0
  %2 = add i32 %nr, -1
  br label %.preheader1

.preheader1:                                      ; preds = %14, %.preheader1.lr.ph
  %indvars.iv13 = phi i64 [ 0, %.preheader1.lr.ph ], [ %indvars.iv.next14, %14 ]
  %scevgep = getelementptr [3 x float]* %x, i64 %indvars.iv13, i64 0
  %scevgep7 = bitcast float* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %xdum6, i8* %scevgep7, i64 12, i32 4, i1 false)
  br label %3

; <label>:3                                       ; preds = %13, %.preheader1
  %indvars.iv8 = phi i64 [ 0, %.preheader1 ], [ %indvars.iv.next9, %13 ]
  %4 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv13, i64 %indvars.iv8
  store float 0.000000e+00, float* %4, align 4, !tbaa !2
  br label %5

; <label>:5                                       ; preds = %5, %3
  %6 = phi float [ 0.000000e+00, %3 ], [ %12, %5 ]
  %indvars.iv = phi i64 [ 0, %3 ], [ %indvars.iv.next, %5 ]
  %7 = getelementptr inbounds [3 x float]* %rotmat, i64 %indvars.iv, i64 %indvars.iv8
  %8 = load float* %7, align 4, !tbaa !2
  %9 = getelementptr inbounds [3 x float]* %xdum, i64 0, i64 %indvars.iv
  %10 = load float* %9, align 4, !tbaa !2
  %11 = fmul float %8, %10
  %12 = fadd float %6, %11
  store float %12, float* %4, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %13, label %5

; <label>:13                                      ; preds = %5
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  %exitcond10 = icmp eq i64 %indvars.iv.next9, 3
  br i1 %exitcond10, label %14, label %3

; <label>:14                                      ; preds = %13
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %lftr.wideiv = trunc i64 %indvars.iv13 to i32
  %exitcond15 = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond15, label %._crit_edge, label %.preheader1

._crit_edge:                                      ; preds = %14, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @write_edo(%struct.t_edpar* nocapture readonly %edi, i32 %step, float %rmsd) #4 {
  %1 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 19
  %2 = load %struct.__sFILE** %1, align 8, !tbaa !52
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %2, i8* getelementptr inbounds ([4 x i8]* @.str57, i64 0, i64 0), i32 %step) #11
  %4 = load %struct.__sFILE** %1, align 8, !tbaa !52
  %5 = fpext float %rmsd to double
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([4 x i8]* @.str58, i64 0, i64 0), double %5) #11
  %7 = load %struct.__sFILE** %1, align 8, !tbaa !52
  tail call void @write_proj(%struct.__sFILE* %7, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #12
  %8 = load %struct.__sFILE** %1, align 8, !tbaa !52
  tail call void @write_proj(%struct.__sFILE* %8, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #12
  %9 = load %struct.__sFILE** %1, align 8, !tbaa !52
  tail call void @write_proj(%struct.__sFILE* %9, %struct.t_edpar* %edi, i8* getelementptr inbounds ([2 x i8]* @.str49, i64 0, i64 0)) #12
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @rmfit(i32 %ned, [3 x float]* nocapture %x, [3 x float]* nocapture readonly %transvec, [3 x float]* nocapture readonly %rotmat) #4 {
  %r_inv = alloca [3 x [3 x float]], align 16
  %xdum = alloca [3 x float], align 4
  %xdum11 = bitcast [3 x float]* %xdum to i8*
  %1 = bitcast [3 x [3 x float]]* %r_inv to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #6
  %2 = getelementptr inbounds [3 x float]* %rotmat, i64 0, i64 0
  %3 = load float* %2, align 4, !tbaa !2
  %4 = getelementptr inbounds [3 x float]* %rotmat, i64 1, i64 1
  %5 = load float* %4, align 4, !tbaa !2
  %6 = getelementptr inbounds [3 x float]* %rotmat, i64 2, i64 2
  %7 = load float* %6, align 4, !tbaa !2
  %8 = fmul float %5, %7
  %9 = getelementptr inbounds [3 x float]* %rotmat, i64 2, i64 1
  %10 = load float* %9, align 4, !tbaa !2
  %11 = getelementptr inbounds [3 x float]* %rotmat, i64 1, i64 2
  %12 = load float* %11, align 4, !tbaa !2
  %13 = fmul float %10, %12
  %14 = fsub float %8, %13
  %15 = fmul float %3, %14
  %16 = getelementptr inbounds [3 x float]* %rotmat, i64 1, i64 0
  %17 = load float* %16, align 4, !tbaa !2
  %18 = getelementptr inbounds [3 x float]* %rotmat, i64 0, i64 1
  %19 = load float* %18, align 4, !tbaa !2
  %20 = fmul float %7, %19
  %21 = getelementptr inbounds [3 x float]* %rotmat, i64 0, i64 2
  %22 = load float* %21, align 4, !tbaa !2
  %23 = fmul float %10, %22
  %24 = fsub float %20, %23
  %25 = fmul float %17, %24
  %26 = fsub float %15, %25
  %27 = getelementptr inbounds [3 x float]* %rotmat, i64 2, i64 0
  %28 = load float* %27, align 4, !tbaa !2
  %29 = fmul float %12, %19
  %30 = fmul float %5, %22
  %31 = fsub float %29, %30
  %32 = fmul float %28, %31
  %33 = fadd float %32, %26
  %34 = fdiv float 1.000000e+00, %33
  %fabsf.i = tail call float @fabsf(float %34) #8
  %35 = fcmp ole float %fabsf.i, 0x3C32725DE0000000
  %36 = fcmp oge float %fabsf.i, 0x43ABC16D60000000
  %or.cond.i = or i1 %35, %36
  br i1 %or.cond.i, label %37, label %m_inv.exit

; <label>:37                                      ; preds = %0
  %38 = fpext float %34 to double
  %39 = fdiv double 1.000000e+00, %38
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([17 x i8]* @.str68, i64 0, i64 0), double %39) #11
  %.pre.i = load float* %4, align 4, !tbaa !2
  %.pre2.i = load float* %6, align 4, !tbaa !2
  %.pre3.i = load float* %9, align 4, !tbaa !2
  %.pre4.i = load float* %11, align 4, !tbaa !2
  %.pre = load float* %18, align 4, !tbaa !2
  %.pre25 = load float* %21, align 4, !tbaa !2
  %.pre26 = load float* %16, align 4, !tbaa !2
  %.pre27 = load float* %27, align 4, !tbaa !2
  %.pre28 = load float* %2, align 4, !tbaa !2
  br label %m_inv.exit

m_inv.exit:                                       ; preds = %0, %37
  %40 = phi float [ %3, %0 ], [ %.pre28, %37 ]
  %41 = phi float [ %28, %0 ], [ %.pre27, %37 ]
  %42 = phi float [ %17, %0 ], [ %.pre26, %37 ]
  %43 = phi float [ %22, %0 ], [ %.pre25, %37 ]
  %44 = phi float [ %19, %0 ], [ %.pre, %37 ]
  %45 = phi float [ %12, %0 ], [ %.pre4.i, %37 ]
  %46 = phi float [ %10, %0 ], [ %.pre3.i, %37 ]
  %47 = phi float [ %7, %0 ], [ %.pre2.i, %37 ]
  %48 = phi float [ %5, %0 ], [ %.pre.i, %37 ]
  %49 = fmul float %47, %48
  %50 = fmul float %45, %46
  %51 = fsub float %49, %50
  %52 = fsub float -0.000000e+00, %34
  %53 = fmul float %44, %47
  %54 = fmul float %46, %43
  %55 = fsub float %53, %54
  %56 = fmul float %44, %45
  %57 = fmul float %48, %43
  %58 = fsub float %56, %57
  %59 = fmul float %42, %47
  %60 = fmul float %41, %45
  %61 = fsub float %59, %60
  %62 = insertelement <4 x float> undef, float %34, i32 0
  %63 = insertelement <4 x float> %62, float %55, i32 1
  %64 = insertelement <4 x float> %63, float %34, i32 2
  %65 = insertelement <4 x float> %64, float %61, i32 3
  %66 = insertelement <4 x float> undef, float %51, i32 0
  %67 = insertelement <4 x float> %66, float %52, i32 1
  %68 = insertelement <4 x float> %67, float %58, i32 2
  %69 = insertelement <4 x float> %68, float %52, i32 3
  %70 = fmul <4 x float> %65, %69
  %71 = bitcast [3 x [3 x float]]* %r_inv to <4 x float>*
  store <4 x float> %70, <4 x float>* %71, align 16, !tbaa !2
  %72 = fmul float %40, %47
  %73 = fmul float %41, %43
  %74 = fsub float %72, %73
  %75 = getelementptr inbounds [3 x [3 x float]]* %r_inv, i64 0, i64 1, i64 1
  %76 = fmul float %40, %45
  %77 = fmul float %42, %43
  %78 = fsub float %76, %77
  %79 = fmul float %42, %46
  %80 = fmul float %41, %48
  %81 = fsub float %79, %80
  %82 = fmul float %40, %46
  %83 = fmul float %41, %44
  %84 = fsub float %82, %83
  %85 = insertelement <4 x float> %62, float %78, i32 1
  %86 = insertelement <4 x float> %85, float %34, i32 2
  %87 = insertelement <4 x float> %86, float %84, i32 3
  %88 = insertelement <4 x float> undef, float %74, i32 0
  %89 = insertelement <4 x float> %88, float %52, i32 1
  %90 = insertelement <4 x float> %89, float %81, i32 2
  %91 = insertelement <4 x float> %90, float %52, i32 3
  %92 = fmul <4 x float> %87, %91
  %93 = bitcast float* %75 to <4 x float>*
  store <4 x float> %92, <4 x float>* %93, align 4, !tbaa !2
  %94 = fmul float %40, %48
  %95 = fmul float %42, %44
  %96 = fsub float %94, %95
  %97 = fmul float %34, %96
  %98 = getelementptr inbounds [3 x [3 x float]]* %r_inv, i64 0, i64 2, i64 2
  store float %97, float* %98, align 8, !tbaa !2
  %99 = icmp sgt i32 %ned, 0
  br i1 %99, label %.preheader2.lr.ph, label %._crit_edge

.preheader2.lr.ph:                                ; preds = %m_inv.exit
  %100 = add i32 %ned, -1
  br label %.preheader2

.preheader2:                                      ; preds = %113, %.preheader2.lr.ph
  %indvars.iv21 = phi i64 [ 0, %.preheader2.lr.ph ], [ %indvars.iv.next22, %113 ]
  %scevgep = getelementptr [3 x float]* %x, i64 %indvars.iv21, i64 0
  %scevgep12 = bitcast float* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %xdum11, i8* %scevgep12, i64 12, i32 4, i1 false)
  br label %102

.preheader:                                       ; preds = %113
  br i1 %99, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %101 = add i32 %ned, -1
  br label %114

; <label>:102                                     ; preds = %112, %.preheader2
  %indvars.iv16 = phi i64 [ 0, %.preheader2 ], [ %indvars.iv.next17, %112 ]
  %103 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv21, i64 %indvars.iv16
  store float 0.000000e+00, float* %103, align 4, !tbaa !2
  br label %104

; <label>:104                                     ; preds = %104, %102
  %indvars.iv13 = phi i64 [ 0, %102 ], [ %indvars.iv.next14, %104 ]
  %105 = phi float [ 0.000000e+00, %102 ], [ %111, %104 ]
  %106 = getelementptr inbounds [3 x [3 x float]]* %r_inv, i64 0, i64 %indvars.iv13, i64 %indvars.iv16
  %107 = load float* %106, align 4, !tbaa !2
  %108 = getelementptr inbounds [3 x float]* %xdum, i64 0, i64 %indvars.iv13
  %109 = load float* %108, align 4, !tbaa !2
  %110 = fmul float %107, %109
  %111 = fadd float %105, %110
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %exitcond15 = icmp eq i64 %indvars.iv.next14, 3
  br i1 %exitcond15, label %112, label %104

; <label>:112                                     ; preds = %104
  store float %111, float* %103, align 4, !tbaa !2
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %exitcond18 = icmp eq i64 %indvars.iv.next17, 3
  br i1 %exitcond18, label %113, label %102

; <label>:113                                     ; preds = %112
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %lftr.wideiv23 = trunc i64 %indvars.iv21 to i32
  %exitcond24 = icmp eq i32 %lftr.wideiv23, %100
  br i1 %exitcond24, label %.preheader, label %.preheader2

; <label>:114                                     ; preds = %114, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %114 ]
  %115 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %116 = getelementptr inbounds [3 x float]* %transvec, i64 %indvars.iv, i64 0
  %117 = load float* %115, align 4, !tbaa !2
  %118 = load float* %116, align 4, !tbaa !2
  %119 = fsub float %117, %118
  %120 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  %121 = load float* %120, align 4, !tbaa !2
  %122 = getelementptr inbounds [3 x float]* %transvec, i64 %indvars.iv, i64 1
  %123 = load float* %122, align 4, !tbaa !2
  %124 = fsub float %121, %123
  %125 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  %126 = load float* %125, align 4, !tbaa !2
  %127 = getelementptr inbounds [3 x float]* %transvec, i64 %indvars.iv, i64 2
  %128 = load float* %127, align 4, !tbaa !2
  %129 = fsub float %126, %128
  store float %119, float* %115, align 4, !tbaa !2
  store float %124, float* %120, align 4, !tbaa !2
  store float %129, float* %125, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %101
  br i1 %exitcond, label %._crit_edge, label %114

._crit_edge:                                      ; preds = %114, %m_inv.exit, %.preheader
  call void @llvm.lifetime.end(i64 36, i8* %1) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @do_linfix([3 x float]* nocapture %x, %struct.t_edpar* nocapture readonly %edi, i32 %step) #4 {
  %1 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1, i32 0
  %2 = load i32* %1, align 4, !tbaa !64
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph, label %._crit_edge5

.lr.ph:                                           ; preds = %0
  %4 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1, i32 3
  %5 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1, i32 7
  %6 = sitofp i32 %step to float
  %7 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1, i32 2
  %8 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0
  %9 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  %.pre = load [3 x float]*** %4, align 8, !tbaa !92
  %.pre10 = load float** %5, align 8, !tbaa !93
  %.pre11 = load float** %7, align 8, !tbaa !94
  %.pre12 = load i32* %8, align 4, !tbaa !38
  br label %10

; <label>:10                                      ; preds = %.lr.ph, %._crit_edge
  %indvars.iv8 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next9, %._crit_edge ]
  %11 = getelementptr inbounds [3 x float]** %.pre, i64 %indvars.iv8
  %12 = load [3 x float]** %11, align 8, !tbaa !8
  %13 = tail call float @do_projectx(%struct.t_edpar* %edi, [3 x float]* %x, [3 x float]* %12) #12
  %14 = getelementptr inbounds float* %.pre10, i64 %indvars.iv8
  %15 = load float* %14, align 4, !tbaa !2
  %16 = getelementptr inbounds float* %.pre11, i64 %indvars.iv8
  %17 = load float* %16, align 4, !tbaa !2
  %18 = fmul float %6, %17
  %19 = fadd float %15, %18
  %20 = fsub float %19, %13
  %21 = icmp sgt i32 %.pre12, 0
  br i1 %21, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %10
  %22 = load i32** %9, align 8, !tbaa !39
  %23 = sext i32 %.pre12 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %34
  %indvars.iv6 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next7, %34 ]
  %24 = getelementptr inbounds i32* %22, i64 %indvars.iv6
  %25 = load i32* %24, align 4, !tbaa !34
  %26 = sext i32 %25 to i64
  br label %27

; <label>:27                                      ; preds = %27, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %27 ]
  %28 = getelementptr inbounds [3 x float]* %12, i64 %indvars.iv6, i64 %indvars.iv
  %29 = load float* %28, align 4, !tbaa !2
  %30 = fmul float %20, %29
  %31 = getelementptr inbounds [3 x float]* %x, i64 %26, i64 %indvars.iv
  %32 = load float* %31, align 4, !tbaa !2
  %33 = fadd float %30, %32
  store float %33, float* %31, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %34, label %27

; <label>:34                                      ; preds = %27
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %35 = icmp slt i64 %indvars.iv.next7, %23
  br i1 %35, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %34, %10
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  %36 = sext i32 %2 to i64
  %37 = icmp slt i64 %indvars.iv.next9, %36
  br i1 %37, label %10, label %._crit_edge5

._crit_edge5:                                     ; preds = %._crit_edge, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @do_linacc([3 x float]* nocapture %x, %struct.t_edpar* nocapture readonly %edi) #4 {
  %1 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2, i32 0
  %2 = load i32* %1, align 4, !tbaa !67
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph, label %._crit_edge5

.lr.ph:                                           ; preds = %0
  %4 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2, i32 3
  %5 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2, i32 2
  %6 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2, i32 7
  %7 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0
  %8 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  %.pre = load [3 x float]*** %4, align 8, !tbaa !95
  %.pre10 = load float** %5, align 8, !tbaa !96
  br label %9

; <label>:9                                       ; preds = %.lr.ph, %._crit_edge
  %indvars.iv8 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next9, %._crit_edge ]
  %10 = getelementptr inbounds [3 x float]** %.pre, i64 %indvars.iv8
  %11 = load [3 x float]** %10, align 8, !tbaa !8
  %12 = tail call float @do_projectx(%struct.t_edpar* %edi, [3 x float]* %x, [3 x float]* %11) #12
  %13 = getelementptr inbounds float* %.pre10, i64 %indvars.iv8
  %14 = load float* %13, align 4, !tbaa !2
  %15 = fcmp ogt float %14, 0.000000e+00
  br i1 %15, label %16, label %24

; <label>:16                                      ; preds = %9
  %17 = load float** %6, align 8, !tbaa !97
  %18 = getelementptr inbounds float* %17, i64 %indvars.iv8
  %19 = load float* %18, align 4, !tbaa !2
  %20 = fsub float %12, %19
  %21 = fcmp olt float %20, 0.000000e+00
  br i1 %21, label %22, label %24

; <label>:22                                      ; preds = %16
  %23 = fsub float %19, %12
  br label %24

; <label>:24                                      ; preds = %16, %22, %9
  %add.0 = phi float [ %23, %22 ], [ 0.000000e+00, %16 ], [ 0.000000e+00, %9 ]
  %25 = fcmp olt float %14, 0.000000e+00
  br i1 %25, label %26, label %34

; <label>:26                                      ; preds = %24
  %27 = load float** %6, align 8, !tbaa !97
  %28 = getelementptr inbounds float* %27, i64 %indvars.iv8
  %29 = load float* %28, align 4, !tbaa !2
  %30 = fsub float %12, %29
  %31 = fcmp ogt float %30, 0.000000e+00
  br i1 %31, label %32, label %34

; <label>:32                                      ; preds = %26
  %33 = fsub float %29, %12
  br label %34

; <label>:34                                      ; preds = %26, %32, %24
  %add.1 = phi float [ %33, %32 ], [ %add.0, %26 ], [ %add.0, %24 ]
  %35 = load i32* %7, align 4, !tbaa !38
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %34
  %37 = load i32** %8, align 8, !tbaa !39
  %38 = sext i32 %35 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %49
  %indvars.iv6 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next7, %49 ]
  %39 = getelementptr inbounds i32* %37, i64 %indvars.iv6
  %40 = load i32* %39, align 4, !tbaa !34
  %41 = sext i32 %40 to i64
  br label %42

; <label>:42                                      ; preds = %42, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %42 ]
  %43 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv6, i64 %indvars.iv
  %44 = load float* %43, align 4, !tbaa !2
  %45 = fmul float %add.1, %44
  %46 = getelementptr inbounds [3 x float]* %x, i64 %41, i64 %indvars.iv
  %47 = load float* %46, align 4, !tbaa !2
  %48 = fadd float %45, %47
  store float %48, float* %46, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %49, label %42

; <label>:49                                      ; preds = %42
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %50 = icmp slt i64 %indvars.iv.next7, %38
  br i1 %50, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %49, %34
  %51 = fadd float %12, %add.1
  %52 = load float** %6, align 8, !tbaa !97
  %53 = getelementptr inbounds float* %52, i64 %indvars.iv8
  store float %51, float* %53, align 4, !tbaa !2
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  %54 = sext i32 %2 to i64
  %55 = icmp slt i64 %indvars.iv.next9, %54
  br i1 %55, label %9, label %._crit_edge5

._crit_edge5:                                     ; preds = %._crit_edge, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @do_radfix([3 x float]* nocapture %x, %struct.t_edpar* nocapture %edi, i32 %step) #4 {
  %1 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 0
  %2 = load i32* %1, align 4, !tbaa !70
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %68, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 856, i32 %2, i32 4) #11
  %6 = bitcast i8* %5 to float*
  %7 = load i32* %1, align 4, !tbaa !70
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %.lr.ph9, label %._crit_edge10

.lr.ph9:                                          ; preds = %4
  %9 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 3
  %10 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 7
  %.pre = load [3 x float]*** %9, align 8, !tbaa !98
  %.pre17 = load float** %10, align 8, !tbaa !99
  br label %11

; <label>:11                                      ; preds = %.lr.ph9, %11
  %indvars.iv15 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next16, %11 ]
  %rad.06 = phi double [ 0.000000e+00, %.lr.ph9 ], [ %phitmp, %11 ]
  %12 = getelementptr inbounds [3 x float]** %.pre, i64 %indvars.iv15
  %13 = load [3 x float]** %12, align 8, !tbaa !8
  %14 = tail call float @do_projectx(%struct.t_edpar* %edi, [3 x float]* %x, [3 x float]* %13) #12
  %15 = getelementptr inbounds float* %6, i64 %indvars.iv15
  store float %14, float* %15, align 4, !tbaa !2
  %16 = getelementptr inbounds float* %.pre17, i64 %indvars.iv15
  %17 = load float* %16, align 4, !tbaa !2
  %18 = fsub float %14, %17
  %19 = fpext float %18 to double
  %pow2 = fmul double %19, %19
  %20 = fadd double %rad.06, %pow2
  %21 = fptrunc double %20 to float
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %phitmp = fpext float %21 to double
  %22 = sext i32 %7 to i64
  %23 = icmp slt i64 %indvars.iv.next16, %22
  br i1 %23, label %11, label %._crit_edge10

._crit_edge10:                                    ; preds = %11, %4
  %rad.0.lcssa = phi double [ 0.000000e+00, %4 ], [ %phitmp, %11 ]
  %24 = tail call double @sqrt(double %rad.0.lcssa) #13
  %25 = fptrunc double %24 to float
  %26 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 2
  %27 = load float** %26, align 8, !tbaa !100
  %28 = load float* %27, align 4, !tbaa !2
  %29 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 8
  %30 = load float* %29, align 4, !tbaa !49
  %31 = fadd float %28, %30
  %32 = fdiv float %31, %25
  %33 = fadd float %32, -1.000000e+00
  store float %31, float* %29, align 4, !tbaa !49
  br i1 %8, label %.lr.ph, label %._crit_edge5

.lr.ph:                                           ; preds = %._crit_edge10
  %34 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 7
  %35 = load float** %34, align 8, !tbaa !99
  %36 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0
  %37 = load i32* %36, align 4, !tbaa !38
  %38 = icmp sgt i32 %37, 0
  %39 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3, i32 3
  %40 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  %41 = sext i32 %7 to i64
  br label %42

; <label>:42                                      ; preds = %.lr.ph, %._crit_edge
  %indvars.iv13 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next14, %._crit_edge ]
  %43 = getelementptr inbounds float* %35, i64 %indvars.iv13
  %44 = load float* %43, align 4, !tbaa !2
  %45 = getelementptr inbounds float* %6, i64 %indvars.iv13
  %46 = load float* %45, align 4, !tbaa !2
  %47 = fsub float %46, %44
  store float %47, float* %45, align 4, !tbaa !2
  br i1 %38, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %42
  %48 = load [3 x float]*** %39, align 8, !tbaa !98
  %49 = getelementptr inbounds [3 x float]** %48, i64 %indvars.iv13
  %50 = load [3 x float]** %49, align 8, !tbaa !8
  %51 = load i32** %40, align 8, !tbaa !39
  %52 = sext i32 %37 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %65
  %indvars.iv11 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next12, %65 ]
  %53 = getelementptr inbounds i32* %51, i64 %indvars.iv11
  %54 = load i32* %53, align 4, !tbaa !34
  %55 = sext i32 %54 to i64
  br label %56

; <label>:56                                      ; preds = %56, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %56 ]
  %57 = load float* %45, align 4, !tbaa !2
  %58 = fmul float %33, %57
  %59 = getelementptr inbounds [3 x float]* %50, i64 %indvars.iv11, i64 %indvars.iv
  %60 = load float* %59, align 4, !tbaa !2
  %61 = fmul float %58, %60
  %62 = getelementptr inbounds [3 x float]* %x, i64 %55, i64 %indvars.iv
  %63 = load float* %62, align 4, !tbaa !2
  %64 = fadd float %61, %63
  store float %64, float* %62, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %65, label %56

; <label>:65                                      ; preds = %56
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %66 = icmp slt i64 %indvars.iv.next12, %52
  br i1 %66, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %65, %42
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %67 = icmp slt i64 %indvars.iv.next14, %41
  br i1 %67, label %42, label %._crit_edge5

._crit_edge5:                                     ; preds = %._crit_edge, %._crit_edge10
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 876, i8* %5) #11
  br label %68

; <label>:68                                      ; preds = %0, %._crit_edge5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @do_radacc([3 x float]* nocapture %x, %struct.t_edpar* nocapture %edi) #4 {
  %1 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 0
  %2 = load i32* %1, align 4, !tbaa !73
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %68, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 885, i32 %2, i32 4) #11
  %6 = bitcast i8* %5 to float*
  %7 = load i32* %1, align 4, !tbaa !73
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %.lr.ph9, label %._crit_edge10

.lr.ph9:                                          ; preds = %4
  %9 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 3
  %10 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 7
  %.pre = load [3 x float]*** %9, align 8, !tbaa !101
  %.pre17 = load float** %10, align 8, !tbaa !102
  br label %11

; <label>:11                                      ; preds = %.lr.ph9, %11
  %indvars.iv15 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next16, %11 ]
  %rad.07 = phi double [ 0.000000e+00, %.lr.ph9 ], [ %phitmp, %11 ]
  %12 = getelementptr inbounds [3 x float]** %.pre, i64 %indvars.iv15
  %13 = load [3 x float]** %12, align 8, !tbaa !8
  %14 = tail call float @do_projectx(%struct.t_edpar* %edi, [3 x float]* %x, [3 x float]* %13) #12
  %15 = getelementptr inbounds float* %6, i64 %indvars.iv15
  store float %14, float* %15, align 4, !tbaa !2
  %16 = getelementptr inbounds float* %.pre17, i64 %indvars.iv15
  %17 = load float* %16, align 4, !tbaa !2
  %18 = fsub float %14, %17
  %19 = fpext float %18 to double
  %pow2 = fmul double %19, %19
  %20 = fadd double %rad.07, %pow2
  %21 = fptrunc double %20 to float
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %phitmp = fpext float %21 to double
  %22 = sext i32 %7 to i64
  %23 = icmp slt i64 %indvars.iv.next16, %22
  br i1 %23, label %11, label %._crit_edge10

._crit_edge10:                                    ; preds = %11, %4
  %rad.0.lcssa = phi double [ 0.000000e+00, %4 ], [ %phitmp, %11 ]
  %24 = tail call double @sqrt(double %rad.0.lcssa) #13
  %25 = fptrunc double %24 to float
  %26 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 8
  %27 = load float* %26, align 4, !tbaa !50
  %28 = fcmp olt float %25, %27
  br i1 %28, label %29, label %32

; <label>:29                                      ; preds = %._crit_edge10
  %30 = fdiv float %27, %25
  %31 = fadd float %30, -1.000000e+00
  br label %33

; <label>:32                                      ; preds = %._crit_edge10
  store float %25, float* %26, align 4, !tbaa !50
  br label %33

; <label>:33                                      ; preds = %32, %29
  %ratio.0 = phi float [ %31, %29 ], [ 0.000000e+00, %32 ]
  br i1 %8, label %.lr.ph, label %._crit_edge5

.lr.ph:                                           ; preds = %33
  %34 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 7
  %35 = load float** %34, align 8, !tbaa !102
  %36 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0
  %37 = load i32* %36, align 4, !tbaa !38
  %38 = icmp sgt i32 %37, 0
  %39 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4, i32 3
  %40 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  %41 = sext i32 %7 to i64
  br label %42

; <label>:42                                      ; preds = %.lr.ph, %._crit_edge
  %indvars.iv13 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next14, %._crit_edge ]
  %43 = getelementptr inbounds float* %35, i64 %indvars.iv13
  %44 = load float* %43, align 4, !tbaa !2
  %45 = getelementptr inbounds float* %6, i64 %indvars.iv13
  %46 = load float* %45, align 4, !tbaa !2
  %47 = fsub float %46, %44
  store float %47, float* %45, align 4, !tbaa !2
  br i1 %38, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %42
  %48 = load [3 x float]*** %39, align 8, !tbaa !101
  %49 = getelementptr inbounds [3 x float]** %48, i64 %indvars.iv13
  %50 = load [3 x float]** %49, align 8, !tbaa !8
  %51 = load i32** %40, align 8, !tbaa !39
  %52 = sext i32 %37 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %65
  %indvars.iv11 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next12, %65 ]
  %53 = getelementptr inbounds i32* %51, i64 %indvars.iv11
  %54 = load i32* %53, align 4, !tbaa !34
  %55 = sext i32 %54 to i64
  br label %56

; <label>:56                                      ; preds = %56, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %56 ]
  %57 = load float* %45, align 4, !tbaa !2
  %58 = fmul float %ratio.0, %57
  %59 = getelementptr inbounds [3 x float]* %50, i64 %indvars.iv11, i64 %indvars.iv
  %60 = load float* %59, align 4, !tbaa !2
  %61 = fmul float %58, %60
  %62 = getelementptr inbounds [3 x float]* %x, i64 %55, i64 %indvars.iv
  %63 = load float* %62, align 4, !tbaa !2
  %64 = fadd float %61, %63
  store float %64, float* %62, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %65, label %56

; <label>:65                                      ; preds = %56
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %66 = icmp slt i64 %indvars.iv.next12, %52
  br i1 %66, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %65, %42
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %67 = icmp slt i64 %indvars.iv.next14, %41
  br i1 %67, label %42, label %._crit_edge5

._crit_edge5:                                     ; preds = %._crit_edge, %33
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 913, i8* %5) #11
  br label %68

; <label>:68                                      ; preds = %0, %._crit_edge5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @do_radcon([3 x float]* nocapture %x, %struct.t_edpar* nocapture %edi) #4 {
  %1 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 0
  %2 = load i32* %1, align 4, !tbaa !76
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %68, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 922, i32 %2, i32 4) #11
  %6 = bitcast i8* %5 to float*
  %7 = load i32* %1, align 4, !tbaa !76
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %.lr.ph9, label %._crit_edge10

.lr.ph9:                                          ; preds = %4
  %9 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 3
  %10 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 7
  %.pre = load [3 x float]*** %9, align 8, !tbaa !103
  %.pre17 = load float** %10, align 8, !tbaa !104
  br label %11

; <label>:11                                      ; preds = %.lr.ph9, %11
  %indvars.iv15 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next16, %11 ]
  %rad.07 = phi double [ 0.000000e+00, %.lr.ph9 ], [ %phitmp, %11 ]
  %12 = getelementptr inbounds [3 x float]** %.pre, i64 %indvars.iv15
  %13 = load [3 x float]** %12, align 8, !tbaa !8
  %14 = tail call float @do_projectx(%struct.t_edpar* %edi, [3 x float]* %x, [3 x float]* %13) #12
  %15 = getelementptr inbounds float* %6, i64 %indvars.iv15
  store float %14, float* %15, align 4, !tbaa !2
  %16 = getelementptr inbounds float* %.pre17, i64 %indvars.iv15
  %17 = load float* %16, align 4, !tbaa !2
  %18 = fsub float %14, %17
  %19 = fpext float %18 to double
  %pow2 = fmul double %19, %19
  %20 = fadd double %rad.07, %pow2
  %21 = fptrunc double %20 to float
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %phitmp = fpext float %21 to double
  %22 = sext i32 %7 to i64
  %23 = icmp slt i64 %indvars.iv.next16, %22
  br i1 %23, label %11, label %._crit_edge10

._crit_edge10:                                    ; preds = %11, %4
  %rad.0.lcssa = phi double [ 0.000000e+00, %4 ], [ %phitmp, %11 ]
  %24 = tail call double @sqrt(double %rad.0.lcssa) #13
  %25 = fptrunc double %24 to float
  %26 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 8
  %27 = load float* %26, align 4, !tbaa !51
  %28 = fcmp ogt float %25, %27
  br i1 %28, label %29, label %32

; <label>:29                                      ; preds = %._crit_edge10
  %30 = fdiv float %27, %25
  %31 = fadd float %30, -1.000000e+00
  br label %33

; <label>:32                                      ; preds = %._crit_edge10
  store float %25, float* %26, align 4, !tbaa !51
  br label %33

; <label>:33                                      ; preds = %32, %29
  %ratio.0 = phi float [ %31, %29 ], [ 0.000000e+00, %32 ]
  br i1 %8, label %.lr.ph, label %._crit_edge5

.lr.ph:                                           ; preds = %33
  %34 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 7
  %35 = load float** %34, align 8, !tbaa !104
  %36 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 0
  %37 = load i32* %36, align 4, !tbaa !38
  %38 = icmp sgt i32 %37, 0
  %39 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5, i32 3
  %40 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 8, i32 1
  %41 = sext i32 %7 to i64
  br label %42

; <label>:42                                      ; preds = %.lr.ph, %._crit_edge
  %indvars.iv13 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next14, %._crit_edge ]
  %43 = getelementptr inbounds float* %35, i64 %indvars.iv13
  %44 = load float* %43, align 4, !tbaa !2
  %45 = getelementptr inbounds float* %6, i64 %indvars.iv13
  %46 = load float* %45, align 4, !tbaa !2
  %47 = fsub float %46, %44
  store float %47, float* %45, align 4, !tbaa !2
  br i1 %38, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %42
  %48 = load [3 x float]*** %39, align 8, !tbaa !103
  %49 = getelementptr inbounds [3 x float]** %48, i64 %indvars.iv13
  %50 = load [3 x float]** %49, align 8, !tbaa !8
  %51 = load i32** %40, align 8, !tbaa !39
  %52 = sext i32 %37 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %65
  %indvars.iv11 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next12, %65 ]
  %53 = getelementptr inbounds i32* %51, i64 %indvars.iv11
  %54 = load i32* %53, align 4, !tbaa !34
  %55 = sext i32 %54 to i64
  br label %56

; <label>:56                                      ; preds = %56, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %56 ]
  %57 = load float* %45, align 4, !tbaa !2
  %58 = fmul float %ratio.0, %57
  %59 = getelementptr inbounds [3 x float]* %50, i64 %indvars.iv11, i64 %indvars.iv
  %60 = load float* %59, align 4, !tbaa !2
  %61 = fmul float %58, %60
  %62 = getelementptr inbounds [3 x float]* %x, i64 %55, i64 %indvars.iv
  %63 = load float* %62, align 4, !tbaa !2
  %64 = fadd float %61, %63
  store float %64, float* %62, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %65, label %56

; <label>:65                                      ; preds = %56
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %66 = icmp slt i64 %indvars.iv.next12, %52
  br i1 %66, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %65, %42
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %67 = icmp slt i64 %indvars.iv.next14, %41
  br i1 %67, label %42, label %._crit_edge5

._crit_edge5:                                     ; preds = %._crit_edge, %33
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 948, i8* %5) #11
  br label %68

; <label>:68                                      ; preds = %0, %._crit_edge5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @write_proj(%struct.__sFILE* nocapture %out, %struct.t_edpar* nocapture readonly %edi, i8* nocapture readonly %mode) #4 {
  %1 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 0
  tail call void @do_write_proj(%struct.__sFILE* %out, %struct.t_eigvec* %1, i8* %mode) #12
  %2 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 1
  tail call void @do_write_proj(%struct.__sFILE* %out, %struct.t_eigvec* %2, i8* %mode) #12
  %3 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 2
  tail call void @do_write_proj(%struct.__sFILE* %out, %struct.t_eigvec* %3, i8* %mode) #12
  %4 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 3
  tail call void @do_write_proj(%struct.__sFILE* %out, %struct.t_eigvec* %4, i8* %mode) #12
  %5 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 4
  tail call void @do_write_proj(%struct.__sFILE* %out, %struct.t_eigvec* %5, i8* %mode) #12
  %6 = getelementptr inbounds %struct.t_edpar* %edi, i64 0, i32 9, i32 5
  tail call void @do_write_proj(%struct.__sFILE* %out, %struct.t_eigvec* %6, i8* %mode) #12
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @do_write_proj(%struct.__sFILE* nocapture %out, %struct.t_eigvec* nocapture readonly %vec, i8* nocapture readonly %mode) #4 {
  %1 = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !79
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %0
  %4 = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 4
  %5 = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 5
  %6 = getelementptr inbounds %struct.t_eigvec* %vec, i64 0, i32 6
  br label %7

; <label>:7                                       ; preds = %.lr.ph, %34
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %34 ]
  %8 = tail call i32 @strcmp(i8* %mode, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

; <label>:10                                      ; preds = %7
  %11 = load float** %4, align 8, !tbaa !81
  %12 = getelementptr inbounds float* %11, i64 %indvars.iv
  %13 = load float* %12, align 4, !tbaa !2
  %14 = fpext float %13 to double
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str59, i64 0, i64 0), double %14) #11
  br label %34

; <label>:16                                      ; preds = %7
  %17 = tail call i32 @strcmp(i8* %mode, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

; <label>:19                                      ; preds = %16
  %20 = load float** %5, align 8, !tbaa !86
  %21 = getelementptr inbounds float* %20, i64 %indvars.iv
  %22 = load float* %21, align 4, !tbaa !2
  %23 = fpext float %22 to double
  %24 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str59, i64 0, i64 0), double %23) #11
  br label %34

; <label>:25                                      ; preds = %16
  %26 = tail call i32 @strcmp(i8* %mode, i8* getelementptr inbounds ([2 x i8]* @.str49, i64 0, i64 0)) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

; <label>:28                                      ; preds = %25
  %29 = load float** %6, align 8, !tbaa !87
  %30 = getelementptr inbounds float* %29, i64 %indvars.iv
  %31 = load float* %30, align 4, !tbaa !2
  %32 = fpext float %31 to double
  %33 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str59, i64 0, i64 0), double %32) #11
  br label %34

; <label>:34                                      ; preds = %10, %25, %28, %19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %35 = load i32* %1, align 4, !tbaa !79
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %indvars.iv.next, %36
  br i1 %37, label %7, label %._crit_edge

._crit_edge:                                      ; preds = %34
  %38 = icmp sgt i32 %35, 0
  br i1 %38, label %39, label %._crit_edge.thread

; <label>:39                                      ; preds = %._crit_edge
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %out)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %0, %39, %._crit_edge
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #6

declare float @sqrtf(float)

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #6

declare float @fabsf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { readnone }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize readnone }

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
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"", !12, i64 0, !9, i64 8, !9, i64 16}
!12 = !{!"int", !4, i64 0}
!13 = !{!11, !9, i64 8}
!14 = !{!11, !9, i64 16}
!15 = !{!16, !12, i64 45800}
!16 = !{!"", !9, i64 0, !17, i64 8, !18, i64 45800, !4, i64 47080, !20, i64 50248}
!17 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !9, i64 16, !9, i64 24, !4, i64 32}
!18 = !{!"", !12, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !12, i64 40, !9, i64 48, !12, i64 56, !9, i64 64, !19, i64 72, !4, i64 1128, !9, i64 1272}
!19 = !{!"", !4, i64 0, !12, i64 1024, !9, i64 1032, !12, i64 1040, !9, i64 1048}
!20 = !{!"", !12, i64 0, !9, i64 8}
!21 = !{!22, !12, i64 8}
!22 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !23, i64 32, !23, i64 96, !24, i64 160, !3, i64 592, !23, i64 600, !23, i64 664, !12, i64 728, !9, i64 736, !9, i64 744, !3, i64 752, !12, i64 756, !9, i64 760, !9, i64 768}
!23 = !{!"", !12, i64 0, !9, i64 8, !9, i64 16, !4, i64 24}
!24 = !{!"", !25, i64 0, !25, i64 72, !25, i64 144, !25, i64 216, !25, i64 288, !25, i64 360}
!25 = !{!"", !12, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !3, i64 64}
!26 = !{!22, !3, i64 752}
!27 = !{!22, !12, i64 12}
!28 = !{!22, !12, i64 4}
!29 = !{!22, !12, i64 728}
!30 = !{!22, !9, i64 744}
!31 = !{!22, !9, i64 736}
!32 = !{!22, !9, i64 40}
!33 = !{!16, !9, i64 45808}
!34 = !{!12, !12, i64 0}
!35 = !{!36, !3, i64 0}
!36 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !37, i64 16, !37, i64 18, !12, i64 20, !12, i64 24, !4, i64 28, !4, i64 37}
!37 = !{!"short", !4, i64 0}
!38 = !{!22, !12, i64 96}
!39 = !{!22, !9, i64 104}
!40 = !{!22, !12, i64 32}
!41 = !{!22, !12, i64 756}
!42 = !{!16, !9, i64 45816}
!43 = !{!22, !9, i64 760}
!44 = !{!22, !9, i64 48}
!45 = !{!22, !12, i64 600}
!46 = !{!22, !9, i64 616}
!47 = !{!22, !12, i64 664}
!48 = !{!22, !9, i64 680}
!49 = !{!22, !3, i64 440}
!50 = !{!22, !3, i64 512}
!51 = !{!22, !3, i64 584}
!52 = !{!22, !9, i64 768}
!53 = !{!22, !12, i64 0}
!54 = !{!22, !12, i64 16}
!55 = !{!22, !12, i64 20}
!56 = !{!22, !12, i64 24}
!57 = !{!22, !3, i64 592}
!58 = !{!22, !9, i64 112}
!59 = !{!22, !9, i64 608}
!60 = !{!22, !9, i64 672}
!61 = !{!22, !12, i64 160}
!62 = !{!22, !9, i64 168}
!63 = !{!22, !9, i64 192}
!64 = !{!22, !12, i64 232}
!65 = !{!22, !9, i64 240}
!66 = !{!22, !9, i64 264}
!67 = !{!22, !12, i64 304}
!68 = !{!22, !9, i64 312}
!69 = !{!22, !9, i64 336}
!70 = !{!22, !12, i64 376}
!71 = !{!22, !9, i64 384}
!72 = !{!22, !9, i64 408}
!73 = !{!22, !12, i64 448}
!74 = !{!22, !9, i64 456}
!75 = !{!22, !9, i64 480}
!76 = !{!22, !12, i64 520}
!77 = !{!22, !9, i64 528}
!78 = !{!22, !9, i64 552}
!79 = !{!25, !12, i64 0}
!80 = !{!25, !9, i64 56}
!81 = !{!25, !9, i64 32}
!82 = !{!25, !9, i64 24}
!83 = !{!25, !3, i64 64}
!84 = !{!25, !9, i64 8}
!85 = !{!25, !9, i64 16}
!86 = !{!25, !9, i64 40}
!87 = !{!25, !9, i64 48}
!88 = !{!89, !3, i64 60}
!89 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !3, i64 56, !3, i64 60, !3, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !3, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !3, i64 120, !4, i64 124, !4, i64 160, !12, i64 196, !3, i64 200, !3, i64 204, !12, i64 208, !3, i64 212, !3, i64 216, !12, i64 220, !3, i64 224, !3, i64 228, !3, i64 232, !12, i64 236, !3, i64 240, !3, i64 244, !12, i64 248, !3, i64 252, !3, i64 256, !3, i64 260, !3, i64 264, !3, i64 268, !12, i64 272, !12, i64 276, !12, i64 280, !3, i64 284, !3, i64 288, !3, i64 292, !12, i64 296, !3, i64 300, !3, i64 304, !12, i64 308, !12, i64 312, !12, i64 316, !12, i64 320, !12, i64 324, !3, i64 328, !12, i64 332, !3, i64 336, !3, i64 340, !12, i64 344, !3, i64 348, !12, i64 352, !12, i64 356, !12, i64 360, !12, i64 364, !3, i64 368, !3, i64 372, !3, i64 376, !3, i64 380, !90, i64 384, !4, i64 448, !4, i64 520}
!90 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56}
!91 = !{!89, !12, i64 4}
!92 = !{!22, !9, i64 256}
!93 = !{!22, !9, i64 288}
!94 = !{!22, !9, i64 248}
!95 = !{!22, !9, i64 328}
!96 = !{!22, !9, i64 320}
!97 = !{!22, !9, i64 360}
!98 = !{!22, !9, i64 400}
!99 = !{!22, !9, i64 432}
!100 = !{!22, !9, i64 392}
!101 = !{!22, !9, i64 472}
!102 = !{!22, !9, i64 504}
!103 = !{!22, !9, i64 544}
!104 = !{!22, !9, i64 576}

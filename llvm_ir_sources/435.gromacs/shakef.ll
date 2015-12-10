; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/shakef.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%union.t_iparams = type { %struct.anon.2 }
%struct.anon.2 = type { float, float, float, float, float, float }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_nrnb = type { [129 x double] }

@.str = private unnamed_addr constant [51 x i8] c"Constraint between two massless particles %d and %\00", align 1
@vec_shakef.rij = internal unnamed_addr global [3 x float]* null, align 8
@vec_shakef.M2 = internal unnamed_addr global float* null, align 8
@vec_shakef.tt = internal unnamed_addr global float* null, align 8
@vec_shakef.dist2 = internal unnamed_addr global float* null, align 8
@vec_shakef.maxcon = internal unnamed_addr global i32 0, align 4
@.str1 = private unnamed_addr constant [4 x i8] c"rij\00", align 1
@.str2 = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/shakef.c\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"M2\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"tt\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"dist2\00", align 1
@.str6 = private unnamed_addr constant [36 x i8] c"Shake did not converge in %d steps\0A\00", align 1
@.str7 = private unnamed_addr constant [81 x i8] c"Inner product between old and new vector <= 0.0!\0Aconstraint #%d atoms %u and %u\0A\00", align 1
@bshakef.bFirst = internal unnamed_addr global i1 false
@bshakef.lagr = internal unnamed_addr global float* null, align 8
@bshakef.delta = internal unnamed_addr global float 0x3FB99999A0000000, align 4
@bshakef.omega = internal unnamed_addr global float 1.000000e+00, align 4
@bshakef.gamma = internal unnamed_addr global i32 1000000, align 4
@.str8 = private unnamed_addr constant [9 x i8] c"Barth95a\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"lagr\00", align 1
@.str10 = private unnamed_addr constant [64 x i8] c"    i     mi      j     mj      before       after   should be\0A\00", align 1
@.str11 = private unnamed_addr constant [48 x i8] c"%5d  %5.2f  %5d  %5.2f  %10.5f  %10.5f  %10.5f\0A\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !261, metadata !711), !dbg !712
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !262, metadata !711), !dbg !713
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !714
  %2 = load i32* %1, align 4, !dbg !716, !tbaa !717
  %3 = add nsw i32 %2, -1, !dbg !716
  store i32 %3, i32* %1, align 4, !dbg !716, !tbaa !717
  %4 = icmp sgt i32 %2, 0, !dbg !726
  br i1 %4, label %._crit_edge, label %5, !dbg !727

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !728
  br label %10, !dbg !727

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !729
  %7 = load i32* %6, align 4, !dbg !729, !tbaa !730
  %8 = icmp sle i32 %2, %7, !dbg !731
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !732
  %or.cond = or i1 %9, %8, !dbg !733
  br i1 %or.cond, label %15, label %10, !dbg !733

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !728
  %11 = trunc i32 %_c to i8, !dbg !734
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !735
  %13 = load i8** %12, align 8, !dbg !736, !tbaa !737
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !736
  store i8* %14, i8** %12, align 8, !dbg !736, !tbaa !737
  store i8 %11, i8* %13, align 1, !dbg !738, !tbaa !739
  br label %17, !dbg !740

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #7, !dbg !741
  br label %17, !dbg !742

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !743
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !268, metadata !711), !dbg !744
  %1 = icmp sgt i32 %__signo, 32, !dbg !745
  br i1 %1, label %5, label %2, !dbg !746

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !747
  %4 = shl i32 1, %3, !dbg !748
  br label %5, !dbg !746

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !746
  ret i32 %6, !dbg !749
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cshake(i32* nocapture readonly %iatom, i32 %ncon, i32* nocapture %nnit, i32 %maxnit, float* nocapture readonly %dist2, float* nocapture %xp, float* nocapture readonly %rij, float* nocapture readonly %m2, float %omega, float* nocapture readonly %invmass, float* nocapture readonly %tt, float* nocapture %lagr, i32* nocapture %nerror) #4 {
  tail call void @llvm.dbg.value(metadata i32* %iatom, i64 0, metadata !280, metadata !711), !dbg !750
  tail call void @llvm.dbg.value(metadata i32 %ncon, i64 0, metadata !281, metadata !711), !dbg !751
  tail call void @llvm.dbg.value(metadata i32* %nnit, i64 0, metadata !282, metadata !711), !dbg !752
  tail call void @llvm.dbg.value(metadata i32 %maxnit, i64 0, metadata !283, metadata !711), !dbg !753
  tail call void @llvm.dbg.value(metadata float* %dist2, i64 0, metadata !284, metadata !711), !dbg !754
  tail call void @llvm.dbg.value(metadata float* %xp, i64 0, metadata !285, metadata !711), !dbg !755
  tail call void @llvm.dbg.value(metadata float* %rij, i64 0, metadata !286, metadata !711), !dbg !756
  tail call void @llvm.dbg.value(metadata float* %m2, i64 0, metadata !287, metadata !711), !dbg !757
  tail call void @llvm.dbg.value(metadata float %omega, i64 0, metadata !288, metadata !711), !dbg !758
  tail call void @llvm.dbg.value(metadata float* %invmass, i64 0, metadata !289, metadata !711), !dbg !759
  tail call void @llvm.dbg.value(metadata float* %tt, i64 0, metadata !290, metadata !711), !dbg !760
  tail call void @llvm.dbg.value(metadata float* %lagr, i64 0, metadata !291, metadata !711), !dbg !761
  tail call void @llvm.dbg.value(metadata i32* %nerror, i64 0, metadata !292, metadata !711), !dbg !762
  tail call void @llvm.dbg.value(metadata float 0x3EB0C6F7A0000000, i64 0, metadata !293, metadata !711), !dbg !763
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !330, metadata !711), !dbg !764
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !332, metadata !711), !dbg !765
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !329, metadata !711), !dbg !766
  %1 = icmp sgt i32 %maxnit, 0, !dbg !767
  br i1 %1, label %.preheader.lr.ph, label %.critedge, !dbg !770

.preheader.lr.ph:                                 ; preds = %0
  %2 = icmp sgt i32 %ncon, 0, !dbg !771
  %3 = sext i32 %ncon to i64, !dbg !770
  br label %.preheader, !dbg !770

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge2
  %nit.017 = phi i32 [ 0, %.preheader.lr.ph ], [ %142, %.critedge2 ]
  br i1 %2, label %.lr.ph, label %.critedge2.thread, !dbg !775

.critedge2.thread:                                ; preds = %.preheader
  %4 = add nuw nsw i32 %nit.017, 1, !dbg !776
  tail call void @llvm.dbg.value(metadata i32 %142, i64 0, metadata !329, metadata !711), !dbg !766
  br label %.critedge, !dbg !770

.lr.ph:                                           ; preds = %.preheader, %139
  %indvars.iv = phi i64 [ %indvars.iv.next, %139 ], [ 0, %.preheader ]
  %nconv.115 = phi i32 [ %nconv.2, %139 ], [ 0, %.preheader ]
  %5 = mul nsw i64 %indvars.iv, 3, !dbg !777
  %6 = getelementptr inbounds float* %rij, i64 %5, !dbg !779
  %7 = load float* %6, align 4, !dbg !779, !tbaa !780
  tail call void @llvm.dbg.value(metadata float %7, i64 0, metadata !320, metadata !711), !dbg !782
  %8 = add nuw nsw i64 %5, 1, !dbg !783
  %9 = getelementptr inbounds float* %rij, i64 %8, !dbg !784
  %10 = load float* %9, align 4, !dbg !784, !tbaa !780
  tail call void @llvm.dbg.value(metadata float %10, i64 0, metadata !321, metadata !711), !dbg !785
  %11 = add nuw nsw i64 %5, 2, !dbg !786
  %12 = getelementptr inbounds float* %rij, i64 %11, !dbg !787
  %13 = load float* %12, align 4, !dbg !787, !tbaa !780
  tail call void @llvm.dbg.value(metadata float %13, i64 0, metadata !322, metadata !711), !dbg !788
  %14 = getelementptr inbounds i32* %iatom, i64 %8, !dbg !789
  %15 = load i32* %14, align 4, !dbg !789, !tbaa !790
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !296, metadata !711), !dbg !791
  %16 = getelementptr inbounds i32* %iatom, i64 %11, !dbg !792
  %17 = load i32* %16, align 4, !dbg !792, !tbaa !790
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !297, metadata !711), !dbg !793
  %18 = mul nsw i32 %15, 3, !dbg !794
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !298, metadata !711), !dbg !795
  %19 = mul nsw i32 %17, 3, !dbg !796
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !299, metadata !711), !dbg !797
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !301, metadata !711), !dbg !798
  %20 = add nsw i32 %18, 1, !dbg !799
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !302, metadata !711), !dbg !800
  %21 = add nsw i32 %18, 2, !dbg !801
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !303, metadata !711), !dbg !802
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !304, metadata !711), !dbg !803
  %22 = add nsw i32 %19, 1, !dbg !804
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !305, metadata !711), !dbg !805
  %23 = add nsw i32 %19, 2, !dbg !806
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !306, metadata !711), !dbg !807
  %24 = sext i32 %18 to i64, !dbg !808
  %25 = getelementptr inbounds float* %xp, i64 %24, !dbg !808
  %26 = load float* %25, align 4, !dbg !808, !tbaa !780
  %27 = sext i32 %19 to i64, !dbg !809
  %28 = getelementptr inbounds float* %xp, i64 %27, !dbg !809
  %29 = load float* %28, align 4, !dbg !809, !tbaa !780
  %30 = fsub float %26, %29, !dbg !810
  tail call void @llvm.dbg.value(metadata float %30, i64 0, metadata !310, metadata !711), !dbg !811
  %31 = sext i32 %20 to i64, !dbg !812
  %32 = getelementptr inbounds float* %xp, i64 %31, !dbg !812
  %33 = load float* %32, align 4, !dbg !812, !tbaa !780
  %34 = sext i32 %22 to i64, !dbg !813
  %35 = getelementptr inbounds float* %xp, i64 %34, !dbg !813
  %36 = load float* %35, align 4, !dbg !813, !tbaa !780
  %37 = fsub float %33, %36, !dbg !814
  tail call void @llvm.dbg.value(metadata float %37, i64 0, metadata !311, metadata !711), !dbg !815
  %38 = sext i32 %21 to i64, !dbg !816
  %39 = getelementptr inbounds float* %xp, i64 %38, !dbg !816
  %40 = load float* %39, align 4, !dbg !816, !tbaa !780
  %41 = sext i32 %23 to i64, !dbg !817
  %42 = getelementptr inbounds float* %xp, i64 %41, !dbg !817
  %43 = load float* %42, align 4, !dbg !817, !tbaa !780
  %44 = fsub float %40, %43, !dbg !818
  tail call void @llvm.dbg.value(metadata float %44, i64 0, metadata !312, metadata !711), !dbg !819
  %45 = fmul float %30, %30, !dbg !820
  %46 = fmul float %37, %37, !dbg !821
  %47 = fadd float %45, %46, !dbg !822
  %48 = fmul float %44, %44, !dbg !823
  %49 = fadd float %47, %48, !dbg !824
  tail call void @llvm.dbg.value(metadata float %49, i64 0, metadata !308, metadata !711), !dbg !825
  %50 = getelementptr inbounds float* %dist2, i64 %indvars.iv, !dbg !826
  %51 = load float* %50, align 4, !dbg !826, !tbaa !780
  tail call void @llvm.dbg.value(metadata float %51, i64 0, metadata !307, metadata !711), !dbg !827
  %52 = fsub float %51, %49, !dbg !828
  tail call void @llvm.dbg.value(metadata float %52, i64 0, metadata !313, metadata !711), !dbg !829
  %fabsf = tail call float @fabsf(float %52) #8, !dbg !830
  %53 = fpext float %fabsf to double, !dbg !830
  %54 = getelementptr inbounds float* %tt, i64 %indvars.iv, !dbg !831
  %55 = load float* %54, align 4, !dbg !831, !tbaa !780
  %56 = fpext float %55 to double, !dbg !831
  %57 = fmul double %53, %56, !dbg !832
  %58 = fptosi double %57 to i32, !dbg !830
  tail call void @llvm.dbg.value(metadata i32 %58, i64 0, metadata !331, metadata !711), !dbg !833
  %59 = icmp eq i32 %58, 0, !dbg !834
  br i1 %59, label %139, label %60, !dbg !836

; <label>:60                                      ; preds = %.lr.ph
  %61 = add nsw i32 %58, %nconv.115, !dbg !837
  tail call void @llvm.dbg.value(metadata i32 %61, i64 0, metadata !332, metadata !711), !dbg !765
  %62 = fmul float %7, %30, !dbg !839
  %63 = fmul float %10, %37, !dbg !840
  %64 = fadd float %62, %63, !dbg !841
  %65 = fmul float %13, %44, !dbg !842
  %66 = fadd float %64, %65, !dbg !843
  tail call void @llvm.dbg.value(metadata float %66, i64 0, metadata !309, metadata !711), !dbg !844
  %67 = fmul float %51, 0x3EB0C6F7A0000000, !dbg !845
  %68 = fcmp olt float %66, %67, !dbg !847
  %69 = trunc i64 %indvars.iv to i32, !dbg !848
  br i1 %68, label %139, label %70, !dbg !848

; <label>:70                                      ; preds = %60
  %71 = fmul float %52, %omega, !dbg !849
  %72 = getelementptr inbounds float* %m2, i64 %indvars.iv, !dbg !851
  %73 = load float* %72, align 4, !dbg !851, !tbaa !780
  %74 = fmul float %71, %73, !dbg !852
  %75 = fdiv float %74, %66, !dbg !853
  tail call void @llvm.dbg.value(metadata float %75, i64 0, metadata !314, metadata !711), !dbg !854
  %76 = getelementptr inbounds float* %lagr, i64 %indvars.iv, !dbg !855
  %77 = load float* %76, align 4, !dbg !856, !tbaa !780
  %78 = fadd float %75, %77, !dbg !856
  store float %78, float* %76, align 4, !dbg !856, !tbaa !780
  %79 = fmul float %7, %75, !dbg !857
  tail call void @llvm.dbg.value(metadata float %79, i64 0, metadata !317, metadata !711), !dbg !858
  %80 = fmul float %10, %75, !dbg !859
  tail call void @llvm.dbg.value(metadata float %80, i64 0, metadata !318, metadata !711), !dbg !860
  %81 = fmul float %13, %75, !dbg !861
  tail call void @llvm.dbg.value(metadata float %81, i64 0, metadata !319, metadata !711), !dbg !862
  %82 = sext i32 %15 to i64, !dbg !863
  %83 = getelementptr inbounds float* %invmass, i64 %82, !dbg !863
  %84 = load float* %83, align 4, !dbg !863, !tbaa !780
  tail call void @llvm.dbg.value(metadata float %84, i64 0, metadata !315, metadata !711), !dbg !864
  %85 = sext i32 %17 to i64, !dbg !865
  %86 = getelementptr inbounds float* %invmass, i64 %85, !dbg !865
  %87 = load float* %86, align 4, !dbg !865, !tbaa !780
  tail call void @llvm.dbg.value(metadata float %87, i64 0, metadata !316, metadata !711), !dbg !866
  %88 = fpext float %84 to double, !dbg !867
  %fabsf7 = tail call float @fabsf(float %84) #8, !dbg !869
  %89 = fpext float %fabsf7 to double, !dbg !869
  %90 = fcmp ogt double %89, 1.200000e-38, !dbg !870
  br i1 %90, label %91, label %113, !dbg !871

; <label>:91                                      ; preds = %70
  %fabsf10 = tail call float @fabsf(float %87) #8, !dbg !872
  %92 = fpext float %fabsf10 to double, !dbg !872
  %93 = fcmp ogt double %92, 1.200000e-38, !dbg !873
  br i1 %93, label %94, label %113, !dbg !874

; <label>:94                                      ; preds = %91
  %95 = fmul float %79, %84, !dbg !875
  %96 = load float* %25, align 4, !dbg !877, !tbaa !780
  %97 = fadd float %95, %96, !dbg !877
  store float %97, float* %25, align 4, !dbg !877, !tbaa !780
  %98 = fmul float %80, %84, !dbg !878
  %99 = load float* %32, align 4, !dbg !879, !tbaa !780
  %100 = fadd float %98, %99, !dbg !879
  store float %100, float* %32, align 4, !dbg !879, !tbaa !780
  %101 = fmul float %81, %84, !dbg !880
  %102 = load float* %39, align 4, !dbg !881, !tbaa !780
  %103 = fadd float %101, %102, !dbg !881
  store float %103, float* %39, align 4, !dbg !881, !tbaa !780
  %104 = fmul float %79, %87, !dbg !882
  %105 = load float* %28, align 4, !dbg !883, !tbaa !780
  %106 = fsub float %105, %104, !dbg !883
  store float %106, float* %28, align 4, !dbg !883, !tbaa !780
  %107 = fmul float %80, %87, !dbg !884
  %108 = load float* %35, align 4, !dbg !885, !tbaa !780
  %109 = fsub float %108, %107, !dbg !885
  store float %109, float* %35, align 4, !dbg !885, !tbaa !780
  %110 = fmul float %81, %87, !dbg !886
  %111 = load float* %42, align 4, !dbg !887, !tbaa !780
  %112 = fsub float %111, %110, !dbg !887
  store float %112, float* %42, align 4, !dbg !887, !tbaa !780
  br label %139, !dbg !888

; <label>:113                                     ; preds = %91, %70
  %114 = fcmp olt double %89, 1.200000e-38, !dbg !889
  %fabsf9 = tail call float @fabsf(float %87) #8, !dbg !891
  %115 = fpext float %fabsf9 to double, !dbg !891
  %116 = fcmp ogt double %115, 1.200000e-38, !dbg !892
  %or.cond25 = and i1 %114, %116, !dbg !893
  br i1 %or.cond25, label %117, label %._crit_edge, !dbg !893

; <label>:117                                     ; preds = %113
  %118 = fmul float %79, %87, !dbg !894
  %119 = load float* %25, align 4, !dbg !896, !tbaa !780
  %120 = fadd float %118, %119, !dbg !896
  store float %120, float* %25, align 4, !dbg !896, !tbaa !780
  %121 = fmul float %80, %87, !dbg !897
  %122 = load float* %32, align 4, !dbg !898, !tbaa !780
  %123 = fadd float %121, %122, !dbg !898
  store float %123, float* %32, align 4, !dbg !898, !tbaa !780
  %124 = fmul float %81, %87, !dbg !899
  %125 = load float* %39, align 4, !dbg !900, !tbaa !780
  %126 = fadd float %124, %125, !dbg !900
  store float %126, float* %39, align 4, !dbg !900, !tbaa !780
  br label %139, !dbg !901

._crit_edge:                                      ; preds = %113
  %.not = fcmp uge double %115, 1.200000e-38, !dbg !902
  %.not11 = xor i1 %90, true, !dbg !902
  %brmerge = or i1 %.not, %.not11, !dbg !902
  br i1 %brmerge, label %137, label %127, !dbg !902

; <label>:127                                     ; preds = %._crit_edge
  %128 = fmul float %79, %84, !dbg !904
  %129 = load float* %28, align 4, !dbg !906, !tbaa !780
  %130 = fsub float %129, %128, !dbg !906
  store float %130, float* %28, align 4, !dbg !906, !tbaa !780
  %131 = fmul float %80, %84, !dbg !907
  %132 = load float* %35, align 4, !dbg !908, !tbaa !780
  %133 = fsub float %132, %131, !dbg !908
  store float %133, float* %35, align 4, !dbg !908, !tbaa !780
  %134 = fmul float %81, %84, !dbg !909
  %135 = load float* %42, align 4, !dbg !910, !tbaa !780
  %136 = fsub float %135, %134, !dbg !910
  store float %136, float* %42, align 4, !dbg !910, !tbaa !780
  br label %139, !dbg !911

; <label>:137                                     ; preds = %._crit_edge
  %138 = fpext float %87 to double, !dbg !912
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), double %88, double %138) #7, !dbg !913
  br label %139

; <label>:139                                     ; preds = %60, %.lr.ph, %94, %127, %137, %117
  %error.2 = phi i32 [ 0, %94 ], [ 0, %117 ], [ 0, %127 ], [ 0, %137 ], [ 0, %.lr.ph ], [ %69, %60 ]
  %nconv.2 = phi i32 [ %61, %94 ], [ %61, %117 ], [ %61, %127 ], [ %61, %137 ], [ %nconv.115, %.lr.ph ], [ %61, %60 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !775
  %140 = icmp slt i64 %indvars.iv.next, %3, !dbg !771
  %141 = icmp eq i32 %error.2, 0, !dbg !914
  %or.cond6 = and i1 %141, %140, !dbg !775
  br i1 %or.cond6, label %.lr.ph, label %.critedge2, !dbg !775

.critedge2:                                       ; preds = %139
  %142 = add nuw nsw i32 %nit.017, 1, !dbg !776
  tail call void @llvm.dbg.value(metadata i32 %142, i64 0, metadata !329, metadata !711), !dbg !766
  %143 = icmp slt i32 %142, %maxnit, !dbg !767
  %144 = icmp ne i32 %nconv.2, 0, !dbg !915
  %or.cond = and i1 %143, %144, !dbg !770
  %145 = icmp eq i32 %error.2, 0, !dbg !916
  %or.cond4 = and i1 %145, %or.cond, !dbg !770
  br i1 %or.cond4, label %.preheader, label %.critedge, !dbg !770

.critedge:                                        ; preds = %.critedge2, %.critedge2.thread, %0
  %error.0.lcssa = phi i32 [ 0, %0 ], [ 0, %.critedge2.thread ], [ %error.2, %.critedge2 ]
  %nit.0.lcssa = phi i32 [ 0, %0 ], [ %4, %.critedge2.thread ], [ %142, %.critedge2 ]
  store i32 %nit.0.lcssa, i32* %nnit, align 4, !dbg !917, !tbaa !790
  store i32 %error.0.lcssa, i32* %nerror, align 4, !dbg !918, !tbaa !790
  ret void, !dbg !919
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @vec_shakef(%struct.__sFILE* %log, i32 %natoms, float* %invmass, i32 %ncon, %union.t_iparams* nocapture readonly %ip, i32* %iatom, float %tol, [3 x float]* nocapture readonly %x, [3 x float]* %xp, float %omega, i32 %bFEP, float %lambda, float* %lagr) #4 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %maxnit = alloca i32, align 4
  %nit = alloca i32, align 4
  %error = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %log, i64 0, metadata !453, metadata !711), !dbg !920
  tail call void @llvm.dbg.value(metadata i32 %natoms, i64 0, metadata !454, metadata !711), !dbg !921
  tail call void @llvm.dbg.value(metadata float* %invmass, i64 0, metadata !455, metadata !711), !dbg !922
  tail call void @llvm.dbg.value(metadata i32 %ncon, i64 0, metadata !456, metadata !711), !dbg !923
  store i32 %ncon, i32* %1, align 4, !tbaa !790
  tail call void @llvm.dbg.value(metadata %union.t_iparams* %ip, i64 0, metadata !457, metadata !711), !dbg !924
  tail call void @llvm.dbg.value(metadata i32* %iatom, i64 0, metadata !458, metadata !711), !dbg !925
  tail call void @llvm.dbg.value(metadata float %tol, i64 0, metadata !459, metadata !711), !dbg !926
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !460, metadata !711), !dbg !927
  tail call void @llvm.dbg.value(metadata [3 x float]* %xp, i64 0, metadata !461, metadata !711), !dbg !928
  tail call void @llvm.dbg.value(metadata float %omega, i64 0, metadata !462, metadata !711), !dbg !929
  store float %omega, float* %2, align 4, !tbaa !780
  tail call void @llvm.dbg.value(metadata i32 %bFEP, i64 0, metadata !463, metadata !711), !dbg !930
  tail call void @llvm.dbg.value(metadata float %lambda, i64 0, metadata !464, metadata !711), !dbg !931
  tail call void @llvm.dbg.value(metadata float* %lagr, i64 0, metadata !465, metadata !711), !dbg !932
  tail call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !466, metadata !711), !dbg !933
  store i32 1000, i32* %maxnit, align 4, !dbg !933, !tbaa !790
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !456, metadata !711), !dbg !923
  %3 = load i32* @vec_shakef.maxcon, align 4, !dbg !934, !tbaa !790
  %4 = icmp slt i32 %3, %ncon, !dbg !936
  br i1 %4, label %5, label %16, !dbg !937

; <label>:5                                       ; preds = %0
  %6 = load i8** bitcast ([3 x float]** @vec_shakef.rij to i8**), align 8, !dbg !938, !tbaa !940
  %7 = mul i32 %ncon, 12, !dbg !938
  %8 = tail call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str2, i64 0, i64 0), i32 169, i8* %6, i32 %7) #7, !dbg !938
  store i8* %8, i8** bitcast ([3 x float]** @vec_shakef.rij to i8**), align 8, !dbg !938, !tbaa !940
  %9 = load i8** bitcast (float** @vec_shakef.M2 to i8**), align 8, !dbg !941, !tbaa !940
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !456, metadata !711), !dbg !923
  %10 = shl i32 %ncon, 2, !dbg !941
  %11 = tail call i8* @save_realloc(i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str2, i64 0, i64 0), i32 170, i8* %9, i32 %10) #7, !dbg !941
  store i8* %11, i8** bitcast (float** @vec_shakef.M2 to i8**), align 8, !dbg !941, !tbaa !940
  %12 = load i8** bitcast (float** @vec_shakef.tt to i8**), align 8, !dbg !942, !tbaa !940
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !456, metadata !711), !dbg !923
  %13 = tail call i8* @save_realloc(i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str2, i64 0, i64 0), i32 171, i8* %12, i32 %10) #7, !dbg !942
  store i8* %13, i8** bitcast (float** @vec_shakef.tt to i8**), align 8, !dbg !942, !tbaa !940
  %14 = load i8** bitcast (float** @vec_shakef.dist2 to i8**), align 8, !dbg !943, !tbaa !940
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !456, metadata !711), !dbg !923
  %15 = tail call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str2, i64 0, i64 0), i32 172, i8* %14, i32 %10) #7, !dbg !943
  store i8* %15, i8** bitcast (float** @vec_shakef.dist2 to i8**), align 8, !dbg !943, !tbaa !940
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !456, metadata !711), !dbg !923
  store i32 %ncon, i32* @vec_shakef.maxcon, align 4, !dbg !944, !tbaa !790
  br label %16, !dbg !945

; <label>:16                                      ; preds = %5, %0
  %17 = fsub float 1.000000e+00, %lambda, !dbg !946
  tail call void @llvm.dbg.value(metadata float %17, i64 0, metadata !473, metadata !711), !dbg !947
  %18 = fmul float %tol, 2.000000e+00, !dbg !948
  tail call void @llvm.dbg.value(metadata float %18, i64 0, metadata !474, metadata !711), !dbg !949
  tail call void @llvm.dbg.value(metadata i32* %iatom, i64 0, metadata !472, metadata !711), !dbg !950
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !468, metadata !711), !dbg !951
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !456, metadata !711), !dbg !923
  %19 = icmp sgt i32 %ncon, 0, !dbg !952
  br i1 %19, label %.lr.ph, label %._crit_edge3, !dbg !955

._crit_edge3:                                     ; preds = %16
  %.pre = load float** @vec_shakef.dist2, align 8, !dbg !956, !tbaa !940
  %.pre4 = load [3 x float]** @vec_shakef.rij, align 8, !dbg !957, !tbaa !940
  %.pre5 = load float** @vec_shakef.M2, align 8, !dbg !958, !tbaa !940
  %.pre6 = load float** @vec_shakef.tt, align 8, !dbg !959, !tbaa !940
  br label %._crit_edge, !dbg !955

.lr.ph:                                           ; preds = %16
  %20 = load [3 x float]** @vec_shakef.rij, align 8, !dbg !960, !tbaa !940
  %21 = load float** @vec_shakef.M2, align 8, !dbg !962, !tbaa !940
  %22 = icmp eq i32 %bFEP, 0, !dbg !963
  %23 = load float** @vec_shakef.dist2, align 8, !dbg !965, !tbaa !940
  %24 = load float** @vec_shakef.tt, align 8, !dbg !966, !tbaa !940
  %25 = sext i32 %ncon to i64, !dbg !955
  br label %26, !dbg !955

; <label>:26                                      ; preds = %.lr.ph, %72
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %72 ]
  %ia.01 = phi i32* [ %iatom, %.lr.ph ], [ %77, %72 ]
  %27 = load i32* %ia.01, align 4, !dbg !967, !tbaa !790
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !471, metadata !711), !dbg !968
  %28 = getelementptr inbounds i32* %ia.01, i64 1, !dbg !969
  %29 = load i32* %28, align 4, !dbg !969, !tbaa !790
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !469, metadata !711), !dbg !970
  %30 = getelementptr inbounds i32* %ia.01, i64 2, !dbg !971
  %31 = load i32* %30, align 4, !dbg !971, !tbaa !790
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !470, metadata !711), !dbg !972
  %32 = sext i32 %29 to i64, !dbg !973
  %33 = getelementptr inbounds float* %invmass, i64 %32, !dbg !973
  %34 = load float* %33, align 4, !dbg !973, !tbaa !780
  %35 = sext i32 %31 to i64, !dbg !974
  %36 = getelementptr inbounds float* %invmass, i64 %35, !dbg !974
  %37 = load float* %36, align 4, !dbg !974, !tbaa !780
  %38 = fadd float %34, %37, !dbg !975
  %39 = fmul float %38, 2.000000e+00, !dbg !976
  tail call void @llvm.dbg.value(metadata float %39, i64 0, metadata !476, metadata !711), !dbg !977
  %40 = getelementptr inbounds [3 x float]* %x, i64 %32, i64 0, !dbg !978
  %41 = load float* %40, align 4, !dbg !978, !tbaa !780
  %42 = getelementptr inbounds [3 x float]* %x, i64 %35, i64 0, !dbg !979
  %43 = load float* %42, align 4, !dbg !979, !tbaa !780
  %44 = fsub float %41, %43, !dbg !980
  %45 = getelementptr inbounds [3 x float]* %20, i64 %indvars.iv, i64 0, !dbg !960
  store float %44, float* %45, align 4, !dbg !981, !tbaa !780
  %46 = getelementptr inbounds [3 x float]* %x, i64 %32, i64 1, !dbg !982
  %47 = load float* %46, align 4, !dbg !982, !tbaa !780
  %48 = getelementptr inbounds [3 x float]* %x, i64 %35, i64 1, !dbg !983
  %49 = load float* %48, align 4, !dbg !983, !tbaa !780
  %50 = fsub float %47, %49, !dbg !984
  %51 = getelementptr inbounds [3 x float]* %20, i64 %indvars.iv, i64 1, !dbg !985
  store float %50, float* %51, align 4, !dbg !986, !tbaa !780
  %52 = getelementptr inbounds [3 x float]* %x, i64 %32, i64 2, !dbg !987
  %53 = load float* %52, align 4, !dbg !987, !tbaa !780
  %54 = getelementptr inbounds [3 x float]* %x, i64 %35, i64 2, !dbg !988
  %55 = load float* %54, align 4, !dbg !988, !tbaa !780
  %56 = fsub float %53, %55, !dbg !989
  %57 = getelementptr inbounds [3 x float]* %20, i64 %indvars.iv, i64 2, !dbg !990
  store float %56, float* %57, align 4, !dbg !991, !tbaa !780
  %58 = fdiv float 1.000000e+00, %39, !dbg !992
  %59 = getelementptr inbounds float* %21, i64 %indvars.iv, !dbg !962
  store float %58, float* %59, align 4, !dbg !993, !tbaa !780
  %60 = sext i32 %27 to i64, !dbg !994
  %61 = getelementptr inbounds %union.t_iparams* %ip, i64 %60, i32 0, i32 0, !dbg !995
  %62 = load float* %61, align 4, !dbg !995, !tbaa !996
  br i1 %22, label %70, label %63, !dbg !998

; <label>:63                                      ; preds = %26
  %64 = fmul float %17, %62, !dbg !999
  %65 = getelementptr inbounds %union.t_iparams* %ip, i64 %60, i32 0, i32 1, !dbg !1000
  %66 = load float* %65, align 4, !dbg !1000, !tbaa !1001
  %67 = fmul float %66, %lambda, !dbg !1002
  %68 = fadd float %64, %67, !dbg !1003
  tail call void @llvm.dbg.value(metadata float %68, i64 0, metadata !660, metadata !711), !dbg !1004
  %69 = fmul float %68, %68, !dbg !1006
  tail call void @llvm.dbg.value(metadata float %69, i64 0, metadata !475, metadata !711), !dbg !1007
  br label %72, !dbg !1008

; <label>:70                                      ; preds = %26
  tail call void @llvm.dbg.value(metadata float %62, i64 0, metadata !660, metadata !711), !dbg !1009
  %71 = fmul float %62, %62, !dbg !1011
  tail call void @llvm.dbg.value(metadata float %71, i64 0, metadata !475, metadata !711), !dbg !1007
  br label %72

; <label>:72                                      ; preds = %70, %63
  %toler.0 = phi float [ %69, %63 ], [ %71, %70 ]
  %73 = getelementptr inbounds float* %23, i64 %indvars.iv, !dbg !965
  store float %toler.0, float* %73, align 4, !dbg !1012, !tbaa !780
  %74 = fmul float %18, %toler.0, !dbg !1013
  %75 = fdiv float 1.000000e+00, %74, !dbg !1014
  %76 = getelementptr inbounds float* %24, i64 %indvars.iv, !dbg !966
  store float %75, float* %76, align 4, !dbg !1015, !tbaa !780
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !955
  %77 = getelementptr inbounds i32* %ia.01, i64 3, !dbg !1016
  tail call void @llvm.dbg.value(metadata i32* %77, i64 0, metadata !472, metadata !711), !dbg !950
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !456, metadata !711), !dbg !923
  %78 = icmp slt i64 %indvars.iv.next, %25, !dbg !952
  br i1 %78, label %26, label %._crit_edge, !dbg !955

._crit_edge:                                      ; preds = %72, %._crit_edge3
  %79 = phi float* [ %.pre6, %._crit_edge3 ], [ %24, %72 ]
  %80 = phi float* [ %.pre5, %._crit_edge3 ], [ %21, %72 ]
  %81 = phi [3 x float]* [ %.pre4, %._crit_edge3 ], [ %20, %72 ]
  %82 = phi float* [ %.pre, %._crit_edge3 ], [ %23, %72 ]
  %83 = getelementptr inbounds [3 x float]* %xp, i64 0, i64 0, !dbg !1017
  %84 = getelementptr inbounds [3 x float]* %81, i64 0, i64 0, !dbg !957
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !456, metadata !711), !dbg !923
  tail call void @llvm.dbg.value(metadata float* %2, i64 0, metadata !462, metadata !711), !dbg !929
  tail call void @llvm.dbg.value(metadata i32* %maxnit, i64 0, metadata !466, metadata !711), !dbg !933
  tail call void @llvm.dbg.value(metadata i32* %nit, i64 0, metadata !467, metadata !711), !dbg !1018
  tail call void @llvm.dbg.value(metadata i32* %error, i64 0, metadata !477, metadata !711), !dbg !1019
  call void @fshake_(i32* %iatom, i32* %1, i32* %nit, i32* %maxnit, float* %82, float* %83, float* %84, float* %80, float* %2, float* %invmass, float* %79, float* %lagr, i32* %error) #7, !dbg !1020
  call void @llvm.dbg.value(metadata i32* %nit, i64 0, metadata !467, metadata !711), !dbg !1018
  %85 = load i32* %nit, align 4, !dbg !1021, !tbaa !790
  call void @llvm.dbg.value(metadata i32* %maxnit, i64 0, metadata !466, metadata !711), !dbg !933
  %86 = load i32* %maxnit, align 4, !dbg !1023, !tbaa !790
  %87 = icmp slt i32 %85, %86, !dbg !1024
  br i1 %87, label %93, label %88, !dbg !1025

; <label>:88                                      ; preds = %._crit_edge
  %89 = icmp eq %struct.__sFILE* %log, null, !dbg !1026
  br i1 %89, label %92, label %90, !dbg !1029

; <label>:90                                      ; preds = %88
  %91 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([36 x i8]* @.str6, i64 0, i64 0), i32 %86) #7, !dbg !1030
  br label %92, !dbg !1030

; <label>:92                                      ; preds = %88, %90
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !467, metadata !711), !dbg !1018
  store i32 0, i32* %nit, align 4, !dbg !1031, !tbaa !790
  br label %113, !dbg !1032

; <label>:93                                      ; preds = %._crit_edge
  call void @llvm.dbg.value(metadata i32* %error, i64 0, metadata !477, metadata !711), !dbg !1019
  %94 = load i32* %error, align 4, !dbg !1033, !tbaa !790
  %95 = icmp eq i32 %94, 0, !dbg !1035
  br i1 %95, label %113, label %96, !dbg !1036

; <label>:96                                      ; preds = %93
  %97 = icmp eq %struct.__sFILE* %log, null, !dbg !1037
  br i1 %97, label %112, label %98, !dbg !1040

; <label>:98                                      ; preds = %96
  %99 = add nsw i32 %94, -1, !dbg !1041
  %100 = mul nsw i32 %99, 3, !dbg !1042
  %101 = add nsw i32 %100, 1, !dbg !1043
  %102 = sext i32 %101 to i64, !dbg !1044
  %103 = getelementptr inbounds i32* %iatom, i64 %102, !dbg !1044
  %104 = load i32* %103, align 4, !dbg !1044, !tbaa !790
  %105 = add nsw i32 %104, 1, !dbg !1045
  %106 = add nsw i32 %100, 2, !dbg !1046
  %107 = sext i32 %106 to i64, !dbg !1047
  %108 = getelementptr inbounds i32* %iatom, i64 %107, !dbg !1047
  %109 = load i32* %108, align 4, !dbg !1047, !tbaa !790
  %110 = add nsw i32 %109, 1, !dbg !1048
  %111 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([81 x i8]* @.str7, i64 0, i64 0), i32 %99, i32 %105, i32 %110) #7, !dbg !1049
  br label %112, !dbg !1049

; <label>:112                                     ; preds = %96, %98
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !467, metadata !711), !dbg !1018
  store i32 0, i32* %nit, align 4, !dbg !1050, !tbaa !790
  br label %113, !dbg !1051

; <label>:113                                     ; preds = %93, %112, %92
  %114 = phi i32 [ %85, %93 ], [ 0, %112 ], [ 0, %92 ]
  call void @llvm.dbg.value(metadata i32* %nit, i64 0, metadata !467, metadata !711), !dbg !1018
  ret i32 %114, !dbg !1052
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: optsize
declare void @fshake_(i32*, i32*, i32*, i32*, float*, float*, float*, float*, float*, float*, float*, float*, i32*) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize ssp uwtable
define i32 @bshakef(%struct.__sFILE* %log, i32 %natoms, float* %invmass, i32 %nblocks, i32* nocapture readonly %sblock, %struct.t_idef* nocapture readonly %idef, %struct.t_inputrec* nocapture readonly %ir, [3 x float]* nocapture readnone %box, [3 x float]* nocapture readonly %x_s, [3 x float]* %xp, %struct.t_nrnb* nocapture %nrnb, float %lambda, float* nocapture %dvdlambda, i32 %bDumpOnError) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %log, i64 0, metadata !630, metadata !711), !dbg !1053
  tail call void @llvm.dbg.value(metadata i32 %natoms, i64 0, metadata !631, metadata !711), !dbg !1054
  tail call void @llvm.dbg.value(metadata float* %invmass, i64 0, metadata !632, metadata !711), !dbg !1055
  tail call void @llvm.dbg.value(metadata i32 %nblocks, i64 0, metadata !633, metadata !711), !dbg !1056
  tail call void @llvm.dbg.value(metadata i32* %sblock, i64 0, metadata !634, metadata !711), !dbg !1057
  tail call void @llvm.dbg.value(metadata %struct.t_idef* %idef, i64 0, metadata !635, metadata !711), !dbg !1058
  tail call void @llvm.dbg.value(metadata %struct.t_inputrec* %ir, i64 0, metadata !636, metadata !711), !dbg !1059
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !637, metadata !711), !dbg !1060
  tail call void @llvm.dbg.value(metadata [3 x float]* %x_s, i64 0, metadata !638, metadata !711), !dbg !1061
  tail call void @llvm.dbg.value(metadata [3 x float]* %xp, i64 0, metadata !639, metadata !711), !dbg !1062
  tail call void @llvm.dbg.value(metadata %struct.t_nrnb* %nrnb, i64 0, metadata !640, metadata !711), !dbg !1063
  tail call void @llvm.dbg.value(metadata float %lambda, i64 0, metadata !641, metadata !711), !dbg !1064
  tail call void @llvm.dbg.value(metadata float* %dvdlambda, i64 0, metadata !642, metadata !711), !dbg !1065
  tail call void @llvm.dbg.value(metadata i32 %bDumpOnError, i64 0, metadata !643, metadata !711), !dbg !1066
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !653, metadata !711), !dbg !1067
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !654, metadata !711), !dbg !1068
  %1 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 27, i32 0, !dbg !1069
  %2 = load i32* %1, align 4, !dbg !1069, !tbaa !1070
  %3 = sdiv i32 %2, 3, !dbg !1072
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !650, metadata !711), !dbg !1073
  %.b = load i1* @bshakef.bFirst, align 1
  br i1 %.b, label %.preheader, label %4, !dbg !1074

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 67, !dbg !1075
  %6 = load i32* %5, align 4, !dbg !1075, !tbaa !1079
  %7 = icmp eq i32 %6, 0, !dbg !1082
  br i1 %7, label %9, label %8, !dbg !1083

; <label>:8                                       ; preds = %4
  tail call void @please_cite(%struct.__sFILE* %log, i8* getelementptr inbounds ([9 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !1084
  br label %9, !dbg !1084

; <label>:9                                       ; preds = %4, %8
  %10 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str2, i64 0, i64 0), i32 280, i32 %3, i32 4) #7, !dbg !1085
  store i8* %10, i8** bitcast (float** @bshakef.lagr to i8**), align 8, !dbg !1085, !tbaa !940
  store i1 true, i1* @bshakef.bFirst, align 1
  br label %.preheader, !dbg !1086

.preheader:                                       ; preds = %0, %9
  %11 = icmp sgt i32 %2, 2, !dbg !1087
  br i1 %11, label %.lr.ph19, label %16, !dbg !1090

.lr.ph19:                                         ; preds = %.preheader
  %12 = load i8** bitcast (float** @bshakef.lagr to i8**), align 8, !dbg !1091, !tbaa !940
  %13 = icmp sgt i32 %2, 5
  %.op = add nsw i32 %3, -1, !dbg !1090
  %14 = zext i32 %.op to i64
  %.op37 = shl nuw nsw i64 %14, 2, !dbg !1090
  %.op37.op = add nuw nsw i64 %.op37, 4, !dbg !1090
  %15 = select i1 %13, i64 %.op37.op, i64 4, !dbg !1090
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 %15, i32 4, i1 false), !dbg !1092
  br label %16, !dbg !1090

; <label>:16                                      ; preds = %.lr.ph19, %.preheader
  %17 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 27, i32 2, !dbg !1093
  tail call void @llvm.dbg.value(metadata i32* %23, i64 0, metadata !644, metadata !711), !dbg !1094
  tail call void @llvm.dbg.value(metadata float* %19, i64 0, metadata !645, metadata !711), !dbg !1095
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !648, metadata !711), !dbg !1096
  %18 = icmp sgt i32 %nblocks, 0, !dbg !1097
  br i1 %18, label %.lr.ph14, label %._crit_edge35, !dbg !1100

._crit_edge35:                                    ; preds = %16
  %.pre36 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46, !dbg !1101
  br label %130, !dbg !1100

.lr.ph14:                                         ; preds = %16
  %19 = load float** @bshakef.lagr, align 8, !dbg !1103, !tbaa !940
  %20 = load i32** %17, align 8, !dbg !1093, !tbaa !1104
  %21 = load i32* %sblock, align 4, !dbg !1105, !tbaa !790
  %22 = sext i32 %21 to i64, !dbg !1106
  %23 = getelementptr inbounds i32* %20, i64 %22, !dbg !1106
  %24 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4, !dbg !1107
  %25 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 44, !dbg !1109
  %26 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46, !dbg !1110
  %27 = sext i32 %nblocks to i64, !dbg !1100
  br label %28, !dbg !1100

; <label>:28                                      ; preds = %._crit_edge32, %.lr.ph14
  %29 = phi i32 [ %21, %.lr.ph14 ], [ %.pre, %._crit_edge32 ]
  %indvars.iv28 = phi i64 [ 0, %.lr.ph14 ], [ %indvars.iv.next29, %._crit_edge32 ]
  %trij.012 = phi i32 [ 0, %.lr.ph14 ], [ %123, %._crit_edge32 ]
  %tnit.011 = phi i32 [ 0, %.lr.ph14 ], [ %122, %._crit_edge32 ]
  %iatoms.010 = phi i32* [ %23, %.lr.ph14 ], [ %129, %._crit_edge32 ]
  %lam.09 = phi float* [ %19, %.lr.ph14 ], [ %126, %._crit_edge32 ]
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1, !dbg !1100
  %30 = getelementptr inbounds i32* %sblock, i64 %indvars.iv.next29, !dbg !1111
  %31 = load i32* %30, align 4, !dbg !1111, !tbaa !790
  %32 = sub nsw i32 %31, %29, !dbg !1112
  tail call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !651, metadata !711), !dbg !1113
  %33 = sdiv i32 %32, 3, !dbg !1114
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !651, metadata !711), !dbg !1113
  %34 = load %union.t_iparams** %24, align 8, !dbg !1107, !tbaa !1115
  %35 = load float* %25, align 4, !dbg !1109, !tbaa !1117
  %36 = load float* @bshakef.omega, align 4, !dbg !1118, !tbaa !780
  %37 = load i32* %26, align 4, !dbg !1110, !tbaa !1119
  %38 = icmp ne i32 %37, 0, !dbg !1120
  %39 = zext i1 %38 to i32, !dbg !1120
  %40 = tail call i32 @vec_shakef(%struct.__sFILE* %log, i32 undef, float* %invmass, i32 %33, %union.t_iparams* %34, i32* %iatoms.010, float %35, [3 x float]* %x_s, [3 x float]* %xp, float %36, i32 %39, float %lambda, float* %lam.09) #9, !dbg !1121
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !649, metadata !711), !dbg !1122
  %41 = icmp eq i32 %40, 0, !dbg !1123
  br i1 %41, label %42, label %120, !dbg !1125

; <label>:42                                      ; preds = %28
  %43 = icmp eq i32 %bDumpOnError, 0, !dbg !1126
  br i1 %43, label %check_cons.exit, label %44, !dbg !1129

; <label>:44                                      ; preds = %42
  %45 = load %union.t_iparams** %24, align 8, !dbg !1130, !tbaa !1115
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %log, i64 0, metadata !665, metadata !711) #6, !dbg !1131
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !666, metadata !711) #6, !dbg !1133
  tail call void @llvm.dbg.value(metadata [3 x float]* %x_s, i64 0, metadata !667, metadata !711) #6, !dbg !1134
  tail call void @llvm.dbg.value(metadata [3 x float]* %xp, i64 0, metadata !668, metadata !711) #6, !dbg !1135
  tail call void @llvm.dbg.value(metadata %union.t_iparams* %45, i64 0, metadata !669, metadata !711) #6, !dbg !1136
  tail call void @llvm.dbg.value(metadata i32* %129, i64 0, metadata !670, metadata !711) #6, !dbg !1137
  tail call void @llvm.dbg.value(metadata float* %invmass, i64 0, metadata !671, metadata !711) #6, !dbg !1138
  tail call void @llvm.dbg.declare(metadata [3 x float]* undef, metadata !678, metadata !711) #6, !dbg !1139
  %46 = icmp ne %struct.__sFILE* %log, null, !dbg !1140
  br i1 %46, label %47, label %.preheader.i, !dbg !1142

; <label>:47                                      ; preds = %44
  %48 = tail call i64 @fwrite(i8* getelementptr inbounds ([64 x i8]* @.str10, i64 0, i64 0), i64 63, i64 1, %struct.__sFILE* %log) #6, !dbg !1143
  br label %.preheader.i, !dbg !1143

.preheader.i:                                     ; preds = %47, %44
  %49 = icmp sgt i32 %32, 2, !dbg !1144
  br i1 %49, label %.lr.ph.i, label %check_cons.exit, !dbg !1147

.lr.ph.i:                                         ; preds = %.preheader.i
  %50 = add nsw i32 %33, -1, !dbg !1147
  br label %51, !dbg !1147

; <label>:51                                      ; preds = %117, %.lr.ph.i
  %ia.03.i = phi i32* [ %iatoms.010, %.lr.ph.i ], [ %119, %117 ], !dbg !1148
  %i.02.i = phi i32 [ 0, %.lr.ph.i ], [ %118, %117 ], !dbg !1148
  %52 = getelementptr inbounds i32* %ia.03.i, i64 1, !dbg !1149
  %53 = load i32* %52, align 4, !dbg !1149, !tbaa !790
  tail call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !673, metadata !711) #6, !dbg !1151
  %54 = getelementptr inbounds i32* %ia.03.i, i64 2, !dbg !1152
  %55 = load i32* %54, align 4, !dbg !1152, !tbaa !790
  tail call void @llvm.dbg.value(metadata i32 %55, i64 0, metadata !674, metadata !711) #6, !dbg !1153
  %56 = sext i32 %53 to i64, !dbg !1154
  %57 = getelementptr inbounds [3 x float]* %x_s, i64 %56, i64 0, !dbg !1154
  %58 = sext i32 %55 to i64, !dbg !1155
  %59 = getelementptr inbounds [3 x float]* %x_s, i64 %58, i64 0, !dbg !1155
  tail call void @llvm.dbg.value(metadata float* %57, i64 0, metadata !684, metadata !711) #6, !dbg !1156
  tail call void @llvm.dbg.value(metadata float* %59, i64 0, metadata !685, metadata !711) #6, !dbg !1158
  tail call void @llvm.dbg.value(metadata float* undef, i64 0, metadata !686, metadata !711) #6, !dbg !1159
  %60 = load float* %57, align 4, !dbg !1160, !tbaa !780
  %61 = load float* %59, align 4, !dbg !1161, !tbaa !780
  %62 = fsub float %60, %61, !dbg !1162
  tail call void @llvm.dbg.value(metadata float %62, i64 0, metadata !687, metadata !711) #6, !dbg !1163
  %63 = getelementptr inbounds [3 x float]* %x_s, i64 %56, i64 1, !dbg !1164
  %64 = load float* %63, align 4, !dbg !1164, !tbaa !780
  %65 = getelementptr inbounds [3 x float]* %x_s, i64 %58, i64 1, !dbg !1165
  %66 = load float* %65, align 4, !dbg !1165, !tbaa !780
  %67 = fsub float %64, %66, !dbg !1166
  tail call void @llvm.dbg.value(metadata float %67, i64 0, metadata !688, metadata !711) #6, !dbg !1167
  %68 = getelementptr inbounds [3 x float]* %x_s, i64 %56, i64 2, !dbg !1168
  %69 = load float* %68, align 4, !dbg !1168, !tbaa !780
  %70 = getelementptr inbounds [3 x float]* %x_s, i64 %58, i64 2, !dbg !1169
  %71 = load float* %70, align 4, !dbg !1169, !tbaa !780
  %72 = fsub float %69, %71, !dbg !1170
  tail call void @llvm.dbg.value(metadata float %72, i64 0, metadata !689, metadata !711) #6, !dbg !1171
  tail call void @llvm.dbg.value(metadata float %62, i64 0, metadata !678, metadata !1172) #6, !dbg !1139
  tail call void @llvm.dbg.value(metadata float %67, i64 0, metadata !678, metadata !1173) #6, !dbg !1139
  tail call void @llvm.dbg.value(metadata float %72, i64 0, metadata !678, metadata !1174) #6, !dbg !1139
  tail call void @llvm.dbg.value(metadata float* undef, i64 0, metadata !694, metadata !711) #6, !dbg !1175
  %73 = getelementptr inbounds [3 x float]* %xp, i64 %56, i64 0, !dbg !1177
  %74 = getelementptr inbounds [3 x float]* %xp, i64 %58, i64 0, !dbg !1178
  tail call void @llvm.dbg.value(metadata float* %73, i64 0, metadata !684, metadata !711) #6, !dbg !1179
  tail call void @llvm.dbg.value(metadata float* %74, i64 0, metadata !685, metadata !711) #6, !dbg !1181
  tail call void @llvm.dbg.value(metadata float* undef, i64 0, metadata !686, metadata !711) #6, !dbg !1182
  %75 = load float* %73, align 4, !dbg !1183, !tbaa !780
  %76 = load float* %74, align 4, !dbg !1184, !tbaa !780
  %77 = fsub float %75, %76, !dbg !1185
  tail call void @llvm.dbg.value(metadata float %77, i64 0, metadata !687, metadata !711) #6, !dbg !1186
  %78 = getelementptr inbounds [3 x float]* %xp, i64 %56, i64 1, !dbg !1187
  %79 = load float* %78, align 4, !dbg !1187, !tbaa !780
  %80 = getelementptr inbounds [3 x float]* %xp, i64 %58, i64 1, !dbg !1188
  %81 = load float* %80, align 4, !dbg !1188, !tbaa !780
  %82 = fsub float %79, %81, !dbg !1189
  tail call void @llvm.dbg.value(metadata float %82, i64 0, metadata !688, metadata !711) #6, !dbg !1190
  %83 = getelementptr inbounds [3 x float]* %xp, i64 %56, i64 2, !dbg !1191
  %84 = load float* %83, align 4, !dbg !1191, !tbaa !780
  %85 = getelementptr inbounds [3 x float]* %xp, i64 %58, i64 2, !dbg !1192
  %86 = load float* %85, align 4, !dbg !1192, !tbaa !780
  %87 = fsub float %84, %86, !dbg !1193
  tail call void @llvm.dbg.value(metadata float %87, i64 0, metadata !689, metadata !711) #6, !dbg !1194
  tail call void @llvm.dbg.value(metadata float %77, i64 0, metadata !678, metadata !1172) #6, !dbg !1139
  tail call void @llvm.dbg.value(metadata float %82, i64 0, metadata !678, metadata !1173) #6, !dbg !1139
  tail call void @llvm.dbg.value(metadata float %87, i64 0, metadata !678, metadata !1174) #6, !dbg !1139
  tail call void @llvm.dbg.value(metadata float* undef, i64 0, metadata !694, metadata !711) #6, !dbg !1195
  br i1 %46, label %88, label %117, !dbg !1197

; <label>:88                                      ; preds = %51
  %89 = fmul float %77, %77, !dbg !1198
  %90 = fmul float %82, %82, !dbg !1199
  %91 = fadd float %89, %90, !dbg !1200
  %92 = fmul float %87, %87, !dbg !1201
  %93 = fadd float %91, %92, !dbg !1202
  %sqrtf.i.i = tail call float @sqrtf(float %93) #8, !dbg !1203
  %94 = fmul float %62, %62, !dbg !1204
  %95 = fmul float %67, %67, !dbg !1205
  %96 = fadd float %94, %95, !dbg !1206
  %97 = fmul float %72, %72, !dbg !1207
  %98 = fadd float %96, %97, !dbg !1208
  %sqrtf.i1.i = tail call float @sqrtf(float %98) #8, !dbg !1209
  %99 = add nsw i32 %53, 1, !dbg !1210
  %100 = getelementptr inbounds float* %invmass, i64 %56, !dbg !1212
  %101 = load float* %100, align 4, !dbg !1212, !tbaa !780
  %102 = fpext float %101 to double, !dbg !1212
  %103 = fdiv double 1.000000e+00, %102, !dbg !1213
  %104 = add nsw i32 %55, 1, !dbg !1214
  %105 = getelementptr inbounds float* %invmass, i64 %58, !dbg !1215
  %106 = load float* %105, align 4, !dbg !1215, !tbaa !780
  %107 = fpext float %106 to double, !dbg !1215
  %108 = fdiv double 1.000000e+00, %107, !dbg !1216
  %109 = fpext float %sqrtf.i1.i to double, !dbg !1217
  %110 = fpext float %sqrtf.i.i to double, !dbg !1218
  %111 = load i32* %ia.03.i, align 4, !dbg !1219, !tbaa !790
  %112 = sext i32 %111 to i64, !dbg !1220
  %113 = getelementptr inbounds %union.t_iparams* %45, i64 %112, i32 0, i32 0, !dbg !1221
  %114 = load float* %113, align 4, !dbg !1221, !tbaa !996
  %115 = fpext float %114 to double, !dbg !1220
  %116 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([48 x i8]* @.str11, i64 0, i64 0), i32 %99, double %103, i32 %104, double %108, double %109, double %110, double %115) #7, !dbg !1222
  br label %117, !dbg !1222

; <label>:117                                     ; preds = %88, %51
  %118 = add nuw nsw i32 %i.02.i, 1, !dbg !1223
  tail call void @llvm.dbg.value(metadata i32 %118, i64 0, metadata !675, metadata !711) #6, !dbg !1224
  %119 = getelementptr inbounds i32* %ia.03.i, i64 3, !dbg !1225
  tail call void @llvm.dbg.value(metadata i32* %119, i64 0, metadata !672, metadata !711) #6, !dbg !1226
  %exitcond.i = icmp eq i32 %i.02.i, %50, !dbg !1147
  br i1 %exitcond.i, label %check_cons.exit, label %51, !dbg !1147

; <label>:120                                     ; preds = %28
  %121 = mul nsw i32 %40, %33, !dbg !1227
  %122 = add nsw i32 %121, %tnit.011, !dbg !1228
  tail call void @llvm.dbg.value(metadata i32 %122, i64 0, metadata !653, metadata !711), !dbg !1067
  %123 = add nsw i32 %33, %trij.012, !dbg !1229
  tail call void @llvm.dbg.value(metadata i32 %123, i64 0, metadata !654, metadata !711), !dbg !1068
  tail call void @llvm.dbg.value(metadata i32* %129, i64 0, metadata !644, metadata !711), !dbg !1094
  tail call void @llvm.dbg.value(metadata float* %126, i64 0, metadata !645, metadata !711), !dbg !1095
  %124 = icmp slt i64 %indvars.iv.next29, %27, !dbg !1097
  br i1 %124, label %._crit_edge32, label %._crit_edge15, !dbg !1100

._crit_edge32:                                    ; preds = %120
  %125 = sext i32 %33 to i64, !dbg !1230
  %126 = getelementptr inbounds float* %lam.09, i64 %125, !dbg !1230
  %127 = mul nsw i32 %33, 3, !dbg !1231
  %128 = sext i32 %127 to i64, !dbg !1232
  %129 = getelementptr inbounds i32* %iatoms.010, i64 %128, !dbg !1232
  %.pre = load i32* %30, align 4, !dbg !1233, !tbaa !790
  br label %28, !dbg !1100

._crit_edge15:                                    ; preds = %120
  %phitmp = sitofp i32 %123 to double, !dbg !1100
  br label %130, !dbg !1100

; <label>:130                                     ; preds = %._crit_edge35, %._crit_edge15
  %.pre-phi = phi i32* [ %.pre36, %._crit_edge35 ], [ %26, %._crit_edge15 ], !dbg !1101
  %trij.0.lcssa = phi double [ 0.000000e+00, %._crit_edge35 ], [ %phitmp, %._crit_edge15 ]
  %tnit.0.lcssa = phi i32 [ 0, %._crit_edge35 ], [ %122, %._crit_edge15 ]
  %131 = load i32* %.pre-phi, align 4, !dbg !1101, !tbaa !1119
  %132 = icmp eq i32 %131, 0, !dbg !1234
  br i1 %132, label %161, label %133, !dbg !1235

; <label>:133                                     ; preds = %130
  %134 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15, !dbg !1236
  %135 = load float* %134, align 4, !dbg !1236, !tbaa !1238
  tail call void @llvm.dbg.value(metadata float %135, i64 0, metadata !660, metadata !711), !dbg !1239
  %136 = fmul float %135, %135, !dbg !1241
  %137 = fdiv float 1.000000e+00, %136, !dbg !1242
  tail call void @llvm.dbg.value(metadata float %137, i64 0, metadata !646, metadata !711), !dbg !1243
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !647, metadata !711), !dbg !1244
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !648, metadata !711), !dbg !1096
  br i1 %11, label %.lr.ph, label %._crit_edge, !dbg !1245

.lr.ph:                                           ; preds = %133
  %138 = load i32** %17, align 8, !dbg !1247, !tbaa !1104
  %139 = load float** @bshakef.lagr, align 8, !dbg !1250, !tbaa !940
  %140 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4, !dbg !1251
  %141 = load %union.t_iparams** %140, align 8, !dbg !1251, !tbaa !1115
  %142 = sext i32 %3 to i64, !dbg !1245
  br label %143, !dbg !1245

; <label>:143                                     ; preds = %.lr.ph, %143
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %143 ]
  %dvdl.06 = phi float [ 0.000000e+00, %.lr.ph ], [ %157, %143 ]
  %144 = mul nsw i64 %indvars.iv, 3, !dbg !1252
  %145 = getelementptr inbounds i32* %138, i64 %144, !dbg !1253
  %146 = load i32* %145, align 4, !dbg !1253, !tbaa !790
  tail call void @llvm.dbg.value(metadata i32 %146, i64 0, metadata !652, metadata !711), !dbg !1254
  %147 = getelementptr inbounds float* %139, i64 %indvars.iv, !dbg !1250
  %148 = load float* %147, align 4, !dbg !1250, !tbaa !780
  %149 = fmul float %137, %148, !dbg !1255
  %150 = sext i32 %146 to i64, !dbg !1256
  %151 = getelementptr inbounds %union.t_iparams* %141, i64 %150, i32 0, i32 1, !dbg !1257
  %152 = load float* %151, align 4, !dbg !1257, !tbaa !1001
  %153 = getelementptr inbounds %union.t_iparams* %141, i64 %150, i32 0, i32 0, !dbg !1258
  %154 = load float* %153, align 4, !dbg !1258, !tbaa !996
  %155 = fsub float %152, %154, !dbg !1259
  %156 = fmul float %149, %155, !dbg !1260
  %157 = fadd float %dvdl.06, %156, !dbg !1261
  tail call void @llvm.dbg.value(metadata float %157, i64 0, metadata !647, metadata !711), !dbg !1244
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1245
  %158 = icmp slt i64 %indvars.iv.next, %142, !dbg !1262
  br i1 %158, label %143, label %._crit_edge, !dbg !1245

._crit_edge:                                      ; preds = %143, %133
  %dvdl.0.lcssa = phi float [ 0.000000e+00, %133 ], [ %157, %143 ]
  %159 = load float* %dvdlambda, align 4, !dbg !1263, !tbaa !780
  %160 = fadd float %dvdl.0.lcssa, %159, !dbg !1263
  store float %160, float* %dvdlambda, align 4, !dbg !1263, !tbaa !780
  br label %161, !dbg !1264

; <label>:161                                     ; preds = %130, %._crit_edge
  %162 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 67, !dbg !1265
  %163 = load i32* %162, align 4, !dbg !1265, !tbaa !1079
  %164 = icmp eq i32 %163, 0, !dbg !1267
  br i1 %164, label %174, label %165, !dbg !1268

; <label>:165                                     ; preds = %161
  %166 = load i32* @bshakef.gamma, align 4, !dbg !1269, !tbaa !790
  %167 = icmp sgt i32 %tnit.0.lcssa, %166, !dbg !1272
  %168 = load float* @bshakef.delta, align 4, !dbg !1273, !tbaa !780
  br i1 %167, label %169, label %._crit_edge33, !dbg !1275

; <label>:169                                     ; preds = %165
  %170 = fmul float %168, -5.000000e-01, !dbg !1276
  store float %170, float* @bshakef.delta, align 4, !dbg !1277, !tbaa !780
  br label %._crit_edge33, !dbg !1278

._crit_edge33:                                    ; preds = %165, %169
  %171 = phi float [ %170, %169 ], [ %168, %165 ]
  %172 = load float* @bshakef.omega, align 4, !dbg !1279, !tbaa !780
  %173 = fadd float %172, %171, !dbg !1280
  store float %173, float* @bshakef.omega, align 4, !dbg !1281, !tbaa !780
  store i32 %tnit.0.lcssa, i32* @bshakef.gamma, align 4, !dbg !1282, !tbaa !790
  br label %174, !dbg !1283

; <label>:174                                     ; preds = %161, %._crit_edge33
  %175 = sitofp i32 %tnit.0.lcssa to double, !dbg !1284
  %176 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 115, !dbg !1284
  %177 = load double* %176, align 8, !dbg !1284, !tbaa !1285
  %178 = fadd double %175, %177, !dbg !1284
  store double %178, double* %176, align 8, !dbg !1284, !tbaa !1285
  %179 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 117, !dbg !1287
  %180 = load double* %179, align 8, !dbg !1287, !tbaa !1285
  %181 = fadd double %trij.0.lcssa, %180, !dbg !1287
  store double %181, double* %179, align 8, !dbg !1287, !tbaa !1285
  br label %check_cons.exit, !dbg !1288

check_cons.exit:                                  ; preds = %117, %.preheader.i, %42, %174
  %.0 = phi i32 [ 1, %174 ], [ 0, %42 ], [ 0, %.preheader.i ], [ 0, %117 ]
  ret i32 %.0, !dbg !1289
}

; Function Attrs: optsize
declare void @please_cite(%struct.__sFILE*, i8*) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #6

declare float @sqrtf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!707, !708, !709}
!llvm.ident = !{!710}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !191, subprograms: !193, globals: !695, imports: !706)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/shakef.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3, !51, !57}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 49, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/idef.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!6 = !DIEnumerator(name: "F_BONDS", value: 0)
!7 = !DIEnumerator(name: "F_G96BONDS", value: 1)
!8 = !DIEnumerator(name: "F_MORSE", value: 2)
!9 = !DIEnumerator(name: "F_CUBICBONDS", value: 3)
!10 = !DIEnumerator(name: "F_CONNBONDS", value: 4)
!11 = !DIEnumerator(name: "F_HARMONIC", value: 5)
!12 = !DIEnumerator(name: "F_ANGLES", value: 6)
!13 = !DIEnumerator(name: "F_G96ANGLES", value: 7)
!14 = !DIEnumerator(name: "F_PDIHS", value: 8)
!15 = !DIEnumerator(name: "F_RBDIHS", value: 9)
!16 = !DIEnumerator(name: "F_IDIHS", value: 10)
!17 = !DIEnumerator(name: "F_LJ14", value: 11)
!18 = !DIEnumerator(name: "F_COUL14", value: 12)
!19 = !DIEnumerator(name: "F_LJ", value: 13)
!20 = !DIEnumerator(name: "F_BHAM", value: 14)
!21 = !DIEnumerator(name: "F_LJLR", value: 15)
!22 = !DIEnumerator(name: "F_DISPCORR", value: 16)
!23 = !DIEnumerator(name: "F_SR", value: 17)
!24 = !DIEnumerator(name: "F_LR", value: 18)
!25 = !DIEnumerator(name: "F_WPOL", value: 19)
!26 = !DIEnumerator(name: "F_POSRES", value: 20)
!27 = !DIEnumerator(name: "F_DISRES", value: 21)
!28 = !DIEnumerator(name: "F_DISRESVIOL", value: 22)
!29 = !DIEnumerator(name: "F_ORIRES", value: 23)
!30 = !DIEnumerator(name: "F_ORIRESDEV", value: 24)
!31 = !DIEnumerator(name: "F_ANGRES", value: 25)
!32 = !DIEnumerator(name: "F_ANGRESZ", value: 26)
!33 = !DIEnumerator(name: "F_SHAKE", value: 27)
!34 = !DIEnumerator(name: "F_SHAKENC", value: 28)
!35 = !DIEnumerator(name: "F_SETTLE", value: 29)
!36 = !DIEnumerator(name: "F_DUMMY2", value: 30)
!37 = !DIEnumerator(name: "F_DUMMY3", value: 31)
!38 = !DIEnumerator(name: "F_DUMMY3FD", value: 32)
!39 = !DIEnumerator(name: "F_DUMMY3FAD", value: 33)
!40 = !DIEnumerator(name: "F_DUMMY3OUT", value: 34)
!41 = !DIEnumerator(name: "F_DUMMY4FD", value: 35)
!42 = !DIEnumerator(name: "F_EQM", value: 36)
!43 = !DIEnumerator(name: "F_EPOT", value: 37)
!44 = !DIEnumerator(name: "F_EKIN", value: 38)
!45 = !DIEnumerator(name: "F_ETOT", value: 39)
!46 = !DIEnumerator(name: "F_TEMP", value: 40)
!47 = !DIEnumerator(name: "F_PRES", value: 41)
!48 = !DIEnumerator(name: "F_DVDL", value: 42)
!49 = !DIEnumerator(name: "F_DVDLKIN", value: 43)
!50 = !DIEnumerator(name: "F_NRE", value: 44)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !52, line: 106, size: 32, align: 32, elements: !53)
!52 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/enums.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!53 = !{!54, !55, !56}
!54 = !DIEnumerator(name: "efepNO", value: 0)
!55 = !DIEnumerator(name: "efepYES", value: 1)
!56 = !DIEnumerator(name: "efepNR", value: 2)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !58, line: 51, size: 32, align: 32, elements: !59)
!58 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/nrnb.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!59 = !{!60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190}
!60 = !DIEnumerator(name: "eNR_INL0100", value: 0)
!61 = !DIEnumerator(name: "eNR_INL0110", value: 1)
!62 = !DIEnumerator(name: "eNR_INL0200", value: 2)
!63 = !DIEnumerator(name: "eNR_INL0210", value: 3)
!64 = !DIEnumerator(name: "eNR_INL0300", value: 4)
!65 = !DIEnumerator(name: "eNR_INL0310", value: 5)
!66 = !DIEnumerator(name: "eNR_INL0301", value: 6)
!67 = !DIEnumerator(name: "eNR_INL0302", value: 7)
!68 = !DIEnumerator(name: "eNR_INL0400", value: 8)
!69 = !DIEnumerator(name: "eNR_INL0410", value: 9)
!70 = !DIEnumerator(name: "eNR_INL0401", value: 10)
!71 = !DIEnumerator(name: "eNR_INL0402", value: 11)
!72 = !DIEnumerator(name: "eNR_INL1000", value: 12)
!73 = !DIEnumerator(name: "eNR_INL1010", value: 13)
!74 = !DIEnumerator(name: "eNR_INL1020", value: 14)
!75 = !DIEnumerator(name: "eNR_INL1030", value: 15)
!76 = !DIEnumerator(name: "eNR_INL1100", value: 16)
!77 = !DIEnumerator(name: "eNR_INL1110", value: 17)
!78 = !DIEnumerator(name: "eNR_INL1120", value: 18)
!79 = !DIEnumerator(name: "eNR_INL1130", value: 19)
!80 = !DIEnumerator(name: "eNR_INL1200", value: 20)
!81 = !DIEnumerator(name: "eNR_INL1210", value: 21)
!82 = !DIEnumerator(name: "eNR_INL1220", value: 22)
!83 = !DIEnumerator(name: "eNR_INL1230", value: 23)
!84 = !DIEnumerator(name: "eNR_INL1300", value: 24)
!85 = !DIEnumerator(name: "eNR_INL1310", value: 25)
!86 = !DIEnumerator(name: "eNR_INL1320", value: 26)
!87 = !DIEnumerator(name: "eNR_INL1330", value: 27)
!88 = !DIEnumerator(name: "eNR_INL1400", value: 28)
!89 = !DIEnumerator(name: "eNR_INL1410", value: 29)
!90 = !DIEnumerator(name: "eNR_INL1420", value: 30)
!91 = !DIEnumerator(name: "eNR_INL1430", value: 31)
!92 = !DIEnumerator(name: "eNR_INL2000", value: 32)
!93 = !DIEnumerator(name: "eNR_INL2010", value: 33)
!94 = !DIEnumerator(name: "eNR_INL2020", value: 34)
!95 = !DIEnumerator(name: "eNR_INL2030", value: 35)
!96 = !DIEnumerator(name: "eNR_INL2100", value: 36)
!97 = !DIEnumerator(name: "eNR_INL2110", value: 37)
!98 = !DIEnumerator(name: "eNR_INL2120", value: 38)
!99 = !DIEnumerator(name: "eNR_INL2130", value: 39)
!100 = !DIEnumerator(name: "eNR_INL2200", value: 40)
!101 = !DIEnumerator(name: "eNR_INL2210", value: 41)
!102 = !DIEnumerator(name: "eNR_INL2220", value: 42)
!103 = !DIEnumerator(name: "eNR_INL2230", value: 43)
!104 = !DIEnumerator(name: "eNR_INL2300", value: 44)
!105 = !DIEnumerator(name: "eNR_INL2310", value: 45)
!106 = !DIEnumerator(name: "eNR_INL2320", value: 46)
!107 = !DIEnumerator(name: "eNR_INL2330", value: 47)
!108 = !DIEnumerator(name: "eNR_INL2400", value: 48)
!109 = !DIEnumerator(name: "eNR_INL2410", value: 49)
!110 = !DIEnumerator(name: "eNR_INL2420", value: 50)
!111 = !DIEnumerator(name: "eNR_INL2430", value: 51)
!112 = !DIEnumerator(name: "eNR_INL3000", value: 52)
!113 = !DIEnumerator(name: "eNR_INL3001", value: 53)
!114 = !DIEnumerator(name: "eNR_INL3002", value: 54)
!115 = !DIEnumerator(name: "eNR_INL3010", value: 55)
!116 = !DIEnumerator(name: "eNR_INL3020", value: 56)
!117 = !DIEnumerator(name: "eNR_INL3030", value: 57)
!118 = !DIEnumerator(name: "eNR_INL3100", value: 58)
!119 = !DIEnumerator(name: "eNR_INL3110", value: 59)
!120 = !DIEnumerator(name: "eNR_INL3120", value: 60)
!121 = !DIEnumerator(name: "eNR_INL3130", value: 61)
!122 = !DIEnumerator(name: "eNR_INL3200", value: 62)
!123 = !DIEnumerator(name: "eNR_INL3210", value: 63)
!124 = !DIEnumerator(name: "eNR_INL3220", value: 64)
!125 = !DIEnumerator(name: "eNR_INL3230", value: 65)
!126 = !DIEnumerator(name: "eNR_INL3300", value: 66)
!127 = !DIEnumerator(name: "eNR_INL3301", value: 67)
!128 = !DIEnumerator(name: "eNR_INL3302", value: 68)
!129 = !DIEnumerator(name: "eNR_INL3310", value: 69)
!130 = !DIEnumerator(name: "eNR_INL3320", value: 70)
!131 = !DIEnumerator(name: "eNR_INL3330", value: 71)
!132 = !DIEnumerator(name: "eNR_INL3400", value: 72)
!133 = !DIEnumerator(name: "eNR_INL3401", value: 73)
!134 = !DIEnumerator(name: "eNR_INL3402", value: 74)
!135 = !DIEnumerator(name: "eNR_INL3410", value: 75)
!136 = !DIEnumerator(name: "eNR_INL3420", value: 76)
!137 = !DIEnumerator(name: "eNR_INL3430", value: 77)
!138 = !DIEnumerator(name: "eNR_INLOOP", value: 78)
!139 = !DIEnumerator(name: "eNR_INL_IATOM", value: 78)
!140 = !DIEnumerator(name: "eNR_WEIGHTS", value: 79)
!141 = !DIEnumerator(name: "eNR_SPREADQ", value: 80)
!142 = !DIEnumerator(name: "eNR_SPREADQBSP", value: 81)
!143 = !DIEnumerator(name: "eNR_GATHERF", value: 82)
!144 = !DIEnumerator(name: "eNR_GATHERFBSP", value: 83)
!145 = !DIEnumerator(name: "eNR_FFT", value: 84)
!146 = !DIEnumerator(name: "eNR_CONV", value: 85)
!147 = !DIEnumerator(name: "eNR_SOLVEPME", value: 86)
!148 = !DIEnumerator(name: "eNR_NS", value: 87)
!149 = !DIEnumerator(name: "eNR_RESETX", value: 88)
!150 = !DIEnumerator(name: "eNR_SHIFTX", value: 89)
!151 = !DIEnumerator(name: "eNR_CGCM", value: 90)
!152 = !DIEnumerator(name: "eNR_FSUM", value: 91)
!153 = !DIEnumerator(name: "eNR_BONDS", value: 92)
!154 = !DIEnumerator(name: "eNR_G96BONDS", value: 93)
!155 = !DIEnumerator(name: "eNR_ANGLES", value: 94)
!156 = !DIEnumerator(name: "eNR_G96ANGLES", value: 95)
!157 = !DIEnumerator(name: "eNR_PROPER", value: 96)
!158 = !DIEnumerator(name: "eNR_IMPROPER", value: 97)
!159 = !DIEnumerator(name: "eNR_RB", value: 98)
!160 = !DIEnumerator(name: "eNR_DISRES", value: 99)
!161 = !DIEnumerator(name: "eNR_ORIRES", value: 100)
!162 = !DIEnumerator(name: "eNR_POSRES", value: 101)
!163 = !DIEnumerator(name: "eNR_ANGRES", value: 102)
!164 = !DIEnumerator(name: "eNR_ANGRESZ", value: 103)
!165 = !DIEnumerator(name: "eNR_MORSE", value: 104)
!166 = !DIEnumerator(name: "eNR_CUBICBONDS", value: 105)
!167 = !DIEnumerator(name: "eNR_WPOL", value: 106)
!168 = !DIEnumerator(name: "eNR_VIRIAL", value: 107)
!169 = !DIEnumerator(name: "eNR_UPDATE", value: 108)
!170 = !DIEnumerator(name: "eNR_EXTUPDATE", value: 109)
!171 = !DIEnumerator(name: "eNR_STOPCM", value: 110)
!172 = !DIEnumerator(name: "eNR_PCOUPL", value: 111)
!173 = !DIEnumerator(name: "eNR_EKIN", value: 112)
!174 = !DIEnumerator(name: "eNR_LINCS", value: 113)
!175 = !DIEnumerator(name: "eNR_LINCSMAT", value: 114)
!176 = !DIEnumerator(name: "eNR_SHAKE", value: 115)
!177 = !DIEnumerator(name: "eNR_SHAKE_V", value: 116)
!178 = !DIEnumerator(name: "eNR_SHAKE_RIJ", value: 117)
!179 = !DIEnumerator(name: "eNR_SHAKE_VIR", value: 118)
!180 = !DIEnumerator(name: "eNR_SETTLE", value: 119)
!181 = !DIEnumerator(name: "eNR_PSHAKEINITLD", value: 120)
!182 = !DIEnumerator(name: "eNR_PSHAKEINITMD", value: 121)
!183 = !DIEnumerator(name: "eNR_PSHAKE", value: 122)
!184 = !DIEnumerator(name: "eNR_DUM2", value: 123)
!185 = !DIEnumerator(name: "eNR_DUM3", value: 124)
!186 = !DIEnumerator(name: "eNR_DUM3FD", value: 125)
!187 = !DIEnumerator(name: "eNR_DUM3FAD", value: 126)
!188 = !DIEnumerator(name: "eNR_DUM3OUT", value: 127)
!189 = !DIEnumerator(name: "eNR_DUM4FD", value: 128)
!190 = !DIEnumerator(name: "eNRNB", value: 129)
!191 = !{!192}
!192 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!193 = !{!194, !263, !269, !333, !478, !655, !661, !679, !690}
!194 = !DISubprogram(name: "__sputc", scope: !195, file: !195, line: 348, type: !196, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !260)
!195 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!196 = !DISubroutineType(types: !197)
!197 = !{!198, !198, !199}
!198 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !195, line: 153, baseType: !201)
!201 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !195, line: 122, size: 1216, align: 64, elements: !202)
!202 = !{!203, !206, !207, !208, !210, !211, !216, !217, !219, !223, !228, !238, !244, !245, !248, !249, !253, !257, !258, !259}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !201, file: !195, line: 123, baseType: !204, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !201, file: !195, line: 124, baseType: !198, size: 32, align: 32, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !201, file: !195, line: 125, baseType: !198, size: 32, align: 32, offset: 96)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !201, file: !195, line: 126, baseType: !209, size: 16, align: 16, offset: 128)
!209 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !201, file: !195, line: 127, baseType: !209, size: 16, align: 16, offset: 144)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !201, file: !195, line: 128, baseType: !212, size: 128, align: 64, offset: 192)
!212 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !195, line: 88, size: 128, align: 64, elements: !213)
!213 = !{!214, !215}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !212, file: !195, line: 89, baseType: !204, size: 64, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !212, file: !195, line: 90, baseType: !198, size: 32, align: 32, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !201, file: !195, line: 129, baseType: !198, size: 32, align: 32, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !201, file: !195, line: 132, baseType: !218, size: 64, align: 64, offset: 384)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !201, file: !195, line: 133, baseType: !220, size: 64, align: 64, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!198, !218}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !201, file: !195, line: 134, baseType: !224, size: 64, align: 64, offset: 512)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!198, !218, !227, !198}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !201, file: !195, line: 135, baseType: !229, size: 64, align: 64, offset: 576)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!232, !218, !232, !198}
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !195, line: 77, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !234, line: 71, baseType: !235)
!234 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !236, line: 46, baseType: !237)
!236 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!237 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !201, file: !195, line: 136, baseType: !239, size: 64, align: 64, offset: 640)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!198, !218, !242, !198}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !201, file: !195, line: 139, baseType: !212, size: 128, align: 64, offset: 704)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !201, file: !195, line: 140, baseType: !246, size: 64, align: 64, offset: 832)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !195, line: 94, flags: DIFlagFwdDecl)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !201, file: !195, line: 141, baseType: !198, size: 32, align: 32, offset: 896)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !201, file: !195, line: 144, baseType: !250, size: 24, align: 8, offset: 928)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 24, align: 8, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 3)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !201, file: !195, line: 145, baseType: !254, size: 8, align: 8, offset: 952)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 8, align: 8, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 1)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !201, file: !195, line: 148, baseType: !212, size: 128, align: 64, offset: 960)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !201, file: !195, line: 151, baseType: !198, size: 32, align: 32, offset: 1088)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !201, file: !195, line: 152, baseType: !232, size: 64, align: 64, offset: 1152)
!260 = !{!261, !262}
!261 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !194, file: !195, line: 348, type: !198)
!262 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !194, file: !195, line: 348, type: !199)
!263 = !DISubprogram(name: "__sigbits", scope: !264, file: !264, line: 114, type: !265, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !267)
!264 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!265 = !DISubroutineType(types: !266)
!266 = !{!198, !198}
!267 = !{!268}
!268 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !263, file: !264, line: 114, type: !198)
!269 = !DISubprogram(name: "cshake", scope: !1, file: !1, line: 59, type: !270, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32, i32*, i32, float*, float*, float*, float*, float, float*, float*, float*, i32*)* @cshake, variables: !279)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !272, !198, !275, !198, !276, !276, !276, !276, !277, !276, !276, !276, !275}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "atom_id", file: !274, line: 73, baseType: !198)
!274 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !274, line: 87, baseType: !278)
!278 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!279 = !{!280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332}
!280 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iatom", arg: 1, scope: !269, file: !1, line: 59, type: !272)
!281 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ncon", arg: 2, scope: !269, file: !1, line: 59, type: !198)
!282 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nnit", arg: 3, scope: !269, file: !1, line: 59, type: !275)
!283 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "maxnit", arg: 4, scope: !269, file: !1, line: 59, type: !198)
!284 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dist2", arg: 5, scope: !269, file: !1, line: 60, type: !276)
!285 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xp", arg: 6, scope: !269, file: !1, line: 60, type: !276)
!286 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rij", arg: 7, scope: !269, file: !1, line: 60, type: !276)
!287 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m2", arg: 8, scope: !269, file: !1, line: 60, type: !276)
!288 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "omega", arg: 9, scope: !269, file: !1, line: 60, type: !277)
!289 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "invmass", arg: 10, scope: !269, file: !1, line: 61, type: !276)
!290 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tt", arg: 11, scope: !269, file: !1, line: 61, type: !276)
!291 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lagr", arg: 12, scope: !269, file: !1, line: 61, type: !276)
!292 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nerror", arg: 13, scope: !269, file: !1, line: 61, type: !275)
!293 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mytol", scope: !269, file: !1, line: 69, type: !294)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!295 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ll", scope: !269, file: !1, line: 71, type: !198)
!296 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !269, file: !1, line: 71, type: !198)
!297 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !269, file: !1, line: 71, type: !198)
!298 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i3", scope: !269, file: !1, line: 71, type: !198)
!299 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j3", scope: !269, file: !1, line: 71, type: !198)
!300 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l3", scope: !269, file: !1, line: 71, type: !198)
!301 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ix", scope: !269, file: !1, line: 72, type: !198)
!302 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iy", scope: !269, file: !1, line: 72, type: !198)
!303 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iz", scope: !269, file: !1, line: 72, type: !198)
!304 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jx", scope: !269, file: !1, line: 72, type: !198)
!305 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jy", scope: !269, file: !1, line: 72, type: !198)
!306 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jz", scope: !269, file: !1, line: 72, type: !198)
!307 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "toler", scope: !269, file: !1, line: 73, type: !277)
!308 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rpij2", scope: !269, file: !1, line: 73, type: !277)
!309 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rrpr", scope: !269, file: !1, line: 73, type: !277)
!310 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tx", scope: !269, file: !1, line: 73, type: !277)
!311 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ty", scope: !269, file: !1, line: 73, type: !277)
!312 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tz", scope: !269, file: !1, line: 73, type: !277)
!313 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "diff", scope: !269, file: !1, line: 73, type: !277)
!314 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "acor", scope: !269, file: !1, line: 73, type: !277)
!315 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "im", scope: !269, file: !1, line: 73, type: !277)
!316 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jm", scope: !269, file: !1, line: 73, type: !277)
!317 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xh", scope: !269, file: !1, line: 74, type: !277)
!318 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "yh", scope: !269, file: !1, line: 74, type: !277)
!319 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zh", scope: !269, file: !1, line: 74, type: !277)
!320 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rijx", scope: !269, file: !1, line: 74, type: !277)
!321 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rijy", scope: !269, file: !1, line: 74, type: !277)
!322 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rijz", scope: !269, file: !1, line: 74, type: !277)
!323 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tix", scope: !269, file: !1, line: 75, type: !277)
!324 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tiy", scope: !269, file: !1, line: 75, type: !277)
!325 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tiz", scope: !269, file: !1, line: 75, type: !277)
!326 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tjx", scope: !269, file: !1, line: 76, type: !277)
!327 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tjy", scope: !269, file: !1, line: 76, type: !277)
!328 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tjz", scope: !269, file: !1, line: 76, type: !277)
!329 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nit", scope: !269, file: !1, line: 77, type: !198)
!330 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error", scope: !269, file: !1, line: 77, type: !198)
!331 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iconv", scope: !269, file: !1, line: 77, type: !198)
!332 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nconv", scope: !269, file: !1, line: 77, type: !198)
!333 = !DISubprogram(name: "vec_shakef", scope: !1, file: !1, line: 152, type: !334, isLocal: false, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.__sFILE*, i32, float*, i32, %union.t_iparams*, i32*, float, [3 x float]*, [3 x float]*, float, i32, float, float*)* @vec_shakef, variables: !452)
!334 = !DISubroutineType(types: !335)
!335 = !{!198, !199, !198, !276, !198, !336, !448, !277, !450, !450, !277, !198, !277, !276}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_iparams", file: !4, line: 131, baseType: !338)
!338 = !DICompositeType(tag: DW_TAG_union_type, file: !4, line: 97, size: 192, align: 32, elements: !339)
!339 = !{!340, !346, !353, !359, !368, !373, !380, !388, !393, !398, !404, !410, !417, !426, !435, !444}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "bham", scope: !338, file: !4, line: 105, baseType: !341, size: 96, align: 32)
!341 = !DICompositeType(tag: DW_TAG_structure_type, scope: !338, file: !4, line: 105, size: 96, align: 32, elements: !342)
!342 = !{!343, !344, !345}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !341, file: !4, line: 105, baseType: !277, size: 32, align: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !341, file: !4, line: 105, baseType: !277, size: 32, align: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !341, file: !4, line: 105, baseType: !277, size: 32, align: 32, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "harmonic", scope: !338, file: !4, line: 106, baseType: !347, size: 128, align: 32)
!347 = !DICompositeType(tag: DW_TAG_structure_type, scope: !338, file: !4, line: 106, size: 128, align: 32, elements: !348)
!348 = !{!349, !350, !351, !352}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "rA", scope: !347, file: !4, line: 106, baseType: !277, size: 32, align: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "krA", scope: !347, file: !4, line: 106, baseType: !277, size: 32, align: 32, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "rB", scope: !347, file: !4, line: 106, baseType: !277, size: 32, align: 32, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "krB", scope: !347, file: !4, line: 106, baseType: !277, size: 32, align: 32, offset: 96)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "cubic", scope: !338, file: !4, line: 108, baseType: !354, size: 96, align: 32)
!354 = !DICompositeType(tag: DW_TAG_structure_type, scope: !338, file: !4, line: 108, size: 96, align: 32, elements: !355)
!355 = !{!356, !357, !358}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "b0", scope: !354, file: !4, line: 108, baseType: !277, size: 32, align: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "kb", scope: !354, file: !4, line: 108, baseType: !277, size: 32, align: 32, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "kcub", scope: !354, file: !4, line: 108, baseType: !277, size: 32, align: 32, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "wpol", scope: !338, file: !4, line: 110, baseType: !360, size: 192, align: 32)
!360 = !DICompositeType(tag: DW_TAG_structure_type, scope: !338, file: !4, line: 110, size: 192, align: 32, elements: !361)
!361 = !{!362, !363, !364, !365, !366, !367}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "kx", scope: !360, file: !4, line: 110, baseType: !277, size: 32, align: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ky", scope: !360, file: !4, line: 110, baseType: !277, size: 32, align: 32, offset: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "kz", scope: !360, file: !4, line: 110, baseType: !277, size: 32, align: 32, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "rOH", scope: !360, file: !4, line: 110, baseType: !277, size: 32, align: 32, offset: 96)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "rHH", scope: !360, file: !4, line: 110, baseType: !277, size: 32, align: 32, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "rOD", scope: !360, file: !4, line: 110, baseType: !277, size: 32, align: 32, offset: 160)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "lj", scope: !338, file: !4, line: 111, baseType: !369, size: 64, align: 32)
!369 = !DICompositeType(tag: DW_TAG_structure_type, scope: !338, file: !4, line: 111, size: 64, align: 32, elements: !370)
!370 = !{!371, !372}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "c6", scope: !369, file: !4, line: 111, baseType: !277, size: 32, align: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "c12", scope: !369, file: !4, line: 111, baseType: !277, size: 32, align: 32, offset: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "lj14", scope: !338, file: !4, line: 112, baseType: !374, size: 128, align: 32)
!374 = !DICompositeType(tag: DW_TAG_structure_type, scope: !338, file: !4, line: 112, size: 128, align: 32, elements: !375)
!375 = !{!376, !377, !378, !379}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "c6A", scope: !374, file: !4, line: 112, baseType: !277, size: 32, align: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "c12A", scope: !374, file: !4, line: 112, baseType: !277, size: 32, align: 32, offset: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "c6B", scope: !374, file: !4, line: 112, baseType: !277, size: 32, align: 32, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "c12B", scope: !374, file: !4, line: 112, baseType: !277, size: 32, align: 32, offset: 96)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "pdihs", scope: !338, file: !4, line: 117, baseType: !381, size: 160, align: 32)
!381 = !DICompositeType(tag: DW_TAG_structure_type, scope: !338, file: !4, line: 117, size: 160, align: 32, elements: !382)
!382 = !{!383, !384, !385, !386, !387}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "phiA", scope: !381, file: !4, line: 117, baseType: !277, size: 32, align: 32)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "cpA", scope: !381, file: !4, line: 117, baseType: !277, size: 32, align: 32, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !381, file: !4, line: 117, baseType: !198, size: 32, align: 32, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "phiB", scope: !381, file: !4, line: 117, baseType: !277, size: 32, align: 32, offset: 96)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "cpB", scope: !381, file: !4, line: 117, baseType: !277, size: 32, align: 32, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "shake", scope: !338, file: !4, line: 118, baseType: !389, size: 64, align: 32)
!389 = !DICompositeType(tag: DW_TAG_structure_type, scope: !338, file: !4, line: 118, size: 64, align: 32, elements: !390)
!390 = !{!391, !392}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "dA", scope: !389, file: !4, line: 118, baseType: !277, size: 32, align: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "dB", scope: !389, file: !4, line: 118, baseType: !277, size: 32, align: 32, offset: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "settle", scope: !338, file: !4, line: 123, baseType: !394, size: 64, align: 32)
!394 = !DICompositeType(tag: DW_TAG_structure_type, scope: !338, file: !4, line: 123, size: 64, align: 32, elements: !395)
!395 = !{!396, !397}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "doh", scope: !394, file: !4, line: 123, baseType: !277, size: 32, align: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "dhh", scope: !394, file: !4, line: 123, baseType: !277, size: 32, align: 32, offset: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "morse", scope: !338, file: !4, line: 124, baseType: !399, size: 96, align: 32)
!399 = !DICompositeType(tag: DW_TAG_structure_type, scope: !338, file: !4, line: 124, size: 96, align: 32, elements: !400)
!400 = !{!401, !402, !403}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "b0", scope: !399, file: !4, line: 124, baseType: !277, size: 32, align: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !399, file: !4, line: 124, baseType: !277, size: 32, align: 32, offset: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "beta", scope: !399, file: !4, line: 124, baseType: !277, size: 32, align: 32, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "posres", scope: !338, file: !4, line: 125, baseType: !405, size: 192, align: 32)
!405 = !DICompositeType(tag: DW_TAG_structure_type, scope: !338, file: !4, line: 125, size: 192, align: 32, elements: !406)
!406 = !{!407, !409}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "pos0", scope: !405, file: !4, line: 125, baseType: !408, size: 96, align: 32)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 96, align: 32, elements: !251)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "fc", scope: !405, file: !4, line: 125, baseType: !408, size: 96, align: 32, offset: 96)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "rbdihs", scope: !338, file: !4, line: 126, baseType: !411, size: 192, align: 32)
!411 = !DICompositeType(tag: DW_TAG_structure_type, scope: !338, file: !4, line: 126, size: 192, align: 32, elements: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "rbc", scope: !411, file: !4, line: 126, baseType: !414, size: 192, align: 32)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 192, align: 32, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 6)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !338, file: !4, line: 127, baseType: !418, size: 192, align: 32)
!418 = !DICompositeType(tag: DW_TAG_structure_type, scope: !338, file: !4, line: 127, size: 192, align: 32, elements: !419)
!419 = !{!420, !421, !422, !423, !424, !425}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !418, file: !4, line: 127, baseType: !277, size: 32, align: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !418, file: !4, line: 127, baseType: !277, size: 32, align: 32, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !418, file: !4, line: 127, baseType: !277, size: 32, align: 32, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !418, file: !4, line: 127, baseType: !277, size: 32, align: 32, offset: 96)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !418, file: !4, line: 127, baseType: !277, size: 32, align: 32, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !418, file: !4, line: 127, baseType: !277, size: 32, align: 32, offset: 160)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "disres", scope: !338, file: !4, line: 128, baseType: !427, size: 192, align: 32)
!427 = !DICompositeType(tag: DW_TAG_structure_type, scope: !338, file: !4, line: 128, size: 192, align: 32, elements: !428)
!428 = !{!429, !430, !431, !432, !433, !434}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !427, file: !4, line: 128, baseType: !277, size: 32, align: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "up1", scope: !427, file: !4, line: 128, baseType: !277, size: 32, align: 32, offset: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "up2", scope: !427, file: !4, line: 128, baseType: !277, size: 32, align: 32, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "kfac", scope: !427, file: !4, line: 128, baseType: !277, size: 32, align: 32, offset: 96)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !427, file: !4, line: 128, baseType: !198, size: 32, align: 32, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !427, file: !4, line: 128, baseType: !198, size: 32, align: 32, offset: 160)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "orires", scope: !338, file: !4, line: 129, baseType: !436, size: 192, align: 32)
!436 = !DICompositeType(tag: DW_TAG_structure_type, scope: !338, file: !4, line: 129, size: 192, align: 32, elements: !437)
!437 = !{!438, !439, !440, !441, !442, !443}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "ex", scope: !436, file: !4, line: 129, baseType: !198, size: 32, align: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "pow", scope: !436, file: !4, line: 129, baseType: !198, size: 32, align: 32, offset: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !436, file: !4, line: 129, baseType: !198, size: 32, align: 32, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !436, file: !4, line: 129, baseType: !277, size: 32, align: 32, offset: 96)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "obs", scope: !436, file: !4, line: 129, baseType: !277, size: 32, align: 32, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "kfac", scope: !436, file: !4, line: 129, baseType: !277, size: 32, align: 32, offset: 160)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "generic", scope: !338, file: !4, line: 130, baseType: !445, size: 192, align: 32)
!445 = !DICompositeType(tag: DW_TAG_structure_type, scope: !338, file: !4, line: 130, size: 192, align: 32, elements: !446)
!446 = !{!447}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !445, file: !4, line: 130, baseType: !414, size: 192, align: 32)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64, align: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_iatom", file: !4, line: 45, baseType: !273)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64, align: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !274, line: 101, baseType: !408)
!452 = !{!453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477}
!453 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "log", arg: 1, scope: !333, file: !1, line: 152, type: !199)
!454 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 2, scope: !333, file: !1, line: 153, type: !198)
!455 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "invmass", arg: 3, scope: !333, file: !1, line: 153, type: !276)
!456 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ncon", arg: 4, scope: !333, file: !1, line: 153, type: !198)
!457 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ip", arg: 5, scope: !333, file: !1, line: 154, type: !336)
!458 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iatom", arg: 6, scope: !333, file: !1, line: 154, type: !448)
!459 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tol", arg: 7, scope: !333, file: !1, line: 155, type: !277)
!460 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 8, scope: !333, file: !1, line: 155, type: !450)
!461 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xp", arg: 9, scope: !333, file: !1, line: 155, type: !450)
!462 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "omega", arg: 10, scope: !333, file: !1, line: 155, type: !277)
!463 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bFEP", arg: 11, scope: !333, file: !1, line: 156, type: !198)
!464 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lambda", arg: 12, scope: !333, file: !1, line: 156, type: !277)
!465 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lagr", arg: 13, scope: !333, file: !1, line: 156, type: !276)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxnit", scope: !333, file: !1, line: 161, type: !198)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nit", scope: !333, file: !1, line: 162, type: !198)
!468 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ll", scope: !333, file: !1, line: 162, type: !198)
!469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !333, file: !1, line: 162, type: !198)
!470 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !333, file: !1, line: 162, type: !198)
!471 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !333, file: !1, line: 162, type: !198)
!472 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ia", scope: !333, file: !1, line: 163, type: !448)
!473 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "L1", scope: !333, file: !1, line: 164, type: !277)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tol2", scope: !333, file: !1, line: 164, type: !277)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "toler", scope: !333, file: !1, line: 164, type: !277)
!476 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mm", scope: !333, file: !1, line: 165, type: !277)
!477 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error", scope: !333, file: !1, line: 166, type: !198)
!478 = !DISubprogram(name: "bshakef", scope: !1, file: !1, line: 257, type: !479, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.__sFILE*, i32, float*, i32, i32*, %struct.t_idef*, %struct.t_inputrec*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_nrnb*, float, float*, i32)* @bshakef, variables: !629)
!479 = !DISubroutineType(types: !480)
!480 = !{!198, !199, !198, !276, !198, !275, !481, !505, !619, !450, !450, !620, !277, !276, !198}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64, align: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_idef", file: !4, line: 188, baseType: !483)
!483 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 179, size: 366336, align: 64, elements: !484)
!484 = !{!485, !486, !487, !488, !491, !492}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "ntypes", scope: !483, file: !4, line: 181, baseType: !198, size: 32, align: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "nodeid", scope: !483, file: !4, line: 182, baseType: !198, size: 32, align: 32, offset: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "atnr", scope: !483, file: !4, line: 183, baseType: !198, size: 32, align: 32, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "functype", scope: !483, file: !4, line: 184, baseType: !489, size: 64, align: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64, align: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_functype", file: !4, line: 133, baseType: !198)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "iparams", scope: !483, file: !4, line: 185, baseType: !336, size: 64, align: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !483, file: !4, line: 187, baseType: !493, size: 366080, align: 64, offset: 256)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 366080, align: 64, elements: !503)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_ilist", file: !4, line: 140, baseType: !495)
!495 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 135, size: 8320, align: 64, elements: !496)
!496 = !{!497, !498, !502}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !495, file: !4, line: 137, baseType: !198, size: 32, align: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "multinr", scope: !495, file: !4, line: 138, baseType: !499, size: 8192, align: 32, offset: 32)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 8192, align: 32, elements: !500)
!500 = !{!501}
!501 = !DISubrange(count: 256)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "iatoms", scope: !495, file: !4, line: 139, baseType: !448, size: 64, align: 64, offset: 8256)
!503 = !{!504}
!504 = !DISubrange(count: 44)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64, align: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_inputrec", file: !507, line: 143, baseType: !508)
!507 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/inputrec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!508 = !DICompositeType(tag: DW_TAG_structure_type, file: !507, line: 55, size: 4736, align: 64, elements: !509)
!509 = !{!510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !610, !618}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "eI", scope: !508, file: !507, line: 56, baseType: !198, size: 32, align: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "nsteps", scope: !508, file: !507, line: 57, baseType: !198, size: 32, align: 32, offset: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !508, file: !507, line: 58, baseType: !198, size: 32, align: 32, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "nstlist", scope: !508, file: !507, line: 59, baseType: !198, size: 32, align: 32, offset: 96)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "ndelta", scope: !508, file: !507, line: 60, baseType: !198, size: 32, align: 32, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "bDomDecomp", scope: !508, file: !507, line: 61, baseType: !198, size: 32, align: 32, offset: 160)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "decomp_dir", scope: !508, file: !507, line: 62, baseType: !198, size: 32, align: 32, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "nstcomm", scope: !508, file: !507, line: 63, baseType: !198, size: 32, align: 32, offset: 224)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "nstlog", scope: !508, file: !507, line: 65, baseType: !198, size: 32, align: 32, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "nstxout", scope: !508, file: !507, line: 66, baseType: !198, size: 32, align: 32, offset: 288)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "nstvout", scope: !508, file: !507, line: 67, baseType: !198, size: 32, align: 32, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "nstfout", scope: !508, file: !507, line: 68, baseType: !198, size: 32, align: 32, offset: 352)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "nstenergy", scope: !508, file: !507, line: 69, baseType: !198, size: 32, align: 32, offset: 384)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "nstxtcout", scope: !508, file: !507, line: 70, baseType: !198, size: 32, align: 32, offset: 416)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "init_t", scope: !508, file: !507, line: 71, baseType: !277, size: 32, align: 32, offset: 448)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "delta_t", scope: !508, file: !507, line: 72, baseType: !277, size: 32, align: 32, offset: 480)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "xtcprec", scope: !508, file: !507, line: 73, baseType: !277, size: 32, align: 32, offset: 512)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "nkx", scope: !508, file: !507, line: 74, baseType: !198, size: 32, align: 32, offset: 544)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "nky", scope: !508, file: !507, line: 74, baseType: !198, size: 32, align: 32, offset: 576)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "nkz", scope: !508, file: !507, line: 74, baseType: !198, size: 32, align: 32, offset: 608)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "pme_order", scope: !508, file: !507, line: 76, baseType: !198, size: 32, align: 32, offset: 640)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ewald_rtol", scope: !508, file: !507, line: 77, baseType: !277, size: 32, align: 32, offset: 672)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ewald_geometry", scope: !508, file: !507, line: 79, baseType: !198, size: 32, align: 32, offset: 704)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "epsilon_surface", scope: !508, file: !507, line: 80, baseType: !198, size: 32, align: 32, offset: 736)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "bOptFFT", scope: !508, file: !507, line: 81, baseType: !198, size: 32, align: 32, offset: 768)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "ePBC", scope: !508, file: !507, line: 82, baseType: !198, size: 32, align: 32, offset: 800)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "bUncStart", scope: !508, file: !507, line: 83, baseType: !198, size: 32, align: 32, offset: 832)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "etc", scope: !508, file: !507, line: 84, baseType: !198, size: 32, align: 32, offset: 864)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !508, file: !507, line: 85, baseType: !198, size: 32, align: 32, offset: 896)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "epct", scope: !508, file: !507, line: 86, baseType: !198, size: 32, align: 32, offset: 928)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "tau_p", scope: !508, file: !507, line: 87, baseType: !277, size: 32, align: 32, offset: 960)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ref_p", scope: !508, file: !507, line: 88, baseType: !542, size: 288, align: 32, offset: 992)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "tensor", file: !274, line: 105, baseType: !543)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 288, align: 32, elements: !544)
!544 = !{!252, !252}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !508, file: !507, line: 89, baseType: !542, size: 288, align: 32, offset: 1280)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "bSimAnn", scope: !508, file: !507, line: 90, baseType: !198, size: 32, align: 32, offset: 1568)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "zero_temp_time", scope: !508, file: !507, line: 91, baseType: !277, size: 32, align: 32, offset: 1600)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "rlist", scope: !508, file: !507, line: 92, baseType: !277, size: 32, align: 32, offset: 1632)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "coulombtype", scope: !508, file: !507, line: 93, baseType: !198, size: 32, align: 32, offset: 1664)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "rcoulomb_switch", scope: !508, file: !507, line: 94, baseType: !277, size: 32, align: 32, offset: 1696)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "rcoulomb", scope: !508, file: !507, line: 95, baseType: !277, size: 32, align: 32, offset: 1728)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "vdwtype", scope: !508, file: !507, line: 96, baseType: !198, size: 32, align: 32, offset: 1760)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "rvdw_switch", scope: !508, file: !507, line: 97, baseType: !277, size: 32, align: 32, offset: 1792)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "rvdw", scope: !508, file: !507, line: 98, baseType: !277, size: 32, align: 32, offset: 1824)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "epsilon_r", scope: !508, file: !507, line: 99, baseType: !277, size: 32, align: 32, offset: 1856)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "eDispCorr", scope: !508, file: !507, line: 100, baseType: !198, size: 32, align: 32, offset: 1888)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "shake_tol", scope: !508, file: !507, line: 101, baseType: !277, size: 32, align: 32, offset: 1920)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "fudgeQQ", scope: !508, file: !507, line: 102, baseType: !277, size: 32, align: 32, offset: 1952)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "efep", scope: !508, file: !507, line: 103, baseType: !198, size: 32, align: 32, offset: 1984)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "init_lambda", scope: !508, file: !507, line: 104, baseType: !277, size: 32, align: 32, offset: 2016)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "delta_lambda", scope: !508, file: !507, line: 105, baseType: !277, size: 32, align: 32, offset: 2048)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "sc_alpha", scope: !508, file: !507, line: 106, baseType: !277, size: 32, align: 32, offset: 2080)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "sc_sigma", scope: !508, file: !507, line: 107, baseType: !277, size: 32, align: 32, offset: 2112)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "dr_fc", scope: !508, file: !507, line: 108, baseType: !277, size: 32, align: 32, offset: 2144)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "eDisreWeighting", scope: !508, file: !507, line: 109, baseType: !198, size: 32, align: 32, offset: 2176)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "bDisreMixed", scope: !508, file: !507, line: 110, baseType: !198, size: 32, align: 32, offset: 2208)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "nstdisreout", scope: !508, file: !507, line: 111, baseType: !198, size: 32, align: 32, offset: 2240)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "dr_tau", scope: !508, file: !507, line: 112, baseType: !277, size: 32, align: 32, offset: 2272)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "orires_fc", scope: !508, file: !507, line: 113, baseType: !277, size: 32, align: 32, offset: 2304)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "orires_tau", scope: !508, file: !507, line: 114, baseType: !277, size: 32, align: 32, offset: 2336)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "nstorireout", scope: !508, file: !507, line: 115, baseType: !198, size: 32, align: 32, offset: 2368)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "em_stepsize", scope: !508, file: !507, line: 116, baseType: !277, size: 32, align: 32, offset: 2400)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "em_tol", scope: !508, file: !507, line: 117, baseType: !277, size: 32, align: 32, offset: 2432)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "niter", scope: !508, file: !507, line: 118, baseType: !198, size: 32, align: 32, offset: 2464)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "fc_stepsize", scope: !508, file: !507, line: 120, baseType: !198, size: 32, align: 32, offset: 2496)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "nstcgsteep", scope: !508, file: !507, line: 122, baseType: !198, size: 32, align: 32, offset: 2528)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "eConstrAlg", scope: !508, file: !507, line: 124, baseType: !198, size: 32, align: 32, offset: 2560)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "nProjOrder", scope: !508, file: !507, line: 125, baseType: !198, size: 32, align: 32, offset: 2592)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "LincsWarnAngle", scope: !508, file: !507, line: 126, baseType: !277, size: 32, align: 32, offset: 2624)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "bShakeSOR", scope: !508, file: !507, line: 127, baseType: !198, size: 32, align: 32, offset: 2656)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "bd_temp", scope: !508, file: !507, line: 128, baseType: !277, size: 32, align: 32, offset: 2688)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fric", scope: !508, file: !507, line: 129, baseType: !277, size: 32, align: 32, offset: 2720)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ld_seed", scope: !508, file: !507, line: 130, baseType: !198, size: 32, align: 32, offset: 2752)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "cos_accel", scope: !508, file: !507, line: 131, baseType: !277, size: 32, align: 32, offset: 2784)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "userint1", scope: !508, file: !507, line: 132, baseType: !198, size: 32, align: 32, offset: 2816)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "userint2", scope: !508, file: !507, line: 133, baseType: !198, size: 32, align: 32, offset: 2848)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "userint3", scope: !508, file: !507, line: 134, baseType: !198, size: 32, align: 32, offset: 2880)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "userint4", scope: !508, file: !507, line: 135, baseType: !198, size: 32, align: 32, offset: 2912)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "userreal1", scope: !508, file: !507, line: 136, baseType: !277, size: 32, align: 32, offset: 2944)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "userreal2", scope: !508, file: !507, line: 137, baseType: !277, size: 32, align: 32, offset: 2976)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "userreal3", scope: !508, file: !507, line: 138, baseType: !277, size: 32, align: 32, offset: 3008)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "userreal4", scope: !508, file: !507, line: 139, baseType: !277, size: 32, align: 32, offset: 3040)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !508, file: !507, line: 140, baseType: !594, size: 512, align: 64, offset: 3072)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_grpopts", file: !507, line: 53, baseType: !595)
!595 = !DICompositeType(tag: DW_TAG_structure_type, file: !507, line: 42, size: 512, align: 64, elements: !596)
!596 = !{!597, !598, !599, !600, !601, !602, !603, !604, !605, !609}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "ngtc", scope: !595, file: !507, line: 43, baseType: !198, size: 32, align: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "ngacc", scope: !595, file: !507, line: 44, baseType: !198, size: 32, align: 32, offset: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "ngfrz", scope: !595, file: !507, line: 45, baseType: !198, size: 32, align: 32, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "ngener", scope: !595, file: !507, line: 46, baseType: !198, size: 32, align: 32, offset: 96)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "nrdf", scope: !595, file: !507, line: 47, baseType: !276, size: 64, align: 64, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "ref_t", scope: !595, file: !507, line: 48, baseType: !276, size: 64, align: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "tau_t", scope: !595, file: !507, line: 49, baseType: !276, size: 64, align: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !595, file: !507, line: 50, baseType: !450, size: 64, align: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "nFreeze", scope: !595, file: !507, line: 51, baseType: !606, size: 64, align: 64, offset: 384)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64, align: 64)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "ivec", file: !274, line: 107, baseType: !608)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 96, align: 32, elements: !251)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "eg_excl", scope: !595, file: !507, line: 52, baseType: !275, size: 64, align: 64, offset: 448)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "ex", scope: !508, file: !507, line: 141, baseType: !611, size: 576, align: 64, offset: 3584)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 576, align: 64, elements: !251)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_cosines", file: !507, line: 40, baseType: !613)
!613 = !DICompositeType(tag: DW_TAG_structure_type, file: !507, line: 36, size: 192, align: 64, elements: !614)
!614 = !{!615, !616, !617}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !613, file: !507, line: 37, baseType: !198, size: 32, align: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !613, file: !507, line: 38, baseType: !276, size: 64, align: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "phi", scope: !613, file: !507, line: 39, baseType: !276, size: 64, align: 64, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "et", scope: !508, file: !507, line: 142, baseType: !611, size: 576, align: 64, offset: 4160)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64, align: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64, align: 64)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_nrnb", file: !58, line: 95, baseType: !622)
!622 = !DICompositeType(tag: DW_TAG_structure_type, file: !58, line: 93, size: 8256, align: 64, elements: !623)
!623 = !{!624}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !622, file: !58, line: 94, baseType: !625, size: 8256, align: 64)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !626, size: 8256, align: 64, elements: !627)
!626 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!627 = !{!628}
!628 = !DISubrange(count: 129)
!629 = !{!630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654}
!630 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "log", arg: 1, scope: !478, file: !1, line: 257, type: !199)
!631 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 2, scope: !478, file: !1, line: 257, type: !198)
!632 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "invmass", arg: 3, scope: !478, file: !1, line: 257, type: !276)
!633 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nblocks", arg: 4, scope: !478, file: !1, line: 257, type: !198)
!634 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sblock", arg: 5, scope: !478, file: !1, line: 257, type: !275)
!635 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "idef", arg: 6, scope: !478, file: !1, line: 258, type: !481)
!636 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ir", arg: 7, scope: !478, file: !1, line: 258, type: !505)
!637 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 8, scope: !478, file: !1, line: 258, type: !619)
!638 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x_s", arg: 9, scope: !478, file: !1, line: 258, type: !450)
!639 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xp", arg: 10, scope: !478, file: !1, line: 258, type: !450)
!640 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nrnb", arg: 11, scope: !478, file: !1, line: 259, type: !620)
!641 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lambda", arg: 12, scope: !478, file: !1, line: 259, type: !277)
!642 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dvdlambda", arg: 13, scope: !478, file: !1, line: 259, type: !276)
!643 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bDumpOnError", arg: 14, scope: !478, file: !1, line: 259, type: !198)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iatoms", scope: !478, file: !1, line: 268, type: !448)
!645 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lam", scope: !478, file: !1, line: 269, type: !276)
!646 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dt_2", scope: !478, file: !1, line: 269, type: !277)
!647 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dvdl", scope: !478, file: !1, line: 269, type: !277)
!648 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !478, file: !1, line: 270, type: !198)
!649 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n0", scope: !478, file: !1, line: 270, type: !198)
!650 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ncons", scope: !478, file: !1, line: 270, type: !198)
!651 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "blen", scope: !478, file: !1, line: 270, type: !198)
!652 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !478, file: !1, line: 270, type: !198)
!653 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tnit", scope: !478, file: !1, line: 271, type: !198)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "trij", scope: !478, file: !1, line: 271, type: !198)
!655 = !DISubprogram(name: "sqr", scope: !656, file: !656, line: 197, type: !657, isLocal: true, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, variables: !659)
!656 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/vec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!657 = !DISubroutineType(types: !658)
!658 = !{!277, !277}
!659 = !{!660}
!660 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !655, file: !656, line: 197, type: !277)
!661 = !DISubprogram(name: "check_cons", scope: !1, file: !1, line: 229, type: !662, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, variables: !664)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !199, !198, !450, !450, !336, !448, !276}
!664 = !{!665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678}
!665 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "log", arg: 1, scope: !661, file: !1, line: 229, type: !199)
!666 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nc", arg: 2, scope: !661, file: !1, line: 229, type: !198)
!667 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 3, scope: !661, file: !1, line: 229, type: !450)
!668 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xp", arg: 4, scope: !661, file: !1, line: 229, type: !450)
!669 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ip", arg: 5, scope: !661, file: !1, line: 230, type: !336)
!670 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iatom", arg: 6, scope: !661, file: !1, line: 230, type: !448)
!671 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "invmass", arg: 7, scope: !661, file: !1, line: 231, type: !276)
!672 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ia", scope: !661, file: !1, line: 233, type: !448)
!673 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ai", scope: !661, file: !1, line: 234, type: !198)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "aj", scope: !661, file: !1, line: 234, type: !198)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !661, file: !1, line: 235, type: !198)
!676 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !661, file: !1, line: 236, type: !277)
!677 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dp", scope: !661, file: !1, line: 236, type: !277)
!678 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dx", scope: !661, file: !1, line: 237, type: !451)
!679 = !DISubprogram(name: "rvec_sub", scope: !656, file: !656, line: 244, type: !680, isLocal: true, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: true, variables: !683)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !682, !682, !276}
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!683 = !{!684, !685, !686, !687, !688, !689}
!684 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !679, file: !656, line: 244, type: !682)
!685 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !679, file: !656, line: 244, type: !682)
!686 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 3, scope: !679, file: !656, line: 244, type: !276)
!687 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !679, file: !656, line: 246, type: !277)
!688 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !679, file: !656, line: 246, type: !277)
!689 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !679, file: !656, line: 246, type: !277)
!690 = !DISubprogram(name: "norm", scope: !656, file: !656, line: 358, type: !691, isLocal: true, isDefinition: true, scopeLine: 359, flags: DIFlagPrototyped, isOptimized: true, variables: !693)
!691 = !DISubroutineType(types: !692)
!692 = !{!277, !276}
!693 = !{!694}
!694 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !690, file: !656, line: 358, type: !276)
!695 = !{!696, !697, !698, !699, !700, !701, !702, !703, !704, !705}
!696 = !DIGlobalVariable(name: "rij", scope: !333, file: !1, line: 158, type: !450, isLocal: true, isDefinition: true, variable: [3 x float]** @vec_shakef.rij)
!697 = !DIGlobalVariable(name: "M2", scope: !333, file: !1, line: 159, type: !276, isLocal: true, isDefinition: true, variable: float** @vec_shakef.M2)
!698 = !DIGlobalVariable(name: "tt", scope: !333, file: !1, line: 159, type: !276, isLocal: true, isDefinition: true, variable: float** @vec_shakef.tt)
!699 = !DIGlobalVariable(name: "dist2", scope: !333, file: !1, line: 159, type: !276, isLocal: true, isDefinition: true, variable: float** @vec_shakef.dist2)
!700 = !DIGlobalVariable(name: "maxcon", scope: !333, file: !1, line: 160, type: !198, isLocal: true, isDefinition: true, variable: i32* @vec_shakef.maxcon)
!701 = !DIGlobalVariable(name: "bFirst", scope: !478, file: !1, line: 261, type: !198, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariable(name: "lagr", scope: !478, file: !1, line: 262, type: !276, isLocal: true, isDefinition: true, variable: float** @bshakef.lagr)
!703 = !DIGlobalVariable(name: "delta", scope: !478, file: !1, line: 264, type: !277, isLocal: true, isDefinition: true, variable: float* @bshakef.delta)
!704 = !DIGlobalVariable(name: "omega", scope: !478, file: !1, line: 265, type: !277, isLocal: true, isDefinition: true, variable: float* @bshakef.omega)
!705 = !DIGlobalVariable(name: "gamma", scope: !478, file: !1, line: 266, type: !198, isLocal: true, isDefinition: true, variable: i32* @bshakef.gamma)
!706 = !{}
!707 = !{i32 2, !"Dwarf Version", i32 2}
!708 = !{i32 2, !"Debug Info Version", i32 700000003}
!709 = !{i32 1, !"PIC Level", i32 2}
!710 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!711 = !DIExpression()
!712 = !DILocation(line: 348, column: 40, scope: !194)
!713 = !DILocation(line: 348, column: 50, scope: !194)
!714 = !DILocation(line: 349, column: 12, scope: !715)
!715 = distinct !DILexicalBlock(scope: !194, file: !195, line: 349, column: 6)
!716 = !DILocation(line: 349, column: 6, scope: !715)
!717 = !{!718, !722, i64 12}
!718 = !{!"__sFILE", !719, i64 0, !722, i64 8, !722, i64 12, !723, i64 16, !723, i64 18, !724, i64 24, !722, i64 40, !719, i64 48, !719, i64 56, !719, i64 64, !719, i64 72, !719, i64 80, !724, i64 88, !719, i64 104, !722, i64 112, !720, i64 116, !720, i64 119, !724, i64 120, !722, i64 136, !725, i64 144}
!719 = !{!"any pointer", !720, i64 0}
!720 = !{!"omnipotent char", !721, i64 0}
!721 = !{!"Simple C/C++ TBAA"}
!722 = !{!"int", !720, i64 0}
!723 = !{!"short", !720, i64 0}
!724 = !{!"__sbuf", !719, i64 0, !722, i64 8}
!725 = !{!"long long", !720, i64 0}
!726 = !DILocation(line: 349, column: 15, scope: !715)
!727 = !DILocation(line: 349, column: 20, scope: !715)
!728 = !DILocation(line: 350, column: 10, scope: !715)
!729 = !DILocation(line: 349, column: 38, scope: !715)
!730 = !{!718, !722, i64 40}
!731 = !DILocation(line: 349, column: 31, scope: !715)
!732 = !DILocation(line: 349, column: 59, scope: !715)
!733 = !DILocation(line: 349, column: 47, scope: !715)
!734 = !DILocation(line: 350, column: 23, scope: !715)
!735 = !DILocation(line: 350, column: 16, scope: !715)
!736 = !DILocation(line: 350, column: 18, scope: !715)
!737 = !{!718, !719, i64 0}
!738 = !DILocation(line: 350, column: 21, scope: !715)
!739 = !{!720, !720, i64 0}
!740 = !DILocation(line: 350, column: 3, scope: !715)
!741 = !DILocation(line: 352, column: 11, scope: !715)
!742 = !DILocation(line: 352, column: 3, scope: !715)
!743 = !DILocation(line: 353, column: 1, scope: !194)
!744 = !DILocation(line: 114, column: 15, scope: !263)
!745 = !DILocation(line: 116, column: 20, scope: !263)
!746 = !DILocation(line: 116, column: 12, scope: !263)
!747 = !DILocation(line: 116, column: 57, scope: !263)
!748 = !DILocation(line: 116, column: 45, scope: !263)
!749 = !DILocation(line: 116, column: 5, scope: !263)
!750 = !DILocation(line: 59, column: 21, scope: !269)
!751 = !DILocation(line: 59, column: 33, scope: !269)
!752 = !DILocation(line: 59, column: 43, scope: !269)
!753 = !DILocation(line: 59, column: 52, scope: !269)
!754 = !DILocation(line: 60, column: 11, scope: !269)
!755 = !DILocation(line: 60, column: 24, scope: !269)
!756 = !DILocation(line: 60, column: 34, scope: !269)
!757 = !DILocation(line: 60, column: 45, scope: !269)
!758 = !DILocation(line: 60, column: 55, scope: !269)
!759 = !DILocation(line: 61, column: 11, scope: !269)
!760 = !DILocation(line: 61, column: 26, scope: !269)
!761 = !DILocation(line: 61, column: 36, scope: !269)
!762 = !DILocation(line: 61, column: 48, scope: !269)
!763 = !DILocation(line: 69, column: 16, scope: !269)
!764 = !DILocation(line: 77, column: 15, scope: !269)
!765 = !DILocation(line: 77, column: 27, scope: !269)
!766 = !DILocation(line: 77, column: 11, scope: !269)
!767 = !DILocation(line: 81, column: 19, scope: !768)
!768 = distinct !DILexicalBlock(scope: !769, file: !1, line: 81, column: 3)
!769 = distinct !DILexicalBlock(scope: !269, file: !1, line: 81, column: 3)
!770 = !DILocation(line: 81, column: 28, scope: !768)
!771 = !DILocation(line: 83, column: 18, scope: !772)
!772 = distinct !DILexicalBlock(scope: !773, file: !1, line: 83, column: 5)
!773 = distinct !DILexicalBlock(scope: !774, file: !1, line: 83, column: 5)
!774 = distinct !DILexicalBlock(scope: !768, file: !1, line: 81, column: 68)
!775 = !DILocation(line: 83, column: 25, scope: !772)
!776 = !DILocation(line: 81, column: 64, scope: !768)
!777 = !DILocation(line: 84, column: 16, scope: !778)
!778 = distinct !DILexicalBlock(scope: !772, file: !1, line: 83, column: 48)
!779 = !DILocation(line: 85, column: 15, scope: !778)
!780 = !{!781, !781, i64 0}
!781 = !{!"float", !720, i64 0}
!782 = !DILocation(line: 74, column: 20, scope: !269)
!783 = !DILocation(line: 86, column: 21, scope: !778)
!784 = !DILocation(line: 86, column: 15, scope: !778)
!785 = !DILocation(line: 74, column: 25, scope: !269)
!786 = !DILocation(line: 87, column: 21, scope: !778)
!787 = !DILocation(line: 87, column: 15, scope: !778)
!788 = !DILocation(line: 74, column: 30, scope: !269)
!789 = !DILocation(line: 88, column: 15, scope: !778)
!790 = !{!722, !722, i64 0}
!791 = !DILocation(line: 71, column: 14, scope: !269)
!792 = !DILocation(line: 89, column: 15, scope: !778)
!793 = !DILocation(line: 71, column: 16, scope: !269)
!794 = !DILocation(line: 90, column: 16, scope: !778)
!795 = !DILocation(line: 71, column: 18, scope: !269)
!796 = !DILocation(line: 91, column: 16, scope: !778)
!797 = !DILocation(line: 71, column: 21, scope: !269)
!798 = !DILocation(line: 72, column: 11, scope: !269)
!799 = !DILocation(line: 93, column: 17, scope: !778)
!800 = !DILocation(line: 72, column: 14, scope: !269)
!801 = !DILocation(line: 94, column: 17, scope: !778)
!802 = !DILocation(line: 72, column: 17, scope: !269)
!803 = !DILocation(line: 72, column: 20, scope: !269)
!804 = !DILocation(line: 96, column: 17, scope: !778)
!805 = !DILocation(line: 72, column: 23, scope: !269)
!806 = !DILocation(line: 97, column: 17, scope: !778)
!807 = !DILocation(line: 72, column: 26, scope: !269)
!808 = !DILocation(line: 99, column: 17, scope: !778)
!809 = !DILocation(line: 99, column: 24, scope: !778)
!810 = !DILocation(line: 99, column: 23, scope: !778)
!811 = !DILocation(line: 73, column: 28, scope: !269)
!812 = !DILocation(line: 100, column: 17, scope: !778)
!813 = !DILocation(line: 100, column: 24, scope: !778)
!814 = !DILocation(line: 100, column: 23, scope: !778)
!815 = !DILocation(line: 73, column: 31, scope: !269)
!816 = !DILocation(line: 101, column: 17, scope: !778)
!817 = !DILocation(line: 101, column: 24, scope: !778)
!818 = !DILocation(line: 101, column: 23, scope: !778)
!819 = !DILocation(line: 73, column: 34, scope: !269)
!820 = !DILocation(line: 102, column: 19, scope: !778)
!821 = !DILocation(line: 102, column: 25, scope: !778)
!822 = !DILocation(line: 102, column: 22, scope: !778)
!823 = !DILocation(line: 102, column: 31, scope: !778)
!824 = !DILocation(line: 102, column: 28, scope: !778)
!825 = !DILocation(line: 73, column: 17, scope: !269)
!826 = !DILocation(line: 103, column: 17, scope: !778)
!827 = !DILocation(line: 73, column: 11, scope: !269)
!828 = !DILocation(line: 104, column: 22, scope: !778)
!829 = !DILocation(line: 73, column: 37, scope: !269)
!830 = !DILocation(line: 107, column: 17, scope: !778)
!831 = !DILocation(line: 107, column: 28, scope: !778)
!832 = !DILocation(line: 107, column: 27, scope: !778)
!833 = !DILocation(line: 77, column: 21, scope: !269)
!834 = !DILocation(line: 109, column: 17, scope: !835)
!835 = distinct !DILexicalBlock(scope: !778, file: !1, line: 109, column: 11)
!836 = !DILocation(line: 109, column: 11, scope: !778)
!837 = !DILocation(line: 110, column: 18, scope: !838)
!838 = distinct !DILexicalBlock(scope: !835, file: !1, line: 109, column: 23)
!839 = !DILocation(line: 111, column: 16, scope: !838)
!840 = !DILocation(line: 111, column: 24, scope: !838)
!841 = !DILocation(line: 111, column: 19, scope: !838)
!842 = !DILocation(line: 111, column: 32, scope: !838)
!843 = !DILocation(line: 111, column: 27, scope: !838)
!844 = !DILocation(line: 73, column: 23, scope: !269)
!845 = !DILocation(line: 113, column: 18, scope: !846)
!846 = distinct !DILexicalBlock(scope: !838, file: !1, line: 113, column: 6)
!847 = !DILocation(line: 113, column: 11, scope: !846)
!848 = !DILocation(line: 113, column: 6, scope: !838)
!849 = !DILocation(line: 116, column: 21, scope: !850)
!850 = distinct !DILexicalBlock(scope: !846, file: !1, line: 115, column: 7)
!851 = !DILocation(line: 116, column: 27, scope: !850)
!852 = !DILocation(line: 116, column: 26, scope: !850)
!853 = !DILocation(line: 116, column: 33, scope: !850)
!854 = !DILocation(line: 73, column: 42, scope: !269)
!855 = !DILocation(line: 117, column: 4, scope: !850)
!856 = !DILocation(line: 117, column: 13, scope: !850)
!857 = !DILocation(line: 118, column: 20, scope: !850)
!858 = !DILocation(line: 74, column: 11, scope: !269)
!859 = !DILocation(line: 119, column: 20, scope: !850)
!860 = !DILocation(line: 74, column: 14, scope: !269)
!861 = !DILocation(line: 120, column: 20, scope: !850)
!862 = !DILocation(line: 74, column: 17, scope: !269)
!863 = !DILocation(line: 121, column: 16, scope: !850)
!864 = !DILocation(line: 73, column: 47, scope: !269)
!865 = !DILocation(line: 122, column: 16, scope: !850)
!866 = !DILocation(line: 73, column: 50, scope: !269)
!867 = !DILocation(line: 123, column: 13, scope: !868)
!868 = distinct !DILexicalBlock(scope: !850, file: !1, line: 123, column: 8)
!869 = !DILocation(line: 123, column: 8, scope: !868)
!870 = !DILocation(line: 123, column: 16, scope: !868)
!871 = !DILocation(line: 123, column: 30, scope: !868)
!872 = !DILocation(line: 123, column: 33, scope: !868)
!873 = !DILocation(line: 123, column: 41, scope: !868)
!874 = !DILocation(line: 123, column: 8, scope: !850)
!875 = !DILocation(line: 124, column: 18, scope: !876)
!876 = distinct !DILexicalBlock(scope: !868, file: !1, line: 123, column: 56)
!877 = !DILocation(line: 124, column: 13, scope: !876)
!878 = !DILocation(line: 125, column: 18, scope: !876)
!879 = !DILocation(line: 125, column: 13, scope: !876)
!880 = !DILocation(line: 126, column: 18, scope: !876)
!881 = !DILocation(line: 126, column: 13, scope: !876)
!882 = !DILocation(line: 127, column: 18, scope: !876)
!883 = !DILocation(line: 127, column: 13, scope: !876)
!884 = !DILocation(line: 128, column: 18, scope: !876)
!885 = !DILocation(line: 128, column: 13, scope: !876)
!886 = !DILocation(line: 129, column: 18, scope: !876)
!887 = !DILocation(line: 129, column: 13, scope: !876)
!888 = !DILocation(line: 130, column: 4, scope: !876)
!889 = !DILocation(line: 131, column: 22, scope: !890)
!890 = distinct !DILexicalBlock(scope: !868, file: !1, line: 131, column: 13)
!891 = !DILocation(line: 131, column: 40, scope: !890)
!892 = !DILocation(line: 131, column: 48, scope: !890)
!893 = !DILocation(line: 131, column: 37, scope: !890)
!894 = !DILocation(line: 132, column: 18, scope: !895)
!895 = distinct !DILexicalBlock(scope: !890, file: !1, line: 131, column: 63)
!896 = !DILocation(line: 132, column: 13, scope: !895)
!897 = !DILocation(line: 133, column: 18, scope: !895)
!898 = !DILocation(line: 133, column: 13, scope: !895)
!899 = !DILocation(line: 134, column: 18, scope: !895)
!900 = !DILocation(line: 134, column: 13, scope: !895)
!901 = !DILocation(line: 135, column: 4, scope: !895)
!902 = !DILocation(line: 136, column: 35, scope: !903)
!903 = distinct !DILexicalBlock(scope: !890, file: !1, line: 136, column: 13)
!904 = !DILocation(line: 137, column: 18, scope: !905)
!905 = distinct !DILexicalBlock(scope: !903, file: !1, line: 136, column: 61)
!906 = !DILocation(line: 137, column: 13, scope: !905)
!907 = !DILocation(line: 138, column: 18, scope: !905)
!908 = !DILocation(line: 138, column: 13, scope: !905)
!909 = !DILocation(line: 139, column: 18, scope: !905)
!910 = !DILocation(line: 139, column: 13, scope: !905)
!911 = !DILocation(line: 140, column: 4, scope: !905)
!912 = !DILocation(line: 136, column: 18, scope: !903)
!913 = !DILocation(line: 142, column: 6, scope: !903)
!914 = !DILocation(line: 83, column: 35, scope: !772)
!915 = !DILocation(line: 81, column: 38, scope: !768)
!916 = !DILocation(line: 81, column: 54, scope: !768)
!917 = !DILocation(line: 148, column: 8, scope: !269)
!918 = !DILocation(line: 149, column: 10, scope: !269)
!919 = !DILocation(line: 150, column: 1, scope: !269)
!920 = !DILocation(line: 152, column: 22, scope: !333)
!921 = !DILocation(line: 153, column: 13, scope: !333)
!922 = !DILocation(line: 153, column: 25, scope: !333)
!923 = !DILocation(line: 153, column: 39, scope: !333)
!924 = !DILocation(line: 154, column: 19, scope: !333)
!925 = !DILocation(line: 154, column: 33, scope: !333)
!926 = !DILocation(line: 155, column: 14, scope: !333)
!927 = !DILocation(line: 155, column: 23, scope: !333)
!928 = !DILocation(line: 155, column: 32, scope: !333)
!929 = !DILocation(line: 155, column: 42, scope: !333)
!930 = !DILocation(line: 156, column: 14, scope: !333)
!931 = !DILocation(line: 156, column: 24, scope: !333)
!932 = !DILocation(line: 156, column: 36, scope: !333)
!933 = !DILocation(line: 161, column: 11, scope: !333)
!934 = !DILocation(line: 168, column: 14, scope: !935)
!935 = distinct !DILexicalBlock(scope: !333, file: !1, line: 168, column: 7)
!936 = !DILocation(line: 168, column: 12, scope: !935)
!937 = !DILocation(line: 168, column: 7, scope: !333)
!938 = !DILocation(line: 169, column: 5, scope: !939)
!939 = distinct !DILexicalBlock(scope: !935, file: !1, line: 168, column: 22)
!940 = !{!719, !719, i64 0}
!941 = !DILocation(line: 170, column: 5, scope: !939)
!942 = !DILocation(line: 171, column: 5, scope: !939)
!943 = !DILocation(line: 172, column: 5, scope: !939)
!944 = !DILocation(line: 173, column: 11, scope: !939)
!945 = !DILocation(line: 177, column: 3, scope: !939)
!946 = !DILocation(line: 179, column: 6, scope: !333)
!947 = !DILocation(line: 164, column: 11, scope: !333)
!948 = !DILocation(line: 180, column: 8, scope: !333)
!949 = !DILocation(line: 164, column: 14, scope: !333)
!950 = !DILocation(line: 163, column: 12, scope: !333)
!951 = !DILocation(line: 162, column: 15, scope: !333)
!952 = !DILocation(line: 182, column: 16, scope: !953)
!953 = distinct !DILexicalBlock(scope: !954, file: !1, line: 182, column: 3)
!954 = distinct !DILexicalBlock(scope: !333, file: !1, line: 182, column: 3)
!955 = !DILocation(line: 182, column: 3, scope: !954)
!956 = !DILocation(line: 206, column: 52, scope: !333)
!957 = !DILocation(line: 207, column: 6, scope: !333)
!958 = !DILocation(line: 207, column: 13, scope: !333)
!959 = !DILocation(line: 207, column: 31, scope: !333)
!960 = !DILocation(line: 188, column: 5, scope: !961)
!961 = distinct !DILexicalBlock(scope: !953, file: !1, line: 182, column: 36)
!962 = !DILocation(line: 191, column: 5, scope: !961)
!963 = !DILocation(line: 192, column: 9, scope: !964)
!964 = distinct !DILexicalBlock(scope: !961, file: !1, line: 192, column: 9)
!965 = !DILocation(line: 196, column: 5, scope: !961)
!966 = !DILocation(line: 197, column: 5, scope: !961)
!967 = !DILocation(line: 183, column: 13, scope: !961)
!968 = !DILocation(line: 162, column: 22, scope: !333)
!969 = !DILocation(line: 184, column: 7, scope: !961)
!970 = !DILocation(line: 162, column: 18, scope: !333)
!971 = !DILocation(line: 185, column: 7, scope: !961)
!972 = !DILocation(line: 162, column: 20, scope: !333)
!973 = !DILocation(line: 187, column: 11, scope: !961)
!974 = !DILocation(line: 187, column: 22, scope: !961)
!975 = !DILocation(line: 187, column: 21, scope: !961)
!976 = !DILocation(line: 187, column: 9, scope: !961)
!977 = !DILocation(line: 165, column: 11, scope: !333)
!978 = !DILocation(line: 188, column: 17, scope: !961)
!979 = !DILocation(line: 188, column: 26, scope: !961)
!980 = !DILocation(line: 188, column: 25, scope: !961)
!981 = !DILocation(line: 188, column: 16, scope: !961)
!982 = !DILocation(line: 189, column: 17, scope: !961)
!983 = !DILocation(line: 189, column: 26, scope: !961)
!984 = !DILocation(line: 189, column: 25, scope: !961)
!985 = !DILocation(line: 189, column: 5, scope: !961)
!986 = !DILocation(line: 189, column: 16, scope: !961)
!987 = !DILocation(line: 190, column: 17, scope: !961)
!988 = !DILocation(line: 190, column: 26, scope: !961)
!989 = !DILocation(line: 190, column: 25, scope: !961)
!990 = !DILocation(line: 190, column: 5, scope: !961)
!991 = !DILocation(line: 190, column: 16, scope: !961)
!992 = !DILocation(line: 191, column: 12, scope: !961)
!993 = !DILocation(line: 191, column: 11, scope: !961)
!994 = !DILocation(line: 195, column: 19, scope: !964)
!995 = !DILocation(line: 195, column: 34, scope: !964)
!996 = !{!997, !781, i64 0}
!997 = !{!"", !781, i64 0, !781, i64 4}
!998 = !DILocation(line: 192, column: 9, scope: !961)
!999 = !DILocation(line: 193, column: 21, scope: !964)
!1000 = !DILocation(line: 193, column: 64, scope: !964)
!1001 = !{!997, !781, i64 4}
!1002 = !DILocation(line: 193, column: 48, scope: !964)
!1003 = !DILocation(line: 193, column: 40, scope: !964)
!1004 = !DILocation(line: 197, column: 29, scope: !655, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 193, column: 15, scope: !964)
!1006 = !DILocation(line: 199, column: 12, scope: !655, inlinedAt: !1005)
!1007 = !DILocation(line: 164, column: 19, scope: !333)
!1008 = !DILocation(line: 193, column: 7, scope: !964)
!1009 = !DILocation(line: 197, column: 29, scope: !655, inlinedAt: !1010)
!1010 = distinct !DILocation(line: 195, column: 15, scope: !964)
!1011 = !DILocation(line: 199, column: 12, scope: !655, inlinedAt: !1010)
!1012 = !DILocation(line: 196, column: 15, scope: !961)
!1013 = !DILocation(line: 197, column: 24, scope: !961)
!1014 = !DILocation(line: 197, column: 14, scope: !961)
!1015 = !DILocation(line: 197, column: 12, scope: !961)
!1016 = !DILocation(line: 182, column: 31, scope: !953)
!1017 = !DILocation(line: 206, column: 58, scope: !333)
!1018 = !DILocation(line: 162, column: 11, scope: !333)
!1019 = !DILocation(line: 166, column: 11, scope: !333)
!1020 = !DILocation(line: 206, column: 3, scope: !333)
!1021 = !DILocation(line: 213, column: 7, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !333, file: !1, line: 213, column: 7)
!1023 = !DILocation(line: 213, column: 14, scope: !1022)
!1024 = !DILocation(line: 213, column: 11, scope: !1022)
!1025 = !DILocation(line: 213, column: 7, scope: !333)
!1026 = !DILocation(line: 214, column: 10, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !1, line: 214, column: 10)
!1028 = distinct !DILexicalBlock(scope: !1022, file: !1, line: 213, column: 22)
!1029 = !DILocation(line: 214, column: 10, scope: !1028)
!1030 = !DILocation(line: 215, column: 11, scope: !1027)
!1031 = !DILocation(line: 216, column: 8, scope: !1028)
!1032 = !DILocation(line: 217, column: 3, scope: !1028)
!1033 = !DILocation(line: 218, column: 12, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1022, file: !1, line: 218, column: 12)
!1035 = !DILocation(line: 218, column: 18, scope: !1034)
!1036 = !DILocation(line: 218, column: 12, scope: !1022)
!1037 = !DILocation(line: 219, column: 10, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !1, line: 219, column: 10)
!1039 = distinct !DILexicalBlock(scope: !1034, file: !1, line: 218, column: 24)
!1040 = !DILocation(line: 219, column: 10, scope: !1039)
!1041 = !DILocation(line: 222, column: 24, scope: !1038)
!1042 = !DILocation(line: 222, column: 34, scope: !1038)
!1043 = !DILocation(line: 222, column: 44, scope: !1038)
!1044 = !DILocation(line: 222, column: 27, scope: !1038)
!1045 = !DILocation(line: 222, column: 47, scope: !1038)
!1046 = !DILocation(line: 222, column: 67, scope: !1038)
!1047 = !DILocation(line: 222, column: 50, scope: !1038)
!1048 = !DILocation(line: 222, column: 70, scope: !1038)
!1049 = !DILocation(line: 220, column: 11, scope: !1038)
!1050 = !DILocation(line: 223, column: 8, scope: !1039)
!1051 = !DILocation(line: 224, column: 3, scope: !1039)
!1052 = !DILocation(line: 226, column: 3, scope: !333)
!1053 = !DILocation(line: 257, column: 20, scope: !478)
!1054 = !DILocation(line: 257, column: 28, scope: !478)
!1055 = !DILocation(line: 257, column: 40, scope: !478)
!1056 = !DILocation(line: 257, column: 54, scope: !478)
!1057 = !DILocation(line: 257, column: 66, scope: !478)
!1058 = !DILocation(line: 258, column: 15, scope: !478)
!1059 = !DILocation(line: 258, column: 32, scope: !478)
!1060 = !DILocation(line: 258, column: 42, scope: !478)
!1061 = !DILocation(line: 258, column: 51, scope: !478)
!1062 = !DILocation(line: 258, column: 62, scope: !478)
!1063 = !DILocation(line: 259, column: 15, scope: !478)
!1064 = !DILocation(line: 259, column: 25, scope: !478)
!1065 = !DILocation(line: 259, column: 38, scope: !478)
!1066 = !DILocation(line: 259, column: 53, scope: !478)
!1067 = !DILocation(line: 271, column: 11, scope: !478)
!1068 = !DILocation(line: 271, column: 18, scope: !478)
!1069 = !DILocation(line: 276, column: 27, scope: !478)
!1070 = !{!1071, !722, i64 0}
!1071 = !{!"", !722, i64 0, !720, i64 4, !719, i64 1032}
!1072 = !DILocation(line: 276, column: 29, scope: !478)
!1073 = !DILocation(line: 270, column: 16, scope: !478)
!1074 = !DILocation(line: 277, column: 7, scope: !478)
!1075 = !DILocation(line: 278, column: 13, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !1, line: 278, column: 9)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !1, line: 277, column: 15)
!1078 = distinct !DILexicalBlock(scope: !478, file: !1, line: 277, column: 7)
!1079 = !{!1080, !722, i64 332}
!1080 = !{!"", !722, i64 0, !722, i64 4, !722, i64 8, !722, i64 12, !722, i64 16, !722, i64 20, !722, i64 24, !722, i64 28, !722, i64 32, !722, i64 36, !722, i64 40, !722, i64 44, !722, i64 48, !722, i64 52, !781, i64 56, !781, i64 60, !781, i64 64, !722, i64 68, !722, i64 72, !722, i64 76, !722, i64 80, !781, i64 84, !722, i64 88, !722, i64 92, !722, i64 96, !722, i64 100, !722, i64 104, !722, i64 108, !722, i64 112, !722, i64 116, !781, i64 120, !720, i64 124, !720, i64 160, !722, i64 196, !781, i64 200, !781, i64 204, !722, i64 208, !781, i64 212, !781, i64 216, !722, i64 220, !781, i64 224, !781, i64 228, !781, i64 232, !722, i64 236, !781, i64 240, !781, i64 244, !722, i64 248, !781, i64 252, !781, i64 256, !781, i64 260, !781, i64 264, !781, i64 268, !722, i64 272, !722, i64 276, !722, i64 280, !781, i64 284, !781, i64 288, !781, i64 292, !722, i64 296, !781, i64 300, !781, i64 304, !722, i64 308, !722, i64 312, !722, i64 316, !722, i64 320, !722, i64 324, !781, i64 328, !722, i64 332, !781, i64 336, !781, i64 340, !722, i64 344, !781, i64 348, !722, i64 352, !722, i64 356, !722, i64 360, !722, i64 364, !781, i64 368, !781, i64 372, !781, i64 376, !781, i64 380, !1081, i64 384, !720, i64 448, !720, i64 520}
!1081 = !{!"", !722, i64 0, !722, i64 4, !722, i64 8, !722, i64 12, !719, i64 16, !719, i64 24, !719, i64 32, !719, i64 40, !719, i64 48, !719, i64 56}
!1082 = !DILocation(line: 278, column: 9, scope: !1076)
!1083 = !DILocation(line: 278, column: 9, scope: !1077)
!1084 = !DILocation(line: 279, column: 7, scope: !1076)
!1085 = !DILocation(line: 280, column: 5, scope: !1077)
!1086 = !DILocation(line: 282, column: 3, scope: !1077)
!1087 = !DILocation(line: 283, column: 13, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !1, line: 283, column: 3)
!1089 = distinct !DILexicalBlock(scope: !478, file: !1, line: 283, column: 3)
!1090 = !DILocation(line: 283, column: 3, scope: !1089)
!1091 = !DILocation(line: 284, column: 5, scope: !1088)
!1092 = !DILocation(line: 284, column: 13, scope: !1088)
!1093 = !DILocation(line: 286, column: 32, scope: !478)
!1094 = !DILocation(line: 268, column: 12, scope: !478)
!1095 = !DILocation(line: 269, column: 12, scope: !478)
!1096 = !DILocation(line: 270, column: 11, scope: !478)
!1097 = !DILocation(line: 288, column: 14, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !1, line: 288, column: 3)
!1099 = distinct !DILexicalBlock(scope: !478, file: !1, line: 288, column: 3)
!1100 = !DILocation(line: 288, column: 3, scope: !1099)
!1101 = !DILocation(line: 309, column: 11, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !478, file: !1, line: 309, column: 7)
!1103 = !DILocation(line: 287, column: 12, scope: !478)
!1104 = !{!1071, !719, i64 1032}
!1105 = !DILocation(line: 286, column: 39, scope: !478)
!1106 = !DILocation(line: 286, column: 14, scope: !478)
!1107 = !DILocation(line: 291, column: 51, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 288, column: 27)
!1109 = !DILocation(line: 292, column: 18, scope: !1108)
!1110 = !DILocation(line: 293, column: 11, scope: !1108)
!1111 = !DILocation(line: 289, column: 14, scope: !1108)
!1112 = !DILocation(line: 289, column: 25, scope: !1108)
!1113 = !DILocation(line: 270, column: 22, scope: !478)
!1114 = !DILocation(line: 290, column: 10, scope: !1108)
!1115 = !{!1116, !719, i64 24}
!1116 = !{!"", !722, i64 0, !722, i64 4, !722, i64 8, !719, i64 16, !719, i64 24, !720, i64 32}
!1117 = !{!1080, !781, i64 240}
!1118 = !DILocation(line: 292, column: 35, scope: !1108)
!1119 = !{!1080, !722, i64 248}
!1120 = !DILocation(line: 293, column: 15, scope: !1108)
!1121 = !DILocation(line: 291, column: 10, scope: !1108)
!1122 = !DILocation(line: 270, column: 13, scope: !478)
!1123 = !DILocation(line: 298, column: 12, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1108, file: !1, line: 298, column: 9)
!1125 = !DILocation(line: 298, column: 9, scope: !1108)
!1126 = !DILocation(line: 299, column: 11, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !1, line: 299, column: 11)
!1128 = distinct !DILexicalBlock(scope: !1124, file: !1, line: 298, column: 18)
!1129 = !DILocation(line: 299, column: 11, scope: !1128)
!1130 = !DILocation(line: 300, column: 35, scope: !1127)
!1131 = !DILocation(line: 229, column: 30, scope: !661, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 300, column: 2, scope: !1127)
!1133 = !DILocation(line: 229, column: 38, scope: !661, inlinedAt: !1132)
!1134 = !DILocation(line: 229, column: 46, scope: !661, inlinedAt: !1132)
!1135 = !DILocation(line: 229, column: 55, scope: !661, inlinedAt: !1132)
!1136 = !DILocation(line: 230, column: 20, scope: !661, inlinedAt: !1132)
!1137 = !DILocation(line: 230, column: 34, scope: !661, inlinedAt: !1132)
!1138 = !DILocation(line: 231, column: 15, scope: !661, inlinedAt: !1132)
!1139 = !DILocation(line: 237, column: 11, scope: !661, inlinedAt: !1132)
!1140 = !DILocation(line: 239, column: 6, scope: !1141, inlinedAt: !1132)
!1141 = distinct !DILexicalBlock(scope: !661, file: !1, line: 239, column: 6)
!1142 = !DILocation(line: 239, column: 6, scope: !661, inlinedAt: !1132)
!1143 = !DILocation(line: 240, column: 7, scope: !1141, inlinedAt: !1132)
!1144 = !DILocation(line: 243, column: 14, scope: !1145, inlinedAt: !1132)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !1, line: 243, column: 3)
!1146 = distinct !DILexicalBlock(scope: !661, file: !1, line: 243, column: 3)
!1147 = !DILocation(line: 243, column: 3, scope: !1146, inlinedAt: !1132)
!1148 = !DILocation(line: 300, column: 2, scope: !1127)
!1149 = !DILocation(line: 244, column: 8, scope: !1150, inlinedAt: !1132)
!1150 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 243, column: 31)
!1151 = !DILocation(line: 234, column: 11, scope: !661, inlinedAt: !1132)
!1152 = !DILocation(line: 245, column: 8, scope: !1150, inlinedAt: !1132)
!1153 = !DILocation(line: 234, column: 14, scope: !661, inlinedAt: !1132)
!1154 = !DILocation(line: 246, column: 14, scope: !1150, inlinedAt: !1132)
!1155 = !DILocation(line: 246, column: 20, scope: !1150, inlinedAt: !1132)
!1156 = !DILocation(line: 244, column: 40, scope: !679, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 246, column: 5, scope: !1150, inlinedAt: !1132)
!1158 = !DILocation(line: 244, column: 53, scope: !679, inlinedAt: !1157)
!1159 = !DILocation(line: 244, column: 60, scope: !679, inlinedAt: !1157)
!1160 = !DILocation(line: 248, column: 5, scope: !679, inlinedAt: !1157)
!1161 = !DILocation(line: 248, column: 11, scope: !679, inlinedAt: !1157)
!1162 = !DILocation(line: 248, column: 10, scope: !679, inlinedAt: !1157)
!1163 = !DILocation(line: 246, column: 8, scope: !679, inlinedAt: !1157)
!1164 = !DILocation(line: 249, column: 5, scope: !679, inlinedAt: !1157)
!1165 = !DILocation(line: 249, column: 11, scope: !679, inlinedAt: !1157)
!1166 = !DILocation(line: 249, column: 10, scope: !679, inlinedAt: !1157)
!1167 = !DILocation(line: 246, column: 10, scope: !679, inlinedAt: !1157)
!1168 = !DILocation(line: 250, column: 5, scope: !679, inlinedAt: !1157)
!1169 = !DILocation(line: 250, column: 11, scope: !679, inlinedAt: !1157)
!1170 = !DILocation(line: 250, column: 10, scope: !679, inlinedAt: !1157)
!1171 = !DILocation(line: 246, column: 12, scope: !679, inlinedAt: !1157)
!1172 = !DIExpression(DW_OP_bit_piece, 0, 32)
!1173 = !DIExpression(DW_OP_bit_piece, 32, 32)
!1174 = !DIExpression(DW_OP_bit_piece, 64, 32)
!1175 = !DILocation(line: 358, column: 30, scope: !690, inlinedAt: !1176)
!1176 = distinct !DILocation(line: 247, column: 7, scope: !1150, inlinedAt: !1132)
!1177 = !DILocation(line: 248, column: 14, scope: !1150, inlinedAt: !1132)
!1178 = !DILocation(line: 248, column: 21, scope: !1150, inlinedAt: !1132)
!1179 = !DILocation(line: 244, column: 40, scope: !679, inlinedAt: !1180)
!1180 = distinct !DILocation(line: 248, column: 5, scope: !1150, inlinedAt: !1132)
!1181 = !DILocation(line: 244, column: 53, scope: !679, inlinedAt: !1180)
!1182 = !DILocation(line: 244, column: 60, scope: !679, inlinedAt: !1180)
!1183 = !DILocation(line: 248, column: 5, scope: !679, inlinedAt: !1180)
!1184 = !DILocation(line: 248, column: 11, scope: !679, inlinedAt: !1180)
!1185 = !DILocation(line: 248, column: 10, scope: !679, inlinedAt: !1180)
!1186 = !DILocation(line: 246, column: 8, scope: !679, inlinedAt: !1180)
!1187 = !DILocation(line: 249, column: 5, scope: !679, inlinedAt: !1180)
!1188 = !DILocation(line: 249, column: 11, scope: !679, inlinedAt: !1180)
!1189 = !DILocation(line: 249, column: 10, scope: !679, inlinedAt: !1180)
!1190 = !DILocation(line: 246, column: 10, scope: !679, inlinedAt: !1180)
!1191 = !DILocation(line: 250, column: 5, scope: !679, inlinedAt: !1180)
!1192 = !DILocation(line: 250, column: 11, scope: !679, inlinedAt: !1180)
!1193 = !DILocation(line: 250, column: 10, scope: !679, inlinedAt: !1180)
!1194 = !DILocation(line: 246, column: 12, scope: !679, inlinedAt: !1180)
!1195 = !DILocation(line: 358, column: 30, scope: !690, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 249, column: 8, scope: !1150, inlinedAt: !1132)
!1197 = !DILocation(line: 250, column: 8, scope: !1150, inlinedAt: !1132)
!1198 = !DILocation(line: 360, column: 20, scope: !690, inlinedAt: !1196)
!1199 = !DILocation(line: 360, column: 32, scope: !690, inlinedAt: !1196)
!1200 = !DILocation(line: 360, column: 26, scope: !690, inlinedAt: !1196)
!1201 = !DILocation(line: 360, column: 44, scope: !690, inlinedAt: !1196)
!1202 = !DILocation(line: 360, column: 38, scope: !690, inlinedAt: !1196)
!1203 = !DILocation(line: 360, column: 10, scope: !690, inlinedAt: !1196)
!1204 = !DILocation(line: 360, column: 20, scope: !690, inlinedAt: !1176)
!1205 = !DILocation(line: 360, column: 32, scope: !690, inlinedAt: !1176)
!1206 = !DILocation(line: 360, column: 26, scope: !690, inlinedAt: !1176)
!1207 = !DILocation(line: 360, column: 44, scope: !690, inlinedAt: !1176)
!1208 = !DILocation(line: 360, column: 38, scope: !690, inlinedAt: !1176)
!1209 = !DILocation(line: 360, column: 10, scope: !690, inlinedAt: !1176)
!1210 = !DILocation(line: 252, column: 19, scope: !1211, inlinedAt: !1132)
!1211 = distinct !DILexicalBlock(scope: !1150, file: !1, line: 250, column: 8)
!1212 = !DILocation(line: 252, column: 26, scope: !1211, inlinedAt: !1132)
!1213 = !DILocation(line: 252, column: 25, scope: !1211, inlinedAt: !1132)
!1214 = !DILocation(line: 253, column: 19, scope: !1211, inlinedAt: !1132)
!1215 = !DILocation(line: 253, column: 26, scope: !1211, inlinedAt: !1132)
!1216 = !DILocation(line: 253, column: 25, scope: !1211, inlinedAt: !1132)
!1217 = !DILocation(line: 253, column: 38, scope: !1211, inlinedAt: !1132)
!1218 = !DILocation(line: 253, column: 40, scope: !1211, inlinedAt: !1132)
!1219 = !DILocation(line: 253, column: 46, scope: !1211, inlinedAt: !1132)
!1220 = !DILocation(line: 253, column: 43, scope: !1211, inlinedAt: !1132)
!1221 = !DILocation(line: 253, column: 59, scope: !1211, inlinedAt: !1132)
!1222 = !DILocation(line: 251, column: 9, scope: !1211, inlinedAt: !1132)
!1223 = !DILocation(line: 243, column: 21, scope: !1145, inlinedAt: !1132)
!1224 = !DILocation(line: 235, column: 11, scope: !661, inlinedAt: !1132)
!1225 = !DILocation(line: 243, column: 26, scope: !1145, inlinedAt: !1132)
!1226 = !DILocation(line: 233, column: 12, scope: !661, inlinedAt: !1132)
!1227 = !DILocation(line: 303, column: 17, scope: !1108)
!1228 = !DILocation(line: 303, column: 12, scope: !1108)
!1229 = !DILocation(line: 304, column: 12, scope: !1108)
!1230 = !DILocation(line: 306, column: 12, scope: !1108)
!1231 = !DILocation(line: 305, column: 16, scope: !1108)
!1232 = !DILocation(line: 305, column: 12, scope: !1108)
!1233 = !DILocation(line: 289, column: 26, scope: !1108)
!1234 = !DILocation(line: 309, column: 16, scope: !1102)
!1235 = !DILocation(line: 309, column: 7, scope: !478)
!1236 = !DILocation(line: 310, column: 22, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1102, file: !1, line: 309, column: 27)
!1238 = !{!1080, !781, i64 60}
!1239 = !DILocation(line: 197, column: 29, scope: !655, inlinedAt: !1240)
!1240 = distinct !DILocation(line: 310, column: 14, scope: !1237)
!1241 = !DILocation(line: 199, column: 12, scope: !655, inlinedAt: !1240)
!1242 = !DILocation(line: 310, column: 13, scope: !1237)
!1243 = !DILocation(line: 269, column: 16, scope: !478)
!1244 = !DILocation(line: 269, column: 21, scope: !478)
!1245 = !DILocation(line: 312, column: 5, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1237, file: !1, line: 312, column: 5)
!1247 = !DILocation(line: 313, column: 32, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 312, column: 28)
!1249 = distinct !DILexicalBlock(scope: !1246, file: !1, line: 312, column: 5)
!1250 = !DILocation(line: 314, column: 15, scope: !1248)
!1251 = !DILocation(line: 315, column: 9, scope: !1248)
!1252 = !DILocation(line: 313, column: 40, scope: !1248)
!1253 = !DILocation(line: 313, column: 14, scope: !1248)
!1254 = !DILocation(line: 270, column: 27, scope: !478)
!1255 = !DILocation(line: 314, column: 22, scope: !1248)
!1256 = !DILocation(line: 315, column: 3, scope: !1248)
!1257 = !DILocation(line: 315, column: 29, scope: !1248)
!1258 = !DILocation(line: 315, column: 58, scope: !1248)
!1259 = !DILocation(line: 315, column: 31, scope: !1248)
!1260 = !DILocation(line: 314, column: 27, scope: !1248)
!1261 = !DILocation(line: 314, column: 12, scope: !1248)
!1262 = !DILocation(line: 312, column: 15, scope: !1249)
!1263 = !DILocation(line: 317, column: 16, scope: !1237)
!1264 = !DILocation(line: 318, column: 3, scope: !1237)
!1265 = !DILocation(line: 322, column: 11, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !478, file: !1, line: 322, column: 7)
!1267 = !DILocation(line: 322, column: 7, scope: !1266)
!1268 = !DILocation(line: 322, column: 7, scope: !478)
!1269 = !DILocation(line: 323, column: 16, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !1, line: 323, column: 9)
!1271 = distinct !DILexicalBlock(scope: !1266, file: !1, line: 322, column: 22)
!1272 = !DILocation(line: 323, column: 14, scope: !1270)
!1273 = !DILocation(line: 324, column: 20, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1270, file: !1, line: 323, column: 23)
!1275 = !DILocation(line: 323, column: 9, scope: !1271)
!1276 = !DILocation(line: 324, column: 15, scope: !1274)
!1277 = !DILocation(line: 324, column: 13, scope: !1274)
!1278 = !DILocation(line: 325, column: 5, scope: !1274)
!1279 = !DILocation(line: 326, column: 13, scope: !1271)
!1280 = !DILocation(line: 326, column: 19, scope: !1271)
!1281 = !DILocation(line: 326, column: 11, scope: !1271)
!1282 = !DILocation(line: 327, column: 11, scope: !1271)
!1283 = !DILocation(line: 328, column: 3, scope: !1271)
!1284 = !DILocation(line: 329, column: 3, scope: !478)
!1285 = !{!1286, !1286, i64 0}
!1286 = !{!"double", !720, i64 0}
!1287 = !DILocation(line: 330, column: 3, scope: !478)
!1288 = !DILocation(line: 332, column: 3, scope: !478)
!1289 = !DILocation(line: 333, column: 1, scope: !478)

; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@.str = private unnamed_addr constant [94 x i8] c"$Header: /cactus/CactusBase/CartGrid3D/src/Symmetry.c,v 1.28 2001/11/05 14:59:33 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_CartGrid3D_Symmetry_c() #0 {
  ret i8* getelementptr inbounds ([94 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CartApplySym3Di(%struct.cGH* nocapture readonly %GH, i32* nocapture readonly %doSym, i32* nocapture readonly %cntstag, i32* nocapture readonly %lssh, i32* nocapture readonly %ghostz, i32* nocapture readonly %sym, double* nocapture %var) #1 {
  %1 = load i32* %doSym, align 4, !tbaa !2
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %.preheader11, label %.loopexit12

.preheader11:                                     ; preds = %0
  %3 = getelementptr inbounds i32* %lssh, i64 2
  %4 = load i32* %3, align 4, !tbaa !2
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %.preheader10.lr.ph, label %.loopexit12

.preheader10.lr.ph:                               ; preds = %.preheader11
  %6 = getelementptr inbounds i32* %lssh, i64 1
  %7 = load i32* %6, align 4, !tbaa !2
  %8 = icmp sgt i32 %7, 0
  %9 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.lr.ph, %._crit_edge30
  %k.031 = phi i32 [ 0, %.preheader10.lr.ph ], [ %39, %._crit_edge30 ]
  br i1 %8, label %.preheader9.lr.ph, label %._crit_edge30

.preheader9.lr.ph:                                ; preds = %.preheader10
  %10 = load i32* %ghostz, align 4, !tbaa !2
  %11 = icmp sgt i32 %10, 0
  br label %.preheader9

.preheader9:                                      ; preds = %.preheader9.lr.ph, %._crit_edge28
  %j.029 = phi i32 [ 0, %.preheader9.lr.ph ], [ %37, %._crit_edge28 ]
  br i1 %11, label %.lr.ph27, label %._crit_edge28

.lr.ph27:                                         ; preds = %.preheader9
  %12 = load i32* %sym, align 4, !tbaa !2
  %13 = sitofp i32 %12 to double
  %14 = load i32* %cntstag, align 4, !tbaa !2
  %15 = load i32** %9, align 8, !tbaa !6
  %16 = load i32* %15, align 4, !tbaa !2
  %17 = getelementptr inbounds i32* %15, i64 1
  %18 = load i32* %17, align 4, !tbaa !2
  %19 = mul nsw i32 %18, %k.031
  %20 = add nsw i32 %19, %j.029
  %21 = mul nsw i32 %20, %16
  %22 = sext i32 %21 to i64
  %23 = sext i32 %10 to i64
  br label %24

; <label>:24                                      ; preds = %.lr.ph27, %24
  %indvars.iv41 = phi i64 [ 0, %.lr.ph27 ], [ %indvars.iv.next42, %24 ]
  %25 = shl nsw i32 %10, 1
  %26 = trunc i64 %indvars.iv41 to i32
  %27 = sub i32 %25, %26
  %28 = sub i32 %27, %14
  %29 = add i32 %28, %21
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double* %var, i64 %30
  %32 = load double* %31, align 8, !tbaa !10
  %33 = fmul double %13, %32
  %34 = add nsw i64 %22, %indvars.iv41
  %35 = getelementptr inbounds double* %var, i64 %34
  store double %33, double* %35, align 8, !tbaa !10
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %36 = icmp slt i64 %indvars.iv.next42, %23
  br i1 %36, label %24, label %._crit_edge28

._crit_edge28:                                    ; preds = %24, %.preheader9
  %37 = add nuw nsw i32 %j.029, 1
  %38 = icmp slt i32 %37, %7
  br i1 %38, label %.preheader9, label %._crit_edge30

._crit_edge30:                                    ; preds = %._crit_edge28, %.preheader10
  %39 = add nuw nsw i32 %k.031, 1
  %40 = icmp slt i32 %39, %4
  br i1 %40, label %.preheader10, label %.loopexit12

.loopexit12:                                      ; preds = %._crit_edge30, %.preheader11, %0
  %41 = getelementptr inbounds i32* %doSym, i64 2
  %42 = load i32* %41, align 4, !tbaa !2
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %.preheader7, label %.loopexit8

.preheader7:                                      ; preds = %.loopexit12
  %44 = load i32* %lssh, align 4, !tbaa !2
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %.preheader6.lr.ph, label %.loopexit8

.preheader6.lr.ph:                                ; preds = %.preheader7
  %46 = getelementptr inbounds i32* %lssh, i64 2
  %47 = load i32* %46, align 4, !tbaa !2
  %48 = icmp sgt i32 %47, 0
  %49 = getelementptr inbounds i32* %ghostz, i64 1
  %50 = getelementptr inbounds i32* %sym, i64 2
  %51 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3
  %52 = getelementptr inbounds i32* %cntstag, i64 1
  %53 = sext i32 %44 to i64
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.lr.ph, %._crit_edge23
  %indvars.iv39 = phi i64 [ 0, %.preheader6.lr.ph ], [ %indvars.iv.next40, %._crit_edge23 ]
  br i1 %48, label %.preheader5.lr.ph, label %._crit_edge23

.preheader5.lr.ph:                                ; preds = %.preheader6
  %54 = load i32* %49, align 4, !tbaa !2
  %55 = icmp sgt i32 %54, 0
  br label %.preheader5

.preheader5:                                      ; preds = %.preheader5.lr.ph, %._crit_edge21
  %k.122 = phi i32 [ 0, %.preheader5.lr.ph ], [ %85, %._crit_edge21 ]
  br i1 %55, label %.lr.ph20, label %._crit_edge21

.lr.ph20:                                         ; preds = %.preheader5
  %56 = load i32* %50, align 4, !tbaa !2
  %57 = sitofp i32 %56 to double
  %58 = load i32** %51, align 8, !tbaa !6
  %59 = load i32* %58, align 4, !tbaa !2
  %60 = load i32* %52, align 4, !tbaa !2
  %61 = getelementptr inbounds i32* %58, i64 1
  %62 = load i32* %61, align 4, !tbaa !2
  %63 = mul nsw i32 %62, %k.122
  %64 = sext i32 %63 to i64
  %65 = sext i32 %59 to i64
  %66 = sext i32 %54 to i64
  br label %67

; <label>:67                                      ; preds = %.lr.ph20, %67
  %indvars.iv37 = phi i64 [ 0, %.lr.ph20 ], [ %indvars.iv.next38, %67 ]
  %68 = shl nsw i32 %54, 1
  %69 = trunc i64 %indvars.iv37 to i32
  %70 = sub i32 %68, %69
  %71 = sub i32 %70, %60
  %72 = add i32 %71, %63
  %73 = mul nsw i32 %72, %59
  %74 = trunc i64 %indvars.iv39 to i32
  %75 = add nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double* %var, i64 %76
  %78 = load double* %77, align 8, !tbaa !10
  %79 = fmul double %57, %78
  %80 = add nsw i64 %64, %indvars.iv37
  %81 = mul nsw i64 %80, %65
  %82 = add nsw i64 %81, %indvars.iv39
  %83 = getelementptr inbounds double* %var, i64 %82
  store double %79, double* %83, align 8, !tbaa !10
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %84 = icmp slt i64 %indvars.iv.next38, %66
  br i1 %84, label %67, label %._crit_edge21

._crit_edge21:                                    ; preds = %67, %.preheader5
  %85 = add nuw nsw i32 %k.122, 1
  %86 = icmp slt i32 %85, %47
  br i1 %86, label %.preheader5, label %._crit_edge23

._crit_edge23:                                    ; preds = %._crit_edge21, %.preheader6
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %87 = icmp slt i64 %indvars.iv.next40, %53
  br i1 %87, label %.preheader6, label %.loopexit8

.loopexit8:                                       ; preds = %._crit_edge23, %.preheader7, %.loopexit12
  %88 = getelementptr inbounds i32* %doSym, i64 4
  %89 = load i32* %88, align 4, !tbaa !2
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %.preheader4, label %.loopexit

.preheader4:                                      ; preds = %.loopexit8
  %91 = load i32* %lssh, align 4, !tbaa !2
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %.preheader3.lr.ph, label %.loopexit

.preheader3.lr.ph:                                ; preds = %.preheader4
  %93 = getelementptr inbounds i32* %lssh, i64 1
  %94 = load i32* %93, align 4, !tbaa !2
  %95 = icmp sgt i32 %94, 0
  %96 = getelementptr inbounds i32* %ghostz, i64 2
  %97 = getelementptr inbounds i32* %sym, i64 4
  %98 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3
  %99 = getelementptr inbounds i32* %cntstag, i64 2
  %100 = sext i32 %91 to i64
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.lr.ph, %._crit_edge16
  %indvars.iv35 = phi i64 [ 0, %.preheader3.lr.ph ], [ %indvars.iv.next36, %._crit_edge16 ]
  br i1 %95, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %.preheader3
  %101 = load i32* %96, align 4, !tbaa !2
  %102 = icmp sgt i32 %101, 0
  %103 = sext i32 %94 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %indvars.iv33 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next34, %._crit_edge ]
  br i1 %102, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %104 = load i32* %97, align 4, !tbaa !2
  %105 = sitofp i32 %104 to double
  %106 = load i32** %98, align 8, !tbaa !6
  %107 = load i32* %106, align 4, !tbaa !2
  %108 = getelementptr inbounds i32* %106, i64 1
  %109 = load i32* %108, align 4, !tbaa !2
  %110 = load i32* %99, align 4, !tbaa !2
  %111 = sext i32 %109 to i64
  %112 = sext i32 %107 to i64
  %113 = sext i32 %101 to i64
  br label %114

; <label>:114                                     ; preds = %.lr.ph, %114
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %114 ]
  %115 = shl nsw i32 %101, 1
  %116 = trunc i64 %indvars.iv to i32
  %117 = sub i32 %115, %116
  %118 = sub i32 %117, %110
  %119 = mul nsw i32 %118, %109
  %120 = trunc i64 %indvars.iv33 to i32
  %121 = add nsw i32 %119, %120
  %122 = mul nsw i32 %121, %107
  %123 = trunc i64 %indvars.iv35 to i32
  %124 = add nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds double* %var, i64 %125
  %127 = load double* %126, align 8, !tbaa !10
  %128 = fmul double %105, %127
  %129 = mul nsw i64 %111, %indvars.iv
  %130 = add nsw i64 %129, %indvars.iv33
  %131 = mul nsw i64 %130, %112
  %132 = add nsw i64 %131, %indvars.iv35
  %133 = getelementptr inbounds double* %var, i64 %132
  store double %128, double* %133, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %134 = icmp slt i64 %indvars.iv.next, %113
  br i1 %134, label %114, label %._crit_edge

._crit_edge:                                      ; preds = %114, %.preheader
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %135 = icmp slt i64 %indvars.iv.next34, %103
  br i1 %135, label %.preheader, label %._crit_edge16

._crit_edge16:                                    ; preds = %._crit_edge, %.preheader3
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %136 = icmp slt i64 %indvars.iv.next36, %100
  br i1 %136, label %.preheader3, label %.loopexit

.loopexit:                                        ; preds = %._crit_edge16, %.preheader4, %.loopexit8
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CartApplySym2Di(%struct.cGH* nocapture readonly %GH, i32* nocapture readonly %doSym, i32* nocapture readonly %cntstag, i32* nocapture readonly %lssh, i32* nocapture readonly %ghostz, i32* nocapture readonly %sym, double* nocapture %var) #1 {
  %1 = load i32* %doSym, align 4, !tbaa !2
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %.preheader4, label %.loopexit5

.preheader4:                                      ; preds = %0
  %3 = getelementptr inbounds i32* %lssh, i64 1
  %4 = load i32* %3, align 4, !tbaa !2
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %.preheader3.lr.ph, label %.loopexit5

.preheader3.lr.ph:                                ; preds = %.preheader4
  %6 = load i32* %ghostz, align 4, !tbaa !2
  %7 = icmp sgt i32 %6, 0
  %8 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.lr.ph, %._crit_edge11
  %j.012 = phi i32 [ 0, %.preheader3.lr.ph ], [ %30, %._crit_edge11 ]
  br i1 %7, label %.lr.ph10, label %._crit_edge11

.lr.ph10:                                         ; preds = %.preheader3
  %9 = load i32* %sym, align 4, !tbaa !2
  %10 = sitofp i32 %9 to double
  %11 = load i32* %cntstag, align 4, !tbaa !2
  %12 = load i32** %8, align 8, !tbaa !6
  %13 = load i32* %12, align 4, !tbaa !2
  %14 = mul nsw i32 %13, %j.012
  %15 = sext i32 %14 to i64
  %16 = sext i32 %6 to i64
  br label %17

; <label>:17                                      ; preds = %.lr.ph10, %17
  %indvars.iv15 = phi i64 [ 0, %.lr.ph10 ], [ %indvars.iv.next16, %17 ]
  %18 = shl nsw i32 %6, 1
  %19 = trunc i64 %indvars.iv15 to i32
  %20 = sub i32 %18, %19
  %21 = sub i32 %20, %11
  %22 = add i32 %21, %14
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double* %var, i64 %23
  %25 = load double* %24, align 8, !tbaa !10
  %26 = fmul double %10, %25
  %27 = add nsw i64 %15, %indvars.iv15
  %28 = getelementptr inbounds double* %var, i64 %27
  store double %26, double* %28, align 8, !tbaa !10
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %29 = icmp slt i64 %indvars.iv.next16, %16
  br i1 %29, label %17, label %._crit_edge11

._crit_edge11:                                    ; preds = %17, %.preheader3
  %30 = add nuw nsw i32 %j.012, 1
  %31 = icmp slt i32 %30, %4
  br i1 %31, label %.preheader3, label %.loopexit5

.loopexit5:                                       ; preds = %._crit_edge11, %.preheader4, %0
  %32 = getelementptr inbounds i32* %doSym, i64 2
  %33 = load i32* %32, align 4, !tbaa !2
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %.preheader2, label %.loopexit

.preheader2:                                      ; preds = %.loopexit5
  %35 = load i32* %lssh, align 4, !tbaa !2
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader2
  %37 = getelementptr inbounds i32* %ghostz, i64 1
  %38 = load i32* %37, align 4, !tbaa !2
  %39 = icmp sgt i32 %38, 0
  %40 = getelementptr inbounds i32* %sym, i64 2
  %41 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3
  %42 = getelementptr inbounds i32* %cntstag, i64 1
  %43 = sext i32 %35 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %indvars.iv13 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next14, %._crit_edge ]
  br i1 %39, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %44 = load i32* %40, align 4, !tbaa !2
  %45 = sitofp i32 %44 to double
  %46 = load i32** %41, align 8, !tbaa !6
  %47 = load i32* %46, align 4, !tbaa !2
  %48 = load i32* %42, align 4, !tbaa !2
  %49 = sext i32 %47 to i64
  %50 = sext i32 %38 to i64
  br label %51

; <label>:51                                      ; preds = %.lr.ph, %51
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %51 ]
  %52 = shl nsw i32 %38, 1
  %53 = trunc i64 %indvars.iv to i32
  %54 = sub i32 %52, %53
  %55 = sub i32 %54, %48
  %56 = mul nsw i32 %55, %47
  %57 = trunc i64 %indvars.iv13 to i32
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double* %var, i64 %59
  %61 = load double* %60, align 8, !tbaa !10
  %62 = fmul double %45, %61
  %63 = mul nsw i64 %49, %indvars.iv
  %64 = add nsw i64 %63, %indvars.iv13
  %65 = getelementptr inbounds double* %var, i64 %64
  store double %62, double* %65, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %66 = icmp slt i64 %indvars.iv.next, %50
  br i1 %66, label %51, label %._crit_edge

._crit_edge:                                      ; preds = %51, %.preheader
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %67 = icmp slt i64 %indvars.iv.next14, %43
  br i1 %67, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.preheader2, %.loopexit5
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CartApplySym1Di(%struct.cGH* nocapture readnone %GH, i32* nocapture readonly %doSym, i32* nocapture readonly %cntstag, i32* nocapture readnone %lssh, i32* nocapture readonly %ghostz, i32* nocapture readonly %sym, double* nocapture %var) #1 {
  %1 = load i32* %doSym, align 4, !tbaa !2
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %0
  %3 = load i32* %ghostz, align 4, !tbaa !2
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %5 = load i32* %sym, align 4, !tbaa !2
  %6 = sitofp i32 %5 to double
  %7 = load i32* %cntstag, align 4, !tbaa !2
  %8 = sext i32 %3 to i64
  br label %9

; <label>:9                                       ; preds = %.lr.ph, %9
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %9 ]
  %10 = shl nsw i32 %3, 1
  %11 = trunc i64 %indvars.iv to i32
  %12 = sub i32 %10, %11
  %13 = sub i32 %12, %7
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds double* %var, i64 %14
  %16 = load double* %15, align 8, !tbaa !10
  %17 = fmul double %6, %16
  %18 = getelementptr inbounds double* %var, i64 %indvars.iv
  store double %17, double* %18, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %19 = icmp slt i64 %indvars.iv.next, %8
  br i1 %19, label %9, label %.loopexit

.loopexit:                                        ; preds = %9, %.preheader, %0
  ret i32 0
}

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !8, i64 16}
!7 = !{!"", !3, i64 0, !3, i64 4, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !9, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !3, i64 104, !8, i64 112, !9, i64 120, !8, i64 128, !8, i64 136, !8, i64 144}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!9, !9, i64 0}
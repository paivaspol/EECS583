; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/clincs.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2
  %2 = load i32* %1, align 4, !tbaa !2
  %3 = add nsw i32 %2, -1
  store i32 %3, i32* %1, align 4, !tbaa !2
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %._crit_edge, label %5

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255
  br label %10

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6
  %7 = load i32* %6, align 4, !tbaa !11
  %8 = icmp sle i32 %2, %7
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10
  %or.cond = or i1 %9, %8
  br i1 %or.cond, label %15, label %10

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ]
  %11 = trunc i32 %_c to i8
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0
  %13 = load i8** %12, align 8, !tbaa !12
  %14 = getelementptr inbounds i8* %13, i64 1
  store i8* %14, i8** %12, align 8, !tbaa !12
  store i8 %11, i8* %13, align 1, !tbaa !13
  br label %17

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #5
  br label %17

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #2 {
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

; Function Attrs: nounwind optsize ssp uwtable
define void @clincsp([3 x float]* nocapture readonly %x, [3 x float]* nocapture readonly %f, [3 x float]* nocapture %fp, i32 %ncons, i32* nocapture readonly %bla1, i32* nocapture readonly %bla2, i32* nocapture readonly %blnr, i32* nocapture readonly %blbnb, float* nocapture readonly %blc, float* nocapture readonly %blcc, float* nocapture %blm, i32 %nrec, float* nocapture readonly %invmass, [3 x float]* nocapture %r, float* nocapture %rhs1, float* nocapture %rhs2, float* nocapture %sol) #3 {
  %1 = icmp sgt i32 %ncons, 0
  br i1 %1, label %.lr.ph28, label %.preheader3

.lr.ph28:                                         ; preds = %0
  %2 = add i32 %ncons, -1
  br label %4

.preheader4:                                      ; preds = %4
  br i1 %1, label %.lr.ph25, label %.preheader3

.lr.ph25:                                         ; preds = %.preheader4
  %3 = add i32 %ncons, -1
  %.pre = load i32* %blnr, align 4, !tbaa !14
  br label %44

; <label>:4                                       ; preds = %4, %.lr.ph28
  %indvars.iv42 = phi i64 [ 0, %.lr.ph28 ], [ %indvars.iv.next43, %4 ]
  %5 = getelementptr inbounds i32* %bla1, i64 %indvars.iv42
  %6 = load i32* %5, align 4, !tbaa !14
  %7 = getelementptr inbounds i32* %bla2, i64 %indvars.iv42
  %8 = load i32* %7, align 4, !tbaa !14
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds [3 x float]* %x, i64 %9, i64 0
  %11 = load float* %10, align 4, !tbaa !15
  %12 = sext i32 %8 to i64
  %13 = getelementptr inbounds [3 x float]* %x, i64 %12, i64 0
  %14 = load float* %13, align 4, !tbaa !15
  %15 = fsub float %11, %14
  %16 = getelementptr inbounds [3 x float]* %x, i64 %9, i64 1
  %17 = load float* %16, align 4, !tbaa !15
  %18 = getelementptr inbounds [3 x float]* %x, i64 %12, i64 1
  %19 = load float* %18, align 4, !tbaa !15
  %20 = fsub float %17, %19
  %21 = getelementptr inbounds [3 x float]* %x, i64 %9, i64 2
  %22 = load float* %21, align 4, !tbaa !15
  %23 = getelementptr inbounds [3 x float]* %x, i64 %12, i64 2
  %24 = load float* %23, align 4, !tbaa !15
  %25 = fsub float %22, %24
  %26 = fmul float %15, %15
  %27 = fmul float %20, %20
  %28 = fadd float %26, %27
  %29 = fmul float %25, %25
  %30 = fadd float %28, %29
  %31 = fpext float %30 to double
  %32 = tail call double @sqrt(double %31) #6
  %33 = fdiv double 1.000000e+00, %32
  %34 = fptrunc double %33 to float
  %35 = fmul float %15, %34
  %36 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv42, i64 0
  store float %35, float* %36, align 4, !tbaa !15
  %37 = fmul float %20, %34
  %38 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv42, i64 1
  store float %37, float* %38, align 4, !tbaa !15
  %39 = fmul float %25, %34
  %40 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv42, i64 2
  store float %39, float* %40, align 4, !tbaa !15
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %lftr.wideiv44 = trunc i64 %indvars.iv42 to i32
  %exitcond45 = icmp eq i32 %lftr.wideiv44, %2
  br i1 %exitcond45, label %.preheader4, label %4

.preheader3:                                      ; preds = %._crit_edge22, %0, %.preheader4
  %41 = icmp sgt i32 %nrec, 0
  br i1 %41, label %.preheader2.lr.ph, label %.preheader

.preheader2.lr.ph:                                ; preds = %.preheader3
  %42 = add i32 %ncons, -1
  %43 = add i32 %nrec, -1
  br label %.preheader2

; <label>:44                                      ; preds = %._crit_edge22, %.lr.ph25
  %45 = phi i32 [ %.pre, %.lr.ph25 ], [ %57, %._crit_edge22 ]
  %indvars.iv38 = phi i64 [ 0, %.lr.ph25 ], [ %indvars.iv.next39, %._crit_edge22 ]
  %46 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv38, i64 0
  %47 = load float* %46, align 4, !tbaa !15
  %48 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv38, i64 1
  %49 = load float* %48, align 4, !tbaa !15
  %50 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv38, i64 2
  %51 = load float* %50, align 4, !tbaa !15
  %52 = getelementptr inbounds i32* %bla1, i64 %indvars.iv38
  %53 = load i32* %52, align 4, !tbaa !14
  %54 = getelementptr inbounds i32* %bla2, i64 %indvars.iv38
  %55 = load i32* %54, align 4, !tbaa !14
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %56 = getelementptr inbounds i32* %blnr, i64 %indvars.iv.next39
  %57 = load i32* %56, align 4, !tbaa !14
  %58 = icmp slt i32 %45, %57
  br i1 %58, label %.lr.ph21, label %._crit_edge22

.lr.ph21:                                         ; preds = %44
  %59 = sext i32 %45 to i64
  %60 = sext i32 %57 to i64
  br label %61

; <label>:61                                      ; preds = %.lr.ph21, %61
  %indvars.iv36 = phi i64 [ %59, %.lr.ph21 ], [ %indvars.iv.next37, %61 ]
  %62 = getelementptr inbounds i32* %blbnb, i64 %indvars.iv36
  %63 = load i32* %62, align 4, !tbaa !14
  %64 = getelementptr inbounds float* %blcc, i64 %indvars.iv36
  %65 = load float* %64, align 4, !tbaa !15
  %66 = sext i32 %63 to i64
  %67 = getelementptr inbounds [3 x float]* %r, i64 %66, i64 0
  %68 = load float* %67, align 4, !tbaa !15
  %69 = fmul float %47, %68
  %70 = getelementptr inbounds [3 x float]* %r, i64 %66, i64 1
  %71 = load float* %70, align 4, !tbaa !15
  %72 = fmul float %49, %71
  %73 = fadd float %69, %72
  %74 = getelementptr inbounds [3 x float]* %r, i64 %66, i64 2
  %75 = load float* %74, align 4, !tbaa !15
  %76 = fmul float %51, %75
  %77 = fadd float %73, %76
  %78 = fmul float %65, %77
  %79 = getelementptr inbounds float* %blm, i64 %indvars.iv36
  store float %78, float* %79, align 4, !tbaa !15
  %indvars.iv.next37 = add nsw i64 %indvars.iv36, 1
  %80 = icmp slt i64 %indvars.iv.next37, %60
  br i1 %80, label %61, label %._crit_edge22

._crit_edge22:                                    ; preds = %61, %44
  %81 = getelementptr inbounds float* %blc, i64 %indvars.iv38
  %82 = load float* %81, align 4, !tbaa !15
  %83 = sext i32 %53 to i64
  %84 = getelementptr inbounds [3 x float]* %f, i64 %83, i64 0
  %85 = load float* %84, align 4, !tbaa !15
  %86 = sext i32 %55 to i64
  %87 = getelementptr inbounds [3 x float]* %f, i64 %86, i64 0
  %88 = load float* %87, align 4, !tbaa !15
  %89 = fsub float %85, %88
  %90 = fmul float %47, %89
  %91 = getelementptr inbounds [3 x float]* %f, i64 %83, i64 1
  %92 = load float* %91, align 4, !tbaa !15
  %93 = getelementptr inbounds [3 x float]* %f, i64 %86, i64 1
  %94 = load float* %93, align 4, !tbaa !15
  %95 = fsub float %92, %94
  %96 = fmul float %49, %95
  %97 = fadd float %90, %96
  %98 = getelementptr inbounds [3 x float]* %f, i64 %83, i64 2
  %99 = load float* %98, align 4, !tbaa !15
  %100 = getelementptr inbounds [3 x float]* %f, i64 %86, i64 2
  %101 = load float* %100, align 4, !tbaa !15
  %102 = fsub float %99, %101
  %103 = fmul float %51, %102
  %104 = fadd float %97, %103
  %105 = fmul float %82, %104
  %106 = getelementptr inbounds float* %rhs1, i64 %indvars.iv38
  store float %105, float* %106, align 4, !tbaa !15
  %107 = getelementptr inbounds float* %sol, i64 %indvars.iv38
  store float %105, float* %107, align 4, !tbaa !15
  %lftr.wideiv40 = trunc i64 %indvars.iv38 to i32
  %exitcond41 = icmp eq i32 %lftr.wideiv40, %3
  br i1 %exitcond41, label %.preheader3, label %44

.preheader2:                                      ; preds = %._crit_edge15, %.preheader2.lr.ph
  %.018 = phi float* [ %rhs1, %.preheader2.lr.ph ], [ %.0117, %._crit_edge15 ]
  %.0117 = phi float* [ %rhs2, %.preheader2.lr.ph ], [ %.018, %._crit_edge15 ]
  %rec.016 = phi i32 [ 0, %.preheader2.lr.ph ], [ %131, %._crit_edge15 ]
  br i1 %1, label %.lr.ph14, label %._crit_edge15

.lr.ph14:                                         ; preds = %.preheader2
  %.pre46 = load i32* %blnr, align 4, !tbaa !14
  br label %109

.preheader:                                       ; preds = %._crit_edge15, %.preheader3
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %108 = add i32 %ncons, -1
  br label %132

; <label>:109                                     ; preds = %._crit_edge11, %.lr.ph14
  %110 = phi i32 [ %.pre46, %.lr.ph14 ], [ %112, %._crit_edge11 ]
  %indvars.iv31 = phi i64 [ 0, %.lr.ph14 ], [ %indvars.iv.next32, %._crit_edge11 ]
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %111 = getelementptr inbounds i32* %blnr, i64 %indvars.iv.next32
  %112 = load i32* %111, align 4, !tbaa !14
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %.lr.ph10, label %._crit_edge11

.lr.ph10:                                         ; preds = %109
  %114 = sext i32 %110 to i64
  %115 = sext i32 %112 to i64
  br label %116

; <label>:116                                     ; preds = %.lr.ph10, %116
  %indvars.iv29 = phi i64 [ %114, %.lr.ph10 ], [ %indvars.iv.next30, %116 ]
  %mvb.07 = phi float [ 0.000000e+00, %.lr.ph10 ], [ %125, %116 ]
  %117 = getelementptr inbounds i32* %blbnb, i64 %indvars.iv29
  %118 = load i32* %117, align 4, !tbaa !14
  %119 = getelementptr inbounds float* %blm, i64 %indvars.iv29
  %120 = load float* %119, align 4, !tbaa !15
  %121 = sext i32 %118 to i64
  %122 = getelementptr inbounds float* %.018, i64 %121
  %123 = load float* %122, align 4, !tbaa !15
  %124 = fmul float %120, %123
  %125 = fadd float %mvb.07, %124
  %indvars.iv.next30 = add nsw i64 %indvars.iv29, 1
  %126 = icmp slt i64 %indvars.iv.next30, %115
  br i1 %126, label %116, label %._crit_edge11

._crit_edge11:                                    ; preds = %116, %109
  %mvb.0.lcssa = phi float [ 0.000000e+00, %109 ], [ %125, %116 ]
  %127 = getelementptr inbounds float* %.0117, i64 %indvars.iv31
  store float %mvb.0.lcssa, float* %127, align 4, !tbaa !15
  %128 = getelementptr inbounds float* %sol, i64 %indvars.iv31
  %129 = load float* %128, align 4, !tbaa !15
  %130 = fadd float %mvb.0.lcssa, %129
  store float %130, float* %128, align 4, !tbaa !15
  %lftr.wideiv33 = trunc i64 %indvars.iv31 to i32
  %exitcond34 = icmp eq i32 %lftr.wideiv33, %42
  br i1 %exitcond34, label %._crit_edge15, label %109

._crit_edge15:                                    ; preds = %._crit_edge11, %.preheader2
  %131 = add nuw nsw i32 %rec.016, 1
  %exitcond35 = icmp eq i32 %rec.016, %43
  br i1 %exitcond35, label %.preheader, label %.preheader2

; <label>:132                                     ; preds = %132, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %132 ]
  %133 = getelementptr inbounds i32* %bla1, i64 %indvars.iv
  %134 = load i32* %133, align 4, !tbaa !14
  %135 = getelementptr inbounds i32* %bla2, i64 %indvars.iv
  %136 = load i32* %135, align 4, !tbaa !14
  %137 = getelementptr inbounds float* %blc, i64 %indvars.iv
  %138 = load float* %137, align 4, !tbaa !15
  %139 = getelementptr inbounds float* %sol, i64 %indvars.iv
  %140 = load float* %139, align 4, !tbaa !15
  %141 = fmul float %138, %140
  %142 = sext i32 %134 to i64
  %143 = getelementptr inbounds float* %invmass, i64 %142
  %144 = load float* %143, align 4, !tbaa !15
  %145 = sext i32 %136 to i64
  %146 = getelementptr inbounds float* %invmass, i64 %145
  %147 = load float* %146, align 4, !tbaa !15
  %148 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv, i64 0
  %149 = load float* %148, align 4, !tbaa !15
  %150 = fmul float %141, %149
  %151 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv, i64 1
  %152 = load float* %151, align 4, !tbaa !15
  %153 = fmul float %141, %152
  %154 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv, i64 2
  %155 = load float* %154, align 4, !tbaa !15
  %156 = fmul float %141, %155
  %157 = getelementptr inbounds [3 x float]* %fp, i64 %142, i64 0
  %158 = load float* %157, align 4, !tbaa !15
  %159 = fmul float %144, %150
  %160 = fsub float %158, %159
  %161 = getelementptr inbounds [3 x float]* %fp, i64 %142, i64 1
  %162 = load float* %161, align 4, !tbaa !15
  %163 = fmul float %144, %153
  %164 = fsub float %162, %163
  %165 = getelementptr inbounds [3 x float]* %fp, i64 %142, i64 2
  %166 = load float* %165, align 4, !tbaa !15
  %167 = fmul float %144, %156
  %168 = fsub float %166, %167
  %169 = getelementptr inbounds [3 x float]* %fp, i64 %145, i64 0
  %170 = load float* %169, align 4, !tbaa !15
  %171 = fmul float %147, %150
  %172 = fadd float %171, %170
  %173 = getelementptr inbounds [3 x float]* %fp, i64 %145, i64 1
  %174 = load float* %173, align 4, !tbaa !15
  %175 = fmul float %147, %153
  %176 = fadd float %175, %174
  %177 = getelementptr inbounds [3 x float]* %fp, i64 %145, i64 2
  %178 = load float* %177, align 4, !tbaa !15
  %179 = fmul float %147, %156
  %180 = fadd float %179, %178
  store float %160, float* %157, align 4, !tbaa !15
  store float %164, float* %161, align 4, !tbaa !15
  store float %168, float* %165, align 4, !tbaa !15
  store float %172, float* %169, align 4, !tbaa !15
  store float %176, float* %173, align 4, !tbaa !15
  store float %180, float* %177, align 4, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %108
  br i1 %exitcond, label %._crit_edge, label %132

._crit_edge:                                      ; preds = %132, %.preheader
  ret void
}

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @clincs([3 x float]* nocapture readonly %x, [3 x float]* %xp, i32 %ncons, i32* nocapture readonly %bla1, i32* nocapture readonly %bla2, i32* nocapture readonly %blnr, i32* nocapture readonly %blbnb, float* nocapture readonly %bllen, float* nocapture readonly %blc, float* nocapture readonly %blcc, float* nocapture %blm, i32 %nit, i32 %nrec, float* nocapture readonly %invmass, [3 x float]* nocapture %r, float* nocapture %rhs1, float* nocapture %rhs2, float* nocapture %sol, float %wangle, i32* nocapture %warn, float* nocapture %lambda) #3 {
  store i32 0, i32* %warn, align 4, !tbaa !14
  %1 = icmp sgt i32 %ncons, 0
  br i1 %1, label %.lr.ph60, label %.preheader9

.lr.ph60:                                         ; preds = %0
  %2 = add i32 %ncons, -1
  br label %4

.preheader10:                                     ; preds = %4
  br i1 %1, label %.lr.ph57, label %.preheader9

.lr.ph57:                                         ; preds = %.preheader10
  %3 = add i32 %ncons, -1
  %.pre = load i32* %blnr, align 4, !tbaa !14
  br label %44

; <label>:4                                       ; preds = %4, %.lr.ph60
  %indvars.iv91 = phi i64 [ 0, %.lr.ph60 ], [ %indvars.iv.next92, %4 ]
  %5 = getelementptr inbounds i32* %bla1, i64 %indvars.iv91
  %6 = load i32* %5, align 4, !tbaa !14
  %7 = getelementptr inbounds i32* %bla2, i64 %indvars.iv91
  %8 = load i32* %7, align 4, !tbaa !14
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds [3 x float]* %x, i64 %9, i64 0
  %11 = load float* %10, align 4, !tbaa !15
  %12 = sext i32 %8 to i64
  %13 = getelementptr inbounds [3 x float]* %x, i64 %12, i64 0
  %14 = load float* %13, align 4, !tbaa !15
  %15 = fsub float %11, %14
  %16 = getelementptr inbounds [3 x float]* %x, i64 %9, i64 1
  %17 = load float* %16, align 4, !tbaa !15
  %18 = getelementptr inbounds [3 x float]* %x, i64 %12, i64 1
  %19 = load float* %18, align 4, !tbaa !15
  %20 = fsub float %17, %19
  %21 = getelementptr inbounds [3 x float]* %x, i64 %9, i64 2
  %22 = load float* %21, align 4, !tbaa !15
  %23 = getelementptr inbounds [3 x float]* %x, i64 %12, i64 2
  %24 = load float* %23, align 4, !tbaa !15
  %25 = fsub float %22, %24
  %26 = fmul float %15, %15
  %27 = fmul float %20, %20
  %28 = fadd float %26, %27
  %29 = fmul float %25, %25
  %30 = fadd float %28, %29
  %31 = fpext float %30 to double
  %32 = tail call double @sqrt(double %31) #6
  %33 = fdiv double 1.000000e+00, %32
  %34 = fptrunc double %33 to float
  %35 = fmul float %15, %34
  %36 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv91, i64 0
  store float %35, float* %36, align 4, !tbaa !15
  %37 = fmul float %20, %34
  %38 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv91, i64 1
  store float %37, float* %38, align 4, !tbaa !15
  %39 = fmul float %25, %34
  %40 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv91, i64 2
  store float %39, float* %40, align 4, !tbaa !15
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %lftr.wideiv93 = trunc i64 %indvars.iv91 to i32
  %exitcond94 = icmp eq i32 %lftr.wideiv93, %2
  br i1 %exitcond94, label %.preheader10, label %4

.preheader9:                                      ; preds = %._crit_edge54, %0, %.preheader10
  %41 = icmp sgt i32 %nrec, 0
  br i1 %41, label %.preheader8.lr.ph, label %.preheader7

.preheader8.lr.ph:                                ; preds = %.preheader9
  %42 = add i32 %ncons, -1
  %43 = add i32 %nrec, -1
  br label %.preheader8

; <label>:44                                      ; preds = %._crit_edge54, %.lr.ph57
  %45 = phi i32 [ %.pre, %.lr.ph57 ], [ %59, %._crit_edge54 ]
  %indvars.iv87 = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next88, %._crit_edge54 ]
  %46 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv87, i64 0
  %47 = load float* %46, align 4, !tbaa !15
  %48 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv87, i64 1
  %49 = load float* %48, align 4, !tbaa !15
  %50 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv87, i64 2
  %51 = load float* %50, align 4, !tbaa !15
  %52 = getelementptr inbounds float* %bllen, i64 %indvars.iv87
  %53 = load float* %52, align 4, !tbaa !15
  %54 = getelementptr inbounds i32* %bla1, i64 %indvars.iv87
  %55 = load i32* %54, align 4, !tbaa !14
  %56 = getelementptr inbounds i32* %bla2, i64 %indvars.iv87
  %57 = load i32* %56, align 4, !tbaa !14
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  %58 = getelementptr inbounds i32* %blnr, i64 %indvars.iv.next88
  %59 = load i32* %58, align 4, !tbaa !14
  %60 = icmp slt i32 %45, %59
  br i1 %60, label %.lr.ph53, label %._crit_edge54

.lr.ph53:                                         ; preds = %44
  %61 = sext i32 %45 to i64
  %62 = sext i32 %59 to i64
  br label %63

; <label>:63                                      ; preds = %.lr.ph53, %63
  %indvars.iv85 = phi i64 [ %61, %.lr.ph53 ], [ %indvars.iv.next86, %63 ]
  %64 = getelementptr inbounds i32* %blbnb, i64 %indvars.iv85
  %65 = load i32* %64, align 4, !tbaa !14
  %66 = getelementptr inbounds float* %blcc, i64 %indvars.iv85
  %67 = load float* %66, align 4, !tbaa !15
  %68 = sext i32 %65 to i64
  %69 = getelementptr inbounds [3 x float]* %r, i64 %68, i64 0
  %70 = load float* %69, align 4, !tbaa !15
  %71 = fmul float %47, %70
  %72 = getelementptr inbounds [3 x float]* %r, i64 %68, i64 1
  %73 = load float* %72, align 4, !tbaa !15
  %74 = fmul float %49, %73
  %75 = fadd float %71, %74
  %76 = getelementptr inbounds [3 x float]* %r, i64 %68, i64 2
  %77 = load float* %76, align 4, !tbaa !15
  %78 = fmul float %51, %77
  %79 = fadd float %75, %78
  %80 = fmul float %67, %79
  %81 = getelementptr inbounds float* %blm, i64 %indvars.iv85
  store float %80, float* %81, align 4, !tbaa !15
  %indvars.iv.next86 = add nsw i64 %indvars.iv85, 1
  %82 = icmp slt i64 %indvars.iv.next86, %62
  br i1 %82, label %63, label %._crit_edge54

._crit_edge54:                                    ; preds = %63, %44
  %83 = getelementptr inbounds float* %blc, i64 %indvars.iv87
  %84 = load float* %83, align 4, !tbaa !15
  %85 = sext i32 %55 to i64
  %86 = getelementptr inbounds [3 x float]* %xp, i64 %85, i64 0
  %87 = load float* %86, align 4, !tbaa !15
  %88 = sext i32 %57 to i64
  %89 = getelementptr inbounds [3 x float]* %xp, i64 %88, i64 0
  %90 = load float* %89, align 4, !tbaa !15
  %91 = fsub float %87, %90
  %92 = fmul float %47, %91
  %93 = getelementptr inbounds [3 x float]* %xp, i64 %85, i64 1
  %94 = load float* %93, align 4, !tbaa !15
  %95 = getelementptr inbounds [3 x float]* %xp, i64 %88, i64 1
  %96 = load float* %95, align 4, !tbaa !15
  %97 = fsub float %94, %96
  %98 = fmul float %49, %97
  %99 = fadd float %92, %98
  %100 = getelementptr inbounds [3 x float]* %xp, i64 %85, i64 2
  %101 = load float* %100, align 4, !tbaa !15
  %102 = getelementptr inbounds [3 x float]* %xp, i64 %88, i64 2
  %103 = load float* %102, align 4, !tbaa !15
  %104 = fsub float %101, %103
  %105 = fmul float %51, %104
  %106 = fadd float %99, %105
  %107 = fsub float %106, %53
  %108 = fmul float %84, %107
  %109 = getelementptr inbounds float* %rhs1, i64 %indvars.iv87
  store float %108, float* %109, align 4, !tbaa !15
  %110 = getelementptr inbounds float* %sol, i64 %indvars.iv87
  store float %108, float* %110, align 4, !tbaa !15
  %lftr.wideiv89 = trunc i64 %indvars.iv87 to i32
  %exitcond90 = icmp eq i32 %lftr.wideiv89, %3
  br i1 %exitcond90, label %.preheader9, label %44

.preheader8:                                      ; preds = %._crit_edge45, %.preheader8.lr.ph
  %.048 = phi float* [ %rhs1, %.preheader8.lr.ph ], [ %.0147, %._crit_edge45 ]
  %.0147 = phi float* [ %rhs2, %.preheader8.lr.ph ], [ %.048, %._crit_edge45 ]
  %rec.046 = phi i32 [ 0, %.preheader8.lr.ph ], [ %134, %._crit_edge45 ]
  br i1 %1, label %.lr.ph44, label %._crit_edge45

.lr.ph44:                                         ; preds = %.preheader8
  %.pre95 = load i32* %blnr, align 4, !tbaa !14
  br label %112

.preheader7:                                      ; preds = %._crit_edge45, %.preheader9
  %.0.lcssa = phi float* [ %rhs1, %.preheader9 ], [ %.0147, %._crit_edge45 ]
  %.01.lcssa = phi float* [ %rhs2, %.preheader9 ], [ %.048, %._crit_edge45 ]
  br i1 %1, label %.lr.ph34, label %._crit_edge35

.lr.ph34:                                         ; preds = %.preheader7
  %111 = add i32 %ncons, -1
  br label %135

; <label>:112                                     ; preds = %._crit_edge40, %.lr.ph44
  %113 = phi i32 [ %.pre95, %.lr.ph44 ], [ %115, %._crit_edge40 ]
  %indvars.iv80 = phi i64 [ 0, %.lr.ph44 ], [ %indvars.iv.next81, %._crit_edge40 ]
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  %114 = getelementptr inbounds i32* %blnr, i64 %indvars.iv.next81
  %115 = load i32* %114, align 4, !tbaa !14
  %116 = icmp slt i32 %113, %115
  br i1 %116, label %.lr.ph39, label %._crit_edge40

.lr.ph39:                                         ; preds = %112
  %117 = sext i32 %113 to i64
  %118 = sext i32 %115 to i64
  br label %119

; <label>:119                                     ; preds = %.lr.ph39, %119
  %indvars.iv78 = phi i64 [ %117, %.lr.ph39 ], [ %indvars.iv.next79, %119 ]
  %mvb.037 = phi float [ 0.000000e+00, %.lr.ph39 ], [ %128, %119 ]
  %120 = getelementptr inbounds i32* %blbnb, i64 %indvars.iv78
  %121 = load i32* %120, align 4, !tbaa !14
  %122 = getelementptr inbounds float* %blm, i64 %indvars.iv78
  %123 = load float* %122, align 4, !tbaa !15
  %124 = sext i32 %121 to i64
  %125 = getelementptr inbounds float* %.048, i64 %124
  %126 = load float* %125, align 4, !tbaa !15
  %127 = fmul float %123, %126
  %128 = fadd float %mvb.037, %127
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, 1
  %129 = icmp slt i64 %indvars.iv.next79, %118
  br i1 %129, label %119, label %._crit_edge40

._crit_edge40:                                    ; preds = %119, %112
  %mvb.0.lcssa = phi float [ 0.000000e+00, %112 ], [ %128, %119 ]
  %130 = getelementptr inbounds float* %.0147, i64 %indvars.iv80
  store float %mvb.0.lcssa, float* %130, align 4, !tbaa !15
  %131 = getelementptr inbounds float* %sol, i64 %indvars.iv80
  %132 = load float* %131, align 4, !tbaa !15
  %133 = fadd float %mvb.0.lcssa, %132
  store float %133, float* %131, align 4, !tbaa !15
  %lftr.wideiv82 = trunc i64 %indvars.iv80 to i32
  %exitcond83 = icmp eq i32 %lftr.wideiv82, %42
  br i1 %exitcond83, label %._crit_edge45, label %112

._crit_edge45:                                    ; preds = %._crit_edge40, %.preheader8
  %134 = add nuw nsw i32 %rec.046, 1
  %exitcond84 = icmp eq i32 %rec.046, %43
  br i1 %exitcond84, label %.preheader7, label %.preheader8

; <label>:135                                     ; preds = %135, %.lr.ph34
  %indvars.iv74 = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next75, %135 ]
  %136 = getelementptr inbounds i32* %bla1, i64 %indvars.iv74
  %137 = load i32* %136, align 4, !tbaa !14
  %138 = getelementptr inbounds i32* %bla2, i64 %indvars.iv74
  %139 = load i32* %138, align 4, !tbaa !14
  %140 = getelementptr inbounds float* %blc, i64 %indvars.iv74
  %141 = load float* %140, align 4, !tbaa !15
  %142 = getelementptr inbounds float* %sol, i64 %indvars.iv74
  %143 = load float* %142, align 4, !tbaa !15
  %144 = fmul float %141, %143
  %145 = fsub float -0.000000e+00, %144
  %146 = getelementptr inbounds float* %lambda, i64 %indvars.iv74
  store float %145, float* %146, align 4, !tbaa !15
  %147 = sext i32 %137 to i64
  %148 = getelementptr inbounds float* %invmass, i64 %147
  %149 = load float* %148, align 4, !tbaa !15
  %150 = sext i32 %139 to i64
  %151 = getelementptr inbounds float* %invmass, i64 %150
  %152 = load float* %151, align 4, !tbaa !15
  %153 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv74, i64 0
  %154 = load float* %153, align 4, !tbaa !15
  %155 = fmul float %144, %154
  %156 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv74, i64 1
  %157 = load float* %156, align 4, !tbaa !15
  %158 = fmul float %144, %157
  %159 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv74, i64 2
  %160 = load float* %159, align 4, !tbaa !15
  %161 = fmul float %144, %160
  %162 = getelementptr inbounds [3 x float]* %xp, i64 %147, i64 0
  %163 = load float* %162, align 4, !tbaa !15
  %164 = fmul float %149, %155
  %165 = fsub float %163, %164
  %166 = getelementptr inbounds [3 x float]* %xp, i64 %147, i64 1
  %167 = load float* %166, align 4, !tbaa !15
  %168 = fmul float %149, %158
  %169 = fsub float %167, %168
  %170 = getelementptr inbounds [3 x float]* %xp, i64 %147, i64 2
  %171 = load float* %170, align 4, !tbaa !15
  %172 = fmul float %149, %161
  %173 = fsub float %171, %172
  %174 = getelementptr inbounds [3 x float]* %xp, i64 %150, i64 0
  %175 = load float* %174, align 4, !tbaa !15
  %176 = fmul float %152, %155
  %177 = fadd float %176, %175
  %178 = getelementptr inbounds [3 x float]* %xp, i64 %150, i64 1
  %179 = load float* %178, align 4, !tbaa !15
  %180 = fmul float %152, %158
  %181 = fadd float %180, %179
  %182 = getelementptr inbounds [3 x float]* %xp, i64 %150, i64 2
  %183 = load float* %182, align 4, !tbaa !15
  %184 = fmul float %152, %161
  %185 = fadd float %184, %183
  store float %165, float* %162, align 4, !tbaa !15
  store float %169, float* %166, align 4, !tbaa !15
  store float %173, float* %170, align 4, !tbaa !15
  store float %177, float* %174, align 4, !tbaa !15
  store float %181, float* %178, align 4, !tbaa !15
  store float %185, float* %182, align 4, !tbaa !15
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %lftr.wideiv76 = trunc i64 %indvars.iv74 to i32
  %exitcond77 = icmp eq i32 %lftr.wideiv76, %111
  br i1 %exitcond77, label %._crit_edge35, label %135

._crit_edge35:                                    ; preds = %135, %.preheader7
  %186 = fpext float %wangle to double
  %187 = fmul double %186, 0x3F91DF46A2529D39
  %188 = tail call double @cos(double %187) #6
  %189 = fptrunc double %188 to float
  %190 = fmul float %189, %189
  %191 = icmp sgt i32 %nit, 0
  br i1 %191, label %.preheader6.lr.ph, label %._crit_edge32

.preheader6.lr.ph:                                ; preds = %._crit_edge35
  %192 = add i32 %ncons, -1
  %193 = add i32 %nrec, -1
  %194 = add i32 %nit, -1
  br label %.preheader6

.preheader6:                                      ; preds = %._crit_edge28, %.preheader6.lr.ph
  %.131 = phi float* [ %.0.lcssa, %.preheader6.lr.ph ], [ %.2.lcssa, %._crit_edge28 ]
  %.1230 = phi float* [ %.01.lcssa, %.preheader6.lr.ph ], [ %.23.lcssa, %._crit_edge28 ]
  %it.029 = phi i32 [ 0, %.preheader6.lr.ph ], [ %320, %._crit_edge28 ]
  br i1 %1, label %.lr.ph, label %.preheader5

.preheader5:                                      ; preds = %._crit_edge97, %.preheader6
  br i1 %41, label %.preheader, label %.preheader4

.lr.ph:                                           ; preds = %.preheader6, %._crit_edge97
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge97 ], [ 0, %.preheader6 ]
  %195 = getelementptr inbounds float* %bllen, i64 %indvars.iv
  %196 = load float* %195, align 4, !tbaa !15
  %197 = getelementptr inbounds i32* %bla1, i64 %indvars.iv
  %198 = load i32* %197, align 4, !tbaa !14
  %199 = getelementptr inbounds i32* %bla2, i64 %indvars.iv
  %200 = load i32* %199, align 4, !tbaa !14
  %201 = sext i32 %198 to i64
  %202 = getelementptr inbounds [3 x float]* %xp, i64 %201, i64 0
  %203 = load float* %202, align 4, !tbaa !15
  %204 = sext i32 %200 to i64
  %205 = getelementptr inbounds [3 x float]* %xp, i64 %204, i64 0
  %206 = load float* %205, align 4, !tbaa !15
  %207 = fsub float %203, %206
  %208 = getelementptr inbounds [3 x float]* %xp, i64 %201, i64 1
  %209 = load float* %208, align 4, !tbaa !15
  %210 = getelementptr inbounds [3 x float]* %xp, i64 %204, i64 1
  %211 = load float* %210, align 4, !tbaa !15
  %212 = fsub float %209, %211
  %213 = getelementptr inbounds [3 x float]* %xp, i64 %201, i64 2
  %214 = load float* %213, align 4, !tbaa !15
  %215 = getelementptr inbounds [3 x float]* %xp, i64 %204, i64 2
  %216 = load float* %215, align 4, !tbaa !15
  %217 = fsub float %214, %216
  %218 = fmul float %196, %196
  %219 = fpext float %218 to double
  %220 = fmul double %219, 2.000000e+00
  %221 = fmul float %207, %207
  %222 = fmul float %212, %212
  %223 = fadd float %221, %222
  %224 = fmul float %217, %217
  %225 = fadd float %223, %224
  %226 = fpext float %225 to double
  %227 = fsub double %220, %226
  %228 = fptrunc double %227 to float
  %229 = fmul float %190, %218
  %230 = fcmp olt float %228, %229
  %231 = trunc i64 %indvars.iv to i32
  br i1 %230, label %232, label %._crit_edge97

; <label>:232                                     ; preds = %.lr.ph
  store i32 %231, i32* %warn, align 4, !tbaa !14
  br label %._crit_edge97

._crit_edge97:                                    ; preds = %.lr.ph, %232
  %233 = fcmp olt float %228, 0.000000e+00
  %234 = getelementptr inbounds float* %blc, i64 %indvars.iv
  %235 = load float* %234, align 4, !tbaa !15
  %236 = fpext float %235 to double
  %237 = fpext float %196 to double
  %238 = fpext float %228 to double
  %239 = select i1 %233, double 0.000000e+00, double %238
  %240 = tail call double @sqrt(double %239) #6
  %241 = fsub double %237, %240
  %242 = fmul double %236, %241
  %243 = fptrunc double %242 to float
  %244 = getelementptr inbounds float* %.131, i64 %indvars.iv
  store float %243, float* %244, align 4, !tbaa !15
  %245 = getelementptr inbounds float* %sol, i64 %indvars.iv
  store float %243, float* %245, align 4, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %231, %192
  br i1 %exitcond, label %.preheader5, label %.lr.ph

.preheader4:                                      ; preds = %._crit_edge20, %.preheader5
  %.2.lcssa = phi float* [ %.131, %.preheader5 ], [ %.2322, %._crit_edge20 ]
  %.23.lcssa = phi float* [ %.1230, %.preheader5 ], [ %.223, %._crit_edge20 ]
  br i1 %1, label %.lr.ph27, label %._crit_edge28

.preheader:                                       ; preds = %.preheader5, %._crit_edge20
  %.223 = phi float* [ %.2322, %._crit_edge20 ], [ %.131, %.preheader5 ]
  %.2322 = phi float* [ %.223, %._crit_edge20 ], [ %.1230, %.preheader5 ]
  %rec.121 = phi i32 [ %268, %._crit_edge20 ], [ 0, %.preheader5 ]
  br i1 %1, label %.lr.ph19, label %._crit_edge20

.lr.ph19:                                         ; preds = %.preheader
  %.pre96 = load i32* %blnr, align 4, !tbaa !14
  br label %246

; <label>:246                                     ; preds = %._crit_edge, %.lr.ph19
  %247 = phi i32 [ %.pre96, %.lr.ph19 ], [ %249, %._crit_edge ]
  %indvars.iv64 = phi i64 [ 0, %.lr.ph19 ], [ %indvars.iv.next65, %._crit_edge ]
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %248 = getelementptr inbounds i32* %blnr, i64 %indvars.iv.next65
  %249 = load i32* %248, align 4, !tbaa !14
  %250 = icmp slt i32 %247, %249
  br i1 %250, label %.lr.ph16, label %._crit_edge

.lr.ph16:                                         ; preds = %246
  %251 = sext i32 %247 to i64
  %252 = sext i32 %249 to i64
  br label %253

; <label>:253                                     ; preds = %.lr.ph16, %253
  %indvars.iv62 = phi i64 [ %251, %.lr.ph16 ], [ %indvars.iv.next63, %253 ]
  %mvb.115 = phi float [ 0.000000e+00, %.lr.ph16 ], [ %262, %253 ]
  %254 = getelementptr inbounds i32* %blbnb, i64 %indvars.iv62
  %255 = load i32* %254, align 4, !tbaa !14
  %256 = getelementptr inbounds float* %blm, i64 %indvars.iv62
  %257 = load float* %256, align 4, !tbaa !15
  %258 = sext i32 %255 to i64
  %259 = getelementptr inbounds float* %.223, i64 %258
  %260 = load float* %259, align 4, !tbaa !15
  %261 = fmul float %257, %260
  %262 = fadd float %mvb.115, %261
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, 1
  %263 = icmp slt i64 %indvars.iv.next63, %252
  br i1 %263, label %253, label %._crit_edge

._crit_edge:                                      ; preds = %253, %246
  %mvb.1.lcssa = phi float [ 0.000000e+00, %246 ], [ %262, %253 ]
  %264 = getelementptr inbounds float* %.2322, i64 %indvars.iv64
  store float %mvb.1.lcssa, float* %264, align 4, !tbaa !15
  %265 = getelementptr inbounds float* %sol, i64 %indvars.iv64
  %266 = load float* %265, align 4, !tbaa !15
  %267 = fadd float %mvb.1.lcssa, %266
  store float %267, float* %265, align 4, !tbaa !15
  %lftr.wideiv66 = trunc i64 %indvars.iv64 to i32
  %exitcond67 = icmp eq i32 %lftr.wideiv66, %192
  br i1 %exitcond67, label %._crit_edge20, label %246

._crit_edge20:                                    ; preds = %._crit_edge, %.preheader
  %268 = add nuw nsw i32 %rec.121, 1
  %exitcond68 = icmp eq i32 %rec.121, %193
  br i1 %exitcond68, label %.preheader4, label %.preheader

.lr.ph27:                                         ; preds = %.preheader4, %.lr.ph27
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %.lr.ph27 ], [ 0, %.preheader4 ]
  %269 = getelementptr inbounds i32* %bla1, i64 %indvars.iv69
  %270 = load i32* %269, align 4, !tbaa !14
  %271 = getelementptr inbounds i32* %bla2, i64 %indvars.iv69
  %272 = load i32* %271, align 4, !tbaa !14
  %273 = getelementptr inbounds float* %lambda, i64 %indvars.iv69
  %274 = load float* %273, align 4, !tbaa !15
  %275 = getelementptr inbounds float* %blc, i64 %indvars.iv69
  %276 = load float* %275, align 4, !tbaa !15
  %277 = getelementptr inbounds float* %sol, i64 %indvars.iv69
  %278 = load float* %277, align 4, !tbaa !15
  %279 = fmul float %276, %278
  %280 = fsub float %274, %279
  store float %280, float* %273, align 4, !tbaa !15
  %281 = sext i32 %270 to i64
  %282 = getelementptr inbounds float* %invmass, i64 %281
  %283 = load float* %282, align 4, !tbaa !15
  %284 = sext i32 %272 to i64
  %285 = getelementptr inbounds float* %invmass, i64 %284
  %286 = load float* %285, align 4, !tbaa !15
  %287 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv69, i64 0
  %288 = load float* %287, align 4, !tbaa !15
  %289 = fmul float %279, %288
  %290 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv69, i64 1
  %291 = load float* %290, align 4, !tbaa !15
  %292 = fmul float %279, %291
  %293 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv69, i64 2
  %294 = load float* %293, align 4, !tbaa !15
  %295 = fmul float %279, %294
  %296 = getelementptr inbounds [3 x float]* %xp, i64 %281, i64 0
  %297 = load float* %296, align 4, !tbaa !15
  %298 = fmul float %283, %289
  %299 = fsub float %297, %298
  %300 = getelementptr inbounds [3 x float]* %xp, i64 %281, i64 1
  %301 = load float* %300, align 4, !tbaa !15
  %302 = fmul float %283, %292
  %303 = fsub float %301, %302
  %304 = getelementptr inbounds [3 x float]* %xp, i64 %281, i64 2
  %305 = load float* %304, align 4, !tbaa !15
  %306 = fmul float %283, %295
  %307 = fsub float %305, %306
  %308 = getelementptr inbounds [3 x float]* %xp, i64 %284, i64 0
  %309 = load float* %308, align 4, !tbaa !15
  %310 = fmul float %286, %289
  %311 = fadd float %310, %309
  %312 = getelementptr inbounds [3 x float]* %xp, i64 %284, i64 1
  %313 = load float* %312, align 4, !tbaa !15
  %314 = fmul float %286, %292
  %315 = fadd float %314, %313
  %316 = getelementptr inbounds [3 x float]* %xp, i64 %284, i64 2
  %317 = load float* %316, align 4, !tbaa !15
  %318 = fmul float %286, %295
  %319 = fadd float %318, %317
  store float %299, float* %296, align 4, !tbaa !15
  store float %303, float* %300, align 4, !tbaa !15
  store float %307, float* %304, align 4, !tbaa !15
  store float %311, float* %308, align 4, !tbaa !15
  store float %315, float* %312, align 4, !tbaa !15
  store float %319, float* %316, align 4, !tbaa !15
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  %lftr.wideiv71 = trunc i64 %indvars.iv69 to i32
  %exitcond72 = icmp eq i32 %lftr.wideiv71, %192
  br i1 %exitcond72, label %._crit_edge28, label %.lr.ph27

._crit_edge28:                                    ; preds = %.lr.ph27, %.preheader4
  %320 = add nuw nsw i32 %it.029, 1
  %exitcond73 = icmp eq i32 %it.029, %194
  br i1 %exitcond73, label %._crit_edge32, label %.preheader6

._crit_edge32:                                    ; preds = %._crit_edge28, %._crit_edge35
  ret void
}

; Function Attrs: nounwind optsize readnone
declare double @cos(double) #4

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 12}
!3 = !{!"__sFILE", !4, i64 0, !7, i64 8, !7, i64 12, !8, i64 16, !8, i64 18, !9, i64 24, !7, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !9, i64 88, !4, i64 104, !7, i64 112, !5, i64 116, !5, i64 119, !9, i64 120, !7, i64 136, !10, i64 144}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = !{!"__sbuf", !4, i64 0, !7, i64 8}
!10 = !{!"long long", !5, i64 0}
!11 = !{!3, !7, i64 40}
!12 = !{!3, !4, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !5, i64 0}

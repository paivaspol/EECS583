; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/nrjac.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str1 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/nrjac.c\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str3 = private unnamed_addr constant [38 x i8] c"Too many iterations in routine JACOBI\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"md[i]\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"v[i]\00", align 1
@.str8 = private unnamed_addr constant [4 x i8] c"eig\00", align 1
@.str9 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1

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

; Function Attrs: nounwind optsize ssp uwtable
define void @jacobi(double** nocapture readonly %a, i32 %n, double* nocapture %d, double** nocapture readonly %v, i32* nocapture %nrot) #1 {
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 53, i32 %n, i32 8) #5
  %2 = bitcast i8* %1 to double*
  %3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 54, i32 %n, i32 8) #5
  %4 = bitcast i8* %3 to double*
  %5 = icmp sgt i32 %n, 0
  br i1 %5, label %.preheader7.lr.ph, label %.preheader6._crit_edge

.preheader7.lr.ph:                                ; preds = %0
  %6 = add i32 %n, -1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = add nuw nsw i64 %8, 8
  br label %11

.preheader6:                                      ; preds = %11
  br i1 %5, label %.lr.ph38, label %.preheader6._crit_edge

.preheader6._crit_edge:                           ; preds = %0, %.preheader6
  %.pre102 = add i32 %n, -1
  br label %._crit_edge39

.lr.ph38:                                         ; preds = %.preheader6
  %10 = add i32 %n, -1
  br label %17

; <label>:11                                      ; preds = %11, %.preheader7.lr.ph
  %indvars.iv98 = phi i64 [ 0, %.preheader7.lr.ph ], [ %indvars.iv.next99, %11 ]
  %12 = getelementptr inbounds double** %v, i64 %indvars.iv98
  %13 = bitcast double** %12 to i8**
  %14 = load i8** %13, align 8, !tbaa !2
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 %9, i32 8, i1 false)
  %15 = load double** %12, align 8, !tbaa !2
  %16 = getelementptr inbounds double* %15, i64 %indvars.iv98
  store double 1.000000e+00, double* %16, align 8, !tbaa !6
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  %lftr.wideiv100 = trunc i64 %indvars.iv98 to i32
  %exitcond101 = icmp eq i32 %lftr.wideiv100, %6
  br i1 %exitcond101, label %.preheader6, label %11

; <label>:17                                      ; preds = %17, %.lr.ph38
  %indvars.iv90 = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next91, %17 ]
  %18 = getelementptr inbounds double** %a, i64 %indvars.iv90
  %19 = load double** %18, align 8, !tbaa !2
  %20 = getelementptr inbounds double* %19, i64 %indvars.iv90
  %21 = bitcast double* %20 to i64*
  %22 = load i64* %21, align 8, !tbaa !6
  %23 = getelementptr inbounds double* %d, i64 %indvars.iv90
  %24 = bitcast double* %23 to i64*
  store i64 %22, i64* %24, align 8, !tbaa !6
  %25 = getelementptr inbounds double* %2, i64 %indvars.iv90
  %26 = bitcast double* %25 to i64*
  store i64 %22, i64* %26, align 8, !tbaa !6
  %27 = getelementptr inbounds double* %4, i64 %indvars.iv90
  store double 0.000000e+00, double* %27, align 8, !tbaa !6
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  %lftr.wideiv92 = trunc i64 %indvars.iv90 to i32
  %exitcond93 = icmp eq i32 %lftr.wideiv92, %10
  br i1 %exitcond93, label %._crit_edge39, label %17

._crit_edge39:                                    ; preds = %17, %.preheader6._crit_edge
  %.pre-phi103 = phi i32 [ %.pre102, %.preheader6._crit_edge ], [ %10, %17 ]
  store i32 0, i32* %nrot, align 4, !tbaa !8
  %28 = icmp sgt i32 %n, 1
  %29 = mul nsw i32 %n, %n
  %30 = sitofp i32 %29 to double
  %31 = sext i32 %n to i64
  %32 = sext i32 %.pre-phi103 to i64
  br label %.preheader5

.preheader5:                                      ; preds = %._crit_edge39, %._crit_edge35
  %33 = phi i32 [ 0, %._crit_edge39 ], [ %55, %._crit_edge35 ]
  %i.036 = phi i32 [ 1, %._crit_edge39 ], [ %195, %._crit_edge35 ]
  br i1 %28, label %.lr.ph12, label %._crit_edge

.loopexit3:                                       ; preds = %38, %.lr.ph12
  %sm.1.lcssa = phi double [ %sm.010, %.lr.ph12 ], [ %42, %38 ]
  %34 = icmp slt i64 %indvars.iv.next47, %32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %34, label %.lr.ph12, label %._crit_edge

.lr.ph12:                                         ; preds = %.preheader5, %.loopexit3
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %.loopexit3 ], [ 0, %.preheader5 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit3 ], [ 1, %.preheader5 ]
  %sm.010 = phi double [ %sm.1.lcssa, %.loopexit3 ], [ 0.000000e+00, %.preheader5 ]
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %35 = icmp slt i64 %indvars.iv.next47, %31
  br i1 %35, label %.lr.ph, label %.loopexit3

.lr.ph:                                           ; preds = %.lr.ph12
  %36 = getelementptr inbounds double** %a, i64 %indvars.iv46
  %37 = load double** %36, align 8, !tbaa !2
  br label %38

; <label>:38                                      ; preds = %38, %.lr.ph
  %indvars.iv44 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next45, %38 ]
  %sm.18 = phi double [ %sm.010, %.lr.ph ], [ %42, %38 ]
  %39 = getelementptr inbounds double* %37, i64 %indvars.iv44
  %40 = load double* %39, align 8, !tbaa !6
  %41 = tail call double @fabs(double %40) #6
  %42 = fadd double %sm.18, %41
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %lftr.wideiv = trunc i64 %indvars.iv44 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %.pre-phi103
  br i1 %exitcond, label %.loopexit3, label %38

._crit_edge:                                      ; preds = %.loopexit3, %.preheader5
  %sm.0.lcssa = phi double [ 0.000000e+00, %.preheader5 ], [ %sm.1.lcssa, %.loopexit3 ]
  %43 = tail call double @fabs(double %sm.0.lcssa) #6
  %44 = fcmp olt double %43, 1.200000e-38
  br i1 %44, label %45, label %46

; <label>:45                                      ; preds = %._crit_edge
  tail call void @save_free(i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 71, i8* %3) #5
  tail call void @save_free(i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 72, i8* %1) #5
  br label %198

; <label>:46                                      ; preds = %._crit_edge
  %47 = icmp slt i32 %i.036, 4
  br i1 %47, label %48, label %51

; <label>:48                                      ; preds = %46
  %49 = fmul double %sm.0.lcssa, 2.000000e-01
  %50 = fdiv double %49, %30
  br label %51

; <label>:51                                      ; preds = %46, %48
  %tresh.0 = phi double [ %50, %48 ], [ 0.000000e+00, %46 ]
  br i1 %28, label %.lr.ph32, label %.preheader4

.lr.ph32:                                         ; preds = %51
  %52 = icmp sgt i32 %i.036, 4
  br label %56

.loopexit:                                        ; preds = %186, %56
  %53 = phi i32 [ %57, %56 ], [ %187, %186 ]
  %54 = icmp slt i64 %indvars.iv.next85, %32
  %indvars.iv.next51 = add nsw i32 %indvars.iv50, 1
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %indvars.iv.next65 = add nuw i32 %indvars.iv64, 1
  br i1 %54, label %56, label %.preheader4

.preheader4:                                      ; preds = %.loopexit, %51
  %55 = phi i32 [ %33, %51 ], [ %53, %.loopexit ]
  br i1 %5, label %.lr.ph34, label %._crit_edge35

; <label>:56                                      ; preds = %.lr.ph32, %.loopexit
  %57 = phi i32 [ %33, %.lr.ph32 ], [ %53, %.loopexit ]
  %indvars.iv84 = phi i64 [ 0, %.lr.ph32 ], [ %indvars.iv.next85, %.loopexit ]
  %indvars.iv77 = phi i64 [ 1, %.lr.ph32 ], [ %indvars.iv.next78, %.loopexit ]
  %indvars.iv64 = phi i32 [ 2, %.lr.ph32 ], [ %indvars.iv.next65, %.loopexit ]
  %indvars.iv58 = phi i32 [ 0, %.lr.ph32 ], [ %indvars.iv.next59, %.loopexit ]
  %indvars.iv50 = phi i32 [ -1, %.lr.ph32 ], [ %indvars.iv.next51, %.loopexit ]
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  %indvars.iv.next59 = add nuw nsw i32 %indvars.iv58, 1
  %58 = icmp slt i64 %indvars.iv.next85, %31
  br i1 %58, label %.lr.ph29, label %.loopexit

.lr.ph29:                                         ; preds = %56
  %59 = sext i32 %indvars.iv64 to i64
  %60 = getelementptr inbounds double** %a, i64 %indvars.iv84
  %61 = load double** %60, align 8, !tbaa !2
  %62 = getelementptr inbounds double* %d, i64 %indvars.iv84
  %63 = getelementptr inbounds double* %4, i64 %indvars.iv84
  %64 = icmp sgt i64 %indvars.iv84, 0
  %65 = trunc i64 %indvars.iv.next85 to i32
  br label %66

; <label>:66                                      ; preds = %186, %.lr.ph29
  %67 = phi i32 [ %57, %.lr.ph29 ], [ %187, %186 ]
  %indvars.iv79 = phi i64 [ %indvars.iv77, %.lr.ph29 ], [ %indvars.iv.next80, %186 ]
  %indvars.iv66 = phi i64 [ %59, %.lr.ph29 ], [ %indvars.iv.next67, %186 ]
  %indvars.iv60 = phi i32 [ %indvars.iv58, %.lr.ph29 ], [ %indvars.iv.next61, %186 ]
  %iq.226 = phi i32 [ %65, %.lr.ph29 ], [ %188, %186 ]
  %68 = getelementptr inbounds double* %61, i64 %indvars.iv79
  %69 = load double* %68, align 8, !tbaa !6
  %70 = tail call double @fabs(double %69) #6
  %71 = fmul double %70, 1.000000e+02
  br i1 %52, label %72, label %84

; <label>:72                                      ; preds = %66
  %73 = load double* %62, align 8, !tbaa !6
  %74 = tail call double @fabs(double %73) #6
  %75 = fmul double %74, 1.200000e-07
  %76 = fcmp olt double %71, %75
  br i1 %76, label %77, label %84

; <label>:77                                      ; preds = %72
  %78 = getelementptr inbounds double* %d, i64 %indvars.iv79
  %79 = load double* %78, align 8, !tbaa !6
  %80 = tail call double @fabs(double %79) #6
  %81 = fmul double %80, 1.200000e-07
  %82 = fcmp olt double %71, %81
  br i1 %82, label %83, label %84

; <label>:83                                      ; preds = %77
  store double 0.000000e+00, double* %68, align 8, !tbaa !6
  br label %186

; <label>:84                                      ; preds = %77, %72, %66
  %85 = fcmp ogt double %70, %tresh.0
  br i1 %85, label %86, label %186

; <label>:86                                      ; preds = %84
  %87 = getelementptr inbounds double* %d, i64 %indvars.iv79
  %88 = load double* %87, align 8, !tbaa !6
  %89 = load double* %62, align 8, !tbaa !6
  %90 = fsub double %88, %89
  %91 = tail call double @fabs(double %90) #6
  %92 = fmul double %91, 1.200000e-07
  %93 = fcmp olt double %71, %92
  br i1 %93, label %94, label %96

; <label>:94                                      ; preds = %86
  %95 = fdiv double %69, %90
  br label %108

; <label>:96                                      ; preds = %86
  %97 = fmul double %90, 5.000000e-01
  %98 = fdiv double %97, %69
  %99 = tail call double @fabs(double %98) #6
  %100 = fmul double %98, %98
  %101 = fadd double %100, 1.000000e+00
  %102 = tail call double @sqrt(double %101) #6
  %103 = fadd double %99, %102
  %104 = fdiv double 1.000000e+00, %103
  %105 = fcmp olt double %98, 0.000000e+00
  br i1 %105, label %106, label %108

; <label>:106                                     ; preds = %96
  %107 = fsub double -0.000000e+00, %104
  br label %108

; <label>:108                                     ; preds = %96, %106, %94
  %t.0 = phi double [ %95, %94 ], [ %107, %106 ], [ %104, %96 ]
  %109 = fmul double %t.0, %t.0
  %110 = fadd double %109, 1.000000e+00
  %111 = tail call double @sqrt(double %110) #6
  %112 = fdiv double 1.000000e+00, %111
  %113 = fmul double %t.0, %112
  %114 = fadd double %112, 1.000000e+00
  %115 = fdiv double %113, %114
  %116 = fmul double %t.0, %69
  %117 = load double* %63, align 8, !tbaa !6
  %118 = fsub double %117, %116
  store double %118, double* %63, align 8, !tbaa !6
  %119 = getelementptr inbounds double* %4, i64 %indvars.iv79
  %120 = load double* %119, align 8, !tbaa !6
  %121 = fadd double %116, %120
  store double %121, double* %119, align 8, !tbaa !6
  %122 = load double* %62, align 8, !tbaa !6
  %123 = fsub double %122, %116
  store double %123, double* %62, align 8, !tbaa !6
  %124 = load double* %87, align 8, !tbaa !6
  %125 = fadd double %116, %124
  store double %125, double* %87, align 8, !tbaa !6
  store double 0.000000e+00, double* %68, align 8, !tbaa !6
  br i1 %64, label %.lr.ph17, label %.preheader2

.preheader2:                                      ; preds = %.lr.ph17, %108
  %126 = icmp slt i64 %indvars.iv.next85, %indvars.iv79
  br i1 %126, label %.lr.ph19, label %.preheader1

.lr.ph17:                                         ; preds = %108, %.lr.ph17
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %.lr.ph17 ], [ 0, %108 ]
  %127 = getelementptr inbounds double** %a, i64 %indvars.iv48
  %128 = load double** %127, align 8, !tbaa !2
  %129 = getelementptr inbounds double* %128, i64 %indvars.iv84
  %130 = load double* %129, align 8, !tbaa !6
  %131 = getelementptr inbounds double* %128, i64 %indvars.iv79
  %132 = load double* %131, align 8, !tbaa !6
  %133 = fmul double %115, %130
  %134 = fadd double %132, %133
  %135 = fmul double %113, %134
  %136 = fsub double %130, %135
  store double %136, double* %129, align 8, !tbaa !6
  %137 = fmul double %115, %132
  %138 = fsub double %130, %137
  %139 = fmul double %113, %138
  %140 = fadd double %132, %139
  store double %140, double* %131, align 8, !tbaa !6
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %lftr.wideiv52 = trunc i64 %indvars.iv48 to i32
  %exitcond53 = icmp eq i32 %lftr.wideiv52, %indvars.iv50
  br i1 %exitcond53, label %.preheader2, label %.lr.ph17

.preheader1:                                      ; preds = %.lr.ph19, %.preheader2
  %j.220 = add nuw nsw i32 %iq.226, 1
  %141 = icmp slt i32 %j.220, %n
  br i1 %141, label %.lr.ph22, label %.preheader

.lr.ph22:                                         ; preds = %.preheader1
  %142 = getelementptr inbounds double** %a, i64 %indvars.iv79
  %143 = load double** %142, align 8, !tbaa !2
  br label %158

.lr.ph19:                                         ; preds = %.preheader2, %.lr.ph19
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %.lr.ph19 ], [ %indvars.iv77, %.preheader2 ]
  %144 = getelementptr inbounds double* %61, i64 %indvars.iv56
  %145 = load double* %144, align 8, !tbaa !6
  %146 = getelementptr inbounds double** %a, i64 %indvars.iv56
  %147 = load double** %146, align 8, !tbaa !2
  %148 = getelementptr inbounds double* %147, i64 %indvars.iv79
  %149 = load double* %148, align 8, !tbaa !6
  %150 = fmul double %115, %145
  %151 = fadd double %150, %149
  %152 = fmul double %113, %151
  %153 = fsub double %145, %152
  store double %153, double* %144, align 8, !tbaa !6
  %154 = fmul double %115, %149
  %155 = fsub double %145, %154
  %156 = fmul double %113, %155
  %157 = fadd double %149, %156
  store double %157, double* %148, align 8, !tbaa !6
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  %lftr.wideiv62 = trunc i64 %indvars.iv56 to i32
  %exitcond63 = icmp eq i32 %lftr.wideiv62, %indvars.iv60
  br i1 %exitcond63, label %.preheader1, label %.lr.ph19

.preheader:                                       ; preds = %158, %.preheader1
  br i1 %5, label %.lr.ph24, label %._crit_edge25

; <label>:158                                     ; preds = %158, %.lr.ph22
  %indvars.iv68 = phi i64 [ %indvars.iv66, %.lr.ph22 ], [ %indvars.iv.next69, %158 ]
  %159 = getelementptr inbounds double* %61, i64 %indvars.iv68
  %160 = load double* %159, align 8, !tbaa !6
  %161 = getelementptr inbounds double* %143, i64 %indvars.iv68
  %162 = load double* %161, align 8, !tbaa !6
  %163 = fmul double %115, %160
  %164 = fadd double %163, %162
  %165 = fmul double %113, %164
  %166 = fsub double %160, %165
  store double %166, double* %159, align 8, !tbaa !6
  %167 = fmul double %115, %162
  %168 = fsub double %160, %167
  %169 = fmul double %113, %168
  %170 = fadd double %162, %169
  store double %170, double* %161, align 8, !tbaa !6
  %indvars.iv.next69 = add nsw i64 %indvars.iv68, 1
  %lftr.wideiv71 = trunc i64 %indvars.iv68 to i32
  %exitcond72 = icmp eq i32 %lftr.wideiv71, %.pre-phi103
  br i1 %exitcond72, label %.preheader, label %158

.lr.ph24:                                         ; preds = %.preheader, %.lr.ph24
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %.lr.ph24 ], [ 0, %.preheader ]
  %171 = getelementptr inbounds double** %v, i64 %indvars.iv73
  %172 = load double** %171, align 8, !tbaa !2
  %173 = getelementptr inbounds double* %172, i64 %indvars.iv84
  %174 = load double* %173, align 8, !tbaa !6
  %175 = getelementptr inbounds double* %172, i64 %indvars.iv79
  %176 = load double* %175, align 8, !tbaa !6
  %177 = fmul double %115, %174
  %178 = fadd double %176, %177
  %179 = fmul double %113, %178
  %180 = fsub double %174, %179
  store double %180, double* %173, align 8, !tbaa !6
  %181 = fmul double %115, %176
  %182 = fsub double %174, %181
  %183 = fmul double %113, %182
  %184 = fadd double %176, %183
  store double %184, double* %175, align 8, !tbaa !6
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  %lftr.wideiv75 = trunc i64 %indvars.iv73 to i32
  %exitcond76 = icmp eq i32 %lftr.wideiv75, %.pre-phi103
  br i1 %exitcond76, label %._crit_edge25, label %.lr.ph24

._crit_edge25:                                    ; preds = %.lr.ph24, %.preheader
  %185 = add nsw i32 %67, 1
  store i32 %185, i32* %nrot, align 4, !tbaa !8
  br label %186

; <label>:186                                     ; preds = %83, %._crit_edge25, %84
  %187 = phi i32 [ %67, %83 ], [ %185, %._crit_edge25 ], [ %67, %84 ]
  %188 = add nuw nsw i32 %iq.226, 1
  %indvars.iv.next61 = add nuw nsw i32 %indvars.iv60, 1
  %indvars.iv.next67 = add nsw i64 %indvars.iv66, 1
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  %lftr.wideiv82 = trunc i64 %indvars.iv79 to i32
  %exitcond83 = icmp eq i32 %lftr.wideiv82, %.pre-phi103
  br i1 %exitcond83, label %.loopexit, label %66

.lr.ph34:                                         ; preds = %.preheader4, %.lr.ph34
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %.lr.ph34 ], [ 0, %.preheader4 ]
  %189 = getelementptr inbounds double* %4, i64 %indvars.iv86
  %190 = load double* %189, align 8, !tbaa !6
  %191 = getelementptr inbounds double* %2, i64 %indvars.iv86
  %192 = load double* %191, align 8, !tbaa !6
  %193 = fadd double %190, %192
  store double %193, double* %191, align 8, !tbaa !6
  %194 = getelementptr inbounds double* %d, i64 %indvars.iv86
  store double %193, double* %194, align 8, !tbaa !6
  store double 0.000000e+00, double* %189, align 8, !tbaa !6
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  %lftr.wideiv88 = trunc i64 %indvars.iv86 to i32
  %exitcond89 = icmp eq i32 %lftr.wideiv88, %.pre-phi103
  br i1 %exitcond89, label %._crit_edge35, label %.lr.ph34

._crit_edge35:                                    ; preds = %.lr.ph34, %.preheader4
  %195 = add nuw nsw i32 %i.036, 1
  %196 = icmp slt i32 %195, 51
  br i1 %196, label %.preheader5, label %197

; <label>:197                                     ; preds = %._crit_edge35
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8]* @.str3, i64 0, i64 0)) #5
  br label %198

; <label>:198                                     ; preds = %197, %45
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #3

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @m_inv_gen(float** nocapture readonly %m, i32 %n, float** nocapture readonly %minv) #1 {
  %nrot = alloca i32, align 4
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 134, i32 %n, i32 8) #5
  %2 = bitcast i8* %1 to double**
  %3 = icmp sgt i32 %n, 0
  br i1 %3, label %.lr.ph38, label %._crit_edge39.thread

._crit_edge39.thread:                             ; preds = %0
  %4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 137, i32 %n, i32 8) #5
  %5 = bitcast i8* %4 to double**
  br label %._crit_edge35.thread

.lr.ph38:                                         ; preds = %0
  %6 = add i32 %n, -1
  br label %7

; <label>:7                                       ; preds = %7, %.lr.ph38
  %indvars.iv77 = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next78, %7 ]
  %8 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 136, i32 %n, i32 8) #5
  %9 = getelementptr inbounds double** %2, i64 %indvars.iv77
  %10 = bitcast double** %9 to i8**
  store i8* %8, i8** %10, align 8, !tbaa !2
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %lftr.wideiv79 = trunc i64 %indvars.iv77 to i32
  %exitcond80 = icmp eq i32 %lftr.wideiv79, %6
  br i1 %exitcond80, label %._crit_edge39, label %7

._crit_edge39:                                    ; preds = %7
  %11 = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 137, i32 %n, i32 8) #5
  %12 = bitcast i8* %11 to double**
  br i1 %3, label %.lr.ph34, label %._crit_edge35.thread

.lr.ph34:                                         ; preds = %._crit_edge39
  %13 = add i32 %n, -1
  br label %14

; <label>:14                                      ; preds = %14, %.lr.ph34
  %indvars.iv73 = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next74, %14 ]
  %15 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 139, i32 %n, i32 8) #5
  %16 = getelementptr inbounds double** %12, i64 %indvars.iv73
  %17 = bitcast double** %16 to i8**
  store i8* %15, i8** %17, align 8, !tbaa !2
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  %lftr.wideiv75 = trunc i64 %indvars.iv73 to i32
  %exitcond76 = icmp eq i32 %lftr.wideiv75, %13
  br i1 %exitcond76, label %._crit_edge35, label %14

._crit_edge35.thread:                             ; preds = %._crit_edge39.thread, %._crit_edge39
  %.ph = phi double** [ %12, %._crit_edge39 ], [ %5, %._crit_edge39.thread ]
  %.ph81 = phi i8* [ %11, %._crit_edge39 ], [ %4, %._crit_edge39.thread ]
  %18 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 140, i32 %n, i32 8) #5
  %19 = bitcast i8* %18 to double*
  br label %.thread

._crit_edge35:                                    ; preds = %14
  %20 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 140, i32 %n, i32 8) #5
  %21 = bitcast i8* %20 to double*
  br i1 %3, label %.preheader4.lr.ph, label %.thread

.preheader4.lr.ph:                                ; preds = %._crit_edge35
  %22 = add i32 %n, -1
  br label %.lr.ph29

.lr.ph29:                                         ; preds = %.preheader4.lr.ph, %._crit_edge30
  %indvars.iv69 = phi i64 [ 0, %.preheader4.lr.ph ], [ %indvars.iv.next70, %._crit_edge30 ]
  %23 = getelementptr inbounds float** %m, i64 %indvars.iv69
  %24 = load float** %23, align 8, !tbaa !2
  %25 = getelementptr inbounds double** %2, i64 %indvars.iv69
  %26 = load double** %25, align 8, !tbaa !2
  br label %28

.preheader3:                                      ; preds = %._crit_edge30
  br i1 %3, label %.lr.ph25, label %.thread

.lr.ph25:                                         ; preds = %.preheader3
  %27 = add i32 %n, -1
  br label %33

; <label>:28                                      ; preds = %28, %.lr.ph29
  %indvars.iv65 = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next66, %28 ]
  %29 = getelementptr inbounds float* %24, i64 %indvars.iv65
  %30 = load float* %29, align 4, !tbaa !10
  %31 = fpext float %30 to double
  %32 = getelementptr inbounds double* %26, i64 %indvars.iv65
  store double %31, double* %32, align 8, !tbaa !6
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  %lftr.wideiv67 = trunc i64 %indvars.iv65 to i32
  %exitcond68 = icmp eq i32 %lftr.wideiv67, %22
  br i1 %exitcond68, label %._crit_edge30, label %28

._crit_edge30:                                    ; preds = %28
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  %lftr.wideiv71 = trunc i64 %indvars.iv69 to i32
  %exitcond72 = icmp eq i32 %lftr.wideiv71, %22
  br i1 %exitcond72, label %.preheader3, label %.lr.ph29

; <label>:33                                      ; preds = %33, %.lr.ph25
  %indvars.iv61 = phi i64 [ 0, %.lr.ph25 ], [ %indvars.iv.next62, %33 ]
  %tol.023 = phi double [ 0.000000e+00, %.lr.ph25 ], [ %39, %33 ]
  %34 = getelementptr inbounds double** %2, i64 %indvars.iv61
  %35 = load double** %34, align 8, !tbaa !2
  %36 = getelementptr inbounds double* %35, i64 %indvars.iv61
  %37 = load double* %36, align 8, !tbaa !6
  %38 = tail call double @fabs(double %37) #6
  %39 = fadd double %tol.023, %38
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %lftr.wideiv63 = trunc i64 %indvars.iv61 to i32
  %exitcond64 = icmp eq i32 %lftr.wideiv63, %27
  br i1 %exitcond64, label %40, label %33

.thread:                                          ; preds = %.preheader3, %._crit_edge35.thread, %._crit_edge35
  %.ph86 = phi double** [ %12, %.preheader3 ], [ %12, %._crit_edge35 ], [ %.ph, %._crit_edge35.thread ]
  %.ph87 = phi i8* [ %11, %.preheader3 ], [ %11, %._crit_edge35 ], [ %.ph81, %._crit_edge35.thread ]
  %.ph88 = phi i8* [ %20, %.preheader3 ], [ %20, %._crit_edge35 ], [ %18, %._crit_edge35.thread ]
  %.ph89 = phi double* [ %21, %.preheader3 ], [ %21, %._crit_edge35 ], [ %19, %._crit_edge35.thread ]
  call void @jacobi(double** %2, i32 %n, double* %.ph89, double** %.ph86, i32* %nrot) #7
  br label %._crit_edge17.thread

; <label>:40                                      ; preds = %33
  %phitmp = fmul double %39, 1.000000e-06
  %41 = sitofp i32 %n to double
  %42 = fdiv double %phitmp, %41
  call void @jacobi(double** %2, i32 %n, double* %21, double** %12, i32* %nrot) #7
  br i1 %3, label %.lr.ph21, label %._crit_edge17.thread

.lr.ph21:                                         ; preds = %40
  %43 = add i32 %n, -1
  br label %45

.preheader2:                                      ; preds = %54
  br i1 %3, label %.preheader1.lr.ph, label %._crit_edge17.thread

.preheader1.lr.ph:                                ; preds = %.preheader2
  %44 = add i32 %n, -1
  br label %.preheader.lr.ph

; <label>:45                                      ; preds = %54, %.lr.ph21
  %indvars.iv57 = phi i64 [ 0, %.lr.ph21 ], [ %indvars.iv.next58, %54 ]
  %nzero.018 = phi i32 [ 0, %.lr.ph21 ], [ %nzero.1, %54 ]
  %46 = getelementptr inbounds double* %21, i64 %indvars.iv57
  %47 = load double* %46, align 8, !tbaa !6
  %48 = tail call double @fabs(double %47) #6
  %49 = fcmp olt double %48, %42
  br i1 %49, label %50, label %52

; <label>:50                                      ; preds = %45
  store double 0.000000e+00, double* %46, align 8, !tbaa !6
  %51 = add nsw i32 %nzero.018, 1
  br label %54

; <label>:52                                      ; preds = %45
  %53 = fdiv double 1.000000e+00, %47
  store double %53, double* %46, align 8, !tbaa !6
  br label %54

; <label>:54                                      ; preds = %50, %52
  %nzero.1 = phi i32 [ %51, %50 ], [ %nzero.018, %52 ]
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %lftr.wideiv59 = trunc i64 %indvars.iv57 to i32
  %exitcond60 = icmp eq i32 %lftr.wideiv59, %43
  br i1 %exitcond60, label %.preheader2, label %45

.preheader.lr.ph:                                 ; preds = %.preheader1.lr.ph, %._crit_edge15
  %indvars.iv53 = phi i64 [ 0, %.preheader1.lr.ph ], [ %indvars.iv.next54, %._crit_edge15 ]
  %55 = getelementptr inbounds float** %minv, i64 %indvars.iv53
  %56 = load float** %55, align 8, !tbaa !2
  %57 = getelementptr inbounds double** %12, i64 %indvars.iv53
  br label %.lr.ph12

.lr.ph12:                                         ; preds = %.preheader.lr.ph, %._crit_edge13
  %indvars.iv49 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next50, %._crit_edge13 ]
  %58 = load double** %57, align 8, !tbaa !2
  %59 = getelementptr inbounds double** %12, i64 %indvars.iv49
  %60 = load double** %59, align 8, !tbaa !2
  br label %61

; <label>:61                                      ; preds = %61, %.lr.ph12
  %indvars.iv45 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next46, %61 ]
  %s.010 = phi double [ 0.000000e+00, %.lr.ph12 ], [ %70, %61 ]
  %62 = getelementptr inbounds double* %21, i64 %indvars.iv45
  %63 = load double* %62, align 8, !tbaa !6
  %64 = getelementptr inbounds double* %58, i64 %indvars.iv45
  %65 = load double* %64, align 8, !tbaa !6
  %66 = fmul double %63, %65
  %67 = getelementptr inbounds double* %60, i64 %indvars.iv45
  %68 = load double* %67, align 8, !tbaa !6
  %69 = fmul double %66, %68
  %70 = fadd double %s.010, %69
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %lftr.wideiv47 = trunc i64 %indvars.iv45 to i32
  %exitcond48 = icmp eq i32 %lftr.wideiv47, %44
  br i1 %exitcond48, label %._crit_edge13, label %61

._crit_edge13:                                    ; preds = %61
  %71 = fptrunc double %70 to float
  %72 = getelementptr inbounds float* %56, i64 %indvars.iv49
  store float %71, float* %72, align 4, !tbaa !10
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %lftr.wideiv51 = trunc i64 %indvars.iv49 to i32
  %exitcond52 = icmp eq i32 %lftr.wideiv51, %44
  br i1 %exitcond52, label %._crit_edge15, label %.lr.ph12

._crit_edge15:                                    ; preds = %._crit_edge13
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %lftr.wideiv55 = trunc i64 %indvars.iv53 to i32
  %exitcond56 = icmp eq i32 %lftr.wideiv55, %44
  br i1 %exitcond56, label %._crit_edge17, label %.preheader.lr.ph

._crit_edge17.thread:                             ; preds = %.preheader2, %.thread, %40
  %nzero.0.lcssa94.ph = phi i32 [ %nzero.1, %.preheader2 ], [ 0, %.thread ], [ 0, %40 ]
  %.ph96 = phi i8* [ %11, %.preheader2 ], [ %.ph87, %.thread ], [ %11, %40 ]
  %.ph97 = phi i8* [ %20, %.preheader2 ], [ %.ph88, %.thread ], [ %20, %40 ]
  tail call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 168, i8* %.ph97) #5
  br label %._crit_edge9.thread

._crit_edge17:                                    ; preds = %._crit_edge15
  tail call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 168, i8* %20) #5
  br i1 %3, label %.lr.ph8, label %._crit_edge9.thread

.lr.ph8:                                          ; preds = %._crit_edge17
  %73 = add i32 %n, -1
  br label %74

; <label>:74                                      ; preds = %74, %.lr.ph8
  %indvars.iv41 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next42, %74 ]
  %75 = getelementptr inbounds double** %12, i64 %indvars.iv41
  %76 = bitcast double** %75 to i8**
  %77 = load i8** %76, align 8, !tbaa !2
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 170, i8* %77) #5
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %lftr.wideiv43 = trunc i64 %indvars.iv41 to i32
  %exitcond44 = icmp eq i32 %lftr.wideiv43, %73
  br i1 %exitcond44, label %._crit_edge9, label %74

._crit_edge9.thread:                              ; preds = %._crit_edge17.thread, %._crit_edge17
  %.ph99 = phi i8* [ %11, %._crit_edge17 ], [ %.ph96, %._crit_edge17.thread ]
  %nzero.0.lcssa9498.ph = phi i32 [ %nzero.1, %._crit_edge17 ], [ %nzero.0.lcssa94.ph, %._crit_edge17.thread ]
  tail call void @save_free(i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 171, i8* %.ph99) #5
  br label %._crit_edge

._crit_edge9:                                     ; preds = %74
  tail call void @save_free(i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 171, i8* %11) #5
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge9
  %78 = add i32 %n, -1
  br label %79

; <label>:79                                      ; preds = %79, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %79 ]
  %80 = getelementptr inbounds double** %2, i64 %indvars.iv
  %81 = bitcast double** %80 to i8**
  %82 = load i8** %81, align 8, !tbaa !2
  tail call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 173, i8* %82) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %78
  br i1 %exitcond, label %._crit_edge, label %79

._crit_edge:                                      ; preds = %79, %._crit_edge9.thread, %._crit_edge9
  %nzero.0.lcssa9498100 = phi i32 [ %nzero.0.lcssa9498.ph, %._crit_edge9.thread ], [ %nzero.1, %._crit_edge9 ], [ %nzero.1, %79 ]
  tail call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 174, i8* %1) #5
  ret i32 %nzero.0.lcssa9498100
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readnone }
attributes #7 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"double", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !4, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"float", !4, i64 0}

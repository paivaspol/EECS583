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
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !10, metadata !72), !dbg !73
  %1 = icmp sgt i32 %__signo, 32, !dbg !74
  br i1 %1, label %5, label %2, !dbg !75

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !76
  %4 = shl i32 1, %3, !dbg !77
  br label %5, !dbg !75

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !75
  ret i32 %6, !dbg !78
}

; Function Attrs: nounwind optsize ssp uwtable
define void @jacobi(double** nocapture readonly %a, i32 %n, double* nocapture %d, double** nocapture readonly %v, i32* nocapture %nrot) #1 {
  tail call void @llvm.dbg.value(metadata double** %a, i64 0, metadata !19, metadata !72), !dbg !79
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !20, metadata !72), !dbg !80
  tail call void @llvm.dbg.value(metadata double* %d, i64 0, metadata !21, metadata !72), !dbg !81
  tail call void @llvm.dbg.value(metadata double** %v, i64 0, metadata !22, metadata !72), !dbg !82
  tail call void @llvm.dbg.value(metadata i32* %nrot, i64 0, metadata !23, metadata !72), !dbg !83
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 53, i32 %n, i32 8) #6, !dbg !84
  %2 = bitcast i8* %1 to double*, !dbg !84
  tail call void @llvm.dbg.value(metadata double* %2, i64 0, metadata !37, metadata !72), !dbg !85
  %3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 54, i32 %n, i32 8) #6, !dbg !86
  %4 = bitcast i8* %3 to double*, !dbg !86
  tail call void @llvm.dbg.value(metadata double* %4, i64 0, metadata !38, metadata !72), !dbg !87
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !27, metadata !72), !dbg !88
  %5 = icmp sgt i32 %n, 0, !dbg !89
  br i1 %5, label %.preheader7.lr.ph, label %.preheader6._crit_edge, !dbg !92

.preheader7.lr.ph:                                ; preds = %0
  %6 = add i32 %n, -1, !dbg !92
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 3, !dbg !92
  %9 = add nuw nsw i64 %8, 8, !dbg !92
  br label %11, !dbg !92

.preheader6:                                      ; preds = %11
  br i1 %5, label %.lr.ph38, label %.preheader6._crit_edge, !dbg !93

.preheader6._crit_edge:                           ; preds = %0, %.preheader6
  %.pre102 = add i32 %n, -1, !dbg !95
  br label %._crit_edge39, !dbg !93

.lr.ph38:                                         ; preds = %.preheader6
  %10 = add i32 %n, -1, !dbg !93
  br label %17, !dbg !93

; <label>:11                                      ; preds = %11, %.preheader7.lr.ph
  %indvars.iv98 = phi i64 [ 0, %.preheader7.lr.ph ], [ %indvars.iv.next99, %11 ]
  %12 = getelementptr inbounds double** %v, i64 %indvars.iv98, !dbg !101
  %13 = bitcast double** %12 to i8**, !dbg !101
  %14 = load i8** %13, align 8, !dbg !101, !tbaa !105
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 %9, i32 8, i1 false), !dbg !109
  %15 = load double** %12, align 8, !dbg !110, !tbaa !105
  %16 = getelementptr inbounds double* %15, i64 %indvars.iv98, !dbg !110
  store double 1.000000e+00, double* %16, align 8, !dbg !111, !tbaa !112
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1, !dbg !92
  %lftr.wideiv100 = trunc i64 %indvars.iv98 to i32, !dbg !92
  %exitcond101 = icmp eq i32 %lftr.wideiv100, %6, !dbg !92
  br i1 %exitcond101, label %.preheader6, label %11, !dbg !92

; <label>:17                                      ; preds = %17, %.lr.ph38
  %indvars.iv90 = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next91, %17 ]
  %18 = getelementptr inbounds double** %a, i64 %indvars.iv90, !dbg !114
  %19 = load double** %18, align 8, !dbg !114, !tbaa !105
  %20 = getelementptr inbounds double* %19, i64 %indvars.iv90, !dbg !114
  %21 = bitcast double* %20 to i64*, !dbg !114
  %22 = load i64* %21, align 8, !dbg !114, !tbaa !112
  %23 = getelementptr inbounds double* %d, i64 %indvars.iv90, !dbg !117
  %24 = bitcast double* %23 to i64*, !dbg !118
  store i64 %22, i64* %24, align 8, !dbg !118, !tbaa !112
  %25 = getelementptr inbounds double* %2, i64 %indvars.iv90, !dbg !119
  %26 = bitcast double* %25 to i64*, !dbg !120
  store i64 %22, i64* %26, align 8, !dbg !120, !tbaa !112
  %27 = getelementptr inbounds double* %4, i64 %indvars.iv90, !dbg !121
  store double 0.000000e+00, double* %27, align 8, !dbg !122, !tbaa !112
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1, !dbg !93
  %lftr.wideiv92 = trunc i64 %indvars.iv90 to i32, !dbg !93
  %exitcond93 = icmp eq i32 %lftr.wideiv92, %10, !dbg !93
  br i1 %exitcond93, label %._crit_edge39, label %17, !dbg !93

._crit_edge39:                                    ; preds = %17, %.preheader6._crit_edge
  %.pre-phi103 = phi i32 [ %.pre102, %.preheader6._crit_edge ], [ %10, %17 ], !dbg !95
  store i32 0, i32* %nrot, align 4, !dbg !123, !tbaa !124
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !25, metadata !72), !dbg !126
  %28 = icmp sgt i32 %n, 1, !dbg !127
  %29 = mul nsw i32 %n, %n, !dbg !128
  %30 = sitofp i32 %29 to double, !dbg !130
  %31 = sext i32 %n to i64, !dbg !131
  %32 = sext i32 %.pre-phi103 to i64, !dbg !131
  br label %.preheader5, !dbg !131

.preheader5:                                      ; preds = %._crit_edge39, %._crit_edge35
  %33 = phi i32 [ 0, %._crit_edge39 ], [ %55, %._crit_edge35 ]
  %i.036 = phi i32 [ 1, %._crit_edge39 ], [ %195, %._crit_edge35 ]
  br i1 %28, label %.lr.ph12, label %._crit_edge, !dbg !132

.loopexit3:                                       ; preds = %38, %.lr.ph12
  %sm.1.lcssa = phi double [ %sm.010, %.lr.ph12 ], [ %42, %38 ]
  %34 = icmp slt i64 %indvars.iv.next47, %32, !dbg !127
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !132
  br i1 %34, label %.lr.ph12, label %._crit_edge, !dbg !132

.lr.ph12:                                         ; preds = %.preheader5, %.loopexit3
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %.loopexit3 ], [ 0, %.preheader5 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit3 ], [ 1, %.preheader5 ]
  %sm.010 = phi double [ %sm.1.lcssa, %.loopexit3 ], [ 0.000000e+00, %.preheader5 ]
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1, !dbg !132
  %35 = icmp slt i64 %indvars.iv.next47, %31, !dbg !133
  br i1 %35, label %.lr.ph, label %.loopexit3, !dbg !137

.lr.ph:                                           ; preds = %.lr.ph12
  %36 = getelementptr inbounds double** %a, i64 %indvars.iv46, !dbg !138
  %37 = load double** %36, align 8, !dbg !138, !tbaa !105
  br label %38, !dbg !137

; <label>:38                                      ; preds = %38, %.lr.ph
  %indvars.iv44 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next45, %38 ]
  %sm.18 = phi double [ %sm.010, %.lr.ph ], [ %42, %38 ]
  %39 = getelementptr inbounds double* %37, i64 %indvars.iv44, !dbg !138
  %40 = load double* %39, align 8, !dbg !138, !tbaa !112
  %41 = tail call double @fabs(double %40) #7, !dbg !139
  %42 = fadd double %sm.18, %41, !dbg !140
  tail call void @llvm.dbg.value(metadata double %42, i64 0, metadata !32, metadata !72), !dbg !141
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1, !dbg !137
  %lftr.wideiv = trunc i64 %indvars.iv44 to i32, !dbg !137
  %exitcond = icmp eq i32 %lftr.wideiv, %.pre-phi103, !dbg !137
  br i1 %exitcond, label %.loopexit3, label %38, !dbg !137

._crit_edge:                                      ; preds = %.loopexit3, %.preheader5
  %sm.0.lcssa = phi double [ 0.000000e+00, %.preheader5 ], [ %sm.1.lcssa, %.loopexit3 ]
  %43 = tail call double @fabs(double %sm.0.lcssa) #7, !dbg !142
  %44 = fcmp olt double %43, 1.200000e-38, !dbg !144
  br i1 %44, label %45, label %46, !dbg !145

; <label>:45                                      ; preds = %._crit_edge
  tail call void @save_free(i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 71, i8* %3) #6, !dbg !146
  tail call void @save_free(i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 72, i8* %1) #6, !dbg !148
  br label %198, !dbg !149

; <label>:46                                      ; preds = %._crit_edge
  %47 = icmp slt i32 %i.036, 4, !dbg !150
  br i1 %47, label %48, label %51, !dbg !151

; <label>:48                                      ; preds = %46
  %49 = fmul double %sm.0.lcssa, 2.000000e-01, !dbg !152
  %50 = fdiv double %49, %30, !dbg !153
  tail call void @llvm.dbg.value(metadata double %50, i64 0, metadata !28, metadata !72), !dbg !154
  br label %51, !dbg !155

; <label>:51                                      ; preds = %46, %48
  %tresh.0 = phi double [ %50, %48 ], [ 0.000000e+00, %46 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !27, metadata !72), !dbg !88
  br i1 %28, label %.lr.ph32, label %.preheader4, !dbg !156

.lr.ph32:                                         ; preds = %51
  %52 = icmp sgt i32 %i.036, 4, !dbg !158
  br label %56, !dbg !156

.loopexit:                                        ; preds = %186, %56
  %53 = phi i32 [ %57, %56 ], [ %187, %186 ]
  %54 = icmp slt i64 %indvars.iv.next85, %32, !dbg !165
  %indvars.iv.next51 = add nsw i32 %indvars.iv50, 1, !dbg !156
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1, !dbg !156
  %indvars.iv.next65 = add nuw i32 %indvars.iv64, 1, !dbg !156
  br i1 %54, label %56, label %.preheader4, !dbg !156

.preheader4:                                      ; preds = %.loopexit, %51
  %55 = phi i32 [ %33, %51 ], [ %53, %.loopexit ]
  br i1 %5, label %.lr.ph34, label %._crit_edge35, !dbg !166

; <label>:56                                      ; preds = %.lr.ph32, %.loopexit
  %57 = phi i32 [ %33, %.lr.ph32 ], [ %53, %.loopexit ]
  %indvars.iv84 = phi i64 [ 0, %.lr.ph32 ], [ %indvars.iv.next85, %.loopexit ]
  %indvars.iv77 = phi i64 [ 1, %.lr.ph32 ], [ %indvars.iv.next78, %.loopexit ]
  %indvars.iv64 = phi i32 [ 2, %.lr.ph32 ], [ %indvars.iv.next65, %.loopexit ]
  %indvars.iv58 = phi i32 [ 0, %.lr.ph32 ], [ %indvars.iv.next59, %.loopexit ]
  %indvars.iv50 = phi i32 [ -1, %.lr.ph32 ], [ %indvars.iv.next51, %.loopexit ]
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1, !dbg !156
  %indvars.iv.next59 = add nuw nsw i32 %indvars.iv58, 1, !dbg !156
  tail call void @llvm.dbg.value(metadata i32 %indvars.iv.next59, i64 0, metadata !26, metadata !72), !dbg !168
  %58 = icmp slt i64 %indvars.iv.next85, %31, !dbg !169
  br i1 %58, label %.lr.ph29, label %.loopexit, !dbg !170

.lr.ph29:                                         ; preds = %56
  %59 = sext i32 %indvars.iv64 to i64
  %60 = getelementptr inbounds double** %a, i64 %indvars.iv84, !dbg !171
  %61 = load double** %60, align 8, !dbg !171, !tbaa !105
  %62 = getelementptr inbounds double* %d, i64 %indvars.iv84, !dbg !172
  %63 = getelementptr inbounds double* %4, i64 %indvars.iv84, !dbg !173
  %64 = icmp sgt i64 %indvars.iv84, 0, !dbg !176
  %65 = trunc i64 %indvars.iv.next85 to i32, !dbg !170
  br label %66, !dbg !170

; <label>:66                                      ; preds = %186, %.lr.ph29
  %67 = phi i32 [ %57, %.lr.ph29 ], [ %187, %186 ]
  %indvars.iv79 = phi i64 [ %indvars.iv77, %.lr.ph29 ], [ %indvars.iv.next80, %186 ]
  %indvars.iv66 = phi i64 [ %59, %.lr.ph29 ], [ %indvars.iv.next67, %186 ]
  %indvars.iv60 = phi i32 [ %indvars.iv58, %.lr.ph29 ], [ %indvars.iv.next61, %186 ]
  %iq.226 = phi i32 [ %65, %.lr.ph29 ], [ %188, %186 ]
  %68 = getelementptr inbounds double* %61, i64 %indvars.iv79, !dbg !171
  %69 = load double* %68, align 8, !dbg !171, !tbaa !112
  %70 = tail call double @fabs(double %69) #7, !dbg !179
  %71 = fmul double %70, 1.000000e+02, !dbg !180
  tail call void @llvm.dbg.value(metadata double %71, i64 0, metadata !35, metadata !72), !dbg !181
  br i1 %52, label %72, label %84, !dbg !182

; <label>:72                                      ; preds = %66
  %73 = load double* %62, align 8, !dbg !172, !tbaa !112
  %74 = tail call double @fabs(double %73) #7, !dbg !183
  %75 = fmul double %74, 1.200000e-07, !dbg !184
  %76 = fcmp olt double %71, %75, !dbg !185
  br i1 %76, label %77, label %84, !dbg !186

; <label>:77                                      ; preds = %72
  %78 = getelementptr inbounds double* %d, i64 %indvars.iv79, !dbg !187
  %79 = load double* %78, align 8, !dbg !187, !tbaa !112
  %80 = tail call double @fabs(double %79) #7, !dbg !188
  %81 = fmul double %80, 1.200000e-07, !dbg !189
  %82 = fcmp olt double %71, %81, !dbg !190
  br i1 %82, label %83, label %84, !dbg !191

; <label>:83                                      ; preds = %77
  store double 0.000000e+00, double* %68, align 8, !dbg !192, !tbaa !112
  br label %186, !dbg !193

; <label>:84                                      ; preds = %77, %72, %66
  %85 = fcmp ogt double %70, %tresh.0, !dbg !194
  br i1 %85, label %86, label %186, !dbg !195

; <label>:86                                      ; preds = %84
  %87 = getelementptr inbounds double* %d, i64 %indvars.iv79, !dbg !196
  %88 = load double* %87, align 8, !dbg !196, !tbaa !112
  %89 = load double* %62, align 8, !dbg !197, !tbaa !112
  %90 = fsub double %88, %89, !dbg !198
  tail call void @llvm.dbg.value(metadata double %90, i64 0, metadata !34, metadata !72), !dbg !199
  %91 = tail call double @fabs(double %90) #7, !dbg !200
  %92 = fmul double %91, 1.200000e-07, !dbg !202
  %93 = fcmp olt double %71, %92, !dbg !203
  br i1 %93, label %94, label %96, !dbg !204

; <label>:94                                      ; preds = %86
  %95 = fdiv double %69, %90, !dbg !205
  tail call void @llvm.dbg.value(metadata double %95, i64 0, metadata !31, metadata !72), !dbg !206
  br label %108, !dbg !207

; <label>:96                                      ; preds = %86
  %97 = fmul double %90, 5.000000e-01, !dbg !208
  %98 = fdiv double %97, %69, !dbg !210
  tail call void @llvm.dbg.value(metadata double %98, i64 0, metadata !29, metadata !72), !dbg !211
  %99 = tail call double @fabs(double %98) #7, !dbg !212
  %100 = fmul double %98, %98, !dbg !213
  %101 = fadd double %100, 1.000000e+00, !dbg !214
  %102 = tail call double @sqrt(double %101) #7, !dbg !215
  %103 = fadd double %99, %102, !dbg !216
  %104 = fdiv double 1.000000e+00, %103, !dbg !217
  tail call void @llvm.dbg.value(metadata double %104, i64 0, metadata !31, metadata !72), !dbg !206
  %105 = fcmp olt double %98, 0.000000e+00, !dbg !218
  br i1 %105, label %106, label %108, !dbg !220

; <label>:106                                     ; preds = %96
  %107 = fsub double -0.000000e+00, %104, !dbg !221
  tail call void @llvm.dbg.value(metadata double %107, i64 0, metadata !31, metadata !72), !dbg !206
  br label %108, !dbg !222

; <label>:108                                     ; preds = %96, %106, %94
  %t.0 = phi double [ %95, %94 ], [ %107, %106 ], [ %104, %96 ]
  %109 = fmul double %t.0, %t.0, !dbg !223
  %110 = fadd double %109, 1.000000e+00, !dbg !224
  %111 = tail call double @sqrt(double %110) #7, !dbg !225
  %112 = fdiv double 1.000000e+00, %111, !dbg !226
  tail call void @llvm.dbg.value(metadata double %112, i64 0, metadata !36, metadata !72), !dbg !227
  %113 = fmul double %t.0, %112, !dbg !228
  tail call void @llvm.dbg.value(metadata double %113, i64 0, metadata !33, metadata !72), !dbg !229
  %114 = fadd double %112, 1.000000e+00, !dbg !230
  %115 = fdiv double %113, %114, !dbg !231
  tail call void @llvm.dbg.value(metadata double %115, i64 0, metadata !30, metadata !72), !dbg !232
  %116 = fmul double %t.0, %69, !dbg !233
  tail call void @llvm.dbg.value(metadata double %116, i64 0, metadata !34, metadata !72), !dbg !199
  %117 = load double* %63, align 8, !dbg !234, !tbaa !112
  %118 = fsub double %117, %116, !dbg !234
  store double %118, double* %63, align 8, !dbg !234, !tbaa !112
  %119 = getelementptr inbounds double* %4, i64 %indvars.iv79, !dbg !235
  %120 = load double* %119, align 8, !dbg !236, !tbaa !112
  %121 = fadd double %116, %120, !dbg !236
  store double %121, double* %119, align 8, !dbg !236, !tbaa !112
  %122 = load double* %62, align 8, !dbg !237, !tbaa !112
  %123 = fsub double %122, %116, !dbg !237
  store double %123, double* %62, align 8, !dbg !237, !tbaa !112
  %124 = load double* %87, align 8, !dbg !238, !tbaa !112
  %125 = fadd double %116, %124, !dbg !238
  store double %125, double* %87, align 8, !dbg !238, !tbaa !112
  store double 0.000000e+00, double* %68, align 8, !dbg !239, !tbaa !112
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !24, metadata !72), !dbg !240
  br i1 %64, label %.lr.ph17, label %.preheader2, !dbg !241

.preheader2:                                      ; preds = %.lr.ph17, %108
  %126 = icmp slt i64 %indvars.iv.next85, %indvars.iv79, !dbg !242
  br i1 %126, label %.lr.ph19, label %.preheader1, !dbg !245

.lr.ph17:                                         ; preds = %108, %.lr.ph17
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %.lr.ph17 ], [ 0, %108 ]
  %127 = getelementptr inbounds double** %a, i64 %indvars.iv48, !dbg !246
  %128 = load double** %127, align 8, !dbg !246, !tbaa !105
  %129 = getelementptr inbounds double* %128, i64 %indvars.iv84, !dbg !246
  %130 = load double* %129, align 8, !dbg !246, !tbaa !112
  tail call void @llvm.dbg.value(metadata double %130, i64 0, metadata !35, metadata !72), !dbg !181
  %131 = getelementptr inbounds double* %128, i64 %indvars.iv79, !dbg !246
  %132 = load double* %131, align 8, !dbg !246, !tbaa !112
  tail call void @llvm.dbg.value(metadata double %132, i64 0, metadata !34, metadata !72), !dbg !199
  %133 = fmul double %115, %130, !dbg !246
  %134 = fadd double %132, %133, !dbg !246
  %135 = fmul double %113, %134, !dbg !246
  %136 = fsub double %130, %135, !dbg !246
  store double %136, double* %129, align 8, !dbg !246, !tbaa !112
  %137 = fmul double %115, %132, !dbg !246
  %138 = fsub double %130, %137, !dbg !246
  %139 = fmul double %113, %138, !dbg !246
  %140 = fadd double %132, %139, !dbg !246
  store double %140, double* %131, align 8, !dbg !246, !tbaa !112
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1, !dbg !241
  %lftr.wideiv52 = trunc i64 %indvars.iv48 to i32, !dbg !241
  %exitcond53 = icmp eq i32 %lftr.wideiv52, %indvars.iv50, !dbg !241
  br i1 %exitcond53, label %.preheader2, label %.lr.ph17, !dbg !241

.preheader1:                                      ; preds = %.lr.ph19, %.preheader2
  %j.220 = add nuw nsw i32 %iq.226, 1, !dbg !248
  %141 = icmp slt i32 %j.220, %n, !dbg !250
  br i1 %141, label %.lr.ph22, label %.preheader, !dbg !252

.lr.ph22:                                         ; preds = %.preheader1
  %142 = getelementptr inbounds double** %a, i64 %indvars.iv79, !dbg !253
  %143 = load double** %142, align 8, !dbg !253, !tbaa !105
  br label %158, !dbg !252

.lr.ph19:                                         ; preds = %.preheader2, %.lr.ph19
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %.lr.ph19 ], [ %indvars.iv77, %.preheader2 ]
  %144 = getelementptr inbounds double* %61, i64 %indvars.iv56, !dbg !255
  %145 = load double* %144, align 8, !dbg !255, !tbaa !112
  tail call void @llvm.dbg.value(metadata double %145, i64 0, metadata !35, metadata !72), !dbg !181
  %146 = getelementptr inbounds double** %a, i64 %indvars.iv56, !dbg !255
  %147 = load double** %146, align 8, !dbg !255, !tbaa !105
  %148 = getelementptr inbounds double* %147, i64 %indvars.iv79, !dbg !255
  %149 = load double* %148, align 8, !dbg !255, !tbaa !112
  tail call void @llvm.dbg.value(metadata double %149, i64 0, metadata !34, metadata !72), !dbg !199
  %150 = fmul double %115, %145, !dbg !255
  %151 = fadd double %150, %149, !dbg !255
  %152 = fmul double %113, %151, !dbg !255
  %153 = fsub double %145, %152, !dbg !255
  store double %153, double* %144, align 8, !dbg !255, !tbaa !112
  %154 = fmul double %115, %149, !dbg !255
  %155 = fsub double %145, %154, !dbg !255
  %156 = fmul double %113, %155, !dbg !255
  %157 = fadd double %149, %156, !dbg !255
  store double %157, double* %148, align 8, !dbg !255, !tbaa !112
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1, !dbg !245
  %lftr.wideiv62 = trunc i64 %indvars.iv56 to i32, !dbg !245
  %exitcond63 = icmp eq i32 %lftr.wideiv62, %indvars.iv60, !dbg !245
  br i1 %exitcond63, label %.preheader1, label %.lr.ph19, !dbg !245

.preheader:                                       ; preds = %158, %.preheader1
  br i1 %5, label %.lr.ph24, label %._crit_edge25, !dbg !257

; <label>:158                                     ; preds = %158, %.lr.ph22
  %indvars.iv68 = phi i64 [ %indvars.iv66, %.lr.ph22 ], [ %indvars.iv.next69, %158 ]
  %159 = getelementptr inbounds double* %61, i64 %indvars.iv68, !dbg !253
  %160 = load double* %159, align 8, !dbg !253, !tbaa !112
  tail call void @llvm.dbg.value(metadata double %160, i64 0, metadata !35, metadata !72), !dbg !181
  %161 = getelementptr inbounds double* %143, i64 %indvars.iv68, !dbg !253
  %162 = load double* %161, align 8, !dbg !253, !tbaa !112
  tail call void @llvm.dbg.value(metadata double %162, i64 0, metadata !34, metadata !72), !dbg !199
  %163 = fmul double %115, %160, !dbg !253
  %164 = fadd double %163, %162, !dbg !253
  %165 = fmul double %113, %164, !dbg !253
  %166 = fsub double %160, %165, !dbg !253
  store double %166, double* %159, align 8, !dbg !253, !tbaa !112
  %167 = fmul double %115, %162, !dbg !253
  %168 = fsub double %160, %167, !dbg !253
  %169 = fmul double %113, %168, !dbg !253
  %170 = fadd double %162, %169, !dbg !253
  store double %170, double* %161, align 8, !dbg !253, !tbaa !112
  %indvars.iv.next69 = add nsw i64 %indvars.iv68, 1, !dbg !252
  %lftr.wideiv71 = trunc i64 %indvars.iv68 to i32, !dbg !252
  %exitcond72 = icmp eq i32 %lftr.wideiv71, %.pre-phi103, !dbg !252
  br i1 %exitcond72, label %.preheader, label %158, !dbg !252

.lr.ph24:                                         ; preds = %.preheader, %.lr.ph24
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %.lr.ph24 ], [ 0, %.preheader ]
  %171 = getelementptr inbounds double** %v, i64 %indvars.iv73, !dbg !259
  %172 = load double** %171, align 8, !dbg !259, !tbaa !105
  %173 = getelementptr inbounds double* %172, i64 %indvars.iv84, !dbg !259
  %174 = load double* %173, align 8, !dbg !259, !tbaa !112
  tail call void @llvm.dbg.value(metadata double %174, i64 0, metadata !35, metadata !72), !dbg !181
  %175 = getelementptr inbounds double* %172, i64 %indvars.iv79, !dbg !259
  %176 = load double* %175, align 8, !dbg !259, !tbaa !112
  tail call void @llvm.dbg.value(metadata double %176, i64 0, metadata !34, metadata !72), !dbg !199
  %177 = fmul double %115, %174, !dbg !259
  %178 = fadd double %176, %177, !dbg !259
  %179 = fmul double %113, %178, !dbg !259
  %180 = fsub double %174, %179, !dbg !259
  store double %180, double* %173, align 8, !dbg !259, !tbaa !112
  %181 = fmul double %115, %176, !dbg !259
  %182 = fsub double %174, %181, !dbg !259
  %183 = fmul double %113, %182, !dbg !259
  %184 = fadd double %176, %183, !dbg !259
  store double %184, double* %175, align 8, !dbg !259, !tbaa !112
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1, !dbg !257
  %lftr.wideiv75 = trunc i64 %indvars.iv73 to i32, !dbg !257
  %exitcond76 = icmp eq i32 %lftr.wideiv75, %.pre-phi103, !dbg !257
  br i1 %exitcond76, label %._crit_edge25, label %.lr.ph24, !dbg !257

._crit_edge25:                                    ; preds = %.lr.ph24, %.preheader
  %185 = add nsw i32 %67, 1, !dbg !262
  store i32 %185, i32* %nrot, align 4, !dbg !262, !tbaa !124
  br label %186, !dbg !263

; <label>:186                                     ; preds = %83, %._crit_edge25, %84
  %187 = phi i32 [ %67, %83 ], [ %185, %._crit_edge25 ], [ %67, %84 ]
  %188 = add nuw nsw i32 %iq.226, 1, !dbg !264
  tail call void @llvm.dbg.value(metadata i32 %188, i64 0, metadata !26, metadata !72), !dbg !168
  %indvars.iv.next61 = add nuw nsw i32 %indvars.iv60, 1, !dbg !170
  %indvars.iv.next67 = add nsw i64 %indvars.iv66, 1, !dbg !170
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1, !dbg !170
  %lftr.wideiv82 = trunc i64 %indvars.iv79 to i32, !dbg !170
  %exitcond83 = icmp eq i32 %lftr.wideiv82, %.pre-phi103, !dbg !170
  br i1 %exitcond83, label %.loopexit, label %66, !dbg !170

.lr.ph34:                                         ; preds = %.preheader4, %.lr.ph34
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %.lr.ph34 ], [ 0, %.preheader4 ]
  %189 = getelementptr inbounds double* %4, i64 %indvars.iv86, !dbg !265
  %190 = load double* %189, align 8, !dbg !265, !tbaa !112
  %191 = getelementptr inbounds double* %2, i64 %indvars.iv86, !dbg !268
  %192 = load double* %191, align 8, !dbg !269, !tbaa !112
  %193 = fadd double %190, %192, !dbg !269
  store double %193, double* %191, align 8, !dbg !269, !tbaa !112
  %194 = getelementptr inbounds double* %d, i64 %indvars.iv86, !dbg !270
  store double %193, double* %194, align 8, !dbg !271, !tbaa !112
  store double 0.000000e+00, double* %189, align 8, !dbg !272, !tbaa !112
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1, !dbg !166
  %lftr.wideiv88 = trunc i64 %indvars.iv86 to i32, !dbg !166
  %exitcond89 = icmp eq i32 %lftr.wideiv88, %.pre-phi103, !dbg !166
  br i1 %exitcond89, label %._crit_edge35, label %.lr.ph34, !dbg !166

._crit_edge35:                                    ; preds = %.lr.ph34, %.preheader4
  %195 = add nuw nsw i32 %i.036, 1, !dbg !273
  tail call void @llvm.dbg.value(metadata i32 %195, i64 0, metadata !25, metadata !72), !dbg !126
  %196 = icmp slt i32 %195, 51, !dbg !274
  br i1 %196, label %.preheader5, label %197, !dbg !131

; <label>:197                                     ; preds = %._crit_edge35
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !67, metadata !72) #5, !dbg !275
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !277
  br label %198, !dbg !278

; <label>:198                                     ; preds = %197, %45
  ret void, !dbg !278
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
  tail call void @llvm.dbg.value(metadata float** %m, i64 0, metadata !48, metadata !72), !dbg !279
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !49, metadata !72), !dbg !280
  tail call void @llvm.dbg.value(metadata float** %minv, i64 0, metadata !50, metadata !72), !dbg !281
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 134, i32 %n, i32 8) #6, !dbg !282
  %2 = bitcast i8* %1 to double**, !dbg !282
  tail call void @llvm.dbg.value(metadata double** %2, i64 0, metadata !51, metadata !72), !dbg !283
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !57, metadata !72), !dbg !284
  %3 = icmp sgt i32 %n, 0, !dbg !285
  br i1 %3, label %.lr.ph38, label %._crit_edge39.thread, !dbg !288

._crit_edge39.thread:                             ; preds = %0
  %4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 137, i32 %n, i32 8) #6, !dbg !289
  %5 = bitcast i8* %4 to double**, !dbg !289
  tail call void @llvm.dbg.value(metadata double** %12, i64 0, metadata !52, metadata !72), !dbg !290
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !57, metadata !72), !dbg !284
  br label %._crit_edge35.thread, !dbg !291

.lr.ph38:                                         ; preds = %0
  %6 = add i32 %n, -1, !dbg !288
  br label %7, !dbg !288

; <label>:7                                       ; preds = %7, %.lr.ph38
  %indvars.iv77 = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next78, %7 ]
  %8 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 136, i32 %n, i32 8) #6, !dbg !293
  %9 = getelementptr inbounds double** %2, i64 %indvars.iv77, !dbg !293
  %10 = bitcast double** %9 to i8**, !dbg !293
  store i8* %8, i8** %10, align 8, !dbg !293, !tbaa !105
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1, !dbg !288
  %lftr.wideiv79 = trunc i64 %indvars.iv77 to i32, !dbg !288
  %exitcond80 = icmp eq i32 %lftr.wideiv79, %6, !dbg !288
  br i1 %exitcond80, label %._crit_edge39, label %7, !dbg !288

._crit_edge39:                                    ; preds = %7
  %11 = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 137, i32 %n, i32 8) #6, !dbg !289
  %12 = bitcast i8* %11 to double**, !dbg !289
  tail call void @llvm.dbg.value(metadata double** %12, i64 0, metadata !52, metadata !72), !dbg !290
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !57, metadata !72), !dbg !284
  br i1 %3, label %.lr.ph34, label %._crit_edge35.thread, !dbg !291

.lr.ph34:                                         ; preds = %._crit_edge39
  %13 = add i32 %n, -1, !dbg !291
  br label %14, !dbg !291

; <label>:14                                      ; preds = %14, %.lr.ph34
  %indvars.iv73 = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next74, %14 ]
  %15 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 139, i32 %n, i32 8) #6, !dbg !294
  %16 = getelementptr inbounds double** %12, i64 %indvars.iv73, !dbg !294
  %17 = bitcast double** %16 to i8**, !dbg !294
  store i8* %15, i8** %17, align 8, !dbg !294, !tbaa !105
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1, !dbg !291
  %lftr.wideiv75 = trunc i64 %indvars.iv73 to i32, !dbg !291
  %exitcond76 = icmp eq i32 %lftr.wideiv75, %13, !dbg !291
  br i1 %exitcond76, label %._crit_edge35, label %14, !dbg !291

._crit_edge35.thread:                             ; preds = %._crit_edge39.thread, %._crit_edge39
  %.ph = phi double** [ %12, %._crit_edge39 ], [ %5, %._crit_edge39.thread ]
  %.ph81 = phi i8* [ %11, %._crit_edge39 ], [ %4, %._crit_edge39.thread ]
  %18 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 140, i32 %n, i32 8) #6, !dbg !296
  %19 = bitcast i8* %18 to double*, !dbg !296
  tail call void @llvm.dbg.value(metadata double* %21, i64 0, metadata !53, metadata !72), !dbg !297
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !57, metadata !72), !dbg !284
  br label %.thread, !dbg !298

._crit_edge35:                                    ; preds = %14
  %20 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 140, i32 %n, i32 8) #6, !dbg !296
  %21 = bitcast i8* %20 to double*, !dbg !296
  tail call void @llvm.dbg.value(metadata double* %21, i64 0, metadata !53, metadata !72), !dbg !297
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !57, metadata !72), !dbg !284
  br i1 %3, label %.preheader4.lr.ph, label %.thread, !dbg !298

.preheader4.lr.ph:                                ; preds = %._crit_edge35
  %22 = add i32 %n, -1, !dbg !298
  br label %.lr.ph29, !dbg !298

.lr.ph29:                                         ; preds = %.preheader4.lr.ph, %._crit_edge30
  %indvars.iv69 = phi i64 [ 0, %.preheader4.lr.ph ], [ %indvars.iv.next70, %._crit_edge30 ]
  %23 = getelementptr inbounds float** %m, i64 %indvars.iv69, !dbg !300
  %24 = load float** %23, align 8, !dbg !300, !tbaa !105
  %25 = getelementptr inbounds double** %2, i64 %indvars.iv69, !dbg !304
  %26 = load double** %25, align 8, !dbg !304, !tbaa !105
  br label %28, !dbg !305

.preheader3:                                      ; preds = %._crit_edge30
  br i1 %3, label %.lr.ph25, label %.thread, !dbg !306

.lr.ph25:                                         ; preds = %.preheader3
  %27 = add i32 %n, -1, !dbg !306
  br label %33, !dbg !306

; <label>:28                                      ; preds = %28, %.lr.ph29
  %indvars.iv65 = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next66, %28 ]
  %29 = getelementptr inbounds float* %24, i64 %indvars.iv65, !dbg !300
  %30 = load float* %29, align 4, !dbg !300, !tbaa !308
  %31 = fpext float %30 to double, !dbg !300
  %32 = getelementptr inbounds double* %26, i64 %indvars.iv65, !dbg !304
  store double %31, double* %32, align 8, !dbg !310, !tbaa !112
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1, !dbg !305
  %lftr.wideiv67 = trunc i64 %indvars.iv65 to i32, !dbg !305
  %exitcond68 = icmp eq i32 %lftr.wideiv67, %22, !dbg !305
  br i1 %exitcond68, label %._crit_edge30, label %28, !dbg !305

._crit_edge30:                                    ; preds = %28
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1, !dbg !298
  %lftr.wideiv71 = trunc i64 %indvars.iv69 to i32, !dbg !298
  %exitcond72 = icmp eq i32 %lftr.wideiv71, %22, !dbg !298
  br i1 %exitcond72, label %.preheader3, label %.lr.ph29, !dbg !298

; <label>:33                                      ; preds = %33, %.lr.ph25
  %indvars.iv61 = phi i64 [ 0, %.lr.ph25 ], [ %indvars.iv.next62, %33 ]
  %tol.023 = phi double [ 0.000000e+00, %.lr.ph25 ], [ %39, %33 ]
  %34 = getelementptr inbounds double** %2, i64 %indvars.iv61, !dbg !311
  %35 = load double** %34, align 8, !dbg !311, !tbaa !105
  %36 = getelementptr inbounds double* %35, i64 %indvars.iv61, !dbg !311
  %37 = load double* %36, align 8, !dbg !311, !tbaa !112
  %38 = tail call double @fabs(double %37) #7, !dbg !313
  %39 = fadd double %tol.023, %38, !dbg !314
  tail call void @llvm.dbg.value(metadata double %39, i64 0, metadata !54, metadata !72), !dbg !315
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1, !dbg !306
  %lftr.wideiv63 = trunc i64 %indvars.iv61 to i32, !dbg !306
  %exitcond64 = icmp eq i32 %lftr.wideiv63, %27, !dbg !306
  br i1 %exitcond64, label %40, label %33, !dbg !306

.thread:                                          ; preds = %.preheader3, %._crit_edge35.thread, %._crit_edge35
  %.ph86 = phi double** [ %12, %.preheader3 ], [ %12, %._crit_edge35 ], [ %.ph, %._crit_edge35.thread ]
  %.ph87 = phi i8* [ %11, %.preheader3 ], [ %11, %._crit_edge35 ], [ %.ph81, %._crit_edge35.thread ]
  %.ph88 = phi i8* [ %20, %.preheader3 ], [ %20, %._crit_edge35 ], [ %18, %._crit_edge35.thread ]
  %.ph89 = phi double* [ %21, %.preheader3 ], [ %21, %._crit_edge35 ], [ %19, %._crit_edge35.thread ]
  tail call void @llvm.dbg.value(metadata double %42, i64 0, metadata !54, metadata !72), !dbg !315
  tail call void @llvm.dbg.value(metadata i32* %nrot, i64 0, metadata !60, metadata !72), !dbg !316
  call void @jacobi(double** %2, i32 %n, double* %.ph89, double** %.ph86, i32* %nrot) #8, !dbg !317
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !56, metadata !72), !dbg !318
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !57, metadata !72), !dbg !284
  br label %._crit_edge17.thread, !dbg !319

; <label>:40                                      ; preds = %33
  %phitmp = fmul double %39, 1.000000e-06, !dbg !306
  %41 = sitofp i32 %n to double, !dbg !321
  %42 = fdiv double %phitmp, %41, !dbg !322
  tail call void @llvm.dbg.value(metadata double %42, i64 0, metadata !54, metadata !72), !dbg !315
  tail call void @llvm.dbg.value(metadata i32* %nrot, i64 0, metadata !60, metadata !72), !dbg !316
  call void @jacobi(double** %2, i32 %n, double* %21, double** %12, i32* %nrot) #8, !dbg !317
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !56, metadata !72), !dbg !318
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !57, metadata !72), !dbg !284
  br i1 %3, label %.lr.ph21, label %._crit_edge17.thread, !dbg !319

.lr.ph21:                                         ; preds = %40
  %43 = add i32 %n, -1, !dbg !319
  br label %45, !dbg !319

.preheader2:                                      ; preds = %54
  br i1 %3, label %.preheader1.lr.ph, label %._crit_edge17.thread, !dbg !323

.preheader1.lr.ph:                                ; preds = %.preheader2
  %44 = add i32 %n, -1, !dbg !323
  br label %.preheader.lr.ph, !dbg !323

; <label>:45                                      ; preds = %54, %.lr.ph21
  %indvars.iv57 = phi i64 [ 0, %.lr.ph21 ], [ %indvars.iv.next58, %54 ]
  %nzero.018 = phi i32 [ 0, %.lr.ph21 ], [ %nzero.1, %54 ]
  %46 = getelementptr inbounds double* %21, i64 %indvars.iv57, !dbg !325
  %47 = load double* %46, align 8, !dbg !325, !tbaa !112
  %48 = tail call double @fabs(double %47) #7, !dbg !328
  %49 = fcmp olt double %48, %42, !dbg !329
  br i1 %49, label %50, label %52, !dbg !330

; <label>:50                                      ; preds = %45
  store double 0.000000e+00, double* %46, align 8, !dbg !331, !tbaa !112
  %51 = add nsw i32 %nzero.018, 1, !dbg !333
  tail call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !56, metadata !72), !dbg !318
  br label %54, !dbg !334

; <label>:52                                      ; preds = %45
  %53 = fdiv double 1.000000e+00, %47, !dbg !335
  store double %53, double* %46, align 8, !dbg !336, !tbaa !112
  br label %54

; <label>:54                                      ; preds = %50, %52
  %nzero.1 = phi i32 [ %51, %50 ], [ %nzero.018, %52 ]
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1, !dbg !319
  %lftr.wideiv59 = trunc i64 %indvars.iv57 to i32, !dbg !319
  %exitcond60 = icmp eq i32 %lftr.wideiv59, %43, !dbg !319
  br i1 %exitcond60, label %.preheader2, label %45, !dbg !319

.preheader.lr.ph:                                 ; preds = %.preheader1.lr.ph, %._crit_edge15
  %indvars.iv53 = phi i64 [ 0, %.preheader1.lr.ph ], [ %indvars.iv.next54, %._crit_edge15 ]
  %55 = getelementptr inbounds float** %minv, i64 %indvars.iv53, !dbg !337
  %56 = load float** %55, align 8, !dbg !337, !tbaa !105
  %57 = getelementptr inbounds double** %12, i64 %indvars.iv53, !dbg !342
  br label %.lr.ph12, !dbg !345

.lr.ph12:                                         ; preds = %.preheader.lr.ph, %._crit_edge13
  %indvars.iv49 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next50, %._crit_edge13 ]
  %58 = load double** %57, align 8, !dbg !342, !tbaa !105
  %59 = getelementptr inbounds double** %12, i64 %indvars.iv49, !dbg !346
  %60 = load double** %59, align 8, !dbg !346, !tbaa !105
  br label %61, !dbg !347

; <label>:61                                      ; preds = %61, %.lr.ph12
  %indvars.iv45 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next46, %61 ]
  %s.010 = phi double [ 0.000000e+00, %.lr.ph12 ], [ %70, %61 ]
  %62 = getelementptr inbounds double* %21, i64 %indvars.iv45, !dbg !348
  %63 = load double* %62, align 8, !dbg !348, !tbaa !112
  %64 = getelementptr inbounds double* %58, i64 %indvars.iv45, !dbg !342
  %65 = load double* %64, align 8, !dbg !342, !tbaa !112
  %66 = fmul double %63, %65, !dbg !349
  %67 = getelementptr inbounds double* %60, i64 %indvars.iv45, !dbg !346
  %68 = load double* %67, align 8, !dbg !346, !tbaa !112
  %69 = fmul double %66, %68, !dbg !350
  %70 = fadd double %s.010, %69, !dbg !351
  tail call void @llvm.dbg.value(metadata double %70, i64 0, metadata !55, metadata !72), !dbg !352
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1, !dbg !347
  %lftr.wideiv47 = trunc i64 %indvars.iv45 to i32, !dbg !347
  %exitcond48 = icmp eq i32 %lftr.wideiv47, %44, !dbg !347
  br i1 %exitcond48, label %._crit_edge13, label %61, !dbg !347

._crit_edge13:                                    ; preds = %61
  %71 = fptrunc double %70 to float, !dbg !353
  %72 = getelementptr inbounds float* %56, i64 %indvars.iv49, !dbg !337
  store float %71, float* %72, align 4, !dbg !354, !tbaa !308
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1, !dbg !345
  %lftr.wideiv51 = trunc i64 %indvars.iv49 to i32, !dbg !345
  %exitcond52 = icmp eq i32 %lftr.wideiv51, %44, !dbg !345
  br i1 %exitcond52, label %._crit_edge15, label %.lr.ph12, !dbg !345

._crit_edge15:                                    ; preds = %._crit_edge13
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1, !dbg !323
  %lftr.wideiv55 = trunc i64 %indvars.iv53 to i32, !dbg !323
  %exitcond56 = icmp eq i32 %lftr.wideiv55, %44, !dbg !323
  br i1 %exitcond56, label %._crit_edge17, label %.preheader.lr.ph, !dbg !323

._crit_edge17.thread:                             ; preds = %.preheader2, %.thread, %40
  %nzero.0.lcssa94.ph = phi i32 [ %nzero.1, %.preheader2 ], [ 0, %.thread ], [ 0, %40 ]
  %.ph96 = phi i8* [ %11, %.preheader2 ], [ %.ph87, %.thread ], [ %11, %40 ]
  %.ph97 = phi i8* [ %20, %.preheader2 ], [ %.ph88, %.thread ], [ %20, %40 ]
  tail call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 168, i8* %.ph97) #6, !dbg !355
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !57, metadata !72), !dbg !284
  br label %._crit_edge9.thread, !dbg !356

._crit_edge17:                                    ; preds = %._crit_edge15
  tail call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 168, i8* %20) #6, !dbg !355
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !57, metadata !72), !dbg !284
  br i1 %3, label %.lr.ph8, label %._crit_edge9.thread, !dbg !356

.lr.ph8:                                          ; preds = %._crit_edge17
  %73 = add i32 %n, -1, !dbg !356
  br label %74, !dbg !356

; <label>:74                                      ; preds = %74, %.lr.ph8
  %indvars.iv41 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next42, %74 ]
  %75 = getelementptr inbounds double** %12, i64 %indvars.iv41, !dbg !358
  %76 = bitcast double** %75 to i8**, !dbg !358
  %77 = load i8** %76, align 8, !dbg !358, !tbaa !105
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 170, i8* %77) #6, !dbg !358
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1, !dbg !356
  %lftr.wideiv43 = trunc i64 %indvars.iv41 to i32, !dbg !356
  %exitcond44 = icmp eq i32 %lftr.wideiv43, %73, !dbg !356
  br i1 %exitcond44, label %._crit_edge9, label %74, !dbg !356

._crit_edge9.thread:                              ; preds = %._crit_edge17.thread, %._crit_edge17
  %.ph99 = phi i8* [ %11, %._crit_edge17 ], [ %.ph96, %._crit_edge17.thread ]
  %nzero.0.lcssa9498.ph = phi i32 [ %nzero.1, %._crit_edge17 ], [ %nzero.0.lcssa94.ph, %._crit_edge17.thread ]
  tail call void @save_free(i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 171, i8* %.ph99) #6, !dbg !360
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !57, metadata !72), !dbg !284
  br label %._crit_edge, !dbg !361

._crit_edge9:                                     ; preds = %74
  tail call void @save_free(i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 171, i8* %11) #6, !dbg !360
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !57, metadata !72), !dbg !284
  br i1 %3, label %.lr.ph, label %._crit_edge, !dbg !361

.lr.ph:                                           ; preds = %._crit_edge9
  %78 = add i32 %n, -1, !dbg !361
  br label %79, !dbg !361

; <label>:79                                      ; preds = %79, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %79 ]
  %80 = getelementptr inbounds double** %2, i64 %indvars.iv, !dbg !363
  %81 = bitcast double** %80 to i8**, !dbg !363
  %82 = load i8** %81, align 8, !dbg !363, !tbaa !105
  tail call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 173, i8* %82) #6, !dbg !363
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !361
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !361
  %exitcond = icmp eq i32 %lftr.wideiv, %78, !dbg !361
  br i1 %exitcond, label %._crit_edge, label %79, !dbg !361

._crit_edge:                                      ; preds = %79, %._crit_edge9.thread, %._crit_edge9
  %nzero.0.lcssa9498100 = phi i32 [ %nzero.0.lcssa9498.ph, %._crit_edge9.thread ], [ %nzero.1, %._crit_edge9 ], [ %nzero.1, %79 ]
  tail call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 174, i8* %1) #6, !dbg !365
  ret i32 %nzero.0.lcssa9498100, !dbg !366
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readnone }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!68, !69, !70}
!llvm.ident = !{!71}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/nrjac.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !11, !39, !61}
!4 = !DISubprogram(name: "__sigbits", scope: !5, file: !5, line: 114, type: !6, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !9)
!5 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !8}
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !{!10}
!10 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !4, file: !5, line: 114, type: !8)
!11 = !DISubprogram(name: "jacobi", scope: !1, file: !1, line: 47, type: !12, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, function: void (double**, i32, double*, double**, i32*)* @jacobi, variables: !18)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14, !8, !15, !14, !17}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38}
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !11, file: !1, line: 47, type: !14)
!20 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !11, file: !1, line: 47, type: !8)
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "d", arg: 3, scope: !11, file: !1, line: 47, type: !15)
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 4, scope: !11, file: !1, line: 47, type: !14)
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nrot", arg: 5, scope: !11, file: !1, line: 47, type: !17)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !11, file: !1, line: 49, type: !8)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !11, file: !1, line: 49, type: !8)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iq", scope: !11, file: !1, line: 50, type: !8)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ip", scope: !11, file: !1, line: 50, type: !8)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tresh", scope: !11, file: !1, line: 51, type: !16)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "theta", scope: !11, file: !1, line: 51, type: !16)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tau", scope: !11, file: !1, line: 51, type: !16)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !11, file: !1, line: 51, type: !16)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sm", scope: !11, file: !1, line: 51, type: !16)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !11, file: !1, line: 51, type: !16)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "h", scope: !11, file: !1, line: 51, type: !16)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !11, file: !1, line: 51, type: !16)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !11, file: !1, line: 51, type: !16)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !11, file: !1, line: 51, type: !15)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !11, file: !1, line: 51, type: !15)
!39 = !DISubprogram(name: "m_inv_gen", scope: !1, file: !1, line: 129, type: !40, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float**, i32, float**)* @m_inv_gen, variables: !47)
!40 = !DISubroutineType(types: !41)
!41 = !{!8, !42, !8, !42}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !45, line: 87, baseType: !46)
!45 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!46 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!48 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !39, file: !1, line: 129, type: !42)
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !39, file: !1, line: 129, type: !8)
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "minv", arg: 3, scope: !39, file: !1, line: 129, type: !42)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "md", scope: !39, file: !1, line: 131, type: !14)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !39, file: !1, line: 131, type: !14)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "eig", scope: !39, file: !1, line: 131, type: !15)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tol", scope: !39, file: !1, line: 131, type: !16)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !39, file: !1, line: 131, type: !16)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nzero", scope: !39, file: !1, line: 132, type: !8)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !39, file: !1, line: 132, type: !8)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !39, file: !1, line: 132, type: !8)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !39, file: !1, line: 132, type: !8)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nrot", scope: !39, file: !1, line: 132, type: !8)
!61 = !DISubprogram(name: "jacobierror", scope: !1, file: !1, line: 42, type: !62, isLocal: true, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, variables: !66)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !64}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!66 = !{!67}
!67 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "error_text", arg: 1, scope: !61, file: !1, line: 42, type: !64)
!68 = !{i32 2, !"Dwarf Version", i32 2}
!69 = !{i32 2, !"Debug Info Version", i32 700000003}
!70 = !{i32 1, !"PIC Level", i32 2}
!71 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!72 = !DIExpression()
!73 = !DILocation(line: 114, column: 15, scope: !4)
!74 = !DILocation(line: 116, column: 20, scope: !4)
!75 = !DILocation(line: 116, column: 12, scope: !4)
!76 = !DILocation(line: 116, column: 57, scope: !4)
!77 = !DILocation(line: 116, column: 45, scope: !4)
!78 = !DILocation(line: 116, column: 5, scope: !4)
!79 = !DILocation(line: 47, column: 22, scope: !11)
!80 = !DILocation(line: 47, column: 28, scope: !11)
!81 = !DILocation(line: 47, column: 37, scope: !11)
!82 = !DILocation(line: 47, column: 50, scope: !11)
!83 = !DILocation(line: 47, column: 57, scope: !11)
!84 = !DILocation(line: 53, column: 3, scope: !11)
!85 = !DILocation(line: 51, column: 40, scope: !11)
!86 = !DILocation(line: 54, column: 3, scope: !11)
!87 = !DILocation(line: 51, column: 43, scope: !11)
!88 = !DILocation(line: 50, column: 10, scope: !11)
!89 = !DILocation(line: 55, column: 16, scope: !90)
!90 = distinct !DILexicalBlock(scope: !91, file: !1, line: 55, column: 3)
!91 = distinct !DILexicalBlock(scope: !11, file: !1, line: 55, column: 3)
!92 = !DILocation(line: 55, column: 3, scope: !91)
!93 = !DILocation(line: 59, column: 3, scope: !94)
!94 = distinct !DILexicalBlock(scope: !11, file: !1, line: 59, column: 3)
!95 = !DILocation(line: 66, column: 20, scope: !96)
!96 = distinct !DILexicalBlock(scope: !97, file: !1, line: 66, column: 5)
!97 = distinct !DILexicalBlock(scope: !98, file: !1, line: 66, column: 5)
!98 = distinct !DILexicalBlock(scope: !99, file: !1, line: 64, column: 25)
!99 = distinct !DILexicalBlock(scope: !100, file: !1, line: 64, column: 3)
!100 = distinct !DILexicalBlock(scope: !11, file: !1, line: 64, column: 3)
!101 = !DILocation(line: 56, column: 28, scope: !102)
!102 = distinct !DILexicalBlock(scope: !103, file: !1, line: 56, column: 5)
!103 = distinct !DILexicalBlock(scope: !104, file: !1, line: 56, column: 5)
!104 = distinct !DILexicalBlock(scope: !90, file: !1, line: 55, column: 26)
!105 = !{!106, !106, i64 0}
!106 = !{!"any pointer", !107, i64 0}
!107 = !{!"omnipotent char", !108, i64 0}
!108 = !{!"Simple C/C++ TBAA"}
!109 = !DILocation(line: 56, column: 37, scope: !102)
!110 = !DILocation(line: 57, column: 5, scope: !104)
!111 = !DILocation(line: 57, column: 14, scope: !104)
!112 = !{!113, !113, i64 0}
!113 = !{!"double", !107, i64 0}
!114 = !DILocation(line: 60, column: 17, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !1, line: 59, column: 25)
!116 = distinct !DILexicalBlock(scope: !94, file: !1, line: 59, column: 3)
!117 = !DILocation(line: 60, column: 11, scope: !115)
!118 = !DILocation(line: 60, column: 16, scope: !115)
!119 = !DILocation(line: 60, column: 5, scope: !115)
!120 = !DILocation(line: 60, column: 10, scope: !115)
!121 = !DILocation(line: 61, column: 5, scope: !115)
!122 = !DILocation(line: 61, column: 10, scope: !115)
!123 = !DILocation(line: 63, column: 8, scope: !11)
!124 = !{!125, !125, i64 0}
!125 = !{!"int", !107, i64 0}
!126 = !DILocation(line: 49, column: 9, scope: !11)
!127 = !DILocation(line: 66, column: 18, scope: !96)
!128 = !DILocation(line: 76, column: 22, scope: !129)
!129 = distinct !DILexicalBlock(scope: !98, file: !1, line: 75, column: 9)
!130 = !DILocation(line: 76, column: 20, scope: !129)
!131 = !DILocation(line: 64, column: 3, scope: !100)
!132 = !DILocation(line: 66, column: 5, scope: !97)
!133 = !DILocation(line: 67, column: 23, scope: !134)
!134 = distinct !DILexicalBlock(scope: !135, file: !1, line: 67, column: 7)
!135 = distinct !DILexicalBlock(scope: !136, file: !1, line: 67, column: 7)
!136 = distinct !DILexicalBlock(scope: !96, file: !1, line: 66, column: 30)
!137 = !DILocation(line: 67, column: 7, scope: !135)
!138 = !DILocation(line: 68, column: 20, scope: !134)
!139 = !DILocation(line: 68, column: 15, scope: !134)
!140 = !DILocation(line: 68, column: 12, scope: !134)
!141 = !DILocation(line: 51, column: 28, scope: !11)
!142 = !DILocation(line: 70, column: 9, scope: !143)
!143 = distinct !DILexicalBlock(scope: !98, file: !1, line: 70, column: 9)
!144 = !DILocation(line: 70, column: 18, scope: !143)
!145 = !DILocation(line: 70, column: 9, scope: !98)
!146 = !DILocation(line: 71, column: 7, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !1, line: 70, column: 34)
!148 = !DILocation(line: 72, column: 7, scope: !147)
!149 = !DILocation(line: 73, column: 7, scope: !147)
!150 = !DILocation(line: 75, column: 11, scope: !129)
!151 = !DILocation(line: 75, column: 9, scope: !98)
!152 = !DILocation(line: 76, column: 16, scope: !129)
!153 = !DILocation(line: 76, column: 19, scope: !129)
!154 = !DILocation(line: 51, column: 10, scope: !11)
!155 = !DILocation(line: 76, column: 7, scope: !129)
!156 = !DILocation(line: 79, column: 5, scope: !157)
!157 = distinct !DILexicalBlock(scope: !98, file: !1, line: 79, column: 5)
!158 = !DILocation(line: 82, column: 8, scope: !159)
!159 = distinct !DILexicalBlock(scope: !160, file: !1, line: 82, column: 6)
!160 = distinct !DILexicalBlock(scope: !161, file: !1, line: 80, column: 33)
!161 = distinct !DILexicalBlock(scope: !162, file: !1, line: 80, column: 7)
!162 = distinct !DILexicalBlock(scope: !163, file: !1, line: 80, column: 7)
!163 = distinct !DILexicalBlock(scope: !164, file: !1, line: 79, column: 30)
!164 = distinct !DILexicalBlock(scope: !157, file: !1, line: 79, column: 5)
!165 = !DILocation(line: 79, column: 18, scope: !164)
!166 = !DILocation(line: 120, column: 5, scope: !167)
!167 = distinct !DILexicalBlock(scope: !98, file: !1, line: 120, column: 5)
!168 = !DILocation(line: 50, column: 7, scope: !11)
!169 = !DILocation(line: 80, column: 23, scope: !161)
!170 = !DILocation(line: 80, column: 7, scope: !162)
!171 = !DILocation(line: 81, column: 22, scope: !160)
!172 = !DILocation(line: 83, column: 30, scope: !159)
!173 = !DILocation(line: 99, column: 11, scope: !174)
!174 = distinct !DILexicalBlock(scope: !175, file: !1, line: 86, column: 43)
!175 = distinct !DILexicalBlock(scope: !159, file: !1, line: 86, column: 18)
!176 = !DILocation(line: 104, column: 22, scope: !177)
!177 = distinct !DILexicalBlock(scope: !178, file: !1, line: 104, column: 11)
!178 = distinct !DILexicalBlock(scope: !174, file: !1, line: 104, column: 11)
!179 = !DILocation(line: 81, column: 17, scope: !160)
!180 = !DILocation(line: 81, column: 16, scope: !160)
!181 = !DILocation(line: 51, column: 35, scope: !11)
!182 = !DILocation(line: 82, column: 12, scope: !159)
!183 = !DILocation(line: 83, column: 25, scope: !159)
!184 = !DILocation(line: 83, column: 24, scope: !159)
!185 = !DILocation(line: 83, column: 10, scope: !159)
!186 = !DILocation(line: 83, column: 38, scope: !159)
!187 = !DILocation(line: 84, column: 30, scope: !159)
!188 = !DILocation(line: 84, column: 25, scope: !159)
!189 = !DILocation(line: 84, column: 24, scope: !159)
!190 = !DILocation(line: 84, column: 10, scope: !159)
!191 = !DILocation(line: 82, column: 6, scope: !160)
!192 = !DILocation(line: 85, column: 20, scope: !159)
!193 = !DILocation(line: 85, column: 11, scope: !159)
!194 = !DILocation(line: 86, column: 34, scope: !175)
!195 = !DILocation(line: 86, column: 18, scope: !159)
!196 = !DILocation(line: 87, column: 13, scope: !174)
!197 = !DILocation(line: 87, column: 19, scope: !174)
!198 = !DILocation(line: 87, column: 18, scope: !174)
!199 = !DILocation(line: 51, column: 33, scope: !11)
!200 = !DILocation(line: 88, column: 33, scope: !201)
!201 = distinct !DILexicalBlock(scope: !174, file: !1, line: 88, column: 16)
!202 = !DILocation(line: 88, column: 32, scope: !201)
!203 = !DILocation(line: 88, column: 18, scope: !201)
!204 = !DILocation(line: 88, column: 16, scope: !174)
!205 = !DILocation(line: 89, column: 26, scope: !201)
!206 = !DILocation(line: 51, column: 26, scope: !11)
!207 = !DILocation(line: 89, column: 13, scope: !201)
!208 = !DILocation(line: 91, column: 22, scope: !209)
!209 = distinct !DILexicalBlock(scope: !201, file: !1, line: 90, column: 16)
!210 = !DILocation(line: 91, column: 24, scope: !209)
!211 = !DILocation(line: 51, column: 16, scope: !11)
!212 = !DILocation(line: 92, column: 20, scope: !209)
!213 = !DILocation(line: 92, column: 46, scope: !209)
!214 = !DILocation(line: 92, column: 40, scope: !209)
!215 = !DILocation(line: 92, column: 32, scope: !209)
!216 = !DILocation(line: 92, column: 31, scope: !209)
!217 = !DILocation(line: 92, column: 18, scope: !209)
!218 = !DILocation(line: 93, column: 23, scope: !219)
!219 = distinct !DILexicalBlock(scope: !209, file: !1, line: 93, column: 17)
!220 = !DILocation(line: 93, column: 17, scope: !209)
!221 = !DILocation(line: 93, column: 34, scope: !219)
!222 = !DILocation(line: 93, column: 30, scope: !219)
!223 = !DILocation(line: 95, column: 25, scope: !174)
!224 = !DILocation(line: 95, column: 23, scope: !174)
!225 = !DILocation(line: 95, column: 17, scope: !174)
!226 = !DILocation(line: 95, column: 16, scope: !174)
!227 = !DILocation(line: 51, column: 37, scope: !11)
!228 = !DILocation(line: 96, column: 14, scope: !174)
!229 = !DILocation(line: 51, column: 31, scope: !11)
!230 = !DILocation(line: 97, column: 21, scope: !174)
!231 = !DILocation(line: 97, column: 16, scope: !174)
!232 = !DILocation(line: 51, column: 22, scope: !11)
!233 = !DILocation(line: 98, column: 14, scope: !174)
!234 = !DILocation(line: 99, column: 17, scope: !174)
!235 = !DILocation(line: 100, column: 11, scope: !174)
!236 = !DILocation(line: 100, column: 17, scope: !174)
!237 = !DILocation(line: 101, column: 17, scope: !174)
!238 = !DILocation(line: 102, column: 17, scope: !174)
!239 = !DILocation(line: 103, column: 20, scope: !174)
!240 = !DILocation(line: 49, column: 7, scope: !11)
!241 = !DILocation(line: 104, column: 11, scope: !178)
!242 = !DILocation(line: 107, column: 25, scope: !243)
!243 = distinct !DILexicalBlock(scope: !244, file: !1, line: 107, column: 11)
!244 = distinct !DILexicalBlock(scope: !174, file: !1, line: 107, column: 11)
!245 = !DILocation(line: 107, column: 11, scope: !244)
!246 = !DILocation(line: 105, column: 13, scope: !247)
!247 = distinct !DILexicalBlock(scope: !177, file: !1, line: 104, column: 32)
!248 = !DILocation(line: 110, column: 20, scope: !249)
!249 = distinct !DILexicalBlock(scope: !174, file: !1, line: 110, column: 11)
!250 = !DILocation(line: 110, column: 25, scope: !251)
!251 = distinct !DILexicalBlock(scope: !249, file: !1, line: 110, column: 11)
!252 = !DILocation(line: 110, column: 11, scope: !249)
!253 = !DILocation(line: 111, column: 13, scope: !254)
!254 = distinct !DILexicalBlock(scope: !251, file: !1, line: 110, column: 34)
!255 = !DILocation(line: 108, column: 13, scope: !256)
!256 = distinct !DILexicalBlock(scope: !243, file: !1, line: 107, column: 35)
!257 = !DILocation(line: 113, column: 11, scope: !258)
!258 = distinct !DILexicalBlock(scope: !174, file: !1, line: 113, column: 11)
!259 = !DILocation(line: 114, column: 13, scope: !260)
!260 = distinct !DILexicalBlock(scope: !261, file: !1, line: 113, column: 31)
!261 = distinct !DILexicalBlock(scope: !258, file: !1, line: 113, column: 11)
!262 = !DILocation(line: 116, column: 11, scope: !174)
!263 = !DILocation(line: 117, column: 9, scope: !174)
!264 = !DILocation(line: 80, column: 29, scope: !161)
!265 = !DILocation(line: 121, column: 17, scope: !266)
!266 = distinct !DILexicalBlock(scope: !267, file: !1, line: 120, column: 28)
!267 = distinct !DILexicalBlock(scope: !167, file: !1, line: 120, column: 5)
!268 = !DILocation(line: 121, column: 7, scope: !266)
!269 = !DILocation(line: 121, column: 13, scope: !266)
!270 = !DILocation(line: 122, column: 7, scope: !266)
!271 = !DILocation(line: 122, column: 14, scope: !266)
!272 = !DILocation(line: 123, column: 14, scope: !266)
!273 = !DILocation(line: 64, column: 21, scope: !99)
!274 = !DILocation(line: 64, column: 14, scope: !99)
!275 = !DILocation(line: 42, column: 31, scope: !61, inlinedAt: !276)
!276 = distinct !DILocation(line: 126, column: 3, scope: !11)
!277 = !DILocation(line: 44, column: 3, scope: !61, inlinedAt: !276)
!278 = !DILocation(line: 127, column: 1, scope: !11)
!279 = !DILocation(line: 129, column: 22, scope: !39)
!280 = !DILocation(line: 129, column: 28, scope: !39)
!281 = !DILocation(line: 129, column: 37, scope: !39)
!282 = !DILocation(line: 134, column: 3, scope: !39)
!283 = !DILocation(line: 131, column: 12, scope: !39)
!284 = !DILocation(line: 132, column: 16, scope: !39)
!285 = !DILocation(line: 135, column: 13, scope: !286)
!286 = distinct !DILexicalBlock(scope: !287, file: !1, line: 135, column: 3)
!287 = distinct !DILexicalBlock(scope: !39, file: !1, line: 135, column: 3)
!288 = !DILocation(line: 135, column: 3, scope: !287)
!289 = !DILocation(line: 137, column: 3, scope: !39)
!290 = !DILocation(line: 131, column: 17, scope: !39)
!291 = !DILocation(line: 138, column: 3, scope: !292)
!292 = distinct !DILexicalBlock(scope: !39, file: !1, line: 138, column: 3)
!293 = !DILocation(line: 136, column: 5, scope: !286)
!294 = !DILocation(line: 139, column: 5, scope: !295)
!295 = distinct !DILexicalBlock(scope: !292, file: !1, line: 138, column: 3)
!296 = !DILocation(line: 140, column: 3, scope: !39)
!297 = !DILocation(line: 131, column: 20, scope: !39)
!298 = !DILocation(line: 141, column: 3, scope: !299)
!299 = distinct !DILexicalBlock(scope: !39, file: !1, line: 141, column: 3)
!300 = !DILocation(line: 143, column: 18, scope: !301)
!301 = distinct !DILexicalBlock(scope: !302, file: !1, line: 142, column: 5)
!302 = distinct !DILexicalBlock(scope: !303, file: !1, line: 142, column: 5)
!303 = distinct !DILexicalBlock(scope: !299, file: !1, line: 141, column: 3)
!304 = !DILocation(line: 143, column: 7, scope: !301)
!305 = !DILocation(line: 142, column: 5, scope: !302)
!306 = !DILocation(line: 146, column: 3, scope: !307)
!307 = distinct !DILexicalBlock(scope: !39, file: !1, line: 146, column: 3)
!308 = !{!309, !309, i64 0}
!309 = !{!"float", !107, i64 0}
!310 = !DILocation(line: 143, column: 16, scope: !301)
!311 = !DILocation(line: 147, column: 17, scope: !312)
!312 = distinct !DILexicalBlock(scope: !307, file: !1, line: 146, column: 3)
!313 = !DILocation(line: 147, column: 12, scope: !312)
!314 = !DILocation(line: 147, column: 9, scope: !312)
!315 = !DILocation(line: 131, column: 24, scope: !39)
!316 = !DILocation(line: 132, column: 22, scope: !39)
!317 = !DILocation(line: 150, column: 3, scope: !39)
!318 = !DILocation(line: 132, column: 10, scope: !39)
!319 = !DILocation(line: 153, column: 3, scope: !320)
!320 = distinct !DILexicalBlock(scope: !39, file: !1, line: 153, column: 3)
!321 = !DILocation(line: 148, column: 18, scope: !39)
!322 = !DILocation(line: 148, column: 17, scope: !39)
!323 = !DILocation(line: 160, column: 3, scope: !324)
!324 = distinct !DILexicalBlock(scope: !39, file: !1, line: 160, column: 3)
!325 = !DILocation(line: 154, column: 14, scope: !326)
!326 = distinct !DILexicalBlock(scope: !327, file: !1, line: 154, column: 9)
!327 = distinct !DILexicalBlock(scope: !320, file: !1, line: 153, column: 3)
!328 = !DILocation(line: 154, column: 9, scope: !326)
!329 = !DILocation(line: 154, column: 22, scope: !326)
!330 = !DILocation(line: 154, column: 9, scope: !327)
!331 = !DILocation(line: 155, column: 14, scope: !332)
!332 = distinct !DILexicalBlock(scope: !326, file: !1, line: 154, column: 29)
!333 = !DILocation(line: 156, column: 12, scope: !332)
!334 = !DILocation(line: 157, column: 5, scope: !332)
!335 = !DILocation(line: 158, column: 19, scope: !326)
!336 = !DILocation(line: 158, column: 14, scope: !326)
!337 = !DILocation(line: 165, column: 7, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !1, line: 161, column: 24)
!339 = distinct !DILexicalBlock(scope: !340, file: !1, line: 161, column: 5)
!340 = distinct !DILexicalBlock(scope: !341, file: !1, line: 161, column: 5)
!341 = distinct !DILexicalBlock(scope: !324, file: !1, line: 160, column: 3)
!342 = !DILocation(line: 164, column: 14, scope: !343)
!343 = distinct !DILexicalBlock(scope: !344, file: !1, line: 163, column: 7)
!344 = distinct !DILexicalBlock(scope: !338, file: !1, line: 163, column: 7)
!345 = !DILocation(line: 161, column: 5, scope: !340)
!346 = !DILocation(line: 164, column: 22, scope: !343)
!347 = !DILocation(line: 163, column: 7, scope: !344)
!348 = !DILocation(line: 164, column: 7, scope: !343)
!349 = !DILocation(line: 164, column: 13, scope: !343)
!350 = !DILocation(line: 164, column: 21, scope: !343)
!351 = !DILocation(line: 164, column: 4, scope: !343)
!352 = !DILocation(line: 131, column: 28, scope: !39)
!353 = !DILocation(line: 165, column: 20, scope: !338)
!354 = !DILocation(line: 165, column: 18, scope: !338)
!355 = !DILocation(line: 168, column: 3, scope: !39)
!356 = !DILocation(line: 169, column: 3, scope: !357)
!357 = distinct !DILexicalBlock(scope: !39, file: !1, line: 169, column: 3)
!358 = !DILocation(line: 170, column: 5, scope: !359)
!359 = distinct !DILexicalBlock(scope: !357, file: !1, line: 169, column: 3)
!360 = !DILocation(line: 171, column: 3, scope: !39)
!361 = !DILocation(line: 172, column: 3, scope: !362)
!362 = distinct !DILexicalBlock(scope: !39, file: !1, line: 172, column: 3)
!363 = !DILocation(line: 173, column: 5, scope: !364)
!364 = distinct !DILexicalBlock(scope: !362, file: !1, line: 172, column: 3)
!365 = !DILocation(line: 174, column: 3, scope: !39)
!366 = !DILocation(line: 176, column: 3, scope: !39)

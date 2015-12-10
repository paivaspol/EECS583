; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }
%struct.PComm = type { i32*, i8**, i8**, i32, i32*, i32, i32, i32 }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGA = type { i8*, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32, %struct.PGExtras*, %struct.PConnectivity*, %struct.PComm*, %struct.PComm*, i32, i32, %struct.PGA* }

@.str = private unnamed_addr constant [75 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"PUGH\00", align 1
@.str2 = private unnamed_addr constant [27 x i8] c"Inconsistent PUGH topology\00", align 1
@.str3 = private unnamed_addr constant [89 x i8] c"$Header: /cactus/CactusPUGH/PUGH/src/SetupPGV.c,v 1.41 2001/11/02 16:18:03 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_PUGH_SetupPGV_c() #0 {
  ret i8* getelementptr inbounds ([89 x i8]* @.str3, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.PGExtras* @PUGH_SetupPGExtras(i32 %dim, i32* nocapture readonly %perme, i32 %stagger, i32* nocapture readonly %sh, i32* nocapture readonly %nghosts, i32 %total_procs, i32* %nprocs, i32 %this_proc) #1 {
  %1 = tail call i8* @malloc(i64 296) #7
  %2 = bitcast i8* %1 to %struct.PGExtras*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %12, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call i32 @PUGH_SetupPGExtrasMemory(i32 %dim, i32 %total_procs, i32* undef, %struct.PGExtras* %2) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %4
  %8 = bitcast i8* %1 to i32*
  store i32 %dim, i32* %8, align 4, !tbaa !2
  %9 = tail call i32 @PUGH_SetupPGExtrasSizes(i32 %dim, i32* %perme, i32 %stagger, i32* %sh, i32* %nghosts, i32 %total_procs, i32* %nprocs, i32 %this_proc, %struct.PGExtras* %2) #8
  %10 = tail call i32 @PUGH_SetupPGExtrasOwnership(i32 %dim, i32* %perme, i32 undef, i32* undef, i32* undef, i32 undef, i32* undef, i32 %this_proc, %struct.PGExtras* %2) #8
  %11 = tail call i32 @PUGH_SetupPGExtrasStaggering(i32 %dim, i32* undef, i32 undef, i32* undef, i32* undef, i32 undef, i32* undef, i32 %this_proc, %struct.PGExtras* %2) #8
  br label %12

; <label>:12                                      ; preds = %4, %0, %7
  ret %struct.PGExtras* %2
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_SetupPGExtrasMemory(i32 %dim, i32 %total_procs, i32* nocapture readnone %nprocs, %struct.PGExtras* %this) #1 {
  %1 = icmp eq %struct.PGExtras* %this, null
  br i1 %1, label %.thread3, label %2

; <label>:2                                       ; preds = %0
  %3 = sext i32 %total_procs to i64
  %4 = shl nsw i64 %3, 3
  %5 = tail call i8* @malloc(i64 %4) #7
  %6 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 3
  %7 = bitcast i32*** %6 to i8**
  store i8* %5, i8** %7, align 8, !tbaa !9
  %8 = tail call i8* @malloc(i64 %4) #7
  %9 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 4
  %10 = bitcast i32*** %9 to i8**
  store i8* %8, i8** %10, align 8, !tbaa !10
  %11 = tail call i8* @malloc(i64 %4) #7
  %12 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 9
  %13 = bitcast i32*** %12 to i8**
  store i8* %11, i8** %13, align 8, !tbaa !11
  %14 = shl nsw i64 %3, 2
  %15 = tail call i8* @malloc(i64 %14) #7
  %16 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 8
  %17 = bitcast i32** %16 to i8**
  store i8* %15, i8** %17, align 8, !tbaa !12
  %18 = sext i32 %dim to i64
  %19 = shl nsw i64 %18, 2
  %20 = tail call i8* @malloc(i64 %19) #7
  %21 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 12
  %22 = bitcast i32** %21 to i8**
  store i8* %20, i8** %22, align 8, !tbaa !13
  %23 = tail call i8* @malloc(i64 %19) #7
  %24 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 1
  %25 = bitcast i32** %24 to i8**
  store i8* %23, i8** %25, align 8, !tbaa !14
  %26 = tail call i8* @malloc(i64 %19) #7
  %27 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 6
  %28 = bitcast i32** %27 to i8**
  store i8* %26, i8** %28, align 8, !tbaa !15
  %29 = shl i32 %dim, 1
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 2
  %32 = tail call i8* @malloc(i64 %31) #7
  %33 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 5
  %34 = bitcast i32** %33 to i8**
  store i8* %32, i8** %34, align 8, !tbaa !16
  %35 = tail call i8* @malloc(i64 %19) #7
  %36 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 10
  %37 = bitcast i32** %36 to i8**
  store i8* %35, i8** %37, align 8, !tbaa !17
  %38 = tail call i8* @malloc(i64 %19) #7
  %39 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 11
  %40 = bitcast i32** %39 to i8**
  store i8* %38, i8** %40, align 8, !tbaa !18
  %41 = icmp eq i8* %5, null
  %42 = bitcast i8* %5 to i8**
  %43 = icmp eq i8* %8, null
  %or.cond53 = or i1 %41, %43
  %44 = icmp eq i8* %11, null
  %or.cond54 = or i1 %or.cond53, %44
  %45 = icmp eq i8* %15, null
  %or.cond55 = or i1 %or.cond54, %45
  %46 = icmp eq i8* %20, null
  %or.cond56 = or i1 %or.cond55, %46
  %47 = icmp eq i8* %23, null
  %or.cond57 = or i1 %or.cond56, %47
  %48 = icmp eq i8* %26, null
  %or.cond58 = or i1 %or.cond57, %48
  %49 = icmp eq i8* %32, null
  %or.cond59 = or i1 %or.cond58, %49
  br i1 %or.cond59, label %117, label %50

; <label>:50                                      ; preds = %2
  %51 = icmp eq i8* %35, null
  %52 = icmp eq i8* %38, null
  %or.cond = or i1 %52, %51
  br i1 %or.cond, label %117, label %53

; <label>:53                                      ; preds = %50
  %54 = mul nsw i32 %total_procs, %dim
  %55 = sext i32 %54 to i64
  %56 = shl nsw i64 %55, 2
  %57 = tail call i8* @malloc(i64 %56) #7
  store i8* %57, i8** %42, align 8, !tbaa !19
  %58 = tail call i8* @malloc(i64 %56) #7
  %59 = bitcast i32*** %9 to i8***
  %60 = load i8*** %59, align 8, !tbaa !10
  store i8* %58, i8** %60, align 8, !tbaa !19
  %61 = mul i32 %29, %total_procs
  %62 = sext i32 %61 to i64
  %63 = shl nsw i64 %62, 2
  %64 = tail call i8* @malloc(i64 %63) #7
  %65 = bitcast i32*** %12 to i8***
  %66 = load i8*** %65, align 8, !tbaa !11
  store i8* %64, i8** %66, align 8, !tbaa !19
  %67 = load i32*** %6, align 8, !tbaa !9
  %68 = load i32** %67, align 8, !tbaa !19
  %69 = icmp eq i32* %68, null
  %70 = bitcast i32** %67 to i8**
  br i1 %69, label %98, label %71

; <label>:71                                      ; preds = %53
  %72 = load i32*** %9, align 8, !tbaa !10
  %73 = load i32** %72, align 8, !tbaa !19
  %74 = icmp eq i32* %73, null
  br i1 %74, label %98, label %75

; <label>:75                                      ; preds = %71
  %76 = load i32*** %12, align 8, !tbaa !11
  %77 = load i32** %76, align 8, !tbaa !19
  %78 = icmp eq i32* %77, null
  br i1 %78, label %98, label %.preheader7

.preheader7:                                      ; preds = %75
  %79 = icmp sgt i32 %total_procs, 1
  br i1 %79, label %.lr.ph24, label %.loopexit

.lr.ph24:                                         ; preds = %.preheader7
  %80 = add i32 %total_procs, -1
  br label %81

; <label>:81                                      ; preds = %._crit_edge51, %.lr.ph24
  %82 = phi i32* [ %68, %.lr.ph24 ], [ %.pre52, %._crit_edge51 ]
  %83 = phi i32** [ %67, %.lr.ph24 ], [ %.pre, %._crit_edge51 ]
  %indvars.iv47 = phi i64 [ 1, %.lr.ph24 ], [ %indvars.iv.next48, %._crit_edge51 ]
  %84 = mul nsw i64 %indvars.iv47, %18
  %85 = getelementptr inbounds i32* %82, i64 %84
  %86 = getelementptr inbounds i32** %83, i64 %indvars.iv47
  store i32* %85, i32** %86, align 8, !tbaa !19
  %87 = load i32*** %9, align 8, !tbaa !10
  %88 = load i32** %87, align 8, !tbaa !19
  %89 = getelementptr inbounds i32* %88, i64 %84
  %90 = getelementptr inbounds i32** %87, i64 %indvars.iv47
  store i32* %89, i32** %90, align 8, !tbaa !19
  %91 = load i32*** %12, align 8, !tbaa !11
  %92 = load i32** %91, align 8, !tbaa !19
  %93 = trunc i64 %indvars.iv47 to i32
  %94 = mul i32 %29, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32* %92, i64 %95
  %97 = getelementptr inbounds i32** %91, i64 %indvars.iv47
  store i32* %96, i32** %97, align 8, !tbaa !19
  %exitcond50 = icmp eq i32 %93, %80
  br i1 %exitcond50, label %.loopexit, label %._crit_edge51

._crit_edge51:                                    ; preds = %81
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %.pre = load i32*** %6, align 8, !tbaa !9
  %.pre52 = load i32** %.pre, align 8, !tbaa !19
  br label %81

; <label>:98                                      ; preds = %75, %71, %53
  %99 = load i8** %70, align 8, !tbaa !19
  tail call void @free(i8* %99) #8
  %100 = load i32*** %6, align 8, !tbaa !9
  store i32* null, i32** %100, align 8, !tbaa !19
  %101 = load i8*** %59, align 8, !tbaa !10
  %102 = load i8** %101, align 8, !tbaa !19
  tail call void @free(i8* %102) #8
  %103 = load i32*** %9, align 8, !tbaa !10
  store i32* null, i32** %103, align 8, !tbaa !19
  %104 = load i8*** %65, align 8, !tbaa !11
  %105 = load i8** %104, align 8, !tbaa !19
  tail call void @free(i8* %105) #8
  %106 = load i32*** %12, align 8, !tbaa !11
  store i32* null, i32** %106, align 8, !tbaa !19
  %107 = load i8** %7, align 8, !tbaa !9
  tail call void @free(i8* %107) #8
  store i32** null, i32*** %6, align 8, !tbaa !9
  %108 = load i8** %10, align 8, !tbaa !10
  tail call void @free(i8* %108) #8
  store i32** null, i32*** %9, align 8, !tbaa !10
  %109 = load i8** %13, align 8, !tbaa !11
  tail call void @free(i8* %109) #8
  store i32** null, i32*** %12, align 8, !tbaa !11
  %110 = load i8** %17, align 8, !tbaa !12
  tail call void @free(i8* %110) #8
  store i32* null, i32** %16, align 8, !tbaa !12
  %111 = load i8** %22, align 8, !tbaa !13
  tail call void @free(i8* %111) #8
  store i32* null, i32** %21, align 8, !tbaa !13
  %112 = load i8** %25, align 8, !tbaa !14
  tail call void @free(i8* %112) #8
  store i32* null, i32** %24, align 8, !tbaa !14
  %113 = load i8** %28, align 8, !tbaa !15
  tail call void @free(i8* %113) #8
  store i32* null, i32** %27, align 8, !tbaa !15
  %114 = load i8** %34, align 8, !tbaa !16
  tail call void @free(i8* %114) #8
  store i32* null, i32** %33, align 8, !tbaa !16
  %115 = load i8** %37, align 8, !tbaa !17
  tail call void @free(i8* %115) #8
  store i32* null, i32** %36, align 8, !tbaa !17
  %116 = load i8** %40, align 8, !tbaa !18
  tail call void @free(i8* %116) #8
  store i32* null, i32** %39, align 8, !tbaa !18
  br label %.loopexit

; <label>:117                                     ; preds = %50, %2
  tail call void @free(i8* %5) #8
  store i32** null, i32*** %6, align 8, !tbaa !9
  %118 = load i8** %10, align 8, !tbaa !10
  tail call void @free(i8* %118) #8
  store i32** null, i32*** %9, align 8, !tbaa !10
  %119 = load i8** %13, align 8, !tbaa !11
  tail call void @free(i8* %119) #8
  store i32** null, i32*** %12, align 8, !tbaa !11
  %120 = load i8** %17, align 8, !tbaa !12
  tail call void @free(i8* %120) #8
  store i32* null, i32** %16, align 8, !tbaa !12
  %121 = load i8** %22, align 8, !tbaa !13
  tail call void @free(i8* %121) #8
  store i32* null, i32** %21, align 8, !tbaa !13
  %122 = load i8** %25, align 8, !tbaa !14
  tail call void @free(i8* %122) #8
  store i32* null, i32** %24, align 8, !tbaa !14
  %123 = load i8** %28, align 8, !tbaa !15
  tail call void @free(i8* %123) #8
  store i32* null, i32** %27, align 8, !tbaa !15
  %124 = load i8** %34, align 8, !tbaa !16
  tail call void @free(i8* %124) #8
  store i32* null, i32** %33, align 8, !tbaa !16
  %125 = load i8** %37, align 8, !tbaa !17
  tail call void @free(i8* %125) #8
  store i32* null, i32** %36, align 8, !tbaa !17
  %126 = load i8** %40, align 8, !tbaa !18
  tail call void @free(i8* %126) #8
  store i32* null, i32** %39, align 8, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %81, %.preheader7, %98, %117
  %127 = load i32*** %6, align 8, !tbaa !9
  %128 = icmp eq i32** %127, null
  br i1 %128, label %.thread3, label %129

; <label>:129                                     ; preds = %.loopexit
  %130 = load i32*** %9, align 8, !tbaa !10
  %131 = icmp eq i32** %130, null
  br i1 %131, label %.thread3, label %132

; <label>:132                                     ; preds = %129
  %133 = load i32*** %12, align 8, !tbaa !11
  %134 = icmp eq i32** %133, null
  br i1 %134, label %.thread3, label %135

; <label>:135                                     ; preds = %132
  %136 = load i32** %16, align 8, !tbaa !12
  %137 = icmp eq i32* %136, null
  br i1 %137, label %.thread3, label %138

; <label>:138                                     ; preds = %135
  %139 = load i32** %21, align 8, !tbaa !13
  %140 = icmp eq i32* %139, null
  br i1 %140, label %.thread3, label %141

; <label>:141                                     ; preds = %138
  %142 = load i32** %24, align 8, !tbaa !14
  %143 = icmp eq i32* %142, null
  br i1 %143, label %.thread3, label %144

; <label>:144                                     ; preds = %141
  %145 = load i32** %27, align 8, !tbaa !15
  %146 = icmp eq i32* %145, null
  br i1 %146, label %.thread3, label %147

; <label>:147                                     ; preds = %144
  %148 = load i32** %33, align 8, !tbaa !16
  %149 = icmp eq i32* %148, null
  br i1 %149, label %.thread3, label %150

; <label>:150                                     ; preds = %147
  %151 = load i32** %36, align 8, !tbaa !17
  %152 = icmp eq i32* %151, null
  br i1 %152, label %.thread3, label %153

; <label>:153                                     ; preds = %150
  %154 = load i32** %39, align 8, !tbaa !18
  %155 = icmp eq i32* %154, null
  br i1 %155, label %.thread3, label %.preheader6

.preheader6:                                      ; preds = %153
  %156 = shl nsw i64 %30, 3
  %157 = mul nsw i32 %29, %dim
  %158 = sext i32 %157 to i64
  %159 = shl nsw i64 %158, 2
  %160 = icmp sgt i32 %29, 1
  %161 = shl i32 %dim, 1
  %162 = add i32 %161, -1
  br label %.preheader5

.preheader5:                                      ; preds = %.preheader6, %207
  %indvars.iv45 = phi i64 [ 0, %.preheader6 ], [ %indvars.iv.next46, %207 ]
  br label %163

; <label>:163                                     ; preds = %.preheader5, %._crit_edge20
  %indvars.iv43 = phi i64 [ 0, %.preheader5 ], [ %indvars.iv.next44, %._crit_edge20 ]
  %164 = tail call i8* @malloc(i64 %19) #7
  %165 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 13, i64 %indvars.iv45, i64 %indvars.iv43
  %166 = bitcast i32** %165 to i8**
  store i8* %164, i8** %166, align 8, !tbaa !19
  %167 = tail call i8* @malloc(i64 %156) #7
  %168 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 14, i64 %indvars.iv45, i64 %indvars.iv43
  %169 = bitcast i32*** %168 to i8**
  store i8* %167, i8** %169, align 8, !tbaa !19
  %170 = tail call i8* @malloc(i64 %156) #7
  %171 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 15, i64 %indvars.iv45, i64 %indvars.iv43
  %172 = bitcast i32*** %171 to i8**
  store i8* %170, i8** %172, align 8, !tbaa !19
  %173 = icmp eq i8* %167, null
  %174 = icmp eq i8* %170, null
  %or.cond1 = or i1 %174, %173
  br i1 %or.cond1, label %.thread, label %175

; <label>:175                                     ; preds = %163
  %176 = bitcast i8* %167 to i8**
  %177 = tail call i8* @malloc(i64 %159) #7
  store i8* %177, i8** %176, align 8, !tbaa !19
  %178 = tail call i8* @malloc(i64 %159) #7
  %179 = bitcast i32*** %171 to i8***
  %180 = load i8*** %179, align 8, !tbaa !19
  store i8* %178, i8** %180, align 8, !tbaa !19
  br i1 %160, label %.lr.ph, label %._crit_edge20

.lr.ph:                                           ; preds = %175, %.lr.ph
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %.lr.ph ], [ 1, %175 ]
  %181 = load i32*** %168, align 8, !tbaa !19
  %182 = load i32** %181, align 8, !tbaa !19
  %183 = mul nsw i64 %indvars.iv41, %18
  %184 = getelementptr inbounds i32* %182, i64 %183
  %185 = getelementptr inbounds i32** %181, i64 %indvars.iv41
  store i32* %184, i32** %185, align 8, !tbaa !19
  %186 = load i32*** %171, align 8, !tbaa !19
  %187 = load i32** %186, align 8, !tbaa !19
  %188 = getelementptr inbounds i32* %187, i64 %183
  %189 = getelementptr inbounds i32** %186, i64 %indvars.iv41
  store i32* %188, i32** %189, align 8, !tbaa !19
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %lftr.wideiv = trunc i64 %indvars.iv41 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %162
  br i1 %exitcond, label %._crit_edge20, label %.lr.ph

.thread:                                          ; preds = %163
  %190 = trunc i64 %indvars.iv45 to i32
  tail call void @free(i8* %164) #8
  store i32* null, i32** %165, align 8, !tbaa !19
  %191 = load i8** %169, align 8, !tbaa !19
  tail call void @free(i8* %191) #8
  store i32** null, i32*** %168, align 8, !tbaa !19
  %192 = load i8** %172, align 8, !tbaa !19
  tail call void @free(i8* %192) #8
  store i32** null, i32*** %171, align 8, !tbaa !19
  %sext = shl i64 %indvars.iv45, 32
  %193 = ashr exact i64 %sext, 32
  br label %196

._crit_edge20:                                    ; preds = %.lr.ph, %175
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %194 = icmp slt i64 %indvars.iv.next44, 2
  br i1 %194, label %163, label %207

.preheader4:                                      ; preds = %196
  %195 = icmp sgt i32 %190, 0
  br i1 %195, label %.preheader, label %._crit_edge

; <label>:196                                     ; preds = %.thread, %196
  %indvars.iv39 = phi i64 [ 1, %.thread ], [ %indvars.iv.next40, %196 ]
  %197 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 13, i64 %193, i64 %indvars.iv39
  %198 = bitcast i32** %197 to i8**
  %199 = load i8** %198, align 8, !tbaa !19
  tail call void @free(i8* %199) #8
  store i32* null, i32** %197, align 8, !tbaa !19
  %200 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 14, i64 %193, i64 %indvars.iv39
  %201 = bitcast i32*** %200 to i8**
  %202 = load i8** %201, align 8, !tbaa !19
  tail call void @free(i8* %202) #8
  store i32** null, i32*** %200, align 8, !tbaa !19
  %203 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 15, i64 %193, i64 %indvars.iv39
  %204 = bitcast i32*** %203 to i8**
  %205 = load i8** %204, align 8, !tbaa !19
  tail call void @free(i8* %205) #8
  store i32** null, i32*** %203, align 8, !tbaa !19
  %indvars.iv.next40 = add nsw i64 %indvars.iv39, -1
  %206 = icmp sgt i64 %indvars.iv39, 0
  br i1 %206, label %196, label %.preheader4

; <label>:207                                     ; preds = %._crit_edge20
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %208 = icmp slt i64 %indvars.iv.next46, 4
  br i1 %208, label %.preheader5, label %.thread3

.preheader:                                       ; preds = %.preheader4, %226
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %226 ], [ %193, %.preheader4 ]
  %indvars.iv.next38 = add nsw i64 %indvars.iv37, -1
  br label %209

; <label>:209                                     ; preds = %.preheader, %209
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %209 ]
  %210 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 14, i64 %indvars.iv.next38, i64 %indvars.iv
  %211 = bitcast i32*** %210 to i8***
  %212 = load i8*** %211, align 8, !tbaa !19
  %213 = load i8** %212, align 8, !tbaa !19
  tail call void @free(i8* %213) #8
  %214 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 15, i64 %indvars.iv.next38, i64 %indvars.iv
  %215 = bitcast i32*** %214 to i8***
  %216 = load i8*** %215, align 8, !tbaa !19
  %217 = load i8** %216, align 8, !tbaa !19
  tail call void @free(i8* %217) #8
  %218 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 13, i64 %indvars.iv.next38, i64 %indvars.iv
  %219 = bitcast i32** %218 to i8**
  %220 = load i8** %219, align 8, !tbaa !19
  tail call void @free(i8* %220) #8
  store i32* null, i32** %218, align 8, !tbaa !19
  %221 = bitcast i32*** %210 to i8**
  %222 = load i8** %221, align 8, !tbaa !19
  tail call void @free(i8* %222) #8
  store i32** null, i32*** %210, align 8, !tbaa !19
  %223 = bitcast i32*** %214 to i8**
  %224 = load i8** %223, align 8, !tbaa !19
  tail call void @free(i8* %224) #8
  store i32** null, i32*** %214, align 8, !tbaa !19
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %225 = icmp sgt i64 %indvars.iv, 0
  br i1 %225, label %209, label %226

; <label>:226                                     ; preds = %209
  %227 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 13, i64 %indvars.iv.next38, i64 0
  %228 = bitcast i32** %227 to i8*
  tail call void @free(i8* %228) #8
  %229 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 14, i64 %indvars.iv.next38, i64 0
  %230 = bitcast i32*** %229 to i8*
  tail call void @free(i8* %230) #8
  %231 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 15, i64 %indvars.iv.next38, i64 0
  %232 = bitcast i32*** %231 to i8*
  tail call void @free(i8* %232) #8
  %233 = icmp sgt i64 %indvars.iv37, 1
  br i1 %233, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %226, %.preheader4
  %234 = bitcast i32*** %6 to i8***
  %235 = load i8*** %234, align 8, !tbaa !9
  %236 = load i8** %235, align 8, !tbaa !19
  tail call void @free(i8* %236) #8
  %237 = load i32*** %6, align 8, !tbaa !9
  store i32* null, i32** %237, align 8, !tbaa !19
  %238 = bitcast i32*** %9 to i8***
  %239 = load i8*** %238, align 8, !tbaa !10
  %240 = load i8** %239, align 8, !tbaa !19
  tail call void @free(i8* %240) #8
  %241 = load i32*** %9, align 8, !tbaa !10
  store i32* null, i32** %241, align 8, !tbaa !19
  %242 = bitcast i32*** %12 to i8***
  %243 = load i8*** %242, align 8, !tbaa !11
  %244 = load i8** %243, align 8, !tbaa !19
  tail call void @free(i8* %244) #8
  %245 = load i32*** %12, align 8, !tbaa !11
  store i32* null, i32** %245, align 8, !tbaa !19
  %246 = load i8** %7, align 8, !tbaa !9
  tail call void @free(i8* %246) #8
  store i32** null, i32*** %6, align 8, !tbaa !9
  %247 = load i8** %10, align 8, !tbaa !10
  tail call void @free(i8* %247) #8
  store i32** null, i32*** %9, align 8, !tbaa !10
  %248 = load i8** %13, align 8, !tbaa !11
  tail call void @free(i8* %248) #8
  store i32** null, i32*** %12, align 8, !tbaa !11
  %249 = load i8** %17, align 8, !tbaa !12
  tail call void @free(i8* %249) #8
  store i32* null, i32** %16, align 8, !tbaa !12
  %250 = load i8** %22, align 8, !tbaa !13
  tail call void @free(i8* %250) #8
  store i32* null, i32** %21, align 8, !tbaa !13
  %251 = load i8** %25, align 8, !tbaa !14
  tail call void @free(i8* %251) #8
  store i32* null, i32** %24, align 8, !tbaa !14
  %252 = load i8** %28, align 8, !tbaa !15
  tail call void @free(i8* %252) #8
  store i32* null, i32** %27, align 8, !tbaa !15
  %253 = load i8** %34, align 8, !tbaa !16
  tail call void @free(i8* %253) #8
  store i32* null, i32** %33, align 8, !tbaa !16
  %254 = load i8** %37, align 8, !tbaa !17
  tail call void @free(i8* %254) #8
  store i32* null, i32** %36, align 8, !tbaa !17
  %255 = load i8** %40, align 8, !tbaa !18
  tail call void @free(i8* %255) #8
  store i32* null, i32** %39, align 8, !tbaa !18
  br label %.thread3

.thread3:                                         ; preds = %207, %0, %153, %150, %147, %144, %141, %138, %135, %132, %129, %.loopexit, %._crit_edge
  %retcode.3 = phi i32 [ 1, %._crit_edge ], [ 0, %153 ], [ 0, %150 ], [ 0, %147 ], [ 0, %144 ], [ 0, %141 ], [ 0, %138 ], [ 0, %135 ], [ 0, %132 ], [ 0, %129 ], [ 0, %.loopexit ], [ -1, %0 ], [ 0, %207 ]
  ret i32 %retcode.3
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_SetupPGExtrasSizes(i32 %dim, i32* nocapture readnone %perme, i32 %stagger, i32* nocapture readonly %sh, i32* nocapture readonly %nghosts, i32 %total_procs, i32* %nprocs, i32 %this_proc, %struct.PGExtras* nocapture %this) #1 {
  %1 = icmp sgt i32 %dim, 0
  br i1 %1, label %.lr.ph17, label %._crit_edge14

.lr.ph17:                                         ; preds = %0
  %2 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 1
  %3 = icmp eq i32 %stagger, 1
  %4 = add i32 %dim, -1
  br label %8

.preheader:                                       ; preds = %36
  br i1 %1, label %.lr.ph13, label %._crit_edge14

.lr.ph13:                                         ; preds = %.preheader
  %5 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 12
  %6 = load i32** %5, align 8, !tbaa !13
  %7 = add i32 %dim, -1
  br label %37

; <label>:8                                       ; preds = %36, %.lr.ph17
  %indvars.iv27 = phi i64 [ 0, %.lr.ph17 ], [ %indvars.iv.next28, %36 ]
  %9 = getelementptr inbounds i32* %sh, i64 %indvars.iv27
  %10 = load i32* %9, align 4, !tbaa !20
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %32

; <label>:12                                      ; preds = %8
  %13 = getelementptr inbounds i32* %nprocs, i64 %indvars.iv27
  %14 = load i32* %13, align 4, !tbaa !20
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %32

; <label>:16                                      ; preds = %12
  %17 = add nsw i32 %14, -2
  %18 = sub nsw i32 0, %10
  %19 = getelementptr inbounds i32* %nghosts, i64 %indvars.iv27
  %20 = load i32* %19, align 4, !tbaa !20
  %21 = shl nsw i32 %20, 1
  %22 = sub nsw i32 %18, %21
  %23 = mul nsw i32 %22, %17
  %24 = sub nsw i32 %18, %20
  %25 = shl i32 %24, 1
  %26 = add nsw i32 %23, %25
  %27 = load i32** %2, align 8, !tbaa !14
  %28 = getelementptr inbounds i32* %27, i64 %indvars.iv27
  store i32 %26, i32* %28, align 4, !tbaa !20
  br i1 %3, label %29, label %36

; <label>:29                                      ; preds = %16
  %30 = load i32* %13, align 4, !tbaa !20
  %.neg1 = sub i32 1, %30
  %31 = add i32 %.neg1, %26
  store i32 %31, i32* %28, align 4, !tbaa !20
  br label %36

; <label>:32                                      ; preds = %12, %8
  %ispos = icmp sgt i32 %10, -1
  %neg = sub i32 0, %10
  %33 = select i1 %ispos, i32 %10, i32 %neg
  %34 = load i32** %2, align 8, !tbaa !14
  %35 = getelementptr inbounds i32* %34, i64 %indvars.iv27
  store i32 %33, i32* %35, align 4, !tbaa !20
  br label %36

; <label>:36                                      ; preds = %32, %29, %16
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %lftr.wideiv29 = trunc i64 %indvars.iv27 to i32
  %exitcond30 = icmp eq i32 %lftr.wideiv29, %4
  br i1 %exitcond30, label %.preheader, label %8

; <label>:37                                      ; preds = %37, %.lr.ph13
  %indvars.iv23 = phi i64 [ 0, %.lr.ph13 ], [ %indvars.iv.next24, %37 ]
  %38 = getelementptr inbounds i32* %nghosts, i64 %indvars.iv23
  %39 = load i32* %38, align 4, !tbaa !20
  %40 = getelementptr inbounds i32* %6, i64 %indvars.iv23
  store i32 %39, i32* %40, align 4, !tbaa !20
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %lftr.wideiv25 = trunc i64 %indvars.iv23 to i32
  %exitcond26 = icmp eq i32 %lftr.wideiv25, %7
  br i1 %exitcond26, label %._crit_edge14, label %37

._crit_edge14:                                    ; preds = %37, %0, %.preheader
  %41 = tail call i32 @PUGH_SetupBoundingBox(i32 %dim, i32* undef, i32 %stagger, i32* undef, i32* %nghosts, i32 %total_procs, i32* %nprocs, %struct.PGExtras* %this) #8
  %42 = tail call i32 @PUGH_SetupRemoteSizes(i32 %dim, i32* undef, i32 undef, i32* undef, i32* undef, i32 %total_procs, i32* undef, %struct.PGExtras* %this) #8
  %43 = sext i32 %this_proc to i64
  br i1 %1, label %.lr.ph10, label %._crit_edge11

.lr.ph10:                                         ; preds = %._crit_edge14
  %44 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 9
  %45 = load i32*** %44, align 8, !tbaa !11
  %46 = getelementptr inbounds i32** %45, i64 %43
  %47 = load i32** %46, align 8, !tbaa !19
  %48 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 6
  %49 = load i32** %48, align 8, !tbaa !15
  %50 = add i32 %dim, -1
  br label %51

; <label>:51                                      ; preds = %51, %.lr.ph10
  %indvars.iv19 = phi i64 [ 0, %.lr.ph10 ], [ %indvars.iv.next20, %51 ]
  %52 = getelementptr inbounds i32* %47, i64 %indvars.iv19
  %53 = load i32* %52, align 4, !tbaa !20
  %54 = getelementptr inbounds i32* %49, i64 %indvars.iv19
  store i32 %53, i32* %54, align 4, !tbaa !20
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %lftr.wideiv21 = trunc i64 %indvars.iv19 to i32
  %exitcond22 = icmp eq i32 %lftr.wideiv21, %50
  br i1 %exitcond22, label %._crit_edge11, label %51

._crit_edge11:                                    ; preds = %51, %._crit_edge14
  %55 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 8
  %56 = load i32** %55, align 8, !tbaa !12
  %57 = getelementptr inbounds i32* %56, i64 %43
  %58 = load i32* %57, align 4, !tbaa !20
  %59 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 7
  store i32 %58, i32* %59, align 4, !tbaa !21
  %60 = icmp sgt i32 %total_procs, 0
  br i1 %60, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge11
  %61 = add i32 %total_procs, -1
  br label %62

; <label>:62                                      ; preds = %62, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %62 ]
  %avgpoints.04 = phi i32 [ 0, %.lr.ph ], [ %68, %62 ]
  %minpoints.03 = phi i32 [ %58, %.lr.ph ], [ %67, %62 ]
  %maxpoints.02 = phi i32 [ %58, %.lr.ph ], [ %.maxpoints.0, %62 ]
  %63 = getelementptr inbounds i32* %56, i64 %indvars.iv
  %64 = load i32* %63, align 4, !tbaa !20
  %65 = icmp slt i32 %maxpoints.02, %64
  %.maxpoints.0 = select i1 %65, i32 %64, i32 %maxpoints.02
  %66 = icmp sgt i32 %minpoints.03, %64
  %67 = select i1 %66, i32 %64, i32 %minpoints.03
  %68 = add nsw i32 %64, %avgpoints.04
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %61
  br i1 %exitcond, label %._crit_edge, label %62

._crit_edge:                                      ; preds = %62, %._crit_edge11
  %avgpoints.0.lcssa = phi i32 [ 0, %._crit_edge11 ], [ %68, %62 ]
  %minpoints.0.lcssa = phi i32 [ %58, %._crit_edge11 ], [ %67, %62 ]
  %maxpoints.0.lcssa = phi i32 [ %58, %._crit_edge11 ], [ %.maxpoints.0, %62 ]
  %69 = sdiv i32 %avgpoints.0.lcssa, %total_procs
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %75

; <label>:71                                      ; preds = %._crit_edge
  %72 = sub nsw i32 %maxpoints.0.lcssa, %minpoints.0.lcssa
  %73 = mul nsw i32 %72, 100
  %74 = sdiv i32 %73, %69
  %phitmp = sitofp i32 %74 to double
  br label %75

; <label>:75                                      ; preds = %._crit_edge, %71
  %76 = phi double [ %phitmp, %71 ], [ 0.000000e+00, %._crit_edge ]
  %77 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 2
  store double %76, double* %77, align 8, !tbaa !22
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_SetupPGExtrasOwnership(i32 %dim, i32* nocapture readonly %perme, i32 %stagger, i32* nocapture readnone %sh, i32* nocapture readnone %nghosts, i32 %total_procs, i32* nocapture readnone %nprocs, i32 %this_proc, %struct.PGExtras* %this) #1 {
  %1 = icmp sgt i32 %dim, 0
  br i1 %1, label %.lr.ph19, label %._crit_edge8

.lr.ph19:                                         ; preds = %0
  %2 = sext i32 %this_proc to i64
  %3 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 3
  %4 = load i32*** %3, align 8, !tbaa !9
  %5 = getelementptr inbounds i32** %4, i64 %2
  %6 = load i32** %5, align 8, !tbaa !19
  %7 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 13, i64 0, i64 0
  %8 = load i32** %7, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 4
  %10 = load i32*** %9, align 8, !tbaa !10
  %11 = getelementptr inbounds i32** %10, i64 %2
  %12 = load i32** %11, align 8, !tbaa !19
  %13 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 1
  %14 = load i32** %13, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 6
  %16 = load i32** %15, align 8, !tbaa !15
  %17 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 13, i64 0, i64 1
  %18 = load i32** %17, align 8, !tbaa !19
  %19 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 5
  %20 = load i32** %19, align 8, !tbaa !16
  %21 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 12
  %22 = add i32 %dim, -1
  br label %28

.preheader5:                                      ; preds = %52
  br i1 %1, label %.lr.ph16, label %._crit_edge8

.lr.ph16:                                         ; preds = %.preheader5
  %23 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 12
  %24 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 13, i64 0, i64 0
  %25 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 6
  %26 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 13, i64 0, i64 1
  %27 = add i32 %dim, -1
  br label %75

; <label>:28                                      ; preds = %52, %.lr.ph19
  %indvars.iv36 = phi i64 [ 0, %.lr.ph19 ], [ %indvars.iv.next37, %52 ]
  %29 = getelementptr inbounds i32* %6, i64 %indvars.iv36
  %30 = load i32* %29, align 4, !tbaa !20
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

; <label>:32                                      ; preds = %28
  %33 = load i32** %21, align 8, !tbaa !13
  %34 = getelementptr inbounds i32* %33, i64 %indvars.iv36
  %35 = load i32* %34, align 4, !tbaa !20
  br label %36

; <label>:36                                      ; preds = %28, %32
  %37 = phi i32 [ %35, %32 ], [ 0, %28 ]
  %38 = getelementptr inbounds i32* %8, i64 %indvars.iv36
  store i32 %37, i32* %38, align 4, !tbaa !20
  %39 = getelementptr inbounds i32* %12, i64 %indvars.iv36
  %40 = load i32* %39, align 4, !tbaa !20
  %41 = getelementptr inbounds i32* %14, i64 %indvars.iv36
  %42 = load i32* %41, align 4, !tbaa !20
  %43 = add nsw i32 %42, -1
  %44 = icmp eq i32 %40, %43
  %45 = getelementptr inbounds i32* %16, i64 %indvars.iv36
  %46 = load i32* %45, align 4, !tbaa !20
  br i1 %44, label %52, label %47

; <label>:47                                      ; preds = %36
  %48 = load i32** %21, align 8, !tbaa !13
  %49 = getelementptr inbounds i32* %48, i64 %indvars.iv36
  %50 = load i32* %49, align 4, !tbaa !20
  %51 = sub nsw i32 %46, %50
  br label %52

; <label>:52                                      ; preds = %36, %47
  %53 = phi i32 [ %51, %47 ], [ %46, %36 ]
  %54 = getelementptr inbounds i32* %18, i64 %indvars.iv36
  store i32 %53, i32* %54, align 4, !tbaa !20
  %55 = load i32* %29, align 4, !tbaa !20
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = trunc i64 %indvars.iv36 to i32
  %59 = shl nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32* %20, i64 %60
  store i32 %57, i32* %61, align 4, !tbaa !20
  %62 = load i32* %39, align 4, !tbaa !20
  %63 = load i32* %41, align 4, !tbaa !20
  %64 = add nsw i32 %63, -1
  %65 = icmp eq i32 %62, %64
  %66 = zext i1 %65 to i32
  %67 = or i32 %59, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32* %20, i64 %68
  store i32 %66, i32* %69, align 4, !tbaa !20
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %exitcond39 = icmp eq i32 %58, %22
  br i1 %exitcond39, label %.preheader5, label %28

.preheader4:                                      ; preds = %92
  br i1 %1, label %.lr.ph14, label %._crit_edge8

.lr.ph14:                                         ; preds = %.preheader4
  %70 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 1
  %71 = load i32** %70, align 8, !tbaa !14
  %72 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 13, i64 0, i64 0
  %73 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 13, i64 0, i64 1
  %74 = add i32 %dim, -1
  br label %100

; <label>:75                                      ; preds = %92, %.lr.ph16
  %indvars.iv32 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next33, %92 ]
  %76 = getelementptr inbounds i32* %perme, i64 %indvars.iv32
  %77 = load i32* %76, align 4, !tbaa !20
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %92, label %79

; <label>:79                                      ; preds = %75
  %80 = load i32** %23, align 8, !tbaa !13
  %81 = getelementptr inbounds i32* %80, i64 %indvars.iv32
  %82 = load i32* %81, align 4, !tbaa !20
  %83 = load i32** %24, align 8, !tbaa !19
  %84 = getelementptr inbounds i32* %83, i64 %indvars.iv32
  store i32 %82, i32* %84, align 4, !tbaa !20
  %85 = load i32** %25, align 8, !tbaa !15
  %86 = getelementptr inbounds i32* %85, i64 %indvars.iv32
  %87 = load i32* %86, align 4, !tbaa !20
  %88 = load i32* %81, align 4, !tbaa !20
  %89 = sub nsw i32 %87, %88
  %90 = load i32** %26, align 8, !tbaa !19
  %91 = getelementptr inbounds i32* %90, i64 %indvars.iv32
  store i32 %89, i32* %91, align 4, !tbaa !20
  br label %92

; <label>:92                                      ; preds = %75, %79
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %lftr.wideiv34 = trunc i64 %indvars.iv32 to i32
  %exitcond35 = icmp eq i32 %lftr.wideiv34, %27
  br i1 %exitcond35, label %.preheader4, label %75

.preheader3:                                      ; preds = %109
  %93 = shl nsw i32 %dim, 1
  br i1 %1, label %.preheader2.lr.ph, label %._crit_edge8

.preheader2.lr.ph:                                ; preds = %.preheader3
  %94 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 6
  %95 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 12
  %96 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 15, i64 0, i64 0
  %97 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 15, i64 0, i64 1
  %98 = add i32 %dim, -1
  %99 = sext i32 %93 to i64
  br label %.lr.ph10

; <label>:100                                     ; preds = %109, %.lr.ph14
  %indvars.iv28 = phi i64 [ 0, %.lr.ph14 ], [ %indvars.iv.next29, %109 ]
  %101 = getelementptr inbounds i32* %71, i64 %indvars.iv28
  %102 = load i32* %101, align 4, !tbaa !20
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %109

; <label>:104                                     ; preds = %100
  %105 = load i32** %72, align 8, !tbaa !19
  %106 = getelementptr inbounds i32* %105, i64 %indvars.iv28
  store i32 0, i32* %106, align 4, !tbaa !20
  %107 = load i32** %73, align 8, !tbaa !19
  %108 = getelementptr inbounds i32* %107, i64 %indvars.iv28
  store i32 1, i32* %108, align 4, !tbaa !20
  br label %109

; <label>:109                                     ; preds = %100, %104
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %lftr.wideiv30 = trunc i64 %indvars.iv28 to i32
  %exitcond31 = icmp eq i32 %lftr.wideiv30, %74
  br i1 %exitcond31, label %.preheader3, label %100

.lr.ph10:                                         ; preds = %._crit_edge11, %.preheader2.lr.ph
  %indvars.iv26 = phi i64 [ 0, %.preheader2.lr.ph ], [ %indvars.iv.next27, %._crit_edge11 ]
  %110 = load i32** %94, align 8, !tbaa !15
  %111 = load i32*** %96, align 8, !tbaa !19
  %112 = getelementptr inbounds i32** %111, i64 %indvars.iv26
  %113 = load i32** %112, align 8, !tbaa !19
  %114 = load i32*** %97, align 8, !tbaa !19
  %115 = getelementptr inbounds i32** %114, i64 %indvars.iv26
  %116 = load i32** %115, align 8, !tbaa !19
  br label %123

.preheader1:                                      ; preds = %._crit_edge11
  br i1 %1, label %.preheader.lr.ph, label %._crit_edge8

.preheader.lr.ph:                                 ; preds = %.preheader1
  %117 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 6
  %118 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 12
  %119 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 14, i64 0, i64 0
  %120 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 14, i64 0, i64 1
  %121 = add i32 %dim, -1
  %122 = sext i32 %93 to i64
  br label %.lr.ph

; <label>:123                                     ; preds = %145, %.lr.ph10
  %indvars.iv22 = phi i64 [ 0, %.lr.ph10 ], [ %indvars.iv.next23, %145 ]
  %124 = getelementptr inbounds i32* %110, i64 %indvars.iv22
  %125 = load i32* %124, align 4, !tbaa !20
  %126 = trunc i64 %indvars.iv22 to i32
  %127 = shl nsw i32 %126, 1
  %128 = trunc i64 %indvars.iv26 to i32
  %129 = icmp eq i32 %128, %127
  br i1 %129, label %130, label %135

; <label>:130                                     ; preds = %123
  %131 = load i32** %95, align 8, !tbaa !13
  %132 = getelementptr inbounds i32* %131, i64 %indvars.iv22
  %133 = load i32* %132, align 4, !tbaa !20
  %134 = shl nsw i32 %133, 1
  br label %135

; <label>:135                                     ; preds = %130, %123
  %istart.0 = phi i32 [ %133, %130 ], [ 0, %123 ]
  %iend.0 = phi i32 [ %134, %130 ], [ %125, %123 ]
  %136 = or i32 %127, 1
  %137 = icmp eq i32 %128, %136
  br i1 %137, label %138, label %145

; <label>:138                                     ; preds = %135
  %139 = load i32** %95, align 8, !tbaa !13
  %140 = getelementptr inbounds i32* %139, i64 %indvars.iv22
  %141 = load i32* %140, align 4, !tbaa !20
  %142 = shl nsw i32 %141, 1
  %143 = sub nsw i32 %iend.0, %142
  %144 = sub nsw i32 %iend.0, %141
  br label %145

; <label>:145                                     ; preds = %138, %135
  %istart.1 = phi i32 [ %143, %138 ], [ %istart.0, %135 ]
  %iend.1 = phi i32 [ %144, %138 ], [ %iend.0, %135 ]
  %146 = getelementptr inbounds i32* %113, i64 %indvars.iv22
  store i32 %istart.1, i32* %146, align 4, !tbaa !20
  %147 = getelementptr inbounds i32* %116, i64 %indvars.iv22
  store i32 %iend.1, i32* %147, align 4, !tbaa !20
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %exitcond25 = icmp eq i32 %126, %98
  br i1 %exitcond25, label %._crit_edge11, label %123

._crit_edge11:                                    ; preds = %145
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %148 = icmp slt i64 %indvars.iv.next27, %99
  br i1 %148, label %.lr.ph10, label %.preheader1

.lr.ph:                                           ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv20 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next21, %._crit_edge ]
  br label %149

; <label>:149                                     ; preds = %161, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %161 ]
  %150 = trunc i64 %indvars.iv to i32
  %151 = shl nsw i32 %150, 1
  %152 = trunc i64 %indvars.iv20 to i32
  %153 = icmp eq i32 %152, %151
  %. = select i1 %153, i32** %118, i32** %117
  %.pn = load i32** %., align 8
  %iend.2.in = getelementptr inbounds i32* %.pn, i64 %indvars.iv
  %iend.2 = load i32* %iend.2.in, align 4
  %154 = or i32 %151, 1
  %155 = icmp eq i32 %152, %154
  br i1 %155, label %156, label %161

; <label>:156                                     ; preds = %149
  %157 = load i32** %118, align 8, !tbaa !13
  %158 = getelementptr inbounds i32* %157, i64 %indvars.iv
  %159 = load i32* %158, align 4, !tbaa !20
  %160 = sub nsw i32 %iend.2, %159
  br label %161

; <label>:161                                     ; preds = %156, %149
  %istart.3 = phi i32 [ %160, %156 ], [ 0, %149 ]
  %162 = load i32*** %119, align 8, !tbaa !19
  %163 = getelementptr inbounds i32** %162, i64 %indvars.iv20
  %164 = load i32** %163, align 8, !tbaa !19
  %165 = getelementptr inbounds i32* %164, i64 %indvars.iv
  store i32 %istart.3, i32* %165, align 4, !tbaa !20
  %166 = load i32*** %120, align 8, !tbaa !19
  %167 = getelementptr inbounds i32** %166, i64 %indvars.iv20
  %168 = load i32** %167, align 8, !tbaa !19
  %169 = getelementptr inbounds i32* %168, i64 %indvars.iv
  store i32 %iend.2, i32* %169, align 4, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %150, %121
  br i1 %exitcond, label %._crit_edge, label %149

._crit_edge:                                      ; preds = %161
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %170 = icmp slt i64 %indvars.iv.next21, %122
  br i1 %170, label %.lr.ph, label %._crit_edge8

._crit_edge8:                                     ; preds = %._crit_edge, %0, %.preheader5, %.preheader4, %.preheader3, %.preheader1
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_SetupPGExtrasStaggering(i32 %dim, i32* nocapture readnone %perme, i32 %stagger, i32* nocapture readnone %sh, i32* nocapture readnone %nghosts, i32 %total_procs, i32* nocapture readnone %nprocs, i32 %this_proc, %struct.PGExtras* nocapture readonly %this) #1 {
  %1 = sext i32 %dim to i64
  %2 = shl nsw i64 %1, 2
  %3 = tail call i8* @malloc(i64 %2) #7
  %4 = bitcast i8* %3 to i32*
  %5 = icmp sgt i32 %dim, 0
  br i1 %5, label %.lr.ph17, label %..preheader5_crit_edge38

..preheader5_crit_edge38:                         ; preds = %0
  %.pre = add i32 %dim, -1
  br label %.preheader5

.lr.ph17:                                         ; preds = %0
  %6 = sext i32 %this_proc to i64
  %7 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 4
  %8 = load i32*** %7, align 8, !tbaa !10
  %9 = getelementptr inbounds i32** %8, i64 %6
  %10 = load i32** %9, align 8, !tbaa !19
  %11 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 1
  %12 = load i32** %11, align 8, !tbaa !14
  %13 = add i32 %dim, -1
  br label %16

.preheader5:                                      ; preds = %16, %..preheader5_crit_edge38
  %.pre-phi = phi i32 [ %.pre, %..preheader5_crit_edge38 ], [ %13, %16 ]
  %14 = shl nsw i32 %dim, 1
  %15 = sext i32 %14 to i64
  br label %.preheader4

; <label>:16                                      ; preds = %16, %.lr.ph17
  %indvars.iv32 = phi i64 [ 0, %.lr.ph17 ], [ %indvars.iv.next33, %16 ]
  %17 = getelementptr inbounds i32* %10, i64 %indvars.iv32
  %18 = load i32* %17, align 4, !tbaa !20
  %19 = getelementptr inbounds i32* %12, i64 %indvars.iv32
  %20 = load i32* %19, align 4, !tbaa !20
  %21 = add nsw i32 %20, -1
  %22 = icmp eq i32 %18, %21
  %23 = zext i1 %22 to i32
  %24 = getelementptr inbounds i32* %4, i64 %indvars.iv32
  store i32 %23, i32* %24, align 4, !tbaa !20
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %lftr.wideiv34 = trunc i64 %indvars.iv32 to i32
  %exitcond35 = icmp eq i32 %lftr.wideiv34, %13
  br i1 %exitcond35, label %.preheader5, label %16

.preheader4:                                      ; preds = %._crit_edge13, %.preheader5
  %indvars.iv29 = phi i64 [ 1, %.preheader5 ], [ %indvars.iv.next30, %._crit_edge13 ]
  br i1 %5, label %.preheader2.lr.ph, label %._crit_edge13

.preheader2.lr.ph:                                ; preds = %.preheader4
  %25 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 13, i64 %indvars.iv29, i64 1
  br label %.preheader2

.preheader3:                                      ; preds = %68
  br i1 %5, label %.preheader.lr.ph, label %._crit_edge13

.preheader.lr.ph:                                 ; preds = %.preheader3
  %26 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 15, i64 %indvars.iv29, i64 0
  %27 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 15, i64 %indvars.iv29, i64 1
  br label %.lr.ph10

.preheader2:                                      ; preds = %68, %.preheader2.lr.ph
  %indvars.iv20 = phi i64 [ 0, %.preheader2.lr.ph ], [ %indvars.iv.next21, %68 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.preheader2, %._crit_edge
  %indvars.iv18 = phi i64 [ 0, %.preheader2 ], [ %indvars.iv.next19, %._crit_edge ]
  %28 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 13, i64 0, i64 %indvars.iv18
  %29 = load i32** %28, align 8, !tbaa !19
  %30 = getelementptr inbounds i32* %29, i64 %indvars.iv20
  %31 = load i32* %30, align 4, !tbaa !20
  %32 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 13, i64 %indvars.iv29, i64 %indvars.iv18
  %33 = load i32** %32, align 8, !tbaa !19
  %34 = getelementptr inbounds i32* %33, i64 %indvars.iv20
  store i32 %31, i32* %34, align 4, !tbaa !20
  %35 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 15, i64 0, i64 %indvars.iv18
  %36 = load i32*** %35, align 8, !tbaa !19
  %37 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 15, i64 %indvars.iv29, i64 %indvars.iv18
  %38 = load i32*** %37, align 8, !tbaa !19
  %39 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 14, i64 0, i64 %indvars.iv18
  %40 = load i32*** %39, align 8, !tbaa !19
  %41 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 14, i64 %indvars.iv29, i64 %indvars.iv18
  %42 = load i32*** %41, align 8, !tbaa !19
  br label %43

; <label>:43                                      ; preds = %.lr.ph, %43
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %43 ]
  %44 = getelementptr inbounds i32** %36, i64 %indvars.iv
  %45 = load i32** %44, align 8, !tbaa !19
  %46 = getelementptr inbounds i32* %45, i64 %indvars.iv20
  %47 = load i32* %46, align 4, !tbaa !20
  %48 = getelementptr inbounds i32** %38, i64 %indvars.iv
  %49 = load i32** %48, align 8, !tbaa !19
  %50 = getelementptr inbounds i32* %49, i64 %indvars.iv20
  store i32 %47, i32* %50, align 4, !tbaa !20
  %51 = getelementptr inbounds i32** %40, i64 %indvars.iv
  %52 = load i32** %51, align 8, !tbaa !19
  %53 = getelementptr inbounds i32* %52, i64 %indvars.iv20
  %54 = load i32* %53, align 4, !tbaa !20
  %55 = getelementptr inbounds i32** %42, i64 %indvars.iv
  %56 = load i32** %55, align 8, !tbaa !19
  %57 = getelementptr inbounds i32* %56, i64 %indvars.iv20
  store i32 %54, i32* %57, align 4, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %58 = icmp slt i64 %indvars.iv.next, %15
  br i1 %58, label %43, label %._crit_edge

._crit_edge:                                      ; preds = %43
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond = icmp eq i64 %indvars.iv.next19, 2
  br i1 %exitcond, label %59, label %.lr.ph

; <label>:59                                      ; preds = %._crit_edge
  %60 = getelementptr inbounds i32* %4, i64 %indvars.iv20
  %61 = load i32* %60, align 4, !tbaa !20
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

; <label>:63                                      ; preds = %59
  %64 = load i32** %25, align 8, !tbaa !19
  %65 = getelementptr inbounds i32* %64, i64 %indvars.iv20
  %66 = load i32* %65, align 4, !tbaa !20
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 4, !tbaa !20
  br label %68

; <label>:68                                      ; preds = %59, %63
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %lftr.wideiv = trunc i64 %indvars.iv20 to i32
  %exitcond22 = icmp eq i32 %lftr.wideiv, %.pre-phi
  br i1 %exitcond22, label %.preheader3, label %.preheader2

.lr.ph10:                                         ; preds = %._crit_edge11, %.preheader.lr.ph
  %indvars.iv27 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next28, %._crit_edge11 ]
  %69 = trunc i64 %indvars.iv27 to i32
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br label %72

; <label>:72                                      ; preds = %._crit_edge37, %.lr.ph10
  %indvars.iv23 = phi i64 [ 0, %.lr.ph10 ], [ %indvars.iv.next24, %._crit_edge37 ]
  %73 = getelementptr inbounds i32* %4, i64 %indvars.iv23
  %74 = load i32* %73, align 4, !tbaa !20
  %75 = icmp eq i32 %74, 0
  %or.cond = or i1 %71, %75
  %.pre39 = trunc i64 %indvars.iv23 to i32
  br i1 %or.cond, label %._crit_edge37, label %76

; <label>:76                                      ; preds = %72
  %77 = shl nsw i32 %.pre39, 1
  %78 = or i32 %77, 1
  %79 = icmp eq i32 %69, %78
  br i1 %79, label %80, label %._crit_edge37

; <label>:80                                      ; preds = %76
  %81 = load i32*** %26, align 8, !tbaa !19
  %82 = getelementptr inbounds i32** %81, i64 %indvars.iv27
  %83 = load i32** %82, align 8, !tbaa !19
  %84 = getelementptr inbounds i32* %83, i64 %indvars.iv23
  %85 = load i32* %84, align 4, !tbaa !20
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %84, align 4, !tbaa !20
  %87 = load i32*** %27, align 8, !tbaa !19
  %88 = getelementptr inbounds i32** %87, i64 %indvars.iv27
  %89 = load i32** %88, align 8, !tbaa !19
  %90 = getelementptr inbounds i32* %89, i64 %indvars.iv23
  %91 = load i32* %90, align 4, !tbaa !20
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %90, align 4, !tbaa !20
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %72, %76, %80
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %exitcond26 = icmp eq i32 %.pre39, %.pre-phi
  br i1 %exitcond26, label %._crit_edge11, label %72

._crit_edge11:                                    ; preds = %._crit_edge37
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %93 = icmp slt i64 %indvars.iv.next28, %15
  br i1 %93, label %.lr.ph10, label %._crit_edge13

._crit_edge13:                                    ; preds = %._crit_edge11, %.preheader4, %.preheader3
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %exitcond31 = icmp eq i64 %indvars.iv.next30, 4
  br i1 %exitcond31, label %94, label %.preheader4

; <label>:94                                      ; preds = %._crit_edge13
  tail call void @free(i8* %3) #8
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @PUGH_DestroyPGExtras(%struct.PGExtras** %PGExtras) #1 {
  %1 = icmp eq %struct.PGExtras** %PGExtras, null
  br i1 %1, label %87, label %2

; <label>:2                                       ; preds = %0
  %3 = load %struct.PGExtras** %PGExtras, align 8, !tbaa !19
  %4 = icmp eq %struct.PGExtras* %3, null
  br i1 %4, label %87, label %.preheader

.preheader:                                       ; preds = %2, %28
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %28 ], [ 0, %2 ]
  br label %5

; <label>:5                                       ; preds = %5, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %5 ]
  %6 = load %struct.PGExtras** %PGExtras, align 8, !tbaa !19
  %7 = getelementptr inbounds %struct.PGExtras* %6, i64 0, i32 14, i64 %indvars.iv4, i64 %indvars.iv
  %8 = bitcast i32*** %7 to i8***
  %9 = load i8*** %8, align 8, !tbaa !19
  %10 = load i8** %9, align 8, !tbaa !19
  tail call void @free(i8* %10) #8
  %11 = load %struct.PGExtras** %PGExtras, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.PGExtras* %11, i64 0, i32 15, i64 %indvars.iv4, i64 %indvars.iv
  %13 = bitcast i32*** %12 to i8***
  %14 = load i8*** %13, align 8, !tbaa !19
  %15 = load i8** %14, align 8, !tbaa !19
  tail call void @free(i8* %15) #8
  %16 = load %struct.PGExtras** %PGExtras, align 8, !tbaa !19
  %17 = getelementptr inbounds %struct.PGExtras* %16, i64 0, i32 13, i64 %indvars.iv4, i64 %indvars.iv
  %18 = bitcast i32** %17 to i8**
  %19 = load i8** %18, align 8, !tbaa !19
  tail call void @free(i8* %19) #8
  %20 = load %struct.PGExtras** %PGExtras, align 8, !tbaa !19
  %21 = getelementptr inbounds %struct.PGExtras* %20, i64 0, i32 14, i64 %indvars.iv4, i64 %indvars.iv
  %22 = bitcast i32*** %21 to i8**
  %23 = load i8** %22, align 8, !tbaa !19
  tail call void @free(i8* %23) #8
  %24 = load %struct.PGExtras** %PGExtras, align 8, !tbaa !19
  %25 = getelementptr inbounds %struct.PGExtras* %24, i64 0, i32 15, i64 %indvars.iv4, i64 %indvars.iv
  %26 = bitcast i32*** %25 to i8**
  %27 = load i8** %26, align 8, !tbaa !19
  tail call void @free(i8* %27) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 2
  br i1 %exitcond, label %28, label %5

; <label>:28                                      ; preds = %5
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 4
  br i1 %exitcond6, label %29, label %.preheader

; <label>:29                                      ; preds = %28
  %30 = load %struct.PGExtras** %PGExtras, align 8, !tbaa !19
  %31 = getelementptr inbounds %struct.PGExtras* %30, i64 0, i32 3
  %32 = bitcast i32*** %31 to i8***
  %33 = load i8*** %32, align 8, !tbaa !9
  %34 = load i8** %33, align 8, !tbaa !19
  tail call void @free(i8* %34) #8
  %35 = load %struct.PGExtras** %PGExtras, align 8, !tbaa !19
  %36 = getelementptr inbounds %struct.PGExtras* %35, i64 0, i32 4
  %37 = bitcast i32*** %36 to i8***
  %38 = load i8*** %37, align 8, !tbaa !10
  %39 = load i8** %38, align 8, !tbaa !19
  tail call void @free(i8* %39) #8
  %40 = load %struct.PGExtras** %PGExtras, align 8, !tbaa !19
  %41 = getelementptr inbounds %struct.PGExtras* %40, i64 0, i32 9
  %42 = bitcast i32*** %41 to i8***
  %43 = load i8*** %42, align 8, !tbaa !11
  %44 = load i8** %43, align 8, !tbaa !19
  tail call void @free(i8* %44) #8
  %45 = load %struct.PGExtras** %PGExtras, align 8, !tbaa !19
  %46 = getelementptr inbounds %struct.PGExtras* %45, i64 0, i32 3
  %47 = bitcast i32*** %46 to i8**
  %48 = load i8** %47, align 8, !tbaa !9
  tail call void @free(i8* %48) #8
  %49 = load %struct.PGExtras** %PGExtras, align 8, !tbaa !19
  %50 = getelementptr inbounds %struct.PGExtras* %49, i64 0, i32 4
  %51 = bitcast i32*** %50 to i8**
  %52 = load i8** %51, align 8, !tbaa !10
  tail call void @free(i8* %52) #8
  %53 = load %struct.PGExtras** %PGExtras, align 8, !tbaa !19
  %54 = getelementptr inbounds %struct.PGExtras* %53, i64 0, i32 9
  %55 = bitcast i32*** %54 to i8**
  %56 = load i8** %55, align 8, !tbaa !11
  tail call void @free(i8* %56) #8
  %57 = load %struct.PGExtras** %PGExtras, align 8, !tbaa !19
  %58 = getelementptr inbounds %struct.PGExtras* %57, i64 0, i32 8
  %59 = bitcast i32** %58 to i8**
  %60 = load i8** %59, align 8, !tbaa !12
  tail call void @free(i8* %60) #8
  %61 = load %struct.PGExtras** %PGExtras, align 8, !tbaa !19
  %62 = getelementptr inbounds %struct.PGExtras* %61, i64 0, i32 12
  %63 = bitcast i32** %62 to i8**
  %64 = load i8** %63, align 8, !tbaa !13
  tail call void @free(i8* %64) #8
  %65 = load %struct.PGExtras** %PGExtras, align 8, !tbaa !19
  %66 = getelementptr inbounds %struct.PGExtras* %65, i64 0, i32 1
  %67 = bitcast i32** %66 to i8**
  %68 = load i8** %67, align 8, !tbaa !14
  tail call void @free(i8* %68) #8
  %69 = load %struct.PGExtras** %PGExtras, align 8, !tbaa !19
  %70 = getelementptr inbounds %struct.PGExtras* %69, i64 0, i32 6
  %71 = bitcast i32** %70 to i8**
  %72 = load i8** %71, align 8, !tbaa !15
  tail call void @free(i8* %72) #8
  %73 = load %struct.PGExtras** %PGExtras, align 8, !tbaa !19
  %74 = getelementptr inbounds %struct.PGExtras* %73, i64 0, i32 5
  %75 = bitcast i32** %74 to i8**
  %76 = load i8** %75, align 8, !tbaa !16
  tail call void @free(i8* %76) #8
  %77 = load %struct.PGExtras** %PGExtras, align 8, !tbaa !19
  %78 = getelementptr inbounds %struct.PGExtras* %77, i64 0, i32 10
  %79 = bitcast i32** %78 to i8**
  %80 = load i8** %79, align 8, !tbaa !17
  tail call void @free(i8* %80) #8
  %81 = load %struct.PGExtras** %PGExtras, align 8, !tbaa !19
  %82 = getelementptr inbounds %struct.PGExtras* %81, i64 0, i32 11
  %83 = bitcast i32** %82 to i8**
  %84 = load i8** %83, align 8, !tbaa !18
  tail call void @free(i8* %84) #8
  %85 = bitcast %struct.PGExtras** %PGExtras to i8**
  %86 = load i8** %85, align 8, !tbaa !19
  tail call void @free(i8* %86) #8
  store %struct.PGExtras* null, %struct.PGExtras** %PGExtras, align 8, !tbaa !19
  br label %87

; <label>:87                                      ; preds = %2, %0, %29
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define %struct.PConnectivity* @PUGH_SetupConnectivity(i32 %dim, i32 %total_procs, i32* nocapture readonly %nprocs, i32* nocapture readonly %perme) #1 {
  %1 = tail call i8* @malloc(i64 32) #7
  %2 = bitcast i8* %1 to %struct.PConnectivity*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %74, label %4

; <label>:4                                       ; preds = %0
  %5 = sext i32 %dim to i64
  %6 = shl nsw i64 %5, 2
  %7 = tail call i8* @malloc(i64 %6) #7
  %8 = getelementptr inbounds i8* %1, i64 8
  %9 = bitcast i8* %8 to i32**
  %10 = bitcast i8* %8 to i8**
  store i8* %7, i8** %10, align 8, !tbaa !23
  %11 = tail call i8* @malloc(i64 %6) #7
  %12 = getelementptr inbounds i8* %1, i64 24
  %13 = bitcast i8* %12 to i32**
  %14 = bitcast i8* %12 to i8**
  store i8* %11, i8** %14, align 8, !tbaa !25
  %15 = sext i32 %total_procs to i64
  %16 = shl nsw i64 %15, 3
  %17 = tail call i8* @malloc(i64 %16) #7
  %18 = getelementptr inbounds i8* %1, i64 16
  %19 = bitcast i8* %18 to i32***
  %20 = bitcast i8* %18 to i8**
  store i8* %17, i8** %20, align 8, !tbaa !26
  %21 = icmp eq i8* %17, null
  br i1 %21, label %29, label %22

; <label>:22                                      ; preds = %4
  %23 = bitcast i8* %17 to i8**
  %24 = shl i32 %dim, 1
  %25 = mul i32 %24, %total_procs
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 2
  %28 = tail call i8* @malloc(i64 %27) #7
  store i8* %28, i8** %23, align 8, !tbaa !19
  %.pre = load i32** %9, align 8, !tbaa !23
  br label %31

; <label>:29                                      ; preds = %4
  %30 = bitcast i8* %7 to i32*
  store i32** null, i32*** %19, align 8, !tbaa !26
  br label %31

; <label>:31                                      ; preds = %29, %22
  %32 = phi i32* [ %30, %29 ], [ %.pre, %22 ]
  %33 = icmp eq i32* %32, null
  br i1 %33, label %41, label %34

; <label>:34                                      ; preds = %31
  %35 = load i32** %13, align 8, !tbaa !25
  %36 = icmp eq i32* %35, null
  br i1 %36, label %41, label %37

; <label>:37                                      ; preds = %34
  %38 = load i32*** %19, align 8, !tbaa !26
  %39 = icmp eq i32** %38, null
  %40 = bitcast i32** %38 to i8*
  br i1 %39, label %.thread1, label %.thread3

; <label>:41                                      ; preds = %34, %31
  %.pr = load i32*** %19, align 8, !tbaa !26
  %42 = icmp eq i32** %.pr, null
  %43 = bitcast i32** %.pr to i8*
  br i1 %42, label %.thread1, label %44

; <label>:44                                      ; preds = %41
  %45 = bitcast i32** %.pr to i8**
  %46 = load i8** %45, align 8, !tbaa !19
  tail call void @free(i8* %46) #8
  br label %.thread1

.thread1:                                         ; preds = %44, %41, %37
  %47 = phi i8* [ %43, %44 ], [ %43, %41 ], [ %40, %37 ]
  tail call void @free(i8* %47) #8
  %48 = load i8** %14, align 8, !tbaa !25
  tail call void @free(i8* %48) #8
  %49 = load i8** %10, align 8, !tbaa !23
  tail call void @free(i8* %49) #8
  tail call void @free(i8* %1) #8
  br label %74

.thread3:                                         ; preds = %37
  %50 = bitcast i8* %1 to i32*
  store i32 %dim, i32* %50, align 4, !tbaa !27
  %51 = icmp sgt i32 %dim, 0
  br i1 %51, label %.lr.ph7, label %.preheader

.lr.ph7:                                          ; preds = %.thread3
  %52 = add i32 %dim, -1
  br label %57

.preheader:                                       ; preds = %57, %.thread3
  %53 = icmp sgt i32 %total_procs, 1
  br i1 %53, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %54 = shl i32 %dim, 1
  %55 = sext i32 %54 to i64
  %56 = add i32 %total_procs, -1
  br label %64

; <label>:57                                      ; preds = %57, %.lr.ph7
  %indvars.iv8 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next9, %57 ]
  %58 = getelementptr inbounds i32* %nprocs, i64 %indvars.iv8
  %59 = load i32* %58, align 4, !tbaa !20
  %60 = getelementptr inbounds i32* %32, i64 %indvars.iv8
  store i32 %59, i32* %60, align 4, !tbaa !20
  %61 = getelementptr inbounds i32* %perme, i64 %indvars.iv8
  %62 = load i32* %61, align 4, !tbaa !20
  %63 = getelementptr inbounds i32* %35, i64 %indvars.iv8
  store i32 %62, i32* %63, align 4, !tbaa !20
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  %lftr.wideiv10 = trunc i64 %indvars.iv8 to i32
  %exitcond11 = icmp eq i32 %lftr.wideiv10, %52
  br i1 %exitcond11, label %.preheader, label %57

; <label>:64                                      ; preds = %64, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %64 ]
  %65 = load i32** %38, align 8, !tbaa !19
  %66 = mul nsw i64 %55, %indvars.iv
  %67 = getelementptr inbounds i32* %65, i64 %66
  %68 = getelementptr inbounds i32** %38, i64 %indvars.iv
  store i32* %67, i32** %68, align 8, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %56
  br i1 %exitcond, label %._crit_edge, label %64

._crit_edge:                                      ; preds = %64, %.preheader
  %69 = tail call i32 @PUGH_GenerateTopology(i32 %dim, i32 %total_procs, i32* %32) #8
  %70 = load i32** %9, align 8, !tbaa !23
  %71 = load i32*** %19, align 8, !tbaa !26
  %72 = load i32** %13, align 8, !tbaa !25
  %73 = tail call i32 @PUGH_GenerateNeighbours(i32 %dim, i32 %total_procs, i32* %70, i32** %71, i32* %72) #8
  br label %74

; <label>:74                                      ; preds = %0, %.thread1, %._crit_edge
  %this.02 = phi %struct.PConnectivity* [ null, %.thread1 ], [ %2, %._crit_edge ], [ null, %0 ]
  ret %struct.PConnectivity* %this.02
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_GenerateTopology(i32 %dim, i32 %total_procs, i32* nocapture %nprocs) #1 {
  %1 = icmp sgt i32 %dim, 0
  br i1 %1, label %.lr.ph20, label %._crit_edge21

.lr.ph20:                                         ; preds = %0
  %2 = add i32 %dim, -1
  br label %3

; <label>:3                                       ; preds = %19, %.lr.ph20
  %indvars.iv30 = phi i64 [ 0, %.lr.ph20 ], [ %indvars.iv.next31, %19 ]
  %free_dims.017 = phi i32 [ %dim, %.lr.ph20 ], [ %free_dims.1, %19 ]
  %retval.016 = phi i32 [ 0, %.lr.ph20 ], [ %retval.1, %19 ]
  %free_procs.015 = phi i32 [ %total_procs, %.lr.ph20 ], [ %free_procs.1, %19 ]
  %used_procs.014 = phi i32 [ 0, %.lr.ph20 ], [ %used_procs.2, %19 ]
  %4 = getelementptr inbounds i32* %nprocs, i64 %indvars.iv30
  %5 = load i32* %4, align 4, !tbaa !20
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %19

; <label>:7                                       ; preds = %3
  %8 = add nsw i32 %free_dims.017, -1
  %9 = icmp eq i32 %used_procs.014, 0
  br i1 %9, label %12, label %10

; <label>:10                                      ; preds = %7
  %11 = mul nsw i32 %5, %used_procs.014
  br label %12

; <label>:12                                      ; preds = %7, %10
  %used_procs.1 = phi i32 [ %11, %10 ], [ %5, %7 ]
  %13 = srem i32 %total_procs, %used_procs.1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

; <label>:15                                      ; preds = %12
  %16 = tail call i32 @CCTK_Warn(i32 0, i32 325, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8]* @.str2, i64 0, i64 0)) #7
  br label %19

; <label>:17                                      ; preds = %12
  %18 = sdiv i32 %total_procs, %used_procs.1
  br label %19

; <label>:19                                      ; preds = %3, %17, %15
  %used_procs.2 = phi i32 [ %used_procs.1, %15 ], [ %used_procs.1, %17 ], [ %used_procs.014, %3 ]
  %free_procs.1 = phi i32 [ %free_procs.015, %15 ], [ %18, %17 ], [ %free_procs.015, %3 ]
  %retval.1 = phi i32 [ 1, %15 ], [ %retval.016, %17 ], [ %retval.016, %3 ]
  %free_dims.1 = phi i32 [ %8, %15 ], [ %8, %17 ], [ %free_dims.017, %3 ]
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %lftr.wideiv32 = trunc i64 %indvars.iv30 to i32
  %exitcond33 = icmp eq i32 %lftr.wideiv32, %2
  br i1 %exitcond33, label %._crit_edge21, label %3

._crit_edge21:                                    ; preds = %19, %0
  %free_dims.0.lcssa = phi i32 [ %dim, %0 ], [ %free_dims.1, %19 ]
  %retval.0.lcssa = phi i32 [ 0, %0 ], [ %retval.1, %19 ]
  %free_procs.0.lcssa = phi i32 [ %total_procs, %0 ], [ %free_procs.1, %19 ]
  %20 = icmp eq i32 %free_dims.0.lcssa, 0
  %21 = icmp ne i32 %retval.0.lcssa, 0
  %or.cond = or i1 %21, %20
  br i1 %or.cond, label %58, label %22

; <label>:22                                      ; preds = %._crit_edge21
  %23 = sext i32 %free_dims.0.lcssa to i64
  %24 = tail call i8* @calloc(i64 %23, i64 4) #7
  %25 = bitcast i8* %24 to i32*
  %26 = icmp sgt i32 %free_dims.0.lcssa, 0
  br i1 %26, label %.lr.ph12, label %._crit_edge13

.lr.ph12:                                         ; preds = %22
  %27 = add i32 %free_dims.0.lcssa, -1
  br label %28

; <label>:28                                      ; preds = %43, %.lr.ph12
  %indvars.iv26 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next27, %43 ]
  %root.010 = phi i32 [ %free_dims.0.lcssa, %.lr.ph12 ], [ %46, %43 ]
  %free_procs.27 = phi i32 [ %free_procs.0.lcssa, %.lr.ph12 ], [ %45, %43 ]
  %29 = icmp slt i32 %free_procs.27, 1
  br i1 %29, label %PUGH_IntegerRoot.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %28
  %30 = icmp sgt i32 %root.010, 1
  %31 = add i32 %root.010, -1
  br label %.preheader.i

.preheader.i:                                     ; preds = %37, %.preheader.lr.ph.i
  %root.04.i = phi i32 [ 1, %.preheader.lr.ph.i ], [ %38, %37 ]
  br i1 %30, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %tmp.03.i = phi i32 [ %33, %.lr.ph.i ], [ %root.04.i, %.preheader.i ]
  %i.02.i = phi i32 [ %32, %.lr.ph.i ], [ 1, %.preheader.i ]
  %32 = add nuw nsw i32 %i.02.i, 1
  %33 = mul nsw i32 %tmp.03.i, %root.04.i
  %exitcond.i = icmp eq i32 %i.02.i, %31
  br i1 %exitcond.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %tmp.0.lcssa.i = phi i32 [ %root.04.i, %.preheader.i ], [ %33, %.lr.ph.i ]
  %34 = icmp sgt i32 %tmp.0.lcssa.i, %free_procs.27
  br i1 %34, label %35, label %37

; <label>:35                                      ; preds = %._crit_edge.i
  %36 = add nsw i32 %root.04.i, -1
  br label %PUGH_IntegerRoot.exit

; <label>:37                                      ; preds = %._crit_edge.i
  %38 = add nuw nsw i32 %root.04.i, 1
  %39 = icmp slt i32 %root.04.i, %free_procs.27
  br i1 %39, label %.preheader.i, label %PUGH_IntegerRoot.exit

PUGH_IntegerRoot.exit:                            ; preds = %35, %28, %37, %PUGH_IntegerRoot.exit
  %storemerge = phi i32 [ %42, %PUGH_IntegerRoot.exit ], [ 1, %28 ], [ %36, %35 ], [ %38, %37 ]
  %40 = srem i32 %free_procs.27, %storemerge
  %41 = icmp eq i32 %40, 0
  %42 = add nsw i32 %storemerge, -1
  br i1 %41, label %43, label %PUGH_IntegerRoot.exit

; <label>:43                                      ; preds = %PUGH_IntegerRoot.exit
  %44 = getelementptr inbounds i32* %25, i64 %indvars.iv26
  store i32 %storemerge, i32* %44, align 4, !tbaa !20
  %45 = sdiv i32 %free_procs.27, %storemerge
  %46 = add nsw i32 %root.010, -1
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %lftr.wideiv28 = trunc i64 %indvars.iv26 to i32
  %exitcond29 = icmp eq i32 %lftr.wideiv28, %27
  br i1 %exitcond29, label %._crit_edge13, label %28

._crit_edge13:                                    ; preds = %43, %22
  tail call void @qsort(i8* %24, i64 %23, i64 4, i32 (i8*, i8*)* @IntSort) #7
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge13
  %47 = add i32 %dim, -1
  br label %48

; <label>:48                                      ; preds = %57, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %57 ]
  %place.05 = phi i32 [ 0, %.lr.ph ], [ %place.1, %57 ]
  %49 = getelementptr inbounds i32* %nprocs, i64 %indvars.iv
  %50 = load i32* %49, align 4, !tbaa !20
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %52, label %57

; <label>:52                                      ; preds = %48
  %53 = sext i32 %place.05 to i64
  %54 = getelementptr inbounds i32* %25, i64 %53
  %55 = load i32* %54, align 4, !tbaa !20
  store i32 %55, i32* %49, align 4, !tbaa !20
  %56 = add nsw i32 %place.05, 1
  br label %57

; <label>:57                                      ; preds = %48, %52
  %place.1 = phi i32 [ %56, %52 ], [ %place.05, %48 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %47
  br i1 %exitcond, label %._crit_edge, label %48

._crit_edge:                                      ; preds = %57, %._crit_edge13
  tail call void @free(i8* %24) #8
  br label %58

; <label>:58                                      ; preds = %._crit_edge21, %._crit_edge
  ret i32 %retval.0.lcssa
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_GenerateNeighbours(i32 %dim, i32 %total_procs, i32* nocapture readonly %nprocs, i32** nocapture readonly %neighbours, i32* nocapture readonly %perme) #1 {
  %1 = sext i32 %dim to i64
  %2 = shl nsw i64 %1, 2
  %3 = tail call i8* @malloc(i64 %2) #7
  %4 = bitcast i8* %3 to i32*
  %5 = icmp eq i8* %3, null
  br i1 %5, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %0
  %6 = icmp sgt i32 %total_procs, 0
  br i1 %6, label %.lr.ph29, label %.loopexit

.lr.ph29:                                         ; preds = %.preheader
  %7 = icmp sgt i32 %dim, 0
  %8 = add i32 %dim, -1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32* %4, i64 %9
  %11 = add i32 %dim, -2
  %12 = icmp sgt i32 %11, -1
  %13 = sext i32 %11 to i64
  %14 = add i32 %total_procs, -1
  br label %15

; <label>:15                                      ; preds = %PUGH_DecomposeIJK.exit._crit_edge, %.lr.ph29
  %indvars.iv35 = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next36, %PUGH_DecomposeIJK.exit._crit_edge ]
  br i1 %7, label %.lr.ph.i, label %PUGH_DecomposeIJK.exit._crit_edge

.lr.ph.i:                                         ; preds = %15
  %16 = trunc i64 %indvars.iv35 to i32
  br label %17

; <label>:17                                      ; preds = %17, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %17 ]
  %.01.i = phi i32 [ %16, %.lr.ph.i ], [ %22, %17 ]
  %18 = getelementptr inbounds i32* %nprocs, i64 %indvars.iv.i
  %19 = load i32* %18, align 4, !tbaa !20
  %20 = srem i32 %.01.i, %19
  %21 = getelementptr inbounds i32* %4, i64 %indvars.iv.i
  store i32 %20, i32* %21, align 4, !tbaa !20
  %22 = sdiv i32 %.01.i, %19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %8
  br i1 %exitcond, label %PUGH_DecomposeIJK.exit.preheader, label %17

PUGH_DecomposeIJK.exit.preheader:                 ; preds = %17
  br i1 %7, label %.lr.ph, label %PUGH_DecomposeIJK.exit._crit_edge

.lr.ph:                                           ; preds = %PUGH_DecomposeIJK.exit.preheader
  %23 = getelementptr inbounds i32** %neighbours, i64 %indvars.iv35
  br label %24

; <label>:24                                      ; preds = %PUGH_DecomposeIJK.exit, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %PUGH_DecomposeIJK.exit ]
  %25 = getelementptr inbounds i32* %4, i64 %indvars.iv
  %26 = load i32* %25, align 4, !tbaa !20
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 4, !tbaa !20
  %28 = icmp sgt i32 %26, 0
  br i1 %28, label %29, label %43

; <label>:29                                      ; preds = %24
  %30 = load i32* %10, align 4, !tbaa !20
  br i1 %12, label %.lr.ph.i16, label %PUGH_ComposeIJK.exit21

.lr.ph.i16:                                       ; preds = %29, %.lr.ph.i16
  %indvars.iv.i17 = phi i64 [ %indvars.iv.next.i19, %.lr.ph.i16 ], [ %13, %29 ]
  %ijk.01.i18 = phi i32 [ %36, %.lr.ph.i16 ], [ %30, %29 ]
  %31 = getelementptr inbounds i32* %4, i64 %indvars.iv.i17
  %32 = load i32* %31, align 4, !tbaa !20
  %33 = getelementptr inbounds i32* %nprocs, i64 %indvars.iv.i17
  %34 = load i32* %33, align 4, !tbaa !20
  %35 = mul nsw i32 %34, %ijk.01.i18
  %36 = add nsw i32 %35, %32
  %37 = icmp sgt i64 %indvars.iv.i17, 0
  %indvars.iv.next.i19 = add nsw i64 %indvars.iv.i17, -1
  br i1 %37, label %.lr.ph.i16, label %PUGH_ComposeIJK.exit21

PUGH_ComposeIJK.exit21:                           ; preds = %.lr.ph.i16, %29
  %ijk.0.lcssa.i20 = phi i32 [ %30, %29 ], [ %36, %.lr.ph.i16 ]
  %38 = trunc i64 %indvars.iv to i32
  %39 = shl nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = load i32** %23, align 8, !tbaa !19
  %42 = getelementptr inbounds i32* %41, i64 %40
  store i32 %ijk.0.lcssa.i20, i32* %42, align 4, !tbaa !20
  br label %70

; <label>:43                                      ; preds = %24
  %44 = getelementptr inbounds i32* %perme, i64 %indvars.iv
  %45 = load i32* %44, align 4, !tbaa !20
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %64, label %47

; <label>:47                                      ; preds = %43
  %48 = getelementptr inbounds i32* %nprocs, i64 %indvars.iv
  %49 = load i32* %48, align 4, !tbaa !20
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %25, align 4, !tbaa !20
  %51 = load i32* %10, align 4, !tbaa !20
  br i1 %12, label %.lr.ph.i10, label %PUGH_ComposeIJK.exit15

.lr.ph.i10:                                       ; preds = %47, %.lr.ph.i10
  %indvars.iv.i11 = phi i64 [ %indvars.iv.next.i13, %.lr.ph.i10 ], [ %13, %47 ]
  %ijk.01.i12 = phi i32 [ %57, %.lr.ph.i10 ], [ %51, %47 ]
  %52 = getelementptr inbounds i32* %4, i64 %indvars.iv.i11
  %53 = load i32* %52, align 4, !tbaa !20
  %54 = getelementptr inbounds i32* %nprocs, i64 %indvars.iv.i11
  %55 = load i32* %54, align 4, !tbaa !20
  %56 = mul nsw i32 %55, %ijk.01.i12
  %57 = add nsw i32 %56, %53
  %58 = icmp sgt i64 %indvars.iv.i11, 0
  %indvars.iv.next.i13 = add nsw i64 %indvars.iv.i11, -1
  br i1 %58, label %.lr.ph.i10, label %PUGH_ComposeIJK.exit15

PUGH_ComposeIJK.exit15:                           ; preds = %.lr.ph.i10, %47
  %ijk.0.lcssa.i14 = phi i32 [ %51, %47 ], [ %57, %.lr.ph.i10 ]
  %59 = trunc i64 %indvars.iv to i32
  %60 = shl nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = load i32** %23, align 8, !tbaa !19
  %63 = getelementptr inbounds i32* %62, i64 %61
  store i32 %ijk.0.lcssa.i14, i32* %63, align 4, !tbaa !20
  store i32 %27, i32* %25, align 4, !tbaa !20
  br label %70

; <label>:64                                      ; preds = %43
  %65 = trunc i64 %indvars.iv to i32
  %66 = shl nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = load i32** %23, align 8, !tbaa !19
  %69 = getelementptr inbounds i32* %68, i64 %67
  store i32 -1, i32* %69, align 4, !tbaa !20
  br label %70

; <label>:70                                      ; preds = %PUGH_ComposeIJK.exit15, %64, %PUGH_ComposeIJK.exit21
  %71 = phi i32* [ %62, %PUGH_ComposeIJK.exit15 ], [ %68, %64 ], [ %41, %PUGH_ComposeIJK.exit21 ]
  %72 = add nsw i32 %26, 1
  store i32 %72, i32* %25, align 4, !tbaa !20
  %73 = getelementptr inbounds i32* %nprocs, i64 %indvars.iv
  %74 = load i32* %73, align 4, !tbaa !20
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %90

; <label>:76                                      ; preds = %70
  %77 = load i32* %10, align 4, !tbaa !20
  br i1 %12, label %.lr.ph.i4, label %PUGH_ComposeIJK.exit9

.lr.ph.i4:                                        ; preds = %76, %.lr.ph.i4
  %indvars.iv.i5 = phi i64 [ %indvars.iv.next.i7, %.lr.ph.i4 ], [ %13, %76 ]
  %ijk.01.i6 = phi i32 [ %83, %.lr.ph.i4 ], [ %77, %76 ]
  %78 = getelementptr inbounds i32* %4, i64 %indvars.iv.i5
  %79 = load i32* %78, align 4, !tbaa !20
  %80 = getelementptr inbounds i32* %nprocs, i64 %indvars.iv.i5
  %81 = load i32* %80, align 4, !tbaa !20
  %82 = mul nsw i32 %81, %ijk.01.i6
  %83 = add nsw i32 %82, %79
  %84 = icmp sgt i64 %indvars.iv.i5, 0
  %indvars.iv.next.i7 = add nsw i64 %indvars.iv.i5, -1
  br i1 %84, label %.lr.ph.i4, label %PUGH_ComposeIJK.exit9

PUGH_ComposeIJK.exit9:                            ; preds = %.lr.ph.i4, %76
  %ijk.0.lcssa.i8 = phi i32 [ %77, %76 ], [ %83, %.lr.ph.i4 ]
  %85 = trunc i64 %indvars.iv to i32
  %86 = shl nsw i32 %85, 1
  %87 = or i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32* %71, i64 %88
  store i32 %ijk.0.lcssa.i8, i32* %89, align 4, !tbaa !20
  br label %PUGH_DecomposeIJK.exit

; <label>:90                                      ; preds = %70
  %91 = getelementptr inbounds i32* %perme, i64 %indvars.iv
  %92 = load i32* %91, align 4, !tbaa !20
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %108, label %94

; <label>:94                                      ; preds = %90
  store i32 0, i32* %25, align 4, !tbaa !20
  %95 = load i32* %10, align 4, !tbaa !20
  br i1 %12, label %.lr.ph.i1, label %PUGH_ComposeIJK.exit

.lr.ph.i1:                                        ; preds = %94, %.lr.ph.i1
  %indvars.iv.i2 = phi i64 [ %indvars.iv.next.i3, %.lr.ph.i1 ], [ %13, %94 ]
  %ijk.01.i = phi i32 [ %101, %.lr.ph.i1 ], [ %95, %94 ]
  %96 = getelementptr inbounds i32* %4, i64 %indvars.iv.i2
  %97 = load i32* %96, align 4, !tbaa !20
  %98 = getelementptr inbounds i32* %nprocs, i64 %indvars.iv.i2
  %99 = load i32* %98, align 4, !tbaa !20
  %100 = mul nsw i32 %99, %ijk.01.i
  %101 = add nsw i32 %100, %97
  %102 = icmp sgt i64 %indvars.iv.i2, 0
  %indvars.iv.next.i3 = add nsw i64 %indvars.iv.i2, -1
  br i1 %102, label %.lr.ph.i1, label %PUGH_ComposeIJK.exit

PUGH_ComposeIJK.exit:                             ; preds = %.lr.ph.i1, %94
  %ijk.0.lcssa.i = phi i32 [ %95, %94 ], [ %101, %.lr.ph.i1 ]
  %103 = trunc i64 %indvars.iv to i32
  %104 = shl nsw i32 %103, 1
  %105 = or i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32* %71, i64 %106
  store i32 %ijk.0.lcssa.i, i32* %107, align 4, !tbaa !20
  store i32 %72, i32* %25, align 4, !tbaa !20
  br label %PUGH_DecomposeIJK.exit

; <label>:108                                     ; preds = %90
  %109 = trunc i64 %indvars.iv to i32
  %110 = shl nsw i32 %109, 1
  %111 = or i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32* %71, i64 %112
  store i32 -1, i32* %113, align 4, !tbaa !20
  br label %PUGH_DecomposeIJK.exit

PUGH_DecomposeIJK.exit:                           ; preds = %PUGH_ComposeIJK.exit, %108, %PUGH_ComposeIJK.exit9
  %lftr.wideiv33.pre-phi = phi i32 [ %103, %PUGH_ComposeIJK.exit ], [ %109, %108 ], [ %85, %PUGH_ComposeIJK.exit9 ]
  store i32 %26, i32* %25, align 4, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond34 = icmp eq i32 %lftr.wideiv33.pre-phi, %8
  br i1 %exitcond34, label %PUGH_DecomposeIJK.exit._crit_edge, label %24

PUGH_DecomposeIJK.exit._crit_edge:                ; preds = %PUGH_DecomposeIJK.exit, %15, %PUGH_DecomposeIJK.exit.preheader
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %lftr.wideiv37 = trunc i64 %indvars.iv35 to i32
  %exitcond38 = icmp eq i32 %lftr.wideiv37, %14
  br i1 %exitcond38, label %.loopexit, label %15

.loopexit:                                        ; preds = %PUGH_DecomposeIJK.exit._crit_edge, %.preheader, %0
  %retval.0 = phi i32 [ 1, %0 ], [ 0, %.preheader ], [ 0, %PUGH_DecomposeIJK.exit._crit_edge ]
  tail call void @free(i8* %3) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @PUGH_DestroyConnectivity(%struct.PConnectivity** %conn) #1 {
  %1 = icmp eq %struct.PConnectivity** %conn, null
  br i1 %1, label %24, label %2

; <label>:2                                       ; preds = %0
  %3 = load %struct.PConnectivity** %conn, align 8, !tbaa !19
  %4 = icmp eq %struct.PConnectivity* %3, null
  br i1 %4, label %24, label %5

; <label>:5                                       ; preds = %2
  %6 = getelementptr inbounds %struct.PConnectivity* %3, i64 0, i32 3
  %7 = bitcast i32** %6 to i8**
  %8 = load i8** %7, align 8, !tbaa !25
  tail call void @free(i8* %8) #8
  %9 = load %struct.PConnectivity** %conn, align 8, !tbaa !19
  %10 = getelementptr inbounds %struct.PConnectivity* %9, i64 0, i32 2
  %11 = bitcast i32*** %10 to i8***
  %12 = load i8*** %11, align 8, !tbaa !26
  %13 = load i8** %12, align 8, !tbaa !19
  tail call void @free(i8* %13) #8
  %14 = load %struct.PConnectivity** %conn, align 8, !tbaa !19
  %15 = getelementptr inbounds %struct.PConnectivity* %14, i64 0, i32 2
  %16 = bitcast i32*** %15 to i8**
  %17 = load i8** %16, align 8, !tbaa !26
  tail call void @free(i8* %17) #8
  %18 = load %struct.PConnectivity** %conn, align 8, !tbaa !19
  %19 = getelementptr inbounds %struct.PConnectivity* %18, i64 0, i32 1
  %20 = bitcast i32** %19 to i8**
  %21 = load i8** %20, align 8, !tbaa !23
  tail call void @free(i8* %21) #8
  %22 = bitcast %struct.PConnectivity** %conn to i8**
  %23 = load i8** %22, align 8, !tbaa !19
  tail call void @free(i8* %23) #8
  store %struct.PConnectivity* null, %struct.PConnectivity** %conn, align 8, !tbaa !19
  br label %24

; <label>:24                                      ; preds = %2, %0, %5
  ret void
}

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #3

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: optsize
declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) #3

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal i32 @IntSort(i8* nocapture readonly %a, i8* nocapture readonly %b) #4 {
  %1 = bitcast i8* %a to i32*
  %2 = load i32* %1, align 4, !tbaa !20
  %3 = bitcast i8* %b to i32*
  %4 = load i32* %3, align 4, !tbaa !20
  %5 = sub nsw i32 %2, %4
  ret i32 %5
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_DecomposeIJK(i32 %dim, i32 %ijk, i32* nocapture readonly %nprocs, i32* nocapture %pos) #1 {
  %1 = icmp sgt i32 %dim, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = add i32 %dim, -1
  br label %3

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %.01 = phi i32 [ %ijk, %.lr.ph ], [ %9, %3 ]
  %4 = getelementptr inbounds i32* %nprocs, i64 %indvars.iv
  %5 = load i32* %4, align 4, !tbaa !20
  %6 = srem i32 %.01, %5
  %7 = getelementptr inbounds i32* %pos, i64 %indvars.iv
  store i32 %6, i32* %7, align 4, !tbaa !20
  %8 = load i32* %4, align 4, !tbaa !20
  %9 = sdiv i32 %.01, %8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond, label %._crit_edge, label %3

._crit_edge:                                      ; preds = %3, %0
  ret i32 0
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @PUGH_ComposeIJK(i32 %dim, i32* nocapture readonly %nprocs, i32* nocapture readonly %pos) #4 {
  %1 = add nsw i32 %dim, -1
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds i32* %pos, i64 %2
  %4 = load i32* %3, align 4, !tbaa !20
  %5 = add i32 %dim, -2
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %7 = sext i32 %5 to i64
  br label %8

; <label>:8                                       ; preds = %.lr.ph, %8
  %indvars.iv = phi i64 [ %7, %.lr.ph ], [ %indvars.iv.next, %8 ]
  %ijk.01 = phi i32 [ %4, %.lr.ph ], [ %14, %8 ]
  %9 = getelementptr inbounds i32* %pos, i64 %indvars.iv
  %10 = load i32* %9, align 4, !tbaa !20
  %11 = getelementptr inbounds i32* %nprocs, i64 %indvars.iv
  %12 = load i32* %11, align 4, !tbaa !20
  %13 = mul nsw i32 %12, %ijk.01
  %14 = add nsw i32 %13, %10
  %15 = icmp sgt i64 %indvars.iv, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %15, label %8, label %._crit_edge

._crit_edge:                                      ; preds = %8, %0
  %ijk.0.lcssa = phi i32 [ %4, %0 ], [ %14, %8 ]
  ret i32 %ijk.0.lcssa
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_SetupBoundingBox(i32 %dim, i32* nocapture readnone %perme, i32 %stagger, i32* nocapture readnone %sh, i32* nocapture readonly %nghosts, i32 %total_procs, i32* %nprocs, %struct.PGExtras* nocapture readonly %this) #1 {
  %1 = sext i32 %dim to i64
  %2 = shl nsw i64 %1, 3
  %3 = tail call i8* @malloc(i64 %2) #7
  %4 = bitcast i8* %3 to i32**
  %5 = shl nsw i64 %1, 2
  %6 = tail call i8* @malloc(i64 %5) #7
  %7 = bitcast i8* %6 to i32*
  %8 = icmp ne i8* %3, null
  %9 = icmp ne i8* %6, null
  %or.cond = and i1 %8, %9
  br i1 %or.cond, label %12, label %.preheader

.preheader:                                       ; preds = %PUGH_DecomposeIJK.exit._crit_edge, %12, %0
  %10 = icmp sgt i32 %dim, 0
  br i1 %10, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %11 = add i32 %dim, -1
  br label %85

; <label>:12                                      ; preds = %0
  %13 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 1
  %14 = load i32** %13, align 8, !tbaa !14
  %15 = tail call i32 @PUGH_GetBounds(i32 %dim, i32** %4, i32* %nprocs, i32* %14) #7
  %16 = icmp sgt i32 %total_procs, 0
  br i1 %16, label %.lr.ph7, label %.preheader

.lr.ph7:                                          ; preds = %12
  %17 = icmp sgt i32 %dim, 0
  %18 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 3
  %19 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 4
  %20 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 12
  %21 = icmp eq i32 %stagger, 1
  %22 = add i32 %dim, -1
  %23 = add i32 %total_procs, -1
  br label %24

; <label>:24                                      ; preds = %PUGH_DecomposeIJK.exit._crit_edge, %.lr.ph7
  %indvars.iv14 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next15, %PUGH_DecomposeIJK.exit._crit_edge ]
  br i1 %17, label %.lr.ph.i, label %PUGH_DecomposeIJK.exit._crit_edge

.lr.ph.i:                                         ; preds = %24
  %25 = trunc i64 %indvars.iv14 to i32
  br label %26

; <label>:26                                      ; preds = %26, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %26 ]
  %.01.i = phi i32 [ %25, %.lr.ph.i ], [ %31, %26 ]
  %27 = getelementptr inbounds i32* %nprocs, i64 %indvars.iv.i
  %28 = load i32* %27, align 4, !tbaa !20
  %29 = srem i32 %.01.i, %28
  %30 = getelementptr inbounds i32* %7, i64 %indvars.iv.i
  store i32 %29, i32* %30, align 4, !tbaa !20
  %31 = sdiv i32 %.01.i, %28
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %lftr.wideiv8 = trunc i64 %indvars.iv.i to i32
  %exitcond9 = icmp eq i32 %lftr.wideiv8, %22
  br i1 %exitcond9, label %PUGH_DecomposeIJK.exit.preheader, label %26

PUGH_DecomposeIJK.exit.preheader:                 ; preds = %26
  br i1 %17, label %.lr.ph4, label %PUGH_DecomposeIJK.exit._crit_edge

.lr.ph4:                                          ; preds = %PUGH_DecomposeIJK.exit.preheader, %PUGH_DecomposeIJK.exit
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %PUGH_DecomposeIJK.exit ], [ 0, %PUGH_DecomposeIJK.exit.preheader ]
  %32 = getelementptr inbounds i32* %7, i64 %indvars.iv10
  %33 = load i32* %32, align 4, !tbaa !20
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

; <label>:35                                      ; preds = %.lr.ph4
  %36 = load i32*** %18, align 8, !tbaa !9
  %37 = getelementptr inbounds i32** %36, i64 %indvars.iv14
  %38 = load i32** %37, align 8, !tbaa !19
  %39 = getelementptr inbounds i32* %38, i64 %indvars.iv10
  store i32 0, i32* %39, align 4, !tbaa !20
  br label %56

; <label>:40                                      ; preds = %.lr.ph4
  %41 = sext i32 %33 to i64
  %42 = getelementptr inbounds i32** %4, i64 %indvars.iv10
  %43 = load i32** %42, align 8, !tbaa !19
  %44 = getelementptr inbounds i32* %43, i64 %41
  %45 = load i32* %44, align 4, !tbaa !20
  %46 = add nsw i32 %45, 1
  %47 = getelementptr inbounds i32* %nghosts, i64 %indvars.iv10
  %48 = load i32* %47, align 4, !tbaa !20
  %49 = sub i32 %46, %48
  %50 = load i32*** %18, align 8, !tbaa !9
  %51 = getelementptr inbounds i32** %50, i64 %indvars.iv14
  %52 = load i32** %51, align 8, !tbaa !19
  %53 = getelementptr inbounds i32* %52, i64 %indvars.iv10
  store i32 %49, i32* %53, align 4, !tbaa !20
  br i1 %21, label %54, label %56

; <label>:54                                      ; preds = %40
  %55 = add nsw i32 %49, -1
  store i32 %55, i32* %53, align 4, !tbaa !20
  br label %56

; <label>:56                                      ; preds = %40, %54, %35
  %57 = getelementptr inbounds i32* %nprocs, i64 %indvars.iv10
  %58 = load i32* %57, align 4, !tbaa !20
  %59 = add nsw i32 %58, -1
  %60 = icmp eq i32 %33, %59
  br i1 %60, label %61, label %70

; <label>:61                                      ; preds = %56
  %62 = load i32** %13, align 8, !tbaa !14
  %63 = getelementptr inbounds i32* %62, i64 %indvars.iv10
  %64 = load i32* %63, align 4, !tbaa !20
  %65 = add nsw i32 %64, -1
  %66 = load i32*** %19, align 8, !tbaa !10
  %67 = getelementptr inbounds i32** %66, i64 %indvars.iv14
  %68 = load i32** %67, align 8, !tbaa !19
  %69 = getelementptr inbounds i32* %68, i64 %indvars.iv10
  store i32 %65, i32* %69, align 4, !tbaa !20
  br label %PUGH_DecomposeIJK.exit

; <label>:70                                      ; preds = %56
  %71 = add nsw i32 %33, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32** %4, i64 %indvars.iv10
  %74 = load i32** %73, align 8, !tbaa !19
  %75 = getelementptr inbounds i32* %74, i64 %72
  %76 = load i32* %75, align 4, !tbaa !20
  %77 = load i32** %20, align 8, !tbaa !13
  %78 = getelementptr inbounds i32* %77, i64 %indvars.iv10
  %79 = load i32* %78, align 4, !tbaa !20
  %80 = add nsw i32 %79, %76
  %81 = load i32*** %19, align 8, !tbaa !10
  %82 = getelementptr inbounds i32** %81, i64 %indvars.iv14
  %83 = load i32** %82, align 8, !tbaa !19
  %84 = getelementptr inbounds i32* %83, i64 %indvars.iv10
  store i32 %80, i32* %84, align 4, !tbaa !20
  br label %PUGH_DecomposeIJK.exit

PUGH_DecomposeIJK.exit:                           ; preds = %61, %70
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %lftr.wideiv12 = trunc i64 %indvars.iv10 to i32
  %exitcond13 = icmp eq i32 %lftr.wideiv12, %22
  br i1 %exitcond13, label %PUGH_DecomposeIJK.exit._crit_edge, label %.lr.ph4

PUGH_DecomposeIJK.exit._crit_edge:                ; preds = %PUGH_DecomposeIJK.exit, %24, %PUGH_DecomposeIJK.exit.preheader
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %lftr.wideiv16 = trunc i64 %indvars.iv14 to i32
  %exitcond17 = icmp eq i32 %lftr.wideiv16, %23
  br i1 %exitcond17, label %.preheader, label %24

; <label>:85                                      ; preds = %85, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %85 ]
  %86 = getelementptr inbounds i32** %4, i64 %indvars.iv
  %87 = bitcast i32** %86 to i8**
  %88 = load i8** %87, align 8, !tbaa !19
  tail call void @free(i8* %88) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %11
  br i1 %exitcond, label %._crit_edge, label %85

._crit_edge:                                      ; preds = %85, %.preheader
  tail call void @free(i8* %3) #8
  tail call void @free(i8* %6) #8
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_SetupRemoteSizes(i32 %dim, i32* nocapture readnone %perme, i32 %stagger, i32* nocapture readnone %sh, i32* nocapture readnone %nghosts, i32 %total_procs, i32* nocapture readnone %nprocs, %struct.PGExtras* nocapture readonly %this) #1 {
  %1 = icmp sgt i32 %total_procs, 0
  br i1 %1, label %.lr.ph4, label %._crit_edge5

.lr.ph4:                                          ; preds = %0
  %2 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 8
  %3 = load i32** %2, align 8, !tbaa !12
  %4 = icmp sgt i32 %dim, 0
  %5 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 4
  %6 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 3
  %7 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 9
  %8 = add i32 %dim, -1
  %9 = add i32 %total_procs, -1
  br label %10

; <label>:10                                      ; preds = %._crit_edge, %.lr.ph4
  %indvars.iv6 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next7, %._crit_edge ]
  %11 = getelementptr inbounds i32* %3, i64 %indvars.iv6
  store i32 1, i32* %11, align 4, !tbaa !20
  br i1 %4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %10
  %12 = load i32*** %5, align 8, !tbaa !10
  %13 = getelementptr inbounds i32** %12, i64 %indvars.iv6
  %14 = load i32** %13, align 8, !tbaa !19
  %15 = load i32*** %6, align 8, !tbaa !9
  %16 = getelementptr inbounds i32** %15, i64 %indvars.iv6
  %17 = load i32** %16, align 8, !tbaa !19
  %18 = load i32*** %7, align 8, !tbaa !11
  %19 = getelementptr inbounds i32** %18, i64 %indvars.iv6
  %20 = load i32** %19, align 8, !tbaa !19
  br label %21

; <label>:21                                      ; preds = %21, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %21 ]
  %22 = getelementptr inbounds i32* %14, i64 %indvars.iv
  %23 = load i32* %22, align 4, !tbaa !20
  %24 = getelementptr inbounds i32* %17, i64 %indvars.iv
  %25 = load i32* %24, align 4, !tbaa !20
  %26 = add i32 %23, 1
  %27 = sub i32 %26, %25
  %28 = getelementptr inbounds i32* %20, i64 %indvars.iv
  store i32 %27, i32* %28, align 4, !tbaa !20
  %29 = load i32* %11, align 4, !tbaa !20
  %30 = mul nsw i32 %29, %27
  store i32 %30, i32* %11, align 4, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %8
  br i1 %exitcond, label %._crit_edge, label %21

._crit_edge:                                      ; preds = %21, %10
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %lftr.wideiv8 = trunc i64 %indvars.iv6 to i32
  %exitcond9 = icmp eq i32 %lftr.wideiv8, %9
  br i1 %exitcond9, label %._crit_edge5, label %10

._crit_edge5:                                     ; preds = %._crit_edge, %0
  ret i32 0
}

; Function Attrs: optsize
declare i32 @PUGH_GetBounds(i32, i32**, i32*, i32*) #3

; Function Attrs: nounwind optsize ssp uwtable
define %struct.PComm* @PUGH_SetupGArrayGroupComm(%struct.PGH* nocapture readnone %pughGH, i32 %dim, i32 %first_var, i32 %n_vars, i32 %sync_timelevel, i32 %vartype, %struct.PGExtras* nocapture readonly %extras) #1 {
  %1 = tail call i8* @malloc(i64 56) #7
  %2 = bitcast i8* %1 to %struct.PComm*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %.loopexit, label %4

; <label>:4                                       ; preds = %0
  %5 = shl nsw i32 %dim, 1
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 2
  %8 = tail call i8* @malloc(i64 %7) #7
  %9 = bitcast i8* %1 to i8**
  store i8* %8, i8** %9, align 8, !tbaa !28
  %10 = shl nsw i64 %6, 3
  %11 = tail call i8* @malloc(i64 %10) #7
  %12 = getelementptr inbounds i8* %1, i64 8
  %13 = bitcast i8* %12 to i8***
  %14 = bitcast i8* %12 to i8**
  store i8* %11, i8** %14, align 8, !tbaa !30
  %15 = tail call i8* @malloc(i64 %10) #7
  %16 = getelementptr inbounds i8* %1, i64 16
  %17 = bitcast i8* %16 to i8***
  %18 = bitcast i8* %16 to i8**
  store i8* %15, i8** %18, align 8, !tbaa !31
  %19 = tail call i8* @malloc(i64 %7) #7
  %20 = getelementptr inbounds i8* %1, i64 32
  %21 = bitcast i8* %20 to i32**
  %22 = bitcast i8* %20 to i8**
  store i8* %19, i8** %22, align 8, !tbaa !32
  %23 = icmp eq i8* %8, null
  %24 = bitcast i8* %11 to i8**
  %25 = bitcast i8* %15 to i8**
  %26 = bitcast i8* %8 to i32*
  %27 = bitcast i8* %19 to i32*
  br i1 %23, label %.thread, label %28

; <label>:28                                      ; preds = %4
  %29 = icmp eq i8* %11, null
  br i1 %29, label %48, label %30

; <label>:30                                      ; preds = %28
  %31 = icmp eq i8* %15, null
  %32 = icmp eq i8* %19, null
  %or.cond = or i1 %32, %31
  br i1 %or.cond, label %48, label %33

; <label>:33                                      ; preds = %30
  %34 = getelementptr inbounds i8* %1, i64 24
  %35 = bitcast i8* %34 to i32*
  store i32 0, i32* %35, align 4, !tbaa !33
  %36 = getelementptr inbounds i8* %1, i64 40
  %37 = bitcast i8* %36 to i32*
  store i32 %first_var, i32* %37, align 4, !tbaa !34
  %38 = getelementptr inbounds i8* %1, i64 44
  %39 = bitcast i8* %38 to i32*
  store i32 %n_vars, i32* %39, align 4, !tbaa !35
  %40 = getelementptr inbounds i8* %1, i64 48
  %41 = bitcast i8* %40 to i32*
  store i32 %sync_timelevel, i32* %41, align 4, !tbaa !36
  %42 = icmp sgt i32 %dim, 0
  br i1 %42, label %.lr.ph7, label %.thread3

.lr.ph7:                                          ; preds = %33, %.lr.ph7
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %.lr.ph7 ], [ 0, %33 ]
  %43 = getelementptr inbounds i32* %26, i64 %indvars.iv8
  store i32 0, i32* %43, align 4, !tbaa !20
  %44 = getelementptr inbounds i8** %24, i64 %indvars.iv8
  store i8* null, i8** %44, align 8, !tbaa !19
  %45 = getelementptr inbounds i8** %25, i64 %indvars.iv8
  store i8* null, i8** %45, align 8, !tbaa !19
  %46 = getelementptr inbounds i32* %27, i64 %indvars.iv8
  store i32 0, i32* %46, align 4, !tbaa !20
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  %47 = icmp slt i64 %indvars.iv.next9, %6
  br i1 %47, label %.lr.ph7, label %.thread3

; <label>:48                                      ; preds = %28, %30
  tail call void @free(i8* %8) #8
  %.pre = load i8*** %13, align 8, !tbaa !30
  br label %.thread

.thread:                                          ; preds = %4, %48
  %49 = phi i8** [ %24, %4 ], [ %.pre, %48 ]
  %50 = icmp eq i8** %49, null
  br i1 %50, label %53, label %51

; <label>:51                                      ; preds = %.thread
  %52 = bitcast i8** %49 to i8*
  tail call void @free(i8* %52) #8
  br label %53

; <label>:53                                      ; preds = %.thread, %51
  %54 = load i8*** %17, align 8, !tbaa !31
  %55 = icmp eq i8** %54, null
  br i1 %55, label %58, label %56

; <label>:56                                      ; preds = %53
  %57 = bitcast i8** %54 to i8*
  tail call void @free(i8* %57) #8
  br label %58

; <label>:58                                      ; preds = %53, %56
  %59 = load i32** %21, align 8, !tbaa !32
  %60 = icmp eq i32* %59, null
  br i1 %60, label %.thread1, label %61

; <label>:61                                      ; preds = %58
  %62 = bitcast i32* %59 to i8*
  tail call void @free(i8* %62) #8
  br label %.thread1

.thread1:                                         ; preds = %61, %58
  tail call void @free(i8* %1) #8
  br label %.loopexit

.thread3:                                         ; preds = %.lr.ph7, %33
  %63 = getelementptr inbounds %struct.PGExtras* %extras, i64 0, i32 11
  %64 = load i32** %63, align 8, !tbaa !18
  store i32 1, i32* %64, align 4, !tbaa !20
  %65 = getelementptr inbounds %struct.PGExtras* %extras, i64 0, i32 0
  %66 = load i32* %65, align 4, !tbaa !2
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.thread3
  %68 = getelementptr inbounds %struct.PGExtras* %extras, i64 0, i32 6
  %69 = load i32** %68, align 8, !tbaa !15
  br label %70

; <label>:70                                      ; preds = %.lr.ph, %70
  %71 = phi i32 [ 1, %.lr.ph ], [ %75, %70 ]
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %70 ]
  %72 = add nsw i64 %indvars.iv, -1
  %73 = getelementptr inbounds i32* %69, i64 %72
  %74 = load i32* %73, align 4, !tbaa !20
  %75 = mul nsw i32 %74, %71
  %76 = getelementptr inbounds i32* %64, i64 %indvars.iv
  store i32 %75, i32* %76, align 4, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %77 = load i32* %65, align 4, !tbaa !2
  %78 = sext i32 %77 to i64
  %79 = icmp slt i64 %indvars.iv.next, %78
  br i1 %79, label %70, label %.loopexit

.loopexit:                                        ; preds = %70, %.thread3, %0, %.thread1
  %this.02 = phi %struct.PComm* [ null, %.thread1 ], [ null, %0 ], [ %2, %.thread3 ], [ %2, %70 ]
  ret %struct.PComm* %this.02
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.PComm* @PUGH_SetupGArrayComm(%struct.PGH* nocapture readnone %pughGH, i32 %dim, i32 %var, i32 %sync_timelevel, i32 %vartype, %struct.PGExtras* nocapture readonly %extras) #1 {
  %1 = tail call %struct.PComm* @PUGH_SetupGArrayGroupComm(%struct.PGH* undef, i32 %dim, i32 %var, i32 1, i32 %sync_timelevel, i32 undef, %struct.PGExtras* %extras) #8
  ret %struct.PComm* %1
}

; Function Attrs: nounwind optsize ssp uwtable
define void @PUGH_DestroyComm(%struct.PComm** nocapture %comm) #1 {
  %1 = bitcast %struct.PComm** %comm to i8***
  %2 = load i8*** %1, align 8, !tbaa !19
  %3 = load i8** %2, align 8, !tbaa !28
  tail call void @free(i8* %3) #8
  %4 = load %struct.PComm** %comm, align 8, !tbaa !19
  %5 = getelementptr inbounds %struct.PComm* %4, i64 0, i32 1
  %6 = bitcast i8*** %5 to i8**
  %7 = load i8** %6, align 8, !tbaa !30
  tail call void @free(i8* %7) #8
  %8 = load %struct.PComm** %comm, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.PComm* %8, i64 0, i32 2
  %10 = bitcast i8*** %9 to i8**
  %11 = load i8** %10, align 8, !tbaa !31
  tail call void @free(i8* %11) #8
  %12 = load %struct.PComm** %comm, align 8, !tbaa !19
  %13 = getelementptr inbounds %struct.PComm* %12, i64 0, i32 4
  %14 = bitcast i32** %13 to i8**
  %15 = load i8** %14, align 8, !tbaa !32
  tail call void @free(i8* %15) #8
  %16 = bitcast %struct.PComm** %comm to i8**
  %17 = load i8** %16, align 8, !tbaa !19
  tail call void @free(i8* %17) #8
  store %struct.PComm* null, %struct.PComm** %comm, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define noalias %struct.PGA* @PUGH_SetupGArray(i8* %parent, %struct.PGExtras* %extras, %struct.PConnectivity* %connectivity, %struct.PComm* %groupcomm, i8* %name, i32 %id, i32 %arrayid, i32 %varsize, i32 %vtype, i32 %stagger, i32 %vector_size, i32 %vector_entry, %struct.PGA* %vector_base) #1 {
  %1 = tail call i8* @malloc(i64 104) #7
  %2 = bitcast i8* %1 to %struct.PGA*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %51, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds i8* %1, i64 56
  %6 = bitcast i8* %5 to %struct.PGExtras**
  store %struct.PGExtras* %extras, %struct.PGExtras** %6, align 8, !tbaa !37
  %7 = getelementptr inbounds i8* %1, i64 64
  %8 = bitcast i8* %7 to %struct.PConnectivity**
  store %struct.PConnectivity* %connectivity, %struct.PConnectivity** %8, align 8, !tbaa !39
  %9 = getelementptr inbounds i8* %1, i64 72
  %10 = bitcast i8* %9 to %struct.PComm**
  store %struct.PComm* null, %struct.PComm** %10, align 8, !tbaa !40
  %11 = getelementptr inbounds i8* %1, i64 80
  %12 = bitcast i8* %11 to %struct.PComm**
  store %struct.PComm* %groupcomm, %struct.PComm** %12, align 8, !tbaa !41
  %13 = getelementptr inbounds i8* %1, i64 40
  %14 = bitcast i8* %13 to i8**
  store i8* %parent, i8** %14, align 8, !tbaa !42
  %15 = getelementptr inbounds i8* %1, i64 48
  %16 = bitcast i8* %15 to i32*
  store i32 %varsize, i32* %16, align 4, !tbaa !43
  %17 = getelementptr inbounds i8* %1, i64 52
  %18 = bitcast i8* %17 to i32*
  store i32 %vtype, i32* %18, align 4, !tbaa !44
  %19 = getelementptr inbounds i8* %1, i64 36
  %20 = bitcast i8* %19 to i32*
  store i32 %stagger, i32* %20, align 4, !tbaa !45
  %21 = getelementptr inbounds i8* %1, i64 8
  %22 = bitcast i8* %21 to i32*
  store i32 %id, i32* %22, align 4, !tbaa !46
  %23 = getelementptr inbounds i8* %1, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %arrayid, i32* %24, align 4, !tbaa !47
  %25 = getelementptr inbounds i8* %1, i64 32
  %26 = bitcast i8* %25 to i32*
  store i32 0, i32* %26, align 4, !tbaa !48
  %27 = tail call i64 @strlen(i8* %name) #7
  %28 = add i64 %27, 1
  %29 = tail call i8* @malloc(i64 %28) #7
  %30 = bitcast i8* %1 to i8**
  store i8* %29, i8** %30, align 8, !tbaa !49
  %31 = sext i32 %varsize to i64
  %32 = tail call i8* @calloc(i64 1, i64 %31) #7
  %33 = getelementptr inbounds i8* %1, i64 16
  %34 = bitcast i8* %33 to i8**
  store i8* %32, i8** %34, align 8, !tbaa !50
  %35 = getelementptr inbounds i8* %1, i64 24
  %36 = bitcast i8* %35 to i8**
  store i8* %32, i8** %36, align 8, !tbaa !51
  %37 = getelementptr inbounds i8* %1, i64 88
  %38 = bitcast i8* %37 to i32*
  store i32 %vector_size, i32* %38, align 4, !tbaa !52
  %39 = getelementptr inbounds i8* %1, i64 92
  %40 = bitcast i8* %39 to i32*
  store i32 %vector_entry, i32* %40, align 4, !tbaa !53
  %41 = getelementptr inbounds i8* %1, i64 96
  %42 = bitcast i8* %41 to %struct.PGA**
  store %struct.PGA* %vector_base, %struct.PGA** %42, align 8, !tbaa !54
  %43 = icmp eq i8* %29, null
  %44 = icmp eq i8* %32, null
  br i1 %43, label %.thread, label %45

; <label>:45                                      ; preds = %4
  br i1 %44, label %.thread.thread, label %46

; <label>:46                                      ; preds = %45
  %47 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %29, i1 false)
  %48 = tail call i8* @__strcpy_chk(i8* %29, i8* %name, i64 %47) #7
  br label %51

.thread.thread:                                   ; preds = %45
  tail call void @free(i8* %29) #8
  br label %50

.thread:                                          ; preds = %4
  br i1 %44, label %50, label %49

; <label>:49                                      ; preds = %.thread
  tail call void @free(i8* %32) #8
  br label %50

; <label>:50                                      ; preds = %.thread.thread, %.thread, %49
  tail call void @free(i8* %1) #8
  br label %51

; <label>:51                                      ; preds = %0, %46, %50
  %this.0 = phi %struct.PGA* [ %2, %46 ], [ null, %50 ], [ %2, %0 ]
  ret %struct.PGA* %this.0
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #6

; Function Attrs: nounwind optsize ssp uwtable
define void @PUGH_DestroyGArray(%struct.PGA** %GA) #1 {
  %1 = icmp eq %struct.PGA** %GA, null
  br i1 %1, label %34, label %2

; <label>:2                                       ; preds = %0
  %3 = load %struct.PGA** %GA, align 8, !tbaa !19
  %4 = icmp eq %struct.PGA* %3, null
  br i1 %4, label %34, label %5

; <label>:5                                       ; preds = %2
  %6 = getelementptr inbounds %struct.PGA* %3, i64 0, i32 5
  %7 = load i32* %6, align 4, !tbaa !48
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

; <label>:9                                       ; preds = %5
  %10 = tail call i32 @PUGH_DisableGArrayDataStorage(%struct.PGA* %3) #7
  %.pre = load %struct.PGA** %GA, align 8, !tbaa !19
  br label %11

; <label>:11                                      ; preds = %5, %9
  %12 = phi %struct.PGA* [ %3, %5 ], [ %.pre, %9 ]
  %13 = getelementptr inbounds %struct.PGA* %12, i64 0, i32 12
  %14 = load %struct.PComm** %13, align 8, !tbaa !40
  %15 = icmp eq %struct.PComm* %14, null
  br i1 %15, label %25, label %16

; <label>:16                                      ; preds = %11
  %17 = getelementptr inbounds %struct.PComm* %14, i64 0, i32 3
  %18 = load i32* %17, align 4, !tbaa !33
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

; <label>:20                                      ; preds = %16
  %21 = tail call i32 @PUGH_DisableGArrayComm(%struct.PGA* %12) #7
  %.pre1 = load %struct.PGA** %GA, align 8, !tbaa !19
  br label %22

; <label>:22                                      ; preds = %16, %20
  %23 = phi %struct.PGA* [ %12, %16 ], [ %.pre1, %20 ]
  %24 = getelementptr inbounds %struct.PGA* %23, i64 0, i32 12
  tail call void @PUGH_DestroyComm(%struct.PComm** %24) #8
  %.pre2 = load %struct.PGA** %GA, align 8, !tbaa !19
  br label %25

; <label>:25                                      ; preds = %11, %22
  %26 = phi %struct.PGA* [ %12, %11 ], [ %.pre2, %22 ]
  %27 = getelementptr inbounds %struct.PGA* %26, i64 0, i32 0
  %28 = load i8** %27, align 8, !tbaa !49
  tail call void @free(i8* %28) #8
  %29 = load %struct.PGA** %GA, align 8, !tbaa !19
  %30 = getelementptr inbounds %struct.PGA* %29, i64 0, i32 3
  %31 = load i8** %30, align 8, !tbaa !50
  tail call void @free(i8* %31) #8
  %32 = bitcast %struct.PGA** %GA to i8**
  %33 = load i8** %32, align 8, !tbaa !19
  tail call void @free(i8* %33) #8
  store %struct.PGA* null, %struct.PGA** %GA, align 8, !tbaa !19
  br label %34

; <label>:34                                      ; preds = %2, %0, %25
  ret void
}

; Function Attrs: optsize
declare i32 @PUGH_DisableGArrayDataStorage(%struct.PGA*) #3

; Function Attrs: optsize
declare i32 @PUGH_DisableGArrayComm(%struct.PGA*) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"PGExtras", !4, i64 0, !7, i64 8, !8, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !4, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !5, i64 104, !5, i64 168, !5, i64 232}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!"double", !5, i64 0}
!9 = !{!3, !7, i64 24}
!10 = !{!3, !7, i64 32}
!11 = !{!3, !7, i64 72}
!12 = !{!3, !7, i64 64}
!13 = !{!3, !7, i64 96}
!14 = !{!3, !7, i64 8}
!15 = !{!3, !7, i64 48}
!16 = !{!3, !7, i64 40}
!17 = !{!3, !7, i64 80}
!18 = !{!3, !7, i64 88}
!19 = !{!7, !7, i64 0}
!20 = !{!4, !4, i64 0}
!21 = !{!3, !4, i64 56}
!22 = !{!3, !8, i64 16}
!23 = !{!24, !7, i64 8}
!24 = !{!"PConnectivity", !4, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!25 = !{!24, !7, i64 24}
!26 = !{!24, !7, i64 16}
!27 = !{!24, !4, i64 0}
!28 = !{!29, !7, i64 0}
!29 = !{!"PComm", !7, i64 0, !7, i64 8, !7, i64 16, !4, i64 24, !7, i64 32, !4, i64 40, !4, i64 44, !4, i64 48}
!30 = !{!29, !7, i64 8}
!31 = !{!29, !7, i64 16}
!32 = !{!29, !7, i64 32}
!33 = !{!29, !4, i64 24}
!34 = !{!29, !4, i64 40}
!35 = !{!29, !4, i64 44}
!36 = !{!29, !4, i64 48}
!37 = !{!38, !7, i64 56}
!38 = !{!"PGA", !7, i64 0, !4, i64 8, !4, i64 12, !7, i64 16, !7, i64 24, !4, i64 32, !4, i64 36, !7, i64 40, !4, i64 48, !4, i64 52, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !4, i64 88, !4, i64 92, !7, i64 96}
!39 = !{!38, !7, i64 64}
!40 = !{!38, !7, i64 72}
!41 = !{!38, !7, i64 80}
!42 = !{!38, !7, i64 40}
!43 = !{!38, !4, i64 48}
!44 = !{!38, !4, i64 52}
!45 = !{!38, !4, i64 36}
!46 = !{!38, !4, i64 8}
!47 = !{!38, !4, i64 12}
!48 = !{!38, !4, i64 32}
!49 = !{!38, !7, i64 0}
!50 = !{!38, !7, i64 16}
!51 = !{!38, !7, i64 24}
!52 = !{!38, !4, i64 88}
!53 = !{!38, !4, i64 92}
!54 = !{!38, !7, i64 96}

; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }
%struct.PComm = type { i32*, i8**, i8**, i32, i32*, i32, i32, i32 }
%struct.PGA = type { i8*, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32, %struct.PGExtras*, %struct.PConnectivity*, %struct.PComm*, %struct.PComm*, i32, i32, %struct.PGA* }

@.str = private unnamed_addr constant [77 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"PUGH\00", align 1
@.str2 = private unnamed_addr constant [38 x i8] c"Unknown group type in PUGH_SetupGroup\00", align 1
@.str3 = private unnamed_addr constant [91 x i8] c"$Header: /cactus/CactusPUGH/PUGH/src/SetupGroup.c,v 1.45 2001/10/07 10:06:31 goodale Exp $\00", align 1
@.str4 = private unnamed_addr constant [49 x i8] c"Memory allocation error in PUGH_SetupScalarGroup\00", align 1
@.str5 = private unnamed_addr constant [45 x i8] c"Memory allocation error in PUGH_SetupGAGroup\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_PUGH_SetupGroup_c() #0 {
  ret i8* getelementptr inbounds ([91 x i8]* @.str3, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_SetupGroup(%struct.PGH* %newGH, i32* %nsize, i32* %nghostsize, i32 %gtype, i32 %vtype, i32 %dim, i32 %n_variables, i32 %staggercode, i32 %n_timelevels, i32 %vectorgroup) #1 {
  %1 = icmp eq i32 %gtype, 1
  br i1 %1, label %2, label %46

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 7
  %4 = bitcast i8**** %3 to i8**
  %5 = load i8** %4, align 8, !tbaa !2
  %6 = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 5
  %7 = load i32* %6, align 4, !tbaa !9
  %8 = add nsw i32 %7, %n_variables
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call i8* @realloc(i8* %5, i64 %10) #4
  %12 = icmp eq i8* %11, null
  br i1 %12, label %.critedge.thread.i, label %13

; <label>:13                                      ; preds = %2
  store i8* %11, i8** %4, align 8, !tbaa !2
  %14 = tail call i32 @CCTK_VarTypeSize(i32 %vtype) #4
  %15 = icmp sgt i32 %n_variables, 0
  br i1 %15, label %.lr.ph10.i, label %._crit_edge

._crit_edge:                                      ; preds = %13
  %.pre = load i32* %6, align 4, !tbaa !9
  br label %.loopexit

.lr.ph10.i:                                       ; preds = %13
  %16 = sext i32 %n_timelevels to i64
  %17 = shl nsw i64 %16, 3
  %18 = add nsw i32 %14, 1
  %19 = sext i32 %18 to i64
  %20 = icmp sgt i32 %n_timelevels, 0
  %21 = sext i32 %14 to i64
  br label %22

; <label>:22                                      ; preds = %.loopexit.i, %.lr.ph10.i
  %variable.06.i = phi i32 [ 0, %.lr.ph10.i ], [ %41, %.loopexit.i ]
  %23 = tail call i8* @malloc(i64 %17) #4
  %24 = icmp eq i8* %23, null
  br i1 %24, label %.critedge.thread.i, label %25

; <label>:25                                      ; preds = %22
  %26 = load i32* %6, align 4, !tbaa !9
  %27 = add nsw i32 %26, %variable.06.i
  %28 = sext i32 %27 to i64
  %29 = load i8**** %3, align 8, !tbaa !2
  %30 = getelementptr inbounds i8*** %29, i64 %28
  %31 = bitcast i8*** %30 to i8**
  store i8* %23, i8** %31, align 8, !tbaa !10
  br i1 %20, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %25, %34
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %34 ], [ 0, %25 ]
  %32 = tail call i8* @malloc(i64 %19) #4
  %33 = icmp eq i8* %32, null
  br i1 %33, label %.critedge.thread.i, label %34

; <label>:34                                      ; preds = %.lr.ph.i
  %35 = load i8**** %3, align 8, !tbaa !2
  %36 = getelementptr inbounds i8*** %35, i64 %28
  %37 = load i8*** %36, align 8, !tbaa !10
  %38 = getelementptr inbounds i8** %37, i64 %indvars.iv.i
  store i8* %32, i8** %38, align 8, !tbaa !10
  %39 = getelementptr inbounds i8* %32, i64 %21
  store i8 0, i8* %39, align 1, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %40 = icmp slt i64 %indvars.iv.next.i, %16
  br i1 %40, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %34, %25
  %41 = add nuw nsw i32 %variable.06.i, 1
  %42 = icmp slt i32 %41, %n_variables
  br i1 %42, label %22, label %.loopexit

.loopexit:                                        ; preds = %.loopexit.i, %._crit_edge
  %43 = phi i32 [ %.pre, %._crit_edge ], [ %26, %.loopexit.i ]
  %44 = add nsw i32 %43, %n_variables
  store i32 %44, i32* %6, align 4, !tbaa !9
  br label %PUGH_SetupScalarGroup.exit

.critedge.thread.i:                               ; preds = %22, %.lr.ph.i, %2
  %45 = tail call i32 @CCTK_Warn(i32 1, i32 153, i8* getelementptr inbounds ([77 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str4, i64 0, i64 0)) #4
  br label %PUGH_SetupScalarGroup.exit

; <label>:46                                      ; preds = %0
  %47 = and i32 %gtype, -2
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %176

; <label>:49                                      ; preds = %46
  %50 = tail call i32 @CCTK_VarTypeSize(i32 %vtype) #4
  %51 = icmp eq i32 %gtype, 3
  br i1 %51, label %52, label %88

; <label>:52                                      ; preds = %49
  %53 = sext i32 %dim to i64
  %54 = tail call i8* @calloc(i64 %53, i64 4) #4
  %55 = bitcast i8* %54 to i32*
  %56 = tail call i8* @calloc(i64 %53, i64 4) #4
  %57 = bitcast i8* %56 to i32*
  %58 = icmp ne i8* %54, null
  %59 = icmp ne i8* %56, null
  %or.cond.i = and i1 %58, %59
  br i1 %or.cond.i, label %.preheader5.i, label %60

; <label>:60                                      ; preds = %52
  %61 = tail call i32 @CCTK_Warn(i32 0, i32 266, i8* getelementptr inbounds ([77 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str5, i64 0, i64 0)) #4
  br label %.preheader5.i

.preheader5.i:                                    ; preds = %60, %52
  %62 = icmp sgt i32 %dim, 0
  br i1 %62, label %.lr.ph11.i, label %._crit_edge12.i

.lr.ph11.i:                                       ; preds = %.preheader5.i
  %63 = add i32 %dim, -1
  br label %64

; <label>:64                                      ; preds = %78, %.lr.ph11.i
  %indvars.iv13.i = phi i64 [ 0, %.lr.ph11.i ], [ %indvars.iv.next14.i, %78 ]
  %65 = getelementptr inbounds i32* %57, i64 %indvars.iv13.i
  %66 = load i32* %65, align 4, !tbaa !12
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %78

; <label>:68                                      ; preds = %64
  %69 = getelementptr inbounds i32* %nsize, i64 %indvars.iv13.i
  %70 = load i32* %69, align 4, !tbaa !12
  %ispos.i = icmp sgt i32 %70, -1
  %neg.i = sub i32 0, %70
  %71 = select i1 %ispos.i, i32 %70, i32 %neg.i
  %72 = getelementptr inbounds i32* %nghostsize, i64 %indvars.iv13.i
  %73 = load i32* %72, align 4, !tbaa !12
  %74 = shl nsw i32 %73, 1
  %75 = or i32 %74, 1
  %76 = icmp sgt i32 %71, %75
  br i1 %76, label %78, label %77

; <label>:77                                      ; preds = %68
  store i32 1, i32* %65, align 4, !tbaa !12
  br label %78

; <label>:78                                      ; preds = %77, %68, %64
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %lftr.wideiv9 = trunc i64 %indvars.iv13.i to i32
  %exitcond10 = icmp eq i32 %lftr.wideiv9, %63
  br i1 %exitcond10, label %._crit_edge12.i, label %64

._crit_edge12.i:                                  ; preds = %78, %.preheader5.i
  %79 = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 2
  %80 = load i32* %79, align 4, !tbaa !13
  %81 = tail call %struct.PConnectivity* @PUGH_SetupConnectivity(i32 %dim, i32 %80, i32* %57, i32* %55) #4
  %82 = load i32* %79, align 4, !tbaa !13
  %83 = getelementptr inbounds %struct.PConnectivity* %81, i64 0, i32 1
  %84 = load i32** %83, align 8, !tbaa !14
  %85 = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 3
  %86 = load i32* %85, align 4, !tbaa !16
  %87 = tail call %struct.PGExtras* @PUGH_SetupPGExtras(i32 %dim, i32* %55, i32 %staggercode, i32* %nsize, i32* %nghostsize, i32 %82, i32* %84, i32 %86) #4
  tail call void @free(i8* %56) #4
  tail call void @free(i8* %54) #4
  br label %99

; <label>:88                                      ; preds = %49
  %89 = add nsw i32 %dim, -1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 22
  %92 = load %struct.PConnectivity*** %91, align 8, !tbaa !17
  %93 = getelementptr inbounds %struct.PConnectivity** %92, i64 %90
  %94 = load %struct.PConnectivity** %93, align 8, !tbaa !10
  %95 = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 21
  %96 = load %struct.PGExtras*** %95, align 8, !tbaa !18
  %97 = getelementptr inbounds %struct.PGExtras** %96, i64 %90
  %98 = load %struct.PGExtras** %97, align 8, !tbaa !10
  br label %99

; <label>:99                                      ; preds = %88, %._crit_edge12.i
  %connectivity.0.i = phi %struct.PConnectivity* [ %81, %._crit_edge12.i ], [ %94, %88 ]
  %extras.0.i = phi %struct.PGExtras* [ %87, %._crit_edge12.i ], [ %98, %88 ]
  %100 = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 4
  %101 = load i32* %100, align 4, !tbaa !19
  %102 = icmp eq i32 %101, 1
  %103 = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 5
  br i1 %102, label %104, label %._crit_edge19.i

; <label>:104                                     ; preds = %99
  %105 = load i32* %103, align 4, !tbaa !9
  %106 = tail call %struct.PComm* @PUGH_SetupGArrayGroupComm(%struct.PGH* %newGH, i32 %dim, i32 %105, i32 %n_variables, i32 0, i32 %vtype, %struct.PGExtras* %extras.0.i) #4
  br label %._crit_edge19.i

._crit_edge19.i:                                  ; preds = %104, %99
  %groupcomm.0.i = phi %struct.PComm* [ %106, %104 ], [ null, %99 ]
  %107 = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 7
  %108 = bitcast i8**** %107 to i8**
  %109 = load i8** %108, align 8, !tbaa !2
  %110 = load i32* %103, align 4, !tbaa !9
  %111 = add nsw i32 %110, %n_variables
  %112 = sext i32 %111 to i64
  %113 = shl nsw i64 %112, 3
  %114 = tail call i8* @realloc(i8* %109, i64 %113) #4
  %115 = icmp eq i8* %114, null
  br i1 %115, label %.loopexit.i5, label %116

; <label>:116                                     ; preds = %._crit_edge19.i
  store i8* %114, i8** %108, align 8, !tbaa !2
  %117 = icmp sgt i32 %n_variables, 0
  br i1 %117, label %.lr.ph9.i, label %PUGH_SetupScalarGroup.exit

.lr.ph9.i:                                        ; preds = %116
  %118 = bitcast i8* %114 to i8***
  %119 = bitcast i8* %114 to i8***
  %120 = sext i32 %n_timelevels to i64
  %121 = shl nsw i64 %120, 3
  %122 = icmp sgt i32 %n_timelevels, 0
  %123 = bitcast %struct.PGH* %newGH to i8*
  %124 = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 6
  %125 = icmp ne i32 %vectorgroup, 0
  %126 = select i1 %125, i32 %n_variables, i32 1
  %.pre.i = load i32* %103, align 4, !tbaa !9
  %127 = tail call i8* @malloc(i64 %121) #4
  %128 = sext i32 %.pre.i to i64
  %129 = getelementptr inbounds i8*** %119, i64 %128
  %130 = bitcast i8*** %129 to i8**
  store i8* %127, i8** %130, align 8, !tbaa !10
  %131 = getelementptr inbounds i8*** %118, i64 %128
  %132 = load i8*** %131, align 8, !tbaa !10
  %133 = icmp eq i8** %132, null
  br i1 %133, label %.loopexit.i5, label %.preheader.i.lr.ph

.preheader.i.lr.ph:                               ; preds = %.lr.ph9.i
  %134 = add i32 %n_timelevels, -1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.lr.ph, %._crit_edge17.i
  %variable.07.i7 = phi i32 [ 0, %.preheader.i.lr.ph ], [ %165, %._crit_edge17.i ]
  %135 = phi i32 [ %.pre.i, %.preheader.i.lr.ph ], [ %164, %._crit_edge17.i ]
  br i1 %122, label %.lr.ph.i2, label %._crit_edge.i

.lr.ph.i2:                                        ; preds = %.preheader.i
  %136 = icmp sgt i32 %variable.07.i7, 0
  br label %137

; <label>:137                                     ; preds = %150, %.lr.ph.i2
  %138 = phi i32 [ %135, %.lr.ph.i2 ], [ %154, %150 ]
  %indvars.iv.i3 = phi i64 [ 0, %.lr.ph.i2 ], [ %indvars.iv.next.i4, %150 ]
  %139 = tail call i8* @CCTK_VarName(i32 %138) #4
  %140 = load i32* %103, align 4, !tbaa !9
  %141 = load i32* %124, align 4, !tbaa !20
  br i1 %136, label %142, label %150

; <label>:142                                     ; preds = %137
  %143 = sub nsw i32 %140, %variable.07.i7
  %144 = sext i32 %143 to i64
  %145 = load i8**** %107, align 8, !tbaa !2
  %146 = getelementptr inbounds i8*** %145, i64 %144
  %147 = load i8*** %146, align 8, !tbaa !10
  %148 = getelementptr inbounds i8** %147, i64 %indvars.iv.i3
  %149 = load i8** %148, align 8, !tbaa !10
  br label %150

; <label>:150                                     ; preds = %142, %137
  %151 = phi i8* [ %149, %142 ], [ null, %137 ]
  %152 = bitcast i8* %151 to %struct.PGA*
  %153 = tail call %struct.PGA* @PUGH_SetupGArray(i8* %123, %struct.PGExtras* %extras.0.i, %struct.PConnectivity* %connectivity.0.i, %struct.PComm* %groupcomm.0.i, i8* %139, i32 %140, i32 %141, i32 %50, i32 %vtype, i32 %staggercode, i32 %126, i32 %variable.07.i7, %struct.PGA* %152) #4
  %154 = load i32* %103, align 4, !tbaa !9
  %155 = sext i32 %154 to i64
  %156 = load i8**** %107, align 8, !tbaa !2
  %157 = getelementptr inbounds i8*** %156, i64 %155
  %158 = load i8*** %157, align 8, !tbaa !10
  %159 = getelementptr inbounds i8** %158, i64 %indvars.iv.i3
  %160 = bitcast i8** %159 to %struct.PGA**
  store %struct.PGA* %153, %struct.PGA** %160, align 8, !tbaa !10
  %161 = load i32* %124, align 4, !tbaa !20
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %124, align 4, !tbaa !20
  %indvars.iv.next.i4 = add nuw nsw i64 %indvars.iv.i3, 1
  %lftr.wideiv = trunc i64 %indvars.iv.i3 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %134
  br i1 %exitcond, label %._crit_edge.i, label %137

._crit_edge.i:                                    ; preds = %150, %.preheader.i
  %163 = phi i32 [ %135, %.preheader.i ], [ %154, %150 ]
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %103, align 4, !tbaa !9
  %165 = add nuw nsw i32 %variable.07.i7, 1
  %166 = icmp slt i32 %165, %n_variables
  br i1 %166, label %._crit_edge17.i, label %PUGH_SetupScalarGroup.exit

._crit_edge17.i:                                  ; preds = %._crit_edge.i
  %.pre18.i = load i8**** %107, align 8, !tbaa !2
  %167 = tail call i8* @malloc(i64 %121) #4
  %168 = sext i32 %164 to i64
  %169 = getelementptr inbounds i8*** %.pre18.i, i64 %168
  %170 = bitcast i8*** %169 to i8**
  store i8* %167, i8** %170, align 8, !tbaa !10
  %171 = load i8**** %107, align 8, !tbaa !2
  %172 = getelementptr inbounds i8*** %171, i64 %168
  %173 = load i8*** %172, align 8, !tbaa !10
  %174 = icmp eq i8** %173, null
  br i1 %174, label %.loopexit.i5, label %.preheader.i

.loopexit.i5:                                     ; preds = %._crit_edge17.i, %.lr.ph9.i, %._crit_edge19.i
  %175 = tail call i32 @CCTK_Warn(i32 1, i32 366, i8* getelementptr inbounds ([77 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str5, i64 0, i64 0)) #4
  br label %PUGH_SetupScalarGroup.exit

; <label>:176                                     ; preds = %46
  %177 = tail call i32 @CCTK_Warn(i32 0, i32 465, i8* getelementptr inbounds ([77 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8]* @.str2, i64 0, i64 0)) #4
  br label %PUGH_SetupScalarGroup.exit

PUGH_SetupScalarGroup.exit:                       ; preds = %._crit_edge.i, %.loopexit.i5, %116, %.critedge.thread.i, %.loopexit, %176
  %retval.0 = phi i32 [ -1, %176 ], [ -2, %.critedge.thread.i ], [ 0, %.loopexit ], [ -2, %.loopexit.i5 ], [ 0, %116 ], [ 0, %._crit_edge.i ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #3

; Function Attrs: optsize
declare i32 @CCTK_VarTypeSize(i32) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: optsize
declare %struct.PConnectivity* @PUGH_SetupConnectivity(i32, i32, i32*, i32*) #2

; Function Attrs: optsize
declare %struct.PGExtras* @PUGH_SetupPGExtras(i32, i32*, i32, i32*, i32*, i32, i32*, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: optsize
declare %struct.PComm* @PUGH_SetupGArrayGroupComm(%struct.PGH*, i32, i32, i32, i32, i32, %struct.PGExtras*) #2

; Function Attrs: optsize
declare %struct.PGA* @PUGH_SetupGArray(i8*, %struct.PGExtras*, %struct.PConnectivity*, %struct.PComm*, i8*, i32, i32, i32, i32, i32, i32, i32, %struct.PGA*) #2

; Function Attrs: optsize
declare i8* @CCTK_VarName(i32) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 32}
!3 = !{!"PGH", !4, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !4, i64 32, !7, i64 40, !4, i64 48, !7, i64 56, !7, i64 60, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !4, i64 120, !4, i64 128, !4, i64 136}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"double", !5, i64 0}
!9 = !{!3, !7, i64 24}
!10 = !{!4, !4, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!3, !7, i64 12}
!14 = !{!15, !4, i64 8}
!15 = !{!"PConnectivity", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24}
!16 = !{!3, !7, i64 16}
!17 = !{!3, !4, i64 128}
!18 = !{!3, !4, i64 120}
!19 = !{!3, !7, i64 20}
!20 = !{!3, !7, i64 28}

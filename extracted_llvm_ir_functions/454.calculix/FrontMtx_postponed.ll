; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_postponed.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }
%struct._FrontMtx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._Tree*, %struct._ETree*, %struct._IV*, %struct._IVL*, %struct._IVL*, %struct._IVL*, %struct._IVL*, %struct._IVL*, %struct._SubMtx**, %struct._SubMtx**, %struct._SubMtx**, %struct._SubMtx**, %struct._SubMtx**, %struct._I2Ohash*, %struct._I2Ohash*, %struct._SubMtxManager*, %struct._Lock*, %struct._PatchAndGoInfo*, i32 }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._ETree = type { i32, i32, %struct._Tree*, %struct._IV*, %struct._IV*, %struct._IV* }
%struct._IV = type { i32, i32, i32, i32* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._I2Ohash = type { i32, i32, i32, %struct._I2OP*, %struct._I2OP*, %struct._I2OP** }
%struct._I2OP = type { i32, i32, i8*, %struct._I2OP* }
%struct._SubMtxManager = type { %struct._SubMtx*, %struct._Lock*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Lock = type { i8*, i32, i32 }
%struct._PatchAndGoInfo = type { i32, double, double, %struct._IV*, %struct._DV* }
%struct._ChvList = type { i32, %struct._Chv**, i32*, %struct._Lock*, i8*, i32 }
%struct._ChvManager = type { %struct._Chv*, %struct._Lock*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: nounwind optsize uwtable
define %struct._Chv* @FrontMtx_assemblePostponedData(%struct._FrontMtx* nocapture %frontmtx, %struct._Chv* %frontJ, %struct._ChvList* %chvlist, %struct._ChvManager* %chvmanager, i32* nocapture %pndelay) #0 {
entry:
  %id = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 0
  %0 = load i32* %id, align 4, !tbaa !0
  %call = tail call %struct._Chv* @ChvList_getList(%struct._ChvList* %chvlist, i32 %0) #2
  %cmp = icmp eq %struct._Chv* %call, null
  br i1 %cmp, label %if.then, label %for.body

if.then:                                          ; preds = %entry
  store i32 0, i32* %pndelay, align 4, !tbaa !0
  br label %return

for.body:                                         ; preds = %entry, %if.end14
  %child.083 = phi %struct._Chv* [ %1, %if.end14 ], [ %call, %entry ]
  %firstchild.082 = phi %struct._Chv* [ %firstchild.1, %if.end14 ], [ null, %entry ]
  %next = getelementptr inbounds %struct._Chv* %child.083, i64 0, i32 10
  %1 = load %struct._Chv** %next, align 8, !tbaa !3
  %cmp376 = icmp eq %struct._Chv* %firstchild.082, null
  br i1 %cmp376, label %if.end14, label %for.body4.lr.ph

for.body4.lr.ph:                                  ; preds = %for.body
  %id6 = getelementptr inbounds %struct._Chv* %child.083, i64 0, i32 0
  %2 = load i32* %id6, align 4, !tbaa !0
  br label %for.body4

for.body4:                                        ; preds = %for.body4.lr.ph, %if.end9
  %prev.078 = phi %struct._Chv* [ null, %for.body4.lr.ph ], [ %child2.077, %if.end9 ]
  %child2.077 = phi %struct._Chv* [ %firstchild.082, %for.body4.lr.ph ], [ %4, %if.end9 ]
  %id5 = getelementptr inbounds %struct._Chv* %child2.077, i64 0, i32 0
  %3 = load i32* %id5, align 4, !tbaa !0
  %cmp7 = icmp sgt i32 %3, %2
  br i1 %cmp7, label %for.end, label %if.end9

if.end9:                                          ; preds = %for.body4
  %next10 = getelementptr inbounds %struct._Chv* %child2.077, i64 0, i32 10
  %4 = load %struct._Chv** %next10, align 8, !tbaa !3
  %cmp3 = icmp eq %struct._Chv* %4, null
  br i1 %cmp3, label %for.end, label %for.body4

for.end:                                          ; preds = %if.end9, %for.body4
  %prev.0.lcssa = phi %struct._Chv* [ %prev.078, %for.body4 ], [ %child2.077, %if.end9 ]
  %child2.0.lcssa = phi %struct._Chv* [ %child2.077, %for.body4 ], [ null, %if.end9 ]
  %cmp11 = icmp eq %struct._Chv* %prev.0.lcssa, null
  br i1 %cmp11, label %if.end14, label %if.else

if.else:                                          ; preds = %for.end
  %next13 = getelementptr inbounds %struct._Chv* %prev.0.lcssa, i64 0, i32 10
  store %struct._Chv* %child.083, %struct._Chv** %next13, align 8, !tbaa !3
  br label %if.end14

if.end14:                                         ; preds = %for.body, %for.end, %if.else
  %child2.0.lcssa88 = phi %struct._Chv* [ %child2.0.lcssa, %if.else ], [ %child2.0.lcssa, %for.end ], [ null, %for.body ]
  %firstchild.1 = phi %struct._Chv* [ %firstchild.082, %if.else ], [ %child.083, %for.end ], [ %child.083, %for.body ]
  store %struct._Chv* %child2.0.lcssa88, %struct._Chv** %next, align 8, !tbaa !3
  %cmp1 = icmp eq %struct._Chv* %1, null
  br i1 %cmp1, label %for.end17, label %for.body

for.end17:                                        ; preds = %if.end14
  %nD = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 1
  %5 = load i32* %nD, align 4, !tbaa !0
  %cmp1973 = icmp eq %struct._Chv* %firstchild.1, null
  br i1 %cmp1973, label %for.end24, label %for.body20

for.body20:                                       ; preds = %for.end17, %for.body20
  %nDnew.075 = phi i32 [ %add, %for.body20 ], [ %5, %for.end17 ]
  %child.174 = phi %struct._Chv* [ %7, %for.body20 ], [ %firstchild.1, %for.end17 ]
  %nD21 = getelementptr inbounds %struct._Chv* %child.174, i64 0, i32 1
  %6 = load i32* %nD21, align 4, !tbaa !0
  %add = add nsw i32 %6, %nDnew.075
  %next23 = getelementptr inbounds %struct._Chv* %child.174, i64 0, i32 10
  %7 = load %struct._Chv** %next23, align 8, !tbaa !3
  %cmp19 = icmp eq %struct._Chv* %7, null
  br i1 %cmp19, label %for.end24, label %for.body20

for.end24:                                        ; preds = %for.body20, %for.end17
  %nDnew.0.lcssa = phi i32 [ %5, %for.end17 ], [ %add, %for.body20 ]
  %nL = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 2
  %8 = load i32* %nL, align 4, !tbaa !0
  %nU = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 3
  %9 = load i32* %nU, align 4, !tbaa !0
  %type = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 4
  %10 = load i32* %type, align 4, !tbaa !0
  %symflag = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 5
  %11 = load i32* %symflag, align 4, !tbaa !0
  %call25 = tail call i32 @Chv_nbytesNeeded(i32 %nDnew.0.lcssa, i32 %8, i32 %9, i32 %10, i32 %11) #2
  %call26 = tail call %struct._Chv* @ChvManager_newObjectOfSizeNbytes(%struct._ChvManager* %chvmanager, i32 %call25) #2
  %12 = load i32* %id, align 4, !tbaa !0
  %13 = load i32* %nL, align 4, !tbaa !0
  %14 = load i32* %nU, align 4, !tbaa !0
  %15 = load i32* %type, align 4, !tbaa !0
  %16 = load i32* %symflag, align 4, !tbaa !0
  tail call void @Chv_init(%struct._Chv* %call26, i32 %12, i32 %nDnew.0.lcssa, i32 %13, i32 %14, i32 %15, i32 %16) #2
  %call32 = tail call i32 @Chv_assemblePostponedData(%struct._Chv* %call26, %struct._Chv* %frontJ, %struct._Chv* %firstchild.1) #2
  store i32 %call32, i32* %pndelay, align 4, !tbaa !0
  tail call void @ChvManager_releaseListOfObjects(%struct._ChvManager* %chvmanager, %struct._Chv* %firstchild.1) #2
  %17 = load i32* %nU, align 4, !tbaa !0
  %cmp34 = icmp eq i32 %17, 0
  br i1 %cmp34, label %if.then35, label %return

if.then35:                                        ; preds = %for.end24
  store i32 0, i32* %pndelay, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %for.end24, %if.then35, %if.then
  %retval.0 = phi %struct._Chv* [ %frontJ, %if.then ], [ %call26, %if.then35 ], [ %call26, %for.end24 ]
  ret %struct._Chv* %retval.0
}

; Function Attrs: optsize
declare %struct._Chv* @ChvList_getList(%struct._ChvList*, i32) #1

; Function Attrs: optsize
declare i32 @Chv_nbytesNeeded(i32, i32, i32, i32, i32) #1

; Function Attrs: optsize
declare %struct._Chv* @ChvManager_newObjectOfSizeNbytes(%struct._ChvManager*, i32) #1

; Function Attrs: optsize
declare void @Chv_init(%struct._Chv*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: optsize
declare i32 @Chv_assemblePostponedData(%struct._Chv*, %struct._Chv*, %struct._Chv*) #1

; Function Attrs: optsize
declare void @ChvManager_releaseListOfObjects(%struct._ChvManager*, %struct._Chv*) #1

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_storePostponedData(%struct._FrontMtx* nocapture %frontmtx, %struct._Chv* %frontJ, i32 %npost, i32 %K, %struct._ChvList* %chvlist, %struct._ChvManager* %chvmanager) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %cmp = icmp sgt i32 %npost, 0
  %cmp1 = icmp eq %struct._ChvList* %chvlist, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %cmp2 = icmp eq i32 %K, -1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %nfront = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  %0 = load i32* %nfront, align 4, !tbaa !0
  call void @ChvList_addObjectToList(%struct._ChvList* %chvlist, %struct._Chv* null, i32 %0) #2
  br label %return

if.else:                                          ; preds = %if.then
  call void @ChvList_addObjectToList(%struct._ChvList* %chvlist, %struct._Chv* null, i32 %K) #2
  br label %return

if.end4:                                          ; preds = %entry
  call void @Chv_dimensions(%struct._Chv* %frontJ, i32* %nD, i32* %nL, i32* %nU) #2
  %symflag = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 5
  %1 = load i32* %nL, align 4, !tbaa !0
  %2 = load i32* %nU, align 4, !tbaa !0
  %type = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 4
  %3 = load i32* %type, align 4, !tbaa !0
  %4 = load i32* %symflag, align 4, !tbaa !0
  %call = call i32 @Chv_nbytesNeeded(i32 %npost, i32 %1, i32 %2, i32 %3, i32 %4) #2
  %call24 = call %struct._Chv* @ChvManager_newObjectOfSizeNbytes(%struct._ChvManager* %chvmanager, i32 %call) #2
  %id = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 0
  %5 = load i32* %id, align 4, !tbaa !0
  %6 = load i32* %nL, align 4, !tbaa !0
  %7 = load i32* %nU, align 4, !tbaa !0
  %8 = load i32* %type, align 4, !tbaa !0
  %9 = load i32* %symflag, align 4, !tbaa !0
  call void @Chv_init(%struct._Chv* %call24, i32 %5, i32 %npost, i32 %6, i32 %7, i32 %8, i32 %9) #2
  %10 = load i32* %nD, align 4, !tbaa !0
  %sub = sub nsw i32 %10, %npost
  call void @Chv_copyTrailingPortion(%struct._Chv* %call24, %struct._Chv* %frontJ, i32 %sub) #2
  %nD27 = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 1
  %11 = load i32* %nD27, align 4, !tbaa !0
  %sub28 = sub nsw i32 %11, %npost
  store i32 %sub28, i32* %nD27, align 4, !tbaa !0
  %nL29 = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 2
  %12 = load i32* %nL29, align 4, !tbaa !0
  %add30 = add nsw i32 %12, %npost
  store i32 %add30, i32* %nL29, align 4, !tbaa !0
  %nU31 = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 3
  %13 = load i32* %nU31, align 4, !tbaa !0
  %add32 = add nsw i32 %13, %npost
  store i32 %add32, i32* %nU31, align 4, !tbaa !0
  %cmp33 = icmp eq i32 %K, -1
  br i1 %cmp33, label %if.then34, label %if.else36

if.then34:                                        ; preds = %if.end4
  %nfront35 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  %14 = load i32* %nfront35, align 4, !tbaa !0
  call void @ChvList_addObjectToList(%struct._ChvList* %chvlist, %struct._Chv* %call24, i32 %14) #2
  br label %return

if.else36:                                        ; preds = %if.end4
  call void @ChvList_addObjectToList(%struct._ChvList* %chvlist, %struct._Chv* %call24, i32 %K) #2
  br label %return

return:                                           ; preds = %if.then34, %if.else36, %if.then3, %if.else
  ret void
}

; Function Attrs: optsize
declare void @ChvList_addObjectToList(%struct._ChvList*, %struct._Chv*, i32) #1

; Function Attrs: optsize
declare void @Chv_dimensions(%struct._Chv*, i32*, i32*, i32*) #1

; Function Attrs: optsize
declare void @Chv_copyTrailingPortion(%struct._Chv*, %struct._Chv*, i32) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}

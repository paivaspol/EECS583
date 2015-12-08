; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._InpMtx = type { i32, i32, i32, i32, i32, double, %struct._IV, %struct._IV, %struct._DV, i32, i32, %struct._IV, %struct._IV, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [81 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_basics.c\00", align 1
@.str2 = private unnamed_addr constant [56 x i8] c"\0A fatal error in InpMtx_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [50 x i8] c"\0A fatal error in InpMtx_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [45 x i8] c"\0A fatal error in InpMtx_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._InpMtx* @InpMtx_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 184) #4
  %0 = bitcast i8* %call to %struct._InpMtx*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 184, i32 21, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0)) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  tail call void @InpMtx_setDefaultFields(%struct._InpMtx* %0) #6
  ret %struct._InpMtx* %0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_setDefaultFields(%struct._InpMtx* %inpmtx) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), %struct._InpMtx* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0
  store i32 1, i32* %coordType, align 4, !tbaa !3
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  store i32 1, i32* %storageMode, align 4, !tbaa !3
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  store i32 1, i32* %inputMode, align 4, !tbaa !3
  %maxnent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 3
  store i32 0, i32* %maxnent, align 4, !tbaa !3
  %nent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4
  store i32 0, i32* %nent, align 4, !tbaa !3
  %resizeMultiple = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 5
  store double 1.250000e+00, double* %resizeMultiple, align 8, !tbaa !4
  %maxnvector = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 9
  store i32 0, i32* %maxnvector, align 4, !tbaa !3
  %nvector = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 10
  store i32 0, i32* %nvector, align 4, !tbaa !3
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6
  tail call void @IV_setDefaultFields(%struct._IV* %ivec1IV) #4
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7
  tail call void @IV_setDefaultFields(%struct._IV* %ivec2IV) #4
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8
  tail call void @DV_setDefaultFields(%struct._DV* %dvecDV) #4
  %vecidsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 11
  tail call void @IV_setDefaultFields(%struct._IV* %vecidsIV) #4
  %sizesIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 12
  tail call void @IV_setDefaultFields(%struct._IV* %sizesIV) #4
  %offsetsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 13
  tail call void @IV_setDefaultFields(%struct._IV* %offsetsIV) #4
  ret void
}

; Function Attrs: optsize
declare void @IV_setDefaultFields(%struct._IV*) #3

; Function Attrs: optsize
declare void @DV_setDefaultFields(%struct._DV*) #3

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_clearData(%struct._InpMtx* %inpmtx) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str3, i64 0, i64 0), %struct._InpMtx* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6
  tail call void @IV_clearData(%struct._IV* %ivec1IV) #4
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7
  tail call void @IV_clearData(%struct._IV* %ivec2IV) #4
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8
  tail call void @DV_clearData(%struct._DV* %dvecDV) #4
  %vecidsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 11
  tail call void @IV_clearData(%struct._IV* %vecidsIV) #4
  %sizesIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 12
  tail call void @IV_clearData(%struct._IV* %sizesIV) #4
  %offsetsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 13
  tail call void @IV_clearData(%struct._IV* %offsetsIV) #4
  tail call void @InpMtx_setDefaultFields(%struct._InpMtx* %inpmtx) #6
  ret void
}

; Function Attrs: optsize
declare void @IV_clearData(%struct._IV*) #3

; Function Attrs: optsize
declare void @DV_clearData(%struct._DV*) #3

; Function Attrs: nounwind optsize uwtable
define noalias %struct._InpMtx* @InpMtx_free(%struct._InpMtx* %inpmtx) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str4, i64 0, i64 0), %struct._InpMtx* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  tail call void @InpMtx_clearData(%struct._InpMtx* %inpmtx) #6
  %1 = bitcast %struct._InpMtx* %inpmtx to i8*
  tail call void @free(i8* %1) #4
  ret %struct._InpMtx* null
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}

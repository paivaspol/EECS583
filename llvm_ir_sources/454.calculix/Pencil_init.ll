; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Pencil = type { i32, i32, %struct._InpMtx*, %struct._InpMtx*, [2 x double] }
%struct._InpMtx = type { i32, i32, i32, i32, i32, double, %struct._IV, %struct._IV, %struct._DV, i32, i32, %struct._IV, %struct._IV, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [60 x i8] c"\0A fatal error in Pencil_init(%p,%d,%d,%p,%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [103 x i8] c"\0A fatal error in Pencil_init(%p,%d,%d,%p,%p,%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str2 = private unnamed_addr constant [136 x i8] c"\0A fatal error in Pencil_init(%p,%d,%d,%p,%p,%p)\0A bad symflag %d, must be SPOOLES_SYMMETRIC,\0A SPOOLES_HERMITIAN or SPOOLES_NONSYMMETRIC\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Pencil_init(%struct._Pencil* %pencil, i32 %type, i32 %symflag, %struct._InpMtx* %inpmtxA, double* %sigma, %struct._InpMtx* %inpmtxB) #0 {
entry:
  %cmp = icmp eq %struct._Pencil* %pencil, null
  %cmp1 = icmp eq double* %sigma, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str, i64 0, i64 0), %struct._Pencil* %pencil, i32 %type, i32 %symflag, %struct._InpMtx* %inpmtxA, double* %sigma, %struct._InpMtx* %inpmtxB) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type.off = add i32 %type, -1
  %1 = icmp ult i32 %type.off, 2
  br i1 %1, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([103 x i8]* @.str1, i64 0, i64 0), %struct._Pencil* %pencil, i32 %type, i32 %symflag, %struct._InpMtx* %inpmtxA, double* %sigma, %struct._InpMtx* %inpmtxB, i32 %type) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end7:                                          ; preds = %if.end
  %3 = icmp ult i32 %symflag, 3
  br i1 %3, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end7
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([136 x i8]* @.str2, i64 0, i64 0), %struct._Pencil* %pencil, i32 %type, i32 %symflag, %struct._InpMtx* %inpmtxA, double* %sigma, %struct._InpMtx* %inpmtxB, i32 %symflag) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end15:                                         ; preds = %if.end7
  tail call void @Pencil_clearData(%struct._Pencil* %pencil) #4
  %type16 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 0
  store i32 %type, i32* %type16, align 4, !tbaa !3
  %symflag17 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 1
  store i32 %symflag, i32* %symflag17, align 4, !tbaa !3
  %inpmtxA18 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 2
  store %struct._InpMtx* %inpmtxA, %struct._InpMtx** %inpmtxA18, align 8, !tbaa !0
  %5 = load double* %sigma, align 8, !tbaa !4
  %arrayidx20 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 4, i64 0
  store double %5, double* %arrayidx20, align 8, !tbaa !4
  %arrayidx21 = getelementptr inbounds double* %sigma, i64 1
  %6 = load double* %arrayidx21, align 8, !tbaa !4
  %arrayidx23 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 4, i64 1
  store double %6, double* %arrayidx23, align 8, !tbaa !4
  %inpmtxB24 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 3
  store %struct._InpMtx* %inpmtxB, %struct._InpMtx** %inpmtxB24, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @Pencil_clearData(%struct._Pencil*) #3

; Function Attrs: nounwind optsize uwtable
define void @Pencil_changeCoordType(%struct._Pencil* nocapture %pencil, i32 %newType) #0 {
entry:
  %inpmtxA = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 2
  %0 = load %struct._InpMtx** %inpmtxA, align 8, !tbaa !0
  %cmp = icmp eq %struct._InpMtx* %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @InpMtx_changeCoordType(%struct._InpMtx* %0, i32 %newType) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %inpmtxB = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 3
  %1 = load %struct._InpMtx** %inpmtxB, align 8, !tbaa !0
  %cmp2 = icmp eq %struct._InpMtx* %1, null
  br i1 %cmp2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @InpMtx_changeCoordType(%struct._InpMtx* %1, i32 %newType) #4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then3
  ret void
}

; Function Attrs: optsize
declare void @InpMtx_changeCoordType(%struct._InpMtx*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @Pencil_changeStorageMode(%struct._Pencil* nocapture %pencil, i32 %newMode) #0 {
entry:
  %inpmtxA = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 2
  %0 = load %struct._InpMtx** %inpmtxA, align 8, !tbaa !0
  %cmp = icmp eq %struct._InpMtx* %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @InpMtx_changeStorageMode(%struct._InpMtx* %0, i32 %newMode) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %inpmtxB = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 3
  %1 = load %struct._InpMtx** %inpmtxB, align 8, !tbaa !0
  %cmp2 = icmp eq %struct._InpMtx* %1, null
  br i1 %cmp2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @InpMtx_changeStorageMode(%struct._InpMtx* %1, i32 %newMode) #4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then3
  ret void
}

; Function Attrs: optsize
declare void @InpMtx_changeStorageMode(%struct._InpMtx*, i32) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}

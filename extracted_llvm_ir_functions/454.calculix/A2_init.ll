; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [56 x i8] c"\0A fatal error in A2_init(%p,%d,%d,%d,%d,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [58 x i8] c"\0A fatal error in A2_init(%p,%d,%d,%d,%d,%p)\0A bad type %d\0A\00", align 1
@.str2 = private unnamed_addr constant [137 x i8] c"\0A fatal error in A2_init(%p,%d,%d,%d,%d,%p)\0A entries is not NULL and we have bad increments\0A inc1 = %d, inc2 = %d, nrow = %d, ncol = %d\0A\00", align 1
@.str3 = private unnamed_addr constant [57 x i8] c"\0A fatal error in A2_subA2(%p,%p,%d,%d,%d,%d)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [11 x i8] c"\0A first A2\00", align 1
@.str5 = private unnamed_addr constant [12 x i8] c"\0A second A2\00", align 1
@.str6 = private unnamed_addr constant [59 x i8] c"\0A fatal error in A2_subA2(%p,%p,%d,%d,%d,%d)\0A bad type %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @A2_init(%struct._A2* %mtx, i32 %type, i32 %n1, i32 %n2, i32 %inc1, i32 %inc2, double* %entries) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  %cmp1 = icmp slt i32 %n1, 1
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %n2, 1
  %or.cond164 = or i1 %or.cond, %cmp3
  %cmp5 = icmp slt i32 %inc1, 1
  %or.cond165 = or i1 %or.cond164, %cmp5
  %cmp7 = icmp slt i32 %inc2, 1
  %or.cond166 = or i1 %or.cond165, %cmp7
  br i1 %or.cond166, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), %struct._A2* %mtx, i32 %n1, i32 %n2, i32 %inc1, i32 %inc2, double* %entries) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %type.off = add i32 %type, -1
  %1 = icmp ugt i32 %type.off, 1
  br i1 %1, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([58 x i8]* @.str1, i64 0, i64 0), %struct._A2* %mtx, i32 %n1, i32 %n2, i32 %inc1, i32 %inc2, double* %entries, i32 %type) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end12:                                         ; preds = %if.end
  %cond = icmp eq double* %entries, null
  br i1 %cond, label %land.lhs.true14, label %if.then26

land.lhs.true14:                                  ; preds = %if.end12
  %cmp15 = icmp eq i32 %inc1, 1
  %cmp17 = icmp eq i32 %inc2, %n1
  %or.cond167 = and i1 %cmp15, %cmp17
  br i1 %or.cond167, label %if.else, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %land.lhs.true14
  %cmp19 = icmp eq i32 %inc1, %n2
  %cmp21 = icmp eq i32 %inc2, 1
  %or.cond168 = and i1 %cmp19, %cmp21
  br i1 %or.cond168, label %if.else, label %if.then22

if.then22:                                        ; preds = %lor.lhs.false18
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([137 x i8]* @.str2, i64 0, i64 0), %struct._A2* %mtx, i32 %n1, i32 %n2, i32 %inc1, i32 %inc2, double* null, i32 %inc1, i32 %inc2, i32 %n1, i32 %n2) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.then26:                                        ; preds = %if.end12
  %entries27 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %4 = load double** %entries27, align 8, !tbaa !0
  %cmp28 = icmp eq double* %4, null
  br i1 %cmp28, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.then26
  tail call void @DVfree(double* %4) #5
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.then29
  %nowned = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 5
  store i32 0, i32* %nowned, align 4, !tbaa !3
  store double* %entries, double** %entries27, align 8, !tbaa !0
  %type93.pre = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  br label %if.end92

if.else:                                          ; preds = %land.lhs.true14, %lor.lhs.false18
  %type33 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %5 = load i32* %type33, align 4, !tbaa !3
  switch i32 %5, label %if.end50 [
    i32 1, label %if.then35
    i32 2, label %if.then42
  ]

if.then35:                                        ; preds = %if.else
  %nowned36 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 5
  %6 = load i32* %nowned36, align 4, !tbaa !3
  %mul = shl i32 %6, 3
  br label %if.end50

if.then42:                                        ; preds = %if.else
  %nowned43 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 5
  %7 = load i32* %nowned43, align 4, !tbaa !3
  %mul44 = shl i32 %7, 4
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then42, %if.then35
  %nbytesPresent.0 = phi i32 [ %mul, %if.then35 ], [ %mul44, %if.then42 ], [ 0, %if.else ]
  %cmp51 = icmp eq i32 %type, 1
  br i1 %cmp51, label %if.end68, label %if.else58

if.else58:                                        ; preds = %if.end50
  %cmp59 = icmp eq i32 %type, 2
  br i1 %cmp59, label %if.then61, label %if.end92

if.then61:                                        ; preds = %if.else58
  %mul62 = shl nsw i32 %n1, 1
  br label %if.end68

if.end68:                                         ; preds = %if.end50, %if.then61
  %n1.sink = phi i32 [ %mul62, %if.then61 ], [ %n1, %if.end50 ]
  %mul54 = shl i32 %n2, 3
  %mul56 = mul i32 %mul54, %n1.sink
  %cmp69 = icmp sgt i32 %mul56, %nbytesPresent.0
  br i1 %cmp69, label %if.then71, label %if.end92

if.then71:                                        ; preds = %if.end68
  %entries72 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %8 = load double** %entries72, align 8, !tbaa !0
  tail call void @DVfree(double* %8) #5
  %mul73 = mul nsw i32 %n2, %n1
  %nowned74 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 5
  store i32 %mul73, i32* %nowned74, align 4, !tbaa !3
  br i1 %cmp51, label %if.then77, label %if.else81

if.then77:                                        ; preds = %if.then71
  %call79 = tail call double* @DVinit(i32 %mul73, double 0.000000e+00) #5
  store double* %call79, double** %entries72, align 8, !tbaa !0
  br label %if.end92

if.else81:                                        ; preds = %if.then71
  %cmp82 = icmp eq i32 %type, 2
  br i1 %cmp82, label %if.then84, label %if.end92

if.then84:                                        ; preds = %if.else81
  %mul85 = shl i32 %n1, 1
  %mul86 = mul nsw i32 %mul85, %n2
  %call87 = tail call double* @DVinit(i32 %mul86, double 0.000000e+00) #5
  store double* %call87, double** %entries72, align 8, !tbaa !0
  br label %if.end92

if.end92:                                         ; preds = %if.else58, %if.end68, %if.else81, %if.then84, %if.then77, %if.end31
  %type93.pre-phi = phi i32* [ %type33, %if.else58 ], [ %type33, %if.end68 ], [ %type33, %if.else81 ], [ %type33, %if.then84 ], [ %type33, %if.then77 ], [ %type93.pre, %if.end31 ]
  store i32 %type, i32* %type93.pre-phi, align 4, !tbaa !3
  %n194 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  store i32 %n1, i32* %n194, align 4, !tbaa !3
  %n295 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  store i32 %n2, i32* %n295, align 4, !tbaa !3
  %inc196 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  store i32 %inc1, i32* %inc196, align 4, !tbaa !3
  %inc297 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  store i32 %inc2, i32* %inc297, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @DVfree(double*) #3

; Function Attrs: optsize
declare double* @DVinit(i32, double) #3

; Function Attrs: nounwind optsize uwtable
define void @A2_subA2(%struct._A2* %mtxA, %struct._A2* %mtxB, i32 %firstrow, i32 %lastrow, i32 %firstcol, i32 %lastcol) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtxA, null
  %cmp1 = icmp eq %struct._A2* %mtxB, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %firstrow, 0
  %or.cond105 = or i1 %or.cond, %cmp3
  br i1 %or.cond105, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %entry
  %n1 = getelementptr inbounds %struct._A2* %mtxB, i64 0, i32 1
  %0 = load i32* %n1, align 4, !tbaa !3
  %cmp5 = icmp sle i32 %0, %lastrow
  %cmp7 = icmp slt i32 %firstcol, 0
  %or.cond106 = or i1 %cmp5, %cmp7
  br i1 %or.cond106, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %n2 = getelementptr inbounds %struct._A2* %mtxB, i64 0, i32 2
  %1 = load i32* %n2, align 4, !tbaa !3
  %cmp9 = icmp sgt i32 %1, %lastcol
  br i1 %cmp9, label %if.end17, label %if.then

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false8, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([57 x i8]* @.str3, i64 0, i64 0), %struct._A2* %mtxA, %struct._A2* %mtxB, i32 %firstrow, i32 %lastrow, i32 %firstcol, i32 %lastcol) #5
  br i1 %cmp, label %if.end, label %if.then11

if.then11:                                        ; preds = %if.then
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %3)
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  tail call void @A2_writeForHumanEye(%struct._A2* %mtxA, %struct._IO_FILE* %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then11
  br i1 %cmp1, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %6)
  %8 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  tail call void @A2_writeForHumanEye(%struct._A2* %mtxB, %struct._IO_FILE* %8) #5
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then14
  tail call void @exit(i32 -1) #6
  unreachable

if.end17:                                         ; preds = %lor.lhs.false8
  %type = getelementptr inbounds %struct._A2* %mtxB, i64 0, i32 0
  %9 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %9, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end25, label %if.then22

if.then22:                                        ; preds = %if.end17
  %10 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([59 x i8]* @.str6, i64 0, i64 0), %struct._A2* %mtxA, %struct._A2* %mtxB, i32 %firstrow, i32 %lastrow, i32 %firstcol, i32 %lastcol, i32 %9) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end25:                                         ; preds = %if.end17
  %type27 = getelementptr inbounds %struct._A2* %mtxA, i64 0, i32 0
  store i32 %9, i32* %type27, align 4, !tbaa !3
  %inc1 = getelementptr inbounds %struct._A2* %mtxB, i64 0, i32 3
  %11 = load i32* %inc1, align 4, !tbaa !3
  %inc128 = getelementptr inbounds %struct._A2* %mtxA, i64 0, i32 3
  store i32 %11, i32* %inc128, align 4, !tbaa !3
  %inc2 = getelementptr inbounds %struct._A2* %mtxB, i64 0, i32 4
  %12 = load i32* %inc2, align 4, !tbaa !3
  %inc229 = getelementptr inbounds %struct._A2* %mtxA, i64 0, i32 4
  store i32 %12, i32* %inc229, align 4, !tbaa !3
  %sub = sub i32 1, %firstrow
  %add = add i32 %sub, %lastrow
  %n130 = getelementptr inbounds %struct._A2* %mtxA, i64 0, i32 1
  store i32 %add, i32* %n130, align 4, !tbaa !3
  %sub31 = sub i32 1, %firstcol
  %add32 = add i32 %sub31, %lastcol
  %n233 = getelementptr inbounds %struct._A2* %mtxA, i64 0, i32 2
  store i32 %add32, i32* %n233, align 4, !tbaa !3
  %13 = load i32* %type, align 4, !tbaa !3
  switch i32 %13, label %if.end57 [
    i32 1, label %if.then36
    i32 2, label %if.then45
  ]

if.then36:                                        ; preds = %if.end25
  %entries = getelementptr inbounds %struct._A2* %mtxB, i64 0, i32 6
  %14 = load double** %entries, align 8, !tbaa !0
  %15 = load i32* %inc1, align 4, !tbaa !3
  %mul = mul nsw i32 %15, %firstrow
  %idx.ext = sext i32 %mul to i64
  %16 = load i32* %inc2, align 4, !tbaa !3
  %mul39 = mul nsw i32 %16, %firstcol
  %idx.ext40 = sext i32 %mul39 to i64
  %add.ptr.sum = add i64 %idx.ext40, %idx.ext
  %add.ptr41 = getelementptr inbounds double* %14, i64 %add.ptr.sum
  %entries42 = getelementptr inbounds %struct._A2* %mtxA, i64 0, i32 6
  store double* %add.ptr41, double** %entries42, align 8, !tbaa !0
  br label %if.end57

if.then45:                                        ; preds = %if.end25
  %entries46 = getelementptr inbounds %struct._A2* %mtxB, i64 0, i32 6
  %17 = load double** %entries46, align 8, !tbaa !0
  %18 = load i32* %inc1, align 4, !tbaa !3
  %mul48 = mul nsw i32 %18, %firstrow
  %19 = load i32* %inc2, align 4, !tbaa !3
  %mul50 = mul nsw i32 %19, %firstcol
  %add51 = add nsw i32 %mul50, %mul48
  %mul52 = shl nsw i32 %add51, 1
  %idx.ext53 = sext i32 %mul52 to i64
  %add.ptr54 = getelementptr inbounds double* %17, i64 %idx.ext53
  %entries55 = getelementptr inbounds %struct._A2* %mtxA, i64 0, i32 6
  store double* %add.ptr54, double** %entries55, align 8, !tbaa !0
  br label %if.end57

if.end57:                                         ; preds = %if.end25, %if.then45, %if.then36
  %nowned = getelementptr inbounds %struct._A2* %mtxA, i64 0, i32 5
  store i32 0, i32* %nowned, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare void @A2_writeForHumanEye(%struct._A2*, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}

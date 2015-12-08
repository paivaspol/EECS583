; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_IO.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Pencil = type { i32, i32, %struct._InpMtx*, %struct._InpMtx*, [2 x double] }
%struct._InpMtx = type { i32, i32, i32, i32, i32, double, %struct._IV, %struct._IV, %struct._DV, i32, i32, %struct._IV, %struct._IV, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [53 x i8] c"\0A error in Pencil_readFromFile(%p,%s,%s)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str2 = private unnamed_addr constant [60 x i8] c"\0A fatal error in Pencil_writeForHumanEye(%p,%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"\0A\0A inpmtxA\00", align 1
@.str4 = private unnamed_addr constant [11 x i8] c"\0A\0A inpmtxB\00", align 1
@.str5 = private unnamed_addr constant [48 x i8] c"\0A error in Pencil_writeStats(%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [35 x i8] c"\0A\0A Pencil : matrix pencil object :\00", align 1
@.str7 = private unnamed_addr constant [14 x i8] c" real entries\00", align 1
@.str8 = private unnamed_addr constant [19 x i8] c"\0A sigma = %20.12e \00", align 1
@.str9 = private unnamed_addr constant [17 x i8] c" complex entries\00", align 1
@.str10 = private unnamed_addr constant [30 x i8] c"\0A sigma = %20.12e + %20.12e*i\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Pencil_readFromFiles(%struct._Pencil* %pencil, i8* %inpmtxAfileName, i8* %inpmtxBfileName) #0 {
entry:
  %cmp = icmp eq %struct._Pencil* %pencil, null
  %cmp1 = icmp eq i8* %inpmtxAfileName, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i8* %inpmtxBfileName, null
  %or.cond33 = or i1 %or.cond, %cmp3
  br i1 %or.cond33, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), %struct._Pencil* %pencil, i8* %inpmtxAfileName, i8* %inpmtxBfileName) #6
  br label %return

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @strcmp(i8* %inpmtxAfileName, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #7
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.end11, label %if.then6

if.then6:                                         ; preds = %if.end
  %inpmtxA = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 2
  %1 = load %struct._InpMtx** %inpmtxA, align 8, !tbaa !0
  %call7 = tail call i32 @InpMtx_readFromFile(%struct._InpMtx* %1, i8* %inpmtxAfileName) #6
  %cmp8 = icmp eq i32 %call7, 1
  br i1 %cmp8, label %if.end11, label %return

if.end11:                                         ; preds = %if.then6, %if.end
  %call12 = tail call i32 @strcmp(i8* %inpmtxBfileName, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #7
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %return, label %if.then14

if.then14:                                        ; preds = %if.end11
  %inpmtxB = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 3
  %2 = load %struct._InpMtx** %inpmtxB, align 8, !tbaa !0
  %call15 = tail call i32 @InpMtx_readFromFile(%struct._InpMtx* %2, i8* %inpmtxBfileName) #6
  ret i32 %call15

return:                                           ; preds = %if.end11, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call7, %if.then6 ], [ 1, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #2

; Function Attrs: optsize
declare i32 @InpMtx_readFromFile(%struct._InpMtx*, i8*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @Pencil_writeForHumanEye(%struct._Pencil* %pencil, %struct._IO_FILE* %fp) #0 {
entry:
  %cmp = icmp eq %struct._Pencil* %pencil, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str2, i64 0, i64 0), %struct._Pencil* %pencil, %struct._IO_FILE* %fp) #6
  tail call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @Pencil_writeStats(%struct._Pencil* %pencil, %struct._IO_FILE* %fp) #9
  %inpmtxA = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 2
  %1 = load %struct._InpMtx** %inpmtxA, align 8, !tbaa !0
  %cmp3 = icmp eq %struct._InpMtx* %1, null
  br i1 %cmp3, label %if.end8, label %if.then4

if.then4:                                         ; preds = %if.end
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %fp)
  %3 = load %struct._InpMtx** %inpmtxA, align 8, !tbaa !0
  %call7 = tail call i32 @InpMtx_writeForHumanEye(%struct._InpMtx* %3, %struct._IO_FILE* %fp) #6
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then4
  %inpmtxB = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 3
  %4 = load %struct._InpMtx** %inpmtxB, align 8, !tbaa !0
  %cmp9 = icmp eq %struct._InpMtx* %4, null
  br i1 %cmp9, label %if.end14, label %if.then10

if.then10:                                        ; preds = %if.end8
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %fp)
  %6 = load %struct._InpMtx** %inpmtxB, align 8, !tbaa !0
  %call13 = tail call i32 @InpMtx_writeForHumanEye(%struct._InpMtx* %6, %struct._IO_FILE* %fp) #6
  br label %if.end14

if.end14:                                         ; preds = %if.end8, %if.then10
  ret i32 1
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: nounwind optsize uwtable
define i32 @Pencil_writeStats(%struct._Pencil* %pencil, %struct._IO_FILE* %fp) #0 {
entry:
  %cmp = icmp eq %struct._Pencil* %pencil, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str5, i64 0, i64 0), %struct._Pencil* %pencil, %struct._IO_FILE* %fp) #6
  tail call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %entry
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str6, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %fp)
  %type = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 0
  %2 = load i32* %type, align 4, !tbaa !3
  switch i32 %2, label %if.end17 [
    i32 1, label %if.then4
    i32 2, label %if.then9
  ]

if.then4:                                         ; preds = %if.end
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %fp)
  %arrayidx = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 4, i64 0
  %4 = load double* %arrayidx, align 8, !tbaa !4
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str8, i64 0, i64 0), double %4) #6
  br label %if.end17

if.then9:                                         ; preds = %if.end
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str9, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %fp)
  %arrayidx12 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 4, i64 0
  %6 = load double* %arrayidx12, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 4, i64 1
  %7 = load double* %arrayidx14, align 8, !tbaa !4
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([30 x i8]* @.str10, i64 0, i64 0), double %6, double %7) #6
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then9, %if.then4
  %inpmtxA = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 2
  %8 = load %struct._InpMtx** %inpmtxA, align 8, !tbaa !0
  %cmp18 = icmp eq %struct._InpMtx* %8, null
  br i1 %cmp18, label %if.end23, label %if.then19

if.then19:                                        ; preds = %if.end17
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %fp)
  %10 = load %struct._InpMtx** %inpmtxA, align 8, !tbaa !0
  %call22 = tail call i32 @InpMtx_writeStats(%struct._InpMtx* %10, %struct._IO_FILE* %fp) #6
  br label %if.end23

if.end23:                                         ; preds = %if.end17, %if.then19
  %inpmtxB = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 3
  %11 = load %struct._InpMtx** %inpmtxB, align 8, !tbaa !0
  %cmp24 = icmp eq %struct._InpMtx* %11, null
  br i1 %cmp24, label %if.end29, label %if.then25

if.then25:                                        ; preds = %if.end23
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %fp)
  %13 = load %struct._InpMtx** %inpmtxB, align 8, !tbaa !0
  %call28 = tail call i32 @InpMtx_writeStats(%struct._InpMtx* %13, %struct._IO_FILE* %fp) #6
  br label %if.end29

if.end29:                                         ; preds = %if.end23, %if.then25
  ret i32 1
}

; Function Attrs: optsize
declare i32 @InpMtx_writeForHumanEye(%struct._InpMtx*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare i32 @InpMtx_writeStats(%struct._InpMtx*, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { noreturn nounwind optsize }
attributes #9 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}

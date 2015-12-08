; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solve.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._FrontMtx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._Tree*, %struct._ETree*, %struct._IV*, %struct._IVL*, %struct._IVL*, %struct._IVL*, %struct._IVL*, %struct._IVL*, %struct._SubMtx**, %struct._SubMtx**, %struct._SubMtx**, %struct._SubMtx**, %struct._SubMtx**, %struct._I2Ohash*, %struct._I2Ohash*, %struct._SubMtxManager*, %struct._Lock*, %struct._PatchAndGoInfo*, i32 }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._ETree = type { i32, i32, %struct._Tree*, %struct._IV*, %struct._IV*, %struct._IV* }
%struct._IV = type { i32, i32, i32, i32* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._I2Ohash = type { i32, i32, i32, %struct._I2OP*, %struct._I2OP*, %struct._I2OP** }
%struct._I2OP = type { i32, i32, i8*, %struct._I2OP* }
%struct._SubMtxManager = type { %struct._SubMtx*, %struct._Lock*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Lock = type { i8*, i32, i32 }
%struct._PatchAndGoInfo = type { i32, double, double, %struct._IV*, %struct._DV* }
%struct._DenseMtx = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._DenseMtx* }
%struct._IP = type { i32, %struct._IP* }
%struct._SubMtxList = type { i32, %struct._SubMtx**, i32*, %struct._Lock*, i8*, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [153 x i8] c"\0A fatal error in FrontMtx_solve()\0A bad input :\0A    frontmtx = %p, solmtx = %p, rhsmtx = %p\0A    mtxmanager = %p, cpus = %p\0A    msglvl = %d, msgFile = %p\0A\00", align 1
@.str1 = private unnamed_addr constant [25 x i8] c"\0A CPU : load rhs = %8.3f\00", align 1
@.str2 = private unnamed_addr constant [34 x i8] c"\0A\0A ####### starting forward solve\00", align 1
@.str3 = private unnamed_addr constant [29 x i8] c"\0A\0A forward visiting front %d\00", align 1
@.str4 = private unnamed_addr constant [35 x i8] c"\0A\0A ####### starting diagonal solve\00", align 1
@.str5 = private unnamed_addr constant [30 x i8] c"\0A\0A diagonal visiting front %d\00", align 1
@.str6 = private unnamed_addr constant [35 x i8] c"\0A\0A ####### starting backward solve\00", align 1
@.str7 = private unnamed_addr constant [30 x i8] c"\0A\0A backward visiting front %d\00", align 1
@.str8 = private unnamed_addr constant [31 x i8] c"\0A CPU : store solution = %8.3f\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_solve(%struct._FrontMtx* %frontmtx, %struct._DenseMtx* %solmtx, %struct._DenseMtx* %rhsmtx, %struct._SubMtxManager* %mtxmanager, double* %cpus, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  %cmp1 = icmp eq %struct._DenseMtx* %solmtx, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct._DenseMtx* %rhsmtx, null
  %or.cond238 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq %struct._SubMtxManager* %mtxmanager, null
  %or.cond239 = or i1 %or.cond238, %cmp5
  %cmp7 = icmp eq double* %cpus, null
  %or.cond240 = or i1 %or.cond239, %cmp7
  br i1 %or.cond240, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %entry
  %cmp9 = icmp sgt i32 %msglvl, 0
  %cmp10 = icmp eq %struct._IO_FILE* %msgFile, null
  %or.cond241 = and i1 %cmp9, %cmp10
  br i1 %or.cond241, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false8, %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([153 x i8]* @.str, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._DenseMtx* %solmtx, %struct._DenseMtx* %rhsmtx, %struct._SubMtxManager* %mtxmanager, double* %cpus, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false8
  %call11 = tail call i32 @FrontMtx_nfront(%struct._FrontMtx* %frontmtx) #5
  %call12 = tail call %struct._Tree* @FrontMtx_frontTree(%struct._FrontMtx* %frontmtx) #5
  %ncol = getelementptr inbounds %struct._DenseMtx* %rhsmtx, i64 0, i32 4
  %1 = load i32* %ncol, align 4, !tbaa !3
  %call13 = tail call %struct._IP** @FrontMtx_forwardSetup(%struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  %call14 = tail call i8* @CVinit(i32 %call11, i8 signext 78) #5
  %call15 = tail call i8* @CVinit(i32 %call11, i8 signext 87) #5
  store double 0.000000e+00, double* %cpus, align 8, !tbaa !4
  %call16 = tail call %struct._SubMtx** @FrontMtx_loadRightHandSide(%struct._FrontMtx* %frontmtx, %struct._DenseMtx* %rhsmtx, i32* null, i32 0, %struct._SubMtxManager* %mtxmanager, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  %arrayidx18 = getelementptr inbounds double* %cpus, i64 1
  store double 0.000000e+00, double* %arrayidx18, align 8, !tbaa !4
  %cmp19 = icmp sgt i32 %msglvl, 1
  br i1 %cmp19, label %if.then20, label %if.end28

if.then20:                                        ; preds = %if.end
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([25 x i8]* @.str1, i64 0, i64 0), double 0.000000e+00) #5
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([34 x i8]* @.str2, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %msgFile)
  %call27 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end28

if.end28:                                         ; preds = %if.end, %if.then20
  %call29 = tail call i32 @Tree_postOTfirst(%struct._Tree* %call12) #5
  %cmp30246 = icmp eq i32 %call29, -1
  br i1 %cmp30246, label %for.end, label %for.body

for.body:                                         ; preds = %if.end28, %if.end35
  %J.0247 = phi i32 [ %call36, %if.end35 ], [ %call29, %if.end28 ]
  br i1 %cmp19, label %if.then32, label %if.end35

if.then32:                                        ; preds = %for.body
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([29 x i8]* @.str3, i64 0, i64 0), i32 %J.0247) #5
  %call34 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %for.body
  tail call void @FrontMtx_forwardVisit(%struct._FrontMtx* %frontmtx, i32 %J.0247, i32 %1, i32* null, i32 0, %struct._SubMtxManager* %mtxmanager, %struct._SubMtxList* null, %struct._SubMtx** %call16, i8* %call14, %struct._IP** %call13, %struct._SubMtx** %call16, i8* %call15, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  %call36 = tail call i32 @Tree_postOTnext(%struct._Tree* %call12, i32 %J.0247) #5
  %cmp30 = icmp eq i32 %call36, -1
  br i1 %cmp30, label %for.end, label %for.body

for.end:                                          ; preds = %if.end35, %if.end28
  %add = add nsw i32 %call11, 1
  %idxprom = sext i32 %add to i64
  %arrayidx37 = getelementptr inbounds %struct._IP** %call13, i64 %idxprom
  %3 = load %struct._IP** %arrayidx37, align 8, !tbaa !0
  tail call void @IP_free(%struct._IP* %3) #5
  %cmp38 = icmp eq %struct._IP** %call13, null
  br i1 %cmp38, label %if.end40, label %if.then39

if.then39:                                        ; preds = %for.end
  %4 = bitcast %struct._IP** %call13 to i8*
  tail call void @free(i8* %4) #5
  br label %if.end40

if.end40:                                         ; preds = %for.end, %if.then39
  %arrayidx42 = getelementptr inbounds double* %cpus, i64 2
  store double 0.000000e+00, double* %arrayidx42, align 8, !tbaa !4
  br i1 %cmp19, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.end40
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str4, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %msgFile)
  %call46 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end40
  tail call void @CVfill(i32 %call11, i8* %call14, i8 signext 78) #5
  %call48 = tail call i32 @Tree_postOTfirst(%struct._Tree* %call12) #5
  %cmp50244 = icmp eq i32 %call48, -1
  br i1 %cmp50244, label %for.end61, label %for.body51

for.body51:                                       ; preds = %if.end47, %if.end56
  %J.1245 = phi i32 [ %call60, %if.end56 ], [ %call48, %if.end47 ]
  br i1 %cmp19, label %if.then53, label %if.end56

if.then53:                                        ; preds = %for.body51
  %call54 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([30 x i8]* @.str5, i64 0, i64 0), i32 %J.1245) #5
  %call55 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %for.body51
  tail call void @FrontMtx_diagonalVisit(%struct._FrontMtx* %frontmtx, i32 %J.1245, i32* null, i32 0, %struct._SubMtx** %call16, i8* %call14, %struct._SubMtx** %call16, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  %idxprom57 = sext i32 %J.1245 to i64
  %arrayidx58 = getelementptr inbounds i8* %call14, i64 %idxprom57
  store i8 68, i8* %arrayidx58, align 1, !tbaa !1
  %call60 = tail call i32 @Tree_postOTnext(%struct._Tree* %call12, i32 %J.1245) #5
  %cmp50 = icmp eq i32 %call60, -1
  br i1 %cmp50, label %for.end61, label %for.body51

for.end61:                                        ; preds = %if.end56, %if.end47
  %arrayidx63 = getelementptr inbounds double* %cpus, i64 3
  store double 0.000000e+00, double* %arrayidx63, align 8, !tbaa !4
  %call64 = tail call %struct._IP** @FrontMtx_backwardSetup(%struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  tail call void @CVfill(i32 %call11, i8* %call15, i8 signext 87) #5
  tail call void @CVfill(i32 %call11, i8* %call14, i8 signext 78) #5
  %6 = load double* %cpus, align 8, !tbaa !4
  %add67 = fadd double %6, 0.000000e+00
  store double %add67, double* %cpus, align 8, !tbaa !4
  br i1 %cmp19, label %if.then69, label %if.end72

if.then69:                                        ; preds = %for.end61
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str6, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %msgFile)
  %call71 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %for.end61
  %call73 = tail call i32 @Tree_preOTfirst(%struct._Tree* %call12) #5
  %cmp75242 = icmp eq i32 %call73, -1
  br i1 %cmp75242, label %for.end84, label %for.body76

for.body76:                                       ; preds = %if.end72, %if.end81
  %J.2243 = phi i32 [ %call83, %if.end81 ], [ %call73, %if.end72 ]
  br i1 %cmp19, label %if.then78, label %if.end81

if.then78:                                        ; preds = %for.body76
  %call79 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([30 x i8]* @.str7, i64 0, i64 0), i32 %J.2243) #5
  %call80 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %for.body76
  tail call void @FrontMtx_backwardVisit(%struct._FrontMtx* %frontmtx, i32 %J.2243, i32 %1, i32* null, i32 0, %struct._SubMtxManager* %mtxmanager, %struct._SubMtxList* null, %struct._SubMtx** %call16, i8* %call14, %struct._IP** %call64, %struct._SubMtx** %call16, i8* %call15, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  %call83 = tail call i32 @Tree_preOTnext(%struct._Tree* %call12, i32 %J.2243) #5
  %cmp75 = icmp eq i32 %call83, -1
  br i1 %cmp75, label %for.end84, label %for.body76

for.end84:                                        ; preds = %if.end81, %if.end72
  %arrayidx86 = getelementptr inbounds double* %cpus, i64 4
  store double 0.000000e+00, double* %arrayidx86, align 8, !tbaa !4
  tail call void @FrontMtx_storeSolution(%struct._FrontMtx* %frontmtx, i32* null, i32 0, %struct._SubMtxManager* %mtxmanager, %struct._SubMtx** %call16, %struct._DenseMtx* %solmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  %8 = load double* %arrayidx18, align 8, !tbaa !4
  %add89 = fadd double %8, 0.000000e+00
  store double %add89, double* %arrayidx18, align 8, !tbaa !4
  %cmp90 = icmp sgt i32 %msglvl, 2
  br i1 %cmp90, label %if.then91, label %if.end94

if.then91:                                        ; preds = %for.end84
  %call93 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([31 x i8]* @.str8, i64 0, i64 0), double 0.000000e+00) #5
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %for.end84
  %arrayidx97 = getelementptr inbounds %struct._IP** %call64, i64 %idxprom
  %9 = load %struct._IP** %arrayidx97, align 8, !tbaa !0
  tail call void @IP_free(%struct._IP* %9) #5
  %cmp98 = icmp eq %struct._IP** %call64, null
  br i1 %cmp98, label %if.end100, label %if.then99

if.then99:                                        ; preds = %if.end94
  %10 = bitcast %struct._IP** %call64 to i8*
  tail call void @free(i8* %10) #5
  br label %if.end100

if.end100:                                        ; preds = %if.end94, %if.then99
  %cmp101 = icmp eq %struct._SubMtx** %call16, null
  br i1 %cmp101, label %if.end103, label %if.then102

if.then102:                                       ; preds = %if.end100
  %11 = bitcast %struct._SubMtx** %call16 to i8*
  tail call void @free(i8* %11) #5
  br label %if.end103

if.end103:                                        ; preds = %if.end100, %if.then102
  tail call void @CVfree(i8* %call14) #5
  tail call void @CVfree(i8* %call15) #5
  %arrayidx105 = getelementptr inbounds double* %cpus, i64 5
  store double 0.000000e+00, double* %arrayidx105, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32 @FrontMtx_nfront(%struct._FrontMtx*) #3

; Function Attrs: optsize
declare %struct._Tree* @FrontMtx_frontTree(%struct._FrontMtx*) #3

; Function Attrs: optsize
declare %struct._IP** @FrontMtx_forwardSetup(%struct._FrontMtx*, i32, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare i8* @CVinit(i32, i8 signext) #3

; Function Attrs: optsize
declare %struct._SubMtx** @FrontMtx_loadRightHandSide(%struct._FrontMtx*, %struct._DenseMtx*, i32*, i32, %struct._SubMtxManager*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare i32 @Tree_postOTfirst(%struct._Tree*) #3

; Function Attrs: optsize
declare void @FrontMtx_forwardVisit(%struct._FrontMtx*, i32, i32, i32*, i32, %struct._SubMtxManager*, %struct._SubMtxList*, %struct._SubMtx**, i8*, %struct._IP**, %struct._SubMtx**, i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare i32 @Tree_postOTnext(%struct._Tree*, i32) #3

; Function Attrs: optsize
declare void @IP_free(%struct._IP*) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: optsize
declare void @CVfill(i32, i8*, i8 signext) #3

; Function Attrs: optsize
declare void @FrontMtx_diagonalVisit(%struct._FrontMtx*, i32, i32*, i32, %struct._SubMtx**, i8*, %struct._SubMtx**, i32, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare %struct._IP** @FrontMtx_backwardSetup(%struct._FrontMtx*, i32, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare i32 @Tree_preOTfirst(%struct._Tree*) #3

; Function Attrs: optsize
declare void @FrontMtx_backwardVisit(%struct._FrontMtx*, i32, i32, i32*, i32, %struct._SubMtxManager*, %struct._SubMtxList*, %struct._SubMtx**, i8*, %struct._IP**, %struct._SubMtx**, i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare i32 @Tree_preOTnext(%struct._Tree*, i32) #3

; Function Attrs: optsize
declare void @FrontMtx_storeSolution(%struct._FrontMtx*, i32*, i32, %struct._SubMtxManager*, %struct._SubMtx**, %struct._DenseMtx*, i32, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare void @CVfree(i8*) #3

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
!4 = metadata !{metadata !"double", metadata !1}

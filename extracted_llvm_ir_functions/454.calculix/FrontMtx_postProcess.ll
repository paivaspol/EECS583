; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_postProcess.c'
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

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [60 x i8] c"\0A fatal error in FrontMtx_postProcess(%p,%d,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [31 x i8] c"\0A\0A new column adjacency object\00", align 1
@.str2 = private unnamed_addr constant [28 x i8] c"\0A\0A new row adjacency object\00", align 1
@.str3 = private unnamed_addr constant [38 x i8] c"\0A\0A front factor matrix after pivoting\00", align 1
@.str4 = private unnamed_addr constant [36 x i8] c"\0A\0A new upper block adjacency object\00", align 1
@.str5 = private unnamed_addr constant [36 x i8] c"\0A\0A new lower block adjacency object\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_postProcess(%struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp sgt i32 %msglvl, 0
  %cmp2 = icmp eq %struct._IO_FILE* %msgFile, null
  %or.cond = and i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %nfront3 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  %1 = load i32* %nfront3, align 4, !tbaa !3
  %pivotingflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 5
  %2 = load i32* %pivotingflag, align 4, !tbaa !3
  %cmp4 = icmp eq i32 %2, 1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  tail call void @FrontMtx_permuteUpperAdj(%struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  %cmp6 = icmp sgt i32 %msglvl, 2
  br i1 %cmp6, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.then5
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str1, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %msgFile)
  %coladjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 15
  %4 = load %struct._IVL** %coladjIVL, align 8, !tbaa !0
  %call9 = tail call i32 @IVL_writeForHumanEye(%struct._IVL* %4, %struct._IO_FILE* %msgFile) #5
  %call10 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.then5
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  %5 = load i32* %symmetryflag, align 4, !tbaa !3
  %cmp12 = icmp eq i32 %5, 2
  br i1 %cmp12, label %if.then13, label %if.end20

if.then13:                                        ; preds = %if.end11
  tail call void @FrontMtx_permuteLowerAdj(%struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  br i1 %cmp6, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.then13
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str2, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %msgFile)
  %rowadjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 14
  %7 = load %struct._IVL** %rowadjIVL, align 8, !tbaa !0
  %call17 = tail call i32 @IVL_writeForHumanEye(%struct._IVL* %7, %struct._IO_FILE* %msgFile) #5
  %call18 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %if.then15, %if.end11
  tail call void @FrontMtx_permuteUpperMatrices(%struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  %8 = load i32* %symmetryflag, align 4, !tbaa !3
  %cmp22 = icmp eq i32 %8, 2
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  tail call void @FrontMtx_permuteLowerMatrices(%struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20
  br i1 %cmp6, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end24
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([38 x i8]* @.str3, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* %msgFile)
  %call28 = tail call i32 @FrontMtx_writeForHumanEye(%struct._FrontMtx* %frontmtx, %struct._IO_FILE* %msgFile) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end24
  %call30 = tail call %struct._IV* @FrontMtx_colmapIV(%struct._FrontMtx* %frontmtx) #5
  %call31 = tail call %struct._IVL* @FrontMtx_makeUpperBlockIVL(%struct._FrontMtx* %frontmtx, %struct._IV* %call30) #5
  %upperblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 17
  store %struct._IVL* %call31, %struct._IVL** %upperblockIVL, align 8, !tbaa !0
  tail call void @IV_free(%struct._IV* %call30) #5
  %10 = load i32* %symmetryflag, align 4, !tbaa !3
  %cmp33 = icmp eq i32 %10, 2
  br i1 %cmp33, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end29
  %call35 = tail call %struct._IV* @FrontMtx_rowmapIV(%struct._FrontMtx* %frontmtx) #5
  %call36 = tail call %struct._IVL* @FrontMtx_makeLowerBlockIVL(%struct._FrontMtx* %frontmtx, %struct._IV* %call35) #5
  %lowerblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 16
  store %struct._IVL* %call36, %struct._IVL** %lowerblockIVL, align 8, !tbaa !0
  tail call void @IV_free(%struct._IV* %call35) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end29
  br i1 %cmp6, label %if.then39, label %if.end61

if.then39:                                        ; preds = %if.end37
  %11 = tail call i64 @fwrite(i8* getelementptr inbounds ([36 x i8]* @.str4, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %msgFile)
  %12 = load %struct._IVL** %upperblockIVL, align 8, !tbaa !0
  %call42 = tail call i32 @IVL_writeForHumanEye(%struct._IVL* %12, %struct._IO_FILE* %msgFile) #5
  %13 = load i32* %symmetryflag, align 4, !tbaa !3
  %cmp44 = icmp eq i32 %13, 2
  br i1 %cmp44, label %if.then45, label %if.end49

if.then45:                                        ; preds = %if.then39
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([36 x i8]* @.str5, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %msgFile)
  %lowerblockIVL47 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 16
  %15 = load %struct._IVL** %lowerblockIVL47, align 8, !tbaa !0
  %call48 = tail call i32 @IVL_writeForHumanEye(%struct._IVL* %15, %struct._IO_FILE* %msgFile) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %if.then39
  %call50 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end61

if.else:                                          ; preds = %if.end
  %frontETree = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 11
  %16 = load %struct._ETree** %frontETree, align 8, !tbaa !0
  %call52 = tail call %struct._IV* @ETree_vtxToFrontIV(%struct._ETree* %16) #5
  %call53 = tail call %struct._IVL* @FrontMtx_makeUpperBlockIVL(%struct._FrontMtx* %frontmtx, %struct._IV* %call52) #5
  %upperblockIVL54 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 17
  store %struct._IVL* %call53, %struct._IVL** %upperblockIVL54, align 8, !tbaa !0
  %symmetryflag55 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  %17 = load i32* %symmetryflag55, align 4, !tbaa !3
  %cmp56 = icmp eq i32 %17, 2
  br i1 %cmp56, label %if.then57, label %if.end61

if.then57:                                        ; preds = %if.else
  %call58 = tail call %struct._IVL* @FrontMtx_makeLowerBlockIVL(%struct._FrontMtx* %frontmtx, %struct._IV* %call52) #5
  %lowerblockIVL59 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 16
  store %struct._IVL* %call58, %struct._IVL** %lowerblockIVL59, align 8, !tbaa !0
  br label %if.end61

if.end61:                                         ; preds = %if.else, %if.then57, %if.end37, %if.end49
  %call62 = tail call %struct._I2Ohash* @I2Ohash_new() #5
  %upperhash = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 24
  store %struct._I2Ohash* %call62, %struct._I2Ohash** %upperhash, align 8, !tbaa !0
  tail call void @I2Ohash_init(%struct._I2Ohash* %call62, i32 %1, i32 %1, i32 %1) #5
  %symmetryflag64 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  %18 = load i32* %symmetryflag64, align 4, !tbaa !3
  %cmp65 = icmp eq i32 %18, 2
  br i1 %cmp65, label %if.then66, label %if.else69

if.then66:                                        ; preds = %if.end61
  %call67 = tail call %struct._I2Ohash* @I2Ohash_new() #5
  %lowerhash = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 23
  store %struct._I2Ohash* %call67, %struct._I2Ohash** %lowerhash, align 8, !tbaa !0
  tail call void @I2Ohash_init(%struct._I2Ohash* %call67, i32 %1, i32 %1, i32 %1) #5
  br label %if.end71

if.else69:                                        ; preds = %if.end61
  %lowerhash70 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 23
  store %struct._I2Ohash* null, %struct._I2Ohash** %lowerhash70, align 8, !tbaa !0
  br label %if.end71

if.end71:                                         ; preds = %if.else69, %if.then66
  tail call void @FrontMtx_splitUpperMatrices(%struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  %p_mtxUJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 19
  %19 = load %struct._SubMtx*** %p_mtxUJJ, align 8, !tbaa !0
  %cmp72 = icmp eq %struct._SubMtx** %19, null
  br i1 %cmp72, label %if.end76, label %if.then73

if.then73:                                        ; preds = %if.end71
  %20 = bitcast %struct._SubMtx** %19 to i8*
  tail call void @free(i8* %20) #5
  store %struct._SubMtx** null, %struct._SubMtx*** %p_mtxUJJ, align 8, !tbaa !0
  br label %if.end76

if.end76:                                         ; preds = %if.end71, %if.then73
  store %struct._SubMtx** null, %struct._SubMtx*** %p_mtxUJJ, align 8, !tbaa !0
  %p_mtxUJN = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 20
  %21 = load %struct._SubMtx*** %p_mtxUJN, align 8, !tbaa !0
  %cmp78 = icmp eq %struct._SubMtx** %21, null
  br i1 %cmp78, label %if.end82, label %if.then79

if.then79:                                        ; preds = %if.end76
  %22 = bitcast %struct._SubMtx** %21 to i8*
  tail call void @free(i8* %22) #5
  store %struct._SubMtx** null, %struct._SubMtx*** %p_mtxUJN, align 8, !tbaa !0
  br label %if.end82

if.end82:                                         ; preds = %if.end76, %if.then79
  store %struct._SubMtx** null, %struct._SubMtx*** %p_mtxUJN, align 8, !tbaa !0
  %23 = load i32* %symmetryflag64, align 4, !tbaa !3
  %cmp85 = icmp eq i32 %23, 2
  br i1 %cmp85, label %if.then86, label %if.end99

if.then86:                                        ; preds = %if.end82
  tail call void @FrontMtx_splitLowerMatrices(%struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  %p_mtxLJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21
  %24 = load %struct._SubMtx*** %p_mtxLJJ, align 8, !tbaa !0
  %cmp87 = icmp eq %struct._SubMtx** %24, null
  br i1 %cmp87, label %if.end91, label %if.then88

if.then88:                                        ; preds = %if.then86
  %25 = bitcast %struct._SubMtx** %24 to i8*
  tail call void @free(i8* %25) #5
  store %struct._SubMtx** null, %struct._SubMtx*** %p_mtxLJJ, align 8, !tbaa !0
  br label %if.end91

if.end91:                                         ; preds = %if.then86, %if.then88
  store %struct._SubMtx** null, %struct._SubMtx*** %p_mtxLJJ, align 8, !tbaa !0
  %p_mtxLNJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 22
  %26 = load %struct._SubMtx*** %p_mtxLNJ, align 8, !tbaa !0
  %cmp93 = icmp eq %struct._SubMtx** %26, null
  br i1 %cmp93, label %if.end97, label %if.then94

if.then94:                                        ; preds = %if.end91
  %27 = bitcast %struct._SubMtx** %26 to i8*
  tail call void @free(i8* %27) #5
  store %struct._SubMtx** null, %struct._SubMtx*** %p_mtxLNJ, align 8, !tbaa !0
  br label %if.end97

if.end97:                                         ; preds = %if.end91, %if.then94
  store %struct._SubMtx** null, %struct._SubMtx*** %p_mtxLNJ, align 8, !tbaa !0
  br label %if.end99

if.end99:                                         ; preds = %if.end97, %if.end82
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6
  store i32 2, i32* %dataMode, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @FrontMtx_permuteUpperAdj(%struct._FrontMtx*, i32, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare i32 @IVL_writeForHumanEye(%struct._IVL*, %struct._IO_FILE*) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare void @FrontMtx_permuteLowerAdj(%struct._FrontMtx*, i32, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare void @FrontMtx_permuteUpperMatrices(%struct._FrontMtx*, i32, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare void @FrontMtx_permuteLowerMatrices(%struct._FrontMtx*, i32, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare i32 @FrontMtx_writeForHumanEye(%struct._FrontMtx*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare %struct._IV* @FrontMtx_colmapIV(%struct._FrontMtx*) #3

; Function Attrs: optsize
declare %struct._IVL* @FrontMtx_makeUpperBlockIVL(%struct._FrontMtx*, %struct._IV*) #3

; Function Attrs: optsize
declare void @IV_free(%struct._IV*) #3

; Function Attrs: optsize
declare %struct._IV* @FrontMtx_rowmapIV(%struct._FrontMtx*) #3

; Function Attrs: optsize
declare %struct._IVL* @FrontMtx_makeLowerBlockIVL(%struct._FrontMtx*, %struct._IV*) #3

; Function Attrs: optsize
declare %struct._IV* @ETree_vtxToFrontIV(%struct._ETree*) #3

; Function Attrs: optsize
declare %struct._I2Ohash* @I2Ohash_new() #3

; Function Attrs: optsize
declare void @I2Ohash_init(%struct._I2Ohash*, i32, i32, i32) #3

; Function Attrs: optsize
declare void @FrontMtx_splitUpperMatrices(%struct._FrontMtx*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: optsize
declare void @FrontMtx_splitLowerMatrices(%struct._FrontMtx*, i32, %struct._IO_FILE*) #3

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

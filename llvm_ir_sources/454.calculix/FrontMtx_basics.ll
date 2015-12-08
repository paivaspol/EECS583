; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c'
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
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [85 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c\00", align 1
@.str2 = private unnamed_addr constant [58 x i8] c"\0A fatal error in FrontMtx_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [52 x i8] c"\0A fatal error in FrontMtx_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [47 x i8] c"\0A fatal error in FrontMtx_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._FrontMtx* @FrontMtx_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 192) #5
  %0 = bitcast i8* %call to %struct._FrontMtx*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 192, i32 21, i8* getelementptr inbounds ([85 x i8]* @.str1, i64 0, i64 0)) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  tail call void @FrontMtx_setDefaultFields(%struct._FrontMtx* %0) #7
  ret %struct._FrontMtx* %0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_setDefaultFields(%struct._FrontMtx* %frontmtx) #0 {
entry:
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str2, i64 0, i64 0), %struct._FrontMtx* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %nfront = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  store i32 0, i32* %nfront, align 4, !tbaa !3
  %neqns = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 1
  store i32 0, i32* %neqns, align 4, !tbaa !3
  %type = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 2
  store i32 1, i32* %type, align 4, !tbaa !3
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  store i32 0, i32* %symmetryflag, align 4, !tbaa !3
  %sparsityflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 4
  store i32 0, i32* %sparsityflag, align 4, !tbaa !3
  %pivotingflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 5
  store i32 0, i32* %pivotingflag, align 4, !tbaa !3
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6
  store i32 1, i32* %dataMode, align 4, !tbaa !3
  %nentD = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 7
  %lock = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 26
  store %struct._Lock* null, %struct._Lock** %lock, align 8, !tbaa !0
  %nlocks = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 28
  store i32 0, i32* %nlocks, align 4, !tbaa !3
  %1 = bitcast i32* %nentD to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 132, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_clearData(%struct._FrontMtx* %frontmtx) #0 {
entry:
  %nadj = alloca i32, align 4
  %adj = alloca i32*, align 8
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), %struct._FrontMtx* null) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  %1 = load i32* %nfront1, align 4, !tbaa !3
  %frontsizesIV = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 12
  %2 = load %struct._IV** %frontsizesIV, align 8, !tbaa !0
  %cmp2 = icmp eq %struct._IV* %2, null
  br i1 %cmp2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @IV_free(%struct._IV* %2) #5
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then3
  %rowadjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 14
  %3 = load %struct._IVL** %rowadjIVL, align 8, !tbaa !0
  %cmp6 = icmp eq %struct._IVL* %3, null
  br i1 %cmp6, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end5
  %call9 = call %struct._IVL* @IVL_free(%struct._IVL* %3) #5
  br label %if.end10

if.end10:                                         ; preds = %if.end5, %if.then7
  %coladjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 15
  %4 = load %struct._IVL** %coladjIVL, align 8, !tbaa !0
  %cmp11 = icmp eq %struct._IVL* %4, null
  br i1 %cmp11, label %if.end15, label %if.then12

if.then12:                                        ; preds = %if.end10
  %call14 = call %struct._IVL* @IVL_free(%struct._IVL* %4) #5
  br label %if.end15

if.end15:                                         ; preds = %if.end10, %if.then12
  %p_mtxDJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18
  %5 = load %struct._SubMtx*** %p_mtxDJJ, align 8, !tbaa !0
  %cmp16 = icmp eq %struct._SubMtx** %5, null
  br i1 %cmp16, label %if.end29, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end15
  %cmp18305 = icmp sgt i32 %1, 0
  br i1 %cmp18305, label %for.body, label %if.then25

for.body:                                         ; preds = %for.inc, %for.cond.preheader
  %6 = phi %struct._SubMtx** [ %5, %for.cond.preheader ], [ %.pre332, %for.inc ]
  %indvars.iv325 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next326, %for.inc ]
  %arrayidx = getelementptr inbounds %struct._SubMtx** %6, i64 %indvars.iv325
  %7 = load %struct._SubMtx** %arrayidx, align 8, !tbaa !0
  %cmp20 = icmp eq %struct._SubMtx* %7, null
  br i1 %cmp20, label %for.inc, label %if.then21

if.then21:                                        ; preds = %for.body
  call void @SubMtx_free(%struct._SubMtx* %7) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then21
  %indvars.iv.next326 = add i64 %indvars.iv325, 1
  %lftr.wideiv327 = trunc i64 %indvars.iv.next326 to i32
  %exitcond328 = icmp eq i32 %lftr.wideiv327, %1
  %.pre332 = load %struct._SubMtx*** %p_mtxDJJ, align 8, !tbaa !0
  br i1 %exitcond328, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %cmp24 = icmp eq %struct._SubMtx** %.pre332, null
  br i1 %cmp24, label %if.end29, label %if.then25

if.then25:                                        ; preds = %for.cond.preheader, %for.end
  %8 = phi %struct._SubMtx** [ %.pre332, %for.end ], [ %5, %for.cond.preheader ]
  %9 = bitcast %struct._SubMtx** %8 to i8*
  call void @free(i8* %9) #5
  store %struct._SubMtx** null, %struct._SubMtx*** %p_mtxDJJ, align 8, !tbaa !0
  br label %if.end29

if.end29:                                         ; preds = %for.end, %if.end15, %if.then25
  %tree = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 10
  %10 = load %struct._Tree** %tree, align 8, !tbaa !0
  %cmp30 = icmp eq %struct._Tree* %10, null
  br i1 %cmp30, label %if.end41, label %if.then31

if.then31:                                        ; preds = %if.end29
  %frontETree = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 11
  %11 = load %struct._ETree** %frontETree, align 8, !tbaa !0
  %cmp32 = icmp eq %struct._ETree* %11, null
  br i1 %cmp32, label %if.then37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then31
  %tree34 = getelementptr inbounds %struct._ETree* %11, i64 0, i32 2
  %12 = load %struct._Tree** %tree34, align 8, !tbaa !0
  %cmp36 = icmp eq %struct._Tree* %12, %10
  br i1 %cmp36, label %if.end39, label %if.then37

if.then37:                                        ; preds = %lor.lhs.false, %if.then31
  call void @Tree_free(%struct._Tree* %10) #5
  br label %if.end39

if.end39:                                         ; preds = %lor.lhs.false, %if.then37
  store %struct._Tree* null, %struct._Tree** %tree, align 8, !tbaa !0
  br label %if.end41

if.end41:                                         ; preds = %if.end29, %if.end39
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6
  %13 = load i32* %dataMode, align 4, !tbaa !3
  switch i32 %13, label %if.end189 [
    i32 1, label %if.then43
    i32 2, label %for.cond131.preheader
  ]

for.cond131.preheader:                            ; preds = %if.end41
  %cmp132303 = icmp sgt i32 %1, 0
  br i1 %cmp132303, label %for.body133, label %for.end148

if.then43:                                        ; preds = %if.end41
  %p_mtxUJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 19
  %14 = load %struct._SubMtx*** %p_mtxUJJ, align 8, !tbaa !0
  %cmp44 = icmp eq %struct._SubMtx** %14, null
  br i1 %cmp44, label %if.end64, label %for.cond46.preheader

for.cond46.preheader:                             ; preds = %if.then43
  %cmp47295 = icmp sgt i32 %1, 0
  br i1 %cmp47295, label %for.body48, label %if.then60

for.body48:                                       ; preds = %for.inc55, %for.cond46.preheader
  %15 = phi %struct._SubMtx** [ %14, %for.cond46.preheader ], [ %.pre331, %for.inc55 ]
  %indvars.iv315 = phi i64 [ 0, %for.cond46.preheader ], [ %indvars.iv.next316, %for.inc55 ]
  %arrayidx51 = getelementptr inbounds %struct._SubMtx** %15, i64 %indvars.iv315
  %16 = load %struct._SubMtx** %arrayidx51, align 8, !tbaa !0
  %cmp52 = icmp eq %struct._SubMtx* %16, null
  br i1 %cmp52, label %for.inc55, label %if.then53

if.then53:                                        ; preds = %for.body48
  call void @SubMtx_free(%struct._SubMtx* %16) #5
  br label %for.inc55

for.inc55:                                        ; preds = %for.body48, %if.then53
  %indvars.iv.next316 = add i64 %indvars.iv315, 1
  %lftr.wideiv317 = trunc i64 %indvars.iv.next316 to i32
  %exitcond318 = icmp eq i32 %lftr.wideiv317, %1
  %.pre331 = load %struct._SubMtx*** %p_mtxUJJ, align 8, !tbaa !0
  br i1 %exitcond318, label %for.end57, label %for.body48

for.end57:                                        ; preds = %for.inc55
  %cmp59 = icmp eq %struct._SubMtx** %.pre331, null
  br i1 %cmp59, label %if.end64, label %if.then60

if.then60:                                        ; preds = %for.cond46.preheader, %for.end57
  %17 = phi %struct._SubMtx** [ %.pre331, %for.end57 ], [ %14, %for.cond46.preheader ]
  %18 = bitcast %struct._SubMtx** %17 to i8*
  call void @free(i8* %18) #5
  store %struct._SubMtx** null, %struct._SubMtx*** %p_mtxUJJ, align 8, !tbaa !0
  br label %if.end64

if.end64:                                         ; preds = %for.end57, %if.then43, %if.then60
  %p_mtxUJN = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 20
  %19 = load %struct._SubMtx*** %p_mtxUJN, align 8, !tbaa !0
  %cmp65 = icmp eq %struct._SubMtx** %19, null
  br i1 %cmp65, label %if.end85, label %for.cond67.preheader

for.cond67.preheader:                             ; preds = %if.end64
  %cmp68293 = icmp sgt i32 %1, 0
  br i1 %cmp68293, label %for.body69, label %if.then81

for.body69:                                       ; preds = %for.inc76, %for.cond67.preheader
  %20 = phi %struct._SubMtx** [ %19, %for.cond67.preheader ], [ %.pre330, %for.inc76 ]
  %indvars.iv311 = phi i64 [ 0, %for.cond67.preheader ], [ %indvars.iv.next312, %for.inc76 ]
  %arrayidx72 = getelementptr inbounds %struct._SubMtx** %20, i64 %indvars.iv311
  %21 = load %struct._SubMtx** %arrayidx72, align 8, !tbaa !0
  %cmp73 = icmp eq %struct._SubMtx* %21, null
  br i1 %cmp73, label %for.inc76, label %if.then74

if.then74:                                        ; preds = %for.body69
  call void @SubMtx_free(%struct._SubMtx* %21) #5
  br label %for.inc76

for.inc76:                                        ; preds = %for.body69, %if.then74
  %indvars.iv.next312 = add i64 %indvars.iv311, 1
  %lftr.wideiv313 = trunc i64 %indvars.iv.next312 to i32
  %exitcond314 = icmp eq i32 %lftr.wideiv313, %1
  %.pre330 = load %struct._SubMtx*** %p_mtxUJN, align 8, !tbaa !0
  br i1 %exitcond314, label %for.end78, label %for.body69

for.end78:                                        ; preds = %for.inc76
  %cmp80 = icmp eq %struct._SubMtx** %.pre330, null
  br i1 %cmp80, label %if.end85, label %if.then81

if.then81:                                        ; preds = %for.cond67.preheader, %for.end78
  %22 = phi %struct._SubMtx** [ %.pre330, %for.end78 ], [ %19, %for.cond67.preheader ]
  %23 = bitcast %struct._SubMtx** %22 to i8*
  call void @free(i8* %23) #5
  store %struct._SubMtx** null, %struct._SubMtx*** %p_mtxUJN, align 8, !tbaa !0
  br label %if.end85

if.end85:                                         ; preds = %for.end78, %if.end64, %if.then81
  %p_mtxLJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21
  %24 = load %struct._SubMtx*** %p_mtxLJJ, align 8, !tbaa !0
  %cmp86 = icmp eq %struct._SubMtx** %24, null
  br i1 %cmp86, label %if.end106, label %for.cond88.preheader

for.cond88.preheader:                             ; preds = %if.end85
  %cmp89291 = icmp sgt i32 %1, 0
  br i1 %cmp89291, label %for.body90, label %if.then102

for.body90:                                       ; preds = %for.inc97, %for.cond88.preheader
  %25 = phi %struct._SubMtx** [ %24, %for.cond88.preheader ], [ %.pre329, %for.inc97 ]
  %indvars.iv307 = phi i64 [ 0, %for.cond88.preheader ], [ %indvars.iv.next308, %for.inc97 ]
  %arrayidx93 = getelementptr inbounds %struct._SubMtx** %25, i64 %indvars.iv307
  %26 = load %struct._SubMtx** %arrayidx93, align 8, !tbaa !0
  %cmp94 = icmp eq %struct._SubMtx* %26, null
  br i1 %cmp94, label %for.inc97, label %if.then95

if.then95:                                        ; preds = %for.body90
  call void @SubMtx_free(%struct._SubMtx* %26) #5
  br label %for.inc97

for.inc97:                                        ; preds = %for.body90, %if.then95
  %indvars.iv.next308 = add i64 %indvars.iv307, 1
  %lftr.wideiv309 = trunc i64 %indvars.iv.next308 to i32
  %exitcond310 = icmp eq i32 %lftr.wideiv309, %1
  %.pre329 = load %struct._SubMtx*** %p_mtxLJJ, align 8, !tbaa !0
  br i1 %exitcond310, label %for.end99, label %for.body90

for.end99:                                        ; preds = %for.inc97
  %cmp101 = icmp eq %struct._SubMtx** %.pre329, null
  br i1 %cmp101, label %if.end106, label %if.then102

if.then102:                                       ; preds = %for.cond88.preheader, %for.end99
  %27 = phi %struct._SubMtx** [ %.pre329, %for.end99 ], [ %24, %for.cond88.preheader ]
  %28 = bitcast %struct._SubMtx** %27 to i8*
  call void @free(i8* %28) #5
  store %struct._SubMtx** null, %struct._SubMtx*** %p_mtxLJJ, align 8, !tbaa !0
  br label %if.end106

if.end106:                                        ; preds = %for.end99, %if.end85, %if.then102
  %p_mtxLNJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 22
  %29 = load %struct._SubMtx*** %p_mtxLNJ, align 8, !tbaa !0
  %cmp107 = icmp eq %struct._SubMtx** %29, null
  br i1 %cmp107, label %if.end189, label %for.cond109.preheader

for.cond109.preheader:                            ; preds = %if.end106
  %cmp110289 = icmp sgt i32 %1, 0
  br i1 %cmp110289, label %for.body111, label %if.then123

for.body111:                                      ; preds = %for.inc118, %for.cond109.preheader
  %30 = phi %struct._SubMtx** [ %29, %for.cond109.preheader ], [ %.pre, %for.inc118 ]
  %indvars.iv = phi i64 [ 0, %for.cond109.preheader ], [ %indvars.iv.next, %for.inc118 ]
  %arrayidx114 = getelementptr inbounds %struct._SubMtx** %30, i64 %indvars.iv
  %31 = load %struct._SubMtx** %arrayidx114, align 8, !tbaa !0
  %cmp115 = icmp eq %struct._SubMtx* %31, null
  br i1 %cmp115, label %for.inc118, label %if.then116

if.then116:                                       ; preds = %for.body111
  call void @SubMtx_free(%struct._SubMtx* %31) #5
  br label %for.inc118

for.inc118:                                       ; preds = %for.body111, %if.then116
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %1
  %.pre = load %struct._SubMtx*** %p_mtxLNJ, align 8, !tbaa !0
  br i1 %exitcond, label %for.end120, label %for.body111

for.end120:                                       ; preds = %for.inc118
  %cmp122 = icmp eq %struct._SubMtx** %.pre, null
  br i1 %cmp122, label %if.end189, label %if.then123

if.then123:                                       ; preds = %for.cond109.preheader, %for.end120
  %32 = phi %struct._SubMtx** [ %.pre, %for.end120 ], [ %29, %for.cond109.preheader ]
  %33 = bitcast %struct._SubMtx** %32 to i8*
  call void @free(i8* %33) #5
  store %struct._SubMtx** null, %struct._SubMtx*** %p_mtxLNJ, align 8, !tbaa !0
  br label %if.end189

for.body133:                                      ; preds = %for.cond131.preheader, %for.inc146
  %J.5304 = phi i32 [ %inc147, %for.inc146 ], [ 0, %for.cond131.preheader ]
  call void @FrontMtx_upperAdjFronts(%struct._FrontMtx* %frontmtx, i32 %J.5304, i32* %nadj, i32** %adj) #5
  %34 = load i32* %nadj, align 4, !tbaa !3
  %cmp135301 = icmp sgt i32 %34, 0
  br i1 %cmp135301, label %for.body136, label %for.inc146

for.body136:                                      ; preds = %for.body133, %for.inc143
  %indvars.iv322 = phi i64 [ %indvars.iv.next323, %for.inc143 ], [ 0, %for.body133 ]
  %35 = load i32** %adj, align 8, !tbaa !0
  %arrayidx138 = getelementptr inbounds i32* %35, i64 %indvars.iv322
  %36 = load i32* %arrayidx138, align 4, !tbaa !3
  %call139 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.5304, i32 %36) #5
  %cmp140 = icmp eq %struct._SubMtx* %call139, null
  br i1 %cmp140, label %for.inc143, label %if.then141

if.then141:                                       ; preds = %for.body136
  call void @SubMtx_free(%struct._SubMtx* %call139) #5
  br label %for.inc143

for.inc143:                                       ; preds = %for.body136, %if.then141
  %indvars.iv.next323 = add i64 %indvars.iv322, 1
  %37 = load i32* %nadj, align 4, !tbaa !3
  %38 = trunc i64 %indvars.iv.next323 to i32
  %cmp135 = icmp slt i32 %38, %37
  br i1 %cmp135, label %for.body136, label %for.inc146

for.inc146:                                       ; preds = %for.inc143, %for.body133
  %inc147 = add nsw i32 %J.5304, 1
  %exitcond324 = icmp eq i32 %inc147, %1
  br i1 %exitcond324, label %for.end148, label %for.body133

for.end148:                                       ; preds = %for.inc146, %for.cond131.preheader
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  %39 = load i32* %symmetryflag, align 4, !tbaa !3
  %cmp149.not = icmp ne i32 %39, 2
  %cmp132303.not = xor i1 %cmp132303, true
  %brmerge = or i1 %cmp149.not, %cmp132303.not
  br i1 %brmerge, label %if.end169, label %for.body153

for.body153:                                      ; preds = %for.end148, %for.inc166
  %J.6300 = phi i32 [ %inc167, %for.inc166 ], [ 0, %for.end148 ]
  call void @FrontMtx_lowerAdjFronts(%struct._FrontMtx* %frontmtx, i32 %J.6300, i32* %nadj, i32** %adj) #5
  %40 = load i32* %nadj, align 4, !tbaa !3
  %cmp155297 = icmp sgt i32 %40, 0
  br i1 %cmp155297, label %for.body156, label %for.inc166

for.body156:                                      ; preds = %for.body153, %for.inc163
  %indvars.iv319 = phi i64 [ %indvars.iv.next320, %for.inc163 ], [ 0, %for.body153 ]
  %41 = load i32** %adj, align 8, !tbaa !0
  %arrayidx158 = getelementptr inbounds i32* %41, i64 %indvars.iv319
  %42 = load i32* %arrayidx158, align 4, !tbaa !3
  %call159 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %42, i32 %J.6300) #5
  %cmp160 = icmp eq %struct._SubMtx* %call159, null
  br i1 %cmp160, label %for.inc163, label %if.then161

if.then161:                                       ; preds = %for.body156
  call void @SubMtx_free(%struct._SubMtx* %call159) #5
  br label %for.inc163

for.inc163:                                       ; preds = %for.body156, %if.then161
  %indvars.iv.next320 = add i64 %indvars.iv319, 1
  %43 = load i32* %nadj, align 4, !tbaa !3
  %44 = trunc i64 %indvars.iv.next320 to i32
  %cmp155 = icmp slt i32 %44, %43
  br i1 %cmp155, label %for.body156, label %for.inc166

for.inc166:                                       ; preds = %for.inc163, %for.body153
  %inc167 = add nsw i32 %J.6300, 1
  %exitcond321 = icmp eq i32 %inc167, %1
  br i1 %exitcond321, label %if.end169, label %for.body153

if.end169:                                        ; preds = %for.end148, %for.inc166
  %lowerblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 16
  %45 = load %struct._IVL** %lowerblockIVL, align 8, !tbaa !0
  %cmp170 = icmp eq %struct._IVL* %45, null
  br i1 %cmp170, label %if.end174, label %if.then171

if.then171:                                       ; preds = %if.end169
  %call173 = call %struct._IVL* @IVL_free(%struct._IVL* %45) #5
  br label %if.end174

if.end174:                                        ; preds = %if.end169, %if.then171
  %upperblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 17
  %46 = load %struct._IVL** %upperblockIVL, align 8, !tbaa !0
  %cmp175 = icmp eq %struct._IVL* %46, null
  br i1 %cmp175, label %if.end179, label %if.then176

if.then176:                                       ; preds = %if.end174
  %call178 = call %struct._IVL* @IVL_free(%struct._IVL* %46) #5
  br label %if.end179

if.end179:                                        ; preds = %if.end174, %if.then176
  %lowerhash = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 23
  %47 = load %struct._I2Ohash** %lowerhash, align 8, !tbaa !0
  %cmp180 = icmp eq %struct._I2Ohash* %47, null
  br i1 %cmp180, label %if.end183, label %if.then181

if.then181:                                       ; preds = %if.end179
  call void @I2Ohash_free(%struct._I2Ohash* %47) #5
  br label %if.end183

if.end183:                                        ; preds = %if.end179, %if.then181
  %upperhash = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 24
  %48 = load %struct._I2Ohash** %upperhash, align 8, !tbaa !0
  %cmp184 = icmp eq %struct._I2Ohash* %48, null
  br i1 %cmp184, label %if.end189, label %if.then185

if.then185:                                       ; preds = %if.end183
  call void @I2Ohash_free(%struct._I2Ohash* %48) #5
  br label %if.end189

if.end189:                                        ; preds = %if.end41, %for.end120, %if.end106, %if.end183, %if.then185, %if.then123
  %lock = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 26
  %49 = load %struct._Lock** %lock, align 8, !tbaa !0
  %cmp190 = icmp eq %struct._Lock* %49, null
  br i1 %cmp190, label %if.end193, label %if.then191

if.then191:                                       ; preds = %if.end189
  call void @Lock_free(%struct._Lock* %49) #5
  br label %if.end193

if.end193:                                        ; preds = %if.end189, %if.then191
  call void @FrontMtx_setDefaultFields(%struct._FrontMtx* %frontmtx) #7
  ret void
}

; Function Attrs: optsize
declare void @IV_free(%struct._IV*) #3

; Function Attrs: optsize
declare %struct._IVL* @IVL_free(%struct._IVL*) #3

; Function Attrs: optsize
declare void @SubMtx_free(%struct._SubMtx*) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: optsize
declare void @Tree_free(%struct._Tree*) #3

; Function Attrs: optsize
declare void @FrontMtx_upperAdjFronts(%struct._FrontMtx*, i32, i32*, i32**) #3

; Function Attrs: optsize
declare %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx*, i32, i32) #3

; Function Attrs: optsize
declare void @FrontMtx_lowerAdjFronts(%struct._FrontMtx*, i32, i32*, i32**) #3

; Function Attrs: optsize
declare %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx*, i32, i32) #3

; Function Attrs: optsize
declare void @I2Ohash_free(%struct._I2Ohash*) #3

; Function Attrs: optsize
declare void @Lock_free(%struct._Lock*) #3

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_free(%struct._FrontMtx* %frontmtx) #0 {
entry:
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str4, i64 0, i64 0), %struct._FrontMtx* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  tail call void @FrontMtx_clearData(%struct._FrontMtx* %frontmtx) #7
  %1 = bitcast %struct._FrontMtx* %frontmtx to i8*
  tail call void @free(i8* %1) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}

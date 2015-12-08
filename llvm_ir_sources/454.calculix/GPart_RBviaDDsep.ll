; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/GPart_RBviaDDsep.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._DSTree = type { %struct._Tree*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._IV = type { i32, i32, i32, i32* }
%struct._GPart = type { i32, %struct._Graph*, i32, i32, i32, %struct._IV, %struct._IV, %struct._GPart*, %struct._GPart*, %struct._GPart*, %struct._IV, i32, %struct._IO_FILE* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._DDsepInfo = type { i32, i32, i32, double, double, i32, i32, i32, i32, double, double, double, double, double, double, double, i32, %struct._IO_FILE* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [53 x i8] c"\0A fatal error in GPart_RBviaDDsep(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [65 x i8] c"\0A fatal error in GPart_RBviaDDsep(%p,%p)\0A gpart must be a root \0A\00", align 1
@.str2 = private unnamed_addr constant [34 x i8] c"\0A after initial split, ncomp = %d\00", align 1
@.str3 = private unnamed_addr constant [20 x i8] c"\0A\0A ### component %d\00", align 1
@.str4 = private unnamed_addr constant [15 x i8] c"\0A vtxMap(%d) :\00", align 1
@.str5 = private unnamed_addr constant [91 x i8] c"\0A\0A ### inside visit(%d), parent = %d\0A     nvtx = %d, nvbnd = %d, nvtot = %d, totvwght = %d\00", align 1
@.str6 = private unnamed_addr constant [22 x i8] c"\0A before changing map\00", align 1
@.str7 = private unnamed_addr constant [11 x i8] c"\0A vtxMapIV\00", align 1
@.str8 = private unnamed_addr constant [14 x i8] c"\0A parVtxMapIV\00", align 1
@.str9 = private unnamed_addr constant [21 x i8] c"\0A after changing map\00", align 1
@.str10 = private unnamed_addr constant [25 x i8] c"\0A try to find a bisector\00", align 1
@.str11 = private unnamed_addr constant [59 x i8] c"\0A calling DDviaFishnet with minweight = %d, maxweight = %d\00", align 1
@.str12 = private unnamed_addr constant [27 x i8] c"\0A return from DDviaFishnet\00", align 1
@.str13 = private unnamed_addr constant [23 x i8] c"\0A after DD: %d domains\00", align 1
@.str14 = private unnamed_addr constant [22 x i8] c"\0A partition weights :\00", align 1
@.str15 = private unnamed_addr constant [25 x i8] c"\0A BKL final weights   : \00", align 1
@.str16 = private unnamed_addr constant [31 x i8] c"\0A smoothed weights          : \00", align 1
@.str17 = private unnamed_addr constant [25 x i8] c"\0A SPLIT weights       : \00", align 1
@.str18 = private unnamed_addr constant [10 x i8] c"\0A compids\00", align 1
@.str19 = private unnamed_addr constant [32 x i8] c"\0A return from visiting child %d\00", align 1
@.str20 = private unnamed_addr constant [28 x i8] c"\0A this subgraph is a domain\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._DSTree* @GPart_RBviaDDsep(%struct._GPart* %gpart, %struct._DDsepInfo* %info) #0 {
entry:
  %ierr = alloca i32, align 4
  %cmp = icmp eq %struct._GPart* %gpart, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nvtx1 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 2
  %0 = load i32* %nvtx1, align 4, !tbaa !0
  %cmp2 = icmp slt i32 %0, 1
  %cmp4 = icmp eq %struct._DDsepInfo* %info, null
  %or.cond = or i1 %cmp2, %cmp4
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), %struct._GPart* %gpart, %struct._DDsepInfo* %info) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %msglvl5 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 11
  %2 = load i32* %msglvl5, align 4, !tbaa !0
  %msgFile6 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 12
  %3 = load %struct._IO_FILE** %msgFile6, align 8, !tbaa !3
  %par = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 7
  %4 = load %struct._GPart** %par, align 8, !tbaa !3
  %cmp7 = icmp eq %struct._GPart* %4, null
  br i1 %cmp7, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), %struct._GPart* %gpart, %struct._DDsepInfo* %info) #5
  call void @exit(i32 -1) #6
  unreachable

if.end10:                                         ; preds = %if.end
  %call11 = call i32* @IVinit(i32 %0, i32 -1) #5
  %call12 = call %struct._IV* @IV_new() #5
  call void @IV_init(%struct._IV* %call12, i32 %0, i32* null) #5
  %call13 = call i32* @IV_entries(%struct._IV* %call12) #5
  call void @IVfill(i32 %0, i32* %call13, i32 -1) #5
  %ntreeobj = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 6
  store i32 0, i32* %ntreeobj, align 4, !tbaa !0
  %DDoption = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 7
  %6 = load i32* %DDoption, align 4, !tbaa !0
  %cmp14 = icmp eq i32 %6, 2
  br i1 %cmp14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end10
  %freeze = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 3
  %7 = load double* %freeze, align 8, !tbaa !4
  %minweight = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 1
  %8 = load i32* %minweight, align 4, !tbaa !0
  %maxweight = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 2
  %9 = load i32* %maxweight, align 4, !tbaa !0
  %seed = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 0
  %10 = load i32* %seed, align 4, !tbaa !0
  call void @GPart_DDviaFishnet(%struct._GPart* %gpart, double %7, i32 %8, i32 %9, i32 %10) #5
  %call16 = call %struct._IV* @IV_new() #5
  call void @IV_init(%struct._IV* %call16, i32 %0, i32* null) #5
  %compidsIV = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 5
  call void @IV_copy(%struct._IV* %call16, %struct._IV* %compidsIV) #5
  call void @IV_fill(%struct._IV* %compidsIV, i32 1) #5
  %cpuDD = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 9
  %11 = load double* %cpuDD, align 8, !tbaa !4
  %add = fadd double %11, 0.000000e+00
  store double %add, double* %cpuDD, align 8, !tbaa !4
  br label %if.end18

if.end18:                                         ; preds = %if.end10, %if.then15
  %DDmapIV.0 = phi %struct._IV* [ %call16, %if.then15 ], [ null, %if.end10 ]
  call void @GPart_split(%struct._GPart* %gpart) #5
  %cpuSplit = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 14
  %12 = load double* %cpuSplit, align 8, !tbaa !4
  %add20 = fadd double %12, 0.000000e+00
  store double %add20, double* %cpuSplit, align 8, !tbaa !4
  %cmp21 = icmp sgt i32 %2, 2
  %cmp21.not = xor i1 %cmp21, true
  %cmp22 = icmp eq %struct._IO_FILE* %3, null
  %or.cond149 = or i1 %cmp22, %cmp21.not
  %ncomp27.pre = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 4
  br i1 %or.cond149, label %if.end26, label %if.then23

if.then23:                                        ; preds = %if.end18
  %13 = load i32* %ncomp27.pre, align 4, !tbaa !0
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([34 x i8]* @.str2, i64 0, i64 0), i32 %13) #5
  %call25 = call i32 @fflush(%struct._IO_FILE* %3) #5
  br label %if.end26

if.end26:                                         ; preds = %if.end18, %if.then23
  %14 = load i32* %ncomp27.pre, align 4, !tbaa !0
  %cmp28 = icmp sgt i32 %14, 0
  %fch = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 8
  br i1 %cmp28, label %if.then29, label %if.end56

if.then29:                                        ; preds = %if.end26
  %child.0151 = load %struct._GPart** %fch, align 8
  %cmp30152 = icmp eq %struct._GPart* %child.0151, null
  br i1 %cmp30152, label %if.end56, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then29
  %cmp34 = icmp ne %struct._IO_FILE* %3, null
  %cmp39.not = icmp slt i32 %2, 4
  %cmp34.not = xor i1 %cmp34, true
  %brmerge = or i1 %cmp39.not, %cmp34.not
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end54
  %child.0153 = phi %struct._GPart* [ %child.0151, %for.body.lr.ph ], [ %child.0, %if.end54 ]
  %15 = load i32* %ntreeobj, align 4, !tbaa !0
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %ntreeobj, align 4, !tbaa !0
  %id = getelementptr inbounds %struct._GPart* %child.0153, i64 0, i32 0
  store i32 %15, i32* %id, align 4, !tbaa !0
  %brmerge156.demorgan = and i1 %cmp21, %cmp34
  br i1 %brmerge156.demorgan, label %if.then35, label %if.end54

if.then35:                                        ; preds = %for.body
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([20 x i8]* @.str3, i64 0, i64 0), i32 %15) #5
  %g = getelementptr inbounds %struct._GPart* %child.0153, i64 0, i32 1
  %16 = load %struct._Graph** %g, align 8, !tbaa !3
  %call38 = call i32 @Graph_writeStats(%struct._Graph* %16, %struct._IO_FILE* %3) #5
  br i1 %brmerge, label %if.end54, label %if.then42

if.then42:                                        ; preds = %if.then35
  %17 = load %struct._Graph** %g, align 8, !tbaa !3
  %call44 = call i32 @Graph_writeForHumanEye(%struct._Graph* %17, %struct._IO_FILE* %3) #5
  %vtxMapIV = getelementptr inbounds %struct._GPart* %child.0153, i64 0, i32 10
  %call45 = call i32 @IV_size(%struct._IV* %vtxMapIV) #5
  %cmp46 = icmp sgt i32 %call45, 0
  br i1 %cmp46, label %if.then47, label %if.end54

if.then47:                                        ; preds = %if.then42
  %nvtx48 = getelementptr inbounds %struct._GPart* %child.0153, i64 0, i32 2
  %18 = load i32* %nvtx48, align 4, !tbaa !0
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([15 x i8]* @.str4, i64 0, i64 0), i32 %18) #5
  %call51 = call i32 @IV_fp80(%struct._IV* %vtxMapIV, %struct._IO_FILE* %3, i32 80, i32* %ierr) #5
  br label %if.end54

if.end54:                                         ; preds = %for.body, %if.then35, %if.then47, %if.then42
  %call55 = call i32 @fflush(%struct._IO_FILE* %3) #5
  %sib = getelementptr inbounds %struct._GPart* %child.0153, i64 0, i32 9
  %child.0 = load %struct._GPart** %sib, align 8
  %cmp30 = icmp eq %struct._GPart* %child.0, null
  br i1 %cmp30, label %if.end56, label %for.body

if.end56:                                         ; preds = %if.end26, %if.then29, %if.end54
  %19 = load %struct._GPart** %fch, align 8, !tbaa !3
  %cmp58 = icmp eq %struct._GPart* %19, null
  br i1 %cmp58, label %if.else65, label %while.body

while.body:                                       ; preds = %if.end56, %while.body
  %20 = phi %struct._GPart* [ %.pr, %while.body ], [ %19, %if.end56 ]
  %sib62 = getelementptr inbounds %struct._GPart* %20, i64 0, i32 9
  %21 = load %struct._GPart** %sib62, align 8, !tbaa !3
  store %struct._GPart* %21, %struct._GPart** %fch, align 8, !tbaa !3
  call fastcc void @visit(%struct._GPart* %20, i32* %call13, i32* %call11, %struct._IV* %DDmapIV.0, %struct._DDsepInfo* %info) #7
  %g64 = getelementptr inbounds %struct._GPart* %20, i64 0, i32 1
  %22 = load %struct._Graph** %g64, align 8, !tbaa !3
  call void @Graph_free(%struct._Graph* %22) #5
  call void @GPart_free(%struct._GPart* %20) #5
  %.pr = load %struct._GPart** %fch, align 8, !tbaa !3
  %cmp61 = icmp eq %struct._GPart* %.pr, null
  br i1 %cmp61, label %if.end69, label %while.body

if.else65:                                        ; preds = %if.end56
  %23 = load i32* %ntreeobj, align 4, !tbaa !0
  %inc67 = add nsw i32 %23, 1
  store i32 %inc67, i32* %ntreeobj, align 4, !tbaa !0
  %id68 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 0
  store i32 %23, i32* %id68, align 4, !tbaa !0
  call fastcc void @visit(%struct._GPart* %gpart, i32* %call13, i32* %call11, %struct._IV* %DDmapIV.0, %struct._DDsepInfo* %info) #7
  br label %if.end69

if.end69:                                         ; preds = %while.body, %if.else65
  %call70 = call %struct._Tree* @Tree_new() #5
  %24 = load i32* %ntreeobj, align 4, !tbaa !0
  call void @Tree_init2(%struct._Tree* %call70, i32 %24, i32* %call11) #5
  %call72 = call %struct._DSTree* @DSTree_new() #5
  call void @DSTree_init2(%struct._DSTree* %call72, %struct._Tree* %call70, %struct._IV* %call12) #5
  call void @IVfree(i32* %call11) #5
  %cpuTotal = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 15
  store double 0.000000e+00, double* %cpuTotal, align 8, !tbaa !4
  ret %struct._DSTree* %call72
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare %struct._IV* @IV_new() #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare void @IVfill(i32, i32*, i32) #3

; Function Attrs: optsize
declare void @GPart_DDviaFishnet(%struct._GPart*, double, i32, i32, i32) #3

; Function Attrs: optsize
declare void @IV_copy(%struct._IV*, %struct._IV*) #3

; Function Attrs: optsize
declare void @IV_fill(%struct._IV*, i32) #3

; Function Attrs: optsize
declare void @GPart_split(%struct._GPart*) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare i32 @Graph_writeStats(%struct._Graph*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare i32 @Graph_writeForHumanEye(%struct._Graph*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #3

; Function Attrs: optsize
declare i32 @IV_fp80(%struct._IV*, %struct._IO_FILE*, i32, i32*) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @visit(%struct._GPart* %gpart, i32* nocapture %map, i32* nocapture %vpar, %struct._IV* %DDmapIV, %struct._DDsepInfo* %info) #0 {
entry:
  %cpus = alloca [3 x double], align 16
  %ierr = alloca i32, align 4
  %vsize = alloca i32, align 4
  %vadj = alloca i32*, align 8
  %g1 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 1
  %0 = load %struct._Graph** %g1, align 8, !tbaa !3
  %nvtx2 = getelementptr inbounds %struct._Graph* %0, i64 0, i32 1
  %1 = load i32* %nvtx2, align 4, !tbaa !0
  %nvbnd3 = getelementptr inbounds %struct._Graph* %0, i64 0, i32 2
  %2 = load i32* %nvbnd3, align 4, !tbaa !0
  %add = add i32 %2, %1
  %compidsIV = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 5
  %call = call i32* @IV_entries(%struct._IV* %compidsIV) #5
  %vtxMapIV = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 10
  %call4 = call i32* @IV_entries(%struct._IV* %vtxMapIV) #5
  %msgFile5 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 12
  %3 = load %struct._IO_FILE** %msgFile5, align 8, !tbaa !3
  %msglvl6 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 11
  %4 = load i32* %msglvl6, align 4, !tbaa !0
  %type = getelementptr inbounds %struct._Graph* %0, i64 0, i32 0
  %5 = load i32* %type, align 4, !tbaa !0
  %rem589 = and i32 %5, 1
  %cmp = icmp eq i32 %rem589, 0
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  %vwghts = getelementptr inbounds %struct._Graph* %0, i64 0, i32 7
  %6 = load i32** %vwghts, align 8, !tbaa !3
  %call7 = call i32 @IVsum(i32 %1, i32* %6) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %totvwght.0 = phi i32 [ %call7, %if.else ], [ %1, %entry ]
  %cmp8 = icmp sgt i32 %4, 1
  %cmp8.not = xor i1 %cmp8, true
  %cmp9 = icmp eq %struct._IO_FILE* %3, null
  %or.cond = or i1 %cmp9, %cmp8.not
  br i1 %or.cond, label %if.end17, label %if.then10

if.then10:                                        ; preds = %if.end
  %id = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 0
  %7 = load i32* %id, align 4, !tbaa !0
  %par11 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 7
  %8 = load %struct._GPart** %par11, align 8, !tbaa !3
  %cmp12 = icmp eq %struct._GPart* %8, null
  br i1 %cmp12, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then10
  %id14 = getelementptr inbounds %struct._GPart* %8, i64 0, i32 0
  %9 = load i32* %id14, align 4, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %if.then10, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ -1, %if.then10 ]
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([91 x i8]* @.str5, i64 0, i64 0), i32 %7, i32 %cond, i32 %1, i32 %2, i32 %add, i32 %totvwght.0) #5
  %call16 = call i32 @fflush(%struct._IO_FILE* %3) #5
  br label %if.end17

if.end17:                                         ; preds = %if.end, %cond.end
  %cmp18 = icmp sgt i32 %4, 2
  %cmp18.not = xor i1 %cmp18, true
  %or.cond590 = or i1 %cmp9, %cmp18.not
  br i1 %or.cond590, label %if.end25, label %if.then21

if.then21:                                        ; preds = %if.end17
  %10 = load %struct._Graph** %g1, align 8, !tbaa !3
  %call23 = call i32 @Graph_writeForHumanEye(%struct._Graph* %10, %struct._IO_FILE* %3) #5
  %call24 = call i32 @fflush(%struct._IO_FILE* %3) #5
  br label %if.end25

if.end25:                                         ; preds = %if.end17, %if.then21
  %par26 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 7
  %11 = load %struct._GPart** %par26, align 8, !tbaa !3
  %cmp27 = icmp eq %struct._GPart* %11, null
  br i1 %cmp27, label %if.end62, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %if.end25
  %vtxMapIV29 = getelementptr inbounds %struct._GPart* %11, i64 0, i32 10
  %call30 = call i32* @IV_entries(%struct._IV* %vtxMapIV29) #5
  %cmp31 = icmp eq i32* %call30, null
  br i1 %cmp31, label %if.end62, label %if.then32

if.then32:                                        ; preds = %land.lhs.true28
  br i1 %cmp18, label %if.then34, label %for.cond.preheader

if.then34:                                        ; preds = %if.then32
  %12 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str6, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %3)
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %3)
  %call38 = call i32 @IV_writeForHumanEye(%struct._IV* %vtxMapIV, %struct._IO_FILE* %3) #5
  %14 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %3)
  %call41 = call i32 @IV_writeForHumanEye(%struct._IV* %vtxMapIV29, %struct._IO_FILE* %3) #5
  %call42 = call i32 @fflush(%struct._IO_FILE* %3) #5
  %call44 = call i32 @IV_fp80(%struct._IV* %vtxMapIV, %struct._IO_FILE* %3, i32 80, i32* %ierr) #5
  %call45 = call i32 @fflush(%struct._IO_FILE* %3) #5
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then34, %if.then32
  %cmp50638 = icmp sgt i32 %add, 0
  br i1 %cmp50638, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv657 = phi i64 [ %indvars.iv.next658, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %call4, i64 %indvars.iv657
  %15 = load i32* %arrayidx, align 4, !tbaa !0
  %idxprom51 = sext i32 %15 to i64
  %arrayidx52 = getelementptr inbounds i32* %call30, i64 %idxprom51
  %16 = load i32* %arrayidx52, align 4, !tbaa !0
  store i32 %16, i32* %arrayidx, align 4, !tbaa !0
  %indvars.iv.next658 = add i64 %indvars.iv657, 1
  %lftr.wideiv659 = trunc i64 %indvars.iv.next658 to i32
  %exitcond660 = icmp eq i32 %lftr.wideiv659, %add
  br i1 %exitcond660, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  br i1 %cmp18, label %if.then56, label %if.end62

if.then56:                                        ; preds = %for.end
  %17 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str9, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %3)
  %call59 = call i32 @IV_fp80(%struct._IV* %vtxMapIV, %struct._IO_FILE* %3, i32 80, i32* %ierr) #5
  %call60 = call i32 @fflush(%struct._IO_FILE* %3) #5
  br label %if.end62

if.end62:                                         ; preds = %land.lhs.true28, %if.end25, %for.end, %if.then56
  %maxcompweight = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 5
  %18 = load i32* %maxcompweight, align 4, !tbaa !0
  %cmp63 = icmp sgt i32 %totvwght.0, %18
  br i1 %cmp63, label %if.else65, label %if.then64

if.then64:                                        ; preds = %if.end62
  %ncomp = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 4
  store i32 1, i32* %ncomp, align 4, !tbaa !0
  br label %if.end188

if.else65:                                        ; preds = %if.end62
  br i1 %cmp8, label %if.then67, label %if.end70

if.then67:                                        ; preds = %if.else65
  %19 = call i64 @fwrite(i8* getelementptr inbounds ([25 x i8]* @.str10, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %3)
  %call69 = call i32 @fflush(%struct._IO_FILE* %3) #5
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.else65
  %DDoption = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 7
  %20 = load i32* %DDoption, align 4, !tbaa !0
  switch i32 %20, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb92
  ]

sw.bb:                                            ; preds = %if.end70
  %maxweight71 = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 2
  %21 = load i32* %maxweight71, align 4, !tbaa !0
  %mul = shl nsw i32 %21, 3
  %cmp72 = icmp sgt i32 %mul, %totvwght.0
  br i1 %cmp72, label %if.else76, label %if.then73

if.then73:                                        ; preds = %sw.bb
  %minweight74 = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 1
  %22 = load i32* %minweight74, align 4, !tbaa !0
  br label %if.end81

if.else76:                                        ; preds = %sw.bb
  %div = sdiv i32 %totvwght.0, 8
  %cmp77 = icmp slt i32 %div, 2
  %.div = select i1 %cmp77, i32 2, i32 %div
  %div80 = sdiv i32 %.div, 2
  br label %if.end81

if.end81:                                         ; preds = %if.else76, %if.then73
  %minweight.0 = phi i32 [ %22, %if.then73 ], [ %div80, %if.else76 ]
  %maxweight.0 = phi i32 [ %21, %if.then73 ], [ %.div, %if.else76 ]
  br i1 %cmp18, label %if.then83, label %sw.epilog.critedge

if.then83:                                        ; preds = %if.end81
  %call84 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([59 x i8]* @.str11, i64 0, i64 0), i32 %minweight.0, i32 %maxweight.0) #5
  %call85 = call i32 @fflush(%struct._IO_FILE* %3) #5
  %freeze = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 3
  %23 = load double* %freeze, align 8, !tbaa !4
  %seed = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 0
  %24 = load i32* %seed, align 4, !tbaa !0
  call void @GPart_DDviaFishnet(%struct._GPart* %gpart, double %23, i32 %minweight.0, i32 %maxweight.0, i32 %24) #5
  %25 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str12, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %3)
  %call90 = call i32 @fflush(%struct._IO_FILE* %3) #5
  br label %sw.epilog

sw.bb92:                                          ; preds = %if.end70
  call void @GPart_DDviaProjection(%struct._GPart* %gpart, %struct._IV* %DDmapIV) #5
  br label %sw.epilog

sw.epilog.critedge:                               ; preds = %if.end81
  %freeze.c = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 3
  %26 = load double* %freeze.c, align 8, !tbaa !4
  %seed.c = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 0
  %27 = load i32* %seed.c, align 4, !tbaa !0
  call void @GPart_DDviaFishnet(%struct._GPart* %gpart, double %26, i32 %minweight.0, i32 %maxweight.0, i32 %27) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.critedge, %if.then83, %if.end70, %sw.bb92
  %cpuDD = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 9
  %28 = load double* %cpuDD, align 8, !tbaa !4
  %add93 = fadd double %28, 0.000000e+00
  store double %add93, double* %cpuDD, align 8, !tbaa !4
  %ncomp108.pre = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 4
  br i1 %or.cond590, label %if.end107, label %if.then104

if.then104:                                       ; preds = %sw.epilog
  %29 = load i32* %ncomp108.pre, align 4, !tbaa !0
  %call99609 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([23 x i8]* @.str13, i64 0, i64 0), i32 %29) #5
  %30 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str14, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %3)
  %cweightsIV = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 6
  %call106 = call i32 @IV_fp80(%struct._IV* %cweightsIV, %struct._IO_FILE* %3, i32 25, i32* %ierr) #5
  br label %if.end107

if.end107:                                        ; preds = %sw.epilog, %if.then104
  %31 = load i32* %ncomp108.pre, align 4, !tbaa !0
  %cmp109 = icmp sgt i32 %31, 1
  br i1 %cmp109, label %if.then110, label %if.end188

if.then110:                                       ; preds = %if.end107
  %alpha = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 4
  %32 = load double* %alpha, align 8, !tbaa !4
  %seed111 = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 0
  %33 = load i32* %seed111, align 4, !tbaa !0
  %arraydecay = getelementptr inbounds [3 x double]* %cpus, i64 0, i64 0
  %call112 = call double @GPart_TwoSetViaBKL(%struct._GPart* %gpart, double %32, i32 %33, double* %arraydecay) #5
  %34 = load double* %arraydecay, align 16, !tbaa !4
  %cpuMap = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 10
  %35 = load double* %cpuMap, align 8, !tbaa !4
  %add114 = fadd double %34, %35
  store double %add114, double* %cpuMap, align 8, !tbaa !4
  %arrayidx115 = getelementptr inbounds [3 x double]* %cpus, i64 0, i64 1
  %36 = load double* %arrayidx115, align 8, !tbaa !4
  %cpuBPG = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 11
  %37 = load double* %cpuBPG, align 8, !tbaa !4
  %add116 = fadd double %36, %37
  store double %add116, double* %cpuBPG, align 8, !tbaa !4
  %arrayidx117 = getelementptr inbounds [3 x double]* %cpus, i64 0, i64 2
  %38 = load double* %arrayidx117, align 16, !tbaa !4
  %cpuBKL = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 12
  %39 = load double* %cpuBKL, align 8, !tbaa !4
  %add118 = fadd double %38, %39
  store double %add118, double* %cpuBKL, align 8, !tbaa !4
  br i1 %or.cond, label %if.end127, label %if.then122

if.then122:                                       ; preds = %if.then110
  %40 = call i64 @fwrite(i8* getelementptr inbounds ([25 x i8]* @.str15, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %3)
  %cweightsIV124 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 6
  %call125 = call i32 @IV_fp80(%struct._IV* %cweightsIV124, %struct._IO_FILE* %3, i32 25, i32* %ierr) #5
  br label %if.end127

if.end127:                                        ; preds = %if.then110, %if.then122
  %.pr = load i32* %ncomp108.pre, align 4, !tbaa !0
  %cmp129 = icmp sgt i32 %.pr, 1
  br i1 %cmp129, label %if.then130, label %if.end188

if.then130:                                       ; preds = %if.end127
  %nlayer = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 8
  %41 = load i32* %nlayer, align 4, !tbaa !0
  %cmp131 = icmp slt i32 %41, 3
  br i1 %cmp131, label %if.then132, label %if.then140

if.then132:                                       ; preds = %if.then130
  %42 = load double* %alpha, align 8, !tbaa !4
  %conv = fptrunc double %42 to float
  call void @GPart_smoothBy2layers(%struct._GPart* %gpart, i32 %41, float %conv) #5
  br label %if.end145

if.then140:                                       ; preds = %if.then130
  %div137 = sdiv i32 %41, 2
  %43 = load double* %alpha, align 8, !tbaa !4
  %conv142 = fptrunc double %43 to float
  %call143 = call float @GPart_smoothBisector(%struct._GPart* %gpart, i32 %div137, float %conv142) #5
  br label %if.end145

if.end145:                                        ; preds = %if.then140, %if.then132
  br i1 %or.cond, label %if.end158, label %if.then151

if.then151:                                       ; preds = %if.end145
  %44 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str16, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %3)
  %cweightsIV153 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 6
  %call154 = call i32 @IV_fp80(%struct._IV* %cweightsIV153, %struct._IO_FILE* %3, i32 25, i32* %ierr) #5
  br label %if.end158

if.end158:                                        ; preds = %if.then151, %if.end145
  %cpuSmooth = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 13
  %45 = load double* %cpuSmooth, align 8, !tbaa !4
  %add157 = fadd double %45, 0.000000e+00
  store double %add157, double* %cpuSmooth, align 8, !tbaa !4
  %.pr611.pr = load i32* %ncomp108.pre, align 4, !tbaa !0
  %cmp160 = icmp sgt i32 %.pr611.pr, 1
  br i1 %cmp160, label %if.then162, label %if.end188

if.then162:                                       ; preds = %if.end158
  call void @GPart_split(%struct._GPart* %gpart) #5
  %cpuSplit = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 14
  %46 = load double* %cpuSplit, align 8, !tbaa !4
  %add164 = fadd double %46, 0.000000e+00
  store double %add164, double* %cpuSplit, align 8, !tbaa !4
  br i1 %or.cond, label %if.end175, label %if.then170

if.then170:                                       ; preds = %if.then162
  %47 = call i64 @fwrite(i8* getelementptr inbounds ([25 x i8]* @.str17, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %3)
  %cweightsIV172 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 6
  %call173 = call i32 @IV_fp80(%struct._IV* %cweightsIV172, %struct._IO_FILE* %3, i32 20, i32* %ierr) #5
  %call174 = call i32 @fflush(%struct._IO_FILE* %3) #5
  br label %if.end175

if.end175:                                        ; preds = %if.then162, %if.then170
  br i1 %or.cond590, label %if.end188, label %if.then181

if.then181:                                       ; preds = %if.end175
  %48 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str18, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %3)
  %call184 = call i32 @IV_fp80(%struct._IV* %compidsIV, %struct._IO_FILE* %3, i32 80, i32* %ierr) #5
  %call185 = call i32 @fflush(%struct._IO_FILE* %3) #5
  br label %if.end188

if.end188:                                        ; preds = %if.end175, %if.end107, %if.end127, %if.end158, %if.then181, %if.then64
  %ncomp189 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 4
  %49 = load i32* %ncomp189, align 4, !tbaa !0
  %cmp190 = icmp sgt i32 %49, 1
  br i1 %cmp190, label %if.then192, label %if.else315

if.then192:                                       ; preds = %if.end188
  %fch = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 8
  %child.0625 = load %struct._GPart** %fch, align 8
  %cmp194626 = icmp eq %struct._GPart* %child.0625, null
  br i1 %cmp194626, label %for.end204, label %for.body196.lr.ph

for.body196.lr.ph:                                ; preds = %if.then192
  %ntreeobj = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 6
  %id199 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 0
  br label %for.body196

for.body196:                                      ; preds = %for.body196.lr.ph, %for.body196
  %child.0627 = phi %struct._GPart* [ %child.0625, %for.body196.lr.ph ], [ %child.0, %for.body196 ]
  %50 = load i32* %ntreeobj, align 4, !tbaa !0
  %inc197 = add nsw i32 %50, 1
  store i32 %inc197, i32* %ntreeobj, align 4, !tbaa !0
  %id198 = getelementptr inbounds %struct._GPart* %child.0627, i64 0, i32 0
  store i32 %50, i32* %id198, align 4, !tbaa !0
  %51 = load i32* %id199, align 4, !tbaa !0
  %idxprom201 = sext i32 %50 to i64
  %arrayidx202 = getelementptr inbounds i32* %vpar, i64 %idxprom201
  store i32 %51, i32* %arrayidx202, align 4, !tbaa !0
  %sib = getelementptr inbounds %struct._GPart* %child.0627, i64 0, i32 9
  %child.0 = load %struct._GPart** %sib, align 8
  %cmp194 = icmp eq %struct._GPart* %child.0, null
  br i1 %cmp194, label %for.end204, label %for.body196

for.end204:                                       ; preds = %for.body196, %if.then192
  %cmp18.not661 = xor i1 %cmp18, true
  %cmp208 = icmp eq %struct._IO_FILE* %3, null
  %or.cond662 = or i1 %cmp208, %cmp18.not661
  br i1 %or.cond662, label %while.cond.preheader, label %if.then210

if.then210:                                       ; preds = %for.end204
  %52 = load i32* %ncomp189, align 4, !tbaa !0
  %call212 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([34 x i8]* @.str2, i64 0, i64 0), i32 %52) #5
  %child.1622 = load %struct._GPart** %fch, align 8
  %cmp215623 = icmp eq %struct._GPart* %child.1622, null
  br i1 %cmp215623, label %for.end243, label %for.body217.lr.ph

for.body217.lr.ph:                                ; preds = %if.then210
  %cmp222.not = icmp slt i32 %4, 4
  br label %for.body217

for.body217:                                      ; preds = %for.body217.lr.ph, %for.inc241
  %child.1624 = phi %struct._GPart* [ %child.1622, %for.body217.lr.ph ], [ %child.1, %for.inc241 ]
  %id218 = getelementptr inbounds %struct._GPart* %child.1624, i64 0, i32 0
  %53 = load i32* %id218, align 4, !tbaa !0
  %call219 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([20 x i8]* @.str3, i64 0, i64 0), i32 %53) #5
  %g220 = getelementptr inbounds %struct._GPart* %child.1624, i64 0, i32 1
  %54 = load %struct._Graph** %g220, align 8, !tbaa !3
  %call221 = call i32 @Graph_writeStats(%struct._Graph* %54, %struct._IO_FILE* %3) #5
  br i1 %cmp222.not, label %for.inc241, label %if.then227

if.then227:                                       ; preds = %for.body217
  %55 = load %struct._Graph** %g220, align 8, !tbaa !3
  %call229 = call i32 @Graph_writeForHumanEye(%struct._Graph* %55, %struct._IO_FILE* %3) #5
  %vtxMapIV230 = getelementptr inbounds %struct._GPart* %child.1624, i64 0, i32 10
  %call231 = call i32 @IV_size(%struct._IV* %vtxMapIV230) #5
  %cmp232 = icmp sgt i32 %call231, 0
  br i1 %cmp232, label %if.then234, label %for.inc241

if.then234:                                       ; preds = %if.then227
  %nvtx235 = getelementptr inbounds %struct._GPart* %child.1624, i64 0, i32 2
  %56 = load i32* %nvtx235, align 4, !tbaa !0
  %call236 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([15 x i8]* @.str4, i64 0, i64 0), i32 %56) #5
  %call238 = call i32 @IV_fp80(%struct._IV* %vtxMapIV230, %struct._IO_FILE* %3, i32 80, i32* %ierr) #5
  br label %for.inc241

for.inc241:                                       ; preds = %for.body217, %if.then234, %if.then227
  %sib242 = getelementptr inbounds %struct._GPart* %child.1624, i64 0, i32 9
  %child.1 = load %struct._GPart** %sib242, align 8
  %cmp215 = icmp eq %struct._GPart* %child.1, null
  br i1 %cmp215, label %for.end243, label %for.body217

for.end243:                                       ; preds = %for.inc241, %if.then210
  %call244 = call i32 @fflush(%struct._IO_FILE* %3) #5
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.end204, %for.end243
  %57 = load %struct._GPart** %fch, align 8, !tbaa !3
  %cmp247621 = icmp eq %struct._GPart* %57, null
  br i1 %cmp247621, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %if.end260
  %58 = phi %struct._GPart* [ %62, %if.end260 ], [ %57, %while.cond.preheader ]
  %sib249 = getelementptr inbounds %struct._GPart* %58, i64 0, i32 9
  %59 = load %struct._GPart** %sib249, align 8, !tbaa !3
  store %struct._GPart* %59, %struct._GPart** %fch, align 8, !tbaa !3
  call fastcc void @visit(%struct._GPart* %58, i32* %map, i32* %vpar, %struct._IV* %DDmapIV, %struct._DDsepInfo* %info) #7
  br i1 %or.cond590, label %if.end260, label %if.then256

if.then256:                                       ; preds = %while.body
  %id257 = getelementptr inbounds %struct._GPart* %58, i64 0, i32 0
  %60 = load i32* %id257, align 4, !tbaa !0
  %call258 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([32 x i8]* @.str19, i64 0, i64 0), i32 %60) #5
  %call259 = call i32 @fflush(%struct._IO_FILE* %3) #5
  br label %if.end260

if.end260:                                        ; preds = %while.body, %if.then256
  %g261 = getelementptr inbounds %struct._GPart* %58, i64 0, i32 1
  %61 = load %struct._Graph** %g261, align 8, !tbaa !3
  call void @Graph_free(%struct._Graph* %61) #5
  call void @GPart_free(%struct._GPart* %58) #5
  %62 = load %struct._GPart** %fch, align 8, !tbaa !3
  %cmp247 = icmp eq %struct._GPart* %62, null
  br i1 %cmp247, label %while.end, label %while.body

while.end:                                        ; preds = %if.end260, %while.cond.preheader
  %63 = load %struct._GPart** %par26, align 8, !tbaa !3
  %cmp263 = icmp eq %struct._GPart* %63, null
  %cmp299614 = icmp sgt i32 %1, 0
  br i1 %cmp263, label %for.cond298.preheader, label %for.cond266.preheader

for.cond266.preheader:                            ; preds = %while.end
  br i1 %cmp299614, label %for.body269.lr.ph, label %if.end372

for.body269.lr.ph:                                ; preds = %for.cond266.preheader
  %id288 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 0
  br label %for.body269

for.cond298.preheader:                            ; preds = %while.end
  br i1 %cmp299614, label %for.body301.lr.ph, label %if.end372

for.body301.lr.ph:                                ; preds = %for.cond298.preheader
  %id307 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 0
  br label %for.body301

for.body269:                                      ; preds = %for.inc294, %for.body269.lr.ph
  %indvars.iv642 = phi i64 [ 0, %for.body269.lr.ph ], [ %indvars.iv.next643, %for.inc294 ]
  %arrayidx271 = getelementptr inbounds i32* %call, i64 %indvars.iv642
  %64 = load i32* %arrayidx271, align 4, !tbaa !0
  %cmp272 = icmp eq i32 %64, 0
  br i1 %cmp272, label %if.then274, label %for.inc294

if.then274:                                       ; preds = %for.body269
  %65 = trunc i64 %indvars.iv642 to i32
  call void @Graph_adjAndSize(%struct._Graph* %0, i32 %65, i32* %vsize, i32** %vadj) #5
  %66 = load i32* %vsize, align 4, !tbaa !0
  %cmp276616 = icmp sgt i32 %66, 0
  br i1 %cmp276616, label %for.body278.lr.ph, label %for.end287

for.body278.lr.ph:                                ; preds = %if.then274
  %67 = load i32** %vadj, align 8, !tbaa !3
  br label %for.body278

for.body278:                                      ; preds = %for.body278.lr.ph, %for.body278
  %indvars.iv640 = phi i64 [ 0, %for.body278.lr.ph ], [ %indvars.iv.next641, %for.body278 ]
  %arrayidx280 = getelementptr inbounds i32* %67, i64 %indvars.iv640
  %68 = load i32* %arrayidx280, align 4, !tbaa !0
  %idxprom281 = sext i32 %68 to i64
  %arrayidx282 = getelementptr inbounds i32* %call4, i64 %idxprom281
  %69 = load i32* %arrayidx282, align 4, !tbaa !0
  store i32 %69, i32* %arrayidx280, align 4, !tbaa !0
  %indvars.iv.next641 = add i64 %indvars.iv640, 1
  %70 = load i32* %vsize, align 4, !tbaa !0
  %71 = trunc i64 %indvars.iv.next641 to i32
  %cmp276 = icmp slt i32 %71, %70
  br i1 %cmp276, label %for.body278, label %for.end287

for.end287:                                       ; preds = %for.body278, %if.then274
  %72 = load i32* %id288, align 4, !tbaa !0
  %arrayidx290 = getelementptr inbounds i32* %call4, i64 %indvars.iv642
  %73 = load i32* %arrayidx290, align 4, !tbaa !0
  %idxprom291 = sext i32 %73 to i64
  %arrayidx292 = getelementptr inbounds i32* %map, i64 %idxprom291
  store i32 %72, i32* %arrayidx292, align 4, !tbaa !0
  br label %for.inc294

for.inc294:                                       ; preds = %for.body269, %for.end287
  %indvars.iv.next643 = add i64 %indvars.iv642, 1
  %lftr.wideiv644 = trunc i64 %indvars.iv.next643 to i32
  %exitcond645 = icmp eq i32 %lftr.wideiv644, %1
  br i1 %exitcond645, label %if.end372, label %for.body269

for.body301:                                      ; preds = %for.inc311, %for.body301.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body301.lr.ph ], [ %indvars.iv.next, %for.inc311 ]
  %arrayidx303 = getelementptr inbounds i32* %call, i64 %indvars.iv
  %74 = load i32* %arrayidx303, align 4, !tbaa !0
  %cmp304 = icmp eq i32 %74, 0
  br i1 %cmp304, label %if.then306, label %for.inc311

if.then306:                                       ; preds = %for.body301
  %75 = load i32* %id307, align 4, !tbaa !0
  %arrayidx309 = getelementptr inbounds i32* %map, i64 %indvars.iv
  store i32 %75, i32* %arrayidx309, align 4, !tbaa !0
  br label %for.inc311

for.inc311:                                       ; preds = %for.body301, %if.then306
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %1
  br i1 %exitcond, label %if.end372, label %for.body301

if.else315:                                       ; preds = %if.end188
  br i1 %or.cond, label %if.end323, label %if.then321

if.then321:                                       ; preds = %if.else315
  %76 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str20, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %3)
  br label %if.end323

if.end323:                                        ; preds = %if.else315, %if.then321
  %77 = load %struct._GPart** %par26, align 8, !tbaa !3
  %cmp325 = icmp eq %struct._GPart* %77, null
  %cmp362629 = icmp sgt i32 %1, 0
  br i1 %cmp325, label %for.cond361.preheader, label %for.cond328.preheader

for.cond328.preheader:                            ; preds = %if.end323
  br i1 %cmp362629, label %for.body331, label %if.end372

for.cond361.preheader:                            ; preds = %if.end323
  br i1 %cmp362629, label %for.body364.lr.ph, label %if.end372

for.body364.lr.ph:                                ; preds = %for.cond361.preheader
  %id365 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 0
  br label %for.body364

for.cond348.preheader:                            ; preds = %for.inc345
  br i1 %cmp362629, label %for.body351.lr.ph, label %if.end372

for.body351.lr.ph:                                ; preds = %for.cond348.preheader
  %id352 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 0
  br label %for.body351

for.body331:                                      ; preds = %for.cond328.preheader, %for.inc345
  %v.3637 = phi i32 [ %inc346, %for.inc345 ], [ 0, %for.cond328.preheader ]
  call void @Graph_adjAndSize(%struct._Graph* %0, i32 %v.3637, i32* %vsize, i32** %vadj) #5
  %78 = load i32* %vsize, align 4, !tbaa !0
  %cmp333634 = icmp sgt i32 %78, 0
  br i1 %cmp333634, label %for.body335.lr.ph, label %for.inc345

for.body335.lr.ph:                                ; preds = %for.body331
  %79 = load i32** %vadj, align 8, !tbaa !3
  br label %for.body335

for.body335:                                      ; preds = %for.body335.lr.ph, %for.body335
  %indvars.iv654 = phi i64 [ 0, %for.body335.lr.ph ], [ %indvars.iv.next655, %for.body335 ]
  %arrayidx337 = getelementptr inbounds i32* %79, i64 %indvars.iv654
  %80 = load i32* %arrayidx337, align 4, !tbaa !0
  %idxprom338 = sext i32 %80 to i64
  %arrayidx339 = getelementptr inbounds i32* %call4, i64 %idxprom338
  %81 = load i32* %arrayidx339, align 4, !tbaa !0
  store i32 %81, i32* %arrayidx337, align 4, !tbaa !0
  %indvars.iv.next655 = add i64 %indvars.iv654, 1
  %82 = load i32* %vsize, align 4, !tbaa !0
  %83 = trunc i64 %indvars.iv.next655 to i32
  %cmp333 = icmp slt i32 %83, %82
  br i1 %cmp333, label %for.body335, label %for.inc345

for.inc345:                                       ; preds = %for.body335, %for.body331
  %inc346 = add nsw i32 %v.3637, 1
  %exitcond656 = icmp eq i32 %inc346, %1
  br i1 %exitcond656, label %for.cond348.preheader, label %for.body331

for.body351:                                      ; preds = %for.body351, %for.body351.lr.ph
  %indvars.iv650 = phi i64 [ 0, %for.body351.lr.ph ], [ %indvars.iv.next651, %for.body351 ]
  %84 = load i32* %id352, align 4, !tbaa !0
  %arrayidx354 = getelementptr inbounds i32* %call4, i64 %indvars.iv650
  %85 = load i32* %arrayidx354, align 4, !tbaa !0
  %idxprom355 = sext i32 %85 to i64
  %arrayidx356 = getelementptr inbounds i32* %map, i64 %idxprom355
  store i32 %84, i32* %arrayidx356, align 4, !tbaa !0
  %indvars.iv.next651 = add i64 %indvars.iv650, 1
  %lftr.wideiv652 = trunc i64 %indvars.iv.next651 to i32
  %exitcond653 = icmp eq i32 %lftr.wideiv652, %1
  br i1 %exitcond653, label %if.end372, label %for.body351

for.body364:                                      ; preds = %for.body364, %for.body364.lr.ph
  %indvars.iv646 = phi i64 [ 0, %for.body364.lr.ph ], [ %indvars.iv.next647, %for.body364 ]
  %86 = load i32* %id365, align 4, !tbaa !0
  %arrayidx367 = getelementptr inbounds i32* %map, i64 %indvars.iv646
  store i32 %86, i32* %arrayidx367, align 4, !tbaa !0
  %indvars.iv.next647 = add i64 %indvars.iv646, 1
  %lftr.wideiv648 = trunc i64 %indvars.iv.next647 to i32
  %exitcond649 = icmp eq i32 %lftr.wideiv648, %1
  br i1 %exitcond649, label %if.end372, label %for.body364

if.end372:                                        ; preds = %for.cond328.preheader, %for.cond348.preheader, %for.body351, %for.cond361.preheader, %for.body364, %for.cond266.preheader, %for.inc294, %for.cond298.preheader, %for.inc311
  ret void
}

; Function Attrs: optsize
declare void @Graph_free(%struct._Graph*) #3

; Function Attrs: optsize
declare void @GPart_free(%struct._GPart*) #3

; Function Attrs: optsize
declare %struct._Tree* @Tree_new() #3

; Function Attrs: optsize
declare void @Tree_init2(%struct._Tree*, i32, i32*) #3

; Function Attrs: optsize
declare %struct._DSTree* @DSTree_new() #3

; Function Attrs: optsize
declare void @DSTree_init2(%struct._DSTree*, %struct._Tree*, %struct._IV*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: optsize
declare i32 @IVsum(i32, i32*) #3

; Function Attrs: optsize
declare i32 @IV_writeForHumanEye(%struct._IV*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare void @GPart_DDviaProjection(%struct._GPart*, %struct._IV*) #3

; Function Attrs: optsize
declare double @GPart_TwoSetViaBKL(%struct._GPart*, double, i32, double*) #3

; Function Attrs: optsize
declare void @GPart_smoothBy2layers(%struct._GPart*, i32, float) #3

; Function Attrs: optsize
declare float @GPart_smoothBisector(%struct._GPart*, i32, float) #3

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}

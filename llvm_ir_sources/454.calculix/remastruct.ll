; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/remastruct.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str = private unnamed_addr constant [23 x i8] c"Decascading the MPC's\0A\00"
@str3 = private unnamed_addr constant [47 x i8] c"Renumbering the nodes to decrease the profile:\00"
@str4 = private unnamed_addr constant [41 x i8] c"Determining the structure of the matrix:\00"

; Function Attrs: nounwind optsize uwtable
define void @remastruct(i32* %ipompc, double** nocapture %coefmpcp, i32** nocapture %nodempcp, i32* %nmpc, i32* %mpcfree, i32* %nodeboun, i32* %ndirboun, i32* %nboun, i32* %ikmpc, i32* %ilmpc, i32* %ikboun, i32* %ilboun, i8* %labmpc, i32 %labmpcLen, i32* %nk, i32* %memmpc_, i32* %icascade, i32* %maxlenmpc, i32* %kon, i32* %ipkon, i8* %lakon, i32 %lakonLen, i32* %ne, i32* %nnn, i32* %nactdof, i32* %icol, i32* %jq, i32** nocapture %irowp, i32* %isolver, i32* %neq, i32* %nzs, i32* %nmethod, double** nocapture %fp, double** nocapture %fincp, double** nocapture %fextp, double** nocapture %bp, double** nocapture %aux2p, double** nocapture %finip, double** nocapture %fextinip, double** nocapture %adbp, double** nocapture %aubp, i32* %ithermal) #0 {
entry:
  %nodempc = alloca i32*, align 8
  %mast1 = alloca i32*, align 8
  %mpcend = alloca i32, align 4
  %mpcmult = alloca i32, align 4
  %nsky = alloca i32, align 4
  %callfrommain = alloca i32, align 4
  %irow = alloca i32*, align 8
  %coefmpc = alloca double*, align 8
  store i32* null, i32** %mast1, align 8, !tbaa !0
  %0 = load i32** %nodempcp, align 8, !tbaa !0
  store i32* %0, i32** %nodempc, align 8, !tbaa !0
  %1 = load double** %coefmpcp, align 8, !tbaa !0
  store double* %1, double** %coefmpc, align 8, !tbaa !0
  %2 = load i32** %irowp, align 8, !tbaa !0
  store i32* %2, i32** %irow, align 8, !tbaa !0
  %3 = load double** %fp, align 8, !tbaa !0
  %4 = load double** %fincp, align 8, !tbaa !0
  %5 = load double** %fextp, align 8, !tbaa !0
  %6 = load double** %bp, align 8, !tbaa !0
  %7 = load double** %aux2p, align 8, !tbaa !0
  %8 = load double** %finip, align 8, !tbaa !0
  %9 = load double** %fextinip, align 8, !tbaa !0
  %10 = load double** %adbp, align 8, !tbaa !0
  %11 = load double** %aubp, align 8, !tbaa !0
  %puts = call i32 @puts(i8* getelementptr inbounds ([23 x i8]* @str, i64 0, i64 0))
  store i32 0, i32* %callfrommain, align 4, !tbaa !3
  call void @cascade(i32* %ipompc, double** %coefmpc, i32** %nodempc, i32* %nmpc, i32* %mpcfree, i32* %nodeboun, i32* %ndirboun, i32* %nboun, i32* %ikmpc, i32* %ilmpc, i32* %ikboun, i32* %ilboun, i32* %mpcend, i32* %mpcmult, i8* %labmpc, i32 %labmpcLen, i32* %nk, i32* %memmpc_, i32* %icascade, i32* %maxlenmpc, i32* %callfrommain) #4
  %12 = load i32* %nk, align 4, !tbaa !3
  %cmp291 = icmp slt i32 %12, 1
  br i1 %cmp291, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %13 = add nsw i64 %indvars.iv, -1
  %arrayidx = getelementptr inbounds i32* %nnn, i64 %13
  %14 = trunc i64 %indvars.iv to i32
  store i32 %14, i32* %arrayidx, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %15 = load i32* %nk, align 4, !tbaa !3
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %puts258 = call i32 @puts(i8* getelementptr inbounds ([47 x i8]* @str3, i64 0, i64 0))
  %16 = load i32* %ne, align 4, !tbaa !3
  %mul = mul nsw i32 %16, 20
  %17 = load i32* %mpcend, align 4, !tbaa !3
  %add = add nsw i32 %mul, %17
  %conv = sext i32 %add to i64
  %call2 = call i8* @u_calloc(i64 %conv, i64 4) #4
  %18 = bitcast i8* %call2 to i32*
  %19 = load i32* %ne, align 4, !tbaa !3
  %mul3 = mul nsw i32 %19, 380
  %20 = load i32* %mpcmult, align 4, !tbaa !3
  %add4 = add nsw i32 %mul3, %20
  %conv5 = sext i32 %add4 to i64
  %call6 = call i8* @u_calloc(i64 %conv5, i64 4) #4
  %21 = bitcast i8* %call6 to i32*
  %22 = load i32* %nk, align 4, !tbaa !3
  %add7 = add nsw i32 %22, 1
  %conv8 = sext i32 %add7 to i64
  %call9 = call i8* @u_calloc(i64 %conv8, i64 4) #4
  %23 = bitcast i8* %call9 to i32*
  %24 = load i32* %nk, align 4, !tbaa !3
  %mul10 = shl nsw i32 %24, 2
  %add11259 = or i32 %mul10, 1
  %conv12 = sext i32 %add11259 to i64
  %call13 = call i8* @u_calloc(i64 %conv12, i64 4) #4
  %25 = bitcast i8* %call13 to i32*
  %26 = load i32* %nk, align 4, !tbaa !3
  %conv14 = sext i32 %26 to i64
  %call15 = call i8* @u_calloc(i64 %conv14, i64 4) #4
  %27 = bitcast i8* %call15 to i32*
  %28 = load i32* %ne, align 4, !tbaa !3
  %29 = load i32* %nmpc, align 4, !tbaa !3
  %add16 = add i32 %28, 1
  %add17 = add i32 %add16, %29
  %conv18 = sext i32 %add17 to i64
  %call19 = call i8* @u_calloc(i64 %conv18, i64 4) #4
  %30 = bitcast i8* %call19 to i32*
  %31 = load i32** %nodempc, align 8, !tbaa !0
  call void @renumber_(i32* %nk, i32* %kon, i32* %ipkon, i8* %lakon, i32* %ne, i32* %ipompc, i32* %31, i32* %nmpc, i32* %nnn, i32* %18, i32* %21, i32* %23, i32* %25, i32* %27, i32* %30) #4
  call void @free(i8* %call2) #4
  call void @free(i8* %call6) #4
  call void @free(i8* %call9) #4
  call void @free(i8* %call13) #4
  call void @free(i8* %call15) #4
  call void @free(i8* %call19) #4
  %puts260 = call i32 @puts(i8* getelementptr inbounds ([41 x i8]* @str4, i64 0, i64 0))
  %32 = load i32* %nzs, align 4, !tbaa !3
  %conv21 = sext i32 %32 to i64
  %call22 = call i8* @u_calloc(i64 %conv21, i64 4) #4
  %33 = bitcast i8* %call22 to i32*
  store i32* %33, i32** %mast1, align 8, !tbaa !0
  %34 = load i32* %nk, align 4, !tbaa !3
  %mul23 = shl nsw i32 %34, 2
  %conv24 = sext i32 %mul23 to i64
  %call25 = call i8* @u_calloc(i64 %conv24, i64 4) #4
  %35 = bitcast i8* %call25 to i32*
  %36 = load i32* %nk, align 4, !tbaa !3
  %mul26 = shl nsw i32 %36, 2
  %conv27 = sext i32 %mul26 to i64
  %call28 = call i8* @u_calloc(i64 %conv27, i64 4) #4
  %37 = bitcast i8* %call28 to i32*
  %38 = load i32** %nodempc, align 8, !tbaa !0
  call void @mastruct(i32* %nk, i32* %kon, i32* %ipkon, i8* %lakon, i32* %ne, i32* %nodeboun, i32* %ndirboun, i32* %nboun, i32* %ipompc, i32* %38, i32* %nmpc, i32* %nactdof, i32* %icol, i32* %jq, i32** %mast1, i32** %irow, i32* %isolver, i32* %neq, i32* %nnn, i32* %ikmpc, i32* %ilmpc, i32* %35, i32* %37, i32* %nsky, i32* %nzs, i32* %nmethod, i32* %ithermal) #4
  call void @free(i8* %call25) #4
  call void @free(i8* %call28) #4
  %39 = load i32** %mast1, align 8, !tbaa !0
  %40 = bitcast i32* %39 to i8*
  call void @free(i8* %40) #4
  %41 = load i32** %irow, align 8, !tbaa !0
  %42 = bitcast i32* %41 to i8*
  %43 = load i32* %nzs, align 4, !tbaa !3
  %conv29 = sext i32 %43 to i64
  %mul30 = shl nsw i64 %conv29, 2
  %call31 = call i8* @realloc(i8* %42, i64 %mul30) #4
  %44 = bitcast i8* %call31 to i32*
  store i32* %44, i32** %irow, align 8, !tbaa !0
  %45 = load i32** %nodempc, align 8, !tbaa !0
  store i32* %45, i32** %nodempcp, align 8, !tbaa !0
  %46 = load double** %coefmpc, align 8, !tbaa !0
  store double* %46, double** %coefmpcp, align 8, !tbaa !0
  store i32* %44, i32** %irowp, align 8, !tbaa !0
  %47 = bitcast double* %3 to i8*
  %48 = load i32* %neq, align 4, !tbaa !3
  %conv32 = sext i32 %48 to i64
  %mul33 = shl nsw i64 %conv32, 3
  %call34 = call i8* @realloc(i8* %47, i64 %mul33) #4
  %49 = bitcast i8* %call34 to double*
  %50 = load i32* %neq, align 4, !tbaa !3
  %cmp36288 = icmp sgt i32 %50, 0
  br i1 %cmp36288, label %for.body38.lr.ph, label %for.end43

for.body38.lr.ph:                                 ; preds = %for.end
  %51 = icmp sgt i32 %50, 1
  %.op317 = add i32 %50, -1
  %52 = zext i32 %.op317 to i64
  %.op318 = shl nuw nsw i64 %52, 3
  %.op318.op = add i64 %.op318, 8
  %53 = select i1 %51, i64 %.op318.op, i64 8
  call void @llvm.memset.p0i8.i64(i8* %call34, i8 0, i64 %53, i32 8, i1 false)
  br label %for.end43

for.end43:                                        ; preds = %for.body38.lr.ph, %for.end
  %54 = bitcast double* %4 to i8*
  %conv44 = sext i32 %50 to i64
  %mul45 = shl nsw i64 %conv44, 3
  %call46 = call i8* @realloc(i8* %54, i64 %mul45) #4
  %55 = bitcast i8* %call46 to double*
  %56 = load i32* %neq, align 4, !tbaa !3
  %cmp48284 = icmp sgt i32 %56, 0
  br i1 %cmp48284, label %for.body50.lr.ph, label %for.end55

for.body50.lr.ph:                                 ; preds = %for.end43
  %57 = icmp sgt i32 %56, 1
  %.op315 = add i32 %56, -1
  %58 = zext i32 %.op315 to i64
  %.op316 = shl nuw nsw i64 %58, 3
  %.op316.op = add i64 %.op316, 8
  %59 = select i1 %57, i64 %.op316.op, i64 8
  call void @llvm.memset.p0i8.i64(i8* %call46, i8 0, i64 %59, i32 8, i1 false)
  br label %for.end55

for.end55:                                        ; preds = %for.body50.lr.ph, %for.end43
  %60 = bitcast double* %5 to i8*
  %conv56 = sext i32 %56 to i64
  %mul57 = shl nsw i64 %conv56, 3
  %call58 = call i8* @realloc(i8* %60, i64 %mul57) #4
  %61 = bitcast i8* %call58 to double*
  %62 = load i32* %neq, align 4, !tbaa !3
  %cmp60280 = icmp sgt i32 %62, 0
  br i1 %cmp60280, label %for.body62.lr.ph, label %for.end67

for.body62.lr.ph:                                 ; preds = %for.end55
  %63 = icmp sgt i32 %62, 1
  %.op313 = add i32 %62, -1
  %64 = zext i32 %.op313 to i64
  %.op314 = shl nuw nsw i64 %64, 3
  %.op314.op = add i64 %.op314, 8
  %65 = select i1 %63, i64 %.op314.op, i64 8
  call void @llvm.memset.p0i8.i64(i8* %call58, i8 0, i64 %65, i32 8, i1 false)
  br label %for.end67

for.end67:                                        ; preds = %for.body62.lr.ph, %for.end55
  %66 = bitcast double* %6 to i8*
  %conv68 = sext i32 %62 to i64
  %mul69 = shl nsw i64 %conv68, 3
  %call70 = call i8* @realloc(i8* %66, i64 %mul69) #4
  %67 = bitcast i8* %call70 to double*
  %68 = load i32* %neq, align 4, !tbaa !3
  %cmp72276 = icmp sgt i32 %68, 0
  br i1 %cmp72276, label %for.body74.lr.ph, label %for.end79

for.body74.lr.ph:                                 ; preds = %for.end67
  %69 = icmp sgt i32 %68, 1
  %.op311 = add i32 %68, -1
  %70 = zext i32 %.op311 to i64
  %.op312 = shl nuw nsw i64 %70, 3
  %.op312.op = add i64 %.op312, 8
  %71 = select i1 %69, i64 %.op312.op, i64 8
  call void @llvm.memset.p0i8.i64(i8* %call70, i8 0, i64 %71, i32 8, i1 false)
  br label %for.end79

for.end79:                                        ; preds = %for.body74.lr.ph, %for.end67
  %72 = bitcast double* %8 to i8*
  %conv80 = sext i32 %68 to i64
  %mul81 = shl nsw i64 %conv80, 3
  %call82 = call i8* @realloc(i8* %72, i64 %mul81) #4
  %73 = bitcast i8* %call82 to double*
  %74 = load i32* %neq, align 4, !tbaa !3
  %cmp84272 = icmp sgt i32 %74, 0
  br i1 %cmp84272, label %for.body86.lr.ph, label %for.end91

for.body86.lr.ph:                                 ; preds = %for.end79
  %75 = icmp sgt i32 %74, 1
  %.op309 = add i32 %74, -1
  %76 = zext i32 %.op309 to i64
  %.op310 = shl nuw nsw i64 %76, 3
  %.op310.op = add i64 %.op310, 8
  %77 = select i1 %75, i64 %.op310.op, i64 8
  call void @llvm.memset.p0i8.i64(i8* %call82, i8 0, i64 %77, i32 8, i1 false)
  br label %for.end91

for.end91:                                        ; preds = %for.body86.lr.ph, %for.end79
  %78 = load i32* %nmethod, align 4, !tbaa !3
  %cmp92 = icmp eq i32 %78, 4
  br i1 %cmp92, label %if.then, label %if.end

if.then:                                          ; preds = %for.end91
  %79 = bitcast double* %7 to i8*
  %conv94 = sext i32 %74 to i64
  %mul95 = shl nsw i64 %conv94, 3
  %call96 = call i8* @realloc(i8* %79, i64 %mul95) #4
  %80 = bitcast i8* %call96 to double*
  %81 = load i32* %neq, align 4, !tbaa !3
  %cmp98268 = icmp sgt i32 %81, 0
  br i1 %cmp98268, label %for.body100.lr.ph, label %for.end105

for.body100.lr.ph:                                ; preds = %if.then
  %82 = icmp sgt i32 %81, 1
  %.op307 = add i32 %81, -1
  %83 = zext i32 %.op307 to i64
  %.op308 = shl nuw nsw i64 %83, 3
  %.op308.op = add i64 %.op308, 8
  %84 = select i1 %82, i64 %.op308.op, i64 8
  call void @llvm.memset.p0i8.i64(i8* %call96, i8 0, i64 %84, i32 8, i1 false)
  br label %for.end105

for.end105:                                       ; preds = %for.body100.lr.ph, %if.then
  %85 = bitcast double* %9 to i8*
  %conv106 = sext i32 %81 to i64
  %mul107 = shl nsw i64 %conv106, 3
  %call108 = call i8* @realloc(i8* %85, i64 %mul107) #4
  %86 = bitcast i8* %call108 to double*
  %87 = load i32* %neq, align 4, !tbaa !3
  %cmp110265 = icmp sgt i32 %87, 0
  br i1 %cmp110265, label %for.body112.lr.ph, label %for.end117

for.body112.lr.ph:                                ; preds = %for.end105
  %88 = icmp sgt i32 %87, 1
  %.op305 = add i32 %87, -1
  %89 = zext i32 %.op305 to i64
  %.op306 = shl nuw nsw i64 %89, 3
  %.op306.op = add i64 %.op306, 8
  %90 = select i1 %88, i64 %.op306.op, i64 8
  call void @llvm.memset.p0i8.i64(i8* %call108, i8 0, i64 %90, i32 8, i1 false)
  br label %for.end117

for.end117:                                       ; preds = %for.body112.lr.ph, %for.end105
  %91 = bitcast double* %10 to i8*
  %conv118 = sext i32 %87 to i64
  %mul119 = shl nsw i64 %conv118, 3
  %call120 = call i8* @realloc(i8* %91, i64 %mul119) #4
  %92 = bitcast i8* %call120 to double*
  %93 = load i32* %neq, align 4, !tbaa !3
  %cmp122263 = icmp sgt i32 %93, 0
  br i1 %cmp122263, label %for.body124.lr.ph, label %for.end129

for.body124.lr.ph:                                ; preds = %for.end117
  %94 = icmp sgt i32 %93, 1
  %.op303 = add i32 %93, -1
  %95 = zext i32 %.op303 to i64
  %.op304 = shl nuw nsw i64 %95, 3
  %.op304.op = add i64 %.op304, 8
  %96 = select i1 %94, i64 %.op304.op, i64 8
  call void @llvm.memset.p0i8.i64(i8* %call120, i8 0, i64 %96, i32 8, i1 false)
  br label %for.end129

for.end129:                                       ; preds = %for.body124.lr.ph, %for.end117
  %97 = bitcast double* %11 to i8*
  %98 = load i32* %nzs, align 4, !tbaa !3
  %conv130 = sext i32 %98 to i64
  %mul131 = shl nsw i64 %conv130, 3
  %call132 = call i8* @realloc(i8* %97, i64 %mul131) #4
  %99 = bitcast i8* %call132 to double*
  %100 = load i32* %nzs, align 4, !tbaa !3
  %cmp134261 = icmp sgt i32 %100, 0
  br i1 %cmp134261, label %for.body136.lr.ph, label %if.end

for.body136.lr.ph:                                ; preds = %for.end129
  %101 = icmp sgt i32 %100, 1
  %.op = add i32 %100, -1
  %102 = zext i32 %.op to i64
  %.op302 = shl nuw nsw i64 %102, 3
  %.op302.op = add i64 %.op302, 8
  %103 = select i1 %101, i64 %.op302.op, i64 8
  call void @llvm.memset.p0i8.i64(i8* %call132, i8 0, i64 %103, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %for.end129, %for.body136.lr.ph, %for.end91
  %aux2.0 = phi double* [ %7, %for.end91 ], [ %80, %for.body136.lr.ph ], [ %80, %for.end129 ]
  %fextini.0 = phi double* [ %9, %for.end91 ], [ %86, %for.body136.lr.ph ], [ %86, %for.end129 ]
  %adb.0 = phi double* [ %10, %for.end91 ], [ %92, %for.body136.lr.ph ], [ %92, %for.end129 ]
  %aub.0 = phi double* [ %11, %for.end91 ], [ %99, %for.body136.lr.ph ], [ %99, %for.end129 ]
  store double* %49, double** %fp, align 8, !tbaa !0
  store double* %55, double** %fincp, align 8, !tbaa !0
  store double* %61, double** %fextp, align 8, !tbaa !0
  store double* %67, double** %bp, align 8, !tbaa !0
  store double* %aux2.0, double** %aux2p, align 8, !tbaa !0
  store double* %73, double** %finip, align 8, !tbaa !0
  store double* %fextini.0, double** %fextinip, align 8, !tbaa !0
  store double* %adb.0, double** %adbp, align 8, !tbaa !0
  store double* %aub.0, double** %aubp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @cascade(i32*, double**, i32**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32, i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: optsize
declare i8* @u_calloc(i64, i64) #1

; Function Attrs: optsize
declare void @renumber_(i32*, i32*, i32*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: optsize
declare void @mastruct(i32*, i32*, i32*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
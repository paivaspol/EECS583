; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [46 x i8] c"\0A fatal error in Chv_shift(%p,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [122 x i8] c"\0A fatal error in Chv_shift(%p,%d)\0A type is SPOOLES_REAL, symflag = %d\0A must be SPOOLES_SYMMETRIC or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str2 = private unnamed_addr constant [145 x i8] c"\0A fatal error in Chv_shift(%p,%d)\0A type is SPOOLES_COMPLEX, symflag = %d\0A must be SPOOLES_SYMMETRIC, SPOOLES_HERMITIAN\0A or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str3 = private unnamed_addr constant [44 x i8] c"\0A fatal error in Chv_maxabs(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [86 x i8] c"\0A fatal error in Chv_maxabs(%p)\0A type is %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str5 = private unnamed_addr constant [46 x i8] c"\0A fatal error in Chv_frobNorm(%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [88 x i8] c"\0A fatal error in Chv_frobNorm(%p)\0A type is %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str7 = private unnamed_addr constant [44 x i8] c"\0A fatal error in Chv_sub(%p,%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [58 x i8] c"\0A fatal error in Chv_sub(%p,%p)\0A dimensions do not match\0A\00", align 1
@.str9 = private unnamed_addr constant [63 x i8] c"\0A fatal error in Chv_sub(%p,%p)\0A entriesJ = %p, entriesI = %p\0A\00", align 1
@.str10 = private unnamed_addr constant [102 x i8] c"\0A fatal error in Chv_sub(%p,%p)\0A typeJ = %d, typeI = %d\0A both must be SPOOLES_REAL or SPOOLES_COMPLEX\00", align 1
@.str11 = private unnamed_addr constant [42 x i8] c"\0A fatal error in Chv_zero(%p)\0A bad input\0A\00", align 1
@.str12 = private unnamed_addr constant [83 x i8] c"\0A fatal error in Chv_zero(%p)\0A type = %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str13 = private unnamed_addr constant [52 x i8] c"\0A fatal error in Chv_fill11block(%p,%p)\0A bad input\0A\00", align 1
@.str14 = private unnamed_addr constant [77 x i8] c"\0A fatal error in Chv_fill11block(%p,%p)\0A type = %d, must be real or complex\0A\00", align 1
@.str15 = private unnamed_addr constant [52 x i8] c"\0A fatal error in Chv_fill12block(%p,%p)\0A bad input\0A\00", align 1
@.str16 = private unnamed_addr constant [77 x i8] c"\0A fatal error in Chv_fill12block(%p,%p)\0A type = %d, must be real or complex\0A\00", align 1
@.str17 = private unnamed_addr constant [56 x i8] c"\0A fatal error in Chv_fillReal21block(%p,%p)\0A bad input\0A\00", align 1
@.str18 = private unnamed_addr constant [77 x i8] c"\0A fatal error in Chv_fill21block(%p,%p)\0A type = %d, must be real or complex\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Chv_shift(%struct._Chv* %chv, i32 %shift) #0 {
entry:
  %cmp = icmp eq %struct._Chv* %chv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str, i64 0, i64 0), %struct._Chv* null, i32 %shift) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %shift, 0
  br i1 %cmp1, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %1 = load i32* %type, align 4, !tbaa !3
  switch i32 %1, label %return [
    i32 1, label %if.then5
    i32 2, label %if.then85
  ]

if.then5:                                         ; preds = %if.end3
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %2 = load i32* %symflag, align 4, !tbaa !3
  switch i32 %2, label %if.else77 [
    i32 0, label %if.then7
    i32 2, label %if.then32
  ]

if.then7:                                         ; preds = %if.then5
  %colind = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 7
  %3 = load i32** %colind, align 8, !tbaa !0
  %idx.ext = sext i32 %shift to i64
  %add.ptr = getelementptr inbounds i32* %3, i64 %idx.ext
  store i32* %add.ptr, i32** %colind, align 8, !tbaa !0
  %cmp8 = icmp slt i32 %shift, 0
  %nD = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1
  %4 = load i32* %nD, align 4, !tbaa !3
  %nU = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3
  %5 = load i32* %nU, align 4, !tbaa !3
  br i1 %cmp8, label %if.end27.loopexit, label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %if.then7
  %cmp19290 = icmp sgt i32 %shift, 0
  br i1 %cmp19290, label %for.body20.lr.ph, label %if.end27

for.body20.lr.ph:                                 ; preds = %for.cond18.preheader
  %entries21 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 8
  %entries21.promoted = load double** %entries21, align 8, !tbaa !0
  %6 = add i32 %5, %4
  %7 = sext i32 %6 to i64
  %8 = add i32 %shift, -1
  %9 = zext i32 %8 to i64
  %10 = add i32 %shift, -2
  %11 = zext i32 %10 to i64
  %12 = mul i64 %9, %11
  %13 = lshr i64 %12, 1
  %14 = sub i64 %7, %13
  %scevgep324 = getelementptr double* %entries21.promoted, i64 %14
  %scevgep324325 = bitcast double* %scevgep324 to i8*
  %15 = shl nsw i64 %7, 3
  %16 = add i64 %15, -8
  %17 = zext i32 %8 to i64
  %18 = mul i64 %16, %17
  %uglygep326 = getelementptr i8* %scevgep324325, i64 %18
  %uglygep326327 = bitcast i8* %uglygep326 to double*
  store double* %uglygep326327, double** %entries21, align 8, !tbaa !0
  br label %if.end27

if.end27.loopexit:                                ; preds = %if.then7
  %entries = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 8
  %entries.promoted = load double** %entries, align 8, !tbaa !0
  %19 = add i32 %5, %4
  %20 = sext i32 %19 to i64
  %21 = xor i64 %20, -1
  %22 = xor i32 %shift, -1
  %23 = zext i32 %22 to i64
  %24 = sub i32 -2, %shift
  %25 = zext i32 %24 to i64
  %26 = mul i64 %23, %25
  %27 = lshr i64 %26, 1
  %28 = sub i64 %21, %27
  %scevgep = getelementptr double* %entries.promoted, i64 %28
  %scevgep322 = bitcast double* %scevgep to i8*
  %29 = shl nsw i64 %20, 3
  %30 = sub i64 -16, %29
  %31 = zext i32 %22 to i64
  %32 = mul i64 %30, %31
  %uglygep = getelementptr i8* %scevgep322, i64 %32
  %uglygep323 = bitcast i8* %uglygep to double*
  store double* %uglygep323, double** %entries, align 8, !tbaa !0
  br label %if.end27

if.end27:                                         ; preds = %for.cond18.preheader, %for.body20.lr.ph, %if.end27.loopexit
  %sub = sub nsw i32 %4, %shift
  store i32 %sub, i32* %nD, align 4, !tbaa !3
  br label %return

if.then32:                                        ; preds = %if.then5
  %rowind = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 6
  %33 = load i32** %rowind, align 8, !tbaa !0
  %idx.ext33 = sext i32 %shift to i64
  %add.ptr34 = getelementptr inbounds i32* %33, i64 %idx.ext33
  store i32* %add.ptr34, i32** %rowind, align 8, !tbaa !0
  %colind35 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 7
  %34 = load i32** %colind35, align 8, !tbaa !0
  %add.ptr37 = getelementptr inbounds i32* %34, i64 %idx.ext33
  store i32* %add.ptr37, i32** %colind35, align 8, !tbaa !0
  %cmp38 = icmp slt i32 %shift, 0
  %nD40 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1
  %35 = load i32* %nD40, align 4, !tbaa !3
  %nL = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2
  %36 = load i32* %nL, align 4, !tbaa !3
  %nU42 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3
  %37 = load i32* %nU42, align 4, !tbaa !3
  br i1 %cmp38, label %if.end74.loopexit, label %if.else56

if.else56:                                        ; preds = %if.then32
  %cmp65299 = icmp sgt i32 %shift, 0
  br i1 %cmp65299, label %for.body66.lr.ph, label %if.end74

for.body66.lr.ph:                                 ; preds = %if.else56
  %entries67 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 8
  %entries67.promoted = load double** %entries67, align 8, !tbaa !0
  %38 = add i32 %36, %37
  %39 = shl i32 %35, 1
  %40 = add i32 %38, %39
  %41 = add i32 %40, -1
  %42 = sext i32 %41 to i64
  %43 = add i32 %shift, -1
  %44 = zext i32 %43 to i64
  %45 = add i32 %shift, -2
  %46 = zext i32 %45 to i64
  %47 = mul i64 %44, %46
  %48 = and i64 %47, -2
  %49 = sub i64 %42, %48
  %scevgep334 = getelementptr double* %entries67.promoted, i64 %49
  %scevgep334335 = bitcast double* %scevgep334 to i8*
  %50 = shl nsw i64 %42, 3
  %51 = add i64 %50, -16
  %52 = zext i32 %43 to i64
  %53 = mul i64 %51, %52
  %uglygep336 = getelementptr i8* %scevgep334335, i64 %53
  %uglygep336337 = bitcast i8* %uglygep336 to double*
  store double* %uglygep336337, double** %entries67, align 8, !tbaa !0
  br label %if.end74

if.end74.loopexit:                                ; preds = %if.then32
  %entries48 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 8
  %entries48.promoted = load double** %entries48, align 8, !tbaa !0
  %54 = add i32 %36, %37
  %55 = shl i32 %35, 1
  %56 = add i32 %54, %55
  %57 = add i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = sub i64 0, %58
  %60 = xor i32 %shift, -1
  %61 = zext i32 %60 to i64
  %62 = sub i32 -2, %shift
  %63 = zext i32 %62 to i64
  %64 = mul i64 %61, %63
  %65 = and i64 %64, -2
  %66 = sub i64 %59, %65
  %scevgep329 = getelementptr double* %entries48.promoted, i64 %66
  %scevgep329330 = bitcast double* %scevgep329 to i8*
  %67 = shl nsw i64 %58, 3
  %68 = sub i64 -16, %67
  %69 = zext i32 %60 to i64
  %70 = mul i64 %68, %69
  %uglygep331 = getelementptr i8* %scevgep329330, i64 %70
  %uglygep331332 = bitcast i8* %uglygep331 to double*
  store double* %uglygep331332, double** %entries48, align 8, !tbaa !0
  br label %if.end74

if.end74:                                         ; preds = %if.else56, %for.body66.lr.ph, %if.end74.loopexit
  %sub76 = sub nsw i32 %35, %shift
  store i32 %sub76, i32* %nD40, align 4, !tbaa !3
  br label %return

if.else77:                                        ; preds = %if.then5
  %71 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call79 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([122 x i8]* @.str1, i64 0, i64 0), %struct._Chv* %chv, i32 %shift, i32 %2) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.then85:                                        ; preds = %if.end3
  %symflag86 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %72 = load i32* %symflag86, align 4, !tbaa !3
  switch i32 %72, label %if.else183 [
    i32 0, label %if.then90
    i32 1, label %if.then90
    i32 2, label %if.then133
  ]

if.then90:                                        ; preds = %if.then85, %if.then85
  %colind91 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 7
  %73 = load i32** %colind91, align 8, !tbaa !0
  %idx.ext92 = sext i32 %shift to i64
  %add.ptr93 = getelementptr inbounds i32* %73, i64 %idx.ext92
  store i32* %add.ptr93, i32** %colind91, align 8, !tbaa !0
  %cmp94 = icmp slt i32 %shift, 0
  %nD96 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1
  %74 = load i32* %nD96, align 4, !tbaa !3
  %nU97 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3
  %75 = load i32* %nU97, align 4, !tbaa !3
  br i1 %cmp94, label %for.body102.lr.ph, label %for.cond116.preheader

for.cond116.preheader:                            ; preds = %if.then90
  %cmp117309 = icmp sgt i32 %shift, 0
  br i1 %cmp117309, label %for.body118.lr.ph, label %if.end127

for.body118.lr.ph:                                ; preds = %for.cond116.preheader
  %entries120 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 8
  %entries120.promoted = load double** %entries120, align 8, !tbaa !0
  %76 = add i32 %75, %74
  %77 = sext i32 %76 to i64
  br label %for.body118

for.body102.lr.ph:                                ; preds = %if.then90
  %entries104 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 8
  %entries104.promoted = load double** %entries104, align 8, !tbaa !0
  %78 = add i32 %75, %74
  %79 = sext i32 %78 to i64
  br label %for.body102

for.body102:                                      ; preds = %for.body102, %for.body102.lr.ph
  %indvars.iv = phi i64 [ %79, %for.body102.lr.ph ], [ %indvars.iv.next, %for.body102 ]
  %add.ptr107307 = phi double* [ %entries104.promoted, %for.body102.lr.ph ], [ %add.ptr107, %for.body102 ]
  %ii.4305 = phi i32 [ %shift, %for.body102.lr.ph ], [ %inc110, %for.body102 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %80 = trunc i64 %indvars.iv.next to i32
  %mul103 = shl nsw i32 %80, 1
  %idx.ext105 = sext i32 %mul103 to i64
  %idx.neg106 = sub i64 0, %idx.ext105
  %add.ptr107 = getelementptr inbounds double* %add.ptr107307, i64 %idx.neg106
  %inc110 = add nsw i32 %ii.4305, 1
  %exitcond = icmp eq i32 %inc110, 0
  br i1 %exitcond, label %if.end127.loopexit, label %for.body102

for.body118:                                      ; preds = %for.body118, %for.body118.lr.ph
  %indvars.iv338 = phi i64 [ %77, %for.body118.lr.ph ], [ %indvars.iv.next339, %for.body118 ]
  %add.ptr122312 = phi double* [ %entries120.promoted, %for.body118.lr.ph ], [ %add.ptr122, %for.body118 ]
  %ii.5310 = phi i32 [ 0, %for.body118.lr.ph ], [ %inc125, %for.body118 ]
  %81 = trunc i64 %indvars.iv338 to i32
  %mul119 = shl nsw i32 %81, 1
  %idx.ext121 = sext i32 %mul119 to i64
  %add.ptr122 = getelementptr inbounds double* %add.ptr122312, i64 %idx.ext121
  %indvars.iv.next339 = add i64 %indvars.iv338, -1
  %inc125 = add nsw i32 %ii.5310, 1
  %exitcond340 = icmp eq i32 %inc125, %shift
  br i1 %exitcond340, label %for.cond116.if.end127.loopexit308_crit_edge, label %for.body118

if.end127.loopexit:                               ; preds = %for.body102
  store double* %add.ptr107, double** %entries104, align 8, !tbaa !0
  br label %if.end127

for.cond116.if.end127.loopexit308_crit_edge:      ; preds = %for.body118
  store double* %add.ptr122, double** %entries120, align 8, !tbaa !0
  br label %if.end127

if.end127:                                        ; preds = %for.cond116.preheader, %for.cond116.if.end127.loopexit308_crit_edge, %if.end127.loopexit
  %sub129 = sub nsw i32 %74, %shift
  store i32 %sub129, i32* %nD96, align 4, !tbaa !3
  br label %return

if.then133:                                       ; preds = %if.then85
  %rowind134 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 6
  %82 = load i32** %rowind134, align 8, !tbaa !0
  %idx.ext135 = sext i32 %shift to i64
  %add.ptr136 = getelementptr inbounds i32* %82, i64 %idx.ext135
  store i32* %add.ptr136, i32** %rowind134, align 8, !tbaa !0
  %colind137 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 7
  %83 = load i32** %colind137, align 8, !tbaa !0
  %add.ptr139 = getelementptr inbounds i32* %83, i64 %idx.ext135
  store i32* %add.ptr139, i32** %colind137, align 8, !tbaa !0
  %cmp140 = icmp slt i32 %shift, 0
  %nD142 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1
  %84 = load i32* %nD142, align 4, !tbaa !3
  %nL144 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2
  %85 = load i32* %nL144, align 4, !tbaa !3
  %nU146 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3
  %86 = load i32* %nU146, align 4, !tbaa !3
  br i1 %cmp140, label %for.body151.lr.ph, label %if.else161

for.body151.lr.ph:                                ; preds = %if.then133
  %entries153 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 8
  %entries153.promoted = load double** %entries153, align 8, !tbaa !0
  %87 = add i32 %85, %86
  %88 = shl i32 %84, 1
  %89 = add i32 %87, %88
  %90 = add i32 %89, 1
  %91 = sext i32 %90 to i64
  br label %for.body151

for.body151:                                      ; preds = %for.body151, %for.body151.lr.ph
  %indvars.iv341 = phi i64 [ %91, %for.body151.lr.ph ], [ %indvars.iv.next342, %for.body151 ]
  %add.ptr156316 = phi double* [ %entries153.promoted, %for.body151.lr.ph ], [ %add.ptr156, %for.body151 ]
  %ii.6314 = phi i32 [ %shift, %for.body151.lr.ph ], [ %inc159, %for.body151 ]
  %92 = trunc i64 %indvars.iv341 to i32
  %mul152 = shl nsw i32 %92, 1
  %idx.ext154 = sext i32 %mul152 to i64
  %idx.neg155 = sub i64 0, %idx.ext154
  %add.ptr156 = getelementptr inbounds double* %add.ptr156316, i64 %idx.neg155
  %inc159 = add nsw i32 %ii.6314, 1
  %indvars.iv.next342 = add i64 %indvars.iv341, 2
  %exitcond344 = icmp eq i32 %inc159, 0
  br i1 %exitcond344, label %if.end180.loopexit, label %for.body151

if.else161:                                       ; preds = %if.then133
  %cmp170318 = icmp sgt i32 %shift, 0
  br i1 %cmp170318, label %for.body171.lr.ph, label %if.end180

for.body171.lr.ph:                                ; preds = %if.else161
  %entries173 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 8
  %entries173.promoted = load double** %entries173, align 8, !tbaa !0
  %93 = add i32 %85, %86
  %94 = shl i32 %84, 1
  %95 = add i32 %93, %94
  %96 = add i32 %95, -1
  %97 = sext i32 %96 to i64
  br label %for.body171

for.body171:                                      ; preds = %for.body171, %for.body171.lr.ph
  %indvars.iv345 = phi i64 [ %97, %for.body171.lr.ph ], [ %indvars.iv.next346, %for.body171 ]
  %add.ptr175321 = phi double* [ %entries173.promoted, %for.body171.lr.ph ], [ %add.ptr175, %for.body171 ]
  %ii.7319 = phi i32 [ 0, %for.body171.lr.ph ], [ %inc178, %for.body171 ]
  %98 = trunc i64 %indvars.iv345 to i32
  %mul172 = shl nsw i32 %98, 1
  %idx.ext174 = sext i32 %mul172 to i64
  %add.ptr175 = getelementptr inbounds double* %add.ptr175321, i64 %idx.ext174
  %inc178 = add nsw i32 %ii.7319, 1
  %indvars.iv.next346 = add i64 %indvars.iv345, -2
  %exitcond348 = icmp eq i32 %inc178, %shift
  br i1 %exitcond348, label %for.cond169.if.end180.loopexit317_crit_edge, label %for.body171

if.end180.loopexit:                               ; preds = %for.body151
  store double* %add.ptr156, double** %entries153, align 8, !tbaa !0
  br label %if.end180

for.cond169.if.end180.loopexit317_crit_edge:      ; preds = %for.body171
  store double* %add.ptr175, double** %entries173, align 8, !tbaa !0
  br label %if.end180

if.end180:                                        ; preds = %if.else161, %for.cond169.if.end180.loopexit317_crit_edge, %if.end180.loopexit
  %sub182 = sub nsw i32 %84, %shift
  store i32 %sub182, i32* %nD142, align 4, !tbaa !3
  br label %return

if.else183:                                       ; preds = %if.then85
  %99 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call185 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([145 x i8]* @.str2, i64 0, i64 0), %struct._Chv* %chv, i32 %shift, i32 %72) #4
  tail call void @exit(i32 -1) #5
  unreachable

return:                                           ; preds = %if.end3, %if.end74, %if.end27, %if.end127, %if.end180, %if.end
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define double @Chv_maxabs(%struct._Chv* %chv) #0 {
entry:
  %loc = alloca i32, align 4
  %cmp = icmp eq %struct._Chv* %chv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str3, i64 0, i64 0), %struct._Chv* null) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %1 = load i32* %type, align 4, !tbaa !3
  switch i32 %1, label %if.else12 [
    i32 1, label %if.then2
    i32 2, label %if.then8
  ]

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @Chv_nent(%struct._Chv* %chv) #4
  %call4 = call double* @Chv_entries(%struct._Chv* %chv) #4
  %call5 = call double @DVmaxabs(i32 %call3, double* %call4, i32* %loc) #4
  br label %if.end16

if.then8:                                         ; preds = %if.end
  %call9 = call i32 @Chv_nent(%struct._Chv* %chv) #4
  %call10 = call double* @Chv_entries(%struct._Chv* %chv) #4
  %call11 = call double @ZVmaxabs(i32 %call9, double* %call10) #4
  br label %if.end16

if.else12:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([86 x i8]* @.str4, i64 0, i64 0), %struct._Chv* %chv, i32 %1) #4
  call void @exit(i32 -1) #5
  unreachable

if.end16:                                         ; preds = %if.then8, %if.then2
  %maxabs.0 = phi double [ %call5, %if.then2 ], [ %call11, %if.then8 ]
  ret double %maxabs.0
}

; Function Attrs: optsize
declare double @DVmaxabs(i32, double*, i32*) #3

; Function Attrs: optsize
declare i32 @Chv_nent(%struct._Chv*) #3

; Function Attrs: optsize
declare double* @Chv_entries(%struct._Chv*) #3

; Function Attrs: optsize
declare double @ZVmaxabs(i32, double*) #3

; Function Attrs: nounwind optsize uwtable
define double @Chv_frobNorm(%struct._Chv* %chv) #0 {
entry:
  %cmp = icmp eq %struct._Chv* %chv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str5, i64 0, i64 0), %struct._Chv* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %1 = load i32* %type, align 4, !tbaa !3
  switch i32 %1, label %if.else31 [
    i32 1, label %if.then2
    i32 2, label %if.then8
  ]

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @Chv_nent(%struct._Chv* %chv) #4
  %call4 = tail call double* @Chv_entries(%struct._Chv* %chv) #4
  %cmp557 = icmp sgt i32 %call3, 0
  br i1 %cmp557, label %for.body, label %if.end35

for.body:                                         ; preds = %if.then2, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then2 ]
  %sum.059 = phi double [ %add, %for.body ], [ 0.000000e+00, %if.then2 ]
  %arrayidx = getelementptr inbounds double* %call4, i64 %indvars.iv
  %2 = load double* %arrayidx, align 8, !tbaa !4
  %mul = fmul double %2, %2
  %add = fadd double %sum.059, %mul
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %call3
  br i1 %exitcond, label %if.end35, label %for.body

if.then8:                                         ; preds = %if.end
  %call12 = tail call i32 @Chv_nent(%struct._Chv* %chv) #4
  %call13 = tail call double* @Chv_entries(%struct._Chv* %chv) #4
  %cmp1561 = icmp sgt i32 %call12, 0
  br i1 %cmp1561, label %for.body16, label %if.end35

for.body16:                                       ; preds = %if.then8, %for.body16
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %for.body16 ], [ 0, %if.then8 ]
  %sum.163 = phi double [ %add27, %for.body16 ], [ 0.000000e+00, %if.then8 ]
  %3 = trunc i64 %indvars.iv65 to i32
  %mul17 = shl nsw i32 %3, 1
  %idxprom18 = sext i32 %mul17 to i64
  %arrayidx19 = getelementptr inbounds double* %call13, i64 %idxprom18
  %4 = load double* %arrayidx19, align 8, !tbaa !4
  %add2156 = or i32 %mul17, 1
  %idxprom22 = sext i32 %add2156 to i64
  %arrayidx23 = getelementptr inbounds double* %call13, i64 %idxprom22
  %5 = load double* %arrayidx23, align 8, !tbaa !4
  %mul24 = fmul double %4, %4
  %mul25 = fmul double %5, %5
  %add26 = fadd double %mul24, %mul25
  %add27 = fadd double %sum.163, %add26
  %indvars.iv.next66 = add i64 %indvars.iv65, 1
  %lftr.wideiv67 = trunc i64 %indvars.iv.next66 to i32
  %exitcond68 = icmp eq i32 %lftr.wideiv67, %call12
  br i1 %exitcond68, label %if.end35, label %for.body16

if.else31:                                        ; preds = %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([88 x i8]* @.str6, i64 0, i64 0), %struct._Chv* %chv, i32 %1) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end35:                                         ; preds = %if.then8, %for.body16, %if.then2, %for.body
  %sum.2 = phi double [ 0.000000e+00, %if.then2 ], [ %add, %for.body ], [ 0.000000e+00, %if.then8 ], [ %add27, %for.body16 ]
  %call36 = tail call double @sqrt(double %sum.2) #4
  ret double %call36
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #1

; Function Attrs: nounwind optsize uwtable
define void @Chv_sub(%struct._Chv* %chvJ, %struct._Chv* %chvI) #0 {
entry:
  %nDI = alloca i32, align 4
  %nDJ = alloca i32, align 4
  %nLI = alloca i32, align 4
  %nLJ = alloca i32, align 4
  %nUI = alloca i32, align 4
  %nUJ = alloca i32, align 4
  %cmp = icmp eq %struct._Chv* %chvI, null
  %cmp1 = icmp eq %struct._Chv* %chvJ, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str7, i64 0, i64 0), %struct._Chv* %chvI, %struct._Chv* %chvJ) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  call void @Chv_dimensions(%struct._Chv* %chvJ, i32* %nDJ, i32* %nLJ, i32* %nUJ) #4
  call void @Chv_dimensions(%struct._Chv* %chvI, i32* %nDI, i32* %nLI, i32* %nUI) #4
  %1 = load i32* %nDJ, align 4, !tbaa !3
  %2 = load i32* %nDI, align 4, !tbaa !3
  %cmp2 = icmp eq i32 %1, %2
  br i1 %cmp2, label %lor.lhs.false3, label %if.then7

lor.lhs.false3:                                   ; preds = %if.end
  %3 = load i32* %nLJ, align 4, !tbaa !3
  %4 = load i32* %nLI, align 4, !tbaa !3
  %cmp4 = icmp eq i32 %3, %4
  br i1 %cmp4, label %lor.lhs.false5, label %if.then7

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %5 = load i32* %nUJ, align 4, !tbaa !3
  %6 = load i32* %nUI, align 4, !tbaa !3
  %cmp6 = icmp eq i32 %5, %6
  br i1 %cmp6, label %if.end9, label %if.then7

if.then7:                                         ; preds = %lor.lhs.false5, %lor.lhs.false3, %if.end
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([58 x i8]* @.str8, i64 0, i64 0), %struct._Chv* %chvJ, %struct._Chv* %chvI) #4
  call void @exit(i32 -1) #5
  unreachable

if.end9:                                          ; preds = %lor.lhs.false5
  %call10 = call double* @Chv_entries(%struct._Chv* %chvJ) #4
  %call11 = call double* @Chv_entries(%struct._Chv* %chvI) #4
  %cmp12 = icmp eq double* %call10, null
  %cmp14 = icmp eq double* %call11, null
  %or.cond98 = or i1 %cmp12, %cmp14
  br i1 %or.cond98, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end9
  %8 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([63 x i8]* @.str9, i64 0, i64 0), %struct._Chv* %chvJ, %struct._Chv* %chvI, double* %call10, double* %call11) #4
  call void @exit(i32 -1) #5
  unreachable

if.end17:                                         ; preds = %if.end9
  %type = getelementptr inbounds %struct._Chv* %chvJ, i64 0, i32 4
  %9 = load i32* %type, align 4, !tbaa !3
  switch i32 %9, label %if.else.if.else53_crit_edge [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true28
  ]

land.lhs.true:                                    ; preds = %if.end17
  %type19 = getelementptr inbounds %struct._Chv* %chvI, i64 0, i32 4
  %10 = load i32* %type19, align 4, !tbaa !3
  %cmp20 = icmp eq i32 %10, 1
  br i1 %cmp20, label %if.then21, label %if.else.if.else53_crit_edge

if.then21:                                        ; preds = %land.lhs.true
  %call22 = call i32 @Chv_nent(%struct._Chv* %chvJ) #4
  %cmp2399 = icmp sgt i32 %call22, 0
  br i1 %cmp2399, label %for.body, label %if.end58

for.body:                                         ; preds = %if.then21, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then21 ]
  %arrayidx = getelementptr inbounds double* %call11, i64 %indvars.iv
  %11 = load double* %arrayidx, align 8, !tbaa !4
  %arrayidx25 = getelementptr inbounds double* %call10, i64 %indvars.iv
  %12 = load double* %arrayidx25, align 8, !tbaa !4
  %sub = fsub double %12, %11
  store double %sub, double* %arrayidx25, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %call22
  br i1 %exitcond, label %if.end58, label %for.body

if.else.if.else53_crit_edge:                      ; preds = %if.end17, %land.lhs.true
  %type55.phi.trans.insert = getelementptr inbounds %struct._Chv* %chvI, i64 0, i32 4
  %.pre = load i32* %type55.phi.trans.insert, align 4, !tbaa !3
  br label %if.else53

land.lhs.true28:                                  ; preds = %if.end17
  %type29 = getelementptr inbounds %struct._Chv* %chvI, i64 0, i32 4
  %13 = load i32* %type29, align 4, !tbaa !3
  %cmp30 = icmp eq i32 %13, 2
  br i1 %cmp30, label %if.then31, label %if.else53

if.then31:                                        ; preds = %land.lhs.true28
  %call32 = call i32 @Chv_nent(%struct._Chv* %chvJ) #4
  %cmp34102 = icmp sgt i32 %call32, 0
  br i1 %cmp34102, label %for.body35, label %if.end58

for.body35:                                       ; preds = %if.then31, %for.body35
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %for.body35 ], [ 0, %if.then31 ]
  %14 = trunc i64 %indvars.iv104 to i32
  %mul = shl nsw i32 %14, 1
  %idxprom36 = sext i32 %mul to i64
  %arrayidx37 = getelementptr inbounds double* %call11, i64 %idxprom36
  %15 = load double* %arrayidx37, align 8, !tbaa !4
  %arrayidx40 = getelementptr inbounds double* %call10, i64 %idxprom36
  %16 = load double* %arrayidx40, align 8, !tbaa !4
  %sub41 = fsub double %16, %15
  store double %sub41, double* %arrayidx40, align 8, !tbaa !4
  %add97 = or i32 %mul, 1
  %idxprom43 = sext i32 %add97 to i64
  %arrayidx44 = getelementptr inbounds double* %call11, i64 %idxprom43
  %17 = load double* %arrayidx44, align 8, !tbaa !4
  %arrayidx48 = getelementptr inbounds double* %call10, i64 %idxprom43
  %18 = load double* %arrayidx48, align 8, !tbaa !4
  %sub49 = fsub double %18, %17
  store double %sub49, double* %arrayidx48, align 8, !tbaa !4
  %indvars.iv.next105 = add i64 %indvars.iv104, 1
  %lftr.wideiv106 = trunc i64 %indvars.iv.next105 to i32
  %exitcond107 = icmp eq i32 %lftr.wideiv106, %call32
  br i1 %exitcond107, label %if.end58, label %for.body35

if.else53:                                        ; preds = %if.else.if.else53_crit_edge, %land.lhs.true28
  %19 = phi i32 [ %.pre, %if.else.if.else53_crit_edge ], [ %13, %land.lhs.true28 ]
  %20 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([102 x i8]* @.str10, i64 0, i64 0), %struct._Chv* %chvJ, %struct._Chv* %chvI, i32 %9, i32 %19) #4
  call void @exit(i32 -1) #5
  unreachable

if.end58:                                         ; preds = %if.then31, %for.body35, %if.then21, %for.body
  ret void
}

; Function Attrs: optsize
declare void @Chv_dimensions(%struct._Chv*, i32*, i32*, i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @Chv_zero(%struct._Chv* %chv) #0 {
entry:
  %cmp = icmp eq %struct._Chv* %chv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([42 x i8]* @.str11, i64 0, i64 0), %struct._Chv* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %1 = load i32* %type, align 4, !tbaa !3
  switch i32 %1, label %if.else10 [
    i32 1, label %if.then2
    i32 2, label %if.then7
  ]

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @Chv_nent(%struct._Chv* %chv) #4
  %call4 = tail call double* @Chv_entries(%struct._Chv* %chv) #4
  tail call void @DVzero(i32 %call3, double* %call4) #4
  br label %if.end14

if.then7:                                         ; preds = %if.end
  %call8 = tail call i32 @Chv_nent(%struct._Chv* %chv) #4
  %call9 = tail call double* @Chv_entries(%struct._Chv* %chv) #4
  tail call void @ZVzero(i32 %call8, double* %call9) #4
  br label %if.end14

if.else10:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([83 x i8]* @.str12, i64 0, i64 0), %struct._Chv* %chv, i32 %1) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end14:                                         ; preds = %if.then7, %if.then2
  ret void
}

; Function Attrs: optsize
declare void @DVzero(i32, double*) #3

; Function Attrs: optsize
declare void @ZVzero(i32, double*) #3

; Function Attrs: nounwind optsize uwtable
define void @Chv_fill11block(%struct._Chv* %chv, %struct._A2* %mtx) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp eq %struct._A2* %mtx, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str13, i64 0, i64 0), %struct._Chv* %chv, %struct._A2* %mtx) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %1 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([77 x i8]* @.str14, i64 0, i64 0), %struct._Chv* %chv, %struct._A2* %mtx, i32 %1) #4
  call void @exit(i32 -1) #5
  unreachable

if.end9:                                          ; preds = %if.end
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #4
  %call10 = call double* @Chv_entries(%struct._Chv* %chv) #4
  %3 = load i32* %type, align 4, !tbaa !3
  switch i32 %3, label %if.end187 [
    i32 1, label %if.then13
    i32 2, label %if.then78
  ]

if.then13:                                        ; preds = %if.end9
  %4 = load i32* %nD, align 4, !tbaa !3
  call void @A2_init(%struct._A2* %mtx, i32 1, i32 %4, i32 %4, i32 1, i32 %4, double* null) #4
  call void @A2_zero(%struct._A2* %mtx) #4
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %5 = load i32* %symflag, align 4, !tbaa !3
  switch i32 %5, label %if.end187 [
    i32 0, label %if.then15
    i32 2, label %if.then31
  ]

if.then15:                                        ; preds = %if.then13
  %6 = load i32* %nD, align 4, !tbaa !3
  %cmp16312 = icmp sgt i32 %6, 0
  br i1 %cmp16312, label %for.body.lr.ph, label %if.end187

for.body.lr.ph:                                   ; preds = %if.then15
  %7 = load i32* %nU, align 4, !tbaa !3
  %add = add nsw i32 %7, %6
  %8 = sext i32 %add to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %indvars.iv = phi i64 [ %8, %for.body.lr.ph ], [ %indvars.iv.next, %for.end ]
  %ioff.0314 = phi i32 [ 0, %for.body.lr.ph ], [ %add25, %for.end ]
  %ii.0313 = phi i32 [ 0, %for.body.lr.ph ], [ %add17, %for.end ]
  %idxprom = sext i32 %ioff.0314 to i64
  %arrayidx = getelementptr inbounds double* %call10, i64 %idxprom
  %9 = load double* %arrayidx, align 8, !tbaa !4
  call void @A2_setRealEntry(%struct._A2* %mtx, i32 %ii.0313, i32 %ii.0313, double %9) #4
  %add17 = add nsw i32 %ii.0313, 1
  %10 = load i32* %nD, align 4, !tbaa !3
  %cmp20309 = icmp slt i32 %add17, %10
  br i1 %cmp20309, label %for.body21, label %for.end

for.body21:                                       ; preds = %for.body, %for.body21
  %iioff.0311.in = phi i32 [ %iioff.0311, %for.body21 ], [ %ioff.0314, %for.body ]
  %jj.0310 = phi i32 [ %inc, %for.body21 ], [ %add17, %for.body ]
  %iioff.0311 = add nsw i32 %iioff.0311.in, 1
  %idxprom22 = sext i32 %iioff.0311 to i64
  %arrayidx23 = getelementptr inbounds double* %call10, i64 %idxprom22
  %11 = load double* %arrayidx23, align 8, !tbaa !4
  call void @A2_setRealEntry(%struct._A2* %mtx, i32 %ii.0313, i32 %jj.0310, double %11) #4
  call void @A2_setRealEntry(%struct._A2* %mtx, i32 %jj.0310, i32 %ii.0313, double 0.000000e+00) #4
  %inc = add nsw i32 %jj.0310, 1
  %12 = load i32* %nD, align 4, !tbaa !3
  %cmp20 = icmp slt i32 %inc, %12
  br i1 %cmp20, label %for.body21, label %for.end

for.end:                                          ; preds = %for.body21, %for.body
  %13 = phi i32 [ %10, %for.body ], [ %12, %for.body21 ]
  %14 = trunc i64 %indvars.iv to i32
  %add25 = add nsw i32 %14, %ioff.0314
  %indvars.iv.next = add i64 %indvars.iv, -1
  %cmp16 = icmp slt i32 %add17, %13
  br i1 %cmp16, label %for.body, label %if.end187

if.then31:                                        ; preds = %if.then13
  %15 = load i32* %nD, align 4, !tbaa !3
  %16 = load i32* %nL, align 4, !tbaa !3
  %cmp42326 = icmp sgt i32 %15, 0
  br i1 %cmp42326, label %for.body43.lr.ph, label %if.end187

for.body43.lr.ph:                                 ; preds = %if.then31
  %17 = load i32* %nU, align 4, !tbaa !3
  %add37 = add i32 %15, -1
  %sub = add i32 %add37, %16
  %18 = add i32 %16, %17
  %19 = shl i32 %15, 1
  %20 = add i32 %18, %19
  %21 = sext i32 %20 to i64
  br label %for.body43

for.body43:                                       ; preds = %for.body43.lr.ph, %for.end67
  %indvars.iv360 = phi i64 [ %21, %for.body43.lr.ph ], [ %indvars.iv.next361, %for.end67 ]
  %ioff34.0328 = phi i32 [ %sub, %for.body43.lr.ph ], [ %add68, %for.end67 ]
  %ii32.0327 = phi i32 [ 0, %for.body43.lr.ph ], [ %add46, %for.end67 ]
  %indvars.iv.next361 = add i64 %indvars.iv360, -2
  %idxprom44 = sext i32 %ioff34.0328 to i64
  %arrayidx45 = getelementptr inbounds double* %call10, i64 %idxprom44
  %22 = load double* %arrayidx45, align 8, !tbaa !4
  call void @A2_setRealEntry(%struct._A2* %mtx, i32 %ii32.0327, i32 %ii32.0327, double %22) #4
  %add46 = add nsw i32 %ii32.0327, 1
  %23 = load i32* %nD, align 4, !tbaa !3
  %cmp49317 = icmp slt i32 %add46, %23
  br i1 %cmp49317, label %for.body50, label %for.cond59.loopexit

for.body50:                                       ; preds = %for.body43, %for.body50
  %iioff33.0319.in = phi i32 [ %iioff33.0319, %for.body50 ], [ %ioff34.0328, %for.body43 ]
  %jj36.0318 = phi i32 [ %inc54, %for.body50 ], [ %add46, %for.body43 ]
  %iioff33.0319 = add nsw i32 %iioff33.0319.in, 1
  %idxprom51 = sext i32 %iioff33.0319 to i64
  %arrayidx52 = getelementptr inbounds double* %call10, i64 %idxprom51
  %24 = load double* %arrayidx52, align 8, !tbaa !4
  call void @A2_setRealEntry(%struct._A2* %mtx, i32 %ii32.0327, i32 %jj36.0318, double %24) #4
  %inc54 = add nsw i32 %jj36.0318, 1
  %25 = load i32* %nD, align 4, !tbaa !3
  %cmp49 = icmp slt i32 %inc54, %25
  br i1 %cmp49, label %for.body50, label %for.cond59.loopexit

for.cond59.loopexit:                              ; preds = %for.body50, %for.body43
  %26 = phi i32 [ %23, %for.body43 ], [ %25, %for.body50 ]
  %cmp60321 = icmp slt i32 %add46, %26
  br i1 %cmp60321, label %for.body61, label %for.end67

for.body61:                                       ; preds = %for.cond59.loopexit, %for.body61
  %iioff33.1323.in = phi i32 [ %iioff33.1323, %for.body61 ], [ %ioff34.0328, %for.cond59.loopexit ]
  %jj36.1322 = phi i32 [ %inc65, %for.body61 ], [ %add46, %for.cond59.loopexit ]
  %iioff33.1323 = add nsw i32 %iioff33.1323.in, -1
  %idxprom62 = sext i32 %iioff33.1323 to i64
  %arrayidx63 = getelementptr inbounds double* %call10, i64 %idxprom62
  %27 = load double* %arrayidx63, align 8, !tbaa !4
  call void @A2_setRealEntry(%struct._A2* %mtx, i32 %jj36.1322, i32 %ii32.0327, double %27) #4
  %inc65 = add nsw i32 %jj36.1322, 1
  %28 = load i32* %nD, align 4, !tbaa !3
  %cmp60 = icmp slt i32 %inc65, %28
  br i1 %cmp60, label %for.body61, label %for.end67

for.end67:                                        ; preds = %for.body61, %for.cond59.loopexit
  %29 = phi i32 [ %26, %for.cond59.loopexit ], [ %28, %for.body61 ]
  %30 = trunc i64 %indvars.iv.next361 to i32
  %add68 = add nsw i32 %30, %ioff34.0328
  %cmp42 = icmp slt i32 %add46, %29
  br i1 %cmp42, label %for.body43, label %if.end187

if.then78:                                        ; preds = %if.end9
  %31 = load i32* %nD, align 4, !tbaa !3
  call void @A2_init(%struct._A2* %mtx, i32 2, i32 %31, i32 %31, i32 1, i32 %31, double* null) #4
  call void @A2_zero(%struct._A2* %mtx) #4
  %symflag79 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %32 = load i32* %symflag79, align 4, !tbaa !3
  switch i32 %32, label %if.end187 [
    i32 0, label %if.then84
    i32 1, label %if.then84
    i32 2, label %if.then125
  ]

if.then84:                                        ; preds = %if.then78, %if.then78
  %33 = load i32* %nD, align 4, !tbaa !3
  %cmp92335 = icmp sgt i32 %33, 0
  br i1 %cmp92335, label %for.body93.lr.ph, label %if.end187

for.body93.lr.ph:                                 ; preds = %if.then84
  %34 = load i32* %nU, align 4, !tbaa !3
  %add90 = add nsw i32 %34, %33
  %35 = sext i32 %add90 to i64
  br label %for.body93

for.body93:                                       ; preds = %for.body93.lr.ph, %for.end116
  %indvars.iv365 = phi i64 [ %35, %for.body93.lr.ph ], [ %indvars.iv.next366, %for.end116 ]
  %ioff87.0337 = phi i32 [ 0, %for.body93.lr.ph ], [ %add117, %for.end116 ]
  %ii85.0336 = phi i32 [ 0, %for.body93.lr.ph ], [ %add101, %for.end116 ]
  %mul94 = shl nsw i32 %ioff87.0337, 1
  %idxprom95 = sext i32 %mul94 to i64
  %arrayidx96 = getelementptr inbounds double* %call10, i64 %idxprom95
  %36 = load double* %arrayidx96, align 8, !tbaa !4
  %add98306 = or i32 %mul94, 1
  %idxprom99 = sext i32 %add98306 to i64
  %arrayidx100 = getelementptr inbounds double* %call10, i64 %idxprom99
  %37 = load double* %arrayidx100, align 8, !tbaa !4
  call void @A2_setComplexEntry(%struct._A2* %mtx, i32 %ii85.0336, i32 %ii85.0336, double %36, double %37) #4
  %add101 = add nsw i32 %ii85.0336, 1
  %38 = load i32* %nD, align 4, !tbaa !3
  %cmp104331 = icmp slt i32 %add101, %38
  br i1 %cmp104331, label %for.body105, label %for.end116

for.body105:                                      ; preds = %for.body93, %for.body105
  %iioff86.0333.in = phi i32 [ %iioff86.0333, %for.body105 ], [ %ioff87.0337, %for.body93 ]
  %jj89.0332 = phi i32 [ %inc114, %for.body105 ], [ %add101, %for.body93 ]
  %iioff86.0333 = add nsw i32 %iioff86.0333.in, 1
  %mul106 = shl nsw i32 %iioff86.0333, 1
  %idxprom107 = sext i32 %mul106 to i64
  %arrayidx108 = getelementptr inbounds double* %call10, i64 %idxprom107
  %39 = load double* %arrayidx108, align 8, !tbaa !4
  %add110307 = or i32 %mul106, 1
  %idxprom111 = sext i32 %add110307 to i64
  %arrayidx112 = getelementptr inbounds double* %call10, i64 %idxprom111
  %40 = load double* %arrayidx112, align 8, !tbaa !4
  call void @A2_setComplexEntry(%struct._A2* %mtx, i32 %ii85.0336, i32 %jj89.0332, double %39, double %40) #4
  call void @A2_setComplexEntry(%struct._A2* %mtx, i32 %jj89.0332, i32 %ii85.0336, double 0.000000e+00, double 0.000000e+00) #4
  %inc114 = add nsw i32 %jj89.0332, 1
  %41 = load i32* %nD, align 4, !tbaa !3
  %cmp104 = icmp slt i32 %inc114, %41
  br i1 %cmp104, label %for.body105, label %for.end116

for.end116:                                       ; preds = %for.body105, %for.body93
  %42 = phi i32 [ %38, %for.body93 ], [ %41, %for.body105 ]
  %43 = trunc i64 %indvars.iv365 to i32
  %add117 = add nsw i32 %43, %ioff87.0337
  %indvars.iv.next366 = add i64 %indvars.iv365, -1
  %cmp92 = icmp slt i32 %add101, %42
  br i1 %cmp92, label %for.body93, label %if.end187

if.then125:                                       ; preds = %if.then78
  %44 = load i32* %nD, align 4, !tbaa !3
  %45 = load i32* %nL, align 4, !tbaa !3
  %cmp138349 = icmp sgt i32 %44, 0
  br i1 %cmp138349, label %for.body139.lr.ph, label %if.end187

for.body139.lr.ph:                                ; preds = %if.then125
  %46 = load i32* %nU, align 4, !tbaa !3
  %add131 = add i32 %44, -1
  %sub132 = add i32 %add131, %45
  %47 = add i32 %45, %46
  %48 = shl i32 %44, 1
  %49 = add i32 %47, %48
  %50 = sext i32 %49 to i64
  br label %for.body139

for.body139:                                      ; preds = %for.body139.lr.ph, %for.end178
  %indvars.iv373 = phi i64 [ %50, %for.body139.lr.ph ], [ %indvars.iv.next374, %for.end178 ]
  %ioff128.0351 = phi i32 [ %sub132, %for.body139.lr.ph ], [ %add179, %for.end178 ]
  %ii126.0350 = phi i32 [ 0, %for.body139.lr.ph ], [ %add147, %for.end178 ]
  %indvars.iv.next374 = add i64 %indvars.iv373, -2
  %mul140 = shl nsw i32 %ioff128.0351, 1
  %idxprom141 = sext i32 %mul140 to i64
  %arrayidx142 = getelementptr inbounds double* %call10, i64 %idxprom141
  %51 = load double* %arrayidx142, align 8, !tbaa !4
  %add144303 = or i32 %mul140, 1
  %idxprom145 = sext i32 %add144303 to i64
  %arrayidx146 = getelementptr inbounds double* %call10, i64 %idxprom145
  %52 = load double* %arrayidx146, align 8, !tbaa !4
  call void @A2_setComplexEntry(%struct._A2* %mtx, i32 %ii126.0350, i32 %ii126.0350, double %51, double %52) #4
  %add147 = add nsw i32 %ii126.0350, 1
  %53 = load i32* %nD, align 4, !tbaa !3
  %cmp150340 = icmp slt i32 %add147, %53
  br i1 %cmp150340, label %for.body151, label %for.cond165.loopexit

for.body151:                                      ; preds = %for.body139, %for.body151
  %iioff127.0342.in = phi i32 [ %iioff127.0342, %for.body151 ], [ %ioff128.0351, %for.body139 ]
  %jj130.0341 = phi i32 [ %inc160, %for.body151 ], [ %add147, %for.body139 ]
  %iioff127.0342 = add nsw i32 %iioff127.0342.in, 1
  %mul152 = shl nsw i32 %iioff127.0342, 1
  %idxprom153 = sext i32 %mul152 to i64
  %arrayidx154 = getelementptr inbounds double* %call10, i64 %idxprom153
  %54 = load double* %arrayidx154, align 8, !tbaa !4
  %add156305 = or i32 %mul152, 1
  %idxprom157 = sext i32 %add156305 to i64
  %arrayidx158 = getelementptr inbounds double* %call10, i64 %idxprom157
  %55 = load double* %arrayidx158, align 8, !tbaa !4
  call void @A2_setComplexEntry(%struct._A2* %mtx, i32 %ii126.0350, i32 %jj130.0341, double %54, double %55) #4
  %inc160 = add nsw i32 %jj130.0341, 1
  %56 = load i32* %nD, align 4, !tbaa !3
  %cmp150 = icmp slt i32 %inc160, %56
  br i1 %cmp150, label %for.body151, label %for.cond165.loopexit

for.cond165.loopexit:                             ; preds = %for.body151, %for.body139
  %57 = phi i32 [ %53, %for.body139 ], [ %56, %for.body151 ]
  %cmp166344 = icmp slt i32 %add147, %57
  br i1 %cmp166344, label %for.body167, label %for.end178

for.body167:                                      ; preds = %for.cond165.loopexit, %for.body167
  %iioff127.1346.in = phi i32 [ %iioff127.1346, %for.body167 ], [ %ioff128.0351, %for.cond165.loopexit ]
  %jj130.1345 = phi i32 [ %inc176, %for.body167 ], [ %add147, %for.cond165.loopexit ]
  %iioff127.1346 = add nsw i32 %iioff127.1346.in, -1
  %mul168 = shl nsw i32 %iioff127.1346, 1
  %idxprom169 = sext i32 %mul168 to i64
  %arrayidx170 = getelementptr inbounds double* %call10, i64 %idxprom169
  %58 = load double* %arrayidx170, align 8, !tbaa !4
  %add172304 = or i32 %mul168, 1
  %idxprom173 = sext i32 %add172304 to i64
  %arrayidx174 = getelementptr inbounds double* %call10, i64 %idxprom173
  %59 = load double* %arrayidx174, align 8, !tbaa !4
  call void @A2_setComplexEntry(%struct._A2* %mtx, i32 %jj130.1345, i32 %ii126.0350, double %58, double %59) #4
  %inc176 = add nsw i32 %jj130.1345, 1
  %60 = load i32* %nD, align 4, !tbaa !3
  %cmp166 = icmp slt i32 %inc176, %60
  br i1 %cmp166, label %for.body167, label %for.end178

for.end178:                                       ; preds = %for.body167, %for.cond165.loopexit
  %61 = phi i32 [ %57, %for.cond165.loopexit ], [ %60, %for.body167 ]
  %62 = trunc i64 %indvars.iv.next374 to i32
  %add179 = add nsw i32 %62, %ioff128.0351
  %cmp138 = icmp slt i32 %add147, %61
  br i1 %cmp138, label %for.body139, label %if.end187

if.end187:                                        ; preds = %if.then125, %for.end178, %if.then84, %for.end116, %if.then31, %for.end67, %if.then15, %for.end, %if.then78, %if.end9, %if.then13
  ret void
}

; Function Attrs: optsize
declare void @A2_init(%struct._A2*, i32, i32, i32, i32, i32, double*) #3

; Function Attrs: optsize
declare void @A2_zero(%struct._A2*) #3

; Function Attrs: optsize
declare void @A2_setRealEntry(%struct._A2*, i32, i32, double) #3

; Function Attrs: optsize
declare void @A2_setComplexEntry(%struct._A2*, i32, i32, double, double) #3

; Function Attrs: nounwind optsize uwtable
define void @Chv_fill12block(%struct._Chv* %chv, %struct._A2* %mtx) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp eq %struct._A2* %mtx, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str15, i64 0, i64 0), %struct._Chv* %chv, %struct._A2* %mtx) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %1 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([77 x i8]* @.str16, i64 0, i64 0), %struct._Chv* %chv, %struct._A2* %mtx, i32 %1) #4
  call void @exit(i32 -1) #5
  unreachable

if.end9:                                          ; preds = %if.end
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #4
  %call10 = call double* @Chv_entries(%struct._Chv* %chv) #4
  %3 = load i32* %type, align 4, !tbaa !3
  switch i32 %3, label %if.end142 [
    i32 1, label %if.then13
    i32 2, label %if.then63
  ]

if.then13:                                        ; preds = %if.end9
  %4 = load i32* %nD, align 4, !tbaa !3
  %5 = load i32* %nU, align 4, !tbaa !3
  call void @A2_init(%struct._A2* %mtx, i32 1, i32 %4, i32 %5, i32 1, i32 %4, double* null) #4
  call void @A2_zero(%struct._A2* %mtx) #4
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %6 = load i32* %symflag, align 4, !tbaa !3
  switch i32 %6, label %if.end142 [
    i32 0, label %if.then15
    i32 2, label %if.then28
  ]

if.then15:                                        ; preds = %if.then13
  %7 = load i32* %nD, align 4, !tbaa !3
  %cmp16211 = icmp sgt i32 %7, 0
  br i1 %cmp16211, label %for.body.lr.ph, label %if.end142

for.body.lr.ph:                                   ; preds = %if.then15
  %8 = load i32* %nU, align 4, !tbaa !3
  %add = add nsw i32 %8, %7
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %9 = phi i32 [ %8, %for.body.lr.ph ], [ %16, %for.end ]
  %indvars.iv241 = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next242, %for.end ]
  %indvars.iv.in = phi i32 [ %add, %for.body.lr.ph ], [ %indvars.iv, %for.end ]
  %10 = phi i32 [ %7, %for.body.lr.ph ], [ %15, %for.end ]
  %ii.0212 = phi i32 [ 0, %for.body.lr.ph ], [ %inc24, %for.end ]
  %indvars.iv = add i32 %indvars.iv.in, -1
  %cmp19208 = icmp sgt i32 %9, 0
  br i1 %cmp19208, label %for.body20.lr.ph, label %for.end

for.body20.lr.ph:                                 ; preds = %for.body
  %11 = add i32 %10, %indvars.iv241
  %12 = sext i32 %11 to i64
  br label %for.body20

for.body20:                                       ; preds = %for.body20.lr.ph, %for.body20
  %indvars.iv243 = phi i64 [ %12, %for.body20.lr.ph ], [ %indvars.iv.next244, %for.body20 ]
  %jj.0210 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc, %for.body20 ]
  %arrayidx = getelementptr inbounds double* %call10, i64 %indvars.iv243
  %13 = load double* %arrayidx, align 8, !tbaa !4
  call void @A2_setRealEntry(%struct._A2* %mtx, i32 %ii.0212, i32 %jj.0210, double %13) #4
  %inc = add nsw i32 %jj.0210, 1
  %14 = load i32* %nU, align 4, !tbaa !3
  %cmp19 = icmp slt i32 %inc, %14
  %indvars.iv.next244 = add i64 %indvars.iv243, 1
  br i1 %cmp19, label %for.body20, label %for.cond18.for.end_crit_edge

for.cond18.for.end_crit_edge:                     ; preds = %for.body20
  %.pre = load i32* %nD, align 4, !tbaa !3
  br label %for.end

for.end:                                          ; preds = %for.cond18.for.end_crit_edge, %for.body
  %15 = phi i32 [ %.pre, %for.cond18.for.end_crit_edge ], [ %10, %for.body ]
  %16 = phi i32 [ %14, %for.cond18.for.end_crit_edge ], [ %9, %for.body ]
  %inc24 = add nsw i32 %ii.0212, 1
  %cmp16 = icmp slt i32 %inc24, %15
  %indvars.iv.next242 = add i32 %indvars.iv241, %indvars.iv
  br i1 %cmp16, label %for.body, label %if.end142

if.then28:                                        ; preds = %if.then13
  %17 = load i32* %nD, align 4, !tbaa !3
  %18 = load i32* %nL, align 4, !tbaa !3
  %cmp40220 = icmp sgt i32 %17, 0
  br i1 %cmp40220, label %for.body41.lr.ph, label %if.end142

for.body41.lr.ph:                                 ; preds = %if.then28
  %19 = load i32* %nU, align 4, !tbaa !3
  %20 = add i32 %17, %18
  %21 = add i32 %20, -1
  %22 = add i32 %18, %19
  %23 = shl i32 %17, 1
  %24 = add i32 %22, %23
  %25 = add i32 %24, -3
  br label %for.body41

for.body41:                                       ; preds = %for.body41.lr.ph, %for.end52
  %26 = phi i32 [ %19, %for.body41.lr.ph ], [ %33, %for.end52 ]
  %indvars.iv248 = phi i32 [ %21, %for.body41.lr.ph ], [ %indvars.iv.next249, %for.end52 ]
  %indvars.iv246 = phi i32 [ %25, %for.body41.lr.ph ], [ %indvars.iv.next247, %for.end52 ]
  %27 = phi i32 [ %17, %for.body41.lr.ph ], [ %32, %for.end52 ]
  %ii29.0221 = phi i32 [ 0, %for.body41.lr.ph ], [ %inc56, %for.end52 ]
  %cmp45215 = icmp sgt i32 %26, 0
  br i1 %cmp45215, label %for.body46.lr.ph, label %for.end52

for.body46.lr.ph:                                 ; preds = %for.body41
  %28 = add i32 %27, %indvars.iv248
  %29 = sext i32 %28 to i64
  br label %for.body46

for.body46:                                       ; preds = %for.body46.lr.ph, %for.body46
  %indvars.iv250 = phi i64 [ %29, %for.body46.lr.ph ], [ %indvars.iv.next251, %for.body46 ]
  %jj33.0217 = phi i32 [ 0, %for.body46.lr.ph ], [ %inc50, %for.body46 ]
  %arrayidx48 = getelementptr inbounds double* %call10, i64 %indvars.iv250
  %30 = load double* %arrayidx48, align 8, !tbaa !4
  call void @A2_setRealEntry(%struct._A2* %mtx, i32 %ii29.0221, i32 %jj33.0217, double %30) #4
  %inc50 = add nsw i32 %jj33.0217, 1
  %31 = load i32* %nU, align 4, !tbaa !3
  %cmp45 = icmp slt i32 %inc50, %31
  %indvars.iv.next251 = add i64 %indvars.iv250, 1
  br i1 %cmp45, label %for.body46, label %for.cond44.for.end52_crit_edge

for.cond44.for.end52_crit_edge:                   ; preds = %for.body46
  %.pre267 = load i32* %nD, align 4, !tbaa !3
  br label %for.end52

for.end52:                                        ; preds = %for.cond44.for.end52_crit_edge, %for.body41
  %32 = phi i32 [ %.pre267, %for.cond44.for.end52_crit_edge ], [ %27, %for.body41 ]
  %33 = phi i32 [ %31, %for.cond44.for.end52_crit_edge ], [ %26, %for.body41 ]
  %inc56 = add nsw i32 %ii29.0221, 1
  %cmp40 = icmp slt i32 %inc56, %32
  %indvars.iv.next247 = add i32 %indvars.iv246, -2
  %indvars.iv.next249 = add i32 %indvars.iv248, %indvars.iv246
  br i1 %cmp40, label %for.body41, label %if.end142

if.then63:                                        ; preds = %if.end9
  %34 = load i32* %nD, align 4, !tbaa !3
  %35 = load i32* %nU, align 4, !tbaa !3
  call void @A2_init(%struct._A2* %mtx, i32 2, i32 %34, i32 %35, i32 1, i32 %34, double* null) #4
  call void @A2_zero(%struct._A2* %mtx) #4
  %symflag64 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %36 = load i32* %symflag64, align 4, !tbaa !3
  switch i32 %36, label %if.end142 [
    i32 0, label %if.then69
    i32 1, label %if.then69
    i32 2, label %if.then103
  ]

if.then69:                                        ; preds = %if.then63, %if.then63
  %37 = load i32* %nD, align 4, !tbaa !3
  %cmp77228 = icmp sgt i32 %37, 0
  br i1 %cmp77228, label %for.body78.lr.ph, label %if.end142

for.body78.lr.ph:                                 ; preds = %if.then69
  %38 = load i32* %nU, align 4, !tbaa !3
  %add75 = add nsw i32 %38, %37
  br label %for.body78

for.body78:                                       ; preds = %for.body78.lr.ph, %for.end94
  %39 = phi i32 [ %38, %for.body78.lr.ph ], [ %48, %for.end94 ]
  %indvars.iv255 = phi i32 [ 0, %for.body78.lr.ph ], [ %indvars.iv.next256, %for.end94 ]
  %indvars.iv253.in = phi i32 [ %add75, %for.body78.lr.ph ], [ %indvars.iv253, %for.end94 ]
  %40 = phi i32 [ %37, %for.body78.lr.ph ], [ %47, %for.end94 ]
  %ii70.0229 = phi i32 [ 0, %for.body78.lr.ph ], [ %inc98, %for.end94 ]
  %indvars.iv253 = add i32 %indvars.iv253.in, -1
  %cmp82224 = icmp sgt i32 %39, 0
  br i1 %cmp82224, label %for.body83.lr.ph, label %for.end94

for.body83.lr.ph:                                 ; preds = %for.body78
  %41 = add i32 %40, %indvars.iv255
  %42 = sext i32 %41 to i64
  br label %for.body83

for.body83:                                       ; preds = %for.body83.lr.ph, %for.body83
  %indvars.iv257 = phi i64 [ %42, %for.body83.lr.ph ], [ %indvars.iv.next258, %for.body83 ]
  %jj74.0226 = phi i32 [ 0, %for.body83.lr.ph ], [ %inc92, %for.body83 ]
  %43 = trunc i64 %indvars.iv257 to i32
  %mul84 = shl nsw i32 %43, 1
  %idxprom85 = sext i32 %mul84 to i64
  %arrayidx86 = getelementptr inbounds double* %call10, i64 %idxprom85
  %44 = load double* %arrayidx86, align 8, !tbaa !4
  %add88207 = or i32 %mul84, 1
  %idxprom89 = sext i32 %add88207 to i64
  %arrayidx90 = getelementptr inbounds double* %call10, i64 %idxprom89
  %45 = load double* %arrayidx90, align 8, !tbaa !4
  call void @A2_setComplexEntry(%struct._A2* %mtx, i32 %ii70.0229, i32 %jj74.0226, double %44, double %45) #4
  %inc92 = add nsw i32 %jj74.0226, 1
  %46 = load i32* %nU, align 4, !tbaa !3
  %cmp82 = icmp slt i32 %inc92, %46
  %indvars.iv.next258 = add i64 %indvars.iv257, 1
  br i1 %cmp82, label %for.body83, label %for.cond81.for.end94_crit_edge

for.cond81.for.end94_crit_edge:                   ; preds = %for.body83
  %.pre268 = load i32* %nD, align 4, !tbaa !3
  br label %for.end94

for.end94:                                        ; preds = %for.cond81.for.end94_crit_edge, %for.body78
  %47 = phi i32 [ %.pre268, %for.cond81.for.end94_crit_edge ], [ %40, %for.body78 ]
  %48 = phi i32 [ %46, %for.cond81.for.end94_crit_edge ], [ %39, %for.body78 ]
  %inc98 = add nsw i32 %ii70.0229, 1
  %cmp77 = icmp slt i32 %inc98, %47
  %indvars.iv.next256 = add i32 %indvars.iv255, %indvars.iv253
  br i1 %cmp77, label %for.body78, label %if.end142

if.then103:                                       ; preds = %if.then63
  %49 = load i32* %nD, align 4, !tbaa !3
  %50 = load i32* %nL, align 4, !tbaa !3
  %cmp116237 = icmp sgt i32 %49, 0
  br i1 %cmp116237, label %for.body117.lr.ph, label %if.end142

for.body117.lr.ph:                                ; preds = %if.then103
  %51 = load i32* %nU, align 4, !tbaa !3
  %52 = add i32 %49, %50
  %53 = add i32 %52, -1
  %54 = add i32 %50, %51
  %55 = shl i32 %49, 1
  %56 = add i32 %54, %55
  %57 = add i32 %56, -3
  br label %for.body117

for.body117:                                      ; preds = %for.body117.lr.ph, %for.end133
  %58 = phi i32 [ %51, %for.body117.lr.ph ], [ %67, %for.end133 ]
  %indvars.iv262 = phi i32 [ %53, %for.body117.lr.ph ], [ %indvars.iv.next263, %for.end133 ]
  %indvars.iv260 = phi i32 [ %57, %for.body117.lr.ph ], [ %indvars.iv.next261, %for.end133 ]
  %59 = phi i32 [ %49, %for.body117.lr.ph ], [ %66, %for.end133 ]
  %ii104.0238 = phi i32 [ 0, %for.body117.lr.ph ], [ %inc137, %for.end133 ]
  %cmp121232 = icmp sgt i32 %58, 0
  br i1 %cmp121232, label %for.body122.lr.ph, label %for.end133

for.body122.lr.ph:                                ; preds = %for.body117
  %60 = add i32 %59, %indvars.iv262
  %61 = sext i32 %60 to i64
  br label %for.body122

for.body122:                                      ; preds = %for.body122.lr.ph, %for.body122
  %indvars.iv264 = phi i64 [ %61, %for.body122.lr.ph ], [ %indvars.iv.next265, %for.body122 ]
  %jj108.0234 = phi i32 [ 0, %for.body122.lr.ph ], [ %inc131, %for.body122 ]
  %62 = trunc i64 %indvars.iv264 to i32
  %mul123 = shl nsw i32 %62, 1
  %idxprom124 = sext i32 %mul123 to i64
  %arrayidx125 = getelementptr inbounds double* %call10, i64 %idxprom124
  %63 = load double* %arrayidx125, align 8, !tbaa !4
  %add127206 = or i32 %mul123, 1
  %idxprom128 = sext i32 %add127206 to i64
  %arrayidx129 = getelementptr inbounds double* %call10, i64 %idxprom128
  %64 = load double* %arrayidx129, align 8, !tbaa !4
  call void @A2_setComplexEntry(%struct._A2* %mtx, i32 %ii104.0238, i32 %jj108.0234, double %63, double %64) #4
  %inc131 = add nsw i32 %jj108.0234, 1
  %65 = load i32* %nU, align 4, !tbaa !3
  %cmp121 = icmp slt i32 %inc131, %65
  %indvars.iv.next265 = add i64 %indvars.iv264, 1
  br i1 %cmp121, label %for.body122, label %for.cond120.for.end133_crit_edge

for.cond120.for.end133_crit_edge:                 ; preds = %for.body122
  %.pre269 = load i32* %nD, align 4, !tbaa !3
  br label %for.end133

for.end133:                                       ; preds = %for.cond120.for.end133_crit_edge, %for.body117
  %66 = phi i32 [ %.pre269, %for.cond120.for.end133_crit_edge ], [ %59, %for.body117 ]
  %67 = phi i32 [ %65, %for.cond120.for.end133_crit_edge ], [ %58, %for.body117 ]
  %inc137 = add nsw i32 %ii104.0238, 1
  %cmp116 = icmp slt i32 %inc137, %66
  %indvars.iv.next261 = add i32 %indvars.iv260, -2
  %indvars.iv.next263 = add i32 %indvars.iv262, %indvars.iv260
  br i1 %cmp116, label %for.body117, label %if.end142

if.end142:                                        ; preds = %if.then103, %for.end133, %if.then69, %for.end94, %if.then28, %for.end52, %if.then15, %for.end, %if.then63, %if.end9, %if.then13
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Chv_fill21block(%struct._Chv* %chv, %struct._A2* %mtx) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp eq %struct._A2* %mtx, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str17, i64 0, i64 0), %struct._Chv* %chv, %struct._A2* %mtx) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %1 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([77 x i8]* @.str18, i64 0, i64 0), %struct._Chv* %chv, %struct._A2* %mtx, i32 %1) #4
  call void @exit(i32 -1) #5
  unreachable

if.end9:                                          ; preds = %if.end
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #4
  %call10 = call double* @Chv_entries(%struct._Chv* %chv) #4
  %3 = load i32* %type, align 4, !tbaa !3
  switch i32 %3, label %if.end67 [
    i32 1, label %if.then13
    i32 2, label %if.then30
  ]

if.then13:                                        ; preds = %if.end9
  %4 = load i32* %nL, align 4, !tbaa !3
  %5 = load i32* %nD, align 4, !tbaa !3
  call void @A2_init(%struct._A2* %mtx, i32 1, i32 %4, i32 %5, i32 %5, i32 1, double* null) #4
  call void @A2_zero(%struct._A2* %mtx) #4
  %6 = load i32* %nD, align 4, !tbaa !3
  %7 = load i32* %nL, align 4, !tbaa !3
  %cmp17110 = icmp sgt i32 %6, 0
  br i1 %cmp17110, label %for.body.lr.ph, label %if.end67

for.body.lr.ph:                                   ; preds = %if.then13
  %8 = load i32* %nU, align 4, !tbaa !3
  %9 = add i32 %6, %7
  %10 = add i32 %9, -1
  %11 = add i32 %7, %8
  %12 = shl i32 %6, 1
  %13 = add i32 %11, %12
  %14 = add i32 %13, -1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %15 = phi i32 [ %7, %for.body.lr.ph ], [ %22, %for.end ]
  %indvars.iv123 = phi i32 [ %10, %for.body.lr.ph ], [ %indvars.iv.next124, %for.end ]
  %indvars.iv = phi i32 [ %14, %for.body.lr.ph ], [ %indvars.iv.next, %for.end ]
  %16 = phi i32 [ %6, %for.body.lr.ph ], [ %21, %for.end ]
  %ii.0111 = phi i32 [ 0, %for.body.lr.ph ], [ %inc26, %for.end ]
  %cmp21106 = icmp sgt i32 %15, 0
  br i1 %cmp21106, label %for.body22.lr.ph, label %for.end

for.body22.lr.ph:                                 ; preds = %for.body
  %17 = sub i32 %indvars.iv123, %16
  %18 = sext i32 %17 to i64
  br label %for.body22

for.body22:                                       ; preds = %for.body22.lr.ph, %for.body22
  %indvars.iv125 = phi i64 [ %18, %for.body22.lr.ph ], [ %indvars.iv.next126, %for.body22 ]
  %jj.0108 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc, %for.body22 ]
  %arrayidx = getelementptr inbounds double* %call10, i64 %indvars.iv125
  %19 = load double* %arrayidx, align 8, !tbaa !4
  call void @A2_setRealEntry(%struct._A2* %mtx, i32 %jj.0108, i32 %ii.0111, double %19) #4
  %inc = add nsw i32 %jj.0108, 1
  %20 = load i32* %nL, align 4, !tbaa !3
  %cmp21 = icmp slt i32 %inc, %20
  %indvars.iv.next126 = add i64 %indvars.iv125, -1
  br i1 %cmp21, label %for.body22, label %for.cond20.for.end_crit_edge

for.cond20.for.end_crit_edge:                     ; preds = %for.body22
  %.pre = load i32* %nD, align 4, !tbaa !3
  br label %for.end

for.end:                                          ; preds = %for.cond20.for.end_crit_edge, %for.body
  %21 = phi i32 [ %.pre, %for.cond20.for.end_crit_edge ], [ %16, %for.body ]
  %22 = phi i32 [ %20, %for.cond20.for.end_crit_edge ], [ %15, %for.body ]
  %inc26 = add nsw i32 %ii.0111, 1
  %cmp17 = icmp slt i32 %inc26, %21
  %indvars.iv.next = add i32 %indvars.iv, -2
  %indvars.iv.next124 = add i32 %indvars.iv123, %indvars.iv
  br i1 %cmp17, label %for.body, label %if.end67

if.then30:                                        ; preds = %if.end9
  %23 = load i32* %nL, align 4, !tbaa !3
  %24 = load i32* %nD, align 4, !tbaa !3
  call void @A2_init(%struct._A2* %mtx, i32 2, i32 %23, i32 %24, i32 %24, i32 1, double* null) #4
  call void @A2_zero(%struct._A2* %mtx) #4
  %25 = load i32* %nD, align 4, !tbaa !3
  %26 = load i32* %nL, align 4, !tbaa !3
  %cmp43119 = icmp sgt i32 %25, 0
  br i1 %cmp43119, label %for.body44.lr.ph, label %if.end67

for.body44.lr.ph:                                 ; preds = %if.then30
  %27 = load i32* %nU, align 4, !tbaa !3
  %28 = add i32 %25, %26
  %29 = add i32 %28, -1
  %30 = add i32 %26, %27
  %31 = shl i32 %25, 1
  %32 = add i32 %30, %31
  %33 = add i32 %32, -1
  br label %for.body44

for.body44:                                       ; preds = %for.body44.lr.ph, %for.end60
  %34 = phi i32 [ %26, %for.body44.lr.ph ], [ %43, %for.end60 ]
  %indvars.iv130 = phi i32 [ %29, %for.body44.lr.ph ], [ %indvars.iv.next131, %for.end60 ]
  %indvars.iv128 = phi i32 [ %33, %for.body44.lr.ph ], [ %indvars.iv.next129, %for.end60 ]
  %35 = phi i32 [ %25, %for.body44.lr.ph ], [ %42, %for.end60 ]
  %ii31.0120 = phi i32 [ 0, %for.body44.lr.ph ], [ %inc64, %for.end60 ]
  %cmp48114 = icmp sgt i32 %34, 0
  br i1 %cmp48114, label %for.body49.lr.ph, label %for.end60

for.body49.lr.ph:                                 ; preds = %for.body44
  %36 = sub i32 %indvars.iv130, %35
  %37 = sext i32 %36 to i64
  br label %for.body49

for.body49:                                       ; preds = %for.body49.lr.ph, %for.body49
  %indvars.iv132 = phi i64 [ %37, %for.body49.lr.ph ], [ %indvars.iv.next133, %for.body49 ]
  %jj35.0116 = phi i32 [ 0, %for.body49.lr.ph ], [ %inc58, %for.body49 ]
  %38 = trunc i64 %indvars.iv132 to i32
  %mul50 = shl nsw i32 %38, 1
  %idxprom51 = sext i32 %mul50 to i64
  %arrayidx52 = getelementptr inbounds double* %call10, i64 %idxprom51
  %39 = load double* %arrayidx52, align 8, !tbaa !4
  %add54104 = or i32 %mul50, 1
  %idxprom55 = sext i32 %add54104 to i64
  %arrayidx56 = getelementptr inbounds double* %call10, i64 %idxprom55
  %40 = load double* %arrayidx56, align 8, !tbaa !4
  call void @A2_setComplexEntry(%struct._A2* %mtx, i32 %jj35.0116, i32 %ii31.0120, double %39, double %40) #4
  %inc58 = add nsw i32 %jj35.0116, 1
  %41 = load i32* %nL, align 4, !tbaa !3
  %cmp48 = icmp slt i32 %inc58, %41
  %indvars.iv.next133 = add i64 %indvars.iv132, -1
  br i1 %cmp48, label %for.body49, label %for.cond47.for.end60_crit_edge

for.cond47.for.end60_crit_edge:                   ; preds = %for.body49
  %.pre135 = load i32* %nD, align 4, !tbaa !3
  br label %for.end60

for.end60:                                        ; preds = %for.cond47.for.end60_crit_edge, %for.body44
  %42 = phi i32 [ %.pre135, %for.cond47.for.end60_crit_edge ], [ %35, %for.body44 ]
  %43 = phi i32 [ %41, %for.cond47.for.end60_crit_edge ], [ %34, %for.body44 ]
  %inc64 = add nsw i32 %ii31.0120, 1
  %cmp43 = icmp slt i32 %inc64, %42
  %indvars.iv.next129 = add i32 %indvars.iv128, -2
  %indvars.iv.next131 = add i32 %indvars.iv130, %indvars.iv128
  br i1 %cmp43, label %for.body44, label %if.end67

if.end67:                                         ; preds = %if.then30, %for.end60, %if.then13, %for.end, %if.end9
  ret void
}

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

; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Expression.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.anon = type { i8*, i32, i32, i32 }
%struct.uExpressionInternals = type { i32, %struct.uExpressionToken*, i32, i8** }
%struct.uExpressionToken = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.PToken = type { %struct.PToken*, %struct.PToken*, i8* }
%struct.uExpressionValue = type { i32, %union.anon.0 }
%union.anon.0 = type { double }

@.str = private unnamed_addr constant [85 x i8] c"$Header: /cactus/Cactus/src/util/Expression.c,v 1.7 2001/12/03 16:28:46 tradke Exp $\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str1 = private unnamed_addr constant [43 x i8] c"Unable to allocate memory for new token !\0A\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@operators = internal unnamed_addr constant [29 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), i32 2, i32 1, i32 1 }, %struct.anon { i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), i32 2, i32 1, i32 2 }, %struct.anon { i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0), i32 2, i32 1, i32 3 }, %struct.anon { i8* getelementptr inbounds ([3 x i8]* @.str7, i32 0, i32 0), i32 2, i32 1, i32 4 }, %struct.anon { i8* getelementptr inbounds ([3 x i8]* @.str8, i32 0, i32 0), i32 2, i32 1, i32 5 }, %struct.anon { i8* getelementptr inbounds ([3 x i8]* @.str9, i32 0, i32 0), i32 2, i32 2, i32 6 }, %struct.anon { i8* getelementptr inbounds ([3 x i8]* @.str10, i32 0, i32 0), i32 2, i32 2, i32 7 }, %struct.anon { i8* getelementptr inbounds ([2 x i8]* @.str11, i32 0, i32 0), i32 2, i32 3, i32 8 }, %struct.anon { i8* getelementptr inbounds ([2 x i8]* @.str12, i32 0, i32 0), i32 2, i32 3, i32 9 }, %struct.anon { i8* getelementptr inbounds ([2 x i8]* @.str13, i32 0, i32 0), i32 2, i32 4, i32 10 }, %struct.anon { i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0), i32 2, i32 4, i32 11 }, %struct.anon { i8* getelementptr inbounds ([2 x i8]* @.str15, i32 0, i32 0), i32 2, i32 5, i32 12 }, %struct.anon { i8* getelementptr inbounds ([5 x i8]* @.str16, i32 0, i32 0), i32 1, i32 6, i32 13 }, %struct.anon { i8* getelementptr inbounds ([5 x i8]* @.str17, i32 0, i32 0), i32 1, i32 6, i32 14 }, %struct.anon { i8* getelementptr inbounds ([5 x i8]* @.str18, i32 0, i32 0), i32 1, i32 6, i32 15 }, %struct.anon { i8* getelementptr inbounds ([5 x i8]* @.str19, i32 0, i32 0), i32 1, i32 6, i32 16 }, %struct.anon { i8* getelementptr inbounds ([4 x i8]* @.str20, i32 0, i32 0), i32 1, i32 6, i32 17 }, %struct.anon { i8* getelementptr inbounds ([5 x i8]* @.str21, i32 0, i32 0), i32 1, i32 6, i32 18 }, %struct.anon { i8* getelementptr inbounds ([4 x i8]* @.str22, i32 0, i32 0), i32 1, i32 6, i32 19 }, %struct.anon { i8* getelementptr inbounds ([5 x i8]* @.str23, i32 0, i32 0), i32 1, i32 6, i32 20 }, %struct.anon { i8* getelementptr inbounds ([6 x i8]* @.str24, i32 0, i32 0), i32 1, i32 6, i32 21 }, %struct.anon { i8* getelementptr inbounds ([4 x i8]* @.str25, i32 0, i32 0), i32 1, i32 6, i32 22 }, %struct.anon { i8* getelementptr inbounds ([6 x i8]* @.str26, i32 0, i32 0), i32 1, i32 6, i32 23 }, %struct.anon { i8* getelementptr inbounds ([4 x i8]* @.str27, i32 0, i32 0), i32 1, i32 6, i32 24 }, %struct.anon { i8* getelementptr inbounds ([5 x i8]* @.str28, i32 0, i32 0), i32 1, i32 6, i32 25 }, %struct.anon { i8* getelementptr inbounds ([5 x i8]* @.str29, i32 0, i32 0), i32 1, i32 6, i32 26 }, %struct.anon { i8* getelementptr inbounds ([4 x i8]* @.str30, i32 0, i32 0), i32 1, i32 6, i32 27 }, %struct.anon { i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), i32 1, i32 6, i32 28 }, %struct.anon { i8* null, i32 2, i32 -1, i32 0 }], align 16
@.str4 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str10 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str11 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str12 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str13 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str14 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str15 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str16 = private unnamed_addr constant [5 x i8] c"acos\00", align 1
@.str17 = private unnamed_addr constant [5 x i8] c"asin\00", align 1
@.str18 = private unnamed_addr constant [5 x i8] c"atan\00", align 1
@.str19 = private unnamed_addr constant [5 x i8] c"ceil\00", align 1
@.str20 = private unnamed_addr constant [4 x i8] c"cos\00", align 1
@.str21 = private unnamed_addr constant [5 x i8] c"cosh\00", align 1
@.str22 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str23 = private unnamed_addr constant [5 x i8] c"fabs\00", align 1
@.str24 = private unnamed_addr constant [6 x i8] c"floor\00", align 1
@.str25 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str26 = private unnamed_addr constant [6 x i8] c"log10\00", align 1
@.str27 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"sinh\00", align 1
@.str29 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str30 = private unnamed_addr constant [4 x i8] c"tan\00", align 1
@.str31 = private unnamed_addr constant [5 x i8] c"tanh\00", align 1
@.str32 = private unnamed_addr constant [21 x i8] c"Unknown operation %d\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_util_Expression_c() #0 {
  ret i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.uExpressionInternals* @Util_ExpressionParse(i8* %expression) #1 {
  %temp = alloca %struct.PToken*, align 8
  %1 = tail call i8* @malloc(i64 32) #10
  %2 = bitcast i8* %1 to %struct.uExpressionInternals*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %FreeTokens.exit, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %1 to i32*
  store i32 0, i32* %5, align 4, !tbaa !2
  %6 = getelementptr inbounds i8* %1, i64 8
  %7 = bitcast i8* %6 to %struct.uExpressionToken**
  store %struct.uExpressionToken* null, %struct.uExpressionToken** %7, align 8, !tbaa !8
  %8 = getelementptr inbounds i8* %1, i64 16
  %9 = bitcast i8* %8 to i32*
  store i32 0, i32* %9, align 4, !tbaa !9
  %10 = getelementptr inbounds i8* %1, i64 24
  %11 = bitcast i8* %10 to i8***
  store i8** null, i8*** %11, align 8, !tbaa !10
  %12 = load i8* %expression, align 1, !tbaa !11
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %Tokenise.exit, label %.preheader.i

; <label>:14                                      ; preds = %insertafter.exit.i
  %15 = load i8* %80, align 1, !tbaa !11
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %Tokenise.exit, label %.preheader.i

.preheader.i:                                     ; preds = %4, %14
  %17 = phi i8 [ %15, %14 ], [ %12, %4 ]
  %tokenstart.082.i = phi i8* [ %80, %14 ], [ %expression, %4 ]
  %start.081.i = phi %struct.PToken* [ %.start.0.i, %14 ], [ null, %4 ]
  %current.080.i = phi %struct.PToken* [ %41, %14 ], [ null, %4 ]
  br label %18

; <label>:18                                      ; preds = %.critedge.i, %.preheader.i
  %19 = phi i8 [ %.pre.i, %.critedge.i ], [ %17, %.preheader.i ]
  %tokenstart.1.i = phi i8* [ %23, %.critedge.i ], [ %tokenstart.082.i, %.preheader.i ]
  switch i8 %19, label %.lr.ph.i.preheader [
    i8 32, label %.critedge.i
    i8 9, label %.critedge.i
    i8 0, label %.critedge1.i
  ]

.lr.ph.i.preheader:                               ; preds = %18
  %20 = getelementptr inbounds i8* %tokenstart.1.i, i64 1
  %21 = load i8* %20, align 1, !tbaa !11
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %.critedge1.i, label %.lr.ph

.critedge.i:                                      ; preds = %18, %18
  %23 = getelementptr inbounds i8* %tokenstart.1.i, i64 1
  %.pre.i = load i8* %23, align 1, !tbaa !11
  br label %18

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i.backedge
  %24 = phi i8 [ %30, %.lr.ph.i.backedge ], [ %21, %.lr.ph.i.preheader ]
  %25 = phi i8* [ %26, %.lr.ph.i.backedge ], [ %tokenstart.1.i, %.lr.ph.i.preheader ]
  %26 = phi i8* [ %29, %.lr.ph.i.backedge ], [ %20, %.lr.ph.i.preheader ]
  %.in = phi i8 [ %.in.i.be, %.lr.ph.i.backedge ], [ %19, %.lr.ph.i.preheader ]
  %27 = sext i8 %24 to i32
  switch i32 %27, label %36 [
    i32 43, label %.critedge1.i
    i32 45, label %.critedge1.i
    i32 47, label %.critedge1.i
    i32 42, label %.critedge1.i
    i32 94, label %.critedge1.i
    i32 40, label %.critedge1.i
    i32 41, label %.critedge1.i
    i32 60, label %.critedge1.i
    i32 62, label %.critedge1.i
    i32 61, label %28
    i32 38, label %32
    i32 124, label %34
  ]

; <label>:28                                      ; preds = %.lr.ph
  switch i8 %.in, label %.critedge1.i [
    i8 60, label %.lr.ph.i.backedge
    i8 62, label %.lr.ph.i.backedge
  ]

.lr.ph.i.backedge:                                ; preds = %28, %28, %32, %34, %36, %38
  %.in.i.be = phi i8 [ %24, %36 ], [ 61, %38 ], [ %24, %28 ], [ %24, %28 ], [ %24, %32 ], [ %24, %34 ]
  %29 = getelementptr inbounds i8* %25, i64 2
  %30 = load i8* %29, align 1, !tbaa !11
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %.critedge1.i, label %.lr.ph

; <label>:32                                      ; preds = %.lr.ph
  %33 = icmp eq i8 %.in, 38
  br i1 %33, label %.lr.ph.i.backedge, label %.critedge1.i

; <label>:34                                      ; preds = %.lr.ph
  %35 = icmp eq i8 %.in, 124
  br i1 %35, label %.lr.ph.i.backedge, label %.critedge1.i

; <label>:36                                      ; preds = %.lr.ph
  %37 = sext i8 %.in to i32
  switch i32 %37, label %.lr.ph.i.backedge [
    i32 43, label %.critedge1.i
    i32 45, label %.critedge1.i
    i32 47, label %.critedge1.i
    i32 42, label %.critedge1.i
    i32 94, label %.critedge1.i
    i32 40, label %.critedge1.i
    i32 41, label %.critedge1.i
    i32 61, label %.critedge1.i
    i32 38, label %.critedge1.i
    i32 124, label %.critedge1.i
    i32 60, label %38
    i32 62, label %38
  ]

; <label>:38                                      ; preds = %36, %36
  %cond.i = icmp eq i8 %24, 61
  br i1 %cond.i, label %.lr.ph.i.backedge, label %.critedge1.i

.critedge1.i:                                     ; preds = %18, %.lr.ph.i.backedge, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %28, %32, %34, %36, %36, %36, %36, %36, %36, %36, %36, %36, %36, %38, %.lr.ph.i.preheader
  %position.0.lcssa.i = phi i8* [ %tokenstart.1.i, %.lr.ph.i.preheader ], [ %25, %38 ], [ %25, %36 ], [ %25, %36 ], [ %25, %36 ], [ %25, %36 ], [ %25, %36 ], [ %25, %36 ], [ %25, %36 ], [ %25, %36 ], [ %25, %36 ], [ %25, %36 ], [ %25, %34 ], [ %25, %32 ], [ %25, %28 ], [ %25, %.lr.ph ], [ %25, %.lr.ph ], [ %25, %.lr.ph ], [ %25, %.lr.ph ], [ %25, %.lr.ph ], [ %25, %.lr.ph ], [ %25, %.lr.ph ], [ %25, %.lr.ph ], [ %25, %.lr.ph ], [ %26, %.lr.ph.i.backedge ], [ %tokenstart.1.i, %18 ]
  %tokenend.2.i = phi i8* [ null, %.lr.ph.i.preheader ], [ %25, %38 ], [ %25, %36 ], [ %25, %36 ], [ %25, %36 ], [ %25, %36 ], [ %25, %36 ], [ %25, %36 ], [ %25, %36 ], [ %25, %36 ], [ %25, %36 ], [ %25, %36 ], [ %25, %34 ], [ %25, %32 ], [ %25, %28 ], [ %25, %.lr.ph ], [ %25, %.lr.ph ], [ %25, %.lr.ph ], [ %25, %.lr.ph ], [ %25, %.lr.ph ], [ %25, %.lr.ph ], [ %25, %.lr.ph ], [ %25, %.lr.ph ], [ %25, %.lr.ph ], [ null, %.lr.ph.i.backedge ], [ null, %18 ]
  %39 = icmp eq i8* %tokenend.2.i, null
  %position.0.tokenend.2.i = select i1 %39, i8* %position.0.lcssa.i, i8* %tokenend.2.i
  %40 = tail call i8* @malloc(i64 24) #10
  %41 = bitcast i8* %40 to %struct.PToken*
  %42 = icmp eq i8* %40, null
  br i1 %42, label %newtoken.exit.i, label %43

; <label>:43                                      ; preds = %.critedge1.i
  %44 = ptrtoint i8* %position.0.tokenend.2.i to i64
  %45 = ptrtoint i8* %tokenstart.1.i to i64
  %46 = sub i64 2, %45
  %47 = add i64 %46, %44
  tail call void @llvm.memset.p0i8.i64(i8* %40, i8 0, i64 16, i32 8, i1 false) #3
  %48 = tail call i8* @malloc(i64 %47) #10
  %49 = getelementptr inbounds i8* %40, i64 16
  %50 = bitcast i8* %49 to i8**
  store i8* %48, i8** %50, align 8, !tbaa !12
  %51 = icmp eq i8* %48, null
  br i1 %51, label %newtoken.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %43
  %52 = icmp ugt i8* %tokenstart.1.i, %position.0.tokenend.2.i
  br i1 %52, label %._crit_edge.i.i, label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %.preheader.i.i, %.lr.ph7.i.i
  %newpos.06.i.i = phi i8* [ %55, %.lr.ph7.i.i ], [ %48, %.preheader.i.i ]
  %position.05.i.i = phi i8* [ %54, %.lr.ph7.i.i ], [ %tokenstart.1.i, %.preheader.i.i ]
  %53 = load i8* %position.05.i.i, align 1, !tbaa !11
  store i8 %53, i8* %newpos.06.i.i, align 1, !tbaa !11
  %54 = getelementptr inbounds i8* %position.05.i.i, i64 1
  %55 = getelementptr inbounds i8* %newpos.06.i.i, i64 1
  %56 = icmp ugt i8* %54, %position.0.tokenend.2.i
  br i1 %56, label %._crit_edge.i.i, label %.lr.ph7.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph7.i.i, %.preheader.i.i
  %newpos.0.lcssa.i.i = phi i8* [ %48, %.preheader.i.i ], [ %55, %.lr.ph7.i.i ]
  store i8 0, i8* %newpos.0.lcssa.i.i, align 1, !tbaa !11
  %57 = load i8** %50, align 8, !tbaa !12
  %58 = icmp ult i8* %newpos.0.lcssa.i.i, %57
  br i1 %58, label %newtoken.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i, %.critedge1._crit_edge.i.i
  %59 = phi i8 [ %.pre.i.i, %.critedge1._crit_edge.i.i ], [ 0, %._crit_edge.i.i ]
  %newpos.13.i.i = phi i8* [ %60, %.critedge1._crit_edge.i.i ], [ %newpos.0.lcssa.i.i, %._crit_edge.i.i ]
  switch i8 %59, label %newtoken.exit.thread.i [
    i8 0, label %.critedge1.i.i
    i8 32, label %.critedge1.i.i
    i8 9, label %.critedge1.i.i
  ]

.critedge1.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  store i8 0, i8* %newpos.13.i.i, align 1, !tbaa !11
  %60 = getelementptr inbounds i8* %newpos.13.i.i, i64 -1
  %61 = load i8** %50, align 8, !tbaa !12
  %62 = icmp ult i8* %60, %61
  br i1 %62, label %newtoken.exit.thread.i, label %.critedge1._crit_edge.i.i

.critedge1._crit_edge.i.i:                        ; preds = %.critedge1.i.i
  %.pre.i.i = load i8* %60, align 1, !tbaa !11
  br label %.lr.ph.i.i

newtoken.exit.thread.i:                           ; preds = %.critedge1.i.i, %.lr.ph.i.i, %._crit_edge.i.i, %43
  %63 = icmp eq %struct.PToken* %current.080.i, null
  br i1 %63, label %insertafter.exit.i, label %64

; <label>:64                                      ; preds = %newtoken.exit.thread.i
  %65 = bitcast i8* %40 to %struct.PToken**
  store %struct.PToken* %current.080.i, %struct.PToken** %65, align 8, !tbaa !14
  %66 = getelementptr inbounds %struct.PToken* %current.080.i, i64 0, i32 1
  %67 = bitcast %struct.PToken** %66 to i64*
  %68 = load i64* %67, align 8, !tbaa !15
  %69 = getelementptr inbounds i8* %40, i64 8
  %70 = bitcast i8* %69 to %struct.PToken**
  %71 = bitcast i8* %69 to i64*
  store i64 %68, i64* %71, align 8, !tbaa !15
  %72 = bitcast %struct.PToken** %66 to i8**
  store i8* %40, i8** %72, align 8, !tbaa !15
  %73 = load %struct.PToken** %70, align 8, !tbaa !15
  %74 = icmp eq %struct.PToken* %73, null
  br i1 %74, label %insertafter.exit.i, label %75

; <label>:75                                      ; preds = %64
  %76 = bitcast %struct.PToken* %73 to i8**
  store i8* %40, i8** %76, align 8, !tbaa !14
  br label %insertafter.exit.i

insertafter.exit.i:                               ; preds = %75, %64, %newtoken.exit.thread.i
  %77 = icmp eq %struct.PToken* %start.081.i, null
  %.start.0.i = select i1 %77, %struct.PToken* %41, %struct.PToken* %start.081.i
  %78 = load i8* %position.0.tokenend.2.i, align 1, !tbaa !11
  %79 = icmp eq i8 %78, 0
  %80 = getelementptr inbounds i8* %position.0.tokenend.2.i, i64 1
  br i1 %79, label %Tokenise.exit, label %14

newtoken.exit.i:                                  ; preds = %.critedge1.i
  %81 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !16
  %82 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str1, i64 0, i64 0), i64 42, i64 1, %struct.__sFILE* %81) #3
  tail call void @abort() #11
  unreachable

Tokenise.exit:                                    ; preds = %14, %insertafter.exit.i, %4
  %start.2.i = phi %struct.PToken* [ null, %4 ], [ %.start.0.i, %insertafter.exit.i ], [ %.start.0.i, %14 ]
  store %struct.PToken* %start.2.i, %struct.PToken** %temp, align 8, !tbaa !16
  %83 = call fastcc i32 @RPParse(%struct.PToken** %temp, %struct.uExpressionInternals* %2) #12
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %106

; <label>:85                                      ; preds = %Tokenise.exit
  %86 = load i32* %5, align 4, !tbaa !2
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %.lr.ph.i1, label %VerifyParsedExpression.exit.thread

.lr.ph.i1:                                        ; preds = %85
  %88 = load %struct.uExpressionToken** %7, align 8, !tbaa !8
  %89 = sext i32 %86 to i64
  br label %92

; <label>:90                                      ; preds = %102
  %91 = icmp slt i64 %indvars.iv.next.i, %89
  br i1 %91, label %92, label %VerifyParsedExpression.exit

; <label>:92                                      ; preds = %90, %.lr.ph.i1
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i1 ], [ %indvars.iv.next.i, %90 ]
  %stackpointer.07.i = phi i32 [ 0, %.lr.ph.i1 ], [ %stackpointer.1.i, %90 ]
  %93 = getelementptr inbounds %struct.uExpressionToken* %88, i64 %indvars.iv.i, i32 0
  %94 = load i32* %93, align 4, !tbaa !17
  switch i32 %94, label %102 [
    i32 0, label %95
    i32 2, label %97
    i32 1, label %100
  ]

; <label>:95                                      ; preds = %92
  %96 = add nsw i32 %stackpointer.07.i, 1
  br label %102

; <label>:97                                      ; preds = %92
  %98 = icmp sgt i32 %stackpointer.07.i, 1
  %not..i = xor i1 %98, true
  %retcode.0..i = sext i1 %not..i to i32
  %99 = sext i1 %98 to i32
  %.stackpointer.0.i = add nsw i32 %99, %stackpointer.07.i
  br label %102

; <label>:100                                     ; preds = %92
  %101 = icmp eq i32 %stackpointer.07.i, 0
  %.retcode.0.i = sext i1 %101 to i32
  br label %102

; <label>:102                                     ; preds = %100, %97, %95, %92
  %retcode.1.i = phi i32 [ 0, %95 ], [ 0, %92 ], [ %.retcode.0.i, %100 ], [ %retcode.0..i, %97 ]
  %stackpointer.1.i = phi i32 [ %96, %95 ], [ %stackpointer.07.i, %92 ], [ %stackpointer.07.i, %100 ], [ %.stackpointer.0.i, %97 ]
  %103 = icmp ugt i32 %stackpointer.1.i, 256
  %104 = icmp ne i32 %retcode.1.i, 0
  %or.cond3.i = or i1 %104, %103
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %or.cond3.i, label %VerifyParsedExpression.exit.thread, label %90

VerifyParsedExpression.exit:                      ; preds = %90
  %105 = icmp eq i32 %stackpointer.1.i, 1
  br i1 %105, label %107, label %VerifyParsedExpression.exit.thread

VerifyParsedExpression.exit.thread:               ; preds = %102, %85, %VerifyParsedExpression.exit
  tail call void @Util_ExpressionFree(%struct.uExpressionInternals* %2) #12
  br label %107

; <label>:106                                     ; preds = %Tokenise.exit
  tail call void @Util_ExpressionFree(%struct.uExpressionInternals* %2) #12
  br label %107

; <label>:107                                     ; preds = %VerifyParsedExpression.exit, %VerifyParsedExpression.exit.thread, %106
  %buffer.0 = phi %struct.uExpressionInternals* [ null, %106 ], [ %2, %VerifyParsedExpression.exit ], [ null, %VerifyParsedExpression.exit.thread ]
  %108 = icmp eq %struct.PToken* %start.2.i, null
  br i1 %108, label %FreeTokens.exit, label %.lr.ph.i2

.lr.ph.i2:                                        ; preds = %107, %.lr.ph.i2
  %token.01.i = phi %struct.PToken* [ %110, %.lr.ph.i2 ], [ %start.2.i, %107 ]
  %109 = getelementptr inbounds %struct.PToken* %token.01.i, i64 0, i32 1
  %110 = load %struct.PToken** %109, align 8, !tbaa !15
  %111 = getelementptr inbounds %struct.PToken* %token.01.i, i64 0, i32 2
  %112 = load i8** %111, align 8, !tbaa !12
  tail call void @free(i8* %112) #10
  %113 = bitcast %struct.PToken* %token.01.i to i8*
  tail call void @free(i8* %113) #10
  %114 = icmp eq %struct.PToken* %110, null
  br i1 %114, label %FreeTokens.exit, label %.lr.ph.i2

FreeTokens.exit:                                  ; preds = %.lr.ph.i2, %107, %0
  %buffer.1 = phi %struct.uExpressionInternals* [ %2, %0 ], [ %buffer.0, %107 ], [ %buffer.0, %.lr.ph.i2 ]
  ret %struct.uExpressionInternals* %buffer.1
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @RPParse(%struct.PToken** nocapture %current, %struct.uExpressionInternals* nocapture %buffer) #1 {
  %this = alloca %struct.PToken*, align 8
  %opstack = alloca [100 x i8*], align 16
  %optype = alloca i32, align 4
  %opcode = alloca i32, align 4
  %1 = bitcast [100 x i8*]* %opstack to i8*
  call void @llvm.lifetime.start(i64 800, i8* %1) #3
  %2 = bitcast %struct.PToken** %current to i64*
  %3 = load i64* %2, align 8, !tbaa !16
  %4 = bitcast %struct.PToken** %this to i64*
  store i64 %3, i64* %4, align 8, !tbaa !16
  %5 = icmp eq i64 %3, 0
  br i1 %5, label %.loopexit, label %.lr.ph15

.lr.ph15:                                         ; preds = %0
  %6 = getelementptr inbounds %struct.uExpressionInternals* %buffer, i64 0, i32 0
  %7 = getelementptr inbounds %struct.uExpressionInternals* %buffer, i64 0, i32 1
  %8 = bitcast %struct.uExpressionToken** %7 to i8**
  %9 = getelementptr inbounds %struct.uExpressionInternals* %buffer, i64 0, i32 2
  %10 = getelementptr inbounds %struct.uExpressionInternals* %buffer, i64 0, i32 3
  %.pre9.i = bitcast i8*** %10 to i8**
  br label %11

; <label>:11                                      ; preds = %.lr.ph15, %.loopexit5
  %.in46 = phi i64 [ %3, %.lr.ph15 ], [ %146, %.loopexit5 ]
  %operator.013 = phi i8* [ null, %.lr.ph15 ], [ %operator.1, %.loopexit5 ]
  %numops.012 = phi i32 [ 0, %.lr.ph15 ], [ %numops.2, %.loopexit5 ]
  %12 = inttoptr i64 %.in46 to %struct.PToken*
  %13 = inttoptr i64 %.in46 to %struct.PToken*
  %14 = getelementptr inbounds %struct.PToken* %13, i64 0, i32 2
  %15 = load i8** %14, align 8, !tbaa !12
  %16 = tail call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0)) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %.critedge, label %18

; <label>:18                                      ; preds = %11
  %19 = tail call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %36

; <label>:21                                      ; preds = %18
  %22 = getelementptr inbounds %struct.PToken* %13, i64 0, i32 1
  %23 = load %struct.PToken** %22, align 8, !tbaa !15
  %24 = icmp eq %struct.PToken* %23, null
  br i1 %24, label %36, label %25

; <label>:25                                      ; preds = %21
  store %struct.PToken* %23, %struct.PToken** %this, align 8, !tbaa !16
  %26 = call fastcc i32 @RPParse(%struct.PToken** %this, %struct.uExpressionInternals* %buffer) #12
  %27 = icmp eq i32 %26, 0
  %28 = load %struct.PToken** %this, align 8
  %29 = icmp ne %struct.PToken* %28, null
  %or.cond = and i1 %27, %29
  %30 = ptrtoint %struct.PToken* %28 to i64
  br i1 %or.cond, label %31, label %.critedge

; <label>:31                                      ; preds = %25
  %32 = getelementptr inbounds %struct.PToken* %28, i64 0, i32 2
  %33 = load i8** %32, align 8, !tbaa !12
  %34 = tail call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0)) #10
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %.loopexit5, label %.critedge

; <label>:36                                      ; preds = %21, %18
  %37 = getelementptr inbounds %struct.PToken* %12, i64 0, i32 2
  %38 = load i8** %37, align 8, !tbaa !12
  br label %42

; <label>:39                                      ; preds = %42
  %40 = trunc i64 %indvars.iv.next.i to i32
  %41 = icmp eq i32 %40, 28
  br i1 %41, label %47, label %42

; <label>:42                                      ; preds = %39, %36
  %indvars.iv.i = phi i64 [ 0, %36 ], [ %indvars.iv.next.i, %39 ]
  %43 = getelementptr inbounds [29 x %struct.anon]* @operators, i64 0, i64 %indvars.iv.i, i32 0
  %44 = load i8** %43, align 8, !tbaa !19
  %45 = tail call i32 @strcmp(i8* %44, i8* %38) #10
  %46 = icmp eq i32 %45, 0
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %46, label %88, label %39

; <label>:47                                      ; preds = %39
  %48 = getelementptr inbounds %struct.PToken* %12, i64 0, i32 2
  %49 = load i8** %48, align 8, !tbaa !12
  %50 = load i32* %9, align 4, !tbaa !9
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %.lr.ph.i, label %..thread.loopexit_crit_edge6.i

..thread.loopexit_crit_edge6.i:                   ; preds = %47
  %.pre.pre.i = load i8** %.pre9.i, align 8, !tbaa !10
  br label %.thread.i

.lr.ph.i:                                         ; preds = %47
  %52 = load i8*** %10, align 8, !tbaa !10
  %53 = bitcast i8** %52 to i8*
  %54 = sext i32 %50 to i64
  br label %55

; <label>:55                                      ; preds = %60, %.lr.ph.i
  %indvars.iv.i2 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i3, %60 ]
  %56 = getelementptr inbounds i8** %52, i64 %indvars.iv.i2
  %57 = load i8** %56, align 8, !tbaa !16
  %58 = tail call i32 @strcmp(i8* %57, i8* %49) #10
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

; <label>:60                                      ; preds = %55
  %indvars.iv.next.i3 = add nuw nsw i64 %indvars.iv.i2, 1
  %61 = icmp slt i64 %indvars.iv.next.i3, %54
  br i1 %61, label %55, label %.thread.i

; <label>:62                                      ; preds = %55
  %63 = trunc i64 %indvars.iv.i2 to i32
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %.thread.i, label %StoreVar.exit

.thread.i:                                        ; preds = %60, %62, %..thread.loopexit_crit_edge6.i
  %65 = phi i8* [ %.pre.pre.i, %..thread.loopexit_crit_edge6.i ], [ %53, %62 ], [ %53, %60 ]
  %66 = add nsw i32 %50, 1
  store i32 %66, i32* %9, align 4, !tbaa !9
  %67 = sext i32 %66 to i64
  %68 = shl nsw i64 %67, 3
  %69 = tail call i8* @realloc(i8* %65, i64 %68) #10
  store i8* %69, i8** %.pre9.i, align 8, !tbaa !10
  %70 = tail call i8* @Util_Strdup(i8* %49) #10
  %71 = load i32* %9, align 4, !tbaa !9
  %72 = add nsw i32 %71, -1
  %73 = sext i32 %72 to i64
  %74 = load i8*** %10, align 8, !tbaa !10
  %75 = getelementptr inbounds i8** %74, i64 %73
  store i8* %70, i8** %75, align 8, !tbaa !16
  br label %StoreVar.exit

StoreVar.exit:                                    ; preds = %62, %.thread.i
  %retval.1.i = phi i32 [ %72, %.thread.i ], [ %63, %62 ]
  %76 = load i32* %6, align 4, !tbaa !2
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4, !tbaa !2
  %78 = load i8** %8, align 8, !tbaa !8
  %79 = sext i32 %77 to i64
  %80 = shl nsw i64 %79, 3
  %81 = tail call i8* @realloc(i8* %78, i64 %80) #10
  %82 = bitcast i8* %81 to %struct.uExpressionToken*
  store i8* %81, i8** %8, align 8, !tbaa !8
  %83 = load i32* %6, align 4, !tbaa !2
  %84 = add nsw i32 %83, -1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.uExpressionToken* %82, i64 %85, i32 0
  store i32 0, i32* %86, align 4, !tbaa !17
  %87 = getelementptr inbounds %struct.uExpressionToken* %82, i64 %85, i32 1, i32 0
  store i32 %retval.1.i, i32* %87, align 4, !tbaa !21
  br label %.loopexit5

; <label>:88                                      ; preds = %42
  %89 = icmp eq i8* %operator.013, null
  %90 = getelementptr inbounds %struct.PToken* %12, i64 0, i32 2
  %91 = load i8** %90, align 8, !tbaa !12
  br i1 %89, label %.loopexit5, label %92

; <label>:92                                      ; preds = %88
  %93 = tail call fastcc i32 @cmpprecendence(i8* %operator.013, i8* %91) #12
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %101

; <label>:95                                      ; preds = %92
  %96 = add nsw i32 %numops.012, 1
  %97 = sext i32 %numops.012 to i64
  %98 = getelementptr inbounds [100 x i8*]* %opstack, i64 0, i64 %97
  store i8* %operator.013, i8** %98, align 8, !tbaa !16
  %99 = getelementptr inbounds %struct.PToken* %12, i64 0, i32 2
  %100 = load i8** %99, align 8, !tbaa !12
  br label %.loopexit5

; <label>:101                                     ; preds = %92
  call fastcc void @opencode(i8* %operator.013, i32* %optype, i32* %opcode) #12
  %102 = load i32* %6, align 4, !tbaa !2
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4, !tbaa !2
  %104 = load i8** %8, align 8, !tbaa !8
  %105 = sext i32 %103 to i64
  %106 = shl nsw i64 %105, 3
  %107 = tail call i8* @realloc(i8* %104, i64 %106) #10
  %108 = bitcast i8* %107 to %struct.uExpressionToken*
  store i8* %107, i8** %8, align 8, !tbaa !8
  %109 = load i32* %optype, align 4, !tbaa !11
  %110 = load i32* %6, align 4, !tbaa !2
  %111 = add nsw i32 %110, -1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.uExpressionToken* %108, i64 %112, i32 0
  store i32 %109, i32* %113, align 4, !tbaa !17
  %114 = load i32* %opcode, align 4, !tbaa !11
  %115 = getelementptr inbounds %struct.uExpressionToken* %108, i64 %112, i32 1, i32 0
  store i32 %114, i32* %115, align 4, !tbaa !11
  %116 = getelementptr inbounds %struct.PToken* %12, i64 0, i32 2
  %117 = load i8** %116, align 8, !tbaa !12
  %118 = icmp sgt i32 %numops.012, 0
  br i1 %118, label %.lr.ph9, label %.loopexit5

.lr.ph9:                                          ; preds = %101
  %119 = sext i32 %numops.012 to i64
  br label %120

; <label>:120                                     ; preds = %.lr.ph9, %125
  %indvars.iv43 = phi i64 [ %119, %.lr.ph9 ], [ %indvars.iv.next44, %125 ]
  %indvars.iv.next44 = add nsw i64 %indvars.iv43, -1
  %121 = getelementptr inbounds [100 x i8*]* %opstack, i64 0, i64 %indvars.iv.next44
  %122 = load i8** %121, align 8, !tbaa !16
  %123 = tail call fastcc i32 @cmpprecendence(i8* %122, i8* %117) #12
  %124 = icmp slt i32 %123, 1
  br i1 %124, label %125, label %..loopexit5_crit_edge

; <label>:125                                     ; preds = %120
  call fastcc void @opencode(i8* %122, i32* %optype, i32* %opcode) #12
  %126 = load i32* %6, align 4, !tbaa !2
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4, !tbaa !2
  %128 = load i8** %8, align 8, !tbaa !8
  %129 = sext i32 %127 to i64
  %130 = shl nsw i64 %129, 3
  %131 = tail call i8* @realloc(i8* %128, i64 %130) #10
  %132 = bitcast i8* %131 to %struct.uExpressionToken*
  store i8* %131, i8** %8, align 8, !tbaa !8
  %133 = load i32* %optype, align 4, !tbaa !11
  %134 = load i32* %6, align 4, !tbaa !2
  %135 = add nsw i32 %134, -1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.uExpressionToken* %132, i64 %136, i32 0
  store i32 %133, i32* %137, align 4, !tbaa !17
  %138 = load i32* %opcode, align 4, !tbaa !11
  %139 = getelementptr inbounds %struct.uExpressionToken* %132, i64 %136, i32 1, i32 0
  store i32 %138, i32* %139, align 4, !tbaa !11
  %140 = icmp sgt i64 %indvars.iv43, 1
  br i1 %140, label %120, label %..loopexit5_crit_edge10

..loopexit5_crit_edge:                            ; preds = %120
  %141 = trunc i64 %indvars.iv43 to i32
  br label %.loopexit5

..loopexit5_crit_edge10:                          ; preds = %125
  %142 = trunc i64 %indvars.iv.next44 to i32
  br label %.loopexit5

.loopexit5:                                       ; preds = %101, %..loopexit5_crit_edge, %..loopexit5_crit_edge10, %88, %31, %95, %StoreVar.exit
  %143 = phi %struct.PToken* [ %12, %95 ], [ %12, %StoreVar.exit ], [ %28, %31 ], [ %12, %88 ], [ %12, %..loopexit5_crit_edge10 ], [ %12, %..loopexit5_crit_edge ], [ %12, %101 ]
  %numops.2 = phi i32 [ %96, %95 ], [ %numops.012, %StoreVar.exit ], [ %numops.012, %31 ], [ %numops.012, %88 ], [ %142, %..loopexit5_crit_edge10 ], [ %141, %..loopexit5_crit_edge ], [ %numops.012, %101 ]
  %operator.1 = phi i8* [ %100, %95 ], [ %operator.013, %StoreVar.exit ], [ %operator.013, %31 ], [ %91, %88 ], [ %117, %..loopexit5_crit_edge10 ], [ %117, %..loopexit5_crit_edge ], [ %117, %101 ]
  %144 = getelementptr inbounds %struct.PToken* %143, i64 0, i32 1
  %145 = bitcast %struct.PToken** %144 to i64*
  %146 = load i64* %145, align 8, !tbaa !15
  store i64 %146, i64* %4, align 8, !tbaa !16
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %.critedge, label %11

.critedge:                                        ; preds = %.loopexit5, %11, %31, %25
  %148 = phi i64 [ %30, %25 ], [ %30, %31 ], [ %.in46, %11 ], [ 0, %.loopexit5 ]
  %operator.0.lcssa = phi i8* [ %operator.013, %25 ], [ %operator.013, %31 ], [ %operator.013, %11 ], [ %operator.1, %.loopexit5 ]
  %numops.0.lcssa = phi i32 [ %numops.012, %25 ], [ %numops.012, %31 ], [ %numops.012, %11 ], [ %numops.2, %.loopexit5 ]
  %retcode.2 = phi i32 [ -1, %25 ], [ -1, %31 ], [ 0, %11 ], [ 0, %.loopexit5 ]
  %149 = icmp eq i8* %operator.0.lcssa, null
  br i1 %149, label %.loopexit, label %150

; <label>:150                                     ; preds = %.critedge
  call fastcc void @opencode(i8* %operator.0.lcssa, i32* %optype, i32* %opcode) #12
  %151 = getelementptr inbounds %struct.uExpressionInternals* %buffer, i64 0, i32 0
  %152 = load i32* %151, align 4, !tbaa !2
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4, !tbaa !2
  %154 = getelementptr inbounds %struct.uExpressionInternals* %buffer, i64 0, i32 1
  %155 = bitcast %struct.uExpressionToken** %154 to i8**
  %156 = load i8** %155, align 8, !tbaa !8
  %157 = sext i32 %153 to i64
  %158 = shl nsw i64 %157, 3
  %159 = tail call i8* @realloc(i8* %156, i64 %158) #10
  %160 = bitcast i8* %159 to %struct.uExpressionToken*
  store i8* %159, i8** %155, align 8, !tbaa !8
  %161 = load i32* %optype, align 4, !tbaa !11
  %162 = load i32* %151, align 4, !tbaa !2
  %163 = add nsw i32 %162, -1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.uExpressionToken* %160, i64 %164, i32 0
  store i32 %161, i32* %165, align 4, !tbaa !17
  %166 = load i32* %opcode, align 4, !tbaa !11
  %167 = getelementptr inbounds %struct.uExpressionToken* %160, i64 %164, i32 1, i32 0
  store i32 %166, i32* %167, align 4, !tbaa !11
  %168 = icmp sgt i32 %numops.0.lcssa, 0
  br i1 %168, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %150
  %169 = sext i32 %numops.0.lcssa to i64
  br label %170

; <label>:170                                     ; preds = %.lr.ph, %170
  %indvars.iv = phi i64 [ %169, %.lr.ph ], [ %indvars.iv.next, %170 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %171 = getelementptr inbounds [100 x i8*]* %opstack, i64 0, i64 %indvars.iv.next
  %172 = load i8** %171, align 8, !tbaa !16
  call fastcc void @opencode(i8* %172, i32* %optype, i32* %opcode) #12
  %173 = load i32* %151, align 4, !tbaa !2
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %151, align 4, !tbaa !2
  %175 = load i8** %155, align 8, !tbaa !8
  %176 = sext i32 %174 to i64
  %177 = shl nsw i64 %176, 3
  %178 = tail call i8* @realloc(i8* %175, i64 %177) #10
  %179 = bitcast i8* %178 to %struct.uExpressionToken*
  store i8* %178, i8** %155, align 8, !tbaa !8
  %180 = load i32* %optype, align 4, !tbaa !11
  %181 = load i32* %151, align 4, !tbaa !2
  %182 = add nsw i32 %181, -1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.uExpressionToken* %179, i64 %183, i32 0
  store i32 %180, i32* %184, align 4, !tbaa !17
  %185 = load i32* %opcode, align 4, !tbaa !11
  %186 = getelementptr inbounds %struct.uExpressionToken* %179, i64 %183, i32 1, i32 0
  store i32 %185, i32* %186, align 4, !tbaa !11
  %187 = icmp sgt i64 %indvars.iv, 1
  br i1 %187, label %170, label %.loopexit

.loopexit:                                        ; preds = %170, %0, %150, %.critedge
  %retcode.245 = phi i32 [ %retcode.2, %.critedge ], [ %retcode.2, %150 ], [ 0, %0 ], [ %retcode.2, %170 ]
  %188 = phi i64 [ %148, %.critedge ], [ %148, %150 ], [ 0, %0 ], [ %148, %170 ]
  store i64 %188, i64* %2, align 8, !tbaa !16
  call void @llvm.lifetime.end(i64 800, i8* %1) #3
  ret i32 %retcode.245
}

; Function Attrs: nounwind optsize ssp uwtable
define void @Util_ExpressionFree(%struct.uExpressionInternals* %buffer) #1 {
  %1 = icmp eq %struct.uExpressionInternals* %buffer, null
  br i1 %1, label %18, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.uExpressionInternals* %buffer, i64 0, i32 1
  %4 = bitcast %struct.uExpressionToken** %3 to i8**
  %5 = load i8** %4, align 8, !tbaa !8
  tail call void @free(i8* %5) #12
  %6 = getelementptr inbounds %struct.uExpressionInternals* %buffer, i64 0, i32 2
  %7 = load i32* %6, align 4, !tbaa !9
  %8 = icmp sgt i32 %7, 0
  %9 = getelementptr inbounds %struct.uExpressionInternals* %buffer, i64 0, i32 3
  br i1 %8, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %2, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %2 ]
  %10 = load i8*** %9, align 8, !tbaa !10
  %11 = getelementptr inbounds i8** %10, i64 %indvars.iv
  %12 = load i8** %11, align 8, !tbaa !16
  tail call void @free(i8* %12) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %13 = load i32* %6, align 4, !tbaa !9
  %14 = sext i32 %13 to i64
  %15 = icmp slt i64 %indvars.iv.next, %14
  br i1 %15, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %2
  %16 = bitcast i8*** %9 to i8**
  %17 = load i8** %16, align 8, !tbaa !10
  tail call void @free(i8* %17) #12
  br label %18

; <label>:18                                      ; preds = %0, %._crit_edge
  %19 = bitcast %struct.uExpressionInternals* %buffer to i8*
  tail call void @free(i8* %19) #12
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_ExpressionEvaluate(%struct.uExpressionInternals* nocapture readonly %buffer, %struct.uExpressionValue* nocapture %retval, i32 (i32, i8**, %struct.uExpressionValue*, i8*)* nocapture %eval, i8* %data) #1 {
  %stack = alloca [256 x %struct.uExpressionValue], align 16
  %1 = bitcast [256 x %struct.uExpressionValue]* %stack to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %1) #3
  %2 = getelementptr inbounds %struct.uExpressionInternals* %buffer, i64 0, i32 2
  %3 = load i32* %2, align 4, !tbaa !9
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 4
  %6 = tail call i8* @malloc(i64 %5) #10
  %7 = bitcast i8* %6 to %struct.uExpressionValue*
  %8 = icmp ne i8* %6, null
  %9 = icmp eq i32 %3, 0
  %or.cond = or i1 %8, %9
  br i1 %or.cond, label %10, label %722

; <label>:10                                      ; preds = %0
  %11 = getelementptr inbounds %struct.uExpressionInternals* %buffer, i64 0, i32 3
  %12 = load i8*** %11, align 8, !tbaa !10
  %13 = tail call i32 %eval(i32 %3, i8** %12, %struct.uExpressionValue* %7, i8* %data) #10
  %14 = getelementptr inbounds %struct.uExpressionInternals* %buffer, i64 0, i32 0
  %15 = load i32* %14, align 4, !tbaa !2
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %10
  %17 = getelementptr inbounds %struct.uExpressionInternals* %buffer, i64 0, i32 1
  br label %18

; <label>:18                                      ; preds = %.lr.ph, %EvaluateBinary.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %EvaluateBinary.exit ]
  %stackpointer.02 = phi i32 [ 0, %.lr.ph ], [ %stackpointer.1, %EvaluateBinary.exit ]
  %19 = load %struct.uExpressionToken** %17, align 8, !tbaa !8
  %20 = getelementptr inbounds %struct.uExpressionToken* %19, i64 %indvars.iv, i32 0
  %21 = load i32* %20, align 4, !tbaa !17
  switch i32 %21, label %EvaluateBinary.exit [
    i32 0, label %22
    i32 2, label %32
    i32 1, label %521
  ]

; <label>:22                                      ; preds = %18
  %23 = sext i32 %stackpointer.02 to i64
  %24 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.uExpressionToken* %19, i64 %indvars.iv, i32 1, i32 0
  %26 = load i32* %25, align 4, !tbaa !21
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.uExpressionValue* %7, i64 %27
  %29 = bitcast %struct.uExpressionValue* %24 to i8*
  %30 = bitcast %struct.uExpressionValue* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 8, i1 false), !tbaa.struct !22
  %31 = add nsw i32 %stackpointer.02, 1
  br label %EvaluateBinary.exit

; <label>:32                                      ; preds = %18
  %33 = add nsw i32 %stackpointer.02, -2
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.uExpressionToken* %19, i64 %indvars.iv, i32 1, i32 0
  %36 = load i32* %35, align 4, !tbaa !11
  %37 = add nsw i32 %stackpointer.02, -1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38
  %40 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 0
  %41 = load i32* %40, align 16, !tbaa !25
  switch i32 %41, label %.thread.i [
    i32 1, label %42
    i32 0, label %165
  ]

; <label>:42                                      ; preds = %32
  %43 = getelementptr inbounds %struct.uExpressionValue* %39, i64 0, i32 0
  %44 = load i32* %43, align 16, !tbaa !25
  switch i32 %44, label %.thread.i [
    i32 1, label %45
    i32 0, label %290
  ]

; <label>:45                                      ; preds = %42
  store i32 1, i32* %40, align 16, !tbaa !25
  switch i32 %36, label %160 [
    i32 8, label %46
    i32 9, label %54
    i32 10, label %62
    i32 11, label %70
    i32 12, label %78
    i32 6, label %89
    i32 7, label %102
    i32 1, label %115
    i32 2, label %124
    i32 4, label %133
    i32 3, label %142
    i32 5, label %151
  ]

; <label>:46                                      ; preds = %45
  %47 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1
  %48 = bitcast %union.anon.0* %47 to i32*
  %49 = load i32* %48, align 8, !tbaa !21
  %50 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1
  %51 = bitcast %union.anon.0* %50 to i32*
  %52 = load i32* %51, align 8, !tbaa !21
  %53 = add nsw i32 %52, %49
  store i32 %53, i32* %48, align 8, !tbaa !21
  br label %EvaluateBinary.exit

; <label>:54                                      ; preds = %45
  %55 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1
  %56 = bitcast %union.anon.0* %55 to i32*
  %57 = load i32* %56, align 8, !tbaa !21
  %58 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1
  %59 = bitcast %union.anon.0* %58 to i32*
  %60 = load i32* %59, align 8, !tbaa !21
  %61 = sub nsw i32 %57, %60
  store i32 %61, i32* %56, align 8, !tbaa !21
  br label %EvaluateBinary.exit

; <label>:62                                      ; preds = %45
  %63 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1
  %64 = bitcast %union.anon.0* %63 to i32*
  %65 = load i32* %64, align 8, !tbaa !21
  %66 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1
  %67 = bitcast %union.anon.0* %66 to i32*
  %68 = load i32* %67, align 8, !tbaa !21
  %69 = sdiv i32 %65, %68
  store i32 %69, i32* %64, align 8, !tbaa !21
  br label %EvaluateBinary.exit

; <label>:70                                      ; preds = %45
  %71 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1
  %72 = bitcast %union.anon.0* %71 to i32*
  %73 = load i32* %72, align 8, !tbaa !21
  %74 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1
  %75 = bitcast %union.anon.0* %74 to i32*
  %76 = load i32* %75, align 8, !tbaa !21
  %77 = mul nsw i32 %76, %73
  store i32 %77, i32* %72, align 8, !tbaa !21
  br label %EvaluateBinary.exit

; <label>:78                                      ; preds = %45
  %79 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1
  %80 = bitcast %union.anon.0* %79 to i32*
  %81 = load i32* %80, align 8, !tbaa !21
  %82 = sitofp i32 %81 to double
  %83 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1
  %84 = bitcast %union.anon.0* %83 to i32*
  %85 = load i32* %84, align 8, !tbaa !21
  %86 = sitofp i32 %85 to double
  %87 = tail call double @llvm.pow.f64(double %82, double %86) #3
  %88 = fptosi double %87 to i32
  store i32 %88, i32* %80, align 8, !tbaa !21
  br label %EvaluateBinary.exit

; <label>:89                                      ; preds = %45
  %90 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1
  %91 = bitcast %union.anon.0* %90 to i32*
  %92 = load i32* %91, align 8, !tbaa !21
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %99, label %94

; <label>:94                                      ; preds = %89
  %95 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1
  %96 = bitcast %union.anon.0* %95 to i32*
  %97 = load i32* %96, align 8, !tbaa !21
  %98 = icmp ne i32 %97, 0
  br label %99

; <label>:99                                      ; preds = %94, %89
  %100 = phi i1 [ false, %89 ], [ %98, %94 ]
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %91, align 8, !tbaa !21
  br label %EvaluateBinary.exit

; <label>:102                                     ; preds = %45
  %103 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1
  %104 = bitcast %union.anon.0* %103 to i32*
  %105 = load i32* %104, align 8, !tbaa !21
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %112

; <label>:107                                     ; preds = %102
  %108 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1
  %109 = bitcast %union.anon.0* %108 to i32*
  %110 = load i32* %109, align 8, !tbaa !21
  %111 = icmp ne i32 %110, 0
  br label %112

; <label>:112                                     ; preds = %107, %102
  %113 = phi i1 [ true, %102 ], [ %111, %107 ]
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %104, align 8, !tbaa !21
  br label %EvaluateBinary.exit

; <label>:115                                     ; preds = %45
  %116 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1
  %117 = bitcast %union.anon.0* %116 to i32*
  %118 = load i32* %117, align 8, !tbaa !21
  %119 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1
  %120 = bitcast %union.anon.0* %119 to i32*
  %121 = load i32* %120, align 8, !tbaa !21
  %122 = icmp eq i32 %118, %121
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %117, align 8, !tbaa !21
  br label %EvaluateBinary.exit

; <label>:124                                     ; preds = %45
  %125 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1
  %126 = bitcast %union.anon.0* %125 to i32*
  %127 = load i32* %126, align 8, !tbaa !21
  %128 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1
  %129 = bitcast %union.anon.0* %128 to i32*
  %130 = load i32* %129, align 8, !tbaa !21
  %131 = icmp slt i32 %127, %130
  %132 = zext i1 %131 to i32
  store i32 %132, i32* %126, align 8, !tbaa !21
  br label %EvaluateBinary.exit

; <label>:133                                     ; preds = %45
  %134 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1
  %135 = bitcast %union.anon.0* %134 to i32*
  %136 = load i32* %135, align 8, !tbaa !21
  %137 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1
  %138 = bitcast %union.anon.0* %137 to i32*
  %139 = load i32* %138, align 8, !tbaa !21
  %140 = icmp sle i32 %136, %139
  %141 = zext i1 %140 to i32
  store i32 %141, i32* %135, align 8, !tbaa !21
  br label %EvaluateBinary.exit

; <label>:142                                     ; preds = %45
  %143 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1
  %144 = bitcast %union.anon.0* %143 to i32*
  %145 = load i32* %144, align 8, !tbaa !21
  %146 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1
  %147 = bitcast %union.anon.0* %146 to i32*
  %148 = load i32* %147, align 8, !tbaa !21
  %149 = icmp sgt i32 %145, %148
  %150 = zext i1 %149 to i32
  store i32 %150, i32* %144, align 8, !tbaa !21
  br label %EvaluateBinary.exit

; <label>:151                                     ; preds = %45
  %152 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1
  %153 = bitcast %union.anon.0* %152 to i32*
  %154 = load i32* %153, align 8, !tbaa !21
  %155 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1
  %156 = bitcast %union.anon.0* %155 to i32*
  %157 = load i32* %156, align 8, !tbaa !21
  %158 = icmp sge i32 %154, %157
  %159 = zext i1 %158 to i32
  store i32 %159, i32* %153, align 8, !tbaa !21
  br label %EvaluateBinary.exit

; <label>:160                                     ; preds = %45
  %161 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !16
  %162 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %161, i8* getelementptr inbounds ([21 x i8]* @.str32, i64 0, i64 0), i32 %36) #10
  %163 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1
  %164 = bitcast %union.anon.0* %163 to i32*
  store i32 0, i32* %164, align 8, !tbaa !21
  br label %EvaluateBinary.exit

; <label>:165                                     ; preds = %32
  %166 = getelementptr inbounds %struct.uExpressionValue* %39, i64 0, i32 0
  %167 = load i32* %166, align 16, !tbaa !25
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %.thread.i

; <label>:169                                     ; preds = %165
  store i32 0, i32* %40, align 16, !tbaa !25
  switch i32 %36, label %286 [
    i32 8, label %170
    i32 9, label %178
    i32 10, label %186
    i32 11, label %194
    i32 12, label %202
    i32 6, label %210
    i32 7, label %223
    i32 1, label %236
    i32 2, label %246
    i32 4, label %256
    i32 3, label %266
    i32 5, label %276
  ]

; <label>:170                                     ; preds = %169
  %171 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  %172 = load double* %171, align 8, !tbaa !23
  %173 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1
  %174 = bitcast %union.anon.0* %173 to i32*
  %175 = load i32* %174, align 8, !tbaa !21
  %176 = sitofp i32 %175 to double
  %177 = fadd double %172, %176
  store double %177, double* %171, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:178                                     ; preds = %169
  %179 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  %180 = load double* %179, align 8, !tbaa !23
  %181 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1
  %182 = bitcast %union.anon.0* %181 to i32*
  %183 = load i32* %182, align 8, !tbaa !21
  %184 = sitofp i32 %183 to double
  %185 = fsub double %180, %184
  store double %185, double* %179, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:186                                     ; preds = %169
  %187 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  %188 = load double* %187, align 8, !tbaa !23
  %189 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1
  %190 = bitcast %union.anon.0* %189 to i32*
  %191 = load i32* %190, align 8, !tbaa !21
  %192 = sitofp i32 %191 to double
  %193 = fdiv double %188, %192
  store double %193, double* %187, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:194                                     ; preds = %169
  %195 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  %196 = load double* %195, align 8, !tbaa !23
  %197 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1
  %198 = bitcast %union.anon.0* %197 to i32*
  %199 = load i32* %198, align 8, !tbaa !21
  %200 = sitofp i32 %199 to double
  %201 = fmul double %196, %200
  store double %201, double* %195, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:202                                     ; preds = %169
  %203 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  %204 = load double* %203, align 8, !tbaa !23
  %205 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1
  %206 = bitcast %union.anon.0* %205 to i32*
  %207 = load i32* %206, align 8, !tbaa !21
  %208 = sitofp i32 %207 to double
  %209 = tail call double @llvm.pow.f64(double %204, double %208) #3
  store double %209, double* %203, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:210                                     ; preds = %169
  %211 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  %212 = load double* %211, align 8, !tbaa !23
  %213 = fcmp une double %212, 0.000000e+00
  br i1 %213, label %214, label %219

; <label>:214                                     ; preds = %210
  %215 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1
  %216 = bitcast %union.anon.0* %215 to i32*
  %217 = load i32* %216, align 8, !tbaa !21
  %218 = icmp ne i32 %217, 0
  br label %219

; <label>:219                                     ; preds = %214, %210
  %220 = phi i1 [ false, %210 ], [ %218, %214 ]
  %221 = zext i1 %220 to i32
  %222 = sitofp i32 %221 to double
  store double %222, double* %211, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:223                                     ; preds = %169
  %224 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  %225 = load double* %224, align 8, !tbaa !23
  %226 = fcmp une double %225, 0.000000e+00
  br i1 %226, label %232, label %227

; <label>:227                                     ; preds = %223
  %228 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1
  %229 = bitcast %union.anon.0* %228 to i32*
  %230 = load i32* %229, align 8, !tbaa !21
  %231 = icmp ne i32 %230, 0
  br label %232

; <label>:232                                     ; preds = %227, %223
  %233 = phi i1 [ true, %223 ], [ %231, %227 ]
  %234 = zext i1 %233 to i32
  %235 = sitofp i32 %234 to double
  store double %235, double* %224, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:236                                     ; preds = %169
  %237 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  %238 = load double* %237, align 8, !tbaa !23
  %239 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1
  %240 = bitcast %union.anon.0* %239 to i32*
  %241 = load i32* %240, align 8, !tbaa !21
  %242 = sitofp i32 %241 to double
  %243 = fcmp oeq double %238, %242
  %244 = zext i1 %243 to i32
  %245 = sitofp i32 %244 to double
  store double %245, double* %237, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:246                                     ; preds = %169
  %247 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  %248 = load double* %247, align 8, !tbaa !23
  %249 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1
  %250 = bitcast %union.anon.0* %249 to i32*
  %251 = load i32* %250, align 8, !tbaa !21
  %252 = sitofp i32 %251 to double
  %253 = fcmp olt double %248, %252
  %254 = zext i1 %253 to i32
  %255 = sitofp i32 %254 to double
  store double %255, double* %247, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:256                                     ; preds = %169
  %257 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  %258 = load double* %257, align 8, !tbaa !23
  %259 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1
  %260 = bitcast %union.anon.0* %259 to i32*
  %261 = load i32* %260, align 8, !tbaa !21
  %262 = sitofp i32 %261 to double
  %263 = fcmp ole double %258, %262
  %264 = zext i1 %263 to i32
  %265 = sitofp i32 %264 to double
  store double %265, double* %257, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:266                                     ; preds = %169
  %267 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  %268 = load double* %267, align 8, !tbaa !23
  %269 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1
  %270 = bitcast %union.anon.0* %269 to i32*
  %271 = load i32* %270, align 8, !tbaa !21
  %272 = sitofp i32 %271 to double
  %273 = fcmp ogt double %268, %272
  %274 = zext i1 %273 to i32
  %275 = sitofp i32 %274 to double
  store double %275, double* %267, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:276                                     ; preds = %169
  %277 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  %278 = load double* %277, align 8, !tbaa !23
  %279 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1
  %280 = bitcast %union.anon.0* %279 to i32*
  %281 = load i32* %280, align 8, !tbaa !21
  %282 = sitofp i32 %281 to double
  %283 = fcmp oge double %278, %282
  %284 = zext i1 %283 to i32
  %285 = sitofp i32 %284 to double
  store double %285, double* %277, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:286                                     ; preds = %169
  %287 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !16
  %288 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %287, i8* getelementptr inbounds ([21 x i8]* @.str32, i64 0, i64 0), i32 %36) #10
  %289 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  store double 0.000000e+00, double* %289, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:290                                     ; preds = %42
  store i32 0, i32* %40, align 16, !tbaa !25
  switch i32 %36, label %419 [
    i32 8, label %291
    i32 9, label %300
    i32 10, label %309
    i32 11, label %318
    i32 12, label %327
    i32 6, label %336
    i32 7, label %350
    i32 1, label %364
    i32 2, label %375
    i32 4, label %386
    i32 3, label %397
    i32 5, label %408
  ]

; <label>:291                                     ; preds = %290
  %292 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1
  %293 = bitcast %union.anon.0* %292 to i32*
  %294 = load i32* %293, align 8, !tbaa !21
  %295 = sitofp i32 %294 to double
  %296 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1, i32 0
  %297 = load double* %296, align 8, !tbaa !23
  %298 = fadd double %295, %297
  %299 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  store double %298, double* %299, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:300                                     ; preds = %290
  %301 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1
  %302 = bitcast %union.anon.0* %301 to i32*
  %303 = load i32* %302, align 8, !tbaa !21
  %304 = sitofp i32 %303 to double
  %305 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1, i32 0
  %306 = load double* %305, align 8, !tbaa !23
  %307 = fsub double %304, %306
  %308 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  store double %307, double* %308, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:309                                     ; preds = %290
  %310 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1
  %311 = bitcast %union.anon.0* %310 to i32*
  %312 = load i32* %311, align 8, !tbaa !21
  %313 = sitofp i32 %312 to double
  %314 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1, i32 0
  %315 = load double* %314, align 8, !tbaa !23
  %316 = fdiv double %313, %315
  %317 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  store double %316, double* %317, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:318                                     ; preds = %290
  %319 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1
  %320 = bitcast %union.anon.0* %319 to i32*
  %321 = load i32* %320, align 8, !tbaa !21
  %322 = sitofp i32 %321 to double
  %323 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1, i32 0
  %324 = load double* %323, align 8, !tbaa !23
  %325 = fmul double %322, %324
  %326 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  store double %325, double* %326, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:327                                     ; preds = %290
  %328 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1
  %329 = bitcast %union.anon.0* %328 to i32*
  %330 = load i32* %329, align 8, !tbaa !21
  %331 = sitofp i32 %330 to double
  %332 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1, i32 0
  %333 = load double* %332, align 8, !tbaa !23
  %334 = tail call double @llvm.pow.f64(double %331, double %333) #3
  %335 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  store double %334, double* %335, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:336                                     ; preds = %290
  %337 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1
  %338 = bitcast %union.anon.0* %337 to i32*
  %339 = load i32* %338, align 8, !tbaa !21
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %345, label %341

; <label>:341                                     ; preds = %336
  %342 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1, i32 0
  %343 = load double* %342, align 8, !tbaa !23
  %344 = fcmp une double %343, 0.000000e+00
  br label %345

; <label>:345                                     ; preds = %341, %336
  %346 = phi i1 [ false, %336 ], [ %344, %341 ]
  %347 = zext i1 %346 to i32
  %348 = sitofp i32 %347 to double
  %349 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  store double %348, double* %349, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:350                                     ; preds = %290
  %351 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1
  %352 = bitcast %union.anon.0* %351 to i32*
  %353 = load i32* %352, align 8, !tbaa !21
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %359

; <label>:355                                     ; preds = %350
  %356 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1, i32 0
  %357 = load double* %356, align 8, !tbaa !23
  %358 = fcmp une double %357, 0.000000e+00
  br label %359

; <label>:359                                     ; preds = %355, %350
  %360 = phi i1 [ true, %350 ], [ %358, %355 ]
  %361 = zext i1 %360 to i32
  %362 = sitofp i32 %361 to double
  %363 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  store double %362, double* %363, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:364                                     ; preds = %290
  %365 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1
  %366 = bitcast %union.anon.0* %365 to i32*
  %367 = load i32* %366, align 8, !tbaa !21
  %368 = sitofp i32 %367 to double
  %369 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1, i32 0
  %370 = load double* %369, align 8, !tbaa !23
  %371 = fcmp oeq double %368, %370
  %372 = zext i1 %371 to i32
  %373 = sitofp i32 %372 to double
  %374 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  store double %373, double* %374, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:375                                     ; preds = %290
  %376 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1
  %377 = bitcast %union.anon.0* %376 to i32*
  %378 = load i32* %377, align 8, !tbaa !21
  %379 = sitofp i32 %378 to double
  %380 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1, i32 0
  %381 = load double* %380, align 8, !tbaa !23
  %382 = fcmp olt double %379, %381
  %383 = zext i1 %382 to i32
  %384 = sitofp i32 %383 to double
  %385 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  store double %384, double* %385, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:386                                     ; preds = %290
  %387 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1
  %388 = bitcast %union.anon.0* %387 to i32*
  %389 = load i32* %388, align 8, !tbaa !21
  %390 = sitofp i32 %389 to double
  %391 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1, i32 0
  %392 = load double* %391, align 8, !tbaa !23
  %393 = fcmp ole double %390, %392
  %394 = zext i1 %393 to i32
  %395 = sitofp i32 %394 to double
  %396 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  store double %395, double* %396, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:397                                     ; preds = %290
  %398 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1
  %399 = bitcast %union.anon.0* %398 to i32*
  %400 = load i32* %399, align 8, !tbaa !21
  %401 = sitofp i32 %400 to double
  %402 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1, i32 0
  %403 = load double* %402, align 8, !tbaa !23
  %404 = fcmp ogt double %401, %403
  %405 = zext i1 %404 to i32
  %406 = sitofp i32 %405 to double
  %407 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  store double %406, double* %407, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:408                                     ; preds = %290
  %409 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1
  %410 = bitcast %union.anon.0* %409 to i32*
  %411 = load i32* %410, align 8, !tbaa !21
  %412 = sitofp i32 %411 to double
  %413 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1, i32 0
  %414 = load double* %413, align 8, !tbaa !23
  %415 = fcmp oge double %412, %414
  %416 = zext i1 %415 to i32
  %417 = sitofp i32 %416 to double
  %418 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  store double %417, double* %418, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:419                                     ; preds = %290
  %420 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !16
  %421 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %420, i8* getelementptr inbounds ([21 x i8]* @.str32, i64 0, i64 0), i32 %36) #10
  %422 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  store double 0.000000e+00, double* %422, align 8, !tbaa !23
  br label %EvaluateBinary.exit

.thread.i:                                        ; preds = %42, %165, %32
  store i32 0, i32* %40, align 16, !tbaa !25
  switch i32 %36, label %517 [
    i32 8, label %423
    i32 9, label %429
    i32 10, label %435
    i32 11, label %441
    i32 12, label %447
    i32 6, label %453
    i32 7, label %465
    i32 1, label %477
    i32 2, label %485
    i32 4, label %493
    i32 3, label %501
    i32 5, label %509
  ]

; <label>:423                                     ; preds = %.thread.i
  %424 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  %425 = load double* %424, align 8, !tbaa !23
  %426 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1, i32 0
  %427 = load double* %426, align 8, !tbaa !23
  %428 = fadd double %425, %427
  store double %428, double* %424, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:429                                     ; preds = %.thread.i
  %430 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  %431 = load double* %430, align 8, !tbaa !23
  %432 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1, i32 0
  %433 = load double* %432, align 8, !tbaa !23
  %434 = fsub double %431, %433
  store double %434, double* %430, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:435                                     ; preds = %.thread.i
  %436 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  %437 = load double* %436, align 8, !tbaa !23
  %438 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1, i32 0
  %439 = load double* %438, align 8, !tbaa !23
  %440 = fdiv double %437, %439
  store double %440, double* %436, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:441                                     ; preds = %.thread.i
  %442 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  %443 = load double* %442, align 8, !tbaa !23
  %444 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1, i32 0
  %445 = load double* %444, align 8, !tbaa !23
  %446 = fmul double %443, %445
  store double %446, double* %442, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:447                                     ; preds = %.thread.i
  %448 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  %449 = load double* %448, align 8, !tbaa !23
  %450 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1, i32 0
  %451 = load double* %450, align 8, !tbaa !23
  %452 = tail call double @llvm.pow.f64(double %449, double %451) #3
  store double %452, double* %448, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:453                                     ; preds = %.thread.i
  %454 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  %455 = load double* %454, align 8, !tbaa !23
  %456 = fcmp une double %455, 0.000000e+00
  br i1 %456, label %457, label %461

; <label>:457                                     ; preds = %453
  %458 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1, i32 0
  %459 = load double* %458, align 8, !tbaa !23
  %460 = fcmp une double %459, 0.000000e+00
  br label %461

; <label>:461                                     ; preds = %457, %453
  %462 = phi i1 [ false, %453 ], [ %460, %457 ]
  %463 = zext i1 %462 to i32
  %464 = sitofp i32 %463 to double
  store double %464, double* %454, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:465                                     ; preds = %.thread.i
  %466 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  %467 = load double* %466, align 8, !tbaa !23
  %468 = fcmp une double %467, 0.000000e+00
  br i1 %468, label %473, label %469

; <label>:469                                     ; preds = %465
  %470 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1, i32 0
  %471 = load double* %470, align 8, !tbaa !23
  %472 = fcmp une double %471, 0.000000e+00
  br label %473

; <label>:473                                     ; preds = %469, %465
  %474 = phi i1 [ true, %465 ], [ %472, %469 ]
  %475 = zext i1 %474 to i32
  %476 = sitofp i32 %475 to double
  store double %476, double* %466, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:477                                     ; preds = %.thread.i
  %478 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  %479 = load double* %478, align 8, !tbaa !23
  %480 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1, i32 0
  %481 = load double* %480, align 8, !tbaa !23
  %482 = fcmp oeq double %479, %481
  %483 = zext i1 %482 to i32
  %484 = sitofp i32 %483 to double
  store double %484, double* %478, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:485                                     ; preds = %.thread.i
  %486 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  %487 = load double* %486, align 8, !tbaa !23
  %488 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1, i32 0
  %489 = load double* %488, align 8, !tbaa !23
  %490 = fcmp olt double %487, %489
  %491 = zext i1 %490 to i32
  %492 = sitofp i32 %491 to double
  store double %492, double* %486, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:493                                     ; preds = %.thread.i
  %494 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  %495 = load double* %494, align 8, !tbaa !23
  %496 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1, i32 0
  %497 = load double* %496, align 8, !tbaa !23
  %498 = fcmp ole double %495, %497
  %499 = zext i1 %498 to i32
  %500 = sitofp i32 %499 to double
  store double %500, double* %494, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:501                                     ; preds = %.thread.i
  %502 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  %503 = load double* %502, align 8, !tbaa !23
  %504 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1, i32 0
  %505 = load double* %504, align 8, !tbaa !23
  %506 = fcmp ogt double %503, %505
  %507 = zext i1 %506 to i32
  %508 = sitofp i32 %507 to double
  store double %508, double* %502, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:509                                     ; preds = %.thread.i
  %510 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  %511 = load double* %510, align 8, !tbaa !23
  %512 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %38, i32 1, i32 0
  %513 = load double* %512, align 8, !tbaa !23
  %514 = fcmp oge double %511, %513
  %515 = zext i1 %514 to i32
  %516 = sitofp i32 %515 to double
  store double %516, double* %510, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:517                                     ; preds = %.thread.i
  %518 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !16
  %519 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %518, i8* getelementptr inbounds ([21 x i8]* @.str32, i64 0, i64 0), i32 %36) #10
  %520 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %34, i32 1, i32 0
  store double 0.000000e+00, double* %520, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:521                                     ; preds = %18
  %522 = add nsw i32 %stackpointer.02, -1
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds %struct.uExpressionToken* %19, i64 %indvars.iv, i32 1, i32 0
  %525 = load i32* %524, align 4, !tbaa !11
  %526 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 0
  %527 = load i32* %526, align 16, !tbaa !25
  %528 = icmp eq i32 %527, 1
  store i32 0, i32* %526, align 16, !tbaa !25
  br i1 %528, label %529, label %646

; <label>:529                                     ; preds = %521
  switch i32 %525, label %642 [
    i32 13, label %530
    i32 14, label %537
    i32 15, label %544
    i32 16, label %551
    i32 17, label %558
    i32 18, label %565
    i32 19, label %572
    i32 20, label %579
    i32 21, label %586
    i32 22, label %593
    i32 23, label %600
    i32 24, label %607
    i32 25, label %614
    i32 26, label %621
    i32 27, label %628
    i32 28, label %635
  ]

; <label>:530                                     ; preds = %529
  %531 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1
  %532 = bitcast %union.anon.0* %531 to i32*
  %533 = load i32* %532, align 8, !tbaa !21
  %534 = sitofp i32 %533 to double
  %535 = tail call double @acos(double %534) #13
  %536 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  store double %535, double* %536, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:537                                     ; preds = %529
  %538 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1
  %539 = bitcast %union.anon.0* %538 to i32*
  %540 = load i32* %539, align 8, !tbaa !21
  %541 = sitofp i32 %540 to double
  %542 = tail call double @asin(double %541) #13
  %543 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  store double %542, double* %543, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:544                                     ; preds = %529
  %545 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1
  %546 = bitcast %union.anon.0* %545 to i32*
  %547 = load i32* %546, align 8, !tbaa !21
  %548 = sitofp i32 %547 to double
  %549 = tail call double @atan(double %548) #13
  %550 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  store double %549, double* %550, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:551                                     ; preds = %529
  %552 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1
  %553 = bitcast %union.anon.0* %552 to i32*
  %554 = load i32* %553, align 8, !tbaa !21
  %555 = sitofp i32 %554 to double
  %556 = tail call double @ceil(double %555) #13
  %557 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  store double %556, double* %557, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:558                                     ; preds = %529
  %559 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1
  %560 = bitcast %union.anon.0* %559 to i32*
  %561 = load i32* %560, align 8, !tbaa !21
  %562 = sitofp i32 %561 to double
  %563 = tail call double @cos(double %562) #13
  %564 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  store double %563, double* %564, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:565                                     ; preds = %529
  %566 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1
  %567 = bitcast %union.anon.0* %566 to i32*
  %568 = load i32* %567, align 8, !tbaa !21
  %569 = sitofp i32 %568 to double
  %570 = tail call double @cosh(double %569) #13
  %571 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  store double %570, double* %571, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:572                                     ; preds = %529
  %573 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1
  %574 = bitcast %union.anon.0* %573 to i32*
  %575 = load i32* %574, align 8, !tbaa !21
  %576 = sitofp i32 %575 to double
  %577 = tail call double @exp(double %576) #13
  %578 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  store double %577, double* %578, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:579                                     ; preds = %529
  %580 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1
  %581 = bitcast %union.anon.0* %580 to i32*
  %582 = load i32* %581, align 8, !tbaa !21
  %583 = sitofp i32 %582 to double
  %584 = tail call double @fabs(double %583) #13
  %585 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  store double %584, double* %585, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:586                                     ; preds = %529
  %587 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1
  %588 = bitcast %union.anon.0* %587 to i32*
  %589 = load i32* %588, align 8, !tbaa !21
  %590 = sitofp i32 %589 to double
  %591 = tail call double @floor(double %590) #13
  %592 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  store double %591, double* %592, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:593                                     ; preds = %529
  %594 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1
  %595 = bitcast %union.anon.0* %594 to i32*
  %596 = load i32* %595, align 8, !tbaa !21
  %597 = sitofp i32 %596 to double
  %598 = tail call double @log(double %597) #13
  %599 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  store double %598, double* %599, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:600                                     ; preds = %529
  %601 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1
  %602 = bitcast %union.anon.0* %601 to i32*
  %603 = load i32* %602, align 8, !tbaa !21
  %604 = sitofp i32 %603 to double
  %605 = tail call double @log10(double %604) #13
  %606 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  store double %605, double* %606, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:607                                     ; preds = %529
  %608 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1
  %609 = bitcast %union.anon.0* %608 to i32*
  %610 = load i32* %609, align 8, !tbaa !21
  %611 = sitofp i32 %610 to double
  %612 = tail call double @sin(double %611) #13
  %613 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  store double %612, double* %613, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:614                                     ; preds = %529
  %615 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1
  %616 = bitcast %union.anon.0* %615 to i32*
  %617 = load i32* %616, align 8, !tbaa !21
  %618 = sitofp i32 %617 to double
  %619 = tail call double @sinh(double %618) #13
  %620 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  store double %619, double* %620, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:621                                     ; preds = %529
  %622 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1
  %623 = bitcast %union.anon.0* %622 to i32*
  %624 = load i32* %623, align 8, !tbaa !21
  %625 = sitofp i32 %624 to double
  %626 = tail call double @sqrt(double %625) #13
  %627 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  store double %626, double* %627, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:628                                     ; preds = %529
  %629 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1
  %630 = bitcast %union.anon.0* %629 to i32*
  %631 = load i32* %630, align 8, !tbaa !21
  %632 = sitofp i32 %631 to double
  %633 = tail call double @tan(double %632) #13
  %634 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  store double %633, double* %634, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:635                                     ; preds = %529
  %636 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1
  %637 = bitcast %union.anon.0* %636 to i32*
  %638 = load i32* %637, align 8, !tbaa !21
  %639 = sitofp i32 %638 to double
  %640 = tail call double @tanh(double %639) #13
  %641 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  store double %640, double* %641, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:642                                     ; preds = %529
  %643 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !16
  %644 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %643, i8* getelementptr inbounds ([21 x i8]* @.str32, i64 0, i64 0), i32 %525) #10
  %645 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  store double 0.000000e+00, double* %645, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:646                                     ; preds = %521
  switch i32 %525, label %711 [
    i32 13, label %647
    i32 14, label %651
    i32 15, label %655
    i32 16, label %659
    i32 17, label %663
    i32 18, label %667
    i32 19, label %671
    i32 20, label %675
    i32 21, label %679
    i32 22, label %683
    i32 23, label %687
    i32 24, label %691
    i32 25, label %695
    i32 26, label %699
    i32 27, label %703
    i32 28, label %707
  ]

; <label>:647                                     ; preds = %646
  %648 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  %649 = load double* %648, align 8, !tbaa !23
  %650 = tail call double @acos(double %649) #13
  store double %650, double* %648, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:651                                     ; preds = %646
  %652 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  %653 = load double* %652, align 8, !tbaa !23
  %654 = tail call double @asin(double %653) #13
  store double %654, double* %652, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:655                                     ; preds = %646
  %656 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  %657 = load double* %656, align 8, !tbaa !23
  %658 = tail call double @atan(double %657) #13
  store double %658, double* %656, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:659                                     ; preds = %646
  %660 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  %661 = load double* %660, align 8, !tbaa !23
  %662 = tail call double @ceil(double %661) #13
  store double %662, double* %660, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:663                                     ; preds = %646
  %664 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  %665 = load double* %664, align 8, !tbaa !23
  %666 = tail call double @cos(double %665) #13
  store double %666, double* %664, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:667                                     ; preds = %646
  %668 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  %669 = load double* %668, align 8, !tbaa !23
  %670 = tail call double @cosh(double %669) #13
  store double %670, double* %668, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:671                                     ; preds = %646
  %672 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  %673 = load double* %672, align 8, !tbaa !23
  %674 = tail call double @exp(double %673) #13
  store double %674, double* %672, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:675                                     ; preds = %646
  %676 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  %677 = load double* %676, align 8, !tbaa !23
  %678 = tail call double @fabs(double %677) #13
  store double %678, double* %676, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:679                                     ; preds = %646
  %680 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  %681 = load double* %680, align 8, !tbaa !23
  %682 = tail call double @floor(double %681) #13
  store double %682, double* %680, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:683                                     ; preds = %646
  %684 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  %685 = load double* %684, align 8, !tbaa !23
  %686 = tail call double @log(double %685) #13
  store double %686, double* %684, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:687                                     ; preds = %646
  %688 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  %689 = load double* %688, align 8, !tbaa !23
  %690 = tail call double @log10(double %689) #13
  store double %690, double* %688, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:691                                     ; preds = %646
  %692 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  %693 = load double* %692, align 8, !tbaa !23
  %694 = tail call double @sin(double %693) #13
  store double %694, double* %692, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:695                                     ; preds = %646
  %696 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  %697 = load double* %696, align 8, !tbaa !23
  %698 = tail call double @sinh(double %697) #13
  store double %698, double* %696, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:699                                     ; preds = %646
  %700 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  %701 = load double* %700, align 8, !tbaa !23
  %702 = tail call double @sqrt(double %701) #13
  store double %702, double* %700, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:703                                     ; preds = %646
  %704 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  %705 = load double* %704, align 8, !tbaa !23
  %706 = tail call double @tan(double %705) #13
  store double %706, double* %704, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:707                                     ; preds = %646
  %708 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  %709 = load double* %708, align 8, !tbaa !23
  %710 = tail call double @tanh(double %709) #13
  store double %710, double* %708, align 8, !tbaa !23
  br label %EvaluateBinary.exit

; <label>:711                                     ; preds = %646
  %712 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !16
  %713 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %712, i8* getelementptr inbounds ([21 x i8]* @.str32, i64 0, i64 0), i32 %525) #10
  %714 = getelementptr inbounds [256 x %struct.uExpressionValue]* %stack, i64 0, i64 %523, i32 1, i32 0
  store double 0.000000e+00, double* %714, align 8, !tbaa !23
  br label %EvaluateBinary.exit

EvaluateBinary.exit:                              ; preds = %711, %707, %703, %699, %695, %691, %687, %683, %679, %675, %671, %667, %663, %659, %655, %651, %647, %642, %635, %628, %621, %614, %607, %600, %593, %586, %579, %572, %565, %558, %551, %544, %537, %530, %517, %509, %501, %493, %485, %477, %473, %461, %447, %441, %435, %429, %423, %419, %408, %397, %386, %375, %364, %359, %345, %327, %318, %309, %300, %291, %286, %276, %266, %256, %246, %236, %232, %219, %202, %194, %186, %178, %170, %160, %151, %142, %133, %124, %115, %112, %99, %78, %70, %62, %54, %46, %18, %22
  %stackpointer.1 = phi i32 [ %31, %22 ], [ %stackpointer.02, %18 ], [ %37, %46 ], [ %37, %54 ], [ %37, %62 ], [ %37, %70 ], [ %37, %78 ], [ %37, %99 ], [ %37, %112 ], [ %37, %115 ], [ %37, %124 ], [ %37, %133 ], [ %37, %142 ], [ %37, %151 ], [ %37, %160 ], [ %37, %170 ], [ %37, %178 ], [ %37, %186 ], [ %37, %194 ], [ %37, %202 ], [ %37, %219 ], [ %37, %232 ], [ %37, %236 ], [ %37, %246 ], [ %37, %256 ], [ %37, %266 ], [ %37, %276 ], [ %37, %286 ], [ %37, %291 ], [ %37, %300 ], [ %37, %309 ], [ %37, %318 ], [ %37, %327 ], [ %37, %345 ], [ %37, %359 ], [ %37, %364 ], [ %37, %375 ], [ %37, %386 ], [ %37, %397 ], [ %37, %408 ], [ %37, %419 ], [ %37, %423 ], [ %37, %429 ], [ %37, %435 ], [ %37, %441 ], [ %37, %447 ], [ %37, %461 ], [ %37, %473 ], [ %37, %477 ], [ %37, %485 ], [ %37, %493 ], [ %37, %501 ], [ %37, %509 ], [ %37, %517 ], [ %stackpointer.02, %530 ], [ %stackpointer.02, %537 ], [ %stackpointer.02, %544 ], [ %stackpointer.02, %551 ], [ %stackpointer.02, %558 ], [ %stackpointer.02, %565 ], [ %stackpointer.02, %572 ], [ %stackpointer.02, %579 ], [ %stackpointer.02, %586 ], [ %stackpointer.02, %593 ], [ %stackpointer.02, %600 ], [ %stackpointer.02, %607 ], [ %stackpointer.02, %614 ], [ %stackpointer.02, %621 ], [ %stackpointer.02, %628 ], [ %stackpointer.02, %635 ], [ %stackpointer.02, %642 ], [ %stackpointer.02, %647 ], [ %stackpointer.02, %651 ], [ %stackpointer.02, %655 ], [ %stackpointer.02, %659 ], [ %stackpointer.02, %663 ], [ %stackpointer.02, %667 ], [ %stackpointer.02, %671 ], [ %stackpointer.02, %675 ], [ %stackpointer.02, %679 ], [ %stackpointer.02, %683 ], [ %stackpointer.02, %687 ], [ %stackpointer.02, %691 ], [ %stackpointer.02, %695 ], [ %stackpointer.02, %699 ], [ %stackpointer.02, %703 ], [ %stackpointer.02, %707 ], [ %stackpointer.02, %711 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %715 = load i32* %14, align 4, !tbaa !2
  %716 = sext i32 %715 to i64
  %717 = icmp slt i64 %indvars.iv.next, %716
  br i1 %717, label %18, label %._crit_edge

._crit_edge:                                      ; preds = %EvaluateBinary.exit, %10
  %stackpointer.0.lcssa = phi i32 [ 0, %10 ], [ %stackpointer.1, %EvaluateBinary.exit ]
  br i1 %8, label %718, label %719

; <label>:718                                     ; preds = %._crit_edge
  tail call void @free(i8* %6) #12
  br label %719

; <label>:719                                     ; preds = %718, %._crit_edge
  %720 = bitcast %struct.uExpressionValue* %retval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %720, i8* %1, i64 16, i32 8, i1 false), !tbaa.struct !22
  %721 = add nsw i32 %stackpointer.0.lcssa, -1
  br label %722

; <label>:722                                     ; preds = %0, %719
  %retcode.0 = phi i32 [ %721, %719 ], [ -1, %0 ]
  call void @llvm.lifetime.end(i64 4096, i8* %1) #3
  ret i32 %retcode.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: noreturn optsize
declare void @abort() #4

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal fastcc i32 @cmpprecendence(i8* nocapture readonly %op1, i8* nocapture readonly %op2) #6 {
  br label %5

; <label>:1                                       ; preds = %19
  %2 = getelementptr inbounds [29 x %struct.anon]* @operators, i64 0, i64 %indvars.iv.next, i32 0
  %3 = trunc i64 %indvars.iv.next to i32
  %4 = icmp eq i32 %3, 28
  br i1 %4, label %22, label %5

; <label>:5                                       ; preds = %0, %1
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ]
  %6 = phi i8** [ getelementptr inbounds ([29 x %struct.anon]* @operators, i64 0, i64 0, i32 0), %0 ], [ %2, %1 ]
  %op2prec.04 = phi i32 [ -1, %0 ], [ %op2prec.1, %1 ]
  %op1prec.03 = phi i32 [ -1, %0 ], [ %op1prec.1, %1 ]
  %7 = load i8** %6, align 8, !tbaa !19
  %8 = tail call i32 @strcmp(i8* %7, i8* %op1) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

; <label>:10                                      ; preds = %5
  %11 = getelementptr inbounds [29 x %struct.anon]* @operators, i64 0, i64 %indvars.iv, i32 2
  %12 = load i32* %11, align 4, !tbaa !27
  br label %13

; <label>:13                                      ; preds = %5, %10
  %op1prec.1 = phi i32 [ %op1prec.03, %5 ], [ %12, %10 ]
  %14 = tail call i32 @strcmp(i8* %7, i8* %op2) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

; <label>:16                                      ; preds = %13
  %17 = getelementptr inbounds [29 x %struct.anon]* @operators, i64 0, i64 %indvars.iv, i32 2
  %18 = load i32* %17, align 4, !tbaa !27
  br label %19

; <label>:19                                      ; preds = %13, %16
  %op2prec.1 = phi i32 [ %op2prec.04, %13 ], [ %18, %16 ]
  %20 = icmp ne i32 %op1prec.1, -1
  %21 = icmp ne i32 %op2prec.1, -1
  %or.cond = and i1 %20, %21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %or.cond, label %22, label %1

; <label>:22                                      ; preds = %1, %19
  %23 = sub nsw i32 %op2prec.1, %op1prec.1
  ret i32 %23
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @opencode(i8* nocapture readonly %operator, i32* nocapture %type, i32* nocapture %opcode) #1 {
  br label %4

; <label>:1                                       ; preds = %4
  %2 = trunc i64 %indvars.iv.next to i32
  %3 = icmp eq i32 %2, 28
  br i1 %3, label %.loopexit, label %4

; <label>:4                                       ; preds = %0, %1
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ]
  %5 = getelementptr inbounds [29 x %struct.anon]* @operators, i64 0, i64 %indvars.iv, i32 0
  %6 = load i8** %5, align 8, !tbaa !19
  %7 = tail call i32 @strcmp(i8* %6, i8* %operator) #10
  %8 = icmp eq i32 %7, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %8, label %9, label %1

; <label>:9                                       ; preds = %4
  %10 = getelementptr inbounds [29 x %struct.anon]* @operators, i64 0, i64 %indvars.iv, i32 1
  %11 = load i32* %10, align 8, !tbaa !28
  store i32 %11, i32* %type, align 4, !tbaa !11
  %12 = getelementptr inbounds [29 x %struct.anon]* @operators, i64 0, i64 %indvars.iv, i32 3
  %13 = load i32* %12, align 8, !tbaa !29
  store i32 %13, i32* %opcode, align 4, !tbaa !11
  br label %.loopexit

.loopexit:                                        ; preds = %1, %9
  ret void
}

; Function Attrs: optsize
declare i8* @Util_Strdup(i8*) #7

; Function Attrs: nounwind readnone
declare double @llvm.pow.f64(double, double) #8

; Function Attrs: nounwind optsize readnone
declare double @acos(double) #9

; Function Attrs: nounwind optsize readnone
declare double @asin(double) #9

; Function Attrs: nounwind optsize readnone
declare double @atan(double) #9

; Function Attrs: nounwind optsize readnone
declare double @ceil(double) #9

; Function Attrs: nounwind optsize readnone
declare double @cos(double) #9

; Function Attrs: nounwind optsize readnone
declare double @cosh(double) #9

; Function Attrs: nounwind optsize readnone
declare double @exp(double) #9

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #9

; Function Attrs: nounwind optsize readnone
declare double @floor(double) #9

; Function Attrs: nounwind optsize readnone
declare double @log(double) #9

; Function Attrs: nounwind optsize readnone
declare double @log10(double) #9

; Function Attrs: nounwind optsize readnone
declare double @sin(double) #9

; Function Attrs: nounwind optsize readnone
declare double @sinh(double) #9

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #9

; Function Attrs: nounwind optsize readnone
declare double @tan(double) #9

; Function Attrs: nounwind optsize readnone
declare double @tanh(double) #9

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind optsize }
attributes #11 = { noreturn nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"", !4, i64 0, !7, i64 8, !4, i64 16, !7, i64 24}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!3, !7, i64 8}
!9 = !{!3, !4, i64 16}
!10 = !{!3, !7, i64 24}
!11 = !{!5, !5, i64 0}
!12 = !{!13, !7, i64 16}
!13 = !{!"PToken", !7, i64 0, !7, i64 8, !7, i64 16}
!14 = !{!13, !7, i64 0}
!15 = !{!13, !7, i64 8}
!16 = !{!7, !7, i64 0}
!17 = !{!18, !5, i64 0}
!18 = !{!"", !5, i64 0, !5, i64 4}
!19 = !{!20, !7, i64 0}
!20 = !{!"", !7, i64 0, !5, i64 8, !4, i64 12, !5, i64 16}
!21 = !{!4, !4, i64 0}
!22 = !{i64 0, i64 4, !11, i64 8, i64 8, !23, i64 8, i64 4, !21}
!23 = !{!24, !24, i64 0}
!24 = !{!"double", !5, i64 0}
!25 = !{!26, !5, i64 0}
!26 = !{!"", !5, i64 0, !5, i64 8}
!27 = !{!20, !4, i64 12}
!28 = !{!20, !5, i64 8}
!29 = !{!20, !5, i64 16}

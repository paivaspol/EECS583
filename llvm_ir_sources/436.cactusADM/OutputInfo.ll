; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputInfo.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.anon.0 = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.IOBASIC_GH = type { i32, i32, i8, i8*, i8*, i32*, i32*, %struct.IOBASIC_REDUCTIONLIST*, %struct.PNamedData* }
%struct.IOBASIC_REDUCTIONLIST = type { i32, %struct.IOBASIC_REDUCTION* }
%struct.IOBASIC_REDUCTION = type { i32, i8*, i8, double, %struct.IOBASIC_REDUCTION* }
%struct.PNamedData = type { %struct.PNamedData*, %struct.PNamedData*, i8*, i8* }

@iobasicpriv_ = external global %struct.anon
@iorest_ = external global %struct.anon.0
@.str = private unnamed_addr constant [8 x i8] c"IOBasic\00", align 1
@.str1 = private unnamed_addr constant [13 x i8] c"%5d |%9.3f |\00", align 1
@.str2 = private unnamed_addr constant [13 x i8] c"%5d |%7.3e |\00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"%13.8f |\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"%11.6e |\00", align 1
@.str5 = private unnamed_addr constant [16 x i8] c" ------------ |\00", align 1
@__stdoutp = external global %struct.__sFILE*
@.str6 = private unnamed_addr constant [80 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputInfo.c\00", align 1
@.str7 = private unnamed_addr constant [79 x i8] c"Already done Info output for '%s' in current iteration (probably via triggers)\00", align 1
@.str8 = private unnamed_addr constant [93 x i8] c"$Header: /cactus/CactusBase/IOBasic/src/OutputInfo.c,v 1.34 2002/01/18 16:06:47 tradke Exp $\00", align 1
@CheckSteerableParameters.outInfo_vars_lastset = internal unnamed_addr global i32 -1, align 4
@CheckSteerableParameters.outInfo_reductions_lastset = internal unnamed_addr global i32 -1, align 4
@.str9 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str11 = private unnamed_addr constant [33 x i8] c"Info: Output every %d iterations\00", align 1
@.str12 = private unnamed_addr constant [19 x i8] c"outInfo_reductions\00", align 1
@.str13 = private unnamed_addr constant [13 x i8] c"outInfo_vars\00", align 1
@.str14 = private unnamed_addr constant [50 x i8] c"Failed to parse 'IOBasic::outInfo_vars' parameter\00", align 1
@.str15 = private unnamed_addr constant [43 x i8] c"option list '%s' for variable '%s' ignored\00", align 1
@.str16 = private unnamed_addr constant [22 x i8] c"CCTK_VARIABLE_COMPLEX\00", align 1
@.str17 = private unnamed_addr constant [13 x i8] c"scalar value\00", align 1
@.str18 = private unnamed_addr constant [10 x i8] c"real part\00", align 1
@.str19 = private unnamed_addr constant [10 x i8] c"imag part\00", align 1
@.str20 = private unnamed_addr constant [13 x i8] c"reductions=<\00", align 1
@.str21 = private unnamed_addr constant [57 x i8] c"AssignReductionList: invalid syntax for option list '%s'\00", align 1
@.str22 = private unnamed_addr constant [53 x i8] c"AssignReductionList: Invalid reduction operator '%s'\00", align 1
@.str23 = private unnamed_addr constant [71 x i8] c"AssignReductionList: Duplicate reduction operator '%s' will be ignored\00", align 1
@_DefaultRuneLocale = external global %struct._RuneLocale
@.str24 = private unnamed_addr constant [30 x i8] c"Info: Output requested for %s\00", align 1
@.str25 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str26 = private unnamed_addr constant [19 x i8] c"------------------\00", align 1
@.str27 = private unnamed_addr constant [16 x i8] c"---------------\00", align 1
@.str28 = private unnamed_addr constant [19 x i8] c"  it  |          |\00", align 1
@.str29 = private unnamed_addr constant [7 x i8] c" *%s |\00", align 1
@.str30 = private unnamed_addr constant [8 x i8] c" %-*s |\00", align 1
@.str31 = private unnamed_addr constant [18 x i8] c"      |    t     \00", align 1
@.str32 = private unnamed_addr constant [9 x i8] c"| %-12s \00", align 1
@str = private unnamed_addr constant [2 x i8] c"|\00"

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_IOBasic_OutputInfo_c() #0 {
  ret i8* getelementptr inbounds ([93 x i8]* @.str8, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOBasic_InfoOutputGH(%struct.cGH* %GH) #1 {
  %msg.i = alloca i8*, align 8
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #8
  %2 = bitcast i8* %1 to %struct.IOBASIC_GH*
  tail call fastcc void @CheckSteerableParameters(%struct.IOBASIC_GH* %2) #9
  %3 = getelementptr inbounds i8* %1, i64 4
  %4 = bitcast i8* %3 to i32*
  %5 = load i32* %4, align 4, !tbaa !2
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %177, label %7

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1
  %9 = load i32* %8, align 4, !tbaa !8
  %10 = srem i32 %9, %5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %177

; <label>:12                                      ; preds = %7
  %13 = tail call i32 @CCTK_NumVars() #8
  %14 = getelementptr inbounds i8* %1, i64 8
  %15 = load i8* %14, align 1, !tbaa !11
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %113, label %17

; <label>:17                                      ; preds = %12
  %18 = bitcast i8** %msg.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18)
  %19 = load i8** getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 12), align 8, !tbaa !12
  store i8* null, i8** %msg.i, align 8, !tbaa !14
  %20 = icmp sgt i32 %13, 0
  br i1 %20, label %.lr.ph20.i, label %.thread35.i

.thread35.i:                                      ; preds = %17
  %21 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str26, i64 0, i64 0)) #8
  br label %._crit_edge16.i

.lr.ph20.i:                                       ; preds = %17
  %22 = getelementptr inbounds i8* %1, i64 48
  %23 = bitcast i8* %22 to %struct.IOBASIC_REDUCTIONLIST**
  %24 = add i32 %13, -1
  br label %25

; <label>:25                                      ; preds = %47, %.lr.ph20.i
  %indvars.iv28.i = phi i64 [ 0, %.lr.ph20.i ], [ %indvars.iv.next29.i, %47 ]
  %num_columns.017.i = phi i32 [ 0, %.lr.ph20.i ], [ %29, %47 ]
  %26 = load %struct.IOBASIC_REDUCTIONLIST** %23, align 8, !tbaa !15
  %27 = getelementptr inbounds %struct.IOBASIC_REDUCTIONLIST* %26, i64 %indvars.iv28.i, i32 0
  %28 = load i32* %27, align 4, !tbaa !16
  %29 = add i32 %28, %num_columns.017.i
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %47, label %31

; <label>:31                                      ; preds = %25
  %32 = call i32 @CCTK_Equals(i8* %19, i8* getelementptr inbounds ([9 x i8]* @.str9, i64 0, i64 0)) #8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

; <label>:34                                      ; preds = %31
  %35 = call i32 @CCTK_Equals(i8* %19, i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0)) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %47, label %37

; <label>:37                                      ; preds = %34, %31
  %38 = trunc i64 %indvars.iv28.i to i32
  %39 = call i8* @CCTK_FullName(i32 %38) #8
  %40 = load i8** %msg.i, align 8, !tbaa !14
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

; <label>:42                                      ; preds = %37
  %43 = call i32 (i8**, i8*, ...)* @Util_asprintf(i8** %msg.i, i8* getelementptr inbounds ([30 x i8]* @.str24, i64 0, i64 0), i8* %39) #8
  br label %46

; <label>:44                                      ; preds = %37
  %45 = call i32 (i8**, i8*, ...)* @Util_asprintf(i8** %msg.i, i8* getelementptr inbounds ([6 x i8]* @.str25, i64 0, i64 0), i8* %40, i8* %39) #8
  call void @free(i8* %40) #8
  br label %46

; <label>:46                                      ; preds = %44, %42
  call void @free(i8* %39) #8
  br label %47

; <label>:47                                      ; preds = %46, %34, %25
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1
  %lftr.wideiv13 = trunc i64 %indvars.iv28.i to i32
  %exitcond14 = icmp eq i32 %lftr.wideiv13, %24
  br i1 %exitcond14, label %48, label %25

; <label>:48                                      ; preds = %47
  %.pre.i = load i8** %msg.i, align 8, !tbaa !14
  %49 = icmp eq i8* %.pre.i, null
  br i1 %49, label %53, label %50

; <label>:50                                      ; preds = %48
  %51 = call i32 @CCTK_Info(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* %.pre.i) #8
  %52 = load i8** %msg.i, align 8, !tbaa !14
  call void @free(i8* %52) #8
  br label %53

; <label>:53                                      ; preds = %50, %48
  %54 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str26, i64 0, i64 0)) #8
  %55 = icmp sgt i32 %29, 0
  br i1 %55, label %.lr.ph15.i, label %._crit_edge16.i

.lr.ph15.i:                                       ; preds = %53
  %56 = add i32 %29, -1
  br label %57

; <label>:57                                      ; preds = %57, %.lr.ph15.i
  %i.013.i = phi i32 [ 0, %.lr.ph15.i ], [ %59, %57 ]
  %58 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str27, i64 0, i64 0)) #8
  %59 = add nuw nsw i32 %i.013.i, 1
  %exitcond27.i = icmp eq i32 %i.013.i, %56
  br i1 %exitcond27.i, label %._crit_edge16.i, label %57

._crit_edge16.i:                                  ; preds = %57, %53, %.thread35.i
  %60 = phi i1 [ false, %.thread35.i ], [ false, %53 ], [ true, %57 ]
  %num_columns.0.lcssa3436.i = phi i32 [ 0, %.thread35.i ], [ %29, %53 ], [ %29, %57 ]
  %61 = call i32 @putchar(i32 10) #8
  %62 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str28, i64 0, i64 0)) #8
  %brmerge.demorgan.i = and i1 %20, %60
  br i1 %brmerge.demorgan.i, label %.lr.ph12.i, label %.loopexit1.i

.lr.ph12.i:                                       ; preds = %._crit_edge16.i
  %63 = getelementptr inbounds i8* %1, i64 48
  %64 = bitcast i8* %63 to %struct.IOBASIC_REDUCTIONLIST**
  %65 = add i32 %13, -1
  br label %66

; <label>:66                                      ; preds = %._crit_edge32.i, %.lr.ph12.i
  %indvars.iv23.i = phi i64 [ 0, %.lr.ph12.i ], [ %indvars.iv.next24.i, %._crit_edge32.i ]
  %67 = load %struct.IOBASIC_REDUCTIONLIST** %64, align 8, !tbaa !15
  %68 = getelementptr inbounds %struct.IOBASIC_REDUCTIONLIST* %67, i64 %indvars.iv23.i, i32 0
  %69 = load i32* %68, align 4, !tbaa !16
  %70 = icmp sgt i32 %69, 0
  %71 = trunc i64 %indvars.iv23.i to i32
  br i1 %70, label %72, label %._crit_edge32.i

; <label>:72                                      ; preds = %66
  %73 = call i8* @CCTK_FullName(i32 %71) #8
  %74 = call i64 @strlen(i8* %73) #8
  %75 = mul i32 %69, 15
  %76 = add i32 %75, -3
  %77 = zext i32 %76 to i64
  %78 = icmp ugt i64 %74, %77
  br i1 %78, label %79, label %84

; <label>:79                                      ; preds = %72
  %80 = add nsw i32 %75, -4
  %81 = sext i32 %80 to i64
  %.sum.i = sub i64 %74, %81
  %82 = getelementptr inbounds i8* %73, i64 %.sum.i
  %83 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str29, i64 0, i64 0), i8* %82) #8
  br label %86

; <label>:84                                      ; preds = %72
  %85 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str30, i64 0, i64 0), i32 %76, i8* %73) #8
  br label %86

; <label>:86                                      ; preds = %84, %79
  call void @free(i8* %73) #8
  br label %._crit_edge32.i

._crit_edge32.i:                                  ; preds = %86, %66
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1
  %exitcond12 = icmp eq i32 %71, %65
  br i1 %exitcond12, label %.loopexit1.i, label %66

.loopexit1.i:                                     ; preds = %._crit_edge32.i, %._crit_edge16.i
  %87 = call i32 @putchar(i32 10) #8
  %88 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str31, i64 0, i64 0)) #8
  br i1 %20, label %.lr.ph9.i, label %._crit_edge10.i

.lr.ph9.i:                                        ; preds = %.loopexit1.i
  %89 = getelementptr inbounds i8* %1, i64 48
  %90 = bitcast i8* %89 to %struct.IOBASIC_REDUCTIONLIST**
  %91 = add i32 %13, -1
  br label %92

; <label>:92                                      ; preds = %.loopexit.i, %.lr.ph9.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph9.i ], [ %indvars.iv.next.i, %.loopexit.i ]
  %93 = load %struct.IOBASIC_REDUCTIONLIST** %90, align 8, !tbaa !15
  %94 = getelementptr inbounds %struct.IOBASIC_REDUCTIONLIST* %93, i64 %indvars.iv.i, i32 0
  %95 = load i32* %94, align 4, !tbaa !16
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %.loopexit.i, label %97

; <label>:97                                      ; preds = %92
  %98 = getelementptr inbounds %struct.IOBASIC_REDUCTIONLIST* %93, i64 %indvars.iv.i, i32 1
  %reduction.03.i = load %struct.IOBASIC_REDUCTION** %98, align 8
  %99 = icmp eq %struct.IOBASIC_REDUCTION* %reduction.03.i, null
  br i1 %99, label %.loopexit.i, label %.lr.ph6.i

.lr.ph6.i:                                        ; preds = %97, %.lr.ph6.i
  %reduction.04.i = phi %struct.IOBASIC_REDUCTION* [ %reduction.0.i, %.lr.ph6.i ], [ %reduction.03.i, %97 ]
  %100 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %reduction.04.i, i64 0, i32 1
  %101 = load i8** %100, align 8, !tbaa !18
  %102 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str32, i64 0, i64 0), i8* %101) #8
  %103 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %reduction.04.i, i64 0, i32 4
  %reduction.0.i = load %struct.IOBASIC_REDUCTION** %103, align 8
  %104 = icmp eq %struct.IOBASIC_REDUCTION* %reduction.0.i, null
  br i1 %104, label %.loopexit.i, label %.lr.ph6.i

.loopexit.i:                                      ; preds = %.lr.ph6.i, %97, %92
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %lftr.wideiv9 = trunc i64 %indvars.iv.i to i32
  %exitcond10 = icmp eq i32 %lftr.wideiv9, %91
  br i1 %exitcond10, label %._crit_edge10.i, label %92

._crit_edge10.i:                                  ; preds = %.loopexit.i, %.loopexit1.i
  %puts.i = call i32 @puts(i8* getelementptr inbounds ([2 x i8]* @str, i64 0, i64 0)) #7
  %105 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str26, i64 0, i64 0)) #8
  br i1 %60, label %.lr.ph.i, label %PrintHeader.exit

.lr.ph.i:                                         ; preds = %._crit_edge10.i
  %106 = add i32 %num_columns.0.lcssa3436.i, -1
  br label %107

; <label>:107                                     ; preds = %107, %.lr.ph.i
  %i.12.i = phi i32 [ 0, %.lr.ph.i ], [ %109, %107 ]
  %108 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str27, i64 0, i64 0)) #8
  %109 = add nuw nsw i32 %i.12.i, 1
  %exitcond.i = icmp eq i32 %i.12.i, %106
  br i1 %exitcond.i, label %PrintHeader.exit, label %107

PrintHeader.exit:                                 ; preds = %107, %._crit_edge10.i
  %110 = call i32 @putchar(i32 10) #8
  %111 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !14
  %112 = call i32 @fflush(%struct.__sFILE* %111) #8
  store i8 0, i8* %14, align 1, !tbaa !11
  call void @llvm.lifetime.end(i64 8, i8* %18)
  br label %113

; <label>:113                                     ; preds = %12, %PrintHeader.exit
  %114 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16
  %115 = load double* %114, align 8, !tbaa !20
  %116 = call double @fabs(double %115) #10
  %117 = fcmp ogt double %116, 1.000000e-08
  %118 = fcmp oeq double %115, 0.000000e+00
  %or.cond = or i1 %118, %117
  %119 = fcmp olt double %116, 1.000000e+08
  %or.cond1 = or i1 %119, %or.cond
  %120 = load i32* %8, align 4, !tbaa !8
  br i1 %or.cond1, label %121, label %123

; <label>:121                                     ; preds = %113
  %122 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str1, i64 0, i64 0), i32 %120, double %115) #8
  br label %.preheader

; <label>:123                                     ; preds = %113
  %124 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0), i32 %120, double %115) #8
  br label %.preheader

.preheader:                                       ; preds = %123, %121
  %125 = icmp sgt i32 %13, 0
  br i1 %125, label %.lr.ph8, label %._crit_edge

.lr.ph8:                                          ; preds = %.preheader
  %126 = getelementptr inbounds i8* %1, i64 48
  %127 = bitcast i8* %126 to %struct.IOBASIC_REDUCTIONLIST**
  %128 = getelementptr inbounds i8* %1, i64 32
  %129 = bitcast i8* %128 to i32**
  %130 = add i32 %13, -1
  br label %131

; <label>:131                                     ; preds = %.loopexit, %.lr.ph8
  %indvars.iv = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next, %.loopexit ]
  %retval.06 = phi i32 [ 0, %.lr.ph8 ], [ %retval.2, %.loopexit ]
  %132 = load %struct.IOBASIC_REDUCTIONLIST** %127, align 8, !tbaa !15
  %133 = getelementptr inbounds %struct.IOBASIC_REDUCTIONLIST* %132, i64 %indvars.iv, i32 0
  %134 = load i32* %133, align 4, !tbaa !16
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %.loopexit, label %136

; <label>:136                                     ; preds = %131
  %137 = load i32** %129, align 8, !tbaa !21
  %138 = getelementptr inbounds i32* %137, i64 %indvars.iv
  %139 = load i32* %138, align 4, !tbaa !22
  %140 = load i32* %8, align 4, !tbaa !8
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %151, label %142

; <label>:142                                     ; preds = %136
  %143 = trunc i64 %indvars.iv to i32
  %144 = call i32 @IOBasic_WriteInfo(%struct.cGH* %GH, i32 %143) #8
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %151

; <label>:146                                     ; preds = %142
  %147 = load i32* %8, align 4, !tbaa !8
  %148 = load i32** %129, align 8, !tbaa !21
  %149 = getelementptr inbounds i32* %148, i64 %indvars.iv
  store i32 %147, i32* %149, align 4, !tbaa !22
  %150 = add nsw i32 %retval.06, 1
  br label %151

; <label>:151                                     ; preds = %136, %142, %146
  %retval.1 = phi i32 [ %150, %146 ], [ %retval.06, %142 ], [ %retval.06, %136 ]
  %152 = load %struct.IOBASIC_REDUCTIONLIST** %127, align 8, !tbaa !15
  %153 = getelementptr inbounds %struct.IOBASIC_REDUCTIONLIST* %152, i64 %indvars.iv, i32 1
  %reduction.04 = load %struct.IOBASIC_REDUCTION** %153, align 8
  %154 = icmp eq %struct.IOBASIC_REDUCTION* %reduction.04, null
  br i1 %154, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %151, %171
  %reduction.05 = phi %struct.IOBASIC_REDUCTION* [ %reduction.0, %171 ], [ %reduction.04, %151 ]
  %155 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %reduction.05, i64 0, i32 2
  %156 = load i8* %155, align 1, !tbaa !23
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %169, label %158

; <label>:158                                     ; preds = %.lr.ph
  %159 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %reduction.05, i64 0, i32 3
  %160 = load double* %159, align 8, !tbaa !24
  %161 = call double @fabs(double %160) #10
  %162 = fcmp ogt double %161, 1.000000e-08
  %163 = fcmp oeq double %160, 0.000000e+00
  %or.cond2 = or i1 %163, %162
  %164 = fcmp olt double %161, 1.000000e+08
  %or.cond3 = or i1 %164, %or.cond2
  br i1 %or.cond3, label %165, label %167

; <label>:165                                     ; preds = %158
  %166 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), double %160) #8
  br label %171

; <label>:167                                     ; preds = %158
  %168 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0), double %160) #8
  br label %171

; <label>:169                                     ; preds = %.lr.ph
  %170 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str5, i64 0, i64 0)) #8
  br label %171

; <label>:171                                     ; preds = %165, %167, %169
  %172 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %reduction.05, i64 0, i32 4
  %reduction.0 = load %struct.IOBASIC_REDUCTION** %172, align 8
  %173 = icmp eq %struct.IOBASIC_REDUCTION* %reduction.0, null
  br i1 %173, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %171, %151, %131
  %retval.2 = phi i32 [ %retval.06, %131 ], [ %retval.1, %151 ], [ %retval.1, %171 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %130
  br i1 %exitcond, label %._crit_edge, label %131

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %retval.0.lcssa = phi i32 [ 0, %.preheader ], [ %retval.2, %.loopexit ]
  %174 = call i32 @putchar(i32 10) #8
  %175 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !14
  %176 = call i32 @fflush(%struct.__sFILE* %175) #8
  br label %177

; <label>:177                                     ; preds = %0, %7, %._crit_edge
  %.0 = phi i32 [ %retval.0.lcssa, %._crit_edge ], [ 0, %7 ], [ 0, %0 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i8* @CCTK_GHExtension(%struct.cGH*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @CheckSteerableParameters(%struct.IOBASIC_GH* %myGH) #1 {
  %1 = load i8** getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 1), align 8, !tbaa !25
  %2 = load i32* getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 7), align 8, !tbaa !27
  %3 = load i32* getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 37), align 8, !tbaa !28
  %4 = load i8** getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 12), align 8, !tbaa !12
  %5 = getelementptr inbounds %struct.IOBASIC_GH* %myGH, i64 0, i32 1
  %6 = load i32* %5, align 4, !tbaa !2
  %7 = icmp sgt i32 %3, 0
  %8 = select i1 %7, i32 %3, i32 -1
  %9 = icmp sgt i32 %2, 0
  %. = select i1 %9, i32 %2, i32 %8
  store i32 %., i32* %5, align 4, !tbaa !2
  %10 = icmp eq i32 %., %6
  br i1 %10, label %20, label %11

; <label>:11                                      ; preds = %0
  %12 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([9 x i8]* @.str9, i64 0, i64 0)) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %11
  %15 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0)) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %thread-pre-split, label %17

; <label>:17                                      ; preds = %14, %11
  %18 = load i32* %5, align 4, !tbaa !2
  %19 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8]* @.str11, i64 0, i64 0), i32 %18) #8
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %17, %14
  %.pr = load i32* %5, align 4, !tbaa !2
  br label %20

; <label>:20                                      ; preds = %thread-pre-split, %0
  %21 = phi i32 [ %.pr, %thread-pre-split ], [ %6, %0 ]
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %62, label %23

; <label>:23                                      ; preds = %20
  %24 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([19 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #8
  %25 = load i32* @CheckSteerableParameters.outInfo_reductions_lastset, align 4, !tbaa !22
  %26 = icmp ne i32 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %24, i32* @CheckSteerableParameters.outInfo_reductions_lastset, align 4, !tbaa !22
  %28 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([13 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #8
  %29 = load i32* @CheckSteerableParameters.outInfo_vars_lastset, align 4, !tbaa !22
  %30 = icmp ne i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = or i32 %31, %27
  store i32 %28, i32* @CheckSteerableParameters.outInfo_vars_lastset, align 4, !tbaa !22
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %62, label %34

; <label>:34                                      ; preds = %23
  %35 = tail call i32 @CCTK_NumVars() #8
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %.lr.ph4, label %._crit_edge

.lr.ph4:                                          ; preds = %34
  %37 = getelementptr inbounds %struct.IOBASIC_GH* %myGH, i64 0, i32 7
  %38 = sext i32 %35 to i64
  br label %39

; <label>:39                                      ; preds = %.lr.ph4, %.backedge
  %indvars.iv = phi i64 [ %38, %.lr.ph4 ], [ %indvars.iv.next, %.backedge ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %40 = load %struct.IOBASIC_REDUCTIONLIST** %37, align 8, !tbaa !15
  %41 = getelementptr inbounds %struct.IOBASIC_REDUCTIONLIST* %40, i64 %indvars.iv.next, i32 0
  %42 = load i32* %41, align 4, !tbaa !16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %.backedge, label %45

.backedge:                                        ; preds = %.lr.ph, %45, %39
  %44 = icmp sgt i64 %indvars.iv, 1
  br i1 %44, label %39, label %._crit_edge

; <label>:45                                      ; preds = %39
  store i32 0, i32* %41, align 4, !tbaa !16
  %46 = getelementptr inbounds %struct.IOBASIC_REDUCTIONLIST* %40, i64 %indvars.iv.next, i32 1
  %47 = load %struct.IOBASIC_REDUCTION** %46, align 8, !tbaa !29
  %48 = icmp eq %struct.IOBASIC_REDUCTION* %47, null
  br i1 %48, label %.backedge, label %.lr.ph

.lr.ph:                                           ; preds = %45, %.lr.ph
  %reduction.01 = phi %struct.IOBASIC_REDUCTION* [ %50, %.lr.ph ], [ %47, %45 ]
  %49 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %reduction.01, i64 0, i32 4
  %50 = load %struct.IOBASIC_REDUCTION** %49, align 8, !tbaa !30
  %51 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %reduction.01, i64 0, i32 1
  %52 = load i8** %51, align 8, !tbaa !18
  tail call void @free(i8* %52) #9
  %53 = bitcast %struct.IOBASIC_REDUCTION* %reduction.01 to i8*
  tail call void @free(i8* %53) #9
  %54 = icmp eq %struct.IOBASIC_REDUCTION* %50, null
  br i1 %54, label %.backedge, label %.lr.ph

._crit_edge:                                      ; preds = %.backedge, %34
  %55 = bitcast %struct.IOBASIC_GH* %myGH to i8*
  %56 = tail call i32 @CCTK_TraverseString(i8* %1, void (i32, i8*, i8*)* @AssignReductionList, i8* %55, i32 3) #8
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

; <label>:58                                      ; preds = %._crit_edge
  %59 = tail call i32 @CCTK_Warn(i32 1, i32 376, i8* getelementptr inbounds ([80 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str14, i64 0, i64 0)) #8
  br label %60

; <label>:60                                      ; preds = %58, %._crit_edge
  %61 = getelementptr inbounds %struct.IOBASIC_GH* %myGH, i64 0, i32 2
  store i8 1, i8* %61, align 1, !tbaa !11
  br label %62

; <label>:62                                      ; preds = %60, %23, %20
  ret void
}

; Function Attrs: optsize
declare i32 @CCTK_NumVars() #2

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #4

; Function Attrs: optsize
declare i32 @IOBasic_WriteInfo(%struct.cGH*, i32) #2

; Function Attrs: nounwind optsize
declare i32 @putchar(i32) #4

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOBasic_TimeForInfoOutput(%struct.cGH* %GH, i32 %vindex) #1 {
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #8
  %2 = bitcast i8* %1 to %struct.IOBASIC_GH*
  tail call fastcc void @CheckSteerableParameters(%struct.IOBASIC_GH* %2) #9
  %3 = getelementptr inbounds i8* %1, i64 4
  %4 = bitcast i8* %3 to i32*
  %5 = load i32* %4, align 4, !tbaa !2
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %31, label %7

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1
  %9 = load i32* %8, align 4, !tbaa !8
  %10 = srem i32 %9, %5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %31

; <label>:12                                      ; preds = %7
  %13 = sext i32 %vindex to i64
  %14 = getelementptr inbounds i8* %1, i64 48
  %15 = bitcast i8* %14 to %struct.IOBASIC_REDUCTIONLIST**
  %16 = load %struct.IOBASIC_REDUCTIONLIST** %15, align 8, !tbaa !15
  %17 = getelementptr inbounds %struct.IOBASIC_REDUCTIONLIST* %16, i64 %13, i32 0
  %18 = load i32* %17, align 4, !tbaa !16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %20

; <label>:20                                      ; preds = %12
  %21 = getelementptr inbounds i8* %1, i64 32
  %22 = bitcast i8* %21 to i32**
  %23 = load i32** %22, align 8, !tbaa !21
  %24 = getelementptr inbounds i32* %23, i64 %13
  %25 = load i32* %24, align 4, !tbaa !22
  %26 = icmp ne i32 %25, %9
  %27 = zext i1 %26 to i32
  br i1 %26, label %31, label %28

; <label>:28                                      ; preds = %20
  %29 = tail call i8* @CCTK_FullName(i32 %vindex) #8
  %30 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 223, i8* getelementptr inbounds ([80 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8]* @.str7, i64 0, i64 0), i8* %29) #8
  tail call void @free(i8* %29) #9
  br label %31

; <label>:31                                      ; preds = %0, %12, %7, %20, %28
  %retval.0 = phi i32 [ %27, %20 ], [ %27, %28 ], [ 0, %7 ], [ 0, %12 ], [ 0, %0 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i8* @CCTK_FullName(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOBasic_TriggerInfoOutput(%struct.cGH* %GH, i32 %vindex) #1 {
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #8
  %2 = tail call i32 @IOBasic_WriteInfo(%struct.cGH* %GH, i32 %vindex) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %12

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1
  %6 = load i32* %5, align 4, !tbaa !8
  %7 = sext i32 %vindex to i64
  %8 = getelementptr inbounds i8* %1, i64 32
  %9 = bitcast i8* %8 to i32**
  %10 = load i32** %9, align 8, !tbaa !21
  %11 = getelementptr inbounds i32* %10, i64 %7
  store i32 %6, i32* %11, align 4, !tbaa !22
  br label %12

; <label>:12                                      ; preds = %4, %0
  ret i32 %2
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_VInfo(i8*, i8*, ...) #2

; Function Attrs: optsize
declare i32 @CCTK_ParameterQueryTimesSet(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_TraverseString(i8*, void (i32, i8*, i8*)*, i8*, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal void @AssignReductionList(i32 %vindex, i8* %optstring, i8* nocapture readonly %arg) #1 {
  %1 = load i8** getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 0), align 8, !tbaa !31
  %2 = sext i32 %vindex to i64
  %3 = getelementptr inbounds i8* %arg, i64 48
  %4 = bitcast i8* %3 to %struct.IOBASIC_REDUCTIONLIST**
  %5 = load %struct.IOBASIC_REDUCTIONLIST** %4, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.IOBASIC_REDUCTIONLIST* %5, i64 %2
  %7 = tail call i32 @CCTK_GroupTypeFromVarI(i32 %vindex) #8
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %42

; <label>:9                                       ; preds = %0
  %10 = icmp eq i8* %optstring, null
  br i1 %10, label %14, label %11

; <label>:11                                      ; preds = %9
  %12 = tail call i8* @CCTK_VarName(i32 %vindex) #8
  %13 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 431, i8* getelementptr inbounds ([80 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str15, i64 0, i64 0), i8* %optstring, i8* %12) #8
  br label %14

; <label>:14                                      ; preds = %9, %11
  %15 = tail call i8* @malloc(i64 40) #8
  %16 = getelementptr inbounds %struct.IOBASIC_REDUCTIONLIST* %5, i64 %2, i32 1
  %17 = bitcast %struct.IOBASIC_REDUCTION** %16 to i8**
  store i8* %15, i8** %17, align 8, !tbaa !29
  %18 = tail call i32 @CCTK_VarTypeI(i32 %vindex) #8
  %19 = tail call i8* @CCTK_VarTypeName(i32 %18) #8
  %20 = tail call i32 @strncmp(i8* %19, i8* getelementptr inbounds ([22 x i8]* @.str16, i64 0, i64 0), i64 21) #8
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.IOBASIC_REDUCTIONLIST* %6, i64 0, i32 0
  br i1 %21, label %28, label %23

; <label>:23                                      ; preds = %14
  store i32 1, i32* %22, align 4, !tbaa !16
  %24 = tail call i8* @strdup(i8* getelementptr inbounds ([13 x i8]* @.str17, i64 0, i64 0)) #8
  %25 = load %struct.IOBASIC_REDUCTION** %16, align 8, !tbaa !29
  %26 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %25, i64 0, i32 1
  store i8* %24, i8** %26, align 8, !tbaa !18
  %27 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %25, i64 0, i32 4
  store %struct.IOBASIC_REDUCTION* null, %struct.IOBASIC_REDUCTION** %27, align 8, !tbaa !30
  br label %131

; <label>:28                                      ; preds = %14
  store i32 2, i32* %22, align 4, !tbaa !16
  %29 = tail call i8* @strdup(i8* getelementptr inbounds ([10 x i8]* @.str18, i64 0, i64 0)) #8
  %30 = load %struct.IOBASIC_REDUCTION** %16, align 8, !tbaa !29
  %31 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %30, i64 0, i32 1
  store i8* %29, i8** %31, align 8, !tbaa !18
  %32 = tail call i8* @malloc(i64 40) #8
  %33 = load %struct.IOBASIC_REDUCTION** %16, align 8, !tbaa !29
  %34 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %33, i64 0, i32 4
  %35 = bitcast %struct.IOBASIC_REDUCTION** %34 to i8**
  store i8* %32, i8** %35, align 8, !tbaa !30
  %36 = tail call i8* @strdup(i8* getelementptr inbounds ([10 x i8]* @.str19, i64 0, i64 0)) #8
  %37 = load %struct.IOBASIC_REDUCTION** %16, align 8, !tbaa !29
  %38 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %37, i64 0, i32 4
  %39 = load %struct.IOBASIC_REDUCTION** %38, align 8, !tbaa !30
  %40 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %39, i64 0, i32 1
  store i8* %36, i8** %40, align 8, !tbaa !18
  %41 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %39, i64 0, i32 4
  store %struct.IOBASIC_REDUCTION* null, %struct.IOBASIC_REDUCTION** %41, align 8, !tbaa !30
  br label %131

; <label>:42                                      ; preds = %0
  %43 = getelementptr inbounds %struct.IOBASIC_REDUCTIONLIST* %6, i64 0, i32 0
  store i32 0, i32* %43, align 4, !tbaa !16
  %44 = getelementptr inbounds %struct.IOBASIC_REDUCTIONLIST* %5, i64 %2, i32 1
  store %struct.IOBASIC_REDUCTION* null, %struct.IOBASIC_REDUCTION** %44, align 8, !tbaa !29
  %45 = icmp eq i8* %optstring, null
  br i1 %45, label %63, label %46

; <label>:46                                      ; preds = %42
  %47 = tail call i32 @strncmp(i8* %optstring, i8* getelementptr inbounds ([13 x i8]* @.str20, i64 0, i64 0), i64 12) #8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %61

; <label>:49                                      ; preds = %46
  %50 = tail call i64 @strlen(i8* %optstring) #8
  %51 = add i64 %50, -1
  %52 = getelementptr inbounds i8* %optstring, i64 %51
  %53 = load i8* %52, align 1, !tbaa !32
  %54 = icmp eq i8 %53, 62
  br i1 %54, label %55, label %61

; <label>:55                                      ; preds = %49
  %56 = getelementptr inbounds i8* %optstring, i64 12
  %57 = tail call i8* @strdup(i8* %56) #8
  %58 = tail call i64 @strlen(i8* %57) #8
  %59 = add i64 %58, -1
  %60 = getelementptr inbounds i8* %57, i64 %59
  store i8 0, i8* %60, align 1, !tbaa !32
  br label %65

; <label>:61                                      ; preds = %49, %46
  %62 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 476, i8* getelementptr inbounds ([80 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8]* @.str21, i64 0, i64 0), i8* %optstring) #8
  br label %131

; <label>:63                                      ; preds = %42
  %64 = tail call i8* @strdup(i8* %1) #8
  br label %65

; <label>:65                                      ; preds = %63, %55
  %reduction_op_list.0 = phi i8* [ %57, %55 ], [ %64, %63 ]
  %66 = tail call i64 @strlen(i8* %reduction_op_list.0) #8
  %67 = add i64 %66, 1
  %68 = tail call i8* @malloc(i64 %67) #8
  %69 = icmp eq i8* %reduction_op_list.0, null
  br i1 %69, label %.critedge, label %.lr.ph15

.lr.ph15:                                         ; preds = %65
  %70 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %68, i1 false)
  %71 = load i8* %reduction_op_list.0, align 1, !tbaa !32
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %.critedge, label %.preheader11

.preheader11:                                     ; preds = %.backedge.backedge, %.lr.ph15, %isspace.exit._crit_edge
  %73 = phi i8 [ %.pre, %isspace.exit._crit_edge ], [ %108, %.backedge.backedge ], [ %71, %.lr.ph15 ]
  %string_start.1 = phi i8* [ %82, %isspace.exit._crit_edge ], [ %string_end.0, %.backedge.backedge ], [ %reduction_op_list.0, %.lr.ph15 ]
  %isascii.i.i8 = icmp sgt i8 %73, -1
  br i1 %isascii.i.i8, label %74, label %79

; <label>:74                                      ; preds = %.preheader11
  %75 = sext i8 %73 to i64
  %76 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %75
  %77 = load i32* %76, align 4, !tbaa !22
  %78 = and i32 %77, 16384
  br label %isspace.exit

; <label>:79                                      ; preds = %.preheader11
  %80 = sext i8 %73 to i32
  %81 = tail call i32 @__maskrune(i32 %80, i64 16384) #8
  br label %isspace.exit

isspace.exit:                                     ; preds = %74, %79
  %.sink.i.in.i = phi i32 [ %78, %74 ], [ %81, %79 ]
  %.sink.i.i = icmp eq i32 %.sink.i.in.i, 0
  %82 = getelementptr inbounds i8* %string_start.1, i64 1
  br i1 %.sink.i.i, label %83, label %isspace.exit._crit_edge

isspace.exit._crit_edge:                          ; preds = %isspace.exit
  %.pre = load i8* %82, align 1, !tbaa !32
  br label %.preheader11

; <label>:83                                      ; preds = %isspace.exit
  %84 = load i8* %string_start.1, align 1, !tbaa !32
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %.critedge, label %.preheader10

.preheader10:                                     ; preds = %83, %isspace.exit5
  %string_start.1.pn = phi i8* [ %string_end.0, %isspace.exit5 ], [ %string_start.1, %83 ]
  %string_end.0 = getelementptr inbounds i8* %string_start.1.pn, i64 1
  %86 = load i8* %string_end.0, align 1, !tbaa !32
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %.critedge1, label %88

; <label>:88                                      ; preds = %.preheader10
  %isascii.i.i29 = icmp sgt i8 %86, -1
  br i1 %isascii.i.i29, label %89, label %94

; <label>:89                                      ; preds = %88
  %90 = sext i8 %86 to i64
  %91 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %90
  %92 = load i32* %91, align 4, !tbaa !22
  %93 = and i32 %92, 16384
  br label %isspace.exit5

; <label>:94                                      ; preds = %88
  %95 = sext i8 %86 to i32
  %96 = tail call i32 @__maskrune(i32 %95, i64 16384) #8
  br label %isspace.exit5

isspace.exit5:                                    ; preds = %89, %94
  %.sink.i.in.i3 = phi i32 [ %93, %89 ], [ %96, %94 ]
  %.sink.i.i4 = icmp eq i32 %.sink.i.in.i3, 0
  br i1 %.sink.i.i4, label %.preheader10, label %.critedge1

.critedge1:                                       ; preds = %isspace.exit5, %.preheader10
  %97 = ptrtoint i8* %string_end.0 to i64
  %98 = ptrtoint i8* %string_start.1 to i64
  %99 = sub i64 %97, %98
  %100 = tail call i8* @__strncpy_chk(i8* %68, i8* %string_start.1, i64 %99, i64 %70) #8
  %101 = getelementptr inbounds i8* %68, i64 %99
  store i8 0, i8* %101, align 1, !tbaa !32
  %102 = tail call i32 @CCTK_ReductionHandle(i8* %68) #8
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %106, label %.preheader

.preheader:                                       ; preds = %.critedge1
  %104 = load %struct.IOBASIC_REDUCTION** %44, align 8, !tbaa !14
  %105 = icmp eq %struct.IOBASIC_REDUCTION* %104, null
  br i1 %105, label %._crit_edge, label %.lr.ph

; <label>:106                                     ; preds = %.critedge1
  %107 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 518, i8* getelementptr inbounds ([80 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str22, i64 0, i64 0), i8* %68) #8
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %106, %119, %._crit_edge
  %108 = load i8* %string_end.0, align 1, !tbaa !32
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %.critedge, label %.preheader11

; <label>:110                                     ; preds = %.lr.ph
  %111 = load %struct.IOBASIC_REDUCTION** %118, align 8, !tbaa !14
  %112 = icmp eq %struct.IOBASIC_REDUCTION* %111, null
  br i1 %112, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %110
  %113 = phi %struct.IOBASIC_REDUCTION* [ %111, %110 ], [ %104, %.preheader ]
  %114 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %113, i64 0, i32 1
  %115 = load i8** %114, align 8, !tbaa !18
  %116 = tail call i32 @strcmp(i8* %115, i8* %68) #8
  %117 = icmp eq i32 %116, 0
  %118 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %113, i64 0, i32 4
  br i1 %117, label %119, label %110

; <label>:119                                     ; preds = %.lr.ph
  %120 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 3, i32 537, i8* getelementptr inbounds ([80 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8]* @.str23, i64 0, i64 0), i8* %68) #8
  br label %.backedge.backedge

._crit_edge:                                      ; preds = %110, %.preheader
  %new_reduction.0.lcssa = phi %struct.IOBASIC_REDUCTION** [ %44, %.preheader ], [ %118, %110 ]
  %121 = tail call i8* @malloc(i64 40) #8
  %122 = bitcast %struct.IOBASIC_REDUCTION** %new_reduction.0.lcssa to i8**
  store i8* %121, i8** %122, align 8, !tbaa !14
  %123 = bitcast i8* %121 to i32*
  store i32 %102, i32* %123, align 4, !tbaa !33
  %124 = tail call i8* @strdup(i8* %68) #8
  %125 = load %struct.IOBASIC_REDUCTION** %new_reduction.0.lcssa, align 8, !tbaa !14
  %126 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %125, i64 0, i32 1
  store i8* %124, i8** %126, align 8, !tbaa !18
  %127 = load %struct.IOBASIC_REDUCTION** %new_reduction.0.lcssa, align 8, !tbaa !14
  %128 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %127, i64 0, i32 4
  store %struct.IOBASIC_REDUCTION* null, %struct.IOBASIC_REDUCTION** %128, align 8, !tbaa !30
  %129 = load i32* %43, align 4, !tbaa !16
  %130 = add i32 %129, 1
  store i32 %130, i32* %43, align 4, !tbaa !16
  br label %.backedge.backedge

.critedge:                                        ; preds = %.lr.ph15, %83, %.backedge.backedge, %65
  tail call void @free(i8* %reduction_op_list.0) #9
  tail call void @free(i8* %68) #9
  br label %131

; <label>:131                                     ; preds = %23, %28, %.critedge, %61
  ret void
}

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupTypeFromVarI(i32) #2

; Function Attrs: optsize
declare i8* @CCTK_VarName(i32) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: optsize
declare i8* @CCTK_VarTypeName(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VarTypeI(i32) #2

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i8* @__strncpy_chk(i8*, i8*, i64, i64) #4

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #6

; Function Attrs: optsize
declare i32 @CCTK_ReductionHandle(i8*) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: optsize
declare i32 @__maskrune(i32, i64) #2

; Function Attrs: optsize
declare i32 @Util_asprintf(i8**, i8*, ...) #2

; Function Attrs: optsize
declare i32 @CCTK_Info(i8*, i8*) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #7

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 4}
!3 = !{!"IOBASIC_GH", !4, i64 0, !4, i64 4, !5, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!9, !4, i64 4}
!9 = !{!"", !4, i64 0, !4, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !10, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !4, i64 104, !7, i64 112, !10, i64 120, !7, i64 128, !7, i64 136, !7, i64 144}
!10 = !{!"double", !5, i64 0}
!11 = !{!3, !5, i64 8}
!12 = !{!13, !7, i64 96}
!13 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !4, i64 184, !4, i64 188, !4, i64 192, !4, i64 196, !4, i64 200, !4, i64 204, !4, i64 208, !4, i64 212, !4, i64 216, !4, i64 220, !4, i64 224, !4, i64 228, !4, i64 232, !4, i64 236, !4, i64 240, !4, i64 244, !4, i64 248, !4, i64 252, !4, i64 256, !4, i64 260, !4, i64 264, !4, i64 268, !4, i64 272, !4, i64 276, !4, i64 280, !4, i64 284, !4, i64 288, !4, i64 292}
!14 = !{!7, !7, i64 0}
!15 = !{!3, !7, i64 48}
!16 = !{!17, !4, i64 0}
!17 = !{!"IOBASIC_REDUCTIONLIST", !4, i64 0, !7, i64 8}
!18 = !{!19, !7, i64 8}
!19 = !{!"IOBASIC_REDUCTION", !4, i64 0, !7, i64 8, !5, i64 16, !10, i64 24, !7, i64 32}
!20 = !{!9, !10, i64 120}
!21 = !{!3, !7, i64 32}
!22 = !{!4, !4, i64 0}
!23 = !{!19, !5, i64 16}
!24 = !{!19, !10, i64 24}
!25 = !{!26, !7, i64 8}
!26 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !4, i64 56, !4, i64 60}
!27 = !{!26, !4, i64 56}
!28 = !{!13, !4, i64 240}
!29 = !{!17, !7, i64 8}
!30 = !{!19, !7, i64 32}
!31 = !{!26, !7, i64 0}
!32 = !{!5, !5, i64 0}
!33 = !{!19, !4, i64 0}

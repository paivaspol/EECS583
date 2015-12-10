; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/ParseFile.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@lineno = internal unnamed_addr global i32 1, align 4
@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [45 x i8] c"Parse error at line %d.  No value supplied.\0A\00", align 1
@.str1 = private unnamed_addr constant [8 x i8] c"%s%s%s\0A\00", align 1
@.str2 = private unnamed_addr constant [26 x i8] c"WARNING: Multiple string \00", align 1
@.str3 = private unnamed_addr constant [26 x i8] c"tokens not supported for \00", align 1
@.str4 = private unnamed_addr constant [22 x i8] c"This is a fatal error\00", align 1
@.str5 = private unnamed_addr constant [58 x i8] c"%sWarning:%s Quoted string contains newline for token %s\0A\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str10 = private unnamed_addr constant [85 x i8] c"$Header: /cactus/Cactus/src/util/ParseFile.c,v 1.16 2002/01/02 12:24:42 tradke Exp $\00", align 1
@.str11 = private unnamed_addr constant [44 x i8] c"WARNING: Parser buffer overflow on line %d\0A\00", align 1
@.str12 = private unnamed_addr constant [49 x i8] c"This indicates either an incorrect parm file or\0A\00", align 1
@.str13 = private unnamed_addr constant [115 x i8] c"the need to recompile ../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/ParseFile.c with a bigger\0A\00", align 1
@.str14 = private unnamed_addr constant [14 x i8] c"BUF_SZ parm.\0A\00", align 1
@str = private unnamed_addr constant [61 x i8] c"This could indicated a parameter file error or missing quote\00"

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_util_ParseFile_c() #0 {
  ret i8* getelementptr inbounds ([85 x i8]* @.str10, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ParseFile(%struct.__sFILE* nocapture %ifp, i32 (i8*, i8*, i32)* nocapture %set_function, %struct.tFleshConfig* nocapture readnone %ConfigData) #1 {
  %filename = alloca [500 x i8], align 16
  %dir = alloca i8*, align 8
  %file = alloca i8*, align 8
  %1 = tail call i8* @malloc(i64 32768) #8
  %2 = getelementptr inbounds i8* %1, i64 8192
  %3 = getelementptr inbounds i8* %1, i64 16384
  %4 = getelementptr inbounds i8* %1, i64 24576
  %5 = call i32 @fgetc(%struct.__sFILE* %ifp) #8
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %.thread76._crit_edge, label %.preheader86.lr.ph

.preheader86.lr.ph:                               ; preds = %0
  %7 = getelementptr inbounds [500 x i8]* %filename, i64 0, i64 0
  br label %.preheader86

.preheader86:                                     ; preds = %.preheader86.lr.ph, %.thread76.backedge
  %8 = phi i32 [ %5, %.preheader86.lr.ph ], [ %122, %.thread76.backedge ]
  %num_errors.0138 = phi i32 [ 0, %.preheader86.lr.ph ], [ %num_errors.0.be, %.thread76.backedge ]
  %intoken.0137 = phi i32 [ 0, %.preheader86.lr.ph ], [ %intoken.0.be, %.thread76.backedge ]
  %9 = and i32 %8, -3
  %10 = icmp eq i32 %9, 33
  br i1 %10, label %.critedge, label %._crit_edge

.critedge:                                        ; preds = %.loopexit, %.critedge, %.preheader86
  %11 = call i32 @fgetc(%struct.__sFILE* %ifp) #8
  switch i32 %11, label %.critedge [
    i32 10, label %12
    i32 -1, label %.loopexit
  ]

; <label>:12                                      ; preds = %.critedge
  %13 = load i32* @lineno, align 4, !tbaa !2
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @lineno, align 4, !tbaa !2
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge, %12
  %15 = call i32 @fgetc(%struct.__sFILE* %ifp) #8
  %16 = and i32 %15, -3
  %17 = icmp eq i32 %16, 33
  br i1 %17, label %.critedge, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit, %.preheader86
  %c.0.lcssa = phi i32 [ %8, %.preheader86 ], [ %15, %.loopexit ]
  %18 = icmp eq i32 %c.0.lcssa, 10
  br i1 %18, label %19, label %28

; <label>:19                                      ; preds = %._crit_edge
  %20 = icmp eq i32 %intoken.0137, 0
  br i1 %20, label %.thread72, label %21

; <label>:21                                      ; preds = %19
  %22 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %23 = load i32* @lineno, align 4, !tbaa !2
  %24 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %22, i8* getelementptr inbounds ([45 x i8]* @.str, i64 0, i64 0), i32 %23) #8
  %25 = add nsw i32 %num_errors.0138, 1
  br label %.thread72

.thread72:                                        ; preds = %19, %21
  %num_errors.1 = phi i32 [ %25, %21 ], [ %num_errors.0138, %19 ]
  %26 = load i32* @lineno, align 4, !tbaa !2
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @lineno, align 4, !tbaa !2
  br label %switch.early.test

; <label>:28                                      ; preds = %._crit_edge
  %29 = icmp ne i32 %intoken.0137, 0
  %30 = icmp ne i32 %c.0.lcssa, 61
  %or.cond = and i1 %29, %30
  br i1 %or.cond, label %31, label %37

; <label>:31                                      ; preds = %28
  %32 = trunc i32 %c.0.lcssa to i8
  %33 = add nsw i32 %intoken.0137, 1
  %34 = sext i32 %intoken.0137 to i64
  %35 = getelementptr inbounds i8* %1, i64 %34
  store i8 %32, i8* %35, align 1, !tbaa !8
  %36 = load i32* @lineno, align 4, !tbaa !2
  call fastcc void @CheckBuf(i32 %33, i32 %36) #9
  br label %37

; <label>:37                                      ; preds = %31, %28
  %intoken.3 = phi i32 [ %33, %31 ], [ %intoken.0137, %28 ]
  %38 = icmp eq i32 %intoken.3, 0
  br i1 %38, label %switch.early.test, label %41

switch.early.test:                                ; preds = %37, %.thread72
  %num_errors.27173 = phi i32 [ %num_errors.1, %.thread72 ], [ %num_errors.0138, %37 ]
  switch i32 %c.0.lcssa, label %39 [
    i32 32, label %.thread76.backedge
    i32 10, label %.thread76.backedge
    i32 9, label %.thread76.backedge
  ]

; <label>:39                                      ; preds = %switch.early.test
  %40 = trunc i32 %c.0.lcssa to i8
  store i8 %40, i8* %1, align 1, !tbaa !8
  br label %41

; <label>:41                                      ; preds = %37, %39
  %num_errors.27174 = phi i32 [ %num_errors.27173, %39 ], [ %num_errors.0138, %37 ]
  %intoken.4 = phi i32 [ 1, %39 ], [ %intoken.3, %37 ]
  %42 = icmp eq i32 %c.0.lcssa, 61
  br i1 %42, label %43, label %.thread76.backedge

; <label>:43                                      ; preds = %41
  %44 = sext i32 %intoken.4 to i64
  %45 = getelementptr inbounds i8* %1, i64 %44
  store i8 0, i8* %45, align 1, !tbaa !8
  %46 = call i64 @strlen(i8* %1) #8
  %47 = add i64 %46, 2
  %48 = call i8* @malloc(i64 %47) #8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %removeSpaces.exit, label %50

; <label>:50                                      ; preds = %43
  %51 = call i64 @llvm.objectsize.i64.p0i8(i8* %48, i1 false) #4
  %52 = call i8* @__strcpy_chk(i8* %48, i8* %1, i64 %51) #8
  %strlenfirst.i = load i8* %48, align 1
  %53 = icmp eq i8 %strlenfirst.i, 0
  br i1 %53, label %removeSpaces.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %50, %._crit_edge.i
  %54 = phi i8 [ %.pre.i, %._crit_edge.i ], [ %strlenfirst.i, %50 ]
  %j.02.i = phi i32 [ %j.1.i, %._crit_edge.i ], [ 0, %50 ]
  %i.01.i = phi i32 [ %62, %._crit_edge.i ], [ 0, %50 ]
  switch i8 %54, label %55 [
    i8 32, label %59
    i8 9, label %59
    i8 10, label %59
  ]

; <label>:55                                      ; preds = %.lr.ph.i
  %56 = add i32 %j.02.i, 1
  %57 = zext i32 %j.02.i to i64
  %58 = getelementptr inbounds i8* %1, i64 %57
  store i8 %54, i8* %58, align 1, !tbaa !8
  br label %59

; <label>:59                                      ; preds = %55, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %j.1.i = phi i32 [ %56, %55 ], [ %j.02.i, %.lr.ph.i ], [ %j.02.i, %.lr.ph.i ], [ %j.02.i, %.lr.ph.i ]
  %60 = zext i32 %j.1.i to i64
  %61 = getelementptr inbounds i8* %1, i64 %60
  store i8 0, i8* %61, align 1, !tbaa !8
  %62 = add i32 %i.01.i, 1
  %63 = zext i32 %62 to i64
  %64 = call i64 @strlen(i8* %48) #8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %._crit_edge.i, label %removeSpaces.exit

._crit_edge.i:                                    ; preds = %59
  %.phi.trans.insert.i = getelementptr inbounds i8* %48, i64 %63
  %.pre.i = load i8* %.phi.trans.insert.i, align 1, !tbaa !8
  br label %.lr.ph.i

removeSpaces.exit:                                ; preds = %59, %43, %50
  call void @free(i8* %48) #8
  %strlenfirst = load i8* %1, align 1
  %66 = icmp eq i8 %strlenfirst, 0
  br i1 %66, label %.preheader84, label %.lr.ph

.lr.ph:                                           ; preds = %removeSpaces.exit
  %67 = call i64 @strlen(i8* %1) #8
  %68 = icmp eq i8 %strlenfirst, 44
  %.ntokens.0186 = select i1 %68, i32 2, i32 1
  %69 = icmp ugt i64 %67, 1
  br i1 %69, label %._crit_edge171, label %.preheader84

.preheader84:                                     ; preds = %.lr.ph, %._crit_edge171, %removeSpaces.exit
  %ntokens.0.lcssa = phi i32 [ 1, %removeSpaces.exit ], [ %.ntokens.0186, %.lr.ph ], [ %.ntokens.0, %._crit_edge171 ]
  br label %.backedge85

._crit_edge171:                                   ; preds = %.lr.ph, %._crit_edge171
  %70 = phi i64 [ %75, %._crit_edge171 ], [ 1, %.lr.ph ]
  %71 = phi i32 [ %74, %._crit_edge171 ], [ 1, %.lr.ph ]
  %.ntokens.0187 = phi i32 [ %.ntokens.0, %._crit_edge171 ], [ %.ntokens.0186, %.lr.ph ]
  %.phi.trans.insert = getelementptr inbounds i8* %1, i64 %70
  %.pre = load i8* %.phi.trans.insert, align 1, !tbaa !8
  %72 = icmp eq i8 %.pre, 44
  %73 = zext i1 %72 to i32
  %.ntokens.0 = add nsw i32 %73, %.ntokens.0187
  %74 = add i32 %71, 1
  %75 = zext i32 %74 to i64
  %76 = icmp ult i64 %75, %67
  br i1 %76, label %._crit_edge171, label %.preheader84

.backedge85:                                      ; preds = %.backedge85, %.backedge85, %78, %.preheader84
  %77 = call i32 @fgetc(%struct.__sFILE* %ifp) #8
  switch i32 %77, label %124 [
    i32 36, label %105
    i32 34, label %81
    i32 10, label %78
    i32 9, label %.backedge85
    i32 32, label %.backedge85
  ]

; <label>:78                                      ; preds = %.backedge85
  %79 = load i32* @lineno, align 4, !tbaa !2
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* @lineno, align 4, !tbaa !2
  br label %.backedge85

; <label>:81                                      ; preds = %.backedge85
  %82 = icmp sgt i32 %ntokens.0.lcssa, 1
  br i1 %82, label %83, label %.preheader83

; <label>:83                                      ; preds = %81
  %84 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %85 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %84, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8]* @.str3, i64 0, i64 0), i8* %1) #8
  %86 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %87 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str4, i64 0, i64 0), i64 21, i64 1, %struct.__sFILE* %86)
  call void @free(i8* %1) #9
  br label %242

.preheader83:                                     ; preds = %81, %98
  %p.0 = phi i32 [ %p.178, %98 ], [ 0, %81 ]
  %88 = call i32 @fgetc(%struct.__sFILE* %ifp) #8
  switch i32 %88, label %89 [
    i32 34, label %100
    i32 10, label %94
  ]

; <label>:89                                      ; preds = %.preheader83
  %90 = trunc i32 %88 to i8
  %91 = add nsw i32 %p.0, 1
  %92 = sext i32 %p.0 to i64
  %.sum61 = add nsw i64 %92, 8192
  %93 = getelementptr inbounds i8* %1, i64 %.sum61
  store i8 %90, i8* %93, align 1, !tbaa !8
  %.pre172 = load i32* @lineno, align 4, !tbaa !2
  br label %98

; <label>:94                                      ; preds = %.preheader83
  %95 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([58 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0), i8* %1) #8
  %puts = call i32 @puts(i8* getelementptr inbounds ([61 x i8]* @str, i64 0, i64 0))
  %96 = load i32* @lineno, align 4, !tbaa !2
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* @lineno, align 4, !tbaa !2
  br label %98

; <label>:98                                      ; preds = %89, %94
  %99 = phi i32 [ %97, %94 ], [ %.pre172, %89 ]
  %p.178 = phi i32 [ %p.0, %94 ], [ %91, %89 ]
  call fastcc void @CheckBuf(i32 %p.178, i32 %99) #9
  br label %.preheader83

; <label>:100                                     ; preds = %.preheader83
  %101 = sext i32 %p.0 to i64
  %.sum60 = add nsw i64 %101, 8192
  %102 = getelementptr inbounds i8* %1, i64 %.sum60
  store i8 0, i8* %102, align 1, !tbaa !8
  %103 = load i32* @lineno, align 4, !tbaa !2
  %104 = call i32 %set_function(i8* %1, i8* %2, i32 %103) #8
  br label %.thread76.backedge

; <label>:105                                     ; preds = %.backedge85
  call void @llvm.lifetime.start(i64 500, i8* %7) #4
  %106 = call i32 @CCTK_ParameterFilename(i32 500, i8* %7) #8
  %107 = call i32 @Util_SplitFilename(i8** %dir, i8** %file, i8* %7) #8
  %108 = load i8** %file, align 8, !tbaa !6
  %109 = call i64 @strlen(i8* %108) #8
  br label %110

; <label>:110                                     ; preds = %.critedge66, %105
  %c.1 = phi i32 [ 36, %105 ], [ %111, %.critedge66 ]
  switch i32 %c.1, label %.critedge66 [
    i32 32, label %.critedge65
    i32 10, label %.critedge65
    i32 9, label %.critedge65
    i32 -1, label %.critedge65
  ]

.critedge66:                                      ; preds = %110
  %111 = call i32 @fgetc(%struct.__sFILE* %ifp) #8
  br label %110

.critedge65:                                      ; preds = %110, %110, %110, %110
  %112 = load i8** %file, align 8, !tbaa !6
  %113 = shl i64 %109, 32
  %sext = add i64 %113, -12884901888
  %114 = ashr exact i64 %sext, 32
  %115 = call i8* @__strncpy_chk(i8* %2, i8* %112, i64 %114, i64 24576) #8
  %116 = load i8** %dir, align 8, !tbaa !6
  call void @free(i8* %116) #9
  %117 = load i8** %file, align 8, !tbaa !6
  call void @free(i8* %117) #9
  %118 = call i64 @strlen(i8* %2) #8
  %.sum59 = add i64 %118, 8191
  %119 = getelementptr inbounds i8* %1, i64 %.sum59
  store i8 0, i8* %119, align 1, !tbaa !8
  %120 = load i32* @lineno, align 4, !tbaa !2
  %121 = call i32 %set_function(i8* %1, i8* %2, i32 %120) #8
  call void @llvm.lifetime.end(i64 500, i8* %7) #4
  br label %.thread76.backedge

.thread76.backedge:                               ; preds = %.critedge65, %.critedge68, %140, %._crit_edge135, %100, %41, %switch.early.test, %switch.early.test, %switch.early.test
  %intoken.0.be = phi i32 [ 0, %100 ], [ 0, %.critedge65 ], [ 0, %140 ], [ 0, %.critedge68 ], [ 0, %._crit_edge135 ], [ %intoken.4, %41 ], [ 0, %switch.early.test ], [ 0, %switch.early.test ], [ 0, %switch.early.test ]
  %num_errors.0.be = phi i32 [ %num_errors.27174, %100 ], [ %num_errors.27174, %.critedge65 ], [ %num_errors.27174, %140 ], [ %num_errors.27174, %.critedge68 ], [ %num_errors.27174, %._crit_edge135 ], [ %num_errors.27174, %41 ], [ %num_errors.27173, %switch.early.test ], [ %num_errors.27173, %switch.early.test ], [ %num_errors.27173, %switch.early.test ]
  %122 = call i32 @fgetc(%struct.__sFILE* %ifp) #8
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %.thread76._crit_edge, label %.preheader86

; <label>:124                                     ; preds = %.backedge85
  %125 = trunc i32 %77 to i8
  store i8 %125, i8* %2, align 1, !tbaa !8
  %126 = icmp eq i32 %ntokens.0.lcssa, 1
  br i1 %126, label %127, label %143

; <label>:127                                     ; preds = %124
  %128 = call i32 @fgetc(%struct.__sFILE* %ifp) #8
  br label %129

; <label>:129                                     ; preds = %.critedge69, %127
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %.critedge69 ], [ 1, %127 ]
  %c.2 = phi i32 [ %134, %.critedge69 ], [ %128, %127 ]
  switch i32 %c.2, label %.critedge69 [
    i32 32, label %.critedge68
    i32 10, label %.critedge68
    i32 9, label %.critedge68
    i32 -1, label %.critedge68
  ]

.critedge69:                                      ; preds = %129
  %130 = trunc i32 %c.2 to i8
  %indvars.iv.next170 = add nuw i64 %indvars.iv169, 1
  %.sum58 = add nsw i64 %indvars.iv169, 8192
  %131 = getelementptr inbounds i8* %1, i64 %.sum58
  store i8 %130, i8* %131, align 1, !tbaa !8
  %132 = load i32* @lineno, align 4, !tbaa !2
  %133 = trunc i64 %indvars.iv.next170 to i32
  call fastcc void @CheckBuf(i32 %133, i32 %132) #9
  %134 = call i32 @fgetc(%struct.__sFILE* %ifp) #8
  br label %129

.critedge68:                                      ; preds = %129, %129, %129, %129
  %135 = icmp eq i32 %c.2, 10
  %sext178 = shl i64 %indvars.iv169, 32
  %136 = ashr exact i64 %sext178, 32
  %.sum57 = add nsw i64 %136, 8192
  %137 = getelementptr inbounds i8* %1, i64 %.sum57
  store i8 0, i8* %137, align 1, !tbaa !8
  %138 = load i32* @lineno, align 4, !tbaa !2
  %139 = call i32 %set_function(i8* %1, i8* %2, i32 %138) #8
  br i1 %135, label %140, label %.thread76.backedge

; <label>:140                                     ; preds = %.critedge68
  %141 = load i32* @lineno, align 4, !tbaa !2
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* @lineno, align 4, !tbaa !2
  br label %.thread76.backedge

; <label>:143                                     ; preds = %124
  store i8 %125, i8* %2, align 1, !tbaa !8
  %144 = call i32 @fgetc(%struct.__sFILE* %ifp) #8
  %145 = add nsw i32 %ntokens.0.lcssa, -1
  %146 = icmp sgt i32 %ntokens.0.lcssa, 1
  %147 = icmp ne i32 %144, -1
  %.96 = and i1 %147, %146
  br i1 %.96, label %.lr.ph101, label %._crit_edge102

.lr.ph101:                                        ; preds = %143, %154
  %pp.099 = phi i32 [ %pp.1, %154 ], [ 1, %143 ]
  %ncommas.098 = phi i32 [ %.ncommas.0, %154 ], [ 0, %143 ]
  %c.397 = phi i32 [ %157, %154 ], [ %144, %143 ]
  switch i32 %c.397, label %148 [
    i32 32, label %154
    i32 10, label %154
    i32 9, label %154
  ]

; <label>:148                                     ; preds = %.lr.ph101
  %149 = trunc i32 %c.397 to i8
  %150 = add nsw i32 %pp.099, 1
  %151 = sext i32 %pp.099 to i64
  %.sum56 = add nsw i64 %151, 8192
  %152 = getelementptr inbounds i8* %1, i64 %.sum56
  store i8 %149, i8* %152, align 1, !tbaa !8
  %153 = load i32* @lineno, align 4, !tbaa !2
  call fastcc void @CheckBuf(i32 %150, i32 %153) #9
  br label %154

; <label>:154                                     ; preds = %.lr.ph101, %.lr.ph101, %.lr.ph101, %148
  %pp.1 = phi i32 [ %pp.099, %.lr.ph101 ], [ %150, %148 ], [ %pp.099, %.lr.ph101 ], [ %pp.099, %.lr.ph101 ]
  %155 = icmp eq i32 %c.397, 44
  %156 = zext i1 %155 to i32
  %.ncommas.0 = add nsw i32 %156, %ncommas.098
  %157 = call i32 @fgetc(%struct.__sFILE* %ifp) #8
  %158 = icmp slt i32 %.ncommas.0, %145
  %159 = icmp ne i32 %157, -1
  %. = and i1 %159, %158
  br i1 %., label %.lr.ph101, label %._crit_edge102

._crit_edge102:                                   ; preds = %154, %143
  %pp.0.lcssa = phi i32 [ 1, %143 ], [ %pp.1, %154 ]
  %ncommas.0.lcssa = phi i32 [ 0, %143 ], [ %.ncommas.0, %154 ]
  %c.3.lcssa = phi i32 [ %144, %143 ], [ %157, %154 ]
  switch i32 %c.3.lcssa, label %.loopexit82 [
    i32 32, label %.preheader81
    i32 9, label %.preheader81
  ]

.preheader81:                                     ; preds = %.preheader81, %.preheader81, %161, %._crit_edge102, %._crit_edge102
  %160 = call i32 @fgetc(%struct.__sFILE* %ifp) #8
  switch i32 %160, label %.loopexit82 [
    i32 10, label %161
    i32 9, label %.preheader81
    i32 32, label %.preheader81
  ]

; <label>:161                                     ; preds = %.preheader81
  %162 = load i32* @lineno, align 4, !tbaa !2
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* @lineno, align 4, !tbaa !2
  br label %.preheader81

.loopexit82:                                      ; preds = %.preheader81, %._crit_edge102
  %c.4 = phi i32 [ %c.3.lcssa, %._crit_edge102 ], [ %160, %.preheader81 ]
  %164 = trunc i32 %c.4 to i8
  %165 = add nsw i32 %pp.0.lcssa, 1
  %166 = sext i32 %pp.0.lcssa to i64
  %.sum = add nsw i64 %166, 8192
  %167 = getelementptr inbounds i8* %1, i64 %.sum
  store i8 %164, i8* %167, align 1, !tbaa !8
  %168 = call i32 @fgetc(%struct.__sFILE* %ifp) #8
  %169 = sext i32 %165 to i64
  br label %170

; <label>:170                                     ; preds = %171, %.loopexit82
  %indvars.iv = phi i64 [ %indvars.iv.next, %171 ], [ %169, %.loopexit82 ]
  %c.5 = phi i32 [ %176, %171 ], [ %168, %.loopexit82 ]
  %pp.2 = phi i32 [ %173, %171 ], [ %165, %.loopexit82 ]
  switch i32 %c.5, label %171 [
    i32 -1, label %.critedge35
    i32 32, label %.critedge35
    i32 10, label %.critedge35
    i32 9, label %.critedge35
  ]

; <label>:171                                     ; preds = %170
  %172 = trunc i32 %c.5 to i8
  %173 = add nsw i32 %pp.2, 1
  %.sum55 = add nsw i64 %indvars.iv, 8192
  %174 = getelementptr inbounds i8* %1, i64 %.sum55
  store i8 %172, i8* %174, align 1, !tbaa !8
  %175 = load i32* @lineno, align 4, !tbaa !2
  call fastcc void @CheckBuf(i32 %173, i32 %175) #9
  %176 = call i32 @fgetc(%struct.__sFILE* %ifp) #8
  %indvars.iv.next = add i64 %indvars.iv, 1
  br label %170

.critedge35:                                      ; preds = %170, %170, %170, %170
  %sext173 = shl i64 %indvars.iv, 32
  %177 = ashr exact i64 %sext173, 32
  %.sum44 = add nsw i64 %177, 8192
  %178 = getelementptr inbounds i8* %1, i64 %.sum44
  store i8 0, i8* %178, align 1, !tbaa !8
  %179 = icmp sgt i32 %ncommas.0.lcssa, 0
  br i1 %179, label %.preheader.lr.ph, label %.preheader80

.preheader.lr.ph:                                 ; preds = %.critedge35
  %180 = add i32 %ncommas.0.lcssa, -1
  br label %.preheader

.preheader80:                                     ; preds = %210, %.critedge35
  %pv.0.lcssa = phi i32 [ 0, %.critedge35 ], [ %215, %210 ]
  %pt.0.lcssa = phi i32 [ 0, %.critedge35 ], [ %216, %210 ]
  %181 = sext i32 %pt.0.lcssa to i64
  %182 = getelementptr inbounds i8* %1, i64 %181
  %183 = load i8* %182, align 1, !tbaa !8
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %._crit_edge128, label %.lr.ph127

.preheader:                                       ; preds = %210, %.preheader.lr.ph
  %pv.0122 = phi i32 [ 0, %.preheader.lr.ph ], [ %215, %210 ]
  %pt.0121 = phi i32 [ 0, %.preheader.lr.ph ], [ %216, %210 ]
  %i.0120 = phi i32 [ 0, %.preheader.lr.ph ], [ %217, %210 ]
  %185 = sext i32 %pt.0121 to i64
  %186 = getelementptr inbounds i8* %1, i64 %185
  %187 = load i8* %186, align 1, !tbaa !8
  %188 = icmp eq i8 %187, 44
  br i1 %188, label %195, label %.lr.ph108

.lr.ph108:                                        ; preds = %.preheader, %.lr.ph108
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %.lr.ph108 ], [ 0, %.preheader ]
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %.lr.ph108 ], [ %185, %.preheader ]
  %189 = phi i8 [ %192, %.lr.ph108 ], [ %187, %.preheader ]
  %indvars.iv.next154 = add nsw i64 %indvars.iv153, 1
  %indvars.iv.next156 = add nuw i64 %indvars.iv155, 1
  %.sum54 = add nsw i64 %indvars.iv155, 16384
  %190 = getelementptr inbounds i8* %1, i64 %.sum54
  store i8 %189, i8* %190, align 1, !tbaa !8
  %191 = getelementptr inbounds i8* %1, i64 %indvars.iv.next154
  %192 = load i8* %191, align 1, !tbaa !8
  %193 = icmp eq i8 %192, 44
  br i1 %193, label %._crit_edge109, label %.lr.ph108

._crit_edge109:                                   ; preds = %.lr.ph108
  %194 = trunc i64 %indvars.iv.next154 to i32
  br label %195

; <label>:195                                     ; preds = %._crit_edge109, %.preheader
  %pt.1.lcssa = phi i32 [ %194, %._crit_edge109 ], [ %pt.0121, %.preheader ]
  %pp.3.lcssa = phi i64 [ %indvars.iv.next156, %._crit_edge109 ], [ 0, %.preheader ]
  %sext176 = shl i64 %pp.3.lcssa, 32
  %196 = ashr exact i64 %sext176, 32
  %.sum50 = add nsw i64 %196, 16384
  %197 = getelementptr inbounds i8* %1, i64 %.sum50
  store i8 0, i8* %197, align 1, !tbaa !8
  %198 = sext i32 %pv.0122 to i64
  %.sum51112 = add nsw i64 %198, 8192
  %199 = getelementptr inbounds i8* %1, i64 %.sum51112
  %200 = load i8* %199, align 1, !tbaa !8
  %201 = icmp eq i8 %200, 44
  br i1 %201, label %210, label %.lr.ph116

.lr.ph116:                                        ; preds = %195, %.lr.ph116
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %.lr.ph116 ], [ 0, %195 ]
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %.lr.ph116 ], [ %198, %195 ]
  %202 = phi i8 [ %207, %.lr.ph116 ], [ %200, %195 ]
  %indvars.iv.next158 = add nsw i64 %indvars.iv157, 1
  %indvars.iv.next160 = add nuw i64 %indvars.iv159, 1
  %.sum53 = add nsw i64 %indvars.iv159, 24576
  %203 = getelementptr inbounds i8* %1, i64 %.sum53
  store i8 %202, i8* %203, align 1, !tbaa !8
  %204 = load i32* @lineno, align 4, !tbaa !2
  %205 = trunc i64 %indvars.iv.next160 to i32
  call fastcc void @CheckBuf(i32 %205, i32 %204) #9
  %.sum51 = add nsw i64 %indvars.iv157, 8193
  %206 = getelementptr inbounds i8* %1, i64 %.sum51
  %207 = load i8* %206, align 1, !tbaa !8
  %208 = icmp eq i8 %207, 44
  br i1 %208, label %._crit_edge117, label %.lr.ph116

._crit_edge117:                                   ; preds = %.lr.ph116
  %209 = trunc i64 %indvars.iv.next158 to i32
  br label %210

; <label>:210                                     ; preds = %._crit_edge117, %195
  %pv.1.lcssa = phi i32 [ %209, %._crit_edge117 ], [ %pv.0122, %195 ]
  %pp.4.lcssa = phi i64 [ %indvars.iv.next160, %._crit_edge117 ], [ 0, %195 ]
  %sext177 = shl i64 %pp.4.lcssa, 32
  %211 = ashr exact i64 %sext177, 32
  %.sum52 = add nsw i64 %211, 24576
  %212 = getelementptr inbounds i8* %1, i64 %.sum52
  store i8 0, i8* %212, align 1, !tbaa !8
  %213 = load i32* @lineno, align 4, !tbaa !2
  %214 = call i32 %set_function(i8* %3, i8* %4, i32 %213) #8
  %215 = add nsw i32 %pv.1.lcssa, 1
  %216 = add nsw i32 %pt.1.lcssa, 1
  %217 = add nuw nsw i32 %i.0120, 1
  %exitcond = icmp eq i32 %i.0120, %180
  br i1 %exitcond, label %.preheader80, label %.preheader

.lr.ph127:                                        ; preds = %.preheader80, %.lr.ph127
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %.lr.ph127 ], [ 0, %.preheader80 ]
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %.lr.ph127 ], [ %181, %.preheader80 ]
  %218 = phi i8 [ %223, %.lr.ph127 ], [ %183, %.preheader80 ]
  %indvars.iv.next162 = add nsw i64 %indvars.iv161, 1
  %indvars.iv.next164 = add nuw i64 %indvars.iv163, 1
  %.sum49 = add nsw i64 %indvars.iv163, 16384
  %219 = getelementptr inbounds i8* %1, i64 %.sum49
  store i8 %218, i8* %219, align 1, !tbaa !8
  %220 = load i32* @lineno, align 4, !tbaa !2
  %221 = trunc i64 %indvars.iv.next164 to i32
  call fastcc void @CheckBuf(i32 %221, i32 %220) #9
  %222 = getelementptr inbounds i8* %1, i64 %indvars.iv.next162
  %223 = load i8* %222, align 1, !tbaa !8
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %._crit_edge128, label %.lr.ph127

._crit_edge128:                                   ; preds = %.lr.ph127, %.preheader80
  %pp.5.lcssa = phi i64 [ 0, %.preheader80 ], [ %indvars.iv.next164, %.lr.ph127 ]
  %sext174 = shl i64 %pp.5.lcssa, 32
  %225 = ashr exact i64 %sext174, 32
  %.sum45 = add nsw i64 %225, 16384
  %226 = getelementptr inbounds i8* %1, i64 %.sum45
  store i8 0, i8* %226, align 1, !tbaa !8
  %227 = sext i32 %pv.0.lcssa to i64
  %.sum46130 = add nsw i64 %227, 8192
  %228 = getelementptr inbounds i8* %1, i64 %.sum46130
  %229 = load i8* %228, align 1, !tbaa !8
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %._crit_edge135, label %.lr.ph134

.lr.ph134:                                        ; preds = %._crit_edge128, %.lr.ph134
  %indvars.iv167 = phi i64 [ %indvars.iv.next168, %.lr.ph134 ], [ 0, %._crit_edge128 ]
  %indvars.iv165 = phi i64 [ %indvars.iv.next166, %.lr.ph134 ], [ %227, %._crit_edge128 ]
  %231 = phi i8 [ %236, %.lr.ph134 ], [ %229, %._crit_edge128 ]
  %indvars.iv.next166 = add nsw i64 %indvars.iv165, 1
  %indvars.iv.next168 = add nuw i64 %indvars.iv167, 1
  %.sum48 = add nsw i64 %indvars.iv167, 24576
  %232 = getelementptr inbounds i8* %1, i64 %.sum48
  store i8 %231, i8* %232, align 1, !tbaa !8
  %233 = load i32* @lineno, align 4, !tbaa !2
  %234 = trunc i64 %indvars.iv.next168 to i32
  call fastcc void @CheckBuf(i32 %234, i32 %233) #9
  %.sum46 = add nsw i64 %indvars.iv165, 8193
  %235 = getelementptr inbounds i8* %1, i64 %.sum46
  %236 = load i8* %235, align 1, !tbaa !8
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %._crit_edge135, label %.lr.ph134

._crit_edge135:                                   ; preds = %.lr.ph134, %._crit_edge128
  %pp.6.lcssa = phi i64 [ 0, %._crit_edge128 ], [ %indvars.iv.next168, %.lr.ph134 ]
  %sext175 = shl i64 %pp.6.lcssa, 32
  %238 = ashr exact i64 %sext175, 32
  %.sum47 = add nsw i64 %238, 24576
  %239 = getelementptr inbounds i8* %1, i64 %.sum47
  store i8 0, i8* %239, align 1, !tbaa !8
  %240 = load i32* @lineno, align 4, !tbaa !2
  %241 = call i32 %set_function(i8* %3, i8* %4, i32 %240) #8
  br label %.thread76.backedge

.thread76._crit_edge:                             ; preds = %.thread76.backedge, %0
  %num_errors.0.lcssa = phi i32 [ 0, %0 ], [ %num_errors.0.be, %.thread76.backedge ]
  call void @free(i8* %1) #9
  br label %242

; <label>:242                                     ; preds = %.thread76._crit_edge, %83
  %.0 = phi i32 [ 1, %83 ], [ %num_errors.0.lcssa, %.thread76._crit_edge ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize
declare i32 @fgetc(%struct.__sFILE* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @CheckBuf(i32 %p, i32 %l) #1 {
  %1 = icmp sgt i32 %p, 8191
  br i1 %1, label %2, label %11

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([44 x i8]* @.str11, i64 0, i64 0), i32 %l) #8
  %5 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8]* @.str12, i64 0, i64 0), i64 48, i64 1, %struct.__sFILE* %5)
  %7 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([115 x i8]* @.str13, i64 0, i64 0), i64 114, i64 1, %struct.__sFILE* %7)
  %9 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str14, i64 0, i64 0), i64 13, i64 1, %struct.__sFILE* %9)
  tail call void @exit(i32 1) #10
  unreachable

; <label>:11                                      ; preds = %0
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare i32 @CCTK_ParameterFilename(i32, i8*) #5

; Function Attrs: optsize
declare i32 @Util_SplitFilename(i8**, i8**, i8*) #5

; Function Attrs: nounwind optsize
declare i8* @__strncpy_chk(i8*, i8*, i64, i64) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: noreturn optsize
declare void @exit(i32) #7

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!4, !4, i64 0}
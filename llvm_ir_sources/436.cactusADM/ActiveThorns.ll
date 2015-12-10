; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/ActiveThorns.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.T_SKTREE = type { %struct.T_SKTREE*, %struct.T_SKTREE*, %struct.T_SKTREE*, %struct.T_SKTREE*, i8*, i8* }
%struct.iAttributeList = type { i8*, %union.iAttributeData }
%union.iAttributeData = type { i8** }
%struct.IMPLEMENTATION = type { i32, %struct.T_SKTREE*, i8*, i32, i8**, i32, i8** }
%struct.THORN = type { i32, i8* }
%struct.uStringList = type { i32, %struct.iInternalStringList*, %struct.iInternalStringList*, %struct.iInternalStringList* }
%struct.iInternalStringList = type { %struct.iInternalStringList*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str1 = private unnamed_addr constant [15 x i8] c"implementation\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"ancestors\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"friends\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str4 = private unnamed_addr constant [42 x i8] c"Unknown/unimplemented thorn attribute %s\0A\00", align 1
@thornlist = internal unnamed_addr global %struct.T_SKTREE* null, align 8
@n_thorns = internal unnamed_addr global i32 0, align 4
@.str5 = private unnamed_addr constant [23 x i8] c"Activating thorn %s...\00", align 1
@implist = internal unnamed_addr global %struct.T_SKTREE* null, align 8
@.str6 = private unnamed_addr constant [37 x i8] c"Success -> active implementation %s\0A\00", align 1
@.str7 = private unnamed_addr constant [54 x i8] c"Failure -> Implementation %s already activated by %s\0A\00", align 1
@.str8 = private unnamed_addr constant [36 x i8] c"Failure -> Thorn %s already active\0A\00", align 1
@.str9 = private unnamed_addr constant [50 x i8] c"Internal error - can't find imp %s from thorn %s\0A\00", align 1
@n_imps = internal unnamed_addr global i32 0, align 4
@.str11 = private unnamed_addr constant [38 x i8] c"Activation requested for \0A--->%s<---\0A\00", align 1
@.str12 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str13 = private unnamed_addr constant [34 x i8] c"Warning: thorn %s already active\0A\00", align 1
@.str14 = private unnamed_addr constant [27 x i8] c"Error: Thorn %s not found\0A\00", align 1
@.str15 = private unnamed_addr constant [52 x i8] c"       However, implementation %s was found and is\0A\00", align 1
@.str16 = private unnamed_addr constant [29 x i8] c"       provided by thorn(s):\00", align 1
@.str18 = private unnamed_addr constant [61 x i8] c"Error: thorn %s provides implementation %s - already active\0A\00", align 1
@.str19 = private unnamed_addr constant [52 x i8] c"Warning: thorn %s already scheduled for activation\0A\00", align 1
@.str20 = private unnamed_addr constant [86 x i8] c"Error: thorn %s provides implementation %s which is already scheduled for activation\0A\00", align 1
@.str21 = private unnamed_addr constant [81 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/ActiveThorns.c\00", align 1
@.str22 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str23 = private unnamed_addr constant [67 x i8] c"Internal error :- please report this to cactusmaint@cactuscode.org\00", align 1
@.str24 = private unnamed_addr constant [50 x i8] c"Error: Required implementation %s not activated.\0A\00", align 1
@.str27 = private unnamed_addr constant [11 x i8] c"          \00", align 1
@.str29 = private unnamed_addr constant [49 x i8] c"Error: required implementation %s not requested\0A\00", align 1
@.str30 = private unnamed_addr constant [54 x i8] c"Activation failed - %d errors in activation sequence\0A\00", align 1
@.str31 = private unnamed_addr constant [88 x i8] c"$Header: /cactus/Cactus/src/main/ActiveThorns.c,v 1.38 2001/12/04 21:57:22 tradke Exp $\00", align 1
@.str32 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@str = private unnamed_addr constant [31 x i8] c"Failure -> non-existent thorn.\00"
@str36 = private unnamed_addr constant [76 x i8] c"       Add a thorn providing this implementation to ActiveThorns parameter.\00"
@str37 = private unnamed_addr constant [65 x i8] c"       This implementation is not provided by any compiled thorn\00"
@str38 = private unnamed_addr constant [59 x i8] c"       This implementation is provided by compiled thorns:\00"

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_ActiveThorns_c() #0 {
  ret i8* getelementptr inbounds ([88 x i8]* @.str31, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_RegisterThorn(%struct.iAttributeList* nocapture readonly %attributes) #1 {
  %1 = getelementptr inbounds %struct.iAttributeList* %attributes, i64 0, i32 0
  %2 = load i8** %1, align 8, !tbaa !2
  %3 = icmp eq i8* %2, null
  br i1 %3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0, %37
  %indvars.iv = phi i64 [ %indvars.iv.next, %37 ], [ 0, %0 ]
  %4 = phi i8* [ %39, %37 ], [ %2, %0 ]
  %friends.05 = phi i8** [ %friends.1, %37 ], [ null, %0 ]
  %ancestors.04 = phi i8** [ %ancestors.1, %37 ], [ null, %0 ]
  %imp.03 = phi i8* [ %imp.1, %37 ], [ null, %0 ]
  %name.02 = phi i8* [ %name.1, %37 ], [ null, %0 ]
  %5 = tail call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

; <label>:7                                       ; preds = %.lr.ph
  %8 = getelementptr inbounds %struct.iAttributeList* %attributes, i64 %indvars.iv, i32 1, i32 0
  %9 = load i8*** %8, align 8, !tbaa !7
  %10 = icmp eq i8** %9, null
  br i1 %10, label %37, label %11

; <label>:11                                      ; preds = %7
  %12 = load i8** %9, align 8, !tbaa !7
  br label %37

; <label>:13                                      ; preds = %.lr.ph
  %14 = tail call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([15 x i8]* @.str1, i64 0, i64 0)) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

; <label>:16                                      ; preds = %13
  %17 = getelementptr inbounds %struct.iAttributeList* %attributes, i64 %indvars.iv, i32 1, i32 0
  %18 = load i8*** %17, align 8, !tbaa !7
  %19 = icmp eq i8** %18, null
  br i1 %19, label %37, label %20

; <label>:20                                      ; preds = %16
  %21 = load i8** %18, align 8, !tbaa !7
  br label %37

; <label>:22                                      ; preds = %13
  %23 = tail call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0)) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

; <label>:25                                      ; preds = %22
  %26 = getelementptr inbounds %struct.iAttributeList* %attributes, i64 %indvars.iv, i32 1, i32 0
  %27 = load i8*** %26, align 8, !tbaa !7
  br label %37

; <label>:28                                      ; preds = %22
  %29 = tail call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0)) #7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

; <label>:31                                      ; preds = %28
  %32 = getelementptr inbounds %struct.iAttributeList* %attributes, i64 %indvars.iv, i32 1, i32 0
  %33 = load i8*** %32, align 8, !tbaa !7
  br label %37

; <label>:34                                      ; preds = %28
  %35 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !7
  %36 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %35, i8* getelementptr inbounds ([42 x i8]* @.str4, i64 0, i64 0), i8* %4) #7
  br label %37

; <label>:37                                      ; preds = %16, %7, %11, %25, %34, %31, %20
  %name.1 = phi i8* [ %name.02, %34 ], [ %name.02, %31 ], [ %name.02, %25 ], [ %name.02, %20 ], [ %name.02, %16 ], [ %12, %11 ], [ %name.02, %7 ]
  %imp.1 = phi i8* [ %imp.03, %34 ], [ %imp.03, %31 ], [ %imp.03, %25 ], [ %21, %20 ], [ %imp.03, %16 ], [ %imp.03, %11 ], [ %imp.03, %7 ]
  %ancestors.1 = phi i8** [ %ancestors.04, %34 ], [ %ancestors.04, %31 ], [ %27, %25 ], [ %ancestors.04, %20 ], [ %ancestors.04, %16 ], [ %ancestors.04, %11 ], [ %ancestors.04, %7 ]
  %friends.1 = phi i8** [ %friends.05, %34 ], [ %33, %31 ], [ %friends.05, %25 ], [ %friends.05, %20 ], [ %friends.05, %16 ], [ %friends.05, %11 ], [ %friends.05, %7 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %38 = getelementptr inbounds %struct.iAttributeList* %attributes, i64 %indvars.iv.next, i32 0
  %39 = load i8** %38, align 8, !tbaa !2
  %40 = icmp eq i8* %39, null
  br i1 %40, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %37, %0
  %friends.0.lcssa = phi i8** [ null, %0 ], [ %friends.1, %37 ]
  %ancestors.0.lcssa = phi i8** [ null, %0 ], [ %ancestors.1, %37 ]
  %imp.0.lcssa = phi i8* [ null, %0 ], [ %imp.1, %37 ]
  %name.0.lcssa = phi i8* [ null, %0 ], [ %name.1, %37 ]
  %41 = load %struct.T_SKTREE** @thornlist, align 8, !tbaa !7
  %42 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %41, i8* %name.0.lcssa) #7
  %43 = icmp eq %struct.T_SKTREE* %42, null
  br i1 %43, label %44, label %RegisterImp.exit

; <label>:44                                      ; preds = %._crit_edge
  %45 = load i32* @n_thorns, align 4, !tbaa !8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @n_thorns, align 4, !tbaa !8
  %47 = tail call i8* @malloc(i64 16) #7
  %48 = icmp eq i8* %47, null
  br i1 %48, label %RegisterImp.exit, label %49

; <label>:49                                      ; preds = %44
  %50 = tail call i8* @Util_Strdup(i8* %imp.0.lcssa) #7
  %51 = getelementptr inbounds i8* %47, i64 8
  %52 = bitcast i8* %51 to i8**
  store i8* %50, i8** %52, align 8, !tbaa !10
  %53 = icmp eq i8* %50, null
  br i1 %53, label %RegisterImp.exit, label %54

; <label>:54                                      ; preds = %49
  %55 = bitcast i8* %47 to i32*
  store i32 0, i32* %55, align 4, !tbaa !12
  %56 = load %struct.T_SKTREE** @thornlist, align 8, !tbaa !7
  %57 = tail call %struct.T_SKTREE* @SKTreeStoreData(%struct.T_SKTREE* %56, %struct.T_SKTREE* %56, i8* %name.0.lcssa, i8* %47) #7
  %58 = load %struct.T_SKTREE** @thornlist, align 8, !tbaa !7
  %59 = icmp eq %struct.T_SKTREE* %58, null
  br i1 %59, label %60, label %61

; <label>:60                                      ; preds = %54
  store %struct.T_SKTREE* %57, %struct.T_SKTREE** @thornlist, align 8, !tbaa !7
  br label %61

; <label>:61                                      ; preds = %54, %60
  %62 = icmp eq %struct.T_SKTREE* %57, null
  br i1 %62, label %RegisterImp.exit, label %63

; <label>:63                                      ; preds = %61
  %64 = load %struct.T_SKTREE** @implist, align 8, !tbaa !7
  %65 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %64, i8* %imp.0.lcssa) #7
  %66 = icmp eq %struct.T_SKTREE* %65, null
  br i1 %66, label %67, label %140

; <label>:67                                      ; preds = %63
  %68 = load i32* @n_imps, align 4, !tbaa !8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* @n_imps, align 4, !tbaa !8
  %70 = tail call i8* @malloc(i64 56) #7
  %71 = icmp eq i8* %70, null
  br i1 %71, label %RegisterImp.exit, label %72

; <label>:72                                      ; preds = %67
  %73 = bitcast i8* %70 to i32*
  store i32 0, i32* %73, align 4, !tbaa !13
  %74 = tail call %struct.T_SKTREE* @SKTreeStoreData(%struct.T_SKTREE* null, %struct.T_SKTREE* null, i8* %name.0.lcssa, i8* null) #7
  %75 = getelementptr inbounds i8* %70, i64 8
  %76 = bitcast i8* %75 to %struct.T_SKTREE**
  store %struct.T_SKTREE* %74, %struct.T_SKTREE** %76, align 8, !tbaa !15
  %77 = load %struct.T_SKTREE** @implist, align 8, !tbaa !7
  %78 = tail call %struct.T_SKTREE* @SKTreeStoreData(%struct.T_SKTREE* %77, %struct.T_SKTREE* %77, i8* %imp.0.lcssa, i8* %70) #7
  %79 = load %struct.T_SKTREE** @implist, align 8, !tbaa !7
  %80 = icmp eq %struct.T_SKTREE* %79, null
  br i1 %80, label %81, label %82

; <label>:81                                      ; preds = %72
  store %struct.T_SKTREE* %78, %struct.T_SKTREE** @implist, align 8, !tbaa !7
  br label %82

; <label>:82                                      ; preds = %81, %72
  %83 = icmp eq %struct.T_SKTREE* %78, null
  br i1 %83, label %RegisterImp.exit, label %.preheader3.i

.preheader3.i:                                    ; preds = %82, %.preheader3.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %.preheader3.i ], [ 0, %82 ]
  %84 = getelementptr inbounds i8** %ancestors.0.lcssa, i64 %indvars.iv16.i
  %85 = load i8** %84, align 8, !tbaa !7
  %86 = icmp eq i8* %85, null
  %indvars.iv.next17.i = add nuw i64 %indvars.iv16.i, 1
  br i1 %86, label %87, label %.preheader3.i

; <label>:87                                      ; preds = %.preheader3.i
  %88 = trunc i64 %indvars.iv16.i to i32
  %89 = getelementptr inbounds i8* %70, i64 24
  %90 = bitcast i8* %89 to i32*
  store i32 %88, i32* %90, align 4, !tbaa !16
  %91 = shl i64 %indvars.iv16.i, 32
  %sext.i = add i64 %91, 4294967296
  %92 = ashr exact i64 %sext.i, 29
  %93 = tail call i8* @malloc(i64 %92) #7
  %94 = getelementptr inbounds i8* %70, i64 32
  %95 = bitcast i8* %94 to i8***
  %96 = bitcast i8* %94 to i8**
  store i8* %93, i8** %96, align 8, !tbaa !17
  %97 = icmp eq i8* %93, null
  br i1 %97, label %.preheader1.i, label %.preheader2.i

.preheader2.i:                                    ; preds = %87
  %98 = bitcast i8* %93 to i8**
  %99 = load i8** %ancestors.0.lcssa, align 8, !tbaa !7
  %100 = icmp eq i8* %99, null
  br i1 %100, label %108, label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %.preheader2.i, %.lr.ph7.i
  %indvars.iv14.i = phi i64 [ %indvars.iv.next15.i, %.lr.ph7.i ], [ 0, %.preheader2.i ]
  %101 = phi i8* [ %106, %.lr.ph7.i ], [ %99, %.preheader2.i ]
  %102 = tail call i8* @Util_Strdup(i8* %101) #7
  %103 = load i8*** %95, align 8, !tbaa !17
  %104 = getelementptr inbounds i8** %103, i64 %indvars.iv14.i
  store i8* %102, i8** %104, align 8, !tbaa !7
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1
  %105 = getelementptr inbounds i8** %ancestors.0.lcssa, i64 %indvars.iv.next15.i
  %106 = load i8** %105, align 8, !tbaa !7
  %107 = icmp eq i8* %106, null
  br i1 %107, label %._crit_edge8.i, label %.lr.ph7.i

._crit_edge8.i:                                   ; preds = %.lr.ph7.i
  %.pre.i = load i8*** %95, align 8, !tbaa !17
  br label %108

; <label>:108                                     ; preds = %._crit_edge8.i, %.preheader2.i
  %109 = phi i8** [ %.pre.i, %._crit_edge8.i ], [ %98, %.preheader2.i ]
  %.lcssa4.i = phi i64 [ %indvars.iv.next15.i, %._crit_edge8.i ], [ 0, %.preheader2.i ]
  %110 = getelementptr inbounds i8** %109, i64 %.lcssa4.i
  store i8* null, i8** %110, align 8, !tbaa !7
  %111 = load i8** %96, align 8, !tbaa !17
  tail call void @qsort(i8* %111, i64 %.lcssa4.i, i64 8, i32 (i8*, i8*)* @CompareStrings) #7
  br label %.preheader1.i

.preheader1.i:                                    ; preds = %108, %87, %.preheader1.i
  %indvars.iv12.i = phi i64 [ %indvars.iv.next13.i, %.preheader1.i ], [ 0, %87 ], [ 0, %108 ]
  %112 = getelementptr inbounds i8** %friends.0.lcssa, i64 %indvars.iv12.i
  %113 = load i8** %112, align 8, !tbaa !7
  %114 = icmp eq i8* %113, null
  %indvars.iv.next13.i = add nuw i64 %indvars.iv12.i, 1
  br i1 %114, label %115, label %.preheader1.i

; <label>:115                                     ; preds = %.preheader1.i
  %116 = trunc i64 %indvars.iv12.i to i32
  %117 = getelementptr inbounds i8* %70, i64 40
  %118 = bitcast i8* %117 to i32*
  store i32 %116, i32* %118, align 4, !tbaa !18
  %119 = shl i64 %indvars.iv12.i, 32
  %sext19.i = add i64 %119, 4294967296
  %120 = ashr exact i64 %sext19.i, 29
  %121 = tail call i8* @malloc(i64 %120) #7
  %122 = getelementptr inbounds i8* %70, i64 48
  %123 = bitcast i8* %122 to i8***
  %124 = bitcast i8* %122 to i8**
  store i8* %121, i8** %124, align 8, !tbaa !19
  %125 = icmp eq i8* %121, null
  br i1 %125, label %RegisterImp.exit, label %.preheader.i

.preheader.i:                                     ; preds = %115
  %126 = bitcast i8* %121 to i8**
  %127 = load i8** %friends.0.lcssa, align 8, !tbaa !7
  %128 = icmp eq i8* %127, null
  br i1 %128, label %136, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i ]
  %129 = phi i8* [ %134, %.lr.ph.i ], [ %127, %.preheader.i ]
  %130 = tail call i8* @Util_Strdup(i8* %129) #7
  %131 = load i8*** %123, align 8, !tbaa !19
  %132 = getelementptr inbounds i8** %131, i64 %indvars.iv.i
  store i8* %130, i8** %132, align 8, !tbaa !7
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %133 = getelementptr inbounds i8** %friends.0.lcssa, i64 %indvars.iv.next.i
  %134 = load i8** %133, align 8, !tbaa !7
  %135 = icmp eq i8* %134, null
  br i1 %135, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.pre18.i = load i8*** %123, align 8, !tbaa !19
  br label %136

; <label>:136                                     ; preds = %._crit_edge.i, %.preheader.i
  %137 = phi i8** [ %.pre18.i, %._crit_edge.i ], [ %126, %.preheader.i ]
  %.lcssa.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 0, %.preheader.i ]
  %138 = getelementptr inbounds i8** %137, i64 %.lcssa.i
  store i8* null, i8** %138, align 8, !tbaa !7
  %139 = load i8** %124, align 8, !tbaa !19
  tail call void @qsort(i8* %139, i64 %.lcssa.i, i64 8, i32 (i8*, i8*)* @CompareStrings) #7
  br label %RegisterImp.exit

; <label>:140                                     ; preds = %63
  %141 = getelementptr inbounds %struct.T_SKTREE* %65, i64 0, i32 5
  %142 = bitcast i8** %141 to %struct.IMPLEMENTATION**
  %143 = load %struct.IMPLEMENTATION** %142, align 8, !tbaa !20
  %144 = getelementptr inbounds %struct.IMPLEMENTATION* %143, i64 0, i32 1
  %145 = load %struct.T_SKTREE** %144, align 8, !tbaa !15
  %146 = tail call %struct.T_SKTREE* @SKTreeStoreData(%struct.T_SKTREE* %145, %struct.T_SKTREE* %145, i8* %name.0.lcssa, i8* null) #7
  br label %RegisterImp.exit

RegisterImp.exit:                                 ; preds = %140, %136, %115, %82, %67, %._crit_edge, %44, %49, %61
  %retval.0 = phi i32 [ -4, %61 ], [ -3, %49 ], [ -2, %44 ], [ -1, %._crit_edge ], [ 0, %67 ], [ 0, %82 ], [ 0, %115 ], [ 0, %136 ], [ 0, %140 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: optsize
declare %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE*, i8*) #4

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: optsize
declare i8* @Util_Strdup(i8*) #4

; Function Attrs: optsize
declare %struct.T_SKTREE* @SKTreeStoreData(%struct.T_SKTREE*, %struct.T_SKTREE*, i8*, i8*) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_ActivateThorn(i8* %name) #1 {
  %1 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str5, i64 0, i64 0), i8* %name) #7
  %2 = load %struct.T_SKTREE** @thornlist, align 8, !tbaa !7
  %3 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %2, i8* %name) #7
  %4 = icmp eq %struct.T_SKTREE* %3, null
  br i1 %4, label %39, label %5

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.T_SKTREE* %3, i64 0, i32 5
  %7 = bitcast i8** %6 to %struct.THORN**
  %8 = load %struct.THORN** %7, align 8, !tbaa !20
  %9 = load %struct.T_SKTREE** @implist, align 8, !tbaa !7
  %10 = getelementptr inbounds %struct.THORN* %8, i64 0, i32 1
  %11 = load i8** %10, align 8, !tbaa !10
  %12 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %9, i8* %11) #7
  %13 = icmp eq %struct.T_SKTREE* %12, null
  br i1 %13, label %36, label %14

; <label>:14                                      ; preds = %5
  %15 = getelementptr inbounds %struct.T_SKTREE* %12, i64 0, i32 5
  %16 = bitcast i8** %15 to %struct.IMPLEMENTATION**
  %17 = load %struct.IMPLEMENTATION** %16, align 8, !tbaa !20
  %18 = getelementptr inbounds %struct.THORN* %8, i64 0, i32 0
  %19 = load i32* %18, align 4, !tbaa !12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %34

; <label>:21                                      ; preds = %14
  %22 = getelementptr inbounds %struct.IMPLEMENTATION* %17, i64 0, i32 0
  %23 = load i32* %22, align 4, !tbaa !13
  %24 = icmp eq i32 %23, 0
  %25 = load i8** %10, align 8, !tbaa !10
  br i1 %24, label %26, label %30

; <label>:26                                      ; preds = %21
  %27 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str6, i64 0, i64 0), i8* %25) #7
  store i32 1, i32* %18, align 4, !tbaa !12
  store i32 1, i32* %22, align 4, !tbaa !13
  %28 = tail call i8* @Util_Strdup(i8* %name) #7
  %29 = getelementptr inbounds %struct.IMPLEMENTATION* %17, i64 0, i32 2
  store i8* %28, i8** %29, align 8, !tbaa !22
  br label %40

; <label>:30                                      ; preds = %21
  %31 = getelementptr inbounds %struct.IMPLEMENTATION* %17, i64 0, i32 2
  %32 = load i8** %31, align 8, !tbaa !22
  %33 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([54 x i8]* @.str7, i64 0, i64 0), i8* %25, i8* %32) #7
  br label %40

; <label>:34                                      ; preds = %14
  %35 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str8, i64 0, i64 0), i8* %name) #7
  br label %40

; <label>:36                                      ; preds = %5
  %37 = load i8** %10, align 8, !tbaa !10
  %38 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([50 x i8]* @.str9, i64 0, i64 0), i8* %37, i8* %name) #7
  br label %40

; <label>:39                                      ; preds = %0
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([31 x i8]* @str, i64 0, i64 0))
  br label %40

; <label>:40                                      ; preds = %36, %26, %30, %34, %39
  %retval.0 = phi i32 [ -3, %34 ], [ -4, %30 ], [ 0, %26 ], [ -2, %36 ], [ -1, %39 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_IsThornActive(i8* %name) #1 {
  %1 = load %struct.T_SKTREE** @thornlist, align 8, !tbaa !7
  %2 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %1, i8* %name) #7
  %3 = icmp eq %struct.T_SKTREE* %2, null
  br i1 %3, label %10, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.T_SKTREE* %2, i64 0, i32 5
  %6 = bitcast i8** %5 to %struct.THORN**
  %7 = load %struct.THORN** %6, align 8, !tbaa !20
  %8 = getelementptr inbounds %struct.THORN* %7, i64 0, i32 0
  %9 = load i32* %8, align 4, !tbaa !12
  %not. = icmp ne i32 %9, 0
  %. = zext i1 %not. to i32
  ret i32 %.

; <label>:10                                      ; preds = %0
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @cctk_isthornactive_(i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #7
  %2 = load %struct.T_SKTREE** @thornlist, align 8, !tbaa !7
  %3 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %2, i8* %1) #7
  %4 = icmp eq %struct.T_SKTREE* %3, null
  br i1 %4, label %CCTK_IsThornActive.exit, label %5

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.T_SKTREE* %3, i64 0, i32 5
  %7 = bitcast i8** %6 to %struct.THORN**
  %8 = load %struct.THORN** %7, align 8, !tbaa !20
  %9 = getelementptr inbounds %struct.THORN* %8, i64 0, i32 0
  %10 = load i32* %9, align 4, !tbaa !12
  %not..i = icmp ne i32 %10, 0
  %..i = zext i1 %not..i to i32
  br label %CCTK_IsThornActive.exit

CCTK_IsThornActive.exit:                          ; preds = %0, %5
  %11 = phi i32 [ %..i, %5 ], [ 0, %0 ]
  tail call void @free(i8* %1) #8
  ret i32 %11
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_ThornImplementation(i8* %name) #1 {
  %1 = load %struct.T_SKTREE** @thornlist, align 8, !tbaa !7
  %2 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %1, i8* %name) #7
  %3 = icmp eq %struct.T_SKTREE* %2, null
  br i1 %3, label %10, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.T_SKTREE* %2, i64 0, i32 5
  %6 = bitcast i8** %5 to %struct.THORN**
  %7 = load %struct.THORN** %6, align 8, !tbaa !20
  %8 = getelementptr inbounds %struct.THORN* %7, i64 0, i32 1
  %9 = load i8** %8, align 8, !tbaa !10
  br label %10

; <label>:10                                      ; preds = %0, %4
  %retval.0 = phi i8* [ %9, %4 ], [ null, %0 ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_ImplementationThorn(i8* %name) #1 {
  %1 = load %struct.T_SKTREE** @implist, align 8, !tbaa !7
  %2 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %1, i8* %name) #7
  %3 = icmp eq %struct.T_SKTREE* %2, null
  br i1 %3, label %12, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.T_SKTREE* %2, i64 0, i32 5
  %6 = bitcast i8** %5 to %struct.IMPLEMENTATION**
  %7 = load %struct.IMPLEMENTATION** %6, align 8, !tbaa !20
  %8 = getelementptr inbounds %struct.IMPLEMENTATION* %7, i64 0, i32 1
  %9 = load %struct.T_SKTREE** %8, align 8, !tbaa !15
  %10 = getelementptr inbounds %struct.T_SKTREE* %9, i64 0, i32 4
  %11 = load i8** %10, align 8, !tbaa !23
  br label %12

; <label>:12                                      ; preds = %0, %4
  %retval.0 = phi i8* [ %11, %4 ], [ null, %0 ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_IsThornCompiled(i8* %name) #1 {
  %1 = load %struct.T_SKTREE** @thornlist, align 8, !tbaa !7
  %2 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %1, i8* %name) #7
  %3 = icmp ne %struct.T_SKTREE* %2, null
  %. = zext i1 %3 to i32
  ret i32 %.
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_isthorncompiled_(i32* nocapture %retval, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #7
  %2 = load %struct.T_SKTREE** @thornlist, align 8, !tbaa !7
  %3 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %2, i8* %1) #7
  %4 = icmp ne %struct.T_SKTREE* %3, null
  %..i = zext i1 %4 to i32
  store i32 %..i, i32* %retval, align 4, !tbaa !8
  tail call void @free(i8* %1) #8
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_IsImplementationCompiled(i8* %name) #1 {
  %1 = load %struct.T_SKTREE** @implist, align 8, !tbaa !7
  %2 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %1, i8* %name) #7
  %3 = icmp ne %struct.T_SKTREE* %2, null
  %. = zext i1 %3 to i32
  ret i32 %.
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_isimplementationcompiled_(i32* nocapture %retval, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #7
  %2 = load %struct.T_SKTREE** @implist, align 8, !tbaa !7
  %3 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %2, i8* %1) #7
  %4 = icmp ne %struct.T_SKTREE* %3, null
  %..i = zext i1 %4 to i32
  store i32 %..i, i32* %retval, align 4, !tbaa !8
  tail call void @free(i8* %1) #8
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_IsImplementationActive(i8* %name) #1 {
  %1 = load %struct.T_SKTREE** @implist, align 8, !tbaa !7
  %2 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %1, i8* %name) #7
  %3 = icmp eq %struct.T_SKTREE* %2, null
  br i1 %3, label %10, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.T_SKTREE* %2, i64 0, i32 5
  %6 = bitcast i8** %5 to %struct.IMPLEMENTATION**
  %7 = load %struct.IMPLEMENTATION** %6, align 8, !tbaa !20
  %8 = getelementptr inbounds %struct.IMPLEMENTATION* %7, i64 0, i32 0
  %9 = load i32* %8, align 4, !tbaa !13
  %not. = icmp ne i32 %9, 0
  %. = zext i1 %not. to i32
  ret i32 %.

; <label>:10                                      ; preds = %0
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_isimplementationactive_(i32* nocapture %retval, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #7
  %2 = load %struct.T_SKTREE** @implist, align 8, !tbaa !7
  %3 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %2, i8* %1) #7
  %4 = icmp eq %struct.T_SKTREE* %3, null
  br i1 %4, label %CCTK_IsImplementationActive.exit, label %5

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.T_SKTREE* %3, i64 0, i32 5
  %7 = bitcast i8** %6 to %struct.IMPLEMENTATION**
  %8 = load %struct.IMPLEMENTATION** %7, align 8, !tbaa !20
  %9 = getelementptr inbounds %struct.IMPLEMENTATION* %8, i64 0, i32 0
  %10 = load i32* %9, align 4, !tbaa !13
  %not..i = icmp ne i32 %10, 0
  %..i = zext i1 %not..i to i32
  br label %CCTK_IsImplementationActive.exit

CCTK_IsImplementationActive.exit:                 ; preds = %0, %5
  %11 = phi i32 [ %..i, %5 ], [ 0, %0 ]
  store i32 %11, i32* %retval, align 4, !tbaa !8
  tail call void @free(i8* %1) #8
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_PrintThorns(%struct.__sFILE* nocapture %file, i8* nocapture readonly %format, i32 %active) #1 {
  %1 = load %struct.T_SKTREE** @thornlist, align 8, !tbaa !7
  %2 = tail call %struct.T_SKTREE* @SKTreeFindFirst(%struct.T_SKTREE* %1) #7
  %3 = icmp eq %struct.T_SKTREE* %2, null
  br i1 %3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0
  %4 = icmp ne i32 %active, 0
  br label %5

; <label>:5                                       ; preds = %.lr.ph, %16
  %retval.03 = phi i32 [ 0, %.lr.ph ], [ %19, %16 ]
  %node.02 = phi %struct.T_SKTREE* [ %2, %.lr.ph ], [ %18, %16 ]
  %6 = getelementptr inbounds %struct.T_SKTREE* %node.02, i64 0, i32 5
  %7 = bitcast i8** %6 to %struct.THORN**
  %8 = load %struct.THORN** %7, align 8, !tbaa !20
  %9 = getelementptr inbounds %struct.THORN* %8, i64 0, i32 0
  %10 = load i32* %9, align 4, !tbaa !12
  %11 = icmp eq i32 %10, 0
  %or.cond = and i1 %4, %11
  br i1 %or.cond, label %16, label %12

; <label>:12                                      ; preds = %5
  %13 = getelementptr inbounds %struct.T_SKTREE* %node.02, i64 0, i32 4
  %14 = load i8** %13, align 8, !tbaa !23
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %file, i8* %format, i8* %14) #7
  br label %16

; <label>:16                                      ; preds = %12, %5
  %17 = getelementptr inbounds %struct.T_SKTREE* %node.02, i64 0, i32 2
  %18 = load %struct.T_SKTREE** %17, align 8, !tbaa !24
  %19 = add nuw nsw i32 %retval.03, 1
  %20 = icmp eq %struct.T_SKTREE* %18, null
  br i1 %20, label %._crit_edge, label %5

._crit_edge:                                      ; preds = %16, %0
  %retval.0.lcssa = phi i32 [ 0, %0 ], [ %19, %16 ]
  ret i32 %retval.0.lcssa
}

; Function Attrs: optsize
declare %struct.T_SKTREE* @SKTreeFindFirst(%struct.T_SKTREE*) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_PrintImps(%struct.__sFILE* nocapture %file, i8* nocapture readonly %format, i32 %active) #1 {
  %1 = load %struct.T_SKTREE** @implist, align 8, !tbaa !7
  %2 = tail call %struct.T_SKTREE* @SKTreeFindFirst(%struct.T_SKTREE* %1) #7
  %3 = icmp eq %struct.T_SKTREE* %2, null
  br i1 %3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0
  %4 = icmp ne i32 %active, 0
  br label %5

; <label>:5                                       ; preds = %.lr.ph, %16
  %retval.03 = phi i32 [ 0, %.lr.ph ], [ %19, %16 ]
  %node.02 = phi %struct.T_SKTREE* [ %2, %.lr.ph ], [ %18, %16 ]
  %6 = getelementptr inbounds %struct.T_SKTREE* %node.02, i64 0, i32 5
  %7 = bitcast i8** %6 to %struct.IMPLEMENTATION**
  %8 = load %struct.IMPLEMENTATION** %7, align 8, !tbaa !20
  %9 = getelementptr inbounds %struct.IMPLEMENTATION* %8, i64 0, i32 0
  %10 = load i32* %9, align 4, !tbaa !13
  %11 = icmp eq i32 %10, 0
  %or.cond = and i1 %4, %11
  br i1 %or.cond, label %16, label %12

; <label>:12                                      ; preds = %5
  %13 = getelementptr inbounds %struct.T_SKTREE* %node.02, i64 0, i32 4
  %14 = load i8** %13, align 8, !tbaa !23
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %file, i8* %format, i8* %14) #7
  br label %16

; <label>:16                                      ; preds = %12, %5
  %17 = getelementptr inbounds %struct.T_SKTREE* %node.02, i64 0, i32 2
  %18 = load %struct.T_SKTREE** %17, align 8, !tbaa !24
  %19 = add nuw nsw i32 %retval.03, 1
  %20 = icmp eq %struct.T_SKTREE* %18, null
  br i1 %20, label %._crit_edge, label %5

._crit_edge:                                      ; preds = %16, %0
  %retval.0.lcssa = phi i32 [ 0, %0 ], [ %19, %16 ]
  ret i32 %retval.0.lcssa
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_ActivatingThorn(i8* %name) #1 {
  %1 = load %struct.T_SKTREE** @implist, align 8, !tbaa !7
  %2 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %1, i8* %name) #7
  %3 = icmp eq %struct.T_SKTREE* %2, null
  br i1 %3, label %14, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.T_SKTREE* %2, i64 0, i32 5
  %6 = bitcast i8** %5 to %struct.IMPLEMENTATION**
  %7 = load %struct.IMPLEMENTATION** %6, align 8, !tbaa !20
  %8 = getelementptr inbounds %struct.IMPLEMENTATION* %7, i64 0, i32 0
  %9 = load i32* %8, align 4, !tbaa !13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

; <label>:11                                      ; preds = %4
  %12 = getelementptr inbounds %struct.IMPLEMENTATION* %7, i64 0, i32 2
  %13 = load i8** %12, align 8, !tbaa !22
  br label %14

; <label>:14                                      ; preds = %4, %0, %11
  %retval.0 = phi i8* [ %13, %11 ], [ null, %4 ], [ null, %0 ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.T_SKTREE* @CCTK_ImpThornList(i8* %name) #1 {
  %1 = load %struct.T_SKTREE** @implist, align 8, !tbaa !7
  %2 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %1, i8* %name) #7
  %3 = icmp eq %struct.T_SKTREE* %2, null
  br i1 %3, label %10, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.T_SKTREE* %2, i64 0, i32 5
  %6 = bitcast i8** %5 to %struct.IMPLEMENTATION**
  %7 = load %struct.IMPLEMENTATION** %6, align 8, !tbaa !20
  %8 = getelementptr inbounds %struct.IMPLEMENTATION* %7, i64 0, i32 1
  %9 = load %struct.T_SKTREE** %8, align 8, !tbaa !15
  br label %10

; <label>:10                                      ; preds = %0, %4
  %retval.0 = phi %struct.T_SKTREE* [ %9, %4 ], [ null, %0 ]
  ret %struct.T_SKTREE* %retval.0
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_NumCompiledThorns() #5 {
  %1 = load i32* @n_thorns, align 4, !tbaa !8
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_CompiledThorn(i32 %tindex) #1 {
  %1 = load %struct.T_SKTREE** @thornlist, align 8, !tbaa !7
  %2 = tail call %struct.T_SKTREE* @SKTreeFindFirst(%struct.T_SKTREE* %1) #7
  %3 = icmp eq %struct.T_SKTREE* %2, null
  br i1 %3, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %0, %8
  %node.03 = phi %struct.T_SKTREE* [ %10, %8 ], [ %2, %0 ]
  %i.02 = phi i32 [ %11, %8 ], [ 0, %0 ]
  %4 = icmp eq i32 %i.02, %tindex
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %.lr.ph
  %6 = getelementptr inbounds %struct.T_SKTREE* %node.03, i64 0, i32 4
  %7 = load i8** %6, align 8, !tbaa !23
  br label %.loopexit

; <label>:8                                       ; preds = %.lr.ph
  %9 = getelementptr inbounds %struct.T_SKTREE* %node.03, i64 0, i32 2
  %10 = load %struct.T_SKTREE** %9, align 8, !tbaa !24
  %11 = add nuw nsw i32 %i.02, 1
  %12 = icmp eq %struct.T_SKTREE* %10, null
  br i1 %12, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %8, %0, %5
  %ret_val.0 = phi i8* [ %7, %5 ], [ null, %0 ], [ null, %8 ]
  ret i8* %ret_val.0
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_NumCompiledImplementations() #5 {
  %1 = load i32* @n_imps, align 4, !tbaa !8
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_CompiledImplementation(i32 %tindex) #1 {
  %1 = load %struct.T_SKTREE** @implist, align 8, !tbaa !7
  %2 = tail call %struct.T_SKTREE* @SKTreeFindFirst(%struct.T_SKTREE* %1) #7
  %3 = icmp eq %struct.T_SKTREE* %2, null
  br i1 %3, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %0, %8
  %node.03 = phi %struct.T_SKTREE* [ %10, %8 ], [ %2, %0 ]
  %i.02 = phi i32 [ %11, %8 ], [ 0, %0 ]
  %4 = icmp eq i32 %i.02, %tindex
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %.lr.ph
  %6 = getelementptr inbounds %struct.T_SKTREE* %node.03, i64 0, i32 4
  %7 = load i8** %6, align 8, !tbaa !23
  br label %.loopexit

; <label>:8                                       ; preds = %.lr.ph
  %9 = getelementptr inbounds %struct.T_SKTREE* %node.03, i64 0, i32 2
  %10 = load %struct.T_SKTREE** %9, align 8, !tbaa !24
  %11 = add nuw nsw i32 %i.02, 1
  %12 = icmp eq %struct.T_SKTREE* %10, null
  br i1 %12, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %8, %0, %5
  %ret_val.0 = phi i8* [ %7, %5 ], [ null, %0 ], [ null, %8 ]
  ret i8* %ret_val.0
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.uStringList* @CCTK_ImplementationRequires(i8* %imp) #1 {
  %1 = load %struct.T_SKTREE** @implist, align 8, !tbaa !7
  %2 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %1, i8* %imp) #7
  %3 = getelementptr inbounds %struct.T_SKTREE* %2, i64 0, i32 5
  %4 = bitcast i8** %3 to %struct.IMPLEMENTATION**
  %5 = load %struct.IMPLEMENTATION** %4, align 8, !tbaa !20
  %6 = load i32* @n_thorns, align 4, !tbaa !8
  %7 = tail call %struct.uStringList* @Util_StringListCreate(i32 %6) #7
  %8 = getelementptr inbounds %struct.IMPLEMENTATION* %5, i64 0, i32 4
  %9 = load i8*** %8, align 8, !tbaa !17
  %10 = load i8** %9, align 8, !tbaa !7
  %11 = icmp eq i8* %10, null
  br i1 %11, label %.preheader, label %CCTK_ImplementationThorn.exit

.preheader:                                       ; preds = %CCTK_ImplementationThorn.exit, %0
  %12 = getelementptr inbounds %struct.IMPLEMENTATION* %5, i64 0, i32 6
  %13 = load i8*** %12, align 8, !tbaa !19
  %14 = load i8** %13, align 8, !tbaa !7
  %15 = icmp eq i8* %14, null
  br i1 %15, label %._crit_edge, label %CCTK_ImplementationThorn.exit2

CCTK_ImplementationThorn.exit:                    ; preds = %0, %CCTK_ImplementationThorn.exit
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %CCTK_ImplementationThorn.exit ], [ 0, %0 ]
  %16 = phi i8* [ %25, %CCTK_ImplementationThorn.exit ], [ %10, %0 ]
  %17 = load %struct.T_SKTREE** @implist, align 8, !tbaa !7
  %18 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %17, i8* %16) #7
  %19 = load i8*** %8, align 8, !tbaa !17
  %20 = getelementptr inbounds i8** %19, i64 %indvars.iv5
  %21 = load i8** %20, align 8, !tbaa !7
  %22 = tail call i32 @Util_StringListAdd(%struct.uStringList* %7, i8* %21) #7
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %23 = load i8*** %8, align 8, !tbaa !17
  %24 = getelementptr inbounds i8** %23, i64 %indvars.iv.next6
  %25 = load i8** %24, align 8, !tbaa !7
  %26 = icmp eq i8* %25, null
  br i1 %26, label %.preheader, label %CCTK_ImplementationThorn.exit

CCTK_ImplementationThorn.exit2:                   ; preds = %.preheader, %CCTK_ImplementationThorn.exit2
  %indvars.iv = phi i64 [ %indvars.iv.next, %CCTK_ImplementationThorn.exit2 ], [ 0, %.preheader ]
  %27 = phi i8* [ %36, %CCTK_ImplementationThorn.exit2 ], [ %14, %.preheader ]
  %28 = load %struct.T_SKTREE** @implist, align 8, !tbaa !7
  %29 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %28, i8* %27) #7
  %30 = load i8*** %8, align 8, !tbaa !17
  %31 = getelementptr inbounds i8** %30, i64 %indvars.iv
  %32 = load i8** %31, align 8, !tbaa !7
  %33 = tail call i32 @Util_StringListAdd(%struct.uStringList* %7, i8* %32) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %34 = load i8*** %12, align 8, !tbaa !19
  %35 = getelementptr inbounds i8** %34, i64 %indvars.iv.next
  %36 = load i8** %35, align 8, !tbaa !7
  %37 = icmp eq i8* %36, null
  br i1 %37, label %._crit_edge, label %CCTK_ImplementationThorn.exit2

._crit_edge:                                      ; preds = %CCTK_ImplementationThorn.exit2, %.preheader
  ret %struct.uStringList* %7
}

; Function Attrs: optsize
declare %struct.uStringList* @Util_StringListCreate(i32) #4

; Function Attrs: optsize
declare i32 @Util_StringListAdd(%struct.uStringList*, i8*) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_ActivateThorns(i8* %activethornlist) #1 {
  %1 = tail call i8* @Util_Strdup(i8* %activethornlist) #7
  %2 = load i32* @n_thorns, align 4, !tbaa !8
  %3 = tail call %struct.uStringList* @Util_StringListCreate(i32 %2) #7
  %4 = load i32* @n_imps, align 4, !tbaa !8
  %5 = tail call %struct.uStringList* @Util_StringListCreate(i32 %4) #7
  %6 = load i32* @n_imps, align 4, !tbaa !8
  %7 = tail call %struct.uStringList* @Util_StringListCreate(i32 %6) #7
  %8 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str11, i64 0, i64 0), i8* %activethornlist) #7
  %9 = tail call i8* @strtok(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0)) #7
  %10 = icmp eq i8* %9, null
  br i1 %10, label %._crit_edge.thread, label %.lr.ph45

._crit_edge.thread:                               ; preds = %0
  tail call void @free(i8* %1) #8
  br label %128

.lr.ph45:                                         ; preds = %0, %.loopexit27
  %token.044 = phi i8* [ %125, %.loopexit27 ], [ %9, %0 ]
  %n_errors.043 = phi i32 [ %n_errors.1, %.loopexit27 ], [ 0, %0 ]
  %11 = load %struct.T_SKTREE** @thornlist, align 8, !tbaa !7
  %12 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %11, i8* %token.044) #7
  %13 = icmp eq %struct.T_SKTREE* %12, null
  br i1 %13, label %CCTK_IsThornActive.exit.thread, label %CCTK_IsThornActive.exit

CCTK_IsThornActive.exit:                          ; preds = %.lr.ph45
  %14 = getelementptr inbounds %struct.T_SKTREE* %12, i64 0, i32 5
  %15 = bitcast i8** %14 to %struct.THORN**
  %16 = load %struct.THORN** %15, align 8, !tbaa !20
  %17 = getelementptr inbounds %struct.THORN* %16, i64 0, i32 0
  %18 = load i32* %17, align 4, !tbaa !12
  %not..i = icmp eq i32 %18, 0
  br i1 %not..i, label %CCTK_IsThornActive.exit.thread, label %19

; <label>:19                                      ; preds = %CCTK_IsThornActive.exit
  %20 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str13, i64 0, i64 0), i8* %token.044) #7
  br label %.loopexit27

CCTK_IsThornActive.exit.thread:                   ; preds = %CCTK_IsThornActive.exit, %.lr.ph45
  %21 = load %struct.T_SKTREE** @thornlist, align 8, !tbaa !7
  %22 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %21, i8* %token.044) #7
  %23 = icmp eq %struct.T_SKTREE* %22, null
  br i1 %23, label %CCTK_ThornImplementation.exit.thread, label %CCTK_ThornImplementation.exit

CCTK_ThornImplementation.exit:                    ; preds = %CCTK_IsThornActive.exit.thread
  %24 = getelementptr inbounds %struct.T_SKTREE* %22, i64 0, i32 5
  %25 = bitcast i8** %24 to %struct.THORN**
  %26 = load %struct.THORN** %25, align 8, !tbaa !20
  %27 = getelementptr inbounds %struct.THORN* %26, i64 0, i32 1
  %28 = load i8** %27, align 8, !tbaa !10
  %29 = icmp eq i8* %28, null
  br i1 %29, label %CCTK_ThornImplementation.exit.thread, label %48

CCTK_ThornImplementation.exit.thread:             ; preds = %CCTK_IsThornActive.exit.thread, %CCTK_ThornImplementation.exit
  %30 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str14, i64 0, i64 0), i8* %token.044) #7
  %31 = add nsw i32 %n_errors.043, 1
  %32 = load %struct.T_SKTREE** @implist, align 8, !tbaa !7
  %33 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %32, i8* %token.044) #7
  %34 = icmp eq %struct.T_SKTREE* %33, null
  br i1 %34, label %.loopexit27, label %35

; <label>:35                                      ; preds = %CCTK_ThornImplementation.exit.thread
  %36 = load %struct.T_SKTREE** @implist, align 8, !tbaa !7
  %37 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %36, i8* %token.044) #7
  %38 = icmp eq %struct.T_SKTREE* %37, null
  br i1 %38, label %CCTK_ImpThornList.exit, label %39

; <label>:39                                      ; preds = %35
  %40 = getelementptr inbounds %struct.T_SKTREE* %37, i64 0, i32 5
  %41 = bitcast i8** %40 to %struct.IMPLEMENTATION**
  %42 = load %struct.IMPLEMENTATION** %41, align 8, !tbaa !20
  %43 = getelementptr inbounds %struct.IMPLEMENTATION* %42, i64 0, i32 1
  %44 = load %struct.T_SKTREE** %43, align 8, !tbaa !15
  br label %CCTK_ImpThornList.exit

CCTK_ImpThornList.exit:                           ; preds = %35, %39
  %retval.0.i10 = phi %struct.T_SKTREE* [ %44, %39 ], [ null, %35 ]
  %45 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([52 x i8]* @.str15, i64 0, i64 0), i8* %token.044) #7
  %46 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str16, i64 0, i64 0)) #7
  %47 = tail call i32 @SKTreeTraverseInorder(%struct.T_SKTREE* %retval.0.i10, i32 (i8*, i8*, i8*)* @JustPrintThornName, i8* null) #7
  %putchar8 = tail call i32 @putchar(i32 10) #6
  br label %.loopexit27

; <label>:48                                      ; preds = %CCTK_ThornImplementation.exit
  %49 = load %struct.T_SKTREE** @implist, align 8, !tbaa !7
  %50 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %49, i8* %28) #7
  %51 = icmp eq %struct.T_SKTREE* %50, null
  br i1 %51, label %CCTK_IsImplementationActive.exit.thread, label %CCTK_IsImplementationActive.exit

CCTK_IsImplementationActive.exit:                 ; preds = %48
  %52 = getelementptr inbounds %struct.T_SKTREE* %50, i64 0, i32 5
  %53 = bitcast i8** %52 to %struct.IMPLEMENTATION**
  %54 = load %struct.IMPLEMENTATION** %53, align 8, !tbaa !20
  %55 = getelementptr inbounds %struct.IMPLEMENTATION* %54, i64 0, i32 0
  %56 = load i32* %55, align 4, !tbaa !13
  %not..i11 = icmp eq i32 %56, 0
  br i1 %not..i11, label %CCTK_IsImplementationActive.exit.thread, label %57

; <label>:57                                      ; preds = %CCTK_IsImplementationActive.exit
  %58 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([61 x i8]* @.str18, i64 0, i64 0), i8* %token.044, i8* %28) #7
  %59 = add nsw i32 %n_errors.043, 1
  br label %.loopexit27

CCTK_IsImplementationActive.exit.thread:          ; preds = %CCTK_IsImplementationActive.exit, %48
  %60 = tail call i32 @Util_StringListAdd(%struct.uStringList* %3, i8* %token.044) #7
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

; <label>:62                                      ; preds = %CCTK_IsImplementationActive.exit.thread
  %63 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([52 x i8]* @.str19, i64 0, i64 0), i8* %token.044) #7
  br label %.loopexit27

; <label>:64                                      ; preds = %CCTK_IsImplementationActive.exit.thread
  %65 = tail call i32 @Util_StringListAdd(%struct.uStringList* %7, i8* %28) #7
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

; <label>:67                                      ; preds = %64
  %68 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([86 x i8]* @.str20, i64 0, i64 0), i8* %token.044, i8* %28) #7
  %69 = add nsw i32 %n_errors.043, 1
  br label %.loopexit27

; <label>:70                                      ; preds = %64
  %71 = load %struct.T_SKTREE** @implist, align 8, !tbaa !7
  %72 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %71, i8* %28) #7
  %73 = icmp eq %struct.T_SKTREE* %72, null
  br i1 %73, label %123, label %74

; <label>:74                                      ; preds = %70
  %75 = tail call i32 @Util_StringListAdd(%struct.uStringList* %5, i8* %28) #7
  %76 = getelementptr inbounds %struct.T_SKTREE* %72, i64 0, i32 5
  %77 = bitcast i8** %76 to %struct.IMPLEMENTATION**
  %78 = load %struct.IMPLEMENTATION** %77, align 8, !tbaa !20
  %79 = getelementptr inbounds %struct.IMPLEMENTATION* %78, i64 0, i32 4
  %80 = load i8*** %79, align 8, !tbaa !17
  %81 = load i8** %80, align 8, !tbaa !7
  %82 = icmp eq i8* %81, null
  br i1 %82, label %.preheader26, label %.lr.ph39

.preheader26:                                     ; preds = %100, %74
  %83 = getelementptr inbounds %struct.IMPLEMENTATION* %78, i64 0, i32 6
  %84 = load i8*** %83, align 8, !tbaa !19
  %85 = load i8** %84, align 8, !tbaa !7
  %86 = icmp eq i8* %85, null
  br i1 %86, label %.loopexit27, label %.lr.ph41

.lr.ph39:                                         ; preds = %74, %100
  %indvars.iv = phi i64 [ %indvars.iv.next, %100 ], [ 0, %74 ]
  %87 = phi i8* [ %103, %100 ], [ %81, %74 ]
  %88 = load %struct.T_SKTREE** @implist, align 8, !tbaa !7
  %89 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %88, i8* %87) #7
  %90 = icmp eq %struct.T_SKTREE* %89, null
  br i1 %90, label %CCTK_IsImplementationActive.exit15.thread, label %CCTK_IsImplementationActive.exit15

CCTK_IsImplementationActive.exit15:               ; preds = %.lr.ph39
  %91 = getelementptr inbounds %struct.T_SKTREE* %89, i64 0, i32 5
  %92 = bitcast i8** %91 to %struct.IMPLEMENTATION**
  %93 = load %struct.IMPLEMENTATION** %92, align 8, !tbaa !20
  %94 = getelementptr inbounds %struct.IMPLEMENTATION* %93, i64 0, i32 0
  %95 = load i32* %94, align 4, !tbaa !13
  %not..i13 = icmp eq i32 %95, 0
  br i1 %not..i13, label %CCTK_IsImplementationActive.exit15.thread, label %100

CCTK_IsImplementationActive.exit15.thread:        ; preds = %CCTK_IsImplementationActive.exit15, %.lr.ph39
  %96 = load i8*** %79, align 8, !tbaa !17
  %97 = getelementptr inbounds i8** %96, i64 %indvars.iv
  %98 = load i8** %97, align 8, !tbaa !7
  %99 = tail call i32 @Util_StringListAdd(%struct.uStringList* %5, i8* %98) #7
  br label %100

; <label>:100                                     ; preds = %CCTK_IsImplementationActive.exit15, %CCTK_IsImplementationActive.exit15.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %101 = load i8*** %79, align 8, !tbaa !17
  %102 = getelementptr inbounds i8** %101, i64 %indvars.iv.next
  %103 = load i8** %102, align 8, !tbaa !7
  %104 = icmp eq i8* %103, null
  br i1 %104, label %.preheader26, label %.lr.ph39

.lr.ph41:                                         ; preds = %.preheader26, %118
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %118 ], [ 0, %.preheader26 ]
  %105 = phi i8* [ %121, %118 ], [ %85, %.preheader26 ]
  %106 = load %struct.T_SKTREE** @implist, align 8, !tbaa !7
  %107 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %106, i8* %105) #7
  %108 = icmp eq %struct.T_SKTREE* %107, null
  br i1 %108, label %CCTK_IsImplementationActive.exit18.thread, label %CCTK_IsImplementationActive.exit18

CCTK_IsImplementationActive.exit18:               ; preds = %.lr.ph41
  %109 = getelementptr inbounds %struct.T_SKTREE* %107, i64 0, i32 5
  %110 = bitcast i8** %109 to %struct.IMPLEMENTATION**
  %111 = load %struct.IMPLEMENTATION** %110, align 8, !tbaa !20
  %112 = getelementptr inbounds %struct.IMPLEMENTATION* %111, i64 0, i32 0
  %113 = load i32* %112, align 4, !tbaa !13
  %not..i16 = icmp eq i32 %113, 0
  br i1 %not..i16, label %CCTK_IsImplementationActive.exit18.thread, label %118

CCTK_IsImplementationActive.exit18.thread:        ; preds = %CCTK_IsImplementationActive.exit18, %.lr.ph41
  %114 = load i8*** %83, align 8, !tbaa !19
  %115 = getelementptr inbounds i8** %114, i64 %indvars.iv48
  %116 = load i8** %115, align 8, !tbaa !7
  %117 = tail call i32 @Util_StringListAdd(%struct.uStringList* %5, i8* %116) #7
  br label %118

; <label>:118                                     ; preds = %CCTK_IsImplementationActive.exit18, %CCTK_IsImplementationActive.exit18.thread
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %119 = load i8*** %83, align 8, !tbaa !19
  %120 = getelementptr inbounds i8** %119, i64 %indvars.iv.next49
  %121 = load i8** %120, align 8, !tbaa !7
  %122 = icmp eq i8* %121, null
  br i1 %122, label %.loopexit27, label %.lr.ph41

; <label>:123                                     ; preds = %70
  %124 = tail call i32 @CCTK_Warn(i32 0, i32 1241, i8* getelementptr inbounds ([81 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str23, i64 0, i64 0)) #7
  br label %.loopexit27

.loopexit27:                                      ; preds = %118, %.preheader26, %CCTK_ThornImplementation.exit.thread, %CCTK_ImpThornList.exit, %62, %123, %67, %57, %19
  %n_errors.1 = phi i32 [ %n_errors.043, %19 ], [ %59, %57 ], [ %n_errors.043, %123 ], [ %69, %67 ], [ %n_errors.043, %62 ], [ %31, %CCTK_ImpThornList.exit ], [ %31, %CCTK_ThornImplementation.exit.thread ], [ %n_errors.043, %.preheader26 ], [ %n_errors.043, %118 ]
  %125 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0)) #7
  %126 = icmp eq i8* %125, null
  br i1 %126, label %._crit_edge, label %.lr.ph45

._crit_edge:                                      ; preds = %.loopexit27
  tail call void @free(i8* %1) #8
  %127 = icmp eq i32 %n_errors.1, 0
  br i1 %127, label %128, label %.thread

; <label>:128                                     ; preds = %._crit_edge.thread, %._crit_edge
  %129 = tail call i8* @Util_StringListNext(%struct.uStringList* %7, i32 1) #7
  %130 = tail call i8* @Util_StringListNext(%struct.uStringList* %5, i32 1) #7
  %131 = icmp ne i8* %129, null
  %132 = icmp ne i8* %130, null
  %or.cond32 = and i1 %131, %132
  br i1 %or.cond32, label %.preheader, label %.critedge.preheader

.preheader:                                       ; preds = %128, %159
  %imp2.035 = phi i8* [ %161, %159 ], [ %130, %128 ]
  %imp1.034 = phi i8* [ %160, %159 ], [ %129, %128 ]
  %n_errors.233 = phi i32 [ %n_errors.4, %159 ], [ 0, %128 ]
  br label %134

.critedge.preheader:                              ; preds = %159, %128
  %imp2.0.lcssa = phi i8* [ %130, %128 ], [ %161, %159 ]
  %n_errors.2.lcssa = phi i32 [ 0, %128 ], [ %n_errors.4, %159 ]
  %133 = icmp eq i8* %imp2.0.lcssa, null
  br i1 %133, label %.critedge._crit_edge, label %.lr.ph31

; <label>:134                                     ; preds = %.preheader, %156
  %n_errors.3 = phi i32 [ %139, %156 ], [ %n_errors.233, %.preheader ]
  %imp2.1 = phi i8* [ %157, %156 ], [ %imp2.035, %.preheader ]
  %135 = tail call i32 @Util_StrCmpi(i8* %imp1.034, i8* %imp2.1) #7
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %159, label %137

; <label>:137                                     ; preds = %134
  %138 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([50 x i8]* @.str24, i64 0, i64 0), i8* %imp2.1) #7
  %puts4 = tail call i32 @puts(i8* getelementptr inbounds ([76 x i8]* @str36, i64 0, i64 0))
  %139 = add nsw i32 %n_errors.3, 1
  %140 = load %struct.T_SKTREE** @implist, align 8, !tbaa !7
  %141 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %140, i8* %imp2.1) #7
  %142 = icmp eq %struct.T_SKTREE* %141, null
  br i1 %142, label %155, label %143

; <label>:143                                     ; preds = %137
  %144 = load %struct.T_SKTREE** @implist, align 8, !tbaa !7
  %145 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %144, i8* %imp2.1) #7
  %146 = icmp eq %struct.T_SKTREE* %145, null
  br i1 %146, label %CCTK_ImpThornList.exit21, label %147

; <label>:147                                     ; preds = %143
  %148 = getelementptr inbounds %struct.T_SKTREE* %145, i64 0, i32 5
  %149 = bitcast i8** %148 to %struct.IMPLEMENTATION**
  %150 = load %struct.IMPLEMENTATION** %149, align 8, !tbaa !20
  %151 = getelementptr inbounds %struct.IMPLEMENTATION* %150, i64 0, i32 1
  %152 = load %struct.T_SKTREE** %151, align 8, !tbaa !15
  br label %CCTK_ImpThornList.exit21

CCTK_ImpThornList.exit21:                         ; preds = %143, %147
  %retval.0.i20 = phi %struct.T_SKTREE* [ %152, %147 ], [ null, %143 ]
  %puts6 = tail call i32 @puts(i8* getelementptr inbounds ([59 x i8]* @str38, i64 0, i64 0))
  %153 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str27, i64 0, i64 0)) #7
  %154 = tail call i32 @SKTreeTraverseInorder(%struct.T_SKTREE* %retval.0.i20, i32 (i8*, i8*, i8*)* @JustPrintThornName, i8* null) #7
  %putchar7 = tail call i32 @putchar(i32 10) #6
  br label %156

; <label>:155                                     ; preds = %137
  %puts5 = tail call i32 @puts(i8* getelementptr inbounds ([65 x i8]* @str37, i64 0, i64 0))
  br label %156

; <label>:156                                     ; preds = %155, %CCTK_ImpThornList.exit21
  %157 = tail call i8* @Util_StringListNext(%struct.uStringList* %5, i32 0) #7
  %158 = icmp eq i8* %157, null
  br i1 %158, label %159, label %134

; <label>:159                                     ; preds = %156, %134
  %n_errors.4 = phi i32 [ %139, %156 ], [ %n_errors.3, %134 ]
  %160 = tail call i8* @Util_StringListNext(%struct.uStringList* %7, i32 0) #7
  %161 = tail call i8* @Util_StringListNext(%struct.uStringList* %5, i32 0) #7
  %162 = icmp ne i8* %160, null
  %163 = icmp ne i8* %161, null
  %or.cond = and i1 %162, %163
  br i1 %or.cond, label %.preheader, label %.critedge.preheader

.lr.ph31:                                         ; preds = %.critedge.preheader, %.critedge
  %imp2.230 = phi i8* [ %182, %.critedge ], [ %imp2.0.lcssa, %.critedge.preheader ]
  %n_errors.529 = phi i32 [ %165, %.critedge ], [ %n_errors.2.lcssa, %.critedge.preheader ]
  %164 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([49 x i8]* @.str29, i64 0, i64 0), i8* %imp2.230) #7
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([76 x i8]* @str36, i64 0, i64 0))
  %165 = add nsw i32 %n_errors.529, 1
  %166 = load %struct.T_SKTREE** @implist, align 8, !tbaa !7
  %167 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %166, i8* %imp2.230) #7
  %168 = icmp eq %struct.T_SKTREE* %167, null
  br i1 %168, label %181, label %169

; <label>:169                                     ; preds = %.lr.ph31
  %170 = load %struct.T_SKTREE** @implist, align 8, !tbaa !7
  %171 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %170, i8* %imp2.230) #7
  %172 = icmp eq %struct.T_SKTREE* %171, null
  br i1 %172, label %CCTK_ImpThornList.exit24, label %173

; <label>:173                                     ; preds = %169
  %174 = getelementptr inbounds %struct.T_SKTREE* %171, i64 0, i32 5
  %175 = bitcast i8** %174 to %struct.IMPLEMENTATION**
  %176 = load %struct.IMPLEMENTATION** %175, align 8, !tbaa !20
  %177 = getelementptr inbounds %struct.IMPLEMENTATION* %176, i64 0, i32 1
  %178 = load %struct.T_SKTREE** %177, align 8, !tbaa !15
  br label %CCTK_ImpThornList.exit24

CCTK_ImpThornList.exit24:                         ; preds = %169, %173
  %retval.0.i23 = phi %struct.T_SKTREE* [ %178, %173 ], [ null, %169 ]
  %puts3 = tail call i32 @puts(i8* getelementptr inbounds ([59 x i8]* @str38, i64 0, i64 0))
  %179 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str27, i64 0, i64 0)) #7
  %180 = tail call i32 @SKTreeTraverseInorder(%struct.T_SKTREE* %retval.0.i23, i32 (i8*, i8*, i8*)* @JustPrintThornName, i8* null) #7
  %putchar = tail call i32 @putchar(i32 10) #6
  br label %.critedge

; <label>:181                                     ; preds = %.lr.ph31
  %puts2 = tail call i32 @puts(i8* getelementptr inbounds ([65 x i8]* @str37, i64 0, i64 0))
  br label %.critedge

.critedge:                                        ; preds = %181, %CCTK_ImpThornList.exit24
  %182 = tail call i8* @Util_StringListNext(%struct.uStringList* %5, i32 0) #7
  %183 = icmp eq i8* %182, null
  br i1 %183, label %.critedge._crit_edge, label %.lr.ph31

.critedge._crit_edge:                             ; preds = %.critedge, %.critedge.preheader
  %n_errors.5.lcssa = phi i32 [ %n_errors.2.lcssa, %.critedge.preheader ], [ %165, %.critedge ]
  %184 = icmp eq i32 %n_errors.5.lcssa, 0
  br i1 %184, label %185, label %.thread

; <label>:185                                     ; preds = %.critedge._crit_edge
  %186 = tail call i8* @Util_StringListNext(%struct.uStringList* %3, i32 1) #7
  %187 = icmp eq i8* %186, null
  br i1 %187, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %185, %ActivateThorn.exit
  %thorn.028 = phi i8* [ %211, %ActivateThorn.exit ], [ %186, %185 ]
  %188 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str5, i64 0, i64 0), i8* %thorn.028) #7
  %189 = load %struct.T_SKTREE** @thornlist, align 8, !tbaa !7
  %190 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %189, i8* %thorn.028) #7
  %191 = icmp eq %struct.T_SKTREE* %190, null
  br i1 %191, label %ActivateThorn.exit, label %192

; <label>:192                                     ; preds = %.lr.ph
  %193 = getelementptr inbounds %struct.T_SKTREE* %190, i64 0, i32 5
  %194 = bitcast i8** %193 to %struct.THORN**
  %195 = load %struct.THORN** %194, align 8, !tbaa !20
  %196 = getelementptr inbounds %struct.THORN* %195, i64 0, i32 0
  store i32 1, i32* %196, align 4, !tbaa !12
  %197 = getelementptr inbounds %struct.THORN* %195, i64 0, i32 1
  %198 = load i8** %197, align 8, !tbaa !10
  %199 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str6, i64 0, i64 0), i8* %198) #7
  %200 = load i8** %197, align 8, !tbaa !10
  %201 = load %struct.T_SKTREE** @implist, align 8, !tbaa !7
  %202 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %201, i8* %200) #7
  %203 = icmp eq %struct.T_SKTREE* %202, null
  br i1 %203, label %ActivateThorn.exit, label %204

; <label>:204                                     ; preds = %192
  %205 = getelementptr inbounds %struct.T_SKTREE* %202, i64 0, i32 5
  %206 = bitcast i8** %205 to %struct.IMPLEMENTATION**
  %207 = load %struct.IMPLEMENTATION** %206, align 8, !tbaa !20
  %208 = getelementptr inbounds %struct.IMPLEMENTATION* %207, i64 0, i32 0
  store i32 1, i32* %208, align 4, !tbaa !13
  %209 = tail call i8* @Util_Strdup(i8* %thorn.028) #7
  %210 = getelementptr inbounds %struct.IMPLEMENTATION* %207, i64 0, i32 2
  store i8* %209, i8** %210, align 8, !tbaa !22
  br label %ActivateThorn.exit

ActivateThorn.exit:                               ; preds = %.lr.ph, %192, %204
  %211 = tail call i8* @Util_StringListNext(%struct.uStringList* %3, i32 0) #7
  %212 = icmp eq i8* %211, null
  br i1 %212, label %.loopexit, label %.lr.ph

.thread:                                          ; preds = %._crit_edge, %.critedge._crit_edge
  %n_errors.625 = phi i32 [ %n_errors.5.lcssa, %.critedge._crit_edge ], [ %n_errors.1, %._crit_edge ]
  %213 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([54 x i8]* @.str30, i64 0, i64 0), i32 %n_errors.625) #7
  %214 = sub nsw i32 0, %n_errors.625
  br label %.loopexit

.loopexit:                                        ; preds = %ActivateThorn.exit, %185, %.thread
  %retval.0 = phi i32 [ %214, %.thread ], [ 0, %185 ], [ 0, %ActivateThorn.exit ]
  tail call void @Util_StringListDestroy(%struct.uStringList* %3) #7
  tail call void @Util_StringListDestroy(%struct.uStringList* %5) #7
  tail call void @Util_StringListDestroy(%struct.uStringList* %7) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i8* @strtok(i8*, i8* nocapture readonly) #3

; Function Attrs: optsize
declare i32 @SKTreeTraverseInorder(%struct.T_SKTREE*, i32 (i8*, i8*, i8*)*, i8*) #4

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @JustPrintThornName(i8* %key, i8* nocapture readnone %input, i8* nocapture readnone %dummy) #1 {
  %1 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str32, i64 0, i64 0), i8* %key) #7
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #4

; Function Attrs: optsize
declare i8* @Util_StringListNext(%struct.uStringList*, i32) #4

; Function Attrs: optsize
declare i32 @Util_StrCmpi(i8*, i8*) #4

; Function Attrs: optsize
declare void @Util_StringListDestroy(%struct.uStringList*) #4

; Function Attrs: optsize
declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @CompareStrings(i8* nocapture readonly %string1, i8* nocapture readonly %string2) #1 {
  %1 = bitcast i8* %string1 to i8**
  %2 = load i8** %1, align 8, !tbaa !7
  %3 = bitcast i8* %string2 to i8**
  %4 = load i8** %3, align 8, !tbaa !7
  %5 = tail call i32 @Util_StrCmpi(i8* %2, i8* %4) #7
  ret i32 %5
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #6

; Function Attrs: nounwind
declare i32 @putchar(i32) #6

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"iAttributeList", !4, i64 0, !5, i64 8}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!4, !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !5, i64 0}
!10 = !{!11, !4, i64 8}
!11 = !{!"THORN", !9, i64 0, !4, i64 8}
!12 = !{!11, !9, i64 0}
!13 = !{!14, !9, i64 0}
!14 = !{!"IMPLEMENTATION", !9, i64 0, !4, i64 8, !4, i64 16, !9, i64 24, !4, i64 32, !9, i64 40, !4, i64 48}
!15 = !{!14, !4, i64 8}
!16 = !{!14, !9, i64 24}
!17 = !{!14, !4, i64 32}
!18 = !{!14, !9, i64 40}
!19 = !{!14, !4, i64 48}
!20 = !{!21, !4, i64 40}
!21 = !{!"T_SKTREE", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40}
!22 = !{!14, !4, i64 16}
!23 = !{!21, !4, i64 32}
!24 = !{!21, !4, i64 16}

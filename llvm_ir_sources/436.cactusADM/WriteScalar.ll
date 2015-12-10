; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.anon.1 = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.ioAdvertisedFileDesc = type { i8*, i8*, i8*, i8*, i8* }
%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }
%struct.PNamedData = type { %struct.PNamedData*, %struct.PNamedData*, i8*, i8* }

@iobasicpriv_ = external global %struct.anon
@iorest_ = external global %struct.anon.1
@.str = private unnamed_addr constant [81 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c\00", align 1
@.str1 = private unnamed_addr constant [8 x i8] c"IOBasic\00", align 1
@.str2 = private unnamed_addr constant [62 x i8] c"IOBasic_WriteScalarGA: No scalar output for '%s' (no storage)\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"%%%s\09%%%s\0A\00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"gnuplot\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c".asc\00", align 1
@.str6 = private unnamed_addr constant [4 x i8] c".xg\00", align 1
@.str7 = private unnamed_addr constant [55 x i8] c"IOBasic_WriteScalarGA: Invalid reduction operator '%s'\00", align 1
@CCTK_MyProc = external global i32 (%struct.cGH*)*
@.str8 = private unnamed_addr constant [10 x i8] c"%s%s_%s%s\00", align 1
@.str9 = private unnamed_addr constant [8 x i8] c"minimum\00", align 1
@.str10 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str11 = private unnamed_addr constant [8 x i8] c"maximum\00", align 1
@.str12 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str13 = private unnamed_addr constant [6 x i8] c"norm1\00", align 1
@.str14 = private unnamed_addr constant [4 x i8] c"nm1\00", align 1
@.str15 = private unnamed_addr constant [6 x i8] c"norm2\00", align 1
@.str16 = private unnamed_addr constant [4 x i8] c"nm2\00", align 1
@.str17 = private unnamed_addr constant [11 x i8] c"%s%s_%s.tl\00", align 1
@.str18 = private unnamed_addr constant [25 x i8] c"Reduction on Grid Arrays\00", align 1
@.str19 = private unnamed_addr constant [55 x i8] c"IOBasic_WriteScalarGA: Could not open output file '%s'\00", align 1
@.str20 = private unnamed_addr constant [62 x i8] c"IOBasic_WriteScalarGS: No scalar output for '%s' (no storage)\00", align 1
@.str21 = private unnamed_addr constant [10 x i8] c"%%%s\09%%d\0A\00", align 1
@.str22 = private unnamed_addr constant [4 x i8] c".tl\00", align 1
@.str23 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str24 = private unnamed_addr constant [3 x i8] c"tl\00", align 1
@.str25 = private unnamed_addr constant [13 x i8] c"Scalar value\00", align 1
@.str26 = private unnamed_addr constant [22 x i8] c"Unsupported data type\00", align 1
@.str27 = private unnamed_addr constant [55 x i8] c"IOBasic_WriteScalarGS: Could not open output file '%s'\00", align 1
@.str28 = private unnamed_addr constant [93 x i8] c"$Header: /cactus/CactusBase/IOBasic/src/WriteScalar.c,v 1.7 2002/01/18 15:30:33 tradke Exp $\00", align 1
@_DefaultRuneLocale = external global %struct._RuneLocale
@.str29 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str30 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str31 = private unnamed_addr constant [20 x i8] c"application/gnuplot\00", align 1
@.str32 = private unnamed_addr constant [20 x i8] c"application/x-graph\00", align 1
@.str33 = private unnamed_addr constant [19 x i8] c"parameter filename\00", align 1
@.str34 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str35 = private unnamed_addr constant [21 x i8] c"%cParameter file %s\0A\00", align 1
@.str36 = private unnamed_addr constant [14 x i8] c"creation date\00", align 1
@.str37 = private unnamed_addr constant [14 x i8] c"%cCreated %s \00", align 1
@.str38 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str39 = private unnamed_addr constant [12 x i8] c"axis labels\00", align 1
@.str40 = private unnamed_addr constant [16 x i8] c"%cx-label time\0A\00", align 1
@.str41 = private unnamed_addr constant [14 x i8] c"%cy-label %s\0A\00", align 1
@.str42 = private unnamed_addr constant [13 x i8] c"%c%s v time\0A\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_IOBasic_WriteScalar_c() #0 {
  ret i8* getelementptr inbounds ([93 x i8]* @.str28, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOBasic_WriteScalarGA(%struct.cGH* %GH, i32 %vindex, i8* %alias) #1 {
  %format_str = alloca [15 x i8], align 1
  %reduction_value = alloca double, align 8
  %1 = load i8** getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 2), align 8, !tbaa !2
  %2 = load i8** getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 3), align 8, !tbaa !8
  %3 = load i8** getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 5), align 8, !tbaa !9
  %4 = load i32* getelementptr inbounds (%struct.anon.1* @iorest_, i64 0, i32 28), align 4, !tbaa !10
  %5 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #7
  %6 = tail call i32 @CCTK_QueryGroupStorageI(%struct.cGH* %GH, i32 %5) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %0
  %9 = tail call i8* @CCTK_FullName(i32 %vindex) #7
  %10 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 112, i8* getelementptr inbounds ([81 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i8* %9) #7
  tail call void @free(i8* %9) #8
  br label %124

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds [15 x i8]* %format_str, i64 0, i64 0
  %13 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %12, i32 0, i64 15, i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* %3, i8* %3) #7
  %14 = call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0)) #7
  %15 = call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #7
  %16 = call i64 @strlen(i8* %1) #7
  %17 = add i64 %16, 1
  %18 = call i8* @malloc(i64 %17) #7
  %19 = icmp eq i8* %1, null
  br i1 %19, label %.critedge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %11
  %20 = call i64 @llvm.objectsize.i64.p0i8(i8* %18, i1 false)
  %21 = bitcast double* %reduction_value to i8*
  %22 = icmp eq i32 %4, 0
  %23 = getelementptr inbounds i8* %15, i64 24
  %24 = bitcast i8* %23 to i8**
  %25 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16
  %26 = load i8* %1, align 1, !tbaa !13
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %.critedge, label %.preheader8.preheader.lr.ph.lr.ph

.preheader8.preheader.lr.ph.lr.ph:                ; preds = %.lr.ph.lr.ph
  %28 = icmp ne i32 %14, 0
  %29 = select i1 %28, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str6, i64 0, i64 0)
  br label %.preheader8.preheader.lr.ph

.preheader8.preheader.lr.ph:                      ; preds = %.preheader8.preheader.lr.ph.lr.ph, %.outer
  %30 = phi i8 [ %26, %.preheader8.preheader.lr.ph.lr.ph ], [ %122, %.outer ]
  %file_extension.0.ph1217 = phi i8* [ %29, %.preheader8.preheader.lr.ph.lr.ph ], [ %file_extension.2, %.outer ]
  %string_start.0.ph1316 = phi i8* [ %1, %.preheader8.preheader.lr.ph.lr.ph ], [ %string_end.0, %.outer ]
  br label %.preheader8

.preheader8:                                      ; preds = %.backedge.backedge, %.preheader8.preheader.lr.ph, %isspace.exit._crit_edge
  %31 = phi i8 [ %.pre, %isspace.exit._crit_edge ], [ %30, %.preheader8.preheader.lr.ph ], [ %64, %.backedge.backedge ]
  %string_start.1 = phi i8* [ %40, %isspace.exit._crit_edge ], [ %string_start.0.ph1316, %.preheader8.preheader.lr.ph ], [ %string_end.0, %.backedge.backedge ]
  %isascii.i.i6 = icmp sgt i8 %31, -1
  br i1 %isascii.i.i6, label %32, label %37

; <label>:32                                      ; preds = %.preheader8
  %33 = sext i8 %31 to i64
  %34 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %33
  %35 = load i32* %34, align 4, !tbaa !14
  %36 = and i32 %35, 16384
  br label %isspace.exit

; <label>:37                                      ; preds = %.preheader8
  %38 = sext i8 %31 to i32
  %39 = call i32 @__maskrune(i32 %38, i64 16384) #7
  br label %isspace.exit

isspace.exit:                                     ; preds = %32, %37
  %.sink.i.in.i = phi i32 [ %36, %32 ], [ %39, %37 ]
  %.sink.i.i = icmp eq i32 %.sink.i.in.i, 0
  %40 = getelementptr inbounds i8* %string_start.1, i64 1
  br i1 %.sink.i.i, label %41, label %isspace.exit._crit_edge

isspace.exit._crit_edge:                          ; preds = %isspace.exit
  %.pre = load i8* %40, align 1, !tbaa !13
  br label %.preheader8

; <label>:41                                      ; preds = %isspace.exit
  %42 = load i8* %string_start.1, align 1, !tbaa !13
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %.critedge, label %.preheader

.preheader:                                       ; preds = %41, %isspace.exit5
  %string_start.1.pn = phi i8* [ %string_end.0, %isspace.exit5 ], [ %string_start.1, %41 ]
  %string_end.0 = getelementptr inbounds i8* %string_start.1.pn, i64 1
  %44 = load i8* %string_end.0, align 1, !tbaa !13
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %.critedge1, label %46

; <label>:46                                      ; preds = %.preheader
  %isascii.i.i27 = icmp sgt i8 %44, -1
  br i1 %isascii.i.i27, label %47, label %52

; <label>:47                                      ; preds = %46
  %48 = sext i8 %44 to i64
  %49 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %48
  %50 = load i32* %49, align 4, !tbaa !14
  %51 = and i32 %50, 16384
  br label %isspace.exit5

; <label>:52                                      ; preds = %46
  %53 = sext i8 %44 to i32
  %54 = call i32 @__maskrune(i32 %53, i64 16384) #7
  br label %isspace.exit5

isspace.exit5:                                    ; preds = %47, %52
  %.sink.i.in.i3 = phi i32 [ %51, %47 ], [ %54, %52 ]
  %.sink.i.i4 = icmp eq i32 %.sink.i.in.i3, 0
  br i1 %.sink.i.i4, label %.preheader, label %.critedge1

.critedge1:                                       ; preds = %isspace.exit5, %.preheader
  %55 = ptrtoint i8* %string_end.0 to i64
  %56 = ptrtoint i8* %string_start.1 to i64
  %57 = sub i64 %55, %56
  %58 = call i8* @__strncpy_chk(i8* %18, i8* %string_start.1, i64 %57, i64 %20) #7
  %59 = getelementptr inbounds i8* %18, i64 %57
  store i8 0, i8* %59, align 1, !tbaa !13
  %60 = call i32 @CCTK_ReductionHandle(i8* %18) #7
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

; <label>:62                                      ; preds = %.critedge1
  %63 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 161, i8* getelementptr inbounds ([81 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str7, i64 0, i64 0), i8* %18) #7
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %62, %69, %66
  %64 = load i8* %string_end.0, align 1, !tbaa !13
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %.critedge, label %.preheader8

; <label>:66                                      ; preds = %.critedge1
  %67 = call i32 (%struct.cGH*, i32, i32, i32, i32, i8*, i32, ...)* @CCTK_Reduce(%struct.cGH* %GH, i32 0, i32 %60, i32 1, i32 6, i8* %21, i32 1, i32 %vindex) #7
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %.backedge.backedge

; <label>:69                                      ; preds = %66
  %70 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !tbaa !15
  %71 = call i32 %70(%struct.cGH* %GH) #7
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %.backedge.backedge

; <label>:73                                      ; preds = %69
  br i1 %22, label %88, label %74

; <label>:74                                      ; preds = %73
  %75 = load i8** %24, align 8, !tbaa !16
  %76 = call i64 @strlen(i8* %75) #7
  %77 = call i64 @strlen(i8* %alias) #7
  %78 = call i64 @strlen(i8* %18) #7
  %79 = call i64 @strlen(i8* %file_extension.0.ph1217) #7
  %80 = add i64 %76, 2
  %81 = add i64 %80, %77
  %82 = add i64 %81, %78
  %83 = add i64 %82, %79
  %84 = call i8* @malloc(i64 %83) #7
  %85 = call i64 @llvm.objectsize.i64.p0i8(i8* %84, i1 false)
  %86 = load i8** %24, align 8, !tbaa !16
  %87 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %84, i32 0, i64 %85, i8* getelementptr inbounds ([10 x i8]* @.str8, i64 0, i64 0), i8* %86, i8* %alias, i8* %18, i8* %file_extension.0.ph1217) #7
  br label %112

; <label>:88                                      ; preds = %73
  %89 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0)) #7
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %100, label %91

; <label>:91                                      ; preds = %88
  %92 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([8 x i8]* @.str11, i64 0, i64 0)) #7
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %100, label %94

; <label>:94                                      ; preds = %91
  %95 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0)) #7
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

; <label>:97                                      ; preds = %94
  %98 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([6 x i8]* @.str15, i64 0, i64 0)) #7
  %99 = icmp eq i32 %98, 0
  %. = select i1 %99, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i8* %18
  br label %100

; <label>:100                                     ; preds = %97, %94, %91, %88
  %file_extension.1 = phi i8* [ getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), %88 ], [ getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0), %91 ], [ getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), %94 ], [ %., %97 ]
  %101 = load i8** %24, align 8, !tbaa !16
  %102 = call i64 @strlen(i8* %101) #7
  %103 = call i64 @strlen(i8* %alias) #7
  %104 = call i64 @strlen(i8* %file_extension.1) #7
  %105 = add i64 %102, 5
  %106 = add i64 %105, %103
  %107 = add i64 %106, %104
  %108 = call i8* @malloc(i64 %107) #7
  %109 = call i64 @llvm.objectsize.i64.p0i8(i8* %108, i1 false)
  %110 = load i8** %24, align 8, !tbaa !16
  %111 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %108, i32 0, i64 %109, i8* getelementptr inbounds ([11 x i8]* @.str17, i64 0, i64 0), i8* %110, i8* %alias, i8* %file_extension.1) #7
  br label %112

; <label>:112                                     ; preds = %100, %74
  %file_extension.2 = phi i8* [ %file_extension.0.ph1217, %74 ], [ %file_extension.1, %100 ]
  %filename.0 = phi i8* [ %84, %74 ], [ %108, %100 ]
  %113 = call fastcc %struct.__sFILE* @OpenScalarFile(%struct.cGH* %GH, i32 %vindex, i8* %filename.0, i8* %18, i8* getelementptr inbounds ([25 x i8]* @.str18, i64 0, i64 0), i8* %alias) #8
  %114 = icmp eq %struct.__sFILE* %113, null
  br i1 %114, label %120, label %115

; <label>:115                                     ; preds = %112
  %116 = load double* %25, align 8, !tbaa !18
  %117 = load double* %reduction_value, align 8, !tbaa !20
  %118 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %113, i8* %12, double %116, double %117) #7
  %119 = call i32 @fclose(%struct.__sFILE* %113) #7
  br label %.outer

; <label>:120                                     ; preds = %112
  %121 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 225, i8* getelementptr inbounds ([81 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str19, i64 0, i64 0), i8* %filename.0) #7
  br label %.outer

.outer:                                           ; preds = %120, %115
  call void @free(i8* %filename.0) #8
  %122 = load i8* %string_end.0, align 1, !tbaa !13
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %.critedge, label %.preheader8.preheader.lr.ph

.critedge:                                        ; preds = %.outer, %.lr.ph.lr.ph, %41, %.backedge.backedge, %11
  call void @free(i8* %18) #8
  br label %124

; <label>:124                                     ; preds = %.critedge, %8
  %.0 = phi i32 [ 0, %.critedge ], [ -1, %8 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @CCTK_QueryGroupStorageI(%struct.cGH*, i32) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #2

; Function Attrs: optsize
declare i8* @CCTK_FullName(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #2

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

; Function Attrs: optsize
declare i8* @CCTK_GHExtension(%struct.cGH*, i8*) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i8* @__strncpy_chk(i8*, i8*, i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #5

; Function Attrs: optsize
declare i32 @CCTK_ReductionHandle(i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_Reduce(%struct.cGH*, i32, i32, i32, i32, i8*, i32, ...) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc %struct.__sFILE* @OpenScalarFile(%struct.cGH* %GH, i32 %vindex, i8* %filename, i8* %slicename, i8* %description, i8* %aliasname) #1 {
  %buffer = alloca [128 x i8], align 16
  %advertised_file = alloca %struct.ioAdvertisedFileDesc, align 8
  %fileinfo = alloca %struct.stat, align 8
  %1 = load i8** getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 3), align 8, !tbaa !8
  %2 = load i8** getelementptr inbounds (%struct.anon.1* @iorest_, i64 0, i32 14), align 8, !tbaa !21
  %3 = getelementptr inbounds [128 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start(i64 128, i8* %3) #6
  %4 = bitcast %struct.ioAdvertisedFileDesc* %advertised_file to i8*
  call void @llvm.lifetime.start(i64 40, i8* %4) #6
  %5 = bitcast %struct.stat* %fileinfo to i8*
  call void @llvm.lifetime.start(i64 144, i8* %5) #6
  %6 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #7
  %7 = tail call i8* @CCTK_FullName(i32 %vindex) #7
  %8 = getelementptr inbounds i8* %6, i64 56
  %9 = bitcast i8* %8 to %struct.PNamedData**
  %10 = load %struct.PNamedData** %9, align 8, !tbaa !22
  %11 = tail call i8* @GetNamedData(%struct.PNamedData* %10, i8* %filename) #7
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %20

; <label>:13                                      ; preds = %0
  %14 = tail call i32 @IOUtil_RestartFromRecovery(%struct.cGH* %GH) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

; <label>:16                                      ; preds = %13
  %17 = call i32 @"\01_stat$INODE64"(i8* %filename, %struct.stat* %fileinfo) #7
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i8* getelementptr inbounds ([2 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str30, i64 0, i64 0)
  br label %20

; <label>:20                                      ; preds = %0, %13, %16
  %openmode.0 = phi i8* [ %19, %16 ], [ getelementptr inbounds ([2 x i8]* @.str30, i64 0, i64 0), %13 ], [ getelementptr inbounds ([2 x i8]* @.str29, i64 0, i64 0), %0 ]
  %21 = call %struct.__sFILE* @"\01_fopen"(i8* %filename, i8* %openmode.0) #7
  %22 = icmp eq %struct.__sFILE* %21, null
  br i1 %22, label %67, label %23

; <label>:23                                      ; preds = %20
  %24 = load i8* %openmode.0, align 1, !tbaa !13
  %25 = icmp eq i8 %24, 119
  br i1 %25, label %26, label %67

; <label>:26                                      ; preds = %23
  %27 = call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0)) #7
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 2
  %. = select i1 %28, i8* getelementptr inbounds ([20 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str31, i64 0, i64 0)
  %.1 = select i1 %28, i32 34, i32 35
  store i8* %., i8** %29, align 8, !tbaa !23
  %30 = call i32 @StoreNamedData(%struct.PNamedData** %9, i8* %filename, i8* inttoptr (i64 1 to i8*)) #7
  %31 = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 3
  store i8* %slicename, i8** %31, align 8, !tbaa !25
  %32 = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 0
  store i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8** %32, align 8, !tbaa !26
  %33 = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 1
  store i8* %7, i8** %33, align 8, !tbaa !27
  %34 = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 4
  store i8* %description, i8** %34, align 8, !tbaa !28
  %35 = call i32 @IOUtil_AdvertiseFile(%struct.cGH* %GH, i8* %filename, %struct.ioAdvertisedFileDesc* %advertised_file) #7
  %36 = call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([19 x i8]* @.str33, i64 0, i64 0)) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

; <label>:38                                      ; preds = %26
  %39 = call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([4 x i8]* @.str34, i64 0, i64 0)) #7
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

; <label>:41                                      ; preds = %38, %26
  store i8 0, i8* %3, align 16, !tbaa !13
  %42 = call i32 @CCTK_ParameterFilename(i32 128, i8* %3) #7
  %43 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([21 x i8]* @.str35, i64 0, i64 0), i32 %.1, i8* %3) #7
  br label %44

; <label>:44                                      ; preds = %38, %41
  %45 = call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([14 x i8]* @.str36, i64 0, i64 0)) #7
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

; <label>:47                                      ; preds = %44
  %48 = call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([4 x i8]* @.str34, i64 0, i64 0)) #7
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %55, label %50

; <label>:50                                      ; preds = %47, %44
  store i8 0, i8* %3, align 16, !tbaa !13
  %51 = call i32 @Util_CurrentDate(i32 128, i8* %3) #7
  %52 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([14 x i8]* @.str37, i64 0, i64 0), i32 %.1, i8* %3) #7
  %53 = call i32 @Util_CurrentTime(i32 128, i8* %3) #7
  %54 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([4 x i8]* @.str38, i64 0, i64 0), i8* %3) #7
  br label %55

; <label>:55                                      ; preds = %47, %50
  %56 = call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([12 x i8]* @.str39, i64 0, i64 0)) #7
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

; <label>:58                                      ; preds = %55
  %59 = call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([4 x i8]* @.str34, i64 0, i64 0)) #7
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

; <label>:61                                      ; preds = %58, %55
  %62 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([16 x i8]* @.str40, i64 0, i64 0), i32 %.1) #7
  %63 = load i8** %33, align 8, !tbaa !27
  %64 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([14 x i8]* @.str41, i64 0, i64 0), i32 %.1, i8* %63) #7
  br label %65

; <label>:65                                      ; preds = %58, %61
  %66 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([13 x i8]* @.str42, i64 0, i64 0), i32 %.1, i8* %aliasname) #7
  br label %67

; <label>:67                                      ; preds = %20, %65, %23
  call void @free(i8* %7) #8
  call void @llvm.lifetime.end(i64 144, i8* %5) #6
  call void @llvm.lifetime.end(i64 40, i8* %4) #6
  call void @llvm.lifetime.end(i64 128, i8* %3) #6
  ret %struct.__sFILE* %21
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct.__sFILE* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOBasic_WriteScalarGS(%struct.cGH* %GH, i32 %vindex, i8* %alias) #1 {
  %format_str_real = alloca [15 x i8], align 1
  %format_str_int = alloca [15 x i8], align 1
  %1 = load i8** getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 3), align 8, !tbaa !8
  %2 = load i8** getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 5), align 8, !tbaa !9
  %3 = load i32* getelementptr inbounds (%struct.anon.1* @iorest_, i64 0, i32 28), align 4, !tbaa !10
  %4 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !tbaa !15
  %5 = tail call i32 %4(%struct.cGH* %GH) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %63

; <label>:7                                       ; preds = %0
  %8 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #7
  %9 = tail call i32 @CCTK_QueryGroupStorageI(%struct.cGH* %GH, i32 %8) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %7
  %12 = tail call i8* @CCTK_FullName(i32 %vindex) #7
  %13 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 298, i8* getelementptr inbounds ([81 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str20, i64 0, i64 0), i8* %12) #7
  tail call void @free(i8* %12) #8
  br label %63

; <label>:14                                      ; preds = %7
  %15 = getelementptr inbounds [15 x i8]* %format_str_real, i64 0, i64 0
  %16 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %15, i32 0, i64 15, i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* %2, i8* %2) #7
  %17 = getelementptr inbounds [15 x i8]* %format_str_int, i64 0, i64 0
  %18 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %17, i32 0, i64 15, i8* getelementptr inbounds ([10 x i8]* @.str21, i64 0, i64 0), i8* %2) #7
  %19 = call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #7
  %20 = icmp eq i32 %3, 0
  br i1 %20, label %25, label %21

; <label>:21                                      ; preds = %14
  %22 = call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0)) #7
  %23 = icmp ne i32 %22, 0
  %24 = select i1 %23, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str6, i64 0, i64 0)
  br label %25

; <label>:25                                      ; preds = %14, %21
  %file_extension.0 = phi i8* [ %24, %21 ], [ getelementptr inbounds ([4 x i8]* @.str22, i64 0, i64 0), %14 ]
  %26 = getelementptr inbounds i8* %19, i64 24
  %27 = bitcast i8* %26 to i8**
  %28 = load i8** %27, align 8, !tbaa !16
  %29 = call i64 @strlen(i8* %28) #7
  %30 = call i64 @strlen(i8* %alias) #7
  %31 = call i64 @strlen(i8* %file_extension.0) #7
  %32 = add i64 %29, 1
  %33 = add i64 %32, %30
  %34 = add i64 %33, %31
  %35 = call i8* @malloc(i64 %34) #7
  %36 = call i64 @llvm.objectsize.i64.p0i8(i8* %35, i1 false)
  %37 = load i8** %27, align 8, !tbaa !16
  %38 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %35, i32 0, i64 %36, i8* getelementptr inbounds ([7 x i8]* @.str23, i64 0, i64 0), i8* %37, i8* %alias, i8* %file_extension.0) #7
  %39 = call fastcc %struct.__sFILE* @OpenScalarFile(%struct.cGH* %GH, i32 %vindex, i8* %35, i8* getelementptr inbounds ([3 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str25, i64 0, i64 0), i8* %alias) #8
  %40 = icmp eq %struct.__sFILE* %39, null
  br i1 %40, label %60, label %41

; <label>:41                                      ; preds = %25
  %42 = call i8* @CCTK_VarDataPtrI(%struct.cGH* %GH, i32 0, i32 %vindex) #7
  %43 = call i32 @CCTK_VarTypeI(i32 %vindex) #7
  switch i32 %43, label %56 [
    i32 6, label %44
    i32 2, label %50
  ]

; <label>:44                                      ; preds = %41
  %45 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16
  %46 = load double* %45, align 8, !tbaa !18
  %47 = bitcast i8* %42 to double*
  %48 = load double* %47, align 8, !tbaa !20
  %49 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %39, i8* %15, double %46, double %48) #7
  br label %58

; <label>:50                                      ; preds = %41
  %51 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16
  %52 = load double* %51, align 8, !tbaa !18
  %53 = bitcast i8* %42 to i32*
  %54 = load i32* %53, align 4, !tbaa !14
  %55 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %39, i8* %17, double %52, i32 %54) #7
  br label %58

; <label>:56                                      ; preds = %41
  %57 = call i32 @CCTK_Warn(i32 3, i32 345, i8* getelementptr inbounds ([81 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str26, i64 0, i64 0)) #7
  br label %58

; <label>:58                                      ; preds = %56, %50, %44
  %59 = call i32 @fclose(%struct.__sFILE* %39) #7
  br label %62

; <label>:60                                      ; preds = %25
  %61 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 354, i8* getelementptr inbounds ([81 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str27, i64 0, i64 0), i8* %35) #7
  br label %62

; <label>:62                                      ; preds = %60, %58
  call void @free(i8* %35) #8
  br label %63

; <label>:63                                      ; preds = %0, %62, %11
  %.0 = phi i32 [ 0, %62 ], [ -1, %11 ], [ 0, %0 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i8* @CCTK_VarDataPtrI(%struct.cGH*, i32, i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VarTypeI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: optsize
declare i32 @__maskrune(i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: optsize
declare i8* @GetNamedData(%struct.PNamedData*, i8*) #2

; Function Attrs: optsize
declare i32 @IOUtil_RestartFromRecovery(%struct.cGH*) #2

; Function Attrs: optsize
declare i32 @"\01_stat$INODE64"(i8*, %struct.stat*) #2

; Function Attrs: optsize
declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @StoreNamedData(%struct.PNamedData**, i8*, i8*) #2

; Function Attrs: optsize
declare i32 @IOUtil_AdvertiseFile(%struct.cGH*, i8*, %struct.ioAdvertisedFileDesc*) #2

; Function Attrs: optsize
declare i32 @CCTK_ParameterFilename(i32, i8*) #2

; Function Attrs: optsize
declare i32 @Util_CurrentDate(i32, i8*) #2

; Function Attrs: optsize
declare i32 @Util_CurrentTime(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 16}
!3 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !7, i64 56, !7, i64 60}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!3, !4, i64 24}
!9 = !{!3, !4, i64 40}
!10 = !{!11, !7, i64 204}
!11 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168, !4, i64 176, !7, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !7, i64 208, !7, i64 212, !7, i64 216, !7, i64 220, !7, i64 224, !7, i64 228, !7, i64 232, !7, i64 236, !7, i64 240, !7, i64 244, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292}
!12 = !{!"double", !5, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!4, !4, i64 0}
!16 = !{!17, !4, i64 24}
!17 = !{!"IOBASIC_GH", !7, i64 0, !7, i64 4, !5, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56}
!18 = !{!19, !12, i64 120}
!19 = !{!"", !7, i64 0, !7, i64 4, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !12, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !7, i64 104, !4, i64 112, !12, i64 120, !4, i64 128, !4, i64 136, !4, i64 144}
!20 = !{!12, !12, i64 0}
!21 = !{!11, !4, i64 112}
!22 = !{!17, !4, i64 56}
!23 = !{!24, !4, i64 16}
!24 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32}
!25 = !{!24, !4, i64 24}
!26 = !{!24, !4, i64 0}
!27 = !{!24, !4, i64 8}
!28 = !{!24, !4, i64 32}
